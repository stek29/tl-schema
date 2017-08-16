#!/usr/bin/env python3
import re
import struct
import binascii

class TLTokenParam:
    def __init__(self, name, type, flags=None):
        self.name = name
        self.type = type
        self.flags = flags or ''
        self.typerefs = list()

class TLToken:
    def __init__(self, name, crc, params, result, is_method, tl_info, no_crc_verify=True):
        # name
        self.name = str(name)
        # aka id, should be already "converted" to int8 (struct.unpack'd for example)
        self.crc = int(crc)
        self.params = list(params)
        # type
        self.result = str(result)
        self.is_method = is_method

        for param in self.params:
            param.typerefs = tl_info.registerParamType(param.type, self, is_method)
        self.typerefs = tl_info.registerReturnType(self.result, self, is_method)

        if not no_crc_verify:
            self.verify_crc()

    def __str__(self):
        return 'TLToken: ' + self.name

    def verify_crc(self):
        # From TDesktop's generate.py
        cleanline = self.dump(self)
        cleanline = re.sub(r' [a-zA-Z0-9_]+\:flags\.[0-9]+\?true', '', cleanline)
        cleanline = cleanline.replace('<', ' ').replace('>', ' ').replace('  ', ' ')
        cleanline = cleanline.replace(':bytes ', ':string ')
        cleanline = cleanline.replace('?bytes ', '?string ')
        cleanline = cleanline.replace('{', '').replace('}', '')
        cleanline = cleanline.strip()
        if self.crc == binascii.crc32(binascii.a2b_qp(cleanline)):
            print('WARNING: CRC MISMATCH -- expected {} in: '.format(self.crc2hex(self.crc)))
            print(self.dump(self), end='\n\n')

    @staticmethod
    def crc2hex(crc: int):
        return str(binascii.b2a_hex(struct.pack('>i', crc)), encoding='ascii').lstrip('0')

    TL_line_regex = re.compile(r"([a-zA-Z\.0-9_]+)#([0-9a-f]+)([^=]*)=\s*([a-zA-Z\.<>0-9_]+);")
    TL_param_regex = re.compile(r"\s([^:]+):([^\s?:]+\?)?(\S+)")
    @classmethod
    def from_tl_line(cls, tl_line, is_method, tl_info, no_crc_verify=False):
        line = cls.TL_line_regex.match(tl_line)

        crc = struct.unpack('>i', 
            binascii.a2b_hex(
                '{:>08}'.format(line.group(2))
            )
        )[0]

        params = [
            TLTokenParam(name=name, type=type, flags=flags)
            for name, flags, type in cls.TL_param_regex.findall(line.group(3))
        ]
        
        return cls(
            name=line.group(1),
            crc=crc,
            params=params, 
            result=line.group(4),
            is_method=is_method,
            tl_info=tl_info,
            no_crc_verify=no_crc_verify,
        )

    @staticmethod
    def dump(inst):
        return '{name}#{crc} {params} = {result};'.format(
            name=inst.name,
            crc=inst.crc2hex(inst.crc),
            params=' '.join('{name}:{flags}{type}'.format(**param.__dict__) for param in inst.params),
            result=inst.result
        ).replace('  ', ' ')

    def __repr__(self):
        return self.dump(self)

    def __eq__(self, item):
        if type(item) is type(self):
            return self.dump(self) == self.dump(item)
        else:
            return NotImplemented

# TODO: handle {X:Type} instead of hardcoding X and !X
BUILTIN_TYPES = ('int', 'long', 'bytes', 'string', 'double', 'Vector', 'vector', '#', 'true', 'X', '!X')
ALLOW_UNUSED = ('Error', 'Null', 'Updates', 'True')

class TLType:
    def __init__(self, name):
        self.name         = name
        self.constructors = list() # constructors which construct this type
        self.compositors  = list() # constructors which depend on this type
        self.users        = list() # functions which depend on this type
        self.returners    = list() # functions which return this type
        self._linted = 0 # non-python way, yes
        self._block = False # for simple blocking recursion guard

        if name in BUILTIN_TYPES:
            self.constructors.append(None)
        if name in ALLOW_UNUSED:
            self.users.append(None)

    def lint(self, force=False, invalidate_builtin=False):
        if invalidate_builtin and self.name in BUILTIN_TYPES:
            return -4
        if self._block:
            return -5

        self._block = True
        if self._linted == 0 or force:
            if len(self.constructors) == 0:
                self._linted = -1
            elif len(self.users) != 0 or len(self.returners) != 0:
                self._linted = 1
            elif len(self.compositors) != 0:
                checkref = lambda r: any(ref.lint(force, True)>0 for ref in r.typerefs)
                checkcomps = lambda comps: any(checkref(ref) for ref in comps)
                if checkcomps(self.compositors):
                    self._linted = 2
                else: 
                    self._linted = -2
            else:
                self._linted = -3
        self._block = False

        return self._linted

    @staticmethod
    def lintstr(li):
        LINTSTR = {
            -5: 'ERR: Blocked (recursion?)',
            -4: 'WTF: Is a builtin',
            -3: 'WARN: Never used',
            -2: 'ERR: Composited in other types but all of them are invalid',
            -1: 'ERR: Has no constructor',
             0: 'UNKNOWN',
             1: 'OK:  Used in fuctions',
             2: 'OK:  Used in some valid types'
        }
        return LINTSTR[li]


class TLInfo:
    def __init__(self):
        self.types = dict()
    
    TEMPLATE_REGEX = re.compile(r'([a-zA-Z\.0-9_]+)<([a-zA-Z\.<>0-9_]+)>')
    def _typesFactory(self, type):
        match = self.TEMPLATE_REGEX.match(type)
        if match is not None:
            #print(type)
            return self._typesFactory(match.group(1)) + self._typesFactory(match.group(2))
        else:
            if type not in self.types:
                self.types[type] = TLType(type)
            return [self.types[type]]

    def registerParamType(self, type, token, is_method):
        tl_types = self._typesFactory(type)
        if is_method:
            for tl_type in tl_types:
                tl_type.users.append(token)
        else:
            for tl_type in tl_types:
                tl_type.compositors.append(token)

        return tl_types

    def registerReturnType(self, type, token, is_method):
        tl_types = self._typesFactory(type)
        if is_method:
            for tl_type in tl_types:
                tl_type.returners.append(token)
        else:
            for tl_type in tl_types:
                tl_type.constructors.append(token)

        return tl_types


class TLFile:
    def __init__(self):
        self.constructors = list()
        self.methods = list()
        self.tl_info = TLInfo()

    @classmethod
    def from_file(cls, file, no_verify=False, diff_removed_file=None):
        ret = cls()

        VECTOR = 'vector#1cb5c415'
        def repack(line):
            return re.sub(r'#0+', '#', ' '.join(re.split(r' *', line)))
        def verify(line, token):
            tl_line = repr(token)
            return repack(line) == repack(tl_line)

        def process_line(l, tl_file):
            try:
                token = TLToken.from_tl_line(l, methods_now, tl_file.tl_info, no_verify)
                if no_verify or verify(l, token):
                    if methods_now:
                        tl_file.methods.append(token)
                    else:
                        tl_file.constructors.append(token)
                else:
                    print('MISMATCH:')
                    print(l)
                    print(repr(token), end='\n\n')
            except Exception as e:
                print('ERROR:')
                print(e)
                print(l, end='\n\n')

        methods_now = False
        for l in file:
            l = l.strip()

            if not l:
                # empty
                continue
            elif l.startswith('///'):
                continue # comment in diff
            elif l.startswith('//'):
                if diff_removed_file is None:
                    # comment
                    continue
                else:
                    l = l.lstrip('//').lstrip()
                    process_line(l, diff_removed_file)
                    # removed 

            elif l == '---functions---':
                methods_now = True
                continue
            elif l == '---types---':
                methods_now = False
                continue
            elif l.startswith(VECTOR):
                # vector's line isn't supported, and has to be skipped
                continue
            else:
                process_line(l, ret)

        return ret

    @classmethod
    def from_filename(cls, fname, no_verify=False, diff_removed_file=None):
        with open(fname) as file:
            return cls.from_file(file, no_verify, diff_removed_file)

    def lint(self):
        for _, tl_type in self.tl_info.types.items():
            try:
                lr = tl_type.lint()
                if lr <= 0:
                    print('{} -- "{}"'.format(tl_type.lintstr(lr), tl_type.name))
            except RecursionError:
                print('RECURSION ERROR: ')
                print(tl_type, end='\n\n')

        for dupe_method in (x for n, x in enumerate(self.methods) if x in self.methods[:n]):
            print('ERR: DUPE METHOD -- {}#{}'.format(dupe_method.name, dupe_method.crc2hex(dupe_method.crc)))

        for dupe_constructor in (x for n, x in enumerate(self.constructors) if x in self.constructors[:n]):
            print('ERR: DUPE CONSTR -- {}#{}'.format(dupe_constructor.name, dupe_constructor.crc2hex(dupe_constructor.crc)))

    def diff(self, old, just_added=False, no_changed=False):
        ret = { 'added': TLFile() }
        if not just_added:
            ret['removed'] = TLFile()
            if not no_changed:
                ret['changed'] = TLFile()

        def getdiff(old, new):
            ret = { 'added': list() }
            if not just_added:
                ret['removed'] = list()
                if not no_changed:
                    ret['changed'] = list()

            old_names = {m.name: m for m in old}
            for m in new:
                if m not in old:
                    if m.name not in old_names or just_added or no_changed:
                        ret['added'].append(m)
                    else:
                        ret['changed'].append({
                            'new': m,
                            'old': old_names[m.name]
                        })
                        old.remove(old_names[m.name])
                else:
                    old.remove(m)

            if not just_added:
                ret['removed'] = old

            return ret

        methods = getdiff(old.methods, self.methods)
        ret['added'].methods = methods['added']
        if not just_added:
            ret['removed'].methods = methods['removed']
            if not no_changed:
                ret['changed'].methods = methods['changed']

        constructors = getdiff(old.constructors, self.constructors)
        ret['added'].constructors = constructors['added']
        if not just_added:
            ret['removed'].constructors = constructors['removed']
            if not no_changed:
                ret['changed'].constructors = constructors['changed']

        return ret

    def write_to_file(self, file):
        file.write('---types---\n')
        for token in self.constructors:
            file.write(repr(token))
            file.write('\n')

        file.write('---functions---\n')
        for token in self.methods:
            file.write(repr(token))
            file.write('\n')

    @staticmethod
    def writediff(diff, file):
        file.write('---types---\n')
        for token in diff['removed'].constructors:
            file.write('// ')
            file.write(repr(token))
            file.write('\n')
        for token in diff['changed'].constructors:
            file.write('// ')
            file.write(repr(token['old']))
            file.write('\n')
            file.write(repr(token['new']))
            file.write('\n')
        for token in diff['added'].constructors:
            file.write(repr(token))
            file.write('\n')

        file.write('---functions---\n')
        for token in diff['removed'].methods:
            file.write('// ')
            file.write(repr(token))
            file.write('\n')
        for token in diff['changed'].methods:
            file.write('// ')
            file.write(repr(token['old']))
            file.write('\n')
            file.write(repr(token['new']))
            file.write('\n')
        for token in diff['added'].methods:
            file.write(repr(token))
            file.write('\n')

    @staticmethod
    def readdiff(file):
        ret = dict()
        ret['removed'] = TLFile()
        ret['added'] = TLFile.from_file(file, False, ret['removed'])
        return ret

    @staticmethod
    def applydiff(diff, old_filename, comment_out=False):
        tl_file = TLFile.from_filename(old_filename)
        with open(old_filename, 'w') as file:
            def helper(olst, rlst, alst):
                removed_names = set(t.name for t in rlst)
                added_names = set(t.name for t in alst)
                changed_names = removed_names & added_names

                clst = dict()
                new_alst = list()
                for t in alst:
                    if t.name in changed_names:
                        clst[t.name] = t
                    else:
                        new_alst.append(t)

                for token in olst:
                    if token not in rlst:
                        file.write(repr(token))
                    else:
                        if comment_out:
                            file.write('// ')
                            file.write(repr(token))
                            file.write('\n')

                        if token.name in changed_names:
                            file.write(repr(clst[token.name]))
                        else:
                            continue # Just removed
                    file.write('\n')

                for token in new_alst:
                    file.write(repr(token))
                    file.write('\n')

            file.write('---types---\n')
            helper(tl_file.constructors, diff['removed'].constructors, diff['added'].constructors)
            file.write('---functions---\n')
            helper(tl_file.methods, diff['removed'].methods, diff['added'].methods)


if __name__ == '__main__':
    from sys import argv, stdout
    if len(argv) <= 1 or argv[1] == 'help':
        print("""
            lint file -- lints file
            diff old new -- prints diff
            update old new -- updates old to new without reordering (gets diff and then applies it)
            apply old diff -- applies diff to old
            """)
    else:
        if argv[1] == 'lint':
            # linter mode
            TLFile.from_filename(argv[2]).lint()
        elif argv[1] == 'diff':
            # diff mode
            tl_diff = TLFile.from_filename(argv[2]).diff(TLFile.from_filename(argv[3]))
            TLFile.writediff(tl_diff, stdout)
        elif argv[1] == 'update':
            # get diff
            tl_diff = TLFile.from_filename(argv[2]).diff(TLFile.from_filename(argv[3]), no_changed=True)
            # and apply it
            TLFile.applydiff(tl_diff, argv[2])
        elif argv[1] == 'apply':
            with open(argv[3]) as df:
                tl_diff = TLFile.readdiff(df)
            TLFile.applydiff(tl_diff, argv[2])
        else:
            print('invalid argunents, try `help`')
#!/usr/bin/env python3
# From https://gist.github.com/stek29/067ce1d4d764147e21cc0667ba5c063d
# for json
import json
from collections import OrderedDict

# for tl
import re
import struct
import binascii

__all__ = [
    'TLToken',
    'TLTokenJSON',
    'TLTokenTL',
    'TLTokenFileTL',
    'TLTokenFileJSON'
]

class TLToken:
    def __init__(self, name, crc, params, result, is_method=None):
        # name
        self.name = str(name)
        # aka id, should be already "converted" to int8 (struct.unpack'd for example)
        self.crc = int(crc)
        # [{'name': 'foo', 'type': 'long'}, {'name': 'bar', 'type': 'flags.1?int'}, ...]
        self.params = list(params)
        # type
        self.result = str(result)
        if is_method is None:
            is_method = '.' in name
        self.is_method = is_method

    def __str__(self):
        return 'TLToken: ' + self.name

class TLTokenJSON(TLToken):
    def __init__(self, json_obj):
        if not isinstance(json_obj, dict):
            json_obj = json.loads(json_obj)
        
        is_method = 'method' in json_obj
        super().__init__(
            name=json_obj['method' if is_method else 'predicate'],
            crc=json_obj['id'],
            params=json_obj['params'], 
            result=json_obj['type'], 
            is_method=is_method
        )

    @staticmethod
    def dump(inst, as_string=False): 
        if not isinstance(inst.crc, int):
            raise Exception('lol kek cheburek')
        dic = OrderedDict((
            ('id', str(inst.crc)),
            ('method' if inst.is_method else 'predicate', inst.name),
            ('params', inst.params),
            ('type', inst.result)
        ))
        return dic if not as_string else json.dumps(dic)

    def __repr__(self):
        return self.dump(self, True)


VECTOR = 'vector#1cb5c415'
TL_line_regex = re.compile(r"([a-zA-Z\.0-9_]+)#([0-9a-f]+)([^=]*)=\s*([a-zA-Z\.<>0-9_]+);")
TL_param_regex = re.compile(r"\s([^:]+):(\S+)")

class TLTokenTL(TLToken):   
    def __init__(self, tl_line, is_method=None):
        line = TL_line_regex.match(tl_line)

        crc = struct.unpack('>i', 
            binascii.a2b_hex(
                '{:>08}'.format(line.group(2))
            )
        )[0]

        params = [
            {'name': name, 'type': type} 
            for name, type in 
            TL_param_regex.findall(line.group(3))
            if type != 'Type}'
        ]
        super().__init__(
            name=line.group(1),
            crc=crc,
            params=params, 
            result=line.group(4),
            is_method=is_method
        )

    @staticmethod
    def dump(inst):
        return '{name}#{crc} {params} = {result};'.format(
            name=inst.name,
            crc=TLTokenTL.crc2hex(inst.crc),
            params=' '.join('{name}:{type}'.format(**param) for param in inst.params),
            result=inst.result
        ).replace('  ', ' ')

    @staticmethod
    def crc2hex(crc: int):
        return str(binascii.b2a_hex(struct.pack('>i', crc)), encoding='ascii').lstrip('0')

    def __repr__(self):
        return self.dump(self)
        


class TLTokenFileTL:
    @staticmethod
    def read(file, no_verify=True):
        def repack(line):
            return re.sub(r'#0+', '#', ' '.join(re.split(r' *', line)))
        def verify(line, token, is_method):
            tl_line = repr(token)
            return repack(line) == repack(tl_line)

        tokens = list()

        methods_now = False
        for l in file:
            l = l.strip()

            if not l or l.startswith('//'):
                # comment
                continue
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
                try:
                    token = TLTokenTL(l, methods_now)
                    if no_verify or verify(l, token, methods_now):
                        tokens.append(token)
                    else:
                        print('MISMATCH:')
                        print(l)
                        print(repack(repr(token)), end='\n\n')
                except Exception as e:
                    print('ERROR:')
                    print(e)
                    print(l, end='\n\n')
    
        return tokens

    @staticmethod
    def write(file, lst):
        file.write('---types---\n')
        for token in lst:
            if not token.is_method:
                file.write(TLTokenTL.dump(token))
                file.write('\n')

        file.write('---functions---\n')
        for token in lst:
            if token.is_method:
                file.write(TLTokenTL.dump(token))
                file.write('\n')


class TLTokenFileJSON:
    @staticmethod
    def read(file, no_verify=True):
        def process(inp, out, method):
            for token in inp:
                try:
                    out.append(TLTokenJSON(token))
                    assert no_verify or (out[-1].is_method == method)
                except Exception as e:
                    print('ERROR:')
                    print(token)
                    print(e, end='\n\n')
        
        data = json.load(file)

        constructors = list()
        process(data['constructors'], constructors, False)

        methods = list()
        process(data['methods'], methods, True)

        return constructors + methods

    def write(file, lst):
        json.dump(
            OrderedDict((
                ('constructors', [TLTokenJSON.dump(token, as_string=False) for token in lst if not token.is_method]),
                ('methods',      [TLTokenJSON.dump(token, as_string=False) for token in lst if     token.is_method])
            )),
        file,
        indent=2)

"""
Usage example -- converting schema from TL to JSON:

from tl_master import *
with open('schema.tl') as tl, open('schema.json', 'w') as json:
    TLTokenFileJSON.write(json, TLTokenFileTL.read(tl))
"""
from sys import argv
if argv[1].endswith('.tl'):
    fromf = TLTokenFileTL
    tof   = TLTokenFileJSON
    outn  = argv[1].replace('tl', 'json')
elif argv[1].endswith('.json'):
    fromf = TLTokenFileJSON
    tof   = TLTokenFileTL
    outn  = argv[1].replace('json', 'tl')

with open(argv[1]) as inf, open(outn, 'w') as outf:
    tof.write(outf, fromf.read(inf))


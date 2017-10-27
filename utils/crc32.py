#!/usr/bin/env python3

import binascii
import struct
import re

def prepareline(line):
    cleanline = re.sub(r' [a-zA-Z0-9_]+\:flags\.[0-9]+\?true', '', line)
    cleanline = re.sub(r'#[a-fA-F0-9]+', '', cleanline)
    cleanline = cleanline.replace('<', ' ').replace('>', ' ').replace('  ', ' ')
    cleanline = cleanline.replace(':bytes ', ':string ')
    cleanline = cleanline.replace('?bytes ', '?string ')
    cleanline = cleanline.replace('{', '').replace('}', '')
    cleanline = cleanline.replace(';', '')
    return cleanline.strip()

def crc32(line):
    return binascii.crc32(binascii.a2b_qp(prepareline(line)))

def crc2hex(crc: int):
    return str(binascii.b2a_hex(struct.pack('>I', crc)), encoding='ascii').lstrip('0')

if __name__ == '__main__':
    while True:
        print(crc2hex(crc32(input())))

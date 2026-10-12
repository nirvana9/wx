#!/usr/bin/env python3
"""Serialize synthetic ManualAuthRequest parents and children in the pinned ELF.

This is partial wire evidence only. No device report, auth CGI, account, or
network operation is executed; guest syscalls are refused by NativeCrypto.
"""
import argparse
import json
from pathlib import Path
import struct
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from native_crypto_vectors import NativeCrypto


def generate(elf):
    native = NativeCrypto(elf.read_bytes())
    mapping = {item['type']: int(item['vtable_address_point'], 16) for item in json.loads(
        (Path(__file__).resolve().parents[2] / 'docs/reverse/evidence/message-function-map.json').read_text())}

    def w32(address, value):
        native.cpu.mem_write(address, struct.pack('<I', value))

    def obj(name, size):
        address = native.allocate(size)
        native._write_u64(address, mapping['micromsg.' + name])
        return address

    def buffer(value):
        address = obj('SKBuiltinBuffer_t', 0x20)
        native._write_u64(address + 8, native._string(value))
        w32(address + 0x10, len(value))
        w32(address + 0x18, 3)
        return address

    def serialize(address):
        x = native.x
        out = native._string(b'')
        stack = native.STACK + (1 << 20) - 8
        native._write_u64(stack, native.RETURN)
        native.cpu.reg_write(x.UC_X86_REG_RDI, out)
        native.cpu.reg_write(x.UC_X86_REG_RSI, address)
        native.cpu.reg_write(x.UC_X86_REG_RSP, stack)
        native.cpu.emu_start(0x8f50740, native.RETURN, timeout=10_000_000, count=2_000_000)
        if native.cpu.reg_read(x.UC_X86_REG_RIP) != native.RETURN:
            raise ValueError('native serializer CPU budget')
        return native._read_string(out)

    prior = json.loads((Path(__file__).resolve().parents[2] / 'testdata/auth/native-qr-core.json').read_text())
    point = bytes.fromhex(prior['public_point'])
    random_key = bytes.fromhex(prior['random_key'])
    ecdh = obj('ECDHKey', 0x20)
    native._write_u64(ecdh + 8, buffer(point))
    w32(ecdh + 0x10, 713)
    w32(ecdh + 0x18, 3)
    rsa = obj('ManualAuthRsaReqData', 0x38)
    native._write_u64(rsa + 8, buffer(random_key))
    native._write_u64(rsa + 0x10, ecdh)
    for offset, key in [(0x18, 'username'), (0x20, 'password'), (0x28, 'password2')]:
        native._write_u64(rsa + offset, native._string(prior[key].encode()))
    w32(rsa + 0x34, 31)
    aes = obj('ManualAuthAesReqData', 0xd8)
    native._write_u64(aes + 0xa0, buffer(b'synthetic-client-check'))
    native._write_u64(aes + 0xa8, buffer(b'synthetic-spam'))
    w32(aes + 0xc8, 4)
    w32(aes + 0xd0, (1 << 21) | (1 << 22) | (1 << 25))

    cases = []
    for name, rsa_child, aes_child in [
        ('two_populated_children', rsa, aes),
        ('two_empty_children', obj('ManualAuthRsaReqData', 0x38), obj('ManualAuthAesReqData', 0xd8)),
    ]:
        parent = obj('ManualAuthRequest', 0x20)
        native._write_u64(parent + 8, rsa_child)
        native._write_u64(parent + 0x10, aes_child)
        w32(parent + 0x1c, 3)
        cases.append({'name': name, 'rsa_hex': serialize(rsa_child).hex(),
                      'aes_hex': serialize(aes_child).hex(),
                      'request_hex': serialize(parent).hex()})
    if set(native.import_counts) - {'malloc', 'free', 'memset', 'memcpy', 'memmove'}:
        raise ValueError('unexpected non-memory native import')
    return {'elf_sha256': native.elf_sha256,
            'provenance': 'Synthetic native ManualAuthRequest field1/2 children independently size/serialized by pinned ELF vtables. QR strings and scalar1 P224 public point reuse the prior synthetic native QR fixture; AES values are explicit test placeholders, not a device profile or valid login. No native auth/transport/network run, guest syscall refused.',
            'cases': cases, 'imports': native.import_counts}


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--elf', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.write_text(json.dumps(generate(args.elf), indent=2) + '\n')
    print('Generated native ManualAuthRequest wire vectors')

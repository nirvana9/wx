#!/usr/bin/env python3
"""Generate synthetic ManualAuthAesReqData wire vectors from the pinned ELF.

No client startup, guest syscalls, account input or network. Only the native
constructor, size and serializers run. Inputs are explicit synthetic field
values, not a reconstruction of a valid login or device report. In particular,
partial serialization does not prove requiredness or server acceptance.
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
    maps = {x['type']: int(x['vtable_address_point'], 16) for x in json.loads(
        (Path(__file__).resolve().parents[2] / 'docs/reverse/evidence/message-function-map.json').read_text())}
    # Relocations and actual child allocation identify this additional type.
    maps['micromsg.PubKeyInfo'] = 0xa9821a8

    def call(entry, *args):
        if entry not in (0x7cd8040, 0x8f50740, 0x7cd9390, 0x79f3f20,
                         0x7cd5930, 0x7ba09b0, 0x79ec8d0, 0x7cd4510):
            raise ValueError('unsupported native entry')
        x = native.x
        sp = native.STACK + (1 << 20) - 8
        native._write_u64(sp, native.RETURN)
        for reg, value in zip((x.UC_X86_REG_RDI, x.UC_X86_REG_RSI, x.UC_X86_REG_RDX), args):
            native.cpu.reg_write(reg, value)
        native.cpu.reg_write(x.UC_X86_REG_RSP, sp)
        native.cpu.emu_start(entry, native.RETURN, timeout=10_000_000, count=2_000_000)
        if native.cpu.reg_read(x.UC_X86_REG_RIP) != native.RETURN:
            raise ValueError('native CPU budget')

    def w32(address, value):
        native.cpu.mem_write(address, struct.pack('<I', value & 0xffffffff))

    def obj(name, size):
        address = native.allocate(size)
        native._write_u64(address, maps['micromsg.' + name])
        return address

    def serialize(address):
        out = native._string(b'')
        call(0x8f50740, out, address)
        return native._read_string(out)

    def buffer(value):
        address = obj('SKBuiltinBuffer_t', 0x20)
        native._write_u64(address + 8, native._string(value))
        w32(address + 0x10, len(value))
        w32(address + 0x18, 3)
        return address

    def pubkey(value):
        address = obj('PubKeyInfo', 0x20)
        mask = 0
        if 'field1' in value:
            w32(address + 0x10, value['field1'])
            mask |= 1
        if 'field2' in value:
            native._write_u64(address + 8, buffer(bytes.fromhex(value['field2'])))
            mask |= 2
        w32(address + 0x18, mask)
        return address

    def extinfo(value):
        address = obj('ExtAuthReqInfo', 0x20)
        mask = 0
        for number, offset, bit in [(2, 8, 1), (3, 0x10, 2)]:
            if str(number) in value:
                native._write_u64(address + offset, native._string(bytes.fromhex(value[str(number)])))
                mask |= bit
        w32(address + 0x1c, mask)
        return address

    child_types = []
    for number, offset in [(1, 8), (2, 0x10), (23, 0xa0), (24, 0xa8), (26, 0xb8), (28, 0xc0)]:
        address = native.allocate(0xd8)
        call(0x7cd8040, address)
        tag = number * 8 + 2
        raw = bytes([tag, 0]) if tag < 128 else bytes([(tag & 127) | 128, tag >> 7, 0])
        source = native._bytes(raw)
        context = native.allocate(0x50)
        # Exact byte-backed CodedInputStream setup from 0x8f500ef--0x8f5013c.
        native._write_u64(context + 8, source)
        native._write_u64(context + 0x10, source + len(raw))
        w32(context + 0x18, len(raw)); w32(context + 0x28, len(raw))
        native.cpu.mem_write(context + 0x2c, bytes(native.cpu.mem_read(0xd57a70, 16)))
        native.cpu.mem_write(context + 0x3c, bytes(native.cpu.mem_read(0xac1f370, 4)))
        call(0x7cd9390, address, context)
        partial_return = native.cpu.reg_read(native.x.UC_X86_REG_RAX) & 0xff
        child = native._read_u64(address + offset)
        vtable = native._read_u64(child)
        type_name_entry = native._read_u64(vtable + 0x10)
        out = native._string(b'')
        call(type_name_entry, out, child)
        child_types.append({'field': number, 'input_hex': raw.hex(), 'partial_parse_return': partial_return,
                            'vtable': hex(vtable), 'type_name_entry': hex(type_name_entry),
                            'type': native._read_string(out).decode()})

    byte_offsets = {3: 0x18, 4: 0x20, 6: 0x28, 7: 0x30, 8: 0x38,
                    9: 0x48, 10: 0x50, 11: 0x58, 15: 0x60, 16: 0x68,
                    17: 0x70, 18: 0x78, 19: 0x88, 20: 0x90, 21: 0x98, 25: 0xb0}
    uint_offsets = {5: 0x40, 14: 0x80, 22: 0x84, 27: 0xc8}
    full = {'name': 'all_fields',
            'bytes': {str(k): (b'\xffsynthetic-' + str(k).encode() + b'\0').hex() for k in byte_offsets},
            'uint32': {'5': 0xffffffff, '14': 1700000000, '22': 22, '27': 0xffffffff},
            'int32': {'13': -7},
            'client_check': b'synthetic-client-check'.hex(),
            'ext_spam': b'\0\xffsynthetic-spam'.hex(),
            'pubkey': {'field1': -7, 'field2': b'synthetic-public-key'.hex()},
            'ext_info': {'2': b'synthetic-ext2'.hex(), '3': ''}}
    # Both base messages below are native-generated; their semantics remain
    # synthetic, independent of the Go encoder and current network credentials.
    base = obj('BaseRequest', 0x38)
    native._write_u64(base + 8, native._string(b'\0'))
    w32(base + 0x34, 1)
    info = obj('BaseAuthReqInfo', 0x48)
    native._write_u64(info + 8, buffer(b'synthetic-base-auth'))
    w32(info + 0x40, 1)
    full['base_request'] = serialize(base).hex()
    full['base_auth_info'] = serialize(info).hex()
    zeros = {'name': 'explicit_empty_and_zero',
             'base_request': '', 'base_auth_info': '',
             'bytes': {str(k): '' for k in byte_offsets},
             'uint32': {str(k): 0 for k in uint_offsets}, 'int32': {'13': 0},
             'client_check': '', 'ext_spam': '',
             'pubkey': {'field1': 0, 'field2': ''}, 'ext_info': {'2': '', '3': ''}}
    cases = [{'name': 'absent'}, full, zeros,
             {'name': 'empty_nested_extensions', 'pubkey': {}, 'ext_info': {}}]
    for case in cases:
        address = native.allocate(0xd8)
        call(0x7cd8040, address)
        mask = 0

        def present(number):
            nonlocal mask
            mask |= 1 << (number - 1 if number < 12 else number - 2)

        for group, offsets in [('bytes', byte_offsets), ('uint32', uint_offsets), ('int32', {13: 0x44})]:
            for key, value in case.get(group, {}).items():
                number = int(key)
                if group == 'bytes':
                    native._write_u64(address + offsets[number], native._string(bytes.fromhex(value)))
                else:
                    w32(address + offsets[number], value)
                present(number)
        for key, number, offset, child in [('base_request', 1, 8, base), ('base_auth_info', 2, 0x10, info)]:
            if key in case:
                if case[key] == '':
                    child = obj('BaseRequest' if number == 1 else 'BaseAuthReqInfo', 0x48)
                native._write_u64(address + offset, child)
                present(number)
        for key, number, offset in [('client_check', 23, 0xa0), ('ext_spam', 24, 0xa8)]:
            if key in case:
                native._write_u64(address + offset, buffer(bytes.fromhex(case[key])))
                present(number)
        if 'pubkey' in case:
            native._write_u64(address + 0xb8, pubkey(case['pubkey']))
            present(26)
        if 'ext_info' in case:
            native._write_u64(address + 0xc0, extinfo(case['ext_info']))
            present(28)
        w32(address + 0xd0, mask)
        case['native_presence_mask'] = hex(mask)
        case['hex'] = serialize(address).hex()
    if set(native.import_counts) - {'malloc', 'free', 'memset', 'memcpy', 'memmove'}:
        raise ValueError('unexpected non-memory native import')
    return {'elf_sha256': native.elf_sha256,
            'provenance': 'Synthetic explicit field values; actual pinned ManualAuthAesReqData constructor, virtual size and serialization routines in isolated x86-64 CPU emulation. Partial wire serialization only, not a valid login/device profile. No syscall, client startup, crypto replacement or network.',
            'child_type_observations': child_types,
            'child_type_scope': 'Actual native partial parser allocation and GetTypeName; no IsInitialized or login requiredness assertion.',
            'cases': cases, 'imports': native.import_counts}


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--elf', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    result = generate(args.elf)
    args.output.write_text(json.dumps(result, indent=2) + '\n')
    print('Generated', len(result['cases']), 'synthetic native AES-section cases;', result['imports'])

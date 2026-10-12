#!/usr/bin/env python3
"""Replay synthetic account key setters and GetAuthInfoForCgi in the fixed ELF.

Only key copying and selection run. A single guest thread has no lock owner or
route override; logs are off. No crypto, task, account login, or network runs.
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
    x = native.x
    modeled = {}
    for entry in [0x9116c90, 0x4e12f00, 0x4e12fa0, 0x4e12fd0, 0x4e13050]:
        def model(_cpu, address, _size, _user):
            modeled[hex(address)] = modeled.get(hex(address), 0) + 1
            native._return(0)
        native.cpu.hook_add(native.u.UC_HOOK_CODE, model, begin=entry, end=entry)
    original_import = native.import_call

    def imports(name):
        if name == 'strlen':
            address = native.cpu.reg_read(x.UC_X86_REG_RDI)
            for size in range(1024):
                if native.cpu.mem_read(address + size, 1)[0] == 0:
                    native.import_counts[name] = native.import_counts.get(name, 0) + 1
                    native._return(size)
                    return
            raise ValueError('selector strlen budget')
        original_import(name)

    native.import_call = imports

    def call(entry, *args):
        if entry not in (0x8df3940, 0x8df3d70, 0x8df4f20):
            raise ValueError('unsupported key replay entry')
        stack = native.STACK + (1 << 20) - 8
        native._write_u64(stack, native.RETURN)
        registers = (x.UC_X86_REG_RDI, x.UC_X86_REG_RSI, x.UC_X86_REG_RDX, x.UC_X86_REG_RCX)
        for register, value in zip(registers, args):
            native.cpu.reg_write(register, value)
        native.cpu.reg_write(x.UC_X86_REG_RSP, stack)
        native.cpu.emu_start(entry, native.RETURN, timeout=10_000_000, count=2_000_000)
        if native.cpu.reg_read(x.UC_X86_REG_RIP) != native.RETURN:
            raise ValueError('key replay CPU budget')

    original, client, server = b'original-key16b!', b'client-key16byte', b'server-key16byte'
    cases = []
    for name, original_value, client_value, server_value in [
        ('main_pair', original, client, server),
        ('main_pair_without_original', b'', client, server),
        ('original_only', original, b'', b''),
        ('missing_client', original, b'', server),
        ('missing_server', original, client, b''),
    ]:
        account = native.allocate(0x1d0)
        # Empty native route-override tree; its sentinel must compare equal.
        native._write_u64(account + 0x188, account + 0x190)
        call(0x8df3940, account, native._string(original_value))
        call(0x8df3d70, account, native._string(client_value), native._string(server_value))
        out = native.allocate(0xc0)
        call(0x8df4f20, out, account, 42, native._string(b'synthetic.invalid'))
        cases.append({
            'name': name,
            'original_hex': original_value.hex(), 'client_hex': client_value.hex(), 'server_hex': server_value.hex(),
            'installed_original_hex': native._read_string(account + 0xb8).hex(),
            'installed_client_hex': native._read_string(account + 0xf0).hex(),
            'installed_server_hex': native._read_string(account + 0x108).hex(),
            'identify': native._read_string(out).decode(),
            'selector': struct.unpack('<I', bytes(native.cpu.mem_read(out + 0x18, 4)))[0],
            'request_key_hex': native._read_string(out + 0x20).hex(),
            'response_key_hex': native._read_string(out + 0x38).hex(),
        })
    if set(native.import_counts) - {'malloc', 'free', 'memset', 'memcpy', 'memmove', 'strlen'}:
        raise ValueError('unexpected key replay import')
    return {
        'elf_sha256': native.elf_sha256,
        'provenance': 'Actual original/main account setters and GetAuthInfoForCgi key-copy/selection with synthetic keys and an empty route-override tree. Logging=false and single-thread lock wrappers explicitly modeled; no crypto/packet/login/host syscall/network run, guest syscall instructions refused. Selector values are native observations, not proof of an authenticated account or complete business packet.',
        'modeled_entries': modeled, 'imports': native.import_counts, 'cases': cases,
    }


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--elf', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.write_text(json.dumps(generate(args.elf), indent=2) + '\n')
    print('Generated native account business-key selection vectors')

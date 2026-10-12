#!/usr/bin/env python3
"""Replay the fixed CGI manager's account-key refresh with synthetic services.

Original accessors, guards, wrappers, setters and copies run. Only application
service results, a device-ID source, logging and single-thread locks are modeled.
No authentication request, client startup, credential persistence or network runs.
"""
import argparse
import json
from pathlib import Path
import struct
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from native_crypto_vectors import NativeCrypto


def generate(elf):
    n = NativeCrypto(elf.read_bytes())
    x = n.x
    modeled = {}
    app, vtable, user, config = (n.allocate(size) for size in (0x300, 0x100, 0x300, 0x100))
    n._write_u64(app, vtable)
    n._write_u64(0xacef550, app)
    n._write_u64(vtable + 0x68, n.RETURN + 0x200)
    n._write_u64(vtable + 0x10, n.RETURN + 0x220)
    n.cpu.mem_write(config + 0x80, struct.pack('<H', 0x1234))
    n.cpu.mem_write(config + 0x60, struct.pack('<I', 0x55667788))
    device_id = n._string(b'synthetic-device-id')

    def model(_cpu, address, _size, _user):
        modeled[hex(address)] = modeled.get(hex(address), 0) + 1
        if address == n.RETURN + 0x200:
            out = n.cpu.reg_read(x.UC_X86_REG_RDI)
            n._write_u64(out, user)
            n._write_u64(out + 8, 0)  # borrowed synthetic service, no shared owner
            n._return(out)
        elif address == n.RETURN + 0x220:
            n._return(config)
        elif address == 0x73876a0:
            n._return(device_id)
        else:
            n._return(0)

    for entry in (n.RETURN + 0x200, n.RETURN + 0x220, 0x73876a0,
                  0x9116c90, 0x4e12f00, 0x4e12fa0, 0x4e12fd0, 0x4e13050):
        n.cpu.hook_add(n.u.UC_HOOK_CODE, model, begin=entry, end=entry)

    allowed = (0x79e2b30, 0x619a8e0, 0x619acd0, 0x619acf0, 0x619ad10, 0x8df3940, 0x8df3d70)

    def call(entry, *args):
        if entry not in allowed:
            raise ValueError('unsupported account refresh entry')
        sp = n.STACK + (1 << 20) - 8
        n._write_u64(sp, n.RETURN)
        for register, value in zip((x.UC_X86_REG_RDI, x.UC_X86_REG_RSI, x.UC_X86_REG_RDX), args):
            n.cpu.reg_write(register, value)
        n.cpu.reg_write(x.UC_X86_REG_RSP, sp)
        n.cpu.emu_start(entry, n.RETURN, timeout=10_000_000, count=2_000_000)
        if n.cpu.reg_read(x.UC_X86_REG_RIP) != n.RETURN:
            raise ValueError('account refresh CPU budget')

    prior = (b'old-origin-key16', b'old-client-key16', b'old-server-key16')
    fresh = (b'new-origin-key16', b'new-client-key16', b'new-server-key16')
    cases = []
    for name, before, update in (
        ('initial_pair', (b'', b'', b''), fresh),
        ('replace_all', prior, fresh),
        ('empty_preserves_all', prior, (b'', b'', b'')),
        ('partial_client_preserves_pair', prior, (fresh[0], fresh[1], b'')),
        ('partial_server_preserves_pair', prior, (b'', b'', fresh[2])),
        ('replace_pair_keep_origin', prior, (b'', fresh[1], fresh[2])),
    ):
        account, wrapper, manager = (n.allocate(size) for size in (0x1d0, 0x28, 0x70))
        n._write_u64(wrapper + 0x20, account)
        n._write_u64(manager + 0x60, wrapper)
        call(0x8df3940, account, n._string(before[0]))
        call(0x8df3d70, account, n._string(before[1]), n._string(before[2]))
        for entry, data in zip((0x619a8e0, 0x619acf0, 0x619ad10), update):
            call(entry, user, n._string(data))
        derived = b'auth-derived16b!'
        call(0x619acd0, user, n._string(derived))
        server_id = n._string(b'synthetic-server-id')
        n.cpu.mem_write(user + 0x198, bytes(n.cpu.mem_read(server_id, 24)))
        call(0x79e2b30, manager)
        after = tuple(n._read_string(account + offset) for offset in (0xb8, 0xf0, 0x108))
        cases.append({'name': name,
                      'before_hex': [data.hex() for data in before],
                      'update_hex': [data.hex() for data in update],
                      'after_hex': [data.hex() for data in after],
                      'userinfo_derived_hex': n._read_string(user + 0x1c8).hex(),
                      'device_type': struct.unpack('<H', bytes(n.cpu.mem_read(account + 0x30, 2)))[0],
                      'client_version': struct.unpack('<I', bytes(n.cpu.mem_read(account + 0x34, 4)))[0],
                      'device_id_hex': n._read_string(account + 0x18).hex(),
                      'server_id_hex': n._read_string(account + 0xa0).hex()})
        if (cases[-1]['device_type'] != 0x1234 or cases[-1]['client_version'] != 0x55667788
                or cases[-1]['userinfo_derived_hex'] != derived.hex()
                or cases[-1]['device_id_hex'] != b'synthetic-device-id'.hex()
                or cases[-1]['server_id_hex'] != b'synthetic-server-id'.hex()):
            raise ValueError('synthetic ancillary configuration installation mismatch')
    if set(n.import_counts) - {'malloc', 'free', 'memset', 'memcpy', 'memmove'}:
        raise ValueError('unexpected account refresh import')
    return {'elf_sha256': n.elf_sha256,
            'provenance': 'Actual 0x79e2b30 CGI manager account refresh, original application accessors, user-info setters, wrapper calls and account setters. Synthetic application virtual service returns and device-ID source; logging off and single-thread locks modeled. No auth/client startup/persistence/network; direct guest syscall instructions refused. All keys and metadata synthetic. Before/update/after slots ordered original/client/server.',
            'modeled_entries': modeled, 'imports': n.import_counts, 'cases': cases}


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--elf', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.write_text(json.dumps(generate(args.elf), indent=2) + '\n')
    print('Generated native account key refresh vectors')

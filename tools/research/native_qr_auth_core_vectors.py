#!/usr/bin/env python3
"""Observe the pinned QR auth caller with synthetic strings, then serialize RSA data.

Stops at the manual-auth entry: no full auth, account operation or network runs.
The account-directory lock check is modeled as successful and logging is off.
Neither proof conversion nor the native RSA-data serialization is replaced.
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
    # These inputs are unrelated to any real account or device.
    username = b'wxid_qr_synthetic'
    proof = b'qr-proof-synthetic'
    controller = n.allocate(0x300)
    n.cpu.mem_write(controller + 0x138, bytes(n.cpu.mem_read(n._string(username), 24)))
    n.cpu.mem_write(controller + 0x150, bytes(n.cpu.mem_read(n._string(proof), 24)))
    observed = {}
    def stop_at_auth(*_):
        observed['username'] = n._read_string(n.cpu.reg_read(x.UC_X86_REG_RCX)).decode()
        observed['password'] = n._read_string(n.cpu.reg_read(x.UC_X86_REG_R8)).decode()
        observed['password2'] = n._read_string(n.cpu.reg_read(x.UC_X86_REG_R9)).decode()
        n.cpu.emu_stop()
    n.cpu.hook_add(n.u.UC_HOOK_CODE, lambda *_: n._return(0), begin=0x9116c90, end=0x9116c90)
    n.cpu.hook_add(n.u.UC_HOOK_CODE, lambda *_: n._return(1), begin=0x7398120, end=0x7398120)
    n.cpu.hook_add(n.u.UC_HOOK_CODE, stop_at_auth, begin=0x77c7f00, end=0x77c7f00)
    def call(entry, *args):
        if entry not in (0x77c7700, 0x8f50740):
            raise ValueError('unsupported entry')
        sp = n.STACK + (1 << 20) - 8
        n._write_u64(sp, n.RETURN)
        for reg, value in zip((x.UC_X86_REG_RDI, x.UC_X86_REG_RSI, x.UC_X86_REG_RDX), args):
            n.cpu.reg_write(reg, value)
        n.cpu.reg_write(x.UC_X86_REG_RSP, sp)
        n.cpu.emu_start(entry, n.RETURN, timeout=10_000_000, count=2_000_000)
        return n.cpu.reg_read(x.UC_X86_REG_RIP)
    end = call(0x77c7700, n.allocate(0x90), controller, n._string(b'synthetic-context'))
    if end != 0x77c7f00 or observed != {'username': username.decode(), 'password': proof.decode(), 'password2': ''}:
        raise ValueError('QR auth boundary did not match native observations')
    maps = {v['type']: int(v['vtable_address_point'], 16) for v in json.loads(
        (Path(__file__).resolve().parents[2] / 'docs/reverse/evidence/message-function-map.json').read_text())}
    def obj(name, size):
        a = n.allocate(size); n._write_u64(a, maps['micromsg.' + name]); return a
    def w32(a, value):
        n.cpu.mem_write(a, struct.pack('<I', value))
    def buffer(data):
        a = obj('SKBuiltinBuffer_t', 0x20)
        n._write_u64(a + 8, n._string(data)); w32(a + 0x10, len(data)); w32(a + 0x18, 3)
        return a
    prior = json.loads((Path(__file__).resolve().parents[2] / 'testdata/auth/native-keys.json').read_text())
    point, random_key = bytes.fromhex(prior['client_point']), b'random-key16byte'
    ecdh = obj('ECDHKey', 0x20)
    n._write_u64(ecdh + 8, buffer(point)); w32(ecdh + 0x10, 713); w32(ecdh + 0x18, 3)
    rsa = obj('ManualAuthRsaReqData', 0x38)
    n._write_u64(rsa + 8, buffer(random_key)); n._write_u64(rsa + 0x10, ecdh)
    for offset, name in [(0x18, 'username'), (0x20, 'password'), (0x28, 'password2')]:
        n._write_u64(rsa + offset, n._string(observed[name].encode()))
    w32(rsa + 0x34, 31)
    out = n._string(b'')
    if call(0x8f50740, out, rsa) != n.RETURN:
        raise ValueError('serializer CPU budget')
    if set(n.import_counts) - {'malloc', 'free', 'memset', 'memcpy', 'memmove'}:
        raise ValueError('unexpected import')
    return {'elf_sha256': n.elf_sha256,
            'provenance': 'Synthetic QR caller 0x77c7700 observed at 0x77c79aa -> 0x77c7f00; account directory lock=true and logging=false explicitly modeled, auth entry never executed. Actual native RSA-data size/serialize with captured proof strings; no proof/hash/crypto shim, syscall, client startup or network. P224 public point reused from prior synthetic scalar1 fixture.',
            **observed, 'random_key': random_key.hex(), 'public_point': point.hex(),
            'core_hex': n._read_string(out).hex(), 'imports': n.import_counts}


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--elf', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.write_text(json.dumps(generate(args.elf), indent=2) + '\n')
    print('Synthetic native QR caller/core vector generated')

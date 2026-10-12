#!/usr/bin/env python3
"""Replay only the fixed ELF CGI-to-ECDHInfo selector with synthetic IDs.

Guest C++ initialization guards are modeled for one thread. The real native
unordered-set initializer and membership lookup run; no predicate is replaced.
No task, account, packet, cryptography, network, or host syscall is executed.
Guest syscall instructions are refused; libc's gettid wrapper is modeled as 1.
"""
import argparse
import json
import math
from pathlib import Path
import struct
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from native_crypto_vectors import NativeCrypto


def generate(elf):
    native = NativeCrypto(elf.read_bytes())
    original_import = native.import_call

    def imports(name):
        if name in ('pthread_mutex_lock', 'pthread_mutex_unlock'):
            # There is one guest thread and no competing guard owner.
            native.import_counts[name] = native.import_counts.get(name, 0) + 1
            native._return(0)
        elif name in ('__cxa_guard_acquire', '__cxa_guard_release', '__cxa_guard_abort', '__cxa_atexit'):
            native.import_counts[name] = native.import_counts.get(name, 0) + 1
            address = native.cpu.reg_read(native.x.UC_X86_REG_RDI)
            if name == '__cxa_guard_acquire':
                native._return(0 if native.cpu.mem_read(address, 1)[0] else 1)
            elif name == '__cxa_guard_release':
                native.cpu.mem_write(address, b'\x01')
                native._return(0)
            else:
                # No guest termination happens; registered destructor is not
                # run in this bounded, one-thread selector replay.
                native._return(0)
        elif name == 'syscall':
            number = native.cpu.reg_read(native.x.UC_X86_REG_RDI)
            if number != 186:  # observed SYS_gettid in native guard initialization
                raise ValueError(f'unmodeled libc syscall wrapper number {number}')
            native.import_counts[name] = native.import_counts.get(name, 0) + 1
            native._return(1)
        elif name == 'ceilf':
            # libm call used to size unordered-set buckets, not its predicate.
            bits = native.cpu.reg_read(native.x.UC_X86_REG_XMM0) & 0xffffffff
            value = struct.unpack('<f', struct.pack('<I', bits))[0]
            if not math.isfinite(value) or not 0 <= value <= 1000:
                raise ValueError('unexpected selector ceilf input')
            result = struct.unpack('<I', struct.pack('<f', math.ceil(value)))[0]
            native.cpu.reg_write(native.x.UC_X86_REG_XMM0, result)
            native.import_counts[name] = native.import_counts.get(name, 0) + 1
            native._return(0)
        else:
            original_import(name)

    native.import_call = imports
    ids = [0, 252, 502, 503, 654, 763, 987, 989, 997, 7415, 22312,
           251, 253, 433, 434, 522, 138, 655, 764, 0x80000000, 0xffffffff]
    cases = []
    x = native.x
    for cgi in ids:
        stack = native.STACK + (1 << 20) - 8
        native._write_u64(stack, native.RETURN)
        native.cpu.reg_write(x.UC_X86_REG_RDI, cgi)
        native.cpu.reg_write(x.UC_X86_REG_RSP, stack)
        native.cpu.emu_start(0x79e4250, native.RETURN, timeout=10_000_000, count=2_000_000)
        if native.cpu.reg_read(x.UC_X86_REG_RIP) != native.RETURN:
            raise ValueError('selector CPU budget')
        result = native.cpu.reg_read(x.UC_X86_REG_RAX) & 0xff
        if result not in (0, 1):
            raise ValueError('non-boolean native selector result')
        cases.append({'cgi': cgi, 'ecdh_info': bool(result)})
    allowed = {'malloc', 'free', 'memset', 'memcpy', 'memmove',
               '__cxa_guard_acquire', '__cxa_guard_release', '__cxa_atexit',
               'pthread_mutex_lock', 'pthread_mutex_unlock', 'syscall', 'ceilf'}
    if set(native.import_counts) - allowed:
        raise ValueError('unexpected native selector import')
    return {'elf_sha256': native.elf_sha256, 'entry': '0x79e4250',
            'provenance': 'Actual pinned native CGI selector and unordered-set initialization with synthetic integer IDs. One-thread guard locks, libc gettid=1, destructor registration, and libm ceilf for bucket sizing modeled; membership lookup not replaced. No task/packet/network/client startup or host syscall executed; guest syscall instructions refused.',
            'libc_syscall_model': {'186': 'gettid=1; all other syscall-wrapper numbers refused'},
            'cases': cases, 'imports': native.import_counts}


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--elf', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.write_text(json.dumps(generate(args.elf), indent=2) + '\n')
    print('Generated native CGI transport-selector vectors')

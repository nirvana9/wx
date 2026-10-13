#!/usr/bin/env python3
"""Replay an original instruction span that writes the extspam identity record.

This is a bounded component inside the huge 0x9b0c650 FDE, not a whole-function
replay. Guest write/close collect synthetic bytes; CRC and guards are native.
No real filesystem, client startup, account, report assembly or network runs.
"""
import argparse
import hashlib
import json
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from native_crypto_vectors import NativeCrypto
from recover_native_protocol import Image


def generate(elf):
    data = elf.read_bytes()
    n = NativeCrypto(data)
    image = Image(data)
    start, end, reject = 0x9b10698, 0x9b107ba, 0x9b107c5
    read_start, read_end, read_reject = 0x9b0fefe, 0x9b10241, 0x9b10809
    function = image.function(start)
    if function != (0x9b0c650, 1307867):
        raise ValueError('unexpected owning FDE')
    boundaries = {ins.address for ins in image.instructions(function[0])}
    if not {start, end, reject, read_start, read_end, read_reject} <= boundaries:
        raise ValueError('identity span boundary is not an original instruction')
    span = data[image.fileoff(start):image.fileoff(end)]
    x = n.x
    emitted, writes, outcome = [], [], []
    original_import = n.import_call
    write_cap = None
    source_record, read_pos, read_sizes = b'', 0, []

    def imports(name):
        nonlocal read_pos
        if name == 'write':
            fd, pointer, size = (n.cpu.reg_read(reg) for reg in
                                 (x.UC_X86_REG_RDI, x.UC_X86_REG_RSI, x.UC_X86_REG_RDX))
            if fd != 100 or size > 40:
                raise ValueError('identity write outside synthetic FD/budget')
            count = size if write_cap is None else min(size, write_cap)
            emitted.append(bytes(n.cpu.mem_read(pointer, count)))
            writes.append(count)
            n.import_counts[name] = n.import_counts.get(name, 0) + 1
            n._return(count)
        elif name == 'read':
            fd, pointer, size = (n.cpu.reg_read(reg) for reg in
                                 (x.UC_X86_REG_RDI, x.UC_X86_REG_RSI, x.UC_X86_REG_RDX))
            if fd != 100 or size not in (36, 4):
                raise ValueError('identity read outside synthetic FD/budget')
            chunk = source_record[read_pos:read_pos + size]
            if chunk:
                n.cpu.mem_write(pointer, chunk)
            read_pos += len(chunk)
            read_sizes.append(len(chunk))
            n.import_counts[name] = n.import_counts.get(name, 0) + 1
            n._return(len(chunk))
        elif name in ('close', '__close'):
            if n.cpu.reg_read(x.UC_X86_REG_RDI) != 100:
                raise ValueError('identity close outside synthetic FD')
            n.import_counts[name] = n.import_counts.get(name, 0) + 1
            n._return(0)
        else:
            original_import(name)

    def boundary(_cpu, address, _size, _user):
        outcome.append('complete' if address in (end, read_end) else 'rejected')
        n.cpu.emu_stop()

    n.import_call = imports
    for address in (end, reject, read_end, read_reject):
        n.cpu.hook_add(n.u.UC_HOOK_CODE, boundary, begin=address, end=address)
    cases = []
    for name, identity, cap in (
        ('uuid_one', b'12345678-1234-4234-8234-123456789abc', None),
        ('uuid_two', b'fedcba98-7654-4321-8abc-fedcba987654', None),
        ('opaque_binary', bytes(range(36)), None),
        ('short_identity', b'x' * 35, None),
        ('short_write', b'12345678-1234-4234-8234-123456789abc', 35),
    ):
        emitted.clear()
        writes.clear()
        outcome.clear()
        write_cap = cap
        frame = n.STACK + (1 << 19)
        value = n._string(identity)
        n.cpu.mem_write(frame - 0x620, bytes(n.cpu.mem_read(value, 24)))
        n.cpu.reg_write(x.UC_X86_REG_RBP, frame)
        n.cpu.reg_write(x.UC_X86_REG_RSP, frame - 0x2000)
        n.cpu.reg_write(x.UC_X86_REG_R14, 100)
        n.cpu.emu_start(start, 0, timeout=2_000_000, count=200_000)
        if len(outcome) != 1:
            raise ValueError('identity span CPU budget/boundary')
        cases.append({'name': name, 'identity_hex': identity.hex(),
                      'outcome': outcome[0], 'write_sizes': list(writes),
                      'record_hex': b''.join(emitted).hex()})
    reader_cases = []
    valid_records = [(case['name'], bytes.fromhex(case['record_hex']))
                     for case in cases if case['outcome'] == 'complete']
    damaged = bytearray(valid_records[0][1])
    damaged[39] ^= 1
    changed = bytearray(valid_records[0][1])
    changed[0] ^= 1
    for name, source_record in (*valid_records, ('bad_crc', bytes(damaged)),
                                ('bad_identity', bytes(changed)), ('short_record', valid_records[0][1][:35])):
        read_pos = 0
        read_sizes.clear()
        outcome.clear()
        n.cpu.mem_write(frame - 0x2000, bytes(0x3000))
        n.cpu.reg_write(x.UC_X86_REG_RBP, frame)
        n.cpu.reg_write(x.UC_X86_REG_RSP, frame - 0x2000)
        n.cpu.reg_write(x.UC_X86_REG_R14, 100)
        n.cpu.reg_write(x.UC_X86_REG_R12, frame - 0x1f0)
        n.cpu.reg_write(x.UC_X86_REG_XMM0, 0)
        n.cpu.emu_start(read_start, 0, timeout=2_000_000, count=200_000)
        if len(outcome) != 1:
            raise ValueError('identity reader CPU budget/boundary')
        identity = b''
        if outcome[0] == 'complete':
            identity = bytes(n.cpu.mem_read(n._read_u64(frame - 0x290), 36))
        reader_cases.append({'name': name, 'record_hex': source_record.hex(),
                             'outcome': outcome[0], 'identity_hex': identity.hex(),
                             'read_sizes': list(read_sizes)})
    if set(n.import_counts) - {'write', 'read', '__close', 'close', 'malloc'}:
        raise ValueError('unexpected identity span import')
    return {'elf_sha256': n.elf_sha256,
            'provenance': 'Original bounded writer/CRC and reader/CRC instruction spans inside 0x9b0c650, not new native functions or a complete extspam report. Synthetic string/stack context and FD=100; write collects guest bytes, read copies supplied synthetic records and close succeeds. No CRC, length guard, comparison or serializer substitute. All values synthetic; host filesystem and direct guest syscalls refused.',
            'owner_fde': {'entry': hex(function[0]), 'size': function[1]},
            'span': {'start': hex(start), 'exclusive_end': hex(end), 'reject_boundary': hex(reject),
                     'file_offset': hex(image.fileoff(start)), 'code_sha256': hashlib.sha256(span).hexdigest()},
            'reader_span': {'start': hex(read_start), 'exclusive_end': hex(read_end),
                            'reject_boundary': hex(read_reject), 'file_offset': hex(image.fileoff(read_start)),
                            'code_sha256': hashlib.sha256(data[image.fileoff(read_start):image.fileoff(read_end)]).hexdigest()},
            'imports': n.import_counts, 'cases': cases, 'reader_cases': reader_cases}


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--elf', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.write_text(json.dumps(generate(args.elf), indent=2) + '\n')
    print('Generated native extspam identity record span vectors')

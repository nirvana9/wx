#!/usr/bin/env python3
"""Recover wire evidence from the pinned Linux ELF without executing WeChat.

This is an offline reverse-engineering tool, not a login or messaging client.
The profile contains manually reviewed helper addresses for ONE sample.
"""
import argparse
import bisect
import hashlib
import io
import json
from pathlib import Path
import struct
import subprocess
import sys
import tarfile

from capstone import Cs, CS_ARCH_X86, CS_MODE_64
from capstone.x86 import X86_OP_IMM, X86_OP_MEM, X86_OP_REG, X86_REG_RIP
from elftools.elf.elffile import ELFFile
import numpy as np


PROFILE_PATH = Path(__file__).with_name('native-profile.json')


def dump(path, value):
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + '\n')


def extract_main(deb, profile):
    with deb.open('rb') as stream:
        digest = hashlib.file_digest(stream, 'sha256').hexdigest()
    if digest != profile['deb_sha256']:
        raise ValueError('DEB hash mismatch; only the pinned 4.1.13.23 sample is supported')
    process = subprocess.Popen(['dpkg-deb', '--fsys-tarfile', str(deb)], stdout=subprocess.PIPE)
    data = None
    try:
        with tarfile.open(fileobj=process.stdout, mode='r|') as archive:
            for member in archive:
                if member.isfile() and member.name.removeprefix('./') == 'opt/wechat/wechat':
                    data = archive.extractfile(member).read()
                    if len(data) != member.size:
                        raise ValueError('Incomplete main ELF stream')
        status = process.wait()
    finally:
        process.stdout.close()
        if process.poll() is None:
            process.kill()
            process.wait()
    if status != 0 or data is None:
        raise ValueError('dpkg-deb could not extract the main ELF')
    if hashlib.sha256(data).hexdigest() != profile['elf_sha256']:
        raise ValueError('Main ELF hash mismatch')
    return data


class Image:
    def __init__(self, data):
        self.data = data
        self.elf = ELFFile(io.BytesIO(data))
        if (self.elf.elfclass != 64 or not self.elf.little_endian
                or self.elf['e_machine'] != 'EM_X86_64'):
            raise ValueError('Expected a little-endian x86-64 ELF')
        self.segments = [s for s in self.elf.iter_segments() if s['p_type'] == 'PT_LOAD']
        self.text = self.elf.get_section_by_name('.text')
        self.code = self.text.data()
        self.decoder = Cs(CS_ARCH_X86, CS_MODE_64)
        self.decoder.detail = True
        self.cache = {}
        self.reloc = {
            r['r_offset']: r['r_addend']
            for r in self.elf.get_section_by_name('.rela.dyn').iter_relocations()
            if r['r_info_type'] == 8  # R_X86_64_RELATIVE
        }
        self.reverse_reloc = {}
        for slot, target in self.reloc.items():
            self.reverse_reloc.setdefault(target, []).append(slot)
        header = self.elf.get_section_by_name('.eh_frame_hdr')
        raw = header.data()
        if raw[:4] != bytes([1, 0x1b, 3, 0x3b]):
            raise ValueError('Unsupported .eh_frame_hdr encodings')
        count = struct.unpack_from('<I', raw, 8)[0]
        table = raw[12:12 + 8 * count]
        if len(table) != 8 * count:
            raise ValueError('Truncated FDE index')
        base = header['sh_addr']
        self.pairs = [(base + a, base + b) for a, b in struct.iter_unpack('<ii', table)]
        self.starts = [a for a, _ in self.pairs]
        if self.starts != sorted(self.starts):
            raise ValueError('Unsorted FDE index')

    def fileoff(self, va):
        for segment in self.segments:
            if segment['p_vaddr'] <= va < segment['p_vaddr'] + segment['p_filesz']:
                return va - segment['p_vaddr'] + segment['p_offset']
        raise ValueError(f'Unmapped VA: {va:#x}')

    def va(self, offset):
        for segment in self.segments:
            if segment['p_offset'] <= offset < segment['p_offset'] + segment['p_filesz']:
                return offset - segment['p_offset'] + segment['p_vaddr']
        raise ValueError(f'Unmapped file offset: {offset:#x}')

    def function(self, va):
        index = bisect.bisect_right(self.starts, va) - 1
        if index < 0:
            return None
        start, fde = self.pairs[index]
        offset = self.fileoff(fde)
        # This sample's FDE initial_location is signed pcrel32; range is u32.
        initial = fde + 8 + struct.unpack_from('<i', self.data, offset + 8)[0]
        size = struct.unpack_from('<I', self.data, offset + 12)[0]
        if initial == start and start <= va < start + size:
            return start, size
        return None

    def instructions(self, address):
        fn = self.function(address)
        if fn is None or fn[0] != address:
            raise ValueError(f'Not a validated function entry: {address:#x}')
        if address not in self.cache:
            offset = self.fileoff(address)
            insns = list(self.decoder.disasm(self.data[offset:offset + fn[1]], address))
            if sum(i.size for i in insns) != fn[1]:
                raise ValueError(f'Incomplete function decoding: {address:#x}')
            self.cache[address] = insns
        return self.cache[address]

    def strings(self, text):
        needle = text.encode() + b'\0'
        result = []
        start = 0
        while True:
            offset = self.data.find(needle, start)
            if offset < 0:
                return result
            if offset == 0 or self.data[offset - 1] == 0:
                result.append(self.va(offset))
            start = offset + 1

    def riprefs(self, targets):
        """Scan ALL disp32 candidates, then validate actual instruction boundaries.

        LEA/MOV-only scanners miss the SSE loads used by GetTypeName and CGIs.
        Extra trailing bytes cover instructions with an immediate after disp32.
        """
        targets = set(targets)
        wanted = np.array(sorted(targets), dtype=np.int64)
        functions = set()
        base = self.text['sh_addr']
        for alignment in range(4):
            count = (len(self.code) - alignment) // 4
            disp = np.frombuffer(self.code, dtype='<i4', count=count,
                                 offset=alignment).astype(np.int64)
            ends = np.arange(count, dtype=np.int64) * 4 + base + alignment + 4
            effective = ends + disp
            for trailing in (0, 1, 2, 4, 8):
                hits = np.flatnonzero(np.isin(effective + trailing, wanted))
                for index in hits:
                    fn = self.function(int(ends[index]) + trailing - 1)
                    if fn is not None:
                        functions.add(fn[0])
        result = []
        for address in sorted(functions):
            for ins in self.instructions(address):
                for operand in ins.operands:
                    if operand.type == X86_OP_MEM and operand.mem.base == X86_REG_RIP:
                        target = ins.address + ins.size + operand.mem.disp
                        if target in targets:
                            result.append({
                                'instruction': hex(ins.address), 'target': hex(target),
                                'function': hex(address), 'size': self.function(address)[1],
                                'mnemonic': ins.mnemonic, 'operands': ins.op_str,
                            })
        return result

    def map_message(self, name, typename, slot, constructor=None):
        record = {
            'type': name, 'get_type_name': hex(typename),
            'get_type_name_size': self.function(typename)[1],
            'vtable_type_name_slot': hex(slot),
            'parse_candidate': hex(self.reloc[slot + 48]),
            'size_candidate': hex(self.reloc[slot + 56]),
            'serialize_candidate': hex(self.reloc[slot + 64]),
            'vtable_address_point': hex(slot - 16),
        }
        if constructor is not None:
            record['constructor'] = hex(constructor)
        for key in ('parse_candidate', 'size_candidate', 'serialize_candidate'):
            self.instructions(int(record[key], 16))
        return record

    def message_maps(self, profile, refs, literal_map):
        records = []
        for name in profile['message_types']:
            targets = set(literal_map[name])
            candidates = set()
            for ref in refs:
                if int(ref['target'], 16) not in targets:
                    continue
                typename = int(ref['function'], 16)
                for slot in self.reverse_reloc.get(typename, []):
                    entries = [self.reloc.get(slot + n) for n in (48, 56, 64)]
                    if all(a is not None and self.function(a) is not None for a in entries):
                        candidates.add((typename, slot))
            if len(candidates) != 1:
                raise ValueError(f'{name}: expected one validated vtable, got {candidates}')
            records.append(self.map_message(name, *next(iter(candidates))))
        packets = []
        for entry in profile['packet_constructors']:
            constructor = int(entry['constructor'], 16)
            ins = self.instructions(constructor)[0]
            if (ins.mnemonic != 'lea' or ins.operands[1].type != X86_OP_MEM
                    or ins.operands[1].mem.base != X86_REG_RIP):
                raise ValueError('Packet constructor no longer matches the profile')
            slot = ins.address + ins.size + ins.operands[1].mem.disp + 32
            packets.append(self.map_message(entry['type'], self.reloc[slot], slot, constructor))
        return records, packets

    def fields(self, record, helpers):
        insns = self.instructions(int(record['serialize_candidate'], 16))
        fields = []
        for index, ins in enumerate(insns):
            if (ins.mnemonic not in ('call', 'jmp') or not ins.operands
                    or ins.operands[0].type != X86_OP_IMM):
                continue
            helper = helpers.get(ins.operands[0].imm)
            if helper is None:
                continue
            field = None
            field_ins = None
            for previous in reversed(insns[max(0, index - 12):index]):
                if previous.mnemonic in ('call', 'jmp'):
                    break
                if previous.mnemonic == 'mov' and len(previous.operands) == 2:
                    dst, src = previous.operands
                    if (dst.type == X86_OP_REG and previous.reg_name(dst.reg) == 'edi'
                            and src.type == X86_OP_IMM):
                        field, field_ins = src.imm, previous
                        break
            if field is None:
                continue  # Dynamic IDs or more complex data flow remain unclaimed.
            member = None
            for previous in reversed(insns[max(0, index - 16):index]):
                if previous.mnemonic in ('call', 'jmp'):
                    break
                if previous.mnemonic in ('mov', 'movss') and len(previous.operands) == 2:
                    dst, src = previous.operands
                    if (dst.type == X86_OP_REG and src.type == X86_OP_MEM
                            and previous.reg_name(dst.reg) == helper['value_register']):
                        member = {
                            'instruction': hex(previous.address),
                            'base': previous.reg_name(src.mem.base),
                            'offset': hex(src.mem.disp),
                            'index': previous.reg_name(src.mem.index) if src.mem.index else None,
                        }
                        break
            fields.append({
                'field_number': field, 'wire_type': helper['wire_type'],
                'encoding_kind': helper['kind'], 'declaration_type_note': helper['note'],
                'writer_helper': hex(ins.operands[0].imm),
                'writer_instruction': hex(ins.address),
                'field_number_instruction': hex(field_ins.address),
                'object_member_source': member,
                'semantic_name': None, 'requiredness': None, 'nested_type': None,
            })
        return {
            'type': record['type'], 'serialize_function': record['serialize_candidate'],
            'parse_function': record['parse_candidate'], 'fields': fields,
            'recovery_scope': 'constant field IDs passed to reviewed writer helpers; '
                              'not a complete semantic schema; member sources are local hints',
        }

    def tasks(self, paths, refs, literal_map, constructors):
        result = []
        for path in paths:
            targets = set(literal_map[path])
            constructor = int(constructors[path], 16)
            self.instructions(constructor)
            candidates = {}
            for ref in refs:
                if int(ref['target'], 16) not in targets or ref['size'] > 600:
                    continue
                fn = int(ref['function'], 16)
                # Static metadata initialization can use the same path and ID.
                # Require the reviewed task-class constructor, not just literals.
                has_constructor = any(
                    i.mnemonic == 'call' and i.operands[0].type == X86_OP_IMM
                    and i.operands[0].imm == constructor
                    for i in self.instructions(fn)
                )
                if not has_constructor:
                    continue
                for ins in self.instructions(fn):
                    if ins.mnemonic != 'mov' or len(ins.operands) != 2:
                        continue
                    dst, src = ins.operands
                    if (dst.type == X86_OP_MEM and ins.reg_name(dst.mem.base) == 'rsp'
                            and dst.mem.disp == 0x10 and src.type == X86_OP_IMM):
                        candidates[fn] = {
                            'path': path, 'task_constructor_wrapper': hex(fn),
                            'task_class_constructor': hex(constructor),
                            'task_cgi_id': src.imm, 'id_instruction': hex(ins.address),
                            'id_storage': '[rsp+0x10]',
                            'path_instruction': ref['instruction'],
                            'scope_note': 'native task metadata, not a proven on-wire header command',
                        }
            if len(candidates) != 1:
                raise ValueError(f'{path}: expected one task metadata binding')
            result.append(next(iter(candidates.values())))
        return result

    def save_asm(self, address, path):
        lines = [f'{i.address:016x}: {i.bytes.hex():<28} {i.mnemonic:<8} {i.op_str}'.rstrip()
                 for i in self.instructions(address)]
        path.write_text('\n'.join(lines) + '\n')


def recover(deb, output, profile):
    image = Image(extract_main(deb, profile))
    print('Verified sample; scanning RIP displacements and validating FDEs…', file=sys.stderr)
    names = profile['message_types'] + profile['paths']
    literals = {name: image.strings(name) for name in names}
    if any(not values for values in literals.values()):
        raise ValueError('One or more profile literals were not found')
    refs = image.riprefs([a for values in literals.values() for a in values])
    messages, packets = image.message_maps(profile, refs, literals)
    helpers = {int(h['address'], 16): h for h in profile['writer_helpers']}
    fields = [image.fields(record, helpers) for record in messages]
    packet_fields = [image.fields(record, helpers) for record in packets]
    tasks = image.tasks(profile['paths'], refs, literals, profile['task_constructors'])
    output.mkdir(parents=True, exist_ok=True)
    asm_dir = output / 'asm'
    asm_dir.mkdir(exist_ok=True)
    dump(output / 'message-function-map.json', messages)
    dump(output / 'packet-message-function-map.json', packets)
    dump(output / 'protobuf-field-evidence.json', fields)
    dump(output / 'packet-field-evidence.json', packet_fields)
    dump(output / 'native-tasks.json', tasks)
    dump(output / 'rip-references.json', refs)
    for record in messages + packets:
        for key, suffix in [('get_type_name', 'type_name'), ('serialize_candidate', 'serialize')]:
            image.save_asm(int(record[key], 16), asm_dir / f"{record['type']}_{suffix}.asm")
    for entry in tasks:
        image.save_asm(int(entry['task_constructor_wrapper'], 16),
                       asm_dir / f"{entry['path'].rsplit('/', 1)[1]}_task_metadata.asm")
        image.save_asm(int(entry['task_class_constructor'], 16),
                       asm_dir / f"{entry['path'].rsplit('/', 1)[1]}_task_constructor.asm")
    for helper in profile['writer_helpers']:
        image.save_asm(int(helper['address'], 16), asm_dir / f"wire_helper_{helper['address']}.asm")
    for name, address in profile['named_functions'].items():
        image.save_asm(int(address, 16), asm_dir / f'{name}.asm')
    manifest = {
        'sample_commit': profile['sample_commit'], 'deb_sha256': profile['deb_sha256'],
        'elf_sha256': profile['elf_sha256'], 'fde_entries': len(image.pairs),
        'message_types_mapped': len(messages), 'packet_types_mapped': len(packets),
        'field_writer_sites': sum(len(r['fields']) for r in fields),
        'packet_field_writer_sites': sum(len(r['fields']) for r in packet_fields),
        'native_tasks_mapped': len(tasks), 'sample_executed': False,
        'scope_note': profile['scope_note'],
    }
    dump(output / 'manifest.json', manifest)
    return manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--deb', type=Path, required=True)
    parser.add_argument('--output', type=Path, default=Path('analysis-output'))
    args = parser.parse_args()
    try:
        profile = json.loads(PROFILE_PATH.read_text())
        manifest = recover(args.deb, args.output, profile)
    except (OSError, ValueError, KeyError, struct.error, tarfile.TarError) as error:
        print(f'Analysis failed: {error}', file=sys.stderr)
        return 1
    print(json.dumps(manifest, ensure_ascii=False, indent=2))
    return 0


if __name__ == '__main__':
    raise SystemExit(main())

#!/usr/bin/env python3
"""Build an offline, non-executable REA analysis projection of fixed ELF functions.

The manifest binds every selected function's instruction bytes to the pinned
sample. The synthetic ELF omits most of the image and must never be treated as
an executable client or as evidence for behavior outside those bytes.
"""

import argparse
import hashlib
import json
from pathlib import Path
import struct
import sys

from capstone.x86 import X86_REG_RIP

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from recover_native_protocol import Image


ELF_SHA256 = "2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959"
DEFAULT_FUNCTIONS = (
    0x77c0d40,  # QR notification
    0x77c2f40,  # QR check
    0x77c7700,  # QR auth caller
    0x77c7f00,  # first auth builder
    0x77ce110,  # secmanualauth CGI
    0x77d8d20,  # autoauth
    0x77f5210,  # common CGI send
    0x84e38c0,  # extspam adapter
    0x8df3d70,  # account session key copy
)


def align(value, unit):
    return (value + unit - 1) & -unit


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--elf", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--instruction-span", action="append", default=[], metavar="START:END",
                        help="Original instruction-aligned span within one FDE; creates a synthetic analysis function, not a native entry")
    parser.add_argument("--rip-data-bytes", type=int, default=256,
                        help="Bounded data window at each direct RIP target (default: 256)")
    parser.add_argument("addresses", nargs="*", type=lambda value: int(value, 0))
    args = parser.parse_args()
    if not 1 <= args.rip_data_bytes <= 4096:
        raise ValueError("RIP data window must be within 1..4096 bytes")
    data = args.elf.read_bytes()
    if hashlib.sha256(data).hexdigest() != ELF_SHA256:
        raise ValueError("fixed WeChat ELF SHA-256 mismatch")
    image = Image(data)
    entries = sorted(set(args.addresses or (() if args.instruction_span else DEFAULT_FUNCTIONS)))
    selections = []
    for address in entries:
        owner = image.function(address)
        if owner is None or owner[0] != address:
            raise ValueError(f"{address:#x} is not an FDE entry")
        selections.append((address, owner[1], owner, "full-fde"))
    for value in args.instruction_span:
        start, end = (int(part, 0) for part in value.split(":"))
        owner = image.function(start)
        if end <= start or owner is None or image.function(end - 1) != owner:
            raise ValueError("instruction span must stay inside one original FDE")
        boundaries = {ins.address for ins in image.instructions(owner[0])}
        boundaries.add(owner[0] + owner[1])
        if start not in boundaries or end not in boundaries:
            raise ValueError("span boundary is not an original instruction boundary")
        selections.append((start, end - start, owner, "instruction-span"))
    selections.sort()
    for previous, current in zip(selections, selections[1:]):
        if previous[0] + previous[1] > current[0]:
            raise ValueError("overlapping analysis selections")

    def segment_for(va):
        return next((seg for seg in image.segments if seg["p_vaddr"] <= va < seg["p_vaddr"] + seg["p_memsz"]), None)

    pages = {}

    def add_pages(start, end, flags):
        for va in range(start & -4096, align(end, 4096), 4096):
            if segment_for(va) or segment_for(va + 4095):
                pages[va] = pages.get(va, 0) | flags

    functions = []
    for address, size, owner, kind in selections:
        code = data[image.fileoff(address):image.fileoff(address) + size]
        if len(code) != size:
            raise ValueError("truncated original function")
        add_pages(address, address + size, 5)
        functions.append({"address": hex(address), "size": size,
                          "source_file_offset": hex(image.fileoff(address)),
                          "code_sha256": hashlib.sha256(code).hexdigest(),
                          "selection_kind": kind,
                          "owner_fde": {"entry": hex(owner[0]), "size": owner[1]}})
        for ins in image.instructions(owner[0]):
            if not address <= ins.address < address + size:
                continue
            for operand in ins.operands:
                if operand.type == 3 and operand.mem.base == X86_REG_RIP:
                    target = ins.address + ins.size + operand.mem.disp
                    add_pages(target, target + args.rip_data_bytes, 4)

    groups = []
    for va, flags in sorted(pages.items()):
        if groups and groups[-1][0] + groups[-1][1] == va and groups[-1][2] == flags:
            groups[-1] = (groups[-1][0], groups[-1][1] + 4096, flags)
        else:
            groups.append((va, 4096, flags))

    count = len(groups)
    output = bytearray(align(64 + count * 56, 4096))
    output[:16] = b"\x7fELF\x02\x01\x01" + b"\0" * 9
    group_offsets = {}
    for index, (va, size, flags) in enumerate(groups):
        body = bytearray(size)
        for offset in range(0, size, 4096):
            page = va + offset
            seg = segment_for(page) or segment_for(page + 4095)
            if seg is None:
                continue
            lo = max(page, seg["p_vaddr"])
            hi = min(page + 4096, seg["p_vaddr"] + seg["p_filesz"])
            if lo < hi:
                file_start = seg["p_offset"] + lo - seg["p_vaddr"]
                body[offset + lo - page:offset + hi - page] = data[file_start:file_start + hi - lo]
        file_offset = len(output)
        group_offsets[va] = file_offset
        struct.pack_into("<IIQQQQQQ", output, 64 + index * 56, 1, flags, file_offset,
                         va, va, size, size, 4096)
        output.extend(body)

    def projection_offset(address):
        va, size, _ = next(group for group in groups if group[0] <= address < group[0] + group[1])
        return group_offsets[va] + address - va

    for function in functions:
        address = int(function["address"], 16)
        copied = output[projection_offset(address):projection_offset(address) + function["size"]]
        if hashlib.sha256(copied).hexdigest() != function["code_sha256"]:
            raise ValueError(f"copied function mismatch: {address:#x}")

    section_names = ["", *[f".text.wx_{int(fn['address'], 16):x}" for fn in functions],
                     ".symtab", ".strtab", ".shstrtab"]
    shstr = bytearray(b"\0")
    name_offsets = {"": 0}
    for name in section_names[1:]:
        name_offsets[name] = len(shstr)
        shstr.extend(name.encode() + b"\0")
    strtab = bytearray(b"\0")
    symbols = bytearray(24)  # mandatory null symbol
    for index, fn in enumerate(functions, 1):
        name_offset = len(strtab)
        strtab.extend(("wx_" + fn["address"][2:]).encode() + b"\0")
        symbols.extend(struct.pack("<IBBHQQ", name_offset, 0x12, 0, index,
                                   int(fn["address"], 16), fn["size"]))

    def append_section(blob, alignment):
        output.extend(b"\0" * (align(len(output), alignment) - len(output)))
        offset = len(output)
        output.extend(blob)
        return offset

    symtab_offset = append_section(symbols, 8)
    strtab_offset = append_section(strtab, 1)
    shstr_offset = append_section(shstr, 1)
    section_offset = align(len(output), 8)
    output.extend(b"\0" * (section_offset - len(output)))
    output.extend(b"\0" * (len(section_names) * 64))
    for index, fn in enumerate(functions, 1):
        address = int(fn["address"], 16)
        struct.pack_into("<IIQQQQIIQQ", output, section_offset + index * 64,
                         name_offsets[section_names[index]], 1, 6, address,
                         projection_offset(address), fn["size"], 0, 0, 16, 0)
    sym_index = len(functions) + 1
    str_index = sym_index + 1
    shstr_index = str_index + 1
    for index, (name, kind, offset, size, link, align_to, entry_size) in enumerate((
        (".symtab", 2, symtab_offset, len(symbols), str_index, 8, 24),
        (".strtab", 3, strtab_offset, len(strtab), 0, 1, 0),
        (".shstrtab", 3, shstr_offset, len(shstr), 0, 1, 0)), sym_index):
        struct.pack_into("<IIQQQQIIQQ", output, section_offset + index * 64,
                         name_offsets[name], kind, 0, 0, offset, size, link,
                         1 if kind == 2 else 0, align_to, entry_size)
    struct.pack_into("<HHIQQQIHHHHHH", output, 16, 2, 62, 1, 0, 64, section_offset,
                     0, 64, 56, count, 64, len(section_names), shstr_index)

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes(output)
    manifest = {
        "source_elf_sha256": ELF_SHA256,
        "projection_sha256": hashlib.sha256(output).hexdigest(),
        "projection_bytes": len(output), "image_va_basis": "0x0", "entry": None,
        "rip_data_window_bytes": args.rip_data_bytes,
        "provenance": "Non-executable analysis projection of the fixed ELF. Selected original instruction bytes match original SHA-256. Full FDEs and instruction spans are identified separately; a span's declared function is synthetic, its original caller/stack context and control flow outside the span are absent. Referenced RIP data pages copied at original VAs. Synthetic ELF header and symbols; original sections, unwind metadata, dynamic relocations, and most callees omitted. Check every semantic conclusion against original assembly or isolated replay.",
        "functions": functions,
        "segments": [{"va": hex(va), "size": size, "flags": flags} for va, size, flags in groups],
    }
    args.output.with_suffix(".json").write_text(json.dumps(manifest, indent=2) + "\n")
    print(json.dumps({"path": str(args.output), "sha256": manifest["projection_sha256"],
                      "bytes": len(output), "functions": len(functions), "segments": count}))


if __name__ == "__main__":
    main()

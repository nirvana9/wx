#!/usr/bin/env python3
"""Validate contract shape and machine bytes; never infer business semantics."""
import argparse
import hashlib
import json
from pathlib import Path
import struct


KEYS = {'operation', 'fields', 'roles', 'parameters', 'evidence',
        'semantic_verified', 'packet_verified', 'live_verified', 'blocked_reasons'}
FIELD_KEYS = {'message', 'number', 'wire_type', 'meaning', 'representation', 'presence', 'value_source'}
EVIDENCE_KEYS = {'elf_sha256', 'function_va', 'instruction_va', 'machine_code_hex', 'explanation'}


def shape_errors(contract):
    errors = []
    if not isinstance(contract, dict) or set(contract) != KEYS:
        return ['invalid contract keys']
    if not isinstance(contract['operation'], str) or not contract['operation'].strip():
        errors.append('missing operation')
    fields, evidence = contract['fields'], contract['evidence']
    if not isinstance(fields, list) or not isinstance(evidence, list):
        return errors + ['invalid fields/evidence']
    seen = set()
    complete = bool(fields and evidence)
    for field in fields:
        if not isinstance(field, dict) or set(field) != FIELD_KEYS:
            errors.append('invalid field keys')
            continue
        message, number, wire = field['message'], field['number'], field['wire_type']
        if (not isinstance(message, str) or not message or type(number) is not int
                or not 0 < number < 1 << 29 or type(wire) is not int or wire not in (0, 1, 2, 3, 5)):
            errors.append('invalid field metadata')
            continue
        key = (message, number)
        if key in seen:
            errors.append('duplicate field')
        seen.add(key)
        rep = field['representation']
        expected = {'uint32': 0, 'int32': 0, 'uint64': 0, 'string': 2, 'bytes': 2, 'message': 2}
        if rep and expected.get(rep) != wire:
            errors.append('representation contradicts wire type')
        if field['presence'] not in ('unknown', 'set', 'conditional', 'omitted'):
            errors.append('invalid presence')
        for name in ('meaning', 'representation', 'presence', 'value_source'):
            if not isinstance(field[name], str):
                errors.append('invalid field text')
        complete &= bool(field['meaning'] and rep and field['presence'] != 'unknown' and field['value_source'])
    roles, parameters = contract['roles'], contract['parameters']
    if not isinstance(roles, dict) or not isinstance(parameters, dict):
        errors.append('invalid roles/parameters')
    else:
        for role, number in roles.items():
            message, dot, meaning = role.rpartition('.')
            if not dot or not meaning or type(number) is not int or (message, number) not in seen:
                errors.append('unbound role')
        if any(not isinstance(v, str) for v in parameters.values()):
            errors.append('invalid parameter value')
    for flag in ('semantic_verified', 'packet_verified', 'live_verified'):
        if type(contract[flag]) is not bool:
            errors.append('invalid verification flag')
    blocked = contract['blocked_reasons']
    if not isinstance(blocked, list) or any(not isinstance(v, str) for v in blocked):
        errors.append('invalid blocked reasons')
    if contract['semantic_verified'] and (not complete or blocked):
        errors.append('semantic flag lacks complete reviewed contract')
    if contract['packet_verified'] and not contract['semantic_verified']:
        errors.append('packet flag lacks semantic verification')
    if contract['live_verified'] and not contract['packet_verified']:
        errors.append('live flag lacks packet verification')
    return errors


def mapped_bytes(data, address, size):
    if (len(data) < 64 or data[:7] != b'\x7fELF\x02\x01\x01'
            or struct.unpack_from('<H', data, 18)[0] != 62):
        raise ValueError('not a little-endian x86-64 ELF')
    phoff = struct.unpack_from('<Q', data, 32)[0]
    phsize, phnum = struct.unpack_from('<HH', data, 54)
    if phsize != 56 or phoff + phnum * phsize > len(data):
        raise ValueError('truncated program headers')
    for index in range(phnum):
        kind, _, offset, va, _, filesz, _, _ = struct.unpack_from('<IIQQQQQQ', data, phoff + index * phsize)
        if kind == 1 and va <= address and size <= filesz and address - va <= filesz - size:
            start = offset + address - va
            if start + size > len(data):
                raise ValueError('truncated mapped segment')
            return data[start:start + size]
    raise ValueError('unmapped evidence address')


def check_contract(contract, elf_data):
    errors = shape_errors(contract)
    if errors:
        return errors
    digest = hashlib.sha256(elf_data).hexdigest()
    for index, evidence in enumerate(contract['evidence']):
        try:
            if not isinstance(evidence, dict) or set(evidence) != EVIDENCE_KEYS:
                raise ValueError('invalid evidence keys')
            if evidence['elf_sha256'] != digest:
                raise ValueError('ELF hash mismatch')
            start, address = int(evidence['function_va'], 0), int(evidence['instruction_va'], 0)
            code = bytes.fromhex(evidence['machine_code_hex'])
            if not code or address < start or not evidence['explanation']:
                raise ValueError('invalid evidence record')
            if mapped_bytes(elf_data, address, len(code)) != code:
                raise ValueError('machine code mismatch')
        except (ValueError, TypeError, KeyError, struct.error) as exc:
            errors.append(f'evidence {index}: {exc}')
    return errors


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--deb', type=Path, required=True)
    parser.add_argument('--contract', type=Path, required=True)
    args = parser.parse_args()
    # Extraction additionally pins DEB and ELF hashes using the existing profile.
    from recover_native_protocol import extract_main, PROFILE_PATH
    contract = json.loads(args.contract.read_text())
    data = extract_main(args.deb, json.loads(PROFILE_PATH.read_text()))
    errors = check_contract(contract, data)
    print(json.dumps({'operation': contract.get('operation'), 'machine_evidence_valid': not errors,
                      'semantic_verified': contract.get('semantic_verified'),
                      'packet_verified': contract.get('packet_verified'),
                      'live_verified': contract.get('live_verified'), 'errors': errors}, ensure_ascii=False, indent=2))
    return 1 if errors else 0


if __name__ == '__main__':
    raise SystemExit(main())

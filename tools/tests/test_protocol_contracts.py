"""Checks exercise actual ELF mapping and evidence comparisons with synthetic ELF.

No synthetic fixture is claimed to prove native WeChat semantics.
"""
import hashlib
import importlib.util
from pathlib import Path
import struct
import unittest

MODULE_PATH = Path(__file__).resolve().parents[1] / 'check_protocol_contracts.py'
spec = importlib.util.spec_from_file_location('check_protocol_contracts', MODULE_PATH)
checker = importlib.util.module_from_spec(spec)
spec.loader.exec_module(checker)


def sample():
    data = bytearray(160)
    data[:16] = b'\x7fELF\x02\x01\x01' + bytes(9)
    struct.pack_into('<HHIQQQIHHHHHH', data, 16, 3, 62, 1, 0, 64, 0, 0, 64, 56, 1, 64, 0, 0)
    struct.pack_into('<IIQQQQQQ', data, 64, 1, 5, 128, 0x1000, 0, 32, 32, 16)
    data[128:132] = bytes.fromhex('9090c390')
    sha = hashlib.sha256(data).hexdigest()
    contract = {'operation': 'test.synthetic', 'fields': [], 'roles': {}, 'parameters': {},
                'evidence': [{'elf_sha256': sha, 'function_va': '0x1000',
                              'instruction_va': '0x1000', 'machine_code_hex': '9090',
                              'explanation': 'synthetic ELF bytes'}],
                'semantic_verified': False, 'packet_verified': False,
                'live_verified': False, 'blocked_reasons': ['synthetic, no semantics']}
    return bytes(data), contract


class ContractChecks(unittest.TestCase):
    def test_match_machine_bytes_in_real_elf_mapping(self):
        data, contract = sample()
        self.assertEqual(checker.check_contract(contract, data), [])

    def test_machine_byte_mismatch_is_rejected(self):
        data, contract = sample()
        contract['evidence'][0]['machine_code_hex'] = 'cc'
        self.assertTrue(checker.check_contract(contract, data))

    def test_wrong_sample_and_unmapped_address_are_rejected(self):
        data, contract = sample()
        contract['evidence'][0]['elf_sha256'] = '0' * 64
        self.assertTrue(checker.check_contract(contract, data))
        _, contract = sample()
        contract['evidence'][0]['instruction_va'] = '0x1020'
        self.assertTrue(checker.check_contract(contract, data))

    def test_truncated_elf_is_rejected(self):
        data, contract = sample()
        self.assertTrue(checker.check_contract(contract, data[:80]))

    def test_flags_do_not_verify_unknown_semantics(self):
        data, contract = sample()
        contract['semantic_verified'] = True
        self.assertTrue(checker.check_contract(contract, data))

    def test_duplicate_fields_and_invalid_wire_are_rejected(self):
        data, contract = sample()
        field = {'message': 'T', 'number': 1, 'wire_type': 2,
                 'meaning': '', 'representation': '', 'presence': 'unknown', 'value_source': ''}
        contract['fields'] = [field, field]
        self.assertTrue(checker.check_contract(contract, data))
        contract['fields'] = [dict(field, wire_type=7)]
        self.assertTrue(checker.check_contract(contract, data))


if __name__ == '__main__':
    unittest.main()

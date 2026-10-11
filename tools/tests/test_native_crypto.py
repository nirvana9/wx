import hashlib
import io
import json
import os
from pathlib import Path
import sys
import unittest

sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from native_crypto_vectors import NativeCrypto, PINNED_ELF_SHA256

ROOT=Path(__file__).resolve().parents[2]

class NativeCryptoTests(unittest.TestCase):
    def test_refuses_wrong_sample_before_emulation(self):
        with self.assertRaisesRegex(ValueError,'hash mismatch'):
            NativeCrypto(b'not the pinned ELF')

    def test_manifest_records_primitive_scope_and_fixture_hash(self):
        manifest=json.loads((ROOT/'testdata/crypto/manifest.json').read_text())
        self.assertEqual(manifest['elf_sha256'],PINNED_ELF_SHA256)
        self.assertEqual(manifest['vectors_sha256'],hashlib.sha256((ROOT/'testdata/crypto/native_vectors.json').read_bytes()).hexdigest())
        self.assertTrue(manifest['native_code_emulated'])
        self.assertTrue(manifest['native_primitive_verified'])
        for flag in ('host_client_started','account_used','crypto_imports_replaced','complete_packet_verified','transport_verified','login_verified','messaging_verified'):
            self.assertFalse(manifest[flag],flag)

    @unittest.skipUnless(os.environ.get('WX_NATIVE_ELF'),'set WX_NATIVE_ELF to replay the pinned native code')
    def test_replays_independent_native_vectors(self):
        sample=Path(os.environ['WX_NATIVE_ELF']).read_bytes()
        vm=NativeCrypto(sample)
        from elftools.elf.elffile import ELFFile
        elf=ELFFile(io.BytesIO(sample))
        manifest=json.loads((ROOT/'testdata/crypto/manifest.json').read_text())
        for fn in manifest['native_functions']:
            address=int(fn['entry_va'],0)
            segment=next(s for s in elf.iter_segments() if s['p_type']=='PT_LOAD' and s['p_vaddr']<=address< s['p_vaddr']+s['p_filesz'])
            offset=address-segment['p_vaddr']+segment['p_offset']
            self.assertEqual(hashlib.sha256(sample[offset:offset+fn['size']]).hexdigest(),fn['sha256'],fn['name'])
        vectors=json.loads((ROOT/'testdata/crypto/native_vectors.json').read_text())
        for v in vectors['aes_gcm']:
            with self.subTest(v['name']):
                key,nonce,aad,plain=(bytes.fromhex(v[n]) for n in ('key_hex','nonce_hex','aad_hex','plain_hex'))
                result,envelope=vm.seal(key,nonce,aad,plain)
                self.assertEqual((result,envelope),(0,bytes.fromhex(v['envelope_hex'])))
                result,decoded=vm.open(key,aad,envelope)
                self.assertEqual((result,decoded),(0,plain))
                bad=bytearray(envelope);bad[-1]^=1
                result,decoded=vm.open(key,aad,bytes(bad))
                self.assertEqual(result,0xffffffff)
                self.assertEqual(decoded,b'')
        for v in vectors['hkdf_sha256']:
            with self.subTest(v['name']):
                result,out=vm.hkdf(*(bytes.fromhex(v[n]) for n in ('salt_hex','ikm_hex','info_hex')),v['length'])
                self.assertEqual(result,v['result'])
                self.assertEqual(out,bytes.fromhex(v['output_hex']))
        self.assertEqual(set(vm.import_counts),{'malloc','free','memset','memcpy','memmove'})
        self.assertEqual(vm.entropy_calls, len(vectors['aes_gcm']))
        self.assertEqual(vm.elf_sha256,PINNED_ELF_SHA256)
        with self.assertRaisesRegex(ValueError,'budget'):
            vm.allocate(32<<20)
        with self.assertRaisesRegex(ValueError,'unsupported import'):
            vm.import_call('socket')
        with self.assertRaisesRegex(ValueError,'input limit'):
            vm.seal(b'\0'*16,b'\0'*12,b'',b'x'*((1<<20)+1))

if __name__=='__main__': unittest.main()

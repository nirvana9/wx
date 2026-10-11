import hashlib
import json
from pathlib import Path
import sys
import tempfile
import unittest
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import qr_capture
from qr_capture import CaptureWriter, capture, verify_executable


class QRCollection(unittest.TestCase):
    def test_spawn_resumes_only_after_hooks_and_always_kills_owned_process(self):
        calls = []
        class Script:
            def on(self, _, callback): self.callback = callback
            def load(self):
                calls.append('hooks')
                self.callback({'type': 'send', 'payload': {'event': 'ready'}}, None)
            def unload(self): calls.append('unload')
        class Session:
            script = Script()
            def on(self, *args): pass
            def off(self, *args): pass
            def create_script(self, *args, **kwargs): return self.script
            def detach(self): calls.append('detach')
        class Device:
            session = Session()
            def spawn(self, argv, **kwargs):
                self.argv, self.kwargs = argv, kwargs
                calls.append('spawn')
                return 123
            def attach(self, pid): calls.append('attach'); return self.session
            def resume(self, pid):
                calls.append('resume')
                for meta in ({'kind': 'qr_request', 'id': 1},
                             {'kind': 'qr_frame', 'id': 1, 'packet_branch': 'PackMMPkg',
                              'selector': 12, 'package_word': 14, 'request_value': 502},
                             {'kind': 'qr_response', 'id': 1, 'native_parse_ok': True}):
                    self.session.script.callback({'type': 'send', 'payload': {'event': 'record', 'meta': meta}}, b'RAW_FIXTURE')
            def kill(self, pid): calls.append('kill')
        class Frida:
            device = Device()
            def get_local_device(self): return self.device
        frida = Frida()
        with tempfile.TemporaryDirectory() as tmp, patch('qr_capture.verify_executable') as verify, \
                patch.dict(sys.modules, frida=frida), patch('builtins.print'):
            executable = Path(tmp) / 'fixed-client'
            executable.touch()
            self.assertEqual(qr_capture.spawn_capture(executable, 30, Path(tmp) / 'capture'), 0)
            self.assertEqual(calls, ['spawn', 'attach', 'hooks', 'resume', 'unload', 'detach', 'kill'])
            self.assertEqual(frida.device.argv, [str(executable.resolve())])
            self.assertEqual(frida.device.kwargs, {'stdio': 'pipe'})
            self.assertEqual(verify.call_count, 3)
        calls.clear()
        with tempfile.TemporaryDirectory() as tmp, patch('qr_capture.verify_executable', side_effect=ValueError('hash')), \
                patch.dict(sys.modules, frida=frida):
            executable = Path(tmp) / 'wrong-elf'
            executable.touch()
            with self.assertRaises(ValueError):
                qr_capture.spawn_capture(executable, 30, Path('/unused'))
            self.assertEqual(calls, [])

    def test_spawn_failure_still_terminates_the_owned_process(self):
        from unittest.mock import Mock
        device = Mock()
        device.spawn.return_value = 123
        frida = Mock()
        frida.get_local_device.return_value = device
        with tempfile.TemporaryDirectory() as tmp, patch('qr_capture.verify_executable'), patch.dict(sys.modules, frida=frida), \
                patch('qr_capture.capture', side_effect=ValueError('profile')):
            executable = Path(tmp) / 'fixed-elf'
            executable.touch()
            with self.assertRaises(ValueError):
                qr_capture.spawn_capture(executable, 30, Path('/unused'))
        device.kill.assert_called_once_with(123)
        device.resume.assert_not_called()

    def test_wrong_executable_is_rejected_before_instrumentation(self):
        with tempfile.TemporaryDirectory() as tmp:
            p = Path(tmp) / 'synthetic-elf'
            p.write_bytes(b'synthetic fixture; never WeChat')
            with self.assertRaises(ValueError):
                verify_executable(p)
            verify_executable(p, hashlib.sha256(p.read_bytes()).hexdigest())

    def test_private_raw_records_and_manifest(self):
        with tempfile.TemporaryDirectory() as tmp:
            out = Path(tmp) / 'capture'
            with CaptureWriter(out) as writer:
                writer.record({'kind': 'qr_request', 'id': 1}, b'\x08\x00\xff')
                writer.record({'kind': 'qr_response', 'id': 1, 'native_parse_ok': True}, b'\x0a\x00')
            self.assertEqual(out.stat().st_mode & 0o777, 0o700)
            self.assertEqual((out / '0001-qr_request.bin').read_bytes(), b'\x08\x00\xff')
            for p in out.iterdir():
                self.assertEqual(p.stat().st_mode & 0o777, 0o600)
            manifest = json.loads((out / 'manifest.json').read_text())
            self.assertFalse(manifest['live_login_verified'])
            self.assertFalse(manifest['messaging_verified'])
            self.assertEqual(manifest['counts']['qr_response'], 1)

    def test_material_is_private_bounded_research_evidence(self):
        with tempfile.TemporaryDirectory() as tmp:
            out = Path(tmp) / 'capture'
            with CaptureWriter(out, max_bytes=32) as writer:
                writer.record({'kind': 'qr_material', 'id': 1}, b'SYNTHETIC_EPHEMERAL_MATERIAL')
                with self.assertRaises(ValueError):
                    writer.record({'kind': 'qr_material', 'id': 1}, b'x' * 33)
            self.assertEqual((out / '0001-qr_material.bin').stat().st_mode & 0o777, 0o600)
            manifest = json.loads((out / 'manifest.json').read_text())
            self.assertFalse(manifest['complete_qr_exchange'])
            self.assertFalse(manifest['live_login_verified'])

    def test_other_operations_are_not_written(self):
        with tempfile.TemporaryDirectory() as tmp:
            out = Path(tmp) / 'capture'
            with CaptureWriter(out) as writer:
                with self.assertRaises(ValueError):
                    writer.record({'kind': 'send_message', 'id': 1}, b'PRIVATE_BODY')
            self.assertFalse(any(p.suffix == '.bin' for p in out.iterdir()))

    def test_bounds_are_enforced_before_creating_blob(self):
        with tempfile.TemporaryDirectory() as tmp:
            out = Path(tmp) / 'capture'
            with CaptureWriter(out, max_bytes=4, max_records=1) as writer:
                with self.assertRaises(ValueError):
                    writer.record({'kind': 'qr_request', 'id': 1}, b'12345')
                writer.record({'kind': 'qr_request', 'id': 1}, b'1234')
                with self.assertRaises(ValueError):
                    writer.record({'kind': 'qr_response', 'id': 1}, b'5')
            self.assertEqual(len(list(out.glob('*.bin'))), 1)

    def test_existing_path_and_symlink_are_not_reused(self):
        with tempfile.TemporaryDirectory() as tmp:
            out = Path(tmp) / 'capture'
            out.mkdir()
            (out / 'user-file').write_text('UNRELATED')
            with self.assertRaises(FileExistsError):
                CaptureWriter(out)
            link = Path(tmp) / 'link'
            link.symlink_to(out, target_is_directory=True)
            with self.assertRaises(FileExistsError):
                CaptureWriter(link)
            self.assertEqual((out / 'user-file').read_text(), 'UNRELATED')

    def test_metadata_cannot_smuggle_payload_or_paths(self):
        with tempfile.TemporaryDirectory() as tmp:
            out = Path(tmp) / 'capture'
            with CaptureWriter(out) as writer:
                for meta in ({'kind': '../escape', 'id': 1},
                             {'kind': 'qr_request', 'id': 1, 'secret': 'unexpected'},
                             {'kind': 'qr_request', 'id': 'file-name'}):
                    with self.assertRaises(ValueError):
                        writer.record(meta, b'abc')
            self.assertFalse(any(p.suffix == '.bin' for p in out.iterdir()))

    def test_host_stops_after_complete_exchange_and_detaches(self):
        # External Frida surface only; no client, server, or business success fixture.
        class Script:
            unloaded = False
            def on(self, name, callback):
                self.callback = callback
            def load(self):
                self.callback({'type': 'send', 'payload': {'event': 'ready'}}, None)
                for meta in ({'kind': 'qr_request', 'id': 1},
                             {'kind': 'qr_frame', 'id': 1, 'packet_branch': 'PackMMPkg',
                              'selector': 12, 'package_word': 14, 'request_value': 502},
                             {'kind': 'qr_response', 'id': 1, 'native_parse_ok': True}):
                    self.callback({'type': 'send', 'payload': {'event': 'record', 'meta': meta}}, b'RAW_FIXTURE')
            def unload(self):
                self.unloaded = True
        class Session:
            detached = False
            script = Script()
            def on(self, *args): pass
            def off(self, *args): pass
            def create_script(self, *args, **kwargs): return self.script
            def detach(self): self.detached = True
        class Device:
            session = Session()
            def attach(self, pid): return self.session
        class Frida:
            device = Device()
            def get_local_device(self): return self.device
        frida = Frida()
        def bounded_wait(event, timeout=None):
            if timeout is not None and timeout > 1:
                raise RuntimeError('a complete exchange should end capture immediately')
            return event.is_set()
        with tempfile.TemporaryDirectory() as tmp, patch('qr_capture.verify_executable'), \
                patch.dict(sys.modules, frida=frida), patch('qr_capture.threading.Event.wait', bounded_wait), \
                patch('builtins.print'):
            out = Path(tmp) / 'capture'
            self.assertEqual(capture(123, 30, out), 0)
            manifest = json.loads((out / 'manifest.json').read_text())
            self.assertTrue(manifest['complete_qr_exchange'])
            self.assertFalse(manifest['live_login_verified'])
            self.assertFalse(manifest['messaging_verified'])
            self.assertTrue(frida.device.session.detached)
            self.assertTrue(frida.device.session.script.unloaded)


if __name__ == '__main__':
    unittest.main()

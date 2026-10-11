#!/usr/bin/env python3
"""Collect pinned Linux QR evidence. This is not a standalone login client."""

import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import sys
import threading
import time

ELF_SHA256 = '2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959'
MAX_BYTES = 1 << 20
MAX_RECORDS = 12
KINDS = ('qr_request', 'qr_response', 'qr_frame')
PROFILE_PATH = Path(__file__).with_name('qr_capture_profile.json')


def verify_executable(path, expected_sha256=ELF_SHA256):
    """Verify file contents before attaching; the CLI has no hash override."""
    digest = hashlib.sha256()
    with open(path, 'rb') as file:
        for chunk in iter(lambda: file.read(1 << 20), b''):
            digest.update(chunk)
    if digest.hexdigest() != expected_sha256:
        raise ValueError('executable does not match the pinned WeChat ELF')


def validate_metadata(meta):
    if not isinstance(meta, dict) or set(meta) - {
        'kind', 'id', 'native_parse_ok', 'packet_branch', 'selector',
        'package_word', 'request_value',
    }:
        raise ValueError('unsupported record metadata')
    if meta.get('kind') not in KINDS or type(meta.get('id')) is not int or not 0 < meta['id'] <= 1000:
        raise ValueError('invalid QR record identity')
    if 'native_parse_ok' in meta and (meta['kind'] != 'qr_response' or type(meta['native_parse_ok']) is not bool):
        raise ValueError('invalid parser result')
    packet_keys = {'packet_branch', 'selector', 'package_word', 'request_value'}
    if meta['kind'] == 'qr_frame':
        if not packet_keys <= set(meta) or meta['packet_branch'] not in ('PackMMPkg', 'PackWxPkg'):
            raise ValueError('missing packet metadata')
        for key in ('selector', 'package_word'):
            if type(meta[key]) is not int or not 0 <= meta[key] <= 65535:
                raise ValueError('invalid packet word')
        if type(meta['request_value']) is not int or not -(1 << 31) <= meta['request_value'] < (1 << 31):
            raise ValueError('invalid request value')
    elif packet_keys & set(meta):
        raise ValueError('packet metadata on a non-packet record')
    return dict(meta)


class CaptureWriter:
    """New, private directory with bounded, allowlisted binary records."""

    def __init__(self, path, max_bytes=MAX_BYTES, max_records=MAX_RECORDS):
        if type(max_bytes) is not int or not 0 < max_bytes <= MAX_BYTES:
            raise ValueError('invalid byte budget')
        if type(max_records) is not int or not 0 < max_records <= MAX_RECORDS:
            raise ValueError('invalid record budget')
        self.path = Path(path)
        self.path.mkdir(mode=0o700)  # Never reuse an existing directory or symlink.
        self.dirfd = os.open(self.path, os.O_DIRECTORY | os.O_NOFOLLOW)
        os.fchmod(self.dirfd, 0o700)
        self.max_bytes = max_bytes
        self.max_records = max_records
        self.records = []
        self.closed = False
        self.failure = None
        self.lock = threading.RLock()
        self.events = self._open('events.jsonl')
        self._manifest()

    def _open(self, name):
        fd = os.open(name, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW, 0o600, dir_fd=self.dirfd)
        return os.fdopen(fd, 'wb')

    def _manifest(self):
        counts = {kind: sum(r['kind'] == kind for r in self.records) for kind in KINDS}
        requests = {r['id'] for r in self.records if r['kind'] == 'qr_request'}
        frames = {r['id'] for r in self.records if r['kind'] == 'qr_frame'}
        # Response IDs refer to the same native task object; business success is unknown.
        responses = {r['id'] for r in self.records if r['kind'] == 'qr_response' and r.get('native_parse_ok') is True}
        manifest = {
            'format_version': 1, 'elf_sha256': ELF_SHA256, 'counts': counts,
            'complete_qr_exchange': bool(requests & frames & responses) and self.failure is None,
            'live_login_verified': False, 'messaging_verified': False,
            'failure': self.failure, 'records': self.records,
        }
        with self._open('manifest.tmp') as file:
            file.write((json.dumps(manifest, indent=2) + '\n').encode())
            file.flush()
            os.fsync(file.fileno())
        os.replace('manifest.tmp', 'manifest.json', src_dir_fd=self.dirfd, dst_dir_fd=self.dirfd)
        os.fsync(self.dirfd)
        return manifest

    def record(self, meta, data):
        with self.lock:
            if self.closed:
                raise ValueError('capture is closed')
            meta = validate_metadata(meta)
            if not isinstance(data, bytes) or not 0 < len(data) <= self.max_bytes:
                raise ValueError('invalid record length')
            if len(self.records) >= self.max_records:
                raise ValueError('record budget exceeded')
            name = f'{len(self.records) + 1:04d}-{meta["kind"]}.bin'
            with self._open(name) as file:
                file.write(data)
                file.flush()
                os.fsync(file.fileno())
            meta.update(file=name, length=len(data), sha256=hashlib.sha256(data).hexdigest())
            self.events.write((json.dumps(meta) + '\n').encode())
            self.events.flush()
            self.records.append(meta)
            self._manifest()

    def fail(self, code):
        with self.lock:
            if code not in ('agent_error', 'invalid_record', 'detached', 'attach_failed', 'interrupted'):
                raise ValueError('invalid failure code')
            self.failure = code

    def close(self):
        with self.lock:
            if not self.closed:
                try:
                    self._manifest()
                finally:
                    self.closed = True
                    self.events.close()
                    os.close(self.dirfd)

    def __enter__(self):
        return self

    def __exit__(self, *_):
        self.close()


def capture(pid, seconds, output):
    if sys.platform != 'linux':
        raise ValueError('this profile supports Linux x86-64 only')
    executable = Path(f'/proc/{pid}/exe')
    verify_executable(executable)
    try:
        import frida
    except ImportError:
        raise ValueError('install requirements-capture.txt in a separate analysis environment') from None
    profile = json.loads(PROFILE_PATH.read_text())
    if profile['elf_sha256'] != ELF_SHA256:
        raise ValueError('capture profile hash mismatch')
    source = 'const QR_PROFILE = ' + json.dumps(profile) + ';\n' + Path(__file__).with_suffix('.js').read_text()
    stopped = threading.Event()
    ready = threading.Event()
    session = script = None
    with CaptureWriter(output) as writer:
        def on_message(message, data):
            try:
                payload = message.get('payload')
                if message.get('type') != 'send' or not isinstance(payload, dict):
                    writer.fail('agent_error')
                    stopped.set()
                elif payload == {'event': 'ready'}:
                    ready.set()
                elif payload.get('event') == 'fatal':
                    writer.fail('agent_error')
                    stopped.set()
                elif payload.get('event') == 'record':
                    writer.record(payload.get('meta'), data)
                    print(f'已保存二维码记录 {len(writer.records)}，{len(data)} 字节。', flush=True)
                    if writer._manifest()['complete_qr_exchange']:
                        stopped.set()
                else:
                    writer.fail('invalid_record')
                    stopped.set()
            except (ValueError, OSError, TypeError):
                writer.fail('invalid_record')
                stopped.set()

        def on_detached(*_):
            writer.fail('detached')
            stopped.set()

        try:
            session = frida.get_local_device().attach(pid)
            verify_executable(executable)  # Check again after attach, before installing hooks.
            session.on('detached', on_detached)
            script = session.create_script(source, runtime='qjs')
            script.on('message', on_message)
            script.load()
            deadline = time.monotonic() + seconds
            while not stopped.is_set() and not ready.is_set() and time.monotonic() < deadline:
                stopped.wait(0.1)
            if ready.is_set() and not stopped.is_set():
                print('已挂接固定样本。请刷新未登录页的二维码，无需扫描或确认登录。', flush=True)
                stopped.wait(max(0, deadline - time.monotonic()))
        except KeyboardInterrupt:
            writer.fail('interrupted')
        except Exception:
            writer.fail('attach_failed')
            # Do not print Frida errors, which may include process state or arguments.
        finally:
            if script is not None:
                try:
                    script.unload()
                except Exception:
                    writer.fail('agent_error')
            if session is not None:
                session.off('detached', on_detached)
                try:
                    session.detach()
                except Exception:
                    writer.fail('detached')
        result = writer._manifest()
    print(f'采集已结束：{output}。这不是登录或收发成功记录。')
    return 0 if result['complete_qr_exchange'] else 1


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--pid', type=int, required=True, help='existing, unlogged-in fixed-version WeChat process')
    parser.add_argument('--seconds', type=int, default=120, help='30..600 seconds, default 120')
    parser.add_argument('--output', type=Path, help='new directory; default private-captures/<timestamp>')
    args = parser.parse_args(argv)
    if args.pid <= 0 or not 30 <= args.seconds <= 600:
        parser.error('PID must be positive; seconds must be 30..600')
    if args.output is None:
        root = Path('private-captures')
        if root.is_symlink():
            parser.error('private-captures must not be a symlink')
        root.mkdir(mode=0o700, exist_ok=True)
        args.output = root / datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S.%fZ')
    try:
        return capture(args.pid, args.seconds, args.output)
    except (ValueError, OSError) as error:
        print(f'采集未启动：{error}', file=sys.stderr)
        return 1


if __name__ == '__main__':
    raise SystemExit(main())

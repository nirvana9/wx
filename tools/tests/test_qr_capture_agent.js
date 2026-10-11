'use strict';
// A bounded byte-addressed fixture; no native/client/network execution.
const assert = require('node:assert/strict');
const { readString, readAutoBuffer, install } = require('../qr_capture.js');
const profile = require('../qr_capture_profile.json');

class Pointer {
  constructor(memory, offset) { this.memory = memory; this.offset = offset; }
  add(n) { return new Pointer(this.memory, this.offset + n); }
  readU8() { return this.memory.readUInt8(this.offset); }
  readU16() { return this.memory.readUInt16LE(this.offset); }
  readU64() { return this.memory.readBigUInt64LE(this.offset); }
  readPointer() { return this.add(Number(this.readU64()) - this.offset); }
  readByteArray(n) {
    assert.ok(this.offset + n <= this.memory.length);
    return Uint8Array.from(this.memory.subarray(this.offset, this.offset + n)).buffer;
  }
  equals(other) { return this.memory === other.memory && this.offset === other.offset; }
  toString() { return '0x' + this.offset.toString(16); }
  toInt32() { return this.offset | 0; }
}
const mem = Buffer.alloc(512);
const ptr = n => new Pointer(mem, n);
const bytes = value => Buffer.from(value);
mem[0] = 6;
Buffer.from([0, 255, 1]).copy(mem, 1);
assert.deepEqual(bytes(readString(ptr(0), 10)), Buffer.from([0, 255, 1]));
mem[0] = 1;
mem.writeBigUInt64LE(3n, 8);
mem.writeBigUInt64LE(100n, 16);
Buffer.from([5, 0, 6]).copy(mem, 100);
assert.deepEqual(bytes(readString(ptr(0), 10)), Buffer.from([5, 0, 6]));
mem.writeBigUInt64LE(2n ** 63n, 8);
assert.throws(() => readString(ptr(0), 10), /length/);
mem[0] = 48; // Invalid short representation (>22).
assert.throws(() => readString(ptr(0), 100), /length/);
mem.writeBigUInt64LE(100n, 40);
mem.writeBigUInt64LE(3n, 56);
assert.deepEqual(bytes(readAutoBuffer(ptr(40), 10)), Buffer.from([5, 0, 6]));
mem.writeBigUInt64LE(11n, 56);
assert.throws(() => readAutoBuffer(ptr(40), 10), /length/);

// Fake Frida surface tests hook installation, filtering, and fatal byte guards.
const hooks = new Map();
const sent = [];
const code = new Map(Object.values(profile.functions).map(fn => [fn.offset, fn.prefix]));
const moduleBase = {
  add(offset) {
    return { offset, readByteArray(n) { return Uint8Array.from(Buffer.from(code.get(offset), 'hex').subarray(0, n)).buffer; } };
  },
};
const runtime = {
  process: { arch: 'x64', platform: 'linux', pointerSize: 8, mainModule: { base: moduleBase } },
  interceptor: { attach(address, callbacks) { hooks.set(address.offset, callbacks); return { detach() {} }; } },
  send(meta, data) { sent.push({ meta, data: data ? bytes(data) : undefined }); },
};
install(profile, runtime);
assert.equal(hooks.size, 6);
assert.deepEqual(sent.shift().meta, { event: 'ready' });
function enter(name, args, threadId = 1) {
  const context = { threadId };
  const hook = hooks.get(profile.functions[name].offset);
  hook.onEnter.call(context, args);
  return () => { if (hook.onLeave) hook.onLeave.call(context, ptr(1)); };
}
// Arbitrary serialization and parsing cannot create QR records.
mem[0] = 6;
enter('serialize', [ptr(0), ptr(200)])();
enter('parse', [ptr(200), ptr(100), ptr(3)])();
assert.equal(sent.length, 0);
// A QR serializer must have both matching thread and task+0x88 identity.
const leaveQR = enter('qrEncode', [ptr(200)]);
enter('serialize', [ptr(0), ptr(336)], 2)();
assert.equal(sent.length, 0);
enter('serialize', [ptr(0), ptr(336)])();
leaveQR();
assert.equal(sent[0].meta.meta.kind, 'qr_request');
const id = sent[0].meta.meta.id;
// Match raw input bytes with the recorded QR body, not just packet length.
mem.writeBigUInt64LE(120n, 40);
mem.writeBigUInt64LE(2n, 56);
Buffer.from([9, 8]).copy(mem, 120);
mem.writeUInt16LE(14, 70);
mem.writeUInt16LE(12, 78);
Buffer.from([99, 99, 99]).copy(mem, 100);
enter('packMM', [ptr(0), ptr(502), ptr(40), ptr(100), ptr(3), ptr(70)])();
assert.equal(sent.length, 1);
Buffer.from([0, 255, 1]).copy(mem, 100);
enter('packMM', [ptr(0), ptr(502), ptr(40), ptr(100), ptr(3), ptr(70)])();
assert.deepEqual(sent[1].meta.meta, { kind: 'qr_frame', id, packet_branch: 'PackMMPkg', selector: 12, package_word: 14, request_value: 502 });
assert.deepEqual(sent[1].data, Buffer.from([9, 8]));
const leaveDecode = enter('qrDecode', [ptr(200)]);
enter('parse', [ptr(432), ptr(120), ptr(2)])();
leaveDecode();
assert.equal(sent[2].meta.meta.kind, 'qr_response');
assert.equal(sent[2].meta.meta.id, id);
assert.equal(sent[2].meta.meta.native_parse_ok, true);
// Check *all* function bytes before attaching any, then fail without payload.
let attached = 0;
runtime.interceptor.attach = () => { attached++; return { detach() {} }; };
code.set(profile.functions.parse.offset, '00'.repeat(16));
install(profile, runtime);
assert.equal(attached, 0);
assert.deepEqual(sent.at(-1).meta, { event: 'fatal', code: 'profile_or_memory' });
console.log('QR agent: binary representations, bounds, QR correlation, and pre-hook byte guards PASS');

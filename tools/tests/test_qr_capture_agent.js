'use strict';
// A bounded byte-addressed fixture; no native/client/network execution.
const assert = require('node:assert/strict');
const { readString, readAutoBuffer, readMMTLSString, installTransport, install } = require('../qr_capture.js');
const profile = require('../qr_capture_profile.json');

class Pointer {
  constructor(memory, offset) { this.memory = memory; this.offset = offset; }
  add(n) { return new Pointer(this.memory, this.offset + n); }
  readU8() { return this.memory.readUInt8(this.offset); }
  readU16() { return this.memory.readUInt16LE(this.offset); }
  readU32() { return this.memory.readUInt32LE(this.offset); }
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
const mem = Buffer.alloc(4096);
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
install({ ...profile, capture_material: false, capture_transport: false, capture_tls_material: false }, runtime);
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

// Ephemeral material is emitted only for a whole-body-matched QR Hybrid packet.
hooks.clear(); sent.length = 0;
install({ ...profile, capture_material: true, capture_transport: false, capture_tls_material: false }, runtime);
sent.shift();
const leaveMaterialQR = enter('qrEncode', [ptr(200)]);
enter('serialize', [ptr(0), ptr(336)])();
leaveMaterialQR();
mem.writeBigUInt64LE(1600n, 70 + 0xa8);
mem.writeUInt32LE(415, 1604);
mem[1608] = 6; Buffer.from([4, 1, 2]).copy(mem, 1609);
mem[1632] = 4; Buffer.from([8, 9]).copy(mem, 1633);
mem[1656] = 0;
mem[1680] = 6; Buffer.from([0x30, 1, 2]).copy(mem, 1681);
Buffer.from([99, 99, 99]).copy(mem, 100);
enter('packMM', [ptr(0), ptr(3), ptr(40), ptr(100), ptr(3), ptr(70)])();
assert.equal(sent.length, 1); // Matching length is insufficient to expose material.
Buffer.from([0, 255, 1]).copy(mem, 100);
enter('packMM', [ptr(0), ptr(3), ptr(40), ptr(100), ptr(3), ptr(70)])();
assert.equal(sent[1].meta.meta.kind, 'qr_material');
assert.equal(sent[1].meta.meta.id, sent[0].meta.meta.id);
const material = JSON.parse(sent[1].data.toString('ascii'));
assert.equal(material.curve_nid, 415);
assert.equal(material.peer_public_hex, '040102');
assert.equal(material.prior_key_hex, '');
assert.equal(material.private_der_hex, '300102');
assert.equal(material.params_hex.length, 0xf8 * 2);
assert.equal(sent[2].meta.meta.kind, 'qr_frame');

// MMTLS has a different, 32-byte string ABI. Bound private research inputs.
mem.writeBigUInt64LE(1800n, 1758); mem.writeBigUInt64LE(3n, 1766);
Buffer.from([1, 0, 255]).copy(mem, 1800);
assert.deepEqual(bytes(readMMTLSString(ptr(1750), 8)), Buffer.from([1, 0, 255]));
mem.writeBigUInt64LE(9n, 1766);
assert.throws(() => readMMTLSString(ptr(1750), 8), /length/);
mem.writeBigUInt64LE(0n, 1766);
assert.equal(readMMTLSString(ptr(1750), 8).byteLength, 0);

hooks.clear(); sent.length = 0;
install({ ...profile, capture_material: false, capture_transport: false, capture_tls_material: true }, runtime);
assert.equal(hooks.size, 9);
assert.deepEqual(sent.shift().meta, { event: 'ready' });
function mmString(offset, dataOffset, data) {
  mem.writeBigUInt64LE(BigInt(dataOffset), offset + 8);
  mem.writeBigUInt64LE(BigInt(data.length), offset + 16);
  data.copy(mem, dataOffset);
}
mmString(2000, 3000, Buffer.from([1, 2, 3]));
mmString(2100, 3100, Buffer.from('handshake key expansion', 'ascii'));
mmString(2200 + 0x40, 3200, Buffer.alloc(32, 7));
enter('tlsStageKey', [ptr(2200), ptr(2000), ptr(2100), ptr(0)])();
enter('tlsKeyPair', [ptr(0), ptr(3200), ptr(16), ptr(3200), ptr(16), ptr(3200), ptr(12), ptr(3200), ptr(12)])();
mem.writeBigUInt64LE(3000n, 2408); mem.writeBigUInt64LE(3n, 2416);
enter('tlsStaticKey', [ptr(0), ptr(2400)])();
assert.equal(sent.length, 0); // Only flush with a correlated QR response.
const leaveTLSQR = enter('qrEncode', [ptr(200)]);
enter('serialize', [ptr(0), ptr(336)])(); leaveTLSQR();
const leaveTLSDecode = enter('qrDecode', [ptr(200)]);
enter('parse', [ptr(432), ptr(120), ptr(2)])(); leaveTLSDecode();
assert.equal(sent[1].meta.meta.kind, 'qr_tls_material');
const tlsMaterial = JSON.parse(sent[1].data.toString('ascii'));
assert.equal(tlsMaterial.events.length, 3);
assert.equal(tlsMaterial.events[0].secret_hex, '010203');
assert.equal(tlsMaterial.events[0].label_hex, Buffer.from('handshake key expansion').toString('hex'));
assert.equal(tlsMaterial.events[0].handshake_hash_hex, '07'.repeat(32));
assert.equal(tlsMaterial.events[1].key0_hex, '07'.repeat(16));
assert.equal(tlsMaterial.events[1].nonce1_hex, '07'.repeat(12));
assert.equal(tlsMaterial.events[2].encoded_key_hex, '010203');
assert.equal(sent[2].meta.meta.kind, 'qr_response');

// Transport traces exclude unconnected descriptors and stop at the byte cap.
const transportHooks = new Map();
const transportRuntime = {
  module: { getGlobalExportByName(name) { return name; } },
  interceptor: { attach(name, callbacks) { transportHooks.set(name, callbacks); return { detach() {} }; } },
};
const trace = installTransport(transportRuntime, 8, 8);
function transport(name, args, result) {
  const context = {};
  transportHooks.get(name).onEnter.call(context, args);
  if (transportHooks.get(name).onLeave) transportHooks.get(name).onLeave.call(context, ptr(result));
}
transport('send', [ptr(10), ptr(100), ptr(3)], 3);
assert.deepEqual(trace.snapshot(), []);
mem.writeUInt16LE(2, 1900); mem[1902] = 0; mem[1903] = 80;
Buffer.from([127, 0, 0, 1]).copy(mem, 1904);
transport('connect', [ptr(10), ptr(1900), ptr(16)], 0);
transport('send', [ptr(10), ptr(100), ptr(3)], 2);
assert.equal(trace.snapshot()[1].data_hex, '00ff'); // Only actual transmitted bytes.
transport('recv', [ptr(10), ptr(120), ptr(2)], 2);
assert.equal(trace.snapshot()[2].data_hex, '0908');
transport('close', [ptr(10)], 0);
transport('send', [ptr(10), ptr(100), ptr(3)], 3);
assert.equal(trace.snapshot().length, 4);
transport('connect', [ptr(11), ptr(1900), ptr(16)], 0);
transport('send', [ptr(11), ptr(100), ptr(20)], 20);
assert.equal(trace.snapshot().length, 5); // Byte budget rejects the whole over-limit chunk.
// Check *all* function bytes before attaching any, then fail without payload.
let attached = 0;
runtime.interceptor.attach = () => { attached++; return { detach() {} }; };
code.set(profile.functions.parse.offset, '00'.repeat(16));
install(profile, runtime);
assert.equal(attached, 0);
assert.deepEqual(sent.at(-1).meta, { event: 'fatal', code: 'profile_or_memory' });
console.log('QR agent: binary representations, bounds, QR correlation, and pre-hook byte guards PASS');

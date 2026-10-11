'use strict';
// Fixed Linux 4.1.13.23 ABI recovered from this repo's ELF, not Android ABI.
// API reference: https://frida.re/docs/javascript-api/
function boundedLength(value, maximum) {
  const n = Number(value.toString());
  if (!Number.isSafeInteger(n) || n <= 0 || n > maximum) throw new Error('length');
  return n;
}

function readString(object, maximum) {
  const tag = object.readU8();
  if ((tag & 1) !== 0) {
    const length = boundedLength(object.add(8).readU64(), maximum);
    return object.add(16).readPointer().readByteArray(length);
  }
  const length = boundedLength(tag >>> 1, Math.min(maximum, 22));
  return object.add(1).readByteArray(length);
}

function readAutoBuffer(object, maximum) {
  const length = boundedLength(object.add(16).readU64(), maximum);
  return object.readPointer().readByteArray(length);
}

function hex(buffer) {
  return Array.from(new Uint8Array(buffer), b => b.toString(16).padStart(2, '0')).join('');
}

function install(profile, runtime) {
  const { process, interceptor, send } = runtime;
  const listeners = [];
  const encodes = new Map();
  const decodes = new Map();
  const tasks = new Map();
  const bodies = new Map();
  let disabled = false;
  let nextID = 0;
  let recordCount = 0;
  function fatal() {
    if (!disabled) {
      disabled = true;
      // Error messages/stacks can contain memory and must not be transmitted.
      send({ event: 'fatal', code: 'profile_or_memory' });
    }
  }
  function protect(callback) {
    return function (...args) {
      if (disabled) return;
      try { return callback.apply(this, args); } catch (_) { fatal(); }
    };
  }
  function emit(meta, data) {
    if (++recordCount > profile.max_records) throw new Error('record budget');
    send({ event: 'record', meta }, data);
  }
  function push(map, thread, value) {
    if (!map.has(thread)) map.set(thread, []);
    map.get(thread).push(value);
  }
  function top(map, thread) {
    const stack = map.get(thread);
    return stack && stack[stack.length - 1];
  }
  function pop(map, thread) {
    const stack = map.get(thread);
    if (stack) { stack.pop(); if (stack.length === 0) map.delete(thread); }
  }
  function hook(name, callbacks) {
    const guarded = {};
    for (const [key, fn] of Object.entries(callbacks)) guarded[key] = protect(fn);
    listeners.push(interceptor.attach(process.mainModule.base.add(profile.functions[name].offset), guarded));
  }
  try {
    if (process.arch !== 'x64' || process.platform !== 'linux' || process.pointerSize !== 8) throw new Error('architecture');
    // Validate every hook before modifying any code. ASLR handled by module base.
    for (const fn of Object.values(profile.functions)) {
      const actual = hex(process.mainModule.base.add(fn.offset).readByteArray(fn.prefix.length / 2));
      if (actual !== fn.prefix) throw new Error('profile');
    }
    hook('qrEncode', {
      onEnter(args) {
        if (nextID >= profile.max_requests) throw new Error('request budget');
        const task = {
          id: ++nextID, request: args[0].add(profile.task_request_offset),
          response: args[0].add(profile.task_response_offset),
        };
        tasks.set(args[0].toString(), task);
        push(encodes, this.threadId, task);
      },
      onLeave() { pop(encodes, this.threadId); },
    });
    hook('qrDecode', {
      onEnter(args) {
        const task = tasks.get(args[0].toString());
        // Unknown task => no capture, even on a known QR decode function.
        push(decodes, this.threadId, task);
      },
      onLeave() { pop(decodes, this.threadId); },
    });
    hook('serialize', {
      onEnter(args) {
        const task = top(encodes, this.threadId);
        if (task && args[1].equals(task.request)) { this.task = task; this.output = args[0]; }
      },
      onLeave() {
        if (!this.task) return;
        const data = readString(this.output, profile.max_bytes);
        bodies.set(hex(data), { id: this.task.id, length: data.byteLength });
        emit({ kind: 'qr_request', id: this.task.id }, data);
      },
    });
    hook('parse', {
      onEnter(args) {
        const task = top(decodes, this.threadId);
        if (!task || !args[0].equals(task.response)) return;
        const length = boundedLength(args[2].toInt32(), profile.max_bytes);
        this.task = task;
        this.data = args[1].readByteArray(length);
      },
      onLeave(result) {
        if (this.task) emit({ kind: 'qr_response', id: this.task.id, native_parse_ok: (result.toInt32() & 255) !== 0 }, this.data);
      },
    });
    for (const [name, branch] of [['packMM', 'PackMMPkg'], ['packWx', 'PackWxPkg']]) {
      hook(name, {
        onEnter(args) {
          // SysV: engine, internal value, OUT AutoBuffer, IN bytes, length, params.
          if (bodies.size === 0) return;
          const length = Number(args[4].toString());
          if (!Number.isSafeInteger(length) || !Array.from(bodies.values()).some(b => b.length === length)) return;
          const known = bodies.get(hex(args[3].readByteArray(length)));
          if (!known) return;
          this.output = args[2];
          this.meta = {
            kind: 'qr_frame', id: known.id, packet_branch: branch,
            selector: args[5].add(8).readU16(), package_word: args[5].readU16(),
            request_value: args[1].toInt32(),
          };
        },
        onLeave() {
          if (this.meta) emit(this.meta, readAutoBuffer(this.output, profile.max_bytes));
        },
      });
    }
    send({ event: 'ready' });
  } catch (_) {
    for (const listener of listeners) listener.detach();
    fatal();
  }
  return listeners;
}

if (typeof module !== 'undefined' && module.exports) {
  module.exports = { readString, readAutoBuffer, install };
} else {
  install(QR_PROFILE, { process: Process, interceptor: Interceptor, send });
}

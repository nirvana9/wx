00000000077c7f00: 55                           push     rbp
00000000077c7f01: 4889e5                       mov      rbp, rsp
00000000077c7f04: 4157                         push     r15
00000000077c7f06: 4156                         push     r14
00000000077c7f08: 4155                         push     r13
00000000077c7f0a: 4154                         push     r12
00000000077c7f0c: 53                           push     rbx
00000000077c7f0d: 4881ec88030000               sub      rsp, 0x388
00000000077c7f14: 4c898d28fdffff               mov      qword ptr [rbp - 0x2d8], r9
00000000077c7f1b: 4c898530fdffff               mov      qword ptr [rbp - 0x2d0], r8
00000000077c7f22: 48898d38fdffff               mov      qword ptr [rbp - 0x2c8], rcx
00000000077c7f29: 48899540fdffff               mov      qword ptr [rbp - 0x2c0], rdx
00000000077c7f30: 4889b5d8feffff               mov      qword ptr [rbp - 0x128], rsi
00000000077c7f37: 4889bd68ffffff               mov      qword ptr [rbp - 0x98], rdi
00000000077c7f3e: 6690                         nop
00000000077c7f40: 488d05e1375003               lea      rax, [rip + 0x35037e1]
00000000077c7f47: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c7f4a: 7c3e                         jl       0x77c7f8a
00000000077c7f4c: 488d05d9375003               lea      rax, [rip + 0x35037d9]
00000000077c7f53: 8b00                         mov      eax, dword ptr [rax]
00000000077c7f55: 89c1                         mov      ecx, eax
00000000077c7f57: f7d1                         not      ecx
00000000077c7f59: 0fafc8                       imul     ecx, eax
00000000077c7f5c: 83e101                       and      ecx, 1
00000000077c7f5f: 7429                         je       0x77c7f8a
00000000077c7f61: bf02000000                   mov      edi, 2
00000000077c7f66: e825ed9401                   call     0x9116c90
00000000077c7f6b: bf02000000                   mov      edi, 2
00000000077c7f70: e81bed9401                   call     0x9116c90
00000000077c7f75: ebc9                         jmp      0x77c7f40
00000000077c7f77: 660f1f840000000000           nop      word ptr [rax + rax]
00000000077c7f80: bf02000000                   mov      edi, 2
00000000077c7f85: e806ed9401                   call     0x9116c90
00000000077c7f8a: 4889e0                       mov      rax, rsp
00000000077c7f8d: 488d48f0                     lea      rcx, [rax - 0x10]
00000000077c7f91: 48898df0feffff               mov      qword ptr [rbp - 0x110], rcx
00000000077c7f98: 4889cc                       mov      rsp, rcx
00000000077c7f9b: 4889e1                       mov      rcx, rsp
00000000077c7f9e: 488d51f0                     lea      rdx, [rcx - 0x10]
00000000077c7fa2: 48895590                     mov      qword ptr [rbp - 0x70], rdx
00000000077c7fa6: 4889d4                       mov      rsp, rdx
00000000077c7fa9: 4889e2                       mov      rdx, rsp
00000000077c7fac: 488d5af0                     lea      rbx, [rdx - 0x10]
00000000077c7fb0: 4889dc                       mov      rsp, rbx
00000000077c7fb3: 4889e6                       mov      rsi, rsp
00000000077c7fb6: 488d7ef0                     lea      rdi, [rsi - 0x10]
00000000077c7fba: 4889bd48fdffff               mov      qword ptr [rbp - 0x2b8], rdi
00000000077c7fc1: 4889fc                       mov      rsp, rdi
00000000077c7fc4: 4889e7                       mov      rdi, rsp
00000000077c7fc7: 4c8d47f0                     lea      r8, [rdi - 0x10]
00000000077c7fcb: 4c898550fdffff               mov      qword ptr [rbp - 0x2b0], r8
00000000077c7fd2: 4c89c4                       mov      rsp, r8
00000000077c7fd5: 4989e0                       mov      r8, rsp
00000000077c7fd8: 4d8d48f0                     lea      r9, [r8 - 0x10]
00000000077c7fdc: 4c898d58fdffff               mov      qword ptr [rbp - 0x2a8], r9
00000000077c7fe3: 4c89cc                       mov      rsp, r9
00000000077c7fe6: 4989e1                       mov      r9, rsp
00000000077c7fe9: 4d8d51f0                     lea      r10, [r9 - 0x10]
00000000077c7fed: 4c899560fdffff               mov      qword ptr [rbp - 0x2a0], r10
00000000077c7ff4: 4c89d4                       mov      rsp, r10
00000000077c7ff7: 4989e7                       mov      r15, rsp
00000000077c7ffa: 4981c770ffffff               add      r15, -0x90
00000000077c8001: 4c89fc                       mov      rsp, r15
00000000077c8004: 4989e6                       mov      r14, rsp
00000000077c8007: 4983c6e0                     add      r14, -0x20
00000000077c800b: 4c89f4                       mov      rsp, r14
00000000077c800e: 4989e2                       mov      r10, rsp
00000000077c8011: 4983c2f0                     add      r10, -0x10
00000000077c8015: 4c8955d0                     mov      qword ptr [rbp - 0x30], r10
00000000077c8019: 4c89d4                       mov      rsp, r10
00000000077c801c: 4989e2                       mov      r10, rsp
00000000077c801f: 4983c2f0                     add      r10, -0x10
00000000077c8023: 4c8955c8                     mov      qword ptr [rbp - 0x38], r10
00000000077c8027: 4c89d4                       mov      rsp, r10
00000000077c802a: 4989e4                       mov      r12, rsp
00000000077c802d: 4983c4f0                     add      r12, -0x10
00000000077c8031: 4c89e4                       mov      rsp, r12
00000000077c8034: 4989e2                       mov      r10, rsp
00000000077c8037: 4983c2e0                     add      r10, -0x20
00000000077c803b: 4c8955c0                     mov      qword ptr [rbp - 0x40], r10
00000000077c803f: 4c89d4                       mov      rsp, r10
00000000077c8042: 4989e2                       mov      r10, rsp
00000000077c8045: 4983c2e0                     add      r10, -0x20
00000000077c8049: 4c895598                     mov      qword ptr [rbp - 0x68], r10
00000000077c804d: 4c89d4                       mov      rsp, r10
00000000077c8050: 4989e2                       mov      r10, rsp
00000000077c8053: 4983c2e0                     add      r10, -0x20
00000000077c8057: 4c899558ffffff               mov      qword ptr [rbp - 0xa8], r10
00000000077c805e: 4c89d4                       mov      rsp, r10
00000000077c8061: 4989e2                       mov      r10, rsp
00000000077c8064: 4983c2e0                     add      r10, -0x20
00000000077c8068: 4c899530ffffff               mov      qword ptr [rbp - 0xd0], r10
00000000077c806f: 4c89d4                       mov      rsp, r10
00000000077c8072: 4989e2                       mov      r10, rsp
00000000077c8075: 4983c2f0                     add      r10, -0x10
00000000077c8079: 4c8995f0fdffff               mov      qword ptr [rbp - 0x210], r10
00000000077c8080: 4c89d4                       mov      rsp, r10
00000000077c8083: 4989e5                       mov      r13, rsp
00000000077c8086: 4983c5e0                     add      r13, -0x20
00000000077c808a: 4c89ec                       mov      rsp, r13
00000000077c808d: 4989e2                       mov      r10, rsp
00000000077c8090: 4983c2e0                     add      r10, -0x20
00000000077c8094: 4c895580                     mov      qword ptr [rbp - 0x80], r10
00000000077c8098: 4c89d4                       mov      rsp, r10
00000000077c809b: 4989e2                       mov      r10, rsp
00000000077c809e: 4983c2e0                     add      r10, -0x20
00000000077c80a2: 4c8955a0                     mov      qword ptr [rbp - 0x60], r10
00000000077c80a6: 4c89d4                       mov      rsp, r10
00000000077c80a9: 4989e2                       mov      r10, rsp
00000000077c80ac: 4983c2e0                     add      r10, -0x20
00000000077c80b0: 4c899538ffffff               mov      qword ptr [rbp - 0xc8], r10
00000000077c80b7: 4c89d4                       mov      rsp, r10
00000000077c80ba: 4989e2                       mov      r10, rsp
00000000077c80bd: 4983c2e0                     add      r10, -0x20
00000000077c80c1: 4c899548ffffff               mov      qword ptr [rbp - 0xb8], r10
00000000077c80c8: 4c89d4                       mov      rsp, r10
00000000077c80cb: 4989e2                       mov      r10, rsp
00000000077c80ce: 4981c270ffffff               add      r10, -0x90
00000000077c80d5: 4c899540ffffff               mov      qword ptr [rbp - 0xc0], r10
00000000077c80dc: 4c89d4                       mov      rsp, r10
00000000077c80df: 4989e2                       mov      r10, rsp
00000000077c80e2: 4983c2e0                     add      r10, -0x20
00000000077c80e6: 4c899500feffff               mov      qword ptr [rbp - 0x200], r10
00000000077c80ed: 4c89d4                       mov      rsp, r10
00000000077c80f0: 4989e2                       mov      r10, rsp
00000000077c80f3: 4983c2b0                     add      r10, -0x50
00000000077c80f7: 4c899570fdffff               mov      qword ptr [rbp - 0x290], r10
00000000077c80fe: 4c89d4                       mov      rsp, r10
00000000077c8101: 4989e2                       mov      r10, rsp
00000000077c8104: 4983c2e0                     add      r10, -0x20
00000000077c8108: 4c8955a8                     mov      qword ptr [rbp - 0x58], r10
00000000077c810c: 4c89d4                       mov      rsp, r10
00000000077c810f: 4989e2                       mov      r10, rsp
00000000077c8112: 4983c2f0                     add      r10, -0x10
00000000077c8116: 4c899568fdffff               mov      qword ptr [rbp - 0x298], r10
00000000077c811d: 4c89d4                       mov      rsp, r10
00000000077c8120: 4989e2                       mov      r10, rsp
00000000077c8123: 4983c2c0                     add      r10, -0x40
00000000077c8127: 4c899578ffffff               mov      qword ptr [rbp - 0x88], r10
00000000077c812e: 4c89d4                       mov      rsp, r10
00000000077c8131: 4989e2                       mov      r10, rsp
00000000077c8134: 4983c2f0                     add      r10, -0x10
00000000077c8138: 4c8995f8feffff               mov      qword ptr [rbp - 0x108], r10
00000000077c813f: 4c89d4                       mov      rsp, r10
00000000077c8142: 4989e2                       mov      r10, rsp
00000000077c8145: 4983c2f0                     add      r10, -0x10
00000000077c8149: 4c8995d0fdffff               mov      qword ptr [rbp - 0x230], r10
00000000077c8150: 4c89d4                       mov      rsp, r10
00000000077c8153: 4989e2                       mov      r10, rsp
00000000077c8156: 4981c270ffffff               add      r10, -0x90
00000000077c815d: 4c899500ffffff               mov      qword ptr [rbp - 0x100], r10
00000000077c8164: 4c89d4                       mov      rsp, r10
00000000077c8167: 4989e2                       mov      r10, rsp
00000000077c816a: 4983c2e0                     add      r10, -0x20
00000000077c816e: 4c899520ffffff               mov      qword ptr [rbp - 0xe0], r10
00000000077c8175: 4c89d4                       mov      rsp, r10
00000000077c8178: 4989e2                       mov      r10, rsp
00000000077c817b: 4983c2b0                     add      r10, -0x50
00000000077c817f: 4c899588fdffff               mov      qword ptr [rbp - 0x278], r10
00000000077c8186: 4c89d4                       mov      rsp, r10
00000000077c8189: 4989e2                       mov      r10, rsp
00000000077c818c: 4983c2b0                     add      r10, -0x50
00000000077c8190: 4c899590fdffff               mov      qword ptr [rbp - 0x270], r10
00000000077c8197: 4c89d4                       mov      rsp, r10
00000000077c819a: 4989e2                       mov      r10, rsp
00000000077c819d: 4983c2e0                     add      r10, -0x20
00000000077c81a1: 4c899528ffffff               mov      qword ptr [rbp - 0xd8], r10
00000000077c81a8: 4c89d4                       mov      rsp, r10
00000000077c81ab: 4989e2                       mov      r10, rsp
00000000077c81ae: 4983c2b0                     add      r10, -0x50
00000000077c81b2: 4c899598fdffff               mov      qword ptr [rbp - 0x268], r10
00000000077c81b9: 4c89d4                       mov      rsp, r10
00000000077c81bc: 4989e2                       mov      r10, rsp
00000000077c81bf: 4983c2f0                     add      r10, -0x10
00000000077c81c3: 4c899508feffff               mov      qword ptr [rbp - 0x1f8], r10
00000000077c81ca: 4c89d4                       mov      rsp, r10
00000000077c81cd: 4989e2                       mov      r10, rsp
00000000077c81d0: 4981c270ffffff               add      r10, -0x90
00000000077c81d7: 4c8995e8fdffff               mov      qword ptr [rbp - 0x218], r10
00000000077c81de: 4c89d4                       mov      rsp, r10
00000000077c81e1: 4989e2                       mov      r10, rsp
00000000077c81e4: 4983c2e0                     add      r10, -0x20
00000000077c81e8: 4c899538feffff               mov      qword ptr [rbp - 0x1c8], r10
00000000077c81ef: 4c89d4                       mov      rsp, r10
00000000077c81f2: 4989e2                       mov      r10, rsp
00000000077c81f5: 4983c2b0                     add      r10, -0x50
00000000077c81f9: 4c899510feffff               mov      qword ptr [rbp - 0x1f0], r10
00000000077c8200: 4c89d4                       mov      rsp, r10
00000000077c8203: 4989e2                       mov      r10, rsp
00000000077c8206: 4983c2b0                     add      r10, -0x50
00000000077c820a: 4c8995a8fdffff               mov      qword ptr [rbp - 0x258], r10
00000000077c8211: 4c89d4                       mov      rsp, r10
00000000077c8214: 4989e2                       mov      r10, rsp
00000000077c8217: 4983c2e0                     add      r10, -0x20
00000000077c821b: 4c899550ffffff               mov      qword ptr [rbp - 0xb0], r10
00000000077c8222: 4c89d4                       mov      rsp, r10
00000000077c8225: 4989e2                       mov      r10, rsp
00000000077c8228: 4983c2b0                     add      r10, -0x50
00000000077c822c: 4c8955b8                     mov      qword ptr [rbp - 0x48], r10
00000000077c8230: 4c89d4                       mov      rsp, r10
00000000077c8233: 4989e2                       mov      r10, rsp
00000000077c8236: 4983c2e0                     add      r10, -0x20
00000000077c823a: 4c8995b0fdffff               mov      qword ptr [rbp - 0x250], r10
00000000077c8241: 4c89d4                       mov      rsp, r10
00000000077c8244: 4989e2                       mov      r10, rsp
00000000077c8247: 4983c2e0                     add      r10, -0x20
00000000077c824b: 4c895588                     mov      qword ptr [rbp - 0x78], r10
00000000077c824f: 4c89d4                       mov      rsp, r10
00000000077c8252: 4989e2                       mov      r10, rsp
00000000077c8255: 4983c2d0                     add      r10, -0x30
00000000077c8259: 4c899570ffffff               mov      qword ptr [rbp - 0x90], r10
00000000077c8260: 4c89d4                       mov      rsp, r10
00000000077c8263: 4989e2                       mov      r10, rsp
00000000077c8266: 4983c2d0                     add      r10, -0x30
00000000077c826a: 4c899560ffffff               mov      qword ptr [rbp - 0xa0], r10
00000000077c8271: 4c89d4                       mov      rsp, r10
00000000077c8274: 4989e2                       mov      r10, rsp
00000000077c8277: 4983c2d0                     add      r10, -0x30
00000000077c827b: 4c899518feffff               mov      qword ptr [rbp - 0x1e8], r10
00000000077c8282: 4c89d4                       mov      rsp, r10
00000000077c8285: 4989e2                       mov      r10, rsp
00000000077c8288: 4981c270ffffff               add      r10, -0x90
00000000077c828f: 4c899530feffff               mov      qword ptr [rbp - 0x1d0], r10
00000000077c8296: 4c89d4                       mov      rsp, r10
00000000077c8299: 4989e2                       mov      r10, rsp
00000000077c829c: 4983c2e0                     add      r10, -0x20
00000000077c82a0: 4c899528feffff               mov      qword ptr [rbp - 0x1d8], r10
00000000077c82a7: 4c89d4                       mov      rsp, r10
00000000077c82aa: 4989e2                       mov      r10, rsp
00000000077c82ad: 4983c2b0                     add      r10, -0x50
00000000077c82b1: 4c8995f8fdffff               mov      qword ptr [rbp - 0x208], r10
00000000077c82b8: 4c89d4                       mov      rsp, r10
00000000077c82bb: 4989e2                       mov      r10, rsp
00000000077c82be: 4983c2b0                     add      r10, -0x50
00000000077c82c2: 4c899518ffffff               mov      qword ptr [rbp - 0xe8], r10
00000000077c82c9: 4c89d4                       mov      rsp, r10
00000000077c82cc: 4989e2                       mov      r10, rsp
00000000077c82cf: 4983c2b0                     add      r10, -0x50
00000000077c82d3: 4c8995d8fdffff               mov      qword ptr [rbp - 0x228], r10
00000000077c82da: 4c89d4                       mov      rsp, r10
00000000077c82dd: 4989e2                       mov      r10, rsp
00000000077c82e0: 4983c2d0                     add      r10, -0x30
00000000077c82e4: 4c899520feffff               mov      qword ptr [rbp - 0x1e0], r10
00000000077c82eb: 4c89d4                       mov      rsp, r10
00000000077c82ee: 4989e2                       mov      r10, rsp
00000000077c82f1: 4983c2d0                     add      r10, -0x30
00000000077c82f5: 4c8995e8feffff               mov      qword ptr [rbp - 0x118], r10
00000000077c82fc: 4c89d4                       mov      rsp, r10
00000000077c82ff: 4989e2                       mov      r10, rsp
00000000077c8302: 4981c270ffffff               add      r10, -0x90
00000000077c8309: 4c899510ffffff               mov      qword ptr [rbp - 0xf0], r10
00000000077c8310: 4c89d4                       mov      rsp, r10
00000000077c8313: 4989e2                       mov      r10, rsp
00000000077c8316: 4983c2e0                     add      r10, -0x20
00000000077c831a: 4c8955b0                     mov      qword ptr [rbp - 0x50], r10
00000000077c831e: 4c89d4                       mov      rsp, r10
00000000077c8321: 4989e2                       mov      r10, rsp
00000000077c8324: 4983c2b0                     add      r10, -0x50
00000000077c8328: 4c899578fdffff               mov      qword ptr [rbp - 0x288], r10
00000000077c832f: 4c89d4                       mov      rsp, r10
00000000077c8332: 4989e2                       mov      r10, rsp
00000000077c8335: 4983c2b0                     add      r10, -0x50
00000000077c8339: 4c899580fdffff               mov      qword ptr [rbp - 0x280], r10
00000000077c8340: 4c89d4                       mov      rsp, r10
00000000077c8343: 4989e2                       mov      r10, rsp
00000000077c8346: 4983c2d0                     add      r10, -0x30
00000000077c834a: 4c8995e0feffff               mov      qword ptr [rbp - 0x120], r10
00000000077c8351: 4c89d4                       mov      rsp, r10
00000000077c8354: 4989e2                       mov      r10, rsp
00000000077c8357: 4983c2d0                     add      r10, -0x30
00000000077c835b: 4c8995e0fdffff               mov      qword ptr [rbp - 0x220], r10
00000000077c8362: 4c89d4                       mov      rsp, r10
00000000077c8365: 4989e2                       mov      r10, rsp
00000000077c8368: 4981c270ffffff               add      r10, -0x90
00000000077c836f: 4c8995a0fdffff               mov      qword ptr [rbp - 0x260], r10
00000000077c8376: 4c89d4                       mov      rsp, r10
00000000077c8379: 4989e2                       mov      r10, rsp
00000000077c837c: 4983c2e0                     add      r10, -0x20
00000000077c8380: 4c899508ffffff               mov      qword ptr [rbp - 0xf8], r10
00000000077c8387: 4c89d4                       mov      rsp, r10
00000000077c838a: 4c8b9540fdffff               mov      r10, qword ptr [rbp - 0x2c0]
00000000077c8391: 4c8950f0                     mov      qword ptr [rax - 0x10], r10
00000000077c8395: 488b8538fdffff               mov      rax, qword ptr [rbp - 0x2c8]
00000000077c839c: 488941f0                     mov      qword ptr [rcx - 0x10], rax
00000000077c83a0: 488b8530fdffff               mov      rax, qword ptr [rbp - 0x2d0]
00000000077c83a7: 488942f0                     mov      qword ptr [rdx - 0x10], rax
00000000077c83ab: 488b8528fdffff               mov      rax, qword ptr [rbp - 0x2d8]
00000000077c83b2: 488946f0                     mov      qword ptr [rsi - 0x10], rax
00000000077c83b6: 488b4510                     mov      rax, qword ptr [rbp + 0x10]
00000000077c83ba: 488947f0                     mov      qword ptr [rdi - 0x10], rax
00000000077c83be: 488b4518                     mov      rax, qword ptr [rbp + 0x18]
00000000077c83c2: 498940f0                     mov      qword ptr [r8 - 0x10], rax
00000000077c83c6: 0fb64520                     movzx    eax, byte ptr [rbp + 0x20]
00000000077c83ca: 418841f0                     mov      byte ptr [r9 - 0x10], al
00000000077c83ce: bf02000000                   mov      edi, 2
00000000077c83d3: e8b8e89401                   call     0x9116c90
00000000077c83d8: 488d0d49335003               lea      rcx, [rip + 0x3503349]
00000000077c83df: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077c83e2: 7c19                         jl       0x77c83fd
00000000077c83e4: 488d0d41335003               lea      rcx, [rip + 0x3503341]
00000000077c83eb: 8b09                         mov      ecx, dword ptr [rcx]
00000000077c83ed: 89ca                         mov      edx, ecx
00000000077c83ef: f7d2                         not      edx
00000000077c83f1: 0fafd1                       imul     edx, ecx
00000000077c83f4: 83e201                       and      edx, 1
00000000077c83f7: 0f8583fbffff                 jne      0x77c7f80
00000000077c83fd: 85c0                         test     eax, eax
00000000077c83ff: 0f84d2010000                 je       0x77c85d7
00000000077c8405: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000077c8410: 4c89f7                       mov      rdi, r14
00000000077c8413: e8b8a5beff                   call     0x73b29d0
00000000077c8418: 488d0509335003               lea      rax, [rip + 0x3503309]
00000000077c841f: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c8422: 7c1f                         jl       0x77c8443
00000000077c8424: 488d0501335003               lea      rax, [rip + 0x3503301]
00000000077c842b: 8b00                         mov      eax, dword ptr [rax]
00000000077c842d: 89c1                         mov      ecx, eax
00000000077c842f: f7d1                         not      ecx
00000000077c8431: 0fafc8                       imul     ecx, eax
00000000077c8434: 83e101                       and      ecx, 1
00000000077c8437: 740a                         je       0x77c8443
00000000077c8439: 4c89f7                       mov      rdi, r14
00000000077c843c: e88fa5beff                   call     0x73b29d0
00000000077c8441: ebcd                         jmp      0x77c8410
00000000077c8443: 41f60601                     test     byte ptr [r14], 1
00000000077c8447: 7406                         je       0x77c844f
00000000077c8449: 498b5610                     mov      rdx, qword ptr [r14 + 0x10]
00000000077c844d: eb04                         jmp      0x77c8453
00000000077c844f: 498d5601                     lea      rdx, [r14 + 1]
00000000077c8453: 488d0d328980f9               lea      rcx, [rip - 0x67f76ce]
00000000077c845a: 4c8d05590867f9               lea      r8, [rip - 0x698f7a7]
00000000077c8461: 4c89ff                       mov      rdi, r15
00000000077c8464: be02000000                   mov      esi, 2
00000000077c8469: 41b944030000                 mov      r9d, 0x344
00000000077c846f: 6a00                         push     0
00000000077c8471: 6a00                         push     0
00000000077c8473: e828919401                   call     0x91115a0
00000000077c8478: 4883c410                     add      rsp, 0x10
00000000077c847c: 0f57c0                       xorps    xmm0, xmm0
00000000077c847f: 0f2985b0feffff               movaps   xmmword ptr [rbp - 0x150], xmm0
00000000077c8486: 0f2985a0feffff               movaps   xmmword ptr [rbp - 0x160], xmm0
00000000077c848d: 0f298590feffff               movaps   xmmword ptr [rbp - 0x170], xmm0
00000000077c8494: 0f298580feffff               movaps   xmmword ptr [rbp - 0x180], xmm0
00000000077c849b: 0f298570feffff               movaps   xmmword ptr [rbp - 0x190], xmm0
00000000077c84a2: 0f298560feffff               movaps   xmmword ptr [rbp - 0x1a0], xmm0
00000000077c84a9: 0f298550feffff               movaps   xmmword ptr [rbp - 0x1b0], xmm0
00000000077c84b0: 0f298540feffff               movaps   xmmword ptr [rbp - 0x1c0], xmm0
00000000077c84b7: 488d35fc0767f9               lea      rsi, [rip - 0x698f804]
00000000077c84be: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077c84c5: 4c89ff                       mov      rdi, r15
00000000077c84c8: e823949401                   call     0x91118f0
00000000077c84cd: 488d0554325003               lea      rax, [rip + 0x3503254]
00000000077c84d4: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c84d7: 0f8c8c000000                 jl       0x77c8569
00000000077c84dd: 488d0548325003               lea      rax, [rip + 0x3503248]
00000000077c84e4: 8b00                         mov      eax, dword ptr [rax]
00000000077c84e6: 89c1                         mov      ecx, eax
00000000077c84e8: f7d1                         not      ecx
00000000077c84ea: 0fafc8                       imul     ecx, eax
00000000077c84ed: 83e101                       and      ecx, 1
00000000077c84f0: 0f85ab000000                 jne      0x77c85a1
00000000077c84f6: eb71                         jmp      0x77c8569
00000000077c84f8: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077c84fc: 488901                       mov      qword ptr [rcx], rax
00000000077c84ff: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c8503: 8910                         mov      dword ptr [rax], edx
00000000077c8505: 4c89ff                       mov      rdi, r15
00000000077c8508: e823919401                   call     0x9111630
00000000077c850d: eb11                         jmp      0x77c8520
00000000077c850f: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077c8513: 488901                       mov      qword ptr [rcx], rax
00000000077c8516: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c851a: 8910                         mov      dword ptr [rax], edx
00000000077c851c: 0f1f4000                     nop      dword ptr [rax]
00000000077c8520: 41f60601                     test     byte ptr [r14], 1
00000000077c8524: 7409                         je       0x77c852f
00000000077c8526: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077c852a: e8111cd4fc                   call     0x450a140
00000000077c852f: 488d05f2315003               lea      rax, [rip + 0x35031f2]
00000000077c8536: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c8539: 0f8ca5030000                 jl       0x77c88e4
00000000077c853f: 488d05e6315003               lea      rax, [rip + 0x35031e6]
00000000077c8546: 8b00                         mov      eax, dword ptr [rax]
00000000077c8548: 89c1                         mov      ecx, eax
00000000077c854a: f7d1                         not      ecx
00000000077c854c: 0fafc8                       imul     ecx, eax
00000000077c854f: 83e101                       and      ecx, 1
00000000077c8552: 0f848c030000                 je       0x77c88e4
00000000077c8558: 41f60601                     test     byte ptr [r14], 1
00000000077c855c: 74c2                         je       0x77c8520
00000000077c855e: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077c8562: e8d91bd4fc                   call     0x450a140
00000000077c8567: ebb7                         jmp      0x77c8520
00000000077c8569: 4c89ff                       mov      rdi, r15
00000000077c856c: e8bf909401                   call     0x9111630
00000000077c8571: 41f60601                     test     byte ptr [r14], 1
00000000077c8575: 7409                         je       0x77c8580
00000000077c8577: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077c857b: e8c01bd4fc                   call     0x450a140
00000000077c8580: 488d05a1315003               lea      rax, [rip + 0x35031a1]
00000000077c8587: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c858a: 7c4b                         jl       0x77c85d7
00000000077c858c: 488d0599315003               lea      rax, [rip + 0x3503199]
00000000077c8593: 8b00                         mov      eax, dword ptr [rax]
00000000077c8595: 89c1                         mov      ecx, eax
00000000077c8597: f7d1                         not      ecx
00000000077c8599: 0fafc8                       imul     ecx, eax
00000000077c859c: 83e101                       and      ecx, 1
00000000077c859f: 7436                         je       0x77c85d7
00000000077c85a1: 4c89ff                       mov      rdi, r15
00000000077c85a4: e887909401                   call     0x9111630
00000000077c85a9: 41f60601                     test     byte ptr [r14], 1
00000000077c85ad: 74ba                         je       0x77c8569
00000000077c85af: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077c85b3: e8881bd4fc                   call     0x450a140
00000000077c85b8: ebaf                         jmp      0x77c8569
00000000077c85ba: 660f1f440000                 nop      word ptr [rax + rax]
00000000077c85c0: 488b7dc0                     mov      rdi, qword ptr [rbp - 0x40]
00000000077c85c4: 0f2805d51059f9               movaps   xmm0, xmmword ptr [rip - 0x6a6ef2b]
00000000077c85cb: 0f114710                     movups   xmmword ptr [rdi + 0x10], xmm0
00000000077c85cf: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077c85d2: e8d92f5100                   call     0x7cdb5b0
00000000077c85d7: e8043f87fe                   call     0x603c4e0
00000000077c85dc: 31c9                         xor      ecx, ecx
00000000077c85de: 8688c8020000                 xchg     byte ptr [rax + 0x2c8], cl
00000000077c85e4: 488b85d8feffff               mov      rax, qword ptr [rbp - 0x128]
00000000077c85eb: 488bb080020000               mov      rsi, qword ptr [rax + 0x280]
00000000077c85f2: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077c85f6: 488b10                       mov      rdx, qword ptr [rax]
00000000077c85f9: 4c89e7                       mov      rdi, r12
00000000077c85fc: e8efc10300                   call     0x78047f0
00000000077c8601: 4d8b742408                   mov      r14, qword ptr [r12 + 8]
00000000077c8606: 4d85f6                       test     r14, r14
00000000077c8609: 7423                         je       0x77c862e
00000000077c860b: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077c8612: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077c8618: 4885c0                       test     rax, rax
00000000077c861b: 7511                         jne      0x77c862e
00000000077c861d: 498b06                       mov      rax, qword ptr [r14]
00000000077c8620: 4c89f7                       mov      rdi, r14
00000000077c8623: ff5010                       call     qword ptr [rax + 0x10]
00000000077c8626: 4c89f7                       mov      rdi, r14
00000000077c8629: e8a2ebd6fc                   call     0x45371d0
00000000077c862e: 488b7dc0                     mov      rdi, qword ptr [rbp - 0x40]
00000000077c8632: 0f2805671059f9               movaps   xmm0, xmmword ptr [rip - 0x6a6ef99]
00000000077c8639: 0f114710                     movups   xmmword ptr [rdi + 0x10], xmm0
00000000077c863d: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077c8640: e86b2f5100                   call     0x7cdb5b0
00000000077c8645: 488d05dc305003               lea      rax, [rip + 0x35030dc]
00000000077c864c: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c864f: 7c79                         jl       0x77c86ca
00000000077c8651: 488d05d4305003               lea      rax, [rip + 0x35030d4]
00000000077c8658: 8b00                         mov      eax, dword ptr [rax]
00000000077c865a: 89c1                         mov      ecx, eax
00000000077c865c: f7d1                         not      ecx
00000000077c865e: 0fafc8                       imul     ecx, eax
00000000077c8661: 83e101                       and      ecx, 1
00000000077c8664: 7464                         je       0x77c86ca
00000000077c8666: e8753e87fe                   call     0x603c4e0
00000000077c866b: 31c9                         xor      ecx, ecx
00000000077c866d: 8688c8020000                 xchg     byte ptr [rax + 0x2c8], cl
00000000077c8673: 488b85d8feffff               mov      rax, qword ptr [rbp - 0x128]
00000000077c867a: 488bb080020000               mov      rsi, qword ptr [rax + 0x280]
00000000077c8681: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077c8685: 488b10                       mov      rdx, qword ptr [rax]
00000000077c8688: 4c89e7                       mov      rdi, r12
00000000077c868b: e860c10300                   call     0x78047f0
00000000077c8690: 4d8b742408                   mov      r14, qword ptr [r12 + 8]
00000000077c8695: 4d85f6                       test     r14, r14
00000000077c8698: 0f8422ffffff                 je       0x77c85c0
00000000077c869e: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077c86a5: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077c86ab: 4885c0                       test     rax, rax
00000000077c86ae: 0f850cffffff                 jne      0x77c85c0
00000000077c86b4: 498b06                       mov      rax, qword ptr [r14]
00000000077c86b7: 4c89f7                       mov      rdi, r14
00000000077c86ba: ff5010                       call     qword ptr [rax + 0x10]
00000000077c86bd: 4c89f7                       mov      rdi, r14
00000000077c86c0: e80bebd6fc                   call     0x45371d0
00000000077c86c5: e9f6feffff                   jmp      0x77c85c0
00000000077c86ca: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c86ce: 80481c01                     or       byte ptr [rax + 0x1c], 1
00000000077c86d2: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077c86d6: 4d85f6                       test     r14, r14
00000000077c86d9: 751d                         jne      0x77c86f8
00000000077c86db: bf38000000                   mov      edi, 0x38
00000000077c86e0: e8bb56ea02                   call     0xa66dda0
00000000077c86e5: 4989c6                       mov      r14, rax
00000000077c86e8: 4889c7                       mov      rdi, rax
00000000077c86eb: e890d25000                   call     0x7cd5980
00000000077c86f0: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c86f4: 4c897008                     mov      qword ptr [rax + 8], r14
00000000077c86f8: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077c86fc: 4c8b38                       mov      r15, qword ptr [rax]
00000000077c86ff: 41834e3404                   or       dword ptr [r14 + 0x34], 4
00000000077c8704: 498b7e18                     mov      rdi, qword ptr [r14 + 0x18]
00000000077c8708: 483b3df1ad3203               cmp      rdi, qword ptr [rip + 0x332adf1] ; reloc 0xad176f0
00000000077c870f: 751f                         jne      0x77c8730
00000000077c8711: bf18000000                   mov      edi, 0x18
00000000077c8716: e88556ea02                   call     0xa66dda0
00000000077c871b: 4889c7                       mov      rdi, rax
00000000077c871e: 0f57c0                       xorps    xmm0, xmm0
00000000077c8721: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c8724: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c872c: 49894618                     mov      qword ptr [r14 + 0x18], rax
00000000077c8730: 4c89fe                       mov      rsi, r15
00000000077c8733: e87856d4fc                   call     0x450ddb0
00000000077c8738: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c873c: 80481c01                     or       byte ptr [rax + 0x1c], 1
00000000077c8740: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077c8744: 4d85f6                       test     r14, r14
00000000077c8747: 751d                         jne      0x77c8766
00000000077c8749: bf38000000                   mov      edi, 0x38
00000000077c874e: e84d56ea02                   call     0xa66dda0
00000000077c8753: 4989c6                       mov      r14, rax
00000000077c8756: 4889c7                       mov      rdi, rax
00000000077c8759: e822d25000                   call     0x7cd5980
00000000077c875e: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8762: 4c897008                     mov      qword ptr [rax + 8], r14
00000000077c8766: 4c8b3b                       mov      r15, qword ptr [rbx]
00000000077c8769: 41834e3408                   or       dword ptr [r14 + 0x34], 8
00000000077c876e: 498b7e20                     mov      rdi, qword ptr [r14 + 0x20]
00000000077c8772: 483b3d87ad3203               cmp      rdi, qword ptr [rip + 0x332ad87] ; reloc 0xad176f0
00000000077c8779: 751f                         jne      0x77c879a
00000000077c877b: bf18000000                   mov      edi, 0x18
00000000077c8780: e81b56ea02                   call     0xa66dda0
00000000077c8785: 4889c7                       mov      rdi, rax
00000000077c8788: 0f57c0                       xorps    xmm0, xmm0
00000000077c878b: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c878e: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c8796: 49894620                     mov      qword ptr [r14 + 0x20], rax
00000000077c879a: 4c89fe                       mov      rsi, r15
00000000077c879d: e80e56d4fc                   call     0x450ddb0
00000000077c87a2: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c87a6: 80481c01                     or       byte ptr [rax + 0x1c], 1
00000000077c87aa: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077c87ae: 4d85f6                       test     r14, r14
00000000077c87b1: 751d                         jne      0x77c87d0
00000000077c87b3: bf38000000                   mov      edi, 0x38
00000000077c87b8: e8e355ea02                   call     0xa66dda0
00000000077c87bd: 4989c6                       mov      r14, rax
00000000077c87c0: 4889c7                       mov      rdi, rax
00000000077c87c3: e8b8d15000                   call     0x7cd5980
00000000077c87c8: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c87cc: 4c897008                     mov      qword ptr [rax + 8], r14
00000000077c87d0: 488b8548fdffff               mov      rax, qword ptr [rbp - 0x2b8]
00000000077c87d7: 4c8b38                       mov      r15, qword ptr [rax]
00000000077c87da: 41834e3410                   or       dword ptr [r14 + 0x34], 0x10
00000000077c87df: 498b7e28                     mov      rdi, qword ptr [r14 + 0x28]
00000000077c87e3: 483b3d16ad3203               cmp      rdi, qword ptr [rip + 0x332ad16] ; reloc 0xad176f0
00000000077c87ea: 751f                         jne      0x77c880b
00000000077c87ec: bf18000000                   mov      edi, 0x18
00000000077c87f1: e8aa55ea02                   call     0xa66dda0
00000000077c87f6: 4889c7                       mov      rdi, rax
00000000077c87f9: 0f57c0                       xorps    xmm0, xmm0
00000000077c87fc: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c87ff: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c8807: 49894628                     mov      qword ptr [r14 + 0x28], rax
00000000077c880b: 4c89fe                       mov      rsi, r15
00000000077c880e: e89d55d4fc                   call     0x450ddb0
00000000077c8813: 488d05122f5003               lea      rax, [rip + 0x3502f12]
00000000077c881a: 8b00                         mov      eax, dword ptr [rax]
00000000077c881c: 89c1                         mov      ecx, eax
00000000077c881e: f7d1                         not      ecx
00000000077c8820: 0fafc8                       imul     ecx, eax
00000000077c8823: f6c101                       test     cl, 1
00000000077c8826: 0f94c1                       sete     cl
00000000077c8829: 488d05f82e5003               lea      rax, [rip + 0x3502ef8]
00000000077c8830: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c8833: 0f9cc0                       setl     al
00000000077c8836: 08c8                         or       al, cl
00000000077c8838: 48b9aaaaaaaaaaaaaaaa         movabs   rcx, 0xaaaaaaaaaaaaaaaa
00000000077c8842: 3c01                         cmp      al, 1
00000000077c8844: 488b7d98                     mov      rdi, qword ptr [rbp - 0x68]
00000000077c8848: 0f2805510e59f9               movaps   xmm0, xmmword ptr [rip - 0x6a6f1af]
00000000077c884f: 0f849b000000                 je       0x77c88f0
00000000077c8855: 48894f10                     mov      qword ptr [rdi + 0x10], rcx
00000000077c8859: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077c885c: e99a000000                   jmp      0x77c88fb
00000000077c8861: eb02                         jmp      0x77c8865
00000000077c8863: eb00                         jmp      0x77c8865
00000000077c8865: 4889d3                       mov      rbx, rdx
00000000077c8868: 4989c7                       mov      r15, rax
00000000077c886b: 4c89f7                       mov      rdi, r14
00000000077c886e: e8cd18d4fc                   call     0x450a140
00000000077c8873: eb06                         jmp      0x77c887b
00000000077c8875: 4889d3                       mov      rbx, rdx
00000000077c8878: 4989c7                       mov      r15, rax
00000000077c887b: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077c887f: 4c8938                       mov      qword ptr [rax], r15
00000000077c8882: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c8886: 8918                         mov      dword ptr [rax], ebx
00000000077c8888: 488d059d2e5003               lea      rax, [rip + 0x3502e9d]
00000000077c888f: 8b10                         mov      edx, dword ptr [rax]
00000000077c8891: 488d05902e5003               lea      rax, [rip + 0x3502e90]
00000000077c8898: 8b08                         mov      ecx, dword ptr [rax]
00000000077c889a: 89d0                         mov      eax, edx
00000000077c889c: f7d0                         not      eax
00000000077c889e: 0fafc2                       imul     eax, edx
00000000077c88a1: 83e001                       and      eax, 1
00000000077c88a4: 83f90a                       cmp      ecx, 0xa
00000000077c88a7: 488b5dc0                     mov      rbx, qword ptr [rbp - 0x40]
00000000077c88ab: 7c04                         jl       0x77c88b1
00000000077c88ad: 85c0                         test     eax, eax
00000000077c88af: 7529                         jne      0x77c88da
00000000077c88b1: 4889df                       mov      rdi, rbx
00000000077c88b4: e8a72e5100                   call     0x7cdb760
00000000077c88b9: 488d05682e5003               lea      rax, [rip + 0x3502e68]
00000000077c88c0: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c88c3: 7c1f                         jl       0x77c88e4
00000000077c88c5: 488d05602e5003               lea      rax, [rip + 0x3502e60]
00000000077c88cc: 8b00                         mov      eax, dword ptr [rax]
00000000077c88ce: 89c1                         mov      ecx, eax
00000000077c88d0: f7d1                         not      ecx
00000000077c88d2: 0fafc8                       imul     ecx, eax
00000000077c88d5: 83e101                       and      ecx, 1
00000000077c88d8: 740a                         je       0x77c88e4
00000000077c88da: 4889df                       mov      rdi, rbx
00000000077c88dd: e87e2e5100                   call     0x7cdb760
00000000077c88e2: ebcd                         jmp      0x77c88b1
00000000077c88e4: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077c88e8: 488b38                       mov      rdi, qword ptr [rax]
00000000077c88eb: e83045d2fc                   call     0x44ece20
00000000077c88f0: 48894f10                     mov      qword ptr [rdi + 0x10], rcx
00000000077c88f4: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077c88f7: 84c0                         test     al, al
00000000077c88f9: 7509                         jne      0x77c8904
00000000077c88fb: 48894f10                     mov      qword ptr [rdi + 0x10], rcx
00000000077c88ff: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077c8902: ebec                         jmp      0x77c88f0
00000000077c8904: be10000000                   mov      esi, 0x10
00000000077c8909: e8c2352f02                   call     0x9abbed0
00000000077c890e: 488b4dc0                     mov      rcx, qword ptr [rbp - 0x40]
00000000077c8912: 83491c01                     or       dword ptr [rcx + 0x1c], 1
00000000077c8916: 488d050f2e5003               lea      rax, [rip + 0x3502e0f]
00000000077c891d: 8b10                         mov      edx, dword ptr [rax]
00000000077c891f: 488d05022e5003               lea      rax, [rip + 0x3502e02]
00000000077c8926: 8b00                         mov      eax, dword ptr [rax]
00000000077c8928: 4c8b7908                     mov      r15, qword ptr [rcx + 8]
00000000077c892c: 4d85ff                       test     r15, r15
00000000077c892f: 752f                         jne      0x77c8960
00000000077c8931: bf38000000                   mov      edi, 0x38
00000000077c8936: e86554ea02                   call     0xa66dda0
00000000077c893b: 4989c7                       mov      r15, rax
00000000077c893e: 4889c7                       mov      rdi, rax
00000000077c8941: e83ad05000                   call     0x7cd5980
00000000077c8946: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c894a: 4c897808                     mov      qword ptr [rax + 8], r15
00000000077c894e: 488d05d72d5003               lea      rax, [rip + 0x3502dd7]
00000000077c8955: 8b10                         mov      edx, dword ptr [rax]
00000000077c8957: 488d05ca2d5003               lea      rax, [rip + 0x3502dca]
00000000077c895e: 8b00                         mov      eax, dword ptr [rax]
00000000077c8960: 89d1                         mov      ecx, edx
00000000077c8962: f7d1                         not      ecx
00000000077c8964: 0fafca                       imul     ecx, edx
00000000077c8967: 83e101                       and      ecx, 1
00000000077c896a: 41804f3401                   or       byte ptr [r15 + 0x34], 1
00000000077c896f: 4d8b7708                     mov      r14, qword ptr [r15 + 8]
00000000077c8973: 4d85f6                       test     r14, r14
00000000077c8976: 7535                         jne      0x77c89ad
00000000077c8978: bf20000000                   mov      edi, 0x20
00000000077c897d: e81e54ea02                   call     0xa66dda0
00000000077c8982: 4989c6                       mov      r14, rax
00000000077c8985: 4889c7                       mov      rdi, rax
00000000077c8988: e8237b3d00                   call     0x7ba04b0
00000000077c898d: 4d897708                     mov      qword ptr [r15 + 8], r14
00000000077c8991: 488d05942d5003               lea      rax, [rip + 0x3502d94]
00000000077c8998: 8b10                         mov      edx, dword ptr [rax]
00000000077c899a: 488d05872d5003               lea      rax, [rip + 0x3502d87]
00000000077c89a1: 8b00                         mov      eax, dword ptr [rax]
00000000077c89a3: 89d1                         mov      ecx, edx
00000000077c89a5: f7d1                         not      ecx
00000000077c89a7: 0fafca                       imul     ecx, edx
00000000077c89aa: 83e101                       and      ecx, 1
00000000077c89ad: 85c9                         test     ecx, ecx
00000000077c89af: 0f94c1                       sete     cl
00000000077c89b2: 83f80a                       cmp      eax, 0xa
00000000077c89b5: 0f9cc0                       setl     al
00000000077c89b8: 08c8                         or       al, cl
00000000077c89ba: 660f1f440000                 nop      word ptr [rax + rax]
00000000077c89c0: 84c0                         test     al, al
00000000077c89c2: 74fc                         je       0x77c89c0
00000000077c89c4: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077c89c8: f60001                       test     byte ptr [rax], 1
00000000077c89cb: 7406                         je       0x77c89d3
00000000077c89cd: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077c89d1: eb04                         jmp      0x77c89d7
00000000077c89d3: 4c8d7801                     lea      r15, [rax + 1]
00000000077c89d7: 41834e1802                   or       dword ptr [r14 + 0x18], 2
00000000077c89dc: 498b7e08                     mov      rdi, qword ptr [r14 + 8]
00000000077c89e0: 483b3d19ab3203               cmp      rdi, qword ptr [rip + 0x332ab19] ; reloc 0xad176f0
00000000077c89e7: 751f                         jne      0x77c8a08
00000000077c89e9: bf18000000                   mov      edi, 0x18
00000000077c89ee: e8ad53ea02                   call     0xa66dda0
00000000077c89f3: 4889c7                       mov      rdi, rax
00000000077c89f6: 0f57c0                       xorps    xmm0, xmm0
00000000077c89f9: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c89fc: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c8a04: 49894608                     mov      qword ptr [r14 + 8], rax
00000000077c8a08: ba10000000                   mov      edx, 0x10
00000000077c8a0d: 4c89fe                       mov      rsi, r15
00000000077c8a10: e8eb44d4fc                   call     0x450cf00
00000000077c8a15: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8a19: 80481c01                     or       byte ptr [rax + 0x1c], 1
00000000077c8a1d: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077c8a21: 4d85f6                       test     r14, r14
00000000077c8a24: 751d                         jne      0x77c8a43
00000000077c8a26: bf38000000                   mov      edi, 0x38
00000000077c8a2b: e87053ea02                   call     0xa66dda0
00000000077c8a30: 4989c6                       mov      r14, rax
00000000077c8a33: 4889c7                       mov      rdi, rax
00000000077c8a36: e845cf5000                   call     0x7cd5980
00000000077c8a3b: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8a3f: 4c897008                     mov      qword ptr [rax + 8], r14
00000000077c8a43: 41804e3401                   or       byte ptr [r14 + 0x34], 1
00000000077c8a48: 4d8b7e08                     mov      r15, qword ptr [r14 + 8]
00000000077c8a4c: 4d85ff                       test     r15, r15
00000000077c8a4f: 7519                         jne      0x77c8a6a
00000000077c8a51: bf20000000                   mov      edi, 0x20
00000000077c8a56: e84553ea02                   call     0xa66dda0
00000000077c8a5b: 4989c7                       mov      r15, rax
00000000077c8a5e: 4889c7                       mov      rdi, rax
00000000077c8a61: e84a7a3d00                   call     0x7ba04b0
00000000077c8a66: 4d897e08                     mov      qword ptr [r14 + 8], r15
00000000077c8a6a: 41804f1801                   or       byte ptr [r15 + 0x18], 1
00000000077c8a6f: 41c7471010000000             mov      dword ptr [r15 + 0x10], 0x10
00000000077c8a77: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8a7b: 80481c01                     or       byte ptr [rax + 0x1c], 1
00000000077c8a7f: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077c8a83: 4d85f6                       test     r14, r14
00000000077c8a86: 751d                         jne      0x77c8aa5
00000000077c8a88: bf38000000                   mov      edi, 0x38
00000000077c8a8d: e80e53ea02                   call     0xa66dda0
00000000077c8a92: 4989c6                       mov      r14, rax
00000000077c8a95: 4889c7                       mov      rdi, rax
00000000077c8a98: e8e3ce5000                   call     0x7cd5980
00000000077c8a9d: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8aa1: 4c897008                     mov      qword ptr [rax + 8], r14
00000000077c8aa5: 41804e3402                   or       byte ptr [r14 + 0x34], 2
00000000077c8aaa: 4d8b7e10                     mov      r15, qword ptr [r14 + 0x10]
00000000077c8aae: 4d85ff                       test     r15, r15
00000000077c8ab1: 7519                         jne      0x77c8acc
00000000077c8ab3: bf20000000                   mov      edi, 0x20
00000000077c8ab8: e8e352ea02                   call     0xa66dda0
00000000077c8abd: 4989c7                       mov      r15, rax
00000000077c8ac0: 4889c7                       mov      rdi, rax
00000000077c8ac3: e828833d00                   call     0x7ba0df0
00000000077c8ac8: 4d897e10                     mov      qword ptr [r14 + 0x10], r15
00000000077c8acc: 41804f1801                   or       byte ptr [r15 + 0x18], 1
00000000077c8ad1: 41c74710c9020000             mov      dword ptr [r15 + 0x10], 0x2c9
00000000077c8ad9: 0f57c0                       xorps    xmm0, xmm0
00000000077c8adc: 488bb558ffffff               mov      rsi, qword ptr [rbp - 0xa8]
00000000077c8ae3: 0f1106                       movups   xmmword ptr [rsi], xmm0
00000000077c8ae6: 48c7461000000000             mov      qword ptr [rsi + 0x10], 0
00000000077c8aee: 488b9530ffffff               mov      rdx, qword ptr [rbp - 0xd0]
00000000077c8af5: 0f1102                       movups   xmmword ptr [rdx], xmm0
00000000077c8af8: 48c7421000000000             mov      qword ptr [rdx + 0x10], 0
00000000077c8b00: bfc9020000                   mov      edi, 0x2c9
00000000077c8b05: e826283501                   call     0x8b1b330
00000000077c8b0a: 85c0                         test     eax, eax
00000000077c8b0c: 0f8e7a010000                 jle      0x77c8c8c
00000000077c8b12: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8b16: 80481c01                     or       byte ptr [rax + 0x1c], 1
00000000077c8b1a: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077c8b1e: 4d85f6                       test     r14, r14
00000000077c8b21: 751d                         jne      0x77c8b40
00000000077c8b23: bf38000000                   mov      edi, 0x38
00000000077c8b28: e87352ea02                   call     0xa66dda0
00000000077c8b2d: 4989c6                       mov      r14, rax
00000000077c8b30: 4889c7                       mov      rdi, rax
00000000077c8b33: e848ce5000                   call     0x7cd5980
00000000077c8b38: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8b3c: 4c897008                     mov      qword ptr [rax + 8], r14
00000000077c8b40: 41804e3402                   or       byte ptr [r14 + 0x34], 2
00000000077c8b45: 4d8b6610                     mov      r12, qword ptr [r14 + 0x10]
00000000077c8b49: 4d85e4                       test     r12, r12
00000000077c8b4c: 7519                         jne      0x77c8b67
00000000077c8b4e: bf20000000                   mov      edi, 0x20
00000000077c8b53: e84852ea02                   call     0xa66dda0
00000000077c8b58: 4989c4                       mov      r12, rax
00000000077c8b5b: 4889c7                       mov      rdi, rax
00000000077c8b5e: e88d823d00                   call     0x7ba0df0
00000000077c8b63: 4d896610                     mov      qword ptr [r14 + 0x10], r12
00000000077c8b67: 41804c241802                 or       byte ptr [r12 + 0x18], 2
00000000077c8b6d: 4d8b742408                   mov      r14, qword ptr [r12 + 8]
00000000077c8b72: 4d85f6                       test     r14, r14
00000000077c8b75: 751a                         jne      0x77c8b91
00000000077c8b77: bf20000000                   mov      edi, 0x20
00000000077c8b7c: e81f52ea02                   call     0xa66dda0
00000000077c8b81: 4989c6                       mov      r14, rax
00000000077c8b84: 4889c7                       mov      rdi, rax
00000000077c8b87: e824793d00                   call     0x7ba04b0
00000000077c8b8c: 4d89742408                   mov      qword ptr [r12 + 8], r14
00000000077c8b91: 488b8558ffffff               mov      rax, qword ptr [rbp - 0xa8]
00000000077c8b98: 440fb638                     movzx    r15d, byte ptr [rax]
00000000077c8b9c: 41f6c701                     test     r15b, 1
00000000077c8ba0: 740a                         je       0x77c8bac
00000000077c8ba2: 4c8b7808                     mov      r15, qword ptr [rax + 8]
00000000077c8ba6: 4c8b6010                     mov      r12, qword ptr [rax + 0x10]
00000000077c8baa: eb07                         jmp      0x77c8bb3
00000000077c8bac: 4c8d6001                     lea      r12, [rax + 1]
00000000077c8bb0: 41d1ef                       shr      r15d, 1
00000000077c8bb3: 41834e1802                   or       dword ptr [r14 + 0x18], 2
00000000077c8bb8: 498b7e08                     mov      rdi, qword ptr [r14 + 8]
00000000077c8bbc: 483b3d3da93203               cmp      rdi, qword ptr [rip + 0x332a93d] ; reloc 0xad176f0
00000000077c8bc3: 751f                         jne      0x77c8be4
00000000077c8bc5: bf18000000                   mov      edi, 0x18
00000000077c8bca: e8d151ea02                   call     0xa66dda0
00000000077c8bcf: 4889c7                       mov      rdi, rax
00000000077c8bd2: 0f57c0                       xorps    xmm0, xmm0
00000000077c8bd5: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c8bd8: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c8be0: 49894608                     mov      qword ptr [r14 + 8], rax
00000000077c8be4: 4c89e6                       mov      rsi, r12
00000000077c8be7: 4c89fa                       mov      rdx, r15
00000000077c8bea: e81143d4fc                   call     0x450cf00
00000000077c8bef: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8bf3: 80481c01                     or       byte ptr [rax + 0x1c], 1
00000000077c8bf7: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077c8bfb: 4d85f6                       test     r14, r14
00000000077c8bfe: 751d                         jne      0x77c8c1d
00000000077c8c00: bf38000000                   mov      edi, 0x38
00000000077c8c05: e89651ea02                   call     0xa66dda0
00000000077c8c0a: 4989c6                       mov      r14, rax
00000000077c8c0d: 4889c7                       mov      rdi, rax
00000000077c8c10: e86bcd5000                   call     0x7cd5980
00000000077c8c15: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8c19: 4c897008                     mov      qword ptr [rax + 8], r14
00000000077c8c1d: 41804e3402                   or       byte ptr [r14 + 0x34], 2
00000000077c8c22: 4d8b6610                     mov      r12, qword ptr [r14 + 0x10]
00000000077c8c26: 4d85e4                       test     r12, r12
00000000077c8c29: 7519                         jne      0x77c8c44
00000000077c8c2b: bf20000000                   mov      edi, 0x20
00000000077c8c30: e86b51ea02                   call     0xa66dda0
00000000077c8c35: 4989c4                       mov      r12, rax
00000000077c8c38: 4889c7                       mov      rdi, rax
00000000077c8c3b: e8b0813d00                   call     0x7ba0df0
00000000077c8c40: 4d896610                     mov      qword ptr [r14 + 0x10], r12
00000000077c8c44: 41804c241802                 or       byte ptr [r12 + 0x18], 2
00000000077c8c4a: 4d8b742408                   mov      r14, qword ptr [r12 + 8]
00000000077c8c4f: 4d85f6                       test     r14, r14
00000000077c8c52: 751a                         jne      0x77c8c6e
00000000077c8c54: bf20000000                   mov      edi, 0x20
00000000077c8c59: e84251ea02                   call     0xa66dda0
00000000077c8c5e: 4989c6                       mov      r14, rax
00000000077c8c61: 4889c7                       mov      rdi, rax
00000000077c8c64: e847783d00                   call     0x7ba04b0
00000000077c8c69: 4d89742408                   mov      qword ptr [r12 + 8], r14
00000000077c8c6e: 488b8d58ffffff               mov      rcx, qword ptr [rbp - 0xa8]
00000000077c8c75: 0fb601                       movzx    eax, byte ptr [rcx]
00000000077c8c78: a801                         test     al, 1
00000000077c8c7a: 7405                         je       0x77c8c81
00000000077c8c7c: 8b4108                       mov      eax, dword ptr [rcx + 8]
00000000077c8c7f: eb02                         jmp      0x77c8c83
00000000077c8c81: d1e8                         shr      eax, 1
00000000077c8c83: 41834e1801                   or       dword ptr [r14 + 0x18], 1
00000000077c8c88: 41894610                     mov      dword ptr [r14 + 0x10], eax
00000000077c8c8c: 488b85f0fdffff               mov      rax, qword ptr [rbp - 0x210]
00000000077c8c93: 48b9aaaaaaaaaaaaaaaa         movabs   rcx, 0xaaaaaaaaaaaaaaaa
00000000077c8c9d: 488908                       mov      qword ptr [rax], rcx
00000000077c8ca0: 488b85f0feffff               mov      rax, qword ptr [rbp - 0x110]
00000000077c8ca7: 488b38                       mov      rdi, qword ptr [rax]
00000000077c8caa: e8318987fe                   call     0x60415e0
00000000077c8caf: 4989c6                       mov      r14, rax
00000000077c8cb2: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8cb6: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c8cba: 488b8df0fdffff               mov      rcx, qword ptr [rbp - 0x210]
00000000077c8cc1: 4c8931                       mov      qword ptr [rcx], r14
00000000077c8cc4: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077c8cc8: 4d85ff                       test     r15, r15
00000000077c8ccb: 751d                         jne      0x77c8cea
00000000077c8ccd: bfd8000000                   mov      edi, 0xd8
00000000077c8cd2: e8c950ea02                   call     0xa66dda0
00000000077c8cd7: 4989c7                       mov      r15, rax
00000000077c8cda: 4889c7                       mov      rdi, rax
00000000077c8cdd: e85ef35000                   call     0x7cd8040
00000000077c8ce2: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8ce6: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077c8cea: 41808fd000000001             or       byte ptr [r15 + 0xd0], 1
00000000077c8cf2: 4d8b6708                     mov      r12, qword ptr [r15 + 8]
00000000077c8cf6: 4d85e4                       test     r12, r12
00000000077c8cf9: 7519                         jne      0x77c8d14
00000000077c8cfb: bf38000000                   mov      edi, 0x38
00000000077c8d00: e89b50ea02                   call     0xa66dda0
00000000077c8d05: 4989c4                       mov      r12, rax
00000000077c8d08: 4889c7                       mov      rdi, rax
00000000077c8d0b: e8a0a72200                   call     0x79f34b0
00000000077c8d10: 4d896708                     mov      qword ptr [r15 + 8], r12
00000000077c8d14: 41804c243401                 or       byte ptr [r12 + 0x34], 1
00000000077c8d1a: 498b7c2408                   mov      rdi, qword ptr [r12 + 8]
00000000077c8d1f: 483b3ddaa73203               cmp      rdi, qword ptr [rip + 0x332a7da] ; reloc 0xad176f0
00000000077c8d26: 7520                         jne      0x77c8d48
00000000077c8d28: bf18000000                   mov      edi, 0x18
00000000077c8d2d: e86e50ea02                   call     0xa66dda0
00000000077c8d32: 4889c7                       mov      rdi, rax
00000000077c8d35: 0f57c0                       xorps    xmm0, xmm0
00000000077c8d38: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c8d3b: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c8d43: 4989442408                   mov      qword ptr [r12 + 8], rax
00000000077c8d48: 488d35e9b864f9               lea      rsi, [rip - 0x69b4717]
00000000077c8d4f: ba01000000                   mov      edx, 1
00000000077c8d54: e8a741d4fc                   call     0x450cf00
00000000077c8d59: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8d5d: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c8d61: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077c8d65: 4d85ff                       test     r15, r15
00000000077c8d68: 751d                         jne      0x77c8d87
00000000077c8d6a: bfd8000000                   mov      edi, 0xd8
00000000077c8d6f: e82c50ea02                   call     0xa66dda0
00000000077c8d74: 4989c7                       mov      r15, rax
00000000077c8d77: 4889c7                       mov      rdi, rax
00000000077c8d7a: e8c1f25000                   call     0x7cd8040
00000000077c8d7f: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8d83: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077c8d87: 41808fd000000001             or       byte ptr [r15 + 0xd0], 1
00000000077c8d8f: 4d8b6708                     mov      r12, qword ptr [r15 + 8]
00000000077c8d93: 4d85e4                       test     r12, r12
00000000077c8d96: 7519                         jne      0x77c8db1
00000000077c8d98: bf38000000                   mov      edi, 0x38
00000000077c8d9d: e8fe4fea02                   call     0xa66dda0
00000000077c8da2: 4989c4                       mov      r12, rax
00000000077c8da5: 4889c7                       mov      rdi, rax
00000000077c8da8: e803a72200                   call     0x79f34b0
00000000077c8dad: 4d896708                     mov      qword ptr [r15 + 8], r12
00000000077c8db1: 41804c243402                 or       byte ptr [r12 + 0x34], 2
00000000077c8db7: 4d89742410                   mov      qword ptr [r12 + 0x10], r14
00000000077c8dbc: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8dc0: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c8dc4: 4c8b6010                     mov      r12, qword ptr [rax + 0x10]
00000000077c8dc8: 4d85e4                       test     r12, r12
00000000077c8dcb: 751d                         jne      0x77c8dea
00000000077c8dcd: bfd8000000                   mov      edi, 0xd8
00000000077c8dd2: e8c94fea02                   call     0xa66dda0
00000000077c8dd7: 4989c4                       mov      r12, rax
00000000077c8dda: 4889c7                       mov      rdi, rax
00000000077c8ddd: e85ef25000                   call     0x7cd8040
00000000077c8de2: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8de6: 4c896010                     mov      qword ptr [rax + 0x10], r12
00000000077c8dea: 41808c24d000000001           or       byte ptr [r12 + 0xd0], 1
00000000077c8df3: 4d8b7c2408                   mov      r15, qword ptr [r12 + 8]
00000000077c8df8: 4d85ff                       test     r15, r15
00000000077c8dfb: 751a                         jne      0x77c8e17
00000000077c8dfd: bf38000000                   mov      edi, 0x38
00000000077c8e02: e8994fea02                   call     0xa66dda0
00000000077c8e07: 4989c7                       mov      r15, rax
00000000077c8e0a: 4889c7                       mov      rdi, rax
00000000077c8e0d: e89ea62200                   call     0x79f34b0
00000000077c8e12: 4d897c2408                   mov      qword ptr [r12 + 8], r15
00000000077c8e17: e8c43687fe                   call     0x603c4e0
00000000077c8e1c: 488b08                       mov      rcx, qword ptr [rax]
00000000077c8e1f: 4889c7                       mov      rdi, rax
00000000077c8e22: ff5110                       call     qword ptr [rcx + 0x10]
00000000077c8e25: 4c89ef                       mov      rdi, r13
00000000077c8e28: 4889c6                       mov      rsi, rax
00000000077c8e2b: e840a187fe                   call     0x6042f70
00000000077c8e30: 488d05f5285003               lea      rax, [rip + 0x35028f5]
00000000077c8e37: 8b00                         mov      eax, dword ptr [rax]
00000000077c8e39: 89c1                         mov      ecx, eax
00000000077c8e3b: f7d1                         not      ecx
00000000077c8e3d: 0fafc8                       imul     ecx, eax
00000000077c8e40: f6c101                       test     cl, 1
00000000077c8e43: 0f94c1                       sete     cl
00000000077c8e46: 488d05db285003               lea      rax, [rip + 0x35028db]
00000000077c8e4d: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c8e50: 0f9cc0                       setl     al
00000000077c8e53: 08c8                         or       al, cl
00000000077c8e55: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000077c8e60: 84c0                         test     al, al
00000000077c8e62: 74fc                         je       0x77c8e60
00000000077c8e64: 41f6450001                   test     byte ptr [r13], 1
00000000077c8e69: 7406                         je       0x77c8e71
00000000077c8e6b: 4d8b7510                     mov      r14, qword ptr [r13 + 0x10]
00000000077c8e6f: eb04                         jmp      0x77c8e75
00000000077c8e71: 4d8d7501                     lea      r14, [r13 + 1]
00000000077c8e75: 41834f3404                   or       dword ptr [r15 + 0x34], 4
00000000077c8e7a: 498b7f18                     mov      rdi, qword ptr [r15 + 0x18]
00000000077c8e7e: 483b3d7ba63203               cmp      rdi, qword ptr [rip + 0x332a67b] ; reloc 0xad176f0
00000000077c8e85: 751f                         jne      0x77c8ea6
00000000077c8e87: bf18000000                   mov      edi, 0x18
00000000077c8e8c: e80f4fea02                   call     0xa66dda0
00000000077c8e91: 4889c7                       mov      rdi, rax
00000000077c8e94: 0f57c0                       xorps    xmm0, xmm0
00000000077c8e97: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c8e9a: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c8ea2: 49894718                     mov      qword ptr [r15 + 0x18], rax
00000000077c8ea6: ba10000000                   mov      edx, 0x10
00000000077c8eab: 4c89f6                       mov      rsi, r14
00000000077c8eae: e84d40d4fc                   call     0x450cf00
00000000077c8eb3: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000077c8ec0: 41f6450001                   test     byte ptr [r13], 1
00000000077c8ec5: 7409                         je       0x77c8ed0
00000000077c8ec7: 498b7d10                     mov      rdi, qword ptr [r13 + 0x10]
00000000077c8ecb: e87012d4fc                   call     0x450a140
00000000077c8ed0: 488d0551285003               lea      rax, [rip + 0x3502851]
00000000077c8ed7: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c8eda: 7c27                         jl       0x77c8f03
00000000077c8edc: 488d0549285003               lea      rax, [rip + 0x3502849]
00000000077c8ee3: 8b00                         mov      eax, dword ptr [rax]
00000000077c8ee5: 89c1                         mov      ecx, eax
00000000077c8ee7: f7d1                         not      ecx
00000000077c8ee9: 0fafc8                       imul     ecx, eax
00000000077c8eec: 83e101                       and      ecx, 1
00000000077c8eef: 7412                         je       0x77c8f03
00000000077c8ef1: 41f6450001                   test     byte ptr [r13], 1
00000000077c8ef6: 74c8                         je       0x77c8ec0
00000000077c8ef8: 498b7d10                     mov      rdi, qword ptr [r13 + 0x10]
00000000077c8efc: e83f12d4fc                   call     0x450a140
00000000077c8f01: ebbd                         jmp      0x77c8ec0
00000000077c8f03: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8f07: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c8f0b: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077c8f0f: 4d85ff                       test     r15, r15
00000000077c8f12: 751d                         jne      0x77c8f31
00000000077c8f14: bfd8000000                   mov      edi, 0xd8
00000000077c8f19: e8824eea02                   call     0xa66dda0
00000000077c8f1e: 4989c7                       mov      r15, rax
00000000077c8f21: 4889c7                       mov      rdi, rax
00000000077c8f24: e817f15000                   call     0x7cd8040
00000000077c8f29: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8f2d: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077c8f31: 41808fd000000001             or       byte ptr [r15 + 0xd0], 1
00000000077c8f39: 4d8b6708                     mov      r12, qword ptr [r15 + 8]
00000000077c8f3d: 4d85e4                       test     r12, r12
00000000077c8f40: 7519                         jne      0x77c8f5b
00000000077c8f42: bf38000000                   mov      edi, 0x38
00000000077c8f47: e8544eea02                   call     0xa66dda0
00000000077c8f4c: 4989c4                       mov      r12, rax
00000000077c8f4f: 4889c7                       mov      rdi, rax
00000000077c8f52: e859a52200                   call     0x79f34b0
00000000077c8f57: 4d896708                     mov      qword ptr [r15 + 8], r12
00000000077c8f5b: e8803587fe                   call     0x603c4e0
00000000077c8f60: 488b08                       mov      rcx, qword ptr [rax]
00000000077c8f63: 4889c7                       mov      rdi, rax
00000000077c8f66: ff5110                       call     qword ptr [rcx + 0x10]
00000000077c8f69: 8b4060                       mov      eax, dword ptr [rax + 0x60]
00000000077c8f6c: 41834c243408                 or       dword ptr [r12 + 0x34], 8
00000000077c8f72: 4189442428                   mov      dword ptr [r12 + 0x28], eax
00000000077c8f77: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8f7b: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c8f7f: 4c8b6010                     mov      r12, qword ptr [rax + 0x10]
00000000077c8f83: 4d85e4                       test     r12, r12
00000000077c8f86: 751d                         jne      0x77c8fa5
00000000077c8f88: bfd8000000                   mov      edi, 0xd8
00000000077c8f8d: e80e4eea02                   call     0xa66dda0
00000000077c8f92: 4989c4                       mov      r12, rax
00000000077c8f95: 4889c7                       mov      rdi, rax
00000000077c8f98: e8a3f05000                   call     0x7cd8040
00000000077c8f9d: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c8fa1: 4c896010                     mov      qword ptr [rax + 0x10], r12
00000000077c8fa5: 41808c24d000000001           or       byte ptr [r12 + 0xd0], 1
00000000077c8fae: 4d8b7c2408                   mov      r15, qword ptr [r12 + 8]
00000000077c8fb3: 4d85ff                       test     r15, r15
00000000077c8fb6: 751a                         jne      0x77c8fd2
00000000077c8fb8: bf38000000                   mov      edi, 0x38
00000000077c8fbd: e8de4dea02                   call     0xa66dda0
00000000077c8fc2: 4989c7                       mov      r15, rax
00000000077c8fc5: 4889c7                       mov      rdi, rax
00000000077c8fc8: e8e3a42200                   call     0x79f34b0
00000000077c8fcd: 4d897c2408                   mov      qword ptr [r12 + 8], r15
00000000077c8fd2: e8093587fe                   call     0x603c4e0
00000000077c8fd7: 488b08                       mov      rcx, qword ptr [rax]
00000000077c8fda: 4889c7                       mov      rdi, rax
00000000077c8fdd: ff5110                       call     qword ptr [rcx + 0x10]
00000000077c8fe0: 4989c6                       mov      r14, rax
00000000077c8fe3: 488d0542275003               lea      rax, [rip + 0x3502742]
00000000077c8fea: 8b00                         mov      eax, dword ptr [rax]
00000000077c8fec: 89c1                         mov      ecx, eax
00000000077c8fee: f7d1                         not      ecx
00000000077c8ff0: 0fafc8                       imul     ecx, eax
00000000077c8ff3: f6c101                       test     cl, 1
00000000077c8ff6: 0f94c1                       sete     cl
00000000077c8ff9: 488d0528275003               lea      rax, [rip + 0x3502728]
00000000077c9000: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c9003: 0f9cc0                       setl     al
00000000077c9006: 08c8                         or       al, cl
00000000077c9008: 0f1f840000000000             nop      dword ptr [rax + rax]
00000000077c9010: 84c0                         test     al, al
00000000077c9012: 74fc                         je       0x77c9010
00000000077c9014: 41f6868800000001             test     byte ptr [r14 + 0x88], 1
00000000077c901c: 7409                         je       0x77c9027
00000000077c901e: 4d8bb698000000               mov      r14, qword ptr [r14 + 0x98]
00000000077c9025: eb07                         jmp      0x77c902e
00000000077c9027: 4981c689000000               add      r14, 0x89
00000000077c902e: e8ad3487fe                   call     0x603c4e0
00000000077c9033: 488b08                       mov      rcx, qword ptr [rax]
00000000077c9036: 4889c7                       mov      rdi, rax
00000000077c9039: ff5110                       call     qword ptr [rcx + 0x10]
00000000077c903c: 488d0de9265003               lea      rcx, [rip + 0x35026e9]
00000000077c9043: 8b09                         mov      ecx, dword ptr [rcx]
00000000077c9045: 89ca                         mov      edx, ecx
00000000077c9047: f7d2                         not      edx
00000000077c9049: 0fafd1                       imul     edx, ecx
00000000077c904c: f6c201                       test     dl, 1
00000000077c904f: 0f94c2                       sete     dl
00000000077c9052: 488d0dcf265003               lea      rcx, [rip + 0x35026cf]
00000000077c9059: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077c905c: 0f9cc1                       setl     cl
00000000077c905f: 08d1                         or       cl, dl
00000000077c9061: 6666666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077c9070: 84c9                         test     cl, cl
00000000077c9072: 74fc                         je       0x77c9070
00000000077c9074: 440fb6a088000000             movzx    r12d, byte ptr [rax + 0x88]
00000000077c907c: 41f6c401                     test     r12b, 1
00000000077c9080: 7409                         je       0x77c908b
00000000077c9082: 4c8ba090000000               mov      r12, qword ptr [rax + 0x90]
00000000077c9089: eb03                         jmp      0x77c908e
00000000077c908b: 41d1ec                       shr      r12d, 1
00000000077c908e: 41834f3410                   or       dword ptr [r15 + 0x34], 0x10
00000000077c9093: 498b7f20                     mov      rdi, qword ptr [r15 + 0x20]
00000000077c9097: 483b3d62a43203               cmp      rdi, qword ptr [rip + 0x332a462] ; reloc 0xad176f0
00000000077c909e: 751f                         jne      0x77c90bf
00000000077c90a0: bf18000000                   mov      edi, 0x18
00000000077c90a5: e8f64cea02                   call     0xa66dda0
00000000077c90aa: 4889c7                       mov      rdi, rax
00000000077c90ad: 0f57c0                       xorps    xmm0, xmm0
00000000077c90b0: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c90b3: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c90bb: 49894720                     mov      qword ptr [r15 + 0x20], rax
00000000077c90bf: 4c89f6                       mov      rsi, r14
00000000077c90c2: 4c89e2                       mov      rdx, r12
00000000077c90c5: e8363ed4fc                   call     0x450cf00
00000000077c90ca: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c90ce: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c90d2: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077c90d6: 4d85ff                       test     r15, r15
00000000077c90d9: 751d                         jne      0x77c90f8
00000000077c90db: bfd8000000                   mov      edi, 0xd8
00000000077c90e0: e8bb4cea02                   call     0xa66dda0
00000000077c90e5: 4989c7                       mov      r15, rax
00000000077c90e8: 4889c7                       mov      rdi, rax
00000000077c90eb: e850ef5000                   call     0x7cd8040
00000000077c90f0: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c90f4: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077c90f8: 41808fd000000001             or       byte ptr [r15 + 0xd0], 1
00000000077c9100: 4d8b6708                     mov      r12, qword ptr [r15 + 8]
00000000077c9104: 4d85e4                       test     r12, r12
00000000077c9107: 751d                         jne      0x77c9126
00000000077c9109: bf38000000                   mov      edi, 0x38
00000000077c910e: e88d4cea02                   call     0xa66dda0
00000000077c9113: 4989c4                       mov      r12, rax
00000000077c9116: 4889c7                       mov      rdi, rax
00000000077c9119: e892a32200                   call     0x79f34b0
00000000077c911e: 4d896708                     mov      qword ptr [r15 + 8], r12
00000000077c9122: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c9126: 41804c243420                 or       byte ptr [r12 + 0x34], 0x20
00000000077c912c: 41c744242c01000000           mov      dword ptr [r12 + 0x2c], 1
00000000077c9135: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c9139: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077c913d: 4d85ff                       test     r15, r15
00000000077c9140: 751d                         jne      0x77c915f
00000000077c9142: bfd8000000                   mov      edi, 0xd8
00000000077c9147: e8544cea02                   call     0xa66dda0
00000000077c914c: 4989c7                       mov      r15, rax
00000000077c914f: 4889c7                       mov      rdi, rax
00000000077c9152: e8e9ee5000                   call     0x7cd8040
00000000077c9157: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c915b: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077c915f: 41808fd000000002             or       byte ptr [r15 + 0xd0], 2
00000000077c9167: 4d8b6710                     mov      r12, qword ptr [r15 + 0x10]
00000000077c916b: 4d85e4                       test     r12, r12
00000000077c916e: 7519                         jne      0x77c9189
00000000077c9170: bf48000000                   mov      edi, 0x48
00000000077c9175: e8264cea02                   call     0xa66dda0
00000000077c917a: 4989c4                       mov      r12, rax
00000000077c917d: 4889c7                       mov      rdi, rax
00000000077c9180: e8dbb35000                   call     0x7cd4560
00000000077c9185: 4d896710                     mov      qword ptr [r15 + 0x10], r12
00000000077c9189: 41804c244002                 or       byte ptr [r12 + 0x40], 2
00000000077c918f: 4d8b7c2410                   mov      r15, qword ptr [r12 + 0x10]
00000000077c9194: 4d85ff                       test     r15, r15
00000000077c9197: 751a                         jne      0x77c91b3
00000000077c9199: bf30000000                   mov      edi, 0x30
00000000077c919e: e8fd4bea02                   call     0xa66dda0
00000000077c91a3: 4989c7                       mov      r15, rax
00000000077c91a6: 4889c7                       mov      rdi, rax
00000000077c91a9: e882d35000                   call     0x7cd6530
00000000077c91ae: 4d897c2410                   mov      qword ptr [r12 + 0x10], r15
00000000077c91b3: 488b8550fdffff               mov      rax, qword ptr [rbp - 0x2b0]
00000000077c91ba: 4c8b30                       mov      r14, qword ptr [rax]
00000000077c91bd: 41834f2c01                   or       dword ptr [r15 + 0x2c], 1
00000000077c91c2: 498b7f08                     mov      rdi, qword ptr [r15 + 8]
00000000077c91c6: 483b3d33a33203               cmp      rdi, qword ptr [rip + 0x332a333] ; reloc 0xad176f0
00000000077c91cd: 751f                         jne      0x77c91ee
00000000077c91cf: bf18000000                   mov      edi, 0x18
00000000077c91d4: e8c74bea02                   call     0xa66dda0
00000000077c91d9: 4889c7                       mov      rdi, rax
00000000077c91dc: 0f57c0                       xorps    xmm0, xmm0
00000000077c91df: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c91e2: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c91ea: 49894708                     mov      qword ptr [r15 + 8], rax
00000000077c91ee: 4c89f6                       mov      rsi, r14
00000000077c91f1: e8ba4bd4fc                   call     0x450ddb0
00000000077c91f6: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c91fa: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c91fe: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077c9202: 4d85ff                       test     r15, r15
00000000077c9205: 751d                         jne      0x77c9224
00000000077c9207: bfd8000000                   mov      edi, 0xd8
00000000077c920c: e88f4bea02                   call     0xa66dda0
00000000077c9211: 4989c7                       mov      r15, rax
00000000077c9214: 4889c7                       mov      rdi, rax
00000000077c9217: e824ee5000                   call     0x7cd8040
00000000077c921c: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c9220: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077c9224: 41808fd000000002             or       byte ptr [r15 + 0xd0], 2
00000000077c922c: 4d8b6710                     mov      r12, qword ptr [r15 + 0x10]
00000000077c9230: 4d85e4                       test     r12, r12
00000000077c9233: 7519                         jne      0x77c924e
00000000077c9235: bf48000000                   mov      edi, 0x48
00000000077c923a: e8614bea02                   call     0xa66dda0
00000000077c923f: 4989c4                       mov      r12, rax
00000000077c9242: 4889c7                       mov      rdi, rax
00000000077c9245: e816b35000                   call     0x7cd4560
00000000077c924a: 4d896710                     mov      qword ptr [r15 + 0x10], r12
00000000077c924e: 41804c244002                 or       byte ptr [r12 + 0x40], 2
00000000077c9254: 4d8b7c2410                   mov      r15, qword ptr [r12 + 0x10]
00000000077c9259: 4d85ff                       test     r15, r15
00000000077c925c: 751a                         jne      0x77c9278
00000000077c925e: bf30000000                   mov      edi, 0x30
00000000077c9263: e8384bea02                   call     0xa66dda0
00000000077c9268: 4989c7                       mov      r15, rax
00000000077c926b: 4889c7                       mov      rdi, rax
00000000077c926e: e8bdd25000                   call     0x7cd6530
00000000077c9273: 4d897c2410                   mov      qword ptr [r12 + 0x10], r15
00000000077c9278: 488b8558fdffff               mov      rax, qword ptr [rbp - 0x2a8]
00000000077c927f: 4c8b30                       mov      r14, qword ptr [rax]
00000000077c9282: 41834f2c01                   or       dword ptr [r15 + 0x2c], 1
00000000077c9287: 498b7f08                     mov      rdi, qword ptr [r15 + 8]
00000000077c928b: 483b3d6ea23203               cmp      rdi, qword ptr [rip + 0x332a26e] ; reloc 0xad176f0
00000000077c9292: 751f                         jne      0x77c92b3
00000000077c9294: bf18000000                   mov      edi, 0x18
00000000077c9299: e8024bea02                   call     0xa66dda0
00000000077c929e: 4889c7                       mov      rdi, rax
00000000077c92a1: 0f57c0                       xorps    xmm0, xmm0
00000000077c92a4: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c92a7: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c92af: 49894708                     mov      qword ptr [r15 + 8], rax
00000000077c92b3: 4c89f6                       mov      rsi, r14
00000000077c92b6: e8f54ad4fc                   call     0x450ddb0
00000000077c92bb: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c92bf: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c92c3: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077c92c7: 4d85ff                       test     r15, r15
00000000077c92ca: 751d                         jne      0x77c92e9
00000000077c92cc: bfd8000000                   mov      edi, 0xd8
00000000077c92d1: e8ca4aea02                   call     0xa66dda0
00000000077c92d6: 4989c7                       mov      r15, rax
00000000077c92d9: 4889c7                       mov      rdi, rax
00000000077c92dc: e85fed5000                   call     0x7cd8040
00000000077c92e1: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c92e5: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077c92e9: e8c254beff                   call     0x73ae7b0
00000000077c92ee: 4989c6                       mov      r14, rax
00000000077c92f1: 41808fd200000002             or       byte ptr [r15 + 0xd2], 2
00000000077c92f9: 498bbf88000000               mov      rdi, qword ptr [r15 + 0x88]
00000000077c9300: 483b3df9a13203               cmp      rdi, qword ptr [rip + 0x332a1f9] ; reloc 0xad176f0
00000000077c9307: 7522                         jne      0x77c932b
00000000077c9309: bf18000000                   mov      edi, 0x18
00000000077c930e: e88d4aea02                   call     0xa66dda0
00000000077c9313: 4889c7                       mov      rdi, rax
00000000077c9316: 0f57c0                       xorps    xmm0, xmm0
00000000077c9319: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c931c: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c9324: 49898788000000               mov      qword ptr [r15 + 0x88], rax
00000000077c932b: 4c89f6                       mov      rsi, r14
00000000077c932e: e8bd48d4fc                   call     0x450dbf0
00000000077c9333: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c9337: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c933b: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077c933f: 4d85ff                       test     r15, r15
00000000077c9342: 751d                         jne      0x77c9361
00000000077c9344: bfd8000000                   mov      edi, 0xd8
00000000077c9349: e8524aea02                   call     0xa66dda0
00000000077c934e: 4989c7                       mov      r15, rax
00000000077c9351: 4889c7                       mov      rdi, rax
00000000077c9354: e8e7ec5000                   call     0x7cd8040
00000000077c9359: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c935d: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077c9361: 41808fd100000008             or       byte ptr [r15 + 0xd1], 8
00000000077c9369: 41c74744e8030000             mov      dword ptr [r15 + 0x44], 0x3e8
00000000077c9371: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c9375: 4d85ff                       test     r15, r15
00000000077c9378: 751d                         jne      0x77c9397
00000000077c937a: bfd8000000                   mov      edi, 0xd8
00000000077c937f: e81c4aea02                   call     0xa66dda0
00000000077c9384: 4989c7                       mov      r15, rax
00000000077c9387: 4889c7                       mov      rdi, rax
00000000077c938a: e8b1ec5000                   call     0x7cd8040
00000000077c938f: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c9393: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077c9397: e8443187fe                   call     0x603c4e0
00000000077c939c: 488b08                       mov      rcx, qword ptr [rax]
00000000077c939f: 4889c7                       mov      rdi, rax
00000000077c93a2: ff5110                       call     qword ptr [rcx + 0x10]
00000000077c93a5: 4989c6                       mov      r14, rax
00000000077c93a8: 41808fd100000002             or       byte ptr [r15 + 0xd1], 2
00000000077c93b0: 498b7f50                     mov      rdi, qword ptr [r15 + 0x50]
00000000077c93b4: 483b3d45a13203               cmp      rdi, qword ptr [rip + 0x332a145] ; reloc 0xad176f0
00000000077c93bb: 751f                         jne      0x77c93dc
00000000077c93bd: bf18000000                   mov      edi, 0x18
00000000077c93c2: e8d949ea02                   call     0xa66dda0
00000000077c93c7: 4889c7                       mov      rdi, rax
00000000077c93ca: 0f57c0                       xorps    xmm0, xmm0
00000000077c93cd: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c93d0: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c93d8: 49894750                     mov      qword ptr [r15 + 0x50], rax
00000000077c93dc: 4983c668                     add      r14, 0x68
00000000077c93e0: 4c89f6                       mov      rsi, r14
00000000077c93e3: e8c849d4fc                   call     0x450ddb0
00000000077c93e8: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c93ec: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c93f0: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077c93f4: 4d85ff                       test     r15, r15
00000000077c93f7: 751d                         jne      0x77c9416
00000000077c93f9: bfd8000000                   mov      edi, 0xd8
00000000077c93fe: e89d49ea02                   call     0xa66dda0
00000000077c9403: 4989c7                       mov      r15, rax
00000000077c9406: 4889c7                       mov      rdi, rax
00000000077c9409: e832ec5000                   call     0x7cd8040
00000000077c940e: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c9412: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077c9416: e8c53087fe                   call     0x603c4e0
00000000077c941b: 488b08                       mov      rcx, qword ptr [rax]
00000000077c941e: 4889c7                       mov      rdi, rax
00000000077c9421: ff5110                       call     qword ptr [rcx + 0x10]
00000000077c9424: 4989c6                       mov      r14, rax
00000000077c9427: f680b800000001               test     byte ptr [rax + 0xb8], 1
00000000077c942e: 7409                         je       0x77c9439
00000000077c9430: 4d8bb6c8000000               mov      r14, qword ptr [r14 + 0xc8]
00000000077c9437: eb07                         jmp      0x77c9440
00000000077c9439: 4981c6b9000000               add      r14, 0xb9
00000000077c9440: e89b3087fe                   call     0x603c4e0
00000000077c9445: 488b08                       mov      rcx, qword ptr [rax]
00000000077c9448: 4889c7                       mov      rdi, rax
00000000077c944b: ff5110                       call     qword ptr [rcx + 0x10]
00000000077c944e: 440fb6a0b8000000             movzx    r12d, byte ptr [rax + 0xb8]
00000000077c9456: 41f6c401                     test     r12b, 1
00000000077c945a: 7409                         je       0x77c9465
00000000077c945c: 4c8ba0c0000000               mov      r12, qword ptr [rax + 0xc0]
00000000077c9463: eb03                         jmp      0x77c9468
00000000077c9465: 41d1ec                       shr      r12d, 1
00000000077c9468: 41818fd000000000200000       or       dword ptr [r15 + 0xd0], 0x2000
00000000077c9473: 498b7f60                     mov      rdi, qword ptr [r15 + 0x60]
00000000077c9477: 483b3d82a03203               cmp      rdi, qword ptr [rip + 0x332a082] ; reloc 0xad176f0
00000000077c947e: 751f                         jne      0x77c949f
00000000077c9480: bf18000000                   mov      edi, 0x18
00000000077c9485: e81649ea02                   call     0xa66dda0
00000000077c948a: 4889c7                       mov      rdi, rax
00000000077c948d: 0f57c0                       xorps    xmm0, xmm0
00000000077c9490: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c9493: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c949b: 49894760                     mov      qword ptr [r15 + 0x60], rax
00000000077c949f: 4c89f6                       mov      rsi, r14
00000000077c94a2: 4c89e2                       mov      rdx, r12
00000000077c94a5: e8563ad4fc                   call     0x450cf00
00000000077c94aa: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c94ae: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077c94b2: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077c94b6: 4d85ff                       test     r15, r15
00000000077c94b9: 751d                         jne      0x77c94d8
00000000077c94bb: bfd8000000                   mov      edi, 0xd8
00000000077c94c0: e8db48ea02                   call     0xa66dda0
00000000077c94c5: 4989c7                       mov      r15, rax
00000000077c94c8: 4889c7                       mov      rdi, rax
00000000077c94cb: e870eb5000                   call     0x7cd8040
00000000077c94d0: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c94d4: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077c94d8: e8033087fe                   call     0x603c4e0
00000000077c94dd: 488b08                       mov      rcx, qword ptr [rax]
00000000077c94e0: 4889c7                       mov      rdi, rax
00000000077c94e3: ff5110                       call     qword ptr [rcx + 0x10]
00000000077c94e6: 4989c6                       mov      r14, rax
00000000077c94e9: f680a000000001               test     byte ptr [rax + 0xa0], 1
00000000077c94f0: 7409                         je       0x77c94fb
00000000077c94f2: 4d8bb6b0000000               mov      r14, qword ptr [r14 + 0xb0]
00000000077c94f9: eb07                         jmp      0x77c9502
00000000077c94fb: 4981c6a1000000               add      r14, 0xa1
00000000077c9502: e8d92f87fe                   call     0x603c4e0
00000000077c9507: 488b08                       mov      rcx, qword ptr [rax]
00000000077c950a: 4889c7                       mov      rdi, rax
00000000077c950d: ff5110                       call     qword ptr [rcx + 0x10]
00000000077c9510: 440fb6a0a0000000             movzx    r12d, byte ptr [rax + 0xa0]
00000000077c9518: 41f6c401                     test     r12b, 1
00000000077c951c: 7409                         je       0x77c9527
00000000077c951e: 4c8ba0a8000000               mov      r12, qword ptr [rax + 0xa8]
00000000077c9525: eb03                         jmp      0x77c952a
00000000077c9527: 41d1ec                       shr      r12d, 1
00000000077c952a: 41818fd000000000400000       or       dword ptr [r15 + 0xd0], 0x4000
00000000077c9535: 498b7f68                     mov      rdi, qword ptr [r15 + 0x68]
00000000077c9539: 483b3dc09f3203               cmp      rdi, qword ptr [rip + 0x3329fc0] ; reloc 0xad176f0
00000000077c9540: 751f                         jne      0x77c9561
00000000077c9542: bf18000000                   mov      edi, 0x18
00000000077c9547: e85448ea02                   call     0xa66dda0
00000000077c954c: 4889c7                       mov      rdi, rax
00000000077c954f: 0f57c0                       xorps    xmm0, xmm0
00000000077c9552: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c9555: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c955d: 49894768                     mov      qword ptr [r15 + 0x68], rax
00000000077c9561: 4c89f6                       mov      rsi, r14
00000000077c9564: 4c89e2                       mov      rdx, r12
00000000077c9567: e89439d4fc                   call     0x450cf00
00000000077c956c: 488b7d80                     mov      rdi, qword ptr [rbp - 0x80]
00000000077c9570: 48bbaaaaaaaaaaaaaaaa         movabs   rbx, 0xaaaaaaaaaaaaaaaa
00000000077c957a: 48895f10                     mov      qword ptr [rdi + 0x10], rbx
00000000077c957e: 0f28051b0159f9               movaps   xmm0, xmmword ptr [rip - 0x6a6fee5]
00000000077c9585: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077c9588: e893f8bbff                   call     0x7388e20
00000000077c958d: 488b7da0                     mov      rdi, qword ptr [rbp - 0x60]
00000000077c9591: 48895f10                     mov      qword ptr [rdi + 0x10], rbx
00000000077c9595: 0f2805040159f9               movaps   xmm0, xmmword ptr [rip - 0x6a6fefc]
00000000077c959c: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077c959f: 4c8b6dc0                     mov      r13, qword ptr [rbp - 0x40]
00000000077c95a3: e838d9f400                   call     0x8716ee0
00000000077c95a8: 41804d1c02                   or       byte ptr [r13 + 0x1c], 2
00000000077c95ad: 4d8b7d10                     mov      r15, qword ptr [r13 + 0x10]
00000000077c95b1: 4d85ff                       test     r15, r15
00000000077c95b4: 488b9d00feffff               mov      rbx, qword ptr [rbp - 0x200]
00000000077c95bb: 7519                         jne      0x77c95d6
00000000077c95bd: bfd8000000                   mov      edi, 0xd8
00000000077c95c2: e8d947ea02                   call     0xa66dda0
00000000077c95c7: 4989c7                       mov      r15, rax
00000000077c95ca: 4889c7                       mov      rdi, rax
00000000077c95cd: e86eea5000                   call     0x7cd8040
00000000077c95d2: 4d897d10                     mov      qword ptr [r13 + 0x10], r15
00000000077c95d6: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077c95da: 440fb630                     movzx    r14d, byte ptr [rax]
00000000077c95de: 41f6c601                     test     r14b, 1
00000000077c95e2: 740a                         je       0x77c95ee
00000000077c95e4: 4c8b6010                     mov      r12, qword ptr [rax + 0x10]
00000000077c95e8: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077c95ec: eb07                         jmp      0x77c95f5
00000000077c95ee: 4c8d6001                     lea      r12, [rax + 1]
00000000077c95f2: 41d1ee                       shr      r14d, 1
00000000077c95f5: 41818fd000000000800000       or       dword ptr [r15 + 0xd0], 0x8000
00000000077c9600: 498b7f70                     mov      rdi, qword ptr [r15 + 0x70]
00000000077c9604: 483b3df59e3203               cmp      rdi, qword ptr [rip + 0x3329ef5] ; reloc 0xad176f0
00000000077c960b: 751f                         jne      0x77c962c
00000000077c960d: bf18000000                   mov      edi, 0x18
00000000077c9612: e88947ea02                   call     0xa66dda0
00000000077c9617: 4889c7                       mov      rdi, rax
00000000077c961a: 0f57c0                       xorps    xmm0, xmm0
00000000077c961d: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c9620: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c9628: 49894770                     mov      qword ptr [r15 + 0x70], rax
00000000077c962c: 4c89e6                       mov      rsi, r12
00000000077c962f: 4c89f2                       mov      rdx, r14
00000000077c9632: e8c938d4fc                   call     0x450cf00
00000000077c9637: 41804d1c02                   or       byte ptr [r13 + 0x1c], 2
00000000077c963c: 4d8b7d10                     mov      r15, qword ptr [r13 + 0x10]
00000000077c9640: 4d85ff                       test     r15, r15
00000000077c9643: 7519                         jne      0x77c965e
00000000077c9645: bfd8000000                   mov      edi, 0xd8
00000000077c964a: e85147ea02                   call     0xa66dda0
00000000077c964f: 4989c7                       mov      r15, rax
00000000077c9652: 4889c7                       mov      rdi, rax
00000000077c9655: e8e6e95000                   call     0x7cd8040
00000000077c965a: 4d897d10                     mov      qword ptr [r13 + 0x10], r15
00000000077c965e: 488bbd38ffffff               mov      rdi, qword ptr [rbp - 0xc8]
00000000077c9665: e896d9f400                   call     0x8717000
00000000077c966a: 41808fd100000004             or       byte ptr [r15 + 0xd1], 4
00000000077c9672: 498b7f58                     mov      rdi, qword ptr [r15 + 0x58]
00000000077c9676: 483b3d839e3203               cmp      rdi, qword ptr [rip + 0x3329e83] ; reloc 0xad176f0
00000000077c967d: 751f                         jne      0x77c969e
00000000077c967f: bf18000000                   mov      edi, 0x18
00000000077c9684: e81747ea02                   call     0xa66dda0
00000000077c9689: 4889c7                       mov      rdi, rax
00000000077c968c: 0f57c0                       xorps    xmm0, xmm0
00000000077c968f: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c9692: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c969a: 49894758                     mov      qword ptr [r15 + 0x58], rax
00000000077c969e: 488bb538ffffff               mov      rsi, qword ptr [rbp - 0xc8]
00000000077c96a5: e80647d4fc                   call     0x450ddb0
00000000077c96aa: 488d0577205003               lea      rax, [rip + 0x3502077]
00000000077c96b1: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c96b4: 0f8c54020000                 jl       0x77c990e
00000000077c96ba: 488d056b205003               lea      rax, [rip + 0x350206b]
00000000077c96c1: 8b00                         mov      eax, dword ptr [rax]
00000000077c96c3: 89c1                         mov      ecx, eax
00000000077c96c5: f7d1                         not      ecx
00000000077c96c7: 0fafc8                       imul     ecx, eax
00000000077c96ca: 83e101                       and      ecx, 1
00000000077c96cd: 0f8571020000                 jne      0x77c9944
00000000077c96d3: e936020000                   jmp      0x77c990e
00000000077c96d8: eb19                         jmp      0x77c96f3
00000000077c96da: eb04                         jmp      0x77c96e0
00000000077c96dc: eb15                         jmp      0x77c96f3
00000000077c96de: eb13                         jmp      0x77c96f3
00000000077c96e0: 4889d3                       mov      rbx, rdx
00000000077c96e3: 4989c7                       mov      r15, rax
00000000077c96e6: 4c89e7                       mov      rdi, r12
00000000077c96e9: e8520ad4fc                   call     0x450a140
00000000077c96ee: e971010000                   jmp      0x77c9864
00000000077c96f3: 4889d3                       mov      rbx, rdx
00000000077c96f6: 4989c7                       mov      r15, rax
00000000077c96f9: 4c89f7                       mov      rdi, r14
00000000077c96fc: e83f0ad4fc                   call     0x450a140
00000000077c9701: e95e010000                   jmp      0x77c9864
00000000077c9706: e9a1070000                   jmp      0x77c9eac
00000000077c970b: e99c070000                   jmp      0x77c9eac
00000000077c9710: eb3b                         jmp      0x77c974d
00000000077c9712: eb39                         jmp      0x77c974d
00000000077c9714: eb37                         jmp      0x77c974d
00000000077c9716: eb35                         jmp      0x77c974d
00000000077c9718: eb33                         jmp      0x77c974d
00000000077c971a: eb31                         jmp      0x77c974d
00000000077c971c: eb1c                         jmp      0x77c973a
00000000077c971e: eb2d                         jmp      0x77c974d
00000000077c9720: eb2b                         jmp      0x77c974d
00000000077c9722: eb16                         jmp      0x77c973a
00000000077c9724: eb27                         jmp      0x77c974d
00000000077c9726: eb12                         jmp      0x77c973a
00000000077c9728: eb23                         jmp      0x77c974d
00000000077c972a: eb21                         jmp      0x77c974d
00000000077c972c: eb0c                         jmp      0x77c973a
00000000077c972e: eb0a                         jmp      0x77c973a
00000000077c9730: eb1b                         jmp      0x77c974d
00000000077c9732: eb19                         jmp      0x77c974d
00000000077c9734: eb04                         jmp      0x77c973a
00000000077c9736: eb02                         jmp      0x77c973a
00000000077c9738: eb13                         jmp      0x77c974d
00000000077c973a: 4889d3                       mov      rbx, rdx
00000000077c973d: 4989c6                       mov      r14, rax
00000000077c9740: 4c89e7                       mov      rdi, r12
00000000077c9743: e8f809d4fc                   call     0x450a140
00000000077c9748: e93b010000                   jmp      0x77c9888
00000000077c974d: 4889d3                       mov      rbx, rdx
00000000077c9750: 4989c6                       mov      r14, rax
00000000077c9753: 4c89ff                       mov      rdi, r15
00000000077c9756: e8e509d4fc                   call     0x450a140
00000000077c975b: e928010000                   jmp      0x77c9888
00000000077c9760: eb19                         jmp      0x77c977b
00000000077c9762: eb04                         jmp      0x77c9768
00000000077c9764: eb15                         jmp      0x77c977b
00000000077c9766: eb00                         jmp      0x77c9768
00000000077c9768: 4889d3                       mov      rbx, rdx
00000000077c976b: 4989c4                       mov      r12, rax
00000000077c976e: 4c89f7                       mov      rdi, r14
00000000077c9771: e8ca09d4fc                   call     0x450a140
00000000077c9776: e9f8000000                   jmp      0x77c9873
00000000077c977b: 4889d3                       mov      rbx, rdx
00000000077c977e: 4989c4                       mov      r12, rax
00000000077c9781: 4c89ff                       mov      rdi, r15
00000000077c9784: e8b709d4fc                   call     0x450a140
00000000077c9789: e9e5000000                   jmp      0x77c9873
00000000077c978e: e9da1e0000                   jmp      0x77cb66d
00000000077c9793: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077c9797: 488901                       mov      qword ptr [rcx], rax
00000000077c979a: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c979e: 8910                         mov      dword ptr [rax], edx
00000000077c97a0: 488b5d80                     mov      rbx, qword ptr [rbp - 0x80]
00000000077c97a4: f60301                       test     byte ptr [rbx], 1
00000000077c97a7: 740d                         je       0x77c97b6
00000000077c97a9: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077c97ad: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c97b1: e88a09d4fc                   call     0x450a140
00000000077c97b6: 488d056b1f5003               lea      rax, [rip + 0x3501f6b]
00000000077c97bd: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c97c0: 0f8ccf000000                 jl       0x77c9895
00000000077c97c6: 488d055f1f5003               lea      rax, [rip + 0x3501f5f]
00000000077c97cd: 8b00                         mov      eax, dword ptr [rax]
00000000077c97cf: 89c1                         mov      ecx, eax
00000000077c97d1: f7d1                         not      ecx
00000000077c97d3: 0fafc8                       imul     ecx, eax
00000000077c97d6: 83e101                       and      ecx, 1
00000000077c97d9: 0f84b6000000                 je       0x77c9895
00000000077c97df: 488b5d80                     mov      rbx, qword ptr [rbp - 0x80]
00000000077c97e3: f60301                       test     byte ptr [rbx], 1
00000000077c97e6: 74bc                         je       0x77c97a4
00000000077c97e8: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c97ec: e84f09d4fc                   call     0x450a140
00000000077c97f1: ebb1                         jmp      0x77c97a4
00000000077c97f3: eb5a                         jmp      0x77c984f
00000000077c97f5: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077c97f9: 488901                       mov      qword ptr [rcx], rax
00000000077c97fc: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c9800: 8910                         mov      dword ptr [rax], edx
00000000077c9802: e981f0ffff                   jmp      0x77c8888
00000000077c9807: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077c980b: 488901                       mov      qword ptr [rcx], rax
00000000077c980e: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c9812: 8910                         mov      dword ptr [rax], edx
00000000077c9814: 488b8538ffffff               mov      rax, qword ptr [rbp - 0xc8]
00000000077c981b: f60001                       test     byte ptr [rax], 1
00000000077c981e: 0f84d11e0000                 je       0x77cb6f5
00000000077c9824: 488b8538ffffff               mov      rax, qword ptr [rbp - 0xc8]
00000000077c982b: e96e060000                   jmp      0x77c9e9e
00000000077c9830: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077c9834: 488901                       mov      qword ptr [rcx], rax
00000000077c9837: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c983b: 8910                         mov      dword ptr [rax], edx
00000000077c983d: 41f6450001                   test     byte ptr [r13], 1
00000000077c9842: 7451                         je       0x77c9895
00000000077c9844: 498b7d10                     mov      rdi, qword ptr [r13 + 0x10]
00000000077c9848: e8f308d4fc                   call     0x450a140
00000000077c984d: eb46                         jmp      0x77c9895
00000000077c984f: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077c9853: 488901                       mov      qword ptr [rcx], rax
00000000077c9856: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c985a: 8910                         mov      dword ptr [rax], edx
00000000077c985c: eb37                         jmp      0x77c9895
00000000077c985e: 4889d3                       mov      rbx, rdx
00000000077c9861: 4989c7                       mov      r15, rax
00000000077c9864: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077c9868: 4c8938                       mov      qword ptr [rax], r15
00000000077c986b: eb22                         jmp      0x77c988f
00000000077c986d: 4889d3                       mov      rbx, rdx
00000000077c9870: 4989c4                       mov      r12, rax
00000000077c9873: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077c9877: 4c8920                       mov      qword ptr [rax], r12
00000000077c987a: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c987e: 8918                         mov      dword ptr [rax], ebx
00000000077c9880: eb3d                         jmp      0x77c98bf
00000000077c9882: 4889d3                       mov      rbx, rdx
00000000077c9885: 4989c6                       mov      r14, rax
00000000077c9888: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077c988c: 4c8930                       mov      qword ptr [rax], r14
00000000077c988f: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c9893: 8918                         mov      dword ptr [rax], ebx
00000000077c9895: 488b8530ffffff               mov      rax, qword ptr [rbp - 0xd0]
00000000077c989c: f60001                       test     byte ptr [rax], 1
00000000077c989f: 7409                         je       0x77c98aa
00000000077c98a1: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c98a5: e89608d4fc                   call     0x450a140
00000000077c98aa: 488b8558ffffff               mov      rax, qword ptr [rbp - 0xa8]
00000000077c98b1: f60001                       test     byte ptr [rax], 1
00000000077c98b4: 7409                         je       0x77c98bf
00000000077c98b6: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c98ba: e88108d4fc                   call     0x450a140
00000000077c98bf: 488b5d98                     mov      rbx, qword ptr [rbp - 0x68]
00000000077c98c3: f60301                       test     byte ptr [rbx], 1
00000000077c98c6: 7409                         je       0x77c98d1
00000000077c98c8: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c98cc: e86f08d4fc                   call     0x450a140
00000000077c98d1: 488d05541e5003               lea      rax, [rip + 0x3501e54]
00000000077c98d8: 8b10                         mov      edx, dword ptr [rax]
00000000077c98da: 488d05471e5003               lea      rax, [rip + 0x3501e47]
00000000077c98e1: 8b08                         mov      ecx, dword ptr [rax]
00000000077c98e3: 89d0                         mov      eax, edx
00000000077c98e5: f7d0                         not      eax
00000000077c98e7: 0fafc2                       imul     eax, edx
00000000077c98ea: 83e001                       and      eax, 1
00000000077c98ed: 83f90a                       cmp      ecx, 0xa
00000000077c98f0: 0f8caeefffff                 jl       0x77c88a4
00000000077c98f6: 85c0                         test     eax, eax
00000000077c98f8: 0f84a6efffff                 je       0x77c88a4
00000000077c98fe: f60301                       test     byte ptr [rbx], 1
00000000077c9901: 74c0                         je       0x77c98c3
00000000077c9903: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c9907: e83408d4fc                   call     0x450a140
00000000077c990c: ebb5                         jmp      0x77c98c3
00000000077c990e: 488b8538ffffff               mov      rax, qword ptr [rbp - 0xc8]
00000000077c9915: f60001                       test     byte ptr [rax], 1
00000000077c9918: 7409                         je       0x77c9923
00000000077c991a: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c991e: e81d08d4fc                   call     0x450a140
00000000077c9923: 488d05fe1d5003               lea      rax, [rip + 0x3501dfe]
00000000077c992a: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c992d: 7c33                         jl       0x77c9962
00000000077c992f: 488d05f61d5003               lea      rax, [rip + 0x3501df6]
00000000077c9936: 8b00                         mov      eax, dword ptr [rax]
00000000077c9938: 89c1                         mov      ecx, eax
00000000077c993a: f7d1                         not      ecx
00000000077c993c: 0fafc8                       imul     ecx, eax
00000000077c993f: 83e101                       and      ecx, 1
00000000077c9942: 741e                         je       0x77c9962
00000000077c9944: 488b8538ffffff               mov      rax, qword ptr [rbp - 0xc8]
00000000077c994b: f60001                       test     byte ptr [rax], 1
00000000077c994e: 74be                         je       0x77c990e
00000000077c9950: 488b8538ffffff               mov      rax, qword ptr [rbp - 0xc8]
00000000077c9957: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c995b: e8e007d4fc                   call     0x450a140
00000000077c9960: ebac                         jmp      0x77c990e
00000000077c9962: 41804d1c02                   or       byte ptr [r13 + 0x1c], 2
00000000077c9967: 4d8b7d10                     mov      r15, qword ptr [r13 + 0x10]
00000000077c996b: 4d85ff                       test     r15, r15
00000000077c996e: 7519                         jne      0x77c9989
00000000077c9970: bfd8000000                   mov      edi, 0xd8
00000000077c9975: e82644ea02                   call     0xa66dda0
00000000077c997a: 4989c7                       mov      r15, rax
00000000077c997d: 4889c7                       mov      rdi, rax
00000000077c9980: e8bbe65000                   call     0x7cd8040
00000000077c9985: 4d897d10                     mov      qword ptr [r13 + 0x10], r15
00000000077c9989: 488bbd48ffffff               mov      rdi, qword ptr [rbp - 0xb8]
00000000077c9990: e88be4bbff                   call     0x7387e20
00000000077c9995: 41808fd000000040             or       byte ptr [r15 + 0xd0], 0x40
00000000077c999d: 498b7f30                     mov      rdi, qword ptr [r15 + 0x30]
00000000077c99a1: 483b3d589b3203               cmp      rdi, qword ptr [rip + 0x3329b58] ; reloc 0xad176f0
00000000077c99a8: 751f                         jne      0x77c99c9
00000000077c99aa: bf18000000                   mov      edi, 0x18
00000000077c99af: e8ec43ea02                   call     0xa66dda0
00000000077c99b4: 4889c7                       mov      rdi, rax
00000000077c99b7: 0f57c0                       xorps    xmm0, xmm0
00000000077c99ba: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c99bd: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c99c5: 49894730                     mov      qword ptr [r15 + 0x30], rax
00000000077c99c9: 488bb548ffffff               mov      rsi, qword ptr [rbp - 0xb8]
00000000077c99d0: e8db43d4fc                   call     0x450ddb0
00000000077c99d5: 4c8bb548ffffff               mov      r14, qword ptr [rbp - 0xb8]
00000000077c99dc: 0f1f4000                     nop      dword ptr [rax]
00000000077c99e0: 41f60601                     test     byte ptr [r14], 1
00000000077c99e4: 7410                         je       0x77c99f6
00000000077c99e6: 488b8548ffffff               mov      rax, qword ptr [rbp - 0xb8]
00000000077c99ed: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c99f1: e84a07d4fc                   call     0x450a140
00000000077c99f6: 488d052b1d5003               lea      rax, [rip + 0x3501d2b]
00000000077c99fd: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c9a00: 7c2d                         jl       0x77c9a2f
00000000077c9a02: 488d05231d5003               lea      rax, [rip + 0x3501d23]
00000000077c9a09: 8b00                         mov      eax, dword ptr [rax]
00000000077c9a0b: 89c1                         mov      ecx, eax
00000000077c9a0d: f7d1                         not      ecx
00000000077c9a0f: 0fafc8                       imul     ecx, eax
00000000077c9a12: 83e101                       and      ecx, 1
00000000077c9a15: 7418                         je       0x77c9a2f
00000000077c9a17: 4c8bb548ffffff               mov      r14, qword ptr [rbp - 0xb8]
00000000077c9a1e: 41f60601                     test     byte ptr [r14], 1
00000000077c9a22: 74bc                         je       0x77c99e0
00000000077c9a24: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077c9a28: e81307d4fc                   call     0x450a140
00000000077c9a2d: ebb1                         jmp      0x77c99e0
00000000077c9a2f: 41804d1c02                   or       byte ptr [r13 + 0x1c], 2
00000000077c9a34: 4d8b7d10                     mov      r15, qword ptr [r13 + 0x10]
00000000077c9a38: 4d85ff                       test     r15, r15
00000000077c9a3b: 7519                         jne      0x77c9a56
00000000077c9a3d: bfd8000000                   mov      edi, 0xd8
00000000077c9a42: e85943ea02                   call     0xa66dda0
00000000077c9a47: 4989c7                       mov      r15, rax
00000000077c9a4a: 4889c7                       mov      rdi, rax
00000000077c9a4d: e8eee55000                   call     0x7cd8040
00000000077c9a52: 4d897d10                     mov      qword ptr [r13 + 0x10], r15
00000000077c9a56: 41808fd000000080             or       byte ptr [r15 + 0xd0], 0x80
00000000077c9a5e: 498b7f38                     mov      rdi, qword ptr [r15 + 0x38]
00000000077c9a62: 483b3d979a3203               cmp      rdi, qword ptr [rip + 0x3329a97] ; reloc 0xad176f0
00000000077c9a69: 751f                         jne      0x77c9a8a
00000000077c9a6b: bf18000000                   mov      edi, 0x18
00000000077c9a70: e82b43ea02                   call     0xa66dda0
00000000077c9a75: 4889c7                       mov      rdi, rax
00000000077c9a78: 0f57c0                       xorps    xmm0, xmm0
00000000077c9a7b: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c9a7e: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c9a86: 49894738                     mov      qword ptr [r15 + 0x38], rax
00000000077c9a8a: 488b75a0                     mov      rsi, qword ptr [rbp - 0x60]
00000000077c9a8e: e81d43d4fc                   call     0x450ddb0
00000000077c9a93: bf02000000                   mov      edi, 2
00000000077c9a98: e8f3d19401                   call     0x9116c90
00000000077c9a9d: 85c0                         test     eax, eax
00000000077c9a9f: 0f8480010000                 je       0x77c9c25
00000000077c9aa5: 4889df                       mov      rdi, rbx
00000000077c9aa8: e8238fbeff                   call     0x73b29d0
00000000077c9aad: f60301                       test     byte ptr [rbx], 1
00000000077c9ab0: 7406                         je       0x77c9ab8
00000000077c9ab2: 488b5310                     mov      rdx, qword ptr [rbx + 0x10]
00000000077c9ab6: eb04                         jmp      0x77c9abc
00000000077c9ab8: 488d5301                     lea      rdx, [rbx + 1]
00000000077c9abc: 488d0dc97280f9               lea      rcx, [rip - 0x67f8d37]
00000000077c9ac3: 4c8d05f0f166f9               lea      r8, [rip - 0x6990e10]
00000000077c9aca: 488bbd40ffffff               mov      rdi, qword ptr [rbp - 0xc0]
00000000077c9ad1: be02000000                   mov      esi, 2
00000000077c9ad6: 41b978030000                 mov      r9d, 0x378
00000000077c9adc: 6a00                         push     0
00000000077c9ade: 6a00                         push     0
00000000077c9ae0: e8bb7a9401                   call     0x91115a0
00000000077c9ae5: 4883c410                     add      rsp, 0x10
00000000077c9ae9: 488b45a0                     mov      rax, qword ptr [rbp - 0x60]
00000000077c9aed: f60001                       test     byte ptr [rax], 1
00000000077c9af0: 7406                         je       0x77c9af8
00000000077c9af2: 488b4010                     mov      rax, qword ptr [rax + 0x10]
00000000077c9af6: eb03                         jmp      0x77c9afb
00000000077c9af8: 48ffc0                       inc      rax
00000000077c9afb: 488b8d70fdffff               mov      rcx, qword ptr [rbp - 0x290]
00000000077c9b02: 488901                       mov      qword ptr [rcx], rax
00000000077c9b05: c6410800                     mov      byte ptr [rcx + 8], 0
00000000077c9b09: 48898d40feffff               mov      qword ptr [rbp - 0x1c0], rcx
00000000077c9b10: 0f57c0                       xorps    xmm0, xmm0
00000000077c9b13: 0f118548feffff               movups   xmmword ptr [rbp - 0x1b8], xmm0
00000000077c9b1a: 0f118558feffff               movups   xmmword ptr [rbp - 0x1a8], xmm0
00000000077c9b21: 0f118568feffff               movups   xmmword ptr [rbp - 0x198], xmm0
00000000077c9b28: 0f118578feffff               movups   xmmword ptr [rbp - 0x188], xmm0
00000000077c9b2f: 0f118588feffff               movups   xmmword ptr [rbp - 0x178], xmm0
00000000077c9b36: 0f118598feffff               movups   xmmword ptr [rbp - 0x168], xmm0
00000000077c9b3d: 0f1185a8feffff               movups   xmmword ptr [rbp - 0x158], xmm0
00000000077c9b44: 48c785b8feffff00000000       mov      qword ptr [rbp - 0x148], 0
00000000077c9b4f: 488d35df2277f9               lea      rsi, [rip - 0x688dd21]
00000000077c9b56: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077c9b5d: 488bbd40ffffff               mov      rdi, qword ptr [rbp - 0xc0]
00000000077c9b64: e8877d9401                   call     0x91118f0
00000000077c9b69: 0f1f8000000000               nop      dword ptr [rax]
00000000077c9b70: 488d05b11b5003               lea      rax, [rip + 0x3501bb1]
00000000077c9b77: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c9b7a: 0f8c7f000000                 jl       0x77c9bff
00000000077c9b80: 488d05a51b5003               lea      rax, [rip + 0x3501ba5]
00000000077c9b87: 8b00                         mov      eax, dword ptr [rax]
00000000077c9b89: 89c1                         mov      ecx, eax
00000000077c9b8b: f7d1                         not      ecx
00000000077c9b8d: 0fafc8                       imul     ecx, eax
00000000077c9b90: 83e101                       and      ecx, 1
00000000077c9b93: 746a                         je       0x77c9bff
00000000077c9b95: 488bbd40ffffff               mov      rdi, qword ptr [rbp - 0xc0]
00000000077c9b9c: e88f7a9401                   call     0x9111630
00000000077c9ba1: f60301                       test     byte ptr [rbx], 1
00000000077c9ba4: 7409                         je       0x77c9baf
00000000077c9ba6: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c9baa: e89105d4fc                   call     0x450a140
00000000077c9baf: 488bbd40ffffff               mov      rdi, qword ptr [rbp - 0xc0]
00000000077c9bb6: e8757a9401                   call     0x9111630
00000000077c9bbb: f60301                       test     byte ptr [rbx], 1
00000000077c9bbe: 74b0                         je       0x77c9b70
00000000077c9bc0: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c9bc4: e87705d4fc                   call     0x450a140
00000000077c9bc9: eba5                         jmp      0x77c9b70
00000000077c9bcb: 0f1f440000                   nop      dword ptr [rax + rax]
00000000077c9bd0: 488d05551b5003               lea      rax, [rip + 0x3501b55]
00000000077c9bd7: 8b00                         mov      eax, dword ptr [rax]
00000000077c9bd9: 89c1                         mov      ecx, eax
00000000077c9bdb: f7d1                         not      ecx
00000000077c9bdd: 0fafc8                       imul     ecx, eax
00000000077c9be0: 83e101                       and      ecx, 1
00000000077c9be3: 7440                         je       0x77c9c25
00000000077c9be5: 488bbd40ffffff               mov      rdi, qword ptr [rbp - 0xc0]
00000000077c9bec: e83f7a9401                   call     0x9111630
00000000077c9bf1: f60301                       test     byte ptr [rbx], 1
00000000077c9bf4: 7409                         je       0x77c9bff
00000000077c9bf6: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c9bfa: e84105d4fc                   call     0x450a140
00000000077c9bff: 488bbd40ffffff               mov      rdi, qword ptr [rbp - 0xc0]
00000000077c9c06: e8257a9401                   call     0x9111630
00000000077c9c0b: f60301                       test     byte ptr [rbx], 1
00000000077c9c0e: 7409                         je       0x77c9c19
00000000077c9c10: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c9c14: e82705d4fc                   call     0x450a140
00000000077c9c19: 488d05081b5003               lea      rax, [rip + 0x3501b08]
00000000077c9c20: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c9c23: 7dab                         jge      0x77c9bd0
00000000077c9c25: 41804d1c02                   or       byte ptr [r13 + 0x1c], 2
00000000077c9c2a: 4d8b7d10                     mov      r15, qword ptr [r13 + 0x10]
00000000077c9c2e: 4d85ff                       test     r15, r15
00000000077c9c31: 7519                         jne      0x77c9c4c
00000000077c9c33: bfd8000000                   mov      edi, 0xd8
00000000077c9c38: e86341ea02                   call     0xa66dda0
00000000077c9c3d: 4989c7                       mov      r15, rax
00000000077c9c40: 4889c7                       mov      rdi, rax
00000000077c9c43: e8f8e35000                   call     0x7cd8040
00000000077c9c48: 4d897d10                     mov      qword ptr [r13 + 0x10], r15
00000000077c9c4c: e88f2887fe                   call     0x603c4e0
00000000077c9c51: 488b08                       mov      rcx, qword ptr [rax]
00000000077c9c54: 4889c7                       mov      rdi, rax
00000000077c9c57: ff5110                       call     qword ptr [rcx + 0x10]
00000000077c9c5a: 4889c3                       mov      rbx, rax
00000000077c9c5d: 488d05c81a5003               lea      rax, [rip + 0x3501ac8]
00000000077c9c64: 8b00                         mov      eax, dword ptr [rax]
00000000077c9c66: 89c1                         mov      ecx, eax
00000000077c9c68: f7d1                         not      ecx
00000000077c9c6a: 0fafc8                       imul     ecx, eax
00000000077c9c6d: f6c101                       test     cl, 1
00000000077c9c70: 0f94c1                       sete     cl
00000000077c9c73: 488d05ae1a5003               lea      rax, [rip + 0x3501aae]
00000000077c9c7a: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c9c7d: 0f9cc0                       setl     al
00000000077c9c80: 08c8                         or       al, cl
00000000077c9c82: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077c9c90: 84c0                         test     al, al
00000000077c9c92: 74fc                         je       0x77c9c90
00000000077c9c94: f6838800000001               test     byte ptr [rbx + 0x88], 1
00000000077c9c9b: 7409                         je       0x77c9ca6
00000000077c9c9d: 488b9b98000000               mov      rbx, qword ptr [rbx + 0x98]
00000000077c9ca4: eb07                         jmp      0x77c9cad
00000000077c9ca6: 4881c389000000               add      rbx, 0x89
00000000077c9cad: e82e2887fe                   call     0x603c4e0
00000000077c9cb2: 488b08                       mov      rcx, qword ptr [rax]
00000000077c9cb5: 4889c7                       mov      rdi, rax
00000000077c9cb8: ff5110                       call     qword ptr [rcx + 0x10]
00000000077c9cbb: 440fb6b088000000             movzx    r14d, byte ptr [rax + 0x88]
00000000077c9cc3: 41f6c601                     test     r14b, 1
00000000077c9cc7: 7409                         je       0x77c9cd2
00000000077c9cc9: 4c8bb090000000               mov      r14, qword ptr [rax + 0x90]
00000000077c9cd0: eb03                         jmp      0x77c9cd5
00000000077c9cd2: 41d1ee                       shr      r14d, 1
00000000077c9cd5: 41818fd000000000010000       or       dword ptr [r15 + 0xd0], 0x100
00000000077c9ce0: 498b7f48                     mov      rdi, qword ptr [r15 + 0x48]
00000000077c9ce4: 483b3d15983203               cmp      rdi, qword ptr [rip + 0x3329815] ; reloc 0xad176f0
00000000077c9ceb: 751f                         jne      0x77c9d0c
00000000077c9ced: bf18000000                   mov      edi, 0x18
00000000077c9cf2: e8a940ea02                   call     0xa66dda0
00000000077c9cf7: 4889c7                       mov      rdi, rax
00000000077c9cfa: 0f57c0                       xorps    xmm0, xmm0
00000000077c9cfd: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c9d00: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c9d08: 49894748                     mov      qword ptr [r15 + 0x48], rax
00000000077c9d0c: 4889de                       mov      rsi, rbx
00000000077c9d0f: 4c89f2                       mov      rdx, r14
00000000077c9d12: e8e931d4fc                   call     0x450cf00
00000000077c9d17: 41804d1c02                   or       byte ptr [r13 + 0x1c], 2
00000000077c9d1c: 4d8b7d10                     mov      r15, qword ptr [r13 + 0x10]
00000000077c9d20: 4d85ff                       test     r15, r15
00000000077c9d23: 7519                         jne      0x77c9d3e
00000000077c9d25: bfd8000000                   mov      edi, 0xd8
00000000077c9d2a: e87140ea02                   call     0xa66dda0
00000000077c9d2f: 4989c7                       mov      r15, rax
00000000077c9d32: 4889c7                       mov      rdi, rax
00000000077c9d35: e806e35000                   call     0x7cd8040
00000000077c9d3a: 4d897d10                     mov      qword ptr [r13 + 0x10], r15
00000000077c9d3e: 488b7da8                     mov      rdi, qword ptr [rbp - 0x58]
00000000077c9d42: e8b9e5bbff                   call     0x7388300
00000000077c9d47: 41808fd000000008             or       byte ptr [r15 + 0xd0], 8
00000000077c9d4f: 498b7f20                     mov      rdi, qword ptr [r15 + 0x20]
00000000077c9d53: 483b3da6973203               cmp      rdi, qword ptr [rip + 0x33297a6] ; reloc 0xad176f0
00000000077c9d5a: 751f                         jne      0x77c9d7b
00000000077c9d5c: bf18000000                   mov      edi, 0x18
00000000077c9d61: e83a40ea02                   call     0xa66dda0
00000000077c9d66: 4889c7                       mov      rdi, rax
00000000077c9d69: 0f57c0                       xorps    xmm0, xmm0
00000000077c9d6c: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077c9d6f: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077c9d77: 49894720                     mov      qword ptr [r15 + 0x20], rax
00000000077c9d7b: 488b75a8                     mov      rsi, qword ptr [rbp - 0x58]
00000000077c9d7f: e82c40d4fc                   call     0x450ddb0
00000000077c9d84: 488d05a1195003               lea      rax, [rip + 0x35019a1]
00000000077c9d8b: 8b10                         mov      edx, dword ptr [rax]
00000000077c9d8d: 488d0594195003               lea      rax, [rip + 0x3501994]
00000000077c9d94: 8b08                         mov      ecx, dword ptr [rax]
00000000077c9d96: 89d0                         mov      eax, edx
00000000077c9d98: f7d0                         not      eax
00000000077c9d9a: 0fafc2                       imul     eax, edx
00000000077c9d9d: 83e001                       and      eax, 1
00000000077c9da0: 83f90a                       cmp      ecx, 0xa
00000000077c9da3: 7c3b                         jl       0x77c9de0
00000000077c9da5: 85c0                         test     eax, eax
00000000077c9da7: 7437                         je       0x77c9de0
00000000077c9da9: b801000000                   mov      eax, 1
00000000077c9dae: 488b55a8                     mov      rdx, qword ptr [rbp - 0x58]
00000000077c9db2: f60201                       test     byte ptr [rdx], 1
00000000077c9db5: 7429                         je       0x77c9de0
00000000077c9db7: 488b45a8                     mov      rax, qword ptr [rbp - 0x58]
00000000077c9dbb: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c9dbf: e87c03d4fc                   call     0x450a140
00000000077c9dc4: 488d0561195003               lea      rax, [rip + 0x3501961]
00000000077c9dcb: 8b10                         mov      edx, dword ptr [rax]
00000000077c9dcd: 488d0554195003               lea      rax, [rip + 0x3501954]
00000000077c9dd4: 8b08                         mov      ecx, dword ptr [rax]
00000000077c9dd6: 89d0                         mov      eax, edx
00000000077c9dd8: f7d0                         not      eax
00000000077c9dda: 0fafc2                       imul     eax, edx
00000000077c9ddd: 83e001                       and      eax, 1
00000000077c9de0: 83f90a                       cmp      ecx, 0xa
00000000077c9de3: 0f8cd6000000                 jl       0x77c9ebf
00000000077c9de9: 85c0                         test     eax, eax
00000000077c9deb: 0f8501010000                 jne      0x77c9ef2
00000000077c9df1: e9c9000000                   jmp      0x77c9ebf
00000000077c9df6: e9b1000000                   jmp      0x77c9eac
00000000077c9dfb: e9ac000000                   jmp      0x77c9eac
00000000077c9e00: e9a7000000                   jmp      0x77c9eac
00000000077c9e05: e9a2000000                   jmp      0x77c9eac
00000000077c9e0a: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077c9e0e: 488901                       mov      qword ptr [rcx], rax
00000000077c9e11: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c9e15: 8910                         mov      dword ptr [rax], edx
00000000077c9e17: 488bbd40ffffff               mov      rdi, qword ptr [rbp - 0xc0]
00000000077c9e1e: e80d789401                   call     0x9111630
00000000077c9e23: eb0d                         jmp      0x77c9e32
00000000077c9e25: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077c9e29: 488901                       mov      qword ptr [rcx], rax
00000000077c9e2c: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c9e30: 8910                         mov      dword ptr [rax], edx
00000000077c9e32: 488b8500feffff               mov      rax, qword ptr [rbp - 0x200]
00000000077c9e39: f60001                       test     byte ptr [rax], 1
00000000077c9e3c: 0f84b3180000                 je       0x77cb6f5
00000000077c9e42: 488b8500feffff               mov      rax, qword ptr [rbp - 0x200]
00000000077c9e49: eb53                         jmp      0x77c9e9e
00000000077c9e4b: e91d180000                   jmp      0x77cb66d
00000000077c9e50: e918180000                   jmp      0x77cb66d
00000000077c9e55: e913180000                   jmp      0x77cb66d
00000000077c9e5a: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077c9e5e: 488901                       mov      qword ptr [rcx], rax
00000000077c9e61: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c9e65: 8910                         mov      dword ptr [rax], edx
00000000077c9e67: 488b45a8                     mov      rax, qword ptr [rbp - 0x58]
00000000077c9e6b: f60001                       test     byte ptr [rax], 1
00000000077c9e6e: 0f8481180000                 je       0x77cb6f5
00000000077c9e74: 488b45a8                     mov      rax, qword ptr [rbp - 0x58]
00000000077c9e78: eb24                         jmp      0x77c9e9e
00000000077c9e7a: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077c9e7e: 488901                       mov      qword ptr [rcx], rax
00000000077c9e81: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c9e85: 8910                         mov      dword ptr [rax], edx
00000000077c9e87: 488b8548ffffff               mov      rax, qword ptr [rbp - 0xb8]
00000000077c9e8e: f60001                       test     byte ptr [rax], 1
00000000077c9e91: 0f845e180000                 je       0x77cb6f5
00000000077c9e97: 488b8548ffffff               mov      rax, qword ptr [rbp - 0xb8]
00000000077c9e9e: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c9ea2: e89902d4fc                   call     0x450a140
00000000077c9ea7: e949180000                   jmp      0x77cb6f5
00000000077c9eac: 4889d3                       mov      rbx, rdx
00000000077c9eaf: 4989c6                       mov      r14, rax
00000000077c9eb2: 4c89ff                       mov      rdi, r15
00000000077c9eb5: e88602d4fc                   call     0x450a140
00000000077c9eba: e929180000                   jmp      0x77cb6e8
00000000077c9ebf: 488b45a8                     mov      rax, qword ptr [rbp - 0x58]
00000000077c9ec3: f60001                       test     byte ptr [rax], 1
00000000077c9ec6: 7409                         je       0x77c9ed1
00000000077c9ec8: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c9ecc: e86f02d4fc                   call     0x450a140
00000000077c9ed1: 488d0550185003               lea      rax, [rip + 0x3501850]
00000000077c9ed8: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c9edb: 7c2d                         jl       0x77c9f0a
00000000077c9edd: 488d0548185003               lea      rax, [rip + 0x3501848]
00000000077c9ee4: 8b00                         mov      eax, dword ptr [rax]
00000000077c9ee6: 89c1                         mov      ecx, eax
00000000077c9ee8: f7d1                         not      ecx
00000000077c9eea: 0fafc8                       imul     ecx, eax
00000000077c9eed: 83e101                       and      ecx, 1
00000000077c9ef0: 7418                         je       0x77c9f0a
00000000077c9ef2: 488b45a8                     mov      rax, qword ptr [rbp - 0x58]
00000000077c9ef6: f60001                       test     byte ptr [rax], 1
00000000077c9ef9: 74c4                         je       0x77c9ebf
00000000077c9efb: 488b45a8                     mov      rax, qword ptr [rbp - 0x58]
00000000077c9eff: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c9f03: e83802d4fc                   call     0x450a140
00000000077c9f08: ebb5                         jmp      0x77c9ebf
00000000077c9f0a: 41804d1c02                   or       byte ptr [r13 + 0x1c], 2
00000000077c9f0f: 4d8b7d10                     mov      r15, qword ptr [r13 + 0x10]
00000000077c9f13: 4d85ff                       test     r15, r15
00000000077c9f16: 7519                         jne      0x77c9f31
00000000077c9f18: bfd8000000                   mov      edi, 0xd8
00000000077c9f1d: e87e3eea02                   call     0xa66dda0
00000000077c9f22: 4989c7                       mov      r15, rax
00000000077c9f25: 4889c7                       mov      rdi, rax
00000000077c9f28: e813e15000                   call     0x7cd8040
00000000077c9f2d: 4d897d10                     mov      qword ptr [r13 + 0x10], r15
00000000077c9f31: 41808fd200000010             or       byte ptr [r15 + 0xd2], 0x10
00000000077c9f39: 41c7878400000002000000       mov      dword ptr [r15 + 0x84], 2
00000000077c9f44: 41804d1c02                   or       byte ptr [r13 + 0x1c], 2
00000000077c9f49: 4d85ff                       test     r15, r15
00000000077c9f4c: 7519                         jne      0x77c9f67
00000000077c9f4e: bfd8000000                   mov      edi, 0xd8
00000000077c9f53: e8483eea02                   call     0xa66dda0
00000000077c9f58: 4989c7                       mov      r15, rax
00000000077c9f5b: 4889c7                       mov      rdi, rax
00000000077c9f5e: e8dde05000                   call     0x7cd8040
00000000077c9f63: 4d897d10                     mov      qword ptr [r13 + 0x10], r15
00000000077c9f67: 41808fd000000010             or       byte ptr [r15 + 0xd0], 0x10
00000000077c9f6f: 41c7474000000000             mov      dword ptr [r15 + 0x40], 0
00000000077c9f77: 41804d1c02                   or       byte ptr [r13 + 0x1c], 2
00000000077c9f7c: 4d85ff                       test     r15, r15
00000000077c9f7f: 7519                         jne      0x77c9f9a
00000000077c9f81: bfd8000000                   mov      edi, 0xd8
00000000077c9f86: e8153eea02                   call     0xa66dda0
00000000077c9f8b: 4989c7                       mov      r15, rax
00000000077c9f8e: 4889c7                       mov      rdi, rax
00000000077c9f91: e8aae05000                   call     0x7cd8040
00000000077c9f96: 4d897d10                     mov      qword ptr [r13 + 0x10], r15
00000000077c9f9a: 41808fd000000002             or       byte ptr [r15 + 0xd0], 2
00000000077c9fa2: 4d8b6710                     mov      r12, qword ptr [r15 + 0x10]
00000000077c9fa6: 4d85e4                       test     r12, r12
00000000077c9fa9: 7519                         jne      0x77c9fc4
00000000077c9fab: bf48000000                   mov      edi, 0x48
00000000077c9fb0: e8eb3dea02                   call     0xa66dda0
00000000077c9fb5: 4989c4                       mov      r12, rax
00000000077c9fb8: 4889c7                       mov      rdi, rax
00000000077c9fbb: e8a0a55000                   call     0x7cd4560
00000000077c9fc0: 4d896710                     mov      qword ptr [r15 + 0x10], r12
00000000077c9fc4: 41804c244002                 or       byte ptr [r12 + 0x40], 2
00000000077c9fca: 4d8b7c2410                   mov      r15, qword ptr [r12 + 0x10]
00000000077c9fcf: 4d85ff                       test     r15, r15
00000000077c9fd2: 751a                         jne      0x77c9fee
00000000077c9fd4: bf30000000                   mov      edi, 0x30
00000000077c9fd9: e8c23dea02                   call     0xa66dda0
00000000077c9fde: 4989c7                       mov      r15, rax
00000000077c9fe1: 4889c7                       mov      rdi, rax
00000000077c9fe4: e847c55000                   call     0x7cd6530
00000000077c9fe9: 4d897c2410                   mov      qword ptr [r12 + 0x10], r15
00000000077c9fee: 41804f2c08                   or       byte ptr [r15 + 0x2c], 8
00000000077c9ff3: 4d8b6720                     mov      r12, qword ptr [r15 + 0x20]
00000000077c9ff7: 4d85e4                       test     r12, r12
00000000077c9ffa: 7519                         jne      0x77ca015
00000000077c9ffc: bf20000000                   mov      edi, 0x20
00000000077ca001: e89a3dea02                   call     0xa66dda0
00000000077ca006: 4989c4                       mov      r12, rax
00000000077ca009: 4889c7                       mov      rdi, rax
00000000077ca00c: e89f643d00                   call     0x7ba04b0
00000000077ca011: 4d896720                     mov      qword ptr [r15 + 0x20], r12
00000000077ca015: 41804c241802                 or       byte ptr [r12 + 0x18], 2
00000000077ca01b: 498b7c2408                   mov      rdi, qword ptr [r12 + 8]
00000000077ca020: 483b3dd9943203               cmp      rdi, qword ptr [rip + 0x33294d9] ; reloc 0xad176f0
00000000077ca027: 7520                         jne      0x77ca049
00000000077ca029: bf18000000                   mov      edi, 0x18
00000000077ca02e: e86d3dea02                   call     0xa66dda0
00000000077ca033: 4889c7                       mov      rdi, rax
00000000077ca036: 0f57c0                       xorps    xmm0, xmm0
00000000077ca039: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077ca03c: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077ca044: 4989442408                   mov      qword ptr [r12 + 8], rax
00000000077ca049: 488d35e8a564f9               lea      rsi, [rip - 0x69b5a18]
00000000077ca050: ba01000000                   mov      edx, 1
00000000077ca055: e8a62ed4fc                   call     0x450cf00
00000000077ca05a: 41804d1c02                   or       byte ptr [r13 + 0x1c], 2
00000000077ca05f: 4d8b7d10                     mov      r15, qword ptr [r13 + 0x10]
00000000077ca063: 4d85ff                       test     r15, r15
00000000077ca066: 7519                         jne      0x77ca081
00000000077ca068: bfd8000000                   mov      edi, 0xd8
00000000077ca06d: e82e3dea02                   call     0xa66dda0
00000000077ca072: 4989c7                       mov      r15, rax
00000000077ca075: 4889c7                       mov      rdi, rax
00000000077ca078: e8c3df5000                   call     0x7cd8040
00000000077ca07d: 4d897d10                     mov      qword ptr [r13 + 0x10], r15
00000000077ca081: 41808fd000000002             or       byte ptr [r15 + 0xd0], 2
00000000077ca089: 4d8b6710                     mov      r12, qword ptr [r15 + 0x10]
00000000077ca08d: 4d85e4                       test     r12, r12
00000000077ca090: 7519                         jne      0x77ca0ab
00000000077ca092: bf48000000                   mov      edi, 0x48
00000000077ca097: e8043dea02                   call     0xa66dda0
00000000077ca09c: 4989c4                       mov      r12, rax
00000000077ca09f: 4889c7                       mov      rdi, rax
00000000077ca0a2: e8b9a45000                   call     0x7cd4560
00000000077ca0a7: 4d896710                     mov      qword ptr [r15 + 0x10], r12
00000000077ca0ab: 41804c244002                 or       byte ptr [r12 + 0x40], 2
00000000077ca0b1: 4d8b7c2410                   mov      r15, qword ptr [r12 + 0x10]
00000000077ca0b6: 4d85ff                       test     r15, r15
00000000077ca0b9: 751a                         jne      0x77ca0d5
00000000077ca0bb: bf30000000                   mov      edi, 0x30
00000000077ca0c0: e8db3cea02                   call     0xa66dda0
00000000077ca0c5: 4989c7                       mov      r15, rax
00000000077ca0c8: 4889c7                       mov      rdi, rax
00000000077ca0cb: e860c45000                   call     0x7cd6530
00000000077ca0d0: 4d897c2410                   mov      qword ptr [r12 + 0x10], r15
00000000077ca0d5: 41804f2c08                   or       byte ptr [r15 + 0x2c], 8
00000000077ca0da: 4d8b6720                     mov      r12, qword ptr [r15 + 0x20]
00000000077ca0de: 4d85e4                       test     r12, r12
00000000077ca0e1: 7519                         jne      0x77ca0fc
00000000077ca0e3: bf20000000                   mov      edi, 0x20
00000000077ca0e8: e8b33cea02                   call     0xa66dda0
00000000077ca0ed: 4989c4                       mov      r12, rax
00000000077ca0f0: 4889c7                       mov      rdi, rax
00000000077ca0f3: e8b8633d00                   call     0x7ba04b0
00000000077ca0f8: 4d896720                     mov      qword ptr [r15 + 0x20], r12
00000000077ca0fc: 41804c241801                 or       byte ptr [r12 + 0x18], 1
00000000077ca102: 41c744241001000000           mov      dword ptr [r12 + 0x10], 1
00000000077ca10b: 488b8560fdffff               mov      rax, qword ptr [rbp - 0x2a0]
00000000077ca112: 0fb600                       movzx    eax, byte ptr [rax]
00000000077ca115: 4c8b8568fdffff               mov      r8, qword ptr [rbp - 0x298]
00000000077ca11c: 41c6400101                   mov      byte ptr [r8 + 1], 1
00000000077ca121: 488b9d78ffffff               mov      rbx, qword ptr [rbp - 0x88]
00000000077ca128: 48b9aaaaaaaaaaaaaaaa         movabs   rcx, 0xaaaaaaaaaaaaaaaa
00000000077ca132: 48894b30                     mov      qword ptr [rbx + 0x30], rcx
00000000077ca136: 0f280563f558f9               movaps   xmm0, xmmword ptr [rip - 0x6a70a9d]
00000000077ca13d: 0f114320                     movups   xmmword ptr [rbx + 0x20], xmm0
00000000077ca141: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000077ca145: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077ca148: 488b4d90                     mov      rcx, qword ptr [rbp - 0x70]
00000000077ca14c: 4c8b39                       mov      r15, qword ptr [rcx]
00000000077ca14f: 418800                       mov      byte ptr [r8], al
00000000077ca152: 4889df                       mov      rdi, rbx
00000000077ca155: 488bb5d8feffff               mov      rsi, qword ptr [rbp - 0x128]
00000000077ca15c: 4c89fa                       mov      rdx, r15
00000000077ca15f: 4c89c1                       mov      rcx, r8
00000000077ca162: e889390000                   call     0x77cdaf0
00000000077ca167: 4c8d7318                     lea      r14, [rbx + 0x18]
00000000077ca16b: 488b95f8feffff               mov      rdx, qword ptr [rbp - 0x108]
00000000077ca172: 4c8932                       mov      qword ptr [rdx], r14
00000000077ca175: 0fb603                       movzx    eax, byte ptr [rbx]
00000000077ca178: a801                         test     al, 1
00000000077ca17a: 4c8ba5d0fdffff               mov      r12, qword ptr [rbp - 0x230]
00000000077ca181: 7471                         je       0x77ca1f4
00000000077ca183: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000077ca187: 4885c0                       test     rax, rax
00000000077ca18a: 746f                         je       0x77ca1fb
00000000077ca18c: 41804d1c02                   or       byte ptr [r13 + 0x1c], 2
00000000077ca191: 498b5d10                     mov      rbx, qword ptr [r13 + 0x10]
00000000077ca195: 4885db                       test     rbx, rbx
00000000077ca198: 7519                         jne      0x77ca1b3
00000000077ca19a: bfd8000000                   mov      edi, 0xd8
00000000077ca19f: e8fc3bea02                   call     0xa66dda0
00000000077ca1a4: 4889c3                       mov      rbx, rax
00000000077ca1a7: 4889c7                       mov      rdi, rax
00000000077ca1aa: e891de5000                   call     0x7cd8040
00000000077ca1af: 49895d10                     mov      qword ptr [r13 + 0x10], rbx
00000000077ca1b3: 808bd000000002               or       byte ptr [rbx + 0xd0], 2
00000000077ca1ba: 4c8b7310                     mov      r14, qword ptr [rbx + 0x10]
00000000077ca1be: 4d85f6                       test     r14, r14
00000000077ca1c1: 7519                         jne      0x77ca1dc
00000000077ca1c3: bf48000000                   mov      edi, 0x48
00000000077ca1c8: e8d33bea02                   call     0xa66dda0
00000000077ca1cd: 4989c6                       mov      r14, rax
00000000077ca1d0: 4889c7                       mov      rdi, rax
00000000077ca1d3: e888a35000                   call     0x7cd4560
00000000077ca1d8: 4c897310                     mov      qword ptr [rbx + 0x10], r14
00000000077ca1dc: 41804e4010                   or       byte ptr [r14 + 0x40], 0x10
00000000077ca1e1: 498b5e28                     mov      rbx, qword ptr [r14 + 0x28]
00000000077ca1e5: 4885db                       test     rbx, rbx
00000000077ca1e8: 745b                         je       0x77ca245
00000000077ca1ea: 4885db                       test     rbx, rbx
00000000077ca1ed: 7578                         jne      0x77ca267
00000000077ca1ef: e9e0070000                   jmp      0x77ca9d4
00000000077ca1f4: d1e8                         shr      eax, 1
00000000077ca1f6: 4885c0                       test     rax, rax
00000000077ca1f9: 7591                         jne      0x77ca18c
00000000077ca1fb: 41c60424aa                   mov      byte ptr [r12], 0xaa
00000000077ca200: e80b71beff                   call     0x73b1310
00000000077ca205: 89c3                         mov      ebx, eax
00000000077ca207: 41880424                     mov      byte ptr [r12], al
00000000077ca20b: bf03000000                   mov      edi, 3
00000000077ca210: e87bca9401                   call     0x9116c90
00000000077ca215: 85c0                         test     eax, eax
00000000077ca217: 0f84f8000000                 je       0x77ca315
00000000077ca21d: 488b9d20ffffff               mov      rbx, qword ptr [rbp - 0xe0]
00000000077ca224: 4889df                       mov      rdi, rbx
00000000077ca227: e8a487beff                   call     0x73b29d0
00000000077ca22c: f60301                       test     byte ptr [rbx], 1
00000000077ca22f: 4c8ba588fdffff               mov      r12, qword ptr [rbp - 0x278]
00000000077ca236: 0f84e5000000                 je       0x77ca321
00000000077ca23c: 488b5310                     mov      rdx, qword ptr [rbx + 0x10]
00000000077ca240: e9e0000000                   jmp      0x77ca325
00000000077ca245: bf20000000                   mov      edi, 0x20
00000000077ca24a: e8513bea02                   call     0xa66dda0
00000000077ca24f: 4889c3                       mov      rbx, rax
00000000077ca252: 4889c7                       mov      rdi, rax
00000000077ca255: e856623d00                   call     0x7ba04b0
00000000077ca25a: 49895e28                     mov      qword ptr [r14 + 0x28], rbx
00000000077ca25e: 4885db                       test     rbx, rbx
00000000077ca261: 0f846d070000                 je       0x77ca9d4
00000000077ca267: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077ca26e: 440fb630                     movzx    r14d, byte ptr [rax]
00000000077ca272: 41f6c601                     test     r14b, 1
00000000077ca276: 740a                         je       0x77ca282
00000000077ca278: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077ca27c: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077ca280: eb07                         jmp      0x77ca289
00000000077ca282: 4c8d7801                     lea      r15, [rax + 1]
00000000077ca286: 41d1ee                       shr      r14d, 1
00000000077ca289: 834b1802                     or       dword ptr [rbx + 0x18], 2
00000000077ca28d: 488b7b08                     mov      rdi, qword ptr [rbx + 8]
00000000077ca291: 483b3d68923203               cmp      rdi, qword ptr [rip + 0x3329268] ; reloc 0xad176f0
00000000077ca298: 751f                         jne      0x77ca2b9
00000000077ca29a: bf18000000                   mov      edi, 0x18
00000000077ca29f: e8fc3aea02                   call     0xa66dda0
00000000077ca2a4: 4889c7                       mov      rdi, rax
00000000077ca2a7: 0f57c0                       xorps    xmm0, xmm0
00000000077ca2aa: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077ca2ad: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077ca2b5: 48894308                     mov      qword ptr [rbx + 8], rax
00000000077ca2b9: 4c89fe                       mov      rsi, r15
00000000077ca2bc: 4c89f2                       mov      rdx, r14
00000000077ca2bf: e83c2cd4fc                   call     0x450cf00
00000000077ca2c4: 488d0561145003               lea      rax, [rip + 0x3501461]
00000000077ca2cb: 8b00                         mov      eax, dword ptr [rax]
00000000077ca2cd: 89c1                         mov      ecx, eax
00000000077ca2cf: f7d1                         not      ecx
00000000077ca2d1: 0fafc8                       imul     ecx, eax
00000000077ca2d4: f6c101                       test     cl, 1
00000000077ca2d7: 0f94c1                       sete     cl
00000000077ca2da: 488d0547145003               lea      rax, [rip + 0x3501447]
00000000077ca2e1: 83380a                       cmp      dword ptr [rax], 0xa
00000000077ca2e4: 0f9cc0                       setl     al
00000000077ca2e7: 08c8                         or       al, cl
00000000077ca2e9: 0f1f8000000000               nop      dword ptr [rax]
00000000077ca2f0: 84c0                         test     al, al
00000000077ca2f2: 74fc                         je       0x77ca2f0
00000000077ca2f4: 488b8d78ffffff               mov      rcx, qword ptr [rbp - 0x88]
00000000077ca2fb: 0fb601                       movzx    eax, byte ptr [rcx]
00000000077ca2fe: a801                         test     al, 1
00000000077ca300: 7405                         je       0x77ca307
00000000077ca302: 8b4108                       mov      eax, dword ptr [rcx + 8]
00000000077ca305: eb02                         jmp      0x77ca309
00000000077ca307: d1e8                         shr      eax, 1
00000000077ca309: 834b1801                     or       dword ptr [rbx + 0x18], 1
00000000077ca30d: 894310                       mov      dword ptr [rbx + 0x10], eax
00000000077ca310: e9bf060000                   jmp      0x77ca9d4
00000000077ca315: 4c8ba5f8feffff               mov      r12, qword ptr [rbp - 0x108]
00000000077ca31c: e963010000                   jmp      0x77ca484
00000000077ca321: 488d5301                     lea      rdx, [rbx + 1]
00000000077ca325: 488d0d606a80f9               lea      rcx, [rip - 0x67f95a0]
00000000077ca32c: 4c8d0587e966f9               lea      r8, [rip - 0x6991679]
00000000077ca333: 488bbd00ffffff               mov      rdi, qword ptr [rbp - 0x100]
00000000077ca33a: be03000000                   mov      esi, 3
00000000077ca33f: 41b98e030000                 mov      r9d, 0x38e
00000000077ca345: 6a00                         push     0
00000000077ca347: 6a00                         push     0
00000000077ca349: e852729401                   call     0x91115a0
00000000077ca34e: 4883c410                     add      rsp, 0x10
00000000077ca352: 488b9d28ffffff               mov      rbx, qword ptr [rbp - 0xd8]
00000000077ca359: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077ca35d: 4c8b38                       mov      r15, qword ptr [rax]
00000000077ca360: 49c7042400000000             mov      qword ptr [r12], 0
00000000077ca368: 41f60701                     test     byte ptr [r15], 1
00000000077ca36c: 7406                         je       0x77ca374
00000000077ca36e: 498b4710                     mov      rax, qword ptr [r15 + 0x10]
00000000077ca372: eb04                         jmp      0x77ca378
00000000077ca374: 498d4701                     lea      rax, [r15 + 1]
00000000077ca378: 49890424                     mov      qword ptr [r12], rax
00000000077ca37c: 41c644240800                 mov      byte ptr [r12 + 8], 0
00000000077ca382: 488b85f8feffff               mov      rax, qword ptr [rbp - 0x108]
00000000077ca389: 4c8b30                       mov      r14, qword ptr [rax]
00000000077ca38c: 4889df                       mov      rdi, rbx
00000000077ca38f: 4c89f6                       mov      rsi, r14
00000000077ca392: e8c93b0000                   call     0x77cdf60
00000000077ca397: f60301                       test     byte ptr [rbx], 1
00000000077ca39a: 488b8dd0fdffff               mov      rcx, qword ptr [rbp - 0x230]
00000000077ca3a1: 7406                         je       0x77ca3a9
00000000077ca3a3: 488b4310                     mov      rax, qword ptr [rbx + 0x10]
00000000077ca3a7: eb04                         jmp      0x77ca3ad
00000000077ca3a9: 488d4301                     lea      rax, [rbx + 1]
00000000077ca3ad: 488b9590fdffff               mov      rdx, qword ptr [rbp - 0x270]
00000000077ca3b4: 488902                       mov      qword ptr [rdx], rax
00000000077ca3b7: c6420800                     mov      byte ptr [rdx + 8], 0
00000000077ca3bb: 0fb619                       movzx    ebx, byte ptr [rcx]
00000000077ca3be: 84db                         test     bl, bl
00000000077ca3c0: 488d05a32459f9               lea      rax, [rip - 0x6a6db5d] ; 'false'
00000000077ca3c7: 488d0d313d6ff9               lea      rcx, [rip - 0x690c2cf] ; 'true'
00000000077ca3ce: 480f44c8                     cmove    rcx, rax
00000000077ca3d2: 488b8598fdffff               mov      rax, qword ptr [rbp - 0x268]
00000000077ca3d9: 488908                       mov      qword ptr [rax], rcx
00000000077ca3dc: c6400800                     mov      byte ptr [rax + 8], 0
00000000077ca3e0: 4c89a540feffff               mov      qword ptr [rbp - 0x1c0], r12
00000000077ca3e7: 48899548feffff               mov      qword ptr [rbp - 0x1b8], rdx
00000000077ca3ee: 48898550feffff               mov      qword ptr [rbp - 0x1b0], rax
00000000077ca3f5: 0f57c0                       xorps    xmm0, xmm0
00000000077ca3f8: 0f118558feffff               movups   xmmword ptr [rbp - 0x1a8], xmm0
00000000077ca3ff: 0f118568feffff               movups   xmmword ptr [rbp - 0x198], xmm0
00000000077ca406: 0f118578feffff               movups   xmmword ptr [rbp - 0x188], xmm0
00000000077ca40d: 0f118588feffff               movups   xmmword ptr [rbp - 0x178], xmm0
00000000077ca414: 0f118598feffff               movups   xmmword ptr [rbp - 0x168], xmm0
00000000077ca41b: 0f1185a8feffff               movups   xmmword ptr [rbp - 0x158], xmm0
00000000077ca422: 48c785b8feffff00000000       mov      qword ptr [rbp - 0x148], 0
00000000077ca42d: 488d3587f069f9               lea      rsi, [rip - 0x6960f79]
00000000077ca434: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077ca43b: 488bbd00ffffff               mov      rdi, qword ptr [rbp - 0x100]
00000000077ca442: e8a9749401                   call     0x91118f0
00000000077ca447: 488b8528ffffff               mov      rax, qword ptr [rbp - 0xd8]
00000000077ca44e: f60001                       test     byte ptr [rax], 1
00000000077ca451: 4c8ba5f8feffff               mov      r12, qword ptr [rbp - 0x108]
00000000077ca458: 7409                         je       0x77ca463
00000000077ca45a: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca45e: e8ddfcd3fc                   call     0x450a140
00000000077ca463: 488bbd00ffffff               mov      rdi, qword ptr [rbp - 0x100]
00000000077ca46a: e8c1719401                   call     0x9111630
00000000077ca46f: 488b8520ffffff               mov      rax, qword ptr [rbp - 0xe0]
00000000077ca476: f60001                       test     byte ptr [rax], 1
00000000077ca479: 7409                         je       0x77ca484
00000000077ca47b: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca47f: e8bcfcd3fc                   call     0x450a140
00000000077ca484: 31c0                         xor      eax, eax
00000000077ca486: 84db                         test     bl, bl
00000000077ca488: 0f8496030000                 je       0x77ca824
00000000077ca48e: 41833e00                     cmp      dword ptr [r14], 0
00000000077ca492: 0f848c030000                 je       0x77ca824
00000000077ca498: 488b8508feffff               mov      rax, qword ptr [rbp - 0x1f8]
00000000077ca49f: 48b9aaaaaaaaaaaaaaaa         movabs   rcx, 0xaaaaaaaaaaaaaaaa
00000000077ca4a9: 488908                       mov      qword ptr [rax], rcx
00000000077ca4ac: 488b85d8feffff               mov      rax, qword ptr [rbp - 0x128]
00000000077ca4b3: 488d9858020000               lea      rbx, [rax + 0x258]
00000000077ca4ba: 4889df                       mov      rdi, rbx
00000000077ca4bd: 4c89fe                       mov      rsi, r15
00000000077ca4c0: e83bfb43fd                   call     0x4c0a000
00000000077ca4c5: 4c8bbde8fdffff               mov      r15, qword ptr [rbp - 0x218]
00000000077ca4cc: 488b8d08feffff               mov      rcx, qword ptr [rbp - 0x1f8]
00000000077ca4d3: 488901                       mov      qword ptr [rcx], rax
00000000077ca4d6: 4885c0                       test     rax, rax
00000000077ca4d9: 7434                         je       0x77ca50f
00000000077ca4db: bf02000000                   mov      edi, 2
00000000077ca4e0: e8abc79401                   call     0x9116c90
00000000077ca4e5: 85c0                         test     eax, eax
00000000077ca4e7: 4c8bb538feffff               mov      r14, qword ptr [rbp - 0x1c8]
00000000077ca4ee: 0f84d8020000                 je       0x77ca7cc
00000000077ca4f4: 4c89f7                       mov      rdi, r14
00000000077ca4f7: e8d484beff                   call     0x73b29d0
00000000077ca4fc: 41f60601                     test     byte ptr [r14], 1
00000000077ca500: 0f843f010000                 je       0x77ca645
00000000077ca506: 498b5610                     mov      rdx, qword ptr [r14 + 0x10]
00000000077ca50a: e93a010000                   jmp      0x77ca649
00000000077ca50f: 4c8bad68ffffff               mov      r13, qword ptr [rbp - 0x98]
00000000077ca516: 498d5d20                     lea      rbx, [r13 + 0x20]
00000000077ca51a: 0f57c0                       xorps    xmm0, xmm0
00000000077ca51d: 410f114520                   movups   xmmword ptr [r13 + 0x20], xmm0
00000000077ca522: 410f114510                   movups   xmmword ptr [r13 + 0x10], xmm0
00000000077ca527: 410f114500                   movups   xmmword ptr [r13], xmm0
00000000077ca52c: bf70020000                   mov      edi, 0x270
00000000077ca531: e86a38ea02                   call     0xa66dda0
00000000077ca536: 4989c7                       mov      r15, rax
00000000077ca539: 0f57c0                       xorps    xmm0, xmm0
00000000077ca53c: 0f114008                     movups   xmmword ptr [rax + 8], xmm0
00000000077ca540: 488d0579f11803               lea      rax, [rip + 0x318f179]
00000000077ca547: 4883c010                     add      rax, 0x10
00000000077ca54b: 498907                       mov      qword ptr [r15], rax
00000000077ca54e: 4d8d6718                     lea      r12, [r15 + 0x18]
00000000077ca552: ba28020000                   mov      edx, 0x228
00000000077ca557: 4c89e7                       mov      rdi, r12
00000000077ca55a: 31f6                         xor      esi, esi
00000000077ca55c: e86f3dea02                   call     0xa66e2d0 ; PLT memset
00000000077ca561: 41c7471801000000             mov      dword ptr [r15 + 0x18], 1
00000000077ca569: 4c89ff                       mov      rdi, r15
00000000077ca56c: 4883ef80                     sub      rdi, -0x80
00000000077ca570: 0f57c0                       xorps    xmm0, xmm0
00000000077ca573: 410f118700020000             movups   xmmword ptr [r15 + 0x200], xmm0
00000000077ca57b: 410f118709020000             movups   xmmword ptr [r15 + 0x209], xmm0
00000000077ca583: ba79010000                   mov      edx, 0x179
00000000077ca588: 31f6                         xor      esi, esi
00000000077ca58a: e8413dea02                   call     0xa66e2d0 ; PLT memset
00000000077ca58f: 0f57c0                       xorps    xmm0, xmm0
00000000077ca592: 410f118720020000             movups   xmmword ptr [r15 + 0x220], xmm0
00000000077ca59a: 410f11872a020000             movups   xmmword ptr [r15 + 0x22a], xmm0
00000000077ca5a2: 410f118740020000             movups   xmmword ptr [r15 + 0x240], xmm0
00000000077ca5aa: 410f118750020000             movups   xmmword ptr [r15 + 0x250], xmm0
00000000077ca5b2: 410f118760020000             movups   xmmword ptr [r15 + 0x260], xmm0
00000000077ca5ba: 4d896520                     mov      qword ptr [r13 + 0x20], r12
00000000077ca5be: 4d897d28                     mov      qword ptr [r13 + 0x28], r15
00000000077ca5c2: 0f2805d7f058f9               movaps   xmm0, xmmword ptr [rip - 0x6a70f29]
00000000077ca5c9: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077ca5cd: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077ca5d0: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077ca5d4: 0f114020                     movups   xmmword ptr [rax + 0x20], xmm0
00000000077ca5d8: 0f114030                     movups   xmmword ptr [rax + 0x30], xmm0
00000000077ca5dc: 0f114040                     movups   xmmword ptr [rax + 0x40], xmm0
00000000077ca5e0: 418b06                       mov      eax, dword ptr [r14]
00000000077ca5e3: ffc8                         dec      eax
00000000077ca5e5: 83f803                       cmp      eax, 3
00000000077ca5e8: 48895da8                     mov      qword ptr [rbp - 0x58], rbx
00000000077ca5ec: 0f877b070000                 ja       0x77cad6d
00000000077ca5f2: 488d0d93f07efa               lea      rcx, [rip - 0x5810f6d]
00000000077ca5f9: 48630481                     movsxd   rax, dword ptr [rcx + rax*4]
00000000077ca5fd: 4801c8                       add      rax, rcx
00000000077ca600: ffe0                         jmp      rax
00000000077ca602: e8692de5ff                   call     0x761d370
00000000077ca607: 4989c6                       mov      r14, rax
00000000077ca60a: 4889c7                       mov      rdi, rax
00000000077ca60d: e84e3bea02                   call     0xa66e160 ; PLT strlen
00000000077ca612: 4883f8f7                     cmp      rax, -9
00000000077ca616: 0f877c0b0000                 ja       0x77cb198
00000000077ca61c: 4989c7                       mov      r15, rax
00000000077ca61f: 4883f817                     cmp      rax, 0x17
00000000077ca623: 0f83eb070000                 jae      0x77cae14
00000000077ca629: 438d043f                     lea      eax, [r15 + r15]
00000000077ca62d: 488b4db8                     mov      rcx, qword ptr [rbp - 0x48]
00000000077ca631: 8801                         mov      byte ptr [rcx], al
00000000077ca633: 4c8d6101                     lea      r12, [rcx + 1]
00000000077ca637: 4d85ff                       test     r15, r15
00000000077ca63a: 0f850b080000                 jne      0x77cae4b
00000000077ca640: e94d080000                   jmp      0x77cae92
00000000077ca645: 498d5601                     lea      rdx, [r14 + 1]
00000000077ca649: 488d0d3c6780f9               lea      rcx, [rip - 0x67f98c4]
00000000077ca650: 4c8d0563e666f9               lea      r8, [rip - 0x699199d]
00000000077ca657: 4c89ff                       mov      rdi, r15
00000000077ca65a: be02000000                   mov      esi, 2
00000000077ca65f: 41b993030000                 mov      r9d, 0x393
00000000077ca665: 6a00                         push     0
00000000077ca667: 6a00                         push     0
00000000077ca669: e8326f9401                   call     0x91115a0
00000000077ca66e: 4883c410                     add      rsp, 0x10
00000000077ca672: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077ca676: 488b00                       mov      rax, qword ptr [rax]
00000000077ca679: 488b8d10feffff               mov      rcx, qword ptr [rbp - 0x1f0]
00000000077ca680: 48c70100000000               mov      qword ptr [rcx], 0
00000000077ca687: f60001                       test     byte ptr [rax], 1
00000000077ca68a: 7406                         je       0x77ca692
00000000077ca68c: 488b4010                     mov      rax, qword ptr [rax + 0x10]
00000000077ca690: eb03                         jmp      0x77ca695
00000000077ca692: 48ffc0                       inc      rax
00000000077ca695: 488b8d10feffff               mov      rcx, qword ptr [rbp - 0x1f0]
00000000077ca69c: 488901                       mov      qword ptr [rcx], rax
00000000077ca69f: c6410800                     mov      byte ptr [rcx + 8], 0
00000000077ca6a3: 498b3424                     mov      rsi, qword ptr [r12]
00000000077ca6a7: 4c8ba550ffffff               mov      r12, qword ptr [rbp - 0xb0]
00000000077ca6ae: 4c89e7                       mov      rdi, r12
00000000077ca6b1: e8aa380000                   call     0x77cdf60
00000000077ca6b6: 41f6042401                   test     byte ptr [r12], 1
00000000077ca6bb: 7407                         je       0x77ca6c4
00000000077ca6bd: 498b442410                   mov      rax, qword ptr [r12 + 0x10]
00000000077ca6c2: eb05                         jmp      0x77ca6c9
00000000077ca6c4: 498d442401                   lea      rax, [r12 + 1]
00000000077ca6c9: 488b8da8fdffff               mov      rcx, qword ptr [rbp - 0x258]
00000000077ca6d0: 488901                       mov      qword ptr [rcx], rax
00000000077ca6d3: c6410800                     mov      byte ptr [rcx + 8], 0
00000000077ca6d7: 488b8510feffff               mov      rax, qword ptr [rbp - 0x1f0]
00000000077ca6de: 48898540feffff               mov      qword ptr [rbp - 0x1c0], rax
00000000077ca6e5: 48898d48feffff               mov      qword ptr [rbp - 0x1b8], rcx
00000000077ca6ec: 0f57c0                       xorps    xmm0, xmm0
00000000077ca6ef: 0f298550feffff               movaps   xmmword ptr [rbp - 0x1b0], xmm0
00000000077ca6f6: 0f298560feffff               movaps   xmmword ptr [rbp - 0x1a0], xmm0
00000000077ca6fd: 0f298570feffff               movaps   xmmword ptr [rbp - 0x190], xmm0
00000000077ca704: 0f298580feffff               movaps   xmmword ptr [rbp - 0x180], xmm0
00000000077ca70b: 0f298590feffff               movaps   xmmword ptr [rbp - 0x170], xmm0
00000000077ca712: 0f2985a0feffff               movaps   xmmword ptr [rbp - 0x160], xmm0
00000000077ca719: 0f2985b0feffff               movaps   xmmword ptr [rbp - 0x150], xmm0
00000000077ca720: 488d35e8c67ef9               lea      rsi, [rip - 0x6813918]
00000000077ca727: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077ca72e: 4c89ff                       mov      rdi, r15
00000000077ca731: e8ba719401                   call     0x91118f0
00000000077ca736: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
00000000077ca740: 488b8550ffffff               mov      rax, qword ptr [rbp - 0xb0]
00000000077ca747: f60001                       test     byte ptr [rax], 1
00000000077ca74a: 7410                         je       0x77ca75c
00000000077ca74c: 488b8550ffffff               mov      rax, qword ptr [rbp - 0xb0]
00000000077ca753: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca757: e8e4f9d3fc                   call     0x450a140
00000000077ca75c: 4c89ff                       mov      rdi, r15
00000000077ca75f: e8cc6e9401                   call     0x9111630
00000000077ca764: 41f60601                     test     byte ptr [r14], 1
00000000077ca768: 7409                         je       0x77ca773
00000000077ca76a: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077ca76e: e8cdf9d3fc                   call     0x450a140
00000000077ca773: 488d05ae0f5003               lea      rax, [rip + 0x3500fae]
00000000077ca77a: 83380a                       cmp      dword ptr [rax], 0xa
00000000077ca77d: 7c4d                         jl       0x77ca7cc
00000000077ca77f: 488d05a60f5003               lea      rax, [rip + 0x3500fa6]
00000000077ca786: 8b00                         mov      eax, dword ptr [rax]
00000000077ca788: 89c1                         mov      ecx, eax
00000000077ca78a: f7d1                         not      ecx
00000000077ca78c: 0fafc8                       imul     ecx, eax
00000000077ca78f: 83e101                       and      ecx, 1
00000000077ca792: 7438                         je       0x77ca7cc
00000000077ca794: 488b8550ffffff               mov      rax, qword ptr [rbp - 0xb0]
00000000077ca79b: f60001                       test     byte ptr [rax], 1
00000000077ca79e: 7410                         je       0x77ca7b0
00000000077ca7a0: 488b8550ffffff               mov      rax, qword ptr [rbp - 0xb0]
00000000077ca7a7: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca7ab: e890f9d3fc                   call     0x450a140
00000000077ca7b0: 4c89ff                       mov      rdi, r15
00000000077ca7b3: e8786e9401                   call     0x9111630
00000000077ca7b8: 41f60601                     test     byte ptr [r14], 1
00000000077ca7bc: 7482                         je       0x77ca740
00000000077ca7be: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077ca7c2: e879f9d3fc                   call     0x450a140
00000000077ca7c7: e974ffffff                   jmp      0x77ca740
00000000077ca7cc: 488b8508feffff               mov      rax, qword ptr [rbp - 0x1f8]
00000000077ca7d3: 488b10                       mov      rdx, qword ptr [rax]
00000000077ca7d6: 488dbd40feffff               lea      rdi, [rbp - 0x1c0]
00000000077ca7dd: 4889de                       mov      rsi, rbx
00000000077ca7e0: e8abac65fd                   call     0x4e25490
00000000077ca7e5: 488bbd40feffff               mov      rdi, qword ptr [rbp - 0x1c0]
00000000077ca7ec: 48c78540feffff00000000       mov      qword ptr [rbp - 0x1c0], 0
00000000077ca7f7: 4885ff                       test     rdi, rdi
00000000077ca7fa: 7426                         je       0x77ca822
00000000077ca7fc: 80bd50feffff00               cmp      byte ptr [rbp - 0x1b0], 0
00000000077ca803: 7418                         je       0x77ca81d
00000000077ca805: f6471001                     test     byte ptr [rdi + 0x10], 1
00000000077ca809: 7412                         je       0x77ca81d
00000000077ca80b: 488b4720                     mov      rax, qword ptr [rdi + 0x20]
00000000077ca80f: 4889fb                       mov      rbx, rdi
00000000077ca812: 4889c7                       mov      rdi, rax
00000000077ca815: e826f9d3fc                   call     0x450a140
00000000077ca81a: 4889df                       mov      rdi, rbx
00000000077ca81d: e81ef9d3fc                   call     0x450a140
00000000077ca822: 31c0                         xor      eax, eax
00000000077ca824: 85c0                         test     eax, eax
00000000077ca826: 0f84a8010000                 je       0x77ca9d4
00000000077ca82c: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077ca833: 488d5820                     lea      rbx, [rax + 0x20]
00000000077ca837: eb0f                         jmp      0x77ca848
00000000077ca839: 0f1f8000000000               nop      dword ptr [rax]
00000000077ca840: 4c89ef                       mov      rdi, r13
00000000077ca843: e8180f5100                   call     0x7cdb760
00000000077ca848: 4889df                       mov      rdi, rbx
00000000077ca84b: e840ced6fc                   call     0x4537690
00000000077ca850: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077ca857: f60001                       test     byte ptr [rax], 1
00000000077ca85a: 7410                         je       0x77ca86c
00000000077ca85c: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077ca863: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca867: e8d4f8d3fc                   call     0x450a140
00000000077ca86c: 488b45a0                     mov      rax, qword ptr [rbp - 0x60]
00000000077ca870: f60001                       test     byte ptr [rax], 1
00000000077ca873: 740d                         je       0x77ca882
00000000077ca875: 488b45a0                     mov      rax, qword ptr [rbp - 0x60]
00000000077ca879: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca87d: e8bef8d3fc                   call     0x450a140
00000000077ca882: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077ca886: f60001                       test     byte ptr [rax], 1
00000000077ca889: 740d                         je       0x77ca898
00000000077ca88b: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077ca88f: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca893: e8a8f8d3fc                   call     0x450a140
00000000077ca898: 488b8530ffffff               mov      rax, qword ptr [rbp - 0xd0]
00000000077ca89f: f60001                       test     byte ptr [rax], 1
00000000077ca8a2: 7410                         je       0x77ca8b4
00000000077ca8a4: 488b8530ffffff               mov      rax, qword ptr [rbp - 0xd0]
00000000077ca8ab: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca8af: e88cf8d3fc                   call     0x450a140
00000000077ca8b4: 488b8558ffffff               mov      rax, qword ptr [rbp - 0xa8]
00000000077ca8bb: f60001                       test     byte ptr [rax], 1
00000000077ca8be: 7410                         je       0x77ca8d0
00000000077ca8c0: 488b8558ffffff               mov      rax, qword ptr [rbp - 0xa8]
00000000077ca8c7: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca8cb: e870f8d3fc                   call     0x450a140
00000000077ca8d0: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077ca8d4: f60001                       test     byte ptr [rax], 1
00000000077ca8d7: 740d                         je       0x77ca8e6
00000000077ca8d9: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077ca8dd: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca8e1: e85af8d3fc                   call     0x450a140
00000000077ca8e6: 4c89ef                       mov      rdi, r13
00000000077ca8e9: e8720e5100                   call     0x7cdb760
00000000077ca8ee: 488d05330e5003               lea      rax, [rip + 0x3500e33]
00000000077ca8f5: 83380a                       cmp      dword ptr [rax], 0xa
00000000077ca8f8: 0f8cc0000000                 jl       0x77ca9be
00000000077ca8fe: 488d05270e5003               lea      rax, [rip + 0x3500e27]
00000000077ca905: 8b00                         mov      eax, dword ptr [rax]
00000000077ca907: 89c1                         mov      ecx, eax
00000000077ca909: f7d1                         not      ecx
00000000077ca90b: 0fafc8                       imul     ecx, eax
00000000077ca90e: 83e101                       and      ecx, 1
00000000077ca911: 0f84a7000000                 je       0x77ca9be
00000000077ca917: 4889df                       mov      rdi, rbx
00000000077ca91a: e871cdd6fc                   call     0x4537690
00000000077ca91f: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077ca926: f60001                       test     byte ptr [rax], 1
00000000077ca929: 7410                         je       0x77ca93b
00000000077ca92b: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077ca932: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca936: e805f8d3fc                   call     0x450a140
00000000077ca93b: 488b45a0                     mov      rax, qword ptr [rbp - 0x60]
00000000077ca93f: f60001                       test     byte ptr [rax], 1
00000000077ca942: 740d                         je       0x77ca951
00000000077ca944: 488b45a0                     mov      rax, qword ptr [rbp - 0x60]
00000000077ca948: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca94c: e8eff7d3fc                   call     0x450a140
00000000077ca951: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077ca955: f60001                       test     byte ptr [rax], 1
00000000077ca958: 740d                         je       0x77ca967
00000000077ca95a: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077ca95e: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca962: e8d9f7d3fc                   call     0x450a140
00000000077ca967: 488b8530ffffff               mov      rax, qword ptr [rbp - 0xd0]
00000000077ca96e: f60001                       test     byte ptr [rax], 1
00000000077ca971: 7410                         je       0x77ca983
00000000077ca973: 488b8530ffffff               mov      rax, qword ptr [rbp - 0xd0]
00000000077ca97a: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca97e: e8bdf7d3fc                   call     0x450a140
00000000077ca983: 488b8558ffffff               mov      rax, qword ptr [rbp - 0xa8]
00000000077ca98a: f60001                       test     byte ptr [rax], 1
00000000077ca98d: 7410                         je       0x77ca99f
00000000077ca98f: 488b8558ffffff               mov      rax, qword ptr [rbp - 0xa8]
00000000077ca996: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca99a: e8a1f7d3fc                   call     0x450a140
00000000077ca99f: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077ca9a3: f60001                       test     byte ptr [rax], 1
00000000077ca9a6: 0f8494feffff                 je       0x77ca840
00000000077ca9ac: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077ca9b0: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ca9b4: e887f7d3fc                   call     0x450a140
00000000077ca9b9: e982feffff                   jmp      0x77ca840
00000000077ca9be: 488b8568ffffff               mov      rax, qword ptr [rbp - 0x98]
00000000077ca9c5: 488d65d8                     lea      rsp, [rbp - 0x28]
00000000077ca9c9: 5b                           pop      rbx
00000000077ca9ca: 415c                         pop      r12
00000000077ca9cc: 415d                         pop      r13
00000000077ca9ce: 415e                         pop      r14
00000000077ca9d0: 415f                         pop      r15
00000000077ca9d2: 5d                           pop      rbp
00000000077ca9d3: c3                           ret
00000000077ca9d4: 0f57c0                       xorps    xmm0, xmm0
00000000077ca9d7: 488b5d88                     mov      rbx, qword ptr [rbp - 0x78]
00000000077ca9db: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077ca9de: 48c7431000000000             mov      qword ptr [rbx + 0x10], 0
00000000077ca9e6: 4889df                       mov      rdi, rbx
00000000077ca9e9: 31f6                         xor      esi, esi
00000000077ca9eb: e8d08ed100                   call     0x84e38c0
00000000077ca9f0: 0fb603                       movzx    eax, byte ptr [rbx]
00000000077ca9f3: a801                         test     al, 1
00000000077ca9f5: 740e                         je       0x77caa05
00000000077ca9f7: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000077ca9fb: 4885c0                       test     rax, rax
00000000077ca9fe: 7510                         jne      0x77caa10
00000000077caa00: e932010000                   jmp      0x77cab37
00000000077caa05: d1e8                         shr      eax, 1
00000000077caa07: 4885c0                       test     rax, rax
00000000077caa0a: 0f8427010000                 je       0x77cab37
00000000077caa10: 41804d1c02                   or       byte ptr [r13 + 0x1c], 2
00000000077caa15: 488d05100d5003               lea      rax, [rip + 0x3500d10]
00000000077caa1c: 8b10                         mov      edx, dword ptr [rax]
00000000077caa1e: 488d05030d5003               lea      rax, [rip + 0x3500d03]
00000000077caa25: 8b00                         mov      eax, dword ptr [rax]
00000000077caa27: 4d8b7510                     mov      r14, qword ptr [r13 + 0x10]
00000000077caa2b: 4d85f6                       test     r14, r14
00000000077caa2e: 752b                         jne      0x77caa5b
00000000077caa30: bfd8000000                   mov      edi, 0xd8
00000000077caa35: e86633ea02                   call     0xa66dda0
00000000077caa3a: 4989c6                       mov      r14, rax
00000000077caa3d: 4889c7                       mov      rdi, rax
00000000077caa40: e8fbd55000                   call     0x7cd8040
00000000077caa45: 4d897510                     mov      qword ptr [r13 + 0x10], r14
00000000077caa49: 488d05dc0c5003               lea      rax, [rip + 0x3500cdc]
00000000077caa50: 8b10                         mov      edx, dword ptr [rax]
00000000077caa52: 488d05cf0c5003               lea      rax, [rip + 0x3500ccf]
00000000077caa59: 8b00                         mov      eax, dword ptr [rax]
00000000077caa5b: 89d1                         mov      ecx, edx
00000000077caa5d: f7d1                         not      ecx
00000000077caa5f: 0fafca                       imul     ecx, edx
00000000077caa62: 83e101                       and      ecx, 1
00000000077caa65: 41808ed200000040             or       byte ptr [r14 + 0xd2], 0x40
00000000077caa6d: 498b9ea8000000               mov      rbx, qword ptr [r14 + 0xa8]
00000000077caa74: 4885db                       test     rbx, rbx
00000000077caa77: 7538                         jne      0x77caab1
00000000077caa79: bf20000000                   mov      edi, 0x20
00000000077caa7e: e81d33ea02                   call     0xa66dda0
00000000077caa83: 4889c3                       mov      rbx, rax
00000000077caa86: 4889c7                       mov      rdi, rax
00000000077caa89: e8225a3d00                   call     0x7ba04b0
00000000077caa8e: 49899ea8000000               mov      qword ptr [r14 + 0xa8], rbx
00000000077caa95: 488d05900c5003               lea      rax, [rip + 0x3500c90]
00000000077caa9c: 8b10                         mov      edx, dword ptr [rax]
00000000077caa9e: 488d05830c5003               lea      rax, [rip + 0x3500c83]
00000000077caaa5: 8b00                         mov      eax, dword ptr [rax]
00000000077caaa7: 89d1                         mov      ecx, edx
00000000077caaa9: f7d1                         not      ecx
00000000077caaab: 0fafca                       imul     ecx, edx
00000000077caaae: 83e101                       and      ecx, 1
00000000077caab1: 85c9                         test     ecx, ecx
00000000077caab3: 0f94c1                       sete     cl
00000000077caab6: 83f80a                       cmp      eax, 0xa
00000000077caab9: 0f9cc0                       setl     al
00000000077caabc: 08c8                         or       al, cl
00000000077caabe: 6690                         nop
00000000077caac0: 84c0                         test     al, al
00000000077caac2: 74fc                         je       0x77caac0
00000000077caac4: 488b4588                     mov      rax, qword ptr [rbp - 0x78]
00000000077caac8: 440fb630                     movzx    r14d, byte ptr [rax]
00000000077caacc: 41f6c601                     test     r14b, 1
00000000077caad0: 740a                         je       0x77caadc
00000000077caad2: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077caad6: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077caada: eb07                         jmp      0x77caae3
00000000077caadc: 4c8d7801                     lea      r15, [rax + 1]
00000000077caae0: 41d1ee                       shr      r14d, 1
00000000077caae3: 834b1802                     or       dword ptr [rbx + 0x18], 2
00000000077caae7: 488b7b08                     mov      rdi, qword ptr [rbx + 8]
00000000077caaeb: 483b3d0e8a3203               cmp      rdi, qword ptr [rip + 0x3328a0e] ; reloc 0xad176f0
00000000077caaf2: 751f                         jne      0x77cab13
00000000077caaf4: bf18000000                   mov      edi, 0x18
00000000077caaf9: e8a232ea02                   call     0xa66dda0
00000000077caafe: 4889c7                       mov      rdi, rax
00000000077cab01: 0f57c0                       xorps    xmm0, xmm0
00000000077cab04: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077cab07: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077cab0f: 48894308                     mov      qword ptr [rbx + 8], rax
00000000077cab13: 4c89fe                       mov      rsi, r15
00000000077cab16: 4c89f2                       mov      rdx, r14
00000000077cab19: e8e223d4fc                   call     0x450cf00
00000000077cab1e: 488b4d88                     mov      rcx, qword ptr [rbp - 0x78]
00000000077cab22: 0fb601                       movzx    eax, byte ptr [rcx]
00000000077cab25: a801                         test     al, 1
00000000077cab27: 7405                         je       0x77cab2e
00000000077cab29: 8b4108                       mov      eax, dword ptr [rcx + 8]
00000000077cab2c: eb02                         jmp      0x77cab30
00000000077cab2e: d1e8                         shr      eax, 1
00000000077cab30: 834b1801                     or       dword ptr [rbx + 0x18], 1
00000000077cab34: 894310                       mov      dword ptr [rbx + 0x10], eax
00000000077cab37: 4c8ba570ffffff               mov      r12, qword ptr [rbp - 0x90]
00000000077cab3e: 498d5c2420                   lea      rbx, [r12 + 0x20]
00000000077cab43: 0f57c0                       xorps    xmm0, xmm0
00000000077cab46: 410f11442420                 movups   xmmword ptr [r12 + 0x20], xmm0
00000000077cab4c: 410f11442410                 movups   xmmword ptr [r12 + 0x10], xmm0
00000000077cab52: 410f110424                   movups   xmmword ptr [r12], xmm0
00000000077cab57: bf70020000                   mov      edi, 0x270
00000000077cab5c: e83f32ea02                   call     0xa66dda0
00000000077cab61: 4989c6                       mov      r14, rax
00000000077cab64: 0f57c0                       xorps    xmm0, xmm0
00000000077cab67: 0f114008                     movups   xmmword ptr [rax + 8], xmm0
00000000077cab6b: 488d054eeb1803               lea      rax, [rip + 0x318eb4e]
00000000077cab72: 4883c010                     add      rax, 0x10
00000000077cab76: 498906                       mov      qword ptr [r14], rax
00000000077cab79: 4d8d7e18                     lea      r15, [r14 + 0x18]
00000000077cab7d: ba28020000                   mov      edx, 0x228
00000000077cab82: 4c89ff                       mov      rdi, r15
00000000077cab85: 31f6                         xor      esi, esi
00000000077cab87: e84437ea02                   call     0xa66e2d0 ; PLT memset
00000000077cab8c: 41c7461801000000             mov      dword ptr [r14 + 0x18], 1
00000000077cab94: 4c89f7                       mov      rdi, r14
00000000077cab97: 4883ef80                     sub      rdi, -0x80
00000000077cab9b: 0f57c0                       xorps    xmm0, xmm0
00000000077cab9e: 410f118600020000             movups   xmmword ptr [r14 + 0x200], xmm0
00000000077caba6: 410f118609020000             movups   xmmword ptr [r14 + 0x209], xmm0
00000000077cabae: ba79010000                   mov      edx, 0x179
00000000077cabb3: 31f6                         xor      esi, esi
00000000077cabb5: e81637ea02                   call     0xa66e2d0 ; PLT memset
00000000077cabba: 0f57c0                       xorps    xmm0, xmm0
00000000077cabbd: 410f118620020000             movups   xmmword ptr [r14 + 0x220], xmm0
00000000077cabc5: 410f11862a020000             movups   xmmword ptr [r14 + 0x22a], xmm0
00000000077cabcd: 410f118640020000             movups   xmmword ptr [r14 + 0x240], xmm0
00000000077cabd5: 410f118650020000             movups   xmmword ptr [r14 + 0x250], xmm0
00000000077cabdd: 410f118660020000             movups   xmmword ptr [r14 + 0x260], xmm0
00000000077cabe5: 4d897c2420                   mov      qword ptr [r12 + 0x20], r15
00000000077cabea: 4d89742428                   mov      qword ptr [r12 + 0x28], r14
00000000077cabef: 4c8ba560ffffff               mov      r12, qword ptr [rbp - 0xa0]
00000000077cabf6: 0f2805a3ea58f9               movaps   xmm0, xmmword ptr [rip - 0x6a7155d]
00000000077cabfd: 410f110424                   movups   xmmword ptr [r12], xmm0
00000000077cac02: 410f11442410                 movups   xmmword ptr [r12 + 0x10], xmm0
00000000077cac08: 410f11442420                 movups   xmmword ptr [r12 + 0x20], xmm0
00000000077cac0e: 488b85f0feffff               mov      rax, qword ptr [rbp - 0x110]
00000000077cac15: 488b38                       mov      rdi, qword ptr [rax]
00000000077cac18: e8f32087fe                   call     0x603cd10
00000000077cac1d: 49bf00000000c0d40100         movabs   r15, 0x1d4c000000000
00000000077cac27: 4c8b8518feffff               mov      r8, qword ptr [rbp - 0x1e8]
00000000077cac2e: 4d8938                       mov      qword ptr [r8], r15
00000000077cac31: 4d8d7008                     lea      r14, [r8 + 8]
00000000077cac35: 41c7402400000000             mov      dword ptr [r8 + 0x24], 0
00000000077cac3d: 0f57c0                       xorps    xmm0, xmm0
00000000077cac40: 410f114008                   movups   xmmword ptr [r8 + 8], xmm0
00000000077cac45: 410f114011                   movups   xmmword ptr [r8 + 0x11], xmm0
00000000077cac4a: 4c89e7                       mov      rdi, r12
00000000077cac4d: 4889c6                       mov      rsi, rax
00000000077cac50: 4c89ea                       mov      rdx, r13
00000000077cac53: 488b4d98                     mov      rcx, qword ptr [rbp - 0x68]
00000000077cac57: e8b4340000                   call     0x77ce110
00000000077cac5c: 488d05c50a5003               lea      rax, [rip + 0x3500ac5]
00000000077cac63: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cac66: 0f8c3e0b0000                 jl       0x77cb7aa
00000000077cac6c: 488d05b90a5003               lea      rax, [rip + 0x3500ab9]
00000000077cac73: 8b00                         mov      eax, dword ptr [rax]
00000000077cac75: 89c1                         mov      ecx, eax
00000000077cac77: f7d1                         not      ecx
00000000077cac79: 0fafc8                       imul     ecx, eax
00000000077cac7c: 83e101                       and      ecx, 1
00000000077cac7f: 0f855c0b0000                 jne      0x77cb7e1
00000000077cac85: e9200b0000                   jmp      0x77cb7aa
00000000077cac8a: e82126e5ff                   call     0x761d2b0
00000000077cac8f: 4989c6                       mov      r14, rax
00000000077cac92: 4889c7                       mov      rdi, rax
00000000077cac95: e8c634ea02                   call     0xa66e160 ; PLT strlen
00000000077cac9a: 4883f8f8                     cmp      rax, -8
00000000077cac9e: 0f83f4040000                 jae      0x77cb198
00000000077caca4: 4989c7                       mov      r15, rax
00000000077caca7: 4883f817                     cmp      rax, 0x17
00000000077cacab: 0f8340010000                 jae      0x77cadf1
00000000077cacb1: 438d043f                     lea      eax, [r15 + r15]
00000000077cacb5: 488b4db8                     mov      rcx, qword ptr [rbp - 0x48]
00000000077cacb9: 8801                         mov      byte ptr [rcx], al
00000000077cacbb: 4c8d6101                     lea      r12, [rcx + 1]
00000000077cacbf: 4d85ff                       test     r15, r15
00000000077cacc2: 0f84ca010000                 je       0x77cae92
00000000077cacc8: e9b7010000                   jmp      0x77cae84
00000000077caccd: 4983c608                     add      r14, 8
00000000077cacd1: 0f2805c8e958f9               movaps   xmm0, xmmword ptr [rip - 0x6a71638]
00000000077cacd8: 0f298560feffff               movaps   xmmword ptr [rbp - 0x1a0], xmm0
00000000077cacdf: 0f298550feffff               movaps   xmmword ptr [rbp - 0x1b0], xmm0
00000000077cace6: 0f298540feffff               movaps   xmmword ptr [rbp - 0x1c0], xmm0
00000000077caced: 488dbd40feffff               lea      rdi, [rbp - 0x1c0]
00000000077cacf4: 4c89f6                       mov      rsi, r14
00000000077cacf7: e88463beff                   call     0x73b1080
00000000077cacfc: f68558feffff01               test     byte ptr [rbp - 0x1a8], 1
00000000077cad03: 0f859b000000                 jne      0x77cada4
00000000077cad09: 488d8558feffff               lea      rax, [rbp - 0x1a8]
00000000077cad10: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
00000000077cad14: 4c8b65b8                     mov      r12, qword ptr [rbp - 0x48]
00000000077cad18: 49894c2410                   mov      qword ptr [r12 + 0x10], rcx
00000000077cad1d: 0f1000                       movups   xmm0, xmmword ptr [rax]
00000000077cad20: 410f110424                   movups   xmmword ptr [r12], xmm0
00000000077cad25: e9a9000000                   jmp      0x77cadd3
00000000077cad2a: e88125e5ff                   call     0x761d2b0
00000000077cad2f: 4989c6                       mov      r14, rax
00000000077cad32: 4889c7                       mov      rdi, rax
00000000077cad35: e82634ea02                   call     0xa66e160 ; PLT strlen
00000000077cad3a: 4883f8f7                     cmp      rax, -9
00000000077cad3e: 0f8754040000                 ja       0x77cb198
00000000077cad44: 4989c7                       mov      r15, rax
00000000077cad47: 4883f817                     cmp      rax, 0x17
00000000077cad4b: 0f83fc000000                 jae      0x77cae4d
00000000077cad51: 438d043f                     lea      eax, [r15 + r15]
00000000077cad55: 488b4db8                     mov      rcx, qword ptr [rbp - 0x48]
00000000077cad59: 8801                         mov      byte ptr [rcx], al
00000000077cad5b: 4c8d6101                     lea      r12, [rcx + 1]
00000000077cad5f: 4d85ff                       test     r15, r15
00000000077cad62: 0f842a010000                 je       0x77cae92
00000000077cad68: e917010000                   jmp      0x77cae84
00000000077cad6d: bf04000000                   mov      edi, 4
00000000077cad72: e819bf9401                   call     0x9116c90
00000000077cad77: 85c0                         test     eax, eax
00000000077cad79: 0f8479020000                 je       0x77caff8
00000000077cad7f: 488dbdb8fdffff               lea      rdi, [rbp - 0x248]
00000000077cad86: e8457cbeff                   call     0x73b29d0
00000000077cad8b: f685b8fdffff01               test     byte ptr [rbp - 0x248], 1
00000000077cad92: 0f840c010000                 je       0x77caea4
00000000077cad98: 488b95c8fdffff               mov      rdx, qword ptr [rbp - 0x238]
00000000077cad9f: e907010000                   jmp      0x77caeab
00000000077cada4: 488b9560feffff               mov      rdx, qword ptr [rbp - 0x1a0]
00000000077cadab: 488bb568feffff               mov      rsi, qword ptr [rbp - 0x198]
00000000077cadb2: 4c8b65b8                     mov      r12, qword ptr [rbp - 0x48]
00000000077cadb6: 4c89e7                       mov      rdi, r12
00000000077cadb9: e8e218d4fc                   call     0x450c6a0
00000000077cadbe: f68558feffff01               test     byte ptr [rbp - 0x1a8], 1
00000000077cadc5: 740c                         je       0x77cadd3
00000000077cadc7: 488bbd68feffff               mov      rdi, qword ptr [rbp - 0x198]
00000000077cadce: e86df3d3fc                   call     0x450a140
00000000077cadd3: f68540feffff01               test     byte ptr [rbp - 0x1c0], 1
00000000077cadda: 0f8407030000                 je       0x77cb0e7
00000000077cade0: 488bbd50feffff               mov      rdi, qword ptr [rbp - 0x1b0]
00000000077cade7: e854f3d3fc                   call     0x450a140
00000000077cadec: e9f6020000                   jmp      0x77cb0e7
00000000077cadf1: 4c89f8                       mov      rax, r15
00000000077cadf4: 4883c807                     or       rax, 7
00000000077cadf8: 488d4801                     lea      rcx, [rax + 1]
00000000077cadfc: 4883f817                     cmp      rax, 0x17
00000000077cae00: 41bd1a000000                 mov      r13d, 0x1a
00000000077cae06: 4c0f45e9                     cmovne   r13, rcx
00000000077cae0a: 4c89ef                       mov      rdi, r13
00000000077cae0d: e88e2fea02                   call     0xa66dda0
00000000077cae12: eb5a                         jmp      0x77cae6e
00000000077cae14: 4c89f8                       mov      rax, r15
00000000077cae17: 4883c807                     or       rax, 7
00000000077cae1b: 488d4801                     lea      rcx, [rax + 1]
00000000077cae1f: 4883f817                     cmp      rax, 0x17
00000000077cae23: 41bd1a000000                 mov      r13d, 0x1a
00000000077cae29: 4c0f45e9                     cmovne   r13, rcx
00000000077cae2d: 4c89ef                       mov      rdi, r13
00000000077cae30: e86b2fea02                   call     0xa66dda0
00000000077cae35: 4989c4                       mov      r12, rax
00000000077cae38: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077cae3c: 4c896010                     mov      qword ptr [rax + 0x10], r12
00000000077cae40: 4983cd01                     or       r13, 1
00000000077cae44: 4c8928                       mov      qword ptr [rax], r13
00000000077cae47: 4c897808                     mov      qword ptr [rax + 8], r15
00000000077cae4b: eb37                         jmp      0x77cae84
00000000077cae4d: 4c89f8                       mov      rax, r15
00000000077cae50: 4883c807                     or       rax, 7
00000000077cae54: 488d4801                     lea      rcx, [rax + 1]
00000000077cae58: 4883f817                     cmp      rax, 0x17
00000000077cae5c: 41bd1a000000                 mov      r13d, 0x1a
00000000077cae62: 4c0f45e9                     cmovne   r13, rcx
00000000077cae66: 4c89ef                       mov      rdi, r13
00000000077cae69: e8322fea02                   call     0xa66dda0
00000000077cae6e: 4989c4                       mov      r12, rax
00000000077cae71: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077cae75: 4c896010                     mov      qword ptr [rax + 0x10], r12
00000000077cae79: 4983cd01                     or       r13, 1
00000000077cae7d: 4c8928                       mov      qword ptr [rax], r13
00000000077cae80: 4c897808                     mov      qword ptr [rax + 8], r15
00000000077cae84: 4c89e7                       mov      rdi, r12
00000000077cae87: 4c89f6                       mov      rsi, r14
00000000077cae8a: 4c89fa                       mov      rdx, r15
00000000077cae8d: e8de34ea02                   call     0xa66e370 ; PLT memmove
00000000077cae92: 43c6043c00                   mov      byte ptr [r12 + r15], 0
00000000077cae97: 4c8b6dc0                     mov      r13, qword ptr [rbp - 0x40]
00000000077cae9b: 4c8b65b8                     mov      r12, qword ptr [rbp - 0x48]
00000000077cae9f: e947020000                   jmp      0x77cb0eb
00000000077caea4: 488d95b9fdffff               lea      rdx, [rbp - 0x247]
00000000077caeab: 488d0dda5e80f9               lea      rcx, [rip - 0x67fa126]
00000000077caeb2: 4c8d05c7f36cf9               lea      r8, [rip - 0x6930c39]
00000000077caeb9: 488dbd40feffff               lea      rdi, [rbp - 0x1c0]
00000000077caec0: be04000000                   mov      esi, 4
00000000077caec5: 41b986000000                 mov      r9d, 0x86
00000000077caecb: 6a00                         push     0
00000000077caecd: 6a00                         push     0
00000000077caecf: e8cc669401                   call     0x91115a0
00000000077caed4: 4883c410                     add      rsp, 0x10
00000000077caed8: 418b16                       mov      edx, dword ptr [r14]
00000000077caedb: 48c785d8fcffff00000000       mov      qword ptr [rbp - 0x328], 0
00000000077caee6: b807000000                   mov      eax, 7
00000000077caeeb: 488d8ddffcffff               lea      rcx, [rbp - 0x321]
00000000077caef2: becdcccccc                   mov      esi, 0xcccccccd
00000000077caef7: 488d3d0e4576f9               lea      rdi, [rip - 0x689baf2] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000077caefe: 6690                         nop
00000000077caf00: 4189d0                       mov      r8d, edx
00000000077caf03: 4c0fafc6                     imul     r8, rsi
00000000077caf07: 49c1e823                     shr      r8, 0x23
00000000077caf0b: 478d0c00                     lea      r9d, [r8 + r8]
00000000077caf0f: 478d0c89                     lea      r9d, [r9 + r9*4]
00000000077caf13: 41f7d9                       neg      r9d
00000000077caf16: 4101d1                       add      r9d, edx
00000000077caf19: 4183c123                     add      r9d, 0x23
00000000077caf1d: 450fb60c39                   movzx    r9d, byte ptr [r9 + rdi]
00000000077caf22: 44884901                     mov      byte ptr [rcx + 1], r9b
00000000077caf26: 48ffc1                       inc      rcx
00000000077caf29: 48ffc0                       inc      rax
00000000077caf2c: 83fa09                       cmp      edx, 9
00000000077caf2f: 4489c2                       mov      edx, r8d
00000000077caf32: 77cc                         ja       0x77caf00
00000000077caf34: 488d95e0fcffff               lea      rdx, [rbp - 0x320]
00000000077caf3b: c6410100                     mov      byte ptr [rcx + 1], 0
00000000077caf3f: 4883f809                     cmp      rax, 9
00000000077caf43: 7224                         jb       0x77caf69
00000000077caf45: 488d85e1fcffff               lea      rax, [rbp - 0x31f]
00000000077caf4c: 0fb631                       movzx    esi, byte ptr [rcx]
00000000077caf4f: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
00000000077caf53: 408839                       mov      byte ptr [rcx], dil
00000000077caf56: 48ffc9                       dec      rcx
00000000077caf59: 408870ff                     mov      byte ptr [rax - 1], sil
00000000077caf5d: 488d7001                     lea      rsi, [rax + 1]
00000000077caf61: 4839c8                       cmp      rax, rcx
00000000077caf64: 4889f0                       mov      rax, rsi
00000000077caf67: 72e3                         jb       0x77caf4c
00000000077caf69: 488995d8fcffff               mov      qword ptr [rbp - 0x328], rdx
00000000077caf70: 488d85d8fcffff               lea      rax, [rbp - 0x328]
00000000077caf77: 48898550fcffff               mov      qword ptr [rbp - 0x3b0], rax
00000000077caf7e: 0f57c0                       xorps    xmm0, xmm0
00000000077caf81: 0f118558fcffff               movups   xmmword ptr [rbp - 0x3a8], xmm0
00000000077caf88: 0f118568fcffff               movups   xmmword ptr [rbp - 0x398], xmm0
00000000077caf8f: 0f118578fcffff               movups   xmmword ptr [rbp - 0x388], xmm0
00000000077caf96: 0f118588fcffff               movups   xmmword ptr [rbp - 0x378], xmm0
00000000077caf9d: 0f118598fcffff               movups   xmmword ptr [rbp - 0x368], xmm0
00000000077cafa4: 0f1185a8fcffff               movups   xmmword ptr [rbp - 0x358], xmm0
00000000077cafab: 0f1185b8fcffff               movups   xmmword ptr [rbp - 0x348], xmm0
00000000077cafb2: 48c785c8fcffff00000000       mov      qword ptr [rbp - 0x338], 0
00000000077cafbd: 488d350bbe7ef9               lea      rsi, [rip - 0x68141f5]
00000000077cafc4: 488dbd40feffff               lea      rdi, [rbp - 0x1c0]
00000000077cafcb: 488d9550fcffff               lea      rdx, [rbp - 0x3b0]
00000000077cafd2: e819699401                   call     0x91118f0
00000000077cafd7: 488dbd40feffff               lea      rdi, [rbp - 0x1c0]
00000000077cafde: e84d669401                   call     0x9111630
00000000077cafe3: f685b8fdffff01               test     byte ptr [rbp - 0x248], 1
00000000077cafea: 740c                         je       0x77caff8
00000000077cafec: 488bbdc8fdffff               mov      rdi, qword ptr [rbp - 0x238]
00000000077caff3: e848f1d3fc                   call     0x450a140
00000000077caff8: bf04000000                   mov      edi, 4
00000000077caffd: e88ebc9401                   call     0x9116c90
00000000077cb002: 85c0                         test     eax, eax
00000000077cb004: 0f84c8000000                 je       0x77cb0d2
00000000077cb00a: 488dbdd8fcffff               lea      rdi, [rbp - 0x328]
00000000077cb011: e8ba79beff                   call     0x73b29d0
00000000077cb016: f685d8fcffff01               test     byte ptr [rbp - 0x328], 1
00000000077cb01d: 7409                         je       0x77cb028
00000000077cb01f: 488b95e8fcffff               mov      rdx, qword ptr [rbp - 0x318]
00000000077cb026: eb07                         jmp      0x77cb02f
00000000077cb028: 488d95d9fcffff               lea      rdx, [rbp - 0x327]
00000000077cb02f: 488d0d565d80f9               lea      rcx, [rip - 0x67fa2aa]
00000000077cb036: 4c8d0543f26cf9               lea      r8, [rip - 0x6930dbd]
00000000077cb03d: 488dbd40feffff               lea      rdi, [rbp - 0x1c0]
00000000077cb044: be04000000                   mov      esi, 4
00000000077cb049: 41b987000000                 mov      r9d, 0x87
00000000077cb04f: 6a00                         push     0
00000000077cb051: 6a00                         push     0
00000000077cb053: e848659401                   call     0x91115a0
00000000077cb058: 4883c410                     add      rsp, 0x10
00000000077cb05c: 0f57c0                       xorps    xmm0, xmm0
00000000077cb05f: 0f2985c0fcffff               movaps   xmmword ptr [rbp - 0x340], xmm0
00000000077cb066: 0f2985b0fcffff               movaps   xmmword ptr [rbp - 0x350], xmm0
00000000077cb06d: 0f2985a0fcffff               movaps   xmmword ptr [rbp - 0x360], xmm0
00000000077cb074: 0f298590fcffff               movaps   xmmword ptr [rbp - 0x370], xmm0
00000000077cb07b: 0f298580fcffff               movaps   xmmword ptr [rbp - 0x380], xmm0
00000000077cb082: 0f298570fcffff               movaps   xmmword ptr [rbp - 0x390], xmm0
00000000077cb089: 0f298560fcffff               movaps   xmmword ptr [rbp - 0x3a0], xmm0
00000000077cb090: 0f298550fcffff               movaps   xmmword ptr [rbp - 0x3b0], xmm0
00000000077cb097: 488d359a9564f9               lea      rsi, [rip - 0x69b6a66]
00000000077cb09e: 488dbd40feffff               lea      rdi, [rbp - 0x1c0]
00000000077cb0a5: 488d9550fcffff               lea      rdx, [rbp - 0x3b0]
00000000077cb0ac: e83f689401                   call     0x91118f0
00000000077cb0b1: 488dbd40feffff               lea      rdi, [rbp - 0x1c0]
00000000077cb0b8: e873659401                   call     0x9111630
00000000077cb0bd: f685d8fcffff01               test     byte ptr [rbp - 0x328], 1
00000000077cb0c4: 740c                         je       0x77cb0d2
00000000077cb0c6: 488bbde8fcffff               mov      rdi, qword ptr [rbp - 0x318]
00000000077cb0cd: e86ef0d3fc                   call     0x450a140
00000000077cb0d2: 0f57c0                       xorps    xmm0, xmm0
00000000077cb0d5: 4c8b65b8                     mov      r12, qword ptr [rbp - 0x48]
00000000077cb0d9: 410f110424                   movups   xmmword ptr [r12], xmm0
00000000077cb0de: 49c744241000000000           mov      qword ptr [r12 + 0x10], 0
00000000077cb0e7: 4c8b6dc0                     mov      r13, qword ptr [rbp - 0x40]
00000000077cb0eb: 4d8d742420                   lea      r14, [r12 + 0x20]
00000000077cb0f0: 0f57c0                       xorps    xmm0, xmm0
00000000077cb0f3: 410f11442420                 movups   xmmword ptr [r12 + 0x20], xmm0
00000000077cb0f9: 49c744243000000000           mov      qword ptr [r12 + 0x30], 0
00000000077cb102: 41c744241800000000           mov      dword ptr [r12 + 0x18], 0
00000000077cb10b: 4d8d7c2438                   lea      r15, [r12 + 0x38]
00000000077cb110: 4c89ff                       mov      rdi, r15
00000000077cb113: 4c89e3                       mov      rbx, r12
00000000077cb116: e8f5c3d6fc                   call     0x4537510
00000000077cb11b: 488b85f8feffff               mov      rax, qword ptr [rbp - 0x108]
00000000077cb122: 4c8b20                       mov      r12, qword ptr [rax]
00000000077cb125: 418b0424                     mov      eax, dword ptr [r12]
00000000077cb129: 894318                       mov      dword ptr [rbx + 0x18], eax
00000000077cb12c: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077cb130: 488b30                       mov      rsi, qword ptr [rax]
00000000077cb133: 4c89f7                       mov      rdi, r14
00000000077cb136: e8752cd4fc                   call     0x450ddb0
00000000077cb13b: 41833c2404                   cmp      dword ptr [r12], 4
00000000077cb140: 488b9db0fdffff               mov      rbx, qword ptr [rbp - 0x250]
00000000077cb147: 7515                         jne      0x77cb15e
00000000077cb149: 4983c408                     add      r12, 8
00000000077cb14d: 4889df                       mov      rdi, rbx
00000000077cb150: 4c89e6                       mov      rsi, r12
00000000077cb153: 4c8b65b8                     mov      r12, qword ptr [rbp - 0x48]
00000000077cb157: e8f45ebeff                   call     0x73b1050
00000000077cb15c: eb0c                         jmp      0x77cb16a
00000000077cb15e: 4889df                       mov      rdi, rbx
00000000077cb161: 4c8b65b8                     mov      r12, qword ptr [rbp - 0x48]
00000000077cb165: e8a6c3d6fc                   call     0x4537510
00000000077cb16a: 488d05b7055003               lea      rax, [rip + 0x35005b7]
00000000077cb171: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cb174: 0f8cde090000                 jl       0x77cbb58
00000000077cb17a: 488d05ab055003               lea      rax, [rip + 0x35005ab]
00000000077cb181: 8b00                         mov      eax, dword ptr [rax]
00000000077cb183: 89c1                         mov      ecx, eax
00000000077cb185: f7d1                         not      ecx
00000000077cb187: 0fafc8                       imul     ecx, eax
00000000077cb18a: 83e101                       and      ecx, 1
00000000077cb18d: 0f85f9090000                 jne      0x77cbb8c
00000000077cb193: e9c0090000                   jmp      0x77cbb58
00000000077cb198: 488b7db8                     mov      rdi, qword ptr [rbp - 0x48]
00000000077cb19c: e8ef14d4fc                   call     0x450c690
00000000077cb1a1: 4889d3                       mov      rbx, rdx
00000000077cb1a4: 4989c6                       mov      r14, rax
00000000077cb1a7: 488dbd40feffff               lea      rdi, [rbp - 0x1c0]
00000000077cb1ae: e8bd60beff                   call     0x73b1270
00000000077cb1b3: e9ea010000                   jmp      0x77cb3a2
00000000077cb1b8: 4889d3                       mov      rbx, rdx
00000000077cb1bb: 4989c6                       mov      r14, rax
00000000077cb1be: 488dbd40feffff               lea      rdi, [rbp - 0x1c0]
00000000077cb1c5: e866649401                   call     0x9111630
00000000077cb1ca: eb06                         jmp      0x77cb1d2
00000000077cb1cc: 4889d3                       mov      rbx, rdx
00000000077cb1cf: 4989c6                       mov      r14, rax
00000000077cb1d2: f685d8fcffff01               test     byte ptr [rbp - 0x328], 1
00000000077cb1d9: 0f84c3010000                 je       0x77cb3a2
00000000077cb1df: 488bbde8fcffff               mov      rdi, qword ptr [rbp - 0x318]
00000000077cb1e6: e855efd3fc                   call     0x450a140
00000000077cb1eb: e9b2010000                   jmp      0x77cb3a2
00000000077cb1f0: 4889d3                       mov      rbx, rdx
00000000077cb1f3: 4989c6                       mov      r14, rax
00000000077cb1f6: 488dbd40feffff               lea      rdi, [rbp - 0x1c0]
00000000077cb1fd: e82e649401                   call     0x9111630
00000000077cb202: eb06                         jmp      0x77cb20a
00000000077cb204: 4889d3                       mov      rbx, rdx
00000000077cb207: 4989c6                       mov      r14, rax
00000000077cb20a: f685b8fdffff01               test     byte ptr [rbp - 0x248], 1
00000000077cb211: 0f848b010000                 je       0x77cb3a2
00000000077cb217: 488bbdc8fdffff               mov      rdi, qword ptr [rbp - 0x238]
00000000077cb21e: e81defd3fc                   call     0x450a140
00000000077cb223: e97a010000                   jmp      0x77cb3a2
00000000077cb228: e96d0a0000                   jmp      0x77cbc9a
00000000077cb22d: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cb231: 488901                       mov      qword ptr [rcx], rax
00000000077cb234: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb238: 8910                         mov      dword ptr [rax], edx
00000000077cb23a: 41f60601                     test     byte ptr [r14], 1
00000000077cb23e: 740d                         je       0x77cb24d
00000000077cb240: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077cb244: 488b7830                     mov      rdi, qword ptr [rax + 0x30]
00000000077cb248: e8f3eed3fc                   call     0x450a140
00000000077cb24d: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077cb251: f60001                       test     byte ptr [rax], 1
00000000077cb254: 0f84ac0a0000                 je       0x77cbd06
00000000077cb25a: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077cb25e: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cb262: e8d9eed3fc                   call     0x450a140
00000000077cb267: e99a0a0000                   jmp      0x77cbd06
00000000077cb26c: 4989d6                       mov      r14, rdx
00000000077cb26f: 4989c7                       mov      r15, rax
00000000077cb272: 4889df                       mov      rdi, rbx
00000000077cb275: e8e63ce8ff                   call     0x764ef60
00000000077cb27a: 41f6450801                   test     byte ptr [r13 + 8], 1
00000000077cb27f: 0f84a8020000                 je       0x77cb52d
00000000077cb285: 488b8568ffffff               mov      rax, qword ptr [rbp - 0x98]
00000000077cb28c: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077cb290: e8abeed3fc                   call     0x450a140
00000000077cb295: e993020000                   jmp      0x77cb52d
00000000077cb29a: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cb29e: 488901                       mov      qword ptr [rcx], rax
00000000077cb2a1: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb2a5: 8910                         mov      dword ptr [rax], edx
00000000077cb2a7: 488b8550ffffff               mov      rax, qword ptr [rbp - 0xb0]
00000000077cb2ae: f60001                       test     byte ptr [rax], 1
00000000077cb2b1: 741f                         je       0x77cb2d2
00000000077cb2b3: 488b8550ffffff               mov      rax, qword ptr [rbp - 0xb0]
00000000077cb2ba: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cb2be: e87deed3fc                   call     0x450a140
00000000077cb2c3: eb0d                         jmp      0x77cb2d2
00000000077cb2c5: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cb2c9: 488901                       mov      qword ptr [rcx], rax
00000000077cb2cc: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb2d0: 8910                         mov      dword ptr [rax], edx
00000000077cb2d2: 488bbde8fdffff               mov      rdi, qword ptr [rbp - 0x218]
00000000077cb2d9: e852639401                   call     0x9111630
00000000077cb2de: eb0d                         jmp      0x77cb2ed
00000000077cb2e0: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cb2e4: 488901                       mov      qword ptr [rcx], rax
00000000077cb2e7: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb2eb: 8910                         mov      dword ptr [rax], edx
00000000077cb2ed: 488d0538045003               lea      rax, [rip + 0x3500438]
00000000077cb2f4: 8b00                         mov      eax, dword ptr [rax]
00000000077cb2f6: 488d0d2b045003               lea      rcx, [rip + 0x350042b]
00000000077cb2fd: 8b09                         mov      ecx, dword ptr [rcx]
00000000077cb2ff: 488b9d38feffff               mov      rbx, qword ptr [rbp - 0x1c8]
00000000077cb306: f60301                       test     byte ptr [rbx], 1
00000000077cb309: 7422                         je       0x77cb32d
00000000077cb30b: 488b8538feffff               mov      rax, qword ptr [rbp - 0x1c8]
00000000077cb312: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cb316: e825eed3fc                   call     0x450a140
00000000077cb31b: 488d050a045003               lea      rax, [rip + 0x350040a]
00000000077cb322: 8b00                         mov      eax, dword ptr [rax]
00000000077cb324: 488d0dfd035003               lea      rcx, [rip + 0x35003fd]
00000000077cb32b: 8b09                         mov      ecx, dword ptr [rcx]
00000000077cb32d: 83f90a                       cmp      ecx, 0xa
00000000077cb330: 488b9d38feffff               mov      rbx, qword ptr [rbp - 0x1c8]
00000000077cb337: 0f8c930a0000                 jl       0x77cbdd0
00000000077cb33d: 89c1                         mov      ecx, eax
00000000077cb33f: f7d1                         not      ecx
00000000077cb341: 0fafc8                       imul     ecx, eax
00000000077cb344: 83e101                       and      ecx, 1
00000000077cb347: 0f84830a0000                 je       0x77cbdd0
00000000077cb34d: f60301                       test     byte ptr [rbx], 1
00000000077cb350: 7417                         je       0x77cb369
00000000077cb352: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cb356: e8e5edd3fc                   call     0x450a140
00000000077cb35b: f60301                       test     byte ptr [rbx], 1
00000000077cb35e: 7409                         je       0x77cb369
00000000077cb360: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cb364: e8d7edd3fc                   call     0x450a140
00000000077cb369: 488d05bc035003               lea      rax, [rip + 0x35003bc]
00000000077cb370: 8b00                         mov      eax, dword ptr [rax]
00000000077cb372: 488d0daf035003               lea      rcx, [rip + 0x35003af]
00000000077cb379: 8b09                         mov      ecx, dword ptr [rcx]
00000000077cb37b: 89c2                         mov      edx, eax
00000000077cb37d: f7d2                         not      edx
00000000077cb37f: 0fafd0                       imul     edx, eax
00000000077cb382: 83e201                       and      edx, 1
00000000077cb385: 83f90a                       cmp      ecx, 0xa
00000000077cb388: 0f8c78ffffff                 jl       0x77cb306
00000000077cb38e: 85d2                         test     edx, edx
00000000077cb390: 75bb                         jne      0x77cb34d
00000000077cb392: e96fffffff                   jmp      0x77cb306
00000000077cb397: e9db010000                   jmp      0x77cb577
00000000077cb39c: 4889d3                       mov      rbx, rdx
00000000077cb39f: 4989c6                       mov      r14, rax
00000000077cb3a2: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077cb3a6: 4c8930                       mov      qword ptr [rax], r14
00000000077cb3a9: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb3ad: 8918                         mov      dword ptr [rax], ebx
00000000077cb3af: e952090000                   jmp      0x77cbd06
00000000077cb3b4: 4989d7                       mov      r15, rdx
00000000077cb3b7: 4989c4                       mov      r12, rax
00000000077cb3ba: 4889df                       mov      rdi, rbx
00000000077cb3bd: e87eedd3fc                   call     0x450a140
00000000077cb3c2: e9bb020000                   jmp      0x77cb682
00000000077cb3c7: 4989d7                       mov      r15, rdx
00000000077cb3ca: 4989c4                       mov      r12, rax
00000000077cb3cd: 4c89f7                       mov      rdi, r14
00000000077cb3d0: e86bedd3fc                   call     0x450a140
00000000077cb3d5: e9a8020000                   jmp      0x77cb682
00000000077cb3da: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cb3de: 488901                       mov      qword ptr [rcx], rax
00000000077cb3e1: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb3e5: 8910                         mov      dword ptr [rax], edx
00000000077cb3e7: 488b8528ffffff               mov      rax, qword ptr [rbp - 0xd8]
00000000077cb3ee: f60001                       test     byte ptr [rax], 1
00000000077cb3f1: 7410                         je       0x77cb403
00000000077cb3f3: 488b8528ffffff               mov      rax, qword ptr [rbp - 0xd8]
00000000077cb3fa: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cb3fe: e83dedd3fc                   call     0x450a140
00000000077cb403: 488d051e035003               lea      rax, [rip + 0x350031e]
00000000077cb40a: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cb40d: 7c40                         jl       0x77cb44f
00000000077cb40f: 488d0516035003               lea      rax, [rip + 0x3500316]
00000000077cb416: 8b00                         mov      eax, dword ptr [rax]
00000000077cb418: 89c1                         mov      ecx, eax
00000000077cb41a: f7d1                         not      ecx
00000000077cb41c: 0fafc8                       imul     ecx, eax
00000000077cb41f: 83e101                       and      ecx, 1
00000000077cb422: 742b                         je       0x77cb44f
00000000077cb424: 488b8528ffffff               mov      rax, qword ptr [rbp - 0xd8]
00000000077cb42b: f60001                       test     byte ptr [rax], 1
00000000077cb42e: 74b7                         je       0x77cb3e7
00000000077cb430: 488b8528ffffff               mov      rax, qword ptr [rbp - 0xd8]
00000000077cb437: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cb43b: e800edd3fc                   call     0x450a140
00000000077cb440: eba5                         jmp      0x77cb3e7
00000000077cb442: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cb446: 488901                       mov      qword ptr [rcx], rax
00000000077cb449: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb44d: 8910                         mov      dword ptr [rax], edx
00000000077cb44f: 488bbd00ffffff               mov      rdi, qword ptr [rbp - 0x100]
00000000077cb456: e8d5619401                   call     0x9111630
00000000077cb45b: 488d05ca025003               lea      rax, [rip + 0x35002ca]
00000000077cb462: 8b10                         mov      edx, dword ptr [rax]
00000000077cb464: 488d05bd025003               lea      rax, [rip + 0x35002bd]
00000000077cb46b: 8b08                         mov      ecx, dword ptr [rax]
00000000077cb46d: 89d0                         mov      eax, edx
00000000077cb46f: f7d0                         not      eax
00000000077cb471: 0fafc2                       imul     eax, edx
00000000077cb474: 83e001                       and      eax, 1
00000000077cb477: 83f90a                       cmp      ecx, 0xa
00000000077cb47a: 7c6b                         jl       0x77cb4e7
00000000077cb47c: 85c0                         test     eax, eax
00000000077cb47e: 7467                         je       0x77cb4e7
00000000077cb480: 488b9d00ffffff               mov      rbx, qword ptr [rbp - 0x100]
00000000077cb487: 4889df                       mov      rdi, rbx
00000000077cb48a: e8a1619401                   call     0x9111630
00000000077cb48f: 4889df                       mov      rdi, rbx
00000000077cb492: e899619401                   call     0x9111630
00000000077cb497: 488d058e025003               lea      rax, [rip + 0x350028e]
00000000077cb49e: 8b10                         mov      edx, dword ptr [rax]
00000000077cb4a0: 488d0581025003               lea      rax, [rip + 0x3500281]
00000000077cb4a7: 8b08                         mov      ecx, dword ptr [rax]
00000000077cb4a9: 89d0                         mov      eax, edx
00000000077cb4ab: f7d0                         not      eax
00000000077cb4ad: 0fafc2                       imul     eax, edx
00000000077cb4b0: 83e001                       and      eax, 1
00000000077cb4b3: 83f90a                       cmp      ecx, 0xa
00000000077cb4b6: 7c2f                         jl       0x77cb4e7
00000000077cb4b8: 85c0                         test     eax, eax
00000000077cb4ba: 75cb                         jne      0x77cb487
00000000077cb4bc: eb29                         jmp      0x77cb4e7
00000000077cb4be: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cb4c2: 488901                       mov      qword ptr [rcx], rax
00000000077cb4c5: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb4c9: 8910                         mov      dword ptr [rax], edx
00000000077cb4cb: 488d055a025003               lea      rax, [rip + 0x350025a]
00000000077cb4d2: 8b10                         mov      edx, dword ptr [rax]
00000000077cb4d4: 488d054d025003               lea      rax, [rip + 0x350024d]
00000000077cb4db: 8b08                         mov      ecx, dword ptr [rax]
00000000077cb4dd: 89d0                         mov      eax, edx
00000000077cb4df: f7d0                         not      eax
00000000077cb4e1: 0fafc2                       imul     eax, edx
00000000077cb4e4: 83e001                       and      eax, 1
00000000077cb4e7: 83f90a                       cmp      ecx, 0xa
00000000077cb4ea: 0f8c85080000                 jl       0x77cbd75
00000000077cb4f0: 85c0                         test     eax, eax
00000000077cb4f2: 0f85ba080000                 jne      0x77cbdb2
00000000077cb4f8: e978080000                   jmp      0x77cbd75
00000000077cb4fd: eb15                         jmp      0x77cb514
00000000077cb4ff: eb76                         jmp      0x77cb577
00000000077cb501: 4989d7                       mov      r15, rdx
00000000077cb504: 4989c4                       mov      r12, rax
00000000077cb507: 4c89f7                       mov      rdi, r14
00000000077cb50a: e831ecd3fc                   call     0x450a140
00000000077cb50f: e9bb010000                   jmp      0x77cb6cf
00000000077cb514: 4989d7                       mov      r15, rdx
00000000077cb517: 4989c4                       mov      r12, rax
00000000077cb51a: 4889df                       mov      rdi, rbx
00000000077cb51d: e81eecd3fc                   call     0x450a140
00000000077cb522: e9a8010000                   jmp      0x77cb6cf
00000000077cb527: 4989d6                       mov      r14, rdx
00000000077cb52a: 4989c7                       mov      r15, rax
00000000077cb52d: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077cb531: 4c8938                       mov      qword ptr [rax], r15
00000000077cb534: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb538: 448930                       mov      dword ptr [rax], r14d
00000000077cb53b: e990080000                   jmp      0x77cbdd0
00000000077cb540: eb13                         jmp      0x77cb555
00000000077cb542: e965e9ffff                   jmp      0x77c9eac
00000000077cb547: eb0c                         jmp      0x77cb555
00000000077cb549: e95ee9ffff                   jmp      0x77c9eac
00000000077cb54e: eb05                         jmp      0x77cb555
00000000077cb550: e957e9ffff                   jmp      0x77c9eac
00000000077cb555: 4889d3                       mov      rbx, rdx
00000000077cb558: 4989c6                       mov      r14, rax
00000000077cb55b: 4c89e7                       mov      rdi, r12
00000000077cb55e: e8ddebd3fc                   call     0x450a140
00000000077cb563: e980010000                   jmp      0x77cb6e8
00000000077cb568: e93fe9ffff                   jmp      0x77c9eac
00000000077cb56d: e93ae9ffff                   jmp      0x77c9eac
00000000077cb572: e935e9ffff                   jmp      0x77c9eac
00000000077cb577: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cb57b: 488901                       mov      qword ptr [rcx], rax
00000000077cb57e: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb582: 8910                         mov      dword ptr [rax], edx
00000000077cb584: e947080000                   jmp      0x77cbdd0
00000000077cb589: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cb58d: 488901                       mov      qword ptr [rcx], rax
00000000077cb590: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb594: 8910                         mov      dword ptr [rax], edx
00000000077cb596: 41f60601                     test     byte ptr [r14], 1
00000000077cb59a: 741f                         je       0x77cb5bb
00000000077cb59c: 488b8518feffff               mov      rax, qword ptr [rbp - 0x1e8]
00000000077cb5a3: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077cb5a7: e894ebd3fc                   call     0x450a140
00000000077cb5ac: eb0d                         jmp      0x77cb5bb
00000000077cb5ae: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cb5b2: 488901                       mov      qword ptr [rcx], rax
00000000077cb5b5: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb5b9: 8910                         mov      dword ptr [rax], edx
00000000077cb5bb: 488b9d70ffffff               mov      rbx, qword ptr [rbp - 0x90]
00000000077cb5c2: eb00                         jmp      0x77cb5c4
00000000077cb5c4: 4889df                       mov      rdi, rbx
00000000077cb5c7: e82438e8ff                   call     0x764edf0
00000000077cb5cc: 488d0555015003               lea      rax, [rip + 0x3500155]
00000000077cb5d3: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cb5d6: 0f8cb4000000                 jl       0x77cb690
00000000077cb5dc: 488d0549015003               lea      rax, [rip + 0x3500149]
00000000077cb5e3: 8b00                         mov      eax, dword ptr [rax]
00000000077cb5e5: 89c1                         mov      ecx, eax
00000000077cb5e7: f7d1                         not      ecx
00000000077cb5e9: 0fafc8                       imul     ecx, eax
00000000077cb5ec: 83e101                       and      ecx, 1
00000000077cb5ef: 0f849b000000                 je       0x77cb690
00000000077cb5f5: 4889df                       mov      rdi, rbx
00000000077cb5f8: e8f337e8ff                   call     0x764edf0
00000000077cb5fd: 4889df                       mov      rdi, rbx
00000000077cb600: e8eb37e8ff                   call     0x764edf0
00000000077cb605: 488d051c015003               lea      rax, [rip + 0x350011c]
00000000077cb60c: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cb60f: 7cb3                         jl       0x77cb5c4
00000000077cb611: 488d0514015003               lea      rax, [rip + 0x3500114]
00000000077cb618: 8b00                         mov      eax, dword ptr [rax]
00000000077cb61a: 89c1                         mov      ecx, eax
00000000077cb61c: f7d1                         not      ecx
00000000077cb61e: 0fafc8                       imul     ecx, eax
00000000077cb621: 83e101                       and      ecx, 1
00000000077cb624: 75cf                         jne      0x77cb5f5
00000000077cb626: eb9c                         jmp      0x77cb5c4
00000000077cb628: 4989d6                       mov      r14, rdx
00000000077cb62b: 4989c7                       mov      r15, rax
00000000077cb62e: 4889df                       mov      rdi, rbx
00000000077cb631: e82a39e8ff                   call     0x764ef60
00000000077cb636: 41f644240801                 test     byte ptr [r12 + 8], 1
00000000077cb63c: 7410                         je       0x77cb64e
00000000077cb63e: 488b8570ffffff               mov      rax, qword ptr [rbp - 0x90]
00000000077cb645: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077cb649: e8f2ead3fc                   call     0x450a140
00000000077cb64e: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077cb652: 4c8938                       mov      qword ptr [rax], r15
00000000077cb655: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb659: 448930                       mov      dword ptr [rax], r14d
00000000077cb65c: eb32                         jmp      0x77cb690
00000000077cb65e: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cb662: 488901                       mov      qword ptr [rcx], rax
00000000077cb665: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb669: 8910                         mov      dword ptr [rax], edx
00000000077cb66b: eb23                         jmp      0x77cb690
00000000077cb66d: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cb671: 488901                       mov      qword ptr [rcx], rax
00000000077cb674: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb678: 8910                         mov      dword ptr [rax], edx
00000000077cb67a: eb79                         jmp      0x77cb6f5
00000000077cb67c: 4989d7                       mov      r15, rdx
00000000077cb67f: 4989c4                       mov      r12, rax
00000000077cb682: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077cb686: 4c8920                       mov      qword ptr [rax], r12
00000000077cb689: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb68d: 448938                       mov      dword ptr [rax], r15d
00000000077cb690: 488d0595005003               lea      rax, [rip + 0x3500095]
00000000077cb697: 8b00                         mov      eax, dword ptr [rax]
00000000077cb699: 488d0d88005003               lea      rcx, [rip + 0x3500088]
00000000077cb6a0: 8b09                         mov      ecx, dword ptr [rcx]
00000000077cb6a2: 83f90a                       cmp      ecx, 0xa
00000000077cb6a5: 7c19                         jl       0x77cb6c0
00000000077cb6a7: 89c2                         mov      edx, eax
00000000077cb6a9: f7d2                         not      edx
00000000077cb6ab: 0fafd0                       imul     edx, eax
00000000077cb6ae: 83e201                       and      edx, 1
00000000077cb6b1: 488b5d88                     mov      rbx, qword ptr [rbp - 0x78]
00000000077cb6b5: 0f85c6160000                 jne      0x77ccd81
00000000077cb6bb: e988160000                   jmp      0x77ccd48
00000000077cb6c0: 488b5d88                     mov      rbx, qword ptr [rbp - 0x78]
00000000077cb6c4: e97f160000                   jmp      0x77ccd48
00000000077cb6c9: 4989d7                       mov      r15, rdx
00000000077cb6cc: 4989c4                       mov      r12, rax
00000000077cb6cf: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077cb6d3: 4c8920                       mov      qword ptr [rax], r12
00000000077cb6d6: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb6da: 448938                       mov      dword ptr [rax], r15d
00000000077cb6dd: e9ee060000                   jmp      0x77cbdd0
00000000077cb6e2: 4889d3                       mov      rbx, rdx
00000000077cb6e5: 4989c6                       mov      r14, rax
00000000077cb6e8: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077cb6ec: 4c8930                       mov      qword ptr [rax], r14
00000000077cb6ef: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cb6f3: 8918                         mov      dword ptr [rax], ebx
00000000077cb6f5: 488d052c005003               lea      rax, [rip + 0x350002c]
00000000077cb6fc: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cb6ff: 7c56                         jl       0x77cb757
00000000077cb701: 488d0524005003               lea      rax, [rip + 0x3500024]
00000000077cb708: 8b00                         mov      eax, dword ptr [rax]
00000000077cb70a: 89c1                         mov      ecx, eax
00000000077cb70c: f7d1                         not      ecx
00000000077cb70e: 0fafc8                       imul     ecx, eax
00000000077cb711: 83e101                       and      ecx, 1
00000000077cb714: 7441                         je       0x77cb757
00000000077cb716: 488b5da0                     mov      rbx, qword ptr [rbp - 0x60]
00000000077cb71a: f60301                       test     byte ptr [rbx], 1
00000000077cb71d: 7417                         je       0x77cb736
00000000077cb71f: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cb723: e818ead3fc                   call     0x450a140
00000000077cb728: f60301                       test     byte ptr [rbx], 1
00000000077cb72b: 7409                         je       0x77cb736
00000000077cb72d: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cb731: e80aead3fc                   call     0x450a140
00000000077cb736: 488d05ebff4f03               lea      rax, [rip + 0x34fffeb]
00000000077cb73d: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cb740: 7c15                         jl       0x77cb757
00000000077cb742: 488d05e3ff4f03               lea      rax, [rip + 0x34fffe3]
00000000077cb749: 8b00                         mov      eax, dword ptr [rax]
00000000077cb74b: 89c1                         mov      ecx, eax
00000000077cb74d: f7d1                         not      ecx
00000000077cb74f: 0fafc8                       imul     ecx, eax
00000000077cb752: 83e101                       and      ecx, 1
00000000077cb755: 75c3                         jne      0x77cb71a
00000000077cb757: 488b5da0                     mov      rbx, qword ptr [rbp - 0x60]
00000000077cb75b: f60301                       test     byte ptr [rbx], 1
00000000077cb75e: 740d                         je       0x77cb76d
00000000077cb760: 488b45a0                     mov      rax, qword ptr [rbp - 0x60]
00000000077cb764: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cb768: e8d3e9d3fc                   call     0x450a140
00000000077cb76d: 488d05b4ff4f03               lea      rax, [rip + 0x34fffb4]
00000000077cb774: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cb777: 0f8c23e0ffff                 jl       0x77c97a0
00000000077cb77d: 488d05a8ff4f03               lea      rax, [rip + 0x34fffa8]
00000000077cb784: 8b00                         mov      eax, dword ptr [rax]
00000000077cb786: 89c1                         mov      ecx, eax
00000000077cb788: f7d1                         not      ecx
00000000077cb78a: 0fafc8                       imul     ecx, eax
00000000077cb78d: 83e101                       and      ecx, 1
00000000077cb790: 0f840ae0ffff                 je       0x77c97a0
00000000077cb796: 488b5da0                     mov      rbx, qword ptr [rbp - 0x60]
00000000077cb79a: f60301                       test     byte ptr [rbx], 1
00000000077cb79d: 74bc                         je       0x77cb75b
00000000077cb79f: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cb7a3: e898e9d3fc                   call     0x450a140
00000000077cb7a8: ebb1                         jmp      0x77cb75b
00000000077cb7aa: 41f60601                     test     byte ptr [r14], 1
00000000077cb7ae: 7410                         je       0x77cb7c0
00000000077cb7b0: 488b8518feffff               mov      rax, qword ptr [rbp - 0x1e8]
00000000077cb7b7: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077cb7bb: e880e9d3fc                   call     0x450a140
00000000077cb7c0: 488d0561ff4f03               lea      rax, [rip + 0x34fff61]
00000000077cb7c7: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cb7ca: 7c2d                         jl       0x77cb7f9
00000000077cb7cc: 488d0559ff4f03               lea      rax, [rip + 0x34fff59]
00000000077cb7d3: 8b00                         mov      eax, dword ptr [rax]
00000000077cb7d5: 89c1                         mov      ecx, eax
00000000077cb7d7: f7d1                         not      ecx
00000000077cb7d9: 0fafc8                       imul     ecx, eax
00000000077cb7dc: 83e101                       and      ecx, 1
00000000077cb7df: 7418                         je       0x77cb7f9
00000000077cb7e1: 41f60601                     test     byte ptr [r14], 1
00000000077cb7e5: 74c3                         je       0x77cb7aa
00000000077cb7e7: 488b8518feffff               mov      rax, qword ptr [rbp - 0x1e8]
00000000077cb7ee: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077cb7f2: e849e9d3fc                   call     0x450a140
00000000077cb7f7: ebb1                         jmp      0x77cb7aa
00000000077cb7f9: 418b442404                   mov      eax, dword ptr [r12 + 4]
00000000077cb7fe: 488b0b                       mov      rcx, qword ptr [rbx]
00000000077cb801: 894108                       mov      dword ptr [rcx + 8], eax
00000000077cb804: bf02000000                   mov      edi, 2
00000000077cb809: e882b49401                   call     0x9116c90
00000000077cb80e: 85c0                         test     eax, eax
00000000077cb810: 488b9d28feffff               mov      rbx, qword ptr [rbp - 0x1d8]
00000000077cb817: 4c8bb530feffff               mov      r14, qword ptr [rbp - 0x1d0]
00000000077cb81e: 0f8468060000                 je       0x77cbe8c
00000000077cb824: 4889df                       mov      rdi, rbx
00000000077cb827: e8a471beff                   call     0x73b29d0
00000000077cb82c: f60301                       test     byte ptr [rbx], 1
00000000077cb82f: 7406                         je       0x77cb837
00000000077cb831: 488b5310                     mov      rdx, qword ptr [rbx + 0x10]
00000000077cb835: eb04                         jmp      0x77cb83b
00000000077cb837: 488d5301                     lea      rdx, [rbx + 1]
00000000077cb83b: 488d0d4a5580f9               lea      rcx, [rip - 0x67faab6]
00000000077cb842: 4c8d0571d466f9               lea      r8, [rip - 0x6992b8f]
00000000077cb849: 4c89f7                       mov      rdi, r14
00000000077cb84c: be02000000                   mov      esi, 2
00000000077cb851: 41b9af030000                 mov      r9d, 0x3af
00000000077cb857: 6a00                         push     0
00000000077cb859: 6a00                         push     0
00000000077cb85b: e8405d9401                   call     0x91115a0
00000000077cb860: 4883c410                     add      rsp, 0x10
00000000077cb864: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077cb868: 488b00                       mov      rax, qword ptr [rax]
00000000077cb86b: 488b8df8fdffff               mov      rcx, qword ptr [rbp - 0x208]
00000000077cb872: 48c70100000000               mov      qword ptr [rcx], 0
00000000077cb879: f60001                       test     byte ptr [rax], 1
00000000077cb87c: 7406                         je       0x77cb884
00000000077cb87e: 488b4010                     mov      rax, qword ptr [rax + 0x10]
00000000077cb882: eb03                         jmp      0x77cb887
00000000077cb884: 48ffc0                       inc      rax
00000000077cb887: 488b8df8fdffff               mov      rcx, qword ptr [rbp - 0x208]
00000000077cb88e: 488901                       mov      qword ptr [rcx], rax
00000000077cb891: c6410800                     mov      byte ptr [rcx + 8], 0
00000000077cb895: 418b1424                     mov      edx, dword ptr [r12]
00000000077cb899: 4c8b9518ffffff               mov      r10, qword ptr [rbp - 0xe8]
00000000077cb8a0: 49c70200000000               mov      qword ptr [r10], 0
00000000077cb8a7: b908000000                   mov      ecx, 8
00000000077cb8ac: 488d05593b76f9               lea      rax, [rip - 0x689c4a7] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000077cb8b3: 89d6                         mov      esi, edx
00000000077cb8b5: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000077cb8c0: 4863fe                       movsxd   rdi, esi
00000000077cb8c3: 4869f767666666               imul     rsi, rdi, 0x66666667
00000000077cb8ca: 4989f0                       mov      r8, rsi
00000000077cb8cd: 49c1e83f                     shr      r8, 0x3f
00000000077cb8d1: 48c1fe22                     sar      rsi, 0x22
00000000077cb8d5: 4401c6                       add      esi, r8d
00000000077cb8d8: 448d0436                     lea      r8d, [rsi + rsi]
00000000077cb8dc: 478d0480                     lea      r8d, [r8 + r8*4]
00000000077cb8e0: 4189f9                       mov      r9d, edi
00000000077cb8e3: 4529c1                       sub      r9d, r8d
00000000077cb8e6: 4d63c1                       movsxd   r8, r9d
00000000077cb8e9: 450fb6440023                 movzx    r8d, byte ptr [r8 + rax + 0x23]
00000000077cb8ef: 4588040a                     mov      byte ptr [r10 + rcx], r8b
00000000077cb8f3: 48ffc1                       inc      rcx
00000000077cb8f6: 83c709                       add      edi, 9
00000000077cb8f9: 83ff12                       cmp      edi, 0x12
00000000077cb8fc: 77c2                         ja       0x77cb8c0
00000000077cb8fe: 85d2                         test     edx, edx
00000000077cb900: 7809                         js       0x77cb90b
00000000077cb902: 488b9518ffffff               mov      rdx, qword ptr [rbp - 0xe8]
00000000077cb909: eb0e                         jmp      0x77cb919
00000000077cb90b: 488b9518ffffff               mov      rdx, qword ptr [rbp - 0xe8]
00000000077cb912: c6040a2d                     mov      byte ptr [rdx + rcx], 0x2d
00000000077cb916: 48ffc1                       inc      rcx
00000000077cb919: 4c8b95d8fdffff               mov      r10, qword ptr [rbp - 0x228]
00000000077cb920: 4889d6                       mov      rsi, rdx
00000000077cb923: 4883c208                     add      rdx, 8
00000000077cb927: c6040e00                     mov      byte ptr [rsi + rcx], 0
00000000077cb92b: 4883f90a                     cmp      rcx, 0xa
00000000077cb92f: 7c3d                         jl       0x77cb96e
00000000077cb931: 488bb518ffffff               mov      rsi, qword ptr [rbp - 0xe8]
00000000077cb938: 4801f1                       add      rcx, rsi
00000000077cb93b: 48ffc9                       dec      rcx
00000000077cb93e: 4883c609                     add      rsi, 9
00000000077cb942: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077cb950: 0fb639                       movzx    edi, byte ptr [rcx]
00000000077cb953: 440fb646ff                   movzx    r8d, byte ptr [rsi - 1]
00000000077cb958: 448801                       mov      byte ptr [rcx], r8b
00000000077cb95b: 40887eff                     mov      byte ptr [rsi - 1], dil
00000000077cb95f: 48ffc9                       dec      rcx
00000000077cb962: 488d7e01                     lea      rdi, [rsi + 1]
00000000077cb966: 4839ce                       cmp      rsi, rcx
00000000077cb969: 4889fe                       mov      rsi, rdi
00000000077cb96c: 72e2                         jb       0x77cb950
00000000077cb96e: 488b8d18ffffff               mov      rcx, qword ptr [rbp - 0xe8]
00000000077cb975: 488911                       mov      qword ptr [rcx], rdx
00000000077cb978: 418b542404                   mov      edx, dword ptr [r12 + 4]
00000000077cb97d: 49c70200000000               mov      qword ptr [r10], 0
00000000077cb984: b908000000                   mov      ecx, 8
00000000077cb989: 89d6                         mov      esi, edx
00000000077cb98b: 0f1f440000                   nop      dword ptr [rax + rax]
00000000077cb990: 4863fe                       movsxd   rdi, esi
00000000077cb993: 4869f767666666               imul     rsi, rdi, 0x66666667
00000000077cb99a: 4989f0                       mov      r8, rsi
00000000077cb99d: 49c1e83f                     shr      r8, 0x3f
00000000077cb9a1: 48c1fe22                     sar      rsi, 0x22
00000000077cb9a5: 4401c6                       add      esi, r8d
00000000077cb9a8: 448d0436                     lea      r8d, [rsi + rsi]
00000000077cb9ac: 478d0480                     lea      r8d, [r8 + r8*4]
00000000077cb9b0: 4189f9                       mov      r9d, edi
00000000077cb9b3: 4529c1                       sub      r9d, r8d
00000000077cb9b6: 4d63c1                       movsxd   r8, r9d
00000000077cb9b9: 450fb6440023                 movzx    r8d, byte ptr [r8 + rax + 0x23]
00000000077cb9bf: 4588040a                     mov      byte ptr [r10 + rcx], r8b
00000000077cb9c3: 48ffc1                       inc      rcx
00000000077cb9c6: 83c709                       add      edi, 9
00000000077cb9c9: 83ff12                       cmp      edi, 0x12
00000000077cb9cc: 77c2                         ja       0x77cb990
00000000077cb9ce: 85d2                         test     edx, edx
00000000077cb9d0: 7908                         jns      0x77cb9da
00000000077cb9d2: 41c6040a2d                   mov      byte ptr [r10 + rcx], 0x2d
00000000077cb9d7: 48ffc1                       inc      rcx
00000000077cb9da: 498d4208                     lea      rax, [r10 + 8]
00000000077cb9de: 41c6040a00                   mov      byte ptr [r10 + rcx], 0
00000000077cb9e3: 4883f90a                     cmp      rcx, 0xa
00000000077cb9e7: 7c34                         jl       0x77cba1d
00000000077cb9e9: 4c01d1                       add      rcx, r10
00000000077cb9ec: 48ffc9                       dec      rcx
00000000077cb9ef: 498d5209                     lea      rdx, [r10 + 9]
00000000077cb9f3: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000077cba00: 0fb631                       movzx    esi, byte ptr [rcx]
00000000077cba03: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
00000000077cba07: 408839                       mov      byte ptr [rcx], dil
00000000077cba0a: 408872ff                     mov      byte ptr [rdx - 1], sil
00000000077cba0e: 48ffc9                       dec      rcx
00000000077cba11: 488d7201                     lea      rsi, [rdx + 1]
00000000077cba15: 4839ca                       cmp      rdx, rcx
00000000077cba18: 4889f2                       mov      rdx, rsi
00000000077cba1b: 72e3                         jb       0x77cba00
00000000077cba1d: 498902                       mov      qword ptr [r10], rax
00000000077cba20: 488b85f8fdffff               mov      rax, qword ptr [rbp - 0x208]
00000000077cba27: 48898540feffff               mov      qword ptr [rbp - 0x1c0], rax
00000000077cba2e: 488b8518ffffff               mov      rax, qword ptr [rbp - 0xe8]
00000000077cba35: 48898548feffff               mov      qword ptr [rbp - 0x1b8], rax
00000000077cba3c: 4c899550feffff               mov      qword ptr [rbp - 0x1b0], r10
00000000077cba43: 0f57c0                       xorps    xmm0, xmm0
00000000077cba46: 0f118558feffff               movups   xmmword ptr [rbp - 0x1a8], xmm0
00000000077cba4d: 0f118568feffff               movups   xmmword ptr [rbp - 0x198], xmm0
00000000077cba54: 0f118578feffff               movups   xmmword ptr [rbp - 0x188], xmm0
00000000077cba5b: 0f118588feffff               movups   xmmword ptr [rbp - 0x178], xmm0
00000000077cba62: 0f118598feffff               movups   xmmword ptr [rbp - 0x168], xmm0
00000000077cba69: 0f1185a8feffff               movups   xmmword ptr [rbp - 0x158], xmm0
00000000077cba70: 48c785b8feffff00000000       mov      qword ptr [rbp - 0x148], 0
00000000077cba7b: 488d353ce86cf9               lea      rsi, [rip - 0x69317c4]
00000000077cba82: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077cba89: 4c89f7                       mov      rdi, r14
00000000077cba8c: e85f5e9401                   call     0x91118f0
00000000077cba91: 488d0590fc4f03               lea      rax, [rip + 0x34ffc90]
00000000077cba98: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cba9b: 0f8c9c030000                 jl       0x77cbe3d
00000000077cbaa1: 488d0584fc4f03               lea      rax, [rip + 0x34ffc84]
00000000077cbaa8: 8b00                         mov      eax, dword ptr [rax]
00000000077cbaaa: 89c1                         mov      ecx, eax
00000000077cbaac: f7d1                         not      ecx
00000000077cbaae: 0fafc8                       imul     ecx, eax
00000000077cbab1: 83e101                       and      ecx, 1
00000000077cbab4: 0f85ba030000                 jne      0x77cbe74
00000000077cbaba: e97e030000                   jmp      0x77cbe3d
00000000077cbabf: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cbac3: 488901                       mov      qword ptr [rcx], rax
00000000077cbac6: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cbaca: 8910                         mov      dword ptr [rax], edx
00000000077cbacc: 488d0559fc4f03               lea      rax, [rip + 0x34ffc59]
00000000077cbad3: 8b10                         mov      edx, dword ptr [rax]
00000000077cbad5: 488d054cfc4f03               lea      rax, [rip + 0x34ffc4c]
00000000077cbadc: 8b08                         mov      ecx, dword ptr [rax]
00000000077cbade: 89d0                         mov      eax, edx
00000000077cbae0: f7d0                         not      eax
00000000077cbae2: 0fafc2                       imul     eax, edx
00000000077cbae5: 83e001                       and      eax, 1
00000000077cbae8: 83f90a                       cmp      ecx, 0xa
00000000077cbaeb: 7c2c                         jl       0x77cbb19
00000000077cbaed: 85c0                         test     eax, eax
00000000077cbaef: 7428                         je       0x77cbb19
00000000077cbaf1: 488bbd30feffff               mov      rdi, qword ptr [rbp - 0x1d0]
00000000077cbaf8: e8335b9401                   call     0x9111630
00000000077cbafd: 488d0528fc4f03               lea      rax, [rip + 0x34ffc28]
00000000077cbb04: 8b10                         mov      edx, dword ptr [rax]
00000000077cbb06: 488d051bfc4f03               lea      rax, [rip + 0x34ffc1b]
00000000077cbb0d: 8b08                         mov      ecx, dword ptr [rax]
00000000077cbb0f: 89d0                         mov      eax, edx
00000000077cbb11: f7d0                         not      eax
00000000077cbb13: 0fafc2                       imul     eax, edx
00000000077cbb16: 83e001                       and      eax, 1
00000000077cbb19: 83f90a                       cmp      ecx, 0xa
00000000077cbb1c: 0f8cf8100000                 jl       0x77ccc1a
00000000077cbb22: 85c0                         test     eax, eax
00000000077cbb24: 0f851f110000                 jne      0x77ccc49
00000000077cbb2a: e9eb100000                   jmp      0x77ccc1a
00000000077cbb2f: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cbb33: 488901                       mov      qword ptr [rcx], rax
00000000077cbb36: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cbb3a: 8910                         mov      dword ptr [rax], edx
00000000077cbb3c: 488d05e9fb4f03               lea      rax, [rip + 0x34ffbe9]
00000000077cbb43: 8b00                         mov      eax, dword ptr [rax]
00000000077cbb45: 488d0ddcfb4f03               lea      rcx, [rip + 0x34ffbdc]
00000000077cbb4c: 8b09                         mov      ecx, dword ptr [rcx]
00000000077cbb4e: e904110000                   jmp      0x77ccc57
00000000077cbb53: e973100000                   jmp      0x77ccbcb
00000000077cbb58: 4c89ff                       mov      rdi, r15
00000000077cbb5b: 4889de                       mov      rsi, rbx
00000000077cbb5e: e89dbbd6fc                   call     0x4537700
00000000077cbb63: 4889df                       mov      rdi, rbx
00000000077cbb66: e825bbd6fc                   call     0x4537690
00000000077cbb6b: 488d05b6fb4f03               lea      rax, [rip + 0x34ffbb6]
00000000077cbb72: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cbb75: 7c2a                         jl       0x77cbba1
00000000077cbb77: 488d05aefb4f03               lea      rax, [rip + 0x34ffbae]
00000000077cbb7e: 8b00                         mov      eax, dword ptr [rax]
00000000077cbb80: 89c1                         mov      ecx, eax
00000000077cbb82: f7d1                         not      ecx
00000000077cbb84: 0fafc8                       imul     ecx, eax
00000000077cbb87: 83e101                       and      ecx, 1
00000000077cbb8a: 7415                         je       0x77cbba1
00000000077cbb8c: 4c89ff                       mov      rdi, r15
00000000077cbb8f: 4889de                       mov      rsi, rbx
00000000077cbb92: e869bbd6fc                   call     0x4537700
00000000077cbb97: 4889df                       mov      rdi, rbx
00000000077cbb9a: e8f1bad6fc                   call     0x4537690
00000000077cbb9f: ebb7                         jmp      0x77cbb58
00000000077cbba1: 488b45a8                     mov      rax, qword ptr [rbp - 0x58]
00000000077cbba5: 488b18                       mov      rbx, qword ptr [rax]
00000000077cbba8: 488d7b10                     lea      rdi, [rbx + 0x10]
00000000077cbbac: 807b6000                     cmp      byte ptr [rbx + 0x60], 0
00000000077cbbb0: 742f                         je       0x77cbbe1
00000000077cbbb2: 4c89e6                       mov      rsi, r12
00000000077cbbb5: e8f621d4fc                   call     0x450ddb0
00000000077cbbba: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077cbbbe: 8b4018                       mov      eax, dword ptr [rax + 0x18]
00000000077cbbc1: 894328                       mov      dword ptr [rbx + 0x28], eax
00000000077cbbc4: 488d7b30                     lea      rdi, [rbx + 0x30]
00000000077cbbc8: 4c89f6                       mov      rsi, r14
00000000077cbbcb: e8e021d4fc                   call     0x450ddb0
00000000077cbbd0: 4883c348                     add      rbx, 0x48
00000000077cbbd4: 4889df                       mov      rdi, rbx
00000000077cbbd7: 4c89fe                       mov      rsi, r15
00000000077cbbda: e8c1bad6fc                   call     0x45376a0
00000000077cbbdf: eb0c                         jmp      0x77cbbed
00000000077cbbe1: 4c89e6                       mov      rsi, r12
00000000077cbbe4: e817790cfd                   call     0x4893500
00000000077cbbe9: c6436001                     mov      byte ptr [rbx + 0x60], 1
00000000077cbbed: 488b8568ffffff               mov      rax, qword ptr [rbp - 0x98]
00000000077cbbf4: c7000cfeffff                 mov      dword ptr [rax], 0xfffffe0c
00000000077cbbfa: 83780400                     cmp      dword ptr [rax + 4], 0
00000000077cbbfe: 750e                         jne      0x77cbc0e
00000000077cbc00: 488b8568ffffff               mov      rax, qword ptr [rbp - 0x98]
00000000077cbc07: c74004faffffff               mov      dword ptr [rax + 4], 0xfffffffa
00000000077cbc0e: 488b5db8                     mov      rbx, qword ptr [rbp - 0x48]
00000000077cbc12: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077cbc20: 4c89ff                       mov      rdi, r15
00000000077cbc23: e868bad6fc                   call     0x4537690
00000000077cbc28: 41f60601                     test     byte ptr [r14], 1
00000000077cbc2c: 7409                         je       0x77cbc37
00000000077cbc2e: 488b7b30                     mov      rdi, qword ptr [rbx + 0x30]
00000000077cbc32: e809e5d3fc                   call     0x450a140
00000000077cbc37: f60301                       test     byte ptr [rbx], 1
00000000077cbc3a: 7409                         je       0x77cbc45
00000000077cbc3c: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cbc40: e8fbe4d3fc                   call     0x450a140
00000000077cbc45: 488d05dcfa4f03               lea      rax, [rip + 0x34ffadc]
00000000077cbc4c: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cbc4f: b801000000                   mov      eax, 1
00000000077cbc54: 0f8ccaebffff                 jl       0x77ca824
00000000077cbc5a: 488d0dcbfa4f03               lea      rcx, [rip + 0x34ffacb]
00000000077cbc61: 8b09                         mov      ecx, dword ptr [rcx]
00000000077cbc63: 89ca                         mov      edx, ecx
00000000077cbc65: f7d2                         not      edx
00000000077cbc67: 0fafd1                       imul     edx, ecx
00000000077cbc6a: 83e201                       and      edx, 1
00000000077cbc6d: 0f84b1ebffff                 je       0x77ca824
00000000077cbc73: 4c89ff                       mov      rdi, r15
00000000077cbc76: e815bad6fc                   call     0x4537690
00000000077cbc7b: 41f60601                     test     byte ptr [r14], 1
00000000077cbc7f: 7409                         je       0x77cbc8a
00000000077cbc81: 488b7b30                     mov      rdi, qword ptr [rbx + 0x30]
00000000077cbc85: e8b6e4d3fc                   call     0x450a140
00000000077cbc8a: f60301                       test     byte ptr [rbx], 1
00000000077cbc8d: 7491                         je       0x77cbc20
00000000077cbc8f: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cbc93: e8a8e4d3fc                   call     0x450a140
00000000077cbc98: eb86                         jmp      0x77cbc20
00000000077cbc9a: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cbc9e: 488901                       mov      qword ptr [rcx], rax
00000000077cbca1: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cbca5: 8910                         mov      dword ptr [rax], edx
00000000077cbca7: 488b7db8                     mov      rdi, qword ptr [rbp - 0x48]
00000000077cbcab: e8f0a90bfd                   call     0x48866a0
00000000077cbcb0: 488d0571fa4f03               lea      rax, [rip + 0x34ffa71]
00000000077cbcb7: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cbcba: 7c4a                         jl       0x77cbd06
00000000077cbcbc: 488d0569fa4f03               lea      rax, [rip + 0x34ffa69]
00000000077cbcc3: 8b00                         mov      eax, dword ptr [rax]
00000000077cbcc5: 89c1                         mov      ecx, eax
00000000077cbcc7: f7d1                         not      ecx
00000000077cbcc9: 0fafc8                       imul     ecx, eax
00000000077cbccc: 83e101                       and      ecx, 1
00000000077cbccf: 7435                         je       0x77cbd06
00000000077cbcd1: 488b5db8                     mov      rbx, qword ptr [rbp - 0x48]
00000000077cbcd5: 4889df                       mov      rdi, rbx
00000000077cbcd8: e8c3a90bfd                   call     0x48866a0
00000000077cbcdd: 4889df                       mov      rdi, rbx
00000000077cbce0: e8bba90bfd                   call     0x48866a0
00000000077cbce5: 488d053cfa4f03               lea      rax, [rip + 0x34ffa3c]
00000000077cbcec: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cbcef: 7c15                         jl       0x77cbd06
00000000077cbcf1: 488d0534fa4f03               lea      rax, [rip + 0x34ffa34]
00000000077cbcf8: 8b00                         mov      eax, dword ptr [rax]
00000000077cbcfa: 89c1                         mov      ecx, eax
00000000077cbcfc: f7d1                         not      ecx
00000000077cbcfe: 0fafc8                       imul     ecx, eax
00000000077cbd01: 83e101                       and      ecx, 1
00000000077cbd04: 75cf                         jne      0x77cbcd5
00000000077cbd06: 488bbd68ffffff               mov      rdi, qword ptr [rbp - 0x98]
00000000077cbd0d: e8de30e8ff                   call     0x764edf0
00000000077cbd12: 488d050ffa4f03               lea      rax, [rip + 0x34ffa0f]
00000000077cbd19: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cbd1c: 0f8cae000000                 jl       0x77cbdd0
00000000077cbd22: 488d0503fa4f03               lea      rax, [rip + 0x34ffa03]
00000000077cbd29: 8b00                         mov      eax, dword ptr [rax]
00000000077cbd2b: 89c1                         mov      ecx, eax
00000000077cbd2d: f7d1                         not      ecx
00000000077cbd2f: 0fafc8                       imul     ecx, eax
00000000077cbd32: 83e101                       and      ecx, 1
00000000077cbd35: 0f8495000000                 je       0x77cbdd0
00000000077cbd3b: 488b9d68ffffff               mov      rbx, qword ptr [rbp - 0x98]
00000000077cbd42: 4889df                       mov      rdi, rbx
00000000077cbd45: e8a630e8ff                   call     0x764edf0
00000000077cbd4a: 4889df                       mov      rdi, rbx
00000000077cbd4d: e89e30e8ff                   call     0x764edf0
00000000077cbd52: 488d05cff94f03               lea      rax, [rip + 0x34ff9cf]
00000000077cbd59: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cbd5c: 7c72                         jl       0x77cbdd0
00000000077cbd5e: 488d05c7f94f03               lea      rax, [rip + 0x34ff9c7]
00000000077cbd65: 8b00                         mov      eax, dword ptr [rax]
00000000077cbd67: 89c1                         mov      ecx, eax
00000000077cbd69: f7d1                         not      ecx
00000000077cbd6b: 0fafc8                       imul     ecx, eax
00000000077cbd6e: 83e101                       and      ecx, 1
00000000077cbd71: 75cf                         jne      0x77cbd42
00000000077cbd73: eb5b                         jmp      0x77cbdd0
00000000077cbd75: 488b8520ffffff               mov      rax, qword ptr [rbp - 0xe0]
00000000077cbd7c: f60001                       test     byte ptr [rax], 1
00000000077cbd7f: 7410                         je       0x77cbd91
00000000077cbd81: 488b8520ffffff               mov      rax, qword ptr [rbp - 0xe0]
00000000077cbd88: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cbd8c: e8afe3d3fc                   call     0x450a140
00000000077cbd91: 488d0590f94f03               lea      rax, [rip + 0x34ff990]
00000000077cbd98: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cbd9b: 7c33                         jl       0x77cbdd0
00000000077cbd9d: 488d0588f94f03               lea      rax, [rip + 0x34ff988]
00000000077cbda4: 8b00                         mov      eax, dword ptr [rax]
00000000077cbda6: 89c1                         mov      ecx, eax
00000000077cbda8: f7d1                         not      ecx
00000000077cbdaa: 0fafc8                       imul     ecx, eax
00000000077cbdad: 83e101                       and      ecx, 1
00000000077cbdb0: 741e                         je       0x77cbdd0
00000000077cbdb2: 488b8520ffffff               mov      rax, qword ptr [rbp - 0xe0]
00000000077cbdb9: f60001                       test     byte ptr [rax], 1
00000000077cbdbc: 74b7                         je       0x77cbd75
00000000077cbdbe: 488b8520ffffff               mov      rax, qword ptr [rbp - 0xe0]
00000000077cbdc5: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cbdc9: e872e3d3fc                   call     0x450a140
00000000077cbdce: eba5                         jmp      0x77cbd75
00000000077cbdd0: 488b9d78ffffff               mov      rbx, qword ptr [rbp - 0x88]
00000000077cbdd7: eb00                         jmp      0x77cbdd9
00000000077cbdd9: 4889df                       mov      rdi, rbx
00000000077cbddc: e80f5e0000                   call     0x77d1bf0
00000000077cbde1: 488d0540f94f03               lea      rax, [rip + 0x34ff940]
00000000077cbde8: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cbdeb: 0f8c04f9ffff                 jl       0x77cb6f5
00000000077cbdf1: 488d0534f94f03               lea      rax, [rip + 0x34ff934]
00000000077cbdf8: 8b00                         mov      eax, dword ptr [rax]
00000000077cbdfa: 89c1                         mov      ecx, eax
00000000077cbdfc: f7d1                         not      ecx
00000000077cbdfe: 0fafc8                       imul     ecx, eax
00000000077cbe01: 83e101                       and      ecx, 1
00000000077cbe04: 0f84ebf8ffff                 je       0x77cb6f5
00000000077cbe0a: 4889df                       mov      rdi, rbx
00000000077cbe0d: e8de5d0000                   call     0x77d1bf0
00000000077cbe12: 4889df                       mov      rdi, rbx
00000000077cbe15: e8d65d0000                   call     0x77d1bf0
00000000077cbe1a: 488d0507f94f03               lea      rax, [rip + 0x34ff907]
00000000077cbe21: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cbe24: 7cb3                         jl       0x77cbdd9
00000000077cbe26: 488d05fff84f03               lea      rax, [rip + 0x34ff8ff]
00000000077cbe2d: 8b00                         mov      eax, dword ptr [rax]
00000000077cbe2f: 89c1                         mov      ecx, eax
00000000077cbe31: f7d1                         not      ecx
00000000077cbe33: 0fafc8                       imul     ecx, eax
00000000077cbe36: 83e101                       and      ecx, 1
00000000077cbe39: 75cf                         jne      0x77cbe0a
00000000077cbe3b: eb9c                         jmp      0x77cbdd9
00000000077cbe3d: 4c89f7                       mov      rdi, r14
00000000077cbe40: e8eb579401                   call     0x9111630
00000000077cbe45: f60301                       test     byte ptr [rbx], 1
00000000077cbe48: 7409                         je       0x77cbe53
00000000077cbe4a: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cbe4e: e8ede2d3fc                   call     0x450a140
00000000077cbe53: 488d05cef84f03               lea      rax, [rip + 0x34ff8ce]
00000000077cbe5a: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cbe5d: 7c2d                         jl       0x77cbe8c
00000000077cbe5f: 488d05c6f84f03               lea      rax, [rip + 0x34ff8c6]
00000000077cbe66: 8b00                         mov      eax, dword ptr [rax]
00000000077cbe68: 89c1                         mov      ecx, eax
00000000077cbe6a: f7d1                         not      ecx
00000000077cbe6c: 0fafc8                       imul     ecx, eax
00000000077cbe6f: 83e101                       and      ecx, 1
00000000077cbe72: 7418                         je       0x77cbe8c
00000000077cbe74: 4c89f7                       mov      rdi, r14
00000000077cbe77: e8b4579401                   call     0x9111630
00000000077cbe7c: f60301                       test     byte ptr [rbx], 1
00000000077cbe7f: 74bc                         je       0x77cbe3d
00000000077cbe81: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cbe85: e8b6e2d3fc                   call     0x450a140
00000000077cbe8a: ebb1                         jmp      0x77cbe3d
00000000077cbe8c: 41833c2400                   cmp      dword ptr [r12], 0
00000000077cbe91: 757e                         jne      0x77cbf11
00000000077cbe93: 498b442420                   mov      rax, qword ptr [r12 + 0x20]
00000000077cbe98: 488b4010                     mov      rax, qword ptr [rax + 0x10]
00000000077cbe9c: 4885c0                       test     rax, rax
00000000077cbe9f: 750e                         jne      0x77cbeaf
00000000077cbea1: 488d0548ff5203               lea      rax, [rip + 0x352ff48]
00000000077cbea8: 488b00                       mov      rax, qword ptr [rax]
00000000077cbeab: 488b4010                     mov      rax, qword ptr [rax + 0x10]
00000000077cbeaf: 448bb090000000               mov      r14d, dword ptr [rax + 0x90]
00000000077cbeb6: 488b85f0feffff               mov      rax, qword ptr [rbp - 0x110]
00000000077cbebd: 488b18                       mov      rbx, qword ptr [rax]
00000000077cbec0: 4889df                       mov      rdi, rbx
00000000077cbec3: e8480e87fe                   call     0x603cd10
00000000077cbec8: 488b08                       mov      rcx, qword ptr [rax]
00000000077cbecb: 31f6                         xor      esi, esi
00000000077cbecd: 41f6c601                     test     r14b, 1
00000000077cbed1: 400f94c6                     sete     sil
00000000077cbed5: 4889c7                       mov      rdi, rax
00000000077cbed8: ff9190000000                 call     qword ptr [rcx + 0x90]
00000000077cbede: 4889df                       mov      rdi, rbx
00000000077cbee1: e82a0e87fe                   call     0x603cd10
00000000077cbee6: 498b4c2420                   mov      rcx, qword ptr [r12 + 0x20]
00000000077cbeeb: 488b4920                     mov      rcx, qword ptr [rcx + 0x20]
00000000077cbeef: 4885c9                       test     rcx, rcx
00000000077cbef2: 750e                         jne      0x77cbf02
00000000077cbef4: 488d0df5fe5203               lea      rcx, [rip + 0x352fef5]
00000000077cbefb: 488b09                       mov      rcx, qword ptr [rcx]
00000000077cbefe: 488b4920                     mov      rcx, qword ptr [rcx + 0x20]
00000000077cbf02: 8b7130                       mov      esi, dword ptr [rcx + 0x30]
00000000077cbf05: 488b08                       mov      rcx, qword ptr [rax]
00000000077cbf08: 4889c7                       mov      rdi, rax
00000000077cbf0b: ff9188000000                 call     qword ptr [rcx + 0x88]
00000000077cbf11: 41817c2404d3feffff           cmp      dword ptr [r12 + 4], 0xfffffed3
00000000077cbf1a: 4c8bb5e0feffff               mov      r14, qword ptr [rbp - 0x120]
00000000077cbf21: 0f85f8040000                 jne      0x77cc41f
00000000077cbf27: 498b442420                   mov      rax, qword ptr [r12 + 0x20]
00000000077cbf2c: 488b4020                     mov      rax, qword ptr [rax + 0x20]
00000000077cbf30: 4889c1                       mov      rcx, rax
00000000077cbf33: 4885c0                       test     rax, rax
00000000077cbf36: 750e                         jne      0x77cbf46
00000000077cbf38: 488d0db1fe5203               lea      rcx, [rip + 0x352feb1]
00000000077cbf3f: 488b09                       mov      rcx, qword ptr [rcx]
00000000077cbf42: 488b4920                     mov      rcx, qword ptr [rcx + 0x20]
00000000077cbf46: 488b4918                     mov      rcx, qword ptr [rcx + 0x18]
00000000077cbf4a: 4885c9                       test     rcx, rcx
00000000077cbf4d: 4c8bb520feffff               mov      r14, qword ptr [rbp - 0x1e0]
00000000077cbf54: 750e                         jne      0x77cbf64
00000000077cbf56: 488d0d6bfe5203               lea      rcx, [rip + 0x352fe6b]
00000000077cbf5d: 488b09                       mov      rcx, qword ptr [rcx]
00000000077cbf60: 488b4918                     mov      rcx, qword ptr [rcx + 0x18]
00000000077cbf64: 4889c2                       mov      rdx, rax
00000000077cbf67: 4885c0                       test     rax, rax
00000000077cbf6a: 750e                         jne      0x77cbf7a
00000000077cbf6c: 488d157dfe5203               lea      rdx, [rip + 0x352fe7d]
00000000077cbf73: 488b12                       mov      rdx, qword ptr [rdx]
00000000077cbf76: 488b5220                     mov      rdx, qword ptr [rdx + 0x20]
00000000077cbf7a: 4c8b4210                     mov      r8, qword ptr [rdx + 0x10]
00000000077cbf7e: 4d85c0                       test     r8, r8
00000000077cbf81: 0f840a020000                 je       0x77cc191
00000000077cbf87: 4885c0                       test     rax, rax
00000000077cbf8a: 0f8418020000                 je       0x77cc1a8
00000000077cbf90: 488b95f0feffff               mov      rdx, qword ptr [rbp - 0x110]
00000000077cbf97: 488b1a                       mov      rbx, qword ptr [rdx]
00000000077cbf9a: 4c8b4808                     mov      r9, qword ptr [rax + 8]
00000000077cbf9e: 4d85c9                       test     r9, r9
00000000077cbfa1: 750e                         jne      0x77cbfb1
00000000077cbfa3: 488d051efe5203               lea      rax, [rip + 0x352fe1e]
00000000077cbfaa: 488b00                       mov      rax, qword ptr [rax]
00000000077cbfad: 4c8b4808                     mov      r9, qword ptr [rax + 8]
00000000077cbfb1: 4889de                       mov      rsi, rbx
00000000077cbfb4: ba01000000                   mov      edx, 1
00000000077cbfb9: e8f2280000                   call     0x77ce8b0
00000000077cbfbe: 4889df                       mov      rdi, rbx
00000000077cbfc1: e84a0d87fe                   call     0x603cd10
00000000077cbfc6: 4c8b85e8feffff               mov      r8, qword ptr [rbp - 0x118]
00000000077cbfcd: 4d8d6008                     lea      r12, [r8 + 8]
00000000077cbfd1: 0f57c0                       xorps    xmm0, xmm0
00000000077cbfd4: 410f114008                   movups   xmmword ptr [r8 + 8], xmm0
00000000077cbfd9: 49c7401800000000             mov      qword ptr [r8 + 0x18], 0
00000000077cbfe1: 4d8938                       mov      qword ptr [r8], r15
00000000077cbfe4: 41c6402000                   mov      byte ptr [r8 + 0x20], 0
00000000077cbfe9: 41c7402400000000             mov      dword ptr [r8 + 0x24], 0
00000000077cbff1: 4c89f7                       mov      rdi, r14
00000000077cbff4: 4889c6                       mov      rsi, rax
00000000077cbff7: 4c89ea                       mov      rdx, r13
00000000077cbffa: 488b4d98                     mov      rcx, qword ptr [rbp - 0x68]
00000000077cbffe: e80d210000                   call     0x77ce110
00000000077cc003: 498b06                       mov      rax, qword ptr [r14]
00000000077cc006: 488b8d60ffffff               mov      rcx, qword ptr [rbp - 0xa0]
00000000077cc00d: 488901                       mov      qword ptr [rcx], rax
00000000077cc010: 488d7908                     lea      rdi, [rcx + 8]
00000000077cc014: 498d5e08                     lea      rbx, [r14 + 8]
00000000077cc018: 4889de                       mov      rsi, rbx
00000000077cc01b: e8901dd4fc                   call     0x450ddb0
00000000077cc020: 498b4e20                     mov      rcx, qword ptr [r14 + 0x20]
00000000077cc024: 498b4628                     mov      rax, qword ptr [r14 + 0x28]
00000000077cc028: 4885c0                       test     rax, rax
00000000077cc02b: 7405                         je       0x77cc032
00000000077cc02d: f048ff4008                   lock inc qword ptr [rax + 8]
00000000077cc032: 488b9560ffffff               mov      rdx, qword ptr [rbp - 0xa0]
00000000077cc039: 48894a20                     mov      qword ptr [rdx + 0x20], rcx
00000000077cc03d: 4c8b7228                     mov      r14, qword ptr [rdx + 0x28]
00000000077cc041: 48894228                     mov      qword ptr [rdx + 0x28], rax
00000000077cc045: 4d85f6                       test     r14, r14
00000000077cc048: 7423                         je       0x77cc06d
00000000077cc04a: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077cc051: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077cc057: 4885c0                       test     rax, rax
00000000077cc05a: 7511                         jne      0x77cc06d
00000000077cc05c: 498b06                       mov      rax, qword ptr [r14]
00000000077cc05f: 4c89f7                       mov      rdi, r14
00000000077cc062: ff5010                       call     qword ptr [rax + 0x10]
00000000077cc065: 4c89f7                       mov      rdi, r14
00000000077cc068: e863b1d6fc                   call     0x45371d0
00000000077cc06d: 4c8bb520feffff               mov      r14, qword ptr [rbp - 0x1e0]
00000000077cc074: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000077cc080: 4d8b7628                     mov      r14, qword ptr [r14 + 0x28]
00000000077cc084: 4d85f6                       test     r14, r14
00000000077cc087: 7423                         je       0x77cc0ac
00000000077cc089: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077cc090: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077cc096: 4885c0                       test     rax, rax
00000000077cc099: 7511                         jne      0x77cc0ac
00000000077cc09b: 498b06                       mov      rax, qword ptr [r14]
00000000077cc09e: 4c89f7                       mov      rdi, r14
00000000077cc0a1: ff5010                       call     qword ptr [rax + 0x10]
00000000077cc0a4: 4c89f7                       mov      rdi, r14
00000000077cc0a7: e824b1d6fc                   call     0x45371d0
00000000077cc0ac: f60301                       test     byte ptr [rbx], 1
00000000077cc0af: 4c8bb520feffff               mov      r14, qword ptr [rbp - 0x1e0]
00000000077cc0b6: 7409                         je       0x77cc0c1
00000000077cc0b8: 498b7e18                     mov      rdi, qword ptr [r14 + 0x18]
00000000077cc0bc: e87fe0d3fc                   call     0x450a140
00000000077cc0c1: 41f6042401                   test     byte ptr [r12], 1
00000000077cc0c6: 7410                         je       0x77cc0d8
00000000077cc0c8: 488b85e8feffff               mov      rax, qword ptr [rbp - 0x118]
00000000077cc0cf: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077cc0d3: e868e0d3fc                   call     0x450a140
00000000077cc0d8: 488d0549f64f03               lea      rax, [rip + 0x34ff649]
00000000077cc0df: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cc0e2: 7c76                         jl       0x77cc15a
00000000077cc0e4: 488d0541f64f03               lea      rax, [rip + 0x34ff641]
00000000077cc0eb: 8b00                         mov      eax, dword ptr [rax]
00000000077cc0ed: 89c1                         mov      ecx, eax
00000000077cc0ef: f7d1                         not      ecx
00000000077cc0f1: 0fafc8                       imul     ecx, eax
00000000077cc0f4: 83e101                       and      ecx, 1
00000000077cc0f7: 7461                         je       0x77cc15a
00000000077cc0f9: 4d8b7628                     mov      r14, qword ptr [r14 + 0x28]
00000000077cc0fd: 4d85f6                       test     r14, r14
00000000077cc100: 7423                         je       0x77cc125
00000000077cc102: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077cc109: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077cc10f: 4885c0                       test     rax, rax
00000000077cc112: 7511                         jne      0x77cc125
00000000077cc114: 498b06                       mov      rax, qword ptr [r14]
00000000077cc117: 4c89f7                       mov      rdi, r14
00000000077cc11a: ff5010                       call     qword ptr [rax + 0x10]
00000000077cc11d: 4c89f7                       mov      rdi, r14
00000000077cc120: e8abb0d6fc                   call     0x45371d0
00000000077cc125: f60301                       test     byte ptr [rbx], 1
00000000077cc128: 4c8bb520feffff               mov      r14, qword ptr [rbp - 0x1e0]
00000000077cc12f: 7409                         je       0x77cc13a
00000000077cc131: 498b7e18                     mov      rdi, qword ptr [r14 + 0x18]
00000000077cc135: e806e0d3fc                   call     0x450a140
00000000077cc13a: 41f6042401                   test     byte ptr [r12], 1
00000000077cc13f: 0f843bffffff                 je       0x77cc080
00000000077cc145: 488b85e8feffff               mov      rax, qword ptr [rbp - 0x118]
00000000077cc14c: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077cc150: e8ebdfd3fc                   call     0x450a140
00000000077cc155: e926ffffff                   jmp      0x77cc080
00000000077cc15a: bf04000000                   mov      edi, 4
00000000077cc15f: 4c8ba560ffffff               mov      r12, qword ptr [rbp - 0xa0]
00000000077cc166: e825ab9401                   call     0x9116c90
00000000077cc16b: 4c8bb5e0feffff               mov      r14, qword ptr [rbp - 0x120]
00000000077cc172: 85c0                         test     eax, eax
00000000077cc174: 0f84a5020000                 je       0x77cc41f
00000000077cc17a: 488b5db0                     mov      rbx, qword ptr [rbp - 0x50]
00000000077cc17e: 4889df                       mov      rdi, rbx
00000000077cc181: e84a68beff                   call     0x73b29d0
00000000077cc186: f60301                       test     byte ptr [rbx], 1
00000000077cc189: 7430                         je       0x77cc1bb
00000000077cc18b: 488b5310                     mov      rdx, qword ptr [rbx + 0x10]
00000000077cc18f: eb2e                         jmp      0x77cc1bf
00000000077cc191: 488d1530fc5203               lea      rdx, [rip + 0x352fc30]
00000000077cc198: 488b12                       mov      rdx, qword ptr [rdx]
00000000077cc19b: 4c8b4210                     mov      r8, qword ptr [rdx + 0x10]
00000000077cc19f: 4885c0                       test     rax, rax
00000000077cc1a2: 0f85e8fdffff                 jne      0x77cbf90
00000000077cc1a8: 488d0541fc5203               lea      rax, [rip + 0x352fc41]
00000000077cc1af: 488b00                       mov      rax, qword ptr [rax]
00000000077cc1b2: 488b4020                     mov      rax, qword ptr [rax + 0x20]
00000000077cc1b6: e9d5fdffff                   jmp      0x77cbf90
00000000077cc1bb: 488d5301                     lea      rdx, [rbx + 1]
00000000077cc1bf: 488d0dc64b80f9               lea      rcx, [rip - 0x67fb43a]
00000000077cc1c6: 4c8d05edca66f9               lea      r8, [rip - 0x6993513]
00000000077cc1cd: 488bbd10ffffff               mov      rdi, qword ptr [rbp - 0xf0]
00000000077cc1d4: be04000000                   mov      esi, 4
00000000077cc1d9: 41b9bd030000                 mov      r9d, 0x3bd
00000000077cc1df: 6a00                         push     0
00000000077cc1e1: 6a00                         push     0
00000000077cc1e3: e8b8539401                   call     0x91115a0
00000000077cc1e8: 4883c410                     add      rsp, 0x10
00000000077cc1ec: 4c8b9578fdffff               mov      r10, qword ptr [rbp - 0x288]
00000000077cc1f3: 4c8b9d80fdffff               mov      r11, qword ptr [rbp - 0x280]
00000000077cc1fa: 418b1424                     mov      edx, dword ptr [r12]
00000000077cc1fe: 49c70200000000               mov      qword ptr [r10], 0
00000000077cc205: b908000000                   mov      ecx, 8
00000000077cc20a: 488d05fb3176f9               lea      rax, [rip - 0x689ce05] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000077cc211: 89d6                         mov      esi, edx
00000000077cc213: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000077cc220: 4863fe                       movsxd   rdi, esi
00000000077cc223: 4869f767666666               imul     rsi, rdi, 0x66666667
00000000077cc22a: 4989f0                       mov      r8, rsi
00000000077cc22d: 49c1e83f                     shr      r8, 0x3f
00000000077cc231: 48c1fe22                     sar      rsi, 0x22
00000000077cc235: 4401c6                       add      esi, r8d
00000000077cc238: 448d0436                     lea      r8d, [rsi + rsi]
00000000077cc23c: 478d0480                     lea      r8d, [r8 + r8*4]
00000000077cc240: 4189f9                       mov      r9d, edi
00000000077cc243: 4529c1                       sub      r9d, r8d
00000000077cc246: 4d63c1                       movsxd   r8, r9d
00000000077cc249: 450fb6440023                 movzx    r8d, byte ptr [r8 + rax + 0x23]
00000000077cc24f: 4588040a                     mov      byte ptr [r10 + rcx], r8b
00000000077cc253: 48ffc1                       inc      rcx
00000000077cc256: 83c709                       add      edi, 9
00000000077cc259: 83ff12                       cmp      edi, 0x12
00000000077cc25c: 77c2                         ja       0x77cc220
00000000077cc25e: 85d2                         test     edx, edx
00000000077cc260: 7908                         jns      0x77cc26a
00000000077cc262: 41c6040a2d                   mov      byte ptr [r10 + rcx], 0x2d
00000000077cc267: 48ffc1                       inc      rcx
00000000077cc26a: 498d5208                     lea      rdx, [r10 + 8]
00000000077cc26e: 41c6040a00                   mov      byte ptr [r10 + rcx], 0
00000000077cc273: 4883f90a                     cmp      rcx, 0xa
00000000077cc277: 7c35                         jl       0x77cc2ae
00000000077cc279: 4c01d1                       add      rcx, r10
00000000077cc27c: 48ffc9                       dec      rcx
00000000077cc27f: 498d7209                     lea      rsi, [r10 + 9]
00000000077cc283: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000077cc290: 0fb639                       movzx    edi, byte ptr [rcx]
00000000077cc293: 440fb646ff                   movzx    r8d, byte ptr [rsi - 1]
00000000077cc298: 448801                       mov      byte ptr [rcx], r8b
00000000077cc29b: 40887eff                     mov      byte ptr [rsi - 1], dil
00000000077cc29f: 48ffc9                       dec      rcx
00000000077cc2a2: 488d7e01                     lea      rdi, [rsi + 1]
00000000077cc2a6: 4839ce                       cmp      rsi, rcx
00000000077cc2a9: 4889fe                       mov      rsi, rdi
00000000077cc2ac: 72e2                         jb       0x77cc290
00000000077cc2ae: 498912                       mov      qword ptr [r10], rdx
00000000077cc2b1: 418b542404                   mov      edx, dword ptr [r12 + 4]
00000000077cc2b6: 49c70300000000               mov      qword ptr [r11], 0
00000000077cc2bd: b908000000                   mov      ecx, 8
00000000077cc2c2: 89d6                         mov      esi, edx
00000000077cc2c4: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000077cc2d0: 4863fe                       movsxd   rdi, esi
00000000077cc2d3: 4869f767666666               imul     rsi, rdi, 0x66666667
00000000077cc2da: 4989f0                       mov      r8, rsi
00000000077cc2dd: 49c1e83f                     shr      r8, 0x3f
00000000077cc2e1: 48c1fe22                     sar      rsi, 0x22
00000000077cc2e5: 4401c6                       add      esi, r8d
00000000077cc2e8: 448d0436                     lea      r8d, [rsi + rsi]
00000000077cc2ec: 478d0480                     lea      r8d, [r8 + r8*4]
00000000077cc2f0: 4189f9                       mov      r9d, edi
00000000077cc2f3: 4529c1                       sub      r9d, r8d
00000000077cc2f6: 4d63c1                       movsxd   r8, r9d
00000000077cc2f9: 450fb6440023                 movzx    r8d, byte ptr [r8 + rax + 0x23]
00000000077cc2ff: 4588040b                     mov      byte ptr [r11 + rcx], r8b
00000000077cc303: 48ffc1                       inc      rcx
00000000077cc306: 83c709                       add      edi, 9
00000000077cc309: 83ff12                       cmp      edi, 0x12
00000000077cc30c: 77c2                         ja       0x77cc2d0
00000000077cc30e: 85d2                         test     edx, edx
00000000077cc310: 7908                         jns      0x77cc31a
00000000077cc312: 41c6040b2d                   mov      byte ptr [r11 + rcx], 0x2d
00000000077cc317: 48ffc1                       inc      rcx
00000000077cc31a: 498d4308                     lea      rax, [r11 + 8]
00000000077cc31e: 41c6040b00                   mov      byte ptr [r11 + rcx], 0
00000000077cc323: 4883f90a                     cmp      rcx, 0xa
00000000077cc327: 7c34                         jl       0x77cc35d
00000000077cc329: 4c01d9                       add      rcx, r11
00000000077cc32c: 48ffc9                       dec      rcx
00000000077cc32f: 498d5309                     lea      rdx, [r11 + 9]
00000000077cc333: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000077cc340: 0fb631                       movzx    esi, byte ptr [rcx]
00000000077cc343: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
00000000077cc347: 408839                       mov      byte ptr [rcx], dil
00000000077cc34a: 408872ff                     mov      byte ptr [rdx - 1], sil
00000000077cc34e: 48ffc9                       dec      rcx
00000000077cc351: 488d7201                     lea      rsi, [rdx + 1]
00000000077cc355: 4839ca                       cmp      rdx, rcx
00000000077cc358: 4889f2                       mov      rdx, rsi
00000000077cc35b: 72e3                         jb       0x77cc340
00000000077cc35d: 498903                       mov      qword ptr [r11], rax
00000000077cc360: 4c899540feffff               mov      qword ptr [rbp - 0x1c0], r10
00000000077cc367: 4c899d48feffff               mov      qword ptr [rbp - 0x1b8], r11
00000000077cc36e: 0f57c0                       xorps    xmm0, xmm0
00000000077cc371: 0f298550feffff               movaps   xmmword ptr [rbp - 0x1b0], xmm0
00000000077cc378: 0f298560feffff               movaps   xmmword ptr [rbp - 0x1a0], xmm0
00000000077cc37f: 0f298570feffff               movaps   xmmword ptr [rbp - 0x190], xmm0
00000000077cc386: 0f298580feffff               movaps   xmmword ptr [rbp - 0x180], xmm0
00000000077cc38d: 0f298590feffff               movaps   xmmword ptr [rbp - 0x170], xmm0
00000000077cc394: 0f2985a0feffff               movaps   xmmword ptr [rbp - 0x160], xmm0
00000000077cc39b: 0f2985b0feffff               movaps   xmmword ptr [rbp - 0x150], xmm0
00000000077cc3a2: 488d3521ed6ff9               lea      rsi, [rip - 0x69012df]
00000000077cc3a9: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077cc3b0: 488bbd10ffffff               mov      rdi, qword ptr [rbp - 0xf0]
00000000077cc3b7: e834559401                   call     0x91118f0
00000000077cc3bc: 488b5db0                     mov      rbx, qword ptr [rbp - 0x50]
00000000077cc3c0: 488bbd10ffffff               mov      rdi, qword ptr [rbp - 0xf0]
00000000077cc3c7: e864529401                   call     0x9111630
00000000077cc3cc: f60301                       test     byte ptr [rbx], 1
00000000077cc3cf: 740d                         je       0x77cc3de
00000000077cc3d1: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077cc3d5: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cc3d9: e862ddd3fc                   call     0x450a140
00000000077cc3de: 488d0543f34f03               lea      rax, [rip + 0x34ff343]
00000000077cc3e5: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cc3e8: 7c35                         jl       0x77cc41f
00000000077cc3ea: 488d053bf34f03               lea      rax, [rip + 0x34ff33b]
00000000077cc3f1: 8b00                         mov      eax, dword ptr [rax]
00000000077cc3f3: 89c1                         mov      ecx, eax
00000000077cc3f5: f7d1                         not      ecx
00000000077cc3f7: 0fafc8                       imul     ecx, eax
00000000077cc3fa: 83e101                       and      ecx, 1
00000000077cc3fd: 7420                         je       0x77cc41f
00000000077cc3ff: 488bbd10ffffff               mov      rdi, qword ptr [rbp - 0xf0]
00000000077cc406: e825529401                   call     0x9111630
00000000077cc40b: 488b5db0                     mov      rbx, qword ptr [rbp - 0x50]
00000000077cc40f: f60301                       test     byte ptr [rbx], 1
00000000077cc412: 74ac                         je       0x77cc3c0
00000000077cc414: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cc418: e823ddd3fc                   call     0x450a140
00000000077cc41d: eba1                         jmp      0x77cc3c0
00000000077cc41f: 41817c2404cffeffff           cmp      dword ptr [r12 + 4], 0xfffffecf
00000000077cc428: 0f8504030000                 jne      0x77cc732
00000000077cc42e: e82dad2200                   call     0x79f7160
00000000077cc433: 84c0                         test     al, al
00000000077cc435: 0f84f7020000                 je       0x77cc732
00000000077cc43b: 488b85f0feffff               mov      rax, qword ptr [rbp - 0x110]
00000000077cc442: 488b38                       mov      rdi, qword ptr [rax]
00000000077cc445: e8c60887fe                   call     0x603cd10
00000000077cc44a: 488b8de0fdffff               mov      rcx, qword ptr [rbp - 0x220]
00000000077cc451: 4c8d6108                     lea      r12, [rcx + 8]
00000000077cc455: c7412400000000               mov      dword ptr [rcx + 0x24], 0
00000000077cc45c: 4c8939                       mov      qword ptr [rcx], r15
00000000077cc45f: 4989cf                       mov      r15, rcx
00000000077cc462: 0f57c0                       xorps    xmm0, xmm0
00000000077cc465: 0f114108                     movups   xmmword ptr [rcx + 8], xmm0
00000000077cc469: 0f114111                     movups   xmmword ptr [rcx + 0x11], xmm0
00000000077cc46d: 4c89f7                       mov      rdi, r14
00000000077cc470: 4889c6                       mov      rsi, rax
00000000077cc473: 4c89ea                       mov      rdx, r13
00000000077cc476: 488b4d98                     mov      rcx, qword ptr [rbp - 0x68]
00000000077cc47a: 4d89f8                       mov      r8, r15
00000000077cc47d: e88e1c0000                   call     0x77ce110
00000000077cc482: 498b06                       mov      rax, qword ptr [r14]
00000000077cc485: 488b8d60ffffff               mov      rcx, qword ptr [rbp - 0xa0]
00000000077cc48c: 488901                       mov      qword ptr [rcx], rax
00000000077cc48f: 488d7908                     lea      rdi, [rcx + 8]
00000000077cc493: 498d5e08                     lea      rbx, [r14 + 8]
00000000077cc497: 4889de                       mov      rsi, rbx
00000000077cc49a: e81119d4fc                   call     0x450ddb0
00000000077cc49f: 498b4e20                     mov      rcx, qword ptr [r14 + 0x20]
00000000077cc4a3: 498b4628                     mov      rax, qword ptr [r14 + 0x28]
00000000077cc4a7: 4885c0                       test     rax, rax
00000000077cc4aa: 7405                         je       0x77cc4b1
00000000077cc4ac: f048ff4008                   lock inc qword ptr [rax + 8]
00000000077cc4b1: 488b9560ffffff               mov      rdx, qword ptr [rbp - 0xa0]
00000000077cc4b8: 48894a20                     mov      qword ptr [rdx + 0x20], rcx
00000000077cc4bc: 4c8b7228                     mov      r14, qword ptr [rdx + 0x28]
00000000077cc4c0: 48894228                     mov      qword ptr [rdx + 0x28], rax
00000000077cc4c4: 4d85f6                       test     r14, r14
00000000077cc4c7: 7423                         je       0x77cc4ec
00000000077cc4c9: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077cc4d0: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077cc4d6: 4885c0                       test     rax, rax
00000000077cc4d9: 7511                         jne      0x77cc4ec
00000000077cc4db: 498b06                       mov      rax, qword ptr [r14]
00000000077cc4de: 4c89f7                       mov      rdi, r14
00000000077cc4e1: ff5010                       call     qword ptr [rax + 0x10]
00000000077cc4e4: 4c89f7                       mov      rdi, r14
00000000077cc4e7: e8e4acd6fc                   call     0x45371d0
00000000077cc4ec: 4c8bb5e0feffff               mov      r14, qword ptr [rbp - 0x120]
00000000077cc4f3: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000077cc500: 4d8b7628                     mov      r14, qword ptr [r14 + 0x28]
00000000077cc504: 4d85f6                       test     r14, r14
00000000077cc507: 7423                         je       0x77cc52c
00000000077cc509: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077cc510: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077cc516: 4885c0                       test     rax, rax
00000000077cc519: 7511                         jne      0x77cc52c
00000000077cc51b: 498b06                       mov      rax, qword ptr [r14]
00000000077cc51e: 4c89f7                       mov      rdi, r14
00000000077cc521: ff5010                       call     qword ptr [rax + 0x10]
00000000077cc524: 4c89f7                       mov      rdi, r14
00000000077cc527: e8a4acd6fc                   call     0x45371d0
00000000077cc52c: f60301                       test     byte ptr [rbx], 1
00000000077cc52f: 4c8bb5e0feffff               mov      r14, qword ptr [rbp - 0x120]
00000000077cc536: 7409                         je       0x77cc541
00000000077cc538: 498b7e18                     mov      rdi, qword ptr [r14 + 0x18]
00000000077cc53c: e8ffdbd3fc                   call     0x450a140
00000000077cc541: 41f6042401                   test     byte ptr [r12], 1
00000000077cc546: 7409                         je       0x77cc551
00000000077cc548: 498b7f18                     mov      rdi, qword ptr [r15 + 0x18]
00000000077cc54c: e8efdbd3fc                   call     0x450a140
00000000077cc551: 488d05d0f14f03               lea      rax, [rip + 0x34ff1d0]
00000000077cc558: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cc55b: 7c6f                         jl       0x77cc5cc
00000000077cc55d: 488d05c8f14f03               lea      rax, [rip + 0x34ff1c8]
00000000077cc564: 8b00                         mov      eax, dword ptr [rax]
00000000077cc566: 89c1                         mov      ecx, eax
00000000077cc568: f7d1                         not      ecx
00000000077cc56a: 0fafc8                       imul     ecx, eax
00000000077cc56d: 83e101                       and      ecx, 1
00000000077cc570: 745a                         je       0x77cc5cc
00000000077cc572: 4d8b7628                     mov      r14, qword ptr [r14 + 0x28]
00000000077cc576: 4d85f6                       test     r14, r14
00000000077cc579: 7423                         je       0x77cc59e
00000000077cc57b: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077cc582: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077cc588: 4885c0                       test     rax, rax
00000000077cc58b: 7511                         jne      0x77cc59e
00000000077cc58d: 498b06                       mov      rax, qword ptr [r14]
00000000077cc590: 4c89f7                       mov      rdi, r14
00000000077cc593: ff5010                       call     qword ptr [rax + 0x10]
00000000077cc596: 4c89f7                       mov      rdi, r14
00000000077cc599: e832acd6fc                   call     0x45371d0
00000000077cc59e: f60301                       test     byte ptr [rbx], 1
00000000077cc5a1: 4c8bb5e0feffff               mov      r14, qword ptr [rbp - 0x120]
00000000077cc5a8: 7409                         je       0x77cc5b3
00000000077cc5aa: 498b7e18                     mov      rdi, qword ptr [r14 + 0x18]
00000000077cc5ae: e88ddbd3fc                   call     0x450a140
00000000077cc5b3: 41f6042401                   test     byte ptr [r12], 1
00000000077cc5b8: 0f8442ffffff                 je       0x77cc500
00000000077cc5be: 498b7f18                     mov      rdi, qword ptr [r15 + 0x18]
00000000077cc5c2: e879dbd3fc                   call     0x450a140
00000000077cc5c7: e934ffffff                   jmp      0x77cc500
00000000077cc5cc: bf04000000                   mov      edi, 4
00000000077cc5d1: 4c8ba560ffffff               mov      r12, qword ptr [rbp - 0xa0]
00000000077cc5d8: e8b3a69401                   call     0x9116c90
00000000077cc5dd: 488b9d08ffffff               mov      rbx, qword ptr [rbp - 0xf8]
00000000077cc5e4: 4c8bb5a0fdffff               mov      r14, qword ptr [rbp - 0x260]
00000000077cc5eb: 85c0                         test     eax, eax
00000000077cc5ed: 0f843a010000                 je       0x77cc72d
00000000077cc5f3: 4889df                       mov      rdi, rbx
00000000077cc5f6: e8d563beff                   call     0x73b29d0
00000000077cc5fb: f60301                       test     byte ptr [rbx], 1
00000000077cc5fe: 7406                         je       0x77cc606
00000000077cc600: 488b5310                     mov      rdx, qword ptr [rbx + 0x10]
00000000077cc604: eb04                         jmp      0x77cc60a
00000000077cc606: 488d5301                     lea      rdx, [rbx + 1]
00000000077cc60a: 488d0d7b4780f9               lea      rcx, [rip - 0x67fb885]
00000000077cc611: 4c8d05a2c666f9               lea      r8, [rip - 0x699395e]
00000000077cc618: 4c89f7                       mov      rdi, r14
00000000077cc61b: be04000000                   mov      esi, 4
00000000077cc620: 41b9c2030000                 mov      r9d, 0x3c2
00000000077cc626: 6a00                         push     0
00000000077cc628: 6a00                         push     0
00000000077cc62a: e8714f9401                   call     0x91115a0
00000000077cc62f: 4883c410                     add      rsp, 0x10
00000000077cc633: 0f57c0                       xorps    xmm0, xmm0
00000000077cc636: 0f2985b0feffff               movaps   xmmword ptr [rbp - 0x150], xmm0
00000000077cc63d: 0f2985a0feffff               movaps   xmmword ptr [rbp - 0x160], xmm0
00000000077cc644: 0f298590feffff               movaps   xmmword ptr [rbp - 0x170], xmm0
00000000077cc64b: 0f298580feffff               movaps   xmmword ptr [rbp - 0x180], xmm0
00000000077cc652: 0f298570feffff               movaps   xmmword ptr [rbp - 0x190], xmm0
00000000077cc659: 0f298560feffff               movaps   xmmword ptr [rbp - 0x1a0], xmm0
00000000077cc660: 0f298550feffff               movaps   xmmword ptr [rbp - 0x1b0], xmm0
00000000077cc667: 0f298540feffff               movaps   xmmword ptr [rbp - 0x1c0], xmm0
00000000077cc66e: 488d35c2cd69f9               lea      rsi, [rip - 0x696323e]
00000000077cc675: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077cc67c: 4c89f7                       mov      rdi, r14
00000000077cc67f: e86c529401                   call     0x91118f0
00000000077cc684: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000077cc690: 488d0591f04f03               lea      rax, [rip + 0x34ff091]
00000000077cc697: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cc69a: 7c6f                         jl       0x77cc70b
00000000077cc69c: 488d0589f04f03               lea      rax, [rip + 0x34ff089]
00000000077cc6a3: 8b00                         mov      eax, dword ptr [rax]
00000000077cc6a5: 89c1                         mov      ecx, eax
00000000077cc6a7: f7d1                         not      ecx
00000000077cc6a9: 0fafc8                       imul     ecx, eax
00000000077cc6ac: 83e101                       and      ecx, 1
00000000077cc6af: 745a                         je       0x77cc70b
00000000077cc6b1: 4c89f7                       mov      rdi, r14
00000000077cc6b4: e8774f9401                   call     0x9111630
00000000077cc6b9: f60301                       test     byte ptr [rbx], 1
00000000077cc6bc: 7409                         je       0x77cc6c7
00000000077cc6be: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cc6c2: e879dad3fc                   call     0x450a140
00000000077cc6c7: 4c89f7                       mov      rdi, r14
00000000077cc6ca: e8614f9401                   call     0x9111630
00000000077cc6cf: f60301                       test     byte ptr [rbx], 1
00000000077cc6d2: 74bc                         je       0x77cc690
00000000077cc6d4: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cc6d8: e863dad3fc                   call     0x450a140
00000000077cc6dd: ebb1                         jmp      0x77cc690
00000000077cc6df: 90                           nop
00000000077cc6e0: 488d0545f04f03               lea      rax, [rip + 0x34ff045]
00000000077cc6e7: 8b00                         mov      eax, dword ptr [rax]
00000000077cc6e9: 89c1                         mov      ecx, eax
00000000077cc6eb: f7d1                         not      ecx
00000000077cc6ed: 0fafc8                       imul     ecx, eax
00000000077cc6f0: 83e101                       and      ecx, 1
00000000077cc6f3: 7438                         je       0x77cc72d
00000000077cc6f5: 4c89f7                       mov      rdi, r14
00000000077cc6f8: e8334f9401                   call     0x9111630
00000000077cc6fd: f60301                       test     byte ptr [rbx], 1
00000000077cc700: 7409                         je       0x77cc70b
00000000077cc702: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cc706: e835dad3fc                   call     0x450a140
00000000077cc70b: 4c89f7                       mov      rdi, r14
00000000077cc70e: e81d4f9401                   call     0x9111630
00000000077cc713: f60301                       test     byte ptr [rbx], 1
00000000077cc716: 7409                         je       0x77cc721
00000000077cc718: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cc71c: e81fdad3fc                   call     0x450a140
00000000077cc721: 488d0500f04f03               lea      rax, [rip + 0x34ff000]
00000000077cc728: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cc72b: 7db3                         jge      0x77cc6e0
00000000077cc72d: e8aead2200                   call     0x79f74e0
00000000077cc732: e8a9fd86fe                   call     0x603c4e0
00000000077cc737: 488b08                       mov      rcx, qword ptr [rax]
00000000077cc73a: 4889c7                       mov      rdi, rax
00000000077cc73d: ff5118                       call     qword ptr [rcx + 0x18]
00000000077cc740: 418b0c24                     mov      ecx, dword ptr [r12]
00000000077cc744: 31d2                         xor      edx, edx
00000000077cc746: 410b4c2404                   or       ecx, dword ptr [r12 + 4]
00000000077cc74b: 0f94c2                       sete     dl
00000000077cc74e: 488b08                       mov      rcx, qword ptr [rax]
00000000077cc751: 4889c7                       mov      rdi, rax
00000000077cc754: 31f6                         xor      esi, esi
00000000077cc756: ff91d8000000                 call     qword ptr [rcx + 0xd8]
00000000077cc75c: 488b85f0fdffff               mov      rax, qword ptr [rbp - 0x210]
00000000077cc763: 4c8b00                       mov      r8, qword ptr [rax]
00000000077cc766: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077cc76a: 488b08                       mov      rcx, qword ptr [rax]
00000000077cc76d: 488bbd68ffffff               mov      rdi, qword ptr [rbp - 0x98]
00000000077cc774: 488bb5d8feffff               mov      rsi, qword ptr [rbp - 0x128]
00000000077cc77b: 4c89e2                       mov      rdx, r12
00000000077cc77e: 6a00                         push     0
00000000077cc780: ffb530ffffff                 push     qword ptr [rbp - 0xd0]
00000000077cc786: e825350000                   call     0x77cfcb0
00000000077cc78b: 4883c410                     add      rsp, 0x10
00000000077cc78f: 90                           nop
00000000077cc790: 498b5c2428                   mov      rbx, qword ptr [r12 + 0x28]
00000000077cc795: 4885db                       test     rbx, rbx
00000000077cc798: 7416                         je       0x77cc7b0
00000000077cc79a: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077cc7a1: f0480fc14308                 lock xadd qword ptr [rbx + 8], rax
00000000077cc7a7: 4885c0                       test     rax, rax
00000000077cc7aa: 0f8450010000                 je       0x77cc900
00000000077cc7b0: 41f644240801                 test     byte ptr [r12 + 8], 1
00000000077cc7b6: 740a                         je       0x77cc7c2
00000000077cc7b8: 498b7c2418                   mov      rdi, qword ptr [r12 + 0x18]
00000000077cc7bd: e87ed9d3fc                   call     0x450a140
00000000077cc7c2: 488b8570ffffff               mov      rax, qword ptr [rbp - 0x90]
00000000077cc7c9: 488b5828                     mov      rbx, qword ptr [rax + 0x28]
00000000077cc7cd: 4885db                       test     rbx, rbx
00000000077cc7d0: 7423                         je       0x77cc7f5
00000000077cc7d2: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077cc7d9: f0480fc14308                 lock xadd qword ptr [rbx + 8], rax
00000000077cc7df: 4885c0                       test     rax, rax
00000000077cc7e2: 7511                         jne      0x77cc7f5
00000000077cc7e4: 488b03                       mov      rax, qword ptr [rbx]
00000000077cc7e7: 4889df                       mov      rdi, rbx
00000000077cc7ea: ff5010                       call     qword ptr [rax + 0x10]
00000000077cc7ed: 4889df                       mov      rdi, rbx
00000000077cc7f0: e8dba9d6fc                   call     0x45371d0
00000000077cc7f5: 488b8570ffffff               mov      rax, qword ptr [rbp - 0x90]
00000000077cc7fc: f6400801                     test     byte ptr [rax + 8], 1
00000000077cc800: 7410                         je       0x77cc812
00000000077cc802: 488b8570ffffff               mov      rax, qword ptr [rbp - 0x90]
00000000077cc809: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077cc80d: e82ed9d3fc                   call     0x450a140
00000000077cc812: 488b4588                     mov      rax, qword ptr [rbp - 0x78]
00000000077cc816: f60001                       test     byte ptr [rax], 1
00000000077cc819: 740d                         je       0x77cc828
00000000077cc81b: 488b4588                     mov      rax, qword ptr [rbp - 0x78]
00000000077cc81f: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cc823: e818d9d3fc                   call     0x450a140
00000000077cc828: 488d05f9ee4f03               lea      rax, [rip + 0x34feef9]
00000000077cc82f: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cc832: 0f8cf4dfffff                 jl       0x77ca82c
00000000077cc838: 488d05edee4f03               lea      rax, [rip + 0x34feeed]
00000000077cc83f: 8b00                         mov      eax, dword ptr [rax]
00000000077cc841: 89c1                         mov      ecx, eax
00000000077cc843: f7d1                         not      ecx
00000000077cc845: 0fafc8                       imul     ecx, eax
00000000077cc848: 83e101                       and      ecx, 1
00000000077cc84b: 0f84dbdfffff                 je       0x77ca82c
00000000077cc851: 498b5c2428                   mov      rbx, qword ptr [r12 + 0x28]
00000000077cc856: 4885db                       test     rbx, rbx
00000000077cc859: 7416                         je       0x77cc871
00000000077cc85b: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077cc862: f0480fc14308                 lock xadd qword ptr [rbx + 8], rax
00000000077cc868: 4885c0                       test     rax, rax
00000000077cc86b: 0f84bf000000                 je       0x77cc930
00000000077cc871: 41f644240801                 test     byte ptr [r12 + 8], 1
00000000077cc877: 740a                         je       0x77cc883
00000000077cc879: 498b7c2418                   mov      rdi, qword ptr [r12 + 0x18]
00000000077cc87e: e8bdd8d3fc                   call     0x450a140
00000000077cc883: 488b8570ffffff               mov      rax, qword ptr [rbp - 0x90]
00000000077cc88a: 488b5828                     mov      rbx, qword ptr [rax + 0x28]
00000000077cc88e: 4885db                       test     rbx, rbx
00000000077cc891: 7423                         je       0x77cc8b6
00000000077cc893: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077cc89a: f0480fc14308                 lock xadd qword ptr [rbx + 8], rax
00000000077cc8a0: 4885c0                       test     rax, rax
00000000077cc8a3: 7511                         jne      0x77cc8b6
00000000077cc8a5: 488b03                       mov      rax, qword ptr [rbx]
00000000077cc8a8: 4889df                       mov      rdi, rbx
00000000077cc8ab: ff5010                       call     qword ptr [rax + 0x10]
00000000077cc8ae: 4889df                       mov      rdi, rbx
00000000077cc8b1: e81aa9d6fc                   call     0x45371d0
00000000077cc8b6: 488b8570ffffff               mov      rax, qword ptr [rbp - 0x90]
00000000077cc8bd: f6400801                     test     byte ptr [rax + 8], 1
00000000077cc8c1: 7410                         je       0x77cc8d3
00000000077cc8c3: 488b8570ffffff               mov      rax, qword ptr [rbp - 0x90]
00000000077cc8ca: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077cc8ce: e86dd8d3fc                   call     0x450a140
00000000077cc8d3: 488b4588                     mov      rax, qword ptr [rbp - 0x78]
00000000077cc8d7: f60001                       test     byte ptr [rax], 1
00000000077cc8da: 0f84b0feffff                 je       0x77cc790
00000000077cc8e0: 488b4588                     mov      rax, qword ptr [rbp - 0x78]
00000000077cc8e4: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cc8e8: e853d8d3fc                   call     0x450a140
00000000077cc8ed: e99efeffff                   jmp      0x77cc790
00000000077cc8f2: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077cc900: 488b03                       mov      rax, qword ptr [rbx]
00000000077cc903: 4889df                       mov      rdi, rbx
00000000077cc906: ff5010                       call     qword ptr [rax + 0x10]
00000000077cc909: 4889df                       mov      rdi, rbx
00000000077cc90c: e8bfa8d6fc                   call     0x45371d0
00000000077cc911: 41f644240801                 test     byte ptr [r12 + 8], 1
00000000077cc917: 0f859bfeffff                 jne      0x77cc7b8
00000000077cc91d: e9a0feffff                   jmp      0x77cc7c2
00000000077cc922: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077cc930: 488b03                       mov      rax, qword ptr [rbx]
00000000077cc933: 4889df                       mov      rdi, rbx
00000000077cc936: ff5010                       call     qword ptr [rax + 0x10]
00000000077cc939: 4889df                       mov      rdi, rbx
00000000077cc93c: e88fa8d6fc                   call     0x45371d0
00000000077cc941: 41f644240801                 test     byte ptr [r12 + 8], 1
00000000077cc947: 0f852cffffff                 jne      0x77cc879
00000000077cc94d: e931ffffff                   jmp      0x77cc883
00000000077cc952: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cc956: 488901                       mov      qword ptr [rcx], rax
00000000077cc959: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cc95d: 8910                         mov      dword ptr [rax], edx
00000000077cc95f: 4c89f7                       mov      rdi, r14
00000000077cc962: e8c94c9401                   call     0x9111630
00000000077cc967: eb0d                         jmp      0x77cc976
00000000077cc969: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cc96d: 488901                       mov      qword ptr [rcx], rax
00000000077cc970: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cc974: 8910                         mov      dword ptr [rax], edx
00000000077cc976: 488b8508ffffff               mov      rax, qword ptr [rbp - 0xf8]
00000000077cc97d: f60001                       test     byte ptr [rax], 1
00000000077cc980: 7410                         je       0x77cc992
00000000077cc982: 488b8508ffffff               mov      rax, qword ptr [rbp - 0xf8]
00000000077cc989: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cc98d: e8aed7d3fc                   call     0x450a140
00000000077cc992: 488d058fed4f03               lea      rax, [rip + 0x34fed8f]
00000000077cc999: 83380a                       cmp      dword ptr [rax], 0xa
00000000077cc99c: 0f8c36020000                 jl       0x77ccbd8
00000000077cc9a2: 488d0583ed4f03               lea      rax, [rip + 0x34fed83]
00000000077cc9a9: 8b00                         mov      eax, dword ptr [rax]
00000000077cc9ab: 89c1                         mov      ecx, eax
00000000077cc9ad: f7d1                         not      ecx
00000000077cc9af: 0fafc8                       imul     ecx, eax
00000000077cc9b2: 83e101                       and      ecx, 1
00000000077cc9b5: 0f841d020000                 je       0x77ccbd8
00000000077cc9bb: 488b8508ffffff               mov      rax, qword ptr [rbp - 0xf8]
00000000077cc9c2: f60001                       test     byte ptr [rax], 1
00000000077cc9c5: 74af                         je       0x77cc976
00000000077cc9c7: 488b8508ffffff               mov      rax, qword ptr [rbp - 0xf8]
00000000077cc9ce: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077cc9d2: e869d7d3fc                   call     0x450a140
00000000077cc9d7: eb9d                         jmp      0x77cc976
00000000077cc9d9: e9ed010000                   jmp      0x77ccbcb
00000000077cc9de: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cc9e2: 488901                       mov      qword ptr [rcx], rax
00000000077cc9e5: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cc9e9: 8910                         mov      dword ptr [rax], edx
00000000077cc9eb: 4c89f7                       mov      rdi, r14
00000000077cc9ee: e85d320000                   call     0x77cfc50
00000000077cc9f3: eb0d                         jmp      0x77cca02
00000000077cc9f5: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cc9f9: 488901                       mov      qword ptr [rcx], rax
00000000077cc9fc: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cca00: 8910                         mov      dword ptr [rax], edx
00000000077cca02: 41f6042401                   test     byte ptr [r12], 1
00000000077cca07: 0f84cb010000                 je       0x77ccbd8
00000000077cca0d: 488b85e0fdffff               mov      rax, qword ptr [rbp - 0x220]
00000000077cca14: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077cca18: e823d7d3fc                   call     0x450a140
00000000077cca1d: e9b6010000                   jmp      0x77ccbd8
00000000077cca22: e9a4010000                   jmp      0x77ccbcb
00000000077cca27: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077cca2b: 488901                       mov      qword ptr [rcx], rax
00000000077cca2e: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077cca32: 8910                         mov      dword ptr [rax], edx
00000000077cca34: 488bbd10ffffff               mov      rdi, qword ptr [rbp - 0xf0]
00000000077cca3b: e8f04b9401                   call     0x9111630
00000000077cca40: 488d05e5ec4f03               lea      rax, [rip + 0x34fece5]
00000000077cca47: 8b10                         mov      edx, dword ptr [rax]
00000000077cca49: 488d05d8ec4f03               lea      rax, [rip + 0x34fecd8]
00000000077cca50: 8b08                         mov      ecx, dword ptr [rax]
00000000077cca52: 89d0                         mov      eax, edx
00000000077cca54: f7d0                         not      eax
00000000077cca56: 0fafc2                       imul     eax, edx
00000000077cca59: 83e001                       and      eax, 1
00000000077cca5c: 83f90a                       cmp      ecx, 0xa
00000000077cca5f: 7c6b                         jl       0x77ccacc
00000000077cca61: 85c0                         test     eax, eax
00000000077cca63: 7467                         je       0x77ccacc
00000000077cca65: 488b9d10ffffff               mov      rbx, qword ptr [rbp - 0xf0]
00000000077cca6c: 4889df                       mov      rdi, rbx
00000000077cca6f: e8bc4b9401                   call     0x9111630
00000000077cca74: 4889df                       mov      rdi, rbx
00000000077cca77: e8b44b9401                   call     0x9111630
00000000077cca7c: 488d05a9ec4f03               lea      rax, [rip + 0x34feca9]
00000000077cca83: 8b10                         mov      edx, dword ptr [rax]
00000000077cca85: 488d059cec4f03               lea      rax, [rip + 0x34fec9c]
00000000077cca8c: 8b08                         mov      ecx, dword ptr [rax]
00000000077cca8e: 89d0                         mov      eax, edx
00000000077cca90: f7d0                         not      eax
00000000077cca92: 0fafc2                       imul     eax, edx
00000000077cca95: 83e001                       and      eax, 1
00000000077cca98: 83f90a                       cmp      ecx, 0xa
00000000077cca9b: 7c2f                         jl       0x77ccacc
00000000077cca9d: 85c0                         test     eax, eax
00000000077cca9f: 75cb                         jne      0x77cca6c
00000000077ccaa1: eb29                         jmp      0x77ccacc
00000000077ccaa3: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077ccaa7: 488901                       mov      qword ptr [rcx], rax
00000000077ccaaa: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077ccaae: 8910                         mov      dword ptr [rax], edx
00000000077ccab0: 488d0575ec4f03               lea      rax, [rip + 0x34fec75]
00000000077ccab7: 8b10                         mov      edx, dword ptr [rax]
00000000077ccab9: 488d0568ec4f03               lea      rax, [rip + 0x34fec68]
00000000077ccac0: 8b08                         mov      ecx, dword ptr [rax]
00000000077ccac2: 89d0                         mov      eax, edx
00000000077ccac4: f7d0                         not      eax
00000000077ccac6: 0fafc2                       imul     eax, edx
00000000077ccac9: 83e001                       and      eax, 1
00000000077ccacc: 83f90a                       cmp      ecx, 0xa
00000000077ccacf: 7c7e                         jl       0x77ccb4f
00000000077ccad1: 85c0                         test     eax, eax
00000000077ccad3: 747a                         je       0x77ccb4f
00000000077ccad5: 488b5db0                     mov      rbx, qword ptr [rbp - 0x50]
00000000077ccad9: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077ccadd: f60001                       test     byte ptr [rax], 1
00000000077ccae0: 741b                         je       0x77ccafd
00000000077ccae2: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077ccae6: e855d6d3fc                   call     0x450a140
00000000077ccaeb: f60301                       test     byte ptr [rbx], 1
00000000077ccaee: 740d                         je       0x77ccafd
00000000077ccaf0: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077ccaf4: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ccaf8: e843d6d3fc                   call     0x450a140
00000000077ccafd: 488d0524ec4f03               lea      rax, [rip + 0x34fec24]
00000000077ccb04: 83380a                       cmp      dword ptr [rax], 0xa
00000000077ccb07: 7c46                         jl       0x77ccb4f
00000000077ccb09: 488d051cec4f03               lea      rax, [rip + 0x34fec1c]
00000000077ccb10: 8b00                         mov      eax, dword ptr [rax]
00000000077ccb12: 89c1                         mov      ecx, eax
00000000077ccb14: f7d1                         not      ecx
00000000077ccb16: 0fafc8                       imul     ecx, eax
00000000077ccb19: 83e101                       and      ecx, 1
00000000077ccb1c: 75bb                         jne      0x77ccad9
00000000077ccb1e: eb2f                         jmp      0x77ccb4f
00000000077ccb20: 488d0505ec4f03               lea      rax, [rip + 0x34fec05]
00000000077ccb27: 8b00                         mov      eax, dword ptr [rax]
00000000077ccb29: 89c1                         mov      ecx, eax
00000000077ccb2b: f7d1                         not      ecx
00000000077ccb2d: 0fafc8                       imul     ecx, eax
00000000077ccb30: 83e101                       and      ecx, 1
00000000077ccb33: 0f849f000000                 je       0x77ccbd8
00000000077ccb39: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077ccb3d: f60001                       test     byte ptr [rax], 1
00000000077ccb40: 740d                         je       0x77ccb4f
00000000077ccb42: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077ccb46: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ccb4a: e8f1d5d3fc                   call     0x450a140
00000000077ccb4f: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077ccb53: f60001                       test     byte ptr [rax], 1
00000000077ccb56: 740d                         je       0x77ccb65
00000000077ccb58: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077ccb5c: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ccb60: e8dbd5d3fc                   call     0x450a140
00000000077ccb65: 488d05bceb4f03               lea      rax, [rip + 0x34febbc]
00000000077ccb6c: 83380a                       cmp      dword ptr [rax], 0xa
00000000077ccb6f: 7daf                         jge      0x77ccb20
00000000077ccb71: eb65                         jmp      0x77ccbd8
00000000077ccb73: eb56                         jmp      0x77ccbcb
00000000077ccb75: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077ccb79: 488901                       mov      qword ptr [rcx], rax
00000000077ccb7c: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077ccb80: 8910                         mov      dword ptr [rax], edx
00000000077ccb82: 4c89f7                       mov      rdi, r14
00000000077ccb85: e8c6300000                   call     0x77cfc50
00000000077ccb8a: eb0d                         jmp      0x77ccb99
00000000077ccb8c: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077ccb90: 488901                       mov      qword ptr [rcx], rax
00000000077ccb93: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077ccb97: 8910                         mov      dword ptr [rax], edx
00000000077ccb99: 488d0588eb4f03               lea      rax, [rip + 0x34feb88]
00000000077ccba0: 83380a                       cmp      dword ptr [rax], 0xa
00000000077ccba3: 0f8c46010000                 jl       0x77cccef
00000000077ccba9: 488d057ceb4f03               lea      rax, [rip + 0x34feb7c]
00000000077ccbb0: 8b00                         mov      eax, dword ptr [rax]
00000000077ccbb2: 89c1                         mov      ecx, eax
00000000077ccbb4: f7d1                         not      ecx
00000000077ccbb6: 0fafc8                       imul     ecx, eax
00000000077ccbb9: 83e101                       and      ecx, 1
00000000077ccbbc: 0f856d010000                 jne      0x77ccd2f
00000000077ccbc2: e928010000                   jmp      0x77cccef
00000000077ccbc7: eb02                         jmp      0x77ccbcb
00000000077ccbc9: eb00                         jmp      0x77ccbcb
00000000077ccbcb: 488b4dd0                     mov      rcx, qword ptr [rbp - 0x30]
00000000077ccbcf: 488901                       mov      qword ptr [rcx], rax
00000000077ccbd2: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077ccbd6: 8910                         mov      dword ptr [rax], edx
00000000077ccbd8: 488b9d60ffffff               mov      rbx, qword ptr [rbp - 0xa0]
00000000077ccbdf: 4889df                       mov      rdi, rbx
00000000077ccbe2: e869300000                   call     0x77cfc50
00000000077ccbe7: 488d053aeb4f03               lea      rax, [rip + 0x34feb3a]
00000000077ccbee: 83380a                       cmp      dword ptr [rax], 0xa
00000000077ccbf1: 0f8cc4e9ffff                 jl       0x77cb5bb
00000000077ccbf7: 488d052eeb4f03               lea      rax, [rip + 0x34feb2e]
00000000077ccbfe: 8b00                         mov      eax, dword ptr [rax]
00000000077ccc00: 89c1                         mov      ecx, eax
00000000077ccc02: f7d1                         not      ecx
00000000077ccc04: 0fafc8                       imul     ecx, eax
00000000077ccc07: 83e101                       and      ecx, 1
00000000077ccc0a: 0f84abe9ffff                 je       0x77cb5bb
00000000077ccc10: 4889df                       mov      rdi, rbx
00000000077ccc13: e838300000                   call     0x77cfc50
00000000077ccc18: ebc5                         jmp      0x77ccbdf
00000000077ccc1a: 488bbd30feffff               mov      rdi, qword ptr [rbp - 0x1d0]
00000000077ccc21: e80a4a9401                   call     0x9111630
00000000077ccc26: 488d05ffea4f03               lea      rax, [rip + 0x34feaff]
00000000077ccc2d: 8b00                         mov      eax, dword ptr [rax]
00000000077ccc2f: 488d0df2ea4f03               lea      rcx, [rip + 0x34feaf2]
00000000077ccc36: 8b09                         mov      ecx, dword ptr [rcx]
00000000077ccc38: 83f90a                       cmp      ecx, 0xa
00000000077ccc3b: 7c1a                         jl       0x77ccc57
00000000077ccc3d: 89c2                         mov      edx, eax
00000000077ccc3f: f7d2                         not      edx
00000000077ccc41: 0fafd0                       imul     edx, eax
00000000077ccc44: 83e201                       and      edx, 1
00000000077ccc47: 740e                         je       0x77ccc57
00000000077ccc49: 488bbd30feffff               mov      rdi, qword ptr [rbp - 0x1d0]
00000000077ccc50: e8db499401                   call     0x9111630
00000000077ccc55: ebc3                         jmp      0x77ccc1a
00000000077ccc57: 488b9d28feffff               mov      rbx, qword ptr [rbp - 0x1d8]
00000000077ccc5e: f60301                       test     byte ptr [rbx], 1
00000000077ccc61: 7422                         je       0x77ccc85
00000000077ccc63: 488b8528feffff               mov      rax, qword ptr [rbp - 0x1d8]
00000000077ccc6a: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077ccc6e: e8cdd4d3fc                   call     0x450a140
00000000077ccc73: 488d05b2ea4f03               lea      rax, [rip + 0x34feab2]
00000000077ccc7a: 8b00                         mov      eax, dword ptr [rax]
00000000077ccc7c: 488d0da5ea4f03               lea      rcx, [rip + 0x34feaa5]
00000000077ccc83: 8b09                         mov      ecx, dword ptr [rcx]
00000000077ccc85: 83f90a                       cmp      ecx, 0xa
00000000077ccc88: 488b9d28feffff               mov      rbx, qword ptr [rbp - 0x1d8]
00000000077ccc8f: 0f8c43ffffff                 jl       0x77ccbd8
00000000077ccc95: 89c1                         mov      ecx, eax
00000000077ccc97: f7d1                         not      ecx
00000000077ccc99: 0fafc8                       imul     ecx, eax
00000000077ccc9c: 83e101                       and      ecx, 1
00000000077ccc9f: 0f8433ffffff                 je       0x77ccbd8
00000000077ccca5: f60301                       test     byte ptr [rbx], 1
00000000077ccca8: 7417                         je       0x77cccc1
00000000077cccaa: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cccae: e88dd4d3fc                   call     0x450a140
00000000077cccb3: f60301                       test     byte ptr [rbx], 1
00000000077cccb6: 7409                         je       0x77cccc1
00000000077cccb8: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077cccbc: e87fd4d3fc                   call     0x450a140
00000000077cccc1: 488d0564ea4f03               lea      rax, [rip + 0x34fea64]
00000000077cccc8: 8b00                         mov      eax, dword ptr [rax]
00000000077cccca: 488d0d57ea4f03               lea      rcx, [rip + 0x34fea57]
00000000077cccd1: 8b09                         mov      ecx, dword ptr [rcx]
00000000077cccd3: 89c2                         mov      edx, eax
00000000077cccd5: f7d2                         not      edx
00000000077cccd7: 0fafd0                       imul     edx, eax
00000000077cccda: 83e201                       and      edx, 1
00000000077cccdd: 83f90a                       cmp      ecx, 0xa
00000000077ccce0: 0f8c78ffffff                 jl       0x77ccc5e
00000000077ccce6: 85d2                         test     edx, edx
00000000077ccce8: 75bb                         jne      0x77ccca5
00000000077cccea: e96fffffff                   jmp      0x77ccc5e
00000000077cccef: 41f6042401                   test     byte ptr [r12], 1
00000000077cccf4: 7410                         je       0x77ccd06
00000000077cccf6: 488b85e8feffff               mov      rax, qword ptr [rbp - 0x118]
00000000077cccfd: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077ccd01: e83ad4d3fc                   call     0x450a140
00000000077ccd06: 488d051bea4f03               lea      rax, [rip + 0x34fea1b]
00000000077ccd0d: 83380a                       cmp      dword ptr [rax], 0xa
00000000077ccd10: 0f8cc2feffff                 jl       0x77ccbd8
00000000077ccd16: 488d050fea4f03               lea      rax, [rip + 0x34fea0f]
00000000077ccd1d: 8b00                         mov      eax, dword ptr [rax]
00000000077ccd1f: 89c1                         mov      ecx, eax
00000000077ccd21: f7d1                         not      ecx
00000000077ccd23: 0fafc8                       imul     ecx, eax
00000000077ccd26: 83e101                       and      ecx, 1
00000000077ccd29: 0f84a9feffff                 je       0x77ccbd8
00000000077ccd2f: 41f6042401                   test     byte ptr [r12], 1
00000000077ccd34: 74b9                         je       0x77cccef
00000000077ccd36: 488b85e8feffff               mov      rax, qword ptr [rbp - 0x118]
00000000077ccd3d: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077ccd41: e8fad3d3fc                   call     0x450a140
00000000077ccd46: eba7                         jmp      0x77cccef
00000000077ccd48: f60301                       test     byte ptr [rbx], 1
00000000077ccd4b: 741b                         je       0x77ccd68
00000000077ccd4d: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077ccd51: e8ead3d3fc                   call     0x450a140
00000000077ccd56: 488d05cfe94f03               lea      rax, [rip + 0x34fe9cf]
00000000077ccd5d: 8b00                         mov      eax, dword ptr [rax]
00000000077ccd5f: 488d0dc2e94f03               lea      rcx, [rip + 0x34fe9c2]
00000000077ccd66: 8b09                         mov      ecx, dword ptr [rcx]
00000000077ccd68: 83f90a                       cmp      ecx, 0xa
00000000077ccd6b: 0f8c5ff0ffff                 jl       0x77cbdd0
00000000077ccd71: 89c1                         mov      ecx, eax
00000000077ccd73: f7d1                         not      ecx
00000000077ccd75: 0fafc8                       imul     ecx, eax
00000000077ccd78: 83e101                       and      ecx, 1
00000000077ccd7b: 0f844ff0ffff                 je       0x77cbdd0
00000000077ccd81: f60301                       test     byte ptr [rbx], 1
00000000077ccd84: 7409                         je       0x77ccd8f
00000000077ccd86: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077ccd8a: e8b1d3d3fc                   call     0x450a140
00000000077ccd8f: f60301                       test     byte ptr [rbx], 1
00000000077ccd92: 7409                         je       0x77ccd9d
00000000077ccd94: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077ccd98: e8a3d3d3fc                   call     0x450a140
00000000077ccd9d: 488d0588e94f03               lea      rax, [rip + 0x34fe988]
00000000077ccda4: 8b00                         mov      eax, dword ptr [rax]
00000000077ccda6: 488d0d7be94f03               lea      rcx, [rip + 0x34fe97b]
00000000077ccdad: 8b09                         mov      ecx, dword ptr [rcx]
00000000077ccdaf: 83f90a                       cmp      ecx, 0xa
00000000077ccdb2: 7c94                         jl       0x77ccd48
00000000077ccdb4: 89c2                         mov      edx, eax
00000000077ccdb6: f7d2                         not      edx
00000000077ccdb8: 0fafd0                       imul     edx, eax
00000000077ccdbb: 83e201                       and      edx, 1
00000000077ccdbe: 75c1                         jne      0x77ccd81
00000000077ccdc0: eb86                         jmp      0x77ccd48

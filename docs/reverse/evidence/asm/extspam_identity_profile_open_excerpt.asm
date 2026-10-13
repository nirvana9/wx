0000000009b0fc00: 48c78598e7ffff00000000       mov      qword ptr [rbp - 0x1868], 0
0000000009b0fc0b: e810fdb500                   call     0xa66f920
0000000009b0fc10: b900020000                   mov      ecx, 0x200
0000000009b0fc15: 89c7                         mov      edi, eax
0000000009b0fc17: 488db5e0faffff               lea      rsi, [rbp - 0x520]
0000000009b0fc1e: 488d95c0f1ffff               lea      rdx, [rbp - 0xe40]
0000000009b0fc25: 4c8d8598e7ffff               lea      r8, [rbp - 0x1868]
0000000009b0fc2c: e8ef1bb600                   call     0xa671820
0000000009b0fc31: 4531f6                       xor      r14d, r14d
0000000009b0fc34: 85c0                         test     eax, eax
0000000009b0fc36: 754c                         jne      0x9b0fc84
0000000009b0fc38: 488b8598e7ffff               mov      rax, qword ptr [rbp - 0x1868]
0000000009b0fc3f: 4885c0                       test     rax, rax
0000000009b0fc42: 0f84f70b0000                 je       0x9b1083f
0000000009b0fc48: 4c8b7020                     mov      r14, qword ptr [rax + 0x20]
0000000009b0fc4c: 4d85f6                       test     r14, r14
0000000009b0fc4f: 7438                         je       0x9b0fc89
0000000009b0fc51: 4c89f7                       mov      rdi, r14
0000000009b0fc54: e807e5b500                   call     0xa66e160
0000000009b0fc59: 4883f8f8                     cmp      rax, -8
0000000009b0fc5d: 0f833ebd1300                 jae      0x9c4b9a1
0000000009b0fc63: 4989c4                       mov      r12, rax
0000000009b0fc66: 4883f817                     cmp      rax, 0x17
0000000009b0fc6a: 7325                         jae      0x9b0fc91
0000000009b0fc6c: 438d0424                     lea      eax, [r12 + r12]
0000000009b0fc70: 888500fcffff                 mov      byte ptr [rbp - 0x400], al
0000000009b0fc76: 4c8dbd01fcffff               lea      r15, [rbp - 0x3ff]
0000000009b0fc7d: 4d85e4                       test     r12, r12
0000000009b0fc80: 754b                         jne      0x9b0fccd
0000000009b0fc82: eb57                         jmp      0x9b0fcdb
0000000009b0fc84: e9b60b0000                   jmp      0x9b1083f
0000000009b0fc89: 4531f6                       xor      r14d, r14d
0000000009b0fc8c: e9ae0b0000                   jmp      0x9b1083f
0000000009b0fc91: 4c89e3                       mov      rbx, r12
0000000009b0fc94: 4883c308                     add      rbx, 8
0000000009b0fc98: 4883e3f8                     and      rbx, 0xfffffffffffffff8
0000000009b0fc9c: 4883fb18                     cmp      rbx, 0x18
0000000009b0fca0: b81a000000                   mov      eax, 0x1a
0000000009b0fca5: 480f44d8                     cmove    rbx, rax
0000000009b0fca9: 4889df                       mov      rdi, rbx
0000000009b0fcac: e8efe0b500                   call     0xa66dda0
0000000009b0fcb1: 4989c7                       mov      r15, rax
0000000009b0fcb4: 48898510fcffff               mov      qword ptr [rbp - 0x3f0], rax
0000000009b0fcbb: 4883cb01                     or       rbx, 1
0000000009b0fcbf: 48899d00fcffff               mov      qword ptr [rbp - 0x400], rbx
0000000009b0fcc6: 4c89a508fcffff               mov      qword ptr [rbp - 0x3f8], r12
0000000009b0fccd: 4c89ff                       mov      rdi, r15
0000000009b0fcd0: 4c89f6                       mov      rsi, r14
0000000009b0fcd3: 4c89e2                       mov      rdx, r12
0000000009b0fcd6: e895e6b500                   call     0xa66e370
0000000009b0fcdb: 43c6042700                   mov      byte ptr [r15 + r12], 0
0000000009b0fce0: c68540ffffff2f               mov      byte ptr [rbp - 0xc0], 0x2f
0000000009b0fce7: 48c78541ffffff00000000       mov      qword ptr [rbp - 0xbf], 0
0000000009b0fcf2: 440fb6ad00fcffff             movzx    r13d, byte ptr [rbp - 0x400]
0000000009b0fcfa: 41f6c501                     test     r13b, 1
0000000009b0fcfe: 7409                         je       0x9b0fd09
0000000009b0fd00: 4c8bb508fcffff               mov      r14, qword ptr [rbp - 0x3f8]
0000000009b0fd07: eb06                         jmp      0x9b0fd0f
0000000009b0fd09: 4d89ee                       mov      r14, r13
0000000009b0fd0c: 49d1ee                       shr      r14, 1
0000000009b0fd0f: 488dbd40ffffff               lea      rdi, [rbp - 0xc0]
0000000009b0fd16: e845e4b500                   call     0xa66e160
0000000009b0fd1b: 498d1c06                     lea      rbx, [r14 + rax]
0000000009b0fd1f: 4883fbf8                     cmp      rbx, -8
0000000009b0fd23: 0f833cbc1300                 jae      0x9c4b965
0000000009b0fd29: 4989c7                       mov      r15, rax
0000000009b0fd2c: 4883fb16                     cmp      rbx, 0x16
0000000009b0fd30: 7724                         ja       0x9b0fd56
0000000009b0fd32: 660fefc0                     pxor     xmm0, xmm0
0000000009b0fd36: 660f7f85c0efffff             movdqa   xmmword ptr [rbp - 0x1040], xmm0
0000000009b0fd3e: 48c785d0efffff00000000       mov      qword ptr [rbp - 0x1030], 0
0000000009b0fd49: 00db                         add      bl, bl
0000000009b0fd4b: 889dc0efffff                 mov      byte ptr [rbp - 0x1040], bl
0000000009b0fd51: 4531e4                       xor      r12d, r12d
0000000009b0fd54: eb44                         jmp      0x9b0fd9a
0000000009b0fd56: 4c896dd0                     mov      qword ptr [rbp - 0x30], r13
0000000009b0fd5a: 4c8d6b08                     lea      r13, [rbx + 8]
0000000009b0fd5e: 4983e5f8                     and      r13, 0xfffffffffffffff8
0000000009b0fd62: 4983fd18                     cmp      r13, 0x18
0000000009b0fd66: b81a000000                   mov      eax, 0x1a
0000000009b0fd6b: 4c0f44e8                     cmove    r13, rax
0000000009b0fd6f: 4c89ef                       mov      rdi, r13
0000000009b0fd72: e829e0b500                   call     0xa66dda0
0000000009b0fd77: 4989c4                       mov      r12, rax
0000000009b0fd7a: 4983cd01                     or       r13, 1
0000000009b0fd7e: 4c89adc0efffff               mov      qword ptr [rbp - 0x1040], r13
0000000009b0fd85: 488985d0efffff               mov      qword ptr [rbp - 0x1030], rax
0000000009b0fd8c: 48899dc8efffff               mov      qword ptr [rbp - 0x1038], rbx
0000000009b0fd93: 4489eb                       mov      ebx, r13d
0000000009b0fd96: 4c8b6dd0                     mov      r13, qword ptr [rbp - 0x30]
0000000009b0fd9a: 31ff                         xor      edi, edi
0000000009b0fd9c: f6c301                       test     bl, 1
0000000009b0fd9f: 488d85c1efffff               lea      rax, [rbp - 0x103f]
0000000009b0fda6: 4c0f44e0                     cmove    r12, rax
0000000009b0fdaa: 4d85f6                       test     r14, r14
0000000009b0fdad: 7421                         je       0x9b0fdd0
0000000009b0fdaf: 488db501fcffff               lea      rsi, [rbp - 0x3ff]
0000000009b0fdb6: 41f6c501                     test     r13b, 1
0000000009b0fdba: 7407                         je       0x9b0fdc3
0000000009b0fdbc: 488bb510fcffff               mov      rsi, qword ptr [rbp - 0x3f0]
0000000009b0fdc3: 4c89e7                       mov      rdi, r12
0000000009b0fdc6: 4c89f2                       mov      rdx, r14
0000000009b0fdc9: e8a2e5b500                   call     0xa66e370
0000000009b0fdce: 31ff                         xor      edi, edi
0000000009b0fdd0: 4d01f4                       add      r12, r14
0000000009b0fdd3: 4d85ff                       test     r15, r15
0000000009b0fdd6: 7414                         je       0x9b0fdec
0000000009b0fdd8: 4c89e7                       mov      rdi, r12
0000000009b0fddb: 488db540ffffff               lea      rsi, [rbp - 0xc0]
0000000009b0fde2: 4c89fa                       mov      rdx, r15
0000000009b0fde5: e886e5b500                   call     0xa66e370
0000000009b0fdea: 31ff                         xor      edi, edi
0000000009b0fdec: 43c6043c00                   mov      byte ptr [r12 + r15], 0
0000000009b0fdf1: 48b8f446de6b2e884bee         movabs   rax, 0xee4b882e6bde46f4
0000000009b0fdfb: 48898540ffffff               mov      qword ptr [rbp - 0xc0], rax
0000000009b0fe02: c78548ffffff329fec07         mov      dword ptr [rbp - 0xb8], 0x7ec9f32
0000000009b0fe0c: c6854cffffff16               mov      byte ptr [rbp - 0xb4], 0x16
0000000009b0fe13: 31c0                         xor      eax, eax
0000000009b0fe15: b2f4                         mov      dl, 0xf4
0000000009b0fe17: b901000000                   mov      ecx, 1
0000000009b0fe1c: 4c8da510feffff               lea      r12, [rbp - 0x1f0]
0000000009b0fe23: 48bb1671495c3d7e3d0c         movabs   rbx, 0xc3d7e3d5c497116
0000000009b0fe2d: 0f1f00                       nop      dword ptr [rax]
0000000009b0fe30: 48899d28ffffff               mov      qword ptr [rbp - 0xd8], rbx
0000000009b0fe37: c78530ffffff04690a61         mov      dword ptr [rbp - 0xd0], 0x610a6904
0000000009b0fe41: 4863f0                       movsxd   rsi, eax
0000000009b0fe44: 32943528ffffff               xor      dl, byte ptr [rbp + rsi - 0xd8]
0000000009b0fe4b: c0c204                       rol      dl, 4
0000000009b0fe4e: 88940d3fffffff               mov      byte ptr [rbp + rcx - 0xc1], dl
0000000009b0fe55: 4883f90d                     cmp      rcx, 0xd
0000000009b0fe59: 7417                         je       0x9b0fe72
0000000009b0fe5b: 83c001                       add      eax, 1
0000000009b0fe5e: 83f80c                       cmp      eax, 0xc
0000000009b0fe61: 0f44c7                       cmove    eax, edi
0000000009b0fe64: 0fb6940d40ffffff             movzx    edx, byte ptr [rbp + rcx - 0xc0]
0000000009b0fe6c: 4883c101                     add      rcx, 1
0000000009b0fe70: ebbe                         jmp      0x9b0fe30
0000000009b0fe72: 488dbdc0efffff               lea      rdi, [rbp - 0x1040]
0000000009b0fe79: 488db540ffffff               lea      rsi, [rbp - 0xc0]
0000000009b0fe80: e82be19ffa                   call     0x450dfb0
0000000009b0fe85: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
0000000009b0fe89: 48898d10edffff               mov      qword ptr [rbp - 0x12f0], rcx
0000000009b0fe90: f30f6f00                     movdqu   xmm0, xmmword ptr [rax]
0000000009b0fe94: 660f7f8500edffff             movdqa   xmmword ptr [rbp - 0x1300], xmm0
0000000009b0fe9c: 660fefc0                     pxor     xmm0, xmm0
0000000009b0fea0: f30f7f00                     movdqu   xmmword ptr [rax], xmm0
0000000009b0fea4: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
0000000009b0feac: f685c0efffff01               test     byte ptr [rbp - 0x1040], 1
0000000009b0feb3: 740c                         je       0x9b0fec1
0000000009b0feb5: 488bbdd0efffff               mov      rdi, qword ptr [rbp - 0x1030]
0000000009b0febc: e87fa29ffa                   call     0x450a140
0000000009b0fec1: f68500edffff01               test     byte ptr [rbp - 0x1300], 1
0000000009b0fec8: 4c8dbd01edffff               lea      r15, [rbp - 0x12ff]
0000000009b0fecf: 48bb2d085438704e3e52         movabs   rbx, 0x523e4e703854082d
0000000009b0fed9: 7407                         je       0x9b0fee2
0000000009b0fedb: 4c8bbd10edffff               mov      r15, qword ptr [rbp - 0x12f0]
0000000009b0fee2: 4c89ff                       mov      rdi, r15
0000000009b0fee5: 31f6                         xor      esi, esi
0000000009b0fee7: 31c0                         xor      eax, eax
0000000009b0fee9: e842efb500                   call     0xa66ee30
0000000009b0feee: 4189c6                       mov      r14d, eax
0000000009b0fef1: 83f8ff                       cmp      eax, -1
0000000009b0fef4: 660fefc0                     pxor     xmm0, xmm0
0000000009b0fef8: 0f8455030000                 je       0x9b10253

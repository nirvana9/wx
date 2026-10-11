00000000077d8d20: 55                           push     rbp
00000000077d8d21: 4889e5                       mov      rbp, rsp
00000000077d8d24: 4157                         push     r15
00000000077d8d26: 4156                         push     r14
00000000077d8d28: 4155                         push     r13
00000000077d8d2a: 4154                         push     r12
00000000077d8d2c: 53                           push     rbx
00000000077d8d2d: 4881ec18020000               sub      rsp, 0x218
00000000077d8d34: 4c898de8feffff               mov      qword ptr [rbp - 0x118], r9
00000000077d8d3b: 4c8985c8fdffff               mov      qword ptr [rbp - 0x238], r8
00000000077d8d42: 48898dd0fdffff               mov      qword ptr [rbp - 0x230], rcx
00000000077d8d49: 8995ccfeffff                 mov      dword ptr [rbp - 0x134], edx
00000000077d8d4f: 4889b5d8feffff               mov      qword ptr [rbp - 0x128], rsi
00000000077d8d56: 48897db0                     mov      qword ptr [rbp - 0x50], rdi
00000000077d8d5a: 488d05df294f03               lea      rax, [rip + 0x34f29df]
00000000077d8d61: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d8d64: 7c19                         jl       0x77d8d7f
00000000077d8d66: 488d05d7294f03               lea      rax, [rip + 0x34f29d7]
00000000077d8d6d: 8b00                         mov      eax, dword ptr [rax]
00000000077d8d6f: 89c1                         mov      ecx, eax
00000000077d8d71: f7d1                         not      ecx
00000000077d8d73: 0fafc8                       imul     ecx, eax
00000000077d8d76: 83e101                       and      ecx, 1
00000000077d8d79: 0f8572030000                 jne      0x77d90f1
00000000077d8d7f: 4889e0                       mov      rax, rsp
00000000077d8d82: 488d48f0                     lea      rcx, [rax - 0x10]
00000000077d8d86: 48898d00feffff               mov      qword ptr [rbp - 0x200], rcx
00000000077d8d8d: 4889cc                       mov      rsp, rcx
00000000077d8d90: 4889e1                       mov      rcx, rsp
00000000077d8d93: 488d51f0                     lea      rdx, [rcx - 0x10]
00000000077d8d97: 48899528ffffff               mov      qword ptr [rbp - 0xd8], rdx
00000000077d8d9e: 4889d4                       mov      rsp, rdx
00000000077d8da1: 4889e2                       mov      rdx, rsp
00000000077d8da4: 488d72f0                     lea      rsi, [rdx - 0x10]
00000000077d8da8: 4889b5d0feffff               mov      qword ptr [rbp - 0x130], rsi
00000000077d8daf: 4889f4                       mov      rsp, rsi
00000000077d8db2: 4889e6                       mov      rsi, rsp
00000000077d8db5: 488d7ef0                     lea      rdi, [rsi - 0x10]
00000000077d8db9: 4889bde8fdffff               mov      qword ptr [rbp - 0x218], rdi
00000000077d8dc0: 4889fc                       mov      rsp, rdi
00000000077d8dc3: 4889e7                       mov      rdi, rsp
00000000077d8dc6: 4c8d47f0                     lea      r8, [rdi - 0x10]
00000000077d8dca: 4c8985f0fdffff               mov      qword ptr [rbp - 0x210], r8
00000000077d8dd1: 4c89c4                       mov      rsp, r8
00000000077d8dd4: 4989e0                       mov      r8, rsp
00000000077d8dd7: 4d8d48f0                     lea      r9, [r8 - 0x10]
00000000077d8ddb: 4c898dd8fdffff               mov      qword ptr [rbp - 0x228], r9
00000000077d8de2: 4c89cc                       mov      rsp, r9
00000000077d8de5: 4989e1                       mov      r9, rsp
00000000077d8de8: 4d8d51f0                     lea      r10, [r9 - 0x10]
00000000077d8dec: 4c899508ffffff               mov      qword ptr [rbp - 0xf8], r10
00000000077d8df3: 4c89d4                       mov      rsp, r10
00000000077d8df6: 4889e3                       mov      rbx, rsp
00000000077d8df9: 4881c370ffffff               add      rbx, -0x90
00000000077d8e00: 4889dc                       mov      rsp, rbx
00000000077d8e03: 4989e7                       mov      r15, rsp
00000000077d8e06: 4983c7e0                     add      r15, -0x20
00000000077d8e0a: 4c89fc                       mov      rsp, r15
00000000077d8e0d: 4989e2                       mov      r10, rsp
00000000077d8e10: 4983c2f0                     add      r10, -0x10
00000000077d8e14: 4c8955c8                     mov      qword ptr [rbp - 0x38], r10
00000000077d8e18: 4c89d4                       mov      rsp, r10
00000000077d8e1b: 4989e2                       mov      r10, rsp
00000000077d8e1e: 4983c2f0                     add      r10, -0x10
00000000077d8e22: 4c8955c0                     mov      qword ptr [rbp - 0x40], r10
00000000077d8e26: 4c89d4                       mov      rsp, r10
00000000077d8e29: 4989e6                       mov      r14, rsp
00000000077d8e2c: 4983c6f0                     add      r14, -0x10
00000000077d8e30: 4c89f4                       mov      rsp, r14
00000000077d8e33: 4989e2                       mov      r10, rsp
00000000077d8e36: 4983c2e0                     add      r10, -0x20
00000000077d8e3a: 4c8955d0                     mov      qword ptr [rbp - 0x30], r10
00000000077d8e3e: 4c89d4                       mov      rsp, r10
00000000077d8e41: 4989e4                       mov      r12, rsp
00000000077d8e44: 4983c4e0                     add      r12, -0x20
00000000077d8e48: 4c89e4                       mov      rsp, r12
00000000077d8e4b: 4989e2                       mov      r10, rsp
00000000077d8e4e: 4983c2e0                     add      r10, -0x20
00000000077d8e52: 4c895598                     mov      qword ptr [rbp - 0x68], r10
00000000077d8e56: 4c89d4                       mov      rsp, r10
00000000077d8e59: 4989e2                       mov      r10, rsp
00000000077d8e5c: 4983c2e0                     add      r10, -0x20
00000000077d8e60: 4c899548ffffff               mov      qword ptr [rbp - 0xb8], r10
00000000077d8e67: 4c89d4                       mov      rsp, r10
00000000077d8e6a: 4989e2                       mov      r10, rsp
00000000077d8e6d: 4983c2e0                     add      r10, -0x20
00000000077d8e71: 4c899550ffffff               mov      qword ptr [rbp - 0xb0], r10
00000000077d8e78: 4c89d4                       mov      rsp, r10
00000000077d8e7b: 4989e2                       mov      r10, rsp
00000000077d8e7e: 4983c2e0                     add      r10, -0x20
00000000077d8e82: 4c899520feffff               mov      qword ptr [rbp - 0x1e0], r10
00000000077d8e89: 4c89d4                       mov      rsp, r10
00000000077d8e8c: 4989e2                       mov      r10, rsp
00000000077d8e8f: 4983c2e0                     add      r10, -0x20
00000000077d8e93: 4c8955a0                     mov      qword ptr [rbp - 0x60], r10
00000000077d8e97: 4c89d4                       mov      rsp, r10
00000000077d8e9a: 4989e2                       mov      r10, rsp
00000000077d8e9d: 4983c2e0                     add      r10, -0x20
00000000077d8ea1: 4c8995f8feffff               mov      qword ptr [rbp - 0x108], r10
00000000077d8ea8: 4c89d4                       mov      rsp, r10
00000000077d8eab: 4989e2                       mov      r10, rsp
00000000077d8eae: 4981c270ffffff               add      r10, -0x90
00000000077d8eb5: 4c899528feffff               mov      qword ptr [rbp - 0x1d8], r10
00000000077d8ebc: 4c89d4                       mov      rsp, r10
00000000077d8ebf: 4989e2                       mov      r10, rsp
00000000077d8ec2: 4983c2e0                     add      r10, -0x20
00000000077d8ec6: 4c8995f0feffff               mov      qword ptr [rbp - 0x110], r10
00000000077d8ecd: 4c89d4                       mov      rsp, r10
00000000077d8ed0: 4989e2                       mov      r10, rsp
00000000077d8ed3: 4983c2b0                     add      r10, -0x50
00000000077d8ed7: 4c899530feffff               mov      qword ptr [rbp - 0x1d0], r10
00000000077d8ede: 4c89d4                       mov      rsp, r10
00000000077d8ee1: 4989e2                       mov      r10, rsp
00000000077d8ee4: 4983c2e0                     add      r10, -0x20
00000000077d8ee8: 4c899518ffffff               mov      qword ptr [rbp - 0xe8], r10
00000000077d8eef: 4c89d4                       mov      rsp, r10
00000000077d8ef2: 4989e2                       mov      r10, rsp
00000000077d8ef5: 4983c2e0                     add      r10, -0x20
00000000077d8ef9: 4c8955b8                     mov      qword ptr [rbp - 0x48], r10
00000000077d8efd: 4c89d4                       mov      rsp, r10
00000000077d8f00: 4989e2                       mov      r10, rsp
00000000077d8f03: 4981c270ffffff               add      r10, -0x90
00000000077d8f0a: 4c8995e0fdffff               mov      qword ptr [rbp - 0x220], r10
00000000077d8f11: 4c89d4                       mov      rsp, r10
00000000077d8f14: 4989e2                       mov      r10, rsp
00000000077d8f17: 4983c2e0                     add      r10, -0x20
00000000077d8f1b: 4c899530ffffff               mov      qword ptr [rbp - 0xd0], r10
00000000077d8f22: 4c89d4                       mov      rsp, r10
00000000077d8f25: 4989e2                       mov      r10, rsp
00000000077d8f28: 4983c2e0                     add      r10, -0x20
00000000077d8f2c: 4c899570ffffff               mov      qword ptr [rbp - 0x90], r10
00000000077d8f33: 4c89d4                       mov      rsp, r10
00000000077d8f36: 4989e2                       mov      r10, rsp
00000000077d8f39: 4983c2e0                     add      r10, -0x20
00000000077d8f3d: 4c895588                     mov      qword ptr [rbp - 0x78], r10
00000000077d8f41: 4c89d4                       mov      rsp, r10
00000000077d8f44: 4989e2                       mov      r10, rsp
00000000077d8f47: 4983c2c0                     add      r10, -0x40
00000000077d8f4b: 4c8955a8                     mov      qword ptr [rbp - 0x58], r10
00000000077d8f4f: 4c89d4                       mov      rsp, r10
00000000077d8f52: 4989e2                       mov      r10, rsp
00000000077d8f55: 4983c2f0                     add      r10, -0x10
00000000077d8f59: 4c8995f8fdffff               mov      qword ptr [rbp - 0x208], r10
00000000077d8f60: 4c89d4                       mov      rsp, r10
00000000077d8f63: 4989e2                       mov      r10, rsp
00000000077d8f66: 4983c2f0                     add      r10, -0x10
00000000077d8f6a: 4c8995e0feffff               mov      qword ptr [rbp - 0x120], r10
00000000077d8f71: 4c89d4                       mov      rsp, r10
00000000077d8f74: 4989e2                       mov      r10, rsp
00000000077d8f77: 4981c270ffffff               add      r10, -0x90
00000000077d8f7e: 4c899500ffffff               mov      qword ptr [rbp - 0x100], r10
00000000077d8f85: 4c89d4                       mov      rsp, r10
00000000077d8f88: 4989e2                       mov      r10, rsp
00000000077d8f8b: 4983c2e0                     add      r10, -0x20
00000000077d8f8f: 4c895590                     mov      qword ptr [rbp - 0x70], r10
00000000077d8f93: 4c89d4                       mov      rsp, r10
00000000077d8f96: 4989e2                       mov      r10, rsp
00000000077d8f99: 4983c2b0                     add      r10, -0x50
00000000077d8f9d: 4c899538feffff               mov      qword ptr [rbp - 0x1c8], r10
00000000077d8fa4: 4c89d4                       mov      rsp, r10
00000000077d8fa7: 4989e2                       mov      r10, rsp
00000000077d8faa: 4983c2b0                     add      r10, -0x50
00000000077d8fae: 4c899518feffff               mov      qword ptr [rbp - 0x1e8], r10
00000000077d8fb5: 4c89d4                       mov      rsp, r10
00000000077d8fb8: 4989e2                       mov      r10, rsp
00000000077d8fbb: 4983c2e0                     add      r10, -0x20
00000000077d8fbf: 4c899538ffffff               mov      qword ptr [rbp - 0xc8], r10
00000000077d8fc6: 4c89d4                       mov      rsp, r10
00000000077d8fc9: 4989e2                       mov      r10, rsp
00000000077d8fcc: 4983c2d0                     add      r10, -0x30
00000000077d8fd0: 4c899558ffffff               mov      qword ptr [rbp - 0xa8], r10
00000000077d8fd7: 4c89d4                       mov      rsp, r10
00000000077d8fda: 4989e2                       mov      r10, rsp
00000000077d8fdd: 4981c270ffffff               add      r10, -0x90
00000000077d8fe4: 4c899568ffffff               mov      qword ptr [rbp - 0x98], r10
00000000077d8feb: 4c89d4                       mov      rsp, r10
00000000077d8fee: 4989e2                       mov      r10, rsp
00000000077d8ff1: 4983c2e0                     add      r10, -0x20
00000000077d8ff5: 4c899578ffffff               mov      qword ptr [rbp - 0x88], r10
00000000077d8ffc: 4c89d4                       mov      rsp, r10
00000000077d8fff: 4989e2                       mov      r10, rsp
00000000077d9002: 4983c2b0                     add      r10, -0x50
00000000077d9006: 4c899508feffff               mov      qword ptr [rbp - 0x1f8], r10
00000000077d900d: 4c89d4                       mov      rsp, r10
00000000077d9010: 4989e2                       mov      r10, rsp
00000000077d9013: 4983c2b0                     add      r10, -0x50
00000000077d9017: 4c899510feffff               mov      qword ptr [rbp - 0x1f0], r10
00000000077d901e: 4c89d4                       mov      rsp, r10
00000000077d9021: 4989e2                       mov      r10, rsp
00000000077d9024: 4983c2d0                     add      r10, -0x30
00000000077d9028: 4c899540ffffff               mov      qword ptr [rbp - 0xc0], r10
00000000077d902f: 4c89d4                       mov      rsp, r10
00000000077d9032: 4989e5                       mov      r13, rsp
00000000077d9035: 4983c5d0                     add      r13, -0x30
00000000077d9039: 4c89ec                       mov      rsp, r13
00000000077d903c: 4989e2                       mov      r10, rsp
00000000077d903f: 4983c2d0                     add      r10, -0x30
00000000077d9043: 4c899560ffffff               mov      qword ptr [rbp - 0xa0], r10
00000000077d904a: 4c89d4                       mov      rsp, r10
00000000077d904d: 4989e2                       mov      r10, rsp
00000000077d9050: 4983c2d0                     add      r10, -0x30
00000000077d9054: 4c899520ffffff               mov      qword ptr [rbp - 0xe0], r10
00000000077d905b: 4c89d4                       mov      rsp, r10
00000000077d905e: 4989e2                       mov      r10, rsp
00000000077d9061: 4981c270ffffff               add      r10, -0x90
00000000077d9068: 4c899510ffffff               mov      qword ptr [rbp - 0xf0], r10
00000000077d906f: 4c89d4                       mov      rsp, r10
00000000077d9072: 4989e2                       mov      r10, rsp
00000000077d9075: 4983c2e0                     add      r10, -0x20
00000000077d9079: 4c895580                     mov      qword ptr [rbp - 0x80], r10
00000000077d907d: 4c89d4                       mov      rsp, r10
00000000077d9080: 4c8b5518                     mov      r10, qword ptr [rbp + 0x18]
00000000077d9084: 4c8950f0                     mov      qword ptr [rax - 0x10], r10
00000000077d9088: 8b85ccfeffff                 mov      eax, dword ptr [rbp - 0x134]
00000000077d908e: 8841f0                       mov      byte ptr [rcx - 0x10], al
00000000077d9091: 488b85d0fdffff               mov      rax, qword ptr [rbp - 0x230]
00000000077d9098: 488942f0                     mov      qword ptr [rdx - 0x10], rax
00000000077d909c: 488b85c8fdffff               mov      rax, qword ptr [rbp - 0x238]
00000000077d90a3: 488946f0                     mov      qword ptr [rsi - 0x10], rax
00000000077d90a7: 488b85e8feffff               mov      rax, qword ptr [rbp - 0x118]
00000000077d90ae: 488947f0                     mov      qword ptr [rdi - 0x10], rax
00000000077d90b2: 488b4510                     mov      rax, qword ptr [rbp + 0x10]
00000000077d90b6: 498940f0                     mov      qword ptr [r8 - 0x10], rax
00000000077d90ba: 488b4520                     mov      rax, qword ptr [rbp + 0x20]
00000000077d90be: 498941f0                     mov      qword ptr [r9 - 0x10], rax
00000000077d90c2: bf02000000                   mov      edi, 2
00000000077d90c7: e8c4db9301                   call     0x9116c90
00000000077d90cc: 488d0d71264f03               lea      rcx, [rip + 0x34f2671]
00000000077d90d3: 8b31                         mov      esi, dword ptr [rcx]
00000000077d90d5: 488d0d64264f03               lea      rcx, [rip + 0x34f2664]
00000000077d90dc: 8b11                         mov      edx, dword ptr [rcx]
00000000077d90de: 89f1                         mov      ecx, esi
00000000077d90e0: f7d1                         not      ecx
00000000077d90e2: 0fafce                       imul     ecx, esi
00000000077d90e5: 83e101                       and      ecx, 1
00000000077d90e8: 83fa0a                       cmp      edx, 0xa
00000000077d90eb: 7c13                         jl       0x77d9100
00000000077d90ed: 85c9                         test     ecx, ecx
00000000077d90ef: 740f                         je       0x77d9100
00000000077d90f1: bf02000000                   mov      edi, 2
00000000077d90f6: e895db9301                   call     0x9116c90
00000000077d90fb: e97ffcffff                   jmp      0x77d8d7f
00000000077d9100: 85c0                         test     eax, eax
00000000077d9102: 0f8405020000                 je       0x77d930d
00000000077d9108: 0f1f840000000000             nop      dword ptr [rax + rax]
00000000077d9110: 4c89ff                       mov      rdi, r15
00000000077d9113: e8b898bdff                   call     0x73b29d0
00000000077d9118: 488d0521264f03               lea      rax, [rip + 0x34f2621]
00000000077d911f: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d9122: 7c1f                         jl       0x77d9143
00000000077d9124: 488d0519264f03               lea      rax, [rip + 0x34f2619]
00000000077d912b: 8b00                         mov      eax, dword ptr [rax]
00000000077d912d: 89c1                         mov      ecx, eax
00000000077d912f: f7d1                         not      ecx
00000000077d9131: 0fafc8                       imul     ecx, eax
00000000077d9134: 83e101                       and      ecx, 1
00000000077d9137: 740a                         je       0x77d9143
00000000077d9139: 4c89ff                       mov      rdi, r15
00000000077d913c: e88f98bdff                   call     0x73b29d0
00000000077d9141: ebcd                         jmp      0x77d9110
00000000077d9143: 41f60701                     test     byte ptr [r15], 1
00000000077d9147: 7406                         je       0x77d914f
00000000077d9149: 498b5710                     mov      rdx, qword ptr [r15 + 0x10]
00000000077d914d: eb04                         jmp      0x77d9153
00000000077d914f: 498d5701                     lea      rdx, [r15 + 1]
00000000077d9153: 488d0d327c7ff9               lea      rcx, [rip - 0x68083ce]
00000000077d915a: 4c8d053c8361f9               lea      r8, [rip - 0x69e7cc4]
00000000077d9161: 4889df                       mov      rdi, rbx
00000000077d9164: be02000000                   mov      esi, 2
00000000077d9169: 41b922050000                 mov      r9d, 0x522
00000000077d916f: 6a00                         push     0
00000000077d9171: 6a00                         push     0
00000000077d9173: e828849301                   call     0x91115a0
00000000077d9178: 4883c410                     add      rsp, 0x10
00000000077d917c: 0f57c0                       xorps    xmm0, xmm0
00000000077d917f: 0f2985b0feffff               movaps   xmmword ptr [rbp - 0x150], xmm0
00000000077d9186: 0f2985a0feffff               movaps   xmmword ptr [rbp - 0x160], xmm0
00000000077d918d: 0f298590feffff               movaps   xmmword ptr [rbp - 0x170], xmm0
00000000077d9194: 0f298580feffff               movaps   xmmword ptr [rbp - 0x180], xmm0
00000000077d919b: 0f298570feffff               movaps   xmmword ptr [rbp - 0x190], xmm0
00000000077d91a2: 0f298560feffff               movaps   xmmword ptr [rbp - 0x1a0], xmm0
00000000077d91a9: 0f298550feffff               movaps   xmmword ptr [rbp - 0x1b0], xmm0
00000000077d91b0: 0f298540feffff               movaps   xmmword ptr [rbp - 0x1c0], xmm0
00000000077d91b7: 488d3554e280f9               lea      rsi, [rip - 0x67f1dac]
00000000077d91be: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077d91c5: 4889df                       mov      rdi, rbx
00000000077d91c8: e823879301                   call     0x91118f0
00000000077d91cd: 488d056c254f03               lea      rax, [rip + 0x34f256c]
00000000077d91d4: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d91d7: 0f8cdb000000                 jl       0x77d92b8
00000000077d91dd: 488d0560254f03               lea      rax, [rip + 0x34f2560]
00000000077d91e4: 8b00                         mov      eax, dword ptr [rax]
00000000077d91e6: 89c1                         mov      ecx, eax
00000000077d91e8: f7d1                         not      ecx
00000000077d91ea: 0fafc8                       imul     ecx, eax
00000000077d91ed: 83e101                       and      ecx, 1
00000000077d91f0: 0f85fe000000                 jne      0x77d92f4
00000000077d91f6: e9bd000000                   jmp      0x77d92b8
00000000077d91fb: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077d91ff: 488901                       mov      qword ptr [rcx], rax
00000000077d9202: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077d9206: 8910                         mov      dword ptr [rax], edx
00000000077d9208: 4889df                       mov      rdi, rbx
00000000077d920b: e820849301                   call     0x9111630
00000000077d9210: eb0e                         jmp      0x77d9220
00000000077d9212: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077d9216: 488901                       mov      qword ptr [rcx], rax
00000000077d9219: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077d921d: 8910                         mov      dword ptr [rax], edx
00000000077d921f: 90                           nop
00000000077d9220: 488d0519254f03               lea      rax, [rip + 0x34f2519]
00000000077d9227: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d922a: 7c6c                         jl       0x77d9298
00000000077d922c: 488d0511254f03               lea      rax, [rip + 0x34f2511]
00000000077d9233: 8b00                         mov      eax, dword ptr [rax]
00000000077d9235: 89c1                         mov      ecx, eax
00000000077d9237: f7d1                         not      ecx
00000000077d9239: 0fafc8                       imul     ecx, eax
00000000077d923c: 83e101                       and      ecx, 1
00000000077d923f: 7457                         je       0x77d9298
00000000077d9241: 41f60701                     test     byte ptr [r15], 1
00000000077d9245: 7409                         je       0x77d9250
00000000077d9247: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077d924b: e8f00ed3fc                   call     0x450a140
00000000077d9250: 41f60701                     test     byte ptr [r15], 1
00000000077d9254: 74ca                         je       0x77d9220
00000000077d9256: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077d925a: e8e10ed3fc                   call     0x450a140
00000000077d925f: ebbf                         jmp      0x77d9220
00000000077d9261: 6666666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077d9270: 488d05cd244f03               lea      rax, [rip + 0x34f24cd]
00000000077d9277: 8b00                         mov      eax, dword ptr [rax]
00000000077d9279: 89c1                         mov      ecx, eax
00000000077d927b: f7d1                         not      ecx
00000000077d927d: 0fafc8                       imul     ecx, eax
00000000077d9280: 83e101                       and      ecx, 1
00000000077d9283: 0f847e0a0000                 je       0x77d9d07
00000000077d9289: 41f60701                     test     byte ptr [r15], 1
00000000077d928d: 7409                         je       0x77d9298
00000000077d928f: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077d9293: e8a80ed3fc                   call     0x450a140
00000000077d9298: 41f60701                     test     byte ptr [r15], 1
00000000077d929c: 7409                         je       0x77d92a7
00000000077d929e: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077d92a2: e8990ed3fc                   call     0x450a140
00000000077d92a7: 488d0592244f03               lea      rax, [rip + 0x34f2492]
00000000077d92ae: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d92b1: 7dbd                         jge      0x77d9270
00000000077d92b3: e94f0a0000                   jmp      0x77d9d07
00000000077d92b8: 4889df                       mov      rdi, rbx
00000000077d92bb: e870839301                   call     0x9111630
00000000077d92c0: 41f60701                     test     byte ptr [r15], 1
00000000077d92c4: 7409                         je       0x77d92cf
00000000077d92c6: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077d92ca: e8710ed3fc                   call     0x450a140
00000000077d92cf: 488d056e244f03               lea      rax, [rip + 0x34f246e]
00000000077d92d6: 8b00                         mov      eax, dword ptr [rax]
00000000077d92d8: 488d0d61244f03               lea      rcx, [rip + 0x34f2461]
00000000077d92df: 8b11                         mov      edx, dword ptr [rcx]
00000000077d92e1: 89c1                         mov      ecx, eax
00000000077d92e3: f7d1                         not      ecx
00000000077d92e5: 0fafc8                       imul     ecx, eax
00000000077d92e8: 83e101                       and      ecx, 1
00000000077d92eb: 83fa0a                       cmp      edx, 0xa
00000000077d92ee: 7c1d                         jl       0x77d930d
00000000077d92f0: 85c9                         test     ecx, ecx
00000000077d92f2: 7419                         je       0x77d930d
00000000077d92f4: 4889df                       mov      rdi, rbx
00000000077d92f7: e834839301                   call     0x9111630
00000000077d92fc: 41f60701                     test     byte ptr [r15], 1
00000000077d9300: 74b6                         je       0x77d92b8
00000000077d9302: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077d9306: e8350ed3fc                   call     0x450a140
00000000077d930b: ebab                         jmp      0x77d92b8
00000000077d930d: 83fa0a                       cmp      edx, 0xa
00000000077d9310: 7c53                         jl       0x77d9365
00000000077d9312: 85c9                         test     ecx, ecx
00000000077d9314: 744f                         je       0x77d9365
00000000077d9316: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
00000000077d9320: e8bb3186fe                   call     0x603c4e0
00000000077d9325: 4889c7                       mov      rdi, rax
00000000077d9328: be01000000                   mov      esi, 1
00000000077d932d: e8fe9286fe                   call     0x6042630
00000000077d9332: e8a93186fe                   call     0x603c4e0
00000000077d9337: 4889c7                       mov      rdi, rax
00000000077d933a: be01000000                   mov      esi, 1
00000000077d933f: e8ec9286fe                   call     0x6042630
00000000077d9344: 488d05f5234f03               lea      rax, [rip + 0x34f23f5]
00000000077d934b: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d934e: 7c15                         jl       0x77d9365
00000000077d9350: 488d05ed234f03               lea      rax, [rip + 0x34f23ed]
00000000077d9357: 8b00                         mov      eax, dword ptr [rax]
00000000077d9359: 89c1                         mov      ecx, eax
00000000077d935b: f7d1                         not      ecx
00000000077d935d: 0fafc8                       imul     ecx, eax
00000000077d9360: 83e101                       and      ecx, 1
00000000077d9363: 75bb                         jne      0x77d9320
00000000077d9365: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000077d9370: e86b3186fe                   call     0x603c4e0
00000000077d9375: 4889c7                       mov      rdi, rax
00000000077d9378: be01000000                   mov      esi, 1
00000000077d937d: e8ae9286fe                   call     0x6042630
00000000077d9382: 488d05bb234f03               lea      rax, [rip + 0x34f23bb]
00000000077d9389: 8b10                         mov      edx, dword ptr [rax]
00000000077d938b: 488d05ae234f03               lea      rax, [rip + 0x34f23ae]
00000000077d9392: 8b08                         mov      ecx, dword ptr [rax]
00000000077d9394: 89d0                         mov      eax, edx
00000000077d9396: f7d0                         not      eax
00000000077d9398: 0fafc2                       imul     eax, edx
00000000077d939b: 83e001                       and      eax, 1
00000000077d939e: 83f90a                       cmp      ecx, 0xa
00000000077d93a1: 7c18                         jl       0x77d93bb
00000000077d93a3: 85c0                         test     eax, eax
00000000077d93a5: 7414                         je       0x77d93bb
00000000077d93a7: e8343186fe                   call     0x603c4e0
00000000077d93ac: 4889c7                       mov      rdi, rax
00000000077d93af: be01000000                   mov      esi, 1
00000000077d93b4: e8779286fe                   call     0x6042630
00000000077d93b9: ebb5                         jmp      0x77d9370
00000000077d93bb: 488b9528ffffff               mov      rdx, qword ptr [rbp - 0xd8]
00000000077d93c2: 803a00                       cmp      byte ptr [rdx], 0
00000000077d93c5: 0f855c010000                 jne      0x77d9527
00000000077d93cb: 83f90a                       cmp      ecx, 0xa
00000000077d93ce: 0f8c91000000                 jl       0x77d9465
00000000077d93d4: 85c0                         test     eax, eax
00000000077d93d6: 0f8489000000                 je       0x77d9465
00000000077d93dc: 488b5dd0                     mov      rbx, qword ptr [rbp - 0x30]
00000000077d93e0: e8fb3086fe                   call     0x603c4e0
00000000077d93e5: 488b08                       mov      rcx, qword ptr [rax]
00000000077d93e8: 4889c7                       mov      rdi, rax
00000000077d93eb: ff5118                       call     qword ptr [rcx + 0x18]
00000000077d93ee: 488b08                       mov      rcx, qword ptr [rax]
00000000077d93f1: 4889c7                       mov      rdi, rax
00000000077d93f4: ff91e0000000                 call     qword ptr [rcx + 0xe0]
00000000077d93fa: 0f28059f0258f9               movaps   xmm0, xmmword ptr [rip - 0x6a7fd61]
00000000077d9401: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000077d9405: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077d9408: 4889df                       mov      rdi, rbx
00000000077d940b: e8e05d5000                   call     0x7cdf1f0
00000000077d9410: e8cb3086fe                   call     0x603c4e0
00000000077d9415: 488b08                       mov      rcx, qword ptr [rax]
00000000077d9418: 4889c7                       mov      rdi, rax
00000000077d941b: ff5118                       call     qword ptr [rcx + 0x18]
00000000077d941e: 488b08                       mov      rcx, qword ptr [rax]
00000000077d9421: 4889c7                       mov      rdi, rax
00000000077d9424: ff91e0000000                 call     qword ptr [rcx + 0xe0]
00000000077d942a: 0f28056f0258f9               movaps   xmm0, xmmword ptr [rip - 0x6a7fd91]
00000000077d9431: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000077d9435: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077d9438: 4889df                       mov      rdi, rbx
00000000077d943b: e8b05d5000                   call     0x7cdf1f0
00000000077d9440: 488d05f9224f03               lea      rax, [rip + 0x34f22f9]
00000000077d9447: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d944a: 7c19                         jl       0x77d9465
00000000077d944c: 488d05f1224f03               lea      rax, [rip + 0x34f22f1]
00000000077d9453: 8b00                         mov      eax, dword ptr [rax]
00000000077d9455: 89c1                         mov      ecx, eax
00000000077d9457: f7d1                         not      ecx
00000000077d9459: 0fafc8                       imul     ecx, eax
00000000077d945c: 83e101                       and      ecx, 1
00000000077d945f: 0f857bffffff                 jne      0x77d93e0
00000000077d9465: 488b5dd0                     mov      rbx, qword ptr [rbp - 0x30]
00000000077d9469: 0f1f8000000000               nop      dword ptr [rax]
00000000077d9470: e86b3086fe                   call     0x603c4e0
00000000077d9475: 488b08                       mov      rcx, qword ptr [rax]
00000000077d9478: 4889c7                       mov      rdi, rax
00000000077d947b: ff5118                       call     qword ptr [rcx + 0x18]
00000000077d947e: 488b08                       mov      rcx, qword ptr [rax]
00000000077d9481: 4889c7                       mov      rdi, rax
00000000077d9484: ff91e0000000                 call     qword ptr [rcx + 0xe0]
00000000077d948a: 0f28050f0258f9               movaps   xmm0, xmmword ptr [rip - 0x6a7fdf1]
00000000077d9491: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000077d9495: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077d9498: 4889df                       mov      rdi, rbx
00000000077d949b: e8505d5000                   call     0x7cdf1f0
00000000077d94a0: 488d0599224f03               lea      rax, [rip + 0x34f2299]
00000000077d94a7: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d94aa: 0f8c60010000                 jl       0x77d9610
00000000077d94b0: 488d058d224f03               lea      rax, [rip + 0x34f228d]
00000000077d94b7: 8b00                         mov      eax, dword ptr [rax]
00000000077d94b9: 89c1                         mov      ecx, eax
00000000077d94bb: f7d1                         not      ecx
00000000077d94bd: 0fafc8                       imul     ecx, eax
00000000077d94c0: 83e101                       and      ecx, 1
00000000077d94c3: 0f8447010000                 je       0x77d9610
00000000077d94c9: e8123086fe                   call     0x603c4e0
00000000077d94ce: 488b08                       mov      rcx, qword ptr [rax]
00000000077d94d1: 4889c7                       mov      rdi, rax
00000000077d94d4: ff5118                       call     qword ptr [rcx + 0x18]
00000000077d94d7: 488b08                       mov      rcx, qword ptr [rax]
00000000077d94da: 4889c7                       mov      rdi, rax
00000000077d94dd: ff91e0000000                 call     qword ptr [rcx + 0xe0]
00000000077d94e3: 488b5dd0                     mov      rbx, qword ptr [rbp - 0x30]
00000000077d94e7: 0f2805b20158f9               movaps   xmm0, xmmword ptr [rip - 0x6a7fe4e]
00000000077d94ee: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000077d94f2: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077d94f5: 4889df                       mov      rdi, rbx
00000000077d94f8: e8f35c5000                   call     0x7cdf1f0
00000000077d94fd: e96effffff                   jmp      0x77d9470
00000000077d9502: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077d9510: e8cb2f86fe                   call     0x603c4e0
00000000077d9515: 488b8d08ffffff               mov      rcx, qword ptr [rbp - 0xf8]
00000000077d951c: 488b31                       mov      rsi, qword ptr [rcx]
00000000077d951f: 4889c7                       mov      rdi, rax
00000000077d9522: e8d94d86fe                   call     0x603e300
00000000077d9527: 488b85d8feffff               mov      rax, qword ptr [rbp - 0x128]
00000000077d952e: 488bb080020000               mov      rsi, qword ptr [rax + 0x280]
00000000077d9535: 488b85d0feffff               mov      rax, qword ptr [rbp - 0x130]
00000000077d953c: 488b10                       mov      rdx, qword ptr [rax]
00000000077d953f: 4c89f7                       mov      rdi, r14
00000000077d9542: e8a9b20200                   call     0x78047f0
00000000077d9547: 498b5e08                     mov      rbx, qword ptr [r14 + 8]
00000000077d954b: 4885db                       test     rbx, rbx
00000000077d954e: 7423                         je       0x77d9573
00000000077d9550: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077d9557: f0480fc14308                 lock xadd qword ptr [rbx + 8], rax
00000000077d955d: 4885c0                       test     rax, rax
00000000077d9560: 7511                         jne      0x77d9573
00000000077d9562: 488b03                       mov      rax, qword ptr [rbx]
00000000077d9565: 4889df                       mov      rdi, rbx
00000000077d9568: ff5010                       call     qword ptr [rax + 0x10]
00000000077d956b: 4889df                       mov      rdi, rbx
00000000077d956e: e85ddcd5fc                   call     0x45371d0
00000000077d9573: e8682f86fe                   call     0x603c4e0
00000000077d9578: 488b8d08ffffff               mov      rcx, qword ptr [rbp - 0xf8]
00000000077d957f: 488b31                       mov      rsi, qword ptr [rcx]
00000000077d9582: 4889c7                       mov      rdi, rax
00000000077d9585: e8764d86fe                   call     0x603e300
00000000077d958a: 488d05b3214f03               lea      rax, [rip + 0x34f21b3]
00000000077d9591: 8b10                         mov      edx, dword ptr [rax]
00000000077d9593: 488d05a6214f03               lea      rax, [rip + 0x34f21a6]
00000000077d959a: 8b08                         mov      ecx, dword ptr [rax]
00000000077d959c: 89d0                         mov      eax, edx
00000000077d959e: f7d0                         not      eax
00000000077d95a0: 0fafc2                       imul     eax, edx
00000000077d95a3: 83e001                       and      eax, 1
00000000077d95a6: 83f90a                       cmp      ecx, 0xa
00000000077d95a9: 0f8c1cfeffff                 jl       0x77d93cb
00000000077d95af: 85c0                         test     eax, eax
00000000077d95b1: 0f8414feffff                 je       0x77d93cb
00000000077d95b7: 488b85d8feffff               mov      rax, qword ptr [rbp - 0x128]
00000000077d95be: 488bb080020000               mov      rsi, qword ptr [rax + 0x280]
00000000077d95c5: 488b85d0feffff               mov      rax, qword ptr [rbp - 0x130]
00000000077d95cc: 488b10                       mov      rdx, qword ptr [rax]
00000000077d95cf: 4c89f7                       mov      rdi, r14
00000000077d95d2: e819b20200                   call     0x78047f0
00000000077d95d7: 498b5e08                     mov      rbx, qword ptr [r14 + 8]
00000000077d95db: 4885db                       test     rbx, rbx
00000000077d95de: 0f842cffffff                 je       0x77d9510
00000000077d95e4: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077d95eb: f0480fc14308                 lock xadd qword ptr [rbx + 8], rax
00000000077d95f1: 4885c0                       test     rax, rax
00000000077d95f4: 0f8516ffffff                 jne      0x77d9510
00000000077d95fa: 488b03                       mov      rax, qword ptr [rbx]
00000000077d95fd: 4889df                       mov      rdi, rbx
00000000077d9600: ff5010                       call     qword ptr [rax + 0x10]
00000000077d9603: 4889df                       mov      rdi, rbx
00000000077d9606: e8c5dbd5fc                   call     0x45371d0
00000000077d960b: e900ffffff                   jmp      0x77d9510
00000000077d9610: 488b8528ffffff               mov      rax, qword ptr [rbp - 0xd8]
00000000077d9617: 440fb630                     movzx    r14d, byte ptr [rax]
00000000077d961b: 4584f6                       test     r14b, r14b
00000000077d961e: 740f                         je       0x77d962f
00000000077d9620: 488b8500feffff               mov      rax, qword ptr [rbp - 0x200]
00000000077d9627: 488b18                       mov      rbx, qword ptr [rax]
00000000077d962a: 4885db                       test     rbx, rbx
00000000077d962d: 7527                         jne      0x77d9656
00000000077d962f: e8ac2e86fe                   call     0x603c4e0
00000000077d9634: 488b08                       mov      rcx, qword ptr [rax]
00000000077d9637: 4889c7                       mov      rdi, rax
00000000077d963a: ff5120                       call     qword ptr [rcx + 0x20]
00000000077d963d: 4889c3                       mov      rbx, rax
00000000077d9640: 4885c0                       test     rax, rax
00000000077d9643: 7511                         jne      0x77d9656
00000000077d9645: e8962e86fe                   call     0x603c4e0
00000000077d964a: 488b08                       mov      rcx, qword ptr [rax]
00000000077d964d: 4889c7                       mov      rdi, rax
00000000077d9650: ff5140                       call     qword ptr [rcx + 0x40]
00000000077d9653: 4889c3                       mov      rbx, rax
00000000077d9656: 4488b5e8feffff               mov      byte ptr [rbp - 0x118], r14b
00000000077d965d: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9661: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077d9665: 4c8b7010                     mov      r14, qword ptr [rax + 0x10]
00000000077d9669: 4d85f6                       test     r14, r14
00000000077d966c: 751d                         jne      0x77d968b
00000000077d966e: bfa8000000                   mov      edi, 0xa8
00000000077d9673: e82847e902                   call     0xa66dda0
00000000077d9678: 4989c6                       mov      r14, rax
00000000077d967b: 4889c7                       mov      rdi, rax
00000000077d967e: e83d335000                   call     0x7cdc9c0
00000000077d9683: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9687: 4c897010                     mov      qword ptr [rax + 0x10], r14
00000000077d968b: 41808ea000000001             or       byte ptr [r14 + 0xa0], 1
00000000077d9693: 4d8b7e08                     mov      r15, qword ptr [r14 + 8]
00000000077d9697: 4d85ff                       test     r15, r15
00000000077d969a: 7519                         jne      0x77d96b5
00000000077d969c: bf38000000                   mov      edi, 0x38
00000000077d96a1: e8fa46e902                   call     0xa66dda0
00000000077d96a6: 4989c7                       mov      r15, rax
00000000077d96a9: 4889c7                       mov      rdi, rax
00000000077d96ac: e8ff9d2100                   call     0x79f34b0
00000000077d96b1: 4d897e08                     mov      qword ptr [r14 + 8], r15
00000000077d96b5: 41804f3402                   or       byte ptr [r15 + 0x34], 2
00000000077d96ba: 49895f10                     mov      qword ptr [r15 + 0x10], rbx
00000000077d96be: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d96c2: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077d96c6: 488b5810                     mov      rbx, qword ptr [rax + 0x10]
00000000077d96ca: 4885db                       test     rbx, rbx
00000000077d96cd: 751d                         jne      0x77d96ec
00000000077d96cf: bfa8000000                   mov      edi, 0xa8
00000000077d96d4: e8c746e902                   call     0xa66dda0
00000000077d96d9: 4889c3                       mov      rbx, rax
00000000077d96dc: 4889c7                       mov      rdi, rax
00000000077d96df: e8dc325000                   call     0x7cdc9c0
00000000077d96e4: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d96e8: 48895810                     mov      qword ptr [rax + 0x10], rbx
00000000077d96ec: 808ba000000001               or       byte ptr [rbx + 0xa0], 1
00000000077d96f3: 4c8b7308                     mov      r14, qword ptr [rbx + 8]
00000000077d96f7: 4d85f6                       test     r14, r14
00000000077d96fa: 7519                         jne      0x77d9715
00000000077d96fc: bf38000000                   mov      edi, 0x38
00000000077d9701: e89a46e902                   call     0xa66dda0
00000000077d9706: 4989c6                       mov      r14, rax
00000000077d9709: 4889c7                       mov      rdi, rax
00000000077d970c: e89f9d2100                   call     0x79f34b0
00000000077d9711: 4c897308                     mov      qword ptr [rbx + 8], r14
00000000077d9715: 41804e3401                   or       byte ptr [r14 + 0x34], 1
00000000077d971a: 498b7e08                     mov      rdi, qword ptr [r14 + 8]
00000000077d971e: 483b3ddb9d3103               cmp      rdi, qword ptr [rip + 0x3319ddb] ; reloc 0xad176f0
00000000077d9725: 751f                         jne      0x77d9746
00000000077d9727: bf18000000                   mov      edi, 0x18
00000000077d972c: e86f46e902                   call     0xa66dda0
00000000077d9731: 4889c7                       mov      rdi, rax
00000000077d9734: 0f57c0                       xorps    xmm0, xmm0
00000000077d9737: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077d973a: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077d9742: 49894608                     mov      qword ptr [r14 + 8], rax
00000000077d9746: 488d35ebae63f9               lea      rsi, [rip - 0x69c5115]
00000000077d974d: ba01000000                   mov      edx, 1
00000000077d9752: e8a937d3fc                   call     0x450cf00
00000000077d9757: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d975b: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077d975f: 4c8b7010                     mov      r14, qword ptr [rax + 0x10]
00000000077d9763: 4d85f6                       test     r14, r14
00000000077d9766: 751d                         jne      0x77d9785
00000000077d9768: bfa8000000                   mov      edi, 0xa8
00000000077d976d: e82e46e902                   call     0xa66dda0
00000000077d9772: 4989c6                       mov      r14, rax
00000000077d9775: 4889c7                       mov      rdi, rax
00000000077d9778: e843325000                   call     0x7cdc9c0
00000000077d977d: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9781: 4c897010                     mov      qword ptr [rax + 0x10], r14
00000000077d9785: 41808ea000000001             or       byte ptr [r14 + 0xa0], 1
00000000077d978d: 498b5e08                     mov      rbx, qword ptr [r14 + 8]
00000000077d9791: 4885db                       test     rbx, rbx
00000000077d9794: 7519                         jne      0x77d97af
00000000077d9796: bf38000000                   mov      edi, 0x38
00000000077d979b: e80046e902                   call     0xa66dda0
00000000077d97a0: 4889c3                       mov      rbx, rax
00000000077d97a3: 4889c7                       mov      rdi, rax
00000000077d97a6: e8059d2100                   call     0x79f34b0
00000000077d97ab: 49895e08                     mov      qword ptr [r14 + 8], rbx
00000000077d97af: e82c2d86fe                   call     0x603c4e0
00000000077d97b4: 488b08                       mov      rcx, qword ptr [rax]
00000000077d97b7: 4889c7                       mov      rdi, rax
00000000077d97ba: ff5110                       call     qword ptr [rcx + 0x10]
00000000077d97bd: 4c89e7                       mov      rdi, r12
00000000077d97c0: 4889c6                       mov      rsi, rax
00000000077d97c3: e8a89786fe                   call     0x6042f70
00000000077d97c8: 41f6042401                   test     byte ptr [r12], 1
00000000077d97cd: 7407                         je       0x77d97d6
00000000077d97cf: 4d8b742410                   mov      r14, qword ptr [r12 + 0x10]
00000000077d97d4: eb05                         jmp      0x77d97db
00000000077d97d6: 4d8d742401                   lea      r14, [r12 + 1]
00000000077d97db: 834b3404                     or       dword ptr [rbx + 0x34], 4
00000000077d97df: 488b7b18                     mov      rdi, qword ptr [rbx + 0x18]
00000000077d97e3: 483b3d169d3103               cmp      rdi, qword ptr [rip + 0x3319d16] ; reloc 0xad176f0
00000000077d97ea: 751f                         jne      0x77d980b
00000000077d97ec: bf18000000                   mov      edi, 0x18
00000000077d97f1: e8aa45e902                   call     0xa66dda0
00000000077d97f6: 4889c7                       mov      rdi, rax
00000000077d97f9: 0f57c0                       xorps    xmm0, xmm0
00000000077d97fc: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077d97ff: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077d9807: 48894318                     mov      qword ptr [rbx + 0x18], rax
00000000077d980b: ba10000000                   mov      edx, 0x10
00000000077d9810: 4c89f6                       mov      rsi, r14
00000000077d9813: e8e836d3fc                   call     0x450cf00
00000000077d9818: 0f1f840000000000             nop      dword ptr [rax + rax]
00000000077d9820: 41f6042401                   test     byte ptr [r12], 1
00000000077d9825: 740a                         je       0x77d9831
00000000077d9827: 498b7c2410                   mov      rdi, qword ptr [r12 + 0x10]
00000000077d982c: e80f09d3fc                   call     0x450a140
00000000077d9831: 488d05081f4f03               lea      rax, [rip + 0x34f1f08]
00000000077d9838: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d983b: 7c28                         jl       0x77d9865
00000000077d983d: 488d05001f4f03               lea      rax, [rip + 0x34f1f00]
00000000077d9844: 8b00                         mov      eax, dword ptr [rax]
00000000077d9846: 89c1                         mov      ecx, eax
00000000077d9848: f7d1                         not      ecx
00000000077d984a: 0fafc8                       imul     ecx, eax
00000000077d984d: 83e101                       and      ecx, 1
00000000077d9850: 7413                         je       0x77d9865
00000000077d9852: 41f6042401                   test     byte ptr [r12], 1
00000000077d9857: 74c7                         je       0x77d9820
00000000077d9859: 498b7c2410                   mov      rdi, qword ptr [r12 + 0x10]
00000000077d985e: e8dd08d3fc                   call     0x450a140
00000000077d9863: ebbb                         jmp      0x77d9820
00000000077d9865: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9869: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077d986d: 488b5810                     mov      rbx, qword ptr [rax + 0x10]
00000000077d9871: 4885db                       test     rbx, rbx
00000000077d9874: 751d                         jne      0x77d9893
00000000077d9876: bfa8000000                   mov      edi, 0xa8
00000000077d987b: e82045e902                   call     0xa66dda0
00000000077d9880: 4889c3                       mov      rbx, rax
00000000077d9883: 4889c7                       mov      rdi, rax
00000000077d9886: e835315000                   call     0x7cdc9c0
00000000077d988b: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d988f: 48895810                     mov      qword ptr [rax + 0x10], rbx
00000000077d9893: 808ba000000001               or       byte ptr [rbx + 0xa0], 1
00000000077d989a: 4c8b7308                     mov      r14, qword ptr [rbx + 8]
00000000077d989e: 4d85f6                       test     r14, r14
00000000077d98a1: 7519                         jne      0x77d98bc
00000000077d98a3: bf38000000                   mov      edi, 0x38
00000000077d98a8: e8f344e902                   call     0xa66dda0
00000000077d98ad: 4989c6                       mov      r14, rax
00000000077d98b0: 4889c7                       mov      rdi, rax
00000000077d98b3: e8f89b2100                   call     0x79f34b0
00000000077d98b8: 4c897308                     mov      qword ptr [rbx + 8], r14
00000000077d98bc: e81f2c86fe                   call     0x603c4e0
00000000077d98c1: 488b08                       mov      rcx, qword ptr [rax]
00000000077d98c4: 4889c7                       mov      rdi, rax
00000000077d98c7: ff5110                       call     qword ptr [rcx + 0x10]
00000000077d98ca: 8b4060                       mov      eax, dword ptr [rax + 0x60]
00000000077d98cd: 41834e3408                   or       dword ptr [r14 + 0x34], 8
00000000077d98d2: 41894628                     mov      dword ptr [r14 + 0x28], eax
00000000077d98d6: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d98da: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077d98de: 4c8b7010                     mov      r14, qword ptr [rax + 0x10]
00000000077d98e2: 4d85f6                       test     r14, r14
00000000077d98e5: 751d                         jne      0x77d9904
00000000077d98e7: bfa8000000                   mov      edi, 0xa8
00000000077d98ec: e8af44e902                   call     0xa66dda0
00000000077d98f1: 4989c6                       mov      r14, rax
00000000077d98f4: 4889c7                       mov      rdi, rax
00000000077d98f7: e8c4305000                   call     0x7cdc9c0
00000000077d98fc: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9900: 4c897010                     mov      qword ptr [rax + 0x10], r14
00000000077d9904: 41808ea000000001             or       byte ptr [r14 + 0xa0], 1
00000000077d990c: 498b5e08                     mov      rbx, qword ptr [r14 + 8]
00000000077d9910: 4885db                       test     rbx, rbx
00000000077d9913: 7519                         jne      0x77d992e
00000000077d9915: bf38000000                   mov      edi, 0x38
00000000077d991a: e88144e902                   call     0xa66dda0
00000000077d991f: 4889c3                       mov      rbx, rax
00000000077d9922: 4889c7                       mov      rdi, rax
00000000077d9925: e8869b2100                   call     0x79f34b0
00000000077d992a: 49895e08                     mov      qword ptr [r14 + 8], rbx
00000000077d992e: e8ad2b86fe                   call     0x603c4e0
00000000077d9933: 488b08                       mov      rcx, qword ptr [rax]
00000000077d9936: 4889c7                       mov      rdi, rax
00000000077d9939: ff5110                       call     qword ptr [rcx + 0x10]
00000000077d993c: 4989c6                       mov      r14, rax
00000000077d993f: 488d05fe1d4f03               lea      rax, [rip + 0x34f1dfe]
00000000077d9946: 8b00                         mov      eax, dword ptr [rax]
00000000077d9948: 89c1                         mov      ecx, eax
00000000077d994a: f7d1                         not      ecx
00000000077d994c: 0fafc8                       imul     ecx, eax
00000000077d994f: f6c101                       test     cl, 1
00000000077d9952: 0f94c1                       sete     cl
00000000077d9955: 488d05e41d4f03               lea      rax, [rip + 0x34f1de4]
00000000077d995c: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d995f: 0f9cc0                       setl     al
00000000077d9962: 08c8                         or       al, cl
00000000077d9964: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000077d9970: 84c0                         test     al, al
00000000077d9972: 74fc                         je       0x77d9970
00000000077d9974: 41f6868800000001             test     byte ptr [r14 + 0x88], 1
00000000077d997c: 7409                         je       0x77d9987
00000000077d997e: 4d8bb698000000               mov      r14, qword ptr [r14 + 0x98]
00000000077d9985: eb07                         jmp      0x77d998e
00000000077d9987: 4981c689000000               add      r14, 0x89
00000000077d998e: e84d2b86fe                   call     0x603c4e0
00000000077d9993: 488b08                       mov      rcx, qword ptr [rax]
00000000077d9996: 4889c7                       mov      rdi, rax
00000000077d9999: ff5110                       call     qword ptr [rcx + 0x10]
00000000077d999c: 488d0da11d4f03               lea      rcx, [rip + 0x34f1da1]
00000000077d99a3: 8b09                         mov      ecx, dword ptr [rcx]
00000000077d99a5: 89ca                         mov      edx, ecx
00000000077d99a7: f7d2                         not      edx
00000000077d99a9: 0fafd1                       imul     edx, ecx
00000000077d99ac: f6c201                       test     dl, 1
00000000077d99af: 0f94c2                       sete     dl
00000000077d99b2: 488d0d871d4f03               lea      rcx, [rip + 0x34f1d87]
00000000077d99b9: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077d99bc: 0f9cc1                       setl     cl
00000000077d99bf: 08d1                         or       cl, dl
00000000077d99c1: 6666666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077d99d0: 84c9                         test     cl, cl
00000000077d99d2: 74fc                         je       0x77d99d0
00000000077d99d4: 440fb6b888000000             movzx    r15d, byte ptr [rax + 0x88]
00000000077d99dc: 41f6c701                     test     r15b, 1
00000000077d99e0: 7409                         je       0x77d99eb
00000000077d99e2: 4c8bb890000000               mov      r15, qword ptr [rax + 0x90]
00000000077d99e9: eb03                         jmp      0x77d99ee
00000000077d99eb: 41d1ef                       shr      r15d, 1
00000000077d99ee: 834b3410                     or       dword ptr [rbx + 0x34], 0x10
00000000077d99f2: 488b7b20                     mov      rdi, qword ptr [rbx + 0x20]
00000000077d99f6: 483b3d039b3103               cmp      rdi, qword ptr [rip + 0x3319b03] ; reloc 0xad176f0
00000000077d99fd: 751f                         jne      0x77d9a1e
00000000077d99ff: bf18000000                   mov      edi, 0x18
00000000077d9a04: e89743e902                   call     0xa66dda0
00000000077d9a09: 4889c7                       mov      rdi, rax
00000000077d9a0c: 0f57c0                       xorps    xmm0, xmm0
00000000077d9a0f: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077d9a12: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077d9a1a: 48894320                     mov      qword ptr [rbx + 0x20], rax
00000000077d9a1e: 4c89f6                       mov      rsi, r14
00000000077d9a21: 4c89fa                       mov      rdx, r15
00000000077d9a24: e8d734d3fc                   call     0x450cf00
00000000077d9a29: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9a2d: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077d9a31: 488b5810                     mov      rbx, qword ptr [rax + 0x10]
00000000077d9a35: 4885db                       test     rbx, rbx
00000000077d9a38: 751d                         jne      0x77d9a57
00000000077d9a3a: bfa8000000                   mov      edi, 0xa8
00000000077d9a3f: e85c43e902                   call     0xa66dda0
00000000077d9a44: 4889c3                       mov      rbx, rax
00000000077d9a47: 4889c7                       mov      rdi, rax
00000000077d9a4a: e8712f5000                   call     0x7cdc9c0
00000000077d9a4f: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9a53: 48895810                     mov      qword ptr [rax + 0x10], rbx
00000000077d9a57: 808ba000000001               or       byte ptr [rbx + 0xa0], 1
00000000077d9a5e: 4c8b7308                     mov      r14, qword ptr [rbx + 8]
00000000077d9a62: 4d85f6                       test     r14, r14
00000000077d9a65: 7519                         jne      0x77d9a80
00000000077d9a67: bf38000000                   mov      edi, 0x38
00000000077d9a6c: e82f43e902                   call     0xa66dda0
00000000077d9a71: 4989c6                       mov      r14, rax
00000000077d9a74: 4889c7                       mov      rdi, rax
00000000077d9a77: e8349a2100                   call     0x79f34b0
00000000077d9a7c: 4c897308                     mov      qword ptr [rbx + 8], r14
00000000077d9a80: 80bde8feffff00               cmp      byte ptr [rbp - 0x118], 0
00000000077d9a87: b802000000                   mov      eax, 2
00000000077d9a8c: b90c000000                   mov      ecx, 0xc
00000000077d9a91: 0f44c8                       cmove    ecx, eax
00000000077d9a94: 41804e3420                   or       byte ptr [r14 + 0x34], 0x20
00000000077d9a99: 41894e2c                     mov      dword ptr [r14 + 0x2c], ecx
00000000077d9a9d: 48b9aaaaaaaaaaaaaaaa         movabs   rcx, 0xaaaaaaaaaaaaaaaa
00000000077d9aa7: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077d9aab: 48894810                     mov      qword ptr [rax + 0x10], rcx
00000000077d9aaf: 0f2805eafb57f9               movaps   xmm0, xmmword ptr [rip - 0x6a80416]
00000000077d9ab6: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077d9ab9: e8222a86fe                   call     0x603c4e0
00000000077d9abe: 4c8bb520feffff               mov      r14, qword ptr [rbp - 0x1e0]
00000000077d9ac5: 488b08                       mov      rcx, qword ptr [rax]
00000000077d9ac8: 4889c7                       mov      rdi, rax
00000000077d9acb: ff5110                       call     qword ptr [rcx + 0x10]
00000000077d9ace: f680b800000001               test     byte ptr [rax + 0xb8], 1
00000000077d9ad5: 751a                         jne      0x77d9af1
00000000077d9ad7: 4805b8000000                 add      rax, 0xb8
00000000077d9add: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
00000000077d9ae1: 488b5598                     mov      rdx, qword ptr [rbp - 0x68]
00000000077d9ae5: 48894a10                     mov      qword ptr [rdx + 0x10], rcx
00000000077d9ae9: 0f1000                       movups   xmm0, xmmword ptr [rax]
00000000077d9aec: 0f1102                       movups   xmmword ptr [rdx], xmm0
00000000077d9aef: eb17                         jmp      0x77d9b08
00000000077d9af1: 488b90c0000000               mov      rdx, qword ptr [rax + 0xc0]
00000000077d9af8: 488bb0c8000000               mov      rsi, qword ptr [rax + 0xc8]
00000000077d9aff: 488b7d98                     mov      rdi, qword ptr [rbp - 0x68]
00000000077d9b03: e8982bd3fc                   call     0x450c6a0
00000000077d9b08: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9b0c: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077d9b10: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077d9b14: 4d85ff                       test     r15, r15
00000000077d9b17: 751d                         jne      0x77d9b36
00000000077d9b19: bfa8000000                   mov      edi, 0xa8
00000000077d9b1e: e87d42e902                   call     0xa66dda0
00000000077d9b23: 4989c7                       mov      r15, rax
00000000077d9b26: 4889c7                       mov      rdi, rax
00000000077d9b29: e8922e5000                   call     0x7cdc9c0
00000000077d9b2e: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9b32: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077d9b36: e8a52986fe                   call     0x603c4e0
00000000077d9b3b: 488b08                       mov      rcx, qword ptr [rax]
00000000077d9b3e: 4889c7                       mov      rdi, rax
00000000077d9b41: ff5110                       call     qword ptr [rcx + 0x10]
00000000077d9b44: 4889c3                       mov      rbx, rax
00000000077d9b47: 41808fa100000004             or       byte ptr [r15 + 0xa1], 4
00000000077d9b4f: 498b7f58                     mov      rdi, qword ptr [r15 + 0x58]
00000000077d9b53: 483b3da6993103               cmp      rdi, qword ptr [rip + 0x33199a6] ; reloc 0xad176f0
00000000077d9b5a: 751f                         jne      0x77d9b7b
00000000077d9b5c: bf18000000                   mov      edi, 0x18
00000000077d9b61: e83a42e902                   call     0xa66dda0
00000000077d9b66: 4889c7                       mov      rdi, rax
00000000077d9b69: 0f57c0                       xorps    xmm0, xmm0
00000000077d9b6c: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077d9b6f: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077d9b77: 49894758                     mov      qword ptr [r15 + 0x58], rax
00000000077d9b7b: 4883c368                     add      rbx, 0x68
00000000077d9b7f: 4889de                       mov      rsi, rbx
00000000077d9b82: e82942d3fc                   call     0x450ddb0
00000000077d9b87: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9b8b: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077d9b8f: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077d9b93: 4d85ff                       test     r15, r15
00000000077d9b96: 751d                         jne      0x77d9bb5
00000000077d9b98: bfa8000000                   mov      edi, 0xa8
00000000077d9b9d: e8fe41e902                   call     0xa66dda0
00000000077d9ba2: 4989c7                       mov      r15, rax
00000000077d9ba5: 4889c7                       mov      rdi, rax
00000000077d9ba8: e8132e5000                   call     0x7cdc9c0
00000000077d9bad: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9bb1: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077d9bb5: 488bbd48ffffff               mov      rdi, qword ptr [rbp - 0xb8]
00000000077d9bbc: e83fd4f300                   call     0x8717000
00000000077d9bc1: 41808fa100000008             or       byte ptr [r15 + 0xa1], 8
00000000077d9bc9: 498b7f60                     mov      rdi, qword ptr [r15 + 0x60]
00000000077d9bcd: 483b3d2c993103               cmp      rdi, qword ptr [rip + 0x331992c] ; reloc 0xad176f0
00000000077d9bd4: 751f                         jne      0x77d9bf5
00000000077d9bd6: bf18000000                   mov      edi, 0x18
00000000077d9bdb: e8c041e902                   call     0xa66dda0
00000000077d9be0: 4889c7                       mov      rdi, rax
00000000077d9be3: 0f57c0                       xorps    xmm0, xmm0
00000000077d9be6: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077d9be9: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077d9bf1: 49894760                     mov      qword ptr [r15 + 0x60], rax
00000000077d9bf5: 488bb548ffffff               mov      rsi, qword ptr [rbp - 0xb8]
00000000077d9bfc: e8af41d3fc                   call     0x450ddb0
00000000077d9c01: 488d05381b4f03               lea      rax, [rip + 0x34f1b38]
00000000077d9c08: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d9c0b: 0f8c02010000                 jl       0x77d9d13
00000000077d9c11: 488d052c1b4f03               lea      rax, [rip + 0x34f1b2c]
00000000077d9c18: 8b00                         mov      eax, dword ptr [rax]
00000000077d9c1a: 89c1                         mov      ecx, eax
00000000077d9c1c: f7d1                         not      ecx
00000000077d9c1e: 0fafc8                       imul     ecx, eax
00000000077d9c21: 83e101                       and      ecx, 1
00000000077d9c24: 0f851f010000                 jne      0x77d9d49
00000000077d9c2a: e9e4000000                   jmp      0x77d9d13
00000000077d9c2f: e971070000                   jmp      0x77da3a5
00000000077d9c34: e96c070000                   jmp      0x77da3a5
00000000077d9c39: eb38                         jmp      0x77d9c73
00000000077d9c3b: eb0e                         jmp      0x77d9c4b
00000000077d9c3d: eb0c                         jmp      0x77d9c4b
00000000077d9c3f: eb32                         jmp      0x77d9c73
00000000077d9c41: eb30                         jmp      0x77d9c73
00000000077d9c43: eb06                         jmp      0x77d9c4b
00000000077d9c45: eb04                         jmp      0x77d9c4b
00000000077d9c47: eb2a                         jmp      0x77d9c73
00000000077d9c49: eb28                         jmp      0x77d9c73
00000000077d9c4b: 4989d4                       mov      r12, rdx
00000000077d9c4e: 4989c5                       mov      r13, rax
00000000077d9c51: 4889df                       mov      rdi, rbx
00000000077d9c54: e8e704d3fc                   call     0x450a140
00000000077d9c59: e996000000                   jmp      0x77d9cf4
00000000077d9c5e: 4989d4                       mov      r12, rdx
00000000077d9c61: 4989c5                       mov      r13, rax
00000000077d9c64: 4c89ff                       mov      rdi, r15
00000000077d9c67: e8d404d3fc                   call     0x450a140
00000000077d9c6c: e983000000                   jmp      0x77d9cf4
00000000077d9c71: eb69                         jmp      0x77d9cdc
00000000077d9c73: 4989d4                       mov      r12, rdx
00000000077d9c76: 4989c5                       mov      r13, rax
00000000077d9c79: 4c89f7                       mov      rdi, r14
00000000077d9c7c: e8bf04d3fc                   call     0x450a140
00000000077d9c81: eb71                         jmp      0x77d9cf4
00000000077d9c83: e92d070000                   jmp      0x77da3b5
00000000077d9c88: eb52                         jmp      0x77d9cdc
00000000077d9c8a: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077d9c8e: 488901                       mov      qword ptr [rcx], rax
00000000077d9c91: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077d9c95: 8910                         mov      dword ptr [rax], edx
00000000077d9c97: 488b8548ffffff               mov      rax, qword ptr [rbp - 0xb8]
00000000077d9c9e: f60001                       test     byte ptr [rax], 1
00000000077d9ca1: 0f8435070000                 je       0x77da3dc
00000000077d9ca7: 488b8548ffffff               mov      rax, qword ptr [rbp - 0xb8]
00000000077d9cae: e97f020000                   jmp      0x77d9f32
00000000077d9cb3: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077d9cb7: 488901                       mov      qword ptr [rcx], rax
00000000077d9cba: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077d9cbe: 8910                         mov      dword ptr [rax], edx
00000000077d9cc0: 41f6042401                   test     byte ptr [r12], 1
00000000077d9cc5: 0f84822c0000                 je       0x77dc94d
00000000077d9ccb: 498b7c2410                   mov      rdi, qword ptr [r12 + 0x10]
00000000077d9cd0: e86b04d3fc                   call     0x450a140
00000000077d9cd5: e9732c0000                   jmp      0x77dc94d
00000000077d9cda: eb00                         jmp      0x77d9cdc
00000000077d9cdc: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077d9ce0: 488901                       mov      qword ptr [rcx], rax
00000000077d9ce3: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077d9ce7: 8910                         mov      dword ptr [rax], edx
00000000077d9ce9: e95f2c0000                   jmp      0x77dc94d
00000000077d9cee: 4989d4                       mov      r12, rdx
00000000077d9cf1: 4989c5                       mov      r13, rax
00000000077d9cf4: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077d9cf8: 4c8928                       mov      qword ptr [rax], r13
00000000077d9cfb: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077d9cff: 448920                       mov      dword ptr [rax], r12d
00000000077d9d02: e9462c0000                   jmp      0x77dc94d
00000000077d9d07: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077d9d0b: 488b38                       mov      rdi, qword ptr [rax]
00000000077d9d0e: e80d31d1fc                   call     0x44ece20
00000000077d9d13: 488b8548ffffff               mov      rax, qword ptr [rbp - 0xb8]
00000000077d9d1a: f60001                       test     byte ptr [rax], 1
00000000077d9d1d: 7409                         je       0x77d9d28
00000000077d9d1f: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077d9d23: e81804d3fc                   call     0x450a140
00000000077d9d28: 488d05111a4f03               lea      rax, [rip + 0x34f1a11]
00000000077d9d2f: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d9d32: 7c33                         jl       0x77d9d67
00000000077d9d34: 488d05091a4f03               lea      rax, [rip + 0x34f1a09]
00000000077d9d3b: 8b00                         mov      eax, dword ptr [rax]
00000000077d9d3d: 89c1                         mov      ecx, eax
00000000077d9d3f: f7d1                         not      ecx
00000000077d9d41: 0fafc8                       imul     ecx, eax
00000000077d9d44: 83e101                       and      ecx, 1
00000000077d9d47: 741e                         je       0x77d9d67
00000000077d9d49: 488b8548ffffff               mov      rax, qword ptr [rbp - 0xb8]
00000000077d9d50: f60001                       test     byte ptr [rax], 1
00000000077d9d53: 74be                         je       0x77d9d13
00000000077d9d55: 488b8548ffffff               mov      rax, qword ptr [rbp - 0xb8]
00000000077d9d5c: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077d9d60: e8db03d3fc                   call     0x450a140
00000000077d9d65: ebac                         jmp      0x77d9d13
00000000077d9d67: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9d6b: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077d9d6f: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077d9d73: 4d85ff                       test     r15, r15
00000000077d9d76: 751d                         jne      0x77d9d95
00000000077d9d78: bfa8000000                   mov      edi, 0xa8
00000000077d9d7d: e81e40e902                   call     0xa66dda0
00000000077d9d82: 4989c7                       mov      r15, rax
00000000077d9d85: 4889c7                       mov      rdi, rax
00000000077d9d88: e8332c5000                   call     0x7cdc9c0
00000000077d9d8d: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9d91: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077d9d95: 488bbd50ffffff               mov      rdi, qword ptr [rbp - 0xb0]
00000000077d9d9c: e87fe0baff                   call     0x7387e20
00000000077d9da1: 41808fa000000080             or       byte ptr [r15 + 0xa0], 0x80
00000000077d9da9: 498b7f38                     mov      rdi, qword ptr [r15 + 0x38]
00000000077d9dad: 483b3d4c973103               cmp      rdi, qword ptr [rip + 0x331974c] ; reloc 0xad176f0
00000000077d9db4: 751f                         jne      0x77d9dd5
00000000077d9db6: bf18000000                   mov      edi, 0x18
00000000077d9dbb: e8e03fe902                   call     0xa66dda0
00000000077d9dc0: 4889c7                       mov      rdi, rax
00000000077d9dc3: 0f57c0                       xorps    xmm0, xmm0
00000000077d9dc6: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077d9dc9: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077d9dd1: 49894738                     mov      qword ptr [r15 + 0x38], rax
00000000077d9dd5: 488bb550ffffff               mov      rsi, qword ptr [rbp - 0xb0]
00000000077d9ddc: e8cf3fd3fc                   call     0x450ddb0
00000000077d9de1: 488b9d50ffffff               mov      rbx, qword ptr [rbp - 0xb0]
00000000077d9de8: 0f1f840000000000             nop      dword ptr [rax + rax]
00000000077d9df0: f60301                       test     byte ptr [rbx], 1
00000000077d9df3: 7410                         je       0x77d9e05
00000000077d9df5: 488b8550ffffff               mov      rax, qword ptr [rbp - 0xb0]
00000000077d9dfc: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077d9e00: e83b03d3fc                   call     0x450a140
00000000077d9e05: 488d0534194f03               lea      rax, [rip + 0x34f1934]
00000000077d9e0c: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d9e0f: 7c2c                         jl       0x77d9e3d
00000000077d9e11: 488d052c194f03               lea      rax, [rip + 0x34f192c]
00000000077d9e18: 8b00                         mov      eax, dword ptr [rax]
00000000077d9e1a: 89c1                         mov      ecx, eax
00000000077d9e1c: f7d1                         not      ecx
00000000077d9e1e: 0fafc8                       imul     ecx, eax
00000000077d9e21: 83e101                       and      ecx, 1
00000000077d9e24: 7417                         je       0x77d9e3d
00000000077d9e26: 488b9d50ffffff               mov      rbx, qword ptr [rbp - 0xb0]
00000000077d9e2d: f60301                       test     byte ptr [rbx], 1
00000000077d9e30: 74be                         je       0x77d9df0
00000000077d9e32: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077d9e36: e80503d3fc                   call     0x450a140
00000000077d9e3b: ebb3                         jmp      0x77d9df0
00000000077d9e3d: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9e41: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077d9e45: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077d9e49: 4d85ff                       test     r15, r15
00000000077d9e4c: 751d                         jne      0x77d9e6b
00000000077d9e4e: bfa8000000                   mov      edi, 0xa8
00000000077d9e53: e8483fe902                   call     0xa66dda0
00000000077d9e58: 4989c7                       mov      r15, rax
00000000077d9e5b: 4889c7                       mov      rdi, rax
00000000077d9e5e: e85d2b5000                   call     0x7cdc9c0
00000000077d9e63: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9e67: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077d9e6b: 4c89f7                       mov      rdi, r14
00000000077d9e6e: e86dd0f300                   call     0x8716ee0
00000000077d9e73: 41808fa100000001             or       byte ptr [r15 + 0xa1], 1
00000000077d9e7b: 498b7f40                     mov      rdi, qword ptr [r15 + 0x40]
00000000077d9e7f: 483b3d7a963103               cmp      rdi, qword ptr [rip + 0x331967a] ; reloc 0xad176f0
00000000077d9e86: 751f                         jne      0x77d9ea7
00000000077d9e88: bf18000000                   mov      edi, 0x18
00000000077d9e8d: e80e3fe902                   call     0xa66dda0
00000000077d9e92: 4889c7                       mov      rdi, rax
00000000077d9e95: 0f57c0                       xorps    xmm0, xmm0
00000000077d9e98: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077d9e9b: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077d9ea3: 49894740                     mov      qword ptr [r15 + 0x40], rax
00000000077d9ea7: 4c89f6                       mov      rsi, r14
00000000077d9eaa: e8013fd3fc                   call     0x450ddb0
00000000077d9eaf: 488d058a184f03               lea      rax, [rip + 0x34f188a]
00000000077d9eb6: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d9eb9: 0f8c81000000                 jl       0x77d9f40
00000000077d9ebf: 488d057e184f03               lea      rax, [rip + 0x34f187e]
00000000077d9ec6: 8b00                         mov      eax, dword ptr [rax]
00000000077d9ec8: 89c1                         mov      ecx, eax
00000000077d9eca: f7d1                         not      ecx
00000000077d9ecc: 0fafc8                       imul     ecx, eax
00000000077d9ecf: 83e101                       and      ecx, 1
00000000077d9ed2: 0f8598000000                 jne      0x77d9f70
00000000077d9ed8: eb66                         jmp      0x77d9f40
00000000077d9eda: e9c6040000                   jmp      0x77da3a5
00000000077d9edf: e9c1040000                   jmp      0x77da3a5
00000000077d9ee4: e9cc040000                   jmp      0x77da3b5
00000000077d9ee9: e9c7040000                   jmp      0x77da3b5
00000000077d9eee: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077d9ef2: 488901                       mov      qword ptr [rcx], rax
00000000077d9ef5: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077d9ef9: 8910                         mov      dword ptr [rax], edx
00000000077d9efb: 41f60601                     test     byte ptr [r14], 1
00000000077d9eff: 0f84d7040000                 je       0x77da3dc
00000000077d9f05: 488b8520feffff               mov      rax, qword ptr [rbp - 0x1e0]
00000000077d9f0c: eb24                         jmp      0x77d9f32
00000000077d9f0e: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077d9f12: 488901                       mov      qword ptr [rcx], rax
00000000077d9f15: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077d9f19: 8910                         mov      dword ptr [rax], edx
00000000077d9f1b: 488b8550ffffff               mov      rax, qword ptr [rbp - 0xb0]
00000000077d9f22: f60001                       test     byte ptr [rax], 1
00000000077d9f25: 0f84b1040000                 je       0x77da3dc
00000000077d9f2b: 488b8550ffffff               mov      rax, qword ptr [rbp - 0xb0]
00000000077d9f32: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077d9f36: e80502d3fc                   call     0x450a140
00000000077d9f3b: e99c040000                   jmp      0x77da3dc
00000000077d9f40: 41f60601                     test     byte ptr [r14], 1
00000000077d9f44: 7409                         je       0x77d9f4f
00000000077d9f46: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077d9f4a: e8f101d3fc                   call     0x450a140
00000000077d9f4f: 488d05ea174f03               lea      rax, [rip + 0x34f17ea]
00000000077d9f56: 83380a                       cmp      dword ptr [rax], 0xa
00000000077d9f59: 7c26                         jl       0x77d9f81
00000000077d9f5b: 488d05e2174f03               lea      rax, [rip + 0x34f17e2]
00000000077d9f62: 8b00                         mov      eax, dword ptr [rax]
00000000077d9f64: 89c1                         mov      ecx, eax
00000000077d9f66: f7d1                         not      ecx
00000000077d9f68: 0fafc8                       imul     ecx, eax
00000000077d9f6b: 83e101                       and      ecx, 1
00000000077d9f6e: 7411                         je       0x77d9f81
00000000077d9f70: 41f60601                     test     byte ptr [r14], 1
00000000077d9f74: 74ca                         je       0x77d9f40
00000000077d9f76: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077d9f7a: e8c101d3fc                   call     0x450a140
00000000077d9f7f: ebbf                         jmp      0x77d9f40
00000000077d9f81: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9f85: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077d9f89: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077d9f8d: 4d85ff                       test     r15, r15
00000000077d9f90: 751d                         jne      0x77d9faf
00000000077d9f92: bfa8000000                   mov      edi, 0xa8
00000000077d9f97: e8043ee902                   call     0xa66dda0
00000000077d9f9c: 4989c7                       mov      r15, rax
00000000077d9f9f: 4889c7                       mov      rdi, rax
00000000077d9fa2: e8192a5000                   call     0x7cdc9c0
00000000077d9fa7: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9fab: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077d9faf: 41808fa200000004             or       byte ptr [r15 + 0xa2], 4
00000000077d9fb7: 498bbf90000000               mov      rdi, qword ptr [r15 + 0x90]
00000000077d9fbe: 483b3d3b953103               cmp      rdi, qword ptr [rip + 0x331953b] ; reloc 0xad176f0
00000000077d9fc5: 7522                         jne      0x77d9fe9
00000000077d9fc7: bf18000000                   mov      edi, 0x18
00000000077d9fcc: e8cf3de902                   call     0xa66dda0
00000000077d9fd1: 4889c7                       mov      rdi, rax
00000000077d9fd4: 0f57c0                       xorps    xmm0, xmm0
00000000077d9fd7: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077d9fda: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077d9fe2: 49898790000000               mov      qword ptr [r15 + 0x90], rax
00000000077d9fe9: 488b7598                     mov      rsi, qword ptr [rbp - 0x68]
00000000077d9fed: e8be3dd3fc                   call     0x450ddb0
00000000077d9ff2: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077d9ff6: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077d9ffa: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077d9ffe: 4d85ff                       test     r15, r15
00000000077da001: 751d                         jne      0x77da020
00000000077da003: bfa8000000                   mov      edi, 0xa8
00000000077da008: e8933de902                   call     0xa66dda0
00000000077da00d: 4989c7                       mov      r15, rax
00000000077da010: 4889c7                       mov      rdi, rax
00000000077da013: e8a8295000                   call     0x7cdc9c0
00000000077da018: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da01c: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077da020: 41808fa100000002             or       byte ptr [r15 + 0xa1], 2
00000000077da028: 498b7f50                     mov      rdi, qword ptr [r15 + 0x50]
00000000077da02c: 483b3dcd943103               cmp      rdi, qword ptr [rip + 0x33194cd] ; reloc 0xad176f0
00000000077da033: 751f                         jne      0x77da054
00000000077da035: bf18000000                   mov      edi, 0x18
00000000077da03a: e8613de902                   call     0xa66dda0
00000000077da03f: 4889c7                       mov      rdi, rax
00000000077da042: 0f57c0                       xorps    xmm0, xmm0
00000000077da045: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077da048: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077da050: 49894750                     mov      qword ptr [r15 + 0x50], rax
00000000077da054: 488b7598                     mov      rsi, qword ptr [rbp - 0x68]
00000000077da058: e8533dd3fc                   call     0x450ddb0
00000000077da05d: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da061: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077da065: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077da069: 4d85ff                       test     r15, r15
00000000077da06c: 751d                         jne      0x77da08b
00000000077da06e: bfa8000000                   mov      edi, 0xa8
00000000077da073: e8283de902                   call     0xa66dda0
00000000077da078: 4989c7                       mov      r15, rax
00000000077da07b: 4889c7                       mov      rdi, rax
00000000077da07e: e83d295000                   call     0x7cdc9c0
00000000077da083: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da087: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077da08b: 41808fa000000020             or       byte ptr [r15 + 0xa0], 0x20
00000000077da093: 41c7474800000000             mov      dword ptr [r15 + 0x48], 0
00000000077da09b: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077da09f: 4d85ff                       test     r15, r15
00000000077da0a2: 751d                         jne      0x77da0c1
00000000077da0a4: bfa8000000                   mov      edi, 0xa8
00000000077da0a9: e8f23ce902                   call     0xa66dda0
00000000077da0ae: 4989c7                       mov      r15, rax
00000000077da0b1: 4889c7                       mov      rdi, rax
00000000077da0b4: e807295000                   call     0x7cdc9c0
00000000077da0b9: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da0bd: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077da0c1: 41808fa000000002             or       byte ptr [r15 + 0xa0], 2
00000000077da0c9: 4d8b6710                     mov      r12, qword ptr [r15 + 0x10]
00000000077da0cd: 4d85e4                       test     r12, r12
00000000077da0d0: 7519                         jne      0x77da0eb
00000000077da0d2: bf48000000                   mov      edi, 0x48
00000000077da0d7: e8c43ce902                   call     0xa66dda0
00000000077da0dc: 4989c4                       mov      r12, rax
00000000077da0df: 4889c7                       mov      rdi, rax
00000000077da0e2: e879a44f00                   call     0x7cd4560
00000000077da0e7: 4d896710                     mov      qword ptr [r15 + 0x10], r12
00000000077da0eb: 41804c244002                 or       byte ptr [r12 + 0x40], 2
00000000077da0f1: 4d8b7c2410                   mov      r15, qword ptr [r12 + 0x10]
00000000077da0f6: 4d85ff                       test     r15, r15
00000000077da0f9: 751a                         jne      0x77da115
00000000077da0fb: bf30000000                   mov      edi, 0x30
00000000077da100: e89b3ce902                   call     0xa66dda0
00000000077da105: 4989c7                       mov      r15, rax
00000000077da108: 4889c7                       mov      rdi, rax
00000000077da10b: e820c44f00                   call     0x7cd6530
00000000077da110: 4d897c2410                   mov      qword ptr [r12 + 0x10], r15
00000000077da115: 41804f2c08                   or       byte ptr [r15 + 0x2c], 8
00000000077da11a: 4d8b6720                     mov      r12, qword ptr [r15 + 0x20]
00000000077da11e: 4d85e4                       test     r12, r12
00000000077da121: 7519                         jne      0x77da13c
00000000077da123: bf20000000                   mov      edi, 0x20
00000000077da128: e8733ce902                   call     0xa66dda0
00000000077da12d: 4989c4                       mov      r12, rax
00000000077da130: 4889c7                       mov      rdi, rax
00000000077da133: e878633c00                   call     0x7ba04b0
00000000077da138: 4d896720                     mov      qword ptr [r15 + 0x20], r12
00000000077da13c: 41804c241802                 or       byte ptr [r12 + 0x18], 2
00000000077da142: 498b7c2408                   mov      rdi, qword ptr [r12 + 8]
00000000077da147: 483b3db2933103               cmp      rdi, qword ptr [rip + 0x33193b2] ; reloc 0xad176f0
00000000077da14e: 7520                         jne      0x77da170
00000000077da150: bf18000000                   mov      edi, 0x18
00000000077da155: e8463ce902                   call     0xa66dda0
00000000077da15a: 4889c7                       mov      rdi, rax
00000000077da15d: 0f57c0                       xorps    xmm0, xmm0
00000000077da160: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077da163: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077da16b: 4989442408                   mov      qword ptr [r12 + 8], rax
00000000077da170: 488d35c1a463f9               lea      rsi, [rip - 0x69c5b3f]
00000000077da177: ba01000000                   mov      edx, 1
00000000077da17c: e87f2dd3fc                   call     0x450cf00
00000000077da181: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da185: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077da189: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077da18d: 4d85ff                       test     r15, r15
00000000077da190: 751d                         jne      0x77da1af
00000000077da192: bfa8000000                   mov      edi, 0xa8
00000000077da197: e8043ce902                   call     0xa66dda0
00000000077da19c: 4989c7                       mov      r15, rax
00000000077da19f: 4889c7                       mov      rdi, rax
00000000077da1a2: e819285000                   call     0x7cdc9c0
00000000077da1a7: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da1ab: 4c897810                     mov      qword ptr [rax + 0x10], r15
00000000077da1af: 41808fa000000002             or       byte ptr [r15 + 0xa0], 2
00000000077da1b7: 4d8b6710                     mov      r12, qword ptr [r15 + 0x10]
00000000077da1bb: 4d85e4                       test     r12, r12
00000000077da1be: 7519                         jne      0x77da1d9
00000000077da1c0: bf48000000                   mov      edi, 0x48
00000000077da1c5: e8d63be902                   call     0xa66dda0
00000000077da1ca: 4989c4                       mov      r12, rax
00000000077da1cd: 4889c7                       mov      rdi, rax
00000000077da1d0: e88ba34f00                   call     0x7cd4560
00000000077da1d5: 4d896710                     mov      qword ptr [r15 + 0x10], r12
00000000077da1d9: 41804c244002                 or       byte ptr [r12 + 0x40], 2
00000000077da1df: 4d8b7c2410                   mov      r15, qword ptr [r12 + 0x10]
00000000077da1e4: 4d85ff                       test     r15, r15
00000000077da1e7: 751a                         jne      0x77da203
00000000077da1e9: bf30000000                   mov      edi, 0x30
00000000077da1ee: e8ad3be902                   call     0xa66dda0
00000000077da1f3: 4989c7                       mov      r15, rax
00000000077da1f6: 4889c7                       mov      rdi, rax
00000000077da1f9: e832c34f00                   call     0x7cd6530
00000000077da1fe: 4d897c2410                   mov      qword ptr [r12 + 0x10], r15
00000000077da203: 41804f2c08                   or       byte ptr [r15 + 0x2c], 8
00000000077da208: 4d8b6720                     mov      r12, qword ptr [r15 + 0x20]
00000000077da20c: 4d85e4                       test     r12, r12
00000000077da20f: 7519                         jne      0x77da22a
00000000077da211: bf20000000                   mov      edi, 0x20
00000000077da216: e8853be902                   call     0xa66dda0
00000000077da21b: 4989c4                       mov      r12, rax
00000000077da21e: 4889c7                       mov      rdi, rax
00000000077da221: e88a623c00                   call     0x7ba04b0
00000000077da226: 4d896720                     mov      qword ptr [r15 + 0x20], r12
00000000077da22a: 41804c241801                 or       byte ptr [r12 + 0x18], 1
00000000077da230: 41c744241001000000           mov      dword ptr [r12 + 0x10], 1
00000000077da239: 488b5da0                     mov      rbx, qword ptr [rbp - 0x60]
00000000077da23d: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000077da247: 48894310                     mov      qword ptr [rbx + 0x10], rax
00000000077da24b: 0f28054ef457f9               movaps   xmm0, xmmword ptr [rip - 0x6a80bb2]
00000000077da252: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077da255: 488b85d8fdffff               mov      rax, qword ptr [rbp - 0x228]
00000000077da25c: 488b00                       mov      rax, qword ptr [rax]
00000000077da25f: f60001                       test     byte ptr [rax], 1
00000000077da262: 7525                         jne      0x77da289
00000000077da264: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
00000000077da268: 48894b10                     mov      qword ptr [rbx + 0x10], rcx
00000000077da26c: 0f1000                       movups   xmm0, xmmword ptr [rax]
00000000077da26f: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077da272: 4c8bb528feffff               mov      r14, qword ptr [rbp - 0x1d8]
00000000077da279: 4c8bbd30feffff               mov      r15, qword ptr [rbp - 0x1d0]
00000000077da280: 4c8ba5f8feffff               mov      r12, qword ptr [rbp - 0x108]
00000000077da287: eb25                         jmp      0x77da2ae
00000000077da289: 488b5008                     mov      rdx, qword ptr [rax + 8]
00000000077da28d: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
00000000077da291: 4889df                       mov      rdi, rbx
00000000077da294: e80724d3fc                   call     0x450c6a0
00000000077da299: 4c8bb528feffff               mov      r14, qword ptr [rbp - 0x1d8]
00000000077da2a0: 4c8bbd30feffff               mov      r15, qword ptr [rbp - 0x1d0]
00000000077da2a7: 4c8ba5f8feffff               mov      r12, qword ptr [rbp - 0x108]
00000000077da2ae: 0fb603                       movzx    eax, byte ptr [rbx]
00000000077da2b1: a801                         test     al, 1
00000000077da2b3: 7406                         je       0x77da2bb
00000000077da2b5: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000077da2b9: eb02                         jmp      0x77da2bd
00000000077da2bb: d1e8                         shr      eax, 1
00000000077da2bd: 488b9df0feffff               mov      rbx, qword ptr [rbp - 0x110]
00000000077da2c4: 4885c0                       test     rax, rax
00000000077da2c7: 0f8586010000                 jne      0x77da453
00000000077da2cd: e80e2286fe                   call     0x603c4e0
00000000077da2d2: 4c89e7                       mov      rdi, r12
00000000077da2d5: 4889c6                       mov      rsi, rax
00000000077da2d8: e8b37986fe                   call     0x6041c90
00000000077da2dd: 488b7da0                     mov      rdi, qword ptr [rbp - 0x60]
00000000077da2e1: 4c89e6                       mov      rsi, r12
00000000077da2e4: e8c73ad3fc                   call     0x450ddb0
00000000077da2e9: 488d0554144f03               lea      rax, [rip + 0x34f1454]
00000000077da2f0: 8b10                         mov      edx, dword ptr [rax]
00000000077da2f2: 488d0547144f03               lea      rax, [rip + 0x34f1447]
00000000077da2f9: 8b08                         mov      ecx, dword ptr [rax]
00000000077da2fb: 89d0                         mov      eax, edx
00000000077da2fd: f7d0                         not      eax
00000000077da2ff: 0fafc2                       imul     eax, edx
00000000077da302: 83e001                       and      eax, 1
00000000077da305: 83f90a                       cmp      ecx, 0xa
00000000077da308: 7c36                         jl       0x77da340
00000000077da30a: 85c0                         test     eax, eax
00000000077da30c: 7432                         je       0x77da340
00000000077da30e: b801000000                   mov      eax, 1
00000000077da313: 41f6042401                   test     byte ptr [r12], 1
00000000077da318: 7426                         je       0x77da340
00000000077da31a: 498b7c2410                   mov      rdi, qword ptr [r12 + 0x10]
00000000077da31f: e81cfed2fc                   call     0x450a140
00000000077da324: 488d0519144f03               lea      rax, [rip + 0x34f1419]
00000000077da32b: 8b10                         mov      edx, dword ptr [rax]
00000000077da32d: 488d050c144f03               lea      rax, [rip + 0x34f140c]
00000000077da334: 8b08                         mov      ecx, dword ptr [rax]
00000000077da336: 89d0                         mov      eax, edx
00000000077da338: f7d0                         not      eax
00000000077da33a: 0fafc2                       imul     eax, edx
00000000077da33d: 83e001                       and      eax, 1
00000000077da340: 83f90a                       cmp      ecx, 0xa
00000000077da343: 0f8cc5000000                 jl       0x77da40e
00000000077da349: 85c0                         test     eax, eax
00000000077da34b: 0f85ef000000                 jne      0x77da440
00000000077da351: e9b8000000                   jmp      0x77da40e
00000000077da356: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077da35a: 488901                       mov      qword ptr [rcx], rax
00000000077da35d: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077da361: 8910                         mov      dword ptr [rax], edx
00000000077da363: 41f6042401                   test     byte ptr [r12], 1
00000000077da368: 0f8439250000                 je       0x77dc8a7
00000000077da36e: 488b85f8feffff               mov      rax, qword ptr [rbp - 0x108]
00000000077da375: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077da379: e8c2fdd2fc                   call     0x450a140
00000000077da37e: e924250000                   jmp      0x77dc8a7
00000000077da383: eb0a                         jmp      0x77da38f
00000000077da385: eb1e                         jmp      0x77da3a5
00000000077da387: eb06                         jmp      0x77da38f
00000000077da389: eb1a                         jmp      0x77da3a5
00000000077da38b: eb02                         jmp      0x77da38f
00000000077da38d: eb16                         jmp      0x77da3a5
00000000077da38f: 4889d3                       mov      rbx, rdx
00000000077da392: 4989c6                       mov      r14, rax
00000000077da395: 4c89e7                       mov      rdi, r12
00000000077da398: e8a3fdd2fc                   call     0x450a140
00000000077da39d: eb30                         jmp      0x77da3cf
00000000077da39f: eb04                         jmp      0x77da3a5
00000000077da3a1: eb02                         jmp      0x77da3a5
00000000077da3a3: eb00                         jmp      0x77da3a5
00000000077da3a5: 4889d3                       mov      rbx, rdx
00000000077da3a8: 4989c6                       mov      r14, rax
00000000077da3ab: 4c89ff                       mov      rdi, r15
00000000077da3ae: e88dfdd2fc                   call     0x450a140
00000000077da3b3: eb1a                         jmp      0x77da3cf
00000000077da3b5: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077da3b9: 488901                       mov      qword ptr [rcx], rax
00000000077da3bc: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077da3c0: 8910                         mov      dword ptr [rax], edx
00000000077da3c2: eb18                         jmp      0x77da3dc
00000000077da3c4: e977090000                   jmp      0x77dad40
00000000077da3c9: 4889d3                       mov      rbx, rdx
00000000077da3cc: 4989c6                       mov      r14, rax
00000000077da3cf: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077da3d3: 4c8930                       mov      qword ptr [rax], r14
00000000077da3d6: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077da3da: 8918                         mov      dword ptr [rax], ebx
00000000077da3dc: 488d0561134f03               lea      rax, [rip + 0x34f1361]
00000000077da3e3: 8b10                         mov      edx, dword ptr [rax]
00000000077da3e5: 488d0554134f03               lea      rax, [rip + 0x34f1354]
00000000077da3ec: 8b00                         mov      eax, dword ptr [rax]
00000000077da3ee: 89d1                         mov      ecx, edx
00000000077da3f0: f7d1                         not      ecx
00000000077da3f2: 0fafca                       imul     ecx, edx
00000000077da3f5: 83e101                       and      ecx, 1
00000000077da3f8: 83f80a                       cmp      eax, 0xa
00000000077da3fb: 0f8cfd240000                 jl       0x77dc8fe
00000000077da401: 85c9                         test     ecx, ecx
00000000077da403: 0f852c250000                 jne      0x77dc935
00000000077da409: e9f0240000                   jmp      0x77dc8fe
00000000077da40e: 41f6042401                   test     byte ptr [r12], 1
00000000077da413: 740a                         je       0x77da41f
00000000077da415: 498b7c2410                   mov      rdi, qword ptr [r12 + 0x10]
00000000077da41a: e821fdd2fc                   call     0x450a140
00000000077da41f: 488d051a134f03               lea      rax, [rip + 0x34f131a]
00000000077da426: 83380a                       cmp      dword ptr [rax], 0xa
00000000077da429: 7c28                         jl       0x77da453
00000000077da42b: 488d0512134f03               lea      rax, [rip + 0x34f1312]
00000000077da432: 8b00                         mov      eax, dword ptr [rax]
00000000077da434: 89c1                         mov      ecx, eax
00000000077da436: f7d1                         not      ecx
00000000077da438: 0fafc8                       imul     ecx, eax
00000000077da43b: 83e101                       and      ecx, 1
00000000077da43e: 7413                         je       0x77da453
00000000077da440: 41f6042401                   test     byte ptr [r12], 1
00000000077da445: 74c7                         je       0x77da40e
00000000077da447: 498b7c2410                   mov      rdi, qword ptr [r12 + 0x10]
00000000077da44c: e8effcd2fc                   call     0x450a140
00000000077da451: ebbb                         jmp      0x77da40e
00000000077da453: bf02000000                   mov      edi, 2
00000000077da458: e833c89301                   call     0x9116c90
00000000077da45d: 85c0                         test     eax, eax
00000000077da45f: 0f848a010000                 je       0x77da5ef
00000000077da465: 4889df                       mov      rdi, rbx
00000000077da468: e86385bdff                   call     0x73b29d0
00000000077da46d: f60301                       test     byte ptr [rbx], 1
00000000077da470: 7406                         je       0x77da478
00000000077da472: 488b5310                     mov      rdx, qword ptr [rbx + 0x10]
00000000077da476: eb04                         jmp      0x77da47c
00000000077da478: 488d5301                     lea      rdx, [rbx + 1]
00000000077da47c: 488d0d09697ff9               lea      rcx, [rip - 0x68096f7]
00000000077da483: 4c8d05137061f9               lea      r8, [rip - 0x69e8fed]
00000000077da48a: 4c89f7                       mov      rdi, r14
00000000077da48d: be02000000                   mov      esi, 2
00000000077da492: 41b94e050000                 mov      r9d, 0x54e
00000000077da498: 6a00                         push     0
00000000077da49a: 6a00                         push     0
00000000077da49c: e8ff709301                   call     0x91115a0
00000000077da4a1: 4883c410                     add      rsp, 0x10
00000000077da4a5: 488b7da0                     mov      rdi, qword ptr [rbp - 0x60]
00000000077da4a9: e8b25f7afd                   call     0x4f80460
00000000077da4ae: 49c70700000000               mov      qword ptr [r15], 0
00000000077da4b5: 498d4f07                     lea      rcx, [r15 + 7]
00000000077da4b9: ba07000000                   mov      edx, 7
00000000077da4be: becdcccccc                   mov      esi, 0xcccccccd
00000000077da4c3: 488d3d424f75f9               lea      rdi, [rip - 0x68ab0be] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000077da4ca: 660f1f440000                 nop      word ptr [rax + rax]
00000000077da4d0: 4189c0                       mov      r8d, eax
00000000077da4d3: 4c0fafc6                     imul     r8, rsi
00000000077da4d7: 49c1e823                     shr      r8, 0x23
00000000077da4db: 478d0c00                     lea      r9d, [r8 + r8]
00000000077da4df: 478d0c89                     lea      r9d, [r9 + r9*4]
00000000077da4e3: 41f7d9                       neg      r9d
00000000077da4e6: 4101c1                       add      r9d, eax
00000000077da4e9: 4183c123                     add      r9d, 0x23
00000000077da4ed: 450fb60c39                   movzx    r9d, byte ptr [r9 + rdi]
00000000077da4f2: 44884901                     mov      byte ptr [rcx + 1], r9b
00000000077da4f6: 48ffc1                       inc      rcx
00000000077da4f9: 48ffc2                       inc      rdx
00000000077da4fc: 83f809                       cmp      eax, 9
00000000077da4ff: 4489c0                       mov      eax, r8d
00000000077da502: 77cc                         ja       0x77da4d0
00000000077da504: 498d4708                     lea      rax, [r15 + 8]
00000000077da508: c6410100                     mov      byte ptr [rcx + 1], 0
00000000077da50c: 4883fa09                     cmp      rdx, 9
00000000077da510: 722b                         jb       0x77da53d
00000000077da512: 498d5709                     lea      rdx, [r15 + 9]
00000000077da516: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
00000000077da520: 0fb631                       movzx    esi, byte ptr [rcx]
00000000077da523: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
00000000077da527: 408839                       mov      byte ptr [rcx], dil
00000000077da52a: 48ffc9                       dec      rcx
00000000077da52d: 408872ff                     mov      byte ptr [rdx - 1], sil
00000000077da531: 488d7201                     lea      rsi, [rdx + 1]
00000000077da535: 4839ca                       cmp      rdx, rcx
00000000077da538: 4889f2                       mov      rdx, rsi
00000000077da53b: 72e3                         jb       0x77da520
00000000077da53d: 498907                       mov      qword ptr [r15], rax
00000000077da540: 4c89bd40feffff               mov      qword ptr [rbp - 0x1c0], r15
00000000077da547: 0f57c0                       xorps    xmm0, xmm0
00000000077da54a: 0f118548feffff               movups   xmmword ptr [rbp - 0x1b8], xmm0
00000000077da551: 0f118558feffff               movups   xmmword ptr [rbp - 0x1a8], xmm0
00000000077da558: 0f118568feffff               movups   xmmword ptr [rbp - 0x198], xmm0
00000000077da55f: 0f118578feffff               movups   xmmword ptr [rbp - 0x188], xmm0
00000000077da566: 0f118588feffff               movups   xmmword ptr [rbp - 0x178], xmm0
00000000077da56d: 0f118598feffff               movups   xmmword ptr [rbp - 0x168], xmm0
00000000077da574: 0f1185a8feffff               movups   xmmword ptr [rbp - 0x158], xmm0
00000000077da57b: 48c785b8feffff00000000       mov      qword ptr [rbp - 0x148], 0
00000000077da586: 488d35c8c683f9               lea      rsi, [rip - 0x67c3938]
00000000077da58d: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077da594: 4c89f7                       mov      rdi, r14
00000000077da597: e854739301                   call     0x91118f0
00000000077da59c: 0f1f4000                     nop      dword ptr [rax]
00000000077da5a0: 4c89f7                       mov      rdi, r14
00000000077da5a3: e888709301                   call     0x9111630
00000000077da5a8: f60301                       test     byte ptr [rbx], 1
00000000077da5ab: 7409                         je       0x77da5b6
00000000077da5ad: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077da5b1: e88afbd2fc                   call     0x450a140
00000000077da5b6: 488d0583114f03               lea      rax, [rip + 0x34f1183]
00000000077da5bd: 83380a                       cmp      dword ptr [rax], 0xa
00000000077da5c0: 7c2d                         jl       0x77da5ef
00000000077da5c2: 488d057b114f03               lea      rax, [rip + 0x34f117b]
00000000077da5c9: 8b00                         mov      eax, dword ptr [rax]
00000000077da5cb: 89c1                         mov      ecx, eax
00000000077da5cd: f7d1                         not      ecx
00000000077da5cf: 0fafc8                       imul     ecx, eax
00000000077da5d2: 83e101                       and      ecx, 1
00000000077da5d5: 7418                         je       0x77da5ef
00000000077da5d7: 4c89f7                       mov      rdi, r14
00000000077da5da: e851709301                   call     0x9111630
00000000077da5df: f60301                       test     byte ptr [rbx], 1
00000000077da5e2: 74bc                         je       0x77da5a0
00000000077da5e4: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077da5e8: e853fbd2fc                   call     0x450a140
00000000077da5ed: ebb1                         jmp      0x77da5a0
00000000077da5ef: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da5f3: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077da5f7: 488b5810                     mov      rbx, qword ptr [rax + 0x10]
00000000077da5fb: 4885db                       test     rbx, rbx
00000000077da5fe: 751d                         jne      0x77da61d
00000000077da600: bfa8000000                   mov      edi, 0xa8
00000000077da605: e89637e902                   call     0xa66dda0
00000000077da60a: 4889c3                       mov      rbx, rax
00000000077da60d: 4889c7                       mov      rdi, rax
00000000077da610: e8ab235000                   call     0x7cdc9c0
00000000077da615: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da619: 48895810                     mov      qword ptr [rax + 0x10], rbx
00000000077da61d: 808ba000000004               or       byte ptr [rbx + 0xa0], 4
00000000077da624: 4c8b7b18                     mov      r15, qword ptr [rbx + 0x18]
00000000077da628: 4d85ff                       test     r15, r15
00000000077da62b: 7519                         jne      0x77da646
00000000077da62d: bf20000000                   mov      edi, 0x20
00000000077da632: e86937e902                   call     0xa66dda0
00000000077da637: 4989c7                       mov      r15, rax
00000000077da63a: 4889c7                       mov      rdi, rax
00000000077da63d: e86e5e3c00                   call     0x7ba04b0
00000000077da642: 4c897b18                     mov      qword ptr [rbx + 0x18], r15
00000000077da646: 41804f1802                   or       byte ptr [r15 + 0x18], 2
00000000077da64b: 498b7f08                     mov      rdi, qword ptr [r15 + 8]
00000000077da64f: 483b3daa8e3103               cmp      rdi, qword ptr [rip + 0x3318eaa] ; reloc 0xad176f0
00000000077da656: 751f                         jne      0x77da677
00000000077da658: bf18000000                   mov      edi, 0x18
00000000077da65d: e83e37e902                   call     0xa66dda0
00000000077da662: 4889c7                       mov      rdi, rax
00000000077da665: 0f57c0                       xorps    xmm0, xmm0
00000000077da668: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077da66b: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077da673: 49894708                     mov      qword ptr [r15 + 8], rax
00000000077da677: 488b75a0                     mov      rsi, qword ptr [rbp - 0x60]
00000000077da67b: e83037d3fc                   call     0x450ddb0
00000000077da680: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da684: 80481c02                     or       byte ptr [rax + 0x1c], 2
00000000077da688: 488b5810                     mov      rbx, qword ptr [rax + 0x10]
00000000077da68c: 4885db                       test     rbx, rbx
00000000077da68f: 751d                         jne      0x77da6ae
00000000077da691: bfa8000000                   mov      edi, 0xa8
00000000077da696: e80537e902                   call     0xa66dda0
00000000077da69b: 4889c3                       mov      rbx, rax
00000000077da69e: 4889c7                       mov      rdi, rax
00000000077da6a1: e81a235000                   call     0x7cdc9c0
00000000077da6a6: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da6aa: 48895810                     mov      qword ptr [rax + 0x10], rbx
00000000077da6ae: 808ba000000004               or       byte ptr [rbx + 0xa0], 4
00000000077da6b5: 4c8b7b18                     mov      r15, qword ptr [rbx + 0x18]
00000000077da6b9: 4d85ff                       test     r15, r15
00000000077da6bc: 7519                         jne      0x77da6d7
00000000077da6be: bf20000000                   mov      edi, 0x20
00000000077da6c3: e8d836e902                   call     0xa66dda0
00000000077da6c8: 4989c7                       mov      r15, rax
00000000077da6cb: 4889c7                       mov      rdi, rax
00000000077da6ce: e8dd5d3c00                   call     0x7ba04b0
00000000077da6d3: 4c897b18                     mov      qword ptr [rbx + 0x18], r15
00000000077da6d7: 488b4da0                     mov      rcx, qword ptr [rbp - 0x60]
00000000077da6db: 0fb601                       movzx    eax, byte ptr [rcx]
00000000077da6de: a801                         test     al, 1
00000000077da6e0: 7405                         je       0x77da6e7
00000000077da6e2: 8b4108                       mov      eax, dword ptr [rcx + 8]
00000000077da6e5: eb02                         jmp      0x77da6e9
00000000077da6e7: d1e8                         shr      eax, 1
00000000077da6e9: 41834f1801                   or       dword ptr [r15 + 0x18], 1
00000000077da6ee: 41894710                     mov      dword ptr [r15 + 0x10], eax
00000000077da6f2: 488b9d18ffffff               mov      rbx, qword ptr [rbp - 0xe8]
00000000077da6f9: 0f2805a0ef57f9               movaps   xmm0, xmmword ptr [rip - 0x6a81060]
00000000077da700: 0f114310                     movups   xmmword ptr [rbx + 0x10], xmm0
00000000077da704: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077da707: 4889df                       mov      rdi, rbx
00000000077da70a: e8411c5000                   call     0x7cdc350
00000000077da70f: 4889df                       mov      rdi, rbx
00000000077da712: 488b75a0                     mov      rsi, qword ptr [rbp - 0x60]
00000000077da716: e8e5577701                   call     0x8f4ff00
00000000077da71b: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077da71f: 48b9aaaaaaaaaaaaaaaa         movabs   rcx, 0xaaaaaaaaaaaaaaaa
00000000077da729: 48894810                     mov      qword ptr [rax + 0x10], rcx
00000000077da72d: 0f28056cef57f9               movaps   xmm0, xmmword ptr [rip - 0x6a81094]
00000000077da734: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077da737: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000077da73b: 4885c0                       test     rax, rax
00000000077da73e: 750e                         jne      0x77da74e
00000000077da740: 488d0559165203               lea      rax, [rip + 0x3521659]
00000000077da747: 488b00                       mov      rax, qword ptr [rax]
00000000077da74a: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077da74e: 488b4008                     mov      rax, qword ptr [rax + 8]
00000000077da752: f60001                       test     byte ptr [rax], 1
00000000077da755: 7514                         jne      0x77da76b
00000000077da757: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
00000000077da75b: 488b55b8                     mov      rdx, qword ptr [rbp - 0x48]
00000000077da75f: 48894a10                     mov      qword ptr [rdx + 0x10], rcx
00000000077da763: 0f1000                       movups   xmm0, xmmword ptr [rax]
00000000077da766: 0f1102                       movups   xmmword ptr [rdx], xmm0
00000000077da769: eb11                         jmp      0x77da77c
00000000077da76b: 488b5008                     mov      rdx, qword ptr [rax + 8]
00000000077da76f: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
00000000077da773: 488b7db8                     mov      rdi, qword ptr [rbp - 0x48]
00000000077da777: e8241fd3fc                   call     0x450c6a0
00000000077da77c: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da780: 80481c01                     or       byte ptr [rax + 0x1c], 1
00000000077da784: 4c8b7808                     mov      r15, qword ptr [rax + 8]
00000000077da788: 4d85ff                       test     r15, r15
00000000077da78b: 751d                         jne      0x77da7aa
00000000077da78d: bf20000000                   mov      edi, 0x20
00000000077da792: e80936e902                   call     0xa66dda0
00000000077da797: 4989c7                       mov      r15, rax
00000000077da79a: 4889c7                       mov      rdi, rax
00000000077da79d: e81e155000                   call     0x7cdbcc0
00000000077da7a2: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da7a6: 4c897808                     mov      qword ptr [rax + 8], r15
00000000077da7aa: 41804f1c01                   or       byte ptr [r15 + 0x1c], 1
00000000077da7af: 4d8b6708                     mov      r12, qword ptr [r15 + 8]
00000000077da7b3: 4d85e4                       test     r12, r12
00000000077da7b6: 7519                         jne      0x77da7d1
00000000077da7b8: bf20000000                   mov      edi, 0x20
00000000077da7bd: e8de35e902                   call     0xa66dda0
00000000077da7c2: 4989c4                       mov      r12, rax
00000000077da7c5: 4889c7                       mov      rdi, rax
00000000077da7c8: e8e35c3c00                   call     0x7ba04b0
00000000077da7cd: 4d896708                     mov      qword ptr [r15 + 8], r12
00000000077da7d1: 41804c241802                 or       byte ptr [r12 + 0x18], 2
00000000077da7d7: 498b7c2408                   mov      rdi, qword ptr [r12 + 8]
00000000077da7dc: 483b3d1d8d3103               cmp      rdi, qword ptr [rip + 0x3318d1d] ; reloc 0xad176f0
00000000077da7e3: 7520                         jne      0x77da805
00000000077da7e5: bf18000000                   mov      edi, 0x18
00000000077da7ea: e8b135e902                   call     0xa66dda0
00000000077da7ef: 4889c7                       mov      rdi, rax
00000000077da7f2: 0f57c0                       xorps    xmm0, xmm0
00000000077da7f5: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077da7f8: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077da800: 4989442408                   mov      qword ptr [r12 + 8], rax
00000000077da805: 488b75b8                     mov      rsi, qword ptr [rbp - 0x48]
00000000077da809: e8a235d3fc                   call     0x450ddb0
00000000077da80e: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da812: 80481c01                     or       byte ptr [rax + 0x1c], 1
00000000077da816: 4c8b7808                     mov      r15, qword ptr [rax + 8]
00000000077da81a: 4d85ff                       test     r15, r15
00000000077da81d: 751d                         jne      0x77da83c
00000000077da81f: bf20000000                   mov      edi, 0x20
00000000077da824: e87735e902                   call     0xa66dda0
00000000077da829: 4989c7                       mov      r15, rax
00000000077da82c: 4889c7                       mov      rdi, rax
00000000077da82f: e88c145000                   call     0x7cdbcc0
00000000077da834: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da838: 4c897808                     mov      qword ptr [rax + 8], r15
00000000077da83c: 41804f1c01                   or       byte ptr [r15 + 0x1c], 1
00000000077da841: 4d8b6708                     mov      r12, qword ptr [r15 + 8]
00000000077da845: 4d85e4                       test     r12, r12
00000000077da848: 7519                         jne      0x77da863
00000000077da84a: bf20000000                   mov      edi, 0x20
00000000077da84f: e84c35e902                   call     0xa66dda0
00000000077da854: 4989c4                       mov      r12, rax
00000000077da857: 4889c7                       mov      rdi, rax
00000000077da85a: e8515c3c00                   call     0x7ba04b0
00000000077da85f: 4d896708                     mov      qword ptr [r15 + 8], r12
00000000077da863: 488b4db8                     mov      rcx, qword ptr [rbp - 0x48]
00000000077da867: 0fb601                       movzx    eax, byte ptr [rcx]
00000000077da86a: a801                         test     al, 1
00000000077da86c: 7405                         je       0x77da873
00000000077da86e: 8b4108                       mov      eax, dword ptr [rcx + 8]
00000000077da871: eb02                         jmp      0x77da875
00000000077da873: d1e8                         shr      eax, 1
00000000077da875: 41834c241801                 or       dword ptr [r12 + 0x18], 1
00000000077da87b: 4189442410                   mov      dword ptr [r12 + 0x10], eax
00000000077da880: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da884: 80481c01                     or       byte ptr [rax + 0x1c], 1
00000000077da888: 4c8b7808                     mov      r15, qword ptr [rax + 8]
00000000077da88c: 4d85ff                       test     r15, r15
00000000077da88f: 751d                         jne      0x77da8ae
00000000077da891: bf20000000                   mov      edi, 0x20
00000000077da896: e80535e902                   call     0xa66dda0
00000000077da89b: 4989c7                       mov      r15, rax
00000000077da89e: 4889c7                       mov      rdi, rax
00000000077da8a1: e81a145000                   call     0x7cdbcc0
00000000077da8a6: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da8aa: 4c897808                     mov      qword ptr [rax + 8], r15
00000000077da8ae: 41804f1c02                   or       byte ptr [r15 + 0x1c], 2
00000000077da8b3: 4d8b6710                     mov      r12, qword ptr [r15 + 0x10]
00000000077da8b7: 4d85e4                       test     r12, r12
00000000077da8ba: 7519                         jne      0x77da8d5
00000000077da8bc: bf20000000                   mov      edi, 0x20
00000000077da8c1: e8da34e902                   call     0xa66dda0
00000000077da8c6: 4989c4                       mov      r12, rax
00000000077da8c9: 4889c7                       mov      rdi, rax
00000000077da8cc: e81f653c00                   call     0x7ba0df0
00000000077da8d1: 4d896710                     mov      qword ptr [r15 + 0x10], r12
00000000077da8d5: 41804c241801                 or       byte ptr [r12 + 0x18], 1
00000000077da8db: 41c7442410c9020000           mov      dword ptr [r12 + 0x10], 0x2c9
00000000077da8e4: 488b85e8fdffff               mov      rax, qword ptr [rbp - 0x218]
00000000077da8eb: 488b18                       mov      rbx, qword ptr [rax]
00000000077da8ee: 488b85f0fdffff               mov      rax, qword ptr [rbp - 0x210]
00000000077da8f5: 488b10                       mov      rdx, qword ptr [rax]
00000000077da8f8: bfc9020000                   mov      edi, 0x2c9
00000000077da8fd: 4889de                       mov      rsi, rbx
00000000077da900: e82b0a3401                   call     0x8b1b330
00000000077da905: 4c8bb5e0fdffff               mov      r14, qword ptr [rbp - 0x220]
00000000077da90c: 85c0                         test     eax, eax
00000000077da90e: 0f8e8f000000                 jle      0x77da9a3
00000000077da914: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da918: 80481c01                     or       byte ptr [rax + 0x1c], 1
00000000077da91c: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077da920: 4d85f6                       test     r14, r14
00000000077da923: 751d                         jne      0x77da942
00000000077da925: bf20000000                   mov      edi, 0x20
00000000077da92a: e87134e902                   call     0xa66dda0
00000000077da92f: 4989c6                       mov      r14, rax
00000000077da932: 4889c7                       mov      rdi, rax
00000000077da935: e886135000                   call     0x7cdbcc0
00000000077da93a: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077da93e: 4c897008                     mov      qword ptr [rax + 8], r14
00000000077da942: 41804e1c02                   or       byte ptr [r14 + 0x1c], 2
00000000077da947: 4d8b7e10                     mov      r15, qword ptr [r14 + 0x10]
00000000077da94b: 4d85ff                       test     r15, r15
00000000077da94e: 7519                         jne      0x77da969
00000000077da950: bf20000000                   mov      edi, 0x20
00000000077da955: e84634e902                   call     0xa66dda0
00000000077da95a: 4989c7                       mov      r15, rax
00000000077da95d: 4889c7                       mov      rdi, rax
00000000077da960: e88b643c00                   call     0x7ba0df0
00000000077da965: 4d897e10                     mov      qword ptr [r14 + 0x10], r15
00000000077da969: 41804f1802                   or       byte ptr [r15 + 0x18], 2
00000000077da96e: 4d8b7708                     mov      r14, qword ptr [r15 + 8]
00000000077da972: 4d85f6                       test     r14, r14
00000000077da975: 7519                         jne      0x77da990
00000000077da977: bf20000000                   mov      edi, 0x20
00000000077da97c: e81f34e902                   call     0xa66dda0
00000000077da981: 4989c6                       mov      r14, rax
00000000077da984: 4889c7                       mov      rdi, rax
00000000077da987: e8245b3c00                   call     0x7ba04b0
00000000077da98c: 4d897708                     mov      qword ptr [r15 + 8], r14
00000000077da990: 440fb63b                     movzx    r15d, byte ptr [rbx]
00000000077da994: 41f6c701                     test     r15b, 1
00000000077da998: 753c                         jne      0x77da9d6
00000000077da99a: 4c8d6301                     lea      r12, [rbx + 1]
00000000077da99e: 41d1ef                       shr      r15d, 1
00000000077da9a1: eb3b                         jmp      0x77da9de
00000000077da9a3: bf02000000                   mov      edi, 2
00000000077da9a8: e8e3c29301                   call     0x9116c90
00000000077da9ad: 85c0                         test     eax, eax
00000000077da9af: 0f8496010000                 je       0x77dab4b
00000000077da9b5: 488b9d30ffffff               mov      rbx, qword ptr [rbp - 0xd0]
00000000077da9bc: 4889df                       mov      rdi, rbx
00000000077da9bf: e80c80bdff                   call     0x73b29d0
00000000077da9c4: f60301                       test     byte ptr [rbx], 1
00000000077da9c7: 0f849c010000                 je       0x77dab69
00000000077da9cd: 488b5310                     mov      rdx, qword ptr [rbx + 0x10]
00000000077da9d1: e997010000                   jmp      0x77dab6d
00000000077da9d6: 4c8b7b08                     mov      r15, qword ptr [rbx + 8]
00000000077da9da: 4c8b6310                     mov      r12, qword ptr [rbx + 0x10]
00000000077da9de: 41804e1802                   or       byte ptr [r14 + 0x18], 2
00000000077da9e3: 498b7e08                     mov      rdi, qword ptr [r14 + 8]
00000000077da9e7: 483b3d128b3103               cmp      rdi, qword ptr [rip + 0x3318b12] ; reloc 0xad176f0
00000000077da9ee: 751f                         jne      0x77daa0f
00000000077da9f0: bf18000000                   mov      edi, 0x18
00000000077da9f5: e8a633e902                   call     0xa66dda0
00000000077da9fa: 4889c7                       mov      rdi, rax
00000000077da9fd: 0f57c0                       xorps    xmm0, xmm0
00000000077daa00: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077daa03: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077daa0b: 49894608                     mov      qword ptr [r14 + 8], rax
00000000077daa0f: 4c89e6                       mov      rsi, r12
00000000077daa12: 4c89fa                       mov      rdx, r15
00000000077daa15: e8e624d3fc                   call     0x450cf00
00000000077daa1a: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077daa1e: 80481c01                     or       byte ptr [rax + 0x1c], 1
00000000077daa22: 4c8b7808                     mov      r15, qword ptr [rax + 8]
00000000077daa26: 4d85ff                       test     r15, r15
00000000077daa29: 751d                         jne      0x77daa48
00000000077daa2b: bf20000000                   mov      edi, 0x20
00000000077daa30: e86b33e902                   call     0xa66dda0
00000000077daa35: 4989c7                       mov      r15, rax
00000000077daa38: 4889c7                       mov      rdi, rax
00000000077daa3b: e880125000                   call     0x7cdbcc0
00000000077daa40: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077daa44: 4c897808                     mov      qword ptr [rax + 8], r15
00000000077daa48: 488d05f50c4f03               lea      rax, [rip + 0x34f0cf5]
00000000077daa4f: 8b10                         mov      edx, dword ptr [rax]
00000000077daa51: 488d05e80c4f03               lea      rax, [rip + 0x34f0ce8]
00000000077daa58: 8b00                         mov      eax, dword ptr [rax]
00000000077daa5a: 41834f1c02                   or       dword ptr [r15 + 0x1c], 2
00000000077daa5f: 4d8b7710                     mov      r14, qword ptr [r15 + 0x10]
00000000077daa63: 4d85f6                       test     r14, r14
00000000077daa66: 752b                         jne      0x77daa93
00000000077daa68: bf20000000                   mov      edi, 0x20
00000000077daa6d: e82e33e902                   call     0xa66dda0
00000000077daa72: 4989c6                       mov      r14, rax
00000000077daa75: 4889c7                       mov      rdi, rax
00000000077daa78: e873633c00                   call     0x7ba0df0
00000000077daa7d: 4d897710                     mov      qword ptr [r15 + 0x10], r14
00000000077daa81: 488d05bc0c4f03               lea      rax, [rip + 0x34f0cbc]
00000000077daa88: 8b10                         mov      edx, dword ptr [rax]
00000000077daa8a: 488d05af0c4f03               lea      rax, [rip + 0x34f0caf]
00000000077daa91: 8b00                         mov      eax, dword ptr [rax]
00000000077daa93: 89d1                         mov      ecx, edx
00000000077daa95: f7d1                         not      ecx
00000000077daa97: 0fafca                       imul     ecx, edx
00000000077daa9a: 83e101                       and      ecx, 1
00000000077daa9d: 41804e1802                   or       byte ptr [r14 + 0x18], 2
00000000077daaa2: 4d8b7e08                     mov      r15, qword ptr [r14 + 8]
00000000077daaa6: 4d85ff                       test     r15, r15
00000000077daaa9: 7535                         jne      0x77daae0
00000000077daaab: bf20000000                   mov      edi, 0x20
00000000077daab0: e8eb32e902                   call     0xa66dda0
00000000077daab5: 4989c7                       mov      r15, rax
00000000077daab8: 4889c7                       mov      rdi, rax
00000000077daabb: e8f0593c00                   call     0x7ba04b0
00000000077daac0: 4d897e08                     mov      qword ptr [r14 + 8], r15
00000000077daac4: 488d05790c4f03               lea      rax, [rip + 0x34f0c79]
00000000077daacb: 8b10                         mov      edx, dword ptr [rax]
00000000077daacd: 488d056c0c4f03               lea      rax, [rip + 0x34f0c6c]
00000000077daad4: 8b00                         mov      eax, dword ptr [rax]
00000000077daad6: 89d1                         mov      ecx, edx
00000000077daad8: f7d1                         not      ecx
00000000077daada: 0fafca                       imul     ecx, edx
00000000077daadd: 83e101                       and      ecx, 1
00000000077daae0: 85c9                         test     ecx, ecx
00000000077daae2: 400f94c6                     sete     sil
00000000077daae6: 83f80a                       cmp      eax, 0xa
00000000077daae9: 0f9cc2                       setl     dl
00000000077daaec: 4008f2                       or       dl, sil
00000000077daaef: 0fb633                       movzx    esi, byte ptr [rbx]
00000000077daaf2: 89f7                         mov      edi, esi
00000000077daaf4: d1ef                         shr      edi, 1
00000000077daaf6: eb0c                         jmp      0x77dab04
00000000077daaf8: 0f1f840000000000             nop      dword ptr [rax + rax]
00000000077dab00: 84d2                         test     dl, dl
00000000077dab02: 750f                         jne      0x77dab13
00000000077dab04: 4989f8                       mov      r8, rdi
00000000077dab07: 40f6c601                     test     sil, 1
00000000077dab0b: 74f3                         je       0x77dab00
00000000077dab0d: 4c8b4308                     mov      r8, qword ptr [rbx + 8]
00000000077dab11: ebed                         jmp      0x77dab00
00000000077dab13: 41804f1801                   or       byte ptr [r15 + 0x18], 1
00000000077dab18: 45894710                     mov      dword ptr [r15 + 0x10], r8d
00000000077dab1c: 85c9                         test     ecx, ecx
00000000077dab1e: 0f94c1                       sete     cl
00000000077dab21: 83f80a                       cmp      eax, 0xa
00000000077dab24: 0f9cc0                       setl     al
00000000077dab27: 08c8                         or       al, cl
00000000077dab29: 3c01                         cmp      al, 1
00000000077dab2b: 488b9d70ffffff               mov      rbx, qword ptr [rbp - 0x90]
00000000077dab32: 0f845b030000                 je       0x77dae93
00000000077dab38: 0f57c0                       xorps    xmm0, xmm0
00000000077dab3b: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077dab3e: 48c7431000000000             mov      qword ptr [rbx + 0x10], 0
00000000077dab46: e95a030000                   jmp      0x77daea5
00000000077dab4b: 488d05f20b4f03               lea      rax, [rip + 0x34f0bf2]
00000000077dab52: 8b10                         mov      edx, dword ptr [rax]
00000000077dab54: 488d05e50b4f03               lea      rax, [rip + 0x34f0be5]
00000000077dab5b: 8b00                         mov      eax, dword ptr [rax]
00000000077dab5d: 89d1                         mov      ecx, edx
00000000077dab5f: f7d1                         not      ecx
00000000077dab61: 0fafca                       imul     ecx, edx
00000000077dab64: 83e101                       and      ecx, 1
00000000077dab67: ebb3                         jmp      0x77dab1c
00000000077dab69: 488d5301                     lea      rdx, [rbx + 1]
00000000077dab6d: 488d0d18627ff9               lea      rcx, [rip - 0x6809de8]
00000000077dab74: 4c8d05226961f9               lea      r8, [rip - 0x69e96de]
00000000077dab7b: 4c89f7                       mov      rdi, r14
00000000077dab7e: be02000000                   mov      esi, 2
00000000077dab83: 41b961050000                 mov      r9d, 0x561
00000000077dab89: 6a00                         push     0
00000000077dab8b: 6a00                         push     0
00000000077dab8d: e80e6a9301                   call     0x91115a0
00000000077dab92: 4883c410                     add      rsp, 0x10
00000000077dab96: 0f57c0                       xorps    xmm0, xmm0
00000000077dab99: 0f2985b0feffff               movaps   xmmword ptr [rbp - 0x150], xmm0
00000000077daba0: 0f2985a0feffff               movaps   xmmword ptr [rbp - 0x160], xmm0
00000000077daba7: 0f298590feffff               movaps   xmmword ptr [rbp - 0x170], xmm0
00000000077dabae: 0f298580feffff               movaps   xmmword ptr [rbp - 0x180], xmm0
00000000077dabb5: 0f298570feffff               movaps   xmmword ptr [rbp - 0x190], xmm0
00000000077dabbc: 0f298560feffff               movaps   xmmword ptr [rbp - 0x1a0], xmm0
00000000077dabc3: 0f298550feffff               movaps   xmmword ptr [rbp - 0x1b0], xmm0
00000000077dabca: 0f298540feffff               movaps   xmmword ptr [rbp - 0x1c0], xmm0
00000000077dabd1: 488d358b056ff9               lea      rsi, [rip - 0x690fa75]
00000000077dabd8: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077dabdf: 4c89f7                       mov      rdi, r14
00000000077dabe2: e8096d9301                   call     0x91118f0
00000000077dabe7: 488d05520b4f03               lea      rax, [rip + 0x34f0b52]
00000000077dabee: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dabf1: 0f8c41020000                 jl       0x77dae38
00000000077dabf7: 488d05460b4f03               lea      rax, [rip + 0x34f0b46]
00000000077dabfe: 8b00                         mov      eax, dword ptr [rax]
00000000077dac00: 89c1                         mov      ecx, eax
00000000077dac02: f7d1                         not      ecx
00000000077dac04: 0fafc8                       imul     ecx, eax
00000000077dac07: 83e101                       and      ecx, 1
00000000077dac0a: 0f856b020000                 jne      0x77dae7b
00000000077dac10: e923020000                   jmp      0x77dae38
00000000077dac15: eb58                         jmp      0x77dac6f
00000000077dac17: eb7b                         jmp      0x77dac94
00000000077dac19: eb54                         jmp      0x77dac6f
00000000077dac1b: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dac1f: 488901                       mov      qword ptr [rcx], rax
00000000077dac22: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dac26: 8910                         mov      dword ptr [rax], edx
00000000077dac28: 4c89f7                       mov      rdi, r14
00000000077dac2b: e8006a9301                   call     0x9111630
00000000077dac30: eb0f                         jmp      0x77dac41
00000000077dac32: eb60                         jmp      0x77dac94
00000000077dac34: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dac38: 488901                       mov      qword ptr [rcx], rax
00000000077dac3b: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dac3f: 8910                         mov      dword ptr [rax], edx
00000000077dac41: 488d05f80a4f03               lea      rax, [rip + 0x34f0af8]
00000000077dac48: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dac4b: 0f8c7f040000                 jl       0x77db0d0
00000000077dac51: 488d05ec0a4f03               lea      rax, [rip + 0x34f0aec]
00000000077dac58: 8b00                         mov      eax, dword ptr [rax]
00000000077dac5a: 89c1                         mov      ecx, eax
00000000077dac5c: f7d1                         not      ecx
00000000077dac5e: 0fafc8                       imul     ecx, eax
00000000077dac61: 83e101                       and      ecx, 1
00000000077dac64: 0f85af040000                 jne      0x77db119
00000000077dac6a: e961040000                   jmp      0x77db0d0
00000000077dac6f: 4889d3                       mov      rbx, rdx
00000000077dac72: 4989c4                       mov      r12, rax
00000000077dac75: 4c89ff                       mov      rdi, r15
00000000077dac78: e8c3f4d2fc                   call     0x450a140
00000000077dac7d: e928010000                   jmp      0x77dadaa
00000000077dac82: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dac86: 488901                       mov      qword ptr [rcx], rax
00000000077dac89: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dac8d: 8910                         mov      dword ptr [rax], edx
00000000077dac8f: e923010000                   jmp      0x77dadb7
00000000077dac94: 4889d3                       mov      rbx, rdx
00000000077dac97: 4989c4                       mov      r12, rax
00000000077dac9a: 4c89f7                       mov      rdi, r14
00000000077dac9d: e89ef4d2fc                   call     0x450a140
00000000077daca2: e903010000                   jmp      0x77dadaa
00000000077daca7: eb06                         jmp      0x77dacaf
00000000077daca9: eb17                         jmp      0x77dacc2
00000000077dacab: eb02                         jmp      0x77dacaf
00000000077dacad: eb13                         jmp      0x77dacc2
00000000077dacaf: 4889d3                       mov      rbx, rdx
00000000077dacb2: 4989c6                       mov      r14, rax
00000000077dacb5: 4c89e7                       mov      rdi, r12
00000000077dacb8: e883f4d2fc                   call     0x450a140
00000000077dacbd: e9d9000000                   jmp      0x77dad9b
00000000077dacc2: 4889d3                       mov      rbx, rdx
00000000077dacc5: 4989c6                       mov      r14, rax
00000000077dacc8: 4c89ff                       mov      rdi, r15
00000000077daccb: e870f4d2fc                   call     0x450a140
00000000077dacd0: e9c6000000                   jmp      0x77dad9b
00000000077dacd5: eb02                         jmp      0x77dacd9
00000000077dacd7: eb13                         jmp      0x77dacec
00000000077dacd9: 4989d6                       mov      r14, rdx
00000000077dacdc: 4989c4                       mov      r12, rax
00000000077dacdf: 4c89ff                       mov      rdi, r15
00000000077dace2: e859f4d2fc                   call     0x450a140
00000000077dace7: e9f2000000                   jmp      0x77dadde
00000000077dacec: 4989d6                       mov      r14, rdx
00000000077dacef: 4989c4                       mov      r12, rax
00000000077dacf2: 4889df                       mov      rdi, rbx
00000000077dacf5: e846f4d2fc                   call     0x450a140
00000000077dacfa: e9df000000                   jmp      0x77dadde
00000000077dacff: eb11                         jmp      0x77dad12
00000000077dad01: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dad05: 488901                       mov      qword ptr [rcx], rax
00000000077dad08: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dad0c: 8910                         mov      dword ptr [rax], edx
00000000077dad0e: eb57                         jmp      0x77dad67
00000000077dad10: eb2e                         jmp      0x77dad40
00000000077dad12: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dad16: 488901                       mov      qword ptr [rcx], rax
00000000077dad19: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dad1d: 8910                         mov      dword ptr [rax], edx
00000000077dad1f: 488d051e0a4f03               lea      rax, [rip + 0x34f0a1e]
00000000077dad26: 8b10                         mov      edx, dword ptr [rax]
00000000077dad28: 488d05110a4f03               lea      rax, [rip + 0x34f0a11]
00000000077dad2f: 8b08                         mov      ecx, dword ptr [rax]
00000000077dad31: 89d0                         mov      eax, edx
00000000077dad33: f7d0                         not      eax
00000000077dad35: 0fafc2                       imul     eax, edx
00000000077dad38: 83e001                       and      eax, 1
00000000077dad3b: e9231b0000                   jmp      0x77dc863
00000000077dad40: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dad44: 488901                       mov      qword ptr [rcx], rax
00000000077dad47: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dad4b: 8910                         mov      dword ptr [rax], edx
00000000077dad4d: e9551b0000                   jmp      0x77dc8a7
00000000077dad52: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dad56: 488901                       mov      qword ptr [rcx], rax
00000000077dad59: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dad5d: 8910                         mov      dword ptr [rax], edx
00000000077dad5f: 4c89f7                       mov      rdi, r14
00000000077dad62: e8c9689301                   call     0x9111630
00000000077dad67: 488d05d2094f03               lea      rax, [rip + 0x34f09d2]
00000000077dad6e: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dad71: 488b9df0feffff               mov      rbx, qword ptr [rbp - 0x110]
00000000077dad78: 7c77                         jl       0x77dadf1
00000000077dad7a: 488d05c3094f03               lea      rax, [rip + 0x34f09c3]
00000000077dad81: 8b00                         mov      eax, dword ptr [rax]
00000000077dad83: 89c1                         mov      ecx, eax
00000000077dad85: f7d1                         not      ecx
00000000077dad87: 0fafc8                       imul     ecx, eax
00000000077dad8a: 83e101                       and      ecx, 1
00000000077dad8d: 0f8595000000                 jne      0x77dae28
00000000077dad93: eb5c                         jmp      0x77dadf1
00000000077dad95: 4889d3                       mov      rbx, rdx
00000000077dad98: 4989c6                       mov      r14, rax
00000000077dad9b: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077dad9f: 4c8930                       mov      qword ptr [rax], r14
00000000077dada2: eb0d                         jmp      0x77dadb1
00000000077dada4: 4889d3                       mov      rbx, rdx
00000000077dada7: 4989c4                       mov      r12, rax
00000000077dadaa: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077dadae: 4c8920                       mov      qword ptr [rax], r12
00000000077dadb1: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dadb5: 8918                         mov      dword ptr [rax], ebx
00000000077dadb7: 488d0586094f03               lea      rax, [rip + 0x34f0986]
00000000077dadbe: 8b10                         mov      edx, dword ptr [rax]
00000000077dadc0: 488d0579094f03               lea      rax, [rip + 0x34f0979]
00000000077dadc7: 8b00                         mov      eax, dword ptr [rax]
00000000077dadc9: 89d1                         mov      ecx, edx
00000000077dadcb: f7d1                         not      ecx
00000000077dadcd: 0fafca                       imul     ecx, edx
00000000077dadd0: 83e101                       and      ecx, 1
00000000077dadd3: e9331a0000                   jmp      0x77dc80b
00000000077dadd8: 4989d6                       mov      r14, rdx
00000000077daddb: 4989c4                       mov      r12, rax
00000000077dadde: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077dade2: 4c8920                       mov      qword ptr [rax], r12
00000000077dade5: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dade9: 448930                       mov      dword ptr [rax], r14d
00000000077dadec: e9b61a0000                   jmp      0x77dc8a7
00000000077dadf1: f60301                       test     byte ptr [rbx], 1
00000000077dadf4: 7409                         je       0x77dadff
00000000077dadf6: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077dadfa: e841f3d2fc                   call     0x450a140
00000000077dadff: 488d053a094f03               lea      rax, [rip + 0x34f093a]
00000000077dae06: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dae09: 0f8c981a0000                 jl       0x77dc8a7
00000000077dae0f: 488d052e094f03               lea      rax, [rip + 0x34f092e]
00000000077dae16: 8b00                         mov      eax, dword ptr [rax]
00000000077dae18: 89c1                         mov      ecx, eax
00000000077dae1a: f7d1                         not      ecx
00000000077dae1c: 0fafc8                       imul     ecx, eax
00000000077dae1f: 83e101                       and      ecx, 1
00000000077dae22: 0f847f1a0000                 je       0x77dc8a7
00000000077dae28: f60301                       test     byte ptr [rbx], 1
00000000077dae2b: 74c4                         je       0x77dadf1
00000000077dae2d: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077dae31: e80af3d2fc                   call     0x450a140
00000000077dae36: ebb9                         jmp      0x77dadf1
00000000077dae38: 4c89f7                       mov      rdi, r14
00000000077dae3b: e8f0679301                   call     0x9111630
00000000077dae40: f60301                       test     byte ptr [rbx], 1
00000000077dae43: 7409                         je       0x77dae4e
00000000077dae45: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077dae49: e8f2f2d2fc                   call     0x450a140
00000000077dae4e: 488d05ef084f03               lea      rax, [rip + 0x34f08ef]
00000000077dae55: 8b10                         mov      edx, dword ptr [rax]
00000000077dae57: 488d05e2084f03               lea      rax, [rip + 0x34f08e2]
00000000077dae5e: 8b00                         mov      eax, dword ptr [rax]
00000000077dae60: 89d1                         mov      ecx, edx
00000000077dae62: f7d1                         not      ecx
00000000077dae64: 0fafca                       imul     ecx, edx
00000000077dae67: 83e101                       and      ecx, 1
00000000077dae6a: 83f80a                       cmp      eax, 0xa
00000000077dae6d: 0f8ca9fcffff                 jl       0x77dab1c
00000000077dae73: 85c9                         test     ecx, ecx
00000000077dae75: 0f84a1fcffff                 je       0x77dab1c
00000000077dae7b: 4c89f7                       mov      rdi, r14
00000000077dae7e: e8ad679301                   call     0x9111630
00000000077dae83: f60301                       test     byte ptr [rbx], 1
00000000077dae86: 74b0                         je       0x77dae38
00000000077dae88: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077dae8c: e8aff2d2fc                   call     0x450a140
00000000077dae91: eba5                         jmp      0x77dae38
00000000077dae93: 0f57c0                       xorps    xmm0, xmm0
00000000077dae96: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077dae99: 48c7431000000000             mov      qword ptr [rbx + 0x10], 0
00000000077daea1: 84c0                         test     al, al
00000000077daea3: 750d                         jne      0x77daeb2
00000000077daea5: 0f1103                       movups   xmmword ptr [rbx], xmm0
00000000077daea8: 48c7431000000000             mov      qword ptr [rbx + 0x10], 0
00000000077daeb0: ebe1                         jmp      0x77dae93
00000000077daeb2: 4889df                       mov      rdi, rbx
00000000077daeb5: be01000000                   mov      esi, 1
00000000077daeba: e8018ad000                   call     0x84e38c0
00000000077daebf: 488d057e084f03               lea      rax, [rip + 0x34f087e]
00000000077daec6: 8b08                         mov      ecx, dword ptr [rax]
00000000077daec8: 89c8                         mov      eax, ecx
00000000077daeca: f7d0                         not      eax
00000000077daecc: 0fafc1                       imul     eax, ecx
00000000077daecf: 0fb613                       movzx    edx, byte ptr [rbx]
00000000077daed2: f6c201                       test     dl, 1
00000000077daed5: 7406                         je       0x77daedd
00000000077daed7: 488b5308                     mov      rdx, qword ptr [rbx + 8]
00000000077daedb: eb02                         jmp      0x77daedf
00000000077daedd: d1ea                         shr      edx, 1
00000000077daedf: 488d0d5a084f03               lea      rcx, [rip + 0x34f085a]
00000000077daee6: 8b09                         mov      ecx, dword ptr [rcx]
00000000077daee8: 83e001                       and      eax, 1
00000000077daeeb: 4885d2                       test     rdx, rdx
00000000077daeee: 0f8446010000                 je       0x77db03a
00000000077daef4: 488b55d0                     mov      rdx, qword ptr [rbp - 0x30]
00000000077daef8: 804a1c02                     or       byte ptr [rdx + 0x1c], 2
00000000077daefc: 4c8b7210                     mov      r14, qword ptr [rdx + 0x10]
00000000077daf00: 4d85f6                       test     r14, r14
00000000077daf03: 7539                         jne      0x77daf3e
00000000077daf05: bfa8000000                   mov      edi, 0xa8
00000000077daf0a: e8912ee902                   call     0xa66dda0
00000000077daf0f: 4989c6                       mov      r14, rax
00000000077daf12: 4889c7                       mov      rdi, rax
00000000077daf15: e8a61a5000                   call     0x7cdc9c0
00000000077daf1a: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077daf1e: 4c897010                     mov      qword ptr [rax + 0x10], r14
00000000077daf22: 488d051b084f03               lea      rax, [rip + 0x34f081b]
00000000077daf29: 8b10                         mov      edx, dword ptr [rax]
00000000077daf2b: 488d050e084f03               lea      rax, [rip + 0x34f080e]
00000000077daf32: 8b08                         mov      ecx, dword ptr [rax]
00000000077daf34: 89d0                         mov      eax, edx
00000000077daf36: f7d0                         not      eax
00000000077daf38: 0fafc2                       imul     eax, edx
00000000077daf3b: 83e001                       and      eax, 1
00000000077daf3e: 41808ea100000040             or       byte ptr [r14 + 0xa1], 0x40
00000000077daf46: 498b5e70                     mov      rbx, qword ptr [r14 + 0x70]
00000000077daf4a: 4885db                       test     rbx, rbx
00000000077daf4d: 7535                         jne      0x77daf84
00000000077daf4f: bf20000000                   mov      edi, 0x20
00000000077daf54: e8472ee902                   call     0xa66dda0
00000000077daf59: 4889c3                       mov      rbx, rax
00000000077daf5c: 4889c7                       mov      rdi, rax
00000000077daf5f: e84c553c00                   call     0x7ba04b0
00000000077daf64: 49895e70                     mov      qword ptr [r14 + 0x70], rbx
00000000077daf68: 488d05d5074f03               lea      rax, [rip + 0x34f07d5]
00000000077daf6f: 8b10                         mov      edx, dword ptr [rax]
00000000077daf71: 488d05c8074f03               lea      rax, [rip + 0x34f07c8]
00000000077daf78: 8b08                         mov      ecx, dword ptr [rax]
00000000077daf7a: 89d0                         mov      eax, edx
00000000077daf7c: f7d0                         not      eax
00000000077daf7e: 0fafc2                       imul     eax, edx
00000000077daf81: 83e001                       and      eax, 1
00000000077daf84: 85c0                         test     eax, eax
00000000077daf86: 0f94c2                       sete     dl
00000000077daf89: 83f90a                       cmp      ecx, 0xa
00000000077daf8c: 0f9cc0                       setl     al
00000000077daf8f: 08d0                         or       al, dl
00000000077daf91: 6666666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077dafa0: 84c0                         test     al, al
00000000077dafa2: 74fc                         je       0x77dafa0
00000000077dafa4: 488b8570ffffff               mov      rax, qword ptr [rbp - 0x90]
00000000077dafab: 440fb630                     movzx    r14d, byte ptr [rax]
00000000077dafaf: 41f6c601                     test     r14b, 1
00000000077dafb3: 740a                         je       0x77dafbf
00000000077dafb5: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077dafb9: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077dafbd: eb07                         jmp      0x77dafc6
00000000077dafbf: 4c8d7801                     lea      r15, [rax + 1]
00000000077dafc3: 41d1ee                       shr      r14d, 1
00000000077dafc6: 834b1802                     or       dword ptr [rbx + 0x18], 2
00000000077dafca: 488b7b08                     mov      rdi, qword ptr [rbx + 8]
00000000077dafce: 483b3d2b853103               cmp      rdi, qword ptr [rip + 0x331852b] ; reloc 0xad176f0
00000000077dafd5: 751f                         jne      0x77daff6
00000000077dafd7: bf18000000                   mov      edi, 0x18
00000000077dafdc: e8bf2de902                   call     0xa66dda0
00000000077dafe1: 4889c7                       mov      rdi, rax
00000000077dafe4: 0f57c0                       xorps    xmm0, xmm0
00000000077dafe7: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077dafea: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077daff2: 48894308                     mov      qword ptr [rbx + 8], rax
00000000077daff6: 4c89fe                       mov      rsi, r15
00000000077daff9: 4c89f2                       mov      rdx, r14
00000000077daffc: e8ff1ed3fc                   call     0x450cf00
00000000077db001: 488d053c074f03               lea      rax, [rip + 0x34f073c]
00000000077db008: 8b08                         mov      ecx, dword ptr [rax]
00000000077db00a: 89c8                         mov      eax, ecx
00000000077db00c: f7d0                         not      eax
00000000077db00e: 0fafc1                       imul     eax, ecx
00000000077db011: 488b8d70ffffff               mov      rcx, qword ptr [rbp - 0x90]
00000000077db018: 0fb611                       movzx    edx, byte ptr [rcx]
00000000077db01b: f6c201                       test     dl, 1
00000000077db01e: 7405                         je       0x77db025
00000000077db020: 8b5108                       mov      edx, dword ptr [rcx + 8]
00000000077db023: eb02                         jmp      0x77db027
00000000077db025: d1ea                         shr      edx, 1
00000000077db027: 488d0d12074f03               lea      rcx, [rip + 0x34f0712]
00000000077db02e: 8b09                         mov      ecx, dword ptr [rcx]
00000000077db030: 83e001                       and      eax, 1
00000000077db033: 834b1801                     or       dword ptr [rbx + 0x18], 1
00000000077db037: 895310                       mov      dword ptr [rbx + 0x10], edx
00000000077db03a: 85c0                         test     eax, eax
00000000077db03c: 0f94c2                       sete     dl
00000000077db03f: 83f90a                       cmp      ecx, 0xa
00000000077db042: 0f9cc0                       setl     al
00000000077db045: 08d0                         or       al, dl
00000000077db047: 3c01                         cmp      al, 1
00000000077db049: 488b4d88                     mov      rcx, qword ptr [rbp - 0x78]
00000000077db04d: 0f84e4000000                 je       0x77db137
00000000077db053: e9f1000000                   jmp      0x77db149
00000000077db058: 4989d7                       mov      r15, rdx
00000000077db05b: 4989c4                       mov      r12, rax
00000000077db05e: 4889df                       mov      rdi, rbx
00000000077db061: e8daf0d2fc                   call     0x450a140
00000000077db066: eb25                         jmp      0x77db08d
00000000077db068: 4989d7                       mov      r15, rdx
00000000077db06b: 4989c4                       mov      r12, rax
00000000077db06e: 4c89f7                       mov      rdi, r14
00000000077db071: e8caf0d2fc                   call     0x450a140
00000000077db076: eb15                         jmp      0x77db08d
00000000077db078: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077db07c: 488901                       mov      qword ptr [rcx], rax
00000000077db07f: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077db083: 8910                         mov      dword ptr [rax], edx
00000000077db085: eb14                         jmp      0x77db09b
00000000077db087: 4989d7                       mov      r15, rdx
00000000077db08a: 4989c4                       mov      r12, rax
00000000077db08d: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077db091: 4c8920                       mov      qword ptr [rax], r12
00000000077db094: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077db098: 448938                       mov      dword ptr [rax], r15d
00000000077db09b: 488d059e064f03               lea      rax, [rip + 0x34f069e]
00000000077db0a2: 83380a                       cmp      dword ptr [rax], 0xa
00000000077db0a5: 488b9d70ffffff               mov      rbx, qword ptr [rbp - 0x90]
00000000077db0ac: 0f8c08170000                 jl       0x77dc7ba
00000000077db0b2: 488d058b064f03               lea      rax, [rip + 0x34f068b]
00000000077db0b9: 8b00                         mov      eax, dword ptr [rax]
00000000077db0bb: 89c1                         mov      ecx, eax
00000000077db0bd: f7d1                         not      ecx
00000000077db0bf: 0fafc8                       imul     ecx, eax
00000000077db0c2: 83e101                       and      ecx, 1
00000000077db0c5: 0f8530170000                 jne      0x77dc7fb
00000000077db0cb: e9ea160000                   jmp      0x77dc7ba
00000000077db0d0: 488b8530ffffff               mov      rax, qword ptr [rbp - 0xd0]
00000000077db0d7: f60001                       test     byte ptr [rax], 1
00000000077db0da: 7410                         je       0x77db0ec
00000000077db0dc: 488b8530ffffff               mov      rax, qword ptr [rbp - 0xd0]
00000000077db0e3: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077db0e7: e854f0d2fc                   call     0x450a140
00000000077db0ec: 488d0551064f03               lea      rax, [rip + 0x34f0651]
00000000077db0f3: 8b10                         mov      edx, dword ptr [rax]
00000000077db0f5: 488d0544064f03               lea      rax, [rip + 0x34f0644]
00000000077db0fc: 8b00                         mov      eax, dword ptr [rax]
00000000077db0fe: 89d1                         mov      ecx, edx
00000000077db100: f7d1                         not      ecx
00000000077db102: 0fafca                       imul     ecx, edx
00000000077db105: 83e101                       and      ecx, 1
00000000077db108: 83f80a                       cmp      eax, 0xa
00000000077db10b: 0f8cfa160000                 jl       0x77dc80b
00000000077db111: 85c9                         test     ecx, ecx
00000000077db113: 0f84f2160000                 je       0x77dc80b
00000000077db119: 488b8530ffffff               mov      rax, qword ptr [rbp - 0xd0]
00000000077db120: f60001                       test     byte ptr [rax], 1
00000000077db123: 74ab                         je       0x77db0d0
00000000077db125: 488b8530ffffff               mov      rax, qword ptr [rbp - 0xd0]
00000000077db12c: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077db130: e80bf0d2fc                   call     0x450a140
00000000077db135: eb99                         jmp      0x77db0d0
00000000077db137: 0f57c0                       xorps    xmm0, xmm0
00000000077db13a: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000077db13d: 48c7411000000000             mov      qword ptr [rcx + 0x10], 0
00000000077db145: 84c0                         test     al, al
00000000077db147: 7510                         jne      0x77db159
00000000077db149: 0f57c0                       xorps    xmm0, xmm0
00000000077db14c: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000077db14f: 48c7411000000000             mov      qword ptr [rcx + 0x10], 0
00000000077db157: ebde                         jmp      0x77db137
00000000077db159: 488b8528ffffff               mov      rax, qword ptr [rbp - 0xd8]
00000000077db160: 803800                       cmp      byte ptr [rax], 0
00000000077db163: 740c                         je       0x77db171
00000000077db165: 488b85d0feffff               mov      rax, qword ptr [rbp - 0x130]
00000000077db16c: 488b30                       mov      rsi, qword ptr [rax]
00000000077db16f: eb11                         jmp      0x77db182
00000000077db171: e86a1386fe                   call     0x603c4e0
00000000077db176: 488b08                       mov      rcx, qword ptr [rax]
00000000077db179: 4889c7                       mov      rdi, rax
00000000077db17c: ff5128                       call     qword ptr [rcx + 0x28]
00000000077db17f: 4889c6                       mov      rsi, rax
00000000077db182: 488b7d88                     mov      rdi, qword ptr [rbp - 0x78]
00000000077db186: e8252cd3fc                   call     0x450ddb0
00000000077db18b: 488b7da8                     mov      rdi, qword ptr [rbp - 0x58]
00000000077db18f: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000077db199: 48894730                     mov      qword ptr [rdi + 0x30], rax
00000000077db19d: 0f2805fce457f9               movaps   xmm0, xmmword ptr [rip - 0x6a81b04]
00000000077db1a4: 0f114720                     movups   xmmword ptr [rdi + 0x20], xmm0
00000000077db1a8: 0f114710                     movups   xmmword ptr [rdi + 0x10], xmm0
00000000077db1ac: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077db1af: 488b8df8fdffff               mov      rcx, qword ptr [rbp - 0x208]
00000000077db1b6: 66c7010000                   mov      word ptr [rcx], 0
00000000077db1bb: 488bb5d8feffff               mov      rsi, qword ptr [rbp - 0x128]
00000000077db1c2: 488b5588                     mov      rdx, qword ptr [rbp - 0x78]
00000000077db1c6: e82529ffff                   call     0x77cdaf0
00000000077db1cb: 488d0572054f03               lea      rax, [rip + 0x34f0572]
00000000077db1d2: 8b10                         mov      edx, dword ptr [rax]
00000000077db1d4: 488d0565054f03               lea      rax, [rip + 0x34f0565]
00000000077db1db: 8b08                         mov      ecx, dword ptr [rax]
00000000077db1dd: 89d0                         mov      eax, edx
00000000077db1df: f7d0                         not      eax
00000000077db1e1: 0fafc2                       imul     eax, edx
00000000077db1e4: 83e001                       and      eax, 1
00000000077db1e7: 400f94c6                     sete     sil
00000000077db1eb: 83f90a                       cmp      ecx, 0xa
00000000077db1ee: 0f9cc2                       setl     dl
00000000077db1f1: 4008f2                       or       dl, sil
00000000077db1f4: 7414                         je       0x77db20a
00000000077db1f6: 488b55a8                     mov      rdx, qword ptr [rbp - 0x58]
00000000077db1fa: 4883c218                     add      rdx, 0x18
00000000077db1fe: 488bb5e0feffff               mov      rsi, qword ptr [rbp - 0x120]
00000000077db205: 488916                       mov      qword ptr [rsi], rdx
00000000077db208: eb1d                         jmp      0x77db227
00000000077db20a: 488b75a8                     mov      rsi, qword ptr [rbp - 0x58]
00000000077db20e: 4883c618                     add      rsi, 0x18
00000000077db212: 488bbde0feffff               mov      rdi, qword ptr [rbp - 0x120]
00000000077db219: 0f1f8000000000               nop      dword ptr [rax]
00000000077db220: 488937                       mov      qword ptr [rdi], rsi
00000000077db223: 84d2                         test     dl, dl
00000000077db225: 74f9                         je       0x77db220
00000000077db227: 488b75a8                     mov      rsi, qword ptr [rbp - 0x58]
00000000077db22b: 0fb616                       movzx    edx, byte ptr [rsi]
00000000077db22e: f6c201                       test     dl, 1
00000000077db231: 0f84b4000000                 je       0x77db2eb
00000000077db237: 488b5608                     mov      rdx, qword ptr [rsi + 8]
00000000077db23b: 4885d2                       test     rdx, rdx
00000000077db23e: 0f84b2000000                 je       0x77db2f6
00000000077db244: 488b55d0                     mov      rdx, qword ptr [rbp - 0x30]
00000000077db248: 804a1c02                     or       byte ptr [rdx + 0x1c], 2
00000000077db24c: 488b5a10                     mov      rbx, qword ptr [rdx + 0x10]
00000000077db250: 4885db                       test     rbx, rbx
00000000077db253: 7539                         jne      0x77db28e
00000000077db255: bfa8000000                   mov      edi, 0xa8
00000000077db25a: e8412be902                   call     0xa66dda0
00000000077db25f: 4889c3                       mov      rbx, rax
00000000077db262: 4889c7                       mov      rdi, rax
00000000077db265: e856175000                   call     0x7cdc9c0
00000000077db26a: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077db26e: 48895810                     mov      qword ptr [rax + 0x10], rbx
00000000077db272: 488d05cb044f03               lea      rax, [rip + 0x34f04cb]
00000000077db279: 8b10                         mov      edx, dword ptr [rax]
00000000077db27b: 488d05be044f03               lea      rax, [rip + 0x34f04be]
00000000077db282: 8b08                         mov      ecx, dword ptr [rax]
00000000077db284: 89d0                         mov      eax, edx
00000000077db286: f7d0                         not      eax
00000000077db288: 0fafc2                       imul     eax, edx
00000000077db28b: 83e001                       and      eax, 1
00000000077db28e: 808ba000000002               or       byte ptr [rbx + 0xa0], 2
00000000077db295: 4c8b7310                     mov      r14, qword ptr [rbx + 0x10]
00000000077db299: 4d85f6                       test     r14, r14
00000000077db29c: 7535                         jne      0x77db2d3
00000000077db29e: bf48000000                   mov      edi, 0x48
00000000077db2a3: e8f82ae902                   call     0xa66dda0
00000000077db2a8: 4989c6                       mov      r14, rax
00000000077db2ab: 4889c7                       mov      rdi, rax
00000000077db2ae: e8ad924f00                   call     0x7cd4560
00000000077db2b3: 4c897310                     mov      qword ptr [rbx + 0x10], r14
00000000077db2b7: 488d0586044f03               lea      rax, [rip + 0x34f0486]
00000000077db2be: 8b10                         mov      edx, dword ptr [rax]
00000000077db2c0: 488d0579044f03               lea      rax, [rip + 0x34f0479]
00000000077db2c7: 8b08                         mov      ecx, dword ptr [rax]
00000000077db2c9: 89d0                         mov      eax, edx
00000000077db2cb: f7d0                         not      eax
00000000077db2cd: 0fafc2                       imul     eax, edx
00000000077db2d0: 83e001                       and      eax, 1
00000000077db2d3: 41804e4010                   or       byte ptr [r14 + 0x40], 0x10
00000000077db2d8: 498b5e28                     mov      rbx, qword ptr [r14 + 0x28]
00000000077db2dc: 4885db                       test     rbx, rbx
00000000077db2df: 7445                         je       0x77db326
00000000077db2e1: 4885db                       test     rbx, rbx
00000000077db2e4: 757e                         jne      0x77db364
00000000077db2e6: e92b050000                   jmp      0x77db816
00000000077db2eb: d1ea                         shr      edx, 1
00000000077db2ed: 4885d2                       test     rdx, rdx
00000000077db2f0: 0f854effffff                 jne      0x77db244
00000000077db2f6: bf03000000                   mov      edi, 3
00000000077db2fb: e890b99301                   call     0x9116c90
00000000077db300: 85c0                         test     eax, eax
00000000077db302: 0f84f1000000                 je       0x77db3f9
00000000077db308: 488b5d90                     mov      rbx, qword ptr [rbp - 0x70]
00000000077db30c: 4889df                       mov      rdi, rbx
00000000077db30f: e8bc76bdff                   call     0x73b29d0
00000000077db314: f60301                       test     byte ptr [rbx], 1
00000000077db317: 0f84fd000000                 je       0x77db41a
00000000077db31d: 488b5310                     mov      rdx, qword ptr [rbx + 0x10]
00000000077db321: e9f8000000                   jmp      0x77db41e
00000000077db326: bf20000000                   mov      edi, 0x20
00000000077db32b: e8702ae902                   call     0xa66dda0
00000000077db330: 4889c3                       mov      rbx, rax
00000000077db333: 4889c7                       mov      rdi, rax
00000000077db336: e875513c00                   call     0x7ba04b0
00000000077db33b: 49895e28                     mov      qword ptr [r14 + 0x28], rbx
00000000077db33f: 488d05fe034f03               lea      rax, [rip + 0x34f03fe]
00000000077db346: 8b10                         mov      edx, dword ptr [rax]
00000000077db348: 488d05f1034f03               lea      rax, [rip + 0x34f03f1]
00000000077db34f: 8b08                         mov      ecx, dword ptr [rax]
00000000077db351: 89d0                         mov      eax, edx
00000000077db353: f7d0                         not      eax
00000000077db355: 0fafc2                       imul     eax, edx
00000000077db358: 83e001                       and      eax, 1
00000000077db35b: 4885db                       test     rbx, rbx
00000000077db35e: 0f84b2040000                 je       0x77db816
00000000077db364: 488b45a8                     mov      rax, qword ptr [rbp - 0x58]
00000000077db368: 440fb630                     movzx    r14d, byte ptr [rax]
00000000077db36c: 41f6c601                     test     r14b, 1
00000000077db370: 740a                         je       0x77db37c
00000000077db372: 4c8b7810                     mov      r15, qword ptr [rax + 0x10]
00000000077db376: 4c8b7008                     mov      r14, qword ptr [rax + 8]
00000000077db37a: eb07                         jmp      0x77db383
00000000077db37c: 4c8d7801                     lea      r15, [rax + 1]
00000000077db380: 41d1ee                       shr      r14d, 1
00000000077db383: 834b1802                     or       dword ptr [rbx + 0x18], 2
00000000077db387: 488b7b08                     mov      rdi, qword ptr [rbx + 8]
00000000077db38b: 483b3d6e813103               cmp      rdi, qword ptr [rip + 0x331816e] ; reloc 0xad176f0
00000000077db392: 751f                         jne      0x77db3b3
00000000077db394: bf18000000                   mov      edi, 0x18
00000000077db399: e8022ae902                   call     0xa66dda0
00000000077db39e: 4889c7                       mov      rdi, rax
00000000077db3a1: 0f57c0                       xorps    xmm0, xmm0
00000000077db3a4: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077db3a7: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
00000000077db3af: 48894308                     mov      qword ptr [rbx + 8], rax
00000000077db3b3: 4c89fe                       mov      rsi, r15
00000000077db3b6: 4c89f2                       mov      rdx, r14
00000000077db3b9: e8421bd3fc                   call     0x450cf00
00000000077db3be: 488d057f034f03               lea      rax, [rip + 0x34f037f]
00000000077db3c5: 8b08                         mov      ecx, dword ptr [rax]
00000000077db3c7: 89c8                         mov      eax, ecx
00000000077db3c9: f7d0                         not      eax
00000000077db3cb: 0fafc1                       imul     eax, ecx
00000000077db3ce: 488b4da8                     mov      rcx, qword ptr [rbp - 0x58]
00000000077db3d2: 0fb611                       movzx    edx, byte ptr [rcx]
00000000077db3d5: f6c201                       test     dl, 1
00000000077db3d8: 7405                         je       0x77db3df
00000000077db3da: 8b5108                       mov      edx, dword ptr [rcx + 8]
00000000077db3dd: eb02                         jmp      0x77db3e1
00000000077db3df: d1ea                         shr      edx, 1
00000000077db3e1: 488d0d58034f03               lea      rcx, [rip + 0x34f0358]
00000000077db3e8: 8b09                         mov      ecx, dword ptr [rcx]
00000000077db3ea: 83e001                       and      eax, 1
00000000077db3ed: 834b1801                     or       dword ptr [rbx + 0x18], 1
00000000077db3f1: 895310                       mov      dword ptr [rbx + 0x10], edx
00000000077db3f4: e91d040000                   jmp      0x77db816
00000000077db3f9: 488d0544034f03               lea      rax, [rip + 0x34f0344]
00000000077db400: 8b10                         mov      edx, dword ptr [rax]
00000000077db402: 488d0537034f03               lea      rax, [rip + 0x34f0337]
00000000077db409: 8b08                         mov      ecx, dword ptr [rax]
00000000077db40b: 89d0                         mov      eax, edx
00000000077db40d: f7d0                         not      eax
00000000077db40f: 0fafc2                       imul     eax, edx
00000000077db412: 83e001                       and      eax, 1
00000000077db415: e9fc030000                   jmp      0x77db816
00000000077db41a: 488d5301                     lea      rdx, [rbx + 1]
00000000077db41e: 488d0d67597ff9               lea      rcx, [rip - 0x680a699]
00000000077db425: 4c8d05716061f9               lea      r8, [rip - 0x69e9f8f]
00000000077db42c: 488b9d00ffffff               mov      rbx, qword ptr [rbp - 0x100]
00000000077db433: 4889df                       mov      rdi, rbx
00000000077db436: be03000000                   mov      esi, 3
00000000077db43b: 41b97a050000                 mov      r9d, 0x57a
00000000077db441: 6a00                         push     0
00000000077db443: 6a00                         push     0
00000000077db445: e856619301                   call     0x91115a0
00000000077db44a: 4883c410                     add      rsp, 0x10
00000000077db44e: 488b4588                     mov      rax, qword ptr [rbp - 0x78]
00000000077db452: f60001                       test     byte ptr [rax], 1
00000000077db455: 7406                         je       0x77db45d
00000000077db457: 488b4010                     mov      rax, qword ptr [rax + 0x10]
00000000077db45b: eb03                         jmp      0x77db460
00000000077db45d: 48ffc0                       inc      rax
00000000077db460: 488b8d38feffff               mov      rcx, qword ptr [rbp - 0x1c8]
00000000077db467: 488901                       mov      qword ptr [rcx], rax
00000000077db46a: c6410800                     mov      byte ptr [rcx + 8], 0
00000000077db46e: 488b85e0feffff               mov      rax, qword ptr [rbp - 0x120]
00000000077db475: 488b30                       mov      rsi, qword ptr [rax]
00000000077db478: 4c8bb538ffffff               mov      r14, qword ptr [rbp - 0xc8]
00000000077db47f: 4c89f7                       mov      rdi, r14
00000000077db482: e8d92affff                   call     0x77cdf60
00000000077db487: 41f60601                     test     byte ptr [r14], 1
00000000077db48b: 7406                         je       0x77db493
00000000077db48d: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000077db491: eb04                         jmp      0x77db497
00000000077db493: 498d4601                     lea      rax, [r14 + 1]
00000000077db497: 488b8d18feffff               mov      rcx, qword ptr [rbp - 0x1e8]
00000000077db49e: 488901                       mov      qword ptr [rcx], rax
00000000077db4a1: c6410800                     mov      byte ptr [rcx + 8], 0
00000000077db4a5: 488b8538feffff               mov      rax, qword ptr [rbp - 0x1c8]
00000000077db4ac: 48898540feffff               mov      qword ptr [rbp - 0x1c0], rax
00000000077db4b3: 48898d48feffff               mov      qword ptr [rbp - 0x1b8], rcx
00000000077db4ba: 0f57c0                       xorps    xmm0, xmm0
00000000077db4bd: 0f298550feffff               movaps   xmmword ptr [rbp - 0x1b0], xmm0
00000000077db4c4: 0f298560feffff               movaps   xmmword ptr [rbp - 0x1a0], xmm0
00000000077db4cb: 0f298570feffff               movaps   xmmword ptr [rbp - 0x190], xmm0
00000000077db4d2: 0f298580feffff               movaps   xmmword ptr [rbp - 0x180], xmm0
00000000077db4d9: 0f298590feffff               movaps   xmmword ptr [rbp - 0x170], xmm0
00000000077db4e0: 0f2985a0feffff               movaps   xmmword ptr [rbp - 0x160], xmm0
00000000077db4e7: 0f2985b0feffff               movaps   xmmword ptr [rbp - 0x150], xmm0
00000000077db4ee: 488d35f05f64f9               lea      rsi, [rip - 0x69ba010]
00000000077db4f5: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077db4fc: 4889df                       mov      rdi, rbx
00000000077db4ff: e8ec639301                   call     0x91118f0
00000000077db504: 488d0535024f03               lea      rax, [rip + 0x34f0235]
00000000077db50b: 83380a                       cmp      dword ptr [rax], 0xa
00000000077db50e: 0f8c67020000                 jl       0x77db77b
00000000077db514: 488d0529024f03               lea      rax, [rip + 0x34f0229]
00000000077db51b: 8b00                         mov      eax, dword ptr [rax]
00000000077db51d: 89c1                         mov      ecx, eax
00000000077db51f: f7d1                         not      ecx
00000000077db521: 0fafc8                       imul     ecx, eax
00000000077db524: 83e101                       and      ecx, 1
00000000077db527: 0f85a6020000                 jne      0x77db7d3
00000000077db52d: e949020000                   jmp      0x77db77b
00000000077db532: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077db536: 488901                       mov      qword ptr [rcx], rax
00000000077db539: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077db53d: 8910                         mov      dword ptr [rax], edx
00000000077db53f: 488b8538ffffff               mov      rax, qword ptr [rbp - 0xc8]
00000000077db546: f60001                       test     byte ptr [rax], 1
00000000077db549: 741f                         je       0x77db56a
00000000077db54b: 488b8538ffffff               mov      rax, qword ptr [rbp - 0xc8]
00000000077db552: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077db556: e8e5ebd2fc                   call     0x450a140
00000000077db55b: eb0d                         jmp      0x77db56a
00000000077db55d: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077db561: 488901                       mov      qword ptr [rcx], rax
00000000077db564: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077db568: 8910                         mov      dword ptr [rax], edx
00000000077db56a: 488bbd00ffffff               mov      rdi, qword ptr [rbp - 0x100]
00000000077db571: e8ba609301                   call     0x9111630
00000000077db576: 488d05c7014f03               lea      rax, [rip + 0x34f01c7]
00000000077db57d: 8b10                         mov      edx, dword ptr [rax]
00000000077db57f: 488d05ba014f03               lea      rax, [rip + 0x34f01ba]
00000000077db586: 8b08                         mov      ecx, dword ptr [rax]
00000000077db588: 89d0                         mov      eax, edx
00000000077db58a: f7d0                         not      eax
00000000077db58c: 0fafc2                       imul     eax, edx
00000000077db58f: 83e001                       and      eax, 1
00000000077db592: 83f90a                       cmp      ecx, 0xa
00000000077db595: 7c6d                         jl       0x77db604
00000000077db597: 85c0                         test     eax, eax
00000000077db599: 7469                         je       0x77db604
00000000077db59b: 488b9d00ffffff               mov      rbx, qword ptr [rbp - 0x100]
00000000077db5a2: 4889df                       mov      rdi, rbx
00000000077db5a5: e886609301                   call     0x9111630
00000000077db5aa: 4889df                       mov      rdi, rbx
00000000077db5ad: e87e609301                   call     0x9111630
00000000077db5b2: 488d058b014f03               lea      rax, [rip + 0x34f018b]
00000000077db5b9: 8b10                         mov      edx, dword ptr [rax]
00000000077db5bb: 488d057e014f03               lea      rax, [rip + 0x34f017e]
00000000077db5c2: 8b08                         mov      ecx, dword ptr [rax]
00000000077db5c4: 89d0                         mov      eax, edx
00000000077db5c6: f7d0                         not      eax
00000000077db5c8: 0fafc2                       imul     eax, edx
00000000077db5cb: 83e001                       and      eax, 1
00000000077db5ce: 83f90a                       cmp      ecx, 0xa
00000000077db5d1: 7c31                         jl       0x77db604
00000000077db5d3: 85c0                         test     eax, eax
00000000077db5d5: 75cb                         jne      0x77db5a2
00000000077db5d7: eb2b                         jmp      0x77db604
00000000077db5d9: eb51                         jmp      0x77db62c
00000000077db5db: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077db5df: 488901                       mov      qword ptr [rcx], rax
00000000077db5e2: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077db5e6: 8910                         mov      dword ptr [rax], edx
00000000077db5e8: 488d0555014f03               lea      rax, [rip + 0x34f0155]
00000000077db5ef: 8b10                         mov      edx, dword ptr [rax]
00000000077db5f1: 488d0548014f03               lea      rax, [rip + 0x34f0148]
00000000077db5f8: 8b08                         mov      ecx, dword ptr [rax]
00000000077db5fa: 89d0                         mov      eax, edx
00000000077db5fc: f7d0                         not      eax
00000000077db5fe: 0fafc2                       imul     eax, edx
00000000077db601: 83e001                       and      eax, 1
00000000077db604: 83f90a                       cmp      ecx, 0xa
00000000077db607: 0f8c9d020000                 jl       0x77db8aa
00000000077db60d: 85c0                         test     eax, eax
00000000077db60f: 0f85d4020000                 jne      0x77db8e9
00000000077db615: e990020000                   jmp      0x77db8aa
00000000077db61a: 4989d7                       mov      r15, rdx
00000000077db61d: 4989c4                       mov      r12, rax
00000000077db620: 4c89f7                       mov      rdi, r14
00000000077db623: e818ebd2fc                   call     0x450a140
00000000077db628: eb1a                         jmp      0x77db644
00000000077db62a: eb3a                         jmp      0x77db666
00000000077db62c: 4989d7                       mov      r15, rdx
00000000077db62f: 4989c4                       mov      r12, rax
00000000077db632: 4889df                       mov      rdi, rbx
00000000077db635: e806ebd2fc                   call     0x450a140
00000000077db63a: eb08                         jmp      0x77db644
00000000077db63c: eb16                         jmp      0x77db654
00000000077db63e: 4989d7                       mov      r15, rdx
00000000077db641: 4989c4                       mov      r12, rax
00000000077db644: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077db648: 4c8920                       mov      qword ptr [rax], r12
00000000077db64b: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077db64f: 448938                       mov      dword ptr [rax], r15d
00000000077db652: eb1f                         jmp      0x77db673
00000000077db654: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077db658: 488901                       mov      qword ptr [rcx], rax
00000000077db65b: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077db65f: 8910                         mov      dword ptr [rax], edx
00000000077db661: e9c2000000                   jmp      0x77db728
00000000077db666: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077db66a: 488901                       mov      qword ptr [rcx], rax
00000000077db66d: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077db671: 8910                         mov      dword ptr [rax], edx
00000000077db673: 488d05c6004f03               lea      rax, [rip + 0x34f00c6]
00000000077db67a: 83380a                       cmp      dword ptr [rax], 0xa
00000000077db67d: 7c4a                         jl       0x77db6c9
00000000077db67f: 488d05be004f03               lea      rax, [rip + 0x34f00be]
00000000077db686: 8b00                         mov      eax, dword ptr [rax]
00000000077db688: 89c1                         mov      ecx, eax
00000000077db68a: f7d1                         not      ecx
00000000077db68c: 0fafc8                       imul     ecx, eax
00000000077db68f: 83e101                       and      ecx, 1
00000000077db692: 7435                         je       0x77db6c9
00000000077db694: 488b5da8                     mov      rbx, qword ptr [rbp - 0x58]
00000000077db698: 4889df                       mov      rdi, rbx
00000000077db69b: e85065ffff                   call     0x77d1bf0
00000000077db6a0: 4889df                       mov      rdi, rbx
00000000077db6a3: e84865ffff                   call     0x77d1bf0
00000000077db6a8: 488d0591004f03               lea      rax, [rip + 0x34f0091]
00000000077db6af: 83380a                       cmp      dword ptr [rax], 0xa
00000000077db6b2: 7c15                         jl       0x77db6c9
00000000077db6b4: 488d0589004f03               lea      rax, [rip + 0x34f0089]
00000000077db6bb: 8b00                         mov      eax, dword ptr [rax]
00000000077db6bd: 89c1                         mov      ecx, eax
00000000077db6bf: f7d1                         not      ecx
00000000077db6c1: 0fafc8                       imul     ecx, eax
00000000077db6c4: 83e101                       and      ecx, 1
00000000077db6c7: 75cf                         jne      0x77db698
00000000077db6c9: 488b7da8                     mov      rdi, qword ptr [rbp - 0x58]
00000000077db6cd: e81e65ffff                   call     0x77d1bf0
00000000077db6d2: 488d0567004f03               lea      rax, [rip + 0x34f0067]
00000000077db6d9: 83380a                       cmp      dword ptr [rax], 0xa
00000000077db6dc: 7c4a                         jl       0x77db728
00000000077db6de: 488d055f004f03               lea      rax, [rip + 0x34f005f]
00000000077db6e5: 8b00                         mov      eax, dword ptr [rax]
00000000077db6e7: 89c1                         mov      ecx, eax
00000000077db6e9: f7d1                         not      ecx
00000000077db6eb: 0fafc8                       imul     ecx, eax
00000000077db6ee: 83e101                       and      ecx, 1
00000000077db6f1: 7435                         je       0x77db728
00000000077db6f3: 488b5da8                     mov      rbx, qword ptr [rbp - 0x58]
00000000077db6f7: 4889df                       mov      rdi, rbx
00000000077db6fa: e8f164ffff                   call     0x77d1bf0
00000000077db6ff: 4889df                       mov      rdi, rbx
00000000077db702: e8e964ffff                   call     0x77d1bf0
00000000077db707: 488d0532004f03               lea      rax, [rip + 0x34f0032]
00000000077db70e: 83380a                       cmp      dword ptr [rax], 0xa
00000000077db711: 7c15                         jl       0x77db728
00000000077db713: 488d052a004f03               lea      rax, [rip + 0x34f002a]
00000000077db71a: 8b00                         mov      eax, dword ptr [rax]
00000000077db71c: 89c1                         mov      ecx, eax
00000000077db71e: f7d1                         not      ecx
00000000077db720: 0fafc8                       imul     ecx, eax
00000000077db723: 83e101                       and      ecx, 1
00000000077db726: 75cf                         jne      0x77db6f7
00000000077db728: 488b5d88                     mov      rbx, qword ptr [rbp - 0x78]
00000000077db72c: f60301                       test     byte ptr [rbx], 1
00000000077db72f: 740d                         je       0x77db73e
00000000077db731: 488b4588                     mov      rax, qword ptr [rbp - 0x78]
00000000077db735: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077db739: e802ead2fc                   call     0x450a140
00000000077db73e: 488d05fbff4e03               lea      rax, [rip + 0x34efffb]
00000000077db745: 83380a                       cmp      dword ptr [rax], 0xa
00000000077db748: 0f8c4df9ffff                 jl       0x77db09b
00000000077db74e: 488d05efff4e03               lea      rax, [rip + 0x34effef]
00000000077db755: 8b00                         mov      eax, dword ptr [rax]
00000000077db757: 89c1                         mov      ecx, eax
00000000077db759: f7d1                         not      ecx
00000000077db75b: 0fafc8                       imul     ecx, eax
00000000077db75e: 83e101                       and      ecx, 1
00000000077db761: 0f8434f9ffff                 je       0x77db09b
00000000077db767: 488b5d88                     mov      rbx, qword ptr [rbp - 0x78]
00000000077db76b: f60301                       test     byte ptr [rbx], 1
00000000077db76e: 74bc                         je       0x77db72c
00000000077db770: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077db774: e8c7e9d2fc                   call     0x450a140
00000000077db779: ebb1                         jmp      0x77db72c
00000000077db77b: 488b8538ffffff               mov      rax, qword ptr [rbp - 0xc8]
00000000077db782: f60001                       test     byte ptr [rax], 1
00000000077db785: 7409                         je       0x77db790
00000000077db787: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077db78b: e8b0e9d2fc                   call     0x450a140
00000000077db790: 4889df                       mov      rdi, rbx
00000000077db793: e8985e9301                   call     0x9111630
00000000077db798: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077db79c: f60001                       test     byte ptr [rax], 1
00000000077db79f: 740d                         je       0x77db7ae
00000000077db7a1: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077db7a5: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077db7a9: e892e9d2fc                   call     0x450a140
00000000077db7ae: 488d058fff4e03               lea      rax, [rip + 0x34eff8f]
00000000077db7b5: 8b10                         mov      edx, dword ptr [rax]
00000000077db7b7: 488d0582ff4e03               lea      rax, [rip + 0x34eff82]
00000000077db7be: 8b08                         mov      ecx, dword ptr [rax]
00000000077db7c0: 89d0                         mov      eax, edx
00000000077db7c2: f7d0                         not      eax
00000000077db7c4: 0fafc2                       imul     eax, edx
00000000077db7c7: 83e001                       and      eax, 1
00000000077db7ca: 83f90a                       cmp      ecx, 0xa
00000000077db7cd: 7c47                         jl       0x77db816
00000000077db7cf: 85c0                         test     eax, eax
00000000077db7d1: 7443                         je       0x77db816
00000000077db7d3: 488b8538ffffff               mov      rax, qword ptr [rbp - 0xc8]
00000000077db7da: f60001                       test     byte ptr [rax], 1
00000000077db7dd: 7410                         je       0x77db7ef
00000000077db7df: 488b8538ffffff               mov      rax, qword ptr [rbp - 0xc8]
00000000077db7e6: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077db7ea: e851e9d2fc                   call     0x450a140
00000000077db7ef: 4889df                       mov      rdi, rbx
00000000077db7f2: e8395e9301                   call     0x9111630
00000000077db7f7: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077db7fb: f60001                       test     byte ptr [rax], 1
00000000077db7fe: 0f8477ffffff                 je       0x77db77b
00000000077db804: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077db808: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077db80c: e82fe9d2fc                   call     0x450a140
00000000077db811: e965ffffff                   jmp      0x77db77b
00000000077db816: 85c0                         test     eax, eax
00000000077db818: 0f94c2                       sete     dl
00000000077db81b: 83f90a                       cmp      ecx, 0xa
00000000077db81e: 0f9cc0                       setl     al
00000000077db821: 08d0                         or       al, dl
00000000077db823: 7418                         je       0x77db83d
00000000077db825: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077db829: 0f280570de57f9               movaps   xmm0, xmmword ptr [rip - 0x6a82190]
00000000077db830: 0f114020                     movups   xmmword ptr [rax + 0x20], xmm0
00000000077db834: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
00000000077db838: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000077db83b: eb22                         jmp      0x77db85f
00000000077db83d: 488b4db0                     mov      rcx, qword ptr [rbp - 0x50]
00000000077db841: 0f280558de57f9               movaps   xmm0, xmmword ptr [rip - 0x6a821a8]
00000000077db848: 0f1f840000000000             nop      dword ptr [rax + rax]
00000000077db850: 0f114120                     movups   xmmword ptr [rcx + 0x20], xmm0
00000000077db854: 0f114110                     movups   xmmword ptr [rcx + 0x10], xmm0
00000000077db858: 0f1101                       movups   xmmword ptr [rcx], xmm0
00000000077db85b: 84c0                         test     al, al
00000000077db85d: 74f1                         je       0x77db850
00000000077db85f: e87c0c86fe                   call     0x603c4e0
00000000077db864: 488b08                       mov      rcx, qword ptr [rax]
00000000077db867: 4889c7                       mov      rdi, rax
00000000077db86a: ff5118                       call     qword ptr [rcx + 0x18]
00000000077db86d: 488d0dd0fe4e03               lea      rcx, [rip + 0x34efed0]
00000000077db874: 8b09                         mov      ecx, dword ptr [rcx]
00000000077db876: 89ca                         mov      edx, ecx
00000000077db878: f7d2                         not      edx
00000000077db87a: 0fafd1                       imul     edx, ecx
00000000077db87d: f6c201                       test     dl, 1
00000000077db880: 0f94c2                       sete     dl
00000000077db883: 488d0db6fe4e03               lea      rcx, [rip + 0x34efeb6]
00000000077db88a: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077db88d: 0f9cc1                       setl     cl
00000000077db890: 08d1                         or       cl, dl
00000000077db892: 49bf00000000c0d40100         movabs   r15, 0x1d4c000000000
00000000077db89c: 80f901                       cmp      cl, 1
00000000077db89f: 4c8b8558ffffff               mov      r8, qword ptr [rbp - 0xa8]
00000000077db8a6: 7459                         je       0x77db901
00000000077db8a8: eb73                         jmp      0x77db91d
00000000077db8aa: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077db8ae: f60001                       test     byte ptr [rax], 1
00000000077db8b1: 740d                         je       0x77db8c0
00000000077db8b3: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077db8b7: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077db8bb: e880e8d2fc                   call     0x450a140
00000000077db8c0: 488d0579fe4e03               lea      rax, [rip + 0x34efe79]
00000000077db8c7: 83380a                       cmp      dword ptr [rax], 0xa
00000000077db8ca: 0f8ca3fdffff                 jl       0x77db673
00000000077db8d0: 488d056dfe4e03               lea      rax, [rip + 0x34efe6d]
00000000077db8d7: 8b00                         mov      eax, dword ptr [rax]
00000000077db8d9: 89c1                         mov      ecx, eax
00000000077db8db: f7d1                         not      ecx
00000000077db8dd: 0fafc8                       imul     ecx, eax
00000000077db8e0: 83e101                       and      ecx, 1
00000000077db8e3: 0f848afdffff                 je       0x77db673
00000000077db8e9: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077db8ed: f60001                       test     byte ptr [rax], 1
00000000077db8f0: 74b8                         je       0x77db8aa
00000000077db8f2: 488b4590                     mov      rax, qword ptr [rbp - 0x70]
00000000077db8f6: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077db8fa: e841e8d2fc                   call     0x450a140
00000000077db8ff: eba9                         jmp      0x77db8aa
00000000077db901: 4d8938                       mov      qword ptr [r8], r15
00000000077db904: 41c7402400000000             mov      dword ptr [r8 + 0x24], 0
00000000077db90c: 0f57c0                       xorps    xmm0, xmm0
00000000077db90f: 410f114008                   movups   xmmword ptr [r8 + 8], xmm0
00000000077db914: 410f114011                   movups   xmmword ptr [r8 + 0x11], xmm0
00000000077db919: 84c9                         test     cl, cl
00000000077db91b: 751a                         jne      0x77db937
00000000077db91d: 4d8938                       mov      qword ptr [r8], r15
00000000077db920: 41c7402400000000             mov      dword ptr [r8 + 0x24], 0
00000000077db928: 0f57c0                       xorps    xmm0, xmm0
00000000077db92b: 410f114008                   movups   xmmword ptr [r8 + 8], xmm0
00000000077db930: 410f114011                   movups   xmmword ptr [r8 + 0x11], xmm0
00000000077db935: ebca                         jmp      0x77db901
00000000077db937: 498d5808                     lea      rbx, [r8 + 8]
00000000077db93b: 488b7db0                     mov      rdi, qword ptr [rbp - 0x50]
00000000077db93f: 4889c6                       mov      rsi, rax
00000000077db942: 488b55d0                     mov      rdx, qword ptr [rbp - 0x30]
00000000077db946: 488b4db8                     mov      rcx, qword ptr [rbp - 0x48]
00000000077db94a: e881100000                   call     0x77dc9d0
00000000077db94f: 488d05eafd4e03               lea      rax, [rip + 0x34efdea]
00000000077db956: 83380a                       cmp      dword ptr [rax], 0xa
00000000077db959: 488b9558ffffff               mov      rdx, qword ptr [rbp - 0xa8]
00000000077db960: 7d1a                         jge      0x77db97c
00000000077db962: e983000000                   jmp      0x77db9ea
00000000077db967: 660f1f840000000000           nop      word ptr [rax + rax]
00000000077db970: 488d05c9fd4e03               lea      rax, [rip + 0x34efdc9]
00000000077db977: 83380a                       cmp      dword ptr [rax], 0xa
00000000077db97a: 7c6e                         jl       0x77db9ea
00000000077db97c: 488d05c1fd4e03               lea      rax, [rip + 0x34efdc1]
00000000077db983: 8b00                         mov      eax, dword ptr [rax]
00000000077db985: 89c1                         mov      ecx, eax
00000000077db987: f7d1                         not      ecx
00000000077db989: 0fafc8                       imul     ecx, eax
00000000077db98c: 83e101                       and      ecx, 1
00000000077db98f: 7459                         je       0x77db9ea
00000000077db991: f60301                       test     byte ptr [rbx], 1
00000000077db994: 7410                         je       0x77db9a6
00000000077db996: 488b7a18                     mov      rdi, qword ptr [rdx + 0x18]
00000000077db99a: e8a1e7d2fc                   call     0x450a140
00000000077db99f: 488b9558ffffff               mov      rdx, qword ptr [rbp - 0xa8]
00000000077db9a6: f6420801                     test     byte ptr [rdx + 8], 1
00000000077db9aa: 74c4                         je       0x77db970
00000000077db9ac: 488b7a18                     mov      rdi, qword ptr [rdx + 0x18]
00000000077db9b0: e88be7d2fc                   call     0x450a140
00000000077db9b5: 488b9558ffffff               mov      rdx, qword ptr [rbp - 0xa8]
00000000077db9bc: ebb2                         jmp      0x77db970
00000000077db9be: 6690                         nop
00000000077db9c0: 488d057dfd4e03               lea      rax, [rip + 0x34efd7d]
00000000077db9c7: 8b00                         mov      eax, dword ptr [rax]
00000000077db9c9: 89c1                         mov      ecx, eax
00000000077db9cb: f7d1                         not      ecx
00000000077db9cd: 0fafc8                       imul     ecx, eax
00000000077db9d0: 83e101                       and      ecx, 1
00000000077db9d3: 7436                         je       0x77dba0b
00000000077db9d5: f60301                       test     byte ptr [rbx], 1
00000000077db9d8: 7410                         je       0x77db9ea
00000000077db9da: 488b7a18                     mov      rdi, qword ptr [rdx + 0x18]
00000000077db9de: e85de7d2fc                   call     0x450a140
00000000077db9e3: 488b9558ffffff               mov      rdx, qword ptr [rbp - 0xa8]
00000000077db9ea: f60301                       test     byte ptr [rbx], 1
00000000077db9ed: 7410                         je       0x77db9ff
00000000077db9ef: 488b7a18                     mov      rdi, qword ptr [rdx + 0x18]
00000000077db9f3: e848e7d2fc                   call     0x450a140
00000000077db9f8: 488b9558ffffff               mov      rdx, qword ptr [rbp - 0xa8]
00000000077db9ff: 488d053afd4e03               lea      rax, [rip + 0x34efd3a]
00000000077dba06: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dba09: 7db5                         jge      0x77db9c0
00000000077dba0b: 488b5db0                     mov      rbx, qword ptr [rbp - 0x50]
00000000077dba0f: 8b03                         mov      eax, dword ptr [rbx]
00000000077dba11: 0b4304                       or       eax, dword ptr [rbx + 4]
00000000077dba14: 0f846a040000                 je       0x77dbe84
00000000077dba1a: bf04000000                   mov      edi, 4
00000000077dba1f: e86cb29301                   call     0x9116c90
00000000077dba24: 85c0                         test     eax, eax
00000000077dba26: 0f8458040000                 je       0x77dbe84
00000000077dba2c: 4c8bb578ffffff               mov      r14, qword ptr [rbp - 0x88]
00000000077dba33: 4c89f7                       mov      rdi, r14
00000000077dba36: e8956fbdff                   call     0x73b29d0
00000000077dba3b: 41f60601                     test     byte ptr [r14], 1
00000000077dba3f: 7406                         je       0x77dba47
00000000077dba41: 498b5610                     mov      rdx, qword ptr [r14 + 0x10]
00000000077dba45: eb04                         jmp      0x77dba4b
00000000077dba47: 498d5601                     lea      rdx, [r14 + 1]
00000000077dba4b: 488d0d3a537ff9               lea      rcx, [rip - 0x680acc6]
00000000077dba52: 4c8d05445a61f9               lea      r8, [rip - 0x69ea5bc]
00000000077dba59: 488bbd68ffffff               mov      rdi, qword ptr [rbp - 0x98]
00000000077dba60: be04000000                   mov      esi, 4
00000000077dba65: 41b980050000                 mov      r9d, 0x580
00000000077dba6b: 6a00                         push     0
00000000077dba6d: 6a00                         push     0
00000000077dba6f: e82c5b9301                   call     0x91115a0
00000000077dba74: 4883c410                     add      rsp, 0x10
00000000077dba78: 4c8b9508feffff               mov      r10, qword ptr [rbp - 0x1f8]
00000000077dba7f: 4c8b9d10feffff               mov      r11, qword ptr [rbp - 0x1f0]
00000000077dba86: 8b13                         mov      edx, dword ptr [rbx]
00000000077dba88: 49c70200000000               mov      qword ptr [r10], 0
00000000077dba8f: b908000000                   mov      ecx, 8
00000000077dba94: 488d05713975f9               lea      rax, [rip - 0x68ac68f] ; 'ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
00000000077dba9b: 89d6                         mov      esi, edx
00000000077dba9d: 0f1f00                       nop      dword ptr [rax]
00000000077dbaa0: 4863fe                       movsxd   rdi, esi
00000000077dbaa3: 4869f767666666               imul     rsi, rdi, 0x66666667
00000000077dbaaa: 4989f0                       mov      r8, rsi
00000000077dbaad: 49c1e83f                     shr      r8, 0x3f
00000000077dbab1: 48c1fe22                     sar      rsi, 0x22
00000000077dbab5: 4401c6                       add      esi, r8d
00000000077dbab8: 448d0436                     lea      r8d, [rsi + rsi]
00000000077dbabc: 478d0480                     lea      r8d, [r8 + r8*4]
00000000077dbac0: 4189f9                       mov      r9d, edi
00000000077dbac3: 4529c1                       sub      r9d, r8d
00000000077dbac6: 4d63c1                       movsxd   r8, r9d
00000000077dbac9: 450fb6440023                 movzx    r8d, byte ptr [r8 + rax + 0x23]
00000000077dbacf: 4588040a                     mov      byte ptr [r10 + rcx], r8b
00000000077dbad3: 48ffc1                       inc      rcx
00000000077dbad6: 83c709                       add      edi, 9
00000000077dbad9: 83ff12                       cmp      edi, 0x12
00000000077dbadc: 77c2                         ja       0x77dbaa0
00000000077dbade: 85d2                         test     edx, edx
00000000077dbae0: 7908                         jns      0x77dbaea
00000000077dbae2: 41c6040a2d                   mov      byte ptr [r10 + rcx], 0x2d
00000000077dbae7: 48ffc1                       inc      rcx
00000000077dbaea: 498d5208                     lea      rdx, [r10 + 8]
00000000077dbaee: 41c6040a00                   mov      byte ptr [r10 + rcx], 0
00000000077dbaf3: 4883f90a                     cmp      rcx, 0xa
00000000077dbaf7: 7c35                         jl       0x77dbb2e
00000000077dbaf9: 4c01d1                       add      rcx, r10
00000000077dbafc: 48ffc9                       dec      rcx
00000000077dbaff: 498d7209                     lea      rsi, [r10 + 9]
00000000077dbb03: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000077dbb10: 0fb639                       movzx    edi, byte ptr [rcx]
00000000077dbb13: 440fb646ff                   movzx    r8d, byte ptr [rsi - 1]
00000000077dbb18: 448801                       mov      byte ptr [rcx], r8b
00000000077dbb1b: 40887eff                     mov      byte ptr [rsi - 1], dil
00000000077dbb1f: 48ffc9                       dec      rcx
00000000077dbb22: 488d7e01                     lea      rdi, [rsi + 1]
00000000077dbb26: 4839ce                       cmp      rsi, rcx
00000000077dbb29: 4889fe                       mov      rsi, rdi
00000000077dbb2c: 72e2                         jb       0x77dbb10
00000000077dbb2e: 498912                       mov      qword ptr [r10], rdx
00000000077dbb31: 8b5304                       mov      edx, dword ptr [rbx + 4]
00000000077dbb34: 49c70300000000               mov      qword ptr [r11], 0
00000000077dbb3b: b908000000                   mov      ecx, 8
00000000077dbb40: 89d6                         mov      esi, edx
00000000077dbb42: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077dbb50: 4863fe                       movsxd   rdi, esi
00000000077dbb53: 4869f767666666               imul     rsi, rdi, 0x66666667
00000000077dbb5a: 4989f0                       mov      r8, rsi
00000000077dbb5d: 49c1e83f                     shr      r8, 0x3f
00000000077dbb61: 48c1fe22                     sar      rsi, 0x22
00000000077dbb65: 4401c6                       add      esi, r8d
00000000077dbb68: 448d0436                     lea      r8d, [rsi + rsi]
00000000077dbb6c: 478d0480                     lea      r8d, [r8 + r8*4]
00000000077dbb70: 4189f9                       mov      r9d, edi
00000000077dbb73: 4529c1                       sub      r9d, r8d
00000000077dbb76: 4d63c1                       movsxd   r8, r9d
00000000077dbb79: 450fb6440023                 movzx    r8d, byte ptr [r8 + rax + 0x23]
00000000077dbb7f: 4588040b                     mov      byte ptr [r11 + rcx], r8b
00000000077dbb83: 48ffc1                       inc      rcx
00000000077dbb86: 83c709                       add      edi, 9
00000000077dbb89: 83ff12                       cmp      edi, 0x12
00000000077dbb8c: 77c2                         ja       0x77dbb50
00000000077dbb8e: 85d2                         test     edx, edx
00000000077dbb90: 7908                         jns      0x77dbb9a
00000000077dbb92: 41c6040b2d                   mov      byte ptr [r11 + rcx], 0x2d
00000000077dbb97: 48ffc1                       inc      rcx
00000000077dbb9a: 498d4308                     lea      rax, [r11 + 8]
00000000077dbb9e: 41c6040b00                   mov      byte ptr [r11 + rcx], 0
00000000077dbba3: 4883f90a                     cmp      rcx, 0xa
00000000077dbba7: 7c34                         jl       0x77dbbdd
00000000077dbba9: 4c01d9                       add      rcx, r11
00000000077dbbac: 48ffc9                       dec      rcx
00000000077dbbaf: 498d5309                     lea      rdx, [r11 + 9]
00000000077dbbb3: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000077dbbc0: 0fb631                       movzx    esi, byte ptr [rcx]
00000000077dbbc3: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
00000000077dbbc7: 408839                       mov      byte ptr [rcx], dil
00000000077dbbca: 408872ff                     mov      byte ptr [rdx - 1], sil
00000000077dbbce: 48ffc9                       dec      rcx
00000000077dbbd1: 488d7201                     lea      rsi, [rdx + 1]
00000000077dbbd5: 4839ca                       cmp      rdx, rcx
00000000077dbbd8: 4889f2                       mov      rdx, rsi
00000000077dbbdb: 72e3                         jb       0x77dbbc0
00000000077dbbdd: 498903                       mov      qword ptr [r11], rax
00000000077dbbe0: 4c899540feffff               mov      qword ptr [rbp - 0x1c0], r10
00000000077dbbe7: 4c899d48feffff               mov      qword ptr [rbp - 0x1b8], r11
00000000077dbbee: 0f57c0                       xorps    xmm0, xmm0
00000000077dbbf1: 0f298550feffff               movaps   xmmword ptr [rbp - 0x1b0], xmm0
00000000077dbbf8: 0f298560feffff               movaps   xmmword ptr [rbp - 0x1a0], xmm0
00000000077dbbff: 0f298570feffff               movaps   xmmword ptr [rbp - 0x190], xmm0
00000000077dbc06: 0f298580feffff               movaps   xmmword ptr [rbp - 0x180], xmm0
00000000077dbc0d: 0f298590feffff               movaps   xmmword ptr [rbp - 0x170], xmm0
00000000077dbc14: 0f2985a0feffff               movaps   xmmword ptr [rbp - 0x160], xmm0
00000000077dbc1b: 0f2985b0feffff               movaps   xmmword ptr [rbp - 0x150], xmm0
00000000077dbc22: 488d35ae0a79f9               lea      rsi, [rip - 0x686f552]
00000000077dbc29: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077dbc30: 488bbd68ffffff               mov      rdi, qword ptr [rbp - 0x98]
00000000077dbc37: e8b45c9301                   call     0x91118f0
00000000077dbc3c: 488d05fdfa4e03               lea      rax, [rip + 0x34efafd]
00000000077dbc43: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dbc46: 0f8ccc010000                 jl       0x77dbe18
00000000077dbc4c: 488d05f1fa4e03               lea      rax, [rip + 0x34efaf1]
00000000077dbc53: 8b00                         mov      eax, dword ptr [rax]
00000000077dbc55: 89c1                         mov      ecx, eax
00000000077dbc57: f7d1                         not      ecx
00000000077dbc59: 0fafc8                       imul     ecx, eax
00000000077dbc5c: 83e101                       and      ecx, 1
00000000077dbc5f: 0f85f5010000                 jne      0x77dbe5a
00000000077dbc65: e9ae010000                   jmp      0x77dbe18
00000000077dbc6a: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dbc6e: 488901                       mov      qword ptr [rcx], rax
00000000077dbc71: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dbc75: 8910                         mov      dword ptr [rax], edx
00000000077dbc77: 488d05c2fa4e03               lea      rax, [rip + 0x34efac2]
00000000077dbc7e: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dbc81: 7c4d                         jl       0x77dbcd0
00000000077dbc83: 488d05bafa4e03               lea      rax, [rip + 0x34efaba]
00000000077dbc8a: 8b00                         mov      eax, dword ptr [rax]
00000000077dbc8c: 89c1                         mov      ecx, eax
00000000077dbc8e: f7d1                         not      ecx
00000000077dbc90: 0fafc8                       imul     ecx, eax
00000000077dbc93: 83e101                       and      ecx, 1
00000000077dbc96: 7438                         je       0x77dbcd0
00000000077dbc98: 488b9d68ffffff               mov      rbx, qword ptr [rbp - 0x98]
00000000077dbc9f: 4889df                       mov      rdi, rbx
00000000077dbca2: e889599301                   call     0x9111630
00000000077dbca7: 4889df                       mov      rdi, rbx
00000000077dbcaa: e881599301                   call     0x9111630
00000000077dbcaf: 488d058afa4e03               lea      rax, [rip + 0x34efa8a]
00000000077dbcb6: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dbcb9: 7c15                         jl       0x77dbcd0
00000000077dbcbb: 488d0582fa4e03               lea      rax, [rip + 0x34efa82]
00000000077dbcc2: 8b00                         mov      eax, dword ptr [rax]
00000000077dbcc4: 89c1                         mov      ecx, eax
00000000077dbcc6: f7d1                         not      ecx
00000000077dbcc8: 0fafc8                       imul     ecx, eax
00000000077dbccb: 83e101                       and      ecx, 1
00000000077dbcce: 75cf                         jne      0x77dbc9f
00000000077dbcd0: 488bbd68ffffff               mov      rdi, qword ptr [rbp - 0x98]
00000000077dbcd7: e854599301                   call     0x9111630
00000000077dbcdc: 488d055dfa4e03               lea      rax, [rip + 0x34efa5d]
00000000077dbce3: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dbce6: 7c5c                         jl       0x77dbd44
00000000077dbce8: 488d0555fa4e03               lea      rax, [rip + 0x34efa55]
00000000077dbcef: 8b00                         mov      eax, dword ptr [rax]
00000000077dbcf1: 89c1                         mov      ecx, eax
00000000077dbcf3: f7d1                         not      ecx
00000000077dbcf5: 0fafc8                       imul     ecx, eax
00000000077dbcf8: 83e101                       and      ecx, 1
00000000077dbcfb: 7447                         je       0x77dbd44
00000000077dbcfd: 488b9d68ffffff               mov      rbx, qword ptr [rbp - 0x98]
00000000077dbd04: 4889df                       mov      rdi, rbx
00000000077dbd07: e824599301                   call     0x9111630
00000000077dbd0c: 4889df                       mov      rdi, rbx
00000000077dbd0f: e81c599301                   call     0x9111630
00000000077dbd14: 488d0525fa4e03               lea      rax, [rip + 0x34efa25]
00000000077dbd1b: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dbd1e: 7c24                         jl       0x77dbd44
00000000077dbd20: 488d051dfa4e03               lea      rax, [rip + 0x34efa1d]
00000000077dbd27: 8b00                         mov      eax, dword ptr [rax]
00000000077dbd29: 89c1                         mov      ecx, eax
00000000077dbd2b: f7d1                         not      ecx
00000000077dbd2d: 0fafc8                       imul     ecx, eax
00000000077dbd30: 83e101                       and      ecx, 1
00000000077dbd33: 75cf                         jne      0x77dbd04
00000000077dbd35: eb0d                         jmp      0x77dbd44
00000000077dbd37: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dbd3b: 488901                       mov      qword ptr [rcx], rax
00000000077dbd3e: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dbd42: 8910                         mov      dword ptr [rax], edx
00000000077dbd44: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077dbd4b: f60001                       test     byte ptr [rax], 1
00000000077dbd4e: 7410                         je       0x77dbd60
00000000077dbd50: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077dbd57: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dbd5b: e8e0e3d2fc                   call     0x450a140
00000000077dbd60: 488d05d9f94e03               lea      rax, [rip + 0x34ef9d9]
00000000077dbd67: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dbd6a: 7c6d                         jl       0x77dbdd9
00000000077dbd6c: 488d05d1f94e03               lea      rax, [rip + 0x34ef9d1]
00000000077dbd73: 8b00                         mov      eax, dword ptr [rax]
00000000077dbd75: 89c1                         mov      ecx, eax
00000000077dbd77: f7d1                         not      ecx
00000000077dbd79: 0fafc8                       imul     ecx, eax
00000000077dbd7c: 83e101                       and      ecx, 1
00000000077dbd7f: 7458                         je       0x77dbdd9
00000000077dbd81: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077dbd88: f60001                       test     byte ptr [rax], 1
00000000077dbd8b: 74b7                         je       0x77dbd44
00000000077dbd8d: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077dbd94: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dbd98: e8a3e3d2fc                   call     0x450a140
00000000077dbd9d: eba5                         jmp      0x77dbd44
00000000077dbd9f: eb2b                         jmp      0x77dbdcc
00000000077dbda1: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dbda5: 488901                       mov      qword ptr [rcx], rax
00000000077dbda8: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dbdac: 8910                         mov      dword ptr [rax], edx
00000000077dbdae: f60301                       test     byte ptr [rbx], 1
00000000077dbdb1: 0f84bcf8ffff                 je       0x77db673
00000000077dbdb7: 488b8558ffffff               mov      rax, qword ptr [rbp - 0xa8]
00000000077dbdbe: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077dbdc2: e879e3d2fc                   call     0x450a140
00000000077dbdc7: e9a7f8ffff                   jmp      0x77db673
00000000077dbdcc: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dbdd0: 488901                       mov      qword ptr [rcx], rax
00000000077dbdd3: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dbdd7: 8910                         mov      dword ptr [rax], edx
00000000077dbdd9: 488b5db0                     mov      rbx, qword ptr [rbp - 0x50]
00000000077dbddd: 4889df                       mov      rdi, rbx
00000000077dbde0: e86b3effff                   call     0x77cfc50
00000000077dbde5: 488d0554f94e03               lea      rax, [rip + 0x34ef954]
00000000077dbdec: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dbdef: 0f8c7ef8ffff                 jl       0x77db673
00000000077dbdf5: 488d0548f94e03               lea      rax, [rip + 0x34ef948]
00000000077dbdfc: 8b00                         mov      eax, dword ptr [rax]
00000000077dbdfe: 89c1                         mov      ecx, eax
00000000077dbe00: f7d1                         not      ecx
00000000077dbe02: 0fafc8                       imul     ecx, eax
00000000077dbe05: 83e101                       and      ecx, 1
00000000077dbe08: 0f8465f8ffff                 je       0x77db673
00000000077dbe0e: 4889df                       mov      rdi, rbx
00000000077dbe11: e83a3effff                   call     0x77cfc50
00000000077dbe16: ebc5                         jmp      0x77dbddd
00000000077dbe18: 488bbd68ffffff               mov      rdi, qword ptr [rbp - 0x98]
00000000077dbe1f: e80c589301                   call     0x9111630
00000000077dbe24: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077dbe2b: f60001                       test     byte ptr [rax], 1
00000000077dbe2e: 7409                         je       0x77dbe39
00000000077dbe30: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dbe34: e807e3d2fc                   call     0x450a140
00000000077dbe39: 488d0500f94e03               lea      rax, [rip + 0x34ef900]
00000000077dbe40: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dbe43: 7c3f                         jl       0x77dbe84
00000000077dbe45: 488d05f8f84e03               lea      rax, [rip + 0x34ef8f8]
00000000077dbe4c: 8b00                         mov      eax, dword ptr [rax]
00000000077dbe4e: 89c1                         mov      ecx, eax
00000000077dbe50: f7d1                         not      ecx
00000000077dbe52: 0fafc8                       imul     ecx, eax
00000000077dbe55: 83e101                       and      ecx, 1
00000000077dbe58: 742a                         je       0x77dbe84
00000000077dbe5a: 488bbd68ffffff               mov      rdi, qword ptr [rbp - 0x98]
00000000077dbe61: e8ca579301                   call     0x9111630
00000000077dbe66: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077dbe6d: f60001                       test     byte ptr [rax], 1
00000000077dbe70: 74a6                         je       0x77dbe18
00000000077dbe72: 488b8578ffffff               mov      rax, qword ptr [rbp - 0x88]
00000000077dbe79: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dbe7d: e8bee2d2fc                   call     0x450a140
00000000077dbe82: eb94                         jmp      0x77dbe18
00000000077dbe84: 8b4304                       mov      eax, dword ptr [rbx + 4]
00000000077dbe87: 3dcffeffff                   cmp      eax, 0xfffffecf
00000000077dbe8c: 0f85be020000                 jne      0x77dc150
00000000077dbe92: e8c9b22100                   call     0x79f7160
00000000077dbe97: 84c0                         test     al, al
00000000077dbe99: 0f84aa020000                 je       0x77dc149
00000000077dbe9f: 488b8528ffffff               mov      rax, qword ptr [rbp - 0xd8]
00000000077dbea6: 803800                       cmp      byte ptr [rax], 0
00000000077dbea9: 488b5db0                     mov      rbx, qword ptr [rbp - 0x50]
00000000077dbead: 7417                         je       0x77dbec6
00000000077dbeaf: e82c0686fe                   call     0x603c4e0
00000000077dbeb4: 488b8d08ffffff               mov      rcx, qword ptr [rbp - 0xf8]
00000000077dbebb: 488b31                       mov      rsi, qword ptr [rcx]
00000000077dbebe: 4889c7                       mov      rdi, rax
00000000077dbec1: e83a2486fe                   call     0x603e300
00000000077dbec6: e8150686fe                   call     0x603c4e0
00000000077dbecb: 488b08                       mov      rcx, qword ptr [rax]
00000000077dbece: 4889c7                       mov      rdi, rax
00000000077dbed1: ff5118                       call     qword ptr [rcx + 0x18]
00000000077dbed4: 488b08                       mov      rcx, qword ptr [rax]
00000000077dbed7: 4889c7                       mov      rdi, rax
00000000077dbeda: ff91e0000000                 call     qword ptr [rcx + 0xe0]
00000000077dbee0: e8fb0586fe                   call     0x603c4e0
00000000077dbee5: 488b08                       mov      rcx, qword ptr [rax]
00000000077dbee8: 4889c7                       mov      rdi, rax
00000000077dbeeb: ff5118                       call     qword ptr [rcx + 0x18]
00000000077dbeee: 488d0d4bf84e03               lea      rcx, [rip + 0x34ef84b]
00000000077dbef5: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077dbef8: 7c35                         jl       0x77dbf2f
00000000077dbefa: 488d0d43f84e03               lea      rcx, [rip + 0x34ef843]
00000000077dbf01: 8b09                         mov      ecx, dword ptr [rcx]
00000000077dbf03: 89ca                         mov      edx, ecx
00000000077dbf05: f7d2                         not      edx
00000000077dbf07: 0fafd1                       imul     edx, ecx
00000000077dbf0a: 83e201                       and      edx, 1
00000000077dbf0d: 7420                         je       0x77dbf2f
00000000077dbf0f: 4983c508                     add      r13, 8
00000000077dbf13: 0f57c0                       xorps    xmm0, xmm0
00000000077dbf16: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
00000000077dbf20: 410f114500                   movups   xmmword ptr [r13], xmm0
00000000077dbf25: 49c7451000000000             mov      qword ptr [r13 + 0x10], 0
00000000077dbf2d: ebf1                         jmp      0x77dbf20
00000000077dbf2f: 4d8d6508                     lea      r12, [r13 + 8]
00000000077dbf33: 0f57c0                       xorps    xmm0, xmm0
00000000077dbf36: 410f114511                   movups   xmmword ptr [r13 + 0x11], xmm0
00000000077dbf3b: 410f114508                   movups   xmmword ptr [r13 + 8], xmm0
00000000077dbf40: 4d897d00                     mov      qword ptr [r13], r15
00000000077dbf44: 41c7452400000000             mov      dword ptr [r13 + 0x24], 0
00000000077dbf4c: 4c8bb540ffffff               mov      r14, qword ptr [rbp - 0xc0]
00000000077dbf53: 4c89f7                       mov      rdi, r14
00000000077dbf56: 4889c6                       mov      rsi, rax
00000000077dbf59: 488b55d0                     mov      rdx, qword ptr [rbp - 0x30]
00000000077dbf5d: 488b4db8                     mov      rcx, qword ptr [rbp - 0x48]
00000000077dbf61: 4d89e8                       mov      r8, r13
00000000077dbf64: e8670a0000                   call     0x77dc9d0
00000000077dbf69: 498b06                       mov      rax, qword ptr [r14]
00000000077dbf6c: 488903                       mov      qword ptr [rbx], rax
00000000077dbf6f: 488d7b08                     lea      rdi, [rbx + 8]
00000000077dbf73: 498d5e08                     lea      rbx, [r14 + 8]
00000000077dbf77: 4889de                       mov      rsi, rbx
00000000077dbf7a: e8311ed3fc                   call     0x450ddb0
00000000077dbf7f: 498b4e20                     mov      rcx, qword ptr [r14 + 0x20]
00000000077dbf83: 498b4628                     mov      rax, qword ptr [r14 + 0x28]
00000000077dbf87: 4885c0                       test     rax, rax
00000000077dbf8a: 7405                         je       0x77dbf91
00000000077dbf8c: f048ff4008                   lock inc qword ptr [rax + 8]
00000000077dbf91: 488b55b0                     mov      rdx, qword ptr [rbp - 0x50]
00000000077dbf95: 48894a20                     mov      qword ptr [rdx + 0x20], rcx
00000000077dbf99: 4c8b7228                     mov      r14, qword ptr [rdx + 0x28]
00000000077dbf9d: 48894228                     mov      qword ptr [rdx + 0x28], rax
00000000077dbfa1: 4d85f6                       test     r14, r14
00000000077dbfa4: 7423                         je       0x77dbfc9
00000000077dbfa6: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077dbfad: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077dbfb3: 4885c0                       test     rax, rax
00000000077dbfb6: 7511                         jne      0x77dbfc9
00000000077dbfb8: 498b06                       mov      rax, qword ptr [r14]
00000000077dbfbb: 4c89f7                       mov      rdi, r14
00000000077dbfbe: ff5010                       call     qword ptr [rax + 0x10]
00000000077dbfc1: 4c89f7                       mov      rdi, r14
00000000077dbfc4: e807b2d5fc                   call     0x45371d0
00000000077dbfc9: 488d0570f74e03               lea      rax, [rip + 0x34ef770]
00000000077dbfd0: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dbfd3: 7c72                         jl       0x77dc047
00000000077dbfd5: 488d0568f74e03               lea      rax, [rip + 0x34ef768]
00000000077dbfdc: 8b00                         mov      eax, dword ptr [rax]
00000000077dbfde: 89c1                         mov      ecx, eax
00000000077dbfe0: f7d1                         not      ecx
00000000077dbfe2: 0fafc8                       imul     ecx, eax
00000000077dbfe5: 83e101                       and      ecx, 1
00000000077dbfe8: 0f85cd000000                 jne      0x77dc0bb
00000000077dbfee: eb57                         jmp      0x77dc047
00000000077dbff0: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dbff4: 488901                       mov      qword ptr [rcx], rax
00000000077dbff7: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dbffb: 8910                         mov      dword ptr [rax], edx
00000000077dbffd: 4c89f7                       mov      rdi, r14
00000000077dc000: e84b3cffff                   call     0x77cfc50
00000000077dc005: eb0d                         jmp      0x77dc014
00000000077dc007: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dc00b: 488901                       mov      qword ptr [rcx], rax
00000000077dc00e: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dc012: 8910                         mov      dword ptr [rax], edx
00000000077dc014: 488d0525f74e03               lea      rax, [rip + 0x34ef725]
00000000077dc01b: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dc01e: 0f8cf2060000                 jl       0x77dc716
00000000077dc024: 488d0519f74e03               lea      rax, [rip + 0x34ef719]
00000000077dc02b: 8b00                         mov      eax, dword ptr [rax]
00000000077dc02d: 89c1                         mov      ecx, eax
00000000077dc02f: f7d1                         not      ecx
00000000077dc031: 0fafc8                       imul     ecx, eax
00000000077dc034: 83e101                       and      ecx, 1
00000000077dc037: 0f8512070000                 jne      0x77dc74f
00000000077dc03d: e9d4060000                   jmp      0x77dc716
00000000077dc042: e985fdffff                   jmp      0x77dbdcc
00000000077dc047: 488b8540ffffff               mov      rax, qword ptr [rbp - 0xc0]
00000000077dc04e: 4c8b7028                     mov      r14, qword ptr [rax + 0x28]
00000000077dc052: 4d85f6                       test     r14, r14
00000000077dc055: 741d                         je       0x77dc074
00000000077dc057: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077dc05e: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077dc064: 4885c0                       test     rax, rax
00000000077dc067: 488b8540ffffff               mov      rax, qword ptr [rbp - 0xc0]
00000000077dc06e: 0f8497000000                 je       0x77dc10b
00000000077dc074: f60301                       test     byte ptr [rbx], 1
00000000077dc077: 7409                         je       0x77dc082
00000000077dc079: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077dc07d: e8bee0d2fc                   call     0x450a140
00000000077dc082: 41f6042401                   test     byte ptr [r12], 1
00000000077dc087: 7409                         je       0x77dc092
00000000077dc089: 498b7d18                     mov      rdi, qword ptr [r13 + 0x18]
00000000077dc08d: e8aee0d2fc                   call     0x450a140
00000000077dc092: 488d05a7f64e03               lea      rax, [rip + 0x34ef6a7]
00000000077dc099: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dc09c: 0f8ca7000000                 jl       0x77dc149
00000000077dc0a2: 488d059bf64e03               lea      rax, [rip + 0x34ef69b]
00000000077dc0a9: 8b00                         mov      eax, dword ptr [rax]
00000000077dc0ab: 89c1                         mov      ecx, eax
00000000077dc0ad: f7d1                         not      ecx
00000000077dc0af: 0fafc8                       imul     ecx, eax
00000000077dc0b2: 83e101                       and      ecx, 1
00000000077dc0b5: 0f848e000000                 je       0x77dc149
00000000077dc0bb: 488b8540ffffff               mov      rax, qword ptr [rbp - 0xc0]
00000000077dc0c2: 4c8b7028                     mov      r14, qword ptr [rax + 0x28]
00000000077dc0c6: 4d85f6                       test     r14, r14
00000000077dc0c9: 7412                         je       0x77dc0dd
00000000077dc0cb: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077dc0d2: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077dc0d8: 4885c0                       test     rax, rax
00000000077dc0db: 7454                         je       0x77dc131
00000000077dc0dd: f60301                       test     byte ptr [rbx], 1
00000000077dc0e0: 7410                         je       0x77dc0f2
00000000077dc0e2: 488b8540ffffff               mov      rax, qword ptr [rbp - 0xc0]
00000000077dc0e9: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077dc0ed: e84ee0d2fc                   call     0x450a140
00000000077dc0f2: 41f6042401                   test     byte ptr [r12], 1
00000000077dc0f7: 0f844affffff                 je       0x77dc047
00000000077dc0fd: 498b7d18                     mov      rdi, qword ptr [r13 + 0x18]
00000000077dc101: e83ae0d2fc                   call     0x450a140
00000000077dc106: e93cffffff                   jmp      0x77dc047
00000000077dc10b: 498b06                       mov      rax, qword ptr [r14]
00000000077dc10e: 4c89f7                       mov      rdi, r14
00000000077dc111: ff5010                       call     qword ptr [rax + 0x10]
00000000077dc114: 4c89f7                       mov      rdi, r14
00000000077dc117: e8b4b0d5fc                   call     0x45371d0
00000000077dc11c: 488b8540ffffff               mov      rax, qword ptr [rbp - 0xc0]
00000000077dc123: f60301                       test     byte ptr [rbx], 1
00000000077dc126: 0f854dffffff                 jne      0x77dc079
00000000077dc12c: e951ffffff                   jmp      0x77dc082
00000000077dc131: 498b06                       mov      rax, qword ptr [r14]
00000000077dc134: 4c89f7                       mov      rdi, r14
00000000077dc137: ff5010                       call     qword ptr [rax + 0x10]
00000000077dc13a: 4c89f7                       mov      rdi, r14
00000000077dc13d: e88eb0d5fc                   call     0x45371d0
00000000077dc142: f60301                       test     byte ptr [rbx], 1
00000000077dc145: 759b                         jne      0x77dc0e2
00000000077dc147: eba9                         jmp      0x77dc0f2
00000000077dc149: 488b5db0                     mov      rbx, qword ptr [rbp - 0x50]
00000000077dc14d: 8b4304                       mov      eax, dword ptr [rbx + 4]
00000000077dc150: 3dd3feffff                   cmp      eax, 0xfffffed3
00000000077dc155: 0f85d6030000                 jne      0x77dc531
00000000077dc15b: e8800386fe                   call     0x603c4e0
00000000077dc160: 488b4b20                     mov      rcx, qword ptr [rbx + 0x20]
00000000077dc164: 488b5120                     mov      rdx, qword ptr [rcx + 0x20]
00000000077dc168: 4889d1                       mov      rcx, rdx
00000000077dc16b: 4885d2                       test     rdx, rdx
00000000077dc16e: 750e                         jne      0x77dc17e
00000000077dc170: 488d0d79fc5103               lea      rcx, [rip + 0x351fc79]
00000000077dc177: 488b09                       mov      rcx, qword ptr [rcx]
00000000077dc17a: 488b4920                     mov      rcx, qword ptr [rcx + 0x20]
00000000077dc17e: 488b4918                     mov      rcx, qword ptr [rcx + 0x18]
00000000077dc182: 4885c9                       test     rcx, rcx
00000000077dc185: 750e                         jne      0x77dc195
00000000077dc187: 488d0d3afc5103               lea      rcx, [rip + 0x351fc3a]
00000000077dc18e: 488b09                       mov      rcx, qword ptr [rcx]
00000000077dc191: 488b4918                     mov      rcx, qword ptr [rcx + 0x18]
00000000077dc195: 4889d6                       mov      rsi, rdx
00000000077dc198: 4885d2                       test     rdx, rdx
00000000077dc19b: 750e                         jne      0x77dc1ab
00000000077dc19d: 488d354cfc5103               lea      rsi, [rip + 0x351fc4c]
00000000077dc1a4: 488b36                       mov      rsi, qword ptr [rsi]
00000000077dc1a7: 488b7620                     mov      rsi, qword ptr [rsi + 0x20]
00000000077dc1ab: 4c8b4610                     mov      r8, qword ptr [rsi + 0x10]
00000000077dc1af: 4d85c0                       test     r8, r8
00000000077dc1b2: 0f8465020000                 je       0x77dc41d
00000000077dc1b8: 4885d2                       test     rdx, rdx
00000000077dc1bb: 0f8473020000                 je       0x77dc434
00000000077dc1c1: 4c8b4a08                     mov      r9, qword ptr [rdx + 8]
00000000077dc1c5: 4d85c9                       test     r9, r9
00000000077dc1c8: 750e                         jne      0x77dc1d8
00000000077dc1ca: 488d15f7fb5103               lea      rdx, [rip + 0x351fbf7]
00000000077dc1d1: 488b12                       mov      rdx, qword ptr [rdx]
00000000077dc1d4: 4c8b4a08                     mov      r9, qword ptr [rdx + 8]
00000000077dc1d8: 4889c6                       mov      rsi, rax
00000000077dc1db: ba01000000                   mov      edx, 1
00000000077dc1e0: e8cb26ffff                   call     0x77ce8b0
00000000077dc1e5: 488b8528ffffff               mov      rax, qword ptr [rbp - 0xd8]
00000000077dc1ec: 803800                       cmp      byte ptr [rax], 0
00000000077dc1ef: 7417                         je       0x77dc208
00000000077dc1f1: e8ea0286fe                   call     0x603c4e0
00000000077dc1f6: 488b8d08ffffff               mov      rcx, qword ptr [rbp - 0xf8]
00000000077dc1fd: 488b31                       mov      rsi, qword ptr [rcx]
00000000077dc200: 4889c7                       mov      rdi, rax
00000000077dc203: e8f82086fe                   call     0x603e300
00000000077dc208: e8d30286fe                   call     0x603c4e0
00000000077dc20d: 488b08                       mov      rcx, qword ptr [rax]
00000000077dc210: 4889c7                       mov      rdi, rax
00000000077dc213: ff5118                       call     qword ptr [rcx + 0x18]
00000000077dc216: 488b08                       mov      rcx, qword ptr [rax]
00000000077dc219: 4889c7                       mov      rdi, rax
00000000077dc21c: ff91e0000000                 call     qword ptr [rcx + 0xe0]
00000000077dc222: e8b90286fe                   call     0x603c4e0
00000000077dc227: 488b08                       mov      rcx, qword ptr [rax]
00000000077dc22a: 4889c7                       mov      rdi, rax
00000000077dc22d: ff5118                       call     qword ptr [rcx + 0x18]
00000000077dc230: 488b8d20ffffff               mov      rcx, qword ptr [rbp - 0xe0]
00000000077dc237: 4c8d6108                     lea      r12, [rcx + 8]
00000000077dc23b: c7412400000000               mov      dword ptr [rcx + 0x24], 0
00000000077dc242: 4c8939                       mov      qword ptr [rcx], r15
00000000077dc245: 4989cf                       mov      r15, rcx
00000000077dc248: 0f57c0                       xorps    xmm0, xmm0
00000000077dc24b: 0f114108                     movups   xmmword ptr [rcx + 8], xmm0
00000000077dc24f: 0f114111                     movups   xmmword ptr [rcx + 0x11], xmm0
00000000077dc253: 4c8bb560ffffff               mov      r14, qword ptr [rbp - 0xa0]
00000000077dc25a: 4c89f7                       mov      rdi, r14
00000000077dc25d: 4889c6                       mov      rsi, rax
00000000077dc260: 488b55d0                     mov      rdx, qword ptr [rbp - 0x30]
00000000077dc264: 488b4db8                     mov      rcx, qword ptr [rbp - 0x48]
00000000077dc268: 4d89f8                       mov      r8, r15
00000000077dc26b: e860070000                   call     0x77dc9d0
00000000077dc270: 498b06                       mov      rax, qword ptr [r14]
00000000077dc273: 488903                       mov      qword ptr [rbx], rax
00000000077dc276: 488d7b08                     lea      rdi, [rbx + 8]
00000000077dc27a: 498d5e08                     lea      rbx, [r14 + 8]
00000000077dc27e: 4889de                       mov      rsi, rbx
00000000077dc281: e82a1bd3fc                   call     0x450ddb0
00000000077dc286: 498b4e20                     mov      rcx, qword ptr [r14 + 0x20]
00000000077dc28a: 498b4628                     mov      rax, qword ptr [r14 + 0x28]
00000000077dc28e: 4885c0                       test     rax, rax
00000000077dc291: 7405                         je       0x77dc298
00000000077dc293: f048ff4008                   lock inc qword ptr [rax + 8]
00000000077dc298: 488b55b0                     mov      rdx, qword ptr [rbp - 0x50]
00000000077dc29c: 48894a20                     mov      qword ptr [rdx + 0x20], rcx
00000000077dc2a0: 4c8b7228                     mov      r14, qword ptr [rdx + 0x28]
00000000077dc2a4: 48894228                     mov      qword ptr [rdx + 0x28], rax
00000000077dc2a8: 4d85f6                       test     r14, r14
00000000077dc2ab: 743c                         je       0x77dc2e9
00000000077dc2ad: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077dc2b4: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077dc2ba: 4885c0                       test     rax, rax
00000000077dc2bd: 752a                         jne      0x77dc2e9
00000000077dc2bf: 498b06                       mov      rax, qword ptr [r14]
00000000077dc2c2: 4c89f7                       mov      rdi, r14
00000000077dc2c5: ff5010                       call     qword ptr [rax + 0x10]
00000000077dc2c8: 4c89f7                       mov      rdi, r14
00000000077dc2cb: e800afd5fc                   call     0x45371d0
00000000077dc2d0: eb17                         jmp      0x77dc2e9
00000000077dc2d2: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077dc2e0: 498b7f18                     mov      rdi, qword ptr [r15 + 0x18]
00000000077dc2e4: e857ded2fc                   call     0x450a140
00000000077dc2e9: 488b8d60ffffff               mov      rcx, qword ptr [rbp - 0xa0]
00000000077dc2f0: 4c8b7128                     mov      r14, qword ptr [rcx + 0x28]
00000000077dc2f4: 4d85f6                       test     r14, r14
00000000077dc2f7: 7416                         je       0x77dc30f
00000000077dc2f9: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077dc300: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077dc306: 4885c0                       test     rax, rax
00000000077dc309: 0f8491000000                 je       0x77dc3a0
00000000077dc30f: f60301                       test     byte ptr [rbx], 1
00000000077dc312: 7409                         je       0x77dc31d
00000000077dc314: 488b7918                     mov      rdi, qword ptr [rcx + 0x18]
00000000077dc318: e823ded2fc                   call     0x450a140
00000000077dc31d: 41f6042401                   test     byte ptr [r12], 1
00000000077dc322: 7409                         je       0x77dc32d
00000000077dc324: 498b7f18                     mov      rdi, qword ptr [r15 + 0x18]
00000000077dc328: e813ded2fc                   call     0x450a140
00000000077dc32d: 488d050cf44e03               lea      rax, [rip + 0x34ef40c]
00000000077dc334: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dc337: 0f8cb2000000                 jl       0x77dc3ef
00000000077dc33d: 488d0500f44e03               lea      rax, [rip + 0x34ef400]
00000000077dc344: 8b00                         mov      eax, dword ptr [rax]
00000000077dc346: 89c1                         mov      ecx, eax
00000000077dc348: f7d1                         not      ecx
00000000077dc34a: 0fafc8                       imul     ecx, eax
00000000077dc34d: 83e101                       and      ecx, 1
00000000077dc350: 0f8499000000                 je       0x77dc3ef
00000000077dc356: 488b8d60ffffff               mov      rcx, qword ptr [rbp - 0xa0]
00000000077dc35d: 4c8b7128                     mov      r14, qword ptr [rcx + 0x28]
00000000077dc361: 4d85f6                       test     r14, r14
00000000077dc364: 7412                         je       0x77dc378
00000000077dc366: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077dc36d: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077dc373: 4885c0                       test     rax, rax
00000000077dc376: 7458                         je       0x77dc3d0
00000000077dc378: f60301                       test     byte ptr [rbx], 1
00000000077dc37b: 7410                         je       0x77dc38d
00000000077dc37d: 488b7918                     mov      rdi, qword ptr [rcx + 0x18]
00000000077dc381: e8baddd2fc                   call     0x450a140
00000000077dc386: 488b8d60ffffff               mov      rcx, qword ptr [rbp - 0xa0]
00000000077dc38d: 41f6042401                   test     byte ptr [r12], 1
00000000077dc392: 0f8458ffffff                 je       0x77dc2f0
00000000077dc398: e943ffffff                   jmp      0x77dc2e0
00000000077dc39d: 0f1f00                       nop      dword ptr [rax]
00000000077dc3a0: 498b06                       mov      rax, qword ptr [r14]
00000000077dc3a3: 4c89f7                       mov      rdi, r14
00000000077dc3a6: ff5010                       call     qword ptr [rax + 0x10]
00000000077dc3a9: 4c89f7                       mov      rdi, r14
00000000077dc3ac: e81faed5fc                   call     0x45371d0
00000000077dc3b1: 488b8d60ffffff               mov      rcx, qword ptr [rbp - 0xa0]
00000000077dc3b8: f60301                       test     byte ptr [rbx], 1
00000000077dc3bb: 0f8553ffffff                 jne      0x77dc314
00000000077dc3c1: e957ffffff                   jmp      0x77dc31d
00000000077dc3c6: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
00000000077dc3d0: 498b06                       mov      rax, qword ptr [r14]
00000000077dc3d3: 4c89f7                       mov      rdi, r14
00000000077dc3d6: ff5010                       call     qword ptr [rax + 0x10]
00000000077dc3d9: 4c89f7                       mov      rdi, r14
00000000077dc3dc: e8efadd5fc                   call     0x45371d0
00000000077dc3e1: 488b8d60ffffff               mov      rcx, qword ptr [rbp - 0xa0]
00000000077dc3e8: f60301                       test     byte ptr [rbx], 1
00000000077dc3eb: 7590                         jne      0x77dc37d
00000000077dc3ed: eb9e                         jmp      0x77dc38d
00000000077dc3ef: bf04000000                   mov      edi, 4
00000000077dc3f4: 488b5db0                     mov      rbx, qword ptr [rbp - 0x50]
00000000077dc3f8: e893a89301                   call     0x9116c90
00000000077dc3fd: 85c0                         test     eax, eax
00000000077dc3ff: 0f842c010000                 je       0x77dc531
00000000077dc405: 4c8b7580                     mov      r14, qword ptr [rbp - 0x80]
00000000077dc409: 4c89f7                       mov      rdi, r14
00000000077dc40c: e8bf65bdff                   call     0x73b29d0
00000000077dc411: 41f60601                     test     byte ptr [r14], 1
00000000077dc415: 7430                         je       0x77dc447
00000000077dc417: 498b5610                     mov      rdx, qword ptr [r14 + 0x10]
00000000077dc41b: eb2e                         jmp      0x77dc44b
00000000077dc41d: 488d35a4f95103               lea      rsi, [rip + 0x351f9a4]
00000000077dc424: 488b36                       mov      rsi, qword ptr [rsi]
00000000077dc427: 4c8b4610                     mov      r8, qword ptr [rsi + 0x10]
00000000077dc42b: 4885d2                       test     rdx, rdx
00000000077dc42e: 0f858dfdffff                 jne      0x77dc1c1
00000000077dc434: 488d15b5f95103               lea      rdx, [rip + 0x351f9b5]
00000000077dc43b: 488b12                       mov      rdx, qword ptr [rdx]
00000000077dc43e: 488b5220                     mov      rdx, qword ptr [rdx + 0x20]
00000000077dc442: e97afdffff                   jmp      0x77dc1c1
00000000077dc447: 498d5601                     lea      rdx, [r14 + 1]
00000000077dc44b: 488d0d3a497ff9               lea      rcx, [rip - 0x680b6c6]
00000000077dc452: 4c8d05445061f9               lea      r8, [rip - 0x69eafbc]
00000000077dc459: 4c8bb510ffffff               mov      r14, qword ptr [rbp - 0xf0]
00000000077dc460: 4c89f7                       mov      rdi, r14
00000000077dc463: be04000000                   mov      esi, 4
00000000077dc468: 41b995050000                 mov      r9d, 0x595
00000000077dc46e: 6a00                         push     0
00000000077dc470: 6a00                         push     0
00000000077dc472: e829519301                   call     0x91115a0
00000000077dc477: 4883c410                     add      rsp, 0x10
00000000077dc47b: 0f57c0                       xorps    xmm0, xmm0
00000000077dc47e: 0f2985b0feffff               movaps   xmmword ptr [rbp - 0x150], xmm0
00000000077dc485: 0f2985a0feffff               movaps   xmmword ptr [rbp - 0x160], xmm0
00000000077dc48c: 0f298590feffff               movaps   xmmword ptr [rbp - 0x170], xmm0
00000000077dc493: 0f298580feffff               movaps   xmmword ptr [rbp - 0x180], xmm0
00000000077dc49a: 0f298570feffff               movaps   xmmword ptr [rbp - 0x190], xmm0
00000000077dc4a1: 0f298560feffff               movaps   xmmword ptr [rbp - 0x1a0], xmm0
00000000077dc4a8: 0f298550feffff               movaps   xmmword ptr [rbp - 0x1b0], xmm0
00000000077dc4af: 0f298540feffff               movaps   xmmword ptr [rbp - 0x1c0], xmm0
00000000077dc4b6: 488d357c4367f9               lea      rsi, [rip - 0x698bc84]
00000000077dc4bd: 488d9540feffff               lea      rdx, [rbp - 0x1c0]
00000000077dc4c4: 4c89f7                       mov      rdi, r14
00000000077dc4c7: e824549301                   call     0x91118f0
00000000077dc4cc: 4c8b7580                     mov      r14, qword ptr [rbp - 0x80]
00000000077dc4d0: 488bbd10ffffff               mov      rdi, qword ptr [rbp - 0xf0]
00000000077dc4d7: e854519301                   call     0x9111630
00000000077dc4dc: 41f60601                     test     byte ptr [r14], 1
00000000077dc4e0: 740d                         je       0x77dc4ef
00000000077dc4e2: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077dc4e6: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc4ea: e851dcd2fc                   call     0x450a140
00000000077dc4ef: 488d054af24e03               lea      rax, [rip + 0x34ef24a]
00000000077dc4f6: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dc4f9: 7c36                         jl       0x77dc531
00000000077dc4fb: 488d0542f24e03               lea      rax, [rip + 0x34ef242]
00000000077dc502: 8b00                         mov      eax, dword ptr [rax]
00000000077dc504: 89c1                         mov      ecx, eax
00000000077dc506: f7d1                         not      ecx
00000000077dc508: 0fafc8                       imul     ecx, eax
00000000077dc50b: 83e101                       and      ecx, 1
00000000077dc50e: 7421                         je       0x77dc531
00000000077dc510: 488bbd10ffffff               mov      rdi, qword ptr [rbp - 0xf0]
00000000077dc517: e814519301                   call     0x9111630
00000000077dc51c: 4c8b7580                     mov      r14, qword ptr [rbp - 0x80]
00000000077dc520: 41f60601                     test     byte ptr [r14], 1
00000000077dc524: 74aa                         je       0x77dc4d0
00000000077dc526: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077dc52a: e811dcd2fc                   call     0x450a140
00000000077dc52f: eb9f                         jmp      0x77dc4d0
00000000077dc531: e8aaff85fe                   call     0x603c4e0
00000000077dc536: 488b08                       mov      rcx, qword ptr [rax]
00000000077dc539: 4889c7                       mov      rdi, rax
00000000077dc53c: ff5118                       call     qword ptr [rcx + 0x18]
00000000077dc53f: 8b0b                         mov      ecx, dword ptr [rbx]
00000000077dc541: 31d2                         xor      edx, edx
00000000077dc543: 0b4b04                       or       ecx, dword ptr [rbx + 4]
00000000077dc546: 0f94c2                       sete     dl
00000000077dc549: 488b08                       mov      rcx, qword ptr [rax]
00000000077dc54c: 4889c7                       mov      rdi, rax
00000000077dc54f: be01000000                   mov      esi, 1
00000000077dc554: ff91d8000000                 call     qword ptr [rcx + 0xd8]
00000000077dc55a: 488b5da8                     mov      rbx, qword ptr [rbp - 0x58]
00000000077dc55e: 488d7b20                     lea      rdi, [rbx + 0x20]
00000000077dc562: e829b1d5fc                   call     0x4537690
00000000077dc567: f60301                       test     byte ptr [rbx], 1
00000000077dc56a: 7409                         je       0x77dc575
00000000077dc56c: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077dc570: e8cbdbd2fc                   call     0x450a140
00000000077dc575: 488b4588                     mov      rax, qword ptr [rbp - 0x78]
00000000077dc579: f60001                       test     byte ptr [rax], 1
00000000077dc57c: 7409                         je       0x77dc587
00000000077dc57e: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc582: e8b9dbd2fc                   call     0x450a140
00000000077dc587: 488b8570ffffff               mov      rax, qword ptr [rbp - 0x90]
00000000077dc58e: f60001                       test     byte ptr [rax], 1
00000000077dc591: 488b5db0                     mov      rbx, qword ptr [rbp - 0x50]
00000000077dc595: 7409                         je       0x77dc5a0
00000000077dc597: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc59b: e8a0dbd2fc                   call     0x450a140
00000000077dc5a0: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077dc5a4: f60001                       test     byte ptr [rax], 1
00000000077dc5a7: 7409                         je       0x77dc5b2
00000000077dc5a9: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc5ad: e88edbd2fc                   call     0x450a140
00000000077dc5b2: 488bbd18ffffff               mov      rdi, qword ptr [rbp - 0xe8]
00000000077dc5b9: e8f2fe4f00                   call     0x7cdc4b0
00000000077dc5be: 488b45a0                     mov      rax, qword ptr [rbp - 0x60]
00000000077dc5c2: f60001                       test     byte ptr [rax], 1
00000000077dc5c5: 7409                         je       0x77dc5d0
00000000077dc5c7: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc5cb: e870dbd2fc                   call     0x450a140
00000000077dc5d0: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077dc5d4: f60001                       test     byte ptr [rax], 1
00000000077dc5d7: 7409                         je       0x77dc5e2
00000000077dc5d9: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc5dd: e85edbd2fc                   call     0x450a140
00000000077dc5e2: 488b7dd0                     mov      rdi, qword ptr [rbp - 0x30]
00000000077dc5e6: e8b52d5000                   call     0x7cdf3a0
00000000077dc5eb: 4889d8                       mov      rax, rbx
00000000077dc5ee: 488d65d8                     lea      rsp, [rbp - 0x28]
00000000077dc5f2: 5b                           pop      rbx
00000000077dc5f3: 415c                         pop      r12
00000000077dc5f5: 415d                         pop      r13
00000000077dc5f7: 415e                         pop      r14
00000000077dc5f9: 415f                         pop      r15
00000000077dc5fb: 5d                           pop      rbp
00000000077dc5fc: c3                           ret
00000000077dc5fd: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dc601: 488901                       mov      qword ptr [rcx], rax
00000000077dc604: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dc608: 8910                         mov      dword ptr [rax], edx
00000000077dc60a: 488bbd10ffffff               mov      rdi, qword ptr [rbp - 0xf0]
00000000077dc611: e81a509301                   call     0x9111630
00000000077dc616: eb0d                         jmp      0x77dc625
00000000077dc618: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dc61c: 488901                       mov      qword ptr [rcx], rax
00000000077dc61f: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dc623: 8910                         mov      dword ptr [rax], edx
00000000077dc625: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077dc629: f60001                       test     byte ptr [rax], 1
00000000077dc62c: 740d                         je       0x77dc63b
00000000077dc62e: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077dc632: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc636: e805dbd2fc                   call     0x450a140
00000000077dc63b: 488d05fef04e03               lea      rax, [rip + 0x34ef0fe]
00000000077dc642: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dc645: 0f8c8ef7ffff                 jl       0x77dbdd9
00000000077dc64b: 488d05f2f04e03               lea      rax, [rip + 0x34ef0f2]
00000000077dc652: 8b00                         mov      eax, dword ptr [rax]
00000000077dc654: 89c1                         mov      ecx, eax
00000000077dc656: f7d1                         not      ecx
00000000077dc658: 0fafc8                       imul     ecx, eax
00000000077dc65b: 83e101                       and      ecx, 1
00000000077dc65e: 0f8475f7ffff                 je       0x77dbdd9
00000000077dc664: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077dc668: f60001                       test     byte ptr [rax], 1
00000000077dc66b: 74b8                         je       0x77dc625
00000000077dc66d: 488b4580                     mov      rax, qword ptr [rbp - 0x80]
00000000077dc671: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc675: e8c6dad2fc                   call     0x450a140
00000000077dc67a: eba9                         jmp      0x77dc625
00000000077dc67c: e94bf7ffff                   jmp      0x77dbdcc
00000000077dc681: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dc685: 488901                       mov      qword ptr [rcx], rax
00000000077dc688: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dc68c: 8910                         mov      dword ptr [rax], edx
00000000077dc68e: 4c89f7                       mov      rdi, r14
00000000077dc691: e8ba35ffff                   call     0x77cfc50
00000000077dc696: eb0d                         jmp      0x77dc6a5
00000000077dc698: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077dc69c: 488901                       mov      qword ptr [rcx], rax
00000000077dc69f: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077dc6a3: 8910                         mov      dword ptr [rax], edx
00000000077dc6a5: 488d0598f04e03               lea      rax, [rip + 0x34ef098]
00000000077dc6ac: 8b10                         mov      edx, dword ptr [rax]
00000000077dc6ae: 488d058bf04e03               lea      rax, [rip + 0x34ef08b]
00000000077dc6b5: 8b08                         mov      ecx, dword ptr [rax]
00000000077dc6b7: 89d0                         mov      eax, edx
00000000077dc6b9: f7d0                         not      eax
00000000077dc6bb: 0fafc2                       imul     eax, edx
00000000077dc6be: 83e001                       and      eax, 1
00000000077dc6c1: 83f90a                       cmp      ecx, 0xa
00000000077dc6c4: 7c3c                         jl       0x77dc702
00000000077dc6c6: 85c0                         test     eax, eax
00000000077dc6c8: 7438                         je       0x77dc702
00000000077dc6ca: b801000000                   mov      eax, 1
00000000077dc6cf: 41f6042401                   test     byte ptr [r12], 1
00000000077dc6d4: 742c                         je       0x77dc702
00000000077dc6d6: 488b8520ffffff               mov      rax, qword ptr [rbp - 0xe0]
00000000077dc6dd: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077dc6e1: e85adad2fc                   call     0x450a140
00000000077dc6e6: 488d0557f04e03               lea      rax, [rip + 0x34ef057]
00000000077dc6ed: 8b10                         mov      edx, dword ptr [rax]
00000000077dc6ef: 488d054af04e03               lea      rax, [rip + 0x34ef04a]
00000000077dc6f6: 8b08                         mov      ecx, dword ptr [rax]
00000000077dc6f8: 89d0                         mov      eax, edx
00000000077dc6fa: f7d0                         not      eax
00000000077dc6fc: 0fafc2                       imul     eax, edx
00000000077dc6ff: 83e001                       and      eax, 1
00000000077dc702: 83f90a                       cmp      ecx, 0xa
00000000077dc705: 7c5a                         jl       0x77dc761
00000000077dc707: 85c0                         test     eax, eax
00000000077dc709: 0f8592000000                 jne      0x77dc7a1
00000000077dc70f: eb50                         jmp      0x77dc761
00000000077dc711: e9b6f6ffff                   jmp      0x77dbdcc
00000000077dc716: 41f6042401                   test     byte ptr [r12], 1
00000000077dc71b: 7409                         je       0x77dc726
00000000077dc71d: 498b7d18                     mov      rdi, qword ptr [r13 + 0x18]
00000000077dc721: e81adad2fc                   call     0x450a140
00000000077dc726: 488d0513f04e03               lea      rax, [rip + 0x34ef013]
00000000077dc72d: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dc730: 0f8ca3f6ffff                 jl       0x77dbdd9
00000000077dc736: 488d0507f04e03               lea      rax, [rip + 0x34ef007]
00000000077dc73d: 8b00                         mov      eax, dword ptr [rax]
00000000077dc73f: 89c1                         mov      ecx, eax
00000000077dc741: f7d1                         not      ecx
00000000077dc743: 0fafc8                       imul     ecx, eax
00000000077dc746: 83e101                       and      ecx, 1
00000000077dc749: 0f848af6ffff                 je       0x77dbdd9
00000000077dc74f: 41f6042401                   test     byte ptr [r12], 1
00000000077dc754: 74c0                         je       0x77dc716
00000000077dc756: 498b7d18                     mov      rdi, qword ptr [r13 + 0x18]
00000000077dc75a: e8e1d9d2fc                   call     0x450a140
00000000077dc75f: ebb5                         jmp      0x77dc716
00000000077dc761: 41f6042401                   test     byte ptr [r12], 1
00000000077dc766: 7410                         je       0x77dc778
00000000077dc768: 488b8520ffffff               mov      rax, qword ptr [rbp - 0xe0]
00000000077dc76f: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077dc773: e8c8d9d2fc                   call     0x450a140
00000000077dc778: 488d05c1ef4e03               lea      rax, [rip + 0x34eefc1]
00000000077dc77f: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dc782: 0f8c51f6ffff                 jl       0x77dbdd9
00000000077dc788: 488d05b5ef4e03               lea      rax, [rip + 0x34eefb5]
00000000077dc78f: 8b00                         mov      eax, dword ptr [rax]
00000000077dc791: 89c1                         mov      ecx, eax
00000000077dc793: f7d1                         not      ecx
00000000077dc795: 0fafc8                       imul     ecx, eax
00000000077dc798: 83e101                       and      ecx, 1
00000000077dc79b: 0f8438f6ffff                 je       0x77dbdd9
00000000077dc7a1: 41f6042401                   test     byte ptr [r12], 1
00000000077dc7a6: 74b9                         je       0x77dc761
00000000077dc7a8: 488b8520ffffff               mov      rax, qword ptr [rbp - 0xe0]
00000000077dc7af: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077dc7b3: e888d9d2fc                   call     0x450a140
00000000077dc7b8: eba7                         jmp      0x77dc761
00000000077dc7ba: f60301                       test     byte ptr [rbx], 1
00000000077dc7bd: 7410                         je       0x77dc7cf
00000000077dc7bf: 488b8570ffffff               mov      rax, qword ptr [rbp - 0x90]
00000000077dc7c6: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc7ca: e871d9d2fc                   call     0x450a140
00000000077dc7cf: 488d056eef4e03               lea      rax, [rip + 0x34eef6e]
00000000077dc7d6: 8b10                         mov      edx, dword ptr [rax]
00000000077dc7d8: 488d0561ef4e03               lea      rax, [rip + 0x34eef61]
00000000077dc7df: 8b00                         mov      eax, dword ptr [rax]
00000000077dc7e1: 89d1                         mov      ecx, edx
00000000077dc7e3: f7d1                         not      ecx
00000000077dc7e5: 0fafca                       imul     ecx, edx
00000000077dc7e8: 83e101                       and      ecx, 1
00000000077dc7eb: 83f80a                       cmp      eax, 0xa
00000000077dc7ee: 7c1b                         jl       0x77dc80b
00000000077dc7f0: 85c9                         test     ecx, ecx
00000000077dc7f2: 488b9d70ffffff               mov      rbx, qword ptr [rbp - 0x90]
00000000077dc7f9: 7410                         je       0x77dc80b
00000000077dc7fb: f60301                       test     byte ptr [rbx], 1
00000000077dc7fe: 74ba                         je       0x77dc7ba
00000000077dc800: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077dc804: e837d9d2fc                   call     0x450a140
00000000077dc809: ebaf                         jmp      0x77dc7ba
00000000077dc80b: 83f80a                       cmp      eax, 0xa
00000000077dc80e: 488b5db8                     mov      rbx, qword ptr [rbp - 0x48]
00000000077dc812: 7c04                         jl       0x77dc818
00000000077dc814: 85c9                         test     ecx, ecx
00000000077dc816: 753b                         jne      0x77dc853
00000000077dc818: f60301                       test     byte ptr [rbx], 1
00000000077dc81b: 740d                         je       0x77dc82a
00000000077dc81d: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077dc821: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc825: e816d9d2fc                   call     0x450a140
00000000077dc82a: 488d0513ef4e03               lea      rax, [rip + 0x34eef13]
00000000077dc831: 8b10                         mov      edx, dword ptr [rax]
00000000077dc833: 488d0506ef4e03               lea      rax, [rip + 0x34eef06]
00000000077dc83a: 8b08                         mov      ecx, dword ptr [rax]
00000000077dc83c: 89d0                         mov      eax, edx
00000000077dc83e: f7d0                         not      eax
00000000077dc840: 0fafc2                       imul     eax, edx
00000000077dc843: 83e001                       and      eax, 1
00000000077dc846: 83f90a                       cmp      ecx, 0xa
00000000077dc849: 7c18                         jl       0x77dc863
00000000077dc84b: 85c0                         test     eax, eax
00000000077dc84d: 488b5db8                     mov      rbx, qword ptr [rbp - 0x48]
00000000077dc851: 7410                         je       0x77dc863
00000000077dc853: f60301                       test     byte ptr [rbx], 1
00000000077dc856: 74c0                         je       0x77dc818
00000000077dc858: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077dc85c: e8dfd8d2fc                   call     0x450a140
00000000077dc861: ebb5                         jmp      0x77dc818
00000000077dc863: 83f90a                       cmp      ecx, 0xa
00000000077dc866: 7c04                         jl       0x77dc86c
00000000077dc868: 85c0                         test     eax, eax
00000000077dc86a: 752d                         jne      0x77dc899
00000000077dc86c: 488bbd18ffffff               mov      rdi, qword ptr [rbp - 0xe8]
00000000077dc873: e838fc4f00                   call     0x7cdc4b0
00000000077dc878: 488d05c1ee4e03               lea      rax, [rip + 0x34eeec1]
00000000077dc87f: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dc882: 7c23                         jl       0x77dc8a7
00000000077dc884: 488d05b9ee4e03               lea      rax, [rip + 0x34eeeb9]
00000000077dc88b: 8b00                         mov      eax, dword ptr [rax]
00000000077dc88d: 89c1                         mov      ecx, eax
00000000077dc88f: f7d1                         not      ecx
00000000077dc891: 0fafc8                       imul     ecx, eax
00000000077dc894: 83e101                       and      ecx, 1
00000000077dc897: 740e                         je       0x77dc8a7
00000000077dc899: 488bbd18ffffff               mov      rdi, qword ptr [rbp - 0xe8]
00000000077dc8a0: e80bfc4f00                   call     0x7cdc4b0
00000000077dc8a5: ebc5                         jmp      0x77dc86c
00000000077dc8a7: 488b5da0                     mov      rbx, qword ptr [rbp - 0x60]
00000000077dc8ab: f60301                       test     byte ptr [rbx], 1
00000000077dc8ae: 740d                         je       0x77dc8bd
00000000077dc8b0: 488b45a0                     mov      rax, qword ptr [rbp - 0x60]
00000000077dc8b4: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc8b8: e883d8d2fc                   call     0x450a140
00000000077dc8bd: 488d0580ee4e03               lea      rax, [rip + 0x34eee80]
00000000077dc8c4: 8b10                         mov      edx, dword ptr [rax]
00000000077dc8c6: 488d0573ee4e03               lea      rax, [rip + 0x34eee73]
00000000077dc8cd: 8b00                         mov      eax, dword ptr [rax]
00000000077dc8cf: 89d1                         mov      ecx, edx
00000000077dc8d1: f7d1                         not      ecx
00000000077dc8d3: 0fafca                       imul     ecx, edx
00000000077dc8d6: 83e101                       and      ecx, 1
00000000077dc8d9: 83f80a                       cmp      eax, 0xa
00000000077dc8dc: 0f8c16dbffff                 jl       0x77da3f8
00000000077dc8e2: 85c9                         test     ecx, ecx
00000000077dc8e4: 0f840edbffff                 je       0x77da3f8
00000000077dc8ea: 488b5da0                     mov      rbx, qword ptr [rbp - 0x60]
00000000077dc8ee: f60301                       test     byte ptr [rbx], 1
00000000077dc8f1: 74b8                         je       0x77dc8ab
00000000077dc8f3: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077dc8f7: e844d8d2fc                   call     0x450a140
00000000077dc8fc: ebad                         jmp      0x77dc8ab
00000000077dc8fe: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077dc902: f60001                       test     byte ptr [rax], 1
00000000077dc905: 740d                         je       0x77dc914
00000000077dc907: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077dc90b: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc90f: e82cd8d2fc                   call     0x450a140
00000000077dc914: 488d0525ee4e03               lea      rax, [rip + 0x34eee25]
00000000077dc91b: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dc91e: 7c2d                         jl       0x77dc94d
00000000077dc920: 488d051dee4e03               lea      rax, [rip + 0x34eee1d]
00000000077dc927: 8b00                         mov      eax, dword ptr [rax]
00000000077dc929: 89c1                         mov      ecx, eax
00000000077dc92b: f7d1                         not      ecx
00000000077dc92d: 0fafc8                       imul     ecx, eax
00000000077dc930: 83e101                       and      ecx, 1
00000000077dc933: 7418                         je       0x77dc94d
00000000077dc935: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077dc939: f60001                       test     byte ptr [rax], 1
00000000077dc93c: 74c0                         je       0x77dc8fe
00000000077dc93e: 488b4598                     mov      rax, qword ptr [rbp - 0x68]
00000000077dc942: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077dc946: e8f5d7d2fc                   call     0x450a140
00000000077dc94b: ebb1                         jmp      0x77dc8fe
00000000077dc94d: 488b7dd0                     mov      rdi, qword ptr [rbp - 0x30]
00000000077dc951: e84a2a5000                   call     0x7cdf3a0
00000000077dc956: 488d05e3ed4e03               lea      rax, [rip + 0x34eede3]
00000000077dc95d: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dc960: 0f8ca1d3ffff                 jl       0x77d9d07
00000000077dc966: 488d05d7ed4e03               lea      rax, [rip + 0x34eedd7]
00000000077dc96d: 8b00                         mov      eax, dword ptr [rax]
00000000077dc96f: 89c1                         mov      ecx, eax
00000000077dc971: f7d1                         not      ecx
00000000077dc973: 0fafc8                       imul     ecx, eax
00000000077dc976: 83e101                       and      ecx, 1
00000000077dc979: 0f8488d3ffff                 je       0x77d9d07
00000000077dc97f: 488b5dd0                     mov      rbx, qword ptr [rbp - 0x30]
00000000077dc983: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
00000000077dc990: 4889df                       mov      rdi, rbx
00000000077dc993: e8082a5000                   call     0x7cdf3a0
00000000077dc998: 4889df                       mov      rdi, rbx
00000000077dc99b: e8002a5000                   call     0x7cdf3a0
00000000077dc9a0: 488d0599ed4e03               lea      rax, [rip + 0x34eed99]
00000000077dc9a7: 83380a                       cmp      dword ptr [rax], 0xa
00000000077dc9aa: 0f8c57d3ffff                 jl       0x77d9d07
00000000077dc9b0: 488d058ded4e03               lea      rax, [rip + 0x34eed8d]
00000000077dc9b7: 8b00                         mov      eax, dword ptr [rax]
00000000077dc9b9: 89c1                         mov      ecx, eax
00000000077dc9bb: f7d1                         not      ecx
00000000077dc9bd: 0fafc8                       imul     ecx, eax
00000000077dc9c0: 83e101                       and      ecx, 1
00000000077dc9c3: 75cb                         jne      0x77dc990
00000000077dc9c5: e93dd3ffff                   jmp      0x77d9d07

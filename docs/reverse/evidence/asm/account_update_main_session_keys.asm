0000000008df3d70: 55                           push     rbp
0000000008df3d71: 4157                         push     r15
0000000008df3d73: 4156                         push     r14
0000000008df3d75: 4155                         push     r13
0000000008df3d77: 4154                         push     r12
0000000008df3d79: 53                           push     rbx
0000000008df3d7a: 4881ecb8020000               sub      rsp, 0x2b8
0000000008df3d81: 4889d3                       mov      rbx, rdx
0000000008df3d84: 4989f7                       mov      r15, rsi
0000000008df3d87: 4989fe                       mov      r14, rdi
0000000008df3d8a: bf02000000                   mov      edi, 2
0000000008df3d8f: e8fc2e3200                   call     0x9116c90
0000000008df3d94: 85c0                         test     eax, eax
0000000008df3d96: 0f84c2020000                 je       0x8df405e
0000000008df3d9c: 488d15bb6216f8               lea      rdx, [rip - 0x7e99d45]
0000000008df3da3: 488d0d620b26f8               lea      rcx, [rip - 0x7d9f49e]
0000000008df3daa: 4c8d056b0b26f8               lea      r8, [rip - 0x7d9f495]
0000000008df3db1: 488dbc2428020000             lea      rdi, [rsp + 0x228]
0000000008df3db9: be02000000                   mov      esi, 2
0000000008df3dbe: 41b967000000                 mov      r9d, 0x67
0000000008df3dc4: 6a00                         push     0
0000000008df3dc6: 6a00                         push     0
0000000008df3dc8: e8d3d73100                   call     0x91115a0
0000000008df3dcd: 4883c410                     add      rsp, 0x10
0000000008df3dd1: 4c8d642448                   lea      r12, [rsp + 0x48]
0000000008df3dd6: 4c89e7                       mov      rdi, r12
0000000008df3dd9: 4c89fe                       mov      rsi, r15
0000000008df3ddc: e86f7d3200                   call     0x911bb50
0000000008df3de1: 488d7c2418                   lea      rdi, [rsp + 0x18]
0000000008df3de6: 4c89e6                       mov      rsi, r12
0000000008df3de9: e852790200                   call     0x8e1b740
0000000008df3dee: f644241801                   test     byte ptr [rsp + 0x18], 1
0000000008df3df3: 7407                         je       0x8df3dfc
0000000008df3df5: 488b442428                   mov      rax, qword ptr [rsp + 0x28]
0000000008df3dfa: eb05                         jmp      0x8df3e01
0000000008df3dfc: 488d442419                   lea      rax, [rsp + 0x19]
0000000008df3e01: 48898424d8010000             mov      qword ptr [rsp + 0x1d8], rax
0000000008df3e09: c68424e001000000             mov      byte ptr [rsp + 0x1e0], 0
0000000008df3e11: 410fb60f                     movzx    ecx, byte ptr [r15]
0000000008df3e15: f6c101                       test     cl, 1
0000000008df3e18: 7406                         je       0x8df3e20
0000000008df3e1a: 498b4f08                     mov      rcx, qword ptr [r15 + 8]
0000000008df3e1e: eb02                         jmp      0x8df3e22
0000000008df3e20: d1e9                         shr      ecx, 1
0000000008df3e22: 48c784243801000000000000     mov      qword ptr [rsp + 0x138], 0
0000000008df3e2e: bf07000000                   mov      edi, 7
0000000008df3e33: 488db4243f010000             lea      rsi, [rsp + 0x13f]
0000000008df3e3b: 49bdcdcccccccccccccc         movabs   r13, 0xcccccccccccccccd
0000000008df3e45: 488d2dc0b513f8               lea      rbp, [rip - 0x7ec4a40]
0000000008df3e4c: 0f1f4000                     nop      dword ptr [rax]
0000000008df3e50: 4889c8                       mov      rax, rcx
0000000008df3e53: 49f7e5                       mul      r13
0000000008df3e56: 48c1ea03                     shr      rdx, 3
0000000008df3e5a: 488d0412                     lea      rax, [rdx + rdx]
0000000008df3e5e: 488d0480                     lea      rax, [rax + rax*4]
0000000008df3e62: 4989e8                       mov      r8, rbp
0000000008df3e65: 4929c0                       sub      r8, rax
0000000008df3e68: 410fb6440823                 movzx    eax, byte ptr [r8 + rcx + 0x23]
0000000008df3e6e: 884601                       mov      byte ptr [rsi + 1], al
0000000008df3e71: 48ffc6                       inc      rsi
0000000008df3e74: 48ffc7                       inc      rdi
0000000008df3e77: 4883f909                     cmp      rcx, 9
0000000008df3e7b: 4889d1                       mov      rcx, rdx
0000000008df3e7e: 77d0                         ja       0x8df3e50
0000000008df3e80: 488d842440010000             lea      rax, [rsp + 0x140]
0000000008df3e88: c6460100                     mov      byte ptr [rsi + 1], 0
0000000008df3e8c: 4883ff09                     cmp      rdi, 9
0000000008df3e90: 722a                         jb       0x8df3ebc
0000000008df3e92: 488d8c2441010000             lea      rcx, [rsp + 0x141]
0000000008df3e9a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008df3ea0: 0fb616                       movzx    edx, byte ptr [rsi]
0000000008df3ea3: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008df3ea7: 40883e                       mov      byte ptr [rsi], dil
0000000008df3eaa: 48ffce                       dec      rsi
0000000008df3ead: 8851ff                       mov      byte ptr [rcx - 1], dl
0000000008df3eb0: 488d5101                     lea      rdx, [rcx + 1]
0000000008df3eb4: 4839f1                       cmp      rcx, rsi
0000000008df3eb7: 4889d1                       mov      rcx, rdx
0000000008df3eba: 72e4                         jb       0x8df3ea0
0000000008df3ebc: 4889842438010000             mov      qword ptr [rsp + 0x138], rax
0000000008df3ec4: 4c8d642430                   lea      r12, [rsp + 0x30]
0000000008df3ec9: 4c89e7                       mov      rdi, r12
0000000008df3ecc: 4889de                       mov      rsi, rbx
0000000008df3ecf: e87c7c3200                   call     0x911bb50
0000000008df3ed4: 4889e7                       mov      rdi, rsp
0000000008df3ed7: 4c89e6                       mov      rsi, r12
0000000008df3eda: e861780200                   call     0x8e1b740
0000000008df3edf: f6042401                     test     byte ptr [rsp], 1
0000000008df3ee3: 7407                         je       0x8df3eec
0000000008df3ee5: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008df3eea: eb05                         jmp      0x8df3ef1
0000000008df3eec: 488d442401                   lea      rax, [rsp + 1]
0000000008df3ef1: 4889842488010000             mov      qword ptr [rsp + 0x188], rax
0000000008df3ef9: c684249001000000             mov      byte ptr [rsp + 0x190], 0
0000000008df3f01: 0fb60b                       movzx    ecx, byte ptr [rbx]
0000000008df3f04: f6c101                       test     cl, 1
0000000008df3f07: 7406                         je       0x8df3f0f
0000000008df3f09: 488b4b08                     mov      rcx, qword ptr [rbx + 8]
0000000008df3f0d: eb02                         jmp      0x8df3f11
0000000008df3f0f: d1e9                         shr      ecx, 1
0000000008df3f11: 48c78424e800000000000000     mov      qword ptr [rsp + 0xe8], 0
0000000008df3f1d: bf07000000                   mov      edi, 7
0000000008df3f22: 488db424ef000000             lea      rsi, [rsp + 0xef]
0000000008df3f2a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008df3f30: 4889c8                       mov      rax, rcx
0000000008df3f33: 49f7e5                       mul      r13
0000000008df3f36: 48c1ea03                     shr      rdx, 3
0000000008df3f3a: 488d0412                     lea      rax, [rdx + rdx]
0000000008df3f3e: 488d0480                     lea      rax, [rax + rax*4]
0000000008df3f42: 4989e8                       mov      r8, rbp
0000000008df3f45: 4929c0                       sub      r8, rax
0000000008df3f48: 410fb6440823                 movzx    eax, byte ptr [r8 + rcx + 0x23]
0000000008df3f4e: 884601                       mov      byte ptr [rsi + 1], al
0000000008df3f51: 48ffc6                       inc      rsi
0000000008df3f54: 48ffc7                       inc      rdi
0000000008df3f57: 4883f909                     cmp      rcx, 9
0000000008df3f5b: 4889d1                       mov      rcx, rdx
0000000008df3f5e: 77d0                         ja       0x8df3f30
0000000008df3f60: 488d8424f0000000             lea      rax, [rsp + 0xf0]
0000000008df3f68: c6460100                     mov      byte ptr [rsi + 1], 0
0000000008df3f6c: 4883ff09                     cmp      rdi, 9
0000000008df3f70: 722a                         jb       0x8df3f9c
0000000008df3f72: 488d8c24f1000000             lea      rcx, [rsp + 0xf1]
0000000008df3f7a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008df3f80: 0fb616                       movzx    edx, byte ptr [rsi]
0000000008df3f83: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008df3f87: 40883e                       mov      byte ptr [rsi], dil
0000000008df3f8a: 48ffce                       dec      rsi
0000000008df3f8d: 8851ff                       mov      byte ptr [rcx - 1], dl
0000000008df3f90: 488d5101                     lea      rdx, [rcx + 1]
0000000008df3f94: 4839f1                       cmp      rcx, rsi
0000000008df3f97: 4889d1                       mov      rcx, rdx
0000000008df3f9a: 72e4                         jb       0x8df3f80
0000000008df3f9c: 48898424e8000000             mov      qword ptr [rsp + 0xe8], rax
0000000008df3fa4: 488d8424d8010000             lea      rax, [rsp + 0x1d8]
0000000008df3fac: 4889442460                   mov      qword ptr [rsp + 0x60], rax
0000000008df3fb1: 488d842438010000             lea      rax, [rsp + 0x138]
0000000008df3fb9: 4889442468                   mov      qword ptr [rsp + 0x68], rax
0000000008df3fbe: 488d842488010000             lea      rax, [rsp + 0x188]
0000000008df3fc6: 4889442470                   mov      qword ptr [rsp + 0x70], rax
0000000008df3fcb: 488d8424e8000000             lea      rax, [rsp + 0xe8]
0000000008df3fd3: 4889442478                   mov      qword ptr [rsp + 0x78], rax
0000000008df3fd8: 0f57c0                       xorps    xmm0, xmm0
0000000008df3fdb: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008df3fe3: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
0000000008df3feb: 0f298424a0000000             movaps   xmmword ptr [rsp + 0xa0], xmm0
0000000008df3ff3: 0f298424b0000000             movaps   xmmword ptr [rsp + 0xb0], xmm0
0000000008df3ffb: 0f298424c0000000             movaps   xmmword ptr [rsp + 0xc0], xmm0
0000000008df4003: 0f298424d0000000             movaps   xmmword ptr [rsp + 0xd0], xmm0
0000000008df400b: 488d3545ed1af8               lea      rsi, [rip - 0x7e512bb]
0000000008df4012: 488dbc2428020000             lea      rdi, [rsp + 0x228]
0000000008df401a: 488d542460                   lea      rdx, [rsp + 0x60]
0000000008df401f: e8ccd83100                   call     0x91118f0
0000000008df4024: f6042401                     test     byte ptr [rsp], 1
0000000008df4028: 757e                         jne      0x8df40a8
0000000008df402a: f644243001                   test     byte ptr [rsp + 0x30], 1
0000000008df402f: 0f8588000000                 jne      0x8df40bd
0000000008df4035: f644241801                   test     byte ptr [rsp + 0x18], 1
0000000008df403a: 0f8592000000                 jne      0x8df40d2
0000000008df4040: f644244801                   test     byte ptr [rsp + 0x48], 1
0000000008df4045: 740a                         je       0x8df4051
0000000008df4047: 488b7c2458                   mov      rdi, qword ptr [rsp + 0x58]
0000000008df404c: e8ef6071fb                   call     0x450a140
0000000008df4051: 488dbc2428020000             lea      rdi, [rsp + 0x228]
0000000008df4059: e8d2d53100                   call     0x9111630
0000000008df405e: 4d8da6a0010000               lea      r12, [r14 + 0x1a0]
0000000008df4065: 4c89e7                       mov      rdi, r12
0000000008df4068: e893ee01fc                   call     0x4e12f00
0000000008df406d: 498dbef0000000               lea      rdi, [r14 + 0xf0]
0000000008df4074: 4c89fe                       mov      rsi, r15
0000000008df4077: e8349d71fb                   call     0x450ddb0
0000000008df407c: 4981c608010000               add      r14, 0x108
0000000008df4083: 4c89f7                       mov      rdi, r14
0000000008df4086: 4889de                       mov      rsi, rbx
0000000008df4089: e8229d71fb                   call     0x450ddb0
0000000008df408e: 4c89e7                       mov      rdi, r12
0000000008df4091: e80aef01fc                   call     0x4e12fa0
0000000008df4096: 4881c4b8020000               add      rsp, 0x2b8
0000000008df409d: 5b                           pop      rbx
0000000008df409e: 415c                         pop      r12
0000000008df40a0: 415d                         pop      r13
0000000008df40a2: 415e                         pop      r14
0000000008df40a4: 415f                         pop      r15
0000000008df40a6: 5d                           pop      rbp
0000000008df40a7: c3                           ret
0000000008df40a8: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
0000000008df40ad: e88e6071fb                   call     0x450a140
0000000008df40b2: f644243001                   test     byte ptr [rsp + 0x30], 1
0000000008df40b7: 0f8478ffffff                 je       0x8df4035
0000000008df40bd: 488b7c2440                   mov      rdi, qword ptr [rsp + 0x40]
0000000008df40c2: e8796071fb                   call     0x450a140
0000000008df40c7: f644241801                   test     byte ptr [rsp + 0x18], 1
0000000008df40cc: 0f846effffff                 je       0x8df4040
0000000008df40d2: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
0000000008df40d7: e8646071fb                   call     0x450a140
0000000008df40dc: f644244801                   test     byte ptr [rsp + 0x48], 1
0000000008df40e1: 0f8560ffffff                 jne      0x8df4047
0000000008df40e7: e965ffffff                   jmp      0x8df4051

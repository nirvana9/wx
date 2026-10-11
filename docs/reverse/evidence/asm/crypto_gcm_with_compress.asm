0000000008b1cb00: 4157                         push     r15
0000000008b1cb02: 4156                         push     r14
0000000008b1cb04: 4155                         push     r13
0000000008b1cb06: 4154                         push     r12
0000000008b1cb08: 53                           push     rbx
0000000008b1cb09: 4881ec20010000               sub      rsp, 0x120
0000000008b1cb10: 4989ce                       mov      r14, rcx
0000000008b1cb13: 4989d7                       mov      r15, rdx
0000000008b1cb16: 4989f4                       mov      r12, rsi
0000000008b1cb19: 4989fd                       mov      r13, rdi
0000000008b1cb1c: 48c7042400000000             mov      qword ptr [rsp], 0
0000000008b1cb24: 4889e2                       mov      rdx, rsp
0000000008b1cb27: 488d4c2408                   lea      rcx, [rsp + 8]
0000000008b1cb2c: 4c89c7                       mov      rdi, r8
0000000008b1cb2f: 4c89ce                       mov      rsi, r9
0000000008b1cb32: e819040000                   call     0x8b1cf50
0000000008b1cb37: 85c0                         test     eax, eax
0000000008b1cb39: 0f8498000000                 je       0x8b1cbd7
0000000008b1cb3f: 89c3                         mov      ebx, eax
0000000008b1cb41: bf04000000                   mov      edi, 4
0000000008b1cb46: e845a15f00                   call     0x9116c90
0000000008b1cb4b: 85c0                         test     eax, eax
0000000008b1cb4d: 0f84b8000000                 je       0x8b1cc0b
0000000008b1cb53: 488d15a2f32bf8               lea      rdx, [rip - 0x7d40c5e] ; 'mars::mmcrypto'
0000000008b1cb5a: 488d0d1d1425f8               lea      rcx, [rip - 0x7daebe3] ; 'crypto_aes.cc'
0000000008b1cb61: 4c8d05b0bc40f8               lea      r8, [rip - 0x7bf4350] ; 'AesGcmEncryptWithCompress'
0000000008b1cb68: 4c8db42490000000             lea      r14, [rsp + 0x90]
0000000008b1cb70: 4c89f7                       mov      rdi, r14
0000000008b1cb73: be04000000                   mov      esi, 4
0000000008b1cb78: 41b9f6000000                 mov      r9d, 0xf6
0000000008b1cb7e: 6a00                         push     0
0000000008b1cb80: 6a00                         push     0
0000000008b1cb82: e8194a5f00                   call     0x91115a0
0000000008b1cb87: 4883c410                     add      rsp, 0x10
0000000008b1cb8b: 0f57c0                       xorps    xmm0, xmm0
0000000008b1cb8e: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008b1cb96: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008b1cb9b: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008b1cba0: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008b1cba5: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008b1cbaa: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008b1cbaf: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008b1cbb4: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008b1cbb9: 488d3522273ff8               lea      rsi, [rip - 0x7c0d8de] ; 'ZLibCompress failed.'
0000000008b1cbc0: 488d542410                   lea      rdx, [rsp + 0x10]
0000000008b1cbc5: 4c89f7                       mov      rdi, r14
0000000008b1cbc8: e8234d5f00                   call     0x91118f0
0000000008b1cbcd: 4c89f7                       mov      rdi, r14
0000000008b1cbd0: e85b4a5f00                   call     0x9111630
0000000008b1cbd5: eb34                         jmp      0x8b1cc0b
0000000008b1cbd7: 4c8b0424                     mov      r8, qword ptr [rsp]
0000000008b1cbdb: 4c8b4c2408                   mov      r9, qword ptr [rsp + 8]
0000000008b1cbe0: 4883ec08                     sub      rsp, 8
0000000008b1cbe4: 4c89ef                       mov      rdi, r13
0000000008b1cbe7: 4c89e6                       mov      rsi, r12
0000000008b1cbea: 4c89fa                       mov      rdx, r15
0000000008b1cbed: 4c89f1                       mov      rcx, r14
0000000008b1cbf0: ffb42458010000               push     qword ptr [rsp + 0x158]
0000000008b1cbf7: e814fbffff                   call     0x8b1c710
0000000008b1cbfc: 4883c410                     add      rsp, 0x10
0000000008b1cc00: 89c3                         mov      ebx, eax
0000000008b1cc02: 488b3c24                     mov      rdi, qword ptr [rsp]
0000000008b1cc06: e86516b501                   call     0xa66e270
0000000008b1cc0b: 89d8                         mov      eax, ebx
0000000008b1cc0d: 4881c420010000               add      rsp, 0x120
0000000008b1cc14: 5b                           pop      rbx
0000000008b1cc15: 415c                         pop      r12
0000000008b1cc17: 415d                         pop      r13
0000000008b1cc19: 415e                         pop      r14
0000000008b1cc1b: 415f                         pop      r15
0000000008b1cc1d: c3                           ret

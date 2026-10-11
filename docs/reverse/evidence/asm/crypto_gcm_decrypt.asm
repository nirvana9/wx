0000000008b1c950: 55                           push     rbp
0000000008b1c951: 4157                         push     r15
0000000008b1c953: 4156                         push     r14
0000000008b1c955: 4155                         push     r13
0000000008b1c957: 4154                         push     r12
0000000008b1c959: 53                           push     rbx
0000000008b1c95a: 4881ec18010000               sub      rsp, 0x118
0000000008b1c961: 4983f91b                     cmp      r9, 0x1b
0000000008b1c965: 0f8785000000                 ja       0x8b1c9f0
0000000008b1c96b: bf04000000                   mov      edi, 4
0000000008b1c970: e81ba35f00                   call     0x9116c90
0000000008b1c975: bbffffffff                   mov      ebx, 0xffffffff
0000000008b1c97a: 85c0                         test     eax, eax
0000000008b1c97c: 0f845f010000                 je       0x8b1cae1
0000000008b1c982: 488d1573f52bf8               lea      rdx, [rip - 0x7d40a8d] ; 'mars::mmcrypto'
0000000008b1c989: 488d0dee1525f8               lea      rcx, [rip - 0x7daea12] ; 'crypto_aes.cc'
0000000008b1c990: 4c8d0573be40f8               lea      r8, [rip - 0x7bf418d] ; 'AesGcmDecrypt'
0000000008b1c997: 4c8db42488000000             lea      r14, [rsp + 0x88]
0000000008b1c99f: 4c89f7                       mov      rdi, r14
0000000008b1c9a2: be04000000                   mov      esi, 4
0000000008b1c9a7: 41b977000000                 mov      r9d, 0x77
0000000008b1c9ad: 6a00                         push     0
0000000008b1c9af: 6a00                         push     0
0000000008b1c9b1: e8ea4b5f00                   call     0x91115a0
0000000008b1c9b6: 4883c410                     add      rsp, 0x10
0000000008b1c9ba: 0f57c0                       xorps    xmm0, xmm0
0000000008b1c9bd: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008b1c9c2: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008b1c9c7: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008b1c9cc: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008b1c9d1: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008b1c9d6: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008b1c9db: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008b1c9e0: 0f290424                     movaps   xmmword ptr [rsp], xmm0
0000000008b1c9e4: 488d352cf449f8               lea      rsi, [rip - 0x7b60bd4] ; 'Invalid input.'
0000000008b1c9eb: e9da000000                   jmp      0x8b1caca
0000000008b1c9f0: 4c89cd                       mov      rbp, r9
0000000008b1c9f3: 4d89c6                       mov      r14, r8
0000000008b1c9f6: 4889cb                       mov      rbx, rcx
0000000008b1c9f9: 4989d7                       mov      r15, rdx
0000000008b1c9fc: 4989f4                       mov      r12, rsi
0000000008b1c9ff: 4989fd                       mov      r13, rdi
0000000008b1ca02: e8f9200000                   call     0x8b1eb00
0000000008b1ca07: 4c8d55e4                     lea      r10, [rbp - 0x1c]
0000000008b1ca0b: 498d342e                     lea      rsi, [r14 + rbp]
0000000008b1ca0f: 4883c6e4                     add      rsi, -0x1c
0000000008b1ca13: 4d8d5c2ef0                   lea      r11, [r14 + rbp - 0x10]
0000000008b1ca18: ba0c000000                   mov      edx, 0xc
0000000008b1ca1d: 4889c7                       mov      rdi, rax
0000000008b1ca20: 4c89e9                       mov      rcx, r13
0000000008b1ca23: 4d89e0                       mov      r8, r12
0000000008b1ca26: 4d89f9                       mov      r9, r15
0000000008b1ca29: ffb42450010000               push     qword ptr [rsp + 0x150]
0000000008b1ca30: 6a10                         push     0x10
0000000008b1ca32: 4153                         push     r11
0000000008b1ca34: 4152                         push     r10
0000000008b1ca36: 4156                         push     r14
0000000008b1ca38: 53                           push     rbx
0000000008b1ca39: e892390000                   call     0x8b203d0
0000000008b1ca3e: 4883c430                     add      rsp, 0x30
0000000008b1ca42: 85c0                         test     eax, eax
0000000008b1ca44: 0f8495000000                 je       0x8b1cadf
0000000008b1ca4a: bf04000000                   mov      edi, 4
0000000008b1ca4f: e83ca25f00                   call     0x9116c90
0000000008b1ca54: bbffffffff                   mov      ebx, 0xffffffff
0000000008b1ca59: 85c0                         test     eax, eax
0000000008b1ca5b: 0f8480000000                 je       0x8b1cae1
0000000008b1ca61: 488d1594f42bf8               lea      rdx, [rip - 0x7d40b6c] ; 'mars::mmcrypto'
0000000008b1ca68: 488d0d0f1525f8               lea      rcx, [rip - 0x7daeaf1] ; 'crypto_aes.cc'
0000000008b1ca6f: 4c8d0594bd40f8               lea      r8, [rip - 0x7bf426c] ; 'AesGcmDecrypt'
0000000008b1ca76: 4c8db42488000000             lea      r14, [rsp + 0x88]
0000000008b1ca7e: 4c89f7                       mov      rdi, r14
0000000008b1ca81: be04000000                   mov      esi, 4
0000000008b1ca86: 41b986000000                 mov      r9d, 0x86
0000000008b1ca8c: 6a00                         push     0
0000000008b1ca8e: 6a00                         push     0
0000000008b1ca90: e80b4b5f00                   call     0x91115a0
0000000008b1ca95: 4883c410                     add      rsp, 0x10
0000000008b1ca99: 0f57c0                       xorps    xmm0, xmm0
0000000008b1ca9c: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008b1caa1: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008b1caa6: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008b1caab: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008b1cab0: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008b1cab5: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008b1caba: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008b1cabf: 0f290424                     movaps   xmmword ptr [rsp], xmm0
0000000008b1cac3: 488d3594992df8               lea      rsi, [rip - 0x7d2666c] ; 'AesGcmDecrypt failed.'
0000000008b1caca: 4889e2                       mov      rdx, rsp
0000000008b1cacd: 4c89f7                       mov      rdi, r14
0000000008b1cad0: e81b4e5f00                   call     0x91118f0
0000000008b1cad5: 4c89f7                       mov      rdi, r14
0000000008b1cad8: e8534b5f00                   call     0x9111630
0000000008b1cadd: eb02                         jmp      0x8b1cae1
0000000008b1cadf: 31db                         xor      ebx, ebx
0000000008b1cae1: 89d8                         mov      eax, ebx
0000000008b1cae3: 4881c418010000               add      rsp, 0x118
0000000008b1caea: 5b                           pop      rbx
0000000008b1caeb: 415c                         pop      r12
0000000008b1caed: 415d                         pop      r13
0000000008b1caef: 415e                         pop      r14
0000000008b1caf1: 415f                         pop      r15
0000000008b1caf3: 5d                           pop      rbp
0000000008b1caf4: c3                           ret

0000000008b1c710: 55                           push     rbp
0000000008b1c711: 4157                         push     r15
0000000008b1c713: 4156                         push     r14
0000000008b1c715: 4155                         push     r13
0000000008b1c717: 4154                         push     r12
0000000008b1c719: 53                           push     rbx
0000000008b1c71a: 4881ec48010000               sub      rsp, 0x148
0000000008b1c721: 4d89cc                       mov      r12, r9
0000000008b1c724: 4d89c7                       mov      r15, r8
0000000008b1c727: 48894c2418                   mov      qword ptr [rsp + 0x18], rcx
0000000008b1c72c: 4989d5                       mov      r13, rdx
0000000008b1c72f: 4889f5                       mov      rbp, rsi
0000000008b1c732: 4989fe                       mov      r14, rdi
0000000008b1c735: 0f57c0                       xorps    xmm0, xmm0
0000000008b1c738: 0f290424                     movaps   xmmword ptr [rsp], xmm0
0000000008b1c73c: 48c744241000000000           mov      qword ptr [rsp + 0x10], 0
0000000008b1c745: e8b6230000                   call     0x8b1eb00
0000000008b1c74a: 4889e2                       mov      rdx, rsp
0000000008b1c74d: 4889c7                       mov      rdi, rax
0000000008b1c750: be0c000000                   mov      esi, 0xc
0000000008b1c755: e806240000                   call     0x8b1eb60
0000000008b1c75a: 85c0                         test     eax, eax
0000000008b1c75c: 0f8489000000                 je       0x8b1c7eb
0000000008b1c762: 89c3                         mov      ebx, eax
0000000008b1c764: bf04000000                   mov      edi, 4
0000000008b1c769: e822a55f00                   call     0x9116c90
0000000008b1c76e: 85c0                         test     eax, eax
0000000008b1c770: 0f8470010000                 je       0x8b1c8e6
0000000008b1c776: 488d157ff72bf8               lea      rdx, [rip - 0x7d40881] ; 'mars::mmcrypto'
0000000008b1c77d: 488d0dfa1725f8               lea      rcx, [rip - 0x7dae806] ; 'crypto_aes.cc'
0000000008b1c784: 4c8d053e5145f8               lea      r8, [rip - 0x7baaec2] ; 'AesGcmEncrypt'
0000000008b1c78b: 4c8db424b8000000             lea      r14, [rsp + 0xb8]
0000000008b1c793: 4c89f7                       mov      rdi, r14
0000000008b1c796: be04000000                   mov      esi, 4
0000000008b1c79b: 41b92f000000                 mov      r9d, 0x2f
0000000008b1c7a1: 6a00                         push     0
0000000008b1c7a3: 6a00                         push     0
0000000008b1c7a5: e8f64d5f00                   call     0x91115a0
0000000008b1c7aa: 4883c410                     add      rsp, 0x10
0000000008b1c7ae: 0f57c0                       xorps    xmm0, xmm0
0000000008b1c7b1: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
0000000008b1c7b9: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008b1c7c1: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008b1c7c6: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008b1c7cb: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008b1c7d0: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008b1c7d5: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008b1c7da: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008b1c7df: 488d350ee33cf8               lea      rsi, [rip - 0x7c31cf2] ; 'GenerateRandom failed.'
0000000008b1c7e6: e9e6000000                   jmp      0x8b1c8d1
0000000008b1c7eb: e810230000                   call     0x8b1eb00
0000000008b1c7f0: 0fb60c24                     movzx    ecx, byte ptr [rsp]
0000000008b1c7f4: 89ca                         mov      edx, ecx
0000000008b1c7f6: d1ea                         shr      edx, 1
0000000008b1c7f8: f6c101                       test     cl, 1
0000000008b1c7fb: 488d5c2401                   lea      rbx, [rsp + 1]
0000000008b1c800: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
0000000008b1c805: 480f44f3                     cmove    rsi, rbx
0000000008b1c809: 480f45542408                 cmovne   rdx, qword ptr [rsp + 8]
0000000008b1c80f: 4c8d9424a0000000             lea      r10, [rsp + 0xa0]
0000000008b1c817: 4889c7                       mov      rdi, rax
0000000008b1c81a: 4c89f1                       mov      rcx, r14
0000000008b1c81d: 4c8bb42480010000             mov      r14, qword ptr [rsp + 0x180]
0000000008b1c825: 4989e8                       mov      r8, rbp
0000000008b1c828: 4d89e9                       mov      r9, r13
0000000008b1c82b: 6a10                         push     0x10
0000000008b1c82d: 4152                         push     r10
0000000008b1c82f: 4156                         push     r14
0000000008b1c831: 4154                         push     r12
0000000008b1c833: 4157                         push     r15
0000000008b1c835: ff742440                     push     qword ptr [rsp + 0x40]
0000000008b1c839: e862420000                   call     0x8b20aa0
0000000008b1c83e: 4883c430                     add      rsp, 0x30
0000000008b1c842: 85c0                         test     eax, eax
0000000008b1c844: 0f84c0000000                 je       0x8b1c90a
0000000008b1c84a: bf04000000                   mov      edi, 4
0000000008b1c84f: e83ca45f00                   call     0x9116c90
0000000008b1c854: bbffffffff                   mov      ebx, 0xffffffff
0000000008b1c859: 85c0                         test     eax, eax
0000000008b1c85b: 0f8485000000                 je       0x8b1c8e6
0000000008b1c861: 488d1594f62bf8               lea      rdx, [rip - 0x7d4096c] ; 'mars::mmcrypto'
0000000008b1c868: 488d0d0f1725f8               lea      rcx, [rip - 0x7dae8f1] ; 'crypto_aes.cc'
0000000008b1c86f: 4c8d05535045f8               lea      r8, [rip - 0x7baafad] ; 'AesGcmEncrypt'
0000000008b1c876: 4c8db424b8000000             lea      r14, [rsp + 0xb8]
0000000008b1c87e: 4c89f7                       mov      rdi, r14
0000000008b1c881: be04000000                   mov      esi, 4
0000000008b1c886: 41b940000000                 mov      r9d, 0x40
0000000008b1c88c: 6a00                         push     0
0000000008b1c88e: 6a00                         push     0
0000000008b1c890: e80b4d5f00                   call     0x91115a0
0000000008b1c895: 4883c410                     add      rsp, 0x10
0000000008b1c899: 0f57c0                       xorps    xmm0, xmm0
0000000008b1c89c: 0f29842490000000             movaps   xmmword ptr [rsp + 0x90], xmm0
0000000008b1c8a4: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008b1c8ac: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008b1c8b1: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008b1c8b6: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008b1c8bb: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008b1c8c0: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008b1c8c5: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008b1c8ca: 488d350d2f38f8               lea      rsi, [rip - 0x7c7d0f3] ; 'AesGcmEncrypt failed.'
0000000008b1c8d1: 488d542420                   lea      rdx, [rsp + 0x20]
0000000008b1c8d6: 4c89f7                       mov      rdi, r14
0000000008b1c8d9: e812505f00                   call     0x91118f0
0000000008b1c8de: 4c89f7                       mov      rdi, r14
0000000008b1c8e1: e84a4d5f00                   call     0x9111630
0000000008b1c8e6: f6042401                     test     byte ptr [rsp], 1
0000000008b1c8ea: 740a                         je       0x8b1c8f6
0000000008b1c8ec: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
0000000008b1c8f1: e84ad89efb                   call     0x450a140
0000000008b1c8f6: 89d8                         mov      eax, ebx
0000000008b1c8f8: 4881c448010000               add      rsp, 0x148
0000000008b1c8ff: 5b                           pop      rbx
0000000008b1c900: 415c                         pop      r12
0000000008b1c902: 415d                         pop      r13
0000000008b1c904: 415e                         pop      r14
0000000008b1c906: 415f                         pop      r15
0000000008b1c908: 5d                           pop      rbp
0000000008b1c909: c3                           ret
0000000008b1c90a: 0fb60424                     movzx    eax, byte ptr [rsp]
0000000008b1c90e: 89c2                         mov      edx, eax
0000000008b1c910: d1ea                         shr      edx, 1
0000000008b1c912: a801                         test     al, 1
0000000008b1c914: 480f455c2410                 cmovne   rbx, qword ptr [rsp + 0x10]
0000000008b1c91a: 480f45542408                 cmovne   rdx, qword ptr [rsp + 8]
0000000008b1c920: 4c89f7                       mov      rdi, r14
0000000008b1c923: 4889de                       mov      rsi, rbx
0000000008b1c926: e885089ffb                   call     0x450d1b0
0000000008b1c92b: 488db424a0000000             lea      rsi, [rsp + 0xa0]
0000000008b1c933: ba10000000                   mov      edx, 0x10
0000000008b1c938: 4c89f7                       mov      rdi, r14
0000000008b1c93b: e870089ffb                   call     0x450d1b0
0000000008b1c940: 31db                         xor      ebx, ebx
0000000008b1c942: f6042401                     test     byte ptr [rsp], 1
0000000008b1c946: 75a4                         jne      0x8b1c8ec
0000000008b1c948: ebac                         jmp      0x8b1c8f6

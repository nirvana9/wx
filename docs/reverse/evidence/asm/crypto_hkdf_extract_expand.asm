0000000008b21280: 4156                         push     r14
0000000008b21282: 53                           push     rbx
0000000008b21283: 4881ec68010000               sub      rsp, 0x168
0000000008b2128a: 4c89c8                       mov      rax, r9
0000000008b2128d: 4889f3                       mov      rbx, rsi
0000000008b21290: 4883ec08                     sub      rsp, 8
0000000008b21294: 4c8d542414                   lea      r10, [rsp + 0x14]
0000000008b21299: 4c8d8c2498000000             lea      r9, [rsp + 0x98]
0000000008b212a1: 4889f7                       mov      rdi, rsi
0000000008b212a4: 4889d6                       mov      rsi, rdx
0000000008b212a7: 89ca                         mov      edx, ecx
0000000008b212a9: 4c89c1                       mov      rcx, r8
0000000008b212ac: 4989c0                       mov      r8, rax
0000000008b212af: 4152                         push     r10
0000000008b212b1: e80a0c7400                   call     0x9261ec0
0000000008b212b6: 4883c410                     add      rsp, 0x10
0000000008b212ba: 4885c0                       test     rax, rax
0000000008b212bd: 0f84c7000000                 je       0x8b2138a
0000000008b212c3: 4c8b8c2488010000             mov      r9, qword ptr [rsp + 0x188]
0000000008b212cb: 4c8b842480010000             mov      r8, qword ptr [rsp + 0x180]
0000000008b212d3: 8b4c240c                     mov      ecx, dword ptr [rsp + 0xc]
0000000008b212d7: 488d942490000000             lea      rdx, [rsp + 0x90]
0000000008b212df: 4889de                       mov      rsi, rbx
0000000008b212e2: ffb42498010000               push     qword ptr [rsp + 0x198]
0000000008b212e9: ffb42498010000               push     qword ptr [rsp + 0x198]
0000000008b212f0: e8db010000                   call     0x8b214d0
0000000008b212f5: 4883c410                     add      rsp, 0x10
0000000008b212f9: 85c0                         test     eax, eax
0000000008b212fb: 0f84b8010000                 je       0x8b214b9
0000000008b21301: bf04000000                   mov      edi, 4
0000000008b21306: e885595f00                   call     0x9116c90
0000000008b2130b: bbffffffff                   mov      ebx, 0xffffffff
0000000008b21310: 85c0                         test     eax, eax
0000000008b21312: 0f84a3010000                 je       0x8b214bb
0000000008b21318: 488d15ddab2bf8               lea      rdx, [rip - 0x7d45423] ; 'mars::mmcrypto'
0000000008b2131f: 488d0dc80545f8               lea      rcx, [rip - 0x7bafa38] ; 'crypto_util.cc'
0000000008b21326: 4c8d054d0645f8               lea      r8, [rip - 0x7baf9b3] ; 'HKDF'
0000000008b2132d: 4c8db424d8000000             lea      r14, [rsp + 0xd8]
0000000008b21335: 4c89f7                       mov      rdi, r14
0000000008b21338: be04000000                   mov      esi, 4
0000000008b2133d: 41b9a2030000                 mov      r9d, 0x3a2
0000000008b21343: 6a00                         push     0
0000000008b21345: 6a00                         push     0
0000000008b21347: e854025f00                   call     0x91115a0
0000000008b2134c: 4883c410                     add      rsp, 0x10
0000000008b21350: 0f57c0                       xorps    xmm0, xmm0
0000000008b21353: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008b2135b: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008b21360: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008b21365: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008b2136a: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008b2136f: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008b21374: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008b21379: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008b2137e: 488d3514cc34f8               lea      rsi, [rip - 0x7cb33ec] ; 'HKDF_Expand failed'
0000000008b21385: e918010000                   jmp      0x8b214a2
0000000008b2138a: bf04000000                   mov      edi, 4
0000000008b2138f: e8fc585f00                   call     0x9116c90
0000000008b21394: 85c0                         test     eax, eax
0000000008b21396: 0f8482000000                 je       0x8b2141e
0000000008b2139c: 488d1559ab2bf8               lea      rdx, [rip - 0x7d454a7] ; 'mars::mmcrypto'
0000000008b213a3: 488d0d440545f8               lea      rcx, [rip - 0x7bafabc] ; 'crypto_util.cc'
0000000008b213aa: 4c8d055d7f43f8               lea      r8, [rip - 0x7bc80a3] ; 'HKDF_Extract'
0000000008b213b1: 488d9c24d8000000             lea      rbx, [rsp + 0xd8]
0000000008b213b9: 4889df                       mov      rdi, rbx
0000000008b213bc: be04000000                   mov      esi, 4
0000000008b213c1: 41b9c7030000                 mov      r9d, 0x3c7
0000000008b213c7: 6a00                         push     0
0000000008b213c9: 6a00                         push     0
0000000008b213cb: e8d0015f00                   call     0x91115a0
0000000008b213d0: 4883c410                     add      rsp, 0x10
0000000008b213d4: 0f57c0                       xorps    xmm0, xmm0
0000000008b213d7: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008b213df: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008b213e4: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008b213e9: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008b213ee: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008b213f3: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008b213f8: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008b213fd: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008b21402: 488d350f0c48f8               lea      rsi, [rip - 0x7b7f3f1] ; 'HMAC failed'
0000000008b21409: 488d542410                   lea      rdx, [rsp + 0x10]
0000000008b2140e: 4889df                       mov      rdi, rbx
0000000008b21411: e8da045f00                   call     0x91118f0
0000000008b21416: 4889df                       mov      rdi, rbx
0000000008b21419: e812025f00                   call     0x9111630
0000000008b2141e: bf04000000                   mov      edi, 4
0000000008b21423: e868585f00                   call     0x9116c90
0000000008b21428: bbffffffff                   mov      ebx, 0xffffffff
0000000008b2142d: 85c0                         test     eax, eax
0000000008b2142f: 0f8486000000                 je       0x8b214bb
0000000008b21435: 488d15c0aa2bf8               lea      rdx, [rip - 0x7d45540] ; 'mars::mmcrypto'
0000000008b2143c: 488d0dab0445f8               lea      rcx, [rip - 0x7bafb55] ; 'crypto_util.cc'
0000000008b21443: 4c8d05300545f8               lea      r8, [rip - 0x7bafad0] ; 'HKDF'
0000000008b2144a: 4c8db424d8000000             lea      r14, [rsp + 0xd8]
0000000008b21452: 4c89f7                       mov      rdi, r14
0000000008b21455: be04000000                   mov      esi, 4
0000000008b2145a: 41b99d030000                 mov      r9d, 0x39d
0000000008b21460: 6a00                         push     0
0000000008b21462: 6a00                         push     0
0000000008b21464: e837015f00                   call     0x91115a0
0000000008b21469: 4883c410                     add      rsp, 0x10
0000000008b2146d: 0f57c0                       xorps    xmm0, xmm0
0000000008b21470: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008b21478: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008b2147d: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008b21482: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008b21487: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008b2148c: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008b21491: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008b21496: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008b2149b: 488d35f7ca24f8               lea      rsi, [rip - 0x7db3509] ; 'HKDF_Extract failed'
0000000008b214a2: 488d542410                   lea      rdx, [rsp + 0x10]
0000000008b214a7: 4c89f7                       mov      rdi, r14
0000000008b214aa: e841045f00                   call     0x91118f0
0000000008b214af: 4c89f7                       mov      rdi, r14
0000000008b214b2: e879015f00                   call     0x9111630
0000000008b214b7: eb02                         jmp      0x8b214bb
0000000008b214b9: 31db                         xor      ebx, ebx
0000000008b214bb: 89d8                         mov      eax, ebx
0000000008b214bd: 4881c468010000               add      rsp, 0x168
0000000008b214c4: 5b                           pop      rbx
0000000008b214c5: 415e                         pop      r14
0000000008b214c7: c3                           ret

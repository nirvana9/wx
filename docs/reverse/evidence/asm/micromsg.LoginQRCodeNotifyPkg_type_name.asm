0000000007cc49e0: 53                           push     rbx
0000000007cc49e1: 4889fb                       mov      rbx, rdi
0000000007cc49e4: bf20000000                   mov      edi, 0x20
0000000007cc49e9: e8b2939a02                   call     0xa66dda0
0000000007cc49ee: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cc49f2: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cc49f9: 48c743081d000000             mov      qword ptr [rbx + 8], 0x1d
0000000007cc4a01: 0f1005696b24f9               movups   xmm0, xmmword ptr [rip - 0x6db9497]
0000000007cc4a08: 0f11400d                     movups   xmmword ptr [rax + 0xd], xmm0
0000000007cc4a0c: 0f1005516b24f9               movups   xmm0, xmmword ptr [rip - 0x6db94af]
0000000007cc4a13: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc4a16: c6401d00                     mov      byte ptr [rax + 0x1d], 0
0000000007cc4a1a: 4889d8                       mov      rax, rbx
0000000007cc4a1d: 5b                           pop      rbx
0000000007cc4a1e: c3                           ret

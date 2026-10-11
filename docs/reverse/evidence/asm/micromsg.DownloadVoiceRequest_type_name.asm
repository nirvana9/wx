0000000007d1d9f0: 53                           push     rbx
0000000007d1d9f1: 4889fb                       mov      rbx, rdi
0000000007d1d9f4: bf20000000                   mov      edi, 0x20
0000000007d1d9f9: e8a2039502                   call     0xa66dda0
0000000007d1d9fe: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007d1da02: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007d1da09: 48c743081d000000             mov      qword ptr [rbx + 8], 0x1d
0000000007d1da11: 0f1005b8c604f9               movups   xmm0, xmmword ptr [rip - 0x6fb3948]
0000000007d1da18: 0f11400d                     movups   xmmword ptr [rax + 0xd], xmm0
0000000007d1da1c: 0f1005a0c604f9               movups   xmm0, xmmword ptr [rip - 0x6fb3960]
0000000007d1da23: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007d1da26: c6401d00                     mov      byte ptr [rax + 0x1d], 0
0000000007d1da2a: 4889d8                       mov      rax, rbx
0000000007d1da2d: 5b                           pop      rbx
0000000007d1da2e: c3                           ret

0000000007df10b0: 53                           push     rbx
0000000007df10b1: 4889fb                       mov      rbx, rdi
0000000007df10b4: bf20000000                   mov      edi, 0x20
0000000007df10b9: e8e2cc8702                   call     0xa66dda0
0000000007df10be: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007df10c2: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007df10c9: 48c743081a000000             mov      qword ptr [rbx + 8], 0x1a
0000000007df10d1: 0f100590cc1af9               movups   xmm0, xmmword ptr [rip - 0x6e53370]
0000000007df10d8: 0f11400a                     movups   xmmword ptr [rax + 0xa], xmm0
0000000007df10dc: 0f10057bcc1af9               movups   xmm0, xmmword ptr [rip - 0x6e53385]
0000000007df10e3: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007df10e6: c6401a00                     mov      byte ptr [rax + 0x1a], 0
0000000007df10ea: 4889d8                       mov      rax, rbx
0000000007df10ed: 5b                           pop      rbx
0000000007df10ee: c3                           ret

0000000007df09f0: 53                           push     rbx
0000000007df09f1: 4889fb                       mov      rbx, rdi
0000000007df09f4: bf20000000                   mov      edi, 0x20
0000000007df09f9: e8a2d38702                   call     0xa66dda0
0000000007df09fe: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007df0a02: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007df0a09: 48c7430819000000             mov      qword ptr [rbx + 8], 0x19
0000000007df0a11: 0f1005a5e320f9               movups   xmm0, xmmword ptr [rip - 0x6df1c5b]
0000000007df0a18: 0f114009                     movups   xmmword ptr [rax + 9], xmm0
0000000007df0a1c: 0f100591e320f9               movups   xmm0, xmmword ptr [rip - 0x6df1c6f]
0000000007df0a23: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007df0a26: c6401900                     mov      byte ptr [rax + 0x19], 0
0000000007df0a2a: 4889d8                       mov      rax, rbx
0000000007df0a2d: 5b                           pop      rbx
0000000007df0a2e: c3                           ret

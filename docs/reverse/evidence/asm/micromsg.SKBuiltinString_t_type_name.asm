0000000007ba0db0: 53                           push     rbx
0000000007ba0db1: 4889fb                       mov      rbx, rdi
0000000007ba0db4: bf20000000                   mov      edi, 0x20
0000000007ba0db9: e8e2cfac02                   call     0xa66dda0
0000000007ba0dbe: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007ba0dc2: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007ba0dc9: 48c743081a000000             mov      qword ptr [rbx + 8], 0x1a
0000000007ba0dd1: 0f10054d6b23f9               movups   xmm0, xmmword ptr [rip - 0x6dc94b3]
0000000007ba0dd8: 0f11400a                     movups   xmmword ptr [rax + 0xa], xmm0
0000000007ba0ddc: 0f1005386b23f9               movups   xmm0, xmmword ptr [rip - 0x6dc94c8]
0000000007ba0de3: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007ba0de6: c6401a00                     mov      byte ptr [rax + 0x1a], 0
0000000007ba0dea: 4889d8                       mov      rax, rbx
0000000007ba0ded: 5b                           pop      rbx
0000000007ba0dee: c3                           ret

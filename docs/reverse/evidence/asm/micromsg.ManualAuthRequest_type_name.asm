0000000007cdbc80: 53                           push     rbx
0000000007cdbc81: 4889fb                       mov      rbx, rdi
0000000007cdbc84: bf20000000                   mov      edi, 0x20
0000000007cdbc89: e812219902                   call     0xa66dda0
0000000007cdbc8e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cdbc92: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cdbc99: 48c743081a000000             mov      qword ptr [rbx + 8], 0x1a
0000000007cdbca1: 0f1005fcce38f9               movups   xmm0, xmmword ptr [rip - 0x6c73104]
0000000007cdbca8: 0f11400a                     movups   xmmword ptr [rax + 0xa], xmm0
0000000007cdbcac: 0f1005e7ce38f9               movups   xmm0, xmmword ptr [rip - 0x6c73119]
0000000007cdbcb3: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cdbcb6: c6401a00                     mov      byte ptr [rax + 0x1a], 0
0000000007cdbcba: 4889d8                       mov      rax, rbx
0000000007cdbcbd: 5b                           pop      rbx
0000000007cdbcbe: c3                           ret

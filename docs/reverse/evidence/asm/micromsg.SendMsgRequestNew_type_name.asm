00000000079edb50: 53                           push     rbx
00000000079edb51: 4889fb                       mov      rbx, rdi
00000000079edb54: bf20000000                   mov      edi, 0x20
00000000079edb59: e84202c802                   call     0xa66dda0
00000000079edb5e: 48894310                     mov      qword ptr [rbx + 0x10], rax
00000000079edb62: 48c70321000000               mov      qword ptr [rbx], 0x21
00000000079edb69: 48c743081a000000             mov      qword ptr [rbx + 8], 0x1a
00000000079edb71: 0f10050e7656f9               movups   xmm0, xmmword ptr [rip - 0x6a989f2]
00000000079edb78: 0f11400a                     movups   xmmword ptr [rax + 0xa], xmm0
00000000079edb7c: 0f1005f97556f9               movups   xmm0, xmmword ptr [rip - 0x6a98a07]
00000000079edb83: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079edb86: c6401a00                     mov      byte ptr [rax + 0x1a], 0
00000000079edb8a: 4889d8                       mov      rax, rbx
00000000079edb8d: 5b                           pop      rbx
00000000079edb8e: c3                           ret

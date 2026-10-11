0000000007c33b60: 53                           push     rbx
0000000007c33b61: 4889fb                       mov      rbx, rdi
0000000007c33b64: bf20000000                   mov      edi, 0x20
0000000007c33b69: e832a2a302                   call     0xa66dda0
0000000007c33b6e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007c33b72: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007c33b79: 48c7430819000000             mov      qword ptr [rbx + 8], 0x19
0000000007c33b81: 0f100583e71bf9               movups   xmm0, xmmword ptr [rip - 0x6e4187d]
0000000007c33b88: 0f114009                     movups   xmmword ptr [rax + 9], xmm0
0000000007c33b8c: 0f10056fe71bf9               movups   xmm0, xmmword ptr [rip - 0x6e41891]
0000000007c33b93: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007c33b96: c6401900                     mov      byte ptr [rax + 0x19], 0
0000000007c33b9a: 4889d8                       mov      rax, rbx
0000000007c33b9d: 5b                           pop      rbx
0000000007c33b9e: c3                           ret

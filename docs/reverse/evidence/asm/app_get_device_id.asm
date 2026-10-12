0000000006042f70: 53                           push     rbx
0000000006042f71: 4889fb                       mov      rbx, rdi
0000000006042f74: e827473401                   call     0x73876a0
0000000006042f79: f60001                       test     byte ptr [rax], 1
0000000006042f7c: 7510                         jne      0x6042f8e
0000000006042f7e: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
0000000006042f82: 48894b10                     mov      qword ptr [rbx + 0x10], rcx
0000000006042f86: 0f1000                       movups   xmm0, xmmword ptr [rax]
0000000006042f89: 0f1103                       movups   xmmword ptr [rbx], xmm0
0000000006042f8c: eb10                         jmp      0x6042f9e
0000000006042f8e: 488b5008                     mov      rdx, qword ptr [rax + 8]
0000000006042f92: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000006042f96: 4889df                       mov      rdi, rbx
0000000006042f99: e802974cfe                   call     0x450c6a0
0000000006042f9e: 4889d8                       mov      rax, rbx
0000000006042fa1: 5b                           pop      rbx
0000000006042fa2: c3                           ret

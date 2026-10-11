0000000007dede70: 53                           push     rbx
0000000007dede71: 4889fb                       mov      rbx, rdi
0000000007dede74: bf20000000                   mov      edi, 0x20
0000000007dede79: e822ff8702                   call     0xa66dda0
0000000007dede7e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007dede82: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007dede89: 48c7430818000000             mov      qword ptr [rbx + 8], 0x18
0000000007dede91: 48b9526573706f6e7365         movabs   rcx, 0x65736e6f70736552
0000000007dede9b: 48894810                     mov      qword ptr [rax + 0x10], rcx
0000000007dede9f: 0f10055fe70df9               movups   xmm0, xmmword ptr [rip - 0x6f218a1]
0000000007dedea6: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007dedea9: c6401800                     mov      byte ptr [rax + 0x18], 0
0000000007dedead: 4889d8                       mov      rax, rbx
0000000007dedeb0: 5b                           pop      rbx
0000000007dedeb1: c3                           ret

0000000007debfc0: 53                           push     rbx
0000000007debfc1: 4889fb                       mov      rbx, rdi
0000000007debfc4: bf20000000                   mov      edi, 0x20
0000000007debfc9: e8d21d8802                   call     0xa66dda0
0000000007debfce: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007debfd2: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007debfd9: 48c7430818000000             mov      qword ptr [rbx + 8], 0x18
0000000007debfe1: 48b9526573706f6e7365         movabs   rcx, 0x65736e6f70736552
0000000007debfeb: 48894810                     mov      qword ptr [rax + 0x10], rcx
0000000007debfef: 0f1005c95324f9               movups   xmm0, xmmword ptr [rip - 0x6dbac37]
0000000007debff6: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007debff9: c6401800                     mov      byte ptr [rax + 0x18], 0
0000000007debffd: 4889d8                       mov      rax, rbx
0000000007dec000: 5b                           pop      rbx
0000000007dec001: c3                           ret

0000000007cd64f0: 53                           push     rbx
0000000007cd64f1: 4889fb                       mov      rbx, rdi
0000000007cd64f4: bf20000000                   mov      edi, 0x20
0000000007cd64f9: e8a2789902                   call     0xa66dda0
0000000007cd64fe: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cd6502: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cd6509: 48c743081d000000             mov      qword ptr [rbx + 8], 0x1d
0000000007cd6511: 0f100540ae0af9               movups   xmm0, xmmword ptr [rip - 0x6f551c0]
0000000007cd6518: 0f11400d                     movups   xmmword ptr [rax + 0xd], xmm0
0000000007cd651c: 0f100528ae0af9               movups   xmm0, xmmword ptr [rip - 0x6f551d8]
0000000007cd6523: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cd6526: c6401d00                     mov      byte ptr [rax + 0x1d], 0
0000000007cd652a: 4889d8                       mov      rax, rbx
0000000007cd652d: 5b                           pop      rbx
0000000007cd652e: c3                           ret

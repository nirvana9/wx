0000000007c023e0: 53                           push     rbx
0000000007c023e1: 4889fb                       mov      rbx, rdi
0000000007c023e4: bf28000000                   mov      edi, 0x28
0000000007c023e9: e8b2b9a602                   call     0xa66dda0
0000000007c023ee: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007c023f2: 48c70329000000               mov      qword ptr [rbx], 0x29
0000000007c023f9: 48c7430821000000             mov      qword ptr [rbx + 8], 0x21
0000000007c02401: 0f1005365a3ef9               movups   xmm0, xmmword ptr [rip - 0x6c1a5ca]
0000000007c02408: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
0000000007c0240c: 0f10051b5a3ef9               movups   xmm0, xmmword ptr [rip - 0x6c1a5e5]
0000000007c02413: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007c02416: 66c740207400                 mov      word ptr [rax + 0x20], 0x74
0000000007c0241c: 4889d8                       mov      rax, rbx
0000000007c0241f: 5b                           pop      rbx
0000000007c02420: c3                           ret

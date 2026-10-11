0000000007ba09b0: 53                           push     rbx
0000000007ba09b1: 4889fb                       mov      rbx, rdi
0000000007ba09b4: bf20000000                   mov      edi, 0x20
0000000007ba09b9: e8e2d3ac02                   call     0xa66dda0
0000000007ba09be: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007ba09c2: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007ba09c9: 48c743081a000000             mov      qword ptr [rbx + 8], 0x1a
0000000007ba09d1: 0f1005335020f9               movups   xmm0, xmmword ptr [rip - 0x6dfafcd]
0000000007ba09d8: 0f11400a                     movups   xmmword ptr [rax + 0xa], xmm0
0000000007ba09dc: 0f10051e5020f9               movups   xmm0, xmmword ptr [rip - 0x6dfafe2]
0000000007ba09e3: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007ba09e6: c6401a00                     mov      byte ptr [rax + 0x1a], 0
0000000007ba09ea: 4889d8                       mov      rax, rbx
0000000007ba09ed: 5b                           pop      rbx
0000000007ba09ee: c3                           ret

0000000007cc7890: 53                           push     rbx
0000000007cc7891: 4889fb                       mov      rbx, rdi
0000000007cc7894: bf20000000                   mov      edi, 0x20
0000000007cc7899: e802659a02                   call     0xa66dda0
0000000007cc789e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cc78a2: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cc78a9: 48c743081f000000             mov      qword ptr [rbx + 8], 0x1f
0000000007cc78b1: 0f1005c09936f9               movups   xmm0, xmmword ptr [rip - 0x6c96640]
0000000007cc78b8: 0f11400f                     movups   xmmword ptr [rax + 0xf], xmm0
0000000007cc78bc: 0f1005a69936f9               movups   xmm0, xmmword ptr [rip - 0x6c9665a]
0000000007cc78c3: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc78c6: c6401f00                     mov      byte ptr [rax + 0x1f], 0
0000000007cc78ca: 4889d8                       mov      rax, rbx
0000000007cc78cd: 5b                           pop      rbx
0000000007cc78ce: c3                           ret

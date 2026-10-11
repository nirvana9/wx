0000000007c032e0: 53                           push     rbx
0000000007c032e1: 4889fb                       mov      rbx, rdi
0000000007c032e4: bf28000000                   mov      edi, 0x28
0000000007c032e9: e8b2aaa602                   call     0xa66dda0
0000000007c032ee: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007c032f2: 48c70329000000               mov      qword ptr [rbx], 0x29
0000000007c032f9: 48c7430822000000             mov      qword ptr [rbx + 8], 0x22
0000000007c03301: 0f1005782c38f9               movups   xmm0, xmmword ptr [rip - 0x6c7d388]
0000000007c03308: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
0000000007c0330c: 0f10055d2c38f9               movups   xmm0, xmmword ptr [rip - 0x6c7d3a3]
0000000007c03313: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007c03316: 66c740207365                 mov      word ptr [rax + 0x20], 0x6573
0000000007c0331c: c6402200                     mov      byte ptr [rax + 0x22], 0
0000000007c03320: 4889d8                       mov      rax, rbx
0000000007c03323: 5b                           pop      rbx
0000000007c03324: c3                           ret

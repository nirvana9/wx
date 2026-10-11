0000000007cf28a0: 53                           push     rbx
0000000007cf28a1: 4889fb                       mov      rbx, rdi
0000000007cf28a4: bf20000000                   mov      edi, 0x20
0000000007cf28a9: e8f2b49702                   call     0xa66dda0
0000000007cf28ae: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cf28b2: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cf28b9: 48c7430819000000             mov      qword ptr [rbx + 8], 0x19
0000000007cf28c1: 0f1005d4572cf9               movups   xmm0, xmmword ptr [rip - 0x6d3a82c]
0000000007cf28c8: 0f114009                     movups   xmmword ptr [rax + 9], xmm0
0000000007cf28cc: 0f1005c0572cf9               movups   xmm0, xmmword ptr [rip - 0x6d3a840]
0000000007cf28d3: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cf28d6: c6401900                     mov      byte ptr [rax + 0x19], 0
0000000007cf28da: 4889d8                       mov      rax, rbx
0000000007cf28dd: 5b                           pop      rbx
0000000007cf28de: c3                           ret

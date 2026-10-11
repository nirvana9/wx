0000000007d056e0: 53                           push     rbx
0000000007d056e1: 4889fb                       mov      rbx, rdi
0000000007d056e4: bf20000000                   mov      edi, 0x20
0000000007d056e9: e8b2869602                   call     0xa66dda0
0000000007d056ee: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007d056f2: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007d056f9: 48c743081c000000             mov      qword ptr [rbx + 8], 0x1c
0000000007d05701: 0f1005358226f9               movups   xmm0, xmmword ptr [rip - 0x6d97dcb]
0000000007d05708: 0f11400c                     movups   xmmword ptr [rax + 0xc], xmm0
0000000007d0570c: 0f10051e8226f9               movups   xmm0, xmmword ptr [rip - 0x6d97de2]
0000000007d05713: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007d05716: c6401c00                     mov      byte ptr [rax + 0x1c], 0
0000000007d0571a: 4889d8                       mov      rax, rbx
0000000007d0571d: 5b                           pop      rbx
0000000007d0571e: c3                           ret

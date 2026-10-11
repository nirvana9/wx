0000000007d16dc0: 53                           push     rbx
0000000007d16dc1: 4889fb                       mov      rbx, rdi
0000000007d16dc4: bf20000000                   mov      edi, 0x20
0000000007d16dc9: e8d26f9502                   call     0xa66dda0
0000000007d16dce: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007d16dd2: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007d16dd9: 48c743081c000000             mov      qword ptr [rbx + 8], 0x1c
0000000007d16de1: 0f1005726b25f9               movups   xmm0, xmmword ptr [rip - 0x6da948e]
0000000007d16de8: 0f11400c                     movups   xmmword ptr [rax + 0xc], xmm0
0000000007d16dec: 0f10055b6b25f9               movups   xmm0, xmmword ptr [rip - 0x6da94a5]
0000000007d16df3: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007d16df6: c6401c00                     mov      byte ptr [rax + 0x1c], 0
0000000007d16dfa: 4889d8                       mov      rax, rbx
0000000007d16dfd: 5b                           pop      rbx
0000000007d16dfe: c3                           ret

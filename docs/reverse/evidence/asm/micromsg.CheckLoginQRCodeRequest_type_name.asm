0000000007cc8350: 53                           push     rbx
0000000007cc8351: 4889fb                       mov      rbx, rdi
0000000007cc8354: bf28000000                   mov      edi, 0x28
0000000007cc8359: e8425a9a02                   call     0xa66dda0
0000000007cc835e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cc8362: 48c70329000000               mov      qword ptr [rbx], 0x29
0000000007cc8369: 48c7430820000000             mov      qword ptr [rbx + 8], 0x20
0000000007cc8371: 0f10051a3224f9               movups   xmm0, xmmword ptr [rip - 0x6dbcde6]
0000000007cc8378: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
0000000007cc837c: 0f1005ff3124f9               movups   xmm0, xmmword ptr [rip - 0x6dbce01]
0000000007cc8383: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc8386: c6402000                     mov      byte ptr [rax + 0x20], 0
0000000007cc838a: 4889d8                       mov      rax, rbx
0000000007cc838d: 5b                           pop      rbx
0000000007cc838e: c3                           ret

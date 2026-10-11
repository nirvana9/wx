00000000079f2730: 53                           push     rbx
00000000079f2731: 4889fb                       mov      rbx, rdi
00000000079f2734: bf20000000                   mov      edi, 0x20
00000000079f2739: e862b6c702                   call     0xa66dda0
00000000079f273e: 48894310                     mov      qword ptr [rbx + 0x10], rax
00000000079f2742: 48c70321000000               mov      qword ptr [rbx], 0x21
00000000079f2749: 48c743081c000000             mov      qword ptr [rbx + 8], 0x1c
00000000079f2751: 0f100594ae5af9               movups   xmm0, xmmword ptr [rip - 0x6a5516c]
00000000079f2758: 0f11400c                     movups   xmmword ptr [rax + 0xc], xmm0
00000000079f275c: 0f10057dae5af9               movups   xmm0, xmmword ptr [rip - 0x6a55183]
00000000079f2763: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079f2766: c6401c00                     mov      byte ptr [rax + 0x1c], 0
00000000079f276a: 4889d8                       mov      rax, rbx
00000000079f276d: 5b                           pop      rbx
00000000079f276e: c3                           ret

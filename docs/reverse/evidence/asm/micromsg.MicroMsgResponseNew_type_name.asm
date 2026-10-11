00000000079ee650: 53                           push     rbx
00000000079ee651: 4889fb                       mov      rbx, rdi
00000000079ee654: bf20000000                   mov      edi, 0x20
00000000079ee659: e842f7c702                   call     0xa66dda0
00000000079ee65e: 48894310                     mov      qword ptr [rbx + 0x10], rax
00000000079ee662: 48c70321000000               mov      qword ptr [rbx], 0x21
00000000079ee669: 48c743081c000000             mov      qword ptr [rbx + 8], 0x1c
00000000079ee671: 0f100502de54f9               movups   xmm0, xmmword ptr [rip - 0x6ab21fe]
00000000079ee678: 0f11400c                     movups   xmmword ptr [rax + 0xc], xmm0
00000000079ee67c: 0f1005ebdd54f9               movups   xmm0, xmmword ptr [rip - 0x6ab2215]
00000000079ee683: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079ee686: c6401c00                     mov      byte ptr [rax + 0x1c], 0
00000000079ee68a: 4889d8                       mov      rax, rbx
00000000079ee68d: 5b                           pop      rbx
00000000079ee68e: c3                           ret

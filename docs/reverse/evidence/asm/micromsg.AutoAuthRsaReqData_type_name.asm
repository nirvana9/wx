0000000007cdc310: 53                           push     rbx
0000000007cdc311: 4889fb                       mov      rbx, rdi
0000000007cdc314: bf20000000                   mov      edi, 0x20
0000000007cdc319: e8821a9902                   call     0xa66dda0
0000000007cdc31e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007cdc322: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007cdc329: 48c743081b000000             mov      qword ptr [rbx + 8], 0x1b
0000000007cdc331: 0f1005c3a620f9               movups   xmm0, xmmword ptr [rip - 0x6df593d]
0000000007cdc338: 0f11400b                     movups   xmmword ptr [rax + 0xb], xmm0
0000000007cdc33c: 0f1005ada620f9               movups   xmm0, xmmword ptr [rip - 0x6df5953]
0000000007cdc343: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cdc346: c6401b00                     mov      byte ptr [rax + 0x1b], 0
0000000007cdc34a: 4889d8                       mov      rax, rbx
0000000007cdc34d: 5b                           pop      rbx
0000000007cdc34e: c3                           ret

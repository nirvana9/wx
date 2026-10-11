0000000007d04920: 53                           push     rbx
0000000007d04921: 4889fb                       mov      rbx, rdi
0000000007d04924: bf20000000                   mov      edi, 0x20
0000000007d04929: e872949602                   call     0xa66dda0
0000000007d0492e: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007d04932: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007d04939: 48c743081b000000             mov      qword ptr [rbx + 8], 0x1b
0000000007d04941: 0f10056a5706f9               movups   xmm0, xmmword ptr [rip - 0x6f9a896]
0000000007d04948: 0f11400b                     movups   xmmword ptr [rax + 0xb], xmm0
0000000007d0494c: 0f1005545706f9               movups   xmm0, xmmword ptr [rip - 0x6f9a8ac]
0000000007d04953: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007d04956: c6401b00                     mov      byte ptr [rax + 0x1b], 0
0000000007d0495a: 4889d8                       mov      rax, rbx
0000000007d0495d: 5b                           pop      rbx
0000000007d0495e: c3                           ret

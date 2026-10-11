00000000079ed490: 53                           push     rbx
00000000079ed491: 4889fb                       mov      rbx, rdi
00000000079ed494: bf20000000                   mov      edi, 0x20
00000000079ed499: e80209c802                   call     0xa66dda0
00000000079ed49e: 48894310                     mov      qword ptr [rbx + 0x10], rax
00000000079ed4a2: 48c70321000000               mov      qword ptr [rbx], 0x21
00000000079ed4a9: 48c743081b000000             mov      qword ptr [rbx + 8], 0x1b
00000000079ed4b1: 0f1005758d4ff9               movups   xmm0, xmmword ptr [rip - 0x6b0728b]
00000000079ed4b8: 0f11400b                     movups   xmmword ptr [rax + 0xb], xmm0
00000000079ed4bc: 0f10055f8d4ff9               movups   xmm0, xmmword ptr [rip - 0x6b072a1]
00000000079ed4c3: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079ed4c6: c6401b00                     mov      byte ptr [rax + 0x1b], 0
00000000079ed4ca: 4889d8                       mov      rax, rbx
00000000079ed4cd: 5b                           pop      rbx
00000000079ed4ce: c3                           ret

00000000079eeea0: 53                           push     rbx
00000000079eeea1: 4889fb                       mov      rbx, rdi
00000000079eeea4: bf20000000                   mov      edi, 0x20
00000000079eeea9: e8f2eec702                   call     0xa66dda0
00000000079eeeae: 48894310                     mov      qword ptr [rbx + 0x10], rax
00000000079eeeb2: 48c70321000000               mov      qword ptr [rbx], 0x21
00000000079eeeb9: 48c743081b000000             mov      qword ptr [rbx + 8], 0x1b
00000000079eeec1: 0f1005111769f9               movups   xmm0, xmmword ptr [rip - 0x696e8ef]
00000000079eeec8: 0f11400b                     movups   xmmword ptr [rax + 0xb], xmm0
00000000079eeecc: 0f1005fb1669f9               movups   xmm0, xmmword ptr [rip - 0x696e905]
00000000079eeed3: 0f1100                       movups   xmmword ptr [rax], xmm0
00000000079eeed6: c6401b00                     mov      byte ptr [rax + 0x1b], 0
00000000079eeeda: 4889d8                       mov      rax, rbx
00000000079eeedd: 5b                           pop      rbx
00000000079eeede: c3                           ret

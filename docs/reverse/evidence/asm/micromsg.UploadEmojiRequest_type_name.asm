0000000007d15bf0: 53                           push     rbx
0000000007d15bf1: 4889fb                       mov      rbx, rdi
0000000007d15bf4: bf20000000                   mov      edi, 0x20
0000000007d15bf9: e8a2819502                   call     0xa66dda0
0000000007d15bfe: 48894310                     mov      qword ptr [rbx + 0x10], rax
0000000007d15c02: 48c70321000000               mov      qword ptr [rbx], 0x21
0000000007d15c09: 48c743081b000000             mov      qword ptr [rbx + 8], 0x1b
0000000007d15c11: 0f10053e0e1df9               movups   xmm0, xmmword ptr [rip - 0x6e2f1c2]
0000000007d15c18: 0f11400b                     movups   xmmword ptr [rax + 0xb], xmm0
0000000007d15c1c: 0f1005280e1df9               movups   xmm0, xmmword ptr [rip - 0x6e2f1d8]
0000000007d15c23: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007d15c26: c6401b00                     mov      byte ptr [rax + 0x1b], 0
0000000007d15c2a: 4889d8                       mov      rax, rbx
0000000007d15c2d: 5b                           pop      rbx
0000000007d15c2e: c3                           ret

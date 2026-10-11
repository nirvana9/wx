0000000007ba1460: 4889f8                       mov      rax, rdi
0000000007ba1463: c60720                       mov      byte ptr [rdi], 0x20
0000000007ba1466: 0f1005e40a28f9               movups   xmm0, xmmword ptr [rip - 0x6d7f51c]
0000000007ba146d: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
0000000007ba1471: c6471100                     mov      byte ptr [rdi + 0x11], 0
0000000007ba1475: c3                           ret

0000000008e17b20: 4889f8                       mov      rax, rdi
0000000008e17b23: c60720                       mov      byte ptr [rdi], 0x20
0000000008e17b26: 0f10054e7402f8               movups   xmm0, xmmword ptr [rip - 0x7fd8bb2]
0000000008e17b2d: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
0000000008e17b31: c6471100                     mov      byte ptr [rdi + 0x11], 0
0000000008e17b35: c3                           ret

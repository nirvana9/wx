0000000008e158b0: 4889f8                       mov      rax, rdi
0000000008e158b3: c60724                       mov      byte ptr [rdi], 0x24
0000000008e158b6: 0f1005b27a1af8               movups   xmm0, xmmword ptr [rip - 0x7e5854e]
0000000008e158bd: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
0000000008e158c1: 66c747115631                 mov      word ptr [rdi + 0x11], 0x3156
0000000008e158c7: c6471300                     mov      byte ptr [rdi + 0x13], 0
0000000008e158cb: c3                           ret

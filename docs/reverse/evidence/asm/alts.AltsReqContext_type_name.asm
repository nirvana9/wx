0000000008e14e80: 4889f8                       mov      rax, rdi
0000000008e14e83: c60726                       mov      byte ptr [rdi], 0x26
0000000008e14e86: 0f1005a48020f8               movups   xmm0, xmmword ptr [rip - 0x7df7f5c]
0000000008e14e8d: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
0000000008e14e91: c7471074657874               mov      dword ptr [rdi + 0x10], 0x74786574
0000000008e14e98: c6471400                     mov      byte ptr [rdi + 0x14], 0
0000000008e14e9c: c3                           ret

0000000007dee8b0: 4889f8                       mov      rax, rdi
0000000007dee8b3: c60720                       mov      byte ptr [rdi], 0x20
0000000007dee8b6: 0f1005e60421f9               movups   xmm0, xmmword ptr [rip - 0x6defb1a]
0000000007dee8bd: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
0000000007dee8c1: c6471100                     mov      byte ptr [rdi + 0x11], 0
0000000007dee8c5: c3                           ret

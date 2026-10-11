0000000007ceae00: 4889f8                       mov      rax, rdi
0000000007ceae03: c6072c                       mov      byte ptr [rdi], 0x2c
0000000007ceae06: 48b96852657175657374         movabs   rcx, 0x7473657571655268
0000000007ceae10: 48894f0f                     mov      qword ptr [rdi + 0xf], rcx
0000000007ceae14: 0f1005656509f9               movups   xmm0, xmmword ptr [rip - 0x6f69a9b]
0000000007ceae1b: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
0000000007ceae1f: c6471700                     mov      byte ptr [rdi + 0x17], 0
0000000007ceae23: c3                           ret

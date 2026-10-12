00000000079ec8d0: 4889f8                       mov      rax, rdi
00000000079ec8d3: c60726                       mov      byte ptr [rdi], 0x26
00000000079ec8d6: 0f100594ce37f9               movups   xmm0, xmmword ptr [rip - 0x6c8316c]
00000000079ec8dd: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
00000000079ec8e1: c74710496e666f               mov      dword ptr [rdi + 0x10], 0x6f666e49
00000000079ec8e8: c6471400                     mov      byte ptr [rdi + 0x14], 0
00000000079ec8ec: c3                           ret

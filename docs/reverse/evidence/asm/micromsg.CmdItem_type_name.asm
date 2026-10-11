0000000007bf23c0: 4889f8                       mov      rax, rdi
0000000007bf23c3: c60720                       mov      byte ptr [rdi], 0x20
0000000007bf23c6: 0f100543e548f9               movups   xmm0, xmmword ptr [rip - 0x6b71abd]
0000000007bf23cd: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
0000000007bf23d1: c6471100                     mov      byte ptr [rdi + 0x11], 0
0000000007bf23d5: c3                           ret

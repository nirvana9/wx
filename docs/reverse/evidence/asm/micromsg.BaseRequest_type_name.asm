00000000079f3f20: 4889f8                       mov      rax, rdi
00000000079f3f23: c60728                       mov      byte ptr [rdi], 0x28
00000000079f3f26: 0f100535153bf9               movups   xmm0, xmmword ptr [rip - 0x6c4eacb]
00000000079f3f2d: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
00000000079f3f31: c7471175657374               mov      dword ptr [rdi + 0x11], 0x74736575
00000000079f3f38: c6471500                     mov      byte ptr [rdi + 0x15], 0
00000000079f3f3c: c3                           ret

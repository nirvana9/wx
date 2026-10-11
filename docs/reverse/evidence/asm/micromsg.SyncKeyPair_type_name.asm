0000000007bd4ce0: 4889f8                       mov      rax, rdi
0000000007bd4ce3: c60728                       mov      byte ptr [rdi], 0x28
0000000007bd4ce6: 0f100528cd3ff9               movups   xmm0, xmmword ptr [rip - 0x6c032d8]
0000000007bd4ced: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
0000000007bd4cf1: c7471150616972               mov      dword ptr [rdi + 0x11], 0x72696150
0000000007bd4cf8: c6471500                     mov      byte ptr [rdi + 0x15], 0
0000000007bd4cfc: c3                           ret

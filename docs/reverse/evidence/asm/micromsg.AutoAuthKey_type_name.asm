0000000007cdc9a0: 4889f8                       mov      rax, rdi
0000000007cdc9a3: c60728                       mov      byte ptr [rdi], 0x28
0000000007cdc9a6: 0f10051c5a11f9               movups   xmm0, xmmword ptr [rip - 0x6eea5e4]
0000000007cdc9ad: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
0000000007cdc9b1: c74711684b6579               mov      dword ptr [rdi + 0x11], 0x79654b68
0000000007cdc9b8: c6471500                     mov      byte ptr [rdi + 0x15], 0
0000000007cdc9bc: c3                           ret

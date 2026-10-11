0000000007bf2a50: 4889f8                       mov      rax, rdi
0000000007bf2a53: c60720                       mov      byte ptr [rdi], 0x20
0000000007bf2a56: 0f1005d3ab37f9               movups   xmm0, xmmword ptr [rip - 0x6c8542d]
0000000007bf2a5d: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
0000000007bf2a61: c6471100                     mov      byte ptr [rdi + 0x11], 0
0000000007bf2a65: c3                           ret

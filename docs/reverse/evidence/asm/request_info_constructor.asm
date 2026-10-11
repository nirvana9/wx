0000000008e19a80: 488d0529c4c101               lea      rax, [rip + 0x1c1c429]
0000000008e19a87: 4883c010                     add      rax, 0x10
0000000008e19a8b: 488907                       mov      qword ptr [rdi], rax
0000000008e19a8e: 48c7474000000000             mov      qword ptr [rdi + 0x40], 0
0000000008e19a96: 48c7470800000000             mov      qword ptr [rdi + 8], 0
0000000008e19a9e: 488d054bdcef01               lea      rax, [rip + 0x1efdc4b]
0000000008e19aa5: 48894710                     mov      qword ptr [rdi + 0x10], rax
0000000008e19aa9: 48c7471800000000             mov      qword ptr [rdi + 0x18], 0
0000000008e19ab1: 66c747280000                 mov      word ptr [rdi + 0x28], 0
0000000008e19ab7: 48894720                     mov      qword ptr [rdi + 0x20], rax
0000000008e19abb: c7472a00000000               mov      dword ptr [rdi + 0x2a], 0
0000000008e19ac2: 0f57c0                       xorps    xmm0, xmm0
0000000008e19ac5: 0f114730                     movups   xmmword ptr [rdi + 0x30], xmm0
0000000008e19ac9: c3                           ret

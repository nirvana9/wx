00000000079f45d0: 4889f8                       mov      rax, rdi
00000000079f45d3: c6072a                       mov      byte ptr [rdi], 0x2a
00000000079f45d6: 48b9526573706f6e7365         movabs   rcx, 0x65736e6f70736552
00000000079f45e0: 48894f0e                     mov      qword ptr [rdi + 0xe], rcx
00000000079f45e4: 0f10053af24bf9               movups   xmm0, xmmword ptr [rip - 0x6b40dc6]
00000000079f45eb: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
00000000079f45ef: c6471600                     mov      byte ptr [rdi + 0x16], 0
00000000079f45f3: c3                           ret

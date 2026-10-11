0000000007bd52d0: 4889f8                       mov      rax, rdi
0000000007bd52d3: c6072c                       mov      byte ptr [rdi], 0x2c
0000000007bd52d6: 48b96579427566666572         movabs   rcx, 0x7265666675427965
0000000007bd52e0: 48894f0f                     mov      qword ptr [rdi + 0xf], rcx
0000000007bd52e4: 0f1005a8eb2df9               movups   xmm0, xmmword ptr [rip - 0x6d21458]
0000000007bd52eb: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
0000000007bd52ef: c6471700                     mov      byte ptr [rdi + 0x17], 0
0000000007bd52f3: c3                           ret

0000000008e10dd0: 4889f8                       mov      rax, rdi
0000000008e10dd3: c60710                       mov      byte ptr [rdi], 0x10
0000000008e10dd6: 48b9616c74732e504b47         movabs   rcx, 0x474b502e73746c61
0000000008e10de0: 48894f01                     mov      qword ptr [rdi + 1], rcx
0000000008e10de4: c6470900                     mov      byte ptr [rdi + 9], 0
0000000008e10de8: c3                           ret

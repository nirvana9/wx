0000000007ce4680: 4889f8                       mov      rax, rdi
0000000007ce4683: c6072a                       mov      byte ptr [rdi], 0x2a
0000000007ce4686: 48b95365637452657370         movabs   rcx, 0x7073655274636553
0000000007ce4690: 48894f0e                     mov      qword ptr [rdi + 0xe], rcx
0000000007ce4694: 0f100589a531f9               movups   xmm0, xmmword ptr [rip - 0x6ce5a77]
0000000007ce469b: 0f114701                     movups   xmmword ptr [rdi + 1], xmm0
0000000007ce469f: c6471600                     mov      byte ptr [rdi + 0x16], 0
0000000007ce46a3: c3                           ret

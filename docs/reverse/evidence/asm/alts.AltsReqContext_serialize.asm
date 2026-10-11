0000000008e14dc0: f6471401                     test     byte ptr [rdi + 0x14], 1
0000000008e14dc4: 7501                         jne      0x8e14dc7
0000000008e14dc6: c3                           ret
0000000008e14dc7: 4889f2                       mov      rdx, rsi
0000000008e14dca: 488b7708                     mov      rsi, qword ptr [rdi + 8]
0000000008e14dce: 4885f6                       test     rsi, rsi
0000000008e14dd1: 740a                         je       0x8e14ddd
0000000008e14dd3: bf01000000                   mov      edi, 1
0000000008e14dd8: e913d91300                   jmp      0x8f526f0
0000000008e14ddd: 488d056cf0ef01               lea      rax, [rip + 0x1eff06c]
0000000008e14de4: 488b00                       mov      rax, qword ptr [rax]
0000000008e14de7: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000008e14deb: bf01000000                   mov      edi, 1
0000000008e14df0: e9fbd81300                   jmp      0x8f526f0

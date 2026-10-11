0000000007ba0d00: f6471401                     test     byte ptr [rdi + 0x14], 1
0000000007ba0d04: 7501                         jne      0x7ba0d07
0000000007ba0d06: c3                           ret
0000000007ba0d07: 4889f2                       mov      rdx, rsi
0000000007ba0d0a: 488b7708                     mov      rsi, qword ptr [rdi + 8]
0000000007ba0d0e: bf01000000                   mov      edi, 1
0000000007ba0d13: e938183b01                   jmp      0x8f52550

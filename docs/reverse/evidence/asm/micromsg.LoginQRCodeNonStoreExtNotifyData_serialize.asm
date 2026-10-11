0000000007cc9170: f6471001                     test     byte ptr [rdi + 0x10], 1
0000000007cc9174: 7501                         jne      0x7cc9177
0000000007cc9176: c3                           ret
0000000007cc9177: 4889f2                       mov      rdx, rsi
0000000007cc917a: 8b7708                       mov      esi, dword ptr [rdi + 8]
0000000007cc917d: bf01000000                   mov      edi, 1
0000000007cc9182: e9f9912801                   jmp      0x8f52380

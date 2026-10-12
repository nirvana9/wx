00000000084e38c0: 53                           push     rbx
00000000084e38c1: 4883ec10                     sub      rsp, 0x10
00000000084e38c5: 4889fb                       mov      rbx, rdi
00000000084e38c8: c744240400000000             mov      dword ptr [rsp + 4], 0
00000000084e38d0: 48c744240800000000           mov      qword ptr [rsp + 8], 0
00000000084e38d9: 488d742408                   lea      rsi, [rsp + 8]
00000000084e38de: 488d542404                   lea      rdx, [rsp + 4]
00000000084e38e3: 31ff                         xor      edi, edi
00000000084e38e5: e896626201                   call     0x9b09b80
00000000084e38ea: 8b542404                     mov      edx, dword ptr [rsp + 4]
00000000084e38ee: 85d2                         test     edx, edx
00000000084e38f0: 7e1c                         jle      0x84e390e
00000000084e38f2: 488b742408                   mov      rsi, qword ptr [rsp + 8]
00000000084e38f7: 4885f6                       test     rsi, rsi
00000000084e38fa: 7412                         je       0x84e390e
00000000084e38fc: 4889df                       mov      rdi, rbx
00000000084e38ff: e8ac9802fc                   call     0x450d1b0
00000000084e3904: 488b7c2408                   mov      rdi, qword ptr [rsp + 8]
00000000084e3909: e882626201                   call     0x9b09b90
00000000084e390e: 4883c410                     add      rsp, 0x10
00000000084e3912: 5b                           pop      rbx
00000000084e3913: c3                           ret

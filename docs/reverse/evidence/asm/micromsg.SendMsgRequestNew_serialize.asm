00000000079ed9d0: 4157                         push     r15
00000000079ed9d2: 4156                         push     r14
00000000079ed9d4: 53                           push     rbx
00000000079ed9d5: 4889f3                       mov      rbx, rsi
00000000079ed9d8: 4989fe                       mov      r14, rdi
00000000079ed9db: f6472801                     test     byte ptr [rdi + 0x28], 1
00000000079ed9df: 7411                         je       0x79ed9f2
00000000079ed9e1: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
00000000079ed9e5: bf01000000                   mov      edi, 1
00000000079ed9ea: 4889da                       mov      rdx, rbx
00000000079ed9ed: e88e495601                   call     0x8f52380
00000000079ed9f2: 41837e1000                   cmp      dword ptr [r14 + 0x10], 0
00000000079ed9f7: 7e28                         jle      0x79eda21
00000000079ed9f9: 4531ff                       xor      r15d, r15d
00000000079ed9fc: 0f1f4000                     nop      dword ptr [rax]
00000000079eda00: 498b4608                     mov      rax, qword ptr [r14 + 8]
00000000079eda04: 4a8b34f8                     mov      rsi, qword ptr [rax + r15*8]
00000000079eda08: bf02000000                   mov      edi, 2
00000000079eda0d: 4889da                       mov      rdx, rbx
00000000079eda10: e8db4c5601                   call     0x8f526f0
00000000079eda15: 49ffc7                       inc      r15
00000000079eda18: 49634610                     movsxd   rax, dword ptr [r14 + 0x10]
00000000079eda1c: 4939c7                       cmp      r15, rax
00000000079eda1f: 7cdf                         jl       0x79eda00
00000000079eda21: 5b                           pop      rbx
00000000079eda22: 415e                         pop      r14
00000000079eda24: 415f                         pop      r15
00000000079eda26: c3                           ret

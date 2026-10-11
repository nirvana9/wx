0000000007d15950: 4157                         push     r15
0000000007d15952: 4156                         push     r14
0000000007d15954: 53                           push     rbx
0000000007d15955: 4889f3                       mov      rbx, rsi
0000000007d15958: 4989fe                       mov      r14, rdi
0000000007d1595b: 8b4734                       mov      eax, dword ptr [rdi + 0x34]
0000000007d1595e: a801                         test     al, 1
0000000007d15960: 750d                         jne      0x7d1596f
0000000007d15962: a802                         test     al, 2
0000000007d15964: 7535                         jne      0x7d1599b
0000000007d15966: 41837e1800                   cmp      dword ptr [r14 + 0x18], 0
0000000007d1596b: 7f46                         jg       0x7d159b3
0000000007d1596d: eb72                         jmp      0x7d159e1
0000000007d1596f: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007d15973: 4885f6                       test     rsi, rsi
0000000007d15976: 750e                         jne      0x7d15986
0000000007d15978: 488d05f965fe02               lea      rax, [rip + 0x2fe65f9]
0000000007d1597f: 488b00                       mov      rax, qword ptr [rax]
0000000007d15982: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007d15986: bf01000000                   mov      edi, 1
0000000007d1598b: 4889da                       mov      rdx, rbx
0000000007d1598e: e85dcd2301                   call     0x8f526f0
0000000007d15993: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
0000000007d15997: a802                         test     al, 2
0000000007d15999: 74cb                         je       0x7d15966
0000000007d1599b: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
0000000007d1599f: bf02000000                   mov      edi, 2
0000000007d159a4: 4889da                       mov      rdx, rbx
0000000007d159a7: e864c92301                   call     0x8f52310
0000000007d159ac: 41837e1800                   cmp      dword ptr [r14 + 0x18], 0
0000000007d159b1: 7e2e                         jle      0x7d159e1
0000000007d159b3: 4531ff                       xor      r15d, r15d
0000000007d159b6: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000007d159c0: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
0000000007d159c4: 4a8b34f8                     mov      rsi, qword ptr [rax + r15*8]
0000000007d159c8: bf03000000                   mov      edi, 3
0000000007d159cd: 4889da                       mov      rdx, rbx
0000000007d159d0: e81bcd2301                   call     0x8f526f0
0000000007d159d5: 49ffc7                       inc      r15
0000000007d159d8: 49634618                     movsxd   rax, dword ptr [r14 + 0x18]
0000000007d159dc: 4939c7                       cmp      r15, rax
0000000007d159df: 7cdf                         jl       0x7d159c0
0000000007d159e1: 41f6463408                   test     byte ptr [r14 + 0x34], 8
0000000007d159e6: 7506                         jne      0x7d159ee
0000000007d159e8: 5b                           pop      rbx
0000000007d159e9: 415e                         pop      r14
0000000007d159eb: 415f                         pop      r15
0000000007d159ed: c3                           ret
0000000007d159ee: 418b762c                     mov      esi, dword ptr [r14 + 0x2c]
0000000007d159f2: bf04000000                   mov      edi, 4
0000000007d159f7: 4889da                       mov      rdx, rbx
0000000007d159fa: 5b                           pop      rbx
0000000007d159fb: 415e                         pop      r14
0000000007d159fd: 415f                         pop      r15
0000000007d159ff: e97cc92301                   jmp      0x8f52380

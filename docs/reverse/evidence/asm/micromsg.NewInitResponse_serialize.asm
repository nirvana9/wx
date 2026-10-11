0000000007debb00: 4157                         push     r15
0000000007debb02: 4156                         push     r14
0000000007debb04: 53                           push     rbx
0000000007debb05: 4889f3                       mov      rbx, rsi
0000000007debb08: 4989fe                       mov      r14, rdi
0000000007debb0b: 8b474c                       mov      eax, dword ptr [rdi + 0x4c]
0000000007debb0e: a801                         test     al, 1
0000000007debb10: 7534                         jne      0x7debb46
0000000007debb12: a802                         test     al, 2
0000000007debb14: 755c                         jne      0x7debb72
0000000007debb16: a804                         test     al, 4
0000000007debb18: 0f8580000000                 jne      0x7debb9e
0000000007debb1e: a808                         test     al, 8
0000000007debb20: 0f85a8000000                 jne      0x7debbce
0000000007debb26: a810                         test     al, 0x10
0000000007debb28: 0f85bd000000                 jne      0x7debbeb
0000000007debb2e: a820                         test     al, 0x20
0000000007debb30: 0f85d2000000                 jne      0x7debc08
0000000007debb36: 41837e3000                   cmp      dword ptr [r14 + 0x30], 0
0000000007debb3b: 0f8fdf000000                 jg       0x7debc20
0000000007debb41: e90b010000                   jmp      0x7debc51
0000000007debb46: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007debb4a: 4885f6                       test     rsi, rsi
0000000007debb4d: 750e                         jne      0x7debb5d
0000000007debb4f: 488d05620df102               lea      rax, [rip + 0x2f10d62]
0000000007debb56: 488b00                       mov      rax, qword ptr [rax]
0000000007debb59: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007debb5d: bf01000000                   mov      edi, 1
0000000007debb62: 4889da                       mov      rdx, rbx
0000000007debb65: e8866b1601                   call     0x8f526f0
0000000007debb6a: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007debb6e: a802                         test     al, 2
0000000007debb70: 74a4                         je       0x7debb16
0000000007debb72: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007debb76: 4885f6                       test     rsi, rsi
0000000007debb79: 750e                         jne      0x7debb89
0000000007debb7b: 488d05360df102               lea      rax, [rip + 0x2f10d36]
0000000007debb82: 488b00                       mov      rax, qword ptr [rax]
0000000007debb85: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007debb89: bf02000000                   mov      edi, 2
0000000007debb8e: 4889da                       mov      rdx, rbx
0000000007debb91: e85a6b1601                   call     0x8f526f0
0000000007debb96: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007debb9a: a804                         test     al, 4
0000000007debb9c: 7480                         je       0x7debb1e
0000000007debb9e: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007debba2: 4885f6                       test     rsi, rsi
0000000007debba5: 750e                         jne      0x7debbb5
0000000007debba7: 488d050a0df102               lea      rax, [rip + 0x2f10d0a]
0000000007debbae: 488b00                       mov      rax, qword ptr [rax]
0000000007debbb1: 488b7018                     mov      rsi, qword ptr [rax + 0x18]
0000000007debbb5: bf03000000                   mov      edi, 3
0000000007debbba: 4889da                       mov      rdx, rbx
0000000007debbbd: e82e6b1601                   call     0x8f526f0
0000000007debbc2: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007debbc6: a808                         test     al, 8
0000000007debbc8: 0f8458ffffff                 je       0x7debb26
0000000007debbce: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
0000000007debbd2: bf04000000                   mov      edi, 4
0000000007debbd7: 4889da                       mov      rdx, rbx
0000000007debbda: e8a1671601                   call     0x8f52380
0000000007debbdf: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007debbe3: a810                         test     al, 0x10
0000000007debbe5: 0f8443ffffff                 je       0x7debb2e
0000000007debbeb: 418b7624                     mov      esi, dword ptr [r14 + 0x24]
0000000007debbef: bf05000000                   mov      edi, 5
0000000007debbf4: 4889da                       mov      rdx, rbx
0000000007debbf7: e884671601                   call     0x8f52380
0000000007debbfc: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007debc00: a820                         test     al, 0x20
0000000007debc02: 0f842effffff                 je       0x7debb36
0000000007debc08: 418b7640                     mov      esi, dword ptr [r14 + 0x40]
0000000007debc0c: bf06000000                   mov      edi, 6
0000000007debc11: 4889da                       mov      rdx, rbx
0000000007debc14: e867671601                   call     0x8f52380
0000000007debc19: 41837e3000                   cmp      dword ptr [r14 + 0x30], 0
0000000007debc1e: 7e31                         jle      0x7debc51
0000000007debc20: 4531ff                       xor      r15d, r15d
0000000007debc23: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
0000000007debc30: 498b4628                     mov      rax, qword ptr [r14 + 0x28]
0000000007debc34: 4a8b34f8                     mov      rsi, qword ptr [rax + r15*8]
0000000007debc38: bf07000000                   mov      edi, 7
0000000007debc3d: 4889da                       mov      rdx, rbx
0000000007debc40: e8ab6a1601                   call     0x8f526f0
0000000007debc45: 49ffc7                       inc      r15
0000000007debc48: 49634630                     movsxd   rax, dword ptr [r14 + 0x30]
0000000007debc4c: 4939c7                       cmp      r15, rax
0000000007debc4f: 7cdf                         jl       0x7debc30
0000000007debc51: 41f6464c80                   test     byte ptr [r14 + 0x4c], 0x80
0000000007debc56: 7506                         jne      0x7debc5e
0000000007debc58: 5b                           pop      rbx
0000000007debc59: 415e                         pop      r14
0000000007debc5b: 415f                         pop      r15
0000000007debc5d: c3                           ret
0000000007debc5e: 418b7644                     mov      esi, dword ptr [r14 + 0x44]
0000000007debc62: bf08000000                   mov      edi, 8
0000000007debc67: 4889da                       mov      rdx, rbx
0000000007debc6a: 5b                           pop      rbx
0000000007debc6b: 415e                         pop      r14
0000000007debc6d: 415f                         pop      r15
0000000007debc6f: e90c671601                   jmp      0x8f52380

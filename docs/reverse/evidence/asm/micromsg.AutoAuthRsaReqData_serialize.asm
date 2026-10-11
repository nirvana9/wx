0000000007cdc180: 4156                         push     r14
0000000007cdc182: 53                           push     rbx
0000000007cdc183: 50                           push     rax
0000000007cdc184: 4889f3                       mov      rbx, rsi
0000000007cdc187: 4989fe                       mov      r14, rdi
0000000007cdc18a: 8b471c                       mov      eax, dword ptr [rdi + 0x1c]
0000000007cdc18d: a801                         test     al, 1
0000000007cdc18f: 7428                         je       0x7cdc1b9
0000000007cdc191: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cdc195: 4885f6                       test     rsi, rsi
0000000007cdc198: 750e                         jne      0x7cdc1a8
0000000007cdc19a: 488d05f7fb0103               lea      rax, [rip + 0x301fbf7]
0000000007cdc1a1: 488b00                       mov      rax, qword ptr [rax]
0000000007cdc1a4: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cdc1a8: bf02000000                   mov      edi, 2
0000000007cdc1ad: 4889da                       mov      rdx, rbx
0000000007cdc1b0: e83b652701                   call     0x8f526f0
0000000007cdc1b5: 418b461c                     mov      eax, dword ptr [r14 + 0x1c]
0000000007cdc1b9: a802                         test     al, 2
0000000007cdc1bb: 7508                         jne      0x7cdc1c5
0000000007cdc1bd: 4883c408                     add      rsp, 8
0000000007cdc1c1: 5b                           pop      rbx
0000000007cdc1c2: 415e                         pop      r14
0000000007cdc1c4: c3                           ret
0000000007cdc1c5: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cdc1c9: 4885f6                       test     rsi, rsi
0000000007cdc1cc: 750e                         jne      0x7cdc1dc
0000000007cdc1ce: 488d05c3fb0103               lea      rax, [rip + 0x301fbc3]
0000000007cdc1d5: 488b00                       mov      rax, qword ptr [rax]
0000000007cdc1d8: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cdc1dc: bf03000000                   mov      edi, 3
0000000007cdc1e1: 4889da                       mov      rdx, rbx
0000000007cdc1e4: 4883c408                     add      rsp, 8
0000000007cdc1e8: 5b                           pop      rbx
0000000007cdc1e9: 415e                         pop      r14
0000000007cdc1eb: e900652701                   jmp      0x8f526f0

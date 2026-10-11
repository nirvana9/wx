0000000007cc8890: 4156                         push     r14
0000000007cc8892: 53                           push     rbx
0000000007cc8893: 50                           push     rax
0000000007cc8894: 4889f3                       mov      rbx, rsi
0000000007cc8897: 4989fe                       mov      r14, rdi
0000000007cc889a: 8b471c                       mov      eax, dword ptr [rdi + 0x1c]
0000000007cc889d: a801                         test     al, 1
0000000007cc889f: 7428                         je       0x7cc88c9
0000000007cc88a1: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cc88a5: 4885f6                       test     rsi, rsi
0000000007cc88a8: 750e                         jne      0x7cc88b8
0000000007cc88aa: 488d05f7330303               lea      rax, [rip + 0x30333f7]
0000000007cc88b1: 488b00                       mov      rax, qword ptr [rax]
0000000007cc88b4: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cc88b8: bf01000000                   mov      edi, 1
0000000007cc88bd: 4889da                       mov      rdx, rbx
0000000007cc88c0: e82b9e2801                   call     0x8f526f0
0000000007cc88c5: 418b461c                     mov      eax, dword ptr [r14 + 0x1c]
0000000007cc88c9: a802                         test     al, 2
0000000007cc88cb: 7508                         jne      0x7cc88d5
0000000007cc88cd: 4883c408                     add      rsp, 8
0000000007cc88d1: 5b                           pop      rbx
0000000007cc88d2: 415e                         pop      r14
0000000007cc88d4: c3                           ret
0000000007cc88d5: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cc88d9: 4885f6                       test     rsi, rsi
0000000007cc88dc: 750e                         jne      0x7cc88ec
0000000007cc88de: 488d05c3330303               lea      rax, [rip + 0x30333c3]
0000000007cc88e5: 488b00                       mov      rax, qword ptr [rax]
0000000007cc88e8: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cc88ec: bf03000000                   mov      edi, 3
0000000007cc88f1: 4889da                       mov      rdx, rbx
0000000007cc88f4: 4883c408                     add      rsp, 8
0000000007cc88f8: 5b                           pop      rbx
0000000007cc88f9: 415e                         pop      r14
0000000007cc88fb: e9f09d2801                   jmp      0x8f526f0

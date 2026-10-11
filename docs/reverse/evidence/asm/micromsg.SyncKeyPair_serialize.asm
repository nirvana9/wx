0000000007bd4c10: 4156                         push     r14
0000000007bd4c12: 53                           push     rbx
0000000007bd4c13: 50                           push     rax
0000000007bd4c14: 4889f3                       mov      rbx, rsi
0000000007bd4c17: 4989fe                       mov      r14, rdi
0000000007bd4c1a: 8b4718                       mov      eax, dword ptr [rdi + 0x18]
0000000007bd4c1d: a801                         test     al, 1
0000000007bd4c1f: 7415                         je       0x7bd4c36
0000000007bd4c21: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
0000000007bd4c25: bf01000000                   mov      edi, 1
0000000007bd4c2a: 4889da                       mov      rdx, rbx
0000000007bd4c2d: e84ed73701                   call     0x8f52380
0000000007bd4c32: 418b4618                     mov      eax, dword ptr [r14 + 0x18]
0000000007bd4c36: a802                         test     al, 2
0000000007bd4c38: 7508                         jne      0x7bd4c42
0000000007bd4c3a: 4883c408                     add      rsp, 8
0000000007bd4c3e: 5b                           pop      rbx
0000000007bd4c3f: 415e                         pop      r14
0000000007bd4c41: c3                           ret
0000000007bd4c42: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007bd4c46: bf02000000                   mov      edi, 2
0000000007bd4c4b: 4889da                       mov      rdx, rbx
0000000007bd4c4e: 4883c408                     add      rsp, 8
0000000007bd4c52: 5b                           pop      rbx
0000000007bd4c53: 415e                         pop      r14
0000000007bd4c55: e956d73701                   jmp      0x8f523b0

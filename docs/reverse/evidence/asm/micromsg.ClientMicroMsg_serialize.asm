0000000007c4ff60: 4156                         push     r14
0000000007c4ff62: 53                           push     rbx
0000000007c4ff63: 50                           push     rax
0000000007c4ff64: 4889f3                       mov      rbx, rsi
0000000007c4ff67: 4989fe                       mov      r14, rdi
0000000007c4ff6a: 8b4724                       mov      eax, dword ptr [rdi + 0x24]
0000000007c4ff6d: a801                         test     al, 1
0000000007c4ff6f: 7514                         jne      0x7c4ff85
0000000007c4ff71: a802                         test     al, 2
0000000007c4ff73: 7529                         jne      0x7c4ff9e
0000000007c4ff75: a804                         test     al, 4
0000000007c4ff77: 753e                         jne      0x7c4ffb7
0000000007c4ff79: a808                         test     al, 8
0000000007c4ff7b: 7553                         jne      0x7c4ffd0
0000000007c4ff7d: 4883c408                     add      rsp, 8
0000000007c4ff81: 5b                           pop      rbx
0000000007c4ff82: 415e                         pop      r14
0000000007c4ff84: c3                           ret
0000000007c4ff85: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007c4ff89: bf01000000                   mov      edi, 1
0000000007c4ff8e: 4889da                       mov      rdx, rbx
0000000007c4ff91: e8ba253001                   call     0x8f52550
0000000007c4ff96: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
0000000007c4ff9a: a802                         test     al, 2
0000000007c4ff9c: 74d7                         je       0x7c4ff75
0000000007c4ff9e: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
0000000007c4ffa2: bf02000000                   mov      edi, 2
0000000007c4ffa7: 4889da                       mov      rdx, rbx
0000000007c4ffaa: e8d1233001                   call     0x8f52380
0000000007c4ffaf: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
0000000007c4ffb3: a804                         test     al, 4
0000000007c4ffb5: 74c2                         je       0x7c4ff79
0000000007c4ffb7: 418b7614                     mov      esi, dword ptr [r14 + 0x14]
0000000007c4ffbb: bf03000000                   mov      edi, 3
0000000007c4ffc0: 4889da                       mov      rdx, rbx
0000000007c4ffc3: e8b8233001                   call     0x8f52380
0000000007c4ffc8: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
0000000007c4ffcc: a808                         test     al, 8
0000000007c4ffce: 74ad                         je       0x7c4ff7d
0000000007c4ffd0: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007c4ffd4: bf04000000                   mov      edi, 4
0000000007c4ffd9: 4889da                       mov      rdx, rbx
0000000007c4ffdc: 4883c408                     add      rsp, 8
0000000007c4ffe0: 5b                           pop      rbx
0000000007c4ffe1: 415e                         pop      r14
0000000007c4ffe3: e968253001                   jmp      0x8f52550

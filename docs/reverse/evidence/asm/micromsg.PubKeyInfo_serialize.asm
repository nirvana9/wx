00000000079ec790: 4156                         push     r14
00000000079ec792: 53                           push     rbx
00000000079ec793: 50                           push     rax
00000000079ec794: 4889f3                       mov      rbx, rsi
00000000079ec797: 4989fe                       mov      r14, rdi
00000000079ec79a: 8b4718                       mov      eax, dword ptr [rdi + 0x18]
00000000079ec79d: a801                         test     al, 1
00000000079ec79f: 7415                         je       0x79ec7b6
00000000079ec7a1: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
00000000079ec7a5: bf01000000                   mov      edi, 1
00000000079ec7aa: 4889da                       mov      rdx, rbx
00000000079ec7ad: e85e5b5601                   call     0x8f52310
00000000079ec7b2: 418b4618                     mov      eax, dword ptr [r14 + 0x18]
00000000079ec7b6: a802                         test     al, 2
00000000079ec7b8: 7508                         jne      0x79ec7c2
00000000079ec7ba: 4883c408                     add      rsp, 8
00000000079ec7be: 5b                           pop      rbx
00000000079ec7bf: 415e                         pop      r14
00000000079ec7c1: c3                           ret
00000000079ec7c2: 498b7608                     mov      rsi, qword ptr [r14 + 8]
00000000079ec7c6: 4885f6                       test     rsi, rsi
00000000079ec7c9: 750e                         jne      0x79ec7d9
00000000079ec7cb: 488d05f6d83003               lea      rax, [rip + 0x330d8f6]
00000000079ec7d2: 488b00                       mov      rax, qword ptr [rax]
00000000079ec7d5: 488b7008                     mov      rsi, qword ptr [rax + 8]
00000000079ec7d9: bf02000000                   mov      edi, 2
00000000079ec7de: 4889da                       mov      rdx, rbx
00000000079ec7e1: 4883c408                     add      rsp, 8
00000000079ec7e5: 5b                           pop      rbx
00000000079ec7e6: 415e                         pop      r14
00000000079ec7e8: e9035f5601                   jmp      0x8f526f0

0000000007df07d0: 4156                         push     r14
0000000007df07d2: 53                           push     rbx
0000000007df07d3: 50                           push     rax
0000000007df07d4: 4889f3                       mov      rbx, rsi
0000000007df07d7: 4989fe                       mov      r14, rdi
0000000007df07da: 8b4720                       mov      eax, dword ptr [rdi + 0x20]
0000000007df07dd: a801                         test     al, 1
0000000007df07df: 7510                         jne      0x7df07f1
0000000007df07e1: a802                         test     al, 2
0000000007df07e3: 7538                         jne      0x7df081d
0000000007df07e5: a804                         test     al, 4
0000000007df07e7: 754d                         jne      0x7df0836
0000000007df07e9: 4883c408                     add      rsp, 8
0000000007df07ed: 5b                           pop      rbx
0000000007df07ee: 415e                         pop      r14
0000000007df07f0: c3                           ret
0000000007df07f1: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007df07f5: 4885f6                       test     rsi, rsi
0000000007df07f8: 750e                         jne      0x7df0808
0000000007df07fa: 488d05efc0f002               lea      rax, [rip + 0x2f0c0ef]
0000000007df0801: 488b00                       mov      rax, qword ptr [rax]
0000000007df0804: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007df0808: bf01000000                   mov      edi, 1
0000000007df080d: 4889da                       mov      rdx, rbx
0000000007df0810: e8db1e1601                   call     0x8f526f0
0000000007df0815: 418b4620                     mov      eax, dword ptr [r14 + 0x20]
0000000007df0819: a802                         test     al, 2
0000000007df081b: 74c8                         je       0x7df07e5
0000000007df081d: 418b7618                     mov      esi, dword ptr [r14 + 0x18]
0000000007df0821: bf02000000                   mov      edi, 2
0000000007df0826: 4889da                       mov      rdx, rbx
0000000007df0829: e8521b1601                   call     0x8f52380
0000000007df082e: 418b4620                     mov      eax, dword ptr [r14 + 0x20]
0000000007df0832: a804                         test     al, 4
0000000007df0834: 74b3                         je       0x7df07e9
0000000007df0836: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007df083a: 4885f6                       test     rsi, rsi
0000000007df083d: 750e                         jne      0x7df084d
0000000007df083f: 488d05aac0f002               lea      rax, [rip + 0x2f0c0aa]
0000000007df0846: 488b00                       mov      rax, qword ptr [rax]
0000000007df0849: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007df084d: bf03000000                   mov      edi, 3
0000000007df0852: 4889da                       mov      rdx, rbx
0000000007df0855: 4883c408                     add      rsp, 8
0000000007df0859: 5b                           pop      rbx
0000000007df085a: 415e                         pop      r14
0000000007df085c: e98f1e1601                   jmp      0x8f526f0

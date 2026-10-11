0000000008e17980: 4156                         push     r14
0000000008e17982: 53                           push     rbx
0000000008e17983: 50                           push     rax
0000000008e17984: 4889f3                       mov      rbx, rsi
0000000008e17987: 4989fe                       mov      r14, rdi
0000000008e1798a: 8b4720                       mov      eax, dword ptr [rdi + 0x20]
0000000008e1798d: a801                         test     al, 1
0000000008e1798f: 7510                         jne      0x8e179a1
0000000008e17991: a802                         test     al, 2
0000000008e17993: 7525                         jne      0x8e179ba
0000000008e17995: a804                         test     al, 4
0000000008e17997: 754d                         jne      0x8e179e6
0000000008e17999: 4883c408                     add      rsp, 8
0000000008e1799d: 5b                           pop      rbx
0000000008e1799e: 415e                         pop      r14
0000000008e179a0: c3                           ret
0000000008e179a1: 418b7618                     mov      esi, dword ptr [r14 + 0x18]
0000000008e179a5: bf01000000                   mov      edi, 1
0000000008e179aa: 4889da                       mov      rdx, rbx
0000000008e179ad: e85ea91300                   call     0x8f52310
0000000008e179b2: 418b4620                     mov      eax, dword ptr [r14 + 0x20]
0000000008e179b6: a802                         test     al, 2
0000000008e179b8: 74db                         je       0x8e17995
0000000008e179ba: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000008e179be: 4885f6                       test     rsi, rsi
0000000008e179c1: 750e                         jne      0x8e179d1
0000000008e179c3: 488d05b6c4ef01               lea      rax, [rip + 0x1efc4b6]
0000000008e179ca: 488b00                       mov      rax, qword ptr [rax]
0000000008e179cd: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000008e179d1: bf02000000                   mov      edi, 2
0000000008e179d6: 4889da                       mov      rdx, rbx
0000000008e179d9: e812ad1300                   call     0x8f526f0
0000000008e179de: 418b4620                     mov      eax, dword ptr [r14 + 0x20]
0000000008e179e2: a804                         test     al, 4
0000000008e179e4: 74b3                         je       0x8e17999
0000000008e179e6: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000008e179ea: 4885f6                       test     rsi, rsi
0000000008e179ed: 750e                         jne      0x8e179fd
0000000008e179ef: 488d058ac4ef01               lea      rax, [rip + 0x1efc48a]
0000000008e179f6: 488b00                       mov      rax, qword ptr [rax]
0000000008e179f9: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000008e179fd: bf03000000                   mov      edi, 3
0000000008e17a02: 4889da                       mov      rdx, rbx
0000000008e17a05: 4883c408                     add      rsp, 8
0000000008e17a09: 5b                           pop      rbx
0000000008e17a0a: 415e                         pop      r14
0000000008e17a0c: e9dfac1300                   jmp      0x8f526f0

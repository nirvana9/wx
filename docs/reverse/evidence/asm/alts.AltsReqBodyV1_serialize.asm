0000000008e15700: 4156                         push     r14
0000000008e15702: 53                           push     rbx
0000000008e15703: 50                           push     rax
0000000008e15704: 4889f3                       mov      rbx, rsi
0000000008e15707: 4989fe                       mov      r14, rdi
0000000008e1570a: 8b471c                       mov      eax, dword ptr [rdi + 0x1c]
0000000008e1570d: a801                         test     al, 1
0000000008e1570f: 7428                         je       0x8e15739
0000000008e15711: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000008e15715: 4885f6                       test     rsi, rsi
0000000008e15718: 750e                         jne      0x8e15728
0000000008e1571a: 488d053fe7ef01               lea      rax, [rip + 0x1efe73f]
0000000008e15721: 488b00                       mov      rax, qword ptr [rax]
0000000008e15724: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000008e15728: bf01000000                   mov      edi, 1
0000000008e1572d: 4889da                       mov      rdx, rbx
0000000008e15730: e8bbcf1300                   call     0x8f526f0
0000000008e15735: 418b461c                     mov      eax, dword ptr [r14 + 0x1c]
0000000008e15739: a802                         test     al, 2
0000000008e1573b: 7508                         jne      0x8e15745
0000000008e1573d: 4883c408                     add      rsp, 8
0000000008e15741: 5b                           pop      rbx
0000000008e15742: 415e                         pop      r14
0000000008e15744: c3                           ret
0000000008e15745: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000008e15749: bf02000000                   mov      edi, 2
0000000008e1574e: 4889da                       mov      rdx, rbx
0000000008e15751: 4883c408                     add      rsp, 8
0000000008e15755: 5b                           pop      rbx
0000000008e15756: 415e                         pop      r14
0000000008e15758: e9c3ce1300                   jmp      0x8f52620

0000000007ba08a0: 4156                         push     r14
0000000007ba08a2: 53                           push     rbx
0000000007ba08a3: 50                           push     rax
0000000007ba08a4: 4889f3                       mov      rbx, rsi
0000000007ba08a7: 4989fe                       mov      r14, rdi
0000000007ba08aa: 8b4718                       mov      eax, dword ptr [rdi + 0x18]
0000000007ba08ad: a801                         test     al, 1
0000000007ba08af: 7415                         je       0x7ba08c6
0000000007ba08b1: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
0000000007ba08b5: bf01000000                   mov      edi, 1
0000000007ba08ba: 4889da                       mov      rdx, rbx
0000000007ba08bd: e8be1a3b01                   call     0x8f52380
0000000007ba08c2: 418b4618                     mov      eax, dword ptr [r14 + 0x18]
0000000007ba08c6: a802                         test     al, 2
0000000007ba08c8: 7508                         jne      0x7ba08d2
0000000007ba08ca: 4883c408                     add      rsp, 8
0000000007ba08ce: 5b                           pop      rbx
0000000007ba08cf: 415e                         pop      r14
0000000007ba08d1: c3                           ret
0000000007ba08d2: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007ba08d6: bf02000000                   mov      edi, 2
0000000007ba08db: 4889da                       mov      rdx, rbx
0000000007ba08de: 4883c408                     add      rsp, 8
0000000007ba08e2: 5b                           pop      rbx
0000000007ba08e3: 415e                         pop      r14
0000000007ba08e5: e9361d3b01                   jmp      0x8f52620

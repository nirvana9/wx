00000000079f44c0: 4156                         push     r14
00000000079f44c2: 53                           push     rbx
00000000079f44c3: 50                           push     rax
00000000079f44c4: 4889f3                       mov      rbx, rsi
00000000079f44c7: 4989fe                       mov      r14, rdi
00000000079f44ca: 8b4718                       mov      eax, dword ptr [rdi + 0x18]
00000000079f44cd: a801                         test     al, 1
00000000079f44cf: 7415                         je       0x79f44e6
00000000079f44d1: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
00000000079f44d5: bf01000000                   mov      edi, 1
00000000079f44da: 4889da                       mov      rdx, rbx
00000000079f44dd: e82ede5501                   call     0x8f52310
00000000079f44e2: 418b4618                     mov      eax, dword ptr [r14 + 0x18]
00000000079f44e6: a802                         test     al, 2
00000000079f44e8: 7508                         jne      0x79f44f2
00000000079f44ea: 4883c408                     add      rsp, 8
00000000079f44ee: 5b                           pop      rbx
00000000079f44ef: 415e                         pop      r14
00000000079f44f1: c3                           ret
00000000079f44f2: 498b7608                     mov      rsi, qword ptr [r14 + 8]
00000000079f44f6: 4885f6                       test     rsi, rsi
00000000079f44f9: 750e                         jne      0x79f4509
00000000079f44fb: 488d051e5c3003               lea      rax, [rip + 0x3305c1e]
00000000079f4502: 488b00                       mov      rax, qword ptr [rax]
00000000079f4505: 488b7008                     mov      rsi, qword ptr [rax + 8]
00000000079f4509: bf02000000                   mov      edi, 2
00000000079f450e: 4889da                       mov      rdx, rbx
00000000079f4511: 4883c408                     add      rsp, 8
00000000079f4515: 5b                           pop      rbx
00000000079f4516: 415e                         pop      r14
00000000079f4518: e9d3e15501                   jmp      0x8f526f0

0000000007cc48c0: 4156                         push     r14
0000000007cc48c2: 53                           push     rbx
0000000007cc48c3: 50                           push     rax
0000000007cc48c4: 4889f3                       mov      rbx, rsi
0000000007cc48c7: 4989fe                       mov      r14, rdi
0000000007cc48ca: 8b4718                       mov      eax, dword ptr [rdi + 0x18]
0000000007cc48cd: a801                         test     al, 1
0000000007cc48cf: 7428                         je       0x7cc48f9
0000000007cc48d1: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cc48d5: 4885f6                       test     rsi, rsi
0000000007cc48d8: 750e                         jne      0x7cc48e8
0000000007cc48da: 488d059f730303               lea      rax, [rip + 0x303739f]
0000000007cc48e1: 488b00                       mov      rax, qword ptr [rax]
0000000007cc48e4: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cc48e8: bf01000000                   mov      edi, 1
0000000007cc48ed: 4889da                       mov      rdx, rbx
0000000007cc48f0: e8fbdd2801                   call     0x8f526f0
0000000007cc48f5: 418b4618                     mov      eax, dword ptr [r14 + 0x18]
0000000007cc48f9: a802                         test     al, 2
0000000007cc48fb: 7508                         jne      0x7cc4905
0000000007cc48fd: 4883c408                     add      rsp, 8
0000000007cc4901: 5b                           pop      rbx
0000000007cc4902: 415e                         pop      r14
0000000007cc4904: c3                           ret
0000000007cc4905: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
0000000007cc4909: bf02000000                   mov      edi, 2
0000000007cc490e: 4889da                       mov      rdx, rbx
0000000007cc4911: 4883c408                     add      rsp, 8
0000000007cc4915: 5b                           pop      rbx
0000000007cc4916: 415e                         pop      r14
0000000007cc4918: e963da2801                   jmp      0x8f52380

0000000007bd5170: 4157                         push     r15
0000000007bd5172: 4156                         push     r14
0000000007bd5174: 53                           push     rbx
0000000007bd5175: 4889f3                       mov      rbx, rsi
0000000007bd5178: 4989fe                       mov      r14, rdi
0000000007bd517b: 837f1000                     cmp      dword ptr [rdi + 0x10], 0
0000000007bd517f: 7e30                         jle      0x7bd51b1
0000000007bd5181: 4531ff                       xor      r15d, r15d
0000000007bd5184: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
0000000007bd5190: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007bd5194: 4a8b34f8                     mov      rsi, qword ptr [rax + r15*8]
0000000007bd5198: bf01000000                   mov      edi, 1
0000000007bd519d: 4889da                       mov      rdx, rbx
0000000007bd51a0: e84bd53701                   call     0x8f526f0
0000000007bd51a5: 49ffc7                       inc      r15
0000000007bd51a8: 49634610                     movsxd   rax, dword ptr [r14 + 0x10]
0000000007bd51ac: 4939c7                       cmp      r15, rax
0000000007bd51af: 7cdf                         jl       0x7bd5190
0000000007bd51b1: 41f6462802                   test     byte ptr [r14 + 0x28], 2
0000000007bd51b6: 7506                         jne      0x7bd51be
0000000007bd51b8: 5b                           pop      rbx
0000000007bd51b9: 415e                         pop      r14
0000000007bd51bb: 415f                         pop      r15
0000000007bd51bd: c3                           ret
0000000007bd51be: 410fb67620                   movzx    esi, byte ptr [r14 + 0x20]
0000000007bd51c3: bf02000000                   mov      edi, 2
0000000007bd51c8: 4889da                       mov      rdx, rbx
0000000007bd51cb: 5b                           pop      rbx
0000000007bd51cc: 415e                         pop      r14
0000000007bd51ce: 415f                         pop      r15
0000000007bd51d0: e90bd33701                   jmp      0x8f524e0

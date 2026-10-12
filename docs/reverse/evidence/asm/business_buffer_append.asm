00000000079c5c10: 4157                         push     r15
00000000079c5c12: 4156                         push     r14
00000000079c5c14: 53                           push     rbx
00000000079c5c15: 89d3                         mov      ebx, edx
00000000079c5c17: 4989f6                       mov      r14, rsi
00000000079c5c1a: 4989ff                       mov      r15, rdi
00000000079c5c1d: 89d6                         mov      esi, edx
00000000079c5c1f: e81cffffff                   call     0x79c5b40
00000000079c5c24: 498b07                       mov      rax, qword ptr [r15]
00000000079c5c27: 4863780c                     movsxd   rdi, dword ptr [rax + 0xc]
00000000079c5c2b: 480338                       add      rdi, qword ptr [rax]
00000000079c5c2e: 4863db                       movsxd   rbx, ebx
00000000079c5c31: 4c89f6                       mov      rsi, r14
00000000079c5c34: 4889da                       mov      rdx, rbx
00000000079c5c37: e8f485ca02                   call     0xa66e230
00000000079c5c3c: 498b07                       mov      rax, qword ptr [r15]
00000000079c5c3f: 01580c                       add      dword ptr [rax + 0xc], ebx
00000000079c5c42: 89d8                         mov      eax, ebx
00000000079c5c44: 5b                           pop      rbx
00000000079c5c45: 415e                         pop      r14
00000000079c5c47: 415f                         pop      r15
00000000079c5c49: c3                           ret

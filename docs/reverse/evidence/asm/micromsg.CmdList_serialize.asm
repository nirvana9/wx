0000000007bf2840: 4157                         push     r15
0000000007bf2842: 4156                         push     r14
0000000007bf2844: 53                           push     rbx
0000000007bf2845: 4889f3                       mov      rbx, rsi
0000000007bf2848: 4989fe                       mov      r14, rdi
0000000007bf284b: f6472801                     test     byte ptr [rdi + 0x28], 1
0000000007bf284f: 7411                         je       0x7bf2862
0000000007bf2851: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
0000000007bf2855: bf01000000                   mov      edi, 1
0000000007bf285a: 4889da                       mov      rdx, rbx
0000000007bf285d: e81efb3501                   call     0x8f52380
0000000007bf2862: 41837e1000                   cmp      dword ptr [r14 + 0x10], 0
0000000007bf2867: 7e28                         jle      0x7bf2891
0000000007bf2869: 4531ff                       xor      r15d, r15d
0000000007bf286c: 0f1f4000                     nop      dword ptr [rax]
0000000007bf2870: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007bf2874: 4a8b34f8                     mov      rsi, qword ptr [rax + r15*8]
0000000007bf2878: bf02000000                   mov      edi, 2
0000000007bf287d: 4889da                       mov      rdx, rbx
0000000007bf2880: e86bfe3501                   call     0x8f526f0
0000000007bf2885: 49ffc7                       inc      r15
0000000007bf2888: 49634610                     movsxd   rax, dword ptr [r14 + 0x10]
0000000007bf288c: 4939c7                       cmp      r15, rax
0000000007bf288f: 7cdf                         jl       0x7bf2870
0000000007bf2891: 5b                           pop      rbx
0000000007bf2892: 415e                         pop      r14
0000000007bf2894: 415f                         pop      r15
0000000007bf2896: c3                           ret

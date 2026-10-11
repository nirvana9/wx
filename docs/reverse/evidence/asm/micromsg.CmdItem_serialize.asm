0000000007bf2260: 4156                         push     r14
0000000007bf2262: 53                           push     rbx
0000000007bf2263: 50                           push     rax
0000000007bf2264: 4889f3                       mov      rbx, rsi
0000000007bf2267: 4989fe                       mov      r14, rdi
0000000007bf226a: 8b4718                       mov      eax, dword ptr [rdi + 0x18]
0000000007bf226d: a801                         test     al, 1
0000000007bf226f: 7415                         je       0x7bf2286
0000000007bf2271: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
0000000007bf2275: bf01000000                   mov      edi, 1
0000000007bf227a: 4889da                       mov      rdx, rbx
0000000007bf227d: e88e003601                   call     0x8f52310
0000000007bf2282: 418b4618                     mov      eax, dword ptr [r14 + 0x18]
0000000007bf2286: a802                         test     al, 2
0000000007bf2288: 7508                         jne      0x7bf2292
0000000007bf228a: 4883c408                     add      rsp, 8
0000000007bf228e: 5b                           pop      rbx
0000000007bf228f: 415e                         pop      r14
0000000007bf2291: c3                           ret
0000000007bf2292: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007bf2296: 4885f6                       test     rsi, rsi
0000000007bf2299: 750e                         jne      0x7bf22a9
0000000007bf229b: 488d05268f1003               lea      rax, [rip + 0x3108f26]
0000000007bf22a2: 488b00                       mov      rax, qword ptr [rax]
0000000007bf22a5: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007bf22a9: bf02000000                   mov      edi, 2
0000000007bf22ae: 4889da                       mov      rdx, rbx
0000000007bf22b1: 4883c408                     add      rsp, 8
0000000007bf22b5: 5b                           pop      rbx
0000000007bf22b6: 415e                         pop      r14
0000000007bf22b8: e933043601                   jmp      0x8f526f0

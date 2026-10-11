0000000007ba1260: 4156                         push     r14
0000000007ba1262: 53                           push     rbx
0000000007ba1263: 50                           push     rax
0000000007ba1264: 4889f3                       mov      rbx, rsi
0000000007ba1267: 4989fe                       mov      r14, rdi
0000000007ba126a: 8b4718                       mov      eax, dword ptr [rdi + 0x18]
0000000007ba126d: a801                         test     al, 1
0000000007ba126f: 7415                         je       0x7ba1286
0000000007ba1271: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
0000000007ba1275: bf01000000                   mov      edi, 1
0000000007ba127a: 4889da                       mov      rdx, rbx
0000000007ba127d: e88e103b01                   call     0x8f52310
0000000007ba1282: 418b4618                     mov      eax, dword ptr [r14 + 0x18]
0000000007ba1286: a802                         test     al, 2
0000000007ba1288: 7508                         jne      0x7ba1292
0000000007ba128a: 4883c408                     add      rsp, 8
0000000007ba128e: 5b                           pop      rbx
0000000007ba128f: 415e                         pop      r14
0000000007ba1291: c3                           ret
0000000007ba1292: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007ba1296: 4885f6                       test     rsi, rsi
0000000007ba1299: 750e                         jne      0x7ba12a9
0000000007ba129b: 488d057e9a1503               lea      rax, [rip + 0x3159a7e]
0000000007ba12a2: 488b00                       mov      rax, qword ptr [rax]
0000000007ba12a5: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007ba12a9: bf02000000                   mov      edi, 2
0000000007ba12ae: 4889da                       mov      rdx, rbx
0000000007ba12b1: 4883c408                     add      rsp, 8
0000000007ba12b5: 5b                           pop      rbx
0000000007ba12b6: 415e                         pop      r14
0000000007ba12b8: e933143b01                   jmp      0x8f526f0

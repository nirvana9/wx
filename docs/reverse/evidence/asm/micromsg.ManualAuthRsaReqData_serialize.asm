0000000007cd61c0: 4156                         push     r14
0000000007cd61c2: 53                           push     rbx
0000000007cd61c3: 50                           push     rax
0000000007cd61c4: 4889f3                       mov      rbx, rsi
0000000007cd61c7: 4989fe                       mov      r14, rdi
0000000007cd61ca: 8b4734                       mov      eax, dword ptr [rdi + 0x34]
0000000007cd61cd: a801                         test     al, 1
0000000007cd61cf: 7520                         jne      0x7cd61f1
0000000007cd61d1: a802                         test     al, 2
0000000007cd61d3: 7548                         jne      0x7cd621d
0000000007cd61d5: a804                         test     al, 4
0000000007cd61d7: 7570                         jne      0x7cd6249
0000000007cd61d9: a808                         test     al, 8
0000000007cd61db: 0f8585000000                 jne      0x7cd6266
0000000007cd61e1: a810                         test     al, 0x10
0000000007cd61e3: 0f859a000000                 jne      0x7cd6283
0000000007cd61e9: 4883c408                     add      rsp, 8
0000000007cd61ed: 5b                           pop      rbx
0000000007cd61ee: 415e                         pop      r14
0000000007cd61f0: c3                           ret
0000000007cd61f1: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cd61f5: 4885f6                       test     rsi, rsi
0000000007cd61f8: 750e                         jne      0x7cd6208
0000000007cd61fa: 488d055f5b0203               lea      rax, [rip + 0x3025b5f]
0000000007cd6201: 488b00                       mov      rax, qword ptr [rax]
0000000007cd6204: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cd6208: bf01000000                   mov      edi, 1
0000000007cd620d: 4889da                       mov      rdx, rbx
0000000007cd6210: e8dbc42701                   call     0x8f526f0
0000000007cd6215: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
0000000007cd6219: a802                         test     al, 2
0000000007cd621b: 74b8                         je       0x7cd61d5
0000000007cd621d: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cd6221: 4885f6                       test     rsi, rsi
0000000007cd6224: 750e                         jne      0x7cd6234
0000000007cd6226: 488d05335b0203               lea      rax, [rip + 0x3025b33]
0000000007cd622d: 488b00                       mov      rax, qword ptr [rax]
0000000007cd6230: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cd6234: bf02000000                   mov      edi, 2
0000000007cd6239: 4889da                       mov      rdx, rbx
0000000007cd623c: e8afc42701                   call     0x8f526f0
0000000007cd6241: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
0000000007cd6245: a804                         test     al, 4
0000000007cd6247: 7490                         je       0x7cd61d9
0000000007cd6249: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007cd624d: bf03000000                   mov      edi, 3
0000000007cd6252: 4889da                       mov      rdx, rbx
0000000007cd6255: e8f6c22701                   call     0x8f52550
0000000007cd625a: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
0000000007cd625e: a808                         test     al, 8
0000000007cd6260: 0f847bffffff                 je       0x7cd61e1
0000000007cd6266: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007cd626a: bf04000000                   mov      edi, 4
0000000007cd626f: 4889da                       mov      rdx, rbx
0000000007cd6272: e8d9c22701                   call     0x8f52550
0000000007cd6277: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
0000000007cd627b: a810                         test     al, 0x10
0000000007cd627d: 0f8466ffffff                 je       0x7cd61e9
0000000007cd6283: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007cd6287: bf05000000                   mov      edi, 5
0000000007cd628c: 4889da                       mov      rdx, rbx
0000000007cd628f: 4883c408                     add      rsp, 8
0000000007cd6293: 5b                           pop      rbx
0000000007cd6294: 415e                         pop      r14
0000000007cd6296: e9b5c22701                   jmp      0x8f52550

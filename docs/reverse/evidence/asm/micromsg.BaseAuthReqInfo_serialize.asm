0000000007cd51e0: 4156                         push     r14
0000000007cd51e2: 53                           push     rbx
0000000007cd51e3: 50                           push     rax
0000000007cd51e4: 4889f3                       mov      rbx, rsi
0000000007cd51e7: 4989fe                       mov      r14, rdi
0000000007cd51ea: 8b4740                       mov      eax, dword ptr [rdi + 0x40]
0000000007cd51ed: a801                         test     al, 1
0000000007cd51ef: 7534                         jne      0x7cd5225
0000000007cd51f1: a802                         test     al, 2
0000000007cd51f3: 755c                         jne      0x7cd5251
0000000007cd51f5: a804                         test     al, 4
0000000007cd51f7: 0f8580000000                 jne      0x7cd527d
0000000007cd51fd: a808                         test     al, 8
0000000007cd51ff: 0f85a8000000                 jne      0x7cd52ad
0000000007cd5205: a810                         test     al, 0x10
0000000007cd5207: 0f85d0000000                 jne      0x7cd52dd
0000000007cd520d: a820                         test     al, 0x20
0000000007cd520f: 0f85f8000000                 jne      0x7cd530d
0000000007cd5215: a840                         test     al, 0x40
0000000007cd5217: 0f850d010000                 jne      0x7cd532a
0000000007cd521d: 4883c408                     add      rsp, 8
0000000007cd5221: 5b                           pop      rbx
0000000007cd5222: 415e                         pop      r14
0000000007cd5224: c3                           ret
0000000007cd5225: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cd5229: 4885f6                       test     rsi, rsi
0000000007cd522c: 750e                         jne      0x7cd523c
0000000007cd522e: 488d05236b0203               lea      rax, [rip + 0x3026b23]
0000000007cd5235: 488b00                       mov      rax, qword ptr [rax]
0000000007cd5238: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cd523c: bf01000000                   mov      edi, 1
0000000007cd5241: 4889da                       mov      rdx, rbx
0000000007cd5244: e8a7d42701                   call     0x8f526f0
0000000007cd5249: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007cd524d: a802                         test     al, 2
0000000007cd524f: 74a4                         je       0x7cd51f5
0000000007cd5251: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cd5255: 4885f6                       test     rsi, rsi
0000000007cd5258: 750e                         jne      0x7cd5268
0000000007cd525a: 488d05f76a0203               lea      rax, [rip + 0x3026af7]
0000000007cd5261: 488b00                       mov      rax, qword ptr [rax]
0000000007cd5264: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cd5268: bf02000000                   mov      edi, 2
0000000007cd526d: 4889da                       mov      rdx, rbx
0000000007cd5270: e87bd42701                   call     0x8f526f0
0000000007cd5275: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007cd5279: a804                         test     al, 4
0000000007cd527b: 7480                         je       0x7cd51fd
0000000007cd527d: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007cd5281: 4885f6                       test     rsi, rsi
0000000007cd5284: 750e                         jne      0x7cd5294
0000000007cd5286: 488d05cb6a0203               lea      rax, [rip + 0x3026acb]
0000000007cd528d: 488b00                       mov      rax, qword ptr [rax]
0000000007cd5290: 488b7018                     mov      rsi, qword ptr [rax + 0x18]
0000000007cd5294: bf03000000                   mov      edi, 3
0000000007cd5299: 4889da                       mov      rdx, rbx
0000000007cd529c: e84fd42701                   call     0x8f526f0
0000000007cd52a1: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007cd52a5: a808                         test     al, 8
0000000007cd52a7: 0f8458ffffff                 je       0x7cd5205
0000000007cd52ad: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007cd52b1: 4885f6                       test     rsi, rsi
0000000007cd52b4: 750e                         jne      0x7cd52c4
0000000007cd52b6: 488d059b6a0203               lea      rax, [rip + 0x3026a9b]
0000000007cd52bd: 488b00                       mov      rax, qword ptr [rax]
0000000007cd52c0: 488b7020                     mov      rsi, qword ptr [rax + 0x20]
0000000007cd52c4: bf04000000                   mov      edi, 4
0000000007cd52c9: 4889da                       mov      rdx, rbx
0000000007cd52cc: e81fd42701                   call     0x8f526f0
0000000007cd52d1: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007cd52d5: a810                         test     al, 0x10
0000000007cd52d7: 0f8430ffffff                 je       0x7cd520d
0000000007cd52dd: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007cd52e1: 4885f6                       test     rsi, rsi
0000000007cd52e4: 750e                         jne      0x7cd52f4
0000000007cd52e6: 488d056b6a0203               lea      rax, [rip + 0x3026a6b]
0000000007cd52ed: 488b00                       mov      rax, qword ptr [rax]
0000000007cd52f0: 488b7028                     mov      rsi, qword ptr [rax + 0x28]
0000000007cd52f4: bf05000000                   mov      edi, 5
0000000007cd52f9: 4889da                       mov      rdx, rbx
0000000007cd52fc: e8efd32701                   call     0x8f526f0
0000000007cd5301: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007cd5305: a820                         test     al, 0x20
0000000007cd5307: 0f8408ffffff                 je       0x7cd5215
0000000007cd530d: 418b7638                     mov      esi, dword ptr [r14 + 0x38]
0000000007cd5311: bf06000000                   mov      edi, 6
0000000007cd5316: 4889da                       mov      rdx, rbx
0000000007cd5319: e862d02701                   call     0x8f52380
0000000007cd531e: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007cd5322: a840                         test     al, 0x40
0000000007cd5324: 0f84f3feffff                 je       0x7cd521d
0000000007cd532a: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007cd532e: bf07000000                   mov      edi, 7
0000000007cd5333: 4889da                       mov      rdx, rbx
0000000007cd5336: 4883c408                     add      rsp, 8
0000000007cd533a: 5b                           pop      rbx
0000000007cd533b: 415e                         pop      r14
0000000007cd533d: e90ed22701                   jmp      0x8f52550

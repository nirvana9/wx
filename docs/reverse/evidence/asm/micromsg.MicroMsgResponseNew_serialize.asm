00000000079ee340: 4156                         push     r14
00000000079ee342: 53                           push     rbx
00000000079ee343: 50                           push     rax
00000000079ee344: 4889f3                       mov      rbx, rsi
00000000079ee347: 4989fe                       mov      r14, rdi
00000000079ee34a: 8b4734                       mov      eax, dword ptr [rdi + 0x34]
00000000079ee34d: a801                         test     al, 1
00000000079ee34f: 7538                         jne      0x79ee389
00000000079ee351: a802                         test     al, 2
00000000079ee353: 754d                         jne      0x79ee3a2
00000000079ee355: a804                         test     al, 4
00000000079ee357: 7575                         jne      0x79ee3ce
00000000079ee359: a808                         test     al, 8
00000000079ee35b: 0f858a000000                 jne      0x79ee3eb
00000000079ee361: a810                         test     al, 0x10
00000000079ee363: 0f859f000000                 jne      0x79ee408
00000000079ee369: a820                         test     al, 0x20
00000000079ee36b: 0f85b4000000                 jne      0x79ee425
00000000079ee371: a840                         test     al, 0x40
00000000079ee373: 0f85c9000000                 jne      0x79ee442
00000000079ee379: 84c0                         test     al, al
00000000079ee37b: 0f88de000000                 js       0x79ee45f
00000000079ee381: 4883c408                     add      rsp, 8
00000000079ee385: 5b                           pop      rbx
00000000079ee386: 415e                         pop      r14
00000000079ee388: c3                           ret
00000000079ee389: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
00000000079ee38d: bf01000000                   mov      edi, 1
00000000079ee392: 4889da                       mov      rdx, rbx
00000000079ee395: e8763f5601                   call     0x8f52310
00000000079ee39a: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ee39e: a802                         test     al, 2
00000000079ee3a0: 74b3                         je       0x79ee355
00000000079ee3a2: 498b7608                     mov      rsi, qword ptr [r14 + 8]
00000000079ee3a6: 4885f6                       test     rsi, rsi
00000000079ee3a9: 750e                         jne      0x79ee3b9
00000000079ee3ab: 488d052ebd3003               lea      rax, [rip + 0x330bd2e]
00000000079ee3b2: 488b00                       mov      rax, qword ptr [rax]
00000000079ee3b5: 488b7008                     mov      rsi, qword ptr [rax + 8]
00000000079ee3b9: bf02000000                   mov      edi, 2
00000000079ee3be: 4889da                       mov      rdx, rbx
00000000079ee3c1: e82a435601                   call     0x8f526f0
00000000079ee3c6: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ee3ca: a804                         test     al, 4
00000000079ee3cc: 748b                         je       0x79ee359
00000000079ee3ce: 418b7614                     mov      esi, dword ptr [r14 + 0x14]
00000000079ee3d2: bf03000000                   mov      edi, 3
00000000079ee3d7: 4889da                       mov      rdx, rbx
00000000079ee3da: e8a13f5601                   call     0x8f52380
00000000079ee3df: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ee3e3: a808                         test     al, 8
00000000079ee3e5: 0f8476ffffff                 je       0x79ee361
00000000079ee3eb: 418b7618                     mov      esi, dword ptr [r14 + 0x18]
00000000079ee3ef: bf04000000                   mov      edi, 4
00000000079ee3f4: 4889da                       mov      rdx, rbx
00000000079ee3f7: e8843f5601                   call     0x8f52380
00000000079ee3fc: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ee400: a810                         test     al, 0x10
00000000079ee402: 0f8461ffffff                 je       0x79ee369
00000000079ee408: 418b761c                     mov      esi, dword ptr [r14 + 0x1c]
00000000079ee40c: bf05000000                   mov      edi, 5
00000000079ee411: 4889da                       mov      rdx, rbx
00000000079ee414: e8673f5601                   call     0x8f52380
00000000079ee419: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ee41d: a820                         test     al, 0x20
00000000079ee41f: 0f844cffffff                 je       0x79ee371
00000000079ee425: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
00000000079ee429: bf06000000                   mov      edi, 6
00000000079ee42e: 4889da                       mov      rdx, rbx
00000000079ee431: e84a3f5601                   call     0x8f52380
00000000079ee436: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ee43a: a840                         test     al, 0x40
00000000079ee43c: 0f8437ffffff                 je       0x79ee379
00000000079ee442: 418b7624                     mov      esi, dword ptr [r14 + 0x24]
00000000079ee446: bf07000000                   mov      edi, 7
00000000079ee44b: 4889da                       mov      rdx, rbx
00000000079ee44e: e82d3f5601                   call     0x8f52380
00000000079ee453: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ee457: 84c0                         test     al, al
00000000079ee459: 0f8922ffffff                 jns      0x79ee381
00000000079ee45f: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
00000000079ee463: bf08000000                   mov      edi, 8
00000000079ee468: 4889da                       mov      rdx, rbx
00000000079ee46b: 4883c408                     add      rsp, 8
00000000079ee46f: 5b                           pop      rbx
00000000079ee470: 415e                         pop      r14
00000000079ee472: e9393f5601                   jmp      0x8f523b0

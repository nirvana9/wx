0000000007cc72f0: 4156                         push     r14
0000000007cc72f2: 53                           push     rbx
0000000007cc72f3: 50                           push     rax
0000000007cc72f4: 4889f3                       mov      rbx, rsi
0000000007cc72f7: 4989fe                       mov      r14, rdi
0000000007cc72fa: 8b474c                       mov      eax, dword ptr [rdi + 0x4c]
0000000007cc72fd: a801                         test     al, 1
0000000007cc72ff: 7547                         jne      0x7cc7348
0000000007cc7301: a802                         test     al, 2
0000000007cc7303: 756f                         jne      0x7cc7374
0000000007cc7305: a804                         test     al, 4
0000000007cc7307: 0f8597000000                 jne      0x7cc73a4
0000000007cc730d: a808                         test     al, 8
0000000007cc730f: 0f85ac000000                 jne      0x7cc73c1
0000000007cc7315: a810                         test     al, 0x10
0000000007cc7317: 0f85c1000000                 jne      0x7cc73de
0000000007cc731d: a820                         test     al, 0x20
0000000007cc731f: 0f85e9000000                 jne      0x7cc740e
0000000007cc7325: a840                         test     al, 0x40
0000000007cc7327: 0f85fe000000                 jne      0x7cc742b
0000000007cc732d: 84c0                         test     al, al
0000000007cc732f: 0f8813010000                 js       0x7cc7448
0000000007cc7335: a900010000                   test     eax, 0x100
0000000007cc733a: 0f853b010000                 jne      0x7cc747b
0000000007cc7340: 4883c408                     add      rsp, 8
0000000007cc7344: 5b                           pop      rbx
0000000007cc7345: 415e                         pop      r14
0000000007cc7347: c3                           ret
0000000007cc7348: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cc734c: 4885f6                       test     rsi, rsi
0000000007cc734f: 750e                         jne      0x7cc735f
0000000007cc7351: 488d0540490303               lea      rax, [rip + 0x3034940]
0000000007cc7358: 488b00                       mov      rax, qword ptr [rax]
0000000007cc735b: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cc735f: bf01000000                   mov      edi, 1
0000000007cc7364: 4889da                       mov      rdx, rbx
0000000007cc7367: e884b32801                   call     0x8f526f0
0000000007cc736c: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007cc7370: a802                         test     al, 2
0000000007cc7372: 7491                         je       0x7cc7305
0000000007cc7374: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cc7378: 4885f6                       test     rsi, rsi
0000000007cc737b: 750e                         jne      0x7cc738b
0000000007cc737d: 488d0514490303               lea      rax, [rip + 0x3034914]
0000000007cc7384: 488b00                       mov      rax, qword ptr [rax]
0000000007cc7387: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cc738b: bf02000000                   mov      edi, 2
0000000007cc7390: 4889da                       mov      rdx, rbx
0000000007cc7393: e858b32801                   call     0x8f526f0
0000000007cc7398: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007cc739c: a804                         test     al, 4
0000000007cc739e: 0f8469ffffff                 je       0x7cc730d
0000000007cc73a4: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007cc73a8: bf03000000                   mov      edi, 3
0000000007cc73ad: 4889da                       mov      rdx, rbx
0000000007cc73b0: e89bb12801                   call     0x8f52550
0000000007cc73b5: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007cc73b9: a808                         test     al, 8
0000000007cc73bb: 0f8454ffffff                 je       0x7cc7315
0000000007cc73c1: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
0000000007cc73c5: bf04000000                   mov      edi, 4
0000000007cc73ca: 4889da                       mov      rdx, rbx
0000000007cc73cd: e8aeaf2801                   call     0x8f52380
0000000007cc73d2: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007cc73d6: a810                         test     al, 0x10
0000000007cc73d8: 0f843fffffff                 je       0x7cc731d
0000000007cc73de: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007cc73e2: 4885f6                       test     rsi, rsi
0000000007cc73e5: 750e                         jne      0x7cc73f5
0000000007cc73e7: 488d05aa480303               lea      rax, [rip + 0x30348aa]
0000000007cc73ee: 488b00                       mov      rax, qword ptr [rax]
0000000007cc73f1: 488b7020                     mov      rsi, qword ptr [rax + 0x20]
0000000007cc73f5: bf05000000                   mov      edi, 5
0000000007cc73fa: 4889da                       mov      rdx, rbx
0000000007cc73fd: e8eeb22801                   call     0x8f526f0
0000000007cc7402: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007cc7406: a820                         test     al, 0x20
0000000007cc7408: 0f8417ffffff                 je       0x7cc7325
0000000007cc740e: 418b762c                     mov      esi, dword ptr [r14 + 0x2c]
0000000007cc7412: bf06000000                   mov      edi, 6
0000000007cc7417: 4889da                       mov      rdx, rbx
0000000007cc741a: e861af2801                   call     0x8f52380
0000000007cc741f: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007cc7423: a840                         test     al, 0x40
0000000007cc7425: 0f8402ffffff                 je       0x7cc732d
0000000007cc742b: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007cc742f: bf07000000                   mov      edi, 7
0000000007cc7434: 4889da                       mov      rdx, rbx
0000000007cc7437: e814b12801                   call     0x8f52550
0000000007cc743c: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007cc7440: 84c0                         test     al, al
0000000007cc7442: 0f89edfeffff                 jns      0x7cc7335
0000000007cc7448: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007cc744c: 4885f6                       test     rsi, rsi
0000000007cc744f: 750e                         jne      0x7cc745f
0000000007cc7451: 488d0540480303               lea      rax, [rip + 0x3034840]
0000000007cc7458: 488b00                       mov      rax, qword ptr [rax]
0000000007cc745b: 488b7038                     mov      rsi, qword ptr [rax + 0x38]
0000000007cc745f: bf08000000                   mov      edi, 8
0000000007cc7464: 4889da                       mov      rdx, rbx
0000000007cc7467: e884b22801                   call     0x8f526f0
0000000007cc746c: 418b464c                     mov      eax, dword ptr [r14 + 0x4c]
0000000007cc7470: a900010000                   test     eax, 0x100
0000000007cc7475: 0f84c5feffff                 je       0x7cc7340
0000000007cc747b: 498b7640                     mov      rsi, qword ptr [r14 + 0x40]
0000000007cc747f: bf09000000                   mov      edi, 9
0000000007cc7484: 4889da                       mov      rdx, rbx
0000000007cc7487: 4883c408                     add      rsp, 8
0000000007cc748b: 5b                           pop      rbx
0000000007cc748c: 415e                         pop      r14
0000000007cc748e: e9bdb02801                   jmp      0x8f52550

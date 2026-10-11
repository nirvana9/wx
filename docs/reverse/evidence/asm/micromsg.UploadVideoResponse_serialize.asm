0000000007d052f0: 4156                         push     r14
0000000007d052f2: 53                           push     rbx
0000000007d052f3: 50                           push     rax
0000000007d052f4: 4889f3                       mov      rbx, rsi
0000000007d052f7: 4989fe                       mov      r14, rdi
0000000007d052fa: 8b4740                       mov      eax, dword ptr [rdi + 0x40]
0000000007d052fd: a801                         test     al, 1
0000000007d052ff: 7538                         jne      0x7d05339
0000000007d05301: a802                         test     al, 2
0000000007d05303: 7560                         jne      0x7d05365
0000000007d05305: a804                         test     al, 4
0000000007d05307: 7575                         jne      0x7d0537e
0000000007d05309: a808                         test     al, 8
0000000007d0530b: 0f858a000000                 jne      0x7d0539b
0000000007d05311: a810                         test     al, 0x10
0000000007d05313: 0f859f000000                 jne      0x7d053b8
0000000007d05319: a820                         test     al, 0x20
0000000007d0531b: 0f85b4000000                 jne      0x7d053d5
0000000007d05321: a840                         test     al, 0x40
0000000007d05323: 0f85c9000000                 jne      0x7d053f2
0000000007d05329: 84c0                         test     al, al
0000000007d0532b: 0f88de000000                 js       0x7d0540f
0000000007d05331: 4883c408                     add      rsp, 8
0000000007d05335: 5b                           pop      rbx
0000000007d05336: 415e                         pop      r14
0000000007d05338: c3                           ret
0000000007d05339: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007d0533d: 4885f6                       test     rsi, rsi
0000000007d05340: 750e                         jne      0x7d05350
0000000007d05342: 488d059f6bff02               lea      rax, [rip + 0x2ff6b9f]
0000000007d05349: 488b00                       mov      rax, qword ptr [rax]
0000000007d0534c: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007d05350: bf01000000                   mov      edi, 1
0000000007d05355: 4889da                       mov      rdx, rbx
0000000007d05358: e893d32401                   call     0x8f526f0
0000000007d0535d: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007d05361: a802                         test     al, 2
0000000007d05363: 74a0                         je       0x7d05305
0000000007d05365: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007d05369: bf02000000                   mov      edi, 2
0000000007d0536e: 4889da                       mov      rdx, rbx
0000000007d05371: e8dad12401                   call     0x8f52550
0000000007d05376: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007d0537a: a804                         test     al, 4
0000000007d0537c: 748b                         je       0x7d05309
0000000007d0537e: 418b7618                     mov      esi, dword ptr [r14 + 0x18]
0000000007d05382: bf03000000                   mov      edi, 3
0000000007d05387: 4889da                       mov      rdx, rbx
0000000007d0538a: e8f1cf2401                   call     0x8f52380
0000000007d0538f: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007d05393: a808                         test     al, 8
0000000007d05395: 0f8476ffffff                 je       0x7d05311
0000000007d0539b: 418b761c                     mov      esi, dword ptr [r14 + 0x1c]
0000000007d0539f: bf04000000                   mov      edi, 4
0000000007d053a4: 4889da                       mov      rdx, rbx
0000000007d053a7: e8d4cf2401                   call     0x8f52380
0000000007d053ac: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007d053b0: a810                         test     al, 0x10
0000000007d053b2: 0f8461ffffff                 je       0x7d05319
0000000007d053b8: 418b7638                     mov      esi, dword ptr [r14 + 0x38]
0000000007d053bc: bf05000000                   mov      edi, 5
0000000007d053c1: 4889da                       mov      rdx, rbx
0000000007d053c4: e8b7cf2401                   call     0x8f52380
0000000007d053c9: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007d053cd: a820                         test     al, 0x20
0000000007d053cf: 0f844cffffff                 je       0x7d05321
0000000007d053d5: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007d053d9: bf06000000                   mov      edi, 6
0000000007d053de: 4889da                       mov      rdx, rbx
0000000007d053e1: e8cacf2401                   call     0x8f523b0
0000000007d053e6: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007d053ea: a840                         test     al, 0x40
0000000007d053ec: 0f8437ffffff                 je       0x7d05329
0000000007d053f2: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007d053f6: bf07000000                   mov      edi, 7
0000000007d053fb: 4889da                       mov      rdx, rbx
0000000007d053fe: e84dd12401                   call     0x8f52550
0000000007d05403: 418b4640                     mov      eax, dword ptr [r14 + 0x40]
0000000007d05407: 84c0                         test     al, al
0000000007d05409: 0f8922ffffff                 jns      0x7d05331
0000000007d0540f: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007d05413: bf08000000                   mov      edi, 8
0000000007d05418: 4889da                       mov      rdx, rbx
0000000007d0541b: 4883c408                     add      rsp, 8
0000000007d0541f: 5b                           pop      rbx
0000000007d05420: 415e                         pop      r14
0000000007d05422: e929d12401                   jmp      0x8f52550

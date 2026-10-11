0000000007d0c730: 4156                         push     r14
0000000007d0c732: 53                           push     rbx
0000000007d0c733: 50                           push     rax
0000000007d0c734: 4889f3                       mov      rbx, rsi
0000000007d0c737: 4989fe                       mov      r14, rdi
0000000007d0c73a: 8b475c                       mov      eax, dword ptr [rdi + 0x5c]
0000000007d0c73d: a801                         test     al, 1
0000000007d0c73f: 7577                         jne      0x7d0c7b8
0000000007d0c741: a802                         test     al, 2
0000000007d0c743: 0f859f000000                 jne      0x7d0c7e8
0000000007d0c749: a804                         test     al, 4
0000000007d0c74b: 0f85c7000000                 jne      0x7d0c818
0000000007d0c751: a808                         test     al, 8
0000000007d0c753: 0f85dc000000                 jne      0x7d0c835
0000000007d0c759: a810                         test     al, 0x10
0000000007d0c75b: 0f85f1000000                 jne      0x7d0c852
0000000007d0c761: a820                         test     al, 0x20
0000000007d0c763: 0f8506010000                 jne      0x7d0c86f
0000000007d0c769: a840                         test     al, 0x40
0000000007d0c76b: 0f851b010000                 jne      0x7d0c88c
0000000007d0c771: 84c0                         test     al, al
0000000007d0c773: 0f8830010000                 js       0x7d0c8a9
0000000007d0c779: a900010000                   test     eax, 0x100
0000000007d0c77e: 0f8545010000                 jne      0x7d0c8c9
0000000007d0c784: a900020000                   test     eax, 0x200
0000000007d0c789: 0f855a010000                 jne      0x7d0c8e9
0000000007d0c78f: a900040000                   test     eax, 0x400
0000000007d0c794: 0f856f010000                 jne      0x7d0c909
0000000007d0c79a: a900080000                   test     eax, 0x800
0000000007d0c79f: 0f8584010000                 jne      0x7d0c929
0000000007d0c7a5: a900100000                   test     eax, 0x1000
0000000007d0c7aa: 0f8599010000                 jne      0x7d0c949
0000000007d0c7b0: 4883c408                     add      rsp, 8
0000000007d0c7b4: 5b                           pop      rbx
0000000007d0c7b5: 415e                         pop      r14
0000000007d0c7b7: c3                           ret
0000000007d0c7b8: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007d0c7bc: 4885f6                       test     rsi, rsi
0000000007d0c7bf: 750e                         jne      0x7d0c7cf
0000000007d0c7c1: 488d0560f7fe02               lea      rax, [rip + 0x2fef760]
0000000007d0c7c8: 488b00                       mov      rax, qword ptr [rax]
0000000007d0c7cb: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007d0c7cf: bf01000000                   mov      edi, 1
0000000007d0c7d4: 4889da                       mov      rdx, rbx
0000000007d0c7d7: e8145f2401                   call     0x8f526f0
0000000007d0c7dc: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007d0c7e0: a802                         test     al, 2
0000000007d0c7e2: 0f8461ffffff                 je       0x7d0c749
0000000007d0c7e8: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007d0c7ec: 4885f6                       test     rsi, rsi
0000000007d0c7ef: 750e                         jne      0x7d0c7ff
0000000007d0c7f1: 488d0530f7fe02               lea      rax, [rip + 0x2fef730]
0000000007d0c7f8: 488b00                       mov      rax, qword ptr [rax]
0000000007d0c7fb: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007d0c7ff: bf02000000                   mov      edi, 2
0000000007d0c804: 4889da                       mov      rdx, rbx
0000000007d0c807: e8e45e2401                   call     0x8f526f0
0000000007d0c80c: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007d0c810: a804                         test     al, 4
0000000007d0c812: 0f8439ffffff                 je       0x7d0c751
0000000007d0c818: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007d0c81c: bf03000000                   mov      edi, 3
0000000007d0c821: 4889da                       mov      rdx, rbx
0000000007d0c824: e8275d2401                   call     0x8f52550
0000000007d0c829: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007d0c82d: a808                         test     al, 8
0000000007d0c82f: 0f8424ffffff                 je       0x7d0c759
0000000007d0c835: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
0000000007d0c839: bf04000000                   mov      edi, 4
0000000007d0c83e: 4889da                       mov      rdx, rbx
0000000007d0c841: e83a5b2401                   call     0x8f52380
0000000007d0c846: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007d0c84a: a810                         test     al, 0x10
0000000007d0c84c: 0f840fffffff                 je       0x7d0c761
0000000007d0c852: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007d0c856: bf05000000                   mov      edi, 5
0000000007d0c85b: 4889da                       mov      rdx, rbx
0000000007d0c85e: e8ed5c2401                   call     0x8f52550
0000000007d0c863: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007d0c867: a820                         test     al, 0x20
0000000007d0c869: 0f84fafeffff                 je       0x7d0c769
0000000007d0c86f: 418b762c                     mov      esi, dword ptr [r14 + 0x2c]
0000000007d0c873: bf06000000                   mov      edi, 6
0000000007d0c878: 4889da                       mov      rdx, rbx
0000000007d0c87b: e8005b2401                   call     0x8f52380
0000000007d0c880: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007d0c884: a840                         test     al, 0x40
0000000007d0c886: 0f84e5feffff                 je       0x7d0c771
0000000007d0c88c: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007d0c890: bf07000000                   mov      edi, 7
0000000007d0c895: 4889da                       mov      rdx, rbx
0000000007d0c898: e8b35c2401                   call     0x8f52550
0000000007d0c89d: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007d0c8a1: 84c0                         test     al, al
0000000007d0c8a3: 0f89d0feffff                 jns      0x7d0c779
0000000007d0c8a9: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007d0c8ad: bf08000000                   mov      edi, 8
0000000007d0c8b2: 4889da                       mov      rdx, rbx
0000000007d0c8b5: e8965c2401                   call     0x8f52550
0000000007d0c8ba: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007d0c8be: a900010000                   test     eax, 0x100
0000000007d0c8c3: 0f84bbfeffff                 je       0x7d0c784
0000000007d0c8c9: 418b7640                     mov      esi, dword ptr [r14 + 0x40]
0000000007d0c8cd: bf09000000                   mov      edi, 9
0000000007d0c8d2: 4889da                       mov      rdx, rbx
0000000007d0c8d5: e8a65a2401                   call     0x8f52380
0000000007d0c8da: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007d0c8de: a900020000                   test     eax, 0x200
0000000007d0c8e3: 0f84a6feffff                 je       0x7d0c78f
0000000007d0c8e9: 418b7644                     mov      esi, dword ptr [r14 + 0x44]
0000000007d0c8ed: bf0a000000                   mov      edi, 0xa
0000000007d0c8f2: 4889da                       mov      rdx, rbx
0000000007d0c8f5: e8865a2401                   call     0x8f52380
0000000007d0c8fa: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007d0c8fe: a900040000                   test     eax, 0x400
0000000007d0c903: 0f8491feffff                 je       0x7d0c79a
0000000007d0c909: 418b7648                     mov      esi, dword ptr [r14 + 0x48]
0000000007d0c90d: bf0b000000                   mov      edi, 0xb
0000000007d0c912: 4889da                       mov      rdx, rbx
0000000007d0c915: e8665a2401                   call     0x8f52380
0000000007d0c91a: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007d0c91e: a900080000                   test     eax, 0x800
0000000007d0c923: 0f847cfeffff                 je       0x7d0c7a5
0000000007d0c929: 418b764c                     mov      esi, dword ptr [r14 + 0x4c]
0000000007d0c92d: bf0c000000                   mov      edi, 0xc
0000000007d0c932: 4889da                       mov      rdx, rbx
0000000007d0c935: e8465a2401                   call     0x8f52380
0000000007d0c93a: 418b465c                     mov      eax, dword ptr [r14 + 0x5c]
0000000007d0c93e: a900100000                   test     eax, 0x1000
0000000007d0c943: 0f8467feffff                 je       0x7d0c7b0
0000000007d0c949: 498b7650                     mov      rsi, qword ptr [r14 + 0x50]
0000000007d0c94d: bf0d000000                   mov      edi, 0xd
0000000007d0c952: 4889da                       mov      rdx, rbx
0000000007d0c955: 4883c408                     add      rsp, 8
0000000007d0c959: 5b                           pop      rbx
0000000007d0c95a: 415e                         pop      r14
0000000007d0c95c: e9ef5b2401                   jmp      0x8f52550

0000000007cf2440: 4156                         push     r14
0000000007cf2442: 53                           push     rbx
0000000007cf2443: 50                           push     rax
0000000007cf2444: 4889f3                       mov      rbx, rsi
0000000007cf2447: 4989fe                       mov      r14, rdi
0000000007cf244a: 8b4744                       mov      eax, dword ptr [rdi + 0x44]
0000000007cf244d: a801                         test     al, 1
0000000007cf244f: 7547                         jne      0x7cf2498
0000000007cf2451: a802                         test     al, 2
0000000007cf2453: 756f                         jne      0x7cf24c4
0000000007cf2455: a804                         test     al, 4
0000000007cf2457: 0f8580000000                 jne      0x7cf24dd
0000000007cf245d: a808                         test     al, 8
0000000007cf245f: 0f8595000000                 jne      0x7cf24fa
0000000007cf2465: a810                         test     al, 0x10
0000000007cf2467: 0f85aa000000                 jne      0x7cf2517
0000000007cf246d: a820                         test     al, 0x20
0000000007cf246f: 0f85bf000000                 jne      0x7cf2534
0000000007cf2475: a840                         test     al, 0x40
0000000007cf2477: 0f85d4000000                 jne      0x7cf2551
0000000007cf247d: 84c0                         test     al, al
0000000007cf247f: 0f88e9000000                 js       0x7cf256e
0000000007cf2485: a900010000                   test     eax, 0x100
0000000007cf248a: 0f85fe000000                 jne      0x7cf258e
0000000007cf2490: 4883c408                     add      rsp, 8
0000000007cf2494: 5b                           pop      rbx
0000000007cf2495: 415e                         pop      r14
0000000007cf2497: c3                           ret
0000000007cf2498: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cf249c: 4885f6                       test     rsi, rsi
0000000007cf249f: 750e                         jne      0x7cf24af
0000000007cf24a1: 488d05e0990003               lea      rax, [rip + 0x30099e0]
0000000007cf24a8: 488b00                       mov      rax, qword ptr [rax]
0000000007cf24ab: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cf24af: bf01000000                   mov      edi, 1
0000000007cf24b4: 4889da                       mov      rdx, rbx
0000000007cf24b7: e834022601                   call     0x8f526f0
0000000007cf24bc: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007cf24c0: a802                         test     al, 2
0000000007cf24c2: 7491                         je       0x7cf2455
0000000007cf24c4: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cf24c8: bf02000000                   mov      edi, 2
0000000007cf24cd: 4889da                       mov      rdx, rbx
0000000007cf24d0: e87b002601                   call     0x8f52550
0000000007cf24d5: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007cf24d9: a804                         test     al, 4
0000000007cf24db: 7480                         je       0x7cf245d
0000000007cf24dd: 418b7618                     mov      esi, dword ptr [r14 + 0x18]
0000000007cf24e1: bf03000000                   mov      edi, 3
0000000007cf24e6: 4889da                       mov      rdx, rbx
0000000007cf24e9: e892fe2501                   call     0x8f52380
0000000007cf24ee: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007cf24f2: a808                         test     al, 8
0000000007cf24f4: 0f846bffffff                 je       0x7cf2465
0000000007cf24fa: 418b761c                     mov      esi, dword ptr [r14 + 0x1c]
0000000007cf24fe: bf04000000                   mov      edi, 4
0000000007cf2503: 4889da                       mov      rdx, rbx
0000000007cf2506: e875fe2501                   call     0x8f52380
0000000007cf250b: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007cf250f: a810                         test     al, 0x10
0000000007cf2511: 0f8456ffffff                 je       0x7cf246d
0000000007cf2517: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
0000000007cf251b: bf05000000                   mov      edi, 5
0000000007cf2520: 4889da                       mov      rdx, rbx
0000000007cf2523: e858fe2501                   call     0x8f52380
0000000007cf2528: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007cf252c: a820                         test     al, 0x20
0000000007cf252e: 0f8441ffffff                 je       0x7cf2475
0000000007cf2534: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007cf2538: bf06000000                   mov      edi, 6
0000000007cf253d: 4889da                       mov      rdx, rbx
0000000007cf2540: e80b002601                   call     0x8f52550
0000000007cf2545: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007cf2549: a840                         test     al, 0x40
0000000007cf254b: 0f842cffffff                 je       0x7cf247d
0000000007cf2551: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007cf2555: bf07000000                   mov      edi, 7
0000000007cf255a: 4889da                       mov      rdx, rbx
0000000007cf255d: e8eeff2501                   call     0x8f52550
0000000007cf2562: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007cf2566: 84c0                         test     al, al
0000000007cf2568: 0f8917ffffff                 jns      0x7cf2485
0000000007cf256e: 418b762c                     mov      esi, dword ptr [r14 + 0x2c]
0000000007cf2572: bf08000000                   mov      edi, 8
0000000007cf2577: 4889da                       mov      rdx, rbx
0000000007cf257a: e801fe2501                   call     0x8f52380
0000000007cf257f: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007cf2583: a900010000                   test     eax, 0x100
0000000007cf2588: 0f8402ffffff                 je       0x7cf2490
0000000007cf258e: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007cf2592: bf09000000                   mov      edi, 9
0000000007cf2597: 4889da                       mov      rdx, rbx
0000000007cf259a: 4883c408                     add      rsp, 8
0000000007cf259e: 5b                           pop      rbx
0000000007cf259f: 415e                         pop      r14
0000000007cf25a1: e90afe2501                   jmp      0x8f523b0

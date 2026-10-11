0000000007d1a600: 4156                         push     r14
0000000007d1a602: 53                           push     rbx
0000000007d1a603: 50                           push     rax
0000000007d1a604: 4889f3                       mov      rbx, rsi
0000000007d1a607: 4989fe                       mov      r14, rdi
0000000007d1a60a: 8b4758                       mov      eax, dword ptr [rdi + 0x58]
0000000007d1a60d: a801                         test     al, 1
0000000007d1a60f: 7561                         jne      0x7d1a672
0000000007d1a611: a802                         test     al, 2
0000000007d1a613: 0f8589000000                 jne      0x7d1a6a2
0000000007d1a619: a804                         test     al, 4
0000000007d1a61b: 0f859e000000                 jne      0x7d1a6bf
0000000007d1a621: a808                         test     al, 8
0000000007d1a623: 0f85b3000000                 jne      0x7d1a6dc
0000000007d1a629: a810                         test     al, 0x10
0000000007d1a62b: 0f85c8000000                 jne      0x7d1a6f9
0000000007d1a631: a820                         test     al, 0x20
0000000007d1a633: 0f85dd000000                 jne      0x7d1a716
0000000007d1a639: a840                         test     al, 0x40
0000000007d1a63b: 0f85f2000000                 jne      0x7d1a733
0000000007d1a641: 84c0                         test     al, al
0000000007d1a643: 0f8807010000                 js       0x7d1a750
0000000007d1a649: a900010000                   test     eax, 0x100
0000000007d1a64e: 0f851c010000                 jne      0x7d1a770
0000000007d1a654: a900020000                   test     eax, 0x200
0000000007d1a659: 0f8531010000                 jne      0x7d1a790
0000000007d1a65f: a900040000                   test     eax, 0x400
0000000007d1a664: 0f8546010000                 jne      0x7d1a7b0
0000000007d1a66a: 4883c408                     add      rsp, 8
0000000007d1a66e: 5b                           pop      rbx
0000000007d1a66f: 415e                         pop      r14
0000000007d1a671: c3                           ret
0000000007d1a672: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007d1a676: 4885f6                       test     rsi, rsi
0000000007d1a679: 750e                         jne      0x7d1a689
0000000007d1a67b: 488d051619fe02               lea      rax, [rip + 0x2fe1916]
0000000007d1a682: 488b00                       mov      rax, qword ptr [rax]
0000000007d1a685: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007d1a689: bf01000000                   mov      edi, 1
0000000007d1a68e: 4889da                       mov      rdx, rbx
0000000007d1a691: e85a802301                   call     0x8f526f0
0000000007d1a696: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007d1a69a: a802                         test     al, 2
0000000007d1a69c: 0f8477ffffff                 je       0x7d1a619
0000000007d1a6a2: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007d1a6a6: bf03000000                   mov      edi, 3
0000000007d1a6ab: 4889da                       mov      rdx, rbx
0000000007d1a6ae: e89d7e2301                   call     0x8f52550
0000000007d1a6b3: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007d1a6b7: a804                         test     al, 4
0000000007d1a6b9: 0f8462ffffff                 je       0x7d1a621
0000000007d1a6bf: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007d1a6c3: bf04000000                   mov      edi, 4
0000000007d1a6c8: 4889da                       mov      rdx, rbx
0000000007d1a6cb: e8807e2301                   call     0x8f52550
0000000007d1a6d0: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007d1a6d4: a808                         test     al, 8
0000000007d1a6d6: 0f844dffffff                 je       0x7d1a629
0000000007d1a6dc: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007d1a6e0: bf05000000                   mov      edi, 5
0000000007d1a6e5: 4889da                       mov      rdx, rbx
0000000007d1a6e8: e8637e2301                   call     0x8f52550
0000000007d1a6ed: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007d1a6f1: a810                         test     al, 0x10
0000000007d1a6f3: 0f8438ffffff                 je       0x7d1a631
0000000007d1a6f9: 418b7638                     mov      esi, dword ptr [r14 + 0x38]
0000000007d1a6fd: bf09000000                   mov      edi, 9
0000000007d1a702: 4889da                       mov      rdx, rbx
0000000007d1a705: e8767c2301                   call     0x8f52380
0000000007d1a70a: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007d1a70e: a820                         test     al, 0x20
0000000007d1a710: 0f8423ffffff                 je       0x7d1a639
0000000007d1a716: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007d1a71a: bf0a000000                   mov      edi, 0xa
0000000007d1a71f: 4889da                       mov      rdx, rbx
0000000007d1a722: e8897c2301                   call     0x8f523b0
0000000007d1a727: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007d1a72b: a840                         test     al, 0x40
0000000007d1a72d: 0f840effffff                 je       0x7d1a641
0000000007d1a733: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007d1a737: bf0b000000                   mov      edi, 0xb
0000000007d1a73c: 4889da                       mov      rdx, rbx
0000000007d1a73f: e80c7e2301                   call     0x8f52550
0000000007d1a744: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007d1a748: 84c0                         test     al, al
0000000007d1a74a: 0f89f9feffff                 jns      0x7d1a649
0000000007d1a750: 498b7640                     mov      rsi, qword ptr [r14 + 0x40]
0000000007d1a754: bf0c000000                   mov      edi, 0xc
0000000007d1a759: 4889da                       mov      rdx, rbx
0000000007d1a75c: e8ef7d2301                   call     0x8f52550
0000000007d1a761: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007d1a765: a900010000                   test     eax, 0x100
0000000007d1a76a: 0f84e4feffff                 je       0x7d1a654
0000000007d1a770: 498b7648                     mov      rsi, qword ptr [r14 + 0x48]
0000000007d1a774: bf0d000000                   mov      edi, 0xd
0000000007d1a779: 4889da                       mov      rdx, rbx
0000000007d1a77c: e8cf7d2301                   call     0x8f52550
0000000007d1a781: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007d1a785: a900020000                   test     eax, 0x200
0000000007d1a78a: 0f84cffeffff                 je       0x7d1a65f
0000000007d1a790: 418b763c                     mov      esi, dword ptr [r14 + 0x3c]
0000000007d1a794: bf0e000000                   mov      edi, 0xe
0000000007d1a799: 4889da                       mov      rdx, rbx
0000000007d1a79c: e8df7b2301                   call     0x8f52380
0000000007d1a7a1: 418b4658                     mov      eax, dword ptr [r14 + 0x58]
0000000007d1a7a5: a900040000                   test     eax, 0x400
0000000007d1a7aa: 0f84bafeffff                 je       0x7d1a66a
0000000007d1a7b0: 418b7650                     mov      esi, dword ptr [r14 + 0x50]
0000000007d1a7b4: bf0f000000                   mov      edi, 0xf
0000000007d1a7b9: 4889da                       mov      rdx, rbx
0000000007d1a7bc: 4883c408                     add      rsp, 8
0000000007d1a7c0: 5b                           pop      rbx
0000000007d1a7c1: 415e                         pop      r14
0000000007d1a7c3: e9b87b2301                   jmp      0x8f52380

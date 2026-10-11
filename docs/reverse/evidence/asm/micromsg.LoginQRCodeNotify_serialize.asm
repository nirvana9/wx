0000000007cca5d0: 4156                         push     r14
0000000007cca5d2: 53                           push     rbx
0000000007cca5d3: 50                           push     rax
0000000007cca5d4: 4889f3                       mov      rbx, rsi
0000000007cca5d7: 4989fe                       mov      r14, rdi
0000000007cca5da: 8b477c                       mov      eax, dword ptr [rdi + 0x7c]
0000000007cca5dd: a801                         test     al, 1
0000000007cca5df: 0f85a1000000                 jne      0x7cca686
0000000007cca5e5: a802                         test     al, 2
0000000007cca5e7: 0f85b6000000                 jne      0x7cca6a3
0000000007cca5ed: a804                         test     al, 4
0000000007cca5ef: 0f85cb000000                 jne      0x7cca6c0
0000000007cca5f5: a808                         test     al, 8
0000000007cca5f7: 0f85e0000000                 jne      0x7cca6dd
0000000007cca5fd: a810                         test     al, 0x10
0000000007cca5ff: 0f85f5000000                 jne      0x7cca6fa
0000000007cca605: a820                         test     al, 0x20
0000000007cca607: 0f850a010000                 jne      0x7cca717
0000000007cca60d: a840                         test     al, 0x40
0000000007cca60f: 0f851f010000                 jne      0x7cca734
0000000007cca615: 84c0                         test     al, al
0000000007cca617: 0f8834010000                 js       0x7cca751
0000000007cca61d: a900010000                   test     eax, 0x100
0000000007cca622: 0f8549010000                 jne      0x7cca771
0000000007cca628: a900020000                   test     eax, 0x200
0000000007cca62d: 0f855e010000                 jne      0x7cca791
0000000007cca633: a900040000                   test     eax, 0x400
0000000007cca638: 0f8573010000                 jne      0x7cca7b1
0000000007cca63e: a900080000                   test     eax, 0x800
0000000007cca643: 0f8588010000                 jne      0x7cca7d1
0000000007cca649: a900100000                   test     eax, 0x1000
0000000007cca64e: 0f859d010000                 jne      0x7cca7f1
0000000007cca654: a900200000                   test     eax, 0x2000
0000000007cca659: 0f85b2010000                 jne      0x7cca811
0000000007cca65f: a900400000                   test     eax, 0x4000
0000000007cca664: 0f85c7010000                 jne      0x7cca831
0000000007cca66a: 6685c0                       test     ax, ax
0000000007cca66d: 0f88dc010000                 js       0x7cca84f
0000000007cca673: a900000100                   test     eax, 0x10000
0000000007cca678: 0f8504020000                 jne      0x7cca882
0000000007cca67e: 4883c408                     add      rsp, 8
0000000007cca682: 5b                           pop      rbx
0000000007cca683: 415e                         pop      r14
0000000007cca685: c3                           ret
0000000007cca686: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cca68a: bf01000000                   mov      edi, 1
0000000007cca68f: 4889da                       mov      rdx, rbx
0000000007cca692: e8b97e2801                   call     0x8f52550
0000000007cca697: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca69b: a802                         test     al, 2
0000000007cca69d: 0f844affffff                 je       0x7cca5ed
0000000007cca6a3: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
0000000007cca6a7: bf02000000                   mov      edi, 2
0000000007cca6ac: 4889da                       mov      rdx, rbx
0000000007cca6af: e8cc7c2801                   call     0x8f52380
0000000007cca6b4: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca6b8: a804                         test     al, 4
0000000007cca6ba: 0f8435ffffff                 je       0x7cca5f5
0000000007cca6c0: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cca6c4: bf03000000                   mov      edi, 3
0000000007cca6c9: 4889da                       mov      rdx, rbx
0000000007cca6cc: e87f7e2801                   call     0x8f52550
0000000007cca6d1: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca6d5: a808                         test     al, 8
0000000007cca6d7: 0f8420ffffff                 je       0x7cca5fd
0000000007cca6dd: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007cca6e1: bf04000000                   mov      edi, 4
0000000007cca6e6: 4889da                       mov      rdx, rbx
0000000007cca6e9: e8627e2801                   call     0x8f52550
0000000007cca6ee: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca6f2: a810                         test     al, 0x10
0000000007cca6f4: 0f840bffffff                 je       0x7cca605
0000000007cca6fa: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007cca6fe: bf05000000                   mov      edi, 5
0000000007cca703: 4889da                       mov      rdx, rbx
0000000007cca706: e8457e2801                   call     0x8f52550
0000000007cca70b: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca70f: a820                         test     al, 0x20
0000000007cca711: 0f84f6feffff                 je       0x7cca60d
0000000007cca717: 418b7624                     mov      esi, dword ptr [r14 + 0x24]
0000000007cca71b: bf06000000                   mov      edi, 6
0000000007cca720: 4889da                       mov      rdx, rbx
0000000007cca723: e8587c2801                   call     0x8f52380
0000000007cca728: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca72c: a840                         test     al, 0x40
0000000007cca72e: 0f84e1feffff                 je       0x7cca615
0000000007cca734: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007cca738: bf07000000                   mov      edi, 7
0000000007cca73d: 4889da                       mov      rdx, rbx
0000000007cca740: e80b7e2801                   call     0x8f52550
0000000007cca745: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca749: 84c0                         test     al, al
0000000007cca74b: 0f89ccfeffff                 jns      0x7cca61d
0000000007cca751: 418b7640                     mov      esi, dword ptr [r14 + 0x40]
0000000007cca755: bf08000000                   mov      edi, 8
0000000007cca75a: 4889da                       mov      rdx, rbx
0000000007cca75d: e81e7c2801                   call     0x8f52380
0000000007cca762: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca766: a900010000                   test     eax, 0x100
0000000007cca76b: 0f84b7feffff                 je       0x7cca628
0000000007cca771: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007cca775: bf09000000                   mov      edi, 9
0000000007cca77a: 4889da                       mov      rdx, rbx
0000000007cca77d: e8ce7d2801                   call     0x8f52550
0000000007cca782: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca786: a900020000                   test     eax, 0x200
0000000007cca78b: 0f84a2feffff                 je       0x7cca633
0000000007cca791: 418b7644                     mov      esi, dword ptr [r14 + 0x44]
0000000007cca795: bf0a000000                   mov      edi, 0xa
0000000007cca79a: 4889da                       mov      rdx, rbx
0000000007cca79d: e8de7b2801                   call     0x8f52380
0000000007cca7a2: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca7a6: a900040000                   test     eax, 0x400
0000000007cca7ab: 0f848dfeffff                 je       0x7cca63e
0000000007cca7b1: 498b7648                     mov      rsi, qword ptr [r14 + 0x48]
0000000007cca7b5: bf0b000000                   mov      edi, 0xb
0000000007cca7ba: 4889da                       mov      rdx, rbx
0000000007cca7bd: e88e7d2801                   call     0x8f52550
0000000007cca7c2: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca7c6: a900080000                   test     eax, 0x800
0000000007cca7cb: 0f8478feffff                 je       0x7cca649
0000000007cca7d1: 418b7658                     mov      esi, dword ptr [r14 + 0x58]
0000000007cca7d5: bf0c000000                   mov      edi, 0xc
0000000007cca7da: 4889da                       mov      rdx, rbx
0000000007cca7dd: e89e7b2801                   call     0x8f52380
0000000007cca7e2: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca7e6: a900100000                   test     eax, 0x1000
0000000007cca7eb: 0f8463feffff                 je       0x7cca654
0000000007cca7f1: 498b7650                     mov      rsi, qword ptr [r14 + 0x50]
0000000007cca7f5: bf0d000000                   mov      edi, 0xd
0000000007cca7fa: 4889da                       mov      rdx, rbx
0000000007cca7fd: e84e7d2801                   call     0x8f52550
0000000007cca802: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca806: a900200000                   test     eax, 0x2000
0000000007cca80b: 0f844efeffff                 je       0x7cca65f
0000000007cca811: 418b765c                     mov      esi, dword ptr [r14 + 0x5c]
0000000007cca815: bf0e000000                   mov      edi, 0xe
0000000007cca81a: 4889da                       mov      rdx, rbx
0000000007cca81d: e85e7b2801                   call     0x8f52380
0000000007cca822: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca826: a900400000                   test     eax, 0x4000
0000000007cca82b: 0f8439feffff                 je       0x7cca66a
0000000007cca831: 498b7660                     mov      rsi, qword ptr [r14 + 0x60]
0000000007cca835: bf0f000000                   mov      edi, 0xf
0000000007cca83a: 4889da                       mov      rdx, rbx
0000000007cca83d: e80e7d2801                   call     0x8f52550
0000000007cca842: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca846: 6685c0                       test     ax, ax
0000000007cca849: 0f8924feffff                 jns      0x7cca673
0000000007cca84f: 498b7668                     mov      rsi, qword ptr [r14 + 0x68]
0000000007cca853: 4885f6                       test     rsi, rsi
0000000007cca856: 750e                         jne      0x7cca866
0000000007cca858: 488d0561140303               lea      rax, [rip + 0x3031461]
0000000007cca85f: 488b00                       mov      rax, qword ptr [rax]
0000000007cca862: 488b7068                     mov      rsi, qword ptr [rax + 0x68]
0000000007cca866: bf10000000                   mov      edi, 0x10
0000000007cca86b: 4889da                       mov      rdx, rbx
0000000007cca86e: e87d7e2801                   call     0x8f526f0
0000000007cca873: 418b467c                     mov      eax, dword ptr [r14 + 0x7c]
0000000007cca877: a900000100                   test     eax, 0x10000
0000000007cca87c: 0f84fcfdffff                 je       0x7cca67e
0000000007cca882: 498b7670                     mov      rsi, qword ptr [r14 + 0x70]
0000000007cca886: 4885f6                       test     rsi, rsi
0000000007cca889: 750e                         jne      0x7cca899
0000000007cca88b: 488d052e140303               lea      rax, [rip + 0x303142e]
0000000007cca892: 488b00                       mov      rax, qword ptr [rax]
0000000007cca895: 488b7070                     mov      rsi, qword ptr [rax + 0x70]
0000000007cca899: bf11000000                   mov      edi, 0x11
0000000007cca89e: 4889da                       mov      rdx, rbx
0000000007cca8a1: 4883c408                     add      rsp, 8
0000000007cca8a5: 5b                           pop      rbx
0000000007cca8a6: 415e                         pop      r14
0000000007cca8a8: e9437e2801                   jmp      0x8f526f0

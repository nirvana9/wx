0000000007d1e4d0: 4156                         push     r14
0000000007d1e4d2: 53                           push     rbx
0000000007d1e4d3: 50                           push     rax
0000000007d1e4d4: 4889f3                       mov      rbx, rsi
0000000007d1e4d7: 4989fe                       mov      r14, rdi
0000000007d1e4da: 8b4744                       mov      eax, dword ptr [rdi + 0x44]
0000000007d1e4dd: a801                         test     al, 1
0000000007d1e4df: 754e                         jne      0x7d1e52f
0000000007d1e4e1: a802                         test     al, 2
0000000007d1e4e3: 7563                         jne      0x7d1e548
0000000007d1e4e5: a804                         test     al, 4
0000000007d1e4e7: 7578                         jne      0x7d1e561
0000000007d1e4e9: a808                         test     al, 8
0000000007d1e4eb: 0f858d000000                 jne      0x7d1e57e
0000000007d1e4f1: a810                         test     al, 0x10
0000000007d1e4f3: 0f85a2000000                 jne      0x7d1e59b
0000000007d1e4f9: a820                         test     al, 0x20
0000000007d1e4fb: 0f85b7000000                 jne      0x7d1e5b8
0000000007d1e501: a840                         test     al, 0x40
0000000007d1e503: 0f85df000000                 jne      0x7d1e5e8
0000000007d1e509: 84c0                         test     al, al
0000000007d1e50b: 0f88f4000000                 js       0x7d1e605
0000000007d1e511: a900010000                   test     eax, 0x100
0000000007d1e516: 0f851c010000                 jne      0x7d1e638
0000000007d1e51c: a900020000                   test     eax, 0x200
0000000007d1e521: 0f8531010000                 jne      0x7d1e658
0000000007d1e527: 4883c408                     add      rsp, 8
0000000007d1e52b: 5b                           pop      rbx
0000000007d1e52c: 415e                         pop      r14
0000000007d1e52e: c3                           ret
0000000007d1e52f: 418b7608                     mov      esi, dword ptr [r14 + 8]
0000000007d1e533: bf01000000                   mov      edi, 1
0000000007d1e538: 4889da                       mov      rdx, rbx
0000000007d1e53b: e8403e2301                   call     0x8f52380
0000000007d1e540: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1e544: a802                         test     al, 2
0000000007d1e546: 749d                         je       0x7d1e4e5
0000000007d1e548: 418b760c                     mov      esi, dword ptr [r14 + 0xc]
0000000007d1e54c: bf02000000                   mov      edi, 2
0000000007d1e551: 4889da                       mov      rdx, rbx
0000000007d1e554: e8273e2301                   call     0x8f52380
0000000007d1e559: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1e55d: a804                         test     al, 4
0000000007d1e55f: 7488                         je       0x7d1e4e9
0000000007d1e561: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
0000000007d1e565: bf03000000                   mov      edi, 3
0000000007d1e56a: 4889da                       mov      rdx, rbx
0000000007d1e56d: e80e3e2301                   call     0x8f52380
0000000007d1e572: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1e576: a808                         test     al, 8
0000000007d1e578: 0f8473ffffff                 je       0x7d1e4f1
0000000007d1e57e: 418b7614                     mov      esi, dword ptr [r14 + 0x14]
0000000007d1e582: bf05000000                   mov      edi, 5
0000000007d1e587: 4889da                       mov      rdx, rbx
0000000007d1e58a: e8f13d2301                   call     0x8f52380
0000000007d1e58f: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1e593: a810                         test     al, 0x10
0000000007d1e595: 0f845effffff                 je       0x7d1e4f9
0000000007d1e59b: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007d1e59f: bf06000000                   mov      edi, 6
0000000007d1e5a4: 4889da                       mov      rdx, rbx
0000000007d1e5a7: e8a43f2301                   call     0x8f52550
0000000007d1e5ac: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1e5b0: a820                         test     al, 0x20
0000000007d1e5b2: 0f8449ffffff                 je       0x7d1e501
0000000007d1e5b8: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007d1e5bc: 4885f6                       test     rsi, rsi
0000000007d1e5bf: 750e                         jne      0x7d1e5cf
0000000007d1e5c1: 488d0500dafd02               lea      rax, [rip + 0x2fdda00]
0000000007d1e5c8: 488b00                       mov      rax, qword ptr [rax]
0000000007d1e5cb: 488b7020                     mov      rsi, qword ptr [rax + 0x20]
0000000007d1e5cf: bf07000000                   mov      edi, 7
0000000007d1e5d4: 4889da                       mov      rdx, rbx
0000000007d1e5d7: e814412301                   call     0x8f526f0
0000000007d1e5dc: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1e5e0: a840                         test     al, 0x40
0000000007d1e5e2: 0f8421ffffff                 je       0x7d1e509
0000000007d1e5e8: 418b7630                     mov      esi, dword ptr [r14 + 0x30]
0000000007d1e5ec: bf08000000                   mov      edi, 8
0000000007d1e5f1: 4889da                       mov      rdx, rbx
0000000007d1e5f4: e8873d2301                   call     0x8f52380
0000000007d1e5f9: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1e5fd: 84c0                         test     al, al
0000000007d1e5ff: 0f890cffffff                 jns      0x7d1e511
0000000007d1e605: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007d1e609: 4885f6                       test     rsi, rsi
0000000007d1e60c: 750e                         jne      0x7d1e61c
0000000007d1e60e: 488d05b3d9fd02               lea      rax, [rip + 0x2fdd9b3]
0000000007d1e615: 488b00                       mov      rax, qword ptr [rax]
0000000007d1e618: 488b7028                     mov      rsi, qword ptr [rax + 0x28]
0000000007d1e61c: bf09000000                   mov      edi, 9
0000000007d1e621: 4889da                       mov      rdx, rbx
0000000007d1e624: e8c7402301                   call     0x8f526f0
0000000007d1e629: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1e62d: a900010000                   test     eax, 0x100
0000000007d1e632: 0f84e4feffff                 je       0x7d1e51c
0000000007d1e638: 418b7634                     mov      esi, dword ptr [r14 + 0x34]
0000000007d1e63c: bf0a000000                   mov      edi, 0xa
0000000007d1e641: 4889da                       mov      rdx, rbx
0000000007d1e644: e8373d2301                   call     0x8f52380
0000000007d1e649: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1e64d: a900020000                   test     eax, 0x200
0000000007d1e652: 0f84cffeffff                 je       0x7d1e527
0000000007d1e658: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007d1e65c: bf0b000000                   mov      edi, 0xb
0000000007d1e661: 4889da                       mov      rdx, rbx
0000000007d1e664: 4883c408                     add      rsp, 8
0000000007d1e668: 5b                           pop      rbx
0000000007d1e669: 415e                         pop      r14
0000000007d1e66b: e9403d2301                   jmp      0x8f523b0

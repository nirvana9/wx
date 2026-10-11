0000000007d12280: 4156                         push     r14
0000000007d12282: 53                           push     rbx
0000000007d12283: 50                           push     rax
0000000007d12284: 4889f3                       mov      rbx, rsi
0000000007d12287: 4989fe                       mov      r14, rdi
0000000007d1228a: 8b4750                       mov      eax, dword ptr [rdi + 0x50]
0000000007d1228d: a801                         test     al, 1
0000000007d1228f: 7561                         jne      0x7d122f2
0000000007d12291: a802                         test     al, 2
0000000007d12293: 0f8589000000                 jne      0x7d12322
0000000007d12299: a804                         test     al, 4
0000000007d1229b: 0f859e000000                 jne      0x7d1233f
0000000007d122a1: a808                         test     al, 8
0000000007d122a3: 0f85b3000000                 jne      0x7d1235c
0000000007d122a9: a810                         test     al, 0x10
0000000007d122ab: 0f85c8000000                 jne      0x7d12379
0000000007d122b1: a820                         test     al, 0x20
0000000007d122b3: 0f85dd000000                 jne      0x7d12396
0000000007d122b9: a840                         test     al, 0x40
0000000007d122bb: 0f85f2000000                 jne      0x7d123b3
0000000007d122c1: 84c0                         test     al, al
0000000007d122c3: 0f8807010000                 js       0x7d123d0
0000000007d122c9: a900010000                   test     eax, 0x100
0000000007d122ce: 0f851c010000                 jne      0x7d123f0
0000000007d122d4: a900020000                   test     eax, 0x200
0000000007d122d9: 0f8544010000                 jne      0x7d12423
0000000007d122df: a900040000                   test     eax, 0x400
0000000007d122e4: 0f8559010000                 jne      0x7d12443
0000000007d122ea: 4883c408                     add      rsp, 8
0000000007d122ee: 5b                           pop      rbx
0000000007d122ef: 415e                         pop      r14
0000000007d122f1: c3                           ret
0000000007d122f2: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007d122f6: 4885f6                       test     rsi, rsi
0000000007d122f9: 750e                         jne      0x7d12309
0000000007d122fb: 488d055e9cfe02               lea      rax, [rip + 0x2fe9c5e]
0000000007d12302: 488b00                       mov      rax, qword ptr [rax]
0000000007d12305: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007d12309: bf01000000                   mov      edi, 1
0000000007d1230e: 4889da                       mov      rdx, rbx
0000000007d12311: e8da032401                   call     0x8f526f0
0000000007d12316: 418b4650                     mov      eax, dword ptr [r14 + 0x50]
0000000007d1231a: a802                         test     al, 2
0000000007d1231c: 0f8477ffffff                 je       0x7d12299
0000000007d12322: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007d12326: bf02000000                   mov      edi, 2
0000000007d1232b: 4889da                       mov      rdx, rbx
0000000007d1232e: e81d022401                   call     0x8f52550
0000000007d12333: 418b4650                     mov      eax, dword ptr [r14 + 0x50]
0000000007d12337: a804                         test     al, 4
0000000007d12339: 0f8462ffffff                 je       0x7d122a1
0000000007d1233f: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
0000000007d12343: bf03000000                   mov      edi, 3
0000000007d12348: 4889da                       mov      rdx, rbx
0000000007d1234b: e830002401                   call     0x8f52380
0000000007d12350: 418b4650                     mov      eax, dword ptr [r14 + 0x50]
0000000007d12354: a808                         test     al, 8
0000000007d12356: 0f844dffffff                 je       0x7d122a9
0000000007d1235c: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007d12360: bf04000000                   mov      edi, 4
0000000007d12365: 4889da                       mov      rdx, rbx
0000000007d12368: e8e3012401                   call     0x8f52550
0000000007d1236d: 418b4650                     mov      eax, dword ptr [r14 + 0x50]
0000000007d12371: a810                         test     al, 0x10
0000000007d12373: 0f8438ffffff                 je       0x7d122b1
0000000007d12379: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007d1237d: bf05000000                   mov      edi, 5
0000000007d12382: 4889da                       mov      rdx, rbx
0000000007d12385: e8c6012401                   call     0x8f52550
0000000007d1238a: 418b4650                     mov      eax, dword ptr [r14 + 0x50]
0000000007d1238e: a820                         test     al, 0x20
0000000007d12390: 0f8423ffffff                 je       0x7d122b9
0000000007d12396: 418b7624                     mov      esi, dword ptr [r14 + 0x24]
0000000007d1239a: bf06000000                   mov      edi, 6
0000000007d1239f: 4889da                       mov      rdx, rbx
0000000007d123a2: e8d9ff2301                   call     0x8f52380
0000000007d123a7: 418b4650                     mov      eax, dword ptr [r14 + 0x50]
0000000007d123ab: a840                         test     al, 0x40
0000000007d123ad: 0f840effffff                 je       0x7d122c1
0000000007d123b3: 418b7630                     mov      esi, dword ptr [r14 + 0x30]
0000000007d123b7: bf07000000                   mov      edi, 7
0000000007d123bc: 4889da                       mov      rdx, rbx
0000000007d123bf: e8bcff2301                   call     0x8f52380
0000000007d123c4: 418b4650                     mov      eax, dword ptr [r14 + 0x50]
0000000007d123c8: 84c0                         test     al, al
0000000007d123ca: 0f89f9feffff                 jns      0x7d122c9
0000000007d123d0: 418b7634                     mov      esi, dword ptr [r14 + 0x34]
0000000007d123d4: bf08000000                   mov      edi, 8
0000000007d123d9: 4889da                       mov      rdx, rbx
0000000007d123dc: e89fff2301                   call     0x8f52380
0000000007d123e1: 418b4650                     mov      eax, dword ptr [r14 + 0x50]
0000000007d123e5: a900010000                   test     eax, 0x100
0000000007d123ea: 0f84e4feffff                 je       0x7d122d4
0000000007d123f0: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007d123f4: 4885f6                       test     rsi, rsi
0000000007d123f7: 750e                         jne      0x7d12407
0000000007d123f9: 488d05609bfe02               lea      rax, [rip + 0x2fe9b60]
0000000007d12400: 488b00                       mov      rax, qword ptr [rax]
0000000007d12403: 488b7038                     mov      rsi, qword ptr [rax + 0x38]
0000000007d12407: bf09000000                   mov      edi, 9
0000000007d1240c: 4889da                       mov      rdx, rbx
0000000007d1240f: e8dc022401                   call     0x8f526f0
0000000007d12414: 418b4650                     mov      eax, dword ptr [r14 + 0x50]
0000000007d12418: a900020000                   test     eax, 0x200
0000000007d1241d: 0f84bcfeffff                 je       0x7d122df
0000000007d12423: 418b7648                     mov      esi, dword ptr [r14 + 0x48]
0000000007d12427: bf0a000000                   mov      edi, 0xa
0000000007d1242c: 4889da                       mov      rdx, rbx
0000000007d1242f: e84cff2301                   call     0x8f52380
0000000007d12434: 418b4650                     mov      eax, dword ptr [r14 + 0x50]
0000000007d12438: a900040000                   test     eax, 0x400
0000000007d1243d: 0f84a7feffff                 je       0x7d122ea
0000000007d12443: 498b7640                     mov      rsi, qword ptr [r14 + 0x40]
0000000007d12447: bf0b000000                   mov      edi, 0xb
0000000007d1244c: 4889da                       mov      rdx, rbx
0000000007d1244f: 4883c408                     add      rsp, 8
0000000007d12453: 5b                           pop      rbx
0000000007d12454: 415e                         pop      r14
0000000007d12456: e9f5002401                   jmp      0x8f52550

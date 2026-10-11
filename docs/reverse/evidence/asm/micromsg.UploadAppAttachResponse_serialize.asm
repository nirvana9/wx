0000000007d13330: 4156                         push     r14
0000000007d13332: 53                           push     rbx
0000000007d13333: 50                           push     rax
0000000007d13334: 4889f3                       mov      rbx, rsi
0000000007d13337: 4989fe                       mov      r14, rdi
0000000007d1333a: 8b4744                       mov      eax, dword ptr [rdi + 0x44]
0000000007d1333d: a801                         test     al, 1
0000000007d1333f: 7547                         jne      0x7d13388
0000000007d13341: a802                         test     al, 2
0000000007d13343: 756f                         jne      0x7d133b4
0000000007d13345: a804                         test     al, 4
0000000007d13347: 0f8580000000                 jne      0x7d133cd
0000000007d1334d: a808                         test     al, 8
0000000007d1334f: 0f8595000000                 jne      0x7d133ea
0000000007d13355: a810                         test     al, 0x10
0000000007d13357: 0f85aa000000                 jne      0x7d13407
0000000007d1335d: a820                         test     al, 0x20
0000000007d1335f: 0f85bf000000                 jne      0x7d13424
0000000007d13365: a840                         test     al, 0x40
0000000007d13367: 0f85d4000000                 jne      0x7d13441
0000000007d1336d: 84c0                         test     al, al
0000000007d1336f: 0f88e9000000                 js       0x7d1345e
0000000007d13375: a900010000                   test     eax, 0x100
0000000007d1337a: 0f85fe000000                 jne      0x7d1347e
0000000007d13380: 4883c408                     add      rsp, 8
0000000007d13384: 5b                           pop      rbx
0000000007d13385: 415e                         pop      r14
0000000007d13387: c3                           ret
0000000007d13388: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007d1338c: 4885f6                       test     rsi, rsi
0000000007d1338f: 750e                         jne      0x7d1339f
0000000007d13391: 488d05d08bfe02               lea      rax, [rip + 0x2fe8bd0]
0000000007d13398: 488b00                       mov      rax, qword ptr [rax]
0000000007d1339b: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007d1339f: bf01000000                   mov      edi, 1
0000000007d133a4: 4889da                       mov      rdx, rbx
0000000007d133a7: e844f32301                   call     0x8f526f0
0000000007d133ac: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d133b0: a802                         test     al, 2
0000000007d133b2: 7491                         je       0x7d13345
0000000007d133b4: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007d133b8: bf02000000                   mov      edi, 2
0000000007d133bd: 4889da                       mov      rdx, rbx
0000000007d133c0: e88bf12301                   call     0x8f52550
0000000007d133c5: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d133c9: a804                         test     al, 4
0000000007d133cb: 7480                         je       0x7d1334d
0000000007d133cd: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007d133d1: bf03000000                   mov      edi, 3
0000000007d133d6: 4889da                       mov      rdx, rbx
0000000007d133d9: e872f12301                   call     0x8f52550
0000000007d133de: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d133e2: a808                         test     al, 8
0000000007d133e4: 0f846bffffff                 je       0x7d13355
0000000007d133ea: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007d133ee: bf04000000                   mov      edi, 4
0000000007d133f3: 4889da                       mov      rdx, rbx
0000000007d133f6: e855f12301                   call     0x8f52550
0000000007d133fb: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d133ff: a810                         test     al, 0x10
0000000007d13401: 0f8456ffffff                 je       0x7d1335d
0000000007d13407: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007d1340b: bf05000000                   mov      edi, 5
0000000007d13410: 4889da                       mov      rdx, rbx
0000000007d13413: e838f12301                   call     0x8f52550
0000000007d13418: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d1341c: a820                         test     al, 0x20
0000000007d1341e: 0f8441ffffff                 je       0x7d13365
0000000007d13424: 418b7630                     mov      esi, dword ptr [r14 + 0x30]
0000000007d13428: bf06000000                   mov      edi, 6
0000000007d1342d: 4889da                       mov      rdx, rbx
0000000007d13430: e84bef2301                   call     0x8f52380
0000000007d13435: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d13439: a840                         test     al, 0x40
0000000007d1343b: 0f842cffffff                 je       0x7d1336d
0000000007d13441: 418b7634                     mov      esi, dword ptr [r14 + 0x34]
0000000007d13445: bf07000000                   mov      edi, 7
0000000007d1344a: 4889da                       mov      rdx, rbx
0000000007d1344d: e82eef2301                   call     0x8f52380
0000000007d13452: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d13456: 84c0                         test     al, al
0000000007d13458: 0f8917ffffff                 jns      0x7d13375
0000000007d1345e: 418b7638                     mov      esi, dword ptr [r14 + 0x38]
0000000007d13462: bf08000000                   mov      edi, 8
0000000007d13467: 4889da                       mov      rdx, rbx
0000000007d1346a: e811ef2301                   call     0x8f52380
0000000007d1346f: 418b4644                     mov      eax, dword ptr [r14 + 0x44]
0000000007d13473: a900010000                   test     eax, 0x100
0000000007d13478: 0f8402ffffff                 je       0x7d13380
0000000007d1347e: 418b763c                     mov      esi, dword ptr [r14 + 0x3c]
0000000007d13482: bf09000000                   mov      edi, 9
0000000007d13487: 4889da                       mov      rdx, rbx
0000000007d1348a: 4883c408                     add      rsp, 8
0000000007d1348e: 5b                           pop      rbx
0000000007d1348f: 415e                         pop      r14
0000000007d13491: e9eaee2301                   jmp      0x8f52380

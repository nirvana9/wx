00000000079ed170: 4156                         push     r14
00000000079ed172: 53                           push     rbx
00000000079ed173: 50                           push     rax
00000000079ed174: 4889f3                       mov      rbx, rsi
00000000079ed177: 4989fe                       mov      r14, rdi
00000000079ed17a: 8b4734                       mov      eax, dword ptr [rdi + 0x34]
00000000079ed17d: a801                         test     al, 1
00000000079ed17f: 752c                         jne      0x79ed1ad
00000000079ed181: a802                         test     al, 2
00000000079ed183: 7554                         jne      0x79ed1d9
00000000079ed185: a804                         test     al, 4
00000000079ed187: 7569                         jne      0x79ed1f2
00000000079ed189: a808                         test     al, 8
00000000079ed18b: 757e                         jne      0x79ed20b
00000000079ed18d: a810                         test     al, 0x10
00000000079ed18f: 0f8593000000                 jne      0x79ed228
00000000079ed195: a820                         test     al, 0x20
00000000079ed197: 0f85a8000000                 jne      0x79ed245
00000000079ed19d: a840                         test     al, 0x40
00000000079ed19f: 0f85bd000000                 jne      0x79ed262
00000000079ed1a5: 4883c408                     add      rsp, 8
00000000079ed1a9: 5b                           pop      rbx
00000000079ed1aa: 415e                         pop      r14
00000000079ed1ac: c3                           ret
00000000079ed1ad: 498b7608                     mov      rsi, qword ptr [r14 + 8]
00000000079ed1b1: 4885f6                       test     rsi, rsi
00000000079ed1b4: 750e                         jne      0x79ed1c4
00000000079ed1b6: 488d0513cf3003               lea      rax, [rip + 0x330cf13]
00000000079ed1bd: 488b00                       mov      rax, qword ptr [rax]
00000000079ed1c0: 488b7008                     mov      rsi, qword ptr [rax + 8]
00000000079ed1c4: bf01000000                   mov      edi, 1
00000000079ed1c9: 4889da                       mov      rdx, rbx
00000000079ed1cc: e81f555601                   call     0x8f526f0
00000000079ed1d1: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ed1d5: a802                         test     al, 2
00000000079ed1d7: 74ac                         je       0x79ed185
00000000079ed1d9: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
00000000079ed1dd: bf02000000                   mov      edi, 2
00000000079ed1e2: 4889da                       mov      rdx, rbx
00000000079ed1e5: e866535601                   call     0x8f52550
00000000079ed1ea: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ed1ee: a804                         test     al, 4
00000000079ed1f0: 7497                         je       0x79ed189
00000000079ed1f2: 418b7618                     mov      esi, dword ptr [r14 + 0x18]
00000000079ed1f6: bf03000000                   mov      edi, 3
00000000079ed1fb: 4889da                       mov      rdx, rbx
00000000079ed1fe: e87d515601                   call     0x8f52380
00000000079ed203: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ed207: a808                         test     al, 8
00000000079ed209: 7482                         je       0x79ed18d
00000000079ed20b: 418b761c                     mov      esi, dword ptr [r14 + 0x1c]
00000000079ed20f: bf04000000                   mov      edi, 4
00000000079ed214: 4889da                       mov      rdx, rbx
00000000079ed217: e864515601                   call     0x8f52380
00000000079ed21c: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ed220: a810                         test     al, 0x10
00000000079ed222: 0f846dffffff                 je       0x79ed195
00000000079ed228: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
00000000079ed22c: bf05000000                   mov      edi, 5
00000000079ed231: 4889da                       mov      rdx, rbx
00000000079ed234: e847515601                   call     0x8f52380
00000000079ed239: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ed23d: a820                         test     al, 0x20
00000000079ed23f: 0f8458ffffff                 je       0x79ed19d
00000000079ed245: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
00000000079ed249: bf06000000                   mov      edi, 6
00000000079ed24e: 4889da                       mov      rdx, rbx
00000000079ed251: e8fa525601                   call     0x8f52550
00000000079ed256: 418b4634                     mov      eax, dword ptr [r14 + 0x34]
00000000079ed25a: a840                         test     al, 0x40
00000000079ed25c: 0f8443ffffff                 je       0x79ed1a5
00000000079ed262: 418b762c                     mov      esi, dword ptr [r14 + 0x2c]
00000000079ed266: bf07000000                   mov      edi, 7
00000000079ed26b: 4889da                       mov      rdx, rbx
00000000079ed26e: 4883c408                     add      rsp, 8
00000000079ed272: 5b                           pop      rbx
00000000079ed273: 415e                         pop      r14
00000000079ed275: e906515601                   jmp      0x8f52380

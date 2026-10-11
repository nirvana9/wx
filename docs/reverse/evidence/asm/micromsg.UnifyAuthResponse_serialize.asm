0000000007ce8750: 4156                         push     r14
0000000007ce8752: 53                           push     rbx
0000000007ce8753: 50                           push     rax
0000000007ce8754: 4889f3                       mov      rbx, rsi
0000000007ce8757: 4989fe                       mov      r14, rdi
0000000007ce875a: 8b4738                       mov      eax, dword ptr [rdi + 0x38]
0000000007ce875d: a801                         test     al, 1
0000000007ce875f: 7528                         jne      0x7ce8789
0000000007ce8761: a802                         test     al, 2
0000000007ce8763: 7550                         jne      0x7ce87b5
0000000007ce8765: a804                         test     al, 4
0000000007ce8767: 7565                         jne      0x7ce87ce
0000000007ce8769: a808                         test     al, 8
0000000007ce876b: 0f858d000000                 jne      0x7ce87fe
0000000007ce8771: a810                         test     al, 0x10
0000000007ce8773: 0f85b5000000                 jne      0x7ce882e
0000000007ce8779: a820                         test     al, 0x20
0000000007ce877b: 0f85dd000000                 jne      0x7ce885e
0000000007ce8781: 4883c408                     add      rsp, 8
0000000007ce8785: 5b                           pop      rbx
0000000007ce8786: 415e                         pop      r14
0000000007ce8788: c3                           ret
0000000007ce8789: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007ce878d: 4885f6                       test     rsi, rsi
0000000007ce8790: 750e                         jne      0x7ce87a0
0000000007ce8792: 488d0557360103               lea      rax, [rip + 0x3013657]
0000000007ce8799: 488b00                       mov      rax, qword ptr [rax]
0000000007ce879c: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007ce87a0: bf01000000                   mov      edi, 1
0000000007ce87a5: 4889da                       mov      rdx, rbx
0000000007ce87a8: e8439f2601                   call     0x8f526f0
0000000007ce87ad: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007ce87b1: a802                         test     al, 2
0000000007ce87b3: 74b0                         je       0x7ce8765
0000000007ce87b5: 418b7630                     mov      esi, dword ptr [r14 + 0x30]
0000000007ce87b9: bf02000000                   mov      edi, 2
0000000007ce87be: 4889da                       mov      rdx, rbx
0000000007ce87c1: e8ba9b2601                   call     0x8f52380
0000000007ce87c6: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007ce87ca: a804                         test     al, 4
0000000007ce87cc: 749b                         je       0x7ce8769
0000000007ce87ce: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007ce87d2: 4885f6                       test     rsi, rsi
0000000007ce87d5: 750e                         jne      0x7ce87e5
0000000007ce87d7: 488d0512360103               lea      rax, [rip + 0x3013612]
0000000007ce87de: 488b00                       mov      rax, qword ptr [rax]
0000000007ce87e1: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007ce87e5: bf03000000                   mov      edi, 3
0000000007ce87ea: 4889da                       mov      rdx, rbx
0000000007ce87ed: e8fe9e2601                   call     0x8f526f0
0000000007ce87f2: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007ce87f6: a808                         test     al, 8
0000000007ce87f8: 0f8473ffffff                 je       0x7ce8771
0000000007ce87fe: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007ce8802: 4885f6                       test     rsi, rsi
0000000007ce8805: 750e                         jne      0x7ce8815
0000000007ce8807: 488d05e2350103               lea      rax, [rip + 0x30135e2]
0000000007ce880e: 488b00                       mov      rax, qword ptr [rax]
0000000007ce8811: 488b7018                     mov      rsi, qword ptr [rax + 0x18]
0000000007ce8815: bf04000000                   mov      edi, 4
0000000007ce881a: 4889da                       mov      rdx, rbx
0000000007ce881d: e8ce9e2601                   call     0x8f526f0
0000000007ce8822: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007ce8826: a810                         test     al, 0x10
0000000007ce8828: 0f844bffffff                 je       0x7ce8779
0000000007ce882e: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007ce8832: 4885f6                       test     rsi, rsi
0000000007ce8835: 750e                         jne      0x7ce8845
0000000007ce8837: 488d05b2350103               lea      rax, [rip + 0x30135b2]
0000000007ce883e: 488b00                       mov      rax, qword ptr [rax]
0000000007ce8841: 488b7020                     mov      rsi, qword ptr [rax + 0x20]
0000000007ce8845: bf05000000                   mov      edi, 5
0000000007ce884a: 4889da                       mov      rdx, rbx
0000000007ce884d: e89e9e2601                   call     0x8f526f0
0000000007ce8852: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007ce8856: a820                         test     al, 0x20
0000000007ce8858: 0f8423ffffff                 je       0x7ce8781
0000000007ce885e: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007ce8862: 4885f6                       test     rsi, rsi
0000000007ce8865: 750e                         jne      0x7ce8875
0000000007ce8867: 488d0582350103               lea      rax, [rip + 0x3013582]
0000000007ce886e: 488b00                       mov      rax, qword ptr [rax]
0000000007ce8871: 488b7028                     mov      rsi, qword ptr [rax + 0x28]
0000000007ce8875: bf06000000                   mov      edi, 6
0000000007ce887a: 4889da                       mov      rdx, rbx
0000000007ce887d: 4883c408                     add      rsp, 8
0000000007ce8881: 5b                           pop      rbx
0000000007ce8882: 415e                         pop      r14
0000000007ce8884: e9679e2601                   jmp      0x8f526f0

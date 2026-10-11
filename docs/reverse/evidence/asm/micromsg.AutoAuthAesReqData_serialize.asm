0000000007cde4e0: 4156                         push     r14
0000000007cde4e2: 53                           push     rbx
0000000007cde4e3: 50                           push     rax
0000000007cde4e4: 4889f3                       mov      rbx, rsi
0000000007cde4e7: 4989fe                       mov      r14, rdi
0000000007cde4ea: 8b87a0000000                 mov      eax, dword ptr [rdi + 0xa0]
0000000007cde4f0: a801                         test     al, 1
0000000007cde4f2: 0f85c2000000                 jne      0x7cde5ba
0000000007cde4f8: a802                         test     al, 2
0000000007cde4fa: 0f85ed000000                 jne      0x7cde5ed
0000000007cde500: a804                         test     al, 4
0000000007cde502: 0f8518010000                 jne      0x7cde620
0000000007cde508: a808                         test     al, 8
0000000007cde50a: 0f8543010000                 jne      0x7cde653
0000000007cde510: a810                         test     al, 0x10
0000000007cde512: 0f855b010000                 jne      0x7cde673
0000000007cde518: a820                         test     al, 0x20
0000000007cde51a: 0f8573010000                 jne      0x7cde693
0000000007cde520: a840                         test     al, 0x40
0000000007cde522: 0f858b010000                 jne      0x7cde6b3
0000000007cde528: 84c0                         test     al, al
0000000007cde52a: 0f88a3010000                 js       0x7cde6d3
0000000007cde530: a900010000                   test     eax, 0x100
0000000007cde535: 0f85bb010000                 jne      0x7cde6f6
0000000007cde53b: a900020000                   test     eax, 0x200
0000000007cde540: 0f85d3010000                 jne      0x7cde719
0000000007cde546: a900040000                   test     eax, 0x400
0000000007cde54b: 0f85eb010000                 jne      0x7cde73c
0000000007cde551: a900080000                   test     eax, 0x800
0000000007cde556: 0f8503020000                 jne      0x7cde75f
0000000007cde55c: a900100000                   test     eax, 0x1000
0000000007cde561: 0f851b020000                 jne      0x7cde782
0000000007cde567: a900200000                   test     eax, 0x2000
0000000007cde56c: 0f8533020000                 jne      0x7cde7a5
0000000007cde572: a900400000                   test     eax, 0x4000
0000000007cde577: 0f855e020000                 jne      0x7cde7db
0000000007cde57d: 6685c0                       test     ax, ax
0000000007cde580: 0f8889020000                 js       0x7cde80f
0000000007cde586: a900000100                   test     eax, 0x10000
0000000007cde58b: 0f85a1020000                 jne      0x7cde832
0000000007cde591: a900000200                   test     eax, 0x20000
0000000007cde596: 0f85bc020000                 jne      0x7cde858
0000000007cde59c: a900000400                   test     eax, 0x40000
0000000007cde5a1: 0f85ed020000                 jne      0x7cde894
0000000007cde5a7: a900000800                   test     eax, 0x80000
0000000007cde5ac: 0f8508030000                 jne      0x7cde8ba
0000000007cde5b2: 4883c408                     add      rsp, 8
0000000007cde5b6: 5b                           pop      rbx
0000000007cde5b7: 415e                         pop      r14
0000000007cde5b9: c3                           ret
0000000007cde5ba: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cde5be: 4885f6                       test     rsi, rsi
0000000007cde5c1: 750e                         jne      0x7cde5d1
0000000007cde5c3: 488d05ded70103               lea      rax, [rip + 0x301d7de]
0000000007cde5ca: 488b00                       mov      rax, qword ptr [rax]
0000000007cde5cd: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cde5d1: bf01000000                   mov      edi, 1
0000000007cde5d6: 4889da                       mov      rdx, rbx
0000000007cde5d9: e812412701                   call     0x8f526f0
0000000007cde5de: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde5e5: a802                         test     al, 2
0000000007cde5e7: 0f8413ffffff                 je       0x7cde500
0000000007cde5ed: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cde5f1: 4885f6                       test     rsi, rsi
0000000007cde5f4: 750e                         jne      0x7cde604
0000000007cde5f6: 488d05abd70103               lea      rax, [rip + 0x301d7ab]
0000000007cde5fd: 488b00                       mov      rax, qword ptr [rax]
0000000007cde600: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cde604: bf02000000                   mov      edi, 2
0000000007cde609: 4889da                       mov      rdx, rbx
0000000007cde60c: e8df402701                   call     0x8f526f0
0000000007cde611: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde618: a804                         test     al, 4
0000000007cde61a: 0f84e8feffff                 je       0x7cde508
0000000007cde620: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007cde624: 4885f6                       test     rsi, rsi
0000000007cde627: 750e                         jne      0x7cde637
0000000007cde629: 488d0578d70103               lea      rax, [rip + 0x301d778]
0000000007cde630: 488b00                       mov      rax, qword ptr [rax]
0000000007cde633: 488b7018                     mov      rsi, qword ptr [rax + 0x18]
0000000007cde637: bf03000000                   mov      edi, 3
0000000007cde63c: 4889da                       mov      rdx, rbx
0000000007cde63f: e8ac402701                   call     0x8f526f0
0000000007cde644: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde64b: a808                         test     al, 8
0000000007cde64d: 0f84bdfeffff                 je       0x7cde510
0000000007cde653: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007cde657: bf04000000                   mov      edi, 4
0000000007cde65c: 4889da                       mov      rdx, rbx
0000000007cde65f: e8ec3e2701                   call     0x8f52550
0000000007cde664: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde66b: a810                         test     al, 0x10
0000000007cde66d: 0f84a5feffff                 je       0x7cde518
0000000007cde673: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007cde677: bf05000000                   mov      edi, 5
0000000007cde67c: 4889da                       mov      rdx, rbx
0000000007cde67f: e8cc3e2701                   call     0x8f52550
0000000007cde684: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde68b: a820                         test     al, 0x20
0000000007cde68d: 0f848dfeffff                 je       0x7cde520
0000000007cde693: 418b7648                     mov      esi, dword ptr [r14 + 0x48]
0000000007cde697: bf06000000                   mov      edi, 6
0000000007cde69c: 4889da                       mov      rdx, rbx
0000000007cde69f: e8dc3c2701                   call     0x8f52380
0000000007cde6a4: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde6ab: a840                         test     al, 0x40
0000000007cde6ad: 0f8475feffff                 je       0x7cde528
0000000007cde6b3: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007cde6b7: bf07000000                   mov      edi, 7
0000000007cde6bc: 4889da                       mov      rdx, rbx
0000000007cde6bf: e88c3e2701                   call     0x8f52550
0000000007cde6c4: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde6cb: 84c0                         test     al, al
0000000007cde6cd: 0f895dfeffff                 jns      0x7cde530
0000000007cde6d3: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007cde6d7: bf08000000                   mov      edi, 8
0000000007cde6dc: 4889da                       mov      rdx, rbx
0000000007cde6df: e86c3e2701                   call     0x8f52550
0000000007cde6e4: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde6eb: a900010000                   test     eax, 0x100
0000000007cde6f0: 0f8445feffff                 je       0x7cde53b
0000000007cde6f6: 498b7640                     mov      rsi, qword ptr [r14 + 0x40]
0000000007cde6fa: bf09000000                   mov      edi, 9
0000000007cde6ff: 4889da                       mov      rdx, rbx
0000000007cde702: e8493e2701                   call     0x8f52550
0000000007cde707: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde70e: a900020000                   test     eax, 0x200
0000000007cde713: 0f842dfeffff                 je       0x7cde546
0000000007cde719: 498b7650                     mov      rsi, qword ptr [r14 + 0x50]
0000000007cde71d: bf0a000000                   mov      edi, 0xa
0000000007cde722: 4889da                       mov      rdx, rbx
0000000007cde725: e8263e2701                   call     0x8f52550
0000000007cde72a: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde731: a900040000                   test     eax, 0x400
0000000007cde736: 0f8415feffff                 je       0x7cde551
0000000007cde73c: 498b7658                     mov      rsi, qword ptr [r14 + 0x58]
0000000007cde740: bf0b000000                   mov      edi, 0xb
0000000007cde745: 4889da                       mov      rdx, rbx
0000000007cde748: e8033e2701                   call     0x8f52550
0000000007cde74d: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde754: a900080000                   test     eax, 0x800
0000000007cde759: 0f84fdfdffff                 je       0x7cde55c
0000000007cde75f: 498b7660                     mov      rsi, qword ptr [r14 + 0x60]
0000000007cde763: bf0c000000                   mov      edi, 0xc
0000000007cde768: 4889da                       mov      rdx, rbx
0000000007cde76b: e8e03d2701                   call     0x8f52550
0000000007cde770: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde777: a900100000                   test     eax, 0x1000
0000000007cde77c: 0f84e5fdffff                 je       0x7cde567
0000000007cde782: 418b764c                     mov      esi, dword ptr [r14 + 0x4c]
0000000007cde786: bf0d000000                   mov      edi, 0xd
0000000007cde78b: 4889da                       mov      rdx, rbx
0000000007cde78e: e87d3b2701                   call     0x8f52310
0000000007cde793: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde79a: a900200000                   test     eax, 0x2000
0000000007cde79f: 0f84cdfdffff                 je       0x7cde572
0000000007cde7a5: 498b7668                     mov      rsi, qword ptr [r14 + 0x68]
0000000007cde7a9: 4885f6                       test     rsi, rsi
0000000007cde7ac: 750e                         jne      0x7cde7bc
0000000007cde7ae: 488d05f3d50103               lea      rax, [rip + 0x301d5f3]
0000000007cde7b5: 488b00                       mov      rax, qword ptr [rax]
0000000007cde7b8: 488b7068                     mov      rsi, qword ptr [rax + 0x68]
0000000007cde7bc: bf0e000000                   mov      edi, 0xe
0000000007cde7c1: 4889da                       mov      rdx, rbx
0000000007cde7c4: e8273f2701                   call     0x8f526f0
0000000007cde7c9: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde7d0: a900400000                   test     eax, 0x4000
0000000007cde7d5: 0f84a2fdffff                 je       0x7cde57d
0000000007cde7db: 498b7670                     mov      rsi, qword ptr [r14 + 0x70]
0000000007cde7df: 4885f6                       test     rsi, rsi
0000000007cde7e2: 750e                         jne      0x7cde7f2
0000000007cde7e4: 488d05bdd50103               lea      rax, [rip + 0x301d5bd]
0000000007cde7eb: 488b00                       mov      rax, qword ptr [rax]
0000000007cde7ee: 488b7070                     mov      rsi, qword ptr [rax + 0x70]
0000000007cde7f2: bf0f000000                   mov      edi, 0xf
0000000007cde7f7: 4889da                       mov      rdx, rbx
0000000007cde7fa: e8f13e2701                   call     0x8f526f0
0000000007cde7ff: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde806: 6685c0                       test     ax, ax
0000000007cde809: 0f8977fdffff                 jns      0x7cde586
0000000007cde80f: 498b7678                     mov      rsi, qword ptr [r14 + 0x78]
0000000007cde813: bf10000000                   mov      edi, 0x10
0000000007cde818: 4889da                       mov      rdx, rbx
0000000007cde81b: e8303d2701                   call     0x8f52550
0000000007cde820: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde827: a900000100                   test     eax, 0x10000
0000000007cde82c: 0f845ffdffff                 je       0x7cde591
0000000007cde832: 498bb680000000               mov      rsi, qword ptr [r14 + 0x80]
0000000007cde839: bf11000000                   mov      edi, 0x11
0000000007cde83e: 4889da                       mov      rdx, rbx
0000000007cde841: e80a3d2701                   call     0x8f52550
0000000007cde846: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde84d: a900000200                   test     eax, 0x20000
0000000007cde852: 0f8444fdffff                 je       0x7cde59c
0000000007cde858: 498bb688000000               mov      rsi, qword ptr [r14 + 0x88]
0000000007cde85f: 4885f6                       test     rsi, rsi
0000000007cde862: 7511                         jne      0x7cde875
0000000007cde864: 488d053dd50103               lea      rax, [rip + 0x301d53d]
0000000007cde86b: 488b00                       mov      rax, qword ptr [rax]
0000000007cde86e: 488bb088000000               mov      rsi, qword ptr [rax + 0x88]
0000000007cde875: bf12000000                   mov      edi, 0x12
0000000007cde87a: 4889da                       mov      rdx, rbx
0000000007cde87d: e86e3e2701                   call     0x8f526f0
0000000007cde882: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde889: a900000400                   test     eax, 0x40000
0000000007cde88e: 0f8413fdffff                 je       0x7cde5a7
0000000007cde894: 498bb690000000               mov      rsi, qword ptr [r14 + 0x90]
0000000007cde89b: bf13000000                   mov      edi, 0x13
0000000007cde8a0: 4889da                       mov      rdx, rbx
0000000007cde8a3: e8a83c2701                   call     0x8f52550
0000000007cde8a8: 418b86a0000000               mov      eax, dword ptr [r14 + 0xa0]
0000000007cde8af: a900000800                   test     eax, 0x80000
0000000007cde8b4: 0f84f8fcffff                 je       0x7cde5b2
0000000007cde8ba: 418bb698000000               mov      esi, dword ptr [r14 + 0x98]
0000000007cde8c1: bf14000000                   mov      edi, 0x14
0000000007cde8c6: 4889da                       mov      rdx, rbx
0000000007cde8c9: 4883c408                     add      rsp, 8
0000000007cde8cd: 5b                           pop      rbx
0000000007cde8ce: 415e                         pop      r14
0000000007cde8d0: e9ab3a2701                   jmp      0x8f52380

0000000007cea6c0: 4156                         push     r14
0000000007cea6c2: 53                           push     rbx
0000000007cea6c3: 50                           push     rax
0000000007cea6c4: 4889f3                       mov      rbx, rsi
0000000007cea6c7: 4989fe                       mov      r14, rdi
0000000007cea6ca: 8b4764                       mov      eax, dword ptr [rdi + 0x64]
0000000007cea6cd: a801                         test     al, 1
0000000007cea6cf: 756c                         jne      0x7cea73d
0000000007cea6d1: a802                         test     al, 2
0000000007cea6d3: 0f8594000000                 jne      0x7cea76d
0000000007cea6d9: a804                         test     al, 4
0000000007cea6db: 0f85a9000000                 jne      0x7cea78a
0000000007cea6e1: a808                         test     al, 8
0000000007cea6e3: 0f85d1000000                 jne      0x7cea7ba
0000000007cea6e9: a810                         test     al, 0x10
0000000007cea6eb: 0f85e6000000                 jne      0x7cea7d7
0000000007cea6f1: a820                         test     al, 0x20
0000000007cea6f3: 0f85fb000000                 jne      0x7cea7f4
0000000007cea6f9: a840                         test     al, 0x40
0000000007cea6fb: 0f8510010000                 jne      0x7cea811
0000000007cea701: 84c0                         test     al, al
0000000007cea703: 0f8825010000                 js       0x7cea82e
0000000007cea709: a900010000                   test     eax, 0x100
0000000007cea70e: 0f853a010000                 jne      0x7cea84e
0000000007cea714: a900020000                   test     eax, 0x200
0000000007cea719: 0f854f010000                 jne      0x7cea86e
0000000007cea71f: a900040000                   test     eax, 0x400
0000000007cea724: 0f8564010000                 jne      0x7cea88e
0000000007cea72a: a900080000                   test     eax, 0x800
0000000007cea72f: 0f8579010000                 jne      0x7cea8ae
0000000007cea735: 4883c408                     add      rsp, 8
0000000007cea739: 5b                           pop      rbx
0000000007cea73a: 415e                         pop      r14
0000000007cea73c: c3                           ret
0000000007cea73d: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007cea741: 4885f6                       test     rsi, rsi
0000000007cea744: 750e                         jne      0x7cea754
0000000007cea746: 488d05bb160103               lea      rax, [rip + 0x30116bb]
0000000007cea74d: 488b00                       mov      rax, qword ptr [rax]
0000000007cea750: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007cea754: bf01000000                   mov      edi, 1
0000000007cea759: 4889da                       mov      rdx, rbx
0000000007cea75c: e88f7f2601                   call     0x8f526f0
0000000007cea761: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007cea765: a802                         test     al, 2
0000000007cea767: 0f846cffffff                 je       0x7cea6d9
0000000007cea76d: 418b7630                     mov      esi, dword ptr [r14 + 0x30]
0000000007cea771: bf02000000                   mov      edi, 2
0000000007cea776: 4889da                       mov      rdx, rbx
0000000007cea779: e8027c2601                   call     0x8f52380
0000000007cea77e: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007cea782: a804                         test     al, 4
0000000007cea784: 0f8457ffffff                 je       0x7cea6e1
0000000007cea78a: 498b7610                     mov      rsi, qword ptr [r14 + 0x10]
0000000007cea78e: 4885f6                       test     rsi, rsi
0000000007cea791: 750e                         jne      0x7cea7a1
0000000007cea793: 488d056e160103               lea      rax, [rip + 0x301166e]
0000000007cea79a: 488b00                       mov      rax, qword ptr [rax]
0000000007cea79d: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000007cea7a1: bf03000000                   mov      edi, 3
0000000007cea7a6: 4889da                       mov      rdx, rbx
0000000007cea7a9: e8427f2601                   call     0x8f526f0
0000000007cea7ae: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007cea7b2: a808                         test     al, 8
0000000007cea7b4: 0f842fffffff                 je       0x7cea6e9
0000000007cea7ba: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007cea7be: bf04000000                   mov      edi, 4
0000000007cea7c3: 4889da                       mov      rdx, rbx
0000000007cea7c6: e8857d2601                   call     0x8f52550
0000000007cea7cb: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007cea7cf: a810                         test     al, 0x10
0000000007cea7d1: 0f841affffff                 je       0x7cea6f1
0000000007cea7d7: 498b7620                     mov      rsi, qword ptr [r14 + 0x20]
0000000007cea7db: bf05000000                   mov      edi, 5
0000000007cea7e0: 4889da                       mov      rdx, rbx
0000000007cea7e3: e8687d2601                   call     0x8f52550
0000000007cea7e8: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007cea7ec: a820                         test     al, 0x20
0000000007cea7ee: 0f8405ffffff                 je       0x7cea6f9
0000000007cea7f4: 498b7628                     mov      rsi, qword ptr [r14 + 0x28]
0000000007cea7f8: bf06000000                   mov      edi, 6
0000000007cea7fd: 4889da                       mov      rdx, rbx
0000000007cea800: e84b7d2601                   call     0x8f52550
0000000007cea805: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007cea809: a840                         test     al, 0x40
0000000007cea80b: 0f84f0feffff                 je       0x7cea701
0000000007cea811: 498b7638                     mov      rsi, qword ptr [r14 + 0x38]
0000000007cea815: bf07000000                   mov      edi, 7
0000000007cea81a: 4889da                       mov      rdx, rbx
0000000007cea81d: e82e7d2601                   call     0x8f52550
0000000007cea822: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007cea826: 84c0                         test     al, al
0000000007cea828: 0f89dbfeffff                 jns      0x7cea709
0000000007cea82e: 498b7640                     mov      rsi, qword ptr [r14 + 0x40]
0000000007cea832: bf08000000                   mov      edi, 8
0000000007cea837: 4889da                       mov      rdx, rbx
0000000007cea83a: e8117d2601                   call     0x8f52550
0000000007cea83f: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007cea843: a900010000                   test     eax, 0x100
0000000007cea848: 0f84c6feffff                 je       0x7cea714
0000000007cea84e: 498b7648                     mov      rsi, qword ptr [r14 + 0x48]
0000000007cea852: bf09000000                   mov      edi, 9
0000000007cea857: 4889da                       mov      rdx, rbx
0000000007cea85a: e8f17c2601                   call     0x8f52550
0000000007cea85f: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007cea863: a900020000                   test     eax, 0x200
0000000007cea868: 0f84b1feffff                 je       0x7cea71f
0000000007cea86e: 498b7650                     mov      rsi, qword ptr [r14 + 0x50]
0000000007cea872: bf0a000000                   mov      edi, 0xa
0000000007cea877: 4889da                       mov      rdx, rbx
0000000007cea87a: e8d17c2601                   call     0x8f52550
0000000007cea87f: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007cea883: a900040000                   test     eax, 0x400
0000000007cea888: 0f849cfeffff                 je       0x7cea72a
0000000007cea88e: 418b7634                     mov      esi, dword ptr [r14 + 0x34]
0000000007cea892: bf0b000000                   mov      edi, 0xb
0000000007cea897: 4889da                       mov      rdx, rbx
0000000007cea89a: e8717a2601                   call     0x8f52310
0000000007cea89f: 418b4664                     mov      eax, dword ptr [r14 + 0x64]
0000000007cea8a3: a900080000                   test     eax, 0x800
0000000007cea8a8: 0f8487feffff                 je       0x7cea735
0000000007cea8ae: 498b7658                     mov      rsi, qword ptr [r14 + 0x58]
0000000007cea8b2: 4885f6                       test     rsi, rsi
0000000007cea8b5: 750e                         jne      0x7cea8c5
0000000007cea8b7: 488d054a150103               lea      rax, [rip + 0x301154a]
0000000007cea8be: 488b00                       mov      rax, qword ptr [rax]
0000000007cea8c1: 488b7058                     mov      rsi, qword ptr [rax + 0x58]
0000000007cea8c5: bf0c000000                   mov      edi, 0xc
0000000007cea8ca: 4889da                       mov      rdx, rbx
0000000007cea8cd: 4883c408                     add      rsp, 8
0000000007cea8d1: 5b                           pop      rbx
0000000007cea8d2: 415e                         pop      r14
0000000007cea8d4: e9177e2601                   jmp      0x8f526f0

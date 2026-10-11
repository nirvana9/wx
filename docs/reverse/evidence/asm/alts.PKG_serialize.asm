0000000008e10500: 4156                         push     r14
0000000008e10502: 53                           push     rbx
0000000008e10503: 50                           push     rax
0000000008e10504: 4889f3                       mov      rbx, rsi
0000000008e10507: 4989fe                       mov      r14, rdi
0000000008e1050a: 8b4778                       mov      eax, dword ptr [rdi + 0x78]
0000000008e1050d: a801                         test     al, 1
0000000008e1050f: 0f85d8000000                 jne      0x8e105ed
0000000008e10515: a802                         test     al, 2
0000000008e10517: 0f85ed000000                 jne      0x8e1060a
0000000008e1051d: a804                         test     al, 4
0000000008e1051f: 0f8502010000                 jne      0x8e10627
0000000008e10525: a808                         test     al, 8
0000000008e10527: 0f8517010000                 jne      0x8e10644
0000000008e1052d: a810                         test     al, 0x10
0000000008e1052f: 0f852c010000                 jne      0x8e10661
0000000008e10535: a820                         test     al, 0x20
0000000008e10537: 0f8541010000                 jne      0x8e1067e
0000000008e1053d: a840                         test     al, 0x40
0000000008e1053f: 0f8556010000                 jne      0x8e1069b
0000000008e10545: 84c0                         test     al, al
0000000008e10547: 0f886b010000                 js       0x8e106b8
0000000008e1054d: a900010000                   test     eax, 0x100
0000000008e10552: 0f8580010000                 jne      0x8e106d8
0000000008e10558: a900020000                   test     eax, 0x200
0000000008e1055d: 0f8595010000                 jne      0x8e106f8
0000000008e10563: a900040000                   test     eax, 0x400
0000000008e10568: 0f85aa010000                 jne      0x8e10718
0000000008e1056e: a900080000                   test     eax, 0x800
0000000008e10573: 0f85bf010000                 jne      0x8e10738
0000000008e10579: a900100000                   test     eax, 0x1000
0000000008e1057e: 0f85d4010000                 jne      0x8e10758
0000000008e10584: a900200000                   test     eax, 0x2000
0000000008e10589: 0f85e9010000                 jne      0x8e10778
0000000008e1058f: a900400000                   test     eax, 0x4000
0000000008e10594: 0f85fe010000                 jne      0x8e10798
0000000008e1059a: 6685c0                       test     ax, ax
0000000008e1059d: 0f8813020000                 js       0x8e107b6
0000000008e105a3: a900000100                   test     eax, 0x10000
0000000008e105a8: 0f8528020000                 jne      0x8e107d6
0000000008e105ae: a900000200                   test     eax, 0x20000
0000000008e105b3: 0f853d020000                 jne      0x8e107f6
0000000008e105b9: a900000400                   test     eax, 0x40000
0000000008e105be: 0f8552020000                 jne      0x8e10816
0000000008e105c4: a900000800                   test     eax, 0x80000
0000000008e105c9: 0f8567020000                 jne      0x8e10836
0000000008e105cf: a900001000                   test     eax, 0x100000
0000000008e105d4: 0f857c020000                 jne      0x8e10856
0000000008e105da: a900002000                   test     eax, 0x200000
0000000008e105df: 0f8591020000                 jne      0x8e10876
0000000008e105e5: 4883c408                     add      rsp, 8
0000000008e105e9: 5b                           pop      rbx
0000000008e105ea: 415e                         pop      r14
0000000008e105ec: c3                           ret
0000000008e105ed: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
0000000008e105f1: bf01000000                   mov      edi, 1
0000000008e105f6: 4889da                       mov      rdx, rbx
0000000008e105f9: e8821d1400                   call     0x8f52380
0000000008e105fe: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e10602: a802                         test     al, 2
0000000008e10604: 0f8413ffffff                 je       0x8e1051d
0000000008e1060a: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000008e1060e: bf02000000                   mov      edi, 2
0000000008e10613: 4889da                       mov      rdx, rbx
0000000008e10616: e805201400                   call     0x8f52620
0000000008e1061b: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e1061f: a804                         test     al, 4
0000000008e10621: 0f84fefeffff                 je       0x8e10525
0000000008e10627: 418b7614                     mov      esi, dword ptr [r14 + 0x14]
0000000008e1062b: bf03000000                   mov      edi, 3
0000000008e10630: 4889da                       mov      rdx, rbx
0000000008e10633: e8481d1400                   call     0x8f52380
0000000008e10638: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e1063c: a808                         test     al, 8
0000000008e1063e: 0f84e9feffff                 je       0x8e1052d
0000000008e10644: 418b7618                     mov      esi, dword ptr [r14 + 0x18]
0000000008e10648: bf04000000                   mov      edi, 4
0000000008e1064d: 4889da                       mov      rdx, rbx
0000000008e10650: e82b1d1400                   call     0x8f52380
0000000008e10655: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e10659: a810                         test     al, 0x10
0000000008e1065b: 0f84d4feffff                 je       0x8e10535
0000000008e10661: 418b761c                     mov      esi, dword ptr [r14 + 0x1c]
0000000008e10665: bf05000000                   mov      edi, 5
0000000008e1066a: 4889da                       mov      rdx, rbx
0000000008e1066d: e80e1d1400                   call     0x8f52380
0000000008e10672: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e10676: a820                         test     al, 0x20
0000000008e10678: 0f84bffeffff                 je       0x8e1053d
0000000008e1067e: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
0000000008e10682: bf06000000                   mov      edi, 6
0000000008e10687: 4889da                       mov      rdx, rbx
0000000008e1068a: e8f11c1400                   call     0x8f52380
0000000008e1068f: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e10693: a840                         test     al, 0x40
0000000008e10695: 0f84aafeffff                 je       0x8e10545
0000000008e1069b: 418b7624                     mov      esi, dword ptr [r14 + 0x24]
0000000008e1069f: bf07000000                   mov      edi, 7
0000000008e106a4: 4889da                       mov      rdx, rbx
0000000008e106a7: e8d41c1400                   call     0x8f52380
0000000008e106ac: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e106b0: 84c0                         test     al, al
0000000008e106b2: 0f8995feffff                 jns      0x8e1054d
0000000008e106b8: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
0000000008e106bc: bf08000000                   mov      edi, 8
0000000008e106c1: 4889da                       mov      rdx, rbx
0000000008e106c4: e8b71c1400                   call     0x8f52380
0000000008e106c9: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e106cd: a900010000                   test     eax, 0x100
0000000008e106d2: 0f8480feffff                 je       0x8e10558
0000000008e106d8: 418b762c                     mov      esi, dword ptr [r14 + 0x2c]
0000000008e106dc: bf09000000                   mov      edi, 9
0000000008e106e1: 4889da                       mov      rdx, rbx
0000000008e106e4: e8971c1400                   call     0x8f52380
0000000008e106e9: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e106ed: a900020000                   test     eax, 0x200
0000000008e106f2: 0f846bfeffff                 je       0x8e10563
0000000008e106f8: 418b7630                     mov      esi, dword ptr [r14 + 0x30]
0000000008e106fc: bf0a000000                   mov      edi, 0xa
0000000008e10701: 4889da                       mov      rdx, rbx
0000000008e10704: e8771c1400                   call     0x8f52380
0000000008e10709: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e1070d: a900040000                   test     eax, 0x400
0000000008e10712: 0f8456feffff                 je       0x8e1056e
0000000008e10718: 418b7634                     mov      esi, dword ptr [r14 + 0x34]
0000000008e1071c: bf0b000000                   mov      edi, 0xb
0000000008e10721: 4889da                       mov      rdx, rbx
0000000008e10724: e8571c1400                   call     0x8f52380
0000000008e10729: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e1072d: a900080000                   test     eax, 0x800
0000000008e10732: 0f8441feffff                 je       0x8e10579
0000000008e10738: 418b7638                     mov      esi, dword ptr [r14 + 0x38]
0000000008e1073c: bf0c000000                   mov      edi, 0xc
0000000008e10741: 4889da                       mov      rdx, rbx
0000000008e10744: e8371c1400                   call     0x8f52380
0000000008e10749: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e1074d: a900100000                   test     eax, 0x1000
0000000008e10752: 0f842cfeffff                 je       0x8e10584
0000000008e10758: 418b763c                     mov      esi, dword ptr [r14 + 0x3c]
0000000008e1075c: bf0d000000                   mov      edi, 0xd
0000000008e10761: 4889da                       mov      rdx, rbx
0000000008e10764: e8a71b1400                   call     0x8f52310
0000000008e10769: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e1076d: a900200000                   test     eax, 0x2000
0000000008e10772: 0f8417feffff                 je       0x8e1058f
0000000008e10778: 498b7640                     mov      rsi, qword ptr [r14 + 0x40]
0000000008e1077c: bf0e000000                   mov      edi, 0xe
0000000008e10781: 4889da                       mov      rdx, rbx
0000000008e10784: e8971e1400                   call     0x8f52620
0000000008e10789: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e1078d: a900400000                   test     eax, 0x4000
0000000008e10792: 0f8402feffff                 je       0x8e1059a
0000000008e10798: 418b7648                     mov      esi, dword ptr [r14 + 0x48]
0000000008e1079c: bf0f000000                   mov      edi, 0xf
0000000008e107a1: 4889da                       mov      rdx, rbx
0000000008e107a4: e8d71b1400                   call     0x8f52380
0000000008e107a9: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e107ad: 6685c0                       test     ax, ax
0000000008e107b0: 0f89edfdffff                 jns      0x8e105a3
0000000008e107b6: 418b764c                     mov      esi, dword ptr [r14 + 0x4c]
0000000008e107ba: bf10000000                   mov      edi, 0x10
0000000008e107bf: 4889da                       mov      rdx, rbx
0000000008e107c2: e8b91b1400                   call     0x8f52380
0000000008e107c7: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e107cb: a900000100                   test     eax, 0x10000
0000000008e107d0: 0f84d8fdffff                 je       0x8e105ae
0000000008e107d6: 418b7658                     mov      esi, dword ptr [r14 + 0x58]
0000000008e107da: bf11000000                   mov      edi, 0x11
0000000008e107df: 4889da                       mov      rdx, rbx
0000000008e107e2: e8991b1400                   call     0x8f52380
0000000008e107e7: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e107eb: a900000200                   test     eax, 0x20000
0000000008e107f0: 0f84c3fdffff                 je       0x8e105b9
0000000008e107f6: 498b7650                     mov      rsi, qword ptr [r14 + 0x50]
0000000008e107fa: bf12000000                   mov      edi, 0x12
0000000008e107ff: 4889da                       mov      rdx, rbx
0000000008e10802: e8a91b1400                   call     0x8f523b0
0000000008e10807: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e1080b: a900000400                   test     eax, 0x40000
0000000008e10810: 0f84aefdffff                 je       0x8e105c4
0000000008e10816: 498b7660                     mov      rsi, qword ptr [r14 + 0x60]
0000000008e1081a: bf13000000                   mov      edi, 0x13
0000000008e1081f: 4889da                       mov      rdx, rbx
0000000008e10822: e8891b1400                   call     0x8f523b0
0000000008e10827: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e1082b: a900000800                   test     eax, 0x80000
0000000008e10830: 0f8499fdffff                 je       0x8e105cf
0000000008e10836: 418b765c                     mov      esi, dword ptr [r14 + 0x5c]
0000000008e1083a: bf14000000                   mov      edi, 0x14
0000000008e1083f: 4889da                       mov      rdx, rbx
0000000008e10842: e8391b1400                   call     0x8f52380
0000000008e10847: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e1084b: a900001000                   test     eax, 0x100000
0000000008e10850: 0f8484fdffff                 je       0x8e105da
0000000008e10856: 418b7670                     mov      esi, dword ptr [r14 + 0x70]
0000000008e1085a: bf15000000                   mov      edi, 0x15
0000000008e1085f: 4889da                       mov      rdx, rbx
0000000008e10862: e8191b1400                   call     0x8f52380
0000000008e10867: 418b4678                     mov      eax, dword ptr [r14 + 0x78]
0000000008e1086b: a900002000                   test     eax, 0x200000
0000000008e10870: 0f846ffdffff                 je       0x8e105e5
0000000008e10876: 498b7668                     mov      rsi, qword ptr [r14 + 0x68]
0000000008e1087a: bf16000000                   mov      edi, 0x16
0000000008e1087f: 4889da                       mov      rdx, rbx
0000000008e10882: 4883c408                     add      rsp, 8
0000000008e10886: 5b                           pop      rbx
0000000008e10887: 415e                         pop      r14
0000000008e10889: e9921d1400                   jmp      0x8f52620

0000000007cc6170: 55                           push     rbp
0000000007cc6171: 4157                         push     r15
0000000007cc6173: 4156                         push     r14
0000000007cc6175: 53                           push     rbx
0000000007cc6176: 50                           push     rax
0000000007cc6177: 4889fb                       mov      rbx, rdi
0000000007cc617a: 8b4f5c                       mov      ecx, dword ptr [rdi + 0x5c]
0000000007cc617d: 4531f6                       xor      r14d, r14d
0000000007cc6180: 84c9                         test     cl, cl
0000000007cc6182: 7443                         je       0x7cc61c7
0000000007cc6184: f6c101                       test     cl, 1
0000000007cc6187: 754f                         jne      0x7cc61d8
0000000007cc6189: f6c102                       test     cl, 2
0000000007cc618c: 0f858d000000                 jne      0x7cc621f
0000000007cc6192: f6c104                       test     cl, 4
0000000007cc6195: 0f85cb000000                 jne      0x7cc6266
0000000007cc619b: f6c108                       test     cl, 8
0000000007cc619e: 0f85e9000000                 jne      0x7cc628d
0000000007cc61a4: f6c110                       test     cl, 0x10
0000000007cc61a7: 0f853a010000                 jne      0x7cc62e7
0000000007cc61ad: f6c120                       test     cl, 0x20
0000000007cc61b0: 0f858b010000                 jne      0x7cc6341
0000000007cc61b6: f6c140                       test     cl, 0x40
0000000007cc61b9: 0f85ab010000                 jne      0x7cc636a
0000000007cc61bf: 84c9                         test     cl, cl
0000000007cc61c1: 0f88fc010000                 js       0x7cc63c3
0000000007cc61c7: f7c100ff0000                 test     ecx, 0xff00
0000000007cc61cd: 0f854d020000                 jne      0x7cc6420
0000000007cc61d3: e930030000                   jmp      0x7cc6508
0000000007cc61d8: 488b7b08                     mov      rdi, qword ptr [rbx + 8]
0000000007cc61dc: 4885ff                       test     rdi, rdi
0000000007cc61df: 750e                         jne      0x7cc61ef
0000000007cc61e1: 488d05a85a0303               lea      rax, [rip + 0x3035aa8]
0000000007cc61e8: 488b00                       mov      rax, qword ptr [rax]
0000000007cc61eb: 488b7808                     mov      rdi, qword ptr [rax + 8]
0000000007cc61ef: e83cdbd2ff                   call     0x79f3d30
0000000007cc61f4: 4189c6                       mov      r14d, eax
0000000007cc61f7: b801000000                   mov      eax, 1
0000000007cc61fc: 4181fe80000000               cmp      r14d, 0x80
0000000007cc6203: 7208                         jb       0x7cc620d
0000000007cc6205: 4489f7                       mov      edi, r14d
0000000007cc6208: e853bb2801                   call     0x8f51d60
0000000007cc620d: 4101c6                       add      r14d, eax
0000000007cc6210: 41ffc6                       inc      r14d
0000000007cc6213: 8b4b5c                       mov      ecx, dword ptr [rbx + 0x5c]
0000000007cc6216: f6c102                       test     cl, 2
0000000007cc6219: 0f8473ffffff                 je       0x7cc6192
0000000007cc621f: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
0000000007cc6223: 4885ff                       test     rdi, rdi
0000000007cc6226: 750e                         jne      0x7cc6236
0000000007cc6228: 488d05615a0303               lea      rax, [rip + 0x3035a61]
0000000007cc622f: 488b00                       mov      rax, qword ptr [rax]
0000000007cc6232: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
0000000007cc6236: e8b5a6edff                   call     0x7ba08f0
0000000007cc623b: 89c5                         mov      ebp, eax
0000000007cc623d: b801000000                   mov      eax, 1
0000000007cc6242: 81fd80000000                 cmp      ebp, 0x80
0000000007cc6248: 7207                         jb       0x7cc6251
0000000007cc624a: 89ef                         mov      edi, ebp
0000000007cc624c: e80fbb2801                   call     0x8f51d60
0000000007cc6251: 4101ee                       add      r14d, ebp
0000000007cc6254: 4101c6                       add      r14d, eax
0000000007cc6257: 41ffc6                       inc      r14d
0000000007cc625a: 8b4b5c                       mov      ecx, dword ptr [rbx + 0x5c]
0000000007cc625d: f6c104                       test     cl, 4
0000000007cc6260: 0f8435ffffff                 je       0x7cc619b
0000000007cc6266: 8b7b20                       mov      edi, dword ptr [rbx + 0x20]
0000000007cc6269: b801000000                   mov      eax, 1
0000000007cc626e: 81ff80000000                 cmp      edi, 0x80
0000000007cc6274: 7208                         jb       0x7cc627e
0000000007cc6276: e8e5ba2801                   call     0x8f51d60
0000000007cc627b: 8b4b5c                       mov      ecx, dword ptr [rbx + 0x5c]
0000000007cc627e: 4101c6                       add      r14d, eax
0000000007cc6281: 41ffc6                       inc      r14d
0000000007cc6284: f6c108                       test     cl, 8
0000000007cc6287: 0f8417ffffff                 je       0x7cc61a4
0000000007cc628d: 4c8b7b18                     mov      r15, qword ptr [rbx + 0x18]
0000000007cc6291: 450fb607                     movzx    r8d, byte ptr [r15]
0000000007cc6295: 4489c2                       mov      edx, r8d
0000000007cc6298: d1ea                         shr      edx, 1
0000000007cc629a: 4180e001                     and      r8b, 1
0000000007cc629e: 498b7708                     mov      rsi, qword ptr [r15 + 8]
0000000007cc62a2: 89f7                         mov      edi, esi
0000000007cc62a4: 0f44fa                       cmove    edi, edx
0000000007cc62a7: 81ff80000000                 cmp      edi, 0x80
0000000007cc62ad: 7307                         jae      0x7cc62b6
0000000007cc62af: b801000000                   mov      eax, 1
0000000007cc62b4: eb19                         jmp      0x7cc62cf
0000000007cc62b6: e8a5ba2801                   call     0x8f51d60
0000000007cc62bb: 410fb617                     movzx    edx, byte ptr [r15]
0000000007cc62bf: 498b7708                     mov      rsi, qword ptr [r15 + 8]
0000000007cc62c3: 4189d0                       mov      r8d, edx
0000000007cc62c6: 4180e001                     and      r8b, 1
0000000007cc62ca: d1ea                         shr      edx, 1
0000000007cc62cc: 8b4b5c                       mov      ecx, dword ptr [rbx + 0x5c]
0000000007cc62cf: 4584c0                       test     r8b, r8b
0000000007cc62d2: 0f44f2                       cmove    esi, edx
0000000007cc62d5: 4101c6                       add      r14d, eax
0000000007cc62d8: 4101f6                       add      r14d, esi
0000000007cc62db: 41ffc6                       inc      r14d
0000000007cc62de: f6c110                       test     cl, 0x10
0000000007cc62e1: 0f84c6feffff                 je       0x7cc61ad
0000000007cc62e7: 4c8b7b28                     mov      r15, qword ptr [rbx + 0x28]
0000000007cc62eb: 450fb607                     movzx    r8d, byte ptr [r15]
0000000007cc62ef: 4489c2                       mov      edx, r8d
0000000007cc62f2: d1ea                         shr      edx, 1
0000000007cc62f4: 4180e001                     and      r8b, 1
0000000007cc62f8: 498b7708                     mov      rsi, qword ptr [r15 + 8]
0000000007cc62fc: 89f7                         mov      edi, esi
0000000007cc62fe: 0f44fa                       cmove    edi, edx
0000000007cc6301: 81ff80000000                 cmp      edi, 0x80
0000000007cc6307: 7307                         jae      0x7cc6310
0000000007cc6309: b801000000                   mov      eax, 1
0000000007cc630e: eb19                         jmp      0x7cc6329
0000000007cc6310: e84bba2801                   call     0x8f51d60
0000000007cc6315: 410fb617                     movzx    edx, byte ptr [r15]
0000000007cc6319: 498b7708                     mov      rsi, qword ptr [r15 + 8]
0000000007cc631d: 4189d0                       mov      r8d, edx
0000000007cc6320: 4180e001                     and      r8b, 1
0000000007cc6324: d1ea                         shr      edx, 1
0000000007cc6326: 8b4b5c                       mov      ecx, dword ptr [rbx + 0x5c]
0000000007cc6329: 4584c0                       test     r8b, r8b
0000000007cc632c: 0f44f2                       cmove    esi, edx
0000000007cc632f: 4101c6                       add      r14d, eax
0000000007cc6332: 4101f6                       add      r14d, esi
0000000007cc6335: 41ffc6                       inc      r14d
0000000007cc6338: f6c120                       test     cl, 0x20
0000000007cc633b: 0f8475feffff                 je       0x7cc61b6
0000000007cc6341: 8b7b24                       mov      edi, dword ptr [rbx + 0x24]
0000000007cc6344: b802000000                   mov      eax, 2
0000000007cc6349: 81ff80000000                 cmp      edi, 0x80
0000000007cc634f: 720a                         jb       0x7cc635b
0000000007cc6351: e80aba2801                   call     0x8f51d60
0000000007cc6356: ffc0                         inc      eax
0000000007cc6358: 8b4b5c                       mov      ecx, dword ptr [rbx + 0x5c]
0000000007cc635b: 4401f0                       add      eax, r14d
0000000007cc635e: 4189c6                       mov      r14d, eax
0000000007cc6361: f6c140                       test     cl, 0x40
0000000007cc6364: 0f8455feffff                 je       0x7cc61bf
0000000007cc636a: 4c8b7b30                     mov      r15, qword ptr [rbx + 0x30]
0000000007cc636e: 450fb607                     movzx    r8d, byte ptr [r15]
0000000007cc6372: 4489c2                       mov      edx, r8d
0000000007cc6375: d1ea                         shr      edx, 1
0000000007cc6377: 4180e001                     and      r8b, 1
0000000007cc637b: 498b7708                     mov      rsi, qword ptr [r15 + 8]
0000000007cc637f: 89f7                         mov      edi, esi
0000000007cc6381: 0f44fa                       cmove    edi, edx
0000000007cc6384: 81ff80000000                 cmp      edi, 0x80
0000000007cc638a: 7307                         jae      0x7cc6393
0000000007cc638c: b801000000                   mov      eax, 1
0000000007cc6391: eb19                         jmp      0x7cc63ac
0000000007cc6393: e8c8b92801                   call     0x8f51d60
0000000007cc6398: 410fb617                     movzx    edx, byte ptr [r15]
0000000007cc639c: 498b7708                     mov      rsi, qword ptr [r15 + 8]
0000000007cc63a0: 4189d0                       mov      r8d, edx
0000000007cc63a3: 4180e001                     and      r8b, 1
0000000007cc63a7: d1ea                         shr      edx, 1
0000000007cc63a9: 8b4b5c                       mov      ecx, dword ptr [rbx + 0x5c]
0000000007cc63ac: 4584c0                       test     r8b, r8b
0000000007cc63af: 0f44f2                       cmove    esi, edx
0000000007cc63b2: 4101c6                       add      r14d, eax
0000000007cc63b5: 4101f6                       add      r14d, esi
0000000007cc63b8: 41ffc6                       inc      r14d
0000000007cc63bb: 84c9                         test     cl, cl
0000000007cc63bd: 0f8904feffff                 jns      0x7cc61c7
0000000007cc63c3: 4c8b7b38                     mov      r15, qword ptr [rbx + 0x38]
0000000007cc63c7: 450fb607                     movzx    r8d, byte ptr [r15]
0000000007cc63cb: 4489c2                       mov      edx, r8d
0000000007cc63ce: d1ea                         shr      edx, 1
0000000007cc63d0: 4180e001                     and      r8b, 1
0000000007cc63d4: 498b7708                     mov      rsi, qword ptr [r15 + 8]
0000000007cc63d8: 89f7                         mov      edi, esi
0000000007cc63da: 0f44fa                       cmove    edi, edx
0000000007cc63dd: 81ff80000000                 cmp      edi, 0x80
0000000007cc63e3: 7307                         jae      0x7cc63ec
0000000007cc63e5: b801000000                   mov      eax, 1
0000000007cc63ea: eb19                         jmp      0x7cc6405
0000000007cc63ec: e86fb92801                   call     0x8f51d60
0000000007cc63f1: 410fb617                     movzx    edx, byte ptr [r15]
0000000007cc63f5: 498b7708                     mov      rsi, qword ptr [r15 + 8]
0000000007cc63f9: 4189d0                       mov      r8d, edx
0000000007cc63fc: 4180e001                     and      r8b, 1
0000000007cc6400: d1ea                         shr      edx, 1
0000000007cc6402: 8b4b5c                       mov      ecx, dword ptr [rbx + 0x5c]
0000000007cc6405: 4584c0                       test     r8b, r8b
0000000007cc6408: 0f44f2                       cmove    esi, edx
0000000007cc640b: 4101c6                       add      r14d, eax
0000000007cc640e: 4101f6                       add      r14d, esi
0000000007cc6411: 41ffc6                       inc      r14d
0000000007cc6414: f7c100ff0000                 test     ecx, 0xff00
0000000007cc641a: 0f84e8000000                 je       0x7cc6508
0000000007cc6420: f7c100010000                 test     ecx, 0x100
0000000007cc6426: 7519                         jne      0x7cc6441
0000000007cc6428: f7c100020000                 test     ecx, 0x200
0000000007cc642e: 7557                         jne      0x7cc6487
0000000007cc6430: f7c100040000                 test     ecx, 0x400
0000000007cc6436: 0f8591000000                 jne      0x7cc64cd
0000000007cc643c: e9c7000000                   jmp      0x7cc6508
0000000007cc6441: 488b7b40                     mov      rdi, qword ptr [rbx + 0x40]
0000000007cc6445: 4885ff                       test     rdi, rdi
0000000007cc6448: 750e                         jne      0x7cc6458
0000000007cc644a: 488d053f580303               lea      rax, [rip + 0x303583f]
0000000007cc6451: 488b00                       mov      rax, qword ptr [rax]
0000000007cc6454: 488b7840                     mov      rdi, qword ptr [rax + 0x40]
0000000007cc6458: e893a4edff                   call     0x7ba08f0
0000000007cc645d: 89c5                         mov      ebp, eax
0000000007cc645f: b801000000                   mov      eax, 1
0000000007cc6464: 81fd80000000                 cmp      ebp, 0x80
0000000007cc646a: 7207                         jb       0x7cc6473
0000000007cc646c: 89ef                         mov      edi, ebp
0000000007cc646e: e8edb82801                   call     0x8f51d60
0000000007cc6473: 4101ee                       add      r14d, ebp
0000000007cc6476: 4101c6                       add      r14d, eax
0000000007cc6479: 41ffc6                       inc      r14d
0000000007cc647c: 8b4b5c                       mov      ecx, dword ptr [rbx + 0x5c]
0000000007cc647f: f7c100020000                 test     ecx, 0x200
0000000007cc6485: 74a9                         je       0x7cc6430
0000000007cc6487: 488b7b48                     mov      rdi, qword ptr [rbx + 0x48]
0000000007cc648b: 4885ff                       test     rdi, rdi
0000000007cc648e: 750e                         jne      0x7cc649e
0000000007cc6490: 488d05f9570303               lea      rax, [rip + 0x30357f9]
0000000007cc6497: 488b00                       mov      rax, qword ptr [rax]
0000000007cc649a: 488b7848                     mov      rdi, qword ptr [rax + 0x48]
0000000007cc649e: e84da4edff                   call     0x7ba08f0
0000000007cc64a3: 89c5                         mov      ebp, eax
0000000007cc64a5: b801000000                   mov      eax, 1
0000000007cc64aa: 81fd80000000                 cmp      ebp, 0x80
0000000007cc64b0: 7207                         jb       0x7cc64b9
0000000007cc64b2: 89ef                         mov      edi, ebp
0000000007cc64b4: e8a7b82801                   call     0x8f51d60
0000000007cc64b9: 4101ee                       add      r14d, ebp
0000000007cc64bc: 4101c6                       add      r14d, eax
0000000007cc64bf: 41ffc6                       inc      r14d
0000000007cc64c2: 8b4b5c                       mov      ecx, dword ptr [rbx + 0x5c]
0000000007cc64c5: f7c100040000                 test     ecx, 0x400
0000000007cc64cb: 743b                         je       0x7cc6508
0000000007cc64cd: 488b7b50                     mov      rdi, qword ptr [rbx + 0x50]
0000000007cc64d1: 4885ff                       test     rdi, rdi
0000000007cc64d4: 750e                         jne      0x7cc64e4
0000000007cc64d6: 488d05b3570303               lea      rax, [rip + 0x30357b3]
0000000007cc64dd: 488b00                       mov      rax, qword ptr [rax]
0000000007cc64e0: 488b7850                     mov      rdi, qword ptr [rax + 0x50]
0000000007cc64e4: e807a4edff                   call     0x7ba08f0
0000000007cc64e9: 89c5                         mov      ebp, eax
0000000007cc64eb: b801000000                   mov      eax, 1
0000000007cc64f0: 81fd80000000                 cmp      ebp, 0x80
0000000007cc64f6: 7207                         jb       0x7cc64ff
0000000007cc64f8: 89ef                         mov      edi, ebp
0000000007cc64fa: e861b82801                   call     0x8f51d60
0000000007cc64ff: 4101ee                       add      r14d, ebp
0000000007cc6502: 4101c6                       add      r14d, eax
0000000007cc6505: 41ffc6                       inc      r14d
0000000007cc6508: 44897358                     mov      dword ptr [rbx + 0x58], r14d
0000000007cc650c: 4489f0                       mov      eax, r14d
0000000007cc650f: 4883c408                     add      rsp, 8
0000000007cc6513: 5b                           pop      rbx
0000000007cc6514: 415e                         pop      r14
0000000007cc6516: 415f                         pop      r15
0000000007cc6518: 5d                           pop      rbp
0000000007cc6519: c3                           ret

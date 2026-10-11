0000000008dfc840: 55                           push     rbp
0000000008dfc841: 4157                         push     r15
0000000008dfc843: 4156                         push     r14
0000000008dfc845: 4155                         push     r13
0000000008dfc847: 4154                         push     r12
0000000008dfc849: 53                           push     rbx
0000000008dfc84a: 4881ece8050000               sub      rsp, 0x5e8
0000000008dfc851: 4c89cb                       mov      rbx, r9
0000000008dfc854: 4d89c5                       mov      r13, r8
0000000008dfc857: 4889cd                       mov      rbp, rcx
0000000008dfc85a: 4889942408010000             mov      qword ptr [rsp + 0x108], rdx
0000000008dfc862: 4189f6                       mov      r14d, esi
0000000008dfc865: 48897c2410                   mov      qword ptr [rsp + 0x10], rdi
0000000008dfc86a: 4c8dbc24b0010000             lea      r15, [rsp + 0x1b0]
0000000008dfc872: 4c89ff                       mov      rdi, r15
0000000008dfc875: be02000000                   mov      esi, 2
0000000008dfc87a: e8119b0000                   call     0x8e06390
0000000008dfc87f: 8b7318                       mov      esi, dword ptr [rbx + 0x18]
0000000008dfc882: 4c89ff                       mov      rdi, r15
0000000008dfc885: e8e69b0000                   call     0x8e06470
0000000008dfc88a: 0fb77338                     movzx    esi, word ptr [rbx + 0x38]
0000000008dfc88e: 4c89ff                       mov      rdi, r15
0000000008dfc891: e8ca9b0000                   call     0x8e06460
0000000008dfc896: 8b7310                       mov      esi, dword ptr [rbx + 0x10]
0000000008dfc899: 4c89ff                       mov      rdi, r15
0000000008dfc89c: e89f9b0000                   call     0x8e06440
0000000008dfc8a1: 8b734c                       mov      esi, dword ptr [rbx + 0x4c]
0000000008dfc8a4: 4c89ff                       mov      rdi, r15
0000000008dfc8a7: e8849d0000                   call     0x8e06630
0000000008dfc8ac: 488b7328                     mov      rsi, qword ptr [rbx + 0x28]
0000000008dfc8b0: 4885f6                       test     rsi, rsi
0000000008dfc8b3: 4c8d257e7d01f8               lea      r12, [rip - 0x7fe8282]
0000000008dfc8ba: 490f44f4                     cmove    rsi, r12
0000000008dfc8be: 8b530c                       mov      edx, dword ptr [rbx + 0xc]
0000000008dfc8c1: 4c89ff                       mov      rdi, r15
0000000008dfc8c4: e8f79c0000                   call     0x8e065c0
0000000008dfc8c9: 488b7350                     mov      rsi, qword ptr [rbx + 0x50]
0000000008dfc8cd: 4885f6                       test     rsi, rsi
0000000008dfc8d0: 490f44f4                     cmove    rsi, r12
0000000008dfc8d4: ba10000000                   mov      edx, 0x10
0000000008dfc8d9: 4c89ff                       mov      rdi, r15
0000000008dfc8dc: e89f9b0000                   call     0x8e06480
0000000008dfc8e1: 0fb7733a                     movzx    esi, word ptr [rbx + 0x3a]
0000000008dfc8e5: 4c89ff                       mov      rdi, r15
0000000008dfc8e8: e8539d0000                   call     0x8e06640
0000000008dfc8ed: 0fb67345                     movzx    esi, byte ptr [rbx + 0x45]
0000000008dfc8f1: 4c89ff                       mov      rdi, r15
0000000008dfc8f4: e8f79d0000                   call     0x8e066f0
0000000008dfc8f9: 0fb67344                     movzx    esi, byte ptr [rbx + 0x44]
0000000008dfc8fd: 4c89ff                       mov      rdi, r15
0000000008dfc900: e8cb9d0000                   call     0x8e066d0
0000000008dfc905: 0fb77346                     movzx    esi, word ptr [rbx + 0x46]
0000000008dfc909: 4c89ff                       mov      rdi, r15
0000000008dfc90c: e8ff9d0000                   call     0x8e06710
0000000008dfc911: 0fb77348                     movzx    esi, word ptr [rbx + 0x48]
0000000008dfc915: 4c89ff                       mov      rdi, r15
0000000008dfc918: e8139e0000                   call     0x8e06730
0000000008dfc91d: 4c89ff                       mov      rdi, r15
0000000008dfc920: e85b9d0000                   call     0x8e06680
0000000008dfc925: 80bbf000000000               cmp      byte ptr [rbx + 0xf0], 0
0000000008dfc92c: 7414                         je       0x8dfc942
0000000008dfc92e: 80bbf100000000               cmp      byte ptr [rbx + 0xf1], 0
0000000008dfc935: 0f94c1                       sete     cl
0000000008dfc938: c0e103                       shl      cl, 3
0000000008dfc93b: 80c9f6                       or       cl, 0xf6
0000000008dfc93e: 20c8                         and      al, cl
0000000008dfc940: eb02                         jmp      0x8dfc944
0000000008dfc942: 0c09                         or       al, 9
0000000008dfc944: 4c8ba42420060000             mov      r12, qword ptr [rsp + 0x620]
0000000008dfc94c: 0fb6f0                       movzx    esi, al
0000000008dfc94f: 4c8dbc24b0010000             lea      r15, [rsp + 0x1b0]
0000000008dfc957: 4c89ff                       mov      rdi, r15
0000000008dfc95a: e8319d0000                   call     0x8e06690
0000000008dfc95f: 4c89ff                       mov      rdi, r15
0000000008dfc962: be01000000                   mov      esi, 1
0000000008dfc967: e8e49c0000                   call     0x8e06650
0000000008dfc96c: 807b5800                     cmp      byte ptr [rbx + 0x58], 0
0000000008dfc970: 742d                         je       0x8dfc99f
0000000008dfc972: 488b442410                   mov      rax, qword ptr [rsp + 0x10]
0000000008dfc977: 488b38                       mov      rdi, qword ptr [rax]
0000000008dfc97a: e831d1ffff                   call     0x8df9ab0
0000000008dfc97f: 8b7318                       mov      esi, dword ptr [rbx + 0x18]
0000000008dfc982: 4889c7                       mov      rdi, rax
0000000008dfc985: 4889ea                       mov      rdx, rbp
0000000008dfc988: 4489e9                       mov      ecx, r13d
0000000008dfc98b: e86066ffff                   call     0x8df2ff0
0000000008dfc990: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfc998: 89c6                         mov      esi, eax
0000000008dfc99a: e8d19c0000                   call     0x8e06670
0000000008dfc99f: 4c8dbc24c0020000             lea      r15, [rsp + 0x2c0]
0000000008dfc9a7: 4c89ff                       mov      rdi, r15
0000000008dfc9aa: e831f00100                   call     0x8e1b9e0
0000000008dfc9af: 0f57c0                       xorps    xmm0, xmm0
0000000008dfc9b2: 0f298424f0000000             movaps   xmmword ptr [rsp + 0xf0], xmm0
0000000008dfc9ba: 4c8d8c24f0000000             lea      r9, [rsp + 0xf0]
0000000008dfc9c2: 4489f6                       mov      esi, r14d
0000000008dfc9c5: 4889ea                       mov      rdx, rbp
0000000008dfc9c8: 4c89e9                       mov      rcx, r13
0000000008dfc9cb: 4d89f8                       mov      r8, r15
0000000008dfc9ce: 4154                         push     r12
0000000008dfc9d0: 53                           push     rbx
0000000008dfc9d1: e8fa100000                   call     0x8dfdad0
0000000008dfc9d6: 4883c410                     add      rsp, 0x10
0000000008dfc9da: 84c0                         test     al, al
0000000008dfc9dc: 0f8402040000                 je       0x8dfcde4
0000000008dfc9e2: 4c8dbc24b0010000             lea      r15, [rsp + 0x1b0]
0000000008dfc9ea: 4c89ff                       mov      rdi, r15
0000000008dfc9ed: 4489ee                       mov      esi, r13d
0000000008dfc9f0: e8eb9a0000                   call     0x8e064e0
0000000008dfc9f5: 488bac24f8000000             mov      rbp, qword ptr [rsp + 0xf8]
0000000008dfc9fd: 4c89ff                       mov      rdi, r15
0000000008dfca00: 89ee                         mov      esi, ebp
0000000008dfca02: e8f99a0000                   call     0x8e06500
0000000008dfca07: 0fbf33                       movsx    esi, word ptr [rbx]
0000000008dfca0a: 4c89ff                       mov      rdi, r15
0000000008dfca0d: e80e9b0000                   call     0x8e06520
0000000008dfca12: 0fbf7304                     movsx    esi, word ptr [rbx + 4]
0000000008dfca16: 4c89ff                       mov      rdi, r15
0000000008dfca19: e8229b0000                   call     0x8e06540
0000000008dfca1e: 4c89ff                       mov      rdi, r15
0000000008dfca21: e80a9a0000                   call     0x8e06430
0000000008dfca26: 4989c5                       mov      r13, rax
0000000008dfca29: 488b9424f0000000             mov      rdx, qword ptr [rsp + 0xf0]
0000000008dfca31: 4883ec08                     sub      rsp, 8
0000000008dfca35: 4c8b7c2418                   mov      r15, qword ptr [rsp + 0x18]
0000000008dfca3a: 4c89ff                       mov      rdi, r15
0000000008dfca3d: 4489f6                       mov      esi, r14d
0000000008dfca40: 4889e9                       mov      rcx, rbp
0000000008dfca43: 4989d8                       mov      r8, rbx
0000000008dfca46: 4989c1                       mov      r9, rax
0000000008dfca49: 4154                         push     r12
0000000008dfca4b: e870180000                   call     0x8dfe2c0
0000000008dfca50: 4883c410                     add      rsp, 0x10
0000000008dfca54: 4c89ef                       mov      rdi, r13
0000000008dfca57: e894bb0100                   call     0x8e185f0
0000000008dfca5c: 85c0                         test     eax, eax
0000000008dfca5e: 0f84af040000                 je       0x8dfcf13
0000000008dfca64: 0fbf7308                     movsx    esi, word ptr [rbx + 8]
0000000008dfca68: 4d89fc                       mov      r12, r15
0000000008dfca6b: 4c8dbc24b0010000             lea      r15, [rsp + 0x1b0]
0000000008dfca73: 4c89ff                       mov      rdi, r15
0000000008dfca76: e8459a0000                   call     0x8e064c0
0000000008dfca7b: 498b3c24                     mov      rdi, qword ptr [r12]
0000000008dfca7f: e82cd0ffff                   call     0x8df9ab0
0000000008dfca84: 4989c4                       mov      r12, rax
0000000008dfca87: 4c89ef                       mov      rdi, r13
0000000008dfca8a: e871bb0100                   call     0x8e18600
0000000008dfca8f: 4889c5                       mov      rbp, rax
0000000008dfca92: 4c89ef                       mov      rdi, r13
0000000008dfca95: e856bb0100                   call     0x8e185f0
0000000008dfca9a: 4863d0                       movsxd   rdx, eax
0000000008dfca9d: 0fb74b38                     movzx    ecx, word ptr [rbx + 0x38]
0000000008dfcaa1: 448b4318                     mov      r8d, dword ptr [rbx + 0x18]
0000000008dfcaa5: 4c89e7                       mov      rdi, r12
0000000008dfcaa8: 4889ee                       mov      rsi, rbp
0000000008dfcaab: e88064ffff                   call     0x8df2f30
0000000008dfcab0: 4c89ff                       mov      rdi, r15
0000000008dfcab3: 89c6                         mov      esi, eax
0000000008dfcab5: e8f69b0000                   call     0x8e066b0
0000000008dfcaba: 488d5c2418                   lea      rbx, [rsp + 0x18]
0000000008dfcabf: 4889df                       mov      rdi, rbx
0000000008dfcac2: e829b90100                   call     0x8e183f0
0000000008dfcac7: 4c89ff                       mov      rdi, r15
0000000008dfcaca: 4889de                       mov      rsi, rbx
0000000008dfcacd: e86e9c0000                   call     0x8e06740
0000000008dfcad2: 85c0                         test     eax, eax
0000000008dfcad4: 0f94c3                       sete     bl
0000000008dfcad7: 0f8485050000                 je       0x8dfd062
0000000008dfcadd: 89c5                         mov      ebp, eax
0000000008dfcadf: bf04000000                   mov      edi, 4
0000000008dfcae4: e8a7a13100                   call     0x9116c90
0000000008dfcae9: 85c0                         test     eax, eax
0000000008dfcaeb: 0f84df020000                 je       0x8dfcdd0
0000000008dfcaf1: 4189ec                       mov      r12d, ebp
0000000008dfcaf4: 488d1563d515f8               lea      rdx, [rip - 0x7ea2a9d]
0000000008dfcafb: 488d0df1c00bf8               lea      rcx, [rip - 0x7f43f0f]
0000000008dfcb02: 4c8d058a3511f8               lea      r8, [rip - 0x7eeca76]
0000000008dfcb09: 488dbc2458050000             lea      rdi, [rsp + 0x558]
0000000008dfcb11: be04000000                   mov      esi, 4
0000000008dfcb16: 41b984000000                 mov      r9d, 0x84
0000000008dfcb1c: 6a00                         push     0
0000000008dfcb1e: 6a00                         push     0
0000000008dfcb20: e87b4a3100                   call     0x91115a0
0000000008dfcb25: 4883c410                     add      rsp, 0x10
0000000008dfcb29: 48c78424a000000000000000     mov      qword ptr [rsp + 0xa0], 0
0000000008dfcb35: b807000000                   mov      eax, 7
0000000008dfcb3a: 488d8c24a7000000             lea      rcx, [rsp + 0xa7]
0000000008dfcb42: bacdcccccc                   mov      edx, 0xcccccccd
0000000008dfcb47: 4c8d3dbe2813f8               lea      r15, [rip - 0x7ecd742]
0000000008dfcb4e: 6690                         nop
0000000008dfcb50: 4489f6                       mov      esi, r14d
0000000008dfcb53: 480faff2                     imul     rsi, rdx
0000000008dfcb57: 48c1ee23                     shr      rsi, 0x23
0000000008dfcb5b: 8d3c36                       lea      edi, [rsi + rsi]
0000000008dfcb5e: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008dfcb61: f7df                         neg      edi
0000000008dfcb63: 4401f7                       add      edi, r14d
0000000008dfcb66: 83c723                       add      edi, 0x23
0000000008dfcb69: 420fb63c3f                   movzx    edi, byte ptr [rdi + r15]
0000000008dfcb6e: 40887901                     mov      byte ptr [rcx + 1], dil
0000000008dfcb72: 48ffc1                       inc      rcx
0000000008dfcb75: 48ffc0                       inc      rax
0000000008dfcb78: 4183fe09                     cmp      r14d, 9
0000000008dfcb7c: 4189f6                       mov      r14d, esi
0000000008dfcb7f: 77cf                         ja       0x8dfcb50
0000000008dfcb81: 488d9424a8000000             lea      rdx, [rsp + 0xa8]
0000000008dfcb89: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dfcb8d: 4883f809                     cmp      rax, 9
0000000008dfcb91: 722a                         jb       0x8dfcbbd
0000000008dfcb93: 488d8424a9000000             lea      rax, [rsp + 0xa9]
0000000008dfcb9b: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008dfcba0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfcba3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dfcba7: 408839                       mov      byte ptr [rcx], dil
0000000008dfcbaa: 48ffc9                       dec      rcx
0000000008dfcbad: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dfcbb1: 488d7001                     lea      rsi, [rax + 1]
0000000008dfcbb5: 4839c8                       cmp      rax, rcx
0000000008dfcbb8: 4889f0                       mov      rax, rsi
0000000008dfcbbb: 72e3                         jb       0x8dfcba0
0000000008dfcbbd: 48899424a0000000             mov      qword ptr [rsp + 0xa0], rdx
0000000008dfcbc5: 48c784246001000000000000     mov      qword ptr [rsp + 0x160], 0
0000000008dfcbd1: b808000000                   mov      eax, 8
0000000008dfcbd6: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000008dfcbe0: 4963cc                       movsxd   rcx, r12d
0000000008dfcbe3: 4c69e167666666               imul     r12, rcx, 0x66666667
0000000008dfcbea: 4c89e2                       mov      rdx, r12
0000000008dfcbed: 48c1ea3f                     shr      rdx, 0x3f
0000000008dfcbf1: 49c1fc22                     sar      r12, 0x22
0000000008dfcbf5: 4101d4                       add      r12d, edx
0000000008dfcbf8: 438d1424                     lea      edx, [r12 + r12]
0000000008dfcbfc: 8d1492                       lea      edx, [rdx + rdx*4]
0000000008dfcbff: 89ce                         mov      esi, ecx
0000000008dfcc01: 29d6                         sub      esi, edx
0000000008dfcc03: 4863d6                       movsxd   rdx, esi
0000000008dfcc06: 420fb6543a23                 movzx    edx, byte ptr [rdx + r15 + 0x23]
0000000008dfcc0c: 88940460010000               mov      byte ptr [rsp + rax + 0x160], dl
0000000008dfcc13: 48ffc0                       inc      rax
0000000008dfcc16: 83c109                       add      ecx, 9
0000000008dfcc19: 83f912                       cmp      ecx, 0x12
0000000008dfcc1c: 77c2                         ja       0x8dfcbe0
0000000008dfcc1e: 85ed                         test     ebp, ebp
0000000008dfcc20: 790b                         jns      0x8dfcc2d
0000000008dfcc22: c68404600100002d             mov      byte ptr [rsp + rax + 0x160], 0x2d
0000000008dfcc2a: 48ffc0                       inc      rax
0000000008dfcc2d: 488d8c2468010000             lea      rcx, [rsp + 0x168]
0000000008dfcc35: c684046001000000             mov      byte ptr [rsp + rax + 0x160], 0
0000000008dfcc3d: 4883f80a                     cmp      rax, 0xa
0000000008dfcc41: 7c3a                         jl       0x8dfcc7d
0000000008dfcc43: 4801e0                       add      rax, rsp
0000000008dfcc46: 480560010000                 add      rax, 0x160
0000000008dfcc4c: 48ffc8                       dec      rax
0000000008dfcc4f: 488d942469010000             lea      rdx, [rsp + 0x169]
0000000008dfcc57: 660f1f840000000000           nop      word ptr [rax + rax]
0000000008dfcc60: 0fb630                       movzx    esi, byte ptr [rax]
0000000008dfcc63: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008dfcc67: 408838                       mov      byte ptr [rax], dil
0000000008dfcc6a: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008dfcc6e: 48ffc8                       dec      rax
0000000008dfcc71: 488d7201                     lea      rsi, [rdx + 1]
0000000008dfcc75: 4839c2                       cmp      rdx, rax
0000000008dfcc78: 4889f2                       mov      rdx, rsi
0000000008dfcc7b: 72e3                         jb       0x8dfcc60
0000000008dfcc7d: 48898c2460010000             mov      qword ptr [rsp + 0x160], rcx
0000000008dfcc85: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfcc8d: e88e970000                   call     0x8e06420
0000000008dfcc92: 48c784241001000000000000     mov      qword ptr [rsp + 0x110], 0
0000000008dfcc9e: b908000000                   mov      ecx, 8
0000000008dfcca3: 89c2                         mov      edx, eax
0000000008dfcca5: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
0000000008dfccb0: 4863f2                       movsxd   rsi, edx
0000000008dfccb3: 4869d667666666               imul     rdx, rsi, 0x66666667
0000000008dfccba: 4889d7                       mov      rdi, rdx
0000000008dfccbd: 48c1ef3f                     shr      rdi, 0x3f
0000000008dfccc1: 48c1fa22                     sar      rdx, 0x22
0000000008dfccc5: 01fa                         add      edx, edi
0000000008dfccc7: 8d3c12                       lea      edi, [rdx + rdx]
0000000008dfccca: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008dfcccd: 4189f0                       mov      r8d, esi
0000000008dfccd0: 4129f8                       sub      r8d, edi
0000000008dfccd3: 4963f8                       movsxd   rdi, r8d
0000000008dfccd6: 420fb67c3f23                 movzx    edi, byte ptr [rdi + r15 + 0x23]
0000000008dfccdc: 4088bc0c10010000             mov      byte ptr [rsp + rcx + 0x110], dil
0000000008dfcce4: 48ffc1                       inc      rcx
0000000008dfcce7: 83c609                       add      esi, 9
0000000008dfccea: 83fe12                       cmp      esi, 0x12
0000000008dfcced: 77c1                         ja       0x8dfccb0
0000000008dfccef: 85c0                         test     eax, eax
0000000008dfccf1: 790b                         jns      0x8dfccfe
0000000008dfccf3: c6840c100100002d             mov      byte ptr [rsp + rcx + 0x110], 0x2d
0000000008dfccfb: 48ffc1                       inc      rcx
0000000008dfccfe: 488d842418010000             lea      rax, [rsp + 0x118]
0000000008dfcd06: c6840c1001000000             mov      byte ptr [rsp + rcx + 0x110], 0
0000000008dfcd0e: 4883f90a                     cmp      rcx, 0xa
0000000008dfcd12: 7c39                         jl       0x8dfcd4d
0000000008dfcd14: 4801e1                       add      rcx, rsp
0000000008dfcd17: 4881c110010000               add      rcx, 0x110
0000000008dfcd1e: 48ffc9                       dec      rcx
0000000008dfcd21: 488d942419010000             lea      rdx, [rsp + 0x119]
0000000008dfcd29: 0f1f8000000000               nop      dword ptr [rax]
0000000008dfcd30: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfcd33: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008dfcd37: 408839                       mov      byte ptr [rcx], dil
0000000008dfcd3a: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008dfcd3e: 48ffc9                       dec      rcx
0000000008dfcd41: 488d7201                     lea      rsi, [rdx + 1]
0000000008dfcd45: 4839ca                       cmp      rdx, rcx
0000000008dfcd48: 4889f2                       mov      rdx, rsi
0000000008dfcd4b: 72e3                         jb       0x8dfcd30
0000000008dfcd4d: 4889842410010000             mov      qword ptr [rsp + 0x110], rax
0000000008dfcd55: 488d8424a0000000             lea      rax, [rsp + 0xa0]
0000000008dfcd5d: 4889442420                   mov      qword ptr [rsp + 0x20], rax
0000000008dfcd62: 488d842460010000             lea      rax, [rsp + 0x160]
0000000008dfcd6a: 4889442428                   mov      qword ptr [rsp + 0x28], rax
0000000008dfcd6f: 488d842410010000             lea      rax, [rsp + 0x110]
0000000008dfcd77: 4889442430                   mov      qword ptr [rsp + 0x30], rax
0000000008dfcd7c: 0f57c0                       xorps    xmm0, xmm0
0000000008dfcd7f: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008dfcd84: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008dfcd89: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008dfcd8e: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008dfcd93: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008dfcd98: 0f11842488000000             movups   xmmword ptr [rsp + 0x88], xmm0
0000000008dfcda0: 48c784249800000000000000     mov      qword ptr [rsp + 0x98], 0
0000000008dfcdac: 488d35741f07f8               lea      rsi, [rip - 0x7f8e08c]
0000000008dfcdb3: 4c8db42458050000             lea      r14, [rsp + 0x558]
0000000008dfcdbb: 488d542420                   lea      rdx, [rsp + 0x20]
0000000008dfcdc0: 4c89f7                       mov      rdi, r14
0000000008dfcdc3: e8284b3100                   call     0x91118f0
0000000008dfcdc8: 4c89f7                       mov      rdi, r14
0000000008dfcdcb: e860483100                   call     0x9111630
0000000008dfcdd0: 488b842420060000             mov      rax, qword ptr [rsp + 0x620]
0000000008dfcdd8: c7402807000000               mov      dword ptr [rax + 0x28], 7
0000000008dfcddf: e9a80c0000                   jmp      0x8dfda8c
0000000008dfcde4: bf04000000                   mov      edi, 4
0000000008dfcde9: e8a29e3100                   call     0x9116c90
0000000008dfcdee: 85c0                         test     eax, eax
0000000008dfcdf0: 0f8465020000                 je       0x8dfd05b
0000000008dfcdf6: 488d1561d215f8               lea      rdx, [rip - 0x7ea2d9f]
0000000008dfcdfd: 488d0defbd0bf8               lea      rcx, [rip - 0x7f44211]
0000000008dfce04: 4c8d05883211f8               lea      r8, [rip - 0x7eecd78]
0000000008dfce0b: 488dbc2458050000             lea      rdi, [rsp + 0x558]
0000000008dfce13: be04000000                   mov      esi, 4
0000000008dfce18: 41b962000000                 mov      r9d, 0x62
0000000008dfce1e: 6a00                         push     0
0000000008dfce20: 6a00                         push     0
0000000008dfce22: e879473100                   call     0x91115a0
0000000008dfce27: 4883c410                     add      rsp, 0x10
0000000008dfce2b: 48c78424a000000000000000     mov      qword ptr [rsp + 0xa0], 0
0000000008dfce37: b807000000                   mov      eax, 7
0000000008dfce3c: 488d8c24a7000000             lea      rcx, [rsp + 0xa7]
0000000008dfce44: bacdcccccc                   mov      edx, 0xcccccccd
0000000008dfce49: 488d35bc2513f8               lea      rsi, [rip - 0x7ecda44]
0000000008dfce50: 4489f7                       mov      edi, r14d
0000000008dfce53: 480faffa                     imul     rdi, rdx
0000000008dfce57: 48c1ef23                     shr      rdi, 0x23
0000000008dfce5b: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfce5f: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfce63: 41f7d8                       neg      r8d
0000000008dfce66: 4501f0                       add      r8d, r14d
0000000008dfce69: 4183c023                     add      r8d, 0x23
0000000008dfce6d: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008dfce72: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008dfce76: 48ffc1                       inc      rcx
0000000008dfce79: 48ffc0                       inc      rax
0000000008dfce7c: 4183fe09                     cmp      r14d, 9
0000000008dfce80: 4189fe                       mov      r14d, edi
0000000008dfce83: 77cb                         ja       0x8dfce50
0000000008dfce85: 488d9424a8000000             lea      rdx, [rsp + 0xa8]
0000000008dfce8d: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dfce91: 4883f809                     cmp      rax, 9
0000000008dfce95: 7226                         jb       0x8dfcebd
0000000008dfce97: 488d8424a9000000             lea      rax, [rsp + 0xa9]
0000000008dfce9f: 90                           nop
0000000008dfcea0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfcea3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dfcea7: 408839                       mov      byte ptr [rcx], dil
0000000008dfceaa: 48ffc9                       dec      rcx
0000000008dfcead: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dfceb1: 488d7001                     lea      rsi, [rax + 1]
0000000008dfceb5: 4839c8                       cmp      rax, rcx
0000000008dfceb8: 4889f0                       mov      rax, rsi
0000000008dfcebb: 72e3                         jb       0x8dfcea0
0000000008dfcebd: 48899424a0000000             mov      qword ptr [rsp + 0xa0], rdx
0000000008dfcec5: 488d8424a0000000             lea      rax, [rsp + 0xa0]
0000000008dfcecd: 4889442420                   mov      qword ptr [rsp + 0x20], rax
0000000008dfced2: 0f57c0                       xorps    xmm0, xmm0
0000000008dfced5: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008dfceda: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008dfcedf: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008dfcee4: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008dfcee9: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008dfceee: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008dfcef3: 0f11842488000000             movups   xmmword ptr [rsp + 0x88], xmm0
0000000008dfcefb: 48c784249800000000000000     mov      qword ptr [rsp + 0x98], 0
0000000008dfcf07: 488d35a5fcfdf7               lea      rsi, [rip - 0x802035b]
0000000008dfcf0e: e92b010000                   jmp      0x8dfd03e
0000000008dfcf13: bf04000000                   mov      edi, 4
0000000008dfcf18: e8739d3100                   call     0x9116c90
0000000008dfcf1d: 85c0                         test     eax, eax
0000000008dfcf1f: 0f8436010000                 je       0x8dfd05b
0000000008dfcf25: 488d1532d115f8               lea      rdx, [rip - 0x7ea2ece]
0000000008dfcf2c: 488d0dc0bc0bf8               lea      rcx, [rip - 0x7f44340]
0000000008dfcf33: 4c8d05593111f8               lea      r8, [rip - 0x7eecea7]
0000000008dfcf3a: 488dbc2458050000             lea      rdi, [rsp + 0x558]
0000000008dfcf42: be04000000                   mov      esi, 4
0000000008dfcf47: 41b971000000                 mov      r9d, 0x71
0000000008dfcf4d: 6a00                         push     0
0000000008dfcf4f: 6a00                         push     0
0000000008dfcf51: e84a463100                   call     0x91115a0
0000000008dfcf56: 4883c410                     add      rsp, 0x10
0000000008dfcf5a: 48c78424a000000000000000     mov      qword ptr [rsp + 0xa0], 0
0000000008dfcf66: b807000000                   mov      eax, 7
0000000008dfcf6b: 488d8c24a7000000             lea      rcx, [rsp + 0xa7]
0000000008dfcf73: bacdcccccc                   mov      edx, 0xcccccccd
0000000008dfcf78: 488d358d2413f8               lea      rsi, [rip - 0x7ecdb73]
0000000008dfcf7f: 90                           nop
0000000008dfcf80: 4489f7                       mov      edi, r14d
0000000008dfcf83: 480faffa                     imul     rdi, rdx
0000000008dfcf87: 48c1ef23                     shr      rdi, 0x23
0000000008dfcf8b: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfcf8f: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfcf93: 41f7d8                       neg      r8d
0000000008dfcf96: 4501f0                       add      r8d, r14d
0000000008dfcf99: 4183c023                     add      r8d, 0x23
0000000008dfcf9d: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008dfcfa2: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008dfcfa6: 48ffc1                       inc      rcx
0000000008dfcfa9: 48ffc0                       inc      rax
0000000008dfcfac: 4183fe09                     cmp      r14d, 9
0000000008dfcfb0: 4189fe                       mov      r14d, edi
0000000008dfcfb3: 77cb                         ja       0x8dfcf80
0000000008dfcfb5: 488d9424a8000000             lea      rdx, [rsp + 0xa8]
0000000008dfcfbd: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dfcfc1: 4883f809                     cmp      rax, 9
0000000008dfcfc5: 7226                         jb       0x8dfcfed
0000000008dfcfc7: 488d8424a9000000             lea      rax, [rsp + 0xa9]
0000000008dfcfcf: 90                           nop
0000000008dfcfd0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfcfd3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dfcfd7: 408839                       mov      byte ptr [rcx], dil
0000000008dfcfda: 48ffc9                       dec      rcx
0000000008dfcfdd: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dfcfe1: 488d7001                     lea      rsi, [rax + 1]
0000000008dfcfe5: 4839c8                       cmp      rax, rcx
0000000008dfcfe8: 4889f0                       mov      rax, rsi
0000000008dfcfeb: 72e3                         jb       0x8dfcfd0
0000000008dfcfed: 48899424a0000000             mov      qword ptr [rsp + 0xa0], rdx
0000000008dfcff5: 488d8424a0000000             lea      rax, [rsp + 0xa0]
0000000008dfcffd: 4889442420                   mov      qword ptr [rsp + 0x20], rax
0000000008dfd002: 0f57c0                       xorps    xmm0, xmm0
0000000008dfd005: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008dfd00a: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008dfd00f: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008dfd014: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008dfd019: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008dfd01e: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008dfd023: 0f11842488000000             movups   xmmword ptr [rsp + 0x88], xmm0
0000000008dfd02b: 48c784249800000000000000     mov      qword ptr [rsp + 0x98], 0
0000000008dfd037: 488d35bfbb0bf8               lea      rsi, [rip - 0x7f44441]
0000000008dfd03e: 488d9c2458050000             lea      rbx, [rsp + 0x558]
0000000008dfd046: 488d542420                   lea      rdx, [rsp + 0x20]
0000000008dfd04b: 4889df                       mov      rdi, rbx
0000000008dfd04e: e89d483100                   call     0x91118f0
0000000008dfd053: 4889df                       mov      rdi, rbx
0000000008dfd056: e8d5453100                   call     0x9111630
0000000008dfd05b: 31db                         xor      ebx, ebx
0000000008dfd05d: e9340a0000                   jmp      0x8dfda96
0000000008dfd062: c744240c00000000             mov      dword ptr [rsp + 0xc], 0
0000000008dfd06a: 488d7c2418                   lea      rdi, [rsp + 0x18]
0000000008dfd06f: 488d74240c                   lea      rsi, [rsp + 0xc]
0000000008dfd074: e8b7b50100                   call     0x8e18630
0000000008dfd079: 486354240c                   movsxd   rdx, dword ptr [rsp + 0xc]
0000000008dfd07e: 488bbc2408010000             mov      rdi, qword ptr [rsp + 0x108]
0000000008dfd086: 4889c6                       mov      rsi, rax
0000000008dfd089: e892473200                   call     0x9121820
0000000008dfd08e: bf02000000                   mov      edi, 2
0000000008dfd093: e8f89b3100                   call     0x9116c90
0000000008dfd098: 85c0                         test     eax, eax
0000000008dfd09a: 0f84ec090000                 je       0x8dfda8c
0000000008dfd0a0: 488d15b7cf15f8               lea      rdx, [rip - 0x7ea3049]
0000000008dfd0a7: 488d0d45bb0bf8               lea      rcx, [rip - 0x7f444bb]
0000000008dfd0ae: 4c8d05de2f11f8               lea      r8, [rip - 0x7eed022]
0000000008dfd0b5: 488dbc2458050000             lea      rdi, [rsp + 0x558]
0000000008dfd0bd: be02000000                   mov      esi, 2
0000000008dfd0c2: 41b99d000000                 mov      r9d, 0x9d
0000000008dfd0c8: 6a00                         push     0
0000000008dfd0ca: 6a00                         push     0
0000000008dfd0cc: e8cf443100                   call     0x91115a0
0000000008dfd0d1: 4883c410                     add      rsp, 0x10
0000000008dfd0d5: 48c78424a000000000000000     mov      qword ptr [rsp + 0xa0], 0
0000000008dfd0e1: b807000000                   mov      eax, 7
0000000008dfd0e6: 488d8c24a7000000             lea      rcx, [rsp + 0xa7]
0000000008dfd0ee: bacdcccccc                   mov      edx, 0xcccccccd
0000000008dfd0f3: 4c8d3d122313f8               lea      r15, [rip - 0x7ecdcee]
0000000008dfd0fa: 660f1f440000                 nop      word ptr [rax + rax]
0000000008dfd100: 4489f6                       mov      esi, r14d
0000000008dfd103: 480faff2                     imul     rsi, rdx
0000000008dfd107: 48c1ee23                     shr      rsi, 0x23
0000000008dfd10b: 8d3c36                       lea      edi, [rsi + rsi]
0000000008dfd10e: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008dfd111: f7df                         neg      edi
0000000008dfd113: 4401f7                       add      edi, r14d
0000000008dfd116: 83c723                       add      edi, 0x23
0000000008dfd119: 420fb63c3f                   movzx    edi, byte ptr [rdi + r15]
0000000008dfd11e: 40887901                     mov      byte ptr [rcx + 1], dil
0000000008dfd122: 48ffc1                       inc      rcx
0000000008dfd125: 48ffc0                       inc      rax
0000000008dfd128: 4183fe09                     cmp      r14d, 9
0000000008dfd12c: 4189f6                       mov      r14d, esi
0000000008dfd12f: 77cf                         ja       0x8dfd100
0000000008dfd131: 488d9424a8000000             lea      rdx, [rsp + 0xa8]
0000000008dfd139: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dfd13d: 4883f809                     cmp      rax, 9
0000000008dfd141: 722a                         jb       0x8dfd16d
0000000008dfd143: 488d8424a9000000             lea      rax, [rsp + 0xa9]
0000000008dfd14b: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008dfd150: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfd153: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dfd157: 408839                       mov      byte ptr [rcx], dil
0000000008dfd15a: 48ffc9                       dec      rcx
0000000008dfd15d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dfd161: 488d7001                     lea      rsi, [rax + 1]
0000000008dfd165: 4839c8                       cmp      rax, rcx
0000000008dfd168: 4889f0                       mov      rax, rsi
0000000008dfd16b: 72e3                         jb       0x8dfd150
0000000008dfd16d: 48899424a0000000             mov      qword ptr [rsp + 0xa0], rdx
0000000008dfd175: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfd17d: e89e940000                   call     0x8e06620
0000000008dfd182: 48c784246001000000000000     mov      qword ptr [rsp + 0x160], 0
0000000008dfd18e: b907000000                   mov      ecx, 7
0000000008dfd193: 488d942467010000             lea      rdx, [rsp + 0x167]
0000000008dfd19b: becdcccccc                   mov      esi, 0xcccccccd
0000000008dfd1a0: 89c7                         mov      edi, eax
0000000008dfd1a2: 480faffe                     imul     rdi, rsi
0000000008dfd1a6: 48c1ef23                     shr      rdi, 0x23
0000000008dfd1aa: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfd1ae: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfd1b2: 41f7d8                       neg      r8d
0000000008dfd1b5: 4101c0                       add      r8d, eax
0000000008dfd1b8: 4183c023                     add      r8d, 0x23
0000000008dfd1bc: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008dfd1c1: 44884201                     mov      byte ptr [rdx + 1], r8b
0000000008dfd1c5: 48ffc2                       inc      rdx
0000000008dfd1c8: 48ffc1                       inc      rcx
0000000008dfd1cb: 83f809                       cmp      eax, 9
0000000008dfd1ce: 89f8                         mov      eax, edi
0000000008dfd1d0: 77ce                         ja       0x8dfd1a0
0000000008dfd1d2: 488d842468010000             lea      rax, [rsp + 0x168]
0000000008dfd1da: c6420100                     mov      byte ptr [rdx + 1], 0
0000000008dfd1de: 4883f909                     cmp      rcx, 9
0000000008dfd1e2: 7229                         jb       0x8dfd20d
0000000008dfd1e4: 488d8c2469010000             lea      rcx, [rsp + 0x169]
0000000008dfd1ec: 0f1f4000                     nop      dword ptr [rax]
0000000008dfd1f0: 0fb632                       movzx    esi, byte ptr [rdx]
0000000008dfd1f3: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008dfd1f7: 40883a                       mov      byte ptr [rdx], dil
0000000008dfd1fa: 48ffca                       dec      rdx
0000000008dfd1fd: 408871ff                     mov      byte ptr [rcx - 1], sil
0000000008dfd201: 488d7101                     lea      rsi, [rcx + 1]
0000000008dfd205: 4839d1                       cmp      rcx, rdx
0000000008dfd208: 4889f1                       mov      rcx, rsi
0000000008dfd20b: 72e3                         jb       0x8dfd1f0
0000000008dfd20d: 4889842460010000             mov      qword ptr [rsp + 0x160], rax
0000000008dfd215: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfd21d: e85e940000                   call     0x8e06680
0000000008dfd222: 0fb6d0                       movzx    edx, al
0000000008dfd225: 48c784241001000000000000     mov      qword ptr [rsp + 0x110], 0
0000000008dfd231: b907000000                   mov      ecx, 7
0000000008dfd236: 488d842417010000             lea      rax, [rsp + 0x117]
0000000008dfd23e: becdcccccc                   mov      esi, 0xcccccccd
0000000008dfd243: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
0000000008dfd250: 89d7                         mov      edi, edx
0000000008dfd252: 480faffe                     imul     rdi, rsi
0000000008dfd256: 48c1ef23                     shr      rdi, 0x23
0000000008dfd25a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfd25e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfd262: 4189d1                       mov      r9d, edx
0000000008dfd265: 4529c1                       sub      r9d, r8d
0000000008dfd268: 4d63c1                       movsxd   r8, r9d
0000000008dfd26b: 470fb6443823                 movzx    r8d, byte ptr [r8 + r15 + 0x23]
0000000008dfd271: 44884001                     mov      byte ptr [rax + 1], r8b
0000000008dfd275: 48ffc0                       inc      rax
0000000008dfd278: 48ffc1                       inc      rcx
0000000008dfd27b: 83fa09                       cmp      edx, 9
0000000008dfd27e: 89fa                         mov      edx, edi
0000000008dfd280: 77ce                         ja       0x8dfd250
0000000008dfd282: 488d942418010000             lea      rdx, [rsp + 0x118]
0000000008dfd28a: c6400100                     mov      byte ptr [rax + 1], 0
0000000008dfd28e: 4883f909                     cmp      rcx, 9
0000000008dfd292: 7229                         jb       0x8dfd2bd
0000000008dfd294: 488d8c2419010000             lea      rcx, [rsp + 0x119]
0000000008dfd29c: 0f1f4000                     nop      dword ptr [rax]
0000000008dfd2a0: 0fb630                       movzx    esi, byte ptr [rax]
0000000008dfd2a3: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008dfd2a7: 408838                       mov      byte ptr [rax], dil
0000000008dfd2aa: 408871ff                     mov      byte ptr [rcx - 1], sil
0000000008dfd2ae: 48ffc8                       dec      rax
0000000008dfd2b1: 488d7101                     lea      rsi, [rcx + 1]
0000000008dfd2b5: 4839c1                       cmp      rcx, rax
0000000008dfd2b8: 4889f1                       mov      rcx, rsi
0000000008dfd2bb: 72e3                         jb       0x8dfd2a0
0000000008dfd2bd: 4889942410010000             mov      qword ptr [rsp + 0x110], rdx
0000000008dfd2c5: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfd2cd: e80e940000                   call     0x8e066e0
0000000008dfd2d2: 0fb6d0                       movzx    edx, al
0000000008dfd2d5: 48c784240805000000000000     mov      qword ptr [rsp + 0x508], 0
0000000008dfd2e1: b907000000                   mov      ecx, 7
0000000008dfd2e6: 488d84240f050000             lea      rax, [rsp + 0x50f]
0000000008dfd2ee: becdcccccc                   mov      esi, 0xcccccccd
0000000008dfd2f3: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
0000000008dfd300: 89d7                         mov      edi, edx
0000000008dfd302: 480faffe                     imul     rdi, rsi
0000000008dfd306: 48c1ef23                     shr      rdi, 0x23
0000000008dfd30a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfd30e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfd312: 4189d1                       mov      r9d, edx
0000000008dfd315: 4529c1                       sub      r9d, r8d
0000000008dfd318: 4d63c1                       movsxd   r8, r9d
0000000008dfd31b: 470fb6443823                 movzx    r8d, byte ptr [r8 + r15 + 0x23]
0000000008dfd321: 44884001                     mov      byte ptr [rax + 1], r8b
0000000008dfd325: 48ffc0                       inc      rax
0000000008dfd328: 48ffc1                       inc      rcx
0000000008dfd32b: 83fa09                       cmp      edx, 9
0000000008dfd32e: 89fa                         mov      edx, edi
0000000008dfd330: 77ce                         ja       0x8dfd300
0000000008dfd332: 488d942410050000             lea      rdx, [rsp + 0x510]
0000000008dfd33a: c6400100                     mov      byte ptr [rax + 1], 0
0000000008dfd33e: 4883f909                     cmp      rcx, 9
0000000008dfd342: 7229                         jb       0x8dfd36d
0000000008dfd344: 488d8c2411050000             lea      rcx, [rsp + 0x511]
0000000008dfd34c: 0f1f4000                     nop      dword ptr [rax]
0000000008dfd350: 0fb630                       movzx    esi, byte ptr [rax]
0000000008dfd353: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008dfd357: 408838                       mov      byte ptr [rax], dil
0000000008dfd35a: 408871ff                     mov      byte ptr [rcx - 1], sil
0000000008dfd35e: 48ffc8                       dec      rax
0000000008dfd361: 488d7101                     lea      rsi, [rcx + 1]
0000000008dfd365: 4839c1                       cmp      rcx, rax
0000000008dfd368: 4889f1                       mov      rcx, rsi
0000000008dfd36b: 72e3                         jb       0x8dfd350
0000000008dfd36d: 4889942408050000             mov      qword ptr [rsp + 0x508], rdx
0000000008dfd375: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfd37d: e88e910000                   call     0x8e06510
0000000008dfd382: 0fbfd0                       movsx    edx, ax
0000000008dfd385: 48c784247002000000000000     mov      qword ptr [rsp + 0x270], 0
0000000008dfd391: b908000000                   mov      ecx, 8
0000000008dfd396: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000008dfd3a0: 4863f2                       movsxd   rsi, edx
0000000008dfd3a3: 4869d667666666               imul     rdx, rsi, 0x66666667
0000000008dfd3aa: 4889d7                       mov      rdi, rdx
0000000008dfd3ad: 48c1ef3f                     shr      rdi, 0x3f
0000000008dfd3b1: 48c1fa22                     sar      rdx, 0x22
0000000008dfd3b5: 01fa                         add      edx, edi
0000000008dfd3b7: 8d3c12                       lea      edi, [rdx + rdx]
0000000008dfd3ba: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008dfd3bd: 4189f0                       mov      r8d, esi
0000000008dfd3c0: 4129f8                       sub      r8d, edi
0000000008dfd3c3: 4963f8                       movsxd   rdi, r8d
0000000008dfd3c6: 420fb67c3f23                 movzx    edi, byte ptr [rdi + r15 + 0x23]
0000000008dfd3cc: 4088bc0c70020000             mov      byte ptr [rsp + rcx + 0x270], dil
0000000008dfd3d4: 48ffc1                       inc      rcx
0000000008dfd3d7: 83c609                       add      esi, 9
0000000008dfd3da: 83fe12                       cmp      esi, 0x12
0000000008dfd3dd: 77c1                         ja       0x8dfd3a0
0000000008dfd3df: 6685c0                       test     ax, ax
0000000008dfd3e2: 790b                         jns      0x8dfd3ef
0000000008dfd3e4: c6840c700200002d             mov      byte ptr [rsp + rcx + 0x270], 0x2d
0000000008dfd3ec: 48ffc1                       inc      rcx
0000000008dfd3ef: 488d842478020000             lea      rax, [rsp + 0x278]
0000000008dfd3f7: c6840c7002000000             mov      byte ptr [rsp + rcx + 0x270], 0
0000000008dfd3ff: 4883f90a                     cmp      rcx, 0xa
0000000008dfd403: 7c38                         jl       0x8dfd43d
0000000008dfd405: 4801e1                       add      rcx, rsp
0000000008dfd408: 4881c170020000               add      rcx, 0x270
0000000008dfd40f: 48ffc9                       dec      rcx
0000000008dfd412: 488d942479020000             lea      rdx, [rsp + 0x279]
0000000008dfd41a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008dfd420: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfd423: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008dfd427: 408839                       mov      byte ptr [rcx], dil
0000000008dfd42a: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008dfd42e: 48ffc9                       dec      rcx
0000000008dfd431: 488d7201                     lea      rsi, [rdx + 1]
0000000008dfd435: 4839ca                       cmp      rdx, rcx
0000000008dfd438: 4889f2                       mov      rdx, rsi
0000000008dfd43b: 72e3                         jb       0x8dfd420
0000000008dfd43d: 4889842470020000             mov      qword ptr [rsp + 0x270], rax
0000000008dfd445: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfd44d: e87e900000                   call     0x8e064d0
0000000008dfd452: 48c78424b804000000000000     mov      qword ptr [rsp + 0x4b8], 0
0000000008dfd45e: b907000000                   mov      ecx, 7
0000000008dfd463: 488d9424bf040000             lea      rdx, [rsp + 0x4bf]
0000000008dfd46b: becdcccccc                   mov      esi, 0xcccccccd
0000000008dfd470: 89c7                         mov      edi, eax
0000000008dfd472: 480faffe                     imul     rdi, rsi
0000000008dfd476: 48c1ef23                     shr      rdi, 0x23
0000000008dfd47a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfd47e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfd482: 41f7d8                       neg      r8d
0000000008dfd485: 4101c0                       add      r8d, eax
0000000008dfd488: 4183c023                     add      r8d, 0x23
0000000008dfd48c: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008dfd491: 44884201                     mov      byte ptr [rdx + 1], r8b
0000000008dfd495: 48ffc2                       inc      rdx
0000000008dfd498: 48ffc1                       inc      rcx
0000000008dfd49b: 83f809                       cmp      eax, 9
0000000008dfd49e: 89f8                         mov      eax, edi
0000000008dfd4a0: 77ce                         ja       0x8dfd470
0000000008dfd4a2: 488d8424c0040000             lea      rax, [rsp + 0x4c0]
0000000008dfd4aa: c6420100                     mov      byte ptr [rdx + 1], 0
0000000008dfd4ae: 4883f909                     cmp      rcx, 9
0000000008dfd4b2: 7229                         jb       0x8dfd4dd
0000000008dfd4b4: 488d8c24c1040000             lea      rcx, [rsp + 0x4c1]
0000000008dfd4bc: 0f1f4000                     nop      dword ptr [rax]
0000000008dfd4c0: 0fb632                       movzx    esi, byte ptr [rdx]
0000000008dfd4c3: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008dfd4c7: 40883a                       mov      byte ptr [rdx], dil
0000000008dfd4ca: 48ffca                       dec      rdx
0000000008dfd4cd: 408871ff                     mov      byte ptr [rcx - 1], sil
0000000008dfd4d1: 488d7101                     lea      rsi, [rcx + 1]
0000000008dfd4d5: 4839d1                       cmp      rcx, rdx
0000000008dfd4d8: 4889f1                       mov      rcx, rsi
0000000008dfd4db: 72e3                         jb       0x8dfd4c0
0000000008dfd4dd: 48898424b8040000             mov      qword ptr [rsp + 0x4b8], rax
0000000008dfd4e5: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfd4ed: e8fe8f0000                   call     0x8e064f0
0000000008dfd4f2: 48c784246804000000000000     mov      qword ptr [rsp + 0x468], 0
0000000008dfd4fe: b907000000                   mov      ecx, 7
0000000008dfd503: 488d94246f040000             lea      rdx, [rsp + 0x46f]
0000000008dfd50b: becdcccccc                   mov      esi, 0xcccccccd
0000000008dfd510: 89c7                         mov      edi, eax
0000000008dfd512: 480faffe                     imul     rdi, rsi
0000000008dfd516: 48c1ef23                     shr      rdi, 0x23
0000000008dfd51a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfd51e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfd522: 41f7d8                       neg      r8d
0000000008dfd525: 4101c0                       add      r8d, eax
0000000008dfd528: 4183c023                     add      r8d, 0x23
0000000008dfd52c: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008dfd531: 44884201                     mov      byte ptr [rdx + 1], r8b
0000000008dfd535: 48ffc2                       inc      rdx
0000000008dfd538: 48ffc1                       inc      rcx
0000000008dfd53b: 83f809                       cmp      eax, 9
0000000008dfd53e: 89f8                         mov      eax, edi
0000000008dfd540: 77ce                         ja       0x8dfd510
0000000008dfd542: 488d842470040000             lea      rax, [rsp + 0x470]
0000000008dfd54a: c6420100                     mov      byte ptr [rdx + 1], 0
0000000008dfd54e: 4883f909                     cmp      rcx, 9
0000000008dfd552: 7229                         jb       0x8dfd57d
0000000008dfd554: 488d8c2471040000             lea      rcx, [rsp + 0x471]
0000000008dfd55c: 0f1f4000                     nop      dword ptr [rax]
0000000008dfd560: 0fb632                       movzx    esi, byte ptr [rdx]
0000000008dfd563: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008dfd567: 40883a                       mov      byte ptr [rdx], dil
0000000008dfd56a: 48ffca                       dec      rdx
0000000008dfd56d: 408871ff                     mov      byte ptr [rcx - 1], sil
0000000008dfd571: 488d7101                     lea      rsi, [rcx + 1]
0000000008dfd575: 4839d1                       cmp      rcx, rdx
0000000008dfd578: 4889f1                       mov      rcx, rsi
0000000008dfd57b: 72e3                         jb       0x8dfd560
0000000008dfd57d: 4889842468040000             mov      qword ptr [rsp + 0x468], rax
0000000008dfd585: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfd58d: e81e8f0000                   call     0x8e064b0
0000000008dfd592: 0fbfd0                       movsx    edx, ax
0000000008dfd595: 48c784242002000000000000     mov      qword ptr [rsp + 0x220], 0
0000000008dfd5a1: b908000000                   mov      ecx, 8
0000000008dfd5a6: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000008dfd5b0: 4863f2                       movsxd   rsi, edx
0000000008dfd5b3: 4869d667666666               imul     rdx, rsi, 0x66666667
0000000008dfd5ba: 4889d7                       mov      rdi, rdx
0000000008dfd5bd: 48c1ef3f                     shr      rdi, 0x3f
0000000008dfd5c1: 48c1fa22                     sar      rdx, 0x22
0000000008dfd5c5: 01fa                         add      edx, edi
0000000008dfd5c7: 8d3c12                       lea      edi, [rdx + rdx]
0000000008dfd5ca: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008dfd5cd: 4189f0                       mov      r8d, esi
0000000008dfd5d0: 4129f8                       sub      r8d, edi
0000000008dfd5d3: 4963f8                       movsxd   rdi, r8d
0000000008dfd5d6: 420fb67c3f23                 movzx    edi, byte ptr [rdi + r15 + 0x23]
0000000008dfd5dc: 4088bc0c20020000             mov      byte ptr [rsp + rcx + 0x220], dil
0000000008dfd5e4: 48ffc1                       inc      rcx
0000000008dfd5e7: 83c609                       add      esi, 9
0000000008dfd5ea: 83fe12                       cmp      esi, 0x12
0000000008dfd5ed: 77c1                         ja       0x8dfd5b0
0000000008dfd5ef: 6685c0                       test     ax, ax
0000000008dfd5f2: 790b                         jns      0x8dfd5ff
0000000008dfd5f4: c6840c200200002d             mov      byte ptr [rsp + rcx + 0x220], 0x2d
0000000008dfd5fc: 48ffc1                       inc      rcx
0000000008dfd5ff: 488d842428020000             lea      rax, [rsp + 0x228]
0000000008dfd607: c6840c2002000000             mov      byte ptr [rsp + rcx + 0x220], 0
0000000008dfd60f: 4883f90a                     cmp      rcx, 0xa
0000000008dfd613: 7c38                         jl       0x8dfd64d
0000000008dfd615: 4801e1                       add      rcx, rsp
0000000008dfd618: 4881c120020000               add      rcx, 0x220
0000000008dfd61f: 48ffc9                       dec      rcx
0000000008dfd622: 488d942429020000             lea      rdx, [rsp + 0x229]
0000000008dfd62a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008dfd630: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfd633: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008dfd637: 408839                       mov      byte ptr [rcx], dil
0000000008dfd63a: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008dfd63e: 48ffc9                       dec      rcx
0000000008dfd641: 488d7201                     lea      rsi, [rdx + 1]
0000000008dfd645: 4839ca                       cmp      rdx, rcx
0000000008dfd648: 4889f2                       mov      rdx, rsi
0000000008dfd64b: 72e3                         jb       0x8dfd630
0000000008dfd64d: 4889842420020000             mov      qword ptr [rsp + 0x220], rax
0000000008dfd655: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfd65d: e85e900000                   call     0x8e066c0
0000000008dfd662: 0fb6d0                       movzx    edx, al
0000000008dfd665: 48c784241804000000000000     mov      qword ptr [rsp + 0x418], 0
0000000008dfd671: b907000000                   mov      ecx, 7
0000000008dfd676: 488d84241f040000             lea      rax, [rsp + 0x41f]
0000000008dfd67e: becdcccccc                   mov      esi, 0xcccccccd
0000000008dfd683: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
0000000008dfd690: 89d7                         mov      edi, edx
0000000008dfd692: 480faffe                     imul     rdi, rsi
0000000008dfd696: 48c1ef23                     shr      rdi, 0x23
0000000008dfd69a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfd69e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfd6a2: 4189d1                       mov      r9d, edx
0000000008dfd6a5: 4529c1                       sub      r9d, r8d
0000000008dfd6a8: 4d63c1                       movsxd   r8, r9d
0000000008dfd6ab: 470fb6443823                 movzx    r8d, byte ptr [r8 + r15 + 0x23]
0000000008dfd6b1: 44884001                     mov      byte ptr [rax + 1], r8b
0000000008dfd6b5: 48ffc0                       inc      rax
0000000008dfd6b8: 48ffc1                       inc      rcx
0000000008dfd6bb: 83fa09                       cmp      edx, 9
0000000008dfd6be: 89fa                         mov      edx, edi
0000000008dfd6c0: 77ce                         ja       0x8dfd690
0000000008dfd6c2: 488d942420040000             lea      rdx, [rsp + 0x420]
0000000008dfd6ca: c6400100                     mov      byte ptr [rax + 1], 0
0000000008dfd6ce: 4883f909                     cmp      rcx, 9
0000000008dfd6d2: 7229                         jb       0x8dfd6fd
0000000008dfd6d4: 488d8c2421040000             lea      rcx, [rsp + 0x421]
0000000008dfd6dc: 0f1f4000                     nop      dword ptr [rax]
0000000008dfd6e0: 0fb630                       movzx    esi, byte ptr [rax]
0000000008dfd6e3: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008dfd6e7: 408838                       mov      byte ptr [rax], dil
0000000008dfd6ea: 408871ff                     mov      byte ptr [rcx - 1], sil
0000000008dfd6ee: 48ffc8                       dec      rax
0000000008dfd6f1: 488d7101                     lea      rsi, [rcx + 1]
0000000008dfd6f5: 4839c1                       cmp      rcx, rax
0000000008dfd6f8: 4889f1                       mov      rcx, rsi
0000000008dfd6fb: 72e3                         jb       0x8dfd6e0
0000000008dfd6fd: 4889942418040000             mov      qword ptr [rsp + 0x418], rdx
0000000008dfd705: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfd70d: e8ee8f0000                   call     0x8e06700
0000000008dfd712: 0fb7d0                       movzx    edx, ax
0000000008dfd715: 48c78424c803000000000000     mov      qword ptr [rsp + 0x3c8], 0
0000000008dfd721: b907000000                   mov      ecx, 7
0000000008dfd726: 488d8424cf030000             lea      rax, [rsp + 0x3cf]
0000000008dfd72e: becdcccccc                   mov      esi, 0xcccccccd
0000000008dfd733: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
0000000008dfd740: 89d7                         mov      edi, edx
0000000008dfd742: 480faffe                     imul     rdi, rsi
0000000008dfd746: 48c1ef23                     shr      rdi, 0x23
0000000008dfd74a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfd74e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfd752: 4189d1                       mov      r9d, edx
0000000008dfd755: 4529c1                       sub      r9d, r8d
0000000008dfd758: 4d63c1                       movsxd   r8, r9d
0000000008dfd75b: 470fb6443823                 movzx    r8d, byte ptr [r8 + r15 + 0x23]
0000000008dfd761: 44884001                     mov      byte ptr [rax + 1], r8b
0000000008dfd765: 48ffc0                       inc      rax
0000000008dfd768: 48ffc1                       inc      rcx
0000000008dfd76b: 83fa09                       cmp      edx, 9
0000000008dfd76e: 89fa                         mov      edx, edi
0000000008dfd770: 77ce                         ja       0x8dfd740
0000000008dfd772: 488d9424d0030000             lea      rdx, [rsp + 0x3d0]
0000000008dfd77a: c6400100                     mov      byte ptr [rax + 1], 0
0000000008dfd77e: 4883f909                     cmp      rcx, 9
0000000008dfd782: 7229                         jb       0x8dfd7ad
0000000008dfd784: 488d8c24d1030000             lea      rcx, [rsp + 0x3d1]
0000000008dfd78c: 0f1f4000                     nop      dword ptr [rax]
0000000008dfd790: 0fb630                       movzx    esi, byte ptr [rax]
0000000008dfd793: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008dfd797: 408838                       mov      byte ptr [rax], dil
0000000008dfd79a: 408871ff                     mov      byte ptr [rcx - 1], sil
0000000008dfd79e: 48ffc8                       dec      rax
0000000008dfd7a1: 488d7101                     lea      rsi, [rcx + 1]
0000000008dfd7a5: 4839c1                       cmp      rcx, rax
0000000008dfd7a8: 4889f1                       mov      rcx, rsi
0000000008dfd7ab: 72e3                         jb       0x8dfd790
0000000008dfd7ad: 48899424c8030000             mov      qword ptr [rsp + 0x3c8], rdx
0000000008dfd7b5: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfd7bd: e89e8e0000                   call     0x8e06660
0000000008dfd7c2: 48c784247803000000000000     mov      qword ptr [rsp + 0x378], 0
0000000008dfd7ce: b907000000                   mov      ecx, 7
0000000008dfd7d3: 488d94247f030000             lea      rdx, [rsp + 0x37f]
0000000008dfd7db: becdcccccc                   mov      esi, 0xcccccccd
0000000008dfd7e0: 89c7                         mov      edi, eax
0000000008dfd7e2: 480faffe                     imul     rdi, rsi
0000000008dfd7e6: 48c1ef23                     shr      rdi, 0x23
0000000008dfd7ea: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfd7ee: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfd7f2: 41f7d8                       neg      r8d
0000000008dfd7f5: 4101c0                       add      r8d, eax
0000000008dfd7f8: 4183c023                     add      r8d, 0x23
0000000008dfd7fc: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008dfd801: 44884201                     mov      byte ptr [rdx + 1], r8b
0000000008dfd805: 48ffc2                       inc      rdx
0000000008dfd808: 48ffc1                       inc      rcx
0000000008dfd80b: 83f809                       cmp      eax, 9
0000000008dfd80e: 89f8                         mov      eax, edi
0000000008dfd810: 77ce                         ja       0x8dfd7e0
0000000008dfd812: 488d842480030000             lea      rax, [rsp + 0x380]
0000000008dfd81a: c6420100                     mov      byte ptr [rdx + 1], 0
0000000008dfd81e: 4883f909                     cmp      rcx, 9
0000000008dfd822: 7229                         jb       0x8dfd84d
0000000008dfd824: 488d8c2481030000             lea      rcx, [rsp + 0x381]
0000000008dfd82c: 0f1f4000                     nop      dword ptr [rax]
0000000008dfd830: 0fb632                       movzx    esi, byte ptr [rdx]
0000000008dfd833: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008dfd837: 40883a                       mov      byte ptr [rdx], dil
0000000008dfd83a: 48ffca                       dec      rdx
0000000008dfd83d: 408871ff                     mov      byte ptr [rcx - 1], sil
0000000008dfd841: 488d7101                     lea      rsi, [rcx + 1]
0000000008dfd845: 4839d1                       cmp      rcx, rdx
0000000008dfd848: 4889f1                       mov      rcx, rsi
0000000008dfd84b: 72e3                         jb       0x8dfd830
0000000008dfd84d: 4889842478030000             mov      qword ptr [rsp + 0x378], rax
0000000008dfd855: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfd85d: e8be8e0000                   call     0x8e06720
0000000008dfd862: 0fb7d0                       movzx    edx, ax
0000000008dfd865: 48c784242803000000000000     mov      qword ptr [rsp + 0x328], 0
0000000008dfd871: b907000000                   mov      ecx, 7
0000000008dfd876: 488d84242f030000             lea      rax, [rsp + 0x32f]
0000000008dfd87e: becdcccccc                   mov      esi, 0xcccccccd
0000000008dfd883: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
0000000008dfd890: 89d7                         mov      edi, edx
0000000008dfd892: 480faffe                     imul     rdi, rsi
0000000008dfd896: 48c1ef23                     shr      rdi, 0x23
0000000008dfd89a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfd89e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfd8a2: 4189d1                       mov      r9d, edx
0000000008dfd8a5: 4529c1                       sub      r9d, r8d
0000000008dfd8a8: 4d63c1                       movsxd   r8, r9d
0000000008dfd8ab: 470fb6443823                 movzx    r8d, byte ptr [r8 + r15 + 0x23]
0000000008dfd8b1: 44884001                     mov      byte ptr [rax + 1], r8b
0000000008dfd8b5: 48ffc0                       inc      rax
0000000008dfd8b8: 48ffc1                       inc      rcx
0000000008dfd8bb: 83fa09                       cmp      edx, 9
0000000008dfd8be: 89fa                         mov      edx, edi
0000000008dfd8c0: 77ce                         ja       0x8dfd890
0000000008dfd8c2: 488d942430030000             lea      rdx, [rsp + 0x330]
0000000008dfd8ca: c6400100                     mov      byte ptr [rax + 1], 0
0000000008dfd8ce: 4883f909                     cmp      rcx, 9
0000000008dfd8d2: 7229                         jb       0x8dfd8fd
0000000008dfd8d4: 488d8c2431030000             lea      rcx, [rsp + 0x331]
0000000008dfd8dc: 0f1f4000                     nop      dword ptr [rax]
0000000008dfd8e0: 0fb630                       movzx    esi, byte ptr [rax]
0000000008dfd8e3: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008dfd8e7: 408838                       mov      byte ptr [rax], dil
0000000008dfd8ea: 408871ff                     mov      byte ptr [rcx - 1], sil
0000000008dfd8ee: 48ffc8                       dec      rax
0000000008dfd8f1: 488d7101                     lea      rsi, [rcx + 1]
0000000008dfd8f5: 4839c1                       cmp      rcx, rax
0000000008dfd8f8: 4889f1                       mov      rcx, rsi
0000000008dfd8fb: 72e3                         jb       0x8dfd8e0
0000000008dfd8fd: 4889942428030000             mov      qword ptr [rsp + 0x328], rdx
0000000008dfd905: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfd90d: e88e8d0000                   call     0x8e066a0
0000000008dfd912: 48c78424d802000000000000     mov      qword ptr [rsp + 0x2d8], 0
0000000008dfd91e: b907000000                   mov      ecx, 7
0000000008dfd923: 488d9424df020000             lea      rdx, [rsp + 0x2df]
0000000008dfd92b: becdcccccc                   mov      esi, 0xcccccccd
0000000008dfd930: 89c7                         mov      edi, eax
0000000008dfd932: 480faffe                     imul     rdi, rsi
0000000008dfd936: 48c1ef23                     shr      rdi, 0x23
0000000008dfd93a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfd93e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfd942: 41f7d8                       neg      r8d
0000000008dfd945: 4101c0                       add      r8d, eax
0000000008dfd948: 4183c023                     add      r8d, 0x23
0000000008dfd94c: 470fb60438                   movzx    r8d, byte ptr [r8 + r15]
0000000008dfd951: 44884201                     mov      byte ptr [rdx + 1], r8b
0000000008dfd955: 48ffc2                       inc      rdx
0000000008dfd958: 48ffc1                       inc      rcx
0000000008dfd95b: 83f809                       cmp      eax, 9
0000000008dfd95e: 89f8                         mov      eax, edi
0000000008dfd960: 77ce                         ja       0x8dfd930
0000000008dfd962: 488d8424e0020000             lea      rax, [rsp + 0x2e0]
0000000008dfd96a: c6420100                     mov      byte ptr [rdx + 1], 0
0000000008dfd96e: 4883f909                     cmp      rcx, 9
0000000008dfd972: 7229                         jb       0x8dfd99d
0000000008dfd974: 488d8c24e1020000             lea      rcx, [rsp + 0x2e1]
0000000008dfd97c: 0f1f4000                     nop      dword ptr [rax]
0000000008dfd980: 0fb632                       movzx    esi, byte ptr [rdx]
0000000008dfd983: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008dfd987: 40883a                       mov      byte ptr [rdx], dil
0000000008dfd98a: 48ffca                       dec      rdx
0000000008dfd98d: 408871ff                     mov      byte ptr [rcx - 1], sil
0000000008dfd991: 488d7101                     lea      rsi, [rcx + 1]
0000000008dfd995: 4839d1                       cmp      rcx, rdx
0000000008dfd998: 4889f1                       mov      rcx, rsi
0000000008dfd99b: 72e3                         jb       0x8dfd980
0000000008dfd99d: 48898424d8020000             mov      qword ptr [rsp + 0x2d8], rax
0000000008dfd9a5: 488d8424a0000000             lea      rax, [rsp + 0xa0]
0000000008dfd9ad: 4889442420                   mov      qword ptr [rsp + 0x20], rax
0000000008dfd9b2: 488d842460010000             lea      rax, [rsp + 0x160]
0000000008dfd9ba: 4889442428                   mov      qword ptr [rsp + 0x28], rax
0000000008dfd9bf: 488d842410010000             lea      rax, [rsp + 0x110]
0000000008dfd9c7: 4889442430                   mov      qword ptr [rsp + 0x30], rax
0000000008dfd9cc: 488d842408050000             lea      rax, [rsp + 0x508]
0000000008dfd9d4: 4889442438                   mov      qword ptr [rsp + 0x38], rax
0000000008dfd9d9: 488d842470020000             lea      rax, [rsp + 0x270]
0000000008dfd9e1: 4889442440                   mov      qword ptr [rsp + 0x40], rax
0000000008dfd9e6: 488d8424b8040000             lea      rax, [rsp + 0x4b8]
0000000008dfd9ee: 4889442448                   mov      qword ptr [rsp + 0x48], rax
0000000008dfd9f3: 488d842468040000             lea      rax, [rsp + 0x468]
0000000008dfd9fb: 4889442450                   mov      qword ptr [rsp + 0x50], rax
0000000008dfda00: 488d842420020000             lea      rax, [rsp + 0x220]
0000000008dfda08: 4889442458                   mov      qword ptr [rsp + 0x58], rax
0000000008dfda0d: 488d842418040000             lea      rax, [rsp + 0x418]
0000000008dfda15: 4889442460                   mov      qword ptr [rsp + 0x60], rax
0000000008dfda1a: 488d8424c8030000             lea      rax, [rsp + 0x3c8]
0000000008dfda22: 4889442468                   mov      qword ptr [rsp + 0x68], rax
0000000008dfda27: 488d842478030000             lea      rax, [rsp + 0x378]
0000000008dfda2f: 4889442470                   mov      qword ptr [rsp + 0x70], rax
0000000008dfda34: 488d842428030000             lea      rax, [rsp + 0x328]
0000000008dfda3c: 4889442478                   mov      qword ptr [rsp + 0x78], rax
0000000008dfda41: 488d8424d8020000             lea      rax, [rsp + 0x2d8]
0000000008dfda49: 4889842480000000             mov      qword ptr [rsp + 0x80], rax
0000000008dfda51: 0f57c0                       xorps    xmm0, xmm0
0000000008dfda54: 0f11842488000000             movups   xmmword ptr [rsp + 0x88], xmm0
0000000008dfda5c: 48c784249800000000000000     mov      qword ptr [rsp + 0x98], 0
0000000008dfda68: 488d35af6dfcf7               lea      rsi, [rip - 0x8039251]
0000000008dfda6f: 4c8db42458050000             lea      r14, [rsp + 0x558]
0000000008dfda77: 488d542420                   lea      rdx, [rsp + 0x20]
0000000008dfda7c: 4c89f7                       mov      rdi, r14
0000000008dfda7f: e86c3e3100                   call     0x91118f0
0000000008dfda84: 4c89f7                       mov      rdi, r14
0000000008dfda87: e8a43b3100                   call     0x9111630
0000000008dfda8c: 488d7c2418                   lea      rdi, [rsp + 0x18]
0000000008dfda91: e88aa90100                   call     0x8e18420
0000000008dfda96: 488dbc24c0020000             lea      rdi, [rsp + 0x2c0]
0000000008dfda9e: e8fddf0100                   call     0x8e1baa0
0000000008dfdaa3: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfdaab: e840890000                   call     0x8e063f0
0000000008dfdab0: 89d8                         mov      eax, ebx
0000000008dfdab2: 4881c4e8050000               add      rsp, 0x5e8
0000000008dfdab9: 5b                           pop      rbx
0000000008dfdaba: 415c                         pop      r12
0000000008dfdabc: 415d                         pop      r13
0000000008dfdabe: 415e                         pop      r14
0000000008dfdac0: 415f                         pop      r15
0000000008dfdac2: 5d                           pop      rbp
0000000008dfdac3: c3                           ret

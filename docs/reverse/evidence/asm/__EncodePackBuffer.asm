0000000008dfe2c0: 55                           push     rbp
0000000008dfe2c1: 4157                         push     r15
0000000008dfe2c3: 4156                         push     r14
0000000008dfe2c5: 4155                         push     r13
0000000008dfe2c7: 4154                         push     r12
0000000008dfe2c9: 53                           push     rbx
0000000008dfe2ca: 4881ec98030000               sub      rsp, 0x398
0000000008dfe2d1: 410fb74008                   movzx    eax, word ptr [r8 + 8]
0000000008dfe2d6: 4883f80e                     cmp      rax, 0xe
0000000008dfe2da: 0f87fa170000                 ja       0x8dffada
0000000008dfe2e0: 4d89cf                       mov      r15, r9
0000000008dfe2e3: 4989ce                       mov      r14, rcx
0000000008dfe2e6: 89f3                         mov      ebx, esi
0000000008dfe2e8: 4c8bac24d0030000             mov      r13, qword ptr [rsp + 0x3d0]
0000000008dfe2f0: 488d0d999724f9               lea      rcx, [rip - 0x6db6867]
0000000008dfe2f7: 48630481                     movsxd   rax, dword ptr [rcx + rax*4]
0000000008dfe2fb: 4801c8                       add      rax, rcx
0000000008dfe2fe: ffe0                         jmp      rax
0000000008dfe300: 4989d4                       mov      r12, rdx
0000000008dfe303: bf01000000                   mov      edi, 1
0000000008dfe308: e883893100                   call     0x9116c90
0000000008dfe30d: 85c0                         test     eax, eax
0000000008dfe30f: 0f8433010000                 je       0x8dfe448
0000000008dfe315: 488d1542bd15f8               lea      rdx, [rip - 0x7ea42be]
0000000008dfe31c: 488d0dd0a80bf8               lea      rcx, [rip - 0x7f45730]
0000000008dfe323: 4c8d0560e91ef8               lea      r8, [rip - 0x7e116a0]
0000000008dfe32a: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfe332: be01000000                   mov      esi, 1
0000000008dfe337: 41b9a5020000                 mov      r9d, 0x2a5
0000000008dfe33d: 6a00                         push     0
0000000008dfe33f: 6a00                         push     0
0000000008dfe341: e85a323100                   call     0x91115a0
0000000008dfe346: 4883c410                     add      rsp, 0x10
0000000008dfe34a: 48c784249000000000000000     mov      qword ptr [rsp + 0x90], 0
0000000008dfe356: b807000000                   mov      eax, 7
0000000008dfe35b: 488d8c2497000000             lea      rcx, [rsp + 0x97]
0000000008dfe363: bacdcccccc                   mov      edx, 0xcccccccd
0000000008dfe368: 488d359d1013f8               lea      rsi, [rip - 0x7ecef63]
0000000008dfe36f: 90                           nop
0000000008dfe370: 89df                         mov      edi, ebx
0000000008dfe372: 480faffa                     imul     rdi, rdx
0000000008dfe376: 48c1ef23                     shr      rdi, 0x23
0000000008dfe37a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfe37e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfe382: 41f7d8                       neg      r8d
0000000008dfe385: 4101d8                       add      r8d, ebx
0000000008dfe388: 4183c023                     add      r8d, 0x23
0000000008dfe38c: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008dfe391: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008dfe395: 48ffc1                       inc      rcx
0000000008dfe398: 48ffc0                       inc      rax
0000000008dfe39b: 83fb09                       cmp      ebx, 9
0000000008dfe39e: 89fb                         mov      ebx, edi
0000000008dfe3a0: 77ce                         ja       0x8dfe370
0000000008dfe3a2: 488d942498000000             lea      rdx, [rsp + 0x98]
0000000008dfe3aa: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dfe3ae: 4883f809                     cmp      rax, 9
0000000008dfe3b2: 7229                         jb       0x8dfe3dd
0000000008dfe3b4: 488d842499000000             lea      rax, [rsp + 0x99]
0000000008dfe3bc: 0f1f4000                     nop      dword ptr [rax]
0000000008dfe3c0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfe3c3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dfe3c7: 408839                       mov      byte ptr [rcx], dil
0000000008dfe3ca: 48ffc9                       dec      rcx
0000000008dfe3cd: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dfe3d1: 488d7001                     lea      rsi, [rax + 1]
0000000008dfe3d5: 4839c8                       cmp      rax, rcx
0000000008dfe3d8: 4889f0                       mov      rax, rsi
0000000008dfe3db: 72e3                         jb       0x8dfe3c0
0000000008dfe3dd: 4889942490000000             mov      qword ptr [rsp + 0x90], rdx
0000000008dfe3e5: 488d842490000000             lea      rax, [rsp + 0x90]
0000000008dfe3ed: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000008dfe3f2: 0f57c0                       xorps    xmm0, xmm0
0000000008dfe3f5: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008dfe3fa: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008dfe3ff: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008dfe404: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008dfe409: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008dfe40e: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008dfe413: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008dfe418: 48c784248800000000000000     mov      qword ptr [rsp + 0x88], 0
0000000008dfe424: 488d35f95220f8               lea      rsi, [rip - 0x7dfad07]
0000000008dfe42b: 488d9c24b0010000             lea      rbx, [rsp + 0x1b0]
0000000008dfe433: 488d542410                   lea      rdx, [rsp + 0x10]
0000000008dfe438: 4889df                       mov      rdi, rbx
0000000008dfe43b: e8b0343100                   call     0x91118f0
0000000008dfe440: 4889df                       mov      rdi, rbx
0000000008dfe443: e8e8313100                   call     0x9111630
0000000008dfe448: 4c89ff                       mov      rdi, r15
0000000008dfe44b: 4c89e6                       mov      rsi, r12
0000000008dfe44e: 4489f2                       mov      edx, r14d
0000000008dfe451: e83aa10100                   call     0x8e18590
0000000008dfe456: e97f160000                   jmp      0x8dffada
0000000008dfe45b: 498bb8b0000000               mov      rdi, qword ptr [r8 + 0xb0]
0000000008dfe462: 4885ff                       test     rdi, rdi
0000000008dfe465: 0f84da090000                 je       0x8dfee45
0000000008dfe46b: 0f57c0                       xorps    xmm0, xmm0
0000000008dfe46e: 0f29842440010000             movaps   xmmword ptr [rsp + 0x140], xmm0
0000000008dfe476: 48c784245001000000000000     mov      qword ptr [rsp + 0x150], 0
0000000008dfe482: 488d8c2440010000             lea      rcx, [rsp + 0x140]
0000000008dfe48a: 4889d6                       mov      rsi, rdx
0000000008dfe48d: 4c89f2                       mov      rdx, r14
0000000008dfe490: e89bf2d1ff                   call     0x8b1d730
0000000008dfe495: 85c0                         test     eax, eax
0000000008dfe497: 0f8483090000                 je       0x8dfee20
0000000008dfe49d: 89c5                         mov      ebp, eax
0000000008dfe49f: bf04000000                   mov      edi, 4
0000000008dfe4a4: e8e7873100                   call     0x9116c90
0000000008dfe4a9: 85c0                         test     eax, eax
0000000008dfe4ab: 0f841b050000                 je       0x8dfe9cc
0000000008dfe4b1: 4189ee                       mov      r14d, ebp
0000000008dfe4b4: 488d15a3bb15f8               lea      rdx, [rip - 0x7ea445d]
0000000008dfe4bb: 488d0d31a70bf8               lea      rcx, [rip - 0x7f458cf]
0000000008dfe4c2: 4c8d05c1e71ef8               lea      r8, [rip - 0x7e1183f]
0000000008dfe4c9: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfe4d1: be04000000                   mov      esi, 4
0000000008dfe4d6: 41b914030000                 mov      r9d, 0x314
0000000008dfe4dc: 6a00                         push     0
0000000008dfe4de: 6a00                         push     0
0000000008dfe4e0: e8bb303100                   call     0x91115a0
0000000008dfe4e5: 4883c410                     add      rsp, 0x10
0000000008dfe4e9: 48c784249000000000000000     mov      qword ptr [rsp + 0x90], 0
0000000008dfe4f5: b907000000                   mov      ecx, 7
0000000008dfe4fa: 488d942497000000             lea      rdx, [rsp + 0x97]
0000000008dfe502: becdcccccc                   mov      esi, 0xcccccccd
0000000008dfe507: 488d05fe0e13f8               lea      rax, [rip - 0x7ecf102]
0000000008dfe50e: 6690                         nop
0000000008dfe510: 89df                         mov      edi, ebx
0000000008dfe512: 480faffe                     imul     rdi, rsi
0000000008dfe516: 48c1ef23                     shr      rdi, 0x23
0000000008dfe51a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfe51e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfe522: 41f7d8                       neg      r8d
0000000008dfe525: 4101d8                       add      r8d, ebx
0000000008dfe528: 4183c023                     add      r8d, 0x23
0000000008dfe52c: 450fb60400                   movzx    r8d, byte ptr [r8 + rax]
0000000008dfe531: 44884201                     mov      byte ptr [rdx + 1], r8b
0000000008dfe535: 48ffc2                       inc      rdx
0000000008dfe538: 48ffc1                       inc      rcx
0000000008dfe53b: 83fb09                       cmp      ebx, 9
0000000008dfe53e: 89fb                         mov      ebx, edi
0000000008dfe540: 77ce                         ja       0x8dfe510
0000000008dfe542: 488db42498000000             lea      rsi, [rsp + 0x98]
0000000008dfe54a: c6420100                     mov      byte ptr [rdx + 1], 0
0000000008dfe54e: 4883f909                     cmp      rcx, 9
0000000008dfe552: 722a                         jb       0x8dfe57e
0000000008dfe554: 488d8c2499000000             lea      rcx, [rsp + 0x99]
0000000008dfe55c: 0f1f4000                     nop      dword ptr [rax]
0000000008dfe560: 0fb63a                       movzx    edi, byte ptr [rdx]
0000000008dfe563: 440fb641ff                   movzx    r8d, byte ptr [rcx - 1]
0000000008dfe568: 448802                       mov      byte ptr [rdx], r8b
0000000008dfe56b: 48ffca                       dec      rdx
0000000008dfe56e: 408879ff                     mov      byte ptr [rcx - 1], dil
0000000008dfe572: 488d7901                     lea      rdi, [rcx + 1]
0000000008dfe576: 4839d1                       cmp      rcx, rdx
0000000008dfe579: 4889f9                       mov      rcx, rdi
0000000008dfe57c: 72e2                         jb       0x8dfe560
0000000008dfe57e: 4889b42490000000             mov      qword ptr [rsp + 0x90], rsi
0000000008dfe586: 48c78424f000000000000000     mov      qword ptr [rsp + 0xf0], 0
0000000008dfe592: b908000000                   mov      ecx, 8
0000000008dfe597: 660f1f840000000000           nop      word ptr [rax + rax]
0000000008dfe5a0: 4963d6                       movsxd   rdx, r14d
0000000008dfe5a3: 4c69f267666666               imul     r14, rdx, 0x66666667
0000000008dfe5aa: 4c89f6                       mov      rsi, r14
0000000008dfe5ad: 48c1ee3f                     shr      rsi, 0x3f
0000000008dfe5b1: 49c1fe22                     sar      r14, 0x22
0000000008dfe5b5: 4101f6                       add      r14d, esi
0000000008dfe5b8: 438d3436                     lea      esi, [r14 + r14]
0000000008dfe5bc: 8d34b6                       lea      esi, [rsi + rsi*4]
0000000008dfe5bf: 89d7                         mov      edi, edx
0000000008dfe5c1: 29f7                         sub      edi, esi
0000000008dfe5c3: 4863f7                       movsxd   rsi, edi
0000000008dfe5c6: 0fb6740623                   movzx    esi, byte ptr [rsi + rax + 0x23]
0000000008dfe5cb: 4088b40cf0000000             mov      byte ptr [rsp + rcx + 0xf0], sil
0000000008dfe5d3: 48ffc1                       inc      rcx
0000000008dfe5d6: 83c209                       add      edx, 9
0000000008dfe5d9: 83fa12                       cmp      edx, 0x12
0000000008dfe5dc: 77c2                         ja       0x8dfe5a0
0000000008dfe5de: 85ed                         test     ebp, ebp
0000000008dfe5e0: 790b                         jns      0x8dfe5ed
0000000008dfe5e2: c6840cf00000002d             mov      byte ptr [rsp + rcx + 0xf0], 0x2d
0000000008dfe5ea: 48ffc1                       inc      rcx
0000000008dfe5ed: 488d8424f8000000             lea      rax, [rsp + 0xf8]
0000000008dfe5f5: c6840cf000000000             mov      byte ptr [rsp + rcx + 0xf0], 0
0000000008dfe5fd: 4883f90a                     cmp      rcx, 0xa
0000000008dfe601: 7c3a                         jl       0x8dfe63d
0000000008dfe603: 4801e1                       add      rcx, rsp
0000000008dfe606: 4881c1f0000000               add      rcx, 0xf0
0000000008dfe60d: 48ffc9                       dec      rcx
0000000008dfe610: 488d9424f9000000             lea      rdx, [rsp + 0xf9]
0000000008dfe618: 0f1f840000000000             nop      dword ptr [rax + rax]
0000000008dfe620: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfe623: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008dfe627: 408839                       mov      byte ptr [rcx], dil
0000000008dfe62a: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008dfe62e: 48ffc9                       dec      rcx
0000000008dfe631: 488d7201                     lea      rsi, [rdx + 1]
0000000008dfe635: 4839ca                       cmp      rdx, rcx
0000000008dfe638: 4889f2                       mov      rdx, rsi
0000000008dfe63b: 72e3                         jb       0x8dfe620
0000000008dfe63d: 48898424f0000000             mov      qword ptr [rsp + 0xf0], rax
0000000008dfe645: 488d842490000000             lea      rax, [rsp + 0x90]
0000000008dfe64d: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000008dfe652: 488d8424f0000000             lea      rax, [rsp + 0xf0]
0000000008dfe65a: 4889442418                   mov      qword ptr [rsp + 0x18], rax
0000000008dfe65f: 0f57c0                       xorps    xmm0, xmm0
0000000008dfe662: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008dfe667: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008dfe66c: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008dfe671: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008dfe676: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008dfe67b: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008dfe680: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008dfe688: 488d356be821f8               lea      rsi, [rip - 0x7de1795]
0000000008dfe68f: e91b030000                   jmp      0x8dfe9af
0000000008dfe694: 410fb68088000000             movzx    eax, byte ptr [r8 + 0x88]
0000000008dfe69c: 4c89ed                       mov      rbp, r13
0000000008dfe69f: a801                         test     al, 1
0000000008dfe6a1: 0f8491030000                 je       0x8dfea38
0000000008dfe6a7: 498b8090000000               mov      rax, qword ptr [r8 + 0x90]
0000000008dfe6ae: 4885c0                       test     rax, rax
0000000008dfe6b1: 0f848c030000                 je       0x8dfea43
0000000008dfe6b7: 4981c088000000               add      r8, 0x88
0000000008dfe6be: 0f57c0                       xorps    xmm0, xmm0
0000000008dfe6c1: 0f298424f0000000             movaps   xmmword ptr [rsp + 0xf0], xmm0
0000000008dfe6c9: 48c784240001000000000000     mov      qword ptr [rsp + 0x100], 0
0000000008dfe6d5: 488b3f                       mov      rdi, qword ptr [rdi]
0000000008dfe6d8: 4d89c4                       mov      r12, r8
0000000008dfe6db: 4989d5                       mov      r13, rdx
0000000008dfe6de: e8cdb3ffff                   call     0x8df9ab0
0000000008dfe6e3: 4c8d8424f0000000             lea      r8, [rsp + 0xf0]
0000000008dfe6eb: 4889c7                       mov      rdi, rax
0000000008dfe6ee: 4c89ee                       mov      rsi, r13
0000000008dfe6f1: 4c89f2                       mov      rdx, r14
0000000008dfe6f4: 4c89e1                       mov      rcx, r12
0000000008dfe6f7: e88447ffff                   call     0x8df2e80
0000000008dfe6fc: 84c0                         test     al, al
0000000008dfe6fe: 4989ee                       mov      r14, rbp
0000000008dfe701: 0f848a100000                 je       0x8dff791
0000000008dfe707: 0fb68424f0000000             movzx    eax, byte ptr [rsp + 0xf0]
0000000008dfe70f: a801                         test     al, 1
0000000008dfe711: 0f845c100000                 je       0x8dff773
0000000008dfe717: 488b9424f8000000             mov      rdx, qword ptr [rsp + 0xf8]
0000000008dfe71f: e953100000                   jmp      0x8dff777
0000000008dfe724: 410fb68088000000             movzx    eax, byte ptr [r8 + 0x88]
0000000008dfe72c: a801                         test     al, 1
0000000008dfe72e: 0f8471040000                 je       0x8dfeba5
0000000008dfe734: 498bb090000000               mov      rsi, qword ptr [r8 + 0x90]
0000000008dfe73b: 4885f6                       test     rsi, rsi
0000000008dfe73e: 0f846e040000                 je       0x8dfebb2
0000000008dfe744: 48c78424e800000000000000     mov      qword ptr [rsp + 0xe8], 0
0000000008dfe750: c744240c00000000             mov      dword ptr [rsp + 0xc], 0
0000000008dfe758: 4d89c4                       mov      r12, r8
0000000008dfe75b: a801                         test     al, 1
0000000008dfe75d: 0f84c2080000                 je       0x8dff025
0000000008dfe763: 498bb898000000               mov      rdi, qword ptr [r8 + 0x98]
0000000008dfe76a: e9bd080000                   jmp      0x8dff02c
0000000008dfe76f: 498bb8a8000000               mov      rdi, qword ptr [r8 + 0xa8]
0000000008dfe776: 4885ff                       test     rdi, rdi
0000000008dfe779: 0f844a070000                 je       0x8dfeec9
0000000008dfe77f: 0f57c0                       xorps    xmm0, xmm0
0000000008dfe782: 0f29842440010000             movaps   xmmword ptr [rsp + 0x140], xmm0
0000000008dfe78a: 48c784245001000000000000     mov      qword ptr [rsp + 0x150], 0
0000000008dfe796: 488d8c2440010000             lea      rcx, [rsp + 0x140]
0000000008dfe79e: 4889d6                       mov      rsi, rdx
0000000008dfe7a1: 4c89f2                       mov      rdx, r14
0000000008dfe7a4: e80731d2ff                   call     0x8b218b0
0000000008dfe7a9: 85c0                         test     eax, eax
0000000008dfe7ab: 0f846f060000                 je       0x8dfee20
0000000008dfe7b1: 89c5                         mov      ebp, eax
0000000008dfe7b3: bf04000000                   mov      edi, 4
0000000008dfe7b8: e8d3843100                   call     0x9116c90
0000000008dfe7bd: 85c0                         test     eax, eax
0000000008dfe7bf: 0f8407020000                 je       0x8dfe9cc
0000000008dfe7c5: 4189ee                       mov      r14d, ebp
0000000008dfe7c8: 488d158fb815f8               lea      rdx, [rip - 0x7ea4771]
0000000008dfe7cf: 488d0d1da40bf8               lea      rcx, [rip - 0x7f45be3]
0000000008dfe7d6: 4c8d05ade41ef8               lea      r8, [rip - 0x7e11b53]
0000000008dfe7dd: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfe7e5: be04000000                   mov      esi, 4
0000000008dfe7ea: 41b902030000                 mov      r9d, 0x302
0000000008dfe7f0: 6a00                         push     0
0000000008dfe7f2: 6a00                         push     0
0000000008dfe7f4: e8a72d3100                   call     0x91115a0
0000000008dfe7f9: 4883c410                     add      rsp, 0x10
0000000008dfe7fd: 48c784249000000000000000     mov      qword ptr [rsp + 0x90], 0
0000000008dfe809: b907000000                   mov      ecx, 7
0000000008dfe80e: 488d942497000000             lea      rdx, [rsp + 0x97]
0000000008dfe816: becdcccccc                   mov      esi, 0xcccccccd
0000000008dfe81b: 488d05ea0b13f8               lea      rax, [rip - 0x7ecf416]
0000000008dfe822: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
0000000008dfe830: 89df                         mov      edi, ebx
0000000008dfe832: 480faffe                     imul     rdi, rsi
0000000008dfe836: 48c1ef23                     shr      rdi, 0x23
0000000008dfe83a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfe83e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfe842: 41f7d8                       neg      r8d
0000000008dfe845: 4101d8                       add      r8d, ebx
0000000008dfe848: 4183c023                     add      r8d, 0x23
0000000008dfe84c: 450fb60400                   movzx    r8d, byte ptr [r8 + rax]
0000000008dfe851: 44884201                     mov      byte ptr [rdx + 1], r8b
0000000008dfe855: 48ffc2                       inc      rdx
0000000008dfe858: 48ffc1                       inc      rcx
0000000008dfe85b: 83fb09                       cmp      ebx, 9
0000000008dfe85e: 89fb                         mov      ebx, edi
0000000008dfe860: 77ce                         ja       0x8dfe830
0000000008dfe862: 488db42498000000             lea      rsi, [rsp + 0x98]
0000000008dfe86a: c6420100                     mov      byte ptr [rdx + 1], 0
0000000008dfe86e: 4883f909                     cmp      rcx, 9
0000000008dfe872: 722a                         jb       0x8dfe89e
0000000008dfe874: 488d8c2499000000             lea      rcx, [rsp + 0x99]
0000000008dfe87c: 0f1f4000                     nop      dword ptr [rax]
0000000008dfe880: 0fb63a                       movzx    edi, byte ptr [rdx]
0000000008dfe883: 440fb641ff                   movzx    r8d, byte ptr [rcx - 1]
0000000008dfe888: 448802                       mov      byte ptr [rdx], r8b
0000000008dfe88b: 48ffca                       dec      rdx
0000000008dfe88e: 408879ff                     mov      byte ptr [rcx - 1], dil
0000000008dfe892: 488d7901                     lea      rdi, [rcx + 1]
0000000008dfe896: 4839d1                       cmp      rcx, rdx
0000000008dfe899: 4889f9                       mov      rcx, rdi
0000000008dfe89c: 72e2                         jb       0x8dfe880
0000000008dfe89e: 4889b42490000000             mov      qword ptr [rsp + 0x90], rsi
0000000008dfe8a6: 48c78424f000000000000000     mov      qword ptr [rsp + 0xf0], 0
0000000008dfe8b2: b908000000                   mov      ecx, 8
0000000008dfe8b7: 660f1f840000000000           nop      word ptr [rax + rax]
0000000008dfe8c0: 4963d6                       movsxd   rdx, r14d
0000000008dfe8c3: 4c69f267666666               imul     r14, rdx, 0x66666667
0000000008dfe8ca: 4c89f6                       mov      rsi, r14
0000000008dfe8cd: 48c1ee3f                     shr      rsi, 0x3f
0000000008dfe8d1: 49c1fe22                     sar      r14, 0x22
0000000008dfe8d5: 4101f6                       add      r14d, esi
0000000008dfe8d8: 438d3436                     lea      esi, [r14 + r14]
0000000008dfe8dc: 8d34b6                       lea      esi, [rsi + rsi*4]
0000000008dfe8df: 89d7                         mov      edi, edx
0000000008dfe8e1: 29f7                         sub      edi, esi
0000000008dfe8e3: 4863f7                       movsxd   rsi, edi
0000000008dfe8e6: 0fb6740623                   movzx    esi, byte ptr [rsi + rax + 0x23]
0000000008dfe8eb: 4088b40cf0000000             mov      byte ptr [rsp + rcx + 0xf0], sil
0000000008dfe8f3: 48ffc1                       inc      rcx
0000000008dfe8f6: 83c209                       add      edx, 9
0000000008dfe8f9: 83fa12                       cmp      edx, 0x12
0000000008dfe8fc: 77c2                         ja       0x8dfe8c0
0000000008dfe8fe: 85ed                         test     ebp, ebp
0000000008dfe900: 790b                         jns      0x8dfe90d
0000000008dfe902: c6840cf00000002d             mov      byte ptr [rsp + rcx + 0xf0], 0x2d
0000000008dfe90a: 48ffc1                       inc      rcx
0000000008dfe90d: 488d8424f8000000             lea      rax, [rsp + 0xf8]
0000000008dfe915: c6840cf000000000             mov      byte ptr [rsp + rcx + 0xf0], 0
0000000008dfe91d: 4883f90a                     cmp      rcx, 0xa
0000000008dfe921: 7c3a                         jl       0x8dfe95d
0000000008dfe923: 4801e1                       add      rcx, rsp
0000000008dfe926: 4881c1f0000000               add      rcx, 0xf0
0000000008dfe92d: 48ffc9                       dec      rcx
0000000008dfe930: 488d9424f9000000             lea      rdx, [rsp + 0xf9]
0000000008dfe938: 0f1f840000000000             nop      dword ptr [rax + rax]
0000000008dfe940: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfe943: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008dfe947: 408839                       mov      byte ptr [rcx], dil
0000000008dfe94a: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008dfe94e: 48ffc9                       dec      rcx
0000000008dfe951: 488d7201                     lea      rsi, [rdx + 1]
0000000008dfe955: 4839ca                       cmp      rdx, rcx
0000000008dfe958: 4889f2                       mov      rdx, rsi
0000000008dfe95b: 72e3                         jb       0x8dfe940
0000000008dfe95d: 48898424f0000000             mov      qword ptr [rsp + 0xf0], rax
0000000008dfe965: 488d842490000000             lea      rax, [rsp + 0x90]
0000000008dfe96d: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000008dfe972: 488d8424f0000000             lea      rax, [rsp + 0xf0]
0000000008dfe97a: 4889442418                   mov      qword ptr [rsp + 0x18], rax
0000000008dfe97f: 0f57c0                       xorps    xmm0, xmm0
0000000008dfe982: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008dfe987: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008dfe98c: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008dfe991: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008dfe996: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008dfe99b: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008dfe9a0: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008dfe9a8: 488d35d376f8f7               lea      rsi, [rip - 0x807892d]
0000000008dfe9af: 488d9c24b0010000             lea      rbx, [rsp + 0x1b0]
0000000008dfe9b7: 488d542410                   lea      rdx, [rsp + 0x10]
0000000008dfe9bc: 4889df                       mov      rdi, rbx
0000000008dfe9bf: e82c2f3100                   call     0x91118f0
0000000008dfe9c4: 4889df                       mov      rdi, rbx
0000000008dfe9c7: e8642c3100                   call     0x9111630
0000000008dfe9cc: 41c745280d000000             mov      dword ptr [r13 + 0x28], 0xd
0000000008dfe9d4: f684244001000001             test     byte ptr [rsp + 0x140], 1
0000000008dfe9dc: 0f855f0d0000                 jne      0x8dff741
0000000008dfe9e2: e9f3100000                   jmp      0x8dffada
0000000008dfe9e7: 410fb68088000000             movzx    eax, byte ptr [r8 + 0x88]
0000000008dfe9ef: a801                         test     al, 1
0000000008dfe9f1: 0f84e9020000                 je       0x8dfece0
0000000008dfe9f7: 498bb090000000               mov      rsi, qword ptr [r8 + 0x90]
0000000008dfe9fe: 4885f6                       test     rsi, rsi
0000000008dfea01: 0f84e6020000                 je       0x8dfeced
0000000008dfea07: 0f57c0                       xorps    xmm0, xmm0
0000000008dfea0a: 0f29842440020000             movaps   xmmword ptr [rsp + 0x240], xmm0
0000000008dfea12: 48c784245002000000000000     mov      qword ptr [rsp + 0x250], 0
0000000008dfea1e: a801                         test     al, 1
0000000008dfea20: 0f84320a0000                 je       0x8dff458
0000000008dfea26: 4889d0                       mov      rax, rdx
0000000008dfea29: 4d89c4                       mov      r12, r8
0000000008dfea2c: 498bb898000000               mov      rdi, qword ptr [r8 + 0x98]
0000000008dfea33: e92d0a0000                   jmp      0x8dff465
0000000008dfea38: d1e8                         shr      eax, 1
0000000008dfea3a: 4885c0                       test     rax, rax
0000000008dfea3d: 0f8574fcffff                 jne      0x8dfe6b7
0000000008dfea43: bf04000000                   mov      edi, 4
0000000008dfea48: e843823100                   call     0x9116c90
0000000008dfea4d: 85c0                         test     eax, eax
0000000008dfea4f: 4989ee                       mov      r14, rbp
0000000008dfea52: 0f8440010000                 je       0x8dfeb98
0000000008dfea58: 488d15ffb515f8               lea      rdx, [rip - 0x7ea4a01]
0000000008dfea5f: 488d0d8da10bf8               lea      rcx, [rip - 0x7f45e73]
0000000008dfea66: 4c8d051de21ef8               lea      r8, [rip - 0x7e11de3]
0000000008dfea6d: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfea75: be04000000                   mov      esi, 4
0000000008dfea7a: 41b9e8020000                 mov      r9d, 0x2e8
0000000008dfea80: 6a00                         push     0
0000000008dfea82: 6a00                         push     0
0000000008dfea84: e8172b3100                   call     0x91115a0
0000000008dfea89: 4883c410                     add      rsp, 0x10
0000000008dfea8d: 48c784249000000000000000     mov      qword ptr [rsp + 0x90], 0
0000000008dfea99: b807000000                   mov      eax, 7
0000000008dfea9e: 488d8c2497000000             lea      rcx, [rsp + 0x97]
0000000008dfeaa6: bacdcccccc                   mov      edx, 0xcccccccd
0000000008dfeaab: 488d355a0913f8               lea      rsi, [rip - 0x7ecf6a6]
0000000008dfeab2: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
0000000008dfeac0: 89df                         mov      edi, ebx
0000000008dfeac2: 480faffa                     imul     rdi, rdx
0000000008dfeac6: 48c1ef23                     shr      rdi, 0x23
0000000008dfeaca: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfeace: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfead2: 41f7d8                       neg      r8d
0000000008dfead5: 4101d8                       add      r8d, ebx
0000000008dfead8: 4183c023                     add      r8d, 0x23
0000000008dfeadc: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008dfeae1: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008dfeae5: 48ffc1                       inc      rcx
0000000008dfeae8: 48ffc0                       inc      rax
0000000008dfeaeb: 83fb09                       cmp      ebx, 9
0000000008dfeaee: 89fb                         mov      ebx, edi
0000000008dfeaf0: 77ce                         ja       0x8dfeac0
0000000008dfeaf2: 488d942498000000             lea      rdx, [rsp + 0x98]
0000000008dfeafa: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dfeafe: 4883f809                     cmp      rax, 9
0000000008dfeb02: 7229                         jb       0x8dfeb2d
0000000008dfeb04: 488d842499000000             lea      rax, [rsp + 0x99]
0000000008dfeb0c: 0f1f4000                     nop      dword ptr [rax]
0000000008dfeb10: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfeb13: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dfeb17: 408839                       mov      byte ptr [rcx], dil
0000000008dfeb1a: 48ffc9                       dec      rcx
0000000008dfeb1d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dfeb21: 488d7001                     lea      rsi, [rax + 1]
0000000008dfeb25: 4839c8                       cmp      rax, rcx
0000000008dfeb28: 4889f0                       mov      rax, rsi
0000000008dfeb2b: 72e3                         jb       0x8dfeb10
0000000008dfeb2d: 4889942490000000             mov      qword ptr [rsp + 0x90], rdx
0000000008dfeb35: 488d842490000000             lea      rax, [rsp + 0x90]
0000000008dfeb3d: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000008dfeb42: 0f57c0                       xorps    xmm0, xmm0
0000000008dfeb45: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008dfeb4a: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008dfeb4f: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008dfeb54: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008dfeb59: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008dfeb5e: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008dfeb63: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008dfeb68: 48c784248800000000000000     mov      qword ptr [rsp + 0x88], 0
0000000008dfeb74: 488d35c54b20f8               lea      rsi, [rip - 0x7dfb43b]
0000000008dfeb7b: 488d9c24b0010000             lea      rbx, [rsp + 0x1b0]
0000000008dfeb83: 488d542410                   lea      rdx, [rsp + 0x10]
0000000008dfeb88: 4889df                       mov      rdi, rbx
0000000008dfeb8b: e8602d3100                   call     0x91118f0
0000000008dfeb90: 4889df                       mov      rdi, rbx
0000000008dfeb93: e8982a3100                   call     0x9111630
0000000008dfeb98: 41c746280a000000             mov      dword ptr [r14 + 0x28], 0xa
0000000008dfeba0: e9350f0000                   jmp      0x8dffada
0000000008dfeba5: 89c6                         mov      esi, eax
0000000008dfeba7: d1ee                         shr      esi, 1
0000000008dfeba9: 4885f6                       test     rsi, rsi
0000000008dfebac: 0f8592fbffff                 jne      0x8dfe744
0000000008dfebb2: bf04000000                   mov      edi, 4
0000000008dfebb7: e8d4803100                   call     0x9116c90
0000000008dfebbc: 85c0                         test     eax, eax
0000000008dfebbe: 0f8454040000                 je       0x8dff018
0000000008dfebc4: 488d1593b415f8               lea      rdx, [rip - 0x7ea4b6d]
0000000008dfebcb: 488d0d21a00bf8               lea      rcx, [rip - 0x7f45fdf]
0000000008dfebd2: 4c8d05b1e01ef8               lea      r8, [rip - 0x7e11f4f]
0000000008dfebd9: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfebe1: be04000000                   mov      esi, 4
0000000008dfebe6: 41b9ab020000                 mov      r9d, 0x2ab
0000000008dfebec: 6a00                         push     0
0000000008dfebee: 6a00                         push     0
0000000008dfebf0: e8ab293100                   call     0x91115a0
0000000008dfebf5: 4883c410                     add      rsp, 0x10
0000000008dfebf9: 48c784249000000000000000     mov      qword ptr [rsp + 0x90], 0
0000000008dfec05: b807000000                   mov      eax, 7
0000000008dfec0a: 488d8c2497000000             lea      rcx, [rsp + 0x97]
0000000008dfec12: bacdcccccc                   mov      edx, 0xcccccccd
0000000008dfec17: 488d35ee0713f8               lea      rsi, [rip - 0x7ecf812]
0000000008dfec1e: 6690                         nop
0000000008dfec20: 89df                         mov      edi, ebx
0000000008dfec22: 480faffa                     imul     rdi, rdx
0000000008dfec26: 48c1ef23                     shr      rdi, 0x23
0000000008dfec2a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfec2e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfec32: 41f7d8                       neg      r8d
0000000008dfec35: 4101d8                       add      r8d, ebx
0000000008dfec38: 4183c023                     add      r8d, 0x23
0000000008dfec3c: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008dfec41: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008dfec45: 48ffc1                       inc      rcx
0000000008dfec48: 48ffc0                       inc      rax
0000000008dfec4b: 83fb09                       cmp      ebx, 9
0000000008dfec4e: 89fb                         mov      ebx, edi
0000000008dfec50: 77ce                         ja       0x8dfec20
0000000008dfec52: 488d942498000000             lea      rdx, [rsp + 0x98]
0000000008dfec5a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dfec5e: 4883f809                     cmp      rax, 9
0000000008dfec62: 7229                         jb       0x8dfec8d
0000000008dfec64: 488d842499000000             lea      rax, [rsp + 0x99]
0000000008dfec6c: 0f1f4000                     nop      dword ptr [rax]
0000000008dfec70: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfec73: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dfec77: 408839                       mov      byte ptr [rcx], dil
0000000008dfec7a: 48ffc9                       dec      rcx
0000000008dfec7d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dfec81: 488d7001                     lea      rsi, [rax + 1]
0000000008dfec85: 4839c8                       cmp      rax, rcx
0000000008dfec88: 4889f0                       mov      rax, rsi
0000000008dfec8b: 72e3                         jb       0x8dfec70
0000000008dfec8d: 4889942490000000             mov      qword ptr [rsp + 0x90], rdx
0000000008dfec95: 488d842490000000             lea      rax, [rsp + 0x90]
0000000008dfec9d: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000008dfeca2: 0f57c0                       xorps    xmm0, xmm0
0000000008dfeca5: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008dfecaa: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008dfecaf: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008dfecb4: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008dfecb9: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008dfecbe: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008dfecc3: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008dfecc8: 48c784248800000000000000     mov      qword ptr [rsp + 0x88], 0
0000000008dfecd4: 488d35bc7123f8               lea      rsi, [rip - 0x7dc8e44]
0000000008dfecdb: e91b030000                   jmp      0x8dfeffb
0000000008dfece0: 89c6                         mov      esi, eax
0000000008dfece2: d1ee                         shr      esi, 1
0000000008dfece4: 4885f6                       test     rsi, rsi
0000000008dfece7: 0f851afdffff                 jne      0x8dfea07
0000000008dfeced: bf04000000                   mov      edi, 4
0000000008dfecf2: e8997f3100                   call     0x9116c90
0000000008dfecf7: 85c0                         test     eax, eax
0000000008dfecf9: 0f8419030000                 je       0x8dff018
0000000008dfecff: 488d1558b315f8               lea      rdx, [rip - 0x7ea4ca8]
0000000008dfed06: 488d0de69e0bf8               lea      rcx, [rip - 0x7f4611a]
0000000008dfed0d: 4c8d0576df1ef8               lea      r8, [rip - 0x7e1208a]
0000000008dfed14: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfed1c: be04000000                   mov      esi, 4
0000000008dfed21: 41b9cc020000                 mov      r9d, 0x2cc
0000000008dfed27: 6a00                         push     0
0000000008dfed29: 6a00                         push     0
0000000008dfed2b: e870283100                   call     0x91115a0
0000000008dfed30: 4883c410                     add      rsp, 0x10
0000000008dfed34: 48c784249000000000000000     mov      qword ptr [rsp + 0x90], 0
0000000008dfed40: b807000000                   mov      eax, 7
0000000008dfed45: 488d8c2497000000             lea      rcx, [rsp + 0x97]
0000000008dfed4d: bacdcccccc                   mov      edx, 0xcccccccd
0000000008dfed52: 488d35b30613f8               lea      rsi, [rip - 0x7ecf94d]
0000000008dfed59: 0f1f8000000000               nop      dword ptr [rax]
0000000008dfed60: 89df                         mov      edi, ebx
0000000008dfed62: 480faffa                     imul     rdi, rdx
0000000008dfed66: 48c1ef23                     shr      rdi, 0x23
0000000008dfed6a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfed6e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfed72: 41f7d8                       neg      r8d
0000000008dfed75: 4101d8                       add      r8d, ebx
0000000008dfed78: 4183c023                     add      r8d, 0x23
0000000008dfed7c: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008dfed81: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008dfed85: 48ffc1                       inc      rcx
0000000008dfed88: 48ffc0                       inc      rax
0000000008dfed8b: 83fb09                       cmp      ebx, 9
0000000008dfed8e: 89fb                         mov      ebx, edi
0000000008dfed90: 77ce                         ja       0x8dfed60
0000000008dfed92: 488d942498000000             lea      rdx, [rsp + 0x98]
0000000008dfed9a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dfed9e: 4883f809                     cmp      rax, 9
0000000008dfeda2: 7229                         jb       0x8dfedcd
0000000008dfeda4: 488d842499000000             lea      rax, [rsp + 0x99]
0000000008dfedac: 0f1f4000                     nop      dword ptr [rax]
0000000008dfedb0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfedb3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dfedb7: 408839                       mov      byte ptr [rcx], dil
0000000008dfedba: 48ffc9                       dec      rcx
0000000008dfedbd: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dfedc1: 488d7001                     lea      rsi, [rax + 1]
0000000008dfedc5: 4839c8                       cmp      rax, rcx
0000000008dfedc8: 4889f0                       mov      rax, rsi
0000000008dfedcb: 72e3                         jb       0x8dfedb0
0000000008dfedcd: 4889942490000000             mov      qword ptr [rsp + 0x90], rdx
0000000008dfedd5: 488d842490000000             lea      rax, [rsp + 0x90]
0000000008dfeddd: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000008dfede2: 0f57c0                       xorps    xmm0, xmm0
0000000008dfede5: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008dfedea: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008dfedef: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008dfedf4: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008dfedf9: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008dfedfe: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008dfee03: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008dfee08: 48c784248800000000000000     mov      qword ptr [rsp + 0x88], 0
0000000008dfee14: 488d353872f8f7               lea      rsi, [rip - 0x8078dc8]
0000000008dfee1b: e9db010000                   jmp      0x8dfeffb
0000000008dfee20: 0fb6942440010000             movzx    edx, byte ptr [rsp + 0x140]
0000000008dfee28: f6c201                       test     dl, 1
0000000008dfee2b: 0f84f0080000                 je       0x8dff721
0000000008dfee31: 488bb42450010000             mov      rsi, qword ptr [rsp + 0x150]
0000000008dfee39: 8b942448010000               mov      edx, dword ptr [rsp + 0x148]
0000000008dfee40: e9e6080000                   jmp      0x8dff72b
0000000008dfee45: bf04000000                   mov      edi, 4
0000000008dfee4a: e8417e3100                   call     0x9116c90
0000000008dfee4f: 85c0                         test     eax, eax
0000000008dfee51: 0f84c1010000                 je       0x8dff018
0000000008dfee57: 488d1500b215f8               lea      rdx, [rip - 0x7ea4e00]
0000000008dfee5e: 488d0d8e9d0bf8               lea      rcx, [rip - 0x7f46272]
0000000008dfee65: 4c8d051ede1ef8               lea      r8, [rip - 0x7e121e2]
0000000008dfee6c: 488d9c24b0010000             lea      rbx, [rsp + 0x1b0]
0000000008dfee74: 4889df                       mov      rdi, rbx
0000000008dfee77: be04000000                   mov      esi, 4
0000000008dfee7c: 41b90a030000                 mov      r9d, 0x30a
0000000008dfee82: 6a00                         push     0
0000000008dfee84: 6a00                         push     0
0000000008dfee86: e815273100                   call     0x91115a0
0000000008dfee8b: 4883c410                     add      rsp, 0x10
0000000008dfee8f: 0f57c0                       xorps    xmm0, xmm0
0000000008dfee92: 0f29842480000000             movaps   xmmword ptr [rsp + 0x80], xmm0
0000000008dfee9a: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008dfee9f: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008dfeea4: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008dfeea9: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008dfeeae: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008dfeeb3: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008dfeeb8: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008dfeebd: 488d35abb718f8               lea      rsi, [rip - 0x7e74855]
0000000008dfeec4: e93a010000                   jmp      0x8dff003
0000000008dfeec9: bf04000000                   mov      edi, 4
0000000008dfeece: e8bd7d3100                   call     0x9116c90
0000000008dfeed3: 85c0                         test     eax, eax
0000000008dfeed5: 0f843d010000                 je       0x8dff018
0000000008dfeedb: 488d157cb115f8               lea      rdx, [rip - 0x7ea4e84]
0000000008dfeee2: 488d0d0a9d0bf8               lea      rcx, [rip - 0x7f462f6]
0000000008dfeee9: 4c8d059add1ef8               lea      r8, [rip - 0x7e12266]
0000000008dfeef0: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dfeef8: be04000000                   mov      esi, 4
0000000008dfeefd: 41b9f9020000                 mov      r9d, 0x2f9
0000000008dfef03: 6a00                         push     0
0000000008dfef05: 6a00                         push     0
0000000008dfef07: e894263100                   call     0x91115a0
0000000008dfef0c: 4883c410                     add      rsp, 0x10
0000000008dfef10: 48c784249000000000000000     mov      qword ptr [rsp + 0x90], 0
0000000008dfef1c: b807000000                   mov      eax, 7
0000000008dfef21: 488d8c2497000000             lea      rcx, [rsp + 0x97]
0000000008dfef29: bacdcccccc                   mov      edx, 0xcccccccd
0000000008dfef2e: 488d35d70413f8               lea      rsi, [rip - 0x7ecfb29]
0000000008dfef35: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
0000000008dfef40: 89df                         mov      edi, ebx
0000000008dfef42: 480faffa                     imul     rdi, rdx
0000000008dfef46: 48c1ef23                     shr      rdi, 0x23
0000000008dfef4a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dfef4e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dfef52: 41f7d8                       neg      r8d
0000000008dfef55: 4101d8                       add      r8d, ebx
0000000008dfef58: 4183c023                     add      r8d, 0x23
0000000008dfef5c: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008dfef61: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008dfef65: 48ffc1                       inc      rcx
0000000008dfef68: 48ffc0                       inc      rax
0000000008dfef6b: 83fb09                       cmp      ebx, 9
0000000008dfef6e: 89fb                         mov      ebx, edi
0000000008dfef70: 77ce                         ja       0x8dfef40
0000000008dfef72: 488d942498000000             lea      rdx, [rsp + 0x98]
0000000008dfef7a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dfef7e: 4883f809                     cmp      rax, 9
0000000008dfef82: 7229                         jb       0x8dfefad
0000000008dfef84: 488d842499000000             lea      rax, [rsp + 0x99]
0000000008dfef8c: 0f1f4000                     nop      dword ptr [rax]
0000000008dfef90: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dfef93: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dfef97: 408839                       mov      byte ptr [rcx], dil
0000000008dfef9a: 48ffc9                       dec      rcx
0000000008dfef9d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dfefa1: 488d7001                     lea      rsi, [rax + 1]
0000000008dfefa5: 4839c8                       cmp      rax, rcx
0000000008dfefa8: 4889f0                       mov      rax, rsi
0000000008dfefab: 72e3                         jb       0x8dfef90
0000000008dfefad: 4889942490000000             mov      qword ptr [rsp + 0x90], rdx
0000000008dfefb5: 488d842490000000             lea      rax, [rsp + 0x90]
0000000008dfefbd: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000008dfefc2: 0f57c0                       xorps    xmm0, xmm0
0000000008dfefc5: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008dfefca: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008dfefcf: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008dfefd4: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008dfefd9: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008dfefde: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008dfefe3: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008dfefe8: 48c784248800000000000000     mov      qword ptr [rsp + 0x88], 0
0000000008dfeff4: 488d35c51d0df8               lea      rsi, [rip - 0x7f2e23b]
0000000008dfeffb: 488d9c24b0010000             lea      rbx, [rsp + 0x1b0]
0000000008dff003: 488d542410                   lea      rdx, [rsp + 0x10]
0000000008dff008: 4889df                       mov      rdi, rbx
0000000008dff00b: e8e0283100                   call     0x91118f0
0000000008dff010: 4889df                       mov      rdi, rbx
0000000008dff013: e818263100                   call     0x9111630
0000000008dff018: 41c745280a000000             mov      dword ptr [r13 + 0x28], 0xa
0000000008dff020: e9b50a0000                   jmp      0x8dffada
0000000008dff025: 498db889000000               lea      rdi, [r8 + 0x89]
0000000008dff02c: 4c8d8424e8000000             lea      r8, [rsp + 0xe8]
0000000008dff034: 4c8d4c240c                   lea      r9, [rsp + 0xc]
0000000008dff039: 4489f1                       mov      ecx, r14d
0000000008dff03c: e89fabd1ff                   call     0x8b19be0
0000000008dff041: 89c5                         mov      ebp, eax
0000000008dff043: 85c0                         test     eax, eax
0000000008dff045: 752f                         jne      0x8dff076
0000000008dff047: 488bb424e8000000             mov      rsi, qword ptr [rsp + 0xe8]
0000000008dff04f: 4885f6                       test     rsi, rsi
0000000008dff052: 7422                         je       0x8dff076
0000000008dff054: 8b54240c                     mov      edx, dword ptr [rsp + 0xc]
0000000008dff058: 85d2                         test     edx, edx
0000000008dff05a: 741a                         je       0x8dff076
0000000008dff05c: 4c89ff                       mov      rdi, r15
0000000008dff05f: e82c950100                   call     0x8e18590
0000000008dff064: 488bbc24e8000000             mov      rdi, qword ptr [rsp + 0xe8]
0000000008dff06c: e8fff18601                   call     0xa66e270
0000000008dff071: e9640a0000                   jmp      0x8dffada
0000000008dff076: bf04000000                   mov      edi, 4
0000000008dff07b: e8107c3100                   call     0x9116c90
0000000008dff080: 85c0                         test     eax, eax
0000000008dff082: 0f84060c0000                 je       0x8dffc8e
0000000008dff088: 498d842488000000             lea      rax, [r12 + 0x88]
0000000008dff090: 48898424e0000000             mov      qword ptr [rsp + 0xe0], rax
0000000008dff098: 4189ef                       mov      r15d, ebp
0000000008dff09b: 488d15bcaf15f8               lea      rdx, [rip - 0x7ea5044]
0000000008dff0a2: 488d0d4a9b0bf8               lea      rcx, [rip - 0x7f464b6]
0000000008dff0a9: 4c8d05dadb1ef8               lea      r8, [rip - 0x7e12426]
0000000008dff0b0: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dff0b8: be04000000                   mov      esi, 4
0000000008dff0bd: 41b9c2020000                 mov      r9d, 0x2c2
0000000008dff0c3: 6a00                         push     0
0000000008dff0c5: 6a00                         push     0
0000000008dff0c7: e8d4243100                   call     0x91115a0
0000000008dff0cc: 4883c410                     add      rsp, 0x10
0000000008dff0d0: 48c784249000000000000000     mov      qword ptr [rsp + 0x90], 0
0000000008dff0dc: b807000000                   mov      eax, 7
0000000008dff0e1: 488d8c2497000000             lea      rcx, [rsp + 0x97]
0000000008dff0e9: bacdcccccc                   mov      edx, 0xcccccccd
0000000008dff0ee: 4c8d2d170313f8               lea      r13, [rip - 0x7ecfce9]
0000000008dff0f5: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
0000000008dff100: 89de                         mov      esi, ebx
0000000008dff102: 480faff2                     imul     rsi, rdx
0000000008dff106: 48c1ee23                     shr      rsi, 0x23
0000000008dff10a: 8d3c36                       lea      edi, [rsi + rsi]
0000000008dff10d: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008dff110: f7df                         neg      edi
0000000008dff112: 01df                         add      edi, ebx
0000000008dff114: 83c723                       add      edi, 0x23
0000000008dff117: 420fb63c2f                   movzx    edi, byte ptr [rdi + r13]
0000000008dff11c: 40887901                     mov      byte ptr [rcx + 1], dil
0000000008dff120: 48ffc1                       inc      rcx
0000000008dff123: 48ffc0                       inc      rax
0000000008dff126: 83fb09                       cmp      ebx, 9
0000000008dff129: 89f3                         mov      ebx, esi
0000000008dff12b: 77d3                         ja       0x8dff100
0000000008dff12d: 488d942498000000             lea      rdx, [rsp + 0x98]
0000000008dff135: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dff139: 4883f809                     cmp      rax, 9
0000000008dff13d: 722e                         jb       0x8dff16d
0000000008dff13f: 488d842499000000             lea      rax, [rsp + 0x99]
0000000008dff147: 660f1f840000000000           nop      word ptr [rax + rax]
0000000008dff150: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dff153: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dff157: 408839                       mov      byte ptr [rcx], dil
0000000008dff15a: 48ffc9                       dec      rcx
0000000008dff15d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dff161: 488d7001                     lea      rsi, [rax + 1]
0000000008dff165: 4839c8                       cmp      rax, rcx
0000000008dff168: 4889f0                       mov      rax, rsi
0000000008dff16b: 72e3                         jb       0x8dff150
0000000008dff16d: 4889942490000000             mov      qword ptr [rsp + 0x90], rdx
0000000008dff175: 48c78424f000000000000000     mov      qword ptr [rsp + 0xf0], 0
0000000008dff181: b808000000                   mov      eax, 8
0000000008dff186: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000008dff190: 4963cf                       movsxd   rcx, r15d
0000000008dff193: 4c69f967666666               imul     r15, rcx, 0x66666667
0000000008dff19a: 4c89fa                       mov      rdx, r15
0000000008dff19d: 48c1ea3f                     shr      rdx, 0x3f
0000000008dff1a1: 49c1ff22                     sar      r15, 0x22
0000000008dff1a5: 4101d7                       add      r15d, edx
0000000008dff1a8: 438d143f                     lea      edx, [r15 + r15]
0000000008dff1ac: 8d1492                       lea      edx, [rdx + rdx*4]
0000000008dff1af: 89ce                         mov      esi, ecx
0000000008dff1b1: 29d6                         sub      esi, edx
0000000008dff1b3: 4863d6                       movsxd   rdx, esi
0000000008dff1b6: 420fb6542a23                 movzx    edx, byte ptr [rdx + r13 + 0x23]
0000000008dff1bc: 889404f0000000               mov      byte ptr [rsp + rax + 0xf0], dl
0000000008dff1c3: 48ffc0                       inc      rax
0000000008dff1c6: 83c109                       add      ecx, 9
0000000008dff1c9: 83f912                       cmp      ecx, 0x12
0000000008dff1cc: 77c2                         ja       0x8dff190
0000000008dff1ce: 85ed                         test     ebp, ebp
0000000008dff1d0: 790b                         jns      0x8dff1dd
0000000008dff1d2: c68404f00000002d             mov      byte ptr [rsp + rax + 0xf0], 0x2d
0000000008dff1da: 48ffc0                       inc      rax
0000000008dff1dd: 488d8c24f8000000             lea      rcx, [rsp + 0xf8]
0000000008dff1e5: c68404f000000000             mov      byte ptr [rsp + rax + 0xf0], 0
0000000008dff1ed: 4883f80a                     cmp      rax, 0xa
0000000008dff1f1: 7c3a                         jl       0x8dff22d
0000000008dff1f3: 4801e0                       add      rax, rsp
0000000008dff1f6: 4805f0000000                 add      rax, 0xf0
0000000008dff1fc: 48ffc8                       dec      rax
0000000008dff1ff: 488d9424f9000000             lea      rdx, [rsp + 0xf9]
0000000008dff207: 660f1f840000000000           nop      word ptr [rax + rax]
0000000008dff210: 0fb630                       movzx    esi, byte ptr [rax]
0000000008dff213: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008dff217: 408838                       mov      byte ptr [rax], dil
0000000008dff21a: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008dff21e: 48ffc8                       dec      rax
0000000008dff221: 488d7201                     lea      rsi, [rdx + 1]
0000000008dff225: 4839c2                       cmp      rdx, rax
0000000008dff228: 4889f2                       mov      rdx, rsi
0000000008dff22b: 72e3                         jb       0x8dff210
0000000008dff22d: 48898c24f0000000             mov      qword ptr [rsp + 0xf0], rcx
0000000008dff235: 488bb424e8000000             mov      rsi, qword ptr [rsp + 0xe8]
0000000008dff23d: 48c784244001000000000000     mov      qword ptr [rsp + 0x140], 0
0000000008dff249: 488d842448010000             lea      rax, [rsp + 0x148]
0000000008dff251: 66c78424480100003078         mov      word ptr [rsp + 0x148], 0x7830
0000000008dff25b: ba09000000                   mov      edx, 9
0000000008dff260: 488d8c2449010000             lea      rcx, [rsp + 0x149]
0000000008dff268: 4889f7                       mov      rdi, rsi
0000000008dff26b: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008dff270: 48c1ef04                     shr      rdi, 4
0000000008dff274: 4189f0                       mov      r8d, esi
0000000008dff277: 4183e00f                     and      r8d, 0xf
0000000008dff27b: 470fb6442823                 movzx    r8d, byte ptr [r8 + r13 + 0x23]
0000000008dff281: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008dff285: 48ffc1                       inc      rcx
0000000008dff288: 48ffc2                       inc      rdx
0000000008dff28b: 4883fe0f                     cmp      rsi, 0xf
0000000008dff28f: 4889fe                       mov      rsi, rdi
0000000008dff292: 77dc                         ja       0x8dff270
0000000008dff294: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dff298: 4883fa0b                     cmp      rdx, 0xb
0000000008dff29c: 722f                         jb       0x8dff2cd
0000000008dff29e: 488d94244b010000             lea      rdx, [rsp + 0x14b]
0000000008dff2a6: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000008dff2b0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dff2b3: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008dff2b7: 408839                       mov      byte ptr [rcx], dil
0000000008dff2ba: 48ffc9                       dec      rcx
0000000008dff2bd: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008dff2c1: 488d7201                     lea      rsi, [rdx + 1]
0000000008dff2c5: 4839ca                       cmp      rdx, rcx
0000000008dff2c8: 4889f2                       mov      rdx, rsi
0000000008dff2cb: 72e3                         jb       0x8dff2b0
0000000008dff2cd: 4889842440010000             mov      qword ptr [rsp + 0x140], rax
0000000008dff2d5: 8b54240c                     mov      edx, dword ptr [rsp + 0xc]
0000000008dff2d9: 48c784244803000000000000     mov      qword ptr [rsp + 0x348], 0
0000000008dff2e5: b807000000                   mov      eax, 7
0000000008dff2ea: 488d8c244f030000             lea      rcx, [rsp + 0x34f]
0000000008dff2f2: becdcccccc                   mov      esi, 0xcccccccd
0000000008dff2f7: 660f1f840000000000           nop      word ptr [rax + rax]
0000000008dff300: 89d7                         mov      edi, edx
0000000008dff302: 480faffe                     imul     rdi, rsi
0000000008dff306: 48c1ef23                     shr      rdi, 0x23
0000000008dff30a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dff30e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dff312: 41f7d8                       neg      r8d
0000000008dff315: 4101d0                       add      r8d, edx
0000000008dff318: 4183c023                     add      r8d, 0x23
0000000008dff31c: 470fb60428                   movzx    r8d, byte ptr [r8 + r13]
0000000008dff321: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008dff325: 48ffc1                       inc      rcx
0000000008dff328: 48ffc0                       inc      rax
0000000008dff32b: 83fa09                       cmp      edx, 9
0000000008dff32e: 89fa                         mov      edx, edi
0000000008dff330: 77ce                         ja       0x8dff300
0000000008dff332: 488d942450030000             lea      rdx, [rsp + 0x350]
0000000008dff33a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dff33e: 4883f809                     cmp      rax, 9
0000000008dff342: 7229                         jb       0x8dff36d
0000000008dff344: 488d842451030000             lea      rax, [rsp + 0x351]
0000000008dff34c: 0f1f4000                     nop      dword ptr [rax]
0000000008dff350: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dff353: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dff357: 408839                       mov      byte ptr [rcx], dil
0000000008dff35a: 48ffc9                       dec      rcx
0000000008dff35d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dff361: 488d7001                     lea      rsi, [rax + 1]
0000000008dff365: 4839c8                       cmp      rax, rcx
0000000008dff368: 4889f0                       mov      rax, rsi
0000000008dff36b: 72e3                         jb       0x8dff350
0000000008dff36d: 4889942448030000             mov      qword ptr [rsp + 0x348], rdx
0000000008dff375: 48c78424e002000000000000     mov      qword ptr [rsp + 0x2e0], 0
0000000008dff381: be07000000                   mov      esi, 7
0000000008dff386: 488d8c24e7020000             lea      rcx, [rsp + 0x2e7]
0000000008dff38e: 48bdcdcccccccccccccc         movabs   rbp, 0xcccccccccccccccd
0000000008dff398: 0f1f840000000000             nop      dword ptr [rax + rax]
0000000008dff3a0: 4c89f0                       mov      rax, r14
0000000008dff3a3: 48f7e5                       mul      rbp
0000000008dff3a6: 48c1ea03                     shr      rdx, 3
0000000008dff3aa: 488d0412                     lea      rax, [rdx + rdx]
0000000008dff3ae: 488d0480                     lea      rax, [rax + rax*4]
0000000008dff3b2: 4c89ef                       mov      rdi, r13
0000000008dff3b5: 4829c7                       sub      rdi, rax
0000000008dff3b8: 420fb6443723                 movzx    eax, byte ptr [rdi + r14 + 0x23]
0000000008dff3be: 884101                       mov      byte ptr [rcx + 1], al
0000000008dff3c1: 48ffc1                       inc      rcx
0000000008dff3c4: 48ffc6                       inc      rsi
0000000008dff3c7: 4983fe09                     cmp      r14, 9
0000000008dff3cb: 4989d6                       mov      r14, rdx
0000000008dff3ce: 77d0                         ja       0x8dff3a0
0000000008dff3d0: 488d8424e8020000             lea      rax, [rsp + 0x2e8]
0000000008dff3d8: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dff3dc: 4883fe09                     cmp      rsi, 9
0000000008dff3e0: 722b                         jb       0x8dff40d
0000000008dff3e2: 488d9424e9020000             lea      rdx, [rsp + 0x2e9]
0000000008dff3ea: 660f1f440000                 nop      word ptr [rax + rax]
0000000008dff3f0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dff3f3: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008dff3f7: 408839                       mov      byte ptr [rcx], dil
0000000008dff3fa: 48ffc9                       dec      rcx
0000000008dff3fd: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008dff401: 488d7201                     lea      rsi, [rdx + 1]
0000000008dff405: 4839ca                       cmp      rdx, rcx
0000000008dff408: 4889f2                       mov      rdx, rsi
0000000008dff40b: 72e3                         jb       0x8dff3f0
0000000008dff40d: 48898424e0020000             mov      qword ptr [rsp + 0x2e0], rax
0000000008dff415: 488d9c2430030000             lea      rbx, [rsp + 0x330]
0000000008dff41d: 4889df                       mov      rdi, rbx
0000000008dff420: 488bb424e0000000             mov      rsi, qword ptr [rsp + 0xe0]
0000000008dff428: e823c73100                   call     0x911bb50
0000000008dff42d: 488dbc2498010000             lea      rdi, [rsp + 0x198]
0000000008dff435: 4889de                       mov      rsi, rbx
0000000008dff438: e803c30100                   call     0x8e1b740
0000000008dff43d: f684249801000001             test     byte ptr [rsp + 0x198], 1
0000000008dff445: 0f84a1060000                 je       0x8dffaec
0000000008dff44b: 488b8424a8010000             mov      rax, qword ptr [rsp + 0x1a8]
0000000008dff453: e99c060000                   jmp      0x8dffaf4
0000000008dff458: 4889d0                       mov      rax, rdx
0000000008dff45b: 4d89c4                       mov      r12, r8
0000000008dff45e: 498db889000000               lea      rdi, [r8 + 0x89]
0000000008dff465: 4883ec08                     sub      rsp, 8
0000000008dff469: 4c8d942448020000             lea      r10, [rsp + 0x248]
0000000008dff471: 31d2                         xor      edx, edx
0000000008dff473: 31c9                         xor      ecx, ecx
0000000008dff475: 4989c0                       mov      r8, rax
0000000008dff478: 4d89f1                       mov      r9, r14
0000000008dff47b: 4152                         push     r10
0000000008dff47d: e87ed6d1ff                   call     0x8b1cb00
0000000008dff482: 4883c410                     add      rsp, 0x10
0000000008dff486: 85c0                         test     eax, eax
0000000008dff488: 0f84c0020000                 je       0x8dff74e
0000000008dff48e: 89c5                         mov      ebp, eax
0000000008dff490: bf04000000                   mov      edi, 4
0000000008dff495: e8f6773100                   call     0x9116c90
0000000008dff49a: 85c0                         test     eax, eax
0000000008dff49c: 0f84d7050000                 je       0x8dffa79
0000000008dff4a2: 498d842488000000             lea      rax, [r12 + 0x88]
0000000008dff4aa: 48898424e0000000             mov      qword ptr [rsp + 0xe0], rax
0000000008dff4b2: 4189ef                       mov      r15d, ebp
0000000008dff4b5: 488d15a2ab15f8               lea      rdx, [rip - 0x7ea545e]
0000000008dff4bc: 488d0d30970bf8               lea      rcx, [rip - 0x7f468d0]
0000000008dff4c3: 4c8d05c0d71ef8               lea      r8, [rip - 0x7e12840]
0000000008dff4ca: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dff4d2: be04000000                   mov      esi, 4
0000000008dff4d7: 41b9df020000                 mov      r9d, 0x2df
0000000008dff4dd: 6a00                         push     0
0000000008dff4df: 6a00                         push     0
0000000008dff4e1: e8ba203100                   call     0x91115a0
0000000008dff4e6: 4883c410                     add      rsp, 0x10
0000000008dff4ea: 48c784249000000000000000     mov      qword ptr [rsp + 0x90], 0
0000000008dff4f6: b807000000                   mov      eax, 7
0000000008dff4fb: 488d8c2497000000             lea      rcx, [rsp + 0x97]
0000000008dff503: bacdcccccc                   mov      edx, 0xcccccccd
0000000008dff508: 4c8d2dfdfe12f8               lea      r13, [rip - 0x7ed0103]
0000000008dff50f: 90                           nop
0000000008dff510: 89de                         mov      esi, ebx
0000000008dff512: 480faff2                     imul     rsi, rdx
0000000008dff516: 48c1ee23                     shr      rsi, 0x23
0000000008dff51a: 8d3c36                       lea      edi, [rsi + rsi]
0000000008dff51d: 8d3cbf                       lea      edi, [rdi + rdi*4]
0000000008dff520: f7df                         neg      edi
0000000008dff522: 01df                         add      edi, ebx
0000000008dff524: 83c723                       add      edi, 0x23
0000000008dff527: 420fb63c2f                   movzx    edi, byte ptr [rdi + r13]
0000000008dff52c: 40887901                     mov      byte ptr [rcx + 1], dil
0000000008dff530: 48ffc1                       inc      rcx
0000000008dff533: 48ffc0                       inc      rax
0000000008dff536: 83fb09                       cmp      ebx, 9
0000000008dff539: 89f3                         mov      ebx, esi
0000000008dff53b: 77d3                         ja       0x8dff510
0000000008dff53d: 488d942498000000             lea      rdx, [rsp + 0x98]
0000000008dff545: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dff549: 4883f809                     cmp      rax, 9
0000000008dff54d: 722e                         jb       0x8dff57d
0000000008dff54f: 488d842499000000             lea      rax, [rsp + 0x99]
0000000008dff557: 660f1f840000000000           nop      word ptr [rax + rax]
0000000008dff560: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dff563: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dff567: 408839                       mov      byte ptr [rcx], dil
0000000008dff56a: 48ffc9                       dec      rcx
0000000008dff56d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dff571: 488d7001                     lea      rsi, [rax + 1]
0000000008dff575: 4839c8                       cmp      rax, rcx
0000000008dff578: 4889f0                       mov      rax, rsi
0000000008dff57b: 72e3                         jb       0x8dff560
0000000008dff57d: 4889942490000000             mov      qword ptr [rsp + 0x90], rdx
0000000008dff585: 48c78424f000000000000000     mov      qword ptr [rsp + 0xf0], 0
0000000008dff591: b808000000                   mov      eax, 8
0000000008dff596: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000008dff5a0: 4963cf                       movsxd   rcx, r15d
0000000008dff5a3: 4c69f967666666               imul     r15, rcx, 0x66666667
0000000008dff5aa: 4c89fa                       mov      rdx, r15
0000000008dff5ad: 48c1ea3f                     shr      rdx, 0x3f
0000000008dff5b1: 49c1ff22                     sar      r15, 0x22
0000000008dff5b5: 4101d7                       add      r15d, edx
0000000008dff5b8: 438d143f                     lea      edx, [r15 + r15]
0000000008dff5bc: 8d1492                       lea      edx, [rdx + rdx*4]
0000000008dff5bf: 89ce                         mov      esi, ecx
0000000008dff5c1: 29d6                         sub      esi, edx
0000000008dff5c3: 4863d6                       movsxd   rdx, esi
0000000008dff5c6: 420fb6542a23                 movzx    edx, byte ptr [rdx + r13 + 0x23]
0000000008dff5cc: 889404f0000000               mov      byte ptr [rsp + rax + 0xf0], dl
0000000008dff5d3: 48ffc0                       inc      rax
0000000008dff5d6: 83c109                       add      ecx, 9
0000000008dff5d9: 83f912                       cmp      ecx, 0x12
0000000008dff5dc: 77c2                         ja       0x8dff5a0
0000000008dff5de: 85ed                         test     ebp, ebp
0000000008dff5e0: 790b                         jns      0x8dff5ed
0000000008dff5e2: c68404f00000002d             mov      byte ptr [rsp + rax + 0xf0], 0x2d
0000000008dff5ea: 48ffc0                       inc      rax
0000000008dff5ed: 488bb424e0000000             mov      rsi, qword ptr [rsp + 0xe0]
0000000008dff5f5: 488d8c24f8000000             lea      rcx, [rsp + 0xf8]
0000000008dff5fd: c68404f000000000             mov      byte ptr [rsp + rax + 0xf0], 0
0000000008dff605: 4883f80a                     cmp      rax, 0xa
0000000008dff609: 7c33                         jl       0x8dff63e
0000000008dff60b: 4801e0                       add      rax, rsp
0000000008dff60e: 4805f0000000                 add      rax, 0xf0
0000000008dff614: 48ffc8                       dec      rax
0000000008dff617: 488d9424f9000000             lea      rdx, [rsp + 0xf9]
0000000008dff61f: 90                           nop
0000000008dff620: 440fb600                     movzx    r8d, byte ptr [rax]
0000000008dff624: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008dff628: 408838                       mov      byte ptr [rax], dil
0000000008dff62b: 448842ff                     mov      byte ptr [rdx - 1], r8b
0000000008dff62f: 48ffc8                       dec      rax
0000000008dff632: 488d7a01                     lea      rdi, [rdx + 1]
0000000008dff636: 4839c2                       cmp      rdx, rax
0000000008dff639: 4889fa                       mov      rdx, rdi
0000000008dff63c: 72e2                         jb       0x8dff620
0000000008dff63e: 48898c24f0000000             mov      qword ptr [rsp + 0xf0], rcx
0000000008dff646: 48c784244001000000000000     mov      qword ptr [rsp + 0x140], 0
0000000008dff652: 41b807000000                 mov      r8d, 7
0000000008dff658: 488d8c2447010000             lea      rcx, [rsp + 0x147]
0000000008dff660: 48bdcdcccccccccccccc         movabs   rbp, 0xcccccccccccccccd
0000000008dff66a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008dff670: 4c89f0                       mov      rax, r14
0000000008dff673: 48f7e5                       mul      rbp
0000000008dff676: 48c1ea03                     shr      rdx, 3
0000000008dff67a: 488d0412                     lea      rax, [rdx + rdx]
0000000008dff67e: 488d0480                     lea      rax, [rax + rax*4]
0000000008dff682: 4c89ef                       mov      rdi, r13
0000000008dff685: 4829c7                       sub      rdi, rax
0000000008dff688: 420fb6443723                 movzx    eax, byte ptr [rdi + r14 + 0x23]
0000000008dff68e: 884101                       mov      byte ptr [rcx + 1], al
0000000008dff691: 48ffc1                       inc      rcx
0000000008dff694: 49ffc0                       inc      r8
0000000008dff697: 4983fe09                     cmp      r14, 9
0000000008dff69b: 4989d6                       mov      r14, rdx
0000000008dff69e: 77d0                         ja       0x8dff670
0000000008dff6a0: 488d842448010000             lea      rax, [rsp + 0x148]
0000000008dff6a8: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dff6ac: 4983f809                     cmp      r8, 9
0000000008dff6b0: 722c                         jb       0x8dff6de
0000000008dff6b2: 488d942449010000             lea      rdx, [rsp + 0x149]
0000000008dff6ba: 660f1f440000                 nop      word ptr [rax + rax]
0000000008dff6c0: 440fb601                     movzx    r8d, byte ptr [rcx]
0000000008dff6c4: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008dff6c8: 408839                       mov      byte ptr [rcx], dil
0000000008dff6cb: 48ffc9                       dec      rcx
0000000008dff6ce: 448842ff                     mov      byte ptr [rdx - 1], r8b
0000000008dff6d2: 488d7a01                     lea      rdi, [rdx + 1]
0000000008dff6d6: 4839ca                       cmp      rdx, rcx
0000000008dff6d9: 4889fa                       mov      rdx, rdi
0000000008dff6dc: 72e2                         jb       0x8dff6c0
0000000008dff6de: 4889842440010000             mov      qword ptr [rsp + 0x140], rax
0000000008dff6e6: 488d9c2498010000             lea      rbx, [rsp + 0x198]
0000000008dff6ee: 4889df                       mov      rdi, rbx
0000000008dff6f1: e85ac43100                   call     0x911bb50
0000000008dff6f6: 488dbc2490020000             lea      rdi, [rsp + 0x290]
0000000008dff6fe: 4889de                       mov      rsi, rbx
0000000008dff701: e83ac00100                   call     0x8e1b740
0000000008dff706: f684249002000001             test     byte ptr [rsp + 0x290], 1
0000000008dff70e: 0f84df010000                 je       0x8dff8f3
0000000008dff714: 488b8424a0020000             mov      rax, qword ptr [rsp + 0x2a0]
0000000008dff71c: e9da010000                   jmp      0x8dff8fb
0000000008dff721: d1ea                         shr      edx, 1
0000000008dff723: 488db42441010000             lea      rsi, [rsp + 0x141]
0000000008dff72b: 4c89ff                       mov      rdi, r15
0000000008dff72e: e85d8e0100                   call     0x8e18590
0000000008dff733: f684244001000001             test     byte ptr [rsp + 0x140], 1
0000000008dff73b: 0f8499030000                 je       0x8dffada
0000000008dff741: 488bbc2450010000             mov      rdi, qword ptr [rsp + 0x150]
0000000008dff749: e987030000                   jmp      0x8dffad5
0000000008dff74e: 0fb6942440020000             movzx    edx, byte ptr [rsp + 0x240]
0000000008dff756: f6c201                       test     dl, 1
0000000008dff759: 0f842e030000                 je       0x8dffa8d
0000000008dff75f: 488bb42450020000             mov      rsi, qword ptr [rsp + 0x250]
0000000008dff767: 8b942448020000               mov      edx, dword ptr [rsp + 0x248]
0000000008dff76e: e924030000                   jmp      0x8dffa97
0000000008dff773: 89c2                         mov      edx, eax
0000000008dff775: d1ea                         shr      edx, 1
0000000008dff777: 4885d2                       test     rdx, rdx
0000000008dff77a: 7415                         je       0x8dff791
0000000008dff77c: a801                         test     al, 1
0000000008dff77e: 0f842f030000                 je       0x8dffab3
0000000008dff784: 488bb42400010000             mov      rsi, qword ptr [rsp + 0x100]
0000000008dff78c: e92a030000                   jmp      0x8dffabb
0000000008dff791: bf04000000                   mov      edi, 4
0000000008dff796: e8f5743100                   call     0x9116c90
0000000008dff79b: 85c0                         test     eax, eax
0000000008dff79d: 0f8435010000                 je       0x8dff8d8
0000000008dff7a3: 488d15b4a815f8               lea      rdx, [rip - 0x7ea574c]
0000000008dff7aa: 488d0d42940bf8               lea      rcx, [rip - 0x7f46bbe]
0000000008dff7b1: 4c8d05d2d41ef8               lea      r8, [rip - 0x7e12b2e]
0000000008dff7b8: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dff7c0: be04000000                   mov      esi, 4
0000000008dff7c5: 41b9f1020000                 mov      r9d, 0x2f1
0000000008dff7cb: 6a00                         push     0
0000000008dff7cd: 6a00                         push     0
0000000008dff7cf: e8cc1d3100                   call     0x91115a0
0000000008dff7d4: 4883c410                     add      rsp, 0x10
0000000008dff7d8: 48c784249000000000000000     mov      qword ptr [rsp + 0x90], 0
0000000008dff7e4: b807000000                   mov      eax, 7
0000000008dff7e9: 488d8c2497000000             lea      rcx, [rsp + 0x97]
0000000008dff7f1: bacdcccccc                   mov      edx, 0xcccccccd
0000000008dff7f6: 488d350ffc12f8               lea      rsi, [rip - 0x7ed03f1]
0000000008dff7fd: 0f1f00                       nop      dword ptr [rax]
0000000008dff800: 89df                         mov      edi, ebx
0000000008dff802: 480faffa                     imul     rdi, rdx
0000000008dff806: 48c1ef23                     shr      rdi, 0x23
0000000008dff80a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008dff80e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008dff812: 41f7d8                       neg      r8d
0000000008dff815: 4101d8                       add      r8d, ebx
0000000008dff818: 4183c023                     add      r8d, 0x23
0000000008dff81c: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008dff821: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008dff825: 48ffc1                       inc      rcx
0000000008dff828: 48ffc0                       inc      rax
0000000008dff82b: 83fb09                       cmp      ebx, 9
0000000008dff82e: 89fb                         mov      ebx, edi
0000000008dff830: 77ce                         ja       0x8dff800
0000000008dff832: 488d942498000000             lea      rdx, [rsp + 0x98]
0000000008dff83a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008dff83e: 4883f809                     cmp      rax, 9
0000000008dff842: 7229                         jb       0x8dff86d
0000000008dff844: 488d842499000000             lea      rax, [rsp + 0x99]
0000000008dff84c: 0f1f4000                     nop      dword ptr [rax]
0000000008dff850: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008dff853: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008dff857: 408839                       mov      byte ptr [rcx], dil
0000000008dff85a: 48ffc9                       dec      rcx
0000000008dff85d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008dff861: 488d7001                     lea      rsi, [rax + 1]
0000000008dff865: 4839c8                       cmp      rax, rcx
0000000008dff868: 4889f0                       mov      rax, rsi
0000000008dff86b: 72e3                         jb       0x8dff850
0000000008dff86d: 4889942490000000             mov      qword ptr [rsp + 0x90], rdx
0000000008dff875: 488d842490000000             lea      rax, [rsp + 0x90]
0000000008dff87d: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000008dff882: 0f57c0                       xorps    xmm0, xmm0
0000000008dff885: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008dff88a: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008dff88f: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008dff894: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008dff899: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008dff89e: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008dff8a3: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008dff8a8: 48c784248800000000000000     mov      qword ptr [rsp + 0x88], 0
0000000008dff8b4: 488d354b6328f8               lea      rsi, [rip - 0x7d79cb5]
0000000008dff8bb: 488d9c24b0010000             lea      rbx, [rsp + 0x1b0]
0000000008dff8c3: 488d542410                   lea      rdx, [rsp + 0x10]
0000000008dff8c8: 4889df                       mov      rdi, rbx
0000000008dff8cb: e820203100                   call     0x91118f0
0000000008dff8d0: 4889df                       mov      rdi, rbx
0000000008dff8d3: e8581d3100                   call     0x9111630
0000000008dff8d8: 41c746280d000000             mov      dword ptr [r14 + 0x28], 0xd
0000000008dff8e0: f68424f000000001             test     byte ptr [rsp + 0xf0], 1
0000000008dff8e8: 0f85df010000                 jne      0x8dffacd
0000000008dff8ee: e9e7010000                   jmp      0x8dffada
0000000008dff8f3: 488d842491020000             lea      rax, [rsp + 0x291]
0000000008dff8fb: 4889842448030000             mov      qword ptr [rsp + 0x348], rax
0000000008dff903: c684245003000000             mov      byte ptr [rsp + 0x350], 0
0000000008dff90b: 410fb68c2488000000           movzx    ecx, byte ptr [r12 + 0x88]
0000000008dff914: f6c101                       test     cl, 1
0000000008dff917: 740a                         je       0x8dff923
0000000008dff919: 498b8c2490000000             mov      rcx, qword ptr [r12 + 0x90]
0000000008dff921: eb02                         jmp      0x8dff925
0000000008dff923: d1e9                         shr      ecx, 1
0000000008dff925: 48c78424e002000000000000     mov      qword ptr [rsp + 0x2e0], 0
0000000008dff931: bf07000000                   mov      edi, 7
0000000008dff936: 488db424e7020000             lea      rsi, [rsp + 0x2e7]
0000000008dff93e: 6690                         nop
0000000008dff940: 4889c8                       mov      rax, rcx
0000000008dff943: 48f7e5                       mul      rbp
0000000008dff946: 48c1ea03                     shr      rdx, 3
0000000008dff94a: 488d0412                     lea      rax, [rdx + rdx]
0000000008dff94e: 488d0480                     lea      rax, [rax + rax*4]
0000000008dff952: 4d89e8                       mov      r8, r13
0000000008dff955: 4929c0                       sub      r8, rax
0000000008dff958: 410fb6440823                 movzx    eax, byte ptr [r8 + rcx + 0x23]
0000000008dff95e: 884601                       mov      byte ptr [rsi + 1], al
0000000008dff961: 48ffc6                       inc      rsi
0000000008dff964: 48ffc7                       inc      rdi
0000000008dff967: 4883f909                     cmp      rcx, 9
0000000008dff96b: 4889d1                       mov      rcx, rdx
0000000008dff96e: 77d0                         ja       0x8dff940
0000000008dff970: 488d8424e8020000             lea      rax, [rsp + 0x2e8]
0000000008dff978: c6460100                     mov      byte ptr [rsi + 1], 0
0000000008dff97c: 4883ff09                     cmp      rdi, 9
0000000008dff980: 722a                         jb       0x8dff9ac
0000000008dff982: 488d8c24e9020000             lea      rcx, [rsp + 0x2e9]
0000000008dff98a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008dff990: 0fb616                       movzx    edx, byte ptr [rsi]
0000000008dff993: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008dff997: 40883e                       mov      byte ptr [rsi], dil
0000000008dff99a: 48ffce                       dec      rsi
0000000008dff99d: 8851ff                       mov      byte ptr [rcx - 1], dl
0000000008dff9a0: 488d5101                     lea      rdx, [rcx + 1]
0000000008dff9a4: 4839f1                       cmp      rcx, rsi
0000000008dff9a7: 4889d1                       mov      rcx, rdx
0000000008dff9aa: 72e4                         jb       0x8dff990
0000000008dff9ac: 48898424e0020000             mov      qword ptr [rsp + 0x2e0], rax
0000000008dff9b4: 488d842490000000             lea      rax, [rsp + 0x90]
0000000008dff9bc: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000008dff9c1: 488d8424f0000000             lea      rax, [rsp + 0xf0]
0000000008dff9c9: 4889442418                   mov      qword ptr [rsp + 0x18], rax
0000000008dff9ce: 488d842440010000             lea      rax, [rsp + 0x140]
0000000008dff9d6: 4889442420                   mov      qword ptr [rsp + 0x20], rax
0000000008dff9db: 488d842448030000             lea      rax, [rsp + 0x348]
0000000008dff9e3: 4889442428                   mov      qword ptr [rsp + 0x28], rax
0000000008dff9e8: 488d8424e0020000             lea      rax, [rsp + 0x2e0]
0000000008dff9f0: 4889442430                   mov      qword ptr [rsp + 0x30], rax
0000000008dff9f5: 0f57c0                       xorps    xmm0, xmm0
0000000008dff9f8: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008dff9fd: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008dffa02: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008dffa07: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008dffa0c: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008dffa11: 48c784248800000000000000     mov      qword ptr [rsp + 0x88], 0
0000000008dffa1d: 488d358d6128f8               lea      rsi, [rip - 0x7d79e73]
0000000008dffa24: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dffa2c: 488d542410                   lea      rdx, [rsp + 0x10]
0000000008dffa31: e8ba1e3100                   call     0x91118f0
0000000008dffa36: f684249002000001             test     byte ptr [rsp + 0x290], 1
0000000008dffa3e: 4c8bac24d0030000             mov      r13, qword ptr [rsp + 0x3d0]
0000000008dffa46: 740d                         je       0x8dffa55
0000000008dffa48: 488bbc24a0020000             mov      rdi, qword ptr [rsp + 0x2a0]
0000000008dffa50: e8eba670fb                   call     0x450a140
0000000008dffa55: f684249801000001             test     byte ptr [rsp + 0x198], 1
0000000008dffa5d: 740d                         je       0x8dffa6c
0000000008dffa5f: 488bbc24a8010000             mov      rdi, qword ptr [rsp + 0x1a8]
0000000008dffa67: e8d4a670fb                   call     0x450a140
0000000008dffa6c: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dffa74: e8b71b3100                   call     0x9111630
0000000008dffa79: 41c745280d000000             mov      dword ptr [r13 + 0x28], 0xd
0000000008dffa81: f684244002000001             test     byte ptr [rsp + 0x240], 1
0000000008dffa89: 751e                         jne      0x8dffaa9
0000000008dffa8b: eb4d                         jmp      0x8dffada
0000000008dffa8d: d1ea                         shr      edx, 1
0000000008dffa8f: 488db42441020000             lea      rsi, [rsp + 0x241]
0000000008dffa97: 4c89ff                       mov      rdi, r15
0000000008dffa9a: e8f18a0100                   call     0x8e18590
0000000008dffa9f: f684244002000001             test     byte ptr [rsp + 0x240], 1
0000000008dffaa7: 7431                         je       0x8dffada
0000000008dffaa9: 488bbc2450020000             mov      rdi, qword ptr [rsp + 0x250]
0000000008dffab1: eb22                         jmp      0x8dffad5
0000000008dffab3: 488db424f1000000             lea      rsi, [rsp + 0xf1]
0000000008dffabb: 4c89ff                       mov      rdi, r15
0000000008dffabe: e8cd8a0100                   call     0x8e18590
0000000008dffac3: f68424f000000001             test     byte ptr [rsp + 0xf0], 1
0000000008dffacb: 740d                         je       0x8dffada
0000000008dffacd: 488bbc2400010000             mov      rdi, qword ptr [rsp + 0x100]
0000000008dffad5: e866a670fb                   call     0x450a140
0000000008dffada: 4881c498030000               add      rsp, 0x398
0000000008dffae1: 5b                           pop      rbx
0000000008dffae2: 415c                         pop      r12
0000000008dffae4: 415d                         pop      r13
0000000008dffae6: 415e                         pop      r14
0000000008dffae8: 415f                         pop      r15
0000000008dffaea: 5d                           pop      rbp
0000000008dffaeb: c3                           ret
0000000008dffaec: 488d842499010000             lea      rax, [rsp + 0x199]
0000000008dffaf4: 4889842440020000             mov      qword ptr [rsp + 0x240], rax
0000000008dffafc: c684244802000000             mov      byte ptr [rsp + 0x248], 0
0000000008dffb04: 410fb68c2488000000           movzx    ecx, byte ptr [r12 + 0x88]
0000000008dffb0d: f6c101                       test     cl, 1
0000000008dffb10: 740a                         je       0x8dffb1c
0000000008dffb12: 498b8c2490000000             mov      rcx, qword ptr [r12 + 0x90]
0000000008dffb1a: eb02                         jmp      0x8dffb1e
0000000008dffb1c: d1e9                         shr      ecx, 1
0000000008dffb1e: 48c784249002000000000000     mov      qword ptr [rsp + 0x290], 0
0000000008dffb2a: bf07000000                   mov      edi, 7
0000000008dffb2f: 488db42497020000             lea      rsi, [rsp + 0x297]
0000000008dffb37: 660f1f840000000000           nop      word ptr [rax + rax]
0000000008dffb40: 4889c8                       mov      rax, rcx
0000000008dffb43: 48f7e5                       mul      rbp
0000000008dffb46: 48c1ea03                     shr      rdx, 3
0000000008dffb4a: 488d0412                     lea      rax, [rdx + rdx]
0000000008dffb4e: 488d0480                     lea      rax, [rax + rax*4]
0000000008dffb52: 4d89e8                       mov      r8, r13
0000000008dffb55: 4929c0                       sub      r8, rax
0000000008dffb58: 410fb6440823                 movzx    eax, byte ptr [r8 + rcx + 0x23]
0000000008dffb5e: 884601                       mov      byte ptr [rsi + 1], al
0000000008dffb61: 48ffc6                       inc      rsi
0000000008dffb64: 48ffc7                       inc      rdi
0000000008dffb67: 4883f909                     cmp      rcx, 9
0000000008dffb6b: 4889d1                       mov      rcx, rdx
0000000008dffb6e: 77d0                         ja       0x8dffb40
0000000008dffb70: 488d842498020000             lea      rax, [rsp + 0x298]
0000000008dffb78: c6460100                     mov      byte ptr [rsi + 1], 0
0000000008dffb7c: 4883ff09                     cmp      rdi, 9
0000000008dffb80: 722a                         jb       0x8dffbac
0000000008dffb82: 488d8c2499020000             lea      rcx, [rsp + 0x299]
0000000008dffb8a: 660f1f440000                 nop      word ptr [rax + rax]
0000000008dffb90: 0fb616                       movzx    edx, byte ptr [rsi]
0000000008dffb93: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008dffb97: 40883e                       mov      byte ptr [rsi], dil
0000000008dffb9a: 48ffce                       dec      rsi
0000000008dffb9d: 8851ff                       mov      byte ptr [rcx - 1], dl
0000000008dffba0: 488d5101                     lea      rdx, [rcx + 1]
0000000008dffba4: 4839f1                       cmp      rcx, rsi
0000000008dffba7: 4889d1                       mov      rcx, rdx
0000000008dffbaa: 72e4                         jb       0x8dffb90
0000000008dffbac: 4889842490020000             mov      qword ptr [rsp + 0x290], rax
0000000008dffbb4: 488d842490000000             lea      rax, [rsp + 0x90]
0000000008dffbbc: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000008dffbc1: 488d8424f0000000             lea      rax, [rsp + 0xf0]
0000000008dffbc9: 4889442418                   mov      qword ptr [rsp + 0x18], rax
0000000008dffbce: 488d842440010000             lea      rax, [rsp + 0x140]
0000000008dffbd6: 4889442420                   mov      qword ptr [rsp + 0x20], rax
0000000008dffbdb: 488d842448030000             lea      rax, [rsp + 0x348]
0000000008dffbe3: 4889442428                   mov      qword ptr [rsp + 0x28], rax
0000000008dffbe8: 488d8424e0020000             lea      rax, [rsp + 0x2e0]
0000000008dffbf0: 4889442430                   mov      qword ptr [rsp + 0x30], rax
0000000008dffbf5: 488d842440020000             lea      rax, [rsp + 0x240]
0000000008dffbfd: 4889442438                   mov      qword ptr [rsp + 0x38], rax
0000000008dffc02: 488d842490020000             lea      rax, [rsp + 0x290]
0000000008dffc0a: 4889442440                   mov      qword ptr [rsp + 0x40], rax
0000000008dffc0f: 0f57c0                       xorps    xmm0, xmm0
0000000008dffc12: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008dffc17: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008dffc1c: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008dffc21: 0f11442478                   movups   xmmword ptr [rsp + 0x78], xmm0
0000000008dffc26: 48c784248800000000000000     mov      qword ptr [rsp + 0x88], 0
0000000008dffc32: 488d357ad61bf8               lea      rsi, [rip - 0x7e42986]
0000000008dffc39: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dffc41: 488d542410                   lea      rdx, [rsp + 0x10]
0000000008dffc46: e8a51c3100                   call     0x91118f0
0000000008dffc4b: f684249801000001             test     byte ptr [rsp + 0x198], 1
0000000008dffc53: 4c8bac24d0030000             mov      r13, qword ptr [rsp + 0x3d0]
0000000008dffc5b: 740d                         je       0x8dffc6a
0000000008dffc5d: 488bbc24a8010000             mov      rdi, qword ptr [rsp + 0x1a8]
0000000008dffc65: e8d6a470fb                   call     0x450a140
0000000008dffc6a: f684243003000001             test     byte ptr [rsp + 0x330], 1
0000000008dffc72: 740d                         je       0x8dffc81
0000000008dffc74: 488bbc2440030000             mov      rdi, qword ptr [rsp + 0x340]
0000000008dffc7c: e8bfa470fb                   call     0x450a140
0000000008dffc81: 488dbc24b0010000             lea      rdi, [rsp + 0x1b0]
0000000008dffc89: e8a2193100                   call     0x9111630
0000000008dffc8e: 41c745280d000000             mov      dword ptr [r13 + 0x28], 0xd
0000000008dffc96: e93ffeffff                   jmp      0x8dffada

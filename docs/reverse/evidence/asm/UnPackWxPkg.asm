0000000008e04cc0: 55                           push     rbp
0000000008e04cc1: 4157                         push     r15
0000000008e04cc3: 4156                         push     r14
0000000008e04cc5: 4155                         push     r13
0000000008e04cc7: 4154                         push     r12
0000000008e04cc9: 53                           push     rbx
0000000008e04cca: 4881ec48040000               sub      rsp, 0x448
0000000008e04cd1: 89f3                         mov      ebx, esi
0000000008e04cd3: 4c8bb424c0040000             mov      r14, qword ptr [rsp + 0x4c0]
0000000008e04cdb: 4585c0                       test     r8d, r8d
0000000008e04cde: 0f84bc020000                 je       0x8e04fa0
0000000008e04ce4: 4489c5                       mov      ebp, r8d
0000000008e04ce7: 4989cf                       mov      r15, rcx
0000000008e04cea: 4889bc2458010000             mov      qword ptr [rsp + 0x158], rdi
0000000008e04cf2: 4c898c2450010000             mov      qword ptr [rsp + 0x150], r9
0000000008e04cfa: 4889942448010000             mov      qword ptr [rsp + 0x148], rdx
0000000008e04d02: 4c8bb42498040000             mov      r14, qword ptr [rsp + 0x498]
0000000008e04d0a: 41c70600000000               mov      dword ptr [r14], 0
0000000008e04d11: 4c8da42480010000             lea      r12, [rsp + 0x180]
0000000008e04d19: 4c89e7                       mov      rdi, r12
0000000008e04d1c: e8ff6f0100                   call     0x8e1bd20
0000000008e04d21: 4c8dac2460010000             lea      r13, [rsp + 0x160]
0000000008e04d29: 4c89ef                       mov      rdi, r13
0000000008e04d2c: e8bf360100                   call     0x8e183f0
0000000008e04d31: 4c89ef                       mov      rdi, r13
0000000008e04d34: 4c89fe                       mov      rsi, r15
0000000008e04d37: 89ea                         mov      edx, ebp
0000000008e04d39: e852380100                   call     0x8e18590
0000000008e04d3e: 4c89e7                       mov      rdi, r12
0000000008e04d41: 4c89ee                       mov      rsi, r13
0000000008e04d44: e807730100                   call     0x8e1c050
0000000008e04d49: 85c0                         test     eax, eax
0000000008e04d4b: 0f84a0030000                 je       0x8e050f1
0000000008e04d51: 4189c4                       mov      r12d, eax
0000000008e04d54: bf04000000                   mov      edi, 4
0000000008e04d59: e8321f3100                   call     0x9116c90
0000000008e04d5e: 85c0                         test     eax, eax
0000000008e04d60: 4c8bac24c0040000             mov      r13, qword ptr [rsp + 0x4c0]
0000000008e04d68: 0f8423020000                 je       0x8e04f91
0000000008e04d6e: 4589e6                       mov      r14d, r12d
0000000008e04d71: 488d15e65215f8               lea      rdx, [rip - 0x7eaad1a]
0000000008e04d78: 488d0d743e0bf8               lea      rcx, [rip - 0x7f4c18c]
0000000008e04d7f: 4c8d0517b310f8               lea      r8, [rip - 0x7ef4ce9]
0000000008e04d86: 488dbc24d8010000             lea      rdi, [rsp + 0x1d8]
0000000008e04d8e: be04000000                   mov      esi, 4
0000000008e04d93: 41b9eb010000                 mov      r9d, 0x1eb
0000000008e04d99: 6a00                         push     0
0000000008e04d9b: 6a00                         push     0
0000000008e04d9d: e8fec73000                   call     0x91115a0
0000000008e04da2: 4883c410                     add      rsp, 0x10
0000000008e04da6: 48c784248000000000000000     mov      qword ptr [rsp + 0x80], 0
0000000008e04db2: b907000000                   mov      ecx, 7
0000000008e04db7: 488d942487000000             lea      rdx, [rsp + 0x87]
0000000008e04dbf: becdcccccc                   mov      esi, 0xcccccccd
0000000008e04dc4: 488d0541a612f8               lea      rax, [rip - 0x7ed59bf]
0000000008e04dcb: 0f1f440000                   nop      dword ptr [rax + rax]
0000000008e04dd0: 89df                         mov      edi, ebx
0000000008e04dd2: 480faffe                     imul     rdi, rsi
0000000008e04dd6: 48c1ef23                     shr      rdi, 0x23
0000000008e04dda: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e04dde: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e04de2: 41f7d8                       neg      r8d
0000000008e04de5: 4101d8                       add      r8d, ebx
0000000008e04de8: 4183c023                     add      r8d, 0x23
0000000008e04dec: 450fb60400                   movzx    r8d, byte ptr [r8 + rax]
0000000008e04df1: 44884201                     mov      byte ptr [rdx + 1], r8b
0000000008e04df5: 48ffc2                       inc      rdx
0000000008e04df8: 48ffc1                       inc      rcx
0000000008e04dfb: 83fb09                       cmp      ebx, 9
0000000008e04dfe: 89fb                         mov      ebx, edi
0000000008e04e00: 77ce                         ja       0x8e04dd0
0000000008e04e02: 488db42488000000             lea      rsi, [rsp + 0x88]
0000000008e04e0a: c6420100                     mov      byte ptr [rdx + 1], 0
0000000008e04e0e: 4883f909                     cmp      rcx, 9
0000000008e04e12: 722a                         jb       0x8e04e3e
0000000008e04e14: 488d8c2489000000             lea      rcx, [rsp + 0x89]
0000000008e04e1c: 0f1f4000                     nop      dword ptr [rax]
0000000008e04e20: 0fb63a                       movzx    edi, byte ptr [rdx]
0000000008e04e23: 440fb641ff                   movzx    r8d, byte ptr [rcx - 1]
0000000008e04e28: 448802                       mov      byte ptr [rdx], r8b
0000000008e04e2b: 48ffca                       dec      rdx
0000000008e04e2e: 408879ff                     mov      byte ptr [rcx - 1], dil
0000000008e04e32: 488d7901                     lea      rdi, [rcx + 1]
0000000008e04e36: 4839d1                       cmp      rcx, rdx
0000000008e04e39: 4889f9                       mov      rcx, rdi
0000000008e04e3c: 72e2                         jb       0x8e04e20
0000000008e04e3e: 4889b42480000000             mov      qword ptr [rsp + 0x80], rsi
0000000008e04e46: 48c78424d000000000000000     mov      qword ptr [rsp + 0xd0], 0
0000000008e04e52: b908000000                   mov      ecx, 8
0000000008e04e57: 660f1f840000000000           nop      word ptr [rax + rax]
0000000008e04e60: 4963d6                       movsxd   rdx, r14d
0000000008e04e63: 4c69f267666666               imul     r14, rdx, 0x66666667
0000000008e04e6a: 4c89f6                       mov      rsi, r14
0000000008e04e6d: 48c1ee3f                     shr      rsi, 0x3f
0000000008e04e71: 49c1fe22                     sar      r14, 0x22
0000000008e04e75: 4101f6                       add      r14d, esi
0000000008e04e78: 438d3436                     lea      esi, [r14 + r14]
0000000008e04e7c: 8d34b6                       lea      esi, [rsi + rsi*4]
0000000008e04e7f: 89d7                         mov      edi, edx
0000000008e04e81: 29f7                         sub      edi, esi
0000000008e04e83: 4863f7                       movsxd   rsi, edi
0000000008e04e86: 0fb6740623                   movzx    esi, byte ptr [rsi + rax + 0x23]
0000000008e04e8b: 4088b40cd0000000             mov      byte ptr [rsp + rcx + 0xd0], sil
0000000008e04e93: 48ffc1                       inc      rcx
0000000008e04e96: 83c209                       add      edx, 9
0000000008e04e99: 83fa12                       cmp      edx, 0x12
0000000008e04e9c: 77c2                         ja       0x8e04e60
0000000008e04e9e: 4585e4                       test     r12d, r12d
0000000008e04ea1: 790b                         jns      0x8e04eae
0000000008e04ea3: c6840cd00000002d             mov      byte ptr [rsp + rcx + 0xd0], 0x2d
0000000008e04eab: 48ffc1                       inc      rcx
0000000008e04eae: 488d8424d8000000             lea      rax, [rsp + 0xd8]
0000000008e04eb6: c6840cd000000000             mov      byte ptr [rsp + rcx + 0xd0], 0
0000000008e04ebe: 4883f90a                     cmp      rcx, 0xa
0000000008e04ec2: 7c39                         jl       0x8e04efd
0000000008e04ec4: 4801e1                       add      rcx, rsp
0000000008e04ec7: 4881c1d0000000               add      rcx, 0xd0
0000000008e04ece: 48ffc9                       dec      rcx
0000000008e04ed1: 488d9424d9000000             lea      rdx, [rsp + 0xd9]
0000000008e04ed9: 0f1f8000000000               nop      dword ptr [rax]
0000000008e04ee0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e04ee3: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008e04ee7: 408839                       mov      byte ptr [rcx], dil
0000000008e04eea: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008e04eee: 48ffc9                       dec      rcx
0000000008e04ef1: 488d7201                     lea      rsi, [rdx + 1]
0000000008e04ef5: 4839ca                       cmp      rdx, rcx
0000000008e04ef8: 4889f2                       mov      rdx, rsi
0000000008e04efb: 72e3                         jb       0x8e04ee0
0000000008e04efd: 48898424d0000000             mov      qword ptr [rsp + 0xd0], rax
0000000008e04f05: 89ee                         mov      esi, ebp
0000000008e04f07: 4c89ff                       mov      rdi, r15
0000000008e04f0a: e8a1563300                   call     0x913a5b0
0000000008e04f0f: 4889842468020000             mov      qword ptr [rsp + 0x268], rax
0000000008e04f17: c684247002000000             mov      byte ptr [rsp + 0x270], 0
0000000008e04f1f: 488d842480000000             lea      rax, [rsp + 0x80]
0000000008e04f27: 48890424                     mov      qword ptr [rsp], rax
0000000008e04f2b: 488d8424d0000000             lea      rax, [rsp + 0xd0]
0000000008e04f33: 4889442408                   mov      qword ptr [rsp + 8], rax
0000000008e04f38: 488d842468020000             lea      rax, [rsp + 0x268]
0000000008e04f40: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000008e04f45: 0f57c0                       xorps    xmm0, xmm0
0000000008e04f48: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008e04f4d: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008e04f52: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008e04f57: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008e04f5c: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008e04f61: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008e04f66: 48c744247800000000           mov      qword ptr [rsp + 0x78], 0
0000000008e04f6f: 488d35dd9d06f8               lea      rsi, [rip - 0x7f96223]
0000000008e04f76: 488d9c24d8010000             lea      rbx, [rsp + 0x1d8]
0000000008e04f7e: 4889e2                       mov      rdx, rsp
0000000008e04f81: 4889df                       mov      rdi, rbx
0000000008e04f84: e867c93000                   call     0x91118f0
0000000008e04f89: 4889df                       mov      rdi, rbx
0000000008e04f8c: e89fc63000                   call     0x9111630
0000000008e04f91: 41c7452808000000             mov      dword ptr [r13 + 0x28], 8
0000000008e04f99: 31ed                         xor      ebp, ebp
0000000008e04f9b: e934110000                   jmp      0x8e060d4
0000000008e04fa0: bf04000000                   mov      edi, 4
0000000008e04fa5: e8e61c3100                   call     0x9116c90
0000000008e04faa: 85c0                         test     eax, eax
0000000008e04fac: 0f8430010000                 je       0x8e050e2
0000000008e04fb2: 488d15a55015f8               lea      rdx, [rip - 0x7eaaf5b]
0000000008e04fb9: 488d0d333c0bf8               lea      rcx, [rip - 0x7f4c3cd]
0000000008e04fc0: 4c8d05d6b010f8               lea      r8, [rip - 0x7ef4f2a]
0000000008e04fc7: 488dbc24d8010000             lea      rdi, [rsp + 0x1d8]
0000000008e04fcf: be04000000                   mov      esi, 4
0000000008e04fd4: 41b9da010000                 mov      r9d, 0x1da
0000000008e04fda: 6a00                         push     0
0000000008e04fdc: 6a00                         push     0
0000000008e04fde: e8bdc53000                   call     0x91115a0
0000000008e04fe3: 4883c410                     add      rsp, 0x10
0000000008e04fe7: 48c784248001000000000000     mov      qword ptr [rsp + 0x180], 0
0000000008e04ff3: b807000000                   mov      eax, 7
0000000008e04ff8: 488d8c2487010000             lea      rcx, [rsp + 0x187]
0000000008e05000: bacdcccccc                   mov      edx, 0xcccccccd
0000000008e05005: 488d3500a412f8               lea      rsi, [rip - 0x7ed5c00]
0000000008e0500c: 0f1f4000                     nop      dword ptr [rax]
0000000008e05010: 89df                         mov      edi, ebx
0000000008e05012: 480faffa                     imul     rdi, rdx
0000000008e05016: 48c1ef23                     shr      rdi, 0x23
0000000008e0501a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e0501e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e05022: 41f7d8                       neg      r8d
0000000008e05025: 4101d8                       add      r8d, ebx
0000000008e05028: 4183c023                     add      r8d, 0x23
0000000008e0502c: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008e05031: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e05035: 48ffc1                       inc      rcx
0000000008e05038: 48ffc0                       inc      rax
0000000008e0503b: 83fb09                       cmp      ebx, 9
0000000008e0503e: 89fb                         mov      ebx, edi
0000000008e05040: 77ce                         ja       0x8e05010
0000000008e05042: 488d942488010000             lea      rdx, [rsp + 0x188]
0000000008e0504a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e0504e: 4883f809                     cmp      rax, 9
0000000008e05052: 7229                         jb       0x8e0507d
0000000008e05054: 488d842489010000             lea      rax, [rsp + 0x189]
0000000008e0505c: 0f1f4000                     nop      dword ptr [rax]
0000000008e05060: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e05063: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e05067: 408839                       mov      byte ptr [rcx], dil
0000000008e0506a: 48ffc9                       dec      rcx
0000000008e0506d: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e05071: 488d7001                     lea      rsi, [rax + 1]
0000000008e05075: 4839c8                       cmp      rax, rcx
0000000008e05078: 4889f0                       mov      rax, rsi
0000000008e0507b: 72e3                         jb       0x8e05060
0000000008e0507d: 4889942480010000             mov      qword ptr [rsp + 0x180], rdx
0000000008e05085: 488d842480010000             lea      rax, [rsp + 0x180]
0000000008e0508d: 48890424                     mov      qword ptr [rsp], rax
0000000008e05091: 0f57c0                       xorps    xmm0, xmm0
0000000008e05094: 0f11442408                   movups   xmmword ptr [rsp + 8], xmm0
0000000008e05099: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008e0509e: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008e050a3: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008e050a8: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008e050ad: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008e050b2: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008e050b7: 48c744247800000000           mov      qword ptr [rsp + 0x78], 0
0000000008e050c0: 488d356e9cf6f7               lea      rsi, [rip - 0x8096392]
0000000008e050c7: 488d9c24d8010000             lea      rbx, [rsp + 0x1d8]
0000000008e050cf: 4889e2                       mov      rdx, rsp
0000000008e050d2: 4889df                       mov      rdi, rbx
0000000008e050d5: e816c83000                   call     0x91118f0
0000000008e050da: 4889df                       mov      rdi, rbx
0000000008e050dd: e84ec53000                   call     0x9111630
0000000008e050e2: 41c746280a000000             mov      dword ptr [r14 + 0x28], 0xa
0000000008e050ea: 31ed                         xor      ebp, ebp
0000000008e050ec: e9fd0f0000                   jmp      0x8e060ee
0000000008e050f1: 4c8ba424a8040000             mov      r12, qword ptr [rsp + 0x4a8]
0000000008e050f9: 4c8bac24a0040000             mov      r13, qword ptr [rsp + 0x4a0]
0000000008e05101: 4c8dbc2480010000             lea      r15, [rsp + 0x180]
0000000008e05109: 4c89ff                       mov      rdi, r15
0000000008e0510c: e88f6d0100                   call     0x8e1bea0
0000000008e05111: 41894500                     mov      dword ptr [r13], eax
0000000008e05115: 4c89ff                       mov      rdi, r15
0000000008e05118: e8a36c0100                   call     0x8e1bdc0
0000000008e0511d: 6641890424                   mov      word ptr [r12], ax
0000000008e05122: 4c89ff                       mov      rdi, r15
0000000008e05125: e8a66d0100                   call     0x8e1bed0
0000000008e0512a: 418906                       mov      dword ptr [r14], eax
0000000008e0512d: 85c0                         test     eax, eax
0000000008e0512f: 0f84f1010000                 je       0x8e05326
0000000008e05135: bf02000000                   mov      edi, 2
0000000008e0513a: e8511b3100                   call     0x9116c90
0000000008e0513f: 85c0                         test     eax, eax
0000000008e05141: 0f84df010000                 je       0x8e05326
0000000008e05147: 488d15104f15f8               lea      rdx, [rip - 0x7eab0f0]
0000000008e0514e: 488d0d9e3a0bf8               lea      rcx, [rip - 0x7f4c562]
0000000008e05155: 4c8d0541af10f8               lea      r8, [rip - 0x7ef50bf]
0000000008e0515c: 488dbc24d8010000             lea      rdi, [rsp + 0x1d8]
0000000008e05164: be02000000                   mov      esi, 2
0000000008e05169: 41b9f4010000                 mov      r9d, 0x1f4
0000000008e0516f: 6a00                         push     0
0000000008e05171: 6a00                         push     0
0000000008e05173: e828c43000                   call     0x91115a0
0000000008e05178: 4883c410                     add      rsp, 0x10
0000000008e0517c: 48c784248000000000000000     mov      qword ptr [rsp + 0x80], 0
0000000008e05188: b907000000                   mov      ecx, 7
0000000008e0518d: 488d942487000000             lea      rdx, [rsp + 0x87]
0000000008e05195: becdcccccc                   mov      esi, 0xcccccccd
0000000008e0519a: 488d056ba212f8               lea      rax, [rip - 0x7ed5d95]
0000000008e051a1: 89df                         mov      edi, ebx
0000000008e051a3: 666666662e0f1f840000000000   nop      word ptr cs:[rax + rax]
0000000008e051b0: 4189f8                       mov      r8d, edi
0000000008e051b3: 4c0fafc6                     imul     r8, rsi
0000000008e051b7: 49c1e823                     shr      r8, 0x23
0000000008e051bb: 478d0c00                     lea      r9d, [r8 + r8]
0000000008e051bf: 478d0c89                     lea      r9d, [r9 + r9*4]
0000000008e051c3: 41f7d9                       neg      r9d
0000000008e051c6: 4101f9                       add      r9d, edi
0000000008e051c9: 4183c123                     add      r9d, 0x23
0000000008e051cd: 450fb60c01                   movzx    r9d, byte ptr [r9 + rax]
0000000008e051d2: 44884a01                     mov      byte ptr [rdx + 1], r9b
0000000008e051d6: 48ffc2                       inc      rdx
0000000008e051d9: 48ffc1                       inc      rcx
0000000008e051dc: 83ff09                       cmp      edi, 9
0000000008e051df: 4489c7                       mov      edi, r8d
0000000008e051e2: 77cc                         ja       0x8e051b0
0000000008e051e4: 488db42488000000             lea      rsi, [rsp + 0x88]
0000000008e051ec: c6420100                     mov      byte ptr [rdx + 1], 0
0000000008e051f0: 4883f909                     cmp      rcx, 9
0000000008e051f4: 7228                         jb       0x8e0521e
0000000008e051f6: 488d8c2489000000             lea      rcx, [rsp + 0x89]
0000000008e051fe: 6690                         nop
0000000008e05200: 0fb63a                       movzx    edi, byte ptr [rdx]
0000000008e05203: 440fb641ff                   movzx    r8d, byte ptr [rcx - 1]
0000000008e05208: 448802                       mov      byte ptr [rdx], r8b
0000000008e0520b: 48ffca                       dec      rdx
0000000008e0520e: 408879ff                     mov      byte ptr [rcx - 1], dil
0000000008e05212: 488d7901                     lea      rdi, [rcx + 1]
0000000008e05216: 4839d1                       cmp      rcx, rdx
0000000008e05219: 4889f9                       mov      rcx, rdi
0000000008e0521c: 72e2                         jb       0x8e05200
0000000008e0521e: 4889b42480000000             mov      qword ptr [rsp + 0x80], rsi
0000000008e05226: 418b36                       mov      esi, dword ptr [r14]
0000000008e05229: 48c78424d000000000000000     mov      qword ptr [rsp + 0xd0], 0
0000000008e05235: b907000000                   mov      ecx, 7
0000000008e0523a: 488d9424d7000000             lea      rdx, [rsp + 0xd7]
0000000008e05242: bfcdcccccc                   mov      edi, 0xcccccccd
0000000008e05247: 660f1f840000000000           nop      word ptr [rax + rax]
0000000008e05250: 4189f0                       mov      r8d, esi
0000000008e05253: 4c0fafc7                     imul     r8, rdi
0000000008e05257: 49c1e823                     shr      r8, 0x23
0000000008e0525b: 478d0c00                     lea      r9d, [r8 + r8]
0000000008e0525f: 478d0c89                     lea      r9d, [r9 + r9*4]
0000000008e05263: 41f7d9                       neg      r9d
0000000008e05266: 4101f1                       add      r9d, esi
0000000008e05269: 4183c123                     add      r9d, 0x23
0000000008e0526d: 450fb60c01                   movzx    r9d, byte ptr [r9 + rax]
0000000008e05272: 44884a01                     mov      byte ptr [rdx + 1], r9b
0000000008e05276: 48ffc2                       inc      rdx
0000000008e05279: 48ffc1                       inc      rcx
0000000008e0527c: 83fe09                       cmp      esi, 9
0000000008e0527f: 4489c6                       mov      esi, r8d
0000000008e05282: 77cc                         ja       0x8e05250
0000000008e05284: 488d8424d8000000             lea      rax, [rsp + 0xd8]
0000000008e0528c: c6420100                     mov      byte ptr [rdx + 1], 0
0000000008e05290: 4883f909                     cmp      rcx, 9
0000000008e05294: 7227                         jb       0x8e052bd
0000000008e05296: 488d8c24d9000000             lea      rcx, [rsp + 0xd9]
0000000008e0529e: 6690                         nop
0000000008e052a0: 0fb632                       movzx    esi, byte ptr [rdx]
0000000008e052a3: 0fb679ff                     movzx    edi, byte ptr [rcx - 1]
0000000008e052a7: 40883a                       mov      byte ptr [rdx], dil
0000000008e052aa: 48ffca                       dec      rdx
0000000008e052ad: 408871ff                     mov      byte ptr [rcx - 1], sil
0000000008e052b1: 488d7101                     lea      rsi, [rcx + 1]
0000000008e052b5: 4839d1                       cmp      rcx, rdx
0000000008e052b8: 4889f1                       mov      rcx, rsi
0000000008e052bb: 72e3                         jb       0x8e052a0
0000000008e052bd: 48898424d0000000             mov      qword ptr [rsp + 0xd0], rax
0000000008e052c5: 488d842480000000             lea      rax, [rsp + 0x80]
0000000008e052cd: 48890424                     mov      qword ptr [rsp], rax
0000000008e052d1: 488d8424d0000000             lea      rax, [rsp + 0xd0]
0000000008e052d9: 4889442408                   mov      qword ptr [rsp + 8], rax
0000000008e052de: 0f57c0                       xorps    xmm0, xmm0
0000000008e052e1: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008e052e6: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008e052eb: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008e052f0: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008e052f5: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008e052fa: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008e052ff: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008e05304: 488d35470b23f8               lea      rsi, [rip - 0x7dcf4b9]
0000000008e0530b: 4c8dbc24d8010000             lea      r15, [rsp + 0x1d8]
0000000008e05313: 4889e2                       mov      rdx, rsp
0000000008e05316: 4c89ff                       mov      rdi, r15
0000000008e05319: e8d2c53000                   call     0x91118f0
0000000008e0531e: 4c89ff                       mov      rdi, r15
0000000008e05321: e80ac33000                   call     0x9111630
0000000008e05326: 488dbc2480010000             lea      rdi, [rsp + 0x180]
0000000008e0532e: e87d6a0100                   call     0x8e1bdb0
0000000008e05333: 4885c0                       test     rax, rax
0000000008e05336: 0f8492000000                 je       0x8e053ce
0000000008e0533c: 4989c7                       mov      r15, rax
0000000008e0533f: 4c8ba42488040000             mov      r12, qword ptr [rsp + 0x488]
0000000008e05347: 4c8dac2420010000             lea      r13, [rsp + 0x120]
0000000008e0534f: 4c89ef                       mov      rdi, r13
0000000008e05352: e8e9270100                   call     0x8e17b40
0000000008e05357: 4c89ff                       mov      rdi, r15
0000000008e0535a: e8a1320100                   call     0x8e18600
0000000008e0535f: 488d6801                     lea      rbp, [rax + 1]
0000000008e05363: 4c89ff                       mov      rdi, r15
0000000008e05366: e885320100                   call     0x8e185f0
0000000008e0536b: 8d50ff                       lea      edx, [rax - 1]
0000000008e0536e: 4c89ef                       mov      rdi, r13
0000000008e05371: 4889ee                       mov      rsi, rbp
0000000008e05374: e867ad1400                   call     0x8f500e0
0000000008e05379: 4c89e7                       mov      rdi, r12
0000000008e0537c: e85fc63100                   call     0x91219e0
0000000008e05381: 488b842428010000             mov      rax, qword ptr [rsp + 0x128]
0000000008e05389: 4889c1                       mov      rcx, rax
0000000008e0538c: 4885c0                       test     rax, rax
0000000008e0538f: 0f849c010000                 je       0x8e05531
0000000008e05395: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e05399: 4885c9                       test     rcx, rcx
0000000008e0539c: 0f84aa010000                 je       0x8e0554c
0000000008e053a2: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e053a6: 4885c9                       test     rcx, rcx
0000000008e053a9: 0f84b8010000                 je       0x8e05567
0000000008e053af: 488b7108                     mov      rsi, qword ptr [rcx + 8]
0000000008e053b3: f60601                       test     byte ptr [rsi], 1
0000000008e053b6: 0f84c6010000                 je       0x8e05582
0000000008e053bc: 488b7610                     mov      rsi, qword ptr [rsi + 0x10]
0000000008e053c0: 4885c0                       test     rax, rax
0000000008e053c3: 0f85cf010000                 jne      0x8e05598
0000000008e053c9: e9bc010000                   jmp      0x8e0558a
0000000008e053ce: bf04000000                   mov      edi, 4
0000000008e053d3: e8b8183100                   call     0x9116c90
0000000008e053d8: 85c0                         test     eax, eax
0000000008e053da: 4c8bb424c0040000             mov      r14, qword ptr [rsp + 0x4c0]
0000000008e053e2: 0f843a010000                 je       0x8e05522
0000000008e053e8: 488d156f4c15f8               lea      rdx, [rip - 0x7eab391]
0000000008e053ef: 488d0dfd370bf8               lea      rcx, [rip - 0x7f4c803]
0000000008e053f6: 4c8d05a0ac10f8               lea      r8, [rip - 0x7ef5360]
0000000008e053fd: 488dbc24d8010000             lea      rdi, [rsp + 0x1d8]
0000000008e05405: be04000000                   mov      esi, 4
0000000008e0540a: 41b9f9010000                 mov      r9d, 0x1f9
0000000008e05410: 6a00                         push     0
0000000008e05412: 6a00                         push     0
0000000008e05414: e887c13000                   call     0x91115a0
0000000008e05419: 4883c410                     add      rsp, 0x10
0000000008e0541d: 48c784248000000000000000     mov      qword ptr [rsp + 0x80], 0
0000000008e05429: b807000000                   mov      eax, 7
0000000008e0542e: 488d8c2487000000             lea      rcx, [rsp + 0x87]
0000000008e05436: bacdcccccc                   mov      edx, 0xcccccccd
0000000008e0543b: 488d35ca9f12f8               lea      rsi, [rip - 0x7ed6036]
0000000008e05442: 66666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
0000000008e05450: 89df                         mov      edi, ebx
0000000008e05452: 480faffa                     imul     rdi, rdx
0000000008e05456: 48c1ef23                     shr      rdi, 0x23
0000000008e0545a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e0545e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e05462: 41f7d8                       neg      r8d
0000000008e05465: 4101d8                       add      r8d, ebx
0000000008e05468: 4183c023                     add      r8d, 0x23
0000000008e0546c: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008e05471: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e05475: 48ffc1                       inc      rcx
0000000008e05478: 48ffc0                       inc      rax
0000000008e0547b: 83fb09                       cmp      ebx, 9
0000000008e0547e: 89fb                         mov      ebx, edi
0000000008e05480: 77ce                         ja       0x8e05450
0000000008e05482: 488d942488000000             lea      rdx, [rsp + 0x88]
0000000008e0548a: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e0548e: 4883f809                     cmp      rax, 9
0000000008e05492: 7229                         jb       0x8e054bd
0000000008e05494: 488d842489000000             lea      rax, [rsp + 0x89]
0000000008e0549c: 0f1f4000                     nop      dword ptr [rax]
0000000008e054a0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e054a3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e054a7: 408839                       mov      byte ptr [rcx], dil
0000000008e054aa: 48ffc9                       dec      rcx
0000000008e054ad: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e054b1: 488d7001                     lea      rsi, [rax + 1]
0000000008e054b5: 4839c8                       cmp      rax, rcx
0000000008e054b8: 4889f0                       mov      rax, rsi
0000000008e054bb: 72e3                         jb       0x8e054a0
0000000008e054bd: 4889942480000000             mov      qword ptr [rsp + 0x80], rdx
0000000008e054c5: 488d842480000000             lea      rax, [rsp + 0x80]
0000000008e054cd: 48890424                     mov      qword ptr [rsp], rax
0000000008e054d1: 0f57c0                       xorps    xmm0, xmm0
0000000008e054d4: 0f11442408                   movups   xmmword ptr [rsp + 8], xmm0
0000000008e054d9: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008e054de: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008e054e3: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008e054e8: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008e054ed: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008e054f2: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008e054f7: 48c744247800000000           mov      qword ptr [rsp + 0x78], 0
0000000008e05500: 488d356d0923f8               lea      rsi, [rip - 0x7dcf693]
0000000008e05507: 488d9c24d8010000             lea      rbx, [rsp + 0x1d8]
0000000008e0550f: 4889e2                       mov      rdx, rsp
0000000008e05512: 4889df                       mov      rdi, rbx
0000000008e05515: e8d6c33000                   call     0x91118f0
0000000008e0551a: 4889df                       mov      rdi, rbx
0000000008e0551d: e80ec13000                   call     0x9111630
0000000008e05522: 41c746280a000000             mov      dword ptr [r14 + 0x28], 0xa
0000000008e0552a: 31ed                         xor      ebp, ebp
0000000008e0552c: e9a30b0000                   jmp      0x8e060d4
0000000008e05531: 488d0d50e9f001               lea      rcx, [rip + 0x1f0e950]
0000000008e05538: 488b09                       mov      rcx, qword ptr [rcx]
0000000008e0553b: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e0553f: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e05543: 4885c9                       test     rcx, rcx
0000000008e05546: 0f8556feffff                 jne      0x8e053a2
0000000008e0554c: 488d0d15e9f001               lea      rcx, [rip + 0x1f0e915]
0000000008e05553: 488b09                       mov      rcx, qword ptr [rcx]
0000000008e05556: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e0555a: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e0555e: 4885c9                       test     rcx, rcx
0000000008e05561: 0f8548feffff                 jne      0x8e053af
0000000008e05567: 488d0deae8f001               lea      rcx, [rip + 0x1f0e8ea]
0000000008e0556e: 488b09                       mov      rcx, qword ptr [rcx]
0000000008e05571: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e05575: 488b7108                     mov      rsi, qword ptr [rcx + 8]
0000000008e05579: f60601                       test     byte ptr [rsi], 1
0000000008e0557c: 0f853afeffff                 jne      0x8e053bc
0000000008e05582: 48ffc6                       inc      rsi
0000000008e05585: 4885c0                       test     rax, rax
0000000008e05588: 750e                         jne      0x8e05598
0000000008e0558a: 488d05f7e8f001               lea      rax, [rip + 0x1f0e8f7]
0000000008e05591: 488b00                       mov      rax, qword ptr [rax]
0000000008e05594: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05598: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e0559c: 4885c0                       test     rax, rax
0000000008e0559f: 0f84ac010000                 je       0x8e05751
0000000008e055a5: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e055a9: 4885c0                       test     rax, rax
0000000008e055ac: 0f84ba010000                 je       0x8e0576c
0000000008e055b2: 4c8bac2490040000             mov      r13, qword ptr [rsp + 0x490]
0000000008e055ba: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e055be: 0fb610                       movzx    edx, byte ptr [rax]
0000000008e055c1: f6c201                       test     dl, 1
0000000008e055c4: 7406                         je       0x8e055cc
0000000008e055c6: 488b5008                     mov      rdx, qword ptr [rax + 8]
0000000008e055ca: eb02                         jmp      0x8e055ce
0000000008e055cc: d1ea                         shr      edx, 1
0000000008e055ce: 4c89e7                       mov      rdi, r12
0000000008e055d1: e8cac53100                   call     0x9121ba0
0000000008e055d6: 488dbc2480010000             lea      rdi, [rsp + 0x180]
0000000008e055de: e84d680100                   call     0x8e1be30
0000000008e055e3: 41894500                     mov      dword ptr [r13], eax
0000000008e055e7: 85c0                         test     eax, eax
0000000008e055e9: 0f8490010000                 je       0x8e0577f
0000000008e055ef: bf04000000                   mov      edi, 4
0000000008e055f4: 83f8f3                       cmp      eax, -0xd
0000000008e055f7: 0f850b020000                 jne      0x8e05808
0000000008e055fd: e88e163100                   call     0x9116c90
0000000008e05602: 85c0                         test     eax, eax
0000000008e05604: 4c8bb424c0040000             mov      r14, qword ptr [rsp + 0x4c0]
0000000008e0560c: 0f8430010000                 je       0x8e05742
0000000008e05612: 488d15454a15f8               lea      rdx, [rip - 0x7eab5bb]
0000000008e05619: 488d0dd3350bf8               lea      rcx, [rip - 0x7f4ca2d]
0000000008e05620: 4c8d0576aa10f8               lea      r8, [rip - 0x7ef558a]
0000000008e05627: 488dbc24d8010000             lea      rdi, [rsp + 0x1d8]
0000000008e0562f: be04000000                   mov      esi, 4
0000000008e05634: 41b90f020000                 mov      r9d, 0x20f
0000000008e0563a: 6a00                         push     0
0000000008e0563c: 6a00                         push     0
0000000008e0563e: e85dbf3000                   call     0x91115a0
0000000008e05643: 4883c410                     add      rsp, 0x10
0000000008e05647: 48c784248000000000000000     mov      qword ptr [rsp + 0x80], 0
0000000008e05653: b807000000                   mov      eax, 7
0000000008e05658: 488d8c2487000000             lea      rcx, [rsp + 0x87]
0000000008e05660: bacdcccccc                   mov      edx, 0xcccccccd
0000000008e05665: 488d35a09d12f8               lea      rsi, [rip - 0x7ed6260]
0000000008e0566c: 0f1f4000                     nop      dword ptr [rax]
0000000008e05670: 89df                         mov      edi, ebx
0000000008e05672: 480faffa                     imul     rdi, rdx
0000000008e05676: 48c1ef23                     shr      rdi, 0x23
0000000008e0567a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e0567e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e05682: 41f7d8                       neg      r8d
0000000008e05685: 4101d8                       add      r8d, ebx
0000000008e05688: 4183c023                     add      r8d, 0x23
0000000008e0568c: 450fb60430                   movzx    r8d, byte ptr [r8 + rsi]
0000000008e05691: 44884101                     mov      byte ptr [rcx + 1], r8b
0000000008e05695: 48ffc1                       inc      rcx
0000000008e05698: 48ffc0                       inc      rax
0000000008e0569b: 83fb09                       cmp      ebx, 9
0000000008e0569e: 89fb                         mov      ebx, edi
0000000008e056a0: 77ce                         ja       0x8e05670
0000000008e056a2: 488d942488000000             lea      rdx, [rsp + 0x88]
0000000008e056aa: c6410100                     mov      byte ptr [rcx + 1], 0
0000000008e056ae: 4883f809                     cmp      rax, 9
0000000008e056b2: 7229                         jb       0x8e056dd
0000000008e056b4: 488d842489000000             lea      rax, [rsp + 0x89]
0000000008e056bc: 0f1f4000                     nop      dword ptr [rax]
0000000008e056c0: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e056c3: 0fb678ff                     movzx    edi, byte ptr [rax - 1]
0000000008e056c7: 408839                       mov      byte ptr [rcx], dil
0000000008e056ca: 48ffc9                       dec      rcx
0000000008e056cd: 408870ff                     mov      byte ptr [rax - 1], sil
0000000008e056d1: 488d7001                     lea      rsi, [rax + 1]
0000000008e056d5: 4839c8                       cmp      rax, rcx
0000000008e056d8: 4889f0                       mov      rax, rsi
0000000008e056db: 72e3                         jb       0x8e056c0
0000000008e056dd: 4889942480000000             mov      qword ptr [rsp + 0x80], rdx
0000000008e056e5: 488d842480000000             lea      rax, [rsp + 0x80]
0000000008e056ed: 48890424                     mov      qword ptr [rsp], rax
0000000008e056f1: 0f57c0                       xorps    xmm0, xmm0
0000000008e056f4: 0f11442408                   movups   xmmword ptr [rsp + 8], xmm0
0000000008e056f9: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008e056fe: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008e05703: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008e05708: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008e0570d: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008e05712: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008e05717: 48c744247800000000           mov      qword ptr [rsp + 0x78], 0
0000000008e05720: 488d35768926f8               lea      rsi, [rip - 0x7d9768a]
0000000008e05727: 488d9c24d8010000             lea      rbx, [rsp + 0x1d8]
0000000008e0572f: 4889e2                       mov      rdx, rsp
0000000008e05732: 4889df                       mov      rdi, rbx
0000000008e05735: e8b6c13000                   call     0x91118f0
0000000008e0573a: 4889df                       mov      rdi, rbx
0000000008e0573d: e8eebe3000                   call     0x9111630
0000000008e05742: 41c746280e000000             mov      dword ptr [r14 + 0x28], 0xe
0000000008e0574a: 31ed                         xor      ebp, ebp
0000000008e0574c: e976090000                   jmp      0x8e060c7
0000000008e05751: 488d0510e7f001               lea      rax, [rip + 0x1f0e710]
0000000008e05758: 488b00                       mov      rax, qword ptr [rax]
0000000008e0575b: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e0575f: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05763: 4885c0                       test     rax, rax
0000000008e05766: 0f8546feffff                 jne      0x8e055b2
0000000008e0576c: 488d05e5e6f001               lea      rax, [rip + 0x1f0e6e5]
0000000008e05773: 488b00                       mov      rax, qword ptr [rax]
0000000008e05776: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e0577a: e933feffff                   jmp      0x8e055b2
0000000008e0577f: 488b842428010000             mov      rax, qword ptr [rsp + 0x128]
0000000008e05787: 4885c0                       test     rax, rax
0000000008e0578a: 0f8493020000                 je       0x8e05a23
0000000008e05790: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05794: 4885c0                       test     rax, rax
0000000008e05797: 4c8bac24c0040000             mov      r13, qword ptr [rsp + 0x4c0]
0000000008e0579f: 0f84a1020000                 je       0x8e05a46
0000000008e057a5: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e057a9: 4885c0                       test     rax, rax
0000000008e057ac: 0f84af020000                 je       0x8e05a61
0000000008e057b2: 83783800                     cmp      dword ptr [rax + 0x38], 0
0000000008e057b6: 0f84bd020000                 je       0x8e05a79
0000000008e057bc: bf08000000                   mov      edi, 8
0000000008e057c1: e8da858601                   call     0xa66dda0
0000000008e057c6: 4989c7                       mov      r15, rax
0000000008e057c9: 4889c7                       mov      rdi, rax
0000000008e057cc: e81f2c0100                   call     0x8e183f0
0000000008e057d1: 488b842428010000             mov      rax, qword ptr [rsp + 0x128]
0000000008e057d9: 4885c0                       test     rax, rax
0000000008e057dc: 750e                         jne      0x8e057ec
0000000008e057de: 488d05a3e6f001               lea      rax, [rip + 0x1f0e6a3]
0000000008e057e5: 488b00                       mov      rax, qword ptr [rax]
0000000008e057e8: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e057ec: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000008e057f0: 0fb616                       movzx    edx, byte ptr [rsi]
0000000008e057f3: f6c201                       test     dl, 1
0000000008e057f6: 0f8455030000                 je       0x8e05b51
0000000008e057fc: 8b5608                       mov      edx, dword ptr [rsi + 8]
0000000008e057ff: 488b7610                     mov      rsi, qword ptr [rsi + 0x10]
0000000008e05803: e94e030000                   jmp      0x8e05b56
0000000008e05808: e883143100                   call     0x9116c90
0000000008e0580d: 85c0                         test     eax, eax
0000000008e0580f: 0f84f1010000                 je       0x8e05a06
0000000008e05815: 488d15424815f8               lea      rdx, [rip - 0x7eab7be]
0000000008e0581c: 488d0dd0330bf8               lea      rcx, [rip - 0x7f4cc30]
0000000008e05823: 4c8d0573a810f8               lea      r8, [rip - 0x7ef578d]
0000000008e0582a: 488dbc24d8010000             lea      rdi, [rsp + 0x1d8]
0000000008e05832: be04000000                   mov      esi, 4
0000000008e05837: 41b915020000                 mov      r9d, 0x215
0000000008e0583d: 6a00                         push     0
0000000008e0583f: 6a00                         push     0
0000000008e05841: e85abd3000                   call     0x91115a0
0000000008e05846: 4883c410                     add      rsp, 0x10
0000000008e0584a: 48c784248000000000000000     mov      qword ptr [rsp + 0x80], 0
0000000008e05856: b907000000                   mov      ecx, 7
0000000008e0585b: 488d942487000000             lea      rdx, [rsp + 0x87]
0000000008e05863: becdcccccc                   mov      esi, 0xcccccccd
0000000008e05868: 488d059d9b12f8               lea      rax, [rip - 0x7ed6463]
0000000008e0586f: 90                           nop
0000000008e05870: 89df                         mov      edi, ebx
0000000008e05872: 480faffe                     imul     rdi, rsi
0000000008e05876: 48c1ef23                     shr      rdi, 0x23
0000000008e0587a: 448d043f                     lea      r8d, [rdi + rdi]
0000000008e0587e: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e05882: 41f7d8                       neg      r8d
0000000008e05885: 4101d8                       add      r8d, ebx
0000000008e05888: 4183c023                     add      r8d, 0x23
0000000008e0588c: 450fb60400                   movzx    r8d, byte ptr [r8 + rax]
0000000008e05891: 44884201                     mov      byte ptr [rdx + 1], r8b
0000000008e05895: 48ffc2                       inc      rdx
0000000008e05898: 48ffc1                       inc      rcx
0000000008e0589b: 83fb09                       cmp      ebx, 9
0000000008e0589e: 89fb                         mov      ebx, edi
0000000008e058a0: 77ce                         ja       0x8e05870
0000000008e058a2: 488db42488000000             lea      rsi, [rsp + 0x88]
0000000008e058aa: c6420100                     mov      byte ptr [rdx + 1], 0
0000000008e058ae: 4883f909                     cmp      rcx, 9
0000000008e058b2: 722a                         jb       0x8e058de
0000000008e058b4: 488d8c2489000000             lea      rcx, [rsp + 0x89]
0000000008e058bc: 0f1f4000                     nop      dword ptr [rax]
0000000008e058c0: 0fb63a                       movzx    edi, byte ptr [rdx]
0000000008e058c3: 440fb641ff                   movzx    r8d, byte ptr [rcx - 1]
0000000008e058c8: 448802                       mov      byte ptr [rdx], r8b
0000000008e058cb: 48ffca                       dec      rdx
0000000008e058ce: 408879ff                     mov      byte ptr [rcx - 1], dil
0000000008e058d2: 488d7901                     lea      rdi, [rcx + 1]
0000000008e058d6: 4839d1                       cmp      rcx, rdx
0000000008e058d9: 4889f9                       mov      rcx, rdi
0000000008e058dc: 72e2                         jb       0x8e058c0
0000000008e058de: 4889b42480000000             mov      qword ptr [rsp + 0x80], rsi
0000000008e058e6: 418b5500                     mov      edx, dword ptr [r13]
0000000008e058ea: 48c78424d000000000000000     mov      qword ptr [rsp + 0xd0], 0
0000000008e058f6: b908000000                   mov      ecx, 8
0000000008e058fb: 89d6                         mov      esi, edx
0000000008e058fd: 0f1f00                       nop      dword ptr [rax]
0000000008e05900: 4863fe                       movsxd   rdi, esi
0000000008e05903: 4869f767666666               imul     rsi, rdi, 0x66666667
0000000008e0590a: 4989f0                       mov      r8, rsi
0000000008e0590d: 49c1e83f                     shr      r8, 0x3f
0000000008e05911: 48c1fe22                     sar      rsi, 0x22
0000000008e05915: 4401c6                       add      esi, r8d
0000000008e05918: 448d0436                     lea      r8d, [rsi + rsi]
0000000008e0591c: 478d0480                     lea      r8d, [r8 + r8*4]
0000000008e05920: 4189f9                       mov      r9d, edi
0000000008e05923: 4529c1                       sub      r9d, r8d
0000000008e05926: 4d63c1                       movsxd   r8, r9d
0000000008e05929: 450fb6440023                 movzx    r8d, byte ptr [r8 + rax + 0x23]
0000000008e0592f: 4488840cd0000000             mov      byte ptr [rsp + rcx + 0xd0], r8b
0000000008e05937: 48ffc1                       inc      rcx
0000000008e0593a: 83c709                       add      edi, 9
0000000008e0593d: 83ff12                       cmp      edi, 0x12
0000000008e05940: 77be                         ja       0x8e05900
0000000008e05942: 85d2                         test     edx, edx
0000000008e05944: 790b                         jns      0x8e05951
0000000008e05946: c6840cd00000002d             mov      byte ptr [rsp + rcx + 0xd0], 0x2d
0000000008e0594e: 48ffc1                       inc      rcx
0000000008e05951: 488d8424d8000000             lea      rax, [rsp + 0xd8]
0000000008e05959: c6840cd000000000             mov      byte ptr [rsp + rcx + 0xd0], 0
0000000008e05961: 4883f90a                     cmp      rcx, 0xa
0000000008e05965: 7c36                         jl       0x8e0599d
0000000008e05967: 4801e1                       add      rcx, rsp
0000000008e0596a: 4881c1d0000000               add      rcx, 0xd0
0000000008e05971: 48ffc9                       dec      rcx
0000000008e05974: 488d9424d9000000             lea      rdx, [rsp + 0xd9]
0000000008e0597c: 0f1f4000                     nop      dword ptr [rax]
0000000008e05980: 0fb631                       movzx    esi, byte ptr [rcx]
0000000008e05983: 0fb67aff                     movzx    edi, byte ptr [rdx - 1]
0000000008e05987: 408839                       mov      byte ptr [rcx], dil
0000000008e0598a: 408872ff                     mov      byte ptr [rdx - 1], sil
0000000008e0598e: 48ffc9                       dec      rcx
0000000008e05991: 488d7201                     lea      rsi, [rdx + 1]
0000000008e05995: 4839ca                       cmp      rdx, rcx
0000000008e05998: 4889f2                       mov      rdx, rsi
0000000008e0599b: 72e3                         jb       0x8e05980
0000000008e0599d: 48898424d0000000             mov      qword ptr [rsp + 0xd0], rax
0000000008e059a5: 488d842480000000             lea      rax, [rsp + 0x80]
0000000008e059ad: 48890424                     mov      qword ptr [rsp], rax
0000000008e059b1: 488d8424d0000000             lea      rax, [rsp + 0xd0]
0000000008e059b9: 4889442408                   mov      qword ptr [rsp + 8], rax
0000000008e059be: 0f57c0                       xorps    xmm0, xmm0
0000000008e059c1: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008e059c6: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008e059cb: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008e059d0: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008e059d5: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008e059da: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008e059df: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008e059e4: 488d3577721ef8               lea      rsi, [rip - 0x7e18d89]
0000000008e059eb: 488d9c24d8010000             lea      rbx, [rsp + 0x1d8]
0000000008e059f3: 4889e2                       mov      rdx, rsp
0000000008e059f6: 4889df                       mov      rdi, rbx
0000000008e059f9: e8f2be3000                   call     0x91118f0
0000000008e059fe: 4889df                       mov      rdi, rbx
0000000008e05a01: e82abc3000                   call     0x9111630
0000000008e05a06: 488b8c24c0040000             mov      rcx, qword ptr [rsp + 0x4c0]
0000000008e05a0e: c7412806000000               mov      dword ptr [rcx + 0x28], 6
0000000008e05a15: 418b4500                     mov      eax, dword ptr [r13]
0000000008e05a19: 89412c                       mov      dword ptr [rcx + 0x2c], eax
0000000008e05a1c: 31ed                         xor      ebp, ebp
0000000008e05a1e: e9a4060000                   jmp      0x8e060c7
0000000008e05a23: 488d055ee4f001               lea      rax, [rip + 0x1f0e45e]
0000000008e05a2a: 488b00                       mov      rax, qword ptr [rax]
0000000008e05a2d: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05a31: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05a35: 4885c0                       test     rax, rax
0000000008e05a38: 4c8bac24c0040000             mov      r13, qword ptr [rsp + 0x4c0]
0000000008e05a40: 0f855ffdffff                 jne      0x8e057a5
0000000008e05a46: 488d051be4f001               lea      rax, [rip + 0x1f0e41b]
0000000008e05a4d: 488b00                       mov      rax, qword ptr [rax]
0000000008e05a50: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05a54: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05a58: 4885c0                       test     rax, rax
0000000008e05a5b: 0f8551fdffff                 jne      0x8e057b2
0000000008e05a61: 488d05f0e3f001               lea      rax, [rip + 0x1f0e3f0]
0000000008e05a68: 488b00                       mov      rax, qword ptr [rax]
0000000008e05a6b: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05a6f: 83783800                     cmp      dword ptr [rax + 0x38], 0
0000000008e05a73: 0f8543fdffff                 jne      0x8e057bc
0000000008e05a79: bf04000000                   mov      edi, 4
0000000008e05a7e: e80d123100                   call     0x9116c90
0000000008e05a83: 85c0                         test     eax, eax
0000000008e05a85: 0f84b7000000                 je       0x8e05b42
0000000008e05a8b: 488d15cc4515f8               lea      rdx, [rip - 0x7eaba34]
0000000008e05a92: 488d0d5a310bf8               lea      rcx, [rip - 0x7f4cea6]
0000000008e05a99: 4c8d05fda510f8               lea      r8, [rip - 0x7ef5a03]
0000000008e05aa0: 4c8db424d8010000             lea      r14, [rsp + 0x1d8]
0000000008e05aa8: 4c89f7                       mov      rdi, r14
0000000008e05aab: be04000000                   mov      esi, 4
0000000008e05ab0: 41b91e020000                 mov      r9d, 0x21e
0000000008e05ab6: 6a00                         push     0
0000000008e05ab8: 6a00                         push     0
0000000008e05aba: e8e1ba3000                   call     0x91115a0
0000000008e05abf: 4883c410                     add      rsp, 0x10
0000000008e05ac3: 4c8da42480000000             lea      r12, [rsp + 0x80]
0000000008e05acb: 4c89e7                       mov      rdi, r12
0000000008e05ace: 89de                         mov      esi, ebx
0000000008e05ad0: ba0a000000                   mov      edx, 0xa
0000000008e05ad5: e8e61dbafb                   call     0x49a78c0
0000000008e05ada: 4c89ff                       mov      rdi, r15
0000000008e05add: e80e2b0100                   call     0x8e185f0
0000000008e05ae2: 488d9c24d0000000             lea      rbx, [rsp + 0xd0]
0000000008e05aea: 4889df                       mov      rdi, rbx
0000000008e05aed: 89c6                         mov      esi, eax
0000000008e05aef: ba0a000000                   mov      edx, 0xa
0000000008e05af4: e8b7c6a0fb                   call     0x48121b0
0000000008e05af9: 4c892424                     mov      qword ptr [rsp], r12
0000000008e05afd: 48895c2408                   mov      qword ptr [rsp + 8], rbx
0000000008e05b02: 0f57c0                       xorps    xmm0, xmm0
0000000008e05b05: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008e05b0a: 0f29442420                   movaps   xmmword ptr [rsp + 0x20], xmm0
0000000008e05b0f: 0f29442430                   movaps   xmmword ptr [rsp + 0x30], xmm0
0000000008e05b14: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008e05b19: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008e05b1e: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008e05b23: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008e05b28: 488d3538bc13f8               lea      rsi, [rip - 0x7ec43c8]
0000000008e05b2f: 4889e2                       mov      rdx, rsp
0000000008e05b32: 4c89f7                       mov      rdi, r14
0000000008e05b35: e8b6bd3000                   call     0x91118f0
0000000008e05b3a: 4c89f7                       mov      rdi, r14
0000000008e05b3d: e8eeba3000                   call     0x9111630
0000000008e05b42: 41c745280f000000             mov      dword ptr [r13 + 0x28], 0xf
0000000008e05b4a: 31ed                         xor      ebp, ebp
0000000008e05b4c: e976050000                   jmp      0x8e060c7
0000000008e05b51: 48ffc6                       inc      rsi
0000000008e05b54: d1ea                         shr      edx, 1
0000000008e05b56: 4c89ff                       mov      rdi, r15
0000000008e05b59: e8322a0100                   call     0x8e18590
0000000008e05b5e: 488dbc2468010000             lea      rdi, [rsp + 0x168]
0000000008e05b66: e8755e0100                   call     0x8e1b9e0
0000000008e05b6b: 488b842428010000             mov      rax, qword ptr [rsp + 0x128]
0000000008e05b73: 4885c0                       test     rax, rax
0000000008e05b76: 750e                         jne      0x8e05b86
0000000008e05b78: 488d0509e3f001               lea      rax, [rip + 0x1f0e309]
0000000008e05b7f: 488b00                       mov      rax, qword ptr [rax]
0000000008e05b82: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05b86: 488b4808                     mov      rcx, qword ptr [rax + 8]
0000000008e05b8a: 4885c9                       test     rcx, rcx
0000000008e05b8d: 4c8b8c2450010000             mov      r9, qword ptr [rsp + 0x150]
0000000008e05b95: 488bbc2458010000             mov      rdi, qword ptr [rsp + 0x158]
0000000008e05b9d: 750e                         jne      0x8e05bad
0000000008e05b9f: 488d05c2e2f001               lea      rax, [rip + 0x1f0e2c2]
0000000008e05ba6: 488b00                       mov      rax, qword ptr [rax]
0000000008e05ba9: 488b4808                     mov      rcx, qword ptr [rax + 8]
0000000008e05bad: 4c8b9c24b8040000             mov      r11, qword ptr [rsp + 0x4b8]
0000000008e05bb5: 4c8b9424b0040000             mov      r10, qword ptr [rsp + 0x4b0]
0000000008e05bbd: 8b842480040000               mov      eax, dword ptr [rsp + 0x480]
0000000008e05bc4: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e05bc8: 4885c9                       test     rcx, rcx
0000000008e05bcb: 750e                         jne      0x8e05bdb
0000000008e05bcd: 488d0d84e2f001               lea      rcx, [rip + 0x1f0e284]
0000000008e05bd4: 488b09                       mov      rcx, qword ptr [rcx]
0000000008e05bd7: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e05bdb: 0fbf4938                     movsx    ecx, word ptr [rcx + 0x38]
0000000008e05bdf: 488d942468010000             lea      rdx, [rsp + 0x168]
0000000008e05be7: 89de                         mov      esi, ebx
0000000008e05be9: 4d89f8                       mov      r8, r15
0000000008e05bec: 4155                         push     r13
0000000008e05bee: 4153                         push     r11
0000000008e05bf0: 4152                         push     r10
0000000008e05bf2: 50                           push     rax
0000000008e05bf3: e8f8b1ffff                   call     0x8e00df0
0000000008e05bf8: 4883c420                     add      rsp, 0x20
0000000008e05bfc: 84c0                         test     al, al
0000000008e05bfe: 0f8443030000                 je       0x8e05f47
0000000008e05c04: 488b842428010000             mov      rax, qword ptr [rsp + 0x128]
0000000008e05c0c: 4889c1                       mov      rcx, rax
0000000008e05c0f: 4885c0                       test     rax, rax
0000000008e05c12: 0f84ea040000                 je       0x8e06102
0000000008e05c18: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e05c1c: 4885c9                       test     rcx, rcx
0000000008e05c1f: 0f84f8040000                 je       0x8e0611d
0000000008e05c25: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e05c29: 4885c9                       test     rcx, rcx
0000000008e05c2c: 0f8406050000                 je       0x8e06138
0000000008e05c32: 4889c2                       mov      rdx, rax
0000000008e05c35: 4885c0                       test     rax, rax
0000000008e05c38: 0f8414050000                 je       0x8e06152
0000000008e05c3e: 488b5208                     mov      rdx, qword ptr [rdx + 8]
0000000008e05c42: 4885d2                       test     rdx, rdx
0000000008e05c45: 0f8422050000                 je       0x8e0616d
0000000008e05c4b: 488b5208                     mov      rdx, qword ptr [rdx + 8]
0000000008e05c4f: 4885d2                       test     rdx, rdx
0000000008e05c52: 0f8430050000                 je       0x8e06188
0000000008e05c58: 4885c0                       test     rax, rax
0000000008e05c5b: 0f843e050000                 je       0x8e0619f
0000000008e05c61: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000008e05c65: 4885f6                       test     rsi, rsi
0000000008e05c68: 0f844c050000                 je       0x8e061ba
0000000008e05c6e: 448b4148                     mov      r8d, dword ptr [rcx + 0x48]
0000000008e05c72: 0fb74234                     movzx    eax, word ptr [rdx + 0x34]
0000000008e05c76: 488b4e08                     mov      rcx, qword ptr [rsi + 8]
0000000008e05c7a: 4885c9                       test     rcx, rcx
0000000008e05c7d: 750e                         jne      0x8e05c8d
0000000008e05c7f: 488d0dd2e1f001               lea      rcx, [rip + 0x1f0e1d2]
0000000008e05c86: 488b09                       mov      rcx, qword ptr [rcx]
0000000008e05c89: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e05c8d: 0fbf7958                     movsx    edi, word ptr [rcx + 0x58]
0000000008e05c91: 440fbfc8                     movsx    r9d, ax
0000000008e05c95: 488d942468010000             lea      rdx, [rsp + 0x168]
0000000008e05c9d: 89de                         mov      esi, ebx
0000000008e05c9f: 488b8c2448010000             mov      rcx, qword ptr [rsp + 0x148]
0000000008e05ca7: 4155                         push     r13
0000000008e05ca9: 57                           push     rdi
0000000008e05caa: e831d3ffff                   call     0x8e02fe0
0000000008e05caf: 4883c410                     add      rsp, 0x10
0000000008e05cb3: 84c0                         test     al, al
0000000008e05cb5: 0f8447030000                 je       0x8e06002
0000000008e05cbb: bf02000000                   mov      edi, 2
0000000008e05cc0: e8cb0f3100                   call     0x9116c90
0000000008e05cc5: 40b501                       mov      bpl, 1
0000000008e05cc8: 85c0                         test     eax, eax
0000000008e05cca: 0f84ea030000                 je       0x8e060ba
0000000008e05cd0: 488d15874315f8               lea      rdx, [rip - 0x7eabc79]
0000000008e05cd7: 488d0d152f0bf8               lea      rcx, [rip - 0x7f4d0eb]
0000000008e05cde: 4c8d05b8a310f8               lea      r8, [rip - 0x7ef5c48]
0000000008e05ce5: 488dbc24d8010000             lea      rdi, [rsp + 0x1d8]
0000000008e05ced: be02000000                   mov      esi, 2
0000000008e05cf2: 41b94d020000                 mov      r9d, 0x24d
0000000008e05cf8: 6a00                         push     0
0000000008e05cfa: 6a00                         push     0
0000000008e05cfc: e89fb83000                   call     0x91115a0
0000000008e05d01: 4883c410                     add      rsp, 0x10
0000000008e05d05: 488dbc2480000000             lea      rdi, [rsp + 0x80]
0000000008e05d0d: 89de                         mov      esi, ebx
0000000008e05d0f: ba0a000000                   mov      edx, 0xa
0000000008e05d14: e8a71bbafb                   call     0x49a78c0
0000000008e05d19: 488b842428010000             mov      rax, qword ptr [rsp + 0x128]
0000000008e05d21: 4885c0                       test     rax, rax
0000000008e05d24: 0f84a3040000                 je       0x8e061cd
0000000008e05d2a: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05d2e: 4885c0                       test     rax, rax
0000000008e05d31: 0f84b1040000                 je       0x8e061e8
0000000008e05d37: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05d3b: 4885c0                       test     rax, rax
0000000008e05d3e: 0f84bf040000                 je       0x8e06203
0000000008e05d44: 8b7034                       mov      esi, dword ptr [rax + 0x34]
0000000008e05d47: 488dbc24d0000000             lea      rdi, [rsp + 0xd0]
0000000008e05d4f: ba0a000000                   mov      edx, 0xa
0000000008e05d54: e8671bbafb                   call     0x49a78c0
0000000008e05d59: 488b842428010000             mov      rax, qword ptr [rsp + 0x128]
0000000008e05d61: 4885c0                       test     rax, rax
0000000008e05d64: 0f84ac040000                 je       0x8e06216
0000000008e05d6a: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05d6e: 4885c0                       test     rax, rax
0000000008e05d71: 0f84ba040000                 je       0x8e06231
0000000008e05d77: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05d7b: 4885c0                       test     rax, rax
0000000008e05d7e: 0f84c8040000                 je       0x8e0624c
0000000008e05d84: 8b7048                       mov      esi, dword ptr [rax + 0x48]
0000000008e05d87: 488dbc2468020000             lea      rdi, [rsp + 0x268]
0000000008e05d8f: ba0a000000                   mov      edx, 0xa
0000000008e05d94: e8271bbafb                   call     0x49a78c0
0000000008e05d99: 488b842428010000             mov      rax, qword ptr [rsp + 0x128]
0000000008e05da1: 4885c0                       test     rax, rax
0000000008e05da4: 0f84b5040000                 je       0x8e0625f
0000000008e05daa: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05dae: 4885c0                       test     rax, rax
0000000008e05db1: 0f84c3040000                 je       0x8e0627a
0000000008e05db7: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05dbb: 4885c0                       test     rax, rax
0000000008e05dbe: 0f84d1040000                 je       0x8e06295
0000000008e05dc4: 8b704c                       mov      esi, dword ptr [rax + 0x4c]
0000000008e05dc7: 4c8da424f8030000             lea      r12, [rsp + 0x3f8]
0000000008e05dcf: 4c89e7                       mov      rdi, r12
0000000008e05dd2: ba0a000000                   mov      edx, 0xa
0000000008e05dd7: e8e41abafb                   call     0x49a78c0
0000000008e05ddc: 488b842428010000             mov      rax, qword ptr [rsp + 0x128]
0000000008e05de4: 4885c0                       test     rax, rax
0000000008e05de7: 0f84bb040000                 je       0x8e062a8
0000000008e05ded: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05df1: 4885c0                       test     rax, rax
0000000008e05df4: 0f84c9040000                 je       0x8e062c3
0000000008e05dfa: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05dfe: 4885c0                       test     rax, rax
0000000008e05e01: 0f84d7040000                 je       0x8e062de
0000000008e05e07: 8b7038                       mov      esi, dword ptr [rax + 0x38]
0000000008e05e0a: 4c8dac24a8030000             lea      r13, [rsp + 0x3a8]
0000000008e05e12: 4c89ef                       mov      rdi, r13
0000000008e05e15: ba0a000000                   mov      edx, 0xa
0000000008e05e1a: e8a11abafb                   call     0x49a78c0
0000000008e05e1f: 488b842428010000             mov      rax, qword ptr [rsp + 0x128]
0000000008e05e27: 4885c0                       test     rax, rax
0000000008e05e2a: 0f84c1040000                 je       0x8e062f1
0000000008e05e30: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05e34: 4885c0                       test     rax, rax
0000000008e05e37: 0f84cf040000                 je       0x8e0630c
0000000008e05e3d: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05e41: 4885c0                       test     rax, rax
0000000008e05e44: 0f84dd040000                 je       0x8e06327
0000000008e05e4a: 488b7060                     mov      rsi, qword ptr [rax + 0x60]
0000000008e05e4e: 4c8db42458030000             lea      r14, [rsp + 0x358]
0000000008e05e56: 4c89f7                       mov      rdi, r14
0000000008e05e59: ba0a000000                   mov      edx, 0xa
0000000008e05e5e: e88d84b4fb                   call     0x494e2f0
0000000008e05e63: 488b842428010000             mov      rax, qword ptr [rsp + 0x128]
0000000008e05e6b: 4885c0                       test     rax, rax
0000000008e05e6e: 0f84c6040000                 je       0x8e0633a
0000000008e05e74: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05e78: 4885c0                       test     rax, rax
0000000008e05e7b: 0f84d4040000                 je       0x8e06355
0000000008e05e81: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e05e85: 4885c0                       test     rax, rax
0000000008e05e88: 0f84e2040000                 je       0x8e06370
0000000008e05e8e: 8b7024                       mov      esi, dword ptr [rax + 0x24]
0000000008e05e91: 488d9c2408030000             lea      rbx, [rsp + 0x308]
0000000008e05e99: 4889df                       mov      rdi, rbx
0000000008e05e9c: ba0a000000                   mov      edx, 0xa
0000000008e05ea1: e81a1abafb                   call     0x49a78c0
0000000008e05ea6: 488dbc2480010000             lea      rdi, [rsp + 0x180]
0000000008e05eae: e8ed5f0100                   call     0x8e1bea0
0000000008e05eb3: 4c8dbc24b8020000             lea      r15, [rsp + 0x2b8]
0000000008e05ebb: 4c89ff                       mov      rdi, r15
0000000008e05ebe: 89c6                         mov      esi, eax
0000000008e05ec0: ba0a000000                   mov      edx, 0xa
0000000008e05ec5: e8f619bafb                   call     0x49a78c0
0000000008e05eca: 488d842480000000             lea      rax, [rsp + 0x80]
0000000008e05ed2: 48890424                     mov      qword ptr [rsp], rax
0000000008e05ed6: 488d8424d0000000             lea      rax, [rsp + 0xd0]
0000000008e05ede: 4889442408                   mov      qword ptr [rsp + 8], rax
0000000008e05ee3: 488d842468020000             lea      rax, [rsp + 0x268]
0000000008e05eeb: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000008e05ef0: 4c89642418                   mov      qword ptr [rsp + 0x18], r12
0000000008e05ef5: 4c896c2420                   mov      qword ptr [rsp + 0x20], r13
0000000008e05efa: 4c89742428                   mov      qword ptr [rsp + 0x28], r14
0000000008e05eff: 48895c2430                   mov      qword ptr [rsp + 0x30], rbx
0000000008e05f04: 4c897c2438                   mov      qword ptr [rsp + 0x38], r15
0000000008e05f09: 0f57c0                       xorps    xmm0, xmm0
0000000008e05f0c: 0f29442440                   movaps   xmmword ptr [rsp + 0x40], xmm0
0000000008e05f11: 0f29442450                   movaps   xmmword ptr [rsp + 0x50], xmm0
0000000008e05f16: 0f29442460                   movaps   xmmword ptr [rsp + 0x60], xmm0
0000000008e05f1b: 0f29442470                   movaps   xmmword ptr [rsp + 0x70], xmm0
0000000008e05f20: 488d3572b813f8               lea      rsi, [rip - 0x7ec478e]
0000000008e05f27: 488d9c24d8010000             lea      rbx, [rsp + 0x1d8]
0000000008e05f2f: 4889e2                       mov      rdx, rsp
0000000008e05f32: 4889df                       mov      rdi, rbx
0000000008e05f35: e8b6b93000                   call     0x91118f0
0000000008e05f3a: 4889df                       mov      rdi, rbx
0000000008e05f3d: e8eeb63000                   call     0x9111630
0000000008e05f42: e973010000                   jmp      0x8e060ba
0000000008e05f47: bf04000000                   mov      edi, 4
0000000008e05f4c: e83f0d3100                   call     0x9116c90
0000000008e05f51: 85c0                         test     eax, eax
0000000008e05f53: 0f849c000000                 je       0x8e05ff5
0000000008e05f59: 488d15fe4015f8               lea      rdx, [rip - 0x7eabf02]
0000000008e05f60: 488d0d8c2c0bf8               lea      rcx, [rip - 0x7f4d374]
0000000008e05f67: 4c8d052fa110f8               lea      r8, [rip - 0x7ef5ed1]
0000000008e05f6e: 4c8db424d8010000             lea      r14, [rsp + 0x1d8]
0000000008e05f76: 4c89f7                       mov      rdi, r14
0000000008e05f79: be04000000                   mov      esi, 4
0000000008e05f7e: 41b931020000                 mov      r9d, 0x231
0000000008e05f84: 6a00                         push     0
0000000008e05f86: 6a00                         push     0
0000000008e05f88: e813b63000                   call     0x91115a0
0000000008e05f8d: 4883c410                     add      rsp, 0x10
0000000008e05f91: 4c8dbc2480000000             lea      r15, [rsp + 0x80]
0000000008e05f99: 4c89ff                       mov      rdi, r15
0000000008e05f9c: 89de                         mov      esi, ebx
0000000008e05f9e: ba0a000000                   mov      edx, 0xa
0000000008e05fa3: e81819bafb                   call     0x49a78c0
0000000008e05fa8: 4c893c24                     mov      qword ptr [rsp], r15
0000000008e05fac: 0f57c0                       xorps    xmm0, xmm0
0000000008e05faf: 0f11442408                   movups   xmmword ptr [rsp + 8], xmm0
0000000008e05fb4: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008e05fb9: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008e05fbe: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008e05fc3: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008e05fc8: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008e05fcd: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008e05fd2: 48c744247800000000           mov      qword ptr [rsp + 0x78], 0
0000000008e05fdb: 488d3566590ef8               lea      rsi, [rip - 0x7f1a69a]
0000000008e05fe2: 4889e2                       mov      rdx, rsp
0000000008e05fe5: 4c89f7                       mov      rdi, r14
0000000008e05fe8: e803b93000                   call     0x91118f0
0000000008e05fed: 4c89f7                       mov      rdi, r14
0000000008e05ff0: e83bb63000                   call     0x9111630
0000000008e05ff5: 41c745280c000000             mov      dword ptr [r13 + 0x28], 0xc
0000000008e05ffd: e9b6000000                   jmp      0x8e060b8
0000000008e06002: bf04000000                   mov      edi, 4
0000000008e06007: e8840c3100                   call     0x9116c90
0000000008e0600c: 85c0                         test     eax, eax
0000000008e0600e: 0f849c000000                 je       0x8e060b0
0000000008e06014: 488d15434015f8               lea      rdx, [rip - 0x7eabfbd]
0000000008e0601b: 488d0dd12b0bf8               lea      rcx, [rip - 0x7f4d42f]
0000000008e06022: 4c8d0574a010f8               lea      r8, [rip - 0x7ef5f8c]
0000000008e06029: 4c8db424d8010000             lea      r14, [rsp + 0x1d8]
0000000008e06031: 4c89f7                       mov      rdi, r14
0000000008e06034: be04000000                   mov      esi, 4
0000000008e06039: 41b93e020000                 mov      r9d, 0x23e
0000000008e0603f: 6a00                         push     0
0000000008e06041: 6a00                         push     0
0000000008e06043: e858b53000                   call     0x91115a0
0000000008e06048: 4883c410                     add      rsp, 0x10
0000000008e0604c: 4c8dbc2480000000             lea      r15, [rsp + 0x80]
0000000008e06054: 4c89ff                       mov      rdi, r15
0000000008e06057: 89de                         mov      esi, ebx
0000000008e06059: ba0a000000                   mov      edx, 0xa
0000000008e0605e: e85d18bafb                   call     0x49a78c0
0000000008e06063: 4c893c24                     mov      qword ptr [rsp], r15
0000000008e06067: 0f57c0                       xorps    xmm0, xmm0
0000000008e0606a: 0f11442408                   movups   xmmword ptr [rsp + 8], xmm0
0000000008e0606f: 0f11442418                   movups   xmmword ptr [rsp + 0x18], xmm0
0000000008e06074: 0f11442428                   movups   xmmword ptr [rsp + 0x28], xmm0
0000000008e06079: 0f11442438                   movups   xmmword ptr [rsp + 0x38], xmm0
0000000008e0607e: 0f11442448                   movups   xmmword ptr [rsp + 0x48], xmm0
0000000008e06083: 0f11442458                   movups   xmmword ptr [rsp + 0x58], xmm0
0000000008e06088: 0f11442468                   movups   xmmword ptr [rsp + 0x68], xmm0
0000000008e0608d: 48c744247800000000           mov      qword ptr [rsp + 0x78], 0
0000000008e06096: 488d35ffac0cf8               lea      rsi, [rip - 0x7f35301]
0000000008e0609d: 4889e2                       mov      rdx, rsp
0000000008e060a0: 4c89f7                       mov      rdi, r14
0000000008e060a3: e848b83000                   call     0x91118f0
0000000008e060a8: 4c89f7                       mov      rdi, r14
0000000008e060ab: e880b53000                   call     0x9111630
0000000008e060b0: 41c7452810000000             mov      dword ptr [r13 + 0x28], 0x10
0000000008e060b8: 31ed                         xor      ebp, ebp
0000000008e060ba: 488dbc2468010000             lea      rdi, [rsp + 0x168]
0000000008e060c2: e8d9590100                   call     0x8e1baa0
0000000008e060c7: 488dbc2420010000             lea      rdi, [rsp + 0x120]
0000000008e060cf: e8cc1b0100                   call     0x8e17ca0
0000000008e060d4: 488dbc2460010000             lea      rdi, [rsp + 0x160]
0000000008e060dc: e83f230100                   call     0x8e18420
0000000008e060e1: 488dbc2480010000             lea      rdi, [rsp + 0x180]
0000000008e060e9: e8825c0100                   call     0x8e1bd70
0000000008e060ee: 89e8                         mov      eax, ebp
0000000008e060f0: 4881c448040000               add      rsp, 0x448
0000000008e060f7: 5b                           pop      rbx
0000000008e060f8: 415c                         pop      r12
0000000008e060fa: 415d                         pop      r13
0000000008e060fc: 415e                         pop      r14
0000000008e060fe: 415f                         pop      r15
0000000008e06100: 5d                           pop      rbp
0000000008e06101: c3                           ret
0000000008e06102: 488d0d7fddf001               lea      rcx, [rip + 0x1f0dd7f]
0000000008e06109: 488b09                       mov      rcx, qword ptr [rcx]
0000000008e0610c: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e06110: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e06114: 4885c9                       test     rcx, rcx
0000000008e06117: 0f8508fbffff                 jne      0x8e05c25
0000000008e0611d: 488d0d44ddf001               lea      rcx, [rip + 0x1f0dd44]
0000000008e06124: 488b09                       mov      rcx, qword ptr [rcx]
0000000008e06127: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e0612b: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e0612f: 4885c9                       test     rcx, rcx
0000000008e06132: 0f85fafaffff                 jne      0x8e05c32
0000000008e06138: 488d0d19ddf001               lea      rcx, [rip + 0x1f0dd19]
0000000008e0613f: 488b09                       mov      rcx, qword ptr [rcx]
0000000008e06142: 488b4908                     mov      rcx, qword ptr [rcx + 8]
0000000008e06146: 4889c2                       mov      rdx, rax
0000000008e06149: 4885c0                       test     rax, rax
0000000008e0614c: 0f85ecfaffff                 jne      0x8e05c3e
0000000008e06152: 488d152fddf001               lea      rdx, [rip + 0x1f0dd2f]
0000000008e06159: 488b12                       mov      rdx, qword ptr [rdx]
0000000008e0615c: 488b5208                     mov      rdx, qword ptr [rdx + 8]
0000000008e06160: 488b5208                     mov      rdx, qword ptr [rdx + 8]
0000000008e06164: 4885d2                       test     rdx, rdx
0000000008e06167: 0f85defaffff                 jne      0x8e05c4b
0000000008e0616d: 488d15f4dcf001               lea      rdx, [rip + 0x1f0dcf4]
0000000008e06174: 488b12                       mov      rdx, qword ptr [rdx]
0000000008e06177: 488b5208                     mov      rdx, qword ptr [rdx + 8]
0000000008e0617b: 488b5208                     mov      rdx, qword ptr [rdx + 8]
0000000008e0617f: 4885d2                       test     rdx, rdx
0000000008e06182: 0f85d0faffff                 jne      0x8e05c58
0000000008e06188: 488d15c9dcf001               lea      rdx, [rip + 0x1f0dcc9]
0000000008e0618f: 488b12                       mov      rdx, qword ptr [rdx]
0000000008e06192: 488b5208                     mov      rdx, qword ptr [rdx + 8]
0000000008e06196: 4885c0                       test     rax, rax
0000000008e06199: 0f85c2faffff                 jne      0x8e05c61
0000000008e0619f: 488d05e2dcf001               lea      rax, [rip + 0x1f0dce2]
0000000008e061a6: 488b00                       mov      rax, qword ptr [rax]
0000000008e061a9: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e061ad: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000008e061b1: 4885f6                       test     rsi, rsi
0000000008e061b4: 0f85b4faffff                 jne      0x8e05c6e
0000000008e061ba: 488d05a7dcf001               lea      rax, [rip + 0x1f0dca7]
0000000008e061c1: 488b00                       mov      rax, qword ptr [rax]
0000000008e061c4: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000008e061c8: e9a1faffff                   jmp      0x8e05c6e
0000000008e061cd: 488d05b4dcf001               lea      rax, [rip + 0x1f0dcb4]
0000000008e061d4: 488b00                       mov      rax, qword ptr [rax]
0000000008e061d7: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e061db: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e061df: 4885c0                       test     rax, rax
0000000008e061e2: 0f854ffbffff                 jne      0x8e05d37
0000000008e061e8: 488d0579dcf001               lea      rax, [rip + 0x1f0dc79]
0000000008e061ef: 488b00                       mov      rax, qword ptr [rax]
0000000008e061f2: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e061f6: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e061fa: 4885c0                       test     rax, rax
0000000008e061fd: 0f8541fbffff                 jne      0x8e05d44
0000000008e06203: 488d054edcf001               lea      rax, [rip + 0x1f0dc4e]
0000000008e0620a: 488b00                       mov      rax, qword ptr [rax]
0000000008e0620d: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e06211: e92efbffff                   jmp      0x8e05d44
0000000008e06216: 488d056bdcf001               lea      rax, [rip + 0x1f0dc6b]
0000000008e0621d: 488b00                       mov      rax, qword ptr [rax]
0000000008e06220: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e06224: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e06228: 4885c0                       test     rax, rax
0000000008e0622b: 0f8546fbffff                 jne      0x8e05d77
0000000008e06231: 488d0530dcf001               lea      rax, [rip + 0x1f0dc30]
0000000008e06238: 488b00                       mov      rax, qword ptr [rax]
0000000008e0623b: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e0623f: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e06243: 4885c0                       test     rax, rax
0000000008e06246: 0f8538fbffff                 jne      0x8e05d84
0000000008e0624c: 488d0505dcf001               lea      rax, [rip + 0x1f0dc05]
0000000008e06253: 488b00                       mov      rax, qword ptr [rax]
0000000008e06256: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e0625a: e925fbffff                   jmp      0x8e05d84
0000000008e0625f: 488d0522dcf001               lea      rax, [rip + 0x1f0dc22]
0000000008e06266: 488b00                       mov      rax, qword ptr [rax]
0000000008e06269: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e0626d: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e06271: 4885c0                       test     rax, rax
0000000008e06274: 0f853dfbffff                 jne      0x8e05db7
0000000008e0627a: 488d05e7dbf001               lea      rax, [rip + 0x1f0dbe7]
0000000008e06281: 488b00                       mov      rax, qword ptr [rax]
0000000008e06284: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e06288: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e0628c: 4885c0                       test     rax, rax
0000000008e0628f: 0f852ffbffff                 jne      0x8e05dc4
0000000008e06295: 488d05bcdbf001               lea      rax, [rip + 0x1f0dbbc]
0000000008e0629c: 488b00                       mov      rax, qword ptr [rax]
0000000008e0629f: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e062a3: e91cfbffff                   jmp      0x8e05dc4
0000000008e062a8: 488d05d9dbf001               lea      rax, [rip + 0x1f0dbd9]
0000000008e062af: 488b00                       mov      rax, qword ptr [rax]
0000000008e062b2: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e062b6: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e062ba: 4885c0                       test     rax, rax
0000000008e062bd: 0f8537fbffff                 jne      0x8e05dfa
0000000008e062c3: 488d059edbf001               lea      rax, [rip + 0x1f0db9e]
0000000008e062ca: 488b00                       mov      rax, qword ptr [rax]
0000000008e062cd: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e062d1: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e062d5: 4885c0                       test     rax, rax
0000000008e062d8: 0f8529fbffff                 jne      0x8e05e07
0000000008e062de: 488d0573dbf001               lea      rax, [rip + 0x1f0db73]
0000000008e062e5: 488b00                       mov      rax, qword ptr [rax]
0000000008e062e8: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e062ec: e916fbffff                   jmp      0x8e05e07
0000000008e062f1: 488d0590dbf001               lea      rax, [rip + 0x1f0db90]
0000000008e062f8: 488b00                       mov      rax, qword ptr [rax]
0000000008e062fb: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e062ff: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e06303: 4885c0                       test     rax, rax
0000000008e06306: 0f8531fbffff                 jne      0x8e05e3d
0000000008e0630c: 488d0555dbf001               lea      rax, [rip + 0x1f0db55]
0000000008e06313: 488b00                       mov      rax, qword ptr [rax]
0000000008e06316: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e0631a: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e0631e: 4885c0                       test     rax, rax
0000000008e06321: 0f8523fbffff                 jne      0x8e05e4a
0000000008e06327: 488d052adbf001               lea      rax, [rip + 0x1f0db2a]
0000000008e0632e: 488b00                       mov      rax, qword ptr [rax]
0000000008e06331: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e06335: e910fbffff                   jmp      0x8e05e4a
0000000008e0633a: 488d0547dbf001               lea      rax, [rip + 0x1f0db47]
0000000008e06341: 488b00                       mov      rax, qword ptr [rax]
0000000008e06344: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e06348: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e0634c: 4885c0                       test     rax, rax
0000000008e0634f: 0f852cfbffff                 jne      0x8e05e81
0000000008e06355: 488d050cdbf001               lea      rax, [rip + 0x1f0db0c]
0000000008e0635c: 488b00                       mov      rax, qword ptr [rax]
0000000008e0635f: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e06363: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e06367: 4885c0                       test     rax, rax
0000000008e0636a: 0f851efbffff                 jne      0x8e05e8e
0000000008e06370: 488d05e1daf001               lea      rax, [rip + 0x1f0dae1]
0000000008e06377: 488b00                       mov      rax, qword ptr [rax]
0000000008e0637a: 488b4008                     mov      rax, qword ptr [rax + 8]
0000000008e0637e: e90bfbffff                   jmp      0x8e05e8e

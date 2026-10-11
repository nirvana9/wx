0000000008b214d0: 55                           push     rbp
0000000008b214d1: 4157                         push     r15
0000000008b214d3: 4156                         push     r14
0000000008b214d5: 4155                         push     r13
0000000008b214d7: 4154                         push     r12
0000000008b214d9: 53                           push     rbx
0000000008b214da: 4883ec68                     sub      rsp, 0x68
0000000008b214de: 41bfffffffff                 mov      r15d, 0xffffffff
0000000008b214e4: 4d85c9                       test     r9, r9
0000000008b214e7: 0f84d3010000                 je       0x8b216c0
0000000008b214ed: 4989cc                       mov      r12, rcx
0000000008b214f0: 4885c9                       test     rcx, rcx
0000000008b214f3: 0f84c7010000                 je       0x8b216c0
0000000008b214f9: 4989d5                       mov      r13, rdx
0000000008b214fc: 4885d2                       test     rdx, rdx
0000000008b214ff: 0f84bb010000                 je       0x8b216c0
0000000008b21505: 4c89c5                       mov      rbp, r8
0000000008b21508: 4d85c0                       test     r8, r8
0000000008b2150b: 0f84af010000                 je       0x8b216c0
0000000008b21511: 4883bc24a800000000           cmp      qword ptr [rsp + 0xa8], 0
0000000008b2151a: 0f84a0010000                 je       0x8b216c0
0000000008b21520: 4c89cb                       mov      rbx, r9
0000000008b21523: 4989f6                       mov      r14, rsi
0000000008b21526: 4889f7                       mov      rdi, rsi
0000000008b21529: e8b23b7300                   call     0x92550e0
0000000008b2152e: 41bfffffffff                 mov      r15d, 0xffffffff
0000000008b21534: 85c0                         test     eax, eax
0000000008b21536: 0f8484010000                 je       0x8b216c0
0000000008b2153c: 4863f0                       movsxd   rsi, eax
0000000008b2153f: 488b9424a8000000             mov      rdx, qword ptr [rsp + 0xa8]
0000000008b21547: 4889d1                       mov      rcx, rdx
0000000008b2154a: 4809f1                       or       rcx, rsi
0000000008b2154d: 48c1e920                     shr      rcx, 0x20
0000000008b21551: 741d                         je       0x8b21570
0000000008b21553: 4889d0                       mov      rax, rdx
0000000008b21556: 31d2                         xor      edx, edx
0000000008b21558: 48f7f6                       div      rsi
0000000008b2155b: 4883fa01                     cmp      rdx, 1
0000000008b2155f: 4883d8ff                     sbb      rax, -1
0000000008b21563: 483dff000000                 cmp      rax, 0xff
0000000008b21569: 7621                         jbe      0x8b2158c
0000000008b2156b: e950010000                   jmp      0x8b216c0
0000000008b21570: 89c1                         mov      ecx, eax
0000000008b21572: 89d0                         mov      eax, edx
0000000008b21574: 31d2                         xor      edx, edx
0000000008b21576: f7f1                         div      ecx
0000000008b21578: 4883fa01                     cmp      rdx, 1
0000000008b2157c: 4883d8ff                     sbb      rax, -1
0000000008b21580: 483dff000000                 cmp      rax, 0xff
0000000008b21586: 0f8734010000                 ja       0x8b216c0
0000000008b2158c: 4889442408                   mov      qword ptr [rsp + 8], rax
0000000008b21591: 4889742410                   mov      qword ptr [rsp + 0x10], rsi
0000000008b21596: 48896c2418                   mov      qword ptr [rsp + 0x18], rbp
0000000008b2159b: e880077400                   call     0x9261d20
0000000008b215a0: 4889c5                       mov      rbp, rax
0000000008b215a3: 4889c7                       mov      rdi, rax
0000000008b215a6: e815067400                   call     0x9261bc0
0000000008b215ab: 4531ff                       xor      r15d, r15d
0000000008b215ae: 4889ef                       mov      rdi, rbp
0000000008b215b1: 4c89ee                       mov      rsi, r13
0000000008b215b4: 4489e2                       mov      edx, r12d
0000000008b215b7: 4c89f1                       mov      rcx, r14
0000000008b215ba: 4531c0                       xor      r8d, r8d
0000000008b215bd: e87e027400                   call     0x9261840
0000000008b215c2: 85c0                         test     eax, eax
0000000008b215c4: 0f84e8000000                 je       0x8b216b2
0000000008b215ca: 48837c240800                 cmp      qword ptr [rsp + 8], 0
0000000008b215d0: 0f84e2000000                 je       0x8b216b8
0000000008b215d6: 41bd01000000                 mov      r13d, 1
0000000008b215dc: 4531e4                       xor      r12d, r12d
0000000008b215df: 4c8d7c2420                   lea      r15, [rsp + 0x20]
0000000008b215e4: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
0000000008b215f0: 44886c2407                   mov      byte ptr [rsp + 7], r13b
0000000008b215f5: 4183fd02                     cmp      r13d, 2
0000000008b215f9: 7231                         jb       0x8b2162c
0000000008b215fb: 4889ef                       mov      rdi, rbp
0000000008b215fe: 31f6                         xor      esi, esi
0000000008b21600: 31d2                         xor      edx, edx
0000000008b21602: 31c9                         xor      ecx, ecx
0000000008b21604: 4531c0                       xor      r8d, r8d
0000000008b21607: e834027400                   call     0x9261840
0000000008b2160c: 85c0                         test     eax, eax
0000000008b2160e: 0f849e000000                 je       0x8b216b2
0000000008b21614: 4889ef                       mov      rdi, rbp
0000000008b21617: 4c89fe                       mov      rsi, r15
0000000008b2161a: 488b542410                   mov      rdx, qword ptr [rsp + 0x10]
0000000008b2161f: e83c067400                   call     0x9261c60
0000000008b21624: 85c0                         test     eax, eax
0000000008b21626: 0f8486000000                 je       0x8b216b2
0000000008b2162c: 4889ef                       mov      rdi, rbp
0000000008b2162f: 488b742418                   mov      rsi, qword ptr [rsp + 0x18]
0000000008b21634: 4889da                       mov      rdx, rbx
0000000008b21637: e824067400                   call     0x9261c60
0000000008b2163c: 85c0                         test     eax, eax
0000000008b2163e: 7472                         je       0x8b216b2
0000000008b21640: ba01000000                   mov      edx, 1
0000000008b21645: 4889ef                       mov      rdi, rbp
0000000008b21648: 488d742407                   lea      rsi, [rsp + 7]
0000000008b2164d: e80e067400                   call     0x9261c60
0000000008b21652: 85c0                         test     eax, eax
0000000008b21654: 745c                         je       0x8b216b2
0000000008b21656: 4889ef                       mov      rdi, rbp
0000000008b21659: 4c89fe                       mov      rsi, r15
0000000008b2165c: 31d2                         xor      edx, edx
0000000008b2165e: e81d067400                   call     0x9261c80
0000000008b21663: 85c0                         test     eax, eax
0000000008b21665: 744b                         je       0x8b216b2
0000000008b21667: 488b542410                   mov      rdx, qword ptr [rsp + 0x10]
0000000008b2166c: 498d0414                     lea      rax, [r12 + rdx]
0000000008b21670: 488b8c24a8000000             mov      rcx, qword ptr [rsp + 0xa8]
0000000008b21678: 4989ce                       mov      r14, rcx
0000000008b2167b: 4d29e6                       sub      r14, r12
0000000008b2167e: 4839c8                       cmp      rax, rcx
0000000008b21681: 4c0f46f2                     cmovbe   r14, rdx
0000000008b21685: 488b8424a0000000             mov      rax, qword ptr [rsp + 0xa0]
0000000008b2168d: 4a8d3c20                     lea      rdi, [rax + r12]
0000000008b21691: 4c89fe                       mov      rsi, r15
0000000008b21694: 4c89f2                       mov      rdx, r14
0000000008b21697: e894cbb401                   call     0xa66e230
0000000008b2169c: 4d01f4                       add      r12, r14
0000000008b2169f: 41ffc5                       inc      r13d
0000000008b216a2: 4c396c2408                   cmp      qword ptr [rsp + 8], r13
0000000008b216a7: 0f8343ffffff                 jae      0x8b215f0
0000000008b216ad: 4531ff                       xor      r15d, r15d
0000000008b216b0: eb06                         jmp      0x8b216b8
0000000008b216b2: 41bfffffffff                 mov      r15d, 0xffffffff
0000000008b216b8: 4889ef                       mov      rdi, rbp
0000000008b216bb: e8f0067400                   call     0x9261db0
0000000008b216c0: 4489f8                       mov      eax, r15d
0000000008b216c3: 4883c468                     add      rsp, 0x68
0000000008b216c7: 5b                           pop      rbx
0000000008b216c8: 415c                         pop      r12
0000000008b216ca: 415d                         pop      r13
0000000008b216cc: 415e                         pop      r14
0000000008b216ce: 415f                         pop      r15
0000000008b216d0: 5d                           pop      rbp
0000000008b216d1: c3                           ret

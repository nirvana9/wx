00000000079ed780: 55                           push     rbp
00000000079ed781: 4157                         push     r15
00000000079ed783: 4156                         push     r14
00000000079ed785: 4155                         push     r13
00000000079ed787: 4154                         push     r12
00000000079ed789: 53                           push     rbx
00000000079ed78a: 4883ec18                     sub      rsp, 0x18
00000000079ed78e: 4889f3                       mov      rbx, rsi
00000000079ed791: 4989fe                       mov      r14, rdi
00000000079ed794: 4c8d7f20                     lea      r15, [rdi + 0x20]
00000000079ed798: 488d4708                     lea      rax, [rdi + 8]
00000000079ed79c: 4889442410                   mov      qword ptr [rsp + 0x10], rax
00000000079ed7a1: 6666666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000079ed7b0: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ed7b4: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
00000000079ed7b8: 7316                         jae      0x79ed7d0
00000000079ed7ba: 0fb630                       movzx    esi, byte ptr [rax]
00000000079ed7bd: 4084f6                       test     sil, sil
00000000079ed7c0: 780e                         js       0x79ed7d0
00000000079ed7c2: 897320                       mov      dword ptr [rbx + 0x20], esi
00000000079ed7c5: 48ffc0                       inc      rax
00000000079ed7c8: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ed7cc: eb0f                         jmp      0x79ed7dd
00000000079ed7ce: 6690                         nop
00000000079ed7d0: 4889df                       mov      rdi, rbx
00000000079ed7d3: e8783a5601                   call     0x8f51250
00000000079ed7d8: 89c6                         mov      esi, eax
00000000079ed7da: 894320                       mov      dword ptr [rbx + 0x20], eax
00000000079ed7dd: 40b501                       mov      bpl, 1
00000000079ed7e0: 85f6                         test     esi, esi
00000000079ed7e2: 0f84c0010000                 je       0x79ed9a8
00000000079ed7e8: 89f1                         mov      ecx, esi
00000000079ed7ea: c1e903                       shr      ecx, 3
00000000079ed7ed: 89f0                         mov      eax, esi
00000000079ed7ef: 83e007                       and      eax, 7
00000000079ed7f2: 83f902                       cmp      ecx, 2
00000000079ed7f5: 7429                         je       0x79ed820
00000000079ed7f7: 83f901                       cmp      ecx, 1
00000000079ed7fa: 7529                         jne      0x79ed825
00000000079ed7fc: 85c0                         test     eax, eax
00000000079ed7fe: 7525                         jne      0x79ed825
00000000079ed800: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ed804: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ed808: 4839c8                       cmp      rax, rcx
00000000079ed80b: 7336                         jae      0x79ed843
00000000079ed80d: 0fb610                       movzx    edx, byte ptr [rax]
00000000079ed810: 84d2                         test     dl, dl
00000000079ed812: 782f                         js       0x79ed843
00000000079ed814: 418917                       mov      dword ptr [r15], edx
00000000079ed817: 48ffc0                       inc      rax
00000000079ed81a: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ed81e: eb3e                         jmp      0x79ed85e
00000000079ed820: 83f802                       cmp      eax, 2
00000000079ed823: 7457                         je       0x79ed87c
00000000079ed825: 83f804                       cmp      eax, 4
00000000079ed828: 0f847a010000                 je       0x79ed9a8
00000000079ed82e: 4889df                       mov      rdi, rbx
00000000079ed831: e8da475601                   call     0x8f52010
00000000079ed836: 84c0                         test     al, al
00000000079ed838: 0f8572ffffff                 jne      0x79ed7b0
00000000079ed83e: e963010000                   jmp      0x79ed9a6
00000000079ed843: 4889df                       mov      rdi, rbx
00000000079ed846: 4c89fe                       mov      rsi, r15
00000000079ed849: e8c2385601                   call     0x8f51110
00000000079ed84e: 84c0                         test     al, al
00000000079ed850: 0f8450010000                 je       0x79ed9a6
00000000079ed856: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ed85a: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ed85e: 41804e2801                   or       byte ptr [r14 + 0x28], 1
00000000079ed863: 4839c8                       cmp      rax, rcx
00000000079ed866: 0f8344ffffff                 jae      0x79ed7b0
00000000079ed86c: 803812                       cmp      byte ptr [rax], 0x12
00000000079ed86f: 0f853bffffff                 jne      0x79ed7b0
00000000079ed875: 48ffc0                       inc      rax
00000000079ed878: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ed87c: 49634610                     movsxd   rax, dword ptr [r14 + 0x10]
00000000079ed880: 418b7614                     mov      esi, dword ptr [r14 + 0x14]
00000000079ed884: 39f0                         cmp      eax, esi
00000000079ed886: 7d18                         jge      0x79ed8a0
00000000079ed888: 498b4e08                     mov      rcx, qword ptr [r14 + 8]
00000000079ed88c: 8d5001                       lea      edx, [rax + 1]
00000000079ed88f: 41895610                     mov      dword ptr [r14 + 0x10], edx
00000000079ed893: 4c8b2cc1                     mov      r13, qword ptr [rcx + rax*8]
00000000079ed897: eb4b                         jmp      0x79ed8e4
00000000079ed899: 0f1f8000000000               nop      dword ptr [rax]
00000000079ed8a0: 413b7618                     cmp      esi, dword ptr [r14 + 0x18]
00000000079ed8a4: 7510                         jne      0x79ed8b6
00000000079ed8a6: ffc6                         inc      esi
00000000079ed8a8: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000079ed8ad: e88e185601                   call     0x8f4f140
00000000079ed8b2: 418b7614                     mov      esi, dword ptr [r14 + 0x14]
00000000079ed8b6: ffc6                         inc      esi
00000000079ed8b8: 41897614                     mov      dword ptr [r14 + 0x14], esi
00000000079ed8bc: bf38000000                   mov      edi, 0x38
00000000079ed8c1: e8da04c802                   call     0xa66dda0
00000000079ed8c6: 4989c5                       mov      r13, rax
00000000079ed8c9: 4889c7                       mov      rdi, rax
00000000079ed8cc: e81ff0ffff                   call     0x79ec8f0
00000000079ed8d1: 498b4608                     mov      rax, qword ptr [r14 + 8]
00000000079ed8d5: 49634e10                     movsxd   rcx, dword ptr [r14 + 0x10]
00000000079ed8d9: 8d5101                       lea      edx, [rcx + 1]
00000000079ed8dc: 41895610                     mov      dword ptr [r14 + 0x10], edx
00000000079ed8e0: 4c892cc8                     mov      qword ptr [rax + rcx*8], r13
00000000079ed8e4: c744240caaaaaaaa             mov      dword ptr [rsp + 0xc], 0xaaaaaaaa
00000000079ed8ec: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ed8f0: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
00000000079ed8f4: 7314                         jae      0x79ed90a
00000000079ed8f6: 0fb608                       movzx    ecx, byte ptr [rax]
00000000079ed8f9: 84c9                         test     cl, cl
00000000079ed8fb: 780d                         js       0x79ed90a
00000000079ed8fd: 894c240c                     mov      dword ptr [rsp + 0xc], ecx
00000000079ed901: 48ffc0                       inc      rax
00000000079ed904: 48894308                     mov      qword ptr [rbx + 8], rax
00000000079ed908: eb15                         jmp      0x79ed91f
00000000079ed90a: 4889df                       mov      rdi, rbx
00000000079ed90d: 488d74240c                   lea      rsi, [rsp + 0xc]
00000000079ed912: e8f9375601                   call     0x8f51110
00000000079ed917: 84c0                         test     al, al
00000000079ed919: 0f8487000000                 je       0x79ed9a6
00000000079ed91f: 8b4338                       mov      eax, dword ptr [rbx + 0x38]
00000000079ed922: 8d4801                       lea      ecx, [rax + 1]
00000000079ed925: 894b38                       mov      dword ptr [rbx + 0x38], ecx
00000000079ed928: 3b433c                       cmp      eax, dword ptr [rbx + 0x3c]
00000000079ed92b: 7d79                         jge      0x79ed9a6
00000000079ed92d: 8b74240c                     mov      esi, dword ptr [rsp + 0xc]
00000000079ed931: 4889df                       mov      rdi, rbx
00000000079ed934: e897305601                   call     0x8f509d0
00000000079ed939: 4189c4                       mov      r12d, eax
00000000079ed93c: 4c89ef                       mov      rdi, r13
00000000079ed93f: 4889de                       mov      rsi, rbx
00000000079ed942: e899f3ffff                   call     0x79ecce0
00000000079ed947: 84c0                         test     al, al
00000000079ed949: 745b                         je       0x79ed9a6
00000000079ed94b: 807b2400                     cmp      byte ptr [rbx + 0x24], 0
00000000079ed94f: 7455                         je       0x79ed9a6
00000000079ed951: 4889df                       mov      rdi, rbx
00000000079ed954: 4489e6                       mov      esi, r12d
00000000079ed957: e8e4305601                   call     0x8f50a40
00000000079ed95c: 8b4338                       mov      eax, dword ptr [rbx + 0x38]
00000000079ed95f: 85c0                         test     eax, eax
00000000079ed961: 7e05                         jle      0x79ed968
00000000079ed963: ffc8                         dec      eax
00000000079ed965: 894338                       mov      dword ptr [rbx + 0x38], eax
00000000079ed968: 488b4308                     mov      rax, qword ptr [rbx + 8]
00000000079ed96c: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
00000000079ed970: 4839c8                       cmp      rax, rcx
00000000079ed973: 7309                         jae      0x79ed97e
00000000079ed975: 803812                       cmp      byte ptr [rax], 0x12
00000000079ed978: 0f84f7feffff                 je       0x79ed875
00000000079ed97e: 4839c8                       cmp      rax, rcx
00000000079ed981: 0f8529feffff                 jne      0x79ed7b0
00000000079ed987: 837b2c00                     cmp      dword ptr [rbx + 0x2c], 0
00000000079ed98b: 750c                         jne      0x79ed999
00000000079ed98d: 8b4318                       mov      eax, dword ptr [rbx + 0x18]
00000000079ed990: 3b4328                       cmp      eax, dword ptr [rbx + 0x28]
00000000079ed993: 0f8517feffff                 jne      0x79ed7b0
00000000079ed999: c7432000000000               mov      dword ptr [rbx + 0x20], 0
00000000079ed9a0: c6432401                     mov      byte ptr [rbx + 0x24], 1
00000000079ed9a4: eb02                         jmp      0x79ed9a8
00000000079ed9a6: 31ed                         xor      ebp, ebp
00000000079ed9a8: 89e8                         mov      eax, ebp
00000000079ed9aa: 4883c418                     add      rsp, 0x18
00000000079ed9ae: 5b                           pop      rbx
00000000079ed9af: 415c                         pop      r12
00000000079ed9b1: 415d                         pop      r13
00000000079ed9b3: 415e                         pop      r14
00000000079ed9b5: 415f                         pop      r15
00000000079ed9b7: 5d                           pop      rbp
00000000079ed9b8: c3                           ret
00000000079ed9b9: 4889c3                       mov      rbx, rax
00000000079ed9bc: 4c89ef                       mov      rdi, r13
00000000079ed9bf: e87cc7b1fc                   call     0x450a140
00000000079ed9c4: 4889df                       mov      rdi, rbx
00000000079ed9c7: e854f4affc                   call     0x44ece20

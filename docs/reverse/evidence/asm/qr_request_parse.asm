0000000007cc5740: 55                           push     rbp
0000000007cc5741: 4157                         push     r15
0000000007cc5743: 4156                         push     r14
0000000007cc5745: 4155                         push     r13
0000000007cc5747: 4154                         push     r12
0000000007cc5749: 53                           push     rbx
0000000007cc574a: 4883ec18                     sub      rsp, 0x18
0000000007cc574e: 4989f6                       mov      r14, rsi
0000000007cc5751: 4989ff                       mov      r15, rdi
0000000007cc5754: 488d4720                     lea      rax, [rdi + 0x20]
0000000007cc5758: 4889442408                   mov      qword ptr [rsp + 8], rax
0000000007cc575d: 488d4724                     lea      rax, [rdi + 0x24]
0000000007cc5761: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000007cc5766: 4c8d2d0fe730fa               lea      r13, [rip - 0x5cf18f1]
0000000007cc576d: 0f1f00                       nop      dword ptr [rax]
0000000007cc5770: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5774: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc5778: 7316                         jae      0x7cc5790
0000000007cc577a: 0fb630                       movzx    esi, byte ptr [rax]
0000000007cc577d: 4084f6                       test     sil, sil
0000000007cc5780: 780e                         js       0x7cc5790
0000000007cc5782: 41897620                     mov      dword ptr [r14 + 0x20], esi
0000000007cc5786: 48ffc0                       inc      rax
0000000007cc5789: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc578d: eb0f                         jmp      0x7cc579e
0000000007cc578f: 90                           nop
0000000007cc5790: 4c89f7                       mov      rdi, r14
0000000007cc5793: e8b8ba2801                   call     0x8f51250
0000000007cc5798: 89c6                         mov      esi, eax
0000000007cc579a: 41894620                     mov      dword ptr [r14 + 0x20], eax
0000000007cc579e: b301                         mov      bl, 1
0000000007cc57a0: 85f6                         test     esi, esi
0000000007cc57a2: 0f847a070000                 je       0x7cc5f22
0000000007cc57a8: 89f1                         mov      ecx, esi
0000000007cc57aa: c1e903                       shr      ecx, 3
0000000007cc57ad: 89f0                         mov      eax, esi
0000000007cc57af: 83e007                       and      eax, 7
0000000007cc57b2: ffc9                         dec      ecx
0000000007cc57b4: 83f90a                       cmp      ecx, 0xa
0000000007cc57b7: 0f8703010000                 ja       0x7cc58c0
0000000007cc57bd: 49634c8d00                   movsxd   rcx, dword ptr [r13 + rcx*4]
0000000007cc57c2: 4c01e9                       add      rcx, r13
0000000007cc57c5: ffe1                         jmp      rcx
0000000007cc57c7: 83f802                       cmp      eax, 2
0000000007cc57ca: 0f85f0000000                 jne      0x7cc58c0
0000000007cc57d0: 41804f5c01                   or       byte ptr [r15 + 0x5c], 1
0000000007cc57d5: 498b6f08                     mov      rbp, qword ptr [r15 + 8]
0000000007cc57d9: 4885ed                       test     rbp, rbp
0000000007cc57dc: 7519                         jne      0x7cc57f7
0000000007cc57de: bf38000000                   mov      edi, 0x38
0000000007cc57e3: e8b8859a02                   call     0xa66dda0
0000000007cc57e8: 4889c5                       mov      rbp, rax
0000000007cc57eb: 4889c7                       mov      rdi, rax
0000000007cc57ee: e8bddcd2ff                   call     0x79f34b0
0000000007cc57f3: 49896f08                     mov      qword ptr [r15 + 8], rbp
0000000007cc57f7: c7442404aaaaaaaa             mov      dword ptr [rsp + 4], 0xaaaaaaaa
0000000007cc57ff: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5803: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc5807: 0f83d1000000                 jae      0x7cc58de
0000000007cc580d: 0fb608                       movzx    ecx, byte ptr [rax]
0000000007cc5810: 84c9                         test     cl, cl
0000000007cc5812: 0f88c6000000                 js       0x7cc58de
0000000007cc5818: 894c2404                     mov      dword ptr [rsp + 4], ecx
0000000007cc581c: 48ffc0                       inc      rax
0000000007cc581f: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5823: e9cb000000                   jmp      0x7cc58f3
0000000007cc5828: 83f802                       cmp      eax, 2
0000000007cc582b: 0f858f000000                 jne      0x7cc58c0
0000000007cc5831: e9d2020000                   jmp      0x7cc5b08
0000000007cc5836: 83f802                       cmp      eax, 2
0000000007cc5839: 0f8581000000                 jne      0x7cc58c0
0000000007cc583f: e91e050000                   jmp      0x7cc5d62
0000000007cc5844: 85c0                         test     eax, eax
0000000007cc5846: 0f8574000000                 jne      0x7cc58c0
0000000007cc584c: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5850: 498b4e10                     mov      rcx, qword ptr [r14 + 0x10]
0000000007cc5854: 4839c8                       cmp      rax, rcx
0000000007cc5857: 0f82f2010000                 jb       0x7cc5a4f
0000000007cc585d: e904020000                   jmp      0x7cc5a66
0000000007cc5862: 83f802                       cmp      eax, 2
0000000007cc5865: 7559                         jne      0x7cc58c0
0000000007cc5867: 418b575c                     mov      edx, dword ptr [r15 + 0x5c]
0000000007cc586b: e937020000                   jmp      0x7cc5aa7
0000000007cc5870: 83f802                       cmp      eax, 2
0000000007cc5873: 754b                         jne      0x7cc58c0
0000000007cc5875: e9ae030000                   jmp      0x7cc5c28
0000000007cc587a: 83f802                       cmp      eax, 2
0000000007cc587d: 7541                         jne      0x7cc58c0
0000000007cc587f: e9e8000000                   jmp      0x7cc596c
0000000007cc5884: 85c0                         test     eax, eax
0000000007cc5886: 7538                         jne      0x7cc58c0
0000000007cc5888: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc588c: 498b4e10                     mov      rcx, qword ptr [r14 + 0x10]
0000000007cc5890: 4839c8                       cmp      rax, rcx
0000000007cc5893: 0f82d6020000                 jb       0x7cc5b6f
0000000007cc5899: e9e8020000                   jmp      0x7cc5b86
0000000007cc589e: 83f802                       cmp      eax, 2
0000000007cc58a1: 751d                         jne      0x7cc58c0
0000000007cc58a3: 418b575c                     mov      edx, dword ptr [r15 + 0x5c]
0000000007cc58a7: e91b030000                   jmp      0x7cc5bc7
0000000007cc58ac: 83f802                       cmp      eax, 2
0000000007cc58af: 750f                         jne      0x7cc58c0
0000000007cc58b1: e987050000                   jmp      0x7cc5e3d
0000000007cc58b6: 83f802                       cmp      eax, 2
0000000007cc58b9: 0f84c8030000                 je       0x7cc5c87
0000000007cc58bf: 90                           nop
0000000007cc58c0: 83f804                       cmp      eax, 4
0000000007cc58c3: 0f8459060000                 je       0x7cc5f22
0000000007cc58c9: 4c89f7                       mov      rdi, r14
0000000007cc58cc: e83fc72801                   call     0x8f52010
0000000007cc58d1: 84c0                         test     al, al
0000000007cc58d3: 0f8597feffff                 jne      0x7cc5770
0000000007cc58d9: e942060000                   jmp      0x7cc5f20
0000000007cc58de: 4c89f7                       mov      rdi, r14
0000000007cc58e1: 488d742404                   lea      rsi, [rsp + 4]
0000000007cc58e6: e825b82801                   call     0x8f51110
0000000007cc58eb: 84c0                         test     al, al
0000000007cc58ed: 0f842d060000                 je       0x7cc5f20
0000000007cc58f3: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007cc58f7: 8d4801                       lea      ecx, [rax + 1]
0000000007cc58fa: 41894e38                     mov      dword ptr [r14 + 0x38], ecx
0000000007cc58fe: 413b463c                     cmp      eax, dword ptr [r14 + 0x3c]
0000000007cc5902: 0f8d18060000                 jge      0x7cc5f20
0000000007cc5908: 8b742404                     mov      esi, dword ptr [rsp + 4]
0000000007cc590c: 4c89f7                       mov      rdi, r14
0000000007cc590f: e8bcb02801                   call     0x8f509d0
0000000007cc5914: 4189c4                       mov      r12d, eax
0000000007cc5917: 4889ef                       mov      rdi, rbp
0000000007cc591a: 4c89f6                       mov      rsi, r14
0000000007cc591d: e8dedfd2ff                   call     0x79f3900
0000000007cc5922: 84c0                         test     al, al
0000000007cc5924: 0f84f6050000                 je       0x7cc5f20
0000000007cc592a: 41807e2400                   cmp      byte ptr [r14 + 0x24], 0
0000000007cc592f: 0f84eb050000                 je       0x7cc5f20
0000000007cc5935: 4c89f7                       mov      rdi, r14
0000000007cc5938: 4489e6                       mov      esi, r12d
0000000007cc593b: e800b12801                   call     0x8f50a40
0000000007cc5940: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007cc5944: 85c0                         test     eax, eax
0000000007cc5946: 7e06                         jle      0x7cc594e
0000000007cc5948: ffc8                         dec      eax
0000000007cc594a: 41894638                     mov      dword ptr [r14 + 0x38], eax
0000000007cc594e: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5952: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc5956: 0f8314feffff                 jae      0x7cc5770
0000000007cc595c: 803812                       cmp      byte ptr [rax], 0x12
0000000007cc595f: 0f850bfeffff                 jne      0x7cc5770
0000000007cc5965: 48ffc0                       inc      rax
0000000007cc5968: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc596c: 41804f5c02                   or       byte ptr [r15 + 0x5c], 2
0000000007cc5971: 498b6f10                     mov      rbp, qword ptr [r15 + 0x10]
0000000007cc5975: 4885ed                       test     rbp, rbp
0000000007cc5978: 7519                         jne      0x7cc5993
0000000007cc597a: bf20000000                   mov      edi, 0x20
0000000007cc597f: e81c849a02                   call     0xa66dda0
0000000007cc5984: 4889c5                       mov      rbp, rax
0000000007cc5987: 4889c7                       mov      rdi, rax
0000000007cc598a: e821abedff                   call     0x7ba04b0
0000000007cc598f: 49896f10                     mov      qword ptr [r15 + 0x10], rbp
0000000007cc5993: c7442404aaaaaaaa             mov      dword ptr [rsp + 4], 0xaaaaaaaa
0000000007cc599b: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc599f: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc59a3: 7314                         jae      0x7cc59b9
0000000007cc59a5: 0fb608                       movzx    ecx, byte ptr [rax]
0000000007cc59a8: 84c9                         test     cl, cl
0000000007cc59aa: 780d                         js       0x7cc59b9
0000000007cc59ac: 894c2404                     mov      dword ptr [rsp + 4], ecx
0000000007cc59b0: 48ffc0                       inc      rax
0000000007cc59b3: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc59b7: eb15                         jmp      0x7cc59ce
0000000007cc59b9: 4c89f7                       mov      rdi, r14
0000000007cc59bc: 488d742404                   lea      rsi, [rsp + 4]
0000000007cc59c1: e84ab72801                   call     0x8f51110
0000000007cc59c6: 84c0                         test     al, al
0000000007cc59c8: 0f8452050000                 je       0x7cc5f20
0000000007cc59ce: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007cc59d2: 8d4801                       lea      ecx, [rax + 1]
0000000007cc59d5: 41894e38                     mov      dword ptr [r14 + 0x38], ecx
0000000007cc59d9: 413b463c                     cmp      eax, dword ptr [r14 + 0x3c]
0000000007cc59dd: 0f8d3d050000                 jge      0x7cc5f20
0000000007cc59e3: 8b742404                     mov      esi, dword ptr [rsp + 4]
0000000007cc59e7: 4c89f7                       mov      rdi, r14
0000000007cc59ea: e8e1af2801                   call     0x8f509d0
0000000007cc59ef: 4189c4                       mov      r12d, eax
0000000007cc59f2: 4889ef                       mov      rdi, rbp
0000000007cc59f5: 4c89f6                       mov      rsi, r14
0000000007cc59f8: e833adedff                   call     0x7ba0730
0000000007cc59fd: 84c0                         test     al, al
0000000007cc59ff: 0f841b050000                 je       0x7cc5f20
0000000007cc5a05: 41807e2400                   cmp      byte ptr [r14 + 0x24], 0
0000000007cc5a0a: 0f8410050000                 je       0x7cc5f20
0000000007cc5a10: 4c89f7                       mov      rdi, r14
0000000007cc5a13: 4489e6                       mov      esi, r12d
0000000007cc5a16: e825b02801                   call     0x8f50a40
0000000007cc5a1b: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007cc5a1f: 85c0                         test     eax, eax
0000000007cc5a21: 7e06                         jle      0x7cc5a29
0000000007cc5a23: ffc8                         dec      eax
0000000007cc5a25: 41894638                     mov      dword ptr [r14 + 0x38], eax
0000000007cc5a29: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5a2d: 498b4e10                     mov      rcx, qword ptr [r14 + 0x10]
0000000007cc5a31: 4839c8                       cmp      rax, rcx
0000000007cc5a34: 0f8336fdffff                 jae      0x7cc5770
0000000007cc5a3a: 803818                       cmp      byte ptr [rax], 0x18
0000000007cc5a3d: 0f852dfdffff                 jne      0x7cc5770
0000000007cc5a43: 48ffc0                       inc      rax
0000000007cc5a46: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5a4a: 4839c8                       cmp      rax, rcx
0000000007cc5a4d: 7317                         jae      0x7cc5a66
0000000007cc5a4f: 0fb610                       movzx    edx, byte ptr [rax]
0000000007cc5a52: 84d2                         test     dl, dl
0000000007cc5a54: 7810                         js       0x7cc5a66
0000000007cc5a56: 488b742408                   mov      rsi, qword ptr [rsp + 8]
0000000007cc5a5b: 8916                         mov      dword ptr [rsi], edx
0000000007cc5a5d: 48ffc0                       inc      rax
0000000007cc5a60: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5a64: eb1d                         jmp      0x7cc5a83
0000000007cc5a66: 4c89f7                       mov      rdi, r14
0000000007cc5a69: 488b742408                   mov      rsi, qword ptr [rsp + 8]
0000000007cc5a6e: e89db62801                   call     0x8f51110
0000000007cc5a73: 84c0                         test     al, al
0000000007cc5a75: 0f84a5040000                 je       0x7cc5f20
0000000007cc5a7b: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5a7f: 498b4e10                     mov      rcx, qword ptr [r14 + 0x10]
0000000007cc5a83: 418b575c                     mov      edx, dword ptr [r15 + 0x5c]
0000000007cc5a87: 83ca04                       or       edx, 4
0000000007cc5a8a: 4189575c                     mov      dword ptr [r15 + 0x5c], edx
0000000007cc5a8e: 4839c8                       cmp      rax, rcx
0000000007cc5a91: 0f83d9fcffff                 jae      0x7cc5770
0000000007cc5a97: 803822                       cmp      byte ptr [rax], 0x22
0000000007cc5a9a: 0f85d0fcffff                 jne      0x7cc5770
0000000007cc5aa0: 48ffc0                       inc      rax
0000000007cc5aa3: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5aa7: 83ca08                       or       edx, 8
0000000007cc5aaa: 4189575c                     mov      dword ptr [r15 + 0x5c], edx
0000000007cc5aae: 498b7718                     mov      rsi, qword ptr [r15 + 0x18]
0000000007cc5ab2: 483b3547dae202               cmp      rsi, qword ptr [rip + 0x2e2da47] ; reloc 0xad176f0
0000000007cc5ab9: 751f                         jne      0x7cc5ada
0000000007cc5abb: bf18000000                   mov      edi, 0x18
0000000007cc5ac0: e8db829a02                   call     0xa66dda0
0000000007cc5ac5: 4889c6                       mov      rsi, rax
0000000007cc5ac8: 0f57c0                       xorps    xmm0, xmm0
0000000007cc5acb: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc5ace: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
0000000007cc5ad6: 49894718                     mov      qword ptr [r15 + 0x18], rax
0000000007cc5ada: 4c89f7                       mov      rdi, r14
0000000007cc5add: e85ecc2801                   call     0x8f52740
0000000007cc5ae2: 84c0                         test     al, al
0000000007cc5ae4: 0f8436040000                 je       0x7cc5f20
0000000007cc5aea: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5aee: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc5af2: 0f8378fcffff                 jae      0x7cc5770
0000000007cc5af8: 80382a                       cmp      byte ptr [rax], 0x2a
0000000007cc5afb: 0f856ffcffff                 jne      0x7cc5770
0000000007cc5b01: 48ffc0                       inc      rax
0000000007cc5b04: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5b08: 41804f5c10                   or       byte ptr [r15 + 0x5c], 0x10
0000000007cc5b0d: 498b7728                     mov      rsi, qword ptr [r15 + 0x28]
0000000007cc5b11: 483b35e8d9e202               cmp      rsi, qword ptr [rip + 0x2e2d9e8] ; reloc 0xad176f0
0000000007cc5b18: 751f                         jne      0x7cc5b39
0000000007cc5b1a: bf18000000                   mov      edi, 0x18
0000000007cc5b1f: e87c829a02                   call     0xa66dda0
0000000007cc5b24: 4889c6                       mov      rsi, rax
0000000007cc5b27: 0f57c0                       xorps    xmm0, xmm0
0000000007cc5b2a: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc5b2d: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
0000000007cc5b35: 49894728                     mov      qword ptr [r15 + 0x28], rax
0000000007cc5b39: 4c89f7                       mov      rdi, r14
0000000007cc5b3c: e8ffcb2801                   call     0x8f52740
0000000007cc5b41: 84c0                         test     al, al
0000000007cc5b43: 0f84d7030000                 je       0x7cc5f20
0000000007cc5b49: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5b4d: 498b4e10                     mov      rcx, qword ptr [r14 + 0x10]
0000000007cc5b51: 4839c8                       cmp      rax, rcx
0000000007cc5b54: 0f8316fcffff                 jae      0x7cc5770
0000000007cc5b5a: 803830                       cmp      byte ptr [rax], 0x30
0000000007cc5b5d: 0f850dfcffff                 jne      0x7cc5770
0000000007cc5b63: 48ffc0                       inc      rax
0000000007cc5b66: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5b6a: 4839c8                       cmp      rax, rcx
0000000007cc5b6d: 7317                         jae      0x7cc5b86
0000000007cc5b6f: 0fb610                       movzx    edx, byte ptr [rax]
0000000007cc5b72: 84d2                         test     dl, dl
0000000007cc5b74: 7810                         js       0x7cc5b86
0000000007cc5b76: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
0000000007cc5b7b: 8916                         mov      dword ptr [rsi], edx
0000000007cc5b7d: 48ffc0                       inc      rax
0000000007cc5b80: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5b84: eb1d                         jmp      0x7cc5ba3
0000000007cc5b86: 4c89f7                       mov      rdi, r14
0000000007cc5b89: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
0000000007cc5b8e: e87db52801                   call     0x8f51110
0000000007cc5b93: 84c0                         test     al, al
0000000007cc5b95: 0f8485030000                 je       0x7cc5f20
0000000007cc5b9b: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5b9f: 498b4e10                     mov      rcx, qword ptr [r14 + 0x10]
0000000007cc5ba3: 418b575c                     mov      edx, dword ptr [r15 + 0x5c]
0000000007cc5ba7: 83ca20                       or       edx, 0x20
0000000007cc5baa: 4189575c                     mov      dword ptr [r15 + 0x5c], edx
0000000007cc5bae: 4839c8                       cmp      rax, rcx
0000000007cc5bb1: 0f83b9fbffff                 jae      0x7cc5770
0000000007cc5bb7: 80383a                       cmp      byte ptr [rax], 0x3a
0000000007cc5bba: 0f85b0fbffff                 jne      0x7cc5770
0000000007cc5bc0: 48ffc0                       inc      rax
0000000007cc5bc3: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5bc7: 83ca40                       or       edx, 0x40
0000000007cc5bca: 4189575c                     mov      dword ptr [r15 + 0x5c], edx
0000000007cc5bce: 498b7730                     mov      rsi, qword ptr [r15 + 0x30]
0000000007cc5bd2: 483b3527d9e202               cmp      rsi, qword ptr [rip + 0x2e2d927] ; reloc 0xad176f0
0000000007cc5bd9: 751f                         jne      0x7cc5bfa
0000000007cc5bdb: bf18000000                   mov      edi, 0x18
0000000007cc5be0: e8bb819a02                   call     0xa66dda0
0000000007cc5be5: 4889c6                       mov      rsi, rax
0000000007cc5be8: 0f57c0                       xorps    xmm0, xmm0
0000000007cc5beb: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc5bee: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
0000000007cc5bf6: 49894730                     mov      qword ptr [r15 + 0x30], rax
0000000007cc5bfa: 4c89f7                       mov      rdi, r14
0000000007cc5bfd: e83ecb2801                   call     0x8f52740
0000000007cc5c02: 84c0                         test     al, al
0000000007cc5c04: 0f8416030000                 je       0x7cc5f20
0000000007cc5c0a: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5c0e: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc5c12: 0f8358fbffff                 jae      0x7cc5770
0000000007cc5c18: 803842                       cmp      byte ptr [rax], 0x42
0000000007cc5c1b: 0f854ffbffff                 jne      0x7cc5770
0000000007cc5c21: 48ffc0                       inc      rax
0000000007cc5c24: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5c28: 41804f5c80                   or       byte ptr [r15 + 0x5c], 0x80
0000000007cc5c2d: 498b7738                     mov      rsi, qword ptr [r15 + 0x38]
0000000007cc5c31: 483b35c8d8e202               cmp      rsi, qword ptr [rip + 0x2e2d8c8] ; reloc 0xad176f0
0000000007cc5c38: 751f                         jne      0x7cc5c59
0000000007cc5c3a: bf18000000                   mov      edi, 0x18
0000000007cc5c3f: e85c819a02                   call     0xa66dda0
0000000007cc5c44: 4889c6                       mov      rsi, rax
0000000007cc5c47: 0f57c0                       xorps    xmm0, xmm0
0000000007cc5c4a: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc5c4d: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
0000000007cc5c55: 49894738                     mov      qword ptr [r15 + 0x38], rax
0000000007cc5c59: 4c89f7                       mov      rdi, r14
0000000007cc5c5c: e8dfca2801                   call     0x8f52740
0000000007cc5c61: 84c0                         test     al, al
0000000007cc5c63: 0f84b7020000                 je       0x7cc5f20
0000000007cc5c69: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5c6d: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc5c71: 0f83f9faffff                 jae      0x7cc5770
0000000007cc5c77: 80384a                       cmp      byte ptr [rax], 0x4a
0000000007cc5c7a: 0f85f0faffff                 jne      0x7cc5770
0000000007cc5c80: 48ffc0                       inc      rax
0000000007cc5c83: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5c87: 41804f5d01                   or       byte ptr [r15 + 0x5d], 1
0000000007cc5c8c: 498b6f40                     mov      rbp, qword ptr [r15 + 0x40]
0000000007cc5c90: 4885ed                       test     rbp, rbp
0000000007cc5c93: 7519                         jne      0x7cc5cae
0000000007cc5c95: bf20000000                   mov      edi, 0x20
0000000007cc5c9a: e801819a02                   call     0xa66dda0
0000000007cc5c9f: 4889c5                       mov      rbp, rax
0000000007cc5ca2: 4889c7                       mov      rdi, rax
0000000007cc5ca5: e806a8edff                   call     0x7ba04b0
0000000007cc5caa: 49896f40                     mov      qword ptr [r15 + 0x40], rbp
0000000007cc5cae: c7442404aaaaaaaa             mov      dword ptr [rsp + 4], 0xaaaaaaaa
0000000007cc5cb6: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5cba: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc5cbe: 7314                         jae      0x7cc5cd4
0000000007cc5cc0: 0fb608                       movzx    ecx, byte ptr [rax]
0000000007cc5cc3: 84c9                         test     cl, cl
0000000007cc5cc5: 780d                         js       0x7cc5cd4
0000000007cc5cc7: 894c2404                     mov      dword ptr [rsp + 4], ecx
0000000007cc5ccb: 48ffc0                       inc      rax
0000000007cc5cce: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5cd2: eb15                         jmp      0x7cc5ce9
0000000007cc5cd4: 4c89f7                       mov      rdi, r14
0000000007cc5cd7: 488d742404                   lea      rsi, [rsp + 4]
0000000007cc5cdc: e82fb42801                   call     0x8f51110
0000000007cc5ce1: 84c0                         test     al, al
0000000007cc5ce3: 0f8437020000                 je       0x7cc5f20
0000000007cc5ce9: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007cc5ced: 8d4801                       lea      ecx, [rax + 1]
0000000007cc5cf0: 41894e38                     mov      dword ptr [r14 + 0x38], ecx
0000000007cc5cf4: 413b463c                     cmp      eax, dword ptr [r14 + 0x3c]
0000000007cc5cf8: 0f8d22020000                 jge      0x7cc5f20
0000000007cc5cfe: 8b742404                     mov      esi, dword ptr [rsp + 4]
0000000007cc5d02: 4c89f7                       mov      rdi, r14
0000000007cc5d05: e8c6ac2801                   call     0x8f509d0
0000000007cc5d0a: 4189c4                       mov      r12d, eax
0000000007cc5d0d: 4889ef                       mov      rdi, rbp
0000000007cc5d10: 4c89f6                       mov      rsi, r14
0000000007cc5d13: e818aaedff                   call     0x7ba0730
0000000007cc5d18: 84c0                         test     al, al
0000000007cc5d1a: 0f8400020000                 je       0x7cc5f20
0000000007cc5d20: 41807e2400                   cmp      byte ptr [r14 + 0x24], 0
0000000007cc5d25: 0f84f5010000                 je       0x7cc5f20
0000000007cc5d2b: 4c89f7                       mov      rdi, r14
0000000007cc5d2e: 4489e6                       mov      esi, r12d
0000000007cc5d31: e80aad2801                   call     0x8f50a40
0000000007cc5d36: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007cc5d3a: 85c0                         test     eax, eax
0000000007cc5d3c: 7e06                         jle      0x7cc5d44
0000000007cc5d3e: ffc8                         dec      eax
0000000007cc5d40: 41894638                     mov      dword ptr [r14 + 0x38], eax
0000000007cc5d44: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5d48: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc5d4c: 0f831efaffff                 jae      0x7cc5770
0000000007cc5d52: 803852                       cmp      byte ptr [rax], 0x52
0000000007cc5d55: 0f8515faffff                 jne      0x7cc5770
0000000007cc5d5b: 48ffc0                       inc      rax
0000000007cc5d5e: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5d62: 41804f5d02                   or       byte ptr [r15 + 0x5d], 2
0000000007cc5d67: 498b6f48                     mov      rbp, qword ptr [r15 + 0x48]
0000000007cc5d6b: 4885ed                       test     rbp, rbp
0000000007cc5d6e: 7519                         jne      0x7cc5d89
0000000007cc5d70: bf20000000                   mov      edi, 0x20
0000000007cc5d75: e826809a02                   call     0xa66dda0
0000000007cc5d7a: 4889c5                       mov      rbp, rax
0000000007cc5d7d: 4889c7                       mov      rdi, rax
0000000007cc5d80: e82ba7edff                   call     0x7ba04b0
0000000007cc5d85: 49896f48                     mov      qword ptr [r15 + 0x48], rbp
0000000007cc5d89: c7442404aaaaaaaa             mov      dword ptr [rsp + 4], 0xaaaaaaaa
0000000007cc5d91: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5d95: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc5d99: 7314                         jae      0x7cc5daf
0000000007cc5d9b: 0fb608                       movzx    ecx, byte ptr [rax]
0000000007cc5d9e: 84c9                         test     cl, cl
0000000007cc5da0: 780d                         js       0x7cc5daf
0000000007cc5da2: 894c2404                     mov      dword ptr [rsp + 4], ecx
0000000007cc5da6: 48ffc0                       inc      rax
0000000007cc5da9: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5dad: eb15                         jmp      0x7cc5dc4
0000000007cc5daf: 4c89f7                       mov      rdi, r14
0000000007cc5db2: 488d742404                   lea      rsi, [rsp + 4]
0000000007cc5db7: e854b32801                   call     0x8f51110
0000000007cc5dbc: 84c0                         test     al, al
0000000007cc5dbe: 0f845c010000                 je       0x7cc5f20
0000000007cc5dc4: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007cc5dc8: 8d4801                       lea      ecx, [rax + 1]
0000000007cc5dcb: 41894e38                     mov      dword ptr [r14 + 0x38], ecx
0000000007cc5dcf: 413b463c                     cmp      eax, dword ptr [r14 + 0x3c]
0000000007cc5dd3: 0f8d47010000                 jge      0x7cc5f20
0000000007cc5dd9: 8b742404                     mov      esi, dword ptr [rsp + 4]
0000000007cc5ddd: 4c89f7                       mov      rdi, r14
0000000007cc5de0: e8ebab2801                   call     0x8f509d0
0000000007cc5de5: 4189c4                       mov      r12d, eax
0000000007cc5de8: 4889ef                       mov      rdi, rbp
0000000007cc5deb: 4c89f6                       mov      rsi, r14
0000000007cc5dee: e83da9edff                   call     0x7ba0730
0000000007cc5df3: 84c0                         test     al, al
0000000007cc5df5: 0f8425010000                 je       0x7cc5f20
0000000007cc5dfb: 41807e2400                   cmp      byte ptr [r14 + 0x24], 0
0000000007cc5e00: 0f841a010000                 je       0x7cc5f20
0000000007cc5e06: 4c89f7                       mov      rdi, r14
0000000007cc5e09: 4489e6                       mov      esi, r12d
0000000007cc5e0c: e82fac2801                   call     0x8f50a40
0000000007cc5e11: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007cc5e15: 85c0                         test     eax, eax
0000000007cc5e17: 7e06                         jle      0x7cc5e1f
0000000007cc5e19: ffc8                         dec      eax
0000000007cc5e1b: 41894638                     mov      dword ptr [r14 + 0x38], eax
0000000007cc5e1f: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5e23: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc5e27: 0f8343f9ffff                 jae      0x7cc5770
0000000007cc5e2d: 80385a                       cmp      byte ptr [rax], 0x5a
0000000007cc5e30: 0f853af9ffff                 jne      0x7cc5770
0000000007cc5e36: 48ffc0                       inc      rax
0000000007cc5e39: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5e3d: 41804f5d04                   or       byte ptr [r15 + 0x5d], 4
0000000007cc5e42: 498b6f50                     mov      rbp, qword ptr [r15 + 0x50]
0000000007cc5e46: 4885ed                       test     rbp, rbp
0000000007cc5e49: 7519                         jne      0x7cc5e64
0000000007cc5e4b: bf20000000                   mov      edi, 0x20
0000000007cc5e50: e84b7f9a02                   call     0xa66dda0
0000000007cc5e55: 4889c5                       mov      rbp, rax
0000000007cc5e58: 4889c7                       mov      rdi, rax
0000000007cc5e5b: e850a6edff                   call     0x7ba04b0
0000000007cc5e60: 49896f50                     mov      qword ptr [r15 + 0x50], rbp
0000000007cc5e64: c7442404aaaaaaaa             mov      dword ptr [rsp + 4], 0xaaaaaaaa
0000000007cc5e6c: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5e70: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc5e74: 7314                         jae      0x7cc5e8a
0000000007cc5e76: 0fb608                       movzx    ecx, byte ptr [rax]
0000000007cc5e79: 84c9                         test     cl, cl
0000000007cc5e7b: 780d                         js       0x7cc5e8a
0000000007cc5e7d: 894c2404                     mov      dword ptr [rsp + 4], ecx
0000000007cc5e81: 48ffc0                       inc      rax
0000000007cc5e84: 49894608                     mov      qword ptr [r14 + 8], rax
0000000007cc5e88: eb15                         jmp      0x7cc5e9f
0000000007cc5e8a: 4c89f7                       mov      rdi, r14
0000000007cc5e8d: 488d742404                   lea      rsi, [rsp + 4]
0000000007cc5e92: e879b22801                   call     0x8f51110
0000000007cc5e97: 84c0                         test     al, al
0000000007cc5e99: 0f8481000000                 je       0x7cc5f20
0000000007cc5e9f: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007cc5ea3: 8d4801                       lea      ecx, [rax + 1]
0000000007cc5ea6: 41894e38                     mov      dword ptr [r14 + 0x38], ecx
0000000007cc5eaa: 413b463c                     cmp      eax, dword ptr [r14 + 0x3c]
0000000007cc5eae: 7d70                         jge      0x7cc5f20
0000000007cc5eb0: 8b742404                     mov      esi, dword ptr [rsp + 4]
0000000007cc5eb4: 4c89f7                       mov      rdi, r14
0000000007cc5eb7: e814ab2801                   call     0x8f509d0
0000000007cc5ebc: 4189c4                       mov      r12d, eax
0000000007cc5ebf: 4889ef                       mov      rdi, rbp
0000000007cc5ec2: 4c89f6                       mov      rsi, r14
0000000007cc5ec5: e866a8edff                   call     0x7ba0730
0000000007cc5eca: 84c0                         test     al, al
0000000007cc5ecc: 7452                         je       0x7cc5f20
0000000007cc5ece: 41807e2400                   cmp      byte ptr [r14 + 0x24], 0
0000000007cc5ed3: 744b                         je       0x7cc5f20
0000000007cc5ed5: 4c89f7                       mov      rdi, r14
0000000007cc5ed8: 4489e6                       mov      esi, r12d
0000000007cc5edb: e860ab2801                   call     0x8f50a40
0000000007cc5ee0: 418b4638                     mov      eax, dword ptr [r14 + 0x38]
0000000007cc5ee4: 85c0                         test     eax, eax
0000000007cc5ee6: 7e06                         jle      0x7cc5eee
0000000007cc5ee8: ffc8                         dec      eax
0000000007cc5eea: 41894638                     mov      dword ptr [r14 + 0x38], eax
0000000007cc5eee: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007cc5ef2: 493b4610                     cmp      rax, qword ptr [r14 + 0x10]
0000000007cc5ef6: 0f8574f8ffff                 jne      0x7cc5770
0000000007cc5efc: 41837e2c00                   cmp      dword ptr [r14 + 0x2c], 0
0000000007cc5f01: 750e                         jne      0x7cc5f11
0000000007cc5f03: 418b4618                     mov      eax, dword ptr [r14 + 0x18]
0000000007cc5f07: 413b4628                     cmp      eax, dword ptr [r14 + 0x28]
0000000007cc5f0b: 0f855ff8ffff                 jne      0x7cc5770
0000000007cc5f11: 41c7462000000000             mov      dword ptr [r14 + 0x20], 0
0000000007cc5f19: 41c6462401                   mov      byte ptr [r14 + 0x24], 1
0000000007cc5f1e: eb02                         jmp      0x7cc5f22
0000000007cc5f20: 31db                         xor      ebx, ebx
0000000007cc5f22: 89d8                         mov      eax, ebx
0000000007cc5f24: 4883c418                     add      rsp, 0x18
0000000007cc5f28: 5b                           pop      rbx
0000000007cc5f29: 415c                         pop      r12
0000000007cc5f2b: 415d                         pop      r13
0000000007cc5f2d: 415e                         pop      r14
0000000007cc5f2f: 415f                         pop      r15
0000000007cc5f31: 5d                           pop      rbp
0000000007cc5f32: c3                           ret
0000000007cc5f33: eb06                         jmp      0x7cc5f3b
0000000007cc5f35: eb04                         jmp      0x7cc5f3b
0000000007cc5f37: eb02                         jmp      0x7cc5f3b
0000000007cc5f39: eb00                         jmp      0x7cc5f3b
0000000007cc5f3b: 4889c3                       mov      rbx, rax
0000000007cc5f3e: 4889ef                       mov      rdi, rbp
0000000007cc5f41: e8fa4184fc                   call     0x450a140
0000000007cc5f46: 4889df                       mov      rdi, rbx
0000000007cc5f49: e8d26e82fc                   call     0x44ece20

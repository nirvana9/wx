0000000007cc6c50: 55                           push     rbp
0000000007cc6c51: 4157                         push     r15
0000000007cc6c53: 4156                         push     r14
0000000007cc6c55: 4155                         push     r13
0000000007cc6c57: 4154                         push     r12
0000000007cc6c59: 53                           push     rbx
0000000007cc6c5a: 4883ec18                     sub      rsp, 0x18
0000000007cc6c5e: 4889f3                       mov      rbx, rsi
0000000007cc6c61: 4989fe                       mov      r14, rdi
0000000007cc6c64: 488d4728                     lea      rax, [rdi + 0x28]
0000000007cc6c68: 4889442408                   mov      qword ptr [rsp + 8], rax
0000000007cc6c6d: 488d472c                     lea      rax, [rdi + 0x2c]
0000000007cc6c71: 4889442410                   mov      qword ptr [rsp + 0x10], rax
0000000007cc6c76: 4c8d252bd230fa               lea      r12, [rip - 0x5cf2dd5]
0000000007cc6c7d: 0f1f00                       nop      dword ptr [rax]
0000000007cc6c80: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc6c84: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
0000000007cc6c88: 7316                         jae      0x7cc6ca0
0000000007cc6c8a: 0fb630                       movzx    esi, byte ptr [rax]
0000000007cc6c8d: 4084f6                       test     sil, sil
0000000007cc6c90: 780e                         js       0x7cc6ca0
0000000007cc6c92: 897320                       mov      dword ptr [rbx + 0x20], esi
0000000007cc6c95: 48ffc0                       inc      rax
0000000007cc6c98: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc6c9c: eb0f                         jmp      0x7cc6cad
0000000007cc6c9e: 6690                         nop
0000000007cc6ca0: 4889df                       mov      rdi, rbx
0000000007cc6ca3: e8a8a52801                   call     0x8f51250
0000000007cc6ca8: 89c6                         mov      esi, eax
0000000007cc6caa: 894320                       mov      dword ptr [rbx + 0x20], eax
0000000007cc6cad: 40b501                       mov      bpl, 1
0000000007cc6cb0: 85f6                         test     esi, esi
0000000007cc6cb2: 0f840b060000                 je       0x7cc72c3
0000000007cc6cb8: 89f1                         mov      ecx, esi
0000000007cc6cba: c1e903                       shr      ecx, 3
0000000007cc6cbd: 89f0                         mov      eax, esi
0000000007cc6cbf: 83e007                       and      eax, 7
0000000007cc6cc2: ffc9                         dec      ecx
0000000007cc6cc4: 83f908                       cmp      ecx, 8
0000000007cc6cc7: 0f87e3000000                 ja       0x7cc6db0
0000000007cc6ccd: 49630c8c                     movsxd   rcx, dword ptr [r12 + rcx*4]
0000000007cc6cd1: 4c01e1                       add      rcx, r12
0000000007cc6cd4: ffe1                         jmp      rcx
0000000007cc6cd6: 83f802                       cmp      eax, 2
0000000007cc6cd9: 0f85d1000000                 jne      0x7cc6db0
0000000007cc6cdf: 41804e4c01                   or       byte ptr [r14 + 0x4c], 1
0000000007cc6ce4: 4d8b6e08                     mov      r13, qword ptr [r14 + 8]
0000000007cc6ce8: 4d85ed                       test     r13, r13
0000000007cc6ceb: 7519                         jne      0x7cc6d06
0000000007cc6ced: bf20000000                   mov      edi, 0x20
0000000007cc6cf2: e8a9709a02                   call     0xa66dda0
0000000007cc6cf7: 4989c5                       mov      r13, rax
0000000007cc6cfa: 4889c7                       mov      rdi, rax
0000000007cc6cfd: e87ed3d2ff                   call     0x79f4080
0000000007cc6d02: 4d896e08                     mov      qword ptr [r14 + 8], r13
0000000007cc6d06: c7442404aaaaaaaa             mov      dword ptr [rsp + 4], 0xaaaaaaaa
0000000007cc6d0e: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc6d12: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
0000000007cc6d16: 0f83b2000000                 jae      0x7cc6dce
0000000007cc6d1c: 0fb608                       movzx    ecx, byte ptr [rax]
0000000007cc6d1f: 84c9                         test     cl, cl
0000000007cc6d21: 0f88a7000000                 js       0x7cc6dce
0000000007cc6d27: 894c2404                     mov      dword ptr [rsp + 4], ecx
0000000007cc6d2b: 48ffc0                       inc      rax
0000000007cc6d2e: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc6d32: e9ac000000                   jmp      0x7cc6de3
0000000007cc6d37: 83f802                       cmp      eax, 2
0000000007cc6d3a: 7574                         jne      0x7cc6db0
0000000007cc6d3c: 418b564c                     mov      edx, dword ptr [r14 + 0x4c]
0000000007cc6d40: e9a5020000                   jmp      0x7cc6fea
0000000007cc6d45: 83f802                       cmp      eax, 2
0000000007cc6d48: 7566                         jne      0x7cc6db0
0000000007cc6d4a: e9dc010000                   jmp      0x7cc6f2b
0000000007cc6d4f: 85c0                         test     eax, eax
0000000007cc6d51: 755d                         jne      0x7cc6db0
0000000007cc6d53: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc6d57: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
0000000007cc6d5b: 4839c8                       cmp      rax, rcx
0000000007cc6d5e: 0f822e020000                 jb       0x7cc6f92
0000000007cc6d64: e940020000                   jmp      0x7cc6fa9
0000000007cc6d69: 83f802                       cmp      eax, 2
0000000007cc6d6c: 7542                         jne      0x7cc6db0
0000000007cc6d6e: e90f040000                   jmp      0x7cc7182
0000000007cc6d73: 83f802                       cmp      eax, 2
0000000007cc6d76: 7538                         jne      0x7cc6db0
0000000007cc6d78: e9d9000000                   jmp      0x7cc6e56
0000000007cc6d7d: 85c0                         test     eax, eax
0000000007cc6d7f: 752f                         jne      0x7cc6db0
0000000007cc6d81: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc6d85: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
0000000007cc6d89: 4839c8                       cmp      rax, rcx
0000000007cc6d8c: 0f8237030000                 jb       0x7cc70c9
0000000007cc6d92: e949030000                   jmp      0x7cc70e0
0000000007cc6d97: 83f802                       cmp      eax, 2
0000000007cc6d9a: 7514                         jne      0x7cc6db0
0000000007cc6d9c: 418b564c                     mov      edx, dword ptr [r14 + 0x4c]
0000000007cc6da0: e97c030000                   jmp      0x7cc7121
0000000007cc6da5: 83f802                       cmp      eax, 2
0000000007cc6da8: 0f84a9040000                 je       0x7cc7257
0000000007cc6dae: 6690                         nop
0000000007cc6db0: 83f804                       cmp      eax, 4
0000000007cc6db3: 0f840a050000                 je       0x7cc72c3
0000000007cc6db9: 4889df                       mov      rdi, rbx
0000000007cc6dbc: e84fb22801                   call     0x8f52010
0000000007cc6dc1: 84c0                         test     al, al
0000000007cc6dc3: 0f85b7feffff                 jne      0x7cc6c80
0000000007cc6dc9: e9f3040000                   jmp      0x7cc72c1
0000000007cc6dce: 4889df                       mov      rdi, rbx
0000000007cc6dd1: 488d742404                   lea      rsi, [rsp + 4]
0000000007cc6dd6: e835a32801                   call     0x8f51110
0000000007cc6ddb: 84c0                         test     al, al
0000000007cc6ddd: 0f84de040000                 je       0x7cc72c1
0000000007cc6de3: 8b4338                       mov      eax, dword ptr [rbx + 0x38]
0000000007cc6de6: 8d4801                       lea      ecx, [rax + 1]
0000000007cc6de9: 894b38                       mov      dword ptr [rbx + 0x38], ecx
0000000007cc6dec: 3b433c                       cmp      eax, dword ptr [rbx + 0x3c]
0000000007cc6def: 0f8dcc040000                 jge      0x7cc72c1
0000000007cc6df5: 8b742404                     mov      esi, dword ptr [rsp + 4]
0000000007cc6df9: 4889df                       mov      rdi, rbx
0000000007cc6dfc: e8cf9b2801                   call     0x8f509d0
0000000007cc6e01: 4189c7                       mov      r15d, eax
0000000007cc6e04: 4c89ef                       mov      rdi, r13
0000000007cc6e07: 4889de                       mov      rsi, rbx
0000000007cc6e0a: e8a1d4d2ff                   call     0x79f42b0
0000000007cc6e0f: 84c0                         test     al, al
0000000007cc6e11: 0f84aa040000                 je       0x7cc72c1
0000000007cc6e17: 807b2400                     cmp      byte ptr [rbx + 0x24], 0
0000000007cc6e1b: 0f84a0040000                 je       0x7cc72c1
0000000007cc6e21: 4889df                       mov      rdi, rbx
0000000007cc6e24: 4489fe                       mov      esi, r15d
0000000007cc6e27: e8149c2801                   call     0x8f50a40
0000000007cc6e2c: 8b4338                       mov      eax, dword ptr [rbx + 0x38]
0000000007cc6e2f: 85c0                         test     eax, eax
0000000007cc6e31: 7e05                         jle      0x7cc6e38
0000000007cc6e33: ffc8                         dec      eax
0000000007cc6e35: 894338                       mov      dword ptr [rbx + 0x38], eax
0000000007cc6e38: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc6e3c: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
0000000007cc6e40: 0f833afeffff                 jae      0x7cc6c80
0000000007cc6e46: 803812                       cmp      byte ptr [rax], 0x12
0000000007cc6e49: 0f8531feffff                 jne      0x7cc6c80
0000000007cc6e4f: 48ffc0                       inc      rax
0000000007cc6e52: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc6e56: 41804e4c02                   or       byte ptr [r14 + 0x4c], 2
0000000007cc6e5b: 4d8b6e10                     mov      r13, qword ptr [r14 + 0x10]
0000000007cc6e5f: 4d85ed                       test     r13, r13
0000000007cc6e62: 7519                         jne      0x7cc6e7d
0000000007cc6e64: bf20000000                   mov      edi, 0x20
0000000007cc6e69: e8326f9a02                   call     0xa66dda0
0000000007cc6e6e: 4989c5                       mov      r13, rax
0000000007cc6e71: 4889c7                       mov      rdi, rax
0000000007cc6e74: e83796edff                   call     0x7ba04b0
0000000007cc6e79: 4d896e10                     mov      qword ptr [r14 + 0x10], r13
0000000007cc6e7d: c7442404aaaaaaaa             mov      dword ptr [rsp + 4], 0xaaaaaaaa
0000000007cc6e85: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc6e89: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
0000000007cc6e8d: 7314                         jae      0x7cc6ea3
0000000007cc6e8f: 0fb608                       movzx    ecx, byte ptr [rax]
0000000007cc6e92: 84c9                         test     cl, cl
0000000007cc6e94: 780d                         js       0x7cc6ea3
0000000007cc6e96: 894c2404                     mov      dword ptr [rsp + 4], ecx
0000000007cc6e9a: 48ffc0                       inc      rax
0000000007cc6e9d: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc6ea1: eb15                         jmp      0x7cc6eb8
0000000007cc6ea3: 4889df                       mov      rdi, rbx
0000000007cc6ea6: 488d742404                   lea      rsi, [rsp + 4]
0000000007cc6eab: e860a22801                   call     0x8f51110
0000000007cc6eb0: 84c0                         test     al, al
0000000007cc6eb2: 0f8409040000                 je       0x7cc72c1
0000000007cc6eb8: 8b4338                       mov      eax, dword ptr [rbx + 0x38]
0000000007cc6ebb: 8d4801                       lea      ecx, [rax + 1]
0000000007cc6ebe: 894b38                       mov      dword ptr [rbx + 0x38], ecx
0000000007cc6ec1: 3b433c                       cmp      eax, dword ptr [rbx + 0x3c]
0000000007cc6ec4: 0f8df7030000                 jge      0x7cc72c1
0000000007cc6eca: 8b742404                     mov      esi, dword ptr [rsp + 4]
0000000007cc6ece: 4889df                       mov      rdi, rbx
0000000007cc6ed1: e8fa9a2801                   call     0x8f509d0
0000000007cc6ed6: 4189c7                       mov      r15d, eax
0000000007cc6ed9: 4c89ef                       mov      rdi, r13
0000000007cc6edc: 4889de                       mov      rsi, rbx
0000000007cc6edf: e84c98edff                   call     0x7ba0730
0000000007cc6ee4: 84c0                         test     al, al
0000000007cc6ee6: 0f84d5030000                 je       0x7cc72c1
0000000007cc6eec: 807b2400                     cmp      byte ptr [rbx + 0x24], 0
0000000007cc6ef0: 0f84cb030000                 je       0x7cc72c1
0000000007cc6ef6: 4889df                       mov      rdi, rbx
0000000007cc6ef9: 4489fe                       mov      esi, r15d
0000000007cc6efc: e83f9b2801                   call     0x8f50a40
0000000007cc6f01: 8b4338                       mov      eax, dword ptr [rbx + 0x38]
0000000007cc6f04: 85c0                         test     eax, eax
0000000007cc6f06: 7e05                         jle      0x7cc6f0d
0000000007cc6f08: ffc8                         dec      eax
0000000007cc6f0a: 894338                       mov      dword ptr [rbx + 0x38], eax
0000000007cc6f0d: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc6f11: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
0000000007cc6f15: 0f8365fdffff                 jae      0x7cc6c80
0000000007cc6f1b: 80381a                       cmp      byte ptr [rax], 0x1a
0000000007cc6f1e: 0f855cfdffff                 jne      0x7cc6c80
0000000007cc6f24: 48ffc0                       inc      rax
0000000007cc6f27: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc6f2b: 41804e4c04                   or       byte ptr [r14 + 0x4c], 4
0000000007cc6f30: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007cc6f34: 483b35c5c5e202               cmp      rsi, qword ptr [rip + 0x2e2c5c5] ; reloc 0xad176f0
0000000007cc6f3b: 751f                         jne      0x7cc6f5c
0000000007cc6f3d: bf18000000                   mov      edi, 0x18
0000000007cc6f42: e8596e9a02                   call     0xa66dda0
0000000007cc6f47: 4889c6                       mov      rsi, rax
0000000007cc6f4a: 0f57c0                       xorps    xmm0, xmm0
0000000007cc6f4d: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc6f50: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
0000000007cc6f58: 49894618                     mov      qword ptr [r14 + 0x18], rax
0000000007cc6f5c: 4889df                       mov      rdi, rbx
0000000007cc6f5f: e8dcb72801                   call     0x8f52740
0000000007cc6f64: 84c0                         test     al, al
0000000007cc6f66: 0f8455030000                 je       0x7cc72c1
0000000007cc6f6c: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc6f70: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
0000000007cc6f74: 4839c8                       cmp      rax, rcx
0000000007cc6f77: 0f8303fdffff                 jae      0x7cc6c80
0000000007cc6f7d: 803820                       cmp      byte ptr [rax], 0x20
0000000007cc6f80: 0f85fafcffff                 jne      0x7cc6c80
0000000007cc6f86: 48ffc0                       inc      rax
0000000007cc6f89: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc6f8d: 4839c8                       cmp      rax, rcx
0000000007cc6f90: 7317                         jae      0x7cc6fa9
0000000007cc6f92: 0fb610                       movzx    edx, byte ptr [rax]
0000000007cc6f95: 84d2                         test     dl, dl
0000000007cc6f97: 7810                         js       0x7cc6fa9
0000000007cc6f99: 488b742408                   mov      rsi, qword ptr [rsp + 8]
0000000007cc6f9e: 8916                         mov      dword ptr [rsi], edx
0000000007cc6fa0: 48ffc0                       inc      rax
0000000007cc6fa3: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc6fa7: eb1d                         jmp      0x7cc6fc6
0000000007cc6fa9: 4889df                       mov      rdi, rbx
0000000007cc6fac: 488b742408                   mov      rsi, qword ptr [rsp + 8]
0000000007cc6fb1: e85aa12801                   call     0x8f51110
0000000007cc6fb6: 84c0                         test     al, al
0000000007cc6fb8: 0f8403030000                 je       0x7cc72c1
0000000007cc6fbe: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc6fc2: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
0000000007cc6fc6: 418b564c                     mov      edx, dword ptr [r14 + 0x4c]
0000000007cc6fca: 83ca08                       or       edx, 8
0000000007cc6fcd: 4189564c                     mov      dword ptr [r14 + 0x4c], edx
0000000007cc6fd1: 4839c8                       cmp      rax, rcx
0000000007cc6fd4: 0f83a6fcffff                 jae      0x7cc6c80
0000000007cc6fda: 80382a                       cmp      byte ptr [rax], 0x2a
0000000007cc6fdd: 0f859dfcffff                 jne      0x7cc6c80
0000000007cc6fe3: 48ffc0                       inc      rax
0000000007cc6fe6: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc6fea: 83ca10                       or       edx, 0x10
0000000007cc6fed: 4189564c                     mov      dword ptr [r14 + 0x4c], edx
0000000007cc6ff1: 4d8b6e20                     mov      r13, qword ptr [r14 + 0x20]
0000000007cc6ff5: 4d85ed                       test     r13, r13
0000000007cc6ff8: 7519                         jne      0x7cc7013
0000000007cc6ffa: bf20000000                   mov      edi, 0x20
0000000007cc6fff: e89c6d9a02                   call     0xa66dda0
0000000007cc7004: 4989c5                       mov      r13, rax
0000000007cc7007: 4889c7                       mov      rdi, rax
0000000007cc700a: e8a194edff                   call     0x7ba04b0
0000000007cc700f: 4d896e20                     mov      qword ptr [r14 + 0x20], r13
0000000007cc7013: c7442404aaaaaaaa             mov      dword ptr [rsp + 4], 0xaaaaaaaa
0000000007cc701b: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc701f: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
0000000007cc7023: 7314                         jae      0x7cc7039
0000000007cc7025: 0fb608                       movzx    ecx, byte ptr [rax]
0000000007cc7028: 84c9                         test     cl, cl
0000000007cc702a: 780d                         js       0x7cc7039
0000000007cc702c: 894c2404                     mov      dword ptr [rsp + 4], ecx
0000000007cc7030: 48ffc0                       inc      rax
0000000007cc7033: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc7037: eb15                         jmp      0x7cc704e
0000000007cc7039: 4889df                       mov      rdi, rbx
0000000007cc703c: 488d742404                   lea      rsi, [rsp + 4]
0000000007cc7041: e8caa02801                   call     0x8f51110
0000000007cc7046: 84c0                         test     al, al
0000000007cc7048: 0f8473020000                 je       0x7cc72c1
0000000007cc704e: 8b4338                       mov      eax, dword ptr [rbx + 0x38]
0000000007cc7051: 8d4801                       lea      ecx, [rax + 1]
0000000007cc7054: 894b38                       mov      dword ptr [rbx + 0x38], ecx
0000000007cc7057: 3b433c                       cmp      eax, dword ptr [rbx + 0x3c]
0000000007cc705a: 0f8d61020000                 jge      0x7cc72c1
0000000007cc7060: 8b742404                     mov      esi, dword ptr [rsp + 4]
0000000007cc7064: 4889df                       mov      rdi, rbx
0000000007cc7067: e864992801                   call     0x8f509d0
0000000007cc706c: 4189c7                       mov      r15d, eax
0000000007cc706f: 4c89ef                       mov      rdi, r13
0000000007cc7072: 4889de                       mov      rsi, rbx
0000000007cc7075: e8b696edff                   call     0x7ba0730
0000000007cc707a: 84c0                         test     al, al
0000000007cc707c: 0f843f020000                 je       0x7cc72c1
0000000007cc7082: 807b2400                     cmp      byte ptr [rbx + 0x24], 0
0000000007cc7086: 0f8435020000                 je       0x7cc72c1
0000000007cc708c: 4889df                       mov      rdi, rbx
0000000007cc708f: 4489fe                       mov      esi, r15d
0000000007cc7092: e8a9992801                   call     0x8f50a40
0000000007cc7097: 8b4338                       mov      eax, dword ptr [rbx + 0x38]
0000000007cc709a: 85c0                         test     eax, eax
0000000007cc709c: 7e05                         jle      0x7cc70a3
0000000007cc709e: ffc8                         dec      eax
0000000007cc70a0: 894338                       mov      dword ptr [rbx + 0x38], eax
0000000007cc70a3: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc70a7: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
0000000007cc70ab: 4839c8                       cmp      rax, rcx
0000000007cc70ae: 0f83ccfbffff                 jae      0x7cc6c80
0000000007cc70b4: 803830                       cmp      byte ptr [rax], 0x30
0000000007cc70b7: 0f85c3fbffff                 jne      0x7cc6c80
0000000007cc70bd: 48ffc0                       inc      rax
0000000007cc70c0: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc70c4: 4839c8                       cmp      rax, rcx
0000000007cc70c7: 7317                         jae      0x7cc70e0
0000000007cc70c9: 0fb610                       movzx    edx, byte ptr [rax]
0000000007cc70cc: 84d2                         test     dl, dl
0000000007cc70ce: 7810                         js       0x7cc70e0
0000000007cc70d0: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
0000000007cc70d5: 8916                         mov      dword ptr [rsi], edx
0000000007cc70d7: 48ffc0                       inc      rax
0000000007cc70da: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc70de: eb1d                         jmp      0x7cc70fd
0000000007cc70e0: 4889df                       mov      rdi, rbx
0000000007cc70e3: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
0000000007cc70e8: e823a02801                   call     0x8f51110
0000000007cc70ed: 84c0                         test     al, al
0000000007cc70ef: 0f84cc010000                 je       0x7cc72c1
0000000007cc70f5: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc70f9: 488b4b10                     mov      rcx, qword ptr [rbx + 0x10]
0000000007cc70fd: 418b564c                     mov      edx, dword ptr [r14 + 0x4c]
0000000007cc7101: 83ca20                       or       edx, 0x20
0000000007cc7104: 4189564c                     mov      dword ptr [r14 + 0x4c], edx
0000000007cc7108: 4839c8                       cmp      rax, rcx
0000000007cc710b: 0f836ffbffff                 jae      0x7cc6c80
0000000007cc7111: 80383a                       cmp      byte ptr [rax], 0x3a
0000000007cc7114: 0f8566fbffff                 jne      0x7cc6c80
0000000007cc711a: 48ffc0                       inc      rax
0000000007cc711d: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc7121: 83ca40                       or       edx, 0x40
0000000007cc7124: 4189564c                     mov      dword ptr [r14 + 0x4c], edx
0000000007cc7128: 498b7630                     mov      rsi, qword ptr [r14 + 0x30]
0000000007cc712c: 483b35cdc3e202               cmp      rsi, qword ptr [rip + 0x2e2c3cd] ; reloc 0xad176f0
0000000007cc7133: 751f                         jne      0x7cc7154
0000000007cc7135: bf18000000                   mov      edi, 0x18
0000000007cc713a: e8616c9a02                   call     0xa66dda0
0000000007cc713f: 4889c6                       mov      rsi, rax
0000000007cc7142: 0f57c0                       xorps    xmm0, xmm0
0000000007cc7145: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc7148: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
0000000007cc7150: 49894630                     mov      qword ptr [r14 + 0x30], rax
0000000007cc7154: 4889df                       mov      rdi, rbx
0000000007cc7157: e8e4b52801                   call     0x8f52740
0000000007cc715c: 84c0                         test     al, al
0000000007cc715e: 0f845d010000                 je       0x7cc72c1
0000000007cc7164: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc7168: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
0000000007cc716c: 0f830efbffff                 jae      0x7cc6c80
0000000007cc7172: 803842                       cmp      byte ptr [rax], 0x42
0000000007cc7175: 0f8505fbffff                 jne      0x7cc6c80
0000000007cc717b: 48ffc0                       inc      rax
0000000007cc717e: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc7182: 41804e4c80                   or       byte ptr [r14 + 0x4c], 0x80
0000000007cc7187: 4d8b6e38                     mov      r13, qword ptr [r14 + 0x38]
0000000007cc718b: 4d85ed                       test     r13, r13
0000000007cc718e: 7519                         jne      0x7cc71a9
0000000007cc7190: bf20000000                   mov      edi, 0x20
0000000007cc7195: e8066c9a02                   call     0xa66dda0
0000000007cc719a: 4989c5                       mov      r13, rax
0000000007cc719d: 4889c7                       mov      rdi, rax
0000000007cc71a0: e80b93edff                   call     0x7ba04b0
0000000007cc71a5: 4d896e38                     mov      qword ptr [r14 + 0x38], r13
0000000007cc71a9: c7442404aaaaaaaa             mov      dword ptr [rsp + 4], 0xaaaaaaaa
0000000007cc71b1: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc71b5: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
0000000007cc71b9: 7314                         jae      0x7cc71cf
0000000007cc71bb: 0fb608                       movzx    ecx, byte ptr [rax]
0000000007cc71be: 84c9                         test     cl, cl
0000000007cc71c0: 780d                         js       0x7cc71cf
0000000007cc71c2: 894c2404                     mov      dword ptr [rsp + 4], ecx
0000000007cc71c6: 48ffc0                       inc      rax
0000000007cc71c9: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc71cd: eb15                         jmp      0x7cc71e4
0000000007cc71cf: 4889df                       mov      rdi, rbx
0000000007cc71d2: 488d742404                   lea      rsi, [rsp + 4]
0000000007cc71d7: e8349f2801                   call     0x8f51110
0000000007cc71dc: 84c0                         test     al, al
0000000007cc71de: 0f84dd000000                 je       0x7cc72c1
0000000007cc71e4: 8b4338                       mov      eax, dword ptr [rbx + 0x38]
0000000007cc71e7: 8d4801                       lea      ecx, [rax + 1]
0000000007cc71ea: 894b38                       mov      dword ptr [rbx + 0x38], ecx
0000000007cc71ed: 3b433c                       cmp      eax, dword ptr [rbx + 0x3c]
0000000007cc71f0: 0f8dcb000000                 jge      0x7cc72c1
0000000007cc71f6: 8b742404                     mov      esi, dword ptr [rsp + 4]
0000000007cc71fa: 4889df                       mov      rdi, rbx
0000000007cc71fd: e8ce972801                   call     0x8f509d0
0000000007cc7202: 4189c7                       mov      r15d, eax
0000000007cc7205: 4c89ef                       mov      rdi, r13
0000000007cc7208: 4889de                       mov      rsi, rbx
0000000007cc720b: e82095edff                   call     0x7ba0730
0000000007cc7210: 84c0                         test     al, al
0000000007cc7212: 0f84a9000000                 je       0x7cc72c1
0000000007cc7218: 807b2400                     cmp      byte ptr [rbx + 0x24], 0
0000000007cc721c: 0f849f000000                 je       0x7cc72c1
0000000007cc7222: 4889df                       mov      rdi, rbx
0000000007cc7225: 4489fe                       mov      esi, r15d
0000000007cc7228: e813982801                   call     0x8f50a40
0000000007cc722d: 8b4338                       mov      eax, dword ptr [rbx + 0x38]
0000000007cc7230: 85c0                         test     eax, eax
0000000007cc7232: 7e05                         jle      0x7cc7239
0000000007cc7234: ffc8                         dec      eax
0000000007cc7236: 894338                       mov      dword ptr [rbx + 0x38], eax
0000000007cc7239: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc723d: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
0000000007cc7241: 0f8339faffff                 jae      0x7cc6c80
0000000007cc7247: 80384a                       cmp      byte ptr [rax], 0x4a
0000000007cc724a: 0f8530faffff                 jne      0x7cc6c80
0000000007cc7250: 48ffc0                       inc      rax
0000000007cc7253: 48894308                     mov      qword ptr [rbx + 8], rax
0000000007cc7257: 41804e4d01                   or       byte ptr [r14 + 0x4d], 1
0000000007cc725c: 498b7640                     mov      rsi, qword ptr [r14 + 0x40]
0000000007cc7260: 483b3599c2e202               cmp      rsi, qword ptr [rip + 0x2e2c299] ; reloc 0xad176f0
0000000007cc7267: 751f                         jne      0x7cc7288
0000000007cc7269: bf18000000                   mov      edi, 0x18
0000000007cc726e: e82d6b9a02                   call     0xa66dda0
0000000007cc7273: 4889c6                       mov      rsi, rax
0000000007cc7276: 0f57c0                       xorps    xmm0, xmm0
0000000007cc7279: 0f1100                       movups   xmmword ptr [rax], xmm0
0000000007cc727c: 48c7401000000000             mov      qword ptr [rax + 0x10], 0
0000000007cc7284: 49894640                     mov      qword ptr [r14 + 0x40], rax
0000000007cc7288: 4889df                       mov      rdi, rbx
0000000007cc728b: e8b0b42801                   call     0x8f52740
0000000007cc7290: 84c0                         test     al, al
0000000007cc7292: 742d                         je       0x7cc72c1
0000000007cc7294: 488b4308                     mov      rax, qword ptr [rbx + 8]
0000000007cc7298: 483b4310                     cmp      rax, qword ptr [rbx + 0x10]
0000000007cc729c: 0f85def9ffff                 jne      0x7cc6c80
0000000007cc72a2: 837b2c00                     cmp      dword ptr [rbx + 0x2c], 0
0000000007cc72a6: 750c                         jne      0x7cc72b4
0000000007cc72a8: 8b4318                       mov      eax, dword ptr [rbx + 0x18]
0000000007cc72ab: 3b4328                       cmp      eax, dword ptr [rbx + 0x28]
0000000007cc72ae: 0f85ccf9ffff                 jne      0x7cc6c80
0000000007cc72b4: c7432000000000               mov      dword ptr [rbx + 0x20], 0
0000000007cc72bb: c6432401                     mov      byte ptr [rbx + 0x24], 1
0000000007cc72bf: eb02                         jmp      0x7cc72c3
0000000007cc72c1: 31ed                         xor      ebp, ebp
0000000007cc72c3: 89e8                         mov      eax, ebp
0000000007cc72c5: 4883c418                     add      rsp, 0x18
0000000007cc72c9: 5b                           pop      rbx
0000000007cc72ca: 415c                         pop      r12
0000000007cc72cc: 415d                         pop      r13
0000000007cc72ce: 415e                         pop      r14
0000000007cc72d0: 415f                         pop      r15
0000000007cc72d2: 5d                           pop      rbp
0000000007cc72d3: c3                           ret
0000000007cc72d4: eb04                         jmp      0x7cc72da
0000000007cc72d6: eb02                         jmp      0x7cc72da
0000000007cc72d8: eb00                         jmp      0x7cc72da
0000000007cc72da: 4889c3                       mov      rbx, rax
0000000007cc72dd: 4c89ef                       mov      rdi, r13
0000000007cc72e0: e85b2e84fc                   call     0x450a140
0000000007cc72e5: 4889df                       mov      rdi, rbx
0000000007cc72e8: e8335b82fc                   call     0x44ece20

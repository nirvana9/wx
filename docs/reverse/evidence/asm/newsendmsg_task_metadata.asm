000000000695bf60: 55                           push     rbp
000000000695bf61: 4157                         push     r15
000000000695bf63: 4156                         push     r14
000000000695bf65: 4155                         push     r13
000000000695bf67: 4154                         push     r12
000000000695bf69: 53                           push     rbx
000000000695bf6a: 4883ec38                     sub      rsp, 0x38
000000000695bf6e: 4d89c5                       mov      r13, r8
000000000695bf71: 4989ce                       mov      r14, rcx
000000000695bf74: 4989d7                       mov      r15, rdx
000000000695bf77: 4889f5                       mov      rbp, rsi
000000000695bf7a: 4889fb                       mov      rbx, rdi
000000000695bf7d: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
000000000695bf87: 4889442430                   mov      qword ptr [rsp + 0x30], rax
000000000695bf8c: 0f28055d493ffa               movaps   xmm0, xmmword ptr [rip - 0x5c0b6a3]
000000000695bf93: 0f290424                     movaps   xmmword ptr [rsp], xmm0
000000000695bf97: 48c74424100a020000           mov      qword ptr [rsp + 0x10], 0x20a
000000000695bfa0: bf28000000                   mov      edi, 0x28
000000000695bfa5: e8f61dd103                   call     0xa66dda0
000000000695bfaa: 4889442428                   mov      qword ptr [rsp + 0x28], rax
000000000695bfaf: 48c744241829000000           mov      qword ptr [rsp + 0x18], 0x29
000000000695bfb8: 48c744242020000000           mov      qword ptr [rsp + 0x20], 0x20
000000000695bfc1: 0f1005b66670fa               movups   xmm0, xmmword ptr [rip - 0x58f994a]
000000000695bfc8: 0f114010                     movups   xmmword ptr [rax + 0x10], xmm0
000000000695bfcc: 0f10059b6670fa               movups   xmm0, xmmword ptr [rip - 0x58f9965]
000000000695bfd3: 0f1100                       movups   xmmword ptr [rax], xmm0
000000000695bfd6: c6402000                     mov      byte ptr [rax + 0x20], 0
000000000695bfda: c644243001                   mov      byte ptr [rsp + 0x30], 1
000000000695bfdf: 410fb64608                   movzx    eax, byte ptr [r14 + 8]
000000000695bfe4: a801                         test     al, 1
000000000695bfe6: 740b                         je       0x695bff3
000000000695bfe8: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
000000000695bfec: 4885c0                       test     rax, rax
000000000695bfef: 7509                         jne      0x695bffa
000000000695bff1: eb15                         jmp      0x695c008
000000000695bff3: d1e8                         shr      eax, 1
000000000695bff5: 4885c0                       test     rax, rax
000000000695bff8: 740e                         je       0x695c008
000000000695bffa: 488d7c2418                   lea      rdi, [rsp + 0x18]
000000000695bfff: 498d7608                     lea      rsi, [r14 + 8]
000000000695c003: e8a81dbbfd                   call     0x450ddb0
000000000695c008: bff0000000                   mov      edi, 0xf0
000000000695c00d: e88e1dd103                   call     0xa66dda0
000000000695c012: 4989c4                       mov      r12, rax
000000000695c015: 4889e6                       mov      rsi, rsp
000000000695c018: 4889c7                       mov      rdi, rax
000000000695c01b: e8a0010000                   call     0x695c1c0
000000000695c020: 498b0424                     mov      rax, qword ptr [r12]
000000000695c024: 4c89e7                       mov      rdi, r12
000000000695c027: ff5020                       call     qword ptr [rax + 0x20]
000000000695c02a: 4889c7                       mov      rdi, rax
000000000695c02d: 4889ee                       mov      rsi, rbp
000000000695c030: e89b1a0901                   call     0x79edad0
000000000695c035: 498d6c2450                   lea      rbp, [r12 + 0x50]
000000000695c03a: 498b7c2470                   mov      rdi, qword ptr [r12 + 0x70]
000000000695c03f: 49c744247000000000           mov      qword ptr [r12 + 0x70], 0
000000000695c048: 4839ef                       cmp      rdi, rbp
000000000695c04b: 740d                         je       0x695c05a
000000000695c04d: 4885ff                       test     rdi, rdi
000000000695c050: 7412                         je       0x695c064
000000000695c052: 488b07                       mov      rax, qword ptr [rdi]
000000000695c055: ff5028                       call     qword ptr [rax + 0x28]
000000000695c058: eb0a                         jmp      0x695c064
000000000695c05a: 488b4500                     mov      rax, qword ptr [rbp]
000000000695c05e: 4889ef                       mov      rdi, rbp
000000000695c061: ff5020                       call     qword ptr [rax + 0x20]
000000000695c064: 498d442470                   lea      rax, [r12 + 0x70]
000000000695c069: 498b4d20                     mov      rcx, qword ptr [r13 + 0x20]
000000000695c06d: 4885c9                       test     rcx, rcx
000000000695c070: 740f                         je       0x695c081
000000000695c072: 4c39e9                       cmp      rcx, r13
000000000695c075: 7413                         je       0x695c08a
000000000695c077: 4983c520                     add      r13, 0x20
000000000695c07b: 488908                       mov      qword ptr [rax], rcx
000000000695c07e: 4c89e8                       mov      rax, r13
000000000695c081: 48c70000000000               mov      qword ptr [rax], 0
000000000695c088: eb10                         jmp      0x695c09a
000000000695c08a: 488928                       mov      qword ptr [rax], rbp
000000000695c08d: 498b4500                     mov      rax, qword ptr [r13]
000000000695c091: 4c89ef                       mov      rdi, r13
000000000695c094: 4889ee                       mov      rsi, rbp
000000000695c097: ff5018                       call     qword ptr [rax + 0x18]
000000000695c09a: 498d7c2438                   lea      rdi, [r12 + 0x38]
000000000695c09f: 4c89fe                       mov      rsi, r15
000000000695c0a2: e8091dbbfd                   call     0x450ddb0
000000000695c0a7: 410fb64620                   movzx    eax, byte ptr [r14 + 0x20]
000000000695c0ac: 4188842480000000             mov      byte ptr [r12 + 0x80], al
000000000695c0b4: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
000000000695c0b8: 4189842484000000             mov      dword ptr [r12 + 0x84], eax
000000000695c0c0: 488b03                       mov      rax, qword ptr [rbx]
000000000695c0c3: 4889df                       mov      rdi, rbx
000000000695c0c6: 4c89e6                       mov      rsi, r12
000000000695c0c9: ff5028                       call     qword ptr [rax + 0x28]
000000000695c0cc: e8df78a900                   call     0x73f39b0
000000000695c0d1: 4c89e6                       mov      rsi, r12
000000000695c0d4: 4883c618                     add      rsi, 0x18
000000000695c0d8: 4889c7                       mov      rdi, rax
000000000695c0db: e8b07aa900                   call     0x73f3b90
000000000695c0e0: 418b5c2408                   mov      ebx, dword ptr [r12 + 8]
000000000695c0e5: f644241801                   test     byte ptr [rsp + 0x18], 1
000000000695c0ea: 740a                         je       0x695c0f6
000000000695c0ec: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
000000000695c0f1: e84ae0bafd                   call     0x450a140
000000000695c0f6: 89d8                         mov      eax, ebx
000000000695c0f8: 4883c438                     add      rsp, 0x38
000000000695c0fc: 5b                           pop      rbx
000000000695c0fd: 415c                         pop      r12
000000000695c0ff: 415d                         pop      r13
000000000695c101: 415e                         pop      r14
000000000695c103: 415f                         pop      r15
000000000695c105: 5d                           pop      rbp
000000000695c106: c3                           ret
000000000695c107: 4889c7                       mov      rdi, rax
000000000695c10a: e83105b9fd                   call     0x44ec640
000000000695c10f: eb0f                         jmp      0x695c120
000000000695c111: 4889c3                       mov      rbx, rax
000000000695c114: 4c89e7                       mov      rdi, r12
000000000695c117: e824e0bafd                   call     0x450a140
000000000695c11c: eb05                         jmp      0x695c123
000000000695c11e: eb00                         jmp      0x695c120
000000000695c120: 4889c3                       mov      rbx, rax
000000000695c123: f644241801                   test     byte ptr [rsp + 0x18], 1
000000000695c128: 740a                         je       0x695c134
000000000695c12a: 488b7c2428                   mov      rdi, qword ptr [rsp + 0x28]
000000000695c12f: e80ce0bafd                   call     0x450a140
000000000695c134: 4889df                       mov      rdi, rbx
000000000695c137: e8e40cb9fd                   call     0x44ece20

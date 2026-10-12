00000000077c7700: 55                           push     rbp
00000000077c7701: 4889e5                       mov      rbp, rsp
00000000077c7704: 4157                         push     r15
00000000077c7706: 4156                         push     r14
00000000077c7708: 4155                         push     r13
00000000077c770a: 4154                         push     r12
00000000077c770c: 53                           push     rbx
00000000077c770d: 4881eca8000000               sub      rsp, 0xa8
00000000077c7714: 488955b8                     mov      qword ptr [rbp - 0x48], rdx
00000000077c7718: 488975b0                     mov      qword ptr [rbp - 0x50], rsi
00000000077c771c: 48897dc0                     mov      qword ptr [rbp - 0x40], rdi
00000000077c7720: 4889e0                       mov      rax, rsp
00000000077c7723: 488d48f0                     lea      rcx, [rax - 0x10]
00000000077c7727: 48894dd0                     mov      qword ptr [rbp - 0x30], rcx
00000000077c772b: 4889cc                       mov      rsp, rcx
00000000077c772e: 4989e4                       mov      r12, rsp
00000000077c7731: 4981c470ffffff               add      r12, -0x90
00000000077c7738: 4c89e4                       mov      rsp, r12
00000000077c773b: 4989e5                       mov      r13, rsp
00000000077c773e: 4983c5e0                     add      r13, -0x20
00000000077c7742: 4c89ec                       mov      rsp, r13
00000000077c7745: 4889e1                       mov      rcx, rsp
00000000077c7748: 4883c1b0                     add      rcx, -0x50
00000000077c774c: 48894dc8                     mov      qword ptr [rbp - 0x38], rcx
00000000077c7750: 4889cc                       mov      rsp, rcx
00000000077c7753: 4989e7                       mov      r15, rsp
00000000077c7756: 4983c7e0                     add      r15, -0x20
00000000077c775a: 4c89fc                       mov      rsp, r15
00000000077c775d: 4889e3                       mov      rbx, rsp
00000000077c7760: 4883c3e0                     add      rbx, -0x20
00000000077c7764: 4889dc                       mov      rsp, rbx
00000000077c7767: 4989e6                       mov      r14, rsp
00000000077c776a: 4983c6e0                     add      r14, -0x20
00000000077c776e: 4c89f4                       mov      rsp, r14
00000000077c7771: 488b4db8                     mov      rcx, qword ptr [rbp - 0x48]
00000000077c7775: 488948f0                     mov      qword ptr [rax - 0x10], rcx
00000000077c7779: bf02000000                   mov      edi, 2
00000000077c777e: e80df59401                   call     0x9116c90
00000000077c7783: 488d0d963f5003               lea      rcx, [rip + 0x3503f96]
00000000077c778a: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077c778d: 7c24                         jl       0x77c77b3
00000000077c778f: 488d0d8e3f5003               lea      rcx, [rip + 0x3503f8e]
00000000077c7796: 8b09                         mov      ecx, dword ptr [rcx]
00000000077c7798: 89ca                         mov      edx, ecx
00000000077c779a: f7d2                         not      edx
00000000077c779c: 0fafd1                       imul     edx, ecx
00000000077c779f: 83e201                       and      edx, 1
00000000077c77a2: 740f                         je       0x77c77b3
00000000077c77a4: bf02000000                   mov      edi, 2
00000000077c77a9: e8e2f49401                   call     0x9116c90
00000000077c77ae: e96dffffff                   jmp      0x77c7720
00000000077c77b3: 85c0                         test     eax, eax
00000000077c77b5: 0f8456010000                 je       0x77c7911
00000000077c77bb: 0f1f440000                   nop      dword ptr [rax + rax]
00000000077c77c0: 4c89ef                       mov      rdi, r13
00000000077c77c3: e808b2beff                   call     0x73b29d0
00000000077c77c8: 488d05513f5003               lea      rax, [rip + 0x3503f51]
00000000077c77cf: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c77d2: 7c1f                         jl       0x77c77f3
00000000077c77d4: 488d05493f5003               lea      rax, [rip + 0x3503f49]
00000000077c77db: 8b00                         mov      eax, dword ptr [rax]
00000000077c77dd: 89c1                         mov      ecx, eax
00000000077c77df: f7d1                         not      ecx
00000000077c77e1: 0fafc8                       imul     ecx, eax
00000000077c77e4: 83e101                       and      ecx, 1
00000000077c77e7: 740a                         je       0x77c77f3
00000000077c77e9: 4c89ef                       mov      rdi, r13
00000000077c77ec: e8dfb1beff                   call     0x73b29d0
00000000077c77f1: ebcd                         jmp      0x77c77c0
00000000077c77f3: 41f6450001                   test     byte ptr [r13], 1
00000000077c77f8: 7406                         je       0x77c7800
00000000077c77fa: 498b5510                     mov      rdx, qword ptr [r13 + 0x10]
00000000077c77fe: eb04                         jmp      0x77c7804
00000000077c7800: 498d5501                     lea      rdx, [r13 + 1]
00000000077c7804: 488d0d819580f9               lea      rcx, [rip - 0x67f6a7f]
00000000077c780b: 4c8d05a81467f9               lea      r8, [rip - 0x698eb58]
00000000077c7812: 4c89e7                       mov      rdi, r12
00000000077c7815: be02000000                   mov      esi, 2
00000000077c781a: 41b9e2020000                 mov      r9d, 0x2e2
00000000077c7820: 6a00                         push     0
00000000077c7822: 6a00                         push     0
00000000077c7824: e8779d9401                   call     0x91115a0
00000000077c7829: 4883c410                     add      rsp, 0x10
00000000077c782d: 0f57c0                       xorps    xmm0, xmm0
00000000077c7830: 0f2945a0                     movaps   xmmword ptr [rbp - 0x60], xmm0
00000000077c7834: 0f294590                     movaps   xmmword ptr [rbp - 0x70], xmm0
00000000077c7838: 0f294580                     movaps   xmmword ptr [rbp - 0x80], xmm0
00000000077c783c: 0f298570ffffff               movaps   xmmword ptr [rbp - 0x90], xmm0
00000000077c7843: 0f298560ffffff               movaps   xmmword ptr [rbp - 0xa0], xmm0
00000000077c784a: 0f298550ffffff               movaps   xmmword ptr [rbp - 0xb0], xmm0
00000000077c7851: 0f298540ffffff               movaps   xmmword ptr [rbp - 0xc0], xmm0
00000000077c7858: 0f298530ffffff               movaps   xmmword ptr [rbp - 0xd0], xmm0
00000000077c785f: 488d35541467f9               lea      rsi, [rip - 0x698ebac]
00000000077c7866: 488d9530ffffff               lea      rdx, [rbp - 0xd0]
00000000077c786d: 4c89e7                       mov      rdi, r12
00000000077c7870: e87ba09401                   call     0x91118f0
00000000077c7875: 488d05a43e5003               lea      rax, [rip + 0x3503ea4]
00000000077c787c: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c787f: 7c3d                         jl       0x77c78be
00000000077c7881: 488d059c3e5003               lea      rax, [rip + 0x3503e9c]
00000000077c7888: 8b00                         mov      eax, dword ptr [rax]
00000000077c788a: 89c1                         mov      ecx, eax
00000000077c788c: f7d1                         not      ecx
00000000077c788e: 0fafc8                       imul     ecx, eax
00000000077c7891: 83e101                       and      ecx, 1
00000000077c7894: 7561                         jne      0x77c78f7
00000000077c7896: eb26                         jmp      0x77c78be
00000000077c7898: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c789c: 4c89e7                       mov      rdi, r12
00000000077c789f: e88c9d9401                   call     0x9111630
00000000077c78a4: eb04                         jmp      0x77c78aa
00000000077c78a6: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c78aa: 41f6450001                   test     byte ptr [r13], 1
00000000077c78af: 0f843f060000                 je       0x77c7ef4
00000000077c78b5: 498b7d10                     mov      rdi, qword ptr [r13 + 0x10]
00000000077c78b9: e914050000                   jmp      0x77c7dd2
00000000077c78be: 4c89e7                       mov      rdi, r12
00000000077c78c1: e86a9d9401                   call     0x9111630
00000000077c78c6: 41f6450001                   test     byte ptr [r13], 1
00000000077c78cb: 7409                         je       0x77c78d6
00000000077c78cd: 498b7d10                     mov      rdi, qword ptr [r13 + 0x10]
00000000077c78d1: e86a28d4fc                   call     0x450a140
00000000077c78d6: 488d05433e5003               lea      rax, [rip + 0x3503e43]
00000000077c78dd: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c78e0: 7c2f                         jl       0x77c7911
00000000077c78e2: 488d053b3e5003               lea      rax, [rip + 0x3503e3b]
00000000077c78e9: 8b00                         mov      eax, dword ptr [rax]
00000000077c78eb: 89c1                         mov      ecx, eax
00000000077c78ed: f7d1                         not      ecx
00000000077c78ef: 0fafc8                       imul     ecx, eax
00000000077c78f2: 83e101                       and      ecx, 1
00000000077c78f5: 741a                         je       0x77c7911
00000000077c78f7: 4c89e7                       mov      rdi, r12
00000000077c78fa: e8319d9401                   call     0x9111630
00000000077c78ff: 41f6450001                   test     byte ptr [r13], 1
00000000077c7904: 74b8                         je       0x77c78be
00000000077c7906: 498b7d10                     mov      rdi, qword ptr [r13 + 0x10]
00000000077c790a: e83128d4fc                   call     0x450a140
00000000077c790f: ebad                         jmp      0x77c78be
00000000077c7911: 488b45b0                     mov      rax, qword ptr [rbp - 0x50]
00000000077c7915: 4c8da038010000               lea      r12, [rax + 0x138]
00000000077c791c: 4c89e7                       mov      rdi, r12
00000000077c791f: e8fc07bdff                   call     0x7398120
00000000077c7924: 488d0df53d5003               lea      rcx, [rip + 0x3503df5]
00000000077c792b: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077c792e: 0f8c97010000                 jl       0x77c7acb
00000000077c7934: 4c8d2de93d5003               lea      r13, [rip + 0x3503de9]
00000000077c793b: 0f1f440000                   nop      dword ptr [rax + rax]
00000000077c7940: 418b4d00                     mov      ecx, dword ptr [r13]
00000000077c7944: 89ca                         mov      edx, ecx
00000000077c7946: f7d2                         not      edx
00000000077c7948: 0fafd1                       imul     edx, ecx
00000000077c794b: 83e201                       and      edx, 1
00000000077c794e: 741c                         je       0x77c796c
00000000077c7950: 4c89e7                       mov      rdi, r12
00000000077c7953: e8c807bdff                   call     0x7398120
00000000077c7958: 4c89e7                       mov      rdi, r12
00000000077c795b: e8c007bdff                   call     0x7398120
00000000077c7960: 488d0db93d5003               lea      rcx, [rip + 0x3503db9]
00000000077c7967: 83390a                       cmp      dword ptr [rcx], 0xa
00000000077c796a: 7dd4                         jge      0x77c7940
00000000077c796c: 84c0                         test     al, al
00000000077c796e: 0f8466010000                 je       0x77c7ada
00000000077c7974: 488b45d0                     mov      rax, qword ptr [rbp - 0x30]
00000000077c7978: 488b10                       mov      rdx, qword ptr [rax]
00000000077c797b: 6641c7070000                 mov      word ptr [r15], 0
00000000077c7981: 488b75b0                     mov      rsi, qword ptr [rbp - 0x50]
00000000077c7985: 4c8d8650010000               lea      r8, [rsi + 0x150]
00000000077c798c: 66c7030000                   mov      word ptr [rbx], 0
00000000077c7991: 6641c7060000                 mov      word ptr [r14], 0
00000000077c7997: 4883ec08                     sub      rsp, 8
00000000077c799b: 488b7dc0                     mov      rdi, qword ptr [rbp - 0x40]
00000000077c799f: 4c89e1                       mov      rcx, r12
00000000077c79a2: 4d89f9                       mov      r9, r15
00000000077c79a5: 6a00                         push     0
00000000077c79a7: 4156                         push     r14
00000000077c79a9: 53                           push     rbx
00000000077c79aa: e851050000                   call     0x77c7f00
00000000077c79af: 4883c420                     add      rsp, 0x20
00000000077c79b3: 4c8d25663d5003               lea      r12, [rip + 0x3503d66]
00000000077c79ba: 660f1f440000                 nop      word ptr [rax + rax]
00000000077c79c0: 41f60601                     test     byte ptr [r14], 1
00000000077c79c4: 751a                         jne      0x77c79e0
00000000077c79c6: f60301                       test     byte ptr [rbx], 1
00000000077c79c9: 7523                         jne      0x77c79ee
00000000077c79cb: 41f60701                     test     byte ptr [r15], 1
00000000077c79cf: 752c                         jne      0x77c79fd
00000000077c79d1: 41833c240a                   cmp      dword ptr [r12], 0xa
00000000077c79d6: 7d39                         jge      0x77c7a11
00000000077c79d8: e973030000                   jmp      0x77c7d50
00000000077c79dd: 0f1f00                       nop      dword ptr [rax]
00000000077c79e0: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077c79e4: e85727d4fc                   call     0x450a140
00000000077c79e9: f60301                       test     byte ptr [rbx], 1
00000000077c79ec: 74dd                         je       0x77c79cb
00000000077c79ee: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c79f2: e84927d4fc                   call     0x450a140
00000000077c79f7: 41f60701                     test     byte ptr [r15], 1
00000000077c79fb: 74d4                         je       0x77c79d1
00000000077c79fd: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c7a01: e83a27d4fc                   call     0x450a140
00000000077c7a06: 41833c240a                   cmp      dword ptr [r12], 0xa
00000000077c7a0b: 0f8c3f030000                 jl       0x77c7d50
00000000077c7a11: 418b4500                     mov      eax, dword ptr [r13]
00000000077c7a15: 89c1                         mov      ecx, eax
00000000077c7a17: f7d1                         not      ecx
00000000077c7a19: 0fafc8                       imul     ecx, eax
00000000077c7a1c: 83e101                       and      ecx, 1
00000000077c7a1f: 0f842b030000                 je       0x77c7d50
00000000077c7a25: 66662e0f1f840000000000       nop      word ptr cs:[rax + rax]
00000000077c7a30: 41f60601                     test     byte ptr [r14], 1
00000000077c7a34: 754a                         jne      0x77c7a80
00000000077c7a36: f60301                       test     byte ptr [rbx], 1
00000000077c7a39: 7553                         jne      0x77c7a8e
00000000077c7a3b: 41f60701                     test     byte ptr [r15], 1
00000000077c7a3f: 755c                         jne      0x77c7a9d
00000000077c7a41: 41f60601                     test     byte ptr [r14], 1
00000000077c7a45: 7565                         jne      0x77c7aac
00000000077c7a47: f60301                       test     byte ptr [rbx], 1
00000000077c7a4a: 756e                         jne      0x77c7aba
00000000077c7a4c: 41f60701                     test     byte ptr [r15], 1
00000000077c7a50: 7409                         je       0x77c7a5b
00000000077c7a52: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c7a56: e8e526d4fc                   call     0x450a140
00000000077c7a5b: 418b4d00                     mov      ecx, dword ptr [r13]
00000000077c7a5f: 89c8                         mov      eax, ecx
00000000077c7a61: f7d0                         not      eax
00000000077c7a63: 0fafc1                       imul     eax, ecx
00000000077c7a66: 83e001                       and      eax, 1
00000000077c7a69: 41833c240a                   cmp      dword ptr [r12], 0xa
00000000077c7a6e: 0f8c4cffffff                 jl       0x77c79c0
00000000077c7a74: 85c0                         test     eax, eax
00000000077c7a76: 75b8                         jne      0x77c7a30
00000000077c7a78: e943ffffff                   jmp      0x77c79c0
00000000077c7a7d: 0f1f00                       nop      dword ptr [rax]
00000000077c7a80: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077c7a84: e8b726d4fc                   call     0x450a140
00000000077c7a89: f60301                       test     byte ptr [rbx], 1
00000000077c7a8c: 74ad                         je       0x77c7a3b
00000000077c7a8e: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c7a92: e8a926d4fc                   call     0x450a140
00000000077c7a97: 41f60701                     test     byte ptr [r15], 1
00000000077c7a9b: 74a4                         je       0x77c7a41
00000000077c7a9d: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c7aa1: e89a26d4fc                   call     0x450a140
00000000077c7aa6: 41f60601                     test     byte ptr [r14], 1
00000000077c7aaa: 749b                         je       0x77c7a47
00000000077c7aac: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077c7ab0: e88b26d4fc                   call     0x450a140
00000000077c7ab5: f60301                       test     byte ptr [rbx], 1
00000000077c7ab8: 7492                         je       0x77c7a4c
00000000077c7aba: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c7abe: e87d26d4fc                   call     0x450a140
00000000077c7ac3: 41f60701                     test     byte ptr [r15], 1
00000000077c7ac7: 7589                         jne      0x77c7a52
00000000077c7ac9: eb90                         jmp      0x77c7a5b
00000000077c7acb: 4c8d2d523c5003               lea      r13, [rip + 0x3503c52]
00000000077c7ad2: 84c0                         test     al, al
00000000077c7ad4: 0f859afeffff                 jne      0x77c7974
00000000077c7ada: 4c8b75c0                     mov      r14, qword ptr [rbp - 0x40]
00000000077c7ade: 498d4620                     lea      rax, [r14 + 0x20]
00000000077c7ae2: 488945b8                     mov      qword ptr [rbp - 0x48], rax
00000000077c7ae6: 0f57c0                       xorps    xmm0, xmm0
00000000077c7ae9: 410f114620                   movups   xmmword ptr [r14 + 0x20], xmm0
00000000077c7aee: 410f114610                   movups   xmmword ptr [r14 + 0x10], xmm0
00000000077c7af3: 410f1106                     movups   xmmword ptr [r14], xmm0
00000000077c7af7: bf70020000                   mov      edi, 0x270
00000000077c7afc: e89f62ea02                   call     0xa66dda0
00000000077c7b01: 4889c3                       mov      rbx, rax
00000000077c7b04: 0f57c0                       xorps    xmm0, xmm0
00000000077c7b07: 0f114008                     movups   xmmword ptr [rax + 8], xmm0
00000000077c7b0b: 488d05ae1b1903               lea      rax, [rip + 0x3191bae]
00000000077c7b12: 4883c010                     add      rax, 0x10
00000000077c7b16: 488903                       mov      qword ptr [rbx], rax
00000000077c7b19: 4c8d7b18                     lea      r15, [rbx + 0x18]
00000000077c7b1d: ba28020000                   mov      edx, 0x228
00000000077c7b22: 4c89ff                       mov      rdi, r15
00000000077c7b25: 31f6                         xor      esi, esi
00000000077c7b27: e8a467ea02                   call     0xa66e2d0
00000000077c7b2c: c7431801000000               mov      dword ptr [rbx + 0x18], 1
00000000077c7b33: 4889df                       mov      rdi, rbx
00000000077c7b36: 4883ef80                     sub      rdi, -0x80
00000000077c7b3a: 0f57c0                       xorps    xmm0, xmm0
00000000077c7b3d: 0f118300020000               movups   xmmword ptr [rbx + 0x200], xmm0
00000000077c7b44: 0f118309020000               movups   xmmword ptr [rbx + 0x209], xmm0
00000000077c7b4b: ba79010000                   mov      edx, 0x179
00000000077c7b50: 31f6                         xor      esi, esi
00000000077c7b52: e87967ea02                   call     0xa66e2d0
00000000077c7b57: 0f57c0                       xorps    xmm0, xmm0
00000000077c7b5a: 0f118320020000               movups   xmmword ptr [rbx + 0x220], xmm0
00000000077c7b61: 0f11832a020000               movups   xmmword ptr [rbx + 0x22a], xmm0
00000000077c7b68: 0f118340020000               movups   xmmword ptr [rbx + 0x240], xmm0
00000000077c7b6f: 0f118350020000               movups   xmmword ptr [rbx + 0x250], xmm0
00000000077c7b76: 0f118360020000               movups   xmmword ptr [rbx + 0x260], xmm0
00000000077c7b7d: 4d897e20                     mov      qword ptr [r14 + 0x20], r15
00000000077c7b81: 49895e28                     mov      qword ptr [r14 + 0x28], rbx
00000000077c7b85: 48b80cfefffffbffffff         movabs   rax, 0xfffffffbfffffe0c
00000000077c7b8f: 498906                       mov      qword ptr [r14], rax
00000000077c7b92: e8f952e5ff                   call     0x761ce90
00000000077c7b97: 4889c3                       mov      rbx, rax
00000000077c7b9a: 4889c7                       mov      rdi, rax
00000000077c7b9d: e8be65ea02                   call     0xa66e160
00000000077c7ba2: 4883f8f8                     cmp      rax, -8
00000000077c7ba6: 0f83b7010000                 jae      0x77c7d63
00000000077c7bac: 4989c7                       mov      r15, rax
00000000077c7baf: 4883f817                     cmp      rax, 0x17
00000000077c7bb3: 731c                         jae      0x77c7bd1
00000000077c7bb5: 438d043f                     lea      eax, [r15 + r15]
00000000077c7bb9: 488b4dc8                     mov      rcx, qword ptr [rbp - 0x38]
00000000077c7bbd: 8801                         mov      byte ptr [rcx], al
00000000077c7bbf: 4c8d6901                     lea      r13, [rcx + 1]
00000000077c7bc3: 4d85ff                       test     r15, r15
00000000077c7bc6: 4c8d25533b5003               lea      r12, [rip + 0x3503b53]
00000000077c7bcd: 7540                         jne      0x77c7c0f
00000000077c7bcf: eb4c                         jmp      0x77c7c1d
00000000077c7bd1: 4c89f8                       mov      rax, r15
00000000077c7bd4: 4883c807                     or       rax, 7
00000000077c7bd8: 488d4801                     lea      rcx, [rax + 1]
00000000077c7bdc: 4883f817                     cmp      rax, 0x17
00000000077c7be0: 41bc1a000000                 mov      r12d, 0x1a
00000000077c7be6: 4c0f45e1                     cmovne   r12, rcx
00000000077c7bea: 4c89e7                       mov      rdi, r12
00000000077c7bed: e8ae61ea02                   call     0xa66dda0
00000000077c7bf2: 4989c5                       mov      r13, rax
00000000077c7bf5: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c7bf9: 4c896810                     mov      qword ptr [rax + 0x10], r13
00000000077c7bfd: 4983cc01                     or       r12, 1
00000000077c7c01: 4c8920                       mov      qword ptr [rax], r12
00000000077c7c04: 4c897808                     mov      qword ptr [rax + 8], r15
00000000077c7c08: 4c8d25113b5003               lea      r12, [rip + 0x3503b11]
00000000077c7c0f: 4c89ef                       mov      rdi, r13
00000000077c7c12: 4889de                       mov      rsi, rbx
00000000077c7c15: 4c89fa                       mov      rdx, r15
00000000077c7c18: e85367ea02                   call     0xa66e370
00000000077c7c1d: 43c6443d0000                 mov      byte ptr [r13 + r15], 0
00000000077c7c23: 4c8b6dc8                     mov      r13, qword ptr [rbp - 0x38]
00000000077c7c27: 41c7451800000000             mov      dword ptr [r13 + 0x18], 0
00000000077c7c2f: 498d5d20                     lea      rbx, [r13 + 0x20]
00000000077c7c33: 0f57c0                       xorps    xmm0, xmm0
00000000077c7c36: 410f114520                   movups   xmmword ptr [r13 + 0x20], xmm0
00000000077c7c3b: 49c7453000000000             mov      qword ptr [r13 + 0x30], 0
00000000077c7c43: 4d8d7d38                     lea      r15, [r13 + 0x38]
00000000077c7c47: 4c89ff                       mov      rdi, r15
00000000077c7c4a: e8c1f8d6fc                   call     0x4537510
00000000077c7c4f: 488b45b8                     mov      rax, qword ptr [rbp - 0x48]
00000000077c7c53: 488b38                       mov      rdi, qword ptr [rax]
00000000077c7c56: 4883c710                     add      rdi, 0x10
00000000077c7c5a: 4c89ee                       mov      rsi, r13
00000000077c7c5d: 4c8d35c03a5003               lea      r14, [rip + 0x3503ac0]
00000000077c7c64: e81734ffff                   call     0x77bb080
00000000077c7c69: 0f1f8000000000               nop      dword ptr [rax]
00000000077c7c70: 41833c240a                   cmp      dword ptr [r12], 0xa
00000000077c7c75: 0f8cba000000                 jl       0x77c7d35
00000000077c7c7b: 418b06                       mov      eax, dword ptr [r14]
00000000077c7c7e: 89c1                         mov      ecx, eax
00000000077c7c80: f7d1                         not      ecx
00000000077c7c82: 0fafc8                       imul     ecx, eax
00000000077c7c85: 83e101                       and      ecx, 1
00000000077c7c88: 0f84a7000000                 je       0x77c7d35
00000000077c7c8e: 4c89ff                       mov      rdi, r15
00000000077c7c91: e8faf9d6fc                   call     0x4537690
00000000077c7c96: f60301                       test     byte ptr [rbx], 1
00000000077c7c99: 7409                         je       0x77c7ca4
00000000077c7c9b: 498b7d30                     mov      rdi, qword ptr [r13 + 0x30]
00000000077c7c9f: e89c24d4fc                   call     0x450a140
00000000077c7ca4: 41f6450001                   test     byte ptr [r13], 1
00000000077c7ca9: 7409                         je       0x77c7cb4
00000000077c7cab: 498b7d10                     mov      rdi, qword ptr [r13 + 0x10]
00000000077c7caf: e88c24d4fc                   call     0x450a140
00000000077c7cb4: 4c89ff                       mov      rdi, r15
00000000077c7cb7: e8d4f9d6fc                   call     0x4537690
00000000077c7cbc: 41f6452001                   test     byte ptr [r13 + 0x20], 1
00000000077c7cc1: 7409                         je       0x77c7ccc
00000000077c7cc3: 498b7d30                     mov      rdi, qword ptr [r13 + 0x30]
00000000077c7cc7: e87424d4fc                   call     0x450a140
00000000077c7ccc: 41f6450001                   test     byte ptr [r13], 1
00000000077c7cd1: 749d                         je       0x77c7c70
00000000077c7cd3: 498b7d10                     mov      rdi, qword ptr [r13 + 0x10]
00000000077c7cd7: e86424d4fc                   call     0x450a140
00000000077c7cdc: eb92                         jmp      0x77c7c70
00000000077c7cde: 6690                         nop
00000000077c7ce0: 498b7d30                     mov      rdi, qword ptr [r13 + 0x30]
00000000077c7ce4: e85724d4fc                   call     0x450a140
00000000077c7ce9: 41f6450001                   test     byte ptr [r13], 1
00000000077c7cee: 7459                         je       0x77c7d49
00000000077c7cf0: 498b7d10                     mov      rdi, qword ptr [r13 + 0x10]
00000000077c7cf4: e84724d4fc                   call     0x450a140
00000000077c7cf9: 41833c240a                   cmp      dword ptr [r12], 0xa
00000000077c7cfe: 7c50                         jl       0x77c7d50
00000000077c7d00: 418b06                       mov      eax, dword ptr [r14]
00000000077c7d03: 89c1                         mov      ecx, eax
00000000077c7d05: f7d1                         not      ecx
00000000077c7d07: 0fafc8                       imul     ecx, eax
00000000077c7d0a: 83e101                       and      ecx, 1
00000000077c7d0d: 7441                         je       0x77c7d50
00000000077c7d0f: 4c89ff                       mov      rdi, r15
00000000077c7d12: e879f9d6fc                   call     0x4537690
00000000077c7d17: f60301                       test     byte ptr [rbx], 1
00000000077c7d1a: 7409                         je       0x77c7d25
00000000077c7d1c: 498b7d30                     mov      rdi, qword ptr [r13 + 0x30]
00000000077c7d20: e81b24d4fc                   call     0x450a140
00000000077c7d25: 41f6450001                   test     byte ptr [r13], 1
00000000077c7d2a: 7409                         je       0x77c7d35
00000000077c7d2c: 498b7d10                     mov      rdi, qword ptr [r13 + 0x10]
00000000077c7d30: e80b24d4fc                   call     0x450a140
00000000077c7d35: 4c89ff                       mov      rdi, r15
00000000077c7d38: e853f9d6fc                   call     0x4537690
00000000077c7d3d: f60301                       test     byte ptr [rbx], 1
00000000077c7d40: 759e                         jne      0x77c7ce0
00000000077c7d42: 41f6450001                   test     byte ptr [r13], 1
00000000077c7d47: 75a7                         jne      0x77c7cf0
00000000077c7d49: 41833c240a                   cmp      dword ptr [r12], 0xa
00000000077c7d4e: 7db0                         jge      0x77c7d00
00000000077c7d50: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c7d54: 488d65d8                     lea      rsp, [rbp - 0x28]
00000000077c7d58: 5b                           pop      rbx
00000000077c7d59: 415c                         pop      r12
00000000077c7d5b: 415d                         pop      r13
00000000077c7d5d: 415e                         pop      r14
00000000077c7d5f: 415f                         pop      r15
00000000077c7d61: 5d                           pop      rbp
00000000077c7d62: c3                           ret
00000000077c7d63: 488b7dc8                     mov      rdi, qword ptr [rbp - 0x38]
00000000077c7d67: e82449d4fc                   call     0x450c690
00000000077c7d6c: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c7d70: 4c89ef                       mov      rdi, r13
00000000077c7d73: e828e90bfd                   call     0x48866a0
00000000077c7d78: e911010000                   jmp      0x77c7e8e
00000000077c7d7d: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c7d81: f60301                       test     byte ptr [rbx], 1
00000000077c7d84: 740d                         je       0x77c7d93
00000000077c7d86: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c7d8a: 488b7830                     mov      rdi, qword ptr [rax + 0x30]
00000000077c7d8e: e8ad23d4fc                   call     0x450a140
00000000077c7d93: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c7d97: f60001                       test     byte ptr [rax], 1
00000000077c7d9a: 0f84ee000000                 je       0x77c7e8e
00000000077c7da0: 488b45c8                     mov      rax, qword ptr [rbp - 0x38]
00000000077c7da4: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
00000000077c7da8: e89323d4fc                   call     0x450a140
00000000077c7dad: e9dc000000                   jmp      0x77c7e8e
00000000077c7db2: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c7db6: 488b7db8                     mov      rdi, qword ptr [rbp - 0x48]
00000000077c7dba: e8a171e8ff                   call     0x764ef60
00000000077c7dbf: 41f6460801                   test     byte ptr [r14 + 8], 1
00000000077c7dc4: 0f842a010000                 je       0x77c7ef4
00000000077c7dca: 488b45c0                     mov      rax, qword ptr [rbp - 0x40]
00000000077c7dce: 488b7818                     mov      rdi, qword ptr [rax + 0x18]
00000000077c7dd2: e86923d4fc                   call     0x450a140
00000000077c7dd7: 488b7dd0                     mov      rdi, qword ptr [rbp - 0x30]
00000000077c7ddb: e84050d2fc                   call     0x44ece20
00000000077c7de0: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c7de4: 41f60601                     test     byte ptr [r14], 1
00000000077c7de8: 7409                         je       0x77c7df3
00000000077c7dea: 498b7e10                     mov      rdi, qword ptr [r14 + 0x10]
00000000077c7dee: e84d23d4fc                   call     0x450a140
00000000077c7df3: 4c8d352a395003               lea      r14, [rip + 0x350392a]
00000000077c7dfa: 4c8d251f395003               lea      r12, [rip + 0x350391f]
00000000077c7e01: 6666666666662e0f1f840000000000 nop      word ptr cs:[rax + rax]
00000000077c7e10: f60301                       test     byte ptr [rbx], 1
00000000077c7e13: 7409                         je       0x77c7e1e
00000000077c7e15: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c7e19: e82223d4fc                   call     0x450a140
00000000077c7e1e: 41833c240a                   cmp      dword ptr [r12], 0xa
00000000077c7e23: 7c4d                         jl       0x77c7e72
00000000077c7e25: 418b06                       mov      eax, dword ptr [r14]
00000000077c7e28: 89c1                         mov      ecx, eax
00000000077c7e2a: f7d1                         not      ecx
00000000077c7e2c: 0fafc8                       imul     ecx, eax
00000000077c7e2f: 83e101                       and      ecx, 1
00000000077c7e32: 743e                         je       0x77c7e72
00000000077c7e34: f60301                       test     byte ptr [rbx], 1
00000000077c7e37: 74d7                         je       0x77c7e10
00000000077c7e39: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
00000000077c7e3d: e8fe22d4fc                   call     0x450a140
00000000077c7e42: ebcc                         jmp      0x77c7e10
00000000077c7e44: 6666662e0f1f840000000000     nop      word ptr cs:[rax + rax]
00000000077c7e50: 418b06                       mov      eax, dword ptr [r14]
00000000077c7e53: 89c1                         mov      ecx, eax
00000000077c7e55: f7d1                         not      ecx
00000000077c7e57: 0fafc8                       imul     ecx, eax
00000000077c7e5a: 83e101                       and      ecx, 1
00000000077c7e5d: 0f8491000000                 je       0x77c7ef4
00000000077c7e63: 41f60701                     test     byte ptr [r15], 1
00000000077c7e67: 7409                         je       0x77c7e72
00000000077c7e69: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c7e6d: e8ce22d4fc                   call     0x450a140
00000000077c7e72: 41f60701                     test     byte ptr [r15], 1
00000000077c7e76: 7409                         je       0x77c7e81
00000000077c7e78: 498b7f10                     mov      rdi, qword ptr [r15 + 0x10]
00000000077c7e7c: e8bf22d4fc                   call     0x450a140
00000000077c7e81: 41833c240a                   cmp      dword ptr [r12], 0xa
00000000077c7e86: 7dc8                         jge      0x77c7e50
00000000077c7e88: eb6a                         jmp      0x77c7ef4
00000000077c7e8a: 488945d0                     mov      qword ptr [rbp - 0x30], rax
00000000077c7e8e: 488b7dc0                     mov      rdi, qword ptr [rbp - 0x40]
00000000077c7e92: e8596fe8ff                   call     0x764edf0
00000000077c7e97: 488d0582385003               lea      rax, [rip + 0x3503882]
00000000077c7e9e: 83380a                       cmp      dword ptr [rax], 0xa
00000000077c7ea1: 7c51                         jl       0x77c7ef4
00000000077c7ea3: 488d057a385003               lea      rax, [rip + 0x350387a]
00000000077c7eaa: 8b00                         mov      eax, dword ptr [rax]
00000000077c7eac: 89c1                         mov      ecx, eax
00000000077c7eae: f7d1                         not      ecx
00000000077c7eb0: 0fafc8                       imul     ecx, eax
00000000077c7eb3: 83e101                       and      ecx, 1
00000000077c7eb6: 743c                         je       0x77c7ef4
00000000077c7eb8: 488d1d65385003               lea      rbx, [rip + 0x3503865]
00000000077c7ebf: 4c8d355a385003               lea      r14, [rip + 0x350385a]
00000000077c7ec6: 4c8b7dc0                     mov      r15, qword ptr [rbp - 0x40]
00000000077c7eca: 660f1f440000                 nop      word ptr [rax + rax]
00000000077c7ed0: 4c89ff                       mov      rdi, r15
00000000077c7ed3: e8186fe8ff                   call     0x764edf0
00000000077c7ed8: 4c89ff                       mov      rdi, r15
00000000077c7edb: e8106fe8ff                   call     0x764edf0
00000000077c7ee0: 41833e0a                     cmp      dword ptr [r14], 0xa
00000000077c7ee4: 7c0e                         jl       0x77c7ef4
00000000077c7ee6: 8b03                         mov      eax, dword ptr [rbx]
00000000077c7ee8: 89c1                         mov      ecx, eax
00000000077c7eea: f7d1                         not      ecx
00000000077c7eec: 0fafc8                       imul     ecx, eax
00000000077c7eef: 83e101                       and      ecx, 1
00000000077c7ef2: 75dc                         jne      0x77c7ed0
00000000077c7ef4: 488b7dd0                     mov      rdi, qword ptr [rbp - 0x30]
00000000077c7ef8: e8234fd2fc                   call     0x44ece20

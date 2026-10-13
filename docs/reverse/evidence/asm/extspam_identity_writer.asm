0000000009b10698: 8a85e0f9ffff                 mov      al, byte ptr [rbp - 0x620]
0000000009b1069e: a801                         test     al, 1
0000000009b106a0: 7512                         jne      0x9b106b4
0000000009b106a2: 24fe                         and      al, 0xfe
0000000009b106a4: 488db5e1f9ffff               lea      rsi, [rbp - 0x61f]
0000000009b106ab: 3c48                         cmp      al, 0x48
0000000009b106ad: 741a                         je       0x9b106c9
0000000009b106af: e911010000                   jmp      0x9b107c5
0000000009b106b4: 4883bde8f9ffff24             cmp      qword ptr [rbp - 0x618], 0x24
0000000009b106bc: 0f8503010000                 jne      0x9b107c5
0000000009b106c2: 488bb5f0f9ffff               mov      rsi, qword ptr [rbp - 0x610]
0000000009b106c9: ba24000000                   mov      edx, 0x24
0000000009b106ce: 4489f7                       mov      edi, r14d
0000000009b106d1: e8fae5b500                   call     0xa66ecd0
0000000009b106d6: 0fb68de0f9ffff               movzx    ecx, byte ptr [rbp - 0x620]
0000000009b106dd: f6c101                       test     cl, 1
0000000009b106e0: 0f8590000000                 jne      0x9b10776
0000000009b106e6: 48d1e9                       shr      rcx, 1
0000000009b106e9: 4839c8                       cmp      rax, rcx
0000000009b106ec: 0f85d3000000                 jne      0x9b107c5
0000000009b106f2: 488d95e1f9ffff               lea      rdx, [rbp - 0x61f]
0000000009b106f9: 4885c0                       test     rax, rax
0000000009b106fc: 0f848d000000                 je       0x9b1078f
0000000009b10702: b9ffffffff                   mov      ecx, 0xffffffff
0000000009b10707: 4883f801                     cmp      rax, 1
0000000009b1070b: 744c                         je       0x9b10759
0000000009b1070d: 4889c6                       mov      rsi, rax
0000000009b10710: 4883e6fe                     and      rsi, 0xfffffffffffffffe
0000000009b10714: 48f7de                       neg      rsi
0000000009b10717: b9ffffffff                   mov      ecx, 0xffffffff
0000000009b1071c: 4c8d05cd5705f9               lea      r8, [rip - 0x6faa833]
0000000009b10723: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000009b1072d: 0f1f00                       nop      dword ptr [rax]
0000000009b10730: 0fb63a                       movzx    edi, byte ptr [rdx]
0000000009b10733: 0fb6d9                       movzx    ebx, cl
0000000009b10736: 31fb                         xor      ebx, edi
0000000009b10738: c1e908                       shr      ecx, 8
0000000009b1073b: 41330c98                     xor      ecx, dword ptr [r8 + rbx*4]
0000000009b1073f: 0fb67a01                     movzx    edi, byte ptr [rdx + 1]
0000000009b10743: 4883c202                     add      rdx, 2
0000000009b10747: 0fb6d9                       movzx    ebx, cl
0000000009b1074a: 31fb                         xor      ebx, edi
0000000009b1074c: c1e908                       shr      ecx, 8
0000000009b1074f: 41330c98                     xor      ecx, dword ptr [r8 + rbx*4]
0000000009b10753: 4883c602                     add      rsi, 2
0000000009b10757: 75d7                         jne      0x9b10730
0000000009b10759: a801                         test     al, 1
0000000009b1075b: 7415                         je       0x9b10772
0000000009b1075d: 0fb6c1                       movzx    eax, cl
0000000009b10760: 0fb612                       movzx    edx, byte ptr [rdx]
0000000009b10763: 31c2                         xor      edx, eax
0000000009b10765: c1e908                       shr      ecx, 8
0000000009b10768: 488d05815705f9               lea      rax, [rip - 0x6faa87f]
0000000009b1076f: 330c90                       xor      ecx, dword ptr [rax + rdx*4]
0000000009b10772: f7d1                         not      ecx
0000000009b10774: eb1b                         jmp      0x9b10791
0000000009b10776: 483b85e8f9ffff               cmp      rax, qword ptr [rbp - 0x618]
0000000009b1077d: 7546                         jne      0x9b107c5
0000000009b1077f: 488b95f0f9ffff               mov      rdx, qword ptr [rbp - 0x610]
0000000009b10786: 4885c0                       test     rax, rax
0000000009b10789: 0f8573ffffff                 jne      0x9b10702
0000000009b1078f: 31c9                         xor      ecx, ecx
0000000009b10791: 898dc0efffff                 mov      dword ptr [rbp - 0x1040], ecx
0000000009b10797: ba04000000                   mov      edx, 4
0000000009b1079c: 4489f7                       mov      edi, r14d
0000000009b1079f: 488db5c0efffff               lea      rsi, [rbp - 0x1040]
0000000009b107a6: e825e5b500                   call     0xa66ecd0
0000000009b107ab: 4883f804                     cmp      rax, 4
0000000009b107af: 0f94c3                       sete     bl
0000000009b107b2: 4489f7                       mov      edi, r14d
0000000009b107b5: e836f7aafa                   call     0x45bfef0

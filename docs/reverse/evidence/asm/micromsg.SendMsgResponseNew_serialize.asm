00000000079eec60: 4157                         push     r15
00000000079eec62: 4156                         push     r14
00000000079eec64: 53                           push     rbx
00000000079eec65: 4889f3                       mov      rbx, rsi
00000000079eec68: 4989fe                       mov      r14, rdi
00000000079eec6b: 8b4730                       mov      eax, dword ptr [rdi + 0x30]
00000000079eec6e: a801                         test     al, 1
00000000079eec70: 750d                         jne      0x79eec7f
00000000079eec72: a802                         test     al, 2
00000000079eec74: 7535                         jne      0x79eecab
00000000079eec76: 41837e1800                   cmp      dword ptr [r14 + 0x18], 0
00000000079eec7b: 7f46                         jg       0x79eecc3
00000000079eec7d: eb72                         jmp      0x79eecf1
00000000079eec7f: 498b7608                     mov      rsi, qword ptr [r14 + 8]
00000000079eec83: 4885f6                       test     rsi, rsi
00000000079eec86: 750e                         jne      0x79eec96
00000000079eec88: 488d0559b43003               lea      rax, [rip + 0x330b459]
00000000079eec8f: 488b00                       mov      rax, qword ptr [rax]
00000000079eec92: 488b7008                     mov      rsi, qword ptr [rax + 8]
00000000079eec96: bf01000000                   mov      edi, 1
00000000079eec9b: 4889da                       mov      rdx, rbx
00000000079eec9e: e84d3a5601                   call     0x8f526f0
00000000079eeca3: 418b4630                     mov      eax, dword ptr [r14 + 0x30]
00000000079eeca7: a802                         test     al, 2
00000000079eeca9: 74cb                         je       0x79eec76
00000000079eecab: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
00000000079eecaf: bf02000000                   mov      edi, 2
00000000079eecb4: 4889da                       mov      rdx, rbx
00000000079eecb7: e8c4365601                   call     0x8f52380
00000000079eecbc: 41837e1800                   cmp      dword ptr [r14 + 0x18], 0
00000000079eecc1: 7e2e                         jle      0x79eecf1
00000000079eecc3: 4531ff                       xor      r15d, r15d
00000000079eecc6: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
00000000079eecd0: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
00000000079eecd4: 4a8b34f8                     mov      rsi, qword ptr [rax + r15*8]
00000000079eecd8: bf03000000                   mov      edi, 3
00000000079eecdd: 4889da                       mov      rdx, rbx
00000000079eece0: e80b3a5601                   call     0x8f526f0
00000000079eece5: 49ffc7                       inc      r15
00000000079eece8: 49634618                     movsxd   rax, dword ptr [r14 + 0x18]
00000000079eecec: 4939c7                       cmp      r15, rax
00000000079eecef: 7cdf                         jl       0x79eecd0
00000000079eecf1: 5b                           pop      rbx
00000000079eecf2: 415e                         pop      r14
00000000079eecf4: 415f                         pop      r15
00000000079eecf6: c3                           ret

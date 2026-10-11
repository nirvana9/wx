0000000007d16b80: 4157                         push     r15
0000000007d16b82: 4156                         push     r14
0000000007d16b84: 53                           push     rbx
0000000007d16b85: 4889f3                       mov      rbx, rsi
0000000007d16b88: 4989fe                       mov      r14, rdi
0000000007d16b8b: 8b4730                       mov      eax, dword ptr [rdi + 0x30]
0000000007d16b8e: a801                         test     al, 1
0000000007d16b90: 750d                         jne      0x7d16b9f
0000000007d16b92: a802                         test     al, 2
0000000007d16b94: 7535                         jne      0x7d16bcb
0000000007d16b96: 41837e1800                   cmp      dword ptr [r14 + 0x18], 0
0000000007d16b9b: 7f46                         jg       0x7d16be3
0000000007d16b9d: eb72                         jmp      0x7d16c11
0000000007d16b9f: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007d16ba3: 4885f6                       test     rsi, rsi
0000000007d16ba6: 750e                         jne      0x7d16bb6
0000000007d16ba8: 488d05d953fe02               lea      rax, [rip + 0x2fe53d9]
0000000007d16baf: 488b00                       mov      rax, qword ptr [rax]
0000000007d16bb2: 488b7008                     mov      rsi, qword ptr [rax + 8]
0000000007d16bb6: bf01000000                   mov      edi, 1
0000000007d16bbb: 4889da                       mov      rdx, rbx
0000000007d16bbe: e82dbb2301                   call     0x8f526f0
0000000007d16bc3: 418b4630                     mov      eax, dword ptr [r14 + 0x30]
0000000007d16bc7: a802                         test     al, 2
0000000007d16bc9: 74cb                         je       0x7d16b96
0000000007d16bcb: 418b7628                     mov      esi, dword ptr [r14 + 0x28]
0000000007d16bcf: bf02000000                   mov      edi, 2
0000000007d16bd4: 4889da                       mov      rdx, rbx
0000000007d16bd7: e834b72301                   call     0x8f52310
0000000007d16bdc: 41837e1800                   cmp      dword ptr [r14 + 0x18], 0
0000000007d16be1: 7e2e                         jle      0x7d16c11
0000000007d16be3: 4531ff                       xor      r15d, r15d
0000000007d16be6: 662e0f1f840000000000         nop      word ptr cs:[rax + rax]
0000000007d16bf0: 498b4610                     mov      rax, qword ptr [r14 + 0x10]
0000000007d16bf4: 4a8b34f8                     mov      rsi, qword ptr [rax + r15*8]
0000000007d16bf8: bf03000000                   mov      edi, 3
0000000007d16bfd: 4889da                       mov      rdx, rbx
0000000007d16c00: e8ebba2301                   call     0x8f526f0
0000000007d16c05: 49ffc7                       inc      r15
0000000007d16c08: 49634618                     movsxd   rax, dword ptr [r14 + 0x18]
0000000007d16c0c: 4939c7                       cmp      r15, rax
0000000007d16c0f: 7cdf                         jl       0x7d16bf0
0000000007d16c11: 5b                           pop      rbx
0000000007d16c12: 415e                         pop      r14
0000000007d16c14: 415f                         pop      r15
0000000007d16c16: c3                           ret

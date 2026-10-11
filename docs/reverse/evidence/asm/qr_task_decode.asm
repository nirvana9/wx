00000000077ed090: 4157                         push     r15
00000000077ed092: 4156                         push     r14
00000000077ed094: 53                           push     rbx
00000000077ed095: 4889f3                       mov      rbx, rsi
00000000077ed098: 4989fe                       mov      r14, rdi
00000000077ed09b: 4981c6e8000000               add      r14, 0xe8
00000000077ed0a2: 4889f7                       mov      rdi, rsi
00000000077ed0a5: 31f6                         xor      esi, esi
00000000077ed0a7: e8a48b1d00                   call     0x79c5c50
00000000077ed0ac: 4989c7                       mov      r15, rax
00000000077ed0af: 4889df                       mov      rdi, rbx
00000000077ed0b2: e8c98b1d00                   call     0x79c5c80
00000000077ed0b7: 4c89f7                       mov      rdi, r14
00000000077ed0ba: 4c89fe                       mov      rsi, r15
00000000077ed0bd: 89c2                         mov      edx, eax
00000000077ed0bf: e81c307601                   call     0x8f500e0
00000000077ed0c4: b001                         mov      al, 1
00000000077ed0c6: 5b                           pop      rbx
00000000077ed0c7: 415e                         pop      r14
00000000077ed0c9: 415f                         pop      r15
00000000077ed0cb: c3                           ret

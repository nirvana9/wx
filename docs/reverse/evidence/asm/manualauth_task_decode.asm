00000000077f7090: 4157                         push     r15
00000000077f7092: 4156                         push     r14
00000000077f7094: 53                           push     rbx
00000000077f7095: 4889f3                       mov      rbx, rsi
00000000077f7098: 4989fe                       mov      r14, rdi
00000000077f709b: 4981c6a8000000               add      r14, 0xa8
00000000077f70a2: 4889f7                       mov      rdi, rsi
00000000077f70a5: 31f6                         xor      esi, esi
00000000077f70a7: e8a4eb1c00                   call     0x79c5c50
00000000077f70ac: 4989c7                       mov      r15, rax
00000000077f70af: 4889df                       mov      rdi, rbx
00000000077f70b2: e8c9eb1c00                   call     0x79c5c80
00000000077f70b7: 4c89f7                       mov      rdi, r14
00000000077f70ba: 4c89fe                       mov      rsi, r15
00000000077f70bd: 89c2                         mov      edx, eax
00000000077f70bf: e81c907501                   call     0x8f500e0
00000000077f70c4: b001                         mov      al, 1
00000000077f70c6: 5b                           pop      rbx
00000000077f70c7: 415e                         pop      r14
00000000077f70c9: 415f                         pop      r15
00000000077f70cb: c3                           ret

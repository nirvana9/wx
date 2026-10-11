00000000077f6e60: 4157                         push     r15
00000000077f6e62: 4156                         push     r14
00000000077f6e64: 4154                         push     r12
00000000077f6e66: 53                           push     rbx
00000000077f6e67: 50                           push     rax
00000000077f6e68: 4989f6                       mov      r14, rsi
00000000077f6e6b: 4889fb                       mov      rbx, rdi
00000000077f6e6e: 48c7470800000000             mov      qword ptr [rdi + 8], 0
00000000077f6e76: c7471000000000               mov      dword ptr [rdi + 0x10], 0
00000000077f6e7d: 0f57c0                       xorps    xmm0, xmm0
00000000077f6e80: 0f114718                     movups   xmmword ptr [rdi + 0x18], xmm0
00000000077f6e84: 0f114722                     movups   xmmword ptr [rdi + 0x22], xmm0
00000000077f6e88: 66c747320101                 mov      word ptr [rdi + 0x32], 0x101
00000000077f6e8e: 0f114738                     movups   xmmword ptr [rdi + 0x38], xmm0
00000000077f6e92: 48c7474800000000             mov      qword ptr [rdi + 0x48], 0
00000000077f6e9a: 48c7477000000000             mov      qword ptr [rdi + 0x70], 0
00000000077f6ea2: c6878000000000               mov      byte ptr [rdi + 0x80], 0
00000000077f6ea9: c7878400000000000000         mov      dword ptr [rdi + 0x84], 0
00000000077f6eb3: 488d05f65c1703               lea      rax, [rip + 0x3175cf6]
00000000077f6eba: 4883c010                     add      rax, 0x10
00000000077f6ebe: 488907                       mov      qword ptr [rdi], rax
00000000077f6ec1: 4c8dbf88000000               lea      r15, [rdi + 0x88]
00000000077f6ec8: 4c89ff                       mov      rdi, r15
00000000077f6ecb: e8e0464e00                   call     0x7cdb5b0
00000000077f6ed0: 4c8da3a8000000               lea      r12, [rbx + 0xa8]
00000000077f6ed7: 4c89e7                       mov      rdi, r12
00000000077f6eda: e8810e4f00                   call     0x7ce7d60
00000000077f6edf: 488d7b18                     lea      rdi, [rbx + 0x18]
00000000077f6ee3: 418b4610                     mov      eax, dword ptr [r14 + 0x10]
00000000077f6ee7: 89430c                       mov      dword ptr [rbx + 0xc], eax
00000000077f6eea: 498d7618                     lea      rsi, [r14 + 0x18]
00000000077f6eee: e8bd6ed1fc                   call     0x450ddb0
00000000077f6ef3: 41837e0c00                   cmp      dword ptr [r14 + 0xc], 0
00000000077f6ef8: 0f954331                     setne    byte ptr [rbx + 0x31]
00000000077f6efc: 410fb64630                   movzx    eax, byte ptr [r14 + 0x30]
00000000077f6f01: 884333                       mov      byte ptr [rbx + 0x33], al
00000000077f6f04: c7431001000000               mov      dword ptr [rbx + 0x10], 1
00000000077f6f0b: 4883c408                     add      rsp, 8
00000000077f6f0f: 5b                           pop      rbx
00000000077f6f10: 415c                         pop      r12
00000000077f6f12: 415e                         pop      r14
00000000077f6f14: 415f                         pop      r15
00000000077f6f16: c3                           ret
00000000077f6f17: 4989c6                       mov      r14, rax
00000000077f6f1a: 4c89e7                       mov      rdi, r12
00000000077f6f1d: e8ae104f00                   call     0x7ce7fd0
00000000077f6f22: eb03                         jmp      0x77f6f27
00000000077f6f24: 4989c6                       mov      r14, rax
00000000077f6f27: 4c89ff                       mov      rdi, r15
00000000077f6f2a: e831484e00                   call     0x7cdb760
00000000077f6f2f: eb03                         jmp      0x77f6f34
00000000077f6f31: 4989c6                       mov      r14, rax
00000000077f6f34: 4889df                       mov      rdi, rbx
00000000077f6f37: e8c4649dfe                   call     0x61cd400
00000000077f6f3c: 4c89f7                       mov      rdi, r14
00000000077f6f3f: e8dc5ecffc                   call     0x44ece20

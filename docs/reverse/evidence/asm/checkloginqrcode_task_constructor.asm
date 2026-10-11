00000000077f0b90: 4157                         push     r15
00000000077f0b92: 4156                         push     r14
00000000077f0b94: 4154                         push     r12
00000000077f0b96: 53                           push     rbx
00000000077f0b97: 50                           push     rax
00000000077f0b98: 4989f6                       mov      r14, rsi
00000000077f0b9b: 4889fb                       mov      rbx, rdi
00000000077f0b9e: 48c7470800000000             mov      qword ptr [rdi + 8], 0
00000000077f0ba6: c7471000000000               mov      dword ptr [rdi + 0x10], 0
00000000077f0bad: 0f57c0                       xorps    xmm0, xmm0
00000000077f0bb0: 0f114718                     movups   xmmword ptr [rdi + 0x18], xmm0
00000000077f0bb4: 0f114722                     movups   xmmword ptr [rdi + 0x22], xmm0
00000000077f0bb8: 66c747320101                 mov      word ptr [rdi + 0x32], 0x101
00000000077f0bbe: 0f114738                     movups   xmmword ptr [rdi + 0x38], xmm0
00000000077f0bc2: 48c7474800000000             mov      qword ptr [rdi + 0x48], 0
00000000077f0bca: 48c7477000000000             mov      qword ptr [rdi + 0x70], 0
00000000077f0bd2: c6878000000000               mov      byte ptr [rdi + 0x80], 0
00000000077f0bd9: c7878400000000000000         mov      dword ptr [rdi + 0x84], 0
00000000077f0be3: 488d05f6b61703               lea      rax, [rip + 0x317b6f6]
00000000077f0bea: 4883c010                     add      rax, 0x10
00000000077f0bee: 488907                       mov      qword ptr [rdi], rax
00000000077f0bf1: 4c8dbf88000000               lea      r15, [rdi + 0x88]
00000000077f0bf8: 4c89ff                       mov      rdi, r15
00000000077f0bfb: e8d06c4d00                   call     0x7cc78d0
00000000077f0c00: 4c8da3b8000000               lea      r12, [rbx + 0xb8]
00000000077f0c07: 4c89e7                       mov      rdi, r12
00000000077f0c0a: e881774d00                   call     0x7cc8390
00000000077f0c0f: 488d7b18                     lea      rdi, [rbx + 0x18]
00000000077f0c13: 418b4610                     mov      eax, dword ptr [r14 + 0x10]
00000000077f0c17: 89430c                       mov      dword ptr [rbx + 0xc], eax
00000000077f0c1a: 498d7618                     lea      rsi, [r14 + 0x18]
00000000077f0c1e: e88dd1d1fc                   call     0x450ddb0
00000000077f0c23: 41837e0c00                   cmp      dword ptr [r14 + 0xc], 0
00000000077f0c28: 0f954331                     setne    byte ptr [rbx + 0x31]
00000000077f0c2c: 410fb64630                   movzx    eax, byte ptr [r14 + 0x30]
00000000077f0c31: 884333                       mov      byte ptr [rbx + 0x33], al
00000000077f0c34: c7431001000000               mov      dword ptr [rbx + 0x10], 1
00000000077f0c3b: 4883c408                     add      rsp, 8
00000000077f0c3f: 5b                           pop      rbx
00000000077f0c40: 415c                         pop      r12
00000000077f0c42: 415e                         pop      r14
00000000077f0c44: 415f                         pop      r15
00000000077f0c46: c3                           ret
00000000077f0c47: 4989c6                       mov      r14, rax
00000000077f0c4a: 4c89e7                       mov      rdi, r12
00000000077f0c4d: e89e784d00                   call     0x7cc84f0
00000000077f0c52: eb03                         jmp      0x77f0c57
00000000077f0c54: 4989c6                       mov      r14, rax
00000000077f0c57: 4c89ff                       mov      rdi, r15
00000000077f0c5a: e8a16e4d00                   call     0x7cc7b00
00000000077f0c5f: eb03                         jmp      0x77f0c64
00000000077f0c61: 4989c6                       mov      r14, rax
00000000077f0c64: 4889df                       mov      rdi, rbx
00000000077f0c67: e894c79dfe                   call     0x61cd400
00000000077f0c6c: 4c89f7                       mov      rdi, r14
00000000077f0c6f: e8acc1cffc                   call     0x44ece20

00000000077fd0f0: 4157                         push     r15
00000000077fd0f2: 4156                         push     r14
00000000077fd0f4: 4154                         push     r12
00000000077fd0f6: 53                           push     rbx
00000000077fd0f7: 50                           push     rax
00000000077fd0f8: 4989f6                       mov      r14, rsi
00000000077fd0fb: 4889fb                       mov      rbx, rdi
00000000077fd0fe: 48c7470800000000             mov      qword ptr [rdi + 8], 0
00000000077fd106: c7471000000000               mov      dword ptr [rdi + 0x10], 0
00000000077fd10d: 0f57c0                       xorps    xmm0, xmm0
00000000077fd110: 0f114718                     movups   xmmword ptr [rdi + 0x18], xmm0
00000000077fd114: 0f114722                     movups   xmmword ptr [rdi + 0x22], xmm0
00000000077fd118: 66c747320101                 mov      word ptr [rdi + 0x32], 0x101
00000000077fd11e: 0f114738                     movups   xmmword ptr [rdi + 0x38], xmm0
00000000077fd122: 48c7474800000000             mov      qword ptr [rdi + 0x48], 0
00000000077fd12a: 48c7477000000000             mov      qword ptr [rdi + 0x70], 0
00000000077fd132: c6878000000000               mov      byte ptr [rdi + 0x80], 0
00000000077fd139: c7878400000000000000         mov      dword ptr [rdi + 0x84], 0
00000000077fd143: 488d055e021703               lea      rax, [rip + 0x317025e]
00000000077fd14a: 4883c010                     add      rax, 0x10
00000000077fd14e: 488907                       mov      qword ptr [rdi], rax
00000000077fd151: 4c8dbf88000000               lea      r15, [rdi + 0x88]
00000000077fd158: 4c89ff                       mov      rdi, r15
00000000077fd15b: e890204e00                   call     0x7cdf1f0
00000000077fd160: 4c8da3a8000000               lea      r12, [rbx + 0xa8]
00000000077fd167: 4c89e7                       mov      rdi, r12
00000000077fd16a: e8f1ab4e00                   call     0x7ce7d60
00000000077fd16f: 488d7b18                     lea      rdi, [rbx + 0x18]
00000000077fd173: 418b4610                     mov      eax, dword ptr [r14 + 0x10]
00000000077fd177: 89430c                       mov      dword ptr [rbx + 0xc], eax
00000000077fd17a: 498d7618                     lea      rsi, [r14 + 0x18]
00000000077fd17e: e82d0cd1fc                   call     0x450ddb0
00000000077fd183: 41837e0c00                   cmp      dword ptr [r14 + 0xc], 0
00000000077fd188: 0f954331                     setne    byte ptr [rbx + 0x31]
00000000077fd18c: 410fb64630                   movzx    eax, byte ptr [r14 + 0x30]
00000000077fd191: 884333                       mov      byte ptr [rbx + 0x33], al
00000000077fd194: c7431001000000               mov      dword ptr [rbx + 0x10], 1
00000000077fd19b: 4883c408                     add      rsp, 8
00000000077fd19f: 5b                           pop      rbx
00000000077fd1a0: 415c                         pop      r12
00000000077fd1a2: 415e                         pop      r14
00000000077fd1a4: 415f                         pop      r15
00000000077fd1a6: c3                           ret
00000000077fd1a7: 4989c6                       mov      r14, rax
00000000077fd1aa: 4c89e7                       mov      rdi, r12
00000000077fd1ad: e81eae4e00                   call     0x7ce7fd0
00000000077fd1b2: eb03                         jmp      0x77fd1b7
00000000077fd1b4: 4989c6                       mov      r14, rax
00000000077fd1b7: 4c89ff                       mov      rdi, r15
00000000077fd1ba: e8e1214e00                   call     0x7cdf3a0
00000000077fd1bf: eb03                         jmp      0x77fd1c4
00000000077fd1c1: 4989c6                       mov      r14, rax
00000000077fd1c4: 4889df                       mov      rdi, rbx
00000000077fd1c7: e834029dfe                   call     0x61cd400
00000000077fd1cc: 4c89f7                       mov      rdi, r14
00000000077fd1cf: e84cfccefc                   call     0x44ece20

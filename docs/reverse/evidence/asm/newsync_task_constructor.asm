00000000061e25b0: 4157                         push     r15
00000000061e25b2: 4156                         push     r14
00000000061e25b4: 4154                         push     r12
00000000061e25b6: 53                           push     rbx
00000000061e25b7: 50                           push     rax
00000000061e25b8: 4989f6                       mov      r14, rsi
00000000061e25bb: 4889fb                       mov      rbx, rdi
00000000061e25be: 48c7470800000000             mov      qword ptr [rdi + 8], 0
00000000061e25c6: c7471000000000               mov      dword ptr [rdi + 0x10], 0
00000000061e25cd: 0f57c0                       xorps    xmm0, xmm0
00000000061e25d0: 0f114718                     movups   xmmword ptr [rdi + 0x18], xmm0
00000000061e25d4: 0f114722                     movups   xmmword ptr [rdi + 0x22], xmm0
00000000061e25d8: 66c747320101                 mov      word ptr [rdi + 0x32], 0x101
00000000061e25de: 0f114738                     movups   xmmword ptr [rdi + 0x38], xmm0
00000000061e25e2: 48c7474800000000             mov      qword ptr [rdi + 0x48], 0
00000000061e25ea: 48c7477000000000             mov      qword ptr [rdi + 0x70], 0
00000000061e25f2: c6878000000000               mov      byte ptr [rdi + 0x80], 0
00000000061e25f9: c7878400000000000000         mov      dword ptr [rdi + 0x84], 0
00000000061e2603: 488d05de666c04               lea      rax, [rip + 0x46c66de]
00000000061e260a: 4883c010                     add      rax, 0x10
00000000061e260e: 488907                       mov      qword ptr [rdi], rax
00000000061e2611: 4c8dbf88000000               lea      r15, [rdi + 0x88]
00000000061e2618: 4c89ff                       mov      rdi, r15
00000000061e261b: e8b09cc001                   call     0x7dec2d0
00000000061e2620: 4c8da3d8000000               lea      r12, [rbx + 0xd8]
00000000061e2627: 4c89e7                       mov      rdi, r12
00000000061e262a: e8f1acc001                   call     0x7ded320
00000000061e262f: 488d7b18                     lea      rdi, [rbx + 0x18]
00000000061e2633: 418b4610                     mov      eax, dword ptr [r14 + 0x10]
00000000061e2637: 89430c                       mov      dword ptr [rbx + 0xc], eax
00000000061e263a: 498d7618                     lea      rsi, [r14 + 0x18]
00000000061e263e: e86db732fe                   call     0x450ddb0
00000000061e2643: 41837e0c00                   cmp      dword ptr [r14 + 0xc], 0
00000000061e2648: 0f954331                     setne    byte ptr [rbx + 0x31]
00000000061e264c: 410fb64630                   movzx    eax, byte ptr [r14 + 0x30]
00000000061e2651: 884333                       mov      byte ptr [rbx + 0x33], al
00000000061e2654: c7431001000000               mov      dword ptr [rbx + 0x10], 1
00000000061e265b: 4883c408                     add      rsp, 8
00000000061e265f: 5b                           pop      rbx
00000000061e2660: 415c                         pop      r12
00000000061e2662: 415e                         pop      r14
00000000061e2664: 415f                         pop      r15
00000000061e2666: c3                           ret
00000000061e2667: 4989c6                       mov      r14, rax
00000000061e266a: 4c89e7                       mov      rdi, r12
00000000061e266d: e86eaec001                   call     0x7ded4e0
00000000061e2672: eb03                         jmp      0x61e2677
00000000061e2674: 4989c6                       mov      r14, rax
00000000061e2677: 4c89ff                       mov      rdi, r15
00000000061e267a: e8619fc001                   call     0x7dec5e0
00000000061e267f: eb03                         jmp      0x61e2684
00000000061e2681: 4989c6                       mov      r14, rax
00000000061e2684: 4889df                       mov      rdi, rbx
00000000061e2687: e874adfeff                   call     0x61cd400
00000000061e268c: 4c89f7                       mov      rdi, r14
00000000061e268f: e88ca730fe                   call     0x44ece20

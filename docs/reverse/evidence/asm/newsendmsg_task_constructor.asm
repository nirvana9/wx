000000000695c1c0: 4157                         push     r15
000000000695c1c2: 4156                         push     r14
000000000695c1c4: 4154                         push     r12
000000000695c1c6: 53                           push     rbx
000000000695c1c7: 50                           push     rax
000000000695c1c8: 4989f6                       mov      r14, rsi
000000000695c1cb: 4889fb                       mov      rbx, rdi
000000000695c1ce: 48c7470800000000             mov      qword ptr [rdi + 8], 0
000000000695c1d6: c7471000000000               mov      dword ptr [rdi + 0x10], 0
000000000695c1dd: 0f57c0                       xorps    xmm0, xmm0
000000000695c1e0: 0f114718                     movups   xmmword ptr [rdi + 0x18], xmm0
000000000695c1e4: 0f114722                     movups   xmmword ptr [rdi + 0x22], xmm0
000000000695c1e8: 66c747320101                 mov      word ptr [rdi + 0x32], 0x101
000000000695c1ee: 0f114738                     movups   xmmword ptr [rdi + 0x38], xmm0
000000000695c1f2: 48c7474800000000             mov      qword ptr [rdi + 0x48], 0
000000000695c1fa: 48c7477000000000             mov      qword ptr [rdi + 0x70], 0
000000000695c202: c6878000000000               mov      byte ptr [rdi + 0x80], 0
000000000695c209: c7878400000000000000         mov      dword ptr [rdi + 0x84], 0
000000000695c213: 488d05f636f803               lea      rax, [rip + 0x3f836f6]
000000000695c21a: 4883c010                     add      rax, 0x10
000000000695c21e: 488907                       mov      qword ptr [rdi], rax
000000000695c221: 4c8dbf88000000               lea      r15, [rdi + 0x88]
000000000695c228: 4c89ff                       mov      rdi, r15
000000000695c22b: e8a0120901                   call     0x79ed4d0
000000000695c230: 4c8da3b8000000               lea      r12, [rbx + 0xb8]
000000000695c237: 4c89e7                       mov      rdi, r12
000000000695c23a: e851240901                   call     0x79ee690
000000000695c23f: 488d7b18                     lea      rdi, [rbx + 0x18]
000000000695c243: 418b4610                     mov      eax, dword ptr [r14 + 0x10]
000000000695c247: 89430c                       mov      dword ptr [rbx + 0xc], eax
000000000695c24a: 498d7618                     lea      rsi, [r14 + 0x18]
000000000695c24e: e85d1bbbfd                   call     0x450ddb0
000000000695c253: 41837e0c00                   cmp      dword ptr [r14 + 0xc], 0
000000000695c258: 0f954331                     setne    byte ptr [rbx + 0x31]
000000000695c25c: 410fb64630                   movzx    eax, byte ptr [r14 + 0x30]
000000000695c261: 884333                       mov      byte ptr [rbx + 0x33], al
000000000695c264: c7431001000000               mov      dword ptr [rbx + 0x10], 1
000000000695c26b: 4883c408                     add      rsp, 8
000000000695c26f: 5b                           pop      rbx
000000000695c270: 415c                         pop      r12
000000000695c272: 415e                         pop      r14
000000000695c274: 415f                         pop      r15
000000000695c276: c3                           ret
000000000695c277: 4989c6                       mov      r14, rax
000000000695c27a: 4c89e7                       mov      rdi, r12
000000000695c27d: e83e250901                   call     0x79ee7c0
000000000695c282: eb03                         jmp      0x695c287
000000000695c284: 4989c6                       mov      r14, rax
000000000695c287: 4c89ff                       mov      rdi, r15
000000000695c28a: e8d1130901                   call     0x79ed660
000000000695c28f: eb03                         jmp      0x695c294
000000000695c291: 4989c6                       mov      r14, rax
000000000695c294: 4889df                       mov      rdi, rbx
000000000695c297: e8641187ff                   call     0x61cd400
000000000695c29c: 4c89f7                       mov      rdi, r14
000000000695c29f: e87c0bb9fd                   call     0x44ece20

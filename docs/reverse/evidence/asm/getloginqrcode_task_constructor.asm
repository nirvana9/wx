00000000077ece40: 4157                         push     r15
00000000077ece42: 4156                         push     r14
00000000077ece44: 4154                         push     r12
00000000077ece46: 53                           push     rbx
00000000077ece47: 50                           push     rax
00000000077ece48: 4989f6                       mov      r14, rsi
00000000077ece4b: 4889fb                       mov      rbx, rdi
00000000077ece4e: 48c7470800000000             mov      qword ptr [rdi + 8], 0
00000000077ece56: c7471000000000               mov      dword ptr [rdi + 0x10], 0
00000000077ece5d: 0f57c0                       xorps    xmm0, xmm0
00000000077ece60: 0f114718                     movups   xmmword ptr [rdi + 0x18], xmm0
00000000077ece64: 0f114722                     movups   xmmword ptr [rdi + 0x22], xmm0
00000000077ece68: 66c747320101                 mov      word ptr [rdi + 0x32], 0x101
00000000077ece6e: 0f114738                     movups   xmmword ptr [rdi + 0x38], xmm0
00000000077ece72: 48c7474800000000             mov      qword ptr [rdi + 0x48], 0
00000000077ece7a: 48c7477000000000             mov      qword ptr [rdi + 0x70], 0
00000000077ece82: c6878000000000               mov      byte ptr [rdi + 0x80], 0
00000000077ece89: c7878400000000000000         mov      dword ptr [rdi + 0x84], 0
00000000077ece93: 488d0536ef1703               lea      rax, [rip + 0x317ef36]
00000000077ece9a: 4883c010                     add      rax, 0x10
00000000077ece9e: 488907                       mov      qword ptr [rdi], rax
00000000077ecea1: 4c8dbf88000000               lea      r15, [rdi + 0x88]
00000000077ecea8: 4c89ff                       mov      rdi, r15
00000000077eceab: e810814d00                   call     0x7cc4fc0
00000000077eceb0: 4c8da3e8000000               lea      r12, [rbx + 0xe8]
00000000077eceb7: 4c89e7                       mov      rdi, r12
00000000077eceba: e8d1974d00                   call     0x7cc6690
00000000077ecebf: 488d7b18                     lea      rdi, [rbx + 0x18]
00000000077ecec3: 418b4610                     mov      eax, dword ptr [r14 + 0x10]
00000000077ecec7: 89430c                       mov      dword ptr [rbx + 0xc], eax
00000000077ececa: 498d7618                     lea      rsi, [r14 + 0x18]
00000000077ecece: e8dd0ed2fc                   call     0x450ddb0
00000000077eced3: 41837e0c00                   cmp      dword ptr [r14 + 0xc], 0
00000000077eced8: 0f954331                     setne    byte ptr [rbx + 0x31]
00000000077ecedc: 410fb64630                   movzx    eax, byte ptr [r14 + 0x30]
00000000077ecee1: 884333                       mov      byte ptr [rbx + 0x33], al
00000000077ecee4: c7431001000000               mov      dword ptr [rbx + 0x10], 1
00000000077eceeb: 4883c408                     add      rsp, 8
00000000077eceef: 5b                           pop      rbx
00000000077ecef0: 415c                         pop      r12
00000000077ecef2: 415e                         pop      r14
00000000077ecef4: 415f                         pop      r15
00000000077ecef6: c3                           ret
00000000077ecef7: 4989c6                       mov      r14, rax
00000000077ecefa: 4c89e7                       mov      rdi, r12
00000000077ecefd: e8de9a4d00                   call     0x7cc69e0
00000000077ecf02: eb03                         jmp      0x77ecf07
00000000077ecf04: 4989c6                       mov      r14, rax
00000000077ecf07: 4c89ff                       mov      rdi, r15
00000000077ecf0a: e821854d00                   call     0x7cc5430
00000000077ecf0f: eb03                         jmp      0x77ecf14
00000000077ecf11: 4989c6                       mov      r14, rax
00000000077ecf14: 4889df                       mov      rdi, rbx
00000000077ecf17: e8e4049efe                   call     0x61cd400
00000000077ecf1c: 4c89f7                       mov      rdi, r14
00000000077ecf1f: e8fcfecffc                   call     0x44ece20

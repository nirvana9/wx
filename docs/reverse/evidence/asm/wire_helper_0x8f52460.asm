0000000008f52460: 53                           push     rbx
0000000008f52461: 4883ec10                     sub      rsp, 0x10
0000000008f52465: 4889f3                       mov      rbx, rsi
0000000008f52468: f30f1144240c                 movss    dword ptr [rsp + 0xc], xmm0
0000000008f5246e: 8d34fd05000000               lea      esi, [rdi*8 + 5]
0000000008f52475: 4889df                       mov      rdi, rbx
0000000008f52478: e813f5ffff                   call     0x8f51990
0000000008f5247d: 660f6e44240c                 movd     xmm0, dword ptr [rsp + 0xc]
0000000008f52483: 660f7ec6                     movd     esi, xmm0
0000000008f52487: 4889df                       mov      rdi, rbx
0000000008f5248a: 4883c410                     add      rsp, 0x10
0000000008f5248e: 5b                           pop      rbx
0000000008f5248f: e93cf3ffff                   jmp      0x8f517d0

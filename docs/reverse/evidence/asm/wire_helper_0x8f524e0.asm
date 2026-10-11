0000000008f524e0: 55                           push     rbp
0000000008f524e1: 53                           push     rbx
0000000008f524e2: 50                           push     rax
0000000008f524e3: 4889d3                       mov      rbx, rdx
0000000008f524e6: 89f5                         mov      ebp, esi
0000000008f524e8: 8d34fd00000000               lea      esi, [rdi*8]
0000000008f524ef: 4889d7                       mov      rdi, rdx
0000000008f524f2: e899f4ffff                   call     0x8f51990
0000000008f524f7: 4889df                       mov      rdi, rbx
0000000008f524fa: 89ee                         mov      esi, ebp
0000000008f524fc: 4883c408                     add      rsp, 8
0000000008f52500: 5b                           pop      rbx
0000000008f52501: 5d                           pop      rbp
0000000008f52502: e989f4ffff                   jmp      0x8f51990

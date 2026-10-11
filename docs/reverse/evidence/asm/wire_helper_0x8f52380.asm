0000000008f52380: 55                           push     rbp
0000000008f52381: 53                           push     rbx
0000000008f52382: 50                           push     rax
0000000008f52383: 4889d3                       mov      rbx, rdx
0000000008f52386: 89f5                         mov      ebp, esi
0000000008f52388: 8d34fd00000000               lea      esi, [rdi*8]
0000000008f5238f: 4889d7                       mov      rdi, rdx
0000000008f52392: e8f9f5ffff                   call     0x8f51990
0000000008f52397: 4889df                       mov      rdi, rbx
0000000008f5239a: 89ee                         mov      esi, ebp
0000000008f5239c: 4883c408                     add      rsp, 8
0000000008f523a0: 5b                           pop      rbx
0000000008f523a1: 5d                           pop      rbp
0000000008f523a2: e9e9f5ffff                   jmp      0x8f51990

0000000008f523b0: 4156                         push     r14
0000000008f523b2: 53                           push     rbx
0000000008f523b3: 50                           push     rax
0000000008f523b4: 4889d3                       mov      rbx, rdx
0000000008f523b7: 4989f6                       mov      r14, rsi
0000000008f523ba: 8d34fd00000000               lea      esi, [rdi*8]
0000000008f523c1: 4889d7                       mov      rdi, rdx
0000000008f523c4: e8c7f5ffff                   call     0x8f51990
0000000008f523c9: 4889df                       mov      rdi, rbx
0000000008f523cc: 4c89f6                       mov      rsi, r14
0000000008f523cf: 4883c408                     add      rsp, 8
0000000008f523d3: 5b                           pop      rbx
0000000008f523d4: 415e                         pop      r14
0000000008f523d6: e955f7ffff                   jmp      0x8f51b30

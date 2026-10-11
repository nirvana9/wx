0000000008f52310: 55                           push     rbp
0000000008f52311: 53                           push     rbx
0000000008f52312: 50                           push     rax
0000000008f52313: 4889d3                       mov      rbx, rdx
0000000008f52316: 89f5                         mov      ebp, esi
0000000008f52318: 8d34fd00000000               lea      esi, [rdi*8]
0000000008f5231f: 4889d7                       mov      rdi, rdx
0000000008f52322: e869f6ffff                   call     0x8f51990
0000000008f52327: 85ed                         test     ebp, ebp
0000000008f52329: 7810                         js       0x8f5233b
0000000008f5232b: 4889df                       mov      rdi, rbx
0000000008f5232e: 89ee                         mov      esi, ebp
0000000008f52330: 4883c408                     add      rsp, 8
0000000008f52334: 5b                           pop      rbx
0000000008f52335: 5d                           pop      rbp
0000000008f52336: e955f6ffff                   jmp      0x8f51990
0000000008f5233b: 4863f5                       movsxd   rsi, ebp
0000000008f5233e: 4889df                       mov      rdi, rbx
0000000008f52341: 4883c408                     add      rsp, 8
0000000008f52345: 5b                           pop      rbx
0000000008f52346: 5d                           pop      rbp
0000000008f52347: e9e4f7ffff                   jmp      0x8f51b30

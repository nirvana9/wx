0000000008f526f0: 4156                         push     r14
0000000008f526f2: 53                           push     rbx
0000000008f526f3: 50                           push     rax
0000000008f526f4: 4889d3                       mov      rbx, rdx
0000000008f526f7: 4989f6                       mov      r14, rsi
0000000008f526fa: 8d34fd02000000               lea      esi, [rdi*8 + 2]
0000000008f52701: 4889d7                       mov      rdi, rdx
0000000008f52704: e887f2ffff                   call     0x8f51990
0000000008f52709: 498b06                       mov      rax, qword ptr [r14]
0000000008f5270c: 4c89f7                       mov      rdi, r14
0000000008f5270f: ff5060                       call     qword ptr [rax + 0x60]
0000000008f52712: 4889df                       mov      rdi, rbx
0000000008f52715: 89c6                         mov      esi, eax
0000000008f52717: e874f2ffff                   call     0x8f51990
0000000008f5271c: 498b06                       mov      rax, qword ptr [r14]
0000000008f5271f: 488b4050                     mov      rax, qword ptr [rax + 0x50]
0000000008f52723: 4c89f7                       mov      rdi, r14
0000000008f52726: 4889de                       mov      rsi, rbx
0000000008f52729: 4883c408                     add      rsp, 8
0000000008f5272d: 5b                           pop      rbx
0000000008f5272e: 415e                         pop      r14
0000000008f52730: ffe0                         jmp      rax

0000000009abbed0: 4157                         push     r15
0000000009abbed2: 4156                         push     r14
0000000009abbed4: 4154                         push     r12
0000000009abbed6: 53                           push     rbx
0000000009abbed7: 4881ec58010000               sub      rsp, 0x158
0000000009abbede: 4889fb                       mov      rbx, rdi
0000000009abbee1: 0f57c0                       xorps    xmm0, xmm0
0000000009abbee4: 0f1107                       movups   xmmword ptr [rdi], xmm0
0000000009abbee7: 48c7471000000000             mov      qword ptr [rdi + 0x10], 0
0000000009abbeef: 4885f6                       test     rsi, rsi
0000000009abbef2: 0f84e6000000                 je       0x9abbfde
0000000009abbef8: 4989f6                       mov      r14, rsi
0000000009abbefb: 4889f7                       mov      rdi, rsi
0000000009abbefe: e80d1fbb00                   call     0xa66de10
0000000009abbf03: 4989c7                       mov      r15, rax
0000000009abbf06: 4c8d642408                   lea      r12, [rsp + 8]
0000000009abbf0b: ba50010000                   mov      edx, 0x150
0000000009abbf10: 4c89e7                       mov      rdi, r12
0000000009abbf13: beaa000000                   mov      esi, 0xaa
0000000009abbf18: e8b323bb00                   call     0xa66e2d0
0000000009abbf1d: 488d357c7f50f7               lea      rsi, [rip - 0x8af8084]
0000000009abbf24: 4c89e7                       mov      rdi, r12
0000000009abbf27: ba0c000000                   mov      edx, 0xc
0000000009abbf2c: e87f060000                   call     0x9abc5b0
0000000009abbf31: 488b442408                   mov      rax, qword ptr [rsp + 8]
0000000009abbf36: 488b40e8                     mov      rax, qword ptr [rax - 0x18]
0000000009abbf3a: 837c042800                   cmp      dword ptr [rsp + rax + 0x28], 0
0000000009abbf3f: 753c                         jne      0x9abbf7d
0000000009abbf41: 488d7c2408                   lea      rdi, [rsp + 8]
0000000009abbf46: 4c89fe                       mov      rsi, r15
0000000009abbf49: 4c89f2                       mov      rdx, r14
0000000009abbf4c: e8af5da5fa                   call     0x4511d00
0000000009abbf51: 488d7c2418                   lea      rdi, [rsp + 0x18]
0000000009abbf56: e87584a5fa                   call     0x45143d0
0000000009abbf5b: 4885c0                       test     rax, rax
0000000009abbf5e: 751d                         jne      0x9abbf7d
0000000009abbf60: 488b442408                   mov      rax, qword ptr [rsp + 8]
0000000009abbf65: 488b40e8                     mov      rax, qword ptr [rax - 0x18]
0000000009abbf69: 488d3c04                     lea      rdi, [rsp + rax]
0000000009abbf6d: 4883c708                     add      rdi, 8
0000000009abbf71: 8b740428                     mov      esi, dword ptr [rsp + rax + 0x28]
0000000009abbf75: 83ce04                       or       esi, 4
0000000009abbf78: e8539ca5fa                   call     0x4515bd0
0000000009abbf7d: 4c8d257ccbbb00               lea      r12, [rip + 0xbbcb7c]
0000000009abbf84: 498b0424                     mov      rax, qword ptr [r12]
0000000009abbf88: 498b4c2418                   mov      rcx, qword ptr [r12 + 0x18]
0000000009abbf8d: 4889442408                   mov      qword ptr [rsp + 8], rax
0000000009abbf92: 488b40e8                     mov      rax, qword ptr [rax - 0x18]
0000000009abbf96: 48894c0408                   mov      qword ptr [rsp + rax + 8], rcx
0000000009abbf9b: 488d7c2418                   lea      rdi, [rsp + 0x18]
0000000009abbfa0: e86b83a5fa                   call     0x4514310
0000000009abbfa5: 4983c408                     add      r12, 8
0000000009abbfa9: 488d7c2408                   lea      rdi, [rsp + 8]
0000000009abbfae: 4c89e6                       mov      rsi, r12
0000000009abbfb1: e8ca55a5fa                   call     0x4511580
0000000009abbfb6: 488dbc24c0000000             lea      rdi, [rsp + 0xc0]
0000000009abbfbe: e8fd52a5fa                   call     0x45112c0
0000000009abbfc3: 4889df                       mov      rdi, rbx
0000000009abbfc6: 4c89fe                       mov      rsi, r15
0000000009abbfc9: 4c89f2                       mov      rdx, r14
0000000009abbfcc: e82f0fa5fa                   call     0x450cf00
0000000009abbfd1: 4d85ff                       test     r15, r15
0000000009abbfd4: 7408                         je       0x9abbfde
0000000009abbfd6: 4c89ff                       mov      rdi, r15
0000000009abbfd9: e872e1a4fa                   call     0x450a150
0000000009abbfde: 4889d8                       mov      rax, rbx
0000000009abbfe1: 4881c458010000               add      rsp, 0x158
0000000009abbfe8: 5b                           pop      rbx
0000000009abbfe9: 415c                         pop      r12
0000000009abbfeb: 415e                         pop      r14
0000000009abbfed: 415f                         pop      r15
0000000009abbfef: c3                           ret
0000000009abbff0: 4989c6                       mov      r14, rax
0000000009abbff3: 488d7c2408                   lea      rdi, [rsp + 8]
0000000009abbff8: e8c396a5fa                   call     0x45156c0
0000000009abbffd: 4c89f7                       mov      rdi, r14
0000000009abc000: e81b0ea3fa                   call     0x44ece20
0000000009abc005: 4989c6                       mov      r14, rax
0000000009abc008: f60301                       test     byte ptr [rbx], 1
0000000009abc00b: 7409                         je       0x9abc016
0000000009abc00d: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
0000000009abc011: e82ae1a4fa                   call     0x450a140
0000000009abc016: 4c89f7                       mov      rdi, r14
0000000009abc019: e8020ea3fa                   call     0x44ece20

0000000008f52620: 4157                         push     r15
0000000008f52622: 4156                         push     r14
0000000008f52624: 53                           push     rbx
0000000008f52625: 4883ec40                     sub      rsp, 0x40
0000000008f52629: 4889d3                       mov      rbx, rdx
0000000008f5262c: 4989f6                       mov      r14, rsi
0000000008f5262f: 8d34fd02000000               lea      esi, [rdi*8 + 2]
0000000008f52636: 4889d7                       mov      rdi, rdx
0000000008f52639: e852f3ffff                   call     0x8f51990
0000000008f5263e: 410fb606                     movzx    eax, byte ptr [r14]
0000000008f52642: 89c2                         mov      edx, eax
0000000008f52644: 498b4e08                     mov      rcx, qword ptr [r14 + 8]
0000000008f52648: 80e201                       and      dl, 1
0000000008f5264b: 7458                         je       0x8f526a5
0000000008f5264d: 4881f9ffffff7f               cmp      rcx, 0x7fffffff
0000000008f52654: 764f                         jbe      0x8f526a5
0000000008f52656: 488d15e54de3f7               lea      rdx, [rip - 0x81cb21b]
0000000008f5265d: 4c8d7c2410                   lea      r15, [rsp + 0x10]
0000000008f52662: 4c89ff                       mov      rdi, r15
0000000008f52665: be03000000                   mov      esi, 3
0000000008f5266a: b923010000                   mov      ecx, 0x123
0000000008f5266f: e86cd6ffff                   call     0x8f4fce0
0000000008f52674: 488d35a947f0f7               lea      rsi, [rip - 0x80fb857]
0000000008f5267b: 4c89ff                       mov      rdi, r15
0000000008f5267e: e8edd0ffff                   call     0x8f4f770
0000000008f52683: 488d7c240f                   lea      rdi, [rsp + 0xf]
0000000008f52688: 4889c6                       mov      rsi, rax
0000000008f5268b: e830d1ffff                   call     0x8f4f7c0
0000000008f52690: 4c89ff                       mov      rdi, r15
0000000008f52693: e868d6ffff                   call     0x8f4fd00
0000000008f52698: 410fb606                     movzx    eax, byte ptr [r14]
0000000008f5269c: 498b4e08                     mov      rcx, qword ptr [r14 + 8]
0000000008f526a0: 89c2                         mov      edx, eax
0000000008f526a2: 80e201                       and      dl, 1
0000000008f526a5: d0e8                         shr      al, 1
0000000008f526a7: 84d2                         test     dl, dl
0000000008f526a9: 0fb6f0                       movzx    esi, al
0000000008f526ac: 0f45f1                       cmovne   esi, ecx
0000000008f526af: 4889df                       mov      rdi, rbx
0000000008f526b2: e8d9f2ffff                   call     0x8f51990
0000000008f526b7: 410fb616                     movzx    edx, byte ptr [r14]
0000000008f526bb: f6c201                       test     dl, 1
0000000008f526be: 740a                         je       0x8f526ca
0000000008f526c0: 418b5608                     mov      edx, dword ptr [r14 + 8]
0000000008f526c4: 4d8b7610                     mov      r14, qword ptr [r14 + 0x10]
0000000008f526c8: eb05                         jmp      0x8f526cf
0000000008f526ca: 49ffc6                       inc      r14
0000000008f526cd: d1ea                         shr      edx, 1
0000000008f526cf: 4889df                       mov      rdi, rbx
0000000008f526d2: 4c89f6                       mov      rsi, r14
0000000008f526d5: e846f0ffff                   call     0x8f51720
0000000008f526da: 4883c440                     add      rsp, 0x40
0000000008f526de: 5b                           pop      rbx
0000000008f526df: 415e                         pop      r14
0000000008f526e1: 415f                         pop      r15
0000000008f526e3: c3                           ret

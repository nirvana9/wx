0000000008f52550: 4157                         push     r15
0000000008f52552: 4156                         push     r14
0000000008f52554: 53                           push     rbx
0000000008f52555: 4883ec40                     sub      rsp, 0x40
0000000008f52559: 4889d3                       mov      rbx, rdx
0000000008f5255c: 4989f6                       mov      r14, rsi
0000000008f5255f: 8d34fd02000000               lea      esi, [rdi*8 + 2]
0000000008f52566: 4889d7                       mov      rdi, rdx
0000000008f52569: e822f4ffff                   call     0x8f51990
0000000008f5256e: 410fb606                     movzx    eax, byte ptr [r14]
0000000008f52572: 89c2                         mov      edx, eax
0000000008f52574: 498b4e08                     mov      rcx, qword ptr [r14 + 8]
0000000008f52578: 80e201                       and      dl, 1
0000000008f5257b: 7458                         je       0x8f525d5
0000000008f5257d: 4881f9ffffff7f               cmp      rcx, 0x7fffffff
0000000008f52584: 764f                         jbe      0x8f525d5
0000000008f52586: 488d15b54ee3f7               lea      rdx, [rip - 0x81cb14b]
0000000008f5258d: 4c8d7c2410                   lea      r15, [rsp + 0x10]
0000000008f52592: 4c89ff                       mov      rdi, r15
0000000008f52595: be03000000                   mov      esi, 3
0000000008f5259a: b91c010000                   mov      ecx, 0x11c
0000000008f5259f: e83cd7ffff                   call     0x8f4fce0
0000000008f525a4: 488d357948f0f7               lea      rsi, [rip - 0x80fb787]
0000000008f525ab: 4c89ff                       mov      rdi, r15
0000000008f525ae: e8bdd1ffff                   call     0x8f4f770
0000000008f525b3: 488d7c240f                   lea      rdi, [rsp + 0xf]
0000000008f525b8: 4889c6                       mov      rsi, rax
0000000008f525bb: e800d2ffff                   call     0x8f4f7c0
0000000008f525c0: 4c89ff                       mov      rdi, r15
0000000008f525c3: e838d7ffff                   call     0x8f4fd00
0000000008f525c8: 410fb606                     movzx    eax, byte ptr [r14]
0000000008f525cc: 498b4e08                     mov      rcx, qword ptr [r14 + 8]
0000000008f525d0: 89c2                         mov      edx, eax
0000000008f525d2: 80e201                       and      dl, 1
0000000008f525d5: d0e8                         shr      al, 1
0000000008f525d7: 84d2                         test     dl, dl
0000000008f525d9: 0fb6f0                       movzx    esi, al
0000000008f525dc: 0f45f1                       cmovne   esi, ecx
0000000008f525df: 4889df                       mov      rdi, rbx
0000000008f525e2: e8a9f3ffff                   call     0x8f51990
0000000008f525e7: 410fb616                     movzx    edx, byte ptr [r14]
0000000008f525eb: f6c201                       test     dl, 1
0000000008f525ee: 740a                         je       0x8f525fa
0000000008f525f0: 418b5608                     mov      edx, dword ptr [r14 + 8]
0000000008f525f4: 4d8b7610                     mov      r14, qword ptr [r14 + 0x10]
0000000008f525f8: eb05                         jmp      0x8f525ff
0000000008f525fa: 49ffc6                       inc      r14
0000000008f525fd: d1ea                         shr      edx, 1
0000000008f525ff: 4889df                       mov      rdi, rbx
0000000008f52602: 4c89f6                       mov      rsi, r14
0000000008f52605: e816f1ffff                   call     0x8f51720
0000000008f5260a: 4883c440                     add      rsp, 0x40
0000000008f5260e: 5b                           pop      rbx
0000000008f5260f: 415e                         pop      r14
0000000008f52611: 415f                         pop      r15
0000000008f52613: c3                           ret

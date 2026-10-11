0000000008b211c0: 55                           push     rbp
0000000008b211c1: 4157                         push     r15
0000000008b211c3: 4156                         push     r14
0000000008b211c5: 4155                         push     r13
0000000008b211c7: 4154                         push     r12
0000000008b211c9: 53                           push     rbx
0000000008b211ca: 50                           push     rax
0000000008b211cb: 4d89ce                       mov      r14, r9
0000000008b211ce: 4c89c3                       mov      rbx, r8
0000000008b211d1: 4989cd                       mov      r13, rcx
0000000008b211d4: 4889d5                       mov      rbp, rdx
0000000008b211d7: 4989f7                       mov      r15, rsi
0000000008b211da: 48893c24                     mov      qword ptr [rsp], rdi
0000000008b211de: e86d547300                   call     0x9256650
0000000008b211e3: 4989c4                       mov      r12, rax
0000000008b211e6: 4889df                       mov      rdi, rbx
0000000008b211e9: 4c89f6                       mov      rsi, r14
0000000008b211ec: 31d2                         xor      edx, edx
0000000008b211ee: e8adcf9efb                   call     0x450e1a0
0000000008b211f3: 410fb607                     movzx    eax, byte ptr [r15]
0000000008b211f7: 498d5701                     lea      rdx, [r15 + 1]
0000000008b211fb: 89c1                         mov      ecx, eax
0000000008b211fd: d1e9                         shr      ecx, 1
0000000008b211ff: a801                         test     al, 1
0000000008b21201: 490f455710                   cmovne   rdx, qword ptr [r15 + 0x10]
0000000008b21206: 490f454f08                   cmovne   rcx, qword ptr [r15 + 8]
0000000008b2120b: 0fb64500                     movzx    eax, byte ptr [rbp]
0000000008b2120f: 4c8d4501                     lea      r8, [rbp + 1]
0000000008b21213: 4189c1                       mov      r9d, eax
0000000008b21216: 41d1e9                       shr      r9d, 1
0000000008b21219: a801                         test     al, 1
0000000008b2121b: 4c0f454510                   cmovne   r8, qword ptr [rbp + 0x10]
0000000008b21220: 4c0f454d08                   cmovne   r9, qword ptr [rbp + 8]
0000000008b21225: 410fb67500                   movzx    esi, byte ptr [r13]
0000000008b2122a: 498d4501                     lea      rax, [r13 + 1]
0000000008b2122e: 4189f2                       mov      r10d, esi
0000000008b21231: 41d1ea                       shr      r10d, 1
0000000008b21234: 40f6c601                     test     sil, 1
0000000008b21238: 490f454510                   cmovne   rax, qword ptr [r13 + 0x10]
0000000008b2123d: 4d0f455508                   cmovne   r10, qword ptr [r13 + 8]
0000000008b21242: f60301                       test     byte ptr [rbx], 1
0000000008b21245: 7406                         je       0x8b2124d
0000000008b21247: 488b5b10                     mov      rbx, qword ptr [rbx + 0x10]
0000000008b2124b: eb03                         jmp      0x8b21250
0000000008b2124d: 48ffc3                       inc      rbx
0000000008b21250: 488b3c24                     mov      rdi, qword ptr [rsp]
0000000008b21254: 4c89e6                       mov      rsi, r12
0000000008b21257: 4156                         push     r14
0000000008b21259: 53                           push     rbx
0000000008b2125a: 4152                         push     r10
0000000008b2125c: 50                           push     rax
0000000008b2125d: e81e000000                   call     0x8b21280
0000000008b21262: 4883c428                     add      rsp, 0x28
0000000008b21266: 5b                           pop      rbx
0000000008b21267: 415c                         pop      r12
0000000008b21269: 415d                         pop      r13
0000000008b2126b: 415e                         pop      r14
0000000008b2126d: 415f                         pop      r15
0000000008b2126f: 5d                           pop      rbp
0000000008b21270: c3                           ret

00000000077f61f0: 4157                         push     r15
00000000077f61f2: 4156                         push     r14
00000000077f61f4: 53                           push     rbx
00000000077f61f5: 4883ec20                     sub      rsp, 0x20
00000000077f61f9: 4989f6                       mov      r14, rsi
00000000077f61fc: 4889fb                       mov      rbx, rdi
00000000077f61ff: e8dc6284fe                   call     0x603c4e0
00000000077f6204: 488b08                       mov      rcx, qword ptr [rax]
00000000077f6207: 4889c7                       mov      rdi, rax
00000000077f620a: ff5118                       call     qword ptr [rcx + 0x18]
00000000077f620d: 498d4e20                     lea      rcx, [r14 + 0x20]
00000000077f6211: 4d8d4638                     lea      r8, [r14 + 0x38]
00000000077f6215: 4c8d7c2408                   lea      r15, [rsp + 8]
00000000077f621a: 4c89ff                       mov      rdi, r15
00000000077f621d: 4889c6                       mov      rsi, rax
00000000077f6220: 4c89f2                       mov      rdx, r14
00000000077f6223: e8b8000000                   call     0x77f62e0
00000000077f6228: 4c89ff                       mov      rdi, r15
00000000077f622b: e830232f02                   call     0x9ae8560
00000000077f6230: 488d7c2408                   lea      rdi, [rsp + 8]
00000000077f6235: e806020000                   call     0x77f6440
00000000077f623a: 4989c6                       mov      r14, rax
00000000077f623d: 488b00                       mov      rax, qword ptr [rax]
00000000077f6240: 488903                       mov      qword ptr [rbx], rax
00000000077f6243: 488d7b08                     lea      rdi, [rbx + 8]
00000000077f6247: 41f6460801                   test     byte ptr [r14 + 8], 1
00000000077f624c: 7517                         jne      0x77f6265
00000000077f624e: 4c89f0                       mov      rax, r14
00000000077f6251: 4883c008                     add      rax, 8
00000000077f6255: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
00000000077f6259: 48894f10                     mov      qword ptr [rdi + 0x10], rcx
00000000077f625d: 0f1000                       movups   xmm0, xmmword ptr [rax]
00000000077f6260: 0f1107                       movups   xmmword ptr [rdi], xmm0
00000000077f6263: eb0d                         jmp      0x77f6272
00000000077f6265: 498b5610                     mov      rdx, qword ptr [r14 + 0x10]
00000000077f6269: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
00000000077f626d: e82e64d1fc                   call     0x450c6a0
00000000077f6272: 498b4620                     mov      rax, qword ptr [r14 + 0x20]
00000000077f6276: 48894320                     mov      qword ptr [rbx + 0x20], rax
00000000077f627a: 498b4628                     mov      rax, qword ptr [r14 + 0x28]
00000000077f627e: 48894328                     mov      qword ptr [rbx + 0x28], rax
00000000077f6282: 4885c0                       test     rax, rax
00000000077f6285: 7405                         je       0x77f628c
00000000077f6287: f048ff4008                   lock inc qword ptr [rax + 8]
00000000077f628c: 4c8b742410                   mov      r14, qword ptr [rsp + 0x10]
00000000077f6291: 4d85f6                       test     r14, r14
00000000077f6294: 7423                         je       0x77f62b9
00000000077f6296: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000077f629d: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000077f62a3: 4885c0                       test     rax, rax
00000000077f62a6: 7511                         jne      0x77f62b9
00000000077f62a8: 498b06                       mov      rax, qword ptr [r14]
00000000077f62ab: 4c89f7                       mov      rdi, r14
00000000077f62ae: ff5010                       call     qword ptr [rax + 0x10]
00000000077f62b1: 4c89f7                       mov      rdi, r14
00000000077f62b4: e8170fd4fc                   call     0x45371d0
00000000077f62b9: 4889d8                       mov      rax, rbx
00000000077f62bc: 4883c420                     add      rsp, 0x20
00000000077f62c0: 5b                           pop      rbx
00000000077f62c1: 415e                         pop      r14
00000000077f62c3: 415f                         pop      r15
00000000077f62c5: c3                           ret
00000000077f62c6: 4889c3                       mov      rbx, rax
00000000077f62c9: 488d7c2408                   lea      rdi, [rsp + 8]
00000000077f62ce: e8cd2685fe                   call     0x60489a0
00000000077f62d3: 4889df                       mov      rdi, rbx
00000000077f62d6: e8456bcffc                   call     0x44ece20

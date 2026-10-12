0000000006041890: 4157                         push     r15
0000000006041892: 4156                         push     r14
0000000006041894: 53                           push     rbx
0000000006041895: 4883ec20                     sub      rsp, 0x20
0000000006041899: 4889fb                       mov      rbx, rdi
000000000604189c: 488b35addcca04               mov      rsi, qword ptr [rip + 0x4cadcad]
00000000060418a3: 488b06                       mov      rax, qword ptr [rsi]
00000000060418a6: 488d7c2410                   lea      rdi, [rsp + 0x10]
00000000060418ab: ff5068                       call     qword ptr [rax + 0x68]
00000000060418ae: 4c8b742410                   mov      r14, qword ptr [rsp + 0x10]
00000000060418b3: 488b442418                   mov      rax, qword ptr [rsp + 0x18]
00000000060418b8: 4c893424                     mov      qword ptr [rsp], r14
00000000060418bc: 4889442408                   mov      qword ptr [rsp + 8], rax
00000000060418c1: 4885c0                       test     rax, rax
00000000060418c4: 7436                         je       0x60418fc
00000000060418c6: f048ff4008                   lock inc qword ptr [rax + 8]
00000000060418cb: 4c8b742418                   mov      r14, qword ptr [rsp + 0x18]
00000000060418d0: 4d85f6                       test     r14, r14
00000000060418d3: 7423                         je       0x60418f8
00000000060418d5: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000060418dc: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000060418e2: 4885c0                       test     rax, rax
00000000060418e5: 7511                         jne      0x60418f8
00000000060418e7: 498b06                       mov      rax, qword ptr [r14]
00000000060418ea: 4c89f7                       mov      rdi, r14
00000000060418ed: ff5010                       call     qword ptr [rax + 0x10]
00000000060418f0: 4c89f7                       mov      rdi, r14
00000000060418f3: e8d8584ffe                   call     0x45371d0
00000000060418f8: 4c8b3424                     mov      r14, qword ptr [rsp]
00000000060418fc: 4d85f6                       test     r14, r14
00000000060418ff: 742d                         je       0x604192e
0000000006041901: 4c89f7                       mov      rdi, r14
0000000006041904: e8d7931500                   call     0x619ace0
0000000006041909: f60001                       test     byte ptr [rax], 1
000000000604190c: 7510                         jne      0x604191e
000000000604190e: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
0000000006041912: 48894b10                     mov      qword ptr [rbx + 0x10], rcx
0000000006041916: 0f1000                       movups   xmm0, xmmword ptr [rax]
0000000006041919: 0f1103                       movups   xmmword ptr [rbx], xmm0
000000000604191c: eb10                         jmp      0x604192e
000000000604191e: 488b5008                     mov      rdx, qword ptr [rax + 8]
0000000006041922: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000006041926: 4889df                       mov      rdi, rbx
0000000006041929: e872ad4cfe                   call     0x450c6a0
000000000604192e: 4c8b7c2408                   mov      r15, qword ptr [rsp + 8]
0000000006041933: 4d85ff                       test     r15, r15
0000000006041936: 7412                         je       0x604194a
0000000006041938: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
000000000604193f: f0490fc14708                 lock xadd qword ptr [r15 + 8], rax
0000000006041945: 4885c0                       test     rax, rax
0000000006041948: 7417                         je       0x6041961
000000000604194a: 4d85f6                       test     r14, r14
000000000604194d: 7505                         jne      0x6041954
000000000604194f: 66c7030000                   mov      word ptr [rbx], 0
0000000006041954: 4889d8                       mov      rax, rbx
0000000006041957: 4883c420                     add      rsp, 0x20
000000000604195b: 5b                           pop      rbx
000000000604195c: 415e                         pop      r14
000000000604195e: 415f                         pop      r15
0000000006041960: c3                           ret
0000000006041961: 498b07                       mov      rax, qword ptr [r15]
0000000006041964: 4c89ff                       mov      rdi, r15
0000000006041967: ff5010                       call     qword ptr [rax + 0x10]
000000000604196a: 4c89ff                       mov      rdi, r15
000000000604196d: e85e584ffe                   call     0x45371d0
0000000006041972: 4d85f6                       test     r14, r14
0000000006041975: 75dd                         jne      0x6041954
0000000006041977: ebd6                         jmp      0x604194f
0000000006041979: 4889c3                       mov      rbx, rax
000000000604197c: 4889e7                       mov      rdi, rsp
000000000604197f: e88cb4ffff                   call     0x603ce10
0000000006041984: 4889df                       mov      rdi, rbx
0000000006041987: e894b44afe                   call     0x44ece20

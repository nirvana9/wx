0000000006041990: 4157                         push     r15
0000000006041992: 4156                         push     r14
0000000006041994: 53                           push     rbx
0000000006041995: 4883ec20                     sub      rsp, 0x20
0000000006041999: 4889fb                       mov      rbx, rdi
000000000604199c: 488b35addbca04               mov      rsi, qword ptr [rip + 0x4cadbad]
00000000060419a3: 488b06                       mov      rax, qword ptr [rsi]
00000000060419a6: 488d7c2410                   lea      rdi, [rsp + 0x10]
00000000060419ab: ff5068                       call     qword ptr [rax + 0x68]
00000000060419ae: 4c8b742410                   mov      r14, qword ptr [rsp + 0x10]
00000000060419b3: 488b442418                   mov      rax, qword ptr [rsp + 0x18]
00000000060419b8: 4c893424                     mov      qword ptr [rsp], r14
00000000060419bc: 4889442408                   mov      qword ptr [rsp + 8], rax
00000000060419c1: 4885c0                       test     rax, rax
00000000060419c4: 7436                         je       0x60419fc
00000000060419c6: f048ff4008                   lock inc qword ptr [rax + 8]
00000000060419cb: 4c8b742418                   mov      r14, qword ptr [rsp + 0x18]
00000000060419d0: 4d85f6                       test     r14, r14
00000000060419d3: 7423                         je       0x60419f8
00000000060419d5: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
00000000060419dc: f0490fc14608                 lock xadd qword ptr [r14 + 8], rax
00000000060419e2: 4885c0                       test     rax, rax
00000000060419e5: 7511                         jne      0x60419f8
00000000060419e7: 498b06                       mov      rax, qword ptr [r14]
00000000060419ea: 4c89f7                       mov      rdi, r14
00000000060419ed: ff5010                       call     qword ptr [rax + 0x10]
00000000060419f0: 4c89f7                       mov      rdi, r14
00000000060419f3: e8d8574ffe                   call     0x45371d0
00000000060419f8: 4c8b3424                     mov      r14, qword ptr [rsp]
00000000060419fc: 4d85f6                       test     r14, r14
00000000060419ff: 742d                         je       0x6041a2e
0000000006041a01: 4c89f7                       mov      rdi, r14
0000000006041a04: e8f7921500                   call     0x619ad00
0000000006041a09: f60001                       test     byte ptr [rax], 1
0000000006041a0c: 7510                         jne      0x6041a1e
0000000006041a0e: 488b4810                     mov      rcx, qword ptr [rax + 0x10]
0000000006041a12: 48894b10                     mov      qword ptr [rbx + 0x10], rcx
0000000006041a16: 0f1000                       movups   xmm0, xmmword ptr [rax]
0000000006041a19: 0f1103                       movups   xmmword ptr [rbx], xmm0
0000000006041a1c: eb10                         jmp      0x6041a2e
0000000006041a1e: 488b5008                     mov      rdx, qword ptr [rax + 8]
0000000006041a22: 488b7010                     mov      rsi, qword ptr [rax + 0x10]
0000000006041a26: 4889df                       mov      rdi, rbx
0000000006041a29: e872ac4cfe                   call     0x450c6a0
0000000006041a2e: 4c8b7c2408                   mov      r15, qword ptr [rsp + 8]
0000000006041a33: 4d85ff                       test     r15, r15
0000000006041a36: 7412                         je       0x6041a4a
0000000006041a38: 48c7c0ffffffff               mov      rax, 0xffffffffffffffff
0000000006041a3f: f0490fc14708                 lock xadd qword ptr [r15 + 8], rax
0000000006041a45: 4885c0                       test     rax, rax
0000000006041a48: 7417                         je       0x6041a61
0000000006041a4a: 4d85f6                       test     r14, r14
0000000006041a4d: 7505                         jne      0x6041a54
0000000006041a4f: 66c7030000                   mov      word ptr [rbx], 0
0000000006041a54: 4889d8                       mov      rax, rbx
0000000006041a57: 4883c420                     add      rsp, 0x20
0000000006041a5b: 5b                           pop      rbx
0000000006041a5c: 415e                         pop      r14
0000000006041a5e: 415f                         pop      r15
0000000006041a60: c3                           ret
0000000006041a61: 498b07                       mov      rax, qword ptr [r15]
0000000006041a64: 4c89ff                       mov      rdi, r15
0000000006041a67: ff5010                       call     qword ptr [rax + 0x10]
0000000006041a6a: 4c89ff                       mov      rdi, r15
0000000006041a6d: e85e574ffe                   call     0x45371d0
0000000006041a72: 4d85f6                       test     r14, r14
0000000006041a75: 75dd                         jne      0x6041a54
0000000006041a77: ebd6                         jmp      0x6041a4f
0000000006041a79: 4889c3                       mov      rbx, rax
0000000006041a7c: 4889e7                       mov      rdi, rsp
0000000006041a7f: e88cb3ffff                   call     0x603ce10
0000000006041a84: 4889df                       mov      rdi, rbx
0000000006041a87: e894b34afe                   call     0x44ece20

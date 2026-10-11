0000000007cc6560: 8b475c                       mov      eax, dword ptr [rdi + 0x5c]
0000000007cc6563: f7d0                         not      eax
0000000007cc6565: a803                         test     al, 3
0000000007cc6567: 0f85da000000                 jne      0x7cc6647
0000000007cc656d: 53                           push     rbx
0000000007cc656e: 4889fb                       mov      rbx, rdi
0000000007cc6571: 488b7f08                     mov      rdi, qword ptr [rdi + 8]
0000000007cc6575: 4885ff                       test     rdi, rdi
0000000007cc6578: 750e                         jne      0x7cc6588
0000000007cc657a: 488d050f570303               lea      rax, [rip + 0x303570f]
0000000007cc6581: 488b00                       mov      rax, qword ptr [rax]
0000000007cc6584: 488b7808                     mov      rdi, qword ptr [rax + 8]
0000000007cc6588: 488b07                       mov      rax, qword ptr [rdi]
0000000007cc658b: ff5028                       call     qword ptr [rax + 0x28]
0000000007cc658e: 84c0                         test     al, al
0000000007cc6590: 0f84b4000000                 je       0x7cc664a
0000000007cc6596: 8b435c                       mov      eax, dword ptr [rbx + 0x5c]
0000000007cc6599: a802                         test     al, 2
0000000007cc659b: 7428                         je       0x7cc65c5
0000000007cc659d: 488b7b10                     mov      rdi, qword ptr [rbx + 0x10]
0000000007cc65a1: 4885ff                       test     rdi, rdi
0000000007cc65a4: 750e                         jne      0x7cc65b4
0000000007cc65a6: 488d05e3560303               lea      rax, [rip + 0x30356e3]
0000000007cc65ad: 488b00                       mov      rax, qword ptr [rax]
0000000007cc65b0: 488b7810                     mov      rdi, qword ptr [rax + 0x10]
0000000007cc65b4: 488b07                       mov      rax, qword ptr [rdi]
0000000007cc65b7: ff5028                       call     qword ptr [rax + 0x28]
0000000007cc65ba: 84c0                         test     al, al
0000000007cc65bc: 0f8488000000                 je       0x7cc664a
0000000007cc65c2: 8b435c                       mov      eax, dword ptr [rbx + 0x5c]
0000000007cc65c5: a900010000                   test     eax, 0x100
0000000007cc65ca: 7424                         je       0x7cc65f0
0000000007cc65cc: 488b7b40                     mov      rdi, qword ptr [rbx + 0x40]
0000000007cc65d0: 4885ff                       test     rdi, rdi
0000000007cc65d3: 750e                         jne      0x7cc65e3
0000000007cc65d5: 488d05b4560303               lea      rax, [rip + 0x30356b4]
0000000007cc65dc: 488b00                       mov      rax, qword ptr [rax]
0000000007cc65df: 488b7840                     mov      rdi, qword ptr [rax + 0x40]
0000000007cc65e3: 488b07                       mov      rax, qword ptr [rdi]
0000000007cc65e6: ff5028                       call     qword ptr [rax + 0x28]
0000000007cc65e9: 84c0                         test     al, al
0000000007cc65eb: 745d                         je       0x7cc664a
0000000007cc65ed: 8b435c                       mov      eax, dword ptr [rbx + 0x5c]
0000000007cc65f0: a900020000                   test     eax, 0x200
0000000007cc65f5: 7424                         je       0x7cc661b
0000000007cc65f7: 488b7b48                     mov      rdi, qword ptr [rbx + 0x48]
0000000007cc65fb: 4885ff                       test     rdi, rdi
0000000007cc65fe: 750e                         jne      0x7cc660e
0000000007cc6600: 488d0589560303               lea      rax, [rip + 0x3035689]
0000000007cc6607: 488b00                       mov      rax, qword ptr [rax]
0000000007cc660a: 488b7848                     mov      rdi, qword ptr [rax + 0x48]
0000000007cc660e: 488b07                       mov      rax, qword ptr [rdi]
0000000007cc6611: ff5028                       call     qword ptr [rax + 0x28]
0000000007cc6614: 84c0                         test     al, al
0000000007cc6616: 7432                         je       0x7cc664a
0000000007cc6618: 8b435c                       mov      eax, dword ptr [rbx + 0x5c]
0000000007cc661b: a900040000                   test     eax, 0x400
0000000007cc6620: 7421                         je       0x7cc6643
0000000007cc6622: 488b7b50                     mov      rdi, qword ptr [rbx + 0x50]
0000000007cc6626: 4885ff                       test     rdi, rdi
0000000007cc6629: 750e                         jne      0x7cc6639
0000000007cc662b: 488d055e560303               lea      rax, [rip + 0x303565e]
0000000007cc6632: 488b00                       mov      rax, qword ptr [rax]
0000000007cc6635: 488b7850                     mov      rdi, qword ptr [rax + 0x50]
0000000007cc6639: 488b07                       mov      rax, qword ptr [rdi]
0000000007cc663c: ff5028                       call     qword ptr [rax + 0x28]
0000000007cc663f: 84c0                         test     al, al
0000000007cc6641: 7407                         je       0x7cc664a
0000000007cc6643: b001                         mov      al, 1
0000000007cc6645: 5b                           pop      rbx
0000000007cc6646: c3                           ret
0000000007cc6647: 31c0                         xor      eax, eax
0000000007cc6649: c3                           ret
0000000007cc664a: 31c0                         xor      eax, eax
0000000007cc664c: 5b                           pop      rbx
0000000007cc664d: c3                           ret

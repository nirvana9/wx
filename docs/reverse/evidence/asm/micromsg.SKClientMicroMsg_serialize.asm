0000000007c33970: 4156                         push     r14
0000000007c33972: 53                           push     rbx
0000000007c33973: 50                           push     rax
0000000007c33974: 4889f3                       mov      rbx, rsi
0000000007c33977: 4989fe                       mov      r14, rdi
0000000007c3397a: 8b4724                       mov      eax, dword ptr [rdi + 0x24]
0000000007c3397d: a801                         test     al, 1
0000000007c3397f: 7514                         jne      0x7c33995
0000000007c33981: a802                         test     al, 2
0000000007c33983: 7529                         jne      0x7c339ae
0000000007c33985: a804                         test     al, 4
0000000007c33987: 753e                         jne      0x7c339c7
0000000007c33989: a808                         test     al, 8
0000000007c3398b: 7553                         jne      0x7c339e0
0000000007c3398d: 4883c408                     add      rsp, 8
0000000007c33991: 5b                           pop      rbx
0000000007c33992: 415e                         pop      r14
0000000007c33994: c3                           ret
0000000007c33995: 498b7608                     mov      rsi, qword ptr [r14 + 8]
0000000007c33999: bf01000000                   mov      edi, 1
0000000007c3399e: 4889da                       mov      rdx, rbx
0000000007c339a1: e8aaeb3101                   call     0x8f52550
0000000007c339a6: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
0000000007c339aa: a802                         test     al, 2
0000000007c339ac: 74d7                         je       0x7c33985
0000000007c339ae: 418b7610                     mov      esi, dword ptr [r14 + 0x10]
0000000007c339b2: bf02000000                   mov      edi, 2
0000000007c339b7: 4889da                       mov      rdx, rbx
0000000007c339ba: e8c1e93101                   call     0x8f52380
0000000007c339bf: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
0000000007c339c3: a804                         test     al, 4
0000000007c339c5: 74c2                         je       0x7c33989
0000000007c339c7: 418b7614                     mov      esi, dword ptr [r14 + 0x14]
0000000007c339cb: bf03000000                   mov      edi, 3
0000000007c339d0: 4889da                       mov      rdx, rbx
0000000007c339d3: e8a8e93101                   call     0x8f52380
0000000007c339d8: 418b4624                     mov      eax, dword ptr [r14 + 0x24]
0000000007c339dc: a808                         test     al, 8
0000000007c339de: 74ad                         je       0x7c3398d
0000000007c339e0: 498b7618                     mov      rsi, qword ptr [r14 + 0x18]
0000000007c339e4: bf04000000                   mov      edi, 4
0000000007c339e9: 4889da                       mov      rdx, rbx
0000000007c339ec: 4883c408                     add      rsp, 8
0000000007c339f0: 5b                           pop      rbx
0000000007c339f1: 415e                         pop      r14
0000000007c339f3: e958eb3101                   jmp      0x8f52550

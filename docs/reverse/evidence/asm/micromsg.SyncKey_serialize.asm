0000000007dee700: 4157                         push     r15
0000000007dee702: 4156                         push     r14
0000000007dee704: 53                           push     rbx
0000000007dee705: 4889f3                       mov      rbx, rsi
0000000007dee708: 4989fe                       mov      r14, rdi
0000000007dee70b: f6472801                     test     byte ptr [rdi + 0x28], 1
0000000007dee70f: 7411                         je       0x7dee722
0000000007dee711: 418b7620                     mov      esi, dword ptr [r14 + 0x20]
0000000007dee715: bf01000000                   mov      edi, 1
0000000007dee71a: 4889da                       mov      rdx, rbx
0000000007dee71d: e85e3c1601                   call     0x8f52380
0000000007dee722: 41837e1000                   cmp      dword ptr [r14 + 0x10], 0
0000000007dee727: 7e28                         jle      0x7dee751
0000000007dee729: 4531ff                       xor      r15d, r15d
0000000007dee72c: 0f1f4000                     nop      dword ptr [rax]
0000000007dee730: 498b4608                     mov      rax, qword ptr [r14 + 8]
0000000007dee734: 4a8b34f8                     mov      rsi, qword ptr [rax + r15*8]
0000000007dee738: bf02000000                   mov      edi, 2
0000000007dee73d: 4889da                       mov      rdx, rbx
0000000007dee740: e8ab3f1601                   call     0x8f526f0
0000000007dee745: 49ffc7                       inc      r15
0000000007dee748: 49634610                     movsxd   rax, dword ptr [r14 + 0x10]
0000000007dee74c: 4939c7                       cmp      r15, rax
0000000007dee74f: 7cdf                         jl       0x7dee730
0000000007dee751: 5b                           pop      rbx
0000000007dee752: 415e                         pop      r14
0000000007dee754: 415f                         pop      r15
0000000007dee756: c3                           ret

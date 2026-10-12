0000000008dfa0b4: 0f57c0                       xorps    xmm0, xmm0
0000000008dfa0b7: 0f29442410                   movaps   xmmword ptr [rsp + 0x10], xmm0
0000000008dfa0bc: 48c744242000000000           mov      qword ptr [rsp + 0x20], 0
0000000008dfa0c5: 498d8fa8010000               lea      rcx, [r15 + 0x1a8]
0000000008dfa0cc: 488dbc2400040000             lea      rdi, [rsp + 0x400]
0000000008dfa0d4: 4c89f6                       mov      rsi, r14
0000000008dfa0d7: 89da                         mov      edx, ebx
0000000008dfa0d9: e842aeffff                   call     0x8df4f20
0000000008dfa0de: 488bb424d8030000             mov      rsi, qword ptr [rsp + 0x3d8]
0000000008dfa29f: 0fb6842438040000             movzx    eax, byte ptr [rsp + 0x438]
0000000008dfa2a7: a801                         test     al, 1
0000000008dfa2a9: 0f84c2020000                 je       0x8dfa571
0000000008dfa2af: 488b842440040000             mov      rax, qword ptr [rsp + 0x440]
0000000008dfa2b7: 4885c0                       test     rax, rax
0000000008dfa2ba: 0f84bc020000                 je       0x8dfa57c
0000000008dfa2c0: 488db42438040000             lea      rsi, [rsp + 0x438]
0000000008dfa2c8: 488d7c2410                   lea      rdi, [rsp + 0x10]
0000000008dfa2cd: e8de3a71fb                   call     0x450ddb0
0000000008dfa2d2: bf01000000                   mov      edi, 1
0000000008dfaa00: 488d942440010000             lea      rdx, [rsp + 0x140]
0000000008dfaa08: 4c89e7                       mov      rdi, r12
0000000008dfaa0b: 89de                         mov      esi, ebx
0000000008dfaa0d: 4c89e9                       mov      rcx, r13
0000000008dfaa10: 4189c0                       mov      r8d, eax
0000000008dfaa13: 4156                         push     r14
0000000008dfaa15: 55                           push     rbp
0000000008dfaa16: ff742440                     push     qword ptr [rsp + 0x40]
0000000008dfaa1a: 4153                         push     r11
0000000008dfaa1c: 4157                         push     r15
0000000008dfaa1e: 488d44243c                   lea      rax, [rsp + 0x3c]
0000000008dfaa23: 50                           push     rax
0000000008dfaa24: 488d44243c                   lea      rax, [rsp + 0x3c]
0000000008dfaa29: 50                           push     rax
0000000008dfaa2a: 488d842428030000             lea      rax, [rsp + 0x328]
0000000008dfaa32: 50                           push     rax
0000000008dfaa33: 4152                         push     r10
0000000008dfaa35: e866520000                   call     0x8dffca0
0000000008dfaa3a: 4883c450                     add      rsp, 0x50

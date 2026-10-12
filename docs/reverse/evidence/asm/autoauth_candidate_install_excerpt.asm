00000000077d4cd1: 488dbc24f8000000             lea      rdi, [rsp + 0xf8]
00000000077d4cd9: 488d8c2428010000             lea      rcx, [rsp + 0x128]
00000000077d4ce1: 4c8d842438020000             lea      r8, [rsp + 0x238]
00000000077d4ce9: 4c8d8c2418020000             lea      r9, [rsp + 0x218]
00000000077d4cf1: 488bb42458020000             mov      rsi, qword ptr [rsp + 0x258]
00000000077d4cf9: 31d2                         xor      edx, edx
00000000077d4cfb: 50                           push     rax
00000000077d4cfc: 6a00                         push     0
00000000077d4cfe: 4152                         push     r10
00000000077d4d00: e81b400000                   call     0x77d8d20
00000000077d5ef2: 488d942440010000             lea      rdx, [rsp + 0x140]
00000000077d5efa: 488d8c2480000000             lea      rcx, [rsp + 0x80]
00000000077d5f02: 4c8d8424c0010000             lea      r8, [rsp + 0x1c0]
00000000077d5f0a: 4c8d4c2420                   lea      r9, [rsp + 0x20]
00000000077d5f0f: e8bc6effff                   call     0x77ccdd0
00000000077d61c6: 488dbc2410030000             lea      rdi, [rsp + 0x310]
00000000077d61ce: e8cd7186fe                   call     0x603d3a0
00000000077d61d3: 488bbc2410030000             mov      rdi, qword ptr [rsp + 0x310]
00000000077d61db: 488db42440010000             lea      rsi, [rsp + 0x140]
00000000077d61e3: e8f8469cfe                   call     0x619a8e0
00000000077d6861: 488dbc2410030000             lea      rdi, [rsp + 0x310]
00000000077d6869: e8326b86fe                   call     0x603d3a0
00000000077d686e: 488bbc2410030000             mov      rdi, qword ptr [rsp + 0x310]
00000000077d6876: 488db42480000000             lea      rsi, [rsp + 0x80]
00000000077d687e: e84d449cfe                   call     0x619acd0
00000000077d6908: 488dbc2410030000             lea      rdi, [rsp + 0x310]
00000000077d6910: e88b6a86fe                   call     0x603d3a0
00000000077d6915: 488bbc2410030000             mov      rdi, qword ptr [rsp + 0x310]
00000000077d691d: 488db424c0010000             lea      rsi, [rsp + 0x1c0]
00000000077d6925: e8c6439cfe                   call     0x619acf0
00000000077d69a8: 488dbc2410030000             lea      rdi, [rsp + 0x310]
00000000077d69b0: e8eb6986fe                   call     0x603d3a0
00000000077d69b5: 488bbc2410030000             mov      rdi, qword ptr [rsp + 0x310]
00000000077d69bd: 488d742420                   lea      rsi, [rsp + 0x20]
00000000077d69c2: e849439cfe                   call     0x619ad10
00000000077d6b18: e8c35986fe                   call     0x603c4e0
00000000077d6b1d: 488b08                       mov      rcx, qword ptr [rax]
00000000077d6b20: 4889c7                       mov      rdi, rax
00000000077d6b23: ff5118                       call     qword ptr [rcx + 0x18]
00000000077d6b26: 4885c0                       test     rax, rax
00000000077d6b29: 740c                         je       0x77d6b37
00000000077d6b2b: 488b08                       mov      rcx, qword ptr [rax]
00000000077d6b2e: 4889c7                       mov      rdi, rax
00000000077d6b31: ff91e0000000                 call     qword ptr [rcx + 0xe0]

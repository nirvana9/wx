0000000009b0fefe: 660f7f85d0efffff             movdqa   xmmword ptr [rbp - 0x1030], xmm0
0000000009b0ff06: 660f7f85c0efffff             movdqa   xmmword ptr [rbp - 0x1040], xmm0
0000000009b0ff0e: c785e0efffff00000000         mov      dword ptr [rbp - 0x1020], 0
0000000009b0ff18: ba24000000                   mov      edx, 0x24
0000000009b0ff1d: 4489f7                       mov      edi, r14d
0000000009b0ff20: 488db5c0efffff               lea      rsi, [rbp - 0x1040]
0000000009b0ff27: e814efb500                   call     0xa66ee40
0000000009b0ff2c: 4883f824                     cmp      rax, 0x24
0000000009b0ff30: 0f8510030000                 jne      0x9b10246
0000000009b0ff36: c78510feffff00000000         mov      dword ptr [rbp - 0x1f0], 0
0000000009b0ff40: ba04000000                   mov      edx, 4
0000000009b0ff45: 4489f7                       mov      edi, r14d
0000000009b0ff48: 4c89e6                       mov      rsi, r12
0000000009b0ff4b: e8f0eeb500                   call     0xa66ee40
0000000009b0ff50: 4883f804                     cmp      rax, 4
0000000009b0ff54: 0f85ec020000                 jne      0x9b10246
0000000009b0ff5a: 0fb685c0efffff               movzx    eax, byte ptr [rbp - 0x1040]
0000000009b0ff61: 4835ff000000                 xor      rax, 0xff
0000000009b0ff67: 488d15825f05f9               lea      rdx, [rip - 0x6faa07e]
0000000009b0ff6e: 8b1c82                       mov      ebx, dword ptr [rdx + rax*4]
0000000009b0ff71: b8ffffff00                   mov      eax, 0xffffff
0000000009b0ff76: 31c3                         xor      ebx, eax
0000000009b0ff78: 0fb685c1efffff               movzx    eax, byte ptr [rbp - 0x103f]
0000000009b0ff7f: 0fb6cb                       movzx    ecx, bl
0000000009b0ff82: 31c1                         xor      ecx, eax
0000000009b0ff84: c1eb08                       shr      ebx, 8
0000000009b0ff87: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b0ff8a: 0fb685c2efffff               movzx    eax, byte ptr [rbp - 0x103e]
0000000009b0ff91: 0fb6cb                       movzx    ecx, bl
0000000009b0ff94: 31c1                         xor      ecx, eax
0000000009b0ff96: c1eb08                       shr      ebx, 8
0000000009b0ff99: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b0ff9c: 0fb685c3efffff               movzx    eax, byte ptr [rbp - 0x103d]
0000000009b0ffa3: 0fb6cb                       movzx    ecx, bl
0000000009b0ffa6: 31c1                         xor      ecx, eax
0000000009b0ffa8: c1eb08                       shr      ebx, 8
0000000009b0ffab: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b0ffae: 0fb685c4efffff               movzx    eax, byte ptr [rbp - 0x103c]
0000000009b0ffb5: 0fb6cb                       movzx    ecx, bl
0000000009b0ffb8: 31c1                         xor      ecx, eax
0000000009b0ffba: c1eb08                       shr      ebx, 8
0000000009b0ffbd: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b0ffc0: 0fb685c5efffff               movzx    eax, byte ptr [rbp - 0x103b]
0000000009b0ffc7: 0fb6cb                       movzx    ecx, bl
0000000009b0ffca: 31c1                         xor      ecx, eax
0000000009b0ffcc: c1eb08                       shr      ebx, 8
0000000009b0ffcf: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b0ffd2: 0fb685c6efffff               movzx    eax, byte ptr [rbp - 0x103a]
0000000009b0ffd9: 0fb6cb                       movzx    ecx, bl
0000000009b0ffdc: 31c1                         xor      ecx, eax
0000000009b0ffde: c1eb08                       shr      ebx, 8
0000000009b0ffe1: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b0ffe4: 0fb685c7efffff               movzx    eax, byte ptr [rbp - 0x1039]
0000000009b0ffeb: 0fb6cb                       movzx    ecx, bl
0000000009b0ffee: 31c1                         xor      ecx, eax
0000000009b0fff0: c1eb08                       shr      ebx, 8
0000000009b0fff3: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b0fff6: 0fb685c8efffff               movzx    eax, byte ptr [rbp - 0x1038]
0000000009b0fffd: 0fb6cb                       movzx    ecx, bl
0000000009b10000: 31c1                         xor      ecx, eax
0000000009b10002: c1eb08                       shr      ebx, 8
0000000009b10005: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b10008: 0fb685c9efffff               movzx    eax, byte ptr [rbp - 0x1037]
0000000009b1000f: 0fb6cb                       movzx    ecx, bl
0000000009b10012: 31c1                         xor      ecx, eax
0000000009b10014: c1eb08                       shr      ebx, 8
0000000009b10017: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b1001a: 0fb685caefffff               movzx    eax, byte ptr [rbp - 0x1036]
0000000009b10021: 0fb6cb                       movzx    ecx, bl
0000000009b10024: 31c1                         xor      ecx, eax
0000000009b10026: c1eb08                       shr      ebx, 8
0000000009b10029: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b1002c: 0fb685cbefffff               movzx    eax, byte ptr [rbp - 0x1035]
0000000009b10033: 0fb6cb                       movzx    ecx, bl
0000000009b10036: 31c1                         xor      ecx, eax
0000000009b10038: c1eb08                       shr      ebx, 8
0000000009b1003b: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b1003e: 0fb685ccefffff               movzx    eax, byte ptr [rbp - 0x1034]
0000000009b10045: 0fb6cb                       movzx    ecx, bl
0000000009b10048: 31c1                         xor      ecx, eax
0000000009b1004a: c1eb08                       shr      ebx, 8
0000000009b1004d: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b10050: 0fb685cdefffff               movzx    eax, byte ptr [rbp - 0x1033]
0000000009b10057: 0fb6cb                       movzx    ecx, bl
0000000009b1005a: 31c1                         xor      ecx, eax
0000000009b1005c: c1eb08                       shr      ebx, 8
0000000009b1005f: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b10062: 0fb685ceefffff               movzx    eax, byte ptr [rbp - 0x1032]
0000000009b10069: 0fb6cb                       movzx    ecx, bl
0000000009b1006c: 31c1                         xor      ecx, eax
0000000009b1006e: c1eb08                       shr      ebx, 8
0000000009b10071: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b10074: 0fb685cfefffff               movzx    eax, byte ptr [rbp - 0x1031]
0000000009b1007b: 0fb6cb                       movzx    ecx, bl
0000000009b1007e: 31c1                         xor      ecx, eax
0000000009b10080: c1eb08                       shr      ebx, 8
0000000009b10083: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b10086: 0fb685d0efffff               movzx    eax, byte ptr [rbp - 0x1030]
0000000009b1008d: 0fb6cb                       movzx    ecx, bl
0000000009b10090: 31c1                         xor      ecx, eax
0000000009b10092: c1eb08                       shr      ebx, 8
0000000009b10095: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b10098: 0fb685d1efffff               movzx    eax, byte ptr [rbp - 0x102f]
0000000009b1009f: 0fb6cb                       movzx    ecx, bl
0000000009b100a2: 31c1                         xor      ecx, eax
0000000009b100a4: c1eb08                       shr      ebx, 8
0000000009b100a7: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b100aa: 0fb685d2efffff               movzx    eax, byte ptr [rbp - 0x102e]
0000000009b100b1: 0fb6cb                       movzx    ecx, bl
0000000009b100b4: 31c1                         xor      ecx, eax
0000000009b100b6: c1eb08                       shr      ebx, 8
0000000009b100b9: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b100bc: 0fb685d3efffff               movzx    eax, byte ptr [rbp - 0x102d]
0000000009b100c3: 0fb6cb                       movzx    ecx, bl
0000000009b100c6: 31c1                         xor      ecx, eax
0000000009b100c8: c1eb08                       shr      ebx, 8
0000000009b100cb: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b100ce: 0fb685d4efffff               movzx    eax, byte ptr [rbp - 0x102c]
0000000009b100d5: 0fb6cb                       movzx    ecx, bl
0000000009b100d8: 31c1                         xor      ecx, eax
0000000009b100da: c1eb08                       shr      ebx, 8
0000000009b100dd: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b100e0: 0fb685d5efffff               movzx    eax, byte ptr [rbp - 0x102b]
0000000009b100e7: 0fb6cb                       movzx    ecx, bl
0000000009b100ea: 31c1                         xor      ecx, eax
0000000009b100ec: c1eb08                       shr      ebx, 8
0000000009b100ef: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b100f2: 0fb685d6efffff               movzx    eax, byte ptr [rbp - 0x102a]
0000000009b100f9: 0fb6cb                       movzx    ecx, bl
0000000009b100fc: 31c1                         xor      ecx, eax
0000000009b100fe: c1eb08                       shr      ebx, 8
0000000009b10101: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b10104: 0fb685d7efffff               movzx    eax, byte ptr [rbp - 0x1029]
0000000009b1010b: 0fb6cb                       movzx    ecx, bl
0000000009b1010e: 31c1                         xor      ecx, eax
0000000009b10110: c1eb08                       shr      ebx, 8
0000000009b10113: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b10116: 0fb685d8efffff               movzx    eax, byte ptr [rbp - 0x1028]
0000000009b1011d: 0fb6cb                       movzx    ecx, bl
0000000009b10120: 31c1                         xor      ecx, eax
0000000009b10122: c1eb08                       shr      ebx, 8
0000000009b10125: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b10128: 0fb685d9efffff               movzx    eax, byte ptr [rbp - 0x1027]
0000000009b1012f: 0fb6cb                       movzx    ecx, bl
0000000009b10132: 31c1                         xor      ecx, eax
0000000009b10134: c1eb08                       shr      ebx, 8
0000000009b10137: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b1013a: 0fb685daefffff               movzx    eax, byte ptr [rbp - 0x1026]
0000000009b10141: 0fb6cb                       movzx    ecx, bl
0000000009b10144: 31c1                         xor      ecx, eax
0000000009b10146: c1eb08                       shr      ebx, 8
0000000009b10149: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b1014c: 0fb685dbefffff               movzx    eax, byte ptr [rbp - 0x1025]
0000000009b10153: 0fb6cb                       movzx    ecx, bl
0000000009b10156: 31c1                         xor      ecx, eax
0000000009b10158: c1eb08                       shr      ebx, 8
0000000009b1015b: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b1015e: 0fb685dcefffff               movzx    eax, byte ptr [rbp - 0x1024]
0000000009b10165: 0fb6cb                       movzx    ecx, bl
0000000009b10168: 31c1                         xor      ecx, eax
0000000009b1016a: c1eb08                       shr      ebx, 8
0000000009b1016d: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b10170: 0fb685ddefffff               movzx    eax, byte ptr [rbp - 0x1023]
0000000009b10177: 0fb6cb                       movzx    ecx, bl
0000000009b1017a: 31c1                         xor      ecx, eax
0000000009b1017c: c1eb08                       shr      ebx, 8
0000000009b1017f: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b10182: 0fb685deefffff               movzx    eax, byte ptr [rbp - 0x1022]
0000000009b10189: 0fb6cb                       movzx    ecx, bl
0000000009b1018c: 31c1                         xor      ecx, eax
0000000009b1018e: c1eb08                       shr      ebx, 8
0000000009b10191: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b10194: 0fb685dfefffff               movzx    eax, byte ptr [rbp - 0x1021]
0000000009b1019b: 0fb6cb                       movzx    ecx, bl
0000000009b1019e: 31c1                         xor      ecx, eax
0000000009b101a0: c1eb08                       shr      ebx, 8
0000000009b101a3: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b101a6: 0fb685e0efffff               movzx    eax, byte ptr [rbp - 0x1020]
0000000009b101ad: 0fb6cb                       movzx    ecx, bl
0000000009b101b0: 31c1                         xor      ecx, eax
0000000009b101b2: c1eb08                       shr      ebx, 8
0000000009b101b5: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b101b8: 0fb685e1efffff               movzx    eax, byte ptr [rbp - 0x101f]
0000000009b101bf: 0fb6cb                       movzx    ecx, bl
0000000009b101c2: 31c1                         xor      ecx, eax
0000000009b101c4: c1eb08                       shr      ebx, 8
0000000009b101c7: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b101ca: 0fb685e2efffff               movzx    eax, byte ptr [rbp - 0x101e]
0000000009b101d1: 0fb6cb                       movzx    ecx, bl
0000000009b101d4: 31c1                         xor      ecx, eax
0000000009b101d6: c1eb08                       shr      ebx, 8
0000000009b101d9: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b101dc: 0fb685e3efffff               movzx    eax, byte ptr [rbp - 0x101d]
0000000009b101e3: 0fb6cb                       movzx    ecx, bl
0000000009b101e6: 31c1                         xor      ecx, eax
0000000009b101e8: c1eb08                       shr      ebx, 8
0000000009b101eb: 331c8a                       xor      ebx, dword ptr [rdx + rcx*4]
0000000009b101ee: f7d3                         not      ebx
0000000009b101f0: 448bbd10feffff               mov      r15d, dword ptr [rbp - 0x1f0]
0000000009b101f7: 4489f7                       mov      edi, r14d
0000000009b101fa: e8f1fcaafa                   call     0x45bfef0
0000000009b101ff: 4139df                       cmp      r15d, ebx
0000000009b10202: 0f8501060000                 jne      0x9b10809
0000000009b10208: bf28000000                   mov      edi, 0x28
0000000009b1020d: e88edbb500                   call     0xa66dda0
0000000009b10212: 660f6f85c0efffff             movdqa   xmm0, xmmword ptr [rbp - 0x1040]
0000000009b1021a: 660f6f8dd0efffff             movdqa   xmm1, xmmword ptr [rbp - 0x1030]
0000000009b10222: f30f7f00                     movdqu   xmmword ptr [rax], xmm0
0000000009b10226: f30f7f4810                   movdqu   xmmword ptr [rax + 0x10], xmm1
0000000009b1022b: 8b8de0efffff                 mov      ecx, dword ptr [rbp - 0x1020]
0000000009b10231: 894820                       mov      dword ptr [rax + 0x20], ecx
0000000009b10234: 48898570fdffff               mov      qword ptr [rbp - 0x290], rax
0000000009b1023b: c6402400                     mov      byte ptr [rax + 0x24], 0
0000000009b1023f: b329                         mov      bl, 0x29

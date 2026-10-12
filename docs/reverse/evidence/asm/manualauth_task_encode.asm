00000000077f7000: 53                           push     rbx
00000000077f7001: 4883ec20                     sub      rsp, 0x20
00000000077f7005: 4889f3                       mov      rbx, rsi
00000000077f7008: c60100                       mov      byte ptr [rcx], 0
00000000077f700b: 488db788000000               lea      rsi, [rdi + 0x88]
00000000077f7012: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000077f701c: 4889442410                   mov      qword ptr [rsp + 0x10], rax
00000000077f7021: 0f2805782656f9               movaps   xmm0, xmmword ptr [rip - 0x6a9d988]
00000000077f7028: 0f290424                     movaps   xmmword ptr [rsp], xmm0
00000000077f702c: 4889e7                       mov      rdi, rsp
00000000077f702f: e80c977501                   call     0x8f50740
00000000077f7034: 0fb61424                     movzx    edx, byte ptr [rsp]
00000000077f7038: f6c201                       test     dl, 1
00000000077f703b: 740b                         je       0x77f7048
00000000077f703d: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
00000000077f7042: 8b542408                     mov      edx, dword ptr [rsp + 8]
00000000077f7046: eb07                         jmp      0x77f704f
00000000077f7048: d1ea                         shr      edx, 1
00000000077f704a: 488d742401                   lea      rsi, [rsp + 1]
00000000077f704f: 4889df                       mov      rdi, rbx
00000000077f7052: e8b9eb1c00                   call     0x79c5c10
00000000077f7057: f6042401                     test     byte ptr [rsp], 1
00000000077f705b: 740a                         je       0x77f7067
00000000077f705d: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000077f7062: e8d930d1fc                   call     0x450a140
00000000077f7067: b001                         mov      al, 1
00000000077f7069: 4883c420                     add      rsp, 0x20
00000000077f706d: 5b                           pop      rbx
00000000077f706e: c3                           ret
00000000077f706f: 4889c3                       mov      rbx, rax
00000000077f7072: f6042401                     test     byte ptr [rsp], 1
00000000077f7076: 740a                         je       0x77f7082
00000000077f7078: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000077f707d: e8be30d1fc                   call     0x450a140
00000000077f7082: 4889df                       mov      rdi, rbx
00000000077f7085: e8965dcffc                   call     0x44ece20

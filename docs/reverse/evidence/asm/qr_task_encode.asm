00000000077ecfe0: 4157                         push     r15
00000000077ecfe2: 4156                         push     r14
00000000077ecfe4: 53                           push     rbx
00000000077ecfe5: 4883ec20                     sub      rsp, 0x20
00000000077ecfe9: 4989ce                       mov      r14, rcx
00000000077ecfec: 4889f3                       mov      rbx, rsi
00000000077ecfef: 4989ff                       mov      r15, rdi
00000000077ecff2: 4c89c6                       mov      rsi, r8
00000000077ecff5: e8f6000000                   call     0x77ed0f0
00000000077ecffa: 418806                       mov      byte ptr [r14], al
00000000077ecffd: 4981c788000000               add      r15, 0x88
00000000077ed004: 48b8aaaaaaaaaaaaaaaa         movabs   rax, 0xaaaaaaaaaaaaaaaa
00000000077ed00e: 4889442410                   mov      qword ptr [rsp + 0x10], rax
00000000077ed013: 0f280586c656f9               movaps   xmm0, xmmword ptr [rip - 0x6a9397a]
00000000077ed01a: 0f290424                     movaps   xmmword ptr [rsp], xmm0
00000000077ed01e: 4889e7                       mov      rdi, rsp
00000000077ed021: 4c89fe                       mov      rsi, r15
00000000077ed024: e817377601                   call     0x8f50740
00000000077ed029: 0fb61424                     movzx    edx, byte ptr [rsp]
00000000077ed02d: f6c201                       test     dl, 1
00000000077ed030: 740b                         je       0x77ed03d
00000000077ed032: 488b742410                   mov      rsi, qword ptr [rsp + 0x10]
00000000077ed037: 8b542408                     mov      edx, dword ptr [rsp + 8]
00000000077ed03b: eb07                         jmp      0x77ed044
00000000077ed03d: d1ea                         shr      edx, 1
00000000077ed03f: 488d742401                   lea      rsi, [rsp + 1]
00000000077ed044: 4889df                       mov      rdi, rbx
00000000077ed047: e8c48b1d00                   call     0x79c5c10
00000000077ed04c: f6042401                     test     byte ptr [rsp], 1
00000000077ed050: 740a                         je       0x77ed05c
00000000077ed052: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000077ed057: e8e4d0d1fc                   call     0x450a140
00000000077ed05c: b001                         mov      al, 1
00000000077ed05e: 4883c420                     add      rsp, 0x20
00000000077ed062: 5b                           pop      rbx
00000000077ed063: 415e                         pop      r14
00000000077ed065: 415f                         pop      r15
00000000077ed067: c3                           ret
00000000077ed068: 4889c3                       mov      rbx, rax
00000000077ed06b: f6042401                     test     byte ptr [rsp], 1
00000000077ed06f: 740a                         je       0x77ed07b
00000000077ed071: 488b7c2410                   mov      rdi, qword ptr [rsp + 0x10]
00000000077ed076: e8c5d0d1fc                   call     0x450a140
00000000077ed07b: 4889df                       mov      rdi, rbx
00000000077ed07e: e89dfdcffc                   call     0x44ece20

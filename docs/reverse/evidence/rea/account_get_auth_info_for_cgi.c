
byte * wx_8df4f20(byte *param_1,long param_2,ulong param_3,byte *param_4)

{
  char cVar1;
  long lVar2;
  int iVar3;
  long *plVar4;
  long *plVar5;
  ulong uVar6;
  long lVar7;
  long lVar8;
  char *pcVar9;
  char *pcVar10;
  uint uVar11;
  ulong uVar12;
  long *plVar13;
  bool bVar14;
  byte local_350;
  char local_34f [15];
  char *local_340;
  undefined8 *local_338;
  byte **local_330;
  byte **local_328;
  undefined1 **local_320;
  undefined8 *local_318;
  undefined8 *local_310;
  undefined8 uStack_308;
  undefined8 uStack_300;
  undefined8 uStack_2f8;
  undefined8 uStack_2f0;
  undefined8 local_2e8;
  undefined8 uStack_2e0;
  undefined8 local_2d8;
  undefined8 uStack_2d0;
  undefined8 local_2c8;
  undefined8 uStack_2c0;
  undefined8 local_2b8;
  char local_2b0 [72];
  undefined8 local_268;
  char local_260 [72];
  byte local_218 [16];
  undefined8 local_208;
  undefined8 local_200;
  char local_1f8 [72];
  undefined1 *local_1b0;
  undefined1 local_1a8 [72];
  byte *local_160;
  undefined1 local_158;
  byte *local_110;
  undefined1 local_108;
  undefined1 local_c0 [144];
  
  param_3 = param_3 & 0xffffffff;
  func_0x04e12fd0();
  plVar4 = *(long **)(param_2 + 0x188);
  if (plVar4 != (long *)(param_2 + 400)) {
LAB_08df4ffc:
    plVar5 = (long *)func_0x0848e320(plVar4 + 0x12,param_4);
    if (plVar5 == plVar4 + 0x13) goto code_r0x08df501b;
    FUN_08df5710(param_1,plVar4 + 5);
    *(int *)(param_1 + 0x18) = (int)plVar5[7];
    iVar3 = func_0x09116c90(0);
    if (iVar3 != 0) {
      func_0x091115a0(local_c0,0,"mars::account","account_core.cc","GetAuthInfoForCgi",0x114,0,0);
      local_268 = (char *)0x0;
      uVar6 = 7;
      pcVar10 = (char *)((long)&local_268 + 7);
      do {
        pcVar9 = pcVar10;
        uVar11 = (uint)param_3;
        pcVar9[1] = "ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                    [(int)(param_3 / 10) * -10 + uVar11 + 0x23];
        pcVar10 = pcVar9 + 1;
        uVar6 = uVar6 + 1;
        param_3 = param_3 / 10;
      } while (9 < uVar11);
      local_268 = local_260;
      pcVar9[2] = '\0';
      if (8 < uVar6) {
        pcVar9 = local_260;
        do {
          pcVar9 = pcVar9 + 1;
          cVar1 = *pcVar10;
          *pcVar10 = pcVar9[-1];
          pcVar10 = pcVar10 + -1;
          pcVar9[-1] = cVar1;
        } while (pcVar9 < pcVar10);
      }
      if ((*param_4 & 1) == 0) {
        local_110 = param_4 + 1;
        if ((*param_1 & 1) == 0) goto LAB_08df51dc;
LAB_08df554e:
        local_160 = *(byte **)(param_1 + 0x10);
      }
      else {
        local_110 = *(byte **)(param_4 + 0x10);
        if ((*param_1 & 1) != 0) goto LAB_08df554e;
LAB_08df51dc:
        local_160 = param_1 + 1;
      }
      local_108 = 0;
      local_158 = 0;
      func_0x0a66e2a0(local_1a8,0x41,&DAT_00f77dff,*(undefined4 *)(param_1 + 0x18));
      local_1b0 = local_1a8;
      lVar2 = plVar4[4];
      local_2b8 = (char *)0x0;
      lVar8 = 8;
      iVar3 = (int)lVar2;
      do {
        lVar7 = lVar8;
        local_2b0[lVar7 + -8] =
             "ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
             [(long)(iVar3 % 10) + 0x23];
        lVar8 = lVar7 + 1;
        uVar11 = iVar3 + 9;
        iVar3 = iVar3 / 10;
      } while (0x12 < uVar11);
      if ((int)lVar2 < 0) {
        local_2b0[lVar7 + -7] = '-';
        lVar8 = lVar7 + 2;
      }
      local_2b0[lVar8 + -8] = '\0';
      if (9 < lVar8) {
        pcVar9 = (char *)((long)&uStack_2c0 + lVar8 + 7);
        pcVar10 = local_2b0;
        do {
          pcVar10 = pcVar10 + 1;
          cVar1 = *pcVar9;
          *pcVar9 = pcVar10[-1];
          pcVar10[-1] = cVar1;
          pcVar9 = pcVar9 + -1;
        } while (pcVar10 < pcVar9);
      }
      local_338 = &local_268;
      local_330 = &local_110;
      local_328 = &local_160;
      local_320 = &local_1b0;
      local_318 = &local_2b8;
      local_310 = (undefined8 *)0x0;
      uStack_308 = 0;
      uStack_300 = 0;
      uStack_2f8 = 0;
      uStack_2f0 = 0;
      local_2e8 = 0;
      uStack_2e0 = 0;
      local_2d8 = 0;
      uStack_2d0 = 0;
      local_2c8 = 0;
      uStack_2c0 = 0;
      local_2b8 = local_2b0;
      func_0x091118f0(local_c0,"mmpack taskid:%_, host:%_, identify:%_, algo:%_, business_type:%_",
                      &local_338);
      goto LAB_08df56e0;
    }
    goto LAB_08df56e5;
  }
LAB_08df4f64:
  param_1[0] = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[10] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  param_1[0xf] = 0;
  param_1[0x10] = 0;
  param_1[0x11] = 0;
  param_1[0x12] = 0;
  param_1[0x13] = 0;
  param_1[0x14] = 0;
  param_1[0x15] = 0;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  param_1[0x70] = 0;
  param_1[0x71] = 0;
  param_1[0x72] = 0;
  param_1[0x73] = 0;
  param_1[0x74] = 0;
  param_1[0x75] = 0;
  param_1[0x76] = 0;
  param_1[0x77] = 0;
  param_1[0x78] = 0;
  param_1[0x79] = 0;
  param_1[0x7a] = 0;
  param_1[0x7b] = 0;
  param_1[0x7c] = 0;
  param_1[0x7d] = 0;
  param_1[0x7e] = 0;
  param_1[0x7f] = 0;
  param_1[0x20] = 0;
  param_1[0x21] = 0;
  param_1[0x22] = 0;
  param_1[0x23] = 0;
  param_1[0x24] = 0;
  param_1[0x25] = 0;
  param_1[0x26] = 0;
  param_1[0x27] = 0;
  param_1[0x28] = 0;
  param_1[0x29] = 0;
  param_1[0x2a] = 0;
  param_1[0x2b] = 0;
  param_1[0x2c] = 0;
  param_1[0x2d] = 0;
  param_1[0x2e] = 0;
  param_1[0x2f] = 0;
  param_1[0x30] = 0;
  param_1[0x31] = 0;
  param_1[0x32] = 0;
  param_1[0x33] = 0;
  param_1[0x34] = 0;
  param_1[0x35] = 0;
  param_1[0x36] = 0;
  param_1[0x37] = 0;
  param_1[0x38] = 0;
  param_1[0x39] = 0;
  param_1[0x3a] = 0;
  param_1[0x3b] = 0;
  param_1[0x3c] = 0;
  param_1[0x3d] = 0;
  param_1[0x3e] = 0;
  param_1[0x3f] = 0;
  param_1[0x40] = 0;
  param_1[0x41] = 0;
  param_1[0x42] = 0;
  param_1[0x43] = 0;
  param_1[0x44] = 0;
  param_1[0x45] = 0;
  param_1[0x46] = 0;
  param_1[0x47] = 0;
  param_1[0x48] = 0;
  param_1[0x49] = 0;
  param_1[0x4a] = 0;
  param_1[0x4b] = 0;
  param_1[0x4c] = 0;
  param_1[0x4d] = 0;
  param_1[0x4e] = 0;
  param_1[0x4f] = 0;
  param_1[0x50] = 0;
  param_1[0x51] = 0;
  param_1[0x52] = 0;
  param_1[0x53] = 0;
  param_1[0x54] = 0;
  param_1[0x55] = 0;
  param_1[0x56] = 0;
  param_1[0x57] = 0;
  param_1[0x58] = 0;
  param_1[0x59] = 0;
  param_1[0x5a] = 0;
  param_1[0x5b] = 0;
  param_1[0x5c] = 0;
  param_1[0x5d] = 0;
  param_1[0x5e] = 0;
  param_1[0x5f] = 0;
  param_1[0x60] = 0;
  param_1[0x61] = 0;
  param_1[0x62] = 0;
  param_1[99] = 0;
  param_1[100] = 0;
  param_1[0x65] = 0;
  param_1[0x66] = 0;
  param_1[0x67] = 0;
  *(byte **)(param_1 + 0x68) = param_1 + 0x70;
  param_1[0x80] = 0;
  param_1[0x81] = 0;
  param_1[0x82] = 0;
  param_1[0x83] = 0;
  param_1[0x84] = 0;
  param_1[0x85] = 0;
  param_1[0x86] = 0;
  param_1[0x87] = 0;
  param_1[0x88] = 0;
  param_1[0x89] = 0;
  param_1[0x8a] = 0;
  param_1[0x8b] = 0;
  param_1[0x8c] = 0;
  param_1[0x8d] = 0;
  param_1[0x8e] = 0;
  param_1[0x8f] = 0;
  param_1[0x90] = 0;
  param_1[0x91] = 0;
  param_1[0x92] = 0;
  param_1[0x93] = 0;
  param_1[0x94] = 0;
  param_1[0x95] = 0;
  param_1[0x96] = 0;
  param_1[0x97] = 0;
  param_1[0x98] = 0;
  param_1[0x99] = 0;
  param_1[0x9a] = 0;
  param_1[0x9b] = 0;
  param_1[0x9c] = 0;
  param_1[0x9d] = 0;
  param_1[0x9e] = 0;
  param_1[0x9f] = 0;
  param_1[0xa0] = 0;
  param_1[0xa1] = 0;
  param_1[0xa2] = 0;
  param_1[0xa3] = 0;
  param_1[0xa4] = 0;
  param_1[0xa5] = 0;
  param_1[0xa6] = 0;
  param_1[0xa7] = 0;
  param_1[0xa8] = 0;
  param_1[0xa9] = 0;
  param_1[0xaa] = 0;
  param_1[0xab] = 0;
  param_1[0xac] = 0;
  param_1[0xad] = 0;
  param_1[0xae] = 0;
  param_1[0xaf] = 0;
  param_1[0xb0] = 0;
  param_1[0xb1] = 0;
  param_1[0xb2] = 0;
  param_1[0xb3] = 0;
  param_1[0xb4] = 0;
  param_1[0xb5] = 0;
  param_1[0xb6] = 0;
  param_1[0xb7] = 0;
  func_0x0450ddb0(param_1 + 0x50,param_2 + 0xa0);
  if ((*(byte *)(param_2 + 0xf0) & 1) == 0) {
    if (*(byte *)(param_2 + 0xf0) >> 1 != 0) goto LAB_08df5061;
  }
  else if (*(long *)(param_2 + 0xf8) != 0) {
LAB_08df5061:
    if ((*(byte *)(param_2 + 0x108) & 1) == 0) {
      if (*(byte *)(param_2 + 0x108) >> 1 != 0) goto LAB_08df5080;
    }
    else if (*(long *)(param_2 + 0x110) != 0) {
LAB_08df5080:
      func_0x0450dbf0(param_1,&DAT_00edcf77);
      func_0x0450ddb0(param_1 + 0x20,param_2 + 0xf0);
      func_0x0450ddb0(param_1 + 0x38,param_2 + 0x108);
      param_1[0x18] = 0xd;
      param_1[0x19] = 0;
      param_1[0x1a] = 0;
      param_1[0x1b] = 0;
      goto LAB_08df56e5;
    }
  }
  func_0x0450dbf0(param_1,"origin");
  func_0x0450ddb0(param_1 + 0x20,param_2 + 0xb8);
  func_0x0450ddb0(param_1 + 0x38,param_2 + 0xb8);
  param_1[0x18] = 5;
  param_1[0x19] = 0;
  param_1[0x1a] = 0;
  param_1[0x1b] = 0;
  iVar3 = func_0x09116c90(0);
  if (iVar3 == 0) goto LAB_08df56e5;
  func_0x091115a0(local_c0,0,"mars::account","account_core.cc","GetAuthInfoForCgi",0x132,0,0);
  local_268 = (char *)0x0;
  uVar6 = 7;
  pcVar10 = (char *)((long)&local_268 + 7);
  do {
    pcVar9 = pcVar10;
    uVar11 = (uint)param_3;
    pcVar9[1] = "ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                [(int)(param_3 / 10) * -10 + uVar11 + 0x23];
    pcVar10 = pcVar9 + 1;
    uVar6 = uVar6 + 1;
    param_3 = param_3 / 10;
  } while (9 < uVar11);
  local_268 = local_260;
  pcVar9[2] = '\0';
  if (8 < uVar6) {
    pcVar9 = local_260;
    do {
      pcVar9 = pcVar9 + 1;
      cVar1 = *pcVar10;
      *pcVar10 = pcVar9[-1];
      pcVar10 = pcVar10 + -1;
      pcVar9[-1] = cVar1;
    } while (pcVar9 < pcVar10);
  }
  if ((*param_4 & 1) == 0) {
    local_110 = param_4 + 1;
    if ((*param_1 & 1) == 0) goto LAB_08df5324;
LAB_08df5342:
    local_160 = *(byte **)(param_1 + 0x10);
  }
  else {
    local_110 = *(byte **)(param_4 + 0x10);
    if ((*param_1 & 1) != 0) goto LAB_08df5342;
LAB_08df5324:
    local_160 = param_1 + 1;
  }
  local_108 = 0;
  local_158 = 0;
  func_0x0a66e2a0(local_1a8,0x41,&DAT_00f77dff,*(undefined4 *)(param_1 + 0x18));
  local_1b0 = local_1a8;
  func_0x0911bb50(local_218,param_1 + 0x20);
  func_0x08e1b740(&local_350,local_218);
  local_2b8 = local_340;
  if ((local_350 & 1) == 0) {
    local_2b8 = local_34f;
  }
  local_2b0[0] = '\0';
  if ((param_1[0x20] & 1) == 0) {
    uVar6 = (ulong)(param_1[0x20] >> 1);
  }
  else {
    uVar6 = *(ulong *)(param_1 + 0x28);
  }
  local_200 = (char *)0x0;
  uVar12 = 7;
  pcVar10 = (char *)((long)&local_200 + 7);
  do {
    pcVar9 = pcVar10;
    pcVar9[1] = "ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                [uVar6 + (uVar6 / 10) * -10 + 0x23];
    pcVar10 = pcVar9 + 1;
    uVar12 = uVar12 + 1;
    bVar14 = 9 < uVar6;
    uVar6 = uVar6 / 10;
  } while (bVar14);
  local_200 = local_1f8;
  pcVar9[2] = '\0';
  if (8 < uVar12) {
    pcVar9 = local_1f8;
    do {
      pcVar9 = pcVar9 + 1;
      cVar1 = *pcVar10;
      *pcVar10 = pcVar9[-1];
      pcVar10 = pcVar10 + -1;
      pcVar9[-1] = cVar1;
    } while (pcVar9 < pcVar10);
  }
  local_338 = &local_268;
  local_330 = &local_110;
  local_328 = &local_160;
  local_320 = &local_1b0;
  local_318 = &local_2b8;
  local_310 = &local_200;
  uStack_308 = 0;
  uStack_300 = 0;
  uStack_2f8 = 0;
  uStack_2f0 = 0;
  local_2e8 = 0;
  uStack_2e0 = 0;
  local_2d8 = 0;
  uStack_2d0 = 0;
  local_2c8 = 0;
  uStack_2c0 = 0;
  func_0x091118f0(local_c0,"mmpack taskid:%_, host:%_, identify:%_, algo:%_, session_key:%_, len:%_"
                  ,&local_338);
  if ((local_350 & 1) != 0) {
    func_0x0450a140(local_340);
  }
  if ((local_218[0] & 1) != 0) {
    func_0x0450a140(local_208);
  }
LAB_08df56e0:
  func_0x09111630(local_c0);
LAB_08df56e5:
  func_0x04e13050(param_2 + 0x1a0);
  return param_1;
code_r0x08df501b:
  plVar5 = (long *)plVar4[1];
  plVar13 = plVar4;
  if ((long *)plVar4[1] == (long *)0x0) {
    do {
      plVar4 = (long *)plVar13[2];
      bVar14 = (long *)*plVar4 != plVar13;
      plVar13 = plVar4;
    } while (bVar14);
  }
  else {
    do {
      plVar4 = plVar5;
      plVar5 = (long *)*plVar4;
    } while ((long *)*plVar4 != (long *)0x0);
  }
  if (plVar4 == (long *)(param_2 + 400)) goto LAB_08df4f64;
  goto LAB_08df4ffc;
}


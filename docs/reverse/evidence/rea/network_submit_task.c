
void wx_79e3760(long param_1,long *param_2)

{
  undefined1 uVar1;
  uint uVar2;
  byte bVar3;
  char cVar4;
  int iVar5;
  undefined8 uVar6;
  long *plVar7;
  long lVar8;
  undefined8 *puVar9;
  undefined8 *puVar10;
  ulong uVar11;
  undefined1 *puVar12;
  undefined1 *puVar13;
  ulong uVar14;
  long lVar15;
  undefined8 *puVar16;
  undefined8 *puVar17;
  bool bVar18;
  undefined1 local_401;
  undefined8 local_400;
  undefined8 local_3f8;
  undefined8 uStack_3f0;
  long local_3e8;
  undefined4 local_3e0;
  undefined4 local_3dc;
  uint local_3d8;
  undefined4 uStack_3d4;
  undefined4 uStack_3d0;
  undefined4 uStack_3cc;
  undefined8 local_3c8;
  long local_3b8;
  long local_3b0;
  undefined8 local_3a8;
  undefined8 uStack_3a0;
  ulong local_398;
  long lStack_390;
  ulong local_388;
  undefined8 uStack_380;
  ulong uStack_378;
  ulong local_370;
  undefined4 local_368;
  undefined4 uStack_364;
  undefined4 uStack_360;
  undefined4 uStack_35c;
  undefined8 *local_318;
  undefined8 uStack_310;
  undefined8 *local_308;
  ulong uStack_300;
  undefined8 *local_2f8;
  undefined8 uStack_2f0;
  long local_2e8;
  long lStack_2e0;
  ulong local_2d8;
  undefined8 local_2d0;
  undefined8 uStack_2c8;
  undefined8 local_2c0;
  undefined8 uStack_2b8;
  undefined8 local_2b0;
  undefined8 uStack_2a8;
  undefined8 local_2a0;
  undefined8 local_298;
  undefined8 uStack_290;
  undefined8 local_288;
  uint local_248;
  undefined4 local_244;
  undefined4 local_238;
  undefined1 local_230 [25];
  undefined1 local_217;
  undefined1 local_216;
  undefined1 local_215;
  uint local_208;
  char local_1fc;
  undefined4 local_1f8;
  ulong local_1e8;
  undefined1 local_88;
  undefined1 local_80 [80];
  
  if ((*(byte *)(param_1 + 0x18) & 1) == 0) {
    return;
  }
  local_3b8 = param_1 + 0x80;
  func_0x045d32e0();
  func_0x0a66e2d0(&local_248,0xaa,0x218);
  func_0x08ece250(&local_248);
  local_244 = *(undefined4 *)((long)param_2 + 0xc);
  local_238 = (undefined4)param_2[2];
  func_0x0450ddb0(local_230,param_2 + 3);
  local_217 = *(undefined1 *)((long)param_2 + 0x31);
  local_215 = *(undefined1 *)((long)param_2 + 0x33);
  local_216 = *(undefined1 *)((long)param_2 + 0x32);
  uVar6 = func_0x0603c4e0();
  bVar3 = func_0x06042870(uVar6,*(undefined4 *)((long)param_2 + 0xc));
  local_208 = (uint)(bVar3 ^ 1);
  local_1fc = (char)param_2[0x10];
  if (local_1fc != '\0') {
    local_1f8 = *(undefined4 *)((long)param_2 + 0x84);
  }
  local_1e8 = (ulong)*(uint *)((long)param_2 + 0xc);
  local_3dc = 0;
  local_400 = 0xaaaaaaaaaaaaaaaa;
  local_3b0 = param_1;
  func_0x079c5a80(&local_400);
  local_401 = 0;
  local_3e0 = 0;
  (**(code **)(*param_2 + 0x10))(param_2,&local_400,&local_3dc,&local_401,&local_3e0);
  local_2d8 = 0xaaaaaaaaaaaaaaaa;
  local_2e8 = -0x5555555555555556;
  lStack_2e0 = -0x5555555555555556;
  local_2f8 = (undefined8 *)0xaaaaaaaaaaaaaaaa;
  uStack_2f0 = 0xaaaaaaaaaaaaaaaa;
  local_308 = (undefined8 *)0xaaaaaaaaaaaaaaaa;
  uStack_300 = 0xaaaaaaaaaaaaaaaa;
  local_318 = (undefined8 *)0xaaaaaaaaaaaaaaaa;
  uStack_310 = 0xaaaaaaaaaaaaaaaa;
  wx_7fc76b0(&local_318);
  plVar7 = (long *)func_0x0603c4e0();
  uStack_310 = (**(code **)(*plVar7 + 0x20))(plVar7);
  local_2d8 = local_2d8 | 0x100000000;
  uVar6 = func_0x079c5c90(&local_400);
  iVar5 = func_0x079c5c80(&local_400);
  local_2d8 = local_2d8 | 0x200000000;
  if (local_308 == (undefined8 *)0x0) {
    local_308 = (undefined8 *)func_0x0a66dda0(0x18);
    *local_308 = 0;
    local_308[1] = 0;
    local_308[2] = 0;
  }
  func_0x0450cf00(local_308,uVar6,(long)iVar5);
  uStack_300 = uStack_300 & 0xffffffff00000000;
  local_2d8 = local_2d8 | 0xc00000000;
  uStack_2f0 = uStack_2f0 & 0xffffffffffffff00;
  uVar6 = func_0x0603c4e0();
  func_0x06041790(&local_3a8,uVar6);
  if (((byte)local_3a8 & 1) == 0) {
    if ((byte)local_3a8 == 0) {
LAB_079e39a9:
      bVar3 = *(byte *)(param_2 + 7);
      if ((bVar3 & 1) == 0) {
        if (bVar3 != 0) {
          lVar8 = (long)param_2 + 0x39;
          uVar11 = (ulong)(bVar3 >> 1);
LAB_079e39cf:
          local_2d8 = local_2d8 | 0x4000000000;
          if (local_2f8 == (undefined8 *)0x0) {
            local_2f8 = (undefined8 *)func_0x0a66dda0(0x18);
            *local_2f8 = 0;
            local_2f8[1] = 0;
            local_2f8[2] = 0;
          }
          func_0x0450cf00(local_2f8,lVar8,uVar11);
        }
      }
      else {
        uVar11 = param_2[8];
        if (uVar11 != 0) {
          lVar8 = param_2[9];
          goto LAB_079e39cf;
        }
      }
    }
  }
  else {
    func_0x0450a140(local_398);
    if (uStack_3a0 == 0) goto LAB_079e39a9;
  }
  cVar4 = wx_79e4250(*(undefined4 *)((long)param_2 + 0xc));
  if (cVar4 == '\0') {
    uVar6 = func_0x0603c4e0();
    cVar4 = func_0x06042870(uVar6,*(undefined4 *)((long)param_2 + 0xc));
    if (cVar4 != '\0') {
      local_2d8 = local_2d8 | 0x10000000000;
      uStack_2f0._0_4_ = CONCAT13(1,(undefined3)uStack_2f0);
      local_368 = 0xaaaaaaaa;
      uStack_364 = 0xaaaaaaaa;
      uStack_360 = 0xaaaaaaaa;
      uStack_35c = 0xaaaaaaaa;
      uStack_378 = 0xaaaaaaaaaaaaaaaa;
      local_370 = 0xaaaaaaaaaaaaaaaa;
      local_388 = 0xaaaaaaaaaaaaaaaa;
      uStack_380 = 0xaaaaaaaaaaaaaaaa;
      local_398 = 0xaaaaaaaaaaaaaaaa;
      lStack_390 = -0x5555555555555556;
      local_3a8 = 0xaaaaaaaaaaaaaaaa;
      uStack_3a0 = 0xaaaaaaaaaaaaaaaa;
      uVar6 = func_0x0603c4e0();
      func_0x060429e0(&local_3a8,uVar6,*(undefined4 *)((long)param_2 + 0xc));
      local_2d8 = local_2d8 | 0x40000000000;
      if (lStack_2e0 == 0) {
        lVar8 = func_0x0a66dda0(0x28);
        wx_7fc7000(lVar8);
        lStack_2e0 = lVar8;
      }
      lVar8 = lStack_2e0;
      *(undefined4 *)(lStack_2e0 + 0x18) = (undefined4)local_3a8;
      *(uint *)(lStack_2e0 + 0x20) = *(uint *)(lStack_2e0 + 0x20) | 3;
      puVar9 = *(undefined8 **)(lStack_2e0 + 8);
      if (puVar9 == (undefined8 *)0x0) {
        puVar9 = (undefined8 *)func_0x0a66dda0(0x18);
        *puVar9 = 0;
        puVar9[1] = 0;
        puVar9[2] = 0;
        *(undefined8 **)(lVar8 + 8) = puVar9;
      }
      func_0x0450ddb0(puVar9,&local_388);
      *(byte *)(lVar8 + 0x20) = *(byte *)(lVar8 + 0x20) | 4;
      puVar9 = *(undefined8 **)(lVar8 + 0x10);
      if (puVar9 == (undefined8 *)0x0) {
        puVar9 = (undefined8 *)func_0x0a66dda0(0x18);
        *puVar9 = 0;
        puVar9[1] = 0;
        puVar9[2] = 0;
        *(undefined8 **)(lVar8 + 0x10) = puVar9;
      }
      func_0x0450ddb0(puVar9,&uStack_3a0);
      if ((local_370 & 1) != 0) {
        func_0x0450a140(CONCAT44(uStack_35c,uStack_360));
      }
      if ((local_388 & 1) != 0) {
        func_0x0450a140(uStack_378);
      }
      if ((uStack_3a0 & 1) != 0) {
        func_0x0450a140(lStack_390);
      }
    }
    goto LAB_079e3e10;
  }
  local_2d8 = local_2d8 | 0x8000000000;
  uStack_2f0._0_3_ = CONCAT12(1,(undefined2)uStack_2f0);
  uStack_380 = 0;
  uStack_378 = 0;
  local_370 = 0;
  local_3a8 = 0;
  uStack_3a0 = 0;
  local_398 = 0;
  lStack_390 = 0;
  local_388 = 0xaaaaaaaa00000000;
  wx_79f7040(&local_3a8);
  local_2d8 = local_2d8 | 0x20000000000;
  if (local_2e8 == 0) {
    lVar8 = func_0x0a66dda0(0x30);
    wx_7fc66a0(lVar8);
    local_2e8 = lVar8;
  }
  lVar8 = local_2e8;
  *(byte *)(local_2e8 + 0x2c) = *(byte *)(local_2e8 + 0x2c) | 3;
  *(ulong *)(local_2e8 + 8) = local_3a8;
  local_298 = (undefined8 *)0x0;
  uStack_290 = 0;
  local_288 = 0;
  local_3f8 = 0;
  uStack_3f0 = 0;
  bVar18 = (uStack_3a0 & 1) != 0;
  lVar15 = (long)&uStack_3a0 + 1;
  if (bVar18) {
    lVar15 = lStack_390;
  }
  local_3e8 = 0;
  uVar11 = uStack_3a0 >> 1 & 0x7f;
  if (bVar18) {
    uVar11 = local_398;
  }
  func_0x04724880(lVar15,uVar11,&local_298);
  uVar14 = uStack_380 >> 1 & 0x7f;
  uVar11 = (long)&uStack_380 + 1;
  if ((uStack_380 & 1) != 0) {
    uVar14 = uStack_378;
    uVar11 = local_370;
  }
  func_0x04724880(uVar11,uVar14,&local_3f8);
  *(byte *)(lVar8 + 0x2c) = *(byte *)(lVar8 + 0x2c) | 4;
  puVar9 = *(undefined8 **)(lVar8 + 0x10);
  if (puVar9 == (undefined8 *)0x0) {
    puVar9 = (undefined8 *)func_0x0a66dda0(0x18);
    *puVar9 = 0;
    puVar9[1] = 0;
    puVar9[2] = 0;
    *(undefined8 **)(lVar8 + 0x10) = puVar9;
  }
  func_0x0450ddb0(puVar9,&local_298);
  *(byte *)(lVar8 + 0x2c) = *(byte *)(lVar8 + 0x2c) | 8;
  puVar9 = *(undefined8 **)(lVar8 + 0x18);
  if (puVar9 == (undefined8 *)0x0) {
    puVar9 = (undefined8 *)func_0x0a66dda0(0x18);
    *puVar9 = 0;
    puVar9[1] = 0;
    puVar9[2] = 0;
    *(undefined8 **)(lVar8 + 0x18) = puVar9;
  }
  func_0x0450ddb0(puVar9,&local_3f8);
  local_3c8 = 0xaaaaaaaaaaaaaaaa;
  local_3d8 = 0xaaaaaaaa;
  uStack_3d4 = 0xaaaaaaaa;
  uStack_3d0 = 0xaaaaaaaa;
  uStack_3cc = 0xaaaaaaaa;
  uVar6 = func_0x0603c4e0();
  func_0x06041c90(&local_3d8,uVar6);
  bVar3 = (byte)local_3d8 & 1;
  if ((local_3d8 & 1) == 0) {
    if ((byte)local_3d8 >> 1 != 0) goto LAB_079e3d50;
  }
  else if (CONCAT44(uStack_3cc,uStack_3d0) != 0) {
LAB_079e3d50:
    *(byte *)(lVar8 + 0x2c) = *(byte *)(lVar8 + 0x2c) | 0x10;
    puVar9 = *(undefined8 **)(lVar8 + 0x20);
    if (puVar9 == (undefined8 *)0x0) {
      puVar9 = (undefined8 *)func_0x0a66dda0(0x18);
      *puVar9 = 0;
      puVar9[1] = 0;
      puVar9[2] = 0;
      *(undefined8 **)(lVar8 + 0x20) = puVar9;
    }
    func_0x0450ddb0(puVar9,&local_3d8);
    bVar3 = (byte)local_3d8 & 1;
  }
  if (bVar3 != 0) {
    func_0x0450a140(local_3c8);
  }
  if ((local_3f8 & 1) != 0) {
    func_0x0450a140(local_3e8);
  }
  if (((ulong)local_298 & 1) != 0) {
    func_0x0450a140(local_288);
  }
  func_0x079f6bf0(&local_3a8);
LAB_079e3e10:
  local_3a8 = 0;
  uStack_3a0 = 0;
  local_398 = 0;
  func_0x08f504c0(&local_318,&local_3a8);
  uVar11 = uStack_3a0;
  uVar14 = local_398;
  if ((local_3a8 & 1) == 0) {
    uVar11 = local_3a8 >> 1 & 0x7f;
    uVar14 = (long)&local_3a8 + 1;
  }
  func_0x09121ba0(local_80,uVar14,uVar11);
  local_88 = 1;
  if ((local_3a8 & 1) != 0) {
    func_0x0450a140(local_398);
  }
  FUN_07fc79f0(&local_318);
  func_0x079c5ab0(&local_400);
  cVar4 = (*(code *)0x0)(&local_248);
  uVar2 = local_248;
  *(uint *)(param_2 + 1) = local_248;
  puVar9 = *(undefined8 **)(local_3b0 + 0x70);
  if (*(undefined8 **)(local_3b0 + 0x70) == (undefined8 *)0x0) {
    puVar16 = (undefined8 *)(local_3b0 + 0x70);
    puVar17 = (undefined8 *)(local_3b0 + 0x70);
  }
  else {
    do {
      while (puVar10 = puVar9, puVar16 = puVar10, local_248 < *(uint *)(puVar10 + 4)) {
        puVar9 = (undefined8 *)*puVar10;
        puVar17 = puVar10;
        if ((undefined8 *)*puVar10 == (undefined8 *)0x0) goto LAB_079e3ef5;
      }
      if (local_248 <= *(uint *)(puVar10 + 4)) goto LAB_079e3f47;
      puVar9 = (undefined8 *)puVar10[1];
    } while ((undefined8 *)puVar10[1] != (undefined8 *)0x0);
    puVar17 = puVar10 + 1;
  }
LAB_079e3ef5:
  puVar10 = (undefined8 *)func_0x0a66dda0(0x30);
  lVar8 = local_3b0;
  *(uint *)(puVar10 + 4) = uVar2;
  puVar10[5] = 0;
  *puVar10 = 0;
  puVar10[1] = 0;
  puVar10[2] = puVar16;
  *puVar17 = puVar10;
  puVar9 = puVar10;
  if (**(long **)(local_3b0 + 0x68) != 0) {
    *(long *)(local_3b0 + 0x68) = **(long **)(local_3b0 + 0x68);
    puVar9 = (undefined8 *)*puVar17;
  }
  func_0x04543620(*(undefined8 *)(local_3b0 + 0x70),puVar9);
  *(long *)(lVar8 + 0x78) = *(long *)(lVar8 + 0x78) + 1;
LAB_079e3f47:
  puVar10[5] = param_2;
  if ((cVar4 == '\0') && (iVar5 = func_0x09116c90(4), iVar5 != 0)) {
    func_0x073b29d0(&local_3f8);
    lVar8 = local_3e8;
    if ((local_3f8 & 1) == 0) {
      lVar8 = (long)&local_3f8 + 1;
    }
    func_0x091115a0(&local_3a8,4,lVar8,&DAT_00dbf53e,&DAT_00fe5073,0x253,0,0);
    uVar11 = 7;
    puVar13 = (undefined1 *)((long)&local_298 + 7);
    do {
      puVar12 = puVar13;
      puVar12[1] = "ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                   [local_248 % 10 + 0x23];
      puVar13 = puVar12 + 1;
      uVar11 = uVar11 + 1;
      bVar18 = 9 < local_248;
      local_248 = local_248 / 10;
    } while (bVar18);
    local_298 = &uStack_290;
    puVar12[2] = 0;
    if (8 < uVar11) {
      puVar12 = (undefined1 *)((long)&uStack_290 + 1);
      do {
        uVar1 = *puVar13;
        *puVar13 = puVar12[-1];
        puVar13 = puVar13 + -1;
        puVar12[-1] = uVar1;
        bVar18 = puVar12 < puVar13;
        puVar12 = puVar12 + 1;
      } while (bVar18);
    }
    local_318 = &local_298;
    uStack_310 = 0;
    local_308 = (undefined8 *)0x0;
    uStack_300 = 0;
    local_2f8 = (undefined8 *)0x0;
    uStack_2f0 = 0;
    local_2e8 = 0;
    lStack_2e0 = 0;
    local_2d8 = 0;
    local_2d0 = 0;
    uStack_2c8 = 0;
    local_2c0 = 0;
    uStack_2b8 = 0;
    local_2b0 = 0;
    uStack_2a8 = 0;
    local_2a0 = 0;
    func_0x091118f0(&local_3a8,&DAT_00fd162f,&local_318);
    func_0x09111630(&local_3a8);
    if ((local_3f8 & 1) != 0) {
      func_0x0450a140(local_3e8);
    }
  }
  FUN_079e4430(&local_248);
  func_0x045d3310(local_3b8);
  return;
}


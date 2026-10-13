
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void wx_9b10698(void)

{
  byte *pbVar1;
  long *plVar2;
  long *plVar3;
  long lVar4;
  long *plVar5;
  undefined1 *puVar6;
  undefined8 *puVar7;
  int *piVar8;
  undefined8 uVar9;
  undefined8 uVar10;
  undefined8 uVar11;
  byte bVar12;
  int iVar13;
  uint uVar14;
  undefined8 *puVar15;
  long *plVar16;
  long lVar17;
  ulong uVar18;
  long *plVar19;
  char *pcVar20;
  byte bVar21;
  byte *pbVar22;
  long unaff_RBP;
  int iVar23;
  ulong uVar24;
  long lVar25;
  undefined1 *puVar26;
  uint uVar27;
  undefined4 unaff_R14D;
  long lVar28;
  bool bVar29;
  
  if ((*(byte *)(unaff_RBP + -0x620) & 1) == 0) {
    lVar25 = unaff_RBP + -0x61f;
    if ((*(byte *)(unaff_RBP + -0x620) & 0xfe) != 0x48) goto LAB_09b107c5;
LAB_09b106c9:
    uVar18 = func_0x0a66ecd0(unaff_R14D,lVar25,0x24);
    if ((*(byte *)(unaff_RBP + -0x620) & 1) == 0) {
      if (uVar18 != *(byte *)(unaff_RBP + -0x620) >> 1) goto LAB_09b107c5;
      pbVar22 = (byte *)(unaff_RBP + -0x61f);
      if (uVar18 == 0) goto LAB_09b1078f;
LAB_09b10702:
      uVar14 = 0xffffffff;
      if (uVar18 != 1) {
        lVar25 = -(uVar18 & 0xfffffffffffffffe);
        uVar14 = 0xffffffff;
        do {
          uVar14 = uVar14 >> 8 ^
                   *(uint *)(&DAT_02b65ef0 + (ulong)(uVar14 & 0xff ^ (uint)*pbVar22) * 4);
          pbVar1 = pbVar22 + 1;
          pbVar22 = pbVar22 + 2;
          uVar14 = uVar14 >> 8 ^
                   *(uint *)(&DAT_02b65ef0 + (ulong)(uVar14 & 0xff ^ (uint)*pbVar1) * 4);
          lVar25 = lVar25 + 2;
        } while (lVar25 != 0);
      }
      if ((uVar18 & 1) != 0) {
        uVar14 = uVar14 >> 8 ^
                 *(uint *)(&DAT_02b65ef0 + (ulong)((uint)*pbVar22 ^ uVar14 & 0xff) * 4);
      }
      uVar14 = ~uVar14;
    }
    else {
      if (uVar18 != *(ulong *)(unaff_RBP + -0x618)) goto LAB_09b107c5;
      pbVar22 = *(byte **)(unaff_RBP + -0x610);
      if (uVar18 != 0) goto LAB_09b10702;
LAB_09b1078f:
      uVar14 = 0;
    }
    *(uint *)(unaff_RBP + -0x1040) = uVar14;
    lVar25 = func_0x0a66ecd0(unaff_R14D,unaff_RBP + -0x1040,4);
    bVar29 = lVar25 == 4;
    func_0x045bfef0(unaff_R14D);
    bVar21 = *(byte *)(unaff_RBP + -0x620);
  }
  else {
    if (*(long *)(unaff_RBP + -0x618) == 0x24) {
      lVar25 = *(long *)(unaff_RBP + -0x610);
      goto LAB_09b106c9;
    }
LAB_09b107c5:
    func_0x045bfef0(unaff_R14D);
    bVar29 = false;
    bVar21 = *(byte *)(unaff_RBP + -0x620);
  }
  if ((bVar21 & 1) != 0) {
    func_0x0450a140(*(undefined8 *)(unaff_RBP + -0x610));
  }
  if (bVar29) {
    uVar14 = 0;
    iVar13 = func_0x0a66ee30();
    if (iVar13 != -1) {
      *(undefined1 (*) [16])(unaff_RBP + -0x1030) = (undefined1  [16])0x0;
      *(undefined1 (*) [16])(unaff_RBP + -0x1040) = (undefined1  [16])0x0;
      *(undefined4 *)(unaff_RBP + -0x1020) = 0;
      lVar25 = func_0x0a66ee40(iVar13,unaff_RBP + -0x1040,0x24);
      if (lVar25 != 0x24) {
LAB_09b10246:
        func_0x045bfef0(iVar13);
        FUN_09b10809();
        return;
      }
      *(undefined4 *)(unaff_RBP + -0x1f0) = 0;
      lVar25 = func_0x0a66ee40(iVar13);
      if (lVar25 != 4) goto LAB_09b10246;
      uVar14 = (*(uint *)(&DAT_02b65ef0 + ((ulong)*(byte *)(unaff_RBP + -0x1040) ^ 0xff) * 4) ^
               0xffffff) >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)((*(uint *)(&DAT_02b65ef0 +
                                          ((ulong)*(byte *)(unaff_RBP + -0x1040) ^ 0xff) * 4) ^
                                0xffffff) & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x103f)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x103e)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x103d)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x103c)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x103b)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x103a)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1039)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1038)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1037)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1036)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1035)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1034)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1033)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1032)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1031)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1030)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x102f)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x102e)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x102d)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x102c)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x102b)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x102a)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1029)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1028)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1027)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1026)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1025)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1024)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1023)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1022)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1021)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x1020)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x101f)) * 4);
      uVar14 = uVar14 >> 8 ^
               *(uint *)(&DAT_02b65ef0 +
                        (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x101e)) * 4);
      uVar27 = ~(uVar14 >> 8 ^
                *(uint *)(&DAT_02b65ef0 +
                         (ulong)(uVar14 & 0xff ^ (uint)*(byte *)(unaff_RBP + -0x101d)) * 4));
      uVar14 = *(uint *)(unaff_RBP + -0x1f0);
      func_0x045bfef0(iVar13);
      if (uVar14 != uVar27) goto code_r0x09b10809;
      puVar15 = (undefined8 *)func_0x0a66dda0(0x28);
      uVar9 = *(undefined8 *)(unaff_RBP + -0x1038);
      uVar10 = *(undefined8 *)(unaff_RBP + -0x1030);
      uVar11 = *(undefined8 *)(unaff_RBP + -0x1028);
      *puVar15 = *(undefined8 *)(unaff_RBP + -0x1040);
      puVar15[1] = uVar9;
      puVar15[2] = uVar10;
      puVar15[3] = uVar11;
      *(undefined4 *)(puVar15 + 4) = *(undefined4 *)(unaff_RBP + -0x1020);
      *(undefined8 **)(unaff_RBP + -0x290) = puVar15;
      *(undefined1 *)((long)puVar15 + 0x24) = 0;
      uVar14 = (uint)CONCAT71((uint7)(uint3)(uVar27 >> 8),0x29);
    }
  }
  else {
code_r0x09b10809:
    uVar14 = 0;
  }
  if ((*(byte *)(unaff_RBP + -0x1300) & 1) != 0) {
    func_0x0450a140(*(undefined8 *)(unaff_RBP + -0x12f0));
  }
  lVar25 = unaff_RBP + -0x63f;
  if ((*(byte *)(unaff_RBP + -0x400) & 1) != 0) {
    func_0x0450a140(*(undefined8 *)(unaff_RBP + -0x3f0));
  }
  bVar21 = *(byte *)(unaff_RBP + -0x59);
  *(uint *)(unaff_RBP + -0x270) = uVar14;
  if ((uVar14 & 1) == 0) {
    *(ulong *)(unaff_RBP + -0x640) = (ulong)(uVar14 & 0xff);
    *(undefined8 *)(unaff_RBP + -0x638) = 0x24;
    *(undefined8 *)(unaff_RBP + -0x630) = *(undefined8 *)(unaff_RBP + -0x290);
    if ((byte)uVar14 < 2) {
      uVar27 = 0x24;
      bVar21 = 0;
      lVar17 = *(long *)(unaff_RBP + -0x290);
      uVar18 = (ulong)uVar14;
      goto LAB_09b1090d;
    }
  }
  else {
    func_0x0450c6a0(unaff_RBP + -0x640,*(undefined8 *)(unaff_RBP + -0x290),0x24);
  }
  bVar12 = (byte)uVar14 >> 1;
  if ((uVar14 & 1) != 0) {
    bVar12 = 0x24;
  }
  uVar14 = (uint)bVar12;
  if (bVar12 == 0) {
    uVar14 = 1;
  }
  if (bVar12 < 2) {
    uVar18 = 0;
  }
  else {
    uVar18 = 0;
    do {
      if ((*(byte *)(unaff_RBP + -0x640) & 1) == 0) {
        *(byte *)(lVar25 + uVar18) = *(byte *)(lVar25 + uVar18) ^ bVar21;
        bVar12 = *(byte *)(unaff_RBP + -0x640);
      }
      else {
        pbVar22 = (byte *)(*(long *)(unaff_RBP + -0x630) + uVar18);
        *pbVar22 = *pbVar22 ^ bVar21;
        bVar12 = *(byte *)(unaff_RBP + -0x640);
      }
      lVar17 = lVar25;
      if ((bVar12 & 1) != 0) {
        lVar17 = *(long *)(unaff_RBP + -0x630);
      }
      pbVar22 = (byte *)(lVar17 + 1 + uVar18);
      *pbVar22 = *pbVar22 ^ bVar21;
      uVar18 = uVar18 + 2;
    } while ((uVar14 & 0xfffffffe) != uVar18);
  }
  if ((uVar14 & 1) != 0) {
    lVar17 = lVar25;
    if ((*(byte *)(unaff_RBP + -0x640) & 1) != 0) {
      lVar17 = *(long *)(unaff_RBP + -0x630);
    }
    *(byte *)(lVar17 + uVar18) = *(byte *)(lVar17 + uVar18) ^ bVar21;
  }
  uVar18 = (ulong)*(byte *)(unaff_RBP + -0x640);
  lVar17 = *(long *)(unaff_RBP + -0x630);
  uVar27 = (uint)*(undefined8 *)(unaff_RBP + -0x638);
  bVar21 = *(byte *)(unaff_RBP + -0x640) & 1;
LAB_09b1090d:
  plVar3 = *(long **)(unaff_RBP + -0xe0);
  if (bVar21 == 0) {
    lVar17 = lVar25;
  }
  uVar18 = (ulong)((byte)(uVar18 >> 1) & 0x7f);
  if (bVar21 != 0) {
    uVar18 = (ulong)uVar27;
  }
  if ((((plVar3 != (long *)0x0) && (lVar17 != 0)) && (lVar25 = *plVar3, lVar25 != 0)) &&
     (0 < (int)*(uint *)(lVar25 + 0x18))) {
    lVar4 = *(long *)(lVar25 + 8);
    lVar28 = 0;
    do {
      if (*(int *)(lVar4 + lVar28) == 6) {
        if ((int)uVar18 < 1) {
          iVar13 = func_0x0a66e160(lVar17);
          uVar18 = (ulong)(uint)(iVar13 - (int)uVar18);
          uVar14 = *(uint *)(lVar4 + 0x14 + lVar28);
        }
        else {
          uVar14 = *(uint *)(lVar4 + 0x14 + lVar28);
        }
        if (1 < uVar14) {
          if (uVar14 == 3) {
            halt_baddata();
          }
          puVar26 = (undefined1 *)plVar3[2];
          puVar6 = (undefined1 *)plVar3[3];
          if (puVar6 < puVar26 + 0x14) {
            *(long **)(unaff_RBP + -0x30) = plVar3;
            lVar25 = plVar3[1];
            iVar13 = (int)puVar6 - (int)lVar25;
            do {
              iVar13 = iVar13 * 2;
            } while (iVar13 < (int)(puVar26 + 0x14) - (int)lVar25);
            *(ulong *)(unaff_RBP + -0x38) = uVar18;
            lVar17 = (long)puVar26 - lVar25;
            plVar3 = *(long **)(*(long *)(unaff_RBP + -0x30) + 0x70);
            uVar27 = iVar13 + 3U & 0xfffffffc;
            uVar14 = *(uint *)(plVar3 + 1);
            iVar23 = *(int *)((long)plVar3 + 0xc);
            if ((int)(uVar14 - iVar23) < (int)uVar27) {
              if ((int)uVar14 <= (int)uVar27) {
                uVar14 = uVar27;
              }
              *(long *)(unaff_RBP + -0x70) = lVar17;
              *(long **)(unaff_RBP + -0x50) = plVar3;
              *(long *)(unaff_RBP + -0x48) = lVar25;
              puVar15 = (undefined8 *)func_0x0a66e260((long)(int)uVar14 + 8);
              lVar25 = *(long *)(unaff_RBP + -0x48);
              lVar17 = *(long *)(unaff_RBP + -0x70);
              puVar7 = *(undefined8 **)(unaff_RBP + -0x50);
              *puVar15 = *puVar7;
              *puVar7 = puVar15;
              *(uint *)((long)puVar7 + 0xc) = uVar27;
            }
            else {
              puVar15 = (undefined8 *)(*plVar3 + (long)iVar23);
              *(uint *)((long)plVar3 + 0xc) = uVar27 + iVar23;
            }
            puVar15 = puVar15 + 1;
            func_0x0a66e230(puVar15,lVar25,(long)(int)lVar17);
            plVar3 = *(long **)(unaff_RBP + -0x30);
            puVar26 = (undefined1 *)((plVar3[2] - plVar3[1]) + (long)puVar15);
            plVar3[2] = (long)puVar26;
            plVar3[3] = (long)iVar13 + (long)puVar15;
            plVar3[1] = (long)puVar15;
            uVar18 = *(ulong *)(unaff_RBP + -0x38);
            iVar13 = *(int *)(lVar4 + 0x10 + lVar28);
          }
          else {
            iVar13 = *(int *)(lVar4 + 0x10 + lVar28);
          }
          if ((iVar13 != 0xc) && (iVar13 != 9)) {
            halt_baddata();
          }
          *puVar26 = 0x32;
          lVar25 = plVar3[2];
          pbVar22 = (byte *)(lVar25 + 1);
          plVar3[2] = (long)pbVar22;
          uVar14 = (uint)uVar18;
          if (uVar14 < 0x80) {
            *pbVar22 = (byte)uVar18;
            lVar25 = 1;
          }
          else {
            *pbVar22 = (byte)uVar18 | 0x80;
            bVar21 = (byte)(uVar18 >> 7);
            if (uVar14 < 0x4000) {
              *(byte *)(lVar25 + 2) = bVar21;
              lVar25 = 2;
            }
            else {
              *(byte *)(lVar25 + 2) = bVar21 | 0x80;
              bVar21 = (byte)(uVar18 >> 0xe);
              if (uVar14 < 0x200000) {
                *(byte *)(lVar25 + 3) = bVar21;
                lVar25 = 3;
              }
              else {
                *(byte *)(lVar25 + 3) = bVar21 | 0x80;
                bVar21 = (byte)(uVar18 >> 0x15);
                if (uVar14 < 0x10000000) {
                  *(byte *)(lVar25 + 4) = bVar21;
                  lVar25 = 4;
                }
                else {
                  *(byte *)(lVar25 + 4) = bVar21 | 0x80;
                  *(byte *)(lVar25 + 5) = (byte)(uVar18 >> 0x1c) & 0xf;
                  lVar25 = 5;
                }
              }
            }
          }
          lVar25 = lVar25 + plVar3[2];
          plVar3[2] = lVar25;
          uVar18 = lVar25 + (int)uVar14;
          uVar24 = plVar3[3];
          if (uVar18 <= uVar24) {
                    /* WARNING: Bad instruction - Truncating control flow here */
            halt_baddata();
          }
          *(long *)(unaff_RBP + -0x38) = (long)(int)uVar14;
          lVar17 = plVar3[1];
          iVar23 = (int)lVar17;
          iVar13 = (int)uVar24 - iVar23;
          do {
            iVar13 = iVar13 * 2;
          } while (iVar13 < (int)uVar18 - iVar23);
          *(long **)(unaff_RBP + -0x30) = plVar3;
          plVar3 = (long *)plVar3[0xe];
          uVar27 = iVar13 + 3U & 0xfffffffc;
          uVar14 = *(uint *)(plVar3 + 1);
          iVar13 = *(int *)((long)plVar3 + 0xc);
          if ((int)(uVar14 - iVar13) < (int)uVar27) {
            if ((int)uVar14 <= (int)uVar27) {
              uVar14 = uVar27;
            }
            *(long **)(unaff_RBP + -0x70) = plVar3;
            puVar15 = (undefined8 *)func_0x0a66e260((long)(int)uVar14 + 8);
            puVar7 = *(undefined8 **)(unaff_RBP + -0x70);
            *puVar15 = *puVar7;
            *puVar7 = puVar15;
            *(uint *)((long)puVar7 + 0xc) = uVar27;
          }
          else {
            puVar15 = (undefined8 *)(*plVar3 + (long)iVar13);
            *(uint *)((long)plVar3 + 0xc) = uVar27 + iVar13;
          }
          pcVar20 = (char *)func_0x0a66e230(puVar15 + 1,lVar17,(long)((int)lVar25 - iVar23));
          *pcVar20 = *pcVar20 + (char)pcVar20;
                    /* WARNING: Bad instruction - Truncating control flow here */
          halt_baddata();
        }
        if (plVar3[0xc] == 0) {
          plVar5 = (long *)plVar3[0xe];
          if (plVar5 == (long *)0x0) {
            plVar19 = (long *)func_0x0a66e260(0x20);
            lVar25 = lRam0000000000d5ba48;
            *plVar19 = _DAT_00d5ba40;
            plVar19[1] = lVar25;
            plVar16 = (long *)func_0x0a66e260(0x60);
            lVar25 = 0x60;
          }
          else {
            uVar14 = *(uint *)(plVar5 + 1);
            uVar24 = (ulong)uVar14;
            iVar13 = *(int *)((long)plVar5 + 0xc);
            if ((int)(uVar14 - iVar13) < 0x20) {
              if ((int)uVar14 < 0x21) {
                lVar25 = 0x28;
              }
              else {
                lVar25 = uVar24 + 8;
              }
              plVar16 = (long *)func_0x0a66e260(lVar25);
              *plVar16 = *plVar5;
              *plVar5 = (long)plVar16;
              *(undefined4 *)((long)plVar5 + 0xc) = 0x20;
              uVar24 = (ulong)*(uint *)(plVar5 + 1);
              iVar13 = 0x20;
              plVar2 = plVar16;
            }
            else {
              plVar16 = (long *)*plVar5;
              plVar2 = (long *)((long)plVar16 + (long)iVar13);
              iVar13 = iVar13 + 0x20;
              *(int *)((long)plVar5 + 0xc) = iVar13;
            }
            lVar25 = lRam0000000000d5ba48;
            plVar19 = plVar2 + 1;
            *plVar19 = _DAT_00d5ba40;
            plVar2[2] = lVar25;
            if ((int)uVar24 - iVar13 < 0x60) {
              if ((int)uVar24 < 0x61) {
                lVar25 = 0x68;
              }
              else {
                lVar25 = uVar24 + 8;
              }
              plVar16 = (long *)func_0x0a66e260(lVar25);
              *plVar16 = *plVar5;
              *plVar5 = (long)plVar16;
              *(undefined4 *)((long)plVar5 + 0xc) = 0x60;
              plVar16 = plVar16 + 1;
              lVar25 = *plVar19 * 0x18;
            }
            else {
              plVar16 = (long *)((long)plVar16 + (long)iVar13 + 8);
              *(int *)((long)plVar5 + 0xc) = iVar13 + 0x60;
              lVar25 = 0x60;
            }
          }
          plVar19[3] = (long)plVar16;
          func_0x0a66e2d0(plVar16,0,lVar25);
          plVar19[2] = (long)plVar5;
          plVar3[0xc] = (long)plVar19;
        }
        plVar5 = (long *)plVar3[0xe];
        iVar23 = (int)uVar18;
        uVar27 = iVar23 + 3U & 0xfffffffc;
        uVar14 = *(uint *)(plVar5 + 1);
        iVar13 = *(int *)((long)plVar5 + 0xc);
        if ((int)(uVar14 - iVar13) < (int)uVar27) {
          if ((int)uVar14 <= (int)uVar27) {
            uVar14 = uVar27;
          }
          plVar16 = (long *)func_0x0a66e260((long)(int)uVar14 + 8);
          *plVar16 = *plVar5;
          *plVar5 = (long)plVar16;
          *(uint *)((long)plVar5 + 0xc) = uVar27;
        }
        else {
          plVar16 = (long *)(*plVar5 + (long)iVar13);
          *(uint *)((long)plVar5 + 0xc) = uVar27 + iVar13;
        }
        plVar16 = plVar16 + 1;
        func_0x0a66e230(plVar16,lVar17,(long)iVar23);
        piVar8 = (int *)plVar3[0xc];
        if (piVar8 == (int *)0x0) goto LAB_09b10df6;
        uVar18 = (ulong)(*piVar8 - 1U & 6);
        lVar25 = *(long *)(piVar8 + 6);
        iVar13 = *(int *)(lVar25 + uVar18 * 0x18);
        if (iVar13 == 0) goto LAB_09b10df6;
        goto joined_r0x09b10dbb;
      }
      lVar28 = lVar28 + 0x30;
    } while ((ulong)*(uint *)(lVar25 + 0x18) * 0x30 != lVar28);
  }
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
joined_r0x09b10dbb:
  if (iVar13 == 6) {
    puVar15 = *(undefined8 **)(lVar25 + 8 + uVar18 * 0x18);
    if (puVar15 != (undefined8 *)0x0) {
      *puVar15 = plVar16;
      *(int *)(puVar15 + 1) = iVar23;
      halt_baddata();
    }
LAB_09b10df6:
    plVar5 = (long *)plVar3[0xe];
    uVar14 = *(uint *)(plVar5 + 1);
    iVar13 = *(int *)((long)plVar5 + 0xc);
    if ((int)(uVar14 - iVar13) < 0x10) {
      if ((int)uVar14 < 0x11) {
        lVar25 = 0x18;
      }
      else {
        lVar25 = (ulong)uVar14 + 8;
      }
      plVar19 = (long *)func_0x0a66e260(lVar25);
      *plVar19 = *plVar5;
      *plVar5 = (long)plVar19;
      *(undefined4 *)((long)plVar5 + 0xc) = 0x10;
    }
    else {
      plVar19 = (long *)(*plVar5 + (long)iVar13);
      *(int *)((long)plVar5 + 0xc) = iVar13 + 0x10;
    }
    plVar19[1] = (long)plVar16;
    *(int *)(plVar19 + 2) = iVar23;
    piVar8 = (int *)plVar3[0xc];
    if (piVar8 != (int *)0x0) {
      uVar18 = (ulong)(*piVar8 - 1U & 6);
      lVar25 = *(long *)(piVar8 + 6);
      iVar13 = *(int *)(lVar25 + uVar18 * 0x18);
      if (iVar13 != 0) {
        while( true ) {
          if (iVar13 == 6) {
            *(long **)(lVar25 + 8 + uVar18 * 0x18) = plVar19 + 1;
            halt_baddata();
          }
          lVar17 = (long)*(int *)(lVar25 + 0x10 + uVar18 * 0x18);
          if (lVar17 == 0) break;
          uVar18 = lVar17 - 1;
          iVar13 = *(int *)(lVar25 + uVar18 * 0x18);
        }
      }
    }
    func_0x09c4db20(piVar8,6);
                    /* WARNING: Bad instruction - Truncating control flow here */
    halt_baddata();
  }
  lVar17 = (long)*(int *)(lVar25 + 0x10 + uVar18 * 0x18);
  if (lVar17 == 0) goto LAB_09b10df6;
  uVar18 = lVar17 - 1;
  iVar13 = *(int *)(lVar25 + uVar18 * 0x18);
  goto joined_r0x09b10dbb;
}


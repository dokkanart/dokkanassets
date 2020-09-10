 --足止め成功

multi_frm = 2;
kame_flag = 0x00;
--------------------------------------------------------------------------------
-- ** テンプレ構文 ** --
--------------------------------------------------------------------------------
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);
changeAnime( 0, 0, 17);
changeAnime( 0, 1, 100);

setMoveKey(   0,   0,    0, 20 , 0 );
setMoveKey(   1,   0,    0, 20 , 0 );
setMoveKey(   2,   0,    0, 20 , 0 );
setMoveKey(   3,   0,    0, 20 , 0 );
setMoveKey(   4,   0,    0, 20 , 0 );
setMoveKey(   5,   0,    0, 20 , 0 );
setMoveKey(   6,   0,    0, 20 , 0 );
setScaleKey(  0,   0,  1, 1 );
setScaleKey(  1,   0,  1, 1 );
setScaleKey(  2,   0,  1, 1 );
setScaleKey(  3,   0,  1, 1 );
setScaleKey(  4,   0,  1, 1 );
setScaleKey(  5,   0,  1, 1 );
setScaleKey(  6,   0,  1, 1 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

-- ** コネクタ ** --
view7 = entryCharaView(0, GOKU_CONNECTOR_ID, 0, 0, -212, 20 , 0 );
view14 = entryCharaView(0, CHO_CONNECTOR_ID, 0, 0, 206.1, 20 , 0 );

setMoveKey( -1, view14, 206.1, 20 , 0 );
setMoveKey( 0, view14, 206.1, 20 , 0 );
setMoveKey( 1, view14, 206.1, 20 , 0 );
setMoveKey( 2, view14, 206.1, 20 , 0 );
setMoveKey( 3, view14, 206.1, 20 , 0 );
setMoveKey( 4, view14, 206.1, 20 , 0 );
setMoveKey( 5, view14, 206.1, 20 , 0 );
setMoveKey( 6, view14, 206.1, 20 , 0 );
setScaleKey( 0, view14, 0.8, 0.8 );
setScaleKey( 1, view14, 0.8, 0.8 );
setScaleKey( 2, view14, 0.8, 0.8 );
setScaleKey( 3, view14, 0.8, 0.8 );
setScaleKey( 4, view14, 0.8, 0.8 );
setScaleKey( 5, view14, 0.8, 0.8 );
setScaleKey( 6, view14, 0.8, 0.8 );

setMoveKey(-1, view7, -212, 20 , 0 );
setMoveKey(0, view7, -212, 20 , 0 );
setMoveKey(1, view7, -212, 20 , 0 );
setMoveKey(2, view7, -212, 20 , 0 );
setMoveKey(3, view7, -212, 20 , 0 );
setMoveKey(4, view7, -212, 20 , 0 );
setMoveKey(5, view7, -212, 20 , 0 );
setMoveKey(6, view7, -212, 20 , 0 );
setScaleKey( 0, view7, 0.8, 0.8 );
setScaleKey( 1, view7, 0.8, 0.8 );
setScaleKey( 2, view7, 0.8, 0.8 );
setScaleKey( 3, view7, 0.8, 0.8 );
setScaleKey( 4, view7, 0.8, 0.8 );
setScaleKey( 5, view7, 0.8, 0.8 );
setScaleKey( 6, view7, 0.8, 0.8 );

-- ** サポーター ** --
view1 = entryCharaView(0 , TEAM_CARD_IDS[1], 0,  0, 228.7, 421.9 , 0 );
view2 = entryCharaView(0 , TEAM_CARD_IDS[2], 0,  0, 158.2, 247.9 , 0 );
view3 = entryCharaView(0 , TEAM_CARD_IDS[3], 0,  0, 35.9, 411.9 , 0 );
view4 = entryCharaView(0 , TEAM_CARD_IDS[4], 0,  0, -37.8, 267.9 , 0 );
view5 = entryCharaView(0 , TEAM_CARD_IDS[5], 0,  0, -159.9, 431.9 , 0 );
view6 = entryCharaView(0 , TEAM_CARD_IDS[6], 0,  0, -235.3, 247.9 , 0 );

view8 = entryCharaView(0, TEAM_CARD_IDS[7], 0,  0, 228.7, -424.1 , 0 );
view9 = entryCharaView(0,  TEAM_CARD_IDS[8], 0,  0, 158.2, -252.1 , 0 );
view10 = entryCharaView(0, TEAM_CARD_IDS[9],  0, 0, 35.9, -394.1 , 0 );
view11 = entryCharaView(0, TEAM_CARD_IDS[10],  0, 0, -37.8, -272.1 , 0 );
view13 = entryCharaView(0, TEAM_CARD_IDS[11],  0,  0, -159.9, -414.1 , 0 );
view12 = entryCharaView(0, TEAM_CARD_IDS[12],  0,  0, -235.3, -252.1 , 0 ); 

setEnableAura( 0,  0,  0);
setEnableAura( 0,  1,  0);
setEnableAura( 0,  view1,  0);
setEnableAura( 0,  view2,  0);
setEnableAura( 0,  view3,  0);
setEnableAura( 0,  view4,  0);
setEnableAura( 0,  view5,  0);
setEnableAura( 0,  view6,  0);
setEnableAura( 0,  view7,  0);
setEnableAura( 0,  view8,  0);
setEnableAura( 0,  view9,  0);
setEnableAura( 0,  view10,  0);
setEnableAura( 0,  view11,  0);
setEnableAura( 0,  view12,  0);
setEnableAura( 0,  view13,  0);
setEnableAura( 0,  view14,  0);

setDisp(0, view1,  0);
setDisp(0, view2,  0);
setDisp(0, view3,  0);
setDisp(0, view4,  0);
setDisp(0, view5,  0);
setDisp(0, view6,  0);
setDisp(0, view7,  1);
setDisp(0, view8,  0);
setDisp(0, view9,  0);
setDisp(0, view10,  0);
setDisp(0, view11,  0);
setDisp(0, view12,  0);
setDisp(0, view13,  0);
setDisp(0, view14,  1);

--------------------------------------------------------------------------------
-- ** 気が集まった ** --
--------------------------------------------------------------------------------
spep_0 = 0;

aurabg = entryEffectLife( spep_0 + 0,  9019, 388 + 40 + 20, 0x100, -1, 0, 0, 0 );  --気溜め成功
setEffMoveKey( spep_0 + 0,  aurabg,  0,  0,  0);
setEffMoveKey( spep_0 + 388+ 40 + 20,  aurabg,  0,  0,  0);
setEffScaleKey( spep_0 + 0,  aurabg,  1.0,  1.0);
setEffScaleKey( spep_0 + 388+ 40 + 20,  aurabg,  1.0,  1.0);
setEffRotateKey(  spep_0 + 0,  aurabg,  0);
setEffRotateKey(  spep_0 + 388+ 40 + 20,  aurabg,  0);
setEffAlphaKey(  spep_0 + 0,  aurabg,  255);
setEffAlphaKey(  spep_0 + 388+ 40 + 20,  aurabg,  255);

aura = entryEffectLife( spep_0 + 196 + 40 + 20,  9006, 164+ 40 + 20, 0x80, -1, 0, -8.3, -200 );
setEffMoveKey( spep_0 + 196 + 40 + 20, aura, -8.3, -200 , 0 );
setEffMoveKey( spep_0 + 360+ 40 + 20, aura, -8.3, -200 , 0 );
setEffScaleKey( spep_0 + 196 + 40 + 20, aura, 1.79, 2.03 );
setEffScaleKey( spep_0 + 360+ 40 + 20, aura, 1.94, 2.4 );
setEffRotateKey( spep_0 + 196 + 40 + 20, aura, 0 );
setEffRotateKey( spep_0 + 360+ 40 + 20, aura, 0 );
setEffAlphaKey( spep_0 + 196 + 40 + 20, aura, 200 );
setEffAlphaKey( spep_0 + 359+ 40 + 20, aura, 200 );
setEffAlphaKey( spep_0 + 360+ 40 + 20, aura, 0 );

-- ** ビリビリ ** --
sunder = entryEffectLife( spep_0 + 0,  9015, 84, 0x100, -1, 0, -216.6, 12.7 );
setEffMoveKey( spep_0 + 0, sunder,  -216.6, 12.7 , 0 );
setEffScaleKey( spep_0 + 0, sunder, 1.4, 1.4 );
setEffRotateKey( spep_0 + 0, sunder, 95 );
setEffRotateKey( spep_0 + 84, sunder, 95 );
setEffAlphaKey( spep_0 + 0, sunder, 255 );

sunder2 = entryEffectLife( spep_0 + 0,  9015, 90, 0x100, -1, 0, -37.6, -274.3 );
setEffMoveKey( spep_0 + 0, sunder2, -37.6, -274.3 , 0 );
setEffScaleKey( spep_0 + 0, sunder2, 0.58, 1.61 );
setEffRotateKey( spep_0 + 0, sunder2, 8.4 );
setEffRotateKey( spep_0 + 90, sunder2, 8.4 );
setEffAlphaKey( spep_0 + 0, sunder2, 255 );

sunder3 = entryEffectLife( spep_0 + 4,  9015, 86, 0x100, -1, 0, 205.4, 8.3 );
setEffMoveKey( spep_0 + 4, sunder3, 205.4, 8.3 , 0 );
setEffScaleKey( spep_0 + 4, sunder3, 1.4, 1.4 );
setEffRotateKey( spep_0 + 4, sunder3, -90 );
setEffRotateKey( spep_0 + 90, sunder3, -90 );
setEffAlphaKey( spep_0 + 4, sunder3, 255 );

sunder4 = entryEffectLife( spep_0 + 4,  9015, 86, 0x100, -1, 0, -21.6, 255.5 );
setEffMoveKey( spep_0 + 4, sunder4, -21.6, 255.5 , 0 );
setEffScaleKey( spep_0 + 4, sunder4, 0.61, 1.46 );
setEffRotateKey( spep_0 + 4, sunder4, 174.8 );
setEffRotateKey( spep_0 + 90, sunder4, 174.8 );
setEffAlphaKey( spep_0 + 4, sunder4, 255 );

sunder6 = entryEffectLife( spep_0 + 6,  9015, 84, 0x100, -1, 0, -8.7, 260.7 );
setEffMoveKey( spep_0 + 6, sunder6, -8.7, 260.7 , 0 );
setEffScaleKey( spep_0 + 6, sunder6, 0.58, 1.61 );
setEffRotateKey( spep_0 + 6, sunder6, 0 );
setEffRotateKey( spep_0 + 90, sunder6, 0 );
setEffAlphaKey( spep_0 + 6, sunder6, 255 );

sunder8 = entryEffectLife( spep_0 + 10,  9015, 80, 0x100, -1, 0, -147.7, 244.3 );
setEffMoveKey( spep_0 + 10, sunder8, -147.7, 244.3 , 0 );
setEffScaleKey( spep_0 + 10, sunder8, 0.61, 1.46 );
setEffRotateKey( spep_0 + 10, sunder8, -45.8 );
setEffRotateKey( spep_0 + 90, sunder8, -45.8 );
setEffAlphaKey( spep_0 + 10, sunder8, 255 );

sunder12 = entryEffectLife( spep_0 + 12,  9015, 78, 0x100, -1, 0, 98.3, 202.8 );
setEffMoveKey( spep_0 + 12, sunder12, 98.3, 202.8 , 0 );
setEffScaleKey( spep_0 + 12, sunder12, 0.76, 1.6 );
setEffRotateKey( spep_0 + 12, sunder12, -142.3 );
setEffRotateKey( spep_0 + 90, sunder12, -142.3 );
setEffAlphaKey( spep_0 + 12, sunder12, 255 );

sunder16 = entryEffectLife( spep_0 + 16,  9015, 74, 0x100, -1, 0, 88, -231.2 );
setEffMoveKey( spep_0 + 16, sunder16, 88, -231.2 , 0 );
setEffScaleKey( spep_0 + 16, sunder16, 0.61, 1.54 );
setEffRotateKey( spep_0 + 16, sunder16, 140 );
setEffRotateKey( spep_0 + 90, sunder16, 140 );
setEffAlphaKey( spep_0 + 16, sunder16, 255 );

sunder18 = entryEffectLife( spep_0 + 18,  9015, 72, 0x100, -1, 0, 65.8, 215.8 );
setEffMoveKey( spep_0 + 18, sunder18, 65.8, 215.8 , 0 );
setEffScaleKey( spep_0 + 18, sunder18, 0.76, 1.6 );
setEffRotateKey( spep_0 + 18, sunder18, -142.3 );
setEffRotateKey( spep_0 + 90, sunder18, -142.3 );
setEffAlphaKey( spep_0 + 18, sunder18, 255 );

-- ** オーラ波 ** --
aurawave = entryEffectLife( spep_0 + 0,  9008, 24, 0x100, -1, 0, -5.7, -94.4 - 50 );
setEffMoveKey( spep_0 + 0, aurawave, -5.7, -94.4 - 50 , 0 );
setEffMoveKey( spep_0 + 24, aurawave, -5.7, -94.4 - 50 , 0 );
setEffScaleKey( spep_0 + 0, aurawave, 1.1, 0.52 );
setEffScaleKey( spep_0 + 16, aurawave, 1.5, 1.3 );
setEffScaleKey( spep_0 + 24, aurawave, 1.5, 1.6 );
setEffRotateKey( spep_0 + 0, aurawave, 0 );
setEffRotateKey( spep_0 + 24, aurawave, 0 );
setEffAlphaKey( spep_0 + 0, aurawave, 255 );
setEffAlphaKey( spep_0 + 2, aurawave, 237 );
setEffAlphaKey( spep_0 + 4, aurawave, 219 );
setEffAlphaKey( spep_0 + 6, aurawave, 200 );
setEffAlphaKey( spep_0 + 8, aurawave, 182 );
setEffAlphaKey( spep_0 + 10, aurawave, 164 );
setEffAlphaKey( spep_0 + 12, aurawave, 146 );
setEffAlphaKey( spep_0 + 14, aurawave, 128 );
setEffAlphaKey( spep_0 + 16, aurawave, 114 );
setEffAlphaKey( spep_0 + 18, aurawave, 99 );
setEffAlphaKey( spep_0 + 20, aurawave, 84 );
setEffAlphaKey( spep_0 + 22, aurawave, 68 );
setEffAlphaKey( spep_0 + 24, aurawave, 51 );

aurawave2 = entryEffectLife( spep_0 + 14,  9008, 24, 0x100, -1, 0, -5.6, -100.3 - 50 );
setEffMoveKey( spep_0 + 14, aurawave2, -5.6, -100.3 - 50 , 0 );
setEffMoveKey( spep_0 + 38, aurawave2, -5.6, -100.3 - 50 , 0 );
setEffScaleKey( spep_0 + 14, aurawave2, 1.1, 0.52 );
setEffScaleKey( spep_0 + 30, aurawave2, 1.5, 1.3 );
setEffScaleKey( spep_0 + 38, aurawave2, 1.5, 1.6 );
setEffRotateKey( spep_0 + 14, aurawave2, 0 );
setEffRotateKey( spep_0 + 38, aurawave2, 0 );
setEffAlphaKey( spep_0 + 14, aurawave2, 255 );
setEffAlphaKey( spep_0 + 16, aurawave2, 237 );
setEffAlphaKey( spep_0 + 18, aurawave2, 219 );
setEffAlphaKey( spep_0 + 20, aurawave2, 200 );
setEffAlphaKey( spep_0 + 22, aurawave2, 182 );
setEffAlphaKey( spep_0 + 24, aurawave2, 164 );
setEffAlphaKey( spep_0 + 26, aurawave2, 146 );
setEffAlphaKey( spep_0 + 28, aurawave2, 128 );
setEffAlphaKey( spep_0 + 30, aurawave2, 114 );
setEffAlphaKey( spep_0 + 32, aurawave2, 99 );
setEffAlphaKey( spep_0 + 34, aurawave2, 84 );
setEffAlphaKey( spep_0 + 36, aurawave2, 68 );
setEffAlphaKey( spep_0 + 38, aurawave2, 51 );

aurawave3 = entryEffectLife( spep_0 + 40,  9008, 24, 0x100, -1, 0, -5.7, -94.4 - 50 );
setEffMoveKey( spep_0 + 40, aurawave3, -5.7, -94.4 - 50 , 0 );
setEffMoveKey( spep_0 + 64, aurawave3, -5.7, -94.4 - 50 , 0 );
setEffScaleKey( spep_0 + 40, aurawave3, 1.1, 0.52 );
setEffScaleKey( spep_0 + 56, aurawave3, 1.5, 1.3 );
setEffScaleKey( spep_0 + 64, aurawave3, 1.5, 1.86 );
setEffRotateKey( spep_0 + 40, aurawave3, 0 );
setEffRotateKey( spep_0 + 64, aurawave3, 0 );
setEffAlphaKey( spep_0 + 40, aurawave3, 255 );
setEffAlphaKey( spep_0 + 42, aurawave3, 237 );
setEffAlphaKey( spep_0 + 44, aurawave3, 219 );
setEffAlphaKey( spep_0 + 46, aurawave3, 200 );
setEffAlphaKey( spep_0 + 48, aurawave3, 182 );
setEffAlphaKey( spep_0 + 50, aurawave3, 164 );
setEffAlphaKey( spep_0 + 52, aurawave3, 146 );
setEffAlphaKey( spep_0 + 54, aurawave3, 128 );
setEffAlphaKey( spep_0 + 56, aurawave3, 114 );
setEffAlphaKey( spep_0 + 58, aurawave3, 99 );
setEffAlphaKey( spep_0 + 60, aurawave3, 84 );
setEffAlphaKey( spep_0 + 62, aurawave3, 68 );
setEffAlphaKey( spep_0 + 64, aurawave3, 51 );

aurawave4 = entryEffectLife( spep_0 + 54,  9008, 24, 0x100, -1, 0, -5.6, -100.3 - 50 );
setEffMoveKey( spep_0 + 54, aurawave4, -5.6, -100.3 - 50 , 0 );
setEffMoveKey( spep_0 + 78, aurawave4, -5.6, -100.3 - 50 , 0 );
setEffScaleKey( spep_0 + 54, aurawave4, 1.1, 0.52 );
setEffScaleKey( spep_0 + 70, aurawave4, 1.5, 1.3 );
setEffScaleKey( spep_0 + 78, aurawave4, 1.5, 1.6 );
setEffRotateKey( spep_0 + 54, aurawave4, 0 );
setEffRotateKey( spep_0 + 78, aurawave4, 0 );
setEffAlphaKey( spep_0 + 54, aurawave4, 255 );
setEffAlphaKey( spep_0 + 56, aurawave4, 237 );
setEffAlphaKey( spep_0 + 58, aurawave4, 219 );
setEffAlphaKey( spep_0 + 60, aurawave4, 200 );
setEffAlphaKey( spep_0 + 62, aurawave4, 182 );
setEffAlphaKey( spep_0 + 64, aurawave4, 164 );
setEffAlphaKey( spep_0 + 66, aurawave4, 146 );
setEffAlphaKey( spep_0 + 68, aurawave4, 128 );
setEffAlphaKey( spep_0 + 70, aurawave4, 114 );
setEffAlphaKey( spep_0 + 72, aurawave4, 99 );
setEffAlphaKey( spep_0 + 74, aurawave4, 84 );
setEffAlphaKey( spep_0 + 76, aurawave4, 68 );
setEffAlphaKey( spep_0 + 78, aurawave4, 51 );

aurawave5 = entryEffectLife( spep_0 + 80,  9008, 24, 0x100, -1, 0, -5.7, -94.4 - 50 );
setEffMoveKey( spep_0 + 80, aurawave5, -5.7, -94.4 - 50 , 0 );
setEffMoveKey( spep_0 + 104, aurawave5, -5.7, -94.4 - 50 , 0 );
setEffScaleKey( spep_0 + 80, aurawave5, 1.1, 0.52 );
setEffScaleKey( spep_0 + 96, aurawave5, 1.5, 1.3 );
setEffScaleKey( spep_0 + 104, aurawave5, 1.5, 1.6 );
setEffRotateKey( spep_0 + 80, aurawave5, 0 );
setEffRotateKey( spep_0 + 104, aurawave5, 0 );
setEffAlphaKey( spep_0 + 80, aurawave5, 255 );
setEffAlphaKey( spep_0 + 82, aurawave5, 237 );
setEffAlphaKey( spep_0 + 84, aurawave5, 219 );
setEffAlphaKey( spep_0 + 86, aurawave5, 200 );
setEffAlphaKey( spep_0 + 88, aurawave5, 182 );
setEffAlphaKey( spep_0 + 90, aurawave5, 164 );
setEffAlphaKey( spep_0 + 92, aurawave5, 146 );
setEffAlphaKey( spep_0 + 94, aurawave5, 128 );
setEffAlphaKey( spep_0 + 96, aurawave5, 114 );
setEffAlphaKey( spep_0 + 98, aurawave5, 99 );
setEffAlphaKey( spep_0 + 100, aurawave5, 84 );
setEffAlphaKey( spep_0 + 102, aurawave5, 68 );
setEffAlphaKey( spep_0 + 104, aurawave5, 51 );

aurawave6 = entryEffectLife( spep_0 + 94,  9008, 24, 0x100, -1, 0, -5.6, -100.3 - 50 );
setEffMoveKey( spep_0 + 94, aurawave6, -5.6, -100.3 - 50 , 0 );
setEffMoveKey( spep_0 + 118, aurawave6, -5.6, -100.3 - 50 , 0 );
setEffScaleKey( spep_0 + 94, aurawave6, 1.1, 0.52 );
setEffScaleKey( spep_0 + 110, aurawave6, 1.5, 1.3 );
setEffScaleKey( spep_0 + 118, aurawave6, 1.5, 1.6 );
setEffRotateKey( spep_0 + 94, aurawave6, 0 );
setEffRotateKey( spep_0 + 118, aurawave6, 0 );
setEffAlphaKey( spep_0 + 94, aurawave6, 255 );
setEffAlphaKey( spep_0 + 96, aurawave6, 237 );
setEffAlphaKey( spep_0 + 98, aurawave6, 219 );
setEffAlphaKey( spep_0 + 100, aurawave6, 200 );
setEffAlphaKey( spep_0 + 102, aurawave6, 182 );
setEffAlphaKey( spep_0 + 104, aurawave6, 164 );
setEffAlphaKey( spep_0 + 106, aurawave6, 146 );
setEffAlphaKey( spep_0 + 108, aurawave6, 128 );
setEffAlphaKey( spep_0 + 110, aurawave6, 114 );
setEffAlphaKey( spep_0 + 112, aurawave6, 99 );
setEffAlphaKey( spep_0 + 114, aurawave6, 84 );
setEffAlphaKey( spep_0 + 116, aurawave6, 68 );
setEffAlphaKey( spep_0 + 118, aurawave6, 51 );

aurawave7 = entryEffectLife( spep_0 + 120,  9008, 24, 0x100, -1, 0, -5.7, -94.4 - 50 );
setEffMoveKey( spep_0 + 120, aurawave7, -5.8, -96.2 - 50 , 0 );
setEffMoveKey( spep_0 + 122, aurawave7, -5.9, -80 - 50 , 0 );
setEffMoveKey( spep_0 + 124, aurawave7, -6, -75 - 50 , 0 );
setEffMoveKey( spep_0 + 126, aurawave7, -6.1, -60 - 50 , 0 );
setEffMoveKey( spep_0 + 128, aurawave7, -6.2, -50 - 50 , 0 );
setEffMoveKey( spep_0 + 130, aurawave7, -6.3, -40 - 50 , 0 );
setEffMoveKey( spep_0 + 132, aurawave7, -6.4, -30 - 50 , 0 );
setEffMoveKey( spep_0 + 134, aurawave7, -6.5, -20 - 50 , 0 );
setEffMoveKey( spep_0 + 136, aurawave7, -6.6, -10 - 50 , 0 );
setEffMoveKey( spep_0 + 138, aurawave7, -6.7, 0 - 50 , 0 );
setEffMoveKey( spep_0 + 140, aurawave7, -6.8, 10 - 50 , 0 );
setEffMoveKey( spep_0 + 142, aurawave7, -7, 20 - 50 , 0 );
setEffMoveKey( spep_0 + 144, aurawave7, -7.4, 30 - 50 , 0 );
setEffScaleKey( spep_0 + 120, aurawave7, 1.3, 0.8 );
setEffScaleKey( spep_0 + 132, aurawave7, 1.9, 1.5 );
setEffScaleKey( spep_0 + 144, aurawave7, 2.3, 2.3 );
setEffRotateKey( spep_0 + 120, aurawave7, 0 );
setEffRotateKey( spep_0 + 144, aurawave7, 0 );
setEffAlphaKey( spep_0 + 120, aurawave7, 255 );
setEffAlphaKey( spep_0 + 122, aurawave7, 237 );
setEffAlphaKey( spep_0 + 124, aurawave7, 219 );
setEffAlphaKey( spep_0 + 126, aurawave7, 200 );
setEffAlphaKey( spep_0 + 128, aurawave7, 182 );
setEffAlphaKey( spep_0 + 130, aurawave7, 164 );
setEffAlphaKey( spep_0 + 132, aurawave7, 146 );
setEffAlphaKey( spep_0 + 134, aurawave7, 128 );
setEffAlphaKey( spep_0 + 136, aurawave7, 114 );
setEffAlphaKey( spep_0 + 138, aurawave7, 99 );
setEffAlphaKey( spep_0 + 140, aurawave7, 84 );
setEffAlphaKey( spep_0 + 142, aurawave7, 68 );
setEffAlphaKey( spep_0 + 144, aurawave7, 51 );

aurawave8 = entryEffectLife( spep_0 + 134,  9008, 24, 0x100, -1, 0,  -6.4, -115.1 - 50 );
setEffMoveKey( spep_0 + 134, aurawave8, -6.4, -115.1 - 50 , 0 );
setEffMoveKey( spep_0 + 158, aurawave8, -6.4, -115.1 - 50 , 0 );
setEffScaleKey( spep_0 + 134, aurawave8, 1.3, 0.8 );
setEffScaleKey( spep_0 + 150, aurawave8, 2.4, 2.1 );
setEffScaleKey( spep_0 + 158, aurawave8, 3.1, 3.1 );
setEffRotateKey( spep_0 + 134, aurawave8, 0 );
setEffRotateKey( spep_0 + 158, aurawave8, 0 );
setEffAlphaKey( spep_0 + 134, aurawave8, 255 );
setEffAlphaKey( spep_0 + 136, aurawave8, 237 );
setEffAlphaKey( spep_0 + 138, aurawave8, 219 );
setEffAlphaKey( spep_0 + 140, aurawave8, 200 );
setEffAlphaKey( spep_0 + 142, aurawave8, 182 );
setEffAlphaKey( spep_0 + 144, aurawave8, 164 );
setEffAlphaKey( spep_0 + 146, aurawave8, 146 );
setEffAlphaKey( spep_0 + 148, aurawave8, 128 );
setEffAlphaKey( spep_0 + 150, aurawave8, 114 );
setEffAlphaKey( spep_0 + 152, aurawave8, 99 );
setEffAlphaKey( spep_0 + 154, aurawave8, 84 );
setEffAlphaKey( spep_0 + 156, aurawave8, 68 );
setEffAlphaKey( spep_0 + 158, aurawave8, 51 );

aurawave9 = entryEffectLife( spep_0 + 160,  9008, 24, 0x100, -1, 0,  -8.5, -141.7 - 50 );
setEffMoveKey( spep_0 + 160, aurawave9, -8.5, -141.7 - 50 , 0 );
setEffMoveKey( spep_0 + 184, aurawave9, -8.5, -141.7 - 50 , 0 );
setEffScaleKey( spep_0 + 160, aurawave9, 1.3, 0.8 );
setEffScaleKey( spep_0 + 176, aurawave9, 2.4, 2.1 );
setEffScaleKey( spep_0 + 184, aurawave9, 3.1, 3.1 );
setEffRotateKey( spep_0 + 160, aurawave9, 0 );
setEffRotateKey( spep_0 + 184, aurawave9, 0 );
setEffAlphaKey( spep_0 + 160, aurawave9, 255 );
setEffAlphaKey( spep_0 + 162, aurawave9, 237 );
setEffAlphaKey( spep_0 + 164, aurawave9, 219 );
setEffAlphaKey( spep_0 + 166, aurawave9, 200 );
setEffAlphaKey( spep_0 + 168, aurawave9, 182 );
setEffAlphaKey( spep_0 + 170, aurawave9, 164 );
setEffAlphaKey( spep_0 + 172, aurawave9, 146 );
setEffAlphaKey( spep_0 + 174, aurawave9, 128 );
setEffAlphaKey( spep_0 + 176, aurawave9, 114 );
setEffAlphaKey( spep_0 + 178, aurawave9, 99 );
setEffAlphaKey( spep_0 + 180, aurawave9, 84 );
setEffAlphaKey( spep_0 + 182, aurawave9, 68 );
setEffAlphaKey( spep_0 + 184, aurawave9, 51 );

aurawave10 = entryEffectLife( spep_0 + 174,  9008, 24, 0x100, -1, 0,  -10.8, -153 - 50 );
setEffMoveKey( spep_0 + 174, aurawave10, -10.8, -153 - 50 , 0 );
setEffMoveKey( spep_0 + 198, aurawave10, -10.8, -153 - 50 , 0 );
setEffScaleKey( spep_0 + 174, aurawave10, 1.3, 0.8 );
setEffScaleKey( spep_0 + 190, aurawave10, 2.4, 2.1 );
setEffScaleKey( spep_0 + 198, aurawave10, 3.1, 3.1 );
setEffRotateKey( spep_0 + 174, aurawave10, 0 );
setEffRotateKey( spep_0 + 194, aurawave10, 0 );
setEffAlphaKey( spep_0 + 174, aurawave10, 255 );
setEffAlphaKey( spep_0 + 176, aurawave10, 237 );
setEffAlphaKey( spep_0 + 178, aurawave10, 219 );
setEffAlphaKey( spep_0 + 180, aurawave10, 200 );
setEffAlphaKey( spep_0 + 182, aurawave10, 182 );
setEffAlphaKey( spep_0 + 184, aurawave10, 164 );
setEffAlphaKey( spep_0 + 186, aurawave10, 146 );
setEffAlphaKey( spep_0 + 188, aurawave10, 128 );
setEffAlphaKey( spep_0 + 190, aurawave10, 114 );
setEffAlphaKey( spep_0 + 192, aurawave10, 99 );
setEffAlphaKey( spep_0 + 194, aurawave10, 84 );

aurawave11 = entryEffectLife( spep_0 + 200,  9008, 24, 0x100, -1, 0, -8.5, -141.7 - 50 );
setEffMoveKey( spep_0 + 200, aurawave11, -8.5, -141.7 - 50 , 0 );
setEffMoveKey( spep_0 + 224, aurawave11, -8.5, -141.7 - 50 , 0 );
setEffScaleKey( spep_0 + 200, aurawave11, 1.3, 0.8 );
setEffScaleKey( spep_0 + 216, aurawave11, 2.4, 2.1 );
setEffScaleKey( spep_0 + 224, aurawave11, 3.1, 3.1 );
setEffRotateKey( spep_0 + 200, aurawave11, 0 );
setEffRotateKey( spep_0 + 224, aurawave11, 0 );
setEffAlphaKey( spep_0 + 200, aurawave11, 255 );
setEffAlphaKey( spep_0 + 202, aurawave11, 237 );
setEffAlphaKey( spep_0 + 204, aurawave11, 219 );
setEffAlphaKey( spep_0 + 206, aurawave11, 200 );
setEffAlphaKey( spep_0 + 208, aurawave11, 182 );
setEffAlphaKey( spep_0 + 210, aurawave11, 164 );
setEffAlphaKey( spep_0 + 212, aurawave11, 146 );
setEffAlphaKey( spep_0 + 214, aurawave11, 128 );
setEffAlphaKey( spep_0 + 216, aurawave11, 114 );
setEffAlphaKey( spep_0 + 218, aurawave11, 99 );
setEffAlphaKey( spep_0 + 220, aurawave11, 84 );
setEffAlphaKey( spep_0 + 222, aurawave11, 68 );
setEffAlphaKey( spep_0 + 224, aurawave11, 51 );

aurawave12 = entryEffectLife( spep_0 + 214,  9008, 24, 0x100, -1, 0, -10.8, -153 - 50 );
setEffMoveKey( spep_0 + 214, aurawave12, -10.8, -153 - 50 , 0 );
setEffMoveKey( spep_0 + 238, aurawave12, -10.8, -153 - 50 , 0 );
setEffScaleKey( spep_0 + 214, aurawave12, 1.3, 0.8 );
setEffScaleKey( spep_0 + 230, aurawave12, 2.4, 2.1 );
setEffScaleKey( spep_0 + 238, aurawave12, 3.1, 3.1 );
setEffRotateKey( spep_0 + 214, aurawave12, 0 );
setEffRotateKey( spep_0 + 238, aurawave12, 0 );
setEffAlphaKey( spep_0 + 214, aurawave12, 255 );
setEffAlphaKey( spep_0 + 216, aurawave12, 237 );
setEffAlphaKey( spep_0 + 218, aurawave12, 219 );
setEffAlphaKey( spep_0 + 220, aurawave12, 200 );
setEffAlphaKey( spep_0 + 222, aurawave12, 182 );
setEffAlphaKey( spep_0 + 224, aurawave12, 164 );
setEffAlphaKey( spep_0 + 226, aurawave12, 146 );
setEffAlphaKey( spep_0 + 228, aurawave12, 128 );
setEffAlphaKey( spep_0 + 230, aurawave12, 114 );
setEffAlphaKey( spep_0 + 232, aurawave12, 99 );
setEffAlphaKey( spep_0 + 234, aurawave12, 128 );
setEffAlphaKey( spep_0 + 236, aurawave12, 114 );
setEffAlphaKey( spep_0 + 238, aurawave12, 68 );


-- ** ラベル ** --
splb = entryEffectLife( spep_0 + 8,  9023, 128, 0, -1, 0, 722, 388,  100 );
setEffMoveKey( spep_0 + 8, splb, 722, 388 , 0 );
setEffMoveKey( spep_0 + 10, splb, 578, 388 , 0 );
setEffMoveKey( spep_0 + 12, splb, 434, 388 , 0 );
setEffMoveKey( spep_0 + 14, splb, 290, 388 , 0 );
setEffMoveKey( spep_0 + 16, splb, 146, 388 , 0 );
setEffMoveKey( spep_0 + 18, splb, 2, 388 , 0 );
setEffMoveKey( spep_0 + 126, splb, 2, 388 , 0 );
setEffMoveKey( spep_0 + 128, splb, -146, 388 , 0 );
setEffMoveKey( spep_0 + 130, splb, -294, 388 , 0 );
setEffMoveKey( spep_0 + 132, splb, -442, 388 , 0 );
setEffMoveKey( spep_0 + 134, splb, -590, 388 , 0 );
setEffMoveKey( spep_0 + 136, splb, -738, 388 , 0 );
setEffScaleKey( spep_0 + 8, splb, 1, 1 );
setEffRotateKey( spep_0 + 8, splb, 0 );
setEffAlphaKey( spep_0 + 8, splb, 255 );

-- ** カットイン ** --
speff = entryEffect( spep_0 + 120 + 40, 1504, 0, -1, 0, 0, 0,  100); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2); -- カットイン差し替え


ctgogogo = entryEffectLife( spep_0 + 118 + 40,  10008, 60, 0x100, -1, 0, -186, 254,  120 );
setEffMoveKey( spep_0 + 118 + 40, ctgogogo, -186, 254 , 0 );
setEffMoveKey( spep_0 + 120 + 40, ctgogogo, -190, 250 , 0 );
setEffMoveKey( spep_0 + 122 + 40, ctgogogo, -182, 258 , 0 );
setEffMoveKey( spep_0 + 124 + 40, ctgogogo, -182, 250 , 0 );
setEffMoveKey( spep_0 + 126 + 40, ctgogogo, -190, 258 , 0 );
setEffMoveKey( spep_0 + 128 + 40, ctgogogo, -186, 254 , 0 );
setEffMoveKey( spep_0 + 130 + 40, ctgogogo, -186, 254 , 0 );
setEffMoveKey( spep_0 + 132 + 40, ctgogogo, -190, 250 , 0 );
setEffMoveKey( spep_0 + 134 + 40, ctgogogo, -182, 258 , 0 );
setEffMoveKey( spep_0 + 136 + 40, ctgogogo, -182, 250 , 0 );
setEffMoveKey( spep_0 + 138 + 40, ctgogogo, -190, 258 , 0 );
setEffMoveKey( spep_0 + 140 + 40, ctgogogo, -186, 254 , 0 );
setEffMoveKey( spep_0 + 142 + 40, ctgogogo, -186, 254 , 0 );
setEffMoveKey( spep_0 + 144 + 40, ctgogogo, -190, 250 , 0 );
setEffMoveKey( spep_0 + 146 + 40, ctgogogo, -182, 258 , 0 );
setEffMoveKey( spep_0 + 148 + 40, ctgogogo, -182, 250 , 0 );
setEffMoveKey( spep_0 + 150 + 40, ctgogogo, -190, 258 , 0 );
setEffMoveKey( spep_0 + 152 + 40, ctgogogo, -186, 254 , 0 );
setEffMoveKey( spep_0 + 154 + 40, ctgogogo, -186, 254 , 0 );
setEffMoveKey( spep_0 + 156 + 40, ctgogogo, -190, 250 , 0 );
setEffMoveKey( spep_0 + 158 + 40, ctgogogo, -182, 258 , 0 );
setEffMoveKey( spep_0 + 160 + 40, ctgogogo, -182, 250 , 0 );
setEffMoveKey( spep_0 + 162 + 40, ctgogogo, -190, 258 , 0 );
setEffMoveKey( spep_0 + 164 + 40, ctgogogo, -186, 254 , 0 );
setEffMoveKey( spep_0 + 166 + 40, ctgogogo, -186, 254 , 0 );
setEffMoveKey( spep_0 + 168 + 40, ctgogogo, -190, 250 , 0 );
setEffMoveKey( spep_0 + 170 + 40, ctgogogo, -182, 258 , 0 );
setEffMoveKey( spep_0 + 172 + 40, ctgogogo, -182, 250 , 0 );
setEffMoveKey( spep_0 + 174 + 40, ctgogogo, -190, 258 , 0 );
setEffMoveKey( spep_0 + 176 + 40, ctgogogo, -186, 254 , 0 );
setEffScaleKey( spep_0 + 118 + 40, ctgogogo, 1.5, 1.5 );
setEffScaleKey( spep_0 + 178 + 40, ctgogogo, 1.5, 1.5 );
setEffRotateKey( spep_0 + 118 + 40, ctgogogo, 0 );
setEffRotateKey( spep_0 + 178 + 40, ctgogogo, 0 );
setEffAlphaKey( spep_0 + 118 + 40, ctgogogo, 255 );
setEffAlphaKey( spep_0 + 178 + 40, ctgogogo, 255 );

aurabg3 = entryEffectLife( spep_0 + 190 + 40 + 20,  9016, 6, 0x80, -1, 0, 0, 0 );  -- カットインあけに表示
setEffMoveKey( spep_0 + 190+ 40 + 20,  aurabg3,  0,  0,  0);
setEffMoveKey( spep_0 + 196+ 40 + 20,  aurabg3,  0,  0,  0);
setEffScaleKey( spep_0 + 190+ 40 + 20,  aurabg3,  1.0,  1.0);
setEffScaleKey( spep_0 + 196+ 40 + 20,  aurabg3,  1.0,  1.0);
setEffRotateKey(  spep_0 + 190+ 40 + 20,  aurabg3,  0);
setEffRotateKey(  spep_0 + 196+ 40 + 20,  aurabg3,  0);
setEffAlphaKey(  spep_0 + 190+ 40 + 20,  aurabg3,  255);
setEffAlphaKey(  spep_0 + 196+ 40 + 20,  aurabg3,  255);

-- ** バトルキャラ ** --
setDisp( spep_0 + 0, 0, 1 );
setDisp( spep_0 + 388 + 40, 0, 0 );
changeAnime( spep_0 + 0, 0, 17 );
setMoveKey( spep_0 + 0, 0, 0, 20 , 0 );
setMoveKey( spep_0 + 78 + 40, 0, 0, 20 , 0 );
setMoveKey( spep_0 + 80 + 40, 0, 0, 20.4 , 0 );
setMoveKey( spep_0 + 82 + 40, 0, 0, 20.7 , 0 );
setMoveKey( spep_0 + 84 + 40, 0, 0, 21.1 , 0 );
setMoveKey( spep_0 + 86 + 40, 0, 0, 21.5 , 0 );
setMoveKey( spep_0 + 88 + 40, 0, 0, 21.8 , 0 );
setMoveKey( spep_0 + 90 + 40, 0, 0, 22.2 , 0 );
setMoveKey( spep_0 + 92 + 40, 0, 0, 22.6 , 0 );
setMoveKey( spep_0 + 94 + 40, 0, 0, 22.9 , 0 );
setMoveKey( spep_0 + 96 + 40, 0, 0, 23.3 , 0 );
setMoveKey( spep_0 + 98 + 40, 0, 0, 23.7 , 0 );
setMoveKey( spep_0 + 100 + 40, 0, 0, 24 , 0 );
setMoveKey( spep_0 + 102 + 40, 0, 0, 24.4 , 0 );
setMoveKey( spep_0 + 104 + 40, 0, 0, 26 , 0 );
setMoveKey( spep_0 + 106 + 40, 0, 0, 27.7 , 0 );
setMoveKey( spep_0 + 108 + 40, 0, 0, 29.3 , 0 );
setMoveKey( spep_0 + 110 + 40, 0, 0, 31 , 0 );
setMoveKey( spep_0 + 112 + 40, 0, 4.9, 34.9 , 0 );
setMoveKey( spep_0 + 114 + 40, 0, -2.4, 27.5 , 0 );
setMoveKey( spep_0 + 116 + 40, 0, -2.4, 32.4 , 0 );
setMoveKey( spep_0 + 118 + 40, 0, 2.5, 27.5 , 0 );
setMoveKey( spep_0 + 120 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 122 + 40, 0, 2.5, 32.4 , 0 );
setMoveKey( spep_0 + 124 + 40, 0, -2.4, 27.5 , 0 );
setMoveKey( spep_0 + 126 + 40, 0, -2.4, 32.4 , 0 );
setMoveKey( spep_0 + 128 + 40, 0, 2.5, 27.5 , 0 );
setMoveKey( spep_0 + 130 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 132 + 40, 0, 2.5, 32.4 , 0 );
setMoveKey( spep_0 + 134 + 40, 0, -2.4, 27.5 , 0 );
setMoveKey( spep_0 + 136 + 40, 0, -2.4, 32.4 , 0 );
setMoveKey( spep_0 + 138 + 40, 0, 2.5, 27.5 , 0 );
setMoveKey( spep_0 + 140 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 142 + 40, 0, 2.5, 32.4 , 0 );
setMoveKey( spep_0 + 144 + 40, 0, -2.4, 27.5 , 0 );
setMoveKey( spep_0 + 146 + 40, 0, -2.4, 32.4 , 0 );
setMoveKey( spep_0 + 148 + 40, 0, 2.5, 27.5 , 0 );
setMoveKey( spep_0 + 150 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 152 + 40, 0, 2.5, 32.4 , 0 );
setMoveKey( spep_0 + 154 + 40, 0, -2.4, 27.5 , 0 );
setMoveKey( spep_0 + 156 + 40, 0, -2.4, 32.4 , 0 );
setMoveKey( spep_0 + 158 + 40, 0, 2.5, 27.5 , 0 );
setMoveKey( spep_0 + 160 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 162 + 40, 0, 2.5, 32.4 , 0 );
setMoveKey( spep_0 + 164 + 40, 0, -2.4, 27.5 , 0 );
setMoveKey( spep_0 + 166 + 40, 0, -2.4, 32.4 , 0 );
setMoveKey( spep_0 + 168 + 40, 0, 2.5, 27.5 , 0 );
setMoveKey( spep_0 + 170 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 172 + 40, 0, 2.5, 32.4 , 0 );
setMoveKey( spep_0 + 174 + 40, 0, -2.4, 27.5 , 0 );
setMoveKey( spep_0 + 176 + 40, 0, -2.4, 32.4 , 0 );
setMoveKey( spep_0 + 178 + 40, 0, 2.5, 27.5 , 0 );
setMoveKey( spep_0 + 180 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 182 + 40, 0, 2.5, 32.4 , 0 );
setMoveKey( spep_0 + 184 + 40, 0, -2.4, 27.5 , 0 );
setMoveKey( spep_0 + 186 + 40, 0, -2.4, 32.4 , 0 );
setMoveKey( spep_0 + 188 + 40, 0, 2.5, 27.5 , 0 );
setMoveKey( spep_0 + 190 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 194 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 196 + 40, 0, 0, 35 , 0 );
setMoveKey( spep_0 + 198 + 40, 0, 0, 40 , 0 );
setMoveKey( spep_0 + 200 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 202 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 204 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 206 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 208 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 210 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 212 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 214 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 216 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 218 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 220 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 222 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 224 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 226 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 228 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 230 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 232 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 234 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 236 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 238 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 240 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 242 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 244 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 246 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 248 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 250 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 252 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 254 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 256 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 258 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 260 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 262 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 264 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 266 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 268 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 270 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 272 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 274 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 276 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 278 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 280 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 282 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 284 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 286 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 288 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 290 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 292 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 294 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 296 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 298 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 300 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 302 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 304 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 306 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 308 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 310 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 312 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 314 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 316 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 318 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 320 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 322 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 324 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 326 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 328 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 330 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 332 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 334 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 336 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 338 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 340 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 342 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 344 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 346 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 348 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 350 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 352 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 354 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 356 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 358 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 360 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 362 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 364 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 366 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 368 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 370 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 372 + 20 , 0, -4, 34 , 0 );
setMoveKey( spep_0 + 374 + 20 , 0, 4, 26 , 0 );
setMoveKey( spep_0 + 376 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 378 + 40, 0, 4, 34 , 0 );
setMoveKey( spep_0 + 380 + 40, 0, -4, 26 , 0 );
setMoveKey( spep_0 + 382 + 40, 0, -4, 34 , 0 );
setMoveKey( spep_0 + 384 + 40, 0, 4, 26 , 0 );
setMoveKey( spep_0 + 386 + 40, 0, 0, 30 , 0 );
setMoveKey( spep_0 + 388 + 40, 0, 0, 30 , 0 );
setScaleKey( spep_0 + 0 + 40, 0, 1, 1 );
setScaleKey( spep_0 + 78 + 40, 0, 1, 1 );
setScaleKey( spep_0 + 80 + 40, 0, 1.02, 1.02 );
setScaleKey( spep_0 + 82 + 40, 0, 1.04, 1.04 );
setScaleKey( spep_0 + 84 + 40, 0, 1.06, 1.06 );
setScaleKey( spep_0 + 86 + 40, 0, 1.07, 1.07 );
setScaleKey( spep_0 + 88 + 40, 0, 1.09, 1.09 );
setScaleKey( spep_0 + 90 + 40, 0, 1.11, 1.11 );
setScaleKey( spep_0 + 92 + 40, 0, 1.13, 1.13 );
setScaleKey( spep_0 + 94 + 40, 0, 1.15, 1.15 );
setScaleKey( spep_0 + 96 + 40, 0, 1.17, 1.17 );
setScaleKey( spep_0 + 98 + 40, 0, 1.18, 1.18 );
setScaleKey( spep_0 + 100 + 40, 0, 1.2, 1.2 );
setScaleKey( spep_0 + 102 + 40, 0, 1.22, 1.22 );
setScaleKey( spep_0 + 104 + 40, 0, 1.3, 1.3 );
setScaleKey( spep_0 + 106 + 40, 0, 1.39, 1.39 );
setScaleKey( spep_0 + 108 + 40, 0, 1.47, 1.47 );
setScaleKey( spep_0 + 110 + 40, 0, 1.55, 1.55 );
--setScaleKey( spep_0 + 112, 0, 1.5, 1.5 );
--setScaleKey( spep_0 + 194, 0, 1.5, 1.5 );
--setScaleKey( spep_0 + 196, 0, 1.75, 1.75 );
--setScaleKey( spep_0 + 198, 0, 2, 2 );
setScaleKey( spep_0 + 388 + 40, 0, 1.55, 1.55 );
setRotateKey( spep_0 + 0, 0, 0 );
setRotateKey( spep_0 + 388 + 40, 0, 0 );


-- ** コネクタ ** --
-- ** 超コネクタ ** --
setDisp( spep_0 + 0, view14, 1 );
setDisp( spep_0 + 106 + 40, view14, 0 );
changeAnime( spep_0 + 0, view14, 17 );
setMoveKey( spep_0 + 0, view14, 206.1, 20 , 0 );
setMoveKey( spep_0 + 78 + 40, view14, 206.1, 20 , 0 );
setMoveKey( spep_0 + 80 + 40, view14, 207.5, 20 , 0 );
setMoveKey( spep_0 + 82 + 40, view14, 211.6, 20 , 0 );
setMoveKey( spep_0 + 84 + 40, view14, 218.6, 20 , 0 );
setMoveKey( spep_0 + 86 + 40, view14, 228.3, 20 , 0 );
setMoveKey( spep_0 + 88 + 40, view14, 240.8, 20 , 0 );
setMoveKey( spep_0 + 90 + 40, view14, 256, 20 , 0 );
setMoveKey( spep_0 + 92 + 40, view14, 274, 20 , 0 );
setMoveKey( spep_0 + 94 + 40, view14, 294.8, 20 , 0 );
setMoveKey( spep_0 + 96 + 40, view14, 318.4, 20 , 0 );
setMoveKey( spep_0 + 98 + 40, view14, 344.7, 20 , 0 );
setMoveKey( spep_0 + 100 + 40, view14, 373.8, 20 , 0 );
setMoveKey( spep_0 + 102 + 40, view14, 405.7, 20 , 0 );
setMoveKey( spep_0 + 104 + 40, view14, 440.4, 20 , 0 );
setMoveKey( spep_0 + 106 + 40, view14, 477.8, 20 , 0 );
setScaleKey( spep_0 + 0, view14, 0.8, 0.8 );
setScaleKey( spep_0 + 106 + 40, view14, 0.8, 0.8 );
setRotateKey( spep_0 + 0, view14, 0 );
setRotateKey( spep_0 + 106 + 40, view14, 0 );

-- ** 極コネクタ ** --
setDisp( spep_0 + 0, view7, 1 );
setDisp( spep_0 + 106 + 40, view7, 0 );
changeAnime( spep_0 + 0, view7, 17 );
setMoveKey( spep_0 + 0, view7, -212, 20 , 0 );
setMoveKey( spep_0 + 78 + 40, view7, -212, 20 , 0 );
setMoveKey( spep_0 + 80 + 40, view7, -213.3, 20 , 0 );
setMoveKey( spep_0 + 82 + 40, view7, -217.3, 20 , 0 );
setMoveKey( spep_0 + 84 + 40, view7, -223.9, 20 , 0 );
setMoveKey( spep_0 + 86 + 40, view7, -233.2, 20 , 0 );
setMoveKey( spep_0 + 88 + 40, view7, -245.1, 20 , 0 );
setMoveKey( spep_0 + 90 + 40, view7, -259.6, 20 , 0 );
setMoveKey( spep_0 + 92 + 40, view7, -276.8, 20 , 0 );
setMoveKey( spep_0 + 94 + 40, view7, -296.7, 20 , 0 );
setMoveKey( spep_0 + 96 + 40, view7, -319.2, 20 , 0 );
setMoveKey( spep_0 + 98 + 40, view7, -344.3, 20 , 0 );
setMoveKey( spep_0 + 100 + 40, view7, -372.1, 20 , 0 );
setMoveKey( spep_0 + 102 + 40, view7, -402.5, 20 , 0 );
setMoveKey( spep_0 + 104 + 40, view7, -435.6, 20 , 0 );
setMoveKey( spep_0 + 106 + 40, view7, -471.3, 20 , 0 );
setScaleKey( spep_0 + 0, view7, 0.8, 0.8 );
setScaleKey( spep_0 + 106 + 40, view7, 0.8, 0.8 );
setRotateKey( spep_0 + 0, view7, 0 );
setRotateKey( spep_0 + 106 + 40, view7, 0 );

-- ** サポーター ** --
--ボーナスキャラクターに選ばれたカードかどうか？
function isBonusCharacter(characterId)
	return characterId == BONUS_CHARACTER_CARD_IDS[1] or characterId == BONUS_CHARACTER_CARD_IDS[2] or characterId == BONUS_CHARACTER_CARD_IDS[3]
end

if (not isBonusCharacter(TEAM_CARD_IDS[1])) then
	 --超1番目のキャラクターの処理
	setDisp( spep_0 + 0, view1, 1 );
	setDisp( spep_0 + 106 + 40, view1, 0 );
	changeAnime( spep_0 + 0, view1, 17 );
	setMoveKey( spep_0 + 0, view1, 228.7, 421.9 , 0 );
	setMoveKey( spep_0 + 78 + 40, view1, 228.7, 421.9 , 0 );
	setMoveKey( spep_0 + 80 + 40, view1, 228.7, 423.9 , 0 );
	setMoveKey( spep_0 + 82 + 40, view1, 228.7, 429.9 , 0 );
	setMoveKey( spep_0 + 84 + 40, view1, 228.7, 440 , 0 );
	setMoveKey( spep_0 + 86 + 40, view1, 228.7, 454.1 , 0 );
	setMoveKey( spep_0 + 88 + 40, view1, 228.7, 472.3 , 0 );
	setMoveKey( spep_0 + 90 + 40, view1, 228.7, 494.4 , 0 );
	setMoveKey( spep_0 + 92 + 40, view1, 228.7, 520.7 , 0 );
	setMoveKey( spep_0 + 94 + 40, view1, 228.7, 550.9 , 0 );
	setMoveKey( spep_0 + 96 + 40, view1, 228.7, 585.2 , 0 );
	setMoveKey( spep_0 + 98 + 40, view1, 228.7, 623.5 , 0 );
	setMoveKey( spep_0 + 100 + 40, view1, 228.7, 665.8 , 0 );
	setMoveKey( spep_0 + 102 + 40, view1, 228.7, 712.2 , 0 );
	setMoveKey( spep_0 + 104 + 40, view1, 228.7, 762.6 , 0 );
	setMoveKey( spep_0 + 106 + 40, view1, 228.7, 817.1 , 0 );
	setScaleKey( spep_0 + 0, view1, 0.45, 0.45 );
	setScaleKey( spep_0 + 106 + 40, view1, 0.45, 0.45 );
	setRotateKey( spep_0 + 0, view1, 0 );
	setRotateKey( spep_0 + 106 + 40, view1, 0 );
end
if (not isBonusCharacter(TEAM_CARD_IDS[2])) then
	 --超2番目のキャラクターの処理
	setDisp( spep_0 + 0, view2, 1 );
	setDisp( spep_0 + 106 + 40, view2, 0 );
	changeAnime( spep_0 + 0, view2, 17 );
	setMoveKey( spep_0 + 0, view2, 158.2, 247.9 , 0 );
	setMoveKey( spep_0 + 78 + 40, view2, 158.2, 247.9 , 0 );
	setMoveKey( spep_0 + 80 + 40, view2, 158.2, 249.9 , 0 );
	setMoveKey( spep_0 + 82 + 40, view2, 158.2, 256 , 0 );
	setMoveKey( spep_0 + 84 + 40, view2, 158.2, 266 , 0 );
	setMoveKey( spep_0 + 86 + 40, view2, 158.2, 280.2 , 0 );
	setMoveKey( spep_0 + 88 + 40, view2, 158.2, 298.3 , 0 );
	setMoveKey( spep_0 + 90 + 40, view2, 158.2, 320.5 , 0 );
	setMoveKey( spep_0 + 92 + 40, view2, 158.2, 346.7 , 0 );
	setMoveKey( spep_0 + 94 + 40, view2, 158.2, 376.9 , 0 );
	setMoveKey( spep_0 + 96 + 40, view2, 158.2, 411.2 , 0 );
	setMoveKey( spep_0 + 98 + 40, view2, 158.2, 449.5 , 0 );
	setMoveKey( spep_0 + 100 + 40, view2, 158.2, 491.9 , 0 );
	setMoveKey( spep_0 + 102 + 40, view2, 158.2, 538.3 , 0 );
	setMoveKey( spep_0 + 104 + 40, view2, 158.2, 588.7 , 0 );
	setMoveKey( spep_0 + 106 + 40, view2, 158.2, 643.1 , 0 );
	setScaleKey( spep_0 + 0, view2, 0.5, 0.5 );
	setScaleKey( spep_0 + 106 + 40, view2, 0.5, 0.5 );
	setRotateKey( spep_0 + 0, view2, 0 );
	setRotateKey( spep_0 + 106 + 40, view2, 0 );
end
if (not isBonusCharacter(TEAM_CARD_IDS[3])) then
	--超3番目のキャラクターの処理
	setDisp( spep_0 + 0, view3, 1 );
	setDisp( spep_0 + 106 + 40, view3, 0 );
	changeAnime( spep_0 + 0, view3, 17 );
	setMoveKey( spep_0 + 0, view3, 35.9, 411.9 , 0 );
	setMoveKey( spep_0 + 78 + 40, view3, 35.9, 411.9 , 0 );
	setMoveKey( spep_0 + 80 + 40, view3, 35.9, 413.9 , 0 );
	setMoveKey( spep_0 + 82 + 40, view3, 35.9, 419.9 , 0 );
	setMoveKey( spep_0 + 84 + 40, view3, 35.9, 430 , 0 );
	setMoveKey( spep_0 + 86 + 40, view3, 35.9, 444.1 , 0 );
	setMoveKey( spep_0 + 88 + 40, view3, 35.9, 462.3 , 0 );
	setMoveKey( spep_0 + 90 + 40, view3, 35.9, 484.4 , 0 );
	setMoveKey( spep_0 + 92 + 40, view3, 35.9, 510.7 , 0 );
	setMoveKey( spep_0 + 94 + 40, view3, 35.9, 540.9 , 0 );
	setMoveKey( spep_0 + 96 + 40, view3, 35.9, 575.2 , 0 );
	setMoveKey( spep_0 + 98 + 40, view3, 35.9, 613.5 , 0 );
	setMoveKey( spep_0 + 100 + 40, view3, 35.9, 655.8 , 0 );
	setMoveKey( spep_0 + 102 + 40, view3, 35.9, 702.2 , 0 );
	setMoveKey( spep_0 + 104 + 40, view3, 35.9, 752.6 , 0 );
	setMoveKey( spep_0 + 106 + 40, view3, 35.9, 807.1 , 0 );
	setScaleKey( spep_0 + 0, view3, 0.45, 0.45 );
	setScaleKey( spep_0 + 106 + 40, view3, 0.45, 0.45 );
	setRotateKey( spep_0 + 0, view3, 0 );
	setRotateKey( spep_0 + 106 + 40, view3, 0 );
end
if (not isBonusCharacter(TEAM_CARD_IDS[4])) then
	--超4番目のキャラクターの処理
	setDisp( spep_0 + 0, view4, 1 );
	setDisp( spep_0 + 106 + 40, view4, 0 );
	changeAnime( spep_0 + 0, view4, 17);
	setMoveKey( spep_0 + 0, view4, -37.8, 267.9 , 0 );
	setMoveKey( spep_0 + 78 + 40, view4, -37.8, 267.9 , 0 );
	setMoveKey( spep_0 + 80 + 40, view4, -37.8, 269.9 , 0 );
	setMoveKey( spep_0 + 82 + 40, view4, -37.8, 276 , 0 );
	setMoveKey( spep_0 + 84 + 40, view4, -37.8, 286 , 0 );
	setMoveKey( spep_0 + 86 + 40, view4, -37.8, 300.2 , 0 );
	setMoveKey( spep_0 + 88 + 40, view4, -37.8, 318.3 , 0 );
	setMoveKey( spep_0 + 90 + 40, view4, -37.8, 340.5 , 0 );
	setMoveKey( spep_0 + 92 + 40, view4, -37.8, 366.7 , 0 );
	setMoveKey( spep_0 + 94 + 40, view4, -37.8, 396.9 , 0 );
	setMoveKey( spep_0 + 96 + 40, view4, -37.8, 431.2 , 0 );
	setMoveKey( spep_0 + 98 + 40, view4, -37.8, 469.5 , 0 );
	setMoveKey( spep_0 + 100 + 40, view4, -37.8, 511.9 , 0 );
	setMoveKey( spep_0 + 102 + 40, view4, -37.8, 558.3 , 0 );
	setMoveKey( spep_0 + 104 + 40, view4, -37.8, 608.7 , 0 );
	setMoveKey( spep_0 + 106 + 40, view4, -37.8, 663.1 , 0 );
	setScaleKey( spep_0 + 0, view4, 0.5, 0.5 );
	setScaleKey( spep_0 + 106 + 40, view4, 0.5, 0.5 );
	setRotateKey( spep_0 + 0, view4, 0 );
	setRotateKey( spep_0 + 106 + 40, view4, 0 );
end
if (not isBonusCharacter(TEAM_CARD_IDS[5])) then
	--超5番目のキャラクターの処理
	setDisp( spep_0 + 0, view5, 1 );
	setDisp( spep_0 + 106 + 40, view5, 0 );
	changeAnime( spep_0 + 0, view5, 17 );
	setMoveKey( spep_0 + 0, view5, -159.9, 431.9 , 0 );
	setMoveKey( spep_0 + 78 + 40, view5, -159.9, 431.9 , 0 );
	setMoveKey( spep_0 + 80 + 40, view5, -159.9, 433.9 , 0 );
	setMoveKey( spep_0 + 82 + 40, view5, -159.9, 439.9 , 0 );
	setMoveKey( spep_0 + 84 + 40, view5, -159.9, 450 , 0 );
	setMoveKey( spep_0 + 86 + 40, view5, -159.9, 464.1 , 0 );
	setMoveKey( spep_0 + 88 + 40, view5, -159.9, 482.3 , 0 );
	setMoveKey( spep_0 + 90 + 40, view5, -159.9, 504.4 , 0 );
	setMoveKey( spep_0 + 92 + 40, view5, -159.9, 530.7 , 0 );
	setMoveKey( spep_0 + 94 + 40, view5, -159.9, 560.9 , 0 );
	setMoveKey( spep_0 + 96 + 40, view5, -159.9, 595.2 , 0 );
	setMoveKey( spep_0 + 98 + 40, view5, -159.9, 633.5 , 0 );
	setMoveKey( spep_0 + 100 + 40, view5, -159.9, 675.8 , 0 );
	setMoveKey( spep_0 + 102 + 40, view5, -159.9, 722.2 , 0 );
	setMoveKey( spep_0 + 104 + 40, view5, -159.9, 772.6 , 0 );
	setMoveKey( spep_0 + 106 + 40, view5, -159.9, 827.1 , 0 );
	setScaleKey( spep_0 + 0, view5, 0.45, 0.45 );
	setScaleKey( spep_0 + 106 + 40, view5, 0.45, 0.45 );
	setRotateKey( spep_0 + 0, view5, 0 );
	setRotateKey( spep_0 + 106 + 40, view5, 0 );
end
if (not isBonusCharacter(TEAM_CARD_IDS[6])) then
	--超6番目のキャラクターの処理
	setDisp( spep_0 + 0, view6, 1 );
	setDisp( spep_0 + 106 + 40, view6, 0 );
	changeAnime( spep_0 + 0, view6, 17);
	setMoveKey( spep_0 + 0, view6, -235.3, 247.9 , 0 );
	setMoveKey( spep_0 + 78 + 40, view6, -235.3, 247.9 , 0 );
	setMoveKey( spep_0 + 80 + 40, view6, -235.3, 249.9 , 0 );
	setMoveKey( spep_0 + 82 + 40, view6, -235.3, 256 , 0 );
	setMoveKey( spep_0 + 84 + 40, view6, -235.3, 266 , 0 );
	setMoveKey( spep_0 + 86 + 40, view6, -235.3, 280.2 , 0 );
	setMoveKey( spep_0 + 88 + 40, view6, -235.3, 298.3 , 0 );
	setMoveKey( spep_0 + 90 + 40, view6, -235.3, 320.5 , 0 );
	setMoveKey( spep_0 + 92 + 40, view6, -235.3, 346.7 , 0 );
	setMoveKey( spep_0 + 94 + 40, view6, -235.3, 376.9 , 0 );
	setMoveKey( spep_0 + 96 + 40, view6, -235.3, 411.2 , 0 );
	setMoveKey( spep_0 + 98 + 40, view6, -235.3, 449.5 , 0 );
	setMoveKey( spep_0 + 100 + 40, view6, -235.3, 491.9 , 0 );
	setMoveKey( spep_0 + 102 + 40, view6, -235.3, 538.3 , 0 );
	setMoveKey( spep_0 + 104 + 40, view6, -235.3, 588.7 , 0 );
	setMoveKey( spep_0 + 106 + 40, view6, -235.3, 643.1 , 0 );
	setScaleKey( spep_0 + 0, view6, 0.5, 0.5 );
	setScaleKey( spep_0 + 106 + 40, view6, 0.5, 0.5 );
	setRotateKey( spep_0 + 0, view6, 0 );
	setRotateKey( spep_0 + 106 + 40, view6, 0 );
end
if (not isBonusCharacter(TEAM_CARD_IDS[7])) then
	 --極1番目のキャラクターの処理
	 setDisp( spep_0 + 0, view8, 1 );
	 setDisp( spep_0 + 106 + 40, view8, 0 );
     changeAnime( spep_0 + 0, view8, 17 );
     setMoveKey( spep_0 + 0, view8, 228.7, -424.1 , 0 );
     setMoveKey( spep_0 + 78 + 40, view8, 228.7, -424.1 , 0 );
     setMoveKey( spep_0 + 80 + 40, view8, 228.7, -426.1 , 0 );
     setMoveKey( spep_0 + 82 + 40, view8, 228.7, -431.9 , 0 );
     setMoveKey( spep_0 + 84 + 40, view8, 228.7, -441.7 , 0 );
     setMoveKey( spep_0 + 86 + 40, view8, 228.7, -455.4 , 0 );
     setMoveKey( spep_0 + 88 + 40, view8, 228.7, -472.9 , 0 );
     setMoveKey( spep_0 + 90 + 40, view8, 228.7, -494.4 , 0 );
     setMoveKey( spep_0 + 92 + 40, view8, 228.7, -519.8 , 0 );
     setMoveKey( spep_0 + 94 + 40, view8, 228.7, -549.1 , 0 );
     setMoveKey( spep_0 + 96 + 40, view8, 228.7, -582.3 , 0 );
     setMoveKey( spep_0 + 98 + 40, view8, 228.7, -619.5 , 0 );
     setMoveKey( spep_0 + 100 + 40, view8, 228.7, -660.5 , 0 );
     setMoveKey( spep_0 + 102 + 40, view8, 228.7, -705.4 , 0 );
     setMoveKey( spep_0 + 104 + 40, view8, 228.7, -754.3 , 0 );
     setMoveKey( spep_0 + 106 + 40, view8, 228.7, -807 , 0 );
     setScaleKey( spep_0 + 0, view8, 0.45, 0.45 );
     setScaleKey( spep_0 + 106 + 40, view8, 0.45, 0.45 );
     setRotateKey( spep_0 + 0, view8, 0 );
     setRotateKey( spep_0 + 106 + 40, view8, 0 );
end
if (not isBonusCharacter(TEAM_CARD_IDS[8])) then
	--2番目のキャラクターの処理
	setDisp( spep_0 + 0, view9, 1 );
	setDisp( spep_0 + 106 + 40, view9, 0 );
	changeAnime( spep_0 + 0, view9, 17 );
	setMoveKey( spep_0 + 0, view9, 158.2, -252.1 , 0 );
	setMoveKey( spep_0 + 78 + 40, view9, 158.2, -252.1 , 0 );
	setMoveKey( spep_0 + 80 + 40, view9, 158.2, -254.1 , 0 );
	setMoveKey( spep_0 + 82 + 40, view9, 158.2, -259.9 , 0 );
	setMoveKey( spep_0 + 84 + 40, view9, 158.2, -269.7 , 0 );
	setMoveKey( spep_0 + 86 + 40, view9, 158.2, -283.3 , 0 );
	setMoveKey( spep_0 + 88 + 40, view9, 158.2, -300.9 , 0 );
	setMoveKey( spep_0 + 90 + 40, view9, 158.2, -322.4 , 0 );
	setMoveKey( spep_0 + 92 + 40, view9, 158.2, -347.8 , 0 );
	setMoveKey( spep_0 + 94 + 40, view9, 158.2, -377.1 , 0 );
	setMoveKey( spep_0 + 96 + 40, view9, 158.2, -410.3 , 0 );
	setMoveKey( spep_0 + 98 + 40, view9, 158.2, -447.4 , 0 );
	setMoveKey( spep_0 + 100 + 40, view9, 158.2, -488.4 , 0 );
	setMoveKey( spep_0 + 102 + 40, view9, 158.2, -533.3 , 0 );
	setMoveKey( spep_0 + 104 + 40, view9, 158.2, -582.2 , 0 );
	setMoveKey( spep_0 + 106 + 40, view9, 158.2, -634.9 , 0 );
	setScaleKey( spep_0 + 0, view9, 0.5, 0.5 );
	setScaleKey( spep_0 + 106 + 40, view9, 0.5, 0.5 );
	setRotateKey( spep_0 + 0, view9, 0 );
	setRotateKey( spep_0 + 106 + 40, view9, 0 );
end
if (not isBonusCharacter(TEAM_CARD_IDS[9])) then
	--3番目のキャラクターの処理
	setDisp( spep_0 + 0, view10, 1 );
	setDisp( spep_0 + 106 + 40, view10, 0 );
	changeAnime( spep_0 + 0, view10, 17 );
	setMoveKey( spep_0 + 0, view10, 35.9, -394.1 , 0 );
	setMoveKey( spep_0 + 78 + 40, view10, 35.9, -394.1 , 0 );
	setMoveKey( spep_0 + 80 + 40, view10, 35.9, -396.1 , 0 );
	setMoveKey( spep_0 + 82 + 40, view10, 35.9, -401.9 , 0 );
	setMoveKey( spep_0 + 84 + 40, view10, 35.9, -411.7 , 0 );
	setMoveKey( spep_0 + 86 + 40, view10, 35.9, -425.4 , 0 );
	setMoveKey( spep_0 + 88 + 40, view10, 35.9, -442.9 , 0 );
	setMoveKey( spep_0 + 90 + 40, view10, 35.9, -464.4 , 0 );
	setMoveKey( spep_0 + 92 + 40, view10, 35.9, -489.8 , 0 );
	setMoveKey( spep_0 + 94 + 40, view10, 35.9, -519.1 , 0 );
	setMoveKey( spep_0 + 96 + 40, view10, 35.9, -552.3 , 0 );
	setMoveKey( spep_0 + 98 + 40, view10, 35.9, -589.5 , 0 );
	setMoveKey( spep_0 + 100 + 40, view10, 35.9, -630.5 , 0 );
	setMoveKey( spep_0 + 102 + 40, view10, 35.9, -675.4 , 0 );
	setMoveKey( spep_0 + 104 + 40, view10, 35.9, -724.3 , 0 );
	setMoveKey( spep_0 + 106 + 40, view10, 35.9, -777 , 0 );
	setScaleKey( spep_0 + 0, view10, 0.45, 0.45 );
	setScaleKey( spep_0 + 106 + 40, view10, 0.45, 0.45 );
	setRotateKey( spep_0 + 0, view10, 0 );
	setRotateKey( spep_0 + 106 + 40, view10, 0 );
end

if (not isBonusCharacter(TEAM_CARD_IDS[10])) then
	--4番目のキャラクターの処理

	setDisp( spep_0 + 0, view11, 1 );
	setDisp( spep_0 + 106 + 40, view11, 0 );
	changeAnime( spep_0 + 0, view11,17 );
	setMoveKey( spep_0 + 0, view11, -37.8, -272.1 , 0 );
	setMoveKey( spep_0 + 78 + 40, view11, -37.8, -272.1 , 0 );
	setMoveKey( spep_0 + 80 + 40, view11, -37.8, -274.1 , 0 );
	setMoveKey( spep_0 + 82 + 40, view11, -37.8, -279.9 , 0 );
	setMoveKey( spep_0 + 84 + 40, view11, -37.8, -289.7 , 0 );
	setMoveKey( spep_0 + 86 + 40, view11, -37.8, -303.3 , 0 );
	setMoveKey( spep_0 + 88 + 40, view11, -37.8, -320.9 , 0 );
	setMoveKey( spep_0 + 90 + 40, view11, -37.8, -342.4 , 0 );
	setMoveKey( spep_0 + 92 + 40, view11, -37.8, -367.8 , 0 );
	setMoveKey( spep_0 + 94 + 40, view11, -37.8, -397.1 , 0 );
	setMoveKey( spep_0 + 96 + 40, view11, -37.8, -430.3 , 0 );
	setMoveKey( spep_0 + 98 + 40, view11, -37.8, -467.4 , 0 );
	setMoveKey( spep_0 + 100 + 40, view11, -37.8, -508.4 , 0 );
	setMoveKey( spep_0 + 102 + 40, view11, -37.8, -553.3 , 0 );
	setMoveKey( spep_0 + 104 + 40, view11, -37.8, -602.2 , 0 );
	setMoveKey( spep_0 + 106 + 40, view11, -37.8, -654.9 , 0 );
	setScaleKey( spep_0 + 0, view11, 0.5, 0.5 );
	setScaleKey( spep_0 + 106 + 40, view11, 0.5, 0.5 );
	setRotateKey( spep_0 + 0, view11, 0 );
	setRotateKey( spep_0 + 106 + 40, view11, 0 );
end
if (not isBonusCharacter(TEAM_CARD_IDS[11])) then
	--6番目のキャラクターの処理
	setDisp( spep_0 + 0, view13, 1 );
	setDisp( spep_0 + 106 + 40, view13, 0 );
	changeAnime( spep_0 + 0, view13, 17 );
	setMoveKey( spep_0 + 0, view13, -159.9, -414.1 , 0 );
	setMoveKey( spep_0 + 78 + 40, view13, -159.9, -414.1 , 0 );
	setMoveKey( spep_0 + 80 + 40, view13, -159.9, -416.1 , 0 );
	setMoveKey( spep_0 + 82 + 40, view13, -159.9, -421.9 , 0 );
	setMoveKey( spep_0 + 84 + 40, view13, -159.9, -431.7 , 0 );
	setMoveKey( spep_0 + 86 + 40, view13, -159.9, -445.4 , 0 );
	setMoveKey( spep_0 + 88 + 40, view13, -159.9, -462.9 , 0 );
	setMoveKey( spep_0 + 90 + 40, view13, -159.9, -484.4 , 0 );
	setMoveKey( spep_0 + 92 + 40, view13, -159.9, -509.8 , 0 );
	setMoveKey( spep_0 + 94 + 40, view13, -159.9, -539.1 , 0 );
	setMoveKey( spep_0 + 96 + 40, view13, -159.9, -572.3 , 0 );
	setMoveKey( spep_0 + 98 + 40, view13, -159.9, -609.5 , 0 );
	setMoveKey( spep_0 + 100 + 40, view13, -159.9, -650.5 , 0 );
	setMoveKey( spep_0 + 102 + 40, view13, -159.9, -695.4 , 0 );
	setMoveKey( spep_0 + 104 + 40, view13, -159.9, -744.3 , 0 );
	setMoveKey( spep_0 + 106 + 40, view13, -159.9, -7970 , 0 );
	setScaleKey( spep_0 + 0, view13, 0.5, 0.5 );
	setScaleKey( spep_0 + 106 + 40, view13, 0.5, 0.5 );
	setRotateKey( spep_0 + 0, view13, 0 );
	setRotateKey( spep_0 + 106 + 40, view13, 0 );
end
if (not isBonusCharacter(TEAM_CARD_IDS[12])) then
	--5番目のキャラクターの処理
	setDisp( spep_0 + 0, view12, 1 );
	setDisp( spep_0 + 106 + 40, view12, 0 );
	changeAnime( spep_0 + 0, view12, 17 );
	setMoveKey( spep_0 + 0, view12, -235.3, -252.1 , 0 );
	setMoveKey( spep_0 + 78 + 40, view12, -235.3, -252.1 , 0 );
	setMoveKey( spep_0 + 80 + 40, view12, -235.3, -254.1 , 0 );
	setMoveKey( spep_0 + 82 + 40, view12, -235.3, -259.9 , 0 );
	setMoveKey( spep_0 + 84 + 40, view12, -235.3, -269.7 , 0 );
	setMoveKey( spep_0 + 86 + 40, view12, -235.3, -283.3 , 0 );
	setMoveKey( spep_0 + 88 + 40, view12, -235.3, -300.9 , 0 );
	setMoveKey( spep_0 + 90 + 40, view12, -235.3, -322.4 , 0 );
	setMoveKey( spep_0 + 92 + 40, view12, -235.3, -347.8 , 0 );
	setMoveKey( spep_0 + 94 + 40, view12, -235.3, -377.1 , 0 );
	setMoveKey( spep_0 + 96 + 40, view12, -235.3, -410.3 , 0 );
	setMoveKey( spep_0 + 98 + 40, view12, -235.3, -447.4 , 0 );
	setMoveKey( spep_0 + 100 + 40, view12, -235.3, -488.4 , 0 );
	setMoveKey( spep_0 + 102 + 40, view12, -235.3, -533.3 , 0 );
	setMoveKey( spep_0 + 104 + 40, view12, -235.3, -582.2 , 0 );
	setMoveKey( spep_0 + 106 + 40, view12, -235.3, -634.9 , 0 );
	setScaleKey( spep_0 + 0, view12, 0.5, 0.5 );
	setScaleKey( spep_0 + 106 + 40, view12, 0.5, 0.5 );
	setRotateKey( spep_0 + 0, view12, 0 );
	setRotateKey( spep_0 + 106 + 40, view12, 0 );
end

-- ** SE ** --
playSe( spep_0 + 0,  1036);
setSeVolume( spep_0 + 0,  1036,  71);
playSe( spep_0 + 18,  23);
setSeVolume( spep_0 + 18,  23,  63);
playSe( spep_0 + 18,  1042);
playSe( spep_0 + 24,  1036);
setSeVolume( spep_0 + 24,  1036,  71);
playSe( spep_0 + 48  ,  1036);
setSeVolume( spep_0 + 48,  1036,  71);
playSe( spep_0 + 48 + 20 ,  1036);
setSeVolume( spep_0 + 48+ 20,  1036,  71);
playSe( spep_0 + 48 + 40 ,  1036);
setSeVolume( spep_0 + 48+ 40,  1036,  71);
playSe( spep_0 + 72+ 40,  1036);
setSeVolume( spep_0 + 72+ 40,  1036,  71);
playSe( spep_0 + 72+ 40,  1072);
playSe( spep_0 + 96+ 40,  1036);
setSeVolume( spep_0 + 96+ 40,  1036,  71);
playSe( spep_0 + 120+ 40, 1036);
setSeVolume( spep_0 + 120+ 40,  1036,  71);
playSe( spep_0 + 130+ 40, 1018);
playSe( spep_0 + 144+ 40, 1036);
setSeVolume( spep_0 + 144+ 40,  1036,  71);
playSe( spep_0 + 168+ 40,  1036);
setSeVolume( spep_0 + 168+ 40,  1036,  71);
playSe( spep_0 + 192+ 40,  1036);
setSeVolume( spep_0 + 192+ 40,  1036,  71);
playSe( spep_0 + 207+ 40,  1035);
playSe( spep_0 + 207+ 40,  1043);
setSeVolume( spep_0 + 207+ 40,  1043,  89);
playSe( spep_0 + 216+ 40,  1036);
setSeVolume( spep_0 + 216+ 40,  1036,  71);
playSe( spep_0 + 240+ 40,  1036);
setSeVolume( spep_0 + 240+ 40,  1036,  71);
playSe( spep_0 + 263+ 40,  1036);
setSeVolume( spep_0 + 263+ 40,  1036,  71);
playSe( spep_0 + 283+ 40,  1148);
setSeVolume( spep_0 + 283+ 40,  1148,  79);
playSe( spep_0 + 286+ 40,  1036);
setSeVolume( spep_0 + 286+ 40,  1036,  71);
playSe( spep_0 + 309+ 40,  1036);
setSeVolume( spep_0 + 309+ 40,  1036,  71);
playSe( spep_0 + 332+ 40,  1036);
setSeVolume( spep_0 + 332+ 40,  1036,  71);
playSe( spep_0 + 347+ 40,  1011);
setSeVolume( spep_0 + 347+ 40,  1011,  71);
playSe( spep_0 + 347+ 40,  1062);
setSeVolume( spep_0 + 347+ 40,  1062,  89);
playSe( spep_0 + 355+ 40,  1036);
setSeVolume( spep_0 + 355+ 40,  1036,  71);
playSe( spep_0 + 378+ 40,  1036);
setSeVolume( spep_0 + 378+ 40,  1036,  71);

--entryFadeBg( spep_0 + 0,  0,  502,  0,  254,  248,  160,  200);  --黄色
entryFadeBg( spep_0 + 0,  0,  386 + 60,  0,  0,  0,  0,  200);  --黒色

endPhase(spep_0 + 386 + 60);



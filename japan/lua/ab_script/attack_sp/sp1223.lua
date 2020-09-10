--ヤムチャ&プーアル_狼牙風風拳(必殺技)


fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1015; --気弾発射
SE_12 = 1018; --高速ダッシュ
SE_13 = 1020; --気弾溜め
SE_14 = 1054; --割れる音
SE_15 = 43; --瞬間移動
SE_16 = 1003; --バッ
SE_17 = 1014; --ダッシュ

--味方
SP_01 = 152492	;--	冒頭構え(100F)
SP_02 = 152493	;--	突進&蹴りつけ(90F)
SP_03 = 152497	;--	突進&蹴りつけ　背景(90F)
SP_04 = 152494	;--	狼牙風風拳(240F)
SP_05 = 152496	;--	狼牙風風拳　背景(240F)
SP_06 = 152495	;--	ふっ飛ばし(110F)
SP_07 = 152527  ;-- 冒頭背景(100F)
SP_08 = 152528  ;-- ラスト背景(110F)
SP_09 = 152547  ;-- 蹴り命中エフェクト

--敵
SP_01x = 152492	;--	冒頭構え(100F)
SP_02x = 152498	;--	突進&蹴りつけ(90F)
SP_03x = 152497	;--	突進&蹴りつけ　背景(90F)
SP_04x = 152499	;--	狼牙風風拳(240F)
SP_05x = 152496	;--	狼牙風風拳　背景(240F)
SP_06x = 152495	;--	ふっ飛ばし(110F)
SP_07x = 152527  ;-- 冒頭背景(100F)
SP_08x = 152528  ;-- ラスト背景(110F)
SP_09x = 152547  ;-- 蹴り命中エフェクト

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   1,    0, -2000 , 0);
setMoveKey(   4,   1,    0, -2000 , 0);
setMoveKey(   5,   1,    0, -2000 , 0);
setMoveKey(   6,   1,    0, -2000 , 0);

setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);
setScaleKey(   4,   1, 1.6, 1.6);
setScaleKey(   5,   1, 1.6, 1.6);
setScaleKey(   6,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   4,   1, 0);
setRotateKey(   5,   1, 0);
setRotateKey(   6,   1, 0);

setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
setMoveKey(   1,   0,    0, -2000,   0);
setMoveKey(   2,   0,    0, -2000,   0);
setMoveKey(   3,   0,    0, -2000,   0);
setMoveKey(   4,   0,    0, -2000,   0);
setMoveKey(   5,   0,    0, -2000,   0);
setMoveKey(   6,   0,    0, -2000,   0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   4,   0, 1.6, 1.6);
setScaleKey(   5,   0, 1.6, 1.6);
setScaleKey(   6,   0, 1.6, 1.6);

setRotateKey(   0,   0, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   0, 0);
setRotateKey(   4,   0, 0);
setRotateKey(   5,   0, 0);
setRotateKey(   6,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;
------------------------------------------------------
-- 正面構え (100F)
------------------------------------------------------
--正面構え
standby = entryEffectLife( spep_0, SP_01, 96, 0x100, -1, 0, 0, 0);
setEffScaleKey( spep_0, standby, 1.0, 1.0);
setEffMoveKey(  spep_0,  standby,  0,  0);
setEffRotateKey( spep_0, standby, 0);
setEffAlphaKey( spep_0, standby, 255);

setEffScaleKey( spep_0+96, standby, 1.0, 1.0);
setEffMoveKey(  spep_0+96,  standby,  0,  0);
setEffRotateKey( spep_0+96, standby, 0);
setEffAlphaKey( spep_0+96, standby, 255);

--背景
standbyBack = entryEffectLife( spep_0, SP_07, 96, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_0, standbyBack, 1.0, 1.0);
setEffMoveKey(  spep_0,  standbyBack,  0,  0);
setEffRotateKey( spep_0, standbyBack, 0);
setEffAlphaKey( spep_0, standbyBack, 255);

setEffScaleKey( spep_0+96, standbyBack, 1.0, 1.0);
setEffMoveKey(  spep_0+96,  standbyBack,  0,  0);
setEffRotateKey( spep_0+96, standbyBack, 0);
setEffAlphaKey( spep_0+96, standbyBack, 255);

--顔カットイン&文字
speff = entryEffect( spep_0+12,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect( spep_0+12,   1505,   0,     -1,  0,  0,  -40);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff1, 4, 5); 

--カットインSE
playSe( spep_0+16, SE_04);

--書き文字(ゴゴゴゴゴ)
ctGo = entryEffectLife( spep_0+24, 190006, 72, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴゴ
setEffShake( spep_0+24, ctGo, 72, 8);

setEffScaleKey( spep_0+24, ctGo, 0.8, 0.8);
setEffMoveKey(  spep_0+24,  ctGo, -20, 522, 0 );
setEffRotateKey(  spep_0+24,  ctGo,  0);
setEffAlphaKey(  spep_0+24,  ctGo,  255);

setEffScaleKey( spep_0+84, ctGo, 0.8, 0.8);

setEffAlphaKey(  spep_0+84,  ctGo,  255);

setEffScaleKey( spep_0+96, ctGo, 1.3, 1.3);
setEffMoveKey(  spep_0+96,  ctGo, -20, 522, 0 );
setEffRotateKey(  spep_0+96,  ctGo,  0);
setEffAlphaKey(  spep_0+96,  ctGo,  0);

--集中線
shuchusen = entryEffectLife( spep_0+40, 906, 56, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0+40, shuchusen, 1.8, 1.9);
setEffMoveKey(  spep_0+40,  shuchusen,  0,  0);
setEffRotateKey( spep_0+40, shuchusen, 0);
setEffAlphaKey( spep_0+40, shuchusen, 255);

setEffScaleKey( spep_0+96, shuchusen, 1.8, 1.9);
setEffMoveKey(  spep_0+96,  shuchusen,  0,  0);
setEffRotateKey( spep_0+96, shuchusen, 0);
setEffAlphaKey( spep_0+96, shuchusen, 255);

spep_1 = spep_0 + 96;
------------------------------------------------------
-- カードカットイン
------------------------------------------------------
speff = entryEffectLife(  spep_1,   1507, 82,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                             -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_1, 906, 82, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen2, 1.5, 1.5);
setEffMoveKey(  spep_1,  shuchusen2,  0,  0);
setEffRotateKey( spep_1, shuchusen2, 0);
setEffAlphaKey( spep_1, shuchusen2, 255);

setEffScaleKey( spep_1+80, shuchusen2, 1.5, 1.5);
setEffMoveKey(  spep_1+80,  shuchusen2,  0,  0);
setEffRotateKey( spep_1+80, shuchusen2, 0);
setEffAlphaKey( spep_1+80, shuchusen2, 255);

playSe( spep_1, SE_05);

--白フェードが入る--
--entryFade( spep_1+86, 3, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1 + 80;

------------------------------------------------------
-- 突進&蹴りつけ(90F)
------------------------------------------------------
--突進&キック(背景)
dashKickB = entryEffectLife( spep_2+3, SP_03, 87, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_2+3, dashKickB, 1.0, 1.0);
setEffMoveKey( spep_2+3,  dashKickB,  0,  -30);
setEffRotateKey( spep_2+3, dashKickB, 0);
setEffAlphaKey( spep_2+3, dashKickB, 255);

setEffScaleKey( spep_2+90, dashKickB, 1.0, 1.0);
setEffMoveKey( spep_2+90,  dashKickB,  0,  -30);
setEffRotateKey( spep_2+90, dashKickB, 0);
setEffAlphaKey( spep_2+90, dashKickB, 255);

--突進&キック
dashKick = entryEffectLife( spep_2+3, SP_02, 87, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_2+3, dashKick, 1.0, 1.0);
setEffMoveKey( spep_2+3,  dashKick,  0,  -30);
setEffRotateKey( spep_2+3, dashKick, 0);
setEffAlphaKey( spep_2+3, dashKick, 255);

setEffScaleKey( spep_2+90, dashKick, 1.0, 1.0);
setEffMoveKey( spep_2+90,  dashKick,  0,  -30);
setEffRotateKey( spep_2+90, dashKick, 0);
setEffAlphaKey( spep_2+90, dashKick, 255);

--キック命中
kickHit = entryEffectLife( spep_2+3, SP_09, 87, 0x100, -1, 0, 0, 0);
setEffScaleKey( spep_2+3, kickHit, 1.0, 1.0);
setEffMoveKey( spep_2+3,  kickHit,  0,  -30);
setEffRotateKey( spep_2+3, kickHit, 0);
setEffAlphaKey( spep_2+3, kickHit, 255);

setEffScaleKey( spep_2+90, kickHit, 1.0, 1.0);
setEffMoveKey( spep_2+90,  kickHit,  0,  -30);
setEffRotateKey( spep_2+90, kickHit, 0);
setEffAlphaKey( spep_2+90, kickHit, 255);

playSe( spep_2, SE_17); --ダッシュ音

--蹴られヤムチャ
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2 + 44, 1, 107 );

setShakeChara(spep_2 + 44, 1, 14, 60);

setMoveKey( spep_2 + 0, 1, 360, -340 , 0 );
setMoveKey( spep_2 + 43, 1, 100, -30 , 0 );
setMoveKey( spep_2 + 44, 1, -190, -300 , 0 );
setMoveKey( spep_2 + 58, 1, -361.7, -506.6 , 0 );

setScaleKey( spep_2 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 43, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 44, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 58, 1, 2.12, 2.12 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 43, 1, 0 );
setRotateKey( spep_2 + 44, 1, -1.9 );
setRotateKey( spep_2 + 58, 1, -1.9 );

setDisp( spep_2 + 60, 1, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( 5, seID, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 突進&蹴りつけの続き
------------------------------------------------------

--書き文字(バキッ)
ctBaki = entryEffectLife( spep_2 + 44,  10020, 14, 0x100, -1, 0, -56.1, 277.5 );
setEffMoveKey( spep_2 + 44, ctBaki, -56.1, 277.5 , 0 );
setEffMoveKey( spep_2 + 46, ctBaki, -58.5, 284.7 , 0 );
setEffMoveKey( spep_2 + 48, ctBaki, -66.2, 286.4 , 0 );
setEffMoveKey( spep_2 + 50, ctBaki, -76.4, 280.8 , 0 );
setEffMoveKey( spep_2 + 52, ctBaki, -80.2, 279.2 , 0 );
setEffMoveKey( spep_2 + 54, ctBaki, -81.8, 283.7 , 0 );
setEffMoveKey( spep_2 + 56, ctBaki, -83.4, 288.1 , 0 );
setEffMoveKey( spep_2 + 58, ctBaki, -85, 292.6 , 0 );

setEffScaleKey( spep_2 + 44, ctBaki, 2.48, 2.48 );
setEffScaleKey( spep_2 + 46, ctBaki, 2.36, 2.36 );
setEffScaleKey( spep_2 + 48, ctBaki, 2.24, 2.24 );
setEffScaleKey( spep_2 + 50, ctBaki, 2.12, 2.12 );
setEffScaleKey( spep_2 + 52, ctBaki, 2.01, 2.01 );
setEffScaleKey( spep_2 + 54, ctBaki, 1.84, 1.84 );
setEffScaleKey( spep_2 + 56, ctBaki, 1.67, 1.67 );
setEffScaleKey( spep_2 + 58, ctBaki, 1.5, 1.5 );

setEffRotateKey( spep_2 + 44, ctBaki, -13 );
setEffRotateKey( spep_2 + 46, ctBaki, -24 );
setEffRotateKey( spep_2 + 48, ctBaki, -16 );
setEffRotateKey( spep_2 + 50, ctBaki, -24 );
setEffRotateKey( spep_2 + 52, ctBaki, -19 );
setEffRotateKey( spep_2 + 58, ctBaki, -19 );

setEffAlphaKey( spep_2 + 44, ctBaki, 255 );
setEffAlphaKey( spep_2 + 52, ctBaki, 255 );
setEffAlphaKey( spep_2 + 54, ctBaki, 170 );
setEffAlphaKey( spep_2 + 56, ctBaki, 85 );
setEffAlphaKey( spep_2 + 58, ctBaki, 0 );

playSe( spep_2+44, 1010); --バキッ

spep_3 = spep_2 + 90;

------------------------------------------------------
-- ラッシュ(280F)
------------------------------------------------------
--狼牙風風拳手前
rogafufukenA = entryEffectLife( spep_3, SP_04, 274, 0x100, -1, 0, 0, 0);
setEffScaleKey( spep_3, rogafufukenA, 1.0, 1.0);
setEffMoveKey(  spep_3,  rogafufukenA,  0,  0);
setEffRotateKey( spep_3, rogafufukenA, 0);
setEffAlphaKey( spep_3, rogafufukenA, 255);

setEffAlphaKey( spep_3+272, rogafufukenA, 255);
setEffAlphaKey( spep_3+273, rogafufukenA, 0);

setEffScaleKey( spep_3+274, rogafufukenA, 1.0, 1.0);
setEffMoveKey(  spep_3+274,  rogafufukenA,  0,  0);
setEffRotateKey( spep_3+274, rogafufukenA, 0);
setEffAlphaKey( spep_3+274, rogafufukenA, 0);

--狼牙風風拳後ろ
rogafufukenB = entryEffectLife( spep_3, SP_05, 274, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_3, rogafufukenB, 1.0, 1.0);
setEffMoveKey(  spep_3,  rogafufukenB,  0,  0);
setEffRotateKey( spep_3, rogafufukenB, 0);
setEffAlphaKey( spep_3, rogafufukenB, 255);

setEffAlphaKey( spep_3+272, rogafufukenB, 255);
setEffAlphaKey( spep_3+273, rogafufukenB, 0);

setEffScaleKey( spep_3+274, rogafufukenB, 1.0, 1.0);
setEffMoveKey(  spep_3+274,  rogafufukenB,  0,  0);
setEffRotateKey( spep_3+274, rogafufukenB, 0);
setEffAlphaKey( spep_3+274, rogafufukenB, 0);

--流線
ryusen = entryEffectLife( spep_3, 920, 56, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_3, ryusen, 2.1, 1.2);
setEffMoveKey(  spep_3,  ryusen,  0,  0);
setEffRotateKey( spep_3, ryusen, 0);
setEffAlphaKey( spep_3, ryusen, 255);

setEffScaleKey( spep_3+56, ryusen, 2.1, 1.2);
setEffMoveKey(  spep_3+56,  ryusen,  0,  0);
setEffRotateKey( spep_3+56, ryusen, 0);
setEffAlphaKey( spep_3+56, ryusen, 255);

--流線手前
ryusen2 = entryEffectLife( spep_3, 920, 20, 0x100,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_3, ryusen2, 2.1, 1.2);
setEffMoveKey(  spep_3,  ryusen2,  0,  0);
setEffRotateKey( spep_3, ryusen2, 0);
setEffAlphaKey( spep_3, ryusen2, 160);

setEffAlphaKey( spep_3+10, ryusen2, 160);

setEffScaleKey( spep_3+20, ryusen2, 2.1, 1.2);
setEffMoveKey(  spep_3+20,  ryusen2,  0,  0);
setEffRotateKey( spep_3+20, ryusen2, 0);
setEffAlphaKey( spep_3+20, ryusen2, 0);

--集中線
shuchusen3 = entryEffectLife( spep_3+76, 906, 188, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+76, shuchusen3, 1.8, 1.9);
setEffMoveKey(  spep_3+76,  shuchusen3,  0,  0);
setEffRotateKey( spep_3+76, shuchusen3, 0);
setEffAlphaKey( spep_3+76, shuchusen3, 255);

setEffScaleKey( spep_3+264, shuchusen3, 1.8, 1.9);
setEffMoveKey(  spep_3+264,  shuchusen3,  0,  0);
setEffRotateKey( spep_3+264, shuchusen3, 0);
setEffAlphaKey( spep_3+264, shuchusen3, 255);

--敵の動き
setDisp(spep_3-2+60, 1, 1);
setDisp(spep_3+273, 1, 0);

changeAnime( spep_3-2 + 60, 1, 108 );
changeAnime( spep_3-2 + 76, 1, 106 );
changeAnime( spep_3-2 + 84, 1, 108 );
changeAnime( spep_3-2 + 106, 1, 106 );
changeAnime( spep_3-2 + 118, 1, 108);
changeAnime( spep_3-2 + 136, 1, 106);
changeAnime( spep_3-2 + 158, 1, 108);

setMoveKey( spep_3-2 + 60, 1, -306.9, 25.3 , 0 );
setMoveKey( spep_3-2 + 62, 1, -246.8, 13.4 , 0 );
setMoveKey( spep_3-2 + 64, 1, -186.7, 1.5 , 0 );
setMoveKey( spep_3-2 + 66, 1, -126.6, -10.4 , 0 );
setMoveKey( spep_3-2 + 68, 1, -66.4, -22.3 , 0 );
setMoveKey( spep_3-2 + 70, 1, -6.3, -34.2 , 0 );
setMoveKey( spep_3-2 + 72, 1, 53.8, -46.1 , 0 );
setMoveKey( spep_3-2 + 74, 1, 130.4, -43 , 0 );
setMoveKey( spep_3-2 + 76, 1, 76.4, -55.8 , 0 );
setMoveKey( spep_3-2 + 78, 1, 113.4, -64.7 , 0 );
setMoveKey( spep_3-2 + 80, 1, 103.3, -65.3 , 0 );
setMoveKey( spep_3-2 + 82, 1, 125.6, -59 , 0 );
setMoveKey( spep_3-2 + 84, 1, 150.7, -63.2 , 0 );
setMoveKey( spep_3-2 + 86, 1, 158.4, -82.7 , 0 );
setMoveKey( spep_3-2 + 88, 1, 159.5, -60.4 , 0 );
setMoveKey( spep_3-2 + 90, 1, 160.4, -73.4 , 0 );
setMoveKey( spep_3-2 + 92, 1, 153.9, -62.7 , 0 );
setMoveKey( spep_3-2 + 94, 1, 165.6, -69.3 , 0 );
setMoveKey( spep_3-2 + 96, 1, 164.5, -67.6 , 0 );
setMoveKey( spep_3-2 + 98, 1, 163.4, -66.1 , 0 );
setMoveKey( spep_3-2 + 100, 1, 162.2, -64.6 , 0 );
setMoveKey( spep_3-2 + 102, 1, 161.1, -63.5 , 0 );
setMoveKey( spep_3-2 + 104, 1, 159.9, -62.4 , 0 );
setMoveKey( spep_3-2 + 106, 1, 103.4, -40.8 , 0 );
setMoveKey( spep_3-2 + 108, 1, 131.7, -32.5 , 0 );
setMoveKey( spep_3-2 + 110, 1, 125.3, -40.3 , 0 );
setMoveKey( spep_3-2 + 112, 1, 150, -37.6 , 0 );
setMoveKey( spep_3-2 + 114, 1, 141.2, -34.8 , 0 );
setMoveKey( spep_3-2 + 116, 1, 145.8, -38.7 , 0 );
setMoveKey( spep_3-2 + 118, 1, 140.3, -45.8 , 0 );
setMoveKey( spep_3-2 + 120, 1, 166.6, -38 , 0 );
setMoveKey( spep_3-2 + 122, 1, 152.7, -34 , 0 );
setMoveKey( spep_3-2 + 124, 1, 173.1, -26.5 , 0 );
setMoveKey( spep_3-2 + 126, 1, 159.9, -28.3 , 0 );
setMoveKey( spep_3-2 + 128, 1, 176.3, -25.5 , 0 );
setMoveKey( spep_3-2 + 130, 1, 175.1, -24.4 , 0 );
setMoveKey( spep_3-2 + 132, 1, 173.3, -23.8 , 0 );
setMoveKey( spep_3-2 + 134, 1, 170.8, -23.5 , 0 );
setMoveKey( spep_3-2 + 136, 1, 128.9, -50.5 , 0 );
setMoveKey( spep_3-2 + 138, 1, 158.1, -73 , 0 );
setMoveKey( spep_3-2 + 140, 1, 159.3, -57.2 , 0 );
setMoveKey( spep_3-2 + 142, 1, 188.4, -57 , 0 );
setMoveKey( spep_3-2 + 144, 1, 170.6, -69.8 , 0 );
setMoveKey( spep_3-2 + 146, 1, 188.2, -56.7 , 0 );
setMoveKey( spep_3-2 + 148, 1, 58.4, 66 , 0 );
setMoveKey( spep_3-2 + 150, 1, 72.7, 73 , 0 );
setMoveKey( spep_3-2 + 152, 1, 82.9, 77.9 , 0 );
setMoveKey( spep_3-2 + 154, 1, 89.1, 80.9 , 0 );
setMoveKey( spep_3-2 + 156, 1, 91.1, 81.9 , 0 );
setMoveKey( spep_3-2 + 158, 1, 85.6, 103.9 , 0 );
setMoveKey( spep_3-2 + 160, 1, 124.8, 98.1 , 0 );
setMoveKey( spep_3-2 + 162, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3-2 + 164, 1, 89.6, 110.7 , 0 );
setMoveKey( spep_3-2 + 166, 1, 129.8, 100.1 , 0 );
setMoveKey( spep_3-2 + 168, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3-2 + 170, 1, 86.1, 91.4 , 0 );
setMoveKey( spep_3-2 + 172, 1, 126.3, 104.8 , 0 );
setMoveKey( spep_3-2 + 174, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3-2 + 176, 1, 89.1, 105.8 , 0 );
setMoveKey( spep_3-2 + 178, 1, 125.6, 111.7 , 0 );
setMoveKey( spep_3-2 + 180, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3-2 + 182, 1, 94, 79.6 , 0 );
setMoveKey( spep_3-2 + 184, 1, 115.8, 109.6 , 0 );
setMoveKey( spep_3-2 + 186, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3-2 + 188, 1, 87.8, 100.4 , 0 );
setMoveKey( spep_3-2 + 190, 1, 118.9, 111.1 , 0 );
setMoveKey( spep_3-2 + 192, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3-2 + 194, 1, 93.5, 120.5 , 0 );
setMoveKey( spep_3-2 + 196, 1, 102.8, 80.3 , 0 );
setMoveKey( spep_3-2 + 198, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3-2 + 200, 1, 81.8, 102.9 , 0 );
setMoveKey( spep_3-2 + 202, 1, 126.4, 99.5 , 0 );
setMoveKey( spep_3-2 + 204, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3-2 + 206, 1, 98.8, 89.3 , 0 );
setMoveKey( spep_3-2 + 208, 1, 119.2, 104.9 , 0 );
setMoveKey( spep_3-2 + 210, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3-2 + 212, 1, 88.6, 113.2 , 0 );
setMoveKey( spep_3-2 + 214, 1, 147.3, 97.2 , 0 );
setMoveKey( spep_3-2 + 216, 1, 123.6, 95.4 , 0 );
setMoveKey( spep_3-2 + 218, 1, 133.2, 112.9 , 0 );
setMoveKey( spep_3-2 + 220, 1, 129.6, 96.4 , 0 );
setMoveKey( spep_3-2 + 222, 1, 134, 113.7 , 0 );
setMoveKey( spep_3-2 + 224, 1, 130.4, 97.2 , 0 );
setMoveKey( spep_3-2 + 226, 1, 130.8, 97.6 , 0 );
setMoveKey( spep_3-2 + 228, 1, 133.5, 104 , 0 );
setMoveKey( spep_3-2 + 230, 1, 133.8, 104.4 , 0 );
setMoveKey( spep_3-2 + 232, 1, 134.2, 104.8 , 0 );
setMoveKey( spep_3-2 + 234, 1, 134.6, 105.2 , 0 );
setMoveKey( spep_3-2 + 236, 1, 135, 105.6 , 0 );
setMoveKey( spep_3-2 + 238, 1, 8.1, 183.7 , 0 );
setMoveKey( spep_3-2 + 240, 1, 30, 99.6 , 0 );
setMoveKey( spep_3-2 + 242, 1, 34.4, 121.3 , 0 );
setMoveKey( spep_3-2 + 244, 1, 36.4, 106.6 , 0 );
setMoveKey( spep_3-2 + 246, 1, 44.3, 129 , 0 );
setMoveKey( spep_3-2 + 248, 1, 38.9, 121.4 , 0 );
setMoveKey( spep_3-2 + 250, 1, 54.2, 130.8 , 0 );
setMoveKey( spep_3-2 + 252, 1, 45.5, 127.2 , 0 );
setMoveKey( spep_3-2 + 254, 1, 52.2, 133.3 , 0 );
setMoveKey( spep_3-2 + 256, 1, 53.9, 135.2 , 0 );
setMoveKey( spep_3-2 + 258, 1, 55.2, 136.6 , 0 );
setMoveKey( spep_3-2 + 260, 1, 55.9, 137.4 , 0 );
setMoveKey( spep_3-2 + 262, 1, 56.2, 137.7 , 0 );
setMoveKey( spep_3-2 + 264, 1, 148.1, 228.7 , 0 );
setMoveKey( spep_3-2 + 266, 1, 219.6, 299.6 , 0 );
setMoveKey( spep_3-2 + 268, 1, 270.7, 350.3 , 0 );
setMoveKey( spep_3-2 + 270, 1, 301.4, 380.8 , 0 );
setMoveKey( spep_3-2 + 272, 1, 311.7, 391 , 0 );
setMoveKey( spep_3-2 + 274, 1, 311.7, 391 , 0 );

setScaleKey( spep_3-2 + 60, 1, 1, 1 );
setScaleKey( spep_3-2 + 72, 1, 1, 1 );
setScaleKey( spep_3-2 + 74, 1, 1.14, 1.14 );
setScaleKey( spep_3-2 + 76, 1, 1.38, 1.38 );
setScaleKey( spep_3-2 + 78, 1, 1.41, 1.41 );
setScaleKey( spep_3-2 + 82, 1, 1.41, 1.41 );
setScaleKey( spep_3-2 + 84, 1, 1.39, 1.39 );
setScaleKey( spep_3-2 + 92, 1, 1.39, 1.39 );
setScaleKey( spep_3-2 + 94, 1, 1.4, 1.4 );
setScaleKey( spep_3-2 + 104, 1, 1.4, 1.4 );
setScaleKey( spep_3-2 + 106, 1, 1.41, 1.41 );
setScaleKey( spep_3-2 + 116, 1, 1.41, 1.41 );
setScaleKey( spep_3-2 + 118, 1, 1.39, 1.39 );
setScaleKey( spep_3-2 + 134, 1, 1.39, 1.39 );
setScaleKey( spep_3-2 + 136, 1, 1.41, 1.41 );
setScaleKey( spep_3-2 + 146, 1, 1.41, 1.41 );
setScaleKey( spep_3-2 + 148, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 150, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 152, 1, 1.64, 1.64 );
setScaleKey( spep_3-2 + 158, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 160, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 162, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 164, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 166, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 168, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 170, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 172, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 174, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 176, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 178, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 180, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 182, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 184, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 186, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 188, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 190, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 192, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 194, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 196, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 198, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 200, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 202, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 204, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 206, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 208, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 210, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 212, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 236, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 237, 1, 3.78, 3.78 );
setScaleKey( spep_3-2 + 238, 1, 1.98, 1.98 );
setScaleKey( spep_3-2 + 240, 1, 1.98, 1.98 );
setScaleKey( spep_3-2 + 242, 1, 1.84, 1.84 );
setScaleKey( spep_3-2 + 244, 1, 1.83, 1.83 );
setScaleKey( spep_3-2 + 246, 1, 1.81, 1.81 );
setScaleKey( spep_3-2 + 248, 1, 1.79, 1.79 );
setScaleKey( spep_3-2 + 250, 1, 1.78, 1.78 );
setScaleKey( spep_3-2 + 252, 1, 1.77, 1.77 );
setScaleKey( spep_3-2 + 254, 1, 1.76, 1.76 );
setScaleKey( spep_3-2 + 256, 1, 1.76, 1.76 );
setScaleKey( spep_3-2 + 258, 1, 1.75, 1.75 );
setScaleKey( spep_3-2 + 262, 1, 1.75, 1.75 );
setScaleKey( spep_3-2 + 264, 1, 1.29, 1.29 );
setScaleKey( spep_3-2 + 266, 1, 0.93, 0.93 );
setScaleKey( spep_3-2 + 268, 1, 0.67, 0.67 );
setScaleKey( spep_3-2 + 270, 1, 0.52, 0.52 );
setScaleKey( spep_3-2 + 272, 1, 0.47, 0.47 );
setScaleKey( spep_3-2 + 274, 1, 0.47, 0.47 );

setRotateKey( spep_3-2 + 60, 1, 22.2 );
setRotateKey( spep_3-2 + 62, 1, 25.7 );
setRotateKey( spep_3-2 + 64, 1, 29.3 );
setRotateKey( spep_3-2 + 66, 1, 32.9 );
setRotateKey( spep_3-2 + 68, 1, 36.5 );
setRotateKey( spep_3-2 + 70, 1, 40 );
setRotateKey( spep_3-2 + 72, 1, 43.6 );
setRotateKey( spep_3-2 + 74, 1, 47.2 );
setRotateKey( spep_3-2 + 76, 1, -32.5 );
setRotateKey( spep_3-2 + 78, 1, -24.9 );
setRotateKey( spep_3-2 + 80, 1, -20.4 );
setRotateKey( spep_3-2 + 82, 1, -18.9 );
setRotateKey( spep_3-2 + 84, 1, 3.7 );
setRotateKey( spep_3-2 + 86, 1, 3.1 );
setRotateKey( spep_3-2 + 88, 1, 2.5 );
setRotateKey( spep_3-2 + 90, 1, 2 );
setRotateKey( spep_3-2 + 92, 1, 1.6 );
setRotateKey( spep_3-2 + 94, 1, 1.2 );
setRotateKey( spep_3-2 + 96, 1, 0.9 );
setRotateKey( spep_3-2 + 98, 1, 0.7 );
setRotateKey( spep_3-2 + 100, 1, 0.5 );
setRotateKey( spep_3-2 + 102, 1, 0.4 );
setRotateKey( spep_3-2 + 104, 1, 0.4 );
setRotateKey( spep_3-2 + 106, 1, -25.5 );
setRotateKey( spep_3-2 + 108, 1, -22.4 );
setRotateKey( spep_3-2 + 110, 1, -19.9 );
setRotateKey( spep_3-2 + 112, 1, -18.2 );
setRotateKey( spep_3-2 + 114, 1, -17.1 );
setRotateKey( spep_3-2 + 116, 1, -16.8 );
setRotateKey( spep_3-2 + 118, 1, 1.8 );
setRotateKey( spep_3-2 + 120, 1, -1.8 );
setRotateKey( spep_3-2 + 122, 1, -5 );
setRotateKey( spep_3-2 + 124, 1, -7.6 );
setRotateKey( spep_3-2 + 126, 1, -9.8 );
setRotateKey( spep_3-2 + 128, 1, -11.5 );
setRotateKey( spep_3-2 + 130, 1, -12.7 );
setRotateKey( spep_3-2 + 132, 1, -13.5 );
setRotateKey( spep_3-2 + 134, 1, -13.7 );
setRotateKey( spep_3-2 + 136, 1, -25.5 );
setRotateKey( spep_3-2 + 138, 1, -23.2 );
setRotateKey( spep_3-2 + 140, 1, -21.3 );
setRotateKey( spep_3-2 + 142, 1, -20 );
setRotateKey( spep_3-2 + 144, 1, -19.3 );
setRotateKey( spep_3-2 + 146, 1, -19 );
setRotateKey( spep_3-2 + 148, 1, -36.1 );
setRotateKey( spep_3-2 + 150, 1, -34.7 );
setRotateKey( spep_3-2 + 152, 1, -33.6 );
setRotateKey( spep_3-2 + 154, 1, -33 );
setRotateKey( spep_3-2 + 156, 1, -32.8 );
setRotateKey( spep_3-2 + 158, 1, -2 );
setRotateKey( spep_3-2 + 160, 1, -3.5 );
setRotateKey( spep_3-2 + 162, 1, -5 );
setRotateKey( spep_3-2 + 164, 1, -2 );
setRotateKey( spep_3-2 + 166, 1, 0.4 );
setRotateKey( spep_3-2 + 168, 1, 2.7 );
setRotateKey( spep_3-2 + 170, 1, -2 );
setRotateKey( spep_3-2 + 172, 1, -3.5 );
setRotateKey( spep_3-2 + 174, 1, -5 );
setRotateKey( spep_3-2 + 176, 1, -2 );
setRotateKey( spep_3-2 + 178, 1, 0.4 );
setRotateKey( spep_3-2 + 180, 1, 2.7 );
setRotateKey( spep_3-2 + 182, 1, -2 );
setRotateKey( spep_3-2 + 184, 1, -3.5 );
setRotateKey( spep_3-2 + 186, 1, -5 );
setRotateKey( spep_3-2 + 188, 1, -2 );
setRotateKey( spep_3-2 + 190, 1, 0.4 );
setRotateKey( spep_3-2 + 192, 1, 2.7 );
setRotateKey( spep_3-2 + 194, 1, -2 );
setRotateKey( spep_3-2 + 196, 1, -3.5 );
setRotateKey( spep_3-2 + 198, 1, -5 );
setRotateKey( spep_3-2 + 200, 1, -2 );
setRotateKey( spep_3-2 + 202, 1, 0.4 );
setRotateKey( spep_3-2 + 204, 1, 2.7 );
setRotateKey( spep_3-2 + 206, 1, -2 );
setRotateKey( spep_3-2 + 208, 1, -3.5 );
setRotateKey( spep_3-2 + 210, 1, -5 );
setRotateKey( spep_3-2 + 212, 1, -2 );
setRotateKey( spep_3-2 + 214, 1, 4.7 );
setRotateKey( spep_3-2 + 216, 1, 4.6 );
setRotateKey( spep_3-2 + 218, 1, 4.5 );
setRotateKey( spep_3-2 + 236, 1, 4.5 );
setRotateKey( spep_3-2 + 238, 1, 0 );
setRotateKey( spep_3-2 + 262, 1, 0 );
setRotateKey( spep_3-2 + 264, 1, 4.1 );
setRotateKey( spep_3-2 + 266, 1, 7.4 );
setRotateKey( spep_3-2 + 268, 1, 9.7 );
setRotateKey( spep_3-2 + 270, 1, 11 );
setRotateKey( spep_3-2 + 272, 1, 11.5 );
setRotateKey( spep_3-2 + 274, 1, 11.5 );


--文字エントリー
ctzan = entryEffectLife( spep_3 + 72,  10010, 16, 0x100, -1, 0, -42.4, 107.5 );--ザンッ

setEffMoveKey( spep_3 + 72, ctzan, -42.4, 107.5 , 0 );
setEffMoveKey( spep_3 + 78, ctzan, -55.5, 133.6 , 0 );
setEffMoveKey( spep_3 + 80, ctzan, -52.8, 144.3 , 0 );
setEffMoveKey( spep_3 + 82, ctzan, -59.4, 144.7 , 0 );
setEffMoveKey( spep_3 + 84, ctzan, -49.9, 149.7 , 0 );
setEffMoveKey( spep_3 + 86, ctzan, -54.5, 150.6 , 0 );
setEffMoveKey( spep_3 + 88, ctzan, -60.8, 148.8 , 0 );
setEffMoveKey( spep_3 + 90, ctzan, -60.8, 148.8 , 0 );

setEffScaleKey( spep_3 + 72, ctzan, 0.82, 0.82 );
setEffScaleKey( spep_3 + 78, ctzan, 1.19, 1.19 );
setEffScaleKey( spep_3 + 80, ctzan, 1.31, 1.31 );
setEffScaleKey( spep_3 + 82, ctzan, 1.34, 1.34 );
setEffScaleKey( spep_3 + 84, ctzan, 1.37, 1.37 );
setEffScaleKey( spep_3 + 86, ctzan, 1.39, 1.39 );
setEffScaleKey( spep_3 + 90, ctzan, 1.39, 1.39 );

setEffRotateKey( spep_3 + 72, ctzan, -17.5 );
setEffRotateKey( spep_3 + 90, ctzan, -17.5 );

setEffAlphaKey( spep_3 + 72, ctzan, 0 );
setEffAlphaKey( spep_3 + 73, ctzan, 255 );
setEffAlphaKey( spep_3 + 74, ctzan, 255 );
setEffAlphaKey( spep_3 + 86, ctzan, 255 );
setEffAlphaKey( spep_3 + 88, ctzan, 128 );
setEffAlphaKey( spep_3 + 90, ctzan, 0 );


--書き文字(ガッ)
ctGa = entryEffectLife( spep_3 + 80,  10005, 18, 0x100, -1, 0, 177.2, 177.7 );--ガッ

setEffMoveKey( spep_3 + 80, ctGa, 177.2, 177.7 , 0 );
setEffMoveKey( spep_3 + 86, ctGa, 169.8, 199.1 , 0 );
setEffMoveKey( spep_3 + 88, ctGa, 173.9, 205.5 , 0 );
setEffMoveKey( spep_3 + 90, ctGa, 167.6, 211.6 , 0 );
setEffMoveKey( spep_3 + 92, ctGa, 176.7, 211.7 , 0 );
setEffMoveKey( spep_3 + 94, ctGa, 172.8, 215.5 , 0 );
setEffMoveKey( spep_3 + 96, ctGa, 166.5, 217.7 , 0 );
setEffMoveKey( spep_3 + 98, ctGa, 166.3, 218.3 , 0 );

setEffScaleKey( spep_3 + 80, ctGa, 1.03, 1.03 );
setEffScaleKey( spep_3 + 86, ctGa, 1.34, 1.34 );
setEffScaleKey( spep_3 + 88, ctGa, 1.45, 1.45 );
setEffScaleKey( spep_3 + 90, ctGa, 1.53, 1.53 );
setEffScaleKey( spep_3 + 92, ctGa, 1.58, 1.58 );
setEffScaleKey( spep_3 + 94, ctGa, 1.6, 1.6 );
setEffScaleKey( spep_3 + 96, ctGa, 1.63, 1.63 );
setEffScaleKey( spep_3 + 98, ctGa, 1.64, 1.64 );

setEffRotateKey( spep_3 + 80, ctGa, 13.7 );
setEffRotateKey( spep_3 + 98, ctGa, 13.7 );

setEffAlphaKey( spep_3 + 80, ctGa, 0 );
setEffAlphaKey( spep_3 + 81, ctGa, 255 );
setEffAlphaKey( spep_3 + 82, ctGa, 255 );
setEffAlphaKey( spep_3 + 94, ctGa, 255 );
setEffAlphaKey( spep_3 + 96, ctGa, 64 );
setEffAlphaKey( spep_3 + 98, ctGa, 0 );


--書き文字(バキッ)
ctBaki2 = entryEffectLife( spep_3 + 102,  10020, 14, 0x100, -1, 0, 131.9, 298.8 );--バキッ

setEffMoveKey( spep_3 + 102, ctBaki2, 131.9, 298.8 , 0 );
setEffMoveKey( spep_3 + 104, ctBaki2, 130.2, 310 , 0 );
setEffMoveKey( spep_3 + 106, ctBaki2, 131.8, 309.7 , 0 );
setEffMoveKey( spep_3 + 108, ctBaki2, 129.9, 322.7 , 0 );
setEffMoveKey( spep_3 + 110, ctBaki2, 131.8, 318.3 , 0 );
setEffMoveKey( spep_3 + 112, ctBaki2, 131.6, 327.2 , 0 );
setEffMoveKey( spep_3 + 114, ctBaki2, 139.9, 334.8 , 0 );
setEffMoveKey( spep_3 + 116, ctBaki2, 143.3, 336.2 , 0 );

setEffScaleKey( spep_3 + 102, ctBaki2, 1.25, 1.25 );
setEffScaleKey( spep_3 + 104, ctBaki2, 1.32, 1.32 );
setEffScaleKey( spep_3 + 106, ctBaki2, 1.35, 1.35 );
setEffScaleKey( spep_3 + 108, ctBaki2, 1.43, 1.43 );
setEffScaleKey( spep_3 + 110, ctBaki2, 1.49, 1.49 );
setEffScaleKey( spep_3 + 112, ctBaki2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 114, ctBaki2, 1.7, 1.7 );
setEffScaleKey( spep_3 + 116, ctBaki2, 1.76, 1.76 );

setEffRotateKey( spep_3 + 102, ctBaki2, 32.7 );
setEffRotateKey( spep_3 + 116, ctBaki2, 32.7 );

setEffAlphaKey( spep_3 + 102, ctBaki2, 0 );
setEffAlphaKey( spep_3 + 103, ctBaki2, 255 );
setEffAlphaKey( spep_3 + 104, ctBaki2, 255 );
setEffAlphaKey( spep_3 + 110, ctBaki2, 255 );
setEffAlphaKey( spep_3 + 112, ctBaki2, 64 );
setEffAlphaKey( spep_3 + 116, ctBaki2, 0 );


--書き文字(ドンッ)
ctDon = entryEffectLife( spep_3 + 114,  10019, 16, 0x100, -1, 0, 95.3, 206.9 );--ドンッ

setEffMoveKey( spep_3 + 114, ctDon, 95.3, 206.9 , 0 );
setEffMoveKey( spep_3 + 120, ctDon, 72.8, 232.9 , 0 );
setEffMoveKey( spep_3 + 122, ctDon, 71, 255.3 , 0 );
setEffMoveKey( spep_3 + 124, ctDon, 62, 265 , 0 );
setEffMoveKey( spep_3 + 126, ctDon, 62, 257.9 , 0 );
setEffMoveKey( spep_3 + 128, ctDon, 68.5, 266.5 , 0 );
setEffMoveKey( spep_3 + 130, ctDon, 68.5, 267.4 , 0 );

setEffScaleKey( spep_3 + 114, ctDon, 1.29, 1.29 );
setEffScaleKey( spep_3 + 120, ctDon, 1.63, 1.63 );
setEffScaleKey( spep_3 + 122, ctDon, 1.98, 1.98 );
setEffScaleKey( spep_3 + 124, ctDon, 2.01, 2.01 );
setEffScaleKey( spep_3 + 126, ctDon, 2.04, 2.04 );
setEffScaleKey( spep_3 + 128, ctDon, 2.05, 2.05 );
setEffScaleKey( spep_3 + 130, ctDon, 2.07, 2.07 );

setEffRotateKey( spep_3 + 114, ctDon, -0.3 );
setEffRotateKey( spep_3 + 120, ctDon, 0.3 );
setEffRotateKey( spep_3 + 122, ctDon, 0.8 );
setEffRotateKey( spep_3 + 130, ctDon, 0.8 );

setEffAlphaKey( spep_3 + 114, ctDon, 0 );
setEffAlphaKey( spep_3 + 115, ctDon, 255 );
setEffAlphaKey( spep_3 + 116, ctDon, 255 );
setEffAlphaKey( spep_3 + 126, ctDon, 255 );
setEffAlphaKey( spep_3 + 128, ctDon, 128 );
setEffAlphaKey( spep_3 + 130, ctDon, 0 );


--書き文字(バキッ)
ctBaki3 = entryEffectLife( spep_3-4 + 136,  10020, 14, 0x100, -1, 0, 54.5, 217.2 );--バキ

setEffMoveKey( spep_3-4 + 136, ctBaki3, 54.5, 217.2 , 0 );
setEffMoveKey( spep_3-4 + 138, ctBaki3, 46.5, 225.2 , 0 );
setEffMoveKey( spep_3-4 + 140, ctBaki3, 48, 225.9 , 0 );
setEffMoveKey( spep_3-4 + 142, ctBaki3, 36.5, 238 , 0 );
setEffMoveKey( spep_3-4 + 144, ctBaki3, 37.3, 239.9 , 0 );
setEffMoveKey( spep_3-4 + 146, ctBaki3, 39.4, 251 , 0 );
setEffMoveKey( spep_3-4 + 150, ctBaki3, 41.3, 254.2 , 0 );

setEffScaleKey( spep_3-4 + 136, ctBaki3, 1.25, 1.25 );
setEffScaleKey( spep_3-4 + 138, ctBaki3, 1.32, 1.32 );
setEffScaleKey( spep_3-4 + 140, ctBaki3, 1.35, 1.35 );
setEffScaleKey( spep_3-4 + 142, ctBaki3, 1.46, 1.46 );
setEffScaleKey( spep_3-4 + 144, ctBaki3, 1.5, 1.5 );
setEffScaleKey( spep_3-4 + 146, ctBaki3, 1.7, 1.7 );
setEffScaleKey( spep_3-4 + 150, ctBaki3, 1.76, 1.76 )

setEffRotateKey( spep_3-4 + 136, ctBaki3, -4 );
setEffRotateKey( spep_3-4 + 150, ctBaki3, -4 );

setEffAlphaKey( spep_3-4 + 136, ctBaki3, 255 );
setEffAlphaKey( spep_3-4 + 144, ctBaki3, 255 );
setEffAlphaKey( spep_3-4 + 146, ctBaki3, 64 );
setEffAlphaKey( spep_3-4 + 149, ctBaki3, 0 );
setEffAlphaKey( spep_3-4 + 150, ctBaki3, 0 );


--書き文字(ガッ)
ctGa3 = entryEffectLife( spep_3 + 154,  10005, 14, 0x100, -1, 0, 55.9, 297.7 );--ガッ

setEffMoveKey( spep_3 + 154, ctGa3, 55.9, 297.7 , 0 );
setEffMoveKey( spep_3 + 160, ctGa3, 43.4, 314.2 , 0 );
setEffMoveKey( spep_3 + 162, ctGa3, 36.3, 316.9 , 0 );
setEffMoveKey( spep_3 + 164, ctGa3, 39.1, 320.2 , 0 );
setEffMoveKey( spep_3 + 166, ctGa3, 34.3, 319.3 , 0 );
setEffMoveKey( spep_3 + 168, ctGa3, 34, 319.6 , 0 );

setEffScaleKey( spep_3 + 154, ctGa3, 0.76, 0.76 );
setEffScaleKey( spep_3 + 160, ctGa3, 1.07, 1.07 );
setEffScaleKey( spep_3 + 162, ctGa3, 1.15, 1.15 );
setEffScaleKey( spep_3 + 164, ctGa3, 1.18, 1.18 );
setEffScaleKey( spep_3 + 166, ctGa3, 1.2, 1.2 );
setEffScaleKey( spep_3 + 168, ctGa3, 1.21, 1.21 );

setEffRotateKey( spep_3 + 154, ctGa3, -16.3 );
setEffRotateKey( spep_3 + 168, ctGa3, -16.3 );

setEffAlphaKey( spep_3 + 154, ctGa3, 0 );
setEffAlphaKey( spep_3 + 155, ctGa3, 255 );
setEffAlphaKey( spep_3 + 156, ctGa3, 255 );
setEffAlphaKey( spep_3 + 164, ctGa3, 255 );
setEffAlphaKey( spep_3 + 166, ctGa3, 64 );
setEffAlphaKey( spep_3 + 168, ctGa3, 0 );


--書き文字(ガッ)
ctGa4 = entryEffectLife( spep_3-4 + 164,  10005, 10, 0x100, -1, 0, 216.4, 236 );--ガッ

setEffMoveKey( spep_3-4 + 164, ctGa4, 216.4, 236 , 0 );
setEffMoveKey( spep_3-4 + 166, ctGa4, 218.9, 256.5 , 0 );
setEffMoveKey( spep_3-4 + 168, ctGa4, 215.6, 263.4 , 0 );
setEffMoveKey( spep_3-4 + 170, ctGa4, 219.9, 263.8 , 0 );
setEffMoveKey( spep_3-4 + 172, ctGa4, 215.9, 266.5 , 0 );
setEffMoveKey( spep_3-4 + 174, ctGa4, 215.9, 267 , 0 );

setEffScaleKey( spep_3-4 + 164, ctGa4, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 166, ctGa4, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 168, ctGa4, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 170, ctGa4, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 172, ctGa4, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 174, ctGa4, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 164, ctGa4, 27.7 );
setEffRotateKey( spep_3-4 + 174, ctGa4, 27.7 );

setEffAlphaKey( spep_3-4 + 164, ctGa4, 0 );
setEffAlphaKey( spep_3-4 + 165, ctGa4, 255 );
setEffAlphaKey( spep_3-4 + 166, ctGa4, 255 );
setEffAlphaKey( spep_3-4 + 170, ctGa4, 255 );
setEffAlphaKey( spep_3-4 + 172, ctGa4, 64 );
setEffAlphaKey( spep_3-4 + 174, ctGa4, 0 );


--書き文字(バキッ)
ctBaki4 = entryEffectLife( spep_3-4 + 170,  10020, 10, 0x100, -1, 0, 168.5, 380.9 );--バキッ

setEffMoveKey( spep_3-4 + 170, ctBaki4, 168.5, 380.9 , 0 );
setEffMoveKey( spep_3-4 + 172, ctBaki4, 167.6, 388.8 , 0 );
setEffMoveKey( spep_3-4 + 174, ctBaki4, 164.7, 400.6 , 0 );
setEffMoveKey( spep_3-4 + 176, ctBaki4, 165.9, 401.5 , 0 );
setEffMoveKey( spep_3-4 + 178, ctBaki4, 171.3, 407.7 , 0 );
setEffMoveKey( spep_3-4 + 180, ctBaki4, 173.6, 409 , 0 );

setEffScaleKey( spep_3-4 + 170, ctBaki4, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 172, ctBaki4, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 174, ctBaki4, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 176, ctBaki4, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 178, ctBaki4, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 180, ctBaki4, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 170, ctBaki4, 26 );
setEffRotateKey( spep_3-4 + 180, ctBaki4, 26 );

setEffAlphaKey( spep_3-4 + 170, ctBaki4, 0 );
setEffAlphaKey( spep_3-4 + 171, ctBaki4, 255 );
setEffAlphaKey( spep_3-4 + 172, ctBaki4, 255 );
setEffAlphaKey( spep_3-4 + 176, ctBaki4, 255 );
setEffAlphaKey( spep_3-4 + 178, ctBaki4, 64 );
setEffAlphaKey( spep_3-4 + 180, ctBaki4, 0 );


--書き文字(ガッ)
ctGa5 = entryEffectLife( spep_3-4 + 176,  10005, 10, 0x100, -1, 0, 55.9, 297.7 );--ガッ

setEffMoveKey( spep_3-4 + 176, ctGa5, 55.9, 297.7 , 0 );
setEffMoveKey( spep_3-4 + 178, ctGa5, 43.4, 314.2 , 0 );
setEffMoveKey( spep_3-4 + 180, ctGa5, 36.3, 316.9 , 0 );
setEffMoveKey( spep_3-4 + 182, ctGa5, 39.1, 320.2 , 0 );
setEffMoveKey( spep_3-4 + 184, ctGa5, 34.3, 319.3 , 0 );
setEffMoveKey( spep_3-4 + 186, ctGa5, 34, 319.6 , 0 );

setEffScaleKey( spep_3-4 + 176, ctGa5, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 178, ctGa5, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 180, ctGa5, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 182, ctGa5, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 184, ctGa5, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 186, ctGa5, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 176, ctGa5, -16.3 );
setEffRotateKey( spep_3-4 + 186, ctGa5, -16.3 );

setEffAlphaKey( spep_3-4 + 176, ctGa5, 0 );
setEffAlphaKey( spep_3-4 + 177, ctGa5, 255 );
setEffAlphaKey( spep_3-4 + 178, ctGa5, 255 );
setEffAlphaKey( spep_3-4 + 182, ctGa5, 255 );
setEffAlphaKey( spep_3-4 + 184, ctGa5, 64 );
setEffAlphaKey( spep_3-4 + 186, ctGa5, 0 );


--書き文字(バキッ)
ctBaki5 = entryEffectLife( spep_3-4 + 182,  10020, 10, 0x100, -1, 0, 224.1, 296.7 );--バキッ

setEffMoveKey( spep_3-4 + 182, ctBaki5, 224.1, 296.7 , 0 );
setEffMoveKey( spep_3-4 + 184, ctBaki5, 224.6, 304.6 , 0 );
setEffMoveKey( spep_3-4 + 186, ctBaki5, 223.9, 316.7 , 0 );
setEffMoveKey( spep_3-4 + 188, ctBaki5, 225.3, 317.4 , 0 );
setEffMoveKey( spep_3-4 + 190, ctBaki5, 231.6, 322.5 , 0 );
setEffMoveKey( spep_3-4 + 192, ctBaki5, 234.1, 323.4 , 0 );

setEffScaleKey( spep_3-4 + 182, ctBaki5, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 184, ctBaki5, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 186, ctBaki5, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 188, ctBaki5, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 190, ctBaki5, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 192, ctBaki5, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 182, ctBaki5, 36.4 );
setEffRotateKey( spep_3-4 + 192, ctBaki5, 36.4 );

setEffAlphaKey( spep_3-4 + 182, ctBaki5, 0 );
setEffAlphaKey( spep_3-4 + 183, ctBaki5, 255 );
setEffAlphaKey( spep_3-4 + 184, ctBaki5, 255 );
setEffAlphaKey( spep_3-4 + 188, ctBaki5, 255 );
setEffAlphaKey( spep_3-4 + 190, ctBaki5, 64 );
setEffAlphaKey( spep_3-4 + 192, ctBaki5, 0 );


--書き文字(ガッ)
ctGa6 = entryEffectLife( spep_3-4 + 188,  10005, 10, 0x100, -1, 0, 216.4, 236 );--ガッ

setEffMoveKey( spep_3-4 + 188, ctGa6, 216.4, 236 , 0 );
setEffMoveKey( spep_3-4 + 190, ctGa6, 218.9, 256.5 , 0 );
setEffMoveKey( spep_3-4 + 192, ctGa6, 215.6, 263.4 , 0 );
setEffMoveKey( spep_3-4 + 194, ctGa6, 219.9, 263.8 , 0 );
setEffMoveKey( spep_3-4 + 196, ctGa6, 215.9, 266.5 , 0 );
setEffMoveKey( spep_3-4 + 198, ctGa6, 215.9, 267 , 0 );

setEffScaleKey( spep_3-4 + 188, ctGa6, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 190, ctGa6, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 192, ctGa6, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 194, ctGa6, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 196, ctGa6, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 198, ctGa6, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 188, ctGa6, 27.7 );
setEffRotateKey( spep_3-4 + 198, ctGa6, 27.7 );

setEffAlphaKey( spep_3-4 + 188, ctGa6, 0 );
setEffAlphaKey( spep_3-4 + 189, ctGa6, 255 );
setEffAlphaKey( spep_3-4 + 190, ctGa6, 255 );
setEffAlphaKey( spep_3-4 + 194, ctGa6, 255 );
setEffAlphaKey( spep_3-4 + 196, ctGa6, 64 );
setEffAlphaKey( spep_3-4 + 198, ctGa6, 0 );


--書き文字(バキッ)
ctBaki6 = entryEffectLife( spep_3-4 + 194,  10020, 10, 0x100, -1, 0, 168.5, 380.9 );--バキッ

setEffMoveKey( spep_3-4 + 194, ctBaki6, 168.5, 380.9 , 0 );
setEffMoveKey( spep_3-4 + 196, ctBaki6, 167.6, 388.8 , 0 );
setEffMoveKey( spep_3-4 + 198, ctBaki6, 164.7, 400.6 , 0 );
setEffMoveKey( spep_3-4 + 200, ctBaki6, 165.9, 401.5 , 0 );
setEffMoveKey( spep_3-4 + 202, ctBaki6, 171.3, 407.7 , 0 );
setEffMoveKey( spep_3-4 + 204, ctBaki6, 173.6, 409 , 0 );

setEffScaleKey( spep_3-4 + 194, ctBaki6, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 196, ctBaki6, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 198, ctBaki6, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 200, ctBaki6, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 202, ctBaki6, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 204, ctBaki6, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 194, ctBaki6, 26 );
setEffRotateKey( spep_3-4 + 204, ctBaki6, 26 );

setEffAlphaKey( spep_3-4 + 194, ctBaki6, 0 );
setEffAlphaKey( spep_3-4 + 195, ctBaki6, 255 );
setEffAlphaKey( spep_3-4 + 196, ctBaki6, 255 );
setEffAlphaKey( spep_3-4 + 200, ctBaki6, 255 );
setEffAlphaKey( spep_3-4 + 202, ctBaki6, 64 );
setEffAlphaKey( spep_3-4 + 204, ctBaki6, 0 );


--書き文字(ガッ)
ctGa7 = entryEffectLife( spep_3-4 + 200,  10005, 10, 0x100, -1, 0, 55.9, 297.7 );--ガッ

setEffMoveKey( spep_3-4 + 200, ctGa7, 55.9, 297.7 , 0 );
setEffMoveKey( spep_3-4 + 202, ctGa7, 43.4, 314.2 , 0 );
setEffMoveKey( spep_3-4 + 204, ctGa7, 36.3, 316.9 , 0 );
setEffMoveKey( spep_3-4 + 206, ctGa7, 39.1, 320.2 , 0 );
setEffMoveKey( spep_3-4 + 208, ctGa7, 34.3, 319.3 , 0 );
setEffMoveKey( spep_3-4 + 210, ctGa7, 34, 319.6 , 0 );

setEffScaleKey( spep_3-4 + 200, ctGa7, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 202, ctGa7, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 204, ctGa7, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 206, ctGa7, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 208, ctGa7, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 210, ctGa7, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 200, ctGa7, -16.3 );
setEffRotateKey( spep_3-4 + 210, ctGa7, -16.3 );

setEffAlphaKey( spep_3-4 + 200, ctGa7, 0 );
setEffAlphaKey( spep_3-4 + 201, ctGa7, 255 );
setEffAlphaKey( spep_3-4 + 202, ctGa7, 255 );
setEffAlphaKey( spep_3-4 + 206, ctGa7, 255 );
setEffAlphaKey( spep_3-4 + 208, ctGa7, 64 );
setEffAlphaKey( spep_3-4 + 210, ctGa7, 0 );


--書き文字(バキッ)
ctBaki7 = entryEffectLife( spep_3-4 + 206,  10020, 10, 0x100, -1, 0, 224.1, 296.7 );--バキッ

setEffMoveKey( spep_3-4 + 206, ctBaki7, 224.1, 296.7 , 0 );
setEffMoveKey( spep_3-4 + 208, ctBaki7, 224.6, 304.6 , 0 );
setEffMoveKey( spep_3-4 + 210, ctBaki7, 223.9, 316.7 , 0 );
setEffMoveKey( spep_3-4 + 212, ctBaki7, 225.3, 317.4 , 0 );
setEffMoveKey( spep_3-4 + 214, ctBaki7, 231.6, 322.5 , 0 );
setEffMoveKey( spep_3-4 + 216, ctBaki7, 234.1, 323.4 , 0 );

setEffScaleKey( spep_3-4 + 206, ctBaki7, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 208, ctBaki7, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 210, ctBaki7, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 212, ctBaki7, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 214, ctBaki7, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 216, ctBaki7, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 206, ctBaki7, 36.4 );
setEffRotateKey( spep_3-4 + 216, ctBaki7, 36.4 );

setEffAlphaKey( spep_3-4 + 206, ctBaki7, 0 );
setEffAlphaKey( spep_3-4 + 207, ctBaki7, 255 );
setEffAlphaKey( spep_3-4 + 208, ctBaki7, 255 );
setEffAlphaKey( spep_3-4 + 212, ctBaki7, 255 );
setEffAlphaKey( spep_3-4 + 214, ctBaki7, 64 );
setEffAlphaKey( spep_3-4 + 216, ctBaki7, 0 );


--書き文字(ガッ)
ctGa8 = entryEffectLife( spep_3-4 + 212,  10005, 12, 0x100, -1, 0, 216.4, 236 );--ガッ

setEffMoveKey( spep_3-4 + 212, ctGa8, 216.4, 236 , 0 );
setEffMoveKey( spep_3-4 + 214, ctGa8, 218.9, 256.5 , 0 );
setEffMoveKey( spep_3-4 + 216, ctGa8, 215.6, 263.4 , 0 );
setEffMoveKey( spep_3-4 + 218, ctGa8, 219.9, 263.8 , 0 );
setEffMoveKey( spep_3-4 + 220, ctGa8, 215.9, 266.5 , 0 );
setEffMoveKey( spep_3-4 + 224, ctGa8, 215.9, 267 , 0 );

setEffScaleKey( spep_3-4 + 212, ctGa8, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 214, ctGa8, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 216, ctGa8, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 218, ctGa8, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 220, ctGa8, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 224, ctGa8, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 212, ctGa8, 27.7 );
setEffRotateKey( spep_3-4 + 224, ctGa8, 27.7 );

setEffAlphaKey( spep_3-4 + 212, ctGa8, 0 );
setEffAlphaKey( spep_3-4 + 213, ctGa8, 255 );
setEffAlphaKey( spep_3-4 + 214, ctGa8, 255 );
setEffAlphaKey( spep_3-4 + 218, ctGa8, 255 );
setEffAlphaKey( spep_3-4 + 220, ctGa8, 64 );
setEffAlphaKey( spep_3-4 + 223, ctGa8, 0 );
setEffAlphaKey( spep_3-4 + 224, ctGa8, 0 );


--書き文字(バキッ)
ctBaki8 = entryEffectLife( spep_3-4 + 239,  10020, 13, 0x100, -1, 0, -125.8, 386.9 );
setEffMoveKey( spep_3-4 + 239, ctBaki8, -125.8, 386.9 , 0 );
setEffMoveKey( spep_3-4 + 240, ctBaki8, -125.8, 386.9 , 0 );
setEffMoveKey( spep_3-4 + 241, ctBaki8, -139.4, 397 , 0 );
setEffMoveKey( spep_3-4 + 242, ctBaki8, -137.1, 398.5 , 0 );
setEffMoveKey( spep_3-4 + 244, ctBaki8, -153.2, 410.7 , 0 );
setEffMoveKey( spep_3-4 + 246, ctBaki8, -146.2, 408.1 , 0 );
setEffMoveKey( spep_3-4 + 248, ctBaki8, -156.2, 417.7 , 0 );
setEffMoveKey( spep_3-4 + 250, ctBaki8, -155.4, 434.8 , 0 );
setEffMoveKey( spep_3-4 + 252, ctBaki8, -153.2, 439.9 , 0 );

setEffScaleKey( spep_3-4 + 239, ctBaki8, 1.94, 1.94 );
setEffScaleKey( spep_3-4 + 240, ctBaki8, 1.94, 1.94 );
setEffScaleKey( spep_3-4 + 241, ctBaki8, 2.05, 2.05 );
setEffScaleKey( spep_3-4 + 242, ctBaki8, 2.08, 2.08 );
setEffScaleKey( spep_3-4 + 244, ctBaki8, 2.21, 2.21 );
setEffScaleKey( spep_3-4 + 246, ctBaki8, 2.29, 2.29 );
setEffScaleKey( spep_3-4 + 248, ctBaki8, 2.32, 2.32 );
setEffScaleKey( spep_3-4 + 250, ctBaki8, 2.62, 2.62 );
setEffScaleKey( spep_3-4 + 252, ctBaki8, 2.72, 2.72 );

setEffRotateKey( spep_3-4 + 239, ctBaki8, -11.8 );
setEffRotateKey( spep_3-4 + 240, ctBaki8, -11.8 );
setEffRotateKey( spep_3-4 + 252, ctBaki8, -11.8 );

setEffAlphaKey( spep_3-4 + 239, ctBaki8, 255 );
setEffAlphaKey( spep_3-4 + 240, ctBaki8, 255 );
setEffAlphaKey( spep_3-4 + 248, ctBaki8, 255 );
setEffAlphaKey( spep_3-4 + 250, ctBaki8, 64 );
setEffAlphaKey( spep_3-4 + 252, ctBaki8, 0 );


--se
playSe( spep_3, SE_04); --突進
playSe( spep_3+72, 1011); --ザン
playSe( spep_3+80, 1010); --ガッ
playSe( spep_3+102, 1009); --バキッ
playSe( spep_3+114, 1010); --ドンッ
playSe( spep_3+132, 1011); --バキッ
playSe( spep_3+154, 1001); --ガッ
playSe( spep_3-4+166, 1000); --ガッ
playSe( spep_3-4+170, 1009); --バキッ
playSe( spep_3-4+176, 1001); --ガッ
playSe( spep_3-4+182, 1010); --バキッ
playSe( spep_3-4+188, 1009); --ガッ
playSe( spep_3-4+194, 1010); --バキッ
playSe( spep_3-4+200, 1009); --ガッ
playSe( spep_3-4+206, 1010); --バキッ
playSe( spep_3-4+212, 1009); --ガッ
playSe( spep_3-4+238, 1011); --ガッ

spep_4 = spep_3 + 273;

------------------------------------------------------
-- ガッ(110F)
------------------------------------------------------
--背景
finishBack = entryEffectLife( spep_4, SP_08, 110, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_4, finishBack, 1.0, 1.0);
setEffMoveKey(  spep_4,  finishBack,  0,  0);
setEffRotateKey( spep_4, finishBack, 0);
setEffAlphaKey( spep_4, finishBack, 255);

setEffScaleKey( spep_4+110, finishBack, 1.0, 1.0);
setEffMoveKey(  spep_4+110,  finishBack,  0,  0);
setEffRotateKey( spep_4+110, finishBack, 0);
setEffAlphaKey( spep_4+110, finishBack, 255);

--吹き飛ばしヤムチャ
finish = entryEffect( spep_4, SP_06, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_4, finish, 1.0, 1.0);
setEffMoveKey(  spep_4,  finish,  0,  0);
setEffRotateKey( spep_4, finish, 0);
setEffAlphaKey( spep_4, finish, 255);

setEffScaleKey( spep_4+110, finish, 1.0, 1.0);
setEffMoveKey(  spep_4+110,  finish,  0,  0);
setEffRotateKey( spep_4+110, finish, 0);
setEffAlphaKey( spep_4+110, finish, 255);

--吹っ飛びヤムチャ--
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -24.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -61.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -91.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -135.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -182.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -260.1 , 0 );
setMoveKey( spep_4 + 110, 1, -1.9, -260.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 110, 1, 1080 );

--爆発エフェクト
--entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
--laySe( spep_4, SE_10);

setDamage( spep_4 +16, 1, 0);  -- ダメージ振動等

--集中線（黒）
shuchusenBlack = entryEffectLife( spep_4+14, 1657, 96, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+14, shuchusenBlack, 1.3, 1.0);
setEffMoveKey(  spep_4+14,  shuchusenBlack,  0,  0);
setEffRotateKey( spep_4+14, shuchusenBlack, 0);
setEffAlphaKey( spep_4+14, shuchusenBlack, 255);

setEffScaleKey( spep_4+110, shuchusenBlack, 1.3, 1.0);
setEffMoveKey(  spep_4+110,  shuchusenBlack,  0,  0);
setEffRotateKey( spep_4+110, shuchusenBlack, 0);
setEffAlphaKey( spep_4+110, shuchusenBlack, 255);

--集中線（白）
shuchusen4 = entryEffectLife( spep_4+14, 906, 96, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+14, shuchusen4, 1.8, 1.9);
setEffMoveKey(  spep_4+14,  shuchusen4,  0,  0);
setEffRotateKey( spep_4+14, shuchusen4, 0);
setEffAlphaKey( spep_4+14, shuchusen4, 255);

setEffScaleKey( spep_4+110, shuchusen4, 1.8, 1.9);
setEffMoveKey(  spep_4+110,  shuchusen4,  0,  0);
setEffRotateKey( spep_4+110, shuchusen4, 0);
setEffAlphaKey( spep_4+110, shuchusen4, 255);

--書き文字--
ctGa9 = entryEffectLife( spep_4 + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctGa9, 30, 10);

setEffMoveKey( spep_4 + 14, ctGa9, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 16, ctGa9, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 18, ctGa9, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 20, ctGa9, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 22, ctGa9, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 24, ctGa9, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 26, ctGa9, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctGa9, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 30, ctGa9, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 110, ctGa9, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctGa9, 2, 2 );
setEffScaleKey( spep_4+16, ctGa9, 2.0, 2.0);
setEffScaleKey( spep_4+17, ctGa9, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctGa9, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctGa9, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctGa9, 3.8, 3.8);
setEffScaleKey( spep_4+110, ctGa9, 3.8, 3.8);

setEffRotateKey( spep_4 + 14, ctGa9, -40 );
setEffRotateKey( spep_4 + 16, ctGa9, -31 );
setEffRotateKey( spep_4 + 18, ctGa9, -40 );
setEffRotateKey( spep_4 + 20, ctGa9, -31 );
setEffRotateKey( spep_4 + 22, ctGa9, -40 );
setEffRotateKey( spep_4 + 24, ctGa9, -31);
setEffRotateKey( spep_4 + 26, ctGa9, -40 );
setEffRotateKey( spep_4 + 28, ctGa9, -31);
setEffRotateKey( spep_4 + 30, ctGa9, -40 );
setEffRotateKey( spep_4 + 110, ctGa9, -40 );

setEffAlphaKey( spep_4 + 14, ctGa9, 255 );
setEffAlphaKey( spep_4 + 110, ctGa9, 255 );

--ひび割れ
hibi = entryEffect( spep_4+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe( spep_4+13, SE_14);

-- ダメージ表示
dealDamage(spep_4+16);
endPhase( spep_4+100);
else

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--敵側の攻撃
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

spep_0 = 0;
------------------------------------------------------
-- 正面構え (100F)
------------------------------------------------------
--正面構え
standby = entryEffectLife( spep_0, SP_01x, 96, 0x100, -1, 0, 0, 0);
setEffScaleKey( spep_0, standby, -1.0, 1.0);
setEffMoveKey(  spep_0,  standby,  0,  0);
setEffRotateKey( spep_0, standby, 0);
setEffAlphaKey( spep_0, standby, 255);

setEffScaleKey( spep_0+96, standby, -1.0, 1.0);
setEffMoveKey(  spep_0+96,  standby,  0,  0);
setEffRotateKey( spep_0+96, standby, 0);
setEffAlphaKey( spep_0+96, standby, 255);

--背景
standbyBack = entryEffectLife( spep_0, SP_07x, 96, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_0, standbyBack, -1.0, 1.0);
setEffMoveKey(  spep_0,  standbyBack,  0,  0);
setEffRotateKey( spep_0, standbyBack, 0);
setEffAlphaKey( spep_0, standbyBack, 255);

setEffScaleKey( spep_0+96, standbyBack, -1.0, 1.0);
setEffMoveKey(  spep_0+96,  standbyBack,  0,  0);
setEffRotateKey( spep_0+96, standbyBack, 0);
setEffAlphaKey( spep_0+96, standbyBack, 255);

--顔カットイン&文字
--speff = entryEffect( spep_0+12,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
--speff1 = entryEffect( spep_0+12,   1505,   0,     -1,  0,  0,  -40);   -- eff_006 (セリフ)
--setEffReplaceTexture(  speff1, 4, 5); 

--カットインSE
playSe( spep_0+16, SE_04);

--書き文字(ゴゴゴゴゴ)
ctGo = entryEffectLife( spep_0+24, 190006, 72, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴゴ
setEffShake( spep_0+24, ctGo, 72, 8);

setEffScaleKey( spep_0+24, ctGo, -0.8, 0.8);
setEffMoveKey(  spep_0+24,  ctGo, -20, 522, 0 );
setEffRotateKey(  spep_0+24,  ctGo,  0);
setEffAlphaKey(  spep_0+24,  ctGo,  255);

setEffScaleKey( spep_0+84, ctGo, -0.8, 0.8);

setEffAlphaKey(  spep_0+84,  ctGo,  255);

setEffScaleKey( spep_0+96, ctGo, -1.3, 1.3);
setEffMoveKey(  spep_0+96,  ctGo, -20, 522, 0 );
setEffRotateKey(  spep_0+96,  ctGo,  0);
setEffAlphaKey(  spep_0+96,  ctGo,  0);

--集中線
shuchusen = entryEffectLife( spep_0+40, 906, 56, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0+40, shuchusen, 1.8, 1.9);
setEffMoveKey(  spep_0+40,  shuchusen,  0,  0);
setEffRotateKey( spep_0+40, shuchusen, 0);
setEffAlphaKey( spep_0+40, shuchusen, 255);

setEffScaleKey( spep_0+96, shuchusen, 1.8, 1.9);
setEffMoveKey(  spep_0+96,  shuchusen,  0,  0);
setEffRotateKey( spep_0+96, shuchusen, 0);
setEffAlphaKey( spep_0+96, shuchusen, 255);

spep_1 = spep_0 + 96;
------------------------------------------------------
-- カードカットイン
------------------------------------------------------
speff = entryEffectLife(  spep_1,   1507, 82,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                             -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_1, 906, 82, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen2, 1.5, 1.5);
setEffMoveKey(  spep_1,  shuchusen2,  0,  0);
setEffRotateKey( spep_1, shuchusen2, 0);
setEffAlphaKey( spep_1, shuchusen2, 255);

setEffScaleKey( spep_1+80, shuchusen2, 1.5, 1.5);
setEffMoveKey(  spep_1+80,  shuchusen2,  0,  0);
setEffRotateKey( spep_1+80, shuchusen2, 0);
setEffAlphaKey( spep_1+80, shuchusen2, 255);

playSe( spep_1, SE_05);

--白フェードが入る--
--entryFade( spep_1+86, 3, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1 + 80;

------------------------------------------------------
-- 突進&蹴りつけ(90F)
------------------------------------------------------
--突進&キック(背景)
dashKickB = entryEffectLife( spep_2+3, SP_03x, 87, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_2+3, dashKickB, -1.0, 1.0);
setEffMoveKey( spep_2+3,  dashKickB,  0,  -30);
setEffRotateKey( spep_2+3, dashKickB, 0);
setEffAlphaKey( spep_2+3, dashKickB, 255);

setEffScaleKey( spep_2+90, dashKickB, -1.0, 1.0);
setEffMoveKey( spep_2+90,  dashKickB,  0,  -30);
setEffRotateKey( spep_2+90, dashKickB, 0);
setEffAlphaKey( spep_2+90, dashKickB, 255);

--突進&キック
dashKick = entryEffectLife( spep_2+3, SP_02, 87, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_2+3, dashKick, -1.0, 1.0);
setEffMoveKey( spep_2+3,  dashKick,  0,  -30);
setEffRotateKey( spep_2+3, dashKick, 0);
setEffAlphaKey( spep_2+3, dashKick, 255);

setEffAlphaKey( spep_2+42, dashKick, 255);
setEffAlphaKey( spep_2+43, dashKick, 0);
setEffAlphaKey( spep_2+44, dashKick, 0);

setEffScaleKey( spep_2+90, dashKick, -1.0, 1.0);
setEffMoveKey( spep_2+90,  dashKick,  0,  -30);
setEffRotateKey( spep_2+90, dashKick, 0);
setEffAlphaKey( spep_2+90, dashKick, 0);


--突進&キック
dashKick2 = entryEffectLife( spep_2+3, SP_02x, 87, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_2+3, dashKick2, -1.0, 1.0);
setEffMoveKey( spep_2+3,  dashKick2,  0,  -30);
setEffRotateKey( spep_2+3, dashKick2, 0);
setEffAlphaKey( spep_2+3, dashKick2, 0);

setEffAlphaKey( spep_2+42, dashKick2, 0);
setEffAlphaKey( spep_2+43, dashKick2, 255);
setEffAlphaKey( spep_2+44, dashKick2, 255);

setEffScaleKey( spep_2+90, dashKick2, -1.0, 1.0);
setEffMoveKey( spep_2+90,  dashKick2,  0,  -30);
setEffRotateKey( spep_2+90, dashKick2, 0);
setEffAlphaKey( spep_2+90, dashKick2, 255);


--キック命中
kickHit = entryEffectLife( spep_2+3, SP_09x, 87, 0x100, -1, 0, 0, 0);
setEffScaleKey( spep_2+3, kickHit, 1.0, 1.0);
setEffMoveKey( spep_2+3,  kickHit,  0,  -30);
setEffRotateKey( spep_2+3, kickHit, 0);
setEffAlphaKey( spep_2+3, kickHit, 255);

setEffScaleKey( spep_2+90, kickHit, 1.0, 1.0);
setEffMoveKey( spep_2+90,  kickHit,  0,  -30);
setEffRotateKey( spep_2+90, kickHit, 0);
setEffAlphaKey( spep_2+90, kickHit, 255);

playSe( spep_2, SE_17); --ダッシュ音

--蹴られヤムチャ
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2 + 44, 1, 107 );

setShakeChara(spep_2 + 44, 1, 14, 60);

setMoveKey( spep_2 + 0, 1, -360, -340 , 0 );
setMoveKey( spep_2 + 43, 1, -100, -30 , 0 );
setMoveKey( spep_2 + 44, 1, 190, -300 , 0 );
setMoveKey( spep_2 + 58, 1, 361.7, -506.6 , 0 );

setScaleKey( spep_2 + 0, 1, -2.5, 2.5 );
setScaleKey( spep_2 + 43, 1, -1.6, 1.6 );
setScaleKey( spep_2 + 44, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 58, 1, 2.12, 2.12 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 43, 1, 0 );
setRotateKey( spep_2 + 44, 1, -1.9 );
setRotateKey( spep_2 + 58, 1, -1.9 );

setDisp( spep_2 + 60, 1, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( 5, seID, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 突進&蹴りつけの続き
------------------------------------------------------

--書き文字(バキッ)
ctBaki = entryEffectLife( spep_2 + 44,  10020, 14, 0x100, -1, 0, -56.1, 277.5 );
setEffMoveKey( spep_2 + 44, ctBaki, -56.1, 277.5 , 0 );
setEffMoveKey( spep_2 + 46, ctBaki, -58.5, 284.7 , 0 );
setEffMoveKey( spep_2 + 48, ctBaki, -66.2, 286.4 , 0 );
setEffMoveKey( spep_2 + 50, ctBaki, -76.4, 280.8 , 0 );
setEffMoveKey( spep_2 + 52, ctBaki, -80.2, 279.2 , 0 );
setEffMoveKey( spep_2 + 54, ctBaki, -81.8, 283.7 , 0 );
setEffMoveKey( spep_2 + 56, ctBaki, -83.4, 288.1 , 0 );
setEffMoveKey( spep_2 + 58, ctBaki, -85, 292.6 , 0 );

setEffScaleKey( spep_2 + 44, ctBaki, 2.48, 2.48 );
setEffScaleKey( spep_2 + 46, ctBaki, 2.36, 2.36 );
setEffScaleKey( spep_2 + 48, ctBaki, 2.24, 2.24 );
setEffScaleKey( spep_2 + 50, ctBaki, 2.12, 2.12 );
setEffScaleKey( spep_2 + 52, ctBaki, 2.01, 2.01 );
setEffScaleKey( spep_2 + 54, ctBaki, 1.84, 1.84 );
setEffScaleKey( spep_2 + 56, ctBaki, 1.67, 1.67 );
setEffScaleKey( spep_2 + 58, ctBaki, 1.5, 1.5 );

setEffRotateKey( spep_2 + 44, ctBaki, -13 );
setEffRotateKey( spep_2 + 46, ctBaki, -24 );
setEffRotateKey( spep_2 + 48, ctBaki, -16 );
setEffRotateKey( spep_2 + 50, ctBaki, -24 );
setEffRotateKey( spep_2 + 52, ctBaki, -19 );
setEffRotateKey( spep_2 + 58, ctBaki, -19 );

setEffAlphaKey( spep_2 + 44, ctBaki, 255 );
setEffAlphaKey( spep_2 + 52, ctBaki, 255 );
setEffAlphaKey( spep_2 + 54, ctBaki, 170 );
setEffAlphaKey( spep_2 + 56, ctBaki, 85 );
setEffAlphaKey( spep_2 + 58, ctBaki, 0 );

playSe( spep_2+44, 1010); --バキッ

spep_3 = spep_2 + 90;

------------------------------------------------------
-- ラッシュ(280F)
------------------------------------------------------
--狼牙風風拳手前
rogafufukenA = entryEffectLife( spep_3, SP_04x, 274, 0x100, -1, 0, 0, 0);
setEffScaleKey( spep_3, rogafufukenA, 1.0, 1.0);
setEffMoveKey(  spep_3,  rogafufukenA,  0,  0);
setEffRotateKey( spep_3, rogafufukenA, 0);
setEffAlphaKey( spep_3, rogafufukenA, 255);

setEffAlphaKey( spep_3+272, rogafufukenA, 255);
setEffAlphaKey( spep_3+273, rogafufukenA, 0);

setEffScaleKey( spep_3+274, rogafufukenA, 1.0, 1.0);
setEffMoveKey(  spep_3+274,  rogafufukenA,  0,  0);
setEffRotateKey( spep_3+274, rogafufukenA, 0);
setEffAlphaKey( spep_3+274, rogafufukenA, 0);

--狼牙風風拳後ろ
rogafufukenB = entryEffectLife( spep_3, SP_05x, 274, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_3, rogafufukenB, 1.0, 1.0);
setEffMoveKey(  spep_3,  rogafufukenB,  0,  0);
setEffRotateKey( spep_3, rogafufukenB, 0);
setEffAlphaKey( spep_3, rogafufukenB, 255);

setEffAlphaKey( spep_3+272, rogafufukenB, 255);
setEffAlphaKey( spep_3+273, rogafufukenB, 0);

setEffScaleKey( spep_3+274, rogafufukenB, 1.0, 1.0);
setEffMoveKey(  spep_3+274,  rogafufukenB,  0,  0);
setEffRotateKey( spep_3+274, rogafufukenB, 0);
setEffAlphaKey( spep_3+274, rogafufukenB, 0);

--流線
ryusen = entryEffectLife( spep_3, 920, 56, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_3, ryusen, 2.1, 1.2);
setEffMoveKey(  spep_3,  ryusen,  0,  0);
setEffRotateKey( spep_3, ryusen, 0);
setEffAlphaKey( spep_3, ryusen, 255);

setEffScaleKey( spep_3+56, ryusen, 2.1, 1.2);
setEffMoveKey(  spep_3+56,  ryusen,  0,  0);
setEffRotateKey( spep_3+56, ryusen, 0);
setEffAlphaKey( spep_3+56, ryusen, 255);

--流線手前
ryusen2 = entryEffectLife( spep_3, 920, 20, 0x100,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_3, ryusen2, 2.1, 1.2);
setEffMoveKey(  spep_3,  ryusen2,  0,  0);
setEffRotateKey( spep_3, ryusen2, 0);
setEffAlphaKey( spep_3, ryusen2, 160);

setEffAlphaKey( spep_3+10, ryusen2, 160);

setEffScaleKey( spep_3+20, ryusen2, 2.1, 1.2);
setEffMoveKey(  spep_3+20,  ryusen2,  0,  0);
setEffRotateKey( spep_3+20, ryusen2, 0);
setEffAlphaKey( spep_3+20, ryusen2, 0);

--集中線
shuchusen3 = entryEffectLife( spep_3+76, 906, 188, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+76, shuchusen3, 1.8, 1.9);
setEffMoveKey(  spep_3+76,  shuchusen3,  0,  0);
setEffRotateKey( spep_3+76, shuchusen3, 0);
setEffAlphaKey( spep_3+76, shuchusen3, 255);

setEffScaleKey( spep_3+264, shuchusen3, 1.8, 1.9);
setEffMoveKey(  spep_3+264,  shuchusen3,  0,  0);
setEffRotateKey( spep_3+264, shuchusen3, 0);
setEffAlphaKey( spep_3+264, shuchusen3, 255);

--敵の動き
setDisp(spep_3-2+60, 1, 1);
setDisp(spep_3+273, 1, 0);

changeAnime( spep_3-2 + 60, 1, 108 );
changeAnime( spep_3-2 + 76, 1, 106 );
changeAnime( spep_3-2 + 84, 1, 108 );
changeAnime( spep_3-2 + 106, 1, 106 );
changeAnime( spep_3-2 + 118, 1, 108);
changeAnime( spep_3-2 + 136, 1, 106);
changeAnime( spep_3-2 + 158, 1, 108);

setMoveKey( spep_3-2 + 60, 1, -306.9, 25.3 , 0 );
setMoveKey( spep_3-2 + 62, 1, -246.8, 13.4 , 0 );
setMoveKey( spep_3-2 + 64, 1, -186.7, 1.5 , 0 );
setMoveKey( spep_3-2 + 66, 1, -126.6, -10.4 , 0 );
setMoveKey( spep_3-2 + 68, 1, -66.4, -22.3 , 0 );
setMoveKey( spep_3-2 + 70, 1, -6.3, -34.2 , 0 );
setMoveKey( spep_3-2 + 72, 1, 53.8, -46.1 , 0 );
setMoveKey( spep_3-2 + 74, 1, 130.4, -43 , 0 );
setMoveKey( spep_3-2 + 76, 1, 76.4, -55.8 , 0 );
setMoveKey( spep_3-2 + 78, 1, 113.4, -64.7 , 0 );
setMoveKey( spep_3-2 + 80, 1, 103.3, -65.3 , 0 );
setMoveKey( spep_3-2 + 82, 1, 125.6, -59 , 0 );
setMoveKey( spep_3-2 + 84, 1, 150.7, -63.2 , 0 );
setMoveKey( spep_3-2 + 86, 1, 158.4, -82.7 , 0 );
setMoveKey( spep_3-2 + 88, 1, 159.5, -60.4 , 0 );
setMoveKey( spep_3-2 + 90, 1, 160.4, -73.4 , 0 );
setMoveKey( spep_3-2 + 92, 1, 153.9, -62.7 , 0 );
setMoveKey( spep_3-2 + 94, 1, 165.6, -69.3 , 0 );
setMoveKey( spep_3-2 + 96, 1, 164.5, -67.6 , 0 );
setMoveKey( spep_3-2 + 98, 1, 163.4, -66.1 , 0 );
setMoveKey( spep_3-2 + 100, 1, 162.2, -64.6 , 0 );
setMoveKey( spep_3-2 + 102, 1, 161.1, -63.5 , 0 );
setMoveKey( spep_3-2 + 104, 1, 159.9, -62.4 , 0 );
setMoveKey( spep_3-2 + 106, 1, 103.4, -40.8 , 0 );
setMoveKey( spep_3-2 + 108, 1, 131.7, -32.5 , 0 );
setMoveKey( spep_3-2 + 110, 1, 125.3, -40.3 , 0 );
setMoveKey( spep_3-2 + 112, 1, 150, -37.6 , 0 );
setMoveKey( spep_3-2 + 114, 1, 141.2, -34.8 , 0 );
setMoveKey( spep_3-2 + 116, 1, 145.8, -38.7 , 0 );
setMoveKey( spep_3-2 + 118, 1, 140.3, -45.8 , 0 );
setMoveKey( spep_3-2 + 120, 1, 166.6, -38 , 0 );
setMoveKey( spep_3-2 + 122, 1, 152.7, -34 , 0 );
setMoveKey( spep_3-2 + 124, 1, 173.1, -26.5 , 0 );
setMoveKey( spep_3-2 + 126, 1, 159.9, -28.3 , 0 );
setMoveKey( spep_3-2 + 128, 1, 176.3, -25.5 , 0 );
setMoveKey( spep_3-2 + 130, 1, 175.1, -24.4 , 0 );
setMoveKey( spep_3-2 + 132, 1, 173.3, -23.8 , 0 );
setMoveKey( spep_3-2 + 134, 1, 170.8, -23.5 , 0 );
setMoveKey( spep_3-2 + 136, 1, 128.9, -50.5 , 0 );
setMoveKey( spep_3-2 + 138, 1, 158.1, -73 , 0 );
setMoveKey( spep_3-2 + 140, 1, 159.3, -57.2 , 0 );
setMoveKey( spep_3-2 + 142, 1, 188.4, -57 , 0 );
setMoveKey( spep_3-2 + 144, 1, 170.6, -69.8 , 0 );
setMoveKey( spep_3-2 + 146, 1, 188.2, -56.7 , 0 );
setMoveKey( spep_3-2 + 148, 1, 58.4, 66 , 0 );
setMoveKey( spep_3-2 + 150, 1, 72.7, 73 , 0 );
setMoveKey( spep_3-2 + 152, 1, 82.9, 77.9 , 0 );
setMoveKey( spep_3-2 + 154, 1, 89.1, 80.9 , 0 );
setMoveKey( spep_3-2 + 156, 1, 91.1, 81.9 , 0 );
setMoveKey( spep_3-2 + 158, 1, 85.6, 103.9 , 0 );
setMoveKey( spep_3-2 + 160, 1, 124.8, 98.1 , 0 );
setMoveKey( spep_3-2 + 162, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3-2 + 164, 1, 89.6, 110.7 , 0 );
setMoveKey( spep_3-2 + 166, 1, 129.8, 100.1 , 0 );
setMoveKey( spep_3-2 + 168, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3-2 + 170, 1, 86.1, 91.4 , 0 );
setMoveKey( spep_3-2 + 172, 1, 126.3, 104.8 , 0 );
setMoveKey( spep_3-2 + 174, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3-2 + 176, 1, 89.1, 105.8 , 0 );
setMoveKey( spep_3-2 + 178, 1, 125.6, 111.7 , 0 );
setMoveKey( spep_3-2 + 180, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3-2 + 182, 1, 94, 79.6 , 0 );
setMoveKey( spep_3-2 + 184, 1, 115.8, 109.6 , 0 );
setMoveKey( spep_3-2 + 186, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3-2 + 188, 1, 87.8, 100.4 , 0 );
setMoveKey( spep_3-2 + 190, 1, 118.9, 111.1 , 0 );
setMoveKey( spep_3-2 + 192, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3-2 + 194, 1, 93.5, 120.5 , 0 );
setMoveKey( spep_3-2 + 196, 1, 102.8, 80.3 , 0 );
setMoveKey( spep_3-2 + 198, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3-2 + 200, 1, 81.8, 102.9 , 0 );
setMoveKey( spep_3-2 + 202, 1, 126.4, 99.5 , 0 );
setMoveKey( spep_3-2 + 204, 1, 115.1, 99.1 , 0 );
setMoveKey( spep_3-2 + 206, 1, 98.8, 89.3 , 0 );
setMoveKey( spep_3-2 + 208, 1, 119.2, 104.9 , 0 );
setMoveKey( spep_3-2 + 210, 1, 114.8, 92.4 , 0 );
setMoveKey( spep_3-2 + 212, 1, 88.6, 113.2 , 0 );
setMoveKey( spep_3-2 + 214, 1, 147.3, 97.2 , 0 );
setMoveKey( spep_3-2 + 216, 1, 123.6, 95.4 , 0 );
setMoveKey( spep_3-2 + 218, 1, 133.2, 112.9 , 0 );
setMoveKey( spep_3-2 + 220, 1, 129.6, 96.4 , 0 );
setMoveKey( spep_3-2 + 222, 1, 134, 113.7 , 0 );
setMoveKey( spep_3-2 + 224, 1, 130.4, 97.2 , 0 );
setMoveKey( spep_3-2 + 226, 1, 130.8, 97.6 , 0 );
setMoveKey( spep_3-2 + 228, 1, 133.5, 104 , 0 );
setMoveKey( spep_3-2 + 230, 1, 133.8, 104.4 , 0 );
setMoveKey( spep_3-2 + 232, 1, 134.2, 104.8 , 0 );
setMoveKey( spep_3-2 + 234, 1, 134.6, 105.2 , 0 );
setMoveKey( spep_3-2 + 236, 1, 135, 105.6 , 0 );
setMoveKey( spep_3-2 + 238, 1, 8.1, 183.7 , 0 );
setMoveKey( spep_3-2 + 240, 1, 30, 99.6 , 0 );
setMoveKey( spep_3-2 + 242, 1, 34.4, 121.3 , 0 );
setMoveKey( spep_3-2 + 244, 1, 36.4, 106.6 , 0 );
setMoveKey( spep_3-2 + 246, 1, 44.3, 129 , 0 );
setMoveKey( spep_3-2 + 248, 1, 38.9, 121.4 , 0 );
setMoveKey( spep_3-2 + 250, 1, 54.2, 130.8 , 0 );
setMoveKey( spep_3-2 + 252, 1, 45.5, 127.2 , 0 );
setMoveKey( spep_3-2 + 254, 1, 52.2, 133.3 , 0 );
setMoveKey( spep_3-2 + 256, 1, 53.9, 135.2 , 0 );
setMoveKey( spep_3-2 + 258, 1, 55.2, 136.6 , 0 );
setMoveKey( spep_3-2 + 260, 1, 55.9, 137.4 , 0 );
setMoveKey( spep_3-2 + 262, 1, 56.2, 137.7 , 0 );
setMoveKey( spep_3-2 + 264, 1, 148.1, 228.7 , 0 );
setMoveKey( spep_3-2 + 266, 1, 219.6, 299.6 , 0 );
setMoveKey( spep_3-2 + 268, 1, 270.7, 350.3 , 0 );
setMoveKey( spep_3-2 + 270, 1, 301.4, 380.8 , 0 );
setMoveKey( spep_3-2 + 272, 1, 311.7, 391 , 0 );
setMoveKey( spep_3-2 + 274, 1, 311.7, 391 , 0 );

setScaleKey( spep_3-2 + 60, 1, 1, 1 );
setScaleKey( spep_3-2 + 72, 1, 1, 1 );
setScaleKey( spep_3-2 + 74, 1, 1.14, 1.14 );
setScaleKey( spep_3-2 + 76, 1, 1.38, 1.38 );
setScaleKey( spep_3-2 + 78, 1, 1.41, 1.41 );
setScaleKey( spep_3-2 + 82, 1, 1.41, 1.41 );
setScaleKey( spep_3-2 + 84, 1, 1.39, 1.39 );
setScaleKey( spep_3-2 + 92, 1, 1.39, 1.39 );
setScaleKey( spep_3-2 + 94, 1, 1.4, 1.4 );
setScaleKey( spep_3-2 + 104, 1, 1.4, 1.4 );
setScaleKey( spep_3-2 + 106, 1, 1.41, 1.41 );
setScaleKey( spep_3-2 + 116, 1, 1.41, 1.41 );
setScaleKey( spep_3-2 + 118, 1, 1.39, 1.39 );
setScaleKey( spep_3-2 + 134, 1, 1.39, 1.39 );
setScaleKey( spep_3-2 + 136, 1, 1.41, 1.41 );
setScaleKey( spep_3-2 + 146, 1, 1.41, 1.41 );
setScaleKey( spep_3-2 + 148, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 150, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 152, 1, 1.64, 1.64 );
setScaleKey( spep_3-2 + 158, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 160, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 162, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 164, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 166, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 168, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 170, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 172, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 174, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 176, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 178, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 180, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 182, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 184, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 186, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 188, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 190, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 192, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 194, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 196, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 198, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 200, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 202, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 204, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 206, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 208, 1, 1.63, 1.63 );
setScaleKey( spep_3-2 + 210, 1, 1.61, 1.61 );
setScaleKey( spep_3-2 + 212, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 236, 1, 1.65, 1.65 );
setScaleKey( spep_3-2 + 237, 1, 3.78, 3.78 );
setScaleKey( spep_3-2 + 238, 1, 1.98, 1.98 );
setScaleKey( spep_3-2 + 240, 1, 1.98, 1.98 );
setScaleKey( spep_3-2 + 242, 1, 1.84, 1.84 );
setScaleKey( spep_3-2 + 244, 1, 1.83, 1.83 );
setScaleKey( spep_3-2 + 246, 1, 1.81, 1.81 );
setScaleKey( spep_3-2 + 248, 1, 1.79, 1.79 );
setScaleKey( spep_3-2 + 250, 1, 1.78, 1.78 );
setScaleKey( spep_3-2 + 252, 1, 1.77, 1.77 );
setScaleKey( spep_3-2 + 254, 1, 1.76, 1.76 );
setScaleKey( spep_3-2 + 256, 1, 1.76, 1.76 );
setScaleKey( spep_3-2 + 258, 1, 1.75, 1.75 );
setScaleKey( spep_3-2 + 262, 1, 1.75, 1.75 );
setScaleKey( spep_3-2 + 264, 1, 1.29, 1.29 );
setScaleKey( spep_3-2 + 266, 1, 0.93, 0.93 );
setScaleKey( spep_3-2 + 268, 1, 0.67, 0.67 );
setScaleKey( spep_3-2 + 270, 1, 0.52, 0.52 );
setScaleKey( spep_3-2 + 272, 1, 0.47, 0.47 );
setScaleKey( spep_3-2 + 274, 1, 0.47, 0.47 );

setRotateKey( spep_3-2 + 60, 1, 22.2 );
setRotateKey( spep_3-2 + 62, 1, 25.7 );
setRotateKey( spep_3-2 + 64, 1, 29.3 );
setRotateKey( spep_3-2 + 66, 1, 32.9 );
setRotateKey( spep_3-2 + 68, 1, 36.5 );
setRotateKey( spep_3-2 + 70, 1, 40 );
setRotateKey( spep_3-2 + 72, 1, 43.6 );
setRotateKey( spep_3-2 + 74, 1, 47.2 );
setRotateKey( spep_3-2 + 76, 1, -32.5 );
setRotateKey( spep_3-2 + 78, 1, -24.9 );
setRotateKey( spep_3-2 + 80, 1, -20.4 );
setRotateKey( spep_3-2 + 82, 1, -18.9 );
setRotateKey( spep_3-2 + 84, 1, 3.7 );
setRotateKey( spep_3-2 + 86, 1, 3.1 );
setRotateKey( spep_3-2 + 88, 1, 2.5 );
setRotateKey( spep_3-2 + 90, 1, 2 );
setRotateKey( spep_3-2 + 92, 1, 1.6 );
setRotateKey( spep_3-2 + 94, 1, 1.2 );
setRotateKey( spep_3-2 + 96, 1, 0.9 );
setRotateKey( spep_3-2 + 98, 1, 0.7 );
setRotateKey( spep_3-2 + 100, 1, 0.5 );
setRotateKey( spep_3-2 + 102, 1, 0.4 );
setRotateKey( spep_3-2 + 104, 1, 0.4 );
setRotateKey( spep_3-2 + 106, 1, -25.5 );
setRotateKey( spep_3-2 + 108, 1, -22.4 );
setRotateKey( spep_3-2 + 110, 1, -19.9 );
setRotateKey( spep_3-2 + 112, 1, -18.2 );
setRotateKey( spep_3-2 + 114, 1, -17.1 );
setRotateKey( spep_3-2 + 116, 1, -16.8 );
setRotateKey( spep_3-2 + 118, 1, 1.8 );
setRotateKey( spep_3-2 + 120, 1, -1.8 );
setRotateKey( spep_3-2 + 122, 1, -5 );
setRotateKey( spep_3-2 + 124, 1, -7.6 );
setRotateKey( spep_3-2 + 126, 1, -9.8 );
setRotateKey( spep_3-2 + 128, 1, -11.5 );
setRotateKey( spep_3-2 + 130, 1, -12.7 );
setRotateKey( spep_3-2 + 132, 1, -13.5 );
setRotateKey( spep_3-2 + 134, 1, -13.7 );
setRotateKey( spep_3-2 + 136, 1, -25.5 );
setRotateKey( spep_3-2 + 138, 1, -23.2 );
setRotateKey( spep_3-2 + 140, 1, -21.3 );
setRotateKey( spep_3-2 + 142, 1, -20 );
setRotateKey( spep_3-2 + 144, 1, -19.3 );
setRotateKey( spep_3-2 + 146, 1, -19 );
setRotateKey( spep_3-2 + 148, 1, -36.1 );
setRotateKey( spep_3-2 + 150, 1, -34.7 );
setRotateKey( spep_3-2 + 152, 1, -33.6 );
setRotateKey( spep_3-2 + 154, 1, -33 );
setRotateKey( spep_3-2 + 156, 1, -32.8 );
setRotateKey( spep_3-2 + 158, 1, -2 );
setRotateKey( spep_3-2 + 160, 1, -3.5 );
setRotateKey( spep_3-2 + 162, 1, -5 );
setRotateKey( spep_3-2 + 164, 1, -2 );
setRotateKey( spep_3-2 + 166, 1, 0.4 );
setRotateKey( spep_3-2 + 168, 1, 2.7 );
setRotateKey( spep_3-2 + 170, 1, -2 );
setRotateKey( spep_3-2 + 172, 1, -3.5 );
setRotateKey( spep_3-2 + 174, 1, -5 );
setRotateKey( spep_3-2 + 176, 1, -2 );
setRotateKey( spep_3-2 + 178, 1, 0.4 );
setRotateKey( spep_3-2 + 180, 1, 2.7 );
setRotateKey( spep_3-2 + 182, 1, -2 );
setRotateKey( spep_3-2 + 184, 1, -3.5 );
setRotateKey( spep_3-2 + 186, 1, -5 );
setRotateKey( spep_3-2 + 188, 1, -2 );
setRotateKey( spep_3-2 + 190, 1, 0.4 );
setRotateKey( spep_3-2 + 192, 1, 2.7 );
setRotateKey( spep_3-2 + 194, 1, -2 );
setRotateKey( spep_3-2 + 196, 1, -3.5 );
setRotateKey( spep_3-2 + 198, 1, -5 );
setRotateKey( spep_3-2 + 200, 1, -2 );
setRotateKey( spep_3-2 + 202, 1, 0.4 );
setRotateKey( spep_3-2 + 204, 1, 2.7 );
setRotateKey( spep_3-2 + 206, 1, -2 );
setRotateKey( spep_3-2 + 208, 1, -3.5 );
setRotateKey( spep_3-2 + 210, 1, -5 );
setRotateKey( spep_3-2 + 212, 1, -2 );
setRotateKey( spep_3-2 + 214, 1, 4.7 );
setRotateKey( spep_3-2 + 216, 1, 4.6 );
setRotateKey( spep_3-2 + 218, 1, 4.5 );
setRotateKey( spep_3-2 + 236, 1, 4.5 );
setRotateKey( spep_3-2 + 238, 1, 0 );
setRotateKey( spep_3-2 + 262, 1, 0 );
setRotateKey( spep_3-2 + 264, 1, 4.1 );
setRotateKey( spep_3-2 + 266, 1, 7.4 );
setRotateKey( spep_3-2 + 268, 1, 9.7 );
setRotateKey( spep_3-2 + 270, 1, 11 );
setRotateKey( spep_3-2 + 272, 1, 11.5 );
setRotateKey( spep_3-2 + 274, 1, 11.5 );

--文字エントリー
ctzan = entryEffectLife( spep_3 + 72,  10010, 16, 0x100, -1, 0, -42.4, 107.5 );--ザンッ

setEffMoveKey( spep_3 + 72, ctzan, -42.4, 107.5 , 0 );
setEffMoveKey( spep_3 + 78, ctzan, -55.5, 133.6 , 0 );
setEffMoveKey( spep_3 + 80, ctzan, -52.8, 144.3 , 0 );
setEffMoveKey( spep_3 + 82, ctzan, -59.4, 144.7 , 0 );
setEffMoveKey( spep_3 + 84, ctzan, -49.9, 149.7 , 0 );
setEffMoveKey( spep_3 + 86, ctzan, -54.5, 150.6 , 0 );
setEffMoveKey( spep_3 + 88, ctzan, -60.8, 148.8 , 0 );
setEffMoveKey( spep_3 + 90, ctzan, -60.8, 148.8 , 0 );

setEffScaleKey( spep_3 + 72, ctzan, 0.82, 0.82 );
setEffScaleKey( spep_3 + 78, ctzan, 1.19, 1.19 );
setEffScaleKey( spep_3 + 80, ctzan, 1.31, 1.31 );
setEffScaleKey( spep_3 + 82, ctzan, 1.34, 1.34 );
setEffScaleKey( spep_3 + 84, ctzan, 1.37, 1.37 );
setEffScaleKey( spep_3 + 86, ctzan, 1.39, 1.39 );
setEffScaleKey( spep_3 + 90, ctzan, 1.39, 1.39 );

setEffRotateKey( spep_3 + 72, ctzan, -17.5 );
setEffRotateKey( spep_3 + 90, ctzan, -17.5 );

setEffAlphaKey( spep_3 + 72, ctzan, 0 );
setEffAlphaKey( spep_3 + 73, ctzan, 255 );
setEffAlphaKey( spep_3 + 74, ctzan, 255 );
setEffAlphaKey( spep_3 + 86, ctzan, 255 );
setEffAlphaKey( spep_3 + 88, ctzan, 128 );
setEffAlphaKey( spep_3 + 90, ctzan, 0 );


--書き文字(ガッ)
ctGa = entryEffectLife( spep_3 + 80,  10005, 18, 0x100, -1, 0, 177.2, 177.7 );--ガッ

setEffMoveKey( spep_3 + 80, ctGa, 177.2, 177.7 , 0 );
setEffMoveKey( spep_3 + 86, ctGa, 169.8, 199.1 , 0 );
setEffMoveKey( spep_3 + 88, ctGa, 173.9, 205.5 , 0 );
setEffMoveKey( spep_3 + 90, ctGa, 167.6, 211.6 , 0 );
setEffMoveKey( spep_3 + 92, ctGa, 176.7, 211.7 , 0 );
setEffMoveKey( spep_3 + 94, ctGa, 172.8, 215.5 , 0 );
setEffMoveKey( spep_3 + 96, ctGa, 166.5, 217.7 , 0 );
setEffMoveKey( spep_3 + 98, ctGa, 166.3, 218.3 , 0 );

setEffScaleKey( spep_3 + 80, ctGa, 1.03, 1.03 );
setEffScaleKey( spep_3 + 86, ctGa, 1.34, 1.34 );
setEffScaleKey( spep_3 + 88, ctGa, 1.45, 1.45 );
setEffScaleKey( spep_3 + 90, ctGa, 1.53, 1.53 );
setEffScaleKey( spep_3 + 92, ctGa, 1.58, 1.58 );
setEffScaleKey( spep_3 + 94, ctGa, 1.6, 1.6 );
setEffScaleKey( spep_3 + 96, ctGa, 1.63, 1.63 );
setEffScaleKey( spep_3 + 98, ctGa, 1.64, 1.64 );

setEffRotateKey( spep_3 + 80, ctGa, 13.7 );
setEffRotateKey( spep_3 + 98, ctGa, 13.7 );

setEffAlphaKey( spep_3 + 80, ctGa, 0 );
setEffAlphaKey( spep_3 + 81, ctGa, 255 );
setEffAlphaKey( spep_3 + 82, ctGa, 255 );
setEffAlphaKey( spep_3 + 94, ctGa, 255 );
setEffAlphaKey( spep_3 + 96, ctGa, 64 );
setEffAlphaKey( spep_3 + 98, ctGa, 0 );


--書き文字(バキッ)
ctBaki2 = entryEffectLife( spep_3 + 102,  10020, 14, 0x100, -1, 0, 131.9, 298.8 );--バキッ

setEffMoveKey( spep_3 + 102, ctBaki2, 131.9, 298.8 , 0 );
setEffMoveKey( spep_3 + 104, ctBaki2, 130.2, 310 , 0 );
setEffMoveKey( spep_3 + 106, ctBaki2, 131.8, 309.7 , 0 );
setEffMoveKey( spep_3 + 108, ctBaki2, 129.9, 322.7 , 0 );
setEffMoveKey( spep_3 + 110, ctBaki2, 131.8, 318.3 , 0 );
setEffMoveKey( spep_3 + 112, ctBaki2, 131.6, 327.2 , 0 );
setEffMoveKey( spep_3 + 114, ctBaki2, 139.9, 334.8 , 0 );
setEffMoveKey( spep_3 + 116, ctBaki2, 143.3, 336.2 , 0 );

setEffScaleKey( spep_3 + 102, ctBaki2, 1.25, 1.25 );
setEffScaleKey( spep_3 + 104, ctBaki2, 1.32, 1.32 );
setEffScaleKey( spep_3 + 106, ctBaki2, 1.35, 1.35 );
setEffScaleKey( spep_3 + 108, ctBaki2, 1.43, 1.43 );
setEffScaleKey( spep_3 + 110, ctBaki2, 1.49, 1.49 );
setEffScaleKey( spep_3 + 112, ctBaki2, 1.5, 1.5 );
setEffScaleKey( spep_3 + 114, ctBaki2, 1.7, 1.7 );
setEffScaleKey( spep_3 + 116, ctBaki2, 1.76, 1.76 );

setEffRotateKey( spep_3 + 102, ctBaki2, 32.7 );
setEffRotateKey( spep_3 + 116, ctBaki2, 32.7 );

setEffAlphaKey( spep_3 + 102, ctBaki2, 0 );
setEffAlphaKey( spep_3 + 103, ctBaki2, 255 );
setEffAlphaKey( spep_3 + 104, ctBaki2, 255 );
setEffAlphaKey( spep_3 + 110, ctBaki2, 255 );
setEffAlphaKey( spep_3 + 112, ctBaki2, 64 );
setEffAlphaKey( spep_3 + 116, ctBaki2, 0 );


--書き文字(ドンッ)
ctDon = entryEffectLife( spep_3 + 114,  10019, 16, 0x100, -1, 0, 95.3, 206.9 );--ドンッ

setEffMoveKey( spep_3 + 114, ctDon, 95.3, 206.9 , 0 );
setEffMoveKey( spep_3 + 120, ctDon, 72.8, 232.9 , 0 );
setEffMoveKey( spep_3 + 122, ctDon, 71, 255.3 , 0 );
setEffMoveKey( spep_3 + 124, ctDon, 62, 265 , 0 );
setEffMoveKey( spep_3 + 126, ctDon, 62, 257.9 , 0 );
setEffMoveKey( spep_3 + 128, ctDon, 68.5, 266.5 , 0 );
setEffMoveKey( spep_3 + 130, ctDon, 68.5, 267.4 , 0 );

setEffScaleKey( spep_3 + 114, ctDon, 1.29, 1.29 );
setEffScaleKey( spep_3 + 120, ctDon, 1.63, 1.63 );
setEffScaleKey( spep_3 + 122, ctDon, 1.98, 1.98 );
setEffScaleKey( spep_3 + 124, ctDon, 2.01, 2.01 );
setEffScaleKey( spep_3 + 126, ctDon, 2.04, 2.04 );
setEffScaleKey( spep_3 + 128, ctDon, 2.05, 2.05 );
setEffScaleKey( spep_3 + 130, ctDon, 2.07, 2.07 );

setEffRotateKey( spep_3 + 114, ctDon, -0.3 );
setEffRotateKey( spep_3 + 120, ctDon, 0.3 );
setEffRotateKey( spep_3 + 122, ctDon, 0.8 );
setEffRotateKey( spep_3 + 130, ctDon, 0.8 );

setEffAlphaKey( spep_3 + 114, ctDon, 0 );
setEffAlphaKey( spep_3 + 115, ctDon, 255 );
setEffAlphaKey( spep_3 + 116, ctDon, 255 );
setEffAlphaKey( spep_3 + 126, ctDon, 255 );
setEffAlphaKey( spep_3 + 128, ctDon, 128 );
setEffAlphaKey( spep_3 + 130, ctDon, 0 );


--書き文字(バキッ)
ctBaki3 = entryEffectLife( spep_3-4 + 136,  10020, 14, 0x100, -1, 0, 54.5, 217.2 );--バキ

setEffMoveKey( spep_3-4 + 136, ctBaki3, 54.5, 217.2 , 0 );
setEffMoveKey( spep_3-4 + 138, ctBaki3, 46.5, 225.2 , 0 );
setEffMoveKey( spep_3-4 + 140, ctBaki3, 48, 225.9 , 0 );
setEffMoveKey( spep_3-4 + 142, ctBaki3, 36.5, 238 , 0 );
setEffMoveKey( spep_3-4 + 144, ctBaki3, 37.3, 239.9 , 0 );
setEffMoveKey( spep_3-4 + 146, ctBaki3, 39.4, 251 , 0 );
setEffMoveKey( spep_3-4 + 150, ctBaki3, 41.3, 254.2 , 0 );

setEffScaleKey( spep_3-4 + 136, ctBaki3, 1.25, 1.25 );
setEffScaleKey( spep_3-4 + 138, ctBaki3, 1.32, 1.32 );
setEffScaleKey( spep_3-4 + 140, ctBaki3, 1.35, 1.35 );
setEffScaleKey( spep_3-4 + 142, ctBaki3, 1.46, 1.46 );
setEffScaleKey( spep_3-4 + 144, ctBaki3, 1.5, 1.5 );
setEffScaleKey( spep_3-4 + 146, ctBaki3, 1.7, 1.7 );
setEffScaleKey( spep_3-4 + 150, ctBaki3, 1.76, 1.76 )

setEffRotateKey( spep_3-4 + 136, ctBaki3, -4 );
setEffRotateKey( spep_3-4 + 150, ctBaki3, -4 );

setEffAlphaKey( spep_3-4 + 136, ctBaki3, 255 );
setEffAlphaKey( spep_3-4 + 144, ctBaki3, 255 );
setEffAlphaKey( spep_3-4 + 146, ctBaki3, 64 );
setEffAlphaKey( spep_3-4 + 149, ctBaki3, 0 );
setEffAlphaKey( spep_3-4 + 150, ctBaki3, 0 );


--書き文字(ガッ)
ctGa3 = entryEffectLife( spep_3 + 154,  10005, 14, 0x100, -1, 0, 55.9, 297.7 );--ガッ

setEffMoveKey( spep_3 + 154, ctGa3, 55.9, 297.7 , 0 );
setEffMoveKey( spep_3 + 160, ctGa3, 43.4, 314.2 , 0 );
setEffMoveKey( spep_3 + 162, ctGa3, 36.3, 316.9 , 0 );
setEffMoveKey( spep_3 + 164, ctGa3, 39.1, 320.2 , 0 );
setEffMoveKey( spep_3 + 166, ctGa3, 34.3, 319.3 , 0 );
setEffMoveKey( spep_3 + 168, ctGa3, 34, 319.6 , 0 );

setEffScaleKey( spep_3 + 154, ctGa3, 0.76, 0.76 );
setEffScaleKey( spep_3 + 160, ctGa3, 1.07, 1.07 );
setEffScaleKey( spep_3 + 162, ctGa3, 1.15, 1.15 );
setEffScaleKey( spep_3 + 164, ctGa3, 1.18, 1.18 );
setEffScaleKey( spep_3 + 166, ctGa3, 1.2, 1.2 );
setEffScaleKey( spep_3 + 168, ctGa3, 1.21, 1.21 );

setEffRotateKey( spep_3 + 154, ctGa3, -16.3 );
setEffRotateKey( spep_3 + 168, ctGa3, -16.3 );

setEffAlphaKey( spep_3 + 154, ctGa3, 0 );
setEffAlphaKey( spep_3 + 155, ctGa3, 255 );
setEffAlphaKey( spep_3 + 156, ctGa3, 255 );
setEffAlphaKey( spep_3 + 164, ctGa3, 255 );
setEffAlphaKey( spep_3 + 166, ctGa3, 64 );
setEffAlphaKey( spep_3 + 168, ctGa3, 0 );


--書き文字(ガッ)
ctGa4 = entryEffectLife( spep_3-4 + 164,  10005, 10, 0x100, -1, 0, 216.4, 236 );--ガッ

setEffMoveKey( spep_3-4 + 164, ctGa4, 216.4, 236 , 0 );
setEffMoveKey( spep_3-4 + 166, ctGa4, 218.9, 256.5 , 0 );
setEffMoveKey( spep_3-4 + 168, ctGa4, 215.6, 263.4 , 0 );
setEffMoveKey( spep_3-4 + 170, ctGa4, 219.9, 263.8 , 0 );
setEffMoveKey( spep_3-4 + 172, ctGa4, 215.9, 266.5 , 0 );
setEffMoveKey( spep_3-4 + 174, ctGa4, 215.9, 267 , 0 );

setEffScaleKey( spep_3-4 + 164, ctGa4, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 166, ctGa4, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 168, ctGa4, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 170, ctGa4, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 172, ctGa4, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 174, ctGa4, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 164, ctGa4, 27.7 );
setEffRotateKey( spep_3-4 + 174, ctGa4, 27.7 );

setEffAlphaKey( spep_3-4 + 164, ctGa4, 0 );
setEffAlphaKey( spep_3-4 + 165, ctGa4, 255 );
setEffAlphaKey( spep_3-4 + 166, ctGa4, 255 );
setEffAlphaKey( spep_3-4 + 170, ctGa4, 255 );
setEffAlphaKey( spep_3-4 + 172, ctGa4, 64 );
setEffAlphaKey( spep_3-4 + 174, ctGa4, 0 );


--書き文字(バキッ)
ctBaki4 = entryEffectLife( spep_3-4 + 170,  10020, 10, 0x100, -1, 0, 168.5, 380.9 );--バキッ

setEffMoveKey( spep_3-4 + 170, ctBaki4, 168.5, 380.9 , 0 );
setEffMoveKey( spep_3-4 + 172, ctBaki4, 167.6, 388.8 , 0 );
setEffMoveKey( spep_3-4 + 174, ctBaki4, 164.7, 400.6 , 0 );
setEffMoveKey( spep_3-4 + 176, ctBaki4, 165.9, 401.5 , 0 );
setEffMoveKey( spep_3-4 + 178, ctBaki4, 171.3, 407.7 , 0 );
setEffMoveKey( spep_3-4 + 180, ctBaki4, 173.6, 409 , 0 );

setEffScaleKey( spep_3-4 + 170, ctBaki4, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 172, ctBaki4, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 174, ctBaki4, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 176, ctBaki4, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 178, ctBaki4, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 180, ctBaki4, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 170, ctBaki4, 26 );
setEffRotateKey( spep_3-4 + 180, ctBaki4, 26 );

setEffAlphaKey( spep_3-4 + 170, ctBaki4, 0 );
setEffAlphaKey( spep_3-4 + 171, ctBaki4, 255 );
setEffAlphaKey( spep_3-4 + 172, ctBaki4, 255 );
setEffAlphaKey( spep_3-4 + 176, ctBaki4, 255 );
setEffAlphaKey( spep_3-4 + 178, ctBaki4, 64 );
setEffAlphaKey( spep_3-4 + 180, ctBaki4, 0 );


--書き文字(ガッ)
ctGa5 = entryEffectLife( spep_3-4 + 176,  10005, 10, 0x100, -1, 0, 55.9, 297.7 );--ガッ

setEffMoveKey( spep_3-4 + 176, ctGa5, 55.9, 297.7 , 0 );
setEffMoveKey( spep_3-4 + 178, ctGa5, 43.4, 314.2 , 0 );
setEffMoveKey( spep_3-4 + 180, ctGa5, 36.3, 316.9 , 0 );
setEffMoveKey( spep_3-4 + 182, ctGa5, 39.1, 320.2 , 0 );
setEffMoveKey( spep_3-4 + 184, ctGa5, 34.3, 319.3 , 0 );
setEffMoveKey( spep_3-4 + 186, ctGa5, 34, 319.6 , 0 );

setEffScaleKey( spep_3-4 + 176, ctGa5, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 178, ctGa5, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 180, ctGa5, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 182, ctGa5, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 184, ctGa5, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 186, ctGa5, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 176, ctGa5, -16.3 );
setEffRotateKey( spep_3-4 + 186, ctGa5, -16.3 );

setEffAlphaKey( spep_3-4 + 176, ctGa5, 0 );
setEffAlphaKey( spep_3-4 + 177, ctGa5, 255 );
setEffAlphaKey( spep_3-4 + 178, ctGa5, 255 );
setEffAlphaKey( spep_3-4 + 182, ctGa5, 255 );
setEffAlphaKey( spep_3-4 + 184, ctGa5, 64 );
setEffAlphaKey( spep_3-4 + 186, ctGa5, 0 );


--書き文字(バキッ)
ctBaki5 = entryEffectLife( spep_3-4 + 182,  10020, 10, 0x100, -1, 0, 224.1, 296.7 );--バキッ

setEffMoveKey( spep_3-4 + 182, ctBaki5, 224.1, 296.7 , 0 );
setEffMoveKey( spep_3-4 + 184, ctBaki5, 224.6, 304.6 , 0 );
setEffMoveKey( spep_3-4 + 186, ctBaki5, 223.9, 316.7 , 0 );
setEffMoveKey( spep_3-4 + 188, ctBaki5, 225.3, 317.4 , 0 );
setEffMoveKey( spep_3-4 + 190, ctBaki5, 231.6, 322.5 , 0 );
setEffMoveKey( spep_3-4 + 192, ctBaki5, 234.1, 323.4 , 0 );

setEffScaleKey( spep_3-4 + 182, ctBaki5, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 184, ctBaki5, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 186, ctBaki5, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 188, ctBaki5, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 190, ctBaki5, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 192, ctBaki5, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 182, ctBaki5, 36.4 );
setEffRotateKey( spep_3-4 + 192, ctBaki5, 36.4 );

setEffAlphaKey( spep_3-4 + 182, ctBaki5, 0 );
setEffAlphaKey( spep_3-4 + 183, ctBaki5, 255 );
setEffAlphaKey( spep_3-4 + 184, ctBaki5, 255 );
setEffAlphaKey( spep_3-4 + 188, ctBaki5, 255 );
setEffAlphaKey( spep_3-4 + 190, ctBaki5, 64 );
setEffAlphaKey( spep_3-4 + 192, ctBaki5, 0 );


--書き文字(ガッ)
ctGa6 = entryEffectLife( spep_3-4 + 188,  10005, 10, 0x100, -1, 0, 216.4, 236 );--ガッ

setEffMoveKey( spep_3-4 + 188, ctGa6, 216.4, 236 , 0 );
setEffMoveKey( spep_3-4 + 190, ctGa6, 218.9, 256.5 , 0 );
setEffMoveKey( spep_3-4 + 192, ctGa6, 215.6, 263.4 , 0 );
setEffMoveKey( spep_3-4 + 194, ctGa6, 219.9, 263.8 , 0 );
setEffMoveKey( spep_3-4 + 196, ctGa6, 215.9, 266.5 , 0 );
setEffMoveKey( spep_3-4 + 198, ctGa6, 215.9, 267 , 0 );

setEffScaleKey( spep_3-4 + 188, ctGa6, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 190, ctGa6, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 192, ctGa6, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 194, ctGa6, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 196, ctGa6, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 198, ctGa6, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 188, ctGa6, 27.7 );
setEffRotateKey( spep_3-4 + 198, ctGa6, 27.7 );

setEffAlphaKey( spep_3-4 + 188, ctGa6, 0 );
setEffAlphaKey( spep_3-4 + 189, ctGa6, 255 );
setEffAlphaKey( spep_3-4 + 190, ctGa6, 255 );
setEffAlphaKey( spep_3-4 + 194, ctGa6, 255 );
setEffAlphaKey( spep_3-4 + 196, ctGa6, 64 );
setEffAlphaKey( spep_3-4 + 198, ctGa6, 0 );


--書き文字(バキッ)
ctBaki6 = entryEffectLife( spep_3-4 + 194,  10020, 10, 0x100, -1, 0, 168.5, 380.9 );--バキッ

setEffMoveKey( spep_3-4 + 194, ctBaki6, 168.5, 380.9 , 0 );
setEffMoveKey( spep_3-4 + 196, ctBaki6, 167.6, 388.8 , 0 );
setEffMoveKey( spep_3-4 + 198, ctBaki6, 164.7, 400.6 , 0 );
setEffMoveKey( spep_3-4 + 200, ctBaki6, 165.9, 401.5 , 0 );
setEffMoveKey( spep_3-4 + 202, ctBaki6, 171.3, 407.7 , 0 );
setEffMoveKey( spep_3-4 + 204, ctBaki6, 173.6, 409 , 0 );

setEffScaleKey( spep_3-4 + 194, ctBaki6, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 196, ctBaki6, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 198, ctBaki6, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 200, ctBaki6, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 202, ctBaki6, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 204, ctBaki6, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 194, ctBaki6, 26 );
setEffRotateKey( spep_3-4 + 204, ctBaki6, 26 );

setEffAlphaKey( spep_3-4 + 194, ctBaki6, 0 );
setEffAlphaKey( spep_3-4 + 195, ctBaki6, 255 );
setEffAlphaKey( spep_3-4 + 196, ctBaki6, 255 );
setEffAlphaKey( spep_3-4 + 200, ctBaki6, 255 );
setEffAlphaKey( spep_3-4 + 202, ctBaki6, 64 );
setEffAlphaKey( spep_3-4 + 204, ctBaki6, 0 );


--書き文字(ガッ)
ctGa7 = entryEffectLife( spep_3-4 + 200,  10005, 10, 0x100, -1, 0, 55.9, 297.7 );--ガッ

setEffMoveKey( spep_3-4 + 200, ctGa7, 55.9, 297.7 , 0 );
setEffMoveKey( spep_3-4 + 202, ctGa7, 43.4, 314.2 , 0 );
setEffMoveKey( spep_3-4 + 204, ctGa7, 36.3, 316.9 , 0 );
setEffMoveKey( spep_3-4 + 206, ctGa7, 39.1, 320.2 , 0 );
setEffMoveKey( spep_3-4 + 208, ctGa7, 34.3, 319.3 , 0 );
setEffMoveKey( spep_3-4 + 210, ctGa7, 34, 319.6 , 0 );

setEffScaleKey( spep_3-4 + 200, ctGa7, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 202, ctGa7, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 204, ctGa7, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 206, ctGa7, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 208, ctGa7, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 210, ctGa7, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 200, ctGa7, -16.3 );
setEffRotateKey( spep_3-4 + 210, ctGa7, -16.3 );

setEffAlphaKey( spep_3-4 + 200, ctGa7, 0 );
setEffAlphaKey( spep_3-4 + 201, ctGa7, 255 );
setEffAlphaKey( spep_3-4 + 202, ctGa7, 255 );
setEffAlphaKey( spep_3-4 + 206, ctGa7, 255 );
setEffAlphaKey( spep_3-4 + 208, ctGa7, 64 );
setEffAlphaKey( spep_3-4 + 210, ctGa7, 0 );


--書き文字(バキッ)
ctBaki7 = entryEffectLife( spep_3-4 + 206,  10020, 10, 0x100, -1, 0, 224.1, 296.7 );--バキッ

setEffMoveKey( spep_3-4 + 206, ctBaki7, 224.1, 296.7 , 0 );
setEffMoveKey( spep_3-4 + 208, ctBaki7, 224.6, 304.6 , 0 );
setEffMoveKey( spep_3-4 + 210, ctBaki7, 223.9, 316.7 , 0 );
setEffMoveKey( spep_3-4 + 212, ctBaki7, 225.3, 317.4 , 0 );
setEffMoveKey( spep_3-4 + 214, ctBaki7, 231.6, 322.5 , 0 );
setEffMoveKey( spep_3-4 + 216, ctBaki7, 234.1, 323.4 , 0 );

setEffScaleKey( spep_3-4 + 206, ctBaki7, 0.91, 0.91 );
setEffScaleKey( spep_3-4 + 208, ctBaki7, 0.98, 0.98 );
setEffScaleKey( spep_3-4 + 210, ctBaki7, 1.06, 1.06 );
setEffScaleKey( spep_3-4 + 212, ctBaki7, 1.09, 1.09 );
setEffScaleKey( spep_3-4 + 214, ctBaki7, 1.23, 1.23 );
setEffScaleKey( spep_3-4 + 216, ctBaki7, 1.28, 1.28 );

setEffRotateKey( spep_3-4 + 206, ctBaki7, 36.4 );
setEffRotateKey( spep_3-4 + 216, ctBaki7, 36.4 );

setEffAlphaKey( spep_3-4 + 206, ctBaki7, 0 );
setEffAlphaKey( spep_3-4 + 207, ctBaki7, 255 );
setEffAlphaKey( spep_3-4 + 208, ctBaki7, 255 );
setEffAlphaKey( spep_3-4 + 212, ctBaki7, 255 );
setEffAlphaKey( spep_3-4 + 214, ctBaki7, 64 );
setEffAlphaKey( spep_3-4 + 216, ctBaki7, 0 );


--書き文字(ガッ)
ctGa8 = entryEffectLife( spep_3-4 + 212,  10005, 12, 0x100, -1, 0, 216.4, 236 );--ガッ

setEffMoveKey( spep_3-4 + 212, ctGa8, 216.4, 236 , 0 );
setEffMoveKey( spep_3-4 + 214, ctGa8, 218.9, 256.5 , 0 );
setEffMoveKey( spep_3-4 + 216, ctGa8, 215.6, 263.4 , 0 );
setEffMoveKey( spep_3-4 + 218, ctGa8, 219.9, 263.8 , 0 );
setEffMoveKey( spep_3-4 + 220, ctGa8, 215.9, 266.5 , 0 );
setEffMoveKey( spep_3-4 + 224, ctGa8, 215.9, 267 , 0 );

setEffScaleKey( spep_3-4 + 212, ctGa8, 0.76, 0.76 );
setEffScaleKey( spep_3-4 + 214, ctGa8, 1.07, 1.07 );
setEffScaleKey( spep_3-4 + 216, ctGa8, 1.15, 1.15 );
setEffScaleKey( spep_3-4 + 218, ctGa8, 1.18, 1.18 );
setEffScaleKey( spep_3-4 + 220, ctGa8, 1.2, 1.2 );
setEffScaleKey( spep_3-4 + 224, ctGa8, 1.21, 1.21 );

setEffRotateKey( spep_3-4 + 212, ctGa8, 27.7 );
setEffRotateKey( spep_3-4 + 224, ctGa8, 27.7 );

setEffAlphaKey( spep_3-4 + 212, ctGa8, 0 );
setEffAlphaKey( spep_3-4 + 213, ctGa8, 255 );
setEffAlphaKey( spep_3-4 + 214, ctGa8, 255 );
setEffAlphaKey( spep_3-4 + 218, ctGa8, 255 );
setEffAlphaKey( spep_3-4 + 220, ctGa8, 64 );
setEffAlphaKey( spep_3-4 + 223, ctGa8, 0 );
setEffAlphaKey( spep_3-4 + 224, ctGa8, 0 );


--書き文字(バキッ)
ctBaki8 = entryEffectLife( spep_3-4 + 239,  10020, 13, 0x100, -1, 0, -125.8, 386.9 );
setEffMoveKey( spep_3-4 + 239, ctBaki8, -125.8, 386.9 , 0 );
setEffMoveKey( spep_3-4 + 240, ctBaki8, -125.8, 386.9 , 0 );
setEffMoveKey( spep_3-4 + 241, ctBaki8, -139.4, 397 , 0 );
setEffMoveKey( spep_3-4 + 242, ctBaki8, -137.1, 398.5 , 0 );
setEffMoveKey( spep_3-4 + 244, ctBaki8, -153.2, 410.7 , 0 );
setEffMoveKey( spep_3-4 + 246, ctBaki8, -146.2, 408.1 , 0 );
setEffMoveKey( spep_3-4 + 248, ctBaki8, -156.2, 417.7 , 0 );
setEffMoveKey( spep_3-4 + 250, ctBaki8, -155.4, 434.8 , 0 );
setEffMoveKey( spep_3-4 + 252, ctBaki8, -153.2, 439.9 , 0 );

setEffScaleKey( spep_3-4 + 239, ctBaki8, 1.94, 1.94 );
setEffScaleKey( spep_3-4 + 240, ctBaki8, 1.94, 1.94 );
setEffScaleKey( spep_3-4 + 241, ctBaki8, 2.05, 2.05 );
setEffScaleKey( spep_3-4 + 242, ctBaki8, 2.08, 2.08 );
setEffScaleKey( spep_3-4 + 244, ctBaki8, 2.21, 2.21 );
setEffScaleKey( spep_3-4 + 246, ctBaki8, 2.29, 2.29 );
setEffScaleKey( spep_3-4 + 248, ctBaki8, 2.32, 2.32 );
setEffScaleKey( spep_3-4 + 250, ctBaki8, 2.62, 2.62 );
setEffScaleKey( spep_3-4 + 252, ctBaki8, 2.72, 2.72 );

setEffRotateKey( spep_3-4 + 239, ctBaki8, -11.8 );
setEffRotateKey( spep_3-4 + 240, ctBaki8, -11.8 );
setEffRotateKey( spep_3-4 + 252, ctBaki8, -11.8 );

setEffAlphaKey( spep_3-4 + 239, ctBaki8, 255 );
setEffAlphaKey( spep_3-4 + 240, ctBaki8, 255 );
setEffAlphaKey( spep_3-4 + 248, ctBaki8, 255 );
setEffAlphaKey( spep_3-4 + 250, ctBaki8, 64 );
setEffAlphaKey( spep_3-4 + 252, ctBaki8, 0 );


--se
playSe( spep_3, SE_04); --突進
playSe( spep_3+72, 1011); --ザン
playSe( spep_3+80, 1010); --ガッ
playSe( spep_3+102, 1009); --バキッ
playSe( spep_3+114, 1010); --ドンッ
playSe( spep_3+132, 1011); --バキッ
playSe( spep_3+154, 1001); --ガッ
playSe( spep_3-4+166, 1000); --ガッ
playSe( spep_3-4+170, 1009); --バキッ
playSe( spep_3-4+176, 1001); --ガッ
playSe( spep_3-4+182, 1010); --バキッ
playSe( spep_3-4+188, 1009); --ガッ
playSe( spep_3-4+194, 1010); --バキッ
playSe( spep_3-4+200, 1009); --ガッ
playSe( spep_3-4+206, 1010); --バキッ
playSe( spep_3-4+212, 1009); --ガッ
playSe( spep_3-4+238, 1011); --ガッ

spep_4 = spep_3 + 273;

------------------------------------------------------
-- ガッ(110F)
------------------------------------------------------
--背景
finishBack = entryEffectLife( spep_4, SP_08x, 110, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_4, finishBack, 1.0, 1.0);
setEffMoveKey(  spep_4,  finishBack,  0,  0);
setEffRotateKey( spep_4, finishBack, 0);
setEffAlphaKey( spep_4, finishBack, 255);

setEffScaleKey( spep_4+110, finishBack, 1.0, 1.0);
setEffMoveKey(  spep_4+110,  finishBack,  0,  0);
setEffRotateKey( spep_4+110, finishBack, 0);
setEffAlphaKey( spep_4+110, finishBack, 255);

--吹き飛ばしヤムチャ
finish = entryEffect( spep_4, SP_06x, 0x80, -1, 0, 0, 0);
setEffScaleKey( spep_4, finish, -1.0, 1.0);
setEffMoveKey(  spep_4,  finish,  0,  0);
setEffRotateKey( spep_4, finish, 0);
setEffAlphaKey( spep_4, finish, 255);

setEffScaleKey( spep_4+110, finish, -1.0, 1.0);
setEffMoveKey(  spep_4+110,  finish,  0,  0);
setEffRotateKey( spep_4+110, finish, 0);
setEffAlphaKey( spep_4+110, finish, 255);

--吹っ飛びヤムチャ--
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -24.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -61.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -91.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -135.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -182.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -260.1 , 0 );
setMoveKey( spep_4 + 110, 1, -1.9, -260.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 110, 1, 1080 );

--爆発エフェクト
--entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
--laySe( spep_4, SE_10);

setDamage( spep_4 +16, 1, 0);  -- ダメージ振動等

--集中線（黒）
shuchusenBlack = entryEffectLife( spep_4+14, 1657, 96, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+14, shuchusenBlack, 1.3, 1.0);
setEffMoveKey(  spep_4+14,  shuchusenBlack,  0,  0);
setEffRotateKey( spep_4+14, shuchusenBlack, 0);
setEffAlphaKey( spep_4+14, shuchusenBlack, 255);

setEffScaleKey( spep_4+110, shuchusenBlack, 1.3, 1.0);
setEffMoveKey(  spep_4+110,  shuchusenBlack,  0,  0);
setEffRotateKey( spep_4+110, shuchusenBlack, 0);
setEffAlphaKey( spep_4+110, shuchusenBlack, 255);

--集中線（白）
shuchusen4 = entryEffectLife( spep_4+14, 906, 96, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+14, shuchusen4, 1.8, 1.9);
setEffMoveKey(  spep_4+14,  shuchusen4,  0,  0);
setEffRotateKey( spep_4+14, shuchusen4, 0);
setEffAlphaKey( spep_4+14, shuchusen4, 255);

setEffScaleKey( spep_4+110, shuchusen4, 1.8, 1.9);
setEffMoveKey(  spep_4+110,  shuchusen4,  0,  0);
setEffRotateKey( spep_4+110, shuchusen4, 0);
setEffAlphaKey( spep_4+110, shuchusen4, 255);

--書き文字--
ctGa9 = entryEffectLife( spep_4 + 14,  10005, 96, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctGa9, 30, 10);

setEffMoveKey( spep_4 + 14, ctGa9, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 16, ctGa9, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 18, ctGa9, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 20, ctGa9, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 22, ctGa9, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 24, ctGa9, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 26, ctGa9, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctGa9, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 30, ctGa9, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 110, ctGa9, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctGa9, 2, 2 );
setEffScaleKey( spep_4+16, ctGa9, 2.0, 2.0);
setEffScaleKey( spep_4+17, ctGa9, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctGa9, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctGa9, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctGa9, 3.8, 3.8);
setEffScaleKey( spep_4+110, ctGa9, 3.8, 3.8);

setEffRotateKey( spep_4 + 14, ctGa9, -40 );
setEffRotateKey( spep_4 + 16, ctGa9, -31 );
setEffRotateKey( spep_4 + 18, ctGa9, -40 );
setEffRotateKey( spep_4 + 20, ctGa9, -31 );
setEffRotateKey( spep_4 + 22, ctGa9, -40 );
setEffRotateKey( spep_4 + 24, ctGa9, -31);
setEffRotateKey( spep_4 + 26, ctGa9, -40 );
setEffRotateKey( spep_4 + 28, ctGa9, -31);
setEffRotateKey( spep_4 + 30, ctGa9, -40 );
setEffRotateKey( spep_4 + 110, ctGa9, -40 );

setEffAlphaKey( spep_4 + 14, ctGa9, 255 );
setEffAlphaKey( spep_4 + 110, ctGa9, 255 );

--ひび割れ
hibi = entryEffect( spep_4+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe( spep_4+13, SE_14);

-- ダメージ表示
dealDamage(spep_4+16);
endPhase( spep_4+100);

end
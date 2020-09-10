
--ベジータ_フォトンボンバー

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
SE_14 = 1003; --手を上げる

--味方側
SP_01 = 152274;--気溜め
SP_02 = 152275;--急上昇
SP_03 = 152276;--発射
SP_04 = 152277;--気弾迫る

SP_05 = 190003;--ギャン(共通)

--敵側
SP_11 = 152278;--急上昇
SP_12 = 152279;--発射
SP_13 = 152280;--気弾迫る

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   0,    0, -2000,   0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   0,    0, -2000,   0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   0,    0, -2000,   0);
setMoveKey(   3,   1,    0, -2000 , 0);
setMoveKey(   4,   0,    0, -2000,   0);
setMoveKey(   4,   1,    0, -2000 , 0);
setMoveKey(   5,   0,    0, -2000,   0);
setMoveKey(   5,   1,    0, -2000 , 0);
setMoveKey(   6,   0,    0, -2000,   0);
setMoveKey(   6,   1,    0, -2000 , 0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);
setScaleKey(   4,   0, 1.6, 1.6);
setScaleKey(   4,   1, 1.6, 1.6);
setScaleKey(   5,   0, 1.6, 1.6);
setScaleKey(   5,   1, 1.6, 1.6);
setScaleKey(   6,   0, 1.6, 1.6);
setScaleKey(   6,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   3,   0, 0);
setRotateKey(   4,   1, 0);
setRotateKey(   4,   0, 0);
setRotateKey(   5,   1, 0);
setRotateKey(   5,   0, 0);
setRotateKey(   6,   1, 0);
setRotateKey(   6,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(90F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

--黒背景
entryFadeBg( spep_0, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--気溜め
charge = entryEffect( spep_0, SP_01, 0x100, -1, 0, 0, 0);   -- ef_001気溜め
setEffScaleKey( spep_0,  charge,  1.0, 1.0);
setEffMoveKey( spep_0,  charge,  0,  0);
setEffRotateKey( spep_0,  charge,  0);
setEffAlphaKey( spep_0,  charge,  255);

setEffScaleKey( spep_0+90,  charge,  1.0, 1.0);
setEffMoveKey( spep_0+90,  charge,  0,  0);
setEffRotateKey( spep_0+90,  charge,  0);
setEffAlphaKey( spep_0+90,  charge,  255);

--気溜めSE
playSe( spep_0+10, SE_01);

--書き文字(ズズズンッ)
ctZuz = entryEffectLife( spep_0+10, 10013, 50, 0x100, -1, 0, 0, 0);    -- ズズズンッ
setEffShake( spep_0+10, ctZuz, 50, 20);

setEffScaleKey( spep_0+10,  ctZuz,  0.2, 0.2);
setEffMoveKey( spep_0+10,  ctZuz,  0,  390);
setEffRotateKey( spep_0+10,  ctZuz,  0);
setEffAlphaKey( spep_0+10,  ctZuz,  255);

setEffScaleKey( spep_0+14,  ctZuz,  2.5, 2.5);

setEffAlphaKey( spep_0+52,  ctZuz,  255);

setEffScaleKey( spep_0+60,  ctZuz,  2.5, 2.5);
setEffMoveKey( spep_0+60,  ctZuz,  0,  390);
setEffRotateKey( spep_0+60,  ctZuz,  0);
setEffAlphaKey( spep_0+60,  ctZuz,  0);

--集中線
shuchusen1 = entryEffectLife( spep_0, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0,  shuchusen1,  1.3, 2.1);
setEffMoveKey( spep_0,  shuchusen1,  0,  0);
setEffRotateKey( spep_0,  shuchusen1,  0);
setEffAlphaKey( spep_0,  shuchusen1,  255);

setEffScaleKey( spep_0+90,  shuchusen1,  1.3, 2.1);
setEffMoveKey( spep_0+90,  shuchusen1,  0,  0);
setEffRotateKey( spep_0+90,  shuchusen1,  0);
setEffAlphaKey( spep_0+90,  shuchusen1,  255);


--白フェード
entryFade( spep_0+80, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_1 = spep_0+90;

------------------------------------------------------
-- 上昇(140F)
------------------------------------------------------

--背景暗め→黒
entryFadeBg( spep_1, 0, 140, 0, 0, 0, 0, 190);          -- ベース暗め　背景
entryFadeBg( spep_1+16, 40, 100, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--流線
ryusen = entryEffectLife( spep_1, 914, 98, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_1, ryusen, 1.9, 1.0);
setEffMoveKey(  spep_1,  ryusen,  0,  0);
setEffRotateKey( spep_1, ryusen, -72);
setEffAlphaKey( spep_1, ryusen, 255);

setEffAlphaKey( spep_1+90, ryusen, 255);

setEffScaleKey( spep_1+98, ryusen, 1.9, 1.0);
setEffMoveKey(  spep_1+98,  ryusen,  0,  0);
setEffRotateKey( spep_1+98, ryusen, -72);
setEffAlphaKey( spep_1+98, ryusen, 0);

--集中線
shuchusen2 = entryEffectLife( spep_1, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen2, 1.3, 1.7);
setEffMoveKey( spep_1,  shuchusen2,  0,  0);
setEffRotateKey( spep_1,  shuchusen2,  0);
setEffAlphaKey( spep_1, shuchusen2, 255);

setEffScaleKey( spep_1+140, shuchusen2, 1.3, 1.7);
setEffMoveKey( spep_1+140,  shuchusen2,  0,  0);
setEffRotateKey( spep_1+140,  shuchusen2,  0);
setEffAlphaKey( spep_1+140, shuchusen2, 255);

--上昇
jump = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0);   -- ef_002上昇〜構え
setEffScaleKey( spep_1,  jump,  1.0, 1.0);
setEffMoveKey( spep_1,  jump,  0,  0);
setEffRotateKey( spep_1,  jump,  0);
setEffAlphaKey( spep_1,  jump,  255);

setEffScaleKey( spep_1+140,  jump,  1.0, 1.0);
setEffMoveKey( spep_1+140,  jump,  0,  0);
setEffRotateKey( spep_1+140,  jump,  0);
setEffAlphaKey( spep_1+140,  jump,  255);

--顔カットイン&文字
speff = entryEffect( spep_1+4,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect( spep_1+4,   1505,   0,     -1,  0,  0,  -40);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff1, 4, 5); 

--書き文字(ゴゴゴゴゴ)
ctGo = entryEffectLife( spep_1+18, 190006, 70, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴゴ
setEffShake( spep_1+18, ctGo, 70, 8);

setEffScaleKey( spep_1+18, ctGo, 0.8, 0.8);
setEffMoveKey(  spep_1+18,  ctGo, -20, 520);
setEffRotateKey(  spep_1+18,  ctGo,  0);
setEffAlphaKey(  spep_1+18,  ctGo,  255);

setEffScaleKey( spep_1+80, ctGo, 0.8, 0.8);

setEffAlphaKey(  spep_1+80,  ctGo,  255);

setEffScaleKey( spep_1+88, ctGo, 1.3, 1.3);
setEffMoveKey(  spep_1+88,  ctGo, -20, 520);
setEffRotateKey(  spep_1+88,  ctGo,  0);
setEffAlphaKey(  spep_1+88,  ctGo,  0);

--カットインSE
playSe( spep_1+18, SE_04);

--書き文字(バッ)
ctBa = entryEffectLife( spep_1 + 96,  10022, 24, 0x100, -1, 0, 191.7, 368.3 );
setEffMoveKey( spep_1 + 96, ctBa, 191.7, 368.3 , 0 );
setEffMoveKey( spep_1 + 98, ctBa, 191.7, 368.3 , 0 );
setEffMoveKey( spep_1 + 100, ctBa, 187.4, 377.5 , 0 );
setEffMoveKey( spep_1 + 102, ctBa, 191.7, 368.3 , 0 );
setEffMoveKey( spep_1 + 104, ctBa, 186.3, 379.1 , 0 );
setEffMoveKey( spep_1 + 106, ctBa, 191.6, 368.4 , 0 );
setEffMoveKey( spep_1 + 108, ctBa, 191.5, 368.4 , 0 );
setEffMoveKey( spep_1 + 110, ctBa, 188.2, 377 , 0 );
setEffMoveKey( spep_1 + 112, ctBa, 191.6, 368.4 , 0 );
setEffMoveKey( spep_1 + 114, ctBa, 188.3, 376.9 , 0 );
setEffMoveKey( spep_1 + 116, ctBa, 191.6, 368.4 , 0 );
setEffMoveKey( spep_1 + 118, ctBa, 188.2, 377 , 0 );
setEffMoveKey( spep_1 + 120, ctBa, 188.1, 377 , 0 );

setEffScaleKey( spep_1 + 96, ctBa, 1.42, 1.42 );
setEffScaleKey( spep_1 + 98, ctBa, 1.42, 1.42 );
setEffScaleKey( spep_1 + 100, ctBa, 2.1, 2.1 );
setEffScaleKey( spep_1 + 102, ctBa, 2.79, 2.79 );
setEffScaleKey( spep_1 + 104, ctBa, 2.5, 2.5 );
setEffScaleKey( spep_1 + 106, ctBa, 2.2, 2.2 );
setEffScaleKey( spep_1 + 108, ctBa, 1.91, 1.91 );
setEffScaleKey( spep_1 + 110, ctBa, 1.91, 1.91 );
setEffScaleKey( spep_1 + 112, ctBa, 1.9, 1.9 );
setEffScaleKey( spep_1 + 116, ctBa, 1.9, 1.9 );
setEffScaleKey( spep_1 + 118, ctBa, 1.91, 1.91 );
setEffScaleKey( spep_1 + 120, ctBa, 1.91, 1.91 );

setEffRotateKey( spep_1 + 96, ctBa, 27 );
setEffRotateKey( spep_1 + 98, ctBa, 27 );
setEffRotateKey( spep_1 + 100, ctBa, 23.3 );
setEffRotateKey( spep_1 + 102, ctBa, 19.5 );
setEffRotateKey( spep_1 + 104, ctBa, 22 );
setEffRotateKey( spep_1 + 106, ctBa, 24.5 );
setEffRotateKey( spep_1 + 108, ctBa, 27 );
setEffRotateKey( spep_1 + 120, ctBa, 27 );

setEffAlphaKey( spep_1 + 96, ctBa, 255 );
setEffAlphaKey( spep_1 + 98, ctBa, 255 );
setEffAlphaKey( spep_1 + 114, ctBa, 255 );
setEffAlphaKey( spep_1 + 116, ctBa, 170 );
setEffAlphaKey( spep_1 + 118, ctBa, 85 );
setEffAlphaKey( spep_1 + 120, ctBa, 0 );

playSe( spep_1+96, SE_14);

--白フェード
entryFade( spep_1+122, 6, 18, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+140

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                             -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen4, 1.5, 1.5);
setEffMoveKey(  spep_2,  shuchusen4,  0,  0);
setEffRotateKey( spep_2, shuchusen4, 0);
setEffAlphaKey( spep_2, shuchusen4, 255);

setEffScaleKey( spep_2+90, shuchusen4, 1.5, 1.5);
setEffMoveKey(  spep_2+90,  shuchusen4,  0,  0);
setEffRotateKey( spep_2+90, shuchusen4, 0);
setEffAlphaKey( spep_2+90, shuchusen4, 255);

--カットインSE
playSe( spep_2, SE_05);

--白フェード
entryFade( spep_2+80, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2 + 90;

------------------------------------------------------
-- 発射(200F)
------------------------------------------------------

--背景暗め
entryFadeBg( spep_3, 0, 200, 0, 0, 0, 0, 190);          -- ベース暗め　背景

--集中線
shuchusen5 = entryEffectLife( spep_3, 906, 200, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen5, 1.3, 1.9);
setEffMoveKey( spep_3,  shuchusen5,  0,  0);
setEffRotateKey( spep_3,  shuchusen5,  0);
setEffAlphaKey( spep_3, shuchusen5, 255);

setEffScaleKey( spep_3+200, shuchusen5, 1.3, 1.9);
setEffMoveKey( spep_3+200,  shuchusen5,  0,  0);
setEffRotateKey( spep_3+200,  shuchusen5,  0);
setEffAlphaKey( spep_3+200, shuchusen5, 255);

--書き文字(ズズズンッ)
ctZuz2 = entryEffectLife( spep_3+20, 10013, 40, 0x100, -1, 0, 0, 0);    -- ズズズンッ
setEffShake( spep_3+20, ctZuz2, 40, 20);

setEffScaleKey( spep_3+20,  ctZuz2,  0.2, 0.2);
setEffMoveKey( spep_3+20,  ctZuz2,  0,  390);
setEffRotateKey( spep_3+20,  ctZuz2,  0);
setEffAlphaKey( spep_3+20,  ctZuz2,  255);

setEffScaleKey( spep_3+24,  ctZuz2,  2.5, 2.5);

setEffAlphaKey( spep_3+52,  ctZuz2,  255);

setEffScaleKey( spep_3+60,  ctZuz2,  2.5, 2.5);
setEffMoveKey( spep_3+60,  ctZuz2,  0,  390);
setEffRotateKey( spep_3+60,  ctZuz2,  0);
setEffAlphaKey( spep_3+60,  ctZuz2,  0);

--薄い白フェード
entryFade( spep_3+20, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 160);     -- white fade

--気弾溜めSE
playSe( spep_3, SE_13);
playSe( spep_3+20, SE_13);
playSe( spep_3+40, SE_13);
playSe( spep_3+60, SE_13);

--白フェード
entryFade( spep_3+84, 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--発射SE
playSe( spep_3+86, SE_07);

--書き文字(ズオッ)
ctZuo = entryEffectLife(  spep_3+94, 10012, 40, 0x100, -1, 0, 0, 0);    -- ズオッ
setEffShake( spep_3+94, ctZuo, 66, 20);

setEffScaleKey( spep_3+94,  ctZuo,  0.3, 0.3);
setEffMoveKey( spep_3+94,  ctZuo,  140,  340);
setEffRotateKey( spep_3+94,  ctZuo,  30);
setEffAlphaKey( spep_3+94,  ctZuo,  255);

setEffScaleKey( spep_3+102,  ctZuo, 2.7, 2.7);

setEffScaleKey( spep_3+124,  ctZuo, 2.7, 2.7);
setEffAlphaKey( spep_3+124,  ctZuo,  255);

setEffScaleKey( spep_3+134,  ctZuo, 4.5, 4.5);
setEffMoveKey( spep_3+134,  ctZuo,  140,  340);
setEffRotateKey( spep_3+134,  ctZuo,  30);
setEffAlphaKey( spep_3+134,  ctZuo,  0);

--流線
ryusen2 = entryEffectLife( spep_3+90, 921, 110, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_3+90, ryusen2, 1.9, 1.4);
setEffMoveKey(  spep_3+90,  ryusen2,  0,  0);
setEffRotateKey( spep_3+90, ryusen2, 240);
setEffAlphaKey( spep_3+90, ryusen2, 225);

setEffScaleKey( spep_3+200, ryusen2, 1.9, 1.4);
setEffMoveKey(  spep_3+200,  ryusen2,  0,  0);
setEffRotateKey( spep_3+200, ryusen2, 240);
setEffAlphaKey( spep_3+200, ryusen2, 225);

--発射
shoot = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0);   -- ef_003発射
setEffScaleKey( spep_3,  shoot,  1.0, 1.0);
setEffMoveKey( spep_3,  shoot,  0,  0);
setEffRotateKey( spep_3,  shoot,  0);
setEffAlphaKey( spep_3,  shoot,  255);

setEffScaleKey( spep_3+200,  shoot,  1.0, 1.0);
setEffMoveKey( spep_3+200,  shoot,  0,  0);
setEffRotateKey( spep_3+200,  shoot,  0);
setEffAlphaKey( spep_3+200,  shoot,  255);

--白フェード
entryFade( spep_3+190, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+200;

------------------------------------------------------
-- 迫る(120F)
------------------------------------------------------
--背景暗め
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 190);          -- ベース暗め　背景

--集中線
shuchusen6 = entryEffectLife( spep_4, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen6, 1.3, 1.9);
setEffMoveKey( spep_4,  shuchusen6,  0,  0);
setEffRotateKey( spep_4,  shuchusen6,  0);
setEffAlphaKey( spep_4, shuchusen6, 255);

setEffScaleKey( spep_4+60, shuchusen6, 1.3, 1.9);
setEffMoveKey( spep_4+60,  shuchusen6,  0,  0);
setEffRotateKey( spep_4+60,  shuchusen6,  0);
setEffAlphaKey( spep_4+60, shuchusen6, 255);

--流線
ryusen3 = entryEffectLife( spep_4, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_4, ryusen3, 1.7, 1.3);
setEffMoveKey(  sspep_4,  ryusen3,  0,  0);
setEffRotateKey( spep_4, ryusen3, 230);
setEffAlphaKey( spep_4, ryusen3, 225);

setEffScaleKey( spep_4+60, ryusen3, 1.7, 1.3);
setEffMoveKey(  spep_4+60,  ryusen3,  0,  0);
setEffRotateKey( spep_4+60, ryusen3, 230);
setEffAlphaKey( spep_4+60, ryusen3, 225);

--敵後ろ姿
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 102 );

setScaleKey( spep_4 + 0, 1, 3.29, 3.29 );
setScaleKey( spep_4 + 2, 1, 3.02, 3.02 );
setScaleKey( spep_4 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_4 + 6, 1, 2.58, 2.58 );
setScaleKey( spep_4 + 8, 1, 2.41, 2.41 );
setScaleKey( spep_4 + 10, 1, 2.27, 2.27 );
setScaleKey( spep_4 + 12, 1, 2.16, 2.16 );
setScaleKey( spep_4 + 14, 1, 2.14, 2.14 );
setScaleKey( spep_4 + 16, 1, 2.12, 2.12 );
setScaleKey( spep_4 + 18, 1, 2.11, 2.11 );
setScaleKey( spep_4 + 20, 1, 2.09, 2.09 );
setScaleKey( spep_4 + 22, 1, 2.07, 2.07 );
setScaleKey( spep_4 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_4 + 26, 1, 2.03, 2.03 );
setScaleKey( spep_4 + 28, 1, 2.01, 2.01 );
setScaleKey( spep_4 + 30, 1, 2, 2 );
setScaleKey( spep_4 + 32, 1, 1.98, 1.98 );
setScaleKey( spep_4 + 34, 1, 1.96, 1.96 );
setScaleKey( spep_4 + 36, 1, 1.94, 1.94 );
setScaleKey( spep_4 + 38, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 40, 1, 1.9, 1.9 );
setScaleKey( spep_4 + 42, 1, 1.89, 1.89 );
setScaleKey( spep_4 + 44, 1, 1.87, 1.87 );
setScaleKey( spep_4 + 46, 1, 1.85, 1.85 );
setScaleKey( spep_4 + 48, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 50, 1, 1.81, 1.81 );
setScaleKey( spep_4 + 52, 1, 1.79, 1.79 );
setScaleKey( spep_4 + 54, 1, 1.78, 1.78 );
setScaleKey( spep_4 + 56, 1, 1.76, 1.76 );
setScaleKey( spep_4 + 58, 1, 1.74, 1.74 );

setMoveKey( spep_4 + 0, 1, 409.7, -497.7 , 0 );
setMoveKey( spep_4 + 2, 1, 368.8, -448.3 , 0 );
setMoveKey( spep_4 + 4, 1, 340.1, -374.6 , 0 );
setMoveKey( spep_4 + 6, 1, 303.8, -328.5 , 0 );
setMoveKey( spep_4 + 8, 1, 287.9, -282.2 , 0 );
setMoveKey( spep_4 + 10, 1, 264.3, -259.6 , 0 );
setMoveKey( spep_4 + 12, 1, 253, -220.6 , 0 );
setMoveKey( spep_4 + 14, 1, 242.4, -220.4 , 0 );
setMoveKey( spep_4 + 16, 1, 247.8, -212.2 , 0 );
setMoveKey( spep_4 + 18, 1, 241.1, -220 , 0 );
setMoveKey( spep_4 + 20, 1, 242.5, -203.8 , 0 );
setMoveKey( spep_4 + 22, 1, 231.9, -203.6 , 0 );
setMoveKey( spep_4 + 24, 1, 237.3, -195.5 , 0 );
setMoveKey( spep_4 + 26, 1, 230.7, -203.3 , 0 );
setMoveKey( spep_4 + 28, 1, 232.1, -187.1 , 0 );
setMoveKey( spep_4 + 30, 1, 221.4, -186.9 , 0 );
setMoveKey( spep_4 + 32, 1, 226.8, -178.7 , 0 );
setMoveKey( spep_4 + 34, 1, 220.2, -182.5 , 0 );
setMoveKey( spep_4 + 36, 1, 221.6, -170.3 , 0 );
setMoveKey( spep_4 + 38, 1, 211, -170.1 , 0 );
setMoveKey( spep_4 + 40, 1, 216.4, -161.9 , 0 );
setMoveKey( spep_4 + 42, 1, 209.7, -165.7 , 0 );
setMoveKey( spep_4 + 44, 1, 211.1, -153.5 , 0 );
setMoveKey( spep_4 + 46, 1, 200.5, -153.3 , 0 );
setMoveKey( spep_4 + 48, 1, 205.9, -145.2 , 0 );
setMoveKey( spep_4 + 50, 1, 199.3, -149 , 0 );
setMoveKey( spep_4 + 52, 1, 200.7, -136.8 , 0 );
setMoveKey( spep_4 + 54, 1, 190, -136.6 , 0 );
setMoveKey( spep_4 + 56, 1, 195.4, -128.4 , 0 );
setMoveKey( spep_4 + 58, 1, 188.8, -132.2 , 0 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 58, 1, 0 );

setDisp( spep_4 + 58, 1, 0);

--迫る
beam = entryEffect( spep_4, SP_04, 0x80, -1, 0, 0, 0);   -- ef_004迫る
setEffScaleKey( spep_4,  beam,  1.0, 1.0);
setEffMoveKey( spep_4,  beam,  0,  0);
setEffRotateKey( spep_4,  beam,  0);
setEffAlphaKey( spep_4,  beam,  255);

setEffAlphaKey( spep_4+120,  beam,  255);

setEffScaleKey( spep_4+200,  beam,  1.0, 1.0);
setEffMoveKey( spep_4+200,  beam,  0,  0);
setEffRotateKey( spep_4+200,  beam,  0);
setEffAlphaKey( spep_4+200,  beam,  0);

--書き文字(ズドドドッ)
ctZud = entryEffectLife(  spep_4, 10014, 54, 0x100, -1, 0, 0, 0);    -- ズドドドッ
setEffShake( spep_4, ctZud, 54, 20);

setEffScaleKey( spep_4, ctZud, 2.8, 2.8);
setEffMoveKey(  spep_4,  ctZud, 130, 300);
setEffRotateKey( spep_4, ctZud, 60);
setEffAlphaKey( spep_4, ctZud, 225);

setEffScaleKey( spep_4+54, ctZud, 2.8, 2.8);
setEffMoveKey(  spep_4+54,  ctZud, 130, 300);
setEffRotateKey( spep_4+54, ctZud, 60);
setEffAlphaKey( spep_4+54, ctZud, 225);

--迫るSE
playSe( spep_4, SE_06);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 迫る(120F)続き
------------------------------------------------------

--白フェード
entryFade( spep_4+50, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--敵被弾
gyan = entryEffectLife( spep_4+60, SP_05, 60, 0x80 , -1, 0, 0, 0);
setEffScaleKey( spep_4+60,  gyan,  1.0, 1.0);
setEffMoveKey( spep_4+60,  gyan,  0,  0);
setEffRotateKey( spep_4+60,  gyan,  0);
setEffAlphaKey( spep_4+60,  gyan,  255);

setEffScaleKey( spep_4+120,  gyan,  1.0, 1.0);
setEffMoveKey( spep_4+120,  gyan,  0,  0);
setEffRotateKey( spep_4+120,  gyan,  0);
setEffAlphaKey( spep_4+120,  gyan,  255);

--書き文字(ギャンッ)
ctGya = entryEffectLife( spep_4 + 60,  10006, 58, 0x100, -1, 0, 8.8, 313 );
setEffMoveKey( spep_4 + 60, ctGya, 8.8, 313 , 0 );
setEffMoveKey( spep_4 + 62, ctGya, 9.1, 314.1 , 0 );
setEffMoveKey( spep_4 + 64, ctGya, 9.4, 315.1 , 0 );
setEffMoveKey( spep_4 + 66, ctGya, 9.7, 316.1 , 0 );
setEffMoveKey( spep_4 + 68, ctGya, 10, 317.1 , 0 );
setEffMoveKey( spep_4 + 70, ctGya, 10, 317.2 , 0 );
setEffMoveKey( spep_4 + 72, ctGya, 10, 317.3 , 0 );
setEffMoveKey( spep_4 + 74, ctGya, 10, 317.4 , 0 );
setEffMoveKey( spep_4 + 76, ctGya, 10.1, 317.5 , 0 );
setEffMoveKey( spep_4 + 78, ctGya, 10.1, 317.5 , 0 );
setEffMoveKey( spep_4 + 80, ctGya, 10.1, 317.6 , 0 );
setEffMoveKey( spep_4 + 82, ctGya, 10.1, 317.7 , 0 );
setEffMoveKey( spep_4 + 84, ctGya, 10.2, 317.8 , 0 );
setEffMoveKey( spep_4 + 86, ctGya, 10.2, 317.9 , 0 );
setEffMoveKey( spep_4 + 88, ctGya, 10.2, 318 , 0 );
setEffMoveKey( spep_4 + 90, ctGya, 10.2, 318 , 0 );
setEffMoveKey( spep_4 + 92, ctGya, 10.3, 318.1 , 0 );
setEffMoveKey( spep_4 + 94, ctGya, 10.3, 318.2 , 0 );
setEffMoveKey( spep_4 + 96, ctGya, 10.3, 318.3 , 0 );
setEffMoveKey( spep_4 + 98, ctGya, 10.3, 318.4 , 0 );
setEffMoveKey( spep_4 + 100, ctGya, 10.4, 318.5 , 0 );
setEffMoveKey( spep_4 + 102, ctGya, 10.4, 318.5 , 0 );
setEffMoveKey( spep_4 + 104, ctGya, 10.4, 318.6 , 0 );
setEffMoveKey( spep_4 + 106, ctGya, 10.4, 318.7 , 0 );
setEffMoveKey( spep_4 + 108, ctGya, 10.5, 318.8 , 0 );
setEffMoveKey( spep_4 + 110, ctGya, 10.5, 318.9 , 0 );
setEffMoveKey( spep_4 + 112, ctGya, 10.5, 319 , 0 );
setEffMoveKey( spep_4 + 114, ctGya, 10.5, 319 , 0 );
setEffMoveKey( spep_4 + 116, ctGya, 10.5, 319.1 , 0 );
setEffMoveKey( spep_4 + 118, ctGya, 10.6, 319.2 , 0 );

setEffScaleKey( spep_4 + 60, ctGya, 2.11, 2.11 );
setEffScaleKey( spep_4 + 62, ctGya, 2.47, 2.47 );
setEffScaleKey( spep_4 + 64, ctGya, 2.82, 2.82 );
setEffScaleKey( spep_4 + 66, ctGya, 3.18, 3.18 );
setEffScaleKey( spep_4 + 68, ctGya, 3.53, 3.53 );
setEffScaleKey( spep_4 + 70, ctGya, 3.56, 3.56 );
setEffScaleKey( spep_4 + 72, ctGya, 3.6, 3.6 );
setEffScaleKey( spep_4 + 74, ctGya, 3.6, 3.6 );
setEffScaleKey( spep_4 + 76, ctGya, 3.63, 3.63 );
setEffScaleKey( spep_4 + 78, ctGya, 3.67, 3.67 );
setEffScaleKey( spep_4 + 80, ctGya, 3.7, 3.7 );
setEffScaleKey( spep_4 + 82, ctGya, 3.74, 3.74 );
setEffScaleKey( spep_4 + 84, ctGya, 3.74, 3.74 );
setEffScaleKey( spep_4 + 86, ctGya, 3.77, 3.77 );
setEffScaleKey( spep_4 + 88, ctGya, 3.81, 3.81 );
setEffScaleKey( spep_4 + 90, ctGya, 3.85, 3.85 );
setEffScaleKey( spep_4 + 92, ctGya, 3.88, 3.88 );
setEffScaleKey( spep_4 + 94, ctGya, 3.88, 3.88 );
setEffScaleKey( spep_4 + 96, ctGya, 3.92, 3.92 );
setEffScaleKey( spep_4 + 98, ctGya, 3.95, 3.95 );
setEffScaleKey( spep_4 + 100, ctGya, 3.99, 3.99 );
setEffScaleKey( spep_4 + 102, ctGya, 4.02, 4.02 );
setEffScaleKey( spep_4 + 104, ctGya, 4.02, 4.02 );
setEffScaleKey( spep_4 + 106, ctGya, 4.06, 4.06 );
setEffScaleKey( spep_4 + 108, ctGya, 4.09, 4.09 );
setEffScaleKey( spep_4 + 110, ctGya, 4.13, 4.13 );
setEffScaleKey( spep_4 + 112, ctGya, 4.13, 4.13 );
setEffScaleKey( spep_4 + 114, ctGya, 4.16, 4.16 );
setEffScaleKey( spep_4 + 116, ctGya, 4.2, 4.2 );
setEffScaleKey( spep_4 + 118, ctGya, 4.23, 4.23 );

setEffRotateKey( spep_4 + 60, ctGya, -5.2 );
setEffRotateKey( spep_4 + 118, ctGya, -5.2 );

setEffAlphaKey( spep_4 + 60, ctGya, 255 );
setEffAlphaKey( spep_4 + 118, ctGya, 255 );

--被弾SE
playSe( spep_4+60, SE_09);

--白フェード
entryFade( spep_4+100, 10, 20, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+120;

------------------------------------------------------
-- 大爆発(180F)
------------------------------------------------------

--爆発
baku = entryEffect( spep_5, 1651, 0x100, -1, 0, 0, 0);   -- 爆発
setEffScaleKey( spep_5, baku, 1.0, 1.0);
setEffMoveKey(  spep_5,  baku, 0, 0);
setEffRotateKey( spep_5, baku, 0);
setEffAlphaKey( spep_5, baku, 225);

setEffScaleKey( spep_5+180, baku, 1.0, 1.0);
setEffMoveKey(  spep_5+180,  baku, 0, 0);
setEffRotateKey( spep_5+180, baku, 0);
setEffAlphaKey( spep_5+180, baku, 225);

--爆発SE
playSe( spep_5, SE_10);

--集中線（白）
shuchusen7 = entryEffectLife( spep_5, 906, 180, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen7, 1.0, 1.0);
setEffMoveKey( spep_5,  shuchusen7,  0,  0);
setEffRotateKey( spep_5,  shuchusen7,  0);
setEffAlphaKey( spep_5, shuchusen7, 255);

setEffScaleKey( spep_5+180, shuchusen7, 1.0, 1.0);
setEffMoveKey( spep_5+180,  shuchusen7,  0,  0);
setEffRotateKey( spep_5+180,  shuchusen7,  0);
setEffAlphaKey( spep_5+180, shuchusen7, 255);

-- ダメージ表示
dealDamage(spep_5+16);

--ゆっくり白フェード
entryFade( spep_5+140, 10, 20, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase( spep_5+160);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

--黒背景
entryFadeBg( spep_0, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--気溜め
charge = entryEffect( spep_0, SP_11, 0x100, -1, 0, 0, 0);   -- ef_001気溜め
setEffScaleKey( spep_0,  charge,  1.0, 1.0);
setEffMoveKey( spep_0,  charge,  0,  0);
setEffRotateKey( spep_0,  charge,  0);
setEffAlphaKey( spep_0,  charge,  255);

setEffScaleKey( spep_0+90,  charge,  1.0, 1.0);
setEffMoveKey( spep_0+90,  charge,  0,  0);
setEffRotateKey( spep_0+90,  charge,  0);
setEffAlphaKey( spep_0+90,  charge,  255);

--気溜めSE
playSe( spep_0+10, SE_01);

--書き文字(ズズズンッ)
ctZuz = entryEffectLife( spep_0+10, 10013, 50, 0x100, -1, 0, 0, 0);    -- ズズズンッ
setEffShake( spep_0+10, ctZuz, 50, 20);

setEffScaleKey( spep_0+10,  ctZuz,  0.2, 0.2);
setEffMoveKey( spep_0+10,  ctZuz,  0,  390);
setEffRotateKey( spep_0+10,  ctZuz,  0);
setEffAlphaKey( spep_0+10,  ctZuz,  255);

setEffScaleKey( spep_0+14,  ctZuz,  2.5, 2.5);

setEffAlphaKey( spep_0+52,  ctZuz,  255);

setEffScaleKey( spep_0+60,  ctZuz,  2.5, 2.5);
setEffMoveKey( spep_0+60,  ctZuz,  0,  390);
setEffRotateKey( spep_0+60,  ctZuz,  0);
setEffAlphaKey( spep_0+60,  ctZuz,  0);

--集中線
shuchusen1 = entryEffectLife( spep_0, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0,  shuchusen1,  1.3, 2.1);
setEffMoveKey( spep_0,  shuchusen1,  0,  0);
setEffRotateKey( spep_0,  shuchusen1,  0);
setEffAlphaKey( spep_0,  shuchusen1,  255);

setEffScaleKey( spep_0+90,  shuchusen1,  1.3, 2.1);
setEffMoveKey( spep_0+90,  shuchusen1,  0,  0);
setEffRotateKey( spep_0+90,  shuchusen1,  0);
setEffAlphaKey( spep_0+90,  shuchusen1,  255);


--白フェード
entryFade( spep_0+80, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_1 = spep_0+90;

------------------------------------------------------
-- 上昇(140F)
------------------------------------------------------

--背景暗め→黒
entryFadeBg( spep_1, 0, 140, 0, 0, 0, 0, 190);          -- ベース暗め　背景
entryFadeBg( spep_1+16, 40, 100, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--流線
ryusen = entryEffectLife( spep_1, 914, 98, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_1, ryusen, 1.9, 1.0);
setEffMoveKey(  spep_1,  ryusen,  0,  0);
setEffRotateKey( spep_1, ryusen, -72);
setEffAlphaKey( spep_1, ryusen, 255);

setEffAlphaKey( spep_1+90, ryusen, 255);

setEffScaleKey( spep_1+98, ryusen, 1.9, 1.0);
setEffMoveKey(  spep_1+98,  ryusen,  0,  0);
setEffRotateKey( spep_1+98, ryusen, -72);
setEffAlphaKey( spep_1+98, ryusen, 0);

--集中線
shuchusen2 = entryEffectLife( spep_1, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen2, 1.3, 1.7);
setEffMoveKey( spep_1,  shuchusen2,  0,  0);
setEffRotateKey( spep_1,  shuchusen2,  0);
setEffAlphaKey( spep_1, shuchusen2, 255);

setEffScaleKey( spep_1+140, shuchusen2, 1.3, 1.7);
setEffMoveKey( spep_1+140,  shuchusen2,  0,  0);
setEffRotateKey( spep_1+140,  shuchusen2,  0);
setEffAlphaKey( spep_1+140, shuchusen2, 255);

--上昇
jump = entryEffect( spep_1, SP_12, 0x100, -1, 0, 0, 0);   -- ef_002上昇〜構え
setEffScaleKey( spep_1,  jump,  1.0, 1.0);
setEffMoveKey( spep_1,  jump,  0,  0);
setEffRotateKey( spep_1,  jump,  0);
setEffAlphaKey( spep_1,  jump,  255);

setEffScaleKey( spep_1+140,  jump,  1.0, 1.0);
setEffMoveKey( spep_1+140,  jump,  0,  0);
setEffRotateKey( spep_1+140,  jump,  0);
setEffAlphaKey( spep_1+140,  jump,  255);

--顔カットイン&文字
--speff = entryEffect( spep_1+4,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
--speff1 = entryEffect( spep_1+4,   1505,   0,     -1,  0,  0,  -40);   -- eff_006 (セリフ)
--setEffReplaceTexture(  speff1, 4, 5); 

--書き文字(ゴゴゴゴゴ)
ctGo = entryEffectLife( spep_1+18, 190006, 70, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴゴ
setEffShake( spep_1+18, ctGo, 70, 8);

setEffScaleKey( spep_1+18, ctGo, -0.8, 0.8);
setEffMoveKey(  spep_1+18,  ctGo, -20, 520);
setEffRotateKey(  spep_1+18,  ctGo,  0);
setEffAlphaKey(  spep_1+18,  ctGo,  255);

setEffScaleKey( spep_1+80, ctGo, -0.8, 0.8);

setEffAlphaKey(  spep_1+80,  ctGo,  255);

setEffScaleKey( spep_1+88, ctGo, -1.3, 1.3);
setEffMoveKey(  spep_1+88,  ctGo, -20, 520);
setEffRotateKey(  spep_1+88,  ctGo,  0);
setEffAlphaKey(  spep_1+88,  ctGo,  0);

--カットインSE
playSe( spep_1+18, SE_04);

--書き文字(バッ)
ctBa = entryEffectLife( spep_1 + 96,  10022, 24, 0x100, -1, 0, 191.7, 368.3 );
setEffMoveKey( spep_1 + 96, ctBa, 191.7, 368.3 , 0 );
setEffMoveKey( spep_1 + 98, ctBa, 191.7, 368.3 , 0 );
setEffMoveKey( spep_1 + 100, ctBa, 187.4, 377.5 , 0 );
setEffMoveKey( spep_1 + 102, ctBa, 191.7, 368.3 , 0 );
setEffMoveKey( spep_1 + 104, ctBa, 186.3, 379.1 , 0 );
setEffMoveKey( spep_1 + 106, ctBa, 191.6, 368.4 , 0 );
setEffMoveKey( spep_1 + 108, ctBa, 191.5, 368.4 , 0 );
setEffMoveKey( spep_1 + 110, ctBa, 188.2, 377 , 0 );
setEffMoveKey( spep_1 + 112, ctBa, 191.6, 368.4 , 0 );
setEffMoveKey( spep_1 + 114, ctBa, 188.3, 376.9 , 0 );
setEffMoveKey( spep_1 + 116, ctBa, 191.6, 368.4 , 0 );
setEffMoveKey( spep_1 + 118, ctBa, 188.2, 377 , 0 );
setEffMoveKey( spep_1 + 120, ctBa, 188.1, 377 , 0 );

setEffScaleKey( spep_1 + 96, ctBa, 1.42, 1.42 );
setEffScaleKey( spep_1 + 98, ctBa, 1.42, 1.42 );
setEffScaleKey( spep_1 + 100, ctBa, 2.1, 2.1 );
setEffScaleKey( spep_1 + 102, ctBa, 2.79, 2.79 );
setEffScaleKey( spep_1 + 104, ctBa, 2.5, 2.5 );
setEffScaleKey( spep_1 + 106, ctBa, 2.2, 2.2 );
setEffScaleKey( spep_1 + 108, ctBa, 1.91, 1.91 );
setEffScaleKey( spep_1 + 110, ctBa, 1.91, 1.91 );
setEffScaleKey( spep_1 + 112, ctBa, 1.9, 1.9 );
setEffScaleKey( spep_1 + 116, ctBa, 1.9, 1.9 );
setEffScaleKey( spep_1 + 118, ctBa, 1.91, 1.91 );
setEffScaleKey( spep_1 + 120, ctBa, 1.91, 1.91 );

setEffRotateKey( spep_1 + 96, ctBa, 27 );
setEffRotateKey( spep_1 + 98, ctBa, 27 );
setEffRotateKey( spep_1 + 100, ctBa, 23.3 );
setEffRotateKey( spep_1 + 102, ctBa, 19.5 );
setEffRotateKey( spep_1 + 104, ctBa, 22 );
setEffRotateKey( spep_1 + 106, ctBa, 24.5 );
setEffRotateKey( spep_1 + 108, ctBa, 27 );
setEffRotateKey( spep_1 + 120, ctBa, 27 );

setEffAlphaKey( spep_1 + 96, ctBa, 255 );
setEffAlphaKey( spep_1 + 98, ctBa, 255 );
setEffAlphaKey( spep_1 + 114, ctBa, 255 );
setEffAlphaKey( spep_1 + 116, ctBa, 170 );
setEffAlphaKey( spep_1 + 118, ctBa, 85 );
setEffAlphaKey( spep_1 + 120, ctBa, 0 );

playSe( spep_1+96, SE_14);

--白フェード
entryFade( spep_1+122, 6, 18, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+140

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                             -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen4, 1.5, 1.5);
setEffMoveKey(  spep_2,  shuchusen4,  0,  0);
setEffRotateKey( spep_2, shuchusen4, 0);
setEffAlphaKey( spep_2, shuchusen4, 255);

setEffScaleKey( spep_2+90, shuchusen4, 1.5, 1.5);
setEffMoveKey(  spep_2+90,  shuchusen4,  0,  0);
setEffRotateKey( spep_2+90, shuchusen4, 0);
setEffAlphaKey( spep_2+90, shuchusen4, 255);

--カットインSE
playSe( spep_2, SE_05);

--白フェード
entryFade( spep_2+80, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2 + 90;

------------------------------------------------------
-- 発射(200F)
------------------------------------------------------

--背景暗め
entryFadeBg( spep_3, 0, 200, 0, 0, 0, 0, 190);          -- ベース暗め　背景

--集中線
shuchusen5 = entryEffectLife( spep_3, 906, 200, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen5, 1.3, 1.9);
setEffMoveKey( spep_3,  shuchusen5,  0,  0);
setEffRotateKey( spep_3,  shuchusen5,  0);
setEffAlphaKey( spep_3, shuchusen5, 255);

setEffScaleKey( spep_3+200, shuchusen5, 1.3, 1.9);
setEffMoveKey( spep_3+200,  shuchusen5,  0,  0);
setEffRotateKey( spep_3+200,  shuchusen5,  0);
setEffAlphaKey( spep_3+200, shuchusen5, 255);

--書き文字(ズズズンッ)
ctZuz2 = entryEffectLife( spep_3+20, 10013, 40, 0x100, -1, 0, 0, 0);    -- ズズズンッ
setEffShake( spep_3+20, ctZuz2, 40, 20);

setEffScaleKey( spep_3+20,  ctZuz2,  0.2, 0.2);
setEffMoveKey( spep_3+20,  ctZuz2,  0,  390);
setEffRotateKey( spep_3+20,  ctZuz2,  0);
setEffAlphaKey( spep_3+20,  ctZuz2,  255);

setEffScaleKey( spep_3+24,  ctZuz2,  2.5, 2.5);

setEffAlphaKey( spep_3+52,  ctZuz2,  255);

setEffScaleKey( spep_3+60,  ctZuz2,  2.5, 2.5);
setEffMoveKey( spep_3+60,  ctZuz2,  0,  390);
setEffRotateKey( spep_3+60,  ctZuz2,  0);
setEffAlphaKey( spep_3+60,  ctZuz2,  0);

--薄い白フェード
entryFade( spep_3+20, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 160);     -- white fade

--気弾溜めSE
playSe( spep_3, SE_13);
playSe( spep_3+20, SE_13);
playSe( spep_3+40, SE_13);
playSe( spep_3+60, SE_13);

--白フェード
entryFade( spep_3+84, 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--発射SE
playSe( spep_3+86, SE_07);

--書き文字(ズオッ)
ctZuo = entryEffectLife(  spep_3+94, 10012, 40, 0x100, -1, 0, 0, 0);    -- ズオッ
setEffShake( spep_3+94, ctZuo, 66, 20);

setEffScaleKey( spep_3+94,  ctZuo,  0.3, 0.3);
setEffMoveKey( spep_3+94,  ctZuo,  140,  340);
setEffRotateKey( spep_3+94,  ctZuo,  30);
setEffAlphaKey( spep_3+94,  ctZuo,  255);

setEffScaleKey( spep_3+102,  ctZuo, 2.7, 2.7);

setEffScaleKey( spep_3+124,  ctZuo, 2.7, 2.7);
setEffAlphaKey( spep_3+124,  ctZuo,  255);

setEffScaleKey( spep_3+134,  ctZuo, 4.5, 4.5);
setEffMoveKey( spep_3+134,  ctZuo,  140,  340);
setEffRotateKey( spep_3+134,  ctZuo,  30);
setEffAlphaKey( spep_3+134,  ctZuo,  0);

--流線
ryusen2 = entryEffectLife( spep_3+90, 921, 110, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_3+90, ryusen2, 1.9, 1.4);
setEffMoveKey(  spep_3+90,  ryusen2,  0,  0);
setEffRotateKey( spep_3+90, ryusen2, 240);
setEffAlphaKey( spep_3+90, ryusen2, 225);

setEffScaleKey( spep_3+200, ryusen2, 1.9, 1.4);
setEffMoveKey(  spep_3+200,  ryusen2,  0,  0);
setEffRotateKey( spep_3+200, ryusen2, 240);
setEffAlphaKey( spep_3+200, ryusen2, 225);

--発射
shoot = entryEffect( spep_3, SP_13, 0x100, -1, 0, 0, 0);   -- ef_003発射
setEffScaleKey( spep_3,  shoot,  1.0, 1.0);
setEffMoveKey( spep_3,  shoot,  0,  0);
setEffRotateKey( spep_3,  shoot,  0);
setEffAlphaKey( spep_3,  shoot,  255);

setEffScaleKey( spep_3+200,  shoot,  1.0, 1.0);
setEffMoveKey( spep_3+200,  shoot,  0,  0);
setEffRotateKey( spep_3+200,  shoot,  0);
setEffAlphaKey( spep_3+200,  shoot,  255);

--白フェード
entryFade( spep_3+190, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+200;

------------------------------------------------------
-- 迫る(120F)
------------------------------------------------------
--背景暗め
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 190);          -- ベース暗め　背景

--集中線
shuchusen6 = entryEffectLife( spep_4, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen6, 1.3, 1.9);
setEffMoveKey( spep_4,  shuchusen6,  0,  0);
setEffRotateKey( spep_4,  shuchusen6,  0);
setEffAlphaKey( spep_4, shuchusen6, 255);

setEffScaleKey( spep_4+60, shuchusen6, 1.3, 1.9);
setEffMoveKey( spep_4+60,  shuchusen6,  0,  0);
setEffRotateKey( spep_4+60,  shuchusen6,  0);
setEffAlphaKey( spep_4+60, shuchusen6, 255);

--流線
ryusen3 = entryEffectLife( spep_4, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_4, ryusen3, 1.7, 1.3);
setEffMoveKey(  sspep_4,  ryusen3,  0,  0);
setEffRotateKey( spep_4, ryusen3, 230);
setEffAlphaKey( spep_4, ryusen3, 225);

setEffScaleKey( spep_4+60, ryusen3, 1.7, 1.3);
setEffMoveKey(  spep_4+60,  ryusen3,  0,  0);
setEffRotateKey( spep_4+60, ryusen3, 230);
setEffAlphaKey( spep_4+60, ryusen3, 225);

--敵後ろ姿
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 102 );

setScaleKey( spep_4 + 0, 1, 3.29, 3.29 );
setScaleKey( spep_4 + 2, 1, 3.02, 3.02 );
setScaleKey( spep_4 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_4 + 6, 1, 2.58, 2.58 );
setScaleKey( spep_4 + 8, 1, 2.41, 2.41 );
setScaleKey( spep_4 + 10, 1, 2.27, 2.27 );
setScaleKey( spep_4 + 12, 1, 2.16, 2.16 );
setScaleKey( spep_4 + 14, 1, 2.14, 2.14 );
setScaleKey( spep_4 + 16, 1, 2.12, 2.12 );
setScaleKey( spep_4 + 18, 1, 2.11, 2.11 );
setScaleKey( spep_4 + 20, 1, 2.09, 2.09 );
setScaleKey( spep_4 + 22, 1, 2.07, 2.07 );
setScaleKey( spep_4 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_4 + 26, 1, 2.03, 2.03 );
setScaleKey( spep_4 + 28, 1, 2.01, 2.01 );
setScaleKey( spep_4 + 30, 1, 2, 2 );
setScaleKey( spep_4 + 32, 1, 1.98, 1.98 );
setScaleKey( spep_4 + 34, 1, 1.96, 1.96 );
setScaleKey( spep_4 + 36, 1, 1.94, 1.94 );
setScaleKey( spep_4 + 38, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 40, 1, 1.9, 1.9 );
setScaleKey( spep_4 + 42, 1, 1.89, 1.89 );
setScaleKey( spep_4 + 44, 1, 1.87, 1.87 );
setScaleKey( spep_4 + 46, 1, 1.85, 1.85 );
setScaleKey( spep_4 + 48, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 50, 1, 1.81, 1.81 );
setScaleKey( spep_4 + 52, 1, 1.79, 1.79 );
setScaleKey( spep_4 + 54, 1, 1.78, 1.78 );
setScaleKey( spep_4 + 56, 1, 1.76, 1.76 );
setScaleKey( spep_4 + 58, 1, 1.74, 1.74 );

setMoveKey( spep_4 + 0, 1, 409.7, -497.7 , 0 );
setMoveKey( spep_4 + 2, 1, 368.8, -448.3 , 0 );
setMoveKey( spep_4 + 4, 1, 340.1, -374.6 , 0 );
setMoveKey( spep_4 + 6, 1, 303.8, -328.5 , 0 );
setMoveKey( spep_4 + 8, 1, 287.9, -282.2 , 0 );
setMoveKey( spep_4 + 10, 1, 264.3, -259.6 , 0 );
setMoveKey( spep_4 + 12, 1, 253, -220.6 , 0 );
setMoveKey( spep_4 + 14, 1, 242.4, -220.4 , 0 );
setMoveKey( spep_4 + 16, 1, 247.8, -212.2 , 0 );
setMoveKey( spep_4 + 18, 1, 241.1, -220 , 0 );
setMoveKey( spep_4 + 20, 1, 242.5, -203.8 , 0 );
setMoveKey( spep_4 + 22, 1, 231.9, -203.6 , 0 );
setMoveKey( spep_4 + 24, 1, 237.3, -195.5 , 0 );
setMoveKey( spep_4 + 26, 1, 230.7, -203.3 , 0 );
setMoveKey( spep_4 + 28, 1, 232.1, -187.1 , 0 );
setMoveKey( spep_4 + 30, 1, 221.4, -186.9 , 0 );
setMoveKey( spep_4 + 32, 1, 226.8, -178.7 , 0 );
setMoveKey( spep_4 + 34, 1, 220.2, -182.5 , 0 );
setMoveKey( spep_4 + 36, 1, 221.6, -170.3 , 0 );
setMoveKey( spep_4 + 38, 1, 211, -170.1 , 0 );
setMoveKey( spep_4 + 40, 1, 216.4, -161.9 , 0 );
setMoveKey( spep_4 + 42, 1, 209.7, -165.7 , 0 );
setMoveKey( spep_4 + 44, 1, 211.1, -153.5 , 0 );
setMoveKey( spep_4 + 46, 1, 200.5, -153.3 , 0 );
setMoveKey( spep_4 + 48, 1, 205.9, -145.2 , 0 );
setMoveKey( spep_4 + 50, 1, 199.3, -149 , 0 );
setMoveKey( spep_4 + 52, 1, 200.7, -136.8 , 0 );
setMoveKey( spep_4 + 54, 1, 190, -136.6 , 0 );
setMoveKey( spep_4 + 56, 1, 195.4, -128.4 , 0 );
setMoveKey( spep_4 + 58, 1, 188.8, -132.2 , 0 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 58, 1, 0 );

setDisp( spep_4 + 58, 1, 0);

--迫る
beam = entryEffect( spep_4, SP_04, 0x80, -1, 0, 0, 0);   -- ef_004迫る
setEffScaleKey( spep_4,  beam,  1.0, 1.0);
setEffMoveKey( spep_4,  beam,  0,  0);
setEffRotateKey( spep_4,  beam,  0);
setEffAlphaKey( spep_4,  beam,  255);

setEffAlphaKey( spep_4+120,  beam,  255);

setEffScaleKey( spep_4+200,  beam,  1.0, 1.0);
setEffMoveKey( spep_4+200,  beam,  0,  0);
setEffRotateKey( spep_4+200,  beam,  0);
setEffAlphaKey( spep_4+200,  beam,  0);

--書き文字(ズドドドッ)
ctZud = entryEffectLife(  spep_4, 10014, 54, 0x100, -1, 0, 0, 0);    -- ズドドドッ
setEffShake( spep_4, ctZud, 54, 20);

setEffScaleKey( spep_4, ctZud, 2.8, 2.8);
setEffMoveKey(  spep_4,  ctZud, 50, 330);
setEffRotateKey( spep_4, ctZud, -10);
setEffAlphaKey( spep_4, ctZud, 225);

setEffScaleKey( spep_4+54, ctZud, 2.8, 2.8);
setEffMoveKey(  spep_4+54,  ctZud, 50, 330);
setEffRotateKey( spep_4+54, ctZud, -10);
setEffAlphaKey( spep_4+54, ctZud, 225);

--迫るSE
playSe( spep_4, SE_06);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 迫る(120F)続き
------------------------------------------------------

--白フェード
entryFade( spep_4+50, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--敵被弾
gyan = entryEffectLife( spep_4+60, SP_05, 60, 0x80 , -1, 0, 0, 0);
setEffScaleKey( spep_4+60,  gyan,  1.0, 1.0);
setEffMoveKey( spep_4+60,  gyan,  0,  0);
setEffRotateKey( spep_4+60,  gyan,  0);
setEffAlphaKey( spep_4+60,  gyan,  255);

setEffScaleKey( spep_4+120,  gyan,  1.0, 1.0);
setEffMoveKey( spep_4+120,  gyan,  0,  0);
setEffRotateKey( spep_4+120,  gyan,  0);
setEffAlphaKey( spep_4+120,  gyan,  255);

--書き文字(ギャンッ)
ctGya = entryEffectLife( spep_4 + 60,  10006, 58, 0x100, -1, 0, 8.8, 313 );
setEffMoveKey( spep_4 + 60, ctGya, 8.8, 313 , 0 );
setEffMoveKey( spep_4 + 62, ctGya, 9.1, 314.1 , 0 );
setEffMoveKey( spep_4 + 64, ctGya, 9.4, 315.1 , 0 );
setEffMoveKey( spep_4 + 66, ctGya, 9.7, 316.1 , 0 );
setEffMoveKey( spep_4 + 68, ctGya, 10, 317.1 , 0 );
setEffMoveKey( spep_4 + 70, ctGya, 10, 317.2 , 0 );
setEffMoveKey( spep_4 + 72, ctGya, 10, 317.3 , 0 );
setEffMoveKey( spep_4 + 74, ctGya, 10, 317.4 , 0 );
setEffMoveKey( spep_4 + 76, ctGya, 10.1, 317.5 , 0 );
setEffMoveKey( spep_4 + 78, ctGya, 10.1, 317.5 , 0 );
setEffMoveKey( spep_4 + 80, ctGya, 10.1, 317.6 , 0 );
setEffMoveKey( spep_4 + 82, ctGya, 10.1, 317.7 , 0 );
setEffMoveKey( spep_4 + 84, ctGya, 10.2, 317.8 , 0 );
setEffMoveKey( spep_4 + 86, ctGya, 10.2, 317.9 , 0 );
setEffMoveKey( spep_4 + 88, ctGya, 10.2, 318 , 0 );
setEffMoveKey( spep_4 + 90, ctGya, 10.2, 318 , 0 );
setEffMoveKey( spep_4 + 92, ctGya, 10.3, 318.1 , 0 );
setEffMoveKey( spep_4 + 94, ctGya, 10.3, 318.2 , 0 );
setEffMoveKey( spep_4 + 96, ctGya, 10.3, 318.3 , 0 );
setEffMoveKey( spep_4 + 98, ctGya, 10.3, 318.4 , 0 );
setEffMoveKey( spep_4 + 100, ctGya, 10.4, 318.5 , 0 );
setEffMoveKey( spep_4 + 102, ctGya, 10.4, 318.5 , 0 );
setEffMoveKey( spep_4 + 104, ctGya, 10.4, 318.6 , 0 );
setEffMoveKey( spep_4 + 106, ctGya, 10.4, 318.7 , 0 );
setEffMoveKey( spep_4 + 108, ctGya, 10.5, 318.8 , 0 );
setEffMoveKey( spep_4 + 110, ctGya, 10.5, 318.9 , 0 );
setEffMoveKey( spep_4 + 112, ctGya, 10.5, 319 , 0 );
setEffMoveKey( spep_4 + 114, ctGya, 10.5, 319 , 0 );
setEffMoveKey( spep_4 + 116, ctGya, 10.5, 319.1 , 0 );
setEffMoveKey( spep_4 + 118, ctGya, 10.6, 319.2 , 0 );

setEffScaleKey( spep_4 + 60, ctGya, 2.11, 2.11 );
setEffScaleKey( spep_4 + 62, ctGya, 2.47, 2.47 );
setEffScaleKey( spep_4 + 64, ctGya, 2.82, 2.82 );
setEffScaleKey( spep_4 + 66, ctGya, 3.18, 3.18 );
setEffScaleKey( spep_4 + 68, ctGya, 3.53, 3.53 );
setEffScaleKey( spep_4 + 70, ctGya, 3.56, 3.56 );
setEffScaleKey( spep_4 + 72, ctGya, 3.6, 3.6 );
setEffScaleKey( spep_4 + 74, ctGya, 3.6, 3.6 );
setEffScaleKey( spep_4 + 76, ctGya, 3.63, 3.63 );
setEffScaleKey( spep_4 + 78, ctGya, 3.67, 3.67 );
setEffScaleKey( spep_4 + 80, ctGya, 3.7, 3.7 );
setEffScaleKey( spep_4 + 82, ctGya, 3.74, 3.74 );
setEffScaleKey( spep_4 + 84, ctGya, 3.74, 3.74 );
setEffScaleKey( spep_4 + 86, ctGya, 3.77, 3.77 );
setEffScaleKey( spep_4 + 88, ctGya, 3.81, 3.81 );
setEffScaleKey( spep_4 + 90, ctGya, 3.85, 3.85 );
setEffScaleKey( spep_4 + 92, ctGya, 3.88, 3.88 );
setEffScaleKey( spep_4 + 94, ctGya, 3.88, 3.88 );
setEffScaleKey( spep_4 + 96, ctGya, 3.92, 3.92 );
setEffScaleKey( spep_4 + 98, ctGya, 3.95, 3.95 );
setEffScaleKey( spep_4 + 100, ctGya, 3.99, 3.99 );
setEffScaleKey( spep_4 + 102, ctGya, 4.02, 4.02 );
setEffScaleKey( spep_4 + 104, ctGya, 4.02, 4.02 );
setEffScaleKey( spep_4 + 106, ctGya, 4.06, 4.06 );
setEffScaleKey( spep_4 + 108, ctGya, 4.09, 4.09 );
setEffScaleKey( spep_4 + 110, ctGya, 4.13, 4.13 );
setEffScaleKey( spep_4 + 112, ctGya, 4.13, 4.13 );
setEffScaleKey( spep_4 + 114, ctGya, 4.16, 4.16 );
setEffScaleKey( spep_4 + 116, ctGya, 4.2, 4.2 );
setEffScaleKey( spep_4 + 118, ctGya, 4.23, 4.23 );

setEffRotateKey( spep_4 + 60, ctGya, -5.2 );
setEffRotateKey( spep_4 + 118, ctGya, -5.2 );

setEffAlphaKey( spep_4 + 60, ctGya, 255 );
setEffAlphaKey( spep_4 + 118, ctGya, 255 );

--被弾SE
playSe( spep_4+60, SE_09);

--白フェード
entryFade( spep_4+100, 10, 20, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+120;

------------------------------------------------------
-- 大爆発(180F)
------------------------------------------------------

--爆発
baku = entryEffect( spep_5, 1651, 0x100, -1, 0, 0, 0);   -- 爆発
setEffScaleKey( spep_5, baku, 1.0, 1.0);
setEffMoveKey(  spep_5,  baku, 0, 0);
setEffRotateKey( spep_5, baku, 0);
setEffAlphaKey( spep_5, baku, 225);

setEffScaleKey( spep_5+180, baku, 1.0, 1.0);
setEffMoveKey(  spep_5+180,  baku, 0, 0);
setEffRotateKey( spep_5+180, baku, 0);
setEffAlphaKey( spep_5+180, baku, 225);

--爆発SE
playSe( spep_5, SE_10);

--集中線（白）
shuchusen7 = entryEffectLife( spep_5, 906, 180, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen7, 1.0, 1.0);
setEffMoveKey( spep_5,  shuchusen7,  0,  0);
setEffRotateKey( spep_5,  shuchusen7,  0);
setEffAlphaKey( spep_5, shuchusen7, 255);

setEffScaleKey( spep_5+180, shuchusen7, 1.0, 1.0);
setEffMoveKey( spep_5+180,  shuchusen7,  0,  0);
setEffRotateKey( spep_5+180,  shuchusen7,  0);
setEffAlphaKey( spep_5+180, shuchusen7, 255);

-- ダメージ表示
dealDamage(spep_5+16);

--ゆっくり白フェード
entryFade( spep_5+140, 10, 20, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase( spep_5+160);

end
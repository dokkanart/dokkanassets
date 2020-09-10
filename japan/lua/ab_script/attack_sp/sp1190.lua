--1014640  人造人間21号(善)_エクセレントフルコース_sp1190

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SP_01 = 151939  --溜め
SP_02 = 151940  --連撃〜着地・前
SP_03 = 151941  --連撃〜着地・後
SP_04 = 151942  --放つ
SP_05 = 151943  --溜め：敵
SP_06 = 151944  --連撃〜着地・前：敵

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵

setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);



kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 溜め(160F)
------------------------------------------------------
spep_1 = 0;

shuchusen1 = entryEffectLife( spep_1+26, 906, 134, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1+26,  shuchusen1,  1.42,  2.02);
setEffMoveKey(  spep_1+26,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+26,  shuchusen1,  0);
setEffAlphaKey(  spep_1+26,  shuchusen1,  255);
setEffScaleKey(  spep_1+160,  shuchusen1,  1.42,  2.02);
setEffMoveKey(  spep_1+160,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+160,  shuchusen1,  0);
setEffAlphaKey(  spep_1+160,  shuchusen1,  255);

--書き文字エントリー
ctzuzu = entryEffectLife( spep_1+26,  10013, 38, 0x100, -1, 0, 20.1, 249.8 );  --ズズ

setEffMoveKey( spep_1+26, ctzuzu, 20.1, 249.8 , 0 );
setEffMoveKey( spep_1+28, ctzuzu, 23.5, 299.3 , 0 );
setEffMoveKey( spep_1+30, ctzuzu, 40.2, 359.2 , 0 );
setEffMoveKey( spep_1+32, ctzuzu, 31.2, 355 , 0 );
setEffMoveKey( spep_1+34, ctzuzu, 41.1, 364.8 , 0 );
setEffMoveKey( spep_1+64, ctzuzu, 41.1, 364.5 , 0 );
setEffScaleKey( spep_1+26, ctzuzu, 1.11, 1.11 );
setEffScaleKey( spep_1+28, ctzuzu, 1.98, 1.98 );
setEffScaleKey( spep_1+30, ctzuzu, 2.83, 2.83 );
setEffScaleKey( spep_1+32, ctzuzu, 2.92, 2.92 );
setEffScaleKey( spep_1+64, ctzuzu, 2.92, 2.92 );
setEffRotateKey( spep_1+26, ctzuzu, -5 );
setEffRotateKey( spep_1+64, ctzuzu, -5 );
setEffAlphaKey( spep_1+26, ctzuzu, 255 );
setEffAlphaKey( spep_1+46, ctzuzu, 255 );
setEffAlphaKey( spep_1+48, ctzuzu, 215 );
setEffAlphaKey( spep_1+50, ctzuzu, 164 );
setEffAlphaKey( spep_1+52, ctzuzu, 121 );
setEffAlphaKey( spep_1+54, ctzuzu, 84 );
setEffAlphaKey( spep_1+56, ctzuzu, 54 );
setEffAlphaKey( spep_1+58, ctzuzu, 30 );
setEffAlphaKey( spep_1+60, ctzuzu, 14 );
setEffAlphaKey( spep_1+62, ctzuzu, 3 );
setEffAlphaKey( spep_1+64, ctzuzu, 0 );

tame = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_1,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1,  tame,  0,  0);
setEffRotateKey(  spep_1,  tame,  0);
setEffAlphaKey(  spep_1,  tame,  255);
setEffScaleKey(  spep_1+160,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+160,  tame,  0,  0);
setEffRotateKey(  spep_1+160,  tame,  0);
setEffAlphaKey(  spep_1+160,  tame,  255);

-- カットイン
speff = entryEffect(  spep_1+67,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+67,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+80, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_1+80,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_1+80,  ctgogo,  0,  530);
setEffRotateKey(  spep_1+80,  ctgogo,  0);
setEffScaleKey(  spep_1+151,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_1+151,  ctgogo,  0,  530);
setEffRotateKey(  spep_1+151,  ctgogo,  0);

playSe(  spep_1+26,  SE_01);  --気溜め
playSe(  spep_1+80,  SE_04);  --カットイン音

entryFade( spep_1+25, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1+26, 0, 134, 0, 0, 0, 0, 200);          -- 黒　背景

entryFade( spep_1+154, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 連撃〜着地(270F)
------------------------------------------------------
spep_2 = 161;

shuchusen2 = entryEffectLife( spep_2, 906, 270, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.50,  2.01);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffScaleKey(  spep_2+128,  shuchusen2,  1.50,  2.01);
setEffMoveKey(  spep_2+128,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+128,  shuchusen2,  0);
setEffAlphaKey(  spep_2+128,  shuchusen2,  255);
setEffScaleKey(  spep_2+144,  shuchusen2,  1.50,  2.01);
setEffMoveKey(  spep_2+144,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+144,  shuchusen2,  0);
setEffAlphaKey(  spep_2+144,  shuchusen2,  0);
setEffScaleKey(  spep_2+155,  shuchusen2,  1.50,  2.01);
setEffMoveKey(  spep_2+155,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+155,  shuchusen2,  0);
setEffAlphaKey(  spep_2+155,  shuchusen2,  0);
setEffScaleKey(  spep_2+156,  shuchusen2,  1.32,  1.68);
setEffMoveKey(  spep_2+156,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+156,  shuchusen2,  0);
setEffAlphaKey(  spep_2+156,  shuchusen2,  255);
setEffScaleKey(  spep_2+270,  shuchusen2,  1.32,  1.68);
setEffMoveKey(  spep_2+270,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+270,  shuchusen2,  0);
setEffAlphaKey(  spep_2+270,  shuchusen2,  255);



--書き文字エントリー
ctga1 = entryEffectLife( spep_2+27,  10005, 26, 0x100, -1, 0, 16.1, 344 );  --ガッ

setEffShake(  spep_2+27,  ctga1,  26,  10);  --揺れ
setEffMoveKey( spep_2+27, ctga1, 16.1, 344 , 0 );
setEffMoveKey( spep_2+53, ctga1, 16.1, 344 , 0 );
setEffScaleKey( spep_2+27, ctga1, 0.91, 0.91 );
setEffScaleKey( spep_2+29, ctga1, 1.95, 1.95 );
setEffScaleKey( spep_2+31, ctga1, 2.48, 2.48 );
setEffScaleKey( spep_2+33, ctga1, 2.36, 2.36 );
setEffScaleKey( spep_2+35, ctga1, 2.24, 2.24 );
setEffScaleKey( spep_2+37, ctga1, 2.12, 2.12 );
setEffScaleKey( spep_2+39, ctga1, 2.01, 2.01 );
setEffScaleKey( spep_2+41, ctga1, 2, 2 );
setEffScaleKey( spep_2+43, ctga1, 1.99, 1.99 );
setEffScaleKey( spep_2+45, ctga1, 1.98, 1.98 );
setEffScaleKey( spep_2+47, ctga1, 1.97, 1.97 );
setEffScaleKey( spep_2+49, ctga1, 1.96, 1.96 );
setEffScaleKey( spep_2+51, ctga1, 1.95, 1.95 );
setEffScaleKey( spep_2+53, ctga1, 1.94, 1.94 );
setEffRotateKey( spep_2+27, ctga1, 4.3 );
setEffRotateKey( spep_2+29, ctga1, -9.1 );
setEffRotateKey( spep_2+31, ctga1, 4.3 );
setEffRotateKey( spep_2+33, ctga1, 12.9 );
setEffRotateKey( spep_2+35, ctga1, 4.1 );
setEffRotateKey( spep_2+27, ctga1, -6.6 );
setEffRotateKey( spep_2+39, ctga1, 4.3 );
setEffRotateKey( spep_2+53, ctga1, 4.3 );
setEffAlphaKey( spep_2+27, ctga1, 255 );
setEffAlphaKey( spep_2+41, ctga1, 255 );
setEffAlphaKey( spep_2+43, ctga1, 213 );
setEffAlphaKey( spep_2+45, ctga1, 170 );
setEffAlphaKey( spep_2+47, ctga1, 128 );
setEffAlphaKey( spep_2+49, ctga1, 85 );
setEffAlphaKey( spep_2+51, ctga1, 42 );
setEffAlphaKey( spep_2+53, ctga1, 0 );


ctdoga = entryEffectLife( spep_2+67, 10017, 54, 0x100, -1, 0, 19.9, 371 );  --ドガガ

setEffShake(  spep_2+67,  ctdoga,  54,  10);  --揺れ
setEffMoveKey( spep_2+67, ctdoga, 19.9, 371 , 0 );
setEffMoveKey( spep_2+69, ctdoga, 21.8, 367.8 , 0 );
setEffMoveKey( spep_2+71, ctdoga, 21.8, 365.7 , 0 );
setEffMoveKey( spep_2+73, ctdoga, 19.7, 360 , 0 );
setEffMoveKey( spep_2+75, ctdoga, 17.3, 354.1 , 0 );
setEffMoveKey( spep_2+77, ctdoga, 19.7, 360 , 0 );
setEffMoveKey( spep_2+111, ctdoga, 19.6, 357.9 , 0 );
setEffMoveKey( spep_2+113, ctdoga, 19.6, 357.9 , 0 );
setEffMoveKey( spep_2+115, ctdoga, 17.3, 354.1 , 0 );
setEffMoveKey( spep_2+121, ctdoga, 17.3, 354.1 , 0 );
setEffScaleKey( spep_2+67, ctdoga, 1.88, 1.88 );
setEffScaleKey( spep_2+69, ctdoga, 3.07, 3.07 );
setEffScaleKey( spep_2+71, ctdoga, 2.75, 2.75 );
setEffScaleKey( spep_2+121, ctdoga, 2.75, 2.75 );
setEffRotateKey( spep_2+67, ctdoga, 26.3 );
setEffRotateKey( spep_2+71, ctdoga, 26.3 );
setEffRotateKey( spep_2+73, ctdoga, 22.5 );
setEffRotateKey( spep_2+121, ctdoga, 22.5 );
setEffAlphaKey( spep_2+67, ctdoga, 255 );
setEffAlphaKey( spep_2+115, ctdoga, 255 );
setEffAlphaKey( spep_2+117, ctdoga, 179 );
setEffAlphaKey( spep_2+119, ctdoga, 102 );
setEffAlphaKey( spep_2+120, ctdoga, 26 );
setEffAlphaKey( spep_2+121, ctdoga, 0 );


ctga2 = entryEffectLife( spep_2+155,  10005, 22, 0x100, -1, 0, 190.1, 410.1 );  --ガッ

setEffShake(  spep_2+155,  ctga2,  22,  10);  --揺れ
setEffMoveKey( spep_2+155, ctga2, 190.1, 410.1 , 0 );
setEffMoveKey( spep_2+167, ctga2, 190.2, 410.2 , 0 );
setEffScaleKey( spep_2+155, ctga2, 0.77, 0.77 );
setEffScaleKey( spep_2+157, ctga2, 2.08, 2.08 );
setEffScaleKey( spep_2+159, ctga2, 2.64, 2.64 );
setEffScaleKey( spep_2+161, ctga2, 2.51, 2.51 );
setEffScaleKey( spep_2+163, ctga2, 2.38, 2.38 );
setEffScaleKey( spep_2+165, ctga2, 2.26, 2.26 );
setEffScaleKey( spep_2+167, ctga2, 2.13, 2.13 );
setEffScaleKey( spep_2+169, ctga2, 2.13, 2.13 );
setEffScaleKey( spep_2+171, ctga2, 2.11, 2.11 );
setEffScaleKey( spep_2+173, ctga2, 2.1, 2.1 );
setEffScaleKey( spep_2+175, ctga2, 2.09, 2.09 );
setEffScaleKey( spep_2+177, ctga2, 2.07, 2.07 );
setEffRotateKey( spep_2+155, ctga2, 21.2 );
setEffRotateKey( spep_2+157, ctga2, 7.9 );
setEffRotateKey( spep_2+159, ctga2, 21.2 );
setEffRotateKey( spep_2+161, ctga2, 29.8 );
setEffRotateKey( spep_2+163, ctga2, 21.1 );
setEffRotateKey( spep_2+165, ctga2, 10.3 );
setEffRotateKey( spep_2+167, ctga2, 21.2 );
setEffRotateKey( spep_2+169, ctga2, 21.1 );
setEffRotateKey( spep_2+171, ctga2, 21.1 );
setEffRotateKey( spep_2+177, ctga2, 21.2 );
setEffAlphaKey( spep_2+155, ctga2, 255 );
setEffAlphaKey( spep_2+169, ctga2, 255 );
setEffAlphaKey( spep_2+171, ctga2, 191 );
setEffAlphaKey( spep_2+173, ctga2, 128 );
setEffAlphaKey( spep_2+175, ctga2, 64 );
setEffAlphaKey( spep_2+177, ctga2, 0 );


renda_f = entryEffect(  spep_2,  SP_02,  0x100,  -1,  0,  0,  0);  --連打・前

setEffScaleKey(  spep_2,  renda_f,  1.0,  1.0);
setEffMoveKey(  spep_2,  renda_f,  0,  0);
setEffRotateKey(  spep_2,  renda_f,  0);
setEffAlphaKey(  spep_2,  renda_f,  255);
setEffScaleKey(  spep_2+270,  renda_f,  1.0,  1.0);
setEffMoveKey(  spep_2+270,  renda_f,  0,  0);
setEffRotateKey(  spep_2+270,  renda_f,  0);
setEffAlphaKey(  spep_2+270,  renda_f,  255);

--敵の動き
setDisp( spep_2, 1, 1 );
changeAnime( spep_2, 1, 100 );

setMoveKey( spep_2, 1, -616.7, -37.3 , 0 );
setMoveKey( spep_2+2, 1, -475.7, -37.3 , 0 );
setMoveKey( spep_2+4, 1, -354.9, -37.3 , 0 );
setMoveKey( spep_2+6, 1, -254.3, -37.3 , 0 );
setMoveKey( spep_2+8, 1, -173.7, -37.3 , 0 );
setMoveKey( spep_2+10, 1, -113.3, -37.3 , 0 );
setMoveKey( spep_2+12, 1, -98.9, -37.3 , 0 );

-- 流線
ryu1 = entryEffectLife(  spep_2,  920,  270,  0x80,  -1,  0,  0,  0);  --流線

setEffScaleKey(  spep_2,  ryu1,  2.41,  1.2);  --横向き
setEffMoveKey(  spep_2,  ryu1,  0,  0);
setEffRotateKey(  spep_2,  ryu1,  0);
setEffAlphaKey(  spep_2,  ryu1,  255);
setEffScaleKey(  spep_2+128,  ryu1,  2.41,  1.2);
setEffMoveKey(  spep_2+128,  ryu1,  0,  0);
setEffRotateKey(  spep_2+128,  ryu1,  0);
setEffAlphaKey(  spep_2+128,  ryu1,  255);
setEffScaleKey(  spep_2+140,  ryu1,  2.41,  1.2);
setEffMoveKey(  spep_2+140,  ryu1,  0,  0);
setEffRotateKey(  spep_2+140,  ryu1,  0);
setEffAlphaKey(  spep_2+140,  ryu1,  0);
setEffScaleKey(  spep_2+154,  ryu1,  2.41,  1.2);
setEffMoveKey(  spep_2+154,  ryu1,  0,  0);
setEffRotateKey(  spep_2+154,  ryu1,  0);
setEffAlphaKey(  spep_2+154,  ryu1,  0);
setEffScaleKey(  spep_2+155,  ryu1,  2.54,  1.4);  --斜め
setEffMoveKey(  spep_2+155,  ryu1,  0,  0);
setEffRotateKey(  spep_2+155,  ryu1, 54);
setEffAlphaKey(  spep_2+155,  ryu1,  255);
setEffScaleKey(  spep_2+270,  ryu1,  2.54,  1.4);
setEffMoveKey(  spep_2+270,  ryu1,  0,  0);
setEffRotateKey(  spep_2+270,  ryu1, 54);
setEffAlphaKey(  spep_2+270,  ryu1,  255);

renda_b = entryEffect(  spep_2,  SP_03,  0x80,  -1,  0,  0,  0);  --連打・後

setEffScaleKey(  spep_2,  renda_b,  1.0,  1.0);
setEffMoveKey(  spep_2,  renda_b,  0,  0);
setEffRotateKey(  spep_2,  renda_b,  0);
setEffAlphaKey(  spep_2,  renda_b,  255);
setEffScaleKey(  spep_2+270,  renda_b,  1.0,  1.0);
setEffMoveKey(  spep_2+270,  renda_b,  0,  0);
setEffRotateKey(  spep_2+270,  renda_b,  0);
setEffAlphaKey(  spep_2+270,  renda_b,  255);

entryFadeBg( spep_2, 0, 270, 0, 0, 0, 0, 255);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+12; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, -5000,  -5000, 0); --味方位置
setMoveKey( SP_dodge, 0, -5000, -5000, 0); --味方位置

--敵側
setMoveKey( SP_dodge-1, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+1, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+2, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+3, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+4, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+5, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+8, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+9, 1, -5000, -5000 , 0 );
setMoveKey( SP_dodge+10, 1, -5000, -5000 , 0 );

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避されなかったとき
--------------------------------------

setMoveKey( spep_2+14, 1, -85.1, -37.3 , 0 );
setMoveKey( spep_2+16, 1, -71.9, -37.3 , 0 );
setMoveKey( spep_2+18, 1, -59.2, -37.3 , 0 );
setMoveKey( spep_2+19, 1, -35.7, -37.3 , 0 );
setMoveKey( spep_2+21, 1, -24.8, -37.3 , 0 );
setMoveKey( spep_2+23, 1, -14.4, -37.3 , 0 );
setMoveKey( spep_2+26, 1, -4.7, -37.3 , 0 );
setScaleKey( spep_2, 1, 1.3, 1.3 );
setScaleKey( spep_2+26, 1, 1.3, 1.3 );
setRotateKey( spep_2, 1, 0 );
setRotateKey( spep_2+26, 1, 0 );

changeAnime( spep_2+27, 1, 108 );  --くの字

setMoveKey( spep_2+27, 1, 0.6, 12.4 , 0 );
setMoveKey( spep_2+29, 1, 3.4, 12.4 , 0 );
setMoveKey( spep_2+31, 1, -1.9, 8.4 , 0 );
setMoveKey( spep_2+33, 1, 8.7, 12.4 , 0 );
setMoveKey( spep_2+35, 1, 7.3, 4.3 , 0 );
setMoveKey( spep_2+37, 1, 13.8, 12.2 , 0 );
setMoveKey( spep_2+39, 1, 8.3, 8.1 , 0 );
setMoveKey( spep_2+41, 1, 18.7, 12 , 0 );
setMoveKey( spep_2+43, 1, 17.1, 3.9 , 0 );
setMoveKey( spep_2+45, 1, 23.4, 11.8 , 0 );
setMoveKey( spep_2+47, 1, 17.6, 7.6 , 0 );
setMoveKey( spep_2+49, 1, 27.8, 11.4 , 0 );
setMoveKey( spep_2+51, 1, 31.5, 0.4 , 0 );
setMoveKey( spep_2+53, 1, 42.5, -2.9 , 0 );
setMoveKey( spep_2+55, 1, 40.9, -14.3 , 0 );
setMoveKey( spep_2+57, 1, 54.6, -17.9 , 0 );
setMoveKey( spep_2+59, 1, 55.8, -33.8 , 0 );
setMoveKey( spep_2+61, 1, 64.3, -33.8 , 0 );
setMoveKey( spep_2+63, 1, 64.2, -50.1 , 0 );
setMoveKey( spep_2+66, 1, 72.1, -40.8 , 0 );
setScaleKey( spep_2+27, 1, 2.21, 2.21 );
setScaleKey( spep_2+29, 1, 2.2, 2.2 );
setScaleKey( spep_2+31, 1, 2.19, 2.19 );
setScaleKey( spep_2+33, 1, 2.18, 2.18 );
setScaleKey( spep_2+35, 1, 2.17, 2.17 );
setScaleKey( spep_2+37, 1, 2.16, 2.16 );
setScaleKey( spep_2+39, 1, 2.15, 2.15 );
setScaleKey( spep_2+41, 1, 2.14, 2.14 );
setScaleKey( spep_2+43, 1, 2.13, 2.13 );
setScaleKey( spep_2+45, 1, 2.12, 2.12 );
setScaleKey( spep_2+47, 1, 2.11, 2.11 );
setScaleKey( spep_2+49, 1, 2.1, 2.1 );
setScaleKey( spep_2+51, 1, 1.99, 1.99 );
setScaleKey( spep_2+53, 1, 1.89, 1.89 );
setScaleKey( spep_2+55, 1, 1.78, 1.78 );
setScaleKey( spep_2+57, 1, 1.67, 1.67 );
setScaleKey( spep_2+59, 1, 1.56, 1.56 );
setScaleKey( spep_2+61, 1, 1.45, 1.45 );
setScaleKey( spep_2+63, 1, 1.35, 1.35 );
setScaleKey( spep_2+66, 1, 1.35, 1.35 );
setRotateKey( spep_2+27, 1, -10.7 );
setRotateKey( spep_2+66, 1, -10.7 );

changeAnime( spep_2+67, 1, 106 );  --仰け反り

setMoveKey( spep_2+67, 1, 8.9, -37.1 , 0 );
setMoveKey( spep_2+69, 1, -6.3, -27.2 , 0 );
setMoveKey( spep_2+71, 1, -25.5, -29.2 , 0 );
setMoveKey( spep_2+73, 1, -26.2, -11.6 , 0 );
setMoveKey( spep_2+75, 1, -42.8, -10 , 0 );
setMoveKey( spep_2+77, 1, -35.4, -0.4 , 0 );
setMoveKey( spep_2+79, 1, -44.1, -10.8 , 0 );
setMoveKey( spep_2+81, 1, -15.8, 34 , 0 );
setMoveKey( spep_2+83, 1, -21, 28.6 , 0 );
setMoveKey( spep_2+85, 1, -10.2, 39.2 , 0 );
setMoveKey( spep_2+87, 1, -15.4, 33.8 , 0 );
setMoveKey( spep_2+89, 1, -4.5, 44.4 , 0 );
setMoveKey( spep_2+91, 1, -17.7, 43 , 0 );
setMoveKey( spep_2+93, 1, 1.1, 49.6 , 0 );
setMoveKey( spep_2+95, 1, -0.1, 36.2 , 0 );
setMoveKey( spep_2+97, 1, -7.3, 72.9 , 0 );
setMoveKey( spep_2+99, 1, -14.8, 73.6 , 0 );
setMoveKey( spep_2+101, 1, -14.2, 82.4 , 0 );
setMoveKey( spep_2+103, 1, -29.7, 75.1 , 0 );
setMoveKey( spep_2+105, 1, -21.1, 91.9 , 0 );
setMoveKey( spep_2+107, 1, -28.6, 88.6 , 0 );
setMoveKey( spep_2+109, 1, -28, 101.3 , 0 );
setMoveKey( spep_2+111, 1, -15.9, 108.3 , 0 );
setMoveKey( spep_2+113, 1, -10.9, 121.7 , 0 );
setMoveKey( spep_2+115, 1, -21.9, 123.2 , 0 );
setMoveKey( spep_2+117, 1, -8.9, 132.6 , 0 );
setMoveKey( spep_2+119, 1, -11.9, 126 , 0 );
setMoveKey( spep_2+121, 1, -6.9, 143.4 , 0 );
setMoveKey( spep_2+123, 1, -17.9, 140.8 , 0 );
setMoveKey( spep_2+125, 1, -4.9, 154.3 , 0 );
setMoveKey( spep_2+127, 1, -7.9, 147.7 , 0 );
setMoveKey( spep_2+129, 1, -2.9, 165.1 , 0 );
setMoveKey( spep_2+131, 1, -2.9, 167 , 0 );
setMoveKey( spep_2+133, 1, -6.9, 152.9 , 0 );
setMoveKey( spep_2+135, 1, -2.9, 170.8 , 0 );
setMoveKey( spep_2+137, 1, -14.9, 168.7 , 0 );
setMoveKey( spep_2+139, 1, -2.9, 174.6 , 0 );
setMoveKey( spep_2+141, 1, -6.9, 164.5 , 0 );
setMoveKey( spep_2+143, 1, -2.9, 178.4 , 0 );
setMoveKey( spep_2+145, 1, -10.9, 172.3 , 0 );
setMoveKey( spep_2+147, 1, -2.9, 182.2 , 0 );
setMoveKey( spep_2+149, 1, -2.9, 184.1 , 0 );
setMoveKey( spep_2+151, 1, -2.9, 186 , 0 );
setMoveKey( spep_2+154, 1, -2.9, 187.9 , 0 );
setScaleKey( spep_2+67, 1, 1.34, 1.34 );
setScaleKey( spep_2+154, 1, 1.34, 1.34 );
setRotateKey( spep_2+67, 1, -63 );
setRotateKey( spep_2+69, 1, -58.3 );
setRotateKey( spep_2+71, 1, -53.6 );
setRotateKey( spep_2+73, 1, -53.3 );
setRotateKey( spep_2+75, 1, -53 );
setRotateKey( spep_2+77, 1, -52.7 );
setRotateKey( spep_2+79, 1, -52.4 );
setRotateKey( spep_2+81, 1, -52.1 );
setRotateKey( spep_2+83, 1, -51.3 );
setRotateKey( spep_2+85, 1, -50.5 );
setRotateKey( spep_2+87, 1, -49.7 );
setRotateKey( spep_2+89, 1, -48.8 );
setRotateKey( spep_2+91, 1, -48 );
setRotateKey( spep_2+93, 1, -47.2 );
setRotateKey( spep_2+95, 1, -46.4 );
setRotateKey( spep_2+97, 1, -49.7 );
setRotateKey( spep_2+99, 1, -49.4 );
setRotateKey( spep_2+101, 1, -49.1 );
setRotateKey( spep_2+103, 1, -48.8 );
setRotateKey( spep_2+105, 1, -48.6 );
setRotateKey( spep_2+107, 1, -48.3 );
setRotateKey( spep_2+109, 1, -48 );
setRotateKey( spep_2+111, 1, -47.6 );
setRotateKey( spep_2+113, 1, -47.3 );
setRotateKey( spep_2+115, 1, -47 );
setRotateKey( spep_2+117, 1, -46.7 );
setRotateKey( spep_2+119, 1, -46.4 );
setRotateKey( spep_2+121, 1, -46.1 );
setRotateKey( spep_2+123, 1, -45.8 );
setRotateKey( spep_2+125, 1, -45.5 );
setRotateKey( spep_2+127, 1, -45.2 );
setRotateKey( spep_2+129, 1, -44.9 );
setRotateKey( spep_2+154, 1, -44.9 );

changeAnime( spep_2+155, 1, 108 );  --くの字

setMoveKey( spep_2 +155, 1, 121.4, -44.8 , 0 );
--setMoveKey( spep_2 +157, 1, 130.1, -50.4 , 0 );
--setMoveKey( spep_2 +159, 1, 138.7, -55.9 , 0 );
--setMoveKey( spep_2 +161, 1, 147.2, -61.4 , 0 );
--setMoveKey( spep_2 +163, 1, 155.7, -66.8 , 0 );
--setMoveKey( spep_2 +165, 1, 164.1, -72.1 , 0 );
--setMoveKey( spep_2 +167, 1, 172.4, -77.4 , 0 );
--setMoveKey( spep_2 +169, 1, 180.7, -82.7 , 0 );
--setMoveKey( spep_2 +171, 1, 188.9, -87.9 , 0 );
--setMoveKey( spep_2 +173, 1, 196.9, -93 , 0 );
--setMoveKey( spep_2 +174, 1, 196.9, -93 , 0 );
setMoveKey( spep_2 +175, 1, 205, -98.1 , 0 );
setMoveKey( spep_2 +176, 1, 205, -98.1 , 0 );
--setMoveKey( spep_2 +177, 1, 205, -98.1 , 0 );
setMoveKey( spep_2 +177, 1, 482.9, -505.5 , 0 );
setMoveKey( spep_2 +178, 1, 482.9, -505.5 , 0 );
setMoveKey( spep_2 +179, 1, 760.2, -852.1 , 0 );
setMoveKey( spep_2 +180, 1, 760.2, -852.1 , 0 );

setDisp(  spep_2+181,  1,  0);  --非表示

--[[

setMoveKey( spep_2 +181, 1, 979.4, -1174.2 , 0 );
setMoveKey( spep_2 +183, 1, 1174, -1419.4 , 0 );
setMoveKey( spep_2 +185, 1, 1319.9, -1643.9 , 0 );
setMoveKey( spep_2 +187, 1, 1457.1, -1807.6 , 0 );
setMoveKey( spep_2 +189, 1, 1541.7, -1942.5 , 0 );
setMoveKey( spep_2 +191, 1, 1609.6, -2016.6 , 0 );
setMoveKey( spep_2 +193, 1, 1601.6, -2032.6 , 0 );
setMoveKey( spep_2 +195, 1, 1214.6, -1418 , 0 );
setMoveKey( spep_2 +197, 1, 950.6, -1118.5 , 0 );
setMoveKey( spep_2 +199, 1, 741.2, -847.9 , 0 );

]]
setDisp(  spep_2+201,  1,  1);  --表示
setMoveKey( spep_2 +201, 1, 546.5, -638.3 , 0 );
setMoveKey( spep_2 +202, 1, 546.5, -600.3 , 0 );
setMoveKey( spep_2 +203, 1, 390.4, -425.7 , 0 );
setMoveKey( spep_2 +204, 1, 390.4, -400.7 , 0 );
setMoveKey( spep_2 +205, 1, 248.9, -278.1 , 0 );  --追加
setMoveKey( spep_2 +206, 1, 248.9, -278.1 , 0 );
setMoveKey( spep_2 +207, 1, 162, -171.5 , 0 );
setMoveKey( spep_2 +208, 1, 162, -171.5 , 0 ); --追加
setMoveKey( spep_2 +209, 1, 166.6, -173.9 , 0 );
setMoveKey( spep_2 +211, 1, 178.9, -172.1 , 0 );
setMoveKey( spep_2 +213, 1, 175, -185.9 , 0 );
setMoveKey( spep_2 +215, 1, 194.7, -191.4 , 0 );
setMoveKey( spep_2 +217, 1, 198.2, -216.3 , 0 );
setMoveKey( spep_2 +219, 1, 209.5, -209 , 0 );
setMoveKey( spep_2 +221, 1, 204.4, -225.4 , 0 );
setMoveKey( spep_2 +223, 1, 223.2, -225.3 , 0 );
setMoveKey( spep_2 +225, 1, 221.7, -244.9 , 0 );
setMoveKey( spep_2 +227, 1, 235.9, -240.1 , 0 );
setMoveKey( spep_2 +229, 1, 233.9, -259 , 0 );
setMoveKey( spep_2 +231, 1, 239.6, -265.5 , 0 );
setMoveKey( spep_2 +233, 1, 241, -291.6 , 0 );
setMoveKey( spep_2 +235, 1, 250.2, -277.6 , 0 );
setMoveKey( spep_2 +237, 1, 247.2, -286.9 , 0 );
setMoveKey( spep_2 +239, 1, 259.9, -287.9 , 0 );
setMoveKey( spep_2 +241, 1, 260.4, -308.5 , 0 );
setMoveKey( spep_2 +243, 1, 268.4, -296.9 , 0 );
setMoveKey( spep_2 +245, 1, 260.3, -304.8 , 0 );
setMoveKey( spep_2 +247, 1, 275.9, -304.5 , 0 );
setMoveKey( spep_2 +249, 1, 275.3, -319.7 , 0 );
setMoveKey( spep_2 +251, 1, 282.4, -310.5 , 0 );
setMoveKey( spep_2 +253, 1, 273.2, -316.8 , 0 );
setMoveKey( spep_2 +255, 1, 287.7, -315 , 0 );
setMoveKey( spep_2 +257, 1, 281.9, -332.6 , 0 );
setMoveKey( spep_2 +259, 1, 292, -317.9 , 0 );
setMoveKey( spep_2 +261, 1, 293.8, -318.9 , 0 );
setMoveKey( spep_2 +263, 1, 291.3, -335.3 , 0 );
setMoveKey( spep_2 +265, 1, 296.5, -319.5 , 0 );
setMoveKey( spep_2+266, 1, 2000, -2000 , 0 );
setMoveKey( spep_2+267, 1, 2000, -2000 , 0 );
setMoveKey( spep_2+268, 1, 2000, -2000 , 0 );
setScaleKey( spep_2+155, 1, 2.11, 2.11 );
setScaleKey( spep_2+157, 1, 2.1, 2.1 );
setScaleKey( spep_2+159, 1, 2.09, 2.09 );
setScaleKey( spep_2+161, 1, 2.07, 2.07 );
setScaleKey( spep_2+163, 1, 2.06, 2.06 );
setScaleKey( spep_2+165, 1, 2.04, 2.04 );
setScaleKey( spep_2+167, 1, 2.03, 2.03 );
setScaleKey( spep_2+169, 1, 2.02, 2.02 );
setScaleKey( spep_2+171, 1, 2, 2 );
setScaleKey( spep_2+173, 1, 1.99, 1.99 );
setScaleKey( spep_2+175, 1, 1.97, 1.97 );
setScaleKey( spep_2+181, 1, 1.97, 1.97 );
setScaleKey( spep_2+183, 1, 1.96, 1.96 );
setScaleKey( spep_2+193, 1, 1.96, 1.96 );
setScaleKey( spep_2+195, 1, 1.85, 1.85 );
setScaleKey( spep_2+197, 1, 1.89, 1.89 );
setScaleKey( spep_2+199, 1, 1.93, 1.93 );
setScaleKey( spep_2+201, 1, 1.97, 1.97 );
setScaleKey( spep_2+203, 1, 2, 2 );
setScaleKey( spep_2+205, 1, 2.03, 2.03 );
setScaleKey( spep_2+207, 1, 2.07, 2.07 );
setScaleKey( spep_2+209, 1, 2.1, 2.1 );
setScaleKey( spep_2+211, 1, 2.14, 2.14 );
setScaleKey( spep_2+213, 1, 2.17, 2.17 );
setScaleKey( spep_2+215, 1, 2.2, 2.2 );
setScaleKey( spep_2+217, 1, 2.25, 2.25 );
setScaleKey( spep_2+219, 1, 2.28, 2.28 );
setScaleKey( spep_2+221, 1, 2.31, 2.31 );
setScaleKey( spep_2+223, 1, 2.34, 2.34 );
setScaleKey( spep_2+225, 1, 2.37, 2.37 );
setScaleKey( spep_2+227, 1, 2.39, 2.39 );
setScaleKey( spep_2+229, 1, 2.42, 2.42 );
setScaleKey( spep_2+231, 1, 2.46, 2.46 );
setScaleKey( spep_2+233, 1, 2.49, 2.49 );
setScaleKey( spep_2+235, 1, 2.51, 2.51 );
setScaleKey( spep_2+237, 1, 2.54, 2.54 );
setScaleKey( spep_2+239, 1, 2.56, 2.56 );
setScaleKey( spep_2+241, 1, 2.59, 2.59 );
setScaleKey( spep_2+243, 1, 2.62, 2.62 );
setScaleKey( spep_2+245, 1, 2.64, 2.64 );
setScaleKey( spep_2+247, 1, 2.67, 2.67 );
setScaleKey( spep_2+249, 1, 2.69, 2.69 );
setScaleKey( spep_2+251, 1, 2.71, 2.71 );
setScaleKey( spep_2+253, 1, 2.73, 2.73 );
setScaleKey( spep_2+255, 1, 2.76, 2.76 );
setScaleKey( spep_2+257, 1, 2.77, 2.77 );
setScaleKey( spep_2+259, 1, 2.79, 2.79 );
setScaleKey( spep_2+261, 1, 2.82, 2.82 );
setScaleKey( spep_2+263, 1, 2.83, 2.83 );
setScaleKey( spep_2+265, 1, 2.85, 2.85 );
setRotateKey( spep_2+155, 1, 42.5 );
setRotateKey( spep_2+265, 1, 42.5 );

setDisp( spep_2+270,  1,  0);  --敵非表示


playSe(  spep_2+27,  1009);
playSe(  spep_2+66,  1000);
playSe(  spep_2+81,  1001);
playSe(  spep_2+98,  1000);
playSe(  spep_2+110,  1001);
playSe(  spep_2+154,  1010);
playSe(  spep_2+205,  SE_09);

entryFade( spep_2+27, 0, 0, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+155, 0, 0, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_2+257, 10, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_3 = spep_2+270;

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

entryFade( spep_3+78, 10, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 放つ(120F)
------------------------------------------------------
spep_4 = spep_3+90;

shuchusen4 = entryEffectLife( spep_4, 906, 120, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.42,  2.05);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+120,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+120,  shuchusen4,  1.42,  2.05);
setEffRotateKey(  spep_4+120,  shuchusen4,  0);
setEffAlphaKey(  spep_4+120,  shuchusen4,  255);

hanatsu = entryEffect(  spep_4,  SP_04,  0x80,  -1,  0,  0,  0);  --放つ

setEffScaleKey(  spep_4,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_4,  hanatsu,  0,  0);
setEffRotateKey(  spep_4,  hanatsu,  0);
setEffAlphaKey(  spep_4,  hanatsu,  255);
setEffScaleKey(  spep_4+120,  hanatsu,  1.0,  1.0);
setEffMoveKey(  spep_4+120,  hanatsu,  0,  0);
setEffRotateKey(  spep_4+120,  hanatsu,  0);
setEffAlphaKey(  spep_4+120,  hanatsu,  255);

playSe(  spep_4+18,  1036);
playSe(  spep_4+38,  1036);
playSe(  spep_4+58,  1036);
playSe(  spep_4+78,  1036);
playSe(  spep_4+93,  SE_06);
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_4+113, 4, 4, 32, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発(180F)
------------------------------------------------------
spep_5 = spep_4+120;

bakuha = entryEffect(  spep_5,  1583,  0x80,  -1,  0,  0,  0);  --爆破

setEffScaleKey(  spep_5,  bakuha,  1.0,  1.0);
setEffMoveKey(  spep_5,  bakuha,  0,  0);
setEffRotateKey(  spep_5,  bakuha,  0);
setEffAlphaKey(  spep_5,  bakuha,  255);
setEffScaleKey(  spep_5+180,  bakuha,  1.0,  1.0);
setEffMoveKey(  spep_5+180,  bakuha,  0,  0);
setEffRotateKey(  spep_5+180,  bakuha,  0);
setEffAlphaKey(  spep_5+180,  bakuha,  255);

playSe(  spep_5,  SE_10);

-- ダメージ表示
dealDamage(spep_5+70);

entryFade( spep_5+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+170);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 溜め(160F)
------------------------------------------------------
spep_1 = 0;

shuchusen1 = entryEffectLife( spep_1+26, 906, 134, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1+26,  shuchusen1,  1.42,  2.02);
setEffMoveKey(  spep_1+26,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+26,  shuchusen1,  0);
setEffAlphaKey(  spep_1+26,  shuchusen1,  255);
setEffScaleKey(  spep_1+160,  shuchusen1,  1.42,  2.02);
setEffMoveKey(  spep_1+160,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+160,  shuchusen1,  0);
setEffAlphaKey(  spep_1+160,  shuchusen1,  255);

--書き文字エントリー
ctzuzu = entryEffectLife( spep_1+26,  10013, 38, 0x100, -1, 0, 20.1, 249.8 );  --ズズ

setEffMoveKey( spep_1+26, ctzuzu, 20.1, 249.8 , 0 );
setEffMoveKey( spep_1+28, ctzuzu, 23.5, 299.3 , 0 );
setEffMoveKey( spep_1+30, ctzuzu, 40.2, 359.2 , 0 );
setEffMoveKey( spep_1+32, ctzuzu, 31.2, 355 , 0 );
setEffMoveKey( spep_1+34, ctzuzu, 41.1, 364.8 , 0 );
setEffMoveKey( spep_1+64, ctzuzu, 41.1, 364.5 , 0 );
setEffScaleKey( spep_1+26, ctzuzu, 1.11, 1.11 );
setEffScaleKey( spep_1+28, ctzuzu, 1.98, 1.98 );
setEffScaleKey( spep_1+30, ctzuzu, 2.83, 2.83 );
setEffScaleKey( spep_1+32, ctzuzu, 2.92, 2.92 );
setEffScaleKey( spep_1+64, ctzuzu, 2.92, 2.92 );
setEffRotateKey( spep_1+26, ctzuzu, -5 );
setEffRotateKey( spep_1+64, ctzuzu, -5 );
setEffAlphaKey( spep_1+26, ctzuzu, 255 );
setEffAlphaKey( spep_1+46, ctzuzu, 255 );
setEffAlphaKey( spep_1+48, ctzuzu, 215 );
setEffAlphaKey( spep_1+50, ctzuzu, 164 );
setEffAlphaKey( spep_1+52, ctzuzu, 121 );
setEffAlphaKey( spep_1+54, ctzuzu, 84 );
setEffAlphaKey( spep_1+56, ctzuzu, 54 );
setEffAlphaKey( spep_1+58, ctzuzu, 30 );
setEffAlphaKey( spep_1+60, ctzuzu, 14 );
setEffAlphaKey( spep_1+62, ctzuzu, 3 );
setEffAlphaKey( spep_1+64, ctzuzu, 0 );

tame = entryEffect(  spep_1,  SP_05,  0x80,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_1,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1,  tame,  0,  0);
setEffRotateKey(  spep_1,  tame,  0);
setEffAlphaKey(  spep_1,  tame,  255);
setEffScaleKey(  spep_1+160,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+160,  tame,  0,  0);
setEffRotateKey(  spep_1+160,  tame,  0);
setEffAlphaKey(  spep_1+160,  tame,  255);

-- カットイン
--speff = entryEffect(  spep_1+67,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+67,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+80, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_1+80,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_1+80,  ctgogo,  0,  530);
setEffRotateKey(  spep_1+80,  ctgogo,  0);
setEffScaleKey(  spep_1+151,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_1+151,  ctgogo,  0,  530);
setEffRotateKey(  spep_1+151,  ctgogo,  0);

playSe(  spep_1+26,  SE_01);  --気溜め
playSe(  spep_1+80,  SE_04);  --カットイン音

entryFade( spep_1+25, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1+26, 0, 134, 0, 0, 0, 0, 200);          -- 黒　背景

entryFade( spep_1+154, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 連撃〜着地(270F)
------------------------------------------------------
spep_2 = 161;

shuchusen2 = entryEffectLife( spep_2, 906, 270, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.50,  2.01);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffScaleKey(  spep_2+128,  shuchusen2,  1.50,  2.01);
setEffMoveKey(  spep_2+128,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+128,  shuchusen2,  0);
setEffAlphaKey(  spep_2+128,  shuchusen2,  255);
setEffScaleKey(  spep_2+144,  shuchusen2,  1.50,  2.01);
setEffMoveKey(  spep_2+144,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+144,  shuchusen2,  0);
setEffAlphaKey(  spep_2+144,  shuchusen2,  0);
setEffScaleKey(  spep_2+155,  shuchusen2,  1.50,  2.01);
setEffMoveKey(  spep_2+155,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+155,  shuchusen2,  0);
setEffAlphaKey(  spep_2+155,  shuchusen2,  0);
setEffScaleKey(  spep_2+156,  shuchusen2,  1.32,  1.68);
setEffMoveKey(  spep_2+156,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+156,  shuchusen2,  0);
setEffAlphaKey(  spep_2+156,  shuchusen2,  255);
setEffScaleKey(  spep_2+270,  shuchusen2,  1.32,  1.68);
setEffMoveKey(  spep_2+270,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+270,  shuchusen2,  0);
setEffAlphaKey(  spep_2+270,  shuchusen2,  255);


--書き文字エントリー
ctga1 = entryEffectLife( spep_2+27,  10005, 26, 0x100, -1, 0, 16.1, 344 );  --ガッ

setEffShake(  spep_2+27,  ctga1,  26,  10);  --揺れ
setEffMoveKey( spep_2+27, ctga1, 16.1, 344 , 0 );
setEffMoveKey( spep_2+53, ctga1, 16.1, 344 , 0 );
setEffScaleKey( spep_2+27, ctga1, 0.91, 0.91 );
setEffScaleKey( spep_2+29, ctga1, 1.95, 1.95 );
setEffScaleKey( spep_2+31, ctga1, 2.48, 2.48 );
setEffScaleKey( spep_2+33, ctga1, 2.36, 2.36 );
setEffScaleKey( spep_2+35, ctga1, 2.24, 2.24 );
setEffScaleKey( spep_2+37, ctga1, 2.12, 2.12 );
setEffScaleKey( spep_2+39, ctga1, 2.01, 2.01 );
setEffScaleKey( spep_2+41, ctga1, 2, 2 );
setEffScaleKey( spep_2+43, ctga1, 1.99, 1.99 );
setEffScaleKey( spep_2+45, ctga1, 1.98, 1.98 );
setEffScaleKey( spep_2+47, ctga1, 1.97, 1.97 );
setEffScaleKey( spep_2+49, ctga1, 1.96, 1.96 );
setEffScaleKey( spep_2+51, ctga1, 1.95, 1.95 );
setEffScaleKey( spep_2+53, ctga1, 1.94, 1.94 );
setEffRotateKey( spep_2+27, ctga1, 4.3 );
setEffRotateKey( spep_2+29, ctga1, -9.1 );
setEffRotateKey( spep_2+31, ctga1, 4.3 );
setEffRotateKey( spep_2+33, ctga1, 12.9 );
setEffRotateKey( spep_2+35, ctga1, 4.1 );
setEffRotateKey( spep_2+27, ctga1, -6.6 );
setEffRotateKey( spep_2+39, ctga1, 4.3 );
setEffRotateKey( spep_2+53, ctga1, 4.3 );
setEffAlphaKey( spep_2+27, ctga1, 255 );
setEffAlphaKey( spep_2+41, ctga1, 255 );
setEffAlphaKey( spep_2+43, ctga1, 213 );
setEffAlphaKey( spep_2+45, ctga1, 170 );
setEffAlphaKey( spep_2+47, ctga1, 128 );
setEffAlphaKey( spep_2+49, ctga1, 85 );
setEffAlphaKey( spep_2+51, ctga1, 42 );
setEffAlphaKey( spep_2+53, ctga1, 0 );


ctdoga = entryEffectLife( spep_2+67, 10017, 54, 0x100, -1, 0, 19.9, 371 );  --ドガガ

setEffShake(  spep_2+67,  ctdoga,  54,  10);  --揺れ
setEffMoveKey( spep_2+67, ctdoga, 19.9, 371 , 0 );
setEffMoveKey( spep_2+69, ctdoga, 21.8, 367.8 , 0 );
setEffMoveKey( spep_2+71, ctdoga, 21.8, 365.7 , 0 );
setEffMoveKey( spep_2+73, ctdoga, 19.7, 360 , 0 );
setEffMoveKey( spep_2+75, ctdoga, 17.3, 354.1 , 0 );
setEffMoveKey( spep_2+77, ctdoga, 19.7, 360 , 0 );
setEffMoveKey( spep_2+111, ctdoga, 19.6, 357.9 , 0 );
setEffMoveKey( spep_2+113, ctdoga, 19.6, 357.9 , 0 );
setEffMoveKey( spep_2+115, ctdoga, 17.3, 354.1 , 0 );
setEffMoveKey( spep_2+121, ctdoga, 17.3, 354.1 , 0 );
setEffScaleKey( spep_2+67, ctdoga, 1.88, 1.88 );
setEffScaleKey( spep_2+69, ctdoga, 3.07, 3.07 );
setEffScaleKey( spep_2+71, ctdoga, 2.75, 2.75 );
setEffScaleKey( spep_2+121, ctdoga, 2.75, 2.75 );
setEffRotateKey( spep_2+67, ctdoga, 0 );
setEffRotateKey( spep_2+71, ctdoga, 0 );
setEffRotateKey( spep_2+73, ctdoga, 0 );
setEffRotateKey( spep_2+121, ctdoga, 0 );
setEffAlphaKey( spep_2+67, ctdoga, 255 );
setEffAlphaKey( spep_2+115, ctdoga, 255 );
setEffAlphaKey( spep_2+117, ctdoga, 179 );
setEffAlphaKey( spep_2+119, ctdoga, 102 );
setEffAlphaKey( spep_2+120, ctdoga, 26 );
setEffAlphaKey( spep_2+121, ctdoga, 0 );


ctga2 = entryEffectLife( spep_2+155,  10005, 22, 0x100, -1, 0, 190.1, 410.1 );  --ガッ

setEffShake(  spep_2+155,  ctga2,  22,  10);  --揺れ
setEffMoveKey( spep_2+155, ctga2, 190.1, 410.1 , 0 );
setEffMoveKey( spep_2+167, ctga2, 190.2, 410.2 , 0 );
setEffScaleKey( spep_2+155, ctga2, 0.77, 0.77 );
setEffScaleKey( spep_2+157, ctga2, 2.08, 2.08 );
setEffScaleKey( spep_2+159, ctga2, 2.64, 2.64 );
setEffScaleKey( spep_2+161, ctga2, 2.51, 2.51 );
setEffScaleKey( spep_2+163, ctga2, 2.38, 2.38 );
setEffScaleKey( spep_2+165, ctga2, 2.26, 2.26 );
setEffScaleKey( spep_2+167, ctga2, 2.13, 2.13 );
setEffScaleKey( spep_2+169, ctga2, 2.13, 2.13 );
setEffScaleKey( spep_2+171, ctga2, 2.11, 2.11 );
setEffScaleKey( spep_2+173, ctga2, 2.1, 2.1 );
setEffScaleKey( spep_2+175, ctga2, 2.09, 2.09 );
setEffScaleKey( spep_2+177, ctga2, 2.07, 2.07 );
setEffRotateKey( spep_2+155, ctga2, 21.2 );
setEffRotateKey( spep_2+157, ctga2, 7.9 );
setEffRotateKey( spep_2+159, ctga2, 21.2 );
setEffRotateKey( spep_2+161, ctga2, 29.8 );
setEffRotateKey( spep_2+163, ctga2, 21.1 );
setEffRotateKey( spep_2+165, ctga2, 10.3 );
setEffRotateKey( spep_2+167, ctga2, 21.2 );
setEffRotateKey( spep_2+169, ctga2, 21.1 );
setEffRotateKey( spep_2+171, ctga2, 21.1 );
setEffRotateKey( spep_2+177, ctga2, 21.2 );
setEffAlphaKey( spep_2+155, ctga2, 255 );
setEffAlphaKey( spep_2+169, ctga2, 255 );
setEffAlphaKey( spep_2+171, ctga2, 191 );
setEffAlphaKey( spep_2+173, ctga2, 128 );
setEffAlphaKey( spep_2+175, ctga2, 64 );
setEffAlphaKey( spep_2+177, ctga2, 0 );


renda_f = entryEffect(  spep_2,  SP_06,  0x100,  -1,  0,  0,  0);  --連打・前

setEffScaleKey(  spep_2,  renda_f,  1.0,  1.0);
setEffMoveKey(  spep_2,  renda_f,  0,  0);
setEffRotateKey(  spep_2,  renda_f,  0);
setEffAlphaKey(  spep_2,  renda_f,  255);
setEffScaleKey(  spep_2+270,  renda_f,  1.0,  1.0);
setEffMoveKey(  spep_2+270,  renda_f,  0,  0);
setEffRotateKey(  spep_2+270,  renda_f,  0);
setEffAlphaKey(  spep_2+270,  renda_f,  255);

--敵の動き
setDisp( spep_2, 1, 1 );
changeAnime( spep_2, 1, 100 );

setMoveKey( spep_2, 1, -616.7, -37.3 , 0 );
setMoveKey( spep_2+2, 1, -475.7, -37.3 , 0 );
setMoveKey( spep_2+4, 1, -354.9, -37.3 , 0 );
setMoveKey( spep_2+6, 1, -254.3, -37.3 , 0 );
setMoveKey( spep_2+8, 1, -173.7, -37.3 , 0 );
setMoveKey( spep_2+10, 1, -113.3, -37.3 , 0 );
setMoveKey( spep_2+12, 1, -98.9, -37.3 , 0 );

-- 流線
ryu1 = entryEffectLife(  spep_2,  920,  270,  0x80,  -1,  0,  0,  0);  --流線

setEffScaleKey(  spep_2,  ryu1,  2.41,  1.2);  --横向き
setEffMoveKey(  spep_2,  ryu1,  0,  0);
setEffRotateKey(  spep_2,  ryu1,  0);
setEffAlphaKey(  spep_2,  ryu1,  255);
setEffScaleKey(  spep_2+128,  ryu1,  2.41,  1.2);
setEffMoveKey(  spep_2+128,  ryu1,  0,  0);
setEffRotateKey(  spep_2+128,  ryu1,  0);
setEffAlphaKey(  spep_2+128,  ryu1,  255);
setEffScaleKey(  spep_2+140,  ryu1,  2.41,  1.2);
setEffMoveKey(  spep_2+140,  ryu1,  0,  0);
setEffRotateKey(  spep_2+140,  ryu1,  0);
setEffAlphaKey(  spep_2+140,  ryu1,  0);
setEffScaleKey(  spep_2+154,  ryu1,  2.41,  1.2);
setEffMoveKey(  spep_2+154,  ryu1,  0,  0);
setEffRotateKey(  spep_2+154,  ryu1,  0);
setEffAlphaKey(  spep_2+154,  ryu1,  0);
setEffScaleKey(  spep_2+155,  ryu1,  2.54,  1.4);  --斜め
setEffMoveKey(  spep_2+155,  ryu1,  0,  0);
setEffRotateKey(  spep_2+155,  ryu1, 54);
setEffAlphaKey(  spep_2+155,  ryu1,  255);
setEffScaleKey(  spep_2+270,  ryu1,  2.54,  1.4);
setEffMoveKey(  spep_2+270,  ryu1,  0,  0);
setEffRotateKey(  spep_2+270,  ryu1, 54);
setEffAlphaKey(  spep_2+270,  ryu1,  255);

renda_b = entryEffect(  spep_2,  SP_03,  0x80,  -1,  0,  0,  0);  --連打・後

setEffScaleKey(  spep_2,  renda_b,  1.0,  1.0);
setEffMoveKey(  spep_2,  renda_b,  0,  0);
setEffRotateKey(  spep_2,  renda_b,  0);
setEffAlphaKey(  spep_2,  renda_b,  255);
setEffScaleKey(  spep_2+270,  renda_b,  1.0,  1.0);
setEffMoveKey(  spep_2+270,  renda_b,  0,  0);
setEffRotateKey(  spep_2+270,  renda_b,  0);
setEffAlphaKey(  spep_2+270,  renda_b,  255);

entryFadeBg( spep_2, 0, 270, 0, 0, 0, 0, 255);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+12; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, -5000,  -5000, 0); --味方位置
setMoveKey( SP_dodge, 0, -5000, -5000, 0); --味方位置

--敵側
setMoveKey( SP_dodge-1, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+1, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+2, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+3, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+4, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+5, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+8, 1, -98.9, -37.3 , 0 );
setMoveKey( SP_dodge+9, 1, -5000, -5000 , 0 );
setMoveKey( SP_dodge+10, 1, -5000, -5000 , 0 );

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避されなかったとき
--------------------------------------

setMoveKey( spep_2+14, 1, -85.1, -37.3 , 0 );
setMoveKey( spep_2+16, 1, -71.9, -37.3 , 0 );
setMoveKey( spep_2+18, 1, -59.2, -37.3 , 0 );
setMoveKey( spep_2+19, 1, -35.7, -37.3 , 0 );
setMoveKey( spep_2+21, 1, -24.8, -37.3 , 0 );
setMoveKey( spep_2+23, 1, -14.4, -37.3 , 0 );
setMoveKey( spep_2+26, 1, -4.7, -37.3 , 0 );
setScaleKey( spep_2, 1, 1.3, 1.3 );
setScaleKey( spep_2+26, 1, 1.3, 1.3 );
setRotateKey( spep_2, 1, 0 );
setRotateKey( spep_2+26, 1, 0 );

changeAnime( spep_2+27, 1, 108 );  --くの字

setMoveKey( spep_2+27, 1, 0.6, 12.4 , 0 );
setMoveKey( spep_2+29, 1, 3.4, 12.4 , 0 );
setMoveKey( spep_2+31, 1, -1.9, 8.4 , 0 );
setMoveKey( spep_2+33, 1, 8.7, 12.4 , 0 );
setMoveKey( spep_2+35, 1, 7.3, 4.3 , 0 );
setMoveKey( spep_2+37, 1, 13.8, 12.2 , 0 );
setMoveKey( spep_2+39, 1, 8.3, 8.1 , 0 );
setMoveKey( spep_2+41, 1, 18.7, 12 , 0 );
setMoveKey( spep_2+43, 1, 17.1, 3.9 , 0 );
setMoveKey( spep_2+45, 1, 23.4, 11.8 , 0 );
setMoveKey( spep_2+47, 1, 17.6, 7.6 , 0 );
setMoveKey( spep_2+49, 1, 27.8, 11.4 , 0 );
setMoveKey( spep_2+51, 1, 31.5, 0.4 , 0 );
setMoveKey( spep_2+53, 1, 42.5, -2.9 , 0 );
setMoveKey( spep_2+55, 1, 40.9, -14.3 , 0 );
setMoveKey( spep_2+57, 1, 54.6, -17.9 , 0 );
setMoveKey( spep_2+59, 1, 55.8, -33.8 , 0 );
setMoveKey( spep_2+61, 1, 64.3, -33.8 , 0 );
setMoveKey( spep_2+63, 1, 64.2, -50.1 , 0 );
setMoveKey( spep_2+66, 1, 72.1, -40.8 , 0 );
setScaleKey( spep_2+27, 1, 2.21, 2.21 );
setScaleKey( spep_2+29, 1, 2.2, 2.2 );
setScaleKey( spep_2+31, 1, 2.19, 2.19 );
setScaleKey( spep_2+33, 1, 2.18, 2.18 );
setScaleKey( spep_2+35, 1, 2.17, 2.17 );
setScaleKey( spep_2+37, 1, 2.16, 2.16 );
setScaleKey( spep_2+39, 1, 2.15, 2.15 );
setScaleKey( spep_2+41, 1, 2.14, 2.14 );
setScaleKey( spep_2+43, 1, 2.13, 2.13 );
setScaleKey( spep_2+45, 1, 2.12, 2.12 );
setScaleKey( spep_2+47, 1, 2.11, 2.11 );
setScaleKey( spep_2+49, 1, 2.1, 2.1 );
setScaleKey( spep_2+51, 1, 1.99, 1.99 );
setScaleKey( spep_2+53, 1, 1.89, 1.89 );
setScaleKey( spep_2+55, 1, 1.78, 1.78 );
setScaleKey( spep_2+57, 1, 1.67, 1.67 );
setScaleKey( spep_2+59, 1, 1.56, 1.56 );
setScaleKey( spep_2+61, 1, 1.45, 1.45 );
setScaleKey( spep_2+63, 1, 1.35, 1.35 );
setScaleKey( spep_2+66, 1, 1.35, 1.35 );
setRotateKey( spep_2+27, 1, -10.7 );
setRotateKey( spep_2+66, 1, -10.7 );

changeAnime( spep_2+67, 1, 106 );  --仰け反り

setMoveKey( spep_2+67, 1, 8.9, -37.1 , 0 );
setMoveKey( spep_2+69, 1, -6.3, -27.2 , 0 );
setMoveKey( spep_2+71, 1, -25.5, -29.2 , 0 );
setMoveKey( spep_2+73, 1, -26.2, -11.6 , 0 );
setMoveKey( spep_2+75, 1, -42.8, -10 , 0 );
setMoveKey( spep_2+77, 1, -35.4, -0.4 , 0 );
setMoveKey( spep_2+79, 1, -44.1, -10.8 , 0 );
setMoveKey( spep_2+81, 1, -15.8, 34 , 0 );
setMoveKey( spep_2+83, 1, -21, 28.6 , 0 );
setMoveKey( spep_2+85, 1, -10.2, 39.2 , 0 );
setMoveKey( spep_2+87, 1, -15.4, 33.8 , 0 );
setMoveKey( spep_2+89, 1, -4.5, 44.4 , 0 );
setMoveKey( spep_2+91, 1, -17.7, 43 , 0 );
setMoveKey( spep_2+93, 1, 1.1, 49.6 , 0 );
setMoveKey( spep_2+95, 1, -0.1, 36.2 , 0 );
setMoveKey( spep_2+97, 1, -7.3, 72.9 , 0 );
setMoveKey( spep_2+99, 1, -14.8, 73.6 , 0 );
setMoveKey( spep_2+101, 1, -14.2, 82.4 , 0 );
setMoveKey( spep_2+103, 1, -29.7, 75.1 , 0 );
setMoveKey( spep_2+105, 1, -21.1, 91.9 , 0 );
setMoveKey( spep_2+107, 1, -28.6, 88.6 , 0 );
setMoveKey( spep_2+109, 1, -28, 101.3 , 0 );
setMoveKey( spep_2+111, 1, -15.9, 108.3 , 0 );
setMoveKey( spep_2+113, 1, -10.9, 121.7 , 0 );
setMoveKey( spep_2+115, 1, -21.9, 123.2 , 0 );
setMoveKey( spep_2+117, 1, -8.9, 132.6 , 0 );
setMoveKey( spep_2+119, 1, -11.9, 126 , 0 );
setMoveKey( spep_2+121, 1, -6.9, 143.4 , 0 );
setMoveKey( spep_2+123, 1, -17.9, 140.8 , 0 );
setMoveKey( spep_2+125, 1, -4.9, 154.3 , 0 );
setMoveKey( spep_2+127, 1, -7.9, 147.7 , 0 );
setMoveKey( spep_2+129, 1, -2.9, 165.1 , 0 );
setMoveKey( spep_2+131, 1, -2.9, 167 , 0 );
setMoveKey( spep_2+133, 1, -6.9, 152.9 , 0 );
setMoveKey( spep_2+135, 1, -2.9, 170.8 , 0 );
setMoveKey( spep_2+137, 1, -14.9, 168.7 , 0 );
setMoveKey( spep_2+139, 1, -2.9, 174.6 , 0 );
setMoveKey( spep_2+141, 1, -6.9, 164.5 , 0 );
setMoveKey( spep_2+143, 1, -2.9, 178.4 , 0 );
setMoveKey( spep_2+145, 1, -10.9, 172.3 , 0 );
setMoveKey( spep_2+147, 1, -2.9, 182.2 , 0 );
setMoveKey( spep_2+149, 1, -2.9, 184.1 , 0 );
setMoveKey( spep_2+151, 1, -2.9, 186 , 0 );
setMoveKey( spep_2+154, 1, -2.9, 187.9 , 0 );
setScaleKey( spep_2+67, 1, 1.34, 1.34 );
setScaleKey( spep_2+154, 1, 1.34, 1.34 );
setRotateKey( spep_2+67, 1, -63 );
setRotateKey( spep_2+69, 1, -58.3 );
setRotateKey( spep_2+71, 1, -53.6 );
setRotateKey( spep_2+73, 1, -53.3 );
setRotateKey( spep_2+75, 1, -53 );
setRotateKey( spep_2+77, 1, -52.7 );
setRotateKey( spep_2+79, 1, -52.4 );
setRotateKey( spep_2+81, 1, -52.1 );
setRotateKey( spep_2+83, 1, -51.3 );
setRotateKey( spep_2+85, 1, -50.5 );
setRotateKey( spep_2+87, 1, -49.7 );
setRotateKey( spep_2+89, 1, -48.8 );
setRotateKey( spep_2+91, 1, -48 );
setRotateKey( spep_2+93, 1, -47.2 );
setRotateKey( spep_2+95, 1, -46.4 );
setRotateKey( spep_2+97, 1, -49.7 );
setRotateKey( spep_2+99, 1, -49.4 );
setRotateKey( spep_2+101, 1, -49.1 );
setRotateKey( spep_2+103, 1, -48.8 );
setRotateKey( spep_2+105, 1, -48.6 );
setRotateKey( spep_2+107, 1, -48.3 );
setRotateKey( spep_2+109, 1, -48 );
setRotateKey( spep_2+111, 1, -47.6 );
setRotateKey( spep_2+113, 1, -47.3 );
setRotateKey( spep_2+115, 1, -47 );
setRotateKey( spep_2+117, 1, -46.7 );
setRotateKey( spep_2+119, 1, -46.4 );
setRotateKey( spep_2+121, 1, -46.1 );
setRotateKey( spep_2+123, 1, -45.8 );
setRotateKey( spep_2+125, 1, -45.5 );
setRotateKey( spep_2+127, 1, -45.2 );
setRotateKey( spep_2+129, 1, -44.9 );
setRotateKey( spep_2+154, 1, -44.9 );

changeAnime( spep_2+155, 1, 108 );  --くの字

setMoveKey( spep_2 +155, 1, 121.4, -44.8 , 0 );
--setMoveKey( spep_2 +157, 1, 130.1, -50.4 , 0 );
--setMoveKey( spep_2 +159, 1, 138.7, -55.9 , 0 );
--setMoveKey( spep_2 +161, 1, 147.2, -61.4 , 0 );
--setMoveKey( spep_2 +163, 1, 155.7, -66.8 , 0 );
--setMoveKey( spep_2 +165, 1, 164.1, -72.1 , 0 );
--setMoveKey( spep_2 +167, 1, 172.4, -77.4 , 0 );
--setMoveKey( spep_2 +169, 1, 180.7, -82.7 , 0 );
--setMoveKey( spep_2 +171, 1, 188.9, -87.9 , 0 );
--setMoveKey( spep_2 +173, 1, 196.9, -93 , 0 );
setMoveKey( spep_2 +174, 1, 196.9, -93 , 0 );
setMoveKey( spep_2 +175, 1, 205, -98.1 , 0 );
setMoveKey( spep_2 +176, 1, 205, -98.1 , 0 );
setMoveKey( spep_2 +177, 1, 482.9, -505.5 , 0 );
setMoveKey( spep_2 +178, 1, 482.9, -505.5 , 0 );
setMoveKey( spep_2 +179, 1, 760.2, -852.1 , 0 );
setMoveKey( spep_2 +180, 1, 760.2, -852.1 , 0 );

setDisp(spep_2+181,  1,  0);  --非表示

--[[
setMoveKey( spep_2 +181, 1, 979.4, -1174.2 , 0 );
setMoveKey( spep_2 +183, 1, 1174, -1419.4 , 0 );
setMoveKey( spep_2 +185, 1, 1319.9, -1643.9 , 0 );
setMoveKey( spep_2 +187, 1, 1457.1, -1807.6 , 0 );
setMoveKey( spep_2 +189, 1, 1541.7, -1942.5 , 0 );
setMoveKey( spep_2 +191, 1, 1609.6, -2016.6 , 0 );
setMoveKey( spep_2 +193, 1, 1601.6, -2032.6 , 0 );
setMoveKey( spep_2 +195, 1, 1214.6, -1418 , 0 );
setMoveKey( spep_2 +197, 1, 950.6, -1118.5 , 0 );
setMoveKey( spep_2 +199, 1, 741.2, -847.9 , 0 );
]]

setDisp(  spep_2+201,  1,  1);  --表示

setMoveKey( spep_2 +201, 1, 546.5, -638.3 , 0 );
setMoveKey( spep_2 +202, 1, 546.5, -600.3 , 0 );
setMoveKey( spep_2 +203, 1, 390.4, -425.7 , 0 );
setMoveKey( spep_2 +204, 1, 390.4, -400.7 , 0 );
setMoveKey( spep_2 +205, 1, 248.9, -278.1 , 0 );  --追加
setMoveKey( spep_2 +206, 1, 248.9, -278.1 , 0 );
setMoveKey( spep_2 +207, 1, 162, -171.5 , 0 );
setMoveKey( spep_2 +208, 1, 162, -171.5 , 0 );  --追加
setMoveKey( spep_2 +209, 1, 166.6, -173.9 , 0 );
setMoveKey( spep_2 +211, 1, 178.9, -172.1 , 0 );
setMoveKey( spep_2 +213, 1, 175, -185.9 , 0 );
setMoveKey( spep_2 +215, 1, 194.7, -191.4 , 0 );
setMoveKey( spep_2 +217, 1, 198.2, -216.3 , 0 );
setMoveKey( spep_2 +219, 1, 209.5, -209 , 0 );
setMoveKey( spep_2 +221, 1, 204.4, -225.4 , 0 );
setMoveKey( spep_2 +223, 1, 223.2, -225.3 , 0 );
setMoveKey( spep_2 +225, 1, 221.7, -244.9 , 0 );
setMoveKey( spep_2 +227, 1, 235.9, -240.1 , 0 );
setMoveKey( spep_2 +229, 1, 233.9, -259 , 0 );
setMoveKey( spep_2 +231, 1, 239.6, -265.5 , 0 );
setMoveKey( spep_2 +233, 1, 241, -291.6 , 0 );
setMoveKey( spep_2 +235, 1, 250.2, -277.6 , 0 );
setMoveKey( spep_2 +237, 1, 247.2, -286.9 , 0 );
setMoveKey( spep_2 +239, 1, 259.9, -287.9 , 0 );
setMoveKey( spep_2 +241, 1, 260.4, -308.5 , 0 );
setMoveKey( spep_2 +243, 1, 268.4, -296.9 , 0 );
setMoveKey( spep_2 +245, 1, 260.3, -304.8 , 0 );
setMoveKey( spep_2 +247, 1, 275.9, -304.5 , 0 );
setMoveKey( spep_2 +249, 1, 275.3, -319.7 , 0 );
setMoveKey( spep_2 +251, 1, 282.4, -310.5 , 0 );
setMoveKey( spep_2 +253, 1, 273.2, -316.8 , 0 );
setMoveKey( spep_2 +255, 1, 287.7, -315 , 0 );
setMoveKey( spep_2 +257, 1, 281.9, -332.6 , 0 );
setMoveKey( spep_2 +259, 1, 292, -317.9 , 0 );
setMoveKey( spep_2 +261, 1, 293.8, -318.9 , 0 );
setMoveKey( spep_2 +263, 1, 291.3, -335.3 , 0 );
setMoveKey( spep_2 +265, 1, 296.5, -319.5 , 0 );
setMoveKey( spep_2+266, 1, 2000, -2000 , 0 );
setMoveKey( spep_2+267, 1, 2000, -2000 , 0 );
setMoveKey( spep_2+268, 1, 2000, -2000 , 0 );
setScaleKey( spep_2+155, 1, 2.11, 2.11 );
setScaleKey( spep_2+157, 1, 2.1, 2.1 );
setScaleKey( spep_2+159, 1, 2.09, 2.09 );
setScaleKey( spep_2+161, 1, 2.07, 2.07 );
setScaleKey( spep_2+163, 1, 2.06, 2.06 );
setScaleKey( spep_2+165, 1, 2.04, 2.04 );
setScaleKey( spep_2+167, 1, 2.03, 2.03 );
setScaleKey( spep_2+169, 1, 2.02, 2.02 );
setScaleKey( spep_2+171, 1, 2, 2 );
setScaleKey( spep_2+173, 1, 1.99, 1.99 );
setScaleKey( spep_2+175, 1, 1.97, 1.97 );
setScaleKey( spep_2+181, 1, 1.97, 1.97 );
setScaleKey( spep_2+183, 1, 1.96, 1.96 );
setScaleKey( spep_2+193, 1, 1.96, 1.96 );
setScaleKey( spep_2+195, 1, 1.85, 1.85 );
setScaleKey( spep_2+197, 1, 1.89, 1.89 );
setScaleKey( spep_2+199, 1, 1.93, 1.93 );
setScaleKey( spep_2+201, 1, 1.97, 1.97 );
setScaleKey( spep_2+203, 1, 2, 2 );
setScaleKey( spep_2+205, 1, 2.03, 2.03 );
setScaleKey( spep_2+207, 1, 2.07, 2.07 );
setScaleKey( spep_2+209, 1, 2.1, 2.1 );
setScaleKey( spep_2+211, 1, 2.14, 2.14 );
setScaleKey( spep_2+213, 1, 2.17, 2.17 );
setScaleKey( spep_2+215, 1, 2.2, 2.2 );
setScaleKey( spep_2+217, 1, 2.25, 2.25 );
setScaleKey( spep_2+219, 1, 2.28, 2.28 );
setScaleKey( spep_2+221, 1, 2.31, 2.31 );
setScaleKey( spep_2+223, 1, 2.34, 2.34 );
setScaleKey( spep_2+225, 1, 2.37, 2.37 );
setScaleKey( spep_2+227, 1, 2.39, 2.39 );
setScaleKey( spep_2+229, 1, 2.42, 2.42 );
setScaleKey( spep_2+231, 1, 2.46, 2.46 );
setScaleKey( spep_2+233, 1, 2.49, 2.49 );
setScaleKey( spep_2+235, 1, 2.51, 2.51 );
setScaleKey( spep_2+237, 1, 2.54, 2.54 );
setScaleKey( spep_2+239, 1, 2.56, 2.56 );
setScaleKey( spep_2+241, 1, 2.59, 2.59 );
setScaleKey( spep_2+243, 1, 2.62, 2.62 );
setScaleKey( spep_2+245, 1, 2.64, 2.64 );
setScaleKey( spep_2+247, 1, 2.67, 2.67 );
setScaleKey( spep_2+249, 1, 2.69, 2.69 );
setScaleKey( spep_2+251, 1, 2.71, 2.71 );
setScaleKey( spep_2+253, 1, 2.73, 2.73 );
setScaleKey( spep_2+255, 1, 2.76, 2.76 );
setScaleKey( spep_2+257, 1, 2.77, 2.77 );
setScaleKey( spep_2+259, 1, 2.79, 2.79 );
setScaleKey( spep_2+261, 1, 2.82, 2.82 );
setScaleKey( spep_2+263, 1, 2.83, 2.83 );
setScaleKey( spep_2+265, 1, 2.85, 2.85 );
setRotateKey( spep_2+155, 1, 42.5 );
setRotateKey( spep_2+265, 1, 42.5 );

setDisp( spep_2+270,  1,  0);  --敵非表示


playSe(  spep_2+27,  1009);
playSe(  spep_2+66,  1000);
playSe(  spep_2+81,  1001);
playSe(  spep_2+98,  1000);
playSe(  spep_2+110,  1001);
playSe(  spep_2+154,  1010);
playSe(  spep_2+205,  SE_09);

entryFade( spep_2+27, 0, 0, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+155, 0, 0, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_2+257, 10, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_3 = spep_2+270;

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

entryFade( spep_3+78, 10, 5, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 放つ(120F)
------------------------------------------------------
spep_4 = spep_3+90;

shuchusen4 = entryEffectLife( spep_4, 906, 120, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.42,  2.05);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+120,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+120,  shuchusen4,  1.42,  2.05);
setEffRotateKey(  spep_4+120,  shuchusen4,  0);
setEffAlphaKey(  spep_4+120,  shuchusen4,  255);

hanatsu = entryEffect(  spep_4,  SP_04,  0x80,  -1,  0,  0,  0);  --放つ

setEffScaleKey(  spep_4,  hanatsu,  -1.0,  1.0);
setEffMoveKey(  spep_4,  hanatsu,  0,  0);
setEffRotateKey(  spep_4,  hanatsu,  0);
setEffAlphaKey(  spep_4,  hanatsu,  255);
setEffScaleKey(  spep_4+120,  hanatsu,  -1.0,  1.0);
setEffMoveKey(  spep_4+120,  hanatsu,  0,  0);
setEffRotateKey(  spep_4+120,  hanatsu,  0);
setEffAlphaKey(  spep_4+120,  hanatsu,  255);

playSe(  spep_4+18,  1036);
playSe(  spep_4+38,  1036);
playSe(  spep_4+58,  1036);
playSe(  spep_4+78,  1036);
playSe(  spep_4+93,  SE_06);
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_4+113, 4, 4, 32, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発(180F)
------------------------------------------------------
spep_5 = spep_4+120;

bakuha = entryEffect(  spep_5,  1583,  0x80,  -1,  0,  0,  0);  --爆破

setEffScaleKey(  spep_5,  bakuha,  1.0,  1.0);
setEffMoveKey(  spep_5,  bakuha,  0,  0);
setEffRotateKey(  spep_5,  bakuha,  0);
setEffAlphaKey(  spep_5,  bakuha,  255);
setEffScaleKey(  spep_5+180,  bakuha,  1.0,  1.0);
setEffMoveKey(  spep_5+180,  bakuha,  0,  0);
setEffRotateKey(  spep_5+180,  bakuha,  0);
setEffAlphaKey(  spep_5+180,  bakuha,  255);

playSe(  spep_5,  SE_10);

-- ダメージ表示
dealDamage(spep_5+70);

entryFade( spep_5+160, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+170);

end

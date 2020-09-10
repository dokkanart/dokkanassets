-- トランクス＆悟天（マーロンなし）

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;


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

SP_01 = 151774  --気溜め(75Fまで)
SP_02 = 151775  --突進
SP_03 = 151776  --格闘前
SP_04 = 151777  --格闘後

SP_05 = 151778  --気溜め（敵）(75Fまで)
SP_06 = 151779  --突進（敵）
SP_07 = 151780  --格闘前（敵）
SP_08 = 151781  --格闘後（敵）

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -2000,  0,  0);
setMoveKey(   1,   0,    -2000,  0,  0);
setMoveKey(   2,   0,    -2000,  0,  0);
setMoveKey(   3,   0,    -2000,  0,  0);
setMoveKey(   4,   0,    -2000,  0,  0);
setMoveKey(   5,   0,    -2000,  0,  0);
setMoveKey(   6,   0,    -2000,  0,  0);
setMoveKey(   20,  0,    -2000,  0,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);
setScaleKey(  20,  0,  1.5,  1.5);

-- 敵

setMoveKey(   0,   1,    -2000,  0,  0);
setMoveKey(   1,   1,    -2000,  0,  0);
setMoveKey(   2,   1,    -2000,  0,  0);
setMoveKey(   3,   1,    -2000,  0,  0);
setMoveKey(   4,   1,    -2000,  0,  0);
setMoveKey(   5,   1,    -2000,  0,  0);
setMoveKey(   6,   1,    -2000,  0,  0);
setMoveKey(   20,  1,    -2000,  0,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);
setScaleKey(   20,   1, 1.5, 1.5);


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 気溜め_マーロンなし(150F)
------------------------------------------------------
spep_1 = 0;

shuchusen1 = entryEffectLife( spep_1+38, 906, 112, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_1+38,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+38,  shuchusen1,  1.55,  1.55);
setEffRotateKey(  spep_1+38,  shuchusen1,  0);
setEffAlphaKey(  spep_1+38,  shuchusen1,  255);
setEffMoveKey(  spep_1+150,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+150,  shuchusen1,  1.55,  1.55);
setEffRotateKey(  spep_1+150,  shuchusen1,  0);
setEffAlphaKey(  spep_1+150,  shuchusen1,  255);

--書き文字エントリー
ctzuzu = entryEffectLife( spep_1+38, 10013, 22,  0x100,  -1, 0,  0,  0);  --ズズズン

setEffShake(  spep_1+38,  ctzuzu,  42,  10);
setEffMoveKey( spep_1+38, ctzuzu, 22, 211.9 , 0 );
setEffMoveKey( spep_1+40, ctzuzu, 29.8, 266.6 , 0 );
setEffMoveKey( spep_1+42, ctzuzu, 49.4, 330.6 , 0 );
setEffMoveKey( spep_1+44, ctzuzu, 46.2, 352.4 , 0 );
setEffMoveKey( spep_1+46, ctzuzu, 51.2, 346.6 , 0 );
setEffMoveKey( spep_1+48, ctzuzu, 36.5, 321.7 , 0 );
setEffMoveKey( spep_1+50, ctzuzu, 46, 329.9 , 0 );
setEffMoveKey( spep_1+60, ctzuzu, 46, 329.9 , 0 );
setEffScaleKey( spep_1+38, ctzuzu, 1.12, 1.11 );
setEffScaleKey( spep_1+40, ctzuzu, 1.99, 1.98 );
setEffScaleKey( spep_1+42, ctzuzu, 2.84, 2.83 );
setEffScaleKey( spep_1+44, ctzuzu, 2.93, 2.92 );
setEffScaleKey( spep_1+60, ctzuzu, 2.93, 2.92 );
setEffRotateKey( spep_1+38, ctzuzu, 0 );
setEffRotateKey( spep_1+60, ctzuzu, 0 );
setEffAlphaKey( spep_1+38, ctzuzu, 255 );
setEffAlphaKey( spep_1+58, ctzuzu, 255 );
setEffAlphaKey( spep_1+60, ctzuzu, 0 );


tame = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_1,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1,  tame,  0,  0);
setEffRotateKey(  spep_1,  tame,  0);
setEffAlphaKey(  spep_1,  tame,  255);
setEffScaleKey(  spep_1+150,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+150,  tame,  0,  0);
setEffRotateKey(  spep_1+150,  tame,  0);
setEffAlphaKey(  spep_1+150,  tame,  255);
setEffScaleKey(  spep_1+151,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+151,  tame,  0,  0);
setEffRotateKey(  spep_1+151,  tame,  0);
setEffAlphaKey(  spep_1+151,  tame,  0);
setEffScaleKey(  spep_1+240,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+240,  tame,  0,  0);
setEffRotateKey(  spep_1+240,  tame,  0);
setEffAlphaKey(  spep_1+240,  tame,  0);

-- カットイン
speff = entryEffect(  spep_1+51,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+51,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+64, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_1+64,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_1+64,  ctgogo,  0,  530);
setEffRotateKey(  spep_1+64,  ctgogo,  0);
setEffScaleKey(  spep_1+135,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_1+135,  ctgogo,  0,  530);
setEffRotateKey(  spep_1+135,  ctgogo,  0);

playSe(  spep_1+37,  SE_01);  --溜め
playSe(  spep_1+64,  SE_04);  --カットイン音
--playSe(  spep_1+190,  SE_04);  --カットイン音

entryFade( spep_1+37, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+138, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_2 = spep_1+140;

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

entryFade( spep_2+73, 15, 9, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 突進(70F)
------------------------------------------------------

spep_3 = spep_2+90;

shuchusen3 = entryEffectLife( spep_3, 906, 70, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.25,  1.25);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+70,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+70,  shuchusen3,  1.25,  1.25);
setEffRotateKey(  spep_3+70,  shuchusen3,  0);
setEffAlphaKey(  spep_3+70,  shuchusen3,  255);

--書き文字エントリー
ctzuo = entryEffectLife( spep_3,  10012, 60, 0x100, -1, 0, 76.5, 260.2 );  --ズオ

setEffShake(  spep_3,  ctzuo,  60,  20);  --揺れ
setEffMoveKey( spep_3, ctzuo, 76.5, 260.2 , 0 );
setEffMoveKey( spep_3+2, ctzuo, 95.1, 285.8 , 0 );
setEffMoveKey( spep_3+4, ctzuo, 105.6, 328.3 , 0 );
setEffMoveKey( spep_3+6, ctzuo, 130.2, 342.1 , 0 );
setEffMoveKey( spep_3+8, ctzuo, 120.3, 362.4 , 0 );
setEffMoveKey( spep_3+52, ctzuo, 129.5, 363.2 , 0 );
setEffMoveKey( spep_3+54, ctzuo, 154.6, 331.4 , 0 );
setEffMoveKey( spep_3+56, ctzuo, 148.1, 364.6 , 0 );
setEffMoveKey( spep_3+58, ctzuo, 179.1, 320.8 , 0 );
setEffMoveKey( spep_3+60, ctzuo, 191.4, 315.4 , 0 );
setEffScaleKey( spep_3 , ctzuo, 0.37, 0.28 );
setEffScaleKey( spep_3+2, ctzuo, 1.23, 0.94 );
setEffScaleKey( spep_3+4, ctzuo, 2.12, 1.62 );
setEffScaleKey( spep_3+6, ctzuo, 2.98, 2.28 );
setEffScaleKey( spep_3+50, ctzuo, 2.98, 2.28 );
setEffScaleKey( spep_3+52, ctzuo, 3.87, 2.96 );
setEffScaleKey( spep_3+54, ctzuo, 4.76, 3.64 );
setEffScaleKey( spep_3+56, ctzuo, 5.65, 4.32 );
setEffScaleKey( spep_3+58, ctzuo, 6.55, 5.01 );
setEffScaleKey( spep_3+60, ctzuo, 7.44, 5.69 );
setEffRotateKey( spep_3, ctzuo, 19.2 );
setEffRotateKey( spep_3+60, ctzuo, 19.2 );
setEffAlphaKey( spep_3, ctzuo, 255 );
setEffAlphaKey( spep_3+50, ctzuo, 255 );
setEffAlphaKey( spep_3+52, ctzuo, 204 );
setEffAlphaKey( spep_3+54, ctzuo, 153 );
setEffAlphaKey( spep_3+56, ctzuo, 102 );
setEffAlphaKey( spep_3+58, ctzuo, 51 );
setEffAlphaKey( spep_3+60, ctzuo, 0 );

tosshin = entryEffect(  spep_3,  SP_02,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_3,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_3,  tosshin,  0,  0);
setEffRotateKey(  spep_3,  tosshin,  0);
setEffAlphaKey(  spep_3,  tosshin,  255);
setEffScaleKey(  spep_3+70,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_3+70,  tosshin,  0,  0);
setEffRotateKey(  spep_3+70,  tosshin,  0);
setEffAlphaKey(  spep_3+70,  tosshin,  255);


playSe(  spep_3,  9);  --ダッシュ
entryFadeBg( spep_3, 0, 70, 0, 0, 0, 0, 210);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+30; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置

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


entryFade( spep_3+60, 6, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 格闘(160F)
------------------------------------------------------

spep_4 = spep_3+70;

shuchusen4 = entryEffectLife( spep_4, 906, 20, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.77,  1.77);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+20,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+20,  shuchusen4,  1.77,  1.77);
setEffRotateKey(  spep_4+20,  shuchusen4,  0);
setEffAlphaKey(  spep_4+20,  shuchusen4,  255);

shuchusen4a = entryEffectLife( spep_4+21, 906, 159, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4+21,  shuchusen4a,  0,  0);
setEffScaleKey(  spep_4+21,  shuchusen4a,  1.35,  1.37);
setEffRotateKey(  spep_4+21,  shuchusen4a,  0);
setEffAlphaKey(  spep_4+21,  shuchusen4a,  255);
setEffMoveKey(  spep_4+180,  shuchusen4a,  0,  0);
setEffScaleKey(  spep_4+180,  shuchusen4a,  1.35,  1.37);
setEffRotateKey(  spep_4+180,  shuchusen4a,  0);
setEffAlphaKey(  spep_4+180,  shuchusen4a,  255);

--書き文字エントリー
ctbaki = entryEffectLife( spep_4+139,  10020, 20, 0x100, -1, 0, 199.1, 347.8 );  --バキ

setEffShake(  spep_4+139,  ctbaki,  20,  10);
setEffMoveKey( spep_4+139, ctbaki, 199.1, 347.8 , 0 );
setEffMoveKey( spep_4+141, ctbaki, 197.5, 345.4 , 0 );
setEffMoveKey( spep_4+143, ctbaki, 202.7, 343.3 , 0 );
setEffMoveKey( spep_4+148, ctbaki, 199, 343.4 , 0 );
setEffMoveKey( spep_4+150, ctbaki, 201.9, 345.1 , 0 );
setEffMoveKey( spep_4+159, ctbaki, 205.3, 348.4 , 0 );
setEffScaleKey( spep_4+139, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_4+144, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_4+146, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_4+148, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4+150, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4+152, ctbaki, 2.15, 2.15 );
setEffScaleKey( spep_4+154, ctbaki, 2.2, 2.2 );
setEffScaleKey( spep_4+155, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4+156, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_4+157, ctbaki, 2.28, 2.28 );
setEffScaleKey( spep_4+159, ctbaki, 2.3, 2.3 );
setEffRotateKey( spep_4+139, ctbaki, 29.8 );
setEffRotateKey( spep_4+144, ctbaki, 42.4 );
setEffRotateKey( spep_4+146, ctbaki, 28 );
setEffRotateKey( spep_4+148, ctbaki, 39.5 );
setEffRotateKey( spep_4+150, ctbaki, 26.3 );
setEffRotateKey( spep_4+152, ctbaki, 40.3 );
setEffRotateKey( spep_4+154, ctbaki, 33.6 );
setEffRotateKey( spep_4+155, ctbaki, 26.9 );
setEffRotateKey( spep_4+156, ctbaki, 29.3 );
setEffRotateKey( spep_4+157, ctbaki, 31.7 );
setEffRotateKey( spep_4+159, ctbaki, 7.6 );
setEffAlphaKey( spep_4+139, ctbaki, 255 );
setEffAlphaKey( spep_4+153, ctbaki, 255 );
setEffAlphaKey( spep_4+156, ctbaki, 170 );
setEffAlphaKey( spep_4+157, ctbaki, 85 );
setEffAlphaKey( spep_4+159, ctbaki, 0 );

--敵の動き
setDisp( spep_4, 1, 1 );
changeAnime( spep_4, 1, 100 );

setMoveKey( spep_4, 1, -0.8, 28.1 , 0 );
setMoveKey( spep_4+2, 1, 2.5, 28.2 , 0 );
setMoveKey( spep_4+4, 1, 8, 28 , 0 );
setMoveKey( spep_4+6, 1, 10.3, 27.4 , 0 );
setMoveKey( spep_4+8, 1, 15.8, 27.9 , 0 );
setMoveKey( spep_4+10, 1, 17.5, 28.1 , 0 );
setMoveKey( spep_4+12, 1, 23.5, 27.3 , 0 );
setMoveKey( spep_4+14, 1, 25.4, 28.3 , 0 );
setMoveKey( spep_4+16, 1, 31, 28.6 , 0 );
setMoveKey( spep_4+18, 1, 33.4, 27.2 , 0 );
setMoveKey( spep_4+20, 1, 39.5, 29.2 , 0 );
setMoveKey( spep_4+22, 1, 41.4, 27.5 , 0 );
setMoveKey( spep_4+24, 1, 47.6, 27.9 , 0 );
setMoveKey( spep_4+26, 1, 48.4, 27 , 0 );
setMoveKey( spep_4+28, 1, 54.8, 29.3 , 0 );
setMoveKey( spep_4+30, 1, 55.4, 28.2 , 0 );
setMoveKey( spep_4+32, 1, 62.9, 29.7 , 0 );
setMoveKey( spep_4+34, 1, 64.4, 25.8 , 0 );
setMoveKey( spep_4+36, 1, 71.7, 28.9 , 0 );
setMoveKey( spep_4+38, 1, 71.3, 26.2 , 0 );
setMoveKey( spep_4+40, 1, 78.8, 28.5 , 0 );
setMoveKey( spep_4+42, 1, 79, 26.1 , 0 );
setMoveKey( spep_4+44, 1, 86.7, 28.9 , 0 );
setMoveKey( spep_4+46, 1, 86.6, 28.6 , 0 );
setMoveKey( spep_4+48, 1, 93.4, 26.1 , 0 );
setMoveKey( spep_4+50, 1, 93.9, 28.7 , 0 );
setMoveKey( spep_4+52, 1, 102.9, 28.5 , 0 );
setMoveKey( spep_4+54, 1, 102.5, 25.2 , 0 );
setMoveKey( spep_4+56, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+57, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+58, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+132, 1, 2000, 2000 , 0 );
setScaleKey( spep_4, 1, 1.2, 1.2 );
setScaleKey( spep_4+56, 1, 1.2, 1.2 );
setRotateKey( spep_4, 1, 0 );
setRotateKey( spep_4+56, 1, 0 );
setRotateKey( spep_4+132, 1, 0 );


changeAnime( spep_4+133, 1, 104 );  --ガード

setMoveKey( spep_4+133,1, 2.9, 13.6 , 0 );
setMoveKey( spep_4+136,1, 12.5, 28.5 , 0 );
setScaleKey( spep_4+133,1, 2.87, 2.87 );
setScaleKey( spep_4+136,1, 2.46, 2.46 );
setRotateKey( spep_4+133,1, 0 );
setRotateKey( spep_4+136,1, 0 );

changeAnime( spep_4+137, 1, 106 ); --仰け反り

setMoveKey( spep_4+137,1, -37, 83.4 , 0 );
setMoveKey( spep_4+142,1, -26.6, 55.7 , 0 );
setMoveKey( spep_4+144,1, -51.5, 49.5 , 0 );
setMoveKey( spep_4+146,1, -19.8, 69.1 , 0 );
setMoveKey( spep_4+148,1, -20.6, 37.2 , 0 );
setMoveKey( spep_4+150,1, -37.5, 63.5 , 0 );
setMoveKey( spep_4+152,1, -21.9, 31.4 , 0 );
setMoveKey( spep_4+154,1, -19.5, 61.2 , 0 );
setMoveKey( spep_4+156,1, -20.6, 32.2 , 0 );
setMoveKey( spep_4+158,1, -27.4, 57.1 , 0 );
setMoveKey( spep_4+160,1, -10.3, 47.7 , 0 );
setMoveKey( spep_4+161,1, -5000, 5000 , 0 );

setScaleKey( spep_4+137,1, 2.96, 2.96 );
setScaleKey( spep_4+142,1, 2.27, 2.27 );
setScaleKey( spep_4+144,1, 2.58, 2.58 );
setScaleKey( spep_4+146,1, 1.97, 1.97 );
setScaleKey( spep_4+148,1, 2.22, 2.22 );
setScaleKey( spep_4+150,1, 1.98, 1.98 );
setScaleKey( spep_4+152,1, 2.09, 2.09 );
setScaleKey( spep_4+154,1, 2, 2 );
setScaleKey( spep_4+156,1, 2.01, 2.01 );
setScaleKey( spep_4+158,1, 2.01, 2.01 );
setScaleKey( spep_4+160,1, 2.01, 2.01 );


setRotateKey( spep_4+137,1, -43.5 );
setRotateKey( spep_4+160,1, -43.5 );

kakutou_f = entryEffect(  spep_4,  SP_03,  0x100,  -1,  0,  0,  0);  --格闘前

setEffScaleKey(  spep_4,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4,  kakutou_f,  0);
setEffAlphaKey(  spep_4,  kakutou_f,  255);
setEffScaleKey(  spep_4+160,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+160,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+160,  kakutou_f,  0);
setEffAlphaKey(  spep_4+160,  kakutou_f,  255);
setEffScaleKey(  spep_4+161,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+161,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+161,  kakutou_f,  0);
setEffAlphaKey(  spep_4+161,  kakutou_f,  0);
setEffScaleKey(  spep_4+220,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+220,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+220,  kakutou_f,  0);
setEffAlphaKey(  spep_4+220,  kakutou_f,  0);


ryu1 = entryEffectLife(  spep_4,  921,  54,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_4,  ryu1,  1.3,  1.3);
setEffMoveKey(  spep_4,  ryu1,  0,  0);
setEffRotateKey(  spep_4,  ryu1,  0);
setEffAlphaKey(  spep_4,  ryu1,  255);
setEffScaleKey(  spep_4+54,  ryu1,  1.3,  1.3);
setEffMoveKey(  spep_4+54,  ryu1,  0,  0);
setEffRotateKey(  spep_4+54,  ryu1,  0);
setEffAlphaKey(  spep_4+54,  ryu1,  255);

ryu2 = entryEffectLife(  spep_4,  920,  147,  0x80,  -1,  0,  0,  0);  --流線横線

setEffScaleKey(  spep_4,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4,  ryu2,  0,  0);
setEffRotateKey(  spep_4,  ryu2,  -180);
setEffAlphaKey(  spep_4,  ryu2,  0);
setEffScaleKey(  spep_4+54,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4+54,  ryu2,  0,  0);
setEffRotateKey(  spep_4+54,  ryu2,  -180);
setEffAlphaKey(  spep_4+54,  ryu2,  0);
setEffScaleKey(  spep_4+55,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4+55,  ryu2,  0,  0);
setEffRotateKey(  spep_4+55,  ryu2,  -180);
setEffAlphaKey(  spep_4+55,  ryu2,  255);
setEffScaleKey(  spep_4+147,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4+147,  ryu2,  0,  0);
setEffRotateKey(  spep_4+147,  ryu2,  -180);
setEffAlphaKey(  spep_4+147,  ryu2,  255);

ryu3 = entryEffectLife(  spep_4,  921,  160,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_4,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4,  ryu3,  0,  0);
setEffRotateKey(  spep_4,  ryu3,  -3);
setEffAlphaKey(  spep_4,  ryu3,  0);
setEffScaleKey(  spep_4+147,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4+147,  ryu3,  0,  0);
setEffRotateKey(  spep_4+147,  ryu3,  -3);
setEffAlphaKey(  spep_4+147,  ryu3,  0);
setEffScaleKey(  spep_4+148,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4+148,  ryu3,  0,  0);
setEffRotateKey(  spep_4+148,  ryu3,  -3);
setEffAlphaKey(  spep_4+148,  ryu3,  255);
setEffScaleKey(  spep_4+160,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4+160,  ryu3,  0,  0);
setEffRotateKey(  spep_4+160,  ryu3,  -3);
setEffAlphaKey(  spep_4+160,  ryu3,  255);

kakutou_b = entryEffect(  spep_4,  SP_04,  0x80,  -1,  0,  0,  0);  --格闘後

setEffScaleKey(  spep_4,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4,  kakutou_b,  0);
setEffAlphaKey(  spep_4,  kakutou_b,  255);
setEffScaleKey(  spep_4+160,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+160,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+160,  kakutou_b,  0);
setEffAlphaKey(  spep_4+160,  kakutou_b,  255);
setEffScaleKey(  spep_4+161,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+161,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+161,  kakutou_b,  0);
setEffAlphaKey(  spep_4+161,  kakutou_b,  0);
setEffScaleKey(  spep_4+220,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+220,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+220,  kakutou_b,  0);
setEffAlphaKey(  spep_4+220,  kakutou_b,  0);


playSe(  spep_4+101,  1003);  --パンチ(悟天)
playSe(  spep_4+118,  1003);  --パンチ(トランクス)
playSe(  spep_4+137,  1009);  --パンチ
--playSe(  spep_4+183,  1010);  --キック


entryFade( spep_4+52, 2, 1, 5, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_4+155, 6, 7, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_4, 0, 160, 0, 0, 0, 0, 210);          -- 黒　背景

------------------------------------------------------
--爆発(115F)
------------------------------------------------------

spep_5 = spep_4+163;

setDisp( spep_5, 1, 1);
setMoveKey(  spep_5-1,    1,  5000,  -5000,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    5000,   -5000,   0);
setScaleKey( spep_5,    1,  0.1, 0.1);
setMoveKey(  spep_5+8,    1,    5000,   -5000,   0);
setScaleKey( spep_5+8,    1,  0.1, 0.1);

changeAnime( spep_5+1, 1, 107);                         -- 手前ダメージ
bakuha = entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

setEffMoveKey(  spep_5,  bakuha,  0,  0);
setEffScaleKey(  spep_5,  bakuha,  1.0,  1.0);
setEffRotateKey(  spep_5,  bakuha,  0);
setEffAlphaKey(  spep_5,  bakuha,  255);
setEffMoveKey(  spep_5+115,  bakuha,  0,  0);
setEffScaleKey(  spep_5+115,  bakuha,  1.0,  1.0);
setEffRotateKey(  spep_5+115,  bakuha,  0);
setEffAlphaKey(  spep_5+115,  bakuha,  255);

playSe( spep_5, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+65,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+115,  1,  -60,  -200,  -100);

--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ctga_2 = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+15, ctga_2, 30, 10);
setEffRotateKey( spep_5+15, ctga_2, -24);
setEffScaleKey( spep_5+15, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_5+16, ctga_2, 2.0, 2.0);
setEffScaleKey( spep_5+17, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctga_2, 3.8, 3.8);
setEffScaleKey( spep_5+115, ctga_2, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ctga_2, 255);
setEffAlphaKey( spep_5+115, ctga_2, 255);


playSe( spep_5+3, SE_11);

shuchusen5 = entryEffectLife( spep_5+15, 906, 32, 0x00,  -1, 0,  0,  0);   -- 集中線

setEffMoveKey(  spep_5+15,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+15,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5+15,  shuchusen5,  0);
setEffAlphaKey(  spep_5+15,  shuchusen5,  255);
setEffMoveKey(  spep_5+27,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+27,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5+27,  shuchusen5,  0);
setEffAlphaKey(  spep_5+27,  shuchusen5,  255);
setEffMoveKey(  spep_5+47,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+47,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5+47,  shuchusen5,  0);
setEffAlphaKey(  spep_5+47,  shuchusen5,  255);

hibi = entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

setEffMoveKey(  spep_5+3,  hibi,  0,  30);
setEffScaleKey(  spep_5+3,  hibi,  1.0,  1.0);
setEffRotateKey(  spep_5+3,  hibi,  0);
setEffAlphaKey(  spep_5+3,  hibi,  255);
setEffMoveKey(  spep_5+115,  hibi,  0,  30);
setEffScaleKey(  spep_5+115,  hibi,  1.0,  1.0);
setEffRotateKey(  spep_5+115,  hibi,  0);
setEffAlphaKey(  spep_5+115,  hibi,  255);

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 100, 0x80,  -1, 0,  0,  0);   -- 集中線黒

setEffMoveKey(  spep_5+15,  shuchusenkuro,  0,  0);
setEffScaleKey(  spep_5+15,  shuchusenkuro,  1.0,  1.0);
setEffRotateKey(  spep_5+15,  shuchusenkuro,  0);
setEffAlphaKey(  spep_5+15,  shuchusenkuro,  255);
setEffMoveKey(  spep_5+115,  shuchusenkuro,  0,  0);
setEffScaleKey(  spep_5+115,  shuchusenkuro,  1.0,  1.0);
setEffRotateKey(  spep_5+115,  shuchusenkuro,  0);
setEffAlphaKey(  spep_5+115,  shuchusenkuro,  255);

-- ダメージ表示
dealDamage(spep_5+10);

entryFade( spep_5+80, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+90);
else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め_マーロンなし(150F)
------------------------------------------------------
spep_1 = 0;

shuchusen1 = entryEffectLife( spep_1+38, 906, 112, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_1+38,  sshuchusen1,  0,  0);
setEffScaleKey(  spep_1+38,  shuchusen1,  1.55,  1.55);
setEffRotateKey(  spep_1+38,  shuchusen1,  0);
setEffAlphaKey(  spep_1+38,  shuchusen1,  255);
setEffMoveKey(  spep_1+150,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+150,  shuchusen1,  1.55,  1.55);
setEffRotateKey(  spep_1+150,  shuchusen1,  0);
setEffAlphaKey(  spep_1+150,  shuchusen1,  255);

--書き文字エントリー
ctzuzu = entryEffectLife( spep_1+38, 10013, 22,  0x100,  -1, 0,  0,  0);  --ズズズン

setEffShake(  spep_1+38,  ctzuzu,  42,  10);
setEffMoveKey( spep_1+38, ctzuzu, 22, 211.9 , 0 );
setEffMoveKey( spep_1+40, ctzuzu, 29.8, 266.6 , 0 );
setEffMoveKey( spep_1+42, ctzuzu, 49.4, 330.6 , 0 );
setEffMoveKey( spep_1+44, ctzuzu, 46.2, 352.4 , 0 );
setEffMoveKey( spep_1+46, ctzuzu, 51.2, 346.6 , 0 );
setEffMoveKey( spep_1+48, ctzuzu, 36.5, 321.7 , 0 );
setEffMoveKey( spep_1+50, ctzuzu, 46, 329.9 , 0 );
setEffMoveKey( spep_1+60, ctzuzu, 46, 329.9 , 0 );
setEffScaleKey( spep_1+38, ctzuzu, 1.12, 1.11 );
setEffScaleKey( spep_1+40, ctzuzu, 1.99, 1.98 );
setEffScaleKey( spep_1+42, ctzuzu, 2.84, 2.83 );
setEffScaleKey( spep_1+44, ctzuzu, 2.93, 2.92 );
setEffScaleKey( spep_1+60, ctzuzu, 2.93, 2.92 );
setEffRotateKey( spep_1+38, ctzuzu, 0 );
setEffRotateKey( spep_1+60, ctzuzu, 0 );
setEffAlphaKey( spep_1+38, ctzuzu, 255 );
setEffAlphaKey( spep_1+58, ctzuzu, 255 );
setEffAlphaKey( spep_1+60, ctzuzu, 0 );


tame = entryEffect(  spep_1,  SP_05,  0x80,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_1,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1,  tame,  0,  0);
setEffRotateKey(  spep_1,  tame,  0);
setEffAlphaKey(  spep_1,  tame,  255);
setEffScaleKey(  spep_1+150,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+150,  tame,  0,  0);
setEffRotateKey(  spep_1+150,  tame,  0);
setEffAlphaKey(  spep_1+150,  tame,  255);
setEffScaleKey(  spep_1+151,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+151,  tame,  0,  0);
setEffRotateKey(  spep_1+151,  tame,  0);
setEffAlphaKey(  spep_1+151,  tame,  0);
setEffScaleKey(  spep_1+240,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+240,  tame,  0,  0);
setEffRotateKey(  spep_1+240,  tame,  0);
setEffAlphaKey(  spep_1+240,  tame,  0);

-- カットイン
--speff = entryEffect(  spep_1+51,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+51,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_1+64, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_1+64,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_1+64,  ctgogo,  0,  530);
setEffRotateKey(  spep_1+64,  ctgogo,  0);
setEffScaleKey(  spep_1+135,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_1+135,  ctgogo,  0,  530);
setEffRotateKey(  spep_1+135,  ctgogo,  0);

playSe(  spep_1+37,  SE_01);  --溜め
playSe(  spep_1+64,  SE_04);  --カットイン音
--playSe(  spep_1+190,  SE_04);  --カットイン音

entryFade( spep_1+37, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1+138, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_2 = spep_1+140;

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

entryFade( spep_2+73, 15, 9, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 突進(70F)
------------------------------------------------------

spep_3 = spep_2+90;

shuchusen3 = entryEffectLife( spep_3, 906, 70, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.25,  1.25);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+70,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+70,  shuchusen3,  1.25,  1.25);
setEffRotateKey(  spep_3+70,  shuchusen3,  0);
setEffAlphaKey(  spep_3+70,  shuchusen3,  255);

--書き文字エントリー
ctzuo = entryEffectLife( spep_3,  10012, 60, 0x100, -1, 0, 76.5, 260.2 );  --ズオ

setEffShake(  spep_3,  ctzuo,  60,  20);  --揺れ
setEffMoveKey( spep_3, ctzuo, 76.5, 260.2 , 0 );
setEffMoveKey( spep_3+2, ctzuo, 95.1, 285.8 , 0 );
setEffMoveKey( spep_3+4, ctzuo, 105.6, 328.3 , 0 );
setEffMoveKey( spep_3+6, ctzuo, 130.2, 342.1 , 0 );
setEffMoveKey( spep_3+8, ctzuo, 120.3, 362.4 , 0 );
setEffMoveKey( spep_3+52, ctzuo, 129.5, 363.2 , 0 );
setEffMoveKey( spep_3+54, ctzuo, 154.6, 331.4 , 0 );
setEffMoveKey( spep_3+56, ctzuo, 148.1, 364.6 , 0 );
setEffMoveKey( spep_3+58, ctzuo, 179.1, 320.8 , 0 );
setEffMoveKey( spep_3+60, ctzuo, 191.4, 315.4 , 0 );
setEffScaleKey( spep_3 , ctzuo, 0.37, 0.28 );
setEffScaleKey( spep_3+2, ctzuo, 1.23, 0.94 );
setEffScaleKey( spep_3+4, ctzuo, 2.12, 1.62 );
setEffScaleKey( spep_3+6, ctzuo, 2.98, 2.28 );
setEffScaleKey( spep_3+50, ctzuo, 2.98, 2.28 );
setEffScaleKey( spep_3+52, ctzuo, 3.87, 2.96 );
setEffScaleKey( spep_3+54, ctzuo, 4.76, 3.64 );
setEffScaleKey( spep_3+56, ctzuo, 5.65, 4.32 );
setEffScaleKey( spep_3+58, ctzuo, 6.55, 5.01 );
setEffScaleKey( spep_3+60, ctzuo, 7.44, 5.69 );
setEffRotateKey( spep_3, ctzuo, 19.2 );
setEffRotateKey( spep_3+60, ctzuo, 19.2 );
setEffAlphaKey( spep_3, ctzuo, 255 );
setEffAlphaKey( spep_3+50, ctzuo, 255 );
setEffAlphaKey( spep_3+52, ctzuo, 204 );
setEffAlphaKey( spep_3+54, ctzuo, 153 );
setEffAlphaKey( spep_3+56, ctzuo, 102 );
setEffAlphaKey( spep_3+58, ctzuo, 51 );
setEffAlphaKey( spep_3+60, ctzuo, 0 );

tosshin = entryEffect(  spep_3,  SP_06,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_3,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_3,  tosshin,  0,  0);
setEffRotateKey(  spep_3,  tosshin,  0);
setEffAlphaKey(  spep_3,  tosshin,  255);
setEffScaleKey(  spep_3+70,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_3+70,  tosshin,  0,  0);
setEffRotateKey(  spep_3+70,  tosshin,  0);
setEffAlphaKey(  spep_3+70,  tosshin,  255);


playSe(  spep_3,  9);  --ダッシュ
entryFadeBg( spep_3, 0, 70, 0, 0, 0, 0, 210);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+30; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置

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


entryFade( spep_3+60, 6, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 格闘(160F)
------------------------------------------------------

spep_4 = spep_3+70;

shuchusen4 = entryEffectLife( spep_4, 906, 20, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.77,  1.77);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+20,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+20,  shuchusen4,  1.77,  1.77);
setEffRotateKey(  spep_4+20,  shuchusen4,  0);
setEffAlphaKey(  spep_4+20,  shuchusen4,  255);

shuchusen4a = entryEffectLife( spep_4+21, 906, 159, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4+21,  shuchusen4a,  0,  0);
setEffScaleKey(  spep_4+21,  shuchusen4a,  1.35,  1.37);
setEffRotateKey(  spep_4+21,  shuchusen4a,  0);
setEffAlphaKey(  spep_4+21,  shuchusen4a,  255);
setEffMoveKey(  spep_4+180,  shuchusen4a,  0,  0);
setEffScaleKey(  spep_4+180,  shuchusen4a,  1.35,  1.37);
setEffRotateKey(  spep_4+180,  shuchusen4a,  0);
setEffAlphaKey(  spep_4+180,  shuchusen4a,  255);

--書き文字エントリー
ctbaki = entryEffectLife( spep_4+139,  10020, 20, 0x100, -1, 0, 199.1, 347.8 );  --バキ

setEffShake(  spep_4+139,  ctbaki,  20,  10);
setEffMoveKey( spep_4+139, ctbaki, 199.1, 347.8 , 0 );
setEffMoveKey( spep_4+141, ctbaki, 197.5, 345.4 , 0 );
setEffMoveKey( spep_4+143, ctbaki, 202.7, 343.3 , 0 );
setEffMoveKey( spep_4+148, ctbaki, 199, 343.4 , 0 );
setEffMoveKey( spep_4+150, ctbaki, 201.9, 345.1 , 0 );
setEffMoveKey( spep_4+159, ctbaki, 205.3, 348.4 , 0 );
setEffScaleKey( spep_4+139, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_4+144, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_4+146, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_4+148, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4+150, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4+152, ctbaki, 2.15, 2.15 );
setEffScaleKey( spep_4+154, ctbaki, 2.2, 2.2 );
setEffScaleKey( spep_4+155, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4+156, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_4+157, ctbaki, 2.28, 2.28 );
setEffScaleKey( spep_4+159, ctbaki, 2.3, 2.3 );
setEffRotateKey( spep_4+139, ctbaki, 29.8 );
setEffRotateKey( spep_4+144, ctbaki, 42.4 );
setEffRotateKey( spep_4+146, ctbaki, 28 );
setEffRotateKey( spep_4+148, ctbaki, 39.5 );
setEffRotateKey( spep_4+150, ctbaki, 26.3 );
setEffRotateKey( spep_4+152, ctbaki, 40.3 );
setEffRotateKey( spep_4+154, ctbaki, 33.6 );
setEffRotateKey( spep_4+155, ctbaki, 26.9 );
setEffRotateKey( spep_4+156, ctbaki, 29.3 );
setEffRotateKey( spep_4+157, ctbaki, 31.7 );
setEffRotateKey( spep_4+159, ctbaki, 7.6 );
setEffAlphaKey( spep_4+139, ctbaki, 255 );
setEffAlphaKey( spep_4+153, ctbaki, 255 );
setEffAlphaKey( spep_4+156, ctbaki, 170 );
setEffAlphaKey( spep_4+157, ctbaki, 85 );
setEffAlphaKey( spep_4+159, ctbaki, 0 );

--敵の動き
setDisp( spep_4, 1, 1 );
changeAnime( spep_4, 1, 100 );

setMoveKey( spep_4+0, 1, -0.8, 28.1 , 0 );
setMoveKey( spep_4+2, 1, 2.5, 28.2 , 0 );
setMoveKey( spep_4+4, 1, 8, 28 , 0 );
setMoveKey( spep_4+6, 1, 10.3, 27.4 , 0 );
setMoveKey( spep_4+8, 1, 15.8, 27.9 , 0 );
setMoveKey( spep_4+10, 1, 17.5, 28.1 , 0 );
setMoveKey( spep_4+12, 1, 23.5, 27.3 , 0 );
setMoveKey( spep_4+14, 1, 25.4, 28.3 , 0 );
setMoveKey( spep_4+16, 1, 31, 28.6 , 0 );
setMoveKey( spep_4+18, 1, 33.4, 27.2 , 0 );
setMoveKey( spep_4+20, 1, 39.5, 29.2 , 0 );
setMoveKey( spep_4+22, 1, 41.4, 27.5 , 0 );
setMoveKey( spep_4+24, 1, 47.6, 27.9 , 0 );
setMoveKey( spep_4+26, 1, 48.4, 27 , 0 );
setMoveKey( spep_4+28, 1, 54.8, 29.3 , 0 );
setMoveKey( spep_4+30, 1, 55.4, 28.2 , 0 );
setMoveKey( spep_4+32, 1, 62.9, 29.7 , 0 );
setMoveKey( spep_4+34, 1, 64.4, 25.8 , 0 );
setMoveKey( spep_4+36, 1, 71.7, 28.9 , 0 );
setMoveKey( spep_4+38, 1, 71.3, 26.2 , 0 );
setMoveKey( spep_4+40, 1, 78.8, 28.5 , 0 );
setMoveKey( spep_4+42, 1, 79, 26.1 , 0 );
setMoveKey( spep_4+44, 1, 86.7, 28.9 , 0 );
setMoveKey( spep_4+46, 1, 86.6, 28.6 , 0 );
setMoveKey( spep_4+48, 1, 93.4, 26.1 , 0 );
setMoveKey( spep_4+50, 1, 93.9, 28.7 , 0 );
setMoveKey( spep_4+52, 1, 102.9, 28.5 , 0 );
setMoveKey( spep_4+54, 1, 102.5, 25.2 , 0 );
setMoveKey( spep_4+56, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+57, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+58, 1, 2000, 2000 , 0 );
setMoveKey( spep_4+132, 1, 2000, 2000 , 0 );
setScaleKey( spep_4+0, 1, 1.2, 1.2 );
setScaleKey( spep_4+56, 1, 1.2, 1.2 );
setRotateKey( spep_4+0, 1, 0 );
setRotateKey( spep_4+56, 1, 0 );
setRotateKey( spep_4+132, 1, 0 );


changeAnime( spep_4+133, 1, 104 );  --ガード

setMoveKey( spep_4+133,1, 2.9, 13.6 , 0 );
setMoveKey( spep_4+136,1, 12.5, 28.5 , 0 );
setScaleKey( spep_4+133,1, 2.87, 2.87 );
setScaleKey( spep_4+136,1, 2.46, 2.46 );
setRotateKey( spep_4+133,1, 0 );
setRotateKey( spep_4+136,1, 0 );

changeAnime( spep_4+137, 1, 106 ); --仰け反り

setMoveKey( spep_4+137,1, -37, 83.4 , 0 );
setMoveKey( spep_4+142,1, -26.6, 55.7 , 0 );
setMoveKey( spep_4+144,1, -51.5, 49.5 , 0 );
setMoveKey( spep_4+146,1, -19.8, 69.1 , 0 );
setMoveKey( spep_4+148,1, -20.6, 37.2 , 0 );
setMoveKey( spep_4+150,1, -37.5, 63.5 , 0 );
setMoveKey( spep_4+152,1, -21.9, 31.4 , 0 );
setMoveKey( spep_4+154,1, -19.5, 61.2 , 0 );
setMoveKey( spep_4+156,1, -20.6, 32.2 , 0 );
setMoveKey( spep_4+158,1, -27.4, 57.1 , 0 );
setMoveKey( spep_4+160,1, -10.3, 47.7 , 0 );
setMoveKey( spep_4+161,1, -5000, 5000 , 0 );

setScaleKey( spep_4+137,1, 2.96, 2.96 );
setScaleKey( spep_4+142,1, 2.27, 2.27 );
setScaleKey( spep_4+144,1, 2.58, 2.58 );
setScaleKey( spep_4+146,1, 1.97, 1.97 );
setScaleKey( spep_4+148,1, 2.22, 2.22 );
setScaleKey( spep_4+150,1, 1.98, 1.98 );
setScaleKey( spep_4+152,1, 2.09, 2.09 );
setScaleKey( spep_4+154,1, 2, 2 );
setScaleKey( spep_4+156,1, 2.01, 2.01 );
setScaleKey( spep_4+158,1, 2.01, 2.01 );
setScaleKey( spep_4+160,1, 2.01, 2.01 );


setRotateKey( spep_4+137,1, -43.5 );
setRotateKey( spep_4+160,1, -43.5 );


kakutou_f = entryEffect(  spep_4,  SP_07,  0x100,  -1,  0,  0,  0);  --格闘前

setEffScaleKey(  spep_4,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4,  kakutou_f,  0);
setEffAlphaKey(  spep_4,  kakutou_f,  255);
setEffScaleKey(  spep_4+160,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+160,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+160,  kakutou_f,  0);
setEffAlphaKey(  spep_4+160,  kakutou_f,  255);
setEffScaleKey(  spep_4+161,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+161,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+161,  kakutou_f,  0);
setEffAlphaKey(  spep_4+161,  kakutou_f,  0);
setEffScaleKey(  spep_4+220,  kakutou_f,  1.0,  1.0);
setEffMoveKey(  spep_4+220,  kakutou_f,  0,  0);
setEffRotateKey(  spep_4+220,  kakutou_f,  0);
setEffAlphaKey(  spep_4+220,  kakutou_f,  0);


ryu1 = entryEffectLife(  spep_4,  921,  54,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_4,  ryu1,  1.3,  1.3);
setEffMoveKey(  spep_4,  ryu1,  0,  0);
setEffRotateKey(  spep_4,  ryu1,  0);
setEffAlphaKey(  spep_4,  ryu1,  255);
setEffScaleKey(  spep_4+54,  ryu1,  1.3,  1.3);
setEffMoveKey(  spep_4+54,  ryu1,  0,  0);
setEffRotateKey(  spep_4+54,  ryu1,  0);
setEffAlphaKey(  spep_4+54,  ryu1,  255);

ryu2 = entryEffectLife(  spep_4,  920,  147,  0x80,  -1,  0,  0,  0);  --流線横線

setEffScaleKey(  spep_4,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4,  ryu2,  0,  0);
setEffRotateKey(  spep_4,  ryu2,  -180);
setEffAlphaKey(  spep_4,  ryu2,  0);
setEffScaleKey(  spep_4+54,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4+54,  ryu2,  0,  0);
setEffRotateKey(  spep_4+54,  ryu2,  -180);
setEffAlphaKey(  spep_4+54,  ryu2,  0);
setEffScaleKey(  spep_4+55,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4+55,  ryu2,  0,  0);
setEffRotateKey(  spep_4+55,  ryu2,  -180);
setEffAlphaKey(  spep_4+55,  ryu2,  255);
setEffScaleKey(  spep_4+147,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_4+147,  ryu2,  0,  0);
setEffRotateKey(  spep_4+147,  ryu2,  -180);
setEffAlphaKey(  spep_4+147,  ryu2,  255);

ryu3 = entryEffectLife(  spep_4,  921,  160,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_4,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4,  ryu3,  0,  0);
setEffRotateKey(  spep_4,  ryu3,  -3);
setEffAlphaKey(  spep_4,  ryu3,  0);
setEffScaleKey(  spep_4+147,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4+147,  ryu3,  0,  0);
setEffRotateKey(  spep_4+147,  ryu3,  -3);
setEffAlphaKey(  spep_4+147,  ryu3,  0);
setEffScaleKey(  spep_4+148,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4+148,  ryu3,  0,  0);
setEffRotateKey(  spep_4+148,  ryu3,  -3);
setEffAlphaKey(  spep_4+148,  ryu3,  255);
setEffScaleKey(  spep_4+160,  ryu3,  1.3,  1.3);
setEffMoveKey(  spep_4+160,  ryu3,  0,  0);
setEffRotateKey(  spep_4+160,  ryu3,  -3);
setEffAlphaKey(  spep_4+160,  ryu3,  255);

kakutou_b = entryEffect(  spep_4,  SP_08,  0x80,  -1,  0,  0,  0);  --格闘後

setEffScaleKey(  spep_4,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4,  kakutou_b,  0);
setEffAlphaKey(  spep_4,  kakutou_b,  255);
setEffScaleKey(  spep_4+160,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+160,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+160,  kakutou_b,  0);
setEffAlphaKey(  spep_4+160,  kakutou_b,  255);
setEffScaleKey(  spep_4+161,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+161,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+161,  kakutou_b,  0);
setEffAlphaKey(  spep_4+161,  kakutou_b,  0);
setEffScaleKey(  spep_4+220,  kakutou_b,  1.0,  1.0);
setEffMoveKey(  spep_4+220,  kakutou_b,  0,  0);
setEffRotateKey(  spep_4+220,  kakutou_b,  0);
setEffAlphaKey(  spep_4+220,  kakutou_b,  0);


playSe(  spep_4+101,  1003);  --パンチ(悟天)
playSe(  spep_4+118,  1003);  --パンチ(トランクス)
playSe(  spep_4+137,  1009);  --パンチ
--playSe(  spep_4+183,  1010);  --キック


entryFade( spep_4+52, 2, 1, 5, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_4+155, 6, 7, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_4, 0, 160, 0, 0, 0, 0, 210);          -- 黒　背景

------------------------------------------------------
--爆発(115F)
------------------------------------------------------

spep_5 = spep_4+163;

setDisp( spep_5, 1, 1);
setMoveKey(  spep_5-1,    1,  5000,  -5000,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    5000,   -5000,   0);
setScaleKey( spep_5,    1,  0.1, 0.1);
setMoveKey(  spep_5+8,    1,    5000,   -5000,   0);
setScaleKey( spep_5+8,    1,  0.1, 0.1);

changeAnime( spep_5+1, 1, 107);                         -- 手前ダメージ
bakuha = entryEffect( spep_5, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

setEffMoveKey(  spep_5,  bakuha,  0,  0);
setEffScaleKey(  spep_5,  bakuha,  1.0,  1.0);
setEffRotateKey(  spep_5,  bakuha,  0);
setEffAlphaKey(  spep_5,  bakuha,  255);
setEffMoveKey(  spep_5+115,  bakuha,  0,  0);
setEffScaleKey(  spep_5+115,  bakuha,  1.0,  1.0);
setEffRotateKey(  spep_5+115,  bakuha,  0);
setEffAlphaKey(  spep_5+115,  bakuha,  255);

playSe( spep_5, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+65,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+115,   1,  -60,  -200,  -100);

--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ctga_2 = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+15, ctga_2, 30, 10);
setEffRotateKey( spep_5+15, ctga_2, -24);
setEffScaleKey( spep_5+15, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_5+16, ctga_2, 2.0, 2.0);
setEffScaleKey( spep_5+17, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctga_2, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctga_2, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctga_2, 3.8, 3.8);
setEffScaleKey( spep_5+115, ctga_2, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ctga_2, 255);
setEffAlphaKey( spep_5+115, ctga_2, 255);

playSe( spep_5+3, SE_11);

shuchusen5 = entryEffectLife( spep_5+15, 906, 32, 0x00,  -1, 0,  0,  0);   -- 集中線

setEffMoveKey(  spep_5+15,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+15,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5+15,  shuchusen5,  0);
setEffAlphaKey(  spep_5+15,  shuchusen5,  255);
setEffMoveKey(  spep_5+27,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+27,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5+27,  shuchusen5,  0);
setEffAlphaKey(  spep_5+27,  shuchusen5,  255);
setEffMoveKey(  spep_5+47,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+47,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5+47,  shuchusen5,  0);
setEffAlphaKey(  spep_5+47,  shuchusen5,  255);

hibi = entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

setEffMoveKey(  spep_5+3,  hibi,  0,  30);
setEffScaleKey(  spep_5+3,  hibi,  1.0,  1.0);
setEffRotateKey(  spep_5+3,  hibi,  0);
setEffAlphaKey(  spep_5+3,  hibi,  255);
setEffMoveKey(  spep_5+115,  hibi,  0,  30);
setEffScaleKey(  spep_5+115,  hibi,  1.0,  1.0);
setEffRotateKey(  spep_5+115,  hibi,  0);
setEffAlphaKey(  spep_5+115,  hibi,  255);

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 100, 0x80,  -1, 0,  0,  0);   -- 集中線黒

setEffMoveKey(  spep_5+15,  shuchusenkuro,  0,  0);
setEffScaleKey(  spep_5+15,  shuchusenkuro,  1.0,  1.0);
setEffRotateKey(  spep_5+15,  shuchusenkuro,  0);
setEffAlphaKey(  spep_5+15,  shuchusenkuro,  255);
setEffMoveKey(  spep_5+115,  shuchusenkuro,  0,  0);
setEffScaleKey(  spep_5+115,  shuchusenkuro,  1.0,  1.0);
setEffRotateKey(  spep_5+115,  shuchusenkuro,  0);
setEffAlphaKey(  spep_5+115,  shuchusenkuro,  255);

-- ダメージ表示
dealDamage(spep_5+10);

entryFade( spep_5+80, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+90);
end

--sp0480
--1014370 20倍界王拳かめはめ波(VER.2)
--sp_effect_b1_00050
--battle_150051

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

SP_01 =152086;
SP_02 =152087;
SP_03 =152088;
SP_04 =152089;
SP_05 =1911;

SP_01r =152090;
SP_02r =152091;
SP_03r =152092;
SP_04r =152089;
SP_05r =1911;
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
-- Scene01
------------------------------------------------------
spep_0 = 0;

--背景・白フェード--
entryFade(spep_0,0,0,6,255,255,255,255);
entryFade(spep_0+14,0,2,8,255,255,255,255);
entryFade(spep_0+124,14,2,0,255,255,255,255);
entryFadeBg(spep_0+6,0,132,0,10,10,10,200);

--エフェクト
Kidame=entryEffectLife(spep_0,SP_01,138,0x100,-1,0,0,0);

setEffScaleKey(spep_0,Kidame,1.0,1.0);
setEffScaleKey(spep_0+138,Kidame,1.0,1.0);

setEffRotateKey(spep_0,Kidame,0);
setEffRotateKey(spep_0+138,Kidame,0);

setEffAlphaKey(spep_0,Kidame,255);
setEffAlphaKey(spep_0+138,Kidame,255);

--集中線--
shuchusen0 = entryEffectLife(spep_0+18,906,110,0x80,-1,0,0,0);

setEffScaleKey(spep_0+18,shuchusen0,1.4,1.4);
setEffScaleKey(spep_0+128,shuchusen0,1.4,1.4);

setEffRotateKey(spep_0+18,shuchusen0,0);
setEffRotateKey(spep_0+128,shuchusen0,0);

setEffAlphaKey(spep_0+18,shuchusen0,255);
setEffAlphaKey(spep_0+128,shuchusen0,255);

--ズズズン--10013
ctZuzuzun = entryEffectLife(spep_0+20,10013,30,0x100,-1,20.1, 249.8 , 0);

setEffMoveKey( spep_0 + 20, ctZuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 22, ctZuzuzun, 23.5, 298.8 , 0 );
setEffMoveKey( spep_0 + 24, ctZuzuzun, 39.9, 357.6 , 0 );
setEffMoveKey( spep_0 + 26, ctZuzuzun, 31.2, 355 , 0 );
setEffMoveKey( spep_0 + 28, ctZuzuzun, 41.1, 364.7 , 0 );
setEffMoveKey( spep_0 + 30, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 32, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 34, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 36, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 38, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 40, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 42, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 44, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 46, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 48, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 50, ctZuzuzun, 41.1, 364.5 , 0 );

setEffScaleKey( spep_0 + 20, ctZuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 22, ctZuzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 + 24, ctZuzuzun, 2.8, 2.8 );
setEffScaleKey( spep_0 + 26, ctZuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 + 50, ctZuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 + 20, ctZuzuzun, -5 );
setEffRotateKey( spep_0 + 50, ctZuzuzun, -5 );

setEffAlphaKey( spep_0 + 20, ctZuzuzun, 255 );
setEffAlphaKey( spep_0 + 36, ctZuzuzun, 255 );
setEffAlphaKey( spep_0 + 38, ctZuzuzun, 204 );
setEffAlphaKey( spep_0 + 40, ctZuzuzun, 142 );
setEffAlphaKey( spep_0 + 42, ctZuzuzun, 91 );
setEffAlphaKey( spep_0 + 44, ctZuzuzun, 51 );
setEffAlphaKey( spep_0 + 46, ctZuzuzun, 23 );
setEffAlphaKey( spep_0 + 48, ctZuzuzun, 6 );
setEffAlphaKey( spep_0 + 50, ctZuzuzun, 0 );

--カットイン
ctgogo = entryEffectLife( spep_0+55, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_0+55, ctgogo, 70, 8);
setEffScaleKey(spep_0+55, ctgogo, 0.7, 0.7);

--顔カットイン
speff = entryEffect(  spep_0+44,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0+44,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_0+14,SE_01);
playSe(spep_0+55,SE_04);

------------------------------------------------------
-- Scene02 CARD
------------------------------------------------------
spep_1 = spep_0+138;

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_1, 906, 90, 0x80,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffMoveKey(  spep_1+90,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+90,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_1+90,  shuchusen1,  0);
setEffAlphaKey(  spep_1+90,  shuchusen1,  255);

entryFade( spep_1+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_1, SE_05);

------------------------------------------------------
-- Scene03
------------------------------------------------------
spep_2 =spep_1+90;

--背景・白フェード--
entryFade(spep_2,0,0,6,255,255,255,255);
entryFade(spep_2+52,0,2,8,255,255,255,255);
entryFade(spep_2+88,10,2,0,255,255,255,255);
entryFadeBg(spep_2,0,98,0,10,10,10,200);

--敵の動き
setDisp(spep_2, 1, 1);
setDisp(spep_2+84, 1, 0);

ryusen3=entryEffectLife( spep_2,  921, 98, 0x80, -1, 0, 20, 33.6 );
setEffMoveKey( spep_2 + 0, ryusen3, 20, 33.6 , 0 );
setEffScaleKey( spep_2 + 0, ryusen3, 1.91, 1.11 );
setEffRotateKey( spep_2 + 0, ryusen3, -105.3 );
setEffAlphaKey( spep_2 + 0, ryusen3, 255 );

Tossin = entryEffectLife(  spep_2+4,  SP_02,  94, 0x80, -1,0, 0, 0);

setEffScaleKey(spep_2+4,Tossin,1.0,1.0);
setEffScaleKey(spep_2+98,Tossin,1.0,1.0);

setEffRotateKey(spep_2+4,Tossin,0);
setEffRotateKey(spep_2+98,Tossin,0);

setEffAlphaKey(spep_2+4,Tossin,255);
setEffAlphaKey(spep_2+98,Tossin,255);

shuchusen2 = entryEffectLife( spep_2, 906, 98, 0x80,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.4,  1.4);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+98,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+98,  shuchusen2,  1.4,  1.4);
setEffRotateKey(  spep_2+98,  shuchusen2,  0);
setEffAlphaKey(  spep_2+98,  shuchusen2,  255);

--書き文字　ガッ
ctGa = entryEffectLife( spep_2 + 52,  10005, 20, 0x100, -1, 0, 163.9, 310.5 );

setEffMoveKey( spep_2 + 52, ctGa, 163.9, 310.5 , 0 );
setEffMoveKey( spep_2 + 54, ctGa, 164.2, 310.4 , 0 );
setEffMoveKey( spep_2 + 56, ctGa, 164.1, 310.8 , 0 );
setEffMoveKey( spep_2 + 58, ctGa, 164, 310.6 , 0 );
setEffMoveKey( spep_2 + 60, ctGa, 164.1, 310.7 , 0 );
setEffMoveKey( spep_2 + 62, ctGa, 164.1, 310.8 , 0 );
setEffMoveKey( spep_2 + 64, ctGa, 164.1, 310.5 , 0 );
setEffMoveKey( spep_2 + 66, ctGa, 164, 310.5 , 0 );
setEffMoveKey( spep_2 + 72, ctGa, 164, 310.5 , 0 );

setEffScaleKey( spep_2 + 52, ctGa, 1.17, 1.17 );
setEffScaleKey( spep_2 + 54, ctGa, 2.5, 2.5 );
setEffScaleKey( spep_2 + 56, ctGa, 3.17, 3.17 );
setEffScaleKey( spep_2 + 58, ctGa, 3.02, 3.02 );
setEffScaleKey( spep_2 + 60, ctGa, 2.87, 2.87 );
setEffScaleKey( spep_2 + 62, ctGa, 2.72, 2.72 );
setEffScaleKey( spep_2 + 64, ctGa, 2.57, 2.57 );
setEffScaleKey( spep_2 + 66, ctGa, 2.57, 2.57 );
setEffScaleKey( spep_2 + 68, ctGa, 2.54, 2.54 );
setEffScaleKey( spep_2 + 70, ctGa, 2.52, 2.52 );
setEffScaleKey( spep_2 + 72, ctGa, 2.49, 2.49 );

setEffRotateKey( spep_2 + 52, ctGa, 26 );
setEffRotateKey( spep_2 + 54, ctGa, 12.7 );
setEffRotateKey( spep_2 + 56, ctGa, 26 );
setEffRotateKey( spep_2 + 58, ctGa, 34.6 );
setEffRotateKey( spep_2 + 60, ctGa, 25.9 );
setEffRotateKey( spep_2 + 62, ctGa, 15.2 );
setEffRotateKey( spep_2 + 64, ctGa, 26 );
setEffRotateKey( spep_2 + 66, ctGa, 25.9 );
setEffRotateKey( spep_2 + 68, ctGa, 25.9 );
setEffRotateKey( spep_2 + 70, ctGa, 26 );
setEffRotateKey( spep_2 + 72, ctGa, 26 );

setEffAlphaKey( spep_2 + 52, ctGa, 255 );
setEffAlphaKey( spep_2 + 66, ctGa, 255 );
setEffAlphaKey( spep_2 + 68, ctGa, 170 );
setEffAlphaKey( spep_2 + 70, ctGa, 85 );
setEffAlphaKey( spep_2 + 72, ctGa, 0 );

-- SE --
playSe( spep_2, 1018);
playSe( spep_2+52, 1011);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+34; --エンドフェイズのフレーム数を置き換える

--setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
--setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

setMoveKey( SP_dodge, 1, 0, -5000, -5000);
setMoveKey( SP_dodge+9, 1, 0, -5000, -5000);
setMoveKey( SP_dodge+10, 1, 0, 0, 0);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end
---------------------------------
--回避されなかった場合
---------------------------------
changeAnime(spep_2 + 36, 1, 102);
changeAnime(spep_2 + 52, 1, 107);

setMoveKey( spep_2 + 36, 1, 1458, -1758.2 , 0 );
setMoveKey( spep_2 + 38, 1, 1141.7, -1373.2 , 0 );
setMoveKey( spep_2 + 40, 1, 874, -1023.4 , 0 );
setMoveKey( spep_2 + 42, 1, 635.1, -736.9 , 0 );
setMoveKey( spep_2 + 44, 1, 453, -493.7 , 0 );
setMoveKey( spep_2 + 46, 1, 299.6, -309.7 , 0 );
setMoveKey( spep_2 + 48, 1, 194.9, -169 , 0 );
setMoveKey( spep_2 + 50, 1, 119, -91.6 , 0 );

setMoveKey( spep_2 + 52, 1, 18.5, -219.1 , 0 );
setMoveKey( spep_2 + 54, 1, 23.5, -212.3 , 0 );
setMoveKey( spep_2 + 56, 1, 16.2, -216.5 , 0 );
setMoveKey( spep_2 + 58, 1, 24.7, -203.5 , 0 );
setMoveKey( spep_2 + 60, 1, 20.9, -201.5 , 0 );
setMoveKey( spep_2 + 62, 1, 24.8, -190.4 , 0 );
setMoveKey( spep_2 + 64, 1, 16.5, -190.2 , 0 );
setMoveKey( spep_2 + 66, 1, 26.1, -188.7 , 0 );
setMoveKey( spep_2 + 68, 1, 23.6, -203.2 , 0 );
setMoveKey( spep_2 + 70, 1, 29.2, -201.7 , 0 );
setMoveKey( spep_2 + 72, 1, 22.8, -212.1 , 0 );
setMoveKey( spep_2 + 74, 1, 38.5, -253.1 , 0 );
setMoveKey( spep_2 + 76, 1, 43.4, -336.1 , 0 );
setMoveKey( spep_2 + 78, 1, 69.3, -433.1 , 0 );
setMoveKey( spep_2 + 80, 1, 88.5, -576 , 0 );
setMoveKey( spep_2 + 82, 1, 120.7, -732.9 , 0 );
setMoveKey( spep_2 + 84, 1, 146.1, -931.8 , 0 );

setScaleKey( spep_2 + 36, 1, 7.03, 7.03 );
setScaleKey( spep_2 + 38, 1, 5.96, 5.96 );
setScaleKey( spep_2 + 40, 1, 5.02, 5.02 );
setScaleKey( spep_2 + 42, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 44, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 46, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 48, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 50, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 51, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 52, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 54, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 56, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 58, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 60, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 62, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 64, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 66, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 68, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 70, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 72, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 74, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 76, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 78, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 80, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 82, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 84, 1, 3.88, 3.88 );

setRotateKey( spep_2 + 36, 1, 0 );
setRotateKey( spep_2 + 51, 1, 0 );
setRotateKey( spep_2 + 52, 1, 16.7 );
setRotateKey( spep_2 + 84, 1, 16.7 );

------------------------------------------------------
-- Scene04
------------------------------------------------------
spep_3 = spep_2+98;

--背景・白フェード--
entryFade(spep_3,0,0,10,255,255,255,255);
entryFade(spep_3+50,0,2,8,255,255,255,200);
entryFade(spep_3+80+6,8,2,6,255,255,255,255);
entryFade(spep_3+120,0,2,8,255,255,255,255);
--entryFade(spep_3+158,8,2,0,255,255,255,255);
entryFadeBg(spep_3,0,178,0,10,10,10,200);

setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 88, 1, 0 );

changeAnime( spep_3 + 0, 1, 5 );
changeAnime( spep_3 + 58, 1, 108 );

setMoveKey( spep_3+ 0, 1, -1432.2, -1149.9 , 0 );
setMoveKey( spep_3+6 + 0, 1, -1432.2, -1149.9 , 0 );
setMoveKey( spep_3+6 + 2, 1, -1343.8, -1077.1 , 0 );
setMoveKey( spep_3+6 + 4, 1, -1189.1, -949.5 , 0 );
setMoveKey( spep_3+6 + 6, 1, -968.2, -767.4 , 0 );
setMoveKey( spep_3+6 + 8, 1, -680.9, -530.7 , 0 );
setMoveKey( spep_3+6 + 10, 1, -327.2, -239.1 , 0 );
setMoveKey( spep_3+6 + 12, 1, -190.6, -126.3 , 0 );
setMoveKey( spep_3+6 + 14, 1, -53.9, -13.4 , 0 );
setMoveKey( spep_3+6 + 16, 1, 82.9, 99.4 , 0 );
setMoveKey( spep_3+6 + 18, 1, 94, 108.8 , 0 );
setMoveKey( spep_3+6 + 20, 1, 105.2, 118.2 , 0 );
setMoveKey( spep_3+6 + 22, 1, 116.4, 127.7 , 0 );
setMoveKey( spep_3+6 + 24, 1, 124.5, 134.3 , 0 );
setMoveKey( spep_3+6 + 26, 1, 132, 140.3 , 0 );
setMoveKey( spep_3+6 + 28, 1, 138.8, 145.8 , 0 );
setMoveKey( spep_3+6 + 30, 1, 144.8, 150.7 , 0 );
setMoveKey( spep_3+6 + 32, 1, 150.1, 155.1 , 0 );
setMoveKey( spep_3+6 + 34, 1, 154.8, 158.8 , 0 );
setMoveKey( spep_3+6 + 36, 1, 158.7, 162 , 0 );
setMoveKey( spep_3+6 + 38, 1, 161.9, 164.4 , 0 );
setMoveKey( spep_3+6 + 40, 1, 158.2, 163.9 , 0 );
setMoveKey( spep_3+6 + 42, 1, 152.1, 163 , 0 );
setMoveKey( spep_3+6 + 44, 1, 143.6, 161.7 , 0 );
setMoveKey( spep_3+6 + 46, 1, 132.6, 160.1 , 0 );
setMoveKey( spep_3+6 + 48, 1, 119.3, 158.1 , 0 );
setMoveKey( spep_3+6 + 51, 1, 103.5, 155.5 , 0 );
setMoveKey( spep_3+6 + 52, 1, 203.6, 254.8 , 0 );
setMoveKey( spep_3+6 + 54, 1, 197.3, 255.7 , 0 );
setMoveKey( spep_3+6 + 56, 1, 173, 231.2 , 0 );
setMoveKey( spep_3+6 + 58, 1, 170.7, 213.2 , 0 );
setMoveKey( spep_3+6 + 60, 1, 150.5, 173.7 , 0 );
setMoveKey( spep_3+6 + 62, 1, 160.9, 194.5 , 0 );
setMoveKey( spep_3+6 + 64, 1, 155.3, 195.2 , 0 );
setMoveKey( spep_3+6 + 66, 1, 173.6, 204 , 0 );
setMoveKey( spep_3+6 + 68, 1, 176, 196.8 , 0 );
setMoveKey( spep_3+6 + 70, 1, 186.4, 213.5 , 0 );
setMoveKey( spep_3+6 + 72, 1, 180.8, 214.3 , 0 );
setMoveKey( spep_3+6 + 74, 1, 199.1, 223 , 0 );
setMoveKey( spep_3+6 + 76, 1, 201.5, 215.8 , 0 );
setMoveKey( spep_3+6 + 78, 1, 406.9, 351.6 , 0 );
setMoveKey( spep_3+6 + 80, 1, 596.4, 471.4 , 0 );
setMoveKey( spep_3+6 + 82, 1, 809.8, 599.3 , 0 );

setScaleKey( spep_3+6 + 0, 1, 5.99, 5.99 );
setScaleKey( spep_3+6 + 2, 1, 5.69, 5.69 );
setScaleKey( spep_3+6 + 4, 1, 5.16, 5.16 );
setScaleKey( spep_3+6 + 6, 1, 4.42, 4.42 );
setScaleKey( spep_3+6 + 8, 1, 3.45, 3.45 );
setScaleKey( spep_3+6 + 10, 1, 2.25, 2.25 );
setScaleKey( spep_3+6 + 12, 1, 1.79, 1.79 );
setScaleKey( spep_3+6 + 14, 1, 1.33, 1.33 );
setScaleKey( spep_3+6 + 16, 1, 0.87, 0.87 );
setScaleKey( spep_3+6 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_3+6 + 20, 1, 0.8, 0.8 );
setScaleKey( spep_3+6 + 22, 1, 0.76, 0.76 );
setScaleKey( spep_3+6 + 24, 1, 0.73, 0.73 );
setScaleKey( spep_3+6 + 26, 1, 0.71, 0.71 );
setScaleKey( spep_3+6 + 28, 1, 0.68, 0.68 );
setScaleKey( spep_3+6 + 30, 1, 0.66, 0.66 );
setScaleKey( spep_3+6 + 32, 1, 0.65, 0.65 );
setScaleKey( spep_3+6 + 34, 1, 0.63, 0.63 );
setScaleKey( spep_3+6 + 36, 1, 0.62, 0.62 );
setScaleKey( spep_3+6 + 38, 1, 0.61, 0.61 );
setScaleKey( spep_3+6 + 40, 1, 0.64, 0.64 );
setScaleKey( spep_3+6 + 42, 1, 0.71, 0.71 );
setScaleKey( spep_3+6 + 44, 1, 0.79, 0.79 );
setScaleKey( spep_3+6 + 46, 1, 0.91, 0.91 );
setScaleKey( spep_3+6 + 48, 1, 1.04, 1.04 );
setScaleKey( spep_3+6 + 51, 1, 1.21, 1.21 );
setScaleKey( spep_3+6 + 52, 1, 2.68, 2.68 );
setScaleKey( spep_3+6 + 54, 1, 2.39, 2.39 );
setScaleKey( spep_3+6 + 56, 1, 2.12, 2.12 );
setScaleKey( spep_3+6 + 58, 1, 1.85, 1.85 );
setScaleKey( spep_3+6 + 60, 1, 1.58, 1.58 );
setScaleKey( spep_3+6 + 62, 1, 1.56, 1.56 );
setScaleKey( spep_3+6 + 64, 1, 1.54, 1.54 );
setScaleKey( spep_3+6 + 66, 1, 1.52, 1.52 );
setScaleKey( spep_3+6 + 68, 1, 1.5, 1.5 );
setScaleKey( spep_3+6 + 70, 1, 1.48, 1.48 );
setScaleKey( spep_3+6 + 72, 1, 1.46, 1.46 );
setScaleKey( spep_3+6 + 74, 1, 1.44, 1.44 );
setScaleKey( spep_3+6 + 76, 1, 1.42, 1.42 );
setScaleKey( spep_3+6 + 78, 1, 1.28, 1.28 );
setScaleKey( spep_3+6 + 80, 1, 1.14, 1.14 );
setScaleKey( spep_3+6 + 82, 1, 0.99, 0.99 );

setRotateKey( spep_3 + 0, 1, 57.2 );
setRotateKey( spep_3 + 57, 1, 57.2 );
setRotateKey( spep_3 + 58, 1, -29 );
setRotateKey( spep_3 + 88, 1, -29 );

Kamehamedame = entryEffectLife(spep_3+8,SP_03,168,0x100, -1,0, 0, 0);

setEffScaleKey(spep_3+8,Kamehamedame,1.0,1.0);
setEffScaleKey(spep_3+176,Kamehamedame,1.0,1.0);

setEffRotateKey(spep_3+8,Kamehamedame,0);
setEffRotateKey(spep_3+176,Kamehamedame,0);

setEffAlphaKey(spep_3+8,Kamehamedame,255);
setEffAlphaKey(spep_3+176,Kamehamedame,255);

shuchusen3 = entryEffectLife( spep_3, 906, 178, 0x80,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.4,  1.4);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+178,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+178,  shuchusen3,  1.4,  1.4);
setEffRotateKey(  spep_3+178,  shuchusen3,  0);
setEffAlphaKey(  spep_3+178,  shuchusen3,  255);

--流線
ryusen3 = entryEffectLife( spep_3 + 0,  921, 178, 0x80, -1, 0, 20, 33.6 );
setEffMoveKey( spep_3 + 0, ryusen3 , 20, 33.6 , 0 );
setEffScaleKey( spep_3+ 0, ryusen3 , -1.92, 1.32 );
setEffRotateKey( spep_3 + 0, ryusen3 , 140.5 );
setEffAlphaKey( spep_3 + 0, ryusen3 , 255 );

--書き文字　バキッ
ctBaki = entryEffectLife( spep_3+6 + 52,  10020, 20, 0x100, -1, 0, -82.7, 346.4 );
setEffMoveKey( spep_3+6 + 52, ctBaki, -82.7, 346.4 , 0 );
setEffMoveKey( spep_3+6 + 54, ctBaki, -64.7, 315.4 , 0 );
setEffMoveKey( spep_3+6 + 56, ctBaki, -78.1, 295.3 , 0 );
setEffMoveKey( spep_3+6 + 58, ctBaki, -90, 298.7 , 0 );
setEffMoveKey( spep_3+6 + 60, ctBaki, -78.6, 303.3 , 0 );
setEffMoveKey( spep_3+6 + 62, ctBaki, -66.2, 309.4 , 0 );
setEffMoveKey( spep_3+6 + 64, ctBaki, -79.3, 310.6 , 0 );
setEffMoveKey( spep_3+6 + 66, ctBaki, -79.4, 312.4 , 0 );
setEffMoveKey( spep_3+6 + 68, ctBaki, -79.6, 314.2 , 0 );
setEffMoveKey( spep_3+6 + 70, ctBaki, -79.7, 316 , 0 );
setEffMoveKey( spep_3+6 + 72, ctBaki, -79.8, 317.8 , 0 );

setEffScaleKey( spep_3+6 + 52, ctBaki, 1.07, 1.07 );
setEffScaleKey( spep_3+6 + 54, ctBaki, 2.3, 2.3 );
setEffScaleKey( spep_3+6 + 56, ctBaki, 2.92, 2.92 );
setEffScaleKey( spep_3+6 + 58, ctBaki, 2.78, 2.78 );
setEffScaleKey( spep_3+6 + 60, ctBaki, 2.63, 2.63 );
setEffScaleKey( spep_3+6 + 62, ctBaki, 2.5, 2.5 );
setEffScaleKey( spep_3+6 + 64, ctBaki, 2.36, 2.36 );
setEffScaleKey( spep_3+6 + 66, ctBaki, 2.3, 2.3 );
setEffScaleKey( spep_3+6 + 68, ctBaki, 2.23, 2.23 );
setEffScaleKey( spep_3+6 + 70, ctBaki, 2.17, 2.17 );
setEffScaleKey( spep_3+6 + 72, ctBaki, 2.1, 2.1 );

setEffRotateKey( spep_3+6 + 52, ctBaki, -5.2 );
setEffRotateKey( spep_3+6 + 54, ctBaki, -18.5 );
setEffRotateKey( spep_3+6 + 56, ctBaki, -5.2 );
setEffRotateKey( spep_3+6 + 58, ctBaki, 3.4 );
setEffRotateKey( spep_3+6 + 60, ctBaki, -5.3 );
setEffRotateKey( spep_3+6 + 62, ctBaki, -16 );
setEffRotateKey( spep_3+6 + 64, ctBaki, -5.2 );
setEffRotateKey( spep_3+6 + 72, ctBaki, -5.2 );

setEffAlphaKey( spep_3+6 + 52, ctBaki, 255 );
setEffAlphaKey( spep_3+6 + 64, ctBaki, 255 );
setEffAlphaKey( spep_3+6 + 66, ctBaki, 191 );
setEffAlphaKey( spep_3+6 + 68, ctBaki, 128 );
setEffAlphaKey( spep_3+6 + 70, ctBaki, 64 );
setEffAlphaKey( spep_3+6 + 72, ctBaki, 0 );

--書き文字　ズオッ 10012
ctZuo = entryEffectLife( spep_3+6 + 118,  10012, 30, 0x100, -1, 0, 78.7, 260.5 );
setEffMoveKey( spep_3+6 + 118, ctZuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_3+6 + 120, ctZuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_3+6 + 122, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3+6 + 124, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3+6 + 126, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3+6 + 128, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3+6 + 130, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3+6 + 132, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3+6 + 134, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3+6 + 136, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3+6 + 138, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3+6 + 140, ctZuo, 173.1, 345.5 , 0 );
setEffMoveKey( spep_3+6 + 142, ctZuo, 166.7, 367.9 , 0 );
setEffMoveKey( spep_3+6 + 144, ctZuo, 211.6, 339 , 0 );
setEffMoveKey( spep_3+6 + 146, ctZuo, 195.7, 370.9 , 0 );
setEffMoveKey( spep_3+6 + 148, ctZuo, 210.3, 372.4 , 0 );

setEffScaleKey( spep_3+6 + 118, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_3+6 + 120, ctZuo, 1.54, 1.54 );
setEffScaleKey( spep_3+6 + 122, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_3+6 + 138, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_3+6 + 140, ctZuo, 3.55, 3.55 );
setEffScaleKey( spep_3+6 + 142, ctZuo, 4.37, 4.37 );
setEffScaleKey( spep_3+6 + 144, ctZuo, 5.19, 5.19 );
setEffScaleKey( spep_3+6 + 146, ctZuo, 6.01, 6.01 );
setEffScaleKey( spep_3+6 + 148, ctZuo, 6.82, 6.82 );

setEffRotateKey( spep_3+6 + 118, ctZuo, 27.2 );
setEffRotateKey( spep_3+6 + 148, ctZuo, 27.2 );

setEffAlphaKey( spep_3+6 + 118, ctZuo, 255 );
setEffAlphaKey( spep_3+6 + 138, ctZuo, 255 );
setEffAlphaKey( spep_3+6 + 140, ctZuo, 204 );
setEffAlphaKey( spep_3+6 + 142, ctZuo, 153 );
setEffAlphaKey( spep_3+6 + 144, ctZuo, 102 );
setEffAlphaKey( spep_3+6 + 146, ctZuo, 51 );
setEffAlphaKey( spep_3+6 + 148, ctZuo, 0 );

-- SE --
playSe( spep_3, 1018);
playSe( spep_3+6+52, 1010);
playSe( spep_3+6+118, 1022);

------------------------------------------------------
-- Scene06
------------------------------------------------------
spep_4 = spep_3+178;

--背景・白フェード--
entryFade(spep_4,0,0,10,255,255,255,255);
entryFade(spep_4+48,10,2,0,255,255,255,255);
entryFade(spep_4+80,40,4,0,255,255,255,255);
entryFadeBg(spep_4,0,120,0,10,10,10,200);

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, -937.3, -1293.7 , 0 );
setMoveKey( spep_4 + 2, 1, -730.5, -1035.5 , 0 );
setMoveKey( spep_4 + 4, 1, -523.8, -777.2 , 0 );
setMoveKey( spep_4 + 6, 1, -325.1, -523 , 0 );
setMoveKey( spep_4 + 8, 1, -110.3, -260.7 , 0 );
setMoveKey( spep_4 + 10, 1, 92.4, -10.5 , 0 );
setMoveKey( spep_4 + 12, 1, 99.6, 1.5 , 0 );
setMoveKey( spep_4 + 14, 1, 94.7, 1.4 , 0 );
setMoveKey( spep_4 + 16, 1, 105.9, 9.4 , 0 );
setMoveKey( spep_4 + 18, 1, 105, 5.3 , 0 );
setMoveKey( spep_4 + 20, 1, 112.2, 17.3 , 0 );
setMoveKey( spep_4 + 22, 1, 107.4, 17.2 , 0 );
setMoveKey( spep_4 + 24, 1, 118.5, 25.2 , 0 );
setMoveKey( spep_4 + 26, 1, 117.7, 25.1 , 0 );
setMoveKey( spep_4 + 28, 1, 124.9, 33.1 , 0 );
setMoveKey( spep_4 + 30, 1, 120, 33 , 0 );
setMoveKey( spep_4 + 32, 1, 131.2, 41 , 0 );
setMoveKey( spep_4 + 34, 1, 130.3, 36.9 , 0 );
setMoveKey( spep_4 + 36, 1, 137.5, 48.9 , 0 );
setMoveKey( spep_4 + 38, 1, 136.7, 44.8 , 0 );
setMoveKey( spep_4 + 40, 1, 143.8, 56.8 , 0 );
setMoveKey( spep_4 + 42, 1, 147, 60.7 , 0 );
setMoveKey( spep_4 + 44, 1, 150.1, 64.7 , 0 );
setMoveKey( spep_4 + 46, 1, 149.3, 56.6 , 0 );
setMoveKey( spep_4 + 48, 1, 156.5, 72.6 , 0 );
setMoveKey( spep_4 + 50, 1, 147.6, 72.5 , 0 );
setMoveKey( spep_4 + 52, 1, 162.8, 80.5 , 0 );
setMoveKey( spep_4 + 54, 1, 161.9, 68.4 , 0 );
setMoveKey( spep_4 + 56, 1, 169.1, 88.4 , 0 );
setMoveKey( spep_4 + 58, 1, 164.3, 84.3 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.33, 0.33 );
setScaleKey( spep_4 + 4, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 6, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 8, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 10, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 12, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 14, 1, 0.74, 0.74 );
setScaleKey( spep_4 + 18, 1, 0.74, 0.74 );
setScaleKey( spep_4 + 20, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 22, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 24, 1, 0.72, 0.72 );
setScaleKey( spep_4 + 28, 1, 0.72, 0.72 );
setScaleKey( spep_4 + 30, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 34, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 36, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 38, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 40, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 44, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 46, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 50, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 52, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 54, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 56, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 58, 1, 0.66, 0.66 );

setRotateKey( spep_4 + 0, 1, -87.9 );
setRotateKey( spep_4 + 2, 1, -89.1 );
setRotateKey( spep_4 + 4, 1, -90.3 );
setRotateKey( spep_4 + 6, 1, -91.4 );
setRotateKey( spep_4 + 8, 1, -92.6 );
setRotateKey( spep_4 + 10, 1, -93.8 );
setRotateKey( spep_4 + 14, 1, -93.8 );
setRotateKey( spep_4 + 16, 1, -93.9 );
setRotateKey( spep_4 + 22, 1, -93.9 );
setRotateKey( spep_4 + 24, 1, -94 );
setRotateKey( spep_4 + 30, 1, -94 );
setRotateKey( spep_4 + 32, 1, -94.1 );
setRotateKey( spep_4 + 38, 1, -94.1 );
setRotateKey( spep_4 + 40, 1, -94.2 );
setRotateKey( spep_4 + 46, 1, -94.2 );
setRotateKey( spep_4 + 48, 1, -94.3 );
setRotateKey( spep_4 + 52, 1, -94.3 );
setRotateKey( spep_4 + 54, 1, -94.4 );
setRotateKey( spep_4 + 56, 1, -94.3 );
setRotateKey( spep_4 + 58, 1, -94.4 );

--集中線--
shuchusen4 = entryEffectLife( spep_4, 906, 58, 0x80,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.4,  1.4);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+58,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+58,  shuchusen4,  1.4,  1.4);
setEffRotateKey(  spep_4+58,  shuchusen4,  0);
setEffAlphaKey(  spep_4+58,  shuchusen4,  255);

--流線
ryusen4 = entryEffectLife( spep_4 + 0,  921, 58, 0x80, -1, 0, 20, 33.6 );
setEffMoveKey( spep_4 + 0, ryusen4 , 20, 33.6 , 0 );
setEffScaleKey( spep_4+ 0, ryusen4 , 1.92, 1.32 );
setEffRotateKey( spep_4 + 0, ryusen4 , 130.5 );
setEffAlphaKey( spep_4 + 0, ryusen4 , 255 );

--ナビ--
Nabi = entryEffectLife(spep_4, SP_04, 58, 0x80, -1,0, 0, 0);

setEffScaleKey(spep_4,Nabi,1.0,1.0);
setEffScaleKey(spep_4+58,Nabi,1.0,1.0);

setEffRotateKey(spep_4,Nabi,0);
setEffRotateKey(spep_4+58,Nabi,0);

setEffAlphaKey(spep_4,Nabi,255);
setEffAlphaKey(spep_4+58,Nabi,255);

--ズドドド
ctZudododo = entryEffectLife( spep_4 + 0,  10014, 58, 0x100, -1, 0, 0, 368.7 );
setEffMoveKey( spep_4 + 0, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 2, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 4, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 6, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 8, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 10, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 12, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 14, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 16, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 18, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 20, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 22, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 24, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 26, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 28, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 30, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 32, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 34, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 36, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 38, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 40, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 42, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 44, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 46, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 48, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 50, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 52, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 54, ctZudododo, 0, 344.4 , 0 );
setEffMoveKey( spep_4 + 56, ctZudododo, 0, 368.7 , 0 );
setEffMoveKey( spep_4 + 58, ctZudododo, 0, 344.4 , 0 );

setEffScaleKey( spep_4 + 0, ctZudododo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 58, ctZudododo, 2.73, 2.73 );
setEffRotateKey( spep_4 + 0, ctZudododo, 12.3 );
setEffRotateKey( spep_4 + 58, ctZudododo, 12.3 );
setEffAlphaKey( spep_4 + 0, ctZudododo, 255 );
setEffAlphaKey( spep_4 + 58, ctZudododo, 255 );

--ギャン--
Gyan = entryEffect( spep_4+60, 190000, 0x100,  -1, 0,  0,  0); 

setEffMoveKey(  spep_4+60,  Gyan,  0,  0);
setEffScaleKey(  spep_4+60,  Gyan,  1.0,  1.0);
setEffRotateKey(  spep_4+60,  Gyan,  0);
setEffAlphaKey(  spep_4+60,  Gyan,  255);

playSe( spep_4+60, 1024);

-- 書き文字エントリー
ct4 = entryEffectLife( spep_4+60, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン

setEffScaleKey( spep_4+60, ct4, 3.0, 3.0);
setEffScaleKey( spep_4+118, ct4, 4.0, 4.0);
setEffAlphaKey( spep_4+60, ct4, 255);
setEffAlphaKey( spep_4+118, ct4, 80);
setEffShake( spep_4+60, ct4, 58, 10);

------------------------------------------------------
-- Scene07
------------------------------------------------------
spep_5= spep_4+120;

--背景・白フェード--
entryFade(spep_5+38,6,2,20,255,255,255,229);
entryFade(spep_5+78,6,2,8,255,255,255,229);
entryFade(spep_5+140,36,2,0,255,255,255,255);

--ナビ--
Nabi2 = entryEffect(spep_5,SP_05,0x100, -1,0, 0, 0);

setEffScaleKey(spep_5,Nabi2,1.0,1.0);
setEffScaleKey(spep_5+100,Nabi2,1.0,1.0);

setEffRotateKey(spep_5,Nabi2,0);
setEffRotateKey(spep_5+100,Nabi2,0);

setEffAlphaKey(spep_5,Nabi2,255);
setEffAlphaKey(spep_5+100,Nabi2,255);

--集中線--
shuchusen5 = entryEffectLife( spep_5+44, 906, 134, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_5+44,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+44,  shuchusen5,  1.4,  1.4);
setEffRotateKey(  spep_5+44,  shuchusen5,  0);
setEffAlphaKey(  spep_5+44,  shuchusen5,  255);
setEffMoveKey(  spep_5+58,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+58,  shuchusen5,  1.4,  1.4);
setEffRotateKey(  spep_5+58,  shuchusen5,  0);
setEffAlphaKey(  spep_5+58,  shuchusen5,  255);

-- SE --
playSe(spep_5,SE_10);

-- ダメージ表示
dealDamage( spep_5+84);
entryFade( spep_5+168, 9,  10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+178);

else

------------------------------------------------------
-- Scene01
------------------------------------------------------
spep_0 = 0;

--背景・白フェード--
entryFade(spep_0,0,0,6,255,255,255,255);
entryFade(spep_0+14,0,2,8,255,255,255,255);
entryFade(spep_0+114,14,2,0,255,255,255,255);
entryFadeBg(spep_0+6,0,122,0,10,10,10,200);

--エフェクト
Kidame=entryEffectLife(spep_0,SP_01r,128,0x100,-1,0,0,0);

setEffScaleKey(spep_0,Kidame,1.0,1.0);
setEffScaleKey(spep_0+128,Kidame,1.0,1.0);

setEffRotateKey(spep_0,Kidame,0);
setEffRotateKey(spep_0+128,Kidame,0);

setEffAlphaKey(spep_0,Kidame,255);
setEffAlphaKey(spep_0+128,Kidame,255);

--集中線--
shuchusen0 = entryEffectLife(spep_0+18,906,110,0x80,-1,0,0,0);

setEffScaleKey(spep_0+18,shuchusen0,1.4,1.4);
setEffScaleKey(spep_0+128,shuchusen0,1.4,1.4);

setEffRotateKey(spep_0+18,shuchusen0,0);
setEffRotateKey(spep_0+128,shuchusen0,0);

setEffAlphaKey(spep_0+18,shuchusen0,255);
setEffAlphaKey(spep_0+128,shuchusen0,255);

--ズズズン--10013
ctZuzuzun = entryEffectLife(spep_0+20,10013,30,0x100,-1,20.1, 249.8 , 0);

setEffMoveKey( spep_0 + 20, ctZuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 22, ctZuzuzun, 23.5, 298.8 , 0 );
setEffMoveKey( spep_0 + 24, ctZuzuzun, 39.9, 357.6 , 0 );
setEffMoveKey( spep_0 + 26, ctZuzuzun, 31.2, 355 , 0 );
setEffMoveKey( spep_0 + 28, ctZuzuzun, 41.1, 364.7 , 0 );
setEffMoveKey( spep_0 + 30, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 32, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 34, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 36, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 38, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 40, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 42, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 44, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 46, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 48, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_0 + 50, ctZuzuzun, 41.1, 364.5 , 0 );

setEffScaleKey( spep_0 + 20, ctZuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 22, ctZuzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 + 24, ctZuzuzun, 2.8, 2.8 );
setEffScaleKey( spep_0 + 26, ctZuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 + 50, ctZuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 + 20, ctZuzuzun, -5 );
setEffRotateKey( spep_0 + 50, ctZuzuzun, -5 );

setEffAlphaKey( spep_0 + 20, ctZuzuzun, 255 );
setEffAlphaKey( spep_0 + 36, ctZuzuzun, 255 );
setEffAlphaKey( spep_0 + 38, ctZuzuzun, 204 );
setEffAlphaKey( spep_0 + 40, ctZuzuzun, 142 );
setEffAlphaKey( spep_0 + 42, ctZuzuzun, 91 );
setEffAlphaKey( spep_0 + 44, ctZuzuzun, 51 );
setEffAlphaKey( spep_0 + 46, ctZuzuzun, 23 );
setEffAlphaKey( spep_0 + 48, ctZuzuzun, 6 );
setEffAlphaKey( spep_0 + 50, ctZuzuzun, 0 );

--カットイン
ctgogo = entryEffectLife( spep_0+55, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_0+55, ctgogo, 70, 8);
setEffScaleKey(spep_0+55, ctgogo, -0.7, 0.7);

--顔カットイン
--speff = entryEffect(  spep_0+44,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_0+44,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_0+14,SE_01);
playSe(spep_0+55,SE_04);

------------------------------------------------------
-- Scene02 CARD
------------------------------------------------------
spep_1 = spep_0+128;

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_1, 906, 90, 0x80,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffMoveKey(  spep_1+90,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+90,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_1+90,  shuchusen1,  0);
setEffAlphaKey(  spep_1+90,  shuchusen1,  255);

entryFade( spep_1+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_1, SE_05);

------------------------------------------------------
-- Scene03
------------------------------------------------------
spep_2 =spep_1+90;

--背景・白フェード--
entryFade(spep_2,0,0,6,255,255,255,255);
entryFade(spep_2+52,0,2,8,255,255,255,255);
entryFade(spep_2+88,10,2,0,255,255,255,255);
entryFadeBg(spep_2,0,98,0,10,10,10,200);

--敵の動き
setDisp(spep_2, 1, 1);
setDisp(spep_2+84, 1, 0);

ryusen3=entryEffectLife( spep_2,  921, 98, 0x80, -1, 0, 20, 33.6 );
setEffMoveKey( spep_2 + 0, ryusen3, 20, 33.6 , 0 );
setEffScaleKey( spep_2 + 0, ryusen3, 1.91, 1.11 );
setEffRotateKey( spep_2 + 0, ryusen3, -105.3 );
setEffAlphaKey( spep_2 + 0, ryusen3, 255 );

Tossin = entryEffectLife(  spep_2+4,  SP_02r,  94, 0x80, -1,0, 0, 0);

setEffScaleKey(spep_2+4,Tossin,1.0,1.0);
setEffScaleKey(spep_2+98,Tossin,1.0,1.0);

setEffRotateKey(spep_2+4,Tossin,0);
setEffRotateKey(spep_2+98,Tossin,0);

setEffAlphaKey(spep_2+4,Tossin,255);
setEffAlphaKey(spep_2+98,Tossin,255);

shuchusen2 = entryEffectLife( spep_2, 906, 98, 0x80,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.4,  1.4);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+98,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+98,  shuchusen2,  1.4,  1.4);
setEffRotateKey(  spep_2+98,  shuchusen2,  0);
setEffAlphaKey(  spep_2+98,  shuchusen2,  255);

--書き文字　ガッ
ctGa = entryEffectLife( spep_2 + 52,  10005, 20, 0x100, -1, 0, 163.9, 310.5 );

setEffMoveKey( spep_2 + 52, ctGa, 163.9, 310.5 , 0 );
setEffMoveKey( spep_2 + 54, ctGa, 164.2, 310.4 , 0 );
setEffMoveKey( spep_2 + 56, ctGa, 164.1, 310.8 , 0 );
setEffMoveKey( spep_2 + 58, ctGa, 164, 310.6 , 0 );
setEffMoveKey( spep_2 + 60, ctGa, 164.1, 310.7 , 0 );
setEffMoveKey( spep_2 + 62, ctGa, 164.1, 310.8 , 0 );
setEffMoveKey( spep_2 + 64, ctGa, 164.1, 310.5 , 0 );
setEffMoveKey( spep_2 + 66, ctGa, 164, 310.5 , 0 );
setEffMoveKey( spep_2 + 72, ctGa, 164, 310.5 , 0 );

setEffScaleKey( spep_2 + 52, ctGa, 1.17, 1.17 );
setEffScaleKey( spep_2 + 54, ctGa, 2.5, 2.5 );
setEffScaleKey( spep_2 + 56, ctGa, 3.17, 3.17 );
setEffScaleKey( spep_2 + 58, ctGa, 3.02, 3.02 );
setEffScaleKey( spep_2 + 60, ctGa, 2.87, 2.87 );
setEffScaleKey( spep_2 + 62, ctGa, 2.72, 2.72 );
setEffScaleKey( spep_2 + 64, ctGa, 2.57, 2.57 );
setEffScaleKey( spep_2 + 66, ctGa, 2.57, 2.57 );
setEffScaleKey( spep_2 + 68, ctGa, 2.54, 2.54 );
setEffScaleKey( spep_2 + 70, ctGa, 2.52, 2.52 );
setEffScaleKey( spep_2 + 72, ctGa, 2.49, 2.49 );

setEffRotateKey( spep_2 + 52, ctGa, 26 );
setEffRotateKey( spep_2 + 54, ctGa, 12.7 );
setEffRotateKey( spep_2 + 56, ctGa, 26 );
setEffRotateKey( spep_2 + 58, ctGa, 34.6 );
setEffRotateKey( spep_2 + 60, ctGa, 25.9 );
setEffRotateKey( spep_2 + 62, ctGa, 15.2 );
setEffRotateKey( spep_2 + 64, ctGa, 26 );
setEffRotateKey( spep_2 + 66, ctGa, 25.9 );
setEffRotateKey( spep_2 + 68, ctGa, 25.9 );
setEffRotateKey( spep_2 + 70, ctGa, 26 );
setEffRotateKey( spep_2 + 72, ctGa, 26 );

setEffAlphaKey( spep_2 + 52, ctGa, 255 );
setEffAlphaKey( spep_2 + 66, ctGa, 255 );
setEffAlphaKey( spep_2 + 68, ctGa, 170 );
setEffAlphaKey( spep_2 + 70, ctGa, 85 );
setEffAlphaKey( spep_2 + 72, ctGa, 0 );

-- SE --
playSe( spep_2, 1018);
playSe( spep_2+52, 1011);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+34; --エンドフェイズのフレーム数を置き換える

--setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
--setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

setMoveKey( SP_dodge, 1, 0, -5000, -5000);
setMoveKey( SP_dodge+9, 1, 0, -5000, -5000);
setMoveKey( SP_dodge+10, 1, 0, 0, 0);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

---------------------------------
--回避されなかった場合
---------------------------------
changeAnime(spep_2 + 36, 1, 102);
changeAnime(spep_2 + 52, 1, 107);

setMoveKey( spep_2 + 36, 1, 1458, -1758.2 , 0 );
setMoveKey( spep_2 + 38, 1, 1141.7, -1373.2 , 0 );
setMoveKey( spep_2 + 40, 1, 874, -1023.4 , 0 );
setMoveKey( spep_2 + 42, 1, 635.1, -736.9 , 0 );
setMoveKey( spep_2 + 44, 1, 453, -493.7 , 0 );
setMoveKey( spep_2 + 46, 1, 299.6, -309.7 , 0 );
setMoveKey( spep_2 + 48, 1, 194.9, -169 , 0 );
setMoveKey( spep_2 + 50, 1, 119, -91.6 , 0 );

setMoveKey( spep_2 + 52, 1, 18.5, -219.1 , 0 );
setMoveKey( spep_2 + 54, 1, 23.5, -212.3 , 0 );
setMoveKey( spep_2 + 56, 1, 16.2, -216.5 , 0 );
setMoveKey( spep_2 + 58, 1, 24.7, -203.5 , 0 );
setMoveKey( spep_2 + 60, 1, 20.9, -201.5 , 0 );
setMoveKey( spep_2 + 62, 1, 24.8, -190.4 , 0 );
setMoveKey( spep_2 + 64, 1, 16.5, -190.2 , 0 );
setMoveKey( spep_2 + 66, 1, 26.1, -188.7 , 0 );
setMoveKey( spep_2 + 68, 1, 23.6, -203.2 , 0 );
setMoveKey( spep_2 + 70, 1, 29.2, -201.7 , 0 );
setMoveKey( spep_2 + 72, 1, 22.8, -212.1 , 0 );
setMoveKey( spep_2 + 74, 1, 38.5, -253.1 , 0 );
setMoveKey( spep_2 + 76, 1, 43.4, -336.1 , 0 );
setMoveKey( spep_2 + 78, 1, 69.3, -433.1 , 0 );
setMoveKey( spep_2 + 80, 1, 88.5, -576 , 0 );
setMoveKey( spep_2 + 82, 1, 120.7, -732.9 , 0 );
setMoveKey( spep_2 + 84, 1, 146.1, -931.8 , 0 );

setScaleKey( spep_2 + 36, 1, 7.03, 7.03 );
setScaleKey( spep_2 + 38, 1, 5.96, 5.96 );
setScaleKey( spep_2 + 40, 1, 5.02, 5.02 );
setScaleKey( spep_2 + 42, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 44, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 46, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 48, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 50, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 51, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 52, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 54, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 56, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 58, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 60, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 62, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 64, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 66, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 68, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 70, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 72, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 74, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 76, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 78, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 80, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 82, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 84, 1, 3.88, 3.88 );

setRotateKey( spep_2 + 36, 1, 0 );
setRotateKey( spep_2 + 51, 1, 0 );
setRotateKey( spep_2 + 52, 1, 16.7 );
setRotateKey( spep_2 + 84, 1, 16.7 );

------------------------------------------------------
-- Scene04
------------------------------------------------------
spep_3 = spep_2+98;

--背景・白フェード--
entryFade(spep_3,0,0,10,255,255,255,255);
entryFade(spep_3+50,0,2,8,255,255,255,200);
entryFade(spep_3+80+6,8,2,6,255,255,255,255);
entryFade(spep_3+120,0,2,8,255,255,255,255);
--entryFade(spep_3+158,8,2,0,255,255,255,255);
entryFadeBg(spep_3,0,178,0,10,10,10,200);

setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 88, 1, 0 );

changeAnime( spep_3 + 0, 1, 5 );
changeAnime( spep_3 + 58, 1, 108 );

setMoveKey( spep_3+ 0, 1, -1432.2, -1149.9 , 0 );
setMoveKey( spep_3+6 + 0, 1, -1432.2, -1149.9 , 0 );
setMoveKey( spep_3+6 + 2, 1, -1343.8, -1077.1 , 0 );
setMoveKey( spep_3+6 + 4, 1, -1189.1, -949.5 , 0 );
setMoveKey( spep_3+6 + 6, 1, -968.2, -767.4 , 0 );
setMoveKey( spep_3+6 + 8, 1, -680.9, -530.7 , 0 );
setMoveKey( spep_3+6 + 10, 1, -327.2, -239.1 , 0 );
setMoveKey( spep_3+6 + 12, 1, -190.6, -126.3 , 0 );
setMoveKey( spep_3+6 + 14, 1, -53.9, -13.4 , 0 );
setMoveKey( spep_3+6 + 16, 1, 82.9, 99.4 , 0 );
setMoveKey( spep_3+6 + 18, 1, 94, 108.8 , 0 );
setMoveKey( spep_3+6 + 20, 1, 105.2, 118.2 , 0 );
setMoveKey( spep_3+6 + 22, 1, 116.4, 127.7 , 0 );
setMoveKey( spep_3+6 + 24, 1, 124.5, 134.3 , 0 );
setMoveKey( spep_3+6 + 26, 1, 132, 140.3 , 0 );
setMoveKey( spep_3+6 + 28, 1, 138.8, 145.8 , 0 );
setMoveKey( spep_3+6 + 30, 1, 144.8, 150.7 , 0 );
setMoveKey( spep_3+6 + 32, 1, 150.1, 155.1 , 0 );
setMoveKey( spep_3+6 + 34, 1, 154.8, 158.8 , 0 );
setMoveKey( spep_3+6 + 36, 1, 158.7, 162 , 0 );
setMoveKey( spep_3+6 + 38, 1, 161.9, 164.4 , 0 );
setMoveKey( spep_3+6 + 40, 1, 158.2, 163.9 , 0 );
setMoveKey( spep_3+6 + 42, 1, 152.1, 163 , 0 );
setMoveKey( spep_3+6 + 44, 1, 143.6, 161.7 , 0 );
setMoveKey( spep_3+6 + 46, 1, 132.6, 160.1 , 0 );
setMoveKey( spep_3+6 + 48, 1, 119.3, 158.1 , 0 );
setMoveKey( spep_3+6 + 51, 1, 103.5, 155.5 , 0 );
setMoveKey( spep_3+6 + 52, 1, 203.6, 254.8 , 0 );
setMoveKey( spep_3+6 + 54, 1, 197.3, 255.7 , 0 );
setMoveKey( spep_3+6 + 56, 1, 173, 231.2 , 0 );
setMoveKey( spep_3+6 + 58, 1, 170.7, 213.2 , 0 );
setMoveKey( spep_3+6 + 60, 1, 150.5, 173.7 , 0 );
setMoveKey( spep_3+6 + 62, 1, 160.9, 194.5 , 0 );
setMoveKey( spep_3+6 + 64, 1, 155.3, 195.2 , 0 );
setMoveKey( spep_3+6 + 66, 1, 173.6, 204 , 0 );
setMoveKey( spep_3+6 + 68, 1, 176, 196.8 , 0 );
setMoveKey( spep_3+6 + 70, 1, 186.4, 213.5 , 0 );
setMoveKey( spep_3+6 + 72, 1, 180.8, 214.3 , 0 );
setMoveKey( spep_3+6 + 74, 1, 199.1, 223 , 0 );
setMoveKey( spep_3+6 + 76, 1, 201.5, 215.8 , 0 );
setMoveKey( spep_3+6 + 78, 1, 406.9, 351.6 , 0 );
setMoveKey( spep_3+6 + 80, 1, 596.4, 471.4 , 0 );
setMoveKey( spep_3+6 + 82, 1, 809.8, 599.3 , 0 );

setScaleKey( spep_3+6 + 0, 1, 5.99, 5.99 );
setScaleKey( spep_3+6 + 2, 1, 5.69, 5.69 );
setScaleKey( spep_3+6 + 4, 1, 5.16, 5.16 );
setScaleKey( spep_3+6 + 6, 1, 4.42, 4.42 );
setScaleKey( spep_3+6 + 8, 1, 3.45, 3.45 );
setScaleKey( spep_3+6 + 10, 1, 2.25, 2.25 );
setScaleKey( spep_3+6 + 12, 1, 1.79, 1.79 );
setScaleKey( spep_3+6 + 14, 1, 1.33, 1.33 );
setScaleKey( spep_3+6 + 16, 1, 0.87, 0.87 );
setScaleKey( spep_3+6 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_3+6 + 20, 1, 0.8, 0.8 );
setScaleKey( spep_3+6 + 22, 1, 0.76, 0.76 );
setScaleKey( spep_3+6 + 24, 1, 0.73, 0.73 );
setScaleKey( spep_3+6 + 26, 1, 0.71, 0.71 );
setScaleKey( spep_3+6 + 28, 1, 0.68, 0.68 );
setScaleKey( spep_3+6 + 30, 1, 0.66, 0.66 );
setScaleKey( spep_3+6 + 32, 1, 0.65, 0.65 );
setScaleKey( spep_3+6 + 34, 1, 0.63, 0.63 );
setScaleKey( spep_3+6 + 36, 1, 0.62, 0.62 );
setScaleKey( spep_3+6 + 38, 1, 0.61, 0.61 );
setScaleKey( spep_3+6 + 40, 1, 0.64, 0.64 );
setScaleKey( spep_3+6 + 42, 1, 0.71, 0.71 );
setScaleKey( spep_3+6 + 44, 1, 0.79, 0.79 );
setScaleKey( spep_3+6 + 46, 1, 0.91, 0.91 );
setScaleKey( spep_3+6 + 48, 1, 1.04, 1.04 );
setScaleKey( spep_3+6 + 51, 1, 1.21, 1.21 );
setScaleKey( spep_3+6 + 52, 1, 2.68, 2.68 );
setScaleKey( spep_3+6 + 54, 1, 2.39, 2.39 );
setScaleKey( spep_3+6 + 56, 1, 2.12, 2.12 );
setScaleKey( spep_3+6 + 58, 1, 1.85, 1.85 );
setScaleKey( spep_3+6 + 60, 1, 1.58, 1.58 );
setScaleKey( spep_3+6 + 62, 1, 1.56, 1.56 );
setScaleKey( spep_3+6 + 64, 1, 1.54, 1.54 );
setScaleKey( spep_3+6 + 66, 1, 1.52, 1.52 );
setScaleKey( spep_3+6 + 68, 1, 1.5, 1.5 );
setScaleKey( spep_3+6 + 70, 1, 1.48, 1.48 );
setScaleKey( spep_3+6 + 72, 1, 1.46, 1.46 );
setScaleKey( spep_3+6 + 74, 1, 1.44, 1.44 );
setScaleKey( spep_3+6 + 76, 1, 1.42, 1.42 );
setScaleKey( spep_3+6 + 78, 1, 1.28, 1.28 );
setScaleKey( spep_3+6 + 80, 1, 1.14, 1.14 );
setScaleKey( spep_3+6 + 82, 1, 0.99, 0.99 );

setRotateKey( spep_3 + 0, 1, 57.2 );
setRotateKey( spep_3 + 57, 1, 57.2 );
setRotateKey( spep_3 + 58, 1, -29 );
setRotateKey( spep_3 + 88, 1, -29 );

Kamehamedame = entryEffectLife(spep_3+8,SP_03r,168,0x100, -1,0, 0, 0);

setEffScaleKey(spep_3+8,Kamehamedame,1.0,1.0);
setEffScaleKey(spep_3+176,Kamehamedame,1.0,1.0);

setEffRotateKey(spep_3+8,Kamehamedame,0);
setEffRotateKey(spep_3+176,Kamehamedame,0);

setEffAlphaKey(spep_3+8,Kamehamedame,255);
setEffAlphaKey(spep_3+176,Kamehamedame,255);

shuchusen3 = entryEffectLife( spep_3, 906, 178, 0x80,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.4,  1.4);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+178,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+178,  shuchusen3,  1.4,  1.4);
setEffRotateKey(  spep_3+178,  shuchusen3,  0);
setEffAlphaKey(  spep_3+178,  shuchusen3,  255);

--流線
ryusen3 = entryEffectLife( spep_3 + 0,  921, 178, 0x80, -1, 0, 20, 33.6 );
setEffMoveKey( spep_3 + 0, ryusen3 , 20, 33.6 , 0 );
setEffScaleKey( spep_3+ 0, ryusen3 , -1.92, 1.32 );
setEffRotateKey( spep_3 + 0, ryusen3 , 140.5 );
setEffAlphaKey( spep_3 + 0, ryusen3 , 255 );

--書き文字　バキッ
ctBaki = entryEffectLife( spep_3+6 + 52,  10020, 20, 0x100, -1, 0, -82.7, 346.4 );
setEffMoveKey( spep_3+6 + 52, ctBaki, -82.7, 346.4 , 0 );
setEffMoveKey( spep_3+6 + 54, ctBaki, -64.7, 315.4 , 0 );
setEffMoveKey( spep_3+6 + 56, ctBaki, -78.1, 295.3 , 0 );
setEffMoveKey( spep_3+6 + 58, ctBaki, -90, 298.7 , 0 );
setEffMoveKey( spep_3+6 + 60, ctBaki, -78.6, 303.3 , 0 );
setEffMoveKey( spep_3+6 + 62, ctBaki, -66.2, 309.4 , 0 );
setEffMoveKey( spep_3+6 + 64, ctBaki, -79.3, 310.6 , 0 );
setEffMoveKey( spep_3+6 + 66, ctBaki, -79.4, 312.4 , 0 );
setEffMoveKey( spep_3+6 + 68, ctBaki, -79.6, 314.2 , 0 );
setEffMoveKey( spep_3+6 + 70, ctBaki, -79.7, 316 , 0 );
setEffMoveKey( spep_3+6 + 72, ctBaki, -79.8, 317.8 , 0 );

setEffScaleKey( spep_3+6 + 52, ctBaki, 1.07, 1.07 );
setEffScaleKey( spep_3+6 + 54, ctBaki, 2.3, 2.3 );
setEffScaleKey( spep_3+6 + 56, ctBaki, 2.92, 2.92 );
setEffScaleKey( spep_3+6 + 58, ctBaki, 2.78, 2.78 );
setEffScaleKey( spep_3+6 + 60, ctBaki, 2.63, 2.63 );
setEffScaleKey( spep_3+6 + 62, ctBaki, 2.5, 2.5 );
setEffScaleKey( spep_3+6 + 64, ctBaki, 2.36, 2.36 );
setEffScaleKey( spep_3+6 + 66, ctBaki, 2.3, 2.3 );
setEffScaleKey( spep_3+6 + 68, ctBaki, 2.23, 2.23 );
setEffScaleKey( spep_3+6 + 70, ctBaki, 2.17, 2.17 );
setEffScaleKey( spep_3+6 + 72, ctBaki, 2.1, 2.1 );

setEffRotateKey( spep_3+6 + 52, ctBaki, -5.2 );
setEffRotateKey( spep_3+6 + 54, ctBaki, -18.5 );
setEffRotateKey( spep_3+6 + 56, ctBaki, -5.2 );
setEffRotateKey( spep_3+6 + 58, ctBaki, 3.4 );
setEffRotateKey( spep_3+6 + 60, ctBaki, -5.3 );
setEffRotateKey( spep_3+6 + 62, ctBaki, -16 );
setEffRotateKey( spep_3+6 + 64, ctBaki, -5.2 );
setEffRotateKey( spep_3+6 + 72, ctBaki, -5.2 );

setEffAlphaKey( spep_3+6 + 52, ctBaki, 255 );
setEffAlphaKey( spep_3+6 + 64, ctBaki, 255 );
setEffAlphaKey( spep_3+6 + 66, ctBaki, 191 );
setEffAlphaKey( spep_3+6 + 68, ctBaki, 128 );
setEffAlphaKey( spep_3+6 + 70, ctBaki, 64 );
setEffAlphaKey( spep_3+6 + 72, ctBaki, 0 );

--書き文字　ズオッ 10012
ctZuo = entryEffectLife( spep_3+6 + 118,  10012, 30, 0x100, -1, 0, 78.7, 260.5 );
setEffMoveKey( spep_3+6 + 118, ctZuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_3+6 + 120, ctZuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_3+6 + 122, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3+6 + 124, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3+6 + 126, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3+6 + 128, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3+6 + 130, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3+6 + 132, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3+6 + 134, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3+6 + 136, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3+6 + 138, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3+6 + 140, ctZuo, 173.1, 345.5 , 0 );
setEffMoveKey( spep_3+6 + 142, ctZuo, 166.7, 367.9 , 0 );
setEffMoveKey( spep_3+6 + 144, ctZuo, 211.6, 339 , 0 );
setEffMoveKey( spep_3+6 + 146, ctZuo, 195.7, 370.9 , 0 );
setEffMoveKey( spep_3+6 + 148, ctZuo, 210.3, 372.4 , 0 );

setEffScaleKey( spep_3+6 + 118, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_3+6 + 120, ctZuo, 1.54, 1.54 );
setEffScaleKey( spep_3+6 + 122, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_3+6 + 138, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_3+6 + 140, ctZuo, 3.55, 3.55 );
setEffScaleKey( spep_3+6 + 142, ctZuo, 4.37, 4.37 );
setEffScaleKey( spep_3+6 + 144, ctZuo, 5.19, 5.19 );
setEffScaleKey( spep_3+6 + 146, ctZuo, 6.01, 6.01 );
setEffScaleKey( spep_3+6 + 148, ctZuo, 6.82, 6.82 );

setEffRotateKey( spep_3+6 + 118, ctZuo, 27.2 );
setEffRotateKey( spep_3+6 + 148, ctZuo, 27.2 );

setEffAlphaKey( spep_3+6 + 118, ctZuo, 255 );
setEffAlphaKey( spep_3+6 + 138, ctZuo, 255 );
setEffAlphaKey( spep_3+6 + 140, ctZuo, 204 );
setEffAlphaKey( spep_3+6 + 142, ctZuo, 153 );
setEffAlphaKey( spep_3+6 + 144, ctZuo, 102 );
setEffAlphaKey( spep_3+6 + 146, ctZuo, 51 );
setEffAlphaKey( spep_3+6 + 148, ctZuo, 0 );

-- SE --
playSe( spep_3, 1018);
playSe( spep_3+6+52, 1010);
playSe( spep_3+6+118, 1022);

------------------------------------------------------
-- Scene06
------------------------------------------------------
spep_4 = spep_3+178;

--背景・白フェード--
entryFade(spep_4,0,0,10,255,255,255,255);
entryFade(spep_4+48,10,2,0,255,255,255,255);
entryFade(spep_4+80,40,4,0,255,255,255,255);
entryFadeBg(spep_4,0,120,0,10,10,10,200);

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, -937.3, -1293.7 , 0 );
setMoveKey( spep_4 + 2, 1, -730.5, -1035.5 , 0 );
setMoveKey( spep_4 + 4, 1, -523.8, -777.2 , 0 );
setMoveKey( spep_4 + 6, 1, -325.1, -523 , 0 );
setMoveKey( spep_4 + 8, 1, -110.3, -260.7 , 0 );
setMoveKey( spep_4 + 10, 1, 92.4, -10.5 , 0 );
setMoveKey( spep_4 + 12, 1, 99.6, 1.5 , 0 );
setMoveKey( spep_4 + 14, 1, 94.7, 1.4 , 0 );
setMoveKey( spep_4 + 16, 1, 105.9, 9.4 , 0 );
setMoveKey( spep_4 + 18, 1, 105, 5.3 , 0 );
setMoveKey( spep_4 + 20, 1, 112.2, 17.3 , 0 );
setMoveKey( spep_4 + 22, 1, 107.4, 17.2 , 0 );
setMoveKey( spep_4 + 24, 1, 118.5, 25.2 , 0 );
setMoveKey( spep_4 + 26, 1, 117.7, 25.1 , 0 );
setMoveKey( spep_4 + 28, 1, 124.9, 33.1 , 0 );
setMoveKey( spep_4 + 30, 1, 120, 33 , 0 );
setMoveKey( spep_4 + 32, 1, 131.2, 41 , 0 );
setMoveKey( spep_4 + 34, 1, 130.3, 36.9 , 0 );
setMoveKey( spep_4 + 36, 1, 137.5, 48.9 , 0 );
setMoveKey( spep_4 + 38, 1, 136.7, 44.8 , 0 );
setMoveKey( spep_4 + 40, 1, 143.8, 56.8 , 0 );
setMoveKey( spep_4 + 42, 1, 147, 60.7 , 0 );
setMoveKey( spep_4 + 44, 1, 150.1, 64.7 , 0 );
setMoveKey( spep_4 + 46, 1, 149.3, 56.6 , 0 );
setMoveKey( spep_4 + 48, 1, 156.5, 72.6 , 0 );
setMoveKey( spep_4 + 50, 1, 147.6, 72.5 , 0 );
setMoveKey( spep_4 + 52, 1, 162.8, 80.5 , 0 );
setMoveKey( spep_4 + 54, 1, 161.9, 68.4 , 0 );
setMoveKey( spep_4 + 56, 1, 169.1, 88.4 , 0 );
setMoveKey( spep_4 + 58, 1, 164.3, 84.3 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.33, 0.33 );
setScaleKey( spep_4 + 4, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 6, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 8, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 10, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 12, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 14, 1, 0.74, 0.74 );
setScaleKey( spep_4 + 18, 1, 0.74, 0.74 );
setScaleKey( spep_4 + 20, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 22, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 24, 1, 0.72, 0.72 );
setScaleKey( spep_4 + 28, 1, 0.72, 0.72 );
setScaleKey( spep_4 + 30, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 34, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 36, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 38, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 40, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 44, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 46, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 50, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 52, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 54, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 56, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 58, 1, 0.66, 0.66 );

setRotateKey( spep_4 + 0, 1, -87.9 );
setRotateKey( spep_4 + 2, 1, -89.1 );
setRotateKey( spep_4 + 4, 1, -90.3 );
setRotateKey( spep_4 + 6, 1, -91.4 );
setRotateKey( spep_4 + 8, 1, -92.6 );
setRotateKey( spep_4 + 10, 1, -93.8 );
setRotateKey( spep_4 + 14, 1, -93.8 );
setRotateKey( spep_4 + 16, 1, -93.9 );
setRotateKey( spep_4 + 22, 1, -93.9 );
setRotateKey( spep_4 + 24, 1, -94 );
setRotateKey( spep_4 + 30, 1, -94 );
setRotateKey( spep_4 + 32, 1, -94.1 );
setRotateKey( spep_4 + 38, 1, -94.1 );
setRotateKey( spep_4 + 40, 1, -94.2 );
setRotateKey( spep_4 + 46, 1, -94.2 );
setRotateKey( spep_4 + 48, 1, -94.3 );
setRotateKey( spep_4 + 52, 1, -94.3 );
setRotateKey( spep_4 + 54, 1, -94.4 );
setRotateKey( spep_4 + 56, 1, -94.3 );
setRotateKey( spep_4 + 58, 1, -94.4 );

--集中線--
shuchusen4 = entryEffectLife( spep_4, 906, 58, 0x80,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.4,  1.4);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+58,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+58,  shuchusen4,  1.4,  1.4);
setEffRotateKey(  spep_4+58,  shuchusen4,  0);
setEffAlphaKey(  spep_4+58,  shuchusen4,  255);

--流線
ryusen4 = entryEffectLife( spep_4 + 0,  921, 58, 0x80, -1, 0, 20, 33.6 );
setEffMoveKey( spep_4 + 0, ryusen4 , 20, 33.6 , 0 );
setEffScaleKey( spep_4+ 0, ryusen4 , 1.92, 1.32 );
setEffRotateKey( spep_4 + 0, ryusen4 , 130.5 );
setEffAlphaKey( spep_4 + 0, ryusen4 , 255 );

--ナビ--
Nabi = entryEffectLife(spep_4, SP_04r, 58, 0x80, -1,0, 0, 0);

setEffScaleKey(spep_4,Nabi,1.0,1.0);
setEffScaleKey(spep_4+58,Nabi,1.0,1.0);

setEffRotateKey(spep_4,Nabi,0);
setEffRotateKey(spep_4+58,Nabi,0);

setEffAlphaKey(spep_4,Nabi,255);
setEffAlphaKey(spep_4+58,Nabi,255);

--ズドドド
ctZudododo = entryEffectLife( spep_4 + 0,  10014, 58, 0x100, -1, 0, 0, 368.7 ); -- -132.2
setEffMoveKey( spep_4 + 0, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 2, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 4, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 6, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 8, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 10, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 12, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 14, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 16, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 18, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 20, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 22, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 24, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 26, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 28, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 30, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 32, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 34, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 36, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 38, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 40, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 42, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 44, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 46, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 48, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 50, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 52, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 54, ctZudododo, -129.1, 344.4 , 0 );
setEffMoveKey( spep_4 + 56, ctZudododo, -131.2, 368.7 , 0 );
setEffMoveKey( spep_4 + 58, ctZudododo, -129.1, 344.4 , 0 );

setEffScaleKey( spep_4 + 0, ctZudododo, 2.73, 2.73 );
setEffScaleKey( spep_4 + 58, ctZudododo, 2.73, 2.73 );
setEffRotateKey( spep_4 + 0, ctZudododo, -57.7 );
setEffRotateKey( spep_4 + 58, ctZudododo, -57.7 );
setEffAlphaKey( spep_4 + 0, ctZudododo, 255 );
setEffAlphaKey( spep_4 + 58, ctZudododo, 255 );

--ギャン--
Gyan = entryEffect( spep_4+60, 190000, 0x100,  -1, 0,  0,  0); 

setEffMoveKey(  spep_4+60,  Gyan,  0,  0);
setEffScaleKey(  spep_4+60,  Gyan,  1.0,  1.0);
setEffRotateKey(  spep_4+60,  Gyan,  0);
setEffAlphaKey(  spep_4+60,  Gyan,  255);

playSe( spep_4+60, 1024);

-- 書き文字エントリー
ct4 = entryEffectLife( spep_4+60, 10006, 58, 0x100, -1, 0, 0, 400);    -- ギャン

setEffScaleKey( spep_4+60, ct4, 3.0, 3.0);
setEffScaleKey( spep_4+118, ct4, 4.0, 4.0);
setEffAlphaKey( spep_4+60, ct4, 255);
setEffAlphaKey( spep_4+118, ct4, 80);
setEffShake( spep_4+60, ct4, 58, 10);

------------------------------------------------------
-- Scene07
------------------------------------------------------
spep_5= spep_4+120;

--背景・白フェード--
entryFade(spep_5+38,6,2,20,255,255,255,229);
entryFade(spep_5+78,6,2,8,255,255,255,229);
entryFade(spep_5+140,36,2,0,255,255,255,255);

--ナビ--
Nabi2 = entryEffect(spep_5,SP_05,0x100, -1,0, 0, 0);

setEffScaleKey(spep_5,Nabi2,1.0,1.0);
setEffScaleKey(spep_5+100,Nabi2,1.0,1.0);

setEffRotateKey(spep_5,Nabi2,0);
setEffRotateKey(spep_5+100,Nabi2,0);

setEffAlphaKey(spep_5,Nabi2,255);
setEffAlphaKey(spep_5+100,Nabi2,255);

--集中線--
shuchusen5 = entryEffectLife( spep_5+44, 906, 134, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_5+44,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+44,  shuchusen5,  1.4,  1.4);
setEffRotateKey(  spep_5+44,  shuchusen5,  0);
setEffAlphaKey(  spep_5+44,  shuchusen5,  255);
setEffMoveKey(  spep_5+58,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+58,  shuchusen5,  1.4,  1.4);
setEffRotateKey(  spep_5+58,  shuchusen5,  0);
setEffAlphaKey(  spep_5+58,  shuchusen5,  255);

-- SE --
playSe(spep_5,SE_10);

-- ダメージ表示
dealDamage( spep_5+84);
entryFade( spep_5+168, 9,  10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+178);

end
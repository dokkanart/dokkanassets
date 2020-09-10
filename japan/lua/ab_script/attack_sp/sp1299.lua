--1017210 フリーザ(最終形態)_今度は死ぬかもね（尻尾切れてる）
--sp1299 --sp_effect_b4_00065

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

SP_01 = 153519;
SP_02 = 153520;
SP_03 = 153521;
SP_04 = 153522;
SP_05 = 1920;
SP_01r = 153523;
SP_03r = 153524;
SP_04r = 153525;




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

entryFade(spep_0,0,2,6,255,255,255,255);
entryFade(spep_0+20,0,2,10,255,255,255,255);
entryFade(spep_0+110,0,2,8,255,255,255,255);
entryFade(spep_0+168,10,2,0,255,255,255,255);

entryFadeBg(spep_0,0,188,0,10,10,10,200);

--書き文字　ズオッ
ctZuo=entryEffectLife(spep_0+112+8,10012, 48, 0, -1, -1, 0, 78.7, 260.5 );

setEffMoveKey( spep_0 + 112+8, ctZuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 114+8, ctZuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_0 + 116+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 118+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 120+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 122+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 124+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 126+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 128+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 130+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 132+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 134+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 136+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 138+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 140+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 142+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 144+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 146+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 148+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 150+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 152+8, ctZuo, 152.3, 366.3 , 0 );
setEffMoveKey( spep_0 + 154+8, ctZuo, 192.3, 342.3 , 0 );
setEffMoveKey( spep_0 + 156+8, ctZuo, 181.2, 369.4 , 0 );
setEffMoveKey( spep_0 + 158+8, ctZuo, 230.9, 335.7 , 0 );
setEffMoveKey( spep_0 + 160+8, ctZuo, 250.3, 332.4 , 0 );

setEffScaleKey( spep_0 + 112+8, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_0 + 114+8, ctZuo, 1.54, 1.54 );
setEffScaleKey( spep_0 + 116+8, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 150+8, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 152+8, ctZuo, 3.55, 3.55 );
setEffScaleKey( spep_0 + 154+8, ctZuo, 4.37, 4.37 );
setEffScaleKey( spep_0 + 156+8, ctZuo, 5.19, 5.19 );
setEffScaleKey( spep_0 + 158+8, ctZuo, 6.01, 6.01 );
setEffScaleKey( spep_0 + 160+8, ctZuo, 6.82, 6.82 );

setEffRotateKey( spep_0 + 112+8, ctZuo, 27.2 );
setEffRotateKey( spep_0 + 160+8, ctZuo, 27.2 );

setEffAlphaKey( spep_0 + 112+8, ctZuo, 255 );
setEffAlphaKey( spep_0 + 150+8, ctZuo, 255 );
setEffAlphaKey( spep_0 + 152+8, ctZuo, 204 );
setEffAlphaKey( spep_0 + 154+8, ctZuo, 153 );
setEffAlphaKey( spep_0 + 156+8, ctZuo, 102 );
setEffAlphaKey( spep_0 + 158+8, ctZuo, 51 );
setEffAlphaKey( spep_0 + 160+8, ctZuo, 0 );

--書き文字ゴゴゴ
ctgogo = entryEffectLife( spep_0+46, 190006, 70, 0x100, -1, 0, 100, 510);    -- ゴゴゴ・・・
setEffShake(spep_0+46, ctgogo, 70, 8);
setEffScaleKey(spep_0+46, ctgogo, 0.7, 0.7);

speff = entryEffect(  spep_0+32,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0+32,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

tyounou = entryEffectLife(spep_0,SP_01,178,0x80,-1,0,0,0);
setEffScaleKey(spep_0,tyounou,1.0,1.0);
setEffMoveKey(spep_0,tyounou,0,0,0);
setEffAlphaKey(spep_0,tyounou,255);

setEffScaleKey(spep_0+178,tyounou,1.0,1.0);
setEffMoveKey(spep_0+178,tyounou,0,0,0);
setEffAlphaKey(spep_0+178,tyounou,255);

--集中線
shuchusen0 = entryEffectLife(spep_0+22,906, 156, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0+22, shuchusen0, 1.5, 1.5);
setEffScaleKey( spep_0+178, shuchusen0, 1.5, 1.5);

playSe(spep_0,1034);
playSe(spep_0+46,SE_04);
playSe(spep_0+64,1019);
playSe(spep_0+120,1034);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+166; --エンドフェイズのフレーム数を置き換える

--setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
--setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置

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

------------------------------------------------------
-- Scene05 
------------------------------------------------------
spep_2 =spep_0+178;

entryFade(spep_2,0,2,6,255,255,255,255);
entryFade(spep_2+170,0,2,10,255,255,255,255);
entryFade(spep_2+258,20,2,0,255,255,255,255);

entryFadeBg(spep_2,0,278,0,10,10,10,200);

ctDogaga = entryEffectLife( spep_2-2 + 18,  10017, 118, 0x100, -1, 0, 19.8, 370.1 );
setEffMoveKey( spep_2-2 + 18, ctDogaga, 19.8, 370.1 , 0 );
setEffMoveKey( spep_2-2 + 20, ctDogaga, 21, 367.9 , 0 );
setEffMoveKey( spep_2-2 + 22, ctDogaga, 21, 366.3 , 0 );
setEffMoveKey( spep_2-2 + 24, ctDogaga, 19.1, 360.3 , 0 );
setEffMoveKey( spep_2-2 + 26, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 28, ctDogaga, 22.1, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 30, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 32, ctDogaga, 19.1, 360.3 , 0 );
setEffMoveKey( spep_2-2 + 34, ctDogaga, 21.1, 366.3 , 0 );
setEffMoveKey( spep_2-2 + 36, ctDogaga, 19.1, 360.3 , 0 );
setEffMoveKey( spep_2-2 + 38, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 40, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 42, ctDogaga, 21.1, 366.3 , 0 );
setEffMoveKey( spep_2-2 + 44, ctDogaga, 19.1, 360.3 , 0 );
setEffMoveKey( spep_2-2 + 46, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 48, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 50, ctDogaga, 21.1, 366.3 , 0 );
setEffMoveKey( spep_2-2 + 52, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 54, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 56, ctDogaga, 19.1, 360.3 , 0 );
setEffMoveKey( spep_2-2 + 58, ctDogaga, 21.1, 366.3 , 0 );
setEffMoveKey( spep_2-2 + 60, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 62, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 64, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 66, ctDogaga, 21.1, 366.3 , 0 );
setEffMoveKey( spep_2-2 + 68, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 70, ctDogaga, 18.3, 356.8 , 0 );
setEffMoveKey( spep_2-2 + 72, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 74, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 76, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 78, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 80, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 82, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 84, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 86, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 88, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 90, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 92, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 94, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 96, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 98, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 100, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 102, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 104, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 106, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 108, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 110, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 112, ctDogaga, 17.1, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 114, ctDogaga, 17.1, 358.6 , 0 );
setEffMoveKey( spep_2-2 + 116, ctDogaga, -6.9, 389.9 , 0 );
setEffMoveKey( spep_2-2 + 118, ctDogaga, 17.1, 357.1 , 0 );
setEffMoveKey( spep_2-2 + 120, ctDogaga, 9.1, 332.4 , 0 );
setEffMoveKey( spep_2-2 + 122, ctDogaga, 17.1, 355.7 , 0 );
setEffMoveKey( spep_2-2 + 124, ctDogaga, -6.9, 347 , 0 );
setEffMoveKey( spep_2-2 + 126, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 128, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 130, ctDogaga, 17, 354.4 , 0 );
setEffMoveKey( spep_2-2 + 132, ctDogaga, 17, 354.4 , 0 );
setEffMoveKey( spep_2-2 + 134, ctDogaga, 17, 354.5 , 0 );
setEffMoveKey( spep_2-2 + 136, ctDogaga, 17, 354.6 , 0 );

setEffScaleKey( spep_2-2 + 18, ctDogaga, 1.88, 1.88 );
setEffScaleKey( spep_2-2 + 20, ctDogaga, 3.07, 3.07 );
setEffScaleKey( spep_2-2 + 22, ctDogaga, 2.75, 2.75 );
setEffScaleKey( spep_2-2 + 126, ctDogaga, 2.75, 2.75 );
setEffScaleKey( spep_2-2 + 128, ctDogaga, 2.69, 2.69 );
setEffScaleKey( spep_2-2 + 130, ctDogaga, 2.63, 2.63 );
setEffScaleKey( spep_2-2 + 132, ctDogaga, 2.56, 2.56 );
setEffScaleKey( spep_2-2 + 134, ctDogaga, 2.5, 2.5 );
setEffScaleKey( spep_2-2 + 136, ctDogaga, 2.44, 2.44 );

setEffRotateKey( spep_2-2 + 18, ctDogaga, 22.3 );
setEffRotateKey( spep_2-2 + 22, ctDogaga, 22.3 );
setEffRotateKey( spep_2-2 + 24, ctDogaga, 22.5 );

setEffAlphaKey( spep_2-2 + 18, ctDogaga, 255 );
setEffAlphaKey( spep_2-2 + 126, ctDogaga, 255 );
setEffAlphaKey( spep_2-2 + 128, ctDogaga, 204 );
setEffAlphaKey( spep_2-2 + 130, ctDogaga, 153 );
setEffAlphaKey( spep_2-2 + 132, ctDogaga, 102 );
setEffAlphaKey( spep_2-2 + 134, ctDogaga, 51 );
setEffAlphaKey( spep_2-2 + 136, ctDogaga, 0 );

setEffShake( spep_2-2 + 18,ctDogaga,118,15);

shuchusen2 = entryEffectLife( spep_2, 906, 278, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.5,  1.5);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+278,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+278,  shuchusen2,  1.5,  1.5);
setEffRotateKey(  spep_2+278,  shuchusen2,  0);
setEffAlphaKey(  spep_2+278,  shuchusen2,  255);

Rock= entryEffectLife( spep_2, SP_02, 278, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_2,  Rock,  0,  0);
setEffScaleKey(  spep_2,  Rock,  1.0,  1.0);
setEffRotateKey(  spep_2,  Rock,  0);
setEffAlphaKey(  spep_2,  Rock,  255);
setEffMoveKey(  spep_2+278,  Rock,  0,  0);
setEffScaleKey(  spep_2+278,  Rock,  1.0,  1.0);
setEffRotateKey(  spep_2+278,  Rock,  0);
setEffAlphaKey(  spep_2+278,  Rock,  255);

--流線
ryusen2 = entryEffectLife( spep_2 + 0,  921, 278, 0x80, -1, 0, -16.5, 16.9 );
setEffMoveKey( spep_2 + 0, ryusen2, -16.5, 16.9 , 0 );
setEffScaleKey( spep_2 + 0, ryusen2, 1.28, 1.13 );
setEffRotateKey( spep_2 + 0, ryusen2, -6.4 );
setEffAlphaKey( spep_2 + 0, ryusen2, 255 );

setEffMoveKey( spep_2 + 278, ryusen2, -16.5, 16.9 , 0 );
setEffScaleKey( spep_2 + 278, ryusen2, 1.28, 1.13 );
setEffRotateKey( spep_2 + 278, ryusen2, -6.4 );
setEffAlphaKey( spep_2 + 278, ryusen2, 255 );

Rockb= entryEffectLife( spep_2, SP_03, 278, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_2,  Rockb,  0,  0);
setEffScaleKey(  spep_2,  Rockb,  1.0,  1.0);
setEffRotateKey(  spep_2,  Rockb,  0);
setEffAlphaKey(  spep_2,  Rockb,  255);
setEffMoveKey(  spep_2+278,  Rockb,  0,  0);
setEffScaleKey(  spep_2+278,  Rockb,  1.0,  1.0);
setEffRotateKey(  spep_2+278,  Rockb,  0);
setEffAlphaKey(  spep_2+278,  Rockb,  255);

setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2-2 + 184, 1, 106 );
setDisp( spep_2 + 276, 1, 0 );

setMoveKey( spep_2-2 + 0, 1, 689.5, 136.1 , 0 );
setMoveKey( spep_2-2 + 2, 1, 628.1, 133 , 0 );
setMoveKey( spep_2-2 + 4, 1, 525.5, 85.4 , 0 );
setMoveKey( spep_2-2 + 6, 1, 383.1, 104.4 , 0 );
setMoveKey( spep_2-2 + 8, 1, 185.7, 76 , 0 );
setMoveKey( spep_2-2 + 10, 1, -14, 78.7 , 0 );
setMoveKey( spep_2-2 + 12, 1, -274.1, 28 , 0 );
setMoveKey( spep_2-2 + 14, 1, -250.9, 64.4 , 0 );
setMoveKey( spep_2-2 + 16, 1, -242.2, 55.5 , 0 );
setMoveKey( spep_2-2 + 18, 1, -211.8, 62.4 , 0 );
setMoveKey( spep_2-2 + 20, 1, -178.3, 54.9 , 0 );
setMoveKey( spep_2-2 + 22, 1, -155.1, 95.2 , 0 );
setMoveKey( spep_2-2 + 24, 1, -142.4, 82.4 , 0 );
setMoveKey( spep_2-2 + 26, 1, -115.7, 93.5 , 0 );
setMoveKey( spep_2-2 + 28, 1, -100.6, 71.6 , 0 );
setMoveKey( spep_2-2 + 30, 1, -87.2, 89.5 , 0 );
setMoveKey( spep_2-2 + 32, 1, -88.7, 66.7 , 0 );
setMoveKey( spep_2-2 + 34, 1, -75.7, 51.8 , 0 );
setMoveKey( spep_2-2 + 36, 1, -56.8, 33.7 , 0 );
setMoveKey( spep_2-2 + 38, 1, -47.3, 47.4 , 0 );
setMoveKey( spep_2-2 + 40, 1, -44.9, 20.8 , 0 );
setMoveKey( spep_2-2 + 42, 1, -40.8, 20.1 , 0 );
setMoveKey( spep_2-2 + 44, 1, -35.4, 19.7 , 0 );
setMoveKey( spep_2-2 + 46, 1, -23.1, 35.2 , 0 );
setMoveKey( spep_2-2 + 48, 1, -22, 14.7 , 0 );
setMoveKey( spep_2-2 + 50, 1, -21.6, 18.2 , 0 );
setMoveKey( spep_2-2 + 52, 1, -16.5, 21.6 , 0 );
setMoveKey( spep_2-2 + 54, 1, -4, 32.9 , 0 );
setMoveKey( spep_2-2 + 56, 1, 1, 8.6 , 0 );
setMoveKey( spep_2-2 + 58, 1, -1.1, 23.5 , 0 );
setMoveKey( spep_2-2 + 60, 1, 4.8, 34.1 , 0 );
setMoveKey( spep_2-2 + 62, 1, 18.6, 52.4 , 0 );
setMoveKey( spep_2-2 + 64, 1, 24.7, 31.6 , 0 );
setMoveKey( spep_2-2 + 66, 1, 23, 50.7 , 0 );
setMoveKey( spep_2-2 + 68, 1, 24.6, 57.1 , 0 );
setMoveKey( spep_2-2 + 70, 1, 42.5, 79.2 , 0 );
setMoveKey( spep_2-2 + 72, 1, 48.5, 62.6 , 0 );
setMoveKey( spep_2-2 + 74, 1, 47.1, 77.9 , 0 );
setMoveKey( spep_2-2 + 76, 1, 45.4, 71 , 0 );
setMoveKey( spep_2-2 + 78, 1, 44.4, 95.9 , 0 );
setMoveKey( spep_2-2 + 80, 1, 31.3, 82.5 , 0 );
setMoveKey( spep_2-2 + 82, 1, 27.2, 85 , 0 );
setMoveKey( spep_2-2 + 84, 1, 25.2, 81.9 , 0 );
setMoveKey( spep_2-2 + 86, 1, 24.4, 102.6 , 0 );
setMoveKey( spep_2-2 + 88, 1, 15.2, 89.4 , 0 );
setMoveKey( spep_2-2 + 90, 1, 7.3, 92.1 , 0 );
setMoveKey( spep_2-2 + 92, 1, 1.1, 96.9 , 0 );
setMoveKey( spep_2-2 + 94, 1, 4.3, 109.4 , 0 );
setMoveKey( spep_2-2 + 96, 1, 5, 89.3 , 0 );
setMoveKey( spep_2-2 + 98, 1, -0.5, 93.2 , 0 );
setMoveKey( spep_2-2 + 100, 1, -1.1, 94.8 , 0 );
setMoveKey( spep_2-2 + 102, 1, 8.2, 104 , 0 );
setMoveKey( spep_2-2 + 104, 1, 8.8, 84.2 , 0 );
setMoveKey( spep_2-2 + 106, 1, 3.6, 88.3 , 0 );
setMoveKey( spep_2-2 + 108, 1, 2.7, 85.6 , 0 );
setMoveKey( spep_2-2 + 110, 1, 12.2, 98.7 , 0 );
setMoveKey( spep_2-2 + 112, 1, 12.7, 79.1 , 0 );
setMoveKey( spep_2-2 + 114, 1, 7.8, 83.4 , 0 );
setMoveKey( spep_2-2 + 116, 1, -0.5, 77.4 , 0 );
setMoveKey( spep_2-2 + 118, 1, 10, 87.2 , 0 );
setMoveKey( spep_2-2 + 120, 1, 7.3, 64.7 , 0 );
setMoveKey( spep_2-2 + 122, 1, -0.4, 66.2 , 0 );
setMoveKey( spep_2-2 + 124, 1, -5, 60 , 0 );
setMoveKey( spep_2-2 + 126, 1, 1.6, 69.6 , 0 );
setMoveKey( spep_2-2 + 128, 1, -5.2, 51.3 , 0 );
setMoveKey( spep_2-2 + 130, 1, -8.6, 48.9 , 0 );
setMoveKey( spep_2-2 + 132, 1, -5.5, 38.6 , 0 );
setMoveKey( spep_2-2 + 134, 1, -10.8, 40 , 0 );
setMoveKey( spep_2-2 + 136, 1, -11.7, 19.8 , 0 );
setMoveKey( spep_2-2 + 138, 1, -20.7, 19.7 , 0 );
setMoveKey( spep_2-2 + 140, 1, -24.1, 23.4 , 0 );
setMoveKey( spep_2-2 + 142, 1, -12.3, 18 , 0 );
setMoveKey( spep_2-2 + 144, 1, -22.2, 2.5 , 0 );
setMoveKey( spep_2-2 + 146, 1, -10.9, 14.2 , 0 );
setMoveKey( spep_2-2 + 148, 1, -16.4, 13.3 , 0 );
setMoveKey( spep_2-2 + 150, 1, -10.7, 14.7 , 0 );
setMoveKey( spep_2-2 + 152, 1, -16.8, 11.8 , 0 );
setMoveKey( spep_2-2 + 154, 1, -11, 13 , 0 );
setMoveKey( spep_2-2 + 156, 1, -13.1, 2.1 , 0 );
setMoveKey( spep_2-2 + 158, 1, -11.2, 11.3 , 0 );
setMoveKey( spep_2-2 + 160, 1, -17.4, 8.4 , 0 );
setMoveKey( spep_2-2 + 162, 1, -11.5, 9.6 , 0 );
setMoveKey( spep_2-2 + 164, 1, -13.6, 0.8 , 0 );
setMoveKey( spep_2-2 + 166, 1, -11.7, 7.9 , 0 );
setMoveKey( spep_2-2 + 168, 1, -17.8, 5.1 , 0 );
setMoveKey( spep_2-2 + 170, 1, -11.9, 6.3 , 0 );
setMoveKey( spep_2-2 + 172, 1, -14, -0.5 , 0 );
setMoveKey( spep_2-2 + 174, 1, -12.1, 4.7 , 0 );
setMoveKey( spep_2-2 + 176, 1, -18.2, 1.8 , 0 );
setMoveKey( spep_2-2 + 178, 1, -12.2, 3 , 0 );
setMoveKey( spep_2-2 + 180, 1, -14.3, -3.8 , 0 );
setMoveKey( spep_2-2 + 183, 1, -12.4, 1.4 , 0 );
setMoveKey( spep_2-2 + 184, 1, -32.4, 40.4 , 0 );
setMoveKey( spep_2-2 + 186, 1, -21.1, 35.7 , 0 );
setMoveKey( spep_2-2 + 188, 1, -24, 28.7 , 0 );
setMoveKey( spep_2-2 + 190, 1, -23.8, 41.5 , 0 );
setMoveKey( spep_2-2 + 192, 1, -29.7, 30.8 , 0 );
setMoveKey( spep_2-2 + 194, 1, -30.2, 38.3 , 0 );
setMoveKey( spep_2-2 + 196, 1, -31.5, 25 , 0 );
setMoveKey( spep_2-2 + 198, 1, -29.4, 27.9 , 0 );
setMoveKey( spep_2-2 + 200, 1, -27.5, 29 , 0 );
setMoveKey( spep_2-2 + 202, 1, -40.2, 32.5 , 0 );
setMoveKey( spep_2-2 + 204, 1, -29.6, 26.9 , 0 );
setMoveKey( spep_2-2 + 206, 1, -33.4, 28 , 0 );
setMoveKey( spep_2-2 + 208, 1, -31.7, 24.9 , 0 );
setMoveKey( spep_2-2 + 210, 1, -44.3, 28.6 , 0 );
setMoveKey( spep_2-2 + 212, 1, -33.7, 22.9 , 0 );
setMoveKey( spep_2-2 + 214, 1, -37.5, 24.1 , 0 );
setMoveKey( spep_2-2 + 216, 1, -35.8, 20.9 , 0 );
setMoveKey( spep_2-2 + 218, 1, -46.4, 24.8 , 0 );
setMoveKey( spep_2-2 + 220, 1, -37.9, 18.9 , 0 );
setMoveKey( spep_2-2 + 222, 1, -41.5, 20.2 , 0 );
setMoveKey( spep_2-2 + 224, 1, -40, 16.9 , 0 );
setMoveKey( spep_2-2 + 226, 1, -52.6, 21 , 0 );
setMoveKey( spep_2-2 + 228, 1, -42.1, 14.9 , 0 );
setMoveKey( spep_2-2 + 230, 1, -45.6, 16.3 , 0 );
setMoveKey( spep_2-2 + 232, 1, -44.2, 12.9 , 0 );
setMoveKey( spep_2-2 + 234, 1, -54.8, 17.2 , 0 );
setMoveKey( spep_2-2 + 236, 1, -46.3, 10.9 , 0 );
setMoveKey( spep_2-2 + 238, 1, -49.7, 14.5 , 0 );
setMoveKey( spep_2-2 + 240, 1, -48.4, 8.9 , 0 );
setMoveKey( spep_2-2 + 242, 1, -59, 13.4 , 0 );
setMoveKey( spep_2-2 + 244, 1, -50.5, 7 , 0 );
setMoveKey( spep_2-2 + 246, 1, -55.8, 8.7 , 0 );
setMoveKey( spep_2-2 + 248, 1, -52.6, 5 , 0 );
setMoveKey( spep_2-2 + 250, 1, -59.2, 11.7 , 0 );
setMoveKey( spep_2-2 + 252, 1, -58.8, -13 , 0 );
setMoveKey( spep_2-2 + 254, 1, -55.9, 10.9 , 0 );
setMoveKey( spep_2-2 + 256, 1, -72.9, -2.9 , 0 );
setMoveKey( spep_2-2 + 258, 1, -63.4, 8 , 0 );
setMoveKey( spep_2-2 + 260, 1, -59, -0.9 , 0 );
setMoveKey( spep_2-2 + 262, 1, -62.1, -2.9 , 0 );
setMoveKey( spep_2-2 + 264, 1, -61.1, -2.8 , 0 );
setMoveKey( spep_2-2 + 266, 1, -73.7, 2.3 , 0 );
setMoveKey( spep_2-2 + 268, 1, -63.3, -4.7 , 0 );
setMoveKey( spep_2-2 + 270, 1, -66.2, -0.6 , 0 );
setMoveKey( spep_2-2 + 272, 1, -65.4, -6.7 , 0 );
setMoveKey( spep_2-2 + 274, 1, -75.9, -1.4 , 0 );
setMoveKey( spep_2-2 + 276, 1, -67.6, -8.6 , 0 );
setMoveKey( spep_2-2 + 278, 1, -70.7, -13.6 , 0 );

setScaleKey( spep_2-2 + 0, 1, 0.41, 0.41 );
setScaleKey( spep_2-2 + 2, 1, 0.49, 0.49 );
setScaleKey( spep_2-2 + 4, 1, 0.64, 0.64 );
setScaleKey( spep_2-2 + 6, 1, 0.84, 0.84 );
setScaleKey( spep_2-2 + 8, 1, 1.1, 1.1 );
setScaleKey( spep_2-2 + 10, 1, 1.41, 1.41 );
setScaleKey( spep_2-2 + 12, 1, 1.78, 1.78 );
setScaleKey( spep_2-2 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_2-2 + 16, 1, 1.76, 1.76 );
setScaleKey( spep_2-2 + 18, 1, 1.75, 1.75 );
setScaleKey( spep_2-2 + 20, 1, 1.75, 1.75 );
setScaleKey( spep_2-2 + 22, 1, 1.74, 1.74 );
setScaleKey( spep_2-2 + 24, 1, 1.73, 1.73 );
setScaleKey( spep_2-2 + 26, 1, 1.72, 1.72 );
setScaleKey( spep_2-2 + 28, 1, 1.71, 1.71 );
setScaleKey( spep_2-2 + 30, 1, 1.7, 1.7 );
setScaleKey( spep_2-2 + 32, 1, 1.69, 1.69 );
setScaleKey( spep_2-2 + 34, 1, 1.68, 1.68 );
setScaleKey( spep_2-2 + 36, 1, 1.67, 1.67 );
setScaleKey( spep_2-2 + 38, 1, 1.66, 1.66 );
setScaleKey( spep_2-2 + 40, 1, 1.65, 1.65 );
setScaleKey( spep_2-2 + 42, 1, 1.64, 1.64 );
setScaleKey( spep_2-2 + 44, 1, 1.63, 1.63 );
setScaleKey( spep_2-2 + 46, 1, 1.62, 1.62 );
setScaleKey( spep_2-2 + 48, 1, 1.61, 1.61 );
setScaleKey( spep_2-2 + 50, 1, 1.6, 1.6 );
setScaleKey( spep_2-2 + 52, 1, 1.59, 1.59 );
setScaleKey( spep_2-2 + 54, 1, 1.58, 1.58 );
setScaleKey( spep_2-2 + 56, 1, 1.57, 1.57 );
setScaleKey( spep_2-2 + 58, 1, 1.56, 1.56 );
setScaleKey( spep_2-2 + 60, 1, 1.55, 1.55 );
setScaleKey( spep_2-2 + 62, 1, 1.54, 1.54 );
setScaleKey( spep_2-2 + 64, 1, 1.53, 1.53 );
setScaleKey( spep_2-2 + 66, 1, 1.52, 1.52 );
setScaleKey( spep_2-2 + 68, 1, 1.51, 1.51 );
setScaleKey( spep_2-2 + 70, 1, 1.5, 1.5 );
setScaleKey( spep_2-2 + 72, 1, 1.49, 1.49 );
setScaleKey( spep_2-2 + 74, 1, 1.48, 1.48 );
setScaleKey( spep_2-2 + 76, 1, 1.47, 1.47 );
setScaleKey( spep_2-2 + 78, 1, 1.46, 1.46 );
setScaleKey( spep_2-2 + 80, 1, 1.45, 1.45 );
setScaleKey( spep_2-2 + 82, 1, 1.44, 1.44 );
setScaleKey( spep_2-2 + 84, 1, 1.43, 1.43 );
setScaleKey( spep_2-2 + 86, 1, 1.42, 1.42 );
setScaleKey( spep_2-2 + 88, 1, 1.41, 1.41 );
setScaleKey( spep_2-2 + 90, 1, 1.4, 1.4 );
setScaleKey( spep_2-2 + 92, 1, 1.39, 1.39 );
setScaleKey( spep_2-2 + 94, 1, 1.38, 1.38 );
setScaleKey( spep_2-2 + 96, 1, 1.37, 1.37 );
setScaleKey( spep_2-2 + 98, 1, 1.36, 1.36 );
setScaleKey( spep_2-2 + 100, 1, 1.35, 1.35 );
setScaleKey( spep_2-2 + 102, 1, 1.34, 1.34 );
setScaleKey( spep_2-2 + 104, 1, 1.33, 1.33 );
setScaleKey( spep_2-2 + 106, 1, 1.32, 1.32 );
setScaleKey( spep_2-2 + 108, 1, 1.31, 1.31 );
setScaleKey( spep_2-2 + 110, 1, 1.3, 1.3 );
setScaleKey( spep_2-2 + 112, 1, 1.29, 1.29 );
setScaleKey( spep_2-2 + 114, 1, 1.28, 1.28 );
setScaleKey( spep_2-2 + 116, 1, 1.27, 1.27 );
setScaleKey( spep_2-2 + 118, 1, 1.26, 1.26 );
setScaleKey( spep_2-2 + 120, 1, 1.25, 1.25 );
setScaleKey( spep_2-2 + 122, 1, 1.24, 1.24 );
setScaleKey( spep_2-2 + 124, 1, 1.23, 1.23 );
setScaleKey( spep_2-2 + 126, 1, 1.22, 1.22 );
setScaleKey( spep_2-2 + 128, 1, 1.21, 1.21 );
setScaleKey( spep_2-2 + 130, 1, 1.2, 1.2 );
setScaleKey( spep_2-2 + 132, 1, 1.19, 1.19 );
setScaleKey( spep_2-2 + 134, 1, 1.18, 1.18 );
setScaleKey( spep_2-2 + 136, 1, 1.17, 1.17 );
setScaleKey( spep_2-2 + 138, 1, 1.16, 1.16 );
setScaleKey( spep_2-2 + 140, 1, 1.14, 1.14 );
setScaleKey( spep_2-2 + 142, 1, 1.13, 1.13 );
setScaleKey( spep_2-2 + 144, 1, 1.12, 1.12 );
setScaleKey( spep_2-2 + 146, 1, 1.11, 1.11 );
setScaleKey( spep_2-2 + 152, 1, 1.11, 1.11 );
setScaleKey( spep_2-2 + 154, 1, 1.12, 1.12 );
setScaleKey( spep_2-2 + 156, 1, 1.12, 1.12 );
setScaleKey( spep_2-2 + 158, 1, 1.13, 1.13 );
setScaleKey( spep_2-2 + 160, 1, 1.13, 1.13 );
setScaleKey( spep_2-2 + 162, 1, 1.14, 1.14 );
setScaleKey( spep_2-2 + 164, 1, 1.14, 1.14 );
setScaleKey( spep_2-2 + 166, 1, 1.15, 1.15 );
setScaleKey( spep_2-2 + 168, 1, 1.15, 1.15 );
setScaleKey( spep_2-2 + 170, 1, 1.16, 1.16 );
setScaleKey( spep_2-2 + 172, 1, 1.16, 1.16 );
setScaleKey( spep_2-2 + 174, 1, 1.17, 1.17 );
setScaleKey( spep_2-2 + 176, 1, 1.17, 1.17 );
setScaleKey( spep_2-2 + 178, 1, 1.18, 1.18 );
setScaleKey( spep_2-2 + 180, 1, 1.18, 1.18 );
setScaleKey( spep_2-2 + 183, 1, 1.19, 1.19 );
setScaleKey( spep_2-2 + 184, 1, 1.07, 1.07 );
setScaleKey( spep_2-2 + 186, 1, 1.08, 1.08 );
setScaleKey( spep_2-2 + 188, 1, 1.08, 1.08 );
setScaleKey( spep_2-2 + 190, 1, 1.09, 1.09 );
setScaleKey( spep_2-2 + 192, 1, 1.09, 1.09 );
setScaleKey( spep_2-2 + 194, 1, 1.1, 1.1 );
setScaleKey( spep_2-2 + 198, 1, 1.1, 1.1 );
setScaleKey( spep_2-2 + 200, 1, 1.11, 1.11 );
setScaleKey( spep_2-2 + 202, 1, 1.11, 1.11 );
setScaleKey( spep_2-2 + 204, 1, 1.12, 1.12 );
setScaleKey( spep_2-2 + 206, 1, 1.12, 1.12 );
setScaleKey( spep_2-2 + 208, 1, 1.13, 1.13 );
setScaleKey( spep_2-2 + 210, 1, 1.13, 1.13 );
setScaleKey( spep_2-2 + 212, 1, 1.14, 1.14 );
setScaleKey( spep_2-2 + 216, 1, 1.14, 1.14 );
setScaleKey( spep_2-2 + 218, 1, 1.15, 1.15 );
setScaleKey( spep_2-2 + 220, 1, 1.15, 1.15 );
setScaleKey( spep_2-2 + 222, 1, 1.16, 1.16 );
setScaleKey( spep_2-2 + 224, 1, 1.16, 1.16 );
setScaleKey( spep_2-2 + 226, 1, 1.17, 1.17 );
setScaleKey( spep_2-2 + 230, 1, 1.17, 1.17 );
setScaleKey( spep_2-2 + 232, 1, 1.18, 1.18 );
setScaleKey( spep_2-2 + 234, 1, 1.18, 1.18 );
setScaleKey( spep_2-2 + 236, 1, 1.19, 1.19 );
setScaleKey( spep_2-2 + 238, 1, 1.19, 1.19 );
setScaleKey( spep_2-2 + 240, 1, 1.2, 1.2 );
setScaleKey( spep_2-2 + 242, 1, 1.2, 1.2 );
setScaleKey( spep_2-2 + 244, 1, 1.21, 1.21 );
setScaleKey( spep_2-2 + 248, 1, 1.21, 1.21 );
setScaleKey( spep_2-2 + 250, 1, 1.22, 1.22 );
setScaleKey( spep_2-2 + 252, 1, 1.22, 1.22 );
setScaleKey( spep_2-2 + 254, 1, 1.23, 1.23 );
setScaleKey( spep_2-2 + 256, 1, 1.23, 1.23 );
setScaleKey( spep_2-2 + 258, 1, 1.24, 1.24 );
setScaleKey( spep_2-2 + 262, 1, 1.24, 1.24 );
setScaleKey( spep_2-2 + 264, 1, 1.25, 1.25 );
setScaleKey( spep_2-2 + 266, 1, 1.25, 1.25 );
setScaleKey( spep_2-2 + 268, 1, 1.26, 1.26 );
setScaleKey( spep_2-2 + 270, 1, 1.26, 1.26 );
setScaleKey( spep_2-2 + 272, 1, 1.27, 1.27 );
setScaleKey( spep_2-2 + 274, 1, 1.27, 1.27 );
setScaleKey( spep_2-2 + 276, 1, 1.28, 1.28 );

setRotateKey( spep_2-2 + 0, 1, 0 );
setRotateKey( spep_2-2 + 183, 1, 0 );
setRotateKey( spep_2-2 + 184, 1, -15 );
setRotateKey( spep_2-2 + 186, 1, -12 );
setRotateKey( spep_2-2 + 188, 1, -9 );
setRotateKey( spep_2-2 + 190, 1, -8.8 );
setRotateKey( spep_2-2 + 192, 1, -8.6 );
setRotateKey( spep_2-2 + 194, 1, -8.4 );
setRotateKey( spep_2-2 + 196, 1, -8.2 );
setRotateKey( spep_2-2 + 198, 1, -8 );
setRotateKey( spep_2-2 + 200, 1, -7.8 );
setRotateKey( spep_2-2 + 202, 1, -7.6 );
setRotateKey( spep_2-2 + 204, 1, -7.4 );
setRotateKey( spep_2-2 + 206, 1, -7.2 );
setRotateKey( spep_2-2 + 208, 1, -7 );
setRotateKey( spep_2-2 + 210, 1, -6.8 );
setRotateKey( spep_2-2 + 212, 1, -6.6 );
setRotateKey( spep_2-2 + 214, 1, -6.4 );
setRotateKey( spep_2-2 + 216, 1, -6.2 );
setRotateKey( spep_2-2 + 218, 1, -6 );
setRotateKey( spep_2-2 + 220, 1, -5.8 );
setRotateKey( spep_2-2 + 222, 1, -5.6 );
setRotateKey( spep_2-2 + 224, 1, -5.4 );
setRotateKey( spep_2-2 + 226, 1, -5.2 );
setRotateKey( spep_2-2 + 228, 1, -5 );
setRotateKey( spep_2-2 + 230, 1, -4.8 );
setRotateKey( spep_2-2 + 232, 1, -4.6 );
setRotateKey( spep_2-2 + 234, 1, -4.4 );
setRotateKey( spep_2-2 + 236, 1, -4.2 );
setRotateKey( spep_2-2 + 238, 1, -4 );
setRotateKey( spep_2-2 + 240, 1, -3.8 );
setRotateKey( spep_2-2 + 242, 1, -3.6 );
setRotateKey( spep_2-2 + 244, 1, -3.4 );
setRotateKey( spep_2-2 + 246, 1, -3.2 );
setRotateKey( spep_2-2 + 248, 1, -3 );
setRotateKey( spep_2-2 + 250, 1, -2.8 );
setRotateKey( spep_2-2 + 252, 1, -2.6 );
setRotateKey( spep_2-2 + 254, 1, -2.4 );
setRotateKey( spep_2-2 + 256, 1, -2.2 );
setRotateKey( spep_2-2 + 258, 1, -2 );
setRotateKey( spep_2-2 + 260, 1, -1.8 );
setRotateKey( spep_2-2 + 262, 1, -1.6 );
setRotateKey( spep_2-2 + 264, 1, -1.4 );
setRotateKey( spep_2-2 + 266, 1, -1.2 );
setRotateKey( spep_2-2 + 268, 1, -1 );
setRotateKey( spep_2-2 + 270, 1, -0.8 );
setRotateKey( spep_2-2 + 272, 1, -0.6 );
setRotateKey( spep_2-2 + 274, 1, -0.4 );
setRotateKey( spep_2-2 + 276, 1, -0.2 );
setRotateKey( spep_2-2 + 278, 1, 0 );

Seid=playSe(spep_2,1044);
stopSe(spep_2+134,Seid,0);

playSe(spep_2+146,43);
Seid2=playSe(spep_2+182,17);
stopSe(spep_2+276,Seid2,0);

------------------------------------------------------
-- Scene02 card
------------------------------------------------------
spep_1 =spep_2+278;

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen1 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffMoveKey(  spep_1+90,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+90,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_1+90,  shuchusen1,  0);
setEffAlphaKey(  spep_1+90,  shuchusen1,  255);

entryFade( spep_1+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- Scene06 
------------------------------------------------------
spep_3=spep_1+90;

entryFade(spep_3,0,2,6,255,255,255,255);
entryFade(spep_3+30,0,4,6,255,255,255,255);
entryFade(spep_3+96,12,2,0,255,255,255,255);

entryFadeBg(spep_3,0,108,0,10,10,10,200);

ctZuo3=entryEffectLife(spep_3+36,10012,30,0x100,-1,78.7, 260.5 , 0 );

setEffMoveKey( spep_3 + 36, ctZuo3, 78.7, 260.5 , 0 );
setEffMoveKey( spep_3 + 38, ctZuo3, 117.2, 303.7 , 0 );
setEffMoveKey( spep_3 + 40, ctZuo3, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 42, ctZuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 44, ctZuo3, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 46, ctZuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 48, ctZuo3, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 50, ctZuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 52, ctZuo3, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 54, ctZuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 56, ctZuo3, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 58, ctZuo3, 173.1, 345.5 , 0 );
setEffMoveKey( spep_3 + 60, ctZuo3, 166.7, 367.9 , 0 );
setEffMoveKey( spep_3 + 62, ctZuo3, 211.6, 339 , 0 );
setEffMoveKey( spep_3 + 64, ctZuo3, 195.7, 370.9 , 0 );
setEffMoveKey( spep_3 + 66, ctZuo3, 210.3, 372.4 , 0 );

setEffScaleKey( spep_3 + 36, ctZuo3, 0.34, 0.34 );
setEffScaleKey( spep_3 + 38, ctZuo3, 1.54, 1.54 );
setEffScaleKey( spep_3 + 40, ctZuo3, 2.73, 2.73 );
setEffScaleKey( spep_3 + 56, ctZuo3, 2.73, 2.73 );
setEffScaleKey( spep_3 + 58, ctZuo3, 3.55, 3.55 );
setEffScaleKey( spep_3 + 60, ctZuo3, 4.37, 4.37 );
setEffScaleKey( spep_3 + 62, ctZuo3, 5.19, 5.19 );
setEffScaleKey( spep_3 + 64, ctZuo3, 6.01, 6.01 );
setEffScaleKey( spep_3 + 66, ctZuo3, 6.82, 6.82 );

setEffRotateKey( spep_3 + 36, ctZuo3, 27.2 );
setEffRotateKey( spep_3 + 66, ctZuo3, 27.2 );

setEffAlphaKey( spep_3 + 36, ctZuo3, 255 );
setEffAlphaKey( spep_3 + 56, ctZuo3, 255 );
setEffAlphaKey( spep_3 + 58, ctZuo3, 204 );
setEffAlphaKey( spep_3 + 60, ctZuo3, 153 );
setEffAlphaKey( spep_3 + 62, ctZuo3, 102 );
setEffAlphaKey( spep_3 + 64, ctZuo3, 51 );
setEffAlphaKey( spep_3 + 66, ctZuo3, 0 );

Ball=entryEffectLife(spep_3,SP_04,108,0x100,-1,0,0,0);
setEffScaleKey(spep_3,Ball,1.0,1.0);
setEffAlphaKey(spep_3,Ball,255);
setEffRotateKey(spep_3,Ball,0);

setEffScaleKey(spep_3+108,Ball,1.0,1.0);
setEffAlphaKey(spep_3+108,Ball,255);
setEffRotateKey(spep_3+108,Ball,0);

shuchusen3 = entryEffectLife( spep_3, 906, 108, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.5,  1.5);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+108,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+108,  shuchusen3,  1.5,  1.5);
setEffRotateKey(  spep_3+108,  shuchusen3,  0);
setEffAlphaKey(  spep_3+108,  shuchusen3,  255);

ryusen3 = entryEffectLife( spep_3, 921, 108, 0x80,  -1, 0, -16.5, 16.9 );  --集中線

setEffMoveKey( spep_3 + 0, ryusen3, -16.5, 16.9 , 0 );
setEffScaleKey( spep_3 + 0, ryusen3, 1.77, 1.5 );
setEffRotateKey( spep_3 + 0, ryusen3, -132.4 );
setEffAlphaKey( spep_3 + 0, ryusen3, 255 );

setEffMoveKey( spep_3 + 108, ryusen3, -16.5, 16.9 , 0 );
setEffScaleKey( spep_3 + 108, ryusen3, 1.77, 1.5 );
setEffRotateKey( spep_3 + 108, ryusen3, -132.4 );
setEffAlphaKey( spep_3 + 108, ryusen3, 255 );

playSe(spep_3+36,SE_06);

------------------------------------------------------
-- Scene06 
------------------------------------------------------
spep_4=spep_3+108;

entryFade(spep_4,0,2,10,255,255,255,255);
entryFade(spep_4+118,60,2,0,255,255,255,255);

exp= entryEffect(spep_4,SP_05,0x80,-1,0,0,0);
setEffMoveKey( spep_4 + 0, exp, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, exp, 1.1, 1.1 );
setEffRotateKey( spep_4 + 0, exp, 0 );
setEffAlphaKey( spep_4 + 0, exp, 255 );

shuchusen4 = entryEffectLife( spep_4, 906, 180, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.5,  1.5);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+180,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+180,  shuchusen4,  1.5,  1.5);
setEffRotateKey(  spep_4+180,  shuchusen4,  0);
setEffAlphaKey(  spep_4+180,  shuchusen4,  255);

playSe(spep_4+16,SE_10);

-- ダメージ表示
dealDamage(spep_4+16);
endPhase( spep_4+160);

else

------------------------------------------------------
-- Scene01
------------------------------------------------------
spep_0 = 0;

entryFade(spep_0,0,2,6,255,255,255,255);
entryFade(spep_0+20,0,2,10,255,255,255,255);
entryFade(spep_0+110,0,2,8,255,255,255,255);
entryFade(spep_0+168,10,2,0,255,255,255,255);

entryFadeBg(spep_0,0,188,0,10,10,10,200);

--書き文字　ズオッ
ctZuo=entryEffectLife(spep_0+112+8,10012, 48, 0, -1, -1, 0, 78.7, 260.5 );

setEffMoveKey( spep_0 + 112+8, ctZuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 114+8, ctZuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_0 + 116+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 118+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 120+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 122+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 124+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 126+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 128+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 130+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 132+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 134+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 136+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 138+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 140+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 142+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 144+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 146+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 148+8, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_0 + 150+8, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 152+8, ctZuo, 152.3, 366.3 , 0 );
setEffMoveKey( spep_0 + 154+8, ctZuo, 192.3, 342.3 , 0 );
setEffMoveKey( spep_0 + 156+8, ctZuo, 181.2, 369.4 , 0 );
setEffMoveKey( spep_0 + 158+8, ctZuo, 230.9, 335.7 , 0 );
setEffMoveKey( spep_0 + 160+8, ctZuo, 250.3, 332.4 , 0 );

setEffScaleKey( spep_0 + 112+8, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_0 + 114+8, ctZuo, 1.54, 1.54 );
setEffScaleKey( spep_0 + 116+8, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 150+8, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_0 + 152+8, ctZuo, 3.55, 3.55 );
setEffScaleKey( spep_0 + 154+8, ctZuo, 4.37, 4.37 );
setEffScaleKey( spep_0 + 156+8, ctZuo, 5.19, 5.19 );
setEffScaleKey( spep_0 + 158+8, ctZuo, 6.01, 6.01 );
setEffScaleKey( spep_0 + 160+8, ctZuo, 6.82, 6.82 );

setEffRotateKey( spep_0 + 112+8, ctZuo, 27.2 );
setEffRotateKey( spep_0 + 160+8, ctZuo, 27.2 );

setEffAlphaKey( spep_0 + 112+8, ctZuo, 255 );
setEffAlphaKey( spep_0 + 150+8, ctZuo, 255 );
setEffAlphaKey( spep_0 + 152+8, ctZuo, 204 );
setEffAlphaKey( spep_0 + 154+8, ctZuo, 153 );
setEffAlphaKey( spep_0 + 156+8, ctZuo, 102 );
setEffAlphaKey( spep_0 + 158+8, ctZuo, 51 );
setEffAlphaKey( spep_0 + 160+8, ctZuo, 0 );

--書き文字ゴゴゴ
ctgogo = entryEffectLife( spep_0+46, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_0+46, ctgogo, 70, 8);
setEffScaleKey(spep_0+46, ctgogo, -0.7, 0.7);

--speff = entryEffect(  spep_0+32,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_0+32,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

tyounou = entryEffectLife(spep_0,SP_01r,178,0x80,-1,0,0,0);
setEffScaleKey(spep_0,tyounou,1.0,1.0);
setEffMoveKey(spep_0,tyounou,0,0,0);
setEffAlphaKey(spep_0,tyounou,255);

setEffScaleKey(spep_0+178,tyounou,1.0,1.0);
setEffMoveKey(spep_0+178,tyounou,0,0,0);
setEffAlphaKey(spep_0+178,tyounou,255);

--集中線
shuchusen0 = entryEffectLife(spep_0+22,906, 156, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0+22, shuchusen0, 1.5, 1.5);
setEffScaleKey( spep_0+178, shuchusen0, 1.5, 1.5);

playSe(spep_0,1034);
playSe(spep_0+46,SE_04);
playSe(spep_0+64,1019);
playSe(spep_0+120,1034);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+166; --エンドフェイズのフレーム数を置き換える

--setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
--setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置

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

------------------------------------------------------
-- Scene05 
------------------------------------------------------
spep_2 =spep_0+178;

entryFade(spep_2,0,2,6,255,255,255,255);
entryFade(spep_2+170,0,2,10,255,255,255,255);
entryFade(spep_2+258,20,2,0,255,255,255,255);

entryFadeBg(spep_2,0,278,0,10,10,10,200);

ctDogaga = entryEffectLife( spep_2-2 + 18,  10017, 118, 0x100, -1, 0, 19.8, 370.1 );
setEffMoveKey( spep_2-2 + 18, ctDogaga, 19.8, 370.1 , 0 );
setEffMoveKey( spep_2-2 + 20, ctDogaga, 21, 367.9 , 0 );
setEffMoveKey( spep_2-2 + 22, ctDogaga, 21, 366.3 , 0 );
setEffMoveKey( spep_2-2 + 24, ctDogaga, 19.1, 360.3 , 0 );
setEffMoveKey( spep_2-2 + 26, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 28, ctDogaga, 22.1, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 30, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 32, ctDogaga, 19.1, 360.3 , 0 );
setEffMoveKey( spep_2-2 + 34, ctDogaga, 21.1, 366.3 , 0 );
setEffMoveKey( spep_2-2 + 36, ctDogaga, 19.1, 360.3 , 0 );
setEffMoveKey( spep_2-2 + 38, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 40, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 42, ctDogaga, 21.1, 366.3 , 0 );
setEffMoveKey( spep_2-2 + 44, ctDogaga, 19.1, 360.3 , 0 );
setEffMoveKey( spep_2-2 + 46, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 48, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 50, ctDogaga, 21.1, 366.3 , 0 );
setEffMoveKey( spep_2-2 + 52, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 54, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 56, ctDogaga, 19.1, 360.3 , 0 );
setEffMoveKey( spep_2-2 + 58, ctDogaga, 21.1, 366.3 , 0 );
setEffMoveKey( spep_2-2 + 60, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 62, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 64, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 66, ctDogaga, 21.1, 366.3 , 0 );
setEffMoveKey( spep_2-2 + 68, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 70, ctDogaga, 18.3, 356.8 , 0 );
setEffMoveKey( spep_2-2 + 72, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 74, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 76, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 78, ctDogaga, 19.1, 358.3 , 0 );
setEffMoveKey( spep_2-2 + 80, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 82, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 84, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 86, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 88, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 90, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 92, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 94, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 96, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 98, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 100, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 102, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 104, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 106, ctDogaga, 19.6, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 108, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 110, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 112, ctDogaga, 17.1, 359.3 , 0 );
setEffMoveKey( spep_2-2 + 114, ctDogaga, 17.1, 358.6 , 0 );
setEffMoveKey( spep_2-2 + 116, ctDogaga, -6.9, 389.9 , 0 );
setEffMoveKey( spep_2-2 + 118, ctDogaga, 17.1, 357.1 , 0 );
setEffMoveKey( spep_2-2 + 120, ctDogaga, 9.1, 332.4 , 0 );
setEffMoveKey( spep_2-2 + 122, ctDogaga, 17.1, 355.7 , 0 );
setEffMoveKey( spep_2-2 + 124, ctDogaga, -6.9, 347 , 0 );
setEffMoveKey( spep_2-2 + 126, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 128, ctDogaga, 17.1, 354.3 , 0 );
setEffMoveKey( spep_2-2 + 130, ctDogaga, 17, 354.4 , 0 );
setEffMoveKey( spep_2-2 + 132, ctDogaga, 17, 354.4 , 0 );
setEffMoveKey( spep_2-2 + 134, ctDogaga, 17, 354.5 , 0 );
setEffMoveKey( spep_2-2 + 136, ctDogaga, 17, 354.6 , 0 );

setEffScaleKey( spep_2-2 + 18, ctDogaga, 1.88, 1.88 );
setEffScaleKey( spep_2-2 + 20, ctDogaga, 3.07, 3.07 );
setEffScaleKey( spep_2-2 + 22, ctDogaga, 2.75, 2.75 );
setEffScaleKey( spep_2-2 + 126, ctDogaga, 2.75, 2.75 );
setEffScaleKey( spep_2-2 + 128, ctDogaga, 2.69, 2.69 );
setEffScaleKey( spep_2-2 + 130, ctDogaga, 2.63, 2.63 );
setEffScaleKey( spep_2-2 + 132, ctDogaga, 2.56, 2.56 );
setEffScaleKey( spep_2-2 + 134, ctDogaga, 2.5, 2.5 );
setEffScaleKey( spep_2-2 + 136, ctDogaga, 2.44, 2.44 );

setEffRotateKey( spep_2-2 + 18, ctDogaga, 22.3 );
setEffRotateKey( spep_2-2 + 22, ctDogaga, 22.3 );
setEffRotateKey( spep_2-2 + 24, ctDogaga, 22.5 );

setEffAlphaKey( spep_2-2 + 18, ctDogaga, 255 );
setEffAlphaKey( spep_2-2 + 126, ctDogaga, 255 );
setEffAlphaKey( spep_2-2 + 128, ctDogaga, 204 );
setEffAlphaKey( spep_2-2 + 130, ctDogaga, 153 );
setEffAlphaKey( spep_2-2 + 132, ctDogaga, 102 );
setEffAlphaKey( spep_2-2 + 134, ctDogaga, 51 );
setEffAlphaKey( spep_2-2 + 136, ctDogaga, 0 );

setEffShake( spep_2-2 + 18,ctDogaga,118,15);

shuchusen2 = entryEffectLife( spep_2, 906, 278, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.5,  1.5);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+278,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+278,  shuchusen2,  1.5,  1.5);
setEffRotateKey(  spep_2+278,  shuchusen2,  0);
setEffAlphaKey(  spep_2+278,  shuchusen2,  255);

Rock= entryEffectLife( spep_2, SP_02, 278, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_2,  Rock,  0,  0);
setEffScaleKey(  spep_2,  Rock,  1.0,  1.0);
setEffRotateKey(  spep_2,  Rock,  0);
setEffAlphaKey(  spep_2,  Rock,  255);
setEffMoveKey(  spep_2+278,  Rock,  0,  0);
setEffScaleKey(  spep_2+278,  Rock,  1.0,  1.0);
setEffRotateKey(  spep_2+278,  Rock,  0);
setEffAlphaKey(  spep_2+278,  Rock,  255);

--流線
ryusen2 = entryEffectLife( spep_2 + 0,  921, 278, 0x80, -1, 0, -16.5, 16.9 );
setEffMoveKey( spep_2 + 0, ryusen2, -16.5, 16.9 , 0 );
setEffScaleKey( spep_2 + 0, ryusen2, 1.28, 1.13 );
setEffRotateKey( spep_2 + 0, ryusen2, -6.4 );
setEffAlphaKey( spep_2 + 0, ryusen2, 255 );

setEffMoveKey( spep_2 + 278, ryusen2, -16.5, 16.9 , 0 );
setEffScaleKey( spep_2 + 278, ryusen2, 1.28, 1.13 );
setEffRotateKey( spep_2 + 278, ryusen2, -6.4 );
setEffAlphaKey( spep_2 + 278, ryusen2, 255 );

Rockb= entryEffectLife( spep_2, SP_03r, 278, 0x80,  -1, 0,  0,  0);
setEffMoveKey(  spep_2,  Rockb,  0,  0);
setEffScaleKey(  spep_2,  Rockb,  1.0,  1.0);
setEffRotateKey(  spep_2,  Rockb,  0);
setEffAlphaKey(  spep_2,  Rockb,  255);
setEffMoveKey(  spep_2+278,  Rockb,  0,  0);
setEffScaleKey(  spep_2+278,  Rockb,  1.0,  1.0);
setEffRotateKey(  spep_2+278,  Rockb,  0);
setEffAlphaKey(  spep_2+278,  Rockb,  255);

setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2-2 + 184, 1, 106 );
setDisp( spep_2 + 276, 1, 0 );

setMoveKey( spep_2-2 + 0, 1, 689.5, 136.1 , 0 );
setMoveKey( spep_2-2 + 2, 1, 628.1, 133 , 0 );
setMoveKey( spep_2-2 + 4, 1, 525.5, 85.4 , 0 );
setMoveKey( spep_2-2 + 6, 1, 383.1, 104.4 , 0 );
setMoveKey( spep_2-2 + 8, 1, 185.7, 76 , 0 );
setMoveKey( spep_2-2 + 10, 1, -14, 78.7 , 0 );
setMoveKey( spep_2-2 + 12, 1, -274.1, 28 , 0 );
setMoveKey( spep_2-2 + 14, 1, -250.9, 64.4 , 0 );
setMoveKey( spep_2-2 + 16, 1, -242.2, 55.5 , 0 );
setMoveKey( spep_2-2 + 18, 1, -211.8, 62.4 , 0 );
setMoveKey( spep_2-2 + 20, 1, -178.3, 54.9 , 0 );
setMoveKey( spep_2-2 + 22, 1, -155.1, 95.2 , 0 );
setMoveKey( spep_2-2 + 24, 1, -142.4, 82.4 , 0 );
setMoveKey( spep_2-2 + 26, 1, -115.7, 93.5 , 0 );
setMoveKey( spep_2-2 + 28, 1, -100.6, 71.6 , 0 );
setMoveKey( spep_2-2 + 30, 1, -87.2, 89.5 , 0 );
setMoveKey( spep_2-2 + 32, 1, -88.7, 66.7 , 0 );
setMoveKey( spep_2-2 + 34, 1, -75.7, 51.8 , 0 );
setMoveKey( spep_2-2 + 36, 1, -56.8, 33.7 , 0 );
setMoveKey( spep_2-2 + 38, 1, -47.3, 47.4 , 0 );
setMoveKey( spep_2-2 + 40, 1, -44.9, 20.8 , 0 );
setMoveKey( spep_2-2 + 42, 1, -40.8, 20.1 , 0 );
setMoveKey( spep_2-2 + 44, 1, -35.4, 19.7 , 0 );
setMoveKey( spep_2-2 + 46, 1, -23.1, 35.2 , 0 );
setMoveKey( spep_2-2 + 48, 1, -22, 14.7 , 0 );
setMoveKey( spep_2-2 + 50, 1, -21.6, 18.2 , 0 );
setMoveKey( spep_2-2 + 52, 1, -16.5, 21.6 , 0 );
setMoveKey( spep_2-2 + 54, 1, -4, 32.9 , 0 );
setMoveKey( spep_2-2 + 56, 1, 1, 8.6 , 0 );
setMoveKey( spep_2-2 + 58, 1, -1.1, 23.5 , 0 );
setMoveKey( spep_2-2 + 60, 1, 4.8, 34.1 , 0 );
setMoveKey( spep_2-2 + 62, 1, 18.6, 52.4 , 0 );
setMoveKey( spep_2-2 + 64, 1, 24.7, 31.6 , 0 );
setMoveKey( spep_2-2 + 66, 1, 23, 50.7 , 0 );
setMoveKey( spep_2-2 + 68, 1, 24.6, 57.1 , 0 );
setMoveKey( spep_2-2 + 70, 1, 42.5, 79.2 , 0 );
setMoveKey( spep_2-2 + 72, 1, 48.5, 62.6 , 0 );
setMoveKey( spep_2-2 + 74, 1, 47.1, 77.9 , 0 );
setMoveKey( spep_2-2 + 76, 1, 45.4, 71 , 0 );
setMoveKey( spep_2-2 + 78, 1, 44.4, 95.9 , 0 );
setMoveKey( spep_2-2 + 80, 1, 31.3, 82.5 , 0 );
setMoveKey( spep_2-2 + 82, 1, 27.2, 85 , 0 );
setMoveKey( spep_2-2 + 84, 1, 25.2, 81.9 , 0 );
setMoveKey( spep_2-2 + 86, 1, 24.4, 102.6 , 0 );
setMoveKey( spep_2-2 + 88, 1, 15.2, 89.4 , 0 );
setMoveKey( spep_2-2 + 90, 1, 7.3, 92.1 , 0 );
setMoveKey( spep_2-2 + 92, 1, 1.1, 96.9 , 0 );
setMoveKey( spep_2-2 + 94, 1, 4.3, 109.4 , 0 );
setMoveKey( spep_2-2 + 96, 1, 5, 89.3 , 0 );
setMoveKey( spep_2-2 + 98, 1, -0.5, 93.2 , 0 );
setMoveKey( spep_2-2 + 100, 1, -1.1, 94.8 , 0 );
setMoveKey( spep_2-2 + 102, 1, 8.2, 104 , 0 );
setMoveKey( spep_2-2 + 104, 1, 8.8, 84.2 , 0 );
setMoveKey( spep_2-2 + 106, 1, 3.6, 88.3 , 0 );
setMoveKey( spep_2-2 + 108, 1, 2.7, 85.6 , 0 );
setMoveKey( spep_2-2 + 110, 1, 12.2, 98.7 , 0 );
setMoveKey( spep_2-2 + 112, 1, 12.7, 79.1 , 0 );
setMoveKey( spep_2-2 + 114, 1, 7.8, 83.4 , 0 );
setMoveKey( spep_2-2 + 116, 1, -0.5, 77.4 , 0 );
setMoveKey( spep_2-2 + 118, 1, 10, 87.2 , 0 );
setMoveKey( spep_2-2 + 120, 1, 7.3, 64.7 , 0 );
setMoveKey( spep_2-2 + 122, 1, -0.4, 66.2 , 0 );
setMoveKey( spep_2-2 + 124, 1, -5, 60 , 0 );
setMoveKey( spep_2-2 + 126, 1, 1.6, 69.6 , 0 );
setMoveKey( spep_2-2 + 128, 1, -5.2, 51.3 , 0 );
setMoveKey( spep_2-2 + 130, 1, -8.6, 48.9 , 0 );
setMoveKey( spep_2-2 + 132, 1, -5.5, 38.6 , 0 );
setMoveKey( spep_2-2 + 134, 1, -10.8, 40 , 0 );
setMoveKey( spep_2-2 + 136, 1, -11.7, 19.8 , 0 );
setMoveKey( spep_2-2 + 138, 1, -20.7, 19.7 , 0 );
setMoveKey( spep_2-2 + 140, 1, -24.1, 23.4 , 0 );
setMoveKey( spep_2-2 + 142, 1, -12.3, 18 , 0 );
setMoveKey( spep_2-2 + 144, 1, -22.2, 2.5 , 0 );
setMoveKey( spep_2-2 + 146, 1, -10.9, 14.2 , 0 );
setMoveKey( spep_2-2 + 148, 1, -16.4, 13.3 , 0 );
setMoveKey( spep_2-2 + 150, 1, -10.7, 14.7 , 0 );
setMoveKey( spep_2-2 + 152, 1, -16.8, 11.8 , 0 );
setMoveKey( spep_2-2 + 154, 1, -11, 13 , 0 );
setMoveKey( spep_2-2 + 156, 1, -13.1, 2.1 , 0 );
setMoveKey( spep_2-2 + 158, 1, -11.2, 11.3 , 0 );
setMoveKey( spep_2-2 + 160, 1, -17.4, 8.4 , 0 );
setMoveKey( spep_2-2 + 162, 1, -11.5, 9.6 , 0 );
setMoveKey( spep_2-2 + 164, 1, -13.6, 0.8 , 0 );
setMoveKey( spep_2-2 + 166, 1, -11.7, 7.9 , 0 );
setMoveKey( spep_2-2 + 168, 1, -17.8, 5.1 , 0 );
setMoveKey( spep_2-2 + 170, 1, -11.9, 6.3 , 0 );
setMoveKey( spep_2-2 + 172, 1, -14, -0.5 , 0 );
setMoveKey( spep_2-2 + 174, 1, -12.1, 4.7 , 0 );
setMoveKey( spep_2-2 + 176, 1, -18.2, 1.8 , 0 );
setMoveKey( spep_2-2 + 178, 1, -12.2, 3 , 0 );
setMoveKey( spep_2-2 + 180, 1, -14.3, -3.8 , 0 );
setMoveKey( spep_2-2 + 183, 1, -12.4, 1.4 , 0 );
setMoveKey( spep_2-2 + 184, 1, -32.4, 40.4 , 0 );
setMoveKey( spep_2-2 + 186, 1, -21.1, 35.7 , 0 );
setMoveKey( spep_2-2 + 188, 1, -24, 28.7 , 0 );
setMoveKey( spep_2-2 + 190, 1, -23.8, 41.5 , 0 );
setMoveKey( spep_2-2 + 192, 1, -29.7, 30.8 , 0 );
setMoveKey( spep_2-2 + 194, 1, -30.2, 38.3 , 0 );
setMoveKey( spep_2-2 + 196, 1, -31.5, 25 , 0 );
setMoveKey( spep_2-2 + 198, 1, -29.4, 27.9 , 0 );
setMoveKey( spep_2-2 + 200, 1, -27.5, 29 , 0 );
setMoveKey( spep_2-2 + 202, 1, -40.2, 32.5 , 0 );
setMoveKey( spep_2-2 + 204, 1, -29.6, 26.9 , 0 );
setMoveKey( spep_2-2 + 206, 1, -33.4, 28 , 0 );
setMoveKey( spep_2-2 + 208, 1, -31.7, 24.9 , 0 );
setMoveKey( spep_2-2 + 210, 1, -44.3, 28.6 , 0 );
setMoveKey( spep_2-2 + 212, 1, -33.7, 22.9 , 0 );
setMoveKey( spep_2-2 + 214, 1, -37.5, 24.1 , 0 );
setMoveKey( spep_2-2 + 216, 1, -35.8, 20.9 , 0 );
setMoveKey( spep_2-2 + 218, 1, -46.4, 24.8 , 0 );
setMoveKey( spep_2-2 + 220, 1, -37.9, 18.9 , 0 );
setMoveKey( spep_2-2 + 222, 1, -41.5, 20.2 , 0 );
setMoveKey( spep_2-2 + 224, 1, -40, 16.9 , 0 );
setMoveKey( spep_2-2 + 226, 1, -52.6, 21 , 0 );
setMoveKey( spep_2-2 + 228, 1, -42.1, 14.9 , 0 );
setMoveKey( spep_2-2 + 230, 1, -45.6, 16.3 , 0 );
setMoveKey( spep_2-2 + 232, 1, -44.2, 12.9 , 0 );
setMoveKey( spep_2-2 + 234, 1, -54.8, 17.2 , 0 );
setMoveKey( spep_2-2 + 236, 1, -46.3, 10.9 , 0 );
setMoveKey( spep_2-2 + 238, 1, -49.7, 14.5 , 0 );
setMoveKey( spep_2-2 + 240, 1, -48.4, 8.9 , 0 );
setMoveKey( spep_2-2 + 242, 1, -59, 13.4 , 0 );
setMoveKey( spep_2-2 + 244, 1, -50.5, 7 , 0 );
setMoveKey( spep_2-2 + 246, 1, -55.8, 8.7 , 0 );
setMoveKey( spep_2-2 + 248, 1, -52.6, 5 , 0 );
setMoveKey( spep_2-2 + 250, 1, -59.2, 11.7 , 0 );
setMoveKey( spep_2-2 + 252, 1, -58.8, -13 , 0 );
setMoveKey( spep_2-2 + 254, 1, -55.9, 10.9 , 0 );
setMoveKey( spep_2-2 + 256, 1, -72.9, -2.9 , 0 );
setMoveKey( spep_2-2 + 258, 1, -63.4, 8 , 0 );
setMoveKey( spep_2-2 + 260, 1, -59, -0.9 , 0 );
setMoveKey( spep_2-2 + 262, 1, -62.1, -2.9 , 0 );
setMoveKey( spep_2-2 + 264, 1, -61.1, -2.8 , 0 );
setMoveKey( spep_2-2 + 266, 1, -73.7, 2.3 , 0 );
setMoveKey( spep_2-2 + 268, 1, -63.3, -4.7 , 0 );
setMoveKey( spep_2-2 + 270, 1, -66.2, -0.6 , 0 );
setMoveKey( spep_2-2 + 272, 1, -65.4, -6.7 , 0 );
setMoveKey( spep_2-2 + 274, 1, -75.9, -1.4 , 0 );
setMoveKey( spep_2-2 + 276, 1, -67.6, -8.6 , 0 );
setMoveKey( spep_2-2 + 278, 1, -70.7, -13.6 , 0 );

setScaleKey( spep_2-2 + 0, 1, 0.41, 0.41 );
setScaleKey( spep_2-2 + 2, 1, 0.49, 0.49 );
setScaleKey( spep_2-2 + 4, 1, 0.64, 0.64 );
setScaleKey( spep_2-2 + 6, 1, 0.84, 0.84 );
setScaleKey( spep_2-2 + 8, 1, 1.1, 1.1 );
setScaleKey( spep_2-2 + 10, 1, 1.41, 1.41 );
setScaleKey( spep_2-2 + 12, 1, 1.78, 1.78 );
setScaleKey( spep_2-2 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_2-2 + 16, 1, 1.76, 1.76 );
setScaleKey( spep_2-2 + 18, 1, 1.75, 1.75 );
setScaleKey( spep_2-2 + 20, 1, 1.75, 1.75 );
setScaleKey( spep_2-2 + 22, 1, 1.74, 1.74 );
setScaleKey( spep_2-2 + 24, 1, 1.73, 1.73 );
setScaleKey( spep_2-2 + 26, 1, 1.72, 1.72 );
setScaleKey( spep_2-2 + 28, 1, 1.71, 1.71 );
setScaleKey( spep_2-2 + 30, 1, 1.7, 1.7 );
setScaleKey( spep_2-2 + 32, 1, 1.69, 1.69 );
setScaleKey( spep_2-2 + 34, 1, 1.68, 1.68 );
setScaleKey( spep_2-2 + 36, 1, 1.67, 1.67 );
setScaleKey( spep_2-2 + 38, 1, 1.66, 1.66 );
setScaleKey( spep_2-2 + 40, 1, 1.65, 1.65 );
setScaleKey( spep_2-2 + 42, 1, 1.64, 1.64 );
setScaleKey( spep_2-2 + 44, 1, 1.63, 1.63 );
setScaleKey( spep_2-2 + 46, 1, 1.62, 1.62 );
setScaleKey( spep_2-2 + 48, 1, 1.61, 1.61 );
setScaleKey( spep_2-2 + 50, 1, 1.6, 1.6 );
setScaleKey( spep_2-2 + 52, 1, 1.59, 1.59 );
setScaleKey( spep_2-2 + 54, 1, 1.58, 1.58 );
setScaleKey( spep_2-2 + 56, 1, 1.57, 1.57 );
setScaleKey( spep_2-2 + 58, 1, 1.56, 1.56 );
setScaleKey( spep_2-2 + 60, 1, 1.55, 1.55 );
setScaleKey( spep_2-2 + 62, 1, 1.54, 1.54 );
setScaleKey( spep_2-2 + 64, 1, 1.53, 1.53 );
setScaleKey( spep_2-2 + 66, 1, 1.52, 1.52 );
setScaleKey( spep_2-2 + 68, 1, 1.51, 1.51 );
setScaleKey( spep_2-2 + 70, 1, 1.5, 1.5 );
setScaleKey( spep_2-2 + 72, 1, 1.49, 1.49 );
setScaleKey( spep_2-2 + 74, 1, 1.48, 1.48 );
setScaleKey( spep_2-2 + 76, 1, 1.47, 1.47 );
setScaleKey( spep_2-2 + 78, 1, 1.46, 1.46 );
setScaleKey( spep_2-2 + 80, 1, 1.45, 1.45 );
setScaleKey( spep_2-2 + 82, 1, 1.44, 1.44 );
setScaleKey( spep_2-2 + 84, 1, 1.43, 1.43 );
setScaleKey( spep_2-2 + 86, 1, 1.42, 1.42 );
setScaleKey( spep_2-2 + 88, 1, 1.41, 1.41 );
setScaleKey( spep_2-2 + 90, 1, 1.4, 1.4 );
setScaleKey( spep_2-2 + 92, 1, 1.39, 1.39 );
setScaleKey( spep_2-2 + 94, 1, 1.38, 1.38 );
setScaleKey( spep_2-2 + 96, 1, 1.37, 1.37 );
setScaleKey( spep_2-2 + 98, 1, 1.36, 1.36 );
setScaleKey( spep_2-2 + 100, 1, 1.35, 1.35 );
setScaleKey( spep_2-2 + 102, 1, 1.34, 1.34 );
setScaleKey( spep_2-2 + 104, 1, 1.33, 1.33 );
setScaleKey( spep_2-2 + 106, 1, 1.32, 1.32 );
setScaleKey( spep_2-2 + 108, 1, 1.31, 1.31 );
setScaleKey( spep_2-2 + 110, 1, 1.3, 1.3 );
setScaleKey( spep_2-2 + 112, 1, 1.29, 1.29 );
setScaleKey( spep_2-2 + 114, 1, 1.28, 1.28 );
setScaleKey( spep_2-2 + 116, 1, 1.27, 1.27 );
setScaleKey( spep_2-2 + 118, 1, 1.26, 1.26 );
setScaleKey( spep_2-2 + 120, 1, 1.25, 1.25 );
setScaleKey( spep_2-2 + 122, 1, 1.24, 1.24 );
setScaleKey( spep_2-2 + 124, 1, 1.23, 1.23 );
setScaleKey( spep_2-2 + 126, 1, 1.22, 1.22 );
setScaleKey( spep_2-2 + 128, 1, 1.21, 1.21 );
setScaleKey( spep_2-2 + 130, 1, 1.2, 1.2 );
setScaleKey( spep_2-2 + 132, 1, 1.19, 1.19 );
setScaleKey( spep_2-2 + 134, 1, 1.18, 1.18 );
setScaleKey( spep_2-2 + 136, 1, 1.17, 1.17 );
setScaleKey( spep_2-2 + 138, 1, 1.16, 1.16 );
setScaleKey( spep_2-2 + 140, 1, 1.14, 1.14 );
setScaleKey( spep_2-2 + 142, 1, 1.13, 1.13 );
setScaleKey( spep_2-2 + 144, 1, 1.12, 1.12 );
setScaleKey( spep_2-2 + 146, 1, 1.11, 1.11 );
setScaleKey( spep_2-2 + 152, 1, 1.11, 1.11 );
setScaleKey( spep_2-2 + 154, 1, 1.12, 1.12 );
setScaleKey( spep_2-2 + 156, 1, 1.12, 1.12 );
setScaleKey( spep_2-2 + 158, 1, 1.13, 1.13 );
setScaleKey( spep_2-2 + 160, 1, 1.13, 1.13 );
setScaleKey( spep_2-2 + 162, 1, 1.14, 1.14 );
setScaleKey( spep_2-2 + 164, 1, 1.14, 1.14 );
setScaleKey( spep_2-2 + 166, 1, 1.15, 1.15 );
setScaleKey( spep_2-2 + 168, 1, 1.15, 1.15 );
setScaleKey( spep_2-2 + 170, 1, 1.16, 1.16 );
setScaleKey( spep_2-2 + 172, 1, 1.16, 1.16 );
setScaleKey( spep_2-2 + 174, 1, 1.17, 1.17 );
setScaleKey( spep_2-2 + 176, 1, 1.17, 1.17 );
setScaleKey( spep_2-2 + 178, 1, 1.18, 1.18 );
setScaleKey( spep_2-2 + 180, 1, 1.18, 1.18 );
setScaleKey( spep_2-2 + 183, 1, 1.19, 1.19 );
setScaleKey( spep_2-2 + 184, 1, 1.07, 1.07 );
setScaleKey( spep_2-2 + 186, 1, 1.08, 1.08 );
setScaleKey( spep_2-2 + 188, 1, 1.08, 1.08 );
setScaleKey( spep_2-2 + 190, 1, 1.09, 1.09 );
setScaleKey( spep_2-2 + 192, 1, 1.09, 1.09 );
setScaleKey( spep_2-2 + 194, 1, 1.1, 1.1 );
setScaleKey( spep_2-2 + 198, 1, 1.1, 1.1 );
setScaleKey( spep_2-2 + 200, 1, 1.11, 1.11 );
setScaleKey( spep_2-2 + 202, 1, 1.11, 1.11 );
setScaleKey( spep_2-2 + 204, 1, 1.12, 1.12 );
setScaleKey( spep_2-2 + 206, 1, 1.12, 1.12 );
setScaleKey( spep_2-2 + 208, 1, 1.13, 1.13 );
setScaleKey( spep_2-2 + 210, 1, 1.13, 1.13 );
setScaleKey( spep_2-2 + 212, 1, 1.14, 1.14 );
setScaleKey( spep_2-2 + 216, 1, 1.14, 1.14 );
setScaleKey( spep_2-2 + 218, 1, 1.15, 1.15 );
setScaleKey( spep_2-2 + 220, 1, 1.15, 1.15 );
setScaleKey( spep_2-2 + 222, 1, 1.16, 1.16 );
setScaleKey( spep_2-2 + 224, 1, 1.16, 1.16 );
setScaleKey( spep_2-2 + 226, 1, 1.17, 1.17 );
setScaleKey( spep_2-2 + 230, 1, 1.17, 1.17 );
setScaleKey( spep_2-2 + 232, 1, 1.18, 1.18 );
setScaleKey( spep_2-2 + 234, 1, 1.18, 1.18 );
setScaleKey( spep_2-2 + 236, 1, 1.19, 1.19 );
setScaleKey( spep_2-2 + 238, 1, 1.19, 1.19 );
setScaleKey( spep_2-2 + 240, 1, 1.2, 1.2 );
setScaleKey( spep_2-2 + 242, 1, 1.2, 1.2 );
setScaleKey( spep_2-2 + 244, 1, 1.21, 1.21 );
setScaleKey( spep_2-2 + 248, 1, 1.21, 1.21 );
setScaleKey( spep_2-2 + 250, 1, 1.22, 1.22 );
setScaleKey( spep_2-2 + 252, 1, 1.22, 1.22 );
setScaleKey( spep_2-2 + 254, 1, 1.23, 1.23 );
setScaleKey( spep_2-2 + 256, 1, 1.23, 1.23 );
setScaleKey( spep_2-2 + 258, 1, 1.24, 1.24 );
setScaleKey( spep_2-2 + 262, 1, 1.24, 1.24 );
setScaleKey( spep_2-2 + 264, 1, 1.25, 1.25 );
setScaleKey( spep_2-2 + 266, 1, 1.25, 1.25 );
setScaleKey( spep_2-2 + 268, 1, 1.26, 1.26 );
setScaleKey( spep_2-2 + 270, 1, 1.26, 1.26 );
setScaleKey( spep_2-2 + 272, 1, 1.27, 1.27 );
setScaleKey( spep_2-2 + 274, 1, 1.27, 1.27 );
setScaleKey( spep_2-2 + 276, 1, 1.28, 1.28 );

setRotateKey( spep_2-2 + 0, 1, 0 );
setRotateKey( spep_2-2 + 183, 1, 0 );
setRotateKey( spep_2-2 + 184, 1, -15 );
setRotateKey( spep_2-2 + 186, 1, -12 );
setRotateKey( spep_2-2 + 188, 1, -9 );
setRotateKey( spep_2-2 + 190, 1, -8.8 );
setRotateKey( spep_2-2 + 192, 1, -8.6 );
setRotateKey( spep_2-2 + 194, 1, -8.4 );
setRotateKey( spep_2-2 + 196, 1, -8.2 );
setRotateKey( spep_2-2 + 198, 1, -8 );
setRotateKey( spep_2-2 + 200, 1, -7.8 );
setRotateKey( spep_2-2 + 202, 1, -7.6 );
setRotateKey( spep_2-2 + 204, 1, -7.4 );
setRotateKey( spep_2-2 + 206, 1, -7.2 );
setRotateKey( spep_2-2 + 208, 1, -7 );
setRotateKey( spep_2-2 + 210, 1, -6.8 );
setRotateKey( spep_2-2 + 212, 1, -6.6 );
setRotateKey( spep_2-2 + 214, 1, -6.4 );
setRotateKey( spep_2-2 + 216, 1, -6.2 );
setRotateKey( spep_2-2 + 218, 1, -6 );
setRotateKey( spep_2-2 + 220, 1, -5.8 );
setRotateKey( spep_2-2 + 222, 1, -5.6 );
setRotateKey( spep_2-2 + 224, 1, -5.4 );
setRotateKey( spep_2-2 + 226, 1, -5.2 );
setRotateKey( spep_2-2 + 228, 1, -5 );
setRotateKey( spep_2-2 + 230, 1, -4.8 );
setRotateKey( spep_2-2 + 232, 1, -4.6 );
setRotateKey( spep_2-2 + 234, 1, -4.4 );
setRotateKey( spep_2-2 + 236, 1, -4.2 );
setRotateKey( spep_2-2 + 238, 1, -4 );
setRotateKey( spep_2-2 + 240, 1, -3.8 );
setRotateKey( spep_2-2 + 242, 1, -3.6 );
setRotateKey( spep_2-2 + 244, 1, -3.4 );
setRotateKey( spep_2-2 + 246, 1, -3.2 );
setRotateKey( spep_2-2 + 248, 1, -3 );
setRotateKey( spep_2-2 + 250, 1, -2.8 );
setRotateKey( spep_2-2 + 252, 1, -2.6 );
setRotateKey( spep_2-2 + 254, 1, -2.4 );
setRotateKey( spep_2-2 + 256, 1, -2.2 );
setRotateKey( spep_2-2 + 258, 1, -2 );
setRotateKey( spep_2-2 + 260, 1, -1.8 );
setRotateKey( spep_2-2 + 262, 1, -1.6 );
setRotateKey( spep_2-2 + 264, 1, -1.4 );
setRotateKey( spep_2-2 + 266, 1, -1.2 );
setRotateKey( spep_2-2 + 268, 1, -1 );
setRotateKey( spep_2-2 + 270, 1, -0.8 );
setRotateKey( spep_2-2 + 272, 1, -0.6 );
setRotateKey( spep_2-2 + 274, 1, -0.4 );
setRotateKey( spep_2-2 + 276, 1, -0.2 );
setRotateKey( spep_2-2 + 278, 1, 0 );

Seid=playSe(spep_2,1044);
stopSe(spep_2+134,Seid,0);

playSe(spep_2+146,43);
Seid2=playSe(spep_2+182,17);
stopSe(spep_2+276,Seid2,0);

------------------------------------------------------
-- Scene02 card
------------------------------------------------------
spep_1 =spep_2+278;

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen1 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffMoveKey(  spep_1+90,  shuchusen1,  0,  0);
setEffScaleKey(  spep_1+90,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_1+90,  shuchusen1,  0);
setEffAlphaKey(  spep_1+90,  shuchusen1,  255);

entryFade( spep_1+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- Scene06 
------------------------------------------------------
spep_3=spep_1+90;

entryFade(spep_3,0,2,6,255,255,255,255);
entryFade(spep_3+30,0,4,6,255,255,255,255);
entryFade(spep_3+96,12,2,0,255,255,255,255);

entryFadeBg(spep_3,0,108,0,10,10,10,200);

ctZuo3=entryEffectLife(spep_3+36,10012,30,0x100,-1,78.7, 260.5 , 0 );

setEffMoveKey( spep_3 + 36, ctZuo3, 78.7, 260.5 , 0 );
setEffMoveKey( spep_3 + 38, ctZuo3, 117.2, 303.7 , 0 );
setEffMoveKey( spep_3 + 40, ctZuo3, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 42, ctZuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 44, ctZuo3, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 46, ctZuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 48, ctZuo3, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 50, ctZuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 52, ctZuo3, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 54, ctZuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 56, ctZuo3, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 58, ctZuo3, 173.1, 345.5 , 0 );
setEffMoveKey( spep_3 + 60, ctZuo3, 166.7, 367.9 , 0 );
setEffMoveKey( spep_3 + 62, ctZuo3, 211.6, 339 , 0 );
setEffMoveKey( spep_3 + 64, ctZuo3, 195.7, 370.9 , 0 );
setEffMoveKey( spep_3 + 66, ctZuo3, 210.3, 372.4 , 0 );

setEffScaleKey( spep_3 + 36, ctZuo3, 0.34, 0.34 );
setEffScaleKey( spep_3 + 38, ctZuo3, 1.54, 1.54 );
setEffScaleKey( spep_3 + 40, ctZuo3, 2.73, 2.73 );
setEffScaleKey( spep_3 + 56, ctZuo3, 2.73, 2.73 );
setEffScaleKey( spep_3 + 58, ctZuo3, 3.55, 3.55 );
setEffScaleKey( spep_3 + 60, ctZuo3, 4.37, 4.37 );
setEffScaleKey( spep_3 + 62, ctZuo3, 5.19, 5.19 );
setEffScaleKey( spep_3 + 64, ctZuo3, 6.01, 6.01 );
setEffScaleKey( spep_3 + 66, ctZuo3, 6.82, 6.82 );

setEffRotateKey( spep_3 + 36, ctZuo3, 27.2 );
setEffRotateKey( spep_3 + 66, ctZuo3, 27.2 );

setEffAlphaKey( spep_3 + 36, ctZuo3, 255 );
setEffAlphaKey( spep_3 + 56, ctZuo3, 255 );
setEffAlphaKey( spep_3 + 58, ctZuo3, 204 );
setEffAlphaKey( spep_3 + 60, ctZuo3, 153 );
setEffAlphaKey( spep_3 + 62, ctZuo3, 102 );
setEffAlphaKey( spep_3 + 64, ctZuo3, 51 );
setEffAlphaKey( spep_3 + 66, ctZuo3, 0 );

Ball=entryEffectLife(spep_3,SP_04r,108,0x100,-1,0,0,0);
setEffScaleKey(spep_3,Ball,1.0,1.0);
setEffAlphaKey(spep_3,Ball,255);
setEffRotateKey(spep_3,Ball,0);

setEffScaleKey(spep_3+108,Ball,1.0,1.0);
setEffAlphaKey(spep_3+108,Ball,255);
setEffRotateKey(spep_3+108,Ball,0);

shuchusen3 = entryEffectLife( spep_3, 906, 108, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.5,  1.5);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+108,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+108,  shuchusen3,  1.5,  1.5);
setEffRotateKey(  spep_3+108,  shuchusen3,  0);
setEffAlphaKey(  spep_3+108,  shuchusen3,  255);

ryusen3 = entryEffectLife( spep_3, 921, 108, 0x80,  -1, 0, -16.5, 16.9 );  --集中線

setEffMoveKey( spep_3 + 0, ryusen3, -16.5, 16.9 , 0 );
setEffScaleKey( spep_3 + 0, ryusen3, 1.77, 1.5 );
setEffRotateKey( spep_3 + 0, ryusen3, -132.4 );
setEffAlphaKey( spep_3 + 0, ryusen3, 255 );

setEffMoveKey( spep_3 + 108, ryusen3, -16.5, 16.9 , 0 );
setEffScaleKey( spep_3 + 108, ryusen3, 1.77, 1.5 );
setEffRotateKey( spep_3 + 108, ryusen3, -132.4 );
setEffAlphaKey( spep_3 + 108, ryusen3, 255 );

playSe(spep_3+36,SE_06);

------------------------------------------------------
-- Scene06 
------------------------------------------------------
spep_4=spep_3+108;

entryFade(spep_4,0,2,10,255,255,255,255);
entryFade(spep_4+118,60,2,0,255,255,255,255);

exp= entryEffect(spep_4,SP_05,0x80,-1,0,0,0);
setEffMoveKey( spep_4 + 0, exp, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, exp, 1.1, 1.1 );
setEffRotateKey( spep_4 + 0, exp, 0 );
setEffAlphaKey( spep_4 + 0, exp, 255 );

shuchusen4 = entryEffectLife( spep_4, 906, 180, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.5,  1.5);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+180,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+180,  shuchusen4,  1.5,  1.5);
setEffRotateKey(  spep_4+180,  shuchusen4,  0);
setEffAlphaKey(  spep_4+180,  shuchusen4,  255);

playSe(spep_4+16,SE_10);

-- ダメージ表示
dealDamage(spep_4+16);
endPhase( spep_4+160);

end

--1014970　孫悟空＆フリーザ_限界突破の突撃
--sp1203 --sp_effect_a1_00126

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

SP_01 = 152100;
SP_02 = 152101;
SP_03 = 152102;
SP_04 = 152103;
SP_05 = 152104;
SP_06 = 152105;
SP_07 = 152106;
SP_08 = 152107;
SP_09 = 190015;
SP_10 = 152108;

SP_01r = 152109;
SP_02r = 152110;

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
setScaleKey(   0,   1, 1.5, 1.5);
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

entryFade(spep_0,0,2,6,255,255,255,200);
entryFade(spep_0+140-4,0,0,4,255,255,255,200);
entryFade(spep_0+438,6,6,0,255,255,255,255);

entryFadeBg(spep_0,0,446,0,10,10,10,200);

shuchusen0=entryEffectLife(spep_0+82,906,364,0x100,-1,0,0,0);
setEffScaleKey( spep_0+82, shuchusen0, 1.5, 1.5);
setEffScaleKey( spep_0+446, shuchusen0, 1.5, 1.5);

--顔カットイン&セリフカットイン
--書き文字ゴゴゴ
ctgogo = entryEffectLife( spep_0+10, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_0+10, ctgogo, 70, 8);
setEffScaleKey(spep_0+10, ctgogo, 0.7, 0.7);

speff = entryEffect(  spep_0,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--書き文字　ドン 10019
--ctDon= 
ctDon = entryEffectLife( spep_0+2 + 84,  10019, 16, 0x100, -1, 0, 13.8, 227.6 );
setEffMoveKey( spep_0+2 + 84, ctDon, 13.8, 227.6 , 0 );
setEffMoveKey( spep_0+2 + 86, ctDon, -8.9, 253.4 , 0 );
setEffMoveKey( spep_0+2 + 88, ctDon, -10.6, 275.9 , 0 );
setEffMoveKey( spep_0+2 + 90, ctDon, -19.8, 284.9 , 0 );
setEffMoveKey( spep_0+2 + 92, ctDon, -7.5, 278 , 0 );
setEffMoveKey( spep_0+2 + 94, ctDon, -19.7, 278.4 , 0 );
setEffMoveKey( spep_0+2 + 96, ctDon, -13.3, 286.7 , 0 );
setEffMoveKey( spep_0+2 + 98, ctDon, -13.1, 274.6 , 0 );
setEffMoveKey( spep_0+2 + 100, ctDon, -13.1, 275.1 , 0 );

setEffScaleKey( spep_0+2 + 84, ctDon, 1.29, 1.29 );
setEffScaleKey( spep_0+2+ 86, ctDon, 1.63, 1.63 );
setEffScaleKey( spep_0+2 + 88, ctDon, 1.98, 1.98 );
setEffScaleKey( spep_0+2 + 90, ctDon, 2, 2 );
setEffScaleKey( spep_0+2 + 92, ctDon, 2.02, 2.02 );
setEffScaleKey( spep_0+2 + 94, ctDon, 2.04, 2.04 );
setEffScaleKey( spep_0+2 + 96, ctDon, 2.05, 2.05 );
setEffScaleKey( spep_0+2 + 98, ctDon, 2.06, 2.06 );
setEffScaleKey( spep_0+2 + 100, ctDon, 2.07, 2.07 );

setEffRotateKey( spep_0+2 + 84, ctDon, -0.8 );
setEffRotateKey( spep_0+2 + 86, ctDon, -0.2 );
setEffRotateKey( spep_0+2 + 88, ctDon, 0.3 );
setEffRotateKey( spep_0+2 + 100, ctDon, 0.3 );

setEffAlphaKey( spep_0+2 + 84, ctDon, 255 );
setEffAlphaKey( spep_0+2 + 94, ctDon, 255 );
setEffAlphaKey( spep_0+2 + 96, ctDon, 170 );
setEffAlphaKey( spep_0+2 + 98, ctDon, 85 );
setEffAlphaKey( spep_0+2 + 100, ctDon, 0 );

--eff_01
--Freeza0 = entryEffectLife(spep_0,SP_01,446,0x80,-1,0,0,0);
Freeza0 = entryEffectLife(spep_0,152100,446,0x100,-1,0,0,0);
setEffScaleKey( spep_0 , Freeza0, 1.0, 1.0 );
--
--Goku0 = entryEffectLife(spep_0,SP_02,446,0x80,-1,0,0,0);
Goku0 = entryEffectLife(spep_0,152101,446,0x80,-1,0,0,0);
setEffScaleKey( spep_0,Goku0, 1.0, 1.0 );

--SE
playSe(spep_0,SE_04);
playSe(spep_0+86,1008);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+130; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置

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
-- 回避されなかった場合
------------------------------------------------------

--書き文字　ガッ
ctGa = entryEffectLife( spep_0-4 + 140,  10005, 16, 0x100, -1, 0, 140.1, 318.9 );
setEffMoveKey( spep_0-4 + 140, ctGa, 140.1, 318.9 , 0 );
setEffMoveKey( spep_0-4 + 142, ctGa, 130.8, 331.3 , 0 );
setEffMoveKey( spep_0-4 + 144, ctGa, 134.7, 336.2 , 0 );
setEffMoveKey( spep_0-4 + 146, ctGa, 127.9, 338.9 , 0 );
setEffMoveKey( spep_0-4 + 148, ctGa, 137.1, 339.9 , 0 );
setEffMoveKey( spep_0-4 + 150, ctGa, 128.1, 345 , 0 );
setEffMoveKey( spep_0-4 + 152, ctGa, 132.2, 343.8 , 0 );
setEffMoveKey( spep_0-4 + 154, ctGa, 124.2, 348.8 , 0 );
setEffMoveKey( spep_0-4 + 156, ctGa, 123.5, 350.7 , 0 );

setEffScaleKey( spep_0-4 + 140, ctGa, 1.25, 1.25 );
setEffScaleKey( spep_0-4 + 142, ctGa, 1.45, 1.45 );
setEffScaleKey( spep_0-4 + 144, ctGa, 1.52, 1.52 );
setEffScaleKey( spep_0-4 + 146, ctGa, 1.57, 1.57 );
setEffScaleKey( spep_0-4 + 148, ctGa, 1.61, 1.61 );
setEffScaleKey( spep_0-4 + 150, ctGa, 1.63, 1.63 );
setEffScaleKey( spep_0-4 + 152, ctGa, 1.64, 1.64 );
setEffScaleKey( spep_0-4 + 154, ctGa, 1.73, 1.73 );
setEffScaleKey( spep_0-4 + 156, ctGa, 1.76, 1.76 );

setEffRotateKey( spep_0-4 + 140, ctGa, 3 );
setEffRotateKey( spep_0-4 + 156, ctGa, 3 );

setEffAlphaKey( spep_0-4 + 140, ctGa, 255 );
setEffAlphaKey( spep_0-4 + 152, ctGa, 255 );
setEffAlphaKey( spep_0-4 + 154, ctGa, 64 );
setEffAlphaKey( spep_0-4 + 156, ctGa, 0 );

--書き文字　ドガガ
ctDogaga = entryEffectLife( spep_0-2 + 166,  10017, 138, 0x100, -1, 0, -18.3, 344 );
setEffMoveKey( spep_0-2 + 166, ctDogaga, -18.3, 344 , 0 );
setEffMoveKey( spep_0-2 + 168, ctDogaga, -8.5, 360.4 , 0 );
setEffMoveKey( spep_0-2 + 170, ctDogaga, 21.3, 373 , 0 );
setEffMoveKey( spep_0-2 + 172, ctDogaga, 24.8, 384.1 , 0 );
setEffMoveKey( spep_0-2 + 174, ctDogaga, 19.5, 388 , 0 );
setEffMoveKey( spep_0-2 + 176, ctDogaga, 37.4, 386.7 , 0 );
setEffMoveKey( spep_0-2 + 178, ctDogaga, 18.7, 385.3 , 0 );
setEffMoveKey( spep_0-2 + 180, ctDogaga, 29.3, 376.6 , 0 );
setEffMoveKey( spep_0-2 + 182, ctDogaga, 14.6, 387.1 , 0 );
setEffMoveKey( spep_0-2 + 184, ctDogaga, 33, 372.5 , 0 );
setEffMoveKey( spep_0-2 + 186, ctDogaga, 19.2, 387.7 , 0 );
setEffMoveKey( spep_0-2 + 188, ctDogaga, 33.8, 382.8 , 0 );
setEffMoveKey( spep_0-2 + 190, ctDogaga, 22.9, 391.1 , 0 );
setEffMoveKey( spep_0-2 + 192, ctDogaga, 32.3, 378.6 , 0 );
setEffMoveKey( spep_0-2 + 194, ctDogaga, 31.4, 391.7 , 0 );
setEffMoveKey( spep_0-2 + 196, ctDogaga, 26.8, 377.6 , 0 );
setEffMoveKey( spep_0-2 + 198, ctDogaga, 30.8, 393.2 , 0 );
setEffMoveKey( spep_0-2 + 200, ctDogaga, 19.4, 376.7 , 0 );
setEffMoveKey( spep_0-2 + 202, ctDogaga, 38.7, 387.5 , 0 );
setEffMoveKey( spep_0-2 + 204, ctDogaga, 22.4, 382 , 0 );
setEffMoveKey( spep_0-2 + 206, ctDogaga, 38, 387.6 , 0 );
setEffMoveKey( spep_0-2 + 208, ctDogaga, 27.3, 375.1 , 0 );
setEffMoveKey( spep_0-2 + 210, ctDogaga, 38.6, 387.7 , 0 );
setEffMoveKey( spep_0-2 + 212, ctDogaga, 20.8, 383.9 , 0 );
setEffMoveKey( spep_0-2 + 214, ctDogaga, 36.9, 389.1 , 0 );
setEffMoveKey( spep_0-2 + 216, ctDogaga, 28.3, 375.7 , 0 );
setEffMoveKey( spep_0-2 + 218, ctDogaga, 36, 393.2 , 0 );
setEffMoveKey( spep_0-2 + 220, ctDogaga, 24.2, 375 , 0 );
setEffMoveKey( spep_0-2 + 222, ctDogaga, 42.7, 386.3 , 0 );
setEffMoveKey( spep_0-2 + 224, ctDogaga, 21.1, 384.2 , 0 );
setEffMoveKey( spep_0-2 + 226, ctDogaga, 42.2, 382.1 , 0 );
setEffMoveKey( spep_0-2 + 228, ctDogaga, 25.8, 388.1 , 0 );
setEffMoveKey( spep_0-2 + 230, ctDogaga, 36.2, 377.2 , 0 );
setEffMoveKey( spep_0-2 + 232, ctDogaga, 33.9, 386 , 0 );
setEffMoveKey( spep_0-2 + 234, ctDogaga, 28.4, 389.9 , 0 );
setEffMoveKey( spep_0-2 + 236, ctDogaga, 46.9, 388.6 , 0 );
setEffMoveKey( spep_0-2 + 238, ctDogaga, 27.6, 387.2 , 0 );
setEffMoveKey( spep_0-2 + 240, ctDogaga, 38.5, 378.2 , 0 );
setEffMoveKey( spep_0-2 + 242, ctDogaga, 23.4, 389.1 , 0 );
setEffMoveKey( spep_0-2 + 244, ctDogaga, 42.3, 374 , 0 );
setEffMoveKey( spep_0-2 + 246, ctDogaga, 28.1, 389.6 , 0 );
setEffMoveKey( spep_0-2 + 248, ctDogaga, 43.1, 384.6 , 0 );
setEffMoveKey( spep_0-2 + 250, ctDogaga, 31.9, 393.1 , 0 );
setEffMoveKey( spep_0-2 + 252, ctDogaga, 41.5, 380.3 , 0 );
setEffMoveKey( spep_0-2 + 254, ctDogaga, 40.6, 393.8 , 0 );
setEffMoveKey( spep_0-2 + 256, ctDogaga, 35.9, 379.3 , 0 );
setEffMoveKey( spep_0-2 + 258, ctDogaga, 40, 395.3 , 0 );
setEffMoveKey( spep_0-2 + 260, ctDogaga, 28.3, 378.4 , 0 );
setEffMoveKey( spep_0-2 + 262, ctDogaga, 48.1, 389.4 , 0 );
setEffMoveKey( spep_0-2 + 264, ctDogaga, 31.3, 383.8 , 0 );
setEffMoveKey( spep_0-2 + 266, ctDogaga, 47.3, 389.5 , 0 );
setEffMoveKey( spep_0-2 + 268, ctDogaga, 36.3, 376.7 , 0 );
setEffMoveKey( spep_0-2 + 270, ctDogaga, 47.9, 389.6 , 0 );
setEffMoveKey( spep_0-2 + 272, ctDogaga, 29.6, 385.7 , 0 );
setEffMoveKey( spep_0-2 + 274, ctDogaga, 46.2, 391.1 , 0 );
setEffMoveKey( spep_0-2 + 276, ctDogaga, 37.3, 377.3 , 0 );
setEffMoveKey( spep_0-2 + 278, ctDogaga, 45.3, 395.3 , 0 );
setEffMoveKey( spep_0-2 + 280, ctDogaga, 33.1, 376.5 , 0 );
setEffMoveKey( spep_0-2 + 282, ctDogaga, 52.1, 388.2 , 0 );
setEffMoveKey( spep_0-2 + 284, ctDogaga, 30, 386 , 0 );
setEffMoveKey( spep_0-2 + 286, ctDogaga, 51.6, 383.9 , 0 );
setEffMoveKey( spep_0-2 + 288, ctDogaga, 34.7, 390 , 0 );
setEffMoveKey( spep_0-2 + 290, ctDogaga, 45.4, 378.8 , 0 );
setEffMoveKey( spep_0-2 + 292, ctDogaga, 43, 387.8 , 0 );
setEffMoveKey( spep_0-2 + 294, ctDogaga, 37.4, 391.9 , 0 );
setEffMoveKey( spep_0-2 + 296, ctDogaga, 56.4, 390.5 , 0 );
setEffMoveKey( spep_0-2 + 298, ctDogaga, 36.6, 389.1 , 0 );
setEffMoveKey( spep_0-2 + 300, ctDogaga, 47.7, 379.8 , 0 );
setEffMoveKey( spep_0-2 + 302, ctDogaga, 49, 396.1 , 0 );
setEffMoveKey( spep_0-2 + 304, ctDogaga, 54.5, 429.5 , 0 );

setEffScaleKey( spep_0-2 + 166, ctDogaga, 1.92, 1.92 );
setEffScaleKey( spep_0-2 + 168, ctDogaga, 2.18, 2.18 );
setEffScaleKey( spep_0-2 + 170, ctDogaga, 2.44, 2.44 );
setEffScaleKey( spep_0-2 + 172, ctDogaga, 2.71, 2.71 );
setEffScaleKey( spep_0-2 + 176, ctDogaga, 2.71, 2.71 );
setEffScaleKey( spep_0-2 + 178, ctDogaga, 2.72, 2.72 );
setEffScaleKey( spep_0-2 + 184, ctDogaga, 2.72, 2.72 );
setEffScaleKey( spep_0-2 + 186, ctDogaga, 2.73, 2.73 );
setEffScaleKey( spep_0-2 + 192, ctDogaga, 2.73, 2.73 );
setEffScaleKey( spep_0-2 + 194, ctDogaga, 2.74, 2.74 );
setEffScaleKey( spep_0-2 + 200, ctDogaga, 2.74, 2.74 );
setEffScaleKey( spep_0-2 + 202, ctDogaga, 2.75, 2.75 );
setEffScaleKey( spep_0-2 + 208, ctDogaga, 2.75, 2.75 );
setEffScaleKey( spep_0-2 + 210, ctDogaga, 2.76, 2.76 );
setEffScaleKey( spep_0-2 + 216, ctDogaga, 2.76, 2.76 );
setEffScaleKey( spep_0-2 + 218, ctDogaga, 2.77, 2.77 );
setEffScaleKey( spep_0-2 + 224, ctDogaga, 2.77, 2.77 );
setEffScaleKey( spep_0-2 + 226, ctDogaga, 2.78, 2.78 );
setEffScaleKey( spep_0-2 + 232, ctDogaga, 2.78, 2.78 );
setEffScaleKey( spep_0-2 + 234, ctDogaga, 2.79, 2.79 );
setEffScaleKey( spep_0-2 + 240, ctDogaga, 2.79, 2.79 );
setEffScaleKey( spep_0-2 + 242, ctDogaga, 2.8, 2.8 );
setEffScaleKey( spep_0-2 + 248, ctDogaga, 2.8, 2.8 );
setEffScaleKey( spep_0-2 + 250, ctDogaga, 2.81, 2.81 );
setEffScaleKey( spep_0-2 + 256, ctDogaga, 2.81, 2.81 );
setEffScaleKey( spep_0-2 + 258, ctDogaga, 2.82, 2.82 );
setEffScaleKey( spep_0-2 + 264, ctDogaga, 2.82, 2.82 );
setEffScaleKey( spep_0-2 + 266, ctDogaga, 2.83, 2.83 );
setEffScaleKey( spep_0-2 + 272, ctDogaga, 2.83, 2.83 );
setEffScaleKey( spep_0-2 + 274, ctDogaga, 2.84, 2.84 );
setEffScaleKey( spep_0-2 + 280, ctDogaga, 2.84, 2.84 );
setEffScaleKey( spep_0-2 + 282, ctDogaga, 2.85, 2.85 );
setEffScaleKey( spep_0-2 + 288, ctDogaga, 2.85, 2.85 );
setEffScaleKey( spep_0-2 + 290, ctDogaga, 2.86, 2.86 );
setEffScaleKey( spep_0-2 + 296, ctDogaga, 2.86, 2.86 );
setEffScaleKey( spep_0-2 + 298, ctDogaga, 2.87, 2.87 );
setEffScaleKey( spep_0-2 + 302, ctDogaga, 2.87, 2.87 );
setEffScaleKey( spep_0-2 + 304, ctDogaga, 3.04, 3.04 );

setEffRotateKey( spep_0-2 + 166, ctDogaga, 10.5 );
setEffRotateKey( spep_0-2 + 304, ctDogaga, 10.5 );

setEffAlphaKey( spep_0-2 + 166, ctDogaga, 255 );
setEffAlphaKey( spep_0-2 + 302, ctDogaga, 255 );
setEffAlphaKey( spep_0-2 + 304, ctDogaga, 0 );

--書き文字　バキッ　10020
ctBaki = entryEffectLife( spep_0 + 412,  10020, 18, 0x100, -1, 0, 200.5, 322.8 );
setEffMoveKey( spep_0 + 412, ctBaki, 200.5, 322.8 , 0 );
setEffMoveKey( spep_0 + 414, ctBaki, 198.9, 337.3 , 0 );
setEffMoveKey( spep_0 + 416, ctBaki, 201, 337 , 0 );
setEffMoveKey( spep_0 + 418, ctBaki, 199.2, 348.8 , 0 );
setEffMoveKey( spep_0 + 420, ctBaki, 201.4, 342 , 0 );
setEffMoveKey( spep_0 + 422, ctBaki, 197.1, 361.1 , 0 );
setEffMoveKey( spep_0 + 424, ctBaki, 208.6, 357.5 , 0 );
setEffMoveKey( spep_0 + 426, ctBaki, 201.7, 358.4 , 0 );
setEffMoveKey( spep_0 + 428, ctBaki, 212.5, 367.8 , 0 );
setEffMoveKey( spep_0 + 430, ctBaki, 216.9, 369.4 , 0 );

setEffScaleKey( spep_0 + 412, ctBaki, 1.58, 1.58 );
setEffScaleKey( spep_0 + 414, ctBaki, 1.67, 1.67 );
setEffScaleKey( spep_0 + 416, ctBaki, 1.7, 1.7 );
setEffScaleKey( spep_0 + 418, ctBaki, 1.77, 1.77 );
setEffScaleKey( spep_0 + 420, ctBaki, 1.82, 1.82 );
setEffScaleKey( spep_0 + 422, ctBaki, 1.86, 1.86 );
setEffScaleKey( spep_0 + 424, ctBaki, 1.88, 1.88 );
setEffScaleKey( spep_0 + 426, ctBaki, 1.89, 1.89 );
setEffScaleKey( spep_0 + 428, ctBaki, 2.14, 2.14 );
setEffScaleKey( spep_0 + 430, ctBaki, 2.22, 2.22 );

setEffRotateKey( spep_0 + 412, ctBaki, 35.2 );

setEffAlphaKey( spep_0 + 412, ctBaki, 255 );
setEffAlphaKey( spep_0 + 426, ctBaki, 255 );
setEffAlphaKey( spep_0 + 428, ctBaki, 64 );
setEffAlphaKey( spep_0 + 430, ctBaki, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 308, 1, 0 );
setDisp( spep_0 + 402, 1, 1 );
setDisp( spep_0 + 444, 1, 0 );

changeAnime( spep_0 + 0, 1, 104 );
changeAnime( spep_0-2 + 180, 1, 112 );
changeAnime( spep_0-2 + 186, 1, 104 );
changeAnime( spep_0-2 + 202, 1, 109 );
changeAnime( spep_0-2 + 210, 1, 104 );
changeAnime( spep_0-2 + 226, 1, 106 );
changeAnime( spep_0-2 + 242, 1, 108 );
changeAnime( spep_0-2 + 258, 1, 106 );
changeAnime( spep_0-2 + 266, 1, 108 );
changeAnime( spep_0-2 + 274, 1, 106 );
changeAnime( spep_0-2 + 282, 1, 108 );
changeAnime( spep_0-2 + 290, 1, 106 );
changeAnime( spep_0-2 + 298, 1, 108 );
changeAnime( spep_0-2 + 304, 1, 106 );
changeAnime( spep_0 + 406-4, 1, 106 );

setMoveKey( spep_0 + 0, 1, 2522.5, 5.9 , 0 );
setMoveKey( spep_0-2 + 82, 1, 2522.5, 5.9 , 0 );
setMoveKey( spep_0-2 + 84, 1, 2349.5, -7.6 , 0 );
setMoveKey( spep_0-2 + 86, 1, 2246.5, 19.1 , 0 );
setMoveKey( spep_0-2 + 88, 1, 2158, -6.7 , 0 );
setMoveKey( spep_0-2 + 90, 1, 2063, 20.1 , 0 );
setMoveKey( spep_0-2 + 92, 1, 1972.6, -5.2 , 0 );
setMoveKey( spep_0-2 + 94, 1, 1884.3, 17.4 , 0 );
setMoveKey( spep_0-2 + 96, 1, 1815.5, -5.9 , 0 );
setMoveKey( spep_0-2 + 98, 1, 1732, 16.9 , 0 );
setMoveKey( spep_0-2 + 100, 1, 1637, -0.6 , 0 );
setMoveKey( spep_0-2 + 102, 1, 1580.5, 13.8 , 0 );
setMoveKey( spep_0-2 + 104, 1, 1490.2, 7.1 , 0 );
setMoveKey( spep_0-2 + 106, 1, 1439.9, 4.6 , 0 );
setMoveKey( spep_0-2 + 108, 1, 1352.7, 11.3 , 0 );
setMoveKey( spep_0-2 + 110, 1, 1298, 6.4 , 0 );
setMoveKey( spep_0-2 + 112, 1, 1216.6, 10.9 , 0 );
setMoveKey( spep_0-2 + 114, 1, 1159.6, -2.1 , 0 );
setMoveKey( spep_0-2 + 116, 1, 1089.6, 16.9 , 0 );
setMoveKey( spep_0-2 + 118, 1, 1018.4, -1.1 , 0 );
setMoveKey( spep_0-2 + 120, 1, 937.7, 9.8 , 0 );
setMoveKey( spep_0-2 + 122, 1, 863.6, -2.1 , 0 );
setMoveKey( spep_0-2 + 124, 1, 781.7, 12.7 , 0 );
setMoveKey( spep_0-2 + 126, 1, 703.5, -1.5 , 0 );
setMoveKey( spep_0-2 + 128, 1, 620.4, 12.2 , 0 );
setMoveKey( spep_0-2 + 130, 1, 535.2, 1.9 , 0 );
setMoveKey( spep_0-2 + 132, 1, 462, 6.4 , 0 );
setMoveKey( spep_0-2 + 134, 1, 368.8, 1.6 , 0 );
setMoveKey( spep_0-2 + 136, 1, 288.9, 12.7 , 0 );
setMoveKey( spep_0-2 + 138, 1, 208.2, 1.5 , 0 );
setMoveKey( spep_0-2 + 140, 1, 135.9, 5.9 , 0 );
setMoveKey( spep_0-2 + 142, 1, 79.4, 20 , 0 );
setMoveKey( spep_0-2 + 144, 1, 97.6, 24.7 , 0 );
setMoveKey( spep_0-2 + 146, 1, 154.3, 21.1 , 0 );
setMoveKey( spep_0-2 + 148, 1, 154.2, 43.7 , 0 );
setMoveKey( spep_0-2 + 150, 1, 178.6, 31.7 , 0 );
setMoveKey( spep_0-2 + 152, 1, 168.4, 45.8 , 0 );
setMoveKey( spep_0-2 + 154, 1, 196, 40.5 , 0 );
setMoveKey( spep_0-2 + 156, 1, 179.6, 46.2 , 0 );
setMoveKey( spep_0-2 + 158, 1, 166.2, 39.3 , 0 );
setMoveKey( spep_0-2 + 160, 1, 135.9, 29.6 , 0 );
setMoveKey( spep_0-2 + 162, 1, 80.9, 33.6 , 0 );
setMoveKey( spep_0-2 + 164, 1, 39.3, 25.8 , 0 );
setMoveKey( spep_0-2 + 166, 1, -1.7, 22.2 , 0 );
setMoveKey( spep_0-2 + 168, 1, 65.3, 22.6 , 0 );
setMoveKey( spep_0-2 + 170, 1, 72.1, 36 , 0 );
setMoveKey( spep_0-2 + 172, 1, 61.1, 25.8 , 0 );
setMoveKey( spep_0-2 + 174, 1, 79.2, 33.9 , 0 );
setMoveKey( spep_0-2 + 176, 1, 72.6, 19.8 , 0 );
setMoveKey( spep_0-2 + 179, 1, 76.8, 13.4 , 0 );
setMoveKey( spep_0-2 + 180, 1, 73.6, 9.1 , 0 );
setMoveKey( spep_0-2 + 182, 1, 78.5, 7.8 , 0 );
setMoveKey( spep_0-2 + 185, 1, 57.3, -0.6 , 0 );
setMoveKey( spep_0-2 + 186, 1, 92.3, -0.5 , 0 );
setMoveKey( spep_0-2 + 188, 1, 77.1, -1.2 , 0 );
setMoveKey( spep_0-2 + 190, 1, 76.8, -14.3 , 0 );
setMoveKey( spep_0-2 + 192, 1, 73.2, -4.3 , 0 );
setMoveKey( spep_0-2 + 194, 1, 110.1, -11.9 , 0 );
setMoveKey( spep_0-2 + 196, 1, 104.1, -1.6 , 0 );
setMoveKey( spep_0-2 + 198, 1, 116.4, -11.9 , 0 );
setMoveKey( spep_0-2 + 201, 1, 113.1, 5.6 , 0 );
setMoveKey( spep_0-2 + 202, 1, 163.6, -6 , 0 );
setMoveKey( spep_0-2 + 204, 1, 153.9, 6.2 , 0 );
setMoveKey( spep_0-2 + 206, 1, 166.4, 1.2 , 0 );
setMoveKey( spep_0-2 + 209, 1, 150.4, 7.3 , 0 );
setMoveKey( spep_0-2 + 210, 1, 139.3, 2.8 , 0 );
setMoveKey( spep_0-2 + 212, 1, 139.2, 4.8 , 0 );
setMoveKey( spep_0-2 + 214, 1, 139.6, 14.4 , 0 );
setMoveKey( spep_0-2 + 216, 1, 148.6, 25.9 , 0 );
setMoveKey( spep_0-2 + 218, 1, 137.3, 22.3 , 0 );
setMoveKey( spep_0-2 + 220, 1, 140.4, 32.6 , 0 );
setMoveKey( spep_0-2 + 222, 1, 159, 31.1 , 0 );
setMoveKey( spep_0-2 + 225, 1, 151.9, 39.3 , 0 );
setMoveKey( spep_0-2 + 226, 1, 80.1, 60.3 , 0 );
setMoveKey( spep_0-2 + 228, 1, 80.4, 58.5 , 0 );
setMoveKey( spep_0-2 + 230, 1, 77.3, 52.9 , 0 );
setMoveKey( spep_0-2 + 232, 1, 79.4, 56 , 0 );
setMoveKey( spep_0-2 + 234, 1, 68.1, 56.5 , 0 );
setMoveKey( spep_0-2 + 236, 1, 71.5, 43.9 , 0 );
setMoveKey( spep_0-2 + 238, 1, 73.8, 49.2 , 0 );
setMoveKey( spep_0-2 + 241, 1, 82.2, 42.8 , 0 );
setMoveKey( spep_0-2 + 242, 1, 91.5, 197 , 0 );
setMoveKey( spep_0-2 + 244, 1, 98.3, 185.3 , 0 );
setMoveKey( spep_0-2 + 246, 1, 93.2, 221.1 , 0 );
setMoveKey( spep_0-2 + 248, 1, 81, 205 , 0 );
setMoveKey( spep_0-2 + 250, 1, 89.3, 197.3 , 0 );
setMoveKey( spep_0-2 + 252, 1, 88.5, 138.8 , 0 );
setMoveKey( spep_0-2 + 254, 1, 107.6, 121.9 , 0 );
setMoveKey( spep_0-2 + 257, 1, 130.2, 91.3 , 0 );
setMoveKey( spep_0-2 + 258, 1, 129.4, 59.1 , 0 );
setMoveKey( spep_0-2 + 260, 1, 118.3, 61.8 , 0 );
setMoveKey( spep_0-2 + 262, 1, 122.2, 65.8 , 0 );
setMoveKey( spep_0-2 + 265, 1, 125.7, 78.1 , 0 );
setMoveKey( spep_0-2 + 266, 1, 85.8, 78.1 , 0 );
setMoveKey( spep_0-2 + 268, 1, 85.1, 102.1 , 0 );
setMoveKey( spep_0-2 + 270, 1, 64.3, 92.1 , 0 );
setMoveKey( spep_0-2 + 273, 1, 73.2, 112.3 , 0 );
setMoveKey( spep_0-2 + 274, 1, 34.7, 11.9 , 0 );
setMoveKey( spep_0-2 + 276, 1, 24.9, -2.7 , 0 );
setMoveKey( spep_0-2 + 278, 1, 15.3, -12.7 , 0 );
setMoveKey( spep_0-2 + 281, 1, 29.4, -28.5 , 0 );
setMoveKey( spep_0-2 + 282, 1, 25.4, 36.1 , 0 );
setMoveKey( spep_0-2 + 284, 1, 53.9, 53.9 , 0 );
setMoveKey( spep_0-2 + 286, 1, 70.6, 59.8 , 0 );
setMoveKey( spep_0-2 + 289, 1, 101, 62.2 , 0 );
setMoveKey( spep_0-2 + 290, 1, 103.9, 45.9 , 0 );
setMoveKey( spep_0-2 + 292, 1, 121.6, 49.4 , 0 );
setMoveKey( spep_0-2 + 294, 1, 138.9, 58.6 , 0 );
setMoveKey( spep_0-2 + 297, 1, 152.6, 52.5 , 0 );
setMoveKey( spep_0-2 + 298, 1, 131, 72.1 , 0 );
setMoveKey( spep_0-2 + 300, 1, 111.5, 62.3 , 0 );
setMoveKey( spep_0-2 + 303, 1, 85.2, 25.7 , 0 );
setMoveKey( spep_0-2 + 304, 1, 148.5, 91.8 , 0 );
setMoveKey( spep_0-2 + 307, 1, 65.4, 73.8 , 0 );
setMoveKey( spep_0 + 0, 1, 2522.5, 5.9 , 0 );
setMoveKey( spep_0-3 + 82, 1, 2522.5, 5.9 , 0 );
setMoveKey( spep_0-3 + 84, 1, 2349.5, -7.6 , 0 );
setMoveKey( spep_0-3 + 86, 1, 2246.5, 19.1 , 0 );
setMoveKey( spep_0-3 + 88, 1, 2158, -6.7 , 0 );
setMoveKey( spep_0-3 + 90, 1, 2063, 20.1 , 0 );
setMoveKey( spep_0-3 + 92, 1, 1972.6, -5.2 , 0 );
setMoveKey( spep_0-3 + 94, 1, 1884.3, 17.4 , 0 );
setMoveKey( spep_0-3 + 96, 1, 1815.5, -5.9 , 0 );
setMoveKey( spep_0-3 + 98, 1, 1732, 16.9 , 0 );
setMoveKey( spep_0-3 + 100, 1, 1637, -0.6 , 0 );
setMoveKey( spep_0-3 + 102, 1, 1580.5, 13.8 , 0 );
setMoveKey( spep_0-3 + 104, 1, 1490.2, 7.1 , 0 );
setMoveKey( spep_0-3 + 106, 1, 1439.9, 4.6 , 0 );
setMoveKey( spep_0-3 + 108, 1, 1352.7, 11.3 , 0 );
setMoveKey( spep_0-3 + 110, 1, 1298, 6.4 , 0 );
setMoveKey( spep_0-3 + 112, 1, 1216.6, 10.9 , 0 );
setMoveKey( spep_0-3 + 114, 1, 1159.6, -2.1 , 0 );
setMoveKey( spep_0-3 + 116, 1, 1089.6, 16.9 , 0 );
setMoveKey( spep_0-3 + 118, 1, 1018.4, -1.1 , 0 );
setMoveKey( spep_0-3 + 120, 1, 937.7, 9.8 , 0 );
setMoveKey( spep_0-3 + 122, 1, 863.6, -2.1 , 0 );
setMoveKey( spep_0-3 + 124, 1, 781.7, 12.7 , 0 );
setMoveKey( spep_0-3 + 126, 1, 703.5, -1.5 , 0 );
setMoveKey( spep_0-3 + 128, 1, 620.4, 12.2 , 0 );
setMoveKey( spep_0-3 + 130, 1, 535.2, 1.9 , 0 );
setMoveKey( spep_0-3 + 132, 1, 462, 6.4 , 0 );
setMoveKey( spep_0-3 + 134, 1, 368.8, 1.6 , 0 );
setMoveKey( spep_0-3 + 136, 1, 288.9, 12.7 , 0 );
setMoveKey( spep_0-3 + 138, 1, 208.2, 1.5 , 0 );
setMoveKey( spep_0-3 + 140, 1, 135.9, 5.9 , 0 );
setMoveKey( spep_0-3 + 142, 1, 79.4, 20 , 0 );
setMoveKey( spep_0-3 + 144, 1, 97.6, 24.7 , 0 );
setMoveKey( spep_0-3 + 146, 1, 154.3, 21.1 , 0 );
setMoveKey( spep_0-3 + 148, 1, 154.2, 43.7 , 0 );
setMoveKey( spep_0-3 + 150, 1, 178.6, 31.7 , 0 );
setMoveKey( spep_0-3 + 152, 1, 168.4, 45.8 , 0 );
setMoveKey( spep_0-3 + 154, 1, 196, 40.5 , 0 );
setMoveKey( spep_0-3 + 156, 1, 179.6, 46.2 , 0 );
setMoveKey( spep_0-3 + 158, 1, 166.2, 39.3 , 0 );
setMoveKey( spep_0-3 + 160, 1, 135.9, 29.6 , 0 );
setMoveKey( spep_0-3 + 162, 1, 80.9, 33.6 , 0 );
setMoveKey( spep_0-3 + 164, 1, 39.3, 25.8 , 0 );
setMoveKey( spep_0-3 + 166, 1, -1.7, 22.2 , 0 );
setMoveKey( spep_0-3 + 168, 1, 65.3, 22.6 , 0 );
setMoveKey( spep_0-3 + 170, 1, 72.1, 36 , 0 );
setMoveKey( spep_0-3 + 172, 1, 61.1, 25.8 , 0 );
setMoveKey( spep_0-3 + 174, 1, 79.2, 33.9 , 0 );
setMoveKey( spep_0-3 + 176, 1, 72.6, 19.8 , 0 );
setMoveKey( spep_0-3 + 179, 1, 76.8, 13.4 , 0 );
setMoveKey( spep_0-3 + 180, 1, 73.6, 9.1 , 0 );
setMoveKey( spep_0-3 + 182, 1, 78.5, 7.8 , 0 );
setMoveKey( spep_0-3 + 185, 1, 57.3, -0.6 , 0 );
setMoveKey( spep_0-3 + 186, 1, 92.3, -0.5 , 0 );
setMoveKey( spep_0-3 + 188, 1, 77.1, -1.2 , 0 );
setMoveKey( spep_0-3 + 190, 1, 76.8, -14.3 , 0 );
setMoveKey( spep_0-3 + 192, 1, 73.2, -4.3 , 0 );
setMoveKey( spep_0-3 + 194, 1, 110.1, -11.9 , 0 );
setMoveKey( spep_0-3 + 196, 1, 104.1, -1.6 , 0 );
setMoveKey( spep_0-3 + 198, 1, 116.4, -11.9 , 0 );
setMoveKey( spep_0-3 + 201, 1, 113.1, 5.6 , 0 );
setMoveKey( spep_0-3 + 202, 1, 163.6, -6 , 0 );
setMoveKey( spep_0-3 + 204, 1, 153.9, 6.2 , 0 );
setMoveKey( spep_0-3 + 206, 1, 166.4, 1.2 , 0 );
setMoveKey( spep_0-3 + 209, 1, 150.4, 7.3 , 0 );
setMoveKey( spep_0-3 + 210, 1, 139.3, 2.8 , 0 );
setMoveKey( spep_0-3 + 212, 1, 139.2, 4.8 , 0 );
setMoveKey( spep_0-3 + 214, 1, 139.6, 14.4 , 0 );
setMoveKey( spep_0-3 + 216, 1, 148.6, 25.9 , 0 );
setMoveKey( spep_0-3 + 218, 1, 137.3, 22.3 , 0 );
setMoveKey( spep_0-3 + 220, 1, 140.4, 32.6 , 0 );
setMoveKey( spep_0-3 + 222, 1, 159, 31.1 , 0 );
setMoveKey( spep_0-3 + 225, 1, 151.9, 39.3 , 0 );
setMoveKey( spep_0-3 + 226, 1, 80.1, 60.3 , 0 );
setMoveKey( spep_0-3 + 228, 1, 80.4, 58.5 , 0 );
setMoveKey( spep_0-3 + 230, 1, 77.3, 52.9 , 0 );
setMoveKey( spep_0-3 + 232, 1, 79.4, 56 , 0 );
setMoveKey( spep_0-3 + 234, 1, 68.1, 56.5 , 0 );
setMoveKey( spep_0-3 + 236, 1, 71.5, 43.9 , 0 );
setMoveKey( spep_0-3 + 238, 1, 73.8, 49.2 , 0 );
setMoveKey( spep_0-3 + 241, 1, 82.2, 42.8 , 0 );
setMoveKey( spep_0-3 + 242, 1, 91.5, 197 , 0 );
setMoveKey( spep_0-3 + 244, 1, 98.3, 185.3 , 0 );
setMoveKey( spep_0-3 + 246, 1, 93.2, 221.1 , 0 );
setMoveKey( spep_0-3 + 248, 1, 81, 205 , 0 );
setMoveKey( spep_0-3 + 250, 1, 89.3, 197.3 , 0 );
setMoveKey( spep_0-3 + 252, 1, 88.5, 138.8 , 0 );
setMoveKey( spep_0-3 + 254, 1, 107.6, 121.9 , 0 );
setMoveKey( spep_0-3 + 257, 1, 130.2, 91.3 , 0 );
setMoveKey( spep_0-3 + 258, 1, 129.4, 59.1 , 0 );
setMoveKey( spep_0-3 + 260, 1, 118.3, 61.8 , 0 );
setMoveKey( spep_0-3 + 262, 1, 122.2, 65.8 , 0 );
setMoveKey( spep_0-3 + 265, 1, 125.7, 78.1 , 0 );
setMoveKey( spep_0-3 + 266, 1, 85.8, 78.1 , 0 );
setMoveKey( spep_0-3 + 268, 1, 85.1, 102.1 , 0 );
setMoveKey( spep_0-3 + 270, 1, 64.3, 92.1 , 0 );
setMoveKey( spep_0-3 + 273, 1, 73.2, 112.3 , 0 );
setMoveKey( spep_0-3 + 274, 1, 34.7, 11.9 , 0 );
setMoveKey( spep_0-3 + 276, 1, 24.9, -2.7 , 0 );
setMoveKey( spep_0-3 + 278, 1, 15.3, -12.7 , 0 );
setMoveKey( spep_0-3 + 281, 1, 29.4, -28.5 , 0 );
setMoveKey( spep_0-3 + 282, 1, 25.4, 36.1 , 0 );
setMoveKey( spep_0-3 + 284, 1, 53.9, 53.9 , 0 );
setMoveKey( spep_0-3 + 286, 1, 70.6, 59.8 , 0 );
setMoveKey( spep_0-3 + 289, 1, 101, 62.2 , 0 );
setMoveKey( spep_0-3 + 290, 1, 103.9, 45.9 , 0 );
setMoveKey( spep_0-3 + 292, 1, 121.6, 49.4 , 0 );
setMoveKey( spep_0-3 + 294, 1, 138.9, 58.6 , 0 );
setMoveKey( spep_0-3 + 297, 1, 152.6, 52.5 , 0 );
setMoveKey( spep_0-3 + 298, 1, 131, 72.1 , 0 );
setMoveKey( spep_0-3 + 300, 1, 111.5, 62.3 , 0 );
setMoveKey( spep_0-3 + 303, 1, 85.2, 25.7 , 0 );
setMoveKey( spep_0-3 + 304, 1, 148.5, 91.8 , 0 );
setMoveKey( spep_0-3 + 307, 1, 65.4, 73.8 , 0 );

setScaleKey( spep_0-2 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 140, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 142, 1, 1.49, 1.49 );
setScaleKey( spep_0-2 + 144, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 146, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 148, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 150, 1, 1.46, 1.46 );
setScaleKey( spep_0-2 + 152, 1, 1.44, 1.44 );
setScaleKey( spep_0-2 + 154, 1, 1.43, 1.43 );
setScaleKey( spep_0-2 + 156, 1, 1.43, 1.43 );
setScaleKey( spep_0-2 + 158, 1, 1.42, 1.42 );
setScaleKey( spep_0-2 + 160, 1, 1.42, 1.42 );
setScaleKey( spep_0-2 + 162, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 164, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 166, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 168, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 170, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 172, 1, 1.35, 1.35 );
setScaleKey( spep_0-2 + 174, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 176, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 179, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 180, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 182, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 185, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 186, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 188, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 190, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 192, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 194, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 196, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 198, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 201, 1, 1.35, 1.35 );
setScaleKey( spep_0-2 + 202, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 204, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 206, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 209, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 210, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 212, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 214, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 216, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 218, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 220, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 222, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 225, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 226, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 228, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 230, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 232, 1, 1.35, 1.35 );
setScaleKey( spep_0-2 + 234, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 236, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 238, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 241, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 242, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 244, 1, 1.35, 1.35 );
setScaleKey( spep_0-2 + 246, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 248, 1, 1.36, 1.36 );
setScaleKey( spep_0-2 + 250, 1, 1.49, 1.49 );
setScaleKey( spep_0-2 + 252, 1, 1.43, 1.43 );
setScaleKey( spep_0-2 + 254, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 257, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 258, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 260, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 262, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 265, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 266, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 268, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 270, 1, 1.35, 1.35 );
setScaleKey( spep_0-2 + 273, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 274, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 276, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 278, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 281, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 282, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 284, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 286, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 289, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 290, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 292, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 294, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 297, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 298, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 300, 1, 1.35, 1.35 );
setScaleKey( spep_0-2 + 303, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 304, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 307, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 140, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 142, 1, 1.49, 1.49 );
setScaleKey( spep_0-3 + 144, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 146, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 148, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 150, 1, 1.46, 1.46 );
setScaleKey( spep_0-3 + 152, 1, 1.44, 1.44 );
setScaleKey( spep_0-3 + 154, 1, 1.43, 1.43 );
setScaleKey( spep_0-3 + 156, 1, 1.43, 1.43 );
setScaleKey( spep_0-3 + 158, 1, 1.42, 1.42 );
setScaleKey( spep_0-3 + 160, 1, 1.42, 1.42 );
setScaleKey( spep_0-3 + 162, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 164, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 166, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 168, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 170, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 172, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 174, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 176, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 179, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 180, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 182, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 185, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 186, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 188, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 190, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 192, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 194, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 196, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 198, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 201, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 202, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 204, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 206, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 209, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 210, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 212, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 214, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 216, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 218, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 220, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 222, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 225, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 226, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 228, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 230, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 232, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 234, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 236, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 238, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 241, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 242, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 244, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 246, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 248, 1, 1.36, 1.36 );
setScaleKey( spep_0-3 + 250, 1, 1.49, 1.49 );
setScaleKey( spep_0-3 + 252, 1, 1.43, 1.43 );
setScaleKey( spep_0-3 + 254, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 257, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 258, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 260, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 262, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 265, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 266, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 268, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 270, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 273, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 274, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 276, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 278, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 281, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 282, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 284, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 286, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 289, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 290, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 292, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 294, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 297, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 298, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 300, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 303, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 304, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 307, 1, 1.38, 1.38 );

setRotateKey( spep_0-2 + 0, 1, 0 );
setRotateKey( spep_0-2 + 140, 1, 0 );
setRotateKey( spep_0-2 + 142, 1, -9.9 );
setRotateKey( spep_0-2 + 144, 1, -6.8 );
setRotateKey( spep_0-2 + 146, 1, -4.6 );
setRotateKey( spep_0-2 + 148, 1, -3 );
setRotateKey( spep_0-2 + 150, 1, -1.7 );
setRotateKey( spep_0-2 + 152, 1, -0.8 );
setRotateKey( spep_0-2 + 154, 1, -0.1 );
setRotateKey( spep_0-2 + 156, 1, 0.5 );
setRotateKey( spep_0-2 + 158, 1, 0.9 );
setRotateKey( spep_0-2 + 160, 1, 1.1 );
setRotateKey( spep_0-2 + 162, 1, 1.3 );
setRotateKey( spep_0-2 + 164, 1, 1.4 );
setRotateKey( spep_0-2 + 166, 1, 1.4 );
setRotateKey( spep_0-2 + 168, 1, -1.6 );
setRotateKey( spep_0-2 + 170, 1, -1.3 );
setRotateKey( spep_0-2 + 172, 1, -1 );
setRotateKey( spep_0-2 + 174, 1, -0.7 );
setRotateKey( spep_0-2 + 176, 1, -5.1 );
setRotateKey( spep_0-2 + 179, 1, -9.5 );
setRotateKey( spep_0-2 + 180, 1, -13.9 );
setRotateKey( spep_0-2 + 182, 1, -12.7 );
setRotateKey( spep_0-2 + 185, 1, -11.5 );
setRotateKey( spep_0-2 + 186, 1, -12.5 );
setRotateKey( spep_0-2 + 188, 1, -12.8 );
setRotateKey( spep_0-2 + 190, 1, -13.1 );
setRotateKey( spep_0-2 + 192, 1, -13.5 );
setRotateKey( spep_0-2 + 194, 1, -38.7 );
setRotateKey( spep_0-2 + 196, 1, -38.6 );
setRotateKey( spep_0-2 + 201, 1, -38.6 );
setRotateKey( spep_0-2 + 202, 1, 10.6 );
setRotateKey( spep_0-2 + 204, 1, 10.9 );
setRotateKey( spep_0-2 + 206, 1, 11.3 );
setRotateKey( spep_0-2 + 209, 1, 11.7 );
setRotateKey( spep_0-2 + 210, 1, -38.6 );
setRotateKey( spep_0-2 + 212, 1, -33.7 );
setRotateKey( spep_0-2 + 214, 1, -28.8 );
setRotateKey( spep_0-2 + 216, 1, -23.9 );
setRotateKey( spep_0-2 + 225, 1, -23.9 );
setRotateKey( spep_0-2 + 226, 1, -45.4 );
setRotateKey( spep_0-2 + 228, 1, -41.3 );
setRotateKey( spep_0-2 + 230, 1, -37.3 );
setRotateKey( spep_0-2 + 232, 1, -33.2 );
setRotateKey( spep_0-2 + 234, 1, -32.9 );
setRotateKey( spep_0-2 + 236, 1, -32.6 );
setRotateKey( spep_0-2 + 238, 1, -32.3 );
setRotateKey( spep_0-2 + 241, 1, -32 );
setRotateKey( spep_0-2 + 242, 1, -42.8 );
setRotateKey( spep_0-2 + 244, 1, -37.4 );
setRotateKey( spep_0-2 + 246, 1, -31.9 );
setRotateKey( spep_0-2 + 248, 1, -26.5 );
setRotateKey( spep_0-2 + 250, 1, -31.9 );
setRotateKey( spep_0-2 + 252, 1, -37.3 );
setRotateKey( spep_0-2 + 254, 1, -42.7 );
setRotateKey( spep_0-2 + 257, 1, -48.1 );
setRotateKey( spep_0-2 + 258, 1, -53.5 );
setRotateKey( spep_0-2 + 260, 1, -46 );
setRotateKey( spep_0-2 + 262, 1, -38.5 );
setRotateKey( spep_0-2 + 265, 1, -31 );
setRotateKey( spep_0-2 + 266, 1, -13.8 );
setRotateKey( spep_0-2 + 268, 1, -13 );
setRotateKey( spep_0-2 + 270, 1, -12.1 );
setRotateKey( spep_0-2 + 273, 1, -11.3 );
setRotateKey( spep_0-2 + 274, 1, -126.4 );
setRotateKey( spep_0-2 + 276, 1, -129.8 );
setRotateKey( spep_0-2 + 278, 1, -133.1 );
setRotateKey( spep_0-2 + 281, 1, -136.4 );
setRotateKey( spep_0-2 + 282, 1, -38.5 );
setRotateKey( spep_0-2 + 289, 1, -38.5 );
setRotateKey( spep_0-2 + 290, 1, -32.5 );
setRotateKey( spep_0-2 + 292, 1, -29.7 );
setRotateKey( spep_0-2 + 294, 1, -26.8 );
setRotateKey( spep_0-2 + 297, 1, -23.9 );
setRotateKey( spep_0-2 + 298, 1, -19.2 );
setRotateKey( spep_0-2 + 300, 1, -30.2 );
setRotateKey( spep_0-2 + 303, 1, -41.3 );
setRotateKey( spep_0-2 + 304, 1, -52.3 );
setRotateKey( spep_0-2 + 307, 1, -50.7 );

setMoveKey( spep_0-4 + 406, 1, -12.3, 4.6 , 0 );
setMoveKey( spep_0-4 + 408, 1, -35, -5.9 , 0 );
setMoveKey( spep_0-4 + 410, 1, -57.5, -15.6 , 0 );
setMoveKey( spep_0-4 + 412, 1, 30.2, -2.8 , 0 );
setMoveKey( spep_0-4 + 414, 1, 59.8, 19.2 , 0 );
setMoveKey( spep_0-4 + 416, 1, 63.1, 21 , 0 );
setMoveKey( spep_0-4 + 418, 1, 79.5, 40.5 , 0 );
setMoveKey( spep_0-4 + 420, 1, 87.2, 36.2 , 0 );
setMoveKey( spep_0-4 + 422, 1, 95.8, 52.5 , 0 );
setMoveKey( spep_0-4 + 424, 1, 102.2, 47.8 , 0 );
setMoveKey( spep_0-4 + 426, 1, 108, 59.4 , 0 );
setMoveKey( spep_0-4 + 428, 1, 106.4, 51 , 0 );
setMoveKey( spep_0-4 + 430, 1, 247.5, 88.1 , 0 );
setMoveKey( spep_0-4 + 432, 1, 310.1, 104.7 , 0 );
setMoveKey( spep_0-4 + 434, 1, 339.1, 106.1 , 0 );
setMoveKey( spep_0-4 + 436, 1, 339.2, 103.9 , 0 );
setMoveKey( spep_0-4 + 438, 1, 326.9, 99 , 0 );
setMoveKey( spep_0-4 + 440, 1, 311, 93.8 , 0 );
setMoveKey( spep_0-4 + 442, 1, 303, 91.4 , 0 );
setMoveKey( spep_0-4 + 448, 1, 703, 91.4 , 0 );
setMoveKey( spep_0-3 + 406, 1, -12.3, 4.6 , 0 );
setMoveKey( spep_0-3 + 408, 1, -35, -5.9 , 0 );
setMoveKey( spep_0-3 + 410, 1, -57.5, -15.6 , 0 );
setMoveKey( spep_0-3 + 412, 1, 30.2, -2.8 , 0 );
setMoveKey( spep_0-3 + 414, 1, 59.8, 19.2 , 0 );
setMoveKey( spep_0-3 + 416, 1, 63.1, 21 , 0 );
setMoveKey( spep_0-3 + 418, 1, 79.5, 40.5 , 0 );
setMoveKey( spep_0-3 + 420, 1, 87.2, 36.2 , 0 );
setMoveKey( spep_0-3 + 422, 1, 95.8, 52.5 , 0 );
setMoveKey( spep_0-3 + 424, 1, 102.2, 47.8 , 0 );
setMoveKey( spep_0-3 + 426, 1, 108, 59.4 , 0 );
setMoveKey( spep_0-3 + 428, 1, 106.4, 51 , 0 );
setMoveKey( spep_0-3 + 430, 1, 247.5, 88.1 , 0 );
setMoveKey( spep_0-3 + 432, 1, 310.1, 104.7 , 0 );
setMoveKey( spep_0-3 + 434, 1, 339.1, 106.1 , 0 );
setMoveKey( spep_0-3 + 436, 1, 339.2, 103.9 , 0 );
setMoveKey( spep_0-3 + 438, 1, 326.9, 99 , 0 );
setMoveKey( spep_0-3 + 440, 1, 311, 93.8 , 0 );
setMoveKey( spep_0-3 + 442, 1, 303, 91.4 , 0 );
setMoveKey( spep_0-3 + 448, 1, 703, 91.4 , 0 );

setScaleKey( spep_0-4 + 406, 1, 1.42, 1.42 );
setScaleKey( spep_0-4 + 408, 1, 1.69, 1.69 );
setScaleKey( spep_0-4 + 410, 1, 1.95, 1.95 );
setScaleKey( spep_0-4 + 428, 1, 1.95, 1.95 );
setScaleKey( spep_0-4 + 430, 1, 1.66, 1.66 );
setScaleKey( spep_0-4 + 432, 1, 1.41, 1.41 );
setScaleKey( spep_0-4 + 434, 1, 1.21, 1.21 );
setScaleKey( spep_0-4 + 436, 1, 1.06, 1.06 );
setScaleKey( spep_0-4 + 438, 1, 0.94, 0.94 );
setScaleKey( spep_0-4 + 440, 1, 0.88, 0.88 );
setScaleKey( spep_0-4 + 442, 1, 0.86, 0.86 );
setScaleKey( spep_0-4 + 443, 1, 0.86, 0.86 );
setScaleKey( spep_0-4 + 448, 1, 0.86, 0.86 );

setScaleKey( spep_0-3 + 406, 1, 1.42, 1.42 );
setScaleKey( spep_0-3 + 408, 1, 1.69, 1.69 );
setScaleKey( spep_0-3 + 410, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 428, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 430, 1, 1.66, 1.66 );
setScaleKey( spep_0-3 + 432, 1, 1.41, 1.41 );
setScaleKey( spep_0-3 + 434, 1, 1.21, 1.21 );
setScaleKey( spep_0-3 + 436, 1, 1.06, 1.06 );
setScaleKey( spep_0-3 + 438, 1, 0.94, 0.94 );
setScaleKey( spep_0-3 + 440, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 442, 1, 0.86, 0.86 );
setScaleKey( spep_0-3 + 443, 1, 0.86, 0.86 );
setScaleKey( spep_0-3 + 448, 1, 0.86, 0.86 );

setRotateKey( spep_0-4 + 406, 1, -44.3 );
setRotateKey( spep_0-4 + 408, 1, -43.7 );
setRotateKey( spep_0-4 + 410, 1, -43.5 );
setRotateKey( spep_0-4 + 412, 1, -37.6 );
setRotateKey( spep_0-4 + 414, 1, -34.9 );
setRotateKey( spep_0-4 + 416, 1, -32.5 );
setRotateKey( spep_0-4 + 418, 1, -30.5 );
setRotateKey( spep_0-4 + 420, 1, -28.8 );
setRotateKey( spep_0-4 + 422, 1, -27.5 );
setRotateKey( spep_0-4 + 424, 1, -26.6 );
setRotateKey( spep_0-4 + 426, 1, -26.1 );
setRotateKey( spep_0-4 + 428, 1, -25.9 );
setRotateKey( spep_0-4 + 430, 1, -21.9 );
setRotateKey( spep_0-4 + 432, 1, -18.7 );
setRotateKey( spep_0-4 + 434, 1, -16.2 );
setRotateKey( spep_0-4 + 436, 1, -14.4 );
setRotateKey( spep_0-4 + 438, 1, -13.3 );
setRotateKey( spep_0-4 + 440, 1, -12.9 );
setRotateKey( spep_0-4 + 448, 1, -12.9 );

--SE
playSe(spep_0+136,1010);
playSe(spep_0+166,1009);
playSe(spep_0+180,1008);
playSe(spep_0+194,1001);
playSe(spep_0+200,1001);
playSe(spep_0+210,1009);
playSe(spep_0+216,1000);
playSe(spep_0+222,1008);
playSe(spep_0+237,1010);
playSe(spep_0+243,1001);
playSe(spep_0+258,1001);
playSe(spep_0+264,1009);
playSe(spep_0+276,1010);
playSe(spep_0+280,1001);
playSe(spep_0+288,1009);
playSe(spep_0+296,1001);
playSe(spep_0+302,1010);

playSe(spep_0+312,1001);
playSe(spep_0+318,1009);
playSe(spep_0+324,1014);
playSe(spep_0+330,1001);
playSe(spep_0+336,1033);
playSe(spep_0+342,1009);
playSe(spep_0+350,1000);
playSe(spep_0+356,1004);
playSe(spep_0+368,1001);
playSe(spep_0+380,1014);
playSe(spep_0+392,1010);

playSe(spep_0+412,1014);

------------------------------------------------------
-- Scene02 
------------------------------------------------------
spep_1 =spep_0+446;

entryFade(spep_1,0,2,6,255,255,255,255);
entryFade(spep_1+72,6,2,10,255,255,255,255);

entryFadeBg(spep_1,0,78,0,10,10,10,255);

--書き文字　ドゴォン　10018
ctDogown = entryEffectLife( spep_1-3 + 28,  10018, 22, 0x100, -3, 0, 6.8, 357.8 );
setEffMoveKey( spep_1-3 + 28, ctDogown, 6.8, 357.8 , 0 );
setEffMoveKey( spep_1-3 + 30, ctDogown, 7.4, 376.7 , 0 );
setEffMoveKey( spep_1-3 + 32, ctDogown, 11.3, 389 , 0 );
setEffMoveKey( spep_1-3 + 34, ctDogown, 7.9, 391.9 , 0 );
setEffMoveKey( spep_1-3 + 36, ctDogown, 10.4, 406.1 , 0 );
setEffMoveKey( spep_1-3 + 38, ctDogown, 11, 404.6 , 0 );
setEffMoveKey( spep_1-3 + 40, ctDogown, 6.1, 411.4 , 0 );
setEffMoveKey( spep_1-3 + 42, ctDogown, 13.1, 412.7 , 0 );
setEffMoveKey( spep_1-3 + 44, ctDogown, 9.3, 413.6 , 0 );
setEffMoveKey( spep_1-3 + 46, ctDogown, 5.8, 426.6 , 0 );
setEffMoveKey( spep_1-3 + 48, ctDogown, 9, 447.1 , 0 );
setEffMoveKey( spep_1-3 + 50, ctDogown, 8.9, 450.8 , 0 );

setEffScaleKey( spep_1-3 + 28, ctDogown, 2.61, 2.61 );
setEffScaleKey( spep_1-3 + 30, ctDogown, 2.8, 2.8 );
setEffScaleKey( spep_1-3 + 32, ctDogown, 2.86, 2.86 );
setEffScaleKey( spep_1-3 + 44, ctDogown, 2.86, 2.86 );
setEffScaleKey( spep_1-3 + 46, ctDogown, 3.27, 3.27 );
setEffScaleKey( spep_1-3 + 48, ctDogown, 3.51, 3.51 );
setEffScaleKey( spep_1-3 + 50, ctDogown, 3.59, 3.59 );

setEffRotateKey( spep_1-3 + 28, ctDogown, -0.9 );
setEffRotateKey( spep_1-3 + 50, ctDogown, -0.9 );

setEffAlphaKey( spep_1-3 + 28, ctDogown, 255 );
setEffAlphaKey( spep_1-3 + 44, ctDogown, 255 );
setEffAlphaKey( spep_1-3 + 46, ctDogown, 113 );
setEffAlphaKey( spep_1-3 + 48, ctDogown, 28 );
setEffAlphaKey( spep_1-3 + 50, ctDogown, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 28, 1, 0 );
setDisp( spep_1-3 + 29, 1, 0 );
changeAnime( spep_1 + 0, 1, 105 );

--setMoveKey( spep_1-2 + 0, 1, 25.9, -234.1 , 0 );
setMoveKey( spep_1-2 + 2, 1, 37.3, -373.6 , 0 );
setMoveKey( spep_1-2 + 4, 1, 38.3, -414.4 , 0 );
setMoveKey( spep_1-2 + 6, 1, 35.1, -400.7 , 0 );
setMoveKey( spep_1-2 + 8, 1, 30.6, -356.7 , 0 );
setMoveKey( spep_1-2 + 10, 1, 25.5, -292.7 , 0 );
setMoveKey( spep_1-2 + 12, 1, 20.8, -219.8 , 0 );
setMoveKey( spep_1-2 + 14, 1, 16.7, -143.7 , 0 );
setMoveKey( spep_1-2 + 16, 1, 13.5, -70.9 , 0 );
setMoveKey( spep_1-2 + 18, 1, 10.6, -1.9 , 0 );
setMoveKey( spep_1-2 + 20, 1, 8.8, 54.5 , 0 );
setMoveKey( spep_1-2 + 22, 1, 7.5, 100.4 , 0 );
setMoveKey( spep_1-2 + 24, 1, 6.3, 138.2 , 0 );
setMoveKey( spep_1-2 + 26, 1, 6.2, 156 , 0 );
setMoveKey( spep_1-2 + 28, 1, -3.3, 180 , 0 );
setMoveKey( spep_1-2 + 30, 1, 15.2, 143.2 , 0 );
setMoveKey( spep_1-2 + 32, 1, -6.8, 169.6 , 0 );
setMoveKey( spep_1-2 + 34, 1, 14.1, 147.7 , 0 );
setMoveKey( spep_1-2 + 36, 1, -8.2, 161.4 , 0 );
setMoveKey( spep_1-2 + 38, 1, 16.1, 147.8 , 0 );
setMoveKey( spep_1-2 + 40, 1, -5.1, 157.7 , 0 );
setMoveKey( spep_1-2 + 42, 1, 20.3, 145 , 0 );
setMoveKey( spep_1-2 + 44, 1, -5.9, 152.2 , 0 );
setMoveKey( spep_1-2 + 46, 1, 8.4, 133.4 , 0 );
setMoveKey( spep_1-2 + 48, 1, -12.4, 145.7 , 0 );
setMoveKey( spep_1-2 + 50, 1, 21.4, 140.2 , 0 );
setMoveKey( spep_1-2 + 52, 1, 0.1, 117.7 , 0 );
setMoveKey( spep_1-2 + 54, 1, 18.2, 143.2 , 0 );
setMoveKey( spep_1-2 + 56, 1, 0.5, 114.6 , 0 );
setMoveKey( spep_1-2 + 58, 1, -3.7, 134.5 , 0 );
setMoveKey( spep_1-2 + 60, 1, 8.4, 104.2 , 0 );
setMoveKey( spep_1-2 + 62, 1, 4.4, 135.3 , 0 );
setMoveKey( spep_1-2 + 64, 1, -3.6, 107.8 , 0 );
setMoveKey( spep_1-2 + 66, 1, 18.9, 125 , 0 );
setMoveKey( spep_1-2 + 68, 1, -8, 121.5 , 0 );
setMoveKey( spep_1-2 + 70, 1, 24.8, 108.9 , 0 );
setMoveKey( spep_1-2 + 72, 1, -12.1, 108.7 , 0 );
setMoveKey( spep_1-2 + 74, 1, 15.3, 125.6 , 0 );
setMoveKey( spep_1-2 + 76, 1, -8.1, 115.1 , 0 );
setMoveKey( spep_1-2 + 78, 1, 18.5, 125.7 , 0 );

--setScaleKey( spep_1-2 + 0, 1, 3.21, 3.21 );
setScaleKey( spep_1-2 + 2, 1, 4.99, 4.99 );
setScaleKey( spep_1-2 + 4, 1, 5.56, 5.56 );
setScaleKey( spep_1-2 + 6, 1, 5.49, 5.49 );
setScaleKey( spep_1-2 + 8, 1, 5.04, 5.04 );
setScaleKey( spep_1-2 + 10, 1, 4.42, 4.42 );
setScaleKey( spep_1-2 + 12, 1, 3.7, 3.7 );
setScaleKey( spep_1-2 + 14, 1, 2.97, 2.97 );
setScaleKey( spep_1-2 + 16, 1, 2.26, 2.26 );
setScaleKey( spep_1-2 + 18, 1, 1.62, 1.62 );
setScaleKey( spep_1-2 + 20, 1, 1.06, 1.06 );
setScaleKey( spep_1-2 + 22, 1, 0.62, 0.62 );
setScaleKey( spep_1-2 + 24, 1, 0.29, 0.29 );
setScaleKey( spep_1-2 + 26, 1, 0.09, 0.09 );
setScaleKey( spep_1-2 + 28, 1, 0.03, 0.03 );
setScaleKey( spep_1-2 + 30, 1, 0.02, 0.02 );
setScaleKey( spep_1-2 + 78, 1, 0.02, 0.02 );

setRotateKey( spep_1 + 0, 1, -19.3 );
setRotateKey( spep_1-2 +78, 1, -19.3 );

--SP_03
--Rock=entryEffectLife(spep_1,SP_03,78,0x80,-1,0,0,0);
Rock=entryEffectLife(spep_1,152102,78,0x80,-1,0,0,0);
setEffScaleKey( spep_1 , Rock, 1.0, 1.0 );

shuchusen1=entryEffectLife(spep_1+28,906,50,0x100,-1,0,0,0);
setEffScaleKey( spep_1+28, shuchusen1, 1.5, 1.5);
setEffScaleKey( spep_1+78, shuchusen1, 1.5, 1.5);

playSe(spep_1+28,1023);

------------------------------------------------------
-- Scene03
------------------------------------------------------
spep_2=spep_1+78;

--書き文字　ギュン 10007
ctGyun = entryEffectLife( spep_2 + 64-4,  10007, 10, 0x100, -1, 0, 120.7, 250.4 );
setEffMoveKey( spep_2 + 64-4, ctGyun, 120.7, 250.4 , 0 );
setEffMoveKey( spep_2 + 66-4, ctGyun, 82.6, 309.9 , 0 );
setEffMoveKey( spep_2 + 68-4, ctGyun, 69.8, 329.7 , 0 );
setEffMoveKey( spep_2 + 70-4, ctGyun, 63.5, 332.2 , 0 );
setEffMoveKey( spep_2 + 72-4, ctGyun, 57.3, 334.6 , 0 );
setEffMoveKey( spep_2 + 74-4, ctGyun, 51, 337.1 , 0 );

ctGyun2 = entryEffectLife( spep_2 + 110-4,  10007, 12, 0x100, -1, 0, -61.6, 331.2 );
setEffMoveKey( spep_2 + 110-4, ctGyun2, -61.6, 331.2 , 0 );
setEffMoveKey( spep_2 + 112-4, ctGyun2, -36.4, 390 , 0 );
setEffMoveKey( spep_2 + 114-4, ctGyun2, -28.1, 409.6 , 0 );
setEffMoveKey( spep_2 + 116-4, ctGyun2, -28.3, 411.5 , 0 );
setEffMoveKey( spep_2 + 118-4, ctGyun2, -28.5, 413.4 , 0 );
setEffMoveKey( spep_2 + 120-4, ctGyun2, -28.7, 415.2 , 0 );
setEffMoveKey( spep_2 + 122-4, ctGyun2, -28.9, 417.1 , 0 );

setEffScaleKey( spep_2 + 64-4, ctGyun, 1.48, 1.48 );
setEffScaleKey( spep_2 + 66-4, ctGyun, 2.57, 2.57 );
setEffScaleKey( spep_2 + 68-4, ctGyun, 2.94, 2.94 );
setEffScaleKey( spep_2 + 70-4, ctGyun, 2.98, 2.98 );
setEffScaleKey( spep_2 + 72-4, ctGyun, 3.03, 3.03 );
setEffScaleKey( spep_2 + 74-4, ctGyun, 3.07, 3.07 );

setEffScaleKey( spep_2 + 110-4, ctGyun2, 1.48, 1.48 );
setEffScaleKey( spep_2 + 112-4, ctGyun2, 2.58, 2.58 );
setEffScaleKey( spep_2 + 114-4, ctGyun2, 2.94, 2.94 );
setEffScaleKey( spep_2 + 116-4, ctGyun2, 2.97, 2.97 );
setEffScaleKey( spep_2 + 118-4, ctGyun2, 3.01, 3.01 );
setEffScaleKey( spep_2 + 120-4, ctGyun2, 3.04, 3.04 );
setEffScaleKey( spep_2 + 122-4, ctGyun2, 3.07, 3.07 );

setEffRotateKey( spep_2 + 64-4, ctGyun, 9 );
setEffRotateKey( spep_2 + 68-4, ctGyun, 9 );
setEffRotateKey( spep_2 + 70-4, ctGyun, 9.1 );
setEffRotateKey( spep_2 + 72-4, ctGyun, 9.1 );
setEffRotateKey( spep_2 + 74-4, ctGyun, 9.2 );

setEffRotateKey( spep_2 + 110-4, ctGyun2, -8 );
setEffRotateKey( spep_2 + 114-4, ctGyun2, -8 );
setEffRotateKey( spep_2 + 116-4, ctGyun2, -7.9 );
setEffRotateKey( spep_2 + 118-4, ctGyun2, -7.9 );
setEffRotateKey( spep_2 + 120-4, ctGyun2, -7.8 );

setEffAlphaKey( spep_2 + 64-4, ctGyun, 255 );
setEffAlphaKey( spep_2 + 74-4, ctGyun, 255 );

setEffAlphaKey( spep_2 + 110-4, ctGyun2, 255 );
setEffAlphaKey( spep_2 + 120-4, ctGyun2, 255 );

--集中線
shuchusen2a = entryEffectLife( spep_2 + 60-4,  906, 12, 0x100, -1, 0, 410.9, 104 );
setEffMoveKey( spep_2 + 60, shuchusen2a, 410.9, 104 , 0 );
setEffMoveKey( spep_2 + 62, shuchusen2a, 346.8, 76.4 , 0 );
setEffMoveKey( spep_2 + 64, shuchusen2a, 292.6, 53.1 , 0 );
setEffMoveKey( spep_2 + 66, shuchusen2a, 248.2, 34 , 0 );
setEffMoveKey( spep_2 + 68, shuchusen2a, 213.7, 19.1 , 0 );
setEffMoveKey( spep_2 + 70, shuchusen2a, 189.1, 8.5 , 0 );
setEffMoveKey( spep_2 + 72, shuchusen2a, 174.3, 2.1 , 0 );
--setEffMoveKey( spep_2 + 74, shuchusen2a, 169.4, 0 , 0 );

setEffScaleKey( spep_2 + 60, shuchusen2a, 1.6, 1.6 );
setEffScaleKey( spep_2 + 62, shuchusen2a, 1.5, 1.5 );
setEffScaleKey( spep_2 + 64, shuchusen2a, 1.42, 1.42 );
setEffScaleKey( spep_2 + 66, shuchusen2a, 1.35, 1.35 );
setEffScaleKey( spep_2 + 68, shuchusen2a, 1.29, 1.29 );
setEffScaleKey( spep_2 + 70, shuchusen2a, 1.25, 1.25 );
setEffScaleKey( spep_2 + 72, shuchusen2a, 1.23, 1.23 );
--setEffScaleKey( spep_2 + 74, shuchusen2a, 1.22, 1.22 );

setEffRotateKey( spep_2 + 60, shuchusen2a, 0 );
setEffRotateKey( spep_2 + 72, shuchusen2a, 0 );

setEffAlphaKey( spep_2 + 60, shuchusen2a, 255 );
setEffAlphaKey( spep_2 + 72, shuchusen2a, 255 );


shuchusen2b = entryEffectLife( spep_2 + 106,  906, 16, 0x100, -1, 0, -461.6, 120.1 , 0 );
setEffMoveKey( spep_2 + 106, shuchusen2b, -461.6, 120.1 , 0 );
setEffMoveKey( spep_2 + 108, shuchusen2b, -399.4, 94.9 , 0 );
setEffMoveKey( spep_2 + 110, shuchusen2b, -344.5, 72.7 , 0 );
setEffMoveKey( spep_2 + 112, shuchusen2b, -296.9, 53.4 , 0 );
setEffMoveKey( spep_2 + 114, shuchusen2b, -256.7, 37.1 , 0 );
setEffMoveKey( spep_2 + 116, shuchusen2b, -223.7, 23.7 , 0 );
setEffMoveKey( spep_2 + 118, shuchusen2b, -198.1, 13.3 , 0 );
setEffMoveKey( spep_2 + 120, shuchusen2b, -179.8, 5.9 , 0 );
setEffMoveKey( spep_2 + 122, shuchusen2b, -168.8, 1.5 , 0 );
--setEffMoveKey( spep_2 + 124, shuchusen2b, -165.2, 0 , 0 );

-- shuchusen2b
setEffScaleKey( spep_2 + 106, shuchusen2b, 1.71, 1.71 );
setEffScaleKey( spep_2 + 108, shuchusen2b, 1.61, 1.61 );
setEffScaleKey( spep_2 + 110, shuchusen2b, 1.52, 1.52 );
setEffScaleKey( spep_2 + 112, shuchusen2b, 1.44, 1.44 );
setEffScaleKey( spep_2 + 114, shuchusen2b, 1.37, 1.37 );
setEffScaleKey( spep_2 + 116, shuchusen2b, 1.32, 1.32 );
setEffScaleKey( spep_2 + 118, shuchusen2b, 1.27, 1.27 );
setEffScaleKey( spep_2 + 120, shuchusen2b, 1.24, 1.24 );
setEffScaleKey( spep_2 + 122, shuchusen2b, 1.23, 1.23 );
--setEffScaleKey( spep_2 + 124, shuchusen2b, 1.22, 1.22 );

-- shuchusen2b
setEffRotateKey( spep_2 + 106, shuchusen2b, 0 );
setEffRotateKey( spep_2 + 122, shuchusen2b, 0 );

--突進
Tossin = entryEffectLife( spep_2, SP_04, 122, 0x100, -1, 0, 0, 0 );
setEffScaleKey( spep_2 , Tossin, 1.0, 1.0 );
setEffScaleKey( spep_2+122 , Tossin, 1.0, 1.0 );

playSe( spep_2 + 0,4);
playSe( spep_2 + 14,4);
--playSe( spep_2 + 24,44);
playSe( spep_2 + 38,44);
--playSe( spep_2 + 48,44);
playSe( spep_2 + 60,1027);
--playSe( spep_2 + 70,44);
playSe( spep_2 + 78,4);
playSe( spep_2 + 88,44);
playSe( spep_2 + 106,1027);
--playSe( spep_2 + 116,4);
------------------------------------------------------
-- Scene04
------------------------------------------------------
spep_3=spep_2+122;

entryFade(spep_3+40,8,2,0,255,255,255,255);

--書き文字　バゴッ　10021
ctBago = entryEffectLife( spep_3 + 10,  10021, 16, 0x100, -1, 0, 39.7, 281.5 );
setEffMoveKey( spep_3 + 10, ctBago, 39.7, 281.5 , 0 );
setEffMoveKey( spep_3 + 12, ctBago, 13.5, 305.1 , 0 );
setEffMoveKey( spep_3 + 14, ctBago, 6.1, 299.7 , 0 );
setEffMoveKey( spep_3 + 16, ctBago, 17.5, 320.7 , 0 );
setEffMoveKey( spep_3 + 18, ctBago, 5.5, 313.8 , 0 );
setEffMoveKey( spep_3 + 20, ctBago, 10.3, 322.1 , 0 );
setEffMoveKey( spep_3 + 22, ctBago, 2.7, 314.7 , 0 );
setEffMoveKey( spep_3 + 24, ctBago, 14, 341.4 , 0 );
setEffMoveKey( spep_3 + 26, ctBago, 11.5, 356.3 , 0 );

setEffScaleKey( spep_3 + 10, ctBago, 1.88, 1.88 );
setEffScaleKey( spep_3 + 12, ctBago, 2.53, 2.53 );
setEffScaleKey( spep_3 + 14, ctBago, 2.57, 2.57 );
setEffScaleKey( spep_3 + 16, ctBago, 2.62, 2.62 );
setEffScaleKey( spep_3 + 18, ctBago, 2.66, 2.66 );
setEffScaleKey( spep_3 + 20, ctBago, 2.7, 2.7 );
setEffScaleKey( spep_3 + 22, ctBago, 2.73, 2.73 );
setEffScaleKey( spep_3 + 24, ctBago, 2.82, 2.82 );
setEffScaleKey( spep_3 + 26, ctBago, 2.96, 2.96 );

setEffRotateKey( spep_3 + 10, ctBago, -11.7 );
setEffRotateKey( spep_3 + 12, ctBago, -15.6 );

setEffAlphaKey( spep_3 + 10, ctBago, 255 );
setEffAlphaKey( spep_3 + 20, ctBago, 255 );
setEffAlphaKey( spep_3 + 22, ctBago, 227 );
setEffAlphaKey( spep_3 + 24, ctBago, 142 );
setEffAlphaKey( spep_3 + 26, ctBago, 0 );

smoke=entryEffectLife( spep_3,  SP_05, 48, 0x100, -1, 0, 0,0 );
setEffScaleKey( spep_3 , smoke, 1.0, 1.0 );
setEffScaleKey( spep_3+48 , smoke, 1.0, 1.0 );

rock2=entryEffectLife( spep_3, SP_06, 48, 0x80, -1, 0, 0,0 );
setEffScaleKey( spep_3 , rock2, 1.0, 1.0 );
setEffScaleKey( spep_3+48 , rock2, 1.0, 1.0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 48, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, -11.2, 3.6 , 0 );
setMoveKey( spep_3 + 2, 1, -11.8, 3.7 , 0 );
setMoveKey( spep_3 + 4, 1, -12.3, 3.9 , 0 );
setMoveKey( spep_3 + 6, 1, -12.9, 4.1 , 0 );
setMoveKey( spep_3 + 8, 1, -13.4, 4.3 , 0 );
setMoveKey( spep_3 + 10, 1, -24.9, -9.8 , 0 );
setMoveKey( spep_3 + 12, 1, -23.4, 20.9 , 0 );
setMoveKey( spep_3 + 14, 1, -2.6, -7.9 , 0 );
setMoveKey( spep_3 + 16, 1, -13.2, 19.4 , 0 );
setMoveKey( spep_3 + 18, 1, -15.8, -6.2 , 0 );
setMoveKey( spep_3 + 20, 1, -20.6, 16.5 , 0 );
setMoveKey( spep_3 + 22, 1, -7, -7 , 0 );
setMoveKey( spep_3 + 24, 1, -11, 15.8 , 0 );
setMoveKey( spep_3 + 26, 1, -23, -1.8 , 0 );
setMoveKey( spep_3 + 28, 1, -8.5, 12.5 , 0 );
setMoveKey( spep_3 + 30, 1, -24.8, 5.7 , 0 );
setMoveKey( spep_3 + 32, 1, -8.3, 3.2 , 0 );
setMoveKey( spep_3 + 34, 1, -19.4, 9.8 , 0 );
setMoveKey( spep_3 + 36, 1, -8.9, 4.9 , 0 );
setMoveKey( spep_3 + 38, 1, -16.6, 9.3 , 0 );
setMoveKey( spep_3 + 40, 1, -12.4, 1.7 , 0 );
setMoveKey( spep_3 + 42, 1, -13.7, 7.9 , 0 );
setMoveKey( spep_3 + 44, 1, -12.3, 4.1 , 0 );
setMoveKey( spep_3 + 46, 1, -12.9, 4.1 , 0 );
setMoveKey( spep_3 + 48, 1, -18.7, 19.5 , 0 );

setScaleKey( spep_3 + 0, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 2, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 4, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 6, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 8, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 10, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 12, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 14, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 16, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 18, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 20, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 22, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 24, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 26, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 28, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 30, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 32, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 34, 1, 1, 1 );
setScaleKey( spep_3 + 36, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 38, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 40, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 42, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 44, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 46, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 48, 1, 1.36, 1.36 );

setRotateKey( spep_3 + 0, 1, -47.8 );
setRotateKey( spep_3 + 48, 1, -47.8 );

playSe( spep_3 + 10,1068);
------------------------------------------------------
-- Card
------------------------------------------------------
spep_4=spep_3+48;

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507, 0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.0,  1.0);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+90,  shuchusen4,  1.0,  1.0);
setEffRotateKey(  spep_4+90,  shuchusen4,  0);
setEffAlphaKey(  spep_4+90,  shuchusen4,  255);

entryFade( spep_4+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- Scene05
------------------------------------------------------
spep_5=spep_4+90;

entryFade(spep_5+132,8,4,2,255,255,255,255);
entryFadeBg(spep_5,0,142,0,10,10,10,255);

--集中線
shuchusen5 = entryEffectLife( spep_5, 906, 98, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.4,  1.4);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffMoveKey(  spep_5+98,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+98,  shuchusen5,  1.4,  1.4);
setEffRotateKey(  spep_5+98,  shuchusen5,  0);
setEffAlphaKey(  spep_5+98,  shuchusen5,  255);

--書き文字　ズドド 10014
ctZudodo= entryEffectLife( spep_5 + 108,  10014, 34, 0x100, -1, 0, 22.5, 276.1 );
setEffMoveKey( spep_5 + 108, ctZudodo, 22.5, 276.1 , 0 );
setEffMoveKey( spep_5 + 110, ctZudodo, 10, 265.1 , 0 );
setEffMoveKey( spep_5 + 112, ctZudodo, 26.3, 261.4 , 0 );
setEffMoveKey( spep_5 + 114, ctZudodo, 7.1, 265.4 , 0 );
setEffMoveKey( spep_5 + 116, ctZudodo, 32.2, 260.3 , 0 );
setEffMoveKey( spep_5 + 118, ctZudodo, 10.6, 260.3 , 0 );
setEffMoveKey( spep_5 + 120, ctZudodo, 30.6, 258.8 , 0 );
setEffMoveKey( spep_5 + 122, ctZudodo, 19.5, 276.5 , 0 );
setEffMoveKey( spep_5 + 124, ctZudodo, 20.5, 255 , 0 );
setEffMoveKey( spep_5 + 126, ctZudodo, 16.2, 273.6 , 0 );
setEffMoveKey( spep_5 + 128, ctZudodo, 28.4, 260.9 , 0 );
setEffMoveKey( spep_5 + 130, ctZudodo, 14.4, 277 , 0 );
setEffMoveKey( spep_5 + 132, ctZudodo, 22.9, 256.3 , 0 );
setEffMoveKey( spep_5 + 134, ctZudodo, 10.9, 268.1 , 0 );
setEffMoveKey( spep_5 + 136, ctZudodo, 25, 252.8 , 0 );
setEffMoveKey( spep_5 + 138, ctZudodo, 18.4, 275.8 , 0 );
setEffMoveKey( spep_5 + 140, ctZudodo, 15.2, 253.5 , 0 );
setEffMoveKey( spep_5 + 142, ctZudodo, 15.5, 277.1 , 0 );

setEffScaleKey( spep_5 + 108, ctZudodo, 1.95, 1.95 );
setEffScaleKey( spep_5 + 110, ctZudodo, 2.09, 2.09 );
setEffScaleKey( spep_5 + 112, ctZudodo, 2.2, 2.2 );
setEffScaleKey( spep_5 + 114, ctZudodo, 2.26, 2.26 );
setEffScaleKey( spep_5 + 116, ctZudodo, 2.28, 2.28 );
setEffScaleKey( spep_5 + 118, ctZudodo, 2.31, 2.31 );
setEffScaleKey( spep_5 + 120, ctZudodo, 2.34, 2.34 );
setEffScaleKey( spep_5 + 122, ctZudodo, 2.38, 2.38 );
setEffScaleKey( spep_5 + 124, ctZudodo, 2.41, 2.41 );
setEffScaleKey( spep_5 + 126, ctZudodo, 2.44, 2.44 );
setEffScaleKey( spep_5 + 128, ctZudodo, 2.47, 2.47 );
setEffScaleKey( spep_5 + 130, ctZudodo, 2.51, 2.51 );
setEffScaleKey( spep_5 + 132, ctZudodo, 2.54, 2.54 );
setEffScaleKey( spep_5 + 134, ctZudodo, 2.57, 2.57 );
setEffScaleKey( spep_5 + 136, ctZudodo, 2.6, 2.6 );
setEffScaleKey( spep_5 + 138, ctZudodo, 2.64, 2.64 );
setEffScaleKey( spep_5 + 140, ctZudodo, 2.67, 2.67 );
setEffScaleKey( spep_5 + 142, ctZudodo, 2.7, 2.7 );

setEffRotateKey( spep_5 + 108, ctZudodo, 24.5 );
setEffRotateKey( spep_5 + 142, ctZudodo, 24.5 );

setEffAlphaKey( spep_5 + 108, ctZudodo, 31 );
setEffAlphaKey( spep_5 + 110, ctZudodo, 129 );
setEffAlphaKey( spep_5 + 112, ctZudodo, 199 );
setEffAlphaKey( spep_5 + 114, ctZudodo, 241 );
setEffAlphaKey( spep_5 + 116, ctZudodo, 255 );
setEffAlphaKey( spep_5 + 142, ctZudodo, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 104, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, -11.1, 34.2 , 0 );
setMoveKey( spep_5 + 2, 1, -10.7, 32.9 , 0 );
setMoveKey( spep_5 + 4, 1, -10.3, 31.9 , 0 );
setMoveKey( spep_5 + 6, 1, -9.9, 30.9 , 0 );
setMoveKey( spep_5 + 8, 1, -9.5, 30 , 0 );
setMoveKey( spep_5 + 10, 1, -9.2, 29.3 , 0 );
setMoveKey( spep_5 + 12, 1, -9, 28.7 , 0 );
setMoveKey( spep_5 + 14, 1, -8.7, 28.3 , 0 );
setMoveKey( spep_5 + 16, 1, -8.6, 28 , 0 );
setMoveKey( spep_5 + 18, 1, -8.4, 27.9 , 0 );
setMoveKey( spep_5 + 20, 1, -8.3, 27.8 , 0 );
setMoveKey( spep_5 + 22, 1, -8.3, 28 , 0 );
setMoveKey( spep_5 + 24, 1, -8.2, 28.2 , 0 );
setMoveKey( spep_5 + 26, 1, -4.3, 33.4 , 0 );
setMoveKey( spep_5 + 28, 1, -1.6, 38.4 , 0 );
setMoveKey( spep_5 + 30, 1, -0.5, 32 , 0 );
setMoveKey( spep_5 + 32, 1, -0.8, 33.6 , 0 );
setMoveKey( spep_5 + 34, 1, -1.3, 31.6 , 0 );
setMoveKey( spep_5 + 36, 1, -0.6, 32.3 , 0 );
setMoveKey( spep_5 + 38, 1, -0.7, 31.6 , 0 );
setMoveKey( spep_5 + 40, 1, -0.6, 31.9 , 0 );
setMoveKey( spep_5 + 42, 1, -0.8, 31.8 , 0 );
setMoveKey( spep_5 + 44, 1, -0.7, 31.8 , 0 );
setMoveKey( spep_5 + 46, 1, -0.8, 32.1 , 0 );
setMoveKey( spep_5 + 48, 1, -1, 32.4 , 0 );
setMoveKey( spep_5 + 50, 1, -1.1, 32.7 , 0 );
setMoveKey( spep_5 + 52, 1, -1.2, 32.9 , 0 );
setMoveKey( spep_5 + 54, 1, -1.4, 33.2 , 0 );
setMoveKey( spep_5 + 56, 1, -1.5, 33.5 , 0 );
setMoveKey( spep_5 + 58, 1, -1.7, 33.7 , 0 );
setMoveKey( spep_5 + 60, 1, -1.7, 33.9 , 0 );
setMoveKey( spep_5 + 62, 1, -1.9, 34.1 , 0 );
setMoveKey( spep_5 + 64, 1, -2, 34.4 , 0 );
setMoveKey( spep_5 + 66, 1, -2.1, 34.5 , 0 );
setMoveKey( spep_5 + 68, 1, -2.3, 34.7 , 0 );
setMoveKey( spep_5 + 70, 1, -2.4, 35 , 0 );
setMoveKey( spep_5 + 72, 1, -2.5, 35.1 , 0 );
setMoveKey( spep_5 + 74, 1, -2.6, 35.3 , 0 );
setMoveKey( spep_5 + 76, 1, -2.7, 35.4 , 0 );
setMoveKey( spep_5 + 78, 1, -2.9, 36 , 0 );
setMoveKey( spep_5 + 80, 1, -3.2, 36.7 , 0 );
setMoveKey( spep_5 + 82, 1, -3.5, 37.5 , 0 );
setMoveKey( spep_5 + 84, 1, -3.7, 38.3 , 0 );
setMoveKey( spep_5 + 86, 1, -3.9, 38.8 , 0 );
setMoveKey( spep_5 + 88, 1, -4.1, 39.3 , 0 );
setMoveKey( spep_5 + 90, 1, -4.3, 39.9 , 0 );
setMoveKey( spep_5 + 92, 1, -4.4, 40.4 , 0 );
setMoveKey( spep_5 + 94, 1, -4.7, 40.9 , 0 );
setMoveKey( spep_5 + 96, 1, -4.9, 41.4 , 0 );
setMoveKey( spep_5 + 98, 1, -5, 41.8 , 0 );
setMoveKey( spep_5 + 100, 1, -5.2, 42.2 , 0 );
setMoveKey( spep_5 + 102, 1, -5.3, 42.6 , 0 );
setMoveKey( spep_5 + 104, 1, -5.5, 42.9 , 0 );

setScaleKey( spep_5 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 2, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 4, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 6, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 8, 1, 0.69, 0.69 );
setScaleKey( spep_5 + 10, 1, 0.66, 0.66 );
setScaleKey( spep_5 + 12, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 14, 1, 0.63, 0.63 );
setScaleKey( spep_5 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_5 + 18, 1, 0.61, 0.61 );
setScaleKey( spep_5 + 20, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 22, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 24, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 26, 1, 0.56, 0.56 );
setScaleKey( spep_5 + 28, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 30, 1, 0.54, 0.54 );
setScaleKey( spep_5 + 32, 1, 0.53, 0.53 );
setScaleKey( spep_5 + 34, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 40, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 42, 1, 0.5, 0.5 );
setScaleKey( spep_5 + 56, 1, 0.5, 0.5 );
setScaleKey( spep_5 + 58, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 66, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 68, 1, 0.48, 0.48 );
setScaleKey( spep_5 + 72, 1, 0.48, 0.48 );
setScaleKey( spep_5 + 74, 1, 0.47, 0.47 );
setScaleKey( spep_5 + 76, 1, 0.47, 0.47 );
setScaleKey( spep_5 + 78, 1, 0.48, 0.48 );
setScaleKey( spep_5 + 82, 1, 0.48, 0.48 );
setScaleKey( spep_5 + 84, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 104, 1, 0.49, 0.49 );

setRotateKey( spep_5 + 0, 1, -47.8 );
setRotateKey( spep_5 + 104, 1, -47.8 );

--SP_07
rock3=entryEffectLife( spep_5,  SP_07, 142, 0x100, -1, 0, 0,0 );
setEffScaleKey( spep_5 , rock3, 1.0, 1.0 );
setEffScaleKey( spep_5+142 , rock3, 1.0, 1.0 );

--SP_08
burst=entryEffectLife( spep_5,  SP_08, 142, 0x80, -1, 0, 0,0 );
setEffScaleKey( spep_5 , burst, 1.0, 1.0 );
setEffScaleKey( spep_5+142 , burst, 1.0, 1.0 );

playSe(spep_5+28,SE_01);
playSe(spep_5+84,SE_07);
--playSe(spep_5+108,SE_07);

------------------------------------------------------
-- Scene06 ギャン
------------------------------------------------------
spep_6=spep_5+142;

entryFade(spep_6+40,16,6,0,255,255,255,255);
entryFadeBg(spep_6,0,58,0,10,10,10,255);

GyanEff = entryEffectLife(spep_6,SP_09,58, 0x80 ,-1,0,0,0);
setEffMoveKey(spep_6,GyanEff,0,0,0);
setEffScaleKey(spep_6,GyanEff,1.0,1.0);
setEffAlphaKey(spep_6,GyanEff,255);

-- 書き文字　ギャン 10006
ctGyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );
setEffMoveKey( spep_6 + 0, ctGyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_6 + 0, ctGyan, 2.2, 2.2 );
setEffScaleKey( spep_6 + 2, ctGyan, 2.4, 2.4 );
setEffScaleKey( spep_6 + 4, ctGyan, 2.6, 2.6 );
setEffScaleKey( spep_6 + 6, ctGyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 8, ctGyan, 3, 3 );
setEffScaleKey( spep_6 + 10, ctGyan, 3.01, 3.01 );
setEffScaleKey( spep_6 + 12, ctGyan, 3.02, 3.02 );
setEffScaleKey( spep_6 + 14, ctGyan, 3.02, 3.02 );
setEffScaleKey( spep_6 + 16, ctGyan, 3.03, 3.03 );
setEffScaleKey( spep_6 + 18, ctGyan, 3.04, 3.04 );
setEffScaleKey( spep_6 + 20, ctGyan, 3.05, 3.05 );
setEffScaleKey( spep_6 + 22, ctGyan, 3.06, 3.06 );
setEffScaleKey( spep_6 + 24, ctGyan, 3.06, 3.06 );
setEffScaleKey( spep_6 + 26, ctGyan, 3.07, 3.07 );
setEffScaleKey( spep_6 + 28, ctGyan, 3.08, 3.08 );
setEffScaleKey( spep_6 + 30, ctGyan, 3.09, 3.09 );
setEffScaleKey( spep_6 + 32, ctGyan, 3.1, 3.1 );
setEffScaleKey( spep_6 + 34, ctGyan, 3.1, 3.1 );
setEffScaleKey( spep_6 + 36, ctGyan, 3.11, 3.11 );
setEffScaleKey( spep_6 + 38, ctGyan, 3.12, 3.12 );
setEffScaleKey( spep_6 + 40, ctGyan, 3.13, 3.13 );
setEffScaleKey( spep_6 + 42, ctGyan, 3.14, 3.14 );
setEffScaleKey( spep_6 + 44, ctGyan, 3.14, 3.14 );
setEffScaleKey( spep_6 + 46, ctGyan, 3.15, 3.15 );
setEffScaleKey( spep_6 + 48, ctGyan, 3.16, 3.16 );
setEffScaleKey( spep_6 + 50, ctGyan, 3.17, 3.17 );
setEffScaleKey( spep_6 + 52, ctGyan, 3.17, 3.17 );
setEffScaleKey( spep_6 + 54, ctGyan, 3.18, 3.18 );
setEffScaleKey( spep_6 + 56, ctGyan, 3.19, 3.19 );
setEffScaleKey( spep_6 + 58, ctGyan, 3.2, 3.2 );

setEffRotateKey( spep_6 + 0, ctGyan, 0 );
setEffRotateKey( spep_6 + 0, ctGyan, 0 );

setEffAlphaKey( spep_6 + 0, ctGyan, 255 );
setEffAlphaKey( spep_6 + 0, ctGyan, 255 );

playSe(spep_6,SE_09);

------------------------------------------------------
-- Scene07
------------------------------------------------------
spep_7=spep_6+58;

--SP_10
Exp= entryEffect(spep_7,SP_10,0x80,-1,0,0,0);
setEffMoveKey(spep_7,Exp,0,0,0);
setEffScaleKey(spep_7,Exp,1.1,1.1);
setEffRotateKey(spep_7,Exp,0);
setEffAlphaKey(spep_7,Exp,255);

setEffMoveKey(spep_7,Exp,0,0,0);
setEffScaleKey(spep_7,Exp,1.1,1.1);
setEffRotateKey(spep_7,Exp,0);
setEffAlphaKey(spep_7,Exp,255);

--集中線
shuchusen7=entryEffectLife( spep_7+44, 906, 98, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_7+44,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7+44,  shuchusen7,  1.0,  1.0);
setEffRotateKey(  spep_7+44,  shuchusen7,  0);
setEffAlphaKey(  spep_7+44,  shuchusen7,  255);
setEffMoveKey(  spep_7+142,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7+142,  shuchusen7,  1.0,  1.0);
setEffRotateKey(  spep_7+142,  shuchusen7,  0);
setEffAlphaKey(  spep_7+142,  shuchusen7,  255);

-- ダメージ表示
dealDamage(spep_7+16);
endPhase( spep_7+140);

Seid=playSe(spep_7+15,1069);
--stopSe(spep_7+39,Seid,0);
playSe(spep_7+51,1024);

else
------------------------------------------------------
-- Scene01
------------------------------------------------------
spep_0 = 0;

entryFade(spep_0,0,2,6,255,255,255,200);
entryFade(spep_0+140-4,0,0,4,255,255,255,200);
entryFade(spep_0+438,6,6,0,255,255,255,255);

entryFadeBg(spep_0,0,446,0,10,10,10,200);

shuchusen0=entryEffectLife(spep_0+82,906,364,0x100,-1,0,0,0);
setEffScaleKey( spep_0+82, shuchusen0, 1.5, 1.5);
setEffScaleKey( spep_0+446, shuchusen0, 1.5, 1.5);

--顔カットイン&セリフカットイン
--書き文字ゴゴゴ
ctgogo = entryEffectLife( spep_0+10, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_0+10, ctgogo, 70, 8);
setEffScaleKey(spep_0+10, ctgogo, -0.7, 0.7);

--speff = entryEffect(  spep_0,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_0,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--書き文字　ドン 10019
--ctDon= 
ctDon = entryEffectLife( spep_0+2 + 84,  10019, 16, 0x100, -1, 0, 13.8, 227.6 );
setEffMoveKey( spep_0+2 + 84, ctDon, 13.8, 227.6 , 0 );
setEffMoveKey( spep_0+2 + 86, ctDon, -8.9, 253.4 , 0 );
setEffMoveKey( spep_0+2 + 88, ctDon, -10.6, 275.9 , 0 );
setEffMoveKey( spep_0+2 + 90, ctDon, -19.8, 284.9 , 0 );
setEffMoveKey( spep_0+2 + 92, ctDon, -7.5, 278 , 0 );
setEffMoveKey( spep_0+2 + 94, ctDon, -19.7, 278.4 , 0 );
setEffMoveKey( spep_0+2 + 96, ctDon, -13.3, 286.7 , 0 );
setEffMoveKey( spep_0+2 + 98, ctDon, -13.1, 274.6 , 0 );
setEffMoveKey( spep_0+2 + 100, ctDon, -13.1, 275.1 , 0 );

setEffScaleKey( spep_0+2 + 84, ctDon, 1.29, 1.29 );
setEffScaleKey( spep_0+2+ 86, ctDon, 1.63, 1.63 );
setEffScaleKey( spep_0+2 + 88, ctDon, 1.98, 1.98 );
setEffScaleKey( spep_0+2 + 90, ctDon, 2, 2 );
setEffScaleKey( spep_0+2 + 92, ctDon, 2.02, 2.02 );
setEffScaleKey( spep_0+2 + 94, ctDon, 2.04, 2.04 );
setEffScaleKey( spep_0+2 + 96, ctDon, 2.05, 2.05 );
setEffScaleKey( spep_0+2 + 98, ctDon, 2.06, 2.06 );
setEffScaleKey( spep_0+2 + 100, ctDon, 2.07, 2.07 );

setEffRotateKey( spep_0+2 + 84, ctDon, -0.8 );
setEffRotateKey( spep_0+2 + 86, ctDon, -0.2 );
setEffRotateKey( spep_0+2 + 88, ctDon, 0.3 );
setEffRotateKey( spep_0+2 + 100, ctDon, 0.3 );

setEffAlphaKey( spep_0+2 + 84, ctDon, 255 );
setEffAlphaKey( spep_0+2 + 94, ctDon, 255 );
setEffAlphaKey( spep_0+2 + 96, ctDon, 170 );
setEffAlphaKey( spep_0+2 + 98, ctDon, 85 );
setEffAlphaKey( spep_0+2 + 100, ctDon, 0 );

--eff_01
--Freeza0 = entryEffectLife(spep_0,SP_01,446,0x80,-1,0,0,0);
Freeza0 = entryEffectLife(spep_0,SP_01r,446,0x100,-1,0,0,0);
setEffScaleKey( spep_0 , Freeza0, 1.0, 1.0 );
--
--Goku0 = entryEffectLife(spep_0,SP_02,446,0x80,-1,0,0,0);
Goku0 = entryEffectLife(spep_0,SP_02r,446,0x80,-1,0,0,0);
setEffScaleKey( spep_0,Goku0, 1.0, 1.0 );

--SE
playSe(spep_0,SE_04);
playSe(spep_0+86,1008);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+130; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置

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
-- 回避されなかった場合
------------------------------------------------------

--書き文字　ガッ
ctGa = entryEffectLife( spep_0-4 + 140,  10005, 16, 0x100, -1, 0, 140.1, 318.9 );
setEffMoveKey( spep_0-4 + 140, ctGa, 140.1, 318.9 , 0 );
setEffMoveKey( spep_0-4 + 142, ctGa, 130.8, 331.3 , 0 );
setEffMoveKey( spep_0-4 + 144, ctGa, 134.7, 336.2 , 0 );
setEffMoveKey( spep_0-4 + 146, ctGa, 127.9, 338.9 , 0 );
setEffMoveKey( spep_0-4 + 148, ctGa, 137.1, 339.9 , 0 );
setEffMoveKey( spep_0-4 + 150, ctGa, 128.1, 345 , 0 );
setEffMoveKey( spep_0-4 + 152, ctGa, 132.2, 343.8 , 0 );
setEffMoveKey( spep_0-4 + 154, ctGa, 124.2, 348.8 , 0 );
setEffMoveKey( spep_0-4 + 156, ctGa, 123.5, 350.7 , 0 );

setEffScaleKey( spep_0-4 + 140, ctGa, 1.25, 1.25 );
setEffScaleKey( spep_0-4 + 142, ctGa, 1.45, 1.45 );
setEffScaleKey( spep_0-4 + 144, ctGa, 1.52, 1.52 );
setEffScaleKey( spep_0-4 + 146, ctGa, 1.57, 1.57 );
setEffScaleKey( spep_0-4 + 148, ctGa, 1.61, 1.61 );
setEffScaleKey( spep_0-4 + 150, ctGa, 1.63, 1.63 );
setEffScaleKey( spep_0-4 + 152, ctGa, 1.64, 1.64 );
setEffScaleKey( spep_0-4 + 154, ctGa, 1.73, 1.73 );
setEffScaleKey( spep_0-4 + 156, ctGa, 1.76, 1.76 );

setEffRotateKey( spep_0-4 + 140, ctGa, 3 );
setEffRotateKey( spep_0-4 + 156, ctGa, 3 );

setEffAlphaKey( spep_0-4 + 140, ctGa, 255 );
setEffAlphaKey( spep_0-4 + 152, ctGa, 255 );
setEffAlphaKey( spep_0-4 + 154, ctGa, 64 );
setEffAlphaKey( spep_0-4 + 156, ctGa, 0 );

--書き文字　ドガガ
ctDogaga = entryEffectLife( spep_0-2 + 166,  10017, 138, 0x100, -1, 0, -18.3, 344 );
setEffMoveKey( spep_0-2 + 166, ctDogaga, -18.3, 344 , 0 );
setEffMoveKey( spep_0-2 + 168, ctDogaga, -8.5, 360.4 , 0 );
setEffMoveKey( spep_0-2 + 170, ctDogaga, 21.3, 373 , 0 );
setEffMoveKey( spep_0-2 + 172, ctDogaga, 24.8, 384.1 , 0 );
setEffMoveKey( spep_0-2 + 174, ctDogaga, 19.5, 388 , 0 );
setEffMoveKey( spep_0-2 + 176, ctDogaga, 37.4, 386.7 , 0 );
setEffMoveKey( spep_0-2 + 178, ctDogaga, 18.7, 385.3 , 0 );
setEffMoveKey( spep_0-2 + 180, ctDogaga, 29.3, 376.6 , 0 );
setEffMoveKey( spep_0-2 + 182, ctDogaga, 14.6, 387.1 , 0 );
setEffMoveKey( spep_0-2 + 184, ctDogaga, 33, 372.5 , 0 );
setEffMoveKey( spep_0-2 + 186, ctDogaga, 19.2, 387.7 , 0 );
setEffMoveKey( spep_0-2 + 188, ctDogaga, 33.8, 382.8 , 0 );
setEffMoveKey( spep_0-2 + 190, ctDogaga, 22.9, 391.1 , 0 );
setEffMoveKey( spep_0-2 + 192, ctDogaga, 32.3, 378.6 , 0 );
setEffMoveKey( spep_0-2 + 194, ctDogaga, 31.4, 391.7 , 0 );
setEffMoveKey( spep_0-2 + 196, ctDogaga, 26.8, 377.6 , 0 );
setEffMoveKey( spep_0-2 + 198, ctDogaga, 30.8, 393.2 , 0 );
setEffMoveKey( spep_0-2 + 200, ctDogaga, 19.4, 376.7 , 0 );
setEffMoveKey( spep_0-2 + 202, ctDogaga, 38.7, 387.5 , 0 );
setEffMoveKey( spep_0-2 + 204, ctDogaga, 22.4, 382 , 0 );
setEffMoveKey( spep_0-2 + 206, ctDogaga, 38, 387.6 , 0 );
setEffMoveKey( spep_0-2 + 208, ctDogaga, 27.3, 375.1 , 0 );
setEffMoveKey( spep_0-2 + 210, ctDogaga, 38.6, 387.7 , 0 );
setEffMoveKey( spep_0-2 + 212, ctDogaga, 20.8, 383.9 , 0 );
setEffMoveKey( spep_0-2 + 214, ctDogaga, 36.9, 389.1 , 0 );
setEffMoveKey( spep_0-2 + 216, ctDogaga, 28.3, 375.7 , 0 );
setEffMoveKey( spep_0-2 + 218, ctDogaga, 36, 393.2 , 0 );
setEffMoveKey( spep_0-2 + 220, ctDogaga, 24.2, 375 , 0 );
setEffMoveKey( spep_0-2 + 222, ctDogaga, 42.7, 386.3 , 0 );
setEffMoveKey( spep_0-2 + 224, ctDogaga, 21.1, 384.2 , 0 );
setEffMoveKey( spep_0-2 + 226, ctDogaga, 42.2, 382.1 , 0 );
setEffMoveKey( spep_0-2 + 228, ctDogaga, 25.8, 388.1 , 0 );
setEffMoveKey( spep_0-2 + 230, ctDogaga, 36.2, 377.2 , 0 );
setEffMoveKey( spep_0-2 + 232, ctDogaga, 33.9, 386 , 0 );
setEffMoveKey( spep_0-2 + 234, ctDogaga, 28.4, 389.9 , 0 );
setEffMoveKey( spep_0-2 + 236, ctDogaga, 46.9, 388.6 , 0 );
setEffMoveKey( spep_0-2 + 238, ctDogaga, 27.6, 387.2 , 0 );
setEffMoveKey( spep_0-2 + 240, ctDogaga, 38.5, 378.2 , 0 );
setEffMoveKey( spep_0-2 + 242, ctDogaga, 23.4, 389.1 , 0 );
setEffMoveKey( spep_0-2 + 244, ctDogaga, 42.3, 374 , 0 );
setEffMoveKey( spep_0-2 + 246, ctDogaga, 28.1, 389.6 , 0 );
setEffMoveKey( spep_0-2 + 248, ctDogaga, 43.1, 384.6 , 0 );
setEffMoveKey( spep_0-2 + 250, ctDogaga, 31.9, 393.1 , 0 );
setEffMoveKey( spep_0-2 + 252, ctDogaga, 41.5, 380.3 , 0 );
setEffMoveKey( spep_0-2 + 254, ctDogaga, 40.6, 393.8 , 0 );
setEffMoveKey( spep_0-2 + 256, ctDogaga, 35.9, 379.3 , 0 );
setEffMoveKey( spep_0-2 + 258, ctDogaga, 40, 395.3 , 0 );
setEffMoveKey( spep_0-2 + 260, ctDogaga, 28.3, 378.4 , 0 );
setEffMoveKey( spep_0-2 + 262, ctDogaga, 48.1, 389.4 , 0 );
setEffMoveKey( spep_0-2 + 264, ctDogaga, 31.3, 383.8 , 0 );
setEffMoveKey( spep_0-2 + 266, ctDogaga, 47.3, 389.5 , 0 );
setEffMoveKey( spep_0-2 + 268, ctDogaga, 36.3, 376.7 , 0 );
setEffMoveKey( spep_0-2 + 270, ctDogaga, 47.9, 389.6 , 0 );
setEffMoveKey( spep_0-2 + 272, ctDogaga, 29.6, 385.7 , 0 );
setEffMoveKey( spep_0-2 + 274, ctDogaga, 46.2, 391.1 , 0 );
setEffMoveKey( spep_0-2 + 276, ctDogaga, 37.3, 377.3 , 0 );
setEffMoveKey( spep_0-2 + 278, ctDogaga, 45.3, 395.3 , 0 );
setEffMoveKey( spep_0-2 + 280, ctDogaga, 33.1, 376.5 , 0 );
setEffMoveKey( spep_0-2 + 282, ctDogaga, 52.1, 388.2 , 0 );
setEffMoveKey( spep_0-2 + 284, ctDogaga, 30, 386 , 0 );
setEffMoveKey( spep_0-2 + 286, ctDogaga, 51.6, 383.9 , 0 );
setEffMoveKey( spep_0-2 + 288, ctDogaga, 34.7, 390 , 0 );
setEffMoveKey( spep_0-2 + 290, ctDogaga, 45.4, 378.8 , 0 );
setEffMoveKey( spep_0-2 + 292, ctDogaga, 43, 387.8 , 0 );
setEffMoveKey( spep_0-2 + 294, ctDogaga, 37.4, 391.9 , 0 );
setEffMoveKey( spep_0-2 + 296, ctDogaga, 56.4, 390.5 , 0 );
setEffMoveKey( spep_0-2 + 298, ctDogaga, 36.6, 389.1 , 0 );
setEffMoveKey( spep_0-2 + 300, ctDogaga, 47.7, 379.8 , 0 );
setEffMoveKey( spep_0-2 + 302, ctDogaga, 49, 396.1 , 0 );
setEffMoveKey( spep_0-2 + 304, ctDogaga, 54.5, 429.5 , 0 );

setEffScaleKey( spep_0-2 + 166, ctDogaga, 1.92, 1.92 );
setEffScaleKey( spep_0-2 + 168, ctDogaga, 2.18, 2.18 );
setEffScaleKey( spep_0-2 + 170, ctDogaga, 2.44, 2.44 );
setEffScaleKey( spep_0-2 + 172, ctDogaga, 2.71, 2.71 );
setEffScaleKey( spep_0-2 + 176, ctDogaga, 2.71, 2.71 );
setEffScaleKey( spep_0-2 + 178, ctDogaga, 2.72, 2.72 );
setEffScaleKey( spep_0-2 + 184, ctDogaga, 2.72, 2.72 );
setEffScaleKey( spep_0-2 + 186, ctDogaga, 2.73, 2.73 );
setEffScaleKey( spep_0-2 + 192, ctDogaga, 2.73, 2.73 );
setEffScaleKey( spep_0-2 + 194, ctDogaga, 2.74, 2.74 );
setEffScaleKey( spep_0-2 + 200, ctDogaga, 2.74, 2.74 );
setEffScaleKey( spep_0-2 + 202, ctDogaga, 2.75, 2.75 );
setEffScaleKey( spep_0-2 + 208, ctDogaga, 2.75, 2.75 );
setEffScaleKey( spep_0-2 + 210, ctDogaga, 2.76, 2.76 );
setEffScaleKey( spep_0-2 + 216, ctDogaga, 2.76, 2.76 );
setEffScaleKey( spep_0-2 + 218, ctDogaga, 2.77, 2.77 );
setEffScaleKey( spep_0-2 + 224, ctDogaga, 2.77, 2.77 );
setEffScaleKey( spep_0-2 + 226, ctDogaga, 2.78, 2.78 );
setEffScaleKey( spep_0-2 + 232, ctDogaga, 2.78, 2.78 );
setEffScaleKey( spep_0-2 + 234, ctDogaga, 2.79, 2.79 );
setEffScaleKey( spep_0-2 + 240, ctDogaga, 2.79, 2.79 );
setEffScaleKey( spep_0-2 + 242, ctDogaga, 2.8, 2.8 );
setEffScaleKey( spep_0-2 + 248, ctDogaga, 2.8, 2.8 );
setEffScaleKey( spep_0-2 + 250, ctDogaga, 2.81, 2.81 );
setEffScaleKey( spep_0-2 + 256, ctDogaga, 2.81, 2.81 );
setEffScaleKey( spep_0-2 + 258, ctDogaga, 2.82, 2.82 );
setEffScaleKey( spep_0-2 + 264, ctDogaga, 2.82, 2.82 );
setEffScaleKey( spep_0-2 + 266, ctDogaga, 2.83, 2.83 );
setEffScaleKey( spep_0-2 + 272, ctDogaga, 2.83, 2.83 );
setEffScaleKey( spep_0-2 + 274, ctDogaga, 2.84, 2.84 );
setEffScaleKey( spep_0-2 + 280, ctDogaga, 2.84, 2.84 );
setEffScaleKey( spep_0-2 + 282, ctDogaga, 2.85, 2.85 );
setEffScaleKey( spep_0-2 + 288, ctDogaga, 2.85, 2.85 );
setEffScaleKey( spep_0-2 + 290, ctDogaga, 2.86, 2.86 );
setEffScaleKey( spep_0-2 + 296, ctDogaga, 2.86, 2.86 );
setEffScaleKey( spep_0-2 + 298, ctDogaga, 2.87, 2.87 );
setEffScaleKey( spep_0-2 + 302, ctDogaga, 2.87, 2.87 );
setEffScaleKey( spep_0-2 + 304, ctDogaga, 3.04, 3.04 );

setEffRotateKey( spep_0-2 + 166, ctDogaga, 10.5 );
setEffRotateKey( spep_0-2 + 304, ctDogaga, 10.5 );

setEffAlphaKey( spep_0-2 + 166, ctDogaga, 255 );
setEffAlphaKey( spep_0-2 + 302, ctDogaga, 255 );
setEffAlphaKey( spep_0-2 + 304, ctDogaga, 0 );

--書き文字　バキッ　10020
ctBaki = entryEffectLife( spep_0 + 412,  10020, 18, 0x100, -1, 0, 200.5, 322.8 );
setEffMoveKey( spep_0 + 412, ctBaki, 200.5, 322.8 , 0 );
setEffMoveKey( spep_0 + 414, ctBaki, 198.9, 337.3 , 0 );
setEffMoveKey( spep_0 + 416, ctBaki, 201, 337 , 0 );
setEffMoveKey( spep_0 + 418, ctBaki, 199.2, 348.8 , 0 );
setEffMoveKey( spep_0 + 420, ctBaki, 201.4, 342 , 0 );
setEffMoveKey( spep_0 + 422, ctBaki, 197.1, 361.1 , 0 );
setEffMoveKey( spep_0 + 424, ctBaki, 208.6, 357.5 , 0 );
setEffMoveKey( spep_0 + 426, ctBaki, 201.7, 358.4 , 0 );
setEffMoveKey( spep_0 + 428, ctBaki, 212.5, 367.8 , 0 );
setEffMoveKey( spep_0 + 430, ctBaki, 216.9, 369.4 , 0 );

setEffScaleKey( spep_0 + 412, ctBaki, 1.58, 1.58 );
setEffScaleKey( spep_0 + 414, ctBaki, 1.67, 1.67 );
setEffScaleKey( spep_0 + 416, ctBaki, 1.7, 1.7 );
setEffScaleKey( spep_0 + 418, ctBaki, 1.77, 1.77 );
setEffScaleKey( spep_0 + 420, ctBaki, 1.82, 1.82 );
setEffScaleKey( spep_0 + 422, ctBaki, 1.86, 1.86 );
setEffScaleKey( spep_0 + 424, ctBaki, 1.88, 1.88 );
setEffScaleKey( spep_0 + 426, ctBaki, 1.89, 1.89 );
setEffScaleKey( spep_0 + 428, ctBaki, 2.14, 2.14 );
setEffScaleKey( spep_0 + 430, ctBaki, 2.22, 2.22 );

setEffRotateKey( spep_0 + 412, ctBaki, 35.2 );

setEffAlphaKey( spep_0 + 412, ctBaki, 255 );
setEffAlphaKey( spep_0 + 426, ctBaki, 255 );
setEffAlphaKey( spep_0 + 428, ctBaki, 64 );
setEffAlphaKey( spep_0 + 430, ctBaki, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 308, 1, 0 );
setDisp( spep_0 + 402, 1, 1 );
setDisp( spep_0 + 444, 1, 0 );

changeAnime( spep_0 + 0, 1, 104 );
changeAnime( spep_0-2 + 180, 1, 112 );
changeAnime( spep_0-2 + 186, 1, 104 );
changeAnime( spep_0-2 + 202, 1, 109 );
changeAnime( spep_0-2 + 210, 1, 104 );
changeAnime( spep_0-2 + 226, 1, 106 );
changeAnime( spep_0-2 + 242, 1, 108 );
changeAnime( spep_0-2 + 258, 1, 106 );
changeAnime( spep_0-2 + 266, 1, 108 );
changeAnime( spep_0-2 + 274, 1, 106 );
changeAnime( spep_0-2 + 282, 1, 108 );
changeAnime( spep_0-2 + 290, 1, 106 );
changeAnime( spep_0-2 + 298, 1, 108 );
changeAnime( spep_0-2 + 304, 1, 106 );
changeAnime( spep_0 + 406-4, 1, 106 );

setMoveKey( spep_0 + 0, 1, 2522.5, 5.9 , 0 );
setMoveKey( spep_0-2 + 82, 1, 2522.5, 5.9 , 0 );
setMoveKey( spep_0-2 + 84, 1, 2349.5, -7.6 , 0 );
setMoveKey( spep_0-2 + 86, 1, 2246.5, 19.1 , 0 );
setMoveKey( spep_0-2 + 88, 1, 2158, -6.7 , 0 );
setMoveKey( spep_0-2 + 90, 1, 2063, 20.1 , 0 );
setMoveKey( spep_0-2 + 92, 1, 1972.6, -5.2 , 0 );
setMoveKey( spep_0-2 + 94, 1, 1884.3, 17.4 , 0 );
setMoveKey( spep_0-2 + 96, 1, 1815.5, -5.9 , 0 );
setMoveKey( spep_0-2 + 98, 1, 1732, 16.9 , 0 );
setMoveKey( spep_0-2 + 100, 1, 1637, -0.6 , 0 );
setMoveKey( spep_0-2 + 102, 1, 1580.5, 13.8 , 0 );
setMoveKey( spep_0-2 + 104, 1, 1490.2, 7.1 , 0 );
setMoveKey( spep_0-2 + 106, 1, 1439.9, 4.6 , 0 );
setMoveKey( spep_0-2 + 108, 1, 1352.7, 11.3 , 0 );
setMoveKey( spep_0-2 + 110, 1, 1298, 6.4 , 0 );
setMoveKey( spep_0-2 + 112, 1, 1216.6, 10.9 , 0 );
setMoveKey( spep_0-2 + 114, 1, 1159.6, -2.1 , 0 );
setMoveKey( spep_0-2 + 116, 1, 1089.6, 16.9 , 0 );
setMoveKey( spep_0-2 + 118, 1, 1018.4, -1.1 , 0 );
setMoveKey( spep_0-2 + 120, 1, 937.7, 9.8 , 0 );
setMoveKey( spep_0-2 + 122, 1, 863.6, -2.1 , 0 );
setMoveKey( spep_0-2 + 124, 1, 781.7, 12.7 , 0 );
setMoveKey( spep_0-2 + 126, 1, 703.5, -1.5 , 0 );
setMoveKey( spep_0-2 + 128, 1, 620.4, 12.2 , 0 );
setMoveKey( spep_0-2 + 130, 1, 535.2, 1.9 , 0 );
setMoveKey( spep_0-2 + 132, 1, 462, 6.4 , 0 );
setMoveKey( spep_0-2 + 134, 1, 368.8, 1.6 , 0 );
setMoveKey( spep_0-2 + 136, 1, 288.9, 12.7 , 0 );
setMoveKey( spep_0-2 + 138, 1, 208.2, 1.5 , 0 );
setMoveKey( spep_0-2 + 140, 1, 135.9, 5.9 , 0 );
setMoveKey( spep_0-2 + 142, 1, 79.4, 20 , 0 );
setMoveKey( spep_0-2 + 144, 1, 97.6, 24.7 , 0 );
setMoveKey( spep_0-2 + 146, 1, 154.3, 21.1 , 0 );
setMoveKey( spep_0-2 + 148, 1, 154.2, 43.7 , 0 );
setMoveKey( spep_0-2 + 150, 1, 178.6, 31.7 , 0 );
setMoveKey( spep_0-2 + 152, 1, 168.4, 45.8 , 0 );
setMoveKey( spep_0-2 + 154, 1, 196, 40.5 , 0 );
setMoveKey( spep_0-2 + 156, 1, 179.6, 46.2 , 0 );
setMoveKey( spep_0-2 + 158, 1, 166.2, 39.3 , 0 );
setMoveKey( spep_0-2 + 160, 1, 135.9, 29.6 , 0 );
setMoveKey( spep_0-2 + 162, 1, 80.9, 33.6 , 0 );
setMoveKey( spep_0-2 + 164, 1, 39.3, 25.8 , 0 );
setMoveKey( spep_0-2 + 166, 1, -1.7, 22.2 , 0 );
setMoveKey( spep_0-2 + 168, 1, 65.3, 22.6 , 0 );
setMoveKey( spep_0-2 + 170, 1, 72.1, 36 , 0 );
setMoveKey( spep_0-2 + 172, 1, 61.1, 25.8 , 0 );
setMoveKey( spep_0-2 + 174, 1, 79.2, 33.9 , 0 );
setMoveKey( spep_0-2 + 176, 1, 72.6, 19.8 , 0 );
setMoveKey( spep_0-2 + 179, 1, 76.8, 13.4 , 0 );
setMoveKey( spep_0-2 + 180, 1, 73.6, 9.1 , 0 );
setMoveKey( spep_0-2 + 182, 1, 78.5, 7.8 , 0 );
setMoveKey( spep_0-2 + 185, 1, 57.3, -0.6 , 0 );
setMoveKey( spep_0-2 + 186, 1, 92.3, -0.5 , 0 );
setMoveKey( spep_0-2 + 188, 1, 77.1, -1.2 , 0 );
setMoveKey( spep_0-2 + 190, 1, 76.8, -14.3 , 0 );
setMoveKey( spep_0-2 + 192, 1, 73.2, -4.3 , 0 );
setMoveKey( spep_0-2 + 194, 1, 110.1, -11.9 , 0 );
setMoveKey( spep_0-2 + 196, 1, 104.1, -1.6 , 0 );
setMoveKey( spep_0-2 + 198, 1, 116.4, -11.9 , 0 );
setMoveKey( spep_0-2 + 201, 1, 113.1, 5.6 , 0 );
setMoveKey( spep_0-2 + 202, 1, 163.6, -6 , 0 );
setMoveKey( spep_0-2 + 204, 1, 153.9, 6.2 , 0 );
setMoveKey( spep_0-2 + 206, 1, 166.4, 1.2 , 0 );
setMoveKey( spep_0-2 + 209, 1, 150.4, 7.3 , 0 );
setMoveKey( spep_0-2 + 210, 1, 139.3, 2.8 , 0 );
setMoveKey( spep_0-2 + 212, 1, 139.2, 4.8 , 0 );
setMoveKey( spep_0-2 + 214, 1, 139.6, 14.4 , 0 );
setMoveKey( spep_0-2 + 216, 1, 148.6, 25.9 , 0 );
setMoveKey( spep_0-2 + 218, 1, 137.3, 22.3 , 0 );
setMoveKey( spep_0-2 + 220, 1, 140.4, 32.6 , 0 );
setMoveKey( spep_0-2 + 222, 1, 159, 31.1 , 0 );
setMoveKey( spep_0-2 + 225, 1, 151.9, 39.3 , 0 );
setMoveKey( spep_0-2 + 226, 1, 80.1, 60.3 , 0 );
setMoveKey( spep_0-2 + 228, 1, 80.4, 58.5 , 0 );
setMoveKey( spep_0-2 + 230, 1, 77.3, 52.9 , 0 );
setMoveKey( spep_0-2 + 232, 1, 79.4, 56 , 0 );
setMoveKey( spep_0-2 + 234, 1, 68.1, 56.5 , 0 );
setMoveKey( spep_0-2 + 236, 1, 71.5, 43.9 , 0 );
setMoveKey( spep_0-2 + 238, 1, 73.8, 49.2 , 0 );
setMoveKey( spep_0-2 + 241, 1, 82.2, 42.8 , 0 );
setMoveKey( spep_0-2 + 242, 1, 91.5, 197 , 0 );
setMoveKey( spep_0-2 + 244, 1, 98.3, 185.3 , 0 );
setMoveKey( spep_0-2 + 246, 1, 93.2, 221.1 , 0 );
setMoveKey( spep_0-2 + 248, 1, 81, 205 , 0 );
setMoveKey( spep_0-2 + 250, 1, 89.3, 197.3 , 0 );
setMoveKey( spep_0-2 + 252, 1, 88.5, 138.8 , 0 );
setMoveKey( spep_0-2 + 254, 1, 107.6, 121.9 , 0 );
setMoveKey( spep_0-2 + 257, 1, 130.2, 91.3 , 0 );
setMoveKey( spep_0-2 + 258, 1, 129.4, 59.1 , 0 );
setMoveKey( spep_0-2 + 260, 1, 118.3, 61.8 , 0 );
setMoveKey( spep_0-2 + 262, 1, 122.2, 65.8 , 0 );
setMoveKey( spep_0-2 + 265, 1, 125.7, 78.1 , 0 );
setMoveKey( spep_0-2 + 266, 1, 85.8, 78.1 , 0 );
setMoveKey( spep_0-2 + 268, 1, 85.1, 102.1 , 0 );
setMoveKey( spep_0-2 + 270, 1, 64.3, 92.1 , 0 );
setMoveKey( spep_0-2 + 273, 1, 73.2, 112.3 , 0 );
setMoveKey( spep_0-2 + 274, 1, 34.7, 11.9 , 0 );
setMoveKey( spep_0-2 + 276, 1, 24.9, -2.7 , 0 );
setMoveKey( spep_0-2 + 278, 1, 15.3, -12.7 , 0 );
setMoveKey( spep_0-2 + 281, 1, 29.4, -28.5 , 0 );
setMoveKey( spep_0-2 + 282, 1, 25.4, 36.1 , 0 );
setMoveKey( spep_0-2 + 284, 1, 53.9, 53.9 , 0 );
setMoveKey( spep_0-2 + 286, 1, 70.6, 59.8 , 0 );
setMoveKey( spep_0-2 + 289, 1, 101, 62.2 , 0 );
setMoveKey( spep_0-2 + 290, 1, 103.9, 45.9 , 0 );
setMoveKey( spep_0-2 + 292, 1, 121.6, 49.4 , 0 );
setMoveKey( spep_0-2 + 294, 1, 138.9, 58.6 , 0 );
setMoveKey( spep_0-2 + 297, 1, 152.6, 52.5 , 0 );
setMoveKey( spep_0-2 + 298, 1, 131, 72.1 , 0 );
setMoveKey( spep_0-2 + 300, 1, 111.5, 62.3 , 0 );
setMoveKey( spep_0-2 + 303, 1, 85.2, 25.7 , 0 );
setMoveKey( spep_0-2 + 304, 1, 148.5, 91.8 , 0 );
setMoveKey( spep_0-2 + 307, 1, 65.4, 73.8 , 0 );
setMoveKey( spep_0 + 0, 1, 2522.5, 5.9 , 0 );
setMoveKey( spep_0-3 + 82, 1, 2522.5, 5.9 , 0 );
setMoveKey( spep_0-3 + 84, 1, 2349.5, -7.6 , 0 );
setMoveKey( spep_0-3 + 86, 1, 2246.5, 19.1 , 0 );
setMoveKey( spep_0-3 + 88, 1, 2158, -6.7 , 0 );
setMoveKey( spep_0-3 + 90, 1, 2063, 20.1 , 0 );
setMoveKey( spep_0-3 + 92, 1, 1972.6, -5.2 , 0 );
setMoveKey( spep_0-3 + 94, 1, 1884.3, 17.4 , 0 );
setMoveKey( spep_0-3 + 96, 1, 1815.5, -5.9 , 0 );
setMoveKey( spep_0-3 + 98, 1, 1732, 16.9 , 0 );
setMoveKey( spep_0-3 + 100, 1, 1637, -0.6 , 0 );
setMoveKey( spep_0-3 + 102, 1, 1580.5, 13.8 , 0 );
setMoveKey( spep_0-3 + 104, 1, 1490.2, 7.1 , 0 );
setMoveKey( spep_0-3 + 106, 1, 1439.9, 4.6 , 0 );
setMoveKey( spep_0-3 + 108, 1, 1352.7, 11.3 , 0 );
setMoveKey( spep_0-3 + 110, 1, 1298, 6.4 , 0 );
setMoveKey( spep_0-3 + 112, 1, 1216.6, 10.9 , 0 );
setMoveKey( spep_0-3 + 114, 1, 1159.6, -2.1 , 0 );
setMoveKey( spep_0-3 + 116, 1, 1089.6, 16.9 , 0 );
setMoveKey( spep_0-3 + 118, 1, 1018.4, -1.1 , 0 );
setMoveKey( spep_0-3 + 120, 1, 937.7, 9.8 , 0 );
setMoveKey( spep_0-3 + 122, 1, 863.6, -2.1 , 0 );
setMoveKey( spep_0-3 + 124, 1, 781.7, 12.7 , 0 );
setMoveKey( spep_0-3 + 126, 1, 703.5, -1.5 , 0 );
setMoveKey( spep_0-3 + 128, 1, 620.4, 12.2 , 0 );
setMoveKey( spep_0-3 + 130, 1, 535.2, 1.9 , 0 );
setMoveKey( spep_0-3 + 132, 1, 462, 6.4 , 0 );
setMoveKey( spep_0-3 + 134, 1, 368.8, 1.6 , 0 );
setMoveKey( spep_0-3 + 136, 1, 288.9, 12.7 , 0 );
setMoveKey( spep_0-3 + 138, 1, 208.2, 1.5 , 0 );
setMoveKey( spep_0-3 + 140, 1, 135.9, 5.9 , 0 );
setMoveKey( spep_0-3 + 142, 1, 79.4, 20 , 0 );
setMoveKey( spep_0-3 + 144, 1, 97.6, 24.7 , 0 );
setMoveKey( spep_0-3 + 146, 1, 154.3, 21.1 , 0 );
setMoveKey( spep_0-3 + 148, 1, 154.2, 43.7 , 0 );
setMoveKey( spep_0-3 + 150, 1, 178.6, 31.7 , 0 );
setMoveKey( spep_0-3 + 152, 1, 168.4, 45.8 , 0 );
setMoveKey( spep_0-3 + 154, 1, 196, 40.5 , 0 );
setMoveKey( spep_0-3 + 156, 1, 179.6, 46.2 , 0 );
setMoveKey( spep_0-3 + 158, 1, 166.2, 39.3 , 0 );
setMoveKey( spep_0-3 + 160, 1, 135.9, 29.6 , 0 );
setMoveKey( spep_0-3 + 162, 1, 80.9, 33.6 , 0 );
setMoveKey( spep_0-3 + 164, 1, 39.3, 25.8 , 0 );
setMoveKey( spep_0-3 + 166, 1, -1.7, 22.2 , 0 );
setMoveKey( spep_0-3 + 168, 1, 65.3, 22.6 , 0 );
setMoveKey( spep_0-3 + 170, 1, 72.1, 36 , 0 );
setMoveKey( spep_0-3 + 172, 1, 61.1, 25.8 , 0 );
setMoveKey( spep_0-3 + 174, 1, 79.2, 33.9 , 0 );
setMoveKey( spep_0-3 + 176, 1, 72.6, 19.8 , 0 );
setMoveKey( spep_0-3 + 179, 1, 76.8, 13.4 , 0 );
setMoveKey( spep_0-3 + 180, 1, 73.6, 9.1 , 0 );
setMoveKey( spep_0-3 + 182, 1, 78.5, 7.8 , 0 );
setMoveKey( spep_0-3 + 185, 1, 57.3, -0.6 , 0 );
setMoveKey( spep_0-3 + 186, 1, 92.3, -0.5 , 0 );
setMoveKey( spep_0-3 + 188, 1, 77.1, -1.2 , 0 );
setMoveKey( spep_0-3 + 190, 1, 76.8, -14.3 , 0 );
setMoveKey( spep_0-3 + 192, 1, 73.2, -4.3 , 0 );
setMoveKey( spep_0-3 + 194, 1, 110.1, -11.9 , 0 );
setMoveKey( spep_0-3 + 196, 1, 104.1, -1.6 , 0 );
setMoveKey( spep_0-3 + 198, 1, 116.4, -11.9 , 0 );
setMoveKey( spep_0-3 + 201, 1, 113.1, 5.6 , 0 );
setMoveKey( spep_0-3 + 202, 1, 163.6, -6 , 0 );
setMoveKey( spep_0-3 + 204, 1, 153.9, 6.2 , 0 );
setMoveKey( spep_0-3 + 206, 1, 166.4, 1.2 , 0 );
setMoveKey( spep_0-3 + 209, 1, 150.4, 7.3 , 0 );
setMoveKey( spep_0-3 + 210, 1, 139.3, 2.8 , 0 );
setMoveKey( spep_0-3 + 212, 1, 139.2, 4.8 , 0 );
setMoveKey( spep_0-3 + 214, 1, 139.6, 14.4 , 0 );
setMoveKey( spep_0-3 + 216, 1, 148.6, 25.9 , 0 );
setMoveKey( spep_0-3 + 218, 1, 137.3, 22.3 , 0 );
setMoveKey( spep_0-3 + 220, 1, 140.4, 32.6 , 0 );
setMoveKey( spep_0-3 + 222, 1, 159, 31.1 , 0 );
setMoveKey( spep_0-3 + 225, 1, 151.9, 39.3 , 0 );
setMoveKey( spep_0-3 + 226, 1, 80.1, 60.3 , 0 );
setMoveKey( spep_0-3 + 228, 1, 80.4, 58.5 , 0 );
setMoveKey( spep_0-3 + 230, 1, 77.3, 52.9 , 0 );
setMoveKey( spep_0-3 + 232, 1, 79.4, 56 , 0 );
setMoveKey( spep_0-3 + 234, 1, 68.1, 56.5 , 0 );
setMoveKey( spep_0-3 + 236, 1, 71.5, 43.9 , 0 );
setMoveKey( spep_0-3 + 238, 1, 73.8, 49.2 , 0 );
setMoveKey( spep_0-3 + 241, 1, 82.2, 42.8 , 0 );
setMoveKey( spep_0-3 + 242, 1, 91.5, 197 , 0 );
setMoveKey( spep_0-3 + 244, 1, 98.3, 185.3 , 0 );
setMoveKey( spep_0-3 + 246, 1, 93.2, 221.1 , 0 );
setMoveKey( spep_0-3 + 248, 1, 81, 205 , 0 );
setMoveKey( spep_0-3 + 250, 1, 89.3, 197.3 , 0 );
setMoveKey( spep_0-3 + 252, 1, 88.5, 138.8 , 0 );
setMoveKey( spep_0-3 + 254, 1, 107.6, 121.9 , 0 );
setMoveKey( spep_0-3 + 257, 1, 130.2, 91.3 , 0 );
setMoveKey( spep_0-3 + 258, 1, 129.4, 59.1 , 0 );
setMoveKey( spep_0-3 + 260, 1, 118.3, 61.8 , 0 );
setMoveKey( spep_0-3 + 262, 1, 122.2, 65.8 , 0 );
setMoveKey( spep_0-3 + 265, 1, 125.7, 78.1 , 0 );
setMoveKey( spep_0-3 + 266, 1, 85.8, 78.1 , 0 );
setMoveKey( spep_0-3 + 268, 1, 85.1, 102.1 , 0 );
setMoveKey( spep_0-3 + 270, 1, 64.3, 92.1 , 0 );
setMoveKey( spep_0-3 + 273, 1, 73.2, 112.3 , 0 );
setMoveKey( spep_0-3 + 274, 1, 34.7, 11.9 , 0 );
setMoveKey( spep_0-3 + 276, 1, 24.9, -2.7 , 0 );
setMoveKey( spep_0-3 + 278, 1, 15.3, -12.7 , 0 );
setMoveKey( spep_0-3 + 281, 1, 29.4, -28.5 , 0 );
setMoveKey( spep_0-3 + 282, 1, 25.4, 36.1 , 0 );
setMoveKey( spep_0-3 + 284, 1, 53.9, 53.9 , 0 );
setMoveKey( spep_0-3 + 286, 1, 70.6, 59.8 , 0 );
setMoveKey( spep_0-3 + 289, 1, 101, 62.2 , 0 );
setMoveKey( spep_0-3 + 290, 1, 103.9, 45.9 , 0 );
setMoveKey( spep_0-3 + 292, 1, 121.6, 49.4 , 0 );
setMoveKey( spep_0-3 + 294, 1, 138.9, 58.6 , 0 );
setMoveKey( spep_0-3 + 297, 1, 152.6, 52.5 , 0 );
setMoveKey( spep_0-3 + 298, 1, 131, 72.1 , 0 );
setMoveKey( spep_0-3 + 300, 1, 111.5, 62.3 , 0 );
setMoveKey( spep_0-3 + 303, 1, 85.2, 25.7 , 0 );
setMoveKey( spep_0-3 + 304, 1, 148.5, 91.8 , 0 );
setMoveKey( spep_0-3 + 307, 1, 65.4, 73.8 , 0 );

setScaleKey( spep_0-2 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 140, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 142, 1, 1.49, 1.49 );
setScaleKey( spep_0-2 + 144, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 146, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 148, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 150, 1, 1.46, 1.46 );
setScaleKey( spep_0-2 + 152, 1, 1.44, 1.44 );
setScaleKey( spep_0-2 + 154, 1, 1.43, 1.43 );
setScaleKey( spep_0-2 + 156, 1, 1.43, 1.43 );
setScaleKey( spep_0-2 + 158, 1, 1.42, 1.42 );
setScaleKey( spep_0-2 + 160, 1, 1.42, 1.42 );
setScaleKey( spep_0-2 + 162, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 164, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 166, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 168, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 170, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 172, 1, 1.35, 1.35 );
setScaleKey( spep_0-2 + 174, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 176, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 179, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 180, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 182, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 185, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 186, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 188, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 190, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 192, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 194, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 196, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 198, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 201, 1, 1.35, 1.35 );
setScaleKey( spep_0-2 + 202, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 204, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 206, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 209, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 210, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 212, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 214, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 216, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 218, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 220, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 222, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 225, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 226, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 228, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 230, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 232, 1, 1.35, 1.35 );
setScaleKey( spep_0-2 + 234, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 236, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 238, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 241, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 242, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 244, 1, 1.35, 1.35 );
setScaleKey( spep_0-2 + 246, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 248, 1, 1.36, 1.36 );
setScaleKey( spep_0-2 + 250, 1, 1.49, 1.49 );
setScaleKey( spep_0-2 + 252, 1, 1.43, 1.43 );
setScaleKey( spep_0-2 + 254, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 257, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 258, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 260, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 262, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 265, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 266, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 268, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 270, 1, 1.35, 1.35 );
setScaleKey( spep_0-2 + 273, 1, 1.47, 1.47 );
setScaleKey( spep_0-2 + 274, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 276, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 278, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 281, 1, 1.5, 1.5 );
setScaleKey( spep_0-2 + 282, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 284, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 286, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 289, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 290, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 292, 1, 1.37, 1.37 );
setScaleKey( spep_0-2 + 294, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 297, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 298, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 300, 1, 1.35, 1.35 );
setScaleKey( spep_0-2 + 303, 1, 1.38, 1.38 );
setScaleKey( spep_0-2 + 304, 1, 1.48, 1.48 );
setScaleKey( spep_0-2 + 307, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 140, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 142, 1, 1.49, 1.49 );
setScaleKey( spep_0-3 + 144, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 146, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 148, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 150, 1, 1.46, 1.46 );
setScaleKey( spep_0-3 + 152, 1, 1.44, 1.44 );
setScaleKey( spep_0-3 + 154, 1, 1.43, 1.43 );
setScaleKey( spep_0-3 + 156, 1, 1.43, 1.43 );
setScaleKey( spep_0-3 + 158, 1, 1.42, 1.42 );
setScaleKey( spep_0-3 + 160, 1, 1.42, 1.42 );
setScaleKey( spep_0-3 + 162, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 164, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 166, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 168, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 170, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 172, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 174, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 176, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 179, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 180, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 182, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 185, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 186, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 188, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 190, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 192, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 194, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 196, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 198, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 201, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 202, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 204, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 206, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 209, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 210, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 212, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 214, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 216, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 218, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 220, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 222, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 225, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 226, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 228, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 230, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 232, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 234, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 236, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 238, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 241, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 242, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 244, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 246, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 248, 1, 1.36, 1.36 );
setScaleKey( spep_0-3 + 250, 1, 1.49, 1.49 );
setScaleKey( spep_0-3 + 252, 1, 1.43, 1.43 );
setScaleKey( spep_0-3 + 254, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 257, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 258, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 260, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 262, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 265, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 266, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 268, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 270, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 273, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 274, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 276, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 278, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 281, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 282, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 284, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 286, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 289, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 290, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 292, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 294, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 297, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 298, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 300, 1, 1.35, 1.35 );
setScaleKey( spep_0-3 + 303, 1, 1.38, 1.38 );
setScaleKey( spep_0-3 + 304, 1, 1.48, 1.48 );
setScaleKey( spep_0-3 + 307, 1, 1.38, 1.38 );

setRotateKey( spep_0-2 + 0, 1, 0 );
setRotateKey( spep_0-2 + 140, 1, 0 );
setRotateKey( spep_0-2 + 142, 1, -9.9 );
setRotateKey( spep_0-2 + 144, 1, -6.8 );
setRotateKey( spep_0-2 + 146, 1, -4.6 );
setRotateKey( spep_0-2 + 148, 1, -3 );
setRotateKey( spep_0-2 + 150, 1, -1.7 );
setRotateKey( spep_0-2 + 152, 1, -0.8 );
setRotateKey( spep_0-2 + 154, 1, -0.1 );
setRotateKey( spep_0-2 + 156, 1, 0.5 );
setRotateKey( spep_0-2 + 158, 1, 0.9 );
setRotateKey( spep_0-2 + 160, 1, 1.1 );
setRotateKey( spep_0-2 + 162, 1, 1.3 );
setRotateKey( spep_0-2 + 164, 1, 1.4 );
setRotateKey( spep_0-2 + 166, 1, 1.4 );
setRotateKey( spep_0-2 + 168, 1, -1.6 );
setRotateKey( spep_0-2 + 170, 1, -1.3 );
setRotateKey( spep_0-2 + 172, 1, -1 );
setRotateKey( spep_0-2 + 174, 1, -0.7 );
setRotateKey( spep_0-2 + 176, 1, -5.1 );
setRotateKey( spep_0-2 + 179, 1, -9.5 );
setRotateKey( spep_0-2 + 180, 1, -13.9 );
setRotateKey( spep_0-2 + 182, 1, -12.7 );
setRotateKey( spep_0-2 + 185, 1, -11.5 );
setRotateKey( spep_0-2 + 186, 1, -12.5 );
setRotateKey( spep_0-2 + 188, 1, -12.8 );
setRotateKey( spep_0-2 + 190, 1, -13.1 );
setRotateKey( spep_0-2 + 192, 1, -13.5 );
setRotateKey( spep_0-2 + 194, 1, -38.7 );
setRotateKey( spep_0-2 + 196, 1, -38.6 );
setRotateKey( spep_0-2 + 201, 1, -38.6 );
setRotateKey( spep_0-2 + 202, 1, 10.6 );
setRotateKey( spep_0-2 + 204, 1, 10.9 );
setRotateKey( spep_0-2 + 206, 1, 11.3 );
setRotateKey( spep_0-2 + 209, 1, 11.7 );
setRotateKey( spep_0-2 + 210, 1, -38.6 );
setRotateKey( spep_0-2 + 212, 1, -33.7 );
setRotateKey( spep_0-2 + 214, 1, -28.8 );
setRotateKey( spep_0-2 + 216, 1, -23.9 );
setRotateKey( spep_0-2 + 225, 1, -23.9 );
setRotateKey( spep_0-2 + 226, 1, -45.4 );
setRotateKey( spep_0-2 + 228, 1, -41.3 );
setRotateKey( spep_0-2 + 230, 1, -37.3 );
setRotateKey( spep_0-2 + 232, 1, -33.2 );
setRotateKey( spep_0-2 + 234, 1, -32.9 );
setRotateKey( spep_0-2 + 236, 1, -32.6 );
setRotateKey( spep_0-2 + 238, 1, -32.3 );
setRotateKey( spep_0-2 + 241, 1, -32 );
setRotateKey( spep_0-2 + 242, 1, -42.8 );
setRotateKey( spep_0-2 + 244, 1, -37.4 );
setRotateKey( spep_0-2 + 246, 1, -31.9 );
setRotateKey( spep_0-2 + 248, 1, -26.5 );
setRotateKey( spep_0-2 + 250, 1, -31.9 );
setRotateKey( spep_0-2 + 252, 1, -37.3 );
setRotateKey( spep_0-2 + 254, 1, -42.7 );
setRotateKey( spep_0-2 + 257, 1, -48.1 );
setRotateKey( spep_0-2 + 258, 1, -53.5 );
setRotateKey( spep_0-2 + 260, 1, -46 );
setRotateKey( spep_0-2 + 262, 1, -38.5 );
setRotateKey( spep_0-2 + 265, 1, -31 );
setRotateKey( spep_0-2 + 266, 1, -13.8 );
setRotateKey( spep_0-2 + 268, 1, -13 );
setRotateKey( spep_0-2 + 270, 1, -12.1 );
setRotateKey( spep_0-2 + 273, 1, -11.3 );
setRotateKey( spep_0-2 + 274, 1, -126.4 );
setRotateKey( spep_0-2 + 276, 1, -129.8 );
setRotateKey( spep_0-2 + 278, 1, -133.1 );
setRotateKey( spep_0-2 + 281, 1, -136.4 );
setRotateKey( spep_0-2 + 282, 1, -38.5 );
setRotateKey( spep_0-2 + 289, 1, -38.5 );
setRotateKey( spep_0-2 + 290, 1, -32.5 );
setRotateKey( spep_0-2 + 292, 1, -29.7 );
setRotateKey( spep_0-2 + 294, 1, -26.8 );
setRotateKey( spep_0-2 + 297, 1, -23.9 );
setRotateKey( spep_0-2 + 298, 1, -19.2 );
setRotateKey( spep_0-2 + 300, 1, -30.2 );
setRotateKey( spep_0-2 + 303, 1, -41.3 );
setRotateKey( spep_0-2 + 304, 1, -52.3 );
setRotateKey( spep_0-2 + 307, 1, -50.7 );

setMoveKey( spep_0-4 + 406, 1, -12.3, 4.6 , 0 );
setMoveKey( spep_0-4 + 408, 1, -35, -5.9 , 0 );
setMoveKey( spep_0-4 + 410, 1, -57.5, -15.6 , 0 );
setMoveKey( spep_0-4 + 412, 1, 30.2, -2.8 , 0 );
setMoveKey( spep_0-4 + 414, 1, 59.8, 19.2 , 0 );
setMoveKey( spep_0-4 + 416, 1, 63.1, 21 , 0 );
setMoveKey( spep_0-4 + 418, 1, 79.5, 40.5 , 0 );
setMoveKey( spep_0-4 + 420, 1, 87.2, 36.2 , 0 );
setMoveKey( spep_0-4 + 422, 1, 95.8, 52.5 , 0 );
setMoveKey( spep_0-4 + 424, 1, 102.2, 47.8 , 0 );
setMoveKey( spep_0-4 + 426, 1, 108, 59.4 , 0 );
setMoveKey( spep_0-4 + 428, 1, 106.4, 51 , 0 );
setMoveKey( spep_0-4 + 430, 1, 247.5, 88.1 , 0 );
setMoveKey( spep_0-4 + 432, 1, 310.1, 104.7 , 0 );
setMoveKey( spep_0-4 + 434, 1, 339.1, 106.1 , 0 );
setMoveKey( spep_0-4 + 436, 1, 339.2, 103.9 , 0 );
setMoveKey( spep_0-4 + 438, 1, 326.9, 99 , 0 );
setMoveKey( spep_0-4 + 440, 1, 311, 93.8 , 0 );
setMoveKey( spep_0-4 + 442, 1, 303, 91.4 , 0 );
setMoveKey( spep_0-4 + 448, 1, 703, 91.4 , 0 );
setMoveKey( spep_0-3 + 406, 1, -12.3, 4.6 , 0 );
setMoveKey( spep_0-3 + 408, 1, -35, -5.9 , 0 );
setMoveKey( spep_0-3 + 410, 1, -57.5, -15.6 , 0 );
setMoveKey( spep_0-3 + 412, 1, 30.2, -2.8 , 0 );
setMoveKey( spep_0-3 + 414, 1, 59.8, 19.2 , 0 );
setMoveKey( spep_0-3 + 416, 1, 63.1, 21 , 0 );
setMoveKey( spep_0-3 + 418, 1, 79.5, 40.5 , 0 );
setMoveKey( spep_0-3 + 420, 1, 87.2, 36.2 , 0 );
setMoveKey( spep_0-3 + 422, 1, 95.8, 52.5 , 0 );
setMoveKey( spep_0-3 + 424, 1, 102.2, 47.8 , 0 );
setMoveKey( spep_0-3 + 426, 1, 108, 59.4 , 0 );
setMoveKey( spep_0-3 + 428, 1, 106.4, 51 , 0 );
setMoveKey( spep_0-3 + 430, 1, 247.5, 88.1 , 0 );
setMoveKey( spep_0-3 + 432, 1, 310.1, 104.7 , 0 );
setMoveKey( spep_0-3 + 434, 1, 339.1, 106.1 , 0 );
setMoveKey( spep_0-3 + 436, 1, 339.2, 103.9 , 0 );
setMoveKey( spep_0-3 + 438, 1, 326.9, 99 , 0 );
setMoveKey( spep_0-3 + 440, 1, 311, 93.8 , 0 );
setMoveKey( spep_0-3 + 442, 1, 303, 91.4 , 0 );
setMoveKey( spep_0-3 + 448, 1, 703, 91.4 , 0 );

setScaleKey( spep_0-4 + 406, 1, 1.42, 1.42 );
setScaleKey( spep_0-4 + 408, 1, 1.69, 1.69 );
setScaleKey( spep_0-4 + 410, 1, 1.95, 1.95 );
setScaleKey( spep_0-4 + 428, 1, 1.95, 1.95 );
setScaleKey( spep_0-4 + 430, 1, 1.66, 1.66 );
setScaleKey( spep_0-4 + 432, 1, 1.41, 1.41 );
setScaleKey( spep_0-4 + 434, 1, 1.21, 1.21 );
setScaleKey( spep_0-4 + 436, 1, 1.06, 1.06 );
setScaleKey( spep_0-4 + 438, 1, 0.94, 0.94 );
setScaleKey( spep_0-4 + 440, 1, 0.88, 0.88 );
setScaleKey( spep_0-4 + 442, 1, 0.86, 0.86 );
setScaleKey( spep_0-4 + 443, 1, 0.86, 0.86 );
setScaleKey( spep_0-4 + 448, 1, 0.86, 0.86 );

setScaleKey( spep_0-3 + 406, 1, 1.42, 1.42 );
setScaleKey( spep_0-3 + 408, 1, 1.69, 1.69 );
setScaleKey( spep_0-3 + 410, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 428, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 430, 1, 1.66, 1.66 );
setScaleKey( spep_0-3 + 432, 1, 1.41, 1.41 );
setScaleKey( spep_0-3 + 434, 1, 1.21, 1.21 );
setScaleKey( spep_0-3 + 436, 1, 1.06, 1.06 );
setScaleKey( spep_0-3 + 438, 1, 0.94, 0.94 );
setScaleKey( spep_0-3 + 440, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 442, 1, 0.86, 0.86 );
setScaleKey( spep_0-3 + 443, 1, 0.86, 0.86 );
setScaleKey( spep_0-3 + 448, 1, 0.86, 0.86 );

setRotateKey( spep_0-4 + 406, 1, -44.3 );
setRotateKey( spep_0-4 + 408, 1, -43.7 );
setRotateKey( spep_0-4 + 410, 1, -43.5 );
setRotateKey( spep_0-4 + 412, 1, -37.6 );
setRotateKey( spep_0-4 + 414, 1, -34.9 );
setRotateKey( spep_0-4 + 416, 1, -32.5 );
setRotateKey( spep_0-4 + 418, 1, -30.5 );
setRotateKey( spep_0-4 + 420, 1, -28.8 );
setRotateKey( spep_0-4 + 422, 1, -27.5 );
setRotateKey( spep_0-4 + 424, 1, -26.6 );
setRotateKey( spep_0-4 + 426, 1, -26.1 );
setRotateKey( spep_0-4 + 428, 1, -25.9 );
setRotateKey( spep_0-4 + 430, 1, -21.9 );
setRotateKey( spep_0-4 + 432, 1, -18.7 );
setRotateKey( spep_0-4 + 434, 1, -16.2 );
setRotateKey( spep_0-4 + 436, 1, -14.4 );
setRotateKey( spep_0-4 + 438, 1, -13.3 );
setRotateKey( spep_0-4 + 440, 1, -12.9 );
setRotateKey( spep_0-4 + 448, 1, -12.9 );

--SE
playSe(spep_0+136,1010);
playSe(spep_0+166,1009);
playSe(spep_0+180,1008);
playSe(spep_0+194,1001);
playSe(spep_0+200,1001);
playSe(spep_0+210,1009);
playSe(spep_0+216,1000);
playSe(spep_0+222,1008);
playSe(spep_0+237,1010);
playSe(spep_0+243,1001);
playSe(spep_0+258,1001);
playSe(spep_0+264,1009);
playSe(spep_0+276,1010);
playSe(spep_0+280,1001);
playSe(spep_0+288,1009);
playSe(spep_0+296,1001);
playSe(spep_0+302,1010);

playSe(spep_0+312,1001);
playSe(spep_0+318,1009);
playSe(spep_0+324,1014);
playSe(spep_0+330,1001);
playSe(spep_0+336,1033);
playSe(spep_0+342,1009);
playSe(spep_0+350,1000);
playSe(spep_0+356,1004);
playSe(spep_0+368,1001);
playSe(spep_0+380,1014);
playSe(spep_0+392,1010);

playSe(spep_0+412,1014);

------------------------------------------------------
-- Scene02 
------------------------------------------------------
spep_1 =spep_0+446;

entryFade(spep_1,0,2,6,255,255,255,255);
entryFade(spep_1+72,6,2,10,255,255,255,255);

entryFadeBg(spep_1,0,78,0,10,10,10,255);

--書き文字　ドゴォン　10018
ctDogown = entryEffectLife( spep_1-3 + 28,  10018, 22, 0x100, -3, 0, 6.8, 357.8 );
setEffMoveKey( spep_1-3 + 28, ctDogown, 6.8, 357.8 , 0 );
setEffMoveKey( spep_1-3 + 30, ctDogown, 7.4, 376.7 , 0 );
setEffMoveKey( spep_1-3 + 32, ctDogown, 11.3, 389 , 0 );
setEffMoveKey( spep_1-3 + 34, ctDogown, 7.9, 391.9 , 0 );
setEffMoveKey( spep_1-3 + 36, ctDogown, 10.4, 406.1 , 0 );
setEffMoveKey( spep_1-3 + 38, ctDogown, 11, 404.6 , 0 );
setEffMoveKey( spep_1-3 + 40, ctDogown, 6.1, 411.4 , 0 );
setEffMoveKey( spep_1-3 + 42, ctDogown, 13.1, 412.7 , 0 );
setEffMoveKey( spep_1-3 + 44, ctDogown, 9.3, 413.6 , 0 );
setEffMoveKey( spep_1-3 + 46, ctDogown, 5.8, 426.6 , 0 );
setEffMoveKey( spep_1-3 + 48, ctDogown, 9, 447.1 , 0 );
setEffMoveKey( spep_1-3 + 50, ctDogown, 8.9, 450.8 , 0 );

setEffScaleKey( spep_1-3 + 28, ctDogown, 2.61, 2.61 );
setEffScaleKey( spep_1-3 + 30, ctDogown, 2.8, 2.8 );
setEffScaleKey( spep_1-3 + 32, ctDogown, 2.86, 2.86 );
setEffScaleKey( spep_1-3 + 44, ctDogown, 2.86, 2.86 );
setEffScaleKey( spep_1-3 + 46, ctDogown, 3.27, 3.27 );
setEffScaleKey( spep_1-3 + 48, ctDogown, 3.51, 3.51 );
setEffScaleKey( spep_1-3 + 50, ctDogown, 3.59, 3.59 );

setEffRotateKey( spep_1-3 + 28, ctDogown, -0.9 );
setEffRotateKey( spep_1-3 + 50, ctDogown, -0.9 );

setEffAlphaKey( spep_1-3 + 28, ctDogown, 255 );
setEffAlphaKey( spep_1-3 + 44, ctDogown, 255 );
setEffAlphaKey( spep_1-3 + 46, ctDogown, 113 );
setEffAlphaKey( spep_1-3 + 48, ctDogown, 28 );
setEffAlphaKey( spep_1-3 + 50, ctDogown, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 +28, 1, 0 );
setDisp( spep_1-3 + 29, 1, 0 );
changeAnime( spep_1 + 0, 1, 105 );

--setMoveKey( spep_1-2 + 0, 1, 25.9, -234.1 , 0 );
setMoveKey( spep_1-2 + 2, 1, 37.3, -373.6 , 0 );
setMoveKey( spep_1-2 + 4, 1, 38.3, -414.4 , 0 );
setMoveKey( spep_1-2 + 6, 1, 35.1, -400.7 , 0 );
setMoveKey( spep_1-2 + 8, 1, 30.6, -356.7 , 0 );
setMoveKey( spep_1-2 + 10, 1, 25.5, -292.7 , 0 );
setMoveKey( spep_1-2 + 12, 1, 20.8, -219.8 , 0 );
setMoveKey( spep_1-2 + 14, 1, 16.7, -143.7 , 0 );
setMoveKey( spep_1-2 + 16, 1, 13.5, -70.9 , 0 );
setMoveKey( spep_1-2 + 18, 1, 10.6, -1.9 , 0 );
setMoveKey( spep_1-2 + 20, 1, 8.8, 54.5 , 0 );
setMoveKey( spep_1-2 + 22, 1, 7.5, 100.4 , 0 );
setMoveKey( spep_1-2 + 24, 1, 6.3, 138.2 , 0 );
setMoveKey( spep_1-2 + 26, 1, 6.2, 156 , 0 );
setMoveKey( spep_1-2 + 28, 1, -3.3, 180 , 0 );
setMoveKey( spep_1-2 + 30, 1, 15.2, 143.2 , 0 );
setMoveKey( spep_1-2 + 32, 1, -6.8, 169.6 , 0 );
setMoveKey( spep_1-2 + 34, 1, 14.1, 147.7 , 0 );
setMoveKey( spep_1-2 + 36, 1, -8.2, 161.4 , 0 );
setMoveKey( spep_1-2 + 38, 1, 16.1, 147.8 , 0 );
setMoveKey( spep_1-2 + 40, 1, -5.1, 157.7 , 0 );
setMoveKey( spep_1-2 + 42, 1, 20.3, 145 , 0 );
setMoveKey( spep_1-2 + 44, 1, -5.9, 152.2 , 0 );
setMoveKey( spep_1-2 + 46, 1, 8.4, 133.4 , 0 );
setMoveKey( spep_1-2 + 48, 1, -12.4, 145.7 , 0 );
setMoveKey( spep_1-2 + 50, 1, 21.4, 140.2 , 0 );
setMoveKey( spep_1-2 + 52, 1, 0.1, 117.7 , 0 );
setMoveKey( spep_1-2 + 54, 1, 18.2, 143.2 , 0 );
setMoveKey( spep_1-2 + 56, 1, 0.5, 114.6 , 0 );
setMoveKey( spep_1-2 + 58, 1, -3.7, 134.5 , 0 );
setMoveKey( spep_1-2 + 60, 1, 8.4, 104.2 , 0 );
setMoveKey( spep_1-2 + 62, 1, 4.4, 135.3 , 0 );
setMoveKey( spep_1-2 + 64, 1, -3.6, 107.8 , 0 );
setMoveKey( spep_1-2 + 66, 1, 18.9, 125 , 0 );
setMoveKey( spep_1-2 + 68, 1, -8, 121.5 , 0 );
setMoveKey( spep_1-2 + 70, 1, 24.8, 108.9 , 0 );
setMoveKey( spep_1-2 + 72, 1, -12.1, 108.7 , 0 );
setMoveKey( spep_1-2 + 74, 1, 15.3, 125.6 , 0 );
setMoveKey( spep_1-2 + 76, 1, -8.1, 115.1 , 0 );
setMoveKey( spep_1-2 + 78, 1, 18.5, 125.7 , 0 );

--setScaleKey( spep_1-2 + 0, 1, 3.21, 3.21 );
setScaleKey( spep_1-2 + 2, 1, 4.99, 4.99 );
setScaleKey( spep_1-2 + 4, 1, 5.56, 5.56 );
setScaleKey( spep_1-2 + 6, 1, 5.49, 5.49 );
setScaleKey( spep_1-2 + 8, 1, 5.04, 5.04 );
setScaleKey( spep_1-2 + 10, 1, 4.42, 4.42 );
setScaleKey( spep_1-2 + 12, 1, 3.7, 3.7 );
setScaleKey( spep_1-2 + 14, 1, 2.97, 2.97 );
setScaleKey( spep_1-2 + 16, 1, 2.26, 2.26 );
setScaleKey( spep_1-2 + 18, 1, 1.62, 1.62 );
setScaleKey( spep_1-2 + 20, 1, 1.06, 1.06 );
setScaleKey( spep_1-2 + 22, 1, 0.62, 0.62 );
setScaleKey( spep_1-2 + 24, 1, 0.29, 0.29 );
setScaleKey( spep_1-2 + 26, 1, 0.09, 0.09 );
setScaleKey( spep_1-2 + 28, 1, 0.03, 0.03 );
setScaleKey( spep_1-2 + 30, 1, 0.02, 0.02 );
setScaleKey( spep_1-2 + 78, 1, 0.02, 0.02 );

setRotateKey( spep_1 + 0, 1, -19.3 );
setRotateKey( spep_1-2 +78, 1, -19.3 );

--SP_03
--Rock=entryEffectLife(spep_1,SP_03,78,0x80,-1,0,0,0);
Rock=entryEffectLife(spep_1,152102,78,0x80,-1,0,0,0);
setEffScaleKey( spep_1 , Rock, 1.0, 1.0 );

shuchusen1=entryEffectLife(spep_1+28,906,50,0x100,-1,0,0,0);
setEffScaleKey( spep_1+28, shuchusen1, 1.5, 1.5);
setEffScaleKey( spep_1+78, shuchusen1, 1.5, 1.5);

playSe(spep_1+28,1023);

------------------------------------------------------
-- Scene03
------------------------------------------------------
spep_2=spep_1+78;

--書き文字　ギュン 10007
ctGyun = entryEffectLife( spep_2 + 64-4,  10007, 10, 0x100, -1, 0, 120.7, 250.4 );
setEffMoveKey( spep_2 + 64-4, ctGyun, 120.7, 250.4 , 0 );
setEffMoveKey( spep_2 + 66-4, ctGyun, 82.6, 309.9 , 0 );
setEffMoveKey( spep_2 + 68-4, ctGyun, 69.8, 329.7 , 0 );
setEffMoveKey( spep_2 + 70-4, ctGyun, 63.5, 332.2 , 0 );
setEffMoveKey( spep_2 + 72-4, ctGyun, 57.3, 334.6 , 0 );
setEffMoveKey( spep_2 + 74-4, ctGyun, 51, 337.1 , 0 );

ctGyun2 = entryEffectLife( spep_2 + 110-4,  10007, 12, 0x100, -1, 0, -61.6, 331.2 );
setEffMoveKey( spep_2 + 110-4, ctGyun2, -61.6, 331.2 , 0 );
setEffMoveKey( spep_2 + 112-4, ctGyun2, -36.4, 390 , 0 );
setEffMoveKey( spep_2 + 114-4, ctGyun2, -28.1, 409.6 , 0 );
setEffMoveKey( spep_2 + 116-4, ctGyun2, -28.3, 411.5 , 0 );
setEffMoveKey( spep_2 + 118-4, ctGyun2, -28.5, 413.4 , 0 );
setEffMoveKey( spep_2 + 120-4, ctGyun2, -28.7, 415.2 , 0 );
setEffMoveKey( spep_2 + 122-4, ctGyun2, -28.9, 417.1 , 0 );

setEffScaleKey( spep_2 + 64-4, ctGyun, 1.48, 1.48 );
setEffScaleKey( spep_2 + 66-4, ctGyun, 2.57, 2.57 );
setEffScaleKey( spep_2 + 68-4, ctGyun, 2.94, 2.94 );
setEffScaleKey( spep_2 + 70-4, ctGyun, 2.98, 2.98 );
setEffScaleKey( spep_2 + 72-4, ctGyun, 3.03, 3.03 );
setEffScaleKey( spep_2 + 74-4, ctGyun, 3.07, 3.07 );

setEffScaleKey( spep_2 + 110-4, ctGyun2, 1.48, 1.48 );
setEffScaleKey( spep_2 + 112-4, ctGyun2, 2.58, 2.58 );
setEffScaleKey( spep_2 + 114-4, ctGyun2, 2.94, 2.94 );
setEffScaleKey( spep_2 + 116-4, ctGyun2, 2.97, 2.97 );
setEffScaleKey( spep_2 + 118-4, ctGyun2, 3.01, 3.01 );
setEffScaleKey( spep_2 + 120-4, ctGyun2, 3.04, 3.04 );
setEffScaleKey( spep_2 + 122-4, ctGyun2, 3.07, 3.07 );

setEffRotateKey( spep_2 + 64-4, ctGyun, 9 );
setEffRotateKey( spep_2 + 68-4, ctGyun, 9 );
setEffRotateKey( spep_2 + 70-4, ctGyun, 9.1 );
setEffRotateKey( spep_2 + 72-4, ctGyun, 9.1 );
setEffRotateKey( spep_2 + 74-4, ctGyun, 9.2 );

setEffRotateKey( spep_2 + 110-4, ctGyun2, -8 );
setEffRotateKey( spep_2 + 114-4, ctGyun2, -8 );
setEffRotateKey( spep_2 + 116-4, ctGyun2, -7.9 );
setEffRotateKey( spep_2 + 118-4, ctGyun2, -7.9 );
setEffRotateKey( spep_2 + 120-4, ctGyun2, -7.8 );

setEffAlphaKey( spep_2 + 64-4, ctGyun, 255 );
setEffAlphaKey( spep_2 + 74-4, ctGyun, 255 );

setEffAlphaKey( spep_2 + 110-4, ctGyun2, 255 );
setEffAlphaKey( spep_2 + 120-4, ctGyun2, 255 );

--集中線
shuchusen2a = entryEffectLife( spep_2 + 60-4,  906, 12, 0x100, -1, 0, 410.9, 104 );
setEffMoveKey( spep_2 + 60, shuchusen2a, 410.9, 104 , 0 );
setEffMoveKey( spep_2 + 62, shuchusen2a, 346.8, 76.4 , 0 );
setEffMoveKey( spep_2 + 64, shuchusen2a, 292.6, 53.1 , 0 );
setEffMoveKey( spep_2 + 66, shuchusen2a, 248.2, 34 , 0 );
setEffMoveKey( spep_2 + 68, shuchusen2a, 213.7, 19.1 , 0 );
setEffMoveKey( spep_2 + 70, shuchusen2a, 189.1, 8.5 , 0 );
setEffMoveKey( spep_2 + 72, shuchusen2a, 174.3, 2.1 , 0 );
--setEffMoveKey( spep_2 + 74, shuchusen2a, 169.4, 0 , 0 );

setEffScaleKey( spep_2 + 60, shuchusen2a, 1.6, 1.6 );
setEffScaleKey( spep_2 + 62, shuchusen2a, 1.5, 1.5 );
setEffScaleKey( spep_2 + 64, shuchusen2a, 1.42, 1.42 );
setEffScaleKey( spep_2 + 66, shuchusen2a, 1.35, 1.35 );
setEffScaleKey( spep_2 + 68, shuchusen2a, 1.29, 1.29 );
setEffScaleKey( spep_2 + 70, shuchusen2a, 1.25, 1.25 );
setEffScaleKey( spep_2 + 72, shuchusen2a, 1.23, 1.23 );
--setEffScaleKey( spep_2 + 74, shuchusen2a, 1.22, 1.22 );

setEffRotateKey( spep_2 + 60, shuchusen2a, 0 );
setEffRotateKey( spep_2 + 72, shuchusen2a, 0 );

setEffAlphaKey( spep_2 + 60, shuchusen2a, 255 );
setEffAlphaKey( spep_2 + 72, shuchusen2a, 255 );


shuchusen2b = entryEffectLife( spep_2 + 106,  906, 16, 0x100, -1, 0, -461.6, 120.1 , 0 );
setEffMoveKey( spep_2 + 106, shuchusen2b, -461.6, 120.1 , 0 );
setEffMoveKey( spep_2 + 108, shuchusen2b, -399.4, 94.9 , 0 );
setEffMoveKey( spep_2 + 110, shuchusen2b, -344.5, 72.7 , 0 );
setEffMoveKey( spep_2 + 112, shuchusen2b, -296.9, 53.4 , 0 );
setEffMoveKey( spep_2 + 114, shuchusen2b, -256.7, 37.1 , 0 );
setEffMoveKey( spep_2 + 116, shuchusen2b, -223.7, 23.7 , 0 );
setEffMoveKey( spep_2 + 118, shuchusen2b, -198.1, 13.3 , 0 );
setEffMoveKey( spep_2 + 120, shuchusen2b, -179.8, 5.9 , 0 );
setEffMoveKey( spep_2 + 122, shuchusen2b, -168.8, 1.5 , 0 );
--setEffMoveKey( spep_2 + 124, shuchusen2b, -165.2, 0 , 0 );

-- shuchusen2b
setEffScaleKey( spep_2 + 106, shuchusen2b, 1.71, 1.71 );
setEffScaleKey( spep_2 + 108, shuchusen2b, 1.61, 1.61 );
setEffScaleKey( spep_2 + 110, shuchusen2b, 1.52, 1.52 );
setEffScaleKey( spep_2 + 112, shuchusen2b, 1.44, 1.44 );
setEffScaleKey( spep_2 + 114, shuchusen2b, 1.37, 1.37 );
setEffScaleKey( spep_2 + 116, shuchusen2b, 1.32, 1.32 );
setEffScaleKey( spep_2 + 118, shuchusen2b, 1.27, 1.27 );
setEffScaleKey( spep_2 + 120, shuchusen2b, 1.24, 1.24 );
setEffScaleKey( spep_2 + 122, shuchusen2b, 1.23, 1.23 );
--setEffScaleKey( spep_2 + 124, shuchusen2b, 1.22, 1.22 );

-- shuchusen2b
setEffRotateKey( spep_2 + 106, shuchusen2b, 0 );
setEffRotateKey( spep_2 + 122, shuchusen2b, 0 );

--突進
Tossin = entryEffectLife( spep_2, SP_04, 122, 0x100, -1, 0, 0, 0 );
setEffScaleKey( spep_2 , Tossin, -1.0, 1.0 );
setEffScaleKey( spep_2+122 , Tossin, -1.0, 1.0 );

playSe( spep_2 + 0,4);
playSe( spep_2 + 14,4);
--playSe( spep_2 + 24,44);
playSe( spep_2 + 38,44);
--playSe( spep_2 + 48,44);
playSe( spep_2 + 60,1027);
--playSe( spep_2 + 70,44);
playSe( spep_2 + 78,4);
playSe( spep_2 + 88,44);
playSe( spep_2 + 106,1027);
--playSe( spep_2 + 116,4);
------------------------------------------------------
-- Scene04
------------------------------------------------------
spep_3=spep_2+122;

entryFade(spep_3+40,8,2,0,255,255,255,255);

--書き文字　バゴッ　10021
ctBago = entryEffectLife( spep_3 + 10,  10021, 16, 0x100, -1, 0, 39.7, 281.5 );
setEffMoveKey( spep_3 + 10, ctBago, 39.7, 281.5 , 0 );
setEffMoveKey( spep_3 + 12, ctBago, 13.5, 305.1 , 0 );
setEffMoveKey( spep_3 + 14, ctBago, 6.1, 299.7 , 0 );
setEffMoveKey( spep_3 + 16, ctBago, 17.5, 320.7 , 0 );
setEffMoveKey( spep_3 + 18, ctBago, 5.5, 313.8 , 0 );
setEffMoveKey( spep_3 + 20, ctBago, 10.3, 322.1 , 0 );
setEffMoveKey( spep_3 + 22, ctBago, 2.7, 314.7 , 0 );
setEffMoveKey( spep_3 + 24, ctBago, 14, 341.4 , 0 );
setEffMoveKey( spep_3 + 26, ctBago, 11.5, 356.3 , 0 );

setEffScaleKey( spep_3 + 10, ctBago, 1.88, 1.88 );
setEffScaleKey( spep_3 + 12, ctBago, 2.53, 2.53 );
setEffScaleKey( spep_3 + 14, ctBago, 2.57, 2.57 );
setEffScaleKey( spep_3 + 16, ctBago, 2.62, 2.62 );
setEffScaleKey( spep_3 + 18, ctBago, 2.66, 2.66 );
setEffScaleKey( spep_3 + 20, ctBago, 2.7, 2.7 );
setEffScaleKey( spep_3 + 22, ctBago, 2.73, 2.73 );
setEffScaleKey( spep_3 + 24, ctBago, 2.82, 2.82 );
setEffScaleKey( spep_3 + 26, ctBago, 2.96, 2.96 );

setEffRotateKey( spep_3 + 10, ctBago, -11.7 );
setEffRotateKey( spep_3 + 12, ctBago, -15.6 );

setEffAlphaKey( spep_3 + 10, ctBago, 255 );
setEffAlphaKey( spep_3 + 20, ctBago, 255 );
setEffAlphaKey( spep_3 + 22, ctBago, 227 );
setEffAlphaKey( spep_3 + 24, ctBago, 142 );
setEffAlphaKey( spep_3 + 26, ctBago, 0 );

smoke=entryEffectLife( spep_3,  SP_05, 48, 0x100, -1, 0, 0,0 );
setEffScaleKey( spep_3 , smoke, -1.0, 1.0 );
setEffScaleKey( spep_3+48 , smoke, -1.0, 1.0 );

rock2=entryEffectLife( spep_3, SP_06, 48, 0x80, -1, 0, 0,0 );
setEffScaleKey( spep_3 , rock2, -1.0, 1.0 );
setEffScaleKey( spep_3+48 , rock2, -1.0, 1.0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 48, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, -11.2, 3.6 , 0 );
setMoveKey( spep_3 + 2, 1, -11.8, 3.7 , 0 );
setMoveKey( spep_3 + 4, 1, -12.3, 3.9 , 0 );
setMoveKey( spep_3 + 6, 1, -12.9, 4.1 , 0 );
setMoveKey( spep_3 + 8, 1, -13.4, 4.3 , 0 );
setMoveKey( spep_3 + 10, 1, -24.9, -9.8 , 0 );
setMoveKey( spep_3 + 12, 1, -23.4, 20.9 , 0 );
setMoveKey( spep_3 + 14, 1, -2.6, -7.9 , 0 );
setMoveKey( spep_3 + 16, 1, -13.2, 19.4 , 0 );
setMoveKey( spep_3 + 18, 1, -15.8, -6.2 , 0 );
setMoveKey( spep_3 + 20, 1, -20.6, 16.5 , 0 );
setMoveKey( spep_3 + 22, 1, -7, -7 , 0 );
setMoveKey( spep_3 + 24, 1, -11, 15.8 , 0 );
setMoveKey( spep_3 + 26, 1, -23, -1.8 , 0 );
setMoveKey( spep_3 + 28, 1, -8.5, 12.5 , 0 );
setMoveKey( spep_3 + 30, 1, -24.8, 5.7 , 0 );
setMoveKey( spep_3 + 32, 1, -8.3, 3.2 , 0 );
setMoveKey( spep_3 + 34, 1, -19.4, 9.8 , 0 );
setMoveKey( spep_3 + 36, 1, -8.9, 4.9 , 0 );
setMoveKey( spep_3 + 38, 1, -16.6, 9.3 , 0 );
setMoveKey( spep_3 + 40, 1, -12.4, 1.7 , 0 );
setMoveKey( spep_3 + 42, 1, -13.7, 7.9 , 0 );
setMoveKey( spep_3 + 44, 1, -12.3, 4.1 , 0 );
setMoveKey( spep_3 + 46, 1, -12.9, 4.1 , 0 );
setMoveKey( spep_3 + 48, 1, -18.7, 19.5 , 0 );

setScaleKey( spep_3 + 0, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 2, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 4, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 6, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 8, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 10, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 12, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 14, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 16, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 18, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 20, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 22, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 24, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 26, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 28, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 30, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 32, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 34, 1, 1, 1 );
setScaleKey( spep_3 + 36, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 38, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 40, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 42, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 44, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 46, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 48, 1, 1.36, 1.36 );

setRotateKey( spep_3 + 0, 1, -47.8 );
setRotateKey( spep_3 + 48, 1, -47.8 );

playSe( spep_3 + 10,1068);
------------------------------------------------------
-- Card
------------------------------------------------------
spep_4=spep_3+48;

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507, 0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.0,  1.0);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffMoveKey(  spep_4+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+90,  shuchusen4,  1.0,  1.0);
setEffRotateKey(  spep_4+90,  shuchusen4,  0);
setEffAlphaKey(  spep_4+90,  shuchusen4,  255);

entryFade( spep_4+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- Scene05
------------------------------------------------------
spep_5=spep_4+90;

entryFade(spep_5+132,8,4,2,255,255,255,255);
entryFadeBg(spep_5,0,142,0,10,10,10,255);

--集中線
shuchusen5 = entryEffectLife( spep_5, 906, 98, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.4,  1.4);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffMoveKey(  spep_5+98,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+98,  shuchusen5,  1.4,  1.4);
setEffRotateKey(  spep_5+98,  shuchusen5,  0);
setEffAlphaKey(  spep_5+98,  shuchusen5,  255);

--書き文字　ズドド 10014
ctZudodo= entryEffectLife( spep_5 + 108,  10014, 34, 0x100, -1, 0, 22.5, 276.1 );
setEffMoveKey( spep_5 + 108, ctZudodo, 22.5, 276.1 , 0 );
setEffMoveKey( spep_5 + 110, ctZudodo, 10, 265.1 , 0 );
setEffMoveKey( spep_5 + 112, ctZudodo, 26.3, 261.4 , 0 );
setEffMoveKey( spep_5 + 114, ctZudodo, 7.1, 265.4 , 0 );
setEffMoveKey( spep_5 + 116, ctZudodo, 32.2, 260.3 , 0 );
setEffMoveKey( spep_5 + 118, ctZudodo, 10.6, 260.3 , 0 );
setEffMoveKey( spep_5 + 120, ctZudodo, 30.6, 258.8 , 0 );
setEffMoveKey( spep_5 + 122, ctZudodo, 19.5, 276.5 , 0 );
setEffMoveKey( spep_5 + 124, ctZudodo, 20.5, 255 , 0 );
setEffMoveKey( spep_5 + 126, ctZudodo, 16.2, 273.6 , 0 );
setEffMoveKey( spep_5 + 128, ctZudodo, 28.4, 260.9 , 0 );
setEffMoveKey( spep_5 + 130, ctZudodo, 14.4, 277 , 0 );
setEffMoveKey( spep_5 + 132, ctZudodo, 22.9, 256.3 , 0 );
setEffMoveKey( spep_5 + 134, ctZudodo, 10.9, 268.1 , 0 );
setEffMoveKey( spep_5 + 136, ctZudodo, 25, 252.8 , 0 );
setEffMoveKey( spep_5 + 138, ctZudodo, 18.4, 275.8 , 0 );
setEffMoveKey( spep_5 + 140, ctZudodo, 15.2, 253.5 , 0 );
setEffMoveKey( spep_5 + 142, ctZudodo, 15.5, 277.1 , 0 );

setEffScaleKey( spep_5 + 108, ctZudodo, 1.95, 1.95 );
setEffScaleKey( spep_5 + 110, ctZudodo, 2.09, 2.09 );
setEffScaleKey( spep_5 + 112, ctZudodo, 2.2, 2.2 );
setEffScaleKey( spep_5 + 114, ctZudodo, 2.26, 2.26 );
setEffScaleKey( spep_5 + 116, ctZudodo, 2.28, 2.28 );
setEffScaleKey( spep_5 + 118, ctZudodo, 2.31, 2.31 );
setEffScaleKey( spep_5 + 120, ctZudodo, 2.34, 2.34 );
setEffScaleKey( spep_5 + 122, ctZudodo, 2.38, 2.38 );
setEffScaleKey( spep_5 + 124, ctZudodo, 2.41, 2.41 );
setEffScaleKey( spep_5 + 126, ctZudodo, 2.44, 2.44 );
setEffScaleKey( spep_5 + 128, ctZudodo, 2.47, 2.47 );
setEffScaleKey( spep_5 + 130, ctZudodo, 2.51, 2.51 );
setEffScaleKey( spep_5 + 132, ctZudodo, 2.54, 2.54 );
setEffScaleKey( spep_5 + 134, ctZudodo, 2.57, 2.57 );
setEffScaleKey( spep_5 + 136, ctZudodo, 2.6, 2.6 );
setEffScaleKey( spep_5 + 138, ctZudodo, 2.64, 2.64 );
setEffScaleKey( spep_5 + 140, ctZudodo, 2.67, 2.67 );
setEffScaleKey( spep_5 + 142, ctZudodo, 2.7, 2.7 );

setEffRotateKey( spep_5 + 108, ctZudodo, -45.5 );
setEffRotateKey( spep_5 + 142, ctZudodo, -45.5 );

setEffAlphaKey( spep_5 + 108, ctZudodo, 31 );
setEffAlphaKey( spep_5 + 110, ctZudodo, 129 );
setEffAlphaKey( spep_5 + 112, ctZudodo, 199 );
setEffAlphaKey( spep_5 + 114, ctZudodo, 241 );
setEffAlphaKey( spep_5 + 116, ctZudodo, 255 );
setEffAlphaKey( spep_5 + 142, ctZudodo, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 104, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, -11.1, 34.2 , 0 );
setMoveKey( spep_5 + 2, 1, -10.7, 32.9 , 0 );
setMoveKey( spep_5 + 4, 1, -10.3, 31.9 , 0 );
setMoveKey( spep_5 + 6, 1, -9.9, 30.9 , 0 );
setMoveKey( spep_5 + 8, 1, -9.5, 30 , 0 );
setMoveKey( spep_5 + 10, 1, -9.2, 29.3 , 0 );
setMoveKey( spep_5 + 12, 1, -9, 28.7 , 0 );
setMoveKey( spep_5 + 14, 1, -8.7, 28.3 , 0 );
setMoveKey( spep_5 + 16, 1, -8.6, 28 , 0 );
setMoveKey( spep_5 + 18, 1, -8.4, 27.9 , 0 );
setMoveKey( spep_5 + 20, 1, -8.3, 27.8 , 0 );
setMoveKey( spep_5 + 22, 1, -8.3, 28 , 0 );
setMoveKey( spep_5 + 24, 1, -8.2, 28.2 , 0 );
setMoveKey( spep_5 + 26, 1, -4.3, 33.4 , 0 );
setMoveKey( spep_5 + 28, 1, -1.6, 38.4 , 0 );
setMoveKey( spep_5 + 30, 1, -0.5, 32 , 0 );
setMoveKey( spep_5 + 32, 1, -0.8, 33.6 , 0 );
setMoveKey( spep_5 + 34, 1, -1.3, 31.6 , 0 );
setMoveKey( spep_5 + 36, 1, -0.6, 32.3 , 0 );
setMoveKey( spep_5 + 38, 1, -0.7, 31.6 , 0 );
setMoveKey( spep_5 + 40, 1, -0.6, 31.9 , 0 );
setMoveKey( spep_5 + 42, 1, -0.8, 31.8 , 0 );
setMoveKey( spep_5 + 44, 1, -0.7, 31.8 , 0 );
setMoveKey( spep_5 + 46, 1, -0.8, 32.1 , 0 );
setMoveKey( spep_5 + 48, 1, -1, 32.4 , 0 );
setMoveKey( spep_5 + 50, 1, -1.1, 32.7 , 0 );
setMoveKey( spep_5 + 52, 1, -1.2, 32.9 , 0 );
setMoveKey( spep_5 + 54, 1, -1.4, 33.2 , 0 );
setMoveKey( spep_5 + 56, 1, -1.5, 33.5 , 0 );
setMoveKey( spep_5 + 58, 1, -1.7, 33.7 , 0 );
setMoveKey( spep_5 + 60, 1, -1.7, 33.9 , 0 );
setMoveKey( spep_5 + 62, 1, -1.9, 34.1 , 0 );
setMoveKey( spep_5 + 64, 1, -2, 34.4 , 0 );
setMoveKey( spep_5 + 66, 1, -2.1, 34.5 , 0 );
setMoveKey( spep_5 + 68, 1, -2.3, 34.7 , 0 );
setMoveKey( spep_5 + 70, 1, -2.4, 35 , 0 );
setMoveKey( spep_5 + 72, 1, -2.5, 35.1 , 0 );
setMoveKey( spep_5 + 74, 1, -2.6, 35.3 , 0 );
setMoveKey( spep_5 + 76, 1, -2.7, 35.4 , 0 );
setMoveKey( spep_5 + 78, 1, -2.9, 36 , 0 );
setMoveKey( spep_5 + 80, 1, -3.2, 36.7 , 0 );
setMoveKey( spep_5 + 82, 1, -3.5, 37.5 , 0 );
setMoveKey( spep_5 + 84, 1, -3.7, 38.3 , 0 );
setMoveKey( spep_5 + 86, 1, -3.9, 38.8 , 0 );
setMoveKey( spep_5 + 88, 1, -4.1, 39.3 , 0 );
setMoveKey( spep_5 + 90, 1, -4.3, 39.9 , 0 );
setMoveKey( spep_5 + 92, 1, -4.4, 40.4 , 0 );
setMoveKey( spep_5 + 94, 1, -4.7, 40.9 , 0 );
setMoveKey( spep_5 + 96, 1, -4.9, 41.4 , 0 );
setMoveKey( spep_5 + 98, 1, -5, 41.8 , 0 );
setMoveKey( spep_5 + 100, 1, -5.2, 42.2 , 0 );
setMoveKey( spep_5 + 102, 1, -5.3, 42.6 , 0 );
setMoveKey( spep_5 + 104, 1, -5.5, 42.9 , 0 );

setScaleKey( spep_5 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 2, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 4, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 6, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 8, 1, 0.69, 0.69 );
setScaleKey( spep_5 + 10, 1, 0.66, 0.66 );
setScaleKey( spep_5 + 12, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 14, 1, 0.63, 0.63 );
setScaleKey( spep_5 + 16, 1, 0.62, 0.62 );
setScaleKey( spep_5 + 18, 1, 0.61, 0.61 );
setScaleKey( spep_5 + 20, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 22, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 24, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 26, 1, 0.56, 0.56 );
setScaleKey( spep_5 + 28, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 30, 1, 0.54, 0.54 );
setScaleKey( spep_5 + 32, 1, 0.53, 0.53 );
setScaleKey( spep_5 + 34, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 40, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 42, 1, 0.5, 0.5 );
setScaleKey( spep_5 + 56, 1, 0.5, 0.5 );
setScaleKey( spep_5 + 58, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 66, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 68, 1, 0.48, 0.48 );
setScaleKey( spep_5 + 72, 1, 0.48, 0.48 );
setScaleKey( spep_5 + 74, 1, 0.47, 0.47 );
setScaleKey( spep_5 + 76, 1, 0.47, 0.47 );
setScaleKey( spep_5 + 78, 1, 0.48, 0.48 );
setScaleKey( spep_5 + 82, 1, 0.48, 0.48 );
setScaleKey( spep_5 + 84, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 104, 1, 0.49, 0.49 );

setRotateKey( spep_5 + 0, 1, -47.8 );
setRotateKey( spep_5 + 104, 1, -47.8 );

--SP_07
rock3=entryEffectLife( spep_5,  SP_07, 142, 0x100, -1, 0, 0,0 );
setEffScaleKey( spep_5 , rock3, -1.0, 1.0 );
setEffScaleKey( spep_5+142 , rock3, -1.0, 1.0 );

--SP_08
burst=entryEffectLife( spep_5,  SP_08, 142, 0x80, -1, 0, 0,0 );
setEffScaleKey( spep_5 , burst, -1.0, 1.0 );
setEffScaleKey( spep_5+142 , burst, -1.0, 1.0 );

playSe(spep_5+28,SE_01);
playSe(spep_5+84,SE_07);
--playSe(spep_5+108,SE_07);

------------------------------------------------------
-- Scene06 ギャン
------------------------------------------------------
spep_6=spep_5+142;

entryFade(spep_6+40,16,6,0,255,255,255,255);
entryFadeBg(spep_6,0,58,0,10,10,10,255);

GyanEff = entryEffectLife(spep_6,SP_09,58, 0x80 ,-1,0,0,0);
setEffMoveKey(spep_6,GyanEff,0,0,0);
setEffScaleKey(spep_6,GyanEff,1.0,1.0);
setEffAlphaKey(spep_6,GyanEff,255);

-- 書き文字　ギャン 10006
ctGyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );
setEffMoveKey( spep_6 + 0, ctGyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_6 + 0, ctGyan, 2.2, 2.2 );
setEffScaleKey( spep_6 + 2, ctGyan, 2.4, 2.4 );
setEffScaleKey( spep_6 + 4, ctGyan, 2.6, 2.6 );
setEffScaleKey( spep_6 + 6, ctGyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 8, ctGyan, 3, 3 );
setEffScaleKey( spep_6 + 10, ctGyan, 3.01, 3.01 );
setEffScaleKey( spep_6 + 12, ctGyan, 3.02, 3.02 );
setEffScaleKey( spep_6 + 14, ctGyan, 3.02, 3.02 );
setEffScaleKey( spep_6 + 16, ctGyan, 3.03, 3.03 );
setEffScaleKey( spep_6 + 18, ctGyan, 3.04, 3.04 );
setEffScaleKey( spep_6 + 20, ctGyan, 3.05, 3.05 );
setEffScaleKey( spep_6 + 22, ctGyan, 3.06, 3.06 );
setEffScaleKey( spep_6 + 24, ctGyan, 3.06, 3.06 );
setEffScaleKey( spep_6 + 26, ctGyan, 3.07, 3.07 );
setEffScaleKey( spep_6 + 28, ctGyan, 3.08, 3.08 );
setEffScaleKey( spep_6 + 30, ctGyan, 3.09, 3.09 );
setEffScaleKey( spep_6 + 32, ctGyan, 3.1, 3.1 );
setEffScaleKey( spep_6 + 34, ctGyan, 3.1, 3.1 );
setEffScaleKey( spep_6 + 36, ctGyan, 3.11, 3.11 );
setEffScaleKey( spep_6 + 38, ctGyan, 3.12, 3.12 );
setEffScaleKey( spep_6 + 40, ctGyan, 3.13, 3.13 );
setEffScaleKey( spep_6 + 42, ctGyan, 3.14, 3.14 );
setEffScaleKey( spep_6 + 44, ctGyan, 3.14, 3.14 );
setEffScaleKey( spep_6 + 46, ctGyan, 3.15, 3.15 );
setEffScaleKey( spep_6 + 48, ctGyan, 3.16, 3.16 );
setEffScaleKey( spep_6 + 50, ctGyan, 3.17, 3.17 );
setEffScaleKey( spep_6 + 52, ctGyan, 3.17, 3.17 );
setEffScaleKey( spep_6 + 54, ctGyan, 3.18, 3.18 );
setEffScaleKey( spep_6 + 56, ctGyan, 3.19, 3.19 );
setEffScaleKey( spep_6 + 58, ctGyan, 3.2, 3.2 );

setEffRotateKey( spep_6 + 0, ctGyan, 0 );
setEffRotateKey( spep_6 + 0, ctGyan, 0 );

setEffAlphaKey( spep_6 + 0, ctGyan, 255 );
setEffAlphaKey( spep_6 + 0, ctGyan, 255 );

playSe(spep_6,SE_09);

------------------------------------------------------
-- Scene07
------------------------------------------------------
spep_7=spep_6+58;

--SP_10
Exp= entryEffect(spep_7,SP_10,0x80,-1,0,0,0);
setEffMoveKey(spep_7,Exp,0,0,0);
setEffScaleKey(spep_7,Exp,-1.1,1.1);
setEffRotateKey(spep_7,Exp,0);
setEffAlphaKey(spep_7,Exp,255);

setEffMoveKey(spep_7,Exp,0,0,0);
setEffScaleKey(spep_7,Exp,-1.1,1.1);
setEffRotateKey(spep_7,Exp,0);
setEffAlphaKey(spep_7,Exp,255);

--集中線
shuchusen7=entryEffectLife( spep_7+44, 906, 98, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_7+44,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7+44,  shuchusen7,  1.0,  1.0);
setEffRotateKey(  spep_7+44,  shuchusen7,  0);
setEffAlphaKey(  spep_7+44,  shuchusen7,  255);
setEffMoveKey(  spep_7+142,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7+142,  shuchusen7,  1.0,  1.0);
setEffRotateKey(  spep_7+142,  shuchusen7,  0);
setEffAlphaKey(  spep_7+142,  shuchusen7,  255);

-- ダメージ表示
dealDamage(spep_7+16);
endPhase( spep_7+140);

Seid=playSe(spep_7+15,1069);
--stopSe(spep_7+39,Seid,0);
playSe(spep_7+51,1024);

end
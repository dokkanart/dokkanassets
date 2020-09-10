--sp_effect_b4_00061
--sp1194 4014690 ピッコロ　ナメック星人の怒りをおもいしれ！！！
--極限Z覚醒

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
SE_11 = 1054; --割れる音
SE_12 = 09;

SP_01 = 151989;
SP_02 = 151990;
SP_03 = 151991;
SP_04 = 151992;
SP_05 = 151993;
SP_06 = 151994;
SP_07 = 151995;
SP_08 = 151996;
SP_09 = 151997;

SP_01r = 151998;
SP_02r = 151999;
SP_03r = 152000;
SP_04r = 152001;
SP_05r = 152002;
SP_06r = 152003;
SP_07r = 151995;
SP_08r = 151996;
SP_09r = 152004;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;
kame_flag = 0x00;

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
-- SP_01
------------------------------------------------------
spep_1=0;

entryFadeBg(spep_1,0,98,0,10,10,10,220);
entryFade(spep_1,0,0,8,255,255,255,255);
entryFade(spep_1+84,14,2,0,255,255,255,255);

playSe(spep_1,SE_01);

--エフェクトの再生
tame=entryEffect(spep_1,SP_01,0x100,-1,0,0,0);

setEffMoveKey(spep_1,tame,0,0,0);
setEffScaleKey(spep_1,tame,1.0,1.0);
setEffAlphaKey(spep_1,tame,255);
setEffRotateKey(spep_1,tame,0);

setEffShake(spep_1,tame,98,10);

shuchusen1=entryEffectLife(spep_1,906,98,0x100,-1,0,0,0);
setEffScaleKey(spep_1,shuchusen1,1.4,1.4);
setEffAlphaKey(spep_1,shuchusen1,255);

ctZuzuzun = entryEffectLife(spep_1+2,10013,98,0x100,-1,0,0,0);
setEffMoveKey( spep_1 + 2, ctZuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_1 + 4, ctZuzuzun, 23.5, 299.3 , 0 );
setEffMoveKey( spep_1 + 6, ctZuzuzun, 40.2, 359.2 , 0 );
setEffMoveKey( spep_1 + 8, ctZuzuzun, 31.2, 355 , 0 );
setEffMoveKey( spep_1 + 10, ctZuzuzun, 41.1, 364.8 , 0 );
setEffMoveKey( spep_1 + 12, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 14, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_1 + 16, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 18, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_1 + 20, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 22, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_1 + 24, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 26, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_1 + 28, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 30, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_1 + 32, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 34, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_1 + 36, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 38, ctZuzuzun, 41.1, 364.5 , 0 );

setEffScaleKey( spep_1 + 2, ctZuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_1 + 4, ctZuzuzun, 1.98, 1.98 );
setEffScaleKey( spep_1 + 6, ctZuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_1 + 8, ctZuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_1 + 2, ctZuzuzun, -5 );

setEffAlphaKey( spep_1 + 2, ctZuzuzun, 255 );
setEffAlphaKey( spep_1 + 22, ctZuzuzun, 255 );
setEffAlphaKey( spep_1 + 24, ctZuzuzun, 215 );
setEffAlphaKey( spep_1 + 26, ctZuzuzun, 164 );
setEffAlphaKey( spep_1 + 28, ctZuzuzun, 121 );
setEffAlphaKey( spep_1 + 30, ctZuzuzun, 84 );
setEffAlphaKey( spep_1 + 32, ctZuzuzun, 54 );
setEffAlphaKey( spep_1 + 34, ctZuzuzun, 30 );
setEffAlphaKey( spep_1 + 36, ctZuzuzun, 14 );
setEffAlphaKey( spep_1 + 38, ctZuzuzun, 3 );
setEffAlphaKey( spep_1 + 40, ctZuzuzun, 0 );
----------------------------------------
----------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+84; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0, 0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge, 1, -900, -900);
setScaleKey(SP_dodge, 1, 1, 1);
setRotateKey(SP_dodge, 1, 0);

setMoveKey(SP_dodge+8, 1, -900, -900);
setScaleKey(SP_dodge+8, 1, 1);
setRotateKey(SP_dodge+8, 1, 0);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);

changeAnime(SP_dodge+9, 1, 100);

setMoveKey(SP_dodge+9, 1, 0, 0, 0);
setScaleKey(SP_dodge+9, 1, 1.0, 1.0);
setRotateKey(SP_dodge+9, 1, 0);

setMoveKey(SP_dodge+10, 1, 0, 0, 0);
setScaleKey(SP_dodge+10, 1, 1.0, 1.0);
setRotateKey(SP_dodge+10, 1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10, 0, -2500, -250, 0);

endPhase(SP_dodge+10);
do return end
else end

setEffMoveKey(spep_1+98,tame,0,0,0);
setEffScaleKey(spep_1+98,tame,1.0,1.0);
setEffAlphaKey(spep_1+98,tame,255);
setEffRotateKey(spep_1+98,tame,0);

setEffScaleKey(spep_1+98,shuchusen1,1.4,1.4);
setEffAlphaKey(spep_1+98,shuchusen1,255);

------------------------------------------------------
-- SP_02 / Scene05
------------------------------------------------------
spep_2=spep_1+98;

entryFadeBg(spep_2,0,98,0,10,10,10,220);
entryFade(spep_2,0,0,8,255,255,255,255);
entryFade(spep_2+42,0,0,8,255,255,255,255);
entryFade(spep_2+84,14,2,0,255,255,255,255);

--エフェクトの再生
dash=entryEffectLife(spep_2,SP_02,98,0x80,-1,0,0,0);

setEffMoveKey(spep_2,dash,0,0,0);
setEffMoveKey(spep_2+98,dash,0,0,0);
setEffScaleKey(spep_2,dash,1.0,1.0);
setEffScaleKey(spep_2+98,dash,1.0,1.0);
setEffAlphaKey(spep_2,dash,255);
setEffAlphaKey(spep_2+98,dash,255);
setEffRotateKey(spep_2,dash,0);
setEffRotateKey(spep_2+98,dash,0);

setEffShake(spep_2,dash,45,15);
setEffShake(spep_2+46,dash,54,10);

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 86, 1, 0 );

changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 + 46, 1, 107 );

setMoveKey( spep_2 + 0, 1, -450.4, -344.8 , 0 );
setMoveKey( spep_2 + 2, 1, -379, -283.4 , 0 );
setMoveKey( spep_2 + 4, 1, -307.5, -222.1 , 0 );
setMoveKey( spep_2 + 6, 1, -236.1, -160.8 , 0 );
setMoveKey( spep_2 + 8, 1, -164.7, -99.5 , 0 );
setMoveKey( spep_2 + 10, 1, -93.2, -38.2 , 0 );
setMoveKey( spep_2 + 12, 1, -21.8, 23.2 , 0 );
setMoveKey( spep_2 + 14, 1, -19.5, 25.2 , 0 );
setMoveKey( spep_2 + 16, 1, -17.1, 27.2 , 0 );
setMoveKey( spep_2 + 18, 1, -14.8, 29.2 , 0 );
setMoveKey( spep_2 + 20, 1, -12.4, 31.2 , 0 );
setMoveKey( spep_2 + 22, 1, -10.1, 33.2 , 0 );
setMoveKey( spep_2 + 24, 1, -7.8, 35.2 , 0 );
setMoveKey( spep_2 + 26, 1, -5.4, 37.2 , 0 );
setMoveKey( spep_2 + 28, 1, -3.1, 39.2 , 0 );
setMoveKey( spep_2 + 30, 1, -0.7, 41.2 , 0 );
setMoveKey( spep_2 + 32, 1, 1.6, 43.2 , 0 );
setMoveKey( spep_2 + 34, 1, 4, 45.2 , 0 );
setMoveKey( spep_2 + 36, 1, 6.3, 47.2 , 0 );
setMoveKey( spep_2 + 38, 1, 8.6, 49.2 , 0 );
setMoveKey( spep_2 + 40, 1, 11, 51.2 , 0 );
setMoveKey( spep_2 + 42, 1, 13.3, 53.2 , 0 );
setMoveKey( spep_2 + 44, 1, 15.7, 55.2 , 0 );

setScaleKey( spep_2 + 0, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 2, 1, 3.93, 3.93 );
setScaleKey( spep_2 + 4, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 6, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 8, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 10, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 12, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 14, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 16, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 18, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 20, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 24, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 26, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 28, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 30, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 32, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 34, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 36, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 38, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 40, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 42, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 44, 1, 1.33, 1.33 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 45, 1, 0 );

setMoveKey( spep_2 + 46, 1, 95.8, -220.1 , 0 );
setMoveKey( spep_2 + 48, 1, 94.6, -215.8 , 0 );
setMoveKey( spep_2 + 50, 1, 85.1, -214.7 , 0 );
setMoveKey( spep_2 + 52, 1, 91.1, -204.8 , 0 );
setMoveKey( spep_2 + 54, 1, 84.8, -206.2 , 0 );
setMoveKey( spep_2 + 56, 1, 85.3, -189.3 , 0 );
setMoveKey( spep_2 + 58, 1, 80.9, -199.5 , 0 );
setMoveKey( spep_2 + 60, 1, 92.5, -201.7 , 0 );
setMoveKey( spep_2 + 62, 1, 92.2, -216 , 0 );
setMoveKey( spep_2 + 64, 1, 99.8, -214.4 , 0 );
setMoveKey( spep_2 + 66, 1, 95.5, -224.8 , 0 );
setMoveKey( spep_2 + 68, 1, 107.3, -227.3 , 0 );
setMoveKey( spep_2 + 70, 1, 165, -389.5 , 0 );
setMoveKey( spep_2 + 72, 1, 220.6, -517 , 0 );
setMoveKey( spep_2 + 74, 1, 253.7, -625.4 , 0 );
setMoveKey( spep_2 + 76, 1, 292.1, -698.3 , 0 );
setMoveKey( spep_2 + 78, 1, 307.6, -754.9 , 0 );
setMoveKey( spep_2 + 80, 1, 320, -766.8 , 0 );
setMoveKey( spep_2 + 82, 1, 325.4, -797.2 , 0 );
setMoveKey( spep_2 + 84, 1, 339, -811.9 , 0 );
setMoveKey( spep_2 + 86, 1, 348.6, -834.7 , 0 );
setMoveKey( spep_2 + 88, 1, 358.3, -857.8 , 0 );

setScaleKey( spep_2 + 46, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 48, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 50, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 52, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 54, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 56, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 58, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 60, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 62, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 64, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 66, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 68, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 70, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 72, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 74, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 76, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 78, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 80, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 82, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 84, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 86, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 88, 1, 2.41, 2.41 );

setRotateKey( spep_2 + 46, 1, -18.7 );
setRotateKey( spep_2 + 48, 1, -18.7 );
setRotateKey( spep_2 + 50, 1, -18.6 );
setRotateKey( spep_2 + 60, 1, -18.6 );
setRotateKey( spep_2 + 62, 1, -18.7 );
setRotateKey( spep_2 + 72, 1, -18.7 );
setRotateKey( spep_2 + 74, 1, -18.6 );
setRotateKey( spep_2 + 84, 1, -18.6 );
setRotateKey( spep_2 + 86, 1, -18.7 );

shuchusen2=entryEffectLife(spep_2,906,98,0x100,-1,0,0,0);
setEffScaleKey(spep_2,shuchusen2,1.4,1.4);
setEffScaleKey(spep_2+98,shuchusen2,1.4,1.4);
setEffAlphaKey(spep_2,shuchusen2,255);
setEffAlphaKey(spep_2+98,shuchusen2,255);

--[[
ryusen2a=entryEffectLife(spep_2,920,98,0x80,-1,0,0,0);
setEffScaleKey(spep_2,ryusen2a,1.4,1.4);
setEffScaleKey(spep_2+98,ryusen2a,1.4,1.4);
setEffAlphaKey(spep_2,ryusen2a,255);
setEffAlphaKey(spep_2+98,ryusen2a,255);
]]--

ryusen2b=entryEffectLife(spep_2,923,98,0x80,-1,0,0,0);
setEffScaleKey( spep_2 + 98, ryusen2b, 1.4, 1.4 );
setEffScaleKey(spep_2+98,ryusen2b,1.4, 1.4 );
setEffAlphaKey(spep_2,ryusen2b,0);
setEffAlphaKey(spep_2+45,ryusen2b,0);
setEffAlphaKey(spep_2+46,ryusen2b,255);
setEffAlphaKey(spep_2+98,ryusen2b,255);

setEffRotateKey( spep_2 , ryusen2b, -25.5 );
setEffRotateKey( spep_2 + 98, ryusen2b, -25.5 );

--ガッ 10005
ctGa2=entryEffectLife(spep_2+46,10005,26,0x100,-1,16.1, 344, 0 );
setEffMoveKey( spep_2 + 46, ctGa2, 16.1, 344 , 0 );
setEffMoveKey( spep_2 + 48, ctGa2, 16.3, 344.1 , 0 );
setEffMoveKey( spep_2 + 50, ctGa2, 16, 344.2 , 0 );
setEffMoveKey( spep_2 + 52, ctGa2, 16.1, 344.2 , 0 );
setEffMoveKey( spep_2 + 56, ctGa2, 16.1, 344.2 , 0 );
setEffMoveKey( spep_2 + 58, ctGa2, 16.1, 344.1 , 0 );
setEffMoveKey( spep_2 + 60, ctGa2, 16.1, 344 , 0 );
setEffMoveKey( spep_2 + 66, ctGa2, 16.1, 344 , 0 );
setEffMoveKey( spep_2 + 68, ctGa2, 16.1, 344.1 , 0 );
setEffMoveKey( spep_2 + 72, ctGa2, 16.1, 344.1 , 0 );

setEffScaleKey( spep_2 + 46, ctGa2, 0.91, 0.91 );
setEffScaleKey( spep_2 + 48, ctGa2, 1.95, 1.95 );
setEffScaleKey( spep_2 + 50, ctGa2, 2.48, 2.48 );
setEffScaleKey( spep_2 + 52, ctGa2, 2.36, 2.36 );
setEffScaleKey( spep_2 + 54, ctGa2, 2.24, 2.24 );
setEffScaleKey( spep_2 + 56, ctGa2, 2.12, 2.12 );
setEffScaleKey( spep_2 + 58, ctGa2, 2.01, 2.01 );
setEffScaleKey( spep_2 + 60, ctGa2, 2, 2 );
setEffScaleKey( spep_2 + 62, ctGa2, 1.99, 1.99 );
setEffScaleKey( spep_2 + 64, ctGa2, 1.98, 1.98 );
setEffScaleKey( spep_2 + 66, ctGa2, 1.97, 1.97 );
setEffScaleKey( spep_2 + 68, ctGa2, 1.96, 1.96 );
setEffScaleKey( spep_2 + 70, ctGa2, 1.95, 1.95 );
setEffScaleKey( spep_2 + 72, ctGa2, 1.94, 1.94 );

setEffRotateKey( spep_2 + 46, ctGa2, 4.3 );
setEffRotateKey( spep_2 + 48, ctGa2, -9.1 );
setEffRotateKey( spep_2 + 50, ctGa2, 4.3 );
setEffRotateKey( spep_2 + 52, ctGa2, 12.9 );
setEffRotateKey( spep_2 + 54, ctGa2, 4.1 );
setEffRotateKey( spep_2 + 56, ctGa2, -6.6 );
setEffRotateKey( spep_2 + 58, ctGa2, 4.3 );
setEffRotateKey( spep_2 + 60, ctGa2, 4.2 );
setEffRotateKey( spep_2 + 64, ctGa2, 4.2 );
setEffRotateKey( spep_2 + 66, ctGa2, 4.3 );
setEffRotateKey( spep_2 + 72, ctGa2, 4.3 );

setEffAlphaKey( spep_2 + 46, ctGa2, 255 );
setEffAlphaKey( spep_2 + 60, ctGa2, 255 );
setEffAlphaKey( spep_2 + 62, ctGa2, 213 );
setEffAlphaKey( spep_2 + 64, ctGa2, 170 );
setEffAlphaKey( spep_2 + 66, ctGa2, 128 );
setEffAlphaKey( spep_2 + 68, ctGa2, 85 );
setEffAlphaKey( spep_2 + 70, ctGa2, 42 );
setEffAlphaKey( spep_2 + 72, ctGa2, 0 );

--しゅん
playSe(spep_2+22,43);
--どん
playSe(spep_2+44,1010);

------------------------------------------------------
-- SP_03/ SP_04 /Scene03
------------------------------------------------------
spep_3=spep_2+98;

entryFadeBg(spep_3,0,188,0,10,10,10,255);
entryFade(spep_3,0,0,8,255,255,255,255);
entryFade(spep_3+22,0,0,10,255,255,255,255);
entryFade(spep_3+58,0,0,10,255,255,255,255);
entryFade(spep_3+142,0,0,8,255,255,255,255);
entryFade(spep_3+170,8,2,0,255,255,255,255);

setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 166, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 + 24, 1, 108 );
changeAnime( spep_3 + 58, 1, 106 );
changeAnime( spep_3 + 142, 1, 107 );

setMoveKey( spep_3 + 0, 1, -1628.3, 8 , 0 );
setMoveKey( spep_3 + 2, 1, -1530.6, 8 , 0 );
setMoveKey( spep_3 + 4, 1, -1367.6, 8 , 0 );
setMoveKey( spep_3 + 6, 1, -1139.5, 8 , 0 );
setMoveKey( spep_3 + 8, 1, -846.2, 8 , 0 );
setMoveKey( spep_3 + 10, 1, -487.7, 8 , 0 );
setMoveKey( spep_3 + 12, 1, -64, 8 , 0 );
setMoveKey( spep_3 + 14, 1, -58.3, 8 , 0 );
setMoveKey( spep_3 + 16, 1, -52.7, 8 , 0 );
setMoveKey( spep_3 + 18, 1, -47, 8 , 0 );
setMoveKey( spep_3 + 20, 1, -41.4, 8 , 0 );
setMoveKey( spep_3 + 23, 1, -35.7, 8 , 0 );
setMoveKey( spep_3 + 24, 1, 174.1, 22.9 , 0 );
setMoveKey( spep_3 + 26, 1, 170.7, 16.6 , 0 );
setMoveKey( spep_3 + 28, 1, 165.5, 10.2 , 0 );
setMoveKey( spep_3 + 30, 1, 158.3, 3.8 , 0 );
setMoveKey( spep_3 + 32, 1, 149.3, -2.6 , 0 );
setMoveKey( spep_3 + 34, 1, 164.9, -2.6 , 0 );
setMoveKey( spep_3 + 36, 1, 169.5, -2.6 , 0 );
setMoveKey( spep_3 + 38, 1, 174.1, -2.6 , 0 );
setMoveKey( spep_3 + 40, 1, 178.6, -2.7 , 0 );
setMoveKey( spep_3 + 42, 1, 183.2, -2.7 , 0 );
setMoveKey( spep_3 + 44, 1, 187.8, -2.7 , 0 );
setMoveKey( spep_3 + 46, 1, 192.3, -2.7 , 0 );
setMoveKey( spep_3 + 48, 1, 196.9, -2.7 , 0 );
setMoveKey( spep_3 + 50, 1, 201.5, -2.7 , 0 );
setMoveKey( spep_3 + 52, 1, 206, -2.7 , 0 );
setMoveKey( spep_3 + 54, 1, 210.6, -2.7 , 0 );
setMoveKey( spep_3 + 57, 1, 215.2, -2.7 , 0 );
setMoveKey( spep_3 + 58, 1, 72.6, 204.2 , 0 );
setMoveKey( spep_3 + 60, 1, 71, 227.9 , 0 );
setMoveKey( spep_3 + 62, 1, 68.5, 244.3 , 0 );
setMoveKey( spep_3 + 64, 1, 65.3, 253.2 , 0 );
setMoveKey( spep_3 + 66, 1, 61.2, 254.7 , 0 );
setMoveKey( spep_3 + 68, 1, 65.1, 265.6 , 0 );
setMoveKey( spep_3 + 70, 1, 68.9, 276.5 , 0 );
setMoveKey( spep_3 + 72, 1, 72.8, 287.4 , 0 );
setMoveKey( spep_3 + 74, 1, 76.7, 298.3 , 0 );
setMoveKey( spep_3 + 76, 1, 80.5, 309.2 , 0 );
setMoveKey( spep_3 + 78, 1, 84.4, 320.1 , 0 );
setMoveKey( spep_3 + 80, 1, 81.4, 270.1 , 0 );
setMoveKey( spep_3 + 82, 1, 78.4, 220.1 , 0 );
setMoveKey( spep_3 + 84, 1, 75.4, 170.1 , 0 );
setMoveKey( spep_3 + 86, 1, 72.4, 120.1 , 0 );
setMoveKey( spep_3 + 88, 1, 72.4, 119 , 0 );
setMoveKey( spep_3 + 90, 1, 72.4, 118 , 0 );
setMoveKey( spep_3 + 92, 1, 68.4, 108.9 , 0 );
setMoveKey( spep_3 + 94, 1, 72.4, 115.9 , 0 );
setMoveKey( spep_3 + 96, 1, 64.4, 106.8 , 0 );
setMoveKey( spep_3 + 98, 1, 72.4, 113.7 , 0 );
setMoveKey( spep_3 + 100, 1, 68.4, 100.7 , 0 );
setMoveKey( spep_3 + 102, 1, 72.4, 111.6 , 0 );
setMoveKey( spep_3 + 104, 1, 64.4, 102.6 , 0 );
setMoveKey( spep_3 + 106, 1, 72.4, 109.5 , 0 );
setMoveKey( spep_3 + 108, 1, 68.4, 104.5 , 0 );
setMoveKey( spep_3 + 110, 1, 72.4, 107.4 , 0 );
setMoveKey( spep_3 + 112, 1, 64.4, 98.3 , 0 );
setMoveKey( spep_3 + 114, 1, 72.4, 105.3 , 0 );
setMoveKey( spep_3 + 116, 1, 68.4, 96.2 , 0 );
setMoveKey( spep_3 + 118, 1, 72.4, 103.2 , 0 );
setMoveKey( spep_3 + 120, 1, 64.4, 94.1 , 0 );
setMoveKey( spep_3 + 122, 1, 72.4, 100.7 , 0 );
setMoveKey( spep_3 + 124, 1, 68.4, 95.3 , 0 );
setMoveKey( spep_3 + 126, 1, 72.4, 97.9 , 0 );
setMoveKey( spep_3 + 128, 1, 68.4, 88.5 , 0 );
setMoveKey( spep_3 + 130, 1, 72.4, 95.1 , 0 );
setMoveKey( spep_3 + 132, 1, 68.4, 89.7 , 0 );
setMoveKey( spep_3 + 134, 1, 72.4, 92.3 , 0 );
setMoveKey( spep_3 + 136, 1, 72.4, 90.9 , 0 );
setMoveKey( spep_3 + 138, 1, 72.4, 89.5 , 0 );
setMoveKey( spep_3 + 141, 1, 72.4, 88.1 , 0 );
setMoveKey( spep_3 + 142, 1, 80.5, -88 , 0 );
setMoveKey( spep_3 + 144, 1, 90.3, -93.6 , 0 );
setMoveKey( spep_3 + 146, 1, 92.1, -83.3 , 0 );
setMoveKey( spep_3 + 148, 1, 91.9, -68.9 , 0 );
setMoveKey( spep_3 + 150, 1, 141.1, -188.2 , 0 );
setMoveKey( spep_3 + 152, 1, 189.8, -313.9 , 0 );
setMoveKey( spep_3 + 154, 1, 227.6, -411.7 , 0 );
setMoveKey( spep_3 + 156, 1, 254.6, -481.5 , 0 );
setMoveKey( spep_3 + 158, 1, 270.8, -523.4 , 0 );
setMoveKey( spep_3 + 160, 1, 276.1, -537.4 , 0 );
setMoveKey( spep_3 + 162, 1, 282.5, -553.7 , 0 );
setMoveKey( spep_3 + 164, 1, 288.8, -569.9 , 0 );
setMoveKey( spep_3 + 166, 1, 295.1, -586.1 , 0 );
setMoveKey( spep_3 + 168, 1, 301.4, -602.3 , 0 );

setScaleKey( spep_3 + 0, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 23, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 24, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 26, 1, 1.88, 1.88 );
setScaleKey( spep_3 + 28, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 30, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 32, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 57, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 58, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 60, 1, 1.83, 1.83 );
setScaleKey( spep_3 + 62, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 64, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 66, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 141, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 142, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 144, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 146, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 148, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 150, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 152, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 154, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 156, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 158, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 160, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 162, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 164, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 166, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 168, 1, 1.79, 1.79 );

setRotateKey( spep_3 + 0, 1, 5.2 );
setRotateKey( spep_3 + 16, 1, 5.2 );
setRotateKey( spep_3 + 18, 1, 5.1 );
setRotateKey( spep_3 + 23, 1, 5.1 );
setRotateKey( spep_3 + 24, 1, 0.9 );
setRotateKey( spep_3 + 28, 1, 0.9 );
setRotateKey( spep_3 + 30, 1, 0.8 );
setRotateKey( spep_3 + 44, 1, 0.8 );
setRotateKey( spep_3 + 46, 1, 0.9 );
setRotateKey( spep_3 + 57, 1, 0.9 );
setRotateKey( spep_3 + 58, 1, -54.4 );
setRotateKey( spep_3 + 141, 1, -54.4 );
setRotateKey( spep_3 + 142, 1, -18.7 );
setRotateKey( spep_3 + 144, 1, -18.6 );
setRotateKey( spep_3 + 146, 1, -18.6 );
setRotateKey( spep_3 + 148, 1, -18.7 );
setRotateKey( spep_3 + 152, 1, -18.7 );
setRotateKey( spep_3 + 154, 1, -18.6 );
setRotateKey( spep_3 + 164, 1, -18.6 );
setRotateKey( spep_3 + 166, 1, -18.7 );

--エフェクトの再生
smash=entryEffectLife(spep_3,SP_03,188,0x100,-1,0,0,0);

setEffMoveKey(spep_3,smash,0,0,0);
setEffMoveKey(spep_3+188,smash,0,0,0);
setEffScaleKey(spep_3,smash,1.0,1.0);
setEffScaleKey(spep_3+188,smash,1.0,1.0);
setEffAlphaKey(spep_3,smash,255);
setEffAlphaKey(spep_3+188,smash,255);
setEffRotateKey(spep_3,smash,0);
setEffRotateKey(spep_3+188,smash,0);

setEffShake(spep_3,smash,23,10);
setEffShake(spep_3+24,smash,29,20);
setEffShake(spep_3+58,smash,84,10);
setEffShake(spep_3+142,smash,42,10);

shuchusen3=entryEffectLife(spep_3,906,178,0x100,-1,0,0,0);
setEffScaleKey(spep_3,shuchusen3,1.4,1.4);
setEffScaleKey(spep_3+178,shuchusen3,1.4,1.4);
setEffAlphaKey(spep_3,shuchusen3,255);
setEffAlphaKey(spep_3+178,shuchusen3,255);

ryusen3a=entryEffectLife(spep_3,920,141,0x80,-1,0,0,0);
setEffScaleKey(spep_3,ryusen3a,1.4,1.4);
setEffScaleKey(spep_3+141,ryusen3a,1.4,1.4);
setEffAlphaKey(spep_3,ryusen3a,255);
setEffAlphaKey(spep_3+141,ryusen3a,255);
setEffRotateKey(spep_3,ryusen3a,0);
setEffRotateKey(spep_3+57,ryusen3a,0);
setEffRotateKey(spep_3+58,ryusen3a,90);
setEffRotateKey(spep_3+141,ryusen3a,90);

--エフェクトの再生

ryusen3b=entryEffectLife(spep_3,923,178,0x80,-1,0,0,0);
setEffScaleKey( spep_3, ryusen3b, 1.4, 1.4 );
setEffScaleKey(spep_3+178,ryusen3b,1.4, 1.4 );
setEffAlphaKey(spep_3,ryusen3b,0);
setEffAlphaKey(spep_3+141,ryusen3b,0);
setEffAlphaKey(spep_3+142,ryusen3b,255);
setEffAlphaKey(spep_3+178,ryusen3b,255);

setEffRotateKey( spep_3 + 142, ryusen3b, -25.5 );
setEffRotateKey( spep_3 + 178, ryusen3b, -25.5 );

smash2=entryEffectLife(spep_3,SP_04,178,0x80,-1,0,0,0);

setEffMoveKey(spep_3,smash2,0,0,0);
setEffMoveKey(spep_3+178,smash2,0,0,0);
setEffScaleKey(spep_3,smash2,1.0,1.0);
setEffScaleKey(spep_3+178,smash2,1.0,1.0);
setEffAlphaKey(spep_3,smash2,255);
setEffAlphaKey(spep_3+178,smash2,255);
setEffRotateKey(spep_3,smash2,0);
setEffRotateKey(spep_3+178,smash2,0);

setEffShake(spep_3,smash2,23,10);
setEffShake(spep_3+24,smash2,29,20);
setEffShake(spep_3+58,smash2,84,10);
setEffShake(spep_3+142,smash2,42,10);

--ガッ 10005
ctGa1=entryEffectLife(spep_3+24,10005,26,0x100,-1,168.2, 292 , 0 );

setEffMoveKey( spep_3 + 24, ctGa1, 168.2, 292 , 0 );
setEffMoveKey( spep_3 + 26, ctGa1, 168.4, 292 , 0 );
setEffMoveKey( spep_3 + 28, ctGa1, 168.4, 292.2 , 0 );
setEffMoveKey( spep_3 + 30, ctGa1, 168.4, 292.2 , 0 );
setEffMoveKey( spep_3 + 32, ctGa1, 168.4, 292.1 , 0 );
setEffMoveKey( spep_3 + 34, ctGa1, 168.3, 292.2 , 0 );
setEffMoveKey( spep_3 + 36, ctGa1, 168.3, 292 , 0 );
setEffMoveKey( spep_3 + 42, ctGa1, 168.3, 292 , 0 );
setEffMoveKey( spep_3 + 44, ctGa1, 168.4, 292 , 0 );
setEffMoveKey( spep_3 + 50, ctGa1, 168.4, 292 , 0 );

setEffScaleKey( spep_3 + 24, ctGa1, 0.91, 0.91 );
setEffScaleKey( spep_3 + 26, ctGa1, 1.95, 1.95 );
setEffScaleKey( spep_3 + 28, ctGa1, 2.48, 2.48 );
setEffScaleKey( spep_3 + 30, ctGa1, 2.36, 2.36 );
setEffScaleKey( spep_3 + 32, ctGa1, 2.24, 2.24 );
setEffScaleKey( spep_3 + 34, ctGa1, 2.12, 2.12 );
setEffScaleKey( spep_3 + 36, ctGa1, 2.01, 2.01 );
setEffScaleKey( spep_3 + 38, ctGa1, 2, 2 );
setEffScaleKey( spep_3 + 40, ctGa1, 1.99, 1.99 );
setEffScaleKey( spep_3 + 42, ctGa1, 1.98, 1.98 );
setEffScaleKey( spep_3 + 44, ctGa1, 1.97, 1.97 );
setEffScaleKey( spep_3 + 46, ctGa1, 1.96, 1.96 );
setEffScaleKey( spep_3 + 48, ctGa1, 1.95, 1.95 );
setEffScaleKey( spep_3 + 50, ctGa1, 1.94, 1.94 );

setEffRotateKey( spep_3 + 24, ctGa1, 19.1 );
setEffRotateKey( spep_3 + 26, ctGa1, 5.7 );
setEffRotateKey( spep_3 + 28, ctGa1, 19.1 );
setEffRotateKey( spep_3 + 30, ctGa1, 27.6 );
setEffRotateKey( spep_3 + 32, ctGa1, 18.9 );
setEffRotateKey( spep_3 + 34, ctGa1, 8.2 );
setEffRotateKey( spep_3 + 36, ctGa1, 19.1 );
setEffRotateKey( spep_3 + 38, ctGa1, 18.9 );
setEffRotateKey( spep_3 + 40, ctGa1, 18.9 );
setEffRotateKey( spep_3 + 42, ctGa1, 19 );
setEffRotateKey( spep_3 + 46, ctGa1, 19 );
setEffRotateKey( spep_3 + 48, ctGa1, 19.1 );
setEffRotateKey( spep_3 + 50, ctGa1, 19.1 );

setEffAlphaKey( spep_3 + 24, ctGa1, 255 );
setEffAlphaKey( spep_3 + 38, ctGa1, 255 );
setEffAlphaKey( spep_3 + 40, ctGa1, 213 );
setEffAlphaKey( spep_3 + 42, ctGa1, 170 );
setEffAlphaKey( spep_3 + 44, ctGa1, 128 );
setEffAlphaKey( spep_3 + 46, ctGa1, 85 );
setEffAlphaKey( spep_3 + 48, ctGa1, 42 );
setEffAlphaKey( spep_3 + 50, ctGa1, 0 );

ctGa2=entryEffectLife(spep_3+58,10005,26,0x100,-1,-160, 265.9 , 0 );

setEffMoveKey( spep_3 + 58, ctGa2, -160, 265.9 , 0 );
setEffMoveKey( spep_3 + 60, ctGa2, -160, 266.2 , 0 );
setEffMoveKey( spep_3 + 62, ctGa2, -160.3, 266.1 , 0 );
setEffMoveKey( spep_3 + 64, ctGa2, -160.3, 266 , 0 );
setEffMoveKey( spep_3 + 66, ctGa2, -160.2, 266.2 , 0 );
setEffMoveKey( spep_3 + 68, ctGa2, -160.2, 266.2 , 0 );
setEffMoveKey( spep_3 + 70, ctGa2, -160.1, 266 , 0 );
setEffMoveKey( spep_3 + 72, ctGa2, -160, 266 , 0 );
setEffMoveKey( spep_3 + 78, ctGa2, -160, 266 , 0 );
setEffMoveKey( spep_3 + 80, ctGa2, -160.1, 266 , 0 );

setEffScaleKey( spep_3 + 58, ctGa2, 0.91, 0.91 );
setEffScaleKey( spep_3 + 60, ctGa2, 1.95, 1.95 );
setEffScaleKey( spep_3 + 62, ctGa2, 2.48, 2.48 );
setEffScaleKey( spep_3 + 64, ctGa2, 2.36, 2.36 );
setEffScaleKey( spep_3 + 66, ctGa2, 2.24, 2.24 );
setEffScaleKey( spep_3 + 68, ctGa2, 2.12, 2.12 );
setEffScaleKey( spep_3 + 70, ctGa2, 2.01, 2.01 );
setEffScaleKey( spep_3 + 72, ctGa2, 2, 2 );
setEffScaleKey( spep_3 + 74, ctGa2, 1.99, 1.99 );
setEffScaleKey( spep_3 + 76, ctGa2, 1.98, 1.98 );
setEffScaleKey( spep_3 + 78, ctGa2, 1.97, 1.97 );
setEffScaleKey( spep_3 + 80, ctGa2, 1.96, 1.96 );
setEffScaleKey( spep_3 + 82, ctGa2, 1.95, 1.95 );
setEffScaleKey( spep_3 + 84, ctGa2, 1.94, 1.94 );

setEffRotateKey( spep_3 + 58, ctGa2, -24.6 );
setEffRotateKey( spep_3 + 60, ctGa2, -38 );
setEffRotateKey( spep_3 + 62, ctGa2, -24.6 );
setEffRotateKey( spep_3 + 64, ctGa2, -16.1 );
setEffRotateKey( spep_3 + 66, ctGa2, -24.8 );
setEffRotateKey( spep_3 + 68, ctGa2, -35.5 );
setEffRotateKey( spep_3 + 70, ctGa2, -24.6 );
setEffRotateKey( spep_3 + 72, ctGa2, -24.8 );
setEffRotateKey( spep_3 + 74, ctGa2, -24.8 );
setEffRotateKey( spep_3 + 76, ctGa2, -24.7 );
setEffRotateKey( spep_3 + 80, ctGa2, -24.7 );
setEffRotateKey( spep_3 + 82, ctGa2, -24.6 );

setEffAlphaKey( spep_3 + 58, ctGa2, 255 );
setEffAlphaKey( spep_3 + 72, ctGa2, 255 );
setEffAlphaKey( spep_3 + 74, ctGa2, 213 );
setEffAlphaKey( spep_3 + 76, ctGa2, 170 );
setEffAlphaKey( spep_3 + 78, ctGa2, 128 );
setEffAlphaKey( spep_3 + 80, ctGa2, 85 );
setEffAlphaKey( spep_3 + 82, ctGa2, 42 );
setEffAlphaKey( spep_3 + 84, ctGa2, 0 );

--バキッ 10020
ctBaki=entryEffectLife(spep_3+142,10020,22,0x100,-1,229.5, 383 , 0 );

setEffMoveKey( spep_3 + 142, ctBaki, 229.5, 383 , 0 );
setEffMoveKey( spep_3 + 144, ctBaki, 224.5, 353.2 , 0 );
setEffMoveKey( spep_3 + 146, ctBaki, 204.7, 347.2 , 0 );
setEffMoveKey( spep_3 + 148, ctBaki, 198.8, 356 , 0 );
setEffMoveKey( spep_3 + 150, ctBaki, 208.7, 352.6 , 0 );
setEffMoveKey( spep_3 + 152, ctBaki, 220.2, 349.9 , 0 );
setEffMoveKey( spep_3 + 154, ctBaki, 212.1, 357.8 , 0 );
setEffMoveKey( spep_3 + 156, ctBaki, 212.9, 358.9 , 0 );
setEffMoveKey( spep_3 + 158, ctBaki, 213.6, 359.9 , 0 );
setEffMoveKey( spep_3 + 160, ctBaki, 214.3, 360.9 , 0 );
setEffMoveKey( spep_3 + 162, ctBaki, 215.1, 362 , 0 );
setEffMoveKey( spep_3 + 164, ctBaki, 215.8, 363 , 0 );

setEffScaleKey( spep_3 + 142, ctBaki, 0.91, 0.91 );
setEffScaleKey( spep_3 + 144, ctBaki, 1.95, 1.95 );
setEffScaleKey( spep_3 + 146, ctBaki, 2.48, 2.48 );
setEffScaleKey( spep_3 + 148, ctBaki, 2.36, 2.36 );
setEffScaleKey( spep_3 + 150, ctBaki, 2.24, 2.24 );
setEffScaleKey( spep_3 + 152, ctBaki, 2.12, 2.12 );
setEffScaleKey( spep_3 + 154, ctBaki, 2.01, 2.01 );
setEffScaleKey( spep_3 + 156, ctBaki, 1.96, 1.96 );
setEffScaleKey( spep_3 + 158, ctBaki, 1.92, 1.92 );
setEffScaleKey( spep_3 + 160, ctBaki, 1.87, 1.87 );
setEffScaleKey( spep_3 + 162, ctBaki, 1.83, 1.83 );
setEffScaleKey( spep_3 + 164, ctBaki, 1.78, 1.78 );

setEffRotateKey( spep_3 + 142, ctBaki, 34.5 );
setEffRotateKey( spep_3 + 144, ctBaki, 21.1 );
setEffRotateKey( spep_3 + 146, ctBaki, 34.5 );
setEffRotateKey( spep_3 + 148, ctBaki, 43.1 );
setEffRotateKey( spep_3 + 150, ctBaki, 34.3 );
setEffRotateKey( spep_3 + 152, ctBaki, 23.6 );
setEffRotateKey( spep_3 + 154, ctBaki, 34.5 );

setEffAlphaKey( spep_3 + 142, ctBaki, 255 );
setEffAlphaKey( spep_3 + 154, ctBaki, 255 );
setEffAlphaKey( spep_3 + 156, ctBaki, 204 );
setEffAlphaKey( spep_3 + 158, ctBaki, 153 );
setEffAlphaKey( spep_3 + 160, ctBaki, 102 );
setEffAlphaKey( spep_3 + 162, ctBaki, 51 );
setEffAlphaKey( spep_3 + 164, ctBaki, 0 );

playSe( spep_3,44);
playSe( spep_3 + 24, 1000 );
playSe( spep_3 + 58, 1009 );
playSe( spep_3 + 104, 44 );
playSe( spep_3 + 142, 1010 );

------------------------------------------------------
-- SP_05 / Scene08
------------------------------------------------------
spep_4=spep_3+178;

entryFadeBg(spep_4,0,158,0,10,10,10,255);
entryFade(spep_4,0,0,12,255,255,255,255);
entryFade(spep_4+138,18,2,0,255,255,255,255);

--エフェクトの再生
charge=entryEffectLife(spep_4,SP_05,158,0x100,-1,0,0,0);

setEffMoveKey(spep_4,charge,0,0,0);
setEffMoveKey(spep_4+158,charge,0,0,0);
setEffScaleKey(spep_4,charge,1.0,1.0);
setEffScaleKey(spep_4+158,charge,1.0,1.0);
setEffAlphaKey(spep_4,charge,255);
setEffAlphaKey(spep_4+158,charge,255);
setEffRotateKey(spep_4,charge,0);
setEffRotateKey(spep_4+158,charge,0);

setEffShake(spep_4,charge,43,10);
setEffShake(spep_4+44,charge,114,20);

--ゴゴゴ
ctgogo = entryEffectLife( spep_4+44, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_4+44, ctgogo, 70, 8);
setEffScaleKey(spep_4+44, ctgogo, 0.7, 0.7);

--顔カットイン
speff = entryEffect(  spep_4+30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4+30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--集中線
shuchusen4=entryEffectLife(spep_4,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_4,shuchusen4,1.6,1.6);

playSe(  spep_4,SE_01);
playSe(  spep_4+30,SE_04);
------------------------------------------------------
-- CARD　極限Z覚醒
------------------------------------------------------
spep_5=spep_4+158;

playSe( spep5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--entryFade( spep_5+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_5-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then

print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1120,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1121,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

end

-- ** エフェクト等 ** --
entryFade(spep_5+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

------------------------------------------------------
-- SP_06 / Scene06
------------------------------------------------------
spep_6=spep_5+90;

entryFade(spep_6,0,0,14,255,255,255,255);
entryFade(spep_6+80,18,2,0,255,255,255,255);
entryFadeBg(spep_6,0,98,0,10,10,10,255);

--エフェクトの再生
burst=entryEffectLife(spep_6,SP_06,98,0x100,-1,0,0,0);

setEffMoveKey(spep_6,burst,0,0,0);
setEffMoveKey(spep_6+98,burst,0,0,0);
setEffScaleKey(spep_6,burst,1.0,1.0);
setEffScaleKey(spep_6+98,burst,1.0,1.0);
setEffAlphaKey(spep_6,burst,255);
setEffAlphaKey(spep_6+98,burst,255);
setEffRotateKey(spep_6,burst,0);
setEffRotateKey(spep_6+98,burst,0);

--集中線
shuchusen6=entryEffectLife(spep_6,906,98,0x100,-1,0,0,0);
setEffScaleKey(spep_6,shuchusen6,1.4,1.4);
setEffScaleKey(spep_6+98,shuchusen6,1.4,1.4);
setEffAlphaKey(spep_6,shuchusen6,255);
setEffAlphaKey(spep_6+98,shuchusen6,255);

--ズオ 10012
ctZuo=entryEffectLife(spep_6+2,10012,88,0x100,-1,-182.3, 222.1 , 0 );

setEffMoveKey( spep_6 + 2, ctZuo, -182.3, 222.1 , 0 );
setEffMoveKey( spep_6 + 4, ctZuo, -143.8, 278.7 , 0 );
setEffMoveKey( spep_6 + 6, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 8, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 10, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 12, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 14, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 16, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 18, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 20, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 22, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 24, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 26, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 28, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 30, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 32, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 34, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 36, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 38, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 40, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 42, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 44, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 46, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 48, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 50, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 52, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 54, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 56, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 58, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 60, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 62, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 64, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 66, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 68, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 70, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 72, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 74, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 76, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 78, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 80, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 82, ctZuo, -118.6, 343 , 0 );
setEffMoveKey( spep_6 + 84, ctZuo, -70.5, 345.2 , 0 );
setEffMoveKey( spep_6 + 86, ctZuo, -94.6, 353.7 , 0 );
setEffMoveKey( spep_6 + 88, ctZuo, -32.9, 354.7 , 0 );
setEffMoveKey( spep_6 + 90, ctZuo, -14.1, 359.4 , 0 );

setEffScaleKey( spep_6 + 2, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_6 + 4, ctZuo, 1.54, 1.54 );
setEffScaleKey( spep_6 + 6, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_6 + 80, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_6 + 82, ctZuo, 3.55, 3.55 );
setEffScaleKey( spep_6 + 84, ctZuo, 4.37, 4.37 );
setEffScaleKey( spep_6 + 86, ctZuo, 5.19, 5.19 );
setEffScaleKey( spep_6 + 88, ctZuo, 6.01, 6.01 );
setEffScaleKey( spep_6 + 90, ctZuo, 6.82, 6.82 );

setEffRotateKey( spep_6 + 2, ctZuo, -12.8 );

setEffAlphaKey( spep_6 + 2, ctZuo, 255 );
setEffAlphaKey( spep_6 + 80, ctZuo, 255 );
setEffAlphaKey( spep_6 + 82, ctZuo, 204 );
setEffAlphaKey( spep_6 + 84, ctZuo, 153 );
setEffAlphaKey( spep_6 + 86, ctZuo, 102 );
setEffAlphaKey( spep_6 + 88, ctZuo, 51 );
setEffAlphaKey( spep_6 + 90, ctZuo, 0 );

playSe(spep_6,SE_06);

------------------------------------------------------
-- SP_07 / SP_08 / Scene09
------------------------------------------------------
spep_7=spep_6+98;

entryFade(spep_7,0,0,16,255,255,255,255);
entryFade(spep_7+64,0,0,12,255,255,255,255);
entryFade(spep_7+148,18,2,0,255,255,255,255);
entryFadeBg(spep_7,0,168,0,10,10,10,255);

setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 62, 1, 0 );
changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, -436.4, -588.3 , 0 );
setMoveKey( spep_7 + 2, 1, -415.4, -555.3 , 0 );
setMoveKey( spep_7 + 4, 1, -354.5, -482.4 , 0 );
setMoveKey( spep_7 + 6, 1, -325.5, -441.4 , 0 );
setMoveKey( spep_7 + 8, 1, -272.6, -376.4 , 0 );
setMoveKey( spep_7 + 10, 1, -243.6, -335.5 , 0 );
setMoveKey( spep_7 + 12, 1, -192.6, -270.5 , 0 );
setMoveKey( spep_7 + 14, 1, -159.7, -229.5 , 0 );
setMoveKey( spep_7 + 16, 1, -138.7, -216.6 , 0 );
setMoveKey( spep_7 + 18, 1, -77.8, -123.6 , 0 );
setMoveKey( spep_7 + 20, 1, -93.7, -130.7 , 0 );
setMoveKey( spep_7 + 22, 1, -85.7, -125.8 , 0 );
setMoveKey( spep_7 + 24, 1, -68.9, -111.4 , 0 );
setMoveKey( spep_7 + 26, 1, -76.1, -121.2 , 0 );
setMoveKey( spep_7 + 28, 1, -67.5, -107 , 0 );
setMoveKey( spep_7 + 30, 1, -74.7, -112.6 , 0 );
setMoveKey( spep_7 + 32, 1, -66, -102.4 , 0 );
setMoveKey( spep_7 + 34, 1, -77.3, -116.2 , 0 );
setMoveKey( spep_7 + 36, 1, -41.3, -79.3 , 0 );
setMoveKey( spep_7 + 38, 1, -40.8, -76.1 , 0 );
setMoveKey( spep_7 + 40, 1, -38, -72.2 , 0 );
setMoveKey( spep_7 + 42, 1, -51.3, -100.3 , 0 );
setMoveKey( spep_7 + 44, 1, -32.5, -64.5 , 0 );
setMoveKey( spep_7 + 46, 1, -45.9, -76.5 , 0 );
setMoveKey( spep_7 + 48, 1, -27.1, -56.7 , 0 );
setMoveKey( spep_7 + 50, 1, -48.4, -68.8 , 0 );
setMoveKey( spep_7 + 52, 1, -21.6, -48.9 , 0 );
setMoveKey( spep_7 + 54, 1, -34.9, -77 , 0 );
setMoveKey( spep_7 + 56, 1, -16.1, -41.1 , 0 );
setMoveKey( spep_7 + 58, 1, -29.3, -53.3 , 0 );
setMoveKey( spep_7 + 60, 1, -10.7, -33.4 , 0 );
setMoveKey( spep_7 + 62, 1, -31.9, -45.4 , 0 );

setScaleKey( spep_7 + 0, 1, 2.07, 2.07 );
setScaleKey( spep_7+62 , 1, 2.07, 2.07 );

setRotateKey( spep_7 + 0, 1, -30.8 );
setRotateKey( spep_7 + 18, 1, -30.8 );
setRotateKey( spep_7 + 20, 1, -30.7 );
setRotateKey( spep_7 + 22, 1, -30.6 );
setRotateKey( spep_7 + 24, 1, -30.5 );
setRotateKey( spep_7 + 26, 1, -30.4 );
setRotateKey( spep_7 + 28, 1, -30.3 );
setRotateKey( spep_7 + 30, 1, -30.2 );
setRotateKey( spep_7 + 32, 1, -30.1 );
setRotateKey( spep_7 + 34, 1, -30 );
setRotateKey( spep_7 + 36, 1, -29.9 );
setRotateKey( spep_7 + 38, 1, -29.8 );
setRotateKey( spep_7 + 40, 1, -29.7 );
setRotateKey( spep_7 + 42, 1, -29.7 );
setRotateKey( spep_7 + 44, 1, -29.6 );
setRotateKey( spep_7 + 46, 1, -29.5 );
setRotateKey( spep_7 + 48, 1, -29.4 );
setRotateKey( spep_7 + 50, 1, -29.3 );
setRotateKey( spep_7 + 52, 1, -29.2 );
setRotateKey( spep_7 + 54, 1, -29.1 );
setRotateKey( spep_7 + 56, 1, -29 );
setRotateKey( spep_7 + 58, 1, -28.9 );
setRotateKey( spep_7 + 60, 1, -28.8 );
setRotateKey( spep_7 + 62, 1, -28.7 );

--エフェクトの再生
burst2=entryEffectLife(spep_7,SP_07,168,0x100,-1,0,0,0);

setEffMoveKey(spep_7,burst2,0,0,0);
setEffMoveKey(spep_7+168,burst2,0,0,0);
setEffScaleKey(spep_7,burst2,1.0,1.0);
setEffScaleKey(spep_7+168,burst2,1.0,1.0);
setEffAlphaKey(spep_7,burst2,255);
setEffAlphaKey(spep_7+168,burst2,255);
setEffRotateKey(spep_7,burst2,0);
setEffRotateKey(spep_7+168,burst2,0);

setEffShake(spep_7,burst2,168,20);

--エフェクトの再生
burst2Bg=entryEffectLife(spep_7,SP_08,168,0x80,-1,0,0,0);

setEffMoveKey(spep_7,burst2Bg,0,0,0);
setEffMoveKey(spep_7+168,burst2Bg,0,0,0);
setEffScaleKey(spep_7,burst2Bg,1.1,1.1);
setEffScaleKey(spep_7+168,burst2Bg,1.1,1.1);
setEffAlphaKey(spep_7,burst2Bg,255);
setEffAlphaKey(spep_7+168,burst2Bg,255);
setEffRotateKey(spep_7,burst2Bg,0);
setEffRotateKey(spep_7+168,burst2Bg,0);

setEffShake(spep_7,burst2Bg,168,20);

--集中線
shuchusen7=entryEffectLife(spep_7,906,168,0x100,-1,0,0,0);
setEffScaleKey(spep_7,shuchusen7,1.4,1.4);
setEffScaleKey(spep_7+168,shuchusen7,1.4,1.4);
setEffAlphaKey(spep_7,shuchusen7,255);
setEffAlphaKey(spep_7+168,shuchusen7,255);

--ズドド　10014
ctZudododo=entryEffectLife(spep_7,10014,168,0x100,-1,0,-59.2, 412.7 );

setEffMoveKey( spep_7 + 0, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 2, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 4, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 6, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 8, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 10, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 12, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 14, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 16, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 18, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 20, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 22, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 24, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 26, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 28, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 30, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 32, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 34, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 36, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 38, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 40, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 42, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 44, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 46, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 48, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 50, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 52, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 54, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 56, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 58, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 60, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 62, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 64, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 66, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 68, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 70, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 72, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 74, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 76, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 78, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 80, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 82, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 84, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 86, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 88, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 90, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 92, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 94, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 96, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 98, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 100, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 102, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 104, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 106, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 108, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 110, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 112, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 114, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 116, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 118, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 120, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 122, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 124, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 126, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 128, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 130, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 132, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 134, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 136, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 138, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 140, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 142, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 144, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 146, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 148, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 150, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 152, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 154, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 156, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 158, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 160, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 162, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 164, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 166, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 168, ctZudododo, -59.2, 412.7 , 0 );

setEffScaleKey( spep_7 + 0, ctZudododo, 2.73, 2.73 );

setEffRotateKey( spep_7 + 0, ctZudododo, 12.3 );

setEffAlphaKey( spep_7 + 0, ctZudododo, 255 );

playSe(spep_7,SE_07);
------------------------------------------------------
-- SP_09 / Scene_04
------------------------------------------------------
spep_8=spep_7+168;

entryFadeBg(spep_8,0,138,0,10,10,10,255);
entryFade(spep_8+148,18,2,0,255,255,255,255);

--エフェクトの再生
exp=entryEffect(spep_8,SP_09,0x100,-1,0,0,0);

setEffMoveKey(spep_8,exp,0,0,0);
setEffMoveKey(spep_8+138,exp,0,0,0);
setEffScaleKey(spep_8,exp,1.1,1.1);
setEffScaleKey(spep_8+138,exp,1.1,1.1);
setEffAlphaKey(spep_8,exp,255);
setEffAlphaKey(spep_8+138,exp,255);
setEffRotateKey(spep_8,exp,0);
setEffRotateKey(spep_8+138,exp,0);

setEffShake(spep_8,exp,138,20);

--集中線
shuchusen8=entryEffectLife(spep_8,906,138,0x100,-1,0,0,0);
setEffScaleKey(spep_8,shuchusen8,1.4,1.4);
setEffScaleKey(spep_8+138,shuchusen8,1.4,1.4);
setEffAlphaKey(spep_8,shuchusen8,255);
setEffAlphaKey(spep_8+138,shuchusen8,255);

-- ダメージ表示
dealDamage(spep_8+34);
entryFade( spep_8+118, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_8+128);

playSe(spep_8+22,1024);

else

------------------------------------------------------
-- SP_01
------------------------------------------------------
spep_1=0;

entryFadeBg(spep_1,0,98,0,10,10,10,220);
entryFade(spep_1,0,0,8,255,255,255,255);
entryFade(spep_1+84,14,2,0,255,255,255,255);

playSe(spep_1,SE_01);

--エフェクトの再生
tame=entryEffect(spep_1,SP_01r,0x100,-1,0,0,0);

setEffMoveKey(spep_1,tame,0,0,0);
setEffScaleKey(spep_1,tame,1.0,1.0);
setEffAlphaKey(spep_1,tame,255);
setEffRotateKey(spep_1,tame,0);

setEffShake(spep_1,tame,98,10);

shuchusen1=entryEffectLife(spep_1,906,98,0x100,-1,0,0,0);
setEffScaleKey(spep_1,shuchusen1,1.4,1.4);
setEffAlphaKey(spep_1,shuchusen1,255);

ctZuzuzun = entryEffectLife(spep_1+2,10013,98,0x100,-1,0,0,0);
setEffMoveKey( spep_1 + 2, ctZuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_1 + 4, ctZuzuzun, 23.5, 299.3 , 0 );
setEffMoveKey( spep_1 + 6, ctZuzuzun, 40.2, 359.2 , 0 );
setEffMoveKey( spep_1 + 8, ctZuzuzun, 31.2, 355 , 0 );
setEffMoveKey( spep_1 + 10, ctZuzuzun, 41.1, 364.8 , 0 );
setEffMoveKey( spep_1 + 12, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 14, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_1 + 16, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 18, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_1 + 20, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 22, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_1 + 24, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 26, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_1 + 28, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 30, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_1 + 32, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 34, ctZuzuzun, 41.1, 364.5 , 0 );
setEffMoveKey( spep_1 + 36, ctZuzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_1 + 38, ctZuzuzun, 41.1, 364.5 , 0 );

setEffScaleKey( spep_1 + 2, ctZuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_1 + 4, ctZuzuzun, 1.98, 1.98 );
setEffScaleKey( spep_1 + 6, ctZuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_1 + 8, ctZuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_1 + 2, ctZuzuzun, -5 );

setEffAlphaKey( spep_1 + 2, ctZuzuzun, 255 );
setEffAlphaKey( spep_1 + 22, ctZuzuzun, 255 );
setEffAlphaKey( spep_1 + 24, ctZuzuzun, 215 );
setEffAlphaKey( spep_1 + 26, ctZuzuzun, 164 );
setEffAlphaKey( spep_1 + 28, ctZuzuzun, 121 );
setEffAlphaKey( spep_1 + 30, ctZuzuzun, 84 );
setEffAlphaKey( spep_1 + 32, ctZuzuzun, 54 );
setEffAlphaKey( spep_1 + 34, ctZuzuzun, 30 );
setEffAlphaKey( spep_1 + 36, ctZuzuzun, 14 );
setEffAlphaKey( spep_1 + 38, ctZuzuzun, 3 );
setEffAlphaKey( spep_1 + 40, ctZuzuzun, 0 );
----------------------------------------
----------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+84; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0, 0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(SP_dodge, 1, -900, -900);
setScaleKey(SP_dodge, 1, 1, 1);
setRotateKey(SP_dodge, 1, 0);

setMoveKey(SP_dodge+8, 1, -900, -900);
setScaleKey(SP_dodge+8, 1, 1);
setRotateKey(SP_dodge+8, 1, 0);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);

changeAnime(SP_dodge+9, 1, 100);

setMoveKey(SP_dodge+9, 1, 0, 0, 0);
setScaleKey(SP_dodge+9, 1, 1.0, 1.0);
setRotateKey(SP_dodge+9, 1, 0);

setMoveKey(SP_dodge+10, 1, 0, 0, 0);
setScaleKey(SP_dodge+10, 1, 1.0, 1.0);
setRotateKey(SP_dodge+10, 1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10, 0, -2500, -250, 0);

endPhase(SP_dodge+10);
do return end
else end

setEffMoveKey(spep_1+98,tame,0,0,0);
setEffScaleKey(spep_1+98,tame,1.0,1.0);
setEffAlphaKey(spep_1+98,tame,255);
setEffRotateKey(spep_1+98,tame,0);

setEffScaleKey(spep_1+98,shuchusen1,1.4,1.4);
setEffAlphaKey(spep_1+98,shuchusen1,255);

------------------------------------------------------
-- SP_02 / Scene05
------------------------------------------------------
spep_2=spep_1+98;

entryFadeBg(spep_2,0,98,0,10,10,10,220);
entryFade(spep_2,0,0,8,255,255,255,255);
entryFade(spep_2+42,0,0,8,255,255,255,255);
entryFade(spep_2+84,14,2,0,255,255,255,255);

--エフェクトの再生
dash=entryEffectLife(spep_2,SP_02r,98,0x80,-1,0,0,0);

setEffMoveKey(spep_2,dash,0,0,0);
setEffMoveKey(spep_2+98,dash,0,0,0);
setEffScaleKey(spep_2,dash,1.0,1.0);
setEffScaleKey(spep_2+98,dash,1.0,1.0);
setEffAlphaKey(spep_2,dash,255);
setEffAlphaKey(spep_2+98,dash,255);
setEffRotateKey(spep_2,dash,0);
setEffRotateKey(spep_2+98,dash,0);

setEffShake(spep_2,dash,45,15);
setEffShake(spep_2+46,dash,54,10);

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 86, 1, 0 );

changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 + 46, 1, 107 );

setMoveKey( spep_2 + 0, 1, -450.4, -344.8 , 0 );
setMoveKey( spep_2 + 2, 1, -379, -283.4 , 0 );
setMoveKey( spep_2 + 4, 1, -307.5, -222.1 , 0 );
setMoveKey( spep_2 + 6, 1, -236.1, -160.8 , 0 );
setMoveKey( spep_2 + 8, 1, -164.7, -99.5 , 0 );
setMoveKey( spep_2 + 10, 1, -93.2, -38.2 , 0 );
setMoveKey( spep_2 + 12, 1, -21.8, 23.2 , 0 );
setMoveKey( spep_2 + 14, 1, -19.5, 25.2 , 0 );
setMoveKey( spep_2 + 16, 1, -17.1, 27.2 , 0 );
setMoveKey( spep_2 + 18, 1, -14.8, 29.2 , 0 );
setMoveKey( spep_2 + 20, 1, -12.4, 31.2 , 0 );
setMoveKey( spep_2 + 22, 1, -10.1, 33.2 , 0 );
setMoveKey( spep_2 + 24, 1, -7.8, 35.2 , 0 );
setMoveKey( spep_2 + 26, 1, -5.4, 37.2 , 0 );
setMoveKey( spep_2 + 28, 1, -3.1, 39.2 , 0 );
setMoveKey( spep_2 + 30, 1, -0.7, 41.2 , 0 );
setMoveKey( spep_2 + 32, 1, 1.6, 43.2 , 0 );
setMoveKey( spep_2 + 34, 1, 4, 45.2 , 0 );
setMoveKey( spep_2 + 36, 1, 6.3, 47.2 , 0 );
setMoveKey( spep_2 + 38, 1, 8.6, 49.2 , 0 );
setMoveKey( spep_2 + 40, 1, 11, 51.2 , 0 );
setMoveKey( spep_2 + 42, 1, 13.3, 53.2 , 0 );
setMoveKey( spep_2 + 44, 1, 15.7, 55.2 , 0 );

setScaleKey( spep_2 + 0, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 2, 1, 3.93, 3.93 );
setScaleKey( spep_2 + 4, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 6, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 8, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 10, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 12, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 14, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 16, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 18, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 20, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 24, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 26, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 28, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 30, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 32, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 34, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 36, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 38, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 40, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 42, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 44, 1, 1.33, 1.33 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 45, 1, 0 );

setMoveKey( spep_2 + 46, 1, 95.8, -220.1 , 0 );
setMoveKey( spep_2 + 48, 1, 94.6, -215.8 , 0 );
setMoveKey( spep_2 + 50, 1, 85.1, -214.7 , 0 );
setMoveKey( spep_2 + 52, 1, 91.1, -204.8 , 0 );
setMoveKey( spep_2 + 54, 1, 84.8, -206.2 , 0 );
setMoveKey( spep_2 + 56, 1, 85.3, -189.3 , 0 );
setMoveKey( spep_2 + 58, 1, 80.9, -199.5 , 0 );
setMoveKey( spep_2 + 60, 1, 92.5, -201.7 , 0 );
setMoveKey( spep_2 + 62, 1, 92.2, -216 , 0 );
setMoveKey( spep_2 + 64, 1, 99.8, -214.4 , 0 );
setMoveKey( spep_2 + 66, 1, 95.5, -224.8 , 0 );
setMoveKey( spep_2 + 68, 1, 107.3, -227.3 , 0 );
setMoveKey( spep_2 + 70, 1, 165, -389.5 , 0 );
setMoveKey( spep_2 + 72, 1, 220.6, -517 , 0 );
setMoveKey( spep_2 + 74, 1, 253.7, -625.4 , 0 );
setMoveKey( spep_2 + 76, 1, 292.1, -698.3 , 0 );
setMoveKey( spep_2 + 78, 1, 307.6, -754.9 , 0 );
setMoveKey( spep_2 + 80, 1, 320, -766.8 , 0 );
setMoveKey( spep_2 + 82, 1, 325.4, -797.2 , 0 );
setMoveKey( spep_2 + 84, 1, 339, -811.9 , 0 );
setMoveKey( spep_2 + 86, 1, 348.6, -834.7 , 0 );
setMoveKey( spep_2 + 88, 1, 358.3, -857.8 , 0 );

setScaleKey( spep_2 + 46, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 48, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 50, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 52, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 54, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 56, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 58, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 60, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 62, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 64, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 66, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 68, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 70, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 72, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 74, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 76, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 78, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 80, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 82, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 84, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 86, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 88, 1, 2.41, 2.41 );

setRotateKey( spep_2 + 46, 1, -18.7 );
setRotateKey( spep_2 + 48, 1, -18.7 );
setRotateKey( spep_2 + 50, 1, -18.6 );
setRotateKey( spep_2 + 60, 1, -18.6 );
setRotateKey( spep_2 + 62, 1, -18.7 );
setRotateKey( spep_2 + 72, 1, -18.7 );
setRotateKey( spep_2 + 74, 1, -18.6 );
setRotateKey( spep_2 + 84, 1, -18.6 );
setRotateKey( spep_2 + 86, 1, -18.7 );

shuchusen2=entryEffectLife(spep_2,906,98,0x100,-1,0,0,0);
setEffScaleKey(spep_2,shuchusen2,1.4,1.4);
setEffScaleKey(spep_2+98,shuchusen2,1.4,1.4);
setEffAlphaKey(spep_2,shuchusen2,255);
setEffAlphaKey(spep_2+98,shuchusen2,255);

--[[
ryusen2a=entryEffectLife(spep_2,920,98,0x80,-1,0,0,0);
setEffScaleKey(spep_2,ryusen2a,1.4,1.4);
setEffScaleKey(spep_2+98,ryusen2a,1.4,1.4);
setEffAlphaKey(spep_2,ryusen2a,255);
setEffAlphaKey(spep_2+98,ryusen2a,255);
]]--

ryusen2b=entryEffectLife(spep_2,923,98,0x80,-1,0,0,0);
setEffScaleKey( spep_2 + 98, ryusen2b, 1.4, 1.4 );
setEffScaleKey(spep_2+98,ryusen2b,1.4, 1.4 );
setEffAlphaKey(spep_2,ryusen2b,0);
setEffAlphaKey(spep_2+45,ryusen2b,0);
setEffAlphaKey(spep_2+46,ryusen2b,255);
setEffAlphaKey(spep_2+98,ryusen2b,255);

setEffRotateKey( spep_2 , ryusen2b, -25.5 );
setEffRotateKey( spep_2 + 98, ryusen2b, -25.5 );

--ガッ 10005
ctGa2=entryEffectLife(spep_2+46,10005,26,0x100,-1,16.1, 344, 0 );
setEffMoveKey( spep_2 + 46, ctGa2, 16.1, 344 , 0 );
setEffMoveKey( spep_2 + 48, ctGa2, 16.3, 344.1 , 0 );
setEffMoveKey( spep_2 + 50, ctGa2, 16, 344.2 , 0 );
setEffMoveKey( spep_2 + 52, ctGa2, 16.1, 344.2 , 0 );
setEffMoveKey( spep_2 + 56, ctGa2, 16.1, 344.2 , 0 );
setEffMoveKey( spep_2 + 58, ctGa2, 16.1, 344.1 , 0 );
setEffMoveKey( spep_2 + 60, ctGa2, 16.1, 344 , 0 );
setEffMoveKey( spep_2 + 66, ctGa2, 16.1, 344 , 0 );
setEffMoveKey( spep_2 + 68, ctGa2, 16.1, 344.1 , 0 );
setEffMoveKey( spep_2 + 72, ctGa2, 16.1, 344.1 , 0 );

setEffScaleKey( spep_2 + 46, ctGa2, 0.91, 0.91 );
setEffScaleKey( spep_2 + 48, ctGa2, 1.95, 1.95 );
setEffScaleKey( spep_2 + 50, ctGa2, 2.48, 2.48 );
setEffScaleKey( spep_2 + 52, ctGa2, 2.36, 2.36 );
setEffScaleKey( spep_2 + 54, ctGa2, 2.24, 2.24 );
setEffScaleKey( spep_2 + 56, ctGa2, 2.12, 2.12 );
setEffScaleKey( spep_2 + 58, ctGa2, 2.01, 2.01 );
setEffScaleKey( spep_2 + 60, ctGa2, 2, 2 );
setEffScaleKey( spep_2 + 62, ctGa2, 1.99, 1.99 );
setEffScaleKey( spep_2 + 64, ctGa2, 1.98, 1.98 );
setEffScaleKey( spep_2 + 66, ctGa2, 1.97, 1.97 );
setEffScaleKey( spep_2 + 68, ctGa2, 1.96, 1.96 );
setEffScaleKey( spep_2 + 70, ctGa2, 1.95, 1.95 );
setEffScaleKey( spep_2 + 72, ctGa2, 1.94, 1.94 );

setEffRotateKey( spep_2 + 46, ctGa2, 4.3 );
setEffRotateKey( spep_2 + 48, ctGa2, -9.1 );
setEffRotateKey( spep_2 + 50, ctGa2, 4.3 );
setEffRotateKey( spep_2 + 52, ctGa2, 12.9 );
setEffRotateKey( spep_2 + 54, ctGa2, 4.1 );
setEffRotateKey( spep_2 + 56, ctGa2, -6.6 );
setEffRotateKey( spep_2 + 58, ctGa2, 4.3 );
setEffRotateKey( spep_2 + 60, ctGa2, 4.2 );
setEffRotateKey( spep_2 + 64, ctGa2, 4.2 );
setEffRotateKey( spep_2 + 66, ctGa2, 4.3 );
setEffRotateKey( spep_2 + 72, ctGa2, 4.3 );

setEffAlphaKey( spep_2 + 46, ctGa2, 255 );
setEffAlphaKey( spep_2 + 60, ctGa2, 255 );
setEffAlphaKey( spep_2 + 62, ctGa2, 213 );
setEffAlphaKey( spep_2 + 64, ctGa2, 170 );
setEffAlphaKey( spep_2 + 66, ctGa2, 128 );
setEffAlphaKey( spep_2 + 68, ctGa2, 85 );
setEffAlphaKey( spep_2 + 70, ctGa2, 42 );
setEffAlphaKey( spep_2 + 72, ctGa2, 0 );

--しゅん
playSe(spep_2+22,43);
--どん
playSe(spep_2+44,1010);

------------------------------------------------------
-- SP_03/ SP_04 /Scene03
------------------------------------------------------
spep_3=spep_2+98;

entryFadeBg(spep_3,0,188,0,10,10,10,255);
entryFade(spep_3,0,0,8,255,255,255,255);
entryFade(spep_3+22,0,0,10,255,255,255,255);
entryFade(spep_3+58,0,0,10,255,255,255,255);
entryFade(spep_3+142,0,0,8,255,255,255,255);
entryFade(spep_3+170,8,2,0,255,255,255,255);

setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 166, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 + 24, 1, 108 );
changeAnime( spep_3 + 58, 1, 106 );
changeAnime( spep_3 + 142, 1, 107 );

setMoveKey( spep_3 + 0, 1, -1628.3, 8 , 0 );
setMoveKey( spep_3 + 2, 1, -1530.6, 8 , 0 );
setMoveKey( spep_3 + 4, 1, -1367.6, 8 , 0 );
setMoveKey( spep_3 + 6, 1, -1139.5, 8 , 0 );
setMoveKey( spep_3 + 8, 1, -846.2, 8 , 0 );
setMoveKey( spep_3 + 10, 1, -487.7, 8 , 0 );
setMoveKey( spep_3 + 12, 1, -64, 8 , 0 );
setMoveKey( spep_3 + 14, 1, -58.3, 8 , 0 );
setMoveKey( spep_3 + 16, 1, -52.7, 8 , 0 );
setMoveKey( spep_3 + 18, 1, -47, 8 , 0 );
setMoveKey( spep_3 + 20, 1, -41.4, 8 , 0 );
setMoveKey( spep_3 + 23, 1, -35.7, 8 , 0 );
setMoveKey( spep_3 + 24, 1, 174.1, 22.9 , 0 );
setMoveKey( spep_3 + 26, 1, 170.7, 16.6 , 0 );
setMoveKey( spep_3 + 28, 1, 165.5, 10.2 , 0 );
setMoveKey( spep_3 + 30, 1, 158.3, 3.8 , 0 );
setMoveKey( spep_3 + 32, 1, 149.3, -2.6 , 0 );
setMoveKey( spep_3 + 34, 1, 164.9, -2.6 , 0 );
setMoveKey( spep_3 + 36, 1, 169.5, -2.6 , 0 );
setMoveKey( spep_3 + 38, 1, 174.1, -2.6 , 0 );
setMoveKey( spep_3 + 40, 1, 178.6, -2.7 , 0 );
setMoveKey( spep_3 + 42, 1, 183.2, -2.7 , 0 );
setMoveKey( spep_3 + 44, 1, 187.8, -2.7 , 0 );
setMoveKey( spep_3 + 46, 1, 192.3, -2.7 , 0 );
setMoveKey( spep_3 + 48, 1, 196.9, -2.7 , 0 );
setMoveKey( spep_3 + 50, 1, 201.5, -2.7 , 0 );
setMoveKey( spep_3 + 52, 1, 206, -2.7 , 0 );
setMoveKey( spep_3 + 54, 1, 210.6, -2.7 , 0 );
setMoveKey( spep_3 + 57, 1, 215.2, -2.7 , 0 );
setMoveKey( spep_3 + 58, 1, 72.6, 204.2 , 0 );
setMoveKey( spep_3 + 60, 1, 71, 227.9 , 0 );
setMoveKey( spep_3 + 62, 1, 68.5, 244.3 , 0 );
setMoveKey( spep_3 + 64, 1, 65.3, 253.2 , 0 );
setMoveKey( spep_3 + 66, 1, 61.2, 254.7 , 0 );
setMoveKey( spep_3 + 68, 1, 65.1, 265.6 , 0 );
setMoveKey( spep_3 + 70, 1, 68.9, 276.5 , 0 );
setMoveKey( spep_3 + 72, 1, 72.8, 287.4 , 0 );
setMoveKey( spep_3 + 74, 1, 76.7, 298.3 , 0 );
setMoveKey( spep_3 + 76, 1, 80.5, 309.2 , 0 );
setMoveKey( spep_3 + 78, 1, 84.4, 320.1 , 0 );
setMoveKey( spep_3 + 80, 1, 81.4, 270.1 , 0 );
setMoveKey( spep_3 + 82, 1, 78.4, 220.1 , 0 );
setMoveKey( spep_3 + 84, 1, 75.4, 170.1 , 0 );
setMoveKey( spep_3 + 86, 1, 72.4, 120.1 , 0 );
setMoveKey( spep_3 + 88, 1, 72.4, 119 , 0 );
setMoveKey( spep_3 + 90, 1, 72.4, 118 , 0 );
setMoveKey( spep_3 + 92, 1, 68.4, 108.9 , 0 );
setMoveKey( spep_3 + 94, 1, 72.4, 115.9 , 0 );
setMoveKey( spep_3 + 96, 1, 64.4, 106.8 , 0 );
setMoveKey( spep_3 + 98, 1, 72.4, 113.7 , 0 );
setMoveKey( spep_3 + 100, 1, 68.4, 100.7 , 0 );
setMoveKey( spep_3 + 102, 1, 72.4, 111.6 , 0 );
setMoveKey( spep_3 + 104, 1, 64.4, 102.6 , 0 );
setMoveKey( spep_3 + 106, 1, 72.4, 109.5 , 0 );
setMoveKey( spep_3 + 108, 1, 68.4, 104.5 , 0 );
setMoveKey( spep_3 + 110, 1, 72.4, 107.4 , 0 );
setMoveKey( spep_3 + 112, 1, 64.4, 98.3 , 0 );
setMoveKey( spep_3 + 114, 1, 72.4, 105.3 , 0 );
setMoveKey( spep_3 + 116, 1, 68.4, 96.2 , 0 );
setMoveKey( spep_3 + 118, 1, 72.4, 103.2 , 0 );
setMoveKey( spep_3 + 120, 1, 64.4, 94.1 , 0 );
setMoveKey( spep_3 + 122, 1, 72.4, 100.7 , 0 );
setMoveKey( spep_3 + 124, 1, 68.4, 95.3 , 0 );
setMoveKey( spep_3 + 126, 1, 72.4, 97.9 , 0 );
setMoveKey( spep_3 + 128, 1, 68.4, 88.5 , 0 );
setMoveKey( spep_3 + 130, 1, 72.4, 95.1 , 0 );
setMoveKey( spep_3 + 132, 1, 68.4, 89.7 , 0 );
setMoveKey( spep_3 + 134, 1, 72.4, 92.3 , 0 );
setMoveKey( spep_3 + 136, 1, 72.4, 90.9 , 0 );
setMoveKey( spep_3 + 138, 1, 72.4, 89.5 , 0 );
setMoveKey( spep_3 + 141, 1, 72.4, 88.1 , 0 );
setMoveKey( spep_3 + 142, 1, 80.5, -88 , 0 );
setMoveKey( spep_3 + 144, 1, 90.3, -93.6 , 0 );
setMoveKey( spep_3 + 146, 1, 92.1, -83.3 , 0 );
setMoveKey( spep_3 + 148, 1, 91.9, -68.9 , 0 );
setMoveKey( spep_3 + 150, 1, 141.1, -188.2 , 0 );
setMoveKey( spep_3 + 152, 1, 189.8, -313.9 , 0 );
setMoveKey( spep_3 + 154, 1, 227.6, -411.7 , 0 );
setMoveKey( spep_3 + 156, 1, 254.6, -481.5 , 0 );
setMoveKey( spep_3 + 158, 1, 270.8, -523.4 , 0 );
setMoveKey( spep_3 + 160, 1, 276.1, -537.4 , 0 );
setMoveKey( spep_3 + 162, 1, 282.5, -553.7 , 0 );
setMoveKey( spep_3 + 164, 1, 288.8, -569.9 , 0 );
setMoveKey( spep_3 + 166, 1, 295.1, -586.1 , 0 );
setMoveKey( spep_3 + 168, 1, 301.4, -602.3 , 0 );

setScaleKey( spep_3 + 0, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 23, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 24, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 26, 1, 1.88, 1.88 );
setScaleKey( spep_3 + 28, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 30, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 32, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 57, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 58, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 60, 1, 1.83, 1.83 );
setScaleKey( spep_3 + 62, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 64, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 66, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 141, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 142, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 144, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 146, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 148, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 150, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 152, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 154, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 156, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 158, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 160, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 162, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 164, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 166, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 168, 1, 1.79, 1.79 );

setRotateKey( spep_3 + 0, 1, 5.2 );
setRotateKey( spep_3 + 16, 1, 5.2 );
setRotateKey( spep_3 + 18, 1, 5.1 );
setRotateKey( spep_3 + 23, 1, 5.1 );
setRotateKey( spep_3 + 24, 1, 0.9 );
setRotateKey( spep_3 + 28, 1, 0.9 );
setRotateKey( spep_3 + 30, 1, 0.8 );
setRotateKey( spep_3 + 44, 1, 0.8 );
setRotateKey( spep_3 + 46, 1, 0.9 );
setRotateKey( spep_3 + 57, 1, 0.9 );
setRotateKey( spep_3 + 58, 1, -54.4 );
setRotateKey( spep_3 + 141, 1, -54.4 );
setRotateKey( spep_3 + 142, 1, -18.7 );
setRotateKey( spep_3 + 144, 1, -18.6 );
setRotateKey( spep_3 + 146, 1, -18.6 );
setRotateKey( spep_3 + 148, 1, -18.7 );
setRotateKey( spep_3 + 152, 1, -18.7 );
setRotateKey( spep_3 + 154, 1, -18.6 );
setRotateKey( spep_3 + 164, 1, -18.6 );
setRotateKey( spep_3 + 166, 1, -18.7 );

--エフェクトの再生
smash=entryEffectLife(spep_3,SP_03r,188,0x100,-1,0,0,0);

setEffMoveKey(spep_3,smash,0,0,0);
setEffMoveKey(spep_3+188,smash,0,0,0);
setEffScaleKey(spep_3,smash,1.0,1.0);
setEffScaleKey(spep_3+188,smash,1.0,1.0);
setEffAlphaKey(spep_3,smash,255);
setEffAlphaKey(spep_3+188,smash,255);
setEffRotateKey(spep_3,smash,0);
setEffRotateKey(spep_3+188,smash,0);

setEffShake(spep_3,smash,23,10);
setEffShake(spep_3+24,smash,29,20);
setEffShake(spep_3+58,smash,84,10);
setEffShake(spep_3+142,smash,42,10);

shuchusen3=entryEffectLife(spep_3,906,178,0x100,-1,0,0,0);
setEffScaleKey(spep_3,shuchusen3,1.4,1.4);
setEffScaleKey(spep_3+178,shuchusen3,1.4,1.4);
setEffAlphaKey(spep_3,shuchusen3,255);
setEffAlphaKey(spep_3+178,shuchusen3,255);

ryusen3a=entryEffectLife(spep_3,920,141,0x80,-1,0,0,0);
setEffScaleKey(spep_3,ryusen3a,1.4,1.4);
setEffScaleKey(spep_3+141,ryusen3a,1.4,1.4);
setEffAlphaKey(spep_3,ryusen3a,255);
setEffAlphaKey(spep_3+141,ryusen3a,255);
setEffRotateKey(spep_3,ryusen3a,0);
setEffRotateKey(spep_3+57,ryusen3a,0);
setEffRotateKey(spep_3+58,ryusen3a,90);
setEffRotateKey(spep_3+141,ryusen3a,90);

--エフェクトの再生

ryusen3b=entryEffectLife(spep_3,923,178,0x80,-1,0,0,0);
setEffScaleKey( spep_3, ryusen3b, 1.4, 1.4 );
setEffScaleKey(spep_3+178,ryusen3b,1.4, 1.4 );
setEffAlphaKey(spep_3,ryusen3b,0);
setEffAlphaKey(spep_3+141,ryusen3b,0);
setEffAlphaKey(spep_3+142,ryusen3b,255);
setEffAlphaKey(spep_3+178,ryusen3b,255);

setEffRotateKey( spep_3 + 142, ryusen3b, -25.5 );
setEffRotateKey( spep_3 + 178, ryusen3b, -25.5 );

smash2=entryEffectLife(spep_3,SP_04r,178,0x80,-1,0,0,0);

setEffMoveKey(spep_3,smash2,0,0,0);
setEffMoveKey(spep_3+178,smash2,0,0,0);
setEffScaleKey(spep_3,smash2,1.0,1.0);
setEffScaleKey(spep_3+178,smash2,1.0,1.0);
setEffAlphaKey(spep_3,smash2,255);
setEffAlphaKey(spep_3+178,smash2,255);
setEffRotateKey(spep_3,smash2,0);
setEffRotateKey(spep_3+178,smash2,0);

setEffShake(spep_3,smash2,23,10);
setEffShake(spep_3+24,smash2,29,20);
setEffShake(spep_3+58,smash2,84,10);
setEffShake(spep_3+142,smash2,42,10);

--ガッ 10005
ctGa1=entryEffectLife(spep_3+24,10005,26,0x100,-1,168.2, 292 , 0 );

setEffMoveKey( spep_3 + 24, ctGa1, 168.2, 292 , 0 );
setEffMoveKey( spep_3 + 26, ctGa1, 168.4, 292 , 0 );
setEffMoveKey( spep_3 + 28, ctGa1, 168.4, 292.2 , 0 );
setEffMoveKey( spep_3 + 30, ctGa1, 168.4, 292.2 , 0 );
setEffMoveKey( spep_3 + 32, ctGa1, 168.4, 292.1 , 0 );
setEffMoveKey( spep_3 + 34, ctGa1, 168.3, 292.2 , 0 );
setEffMoveKey( spep_3 + 36, ctGa1, 168.3, 292 , 0 );
setEffMoveKey( spep_3 + 42, ctGa1, 168.3, 292 , 0 );
setEffMoveKey( spep_3 + 44, ctGa1, 168.4, 292 , 0 );
setEffMoveKey( spep_3 + 50, ctGa1, 168.4, 292 , 0 );

setEffScaleKey( spep_3 + 24, ctGa1, 0.91, 0.91 );
setEffScaleKey( spep_3 + 26, ctGa1, 1.95, 1.95 );
setEffScaleKey( spep_3 + 28, ctGa1, 2.48, 2.48 );
setEffScaleKey( spep_3 + 30, ctGa1, 2.36, 2.36 );
setEffScaleKey( spep_3 + 32, ctGa1, 2.24, 2.24 );
setEffScaleKey( spep_3 + 34, ctGa1, 2.12, 2.12 );
setEffScaleKey( spep_3 + 36, ctGa1, 2.01, 2.01 );
setEffScaleKey( spep_3 + 38, ctGa1, 2, 2 );
setEffScaleKey( spep_3 + 40, ctGa1, 1.99, 1.99 );
setEffScaleKey( spep_3 + 42, ctGa1, 1.98, 1.98 );
setEffScaleKey( spep_3 + 44, ctGa1, 1.97, 1.97 );
setEffScaleKey( spep_3 + 46, ctGa1, 1.96, 1.96 );
setEffScaleKey( spep_3 + 48, ctGa1, 1.95, 1.95 );
setEffScaleKey( spep_3 + 50, ctGa1, 1.94, 1.94 );

setEffRotateKey( spep_3 + 24, ctGa1, 19.1 );
setEffRotateKey( spep_3 + 26, ctGa1, 5.7 );
setEffRotateKey( spep_3 + 28, ctGa1, 19.1 );
setEffRotateKey( spep_3 + 30, ctGa1, 27.6 );
setEffRotateKey( spep_3 + 32, ctGa1, 18.9 );
setEffRotateKey( spep_3 + 34, ctGa1, 8.2 );
setEffRotateKey( spep_3 + 36, ctGa1, 19.1 );
setEffRotateKey( spep_3 + 38, ctGa1, 18.9 );
setEffRotateKey( spep_3 + 40, ctGa1, 18.9 );
setEffRotateKey( spep_3 + 42, ctGa1, 19 );
setEffRotateKey( spep_3 + 46, ctGa1, 19 );
setEffRotateKey( spep_3 + 48, ctGa1, 19.1 );
setEffRotateKey( spep_3 + 50, ctGa1, 19.1 );

setEffAlphaKey( spep_3 + 24, ctGa1, 255 );
setEffAlphaKey( spep_3 + 38, ctGa1, 255 );
setEffAlphaKey( spep_3 + 40, ctGa1, 213 );
setEffAlphaKey( spep_3 + 42, ctGa1, 170 );
setEffAlphaKey( spep_3 + 44, ctGa1, 128 );
setEffAlphaKey( spep_3 + 46, ctGa1, 85 );
setEffAlphaKey( spep_3 + 48, ctGa1, 42 );
setEffAlphaKey( spep_3 + 50, ctGa1, 0 );

ctGa2=entryEffectLife(spep_3+58,10005,26,0x100,-1,-160, 265.9 , 0 );

setEffMoveKey( spep_3 + 58, ctGa2, -160, 265.9 , 0 );
setEffMoveKey( spep_3 + 60, ctGa2, -160, 266.2 , 0 );
setEffMoveKey( spep_3 + 62, ctGa2, -160.3, 266.1 , 0 );
setEffMoveKey( spep_3 + 64, ctGa2, -160.3, 266 , 0 );
setEffMoveKey( spep_3 + 66, ctGa2, -160.2, 266.2 , 0 );
setEffMoveKey( spep_3 + 68, ctGa2, -160.2, 266.2 , 0 );
setEffMoveKey( spep_3 + 70, ctGa2, -160.1, 266 , 0 );
setEffMoveKey( spep_3 + 72, ctGa2, -160, 266 , 0 );
setEffMoveKey( spep_3 + 78, ctGa2, -160, 266 , 0 );
setEffMoveKey( spep_3 + 80, ctGa2, -160.1, 266 , 0 );

setEffScaleKey( spep_3 + 58, ctGa2, 0.91, 0.91 );
setEffScaleKey( spep_3 + 60, ctGa2, 1.95, 1.95 );
setEffScaleKey( spep_3 + 62, ctGa2, 2.48, 2.48 );
setEffScaleKey( spep_3 + 64, ctGa2, 2.36, 2.36 );
setEffScaleKey( spep_3 + 66, ctGa2, 2.24, 2.24 );
setEffScaleKey( spep_3 + 68, ctGa2, 2.12, 2.12 );
setEffScaleKey( spep_3 + 70, ctGa2, 2.01, 2.01 );
setEffScaleKey( spep_3 + 72, ctGa2, 2, 2 );
setEffScaleKey( spep_3 + 74, ctGa2, 1.99, 1.99 );
setEffScaleKey( spep_3 + 76, ctGa2, 1.98, 1.98 );
setEffScaleKey( spep_3 + 78, ctGa2, 1.97, 1.97 );
setEffScaleKey( spep_3 + 80, ctGa2, 1.96, 1.96 );
setEffScaleKey( spep_3 + 82, ctGa2, 1.95, 1.95 );
setEffScaleKey( spep_3 + 84, ctGa2, 1.94, 1.94 );

setEffRotateKey( spep_3 + 58, ctGa2, -24.6 );
setEffRotateKey( spep_3 + 60, ctGa2, -38 );
setEffRotateKey( spep_3 + 62, ctGa2, -24.6 );
setEffRotateKey( spep_3 + 64, ctGa2, -16.1 );
setEffRotateKey( spep_3 + 66, ctGa2, -24.8 );
setEffRotateKey( spep_3 + 68, ctGa2, -35.5 );
setEffRotateKey( spep_3 + 70, ctGa2, -24.6 );
setEffRotateKey( spep_3 + 72, ctGa2, -24.8 );
setEffRotateKey( spep_3 + 74, ctGa2, -24.8 );
setEffRotateKey( spep_3 + 76, ctGa2, -24.7 );
setEffRotateKey( spep_3 + 80, ctGa2, -24.7 );
setEffRotateKey( spep_3 + 82, ctGa2, -24.6 );

setEffAlphaKey( spep_3 + 58, ctGa2, 255 );
setEffAlphaKey( spep_3 + 72, ctGa2, 255 );
setEffAlphaKey( spep_3 + 74, ctGa2, 213 );
setEffAlphaKey( spep_3 + 76, ctGa2, 170 );
setEffAlphaKey( spep_3 + 78, ctGa2, 128 );
setEffAlphaKey( spep_3 + 80, ctGa2, 85 );
setEffAlphaKey( spep_3 + 82, ctGa2, 42 );
setEffAlphaKey( spep_3 + 84, ctGa2, 0 );

--バキッ 10020
ctBaki=entryEffectLife(spep_3+142,10020,22,0x100,-1,229.5, 383 , 0 );

setEffMoveKey( spep_3 + 142, ctBaki, 229.5, 383 , 0 );
setEffMoveKey( spep_3 + 144, ctBaki, 224.5, 353.2 , 0 );
setEffMoveKey( spep_3 + 146, ctBaki, 204.7, 347.2 , 0 );
setEffMoveKey( spep_3 + 148, ctBaki, 198.8, 356 , 0 );
setEffMoveKey( spep_3 + 150, ctBaki, 208.7, 352.6 , 0 );
setEffMoveKey( spep_3 + 152, ctBaki, 220.2, 349.9 , 0 );
setEffMoveKey( spep_3 + 154, ctBaki, 212.1, 357.8 , 0 );
setEffMoveKey( spep_3 + 156, ctBaki, 212.9, 358.9 , 0 );
setEffMoveKey( spep_3 + 158, ctBaki, 213.6, 359.9 , 0 );
setEffMoveKey( spep_3 + 160, ctBaki, 214.3, 360.9 , 0 );
setEffMoveKey( spep_3 + 162, ctBaki, 215.1, 362 , 0 );
setEffMoveKey( spep_3 + 164, ctBaki, 215.8, 363 , 0 );

setEffScaleKey( spep_3 + 142, ctBaki, 0.91, 0.91 );
setEffScaleKey( spep_3 + 144, ctBaki, 1.95, 1.95 );
setEffScaleKey( spep_3 + 146, ctBaki, 2.48, 2.48 );
setEffScaleKey( spep_3 + 148, ctBaki, 2.36, 2.36 );
setEffScaleKey( spep_3 + 150, ctBaki, 2.24, 2.24 );
setEffScaleKey( spep_3 + 152, ctBaki, 2.12, 2.12 );
setEffScaleKey( spep_3 + 154, ctBaki, 2.01, 2.01 );
setEffScaleKey( spep_3 + 156, ctBaki, 1.96, 1.96 );
setEffScaleKey( spep_3 + 158, ctBaki, 1.92, 1.92 );
setEffScaleKey( spep_3 + 160, ctBaki, 1.87, 1.87 );
setEffScaleKey( spep_3 + 162, ctBaki, 1.83, 1.83 );
setEffScaleKey( spep_3 + 164, ctBaki, 1.78, 1.78 );

setEffRotateKey( spep_3 + 142, ctBaki, 34.5 );
setEffRotateKey( spep_3 + 144, ctBaki, 21.1 );
setEffRotateKey( spep_3 + 146, ctBaki, 34.5 );
setEffRotateKey( spep_3 + 148, ctBaki, 43.1 );
setEffRotateKey( spep_3 + 150, ctBaki, 34.3 );
setEffRotateKey( spep_3 + 152, ctBaki, 23.6 );
setEffRotateKey( spep_3 + 154, ctBaki, 34.5 );

setEffAlphaKey( spep_3 + 142, ctBaki, 255 );
setEffAlphaKey( spep_3 + 154, ctBaki, 255 );
setEffAlphaKey( spep_3 + 156, ctBaki, 204 );
setEffAlphaKey( spep_3 + 158, ctBaki, 153 );
setEffAlphaKey( spep_3 + 160, ctBaki, 102 );
setEffAlphaKey( spep_3 + 162, ctBaki, 51 );
setEffAlphaKey( spep_3 + 164, ctBaki, 0 );

playSe( spep_3,44);
playSe( spep_3 + 24, 1000 );
playSe( spep_3 + 58, 1009 );
playSe( spep_3 + 104, 44 );
playSe( spep_3 + 142, 1010 );

------------------------------------------------------
-- SP_05 / Scene08
------------------------------------------------------
spep_4=spep_3+178;

entryFadeBg(spep_4,0,158,0,10,10,10,255);
entryFade(spep_4,0,0,12,255,255,255,255);
entryFade(spep_4+138,18,2,0,255,255,255,255);

--エフェクトの再生
charge=entryEffectLife(spep_4,SP_05r,158,0x100,-1,0,0,0);

setEffMoveKey(spep_4,charge,0,0,0);
setEffMoveKey(spep_4+158,charge,0,0,0);
setEffScaleKey(spep_4,charge,1.0,1.0);
setEffScaleKey(spep_4+158,charge,1.0,1.0);
setEffAlphaKey(spep_4,charge,255);
setEffAlphaKey(spep_4+158,charge,255);
setEffRotateKey(spep_4,charge,0);
setEffRotateKey(spep_4+158,charge,0);

setEffShake(spep_4,charge,43,10);
setEffShake(spep_4+44,charge,114,20);

--ゴゴゴ
ctgogo = entryEffectLife( spep_4+44, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_4+44, ctgogo, 70, 8);
setEffScaleKey(spep_4+44, ctgogo, -0.7, 0.7);

--顔カットイン
--speff = entryEffect(  spep_4+30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_4+30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--集中線
shuchusen4=entryEffectLife(spep_4,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_4,shuchusen4,1.6,1.6);

playSe(  spep_4,SE_01);
playSe(  spep_4+30,SE_04);
------------------------------------------------------
-- CARD
------------------------------------------------------
spep_5=spep_4+158;

playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--entryFade( spep_5+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_5-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then

print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1120,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1121,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

end

-- ** エフェクト等 ** --
entryFade(spep_5+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

------------------------------------------------------
-- SP_06 / Scene06
------------------------------------------------------
spep_6=spep_5+90;

entryFade(spep_6,0,0,14,255,255,255,255);
entryFade(spep_6+80,18,2,0,255,255,255,255);
entryFadeBg(spep_6,0,98,0,10,10,10,255);

--エフェクトの再生
burst=entryEffectLife(spep_6,SP_06r,98,0x100,-1,0,0,0);

setEffMoveKey(spep_6,burst,0,0,0);
setEffMoveKey(spep_6+98,burst,0,0,0);
setEffScaleKey(spep_6,burst,1.0,1.0);
setEffScaleKey(spep_6+98,burst,1.0,1.0);
setEffAlphaKey(spep_6,burst,255);
setEffAlphaKey(spep_6+98,burst,255);
setEffRotateKey(spep_6,burst,0);
setEffRotateKey(spep_6+98,burst,0);

--集中線
shuchusen6=entryEffectLife(spep_6,906,98,0x100,-1,0,0,0);
setEffScaleKey(spep_6,shuchusen6,1.4,1.4);
setEffScaleKey(spep_6+98,shuchusen6,1.4,1.4);
setEffAlphaKey(spep_6,shuchusen6,255);
setEffAlphaKey(spep_6+98,shuchusen6,255);

--ズオ 10012
ctZuo=entryEffectLife(spep_6+2,10012,88,0x100,-1,-182.3, 222.1 , 0 );

setEffMoveKey( spep_6 + 2, ctZuo, -182.3, 222.1 , 0 );
setEffMoveKey( spep_6 + 4, ctZuo, -143.8, 278.7 , 0 );
setEffMoveKey( spep_6 + 6, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 8, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 10, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 12, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 14, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 16, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 18, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 20, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 22, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 24, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 26, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 28, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 30, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 32, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 34, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 36, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 38, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 40, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 42, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 44, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 46, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 48, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 50, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 52, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 54, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 56, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 58, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 60, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 62, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 64, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 66, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 68, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 70, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 72, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 74, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 76, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 78, ctZuo, -130.6, 337.6 , 0 );
setEffMoveKey( spep_6 + 80, ctZuo, -108.1, 335.7 , 0 );
setEffMoveKey( spep_6 + 82, ctZuo, -118.6, 343 , 0 );
setEffMoveKey( spep_6 + 84, ctZuo, -70.5, 345.2 , 0 );
setEffMoveKey( spep_6 + 86, ctZuo, -94.6, 353.7 , 0 );
setEffMoveKey( spep_6 + 88, ctZuo, -32.9, 354.7 , 0 );
setEffMoveKey( spep_6 + 90, ctZuo, -14.1, 359.4 , 0 );

setEffScaleKey( spep_6 + 2, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_6 + 4, ctZuo, 1.54, 1.54 );
setEffScaleKey( spep_6 + 6, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_6 + 80, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_6 + 82, ctZuo, 3.55, 3.55 );
setEffScaleKey( spep_6 + 84, ctZuo, 4.37, 4.37 );
setEffScaleKey( spep_6 + 86, ctZuo, 5.19, 5.19 );
setEffScaleKey( spep_6 + 88, ctZuo, 6.01, 6.01 );
setEffScaleKey( spep_6 + 90, ctZuo, 6.82, 6.82 );

setEffRotateKey( spep_6 + 2, ctZuo, -12.8 );

setEffAlphaKey( spep_6 + 2, ctZuo, 255 );
setEffAlphaKey( spep_6 + 80, ctZuo, 255 );
setEffAlphaKey( spep_6 + 82, ctZuo, 204 );
setEffAlphaKey( spep_6 + 84, ctZuo, 153 );
setEffAlphaKey( spep_6 + 86, ctZuo, 102 );
setEffAlphaKey( spep_6 + 88, ctZuo, 51 );
setEffAlphaKey( spep_6 + 90, ctZuo, 0 );

playSe(spep_6,SE_06);

------------------------------------------------------
-- SP_07 / SP_08 / Scene09
------------------------------------------------------
spep_7=spep_6+98;

entryFade(spep_7,0,0,16,255,255,255,255);
entryFade(spep_7+64,0,0,12,255,255,255,255);
entryFade(spep_7+148,18,2,0,255,255,255,255);
entryFadeBg(spep_7,0,168,0,10,10,10,255);

setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 62, 1, 0 );
changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, -436.4, -588.3 , 0 );
setMoveKey( spep_7 + 2, 1, -415.4, -555.3 , 0 );
setMoveKey( spep_7 + 4, 1, -354.5, -482.4 , 0 );
setMoveKey( spep_7 + 6, 1, -325.5, -441.4 , 0 );
setMoveKey( spep_7 + 8, 1, -272.6, -376.4 , 0 );
setMoveKey( spep_7 + 10, 1, -243.6, -335.5 , 0 );
setMoveKey( spep_7 + 12, 1, -192.6, -270.5 , 0 );
setMoveKey( spep_7 + 14, 1, -159.7, -229.5 , 0 );
setMoveKey( spep_7 + 16, 1, -138.7, -216.6 , 0 );
setMoveKey( spep_7 + 18, 1, -77.8, -123.6 , 0 );
setMoveKey( spep_7 + 20, 1, -93.7, -130.7 , 0 );
setMoveKey( spep_7 + 22, 1, -85.7, -125.8 , 0 );
setMoveKey( spep_7 + 24, 1, -68.9, -111.4 , 0 );
setMoveKey( spep_7 + 26, 1, -76.1, -121.2 , 0 );
setMoveKey( spep_7 + 28, 1, -67.5, -107 , 0 );
setMoveKey( spep_7 + 30, 1, -74.7, -112.6 , 0 );
setMoveKey( spep_7 + 32, 1, -66, -102.4 , 0 );
setMoveKey( spep_7 + 34, 1, -77.3, -116.2 , 0 );
setMoveKey( spep_7 + 36, 1, -41.3, -79.3 , 0 );
setMoveKey( spep_7 + 38, 1, -40.8, -76.1 , 0 );
setMoveKey( spep_7 + 40, 1, -38, -72.2 , 0 );
setMoveKey( spep_7 + 42, 1, -51.3, -100.3 , 0 );
setMoveKey( spep_7 + 44, 1, -32.5, -64.5 , 0 );
setMoveKey( spep_7 + 46, 1, -45.9, -76.5 , 0 );
setMoveKey( spep_7 + 48, 1, -27.1, -56.7 , 0 );
setMoveKey( spep_7 + 50, 1, -48.4, -68.8 , 0 );
setMoveKey( spep_7 + 52, 1, -21.6, -48.9 , 0 );
setMoveKey( spep_7 + 54, 1, -34.9, -77 , 0 );
setMoveKey( spep_7 + 56, 1, -16.1, -41.1 , 0 );
setMoveKey( spep_7 + 58, 1, -29.3, -53.3 , 0 );
setMoveKey( spep_7 + 60, 1, -10.7, -33.4 , 0 );
setMoveKey( spep_7 + 62, 1, -31.9, -45.4 , 0 );

setScaleKey( spep_7 + 0, 1, 2.07, 2.07 );
setScaleKey( spep_7+62 , 1, 2.07, 2.07 );

setRotateKey( spep_7 + 0, 1, -30.8 );
setRotateKey( spep_7 + 18, 1, -30.8 );
setRotateKey( spep_7 + 20, 1, -30.7 );
setRotateKey( spep_7 + 22, 1, -30.6 );
setRotateKey( spep_7 + 24, 1, -30.5 );
setRotateKey( spep_7 + 26, 1, -30.4 );
setRotateKey( spep_7 + 28, 1, -30.3 );
setRotateKey( spep_7 + 30, 1, -30.2 );
setRotateKey( spep_7 + 32, 1, -30.1 );
setRotateKey( spep_7 + 34, 1, -30 );
setRotateKey( spep_7 + 36, 1, -29.9 );
setRotateKey( spep_7 + 38, 1, -29.8 );
setRotateKey( spep_7 + 40, 1, -29.7 );
setRotateKey( spep_7 + 42, 1, -29.7 );
setRotateKey( spep_7 + 44, 1, -29.6 );
setRotateKey( spep_7 + 46, 1, -29.5 );
setRotateKey( spep_7 + 48, 1, -29.4 );
setRotateKey( spep_7 + 50, 1, -29.3 );
setRotateKey( spep_7 + 52, 1, -29.2 );
setRotateKey( spep_7 + 54, 1, -29.1 );
setRotateKey( spep_7 + 56, 1, -29 );
setRotateKey( spep_7 + 58, 1, -28.9 );
setRotateKey( spep_7 + 60, 1, -28.8 );
setRotateKey( spep_7 + 62, 1, -28.7 );

--エフェクトの再生
burst2=entryEffectLife(spep_7,SP_07r,168,0x100,-1,0,0,0);

setEffMoveKey(spep_7,burst2,0,0,0);
setEffMoveKey(spep_7+168,burst2,0,0,0);
setEffScaleKey(spep_7,burst2,1.0,1.0);
setEffScaleKey(spep_7+168,burst2,1.0,1.0);
setEffAlphaKey(spep_7,burst2,255);
setEffAlphaKey(spep_7+168,burst2,255);
setEffRotateKey(spep_7,burst2,0);
setEffRotateKey(spep_7+168,burst2,0);

setEffShake(spep_7,burst2,168,20);

--エフェクトの再生
burst2Bg=entryEffectLife(spep_7,SP_08r,168,0x80,-1,0,0,0);

setEffMoveKey(spep_7,burst2Bg,0,0,0);
setEffMoveKey(spep_7+168,burst2Bg,0,0,0);
setEffScaleKey(spep_7,burst2Bg,1.1,1.1);
setEffScaleKey(spep_7+168,burst2Bg,1.1,1.1);
setEffAlphaKey(spep_7,burst2Bg,255);
setEffAlphaKey(spep_7+168,burst2Bg,255);
setEffRotateKey(spep_7,burst2Bg,0);
setEffRotateKey(spep_7+168,burst2Bg,0);

setEffShake(spep_7,burst2Bg,168,20);

--集中線
shuchusen7=entryEffectLife(spep_7,906,168,0x100,-1,0,0,0);
setEffScaleKey(spep_7,shuchusen7,1.4,1.4);
setEffScaleKey(spep_7+168,shuchusen7,1.4,1.4);
setEffAlphaKey(spep_7,shuchusen7,255);
setEffAlphaKey(spep_7+168,shuchusen7,255);

--ズドド　10014
ctZudododo=entryEffectLife(spep_7,10014,168,0x100,-1,0,-59.2, 412.7 );

setEffMoveKey( spep_7 + 0, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 2, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 4, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 6, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 8, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 10, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 12, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 14, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 16, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 18, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 20, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 22, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 24, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 26, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 28, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 30, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 32, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 34, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 36, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 38, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 40, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 42, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 44, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 46, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 48, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 50, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 52, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 54, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 56, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 58, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 60, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 62, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 64, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 66, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 68, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 70, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 72, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 74, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 76, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 78, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 80, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 82, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 84, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 86, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 88, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 90, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 92, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 94, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 96, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 98, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 100, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 102, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 104, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 106, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 108, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 110, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 112, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 114, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 116, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 118, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 120, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 122, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 124, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 126, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 128, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 130, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 132, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 134, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 136, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 138, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 140, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 142, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 144, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 146, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 148, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 150, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 152, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 154, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 156, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 158, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 160, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 162, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 164, ctZudododo, -59.2, 412.7 , 0 );
setEffMoveKey( spep_7 + 166, ctZudododo, -57.1, 388.4 , 0 );
setEffMoveKey( spep_7 + 168, ctZudododo, -59.2, 412.7 , 0 );

setEffScaleKey( spep_7 + 0, ctZudododo, 2.73, 2.73 );

setEffRotateKey( spep_7 + 0, ctZudododo, -62.3 );

setEffAlphaKey( spep_7 + 0, ctZudododo, 255 );

playSe(spep_7,SE_07);
------------------------------------------------------
-- SP_09 / Scene_04
------------------------------------------------------
spep_8=spep_7+168;

entryFadeBg(spep_8,0,138,0,10,10,10,255);
entryFade(spep_8+148,18,2,0,255,255,255,255);

--エフェクトの再生
exp=entryEffect(spep_8,SP_09r,0x100,-1,0,0,0);

setEffMoveKey(spep_8,exp,0,0,0);
setEffMoveKey(spep_8+138,exp,0,0,0);
setEffScaleKey(spep_8,exp,1.1,1.1);
setEffScaleKey(spep_8+138,exp,1.1,1.1);
setEffAlphaKey(spep_8,exp,255);
setEffAlphaKey(spep_8+138,exp,255);
setEffRotateKey(spep_8,exp,0);
setEffRotateKey(spep_8+138,exp,0);

setEffShake(spep_8,exp,138,20);

--集中線
shuchusen8=entryEffectLife(spep_8,906,138,0x100,-1,0,0,0);
setEffScaleKey(spep_8,shuchusen8,1.4,1.4);
setEffScaleKey(spep_8+138,shuchusen8,1.4,1.4);
setEffAlphaKey(spep_8,shuchusen8,255);
setEffAlphaKey(spep_8+138,shuchusen8,255);

-- ダメージ表示
dealDamage(spep_8+34);
entryFade( spep_8+118, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_8+128);

playSe(spep_8+22,1024);

end

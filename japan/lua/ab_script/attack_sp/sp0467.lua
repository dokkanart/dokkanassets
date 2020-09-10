-- sp0467
-- 1014350　セル(完全体)(GT)_ヘルズバスター
-- sp_effect_b4_00054

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--基本いじらない--
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン・セリフカットイン時に使用
SE_05 = 1035; --カードカットイン時に使用
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --回避時の気づきに使用
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 8; --セル登場
SE_13 = 9; --フリーザ登場
SE_14 = 1068; --落とし込み

SP_01 =151810;
SP_02 =151811;
SP_03 =151812;
SP_04 =151813;
SP_05 =151814;
SP_06 =151815;
SP_07 =1687;

SP_08 =151816;
SP_09 =151817;
SP_10 =151818;
SP_11 =151819;
SP_12 =151820;
SP_13 =151821;
SP_14 =1687;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(0,0,0,-900,0);
setMoveKey(1,0,0,-900,0);
setMoveKey(2,0,0,-900,0);
setMoveKey(3,0,0,-900,0);
setMoveKey(4,0,0,-900,0);
setMoveKey(5,0,0,-900,0);

setScaleKey(0,0,1.5,1.5);
setScaleKey(1,0,1.5,1.5);
setScaleKey(2,0,1.5,1.5);
setScaleKey(3,0,1.5,1.5);
setScaleKey(4,0,1.5,1.5);
setScaleKey(5,0,1.5,1.5);

setRotateKey(0,0,0);
setRotateKey(1,0,0);
setRotateKey(2,0,0);
setRotateKey(3,0,0);
setRotateKey(4,0,0);
setRotateKey(5,0,0);

setVisibleUI(0, 0);

--------------------
--味方側の動き
--------------------
--気溜--158F
--------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1=0;

entryFade( spep_1,      0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_1+ 96,  0, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--敵の動き(あるよ)
setDisp( spep_1 + 40, 1, 1);

changeAnime( spep_1 + 40, 1, 100);
setShakeChara( spep_1 + 40, 1, 118, 10);

setMoveKey( spep_1 + 40,1, 457, -20.8 , 0 );
setMoveKey( spep_1 + 42,1, 434.2, -19.1 , 0 );
setMoveKey( spep_1 + 44,1, 409.7, -17.2 , 0 );
setMoveKey( spep_1 + 46,1, 383.4, -15.2 , 0 );
setMoveKey( spep_1 + 48,1, 355.5, -13.2 , 0 );
setMoveKey( spep_1 + 50,1, 325.8, -10.9 , 0 );
setMoveKey( spep_1 + 52,1, 294.5, -8.6 , 0 );
setMoveKey( spep_1 + 54,1, 261.4, -6.1 , 0 );
setMoveKey( spep_1 + 56,1, 226.7, -3.5 , 0 );
setMoveKey( spep_1 + 58,1, 190.2, -0.8 , 0 );
setMoveKey( spep_1 + 60,1, 152, 2.1 , 0 );
setMoveKey( spep_1 + 62,1, 112.1, 5 , 0 );
setMoveKey( spep_1 + 64,1, 61.2, 9.3 , 0 );
setMoveKey( spep_1 + 66,1, 10.8, 13.5 , 0 );
setMoveKey( spep_1 + 68,1, -39, 17.7 , 0 );
setMoveKey( spep_1 + 70,1, -88.3, 21.8 , 0 );
setMoveKey( spep_1 + 72,1, -137.1, 25.9 , 0 );
setMoveKey( spep_1 + 74,1, -185.4, 29.9 , 0 );
setMoveKey( spep_1 + 76,1, -233.2, 33.9 , 0 );
setMoveKey( spep_1 + 78,1, -280.5, 37.9 , 0 );
setMoveKey( spep_1 + 80,1, -327.2, 41.8 , 0 );
setMoveKey( spep_1 + 82,1, -373.4, 45.7 , 0 );
setMoveKey( spep_1 + 84,1, -419.1, 49.5 , 0 );
setMoveKey( spep_1 + 86,1, -464.3, 53.3 , 0 );
setMoveKey( spep_1 + 88,1, -509, 57 , 0 );
setMoveKey( spep_1 + 90,1, -553.1, 60.7 , 0 );
setMoveKey( spep_1 + 92,1, -596.7, 64.4 , 0 );
setMoveKey( spep_1 + 94,1, -639.8, 68 , 0 );
setMoveKey( spep_1 + 96,1, -682.4, 71.6 , 0 );
setMoveKey( spep_1 + 98,1, -724.5, 75.1 , 0 );
setMoveKey( spep_1 + 100,1, -14.7, 21.7 , 0 );
setMoveKey( spep_1 + 102,1, -12.1, 22.1 , 0 );
setMoveKey( spep_1 + 104,1, -9.1, 22.5 , 0 );
setMoveKey( spep_1 + 106,1, -5.8, 22.9 , 0 );
setMoveKey( spep_1 + 108,1, -2.2, 23.4 , 0 );
setMoveKey( spep_1 + 110,1, 1.8, 23.9 , 0 );
setMoveKey( spep_1 + 112,1, 6.1, 24.5 , 0 );
setMoveKey( spep_1 + 114,1, 10.7, 25.1 , 0 );
setMoveKey( spep_1 + 116,1, 15.7, 25.8 , 0 );
setMoveKey( spep_1 + 118,1, 21, 26.5 , 0 );
setMoveKey( spep_1 + 120,1, 24, 27.3 , 0 );
setMoveKey( spep_1 + 122,1, 24.7, 26.8 , 0 );
setMoveKey( spep_1 + 124,1, 25.5, 26.3 , 0 );
setMoveKey( spep_1 + 126,1, 26.3, 25.8 , 0 );
setMoveKey( spep_1 + 128,1, 27.1, 25.4 , 0 );
setMoveKey( spep_1 + 130,1, 27.9, 24.9 , 0 );
setMoveKey( spep_1 + 132,1, 28.7, 24.4 , 0 );
-- 回避タイミング　spep_1 + 132 --

setScaleKey( spep_1 + 40, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 42, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 44, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 46, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 48, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 50, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 52, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 54, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 56, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 58, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 60, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 62, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 64, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 66, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 68, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 70, 1, 1.96, 1.96 );
setScaleKey( spep_1 + 72, 1, 2.1, 2.1 );
setScaleKey( spep_1 + 74, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 76, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 78, 1, 2.51, 2.51 );
setScaleKey( spep_1 + 80, 1, 2.64, 2.64 );
setScaleKey( spep_1 + 82, 1, 2.78, 2.78 );
setScaleKey( spep_1 + 84, 1, 2.91, 2.91 );
setScaleKey( spep_1 + 86, 1, 3.04, 3.04 );
setScaleKey( spep_1 + 88, 1, 3.16, 3.16 );
setScaleKey( spep_1 + 90, 1, 3.29, 3.29 );
setScaleKey( spep_1 + 92, 1, 3.41, 3.41 );
setScaleKey( spep_1 + 94, 1, 3.54, 3.54 );
setScaleKey( spep_1 + 96, 1, 3.66, 3.66 );
setScaleKey( spep_1 + 98, 1, 3.78, 3.78 );
setScaleKey( spep_1 + 100, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 102, 1, 2.86, 2.86 );
setScaleKey( spep_1 + 104, 1, 2.72, 2.72 );
setScaleKey( spep_1 + 106, 1, 2.57, 2.57 );
setScaleKey( spep_1 + 108, 1, 2.4, 2.4 );
setScaleKey( spep_1 + 110, 1, 2.22, 2.22 );
setScaleKey( spep_1 + 112, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 114, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 116, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 118, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 120, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 122, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 124, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 126, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 128, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 130, 1, 1, 1 );
setScaleKey( spep_1 + 132, 1, 0.98, 0.98 );
-- 回避タイミング　spep_1 + 132 --

setEffRotateKey( spep_1 + 40, 1, 0 );
--[[
shuchusen1=entryEffectLife(spep_1+38,906,120,0x100,-1,0,0,0);
setEffAlphaKey(spep_1+ 38,shuchusen1,80);
setEffAlphaKey(spep_1+ 46,shuchusen1,255);

setEffScaleKey(spep_1+ 38,shuchusen1,1.4,1.4);
]]--

Sel1=entryEffectLife(spep_1,SP_01,158,0x100,-1,0,0,0);
setEffAlphaKey(spep_1, Sel1, 255);
setEffScaleKey(spep_1, Sel1,1.0,1.0);
setEffRotateKey(spep_1, Sel1,0);

shuchusen1=entryEffectLife(spep_1,906,158,0x100,-1,0,0,0);
setEffAlphaKey(spep_1    ,shuchusen1,0);
setEffAlphaKey(spep_1+ 37,shuchusen1,0);
setEffAlphaKey(spep_1+ 38,shuchusen1,80);
setEffAlphaKey(spep_1+ 46,shuchusen1,255);

setEffScaleKey(spep_1,shuchusen1,1.4,1.4);

--setEffShake(spep_1,Sel1,158,10);

Fre1=entryEffectLife(spep_1,SP_02,158,0x80,-1,0,0,0);
setEffAlphaKey(spep_1, Fre1, 255);
setEffScaleKey(spep_1, Fre1,1.0,1.0);
setEffRotateKey(spep_1, Fre1,0);

playSe(spep_1+46,SE_12);
playSe(spep_1+98,SE_13);
--setEffShake(spep_1,Fre1,158,10);

-------------------
--回避
-------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 132;

playSe( SP_dodge-12, 1042);

setMoveKey(SP_dodge,1,28.7, 24.4 , 0 );
setScaleKey(   SP_dodge,   1, 0.98, 0.98 );
setRotateKey(   SP_dodge,   1, 0);

setMoveKey(SP_dodge+8,1,32, 22.5 , 0 );
setScaleKey(   SP_dodge+8,   1, 0.92, 0.92 );
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

--------------------
--回避されなかった場合
--------------------
setMoveKey( spep_1 + 134,1, 29.5, 23.9 , 0 );
setMoveKey( spep_1 + 136,1, 30.3, 23.4 , 0 );
setMoveKey( spep_1 + 138,1, 31.1, 23 , 0 );
setMoveKey( spep_1 + 140,1, 32, 22.5 , 0 );
setMoveKey( spep_1 + 142,1, 32.8, 22 , 0 );
setMoveKey( spep_1 + 144,1, 33.7, 21.5 , 0 );
setMoveKey( spep_1 + 146,1, 34.5, 21.1 , 0 );
setMoveKey( spep_1 + 148,1, 35.4, 20.6 , 0 );
setMoveKey( spep_1 + 150,1, 36.2, 20.1 , 0 );
setMoveKey( spep_1 + 152,1, 37.1, 19.6 , 0 );
setMoveKey( spep_1 + 154,1, 38, 19.2 , 0 );
setMoveKey( spep_1 + 156,1, 38.9, 18.7 , 0 );
setMoveKey( spep_1 + 158,1, 39.9, 18.2 , 0 );

setScaleKey( spep_1 + 134, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 136, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 138, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 140, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 142, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 144, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 146, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 148, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 150, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 152, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 154, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 156, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 158, 1, 0.79, 0.79 );

setEffAlphaKey(spep_1+158,shuchusen1,255);
setEffScaleKey(spep_1+ 158,shuchusen1,1.4,1.4);

entryFade( spep_1+144, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_1 + 158, 1, 0);
--------------------
--２人カットイン-−188F
--------------------
spep_2=spep_1+158;

entryFade( spep_2,      0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+ 86,  0, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+168, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); 

Cut=entryEffectLife(spep_2,SP_03,178,0x100,-1,0,0,0);
setEffAlphaKey(spep_2, Cut, 255);
setEffScaleKey(spep_2, Cut,1.0,1.0);
setEffRotateKey(spep_2, Cut,0);

setEffShake(spep_2,Cut,178,10);

--書き文字(ズオッ)
ctZuo1= entryEffectLife(spep_2,10012,36,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, ctZuo1, 38.7, 140.5 , 0 );
setEffMoveKey( spep_2 + 2, ctZuo1, 65, 168.6 , 0 );
setEffMoveKey( spep_2 + 4, ctZuo1, 77.9, 210.1 , 0 );
setEffMoveKey( spep_2 + 6, ctZuo1, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 8, ctZuo1, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 10, ctZuo1, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 12, ctZuo1, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 14, ctZuo1, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 16, ctZuo1, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 18, ctZuo1, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 20, ctZuo1, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 22, ctZuo1, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 24, ctZuo1, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 26, ctZuo1, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 28, ctZuo1, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 30, ctZuo1, 137.9, 224.7 , 0 );
setEffMoveKey( spep_2 + 32, ctZuo1, 134, 248.7 , 0 );
setEffMoveKey( spep_2 + 34, ctZuo1, 186.1, 216.5 , 0 );
setEffMoveKey( spep_2 + 36, ctZuo1, 210.3, 212.4 , 0 );

setEffScaleKey( spep_2 + 0, ctZuo1, 0.34, 0.34 );
setEffScaleKey( spep_2 + 2, ctZuo1, 1.13, 1.13 );
setEffScaleKey( spep_2 + 4, ctZuo1, 1.94, 1.94 );
setEffScaleKey( spep_2 + 6, ctZuo1, 2.73, 2.73 );
setEffScaleKey( spep_2 + 28, ctZuo1, 2.73, 2.73 );
setEffScaleKey( spep_2 + 30, ctZuo1, 3.75, 3.75 );
setEffScaleKey( spep_2 + 32, ctZuo1, 4.78, 4.78 );
setEffScaleKey( spep_2 + 34, ctZuo1, 5.8, 5.8 );
setEffScaleKey( spep_2 + 36, ctZuo1, 6.82, 6.82 );

setEffRotateKey( spep_2 + 0, ctZuo1, 27.2 );
setEffRotateKey( spep_2 + 36, ctZuo1, 27.2 );

setEffAlphaKey( spep_2 + 0, ctZuo1, 255 );
setEffAlphaKey( spep_2 + 28, ctZuo1, 255 );
setEffAlphaKey( spep_2 + 30, ctZuo1, 191 );
setEffAlphaKey( spep_2 + 32, ctZuo1, 128 );
setEffAlphaKey( spep_2 + 34, ctZuo1, 64 );
setEffAlphaKey( spep_2 + 36, ctZuo1, 0 );

ctZuo2= entryEffectLife(spep_2+90,10012,36,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 90, ctZuo2, 38.7, 140.5 , 0 );
setEffMoveKey( spep_2 + 92, ctZuo2, 65, 168.6 , 0 );
setEffMoveKey( spep_2 + 94, ctZuo2, 77.9, 210.1 , 0 );
setEffMoveKey( spep_2 + 96, ctZuo2, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 98, ctZuo2, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 100, ctZuo2, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 102, ctZuo2, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 104, ctZuo2, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 106, ctZuo2, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 108, ctZuo2, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 110, ctZuo2, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 112, ctZuo2, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 114, ctZuo2, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 116, ctZuo2, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 118, ctZuo2, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 120, ctZuo2, 137.9, 224.7 , 0 );
setEffMoveKey( spep_2 + 122, ctZuo2, 134, 248.7 , 0 );
setEffMoveKey( spep_2 + 124, ctZuo2, 186.1, 216.5 , 0 );
setEffMoveKey( spep_2 + 126, ctZuo2, 210.3, 212.4 , 0 );

setEffScaleKey( spep_2 + 90, ctZuo2, 0.34, 0.34 );
setEffScaleKey( spep_2 + 92, ctZuo2, 1.13, 1.13 );
setEffScaleKey( spep_2 + 94, ctZuo2, 1.94, 1.94 );
setEffScaleKey( spep_2 + 96, ctZuo2, 2.73, 2.73 );
setEffScaleKey( spep_2 + 118, ctZuo2, 2.73, 2.73 );
setEffScaleKey( spep_2 + 120, ctZuo2, 3.75, 3.75 );
setEffScaleKey( spep_2 + 122, ctZuo2, 4.78, 4.78 );
setEffScaleKey( spep_2 + 124, ctZuo2, 5.8, 5.8 );
setEffScaleKey( spep_2 + 126, ctZuo2, 6.82, 6.82 );

setEffRotateKey( spep_2 + 90, ctZuo2, 27.2 );

setEffAlphaKey( spep_2 + 90, ctZuo2, 255 );
setEffAlphaKey( spep_2 + 118, ctZuo2, 255 );
setEffAlphaKey( spep_2 + 120, ctZuo2, 191 );
setEffAlphaKey( spep_2 + 122, ctZuo2, 128 );
setEffAlphaKey( spep_2 + 124, ctZuo2, 64 );
setEffAlphaKey( spep_2 + 126, ctZuo2, 0 );

ctGogogo1 = entryEffectLife(spep_2+42,190006,46,0x100,-1,0,0,500);
setEffScaleKey( spep_2+42, ctGogogo1, 0.6, 0.6);
setEffAlphaKey( spep_2+42, ctGogogo1, 255);
setEffRotateKey( spep_2+42, ctGogogo1, 350);

ctGogogo2 = entryEffectLife(spep_2+132,190006,46,0x100,-1,0,0,500);
setEffScaleKey( spep_2+132,ctGogogo2, 0.6, 0.6);
setEffAlphaKey( spep_2+132, ctGogogo2, 255);
setEffRotateKey( spep_2+132, ctGogogo2, 350);

shuchusen2=entryEffectLife(spep_2,906,178,0x100,-1,0,0,0);
setEffAlphaKey(spep_2+ 0,shuchusen2,80);
setEffAlphaKey(spep_2+178,shuchusen2,255);

setEffScaleKey(spep_2+ 0,shuchusen2,1.4,1.4);
setEffScaleKey(spep_2+ 178,shuchusen2,1.4,1.4);

playSe( spep_2,SE_01);
playSe( spep_2+92,SE_01);

--------------------
--挟み込み-−238F
--------------------
spep_3=spep_2+178;

--敵の動き(あるよ)
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 240, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 100, 1, 106 );

setShakeChara( spep_3, 1, 240, 20);

setMoveKey( spep_3 + 0, 1, 102.7, -37.9 , 0 );
setMoveKey( spep_3 + 2, 1, 98.1, -61.5 , 0 );
setMoveKey( spep_3 + 4, 1, 101.2, -36.9 , 0 );
setMoveKey( spep_3 + 6, 1, 88.1, -40.1 , 0 );
setMoveKey( spep_3 + 8, 1, 98.8, -35.2 , 0 );
setMoveKey( spep_3 + 10, 1, 93.3, -46.2 , 0 );
setMoveKey( spep_3 + 12, 1, 95.5, -32.9 , 0 );
setMoveKey( spep_3 + 14, 1, 81.5, -35.6 , 0 );
setMoveKey( spep_3 + 16, 1, 91.3, -30 , 0 );
setMoveKey( spep_3 + 18, 1, 84.9, -40.4 , 0 );
setMoveKey( spep_3 + 20, 1, 86.2, -26.5 , 0 );
setMoveKey( spep_3 + 22, 1, 79.3, -40.5 , 0 );
setMoveKey( spep_3 + 24, 1, 80.2, -22.4 , 0 );
setMoveKey( spep_3 + 26, 1, 64.8, -24.1 , 0 );
setMoveKey( spep_3 + 28, 1, 73.2, -17.6 , 0 );
setMoveKey( spep_3 + 30, 1, 69.5, -29.5 , 0 );
setMoveKey( spep_3 + 32, 1, 73.7, -17.4 , 0 );
setMoveKey( spep_3 + 34, 1, 69.9, -33.2 , 0 );
setMoveKey( spep_3 + 36, 1, 74.1, -17.1 , 0 );
setMoveKey( spep_3 + 38, 1, 62.3, -21 , 0 );
setMoveKey( spep_3 + 40, 1, 74.5, -16.9 , 0 );
setMoveKey( spep_3 + 42, 1, 70.7, -28.8 , 0 );
setMoveKey( spep_3 + 44, 1, 75, -16.7 , 0 );
setMoveKey( spep_3 + 46, 1, 67.2, -24.5 , 0 );
setMoveKey( spep_3 + 48, 1, 75.4, -16.4 , 0 );
setMoveKey( spep_3 + 50, 1, 71.6, -24.3 , 0 );
setMoveKey( spep_3 + 52, 1, 75.8, -16.2 , 0 );
setMoveKey( spep_3 + 54, 1, 68, -28.1 , 0 );
setMoveKey( spep_3 + 56, 1, 76.2, -15.9 , 0 );
setMoveKey( spep_3 + 58, 1, 68.5, -27.8 , 0 );
setMoveKey( spep_3 + 60, 1, 76.7, -15.7 , 0 );
setMoveKey( spep_3 + 62, 1, 68.9, -27.6 , 0 );
setMoveKey( spep_3 + 64, 1, 77.1, -15.5 , 0 );
setMoveKey( spep_3 + 66, 1, 69.3, -23.4 , 0 );
setMoveKey( spep_3 + 68, 1, 77.5, -15.2 , 0 );
setMoveKey( spep_3 + 70, 1, 69.7, -23.1 , 0 );
setMoveKey( spep_3 + 72, 1, 78, -15 , 0 );
setMoveKey( spep_3 + 74, 1, 74.2, -26.9 , 0 );
setMoveKey( spep_3 + 76, 1, 78.4, -14.8 , 0 );
setMoveKey( spep_3 + 78, 1, 66.6, -18.6 , 0 );
setMoveKey( spep_3 + 80, 1, 78.8, -14.5 , 0 );
setMoveKey( spep_3 + 82, 1, 75, -30.4 , 0 );
setMoveKey( spep_3 + 84, 1, 79.2, -14.3 , 0 );
setMoveKey( spep_3 + 86, 1, 71.5, -22.2 , 0 );
setMoveKey( spep_3 + 88, 1, 79.7, -14.1 , 0 );
setMoveKey( spep_3 + 90, 1, 71.9, -21.9 , 0 );
setMoveKey( spep_3 + 92, 1, 80.1, -13.8 , 0 );
setMoveKey( spep_3 + 94, 1, 64.3, -17.7 , 0 );
setMoveKey( spep_3 + 96, 1, 80.5, -13.6 , 0 );
setMoveKey( spep_3 + 99, 1, 76.7, -29.5 , 0 );
setMoveKey( spep_3 + 100, 1, 4.9, 15.7 , 0 );
setMoveKey( spep_3 + 102, 1, 0.6, 11.8 , 0 );
setMoveKey( spep_3 + 104, 1, 4.2, 16 , 0 );
setMoveKey( spep_3 + 106, 1, -8.1, 4.1 , 0 );
setMoveKey( spep_3 + 108, 1, 3.5, 16.3 , 0 );
setMoveKey( spep_3 + 110, 1, -0.8, 8.4 , 0 );
setMoveKey( spep_3 + 112, 1, 2.9, 16.6 , 0 );
setMoveKey( spep_3 + 114, 1, -1.5, 8.7 , 0 );
setMoveKey( spep_3 + 116, 1, 2.2, 16.9 , 0 );
setMoveKey( spep_3 + 118, 1, -10.2, 13 , 0 );
setMoveKey( spep_3 + 120, 1, 1.5, 17.2 , 0 );
setMoveKey( spep_3 + 122, 1, -2.9, 5.3 , 0 );
setMoveKey( spep_3 + 124, 1, 0.8, 17.5 , 0 );
setMoveKey( spep_3 + 126, 1, -11.6, 9.6 , 0 );
setMoveKey( spep_3 + 128, 1, 0.1, 17.8 , 0 );
setMoveKey( spep_3 + 130, 1, -4.2, 6 , 0 );
setMoveKey( spep_3 + 132, 1, -0.6, 18.1 , 0 );
setMoveKey( spep_3 + 134, 1, -12.9, 10.3 , 0 );
setMoveKey( spep_3 + 136, 1, -1.3, 18.4 , 0 );
setMoveKey( spep_3 + 138, 1, -5.6, 6.6 , 0 );
setMoveKey( spep_3 + 140, 1, -20, 26.8 , 0 );
setMoveKey( spep_3 + 142, 1, -24.8, 13.3 , 0 );
setMoveKey( spep_3 + 144, 1, -13.6, 23.9 , 0 );
setMoveKey( spep_3 + 146, 1, -26.4, 6.5 , 0 );
setMoveKey( spep_3 + 148, 1, -7.2, 21.1 , 0 );
setMoveKey( spep_3 + 150, 1, -16, 15.6 , 0 );
setMoveKey( spep_3 + 152, 1, -0.8, 18.2 , 0 );
setMoveKey( spep_3 + 154, 1, -4.7, 6.2 , 0 );
setMoveKey( spep_3 + 156, 1, -0.6, 18.1 , 0 );
setMoveKey( spep_3 + 158, 1, -12.5, 14.1 , 0 );
setMoveKey( spep_3 + 160, 1, -0.5, 18.1 , 0 );
setMoveKey( spep_3 + 162, 1, -4.4, 2 , 0 );
setMoveKey( spep_3 + 164, 1, -4.3, 18 , 0 );
setMoveKey( spep_3 + 166, 1, -12.2, 13.9 , 0 );
setMoveKey( spep_3 + 168, 1, -0.1, 17.9 , 0 );
setMoveKey( spep_3 + 170, 1, -4, 1.9 , 0 );
setMoveKey( spep_3 + 172, 1, 0, 17.8 , 0 );
setMoveKey( spep_3 + 174, 1, -11.9, 13.8 , 0 );
setMoveKey( spep_3 + 176, 1, 0.2, 17.8 , 0 );
setMoveKey( spep_3 + 178, 1, -3.7, 5.7 , 0 );
setMoveKey( spep_3 + 180, 1, 0.4, 17.7 , 0 );
setMoveKey( spep_3 + 182, 1, -7.5, 5.6 , 0 );
setMoveKey( spep_3 + 184, 1, 0.5, 17.6 , 0 );
setMoveKey( spep_3 + 186, 1, -15.4, 9.6 , 0 );
setMoveKey( spep_3 + 188, 1, 0.7, 17.5 , 0 );
setMoveKey( spep_3 + 190, 1, -3.2, 1.5 , 0 );
setMoveKey( spep_3 + 192, 1, 0.9, 17.5 , 0 );
setMoveKey( spep_3 + 194, 1, -11, 9.4 , 0 );
setMoveKey( spep_3 + 196, 1, 1, 17.4 , 0 );
setMoveKey( spep_3 + 198, 1, -6.9, 9.3 , 0 );
setMoveKey( spep_3 + 200, 1, 1.2, 17.3 , 0 );
setMoveKey( spep_3 + 202, 1, -6.7, 1.3 , 0 );
setMoveKey( spep_3 + 204, 1, 1.4, 17.2 , 0 );
setMoveKey( spep_3 + 206, 1, -10.5, 13.2 , 0 );
setMoveKey( spep_3 + 208, 1, 1.5, 17.2 , 0 );
setMoveKey( spep_3 + 210, 1, -2.4, -2.9 , 0 );
setMoveKey( spep_3 + 212, 1, 1.7, 17.1 , 0 );
setMoveKey( spep_3 + 214, 1, -10.2, 9 , 0 );
setMoveKey( spep_3 + 216, 1, 1.9, 17 , 0 );
setMoveKey( spep_3 + 218, 1, -2, 5 , 0 );
setMoveKey( spep_3 + 220, 1, 2, 16.9 , 0 );
setMoveKey( spep_3 + 222, 1, -9.9, 12.9 , 0 );
setMoveKey( spep_3 + 224, 1, 2.2, 16.9 , 0 );
setMoveKey( spep_3 + 226, 1, -1.7, 0.8 , 0 );
setMoveKey( spep_3 + 228, 1, 2.4, 16.8 , 0 );
setMoveKey( spep_3 + 230, 1, -9.5, 8.7 , 0 );
setMoveKey( spep_3 + 232, 1, 2.5, 16.7 , 0 );
setMoveKey( spep_3 + 234, 1, -5.4, 4.7 , 0 );
setMoveKey( spep_3 + 236, 1, 2.7, 16.6 , 0 );
setMoveKey( spep_3 + 238, 1, -5.2, 4.6 , 0 );

setScaleKey( spep_3 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 2, 1, 2.17, 2.17 );
setScaleKey( spep_3 + 4, 1, 2.14, 2.14 );
setScaleKey( spep_3 + 6, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 8, 1, 2.04, 2.04 );
setScaleKey( spep_3 + 10, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 12, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 14, 1, 1.83, 1.83 );
setScaleKey( spep_3 + 16, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 20, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 22, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 26, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 28, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 30, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 32, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 34, 1, 1, 1 );
setScaleKey( spep_3 + 36, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 38, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 40, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 42, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 44, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 46, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 48, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 50, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 52, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 54, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 56, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 58, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 60, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 62, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 64, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 66, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 68, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 70, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 72, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 74, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 76, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 78, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 80, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 82, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 84, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 86, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 88, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 90, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 92, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 94, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 96, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 99, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 100, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 102, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 104, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 106, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 108, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 110, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 112, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 114, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 116, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 118, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 120, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 122, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 124, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 126, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 128, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 130, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 132, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 134, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 136, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 138, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 140, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 142, 1, 2.08, 2.08 );
setScaleKey( spep_3 + 144, 1, 1.96, 1.96 );
setScaleKey( spep_3 + 146, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 148, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 150, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 152, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 154, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 158, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 160, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 164, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 166, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 172, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 174, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 178, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 180, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 184, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 186, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 190, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 192, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 198, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 200, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 204, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 206, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 210, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 212, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 218, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 220, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 224, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 226, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 230, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 232, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 236, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 238, 1, 1.36, 1.36 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 99, 1, 0 );
setRotateKey( spep_3 + 100, 1, -36.7 );

entryFade( spep_3,      0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+ 86, 10, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+130, 6, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255); 

entryFade( spep_3+220, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); 

--顔カットイン(spep_3+144)
speff1 = entryEffect(  spep_3+144,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_3+144,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

Sel2=entryEffectLife(spep_3,SP_04,238,0x100,-1,0,0,0);
setEffAlphaKey(spep_3, Sel2, 255);
setEffScaleKey(spep_3, Sel2,1.0,1.0);
setEffRotateKey(spep_3, Sel2,0);

setEffShake(spep_3,Sel2,238,10);

Fre2=entryEffectLife(spep_3,SP_05,238,0x80,-1,0,0,0);
setEffAlphaKey(spep_3, Fre2, 255);
setEffScaleKey(spep_3, Fre2,1.0,1.0);
setEffRotateKey(spep_3, Fre2,0);

setEffShake(spep_3,Fre2,238,10);

--集中線
shuchusen3=entryEffectLife(spep_3,906,238,0x100,-1,0,0,0);
setEffAlphaKey(spep_3,shuchusen3,255);
setEffAlphaKey(spep_3+238,shuchusen3,255);

setEffScaleKey(spep_3,shuchusen3,1.4,1.4);
setEffScaleKey(spep_3+238,shuchusen3,1.4,1.4);

ctGogogo3 = entryEffectLife(spep_3+160,190006,58,0x100,-1,0,0,500);

setEffMoveKey( spep_3 + 160, ctGogogo3, 0, 501.8 , 0 );
setEffMoveKey( spep_3 + 210, ctGogogo3, 0, 501.8 , 0 );
setEffMoveKey( spep_3 + 212, ctGogogo3, 0, 490.2 , 0 );
setEffMoveKey( spep_3 + 214, ctGogogo3, 0, 501.8 , 0 );
setEffMoveKey( spep_3 + 216, ctGogogo3, 0, 485.1 , 0 );
setEffMoveKey( spep_3 + 218, ctGogogo3, 0, 482.5 , 0 );

-- ctGogogo3
setEffScaleKey( spep_3 + 160, ctGogogo3, 0.6, 0.6 );
setEffScaleKey( spep_3 + 210, ctGogogo3, 0.6, 0.6 );
setEffScaleKey( spep_3 + 212, ctGogogo3, 0.94, 0.94 );
setEffScaleKey( spep_3 + 214, ctGogogo3, 1.09, 1.09 );
setEffScaleKey( spep_3 + 216, ctGogogo3, 1.2, 1.2 );
setEffScaleKey( spep_3 + 218, ctGogogo3, 1.4, 1.4 );

setEffRotateKey( spep_3 + 160, ctGogogo3, 0 );

setEffAlphaKey( spep_3 + 160, ctGogogo3, 255 );
setEffAlphaKey( spep_3 + 210, ctGogogo3, 255 );
setEffAlphaKey( spep_3 + 212, ctGogogo3, 191 );
setEffAlphaKey( spep_3 + 214, ctGogogo3, 128 );
setEffAlphaKey( spep_3 + 216, ctGogogo3, 64 );
setEffAlphaKey( spep_3 + 218, ctGogogo3, 0 );

playSe(spep_3+10,1034);
playSe(spep_3+25,1034);
playSe(spep_3+40,1034);
playSe(spep_3+55,1034);
playSe(spep_3+70,1034);
playSe(spep_3+85,1034);
playSe(spep_3+100,1034);
playSe(spep_3+115,1034);
playSe(spep_3+130,1034);

playSe(spep_3+151, SE_04);

--------------------
--カードカットイン(88F)
--------------------
spep_4=spep_3+238;

entryFade( spep_4,      0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_4+80,      8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--集中線
shuchusen4=entryEffectLife(spep_4,906,88,0x100,-1,0,0,0);
setEffAlphaKey(spep_4,shuchusen4,255);
setEffAlphaKey(spep_4+68,shuchusen4,255);

setEffScaleKey(spep_4,shuchusen4,1.2,1.2);
setEffScaleKey(spep_4+68,shuchusen4,1.2,1.2);

-- ** エフェクト等 ** --
playSe( spep_4, SE_05);

--------------------
--落とし込み
--------------------
spep_5=spep_4+88;

entryFade( spep_5,      0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_5+58,   8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);

Drop = entryEffectLife(spep_5,SP_06,68,0x100,-1,0,0,0);
setEffAlphaKey(spep_5, Drop, 255);
setEffScaleKey(spep_5, Drop,1.0,1.0);
setEffRotateKey(spep_5, Drop,0);

setEffShake(spep_5,Drop,68,10);

--集中線
shuchusen5=entryEffectLife(spep_5,906,68,0x100,-1,0,0,0);
setEffAlphaKey(spep_5,shuchusen5,255);
setEffAlphaKey(spep_5+68,shuchusen5,255);

setEffScaleKey(spep_5,shuchusen5,1.2,1.2);
setEffScaleKey(spep_5+68,shuchusen5,1.2,1.2);

playSe(spep_5,SE_14);
--------------------
--爆発
--------------------
spep_6=spep_5+68;

entryFade( spep_6, 0, 0, 18, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_6+138, 20, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);

Exp = entryEffect(spep_6,SP_07,0x80,-1,0,0,0);
setEffAlphaKey(spep_6, Exp, 255);
setEffScaleKey(spep_6, Exp,1.0,1.0);
setEffRotateKey(spep_6, Exp,0);

--集中線
shuchusen6=entryEffectLife(spep_6,906,158,0x100,-1,0,0,0);
setEffAlphaKey(spep_6,shuchusen6,255);
setEffAlphaKey(spep_6+158,shuchusen6,255);

setEffScaleKey(spep_6,shuchusen6,1.2,1.2);
setEffScaleKey(spep_6+158,shuchusen6,1.2,1.2);

-- ダメージ表示
dealDamage( spep_6+64);
entryFade( spep_6+148, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+158);

playSe(spep_6+8,SE_10);

else

--------------------
--敵側の動き
--------------------
--気溜--158F
--------------------
spep_1=0;

entryFade( spep_1,      0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 180);     -- white fade
entryFade( spep_1+ 96,  0, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--敵の動き(あるよ)
setDisp( spep_1 + 40, 1, 1);

changeAnime( spep_1 + 40, 1, 100);
setShakeChara( spep_1 + 40, 1, 118, 10);

setMoveKey( spep_1 + 40,1, 457, -20.8 , 0 );
setMoveKey( spep_1 + 42,1, 434.2, -19.1 , 0 );
setMoveKey( spep_1 + 44,1, 409.7, -17.2 , 0 );
setMoveKey( spep_1 + 46,1, 383.4, -15.2 , 0 );
setMoveKey( spep_1 + 48,1, 355.5, -13.2 , 0 );
setMoveKey( spep_1 + 50,1, 325.8, -10.9 , 0 );
setMoveKey( spep_1 + 52,1, 294.5, -8.6 , 0 );
setMoveKey( spep_1 + 54,1, 261.4, -6.1 , 0 );
setMoveKey( spep_1 + 56,1, 226.7, -3.5 , 0 );
setMoveKey( spep_1 + 58,1, 190.2, -0.8 , 0 );
setMoveKey( spep_1 + 60,1, 152, 2.1 , 0 );
setMoveKey( spep_1 + 62,1, 112.1, 5 , 0 );
setMoveKey( spep_1 + 64,1, 61.2, 9.3 , 0 );
setMoveKey( spep_1 + 66,1, 10.8, 13.5 , 0 );
setMoveKey( spep_1 + 68,1, -39, 17.7 , 0 );
setMoveKey( spep_1 + 70,1, -88.3, 21.8 , 0 );
setMoveKey( spep_1 + 72,1, -137.1, 25.9 , 0 );
setMoveKey( spep_1 + 74,1, -185.4, 29.9 , 0 );
setMoveKey( spep_1 + 76,1, -233.2, 33.9 , 0 );
setMoveKey( spep_1 + 78,1, -280.5, 37.9 , 0 );
setMoveKey( spep_1 + 80,1, -327.2, 41.8 , 0 );
setMoveKey( spep_1 + 82,1, -373.4, 45.7 , 0 );
setMoveKey( spep_1 + 84,1, -419.1, 49.5 , 0 );
setMoveKey( spep_1 + 86,1, -464.3, 53.3 , 0 );
setMoveKey( spep_1 + 88,1, -509, 57 , 0 );
setMoveKey( spep_1 + 90,1, -553.1, 60.7 , 0 );
setMoveKey( spep_1 + 92,1, -596.7, 64.4 , 0 );
setMoveKey( spep_1 + 94,1, -639.8, 68 , 0 );
setMoveKey( spep_1 + 96,1, -682.4, 71.6 , 0 );
setMoveKey( spep_1 + 98,1, -724.5, 75.1 , 0 );
setMoveKey( spep_1 + 100,1, -14.7, 21.7 , 0 );
setMoveKey( spep_1 + 102,1, -12.1, 22.1 , 0 );
setMoveKey( spep_1 + 104,1, -9.1, 22.5 , 0 );
setMoveKey( spep_1 + 106,1, -5.8, 22.9 , 0 );
setMoveKey( spep_1 + 108,1, -2.2, 23.4 , 0 );
setMoveKey( spep_1 + 110,1, 1.8, 23.9 , 0 );
setMoveKey( spep_1 + 112,1, 6.1, 24.5 , 0 );
setMoveKey( spep_1 + 114,1, 10.7, 25.1 , 0 );
setMoveKey( spep_1 + 116,1, 15.7, 25.8 , 0 );
setMoveKey( spep_1 + 118,1, 21, 26.5 , 0 );
setMoveKey( spep_1 + 120,1, 24, 27.3 , 0 );
setMoveKey( spep_1 + 122,1, 24.7, 26.8 , 0 );
setMoveKey( spep_1 + 124,1, 25.5, 26.3 , 0 );
setMoveKey( spep_1 + 126,1, 26.3, 25.8 , 0 );
setMoveKey( spep_1 + 128,1, 27.1, 25.4 , 0 );
setMoveKey( spep_1 + 130,1, 27.9, 24.9 , 0 );
setMoveKey( spep_1 + 132,1, 28.7, 24.4 , 0 );
-- 回避タイミング　spep_1 + 132 --

setScaleKey( spep_1 + 40, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 42, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 44, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 46, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 48, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 50, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 52, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 54, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 56, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 58, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 60, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 62, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 64, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 66, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 68, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 70, 1, 1.96, 1.96 );
setScaleKey( spep_1 + 72, 1, 2.1, 2.1 );
setScaleKey( spep_1 + 74, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 76, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 78, 1, 2.51, 2.51 );
setScaleKey( spep_1 + 80, 1, 2.64, 2.64 );
setScaleKey( spep_1 + 82, 1, 2.78, 2.78 );
setScaleKey( spep_1 + 84, 1, 2.91, 2.91 );
setScaleKey( spep_1 + 86, 1, 3.04, 3.04 );
setScaleKey( spep_1 + 88, 1, 3.16, 3.16 );
setScaleKey( spep_1 + 90, 1, 3.29, 3.29 );
setScaleKey( spep_1 + 92, 1, 3.41, 3.41 );
setScaleKey( spep_1 + 94, 1, 3.54, 3.54 );
setScaleKey( spep_1 + 96, 1, 3.66, 3.66 );
setScaleKey( spep_1 + 98, 1, 3.78, 3.78 );
setScaleKey( spep_1 + 100, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 102, 1, 2.86, 2.86 );
setScaleKey( spep_1 + 104, 1, 2.72, 2.72 );
setScaleKey( spep_1 + 106, 1, 2.57, 2.57 );
setScaleKey( spep_1 + 108, 1, 2.4, 2.4 );
setScaleKey( spep_1 + 110, 1, 2.22, 2.22 );
setScaleKey( spep_1 + 112, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 114, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 116, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 118, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 120, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 122, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 124, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 126, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 128, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 130, 1, 1, 1 );
setScaleKey( spep_1 + 132, 1, 0.98, 0.98 );
-- 回避タイミング　spep_1 + 132 --

setEffRotateKey( spep_1 + 40, 1, 0 );
--[[
shuchusen1=entryEffectLife(spep_1+38,906,120,0x100,-1,0,0,0);
setEffAlphaKey(spep_1+ 38,shuchusen1,80);
setEffAlphaKey(spep_1+ 46,shuchusen1,255);

setEffScaleKey(spep_1+ 38,shuchusen1,1.4,1.4);
]]--
Sel1=entryEffectLife(spep_1,SP_08,158,0x100,-1,0,0,0);
setEffAlphaKey(spep_1, Sel1, 255);
setEffScaleKey(spep_1, Sel1,1.0,1.0);
setEffRotateKey(spep_1, Sel1,0);

shuchusen1=entryEffectLife(spep_1,906,158,0x100,-1,0,0,0);
setEffAlphaKey(spep_1    ,shuchusen1,0);
setEffAlphaKey(spep_1+ 37,shuchusen1,0);
setEffAlphaKey(spep_1+ 38,shuchusen1,80);
setEffAlphaKey(spep_1+ 46,shuchusen1,255);

setEffScaleKey(spep_1,shuchusen1,1.4,1.4);
--setEffShake(spep_1,Sel1,158,10);

Fre1=entryEffectLife(spep_1,SP_09,158,0x80,-1,0,0,0);
setEffAlphaKey(spep_1, Fre1, 255);
setEffScaleKey(spep_1, Fre1,1.0,1.0);
setEffRotateKey(spep_1, Fre1,0);

playSe(spep_1+46,SE_12);
playSe(spep_1+98,SE_13);
--setEffShake(spep_1,Fre1,158,10);

-------------------
--回避
-------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 132;

playSe( SP_dodge-12, 1042);

setMoveKey(SP_dodge,1,28.7, 24.4 , 0 );
setScaleKey(   SP_dodge,   1, 0.98, 0.98 );
setRotateKey(   SP_dodge,   1, 0);

setMoveKey(SP_dodge+8,1,32, 22.5 , 0 );
setScaleKey(   SP_dodge+8,   1, 0.92, 0.92 );
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

--------------------
--回避されなかった場合
--------------------
setMoveKey( spep_1 + 134,1, 29.5, 23.9 , 0 );
setMoveKey( spep_1 + 136,1, 30.3, 23.4 , 0 );
setMoveKey( spep_1 + 138,1, 31.1, 23 , 0 );
setMoveKey( spep_1 + 140,1, 32, 22.5 , 0 );
setMoveKey( spep_1 + 142,1, 32.8, 22 , 0 );
setMoveKey( spep_1 + 144,1, 33.7, 21.5 , 0 );
setMoveKey( spep_1 + 146,1, 34.5, 21.1 , 0 );
setMoveKey( spep_1 + 148,1, 35.4, 20.6 , 0 );
setMoveKey( spep_1 + 150,1, 36.2, 20.1 , 0 );
setMoveKey( spep_1 + 152,1, 37.1, 19.6 , 0 );
setMoveKey( spep_1 + 154,1, 38, 19.2 , 0 );
setMoveKey( spep_1 + 156,1, 38.9, 18.7 , 0 );
setMoveKey( spep_1 + 158,1, 39.9, 18.2 , 0 );

setScaleKey( spep_1 + 134, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 136, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 138, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 140, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 142, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 144, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 146, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 148, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 150, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 152, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 154, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 156, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 158, 1, 0.79, 0.79 );

setEffAlphaKey(spep_1+158,shuchusen1,255);
setEffScaleKey(spep_1+ 158,shuchusen1,1.4,1.4);

entryFade( spep_1+144, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_1 + 158, 1, 0);
--------------------
--２人カットイン-−188F
--------------------
spep_2=spep_1+158;

entryFade( spep_2,      0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+ 86,  0, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+168, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); 

Cut=entryEffectLife(spep_2,SP_10,178,0x100,-1,0,0,0);
setEffAlphaKey(spep_2, Cut, 255);
setEffScaleKey(spep_2, Cut,1.0,1.0);
setEffRotateKey(spep_2, Cut,0);

setEffShake(spep_2,Cut,178,10);

--書き文字(ズオッ)
ctZuo1= entryEffectLife(spep_2,10012,36,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, ctZuo1, 38.7, 140.5 , 0 );
setEffMoveKey( spep_2 + 2, ctZuo1, 65, 168.6 , 0 );
setEffMoveKey( spep_2 + 4, ctZuo1, 77.9, 210.1 , 0 );
setEffMoveKey( spep_2 + 6, ctZuo1, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 8, ctZuo1, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 10, ctZuo1, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 12, ctZuo1, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 14, ctZuo1, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 16, ctZuo1, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 18, ctZuo1, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 20, ctZuo1, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 22, ctZuo1, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 24, ctZuo1, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 26, ctZuo1, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 28, ctZuo1, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 30, ctZuo1, 137.9, 224.7 , 0 );
setEffMoveKey( spep_2 + 32, ctZuo1, 134, 248.7 , 0 );
setEffMoveKey( spep_2 + 34, ctZuo1, 186.1, 216.5 , 0 );
setEffMoveKey( spep_2 + 36, ctZuo1, 210.3, 212.4 , 0 );

setEffScaleKey( spep_2 + 0, ctZuo1, 0.34, 0.34 );
setEffScaleKey( spep_2 + 2, ctZuo1, 1.13, 1.13 );
setEffScaleKey( spep_2 + 4, ctZuo1, 1.94, 1.94 );
setEffScaleKey( spep_2 + 6, ctZuo1, 2.73, 2.73 );
setEffScaleKey( spep_2 + 28, ctZuo1, 2.73, 2.73 );
setEffScaleKey( spep_2 + 30, ctZuo1, 3.75, 3.75 );
setEffScaleKey( spep_2 + 32, ctZuo1, 4.78, 4.78 );
setEffScaleKey( spep_2 + 34, ctZuo1, 5.8, 5.8 );
setEffScaleKey( spep_2 + 36, ctZuo1, 6.82, 6.82 );

setEffRotateKey( spep_2 + 0, ctZuo1, 27.2 );
setEffRotateKey( spep_2 + 36, ctZuo1, 27.2 );

setEffAlphaKey( spep_2 + 0, ctZuo1, 255 );
setEffAlphaKey( spep_2 + 28, ctZuo1, 255 );
setEffAlphaKey( spep_2 + 30, ctZuo1, 191 );
setEffAlphaKey( spep_2 + 32, ctZuo1, 128 );
setEffAlphaKey( spep_2 + 34, ctZuo1, 64 );
setEffAlphaKey( spep_2 + 36, ctZuo1, 0 );

ctZuo2= entryEffectLife(spep_2+90,10012,36,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 90, ctZuo2, 38.7, 140.5 , 0 );
setEffMoveKey( spep_2 + 92, ctZuo2, 65, 168.6 , 0 );
setEffMoveKey( spep_2 + 94, ctZuo2, 77.9, 210.1 , 0 );
setEffMoveKey( spep_2 + 96, ctZuo2, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 98, ctZuo2, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 100, ctZuo2, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 102, ctZuo2, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 104, ctZuo2, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 106, ctZuo2, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 108, ctZuo2, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 110, ctZuo2, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 112, ctZuo2, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 114, ctZuo2, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 116, ctZuo2, 113.7, 228.8 , 0 );
setEffMoveKey( spep_2 + 118, ctZuo2, 97.7, 244.8 , 0 );
setEffMoveKey( spep_2 + 120, ctZuo2, 137.9, 224.7 , 0 );
setEffMoveKey( spep_2 + 122, ctZuo2, 134, 248.7 , 0 );
setEffMoveKey( spep_2 + 124, ctZuo2, 186.1, 216.5 , 0 );
setEffMoveKey( spep_2 + 126, ctZuo2, 210.3, 212.4 , 0 );

setEffScaleKey( spep_2 + 90, ctZuo2, 0.34, 0.34 );
setEffScaleKey( spep_2 + 92, ctZuo2, 1.13, 1.13 );
setEffScaleKey( spep_2 + 94, ctZuo2, 1.94, 1.94 );
setEffScaleKey( spep_2 + 96, ctZuo2, 2.73, 2.73 );
setEffScaleKey( spep_2 + 118, ctZuo2, 2.73, 2.73 );
setEffScaleKey( spep_2 + 120, ctZuo2, 3.75, 3.75 );
setEffScaleKey( spep_2 + 122, ctZuo2, 4.78, 4.78 );
setEffScaleKey( spep_2 + 124, ctZuo2, 5.8, 5.8 );
setEffScaleKey( spep_2 + 126, ctZuo2, 6.82, 6.82 );

setEffRotateKey( spep_2 + 90, ctZuo2, 27.2 );

setEffAlphaKey( spep_2 + 90, ctZuo2, 255 );
setEffAlphaKey( spep_2 + 118, ctZuo2, 255 );
setEffAlphaKey( spep_2 + 120, ctZuo2, 191 );
setEffAlphaKey( spep_2 + 122, ctZuo2, 128 );
setEffAlphaKey( spep_2 + 124, ctZuo2, 64 );
setEffAlphaKey( spep_2 + 126, ctZuo2, 0 );

ctGogogo1 = entryEffectLife(spep_2+42,190006,46,0x100,-1,0,0,500);
setEffScaleKey( spep_2+42, ctGogogo1, -0.6, 0.6);
setEffAlphaKey( spep_2+42, ctGogogo1, 255);
setEffRotateKey( spep_2+42, ctGogogo1, 350);

ctGogogo2 = entryEffectLife(spep_2+132,190006,46,0x100,-1,0,0,500);
setEffScaleKey( spep_2+132,ctGogogo2, -0.6, 0.6);
setEffAlphaKey( spep_2+132, ctGogogo2, 255);
setEffRotateKey( spep_2+132, ctGogogo2, 350);

shuchusen2=entryEffectLife(spep_2,906,178,0x100,-1,0,0,0);
setEffAlphaKey(spep_2+ 0,shuchusen2,80);
setEffAlphaKey(spep_2+178,shuchusen2,255);

setEffScaleKey(spep_2+ 0,shuchusen2,1.4,1.4);
setEffScaleKey(spep_2+ 178,shuchusen2,1.4,1.4);

playSe( spep_2,SE_01);
playSe( spep_2+92,SE_01);

--------------------
--挟み込み-−238F
--------------------
spep_3=spep_2+178;

--敵の動き(あるよ)
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 240, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 + 100, 1, 106 );

setShakeChara( spep_3, 1, 240, 20);

setMoveKey( spep_3 + 0, 1, 102.7, -37.9 , 0 );
setMoveKey( spep_3 + 2, 1, 98.1, -61.5 , 0 );
setMoveKey( spep_3 + 4, 1, 101.2, -36.9 , 0 );
setMoveKey( spep_3 + 6, 1, 88.1, -40.1 , 0 );
setMoveKey( spep_3 + 8, 1, 98.8, -35.2 , 0 );
setMoveKey( spep_3 + 10, 1, 93.3, -46.2 , 0 );
setMoveKey( spep_3 + 12, 1, 95.5, -32.9 , 0 );
setMoveKey( spep_3 + 14, 1, 81.5, -35.6 , 0 );
setMoveKey( spep_3 + 16, 1, 91.3, -30 , 0 );
setMoveKey( spep_3 + 18, 1, 84.9, -40.4 , 0 );
setMoveKey( spep_3 + 20, 1, 86.2, -26.5 , 0 );
setMoveKey( spep_3 + 22, 1, 79.3, -40.5 , 0 );
setMoveKey( spep_3 + 24, 1, 80.2, -22.4 , 0 );
setMoveKey( spep_3 + 26, 1, 64.8, -24.1 , 0 );
setMoveKey( spep_3 + 28, 1, 73.2, -17.6 , 0 );
setMoveKey( spep_3 + 30, 1, 69.5, -29.5 , 0 );
setMoveKey( spep_3 + 32, 1, 73.7, -17.4 , 0 );
setMoveKey( spep_3 + 34, 1, 69.9, -33.2 , 0 );
setMoveKey( spep_3 + 36, 1, 74.1, -17.1 , 0 );
setMoveKey( spep_3 + 38, 1, 62.3, -21 , 0 );
setMoveKey( spep_3 + 40, 1, 74.5, -16.9 , 0 );
setMoveKey( spep_3 + 42, 1, 70.7, -28.8 , 0 );
setMoveKey( spep_3 + 44, 1, 75, -16.7 , 0 );
setMoveKey( spep_3 + 46, 1, 67.2, -24.5 , 0 );
setMoveKey( spep_3 + 48, 1, 75.4, -16.4 , 0 );
setMoveKey( spep_3 + 50, 1, 71.6, -24.3 , 0 );
setMoveKey( spep_3 + 52, 1, 75.8, -16.2 , 0 );
setMoveKey( spep_3 + 54, 1, 68, -28.1 , 0 );
setMoveKey( spep_3 + 56, 1, 76.2, -15.9 , 0 );
setMoveKey( spep_3 + 58, 1, 68.5, -27.8 , 0 );
setMoveKey( spep_3 + 60, 1, 76.7, -15.7 , 0 );
setMoveKey( spep_3 + 62, 1, 68.9, -27.6 , 0 );
setMoveKey( spep_3 + 64, 1, 77.1, -15.5 , 0 );
setMoveKey( spep_3 + 66, 1, 69.3, -23.4 , 0 );
setMoveKey( spep_3 + 68, 1, 77.5, -15.2 , 0 );
setMoveKey( spep_3 + 70, 1, 69.7, -23.1 , 0 );
setMoveKey( spep_3 + 72, 1, 78, -15 , 0 );
setMoveKey( spep_3 + 74, 1, 74.2, -26.9 , 0 );
setMoveKey( spep_3 + 76, 1, 78.4, -14.8 , 0 );
setMoveKey( spep_3 + 78, 1, 66.6, -18.6 , 0 );
setMoveKey( spep_3 + 80, 1, 78.8, -14.5 , 0 );
setMoveKey( spep_3 + 82, 1, 75, -30.4 , 0 );
setMoveKey( spep_3 + 84, 1, 79.2, -14.3 , 0 );
setMoveKey( spep_3 + 86, 1, 71.5, -22.2 , 0 );
setMoveKey( spep_3 + 88, 1, 79.7, -14.1 , 0 );
setMoveKey( spep_3 + 90, 1, 71.9, -21.9 , 0 );
setMoveKey( spep_3 + 92, 1, 80.1, -13.8 , 0 );
setMoveKey( spep_3 + 94, 1, 64.3, -17.7 , 0 );
setMoveKey( spep_3 + 96, 1, 80.5, -13.6 , 0 );
setMoveKey( spep_3 + 99, 1, 76.7, -29.5 , 0 );
setMoveKey( spep_3 + 100, 1, 4.9, 15.7 , 0 );
setMoveKey( spep_3 + 102, 1, 0.6, 11.8 , 0 );
setMoveKey( spep_3 + 104, 1, 4.2, 16 , 0 );
setMoveKey( spep_3 + 106, 1, -8.1, 4.1 , 0 );
setMoveKey( spep_3 + 108, 1, 3.5, 16.3 , 0 );
setMoveKey( spep_3 + 110, 1, -0.8, 8.4 , 0 );
setMoveKey( spep_3 + 112, 1, 2.9, 16.6 , 0 );
setMoveKey( spep_3 + 114, 1, -1.5, 8.7 , 0 );
setMoveKey( spep_3 + 116, 1, 2.2, 16.9 , 0 );
setMoveKey( spep_3 + 118, 1, -10.2, 13 , 0 );
setMoveKey( spep_3 + 120, 1, 1.5, 17.2 , 0 );
setMoveKey( spep_3 + 122, 1, -2.9, 5.3 , 0 );
setMoveKey( spep_3 + 124, 1, 0.8, 17.5 , 0 );
setMoveKey( spep_3 + 126, 1, -11.6, 9.6 , 0 );
setMoveKey( spep_3 + 128, 1, 0.1, 17.8 , 0 );
setMoveKey( spep_3 + 130, 1, -4.2, 6 , 0 );
setMoveKey( spep_3 + 132, 1, -0.6, 18.1 , 0 );
setMoveKey( spep_3 + 134, 1, -12.9, 10.3 , 0 );
setMoveKey( spep_3 + 136, 1, -1.3, 18.4 , 0 );
setMoveKey( spep_3 + 138, 1, -5.6, 6.6 , 0 );
setMoveKey( spep_3 + 140, 1, -20, 26.8 , 0 );
setMoveKey( spep_3 + 142, 1, -24.8, 13.3 , 0 );
setMoveKey( spep_3 + 144, 1, -13.6, 23.9 , 0 );
setMoveKey( spep_3 + 146, 1, -26.4, 6.5 , 0 );
setMoveKey( spep_3 + 148, 1, -7.2, 21.1 , 0 );
setMoveKey( spep_3 + 150, 1, -16, 15.6 , 0 );
setMoveKey( spep_3 + 152, 1, -0.8, 18.2 , 0 );
setMoveKey( spep_3 + 154, 1, -4.7, 6.2 , 0 );
setMoveKey( spep_3 + 156, 1, -0.6, 18.1 , 0 );
setMoveKey( spep_3 + 158, 1, -12.5, 14.1 , 0 );
setMoveKey( spep_3 + 160, 1, -0.5, 18.1 , 0 );
setMoveKey( spep_3 + 162, 1, -4.4, 2 , 0 );
setMoveKey( spep_3 + 164, 1, -4.3, 18 , 0 );
setMoveKey( spep_3 + 166, 1, -12.2, 13.9 , 0 );
setMoveKey( spep_3 + 168, 1, -0.1, 17.9 , 0 );
setMoveKey( spep_3 + 170, 1, -4, 1.9 , 0 );
setMoveKey( spep_3 + 172, 1, 0, 17.8 , 0 );
setMoveKey( spep_3 + 174, 1, -11.9, 13.8 , 0 );
setMoveKey( spep_3 + 176, 1, 0.2, 17.8 , 0 );
setMoveKey( spep_3 + 178, 1, -3.7, 5.7 , 0 );
setMoveKey( spep_3 + 180, 1, 0.4, 17.7 , 0 );
setMoveKey( spep_3 + 182, 1, -7.5, 5.6 , 0 );
setMoveKey( spep_3 + 184, 1, 0.5, 17.6 , 0 );
setMoveKey( spep_3 + 186, 1, -15.4, 9.6 , 0 );
setMoveKey( spep_3 + 188, 1, 0.7, 17.5 , 0 );
setMoveKey( spep_3 + 190, 1, -3.2, 1.5 , 0 );
setMoveKey( spep_3 + 192, 1, 0.9, 17.5 , 0 );
setMoveKey( spep_3 + 194, 1, -11, 9.4 , 0 );
setMoveKey( spep_3 + 196, 1, 1, 17.4 , 0 );
setMoveKey( spep_3 + 198, 1, -6.9, 9.3 , 0 );
setMoveKey( spep_3 + 200, 1, 1.2, 17.3 , 0 );
setMoveKey( spep_3 + 202, 1, -6.7, 1.3 , 0 );
setMoveKey( spep_3 + 204, 1, 1.4, 17.2 , 0 );
setMoveKey( spep_3 + 206, 1, -10.5, 13.2 , 0 );
setMoveKey( spep_3 + 208, 1, 1.5, 17.2 , 0 );
setMoveKey( spep_3 + 210, 1, -2.4, -2.9 , 0 );
setMoveKey( spep_3 + 212, 1, 1.7, 17.1 , 0 );
setMoveKey( spep_3 + 214, 1, -10.2, 9 , 0 );
setMoveKey( spep_3 + 216, 1, 1.9, 17 , 0 );
setMoveKey( spep_3 + 218, 1, -2, 5 , 0 );
setMoveKey( spep_3 + 220, 1, 2, 16.9 , 0 );
setMoveKey( spep_3 + 222, 1, -9.9, 12.9 , 0 );
setMoveKey( spep_3 + 224, 1, 2.2, 16.9 , 0 );
setMoveKey( spep_3 + 226, 1, -1.7, 0.8 , 0 );
setMoveKey( spep_3 + 228, 1, 2.4, 16.8 , 0 );
setMoveKey( spep_3 + 230, 1, -9.5, 8.7 , 0 );
setMoveKey( spep_3 + 232, 1, 2.5, 16.7 , 0 );
setMoveKey( spep_3 + 234, 1, -5.4, 4.7 , 0 );
setMoveKey( spep_3 + 236, 1, 2.7, 16.6 , 0 );
setMoveKey( spep_3 + 238, 1, -5.2, 4.6 , 0 );

setScaleKey( spep_3 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 2, 1, 2.17, 2.17 );
setScaleKey( spep_3 + 4, 1, 2.14, 2.14 );
setScaleKey( spep_3 + 6, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 8, 1, 2.04, 2.04 );
setScaleKey( spep_3 + 10, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 12, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 14, 1, 1.83, 1.83 );
setScaleKey( spep_3 + 16, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 20, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 22, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 26, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 28, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 30, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 32, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 34, 1, 1, 1 );
setScaleKey( spep_3 + 36, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 38, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 40, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 42, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 44, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 46, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 48, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 50, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 52, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 54, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 56, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 58, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 60, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 62, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 64, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 66, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 68, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 70, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 72, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 74, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 76, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 78, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 80, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 82, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 84, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 86, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 88, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 90, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 92, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 94, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 96, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 99, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 100, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 102, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 104, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 106, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 108, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 110, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 112, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 114, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 116, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 118, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 120, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 122, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 124, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 126, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 128, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 130, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 132, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 134, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 136, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 138, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 140, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 142, 1, 2.08, 2.08 );
setScaleKey( spep_3 + 144, 1, 1.96, 1.96 );
setScaleKey( spep_3 + 146, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 148, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 150, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 152, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 154, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 158, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 160, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 164, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 166, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 172, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 174, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 178, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 180, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 184, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 186, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 190, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 192, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 198, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 200, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 204, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 206, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 210, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 212, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 218, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 220, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 224, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 226, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 230, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 232, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 236, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 238, 1, 1.36, 1.36 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 99, 1, 0 );
setRotateKey( spep_3 + 100, 1, -36.7 );

entryFade( spep_3,      0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+ 86, 10, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+130, 6, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255); 

entryFade( spep_3+220, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); 

--顔カットイン(spep_3+144)
--speff1 = entryEffect(  spep_3+144,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
--setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
--speff2 = entryEffect(  spep_3+144,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

Sel2=entryEffectLife(spep_3,SP_11,238,0x100,-1,0,0,0);
setEffAlphaKey(spep_3, Sel2, 255);
setEffScaleKey(spep_3, Sel2,1.0,1.0);
setEffRotateKey(spep_3, Sel2,0);

setEffShake(spep_3,Sel2,238,10);

Fre2=entryEffectLife(spep_3,SP_12,238,0x80,-1,0,0,0);
setEffAlphaKey(spep_3, Fre2, 255);
setEffScaleKey(spep_3, Fre2,1.0,1.0);
setEffRotateKey(spep_3, Fre2,0);

setEffShake(spep_3,Fre2,238,10);

--集中線
shuchusen3=entryEffectLife(spep_3,906,238,0x100,-1,0,0,0);
setEffAlphaKey(spep_3,shuchusen3,255);
setEffAlphaKey(spep_3+238,shuchusen3,255);

setEffScaleKey(spep_3,shuchusen3,1.4,1.4);
setEffScaleKey(spep_3+238,shuchusen3,1.4,1.4);

ctGogogo3 = entryEffectLife(spep_3+160,190006,58,0x100,-1,0,0,500);

setEffMoveKey( spep_3 + 160, ctGogogo3, 0, 501.8 , 0 );
setEffMoveKey( spep_3 + 210, ctGogogo3, 0, 501.8 , 0 );
setEffMoveKey( spep_3 + 212, ctGogogo3, 0, 490.2 , 0 );
setEffMoveKey( spep_3 + 214, ctGogogo3, 0, 501.8 , 0 );
setEffMoveKey( spep_3 + 216, ctGogogo3, 0, 485.1 , 0 );
setEffMoveKey( spep_3 + 218, ctGogogo3, 0, 482.5 , 0 );

-- ctGogogo3
setEffScaleKey( spep_3 + 160, ctGogogo3, -0.6, 0.6 );
setEffScaleKey( spep_3 + 210, ctGogogo3, -0.6, 0.6 );
setEffScaleKey( spep_3 + 212, ctGogogo3, -0.94, 0.94 );
setEffScaleKey( spep_3 + 214, ctGogogo3, -1.09, 1.09 );
setEffScaleKey( spep_3 + 216, ctGogogo3, -1.2, 1.2 );
setEffScaleKey( spep_3 + 218, ctGogogo3, -1.4, 1.4 );

setEffRotateKey( spep_3 + 160, ctGogogo3, 0 );

setEffAlphaKey( spep_3 + 160, ctGogogo3, 255 );
setEffAlphaKey( spep_3 + 210, ctGogogo3, 255 );
setEffAlphaKey( spep_3 + 212, ctGogogo3, 191 );
setEffAlphaKey( spep_3 + 214, ctGogogo3, 128 );
setEffAlphaKey( spep_3 + 216, ctGogogo3, 64 );
setEffAlphaKey( spep_3 + 218, ctGogogo3, 0 );

playSe(spep_3+10,1034);
playSe(spep_3+25,1034);
playSe(spep_3+40,1034);
playSe(spep_3+55,1034);
playSe(spep_3+70,1034);
playSe(spep_3+85,1034);
playSe(spep_3+100,1034);
playSe(spep_3+115,1034);
playSe(spep_3+130,1034);

playSe(spep_3+151, SE_04);

--------------------
--カードカットイン(88F)
--------------------
spep_4=spep_3+238;

entryFade( spep_4,      0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_4+80,      8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--集中線
shuchusen4=entryEffectLife(spep_4,906,88,0x100,-1,0,0,0);
setEffAlphaKey(spep_4,shuchusen4,255);
setEffAlphaKey(spep_4+68,shuchusen4,255);

setEffScaleKey(spep_4,shuchusen4,1.2,1.2);
setEffScaleKey(spep_4+68,shuchusen4,1.2,1.2);

-- ** エフェクト等 ** --
playSe( spep_4, SE_05);

--------------------
--落とし込み
--------------------
spep_5=spep_4+88;

entryFade( spep_5,      0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_5+58,   8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);

Drop = entryEffectLife(spep_5,SP_13,68,0x100,-1,0,0,0);
setEffAlphaKey(spep_5, Drop, 255);
setEffScaleKey(spep_5, Drop,1.0,1.0);
setEffRotateKey(spep_5, Drop,0);

setEffShake(spep_5,Drop,68,10);

--集中線
shuchusen5=entryEffectLife(spep_5,906,68,0x100,-1,0,0,0);
setEffAlphaKey(spep_5,shuchusen5,255);
setEffAlphaKey(spep_5+68,shuchusen5,255);

setEffScaleKey(spep_5,shuchusen5,1.2,1.2);
setEffScaleKey(spep_5+68,shuchusen5,1.2,1.2);

playSe(spep_5,SE_14);
--------------------
--爆発
--------------------
spep_6=spep_5+68;

entryFade( spep_6, 0, 0, 18, fcolor_r, fcolor_g, fcolor_b, 255);
entryFade( spep_6+138, 20, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);

Exp = entryEffect(spep_6,SP_14,0x80,-1,0,0,0);
setEffAlphaKey(spep_6, Exp, 255);
setEffScaleKey(spep_6, Exp,1.0,1.0);
setEffRotateKey(spep_6, Exp,0);

--集中線
shuchusen6=entryEffectLife(spep_6,906,158,0x100,-1,0,0,0);
setEffAlphaKey(spep_6,shuchusen6,255);
setEffAlphaKey(spep_6+158,shuchusen6,255);

setEffScaleKey(spep_6,shuchusen6,1.2,1.2);
setEffScaleKey(spep_6+158,shuchusen6,1.2,1.2);

-- ダメージ表示
dealDamage( spep_6+64);
entryFade( spep_6+148, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+158);

playSe(spep_6+8,SE_10);

end
-- 1014910 sp0475 人造人間17号_グランドエクスプロード

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

SP_01 = 151948;
SP_02 = 151949;
SP_03 = 151950;
SP_04 = 151951;
SP_05 = 151952;
SP_06 = 151953;
SP_07 = 151954;

SP_08 = 151955; 
SP_09 = 151956;
SP_10 = 151957;
SP_11 = 151958;
SP_12 = 151959;
SP_13 = 151960;

SP_01r = 151961; --01r
SP_04r = 151962; --04r
SP_05r = 151963; --05r
SP_07r = 151964; --07r
SP_09r = 151965; --09r
SP_10r = 152005; --10r
SP_12r = 151966; --12r
SP_13r = 151967; --13r

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

setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵

setMoveKey(   0,   1,    0,  0,  0);
setMoveKey(   1,   1,    0,  0,  0);
setMoveKey(   2,   1,    0,  0,  0);
setMoveKey(   3,   1,    0,  0,  0);
setMoveKey(   4,   1,    0,  0,  0);
setMoveKey(   5,   1,    0,  0,  0);
setMoveKey(   6,   1,    0,  0,  0);

setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--------------------------------------------
--------------------------------------------
spep_1 = 0;

entryFade(spep_1+14,4,2,8,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_1+98,8,4,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_1,0,108,0,10,10,10, 255);

shuchu1=entryEffectLife(spep_1+20,906,38,0x80,-1,0,0,0);
setEffScaleKey(spep_1+20,shuchu1,1.3,1.3);

Beam1=entryEffectLife(spep_1,SP_01,108,0x100,-1,0,0,0);

setEffScaleKey(spep_1,Beam1,1.0,1.0);
setEffScaleKey(spep_1+108,Beam1,1.0,1.0);
setEffRotateKey(spep_1,Beam1,0);
setEffRotateKey(spep_1+108,Beam1,0);
setEffAlphaKey(spep_1,Beam1,255);
setEffAlphaKey(spep_1+108,Beam1,255);

setEffShake(spep_1,Beam1,13,10);
setEffShake(spep_1+14,Beam1,94,15);

ryusen1=entryEffectLife(spep_1+58,921,50,0x80,-1,0,0,0);
setEffRotateKey(spep_1+58,ryusen1,180);

playSe(spep_1+20,SE_01);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+56; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, -5000,  -5000, 0); --味方位置
setMoveKey( SP_dodge, 0, -5000, -5000, 0); --味方位置

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

--------------------------------------------
--回避されなかった場合
--------------------------------------------

playSe(spep_1+58,SE_06);
--------------------------------------------
--------------------------------------------
spep_2 = spep_1+108;

entryFade(spep_2,0,0,6,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_2+28,8,4,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_2,0,108,0,10,10,10, 255);

Beam2=entryEffectLife(spep_2,SP_02,38,0x100,-1,0,0,0);

setEffScaleKey(spep_2,Beam2,1.0,1.0);
setEffScaleKey(spep_2+38,Beam2,1.0,1.0);
setEffRotateKey(spep_2,Beam2,0);
setEffRotateKey(spep_2+38,Beam2,0);
setEffAlphaKey(spep_2,Beam2,255);
setEffAlphaKey(spep_2+38,Beam2,255);

setEffShake(spep_2,Beam2,38,15);

ground2=entryEffectLife(spep_2,SP_03,38,0x80,-1,0,0,0);

setEffScaleKey(spep_2,ground2,1.1,1.1);
setEffScaleKey(spep_2+38,ground2,1.1,1.1);
setEffRotateKey(spep_2,ground2,0);
setEffRotateKey(spep_2+38,ground2,0);
setEffAlphaKey(spep_2,ground2,255);
setEffAlphaKey(spep_2+38,ground2,255);

setEffShake(spep_2,ground2,38,10);

ryusen2=entryEffectLife(spep_2,921,38,0x80,-1,0,0,0);
setEffScaleKey( spep_2 + 0,ryusen2, 1.21, 1.2 );
setEffRotateKey( spep_2 + 0, ryusen2, -4 );

setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 + 38, 1, 0 );
changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 + 12, 1, 108 );
--書き出し位置からx方向+50
--[[
setMoveKey( spep_2 + 0, 1, -447.4, -57.6 , 0 );
setMoveKey( spep_2 + 2, 1, -341.6, -55.1 , 0 );
setMoveKey( spep_2 + 4, 1, -235.7, -52.8 , 0 );
setMoveKey( spep_2 + 6, 1, -129.8, -50.4 , 0 );
setMoveKey( spep_2 + 8, 1, -24, -48.1 , 0 );
]]--
setMoveKey( spep_2 + 0, 1,  13.2, -40.6 , 0 );
setMoveKey( spep_2 + 10, 1, 13.2, -40.6 , 0 );
setMoveKey( spep_2 + 12, 1, 52.8, -26.5 , 0 );
setMoveKey( spep_2 + 14, 1, 80.1, -32.3 , 0 );
setMoveKey( spep_2 + 16, 1, 116.4, -13.8 , 0 );
setMoveKey( spep_2 + 18, 1, 159.2, -15 , 0 );
setMoveKey( spep_2 + 20, 1, 197.6, 3.5 , 0 );
setMoveKey( spep_2 + 22, 1, 225, -2.3 , 0 );
setMoveKey( spep_2 + 24, 1, 238.7, 9.7 , 0 );
setMoveKey( spep_2 + 26, 1, 259, 1.7 , 0 );
setMoveKey( spep_2 + 28, 1, 274.8, 13.6 , 0 );
setMoveKey( spep_2 + 30, 1, 279.7, 1.3 , 0 );
setMoveKey( spep_2 + 32, 1, 293.4, 13.2 , 0 );
setMoveKey( spep_2 + 34, 1, 313.7, 5.2 , 0 );
setMoveKey( spep_2 + 36, 1, 329.5, 17.1 , 0 );
setMoveKey( spep_2 + 38, 1, 334.4, 4.8 , 0 );

--setScaleKey( spep_2 + 0, 1, 3.4, 3.58 );
--setScaleKey( spep_2 + 2, 1, 3, 2.98 );
--setScaleKey( spep_2 + 4, 1, 2.59, 2.71 );
--setScaleKey( spep_2 + 6, 1, 2.17, 2.14 );
--setScaleKey( spep_2 + 8, 1, 1.76, 1.85 );
--setScaleKey( spep_2 + 10, 1, 1.66, 1.62 );
setScaleKey( spep_2 + 0, 1, 1.76, 1.85 );
setScaleKey( spep_2 + 2, 1, 1.76, 1.85 );
setScaleKey( spep_2 + 4, 1, 1.76, 1.85 );
setScaleKey( spep_2 + 6, 1, 1.76, 1.85 );
setScaleKey( spep_2 + 8, 1, 1.76, 1.85 );
setScaleKey( spep_2 + 10, 1, 1.76, 1.85 );
setScaleKey( spep_2 + 12, 1, 1.57, 1.59 );
setScaleKey( spep_2 + 14, 1, 1.47, 1.35 );
setScaleKey( spep_2 + 16, 1, 1.41, 1.3 );
setScaleKey( spep_2 + 18, 1, 1.31, 1.11 );
setScaleKey( spep_2 + 20, 1, 1.21, 1.04 );
setScaleKey( spep_2 + 22, 1, 1.12, 0.86 );
setScaleKey( spep_2 + 24, 1, 1.09, 0.89 );
setScaleKey( spep_2 + 26, 1, 1.05, 0.81 );
setScaleKey( spep_2 + 28, 1, 0.99, 0.86 );
setScaleKey( spep_2 + 30, 1, 0.96, 0.79 );
setScaleKey( spep_2 + 32, 1, 0.93, 0.81 );
setScaleKey( spep_2 + 34, 1, 0.89, 0.74 );
setScaleKey( spep_2 + 36, 1, 0.83, 0.78 );
setScaleKey( spep_2 + 38, 1, 0.8, 0.71 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 13, 1, 0 );
setRotateKey( spep_2 + 14, 1, 9.3 ); --109.3
setRotateKey( spep_2 + 38, 1, 9.3 );

--playSe(spep_2,SE_07);
playSe(spep_2+14,SE_09);

--------------------------------------------
--------------------------------------------
spep_3 = spep_2+38;

entryFade(spep_3,0,0,6,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_3+68,8,4,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_3,0,78,0,10,10,10, 255);

Beam3=entryEffectLife(spep_3+2,SP_04,76,0x100,-1,0,0,0);

setEffScaleKey(spep_3+2,Beam3,1.0,1.0);
setEffScaleKey(spep_3+2+76,Beam3,1.0,1.0);
setEffRotateKey(spep_3+2,Beam3,0);
setEffRotateKey(spep_3+2+76,Beam3,0);
setEffAlphaKey(spep_3+2,Beam3,255);
setEffAlphaKey(spep_3+2+76,Beam3,255);

setEffShake(spep_3+2,Beam3,47,10);
setEffShake(spep_3+50,Beam3,28,15);

ryusen3=entryEffectLife(spep_3,921,78,0x80,-1,0, -74.2, 86 );
setEffScaleKey( spep_3 + 0, ryusen3, 1.39, 1.35 );
setEffRotateKey(spep_3,ryusen3,-9.8);

setDisp( spep_3 + 78, 1,0);

setMoveKey( spep_3 + 0, 1, 49.9, -77.2 , 0 );
setMoveKey( spep_3 + 2, 1, 72.6, -68.3 , 0 );
setMoveKey( spep_3 + 4, 1, 103.7, -49.4 , 0 );
setMoveKey( spep_3 + 6, 1, 137, -38.3 , 0 );
setMoveKey( spep_3 + 8, 1, 167.2, -19.7 , 0 );
setMoveKey( spep_3 + 10, 1, 193, -8.3 , 0 );
setMoveKey( spep_3 + 12, 1, 223.5, 8.6 , 0 );
setMoveKey( spep_3 + 14, 1, 226, 7.2 , 0 );
setMoveKey( spep_3 + 16, 1, 227.2, 10 , 0 );
setMoveKey( spep_3 + 18, 1, 225, 8.1 , 0 );
setMoveKey( spep_3 + 20, 1, 226.1, 10.4 , 0 );
setMoveKey( spep_3 + 22, 1, 228.6, 9 , 0 );
setMoveKey( spep_3 + 24, 1, 229.7, 11.8 , 0 );
setMoveKey( spep_3 + 26, 1, 227.6, 9.9 , 0 );
setMoveKey( spep_3 + 28, 1, 228.7, 12.2 , 0 );
setMoveKey( spep_3 + 30, 1, 231.2, 10.8 , 0 );
setMoveKey( spep_3 + 32, 1, 232.3, 13.5 , 0 );
setMoveKey( spep_3 + 34, 1, 230.2, 11.7 , 0 );
setMoveKey( spep_3 + 36, 1, 231.3, 14 , 0 );
setMoveKey( spep_3 + 38, 1, 233.7, 12.6 , 0 );
setMoveKey( spep_3 + 40, 1, 234.8, 15.3 , 0 );
setMoveKey( spep_3 + 42, 1, 232.8, 13.5 , 0 );
setMoveKey( spep_3 + 44, 1, 233.9, 15.8 , 0 );
setMoveKey( spep_3 + 46, 1, 236.3, 14.4 , 0 );
setMoveKey( spep_3 + 48, 1, 237.3, 17.1 , 0 );
setMoveKey( spep_3 + 50, 1, 235.4, 15.3 , 0 );
setMoveKey( spep_3 + 52, 1, 236.4, 17.6 , 0 );
setMoveKey( spep_3 + 54, 1, 238.9, 16.2 , 0 );
setMoveKey( spep_3 + 56, 1, 239.9, 18.9 , 0 );
setMoveKey( spep_3 + 58, 1, 238, 17.2 , 0 );
setMoveKey( spep_3 + 60, 1, 239.1, 19.4 , 0 );
setMoveKey( spep_3 + 62, 1, 241.3, 18.1 , 0 );
setMoveKey( spep_3 + 64, 1, 242.5, 20.7 , 0 );
setMoveKey( spep_3 + 66, 1, 240.5, 19.1 , 0 );
setMoveKey( spep_3 + 68, 1, 241.7, 21.1 , 0 );
setMoveKey( spep_3 + 70, 1, 243.9, 20 , 0 );
setMoveKey( spep_3 + 72, 1, 245, 22.5 , 0 );
setMoveKey( spep_3 + 74, 1, 243.2, 20.9 , 0 );
setMoveKey( spep_3 + 76, 1, 244.2, 22.9 , 0 );
setMoveKey( spep_3 + 78, 1, 246.5, 21.8 , 0 );

setScaleKey( spep_3 + 0, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 2, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 4, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 6, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 8, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 10, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 12, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 14, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 20, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 22, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 30, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 32, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 38, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 40, 1, 0.49, 0.49 );
setScaleKey( spep_3 + 48, 1, 0.49, 0.49 );
setScaleKey( spep_3 + 50, 1, 0.48, 0.48 );
setScaleKey( spep_3 + 56, 1, 0.48, 0.48 );
setScaleKey( spep_3 + 58, 1, 0.47, 0.47 );
setScaleKey( spep_3 + 66, 1, 0.47, 0.47 );
setScaleKey( spep_3 + 68, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 74, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 76, 1, 0.45, 0.45 );

setRotateKey( spep_3 + 0, 1, 9.3 );
setRotateKey( spep_3 + 76, 1, 9.3 );

ctZuo = entryEffectLife( spep_3 + 50,  10012, 28, 0x100, -1, 0, -205.3, 279.4 );
setEffMoveKey( spep_3 + 50, ctZuo, -205.3, 279.4 , 0 );
setEffMoveKey( spep_3 + 52, ctZuo, -176.3, 320.4 , 0 );
setEffMoveKey( spep_3 + 54, ctZuo, -165.3, 379.4 , 0 );
setEffMoveKey( spep_3 + 56, ctZuo, -149.3, 363.4 , 0 );
setEffMoveKey( spep_3 + 58, ctZuo, -165.3, 379.4 , 0 );
setEffMoveKey( spep_3 + 60, ctZuo, -149.3, 363.4 , 0 );
setEffMoveKey( spep_3 + 62, ctZuo, -165.3, 379.4 , 0 );
setEffMoveKey( spep_3 + 64, ctZuo, -149.3, 363.4 , 0 );
setEffMoveKey( spep_3 + 66, ctZuo, -165.3, 379.4 , 0 );
setEffMoveKey( spep_3 + 68, ctZuo, -127.9, 355.4 , 0 );
setEffMoveKey( spep_3 + 70, ctZuo, -138.6, 379.4 , 0 );
setEffMoveKey( spep_3 + 72, ctZuo, -125.3, 379.4 , 0 );

setEffScaleKey( spep_3 + 50, ctZuo, 0.1, 0.1 );
setEffScaleKey( spep_3 + 52, ctZuo, 1.35, 1.35 );
setEffScaleKey( spep_3 + 54, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_3 + 66, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_3 + 68, ctZuo, 3.6, 3.6 );
setEffScaleKey( spep_3 + 70, ctZuo, 4.8, 4.8 );
setEffScaleKey( spep_3 + 72, ctZuo, 6, 6 );

setEffRotateKey( spep_3 + 50, ctZuo, 30 );

setEffAlphaKey( spep_3 + 50, ctZuo, 255 );
setEffAlphaKey( spep_3 + 66, ctZuo, 255 );
setEffAlphaKey( spep_3 + 68, ctZuo, 170 );
setEffAlphaKey( spep_3 + 70, ctZuo, 85 );
setEffAlphaKey( spep_3 + 72, ctZuo, 0 );

playSe(spep_3,SE_01);
playSe(spep_3+50,SE_07)

--------------------------------------------
--------------------------------------------
spep_4= spep_3+78;

entryFade(spep_4,0,0,6,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_4+98,8,4,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_4,0,78,0,10,10,10, 255);

-- カットイン
speff = entryEffect(  spep_4+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--ゴゴゴ--
-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4+30, 190006, 70, 0x100, -1, 0, 0, 530);    -- ゴゴゴゴ

setEffScaleKey(spep_4+30,  ctgogo,  0.7,  0.7);
setEffMoveKey(spep_4+30,  ctgogo,  0,  530);
setEffRotateKey(spep_4+30,  ctgogo,  0);
setEffScaleKey(  spep_4+100,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_4+100,  ctgogo,  0,  530);
setEffRotateKey(  spep_4+100,  ctgogo,  0);

Ground4=entryEffectLife(spep_4,SP_06,108,0x80,-1,0,0,0);

setEffScaleKey(spep_4,Ground4,1.0,1.0);
setEffScaleKey(spep_4+108,Ground4,1.0,1.0);
setEffRotateKey(spep_4,Ground4,0);
setEffRotateKey(spep_4+108,Ground4,0);
setEffAlphaKey(spep_4,Ground4,255);
setEffAlphaKey(spep_4+108,Ground4,255);

setEffShake(spep_4,Ground4,108,15);

ryusen4=entryEffectLife(spep_4,920,108,0x80,-1,0,0,750);
setEffRotateKey(spep_4,ryusen4,0);

Beam4=entryEffectLife(spep_4,SP_05,108,0x80,-1,0,0,0);

setEffScaleKey(spep_4,Beam4,1.0,1.0);
setEffScaleKey(spep_4+108,Beam4,1.0,1.0);
setEffRotateKey(spep_4,Beam4,0);
setEffRotateKey(spep_4+108,Beam4,0);
setEffAlphaKey(spep_4,Beam4,255);
setEffAlphaKey(spep_4+108,Beam4,255);

setEffShake(spep_4,Beam4,108,15);

playSe(spep_4+30,  SE_04);  --カットイン音

--------------------------------------------
--------------------------------------------
spep_5= spep_4+110;

entryFade(spep_5+62,8,6,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_5,0,78,0,10,10,10, 255);

shuchu5=entryEffectLife(spep_5+28,906,44,0x80,-1,0,0,0);

Beam5=entryEffectLife(spep_5,SP_07,72,0x100,-1,0,0,0);

setEffScaleKey(spep_5,Beam5,1.0,1.0);
setEffScaleKey(spep_5+72,Beam5,1.0,1.0);
setEffRotateKey(spep_5,Beam5,0);
setEffRotateKey(spep_5+72,Beam5,0);
setEffAlphaKey(spep_5,Beam5,255);
setEffAlphaKey(spep_5+72,Beam5,255);

setEffShake(spep_5,Beam5,72,10);

Ground5=entryEffectLife(spep_5,SP_08,72,0x80,-1,0,351.6, -433.8 );

setEffScaleKey(spep_5,Ground5,1.0,1.0);
setEffScaleKey(spep_5+72,Ground5,1.0,1.0);
setEffRotateKey(spep_5,Ground5,0);
setEffRotateKey(spep_5+72,Ground5,0);
setEffAlphaKey(spep_5,Ground5,255);
setEffAlphaKey(spep_5+72,Ground5,255);

setEffShake(spep_5,Ground5,72,15);

ctDogown = entryEffectLife( spep_5 + 28,  10018, 28, 0x100, -1, 0, 12.4, 319.9 );
setEffMoveKey( spep_5 + 28, ctDogown, 12.4, 319.9 , 0 );
setEffMoveKey( spep_5 + 30, ctDogown, 17, 339.9 , 0 );
setEffMoveKey( spep_5 + 32, ctDogown, 21.7, 359.9 , 0 );
setEffMoveKey( spep_5 + 34, ctDogown, 26.4, 379.8 , 0 );
setEffMoveKey( spep_5 + 48, ctDogown, 26.4, 379.8 , 0 );
setEffMoveKey( spep_5 + 50, ctDogown, 28.4, 388.3 , 0 );
setEffMoveKey( spep_5 + 52, ctDogown, 30.4, 396.8 , 0 );
setEffMoveKey( spep_5 + 54, ctDogown, 32.4, 405.3 , 0 );
setEffMoveKey( spep_5 + 56, ctDogown, 34.4, 413.8 , 0 );

setEffScaleKey( spep_5 + 28, ctDogown, 1, 1 );
setEffScaleKey( spep_5 + 30, ctDogown, 1.54, 1.54 );
setEffScaleKey( spep_5 + 32, ctDogown, 1.79, 1.79 );
setEffScaleKey( spep_5 + 34, ctDogown, 2.41, 2.41 );
setEffScaleKey( spep_5 + 36, ctDogown, 2.19, 2.19 );
setEffScaleKey( spep_5 + 38, ctDogown, 2.41, 2.41 );
setEffScaleKey( spep_5 + 40, ctDogown, 2.19, 2.19 );
setEffScaleKey( spep_5 + 42, ctDogown, 2.41, 2.41 );
setEffScaleKey( spep_5 + 44, ctDogown, 2.19, 2.19 );
setEffScaleKey( spep_5 + 46, ctDogown, 2.41, 2.41 );
setEffScaleKey( spep_5 + 48, ctDogown, 2.19, 2.19 );
setEffScaleKey( spep_5 + 50, ctDogown, 2.59, 2.59 );
setEffScaleKey( spep_5 + 52, ctDogown, 2.5, 2.5 );
setEffScaleKey( spep_5 + 54, ctDogown, 2.93, 2.93 );
setEffScaleKey( spep_5 + 56, ctDogown, 3.1, 3.1 );

setEffRotateKey( spep_5 + 28, ctDogown, 0 );

setEffAlphaKey( spep_5 + 28, ctDogown, 255 );
setEffAlphaKey( spep_5 + 48, ctDogown, 255 );
setEffAlphaKey( spep_5 + 50, ctDogown, 191 );
setEffAlphaKey( spep_5 + 52, ctDogown, 128 );
setEffAlphaKey( spep_5 + 54, ctDogown, 64 );
setEffAlphaKey( spep_5 + 56, ctDogown, 0 );

setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 +23, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, 38.4, -5.6 , 0 );
setMoveKey( spep_5 + 2, 1, 34.5, -9.5 , 0 );
setMoveKey( spep_5 + 4, 1, 37.1, -5 , 0 );
setMoveKey( spep_5 + 6, 1, 42.7, -8 , 0 );
setMoveKey( spep_5 + 8, 1, 45.3, -2.5 , 0 );
setMoveKey( spep_5 + 10, 1, 41.5, -6.5 , 0 );
setMoveKey( spep_5 + 12, 1, 44.1, -1.9 , 0 );
setMoveKey( spep_5 + 14, 1, 49.6, -4.9 , 0 );
setMoveKey( spep_5 + 16, 1, 52.3, 0.5 , 0 );
setMoveKey( spep_5 + 18, 1, 48.4, -3.4 , 0 );
setMoveKey( spep_5 + 20, 1, 51.1, 1.2 , 0 );
setMoveKey( spep_5 + 22, 1, 56.6, -1.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.05, 1.05 );

setRotateKey( spep_5 + 0, 1, 9.3 );
setRotateKey( spep_5 + 77, 1, 9.3 );

playSe(spep_5+28,SE_09);
--------------------------------------------
--------------------------------------------
spep_6= spep_5+78;

entryFade(spep_6,0,0,12,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_6+76,8,4,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_6,0,88,0,10,10,10, 255);

shuchu6=entryEffectLife(spep_6,906,26,0x80,-1,0,0,0);

Beam6=entryEffectLife(spep_6+2,SP_09,86,0x100,-1,0,-10,-50);

setEffScaleKey(spep_6+2,Beam6,1.0,1.0);
setEffScaleKey(spep_6+88,Beam6,1.0,1.0);
setEffRotateKey(spep_6+2,Beam6,0);
setEffRotateKey(spep_6+88,Beam6,0);
setEffAlphaKey(spep_6+2,Beam6,255);
setEffAlphaKey(spep_6+88,Beam6,255);

setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 88, 1, 0 );
changeAnime( spep_6 + 0, 1, 108 );

setMoveKey( spep_6 + 0, 1, -46.3, 3.6 , 0 );
setMoveKey( spep_6 + 2, 1, -73.3, 7.2 , 0 );
setMoveKey( spep_6 + 4, 1, -93.1, -1.2 , 0 );
setMoveKey( spep_6 + 6, 1, -116.5, 7.2 , 0 );
setMoveKey( spep_6 + 8, 1, -147.2, 0 , 0 );
setMoveKey( spep_6 + 10, 1, -164.6, 3.6 , 0 );
setMoveKey( spep_6 + 12, 1, -196.4, 7.2 , 0 );
setMoveKey( spep_6 + 14, 1, -216.2, -1.2 , 0 );
setMoveKey( spep_6 + 16, 1, -239.6, 7.2 , 0 );
setMoveKey( spep_6 + 18, 1, -270.2, 0 , 0 );
setMoveKey( spep_6 + 20, 1, -287.7, 3.6 , 0 );
setMoveKey( spep_6 + 22, 1, -319.5, 7.2 , 0 );
setMoveKey( spep_6 + 24, 1, -339.3, -1.2 , 0 );
setMoveKey( spep_6 + 26, 1, -362.7, 7.2 , 0 );
setMoveKey( spep_6 + 28, 1, -283.1, 0 , 0 );
setMoveKey( spep_6 + 30, 1, -190.2, 3.6 , 0 );
setMoveKey( spep_6 + 32, 1, -111.8, 7.2 , 0 );
setMoveKey( spep_6 + 34, 1, -21.4, -1.2 , 0 );
setMoveKey( spep_6 + 36, 1, 65.5, 7.2 , 0 );
setMoveKey( spep_6 + 38, 1, 145.1, 0 , 0 );
setMoveKey( spep_6 + 40, 1, 138.3, 3.6 , 0 );
setMoveKey( spep_6 + 42, 1, 117.1, 7.2 , 0 );
setMoveKey( spep_6 + 44, 1, 107.9, -1.2 , 0 );
setMoveKey( spep_6 + 46, 1, 95.1, 7.2 , 0 );
setMoveKey( spep_6 + 48, 1, 75.1, 0 , 0 );
setMoveKey( spep_6 + 50, 1, 68.3, 3.6 , 0 );
setMoveKey( spep_6 + 52, 1, 47.1, 7.2 , 0 );
setMoveKey( spep_6 + 54, 1, 37.9, -1.2 , 0 );
setMoveKey( spep_6 + 56, 1, 25.1, 7.2 , 0 );
setMoveKey( spep_6 + 58, 1, 5.1, 0 , 0 );
setMoveKey( spep_6 + 60, 1, 7, 7.2 , 0 );
setMoveKey( spep_6 + 62, 1, 13.6, -1.2 , 0 );
setMoveKey( spep_6 + 64, 1, 16.7, 7.2 , 0 );
setMoveKey( spep_6 + 66, 1, 12.5, 0 , 0 );
setMoveKey( spep_6 + 68, 1, 21.6, 3.6 , 0 );
setMoveKey( spep_6 + 70, 1, 21.1, -1.2 , 0 );
setMoveKey( spep_6 + 72, 1, 24.1, 7.2 , 0 );
setMoveKey( spep_6 + 74, 1, 20, 0 , 0 );
setMoveKey( spep_6 + 76, 1, 29, 3.6 , 0 );
setMoveKey( spep_6 + 78, 1, 28.5, -1.2 , 0 );
setMoveKey( spep_6 + 80, 1, 31.6, 7.2 , 0 );
setMoveKey( spep_6 + 82, 1, 32.2, -1.2 , 0 );
setMoveKey( spep_6 + 84, 1, 35.3, 7.2 , 0 );
setMoveKey( spep_6 + 86, 1, 31.1, 0 , 0 );
setMoveKey( spep_6 + 88, 1, 40.2, 3.6 , 0 );

setScaleKey( spep_6 + 0, 1, 1.2, 1.2 );

setRotateKey( spep_6 + 0, 1, -17.5 );
setRotateKey( spep_6 + 2, 1, -17.6 );
setRotateKey( spep_6 +88, 1, -17.6 );

ctga = entryEffectLife( spep_6 + 32,  10005, 28, 0x100, -1, 0, 24.5, 188.5 );
setEffMoveKey( spep_6 + 32, ctga, 24.5, 188.5 , 0 );
setEffMoveKey( spep_6 + 34, ctga, 22, 213.5 , 0 );
setEffMoveKey( spep_6 + 36, ctga, 33.6, 243.8 , 0 );
setEffMoveKey( spep_6 + 38, ctga, 23.1, 265.5 , 0 );
setEffMoveKey( spep_6 + 40, ctga, 38.2, 271.3 , 0 );
setEffMoveKey( spep_6 + 42, ctga, 23.1, 265.5 , 0 );
setEffMoveKey( spep_6 + 44, ctga, 38.2, 271.3 , 0 );
setEffMoveKey( spep_6 + 46, ctga, 23.1, 265.5 , 0 );
setEffMoveKey( spep_6 + 48, ctga, 38.2, 271.3 , 0 );
setEffMoveKey( spep_6 + 50, ctga, 23.1, 265.5 , 0 );
setEffMoveKey( spep_6 + 52, ctga, 38.2, 271.3 , 0 );
setEffMoveKey( spep_6 + 54, ctgg, 23.1, 265.5 , 0 );
setEffMoveKey( spep_6 + 56, ctga, 38.2, 271.3 , 0 );
setEffMoveKey( spep_6 + 58, ctga, 23.1, 265.5 , 0 );
setEffMoveKey( spep_6 + 60, ctga, 38.2, 271.3 , 0 );
setEffScaleKey( spep_6 + 32, ctga, 0.22, 0.22 );
setEffScaleKey( spep_6 + 34, ctga, 0.53, 0.53 );
setEffScaleKey( spep_6 + 36, ctga, 0.83, 0.83 );
setEffScaleKey( spep_6 + 38, ctga, 1.43, 1.43 ); --1.13
setEffRotateKey( spep_6 + 32, ctga, -41.7 ); --46.7
setEffAlphaKey( spep_6 + 32, ctga, 255 );

--グランドと流線
Ground6=entryEffectLife(spep_6,SP_06,88,0x80,-1,0,0,0);

setEffMoveKey( spep_6 + 0, Ground6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 88, Ground6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, Ground6, 1.1, 1.1 );

setEffAlphaKey( spep_6 + 0, Ground6, 255 );

setEffShake(spep_6,Ground6,88,15);

ryusen6=entryEffectLife(spep_6,920,88,0x80,-1,0,0,750);
setEffRotateKey(spep_6 + 0, ryusen6,0);
setEffScaleKey( spep_6 + 0, ryusen6, 1, 1);
setEffAlphaKey( spep_6 + 0, ryusen6,255);

playSe(spep_6+32,SE_01);

--------------------------------------------
--------------------------------------------
spep_7 = spep_6+88;

entryFade(spep_7,0,0,8,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_7, SE_05);
speff = entryEffect(  spep_7,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen7 = entryEffectLife( spep_7, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_7,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7,  shuchusen7,  1.0,  1.0);
setEffRotateKey(  spep_7,  shuchusen7,  0);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffMoveKey(  spep_7+90,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7+90,  shuchusen7,  1.4,  1.4);
setEffRotateKey(  spep_7+90,  shuchusen7,  0);
setEffAlphaKey(  spep_7+90,  shuchusen7,  255);

entryFade( spep_7+73, 15, 9, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------------
--------------------------------------------
spep_8 = spep_7+90;

entryFade(spep_8+98,10,2,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_8,0,108,0,10,10,10, 255);

Beam8=entryEffectLife(spep_8,SP_10,108,0x100,-1,0,0,0);

setEffScaleKey(spep_8,Beam8,1.0,1.0);
setEffScaleKey(spep_8+108,Beam8,1.0,1.0);
setEffRotateKey(spep_8,Beam8,0);
setEffRotateKey(spep_8+108,Beam8,0);
setEffAlphaKey(spep_8,Beam8,255);
setEffAlphaKey(spep_8+108,Beam8,255);

--setEffShake(spep_8,Beam8,108,5);

setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 108, 1, 0 );
changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, -40.7, -62.1 , 0 );
setMoveKey( spep_8 + 2, 1, -43, -58.4 , 0 );
setMoveKey( spep_8 + 4, 1, -35.7, -54.6 , 0 );
setMoveKey( spep_8 + 6, 1, -37.4, -50.8 , 0 );
setMoveKey( spep_8 + 8, 1, -30.8, -47.1 , 0 );
setMoveKey( spep_8 + 10, 1, -31.8, -43.3 , 0 );
setMoveKey( spep_8 + 12, 1, -25.8, -39.5 , 0 );
setMoveKey( spep_8 + 14, 1, -26.3, -35.7 , 0 );
setMoveKey( spep_8 + 16, 1, -20.8, -31.9 , 0 );
setMoveKey( spep_8 + 18, 1, -20.7, -28.2 , 0 );
setMoveKey( spep_8 + 20, 1, -18.3, -28.1 , 0 );
setMoveKey( spep_8 + 22, 1, -20.5, -28 , 0 );
setMoveKey( spep_8 + 24, 1, -18.2, -27.9 , 0 );
setMoveKey( spep_8 + 26, 1, -20.4, -27.7 , 0 );
setMoveKey( spep_8 + 28, 1, -18, -27.6 , 0 );
setMoveKey( spep_8 + 30, 1, -20.3, -27.5 , 0 );
setMoveKey( spep_8 + 32, 1, -17.9, -27.4 , 0 );
setMoveKey( spep_8 + 34, 1, -20.1, -27.3 , 0 );
setMoveKey( spep_8 + 36, 1, -17.7, -27.2 , 0 );
setMoveKey( spep_8 + 38, 1, -20, -27.1 , 0 );
setMoveKey( spep_8 + 40, 1, -17.6, -27 , 0 );
setMoveKey( spep_8 + 42, 1, -19.7, -26.9 , 0 );
setMoveKey( spep_8 + 44, 1, -17.6, -26.8 , 0 );
setMoveKey( spep_8 + 46, 1, -19.6, -26.7 , 0 );
setMoveKey( spep_8 + 48, 1, -17.4, -26.6 , 0 );
setMoveKey( spep_8 + 50, 1, -19.4, -26.5 , 0 );
setMoveKey( spep_8 + 52, 1, -17.3, -26.4 , 0 );
setMoveKey( spep_8 + 54, 1, -19.3, -26.3 , 0 );
setMoveKey( spep_8 + 56, 1, -17.1, -26.2 , 0 );
setMoveKey( spep_8 + 58, 1, -19.1, -26.1 , 0 );
setMoveKey( spep_8 + 60, 1, -17, -26 , 0 );
setMoveKey( spep_8 + 62, 1, -19, -25.9 , 0 );
setMoveKey( spep_8 + 64, 1, -16.8, -25.8 , 0 );
setMoveKey( spep_8 + 66, 1, -18.9, -25.7 , 0 );
setMoveKey( spep_8 + 68, 1, -16.7, -25.6 , 0 );
setMoveKey( spep_8 + 70, 1, -18.7, -25.5 , 0 );
setMoveKey( spep_8 + 72, 1, -16.5, -25.4 , 0 );
setMoveKey( spep_8 + 74, 1, -18.6, -25.2 , 0 );

setScaleKey( spep_8 + 0, 1, 1.83, 1.83 );
setScaleKey( spep_8 + 2, 1, 1.72, 1.72 );
setScaleKey( spep_8 + 4, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 6, 1, 1.49, 1.49 );
setScaleKey( spep_8 + 8, 1, 1.38, 1.38 );
setScaleKey( spep_8 + 10, 1, 1.27, 1.27 );
setScaleKey( spep_8 + 12, 1, 1.16, 1.16 );
setScaleKey( spep_8 + 14, 1, 1.05, 1.05 );
setScaleKey( spep_8 + 16, 1, 0.94, 0.94 );
setScaleKey( spep_8 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_8 + 22, 1, 0.83, 0.83 );
setScaleKey( spep_8 + 24, 1, 0.81, 0.81 );
setScaleKey( spep_8 + 30, 1, 0.81, 0.81 );
setScaleKey( spep_8 + 32, 1, 0.8, 0.8 );
setScaleKey( spep_8 + 40, 1, 0.8, 0.8 );
setScaleKey( spep_8 + 42, 1, 0.79, 0.79 );
setScaleKey( spep_8 + 48, 1, 0.79, 0.79 );
setScaleKey( spep_8 + 50, 1, 0.77, 0.77 );
setScaleKey( spep_8 + 58, 1, 0.77, 0.77 );
setScaleKey( spep_8 + 60, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 66, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 68, 1, 0.74, 0.74 );

setRotateKey( spep_8 + 0, 1, -53.7 );
setRotateKey( spep_8 + 68, 1, -53.7 );

shuchusen8 = entryEffectLife( spep_8, 906, 108, 0x100,  -1, 0,  0,  0);
setEffScaleKey( spep_8,shuchusen8,1.3,1.3);

GR8 = entryEffectLife( spep_8 + 0,  SP_11, 72, 0x80, -1, 0, 0, 0 );
setEffShake( spep_8,GR8,72,10);

playSe(spep_8,SE_02);

--------------------------------------------
--------------------------------------------
spep_9 = spep_8+108;

entryFade(spep_9,0,0,6,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_9+74,12,2,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_9,0,88,0,10,10,10, 255);

shuchusen9 = entryEffectLife( spep_9+20, 906, 68, 0x100,  -1, 0,  0,  0);
setEffScaleKey( spep_9+20,shuchusen9,1.3,1.3);

Beam9=entryEffectLife(spep_9,SP_12,88,0x80,-1,0,0,0);

setEffScaleKey(spep_9,Beam9,1.0,1.0);
setEffScaleKey(spep_9+88,Beam9,1.0,1.0);
setEffRotateKey(spep_9,Beam9,0);
setEffRotateKey(spep_9+88,Beam9,0);
setEffAlphaKey(spep_9,Beam9,255);
setEffAlphaKey(spep_9+88,Beam9,255);

setEffShake(spep_9,Beam9,88,5);

playSe(spep_9,SE_11);
playSe(spep_9+26,SE_10);

--------------------------------------------
--------------------------------------------
spep_10=spep_9+88;

entryFade(spep_10,0,0,28,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_10+148,20,2,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_10,0,88,0,10,10,10, 255);

Beam9=entryEffect(spep_10,SP_13,0x80,-1,0,0,0);
setEffScaleKey(spep_10,Beam9,1.1,1.1);

setEffShake(spep_10,Beam9,170,5);

dealDamage(spep_10+96);
endPhase(spep_10+170);

else
--------------------------------------------
--------------------------------------------
spep_1 = 0;

entryFade(spep_1+14,4,2,8,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_1+98,8,4,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_1,0,108,0,10,10,10, 255);

shuchu1=entryEffectLife(spep_1+20,906,38,0x80,-1,0,0,0);
setEffScaleKey(spep_1+20,shuchu1,1.3,1.3);

Beam1=entryEffectLife(spep_1,SP_01r,108,0x100,-1,0,0,0);

setEffScaleKey(spep_1,Beam1,1.0,1.0);
setEffScaleKey(spep_1+108,Beam1,1.0,1.0);
setEffRotateKey(spep_1,Beam1,0);
setEffRotateKey(spep_1+108,Beam1,0);
setEffAlphaKey(spep_1,Beam1,255);
setEffAlphaKey(spep_1+108,Beam1,255);

setEffShake(spep_1,Beam1,13,10);
setEffShake(spep_1+14,Beam1,94,15);

ryusen1=entryEffectLife(spep_1+58,921,50,0x80,-1,0,0,0);
setEffRotateKey(spep_1+58,ryusen1,180);

playSe(spep_1+20,SE_01);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+56; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, -5000,  -5000, 0); --味方位置
setMoveKey( SP_dodge, 0, -5000, -5000, 0); --味方位置

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

--------------------------------------------
--回避されなかった場合
--------------------------------------------

playSe(spep_1+58,SE_06);
--------------------------------------------
--------------------------------------------
spep_2 = spep_1+108;

entryFade(spep_2,0,0,6,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_2+28,8,4,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_2,0,108,0,10,10,10, 255);

Beam2=entryEffectLife(spep_2,SP_02,38,0x100,-1,0,0,0);

setEffScaleKey(spep_2,Beam2,1.0,1.0);
setEffScaleKey(spep_2+38,Beam2,1.0,1.0);
setEffRotateKey(spep_2,Beam2,0);
setEffRotateKey(spep_2+38,Beam2,0);
setEffAlphaKey(spep_2,Beam2,255);
setEffAlphaKey(spep_2+38,Beam2,255);

setEffShake(spep_2,Beam2,38,15);

ground2=entryEffectLife(spep_2,SP_03,38,0x80,-1,0,0,0);

setEffScaleKey(spep_2,ground2,1.1,1.1);
setEffScaleKey(spep_2+38,ground2,1.1,1.1);
setEffRotateKey(spep_2,ground2,0);
setEffRotateKey(spep_2+38,ground2,0);
setEffAlphaKey(spep_2,ground2,255);
setEffAlphaKey(spep_2+38,ground2,255);

setEffShake(spep_2,ground2,38,10);

ryusen2=entryEffectLife(spep_2,921,38,0x80,-1,0,0,0);
setEffScaleKey( spep_2 + 0,ryusen2, 1.21, 1.2 );
setEffRotateKey( spep_2 + 0, ryusen2, -4 );

setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 + 38, 1, 0 );
changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 + 12, 1, 108 );
--書き出し位置からx方向+50
--[[
setMoveKey( spep_2 + 0, 1, -447.4, -57.6 , 0 );
setMoveKey( spep_2 + 2, 1, -341.6, -55.1 , 0 );
setMoveKey( spep_2 + 4, 1, -235.7, -52.8 , 0 );
setMoveKey( spep_2 + 6, 1, -129.8, -50.4 , 0 );
setMoveKey( spep_2 + 8, 1, -24, -48.1 , 0 );
]]--
setMoveKey( spep_2 + 0, 1,  13.2, -40.6 , 0 );
setMoveKey( spep_2 + 10, 1, 13.2, -40.6 , 0 );
setMoveKey( spep_2 + 12, 1, 52.8, -26.5 , 0 );
setMoveKey( spep_2 + 14, 1, 80.1, -32.3 , 0 );
setMoveKey( spep_2 + 16, 1, 116.4, -13.8 , 0 );
setMoveKey( spep_2 + 18, 1, 159.2, -15 , 0 );
setMoveKey( spep_2 + 20, 1, 197.6, 3.5 , 0 );
setMoveKey( spep_2 + 22, 1, 225, -2.3 , 0 );
setMoveKey( spep_2 + 24, 1, 238.7, 9.7 , 0 );
setMoveKey( spep_2 + 26, 1, 259, 1.7 , 0 );
setMoveKey( spep_2 + 28, 1, 274.8, 13.6 , 0 );
setMoveKey( spep_2 + 30, 1, 279.7, 1.3 , 0 );
setMoveKey( spep_2 + 32, 1, 293.4, 13.2 , 0 );
setMoveKey( spep_2 + 34, 1, 313.7, 5.2 , 0 );
setMoveKey( spep_2 + 36, 1, 329.5, 17.1 , 0 );
setMoveKey( spep_2 + 38, 1, 334.4, 4.8 , 0 );

--setScaleKey( spep_2 + 0, 1, 3.4, 3.58 );
--setScaleKey( spep_2 + 2, 1, 3, 2.98 );
--setScaleKey( spep_2 + 4, 1, 2.59, 2.71 );
--setScaleKey( spep_2 + 6, 1, 2.17, 2.14 );
--setScaleKey( spep_2 + 8, 1, 1.76, 1.85 );
--setScaleKey( spep_2 + 10, 1, 1.66, 1.62 );
setScaleKey( spep_2 + 0, 1, 1.76, 1.85 );
setScaleKey( spep_2 + 2, 1, 1.76, 1.85 );
setScaleKey( spep_2 + 4, 1, 1.76, 1.85 );
setScaleKey( spep_2 + 6, 1, 1.76, 1.85 );
setScaleKey( spep_2 + 8, 1, 1.76, 1.85 );
setScaleKey( spep_2 + 10, 1, 1.76, 1.85 );
setScaleKey( spep_2 + 12, 1, 1.57, 1.59 );
setScaleKey( spep_2 + 14, 1, 1.47, 1.35 );
setScaleKey( spep_2 + 16, 1, 1.41, 1.3 );
setScaleKey( spep_2 + 18, 1, 1.31, 1.11 );
setScaleKey( spep_2 + 20, 1, 1.21, 1.04 );
setScaleKey( spep_2 + 22, 1, 1.12, 0.86 );
setScaleKey( spep_2 + 24, 1, 1.09, 0.89 );
setScaleKey( spep_2 + 26, 1, 1.05, 0.81 );
setScaleKey( spep_2 + 28, 1, 0.99, 0.86 );
setScaleKey( spep_2 + 30, 1, 0.96, 0.79 );
setScaleKey( spep_2 + 32, 1, 0.93, 0.81 );
setScaleKey( spep_2 + 34, 1, 0.89, 0.74 );
setScaleKey( spep_2 + 36, 1, 0.83, 0.78 );
setScaleKey( spep_2 + 38, 1, 0.8, 0.71 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 13, 1, 0 );
setRotateKey( spep_2 + 14, 1, 9.3 ); --109.3
setRotateKey( spep_2 + 38, 1, 9.3 );

--playSe(spep_2,SE_07);
playSe(spep_2+14,SE_09);

--------------------------------------------
--------------------------------------------
spep_3 = spep_2+38;

entryFade(spep_3,0,0,6,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_3+68,8,4,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_3,0,78,0,10,10,10, 255);

Beam3=entryEffectLife(spep_3+2,SP_04r,76,0x100,-1,0,0,0);

setEffScaleKey(spep_3+2,Beam3,1.0,1.0);
setEffScaleKey(spep_3+2+76,Beam3,1.0,1.0);
setEffRotateKey(spep_3+2,Beam3,0);
setEffRotateKey(spep_3+2+76,Beam3,0);
setEffAlphaKey(spep_3+2,Beam3,255);
setEffAlphaKey(spep_3+2+76,Beam3,255);

setEffShake(spep_3+2,Beam3,47,10);
setEffShake(spep_3+50,Beam3,28,15);

ryusen3=entryEffectLife(spep_3,921,78,0x80,-1,0, -74.2, 86 );
setEffScaleKey( spep_3 + 0, ryusen3, 1.39, 1.35 );
setEffRotateKey(spep_3,ryusen3,-9.8);

setDisp( spep_3 + 78, 1,0);

setMoveKey( spep_3 + 0, 1, 49.9, -77.2 , 0 );
setMoveKey( spep_3 + 2, 1, 72.6, -68.3 , 0 );
setMoveKey( spep_3 + 4, 1, 103.7, -49.4 , 0 );
setMoveKey( spep_3 + 6, 1, 137, -38.3 , 0 );
setMoveKey( spep_3 + 8, 1, 167.2, -19.7 , 0 );
setMoveKey( spep_3 + 10, 1, 193, -8.3 , 0 );
setMoveKey( spep_3 + 12, 1, 223.5, 8.6 , 0 );
setMoveKey( spep_3 + 14, 1, 226, 7.2 , 0 );
setMoveKey( spep_3 + 16, 1, 227.2, 10 , 0 );
setMoveKey( spep_3 + 18, 1, 225, 8.1 , 0 );
setMoveKey( spep_3 + 20, 1, 226.1, 10.4 , 0 );
setMoveKey( spep_3 + 22, 1, 228.6, 9 , 0 );
setMoveKey( spep_3 + 24, 1, 229.7, 11.8 , 0 );
setMoveKey( spep_3 + 26, 1, 227.6, 9.9 , 0 );
setMoveKey( spep_3 + 28, 1, 228.7, 12.2 , 0 );
setMoveKey( spep_3 + 30, 1, 231.2, 10.8 , 0 );
setMoveKey( spep_3 + 32, 1, 232.3, 13.5 , 0 );
setMoveKey( spep_3 + 34, 1, 230.2, 11.7 , 0 );
setMoveKey( spep_3 + 36, 1, 231.3, 14 , 0 );
setMoveKey( spep_3 + 38, 1, 233.7, 12.6 , 0 );
setMoveKey( spep_3 + 40, 1, 234.8, 15.3 , 0 );
setMoveKey( spep_3 + 42, 1, 232.8, 13.5 , 0 );
setMoveKey( spep_3 + 44, 1, 233.9, 15.8 , 0 );
setMoveKey( spep_3 + 46, 1, 236.3, 14.4 , 0 );
setMoveKey( spep_3 + 48, 1, 237.3, 17.1 , 0 );
setMoveKey( spep_3 + 50, 1, 235.4, 15.3 , 0 );
setMoveKey( spep_3 + 52, 1, 236.4, 17.6 , 0 );
setMoveKey( spep_3 + 54, 1, 238.9, 16.2 , 0 );
setMoveKey( spep_3 + 56, 1, 239.9, 18.9 , 0 );
setMoveKey( spep_3 + 58, 1, 238, 17.2 , 0 );
setMoveKey( spep_3 + 60, 1, 239.1, 19.4 , 0 );
setMoveKey( spep_3 + 62, 1, 241.3, 18.1 , 0 );
setMoveKey( spep_3 + 64, 1, 242.5, 20.7 , 0 );
setMoveKey( spep_3 + 66, 1, 240.5, 19.1 , 0 );
setMoveKey( spep_3 + 68, 1, 241.7, 21.1 , 0 );
setMoveKey( spep_3 + 70, 1, 243.9, 20 , 0 );
setMoveKey( spep_3 + 72, 1, 245, 22.5 , 0 );
setMoveKey( spep_3 + 74, 1, 243.2, 20.9 , 0 );
setMoveKey( spep_3 + 76, 1, 244.2, 22.9 , 0 );
setMoveKey( spep_3 + 78, 1, 246.5, 21.8 , 0 );

setScaleKey( spep_3 + 0, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 2, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 4, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 6, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 8, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 10, 1, 0.67, 0.67 );
setScaleKey( spep_3 + 12, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 14, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 20, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 22, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 30, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 32, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 38, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 40, 1, 0.49, 0.49 );
setScaleKey( spep_3 + 48, 1, 0.49, 0.49 );
setScaleKey( spep_3 + 50, 1, 0.48, 0.48 );
setScaleKey( spep_3 + 56, 1, 0.48, 0.48 );
setScaleKey( spep_3 + 58, 1, 0.47, 0.47 );
setScaleKey( spep_3 + 66, 1, 0.47, 0.47 );
setScaleKey( spep_3 + 68, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 74, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 76, 1, 0.45, 0.45 );

setRotateKey( spep_3 + 0, 1, 9.3 );
setRotateKey( spep_3 + 76, 1, 9.3 );

ctZuo = entryEffectLife( spep_3 + 50,  10012, 28, 0x100, -1, 0, -205.3, 279.4 );
setEffMoveKey( spep_3 + 50, ctZuo, -205.3, 279.4 , 0 );
setEffMoveKey( spep_3 + 52, ctZuo, -176.3, 320.4 , 0 );
setEffMoveKey( spep_3 + 54, ctZuo, -165.3, 379.4 , 0 );
setEffMoveKey( spep_3 + 56, ctZuo, -149.3, 363.4 , 0 );
setEffMoveKey( spep_3 + 58, ctZuo, -165.3, 379.4 , 0 );
setEffMoveKey( spep_3 + 60, ctZuo, -149.3, 363.4 , 0 );
setEffMoveKey( spep_3 + 62, ctZuo, -165.3, 379.4 , 0 );
setEffMoveKey( spep_3 + 64, ctZuo, -149.3, 363.4 , 0 );
setEffMoveKey( spep_3 + 66, ctZuo, -165.3, 379.4 , 0 );
setEffMoveKey( spep_3 + 68, ctZuo, -127.9, 355.4 , 0 );
setEffMoveKey( spep_3 + 70, ctZuo, -138.6, 379.4 , 0 );
setEffMoveKey( spep_3 + 72, ctZuo, -125.3, 379.4 , 0 );

setEffScaleKey( spep_3 + 50, ctZuo, 0.1, 0.1 );
setEffScaleKey( spep_3 + 52, ctZuo, 1.35, 1.35 );
setEffScaleKey( spep_3 + 54, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_3 + 66, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_3 + 68, ctZuo, 3.6, 3.6 );
setEffScaleKey( spep_3 + 70, ctZuo, 4.8, 4.8 );
setEffScaleKey( spep_3 + 72, ctZuo, 6, 6 );

setEffRotateKey( spep_3 + 50, ctZuo, 30 );

setEffAlphaKey( spep_3 + 50, ctZuo, 255 );
setEffAlphaKey( spep_3 + 66, ctZuo, 255 );
setEffAlphaKey( spep_3 + 68, ctZuo, 170 );
setEffAlphaKey( spep_3 + 70, ctZuo, 85 );
setEffAlphaKey( spep_3 + 72, ctZuo, 0 );

playSe(spep_3,SE_01);
playSe(spep_3+50,SE_07)

--------------------------------------------
--------------------------------------------
spep_4= spep_3+78;

entryFade(spep_4,0,0,6,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_4+98,8,4,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_4,0,78,0,10,10,10, 255);

-- カットイン
--speff = entryEffect(  spep_4+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_4+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--ゴゴゴ--
-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4+30, 190006, 70, 0x100, -1, 0, 0, 530);    -- ゴゴゴゴ

setEffScaleKey(spep_4+30,  ctgogo,  -0.7,  0.7);
setEffMoveKey(spep_4+30,  ctgogo,  0,  530);
setEffRotateKey(spep_4+30,  ctgogo,  0);
setEffScaleKey(  spep_4+100,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_4+100,  ctgogo,  0,  530);
setEffRotateKey(  spep_4+100,  ctgogo,  0);

Ground4=entryEffectLife(spep_4,SP_06,108,0x80,-1,0,0,0);

setEffScaleKey(spep_4,Ground4,1.0,1.0);
setEffScaleKey(spep_4+108,Ground4,1.0,1.0);
setEffRotateKey(spep_4,Ground4,0);
setEffRotateKey(spep_4+108,Ground4,0);
setEffAlphaKey(spep_4,Ground4,255);
setEffAlphaKey(spep_4+108,Ground4,255);

setEffShake(spep_4,Ground4,108,15);

ryusen4=entryEffectLife(spep_4,920,108,0x80,-1,0,0,750);
setEffRotateKey(spep_4,ryusen4,0);

Beam4=entryEffectLife(spep_4,SP_05r,108,0x80,-1,0,0,0);

setEffScaleKey(spep_4,Beam4,1.0,1.0);
setEffScaleKey(spep_4+108,Beam4,1.0,1.0);
setEffRotateKey(spep_4,Beam4,0);
setEffRotateKey(spep_4+108,Beam4,0);
setEffAlphaKey(spep_4,Beam4,255);
setEffAlphaKey(spep_4+108,Beam4,255);

setEffShake(spep_4,Beam4,108,15);

playSe(spep_4+30,  SE_04);  --カットイン音

--------------------------------------------
--------------------------------------------
spep_5= spep_4+110;

entryFade(spep_5+62,8,6,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_5,0,78,0,10,10,10, 255);

shuchu5=entryEffectLife(spep_5+28,906,44,0x80,-1,0,0,0);

Beam5=entryEffectLife(spep_5,SP_07r,72,0x100,-1,0,0,0);

setEffScaleKey(spep_5,Beam5,1.0,1.0);
setEffScaleKey(spep_5+72,Beam5,1.0,1.0);
setEffRotateKey(spep_5,Beam5,0);
setEffRotateKey(spep_5+72,Beam5,0);
setEffAlphaKey(spep_5,Beam5,255);
setEffAlphaKey(spep_5+72,Beam5,255);

setEffShake(spep_5,Beam5,72,10);

Ground5=entryEffectLife(spep_5,SP_08,72,0x80,-1,0,351.6, -433.8 );

setEffScaleKey(spep_5,Ground5,1.0,1.0);
setEffScaleKey(spep_5+72,Ground5,1.0,1.0);
setEffRotateKey(spep_5,Ground5,0);
setEffRotateKey(spep_5+72,Ground5,0);
setEffAlphaKey(spep_5,Ground5,255);
setEffAlphaKey(spep_5+72,Ground5,255);

setEffShake(spep_5,Ground5,72,15);

ctDogown = entryEffectLife( spep_5 + 28,  10018, 28, 0x100, -1, 0, 12.4, 319.9 );
setEffMoveKey( spep_5 + 28, ctDogown, 12.4, 319.9 , 0 );
setEffMoveKey( spep_5 + 30, ctDogown, 17, 339.9 , 0 );
setEffMoveKey( spep_5 + 32, ctDogown, 21.7, 359.9 , 0 );
setEffMoveKey( spep_5 + 34, ctDogown, 26.4, 379.8 , 0 );
setEffMoveKey( spep_5 + 48, ctDogown, 26.4, 379.8 , 0 );
setEffMoveKey( spep_5 + 50, ctDogown, 28.4, 388.3 , 0 );
setEffMoveKey( spep_5 + 52, ctDogown, 30.4, 396.8 , 0 );
setEffMoveKey( spep_5 + 54, ctDogown, 32.4, 405.3 , 0 );
setEffMoveKey( spep_5 + 56, ctDogown, 34.4, 413.8 , 0 );

setEffScaleKey( spep_5 + 28, ctDogown, 1, 1 );
setEffScaleKey( spep_5 + 30, ctDogown, 1.54, 1.54 );
setEffScaleKey( spep_5 + 32, ctDogown, 1.79, 1.79 );
setEffScaleKey( spep_5 + 34, ctDogown, 2.41, 2.41 );
setEffScaleKey( spep_5 + 36, ctDogown, 2.19, 2.19 );
setEffScaleKey( spep_5 + 38, ctDogown, 2.41, 2.41 );
setEffScaleKey( spep_5 + 40, ctDogown, 2.19, 2.19 );
setEffScaleKey( spep_5 + 42, ctDogown, 2.41, 2.41 );
setEffScaleKey( spep_5 + 44, ctDogown, 2.19, 2.19 );
setEffScaleKey( spep_5 + 46, ctDogown, 2.41, 2.41 );
setEffScaleKey( spep_5 + 48, ctDogown, 2.19, 2.19 );
setEffScaleKey( spep_5 + 50, ctDogown, 2.59, 2.59 );
setEffScaleKey( spep_5 + 52, ctDogown, 2.5, 2.5 );
setEffScaleKey( spep_5 + 54, ctDogown, 2.93, 2.93 );
setEffScaleKey( spep_5 + 56, ctDogown, 3.1, 3.1 );

setEffRotateKey( spep_5 + 28, ctDogown, 0 );

setEffAlphaKey( spep_5 + 28, ctDogown, 255 );
setEffAlphaKey( spep_5 + 48, ctDogown, 255 );
setEffAlphaKey( spep_5 + 50, ctDogown, 191 );
setEffAlphaKey( spep_5 + 52, ctDogown, 128 );
setEffAlphaKey( spep_5 + 54, ctDogown, 64 );
setEffAlphaKey( spep_5 + 56, ctDogown, 0 );

setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 +23, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, 38.4, -5.6 , 0 );
setMoveKey( spep_5 + 2, 1, 34.5, -9.5 , 0 );
setMoveKey( spep_5 + 4, 1, 37.1, -5 , 0 );
setMoveKey( spep_5 + 6, 1, 42.7, -8 , 0 );
setMoveKey( spep_5 + 8, 1, 45.3, -2.5 , 0 );
setMoveKey( spep_5 + 10, 1, 41.5, -6.5 , 0 );
setMoveKey( spep_5 + 12, 1, 44.1, -1.9 , 0 );
setMoveKey( spep_5 + 14, 1, 49.6, -4.9 , 0 );
setMoveKey( spep_5 + 16, 1, 52.3, 0.5 , 0 );
setMoveKey( spep_5 + 18, 1, 48.4, -3.4 , 0 );
setMoveKey( spep_5 + 20, 1, 51.1, 1.2 , 0 );
setMoveKey( spep_5 + 22, 1, 56.6, -1.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.05, 1.05 );

setRotateKey( spep_5 + 0, 1, 9.3 );
setRotateKey( spep_5 + 77, 1, 9.3 );

playSe(spep_5+28,SE_09);
--------------------------------------------
--------------------------------------------
spep_6= spep_5+78;

entryFade(spep_6,0,0,12,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_6+76,8,4,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_6,0,88,0,10,10,10, 255);

shuchu6=entryEffectLife(spep_6,906,26,0x80,-1,0,0,0);

Beam6=entryEffectLife(spep_6+2,SP_09r,86,0x100,-1,0,-10,-50);

setEffScaleKey(spep_6+2,Beam6,1.0,1.0);
setEffScaleKey(spep_6+88,Beam6,1.0,1.0);
setEffRotateKey(spep_6+2,Beam6,0);
setEffRotateKey(spep_6+88,Beam6,0);
setEffAlphaKey(spep_6+2,Beam6,255);
setEffAlphaKey(spep_6+88,Beam6,255);

setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 88, 1, 0 );
changeAnime( spep_6 + 0, 1, 108 );

setMoveKey( spep_6 + 0, 1, -46.3, 3.6 , 0 );
setMoveKey( spep_6 + 2, 1, -73.3, 7.2 , 0 );
setMoveKey( spep_6 + 4, 1, -93.1, -1.2 , 0 );
setMoveKey( spep_6 + 6, 1, -116.5, 7.2 , 0 );
setMoveKey( spep_6 + 8, 1, -147.2, 0 , 0 );
setMoveKey( spep_6 + 10, 1, -164.6, 3.6 , 0 );
setMoveKey( spep_6 + 12, 1, -196.4, 7.2 , 0 );
setMoveKey( spep_6 + 14, 1, -216.2, -1.2 , 0 );
setMoveKey( spep_6 + 16, 1, -239.6, 7.2 , 0 );
setMoveKey( spep_6 + 18, 1, -270.2, 0 , 0 );
setMoveKey( spep_6 + 20, 1, -287.7, 3.6 , 0 );
setMoveKey( spep_6 + 22, 1, -319.5, 7.2 , 0 );
setMoveKey( spep_6 + 24, 1, -339.3, -1.2 , 0 );
setMoveKey( spep_6 + 26, 1, -362.7, 7.2 , 0 );
setMoveKey( spep_6 + 28, 1, -283.1, 0 , 0 );
setMoveKey( spep_6 + 30, 1, -190.2, 3.6 , 0 );
setMoveKey( spep_6 + 32, 1, -111.8, 7.2 , 0 );
setMoveKey( spep_6 + 34, 1, -21.4, -1.2 , 0 );
setMoveKey( spep_6 + 36, 1, 65.5, 7.2 , 0 );
setMoveKey( spep_6 + 38, 1, 145.1, 0 , 0 );
setMoveKey( spep_6 + 40, 1, 138.3, 3.6 , 0 );
setMoveKey( spep_6 + 42, 1, 117.1, 7.2 , 0 );
setMoveKey( spep_6 + 44, 1, 107.9, -1.2 , 0 );
setMoveKey( spep_6 + 46, 1, 95.1, 7.2 , 0 );
setMoveKey( spep_6 + 48, 1, 75.1, 0 , 0 );
setMoveKey( spep_6 + 50, 1, 68.3, 3.6 , 0 );
setMoveKey( spep_6 + 52, 1, 47.1, 7.2 , 0 );
setMoveKey( spep_6 + 54, 1, 37.9, -1.2 , 0 );
setMoveKey( spep_6 + 56, 1, 25.1, 7.2 , 0 );
setMoveKey( spep_6 + 58, 1, 5.1, 0 , 0 );
setMoveKey( spep_6 + 60, 1, 7, 7.2 , 0 );
setMoveKey( spep_6 + 62, 1, 13.6, -1.2 , 0 );
setMoveKey( spep_6 + 64, 1, 16.7, 7.2 , 0 );
setMoveKey( spep_6 + 66, 1, 12.5, 0 , 0 );
setMoveKey( spep_6 + 68, 1, 21.6, 3.6 , 0 );
setMoveKey( spep_6 + 70, 1, 21.1, -1.2 , 0 );
setMoveKey( spep_6 + 72, 1, 24.1, 7.2 , 0 );
setMoveKey( spep_6 + 74, 1, 20, 0 , 0 );
setMoveKey( spep_6 + 76, 1, 29, 3.6 , 0 );
setMoveKey( spep_6 + 78, 1, 28.5, -1.2 , 0 );
setMoveKey( spep_6 + 80, 1, 31.6, 7.2 , 0 );
setMoveKey( spep_6 + 82, 1, 32.2, -1.2 , 0 );
setMoveKey( spep_6 + 84, 1, 35.3, 7.2 , 0 );
setMoveKey( spep_6 + 86, 1, 31.1, 0 , 0 );
setMoveKey( spep_6 + 88, 1, 40.2, 3.6 , 0 );

setScaleKey( spep_6 + 0, 1, 1.2, 1.2 );

setRotateKey( spep_6 + 0, 1, -17.5 );
setRotateKey( spep_6 + 2, 1, -17.6 );
setRotateKey( spep_6 +88, 1, -17.6 );

ctga = entryEffectLife( spep_6 + 32,  10005, 28, 0x100, -1, 0, 24.5, 188.5 );
setEffMoveKey( spep_6 + 32, ctga, 24.5, 188.5 , 0 );
setEffMoveKey( spep_6 + 34, ctga, 22, 213.5 , 0 );
setEffMoveKey( spep_6 + 36, ctga, 33.6, 243.8 , 0 );
setEffMoveKey( spep_6 + 38, ctga, 23.1, 265.5 , 0 );
setEffMoveKey( spep_6 + 40, ctga, 38.2, 271.3 , 0 );
setEffMoveKey( spep_6 + 42, ctga, 23.1, 265.5 , 0 );
setEffMoveKey( spep_6 + 44, ctga, 38.2, 271.3 , 0 );
setEffMoveKey( spep_6 + 46, ctga, 23.1, 265.5 , 0 );
setEffMoveKey( spep_6 + 48, ctga, 38.2, 271.3 , 0 );
setEffMoveKey( spep_6 + 50, ctga, 23.1, 265.5 , 0 );
setEffMoveKey( spep_6 + 52, ctga, 38.2, 271.3 , 0 );
setEffMoveKey( spep_6 + 54, ctgg, 23.1, 265.5 , 0 );
setEffMoveKey( spep_6 + 56, ctga, 38.2, 271.3 , 0 );
setEffMoveKey( spep_6 + 58, ctga, 23.1, 265.5 , 0 );
setEffMoveKey( spep_6 + 60, ctga, 38.2, 271.3 , 0 );
setEffScaleKey( spep_6 + 32, ctga, 0.22, 0.22 );
setEffScaleKey( spep_6 + 34, ctga, 0.53, 0.53 );
setEffScaleKey( spep_6 + 36, ctga, 0.83, 0.83 );
setEffScaleKey( spep_6 + 38, ctga, 1.43, 1.43 ); --1.13
setEffRotateKey( spep_6 + 32, ctga, -41.7 ); --46.7
setEffAlphaKey( spep_6 + 32, ctga, 255 );

--グランドと流線
Ground6=entryEffectLife(spep_6,SP_06,88,0x80,-1,0,0,0);

setEffMoveKey( spep_6 + 0, Ground6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 88, Ground6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, Ground6, 1.1, 1.1 );

setEffAlphaKey( spep_6 + 0, Ground6, 255 );

setEffShake(spep_6,Ground6,88,15);

ryusen6=entryEffectLife(spep_6,920,88,0x80,-1,0,0,750);
setEffRotateKey(spep_6 + 0, ryusen6,0);
setEffScaleKey( spep_6 + 0, ryusen6, 1, 1);
setEffAlphaKey( spep_6 + 0, ryusen6,255);

playSe(spep_6+32,SE_01);

--------------------------------------------
--------------------------------------------
spep_7 = spep_6+88;

entryFade(spep_7,0,0,8,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_7, SE_05);
speff = entryEffect(  spep_7,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen7 = entryEffectLife( spep_7r, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_7,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7,  shuchusen7,  1.0,  1.0);
setEffRotateKey(  spep_7,  shuchusen7,  0);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffMoveKey(  spep_7+90,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7+90,  shuchusen7,  1.4,  1.4);
setEffRotateKey(  spep_7+90,  shuchusen7,  0);
setEffAlphaKey(  spep_7+90,  shuchusen7,  255);

entryFade( spep_7+73, 15, 9, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------------
--------------------------------------------
spep_8 = spep_7+90;

entryFade(spep_8+98,10,2,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_8,0,108,0,10,10,10, 255);

Beam8=entryEffectLife(spep_8,SP_10r,108,0x100,-1,0,0,0);

setEffScaleKey(spep_8,Beam8,-1.0,1.0);
setEffScaleKey(spep_8+108,Beam8,-1.0,1.0);
setEffRotateKey(spep_8,Beam8,0);
setEffRotateKey(spep_8+108,Beam8,0);
setEffAlphaKey(spep_8,Beam8,255);
setEffAlphaKey(spep_8+108,Beam8,255);

--setEffShake(spep_8,Beam8,108,5);

setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 108, 1, 0 );
changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, -40.7, -62.1 , 0 );
setMoveKey( spep_8 + 2, 1, -43, -58.4 , 0 );
setMoveKey( spep_8 + 4, 1, -35.7, -54.6 , 0 );
setMoveKey( spep_8 + 6, 1, -37.4, -50.8 , 0 );
setMoveKey( spep_8 + 8, 1, -30.8, -47.1 , 0 );
setMoveKey( spep_8 + 10, 1, -31.8, -43.3 , 0 );
setMoveKey( spep_8 + 12, 1, -25.8, -39.5 , 0 );
setMoveKey( spep_8 + 14, 1, -26.3, -35.7 , 0 );
setMoveKey( spep_8 + 16, 1, -20.8, -31.9 , 0 );
setMoveKey( spep_8 + 18, 1, -20.7, -28.2 , 0 );
setMoveKey( spep_8 + 20, 1, -18.3, -28.1 , 0 );
setMoveKey( spep_8 + 22, 1, -20.5, -28 , 0 );
setMoveKey( spep_8 + 24, 1, -18.2, -27.9 , 0 );
setMoveKey( spep_8 + 26, 1, -20.4, -27.7 , 0 );
setMoveKey( spep_8 + 28, 1, -18, -27.6 , 0 );
setMoveKey( spep_8 + 30, 1, -20.3, -27.5 , 0 );
setMoveKey( spep_8 + 32, 1, -17.9, -27.4 , 0 );
setMoveKey( spep_8 + 34, 1, -20.1, -27.3 , 0 );
setMoveKey( spep_8 + 36, 1, -17.7, -27.2 , 0 );
setMoveKey( spep_8 + 38, 1, -20, -27.1 , 0 );
setMoveKey( spep_8 + 40, 1, -17.6, -27 , 0 );
setMoveKey( spep_8 + 42, 1, -19.7, -26.9 , 0 );
setMoveKey( spep_8 + 44, 1, -17.6, -26.8 , 0 );
setMoveKey( spep_8 + 46, 1, -19.6, -26.7 , 0 );
setMoveKey( spep_8 + 48, 1, -17.4, -26.6 , 0 );
setMoveKey( spep_8 + 50, 1, -19.4, -26.5 , 0 );
setMoveKey( spep_8 + 52, 1, -17.3, -26.4 , 0 );
setMoveKey( spep_8 + 54, 1, -19.3, -26.3 , 0 );
setMoveKey( spep_8 + 56, 1, -17.1, -26.2 , 0 );
setMoveKey( spep_8 + 58, 1, -19.1, -26.1 , 0 );
setMoveKey( spep_8 + 60, 1, -17, -26 , 0 );
setMoveKey( spep_8 + 62, 1, -19, -25.9 , 0 );
setMoveKey( spep_8 + 64, 1, -16.8, -25.8 , 0 );
setMoveKey( spep_8 + 66, 1, -18.9, -25.7 , 0 );
setMoveKey( spep_8 + 68, 1, -16.7, -25.6 , 0 );
setMoveKey( spep_8 + 70, 1, -18.7, -25.5 , 0 );
setMoveKey( spep_8 + 72, 1, -16.5, -25.4 , 0 );
setMoveKey( spep_8 + 74, 1, -18.6, -25.2 , 0 );

setScaleKey( spep_8 + 0, 1, 1.83, 1.83 );
setScaleKey( spep_8 + 2, 1, 1.72, 1.72 );
setScaleKey( spep_8 + 4, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 6, 1, 1.49, 1.49 );
setScaleKey( spep_8 + 8, 1, 1.38, 1.38 );
setScaleKey( spep_8 + 10, 1, 1.27, 1.27 );
setScaleKey( spep_8 + 12, 1, 1.16, 1.16 );
setScaleKey( spep_8 + 14, 1, 1.05, 1.05 );
setScaleKey( spep_8 + 16, 1, 0.94, 0.94 );
setScaleKey( spep_8 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_8 + 22, 1, 0.83, 0.83 );
setScaleKey( spep_8 + 24, 1, 0.81, 0.81 );
setScaleKey( spep_8 + 30, 1, 0.81, 0.81 );
setScaleKey( spep_8 + 32, 1, 0.8, 0.8 );
setScaleKey( spep_8 + 40, 1, 0.8, 0.8 );
setScaleKey( spep_8 + 42, 1, 0.79, 0.79 );
setScaleKey( spep_8 + 48, 1, 0.79, 0.79 );
setScaleKey( spep_8 + 50, 1, 0.77, 0.77 );
setScaleKey( spep_8 + 58, 1, 0.77, 0.77 );
setScaleKey( spep_8 + 60, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 66, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 68, 1, 0.74, 0.74 );

setRotateKey( spep_8 + 0, 1, -53.7 );
setRotateKey( spep_8 + 68, 1, -53.7 );

shuchusen8 = entryEffectLife( spep_8, 906, 108, 0x100,  -1, 0,  0,  0);
setEffScaleKey( spep_8,shuchusen8,1.3,1.3);

GR8 = entryEffectLife( spep_8 + 0,  SP_11, 72, 0x80, -1, 0, 0, 0 );
setEffShake( spep_8,GR8,72,10);

playSe(spep_8,SE_02);

--------------------------------------------
--------------------------------------------
spep_9 = spep_8+108;

entryFade(spep_9,0,0,6,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_9+74,12,2,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_9,0,88,0,10,10,10, 255);

shuchusen9 = entryEffectLife( spep_9+20, 906, 68, 0x100,  -1, 0,  0,  0);
setEffScaleKey( spep_9+20,shuchusen9,1.3,1.3);

Beam9=entryEffectLife(spep_9,SP_12r,88,0x80,-1,0,0,0);

setEffScaleKey(spep_9,Beam9,1.0,1.0);
setEffScaleKey(spep_9+88,Beam9,1.0,1.0);
setEffRotateKey(spep_9,Beam9,0);
setEffRotateKey(spep_9+88,Beam9,0);
setEffAlphaKey(spep_9,Beam9,255);
setEffAlphaKey(spep_9+88,Beam9,255);

setEffShake(spep_9,Beam9,88,5);

playSe(spep_9,SE_11);
playSe(spep_9+26,SE_10);

--------------------------------------------
--------------------------------------------
spep_10=spep_9+88;

entryFade(spep_10,0,0,28,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade(spep_10+148,20,2,0,fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg(spep_10,0,88,0,10,10,10, 255);

Beam9=entryEffect(spep_10,SP_13r,0x80,-1,0,0,0);
setEffScaleKey(spep_10,Beam9,1.1,1.1);

setEffShake(spep_10,Beam9,170,5);

dealDamage(spep_10+96);
endPhase(spep_10+170);
end
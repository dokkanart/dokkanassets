--sp1188_孫悟空_最勇気アドベンチャー
--1014500
--sp_effect_b4_00059

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

SP_01 = 151919;
SP_02 = 151920;
SP_03 = 151921;  
SP_04 = 151922; 
SP_05 = 151923;  
SP_06 = 151924;  
SP_07 = 151925; 
SP_08 = 151926;  

multi_frm = 2;
kame_flag = 0x00;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -900, 0); --味方位置
setMoveKey( 1, 0, 0, -900, 0); --味方位置
setMoveKey( 2, 0, 0, -900, 0); --味方位置
setMoveKey( 3, 0, 0, -900, 0); --味方位置
setMoveKey( 4, 0, 0, -900, 0); --味方位置
setMoveKey( 5, 0, 0, -900, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  0, 0);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 92F
------------------------------------------------------
spep_1=0;

entryFade( spep_1+86,6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

Toujou=entryEffectLife(spep_1,SP_01,92,0x100,-1,0,0,0);
setEffScaleKey(spep_1,Toujou,1.0,1.0)
setEffAlphaKey(spep_1,Toujou,255);
setEffAlphaKey(spep_1+92,Toujou,255);

playSe( spep_1,SE_01);
------------------------------------------------------
-- 156F
------------------------------------------------------
spep_2=spep_1+92;

entryFade( spep_2+146,12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

Senkai=entryEffectLife(spep_2,SP_02,156,0x100,-1,0,0,0);
setEffScaleKey(spep_2,Senkai,1.0,1.0)
setEffAlphaKey(spep_2,Senkai,255);
setEffAlphaKey(spep_2+156,Senkai,255);

--書き文字ズオッ--
ctZuo = entryEffectLife( spep_2 + 8,  10012, 38, 0x100, -1, 0, 36, 219.9 );
setEffMoveKey( spep_2 + 8, ctZuo, 36, 219.9 , 0 );
setEffMoveKey( spep_2 + 10, ctZuo, 53.8, 249.7 , 0 );
setEffMoveKey( spep_2 + 12, ctZuo, 62.6, 286.5 , 0 );
setEffMoveKey( spep_2 + 14, ctZuo, 86.9, 311.4 , 0 );
setEffMoveKey( spep_2 + 16, ctZuo, 76, 319.8 , 0 );
setEffMoveKey( spep_2 + 18, ctZuo, 86.9, 311.4 , 0 );
setEffMoveKey( spep_2 + 20, ctZuo, 76, 319.8 , 0 );
setEffMoveKey( spep_2 + 22, ctZuo, 86.9, 311.4 , 0 );
setEffMoveKey( spep_2 + 24, ctZuo, 76, 319.8 , 0 );
setEffMoveKey( spep_2 + 26, ctZuo, 86.9, 311.4 , 0 );
setEffMoveKey( spep_2 + 28, ctZuo, 76, 319.8 , 0 );
setEffMoveKey( spep_2 + 30, ctZuo, 86.9, 311.4 , 0 );
setEffMoveKey( spep_2 + 32, ctZuo, 76, 319.8 , 0 );
setEffMoveKey( spep_2 + 34, ctZuo, 86.9, 311.4 , 0 );
setEffMoveKey( spep_2 + 36, ctZuo, 82.6, 319.9 , 0 );
setEffMoveKey( spep_2 + 38, ctZuo, 105.7, 307.1 , 0 );
setEffMoveKey( spep_2 + 40, ctZuo, 96, 319.9 , 0 );
setEffMoveKey( spep_2 + 42, ctZuo, 124.5, 302.9 , 0 );
setEffMoveKey( spep_2 + 44, ctZuo, 109.3, 319.8 , 0 );
setEffMoveKey( spep_2 + 46, ctZuo, 116, 319.9 , 0 );

setEffScaleKey( spep_2 + 8, ctZuo, 0.3, 0.3 );
setEffScaleKey( spep_2 + 10, ctZuo, 0.99, 0.99 );
setEffScaleKey( spep_2 + 12, ctZuo, 1.71, 1.71 );
setEffScaleKey( spep_2 + 14, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_2 + 34, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_2 + 36, ctZuo, 3, 3 );
setEffScaleKey( spep_2 + 38, ctZuo, 3.6, 3.6 );
setEffScaleKey( spep_2 + 40, ctZuo, 4.2, 4.2 );
setEffScaleKey( spep_2 + 42, ctZuo, 4.8, 4.8 );
setEffScaleKey( spep_2 + 44, ctZuo, 5.4, 5.4 );
setEffScaleKey( spep_2 + 46, ctZuo, 6, 6);

setEffRotateKey( spep_2 + 8, ctZuo, 30 );

setEffAlphaKey( spep_2 + 8, ctZuo, 255 );
setEffAlphaKey( spep_2 + 34, ctZuo, 255 );
setEffAlphaKey( spep_2 + 36, ctZuo, 212 );
setEffAlphaKey( spep_2 + 38, ctZuo, 170 );
setEffAlphaKey( spep_2 + 40, ctZuo, 128 );
setEffAlphaKey( spep_2 + 42, ctZuo, 85 );
setEffAlphaKey( spep_2 + 44, ctZuo, 43 );
setEffAlphaKey( spep_2 + 46, ctZuo, 0 );

playSe( spep_2,1018);

------------------------------------------------------
--回避 
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+136; --エンドフェイズのフレーム数を置き換える

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

setEffAlphaKey(SP_dodge+8, kidan, 255);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);

changeAnime(SP_dodge+9, 1, 100);

setMoveKey(SP_dodge+9, 1, 0, 0, 0);
setScaleKey(SP_dodge+9, 1, 1.0, 1.0);
setRotateKey(SP_dodge+9, 1, 0);

setEffAlphaKey(SP_dodge+9, kidan, 0);

setMoveKey(SP_dodge+10, 1, 0, 0, 0);
setScaleKey(SP_dodge+10, 1, 1.0, 1.0);
setRotateKey(SP_dodge+10, 1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10, 0, -2500, -250, 0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 88F Card Cut In
------------------------------------------------------
spep_3 = spep_2+156;

entryFade( spep_3, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+72, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 88, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+88,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+88,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+88,  shuchusen3,  0);
setEffAlphaKey(  spep_3+88,  shuchusen3,  255);

--SE
playSe( spep_3, SE_05);

------------------------------------------------------
-- 128F 
------------------------------------------------------
spep_4=spep_3+88;

entryFade( spep_4, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+118, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

Senkai2=entryEffectLife(spep_4,SP_03,128,0x100,-1,0,0,0);
setEffScaleKey(spep_4,Senkai2,1.0,1.0)
setEffAlphaKey(spep_4,Senkai2,255);
setEffAlphaKey(spep_4+128,Senkai2,255);

playSe( spep_4, 1022);


------------------------------------------------------
-- 110F 
------------------------------------------------------
spep_5=spep_4+128;

entryFade( spep_5, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+100, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

entryFadeBg( spep_5, 0, 110, 0, 10, 10, 10, 240); -- back Ground

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 110, 1, 0 );

changeAnime( spep_5 + 0, 1, 101 );
changeAnime( spep_5 + 8, 1, 108 );
changeAnime( spep_5 + 28, 1, 106 );
changeAnime( spep_5 + 50, 1, 108 );
changeAnime( spep_5 + 70, 1, 106 );
changeAnime( spep_5 + 92, 1, 108 );

setShakeChara( spep_5+8, 1, 20,20 );
setShakeChara( spep_5+28, 1, 22,10 );
setShakeChara( spep_5+50, 1, 20,20 );
setShakeChara( spep_5+70, 1, 22,10 );
setShakeChara( spep_5+92, 1, 18,20 );

setMoveKey( spep_5 + 0, 1, -0.1, 0 , 0 );
setMoveKey( spep_5 + 8, 1, -0.1, 0 , 0 );
setMoveKey( spep_5 + 10, 1, 9.5, -5.4 , 0 );
setMoveKey( spep_5 + 12, 1, 7.4, -2.2 , 0 );
setMoveKey( spep_5 + 14, 1, 14.9, -6.5 , 0 );
setMoveKey( spep_5 + 16, 1, 12.4, -3.6 , 0 );
setMoveKey( spep_5 + 18, 1, 17.6, -6.8 , 0 );
setMoveKey( spep_5 + 20, 1, 18.9, -5.4 , 0 );
setMoveKey( spep_5 + 22, 1, 29.4, -10.6 , 0 );
setMoveKey( spep_5 + 24, 1, 30.8, -8.9 , 0 );
setMoveKey( spep_5 + 27, 1, 43.7, -15.3 , 0 );
setMoveKey( spep_5 + 28, 1, 15.7, -7.9 , 0 );
setMoveKey( spep_5 + 30, 1, 3.3, -17.3 , 0 );
setMoveKey( spep_5 + 32, 1, -1.1, -17.4 , 0 );
setMoveKey( spep_5 + 34, 1, -16.3, -28.9 , 0 );
setMoveKey( spep_5 + 36, 1, -22.9, -29.2 , 0 );
setMoveKey( spep_5 + 38, 1, -37.2, -38.6 , 0 );
setMoveKey( spep_5 + 40, 1, -40.6, -35 , 0 );
setMoveKey( spep_5 + 42, 1, -52.1, -43.1 , 0 );
setMoveKey( spep_5 + 44, 1, -54.4, -39 , 0 );
setMoveKey( spep_5 + 46, 1, -63.1, -45.8 , 0 );
setMoveKey( spep_5 + 49, 1, -64.1, -41.4 , 0 );
setMoveKey( spep_5 + 50, 1, -0.1, 0 , 0 );
setMoveKey( spep_5 + 52, 1, 9.6, -2 , 0 );
setMoveKey( spep_5 + 54, 1, 8.3, 3.3 , 0 );
setMoveKey( spep_5 + 56, 1, 16, 1.5 , 0 );
setMoveKey( spep_5 + 58, 1, 16.7, 6.7 , 0 );
setMoveKey( spep_5 + 60, 1, 27.6, 5.4 , 0 );
setMoveKey( spep_5 + 62, 1, 28.8, 11.5 , 0 );
setMoveKey( spep_5 + 64, 1, 41.6, 10.3 , 0 );
setMoveKey( spep_5 + 66, 1, 43.4, 17.3 , 0 );
setMoveKey( spep_5 + 69, 1, 58.2, 16.2 , 0 );
setMoveKey( spep_5 + 70, 1, -19.8, -2.2 , 0 );
setMoveKey( spep_5 + 72, 1, -21.3, -8.9 , 0 );
setMoveKey( spep_5 + 74, 1, -12.2, -5.4 , 0 );
setMoveKey( spep_5 + 76, 1, -12.2, -11.5 , 0 );
setMoveKey( spep_5 + 78, 1, -2.3, -7.4 , 0 );
setMoveKey( spep_5 + 80, 1, -2.8, -13 , 0 );
setMoveKey( spep_5 + 82, 1, 5.7, -9 , 0 );
setMoveKey( spep_5 + 84, 1, 4.9, -13.7 , 0 );
setMoveKey( spep_5 + 86, 1, 12, -10.2 , 0 );
setMoveKey( spep_5 + 88, 1, 10.7, -14.1 , 0 );
setMoveKey( spep_5 + 91, 1, 16.6, -10.6 , 0 );
setMoveKey( spep_5 + 92, 1, -0.1, 0 , 0 );
setMoveKey( spep_5 + 94, 1, 3.2, -6.9 , 0 );
setMoveKey( spep_5 + 96, 1, -3.9, -7.6 , 0 );
setMoveKey( spep_5 + 98, 1, 0, -16.1 , 0 );
setMoveKey( spep_5 + 100, 1, -9.1, -17.9 , 0 );
setMoveKey( spep_5 + 102, 1, -4.6, -27.9 , 0 );
setMoveKey( spep_5 + 104, 1, -15.7, -31.2 , 0 );
setMoveKey( spep_5 + 106, 1, -10.4, -42.3 , 0 );
setMoveKey( spep_5 + 108, 1, -23.5, -47 , 0 );
setMoveKey( spep_5 + 110, 1, -17.7, -59.3 , 0 );

setScaleKey( spep_5 + 0, 1, 1.61, 1.61 );
setScaleKey( spep_5 + 2, 1, 1.52, 1.52 );
setScaleKey( spep_5 + 4, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 7, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 8, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 10, 1, 1.14, 1.14 );
setScaleKey( spep_5 + 12, 1, 1.05, 1.05 );
setScaleKey( spep_5 + 14, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 16, 1, 0.87, 0.87 );
setScaleKey( spep_5 + 18, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 22, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 24, 1, 1.08, 1.08 );
setScaleKey( spep_5 + 27, 1, 1.18, 1.18 );
setScaleKey( spep_5 + 28, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 30, 1, 1.39, 1.39 );
setScaleKey( spep_5 + 32, 1, 1.48, 1.48 );
setScaleKey( spep_5 + 34, 1, 1.59, 1.59 );
setScaleKey( spep_5 + 36, 1, 1.69, 1.69 );
setScaleKey( spep_5 + 38, 1, 1.61, 1.61 );
setScaleKey( spep_5 + 40, 1, 1.53, 1.53 );
setScaleKey( spep_5 + 42, 1, 1.46, 1.46 );
setScaleKey( spep_5 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_5 + 46, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 49, 1, 1.22, 1.22 );
setScaleKey( spep_5 + 50, 1, 1.14, 1.14 );
setScaleKey( spep_5 + 52, 1, 1.07, 1.07 );
setScaleKey( spep_5 + 54, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 56, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 58, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 60, 1, 1.05, 1.05 );
setScaleKey( spep_5 + 62, 1, 1.13, 1.13 );
setScaleKey( spep_5 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 66, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 69, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 70, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 72, 1, 1.48, 1.48 );
setScaleKey( spep_5 + 74, 1, 1.56, 1.56 );
setScaleKey( spep_5 + 76, 1, 1.48, 1.48 );
setScaleKey( spep_5 + 78, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 80, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 82, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 84, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 86, 1, 1.13, 1.13 );
setScaleKey( spep_5 + 88, 1, 1.05, 1.05 );
setScaleKey( spep_5 + 91, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 92, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 94, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 96, 1, 1.12, 1.12 );
setScaleKey( spep_5 + 98, 1, 1.21, 1.21 );
setScaleKey( spep_5 + 100, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 102, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 104, 1, 1.52, 1.52 );
setScaleKey( spep_5 + 106, 1, 1.61, 1.61 );
setScaleKey( spep_5 + 108, 1, 1.72, 1.72 );
setScaleKey( spep_5 + 110, 1, 1.82, 1.82 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 27, 1, 0 );
setRotateKey( spep_5 + 28, 1, -58.5 );
setRotateKey( spep_5 + 30, 1, -60 );
setRotateKey( spep_5 + 32, 1, -61.5 );
setRotateKey( spep_5 + 34, 1, -63 );
setRotateKey( spep_5 + 36, 1, -64.5 );
setRotateKey( spep_5 + 38, 1, -66 );
setRotateKey( spep_5 + 40, 1, -67.5 );
setRotateKey( spep_5 + 42, 1, -69 );
setRotateKey( spep_5 + 44, 1, -70.5 );
setRotateKey( spep_5 + 46, 1, -72 );
setRotateKey( spep_5 + 49, 1, -73.5 );
setRotateKey( spep_5 + 50, 1, 0 );
setRotateKey( spep_5 + 52, 1, -0.5 );
setRotateKey( spep_5 + 54, 1, -1 );
setRotateKey( spep_5 + 56, 1, -1.6 );
setRotateKey( spep_5 + 58, 1, -2.1 );
setRotateKey( spep_5 + 60, 1, -2.6 );
setRotateKey( spep_5 + 62, 1, -3.1 );
setRotateKey( spep_5 + 64, 1, -3.7 );
setRotateKey( spep_5 + 66, 1, -4.2 );
setRotateKey( spep_5 + 69, 1, -4.7 );
setRotateKey( spep_5 + 70, 1, -58.5 );
setRotateKey( spep_5 + 91, 1, -58.5 );
setRotateKey( spep_5 + 92, 1, 0 );
setRotateKey( spep_5 + 94, 1, -2.1 );
setRotateKey( spep_5 + 96, 1, -4.3 );
setRotateKey( spep_5 + 98, 1, -6.4 );
setRotateKey( spep_5 + 100, 1, -8.5 );
setRotateKey( spep_5 + 102, 1, -10.7 );
setRotateKey( spep_5 + 104, 1, -12.8 );
setRotateKey( spep_5 + 106, 1, -14.9 );
setRotateKey( spep_5 + 108, 1, -17.1 );
setRotateKey( spep_5 + 110, 1, -19.2 );

Senkai3=entryEffectLife(spep_5,SP_04,110,0x100,-1,0,0,0);
setEffScaleKey(spep_5,Senkai3,1.0,1.0)
setEffAlphaKey(spep_5,Senkai3,255);
setEffAlphaKey(spep_5+110,Senkai3,255);

--ガッ
ctGa = entryEffectLife( spep_5 + 8,  10005, 12, 0x100, -1, 0, 28.1, -212 );
setEffMoveKey( spep_5 + 8, ctGa, 28.1, -212 , 0 );
setEffMoveKey( spep_5 + 10, ctGa, 32.8, -215 , 0 );
setEffMoveKey( spep_5 + 12, ctGa, 28.1, -212 , 0 );
setEffMoveKey( spep_5 + 14, ctGa, 32.8, -215 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 28.1, -212 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 32.8, -215 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 28.1, -212 , 0 );

setEffScaleKey( spep_5 + 8, ctGa, 1.29, 1.29 );
setEffScaleKey( spep_5 + 20, ctGa, 1.29, 1.29 );

setEffAlphaKey( spep_5 + 8, ctGa, 255 );
setEffAlphaKey( spep_5 + 20, ctGa, 255 );

setEffRotateKey( spep_5 + 8, ctGa, -25.5 );
setEffRotateKey( spep_5 + 20, ctGa, -25.5 );

--ガッ
ctGa2 = entryEffectLife( spep_5 + 28,  10005, 14, 0x100, -1, 0, -115.9, 171.9 );
setEffMoveKey( spep_5 + 28, ctGa2, -115.9, 171.9 , 0 );
setEffMoveKey( spep_5 + 30, ctGa2, -110.4, 168.4 , 0 );
setEffMoveKey( spep_5 + 32, ctGa2, -115.9, 171.9 , 0 );
setEffMoveKey( spep_5 + 34, ctGa2, -110.4, 168.4 , 0 );
setEffMoveKey( spep_5 + 36, ctGa2, -115.9, 171.9 , 0 );
setEffMoveKey( spep_5 + 38, ctGa2, -110.4, 168.4 , 0 );
setEffMoveKey( spep_5 + 40, ctGa2, -115.9, 171.9 , 0 );
setEffMoveKey( spep_5 + 42, ctGa2, -110.4, 168.4 , 0 );

setEffScaleKey( spep_5 + 28, ctGa2, 1.5, 1.5 );

setEffRotateKey( spep_5 + 8, ctGa2, -25.5 );
setEffRotateKey( spep_5 + 20, ctGa2, -25.5 );

setEffAlphaKey( spep_5 + 28, ctGa2, 255 );

--ガガガ
ctGagaga= entryEffectLife( spep_5 + 50,  10002, 12, 0x100, -1, 0, -70, 152 );
setEffMoveKey( spep_5 + 50, ctGagaga, -70, 152 , 0 );
setEffMoveKey( spep_5 + 52, ctGagaga, -65.6, 148.8 , 0 );
setEffMoveKey( spep_5 + 54, ctGagaga, -70, 152 , 0 );
setEffMoveKey( spep_5 + 56, ctGagaga, -65.6, 148.8 , 0 );
setEffMoveKey( spep_5 + 58, ctGagaga, -70, 152 , 0 );
setEffMoveKey( spep_5 + 60, ctGagaga, -65.6, 148.8 , 0 );
setEffMoveKey( spep_5 + 62, ctGagaga, -70, 152 , 0 );

setEffScaleKey( spep_5 + 50, ctGagaga, 2.05, 2.05 );

setEffRotateKey( spep_5 + 50, ctGagaga, -29.2 );

setEffAlphaKey( spep_5 + 50, ctGagaga, 255 );

--ドガガガ
ctDogaga = entryEffectLife( spep_5 + 70,  10017, 14, 0x100, -1, 0, -123.9, -195.9 );
setEffMoveKey( spep_5 + 70, ctDogaga, -123.9, -195.9 , 0 );
setEffMoveKey( spep_5 + 72, ctDogaga, -120.6, -204.4 , 0 );
setEffMoveKey( spep_5 + 74, ctDogaga, -123.9, -195.9 , 0 );
setEffMoveKey( spep_5 + 76, ctDogaga, -120.6, -204.4 , 0 );
setEffMoveKey( spep_5 + 78, ctDogaga, -123.9, -195.9 , 0 );
setEffMoveKey( spep_5 + 80, ctDogaga, -120.6, -204.4 , 0 );
setEffMoveKey( spep_5 + 82, ctDogaga, -123.9, -195.9 , 0 );
setEffMoveKey( spep_5 + 84, ctDogaga, -120.6, -204.4 , 0 );

setEffScaleKey( spep_5 + 70, ctDogaga, 2.27, 2.27 );
setEffScaleKey( spep_5 + 84, ctDogaga, 2.27, 2.27 );

setEffRotateKey( spep_5 + 70, ctDogaga, 32 );
setEffRotateKey( spep_5 + 84, ctDogaga, 32 );

setEffAlphaKey( spep_5 + 70, ctDogaga, 255 );
setEffAlphaKey( spep_5 + 84, ctDogaga, 255 );

--ドガガガ
ctDogaga2 = entryEffectLife( spep_5 + 92,  10017, 14, 0x100, -1, 0, -51.9, 198 );
setEffMoveKey( spep_5 + 92, ctDogaga2, -51.9, 198 , 0 );
setEffMoveKey( spep_5 + 94, ctDogaga2, -40.8, 197.7 , 0 );
setEffMoveKey( spep_5 + 96, ctDogaga2, -51.9, 198 , 0 );
setEffMoveKey( spep_5 + 98, ctDogaga2, -40.8, 197.7 , 0 );
setEffMoveKey( spep_5 + 100, ctDogaga2, -51.9, 198 , 0 );
setEffMoveKey( spep_5 + 102, ctDogaga2, -40.8, 197.7 , 0 );
setEffMoveKey( spep_5 + 104, ctDogaga2, -51.9, 198 , 0 );
setEffMoveKey( spep_5 + 106, ctDogaga2, -40.8, 197.7 , 0 );

setEffScaleKey( spep_5 + 92, ctDogaga2, 2.77, 2.77 );

setEffRotateKey( spep_5 + 92, ctDogaga2, -35.5 );

setEffAlphaKey( spep_5 + 92, ctDogaga2, 255 );

--shuchusen5=entryEffectLife( spep_5 + 8,  906, 102, 0x80, -1, 0, 0,0 );
--setEffScaleKey( spep_5 + 8, shuchusen5, 1.4, 1.4 );

playSe( spep_5 + 8,1009);
playSe( spep_5 + 28,1010);
playSe( spep_5 + 50,1009);
playSe( spep_5 + 70,1010);
playSe( spep_5 + 92,1009);

------------------------------------------------------
-- 110F 
------------------------------------------------------
spep_6=spep_5+110;

entryFadeBg( spep_6, 0, 124, 0, 10, 10, 10, 240);     -- back Ground

entryFade( spep_6, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_6+120, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

Attack=entryEffectLife(spep_6,SP_05,124,0x100,-1,0,0,0);
setEffScaleKey(spep_6,Attack,1.0,1.0)
setEffAlphaKey(spep_6,Attack,255);
setEffAlphaKey(spep_6+124,Attack,255);

speff = entryEffect(  spep_6+30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_6+30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct = entryEffectLife( spep_6+46, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_6+46, ct, 70, 8);
setEffScaleKey(spep_6+46, ct, 0.7, 0.7);

ryusen6 = entryEffectLife( spep_6 + 0,  920, 50, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, ryusen6, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, ryusen6, 3.94, 1.34 );
setEffRotateKey( spep_6 + 0, ryusen6, -52 );
setEffAlphaKey( spep_6 + 0, ryusen6, 255 );

playSe(  spep_6+10,  SE_04);  --カットイン音

------------------------------------------------------
-- 58F 
------------------------------------------------------
spep_7=spep_6+124;

entryFade( spep_7, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_7+48, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_7, 0, 60, 0, 10, 10, 10, 240);     -- back Ground

Attack2=entryEffectLife(spep_7,SP_06,58,0x100,-1,0,0,0);
setEffScaleKey(spep_7,Attack2,1.0,1.0)
setEffAlphaKey(spep_7,Attack2,255);
setEffAlphaKey(spep_7+58,Attack2,255);

setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7 + 18, 1, 108 );

setMoveKey( spep_7 + 0, 1, 244.2, -410.2 , 0 );
setMoveKey( spep_7 + 2, 1, 223, -377.5 , 0 );
setMoveKey( spep_7 + 4, 1, 201.7, -344.7 , 0 );
setMoveKey( spep_7 + 6, 1, 180.5, -312 , 0 );
setMoveKey( spep_7 + 8, 1, 159.3, -279.3 , 0 );
setMoveKey( spep_7 + 10, 1, 138, -246.5 , 0 );
setMoveKey( spep_7 + 12, 1, 116.8, -213.8 , 0 );
setMoveKey( spep_7 + 14, 1, 95.5, -181 , 0 );
setMoveKey( spep_7 + 17, 1, 74.3, -148.3 , 0 );
setMoveKey( spep_7 + 18, 1, 74.3, -148.3 , 0 );
setMoveKey( spep_7 + 20, 1, 83.4, -160.9 , 0 );
setMoveKey( spep_7 + 22, 1, 92.5, -173.5 , 0 );
setMoveKey( spep_7 + 24, 1, 101.6, -186.1 , 0 );
setMoveKey( spep_7 + 26, 1, 110.7, -198.7 , 0 );
setMoveKey( spep_7 + 28, 1, 119.8, -211.3 , 0 );
setMoveKey( spep_7 + 30, 1, 128.9, -223.9 , 0 );
setMoveKey( spep_7 + 32, 1, 138, -236.5 , 0 );
setMoveKey( spep_7 + 34, 1, 147.1, -249.1 , 0 );
setMoveKey( spep_7 + 36, 1, 156.2, -261.7 , 0 );
setMoveKey( spep_7 + 38, 1, 165.3, -274.3 , 0 );
setMoveKey( spep_7 + 40, 1, 174.4, -286.8 , 0 );
setMoveKey( spep_7 + 42, 1, 183.5, -299.4 , 0 );
setMoveKey( spep_7 + 44, 1, 192.6, -312 , 0 );
setMoveKey( spep_7 + 46, 1, 201.7, -324.6 , 0 );
setMoveKey( spep_7 + 48, 1, 210.8, -337.2 , 0 );
setMoveKey( spep_7 + 50, 1, 219.9, -349.8 , 0 );
setMoveKey( spep_7 + 52, 1, 229, -362.4 , 0 );
setMoveKey( spep_7 + 54, 1, 238.1, -375 , 0 );
setMoveKey( spep_7 + 56, 1, 247.2, -387.6 , 0 );
setMoveKey( spep_7 + 58, 1, 256.3, -400.2 , 0 );

setScaleKey( spep_7 + 0, 1, 1.82, 1.82 );
setScaleKey( spep_7 + 2, 1, 1.75, 1.75 );
setScaleKey( spep_7 + 4, 1, 1.69, 1.69 );
setScaleKey( spep_7 + 6, 1, 1.62, 1.62 );
setScaleKey( spep_7 + 8, 1, 1.56, 1.56 );
setScaleKey( spep_7 + 10, 1, 1.49, 1.49 );
setScaleKey( spep_7 + 12, 1, 1.43, 1.43 );
setScaleKey( spep_7 + 14, 1, 1.36, 1.36 );
setScaleKey( spep_7 + 17, 1, 1.3, 1.3 );
setScaleKey( spep_7 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_7 + 20, 1, 1.35, 1.35 );
setScaleKey( spep_7 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_7 + 24, 1, 1.45, 1.45 );
setScaleKey( spep_7 + 26, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 28, 1, 1.55, 1.55 );
setScaleKey( spep_7 + 30, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 32, 1, 1.65, 1.65 );
setScaleKey( spep_7 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_7 + 36, 1, 1.75, 1.75 );
setScaleKey( spep_7 + 38, 1, 1.8, 1.8 );
setScaleKey( spep_7 + 40, 1, 1.85, 1.85 );
setScaleKey( spep_7 + 42, 1, 1.9, 1.9 );
setScaleKey( spep_7 + 44, 1, 1.95, 1.95 );
setScaleKey( spep_7 + 46, 1, 2, 2 );
setScaleKey( spep_7 + 48, 1, 2.05, 2.05 );
setScaleKey( spep_7 + 50, 1, 2.1, 2.1 );
setScaleKey( spep_7 + 52, 1, 2.15, 2.15 );
setScaleKey( spep_7 + 54, 1, 2.2, 2.2 );
setScaleKey( spep_7 + 56, 1, 2.25, 2.25 );
setScaleKey( spep_7 + 58, 1, 2.3, 2.3 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 17, 1, 0 );
setRotateKey( spep_7 + 18, 1, 45.4 );
setRotateKey( spep_7 + 20, 1, 45.5 );

--バゴォッ　10021
ctVago = entryEffectLife( spep_7 + 18,  10021, 40, 0x100, -1, 0, 98.3, -6 );
setEffMoveKey( spep_7 + 18, ctVago, 98.3, -6 , 0 );
setEffMoveKey( spep_7 + 20, ctVago, 122.7, 7.4 , 0 );
setEffMoveKey( spep_7 + 22, ctVago, 132.3, 24 , 0 );
setEffMoveKey( spep_7 + 24, ctVago, 161.5, 36.3 , 0 );
setEffMoveKey( spep_7 + 26, ctVago, 166.3, 54 , 0 );
setEffMoveKey( spep_7 + 28, ctVago, 181, 50.8 , 0 );
setEffMoveKey( spep_7 + 30, ctVago, 166.3, 54 , 0 );
setEffMoveKey( spep_7 + 32, ctVago, 181.2, 50.7 , 0 );
setEffMoveKey( spep_7 + 34, ctVago, 166.2, 54.1 , 0 );
setEffMoveKey( spep_7 + 36, ctVago, 181.3, 50.7 , 0 );
setEffMoveKey( spep_7 + 38, ctVago, 166.2, 54.1 , 0 );
setEffMoveKey( spep_7 + 40, ctVago, 181.5, 50.6 , 0 );
setEffMoveKey( spep_7 + 42, ctVago, 166.2, 54.1 , 0 );
setEffMoveKey( spep_7 + 44, ctVago, 181.7, 50.6 , 0 );
setEffMoveKey( spep_7 + 46, ctVago, 166.3, 54 , 0 );
setEffMoveKey( spep_7 + 48, ctVago, 181.8, 50.6 , 0 );
setEffMoveKey( spep_7 + 50, ctVago, 166.3, 54 , 0 );
setEffMoveKey( spep_7 + 52, ctVago, 182, 50.6 , 0 );
setEffMoveKey( spep_7 + 54, ctVago, 166.3, 54 , 0 );
setEffMoveKey( spep_7 + 56, ctVago, 182.2, 50.5 , 0 );
setEffMoveKey( spep_7 + 58, ctVago, 166.3, 54 , 0 );

setEffScaleKey( spep_7 + 18, ctVago, 0.61, 0.61 );
setEffScaleKey( spep_7 + 20, ctVago, 0.9, 0.9 );
setEffScaleKey( spep_7 + 22, ctVago, 1.19, 1.19 );
setEffScaleKey( spep_7 + 24, ctVago, 1.48, 1.48 );
setEffScaleKey( spep_7 + 26, ctVago, 1.77, 1.77 );
setEffScaleKey( spep_7 + 28, ctVago, 1.78, 1.78 );
setEffScaleKey( spep_7 + 30, ctVago, 1.79, 1.79 );
setEffScaleKey( spep_7 + 32, ctVago, 1.8, 1.8 );
setEffScaleKey( spep_7 + 34, ctVago, 1.81, 1.81 );
setEffScaleKey( spep_7 + 36, ctVago, 1.82, 1.82 );
setEffScaleKey( spep_7 + 38, ctVago, 1.83, 1.83 );
setEffScaleKey( spep_7 + 40, ctVago, 1.84, 1.84 );
setEffScaleKey( spep_7 + 42, ctVago, 1.85, 1.85 );
setEffScaleKey( spep_7 + 44, ctVago, 1.86, 1.86 );
setEffScaleKey( spep_7 + 46, ctVago, 1.87, 1.87 );
setEffScaleKey( spep_7 + 48, ctVago, 1.88, 1.88 );
setEffScaleKey( spep_7 + 50, ctVago, 1.89, 1.89 );
setEffScaleKey( spep_7 + 52, ctVago, 1.9, 1.9 );
setEffScaleKey( spep_7 + 54, ctVago, 1.91, 1.91 );
setEffScaleKey( spep_7 + 56, ctVago, 1.92, 1.92 );
setEffScaleKey( spep_7 + 58, ctVago, 1.93, 1.93 );

setEffRotateKey( spep_7 + 18, ctVago, -32.4 );
setEffRotateKey( spep_7 + 20, ctVago, -32.5 );

setEffAlphaKey( spep_7 + 18, ctVago, 255 );

--流線
ryusen7 = entryEffectLife( spep_7 + 0,  921, 16, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, ryusen7, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, ryusen7, 1.79, 1.27 );
setEffRotateKey( spep_7 + 0, ryusen7, -112 );
setEffAlphaKey( spep_7 + 0, ryusen7, 255 );

playSe(spep_7,1003);
playSe(spep_7+6,1003);
playSe(spep_7+12,1003);
playSe(spep_7+18,1009);
------------------------------------------------------
-- Finish 
------------------------------------------------------
spep_8=spep_7+60;

entryFade( spep_8, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_8-1, 1, 1);
setMoveKey(  spep_8-1,    1,  100,  0,   0);
setScaleKey( spep_8-1,    1,  1.0, 1.0);
setMoveKey(  spep_8,    1,    0,   0,   128);
setScaleKey( spep_8,    1,  0.1, 0.1);

changeAnime( spep_8, 1, 107);                         -- 手前ダメージ
entryEffect( spep_8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_8+8, SE_10);

setMoveKey(  spep_8+8,   1,    0,   0,   128);
setMoveKey(  spep_8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_8+16,   1,  -60,  -200,  -100);
setDamage( spep_8+16, 1, 0);  -- ダメージ振動等
setShake(spep_8+7,6,15);
setShake(spep_8+13,15,10);

setRotateKey( spep_8,  1,  30 );
setRotateKey( spep_8+2,  1,  80 );
setRotateKey( spep_8+4,  1, 120 );
setRotateKey( spep_8+6,  1, 160 );
setRotateKey( spep_8+8,  1, 200 );
setRotateKey( spep_8+10,  1, 260 );
setRotateKey( spep_8+12,  1, 320 );
setRotateKey( spep_8+14,  1,   0 );

setShakeChara( spep_8+15, 1, 5,  10);
setShakeChara( spep_8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_8+15, ct, 30, 10);
setEffRotateKey( spep_8+15, ct, -40);
setEffScaleKey( spep_8+15, ct, 4.0, 4.0);
setEffScaleKey( spep_8+16, ct, 2.0, 2.0);
setEffScaleKey( spep_8+17, ct, 2.6, 2.6);
setEffScaleKey( spep_8+18, ct, 4.0, 4.0);
setEffScaleKey( spep_8+19, ct, 2.6, 2.6);
setEffScaleKey( spep_8+20, ct, 3.8, 3.8);
setEffScaleKey( spep_8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_8+15, ct, 255);
setEffAlphaKey( spep_8+105, ct, 255);
setEffAlphaKey( spep_8+115, ct, 0);

playSe( spep_8+3, SE_11);
shuchusen = entryEffectLife( spep_8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_8+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_8+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_8+16);
entryFade( spep_8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_8+110);

else

------------------------------------------------------
-- 92F
------------------------------------------------------
spep_1=0;

entryFade( spep_1+86,6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

Toujou=entryEffectLife(spep_1,SP_01,92,0x100,-1,0,0,0);
setEffScaleKey(spep_1,Toujou,-1.0,1.0)
setEffAlphaKey(spep_1,Toujou,255);
setEffAlphaKey(spep_1+92,Toujou,255);

playSe( spep_1,SE_01);
------------------------------------------------------
-- 156F
------------------------------------------------------
spep_2=spep_1+92;

entryFade( spep_2+146,12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

Senkai=entryEffectLife(spep_2,SP_02,156,0x100,-1,0,0,0);
setEffScaleKey(spep_2,Senkai,-1.0,1.0)
setEffAlphaKey(spep_2,Senkai,255);
setEffAlphaKey(spep_2+156,Senkai,255);

--書き文字ズオッ--
ctZuo = entryEffectLife( spep_2 + 8,  10012, 38, 0x100, -1, 0, 36, 219.9 );
setEffMoveKey( spep_2 + 8, ctZuo, 36, 219.9 , 0 );
setEffMoveKey( spep_2 + 10, ctZuo, 53.8, 249.7 , 0 );
setEffMoveKey( spep_2 + 12, ctZuo, 62.6, 286.5 , 0 );
setEffMoveKey( spep_2 + 14, ctZuo, 86.9, 311.4 , 0 );
setEffMoveKey( spep_2 + 16, ctZuo, 76, 319.8 , 0 );
setEffMoveKey( spep_2 + 18, ctZuo, 86.9, 311.4 , 0 );
setEffMoveKey( spep_2 + 20, ctZuo, 76, 319.8 , 0 );
setEffMoveKey( spep_2 + 22, ctZuo, 86.9, 311.4 , 0 );
setEffMoveKey( spep_2 + 24, ctZuo, 76, 319.8 , 0 );
setEffMoveKey( spep_2 + 26, ctZuo, 86.9, 311.4 , 0 );
setEffMoveKey( spep_2 + 28, ctZuo, 76, 319.8 , 0 );
setEffMoveKey( spep_2 + 30, ctZuo, 86.9, 311.4 , 0 );
setEffMoveKey( spep_2 + 32, ctZuo, 76, 319.8 , 0 );
setEffMoveKey( spep_2 + 34, ctZuo, 86.9, 311.4 , 0 );
setEffMoveKey( spep_2 + 36, ctZuo, 82.6, 319.9 , 0 );
setEffMoveKey( spep_2 + 38, ctZuo, 105.7, 307.1 , 0 );
setEffMoveKey( spep_2 + 40, ctZuo, 96, 319.9 , 0 );
setEffMoveKey( spep_2 + 42, ctZuo, 124.5, 302.9 , 0 );
setEffMoveKey( spep_2 + 44, ctZuo, 109.3, 319.8 , 0 );
setEffMoveKey( spep_2 + 46, ctZuo, 116, 319.9 , 0 );

setEffScaleKey( spep_2 + 8, ctZuo, 0.3, 0.3 );
setEffScaleKey( spep_2 + 10, ctZuo, 0.99, 0.99 );
setEffScaleKey( spep_2 + 12, ctZuo, 1.71, 1.71 );
setEffScaleKey( spep_2 + 14, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_2 + 34, ctZuo, 2.4, 2.4 );
setEffScaleKey( spep_2 + 36, ctZuo, 3, 3 );
setEffScaleKey( spep_2 + 38, ctZuo, 3.6, 3.6 );
setEffScaleKey( spep_2 + 40, ctZuo, 4.2, 4.2 );
setEffScaleKey( spep_2 + 42, ctZuo, 4.8, 4.8 );
setEffScaleKey( spep_2 + 44, ctZuo, 5.4, 5.4 );
setEffScaleKey( spep_2 + 46, ctZuo, 6, 6);

setEffRotateKey( spep_2 + 8, ctZuo, 30 );

setEffAlphaKey( spep_2 + 8, ctZuo, 255 );
setEffAlphaKey( spep_2 + 34, ctZuo, 255 );
setEffAlphaKey( spep_2 + 36, ctZuo, 212 );
setEffAlphaKey( spep_2 + 38, ctZuo, 170 );
setEffAlphaKey( spep_2 + 40, ctZuo, 128 );
setEffAlphaKey( spep_2 + 42, ctZuo, 85 );
setEffAlphaKey( spep_2 + 44, ctZuo, 43 );
setEffAlphaKey( spep_2 + 46, ctZuo, 0 );

playSe( spep_2,1018);

------------------------------------------------------
--回避 
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+136; --エンドフェイズのフレーム数を置き換える

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

setEffAlphaKey(SP_dodge+8, kidan, 255);

setDisp(SP_dodge+9, 0, 0);
setDisp(SP_dodge+9, 1, 0);

changeAnime(SP_dodge+9, 1, 100);

setMoveKey(SP_dodge+9, 1, 0, 0, 0);
setScaleKey(SP_dodge+9, 1, 1.0, 1.0);
setRotateKey(SP_dodge+9, 1, 0);

setEffAlphaKey(SP_dodge+9, kidan, 0);

setMoveKey(SP_dodge+10, 1, 0, 0, 0);
setScaleKey(SP_dodge+10, 1, 1.0, 1.0);
setRotateKey(SP_dodge+10, 1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10, 0, -2500, -250, 0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 88F Card Cut In
------------------------------------------------------
spep_3 = spep_2+156;

entryFade( spep_3, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+72, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 88, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+88,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+88,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+88,  shuchusen3,  0);
setEffAlphaKey(  spep_3+88,  shuchusen3,  255);

--SE
playSe( spep_3, SE_05);

------------------------------------------------------
-- 128F 
------------------------------------------------------
spep_4=spep_3+88;

entryFade( spep_4, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+118, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

Senkai2=entryEffectLife(spep_4,SP_03,128,0x100,-1,0,0,0);
setEffScaleKey(spep_4,Senkai2,-1.0,1.0)
setEffAlphaKey(spep_4,Senkai2,255);
setEffAlphaKey(spep_4+128,Senkai2,255);

playSe( spep_4, 1022);


------------------------------------------------------
-- 110F 
------------------------------------------------------
spep_5=spep_4+128;

entryFade( spep_5, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+100, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

entryFadeBg( spep_5, 0, 110, 0, 10, 10, 10, 240); -- back Ground

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 110, 1, 0 );

setShakeChara( spep_5+8, 1, 20,20 );
setShakeChara( spep_5+28, 1, 22,10 );
setShakeChara( spep_5+50, 1, 20,20 );
setShakeChara( spep_5+70, 1, 22,10 );
setShakeChara( spep_5+92, 1, 18,20 );

changeAnime( spep_5 + 0, 1, 101 );
changeAnime( spep_5 + 8, 1, 108 );
changeAnime( spep_5 + 28, 1, 106 );
changeAnime( spep_5 + 50, 1, 108 );
changeAnime( spep_5 + 70, 1, 106 );
changeAnime( spep_5 + 92, 1, 108 );

setMoveKey( spep_5 + 0, 1, -0.1, 0 , 0 );
setMoveKey( spep_5 + 8, 1, -0.1, 0 , 0 );
setMoveKey( spep_5 + 10, 1, 9.5, -5.4 , 0 );
setMoveKey( spep_5 + 12, 1, 7.4, -2.2 , 0 );
setMoveKey( spep_5 + 14, 1, 14.9, -6.5 , 0 );
setMoveKey( spep_5 + 16, 1, 12.4, -3.6 , 0 );
setMoveKey( spep_5 + 18, 1, 17.6, -6.8 , 0 );
setMoveKey( spep_5 + 20, 1, 18.9, -5.4 , 0 );
setMoveKey( spep_5 + 22, 1, 29.4, -10.6 , 0 );
setMoveKey( spep_5 + 24, 1, 30.8, -8.9 , 0 );
setMoveKey( spep_5 + 27, 1, 43.7, -15.3 , 0 );
setMoveKey( spep_5 + 28, 1, 15.7, -7.9 , 0 );
setMoveKey( spep_5 + 30, 1, 3.3, -17.3 , 0 );
setMoveKey( spep_5 + 32, 1, -1.1, -17.4 , 0 );
setMoveKey( spep_5 + 34, 1, -16.3, -28.9 , 0 );
setMoveKey( spep_5 + 36, 1, -22.9, -29.2 , 0 );
setMoveKey( spep_5 + 38, 1, -37.2, -38.6 , 0 );
setMoveKey( spep_5 + 40, 1, -40.6, -35 , 0 );
setMoveKey( spep_5 + 42, 1, -52.1, -43.1 , 0 );
setMoveKey( spep_5 + 44, 1, -54.4, -39 , 0 );
setMoveKey( spep_5 + 46, 1, -63.1, -45.8 , 0 );
setMoveKey( spep_5 + 49, 1, -64.1, -41.4 , 0 );
setMoveKey( spep_5 + 50, 1, -0.1, 0 , 0 );
setMoveKey( spep_5 + 52, 1, 9.6, -2 , 0 );
setMoveKey( spep_5 + 54, 1, 8.3, 3.3 , 0 );
setMoveKey( spep_5 + 56, 1, 16, 1.5 , 0 );
setMoveKey( spep_5 + 58, 1, 16.7, 6.7 , 0 );
setMoveKey( spep_5 + 60, 1, 27.6, 5.4 , 0 );
setMoveKey( spep_5 + 62, 1, 28.8, 11.5 , 0 );
setMoveKey( spep_5 + 64, 1, 41.6, 10.3 , 0 );
setMoveKey( spep_5 + 66, 1, 43.4, 17.3 , 0 );
setMoveKey( spep_5 + 69, 1, 58.2, 16.2 , 0 );
setMoveKey( spep_5 + 70, 1, -19.8, -2.2 , 0 );
setMoveKey( spep_5 + 72, 1, -21.3, -8.9 , 0 );
setMoveKey( spep_5 + 74, 1, -12.2, -5.4 , 0 );
setMoveKey( spep_5 + 76, 1, -12.2, -11.5 , 0 );
setMoveKey( spep_5 + 78, 1, -2.3, -7.4 , 0 );
setMoveKey( spep_5 + 80, 1, -2.8, -13 , 0 );
setMoveKey( spep_5 + 82, 1, 5.7, -9 , 0 );
setMoveKey( spep_5 + 84, 1, 4.9, -13.7 , 0 );
setMoveKey( spep_5 + 86, 1, 12, -10.2 , 0 );
setMoveKey( spep_5 + 88, 1, 10.7, -14.1 , 0 );
setMoveKey( spep_5 + 91, 1, 16.6, -10.6 , 0 );
setMoveKey( spep_5 + 92, 1, -0.1, 0 , 0 );
setMoveKey( spep_5 + 94, 1, 3.2, -6.9 , 0 );
setMoveKey( spep_5 + 96, 1, -3.9, -7.6 , 0 );
setMoveKey( spep_5 + 98, 1, 0, -16.1 , 0 );
setMoveKey( spep_5 + 100, 1, -9.1, -17.9 , 0 );
setMoveKey( spep_5 + 102, 1, -4.6, -27.9 , 0 );
setMoveKey( spep_5 + 104, 1, -15.7, -31.2 , 0 );
setMoveKey( spep_5 + 106, 1, -10.4, -42.3 , 0 );
setMoveKey( spep_5 + 108, 1, -23.5, -47 , 0 );
setMoveKey( spep_5 + 110, 1, -17.7, -59.3 , 0 );

setScaleKey( spep_5 + 0, 1, 1.61, 1.61 );
setScaleKey( spep_5 + 2, 1, 1.52, 1.52 );
setScaleKey( spep_5 + 4, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 7, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 8, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 10, 1, 1.14, 1.14 );
setScaleKey( spep_5 + 12, 1, 1.05, 1.05 );
setScaleKey( spep_5 + 14, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 16, 1, 0.87, 0.87 );
setScaleKey( spep_5 + 18, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 22, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 24, 1, 1.08, 1.08 );
setScaleKey( spep_5 + 27, 1, 1.18, 1.18 );
setScaleKey( spep_5 + 28, 1, 1.29, 1.29 );
setScaleKey( spep_5 + 30, 1, 1.39, 1.39 );
setScaleKey( spep_5 + 32, 1, 1.48, 1.48 );
setScaleKey( spep_5 + 34, 1, 1.59, 1.59 );
setScaleKey( spep_5 + 36, 1, 1.69, 1.69 );
setScaleKey( spep_5 + 38, 1, 1.61, 1.61 );
setScaleKey( spep_5 + 40, 1, 1.53, 1.53 );
setScaleKey( spep_5 + 42, 1, 1.46, 1.46 );
setScaleKey( spep_5 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_5 + 46, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 49, 1, 1.22, 1.22 );
setScaleKey( spep_5 + 50, 1, 1.14, 1.14 );
setScaleKey( spep_5 + 52, 1, 1.07, 1.07 );
setScaleKey( spep_5 + 54, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 56, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 58, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 60, 1, 1.05, 1.05 );
setScaleKey( spep_5 + 62, 1, 1.13, 1.13 );
setScaleKey( spep_5 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 66, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 69, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 70, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 72, 1, 1.48, 1.48 );
setScaleKey( spep_5 + 74, 1, 1.56, 1.56 );
setScaleKey( spep_5 + 76, 1, 1.48, 1.48 );
setScaleKey( spep_5 + 78, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 80, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 82, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 84, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 86, 1, 1.13, 1.13 );
setScaleKey( spep_5 + 88, 1, 1.05, 1.05 );
setScaleKey( spep_5 + 91, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 92, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 94, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 96, 1, 1.12, 1.12 );
setScaleKey( spep_5 + 98, 1, 1.21, 1.21 );
setScaleKey( spep_5 + 100, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 102, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 104, 1, 1.52, 1.52 );
setScaleKey( spep_5 + 106, 1, 1.61, 1.61 );
setScaleKey( spep_5 + 108, 1, 1.72, 1.72 );
setScaleKey( spep_5 + 110, 1, 1.82, 1.82 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 27, 1, 0 );
setRotateKey( spep_5 + 28, 1, -58.5 );
setRotateKey( spep_5 + 30, 1, -60 );
setRotateKey( spep_5 + 32, 1, -61.5 );
setRotateKey( spep_5 + 34, 1, -63 );
setRotateKey( spep_5 + 36, 1, -64.5 );
setRotateKey( spep_5 + 38, 1, -66 );
setRotateKey( spep_5 + 40, 1, -67.5 );
setRotateKey( spep_5 + 42, 1, -69 );
setRotateKey( spep_5 + 44, 1, -70.5 );
setRotateKey( spep_5 + 46, 1, -72 );
setRotateKey( spep_5 + 49, 1, -73.5 );
setRotateKey( spep_5 + 50, 1, 0 );
setRotateKey( spep_5 + 52, 1, -0.5 );
setRotateKey( spep_5 + 54, 1, -1 );
setRotateKey( spep_5 + 56, 1, -1.6 );
setRotateKey( spep_5 + 58, 1, -2.1 );
setRotateKey( spep_5 + 60, 1, -2.6 );
setRotateKey( spep_5 + 62, 1, -3.1 );
setRotateKey( spep_5 + 64, 1, -3.7 );
setRotateKey( spep_5 + 66, 1, -4.2 );
setRotateKey( spep_5 + 69, 1, -4.7 );
setRotateKey( spep_5 + 70, 1, -58.5 );
setRotateKey( spep_5 + 91, 1, -58.5 );
setRotateKey( spep_5 + 92, 1, 0 );
setRotateKey( spep_5 + 94, 1, -2.1 );
setRotateKey( spep_5 + 96, 1, -4.3 );
setRotateKey( spep_5 + 98, 1, -6.4 );
setRotateKey( spep_5 + 100, 1, -8.5 );
setRotateKey( spep_5 + 102, 1, -10.7 );
setRotateKey( spep_5 + 104, 1, -12.8 );
setRotateKey( spep_5 + 106, 1, -14.9 );
setRotateKey( spep_5 + 108, 1, -17.1 );
setRotateKey( spep_5 + 110, 1, -19.2 );

Senkai3=entryEffectLife(spep_5,SP_04,110,0x100,-1,0,0,0);
setEffScaleKey(spep_5,Senkai3,1.0,1.0)
setEffAlphaKey(spep_5,Senkai3,255);
setEffAlphaKey(spep_5+110,Senkai3,255);

--ガッ
ctGa = entryEffectLife( spep_5 + 8,  10005, 12, 0x100, -1, 0, 28.1, -212 );
setEffMoveKey( spep_5 + 8, ctGa, 28.1, -212 , 0 );
setEffMoveKey( spep_5 + 10, ctGa, 32.8, -215 , 0 );
setEffMoveKey( spep_5 + 12, ctGa, 28.1, -212 , 0 );
setEffMoveKey( spep_5 + 14, ctGa, 32.8, -215 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 28.1, -212 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 32.8, -215 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 28.1, -212 , 0 );

setEffScaleKey( spep_5 + 8, ctGa, 1.29, 1.29 );
setEffScaleKey( spep_5 + 20, ctGa, 1.29, 1.29 );

setEffAlphaKey( spep_5 + 8, ctGa, 255 );
setEffAlphaKey( spep_5 + 20, ctGa, 255 );

setEffRotateKey( spep_5 + 8, ctGa, -25.5 );
setEffRotateKey( spep_5 + 20, ctGa, -25.5 );

--ガッ
ctGa2 = entryEffectLife( spep_5 + 28,  10005, 14, 0x100, -1, 0, -115.9, 171.9 );
setEffMoveKey( spep_5 + 28, ctGa2, -115.9, 171.9 , 0 );
setEffMoveKey( spep_5 + 30, ctGa2, -110.4, 168.4 , 0 );
setEffMoveKey( spep_5 + 32, ctGa2, -115.9, 171.9 , 0 );
setEffMoveKey( spep_5 + 34, ctGa2, -110.4, 168.4 , 0 );
setEffMoveKey( spep_5 + 36, ctGa2, -115.9, 171.9 , 0 );
setEffMoveKey( spep_5 + 38, ctGa2, -110.4, 168.4 , 0 );
setEffMoveKey( spep_5 + 40, ctGa2, -115.9, 171.9 , 0 );
setEffMoveKey( spep_5 + 42, ctGa2, -110.4, 168.4 , 0 );

setEffScaleKey( spep_5 + 28, ctGa2, 1.5, 1.5 );

setEffRotateKey( spep_5 + 8, ctGa2, -25.5 );
setEffRotateKey( spep_5 + 20, ctGa2, -25.5 );

setEffAlphaKey( spep_5 + 28, ctGa2, 255 );

--ガガガ
ctGagaga= entryEffectLife( spep_5 + 50,  10002, 12, 0x100, -1, 0, -70, 152 );
setEffMoveKey( spep_5 + 50, ctGagaga, -70, 152 , 0 );
setEffMoveKey( spep_5 + 52, ctGagaga, -65.6, 148.8 , 0 );
setEffMoveKey( spep_5 + 54, ctGagaga, -70, 152 , 0 );
setEffMoveKey( spep_5 + 56, ctGagaga, -65.6, 148.8 , 0 );
setEffMoveKey( spep_5 + 58, ctGagaga, -70, 152 , 0 );
setEffMoveKey( spep_5 + 60, ctGagaga, -65.6, 148.8 , 0 );
setEffMoveKey( spep_5 + 62, ctGagaga, -70, 152 , 0 );

setEffScaleKey( spep_5 + 50, ctGagaga, 2.05, 2.05 );

setEffRotateKey( spep_5 + 50, ctGagaga, -29.2 );

setEffAlphaKey( spep_5 + 50, ctGagaga, 255 );

--ドガガガ
ctDogaga = entryEffectLife( spep_5 + 70,  10017, 14, 0x100, -1, 0, -123.9, -195.9 );
setEffMoveKey( spep_5 + 70, ctDogaga, -123.9, -195.9 , 0 );
setEffMoveKey( spep_5 + 72, ctDogaga, -120.6, -204.4 , 0 );
setEffMoveKey( spep_5 + 74, ctDogaga, -123.9, -195.9 , 0 );
setEffMoveKey( spep_5 + 76, ctDogaga, -120.6, -204.4 , 0 );
setEffMoveKey( spep_5 + 78, ctDogaga, -123.9, -195.9 , 0 );
setEffMoveKey( spep_5 + 80, ctDogaga, -120.6, -204.4 , 0 );
setEffMoveKey( spep_5 + 82, ctDogaga, -123.9, -195.9 , 0 );
setEffMoveKey( spep_5 + 84, ctDogaga, -120.6, -204.4 , 0 );

setEffScaleKey( spep_5 + 70, ctDogaga, 2.27, 2.27 );
setEffScaleKey( spep_5 + 84, ctDogaga, 2.27, 2.27 );

setEffRotateKey( spep_5 + 70, ctDogaga, 32 );
setEffRotateKey( spep_5 + 84, ctDogaga, 32 );

setEffAlphaKey( spep_5 + 70, ctDogaga, 255 );
setEffAlphaKey( spep_5 + 84, ctDogaga, 255 );

--ドガガガ
ctDogaga2 = entryEffectLife( spep_5 + 92,  10017, 14, 0x100, -1, 0, -51.9, 198 );
setEffMoveKey( spep_5 + 92, ctDogaga2, -51.9, 198 , 0 );
setEffMoveKey( spep_5 + 94, ctDogaga2, -40.8, 197.7 , 0 );
setEffMoveKey( spep_5 + 96, ctDogaga2, -51.9, 198 , 0 );
setEffMoveKey( spep_5 + 98, ctDogaga2, -40.8, 197.7 , 0 );
setEffMoveKey( spep_5 + 100, ctDogaga2, -51.9, 198 , 0 );
setEffMoveKey( spep_5 + 102, ctDogaga2, -40.8, 197.7 , 0 );
setEffMoveKey( spep_5 + 104, ctDogaga2, -51.9, 198 , 0 );
setEffMoveKey( spep_5 + 106, ctDogaga2, -40.8, 197.7 , 0 );

setEffScaleKey( spep_5 + 92, ctDogaga2, 2.77, 2.77 );

setEffRotateKey( spep_5 + 92, ctDogaga2, -35.5 );

setEffAlphaKey( spep_5 + 92, ctDogaga2, 255 );

--shuchusen5=entryEffectLife( spep_5 + 8,  906, 102, 0x80, -1, 0, 0,0 );
--setEffScaleKey( spep_5 + 8, shuchusen5, 1.4, 1.4 );

playSe( spep_5 + 8,1009);
playSe( spep_5 + 28,1010);
playSe( spep_5 + 50,1009);
playSe( spep_5 + 70,1010);
playSe( spep_5 + 92,1009);

------------------------------------------------------
-- 110F 
------------------------------------------------------
spep_6=spep_5+110;

entryFadeBg( spep_6, 0, 124, 0, 10, 10, 10, 240);     -- back Ground

entryFade( spep_6, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_6+120, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

Attack=entryEffectLife(spep_6,SP_07,124,0x100,-1,0,0,0);
setEffScaleKey(spep_6,Attack,1.0,1.0)
setEffAlphaKey(spep_6,Attack,255);
setEffAlphaKey(spep_6+124,Attack,255);

--speff = entryEffect(  spep_6+30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_6+30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct = entryEffectLife( spep_6+46, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_6+46, ct, 70, 8);
setEffScaleKey(spep_6+46, ct, -0.7, 0.7);

ryusen6 = entryEffectLife( spep_6 + 0,  920, 50, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, ryusen6, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, ryusen6, 3.94, 1.34 );
setEffRotateKey( spep_6 + 0, ryusen6, -52 );
setEffAlphaKey( spep_6 + 0, ryusen6, 255 );

playSe(  spep_6+10,  SE_04);  --カットイン音

------------------------------------------------------
-- 58F 
------------------------------------------------------
spep_7=spep_6+124;

entryFade( spep_7, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_7+48, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_7, 0, 60, 0, 10, 10, 10, 240);     -- back Ground

Attack2=entryEffectLife(spep_7,SP_08,58,0x100,-1,0,0,0);
setEffScaleKey(spep_7,Attack2,1.0,1.0)
setEffAlphaKey(spep_7,Attack2,255);
setEffAlphaKey(spep_7+58,Attack2,255);

setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7 + 18, 1, 108 );

setMoveKey( spep_7 + 0, 1, 244.2, -410.2 , 0 );
setMoveKey( spep_7 + 2, 1, 223, -377.5 , 0 );
setMoveKey( spep_7 + 4, 1, 201.7, -344.7 , 0 );
setMoveKey( spep_7 + 6, 1, 180.5, -312 , 0 );
setMoveKey( spep_7 + 8, 1, 159.3, -279.3 , 0 );
setMoveKey( spep_7 + 10, 1, 138, -246.5 , 0 );
setMoveKey( spep_7 + 12, 1, 116.8, -213.8 , 0 );
setMoveKey( spep_7 + 14, 1, 95.5, -181 , 0 );
setMoveKey( spep_7 + 17, 1, 74.3, -148.3 , 0 );
setMoveKey( spep_7 + 18, 1, 74.3, -148.3 , 0 );
setMoveKey( spep_7 + 20, 1, 83.4, -160.9 , 0 );
setMoveKey( spep_7 + 22, 1, 92.5, -173.5 , 0 );
setMoveKey( spep_7 + 24, 1, 101.6, -186.1 , 0 );
setMoveKey( spep_7 + 26, 1, 110.7, -198.7 , 0 );
setMoveKey( spep_7 + 28, 1, 119.8, -211.3 , 0 );
setMoveKey( spep_7 + 30, 1, 128.9, -223.9 , 0 );
setMoveKey( spep_7 + 32, 1, 138, -236.5 , 0 );
setMoveKey( spep_7 + 34, 1, 147.1, -249.1 , 0 );
setMoveKey( spep_7 + 36, 1, 156.2, -261.7 , 0 );
setMoveKey( spep_7 + 38, 1, 165.3, -274.3 , 0 );
setMoveKey( spep_7 + 40, 1, 174.4, -286.8 , 0 );
setMoveKey( spep_7 + 42, 1, 183.5, -299.4 , 0 );
setMoveKey( spep_7 + 44, 1, 192.6, -312 , 0 );
setMoveKey( spep_7 + 46, 1, 201.7, -324.6 , 0 );
setMoveKey( spep_7 + 48, 1, 210.8, -337.2 , 0 );
setMoveKey( spep_7 + 50, 1, 219.9, -349.8 , 0 );
setMoveKey( spep_7 + 52, 1, 229, -362.4 , 0 );
setMoveKey( spep_7 + 54, 1, 238.1, -375 , 0 );
setMoveKey( spep_7 + 56, 1, 247.2, -387.6 , 0 );
setMoveKey( spep_7 + 58, 1, 256.3, -400.2 , 0 );

setScaleKey( spep_7 + 0, 1, 1.82, 1.82 );
setScaleKey( spep_7 + 2, 1, 1.75, 1.75 );
setScaleKey( spep_7 + 4, 1, 1.69, 1.69 );
setScaleKey( spep_7 + 6, 1, 1.62, 1.62 );
setScaleKey( spep_7 + 8, 1, 1.56, 1.56 );
setScaleKey( spep_7 + 10, 1, 1.49, 1.49 );
setScaleKey( spep_7 + 12, 1, 1.43, 1.43 );
setScaleKey( spep_7 + 14, 1, 1.36, 1.36 );
setScaleKey( spep_7 + 17, 1, 1.3, 1.3 );
setScaleKey( spep_7 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_7 + 20, 1, 1.35, 1.35 );
setScaleKey( spep_7 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_7 + 24, 1, 1.45, 1.45 );
setScaleKey( spep_7 + 26, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 28, 1, 1.55, 1.55 );
setScaleKey( spep_7 + 30, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 32, 1, 1.65, 1.65 );
setScaleKey( spep_7 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_7 + 36, 1, 1.75, 1.75 );
setScaleKey( spep_7 + 38, 1, 1.8, 1.8 );
setScaleKey( spep_7 + 40, 1, 1.85, 1.85 );
setScaleKey( spep_7 + 42, 1, 1.9, 1.9 );
setScaleKey( spep_7 + 44, 1, 1.95, 1.95 );
setScaleKey( spep_7 + 46, 1, 2, 2 );
setScaleKey( spep_7 + 48, 1, 2.05, 2.05 );
setScaleKey( spep_7 + 50, 1, 2.1, 2.1 );
setScaleKey( spep_7 + 52, 1, 2.15, 2.15 );
setScaleKey( spep_7 + 54, 1, 2.2, 2.2 );
setScaleKey( spep_7 + 56, 1, 2.25, 2.25 );
setScaleKey( spep_7 + 58, 1, 2.3, 2.3 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 17, 1, 0 );
setRotateKey( spep_7 + 18, 1, 45.4 );
setRotateKey( spep_7 + 20, 1, 45.5 );

--バゴォッ　10021
ctVago = entryEffectLife( spep_7 + 18,  10021, 40, 0x100, -1, 0, 98.3, -6 );
setEffMoveKey( spep_7 + 18, ctVago, 98.3, -6 , 0 );
setEffMoveKey( spep_7 + 20, ctVago, 122.7, 7.4 , 0 );
setEffMoveKey( spep_7 + 22, ctVago, 132.3, 24 , 0 );
setEffMoveKey( spep_7 + 24, ctVago, 161.5, 36.3 , 0 );
setEffMoveKey( spep_7 + 26, ctVago, 166.3, 54 , 0 );
setEffMoveKey( spep_7 + 28, ctVago, 181, 50.8 , 0 );
setEffMoveKey( spep_7 + 30, ctVago, 166.3, 54 , 0 );
setEffMoveKey( spep_7 + 32, ctVago, 181.2, 50.7 , 0 );
setEffMoveKey( spep_7 + 34, ctVago, 166.2, 54.1 , 0 );
setEffMoveKey( spep_7 + 36, ctVago, 181.3, 50.7 , 0 );
setEffMoveKey( spep_7 + 38, ctVago, 166.2, 54.1 , 0 );
setEffMoveKey( spep_7 + 40, ctVago, 181.5, 50.6 , 0 );
setEffMoveKey( spep_7 + 42, ctVago, 166.2, 54.1 , 0 );
setEffMoveKey( spep_7 + 44, ctVago, 181.7, 50.6 , 0 );
setEffMoveKey( spep_7 + 46, ctVago, 166.3, 54 , 0 );
setEffMoveKey( spep_7 + 48, ctVago, 181.8, 50.6 , 0 );
setEffMoveKey( spep_7 + 50, ctVago, 166.3, 54 , 0 );
setEffMoveKey( spep_7 + 52, ctVago, 182, 50.6 , 0 );
setEffMoveKey( spep_7 + 54, ctVago, 166.3, 54 , 0 );
setEffMoveKey( spep_7 + 56, ctVago, 182.2, 50.5 , 0 );
setEffMoveKey( spep_7 + 58, ctVago, 166.3, 54 , 0 );

setEffScaleKey( spep_7 + 18, ctVago, 0.61, 0.61 );
setEffScaleKey( spep_7 + 20, ctVago, 0.9, 0.9 );
setEffScaleKey( spep_7 + 22, ctVago, 1.19, 1.19 );
setEffScaleKey( spep_7 + 24, ctVago, 1.48, 1.48 );
setEffScaleKey( spep_7 + 26, ctVago, 1.77, 1.77 );
setEffScaleKey( spep_7 + 28, ctVago, 1.78, 1.78 );
setEffScaleKey( spep_7 + 30, ctVago, 1.79, 1.79 );
setEffScaleKey( spep_7 + 32, ctVago, 1.8, 1.8 );
setEffScaleKey( spep_7 + 34, ctVago, 1.81, 1.81 );
setEffScaleKey( spep_7 + 36, ctVago, 1.82, 1.82 );
setEffScaleKey( spep_7 + 38, ctVago, 1.83, 1.83 );
setEffScaleKey( spep_7 + 40, ctVago, 1.84, 1.84 );
setEffScaleKey( spep_7 + 42, ctVago, 1.85, 1.85 );
setEffScaleKey( spep_7 + 44, ctVago, 1.86, 1.86 );
setEffScaleKey( spep_7 + 46, ctVago, 1.87, 1.87 );
setEffScaleKey( spep_7 + 48, ctVago, 1.88, 1.88 );
setEffScaleKey( spep_7 + 50, ctVago, 1.89, 1.89 );
setEffScaleKey( spep_7 + 52, ctVago, 1.9, 1.9 );
setEffScaleKey( spep_7 + 54, ctVago, 1.91, 1.91 );
setEffScaleKey( spep_7 + 56, ctVago, 1.92, 1.92 );
setEffScaleKey( spep_7 + 58, ctVago, 1.93, 1.93 );

setEffRotateKey( spep_7 + 18, ctVago, -32.4 );
setEffRotateKey( spep_7 + 20, ctVago, -32.5 );

setEffAlphaKey( spep_7 + 18, ctVago, 255 );

--流線
ryusen7 = entryEffectLife( spep_7 + 0,  921, 16, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, ryusen7, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, ryusen7, 1.79, 1.27 );
setEffRotateKey( spep_7 + 0, ryusen7, -112 );
setEffAlphaKey( spep_7 + 0, ryusen7, 255 );

playSe(spep_7,1003);
playSe(spep_7+6,1003);
playSe(spep_7+12,1003);
playSe(spep_7+18,1009);
------------------------------------------------------
-- Finish 
------------------------------------------------------
spep_8=spep_7+60;

entryFade( spep_8, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_8-1, 1, 1);
setMoveKey(  spep_8-1,    1,  100,  0,   0);
setScaleKey( spep_8-1,    1,  1.0, 1.0);
setMoveKey(  spep_8,    1,    0,   0,   128);
setScaleKey( spep_8,    1,  0.1, 0.1);

changeAnime( spep_8, 1, 107);                         -- 手前ダメージ
entryEffect( spep_8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_8+8, SE_10);

setMoveKey(  spep_8+8,   1,    0,   0,   128);
setMoveKey(  spep_8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_8+16,   1,  -60,  -200,  -100);
setDamage( spep_8+16, 1, 0);  -- ダメージ振動等
setShake(spep_8+7,6,15);
setShake(spep_8+13,15,10);

setRotateKey( spep_8,  1,  30 );
setRotateKey( spep_8+2,  1,  80 );
setRotateKey( spep_8+4,  1, 120 );
setRotateKey( spep_8+6,  1, 160 );
setRotateKey( spep_8+8,  1, 200 );
setRotateKey( spep_8+10,  1, 260 );
setRotateKey( spep_8+12,  1, 320 );
setRotateKey( spep_8+14,  1,   0 );

setShakeChara( spep_8+15, 1, 5,  10);
setShakeChara( spep_8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_8+15, ct, 30, 10);
setEffRotateKey( spep_8+15, ct, -40);
setEffScaleKey( spep_8+15, ct, 4.0, 4.0);
setEffScaleKey( spep_8+16, ct, 2.0, 2.0);
setEffScaleKey( spep_8+17, ct, 2.6, 2.6);
setEffScaleKey( spep_8+18, ct, 4.0, 4.0);
setEffScaleKey( spep_8+19, ct, 2.6, 2.6);
setEffScaleKey( spep_8+20, ct, 3.8, 3.8);
setEffScaleKey( spep_8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_8+15, ct, 255);
setEffAlphaKey( spep_8+105, ct, 255);
setEffAlphaKey( spep_8+115, ct, 0);

playSe( spep_8+3, SE_11);
shuchusen = entryEffectLife( spep_8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_8+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_8+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_8+16);
entryFade( spep_8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_8+110);

end
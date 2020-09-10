--1017720:超サイヤ人孫悟空_通常攻撃カウンター
--sp_effect_b4_00100


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

--味方側
SP_01=	153763	;--	登場
SP_02=	153764	;--	飛び立ち



------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;


setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );


if ((_IS_CRITICAL_ == 1) ) then --会心の場合

--entryFadeBg( 0, 30, 151, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 36, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( 36, shuchusen, 1.0, 1.0);

kaisinn = entryEffect( 39, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 手をたくさん動かす
------------------------------------------------------    
--次の準備
spep_0=28;



--エフェクトの再生
tame=entryEffect(spep_0,SP_01,0x100,-1,0,0,0);

setEffMoveKey(spep_0,tame,0,0,0);
setEffMoveKey(spep_0+250,tame,0,0,0);
setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+250,tame,1.0,1.0);
setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+250,tame,255);
setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+250,tame,0);

--SE
playSe( spep_0+26, 1117);--気を溜める
--SE1=playSe( spep_0+26, 55);--手をうごかす
--setSeVolume(spep_0+26, 55,50);

playSe( spep_0+68, 1045);--手をうごかす
setSeVolume(spep_0+68, 1045,60);

playSe( spep_0+88, 1045);--手をうごかす
setSeVolume(spep_0+88, 1045,60);

playSe( spep_0+110, 1045);--手をうごかす
setSeVolume(spep_0+110,1045,60);

playSe( spep_0+132, 1045);--手をうごかす
setSeVolume(spep_0+132, 1045,60);

playSe( spep_0+142, 1045);--手をうごかす
setSeVolume(spep_0+142, 1045,60);

playSe( spep_0+150, 1045);--手をうごかす
setSeVolume(spep_0+150, 1045,60);

--playSe( spep_0+158, 1054);--手をうごかす

playSe( spep_0+164, 1045);--手をうごかす
setSeVolume(spep_0+164, 1045,60);

--playSe( spep_0+170, 1045);--手をうごかす

playSe( spep_0+176, 1045);--手をうごかす
setSeVolume(spep_0+176, 1045,60);

playSe( spep_0+182, 1045);--手をうごかす
setSeVolume(spep_0+182, 1045,60);

playSe( spep_0+200, 1109);--瞬間移動

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 70,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 70, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 208, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 70, shuchusen1, 1.14, 1.84 );
setEffScaleKey( spep_0 -3 + 208, shuchusen1, 1.14, 1.84 );

setEffRotateKey( spep_0 -3 + 70, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 208, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 70, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 192, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 194, shuchusen1, 112 );
setEffAlphaKey( spep_0 -3 + 196, shuchusen1, 96 );
setEffAlphaKey( spep_0 -3 + 198, shuchusen1, 80 );
setEffAlphaKey( spep_0 -3 + 200, shuchusen1, 64 );
setEffAlphaKey( spep_0 -3 + 202, shuchusen1, 48 );
setEffAlphaKey( spep_0 -3 + 204, shuchusen1, 32 );
setEffAlphaKey( spep_0 -3 + 206, shuchusen1, 16 );
setEffAlphaKey( spep_0 -3 + 208, shuchusen1, 0 );


stopSe( spep_0+204, SE1, 20 );

--背景黒
entryFadeBg( spep_0 , 0,40, 0, 0, 0, 0, 130);       -- ベース暗め　背景
entryFadeBg( spep_0+38 , 2,210, 24, 0, 0, 0, 220);       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 68, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 130 );  -- white fade
entryFade( spep_0 + 88, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 130 );  -- white fade
entryFade( spep_0 + 110, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 130 );  -- white fade
entryFade( spep_0 + 132, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 130 );  -- white fade
entryFade( spep_0 + 250, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 130 );  -- white fade


--次の準備
spep_1=spep_0+250;

------------------------------------------------------
-- 背後に回って肘打ち
------------------------------------------------------    
--エフェクトの再生
attack=entryEffect(spep_1,SP_02,0x100,-1,0,0,0);

setEffMoveKey(spep_1,attack,0,0,0);
setEffMoveKey(spep_1+82,attack,0,0,0);
setEffScaleKey(spep_1,attack,1.0,1.0);
setEffScaleKey(spep_1+82,attack,1.0,1.0);
setEffAlphaKey(spep_1,attack,255);
setEffAlphaKey(spep_1+80,attack,255);
setEffAlphaKey(spep_1+81,attack,255);
setEffAlphaKey(spep_1+82,attack,0);
setEffRotateKey(spep_1,attack,0);
setEffRotateKey(spep_1+82,attack,0);

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 82, 1, 0 );
changeAnime( spep_1  + 0, 1, 102 );
changeAnime( spep_1 -3 + 34, 1, 5 );

setMoveKey( spep_1  + 0, 1, -132, 223.5 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, -130.4, 218.1 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -128.8, 212.8 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -127.2, 207.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -125.6, 202 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -124, 196.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -121.5, 193.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -119, 190.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -116.6, 187.1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -114.1, 183.9 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -111.6, 180.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -111, 181.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -110.5, 181.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -109.9, 182.4 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -109.3, 182.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -108.8, 183.4 , 0 );
setMoveKey( spep_1 -3 + 33, 1, -108.2, 184 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -167, 94.6 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -159.6, 94.1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -151.6, 93.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -143.2, 92.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -134.2, 91.2 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -136.4, 93.6 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -138.5, 96 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -140.7, 98.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -142.9, 100.8 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -145, 103.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -147.2, 105.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -149.4, 108 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -151.6, 110.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -153.7, 112.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -155.9, 115.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -158.1, 117.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -160.3, 119.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -162.4, 122.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -164.6, 124.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -174.8, 143 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -185, 161.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -195.1, 179.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -205.2, 197.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -215.4, 215.9 , 0 );
setMoveKey( spep_1  + 82, 1, -225.5, 234.1 , 0 );

setScaleKey( spep_1  + 0, 1, 1.72, 1.72 );
--setScaleKey( spep_1 -3 + 2, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 4, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 6, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 10, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 12, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 14, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 16, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 20, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 22, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 24, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 26, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 28, 1, 1.98, 1.98 );
setScaleKey( spep_1 -3 + 30, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 33, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 34, 1, 2.27, 2.27 );
setScaleKey( spep_1 -3 + 36, 1, 2.11, 2.11 );
setScaleKey( spep_1 -3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 40, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 42, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 44, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 46, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 48, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 50, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 52, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 54, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 56, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 58, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 60, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 62, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 64, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 66, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 68, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 70, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 72, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 74, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 76, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 78, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 80, 1, 0.28, 0.28 );
setScaleKey( spep_1  + 82, 1, 0.05, 0.05 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 33, 1, 0 );
setRotateKey( spep_1 -3 + 34, 1, -68.3 );
setRotateKey( spep_1 -3 + 38, 1, -68.3 );
setRotateKey( spep_1 -3 + 40, 1, -68.4 );
setRotateKey( spep_1 -3 + 54, 1, -68.4 );
setRotateKey( spep_1 -3 + 56, 1, -68.3 );
setRotateKey( spep_1  + 82, 1, -68.3 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 34,  906, 48 + 3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 34, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1  + 82, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 34, shuchusen2, 1.14, 1.84 );
setEffScaleKey( spep_1  + 82, shuchusen2, 1.14, 1.84 );

setEffRotateKey( spep_1 -3 + 34, shuchusen2, 180 );
setEffRotateKey( spep_1  + 82, shuchusen2, 180 );

setEffAlphaKey( spep_1 -3 + 34, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 74, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 76, shuchusen2, 96 );
setEffAlphaKey( spep_1 -3 + 78, shuchusen2, 64 );
setEffAlphaKey( spep_1 -3 + 80, shuchusen2, 32 );
setEffAlphaKey( spep_1  + 82, shuchusen2, 10 );

--文字エントリー

ctbaki = entryEffectLife( spep_1 -3 + 34,  10020, 22, 0x100, -1, 0, 93.9, 318.7 );--バキッ

setEffMoveKey( spep_1 -3 + 34, ctbaki, 93.9, 318.7 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctbaki, 86.3, 342.1 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctbaki, 93.8, 318.8 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctbaki, 88.1, 337 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctbaki, 93.9, 318.7 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctbaki, 89, 334 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctbaki, 94, 318.6 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctbaki, 89.3, 333.3 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctbaki, 94, 318.6 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctbaki, 94, 318.6 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctbaki, 89.5, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctbaki, 94, 318.7 , 0 );

setEffScaleKey( spep_1 -3 + 34, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 -3 + 36, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 -3 + 38, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_1 -3 + 40, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_1 -3 + 42, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 -3 + 44, ctbaki, 1.9, 1.9 );
setEffScaleKey( spep_1 -3 + 46, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_1 -3 + 48, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1 -3 + 50, ctbaki, 1.77, 1.77 );
setEffScaleKey( spep_1 -3 + 52, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 -3 + 54, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 -3 + 56, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 -3 + 34, ctbaki, 27.3 );
setEffRotateKey( spep_1 -3 + 56, ctbaki, 27.3 );

setEffAlphaKey( spep_1 -3 + 34, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 52, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 54, ctbaki, 134 );
setEffAlphaKey( spep_1 -3 + 56, ctbaki, 13 );

-- ** ホワイトフェード ** --
entryFade( spep_1 + 32, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 130 );  -- white fade
entryFade( spep_1 + 78, 4, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--SE
playSe( spep_1, 1047);--瞬間移動
--setSeVolume(spep_1, 1109,50);
playSe( spep_1+32, 1011);--肘打ち

--次の準備
spep_2=spep_1+82;

------------------------------------------------------
--  ガッ
------------------------------------------------------
if (_IS_DEAD_ == 1) then

    setDisp( spep_1+80 , 1, 1);
    endPhase(spep_1+82);
    
    else


-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_2 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_2 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_2 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_2 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_2 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_2 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_2 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_2 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_2 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_2 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_2 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_2 + 100, bakuhatsu, 255 );



-- ** ひび割れ ** --
hibiware = entryEffect( spep_2 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_2 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_2 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_2 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_2 + 2, hibiware, 0 );
setEffRotateKey( spep_2 + 100, hibiware, 0 );

setEffAlphaKey( spep_2 + 2, hibiware, 0 );
setEffAlphaKey( spep_2 + 13, hibiware, 0 );
setEffAlphaKey( spep_2 + 14, hibiware, 255 );
setEffAlphaKey( spep_2 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_g = entryEffectLife( spep_2 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 14, shuchusen_g, 32, 25 );

setEffMoveKey( spep_2 + 14, shuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, shuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_2 + 14, shuchusen_g, 1, 1 );
setEffScaleKey( spep_2 + 46, shuchusen_g, 1, 1 );

setEffRotateKey( spep_2 + 14, shuchusen_g, 0 );
setEffRotateKey( spep_2 + 46, shuchusen_g, 0 );

setEffAlphaKey( spep_2 + 14, shuchusen_g, 255 );
setEffAlphaKey( spep_2 + 28, shuchusen_g, 255 );
setEffAlphaKey( spep_2 + 30, shuchusen_g, 252 );
setEffAlphaKey( spep_2 + 32, shuchusen_g, 242 );
setEffAlphaKey( spep_2 + 34, shuchusen_g, 227 );
setEffAlphaKey( spep_2 + 36, shuchusen_g, 205 );
setEffAlphaKey( spep_2 + 38, shuchusen_g, 176 );
setEffAlphaKey( spep_2 + 40, shuchusen_g, 142 );
setEffAlphaKey( spep_2 + 42, shuchusen_g, 101 );
setEffAlphaKey( spep_2 + 44, shuchusen_g, 54 );
setEffAlphaKey( spep_2 + 46, shuchusen_g, 0 );

kuroshuchusen_g = entryEffectLife( spep_2 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_2 + 14, kuroshuchusen_g, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, kuroshuchusen_g, 0, 0 , 0 );

setEffScaleKey( spep_2 + 14, kuroshuchusen_g, 1, 1 );
setEffScaleKey( spep_2 + 100, kuroshuchusen_g, 1, 1 );

setEffRotateKey( spep_2 + 14, kuroshuchusen_g, 0 );
setEffRotateKey( spep_2 + 100, kuroshuchusen_g, 0 );

setEffAlphaKey( spep_2 + 14, kuroshuchusen_g, 255 );
setEffAlphaKey( spep_2 + 100, kuroshuchusen_g, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_2 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_2 + 14, ctga, 14, 20 );

setEffMoveKey( spep_2 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_2 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_2 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_2 + 14, ctga, -10.9 );
setEffRotateKey( spep_2 + 15, ctga, -10.9 );
setEffRotateKey( spep_2 + 16, ctga, -14.9 );
setEffRotateKey( spep_2 + 17, ctga, -14.9 );
setEffRotateKey( spep_2 + 18, ctga, -10.9 );
setEffRotateKey( spep_2 + 19, ctga, -10.9 );
setEffRotateKey( spep_2 + 20, ctga, -14.9 );
setEffRotateKey( spep_2 + 21, ctga, -14.9 );
setEffRotateKey( spep_2 + 22, ctga, -10.9 );
setEffRotateKey( spep_2 + 23, ctga, -10.9 );
setEffRotateKey( spep_2 + 24, ctga, -14.9 );
setEffRotateKey( spep_2 + 25, ctga, -14.9 );
setEffRotateKey( spep_2 + 26, ctga, -10.9 );
setEffRotateKey( spep_2 + 27, ctga, -10.9 );
setEffRotateKey( spep_2 + 28, ctga, -14.9 );
setEffRotateKey( spep_2 + 100, ctga, -14.9 );

setEffAlphaKey( spep_2 + 14, ctga, 255 );
setEffAlphaKey( spep_2 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_2 + 0, 1, 31, -3.9 , 0 );
--setMoveKey( spep_2 + 0, 1, 36.2, 7.9 , 0 );
--setMoveKey( spep_2 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_2 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_2 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_2 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_2 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_2 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_2 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_2 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_2 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_2 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_2 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_2 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_2 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_2 + 0, 1, 0.3, 0.3 );
--setScaleKey( spep_2 + 2, 1, 0.35, 0.35 );
--setScaleKey( spep_2 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 110, 1, 1.6, 1.6 );


setRotateKey( spep_2 + 0, 1, -40 );
setRotateKey( spep_2 + 1, 1, -40 );
setRotateKey( spep_2 + 2, 1, 80 );
setRotateKey( spep_2 + 3, 1, 80 );
setRotateKey( spep_2 + 4, 1, 200 );
setRotateKey( spep_2 + 5, 1, 200 );
setRotateKey( spep_2 + 6, 1, 360 );
setRotateKey( spep_2 + 7, 1, 360 );
setRotateKey( spep_2 + 8, 1, 558 );
setRotateKey( spep_2 + 9, 1, 558 );
setRotateKey( spep_2 + 10, 1, 425 );
setRotateKey( spep_2 + 11, 1, 425 );
setRotateKey( spep_2 + 12, 1, -40 );
setRotateKey( spep_2 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_2 + 0, 1023 );  --爆発音
playSe( spep_2 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 14 );
endPhase( spep_2 + 100 );

end

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = 110; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    
        if (_IS_PLAYER_SIDE_ == 1) then
    
            setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    
        else
    
            setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
    
        end
    
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    setMoveKey(  SP_dodge+5, 0, -750,  70,   -30);-- 中央位置から
    setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
    --setDisp( SP_dodge+5, 0, 0);
    
    endPhase(SP_dodge+10);
    do return end
    else end
    
    print ("[lua]sp0012 end");





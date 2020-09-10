--1015260:孫悟飯(青年期)_ゼットソードスラッシュ
--sp_effect_b2_00032

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

--エフェクト(味方)
SP_01=	155356	;--	導入→突進
SP_02=	155357	;--	突進→三連撃：敵より前
SP_03=	155358	;--	突進→三連撃：敵より後ろ
SP_04=	155359	;--	セリフカットイン
SP_05=	155360	;--	正面突撃
SP_06=	155361	;--	正面向き画面横切り
SP_07=	155362	;--	ラスト爆発

--エフェクト(てき)
SP_01x=	155363	;--	導入→突進	(敵)
SP_02x=	155364	;--	突進→三連撃：敵より前	(敵)
SP_03x=	155358	;--	突進→三連撃：敵より後ろ	
SP_04x=	155365	;--	セリフカットイン	(敵)
SP_05x=	155360	;--	正面突撃	
SP_06x=	155361	;--	正面向き画面横切り	
SP_07x=	155362	;--	ラスト爆発	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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


setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入→突進
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
beginning = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, beginning, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, beginning, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning, 0 );
setEffRotateKey( spep_0 + 56, beginning, 0 );
setEffAlphaKey( spep_0 + 0, beginning, 255 );
setEffAlphaKey( spep_0 + 56, beginning, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 60, 0,  0, 0, 0, 180 ); --くろ 背景

--SE
SE0=playSe( spep_0 + 0, 8 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--se
playSe( spep_0 + 5, 1183 );
setSeVolume( spep_0 + 5, 1183, 0 );
setSeVolume( spep_0 + 43, 1183, 0 );
setSeVolume( spep_0 + 44, 1183, 33 );
setSeVolume( spep_0 + 45, 1183, 66 );
setSeVolume( spep_0 + 46, 1183, 100 );
playSe( spep_0 + 43, 1182 );
setSeVolume( spep_0 + 43, 1182, 126 );

-- ** 次の準備 ** --
spep_1=spep_0+56;

------------------------------------------------------
-- 突進→三連撃
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 128, rush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 128, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 128, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 128, rush_f, 255 );
setEffAlphaKey( spep_1 + 129, rush_f, 0 );
setEffAlphaKey( spep_1 + 130, rush_f, 0 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 128, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 128, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 128, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 128, rush_b, 255 );
setEffAlphaKey( spep_1 + 129, rush_b, 0 );
setEffAlphaKey( spep_1 + 130, rush_b, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_1-3 + 48,  906, 2, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 48, shuchusen1, 2, 20 );
setEffMoveKey( spep_1-3 + 48, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 50, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 48, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_1-3 + 50, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_1-3 + 48, shuchusen1, 180 );
setEffRotateKey( spep_1-3 + 50, shuchusen1, 180 );

setEffAlphaKey( spep_1-3 + 48, shuchusen1, 255 );
setEffAlphaKey( spep_1-3 + 50, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 76,  906, 2, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 76, shuchusen2, 2, 20 );
setEffMoveKey( spep_1-3 + 76, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 78, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 76, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_1-3 + 78, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_1-3 + 76, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 76, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 78, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1-3 + 106,  906, 4, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 106, shuchusen3, 4, 20 );
setEffMoveKey( spep_1-3 + 106, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 110, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 106, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_1-3 + 110, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_1-3 + 106, shuchusen3, 180 );
setEffRotateKey( spep_1-3 + 110, shuchusen3, 180 );

setEffAlphaKey( spep_1-3 + 106, shuchusen3, 255 );
setEffAlphaKey( spep_1-3 + 110, shuchusen3, 255 );

--文字エントリー
ctzan = entryEffectLife( spep_1-3 + 48,  10010, 16, 0x100, -1, 0, -159.4, 261.1 );
setEffShake( spep_1-3 + 48, ctzan, 16, 10 );
setEffMoveKey( spep_1-3 + 48, ctzan, -159.4, 261.1 , 0 );
setEffMoveKey( spep_1-3 + 50, ctzan, -122.5, 292.2 , 0 );
setEffMoveKey( spep_1-3 + 52, ctzan, -85.7, 323.3 , 0 );
setEffMoveKey( spep_1-3 + 54, ctzan, -97.8, 318.1 , 0 );
setEffMoveKey( spep_1-3 + 56, ctzan, -109.9, 312.9 , 0 );
setEffMoveKey( spep_1-3 + 58, ctzan, -113.8, 311.5 , 0 );
setEffMoveKey( spep_1-3 + 60, ctzan, -117.8, 310.1 , 0 );
setEffMoveKey( spep_1-3 + 62, ctzan, -121.7, 308.7 , 0 );
setEffMoveKey( spep_1-3 + 64, ctzan, -125.7, 307.3 , 0 );

setEffScaleKey( spep_1-3 + 48, ctzan, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 64, ctzan, 1.8, 1.8 );

setEffRotateKey( spep_1-3 + 48, ctzan, -9.8 );
setEffRotateKey( spep_1-3 + 50, ctzan, -10 );
setEffRotateKey( spep_1-3 + 64, ctzan, -10 );

setEffAlphaKey( spep_1-3 + 48, ctzan, 255 );
setEffAlphaKey( spep_1-3 + 64, ctzan, 255 );

--文字エントリー
ctzazan = entryEffectLife( spep_1-3 + 76,  10009, 14, 0x100, -1, 0, -9.3, 241.2 );
setEffShake( spep_1-3 + 76, ctzazan, 14, 10 );
setEffMoveKey( spep_1-3 + 76, ctzazan, -9.3, 241.2 , 0 );
setEffMoveKey( spep_1-3 + 78, ctzazan, -11, 267.9 , 0 );
setEffMoveKey( spep_1-3 + 80, ctzazan, -12.6, 294.5 , 0 );
setEffMoveKey( spep_1-3 + 82, ctzazan, -9.2, 298.1 , 0 );
setEffMoveKey( spep_1-3 + 84, ctzazan, -5.8, 301.7 , 0 );
setEffMoveKey( spep_1-3 + 86, ctzazan, -2.4, 305.3 , 0 );
setEffMoveKey( spep_1-3 + 88, ctzazan, 1, 308.9 , 0 );
setEffMoveKey( spep_1-3 + 90, ctzazan, 4.4, 312.5 , 0 );

setEffScaleKey( spep_1-3 + 76, ctzazan, 0.5, 0.5 );
setEffScaleKey( spep_1-3 + 78, ctzazan, 1.15, 1.15 );
setEffScaleKey( spep_1-3 + 80, ctzazan, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 90, ctzazan, 1.8, 1.8 );

setEffRotateKey( spep_1-3 + 76, ctzazan, 12 );
setEffRotateKey( spep_1-3 + 90, ctzazan, 12 );

setEffAlphaKey( spep_1-3 + 76, ctzazan, 255 );
setEffAlphaKey( spep_1-3 + 90, ctzazan, 255 );

--文字エントリー
ctzan2 = entryEffectLife( spep_1-3 + 106,  10010, 18, 0x100, -1, 0, 28.8, 234.6 );
setEffShake( spep_1-3 + 106, ctzan2, 18, 10 );
setEffMoveKey( spep_1-3 + 106, ctzan2, 28.8, 234.6 , 0 );
setEffMoveKey( spep_1-3 + 108, ctzan2, 47.9, 279 , 0 );
setEffMoveKey( spep_1-3 + 110, ctzan2, 66.9, 323.4 , 0 );
setEffMoveKey( spep_1-3 + 112, ctzan2, 70.3, 324.4 , 0 );
setEffMoveKey( spep_1-3 + 114, ctzan2, 73.6, 325.5 , 0 );
setEffMoveKey( spep_1-3 + 116, ctzan2, 77, 326.5 , 0 );
setEffMoveKey( spep_1-3 + 118, ctzan2, 80.4, 327.5 , 0 );
setEffMoveKey( spep_1-3 + 120, ctzan2, 83.7, 328.5 , 0 );
setEffMoveKey( spep_1-3 + 122, ctzan2, 87.1, 329.6 , 0 );
setEffMoveKey( spep_1-3 + 124, ctzan2, 90.5, 330.6 , 0 );

setEffScaleKey( spep_1-3 + 106, ctzan2, 0.5, 0.5 );
setEffScaleKey( spep_1-3 + 108, ctzan2, 1.15, 1.15 );
setEffScaleKey( spep_1-3 + 110, ctzan2, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 112, ctzan2, 1.83, 1.83 );
setEffScaleKey( spep_1-3 + 114, ctzan2, 1.86, 1.86 );
setEffScaleKey( spep_1-3 + 116, ctzan2, 1.89, 1.89 );
setEffScaleKey( spep_1-3 + 118, ctzan2, 1.91, 1.91 );
setEffScaleKey( spep_1-3 + 120, ctzan2, 1.94, 1.94 );
setEffScaleKey( spep_1-3 + 122, ctzan2, 1.97, 1.97 );
setEffScaleKey( spep_1-3 + 124, ctzan2, 2, 2 );

setEffRotateKey( spep_1-3 + 106, ctzan2, 10 );
setEffRotateKey( spep_1-3 + 124, ctzan2, 10 );

setEffAlphaKey( spep_1-3 + 106, ctzan2, 255 );
setEffAlphaKey( spep_1-3 + 124, ctzan2, 255 );


--敵の動き
setDisp( spep_1-3 + 22, 1, 1);
setDisp( spep_1-3 + 122, 1, 0);

changeAnime( spep_1-3 + 22, 1, 100);
changeAnime( spep_1-3 + 48, 1, 108);
changeAnime( spep_1-3 + 76, 1, 106);
changeAnime( spep_1-3 + 106, 1, 108);

setMoveKey( spep_1-3 + 22, 1, 1092.7, 81.1 , 0 );
setMoveKey( spep_1-3 + 24, 1, 919.3, 76.9 , 0 );
setMoveKey( spep_1-3 + 26, 1, 745, 72.7 , 0 );
setMoveKey( spep_1-3 + 28, 1, 572, 68.6 , 0 );
setMoveKey( spep_1-3 + 30, 1, 539.1, 67.2 , 0 );
setMoveKey( spep_1-3 + 32, 1, 502.4, 65.8 , 0 );
setMoveKey( spep_1-3 + 34, 1, 462.2, 64.4 , 0 );
setMoveKey( spep_1-3 + 36, 1, 418.6, 62.9 , 0 );
setMoveKey( spep_1-3 + 38, 1, 371.8, 61.5 , 0 );
setMoveKey( spep_1-3 + 40, 1, 322, 60.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, 269.5, 58.6 , 0 );
setMoveKey( spep_1-3 + 44, 1, 214.5, 57.2 , 0 );
setMoveKey( spep_1-3 + 46, 1, 97.5, 55.7 , 0 );
setMoveKey( spep_1-3 + 47, 1, 97.5, 55.7 , 0 );

setMoveKey( spep_1-3 + 48, 1, 247.3, 80.6 , 0 );
setMoveKey( spep_1-3 + 50, 1, 189.1, 80.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 116.9, 61.7 , 0 );
setMoveKey( spep_1-3 + 54, 1, 120.9, 72.2 , 0 );
setMoveKey( spep_1-3 + 56, 1, 120.9, 74.6 , 0 );
setMoveKey( spep_1-3 + 58, 1, 120.9, 77.1 , 0 );
setMoveKey( spep_1-3 + 60, 1, 120.9, 79.5 , 0 );
setMoveKey( spep_1-3 + 62, 1, 120.8, 81.9 , 0 );
setMoveKey( spep_1-3 + 64, 1, 120.7, 84.2 , 0 );
setMoveKey( spep_1-3 + 66, 1, 120.6, 86.5 , 0 );
setMoveKey( spep_1-3 + 68, 1, 120.5, 88.8 , 0 );
setMoveKey( spep_1-3 + 70, 1, 123.1, 91.3 , 0 );
setMoveKey( spep_1-3 + 72, 1, 125.6, 93.8 , 0 );
setMoveKey( spep_1-3 + 74, 1, 128.2, 96.3 , 0 );
setMoveKey( spep_1-3 + 75, 1, 128.2, 96.3 , 0 );

setMoveKey( spep_1-3 + 76, 1, 96.7, 111.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 53.2, 98.3 , 0 );
setMoveKey( spep_1-3 + 80, 1, 55.9, 87.7 , 0 );
setMoveKey( spep_1-3 + 82, 1, 66.5, 93.1 , 0 );
setMoveKey( spep_1-3 + 84, 1, 73.2, 90.5 , 0 );
setMoveKey( spep_1-3 + 86, 1, 79.8, 87.9 , 0 );
setMoveKey( spep_1-3 + 88, 1, 86.5, 85.3 , 0 );
setMoveKey( spep_1-3 + 90, 1, 93.1, 82.7 , 0 );
setMoveKey( spep_1-3 + 92, 1, 99.8, 80.1 , 0 );
setMoveKey( spep_1-3 + 94, 1, 106.4, 77.4 , 0 );
setMoveKey( spep_1-3 + 96, 1, 113.1, 74.9 , 0 );
setMoveKey( spep_1-3 + 98, 1, 119.8, 72.2 , 0 );
setMoveKey( spep_1-3 + 100, 1, 126.4, 69.6 , 0 );
setMoveKey( spep_1-3 + 102, 1, 129.1, 59 , 0 );
setMoveKey( spep_1-3 + 104, 1, 139.8, 64.5 , 0 );
setMoveKey( spep_1-3 + 105, 1, 139.8, 64.5 , 0 );

setMoveKey( spep_1-3 + 106, 1, 257.5, 55.8 , 0 );
setMoveKey( spep_1-3 + 108, 1, 348.5, 66.2 , 0 );
setMoveKey( spep_1-3 + 110, 1, 427.7, 64.7 , 0 );
setMoveKey( spep_1-3 + 112, 1, 522.7, 79.1 , 0 );
setMoveKey( spep_1-3 + 114, 1, 609.8, 85.6 , 0 );
setMoveKey( spep_1-3 + 116, 1, 696.8, 92 , 0 );
setMoveKey( spep_1-3 + 118, 1, 783.9, 98.5 , 0 );
setMoveKey( spep_1-3 + 120, 1, 871, 104.9 , 0 );
setMoveKey( spep_1-3 + 122, 1, 958.1, 111.4 , 0 );

setScaleKey( spep_1-3 + 22, 1, 2.37, 2.37 );
setScaleKey( spep_1-3 + 24, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 26, 1, 1.83, 1.83 );
setScaleKey( spep_1-3 + 28, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 30, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 32, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 34, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 36, 1, 1.48, 1.48 );
setScaleKey( spep_1-3 + 38, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 40, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 42, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 44, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 46, 1, 1.4, 1.4 );
setScaleKey( spep_1-3 + 47, 1, 1.4, 1.4 );

setScaleKey( spep_1-3 + 48, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 50, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 52, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 54, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 56, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 58, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 60, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 62, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 64, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 66, 1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 68, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 74, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 75, 1, 1.52, 1.52 );

setScaleKey( spep_1-3 + 78, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 82, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 84, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 88, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 90, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 92, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 94, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 98, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 100, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 105, 1, 1.42, 1.42 );

setScaleKey( spep_1-3 + 106, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 122, 1, 1.74, 1.74 );

setRotateKey( spep_1-3 + 22, 1, 0 );
setRotateKey( spep_1-3 + 75, 1, 0 );

setRotateKey( spep_1-3 + 76, 1, -40.1 );
setRotateKey( spep_1-3 + 78, 1, -39.7 );
setRotateKey( spep_1-3 + 80, 1, -39.3 );
setRotateKey( spep_1-3 + 82, 1, -38.9 );
setRotateKey( spep_1-3 + 84, 1, -38.5 );
setRotateKey( spep_1-3 + 86, 1, -38.2 );
setRotateKey( spep_1-3 + 88, 1, -37.8 );
setRotateKey( spep_1-3 + 90, 1, -37.4 );
setRotateKey( spep_1-3 + 92, 1, -37 );
setRotateKey( spep_1-3 + 94, 1, -36.6 );
setRotateKey( spep_1-3 + 96, 1, -36.2 );
setRotateKey( spep_1-3 + 98, 1, -35.8 );
setRotateKey( spep_1-3 + 100, 1, -35.4 );
setRotateKey( spep_1-3 + 102, 1, -35 );
setRotateKey( spep_1-3 + 104, 1, -34.6 );
setRotateKey( spep_1-3 + 105, 1, -34.6 );

setRotateKey( spep_1-3 + 106, 1, 0 );
setRotateKey( spep_1-3 + 108, 1, 2.4 );
setRotateKey( spep_1-3 + 110, 1, 4.8 );
setRotateKey( spep_1-3 + 112, 1, 7.2 );
setRotateKey( spep_1-3 + 114, 1, 9.7 );
setRotateKey( spep_1-3 + 116, 1, 12.1 );
setRotateKey( spep_1-3 + 118, 1, 14.5 );
setRotateKey( spep_1-3 + 120, 1, 16.9 );
setRotateKey( spep_1-3 + 122, 1, 19.3 );

--SE
playSe( spep_1 + 48, 1003 );
playSe( spep_1 + 52, 1032 );
setSeVolume( spep_1 + 52, 1141, 63 );
playSe( spep_1 + 52, 1141 );
playSe( spep_1 + 81, 1032 );
playSe( spep_1 + 81, 1143 );
setSeVolume( spep_1 + 81, 1143, 45 );
playSe( spep_1 + 111, 1061 );
setSeVolume( spep_1 + 111, 1061, 112 );
playSe( spep_1 + 113, 1142 );
playSe( spep_1 + 114, 1009 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 140, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_1+120 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+128;
------------------------------------------------------
-- セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 100, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 100, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusen4 = entryEffectLife( spep_2-3 + 42,  906, 56, 0x81, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 42, shuchusen4, 56, 20 );
setEffMoveKey( spep_2-3 + 42, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 98, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 42, shuchusen4, 1, 1 );
setEffScaleKey( spep_2-3 + 98, shuchusen4, 1, 1 );

setEffRotateKey( spep_2-3 + 42, shuchusen4, 0 );
setEffRotateKey( spep_2-3 + 98, shuchusen4, 0 );

setEffAlphaKey( spep_2-3 + 42, shuchusen4, 255 );
setEffAlphaKey( spep_2-3 + 98, shuchusen4, 255 );

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +12, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +12,  ctgogo,  100,  510);
setEffMoveKey(  spep_2 +84,  ctgogo,  100,  510);

setEffAlphaKey( spep_2 +12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 191 );
setEffAlphaKey( spep_2 + 82, ctgogo, 112 );
setEffAlphaKey( spep_2 + 84, ctgogo, 64 );

setEffRotateKey(  spep_2 +12,  ctgogo,  0);
setEffRotateKey(  spep_2 +84,  ctgogo,  0);

setEffScaleKey(  spep_2 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +72,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +84,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_2 + 12, 1018 );
playSe( spep_2 + 32, 1232 );
playSe( spep_2 + 41, 1221 );
setSeVolume( spep_2 + 41, 1221, 89 );
playSe( spep_2 + 41, 1042 );
setSeVolume( spep_2 + 41, 1042, 89 );
playSe( spep_2 + 41, 1026 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 102, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_2+26 , 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2+92 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3=spep_2+100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );


--白フェード
entryFade( spep_3 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 正面突撃
------------------------------------------------------
-- ** エフェクト等 ** --
rush2 = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, rush2, 0, 0, 0 );
setEffMoveKey( spep_4 + 60, rush2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rush2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, rush2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rush2, 0 );
setEffRotateKey( spep_4 + 60, rush2, 0 );
setEffAlphaKey( spep_4 + 0, rush2, 255 );
setEffAlphaKey( spep_4 + 60, rush2, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_4 + 0,  906, 58, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen5, 58, 20 );
setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 58, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 58, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 58, shuchusen5, 255 );

--SE
playSe( spep_4 + 0, 9 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 62, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_4 + 50, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 60;

------------------------------------------------------
-- 正面向き画面横切り
------------------------------------------------------
-- ** エフェクト等 ** --
slash = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, slash, 0, 0, 0 );
setEffMoveKey( spep_5 + 96, slash, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, slash, 1.0, 1.0 );
setEffScaleKey( spep_5 + 96, slash, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, slash, 0 );
setEffRotateKey( spep_5 + 96, slash, 0 );
setEffAlphaKey( spep_5 + 0, slash, 255 );
setEffAlphaKey( spep_5 + 96, slash, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_5-3 + 20,  906, 74, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 20, shuchusen6, 74, 20 );
setEffMoveKey( spep_5-3 + 20, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5-3 + 94, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 20, shuchusen6, 1.1, 1.1 );
setEffScaleKey( spep_5-3 + 94, shuchusen6, 1.1, 1.1 );

setEffRotateKey( spep_5-3 + 20, shuchusen6, 180 );
setEffRotateKey( spep_5-3 + 94, shuchusen6, 180 );

setEffAlphaKey( spep_5-3 + 20, shuchusen6, 255 );
setEffAlphaKey( spep_5-3 + 94, shuchusen6, 255 );

--se
playSe( spep_5 + 4, 1003 );
playSe( spep_5 + 7, 1238 );
se_1126 = playSe( spep_5 + 12, 1126 );
setSeVolume( spep_5 + 12, 1126, 16 );
setSeVolume( spep_5 + 63,1126,15.84);
setSeVolume( spep_5 + 64,1126,15.68);
setSeVolume( spep_5 + 65,1126,15.52);
setSeVolume( spep_5 + 66,1126,15.36);
setSeVolume( spep_5 + 67,1126,15.2);
setSeVolume( spep_5 + 68,1126,15.04);
setSeVolume( spep_5 + 69,1126,14.88);
setSeVolume( spep_5 + 70,1126,14.72);
setSeVolume( spep_5 + 71,1126,14.56);
setSeVolume( spep_5 + 72,1126,14.4);
setSeVolume( spep_5 + 73,1126,14.24);
setSeVolume( spep_5 + 74,1126,14.08);
setSeVolume( spep_5 + 75,1126,13.92);
setSeVolume( spep_5 + 76,1126,13.76);
setSeVolume( spep_5 + 77,1126,13.6);
setSeVolume( spep_5 + 78,1126,13.44);
setSeVolume( spep_5 + 79,1126,13.28);
setSeVolume( spep_5 + 80,1126,13.12);
setSeVolume( spep_5 + 81,1126,12.96);
setSeVolume( spep_5 + 82,1126,12.8);
setSeVolume( spep_5 + 83,1126,12.64);
setSeVolume( spep_5 + 84,1126,12.48);
setSeVolume( spep_5 + 85,1126,12.32);
setSeVolume( spep_5 + 86,1126,12.16);
setSeVolume( spep_5 + 87,1126,12);
setSeVolume( spep_5 + 88,1126,11.84);
setSeVolume( spep_5 + 89,1126,11.68);
setSeVolume( spep_5 + 90,1126,11.52);
setSeVolume( spep_5 + 91,1126,11.36);
setSeVolume( spep_5 + 92,1126,11.2);
setSeVolume( spep_5 + 93,1126,11.04);
setSeVolume( spep_5 + 94,1126,10.88);
setSeVolume( spep_5 + 95,1126,10.72);
setSeVolume( spep_5 + 96,1126,10.56);
setSeVolume( spep_5 + 97,1126,10.4);
setSeVolume( spep_5 + 98,1126,10.24);
setSeVolume( spep_5 + 99,1126,10.08);
setSeVolume( spep_5 + 100,1126,9.92);
setSeVolume( spep_5 + 101,1126,9.76);
setSeVolume( spep_5 + 102,1126,9.6);
setSeVolume( spep_5 + 103,1126,9.44);
setSeVolume( spep_5 + 104,1126,9.28);
setSeVolume( spep_5 + 105,1126,9.12);
setSeVolume( spep_5 + 106,1126,8.96);
setSeVolume( spep_5 + 107,1126,8.8);
setSeVolume( spep_5 + 108,1126,8.64);
setSeVolume( spep_5 + 109,1126,8.48);
setSeVolume( spep_5 + 110,1126,8.32);
setSeVolume( spep_5 + 111,1126,8.16);
setSeVolume( spep_5 + 112,1126,8);
setSeVolume( spep_5 + 113,1126,7.84);
setSeVolume( spep_5 + 114,1126,7.68);
setSeVolume( spep_5 + 115,1126,7.52);
setSeVolume( spep_5 + 116,1126,7.36);
setSeVolume( spep_5 + 117,1126,7.2);
setSeVolume( spep_5 + 118,1126,7.04);
setSeVolume( spep_5 + 119,1126,6.88);
setSeVolume( spep_5 + 120,1126,6.72);
setSeVolume( spep_5 + 121,1126,6.56);
setSeVolume( spep_5 + 122,1126,6.4);
setSeVolume( spep_5 + 123,1126,6.24);
setSeVolume( spep_5 + 124,1126,6.08);
setSeVolume( spep_5 + 125,1126,5.92);
setSeVolume( spep_5 + 126,1126,5.76);
setSeVolume( spep_5 + 127,1126,5.6);
setSeVolume( spep_5 + 128,1126,5.44);
setSeVolume( spep_5 + 129,1126,5.28);
setSeVolume( spep_5 + 130,1126,5.12);
setSeVolume( spep_5 + 131,1126,4.96);
setSeVolume( spep_5 + 132,1126,4.8);
setSeVolume( spep_5 + 133,1126,4.64);
setSeVolume( spep_5 + 134,1126,4.48);
setSeVolume( spep_5 + 135,1126,4.32);
setSeVolume( spep_5 + 136,1126,4.16);
setSeVolume( spep_5 + 137,1126,4);
setSeVolume( spep_5 + 138,1126,3.84);
setSeVolume( spep_5 + 139,1126,3.68);
setSeVolume( spep_5 + 140,1126,3.52);
setSeVolume( spep_5 + 141,1126,3.36);
setSeVolume( spep_5 + 142,1126,3.2);
setSeVolume( spep_5 + 143,1126,3.04);
setSeVolume( spep_5 + 144,1126,2.88);
setSeVolume( spep_5 + 145,1126,2.72);
setSeVolume( spep_5 + 146,1126,2.56);
setSeVolume( spep_5 + 147,1126,2.4);
setSeVolume( spep_5 + 148,1126,2.24);
setSeVolume( spep_5 + 149,1126,2.08);
setSeVolume( spep_5 + 150,1126,1.92);
setSeVolume( spep_5 + 151,1126,1.76);
setSeVolume( spep_5 + 152,1126,1.6);
setSeVolume( spep_5 + 153,1126,1.44);
setSeVolume( spep_5 + 154,1126,1.28);
setSeVolume( spep_5 + 155,1126,1.12);
setSeVolume( spep_5 + 156,1126,0.96);
setSeVolume( spep_5 + 157,1126,0.8);
setSeVolume( spep_5 + 158,1126,0.64);
setSeVolume( spep_5 + 159,1126,0.48);
setSeVolume( spep_5 + 160,1126,0.32);
setSeVolume( spep_5 + 161,1126,0.16);
setSeVolume( spep_5 + 162,1126,0);
playSe( spep_5 + 12, 1032 );
playSe( spep_5 + 18, 1031 );
setSeVolume( spep_5 + 18, 1031, 79 );

--stopSe( spep_5 + 63, se_1126, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 100, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_5 + 88, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 96;
------------------------------------------------------
-- ラスト爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_6 + 240, explosion, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_6 + 240, explosion, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 240, explosion, 0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 240, explosion, 255 );

--集中線
shuchusen7 = entryEffectLife( spep_6-3 + 42,  906, 196, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6-3 + 42, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_6-3 + 238, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_6-3 + 42, shuchusen7, 1.1, 1.1 );
setEffScaleKey( spep_6-3 + 238, shuchusen7, 1.1, 1.1 );

setEffRotateKey( spep_6-3 + 42, shuchusen7, 180 );
setEffRotateKey( spep_6-3 + 238, shuchusen7, 180 );

setEffAlphaKey( spep_6-3 + 42, shuchusen7, 255 );
setEffAlphaKey( spep_6-3 + 238, shuchusen7, 255 );

--SE
playSe( spep_6 + 2, 1042 );
playSe( spep_6 + 5, 1141 );
setSeVolume( spep_6 + 5, 1141, 63 );
playSe( spep_6 + 33, 1017 );
setSeVolume( spep_6 + 33, 1017, 0 );
setSeVolume( spep_6 + 34, 1017, 5 );
setSeVolume( spep_6 + 35, 1017, 10 );
setSeVolume( spep_6 + 36, 1017, 15 );
setSeVolume( spep_6 + 37, 1017, 20 );
setSeVolume( spep_6 + 38, 1017, 25 );
setSeVolume( spep_6 + 39, 1017, 30 );
setSeVolume( spep_6 + 40, 1017, 35 );
setSeVolume( spep_6 + 41, 1017, 40 );
setSeVolume( spep_6 + 42, 1017, 45 );
setSeVolume( spep_6 + 43, 1017, 50 );
setSeVolume( spep_6 + 44, 1017, 55 );
setSeVolume( spep_6 + 45, 1017, 60 );
setSeVolume( spep_6 + 46, 1017, 65 );
setSeVolume( spep_6 + 47, 1017, 70 );
setSeVolume( spep_6 + 48, 1017, 75 );
setSeVolume( spep_6 + 49, 1017, 80 );
setSeVolume( spep_6 + 50, 1017, 85 );
setSeVolume( spep_6 + 51, 1017, 90 );
setSeVolume( spep_6 + 52, 1017, 95 );
setSeVolume( spep_6 + 53, 1017, 100 );
se_1128 = playSe( spep_6 + 43, 1128 );
setSeVolume( spep_6 + 43, 1128, 56 );
playSe( spep_6 + 100, 1023 );
setSeVolume( spep_6 + 100, 1023, 89 );
playSe( spep_6 + 100, 1159 );
setSeVolume( spep_6 + 100, 1159, 79 );
playSe( spep_6 + 108, 1011 );
setSeVolume( spep_6 + 108, 1011, 0 );
setSeVolume( spep_6 + 109, 1011, 11.11 );
setSeVolume( spep_6 + 110, 1011, 22.22 );
setSeVolume( spep_6 + 111, 1011, 33.33 );
setSeVolume( spep_6 + 112, 1011, 44.44 );
setSeVolume( spep_6 + 113, 1011, 55.56 );
setSeVolume( spep_6 + 114, 1011, 66.67 );
setSeVolume( spep_6 + 115, 1011, 77.78 );
setSeVolume( spep_6 + 116, 1011, 88.89 );
setSeVolume( spep_6 + 117, 1011, 100 );

stopSe( spep_6 + 104, se_1128, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 30 );
endPhase( spep_6 + 230 );


else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入→突進
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
beginning = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, beginning, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, beginning, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning, 0 );
setEffRotateKey( spep_0 + 56, beginning, 0 );
setEffAlphaKey( spep_0 + 0, beginning, 255 );
setEffAlphaKey( spep_0 + 56, beginning, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 60, 0,  0, 0, 0, 180 ); --くろ 背景

--SE
SE0=playSe( spep_0 + 0, 8 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--se
playSe( spep_0 + 5, 1183 );
setSeVolume( spep_0 + 5, 1183, 0 );
setSeVolume( spep_0 + 43, 1183, 0 );
setSeVolume( spep_0 + 44, 1183, 33 );
setSeVolume( spep_0 + 45, 1183, 66 );
setSeVolume( spep_0 + 46, 1183, 100 );
playSe( spep_0 + 43, 1182 );
setSeVolume( spep_0 + 43, 1182, 126 );

-- ** 次の準備 ** --
spep_1=spep_0+56;

------------------------------------------------------
-- 突進→三連撃
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 128, rush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 128, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 128, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 128, rush_f, 255 );
setEffAlphaKey( spep_1 + 129, rush_f, 0 );
setEffAlphaKey( spep_1 + 130, rush_f, 0 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 128, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 128, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 128, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 128, rush_b, 255 );
setEffAlphaKey( spep_1 + 129, rush_b, 0 );
setEffAlphaKey( spep_1 + 130, rush_b, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_1-3 + 48,  906, 2, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 48, shuchusen1, 2, 20 );
setEffMoveKey( spep_1-3 + 48, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 50, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 48, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_1-3 + 50, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_1-3 + 48, shuchusen1, 180 );
setEffRotateKey( spep_1-3 + 50, shuchusen1, 180 );

setEffAlphaKey( spep_1-3 + 48, shuchusen1, 255 );
setEffAlphaKey( spep_1-3 + 50, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 76,  906, 2, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 76, shuchusen2, 2, 20 );
setEffMoveKey( spep_1-3 + 76, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 78, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 76, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_1-3 + 78, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_1-3 + 76, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 78, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 76, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 78, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1-3 + 106,  906, 4, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 106, shuchusen3, 4, 20 );
setEffMoveKey( spep_1-3 + 106, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 110, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 106, shuchusen3, 1.1, 1.1 );
setEffScaleKey( spep_1-3 + 110, shuchusen3, 1.1, 1.1 );

setEffRotateKey( spep_1-3 + 106, shuchusen3, 180 );
setEffRotateKey( spep_1-3 + 110, shuchusen3, 180 );

setEffAlphaKey( spep_1-3 + 106, shuchusen3, 255 );
setEffAlphaKey( spep_1-3 + 110, shuchusen3, 255 );

--文字エントリー
ctzan = entryEffectLife( spep_1-3 + 48,  10010, 16, 0x100, -1, 0, -159.4, 261.1 );
setEffShake( spep_1-3 + 48, ctzan, 16, 10 );
setEffMoveKey( spep_1-3 + 48, ctzan, -159.4, 261.1 , 0 );
setEffMoveKey( spep_1-3 + 50, ctzan, -122.5, 292.2 , 0 );
setEffMoveKey( spep_1-3 + 52, ctzan, -85.7, 323.3 , 0 );
setEffMoveKey( spep_1-3 + 54, ctzan, -97.8, 318.1 , 0 );
setEffMoveKey( spep_1-3 + 56, ctzan, -109.9, 312.9 , 0 );
setEffMoveKey( spep_1-3 + 58, ctzan, -113.8, 311.5 , 0 );
setEffMoveKey( spep_1-3 + 60, ctzan, -117.8, 310.1 , 0 );
setEffMoveKey( spep_1-3 + 62, ctzan, -121.7, 308.7 , 0 );
setEffMoveKey( spep_1-3 + 64, ctzan, -125.7, 307.3 , 0 );

setEffScaleKey( spep_1-3 + 48, ctzan, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 64, ctzan, 1.8, 1.8 );

setEffRotateKey( spep_1-3 + 48, ctzan, -9.8 );
setEffRotateKey( spep_1-3 + 50, ctzan, -10 );
setEffRotateKey( spep_1-3 + 64, ctzan, -10 );

setEffAlphaKey( spep_1-3 + 48, ctzan, 255 );
setEffAlphaKey( spep_1-3 + 64, ctzan, 255 );

--文字エントリー
ctzazan = entryEffectLife( spep_1-3 + 76,  10009, 14, 0x100, -1, 0, -9.3, 241.2 );
setEffShake( spep_1-3 + 76, ctzazan, 14, 10 );
setEffMoveKey( spep_1-3 + 76, ctzazan, -9.3, 241.2 , 0 );
setEffMoveKey( spep_1-3 + 78, ctzazan, -11, 267.9 , 0 );
setEffMoveKey( spep_1-3 + 80, ctzazan, -12.6, 294.5 , 0 );
setEffMoveKey( spep_1-3 + 82, ctzazan, -9.2, 298.1 , 0 );
setEffMoveKey( spep_1-3 + 84, ctzazan, -5.8, 301.7 , 0 );
setEffMoveKey( spep_1-3 + 86, ctzazan, -2.4, 305.3 , 0 );
setEffMoveKey( spep_1-3 + 88, ctzazan, 1, 308.9 , 0 );
setEffMoveKey( spep_1-3 + 90, ctzazan, 4.4, 312.5 , 0 );

setEffScaleKey( spep_1-3 + 76, ctzazan, 0.5, 0.5 );
setEffScaleKey( spep_1-3 + 78, ctzazan, 1.15, 1.15 );
setEffScaleKey( spep_1-3 + 80, ctzazan, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 90, ctzazan, 1.8, 1.8 );

setEffRotateKey( spep_1-3 + 76, ctzazan, 12 );
setEffRotateKey( spep_1-3 + 90, ctzazan, 12 );

setEffAlphaKey( spep_1-3 + 76, ctzazan, 255 );
setEffAlphaKey( spep_1-3 + 90, ctzazan, 255 );

--文字エントリー
ctzan2 = entryEffectLife( spep_1-3 + 106,  10010, 18, 0x100, -1, 0, 28.8, 234.6 );
setEffShake( spep_1-3 + 106, ctzan2, 18, 10 );
setEffMoveKey( spep_1-3 + 106, ctzan2, 28.8, 234.6 , 0 );
setEffMoveKey( spep_1-3 + 108, ctzan2, 47.9, 279 , 0 );
setEffMoveKey( spep_1-3 + 110, ctzan2, 66.9, 323.4 , 0 );
setEffMoveKey( spep_1-3 + 112, ctzan2, 70.3, 324.4 , 0 );
setEffMoveKey( spep_1-3 + 114, ctzan2, 73.6, 325.5 , 0 );
setEffMoveKey( spep_1-3 + 116, ctzan2, 77, 326.5 , 0 );
setEffMoveKey( spep_1-3 + 118, ctzan2, 80.4, 327.5 , 0 );
setEffMoveKey( spep_1-3 + 120, ctzan2, 83.7, 328.5 , 0 );
setEffMoveKey( spep_1-3 + 122, ctzan2, 87.1, 329.6 , 0 );
setEffMoveKey( spep_1-3 + 124, ctzan2, 90.5, 330.6 , 0 );

setEffScaleKey( spep_1-3 + 106, ctzan2, 0.5, 0.5 );
setEffScaleKey( spep_1-3 + 108, ctzan2, 1.15, 1.15 );
setEffScaleKey( spep_1-3 + 110, ctzan2, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 112, ctzan2, 1.83, 1.83 );
setEffScaleKey( spep_1-3 + 114, ctzan2, 1.86, 1.86 );
setEffScaleKey( spep_1-3 + 116, ctzan2, 1.89, 1.89 );
setEffScaleKey( spep_1-3 + 118, ctzan2, 1.91, 1.91 );
setEffScaleKey( spep_1-3 + 120, ctzan2, 1.94, 1.94 );
setEffScaleKey( spep_1-3 + 122, ctzan2, 1.97, 1.97 );
setEffScaleKey( spep_1-3 + 124, ctzan2, 2, 2 );

setEffRotateKey( spep_1-3 + 106, ctzan2, 10 );
setEffRotateKey( spep_1-3 + 124, ctzan2, 10 );

setEffAlphaKey( spep_1-3 + 106, ctzan2, 255 );
setEffAlphaKey( spep_1-3 + 124, ctzan2, 255 );


--敵の動き
setDisp( spep_1-3 + 22, 1, 1);
setDisp( spep_1-3 + 122, 1, 0);

changeAnime( spep_1-3 + 22, 1, 100);
changeAnime( spep_1-3 + 48, 1, 108);
changeAnime( spep_1-3 + 76, 1, 106);
changeAnime( spep_1-3 + 106, 1, 108);

setMoveKey( spep_1-3 + 22, 1, 1092.7, 81.1 , 0 );
setMoveKey( spep_1-3 + 24, 1, 919.3, 76.9 , 0 );
setMoveKey( spep_1-3 + 26, 1, 745, 72.7 , 0 );
setMoveKey( spep_1-3 + 28, 1, 572, 68.6 , 0 );
setMoveKey( spep_1-3 + 30, 1, 539.1, 67.2 , 0 );
setMoveKey( spep_1-3 + 32, 1, 502.4, 65.8 , 0 );
setMoveKey( spep_1-3 + 34, 1, 462.2, 64.4 , 0 );
setMoveKey( spep_1-3 + 36, 1, 418.6, 62.9 , 0 );
setMoveKey( spep_1-3 + 38, 1, 371.8, 61.5 , 0 );
setMoveKey( spep_1-3 + 40, 1, 322, 60.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, 269.5, 58.6 , 0 );
setMoveKey( spep_1-3 + 44, 1, 214.5, 57.2 , 0 );
setMoveKey( spep_1-3 + 46, 1, 97.5, 55.7 , 0 );
setMoveKey( spep_1-3 + 47, 1, 97.5, 55.7 , 0 );

setMoveKey( spep_1-3 + 48, 1, 247.3, 80.6 , 0 );
setMoveKey( spep_1-3 + 50, 1, 189.1, 80.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 116.9, 61.7 , 0 );
setMoveKey( spep_1-3 + 54, 1, 120.9, 72.2 , 0 );
setMoveKey( spep_1-3 + 56, 1, 120.9, 74.6 , 0 );
setMoveKey( spep_1-3 + 58, 1, 120.9, 77.1 , 0 );
setMoveKey( spep_1-3 + 60, 1, 120.9, 79.5 , 0 );
setMoveKey( spep_1-3 + 62, 1, 120.8, 81.9 , 0 );
setMoveKey( spep_1-3 + 64, 1, 120.7, 84.2 , 0 );
setMoveKey( spep_1-3 + 66, 1, 120.6, 86.5 , 0 );
setMoveKey( spep_1-3 + 68, 1, 120.5, 88.8 , 0 );
setMoveKey( spep_1-3 + 70, 1, 123.1, 91.3 , 0 );
setMoveKey( spep_1-3 + 72, 1, 125.6, 93.8 , 0 );
setMoveKey( spep_1-3 + 74, 1, 128.2, 96.3 , 0 );
setMoveKey( spep_1-3 + 75, 1, 128.2, 96.3 , 0 );

setMoveKey( spep_1-3 + 76, 1, 96.7, 111.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 53.2, 98.3 , 0 );
setMoveKey( spep_1-3 + 80, 1, 55.9, 87.7 , 0 );
setMoveKey( spep_1-3 + 82, 1, 66.5, 93.1 , 0 );
setMoveKey( spep_1-3 + 84, 1, 73.2, 90.5 , 0 );
setMoveKey( spep_1-3 + 86, 1, 79.8, 87.9 , 0 );
setMoveKey( spep_1-3 + 88, 1, 86.5, 85.3 , 0 );
setMoveKey( spep_1-3 + 90, 1, 93.1, 82.7 , 0 );
setMoveKey( spep_1-3 + 92, 1, 99.8, 80.1 , 0 );
setMoveKey( spep_1-3 + 94, 1, 106.4, 77.4 , 0 );
setMoveKey( spep_1-3 + 96, 1, 113.1, 74.9 , 0 );
setMoveKey( spep_1-3 + 98, 1, 119.8, 72.2 , 0 );
setMoveKey( spep_1-3 + 100, 1, 126.4, 69.6 , 0 );
setMoveKey( spep_1-3 + 102, 1, 129.1, 59 , 0 );
setMoveKey( spep_1-3 + 104, 1, 139.8, 64.5 , 0 );
setMoveKey( spep_1-3 + 105, 1, 139.8, 64.5 , 0 );

setMoveKey( spep_1-3 + 106, 1, 257.5, 55.8 , 0 );
setMoveKey( spep_1-3 + 108, 1, 348.5, 66.2 , 0 );
setMoveKey( spep_1-3 + 110, 1, 427.7, 64.7 , 0 );
setMoveKey( spep_1-3 + 112, 1, 522.7, 79.1 , 0 );
setMoveKey( spep_1-3 + 114, 1, 609.8, 85.6 , 0 );
setMoveKey( spep_1-3 + 116, 1, 696.8, 92 , 0 );
setMoveKey( spep_1-3 + 118, 1, 783.9, 98.5 , 0 );
setMoveKey( spep_1-3 + 120, 1, 871, 104.9 , 0 );
setMoveKey( spep_1-3 + 122, 1, 958.1, 111.4 , 0 );

setScaleKey( spep_1-3 + 22, 1, 2.37, 2.37 );
setScaleKey( spep_1-3 + 24, 1, 2.1, 2.1 );
setScaleKey( spep_1-3 + 26, 1, 1.83, 1.83 );
setScaleKey( spep_1-3 + 28, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 30, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 32, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 34, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 36, 1, 1.48, 1.48 );
setScaleKey( spep_1-3 + 38, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 40, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 42, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 44, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 46, 1, 1.4, 1.4 );
setScaleKey( spep_1-3 + 47, 1, 1.4, 1.4 );

setScaleKey( spep_1-3 + 48, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 50, 1, 1.63, 1.63 );
setScaleKey( spep_1-3 + 52, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 54, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 56, 1, 1.58, 1.58 );
setScaleKey( spep_1-3 + 58, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 60, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 62, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 64, 1, 1.54, 1.54 );
setScaleKey( spep_1-3 + 66, 1, 1.53, 1.53 );
setScaleKey( spep_1-3 + 68, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 74, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 75, 1, 1.52, 1.52 );

setScaleKey( spep_1-3 + 78, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 82, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 84, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 88, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 90, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 92, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 94, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 98, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 100, 1, 1.42, 1.42 );
setScaleKey( spep_1-3 + 105, 1, 1.42, 1.42 );

setScaleKey( spep_1-3 + 106, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 122, 1, 1.74, 1.74 );

setRotateKey( spep_1-3 + 22, 1, 0 );
setRotateKey( spep_1-3 + 75, 1, 0 );

setRotateKey( spep_1-3 + 76, 1, -40.1 );
setRotateKey( spep_1-3 + 78, 1, -39.7 );
setRotateKey( spep_1-3 + 80, 1, -39.3 );
setRotateKey( spep_1-3 + 82, 1, -38.9 );
setRotateKey( spep_1-3 + 84, 1, -38.5 );
setRotateKey( spep_1-3 + 86, 1, -38.2 );
setRotateKey( spep_1-3 + 88, 1, -37.8 );
setRotateKey( spep_1-3 + 90, 1, -37.4 );
setRotateKey( spep_1-3 + 92, 1, -37 );
setRotateKey( spep_1-3 + 94, 1, -36.6 );
setRotateKey( spep_1-3 + 96, 1, -36.2 );
setRotateKey( spep_1-3 + 98, 1, -35.8 );
setRotateKey( spep_1-3 + 100, 1, -35.4 );
setRotateKey( spep_1-3 + 102, 1, -35 );
setRotateKey( spep_1-3 + 104, 1, -34.6 );
setRotateKey( spep_1-3 + 105, 1, -34.6 );

setRotateKey( spep_1-3 + 106, 1, 0 );
setRotateKey( spep_1-3 + 108, 1, 2.4 );
setRotateKey( spep_1-3 + 110, 1, 4.8 );
setRotateKey( spep_1-3 + 112, 1, 7.2 );
setRotateKey( spep_1-3 + 114, 1, 9.7 );
setRotateKey( spep_1-3 + 116, 1, 12.1 );
setRotateKey( spep_1-3 + 118, 1, 14.5 );
setRotateKey( spep_1-3 + 120, 1, 16.9 );
setRotateKey( spep_1-3 + 122, 1, 19.3 );

--SE
playSe( spep_1 + 48, 1003 );
playSe( spep_1 + 52, 1032 );
setSeVolume( spep_1 + 52, 1141, 63 );
playSe( spep_1 + 52, 1141 );
playSe( spep_1 + 81, 1032 );
playSe( spep_1 + 81, 1143 );
setSeVolume( spep_1 + 81, 1143, 45 );
playSe( spep_1 + 111, 1061 );
setSeVolume( spep_1 + 111, 1061, 112 );
playSe( spep_1 + 113, 1142 );
playSe( spep_1 + 114, 1009 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 140, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_1+120 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2=spep_1+128;
------------------------------------------------------
-- セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 100, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 100, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusen4 = entryEffectLife( spep_2-3 + 42,  906, 56, 0x81, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 42, shuchusen4, 56, 20 );
setEffMoveKey( spep_2-3 + 42, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 98, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 42, shuchusen4, 1, 1 );
setEffScaleKey( spep_2-3 + 98, shuchusen4, 1, 1 );

setEffRotateKey( spep_2-3 + 42, shuchusen4, 0 );
setEffRotateKey( spep_2-3 + 98, shuchusen4, 0 );

setEffAlphaKey( spep_2-3 + 42, shuchusen4, 255 );
setEffAlphaKey( spep_2-3 + 98, shuchusen4, 255 );

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +12, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +12,  ctgogo,  100,  510);
setEffMoveKey(  spep_2 +84,  ctgogo,  100,  510);

setEffAlphaKey( spep_2 +12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 191 );
setEffAlphaKey( spep_2 + 82, ctgogo, 112 );
setEffAlphaKey( spep_2 + 84, ctgogo, 64 );

setEffRotateKey(  spep_2 +12,  ctgogo,  0);
setEffRotateKey(  spep_2 +84,  ctgogo,  0);

setEffScaleKey(  spep_2 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +72,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +84,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_2 + 12, 1018 );
playSe( spep_2 + 32, 1232 );
playSe( spep_2 + 41, 1221 );
setSeVolume( spep_2 + 41, 1221, 89 );
playSe( spep_2 + 41, 1042 );
setSeVolume( spep_2 + 41, 1042, 89 );
playSe( spep_2 + 41, 1026 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 102, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_2+26 , 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2+92 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3=spep_2+100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );


--白フェード
entryFade( spep_3 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 正面突撃
------------------------------------------------------
-- ** エフェクト等 ** --
rush2 = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, rush2, 0, 0, 0 );
setEffMoveKey( spep_4 + 60, rush2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rush2, -1.0, 1.0 );
setEffScaleKey( spep_4 + 60, rush2, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rush2, 0 );
setEffRotateKey( spep_4 + 60, rush2, 0 );
setEffAlphaKey( spep_4 + 0, rush2, 255 );
setEffAlphaKey( spep_4 + 60, rush2, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_4 + 0,  906, 58, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen5, 58, 20 );
setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 58, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 58, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 58, shuchusen5, 255 );

--SE
playSe( spep_4 + 0, 9 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 62, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_4 + 50, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 60;

------------------------------------------------------
-- 正面向き画面横切り
------------------------------------------------------
-- ** エフェクト等 ** --
slash = entryEffect( spep_5 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, slash, 0, 0, 0 );
setEffMoveKey( spep_5 + 96, slash, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, slash, -1.0, 1.0 );
setEffScaleKey( spep_5 + 96, slash, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, slash, 0 );
setEffRotateKey( spep_5 + 96, slash, 0 );
setEffAlphaKey( spep_5 + 0, slash, 255 );
setEffAlphaKey( spep_5 + 96, slash, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_5-3 + 20,  906, 74, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 20, shuchusen6, 74, 20 );
setEffMoveKey( spep_5-3 + 20, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5-3 + 94, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 20, shuchusen6, 1.1, 1.1 );
setEffScaleKey( spep_5-3 + 94, shuchusen6, 1.1, 1.1 );

setEffRotateKey( spep_5-3 + 20, shuchusen6, 180 );
setEffRotateKey( spep_5-3 + 94, shuchusen6, 180 );

setEffAlphaKey( spep_5-3 + 20, shuchusen6, 255 );
setEffAlphaKey( spep_5-3 + 94, shuchusen6, 255 );

--se
playSe( spep_5 + 4, 1003 );
playSe( spep_5 + 7, 1238 );
se_1126 = playSe( spep_5 + 12, 1126 );
setSeVolume( spep_5 + 12, 1126, 16 );
setSeVolume( spep_5 + 63,1126,15.84);
setSeVolume( spep_5 + 64,1126,15.68);
setSeVolume( spep_5 + 65,1126,15.52);
setSeVolume( spep_5 + 66,1126,15.36);
setSeVolume( spep_5 + 67,1126,15.2);
setSeVolume( spep_5 + 68,1126,15.04);
setSeVolume( spep_5 + 69,1126,14.88);
setSeVolume( spep_5 + 70,1126,14.72);
setSeVolume( spep_5 + 71,1126,14.56);
setSeVolume( spep_5 + 72,1126,14.4);
setSeVolume( spep_5 + 73,1126,14.24);
setSeVolume( spep_5 + 74,1126,14.08);
setSeVolume( spep_5 + 75,1126,13.92);
setSeVolume( spep_5 + 76,1126,13.76);
setSeVolume( spep_5 + 77,1126,13.6);
setSeVolume( spep_5 + 78,1126,13.44);
setSeVolume( spep_5 + 79,1126,13.28);
setSeVolume( spep_5 + 80,1126,13.12);
setSeVolume( spep_5 + 81,1126,12.96);
setSeVolume( spep_5 + 82,1126,12.8);
setSeVolume( spep_5 + 83,1126,12.64);
setSeVolume( spep_5 + 84,1126,12.48);
setSeVolume( spep_5 + 85,1126,12.32);
setSeVolume( spep_5 + 86,1126,12.16);
setSeVolume( spep_5 + 87,1126,12);
setSeVolume( spep_5 + 88,1126,11.84);
setSeVolume( spep_5 + 89,1126,11.68);
setSeVolume( spep_5 + 90,1126,11.52);
setSeVolume( spep_5 + 91,1126,11.36);
setSeVolume( spep_5 + 92,1126,11.2);
setSeVolume( spep_5 + 93,1126,11.04);
setSeVolume( spep_5 + 94,1126,10.88);
setSeVolume( spep_5 + 95,1126,10.72);
setSeVolume( spep_5 + 96,1126,10.56);
setSeVolume( spep_5 + 97,1126,10.4);
setSeVolume( spep_5 + 98,1126,10.24);
setSeVolume( spep_5 + 99,1126,10.08);
setSeVolume( spep_5 + 100,1126,9.92);
setSeVolume( spep_5 + 101,1126,9.76);
setSeVolume( spep_5 + 102,1126,9.6);
setSeVolume( spep_5 + 103,1126,9.44);
setSeVolume( spep_5 + 104,1126,9.28);
setSeVolume( spep_5 + 105,1126,9.12);
setSeVolume( spep_5 + 106,1126,8.96);
setSeVolume( spep_5 + 107,1126,8.8);
setSeVolume( spep_5 + 108,1126,8.64);
setSeVolume( spep_5 + 109,1126,8.48);
setSeVolume( spep_5 + 110,1126,8.32);
setSeVolume( spep_5 + 111,1126,8.16);
setSeVolume( spep_5 + 112,1126,8);
setSeVolume( spep_5 + 113,1126,7.84);
setSeVolume( spep_5 + 114,1126,7.68);
setSeVolume( spep_5 + 115,1126,7.52);
setSeVolume( spep_5 + 116,1126,7.36);
setSeVolume( spep_5 + 117,1126,7.2);
setSeVolume( spep_5 + 118,1126,7.04);
setSeVolume( spep_5 + 119,1126,6.88);
setSeVolume( spep_5 + 120,1126,6.72);
setSeVolume( spep_5 + 121,1126,6.56);
setSeVolume( spep_5 + 122,1126,6.4);
setSeVolume( spep_5 + 123,1126,6.24);
setSeVolume( spep_5 + 124,1126,6.08);
setSeVolume( spep_5 + 125,1126,5.92);
setSeVolume( spep_5 + 126,1126,5.76);
setSeVolume( spep_5 + 127,1126,5.6);
setSeVolume( spep_5 + 128,1126,5.44);
setSeVolume( spep_5 + 129,1126,5.28);
setSeVolume( spep_5 + 130,1126,5.12);
setSeVolume( spep_5 + 131,1126,4.96);
setSeVolume( spep_5 + 132,1126,4.8);
setSeVolume( spep_5 + 133,1126,4.64);
setSeVolume( spep_5 + 134,1126,4.48);
setSeVolume( spep_5 + 135,1126,4.32);
setSeVolume( spep_5 + 136,1126,4.16);
setSeVolume( spep_5 + 137,1126,4);
setSeVolume( spep_5 + 138,1126,3.84);
setSeVolume( spep_5 + 139,1126,3.68);
setSeVolume( spep_5 + 140,1126,3.52);
setSeVolume( spep_5 + 141,1126,3.36);
setSeVolume( spep_5 + 142,1126,3.2);
setSeVolume( spep_5 + 143,1126,3.04);
setSeVolume( spep_5 + 144,1126,2.88);
setSeVolume( spep_5 + 145,1126,2.72);
setSeVolume( spep_5 + 146,1126,2.56);
setSeVolume( spep_5 + 147,1126,2.4);
setSeVolume( spep_5 + 148,1126,2.24);
setSeVolume( spep_5 + 149,1126,2.08);
setSeVolume( spep_5 + 150,1126,1.92);
setSeVolume( spep_5 + 151,1126,1.76);
setSeVolume( spep_5 + 152,1126,1.6);
setSeVolume( spep_5 + 153,1126,1.44);
setSeVolume( spep_5 + 154,1126,1.28);
setSeVolume( spep_5 + 155,1126,1.12);
setSeVolume( spep_5 + 156,1126,0.96);
setSeVolume( spep_5 + 157,1126,0.8);
setSeVolume( spep_5 + 158,1126,0.64);
setSeVolume( spep_5 + 159,1126,0.48);
setSeVolume( spep_5 + 160,1126,0.32);
setSeVolume( spep_5 + 161,1126,0.16);
setSeVolume( spep_5 + 162,1126,0);
playSe( spep_5 + 12, 1032 );
playSe( spep_5 + 18, 1031 );
setSeVolume( spep_5 + 18, 1031, 79 );

--stopSe( spep_5 + 63, se_1126, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 100, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_5 + 88, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 96;
------------------------------------------------------
-- ラスト爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_6 + 240, explosion, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_6 + 240, explosion, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 240, explosion, 0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 240, explosion, 255 );

--集中線
shuchusen7 = entryEffectLife( spep_6-3 + 42,  906, 196, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6-3 + 42, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_6-3 + 238, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_6-3 + 42, shuchusen7, 1.1, 1.1 );
setEffScaleKey( spep_6-3 + 238, shuchusen7, 1.1, 1.1 );

setEffRotateKey( spep_6-3 + 42, shuchusen7, 180 );
setEffRotateKey( spep_6-3 + 238, shuchusen7, 180 );

setEffAlphaKey( spep_6-3 + 42, shuchusen7, 255 );
setEffAlphaKey( spep_6-3 + 238, shuchusen7, 255 );

--SE
playSe( spep_6 + 2, 1042 );
playSe( spep_6 + 5, 1141 );
setSeVolume( spep_6 + 5, 1141, 63 );
playSe( spep_6 + 33, 1017 );
setSeVolume( spep_6 + 33, 1017, 0 );
setSeVolume( spep_6 + 34, 1017, 5 );
setSeVolume( spep_6 + 35, 1017, 10 );
setSeVolume( spep_6 + 36, 1017, 15 );
setSeVolume( spep_6 + 37, 1017, 20 );
setSeVolume( spep_6 + 38, 1017, 25 );
setSeVolume( spep_6 + 39, 1017, 30 );
setSeVolume( spep_6 + 40, 1017, 35 );
setSeVolume( spep_6 + 41, 1017, 40 );
setSeVolume( spep_6 + 42, 1017, 45 );
setSeVolume( spep_6 + 43, 1017, 50 );
setSeVolume( spep_6 + 44, 1017, 55 );
setSeVolume( spep_6 + 45, 1017, 60 );
setSeVolume( spep_6 + 46, 1017, 65 );
setSeVolume( spep_6 + 47, 1017, 70 );
setSeVolume( spep_6 + 48, 1017, 75 );
setSeVolume( spep_6 + 49, 1017, 80 );
setSeVolume( spep_6 + 50, 1017, 85 );
setSeVolume( spep_6 + 51, 1017, 90 );
setSeVolume( spep_6 + 52, 1017, 95 );
setSeVolume( spep_6 + 53, 1017, 100 );
se_1128 = playSe( spep_6 + 43, 1128 );
setSeVolume( spep_6 + 43, 1128, 56 );
playSe( spep_6 + 100, 1023 );
setSeVolume( spep_6 + 100, 1023, 89 );
playSe( spep_6 + 100, 1159 );
setSeVolume( spep_6 + 100, 1159, 79 );
playSe( spep_6 + 108, 1011 );
setSeVolume( spep_6 + 108, 1011, 0 );
setSeVolume( spep_6 + 109, 1011, 11.11 );
setSeVolume( spep_6 + 110, 1011, 22.22 );
setSeVolume( spep_6 + 111, 1011, 33.33 );
setSeVolume( spep_6 + 112, 1011, 44.44 );
setSeVolume( spep_6 + 113, 1011, 55.56 );
setSeVolume( spep_6 + 114, 1011, 66.67 );
setSeVolume( spep_6 + 115, 1011, 77.78 );
setSeVolume( spep_6 + 116, 1011, 88.89 );
setSeVolume( spep_6 + 117, 1011, 100 );

stopSe( spep_6 + 104, se_1128, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 30 );
endPhase( spep_6 + 230 );
end
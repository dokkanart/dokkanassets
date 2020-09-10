--1018540:超サイヤ人ゴッドSS孫悟空(界王拳)_10倍界王拳 ゴッドかめはめ波
--sp_effect_a1_00205

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
SP_01=	154411	;--	気溜め
SP_02=	154412	;--	気溜め〜突進
SP_03=	154414	;--	パンチヒット
SP_04=	154415	;--	パンチヒット
SP_05=	154418	;--	ラッシュ
SP_06=	154419	;--	ラッシュ
SP_07=	154422	;--	敵が落下して追いかける
SP_08=	154423	;--	敵が落下して追いかける
SP_09=	154424	;--	敵を蹴り上げる
SP_10=	154425	;--	敵を蹴り上げる
SP_11=	154426	;--	地上に移動してかめはめ波の構え
SP_12=	154428	;--	かめはめ波を撃つ
SP_13=	154430	;--	かめはめ波を上空に撃っている
SP_14=	154432	;--	敵がかめはめ波に包まれる
SP_15=	154433	;--	敵がかめはめ波に包まれる
SP_16=	154434	;--	フィニッシュの爆発

--エフェクト(てき)
SP_01x=	154411	;--	気溜め	
SP_02x=	154413	;--	気溜め〜突進	(敵)
SP_03x=	154416	;--	パンチヒット	(敵)
SP_04x=	154417	;--	パンチヒット	(敵)
SP_05x=	154420	;--	ラッシュ	(敵)
SP_06x=	154421	;--	ラッシュ	(敵)
SP_07x=	154422	;--	敵が落下して追いかける	
SP_08x=	154423	;--	敵が落下して追いかける	
SP_09x=	154424	;--	敵を蹴り上げる	
SP_10x=	154425	;--	敵を蹴り上げる	
SP_11x=	154427	;--	地上に移動してかめはめ波の構え	(敵)
SP_12x=	154429	;--	かめはめ波を撃つ	(敵)
SP_13x=	154431	;--	かめはめ波を上空に撃っている	(敵)
SP_14x=	154432	;--	敵がかめはめ波に包まれる	
SP_15x=	154433	;--	敵がかめはめ波に包まれる	
SP_16x=	154434	;--	フィニッシュの爆発	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

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
-- 気溜め
------------------------------------------------------
--はじめの準備
spep_0= 0;


-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 66, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 66, tame, 255 );

--文字エントリー
ctgogogo = entryEffectLife( spep_0 + 0,  190006, 66 -1, 0x100, -1, 0, -10, 307.4 );

setEffMoveKey( spep_0 + 0, ctgogogo,-10, 307.4 , 0 );
setEffMoveKey( spep_0 + 66 -1, ctgogogo,-10, 307.4 , 0 );

setEffScaleKey( spep_0  + 0, ctgogogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66 -1, ctgogogo, 1.0, 1.0);

setEffRotateKey(  spep_0,  ctgogogo,  0);
setEffRotateKey(  spep_0 +66 -1,  ctgogogo,  0);

setEffAlphaKey( spep_0  + 0, ctgogogo, 255 );
setEffAlphaKey( spep_0 + 66 -1, ctgogogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 68, 0, 0, 0, 0, 255 );  --黒　背景

--SE
se_1044 = playSe( spep_0 + 0, 1044 );
setSeVolume( spep_0 + 0, 1044, 50 );
se_1181 = playSe( spep_0 + 0, 1181 );
setSeVolume( spep_0 + 0, 1181, 200 );
playSe( spep_0 + 0, 1036 );
setSeVolume( spep_0 + 0, 1036, 32 );
playSe( spep_0 + 24, 1036 );
setSeVolume( spep_0 + 24, 1036, 32 );
playSe( spep_0 + 48, 1036 );
setSeVolume( spep_0 + 48, 1036, 32 );

--次の準備
spep_1=spep_0+66;

------------------------------------------------------
-- 気溜め〜突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin = entryEffect( spep_1 + 0, SP_02,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tossin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 82, tossin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_1 + 82, tossin, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tossin, 0 );
setEffRotateKey( spep_1 + 82, tossin, 0 );
setEffAlphaKey( spep_1 + 0, tossin, 255 );
setEffAlphaKey( spep_1 + 82, tossin, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 22, 1, 0 );

changeAnime( spep_1  + 0, 1, 102 );

setMoveKey( spep_1  + 0, 1, 251, -12.1 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 323.6, 64.3 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 396.2, 140.7 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 468.8, 217.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 541.4, 293.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 614, 369.9 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 686.6, 446.3 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 759.2, 522.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 831.9, 599 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 904.5, 675.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 977.2, 751.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 1049.9, 828 , 0 );

setScaleKey( spep_1  + 0, 1, 2.32, 2.32 );
--setScaleKey( spep_1 -3 + 2, 1, 2.91, 2.91 );
setScaleKey( spep_1 -3 + 4, 1, 3.5, 3.5 );
setScaleKey( spep_1 -3 + 6, 1, 4.09, 4.09 );
setScaleKey( spep_1 -3 + 8, 1, 4.68, 4.68 );
setScaleKey( spep_1 -3 + 10, 1, 5.27, 5.27 );
setScaleKey( spep_1 -3 + 12, 1, 5.85, 5.85 );
setScaleKey( spep_1 -3 + 14, 1, 6.44, 6.44 );
setScaleKey( spep_1 -3 + 16, 1, 7.03, 7.03 );
setScaleKey( spep_1 -3 + 18, 1, 7.62, 7.62 );
setScaleKey( spep_1 -3 + 20, 1, 8.21, 8.21 );
setScaleKey( spep_1 -3 + 22, 1, 8.8, 8.8 );

setRotateKey( spep_1  + 0, 1, -9 );
setRotateKey( spep_1 -3 + 10, 1, -9 );
setRotateKey( spep_1 -3 + 12, 1, -8.9 );
setRotateKey( spep_1 -3 + 22, 1, -8.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 84, 0, 0, 0, 0, 255 );  --黒　背景

--SE
SE0=playSe( spep_1 + 6, 1036 );
setSeVolume( spep_1 + 6, 1036, 32 );



---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1036, 0 );
    stopSe( SP_dodge - 12, se_1044, 0 );
    stopSe( SP_dodge - 12, se_1181, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    
---------------------------------------------------------------------------
-- 回避しなかった場合
---------------------------------------------------------------------------

--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 48,  10019, 16, 0x100, -1, 0, -74.9, -90 );--ドンッ

setEffMoveKey( spep_1 -3 + 48, ctdon, -74.9, -90 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctdon, -7, 24.5 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctdon, 61.2, 138.9 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctdon, 65.2, 161.9 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctdon, 69.2, 185 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctdon, 73.2, 208 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctdon, 77.1, 231 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctdon, 71.1, 231 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctdon, 65.1, 231 , 0 );

setEffScaleKey( spep_1 -3 + 48, ctdon, 1, 1 );
setEffScaleKey( spep_1 -3 + 50, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 52, ctdon, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 54, ctdon, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 56, ctdon, 3.23, 3.23 );
setEffScaleKey( spep_1 -3 + 58, ctdon, 3.31, 3.31 );
setEffScaleKey( spep_1 -3 + 60, ctdon, 3.39, 3.39 );
setEffScaleKey( spep_1 -3 + 62, ctdon, 3.68, 3.68 );
setEffScaleKey( spep_1 -3 + 64, ctdon, 3.97, 3.97 );

setEffRotateKey( spep_1 -3 + 48, ctdon, 23.7 );
setEffRotateKey( spep_1 -3 + 64, ctdon, 23.7 );

setEffAlphaKey( spep_1 -3 + 48, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 60, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 62, ctdon, 128 );
setEffAlphaKey( spep_1 -3 + 64, ctdon, 0 );

--SE
se_1183 = playSe( spep_1 + 26, 1183 );
setSeVolume( spep_1 + 26, 1183, 0 );
setSeVolume( spep_1 + 45, 1183, 63 );
setSeVolume( spep_1 + 46, 1183, 126 );
se_1036 = playSe( spep_1 + 30, 1036 );
setSeVolume( spep_1 + 30, 1036, 32 );
se_0009 = playSe( spep_1 + 46, 09 );
playSe( spep_1 + 46, 1182 );
setSeVolume( spep_1 + 46, 1182, 126 );
playSe( spep_1 + 46, 1010 );
setSeVolume( spep_1 + 46, 1010, 79 );

stopSe( spep_1 + 46, se_1036, 0 );
stopSe( spep_1 + 46, se_1044, 0 );
stopSe( spep_1 + 46, se_1181, 0 );
--白フェード
entryFade( spep_1 + 74, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+82;


------------------------------------------------------
-- パンチヒット
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 50, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 50, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 50, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 50, punch_f, 255 );
setEffAlphaKey( spep_2 + 51, punch_f, 0 );
setEffAlphaKey( spep_2 + 52, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_2 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 50, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 50, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 50, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 50, punch_b, 255 );
setEffAlphaKey( spep_2 + 51, punch_b, 0 );
setEffAlphaKey( spep_2 + 52, punch_b, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_2 +3 + 2,  10018, 16, 0x100, -1, 0, 84, 179.9 );--ドゴォンッ

setEffMoveKey( spep_2 +3 + 2, ctdogon, 84, 179.9 , 0 );
setEffMoveKey( spep_2 +3 + 4, ctdogon, 82.1, 228.6 , 0 );
setEffMoveKey( spep_2 +3 + 6, ctdogon, 94.7, 263.3 , 0 );
setEffMoveKey( spep_2 +3 + 8, ctdogon, 91.5, 275.4 , 0 );
setEffMoveKey( spep_2 +3 + 10, ctdogon, 97.1, 261.3 , 0 );
setEffMoveKey( spep_2 +3 + 12, ctdogon, 86.4, 267.8 , 0 );
setEffMoveKey( spep_2 +3 + 14, ctdogon, 96.2, 270.6 , 0 );
setEffMoveKey( spep_2 +3 + 16, ctdogon, 89, 259.5 , 0 );
setEffMoveKey( spep_2 +3 + 18, ctdogon, 89, 258.9 , 0 );

setEffScaleKey( spep_2 +3 + 2, ctdogon, 1.3, 1.3 );
setEffScaleKey( spep_2 +3 + 4, ctdogon, 2, 2 );
setEffScaleKey( spep_2 +3 + 6, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_2 +3 + 14, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_2 +3 + 16, ctdogon, 2.89, 2.89 );
setEffScaleKey( spep_2 +3 + 18, ctdogon, 3.09, 3.09 );

setEffRotateKey( spep_2 +3 + 2, ctdogon, 7.9 );
setEffRotateKey( spep_2 +3 + 18, ctdogon, 7.9 );

setEffAlphaKey( spep_2 +3 + 2, ctdogon, 255 );
setEffAlphaKey( spep_2 +3 + 14, ctdogon, 255 );
setEffAlphaKey( spep_2 +3 + 16, ctdogon, 128 );
setEffAlphaKey( spep_2 +3 + 18, ctdogon, 0 );

--敵の動き
setDisp( spep_2+3 + 0, 1, 1 );
changeAnime( spep_2+3 + 0, 1, 106 );

setMoveKey( spep_2+3 + 0, 1, -75, -46 , 0 );
setMoveKey( spep_2+3 + 1, 1, -75, -46 , 0 );
setMoveKey( spep_2+3 + 2, 1, -75, -46 , 0 );
setMoveKey( spep_2+3 + 2, 1, -75, -46 , 0 );
setMoveKey( spep_2+3 + 4, 1, -66.7, -102.4 , 0 );
setMoveKey( spep_2+3 + 5, 1, -66.7, -102.4 , 0 );
setMoveKey( spep_2+3 + 6, 1, -103.3, -0.1 , 0 );
setMoveKey( spep_2+3 + 7, 1, -103.3, -0.1 , 0 );
setMoveKey( spep_2+3 + 8, 1, -79.5, -89.6 , 0 );
setMoveKey( spep_2+3 + 9, 1, -79.5, -89.6 , 0 );
setMoveKey( spep_2+3 + 10, 1, -13.9, -9.1 , 0 );
setMoveKey( spep_2+3 + 11, 1, -13.9, -9.1 , 0 );
setMoveKey( spep_2+3 + 12, 1, -64.4, 7 , 0 );
setMoveKey( spep_2+3 + 13, 1, -64.4, 7 , 0 );
setMoveKey( spep_2+3 + 14, 1, 7.5, -32 , 0 );
setMoveKey( spep_2+3 + 15, 1, 7.5, -32 , 0 );
setMoveKey( spep_2+3 + 16, 1, -18.4, 12.7 , 0 );
setMoveKey( spep_2+3 + 17, 1, -18.4, 12.7 , 0 );
setMoveKey( spep_2+3 + 18, 1, 16.9, -28.4 , 0 );
setMoveKey( spep_2+3 + 19, 1, 16.9, -28.4 , 0 );
setMoveKey( spep_2+3 + 20, 1, -38.5, -38.4 , 0 );
setMoveKey( spep_2+3 + 21, 1, -38.5, -38.4 , 0 );
setMoveKey( spep_2+3 + 22, 1, 15.8, 4.6 , 0 );
setMoveKey( spep_2+3 + 23, 1, 15.8, 4.6 , 0 );
setMoveKey( spep_2+3 + 24, 1, 23.4, -28.1 , 0 );
setMoveKey( spep_2+3 + 25, 1, 23.4, -28.1 , 0 );
setMoveKey( spep_2+3 + 26, 1, 17.4, 8.8 , 0 );
setMoveKey( spep_2+3 + 27, 1, 17.4, 8.8 , 0 );
setMoveKey( spep_2+3 + 28, 1, 16.3, -30 , 0 );
setMoveKey( spep_2+3 + 29, 1, 16.3, -30 , 0 );
setMoveKey( spep_2+3 + 30, 1, 3.6, 6.2 , 0 );
setMoveKey( spep_2+3 + 31, 1, 3.6, 6.2 , 0 );
setMoveKey( spep_2+3 + 32, 1, 32.6, -8.5 , 0 );
setMoveKey( spep_2+3 + 33, 1, 32.6, -8.5 , 0 );
setMoveKey( spep_2+3 + 34, 1, 13.9, -15.2 , 0 );
setMoveKey( spep_2+3 + 35, 1, 13.9, -15.2 , 0 );
setMoveKey( spep_2+3 + 36, 1, 27.9, 3.5 , 0 );
setMoveKey( spep_2+3 + 37, 1, 27.9, 3.5 , 0 );
setMoveKey( spep_2+3 + 38, 1, 31.4, -5.8 , 0 );
setMoveKey( spep_2+3 + 39, 1, 31.4, -5.8 , 0 );
setMoveKey( spep_2+3 + 40, 1, 26, -4.7 , 0 );
setMoveKey( spep_2+3 + 41, 1, 26, -4.7 , 0 );
setMoveKey( spep_2+3 + 42, 1, 29.5, -1.7 , 0 );
setMoveKey( spep_2+3 + 43, 1, 29.5, -1.7 , 0 );
setMoveKey( spep_2+3 + 44, 1, 30.8, -1.1 , 0 );
setMoveKey( spep_2+3 + 45, 1, 30.8, -1.1 , 0 );
setMoveKey( spep_2+3 + 46, 1, 31.9, -0.7 , 0 );
--setMoveKey( spep_2+3 + 47, 1, 31.9, -0.7 , 0 );

setScaleKey( spep_2+3 + 0, 1, 2.38, 2.38 );
setScaleKey( spep_2+3 + 46, 1, 2.38, 2.38 );

setRotateKey( spep_2+3 + 0, 1, -24.3 );
setRotateKey( spep_2+3 + 6, 1, -24.3 );
setRotateKey( spep_2+3 + 7, 1, -24.3 );
setRotateKey( spep_2+3 + 8, 1, -22.2 );
setRotateKey( spep_2+3 + 9, 1, -22.2 );
setRotateKey( spep_2+3 + 10, 1, -20.2 );
setRotateKey( spep_2+3 + 11, 1, -20.2 );
setRotateKey( spep_2+3 + 12, 1, -18.3 );
setRotateKey( spep_2+3 + 13, 1, -18.3 );
setRotateKey( spep_2+3 + 14, 1, -16.6 );
setRotateKey( spep_2+3 + 15, 1, -16.6 );
setRotateKey( spep_2+3 + 16, 1, -15.1 );
setRotateKey( spep_2+3 + 17, 1, -15.1 );
setRotateKey( spep_2+3 + 18, 1, -13.6 );
setRotateKey( spep_2+3 + 19, 1, -13.6 );
setRotateKey( spep_2+3 + 20, 1, -12.3 );
setRotateKey( spep_2+3 + 21, 1, -12.3 );
setRotateKey( spep_2+3 + 22, 1, -11.1 );
setRotateKey( spep_2+3 + 23, 1, -11.1 );
setRotateKey( spep_2+3 + 24, 1, -10.1 );
setRotateKey( spep_2+3 + 25, 1, -10.1 );
setRotateKey( spep_2+3 + 26, 1, -9.1 );
setRotateKey( spep_2+3 + 27, 1, -9.1 );
setRotateKey( spep_2+3 + 28, 1, -8.2 );
setRotateKey( spep_2+3 + 29, 1, -8.2 );
setRotateKey( spep_2+3 + 30, 1, -7.5 );
setRotateKey( spep_2+3 + 31, 1, -7.5 );
setRotateKey( spep_2+3 + 32, 1, -6.8 );
setRotateKey( spep_2+3 + 33, 1, -6.8 );
setRotateKey( spep_2+3 + 34, 1, -6.2 );
setRotateKey( spep_2+3 + 35, 1, -6.2 );
setRotateKey( spep_2+3 + 36, 1, -5.7 );
setRotateKey( spep_2+3 + 37, 1, -5.7 );
setRotateKey( spep_2+3 + 38, 1, -5.2 );
setRotateKey( spep_2+3 + 39, 1, -5.2 );
setRotateKey( spep_2+3 + 40, 1, -4.9 );
setRotateKey( spep_2+3 + 41, 1, -4.9 );
setRotateKey( spep_2+3 + 42, 1, -4.5 );
setRotateKey( spep_2+3 + 43, 1, -4.5 );
setRotateKey( spep_2+3 + 44, 1, -4.3 );
setRotateKey( spep_2+3 + 45, 1, -4.3 );
setRotateKey( spep_2+3 + 46, 1, -4.1 );
--setRotateKey( spep_2+3 + 47, 1, -4.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 52, 0, 0, 0, 0, 255 );  --黒　背景

--SE
se_1120 = playSe( spep_2 + 16, 1120 );
setSeVolume( spep_2 + 16, 1120, 71 );
se_1159 = playSe( spep_2 + 16, 1159 );
setSeVolume( spep_2 + 16, 1159, 40 );
playSe( spep_2 + 16, 1009 );
se_1049 = playSe( spep_2 + 16, 1049 );
setSeVolume( spep_2 + 16, 1049, 40 );

stopSe( spep_2 + 12, se_1183, 4 );
stopSe( spep_2 + 16, se_0009, 0 );
stopSe( spep_2 + 29, se_1120, 22 );
stopSe( spep_2 + 45, se_1159, 32 );
stopSe( spep_2 + 32, se_1049, 28 );

--次の準備
spep_3=spep_2+50;

------------------------------------------------------
-- パンチヒット
------------------------------------------------------
-- ** エフェクト等 ** --
lush_f = entryEffect( spep_3 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, lush_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, lush_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, lush_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, lush_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lush_f, 0 );
setEffRotateKey( spep_3 + 116, lush_f, 0 );
setEffAlphaKey( spep_3 + 0, lush_f, 255 );
setEffAlphaKey( spep_3 + 115, lush_f, 255 );
setEffAlphaKey( spep_3 + 116, lush_f, 0 );

-- ** エフェクト等 ** --
lush_b = entryEffect( spep_3 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, lush_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, lush_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, lush_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, lush_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lush_b, 0 );
setEffRotateKey( spep_3 + 116, lush_b, 0 );
setEffAlphaKey( spep_3 + 0, lush_b, 255 );
setEffAlphaKey( spep_3 + 115, lush_b, 255 );
setEffAlphaKey( spep_3 + 116, lush_b, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -3 + 106, 1, 0 );

setShakeChara(spep_3,1,106 -3,15);

changeAnime( spep_3  + 0, 1, 108 );
changeAnime( spep_3 -3 + 6, 1, 106 );
changeAnime( spep_3 -3 + 26, 1, 108 );
changeAnime( spep_3 -3 + 50, 1, 106 );
changeAnime( spep_3 -3 + 80, 1, 108 );
changeAnime( spep_3 -3 + 98, 1, 107 );

setMoveKey( spep_3  + 0, 1, 189.2, 43 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 160.9, 44 , 0 );
setMoveKey( spep_3 -3 + 5, 1, 132.5, 45 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 89.1, 54.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 102.5, 52.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 97.1, 11.4 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 124.3, 60.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 134, 50.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 142.6, 31.8 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 169.1, 41.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 154.5, 39.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 139.8, 37.1 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 125.1, 34.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 177.1, -5.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 179.1, -5.1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 187.8, -6.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 259.4, -2.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 289.5, -29.8 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 279.8, -14 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 274.8, -5.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 277.7, -5.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 280.6, -5.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 283.4, -5.1 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 286.3, -5.1 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 289.1, -5.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 309.1, 94.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 313.4, 96.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 218.9, 120.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 211.8, 108.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 96.4, 93.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 125.7, 110.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 121.9, 97.1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 139.2, 104.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 143.5, 106.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 147.8, 107.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 129.6, 96.7 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 111.4, 85.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 93.2, 74.5 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 75, 63.5 , 0 );
setMoveKey( spep_3 -3 + 79, 1, 56.8, 52.4 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 93.4, -20.6 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 70.9, -33.1 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 48.4, -45.6 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 48.4, -45.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -72.5, -106.3 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 21.3, -155.2 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -56.6, -83.8 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 12, -177.7 , 0 );
setMoveKey( spep_3 -3 + 97, 1, -52.5, -152.7 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -43.6, -236.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -59.4, -319.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 7.5, -462.6 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 30.7, -759.4 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 63.1, -1174.8 , 0 );

setScaleKey( spep_3  + 0, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 88, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 90, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 92, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 94, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 97, 1, 2.02, 2.02 );
setScaleKey( spep_3 -3 + 98, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 100, 1, 1, 1 );
setScaleKey( spep_3 -3 + 102, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 104, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 106, 1, 3.67, 3.67 );

setRotateKey( spep_3  + 0, 1, -13.7 );
setRotateKey( spep_3-3  + 4, 1, -13.7 );
--setRotateKey( spep_3 -3 + 2, 1, -15.8 );
setRotateKey( spep_3 -3 + 5, 1, -18 );
setRotateKey( spep_3 -3 + 6, 1, -11.7 );
setRotateKey( spep_3 -3 + 8, 1, -10.8 );
setRotateKey( spep_3 -3 + 10, 1, -10 );
setRotateKey( spep_3 -3 + 12, 1, -9.1 );
setRotateKey( spep_3 -3 + 14, 1, -8.3 );
setRotateKey( spep_3 -3 + 16, 1, -7.4 );
setRotateKey( spep_3 -3 + 18, 1, -6.6 );
setRotateKey( spep_3 -3 + 20, 1, -5.7 );
setRotateKey( spep_3 -3 + 22, 1, -4.9 );
setRotateKey( spep_3 -3 + 25, 1, -4 );
setRotateKey( spep_3 -3 + 26, 1, -11.7 );
setRotateKey( spep_3 -3 + 50, 1, -11.7 );
setRotateKey( spep_3 -3 + 52, 1, -11.2 );
setRotateKey( spep_3 -3 + 54, 1, -10.7 );
setRotateKey( spep_3 -3 + 56, 1, -10.2 );
setRotateKey( spep_3 -3 + 58, 1, -9.7 );
setRotateKey( spep_3 -3 + 60, 1, -9.2 );
setRotateKey( spep_3 -3 + 62, 1, -8.7 );
setRotateKey( spep_3 -3 + 64, 1, -8.2 );
setRotateKey( spep_3 -3 + 66, 1, -7.8 );
setRotateKey( spep_3 -3 + 68, 1, -7.3 );
setRotateKey( spep_3 -3 + 70, 1, -6.8 );
setRotateKey( spep_3 -3 + 72, 1, -6.3 );
setRotateKey( spep_3 -3 + 74, 1, -5.8 );
setRotateKey( spep_3 -3 + 76, 1, -5.3 );
setRotateKey( spep_3 -3 + 79, 1, -4.8 );
setRotateKey( spep_3 -3 + 80, 1, 106.5 );
setRotateKey( spep_3 -3 + 88, 1, 106.5 );
setRotateKey( spep_3 -3 + 90, 1, 111.6 );
setRotateKey( spep_3 -3 + 92, 1, 116.6 );
setRotateKey( spep_3 -3 + 94, 1, 121.7 );
setRotateKey( spep_3 -3 + 97, 1, 126.7 );
setRotateKey( spep_3 -3 + 98, 1, 24.1 );
setRotateKey( spep_3 -3 + 100, 1, 24.6 );
setRotateKey( spep_3 -3 + 102, 1, 26 );
setRotateKey( spep_3 -3 + 104, 1, 28.3 );
setRotateKey( spep_3 -3 + 106, 1, 31.6 );


--文字エントリー
ctbaki = entryEffectLife( spep_3 -3 + 84,  10020, 16, 0x100, -1, 0, 80.1, -160.1 );

setEffMoveKey( spep_3 -3 + 84, ctbaki, 80.1, -160.1 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctbaki, 82.1, -180.1 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctbaki, 83.9, -200 , 0 );
setEffMoveKey( spep_3 -3 + 100, ctbaki, 83.9, -200 , 0 );

setEffScaleKey( spep_3 -3 + 84, ctbaki, 2.52, 2.52 );
setEffScaleKey( spep_3 -3 + 86, ctbaki, 2.93, 2.93 );
setEffScaleKey( spep_3 -3 + 88, ctbaki, 3.34, 3.34 );
setEffScaleKey( spep_3 -3 + 100, ctbaki, 3.34, 3.34 );

setEffRotateKey( spep_3 -3 + 84, ctbaki, 0 );
setEffRotateKey( spep_3 -3 + 100, ctbaki, 0 );

setEffAlphaKey( spep_3 -3 + 84, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 100, ctbaki, 255 );

--SE
playSe( spep_3 + 8, 1009 );
setSeVolume( spep_3 + 8, 1009, 79 );
playSe( spep_3 + 22, 1010 );
setSeVolume( spep_3 + 22, 1010, 79 );
playSe( spep_3 + 46, 1110 );
setSeVolume( spep_3 + 46, 1110, 79 );
playSe( spep_3 + 76, 1123 );
setSeVolume( spep_3 + 76, 1123, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4=spep_3+116;

------------------------------------------------------
-- 敵が落下して追いかける
------------------------------------------------------
-- ** エフェクト等 ** --
fall_f = entryEffect( spep_4 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fall_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, fall_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fall_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, fall_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fall_f, 0 );
setEffRotateKey( spep_4 + 60, fall_f, 0 );
setEffAlphaKey( spep_4 + 0, fall_f, 255 );
setEffAlphaKey( spep_4 + 60, fall_f, 255 );

-- ** エフェクト等 ** --
fall_b = entryEffect( spep_4 + 0, SP_08,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fall_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, fall_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fall_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, fall_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fall_b, 0 );
setEffRotateKey( spep_4 + 60, fall_b, 0 );
setEffAlphaKey( spep_4 + 0, fall_b, 255 );
setEffAlphaKey( spep_4 + 60, fall_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );


changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, -65.1, 455.3 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -50.3, 314.4 , 0 );
setMoveKey( spep_4-3 + 4, 1, -38.3, 199.1 , 0 );
setMoveKey( spep_4-3 + 6, 1, -29, 109.4 , 0 );
setMoveKey( spep_4-3 + 8, 1, -22.3, 45.4 , 0 );
setMoveKey( spep_4-3 + 10, 1, -18.3, 7 , 0 );
setMoveKey( spep_4-3 + 12, 1, -17, -5.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, -15.2, -22 , 0 );
setMoveKey( spep_4-3 + 16, 1, -13.7, -35.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, -12.5, -46.2 , 0 );
setMoveKey( spep_4-3 + 20, 1, -11.5, -55.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, -10.7, -63.2 , 0 );
setMoveKey( spep_4-3 + 24, 1, -9.9, -69.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, -9.3, -75.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, -8.7, -80.4 , 0 );
setMoveKey( spep_4-3 + 30, 1, -8.2, -84.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, -7.9, -88.3 , 0 );
setMoveKey( spep_4-3 + 34, 1, -7.5, -91.5 , 0 );
setMoveKey( spep_4-3 + 36, 1, -7.2, -94.3 , 0 );
setMoveKey( spep_4-3 + 38, 1, -6.9, -96.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, -6.7, -98.8 , 0 );
setMoveKey( spep_4-3 + 42, 1, -6.5, -100.7 , 0 );
setMoveKey( spep_4-3 + 44, 1, -6.3, -102.2 , 0 );
setMoveKey( spep_4-3 + 46, 1, -6.1, -103.6 , 0 );
setMoveKey( spep_4-3 + 48, 1, -6, -104.8 , 0 );
setMoveKey( spep_4-3 + 50, 1, -5.9, -105.8 , 0 );
setMoveKey( spep_4-3 + 52, 1, -5.8, -106.6 , 0 );
setMoveKey( spep_4-3 + 54, 1, -5.7, -107.3 , 0 );
setMoveKey( spep_4-3 + 56, 1, -5.6, -107.9 , 0 );
setMoveKey( spep_4-3 + 58, 1, -5.6, -108.3 , 0 );
setMoveKey( spep_4-3 + 60, 1, -5.6, -108.8 , 0 );
setMoveKey( spep_4-3 + 62, 1, -5.6, -109 , 0 );

setScaleKey( spep_4 + 0, 1, 3.29, 3.29 );
--setScaleKey( spep_4-3 + 2, 1, 2.44, 2.44 );
setScaleKey( spep_4-3 + 4, 1, 1.75, 1.75 );
setScaleKey( spep_4-3 + 6, 1, 1.22, 1.22 );
setScaleKey( spep_4-3 + 8, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 10, 1, 0.61, 0.61 );
setScaleKey( spep_4-3 + 12, 1, 0.53, 0.53 );
setScaleKey( spep_4-3 + 14, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 16, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 18, 1, 0.37, 0.37 );
setScaleKey( spep_4-3 + 20, 1, 0.33, 0.33 );
setScaleKey( spep_4-3 + 22, 1, 0.3, 0.3 );
setScaleKey( spep_4-3 + 24, 1, 0.27, 0.27 );
setScaleKey( spep_4-3 + 26, 1, 0.25, 0.25 );
setScaleKey( spep_4-3 + 28, 1, 0.23, 0.23 );
setScaleKey( spep_4-3 + 30, 1, 0.21, 0.21 );
setScaleKey( spep_4-3 + 32, 1, 0.2, 0.2 );
setScaleKey( spep_4-3 + 34, 1, 0.18, 0.18 );
setScaleKey( spep_4-3 + 36, 1, 0.17, 0.17 );
setScaleKey( spep_4-3 + 38, 1, 0.16, 0.16 );
setScaleKey( spep_4-3 + 40, 1, 0.15, 0.15 );
setScaleKey( spep_4-3 + 42, 1, 0.15, 0.15 );
setScaleKey( spep_4-3 + 44, 1, 0.14, 0.14 );
setScaleKey( spep_4-3 + 46, 1, 0.13, 0.13 );
setScaleKey( spep_4-3 + 50, 1, 0.13, 0.13 );
setScaleKey( spep_4-3 + 52, 1, 0.12, 0.12 );
setScaleKey( spep_4-3 + 56, 1, 0.12, 0.12 );
setScaleKey( spep_4-3 + 58, 1, 0.11, 0.11 );
setScaleKey( spep_4-3 + 62, 1, 0.11, 0.11 );

setRotateKey( spep_4 + 0, 1, -176.3 );
--setRotateKey( spep_4-3 + 2, 1, -179.6 );
setRotateKey( spep_4-3 + 4, 1, -182.2 );
setRotateKey( spep_4-3 + 6, 1, -184.3 );
setRotateKey( spep_4-3 + 8, 1, -185.8 );
setRotateKey( spep_4-3 + 10, 1, -186.7 );
setRotateKey( spep_4-3 + 12, 1, -187 );
setRotateKey( spep_4-3 + 14, 1, -188.4 );
setRotateKey( spep_4-3 + 16, 1, -189.5 );
setRotateKey( spep_4-3 + 18, 1, -190.4 );
setRotateKey( spep_4-3 + 20, 1, -191.1 );
setRotateKey( spep_4-3 + 22, 1, -191.7 );
setRotateKey( spep_4-3 + 24, 1, -192.3 );
setRotateKey( spep_4-3 + 26, 1, -192.7 );
setRotateKey( spep_4-3 + 28, 1, -193.1 );
setRotateKey( spep_4-3 + 30, 1, -193.5 );
setRotateKey( spep_4-3 + 32, 1, -193.8 );
setRotateKey( spep_4-3 + 34, 1, -194.1 );
setRotateKey( spep_4-3 + 36, 1, -194.3 );
setRotateKey( spep_4-3 + 38, 1, -194.5 );
setRotateKey( spep_4-3 + 40, 1, -194.7 );
setRotateKey( spep_4-3 + 42, 1, -194.8 );
setRotateKey( spep_4-3 + 44, 1, -194.9 );
setRotateKey( spep_4-3 + 46, 1, -195.1 );
setRotateKey( spep_4-3 + 48, 1, -195.1 );
setRotateKey( spep_4-3 + 50, 1, -195.2 );
setRotateKey( spep_4-3 + 52, 1, -195.3 );
setRotateKey( spep_4-3 + 54, 1, -195.4 );
setRotateKey( spep_4-3 + 58, 1, -195.4 );
setRotateKey( spep_4-3 + 60, 1, -195.5 );
setRotateKey( spep_4-3 + 62, 1, -195.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 62, 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_4 + 6, 1182 );
setSeVolume( spep_4 + 6, 1182, 126 );
playSe( spep_4 + 6, 1010 );
se_1183 = playSe( spep_4 + 6, 1183 );
setSeVolume( spep_4 + 6, 1183, 126 );

--次の準備
spep_5=spep_4+60;

------------------------------------------------------
-- 敵を蹴り上げる
------------------------------------------------------
-- ** エフェクト等 ** --
increase_f = entryEffect( spep_5 + 0, SP_09,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, increase_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, increase_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, increase_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, increase_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, increase_f, 0 );
setEffRotateKey( spep_5 + 98, increase_f, 0 );
setEffAlphaKey( spep_5 + 0, increase_f, 255 );
setEffAlphaKey( spep_5 + 98, increase_f, 255 );

-- ** エフェクト等 ** --
increase_b = entryEffect( spep_5 + 0, SP_10,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, increase_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, increase_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, increase_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, increase_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, increase_b, 0 );
setEffRotateKey( spep_5 + 98, increase_b, 0 );
setEffAlphaKey( spep_5 + 0, increase_b, 255 );
setEffAlphaKey( spep_5 + 98, increase_b, 255 );

--敵の動き
setDisp( spep_5-3 + 56, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );
changeAnime( spep_5-3 + 42, 1, 106 );

setMoveKey( spep_5 + 0, 1, 16, 85.8 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 16, 85.8 , 0 );
setMoveKey( spep_5-3 + 4, 1, 16.1, 85.8 , 0 );
setMoveKey( spep_5-3 + 34, 1, 16.1, 85.8 , 0 );
setMoveKey( spep_5-3 + 36, 1, 14.4, 87.2 , 0 );
setMoveKey( spep_5-3 + 38, 1, 12.7, 88.6 , 0 );
setMoveKey( spep_5-3 + 40, 1, 11, 90 , 0 );
setMoveKey( spep_5-3 + 41, 1, 11, 90 , 0 );
setMoveKey( spep_5-3 + 42, 1, 36.5, 285.6 , 0 );
setMoveKey( spep_5-3 + 53, 1, 36.5, 285.6 , 0 );
setMoveKey( spep_5-3 + 54, 1, 23.5, 629.5 , 0 );
setMoveKey( spep_5-3 + 56, 1, 115.4, 558.8 , 0 );

setScaleKey( spep_5 + 0, 1, 2.31, 2.31 );
setScaleKey( spep_5-3 + 41, 1, 2.31, 2.31 );
setScaleKey( spep_5-3 + 42, 1, 2.85, 2.85 );
setScaleKey( spep_5-3 + 53, 1, 2.85, 2.85 );
setScaleKey( spep_5-3 + 54, 1, 2.85, 2.85 );
setScaleKey( spep_5-3 + 56, 1, 2.85, 2.85 );

setRotateKey( spep_5 + 0, 1, 88.7 );
--setRotateKey( spep_5-3 + 2, 1, 88.7 );
setRotateKey( spep_5-3 + 4, 1, 88.8 );
setRotateKey( spep_5-3 + 6, 1, 88.8 );
setRotateKey( spep_5-3 + 8, 1, 88.9 );
setRotateKey( spep_5-3 + 12, 1, 88.9 );
setRotateKey( spep_5-3 + 14, 1, 89 );
setRotateKey( spep_5-3 + 16, 1, 89 );
setRotateKey( spep_5-3 + 18, 1, 89.1 );
setRotateKey( spep_5-3 + 20, 1, 89.1 );
setRotateKey( spep_5-3 + 22, 1, 89.2 );
setRotateKey( spep_5-3 + 26, 1, 89.2 );
setRotateKey( spep_5-3 + 28, 1, 89.3 );
setRotateKey( spep_5-3 + 30, 1, 89.3 );
setRotateKey( spep_5-3 + 32, 1, 89.4 );
setRotateKey( spep_5-3 + 34, 1, 89.4 );
setRotateKey( spep_5-3 + 36, 1, 88.7 );
setRotateKey( spep_5-3 + 38, 1, 88 );
setRotateKey( spep_5-3 + 40, 1, 87.3 );
setRotateKey( spep_5-3 + 41, 1, 87.3 );
setRotateKey( spep_5-3 + 42, 1, 34 );
setRotateKey( spep_5-3 + 56, 1, 34 );

--文字エントリー
ctga = entryEffectLife( spep_5 -3 + 54,  10005, 12, 0x100, -1, 0, 2.2, 362.6 );--ガッ

setEffMoveKey( spep_5 -3 + 54, ctga, 2.2, 362.6 , 0 );
setEffMoveKey( spep_5 -3 + 56, ctga, -21.7, 354.2 , 0 );
setEffMoveKey( spep_5 -3 + 58, ctga, -45.6, 345.9 , 0 );
setEffMoveKey( spep_5 -3 + 60, ctga, -38.1, 350.2 , 0 );
setEffMoveKey( spep_5 -3 + 62, ctga, -30.7, 354.5 , 0 );
setEffMoveKey( spep_5 -3 + 64, ctga, -23.2, 358.9 , 0 );
setEffMoveKey( spep_5 -3 + 66, ctga, -15.7, 363.2 , 0 );

a=1.7;

setEffScaleKey( spep_5 -3 + 54, ctga, 1.53+a, 1.53+a );
setEffScaleKey( spep_5 -3 + 56, ctga, 1.9+a, 1.9+a );
setEffScaleKey( spep_5 -3 + 58, ctga, 2.27+a, 2.27+a );
setEffScaleKey( spep_5 -3 + 60, ctga, 2.42+a, 2.42+a );
setEffScaleKey( spep_5 -3 + 62, ctga, 2.57+a, 2.57+a );
setEffScaleKey( spep_5 -3 + 64, ctga, 2.72+a, 2.72+a );
setEffScaleKey( spep_5 -3 + 66, ctga, 2.87+a, 2.87+a );

setEffRotateKey( spep_5 -3 + 54, ctga, 0 );
setEffRotateKey( spep_5 -3 + 66, ctga, 0 );

setEffAlphaKey( spep_5 -3 + 54, ctga, 255 );
setEffAlphaKey( spep_5 -3 + 58, ctga, 255 );
setEffAlphaKey( spep_5 -3 + 60, ctga, 191 );
setEffAlphaKey( spep_5 -3 + 62, ctga, 128 );
setEffAlphaKey( spep_5 -3 + 64, ctga, 64 );
setEffAlphaKey( spep_5 -3 + 66, ctga, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_5 + 18, 1035 );
playSe( spep_5 + 40, 1120 );
setSeVolume( spep_5 + 40, 1120, 79 );
playSe( spep_5 + 82, 1109 );
playSe( spep_5 + 82, 1132 );
setSeVolume( spep_5 + 82, 1132, 0 );

stopSe( spep_5 + 47, se_1183, 0 );

--次の準備
spep_6=spep_5+98;

------------------------------------------------------
-- 地上に移動してかめはめ波の構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_6 + 0, SP_11,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, tame2, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 90, tame2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame2, 0 );
setEffRotateKey( spep_6 + 90, tame2, 0 );
setEffAlphaKey( spep_6 + 0, tame2, 255 );
setEffAlphaKey( spep_6 + 90, tame2, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_6, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_6, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_6 + 12 , 190006, 72, 0x100, -1, 0, -40, 530);    -- ゴゴゴゴ

setEffShake(spep_6 + 12 ,ctgogo,72,10);

setEffMoveKey(  spep_6 +12 ,  ctgogo,  -40,  530);
setEffMoveKey(  spep_6 +84 ,  ctgogo,  -40,  530);

setEffAlphaKey( spep_6 +12 , ctgogo, 0 );
setEffAlphaKey( spep_6 + 13 , ctgogo, 255 );
setEffAlphaKey( spep_6 + 14 , ctgogo, 255 );
setEffAlphaKey( spep_6 + 76 , ctgogo, 255 );
setEffAlphaKey( spep_6 + 78 , ctgogo, 255 );
setEffAlphaKey( spep_6 + 80 , ctgogo, 191 );
setEffAlphaKey( spep_6 + 82 , ctgogo, 128 );
setEffAlphaKey( spep_6 + 84 , ctgogo, 64 );

setEffRotateKey(  spep_6 +12 ,  ctgogo,  0);
setEffRotateKey(  spep_6 +84 ,  ctgogo,  0);

setEffScaleKey(  spep_6 +12 ,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_6 +74 ,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_6 +84 ,  ctgogo, 1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 92, 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_6 + 12, 1018 );
setSeVolume( spep_6 + 21, 1132, 25 );
setSeVolume( spep_6 + 22, 1132, 50 );
playSe( spep_6 + 22, 1036 );
setSeVolume( spep_6 + 22, 1036, 79 );
playSe( spep_6 + 47, 1036 );
setSeVolume( spep_6 + 47, 1036, 79 );
se_1036 = playSe( spep_6 + 71, 1036 );
setSeVolume( spep_6 + 71, 1036, 79 );

--白フェード
entryFade( spep_6 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 90;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );

-- ** 音 ** --
stopSe( spep_7 , se_1036, 0 );
playSe( spep_7 + 0, SE_05 );

--白フェード
entryFade( spep_7 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;

------------------------------------------------------
-- かめはめ波を撃つ
------------------------------------------------------
-- ** エフェクト等 ** --
release = entryEffect( spep_8 + 0, SP_12,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, release, 0, 0 , 0 );
setEffMoveKey( spep_8 + 90, release, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, release, 1.0, 1.0 );
setEffScaleKey( spep_8 + 90, release, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, release, 0 );
setEffRotateKey( spep_8 + 90, release, 0 );
setEffAlphaKey( spep_8 + 0, release, 255 );
setEffAlphaKey( spep_8 + 90, release, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_8-3 + 6,  10012, 18, 0x100, -1, 0, 65.1, -125.4 );--ズオッ

setEffMoveKey( spep_8-3 + 6, ctzuo, 65.1, -125.4 , 0 );
setEffMoveKey( spep_8-3 + 8, ctzuo, 91.2, -136.2 , 0 );
setEffMoveKey( spep_8-3 + 10, ctzuo, 75.4, -143.9 , 0 );
setEffMoveKey( spep_8-3 + 12, ctzuo, 107.6, -155.2 , 0 );
setEffMoveKey( spep_8-3 + 14, ctzuo, 70.2, -155.2 , 0 );
setEffMoveKey( spep_8-3 + 16, ctzuo, 88.2, -159.2 , 0 );
setEffMoveKey( spep_8-3 + 18, ctzuo, 49.7, -159.1 , 0 );
setEffMoveKey( spep_8-3 + 20, ctzuo, 68.7, -163.3 , 0 );
setEffMoveKey( spep_8-3 + 22, ctzuo, 29.1, -163 , 0 );
setEffMoveKey( spep_8-3 + 24, ctzuo, 18.8, -165 , 0 );

b=2.5;

setEffScaleKey( spep_8-3 + 6, ctzuo, 2.24, 2.24 );
--setEffScaleKey( spep_8-3 + 8, ctzuo, 0.74+b, 0.74+b );
--setEffScaleKey( spep_8-3 + 10, ctzuo, 0.85+b, 0.85+b );
--setEffScaleKey( spep_8-3 + 12, ctzuo, 0.96+b, 0.96+b );
--setEffScaleKey( spep_8-3 + 14, ctzuo, 0.98+b, 0.98+b );
setEffScaleKey( spep_8-3 + 16, ctzuo, 1+b, 1+b );
setEffScaleKey( spep_8-3 + 18, ctzuo, 1.02+b, 1.02+b );
setEffScaleKey( spep_8-3 + 20, ctzuo, 1.04+b, 1.04+b );
setEffScaleKey( spep_8-3 + 22, ctzuo, 1.06+b, 1.06+b );
setEffScaleKey( spep_8-3 + 24, ctzuo, 1.08+b, 1.08+b );

setEffRotateKey( spep_8-3 + 6, ctzuo, -10.7 );
setEffRotateKey( spep_8-3 + 24, ctzuo, -10.7 );

setEffAlphaKey( spep_8-3 + 6, ctzuo, 255 );
setEffAlphaKey( spep_8-3 + 12, ctzuo, 255 );
setEffAlphaKey( spep_8-3 + 14, ctzuo, 213 );
setEffAlphaKey( spep_8-3 + 16, ctzuo, 170 );
setEffAlphaKey( spep_8-3 + 18, ctzuo, 128 );
setEffAlphaKey( spep_8-3 + 20, ctzuo, 85 );
setEffAlphaKey( spep_8-3 + 22, ctzuo, 42 );
setEffAlphaKey( spep_8-3 + 24, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_8 , 1022 );
setSeVolume( spep_8 + 87, 1022, 79 );
playSe( spep_8 , 1146 );
setSeVolume( spep_8 + 87, 1146, 71 );


-- ** 次の準備 ** --
spep_9 = spep_8 + 86;

------------------------------------------------------
-- かめはめ波を上空に撃っている
------------------------------------------------------
-- ** エフェクト等 ** --
air = entryEffect( spep_9 + 0, SP_13,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, air, 0, 0 , 0 );
setEffMoveKey( spep_9 + 86, air, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, air, 1.0, 1.0 );
setEffScaleKey( spep_9 + 86, air, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, air, 0 );
setEffRotateKey( spep_9 + 86, air, 0 );
setEffAlphaKey( spep_9 + 0, air, 255 );
setEffAlphaKey( spep_9 + 86, air, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_9 + 0,  10014, 58, 0x100, -1, 0, 17.1, -399.3 );--ズドドドッ

setEffMoveKey( spep_9 + 0, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 2, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 4, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 6, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 8, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 10, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 12, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 14, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 16, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 18, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 20, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 22, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 24, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 26, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 28, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 30, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 32, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 34, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 36, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 38, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 40, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 42, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 44, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 46, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 48, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 50, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 52, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 54, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 56, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 58, ctzudodo, 6.7, -417.1 , 0 );

setEffScaleKey( spep_9 + 0, ctzudodo, 2.31, 2.31 );
setEffScaleKey( spep_9 + 58, ctzudodo, 2.31, 2.31 );

setEffRotateKey( spep_9 + 0, ctzudodo, 47.1 );
setEffRotateKey( spep_9 + 58, ctzudodo, 47.1 );

setEffAlphaKey( spep_9 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_9 + 58, ctzudodo, 255 );

-- ** 白背景 ** --
entryFadeBg( spep_9 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --白 背景

--SE
playSe( spep_9 , 1181 );
se_1044 = playSe( spep_9 + 77, 1044 );
playSe( spep_9 + 6, 1161 );
setSeVolume( spep_9 + 6, 1161, 32 );
playSe( spep_9 + 6, 1124 );
setSeVolume( spep_9 + 6, 1124, 56 );

-- ** 次の準備 ** --
spep_10 = spep_9 + 86;

------------------------------------------------------
-- 敵がかめはめ波に包まれる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_10 + 0, SP_14,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 32, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 32, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hit_f, 0 );
setEffRotateKey( spep_10 + 32, hit_f, 0 );
setEffAlphaKey( spep_10 + 0, hit_f, 255 );
setEffAlphaKey( spep_10 + 32, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_10 + 0, SP_15,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 32, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 32, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hit_b, 0 );
setEffRotateKey( spep_10 + 32, hit_b, 0 );
setEffAlphaKey( spep_10 + 0, hit_b, 255 );
setEffAlphaKey( spep_10 + 32, hit_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_10 -3 + 3, 1, 1 );
setDisp( spep_10 -3 + 34, 1, 0 );
changeAnime( spep_10 -3 + 3, 1, 106 );

--setMoveKey( spep_10 -3 + 0, 1, -192.8, -141.2 , 0 );
setMoveKey( spep_10 -3 + 3, 1, -91.4, -26.5 , 0 );
setMoveKey( spep_10 -3 + 4, 1, -14.8, 79 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 69.9, 150.6 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 111.6, 223.8 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 145.4, 255.8 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 177.6, 313.8 , 0 );
setMoveKey( spep_10 -3 + 14, 1, 212, 335.3 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 230, 373.5 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 233.1, 381.7 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 238.5, 401.6 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 261.4, 427 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 254.3, 419.1 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 244.3, 416.8 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 264.5, 422.8 , 0 );
setMoveKey( spep_10 -3 + 30, 1, 245.1, 422.3 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 256.9, 416.5 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 261.9, 425.5 , 0 );

setScaleKey( spep_10 + 0, 1, 2.27, 2.27 );
setScaleKey( spep_10 + 2, 1, 1.85, 1.85 );
setScaleKey( spep_10 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_10 + 6, 1, 1.22, 1.22 );
setScaleKey( spep_10 + 8, 1, 0.99, 0.99 );
setScaleKey( spep_10 + 10, 1, 0.8, 0.8 );
setScaleKey( spep_10 + 12, 1, 0.66, 0.66 );
setScaleKey( spep_10 + 14, 1, 0.55, 0.55 );
setScaleKey( spep_10 + 16, 1, 0.47, 0.47 );
setScaleKey( spep_10 + 18, 1, 0.42, 0.42 );
setScaleKey( spep_10 + 20, 1, 0.38, 0.38 );
setScaleKey( spep_10 + 22, 1, 0.35, 0.35 );
setScaleKey( spep_10 + 24, 1, 0.33, 0.33 );
setScaleKey( spep_10 + 26, 1, 0.33, 0.33 );
setScaleKey( spep_10 + 28, 1, 0.32, 0.32 );
setScaleKey( spep_10 + 34, 1, 0.32, 0.32 );

setRotateKey( spep_10 + 0, 1, 63.5 );
setRotateKey( spep_10 + 2, 1, 64.3 );
setRotateKey( spep_10 + 4, 1, 65 );
setRotateKey( spep_10 + 6, 1, 65.5 );
setRotateKey( spep_10 + 8, 1, 65.9 );
setRotateKey( spep_10 + 10, 1, 66.3 );
setRotateKey( spep_10 + 12, 1, 66.6 );
setRotateKey( spep_10 + 14, 1, 66.8 );
setRotateKey( spep_10 + 16, 1, 66.9 );
setRotateKey( spep_10 + 18, 1, 67 );
setRotateKey( spep_10 + 20, 1, 67.1 );
setRotateKey( spep_10 + 22, 1, 67.1 );
setRotateKey( spep_10 + 34, 1, 67.2 );

-- ** 白背景 ** --
entryFadeBg( spep_10 + 0, 0, 40, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --白 背景

--SE
playSe( spep_10 , 1021 );
-- ** 次の準備 ** --
spep_11 = spep_10 + 34;

------------------------------------------------------
-- フィニッシュの爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_11 + 0, SP_16,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_11 + 180, finish, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_11 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish, 0 );
setEffRotateKey( spep_11 + 180, finish, 0 );
setEffAlphaKey( spep_11 + 0, finish, 255 );
setEffAlphaKey( spep_11 + 180, finish, 255 );

--文字エントリー
ctdon2 = entryEffectLife( spep_11 -3 + 52,  10052, 44, 0x100, -1, 0, 161.4, 275.3 );

setEffMoveKey( spep_11 -3 + 52, ctdon2, 161.4, 275.3 , 0 );
setEffMoveKey( spep_11 -3 + 54, ctdon2, 144.7, 240.6 , 0 );
setEffMoveKey( spep_11 -3 + 56, ctdon2, 128, 205.9 , 0 );
setEffMoveKey( spep_11 -3 + 58, ctdon2, 111.3, 171.2 , 0 );
setEffMoveKey( spep_11 -3 + 60, ctdon2, 110.9, 170.2 , 0 );
setEffMoveKey( spep_11 -3 + 62, ctdon2, 110.6, 169.1 , 0 );
setEffMoveKey( spep_11 -3 + 64, ctdon2, 110.2, 168 , 0 );
setEffMoveKey( spep_11 -3 + 66, ctdon2, 109.9, 167 , 0 );
setEffMoveKey( spep_11 -3 + 68, ctdon2, 109.5, 165.9 , 0 );
setEffMoveKey( spep_11 -3 + 70, ctdon2, 109.2, 164.9 , 0 );
setEffMoveKey( spep_11 -3 + 72, ctdon2, 108.8, 163.8 , 0 );
setEffMoveKey( spep_11 -3 + 74, ctdon2, 108.4, 162.7 , 0 );
setEffMoveKey( spep_11 -3 + 76, ctdon2, 108.1, 161.7 , 0 );
setEffMoveKey( spep_11 -3 + 78, ctdon2, 107.7, 160.6 , 0 );
setEffMoveKey( spep_11 -3 + 80, ctdon2, 107.4, 159.6 , 0 );
setEffMoveKey( spep_11 -3 + 82, ctdon2, 107, 158.5 , 0 );
setEffMoveKey( spep_11 -3 + 84, ctdon2, 106.7, 157.4 , 0 );
setEffMoveKey( spep_11 -3 + 86, ctdon2, 106.3, 156.4 , 0 );
setEffMoveKey( spep_11 -3 + 88, ctdon2, 106, 155.3 , 0 );
setEffMoveKey( spep_11 -3 + 90, ctdon2, 105.6, 154.2 , 0 );
setEffMoveKey( spep_11 -3 + 92, ctdon2, 105.3, 153.2 , 0 );
setEffMoveKey( spep_11 -3 + 96, ctdon2, 105.3, 153.2 , 0 );

setEffScaleKey( spep_11 -3 + 52, ctdon2, 0.63, 0.63 );
setEffScaleKey( spep_11 -3 + 54, ctdon2, 0.84, 0.84 );
setEffScaleKey( spep_11 -3 + 56, ctdon2, 1.05, 1.05 );
setEffScaleKey( spep_11 -3 + 58, ctdon2, 1.26, 1.26 );
setEffScaleKey( spep_11 -3 + 60, ctdon2, 1.27, 1.27 );
setEffScaleKey( spep_11 -3 + 62, ctdon2, 1.27, 1.27 );
setEffScaleKey( spep_11 -3 + 64, ctdon2, 1.28, 1.28 );
setEffScaleKey( spep_11 -3 + 66, ctdon2, 1.29, 1.29 );
setEffScaleKey( spep_11 -3 + 68, ctdon2, 1.29, 1.29 );
setEffScaleKey( spep_11 -3 + 70, ctdon2, 1.3, 1.3 );
setEffScaleKey( spep_11 -3 + 72, ctdon2, 1.31, 1.31 );
setEffScaleKey( spep_11 -3 + 74, ctdon2, 1.31, 1.31 );
setEffScaleKey( spep_11 -3 + 76, ctdon2, 1.32, 1.32 );
setEffScaleKey( spep_11 -3 + 78, ctdon2, 1.32, 1.32 );
setEffScaleKey( spep_11 -3 + 80, ctdon2, 1.33, 1.33 );
setEffScaleKey( spep_11 -3 + 82, ctdon2, 1.34, 1.34 );
setEffScaleKey( spep_11 -3 + 84, ctdon2, 1.34, 1.34 );
setEffScaleKey( spep_11 -3 + 86, ctdon2, 1.35, 1.35 );
setEffScaleKey( spep_11 -3 + 88, ctdon2, 1.36, 1.36 );
setEffScaleKey( spep_11 -3 + 90, ctdon2, 1.36, 1.36 );
setEffScaleKey( spep_11 -3 + 92, ctdon2, 1.37, 1.37 );
setEffScaleKey( spep_11 -3 + 96, ctdon2, 1.37, 1.37 );

setEffRotateKey( spep_11 -3 + 52, ctdon2, -23.7 );
setEffRotateKey( spep_11 -3 + 54, ctdon2, -23.8 );
setEffRotateKey( spep_11 -3 + 56, ctdon2, -23.8 );
setEffRotateKey( spep_11 -3 + 58, ctdon2, -23.9 );
setEffRotateKey( spep_11 -3 + 96, ctdon2, -23.9 );

setEffAlphaKey( spep_11 -3 + 52, ctdon2, 255 );
setEffAlphaKey( spep_11 -3 + 92, ctdon2, 255 );
setEffAlphaKey( spep_11 -3 + 94, ctdon2, 128 );
setEffAlphaKey( spep_11 -3 + 96, ctdon2, 0 );


--SE
playSe( spep_11 , 1182 );
se_1062 = playSe( spep_11 + 38, 1062 );
setSeVolume( spep_11 + 38, 1062, 0 );
setSeVolume( spep_11 + 50, 1062, 7 );
setSeVolume( spep_11 + 51, 1062, 14 );
setSeVolume( spep_11 + 52, 1062, 21 );
setSeVolume( spep_11 + 53, 1062, 18 );
setSeVolume( spep_11 + 54, 1062, 35 );
setSeVolume( spep_11 + 55, 1062, 42 );
setSeVolume( spep_11 + 56, 1062, 49 );
setSeVolume( spep_11 + 57, 1062, 56 );
setSeVolume( spep_11 + 58, 1062, 63 );
se_1177 = playSe( spep_11 + 48, 1177 );
setSeVolume( spep_11 + 48, 1177, 63 );
playSe( spep_11 + 48, 1024 );


stopSe( spep_11 + 129, se_1177, 52 );
stopSe( spep_11 + 143, se_1062, 38 );
stopSe( spep_11 + 170, se_1044, 11 );


-- ** ダメージ表示 ** --
dealDamage(spep_11 +8 );

endPhase( spep_11 + 170 );

else

------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め
------------------------------------------------------
--はじめの準備
spep_0= 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 66, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 66, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 66, tame, 255 );

--文字エントリー
ctgogogo = entryEffectLife( spep_0 + 0,  190006, 66 -1, 0x100, -1, 0, -10, 307.4 );

setEffMoveKey( spep_0 + 0, ctgogogo,-10, 307.4 , 0 );
setEffMoveKey( spep_0 + 66 -1, ctgogogo,-10, 307.4 , 0 );

setEffScaleKey( spep_0  + 0, ctgogogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 66 -1, ctgogogo, -1.0, 1.0);

setEffRotateKey(  spep_0,  ctgogogo,  0);
setEffRotateKey(  spep_0 +66 -1,  ctgogogo,  0);

setEffAlphaKey( spep_0  + 0, ctgogogo, 255 );
setEffAlphaKey( spep_0 + 66 -1, ctgogogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 68, 0, 0, 0, 0, 255 );  --黒　背景

--SE
se_1044 = playSe( spep_0 + 0, 1044 );
setSeVolume( spep_0 + 0, 1044, 50 );
se_1181 = playSe( spep_0 + 0, 1181 );
setSeVolume( spep_0 + 0, 1181, 200 );
playSe( spep_0 + 0, 1036 );
setSeVolume( spep_0 + 0, 1036, 32 );
playSe( spep_0 + 24, 1036 );
setSeVolume( spep_0 + 24, 1036, 32 );
playSe( spep_0 + 48, 1036 );
setSeVolume( spep_0 + 48, 1036, 32 );

--次の準備
spep_1=spep_0+66;

------------------------------------------------------
-- 気溜め〜突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin = entryEffect( spep_1 + 0, SP_02x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tossin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 82, tossin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_1 + 82, tossin, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tossin, 0 );
setEffRotateKey( spep_1 + 82, tossin, 0 );
setEffAlphaKey( spep_1 + 0, tossin, 255 );
setEffAlphaKey( spep_1 + 82, tossin, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 22, 1, 0 );

changeAnime( spep_1  + 0, 1, 102 );

setMoveKey( spep_1  + 0, 1, 251, -12.1 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 323.6, 64.3 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 396.2, 140.7 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 468.8, 217.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 541.4, 293.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 614, 369.9 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 686.6, 446.3 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 759.2, 522.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 831.9, 599 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 904.5, 675.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 977.2, 751.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 1049.9, 828 , 0 );

setScaleKey( spep_1  + 0, 1, 2.32, 2.32 );
--setScaleKey( spep_1 -3 + 2, 1, 2.91, 2.91 );
setScaleKey( spep_1 -3 + 4, 1, 3.5, 3.5 );
setScaleKey( spep_1 -3 + 6, 1, 4.09, 4.09 );
setScaleKey( spep_1 -3 + 8, 1, 4.68, 4.68 );
setScaleKey( spep_1 -3 + 10, 1, 5.27, 5.27 );
setScaleKey( spep_1 -3 + 12, 1, 5.85, 5.85 );
setScaleKey( spep_1 -3 + 14, 1, 6.44, 6.44 );
setScaleKey( spep_1 -3 + 16, 1, 7.03, 7.03 );
setScaleKey( spep_1 -3 + 18, 1, 7.62, 7.62 );
setScaleKey( spep_1 -3 + 20, 1, 8.21, 8.21 );
setScaleKey( spep_1 -3 + 22, 1, 8.8, 8.8 );

setRotateKey( spep_1  + 0, 1, -9 );
setRotateKey( spep_1 -3 + 10, 1, -9 );
setRotateKey( spep_1 -3 + 12, 1, -8.9 );
setRotateKey( spep_1 -3 + 22, 1, -8.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 84, 0, 0, 0, 0, 255 );  --黒　背景

--SE
SE0=playSe( spep_1 + 6, 1036 );
setSeVolume( spep_1 + 6, 1036, 32 );
---------------------------------------------------------------------------
-- 回避
---------------------------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える

    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1036, 0 );
    stopSe( SP_dodge - 12, se_1044, 0 );
    stopSe( SP_dodge - 12, se_1181, 0 );

    playSe( SP_dodge - 12, 1042 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    
---------------------------------------------------------------------------
-- 回避しなかった場合
---------------------------------------------------------------------------

--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 48,  10019, 16, 0x100, -1, 0, -74.9, -90 );--ドンッ

setEffMoveKey( spep_1 -3 + 48, ctdon, -74.9, -90 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctdon, -7, 24.5 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctdon, 61.2, 138.9 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctdon, 65.2, 161.9 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctdon, 69.2, 185 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctdon, 73.2, 208 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctdon, 77.1, 231 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctdon, 71.1, 231 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctdon, 65.1, 231 , 0 );

setEffScaleKey( spep_1 -3 + 48, ctdon, 1, 1 );
setEffScaleKey( spep_1 -3 + 50, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 52, ctdon, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 54, ctdon, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 56, ctdon, 3.23, 3.23 );
setEffScaleKey( spep_1 -3 + 58, ctdon, 3.31, 3.31 );
setEffScaleKey( spep_1 -3 + 60, ctdon, 3.39, 3.39 );
setEffScaleKey( spep_1 -3 + 62, ctdon, 3.68, 3.68 );
setEffScaleKey( spep_1 -3 + 64, ctdon, 3.97, 3.97 );

setEffRotateKey( spep_1 -3 + 48, ctdon, 23.7 );
setEffRotateKey( spep_1 -3 + 64, ctdon, 23.7 );

setEffAlphaKey( spep_1 -3 + 48, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 60, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 62, ctdon, 128 );
setEffAlphaKey( spep_1 -3 + 64, ctdon, 0 );

--SE
se_1183 = playSe( spep_1 + 26, 1183 );
setSeVolume( spep_1 + 26, 1183, 0 );
setSeVolume( spep_1 + 45, 1183, 63 );
setSeVolume( spep_1 + 46, 1183, 126 );
se_1036 = playSe( spep_1 + 30, 1036 );
setSeVolume( spep_1 + 30, 1036, 32 );
se_0009 = playSe( spep_1 + 46, 09 );
playSe( spep_1 + 46, 1182 );
setSeVolume( spep_1 + 46, 1182, 126 );
playSe( spep_1 + 46, 1010 );
setSeVolume( spep_1 + 46, 1010, 79 );

stopSe( spep_1 + 46, se_1036, 0 );
stopSe( spep_1 + 46, se_1044, 0 );
stopSe( spep_1 + 46, se_1181, 0 );
--白フェード
entryFade( spep_1 + 74, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+82;


------------------------------------------------------
-- パンチヒット
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 50, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 50, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 50, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 50, punch_f, 255 );
setEffAlphaKey( spep_2 + 51, punch_f, 0 );
setEffAlphaKey( spep_2 + 52, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_2 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 50, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 50, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 50, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 50, punch_b, 255 );
setEffAlphaKey( spep_2 + 51, punch_b, 0 );
setEffAlphaKey( spep_2 + 52, punch_b, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_2 +3 + 2,  10018, 16, 0x100, -1, 0, 84, 179.9 );--ドゴォンッ

setEffMoveKey( spep_2 +3 + 2, ctdogon, 84, 179.9 , 0 );
setEffMoveKey( spep_2 +3 + 4, ctdogon, 82.1, 228.6 , 0 );
setEffMoveKey( spep_2 +3 + 6, ctdogon, 94.7, 263.3 , 0 );
setEffMoveKey( spep_2 +3 + 8, ctdogon, 91.5, 275.4 , 0 );
setEffMoveKey( spep_2 +3 + 10, ctdogon, 97.1, 261.3 , 0 );
setEffMoveKey( spep_2 +3 + 12, ctdogon, 86.4, 267.8 , 0 );
setEffMoveKey( spep_2 +3 + 14, ctdogon, 96.2, 270.6 , 0 );
setEffMoveKey( spep_2 +3 + 16, ctdogon, 89, 259.5 , 0 );
setEffMoveKey( spep_2 +3 + 18, ctdogon, 89, 258.9 , 0 );

setEffScaleKey( spep_2 +3 + 2, ctdogon, 1.3, 1.3 );
setEffScaleKey( spep_2 +3 + 4, ctdogon, 2, 2 );
setEffScaleKey( spep_2 +3 + 6, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_2 +3 + 14, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_2 +3 + 16, ctdogon, 2.89, 2.89 );
setEffScaleKey( spep_2 +3 + 18, ctdogon, 3.09, 3.09 );

setEffRotateKey( spep_2 +3 + 2, ctdogon, 7.9 );
setEffRotateKey( spep_2 +3 + 18, ctdogon, 7.9 );

setEffAlphaKey( spep_2 +3 + 2, ctdogon, 255 );
setEffAlphaKey( spep_2 +3 + 14, ctdogon, 255 );
setEffAlphaKey( spep_2 +3 + 16, ctdogon, 128 );
setEffAlphaKey( spep_2 +3 + 18, ctdogon, 0 );

--敵の動き
setDisp( spep_2+3 + 0, 1, 1 );
changeAnime( spep_2+3 + 0, 1, 106 );

setMoveKey( spep_2+3 + 0, 1, -75, -46 , 0 );
setMoveKey( spep_2+3 + 1, 1, -75, -46 , 0 );
setMoveKey( spep_2+3 + 2, 1, -75, -46 , 0 );
setMoveKey( spep_2+3 + 2, 1, -75, -46 , 0 );
setMoveKey( spep_2+3 + 4, 1, -66.7, -102.4 , 0 );
setMoveKey( spep_2+3 + 5, 1, -66.7, -102.4 , 0 );
setMoveKey( spep_2+3 + 6, 1, -103.3, -0.1 , 0 );
setMoveKey( spep_2+3 + 7, 1, -103.3, -0.1 , 0 );
setMoveKey( spep_2+3 + 8, 1, -79.5, -89.6 , 0 );
setMoveKey( spep_2+3 + 9, 1, -79.5, -89.6 , 0 );
setMoveKey( spep_2+3 + 10, 1, -13.9, -9.1 , 0 );
setMoveKey( spep_2+3 + 11, 1, -13.9, -9.1 , 0 );
setMoveKey( spep_2+3 + 12, 1, -64.4, 7 , 0 );
setMoveKey( spep_2+3 + 13, 1, -64.4, 7 , 0 );
setMoveKey( spep_2+3 + 14, 1, 7.5, -32 , 0 );
setMoveKey( spep_2+3 + 15, 1, 7.5, -32 , 0 );
setMoveKey( spep_2+3 + 16, 1, -18.4, 12.7 , 0 );
setMoveKey( spep_2+3 + 17, 1, -18.4, 12.7 , 0 );
setMoveKey( spep_2+3 + 18, 1, 16.9, -28.4 , 0 );
setMoveKey( spep_2+3 + 19, 1, 16.9, -28.4 , 0 );
setMoveKey( spep_2+3 + 20, 1, -38.5, -38.4 , 0 );
setMoveKey( spep_2+3 + 21, 1, -38.5, -38.4 , 0 );
setMoveKey( spep_2+3 + 22, 1, 15.8, 4.6 , 0 );
setMoveKey( spep_2+3 + 23, 1, 15.8, 4.6 , 0 );
setMoveKey( spep_2+3 + 24, 1, 23.4, -28.1 , 0 );
setMoveKey( spep_2+3 + 25, 1, 23.4, -28.1 , 0 );
setMoveKey( spep_2+3 + 26, 1, 17.4, 8.8 , 0 );
setMoveKey( spep_2+3 + 27, 1, 17.4, 8.8 , 0 );
setMoveKey( spep_2+3 + 28, 1, 16.3, -30 , 0 );
setMoveKey( spep_2+3 + 29, 1, 16.3, -30 , 0 );
setMoveKey( spep_2+3 + 30, 1, 3.6, 6.2 , 0 );
setMoveKey( spep_2+3 + 31, 1, 3.6, 6.2 , 0 );
setMoveKey( spep_2+3 + 32, 1, 32.6, -8.5 , 0 );
setMoveKey( spep_2+3 + 33, 1, 32.6, -8.5 , 0 );
setMoveKey( spep_2+3 + 34, 1, 13.9, -15.2 , 0 );
setMoveKey( spep_2+3 + 35, 1, 13.9, -15.2 , 0 );
setMoveKey( spep_2+3 + 36, 1, 27.9, 3.5 , 0 );
setMoveKey( spep_2+3 + 37, 1, 27.9, 3.5 , 0 );
setMoveKey( spep_2+3 + 38, 1, 31.4, -5.8 , 0 );
setMoveKey( spep_2+3 + 39, 1, 31.4, -5.8 , 0 );
setMoveKey( spep_2+3 + 40, 1, 26, -4.7 , 0 );
setMoveKey( spep_2+3 + 41, 1, 26, -4.7 , 0 );
setMoveKey( spep_2+3 + 42, 1, 29.5, -1.7 , 0 );
setMoveKey( spep_2+3 + 43, 1, 29.5, -1.7 , 0 );
setMoveKey( spep_2+3 + 44, 1, 30.8, -1.1 , 0 );
setMoveKey( spep_2+3 + 45, 1, 30.8, -1.1 , 0 );
setMoveKey( spep_2+3 + 46, 1, 31.9, -0.7 , 0 );
--setMoveKey( spep_2+3 + 47, 1, 31.9, -0.7 , 0 );

setScaleKey( spep_2+3 + 0, 1, 2.38, 2.38 );
setScaleKey( spep_2+3 + 46, 1, 2.38, 2.38 );

setRotateKey( spep_2+3 + 0, 1, -24.3 );
setRotateKey( spep_2+3 + 6, 1, -24.3 );
setRotateKey( spep_2+3 + 7, 1, -24.3 );
setRotateKey( spep_2+3 + 8, 1, -22.2 );
setRotateKey( spep_2+3 + 9, 1, -22.2 );
setRotateKey( spep_2+3 + 10, 1, -20.2 );
setRotateKey( spep_2+3 + 11, 1, -20.2 );
setRotateKey( spep_2+3 + 12, 1, -18.3 );
setRotateKey( spep_2+3 + 13, 1, -18.3 );
setRotateKey( spep_2+3 + 14, 1, -16.6 );
setRotateKey( spep_2+3 + 15, 1, -16.6 );
setRotateKey( spep_2+3 + 16, 1, -15.1 );
setRotateKey( spep_2+3 + 17, 1, -15.1 );
setRotateKey( spep_2+3 + 18, 1, -13.6 );
setRotateKey( spep_2+3 + 19, 1, -13.6 );
setRotateKey( spep_2+3 + 20, 1, -12.3 );
setRotateKey( spep_2+3 + 21, 1, -12.3 );
setRotateKey( spep_2+3 + 22, 1, -11.1 );
setRotateKey( spep_2+3 + 23, 1, -11.1 );
setRotateKey( spep_2+3 + 24, 1, -10.1 );
setRotateKey( spep_2+3 + 25, 1, -10.1 );
setRotateKey( spep_2+3 + 26, 1, -9.1 );
setRotateKey( spep_2+3 + 27, 1, -9.1 );
setRotateKey( spep_2+3 + 28, 1, -8.2 );
setRotateKey( spep_2+3 + 29, 1, -8.2 );
setRotateKey( spep_2+3 + 30, 1, -7.5 );
setRotateKey( spep_2+3 + 31, 1, -7.5 );
setRotateKey( spep_2+3 + 32, 1, -6.8 );
setRotateKey( spep_2+3 + 33, 1, -6.8 );
setRotateKey( spep_2+3 + 34, 1, -6.2 );
setRotateKey( spep_2+3 + 35, 1, -6.2 );
setRotateKey( spep_2+3 + 36, 1, -5.7 );
setRotateKey( spep_2+3 + 37, 1, -5.7 );
setRotateKey( spep_2+3 + 38, 1, -5.2 );
setRotateKey( spep_2+3 + 39, 1, -5.2 );
setRotateKey( spep_2+3 + 40, 1, -4.9 );
setRotateKey( spep_2+3 + 41, 1, -4.9 );
setRotateKey( spep_2+3 + 42, 1, -4.5 );
setRotateKey( spep_2+3 + 43, 1, -4.5 );
setRotateKey( spep_2+3 + 44, 1, -4.3 );
setRotateKey( spep_2+3 + 45, 1, -4.3 );
setRotateKey( spep_2+3 + 46, 1, -4.1 );
--setRotateKey( spep_2+3 + 47, 1, -4.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 52, 0, 0, 0, 0, 255 );  --黒　背景

--SE
se_1120 = playSe( spep_2 + 16, 1120 );
setSeVolume( spep_2 + 16, 1120, 71 );
se_1159 = playSe( spep_2 + 16, 1159 );
setSeVolume( spep_2 + 16, 1159, 40 );
playSe( spep_2 + 16, 1009 );
se_1049 = playSe( spep_2 + 16, 1049 );
setSeVolume( spep_2 + 16, 1049, 40 );

stopSe( spep_2 + 12, se_1183, 4 );
stopSe( spep_2 + 16, se_0009, 0 );
stopSe( spep_2 + 29, se_1120, 22 );
stopSe( spep_2 + 45, se_1159, 32 );
stopSe( spep_2 + 32, se_1049, 28 );

--次の準備
spep_3=spep_2+50;

------------------------------------------------------
-- パンチヒット
------------------------------------------------------
-- ** エフェクト等 ** --
lush_f = entryEffect( spep_3 + 0, SP_05x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, lush_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, lush_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, lush_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, lush_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lush_f, 0 );
setEffRotateKey( spep_3 + 116, lush_f, 0 );
setEffAlphaKey( spep_3 + 0, lush_f, 255 );
setEffAlphaKey( spep_3 + 115, lush_f, 255 );
setEffAlphaKey( spep_3 + 116, lush_f, 0 );

-- ** エフェクト等 ** --
lush_b = entryEffect( spep_3 + 0, SP_06x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, lush_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, lush_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, lush_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, lush_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lush_b, 0 );
setEffRotateKey( spep_3 + 116, lush_b, 0 );
setEffAlphaKey( spep_3 + 0, lush_b, 255 );
setEffAlphaKey( spep_3 + 115, lush_b, 255 );
setEffAlphaKey( spep_3 + 116, lush_b, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -3 + 106, 1, 0 );

setShakeChara(spep_3,1,106 -3,15);

changeAnime( spep_3  + 0, 1, 108 );
changeAnime( spep_3 -3 + 6, 1, 106 );
changeAnime( spep_3 -3 + 26, 1, 108 );
changeAnime( spep_3 -3 + 50, 1, 106 );
changeAnime( spep_3 -3 + 80, 1, 108 );
changeAnime( spep_3 -3 + 98, 1, 107 );

setMoveKey( spep_3  + 0, 1, 189.2, 43 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 160.9, 44 , 0 );
setMoveKey( spep_3 -3 + 5, 1, 132.5, 45 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 89.1, 54.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 102.5, 52.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 97.1, 11.4 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 124.3, 60.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 134, 50.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 142.6, 31.8 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 169.1, 41.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 154.5, 39.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 139.8, 37.1 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 125.1, 34.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 177.1, -5.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 179.1, -5.1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 187.8, -6.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 259.4, -2.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 289.5, -29.8 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 279.8, -14 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 274.8, -5.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 277.7, -5.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 280.6, -5.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 283.4, -5.1 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 286.3, -5.1 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 289.1, -5.1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 309.1, 94.9 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 313.4, 96.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 218.9, 120.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 211.8, 108.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 96.4, 93.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 125.7, 110.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 121.9, 97.1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 139.2, 104.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 143.5, 106.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 147.8, 107.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 129.6, 96.7 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 111.4, 85.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 93.2, 74.5 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 75, 63.5 , 0 );
setMoveKey( spep_3 -3 + 79, 1, 56.8, 52.4 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 93.4, -20.6 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 70.9, -33.1 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 48.4, -45.6 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 48.4, -45.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -72.5, -106.3 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 21.3, -155.2 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -56.6, -83.8 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 12, -177.7 , 0 );
setMoveKey( spep_3 -3 + 97, 1, -52.5, -152.7 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -43.6, -236.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -59.4, -319.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 7.5, -462.6 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 30.7, -759.4 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 63.1, -1174.8 , 0 );

setScaleKey( spep_3  + 0, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 88, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 90, 1, 1.72, 1.72 );
setScaleKey( spep_3 -3 + 92, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 94, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 97, 1, 2.02, 2.02 );
setScaleKey( spep_3 -3 + 98, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 100, 1, 1, 1 );
setScaleKey( spep_3 -3 + 102, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 104, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 106, 1, 3.67, 3.67 );

setRotateKey( spep_3  + 0, 1, -13.7 );
setRotateKey( spep_3-3  + 4, 1, -13.7 );
--setRotateKey( spep_3 -3 + 2, 1, -15.8 );
setRotateKey( spep_3 -3 + 5, 1, -18 );
setRotateKey( spep_3 -3 + 6, 1, -11.7 );
setRotateKey( spep_3 -3 + 8, 1, -10.8 );
setRotateKey( spep_3 -3 + 10, 1, -10 );
setRotateKey( spep_3 -3 + 12, 1, -9.1 );
setRotateKey( spep_3 -3 + 14, 1, -8.3 );
setRotateKey( spep_3 -3 + 16, 1, -7.4 );
setRotateKey( spep_3 -3 + 18, 1, -6.6 );
setRotateKey( spep_3 -3 + 20, 1, -5.7 );
setRotateKey( spep_3 -3 + 22, 1, -4.9 );
setRotateKey( spep_3 -3 + 25, 1, -4 );
setRotateKey( spep_3 -3 + 26, 1, -11.7 );
setRotateKey( spep_3 -3 + 50, 1, -11.7 );
setRotateKey( spep_3 -3 + 52, 1, -11.2 );
setRotateKey( spep_3 -3 + 54, 1, -10.7 );
setRotateKey( spep_3 -3 + 56, 1, -10.2 );
setRotateKey( spep_3 -3 + 58, 1, -9.7 );
setRotateKey( spep_3 -3 + 60, 1, -9.2 );
setRotateKey( spep_3 -3 + 62, 1, -8.7 );
setRotateKey( spep_3 -3 + 64, 1, -8.2 );
setRotateKey( spep_3 -3 + 66, 1, -7.8 );
setRotateKey( spep_3 -3 + 68, 1, -7.3 );
setRotateKey( spep_3 -3 + 70, 1, -6.8 );
setRotateKey( spep_3 -3 + 72, 1, -6.3 );
setRotateKey( spep_3 -3 + 74, 1, -5.8 );
setRotateKey( spep_3 -3 + 76, 1, -5.3 );
setRotateKey( spep_3 -3 + 79, 1, -4.8 );
setRotateKey( spep_3 -3 + 80, 1, 106.5 );
setRotateKey( spep_3 -3 + 88, 1, 106.5 );
setRotateKey( spep_3 -3 + 90, 1, 111.6 );
setRotateKey( spep_3 -3 + 92, 1, 116.6 );
setRotateKey( spep_3 -3 + 94, 1, 121.7 );
setRotateKey( spep_3 -3 + 97, 1, 126.7 );
setRotateKey( spep_3 -3 + 98, 1, 24.1 );
setRotateKey( spep_3 -3 + 100, 1, 24.6 );
setRotateKey( spep_3 -3 + 102, 1, 26 );
setRotateKey( spep_3 -3 + 104, 1, 28.3 );
setRotateKey( spep_3 -3 + 106, 1, 31.6 );


--文字エントリー
ctbaki = entryEffectLife( spep_3 -3 + 84,  10020, 16, 0x100, -1, 0, 80.1, -160.1 );

setEffMoveKey( spep_3 -3 + 84, ctbaki, 80.1, -160.1 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctbaki, 82.1, -180.1 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctbaki, 83.9, -200 , 0 );
setEffMoveKey( spep_3 -3 + 100, ctbaki, 83.9, -200 , 0 );

setEffScaleKey( spep_3 -3 + 84, ctbaki, 2.52, 2.52 );
setEffScaleKey( spep_3 -3 + 86, ctbaki, 2.93, 2.93 );
setEffScaleKey( spep_3 -3 + 88, ctbaki, 3.34, 3.34 );
setEffScaleKey( spep_3 -3 + 100, ctbaki, 3.34, 3.34 );

setEffRotateKey( spep_3 -3 + 84, ctbaki, 0 );
setEffRotateKey( spep_3 -3 + 100, ctbaki, 0 );

setEffAlphaKey( spep_3 -3 + 84, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 100, ctbaki, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_3 + 8, 1009 );
setSeVolume( spep_3 + 8, 1009, 79 );
playSe( spep_3 + 22, 1010 );
setSeVolume( spep_3 + 22, 1010, 79 );
playSe( spep_3 + 46, 1110 );
setSeVolume( spep_3 + 46, 1110, 79 );
playSe( spep_3 + 76, 1123 );
setSeVolume( spep_3 + 76, 1123, 79 );

--次の準備
spep_4=spep_3+116;

------------------------------------------------------
-- 敵が落下して追いかける
------------------------------------------------------
-- ** エフェクト等 ** --
fall_f = entryEffect( spep_4 + 0, SP_07x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fall_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, fall_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fall_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 60, fall_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fall_f, 0 );
setEffRotateKey( spep_4 + 60, fall_f, 0 );
setEffAlphaKey( spep_4 + 0, fall_f, 255 );
setEffAlphaKey( spep_4 + 60, fall_f, 255 );

-- ** エフェクト等 ** --
fall_b = entryEffect( spep_4 + 0, SP_08x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fall_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, fall_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fall_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 60, fall_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fall_b, 0 );
setEffRotateKey( spep_4 + 60, fall_b, 0 );
setEffAlphaKey( spep_4 + 0, fall_b, 255 );
setEffAlphaKey( spep_4 + 60, fall_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );


changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, -65.1, 455.3 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -50.3, 314.4 , 0 );
setMoveKey( spep_4-3 + 4, 1, -38.3, 199.1 , 0 );
setMoveKey( spep_4-3 + 6, 1, -29, 109.4 , 0 );
setMoveKey( spep_4-3 + 8, 1, -22.3, 45.4 , 0 );
setMoveKey( spep_4-3 + 10, 1, -18.3, 7 , 0 );
setMoveKey( spep_4-3 + 12, 1, -17, -5.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, -15.2, -22 , 0 );
setMoveKey( spep_4-3 + 16, 1, -13.7, -35.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, -12.5, -46.2 , 0 );
setMoveKey( spep_4-3 + 20, 1, -11.5, -55.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, -10.7, -63.2 , 0 );
setMoveKey( spep_4-3 + 24, 1, -9.9, -69.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, -9.3, -75.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, -8.7, -80.4 , 0 );
setMoveKey( spep_4-3 + 30, 1, -8.2, -84.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, -7.9, -88.3 , 0 );
setMoveKey( spep_4-3 + 34, 1, -7.5, -91.5 , 0 );
setMoveKey( spep_4-3 + 36, 1, -7.2, -94.3 , 0 );
setMoveKey( spep_4-3 + 38, 1, -6.9, -96.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, -6.7, -98.8 , 0 );
setMoveKey( spep_4-3 + 42, 1, -6.5, -100.7 , 0 );
setMoveKey( spep_4-3 + 44, 1, -6.3, -102.2 , 0 );
setMoveKey( spep_4-3 + 46, 1, -6.1, -103.6 , 0 );
setMoveKey( spep_4-3 + 48, 1, -6, -104.8 , 0 );
setMoveKey( spep_4-3 + 50, 1, -5.9, -105.8 , 0 );
setMoveKey( spep_4-3 + 52, 1, -5.8, -106.6 , 0 );
setMoveKey( spep_4-3 + 54, 1, -5.7, -107.3 , 0 );
setMoveKey( spep_4-3 + 56, 1, -5.6, -107.9 , 0 );
setMoveKey( spep_4-3 + 58, 1, -5.6, -108.3 , 0 );
setMoveKey( spep_4-3 + 60, 1, -5.6, -108.8 , 0 );
setMoveKey( spep_4-3 + 62, 1, -5.6, -109 , 0 );

setScaleKey( spep_4 + 0, 1, 3.29, 3.29 );
--setScaleKey( spep_4-3 + 2, 1, 2.44, 2.44 );
setScaleKey( spep_4-3 + 4, 1, 1.75, 1.75 );
setScaleKey( spep_4-3 + 6, 1, 1.22, 1.22 );
setScaleKey( spep_4-3 + 8, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 10, 1, 0.61, 0.61 );
setScaleKey( spep_4-3 + 12, 1, 0.53, 0.53 );
setScaleKey( spep_4-3 + 14, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 16, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 18, 1, 0.37, 0.37 );
setScaleKey( spep_4-3 + 20, 1, 0.33, 0.33 );
setScaleKey( spep_4-3 + 22, 1, 0.3, 0.3 );
setScaleKey( spep_4-3 + 24, 1, 0.27, 0.27 );
setScaleKey( spep_4-3 + 26, 1, 0.25, 0.25 );
setScaleKey( spep_4-3 + 28, 1, 0.23, 0.23 );
setScaleKey( spep_4-3 + 30, 1, 0.21, 0.21 );
setScaleKey( spep_4-3 + 32, 1, 0.2, 0.2 );
setScaleKey( spep_4-3 + 34, 1, 0.18, 0.18 );
setScaleKey( spep_4-3 + 36, 1, 0.17, 0.17 );
setScaleKey( spep_4-3 + 38, 1, 0.16, 0.16 );
setScaleKey( spep_4-3 + 40, 1, 0.15, 0.15 );
setScaleKey( spep_4-3 + 42, 1, 0.15, 0.15 );
setScaleKey( spep_4-3 + 44, 1, 0.14, 0.14 );
setScaleKey( spep_4-3 + 46, 1, 0.13, 0.13 );
setScaleKey( spep_4-3 + 50, 1, 0.13, 0.13 );
setScaleKey( spep_4-3 + 52, 1, 0.12, 0.12 );
setScaleKey( spep_4-3 + 56, 1, 0.12, 0.12 );
setScaleKey( spep_4-3 + 58, 1, 0.11, 0.11 );
setScaleKey( spep_4-3 + 62, 1, 0.11, 0.11 );

setRotateKey( spep_4 + 0, 1, -176.3 );
--setRotateKey( spep_4-3 + 2, 1, -179.6 );
setRotateKey( spep_4-3 + 4, 1, -182.2 );
setRotateKey( spep_4-3 + 6, 1, -184.3 );
setRotateKey( spep_4-3 + 8, 1, -185.8 );
setRotateKey( spep_4-3 + 10, 1, -186.7 );
setRotateKey( spep_4-3 + 12, 1, -187 );
setRotateKey( spep_4-3 + 14, 1, -188.4 );
setRotateKey( spep_4-3 + 16, 1, -189.5 );
setRotateKey( spep_4-3 + 18, 1, -190.4 );
setRotateKey( spep_4-3 + 20, 1, -191.1 );
setRotateKey( spep_4-3 + 22, 1, -191.7 );
setRotateKey( spep_4-3 + 24, 1, -192.3 );
setRotateKey( spep_4-3 + 26, 1, -192.7 );
setRotateKey( spep_4-3 + 28, 1, -193.1 );
setRotateKey( spep_4-3 + 30, 1, -193.5 );
setRotateKey( spep_4-3 + 32, 1, -193.8 );
setRotateKey( spep_4-3 + 34, 1, -194.1 );
setRotateKey( spep_4-3 + 36, 1, -194.3 );
setRotateKey( spep_4-3 + 38, 1, -194.5 );
setRotateKey( spep_4-3 + 40, 1, -194.7 );
setRotateKey( spep_4-3 + 42, 1, -194.8 );
setRotateKey( spep_4-3 + 44, 1, -194.9 );
setRotateKey( spep_4-3 + 46, 1, -195.1 );
setRotateKey( spep_4-3 + 48, 1, -195.1 );
setRotateKey( spep_4-3 + 50, 1, -195.2 );
setRotateKey( spep_4-3 + 52, 1, -195.3 );
setRotateKey( spep_4-3 + 54, 1, -195.4 );
setRotateKey( spep_4-3 + 58, 1, -195.4 );
setRotateKey( spep_4-3 + 60, 1, -195.5 );
setRotateKey( spep_4-3 + 62, 1, -195.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 62, 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_4 + 6, 1182 );
setSeVolume( spep_4 + 6, 1182, 126 );
playSe( spep_4 + 6, 1010 );
se_1183 = playSe( spep_4 + 6, 1183 );
setSeVolume( spep_4 + 6, 1183, 126 );

--次の準備
spep_5=spep_4+60;

------------------------------------------------------
-- 敵を蹴り上げる
------------------------------------------------------
-- ** エフェクト等 ** --
increase_f = entryEffect( spep_5 + 0, SP_09x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, increase_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, increase_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, increase_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 98, increase_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, increase_f, 0 );
setEffRotateKey( spep_5 + 98, increase_f, 0 );
setEffAlphaKey( spep_5 + 0, increase_f, 255 );
setEffAlphaKey( spep_5 + 98, increase_f, 255 );

-- ** エフェクト等 ** --
increase_b = entryEffect( spep_5 + 0, SP_10x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, increase_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, increase_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, increase_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 98, increase_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, increase_b, 0 );
setEffRotateKey( spep_5 + 98, increase_b, 0 );
setEffAlphaKey( spep_5 + 0, increase_b, 255 );
setEffAlphaKey( spep_5 + 98, increase_b, 255 );

--敵の動き
setDisp( spep_5-3 + 56, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );
changeAnime( spep_5-3 + 42, 1, 106 );

setMoveKey( spep_5 + 0, 1, 16, 85.8 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 16, 85.8 , 0 );
setMoveKey( spep_5-3 + 4, 1, 16.1, 85.8 , 0 );
setMoveKey( spep_5-3 + 34, 1, 16.1, 85.8 , 0 );
setMoveKey( spep_5-3 + 36, 1, 14.4, 87.2 , 0 );
setMoveKey( spep_5-3 + 38, 1, 12.7, 88.6 , 0 );
setMoveKey( spep_5-3 + 40, 1, 11, 90 , 0 );
setMoveKey( spep_5-3 + 41, 1, 11, 90 , 0 );
setMoveKey( spep_5-3 + 42, 1, 36.5, 285.6 , 0 );
setMoveKey( spep_5-3 + 53, 1, 36.5, 285.6 , 0 );
setMoveKey( spep_5-3 + 54, 1, 23.5, 629.5 , 0 );
setMoveKey( spep_5-3 + 56, 1, 115.4, 558.8 , 0 );

setScaleKey( spep_5 + 0, 1, 2.31, 2.31 );
setScaleKey( spep_5-3 + 41, 1, 2.31, 2.31 );
setScaleKey( spep_5-3 + 42, 1, 2.85, 2.85 );
setScaleKey( spep_5-3 + 53, 1, 2.85, 2.85 );
setScaleKey( spep_5-3 + 54, 1, 2.85, 2.85 );
setScaleKey( spep_5-3 + 56, 1, 2.85, 2.85 );

setRotateKey( spep_5 + 0, 1, 88.7 );
--setRotateKey( spep_5-3 + 2, 1, 88.7 );
setRotateKey( spep_5-3 + 4, 1, 88.8 );
setRotateKey( spep_5-3 + 6, 1, 88.8 );
setRotateKey( spep_5-3 + 8, 1, 88.9 );
setRotateKey( spep_5-3 + 12, 1, 88.9 );
setRotateKey( spep_5-3 + 14, 1, 89 );
setRotateKey( spep_5-3 + 16, 1, 89 );
setRotateKey( spep_5-3 + 18, 1, 89.1 );
setRotateKey( spep_5-3 + 20, 1, 89.1 );
setRotateKey( spep_5-3 + 22, 1, 89.2 );
setRotateKey( spep_5-3 + 26, 1, 89.2 );
setRotateKey( spep_5-3 + 28, 1, 89.3 );
setRotateKey( spep_5-3 + 30, 1, 89.3 );
setRotateKey( spep_5-3 + 32, 1, 89.4 );
setRotateKey( spep_5-3 + 34, 1, 89.4 );
setRotateKey( spep_5-3 + 36, 1, 88.7 );
setRotateKey( spep_5-3 + 38, 1, 88 );
setRotateKey( spep_5-3 + 40, 1, 87.3 );
setRotateKey( spep_5-3 + 41, 1, 87.3 );
setRotateKey( spep_5-3 + 42, 1, 34 );
setRotateKey( spep_5-3 + 56, 1, 34 );

--文字エントリー
ctga = entryEffectLife( spep_5 -3 + 54,  10005, 12, 0x100, -1, 0, 2.2, 362.6 );--ガッ

setEffMoveKey( spep_5 -3 + 54, ctga, 2.2, 362.6 , 0 );
setEffMoveKey( spep_5 -3 + 56, ctga, -21.7, 354.2 , 0 );
setEffMoveKey( spep_5 -3 + 58, ctga, -45.6, 345.9 , 0 );
setEffMoveKey( spep_5 -3 + 60, ctga, -38.1, 350.2 , 0 );
setEffMoveKey( spep_5 -3 + 62, ctga, -30.7, 354.5 , 0 );
setEffMoveKey( spep_5 -3 + 64, ctga, -23.2, 358.9 , 0 );
setEffMoveKey( spep_5 -3 + 66, ctga, -15.7, 363.2 , 0 );

a=1.7;

setEffScaleKey( spep_5 -3 + 54, ctga, 1.53+a, 1.53+a );
setEffScaleKey( spep_5 -3 + 56, ctga, 1.9+a, 1.9+a );
setEffScaleKey( spep_5 -3 + 58, ctga, 2.27+a, 2.27+a );
setEffScaleKey( spep_5 -3 + 60, ctga, 2.42+a, 2.42+a );
setEffScaleKey( spep_5 -3 + 62, ctga, 2.57+a, 2.57+a );
setEffScaleKey( spep_5 -3 + 64, ctga, 2.72+a, 2.72+a );
setEffScaleKey( spep_5 -3 + 66, ctga, 2.87+a, 2.87+a );

setEffRotateKey( spep_5 -3 + 54, ctga, 0 );
setEffRotateKey( spep_5 -3 + 66, ctga, 0 );

setEffAlphaKey( spep_5 -3 + 54, ctga, 255 );
setEffAlphaKey( spep_5 -3 + 58, ctga, 255 );
setEffAlphaKey( spep_5 -3 + 60, ctga, 191 );
setEffAlphaKey( spep_5 -3 + 62, ctga, 128 );
setEffAlphaKey( spep_5 -3 + 64, ctga, 64 );
setEffAlphaKey( spep_5 -3 + 66, ctga, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_5 + 18, 1035 );
playSe( spep_5 + 40, 1120 );
setSeVolume( spep_5 + 40, 1120, 79 );
playSe( spep_5 + 82, 1109 );
playSe( spep_5 + 82, 1132 );
setSeVolume( spep_5 + 82, 1132, 0 );

stopSe( spep_5 + 47, se_1183, 0 );

--次の準備
spep_6=spep_5+98;

------------------------------------------------------
-- 地上に移動してかめはめ波の構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_6 + 0, SP_11x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, tame2, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 90, tame2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame2, 0 );
setEffRotateKey( spep_6 + 90, tame2, 0 );
setEffAlphaKey( spep_6 + 0, tame2, 255 );
setEffAlphaKey( spep_6 + 90, tame2, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_6, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_6, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_6 + 12 , 190006, 72, 0x100, -1, 0, -40, 530);    -- ゴゴゴゴ

setEffShake(spep_6 + 12 ,ctgogo,72,10);

setEffMoveKey(  spep_6 +12 ,  ctgogo,  -40,  530);
setEffMoveKey(  spep_6 +84 ,  ctgogo,  -40,  530);

setEffAlphaKey( spep_6 +12 , ctgogo, 0 );
setEffAlphaKey( spep_6 + 13 , ctgogo, 255 );
setEffAlphaKey( spep_6 + 14 , ctgogo, 255 );
setEffAlphaKey( spep_6 + 76 , ctgogo, 255 );
setEffAlphaKey( spep_6 + 78 , ctgogo, 255 );
setEffAlphaKey( spep_6 + 80 , ctgogo, 191 );
setEffAlphaKey( spep_6 + 82 , ctgogo, 128 );
setEffAlphaKey( spep_6 + 84 , ctgogo, 64 );

setEffRotateKey(  spep_6 +12 ,  ctgogo,  0);
setEffRotateKey(  spep_6 +84 ,  ctgogo,  0);

setEffScaleKey(  spep_6 +12 ,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_6 +74 ,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_6 +84 ,  ctgogo, -1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 92, 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_6 + 12, 1018 );
setSeVolume( spep_6 + 21, 1132, 25 );
setSeVolume( spep_6 + 22, 1132, 50 );
playSe( spep_6 + 22, 1036 );
setSeVolume( spep_6 + 22, 1036, 79 );
playSe( spep_6 + 47, 1036 );
setSeVolume( spep_6 + 47, 1036, 79 );
se_1036 = playSe( spep_6 + 71, 1036 );
setSeVolume( spep_6 + 71, 1036, 79 );

--白フェード
entryFade( spep_6 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 90;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );

-- ** 音 ** --
stopSe( spep_7 , se_1036, 0 );
playSe( spep_7 + 0, SE_05 );

--白フェード
entryFade( spep_7 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;

------------------------------------------------------
-- かめはめ波を撃つ
------------------------------------------------------
-- ** エフェクト等 ** --
release = entryEffect( spep_8 + 0, SP_12x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, release, 0, 0 , 0 );
setEffMoveKey( spep_8 + 90, release, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, release, 1.0, 1.0 );
setEffScaleKey( spep_8 + 90, release, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, release, 0 );
setEffRotateKey( spep_8 + 90, release, 0 );
setEffAlphaKey( spep_8 + 0, release, 255 );
setEffAlphaKey( spep_8 + 90, release, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_8-3 + 6,  10012, 18, 0x100, -1, 0, 65.1, -125.4 );--ズオッ

setEffMoveKey( spep_8-3 + 6, ctzuo, 65.1, -125.4 , 0 );
setEffMoveKey( spep_8-3 + 8, ctzuo, 91.2, -136.2 , 0 );
setEffMoveKey( spep_8-3 + 10, ctzuo, 75.4, -143.9 , 0 );
setEffMoveKey( spep_8-3 + 12, ctzuo, 107.6, -155.2 , 0 );
setEffMoveKey( spep_8-3 + 14, ctzuo, 70.2, -155.2 , 0 );
setEffMoveKey( spep_8-3 + 16, ctzuo, 88.2, -159.2 , 0 );
setEffMoveKey( spep_8-3 + 18, ctzuo, 49.7, -159.1 , 0 );
setEffMoveKey( spep_8-3 + 20, ctzuo, 68.7, -163.3 , 0 );
setEffMoveKey( spep_8-3 + 22, ctzuo, 29.1, -163 , 0 );
setEffMoveKey( spep_8-3 + 24, ctzuo, 18.8, -165 , 0 );

b=2.5;

setEffScaleKey( spep_8-3 + 6, ctzuo, 2.24, 2.24 );
--setEffScaleKey( spep_8-3 + 8, ctzuo, 0.74+b, 0.74+b );
--setEffScaleKey( spep_8-3 + 10, ctzuo, 0.85+b, 0.85+b );
--setEffScaleKey( spep_8-3 + 12, ctzuo, 0.96+b, 0.96+b );
--setEffScaleKey( spep_8-3 + 14, ctzuo, 0.98+b, 0.98+b );
setEffScaleKey( spep_8-3 + 16, ctzuo, 1+b, 1+b );
setEffScaleKey( spep_8-3 + 18, ctzuo, 1.02+b, 1.02+b );
setEffScaleKey( spep_8-3 + 20, ctzuo, 1.04+b, 1.04+b );
setEffScaleKey( spep_8-3 + 22, ctzuo, 1.06+b, 1.06+b );
setEffScaleKey( spep_8-3 + 24, ctzuo, 1.08+b, 1.08+b );

setEffRotateKey( spep_8-3 + 6, ctzuo, -10.7 );
setEffRotateKey( spep_8-3 + 24, ctzuo, -10.7 );

setEffAlphaKey( spep_8-3 + 6, ctzuo, 255 );
setEffAlphaKey( spep_8-3 + 12, ctzuo, 255 );
setEffAlphaKey( spep_8-3 + 14, ctzuo, 213 );
setEffAlphaKey( spep_8-3 + 16, ctzuo, 170 );
setEffAlphaKey( spep_8-3 + 18, ctzuo, 128 );
setEffAlphaKey( spep_8-3 + 20, ctzuo, 85 );
setEffAlphaKey( spep_8-3 + 22, ctzuo, 42 );
setEffAlphaKey( spep_8-3 + 24, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_8 , 1022 );
setSeVolume( spep_8 + 87, 1022, 79 );
playSe( spep_8 , 1146 );
setSeVolume( spep_8 + 87, 1146, 71 );

-- ** 次の準備 ** --
spep_9 = spep_8 + 86;

------------------------------------------------------
-- かめはめ波を上空に撃っている
------------------------------------------------------
-- ** エフェクト等 ** --
air = entryEffect( spep_9 + 0, SP_13x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, air, 0, 0 , 0 );
setEffMoveKey( spep_9 + 86, air, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, air, 1.0, 1.0 );
setEffScaleKey( spep_9 + 86, air, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, air, 0 );
setEffRotateKey( spep_9 + 86, air, 0 );
setEffAlphaKey( spep_9 + 0, air, 255 );
setEffAlphaKey( spep_9 + 86, air, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_9 + 0,  10014, 58, 0x100, -1, 0, 17.1, -399.3 );--ズドドドッ

setEffMoveKey( spep_9 + 0, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 2, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 4, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 6, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 8, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 10, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 12, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 14, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 16, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 18, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 20, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 22, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 24, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 26, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 28, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 30, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 32, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 34, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 36, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 38, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 40, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 42, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 44, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 46, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 48, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 50, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 52, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 54, ctzudodo, 6.7, -417.1 , 0 );
setEffMoveKey( spep_9 + 56, ctzudodo, 17.1, -399.3 , 0 );
setEffMoveKey( spep_9 + 58, ctzudodo, 6.7, -417.1 , 0 );

setEffScaleKey( spep_9 + 0, ctzudodo, 2.31, 2.31 );
setEffScaleKey( spep_9 + 58, ctzudodo, 2.31, 2.31 );

setEffRotateKey( spep_9 + 0, ctzudodo, -37.1 );
setEffRotateKey( spep_9 + 58, ctzudodo, -37.1 );

setEffAlphaKey( spep_9 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_9 + 58, ctzudodo, 255 );

-- ** 白背景 ** --
entryFadeBg( spep_9 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --白 背景

--SE
playSe( spep_9 , 1181 );
se_1044 = playSe( spep_9 + 77, 1044 );
playSe( spep_9 + 6, 1161 );
setSeVolume( spep_9 + 6, 1161, 32 );
playSe( spep_9 + 6, 1124 );
setSeVolume( spep_9 + 6, 1124, 56 );

-- ** 次の準備 ** --
spep_10 = spep_9 + 86;

------------------------------------------------------
-- 敵がかめはめ波に包まれる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_10 + 0, SP_14x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 32, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 32, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hit_f, 0 );
setEffRotateKey( spep_10 + 32, hit_f, 0 );
setEffAlphaKey( spep_10 + 0, hit_f, 255 );
setEffAlphaKey( spep_10 + 32, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_10 + 0, SP_15x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 32, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 32, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hit_b, 0 );
setEffRotateKey( spep_10 + 32, hit_b, 0 );
setEffAlphaKey( spep_10 + 0, hit_b, 255 );
setEffAlphaKey( spep_10 + 32, hit_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_10 -3 + 3, 1, 1 );
setDisp( spep_10 -3 + 34, 1, 0 );
changeAnime( spep_10 -3 + 3, 1, 106 );

--setMoveKey( spep_10 -3 + 0, 1, -192.8, -141.2 , 0 );
setMoveKey( spep_10 -3 + 3, 1, -91.4, -26.5 , 0 );
setMoveKey( spep_10 -3 + 4, 1, -14.8, 79 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 69.9, 150.6 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 111.6, 223.8 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 145.4, 255.8 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 177.6, 313.8 , 0 );
setMoveKey( spep_10 -3 + 14, 1, 212, 335.3 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 230, 373.5 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 233.1, 381.7 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 238.5, 401.6 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 261.4, 427 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 254.3, 419.1 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 244.3, 416.8 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 264.5, 422.8 , 0 );
setMoveKey( spep_10 -3 + 30, 1, 245.1, 422.3 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 256.9, 416.5 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 261.9, 425.5 , 0 );

setScaleKey( spep_10 + 0, 1, 2.27, 2.27 );
setScaleKey( spep_10 + 2, 1, 1.85, 1.85 );
setScaleKey( spep_10 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_10 + 6, 1, 1.22, 1.22 );
setScaleKey( spep_10 + 8, 1, 0.99, 0.99 );
setScaleKey( spep_10 + 10, 1, 0.8, 0.8 );
setScaleKey( spep_10 + 12, 1, 0.66, 0.66 );
setScaleKey( spep_10 + 14, 1, 0.55, 0.55 );
setScaleKey( spep_10 + 16, 1, 0.47, 0.47 );
setScaleKey( spep_10 + 18, 1, 0.42, 0.42 );
setScaleKey( spep_10 + 20, 1, 0.38, 0.38 );
setScaleKey( spep_10 + 22, 1, 0.35, 0.35 );
setScaleKey( spep_10 + 24, 1, 0.33, 0.33 );
setScaleKey( spep_10 + 26, 1, 0.33, 0.33 );
setScaleKey( spep_10 + 28, 1, 0.32, 0.32 );
setScaleKey( spep_10 + 34, 1, 0.32, 0.32 );

setRotateKey( spep_10 + 0, 1, 63.5 );
setRotateKey( spep_10 + 2, 1, 64.3 );
setRotateKey( spep_10 + 4, 1, 65 );
setRotateKey( spep_10 + 6, 1, 65.5 );
setRotateKey( spep_10 + 8, 1, 65.9 );
setRotateKey( spep_10 + 10, 1, 66.3 );
setRotateKey( spep_10 + 12, 1, 66.6 );
setRotateKey( spep_10 + 14, 1, 66.8 );
setRotateKey( spep_10 + 16, 1, 66.9 );
setRotateKey( spep_10 + 18, 1, 67 );
setRotateKey( spep_10 + 20, 1, 67.1 );
setRotateKey( spep_10 + 22, 1, 67.1 );
setRotateKey( spep_10 + 34, 1, 67.2 );

-- ** 白背景 ** --
entryFadeBg( spep_10 + 0, 0, 40, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --白 背景

--SE
playSe( spep_10 , 1021 );

-- ** 次の準備 ** --
spep_11 = spep_10 + 34;

------------------------------------------------------
-- フィニッシュの爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_11 + 0, SP_16,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_11 + 180, finish, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_11 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish, 0 );
setEffRotateKey( spep_11 + 180, finish, 0 );
setEffAlphaKey( spep_11 + 0, finish, 255 );
setEffAlphaKey( spep_11 + 180, finish, 255 );

--文字エントリー
ctdon2 = entryEffectLife( spep_11 -3 + 52,  10052, 44, 0x100, -1, 0, 161.4, 275.3 );

setEffMoveKey( spep_11 -3 + 52, ctdon2, 161.4, 275.3 , 0 );
setEffMoveKey( spep_11 -3 + 54, ctdon2, 144.7, 240.6 , 0 );
setEffMoveKey( spep_11 -3 + 56, ctdon2, 128, 205.9 , 0 );
setEffMoveKey( spep_11 -3 + 58, ctdon2, 111.3, 171.2 , 0 );
setEffMoveKey( spep_11 -3 + 60, ctdon2, 110.9, 170.2 , 0 );
setEffMoveKey( spep_11 -3 + 62, ctdon2, 110.6, 169.1 , 0 );
setEffMoveKey( spep_11 -3 + 64, ctdon2, 110.2, 168 , 0 );
setEffMoveKey( spep_11 -3 + 66, ctdon2, 109.9, 167 , 0 );
setEffMoveKey( spep_11 -3 + 68, ctdon2, 109.5, 165.9 , 0 );
setEffMoveKey( spep_11 -3 + 70, ctdon2, 109.2, 164.9 , 0 );
setEffMoveKey( spep_11 -3 + 72, ctdon2, 108.8, 163.8 , 0 );
setEffMoveKey( spep_11 -3 + 74, ctdon2, 108.4, 162.7 , 0 );
setEffMoveKey( spep_11 -3 + 76, ctdon2, 108.1, 161.7 , 0 );
setEffMoveKey( spep_11 -3 + 78, ctdon2, 107.7, 160.6 , 0 );
setEffMoveKey( spep_11 -3 + 80, ctdon2, 107.4, 159.6 , 0 );
setEffMoveKey( spep_11 -3 + 82, ctdon2, 107, 158.5 , 0 );
setEffMoveKey( spep_11 -3 + 84, ctdon2, 106.7, 157.4 , 0 );
setEffMoveKey( spep_11 -3 + 86, ctdon2, 106.3, 156.4 , 0 );
setEffMoveKey( spep_11 -3 + 88, ctdon2, 106, 155.3 , 0 );
setEffMoveKey( spep_11 -3 + 90, ctdon2, 105.6, 154.2 , 0 );
setEffMoveKey( spep_11 -3 + 92, ctdon2, 105.3, 153.2 , 0 );
setEffMoveKey( spep_11 -3 + 96, ctdon2, 105.3, 153.2 , 0 );

setEffScaleKey( spep_11 -3 + 52, ctdon2, 0.63, 0.63 );
setEffScaleKey( spep_11 -3 + 54, ctdon2, 0.84, 0.84 );
setEffScaleKey( spep_11 -3 + 56, ctdon2, 1.05, 1.05 );
setEffScaleKey( spep_11 -3 + 58, ctdon2, 1.26, 1.26 );
setEffScaleKey( spep_11 -3 + 60, ctdon2, 1.27, 1.27 );
setEffScaleKey( spep_11 -3 + 62, ctdon2, 1.27, 1.27 );
setEffScaleKey( spep_11 -3 + 64, ctdon2, 1.28, 1.28 );
setEffScaleKey( spep_11 -3 + 66, ctdon2, 1.29, 1.29 );
setEffScaleKey( spep_11 -3 + 68, ctdon2, 1.29, 1.29 );
setEffScaleKey( spep_11 -3 + 70, ctdon2, 1.3, 1.3 );
setEffScaleKey( spep_11 -3 + 72, ctdon2, 1.31, 1.31 );
setEffScaleKey( spep_11 -3 + 74, ctdon2, 1.31, 1.31 );
setEffScaleKey( spep_11 -3 + 76, ctdon2, 1.32, 1.32 );
setEffScaleKey( spep_11 -3 + 78, ctdon2, 1.32, 1.32 );
setEffScaleKey( spep_11 -3 + 80, ctdon2, 1.33, 1.33 );
setEffScaleKey( spep_11 -3 + 82, ctdon2, 1.34, 1.34 );
setEffScaleKey( spep_11 -3 + 84, ctdon2, 1.34, 1.34 );
setEffScaleKey( spep_11 -3 + 86, ctdon2, 1.35, 1.35 );
setEffScaleKey( spep_11 -3 + 88, ctdon2, 1.36, 1.36 );
setEffScaleKey( spep_11 -3 + 90, ctdon2, 1.36, 1.36 );
setEffScaleKey( spep_11 -3 + 92, ctdon2, 1.37, 1.37 );
setEffScaleKey( spep_11 -3 + 96, ctdon2, 1.37, 1.37 );

setEffRotateKey( spep_11 -3 + 52, ctdon2, -23.7 );
setEffRotateKey( spep_11 -3 + 54, ctdon2, -23.8 );
setEffRotateKey( spep_11 -3 + 56, ctdon2, -23.8 );
setEffRotateKey( spep_11 -3 + 58, ctdon2, -23.9 );
setEffRotateKey( spep_11 -3 + 96, ctdon2, -23.9 );

setEffAlphaKey( spep_11 -3 + 52, ctdon2, 255 );
setEffAlphaKey( spep_11 -3 + 92, ctdon2, 255 );
setEffAlphaKey( spep_11 -3 + 94, ctdon2, 128 );
setEffAlphaKey( spep_11 -3 + 96, ctdon2, 0 );

--SE
playSe( spep_11 , 1182 );
se_1062 = playSe( spep_11 + 38, 1062 );
setSeVolume( spep_11 + 38, 1062, 0 );
setSeVolume( spep_11 + 50, 1062, 7 );
setSeVolume( spep_11 + 51, 1062, 14 );
setSeVolume( spep_11 + 52, 1062, 21 );
setSeVolume( spep_11 + 53, 1062, 18 );
setSeVolume( spep_11 + 54, 1062, 35 );
setSeVolume( spep_11 + 55, 1062, 42 );
setSeVolume( spep_11 + 56, 1062, 49 );
setSeVolume( spep_11 + 57, 1062, 56 );
setSeVolume( spep_11 + 58, 1062, 63 );
se_1177 = playSe( spep_11 + 48, 1177 );
setSeVolume( spep_11 + 48, 1177, 63 );
playSe( spep_11 + 48, 1024 );


stopSe( spep_11 + 129, se_1177, 52 );
stopSe( spep_11 + 143, se_1062, 38 );
stopSe( spep_11 + 170, se_1044, 11 );

-- ** ダメージ表示 ** --
dealDamage(spep_11 +8 );

endPhase( spep_11 + 170 );

end
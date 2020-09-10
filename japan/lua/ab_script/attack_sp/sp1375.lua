--1017410:超サイヤ人2孫悟空(天使)_超かめはめ波
--sp_effect_a1_00207

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
SP_01=	154657	;--	溜め
SP_02=	154658	;--	前方突進
SP_03=	154659	;--	横パンチ～膝蹴り　前側
SP_04=	154660	;--	横パンチ～膝蹴り 後側
SP_05=	154661	;--	回し蹴り　前側
SP_06=	154662	;--	回し蹴り　後側
SP_07=	154663	;--	気弾溜め
SP_08=	154664	;--	発射
SP_09=	154665	;--	迫る　前側
SP_10=	154666	;--	迫る　後側
SP_11=	154667	;--	大爆発

--てき側
SP_01x=	154657	;--	溜め	
SP_02x=	154658	;--	前方突進	
SP_03x=	154704	;--	横パンチ～膝蹴り　前側	(敵)
SP_04x=	154660	;--	横パンチ～膝蹴り 後側	
SP_05x=	154661	;--	回し蹴り　前側	
SP_06x=	154662	;--	回し蹴り　後側	
SP_07x=	154705	;--	気弾溜め	(敵)
SP_08x=	154706	;--	発射	(敵)
SP_09x=	154665	;--	迫る　前側	
SP_10x=	154666	;--	迫る　後側	
SP_11x=	154667	;--	大爆発	

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
--[[
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
]]
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
--最初の準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 184, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 184, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 184, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 184, tame, 255 );
setEffAlphaKey( spep_0 + 185, tame, 0 );
setEffAlphaKey( spep_0 + 186, tame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +22, 190006, 72, 0x100, -1, 0, 150, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +22,  ctgogo,  150,  510);
setEffMoveKey(  spep_0 +94,  ctgogo,  150,  510);

setEffAlphaKey( spep_0 +22, ctgogo, 0 );
setEffAlphaKey( spep_0 + 23, ctgogo, 255 );
setEffAlphaKey( spep_0 + 24, ctgogo, 255 );
setEffAlphaKey( spep_0 + 87, ctgogo, 255 );
setEffAlphaKey( spep_0 + 88, ctgogo, 255 );
setEffAlphaKey( spep_0 + 90, ctgogo, 191 );
setEffAlphaKey( spep_0 + 92, ctgogo, 112 );
setEffAlphaKey( spep_0 + 94, ctgogo, 64 );

setEffRotateKey(  spep_0 +22,  ctgogo,  0);
setEffRotateKey(  spep_0 +94,  ctgogo,  0);

setEffScaleKey(  spep_0 +22,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +94,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 24, 1018 );

se_1056 = playSe( spep_0 + 0, 1056 );
setSeVolume( spep_0 + 0, 1056, 79 );
playSe( spep_0 + 18, 1035 );
playSe( spep_0 + 39, 1036 );
playSe( spep_0 + 63, 1036 );
playSe( spep_0 + 87, 1036 );
playSe( spep_0 + 111, 1036 );
se_1068 = playSe( spep_0 + 119, 1068 );
playSe( spep_0 + 135, 1036 );
playSe( spep_0 + 159, 1036 );
se_1183 = playSe( spep_0 + 174, 1183 );
setSeVolume( spep_0 + 174, 1183, 0 );
se_1036 = playSe( spep_0 + 183, 1036 );

stopSe( spep_0 + 48, se_1056, 0 );

--最初の準備
spep_1 = spep_0 +184;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_1 + 0, tossin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 54, tossin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_1 + 54, tossin, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tossin, 0 );
setEffRotateKey( spep_1 + 54, tossin, 0 );
setEffAlphaKey( spep_1 + 0, tossin, 255 );
setEffAlphaKey( spep_1 + 54, tossin, 255 );
setEffAlphaKey( spep_1 + 55, tossin, 0 );
setEffAlphaKey( spep_1 + 56, tossin, 0 );

--SE
se_0009 = playSe( spep_1 + 6, 9 );
SE0=playSe( spep_1 + 6, 1182 );

setSeVolume( spep_1 + 7, 1183, 59 );
setSeVolume( spep_1 + 8, 1183, 118 );
setSeVolume( spep_1 + 9, 1183, 178 );

stopSe( spep_1 + 9, se_1068, 0 );
stopSe( spep_1 + 6, se_1036, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1183, 0 );
    stopSe( SP_dodge - 12, se_0009, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--最初の準備
spep_2 = spep_1 +54;


------------------------------------------------------
-- 前方突進
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 142, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 142, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 142, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 142, attack_f, 255 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 142, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 142, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 142, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 142, attack_b, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 26,  10020, 18, 0x100, -1, 0, -13.9, 179 );--バキッ
setEffShake( spep_2-3 + 26, ctbaki, 18, 20 );
setEffMoveKey( spep_2-3 + 26, ctbaki, -13.9, 179 , 0 );
setEffMoveKey( spep_2-3 + 28, ctbaki, 5.2, 196.4 , 0 );
setEffMoveKey( spep_2-3 + 30, ctbaki, 35.9, 232.7 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbaki, 27.3, 229.4 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbaki, 24.8, 217.2 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbaki, 35.9, 232.7 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbaki, 27.3, 229.4 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbaki, 24.8, 217.2 , 0 );
setEffMoveKey( spep_2-3 + 42, ctbaki, 35.9, 232.7 , 0 );
setEffMoveKey( spep_2-3 + 44, ctbaki, 27.3, 229.4 , 0 );

setEffScaleKey( spep_2-3 + 26, ctbaki, 0.36, 0.36 );
setEffScaleKey( spep_2-3 + 28, ctbaki, 0.81, 0.81 );
setEffScaleKey( spep_2-3 + 30, ctbaki, 1.27, 1.27 );
setEffScaleKey( spep_2-3 + 44, ctbaki, 1.27, 1.27 );

setEffRotateKey( spep_2-3 + 26, ctbaki, 35.6 );
setEffRotateKey( spep_2-3 + 28, ctbaki, 35.5 );
setEffAlphaKey( spep_2-3 + 44, ctbaki, 255 );

setEffAlphaKey( spep_2-3 + 26, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 44, ctbaki, 255 );

--文字エントリー
ctbagon = entryEffectLife( spep_2-3 + 58,  10021, 22, 0x100, -1, 0, 112.2, 270.1 );--バゴォッ
setEffShake( spep_2-3 + 58, ctbagon, 22, 20 );
setEffMoveKey( spep_2-3 + 58, ctbagon, 112.2, 270.1 , 0 );
setEffMoveKey( spep_2-3 + 60, ctbagon, 113.3, 306.6 , 0 );
setEffMoveKey( spep_2-3 + 62, ctbagon, 105.3, 352.1 , 0 );
setEffMoveKey( spep_2-3 + 64, ctbagon, 111.5, 346.6 , 0 );
setEffMoveKey( spep_2-3 + 66, ctbagon, 105.3, 353.5 , 0 );
setEffMoveKey( spep_2-3 + 68, ctbagon, 111.6, 347.9 , 0 );
setEffMoveKey( spep_2-3 + 70, ctbagon, 105.2, 355 , 0 );
setEffMoveKey( spep_2-3 + 72, ctbagon, 111.6, 349.3 , 0 );
setEffMoveKey( spep_2-3 + 74, ctbagon, 105.2, 356.5 , 0 );
setEffMoveKey( spep_2-3 + 76, ctbagon, 111.6, 350.8 , 0 );
setEffMoveKey( spep_2-3 + 78, ctbagon, 103.5, 363.2 , 0 );
setEffMoveKey( spep_2-3 + 80, ctbagon, 101.8, 369.1 , 0 );

setEffScaleKey( spep_2-3 + 58, ctbagon, 1, 1 );
setEffScaleKey( spep_2-3 + 60, ctbagon, 1.62, 1.62 );
setEffScaleKey( spep_2-3 + 62, ctbagon, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 64, ctbagon, 2.24, 2.24 );
setEffScaleKey( spep_2-3 + 66, ctbagon, 2.25, 2.25 );
setEffScaleKey( spep_2-3 + 68, ctbagon, 2.26, 2.26 );
setEffScaleKey( spep_2-3 + 70, ctbagon, 2.27, 2.27 );
setEffScaleKey( spep_2-3 + 72, ctbagon, 2.28, 2.28 );
setEffScaleKey( spep_2-3 + 74, ctbagon, 2.29, 2.29 );
setEffScaleKey( spep_2-3 + 76, ctbagon, 2.3, 2.3 );
setEffScaleKey( spep_2-3 + 78, ctbagon, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 80, ctbagon, 2.8, 2.8 );

setEffRotateKey( spep_2-3 + 58, ctbagon, 0 );
setEffRotateKey( spep_2-3 + 80, ctbagon, 0 );

setEffAlphaKey( spep_2-3 + 58, ctbagon, 255 );
setEffAlphaKey( spep_2-3 + 76, ctbagon, 255 );
setEffAlphaKey( spep_2-3 + 78, ctbagon, 128 );
setEffAlphaKey( spep_2-3 + 80, ctbagon, 0 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );


changeAnime( spep_2  + 0, 1, 101 );
changeAnime( spep_2 -3 + 26, 1, 106 );
changeAnime( spep_2 -3 + 60, 1, 108 );

setMoveKey( spep_2  + 0, 1, 201.4, 24.5 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 193.1, 24.4 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 184.9, 24.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 176.7, 24.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 168.4, 24.4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 160.2, 24.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 151.9, 24.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 143.7, 24.4 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 135.4, 24.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 127.2, 24.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 119, 24.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 110.7, 24.4 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 102.5, 24.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 90.5, 45 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 113.3, 8.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 82.4, 28 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 124.3, 28.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 106.7, 1.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 105.4, 44.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 94.8, 15.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 102.2, 21.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 106.1, 26.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 97.5, 25.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 106.2, 19.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 102.5, 25.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 116.2, 26.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 117.4, 21.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 118.7, 32.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 127.3, 21.7 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 128.5, 32.9 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 142.1, 126.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 179.8, 92.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 134.5, 117.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 199.6, 111.7 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 173.5, 102.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 192.1, 149.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 165.8, 111 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 192.8, 129.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 191.8, 132.8 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 203.1, 143.7 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 252.1, 201.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 314.7, 268.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 360.5, 331.5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 418.8, 402 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 458.8, 453.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 521.4, 520.3 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 567.4, 583.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 625.4, 653.6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 665.5, 704.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 670.6, 702.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 586.3, 599.8 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 514.1, 504.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 424, 390.5 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 356.5, 292.2 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 272, 189.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 199.9, 94.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 109.6, -20 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 120.4, -17.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 114.4, -19.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 120.6, -13.1 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 108.8, -26.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 119.5, -23.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 113.5, -25.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 119.7, -19.7 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 107.9, -33 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 118.6, -30.4 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 112.6, -32.1 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 118.8, -26.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 107, -39.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 117.8, -36.9 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 111.7, -38.7 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 117.9, -32.7 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 106.1, -46 , 0 );
--setMoveKey( spep_2 -3 + 146, 1, 116.9, -43.5 , 0 );
--setMoveKey( spep_2 -3 + 148, 1, 110.8, -45.2 , 0 );

setScaleKey( spep_2  + 0, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 144, 1, 1.3, 1.3 );

setRotateKey( spep_2  + 0, 1, 0 );
setRotateKey( spep_2 -3 + 25, 1, 0 );
setRotateKey( spep_2 -3 + 26, 1, -31.1 );
setRotateKey( spep_2 -3 + 28, 1, -31.2 );
setRotateKey( spep_2 -3 + 59, 1, -31.2 );
setRotateKey( spep_2 -3 + 60, 1, -27 );
setRotateKey( spep_2 -3 + 144, 1, -27 );

--SE
playSe( spep_2 + 24, 1009 );
setSeVolume( spep_2 + 24, 1009, 79 );
playSe( spep_2 + 24, 1110 );
setSeVolume( spep_2 + 24, 1110, 79 );
se_1187 = playSe( spep_2 + 24, 1187 );
setSeVolume( spep_2 + 24, 1187, 79 );
playSe( spep_2 + 58, 1189 );
se_1190 = playSe( spep_2 + 71, 1190 );
playSe( spep_2 + 62, 1010 );
setSeVolume( spep_2 + 62, 1010, 126 );
playSe( spep_2 + 62, 1110 );
setSeVolume( spep_2 + 62, 1110, 126 );
playSe( spep_2 + 76, 1072 );
se_11091 = playSe( spep_2 + 80, 1109 );
se_1109 = playSe( spep_2 + 126, 1109 );

stopSe( spep_2 + 37, se_1183, 0 );
stopSe( spep_2 + 37, se_0009, 0 );
stopSe( spep_2 + 87, se_1190, 16 );
stopSe( spep_2 + 117, se_11091, 13 );

--最初の準備
spep_3 = spep_2 +142;

------------------------------------------------------
-- 回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 54, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 54, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 54, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 54, kick_f, 255 );
setEffAlphaKey( spep_3 + 55, kick_f, 0 );
setEffAlphaKey( spep_3 + 56, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 54, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 54, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 54, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 54, kick_b, 255 );
setEffAlphaKey( spep_3 + 55, kick_b, 0 );
setEffAlphaKey( spep_3 + 56, kick_b, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -3 + 30, 1, 0 );

changeAnime( spep_3  + 0, 1, 107 );

setMoveKey( spep_3 -3 + 0, 1, 121.6, 15.3 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 103.9, 32.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 136.3, 5.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 112.4, 27.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 124.6, 15.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 110.5, 8.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 147.4, 24.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 111.5, 19.2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 135.5, 3.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 105.3, 24.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 252.3, 49.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 323.4, 50.5 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 433.6, 87.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 518.2, 114.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 646.6, 139.1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 732.5, 153.1 , 0 );

a=0.53;

setScaleKey( spep_3  + 0, 1, 1.3-a, 1.3-a );
--setScaleKey( spep_3 -3 + 2, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 4, 1, 1.32-a, 1.32-a );
setScaleKey( spep_3 -3 + 6, 1, 1.33-a, 1.33-a );
setScaleKey( spep_3 -3 + 8, 1, 1.34-a, 1.34-a );
setScaleKey( spep_3 -3 + 10, 1, 1.36-a, 1.36-a );
setScaleKey( spep_3 -3 + 12, 1, 1.37-a, 1.37-a );
setScaleKey( spep_3 -3 + 14, 1, 1.38-a, 1.38-a );
setScaleKey( spep_3 -3 + 16, 1, 1.39-a, 1.39-a );
setScaleKey( spep_3 -3 + 18, 1, 1.4-a, 1.4-a );
setScaleKey( spep_3 -3 + 20, 1, 1.58-a, 1.58-a );
setScaleKey( spep_3 -3 + 22, 1, 1.77-a, 1.77-a );
setScaleKey( spep_3 -3 + 24, 1, 1.95-a, 1.95-a );
setScaleKey( spep_3 -3 + 26, 1, 2.13-a, 2.13-a );
setScaleKey( spep_3 -3 + 28, 1, 2.32-a, 2.32-a );
setScaleKey( spep_3 -3 + 30, 1, 2.5-a, 2.5-a );


setRotateKey( spep_3  + 0, 1, -61.9 );
setRotateKey( spep_3  + 2, 1, -62 );
setRotateKey( spep_3 -3 + 30, 1, -62 );

--SE
playSe( spep_3 , 1120 );

stopSe( spep_3 + 17, se_1187, -83 );
stopSe( spep_3 + 18, se_1109, 12 );

--最初の準備
spep_4 = spep_3 +54;

------------------------------------------------------
-- 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_4 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, tame2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, tame2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame2, 0 );
setEffRotateKey( spep_4 + 60, tame2, 0 );
setEffAlphaKey( spep_4 + 0, tame2, 255 );
setEffAlphaKey( spep_4 + 60, tame2, 255 );

--SE
playSe( spep_4 + 0, 1056 );
playSe( spep_4 + 11, 1036 );
se_1037 = playSe( spep_4 + 22, 1037 );
playSe( spep_4 + 35, 1036 );

--白フェード
entryFade( spep_4 + 52, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--最初の準備
spep_5 = spep_4 +60;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
stopSe( spep_5 + 0, se_1037, 0 );
playSe( spep_5 + 0, SE_05 );

--白フェード
entryFade( spep_5 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;

--------------------------------------
--発射
--------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_6 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, beam, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, beam, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, beam, 0 );
setEffRotateKey( spep_6 + 86, beam, 0 );
setEffAlphaKey( spep_6 + 0, beam, 255 );
setEffAlphaKey( spep_6 + 86, beam, 255 );
setEffAlphaKey( spep_6 + 87, beam, 0 );
setEffAlphaKey( spep_6 + 88, beam, 0 );

-- ** エフェクト等 ** --
ctzuo = entryEffectLife( spep_6-3 + 20,  10012, 46, 0x100, -1, 0, 74, 243.2 );
setEffShake( spep_6-3 + 20, ctzuo, 46, 20 );
setEffMoveKey( spep_6-3 + 20, ctzuo, 74, 243.2 , 0 );
setEffMoveKey( spep_6-3 + 22, ctzuo, 88.4, 276.3 , 0 );
setEffMoveKey( spep_6-3 + 24, ctzuo, 100.1, 295.3 , 0 );
setEffMoveKey( spep_6-3 + 26, ctzuo, 115.5, 333.7 , 0 );
setEffMoveKey( spep_6-3 + 28, ctzuo, 126.2, 347.1 , 0 );
setEffMoveKey( spep_6-3 + 30, ctzuo, 142.7, 391.1 , 0 );
setEffMoveKey( spep_6-3 + 32, ctzuo, 139.5, 373.6 , 0 );
setEffMoveKey( spep_6-3 + 34, ctzuo, 143.3, 392.4 , 0 );
setEffMoveKey( spep_6-3 + 36, ctzuo, 140.1, 374.8 , 0 );
setEffMoveKey( spep_6-3 + 38, ctzuo, 143.9, 393.7 , 0 );
setEffMoveKey( spep_6-3 + 40, ctzuo, 140.7, 376 , 0 );
setEffMoveKey( spep_6-3 + 42, ctzuo, 144.5, 395 , 0 );
setEffMoveKey( spep_6-3 + 44, ctzuo, 141.3, 377.2 , 0 );
setEffMoveKey( spep_6-3 + 46, ctzuo, 145.1, 396.3 , 0 );
setEffMoveKey( spep_6-3 + 48, ctzuo, 142, 378.4 , 0 );
setEffMoveKey( spep_6-3 + 50, ctzuo, 145.8, 397.6 , 0 );
setEffMoveKey( spep_6-3 + 52, ctzuo, 142.5, 379.5 , 0 );
setEffMoveKey( spep_6-3 + 54, ctzuo, 146.4, 398.9 , 0 );
setEffMoveKey( spep_6-3 + 56, ctzuo, 143.1, 380.7 , 0 );
setEffMoveKey( spep_6-3 + 58, ctzuo, 147, 400.2 , 0 );
setEffMoveKey( spep_6-3 + 60, ctzuo, 143.6, 381.9 , 0 );
setEffMoveKey( spep_6-3 + 62, ctzuo, 147.6, 401.5 , 0 );
setEffMoveKey( spep_6-3 + 64, ctzuo, 144.2, 383.1 , 0 );
setEffMoveKey( spep_6-3 + 66, ctzuo, 144.5, 383.6 , 0 );

setEffScaleKey( spep_6-3 + 20, ctzuo, 0.58, 0.58 );
setEffScaleKey( spep_6-3 + 22, ctzuo, 0.96, 0.96 );
setEffScaleKey( spep_6-3 + 24, ctzuo, 1.33, 1.33 );
setEffScaleKey( spep_6-3 + 26, ctzuo, 1.71, 1.71 );
setEffScaleKey( spep_6-3 + 28, ctzuo, 2.09, 2.09 );
setEffScaleKey( spep_6-3 + 30, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_6-3 + 32, ctzuo, 2.48, 2.48 );
setEffScaleKey( spep_6-3 + 34, ctzuo, 2.48, 2.48 );
setEffScaleKey( spep_6-3 + 36, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_6-3 + 38, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_6-3 + 40, ctzuo, 2.51, 2.51 );
setEffScaleKey( spep_6-3 + 42, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_6-3 + 44, ctzuo, 2.53, 2.53 );
setEffScaleKey( spep_6-3 + 46, ctzuo, 2.54, 2.54 );
setEffScaleKey( spep_6-3 + 48, ctzuo, 2.54, 2.54 );
setEffScaleKey( spep_6-3 + 50, ctzuo, 2.55, 2.55 );
setEffScaleKey( spep_6-3 + 52, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_6-3 + 54, ctzuo, 2.57, 2.57 );
setEffScaleKey( spep_6-3 + 56, ctzuo, 2.58, 2.58 );
setEffScaleKey( spep_6-3 + 58, ctzuo, 2.59, 2.59 );
setEffScaleKey( spep_6-3 + 60, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_6-3 + 62, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_6-3 + 64, ctzuo, 2.61, 2.61 );
setEffScaleKey( spep_6-3 + 66, ctzuo, 2.62, 2.62 );

setEffRotateKey( spep_6-3 + 20, ctzuo, -31.3 );
setEffRotateKey( spep_6-3 + 22, ctzuo, -31.4 );
setEffRotateKey( spep_6-3 + 66, ctzuo, -31.4 );

setEffAlphaKey( spep_6-3 + 20, ctzuo, 255 );
setEffAlphaKey( spep_6-3 + 58, ctzuo, 255 );
setEffAlphaKey( spep_6-3 + 60, ctzuo, 191 );
setEffAlphaKey( spep_6-3 + 62, ctzuo, 128 );
setEffAlphaKey( spep_6-3 + 64, ctzuo, 64 );
setEffAlphaKey( spep_6-3 + 66, ctzuo, 0 );

--SE
playSe( spep_6 + 0, 1022 );
setSeVolume( spep_6 + 0, 1022, 126 );
se_1124 = playSe( spep_6 + 5, 1124 );
setSeVolume( spep_6 + 5, 1124, 0 );
setSeVolume( spep_6 + 6, 1124, 2.4 );
setSeVolume( spep_6 + 7, 1124, 4.8 );
setSeVolume( spep_6 + 8, 1124, 7.3 );
setSeVolume( spep_6 + 9, 1124, 9.7 );
setSeVolume( spep_6 + 10, 1124, 12.1 );
setSeVolume( spep_6 + 11, 1124, 14.6 );
setSeVolume( spep_6 + 12, 1124, 17.0 );
setSeVolume( spep_6 + 13, 1124, 19.5 );
setSeVolume( spep_6 + 14, 1124, 21.9 );
setSeVolume( spep_6 + 15, 1124, 24.3 );
setSeVolume( spep_6 + 16, 1124, 26.8 );
setSeVolume( spep_6 + 17, 1124, 29.2 );
setSeVolume( spep_6 + 18, 1124, 31.7 );
setSeVolume( spep_6 + 19, 1124, 34.1 );
setSeVolume( spep_6 + 20, 1124, 36.5 );
setSeVolume( spep_6 + 21, 1124, 39.0 );
setSeVolume( spep_6 + 22, 1124, 41.4 );
setSeVolume( spep_6 + 23, 1124, 43.9 );
setSeVolume( spep_6 + 24, 1124, 46.3 );
setSeVolume( spep_6 + 25, 1124, 48.7 );
setSeVolume( spep_6 + 26, 1124, 51.2 );
setSeVolume( spep_6 + 27, 1124, 53.6 );
setSeVolume( spep_6 + 28, 1124, 56.0 );
setSeVolume( spep_6 + 29, 1124, 58.5 );
setSeVolume( spep_6 + 30, 1124, 60.9 );
setSeVolume( spep_6 + 31, 1124, 63.4 );
setSeVolume( spep_6 + 32, 1124, 65.8 );
setSeVolume( spep_6 + 33, 1124, 68.2 );
setSeVolume( spep_6 + 34, 1124, 70.7 );
setSeVolume( spep_6 + 35, 1124, 73.1 );
setSeVolume( spep_6 + 36, 1124, 75.6 );
setSeVolume( spep_6 + 37, 1124, 78.0 );
setSeVolume( spep_6 + 38, 1124, 80.4 );
setSeVolume( spep_6 + 39, 1124, 82.9 );
setSeVolume( spep_6 + 40, 1124, 85.3 );
setSeVolume( spep_6 + 41, 1124, 87.8 );
setSeVolume( spep_6 + 42, 1124, 90.2 );
setSeVolume( spep_6 + 43, 1124, 92.6 );
setSeVolume( spep_6 + 44, 1124, 95.1 );
setSeVolume( spep_6 + 45, 1124, 97.5 );
setSeVolume( spep_6 + 46, 1124, 100 );
playSe( spep_6 + 53, 1128 );
setSeVolume( spep_6 + 53, 1128, 0 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 86;

--------------------------------------
--迫る
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_7 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 54, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 54, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit_f, 0 );
setEffRotateKey( spep_7 + 54, hit_f, 0 );
setEffAlphaKey( spep_7 + 0, hit_f, 255 );
setEffAlphaKey( spep_7 + 54, hit_f, 255 );
setEffAlphaKey( spep_7 + 55, hit_f, 0 );
setEffAlphaKey( spep_7 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_7 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 54, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 54, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit_b, 0 );
setEffRotateKey( spep_7 + 54, hit_b, 0 );
setEffAlphaKey( spep_7 + 0, hit_b, 255 );
setEffAlphaKey( spep_7 + 54, hit_b, 255 );
setEffAlphaKey( spep_7 + 55, hit_b, 0 );
setEffAlphaKey( spep_7 + 56, hit_b, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_7 + 0,  10014, 58-3, 0x100, -1, 0, -107.1, 418 );
setEffShake( spep_7 +0, ctzudodo, 58-3, 20 );
setEffMoveKey( spep_7 + 0, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 2, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 4, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 6, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 8, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 10, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 12, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 14, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 16, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 18, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 20, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 22, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 24, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 26, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 28, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 30, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 32, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 34, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 36, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 38, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 40, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 42, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 44, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 46, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 48, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 50, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 52, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 54, ctzudodo, -101.5, 398.5 , 0 );
--setEffMoveKey( spep_7 + 56, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 58-3, ctzudodo, -101.5, 398.5 , 0 );

setEffScaleKey( spep_7 + 0, ctzudodo, 2.3, 2.3 );
setEffScaleKey( spep_7 + 58-3, ctzudodo, 2.3, 2.3 );

setEffRotateKey( spep_7 + 0, ctzudodo, 3.2 );
setEffRotateKey( spep_7 + 58-3, ctzudodo, 3.2 );

setEffAlphaKey( spep_7 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_7 + 58-3, ctzudodo, 255 );

--敵の動き
setDisp( spep_7  + 0, 1, 1 );
setDisp( spep_7 -3 + 58, 1, 0 );

changeAnime( spep_7  + 0, 1, 107 );

setMoveKey( spep_7  + 0, 1, -189, -117 , 0 );
--setMoveKey( spep_7 -3 + 2, 1, -188.5, -114.3 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -173.2, -112.3 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -172, -113.7 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -163.7, -109.5 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -164.2, -106.7 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -78.5, -79.2 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -14, -58.6 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 63.9, -27 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 74.5, -15.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 127.2, -5.9 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 139.9, -6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 173, 9.7 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 180.8, 21.6 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 237.7, 31.3 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 248.1, 29.8 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 276.9, 44 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 277.2, 53.6 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 332.6, 60.7 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 336, 55.5 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 365.5, 70.5 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 363.6, 80.4 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 422.3, 87.5 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 424, 81.1 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 454.2, 96.9 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 450, 107.1 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 512.1, 114.3 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 511.9, 106.6 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 542.9, 123.3 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 536.4, 133.9 , 0 );

a=0.3;
b=0.45;

setScaleKey( spep_7 + 0, 1, 0.7-a, 0.7-a );
setScaleKey( spep_7 + 2, 1, 0.73-a, 0.73-a );
setScaleKey( spep_7 + 4, 1, 0.77-a, 0.77-a );
setScaleKey( spep_7 + 6, 1, 0.8-a, 0.8-a );
setScaleKey( spep_7 + 8, 1, 0.83-a, 0.83-a );
setScaleKey( spep_7 + 10, 1, 0.86-a, 0.86-a );
--setScaleKey( spep_7 + 12, 1, 1.24-a, 1.24-a );
setScaleKey( spep_7 + 14, 1, 1.62-b, 1.62-b );
setScaleKey( spep_7 + 16, 1, 1.79-b, 1.79-b );
--setScaleKey( spep_7 + 18, 1, 1.9-a, 1.9-a );
--setScaleKey( spep_7 + 20, 1, 2.1-a, 2.1-a );
setScaleKey( spep_7 -3 + 58, 1, 1.8-b, 1.8-b );

--[[
setScaleKey( spep_7 + 22, 1, 2.25-a, 2.25-a );
setScaleKey( spep_7 + 24, 1, 2.34-a, 2.34-a );
setScaleKey( spep_7 + 26, 1, 2.42-a, 2.42-a );
setScaleKey( spep_7 + 28, 1, 2.51-a, 2.51-a );
setScaleKey( spep_7 + 30, 1, 2.59-a, 2.59-a );
setScaleKey( spep_7 + 32, 1, 2.66-a, 2.66-a );
setScaleKey( spep_7 + 34, 1, 2.73-a, 2.73-a );
setScaleKey( spep_7 + 36, 1, 2.8-a, 2.8-a );
setScaleKey( spep_7 + 38, 1, 2.87-a, 2.87-a );
setScaleKey( spep_7 + 40, 1, 2.94-a, 2.94-a );
setScaleKey( spep_7 + 42, 1, 3.01-a, 3.01-a );
setScaleKey( spep_7 + 44, 1, 3.08-a, 3.08-a );
setScaleKey( spep_7 + 46, 1, 3.15-a, 3.15-a );
setScaleKey( spep_7 + 48, 1, 3.22-a, 3.22-a );
setScaleKey( spep_7 + 50, 1, 3.29-a, 3.29-a );
setScaleKey( spep_7 + 52, 1, 3.36-a, 3.36-a );
setScaleKey( spep_7 + 54, 1, 3.43-a, 3.43-a );
setScaleKey( spep_7 + 56, 1, 3.5-a, 3.5-a );
setScaleKey( spep_7 + 58, 1, 3.57-a, 3.57-a );
]]
setRotateKey( spep_7  + 0, 1, -62.2 );
setRotateKey( spep_7  + 2, 1, -62.1 );
setRotateKey( spep_7 -3 + 58, 1, -62.1 );

setBlendColor(spep_7+3,1,2,0,0,0,0.4);
setBlendColor(spep_7+12,1,2,0,0,0,0.8);
setBlendColor(spep_7+14,1,2,0,0,0,1.0);

--SE
playSe( spep_7 + 4, 1021 );
stopSe( spep_7 + 19, se_1124, 86 );
--黒フェード
entryFadeBg(spep_7,0,54,0,0,0,0,155);

-- ** 次の準備 ** --
spep_8 = spep_7 + 54;

--------------------------------------
--迫る
--------------------------------------
--敵の色戻す
setBlendColor(spep_8 + 50 , 1 , 2 , 0 , 0 , 0 , 0);

-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_8 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_8 + 180, finish, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_8 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 180, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 180, finish, 255 );

--SE
se_1175 = playSe( spep_8 + 16, 1175 );
setSeVolume( spep_8 + 16, 1175, 0 );
setSeVolume( spep_8 + 30, 1175, 1.2 );
setSeVolume( spep_8 + 31, 1175, 2.5 );
setSeVolume( spep_8 + 32, 1175, 3.8 );
setSeVolume( spep_8 + 33, 1175, 5.1 );
setSeVolume( spep_8 + 34, 1175, 6.4 );
setSeVolume( spep_8 + 35, 1175, 7.7 );
setSeVolume( spep_8 + 36, 1175, 9.0 );
setSeVolume( spep_8 + 37, 1175, 10.3 );
setSeVolume( spep_8 + 38, 1175, 11.6 );
setSeVolume( spep_8 + 39, 1175, 12.9 );
setSeVolume( spep_8 + 40, 1175, 14.2 );
setSeVolume( spep_8 + 41, 1175, 15.4 );
setSeVolume( spep_8 + 42, 1175, 16.7 );
setSeVolume( spep_8 + 43, 1175, 18.0 );
setSeVolume( spep_8 + 44, 1175, 19.3 );
setSeVolume( spep_8 + 45, 1175, 20.6 );
setSeVolume( spep_8 + 46, 1175, 21.9 );
setSeVolume( spep_8 + 47, 1175, 23.2 );
setSeVolume( spep_8 + 48, 1175, 24.5 );
setSeVolume( spep_8 + 49, 1175, 25.8 );
setSeVolume( spep_8 + 50, 1175, 27.1 );
setSeVolume( spep_8 + 51, 1175, 28.4 );
setSeVolume( spep_8 + 52, 1175, 29.6 );
setSeVolume( spep_8 + 53, 1175, 30.9 );
setSeVolume( spep_8 + 54, 1175, 32.2 );
setSeVolume( spep_8 + 55, 1175, 33.5 );
setSeVolume( spep_8 + 56, 1175, 34.8 );
setSeVolume( spep_8 + 57, 1175, 36.1 );
setSeVolume( spep_8 + 58, 1175, 37.4 );
setSeVolume( spep_8 + 59, 1175, 38.7 );
setSeVolume( spep_8 + 60, 1175, 40.0 );
setSeVolume( spep_8 + 61, 1175, 41.3 );
setSeVolume( spep_8 + 62, 1175, 42.6 );
setSeVolume( spep_8 + 63, 1175, 43.8 );
setSeVolume( spep_8 + 64, 1175, 45.1 );
setSeVolume( spep_8 + 65, 1175, 46.4 );
setSeVolume( spep_8 + 66, 1175, 47.7 );
setSeVolume( spep_8 + 67, 1175, 49.0 );
setSeVolume( spep_8 + 68, 1175, 50.3 );
setSeVolume( spep_8 + 69, 1175, 51.6 );
setSeVolume( spep_8 + 70, 1175, 52.9 );
setSeVolume( spep_8 + 71, 1175, 54.2 );
setSeVolume( spep_8 + 72, 1175, 55.50 );
setSeVolume( spep_8 + 73, 1175, 56.8 );
setSeVolume( spep_8 + 74, 1175, 58.0 );
setSeVolume( spep_8 + 75, 1175, 59.3 );
setSeVolume( spep_8 + 76, 1175, 60.6 );
setSeVolume( spep_8 + 77, 1175, 61.9 );
setSeVolume( spep_8 + 78, 1175, 63.2 );
setSeVolume( spep_8 + 79, 1175, 64.5 );
setSeVolume( spep_8 + 80, 1175, 65.8 );
setSeVolume( spep_8 + 81, 1175, 67.1 );
setSeVolume( spep_8 + 82, 1175, 68.4 );
setSeVolume( spep_8 + 83, 1175, 69.7 );
setSeVolume( spep_8 + 84, 1175, 71 );
stopSe( spep_8 + 113, se_1175, 0 );
playSe( spep_8 + 79, 1024 );
playSe( spep_8 + 79, 1159 );
setSeVolume( spep_8 + 79, 1159, 126  );

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 70 );
endPhase( spep_8 + 170  );

else 
------------------------------------------------------------------------------------------------------------
--てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 溜め
------------------------------------------------------
--最初の準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 184, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 184, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 184, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 184, tame, 255 );
setEffAlphaKey( spep_0 + 185, tame, 0 );
setEffAlphaKey( spep_0 + 186, tame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +22, 190006, 72, 0x100, -1, 0, 150, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +22,  ctgogo,  150,  510);
setEffMoveKey(  spep_0 +94,  ctgogo,  150,  510);

setEffAlphaKey( spep_0 +22, ctgogo, 0 );
setEffAlphaKey( spep_0 + 23, ctgogo, 255 );
setEffAlphaKey( spep_0 + 24, ctgogo, 255 );
setEffAlphaKey( spep_0 + 87, ctgogo, 255 );
setEffAlphaKey( spep_0 + 88, ctgogo, 255 );
setEffAlphaKey( spep_0 + 90, ctgogo, 191 );
setEffAlphaKey( spep_0 + 92, ctgogo, 112 );
setEffAlphaKey( spep_0 + 94, ctgogo, 64 );

setEffRotateKey(  spep_0 +22,  ctgogo,  0);
setEffRotateKey(  spep_0 +94,  ctgogo,  0);

setEffScaleKey(  spep_0 +22,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +94,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 24, 1018 );

se_1056 = playSe( spep_0 + 0, 1056 );
setSeVolume( spep_0 + 0, 1056, 79 );
playSe( spep_0 + 18, 1035 );
playSe( spep_0 + 39, 1036 );
playSe( spep_0 + 63, 1036 );
playSe( spep_0 + 87, 1036 );
playSe( spep_0 + 111, 1036 );
se_1068 = playSe( spep_0 + 119, 1068 );
playSe( spep_0 + 135, 1036 );
playSe( spep_0 + 159, 1036 );
se_1183 = playSe( spep_0 + 174, 1183 );
setSeVolume( spep_0 + 174, 1183, 0 );
se_1036 = playSe( spep_0 + 183, 1036 );

stopSe( spep_0 + 48, se_1056, 0 );

--最初の準備
spep_1 = spep_0 +184;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_1 + 0, tossin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 54, tossin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tossin, -1.0, 1.0 );
setEffScaleKey( spep_1 + 54, tossin, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tossin, 0 );
setEffRotateKey( spep_1 + 54, tossin, 0 );
setEffAlphaKey( spep_1 + 0, tossin, 255 );
setEffAlphaKey( spep_1 + 54, tossin, 255 );
setEffAlphaKey( spep_1 + 55, tossin, 0 );
setEffAlphaKey( spep_1 + 56, tossin, 0 );

--SE
se_0009 = playSe( spep_1 + 6, 9 );
SE0=playSe( spep_1 + 6, 1182 );

setSeVolume( spep_1 + 7, 1183, 59 );
setSeVolume( spep_1 + 8, 1183, 118 );
setSeVolume( spep_1 + 9, 1183, 178 );

stopSe( spep_1 + 9, se_1068, 0 );
stopSe( spep_1 + 6, se_1036, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1183, 0 );
    stopSe( SP_dodge - 12, se_0009, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--最初の準備
spep_2 = spep_1 +54;


------------------------------------------------------
-- 前方突進
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 142, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 142, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 142, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 142, attack_f, 255 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 142, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 142, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 142, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 142, attack_b, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 26,  10020, 18, 0x100, -1, 0, -13.9, 179 );--バキッ
setEffShake( spep_2-3 + 26, ctbaki, 18, 20 );
setEffMoveKey( spep_2-3 + 26, ctbaki, -13.9, 179 , 0 );
setEffMoveKey( spep_2-3 + 28, ctbaki, 5.2, 196.4 , 0 );
setEffMoveKey( spep_2-3 + 30, ctbaki, 35.9, 232.7 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbaki, 27.3, 229.4 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbaki, 24.8, 217.2 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbaki, 35.9, 232.7 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbaki, 27.3, 229.4 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbaki, 24.8, 217.2 , 0 );
setEffMoveKey( spep_2-3 + 42, ctbaki, 35.9, 232.7 , 0 );
setEffMoveKey( spep_2-3 + 44, ctbaki, 27.3, 229.4 , 0 );

setEffScaleKey( spep_2-3 + 26, ctbaki, 0.36, 0.36 );
setEffScaleKey( spep_2-3 + 28, ctbaki, 0.81, 0.81 );
setEffScaleKey( spep_2-3 + 30, ctbaki, 1.27, 1.27 );
setEffScaleKey( spep_2-3 + 44, ctbaki, 1.27, 1.27 );

setEffRotateKey( spep_2-3 + 26, ctbaki, -35.6 );
setEffRotateKey( spep_2-3 + 28, ctbaki, -35.5 );
setEffAlphaKey( spep_2-3 + 44, ctbaki, -255 );

setEffAlphaKey( spep_2-3 + 26, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 44, ctbaki, 255 );

--文字エントリー
ctbagon = entryEffectLife( spep_2-3 + 58,  10021, 22, 0x100, -1, 0, 112.2, 270.1 );--バゴォッ
setEffShake( spep_2-3 + 58, ctbagon, 22, 20 );
setEffMoveKey( spep_2-3 + 58, ctbagon, 112.2, 270.1 , 0 );
setEffMoveKey( spep_2-3 + 60, ctbagon, 113.3, 306.6 , 0 );
setEffMoveKey( spep_2-3 + 62, ctbagon, 105.3, 352.1 , 0 );
setEffMoveKey( spep_2-3 + 64, ctbagon, 111.5, 346.6 , 0 );
setEffMoveKey( spep_2-3 + 66, ctbagon, 105.3, 353.5 , 0 );
setEffMoveKey( spep_2-3 + 68, ctbagon, 111.6, 347.9 , 0 );
setEffMoveKey( spep_2-3 + 70, ctbagon, 105.2, 355 , 0 );
setEffMoveKey( spep_2-3 + 72, ctbagon, 111.6, 349.3 , 0 );
setEffMoveKey( spep_2-3 + 74, ctbagon, 105.2, 356.5 , 0 );
setEffMoveKey( spep_2-3 + 76, ctbagon, 111.6, 350.8 , 0 );
setEffMoveKey( spep_2-3 + 78, ctbagon, 103.5, 363.2 , 0 );
setEffMoveKey( spep_2-3 + 80, ctbagon, 101.8, 369.1 , 0 );

setEffScaleKey( spep_2-3 + 58, ctbagon, 1, 1 );
setEffScaleKey( spep_2-3 + 60, ctbagon, 1.62, 1.62 );
setEffScaleKey( spep_2-3 + 62, ctbagon, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 64, ctbagon, 2.24, 2.24 );
setEffScaleKey( spep_2-3 + 66, ctbagon, 2.25, 2.25 );
setEffScaleKey( spep_2-3 + 68, ctbagon, 2.26, 2.26 );
setEffScaleKey( spep_2-3 + 70, ctbagon, 2.27, 2.27 );
setEffScaleKey( spep_2-3 + 72, ctbagon, 2.28, 2.28 );
setEffScaleKey( spep_2-3 + 74, ctbagon, 2.29, 2.29 );
setEffScaleKey( spep_2-3 + 76, ctbagon, 2.3, 2.3 );
setEffScaleKey( spep_2-3 + 78, ctbagon, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 80, ctbagon, 2.8, 2.8 );

setEffRotateKey( spep_2-3 + 58, ctbagon, 0 );
setEffRotateKey( spep_2-3 + 80, ctbagon, 0 );

setEffAlphaKey( spep_2-3 + 58, ctbagon, 255 );
setEffAlphaKey( spep_2-3 + 76, ctbagon, 255 );
setEffAlphaKey( spep_2-3 + 78, ctbagon, 128 );
setEffAlphaKey( spep_2-3 + 80, ctbagon, 0 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );


changeAnime( spep_2  + 0, 1, 101 );
changeAnime( spep_2 -3 + 26, 1, 106 );
changeAnime( spep_2 -3 + 60, 1, 108 );

setMoveKey( spep_2  + 0, 1, 201.4, 24.5 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 193.1, 24.4 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 184.9, 24.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 176.7, 24.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 168.4, 24.4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 160.2, 24.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 151.9, 24.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 143.7, 24.4 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 135.4, 24.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 127.2, 24.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 119, 24.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 110.7, 24.4 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 102.5, 24.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 90.5, 45 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 113.3, 8.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 82.4, 28 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 124.3, 28.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 106.7, 1.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 105.4, 44.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 94.8, 15.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 102.2, 21.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 106.1, 26.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 97.5, 25.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 106.2, 19.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 102.5, 25.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 116.2, 26.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 117.4, 21.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 118.7, 32.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 127.3, 21.7 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 128.5, 32.9 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 142.1, 126.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 179.8, 92.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 134.5, 117.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 199.6, 111.7 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 173.5, 102.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 192.1, 149.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 165.8, 111 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 192.8, 129.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 191.8, 132.8 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 203.1, 143.7 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 252.1, 201.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 314.7, 268.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 360.5, 331.5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 418.8, 402 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 458.8, 453.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 521.4, 520.3 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 567.4, 583.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 625.4, 653.6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 665.5, 704.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 670.6, 702.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 586.3, 599.8 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 514.1, 504.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 424, 390.5 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 356.5, 292.2 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 272, 189.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 199.9, 94.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 109.6, -20 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 120.4, -17.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 114.4, -19.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 120.6, -13.1 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 108.8, -26.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 119.5, -23.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 113.5, -25.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 119.7, -19.7 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 107.9, -33 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 118.6, -30.4 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 112.6, -32.1 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 118.8, -26.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 107, -39.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 117.8, -36.9 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 111.7, -38.7 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 117.9, -32.7 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 106.1, -46 , 0 );
--setMoveKey( spep_2 -3 + 146, 1, 116.9, -43.5 , 0 );
--setMoveKey( spep_2 -3 + 148, 1, 110.8, -45.2 , 0 );

setScaleKey( spep_2  + 0, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 144, 1, 1.3, 1.3 );

setRotateKey( spep_2  + 0, 1, 0 );
setRotateKey( spep_2 -3 + 25, 1, 0 );
setRotateKey( spep_2 -3 + 26, 1, -31.1 );
setRotateKey( spep_2 -3 + 28, 1, -31.2 );
setRotateKey( spep_2 -3 + 59, 1, -31.2 );
setRotateKey( spep_2 -3 + 60, 1, -27 );
setRotateKey( spep_2 -3 + 144, 1, -27 );

--SE
playSe( spep_2 + 24, 1009 );
setSeVolume( spep_2 + 24, 1009, 79 );
playSe( spep_2 + 24, 1110 );
setSeVolume( spep_2 + 24, 1110, 79 );
se_1187 = playSe( spep_2 + 24, 1187 );
setSeVolume( spep_2 + 24, 1187, 79 );
playSe( spep_2 + 58, 1189 );
se_1190 = playSe( spep_2 + 71, 1190 );
playSe( spep_2 + 62, 1010 );
setSeVolume( spep_2 + 62, 1010, 126 );
playSe( spep_2 + 62, 1110 );
setSeVolume( spep_2 + 62, 1110, 126 );
playSe( spep_2 + 76, 1072 );
se_11091 = playSe( spep_2 + 80, 1109 );
se_1109 = playSe( spep_2 + 126, 1109 );

stopSe( spep_2 + 37, se_1183, 0 );
stopSe( spep_2 + 37, se_0009, 0 );
stopSe( spep_2 + 87, se_1190, 16 );
stopSe( spep_2 + 117, se_11091, 13 );

--最初の準備
spep_3 = spep_2 +142;

------------------------------------------------------
-- 回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 54, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 54, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 54, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 54, kick_f, 255 );
setEffAlphaKey( spep_3 + 55, kick_f, 0 );
setEffAlphaKey( spep_3 + 56, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_3 + 0, SP_06x, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 54, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 54, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 54, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 54, kick_b, 255 );
setEffAlphaKey( spep_3 + 55, kick_b, 0 );
setEffAlphaKey( spep_3 + 56, kick_b, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -3 + 30, 1, 0 );

changeAnime( spep_3  + 0, 1, 107 );

setMoveKey( spep_3 -3 + 0, 1, 121.6, 15.3 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 103.9, 32.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 136.3, 5.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 112.4, 27.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 124.6, 15.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 110.5, 8.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 147.4, 24.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 111.5, 19.2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 135.5, 3.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 105.3, 24.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 252.3, 49.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 323.4, 50.5 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 433.6, 87.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 518.2, 114.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 646.6, 139.1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 732.5, 153.1 , 0 );

a=0.53;

setScaleKey( spep_3  + 0, 1, 1.3-a, 1.3-a );
--setScaleKey( spep_3 -3 + 2, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 4, 1, 1.32-a, 1.32-a );
setScaleKey( spep_3 -3 + 6, 1, 1.33-a, 1.33-a );
setScaleKey( spep_3 -3 + 8, 1, 1.34-a, 1.34-a );
setScaleKey( spep_3 -3 + 10, 1, 1.36-a, 1.36-a );
setScaleKey( spep_3 -3 + 12, 1, 1.37-a, 1.37-a );
setScaleKey( spep_3 -3 + 14, 1, 1.38-a, 1.38-a );
setScaleKey( spep_3 -3 + 16, 1, 1.39-a, 1.39-a );
setScaleKey( spep_3 -3 + 18, 1, 1.4-a, 1.4-a );
setScaleKey( spep_3 -3 + 20, 1, 1.58-a, 1.58-a );
setScaleKey( spep_3 -3 + 22, 1, 1.77-a, 1.77-a );
setScaleKey( spep_3 -3 + 24, 1, 1.95-a, 1.95-a );
setScaleKey( spep_3 -3 + 26, 1, 2.13-a, 2.13-a );
setScaleKey( spep_3 -3 + 28, 1, 2.32-a, 2.32-a );
setScaleKey( spep_3 -3 + 30, 1, 2.5-a, 2.5-a );


setRotateKey( spep_3  + 0, 1, -61.9 );
setRotateKey( spep_3  + 2, 1, -62 );
setRotateKey( spep_3 -3 + 30, 1, -62 );

--SE
playSe( spep_3 , 1120 );

stopSe( spep_3 + 17, se_1187, -83 );
stopSe( spep_3 + 18, se_1109, 12 );

--最初の準備
spep_4 = spep_3 +54;

------------------------------------------------------
-- 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_4 + 0, SP_07x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_4 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, tame2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, tame2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame2, 0 );
setEffRotateKey( spep_4 + 60, tame2, 0 );
setEffAlphaKey( spep_4 + 0, tame2, 255 );
setEffAlphaKey( spep_4 + 60, tame2, 255 );

--SE
playSe( spep_4 + 0, 1056 );
playSe( spep_4 + 11, 1036 );
se_1037 = playSe( spep_4 + 22, 1037 );
playSe( spep_4 + 35, 1036 );

--白フェード
entryFade( spep_4 + 52, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--最初の準備
spep_5 = spep_4 +60;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
stopSe( spep_5 + 0, se_1037, 0 );
playSe( spep_5 + 0, SE_05 );

--白フェード
entryFade( spep_5 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;

--------------------------------------
--発射
--------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_6 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, beam, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, beam, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, beam, 0 );
setEffRotateKey( spep_6 + 86, beam, 0 );
setEffAlphaKey( spep_6 + 0, beam, 255 );
setEffAlphaKey( spep_6 + 86, beam, 255 );
setEffAlphaKey( spep_6 + 87, beam, 0 );
setEffAlphaKey( spep_6 + 88, beam, 0 );

-- ** エフェクト等 ** --
ctzuo = entryEffectLife( spep_6-3 + 20,  10012, 46, 0x100, -1, 0, 74, 243.2 );
setEffShake( spep_6-3 + 20, ctzuo, 46, 20 );
setEffMoveKey( spep_6-3 + 20, ctzuo, 74, 243.2 , 0 );
setEffMoveKey( spep_6-3 + 22, ctzuo, 88.4, 276.3 , 0 );
setEffMoveKey( spep_6-3 + 24, ctzuo, 100.1, 295.3 , 0 );
setEffMoveKey( spep_6-3 + 26, ctzuo, 115.5, 333.7 , 0 );
setEffMoveKey( spep_6-3 + 28, ctzuo, 126.2, 347.1 , 0 );
setEffMoveKey( spep_6-3 + 30, ctzuo, 142.7, 391.1 , 0 );
setEffMoveKey( spep_6-3 + 32, ctzuo, 139.5, 373.6 , 0 );
setEffMoveKey( spep_6-3 + 34, ctzuo, 143.3, 392.4 , 0 );
setEffMoveKey( spep_6-3 + 36, ctzuo, 140.1, 374.8 , 0 );
setEffMoveKey( spep_6-3 + 38, ctzuo, 143.9, 393.7 , 0 );
setEffMoveKey( spep_6-3 + 40, ctzuo, 140.7, 376 , 0 );
setEffMoveKey( spep_6-3 + 42, ctzuo, 144.5, 395 , 0 );
setEffMoveKey( spep_6-3 + 44, ctzuo, 141.3, 377.2 , 0 );
setEffMoveKey( spep_6-3 + 46, ctzuo, 145.1, 396.3 , 0 );
setEffMoveKey( spep_6-3 + 48, ctzuo, 142, 378.4 , 0 );
setEffMoveKey( spep_6-3 + 50, ctzuo, 145.8, 397.6 , 0 );
setEffMoveKey( spep_6-3 + 52, ctzuo, 142.5, 379.5 , 0 );
setEffMoveKey( spep_6-3 + 54, ctzuo, 146.4, 398.9 , 0 );
setEffMoveKey( spep_6-3 + 56, ctzuo, 143.1, 380.7 , 0 );
setEffMoveKey( spep_6-3 + 58, ctzuo, 147, 400.2 , 0 );
setEffMoveKey( spep_6-3 + 60, ctzuo, 143.6, 381.9 , 0 );
setEffMoveKey( spep_6-3 + 62, ctzuo, 147.6, 401.5 , 0 );
setEffMoveKey( spep_6-3 + 64, ctzuo, 144.2, 383.1 , 0 );
setEffMoveKey( spep_6-3 + 66, ctzuo, 144.5, 383.6 , 0 );

setEffScaleKey( spep_6-3 + 20, ctzuo, 0.58, 0.58 );
setEffScaleKey( spep_6-3 + 22, ctzuo, 0.96, 0.96 );
setEffScaleKey( spep_6-3 + 24, ctzuo, 1.33, 1.33 );
setEffScaleKey( spep_6-3 + 26, ctzuo, 1.71, 1.71 );
setEffScaleKey( spep_6-3 + 28, ctzuo, 2.09, 2.09 );
setEffScaleKey( spep_6-3 + 30, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_6-3 + 32, ctzuo, 2.48, 2.48 );
setEffScaleKey( spep_6-3 + 34, ctzuo, 2.48, 2.48 );
setEffScaleKey( spep_6-3 + 36, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_6-3 + 38, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_6-3 + 40, ctzuo, 2.51, 2.51 );
setEffScaleKey( spep_6-3 + 42, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_6-3 + 44, ctzuo, 2.53, 2.53 );
setEffScaleKey( spep_6-3 + 46, ctzuo, 2.54, 2.54 );
setEffScaleKey( spep_6-3 + 48, ctzuo, 2.54, 2.54 );
setEffScaleKey( spep_6-3 + 50, ctzuo, 2.55, 2.55 );
setEffScaleKey( spep_6-3 + 52, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_6-3 + 54, ctzuo, 2.57, 2.57 );
setEffScaleKey( spep_6-3 + 56, ctzuo, 2.58, 2.58 );
setEffScaleKey( spep_6-3 + 58, ctzuo, 2.59, 2.59 );
setEffScaleKey( spep_6-3 + 60, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_6-3 + 62, ctzuo, 2.6, 2.6 );
setEffScaleKey( spep_6-3 + 64, ctzuo, 2.61, 2.61 );
setEffScaleKey( spep_6-3 + 66, ctzuo, 2.62, 2.62 );

setEffRotateKey( spep_6-3 + 20, ctzuo, -31.3 );
setEffRotateKey( spep_6-3 + 22, ctzuo, -31.4 );
setEffRotateKey( spep_6-3 + 66, ctzuo, -31.4 );

setEffAlphaKey( spep_6-3 + 20, ctzuo, 255 );
setEffAlphaKey( spep_6-3 + 58, ctzuo, 255 );
setEffAlphaKey( spep_6-3 + 60, ctzuo, 191 );
setEffAlphaKey( spep_6-3 + 62, ctzuo, 128 );
setEffAlphaKey( spep_6-3 + 64, ctzuo, 64 );
setEffAlphaKey( spep_6-3 + 66, ctzuo, 0 );

--SE
playSe( spep_6 + 0, 1022 );
setSeVolume( spep_6 + 0, 1022, 126 );
se_1124 = playSe( spep_6 + 5, 1124 );
setSeVolume( spep_6 + 5, 1124, 0 );
setSeVolume( spep_6 + 6, 1124, 2.4 );
setSeVolume( spep_6 + 7, 1124, 4.8 );
setSeVolume( spep_6 + 8, 1124, 7.3 );
setSeVolume( spep_6 + 9, 1124, 9.7 );
setSeVolume( spep_6 + 10, 1124, 12.1 );
setSeVolume( spep_6 + 11, 1124, 14.6 );
setSeVolume( spep_6 + 12, 1124, 17.0 );
setSeVolume( spep_6 + 13, 1124, 19.5 );
setSeVolume( spep_6 + 14, 1124, 21.9 );
setSeVolume( spep_6 + 15, 1124, 24.3 );
setSeVolume( spep_6 + 16, 1124, 26.8 );
setSeVolume( spep_6 + 17, 1124, 29.2 );
setSeVolume( spep_6 + 18, 1124, 31.7 );
setSeVolume( spep_6 + 19, 1124, 34.1 );
setSeVolume( spep_6 + 20, 1124, 36.5 );
setSeVolume( spep_6 + 21, 1124, 39.0 );
setSeVolume( spep_6 + 22, 1124, 41.4 );
setSeVolume( spep_6 + 23, 1124, 43.9 );
setSeVolume( spep_6 + 24, 1124, 46.3 );
setSeVolume( spep_6 + 25, 1124, 48.7 );
setSeVolume( spep_6 + 26, 1124, 51.2 );
setSeVolume( spep_6 + 27, 1124, 53.6 );
setSeVolume( spep_6 + 28, 1124, 56.0 );
setSeVolume( spep_6 + 29, 1124, 58.5 );
setSeVolume( spep_6 + 30, 1124, 60.9 );
setSeVolume( spep_6 + 31, 1124, 63.4 );
setSeVolume( spep_6 + 32, 1124, 65.8 );
setSeVolume( spep_6 + 33, 1124, 68.2 );
setSeVolume( spep_6 + 34, 1124, 70.7 );
setSeVolume( spep_6 + 35, 1124, 73.1 );
setSeVolume( spep_6 + 36, 1124, 75.6 );
setSeVolume( spep_6 + 37, 1124, 78.0 );
setSeVolume( spep_6 + 38, 1124, 80.4 );
setSeVolume( spep_6 + 39, 1124, 82.9 );
setSeVolume( spep_6 + 40, 1124, 85.3 );
setSeVolume( spep_6 + 41, 1124, 87.8 );
setSeVolume( spep_6 + 42, 1124, 90.2 );
setSeVolume( spep_6 + 43, 1124, 92.6 );
setSeVolume( spep_6 + 44, 1124, 95.1 );
setSeVolume( spep_6 + 45, 1124, 97.5 );
setSeVolume( spep_6 + 46, 1124, 100 );
playSe( spep_6 + 53, 1128 );
setSeVolume( spep_6 + 53, 1128, 0 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 86;

--------------------------------------
--迫る
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_7 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 54, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 54, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit_f, 0 );
setEffRotateKey( spep_7 + 54, hit_f, 0 );
setEffAlphaKey( spep_7 + 0, hit_f, 255 );
setEffAlphaKey( spep_7 + 54, hit_f, 255 );
setEffAlphaKey( spep_7 + 55, hit_f, 0 );
setEffAlphaKey( spep_7 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_7 + 0, SP_10x, 0x80, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_7 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 54, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 54, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit_b, 0 );
setEffRotateKey( spep_7 + 54, hit_b, 0 );
setEffAlphaKey( spep_7 + 0, hit_b, 255 );
setEffAlphaKey( spep_7 + 54, hit_b, 255 );
setEffAlphaKey( spep_7 + 55, hit_b, 0 );
setEffAlphaKey( spep_7 + 56, hit_b, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_7 + 0,  10014, 58-3, 0x100, -1, 0, -107.1, 418 );
setEffShake( spep_7 +0, ctzudodo, 58-3, 20 );
setEffMoveKey( spep_7 + 0, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 2, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 4, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 6, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 8, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 10, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 12, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 14, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 16, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 18, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 20, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 22, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 24, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 26, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 28, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 30, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 32, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 34, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 36, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 38, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 40, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 42, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 44, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 46, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 48, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 50, ctzudodo, -101.5, 398.5 , 0 );
setEffMoveKey( spep_7 + 52, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 54, ctzudodo, -101.5, 398.5 , 0 );
--setEffMoveKey( spep_7 + 56, ctzudodo, -107.1, 418 , 0 );
setEffMoveKey( spep_7 + 58-3, ctzudodo, -101.5, 398.5 , 0 );

setEffScaleKey( spep_7 + 0, ctzudodo, 2.3, 2.3 );
setEffScaleKey( spep_7 + 58-3, ctzudodo, 2.3, 2.3 );

setEffRotateKey( spep_7 + 0, ctzudodo, -73.2 );
setEffRotateKey( spep_7 + 58-3, ctzudodo, -73.2 );

setEffAlphaKey( spep_7 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_7 + 58-3, ctzudodo, 255 );

--敵の動き
setDisp( spep_7  + 0, 1, 1 );
setDisp( spep_7 -3 + 58, 1, 0 );

changeAnime( spep_7  + 0, 1, 107 );

setMoveKey( spep_7  + 0, 1, -189, -117 , 0 );
--setMoveKey( spep_7 -3 + 2, 1, -188.5, -114.3 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -173.2, -112.3 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -172, -113.7 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -163.7, -109.5 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -164.2, -106.7 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -78.5, -79.2 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -14, -58.6 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 63.9, -27 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 74.5, -15.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 127.2, -5.9 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 139.9, -6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 173, 9.7 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 180.8, 21.6 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 237.7, 31.3 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 248.1, 29.8 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 276.9, 44 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 277.2, 53.6 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 332.6, 60.7 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 336, 55.5 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 365.5, 70.5 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 363.6, 80.4 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 422.3, 87.5 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 424, 81.1 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 454.2, 96.9 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 450, 107.1 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 512.1, 114.3 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 511.9, 106.6 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 542.9, 123.3 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 536.4, 133.9 , 0 );

a=0.3;
b=0.45;

setScaleKey( spep_7 + 0, 1, 0.7-a, 0.7-a );
setScaleKey( spep_7 + 2, 1, 0.73-a, 0.73-a );
setScaleKey( spep_7 + 4, 1, 0.77-a, 0.77-a );
setScaleKey( spep_7 + 6, 1, 0.8-a, 0.8-a );
setScaleKey( spep_7 + 8, 1, 0.83-a, 0.83-a );
setScaleKey( spep_7 + 10, 1, 0.86-a, 0.86-a );
--setScaleKey( spep_7 + 12, 1, 1.24-a, 1.24-a );
setScaleKey( spep_7 + 14, 1, 1.62-b, 1.62-b );
setScaleKey( spep_7 + 16, 1, 1.79-b, 1.79-b );
--setScaleKey( spep_7 + 18, 1, 1.9-a, 1.9-a );
--setScaleKey( spep_7 + 20, 1, 2.1-a, 2.1-a );
setScaleKey( spep_7 -3 + 58, 1, 1.8-b, 1.8-b );

--[[
setScaleKey( spep_7 + 22, 1, 2.25-a, 2.25-a );
setScaleKey( spep_7 + 24, 1, 2.34-a, 2.34-a );
setScaleKey( spep_7 + 26, 1, 2.42-a, 2.42-a );
setScaleKey( spep_7 + 28, 1, 2.51-a, 2.51-a );
setScaleKey( spep_7 + 30, 1, 2.59-a, 2.59-a );
setScaleKey( spep_7 + 32, 1, 2.66-a, 2.66-a );
setScaleKey( spep_7 + 34, 1, 2.73-a, 2.73-a );
setScaleKey( spep_7 + 36, 1, 2.8-a, 2.8-a );
setScaleKey( spep_7 + 38, 1, 2.87-a, 2.87-a );
setScaleKey( spep_7 + 40, 1, 2.94-a, 2.94-a );
setScaleKey( spep_7 + 42, 1, 3.01-a, 3.01-a );
setScaleKey( spep_7 + 44, 1, 3.08-a, 3.08-a );
setScaleKey( spep_7 + 46, 1, 3.15-a, 3.15-a );
setScaleKey( spep_7 + 48, 1, 3.22-a, 3.22-a );
setScaleKey( spep_7 + 50, 1, 3.29-a, 3.29-a );
setScaleKey( spep_7 + 52, 1, 3.36-a, 3.36-a );
setScaleKey( spep_7 + 54, 1, 3.43-a, 3.43-a );
setScaleKey( spep_7 + 56, 1, 3.5-a, 3.5-a );
setScaleKey( spep_7 + 58, 1, 3.57-a, 3.57-a );
]]
setRotateKey( spep_7  + 0, 1, -62.2 );
setRotateKey( spep_7  + 2, 1, -62.1 );
setRotateKey( spep_7 -3 + 58, 1, -62.1 );

setBlendColor(spep_7+3,1,2,0,0,0,0.4);
setBlendColor(spep_7+12,1,2,0,0,0,0.8);
setBlendColor(spep_7+14,1,2,0,0,0,1.0);

--SE
playSe( spep_7 + 4, 1021 );
stopSe( spep_7 + 19, se_1124, 86 );
--黒フェード
entryFadeBg(spep_7,0,54,0,0,0,0,155);

-- ** 次の準備 ** --
spep_8 = spep_7 + 54;

--------------------------------------
--迫る
--------------------------------------
--敵の色戻す
setBlendColor(spep_8 + 50 , 1 , 2 , 0 , 0 , 0 , 0);

-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_11x, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_8 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_8 + 180, finish, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_8 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 180, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 180, finish, 255 );

--SE
se_1175 = playSe( spep_8 + 16, 1175 );
setSeVolume( spep_8 + 16, 1175, 0 );
setSeVolume( spep_8 + 30, 1175, 1.2 );
setSeVolume( spep_8 + 31, 1175, 2.5 );
setSeVolume( spep_8 + 32, 1175, 3.8 );
setSeVolume( spep_8 + 33, 1175, 5.1 );
setSeVolume( spep_8 + 34, 1175, 6.4 );
setSeVolume( spep_8 + 35, 1175, 7.7 );
setSeVolume( spep_8 + 36, 1175, 9.0 );
setSeVolume( spep_8 + 37, 1175, 10.3 );
setSeVolume( spep_8 + 38, 1175, 11.6 );
setSeVolume( spep_8 + 39, 1175, 12.9 );
setSeVolume( spep_8 + 40, 1175, 14.2 );
setSeVolume( spep_8 + 41, 1175, 15.4 );
setSeVolume( spep_8 + 42, 1175, 16.7 );
setSeVolume( spep_8 + 43, 1175, 18.0 );
setSeVolume( spep_8 + 44, 1175, 19.3 );
setSeVolume( spep_8 + 45, 1175, 20.6 );
setSeVolume( spep_8 + 46, 1175, 21.9 );
setSeVolume( spep_8 + 47, 1175, 23.2 );
setSeVolume( spep_8 + 48, 1175, 24.5 );
setSeVolume( spep_8 + 49, 1175, 25.8 );
setSeVolume( spep_8 + 50, 1175, 27.1 );
setSeVolume( spep_8 + 51, 1175, 28.4 );
setSeVolume( spep_8 + 52, 1175, 29.6 );
setSeVolume( spep_8 + 53, 1175, 30.9 );
setSeVolume( spep_8 + 54, 1175, 32.2 );
setSeVolume( spep_8 + 55, 1175, 33.5 );
setSeVolume( spep_8 + 56, 1175, 34.8 );
setSeVolume( spep_8 + 57, 1175, 36.1 );
setSeVolume( spep_8 + 58, 1175, 37.4 );
setSeVolume( spep_8 + 59, 1175, 38.7 );
setSeVolume( spep_8 + 60, 1175, 40.0 );
setSeVolume( spep_8 + 61, 1175, 41.3 );
setSeVolume( spep_8 + 62, 1175, 42.6 );
setSeVolume( spep_8 + 63, 1175, 43.8 );
setSeVolume( spep_8 + 64, 1175, 45.1 );
setSeVolume( spep_8 + 65, 1175, 46.4 );
setSeVolume( spep_8 + 66, 1175, 47.7 );
setSeVolume( spep_8 + 67, 1175, 49.0 );
setSeVolume( spep_8 + 68, 1175, 50.3 );
setSeVolume( spep_8 + 69, 1175, 51.6 );
setSeVolume( spep_8 + 70, 1175, 52.9 );
setSeVolume( spep_8 + 71, 1175, 54.2 );
setSeVolume( spep_8 + 72, 1175, 55.50 );
setSeVolume( spep_8 + 73, 1175, 56.8 );
setSeVolume( spep_8 + 74, 1175, 58.0 );
setSeVolume( spep_8 + 75, 1175, 59.3 );
setSeVolume( spep_8 + 76, 1175, 60.6 );
setSeVolume( spep_8 + 77, 1175, 61.9 );
setSeVolume( spep_8 + 78, 1175, 63.2 );
setSeVolume( spep_8 + 79, 1175, 64.5 );
setSeVolume( spep_8 + 80, 1175, 65.8 );
setSeVolume( spep_8 + 81, 1175, 67.1 );
setSeVolume( spep_8 + 82, 1175, 68.4 );
setSeVolume( spep_8 + 83, 1175, 69.7 );
setSeVolume( spep_8 + 84, 1175, 71 );
stopSe( spep_8 + 113, se_1175, 0 );
playSe( spep_8 + 79, 1024 );
playSe( spep_8 + 79, 1159 );
setSeVolume( spep_8 + 79, 1159, 126  );

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 70 );
endPhase( spep_8 + 170  );

end
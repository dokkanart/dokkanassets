--1018300:ゴールデンクウラ_ゴールデンスーパーノヴァ
--sp_effect_a2_00121

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
SP_01=	154306	;--	気溜め　
SP_02=	154307	;--	気弾拡大
SP_03=	154309	;--	構え
SP_04=	154310	;--	発射
SP_05=	154312	;--	気弾が敵に迫る
SP_06=	154313	;--	爆発

--エフェクト(てき)
SP_01x=	154306	;--	気溜め　	
SP_02x=	154308	;--	気弾拡大	(敵)
SP_03x=	154309	;--	構え	
SP_04x=	154311	;--	発射	(敵)
SP_05x=	154312	;--	気弾が敵に迫る	
SP_06x=	154313	;--	爆発	

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
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );

--黒背景
entryFadeBg( spep_0 + 0, 0, 100,0, 0, 0, 0, 200 );  --white fade

--白フェード
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 1053 );
setSeVolume( spep_0 + 0, 1053, 0 );
se_0033 = playSe( spep_0 + 0, 33 );
playSe( spep_0 + 0, 1021 );
setSeVolume( spep_0 + 0, 1021, 0 );
se_1154 = playSe( spep_0 + 0, 1154 );
setSeVolume( spep_0 + 0, 1154, 0 );
playSe( spep_0 + 0, 8 );
playSe( spep_0 + 5, 37 );
playSe( spep_0 + 5, 1019 );
setSeVolume( spep_0 + 5, 1019, 50 );
setSeVolume( spep_0 + 10, 1154, 33 );
setSeVolume( spep_0 + 11, 1154, 66 );
setSeVolume( spep_0 + 12, 1154, 100 );
se_1050 = playSe( spep_0 + 18, 1050 );
setSeVolume( spep_0 + 18, 1050, 56 );
setSeVolume( spep_0 + 19, 1053, 79 );
setSeVolume( spep_0 + 34, 1021, 35 );
setSeVolume( spep_0 + 35, 1021, 71 );
stopSe( spep_0 + 44, se_1050, 0 );
stopSe( spep_0 + 56, se_0033, 0 );
playSe( spep_0 + 83, 1145 );
se_0015 = playSe( spep_0 + 94, 15 );
se_1147 = playSe( spep_0 + 94, 1147 );
playSe( spep_0 + 94, 1038 );
se_0017 = playSe( spep_0 + 94, 17 );
playSe( spep_0 + 94, 1139 );
stopSe( spep_0 + 94, se_1154, 0 );
setSeVolume( spep_0 + 94, 1147, 63 );
setSeVolume( spep_0 + 94, 1038, 63 );
setSeVolume( spep_0 + 94, 17, 63 );
setSeVolume( spep_0 + 94, 1139, 63 );

--次の準備
spep_1 = spep_0+100;

------------------------------------------------------
--	気弾拡大
------------------------------------------------------
-- ** エフェクト等 ** --
big = entryEffect( spep_1 + 0, SP_02,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, big, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, big, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, big, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, big, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, big, 0 );
setEffRotateKey( spep_1 + 120, big, 0 );
setEffAlphaKey( spep_1 + 0, big, 255 );
setEffAlphaKey( spep_1 + 120, big, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 118, 1, 0 );

changeAnime( spep_1  + 0, 1, 102 );

setMoveKey( spep_1  + 0, 1, 210.3, -290.7 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 217.1, -298.8 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 223.9, -307 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 230.7, -314.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 237.5, -323.1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 244.3, -331.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 251.1, -339.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 258, -347.4 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 265, -355.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 271.8, -363.8 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 278.6, -371.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 285.4, -379.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 292.2, -388.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 308.1, -405.5 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 323.8, -423 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 339.7, -440.5 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 355.6, -458.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 371.5, -475.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 387.2, -493.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 403.1, -510.7 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 418.9, -528.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 434.6, -545.7 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 450.5, -563.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 466.4, -580.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 482.1, -598.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 498, -615.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 513.9, -633.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 529.5, -650.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 545.4, -668.3 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 561.3, -685.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 577, -703.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 592.9, -720.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 608.8, -738.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 624.4, -755.7 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 640.3, -773.2 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 656.2, -790.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 671.9, -808.4 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 687.8, -825.9 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 703.7, -843.3 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 719.6, -860.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 728.9, -871 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 738.2, -881.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 747.7, -891.5 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 757.1, -901.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 766.6, -911.9 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 775.9, -922.1 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 785.2, -932.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 794.7, -942.6 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 804.1, -952.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 813.6, -963 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 822.9, -973.2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 832.2, -983.4 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 841.8, -993.7 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 851.1, -1003.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 860.6, -1014.1 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 869.9, -1024.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 879.2, -1034.5 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 888.8, -1044.8 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 898.1, -1055 , 0 );
setMoveKey( spep_1  + 118, 1, 907.6, -1065.2 , 0 );

setScaleKey( spep_1  + 0, 1, 1.62, 1.62 );
--setScaleKey( spep_1 -3 + 2, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 4, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 6, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 10, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 12, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 14, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 16, 1, 1.98, 1.98 );
setScaleKey( spep_1 -3 + 18, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 20, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 22, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 24, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 26, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 28, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 30, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 32, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 34, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 36, 1, 2.63, 2.63 );
setScaleKey( spep_1 -3 + 38, 1, 2.7, 2.7 );
setScaleKey( spep_1 -3 + 40, 1, 2.79, 2.79 );
setScaleKey( spep_1 -3 + 42, 1, 2.86, 2.86 );
setScaleKey( spep_1 -3 + 44, 1, 2.93, 2.93 );
setScaleKey( spep_1 -3 + 46, 1, 3.02, 3.02 );
setScaleKey( spep_1 -3 + 48, 1, 3.09, 3.09 );
setScaleKey( spep_1 -3 + 50, 1, 3.18, 3.18 );
setScaleKey( spep_1 -3 + 52, 1, 3.25, 3.25 );
setScaleKey( spep_1 -3 + 54, 1, 3.32, 3.32 );
setScaleKey( spep_1 -3 + 56, 1, 3.41, 3.41 );
setScaleKey( spep_1 -3 + 58, 1, 3.47, 3.47 );
setScaleKey( spep_1 -3 + 60, 1, 3.57, 3.57 );
setScaleKey( spep_1 -3 + 62, 1, 3.63, 3.63 );
setScaleKey( spep_1 -3 + 64, 1, 3.7, 3.7 );
setScaleKey( spep_1 -3 + 66, 1, 3.79, 3.79 );
setScaleKey( spep_1 -3 + 68, 1, 3.86, 3.86 );
setScaleKey( spep_1 -3 + 70, 1, 3.93, 3.93 );
setScaleKey( spep_1 -3 + 72, 1, 4.02, 4.02 );
setScaleKey( spep_1 -3 + 74, 1, 4.09, 4.09 );
setScaleKey( spep_1 -3 + 76, 1, 4.18, 4.18 );
setScaleKey( spep_1 -3 + 78, 1, 4.25, 4.25 );
setScaleKey( spep_1  + 118, 1, 4.25, 4.25 );

setRotateKey( spep_1  + 0, 1, 9.3 );
setRotateKey( spep_1  + 2, 1, 9.5 );
setRotateKey( spep_1  + 118, 1, 9.5 );

--集中線
shuchusen1 = entryEffectLife( spep_1 -3 + 66,  906, 52 + 3, 0x100, -1, 0, 0, 156 );

setEffMoveKey( spep_1 -3 + 66, shuchusen1, 0, 156 , 0 );
setEffMoveKey( spep_1  + 118, shuchusen1, 0, 156 , 0 );

setEffScaleKey( spep_1 -3 + 66, shuchusen1, 1.2, 1.6 );
setEffScaleKey( spep_1  + 118, shuchusen1, 1.2, 1.6 );

setEffRotateKey( spep_1 -3 + 66, shuchusen1, 180 );
setEffRotateKey( spep_1  + 118, shuchusen1, 180 );

setEffAlphaKey( spep_1 -3 + 66, shuchusen1, 51 );
setEffAlphaKey( spep_1 -3 + 68, shuchusen1, 102 );
setEffAlphaKey( spep_1 -3 + 70, shuchusen1, 153 );
setEffAlphaKey( spep_1 -3 + 72, shuchusen1, 204 );
setEffAlphaKey( spep_1 -3 + 74, shuchusen1, 255 );
setEffAlphaKey( spep_1  + 118, shuchusen1, 255 );

--黒背景
entryFadeBg( spep_1 + 0, 0, 120,0, 0, 0, 0, 200 );  --white fade

--白フェード
entryFade( spep_1 + 112, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fadez

-- ** 音 ** --
se_1176 = playSe( spep_1 + 4, 1176 );
setSeVolume( spep_1 + 4, 1176, 50 );
playSe( spep_1 + 38, 1139 );
setSeVolume( spep_1 + 38, 1139, 63 );
stopSe( spep_1 + 58, se_0015, 8 );
playSe( spep_1 + 114, 1035 );
stopSe( spep_1 + 114, se_1147, 0 );
stopSe( spep_1 + 114, se_0017, 0 );
stopSe( spep_1 + 113, se_1176, 0 );

--次の準備
spep_2 = spep_1+120;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1147 = playSe( spep_2 + 84, 1147 );
setSeVolume( spep_2 + 84, 1147, 50 );
playSe( spep_2 + 93, 1018 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
--	構え
------------------------------------------------------
-- ** エフェクト等 ** --
kamae = entryEffect( spep_3 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, kamae, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, kamae, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kamae, 0 );
setEffRotateKey( spep_3 + 110, kamae, 0 );
setEffAlphaKey( spep_3 + 0, kamae, 255 );
setEffAlphaKey( spep_3 + 110, kamae, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 108, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_3 + 108, shuchusen2, 1.15, 1.15 );

setEffRotateKey( spep_3 + 0, shuchusen2, 180 );
setEffRotateKey( spep_3 + 108, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 108, shuchusen2, 255 );

--黒背景
entryFadeBg( spep_3 + 0, 0, 110,0, 0, 0, 0, 200 );  --white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1147, 0 );
    --stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );
    
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
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------

-- ** 顔カットイン ** --
speff = entryEffect( spep_3+10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3+10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +22, 190006, 72, 0x100, -1, 0, -70, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 +22,  ctgogo,  -70,  510);
setEffMoveKey(  spep_3 +94,  ctgogo,  -70,  510);

setEffAlphaKey( spep_3 +22, ctgogo, 0 );
setEffAlphaKey( spep_3 + 23, ctgogo, 255 );
setEffAlphaKey( spep_3 + 24, ctgogo, 255 );
setEffAlphaKey( spep_3 + 86, ctgogo, 255 );
setEffAlphaKey( spep_3 + 88, ctgogo, 255 );
setEffAlphaKey( spep_3 + 90, ctgogo, 191 );
setEffAlphaKey( spep_3 + 92, ctgogo, 128 );
setEffAlphaKey( spep_3 + 94, ctgogo, 64 );

setEffRotateKey(  spep_3 +22,  ctgogo,  0);
setEffRotateKey(  spep_3 +94,  ctgogo,  0);

setEffScaleKey(  spep_3 +22,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +84,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +94,  ctgogo, 1.07, 1.07 );

-- ** 音 ** --
playSe( spep_3 + 22, 1021 );
setSeVolume( spep_3 + 22, 1021, 0 );
setSeVolume( spep_3 + 32, 1021, 4 );
setSeVolume( spep_3 + 33, 1021, 8 );
setSeVolume( spep_3 + 34, 1021, 12 );
setSeVolume( spep_3 + 35, 1021, 16 );
setSeVolume( spep_3 + 36, 1021, 20 );
setSeVolume( spep_3 + 37, 1021, 24 );
setSeVolume( spep_3 + 38, 1021, 28 );
setSeVolume( spep_3 + 39, 1021, 32 );
setSeVolume( spep_3 + 40, 1021, 36 );
setSeVolume( spep_3 + 41, 1021, 40 );
setSeVolume( spep_3 + 42, 1021, 44 );
setSeVolume( spep_3 + 43, 1021, 48 );
setSeVolume( spep_3 + 44, 1021, 52 );
setSeVolume( spep_3 + 45, 1021, 56 );
setSeVolume( spep_3 + 46, 1021, 60 );
setSeVolume( spep_3 + 47, 1021, 64 );
setSeVolume( spep_3 + 48, 1021, 68 );
setSeVolume( spep_3 + 49, 1021, 72 );
setSeVolume( spep_3 + 50, 1021, 76 );
setSeVolume( spep_3 + 51, 1021, 80 );
setSeVolume( spep_3 + 52, 1021, 84 );
setSeVolume( spep_3 + 53, 1021, 88 );
setSeVolume( spep_3 + 54, 1021, 92 );
setSeVolume( spep_3 + 55, 1021, 96 );
setSeVolume( spep_3 + 56, 1021, 100 );
se_1116 = playSe( spep_3 + 97, 1116 );

--白フェード
entryFade( spep_3 + 102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fadez

-- ** 次の準備 ** --
spep_4 = spep_3 + 110;

------------------------------------------------------
--	発射
------------------------------------------------------
-- ** エフェクト等 ** --
hassya = entryEffect( spep_4 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_4 + 70, hassya, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassya, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, hassya, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassya, 0 );
setEffRotateKey( spep_4 + 70, hassya, 0 );
setEffAlphaKey( spep_4 + 0, hassya, 255 );
setEffAlphaKey( spep_4 + 70, hassya, 255 );

--流線１
ryusen1 = entryEffectLife( spep_4 + 0,  921, 68, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 68, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen1, 2.79, 1.21 );
setEffScaleKey( spep_4 + 68, ryusen1, 2.79, 1.21 );

setEffRotateKey( spep_4 + 0, ryusen1, -125.7 );
setEffRotateKey( spep_4 + 68, ryusen1, -125.7 );

setEffAlphaKey( spep_4 + 0, ryusen1, 255 );
setEffAlphaKey( spep_4 + 68, ryusen1, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4 -3 + 10,  10012, 44, 0x100, -1, 0, -114, 317 );--ズオッ

setEffMoveKey( spep_4 -3 + 10, ctzuo, -114, 317 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctzuo, -84.7, 366.9 , 0 );
setEffMoveKey( spep_4 -3 + 14, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzuo, -61.2, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzuo, -54.9, 416.2 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzuo, -53.5, 415.2 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzuo, -52.8, 414.7 , 0 );

setEffScaleKey( spep_4 -3 + 10, ctzuo, 0.36, 0.36 );
setEffScaleKey( spep_4 -3 + 12, ctzuo, 1.61, 1.61 );
setEffScaleKey( spep_4 -3 + 14, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4 -3 + 44, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4 -3 + 46, ctzuo, 3.25, 3.25 );
setEffScaleKey( spep_4 -3 + 48, ctzuo, 3.63, 3.63 );
setEffScaleKey( spep_4 -3 + 50, ctzuo, 4.01, 4.01 );
setEffScaleKey( spep_4 -3 + 52, ctzuo, 4.4, 4.4 );
setEffScaleKey( spep_4 -3 + 54, ctzuo, 4.78, 4.78 )

setEffRotateKey( spep_4 -3 + 10, ctzuo, 21.6 );
setEffRotateKey( spep_4 -3 + 12, ctzuo, 21.7 );
setEffRotateKey( spep_4 -3 + 54, ctzuo, 21.7 );

setEffAlphaKey( spep_4 -3 + 10, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 44, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 46, ctzuo, 204 );
setEffAlphaKey( spep_4 -3 + 48, ctzuo, 153 );
setEffAlphaKey( spep_4 -3 + 50, ctzuo, 102 );
setEffAlphaKey( spep_4 -3 + 52, ctzuo, 51 );
setEffAlphaKey( spep_4 -3 + 54, ctzuo, 0 );

--黒背景
entryFadeBg( spep_4 + 0, 0, 70,0, 0, 0, 0, 200 );  --white fade

--白フェード
entryFade( spep_4 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1044 = playSe( spep_4 + 3, 1044 );
setSeVolume( spep_4 + 3, 1044, 40 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 70;

------------------------------------------------------
--	気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_5 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 30, hit, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 30, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 30, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 30, hit, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 28, 1, 0 );

changeAnime( spep_5 + 0, 1, 104 );

setMoveKey( spep_5 + 0, 1, 554.4, -764.5 , 0 );
setMoveKey( spep_5 + 2, 1, 467.5, -639.2 , 0 );
setMoveKey( spep_5 + 4, 1, 374.6, -517 , 0 );
setMoveKey( spep_5 + 6, 1, 287.9, -392 , 0 );
setMoveKey( spep_5 + 8, 1, 272.7, -378.5 , 0 );
setMoveKey( spep_5 + 10, 1, 263.4, -362 , 0 );
setMoveKey( spep_5 + 12, 1, 248.2, -348.6 , 0 );
setMoveKey( spep_5 + 14, 1, 238.6, -332 , 0 );
setMoveKey( spep_5 + 16, 1, 223.4, -318.6 , 0 );
setMoveKey( spep_5 + 18, 1, 214.1, -302.3 , 0 );
setMoveKey( spep_5 + 20, 1, 207.1, -298.8 , 0 );
setMoveKey( spep_5 + 22, 1, 205.9, -292.3 , 0 );
setMoveKey( spep_5 + 24, 1, 198.9, -288.8 , 0 );
setMoveKey( spep_5 + 26, 1, 197.8, -282.3 , 0 );
setMoveKey( spep_5 + 28, 1, 190.7, -278.8 , 0 );

setScaleKey( spep_5 + 0, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 2, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 4, 1, 1.02, 1.02 );
setScaleKey( spep_5 + 6, 1, 1.11, 1.11 );
setScaleKey( spep_5 + 8, 1, 1.14, 1.14 );
setScaleKey( spep_5 + 10, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_5 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 16, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 18, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 28, 1, 1.25, 1.25 );

setRotateKey( spep_5 + 0, 1, 23.3 );
setRotateKey( spep_5 + 2, 1, 23.5 );
setRotateKey( spep_5 + 28, 1, 23.5 );

--流線
ryusen2 = entryEffectLife( spep_5 + 0,  921, 28, 0x80, -1, 0, 100, 0 );

setEffMoveKey( spep_5 + 0, ryusen2, 0, 100 , 0 );
setEffMoveKey( spep_5 + 28, ryusen2, 0, 100 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 2.59, 1.01 );
setEffScaleKey( spep_5 + 28, ryusen2, 2.59, 1.01 );

setEffRotateKey( spep_5 + 0, ryusen2, 54.4 );
setEffRotateKey( spep_5 + 28, ryusen2, 54.4 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 28, ryusen2, 255 );

--黒背景
entryFadeBg( spep_5 + 0, 0, 30,0, 0, 0, 0, 200 );  --white fade

--白フェード
entryFade( spep_5 + 22, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 13, 1023 );
stopSe( spep_5 + 14, se_1116, 0 );
stopSe( spep_5 + 14, se_1044, 0 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 30;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, 190003, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 58, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 58, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_6 + 0, 10006, 58, 0x100, -1, 0, 7.1, 316.8 );
setEffMoveKey( spep_6 + 0, ctgyan, 7.1, 316.8 , 0 );
setEffMoveKey( spep_6 -3 + 61, ctgyan, 7.1, 316.8 , 0 );

setEffScaleKey( spep_6 -3 + 3, ctgyan, 2, 2 );
setEffScaleKey( spep_6 -3 + 10, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_6 -3 + 61, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 -3 + 61, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 -3 + 61, ctgyan, 255 );

-- ** 音 ** --
playSe( spep_6 + 55, 1159 );
playSe( spep_6 + 55, 1011 );
setSeVolume( spep_6 + 55, 1159, 79 );
setSeVolume( spep_6 + 55, 1011, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, 0, 0, 0, 225); --黒フェード

-- ** 白フェード ** --
entryFade( spep_6 + 46, 8, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 58;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7+ 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7+ 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_7+ 160, explosion, 0, 0 , 0 );
setEffScaleKey( spep_7+ 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7+ 160, explosion, 1.0, 1.0 );
setEffRotateKey( spep_7+ 0, explosion, 0 );
setEffRotateKey( spep_7+ 160, explosion, 0 );
setEffAlphaKey( spep_7+ 0, explosion, 255 );
setEffAlphaKey( spep_7+ 160, explosion, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_7 + 0,  906, 158, 0x100, -1, 0, 80.1, 0 );

setEffMoveKey( spep_7 + 0, shuchusen3, 80.1, 0 , 0 );
setEffMoveKey( spep_7 + 158, shuchusen3, 80.1, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen3, 1.59, 1.59 );
setEffScaleKey( spep_7 + 158, shuchusen3, 1.59, 1.59 );

setEffRotateKey( spep_7 + 0, shuchusen3, 180 );
setEffRotateKey( spep_7 + 158, shuchusen3, 180 );

setEffAlphaKey( spep_7 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_7 + 158, shuchusen3, 255 );

--黒背景
entryFadeBg( spep_7 + 0, 0, 160,0, 0, 0, 0, 200 );  --white fade

-- ** 音 ** --
playSe( spep_7 + 55, 1003 );
setSeVolume( spep_7 + 55, 1003, 63 );

-- ** ダメージ表示 ** --
dealDamage(spep_7 +20 );
endPhase( spep_7 + 154 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め　
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );

--黒背景
entryFadeBg( spep_0 + 0, 0, 100,0, 0, 0, 0, 200 );  --white fade

--白フェード
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 1053 );
setSeVolume( spep_0 + 0, 1053, 0 );
se_0033 = playSe( spep_0 + 0, 33 );
playSe( spep_0 + 0, 1021 );
setSeVolume( spep_0 + 0, 1021, 0 );
se_1154 = playSe( spep_0 + 0, 1154 );
setSeVolume( spep_0 + 0, 1154, 0 );
playSe( spep_0 + 0, 8 );
playSe( spep_0 + 5, 37 );
playSe( spep_0 + 5, 1019 );
setSeVolume( spep_0 + 5, 1019, 50 );
setSeVolume( spep_0 + 10, 1154, 33 );
setSeVolume( spep_0 + 11, 1154, 66 );
setSeVolume( spep_0 + 12, 1154, 100 );
se_1050 = playSe( spep_0 + 18, 1050 );
setSeVolume( spep_0 + 18, 1050, 56 );
setSeVolume( spep_0 + 19, 1053, 79 );
setSeVolume( spep_0 + 34, 1021, 35 );
setSeVolume( spep_0 + 35, 1021, 71 );
stopSe( spep_0 + 44, se_1050, 0 );
stopSe( spep_0 + 56, se_0033, 0 );
playSe( spep_0 + 83, 1145 );
se_0015 = playSe( spep_0 + 94, 15 );
se_1147 = playSe( spep_0 + 94, 1147 );
playSe( spep_0 + 94, 1038 );
se_0017 = playSe( spep_0 + 94, 17 );
playSe( spep_0 + 94, 1139 );
stopSe( spep_0 + 94, se_1154, 0 );
setSeVolume( spep_0 + 94, 1147, 63 );
setSeVolume( spep_0 + 94, 1038, 63 );
setSeVolume( spep_0 + 94, 17, 63 );
setSeVolume( spep_0 + 94, 1139, 63 );

--次の準備
spep_1 = spep_0+100;

------------------------------------------------------
--	気弾拡大
------------------------------------------------------
-- ** エフェクト等 ** --
big = entryEffect( spep_1 + 0, SP_02x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, big, 0, 0 , 0 );
setEffMoveKey( spep_1 + 120, big, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, big, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, big, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, big, 0 );
setEffRotateKey( spep_1 + 120, big, 0 );
setEffAlphaKey( spep_1 + 0, big, 255 );
setEffAlphaKey( spep_1 + 120, big, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 118, 1, 0 );

changeAnime( spep_1  + 0, 1, 102 );

setMoveKey( spep_1  + 0, 1, 210.3, -290.7 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 217.1, -298.8 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 223.9, -307 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 230.7, -314.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 237.5, -323.1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 244.3, -331.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 251.1, -339.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 258, -347.4 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 265, -355.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 271.8, -363.8 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 278.6, -371.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 285.4, -379.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 292.2, -388.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 308.1, -405.5 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 323.8, -423 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 339.7, -440.5 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 355.6, -458.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 371.5, -475.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 387.2, -493.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 403.1, -510.7 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 418.9, -528.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 434.6, -545.7 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 450.5, -563.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 466.4, -580.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 482.1, -598.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 498, -615.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 513.9, -633.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 529.5, -650.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 545.4, -668.3 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 561.3, -685.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 577, -703.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 592.9, -720.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 608.8, -738.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 624.4, -755.7 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 640.3, -773.2 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 656.2, -790.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 671.9, -808.4 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 687.8, -825.9 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 703.7, -843.3 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 719.6, -860.8 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 728.9, -871 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 738.2, -881.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 747.7, -891.5 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 757.1, -901.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 766.6, -911.9 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 775.9, -922.1 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 785.2, -932.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 794.7, -942.6 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 804.1, -952.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 813.6, -963 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 822.9, -973.2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 832.2, -983.4 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 841.8, -993.7 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 851.1, -1003.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 860.6, -1014.1 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 869.9, -1024.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 879.2, -1034.5 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 888.8, -1044.8 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 898.1, -1055 , 0 );
setMoveKey( spep_1  + 118, 1, 907.6, -1065.2 , 0 );

setScaleKey( spep_1  + 0, 1, 1.62, 1.62 );
--setScaleKey( spep_1 -3 + 2, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 4, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 6, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 10, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 12, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 14, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 16, 1, 1.98, 1.98 );
setScaleKey( spep_1 -3 + 18, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 20, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 22, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 24, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 26, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 28, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 30, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 32, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 34, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 36, 1, 2.63, 2.63 );
setScaleKey( spep_1 -3 + 38, 1, 2.7, 2.7 );
setScaleKey( spep_1 -3 + 40, 1, 2.79, 2.79 );
setScaleKey( spep_1 -3 + 42, 1, 2.86, 2.86 );
setScaleKey( spep_1 -3 + 44, 1, 2.93, 2.93 );
setScaleKey( spep_1 -3 + 46, 1, 3.02, 3.02 );
setScaleKey( spep_1 -3 + 48, 1, 3.09, 3.09 );
setScaleKey( spep_1 -3 + 50, 1, 3.18, 3.18 );
setScaleKey( spep_1 -3 + 52, 1, 3.25, 3.25 );
setScaleKey( spep_1 -3 + 54, 1, 3.32, 3.32 );
setScaleKey( spep_1 -3 + 56, 1, 3.41, 3.41 );
setScaleKey( spep_1 -3 + 58, 1, 3.47, 3.47 );
setScaleKey( spep_1 -3 + 60, 1, 3.57, 3.57 );
setScaleKey( spep_1 -3 + 62, 1, 3.63, 3.63 );
setScaleKey( spep_1 -3 + 64, 1, 3.7, 3.7 );
setScaleKey( spep_1 -3 + 66, 1, 3.79, 3.79 );
setScaleKey( spep_1 -3 + 68, 1, 3.86, 3.86 );
setScaleKey( spep_1 -3 + 70, 1, 3.93, 3.93 );
setScaleKey( spep_1 -3 + 72, 1, 4.02, 4.02 );
setScaleKey( spep_1 -3 + 74, 1, 4.09, 4.09 );
setScaleKey( spep_1 -3 + 76, 1, 4.18, 4.18 );
setScaleKey( spep_1 -3 + 78, 1, 4.25, 4.25 );
setScaleKey( spep_1  + 118, 1, 4.25, 4.25 );

setRotateKey( spep_1  + 0, 1, 9.3 );
setRotateKey( spep_1  + 2, 1, 9.5 );
setRotateKey( spep_1  + 118, 1, 9.5 );

--集中線
shuchusen1 = entryEffectLife( spep_1 -3 + 66,  906, 52 + 3, 0x100, -1, 0, 0, 156 );

setEffMoveKey( spep_1 -3 + 66, shuchusen1, 0, 156 , 0 );
setEffMoveKey( spep_1  + 118, shuchusen1, 0, 156 , 0 );

setEffScaleKey( spep_1 -3 + 66, shuchusen1, 1.2, 1.6 );
setEffScaleKey( spep_1  + 118, shuchusen1, 1.2, 1.6 );

setEffRotateKey( spep_1 -3 + 66, shuchusen1, 180 );
setEffRotateKey( spep_1  + 118, shuchusen1, 180 );

setEffAlphaKey( spep_1 -3 + 66, shuchusen1, 51 );
setEffAlphaKey( spep_1 -3 + 68, shuchusen1, 102 );
setEffAlphaKey( spep_1 -3 + 70, shuchusen1, 153 );
setEffAlphaKey( spep_1 -3 + 72, shuchusen1, 204 );
setEffAlphaKey( spep_1 -3 + 74, shuchusen1, 255 );
setEffAlphaKey( spep_1  + 118, shuchusen1, 255 );

--黒背景
entryFadeBg( spep_1 + 0, 0, 120,0, 0, 0, 0, 200 );  --white fade

--白フェード
entryFade( spep_1 + 112, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fadez

-- ** 音 ** --
se_1176 = playSe( spep_1 + 4, 1176 );
setSeVolume( spep_1 + 4, 1176, 50 );
playSe( spep_1 + 38, 1139 );
setSeVolume( spep_1 + 38, 1139, 63 );
stopSe( spep_1 + 58, se_0015, 8 );
playSe( spep_1 + 114, 1035 );
stopSe( spep_1 + 114, se_1147, 0 );
stopSe( spep_1 + 114, se_0017, 0 );
stopSe( spep_1 + 113, se_1176, 0 );

--次の準備
spep_2 = spep_1+120;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
se_1147 = playSe( spep_2 + 84, 1147 );
setSeVolume( spep_2 + 84, 1147, 50 );
playSe( spep_2 + 93, 1018 );

--白フェード
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
--	構え
------------------------------------------------------
-- ** エフェクト等 ** --
kamae = entryEffect( spep_3 + 0, SP_03x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, kamae, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_3 + 110, kamae, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kamae, 0 );
setEffRotateKey( spep_3 + 110, kamae, 0 );
setEffAlphaKey( spep_3 + 0, kamae, 255 );
setEffAlphaKey( spep_3 + 110, kamae, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 108, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_3 + 108, shuchusen2, 1.15, 1.15 );

setEffRotateKey( spep_3 + 0, shuchusen2, 180 );
setEffRotateKey( spep_3 + 108, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 108, shuchusen2, 255 );

--黒背景
entryFadeBg( spep_3 + 0, 0, 110,0, 0, 0, 0, 200 );  --white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1147, 0 );
    --stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );
    
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
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3+10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3+10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +22, 190006, 72, 0x100, -1, 0, -70, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 +22,  ctgogo,  -70,  510);
setEffMoveKey(  spep_3 +94,  ctgogo,  -70,  510);

setEffAlphaKey( spep_3 +22, ctgogo, 0 );
setEffAlphaKey( spep_3 + 23, ctgogo, 255 );
setEffAlphaKey( spep_3 + 24, ctgogo, 255 );
setEffAlphaKey( spep_3 + 86, ctgogo, 255 );
setEffAlphaKey( spep_3 + 88, ctgogo, 255 );
setEffAlphaKey( spep_3 + 90, ctgogo, 191 );
setEffAlphaKey( spep_3 + 92, ctgogo, 128 );
setEffAlphaKey( spep_3 + 94, ctgogo, 64 );

setEffRotateKey(  spep_3 +22,  ctgogo,  0);
setEffRotateKey(  spep_3 +94,  ctgogo,  0);

setEffScaleKey(  spep_3 +22,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +84,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +94,  ctgogo, -1.07, 1.07 );

-- ** 音 ** --
playSe( spep_3 + 22, 1021 );
setSeVolume( spep_3 + 22, 1021, 0 );
setSeVolume( spep_3 + 32, 1021, 4 );
setSeVolume( spep_3 + 33, 1021, 8 );
setSeVolume( spep_3 + 34, 1021, 12 );
setSeVolume( spep_3 + 35, 1021, 16 );
setSeVolume( spep_3 + 36, 1021, 20 );
setSeVolume( spep_3 + 37, 1021, 24 );
setSeVolume( spep_3 + 38, 1021, 28 );
setSeVolume( spep_3 + 39, 1021, 32 );
setSeVolume( spep_3 + 40, 1021, 36 );
setSeVolume( spep_3 + 41, 1021, 40 );
setSeVolume( spep_3 + 42, 1021, 44 );
setSeVolume( spep_3 + 43, 1021, 48 );
setSeVolume( spep_3 + 44, 1021, 52 );
setSeVolume( spep_3 + 45, 1021, 56 );
setSeVolume( spep_3 + 46, 1021, 60 );
setSeVolume( spep_3 + 47, 1021, 64 );
setSeVolume( spep_3 + 48, 1021, 68 );
setSeVolume( spep_3 + 49, 1021, 72 );
setSeVolume( spep_3 + 50, 1021, 76 );
setSeVolume( spep_3 + 51, 1021, 80 );
setSeVolume( spep_3 + 52, 1021, 84 );
setSeVolume( spep_3 + 53, 1021, 88 );
setSeVolume( spep_3 + 54, 1021, 92 );
setSeVolume( spep_3 + 55, 1021, 96 );
setSeVolume( spep_3 + 56, 1021, 100 );
se_1116 = playSe( spep_3 + 97, 1116 );

--白フェード
entryFade( spep_3 + 102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fadez

-- ** 次の準備 ** --
spep_4 = spep_3 + 110;

------------------------------------------------------
--	発射
------------------------------------------------------
-- ** エフェクト等 ** --
hassya = entryEffect( spep_4 + 0, SP_04x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_4 + 70, hassya, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassya, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, hassya, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassya, 0 );
setEffRotateKey( spep_4 + 70, hassya, 0 );
setEffAlphaKey( spep_4 + 0, hassya, 255 );
setEffAlphaKey( spep_4 + 70, hassya, 255 );

--流線１
ryusen1 = entryEffectLife( spep_4 + 0,  921, 68, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 68, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen1, 2.79, 1.21 );
setEffScaleKey( spep_4 + 68, ryusen1, 2.79, 1.21 );

setEffRotateKey( spep_4 + 0, ryusen1, -125.7 );
setEffRotateKey( spep_4 + 68, ryusen1, -125.7 );

setEffAlphaKey( spep_4 + 0, ryusen1, 255 );
setEffAlphaKey( spep_4 + 68, ryusen1, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_4 -3 + 10,  10012, 44, 0x100, -1, 0, -114, 317 );--ズオッ

setEffMoveKey( spep_4 -3 + 10, ctzuo, -114, 317 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctzuo, -84.7, 366.9 , 0 );
setEffMoveKey( spep_4 -3 + 14, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzuo, -56.2, 417.2 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzuo, -61.2, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzuo, -54.9, 416.2 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzuo, -61.1, 421.1 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzuo, -53.5, 415.2 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzuo, -52.8, 414.7 , 0 );

setEffScaleKey( spep_4 -3 + 10, ctzuo, 0.36, 0.36 );
setEffScaleKey( spep_4 -3 + 12, ctzuo, 1.61, 1.61 );
setEffScaleKey( spep_4 -3 + 14, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4 -3 + 44, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4 -3 + 46, ctzuo, 3.25, 3.25 );
setEffScaleKey( spep_4 -3 + 48, ctzuo, 3.63, 3.63 );
setEffScaleKey( spep_4 -3 + 50, ctzuo, 4.01, 4.01 );
setEffScaleKey( spep_4 -3 + 52, ctzuo, 4.4, 4.4 );
setEffScaleKey( spep_4 -3 + 54, ctzuo, 4.78, 4.78 )

setEffRotateKey( spep_4 -3 + 10, ctzuo, 21.6 );
setEffRotateKey( spep_4 -3 + 12, ctzuo, 21.7 );
setEffRotateKey( spep_4 -3 + 54, ctzuo, 21.7 );

setEffAlphaKey( spep_4 -3 + 10, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 44, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 46, ctzuo, 204 );
setEffAlphaKey( spep_4 -3 + 48, ctzuo, 153 );
setEffAlphaKey( spep_4 -3 + 50, ctzuo, 102 );
setEffAlphaKey( spep_4 -3 + 52, ctzuo, 51 );
setEffAlphaKey( spep_4 -3 + 54, ctzuo, 0 );

--黒背景
entryFadeBg( spep_4 + 0, 0, 70,0, 0, 0, 0, 200 );  --white fade

--白フェード
entryFade( spep_4 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1044 = playSe( spep_4 + 3, 1044 );
setSeVolume( spep_4 + 3, 1044, 40 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 70;

------------------------------------------------------
--	気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_5 + 0, SP_05x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 30, hit, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 30, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 30, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 30, hit, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 28, 1, 0 );

changeAnime( spep_5 + 0, 1, 104 );

setMoveKey( spep_5 + 0, 1, 554.4, -764.5 , 0 );
setMoveKey( spep_5 + 2, 1, 467.5, -639.2 , 0 );
setMoveKey( spep_5 + 4, 1, 374.6, -517 , 0 );
setMoveKey( spep_5 + 6, 1, 287.9, -392 , 0 );
setMoveKey( spep_5 + 8, 1, 272.7, -378.5 , 0 );
setMoveKey( spep_5 + 10, 1, 263.4, -362 , 0 );
setMoveKey( spep_5 + 12, 1, 248.2, -348.6 , 0 );
setMoveKey( spep_5 + 14, 1, 238.6, -332 , 0 );
setMoveKey( spep_5 + 16, 1, 223.4, -318.6 , 0 );
setMoveKey( spep_5 + 18, 1, 214.1, -302.3 , 0 );
setMoveKey( spep_5 + 20, 1, 207.1, -298.8 , 0 );
setMoveKey( spep_5 + 22, 1, 205.9, -292.3 , 0 );
setMoveKey( spep_5 + 24, 1, 198.9, -288.8 , 0 );
setMoveKey( spep_5 + 26, 1, 197.8, -282.3 , 0 );
setMoveKey( spep_5 + 28, 1, 190.7, -278.8 , 0 );

setScaleKey( spep_5 + 0, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 2, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 4, 1, 1.02, 1.02 );
setScaleKey( spep_5 + 6, 1, 1.11, 1.11 );
setScaleKey( spep_5 + 8, 1, 1.14, 1.14 );
setScaleKey( spep_5 + 10, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_5 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 16, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 18, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 28, 1, 1.25, 1.25 );

setRotateKey( spep_5 + 0, 1, 23.3 );
setRotateKey( spep_5 + 2, 1, 23.5 );
setRotateKey( spep_5 + 28, 1, 23.5 );

--流線
ryusen2 = entryEffectLife( spep_5 + 0,  921, 28, 0x80, -1, 0, 100, 0 );

setEffMoveKey( spep_5 + 0, ryusen2, 0, 100 , 0 );
setEffMoveKey( spep_5 + 28, ryusen2, 0, 100 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 2.59, 1.01 );
setEffScaleKey( spep_5 + 28, ryusen2, 2.59, 1.01 );

setEffRotateKey( spep_5 + 0, ryusen2, 54.4 );
setEffRotateKey( spep_5 + 28, ryusen2, 54.4 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 28, ryusen2, 255 );

--黒背景
entryFadeBg( spep_5 + 0, 0, 30,0, 0, 0, 0, 200 );  --white fade

--白フェード
entryFade( spep_5 + 22, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 13, 1023 );
stopSe( spep_5 + 14, se_1116, 0 );
stopSe( spep_5 + 14, se_1044, 0 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 30;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, 190003, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 58, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 58, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_6 + 0, 10006, 58, 0x100, -1, 0, 7.1, 316.8 );
setEffMoveKey( spep_6 + 0, ctgyan, 7.1, 316.8 , 0 );
setEffMoveKey( spep_6 -3 + 61, ctgyan, 7.1, 316.8 , 0 );

setEffScaleKey( spep_6 -3 + 3, ctgyan, 2, 2 );
setEffScaleKey( spep_6 -3 + 10, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_6 -3 + 61, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 -3 + 61, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 -3 + 61, ctgyan, 255 );

-- ** 音 ** --
playSe( spep_6 + 55, 1159 );
playSe( spep_6 + 55, 1011 );
setSeVolume( spep_6 + 55, 1159, 79 );
setSeVolume( spep_6 + 55, 1011, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, 0, 0, 0, 225); --黒フェード

-- ** 白フェード ** --
entryFade( spep_6 + 46, 8, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 58;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7+ 0, SP_06x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7+ 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_7+ 160, explosion, 0, 0 , 0 );
setEffScaleKey( spep_7+ 0, explosion, -1.0, 1.0 );
setEffScaleKey( spep_7+ 160, explosion, -1.0, 1.0 );
setEffRotateKey( spep_7+ 0, explosion, 0 );
setEffRotateKey( spep_7+ 160, explosion, 0 );
setEffAlphaKey( spep_7+ 0, explosion, 255 );
setEffAlphaKey( spep_7+ 160, explosion, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_7 + 0,  906, 158, 0x100, -1, 0, 80.1, 0 );

setEffMoveKey( spep_7 + 0, shuchusen3, 80.1, 0 , 0 );
setEffMoveKey( spep_7 + 158, shuchusen3, 80.1, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen3, 1.59, 1.59 );
setEffScaleKey( spep_7 + 158, shuchusen3, 1.59, 1.59 );

setEffRotateKey( spep_7 + 0, shuchusen3, 180 );
setEffRotateKey( spep_7 + 158, shuchusen3, 180 );

setEffAlphaKey( spep_7 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_7 + 158, shuchusen3, 255 );

--黒背景
entryFadeBg( spep_7 + 0, 0, 160,0, 0, 0, 0, 200 );  --white fade

-- ** 音 ** --
playSe( spep_7 + 55, 1003 );
setSeVolume( spep_7 + 55, 1003, 63 );

-- ** ダメージ表示 ** --
dealDamage(spep_7 +20 );
endPhase( spep_7 + 154 );


end
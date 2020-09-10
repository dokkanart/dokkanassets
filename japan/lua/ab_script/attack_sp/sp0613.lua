--1019400:ナッパ/ベジータ_デラックスボンバー
--sp_effect_a7_00034

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
SP_01=	155248	;--	対峙
SP_02=	155250	;--	エフェクト溜め
SP_03=	155252	;--	攻撃
SP_04=	155253	;--	敵がエフェクトに包まれる
SP_05=	155254	;--	敵がエフェクトに包まれる
SP_06=	155255	;--	爆発
SP_07=	155256	;--	爆発後

--エフェクト(敵)
SP_01x=	155249	;--	対峙	(敵)
SP_02x=	155251	;--	エフェクト溜め	(敵)
SP_03x=	155252	;--	攻撃	
SP_04x=	155253	;--	敵がエフェクトに包まれる	
SP_05x=	155254	;--	敵がエフェクトに包まれる	
SP_06x=	155255	;--	爆発	
SP_07x=	155256	;--	爆発後	

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



kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
taizi = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, taizi, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, taizi, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, taizi, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, taizi, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, taizi, 0 );
setEffRotateKey( spep_0 + 56, taizi, 0 );
setEffAlphaKey( spep_0 + 0, taizi, 255 );
setEffAlphaKey( spep_0 + 56, taizi, 255 );


--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0  + 56, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 125.8, -320.1 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 143.3, -320 , 0 );
setMoveKey( spep_0-3 + 4, 1, 155.2, -320 , 0 );
setMoveKey( spep_0-3 + 6, 1, 164.7, -320 , 0 );
setMoveKey( spep_0-3 + 8, 1, 172.8, -320 , 0 );
setMoveKey( spep_0-3 + 10, 1, 179.7, -320 , 0 );
setMoveKey( spep_0-3 + 12, 1, 185.9, -320 , 0 );
setMoveKey( spep_0-3 + 14, 1, 191.5, -320 , 0 );
setMoveKey( spep_0-3 + 16, 1, 196.6, -320 , 0 );
setMoveKey( spep_0-3 + 18, 1, 201.2, -320 , 0 );
setMoveKey( spep_0-3 + 20, 1, 205.5, -320 , 0 );
setMoveKey( spep_0-3 + 22, 1, 209.5, -320 , 0 );
setMoveKey( spep_0-3 + 24, 1, 213.2, -320 , 0 );
setMoveKey( spep_0-3 + 26, 1, 216.7, -320 , 0 );
setMoveKey( spep_0-3 + 28, 1, 219.9, -320 , 0 );
setMoveKey( spep_0-3 + 30, 1, 223, -320 , 0 );
setMoveKey( spep_0-3 + 32, 1, 225.8, -320 , 0 );
setMoveKey( spep_0-3 + 34, 1, 228.5, -320 , 0 );
setMoveKey( spep_0-3 + 36, 1, 231, -320 , 0 );
setMoveKey( spep_0-3 + 38, 1, 233.3, -320 , 0 );
setMoveKey( spep_0-3 + 40, 1, 235.5, -320 , 0 );
setMoveKey( spep_0-3 + 42, 1, 237.6, -320 , 0 );
setMoveKey( spep_0-3 + 44, 1, 239.5, -320 , 0 );
setMoveKey( spep_0-3 + 46, 1, 241.2, -320 , 0 );
setMoveKey( spep_0-3 + 48, 1, 242.9, -320 , 0 );
setMoveKey( spep_0-3 + 50, 1, 244.4, -320 , 0 );
setMoveKey( spep_0-3 + 52, 1, 245.9, -320 , 0 );
setMoveKey( spep_0-3 + 54, 1, 326.5, -412.1 , 0 );
setMoveKey( spep_0-3 + 56, 1, 496.7, -606.5 , 0 );
setMoveKey( spep_0 + 56, 1, 966.4, -1142.9 , 0 );

setScaleKey( spep_0 + 0, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 1, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 2, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 3, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 4, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 5, 1, 2.4, 2.4 );
setScaleKey( spep_0-3 + 52, 1, 2.4, 2.4 );
setScaleKey( spep_0-3 + 54, 1, 2.97, 2.97 );
setScaleKey( spep_0-3 + 56, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 56, 1, 7.5, 7.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 56, 1, 0 );

--SE
playSe( spep_0 + 0, 8 );
setSeVolume( spep_0 + 0, 8, 56 );
playSe( spep_0 + 26, 1072 );
setSeVolume( spep_0 + 26, 1072, 0 );
setSeVolume( spep_0 + 43, 1072, 0 );
setSeVolume( spep_0 + 44, 1072, 12.5 );
setSeVolume( spep_0 + 45, 1072, 25 );
setSeVolume( spep_0 + 46, 1072, 37.5 );
setSeVolume( spep_0 + 47, 1072, 50 );
setSeVolume( spep_0 + 48, 1072, 62.5 );
setSeVolume( spep_0 + 49, 1072, 75 );
setSeVolume( spep_0 + 50, 1072, 87.5 );
setSeVolume( spep_0 + 51, 1072, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+56;

------------------------------------------------------
-- エフェクト溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 160, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 160, tame, 255 );

--SE
se_1044 = playSe( spep_1 + 9, 1044 );
setSeVolume( spep_1 + 9, 1044, 0 );
setSeVolume( spep_1 + 10, 1044, 2.72 );
setSeVolume( spep_1 + 11, 1044, 5.45 );
setSeVolume( spep_1 + 12, 1044, 8.17 );
setSeVolume( spep_1 + 13, 1044, 10.9 );
setSeVolume( spep_1 + 14, 1044, 13.62 );
setSeVolume( spep_1 + 15, 1044, 16.34 );
setSeVolume( spep_1 + 16, 1044, 19.07 );
setSeVolume( spep_1 + 17, 1044, 21.79 );
setSeVolume( spep_1 + 18, 1044, 24.52 );
setSeVolume( spep_1 + 19, 1044, 27.24 );
setSeVolume( spep_1 + 20, 1044, 29.97 );
setSeVolume( spep_1 + 21, 1044, 32.69 );
setSeVolume( spep_1 + 22, 1044, 35.41 );
setSeVolume( spep_1 + 23, 1044, 38.14 );
setSeVolume( spep_1 + 24, 1044, 40.86 );
setSeVolume( spep_1 + 25, 1044, 43.59 );
setSeVolume( spep_1 + 26, 1044, 46.31 );
setSeVolume( spep_1 + 27, 1044, 49.03 );
setSeVolume( spep_1 + 28, 1044, 51.76 );
setSeVolume( spep_1 + 29, 1044, 54.48 );
setSeVolume( spep_1 + 30, 1044, 57.21 );
setSeVolume( spep_1 + 31, 1044, 59.93 );
setSeVolume( spep_1 + 32, 1044, 62.66 );
setSeVolume( spep_1 + 33, 1044, 65.38 );
setSeVolume( spep_1 + 34, 1044, 68.1 );
setSeVolume( spep_1 + 35, 1044, 70.83 );
setSeVolume( spep_1 + 36, 1044, 73.55 );
setSeVolume( spep_1 + 37, 1044, 76.28 );
setSeVolume( spep_1 + 38, 1044, 79 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1044, 0 );
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
speff = entryEffect( spep_1+72  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1+72  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +84, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +84,  ctgogo,  80,  510);
setEffMoveKey(  spep_1 +156,  ctgogo,  80,  510);

setEffAlphaKey( spep_1 +84, ctgogo, 0 );
setEffAlphaKey( spep_1 + 85, ctgogo, 255 );
setEffAlphaKey( spep_1 + 86, ctgogo, 255 );
setEffAlphaKey( spep_1 + 150, ctgogo, 255 );
setEffAlphaKey( spep_1 + 152, ctgogo, 191 );
setEffAlphaKey( spep_1 + 154, ctgogo, 112 );
setEffAlphaKey( spep_1 + 156, ctgogo, 64 );

setEffRotateKey(  spep_1 +84,  ctgogo,  0);
setEffRotateKey(  spep_1 +156,  ctgogo,  0);

setEffScaleKey(  spep_1 +84,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +146,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +156,  ctgogo, 1.07, 1.07 );

--SE
se_0017 = playSe( spep_1 + 26, 17 );
setSeVolume( spep_1 + 26, 17, 79 );
se_1147 = playSe( spep_1 + 35, 1147 );
setSeVolume( spep_1 + 35, 1147, 56 );
playSe( spep_1 + 84, 1018 );
se_1148 = playSe( spep_1 + 86, 1148 );
setSeVolume( spep_1 + 86, 1148, 56 );


stopSe( spep_1 + 92, se_0017, 28 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 162, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 152, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+160;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

stopSe( spep_2 + 9, se_1044, 0 );
stopSe( spep_2 + 9, se_1147, 0 );
stopSe( spep_2 + 9, se_1148, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 78, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;
------------------------------------------------------
-- 攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack, 0, 0, 0 );
setEffMoveKey( spep_3 + 176, attack, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, attack, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack, 0 );
setEffRotateKey( spep_3 + 176, attack, 0 );
setEffAlphaKey( spep_3 + 0, attack, 255 );
setEffAlphaKey( spep_3 + 176, attack, 255 );
setEffAlphaKey( spep_3 + 177, attack, 0 );
setEffAlphaKey( spep_3 + 178, attack, 0 );

--SE
se_1116 = playSe( spep_3 + 2, 1116 );
se_11481 = playSe( spep_3 + 2, 1148 );
setSeVolume( spep_3 + 2, 1148, 35 );
playSe( spep_3 + 8, 1004 );
playSe( spep_3 + 8, 1182 );
setSeVolume( spep_3 + 8, 1182, 0 );
setSeVolume( spep_3 + 9, 1182, 6.67 );
setSeVolume( spep_3 + 10, 1182, 13.33 );
setSeVolume( spep_3 + 11, 1182, 20 );
setSeVolume( spep_3 + 12, 1182, 26.67 );
setSeVolume( spep_3 + 13, 1182, 33.33 );
setSeVolume( spep_3 + 14, 1182, 40 );
setSeVolume( spep_3 + 15, 1182, 46.67 );
setSeVolume( spep_3 + 16, 1182, 53.33 );
setSeVolume( spep_3 + 17, 1182, 60 );
setSeVolume( spep_3 + 18, 1182, 66.67 );
setSeVolume( spep_3 + 19, 1182, 73.33 );
setSeVolume( spep_3 + 20, 1182, 80 );
setSeVolume( spep_3 + 21, 1182, 86.67 );
setSeVolume( spep_3 + 22, 1182, 93.33 );
setSeVolume( spep_3 + 23, 1182, 100 );
playSe( spep_3 + 8, 9 );
setSeVolume( spep_3 + 8, 9, 0 );
setSeVolume( spep_3 + 9, 9, 4 );
setSeVolume( spep_3 + 10, 9, 8 );
setSeVolume( spep_3 + 11, 9, 12 );
setSeVolume( spep_3 + 12, 9, 16 );
setSeVolume( spep_3 + 13, 9, 20 );
setSeVolume( spep_3 + 14, 9, 24 );
setSeVolume( spep_3 + 15, 9, 28 );
setSeVolume( spep_3 + 16, 9, 32 );
setSeVolume( spep_3 + 17, 9, 36 );
setSeVolume( spep_3 + 18, 9, 40 );
setSeVolume( spep_3 + 19, 9, 44 );
setSeVolume( spep_3 + 20, 9, 48 );
setSeVolume( spep_3 + 21, 9, 52 );
setSeVolume( spep_3 + 22, 9, 56 );
setSeVolume( spep_3 + 23, 9, 60 );
setSeVolume( spep_3 + 24, 9, 64 );
setSeVolume( spep_3 + 25, 9, 68 );
setSeVolume( spep_3 + 26, 9, 72 );
setSeVolume( spep_3 + 27, 9, 76 );
setSeVolume( spep_3 + 28, 9, 80 );
setSeVolume( spep_3 + 29, 9, 84 );
setSeVolume( spep_3 + 30, 9, 88 );
setSeVolume( spep_3 + 31, 9, 92 );
setSeVolume( spep_3 + 32, 9, 96 );
setSeVolume( spep_3 + 33, 9, 100 );
se_1147 = playSe( spep_3 + 15, 1147 );
setSeVolume( spep_3 + 15, 1147, 35 );
playSe( spep_3 + 15, 1199 );
setSeVolume( spep_3 + 15, 1199, 79 );
playSe( spep_3 + 75, 1072 );
playSe( spep_3 + 88, 1183 );
se_11162 = playSe( spep_3 + 96, 1116 );
se_1167 = playSe( spep_3 + 96, 1167 );
setSeVolume( spep_3 + 96, 1167, 56 );
playSe( spep_3 + 123, 1027 );
playSe( spep_3 + 123, 1022 );
playSe( spep_3 + 123, 1177 );
setSeVolume( spep_3 + 123, 1177, 79 );
se_1227 = playSe( spep_3 + 127, 1227 );
setSeVolume( spep_3 + 127, 1227, 158 );
se_1215 = playSe( spep_3 + 143, 1215 );
setSeVolume( spep_3 + 143, 1215, 79 );
se_1240 = playSe( spep_3 + 143, 1240 );


stopSe( spep_3 + 32, se_1116, 15 );
stopSe( spep_3 + 136, se_11481, 0 );
stopSe( spep_3 + 136, se_1147, 0 );
stopSe( spep_3 + 120, se_11162, 8 );
stopSe( spep_3 + 116, se_1167, 18 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 176;

------------------------------------------------------
-- 敵がエフェクトに包まれる
-----------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 76, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 76, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 76, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 76, hit_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 76, 1, 0 );
changeAnime( spep_4 + 0, 1, 118 );

setBlendColor(spep_4 + 0,1,1,3.7,3,3.5,0.6);
setBlendColor(spep_4 + 78,1,1,3.7,3,3.5,0);

setMoveKey( spep_4 + 0, 1, 19.9, -129.8 , 0 );
setMoveKey( spep_4 + 2, 1, 22, -132.9 , 0 );
setMoveKey( spep_4 + 4, 1, 16.1, -130.1 , 0 );
setMoveKey( spep_4 + 6, 1, 24.2, -129.2 , 0 );
setMoveKey( spep_4 + 8, 1, 18.3, -130.3 , 0 );
setMoveKey( spep_4 + 10, 1, 20.4, -125.5 , 0 );
setMoveKey( spep_4 + 12, 1, 22.5, -128.6 , 0 );
setMoveKey( spep_4 + 14, 1, 16.6, -125.7 , 0 );
setMoveKey( spep_4 + 16, 1, 24.7, -124.8 , 0 );
setMoveKey( spep_4 + 18, 1, 18.8, -126 , 0 );
setMoveKey( spep_4 + 20, 1, 20.9, -121.1 , 0 );
setMoveKey( spep_4 + 22, 1, 23, -124.2 , 0 );
setMoveKey( spep_4 + 24, 1, 17.1, -121.3 , 0 );
setMoveKey( spep_4 + 26, 1, 25.2, -120.5 , 0 );
setMoveKey( spep_4 + 28, 1, 19.4, -121.6 , 0 );
setMoveKey( spep_4 + 30, 1, 21.5, -116.7 , 0 );
setMoveKey( spep_4 + 32, 1, 23.6, -119.8 , 0 );
setMoveKey( spep_4 + 34, 1, 17.7, -117 , 0 );
setMoveKey( spep_4 + 36, 1, 25.8, -116.1 , 0 );
setMoveKey( spep_4 + 38, 1, 19.9, -117.2 , 0 );
setMoveKey( spep_4 + 40, 1, 22, -112.4 , 0 );
setMoveKey( spep_4 + 42, 1, 24.1, -115.5 , 0 );
setMoveKey( spep_4 + 44, 1, 18.2, -112.6 , 0 );
setMoveKey( spep_4 + 46, 1, 26.3, -111.7 , 0 );
setMoveKey( spep_4 + 48, 1, 20.4, -112.9 , 0 );
setMoveKey( spep_4 + 50, 1, 22.5, -108 , 0 );
setMoveKey( spep_4 + 52, 1, 24.6, -111.1 , 0 );
setMoveKey( spep_4 + 54, 1, 18.7, -108.2 , 0 );
setMoveKey( spep_4 + 56, 1, 26.8, -107.4 , 0 );
setMoveKey( spep_4 + 58, 1, 20.9, -108.5 , 0 );
setMoveKey( spep_4 + 60, 1, 23, -103.6 , 0 );
setMoveKey( spep_4 + 62, 1, 25.1, -106.7 , 0 );
setMoveKey( spep_4 + 64, 1, 19.2, -103.9 , 0 );
setMoveKey( spep_4 + 66, 1, 27.3, -103 , 0 );
setMoveKey( spep_4 + 68, 1, 21.4, -104.1 , 0 );
setMoveKey( spep_4 + 70, 1, 23.5, -99.3 , 0 );
setMoveKey( spep_4 + 72, 1, 25.6, -102.4 , 0 );
setMoveKey( spep_4 + 74, 1, 19.7, -99.5 , 0 );
setMoveKey( spep_4 + 76, 1, 27.8, -98.6 , 0 );
--setMoveKey( spep_4 + 78, 1, 21.9, -99.8 , 0 );

setScaleKey( spep_4 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 2, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 4, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 6, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 8, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 10, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 12, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 14, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 16, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 18, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 20, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 22, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 24, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 26, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 30, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 32, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 34, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 36, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 38, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 40, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 42, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 44, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 46, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 48, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 50, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 52, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 54, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 56, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 58, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 60, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 62, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 64, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 66, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 68, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 70, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 72, 1, 1.54, 1.54 );
setScaleKey( spep_4 + 74, 1, 1.55, 1.55 );
setScaleKey( spep_4 + 76, 1, 1.55, 1.55 );
--setScaleKey( spep_4 + 78, 1, 1.56, 1.56 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 76, 1, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;

------------------------------------------------------
-- 爆発
-----------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_5 + 116, explosion, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, explosion, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, explosion, 0 );
setEffRotateKey( spep_5 + 116, explosion, 0 );
setEffAlphaKey( spep_5 + 0, explosion, 255 );
setEffAlphaKey( spep_5 + 116, explosion, 255 );


--SE
playSe( spep_5 + 17, 1023 );
setSeVolume( spep_5 + 17, 1023, 79 );
playSe( spep_5 + 18, 1160 );
playSe( spep_5 + 53, 1168 );
setSeVolume( spep_5 + 53, 1168, 0 );
setSeVolume( spep_5 + 80, 1168, 0 );
setSeVolume( spep_5 + 81, 1168, 1.49 );
setSeVolume( spep_5 + 82, 1168, 2.98 );
setSeVolume( spep_5 + 83, 1168, 4.47 );
setSeVolume( spep_5 + 84, 1168, 5.96 );
setSeVolume( spep_5 + 85, 1168, 7.45 );
setSeVolume( spep_5 + 86, 1168, 8.94 );
setSeVolume( spep_5 + 87, 1168, 10.43 );
setSeVolume( spep_5 + 88, 1168, 11.92 );
setSeVolume( spep_5 + 89, 1168, 13.42 );
setSeVolume( spep_5 + 90, 1168, 14.91 );
setSeVolume( spep_5 + 91, 1168, 16.4 );
setSeVolume( spep_5 + 92, 1168, 17.89 );
setSeVolume( spep_5 + 93, 1168, 19.38 );
setSeVolume( spep_5 + 94, 1168, 20.87 );
setSeVolume( spep_5 + 95, 1168, 22.36 );
setSeVolume( spep_5 + 96, 1168, 23.85 );
setSeVolume( spep_5 + 97, 1168, 25.34 );
setSeVolume( spep_5 + 98, 1168, 26.83 );
setSeVolume( spep_5 + 99, 1168, 28.32 );
setSeVolume( spep_5 + 100, 1168, 29.81 );
setSeVolume( spep_5 + 101, 1168, 31.3 );
setSeVolume( spep_5 + 102, 1168, 32.79 );
setSeVolume( spep_5 + 103, 1168, 34.28 );
setSeVolume( spep_5 + 104, 1168, 35.77 );
setSeVolume( spep_5 + 105, 1168, 37.26 );
setSeVolume( spep_5 + 106, 1168, 38.75 );
setSeVolume( spep_5 + 107, 1168, 40.25 );
setSeVolume( spep_5 + 108, 1168, 41.74 );
setSeVolume( spep_5 + 109, 1168, 43.23 );
setSeVolume( spep_5 + 110, 1168, 44.72 );
setSeVolume( spep_5 + 111, 1168, 46.21 );
setSeVolume( spep_5 + 112, 1168, 47.7 );
setSeVolume( spep_5 + 113, 1168, 49.19 );
setSeVolume( spep_5 + 114, 1168, 50.68 );
setSeVolume( spep_5 + 115, 1168, 52.17 );
setSeVolume( spep_5 + 116, 1168, 53.66 );
setSeVolume( spep_5 + 117, 1168, 55.15 );
setSeVolume( spep_5 + 118, 1168, 56.64 );
setSeVolume( spep_5 + 119, 1168, 58.13 );
setSeVolume( spep_5 + 120, 1168, 59.62 );
setSeVolume( spep_5 + 121, 1168, 61.11 );
setSeVolume( spep_5 + 122, 1168, 62.6 );
setSeVolume( spep_5 + 123, 1168, 64.09 );
setSeVolume( spep_5 + 124, 1168, 65.58 );
setSeVolume( spep_5 + 125, 1168, 67.08 );
setSeVolume( spep_5 + 126, 1168, 68.57 );
setSeVolume( spep_5 + 127, 1168, 70.06 );
setSeVolume( spep_5 + 128, 1168, 71.55 );
setSeVolume( spep_5 + 129, 1168, 73.04 );
setSeVolume( spep_5 + 130, 1168, 74.53 );
setSeVolume( spep_5 + 131, 1168, 76.02 );
setSeVolume( spep_5 + 132, 1168, 77.51 );
setSeVolume( spep_5 + 133, 1168, 79 );
playSe( spep_5 + 59, 1159 );
playSe( spep_5 + 59, 1226 );
setSeVolume( spep_5 + 59, 1226, 71 );



stopSe( spep_5 + 30, se_1227, 0 );
stopSe( spep_5 + 25, se_1215, 0 );
stopSe( spep_5 + 30, se_1240, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 116;
------------------------------------------------------
-- 爆発後
-----------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 240, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 240, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 240, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 240, finish, 255 );


--終わり
dealDamage( spep_6+70  );
endPhase( spep_6 + 230 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
taizi = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, taizi, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, taizi, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, taizi, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, taizi, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, taizi, 0 );
setEffRotateKey( spep_0 + 56, taizi, 0 );
setEffAlphaKey( spep_0 + 0, taizi, 255 );
setEffAlphaKey( spep_0 + 56, taizi, 255 );


--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0  + 56, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 125.8, -320.1 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 143.3, -320 , 0 );
setMoveKey( spep_0-3 + 4, 1, 155.2, -320 , 0 );
setMoveKey( spep_0-3 + 6, 1, 164.7, -320 , 0 );
setMoveKey( spep_0-3 + 8, 1, 172.8, -320 , 0 );
setMoveKey( spep_0-3 + 10, 1, 179.7, -320 , 0 );
setMoveKey( spep_0-3 + 12, 1, 185.9, -320 , 0 );
setMoveKey( spep_0-3 + 14, 1, 191.5, -320 , 0 );
setMoveKey( spep_0-3 + 16, 1, 196.6, -320 , 0 );
setMoveKey( spep_0-3 + 18, 1, 201.2, -320 , 0 );
setMoveKey( spep_0-3 + 20, 1, 205.5, -320 , 0 );
setMoveKey( spep_0-3 + 22, 1, 209.5, -320 , 0 );
setMoveKey( spep_0-3 + 24, 1, 213.2, -320 , 0 );
setMoveKey( spep_0-3 + 26, 1, 216.7, -320 , 0 );
setMoveKey( spep_0-3 + 28, 1, 219.9, -320 , 0 );
setMoveKey( spep_0-3 + 30, 1, 223, -320 , 0 );
setMoveKey( spep_0-3 + 32, 1, 225.8, -320 , 0 );
setMoveKey( spep_0-3 + 34, 1, 228.5, -320 , 0 );
setMoveKey( spep_0-3 + 36, 1, 231, -320 , 0 );
setMoveKey( spep_0-3 + 38, 1, 233.3, -320 , 0 );
setMoveKey( spep_0-3 + 40, 1, 235.5, -320 , 0 );
setMoveKey( spep_0-3 + 42, 1, 237.6, -320 , 0 );
setMoveKey( spep_0-3 + 44, 1, 239.5, -320 , 0 );
setMoveKey( spep_0-3 + 46, 1, 241.2, -320 , 0 );
setMoveKey( spep_0-3 + 48, 1, 242.9, -320 , 0 );
setMoveKey( spep_0-3 + 50, 1, 244.4, -320 , 0 );
setMoveKey( spep_0-3 + 52, 1, 245.9, -320 , 0 );
setMoveKey( spep_0-3 + 54, 1, 326.5, -412.1 , 0 );
setMoveKey( spep_0-3 + 56, 1, 496.7, -606.5 , 0 );
setMoveKey( spep_0 + 56, 1, 966.4, -1142.9 , 0 );

setScaleKey( spep_0 + 0, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 1, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 2, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 3, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 4, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 5, 1, 2.4, 2.4 );
setScaleKey( spep_0-3 + 52, 1, 2.4, 2.4 );
setScaleKey( spep_0-3 + 54, 1, 2.97, 2.97 );
setScaleKey( spep_0-3 + 56, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 56, 1, 7.5, 7.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 56, 1, 0 );

--SE
playSe( spep_0 + 0, 8 );
setSeVolume( spep_0 + 0, 8, 56 );
playSe( spep_0 + 26, 1072 );
setSeVolume( spep_0 + 26, 1072, 0 );
setSeVolume( spep_0 + 43, 1072, 0 );
setSeVolume( spep_0 + 44, 1072, 12.5 );
setSeVolume( spep_0 + 45, 1072, 25 );
setSeVolume( spep_0 + 46, 1072, 37.5 );
setSeVolume( spep_0 + 47, 1072, 50 );
setSeVolume( spep_0 + 48, 1072, 62.5 );
setSeVolume( spep_0 + 49, 1072, 75 );
setSeVolume( spep_0 + 50, 1072, 87.5 );
setSeVolume( spep_0 + 51, 1072, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+56;

------------------------------------------------------
-- エフェクト溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 160, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 160, tame, 255 );

--SE
se_1044 = playSe( spep_1 + 9, 1044 );
setSeVolume( spep_1 + 9, 1044, 0 );
setSeVolume( spep_1 + 10, 1044, 2.72 );
setSeVolume( spep_1 + 11, 1044, 5.45 );
setSeVolume( spep_1 + 12, 1044, 8.17 );
setSeVolume( spep_1 + 13, 1044, 10.9 );
setSeVolume( spep_1 + 14, 1044, 13.62 );
setSeVolume( spep_1 + 15, 1044, 16.34 );
setSeVolume( spep_1 + 16, 1044, 19.07 );
setSeVolume( spep_1 + 17, 1044, 21.79 );
setSeVolume( spep_1 + 18, 1044, 24.52 );
setSeVolume( spep_1 + 19, 1044, 27.24 );
setSeVolume( spep_1 + 20, 1044, 29.97 );
setSeVolume( spep_1 + 21, 1044, 32.69 );
setSeVolume( spep_1 + 22, 1044, 35.41 );
setSeVolume( spep_1 + 23, 1044, 38.14 );
setSeVolume( spep_1 + 24, 1044, 40.86 );
setSeVolume( spep_1 + 25, 1044, 43.59 );
setSeVolume( spep_1 + 26, 1044, 46.31 );
setSeVolume( spep_1 + 27, 1044, 49.03 );
setSeVolume( spep_1 + 28, 1044, 51.76 );
setSeVolume( spep_1 + 29, 1044, 54.48 );
setSeVolume( spep_1 + 30, 1044, 57.21 );
setSeVolume( spep_1 + 31, 1044, 59.93 );
setSeVolume( spep_1 + 32, 1044, 62.66 );
setSeVolume( spep_1 + 33, 1044, 65.38 );
setSeVolume( spep_1 + 34, 1044, 68.1 );
setSeVolume( spep_1 + 35, 1044, 70.83 );
setSeVolume( spep_1 + 36, 1044, 73.55 );
setSeVolume( spep_1 + 37, 1044, 76.28 );
setSeVolume( spep_1 + 38, 1044, 79 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1044, 0 );
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
--speff = entryEffect( spep_1+72  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1+72  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +84, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +84,  ctgogo,  80,  510);
setEffMoveKey(  spep_1 +156,  ctgogo,  80,  510);

setEffAlphaKey( spep_1 +84, ctgogo, 0 );
setEffAlphaKey( spep_1 + 85, ctgogo, 255 );
setEffAlphaKey( spep_1 + 86, ctgogo, 255 );
setEffAlphaKey( spep_1 + 150, ctgogo, 255 );
setEffAlphaKey( spep_1 + 152, ctgogo, 191 );
setEffAlphaKey( spep_1 + 154, ctgogo, 112 );
setEffAlphaKey( spep_1 + 156, ctgogo, 64 );

setEffRotateKey(  spep_1 +84,  ctgogo,  0);
setEffRotateKey(  spep_1 +156,  ctgogo,  0);

setEffScaleKey(  spep_1 +84,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +146,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +156,  ctgogo, -1.07, 1.07 );

--SE
se_0017 = playSe( spep_1 + 26, 17 );
setSeVolume( spep_1 + 26, 17, 79 );
se_1147 = playSe( spep_1 + 35, 1147 );
setSeVolume( spep_1 + 35, 1147, 56 );
playSe( spep_1 + 84, 1018 );
se_1148 = playSe( spep_1 + 86, 1148 );
setSeVolume( spep_1 + 86, 1148, 56 );


stopSe( spep_1 + 92, se_0017, 28 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 162, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 152, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+160;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

stopSe( spep_2 + 9, se_1044, 0 );
stopSe( spep_2 + 9, se_1147, 0 );
stopSe( spep_2 + 9, se_1148, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 78, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;
------------------------------------------------------
-- 攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack, 0, 0, 0 );
setEffMoveKey( spep_3 + 176, attack, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, attack, -1.0, 1.0 );
setEffScaleKey( spep_3 + 176, attack, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack, 0 );
setEffRotateKey( spep_3 + 176, attack, 0 );
setEffAlphaKey( spep_3 + 0, attack, 255 );
setEffAlphaKey( spep_3 + 176, attack, 255 );
setEffAlphaKey( spep_3 + 177, attack, 0 );
setEffAlphaKey( spep_3 + 178, attack, 0 );

--SE
se_1116 = playSe( spep_3 + 2, 1116 );
se_11481 = playSe( spep_3 + 2, 1148 );
setSeVolume( spep_3 + 2, 1148, 35 );
playSe( spep_3 + 8, 1004 );
playSe( spep_3 + 8, 1182 );
setSeVolume( spep_3 + 8, 1182, 0 );
setSeVolume( spep_3 + 9, 1182, 6.67 );
setSeVolume( spep_3 + 10, 1182, 13.33 );
setSeVolume( spep_3 + 11, 1182, 20 );
setSeVolume( spep_3 + 12, 1182, 26.67 );
setSeVolume( spep_3 + 13, 1182, 33.33 );
setSeVolume( spep_3 + 14, 1182, 40 );
setSeVolume( spep_3 + 15, 1182, 46.67 );
setSeVolume( spep_3 + 16, 1182, 53.33 );
setSeVolume( spep_3 + 17, 1182, 60 );
setSeVolume( spep_3 + 18, 1182, 66.67 );
setSeVolume( spep_3 + 19, 1182, 73.33 );
setSeVolume( spep_3 + 20, 1182, 80 );
setSeVolume( spep_3 + 21, 1182, 86.67 );
setSeVolume( spep_3 + 22, 1182, 93.33 );
setSeVolume( spep_3 + 23, 1182, 100 );
playSe( spep_3 + 8, 9 );
setSeVolume( spep_3 + 8, 9, 0 );
setSeVolume( spep_3 + 9, 9, 4 );
setSeVolume( spep_3 + 10, 9, 8 );
setSeVolume( spep_3 + 11, 9, 12 );
setSeVolume( spep_3 + 12, 9, 16 );
setSeVolume( spep_3 + 13, 9, 20 );
setSeVolume( spep_3 + 14, 9, 24 );
setSeVolume( spep_3 + 15, 9, 28 );
setSeVolume( spep_3 + 16, 9, 32 );
setSeVolume( spep_3 + 17, 9, 36 );
setSeVolume( spep_3 + 18, 9, 40 );
setSeVolume( spep_3 + 19, 9, 44 );
setSeVolume( spep_3 + 20, 9, 48 );
setSeVolume( spep_3 + 21, 9, 52 );
setSeVolume( spep_3 + 22, 9, 56 );
setSeVolume( spep_3 + 23, 9, 60 );
setSeVolume( spep_3 + 24, 9, 64 );
setSeVolume( spep_3 + 25, 9, 68 );
setSeVolume( spep_3 + 26, 9, 72 );
setSeVolume( spep_3 + 27, 9, 76 );
setSeVolume( spep_3 + 28, 9, 80 );
setSeVolume( spep_3 + 29, 9, 84 );
setSeVolume( spep_3 + 30, 9, 88 );
setSeVolume( spep_3 + 31, 9, 92 );
setSeVolume( spep_3 + 32, 9, 96 );
setSeVolume( spep_3 + 33, 9, 100 );
se_1147 = playSe( spep_3 + 15, 1147 );
setSeVolume( spep_3 + 15, 1147, 35 );
playSe( spep_3 + 15, 1199 );
setSeVolume( spep_3 + 15, 1199, 79 );
playSe( spep_3 + 75, 1072 );
playSe( spep_3 + 88, 1183 );
se_11162 = playSe( spep_3 + 96, 1116 );
se_1167 = playSe( spep_3 + 96, 1167 );
setSeVolume( spep_3 + 96, 1167, 56 );
playSe( spep_3 + 123, 1027 );
playSe( spep_3 + 123, 1022 );
playSe( spep_3 + 123, 1177 );
setSeVolume( spep_3 + 123, 1177, 79 );
se_1227 = playSe( spep_3 + 127, 1227 );
setSeVolume( spep_3 + 127, 1227, 158 );
se_1215 = playSe( spep_3 + 143, 1215 );
setSeVolume( spep_3 + 143, 1215, 79 );
se_1240 = playSe( spep_3 + 143, 1240 );


stopSe( spep_3 + 32, se_1116, 15 );
stopSe( spep_3 + 136, se_11481, 0 );
stopSe( spep_3 + 136, se_1147, 0 );
stopSe( spep_3 + 120, se_11162, 8 );
stopSe( spep_3 + 116, se_1167, 18 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 176;

------------------------------------------------------
-- 敵がエフェクトに包まれる
-----------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, hit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f, 0 );
setEffRotateKey( spep_4 + 76, hit_f, 0 );
setEffAlphaKey( spep_4 + 0, hit_f, 255 );
setEffAlphaKey( spep_4 + 76, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, hit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 76, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 76, hit_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 76, 1, 0 );
changeAnime( spep_4 + 0, 1, 18 );

setBlendColor(spep_4 + 0,1,1,3.7,3,3.5,0.6);
setBlendColor(spep_4 + 78,1,1,3.7,3,3.5,0);

setMoveKey( spep_4 + 0, 1, -19.9, -129.8 , 0 );
setMoveKey( spep_4 + 2, 1, -22, -132.9 , 0 );
setMoveKey( spep_4 + 4, 1, -16.1, -130.1 , 0 );
setMoveKey( spep_4 + 6, 1, -24.2, -129.2 , 0 );
setMoveKey( spep_4 + 8, 1, -18.3, -130.3 , 0 );
setMoveKey( spep_4 + 10, 1, -20.4, -125.5 , 0 );
setMoveKey( spep_4 + 12, 1, -22.5, -128.6 , 0 );
setMoveKey( spep_4 + 14, 1, -16.6, -125.7 , 0 );
setMoveKey( spep_4 + 16, 1, -24.7, -124.8 , 0 );
setMoveKey( spep_4 + 18, 1, -18.8, -126 , 0 );
setMoveKey( spep_4 + 20, 1, -20.9, -121.1 , 0 );
setMoveKey( spep_4 + 22, 1, -23, -124.2 , 0 );
setMoveKey( spep_4 + 24, 1, -17.1, -121.3 , 0 );
setMoveKey( spep_4 + 26, 1, -25.2, -120.5 , 0 );
setMoveKey( spep_4 + 28, 1, -19.4, -121.6 , 0 );
setMoveKey( spep_4 + 30, 1, -21.5, -116.7 , 0 );
setMoveKey( spep_4 + 32, 1, -23.6, -119.8 , 0 );
setMoveKey( spep_4 + 34, 1, -17.7, -117 , 0 );
setMoveKey( spep_4 + 36, 1, -25.8, -116.1 , 0 );
setMoveKey( spep_4 + 38, 1, -19.9, -117.2 , 0 );
setMoveKey( spep_4 + 40, 1, -22, -112.4 , 0 );
setMoveKey( spep_4 + 42, 1, -24.1, -115.5 , 0 );
setMoveKey( spep_4 + 44, 1, -18.2, -112.6 , 0 );
setMoveKey( spep_4 + 46, 1, -26.3, -111.7 , 0 );
setMoveKey( spep_4 + 48, 1, -20.4, -112.9 , 0 );
setMoveKey( spep_4 + 50, 1, -22.5, -108 , 0 );
setMoveKey( spep_4 + 52, 1, -24.6, -111.1 , 0 );
setMoveKey( spep_4 + 54, 1, -18.7, -108.2 , 0 );
setMoveKey( spep_4 + 56, 1, -26.8, -107.4 , 0 );
setMoveKey( spep_4 + 58, 1, -20.9, -108.5 , 0 );
setMoveKey( spep_4 + 60, 1, -23, -103.6 , 0 );
setMoveKey( spep_4 + 62, 1, -25.1, -106.7 , 0 );
setMoveKey( spep_4 + 64, 1, -19.2, -103.9 , 0 );
setMoveKey( spep_4 + 66, 1, -27.3, -103 , 0 );
setMoveKey( spep_4 + 68, 1, -21.4, -104.1 , 0 );
setMoveKey( spep_4 + 70, 1, -23.5, -99.3 , 0 );
setMoveKey( spep_4 + 72, 1, -25.6, -102.4 , 0 );
setMoveKey( spep_4 + 74, 1, -19.7, -99.5 , 0 );
setMoveKey( spep_4 + 76, 1, -27.8, -98.6 , 0 );
--setMoveKey( spep_4 + 78, 1, 21.9, -99.8 , 0 );

setScaleKey( spep_4 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 2, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 4, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 6, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 8, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 10, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 12, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 14, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 16, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 18, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 20, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 22, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 24, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 26, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 30, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 32, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 34, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 36, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 38, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 40, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 42, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 44, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 46, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 48, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 50, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 52, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 54, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 56, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 58, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 60, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 62, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 64, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 66, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 68, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 70, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 72, 1, 1.54, 1.54 );
setScaleKey( spep_4 + 74, 1, 1.55, 1.55 );
setScaleKey( spep_4 + 76, 1, 1.55, 1.55 );
--setScaleKey( spep_4 + 78, 1, 1.56, 1.56 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 76, 1, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;

------------------------------------------------------
-- 爆発
-----------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_5 + 116, explosion, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, explosion, -1.0, 1.0 );
setEffScaleKey( spep_5 + 116, explosion, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, explosion, 0 );
setEffRotateKey( spep_5 + 116, explosion, 0 );
setEffAlphaKey( spep_5 + 0, explosion, 255 );
setEffAlphaKey( spep_5 + 116, explosion, 255 );


--SE
playSe( spep_5 + 17, 1023 );
setSeVolume( spep_5 + 17, 1023, 79 );
playSe( spep_5 + 18, 1160 );
playSe( spep_5 + 53, 1168 );
setSeVolume( spep_5 + 53, 1168, 0 );
setSeVolume( spep_5 + 80, 1168, 0 );
setSeVolume( spep_5 + 81, 1168, 1.49 );
setSeVolume( spep_5 + 82, 1168, 2.98 );
setSeVolume( spep_5 + 83, 1168, 4.47 );
setSeVolume( spep_5 + 84, 1168, 5.96 );
setSeVolume( spep_5 + 85, 1168, 7.45 );
setSeVolume( spep_5 + 86, 1168, 8.94 );
setSeVolume( spep_5 + 87, 1168, 10.43 );
setSeVolume( spep_5 + 88, 1168, 11.92 );
setSeVolume( spep_5 + 89, 1168, 13.42 );
setSeVolume( spep_5 + 90, 1168, 14.91 );
setSeVolume( spep_5 + 91, 1168, 16.4 );
setSeVolume( spep_5 + 92, 1168, 17.89 );
setSeVolume( spep_5 + 93, 1168, 19.38 );
setSeVolume( spep_5 + 94, 1168, 20.87 );
setSeVolume( spep_5 + 95, 1168, 22.36 );
setSeVolume( spep_5 + 96, 1168, 23.85 );
setSeVolume( spep_5 + 97, 1168, 25.34 );
setSeVolume( spep_5 + 98, 1168, 26.83 );
setSeVolume( spep_5 + 99, 1168, 28.32 );
setSeVolume( spep_5 + 100, 1168, 29.81 );
setSeVolume( spep_5 + 101, 1168, 31.3 );
setSeVolume( spep_5 + 102, 1168, 32.79 );
setSeVolume( spep_5 + 103, 1168, 34.28 );
setSeVolume( spep_5 + 104, 1168, 35.77 );
setSeVolume( spep_5 + 105, 1168, 37.26 );
setSeVolume( spep_5 + 106, 1168, 38.75 );
setSeVolume( spep_5 + 107, 1168, 40.25 );
setSeVolume( spep_5 + 108, 1168, 41.74 );
setSeVolume( spep_5 + 109, 1168, 43.23 );
setSeVolume( spep_5 + 110, 1168, 44.72 );
setSeVolume( spep_5 + 111, 1168, 46.21 );
setSeVolume( spep_5 + 112, 1168, 47.7 );
setSeVolume( spep_5 + 113, 1168, 49.19 );
setSeVolume( spep_5 + 114, 1168, 50.68 );
setSeVolume( spep_5 + 115, 1168, 52.17 );
setSeVolume( spep_5 + 116, 1168, 53.66 );
setSeVolume( spep_5 + 117, 1168, 55.15 );
setSeVolume( spep_5 + 118, 1168, 56.64 );
setSeVolume( spep_5 + 119, 1168, 58.13 );
setSeVolume( spep_5 + 120, 1168, 59.62 );
setSeVolume( spep_5 + 121, 1168, 61.11 );
setSeVolume( spep_5 + 122, 1168, 62.6 );
setSeVolume( spep_5 + 123, 1168, 64.09 );
setSeVolume( spep_5 + 124, 1168, 65.58 );
setSeVolume( spep_5 + 125, 1168, 67.08 );
setSeVolume( spep_5 + 126, 1168, 68.57 );
setSeVolume( spep_5 + 127, 1168, 70.06 );
setSeVolume( spep_5 + 128, 1168, 71.55 );
setSeVolume( spep_5 + 129, 1168, 73.04 );
setSeVolume( spep_5 + 130, 1168, 74.53 );
setSeVolume( spep_5 + 131, 1168, 76.02 );
setSeVolume( spep_5 + 132, 1168, 77.51 );
setSeVolume( spep_5 + 133, 1168, 79 );
playSe( spep_5 + 59, 1159 );
playSe( spep_5 + 59, 1226 );
setSeVolume( spep_5 + 59, 1226, 71 );



stopSe( spep_5 + 30, se_1227, 0 );
stopSe( spep_5 + 25, se_1215, 0 );
stopSe( spep_5 + 30, se_1240, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 116;
------------------------------------------------------
-- 爆発後
-----------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 240, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_6 + 240, finish, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 240, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 240, finish, 255 );


--終わり
dealDamage( spep_6+70  );
endPhase( spep_6 + 230 );

end
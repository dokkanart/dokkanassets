--1019790:孫悟飯(少年期)_爆砕気弾
--sp_effect_a2_00134

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
SP_01=	155486	;--	気打め→カットIN
SP_02=	155487	;--	敵に向かって蹴り
SP_03=	155488	;--	敵に向かって蹴り
SP_04=	155489	;--	構えて気弾を溜める
SP_05=	155490	;--	気弾を投げる
SP_06=	155491	;--	気弾が敵に迫る
SP_07=	155492	;--	気弾が敵に迫る
SP_08=	155493	;--	爆発

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
-- 気打め→カットIN
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 206, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 206, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 206, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 206, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 8,  906, 98, 0x100, -1, 0, 0, -1.5 );
setEffShake( spep_0-3+8 + 0, shuchusen1, 98, 20 );
setEffMoveKey( spep_0-3 + 8, shuchusen1, 0, -1.5 , 0 );
setEffMoveKey( spep_0-3 + 106, shuchusen1, 0, -1.5 , 0 );

setEffScaleKey( spep_0-3 + 8, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_0-3 + 106, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_0-3 + 8, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 106, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 8, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 106, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+10  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+10  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +22, 190006, 72, 0x102, -1, 0, 100 +120, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +22,  ctgogo,  100 +120,  510);
setEffMoveKey(  spep_0 +94,  ctgogo,  100 +120,  510);

setEffAlphaKey( spep_0 +22, ctgogo, 0 );
setEffAlphaKey( spep_0 + 23, ctgogo, 255 );
setEffAlphaKey( spep_0 + 24, ctgogo, 255 );
setEffAlphaKey( spep_0 + 88, ctgogo, 255 );
setEffAlphaKey( spep_0 + 90, ctgogo, 191 );
setEffAlphaKey( spep_0 + 92, ctgogo, 112 );
setEffAlphaKey( spep_0 + 94, ctgogo, 64 );

setEffRotateKey(  spep_0 +22,  ctgogo,  0);
setEffRotateKey(  spep_0 +94,  ctgogo,  0);

setEffScaleKey(  spep_0 +22,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +82,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +94,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 10, 1035 );
playSe( spep_0 + 22, 1018 );
se_0044 = playSe( spep_0 + 102, 44 );
setSeVolume( spep_0 + 102, 44, 71 );
se_1116 = playSe( spep_0 + 134, 1116 );
se_1109 = playSe( spep_0 + 134, 1109 );
SE0=playSe( spep_0 + 137, 1004 );


stopSe( spep_0 + 127, se_0044, 9 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 210, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 +150; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1116, 0 );
    stopSe( SP_dodge - 12, se_1109, 0 );

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
--SE
playSe( spep_0 + 165, 1072 );
setSeVolume( spep_0 + 165, 1072, 81 );
playSe( spep_0 + 169, 1003 );

stopSe( spep_0 + 194, se_1116, 39 );
stopSe( spep_0 + 142, se_1109, 15 );

-- ** 次の準備 ** --
spep_1=spep_0 + 206;
------------------------------------------------------
-- 敵に向かって蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 60, kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 60, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 60, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 60, kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 60, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 60, kick_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 52, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 12, 1, 108 );

setMoveKey( spep_1 + 0, 1, 59.3, -109.9 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 59.3, -109.8 , 0 );
setMoveKey( spep_1-3 + 11, 1, 59.3, -109.8 , 0 );
setMoveKey( spep_1-3 + 12, 1, 56.4, -74.9 , 0 );
setMoveKey( spep_1-3 + 14, 1, 100, -51.7 , 0 );
setMoveKey( spep_1-3 + 16, 1, 95.5, -100.3 , 0 );
setMoveKey( spep_1-3 + 18, 1, 156.1, -101.8 , 0 );
setMoveKey( spep_1-3 + 20, 1, 303.8, -184.9 , 0 );
setMoveKey( spep_1-3 + 22, 1, 503.2, -308.6 , 0 );
setMoveKey( spep_1-3 + 24, 1, 679.2, -407.4 , 0 );
setMoveKey( spep_1-3 + 26, 1, 850, -510.5 , 0 );
setMoveKey( spep_1-3 + 28, 1, 967.7, -582.8 , 0 );
setMoveKey( spep_1-3 + 30, 1, 1019.5, -605.1 , 0 );
setMoveKey( spep_1-3 + 32, 1, 1057.2, -619.2 , 0 );
setMoveKey( spep_1-3 + 34, 1, 1077.4, -633.6 , 0 );
setMoveKey( spep_1-3 + 36, 1, 1091.9, -644.7 , 0 );
setMoveKey( spep_1-3 + 38, 1, 1109.7, -655.9 , 0 );
setMoveKey( spep_1-3 + 40, 1, 1124.9, -665.7 , 0 );
setMoveKey( spep_1-3 + 42, 1, 1134.7, -669.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 1143.6, -672.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, 1154.1, -678.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, 1164.3, -684.9 , 0 );
setMoveKey( spep_1-3 + 50, 1, 1174.6, -691.4 , 0 );
setMoveKey( spep_1-3 + 52, 1, 1185.3, -698 , 0 );

setScaleKey( spep_1 + 0, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 14, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 16, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 18, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 20, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 24, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 26, 1, 1.96, 1.96 );
setScaleKey( spep_1-3 + 32, 1, 1.96, 1.96 );
setScaleKey( spep_1-3 + 34, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 40, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 42, 1, 1.98, 1.98 );
setScaleKey( spep_1-3 + 48, 1, 1.98, 1.98 );
setScaleKey( spep_1-3 + 50, 1, 1.99, 1.99 );
setScaleKey( spep_1-3 + 52, 1, 1.99, 1.99 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 11, 1, 0 );
setRotateKey( spep_1-3 + 12, 1, 33 );
setRotateKey( spep_1-3 + 52, 1, 33 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 18,  10020, 20, 0x100, -1, 0, 61.4, 184.6 );
setEffShake( spep_1-3 + 18, ctbaki, 20, 10 );
setEffMoveKey( spep_1-3 + 18, ctbaki, 61.4, 184.6 , 0 );
setEffMoveKey( spep_1-3 + 20, ctbaki, 181.2, 220.4 , 0 );
setEffMoveKey( spep_1-3 + 22, ctbaki, 100.7, 204.2 , 0 );
setEffMoveKey( spep_1-3 + 24, ctbaki, 137.9, 200.4 , 0 );
setEffMoveKey( spep_1-3 + 26, ctbaki, 85.1, 164 , 0 );
setEffMoveKey( spep_1-3 + 28, ctbaki, 127.7, 190.7 , 0 );
setEffMoveKey( spep_1-3 + 30, ctbaki, 121.9, 202.6 , 0 );
setEffMoveKey( spep_1-3 + 32, ctbaki, 123.8, 201.4 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbaki, 123.6, 200.1 , 0 );
setEffMoveKey( spep_1-3 + 36, ctbaki, 123.3, 198.9 , 0 );
setEffMoveKey( spep_1-3 + 38, ctbaki, 117.2, 205.4 , 0 );

setEffScaleKey( spep_1-3 + 18, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_1-3 + 20, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_1-3 + 22, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_1-3 + 24, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 26, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 28, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_1-3 + 30, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 32, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1-3 + 34, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_1-3 + 36, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_1-3 + 38, ctbaki, 1.84, 1.84 );

setEffRotateKey( spep_1-3 + 18, ctbaki, 29.9 );
setEffRotateKey( spep_1-3 + 20, ctbaki, -4.7 );
setEffRotateKey( spep_1-3 + 22, ctbaki, 10.3 );
setEffRotateKey( spep_1-3 + 24, ctbaki, 5 );
setEffRotateKey( spep_1-3 + 26, ctbaki, 15.2 );
setEffRotateKey( spep_1-3 + 28, ctbaki, 7.6 );
setEffRotateKey( spep_1-3 + 36, ctbaki, 7.6 );
setEffRotateKey( spep_1-3 + 38, ctbaki, 7.5 );

setEffAlphaKey( spep_1-3 + 18, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 30, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 32, ctbaki, 198 );
setEffAlphaKey( spep_1-3 + 34, ctbaki, 142 );
setEffAlphaKey( spep_1-3 + 36, ctbaki, 85 );
setEffAlphaKey( spep_1-3 + 38, ctbaki, 0 );

--SE
playSe( spep_1 + 10, 1189 );
playSe( spep_1 + 15, 1010 );
playSe( spep_1 + 17, 1110 );
playSe( spep_1 + 19, 1001 );

--白フェード
entryFade( spep_1+52 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 64, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2=spep_1 + 60;
------------------------------------------------------
-- 構えて気弾を溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, tame2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, tame2, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame2, 0 );
setEffRotateKey( spep_2 + 90, tame2, 0 );
setEffAlphaKey( spep_2 + 0, tame2, 255 );
setEffAlphaKey( spep_2 + 90, tame2, 255 );

--SE
se_1262 = playSe( spep_2 + 10, 1262 );
setSeVolume( spep_2 + 10, 1262, 126 );
se_0017 = playSe( spep_2 + 10, 17 );
setSeVolume( spep_2 + 10, 17, 79 );

--白フェード
entryFade( spep_2+82 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 94, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3=spep_2 + 90;
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

stopSe( spep_3 + 2, se_1262, 0 );
stopSe( spep_3 + 2, se_0017, 0 );

--白フェード
entryFade( spep_3 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 気弾を投げる
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, tame2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, tame2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame2, 0 );
setEffRotateKey( spep_4 + 46, tame2, 0 );
setEffAlphaKey( spep_4 + 0, tame2, 255 );
setEffAlphaKey( spep_4 + 46, tame2, 255 );
setEffAlphaKey( spep_4 + 47, tame2, 0 );
setEffAlphaKey( spep_4 + 48, tame2, 0 );

--SE
playSe( spep_4 + 0, 1027 );
se_1236 = playSe( spep_4 + 1, 1236 );
setSeVolume( spep_4 + 1, 1236, 158 );
playSe( spep_4 + 2, 1021 );
setSeVolume( spep_4 + 2, 1021, 75 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 46;
------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 36, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 36, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 36, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 36, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 36, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 36, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 36, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 36, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 36, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, -0.3, 39.5 , 0 );
setMoveKey( spep_5 + 2, 1, 18.4, 28.2 , 0 );
setMoveKey( spep_5 + 4, 1, 45.4, 25.7 , 0 );
setMoveKey( spep_5 + 6, 1, 66.1, 12.5 , 0 );
setMoveKey( spep_5 + 8, 1, 81, 3.7 , 0 );
setMoveKey( spep_5 + 10, 1, 94.4, 7 , 0 );
setMoveKey( spep_5 + 12, 1, 114.1, 6.9 , 0 );
setMoveKey( spep_5 + 14, 1, 117.4, 11 , 0 );
setMoveKey( spep_5 + 16, 1, 131.3, 3.8 , 0 );
setMoveKey( spep_5 + 18, 1, 140.6, -5 , 0 );
setMoveKey( spep_5 + 20, 1, 149.2, -5.9 , 0 );
setMoveKey( spep_5 + 22, 1, 159, -8.5 , 0 );
setMoveKey( spep_5 + 24, 1, 168.4, -3.3 , 0 );
setMoveKey( spep_5 + 26, 1, 175.4, -1.7 , 0 );
setMoveKey( spep_5 + 28, 1, 185.9, -3.9 , 0 );
setMoveKey( spep_5 + 30, 1, 186.4, -4.1 , 0 );
setMoveKey( spep_5 + 32, 1, 194.3, -11.8 , 0 );
setMoveKey( spep_5 + 34, 1, 204, -17.6 , 0 );
setMoveKey( spep_5 + 36, 1, 201.9, -19.4 , 0 );
--setMoveKey( spep_5 + 38, 1, 211.2, -28.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 2, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 4, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 6, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 8, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 10, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 14, 1, 1.24, 1.24 );
setScaleKey( spep_5 + 16, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_5 + 20, 1, 1.21, 1.21 );
setScaleKey( spep_5 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 24, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 26, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_5 + 30, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 32, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 34, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 36, 1, 1.15, 1.15 );
--setScaleKey( spep_5 + 38, 1, 1.15, 1.15 );

setRotateKey( spep_5 + 0, 1, 23.8 );
setRotateKey( spep_5 + 36, 1, 23.8 );

--SE
playSe( spep_5 + 9, 1021 );
se_1144 = playSe( spep_5 + 17, 1144 );
setSeVolume( spep_5 + 17, 1144, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 36;
--------------------------------------
--ギャン
--------------------------------------
--エフェクトの再生
gyan = entryEffectLife(  spep_6,  190003,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffMoveKey( spep_6 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, gyan, 0, 0, 0 );
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_6+60,  gyan,  1.0,  1.0);
setEffRotateKey( spep_6, gyan, 0 );
setEffRotateKey( spep_6 + 60, gyan, 0 );
setEffAlphaKey(  spep_6,  gyan,  255);
setEffAlphaKey(  spep_6+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 300);    -- ギャン
setEffShake( spep_6, ctgayn, 60, 10);
setEffMoveKey( spep_6 + 0, ctgayn, 0, 300, 0 );
setEffMoveKey( spep_6 + 60, ctgayn, 0, 300, 0 );
setEffScaleKey( spep_6, ctgayn, 4.0, 4.0);
setEffScaleKey( spep_6+60, ctgayn, 4.5, 4.5);
setEffRotateKey( spep_6, ctgayn, 0 );
setEffRotateKey( spep_6 + 60, ctgayn, 0 );
setEffAlphaKey( spep_6, ctgayn, 255);
setEffAlphaKey( spep_6+60, ctgayn, 0);

--SE
playSe(spep_6,1023);

stopSe( spep_6 + 6, se_1236, 0 );

entryFade( spep_6+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7 = spep_6+60;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 180, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 180, finish, 255 );

--SE
setSeVolume( spep_7 + 8, 1144, 0 );
setSeVolume( spep_7 + 9, 1144, 15 );
setSeVolume( spep_7 + 10, 1144, 30 );
setSeVolume( spep_7 + 11, 1144, 45 );
setSeVolume( spep_7 + 12, 1144, 60 );

se_0033 = playSe( spep_7 + 3, 33 );
setSeVolume( spep_7 + 3, 33, 87 );
playSe( spep_7 + 44, 1023 );
playSe( spep_7 + 46, 1067 );

stopSe( spep_7 + 49, se_1144, 0 );
stopSe( spep_7 + 47, se_0033, 0 );

-- ダメージ表示
dealDamage(spep_7+30);
endPhase( spep_7 + 170 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気打め→カットIN
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 206, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 206, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 206, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 206, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 8,  906, 98, 0x100, -1, 0, 0, -1.5 );
setEffShake( spep_0-3+8 + 0, shuchusen1, 98, 20 );
setEffMoveKey( spep_0-3 + 8, shuchusen1, 0, -1.5 , 0 );
setEffMoveKey( spep_0-3 + 106, shuchusen1, 0, -1.5 , 0 );

setEffScaleKey( spep_0-3 + 8, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_0-3 + 106, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_0-3 + 8, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 106, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 8, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 106, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+10  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+10  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +22, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +22,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +94,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +22, ctgogo, 0 );
setEffAlphaKey( spep_0 + 23, ctgogo, 255 );
setEffAlphaKey( spep_0 + 24, ctgogo, 255 );
setEffAlphaKey( spep_0 + 88, ctgogo, 255 );
setEffAlphaKey( spep_0 + 90, ctgogo, 191 );
setEffAlphaKey( spep_0 + 92, ctgogo, 112 );
setEffAlphaKey( spep_0 + 94, ctgogo, 64 );

setEffRotateKey(  spep_0 +22,  ctgogo,  0);
setEffRotateKey(  spep_0 +94,  ctgogo,  0);

setEffScaleKey(  spep_0 +22,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +82,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +94,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 10, 1035 );
playSe( spep_0 + 22, 1018 );
se_0044 = playSe( spep_0 + 102, 44 );
setSeVolume( spep_0 + 102, 44, 71 );
se_1116 = playSe( spep_0 + 134, 1116 );
se_1109 = playSe( spep_0 + 134, 1109 );
SE0=playSe( spep_0 + 137, 1004 );


stopSe( spep_0 + 127, se_0044, 9 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 210, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 +150; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1116, 0 );
    stopSe( SP_dodge - 12, se_1109, 0 );

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
--SE
playSe( spep_0 + 165, 1072 );
setSeVolume( spep_0 + 165, 1072, 81 );
playSe( spep_0 + 169, 1003 );

stopSe( spep_0 + 194, se_1116, 39 );
stopSe( spep_0 + 142, se_1109, 15 );

-- ** 次の準備 ** --
spep_1=spep_0 + 206;
------------------------------------------------------
-- 敵に向かって蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 60, kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 60, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 60, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 60, kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 60, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 60, kick_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 52, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 12, 1, 108 );

setMoveKey( spep_1 + 0, 1, 59.3, -109.9 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 59.3, -109.8 , 0 );
setMoveKey( spep_1-3 + 11, 1, 59.3, -109.8 , 0 );
setMoveKey( spep_1-3 + 12, 1, 56.4, -74.9 , 0 );
setMoveKey( spep_1-3 + 14, 1, 100, -51.7 , 0 );
setMoveKey( spep_1-3 + 16, 1, 95.5, -100.3 , 0 );
setMoveKey( spep_1-3 + 18, 1, 156.1, -101.8 , 0 );
setMoveKey( spep_1-3 + 20, 1, 303.8, -184.9 , 0 );
setMoveKey( spep_1-3 + 22, 1, 503.2, -308.6 , 0 );
setMoveKey( spep_1-3 + 24, 1, 679.2, -407.4 , 0 );
setMoveKey( spep_1-3 + 26, 1, 850, -510.5 , 0 );
setMoveKey( spep_1-3 + 28, 1, 967.7, -582.8 , 0 );
setMoveKey( spep_1-3 + 30, 1, 1019.5, -605.1 , 0 );
setMoveKey( spep_1-3 + 32, 1, 1057.2, -619.2 , 0 );
setMoveKey( spep_1-3 + 34, 1, 1077.4, -633.6 , 0 );
setMoveKey( spep_1-3 + 36, 1, 1091.9, -644.7 , 0 );
setMoveKey( spep_1-3 + 38, 1, 1109.7, -655.9 , 0 );
setMoveKey( spep_1-3 + 40, 1, 1124.9, -665.7 , 0 );
setMoveKey( spep_1-3 + 42, 1, 1134.7, -669.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 1143.6, -672.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, 1154.1, -678.5 , 0 );
setMoveKey( spep_1-3 + 48, 1, 1164.3, -684.9 , 0 );
setMoveKey( spep_1-3 + 50, 1, 1174.6, -691.4 , 0 );
setMoveKey( spep_1-3 + 52, 1, 1185.3, -698 , 0 );

setScaleKey( spep_1 + 0, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 14, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 16, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 18, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 20, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 24, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 26, 1, 1.96, 1.96 );
setScaleKey( spep_1-3 + 32, 1, 1.96, 1.96 );
setScaleKey( spep_1-3 + 34, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 40, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 42, 1, 1.98, 1.98 );
setScaleKey( spep_1-3 + 48, 1, 1.98, 1.98 );
setScaleKey( spep_1-3 + 50, 1, 1.99, 1.99 );
setScaleKey( spep_1-3 + 52, 1, 1.99, 1.99 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 11, 1, 0 );
setRotateKey( spep_1-3 + 12, 1, 33 );
setRotateKey( spep_1-3 + 52, 1, 33 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 18,  10020, 20, 0x100, -1, 0, 61.4, 184.6 );
setEffShake( spep_1-3 + 18, ctbaki, 20, 10 );
setEffMoveKey( spep_1-3 + 18, ctbaki, 61.4, 184.6 , 0 );
setEffMoveKey( spep_1-3 + 20, ctbaki, 181.2, 220.4 , 0 );
setEffMoveKey( spep_1-3 + 22, ctbaki, 100.7, 204.2 , 0 );
setEffMoveKey( spep_1-3 + 24, ctbaki, 137.9, 200.4 , 0 );
setEffMoveKey( spep_1-3 + 26, ctbaki, 85.1, 164 , 0 );
setEffMoveKey( spep_1-3 + 28, ctbaki, 127.7, 190.7 , 0 );
setEffMoveKey( spep_1-3 + 30, ctbaki, 121.9, 202.6 , 0 );
setEffMoveKey( spep_1-3 + 32, ctbaki, 123.8, 201.4 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbaki, 123.6, 200.1 , 0 );
setEffMoveKey( spep_1-3 + 36, ctbaki, 123.3, 198.9 , 0 );
setEffMoveKey( spep_1-3 + 38, ctbaki, 117.2, 205.4 , 0 );

setEffScaleKey( spep_1-3 + 18, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_1-3 + 20, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_1-3 + 22, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_1-3 + 24, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 26, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 28, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_1-3 + 30, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 32, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1-3 + 34, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_1-3 + 36, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_1-3 + 38, ctbaki, 1.84, 1.84 );

setEffRotateKey( spep_1-3 + 18, ctbaki, 29.9 );
setEffRotateKey( spep_1-3 + 20, ctbaki, -4.7 );
setEffRotateKey( spep_1-3 + 22, ctbaki, 10.3 );
setEffRotateKey( spep_1-3 + 24, ctbaki, 5 );
setEffRotateKey( spep_1-3 + 26, ctbaki, 15.2 );
setEffRotateKey( spep_1-3 + 28, ctbaki, 7.6 );
setEffRotateKey( spep_1-3 + 36, ctbaki, 7.6 );
setEffRotateKey( spep_1-3 + 38, ctbaki, 7.5 );

setEffAlphaKey( spep_1-3 + 18, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 30, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 32, ctbaki, 198 );
setEffAlphaKey( spep_1-3 + 34, ctbaki, 142 );
setEffAlphaKey( spep_1-3 + 36, ctbaki, 85 );
setEffAlphaKey( spep_1-3 + 38, ctbaki, 0 );

--SE
playSe( spep_1 + 10, 1189 );
playSe( spep_1 + 15, 1010 );
playSe( spep_1 + 17, 1110 );
playSe( spep_1 + 19, 1001 );

--白フェード
entryFade( spep_1+52 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 64, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2=spep_1 + 60;
------------------------------------------------------
-- 構えて気弾を溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, tame2, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame2, -1.0, 1.0 );
setEffScaleKey( spep_2 + 90, tame2, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame2, 0 );
setEffRotateKey( spep_2 + 90, tame2, 0 );
setEffAlphaKey( spep_2 + 0, tame2, 255 );
setEffAlphaKey( spep_2 + 90, tame2, 255 );

--SE
se_1262 = playSe( spep_2 + 10, 1262 );
setSeVolume( spep_2 + 10, 1262, 126 );
se_0017 = playSe( spep_2 + 10, 17 );
setSeVolume( spep_2 + 10, 17, 79 );

--白フェード
entryFade( spep_2+82 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 94, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3=spep_2 + 90;
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

stopSe( spep_3 + 2, se_1262, 0 );
stopSe( spep_3 + 2, se_0017, 0 );

--白フェード
entryFade( spep_3 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 気弾を投げる
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame2, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, tame2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame2, -1.0, 1.0 );
setEffScaleKey( spep_4 + 46, tame2, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame2, 0 );
setEffRotateKey( spep_4 + 46, tame2, 0 );
setEffAlphaKey( spep_4 + 0, tame2, 255 );
setEffAlphaKey( spep_4 + 46, tame2, 255 );
setEffAlphaKey( spep_4 + 47, tame2, 0 );
setEffAlphaKey( spep_4 + 48, tame2, 0 );

--SE
playSe( spep_4 + 0, 1027 );
se_1236 = playSe( spep_4 + 1, 1236 );
setSeVolume( spep_4 + 1, 1236, 158 );
playSe( spep_4 + 2, 1021 );
setSeVolume( spep_4 + 2, 1021, 75 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 46;
------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 36, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 36, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 36, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 36, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 36, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 36, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 36, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 36, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 36, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, -0.3, 39.5 , 0 );
setMoveKey( spep_5 + 2, 1, 18.4, 28.2 , 0 );
setMoveKey( spep_5 + 4, 1, 45.4, 25.7 , 0 );
setMoveKey( spep_5 + 6, 1, 66.1, 12.5 , 0 );
setMoveKey( spep_5 + 8, 1, 81, 3.7 , 0 );
setMoveKey( spep_5 + 10, 1, 94.4, 7 , 0 );
setMoveKey( spep_5 + 12, 1, 114.1, 6.9 , 0 );
setMoveKey( spep_5 + 14, 1, 117.4, 11 , 0 );
setMoveKey( spep_5 + 16, 1, 131.3, 3.8 , 0 );
setMoveKey( spep_5 + 18, 1, 140.6, -5 , 0 );
setMoveKey( spep_5 + 20, 1, 149.2, -5.9 , 0 );
setMoveKey( spep_5 + 22, 1, 159, -8.5 , 0 );
setMoveKey( spep_5 + 24, 1, 168.4, -3.3 , 0 );
setMoveKey( spep_5 + 26, 1, 175.4, -1.7 , 0 );
setMoveKey( spep_5 + 28, 1, 185.9, -3.9 , 0 );
setMoveKey( spep_5 + 30, 1, 186.4, -4.1 , 0 );
setMoveKey( spep_5 + 32, 1, 194.3, -11.8 , 0 );
setMoveKey( spep_5 + 34, 1, 204, -17.6 , 0 );
setMoveKey( spep_5 + 36, 1, 201.9, -19.4 , 0 );
--setMoveKey( spep_5 + 38, 1, 211.2, -28.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 2, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 4, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 6, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 8, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 10, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 14, 1, 1.24, 1.24 );
setScaleKey( spep_5 + 16, 1, 1.23, 1.23 );
setScaleKey( spep_5 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_5 + 20, 1, 1.21, 1.21 );
setScaleKey( spep_5 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 24, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 26, 1, 1.19, 1.19 );
setScaleKey( spep_5 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_5 + 30, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 32, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 34, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 36, 1, 1.15, 1.15 );
--setScaleKey( spep_5 + 38, 1, 1.15, 1.15 );

setRotateKey( spep_5 + 0, 1, 23.8 );
setRotateKey( spep_5 + 36, 1, 23.8 );

--SE
playSe( spep_5 + 9, 1021 );
se_1144 = playSe( spep_5 + 17, 1144 );
setSeVolume( spep_5 + 17, 1144, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 36;
--------------------------------------
--ギャン
--------------------------------------
--エフェクトの再生
gyan = entryEffectLife(  spep_6,  190003,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffMoveKey( spep_6 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_6 + 60, gyan, 0, 0, 0 );
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_6+60,  gyan,  1.0,  1.0);
setEffRotateKey( spep_6, gyan, 0 );
setEffRotateKey( spep_6 + 60, gyan, 0 );
setEffAlphaKey(  spep_6,  gyan,  255);
setEffAlphaKey(  spep_6+60,  gyan,  255);


-- 書き文字エントリー --
ctgayn = entryEffectLife( spep_6, 10006, 60, 0x100, -1, 0, 0, 300);    -- ギャン
setEffShake( spep_6, ctgayn, 60, 10);
setEffMoveKey( spep_6 + 0, ctgayn, 0, 300, 0 );
setEffMoveKey( spep_6 + 60, ctgayn, 0, 300, 0 );
setEffScaleKey( spep_6, ctgayn, 4.0, 4.0);
setEffScaleKey( spep_6+60, ctgayn, 4.5, 4.5);
setEffRotateKey( spep_6, ctgayn, 0 );
setEffRotateKey( spep_6 + 60, ctgayn, 0 );
setEffAlphaKey( spep_6, ctgayn, 255);
setEffAlphaKey( spep_6+60, ctgayn, 0);

--SE
playSe(spep_6,1023);

stopSe( spep_6 + 6, se_1236, 0 );

entryFade( spep_6+48, 2,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_7 = spep_6+60;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 180, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 180, finish, 255 );

--SE
setSeVolume( spep_7 + 8, 1144, 0 );
setSeVolume( spep_7 + 9, 1144, 15 );
setSeVolume( spep_7 + 10, 1144, 30 );
setSeVolume( spep_7 + 11, 1144, 45 );
setSeVolume( spep_7 + 12, 1144, 60 );

se_0033 = playSe( spep_7 + 3, 33 );
setSeVolume( spep_7 + 3, 33, 87 );
playSe( spep_7 + 44, 1023 );
playSe( spep_7 + 46, 1067 );

stopSe( spep_7 + 49, se_1144, 0 );
stopSe( spep_7 + 47, se_0033, 0 );

-- ダメージ表示
dealDamage(spep_7+30);
endPhase( spep_7 + 170 );
end
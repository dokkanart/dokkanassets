--1020030:クリリン_100倍太陽拳
--sp_effect_b1_00112

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
SP_01=	155535	;--	太陽と重なる
SP_02=	155536	;--	太陽拳
SP_03=	155537	;--	格闘
SP_04=	155539	;--	格闘　背景

--エフェクト(てき)
SP_01x=	155535	;--	太陽と重なる	
SP_02x=	155536	;--	太陽拳	
SP_03x=	155538	;--	格闘	(敵)
SP_04x=	155539	;--	格闘　背景	

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
-- 太陽と重なる
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
san = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, san, 0, 0, 0 );
setEffMoveKey( spep_0 + 66, san, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, san, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, san, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, san, 0 );
setEffRotateKey( spep_0 + 66, san, 0 );
setEffAlphaKey( spep_0 + 0, san, 255 );
setEffAlphaKey( spep_0 + 66, san, 255 );

--SE
se_0017 = playSe( spep_0 + 0, 17 );
setSeVolume( spep_0 + 0, 17, 50 );
se_1263 = playSe( spep_0 + 0, 1263 );
SE0=playSe( spep_0 + 6, 44 );
setSeVolume( spep_0 + 6, 44, 56 );

stopSe( spep_0 + 31, se_0017, 57 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 70, 0,  0, 0, 0, 180 ); --くろ 背景

--次の準備
spep_1=spep_0+66;
------------------------------------------------------
-- 太陽拳
------------------------------------------------------
-- ** エフェクト等 ** --
attaku = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attaku, 0, 0, 0 );
setEffMoveKey( spep_1 + 116, attaku, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, attaku, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, attaku, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attaku, 0 );
setEffRotateKey( spep_1 + 116, attaku, 0 );
setEffAlphaKey( spep_1 + 0, attaku, 255 );
setEffAlphaKey( spep_1 + 116, attaku, 255 );
--SE
se_1264 = playSe( spep_1 + 22, 1264 );
setSeVolume( spep_1 + 22, 1264, 112 );
se_0013 = playSe( spep_1 + 24, 13 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_0017, 0 );
    stopSe( SP_dodge - 12, se_1263, 0 );
    stopSe( SP_dodge - 12, se_1264, 0 );
    stopSe( SP_dodge - 12, se_0013, 0 );
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

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 + 17,  906, 96, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 17, shuchusen3, 96, 25 );
setEffMoveKey(   spep_1 +  17, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 115, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_1 +  17, shuchusen3, 1.6, 1.6 );
setEffScaleKey(  spep_1 + 115, shuchusen3, 1.6, 1.6 );
setEffRotateKey( spep_1 +  17, shuchusen3, 0 );
setEffRotateKey( spep_1 + 115, shuchusen3, 0 );
setEffAlphaKey(  spep_1 +  17, shuchusen3, 255 );
setEffAlphaKey(  spep_1 + 105, shuchusen3, 255 );
setEffAlphaKey(  spep_1 + 115, shuchusen3, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1+18  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1+18  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +30, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +30,  ctgogo,  100,  510);
setEffMoveKey(  spep_1 +102,  ctgogo,  100,  510);

setEffAlphaKey( spep_1 +30, ctgogo, 0 );
setEffAlphaKey( spep_1 + 31, ctgogo, 255 );
setEffAlphaKey( spep_1 + 32, ctgogo, 255 );
setEffAlphaKey( spep_1 + 96, ctgogo, 255 );
setEffAlphaKey( spep_1 + 98, ctgogo, 191 );
setEffAlphaKey( spep_1 + 100, ctgogo, 112 );
setEffAlphaKey( spep_1 + 102, ctgogo, 64 );

setEffRotateKey(  spep_1 +30,  ctgogo,  0);
setEffRotateKey(  spep_1 +102,  ctgogo,  0);

setEffScaleKey(  spep_1 +30,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +92,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +102,  ctgogo, 1.07, 1.07 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 120, 0,  0, 0, 0, 180 ); --くろ 背景

--SE
playSe( spep_1 + 30, 1018 );
setSeVolume( spep_1 + 30, 1018, 79 );
se_1266 = playSe( spep_1 + 46, 1266 );
setSeVolume( spep_1 + 46, 1266, 0 );

stopSe( spep_1 + 15, se_1263, 40 );

--次の準備
spep_2=spep_1+116;
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
se_1265 = playSe( spep_2 + 14, 1265 );
setSeVolume( spep_2 + 14, 1265, 0 );

stopSe( spep_2 + 0, se_1264, 0 );
stopSe( spep_2 + 0, se_0013, 0 );

--白フェード
entryFade( spep_2 + 80, 6, 18, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 160, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 160, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 160, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 160, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 160, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 160, fighting_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 158, 1, 0 );

setBlendColor(spep_3 + 0,1,5,1,1,1,0.6);
setBlendColor(spep_3 + 158,1,5,1,1,1,0);

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 50, 1, 106 );
changeAnime( spep_3-3 + 100, 1, 108 );

setMoveKey( spep_3 + 0, 1, 2.4, -12 , 0 );
setMoveKey( spep_3 + 2, 1, 2.4, -11.9 , 0 );
setMoveKey( spep_3-3 + 49, 1, 2.4, -11.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, -44.3, -23.5 , 0 );
setMoveKey( spep_3-3 + 52, 1, -29.4, -14.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, -30.9, -15.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, -10.5, -13.4 , 0 );
setMoveKey( spep_3-3 + 58, 1, -11.8, 1.8 , 0 );
setMoveKey( spep_3-3 + 60, 1, -1.7, -1.1 , 0 );
setMoveKey( spep_3-3 + 62, 1, -2.7, 6.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, 3.7, 5.8 , 0 );
setMoveKey( spep_3-3 + 66, 1, 3.4, 11.9 , 0 );
setMoveKey( spep_3-3 + 68, 1, 8.3, 12.3 , 0 );
setMoveKey( spep_3-3 + 70, 1, 9.8, 15.5 , 0 );
setMoveKey( spep_3-3 + 72, 1, 11, 18.5 , 0 );
setMoveKey( spep_3-3 + 74, 1, 13.1, 19.5 , 0 );
setMoveKey( spep_3-3 + 76, 1, 15, 20.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 16.8, 21 , 0 );
setMoveKey( spep_3-3 + 80, 1, 18.2, 22 , 0 );
setMoveKey( spep_3-3 + 82, 1, 19.4, 22.9 , 0 );
setMoveKey( spep_3-3 + 84, 1, 20.6, 23.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, 21.7, 24.5 , 0 );
setMoveKey( spep_3-3 + 88, 1, 22.7, 25.1 , 0 );
setMoveKey( spep_3-3 + 90, 1, 23.5, 25.6 , 0 );
setMoveKey( spep_3-3 + 92, 1, 24.3, 26 , 0 );
setMoveKey( spep_3-3 + 94, 1, 25, 26.4 , 0 );
setMoveKey( spep_3-3 + 96, 1, 25.6, 26.7 , 0 );
setMoveKey( spep_3-3 + 99, 1, 26.1, 26.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, 58.2, -30.5 , 0 );
setMoveKey( spep_3-3 + 102, 1, 90.6, -40 , 0 );
setMoveKey( spep_3-3 + 104, 1, 281.8, -28.4 , 0 );
setMoveKey( spep_3-3 + 106, 1, 412.7, -42.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, 511.9, -30.5 , 0 );
setMoveKey( spep_3-3 + 110, 1, 585.9, -37.4 , 0 );
setMoveKey( spep_3-3 + 112, 1, 648.2, -36.7 , 0 );
setMoveKey( spep_3-3 + 114, 1, 699.6, -36.1 , 0 );
setMoveKey( spep_3-3 + 116, 1, 741.5, -35.5 , 0 );
setMoveKey( spep_3-3 + 118, 1, 775.1, -34.9 , 0 );
setMoveKey( spep_3-3 + 120, 1, 800.4, -35.6 , 0 );
setMoveKey( spep_3-3 + 122, 1, 818.9, -36.4 , 0 );
setMoveKey( spep_3-3 + 124, 1, 819.9, -36.1 , 0 );
setMoveKey( spep_3-3 + 126, 1, 820.9, -35.7 , 0 );
setMoveKey( spep_3-3 + 128, 1, 822, -35.4 , 0 );
setMoveKey( spep_3-3 + 130, 1, 822, -35.4 , 0 );
setMoveKey( spep_3-3 + 132, 1, 822.1, -35.5 , 0 );
setMoveKey( spep_3-3 + 134, 1, 822.2, -35.6 , 0 );
setMoveKey( spep_3-3 + 136, 1, 822.3, -35.6 , 0 );
setMoveKey( spep_3-3 + 138, 1, 822.4, -35.7 , 0 );
setMoveKey( spep_3-3 + 140, 1, 822.5, -35.8 , 0 );
setMoveKey( spep_3-3 + 142, 1, 822.5, -35.9 , 0 );
setMoveKey( spep_3-3 + 144, 1, 822.6, -35.9 , 0 );
setMoveKey( spep_3-3 + 146, 1, 822.7, -36 , 0 );
setMoveKey( spep_3-3 + 148, 1, 822.8, -36.1 , 0 );
setMoveKey( spep_3-3 + 150, 1, 822.9, -36.1 , 0 );
setMoveKey( spep_3-3 + 152, 1, 823, -36.2 , 0 );
setMoveKey( spep_3-3 + 154, 1, 823, -36.3 , 0 );
setMoveKey( spep_3-3 + 156, 1, 823.1, -36.3 , 0 );
setMoveKey( spep_3-3 + 158, 1, 823.2, -36.4 , 0 );

setScaleKey( spep_3 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 158, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 49, 1, 0 );
setRotateKey( spep_3-3 + 50, 1, -55 );
setRotateKey( spep_3-3 + 52, 1, -54.7 );
setRotateKey( spep_3-3 + 54, 1, -53.5 );
setRotateKey( spep_3-3 + 56, 1, -51 );
setRotateKey( spep_3-3 + 58, 1, -48.3 );
setRotateKey( spep_3-3 + 60, 1, -46.7 );
setRotateKey( spep_3-3 + 62, 1, -45.4 );
setRotateKey( spep_3-3 + 64, 1, -44.3 );
setRotateKey( spep_3-3 + 66, 1, -43.3 );
setRotateKey( spep_3-3 + 68, 1, -42.5 );
setRotateKey( spep_3-3 + 70, 1, -41.7 );
setRotateKey( spep_3-3 + 72, 1, -41 );
setRotateKey( spep_3-3 + 74, 1, -40.4 );
setRotateKey( spep_3-3 + 76, 1, -39.9 );
setRotateKey( spep_3-3 + 78, 1, -39.4 );
setRotateKey( spep_3-3 + 80, 1, -39 );
setRotateKey( spep_3-3 + 82, 1, -38.6 );
setRotateKey( spep_3-3 + 84, 1, -38.3 );
setRotateKey( spep_3-3 + 86, 1, -38 );
setRotateKey( spep_3-3 + 88, 1, -37.7 );
setRotateKey( spep_3-3 + 90, 1, -37.5 );
setRotateKey( spep_3-3 + 92, 1, -37.3 );
setRotateKey( spep_3-3 + 94, 1, -37.2 );
setRotateKey( spep_3-3 + 96, 1, -37.1 );
setRotateKey( spep_3-3 + 99, 1, -37 );
setRotateKey( spep_3-3 + 100, 1, 13 );
setRotateKey( spep_3-3 + 158, 1, 13 );

--SE
playSe( spep_3 + 38, 1003 );
setSeVolume( spep_3 + 38, 1003, 84 );
playSe( spep_3 + 54, 1009 );
playSe( spep_3 + 54, 1000 );
playSe( spep_3 + 98, 1004 );
setSeVolume( spep_3 + 98, 1004, 74 );
playSe( spep_3 + 104, 1010 );
playSe( spep_3 + 108, 1001 );
setSeVolume( spep_3 + 108, 1001, 84 );
playSe( spep_3 + 112, 1110 );
setSeVolume( spep_3 + 112, 1110, 88 );
playSe( spep_3 + 130, 1072 );
setSeVolume( spep_3 + 130, 1072, 67 );

setSeVolume( spep_3 + 6, 1266, 0 );
setSeVolume( spep_3 + 7, 1266, 7.14 );
setSeVolume( spep_3 + 8, 1266, 14.29 );
setSeVolume( spep_3 + 9, 1266, 21.43 );
setSeVolume( spep_3 + 10, 1266, 28.57 );
setSeVolume( spep_3 + 11, 1266, 35.71 );
setSeVolume( spep_3 + 12, 1266, 42.86 );
setSeVolume( spep_3 + 13, 1266, 50 );
setSeVolume( spep_3 + 14, 1266, 57.14 );
setSeVolume( spep_3 + 15, 1266, 64.29 );
setSeVolume( spep_3 + 16, 1266, 71.43 );
setSeVolume( spep_3 + 17, 1266, 78.57 );
setSeVolume( spep_3 + 18, 1266, 85.71 );
setSeVolume( spep_3 + 19, 1266, 92.86 );
setSeVolume( spep_3 + 20, 1266, 100 );

setSeVolume( spep_3 + 8, 1265, 0 );
setSeVolume( spep_3 + 9, 1265, 11.2 );
setSeVolume( spep_3 + 10, 1265, 22.4 );
setSeVolume( spep_3 + 11, 1265, 33.6 );
setSeVolume( spep_3 + 12, 1265, 44.8 );
setSeVolume( spep_3 + 13, 1265, 56 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 160, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_3 + 150, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4 = spep_3 + 160;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 110, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 110, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_4 + 0, 154080, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, bg, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 116, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 116, bg, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 86 +10, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100 +10, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100 +10, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100 +10, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100 +10, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86 +10, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100 +10, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100 +10, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100 +10, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100 +10, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100 +10, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100 +10, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100 +10, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100 +10, hibiware, 255 );

--SE
playSe( spep_4 + 12, 1002 );
playSe( spep_4 + 14, 1054 );
setSeVolume( spep_4 + 14, 1054, 141 );
--playSe( spep_4 + 14, 19 );

stopSe( spep_4 + 14, se_1266, 0 );
stopSe( spep_4 + 14, se_1265, 0 );

--終わり
dealDamage( spep_4 +10 );
endPhase( spep_4 + 100 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 太陽と重なる
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
san = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, san, 0, 0, 0 );
setEffMoveKey( spep_0 + 66, san, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, san, -1.0, 1.0 );
setEffScaleKey( spep_0 + 66, san, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, san, 0 );
setEffRotateKey( spep_0 + 66, san, 0 );
setEffAlphaKey( spep_0 + 0, san, 255 );
setEffAlphaKey( spep_0 + 66, san, 255 );

--SE
se_0017 = playSe( spep_0 + 0, 17 );
setSeVolume( spep_0 + 0, 17, 50 );
se_1263 = playSe( spep_0 + 0, 1263 );
SE0=playSe( spep_0 + 6, 44 );
setSeVolume( spep_0 + 6, 44, 56 );

stopSe( spep_0 + 31, se_0017, 57 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 70, 0,  0, 0, 0, 180 ); --くろ 背景

--次の準備
spep_1=spep_0+66;
------------------------------------------------------
-- 太陽拳
------------------------------------------------------
-- ** エフェクト等 ** --
attaku = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attaku, 0, 0, 0 );
setEffMoveKey( spep_1 + 116, attaku, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, attaku, -1.0, 1.0 );
setEffScaleKey( spep_1 + 116, attaku, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attaku, 0 );
setEffRotateKey( spep_1 + 116, attaku, 0 );
setEffAlphaKey( spep_1 + 0, attaku, 255 );
setEffAlphaKey( spep_1 + 116, attaku, 255 );
--SE
se_1264 = playSe( spep_1 + 22, 1264 );
setSeVolume( spep_1 + 22, 1264, 112 );
se_0013 = playSe( spep_1 + 24, 13 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_0017, 0 );
    stopSe( SP_dodge - 12, se_1263, 0 );
    stopSe( SP_dodge - 12, se_1264, 0 );
    stopSe( SP_dodge - 12, se_0013, 0 );
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

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 + 17,  906, 96, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 17, shuchusen3, 96, 25 );
setEffMoveKey(   spep_1 +  17, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 115, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_1 +  17, shuchusen3, 1.6, 1.6 );
setEffScaleKey(  spep_1 + 115, shuchusen3, 1.6, 1.6 );
setEffRotateKey( spep_1 +  17, shuchusen3, 0 );
setEffRotateKey( spep_1 + 115, shuchusen3, 0 );
setEffAlphaKey(  spep_1 +  17, shuchusen3, 255 );
setEffAlphaKey(  spep_1 + 105, shuchusen3, 255 );
setEffAlphaKey(  spep_1 + 115, shuchusen3, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1+18  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1+18  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +30, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +30,  ctgogo,  100,  510);
setEffMoveKey(  spep_1 +102,  ctgogo,  100,  510);

setEffAlphaKey( spep_1 +30, ctgogo, 0 );
setEffAlphaKey( spep_1 + 31, ctgogo, 255 );
setEffAlphaKey( spep_1 + 32, ctgogo, 255 );
setEffAlphaKey( spep_1 + 96, ctgogo, 255 );
setEffAlphaKey( spep_1 + 98, ctgogo, 191 );
setEffAlphaKey( spep_1 + 100, ctgogo, 112 );
setEffAlphaKey( spep_1 + 102, ctgogo, 64 );

setEffRotateKey(  spep_1 +30,  ctgogo,  0);
setEffRotateKey(  spep_1 +102,  ctgogo,  0);

setEffScaleKey(  spep_1 +30,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +92,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +102,  ctgogo, -1.07, 1.07 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 120, 0,  0, 0, 0, 180 ); --くろ 背景

--SE
playSe( spep_1 + 30, 1018 );
setSeVolume( spep_1 + 30, 1018, 79 );
se_1266 = playSe( spep_1 + 46, 1266 );
setSeVolume( spep_1 + 46, 1266, 0 );

stopSe( spep_1 + 15, se_1263, 40 );

--次の準備
spep_2=spep_1+116;
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
se_1265 = playSe( spep_2 + 14, 1265 );
setSeVolume( spep_2 + 14, 1265, 0 );

stopSe( spep_2 + 0, se_1264, 0 );
stopSe( spep_2 + 0, se_0013, 0 );

--白フェード
entryFade( spep_2 + 80, 6, 18, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 160, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 160, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 160, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 160, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 160, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 160, fighting_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 160, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 160, fighting_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 158, 1, 0 );

setBlendColor(spep_3 + 0,1,5,1,1,1,0.6);
setBlendColor(spep_3 + 158,1,5,1,1,1,0);

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 50, 1, 106 );
changeAnime( spep_3-3 + 100, 1, 108 );

setMoveKey( spep_3 + 0, 1, 2.4, -12 , 0 );
setMoveKey( spep_3 + 2, 1, 2.4, -11.9 , 0 );
setMoveKey( spep_3-3 + 49, 1, 2.4, -11.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, -44.3, -23.5 , 0 );
setMoveKey( spep_3-3 + 52, 1, -29.4, -14.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, -30.9, -15.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, -10.5, -13.4 , 0 );
setMoveKey( spep_3-3 + 58, 1, -11.8, 1.8 , 0 );
setMoveKey( spep_3-3 + 60, 1, -1.7, -1.1 , 0 );
setMoveKey( spep_3-3 + 62, 1, -2.7, 6.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, 3.7, 5.8 , 0 );
setMoveKey( spep_3-3 + 66, 1, 3.4, 11.9 , 0 );
setMoveKey( spep_3-3 + 68, 1, 8.3, 12.3 , 0 );
setMoveKey( spep_3-3 + 70, 1, 9.8, 15.5 , 0 );
setMoveKey( spep_3-3 + 72, 1, 11, 18.5 , 0 );
setMoveKey( spep_3-3 + 74, 1, 13.1, 19.5 , 0 );
setMoveKey( spep_3-3 + 76, 1, 15, 20.3 , 0 );
setMoveKey( spep_3-3 + 78, 1, 16.8, 21 , 0 );
setMoveKey( spep_3-3 + 80, 1, 18.2, 22 , 0 );
setMoveKey( spep_3-3 + 82, 1, 19.4, 22.9 , 0 );
setMoveKey( spep_3-3 + 84, 1, 20.6, 23.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, 21.7, 24.5 , 0 );
setMoveKey( spep_3-3 + 88, 1, 22.7, 25.1 , 0 );
setMoveKey( spep_3-3 + 90, 1, 23.5, 25.6 , 0 );
setMoveKey( spep_3-3 + 92, 1, 24.3, 26 , 0 );
setMoveKey( spep_3-3 + 94, 1, 25, 26.4 , 0 );
setMoveKey( spep_3-3 + 96, 1, 25.6, 26.7 , 0 );
setMoveKey( spep_3-3 + 99, 1, 26.1, 26.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, 58.2, -30.5 , 0 );
setMoveKey( spep_3-3 + 102, 1, 90.6, -40 , 0 );
setMoveKey( spep_3-3 + 104, 1, 281.8, -28.4 , 0 );
setMoveKey( spep_3-3 + 106, 1, 412.7, -42.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, 511.9, -30.5 , 0 );
setMoveKey( spep_3-3 + 110, 1, 585.9, -37.4 , 0 );
setMoveKey( spep_3-3 + 112, 1, 648.2, -36.7 , 0 );
setMoveKey( spep_3-3 + 114, 1, 699.6, -36.1 , 0 );
setMoveKey( spep_3-3 + 116, 1, 741.5, -35.5 , 0 );
setMoveKey( spep_3-3 + 118, 1, 775.1, -34.9 , 0 );
setMoveKey( spep_3-3 + 120, 1, 800.4, -35.6 , 0 );
setMoveKey( spep_3-3 + 122, 1, 818.9, -36.4 , 0 );
setMoveKey( spep_3-3 + 124, 1, 819.9, -36.1 , 0 );
setMoveKey( spep_3-3 + 126, 1, 820.9, -35.7 , 0 );
setMoveKey( spep_3-3 + 128, 1, 822, -35.4 , 0 );
setMoveKey( spep_3-3 + 130, 1, 822, -35.4 , 0 );
setMoveKey( spep_3-3 + 132, 1, 822.1, -35.5 , 0 );
setMoveKey( spep_3-3 + 134, 1, 822.2, -35.6 , 0 );
setMoveKey( spep_3-3 + 136, 1, 822.3, -35.6 , 0 );
setMoveKey( spep_3-3 + 138, 1, 822.4, -35.7 , 0 );
setMoveKey( spep_3-3 + 140, 1, 822.5, -35.8 , 0 );
setMoveKey( spep_3-3 + 142, 1, 822.5, -35.9 , 0 );
setMoveKey( spep_3-3 + 144, 1, 822.6, -35.9 , 0 );
setMoveKey( spep_3-3 + 146, 1, 822.7, -36 , 0 );
setMoveKey( spep_3-3 + 148, 1, 822.8, -36.1 , 0 );
setMoveKey( spep_3-3 + 150, 1, 822.9, -36.1 , 0 );
setMoveKey( spep_3-3 + 152, 1, 823, -36.2 , 0 );
setMoveKey( spep_3-3 + 154, 1, 823, -36.3 , 0 );
setMoveKey( spep_3-3 + 156, 1, 823.1, -36.3 , 0 );
setMoveKey( spep_3-3 + 158, 1, 823.2, -36.4 , 0 );

setScaleKey( spep_3 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 158, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 49, 1, 0 );
setRotateKey( spep_3-3 + 50, 1, -55 );
setRotateKey( spep_3-3 + 52, 1, -54.7 );
setRotateKey( spep_3-3 + 54, 1, -53.5 );
setRotateKey( spep_3-3 + 56, 1, -51 );
setRotateKey( spep_3-3 + 58, 1, -48.3 );
setRotateKey( spep_3-3 + 60, 1, -46.7 );
setRotateKey( spep_3-3 + 62, 1, -45.4 );
setRotateKey( spep_3-3 + 64, 1, -44.3 );
setRotateKey( spep_3-3 + 66, 1, -43.3 );
setRotateKey( spep_3-3 + 68, 1, -42.5 );
setRotateKey( spep_3-3 + 70, 1, -41.7 );
setRotateKey( spep_3-3 + 72, 1, -41 );
setRotateKey( spep_3-3 + 74, 1, -40.4 );
setRotateKey( spep_3-3 + 76, 1, -39.9 );
setRotateKey( spep_3-3 + 78, 1, -39.4 );
setRotateKey( spep_3-3 + 80, 1, -39 );
setRotateKey( spep_3-3 + 82, 1, -38.6 );
setRotateKey( spep_3-3 + 84, 1, -38.3 );
setRotateKey( spep_3-3 + 86, 1, -38 );
setRotateKey( spep_3-3 + 88, 1, -37.7 );
setRotateKey( spep_3-3 + 90, 1, -37.5 );
setRotateKey( spep_3-3 + 92, 1, -37.3 );
setRotateKey( spep_3-3 + 94, 1, -37.2 );
setRotateKey( spep_3-3 + 96, 1, -37.1 );
setRotateKey( spep_3-3 + 99, 1, -37 );
setRotateKey( spep_3-3 + 100, 1, 13 );
setRotateKey( spep_3-3 + 158, 1, 13 );

--SE
playSe( spep_3 + 38, 1003 );
setSeVolume( spep_3 + 38, 1003, 84 );
playSe( spep_3 + 54, 1009 );
playSe( spep_3 + 54, 1000 );
playSe( spep_3 + 98, 1004 );
setSeVolume( spep_3 + 98, 1004, 74 );
playSe( spep_3 + 104, 1010 );
playSe( spep_3 + 108, 1001 );
setSeVolume( spep_3 + 108, 1001, 84 );
playSe( spep_3 + 112, 1110 );
setSeVolume( spep_3 + 112, 1110, 88 );
playSe( spep_3 + 130, 1072 );
setSeVolume( spep_3 + 130, 1072, 67 );

setSeVolume( spep_3 + 6, 1266, 0 );
setSeVolume( spep_3 + 7, 1266, 7.14 );
setSeVolume( spep_3 + 8, 1266, 14.29 );
setSeVolume( spep_3 + 9, 1266, 21.43 );
setSeVolume( spep_3 + 10, 1266, 28.57 );
setSeVolume( spep_3 + 11, 1266, 35.71 );
setSeVolume( spep_3 + 12, 1266, 42.86 );
setSeVolume( spep_3 + 13, 1266, 50 );
setSeVolume( spep_3 + 14, 1266, 57.14 );
setSeVolume( spep_3 + 15, 1266, 64.29 );
setSeVolume( spep_3 + 16, 1266, 71.43 );
setSeVolume( spep_3 + 17, 1266, 78.57 );
setSeVolume( spep_3 + 18, 1266, 85.71 );
setSeVolume( spep_3 + 19, 1266, 92.86 );
setSeVolume( spep_3 + 20, 1266, 100 );

setSeVolume( spep_3 + 8, 1265, 0 );
setSeVolume( spep_3 + 9, 1265, 11.2 );
setSeVolume( spep_3 + 10, 1265, 22.4 );
setSeVolume( spep_3 + 11, 1265, 33.6 );
setSeVolume( spep_3 + 12, 1265, 44.8 );
setSeVolume( spep_3 + 13, 1265, 56 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 160, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_3 + 150, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4 = spep_3 + 160;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 110, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 110, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_4 + 0, 154080, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, bg, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 116, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 116, bg, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 86 +10, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100 +10, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100 +10, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100 +10, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100 +10, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86 +10, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100 +10, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100 +10, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100 +10, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100 +10, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100 +10, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100 +10, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100 +10, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100 +10, hibiware, 255 );

--SE
playSe( spep_4 + 12, 1002 );
playSe( spep_4 + 14, 1054 );
setSeVolume( spep_4 + 14, 1054, 141 );
--playSe( spep_4 + 14, 19 );

stopSe( spep_4 + 14, se_1266, 0 );
stopSe( spep_4 + 14, se_1265, 0 );

--終わり
dealDamage( spep_4 +10 );
endPhase( spep_4 + 100 );
end
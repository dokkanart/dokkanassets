--1019900:ゴテンクス_狼牙排球拳
--sp_effect_b4_00144

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
SP_01=	155451	;--	気だめ⇒セリフカットイン
SP_02=	155453	;--	流背⇒攻撃
SP_03=	155455	;--	連続攻撃エフェクト
SP_04=	155456	;--	連続攻撃背景
SP_05=	155457	;--	狼牙排球拳
SP_06=	155459	;--	狼牙排球拳時背景
SP_07=	155460	;--	変顔アップ
SP_08=	155462	;--	レシ－ブ⇒瞬間移動
SP_09=	155464	;--	アタック⇒敵手前に吹っ飛び
SP_10=	155466	;--	ダメ－ジ表示

--エフェクト(てき)
SP_01x=	155452	;--	気だめ⇒セリフカットイン	(敵)
SP_02x=	155454	;--	流背⇒攻撃	(敵)
SP_03x=	155455	;--	連続攻撃エフェクト	
SP_04x=	155456	;--	連続攻撃背景	
SP_05x=	155458	;--	狼牙排球拳	(敵)
SP_06x=	155459	;--	狼牙排球拳時背景	
SP_07x=	155461	;--	変顔アップ	(敵)
SP_08x=	155463	;--	レシ－ブ⇒瞬間移動	(敵)
SP_09x=	155465	;--	アタック⇒敵手前に吹っ飛び	(敵)
SP_10x=	155466	;--	ダメ－ジ表示	
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
-- 気だめ⇒セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 176, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 176, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 176, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 30,  906, 128, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 30, shuchusen1, 128, 20 );
setEffMoveKey( spep_0-3 + 30, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 158, shuchusen1, 0, 0 , 0 );

setEffMoveKey( spep_0-3 + 30, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 158, shuchusen1, 0, 0 , 0 );

setEffRotateKey( spep_0-3 + 30, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 158, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 158, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+68  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+68  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctzuzuzun = entryEffectLife( spep_0-3 + 32,  10013, 40, 0x100, -1, 0, 20.1, 249.8 );
setEffShake( spep_0-3 + 32, ctzuzuzun, 40, 10 );
setEffMoveKey( spep_0-3 + 32, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0-3 + 34, ctzuzuzun, 29.2, 317.4 , 0 );
setEffMoveKey( spep_0-3 + 36, ctzuzuzun, 51.2, 394.7 , 0 );
setEffMoveKey( spep_0-3 + 38, ctzuzuzun, 38.3, 377.6 , 0 );
setEffMoveKey( spep_0-3 + 40, ctzuzuzun, 43.3, 371.9 , 0 );
setEffMoveKey( spep_0-3 + 42, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 44, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 46, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 48, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 50, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 52, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 54, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 56, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 58, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 60, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 62, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 64, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 66, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 68, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 72, ctzuzuzun, 30.9, 354.4 , 0 );

setEffScaleKey( spep_0-3 + 32, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0-3 + 34, ctzuzuzun, 1.99, 1.99 );
setEffScaleKey( spep_0-3 + 36, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0-3 + 38, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0-3 + 72, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0-3 + 32, ctzuzuzun, -5 );
setEffRotateKey( spep_0-3 + 72, ctzuzuzun, -5 );

setEffAlphaKey( spep_0-3 + 32, ctzuzuzun, 255 );
setEffAlphaKey( spep_0-3 + 60, ctzuzuzun, 255 );
setEffAlphaKey( spep_0-3 + 62, ctzuzuzun, 212 );
setEffAlphaKey( spep_0-3 + 64, ctzuzuzun, 170 );
setEffAlphaKey( spep_0-3 + 66, ctzuzuzun, 128 );
setEffAlphaKey( spep_0-3 + 68, ctzuzuzun, 85 );
setEffAlphaKey( spep_0-3 + 70, ctzuzuzun, 43 );
setEffAlphaKey( spep_0-3 + 72, ctzuzuzun, 0 );



-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +80, 190006, 72, 0x102, -1, 0, -70, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +80,  ctgogo,  -70,  510);
setEffMoveKey(  spep_0 +152,  ctgogo,  -70,  510);

setEffAlphaKey( spep_0 +80, ctgogo, 0 );
setEffAlphaKey( spep_0 + 81, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 + 146, ctgogo, 255 );
setEffAlphaKey( spep_0 + 148, ctgogo, 191 );
setEffAlphaKey( spep_0 + 150, ctgogo, 112 );
setEffAlphaKey( spep_0 + 152, ctgogo, 64 );

setEffRotateKey(  spep_0 +80,  ctgogo,  0);
setEffRotateKey(  spep_0 +152,  ctgogo,  0);

setEffScaleKey(  spep_0 +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +142,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +152,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 36, 1035 );
playSe( spep_0 + 80, 1018 );--顔カットイン
se_1146 = playSe( spep_0 + 158, 1146 );
setSeVolume( spep_0 + 158, 1146, 0 );
se_1109 = playSe( spep_0 + 168, 1109 );
se_1116 = playSe( spep_0 + 168, 1116 );
playSe( spep_0 + 172, 44 );

--はじめの準備
spep_1=spep_0+ 176;
------------------------------------------------------
-- 流背⇒攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_1 + 70, rush, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 70, rush, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 70, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 70, rush, 255 );

--SE
setSeVolume( spep_1 + 0, 1146, 0 );
setSeVolume( spep_1 + 1, 1146, 8.29 );
setSeVolume( spep_1 + 2, 1146, 16.59 );
setSeVolume( spep_1 + 3, 1146, 24.88 );
setSeVolume( spep_1 + 4, 1146, 33.18 );
setSeVolume( spep_1 + 5, 1146, 41.47 );
setSeVolume( spep_1 + 6, 1146, 49.76 );
setSeVolume( spep_1 + 7, 1146, 58.06 );
setSeVolume( spep_1 + 8, 1146, 66.35 );
setSeVolume( spep_1 + 9, 1146, 74.65 );
setSeVolume( spep_1 + 10, 1146, 82.94 );
setSeVolume( spep_1 + 11, 1146, 91.24 );
setSeVolume( spep_1 + 12, 1146, 99.53 );
setSeVolume( spep_1 + 13, 1146, 107.82 );
setSeVolume( spep_1 + 14, 1146, 116.12 );
setSeVolume( spep_1 + 15, 1146, 124.41 );
setSeVolume( spep_1 + 16, 1146, 132.71 );
setSeVolume( spep_1 + 17, 1146, 141 );
SE0=playSe( spep_1 + 15, 1222 );
setSeVolume( spep_1 + 15, 1222, 112 );
SE1=playSe( spep_1 + 15, 1026 );
setSeVolume( spep_1 + 15, 1026, 112 );
SE2=playSe( spep_1 + 24, 1072 );

stopSe( spep_1 + 13, se_1116, 27 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1146, 0 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );

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


stopSe( spep_1 + 42, se_1146, 82 );
--白フェード
entryFade( spep_1+62 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_2=spep_1+ 70;

------------------------------------------------------
-- 連続攻撃エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 100, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 100, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 100, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 100, fighting_b, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 14,  10020, 13, 0x100, -1, 0, 191.9, 34 );--バキッ
setEffShake( spep_2-3 + 14, ctbaki, 13, 10 );
setEffMoveKey( spep_2-3 + 14, ctbaki, 191.9, 34 , 0 );
setEffMoveKey( spep_2-3 + 16, ctbaki, 204.6, 44.6 , 0 );
setEffMoveKey( spep_2-3 + 18, ctbaki, 204.3, 58.9 , 0 );
setEffMoveKey( spep_2-3 + 20, ctbaki, 212, 55.9 , 0 );
setEffMoveKey( spep_2-3 + 22, ctbaki, 205.9, 62 , 0 );
setEffMoveKey( spep_2-3 + 27, ctbaki, 212, 55.9 , 0 );

setEffScaleKey( spep_2-3 + 14, ctbaki, 0.58, 0.58 );
--setEffScaleKey( spep_2-3 + 16, ctbaki, 0.25, 0.25 );
--setEffScaleKey( spep_2-3 + 18, ctbaki, 0.29, 0.29 );
setEffScaleKey( spep_2-3 + 20, ctbaki, 1.01, 1.01 );
setEffScaleKey( spep_2-3 + 27, ctbaki, 1.01, 1.01 );

setEffRotateKey( spep_2-3 + 14, ctbaki, 0 );
setEffRotateKey( spep_2-3 + 27, ctbaki, 0 );

setEffAlphaKey( spep_2-3 + 14, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 27, ctbaki, 255 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_2-3 + 28,  10020, 13, 0x100, -1, 0, 131.9, -46 );--バキッ
setEffShake( spep_2-3 + 28, ctbaki2, 13, 10 );
setEffMoveKey( spep_2-3 + 28, ctbaki2, 131.9, -46 , 0 );
setEffMoveKey( spep_2-3 + 30, ctbaki2, 87.2, 35.4 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbaki2, 44.8, 85.6 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbaki2, 47.4, 100 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbaki2, 34, 102 , 0 );
setEffMoveKey( spep_2-3 + 41, ctbaki2, 47.4, 100 , 0 );

setEffScaleKey( spep_2-3 + 28, ctbaki2, 0.58, 0.58 );
--setEffScaleKey( spep_2-3 + 30, ctbaki2, 0.35, 0.35 );
--setEffScaleKey( spep_2-3 + 32, ctbaki2, 0.45, 0.45 );
setEffScaleKey( spep_2-3 + 34, ctbaki2, 1.58, 1.58 );
setEffScaleKey( spep_2-3 + 41, ctbaki2, 1.58, 1.58 );

setEffRotateKey( spep_2-3 + 28, ctbaki2, -44.5 );
setEffRotateKey( spep_2-3 + 30, ctbaki2, -40.2 );
setEffRotateKey( spep_2-3 + 32, ctbaki2, -37.6 );
setEffRotateKey( spep_2-3 + 34, ctbaki2, -36.7 );
setEffRotateKey( spep_2-3 + 41, ctbaki2, -36.7 );

setEffAlphaKey( spep_2-3 + 28, ctbaki2, 255 );
setEffAlphaKey( spep_2-3 + 41, ctbaki2, 255 );

--文字エントリー
ctbaki3 = entryEffectLife( spep_2-3 + 42,  10020, 12, 0x100, -1, 0, 249.9, -14 );
setEffShake( spep_2-3 + 42, ctbaki3, 12, 10 );
setEffMoveKey( spep_2-3 + 42, ctbaki3, 249.9, -14 , 0 );
setEffMoveKey( spep_2-3 + 44, ctbaki3, 252.4, 52.9 , 0 );
setEffMoveKey( spep_2-3 + 46, ctbaki3, 253.5, 114 , 0 );
setEffMoveKey( spep_2-3 + 48, ctbaki3, 254.3, 110.4 , 0 );
setEffMoveKey( spep_2-3 + 50, ctbaki3, 253.9, 130 , 0 );
setEffMoveKey( spep_2-3 + 54, ctbaki3, 254.3, 110.4 , 0 );

setEffScaleKey( spep_2-3 + 42, ctbaki3, 0.58, 0.58 );
--setEffScaleKey( spep_2-3 + 44, ctbaki3, 0.46, 0.46 );
--setEffScaleKey( spep_2-3 + 46, ctbaki3, 0.64, 0.64 );
setEffScaleKey( spep_2-3 + 48, ctbaki3, 2.39, 2.39 );
setEffScaleKey( spep_2-3 + 54, ctbaki3, 2.39, 2.39 );

setEffRotateKey( spep_2-3 + 42, ctbaki3, 43.5 );
setEffRotateKey( spep_2-3 + 44, ctbaki3, 43.7 );
setEffRotateKey( spep_2-3 + 46, ctbaki3, 43.9 );
setEffRotateKey( spep_2-3 + 48, ctbaki3, 44 );
setEffRotateKey( spep_2-3 + 54, ctbaki3, 44 );

setEffAlphaKey( spep_2-3 + 42, ctbaki3, 255 );
setEffAlphaKey( spep_2-3 + 48, ctbaki3, 255 );
setEffAlphaKey( spep_2-3 + 50, ctbaki3, 179 );
setEffAlphaKey( spep_2-3 + 52, ctbaki3, 102 );
setEffAlphaKey( spep_2-3 + 54, ctbaki3, 26 );

--文字エントリー
ctbaki4 = entryEffectLife( spep_2-3 + 48,  10020, 32, 0x100, -1, 0, 165.9, 24 );
setEffShake( spep_2-3 + 48, ctbaki4, 32, 10 );
setEffMoveKey( spep_2-3 + 48, ctbaki4, 165.9, 24 , 0 );
setEffMoveKey( spep_2-3 + 50, ctbaki4, 121.4, 112.3 , 0 );
setEffMoveKey( spep_2-3 + 52, ctbaki4, 75.3, 178.7 , 0 );
setEffMoveKey( spep_2-3 + 54, ctbaki4, 83.1, 185.9 , 0 );
setEffMoveKey( spep_2-3 + 56, ctbaki4, 64, 198 , 0 );
setEffMoveKey( spep_2-3 + 58, ctbaki4, 84.7, 184.8 , 0 );
setEffMoveKey( spep_2-3 + 60, ctbaki4, 85.5, 184.3 , 0 );
setEffMoveKey( spep_2-3 + 62, ctbaki4, 86.4, 183.8 , 0 );
setEffMoveKey( spep_2-3 + 64, ctbaki4, 87.2, 183.2 , 0 );
setEffMoveKey( spep_2-3 + 66, ctbaki4, 88, 182.7 , 0 );
setEffMoveKey( spep_2-3 + 68, ctbaki4, 88.8, 182.2 , 0 );
setEffMoveKey( spep_2-3 + 70, ctbaki4, 89.7, 181.7 , 0 );
setEffMoveKey( spep_2-3 + 72, ctbaki4, 90.5, 181.1 , 0 );
setEffMoveKey( spep_2-3 + 74, ctbaki4, 91.3, 180.6 , 0 );
setEffMoveKey( spep_2-3 + 76, ctbaki4, 92.2, 180.1 , 0 );
setEffMoveKey( spep_2-3 + 78, ctbaki4, 93, 179.5 , 0 );
setEffMoveKey( spep_2-3 + 80, ctbaki4, 93.8, 179 , 0 );

setEffScaleKey( spep_2-3 + 48, ctbaki4, 0.58, 0.58 );
--setEffScaleKey( spep_2-3 + 50, ctbaki4, 0.52, 0.52 );
--setEffScaleKey( spep_2-3 + 52, ctbaki4, 0.73, 0.73 );
--setEffScaleKey( spep_2-3 + 54, ctbaki4, 0.8, 0.8 );
--setEffScaleKey( spep_2-3 + 56, ctbaki4, 0.83, 0.83 );
--setEffScaleKey( spep_2-3 + 58, ctbaki4, 0.87, 0.87 );
--setEffScaleKey( spep_2-3 + 60, ctbaki4, 0.9, 0.9 );
--setEffScaleKey( spep_2-3 + 62, ctbaki4, 0.94, 0.94 );
--setEffScaleKey( spep_2-3 + 64, ctbaki4, 0.97, 0.97 );
setEffScaleKey( spep_2-3 + 66, ctbaki4, 3.31, 3.31 );
setEffScaleKey( spep_2-3 + 68, ctbaki4, 3.34, 3.34 );
setEffScaleKey( spep_2-3 + 70, ctbaki4, 3.38, 3.38 );
setEffScaleKey( spep_2-3 + 72, ctbaki4, 3.41, 3.41 );
setEffScaleKey( spep_2-3 + 74, ctbaki4, 3.45, 3.45 );
setEffScaleKey( spep_2-3 + 76, ctbaki4, 3.48, 3.48 );
setEffScaleKey( spep_2-3 + 78, ctbaki4, 3.51, 3.51 );
setEffScaleKey( spep_2-3 + 80, ctbaki4, 3.55, 3.55 );

setEffRotateKey( spep_2-3 + 48, ctbaki4, -7.5 );
setEffRotateKey( spep_2-3 + 50, ctbaki4, -10.3 );
setEffRotateKey( spep_2-3 + 52, ctbaki4, -12 );
setEffRotateKey( spep_2-3 + 54, ctbaki4, -12.5 );
setEffRotateKey( spep_2-3 + 80, ctbaki4, -12.5 );

setEffAlphaKey( spep_2-3 + 48, ctbaki4, 255 );
setEffAlphaKey( spep_2-3 + 54, ctbaki4, 255 );
setEffAlphaKey( spep_2-3 + 56, ctbaki4, 235 );
setEffAlphaKey( spep_2-3 + 58, ctbaki4, 216 );
setEffAlphaKey( spep_2-3 + 60, ctbaki4, 196 );
setEffAlphaKey( spep_2-3 + 62, ctbaki4, 177 );
setEffAlphaKey( spep_2-3 + 64, ctbaki4, 157 );
setEffAlphaKey( spep_2-3 + 66, ctbaki4, 137 );
setEffAlphaKey( spep_2-3 + 68, ctbaki4, 118 );
setEffAlphaKey( spep_2-3 + 70, ctbaki4, 98 );
setEffAlphaKey( spep_2-3 + 72, ctbaki4, 78 );
setEffAlphaKey( spep_2-3 + 74, ctbaki4, 59 );
setEffAlphaKey( spep_2-3 + 76, ctbaki4, 39 );
setEffAlphaKey( spep_2-3 + 78, ctbaki4, 20 );
setEffAlphaKey( spep_2-3 + 80, ctbaki4, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 86, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2-3 + 10, 1, 106 );
changeAnime( spep_2-3 + 60, 1, 108 );

setMoveKey( spep_2 + 0, 1, 394, 4.5 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 311.6, 14.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, 211.1, 8.8 , 0 );
setMoveKey( spep_2-3 + 6, 1, 126.7, 15 , 0 );
setMoveKey( spep_2-3 + 9, 1, 26.3, 9.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 40.1, 10.6 , 0 );
setMoveKey( spep_2-3 + 12, 1, 65.2, 18.1 , 0 );
setMoveKey( spep_2-3 + 14, 1, 102.4, 38.1 , 0 );
setMoveKey( spep_2-3 + 16, 1, 125.1, 47.8 , 0 );
setMoveKey( spep_2-3 + 18, 1, 96.1, -68.3 , 0 );
setMoveKey( spep_2-3 + 20, 1, 50.1, -49.9 , 0 );
setMoveKey( spep_2-3 + 22, 1, 10.2, -2.8 , 0 );
setMoveKey( spep_2-3 + 24, 1, -34.4, 24.9 , 0 );
setMoveKey( spep_2-3 + 26, 1, 88.1, -38.3 , 0 );
setMoveKey( spep_2-3 + 28, 1, 95.1, -13.6 , 0 );
setMoveKey( spep_2-3 + 30, 1, 118.1, 23.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, 125.1, 47.8 , 0 );
setMoveKey( spep_2-3 + 34, 1, -66.9, -54.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, -18.6, -33.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 45.8, -1.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 94.1, 18.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 74.1, -65.3 , 0 );
setMoveKey( spep_2-3 + 44, 1, 21.1, -42.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, -15.9, -7.9 , 0 );
setMoveKey( spep_2-3 + 48, 1, -68.9, 14.8 , 0 );
setMoveKey( spep_2-3 + 50, 1, -42.9, -90.3 , 0 );
setMoveKey( spep_2-3 + 52, 1, -22.9, -74.2 , 0 );
setMoveKey( spep_2-3 + 54, 1, 13.1, -46.2 , 0 );
setMoveKey( spep_2-3 + 56, 1, 33.1, -30.2 , 0 );
setMoveKey( spep_2-3 + 59, 1, 69.1, -2.2 , 0 );
setMoveKey( spep_2-3 + 60, 1, 176.3, -11.3 , 0 );
setMoveKey( spep_2-3 + 62, 1, 204.1, -0.9 , 0 );
setMoveKey( spep_2-3 + 64, 1, 267.3, -1.4 , 0 );
setMoveKey( spep_2-3 + 66, 1, 243.8, 7.9 , 0 );
setMoveKey( spep_2-3 + 68, 1, 234.5, 5.1 , 0 );
setMoveKey( spep_2-3 + 70, 1, 277.4, 16.2 , 0 );
setMoveKey( spep_2-3 + 72, 1, 295.2, 15.2 , 0 );
setMoveKey( spep_2-3 + 74, 1, 323.1, 25.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, 334.9, 24 , 0 );
setMoveKey( spep_2-3 + 78, 1, 362.7, 34.4 , 0 );
setMoveKey( spep_2-3 + 80, 1, 374.6, 32.8 , 0 );
setMoveKey( spep_2-3 + 82, 1, 402.4, 43.2 , 0 );
setMoveKey( spep_2-3 + 84, 1, 414.3, 41.6 , 0 );
setMoveKey( spep_2-3 + 86, 1, 434.1, 46 , 0 );

setScaleKey( spep_2 + 0, 1, 1.02, 1.02 );
--setScaleKey( spep_2-3 + 2, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 4, 1, 1.21, 1.21 );
setScaleKey( spep_2-3 + 6, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 9, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 10, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 12, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 18, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 20, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 22, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 24, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 26, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 59, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 60, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 62, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 64, 1, 2.32, 2.32 );
setScaleKey( spep_2-3 + 66, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 70, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 72, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 74, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 76, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 78, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 80, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 82, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 84, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 86, 1, 0.51, 0.51 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 10, 1, 0 );
setRotateKey( spep_2-3 + 12, 1, 3 );
setRotateKey( spep_2-3 + 14, 1, 6 );
setRotateKey( spep_2-3 + 16, 1, 9.1 );
setRotateKey( spep_2-3 + 18, 1, -0.7 );
setRotateKey( spep_2-3 + 20, 1, 6.1 );
setRotateKey( spep_2-3 + 22, 1, 12.9 );
setRotateKey( spep_2-3 + 24, 1, 19.7 );
setRotateKey( spep_2-3 + 26, 1, -1.9 );
setRotateKey( spep_2-3 + 28, 1, 4.8 );
setRotateKey( spep_2-3 + 30, 1, 11.4 );
setRotateKey( spep_2-3 + 32, 1, 18.1 );
setRotateKey( spep_2-3 + 34, 1, 0 );
setRotateKey( spep_2-3 + 36, 1, 3 );
setRotateKey( spep_2-3 + 38, 1, 6 );
setRotateKey( spep_2-3 + 40, 1, 9.1 );
setRotateKey( spep_2-3 + 42, 1, -0.7 );
setRotateKey( spep_2-3 + 44, 1, 7.5 );
setRotateKey( spep_2-3 + 46, 1, 15.6 );
setRotateKey( spep_2-3 + 48, 1, 23.8 );
setRotateKey( spep_2-3 + 50, 1, -1.9 );
setRotateKey( spep_2-3 + 52, 1, 3.1 );
setRotateKey( spep_2-3 + 54, 1, 8.1 );
setRotateKey( spep_2-3 + 56, 1, 13.1 );
setRotateKey( spep_2-3 + 59, 1, 18.1 );
setRotateKey( spep_2-3 + 60, 1, 0 );
setRotateKey( spep_2-3 + 86, 1, 0 );

--集中線
ryusen1 = entryEffectLife( spep_2 + 0,  921, 98, 0x80, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, ryusen1, 98, 20 );
setEffMoveKey( spep_2 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 1, 1 );
setEffScaleKey( spep_2 + 98, ryusen1, 1, 1 );

setEffRotateKey( spep_2 + 0, ryusen1, 0 );
setEffRotateKey( spep_2 + 98, ryusen1, 0 );

setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 98, ryusen1, 255 );

--SE
playSe( spep_2 + 4, 1007 );
setSeVolume( spep_2 + 4, 1007, 56 );
playSe( spep_2 + 5, 1000 );
playSe( spep_2 + 5, 1032 );
playSe( spep_2 + 15, 1007 );
setSeVolume( spep_2 + 15, 1007, 56 );
playSe( spep_2 + 17, 1000 );
setSeVolume( spep_2 + 17, 1000, 85 );
playSe( spep_2 + 17, 1032 );
setSeVolume( spep_2 + 17, 1032, 71 );
playSe( spep_2 + 27, 1006 );
setSeVolume( spep_2 + 27, 1006, 63 );
playSe( spep_2 + 28, 1000 );
setSeVolume( spep_2 + 28, 1000, 79 );
playSe( spep_2 + 29, 1032 );
setSeVolume( spep_2 + 29, 1032, 85 );
playSe( spep_2 + 42, 1007 );
setSeVolume( spep_2 + 42, 1007, 48 );
playSe( spep_2 + 43, 1000 );
setSeVolume( spep_2 + 43, 1000, 89 );
playSe( spep_2 + 43, 1032 );
setSeVolume( spep_2 + 43, 1032, 77 );
playSe( spep_2 + 66, 1003 );
setSeVolume( spep_2 + 66, 1003, 76 );
playSe( spep_2 + 70, 1010 );
playSe( spep_2 + 71, 1032 );
playSe( spep_2 + 73, 1110 );

--白フェード
entryFade( spep_2+92 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_3=spep_2+ 100;

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
-- 狼牙排球拳
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, attack_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 60, attack_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_f, 0 );
setEffRotateKey( spep_4 + 60, attack_f, 0 );
setEffAlphaKey( spep_4 + 0, attack_f, 255 );
setEffAlphaKey( spep_4 + 60, attack_f, 255 );

--流線
ryusen2 = entryEffectLife( spep_4-3 + 18,  921, 40, 0x80, -1, 0, -152.9, -214.1 );
setEffShake( spep_4-3 + 18, ryusen2, 40, 20 );
setEffMoveKey( spep_4-3 + 18, ryusen2, -152.9, -214.1 , 0 );
setEffMoveKey( spep_4-3 + 58, ryusen2, -152.9, -214.1 , 0 );

setEffScaleKey( spep_4-3 + 18, ryusen2, 2.34, 1.22 );
setEffScaleKey( spep_4-3 + 58, ryusen2, 2.34, 1.22 );

setEffRotateKey( spep_4-3 + 18, ryusen2, -56.8 );
setEffRotateKey( spep_4-3 + 58, ryusen2, -56.8 );

setEffAlphaKey( spep_4-3 + 18, ryusen2, 255 );
setEffAlphaKey( spep_4-3 + 58, ryusen2, 255 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, attack_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 60, attack_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_b, 0 );
setEffRotateKey( spep_4 + 60, attack_b, 0 );
setEffAlphaKey( spep_4 + 0, attack_b, 255 );
setEffAlphaKey( spep_4 + 60, attack_b, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 0,  906, 17-3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen2, 17-3, 20 );
setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4-3 + 17, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen2, 1.24, 1.14 );
setEffScaleKey( spep_4-3 + 17, shuchusen2, 1.24, 1.14 );

setEffRotateKey( spep_4 + 0, shuchusen2, 180 );
setEffRotateKey( spep_4-3 + 17, shuchusen2, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_4-3 + 17, shuchusen2, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, 76.4, 111.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 80.2, 111.7 , 0 );
setMoveKey( spep_4-3 + 4, 1, 83.4, 111.9 , 0 );
setMoveKey( spep_4-3 + 6, 1, 86, 112 , 0 );
setMoveKey( spep_4-3 + 8, 1, 88.1, 112.1 , 0 );
setMoveKey( spep_4-3 + 10, 1, 89.5, 112.1 , 0 );
setMoveKey( spep_4-3 + 12, 1, 140.6, 183 , 0 );
setMoveKey( spep_4-3 + 14, 1, 177.1, 274.2 , 0 );
setMoveKey( spep_4-3 + 16, 1, 205.1, 315.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, 224.3, 358.2 , 0 );
setMoveKey( spep_4-3 + 20, 1, 231.5, 366.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 226.6, 382.3 , 0 );
setMoveKey( spep_4-3 + 24, 1, 239, 381.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, 232.8, 373.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, 240, 382.2 , 0 );
setMoveKey( spep_4-3 + 30, 1, 235.1, 397.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 247.5, 397 , 0 );
setMoveKey( spep_4-3 + 34, 1, 241.4, 389.1 , 0 );
setMoveKey( spep_4-3 + 36, 1, 248.6, 397.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, 243.6, 413.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 256, 412.4 , 0 );
setMoveKey( spep_4-3 + 42, 1, 249.9, 404.5 , 0 );
setMoveKey( spep_4-3 + 44, 1, 257.1, 413.1 , 0 );
setMoveKey( spep_4-3 + 46, 1, 252.2, 428.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 264.6, 427.9 , 0 );
setMoveKey( spep_4-3 + 50, 1, 256.3, 416.1 , 0 );
setMoveKey( spep_4-3 + 52, 1, 261.4, 420.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, 254.3, 432.6 , 0 );
setMoveKey( spep_4-3 + 56, 1, 264.6, 427.9 , 0 );
setMoveKey( spep_4-3 + 58, 1, 256.3, 416.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.5, 1.5 );
--setScaleKey( spep_4-3 + 2, 1, 1.58, 1.58 );
setScaleKey( spep_4-3 + 4, 1, 1.65, 1.65 );
setScaleKey( spep_4-3 + 6, 1, 1.7, 1.7 );
setScaleKey( spep_4-3 + 8, 1, 1.74, 1.74 );
setScaleKey( spep_4-3 + 10, 1, 1.78, 1.78 );
setScaleKey( spep_4-3 + 12, 1, 1.51, 1.51 );
setScaleKey( spep_4-3 + 14, 1, 1.23, 1.23 );
setScaleKey( spep_4-3 + 16, 1, 0.82, 0.82 );
setScaleKey( spep_4-3 + 18, 1, 0.55, 0.55 );
setScaleKey( spep_4-3 + 20, 1, 0.52, 0.52 );
setScaleKey( spep_4-3 + 22, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 24, 1, 0.48, 0.48 );
setScaleKey( spep_4-3 + 26, 1, 0.46, 0.46 );
setScaleKey( spep_4-3 + 28, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 30, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 32, 1, 0.39, 0.39 );
setScaleKey( spep_4-3 + 34, 1, 0.37, 0.37 );
setScaleKey( spep_4-3 + 36, 1, 0.35, 0.35 );
setScaleKey( spep_4-3 + 38, 1, 0.32, 0.32 );
setScaleKey( spep_4-3 + 40, 1, 0.3, 0.3 );
setScaleKey( spep_4-3 + 42, 1, 0.28, 0.28 );
setScaleKey( spep_4-3 + 44, 1, 0.26, 0.26 );
setScaleKey( spep_4-3 + 46, 1, 0.23, 0.23 );
setScaleKey( spep_4-3 + 48, 1, 0.21, 0.21 );
setScaleKey( spep_4-3 + 58, 1, 0.21, 0.21 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 58, 1, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_4-3 + 8,  10019, 28, 0x100, -1, 0, -86.3, 265.9 );--ドンッ
setEffShake( spep_4-3 + 8, ctdon, 28, 10 );
setEffMoveKey( spep_4-3 + 8, ctdon, -86.3, 265.9 , 0 );
setEffMoveKey( spep_4-3 + 10, ctdon, -91.6, 274.9 , 0 );
setEffMoveKey( spep_4-3 + 28, ctdon, -91.6, 274.9 , 0 );
setEffMoveKey( spep_4-3 + 30, ctdon, -75.5, 239.9 , 0 );
setEffMoveKey( spep_4-3 + 32, ctdon, -82.3, 250.3 , 0 );
setEffMoveKey( spep_4-3 + 34, ctdon, -89.2, 260.8 , 0 );
setEffMoveKey( spep_4-3 + 36, ctdon, -96, 271.2 , 0 );

setEffScaleKey( spep_4-3 + 8, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_4-3 + 10, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 12, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_4-3 + 14, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 16, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_4-3 + 18, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 20, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_4-3 + 22, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 24, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_4-3 + 26, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 28, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_4-3 + 30, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 32, ctdon, 2.67, 2.67 );
setEffScaleKey( spep_4-3 + 34, ctdon, 3.12, 3.12 );
setEffScaleKey( spep_4-3 + 36, ctdon, 3.3, 3.3 );

setEffRotateKey( spep_4-3 + 8, ctdon, -6.3 );
setEffRotateKey( spep_4-3 + 36, ctdon, -6.3 );

setEffAlphaKey( spep_4-3 + 8, ctdon, 255 );
setEffAlphaKey( spep_4-3 + 30, ctdon, 255 );
setEffAlphaKey( spep_4-3 + 32, ctdon, 174 );
setEffAlphaKey( spep_4-3 + 34, ctdon, 94 );
setEffAlphaKey( spep_4-3 + 36, ctdon, 13 );

--SE
playSe( spep_4 + 8, 1027 );
setSeVolume( spep_4 + 8, 1027, 79 );
se_0019 = playSe( spep_4 + 8, 19 );
setSeVolume( spep_4 + 8, 19, 89 );
playSe( spep_4 + 8, 1182 );

stopSe( spep_4 + 34, se_0019, 10 );

--白フェード
entryFade( spep_4 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 60;

------------------------------------------------------
-- 変顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
smile = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, smile, 0, 0, 0 );
setEffMoveKey( spep_5 + 70, smile, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, smile, 1.0, 1.0 );
setEffScaleKey( spep_5 + 70, smile, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, smile, 0 );
setEffRotateKey( spep_5 + 70, smile, 0 );
setEffAlphaKey( spep_5 + 0, smile, 255 );
setEffAlphaKey( spep_5 + 70, smile, 255 );
setEffAlphaKey( spep_5 + 71, smile, 0 );
setEffAlphaKey( spep_5 + 72, smile, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_5-3 + 24,  906, 49, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5-3 + 24, shuchusen3, 49, 20 );
setEffMoveKey( spep_5-3 + 24, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 24, shuchusen3, 1.08, 1.18 );
setEffScaleKey( spep_5 -3 + 26, shuchusen3, 1.09, 1.18 );
setEffScaleKey( spep_5 -3 + 28, shuchusen3, 1.29, 1.18 );
setEffScaleKey( spep_5 + 70, shuchusen3, 1.29, 1.18 );

setEffRotateKey( spep_5-3 + 24, shuchusen3, 180 );
setEffRotateKey( spep_5 + 70, shuchusen3, 180 );

setEffAlphaKey( spep_5-3 + 24, shuchusen3, 10 );
setEffAlphaKey( spep_5 -3 + 26, shuchusen3, 18 );
setEffAlphaKey( spep_5 -3 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_5  + 70, shuchusen3, 255 );

--SE
playSe( spep_5 + 26, 1062 );

--白フェード
entryFade( spep_5 + 60, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 70;
------------------------------------------------------
-- レシ－ブ⇒瞬間移動
------------------------------------------------------

-- ** エフェクト等 ** --
receive = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, receive, 0, 0, 0 );
setEffMoveKey( spep_6 + 100, receive, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, receive, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, receive, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, receive, 0 );
setEffRotateKey( spep_6 + 100, receive, 0 );
setEffAlphaKey( spep_6 + 0, receive, 255 );
setEffAlphaKey( spep_6 + 100, receive, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_6-3 + 52,  906, 18, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6-3 + 52, shuchusen4, 18, 20 );
setEffMoveKey( spep_6-3 + 52, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6-3 + 70, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6-3 + 52, shuchusen4, 1, 1 );
setEffScaleKey( spep_6-3 + 64, shuchusen4, 1, 1 );
setEffScaleKey( spep_6-3 + 66, shuchusen4, 1.48, 1.28 );
setEffScaleKey( spep_6-3 + 70, shuchusen4, 1.48, 1.28 );

setEffRotateKey( spep_6-3 + 52, shuchusen4, 180 );
setEffRotateKey( spep_6-3 + 70, shuchusen4, 180 );

setEffAlphaKey( spep_6-3 + 52, shuchusen4, 13 );
setEffAlphaKey( spep_6-3 + 54, shuchusen4, 194 );
setEffAlphaKey( spep_6-3 + 56, shuchusen4, 255 );
setEffAlphaKey( spep_6-3 + 66, shuchusen4, 255 );
setEffAlphaKey( spep_6-3 + 68, shuchusen4, 43 );
setEffAlphaKey( spep_6-3 + 70, shuchusen4, 13 );

--文字エントリー
ctzudododo = entryEffectLife( spep_6-3 + 6,  10014, 20, 0x100, -1, 0, -189, 13.7 );
setEffShake( spep_6-3 + 6, ctzudododo, 20, 10 );
setEffMoveKey( spep_6-3 + 6, ctzudododo, -189, 13.7 , 0 );
setEffMoveKey( spep_6-3 + 8, ctzudododo, -130.3, 27.1 , 0 );
setEffMoveKey( spep_6-3 + 10, ctzudododo, -124.2, 38.9 , 0 );
setEffMoveKey( spep_6-3 + 12, ctzudododo, -62.2, 53.7 , 0 );
setEffMoveKey( spep_6-3 + 14, ctzudododo, -59.3, 64 , 0 );
setEffMoveKey( spep_6-3 + 16, ctzudododo, 5.8, 80.5 , 0 );
setEffMoveKey( spep_6-3 + 18, ctzudododo, 5.5, 89.2 , 0 );
setEffMoveKey( spep_6-3 + 20, ctzudododo, 73.6, 107.7 , 0 );
setEffMoveKey( spep_6-3 + 22, ctzudododo, 70.4, 114.4 , 0 );
setEffMoveKey( spep_6-3 + 24, ctzudododo, 141.4, 135.1 , 0 );
setEffMoveKey( spep_6-3 + 26, ctzudododo, 135.2, 139.6 , 0 );

setEffScaleKey( spep_6-3 + 6, ctzudododo, 1.5, 1.5 );
setEffScaleKey( spep_6-3 + 8, ctzudododo, 1.6, 1.6 );
setEffScaleKey( spep_6-3 + 10, ctzudododo, 1.7, 1.7 );
setEffScaleKey( spep_6-3 + 12, ctzudododo, 1.8, 1.8 );
setEffScaleKey( spep_6-3 + 14, ctzudododo, 1.9, 1.9 );
setEffScaleKey( spep_6-3 + 16, ctzudododo, 2, 2 );
setEffScaleKey( spep_6-3 + 18, ctzudododo, 2.1, 2.1 );
setEffScaleKey( spep_6-3 + 20, ctzudododo, 2.2, 2.2 );
setEffScaleKey( spep_6-3 + 22, ctzudododo, 2.3, 2.3 );
setEffScaleKey( spep_6-3 + 24, ctzudododo, 2.4, 2.4 );
setEffScaleKey( spep_6-3 + 26, ctzudododo, 2.5, 2.5 );

setEffRotateKey( spep_6-3 + 6, ctzudododo, 17.8 );
setEffRotateKey( spep_6-3 + 8, ctzudododo, 16.6 );
setEffRotateKey( spep_6-3 + 10, ctzudododo, 15.4 );
setEffRotateKey( spep_6-3 + 12, ctzudododo, 14.1 );
setEffRotateKey( spep_6-3 + 14, ctzudododo, 12.8 );
setEffRotateKey( spep_6-3 + 16, ctzudododo, 11.6 );
setEffRotateKey( spep_6-3 + 18, ctzudododo, 10.3 );
setEffRotateKey( spep_6-3 + 20, ctzudododo, 9 );
setEffRotateKey( spep_6-3 + 22, ctzudododo, 7.8 );
setEffRotateKey( spep_6-3 + 24, ctzudododo, 6.5 );
setEffRotateKey( spep_6-3 + 26, ctzudododo, 5.2 );

setEffAlphaKey( spep_6-3 + 6, ctzudododo, 255 );
setEffAlphaKey( spep_6-3 + 20, ctzudododo, 255 );
setEffAlphaKey( spep_6-3 + 22, ctzudododo, 174 );
setEffAlphaKey( spep_6-3 + 24, ctzudododo, 94 );
setEffAlphaKey( spep_6-3 + 26, ctzudododo, 13 );

--文字エントリー
ctdon2 = entryEffectLife( spep_6-3 + 56,  10019, 20, 0x100, -1, 0, -113.3, -8 );
setEffShake( spep_6-3 + 56, ctdon2, 20, 10 );
setEffMoveKey( spep_6-3 + 56, ctdon2, -113.3, -8 , 0 );
setEffMoveKey( spep_6-3 + 58, ctdon2, -119.8, 17.2 , 0 );
setEffMoveKey( spep_6-3 + 60, ctdon2, -126.2, 42.3 , 0 );
setEffMoveKey( spep_6-3 + 62, ctdon2, -132.7, 67.4 , 0 );
setEffMoveKey( spep_6-3 + 64, ctdon2, -139.1, 92.5 , 0 );
setEffMoveKey( spep_6-3 + 66, ctdon2, -145.6, 117.7 , 0 );
setEffMoveKey( spep_6-3 + 68, ctdon2, -152, 142.8 , 0 );
setEffMoveKey( spep_6-3 + 70, ctdon2, -158.5, 167.9 , 0 );
setEffMoveKey( spep_6-3 + 72, ctdon2, -158.4, 167.9 , 0 );
setEffMoveKey( spep_6-3 + 74, ctdon2, -158.5, 167.9 , 0 );
setEffMoveKey( spep_6-3 + 76, ctdon2, -158.4, 167.9 , 0 );

setEffScaleKey( spep_6-3 + 56, ctdon2, 1, 1 );
setEffScaleKey( spep_6-3 + 58, ctdon2, 1.26, 1.26 );
setEffScaleKey( spep_6-3 + 60, ctdon2, 1.28, 1.28 );
setEffScaleKey( spep_6-3 + 62, ctdon2, 1.57, 1.57 );
setEffScaleKey( spep_6-3 + 64, ctdon2, 1.57, 1.57 );
setEffScaleKey( spep_6-3 + 66, ctdon2, 1.88, 1.88 );
setEffScaleKey( spep_6-3 + 68, ctdon2, 1.86, 1.86 );
setEffScaleKey( spep_6-3 + 70, ctdon2, 2, 2 );
setEffScaleKey( spep_6-3 + 72, ctdon2, 2.2, 2.2 );
setEffScaleKey( spep_6-3 + 74, ctdon2, 2, 2 );
setEffScaleKey( spep_6-3 + 76, ctdon2, 2.2, 2.2 );

setEffRotateKey( spep_6-3 + 56, ctdon2, -19.1 );
setEffRotateKey( spep_6-3 + 66, ctdon2, -19.1 );
setEffRotateKey( spep_6-3 + 68, ctdon2, -19 );
setEffRotateKey( spep_6-3 + 76, ctdon2, -19 );

setEffAlphaKey( spep_6-3 + 56, ctdon2, 255 );
setEffAlphaKey( spep_6-3 + 70, ctdon2, 255 );
setEffAlphaKey( spep_6-3 + 72, ctdon2, 174 );
setEffAlphaKey( spep_6-3 + 74, ctdon2, 94 );
setEffAlphaKey( spep_6-3 + 76, ctdon2, 13 );

--敵の動き
setDisp( spep_6-3 + 36 , 1, 1 );
setDisp( spep_6-3 + 74, 1, 0 );

changeAnime( spep_6-3 + 36, 1, 108 );

setMoveKey( spep_6-3 + 36, 1, -656.6, 852.5 , 0 );
setMoveKey( spep_6-3 + 38, 1, -605.4, 830.8 , 0 );
setMoveKey( spep_6-3 + 40, 1, -521.1, 771.1 , 0 );
setMoveKey( spep_6-3 + 42, 1, -356.2, 607.9 , 0 );
setMoveKey( spep_6-3 + 44, 1, -207, 430.7 , 0 );
setMoveKey( spep_6-3 + 46, 1, -146.8, 355.5 , 0 );
setMoveKey( spep_6-3 + 48, 1, -117.8, 319.9 , 0 );
setMoveKey( spep_6-3 + 50, 1, -103.2, 303.4 , 0 );
setMoveKey( spep_6-3 + 52, 1, -2.9, 159.8 , 0 );
setMoveKey( spep_6-3 + 54, 1, 98.2, -15.5 , 0 );
setMoveKey( spep_6-3 + 55, 1, 98.2, -15.5 , 0 );
setMoveKey( spep_6-3 + 56, 1, 138.7, 175.3 , 0 );
setMoveKey( spep_6-3 + 58, 1, 244.8, 250.1 , 0 );
setMoveKey( spep_6-3 + 60, 1, 348.6, 316 , 0 );
setMoveKey( spep_6-3 + 62, 1, 442.2, 370.5 , 0 );
setMoveKey( spep_6-3 + 64, 1, 531.8, 418.4 , 0 );
setMoveKey( spep_6-3 + 66, 1, 616.7, 464.2 , 0 );
setMoveKey( spep_6-3 + 68, 1, 697, 507.1 , 0 );
setMoveKey( spep_6-3 + 70, 1, 772.7, 547.2 , 0 );
setMoveKey( spep_6-3 + 72, 1, 843.8, 584.5 , 0 );
setMoveKey( spep_6-3 + 74, 1, 818, 562.4 , 0 );

setScaleKey( spep_6-3 + 36, 1, 2.73, 2.73 );
setScaleKey( spep_6-3 + 38, 1, 2.6, 2.6 );
setScaleKey( spep_6-3 + 40, 1, 2.48, 2.48 );
setScaleKey( spep_6-3 + 42, 1, 2.35, 2.35 );
setScaleKey( spep_6-3 + 44, 1, 2.22, 2.22 );
setScaleKey( spep_6-3 + 46, 1, 2.16, 2.16 );
setScaleKey( spep_6-3 + 48, 1, 2.1, 2.1 );
setScaleKey( spep_6-3 + 50, 1, 2.03, 2.03 );
setScaleKey( spep_6-3 + 52, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 54, 1, 1.85, 1.85 );
setScaleKey( spep_6-3 + 55, 1, 1.85, 1.85 );
setScaleKey( spep_6-3 + 56, 1, 2.01, 2.01 );
setScaleKey( spep_6-3 + 58, 1, 2.09, 2.09 );
setScaleKey( spep_6-3 + 60, 1, 2.18, 2.18 );
setScaleKey( spep_6-3 + 62, 1, 2.26, 2.26 );
setScaleKey( spep_6-3 + 64, 1, 2.33, 2.33 );
setScaleKey( spep_6-3 + 66, 1, 2.39, 2.39 );
setScaleKey( spep_6-3 + 68, 1, 2.45, 2.45 );
setScaleKey( spep_6-3 + 70, 1, 2.51, 2.51 );
setScaleKey( spep_6-3 + 72, 1, 2.56, 2.56 );
setScaleKey( spep_6-3 + 74, 1, 2.5, 2.5 );

setRotateKey( spep_6-3 + 36, 1, 16.6 );
setRotateKey( spep_6-3 + 38, 1, 16.7 );
setRotateKey( spep_6-3 + 44, 1, 16.7 );
setRotateKey( spep_6-3 + 46, 1, 17.3 );
setRotateKey( spep_6-3 + 48, 1, 18 );
setRotateKey( spep_6-3 + 50, 1, 18.7 );
setRotateKey( spep_6-3 + 52, 1, 20.4 );
setRotateKey( spep_6-3 + 54, 1, 22.2 );
setRotateKey( spep_6-3 + 55, 1, 22.2 );
setRotateKey( spep_6-3 + 56, 1, 68.5 );
setRotateKey( spep_6-3 + 58, 1, 68.5 );
setRotateKey( spep_6-3 + 60, 1, 68.4 );
setRotateKey( spep_6-3 + 62, 1, 68.3 );
setRotateKey( spep_6-3 + 64, 1, 68.2 );
setRotateKey( spep_6-3 + 66, 1, 68.2 );
setRotateKey( spep_6-3 + 68, 1, 68.1 );
setRotateKey( spep_6-3 + 70, 1, 68 );
setRotateKey( spep_6-3 + 74, 1, 68 );

--SE
playSe( spep_6 + 0, 1108 );
playSe( spep_6 + 5, 1108 );
setSeVolume( spep_6 + 5, 1108, 120 );
playSe( spep_6 + 11, 1108 );
setSeVolume( spep_6 + 11, 1108, 112 );
playSe( spep_6 + 16, 1108 );
setSeVolume( spep_6 + 16, 1108, 155 );
playSe( spep_6 + 52, 1251 );
setSeVolume( spep_6 + 52, 1251, 112 );
playSe( spep_6 + 75, 1109 );
setSeVolume( spep_6 + 75, 1109, 62 );

--白フェード
entryFade( spep_6 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 100;
------------------------------------------------------
-- アタック⇒敵手前に吹っ飛び
------------------------------------------------------
-- ** エフェクト等 ** --
attack = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, attack, 0, 0, 0 );
setEffMoveKey( spep_7 + 80, attack, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_7 + 80, attack, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, attack, 0 );
setEffRotateKey( spep_7 + 80, attack, 0 );
setEffAlphaKey( spep_7 + 0, attack, 255 );
setEffAlphaKey( spep_7 + 80, attack, 255 );

--敵の動き
setDisp( spep_7-3 + 12, 1, 1 );
setDisp( spep_7-3 + 78, 1, 0 );

changeAnime( spep_7-3 + 12, 1, 108 );
changeAnime( spep_7-3 + 30, 1, 107 );

setMoveKey( spep_7-3 + 12, 1, -275.9, -774.7 , 0 );
setMoveKey( spep_7-3 + 14, 1, -206, -595.3 , 0 );
setMoveKey( spep_7-3 + 16, 1, -138.8, -416.3 , 0 );
setMoveKey( spep_7-3 + 18, 1, -71.5, -237.2 , 0 );
setMoveKey( spep_7-3 + 20, 1, -54.7, -181.6 , 0 );
setMoveKey( spep_7-3 + 22, 1, -37.9, -125.9 , 0 );
setMoveKey( spep_7-3 + 24, 1, -21, -70.2 , 0 );
setMoveKey( spep_7-3 + 26, 1, -4.2, -14.6 , 0 );
setMoveKey( spep_7-3 + 28, 1, 15.1, 35.2 , 0 );
setMoveKey( spep_7-3 + 29, 1, 15.1, 35.2 , 0 );

setMoveKey( spep_7-3 + 30, 1, 48.2, -99.5 , 0 );
setMoveKey( spep_7-3 + 32, 1, 58.1, -140.5 , 0 );
setMoveKey( spep_7-3 + 34, 1, 50.9, -121.4 , 0 );
setMoveKey( spep_7-3 + 36, 1, 60.1, -145.9 , 0 );
setMoveKey( spep_7-3 + 38, 1, 63.2, -154.1 , 0 );
setMoveKey( spep_7-3 + 40, 1, 56.1, -137.8 , 0 );
setMoveKey( spep_7-3 + 42, 1, 56.7, -141.8 , 0 );
setMoveKey( spep_7-3 + 44, 1, 61.6, -157.5 , 0 );
setMoveKey( spep_7-3 + 46, 1, 66.6, -173.1 , 0 );
setMoveKey( spep_7-3 + 48, 1, 71.6, -188.8 , 0 );
setMoveKey( spep_7-3 + 50, 1, 76.5, -204.4 , 0 );
setMoveKey( spep_7-3 + 52, 1, 81.5, -220.1 , 0 );
setMoveKey( spep_7-3 + 54, 1, 86.4, -235.7 , 0 );
setMoveKey( spep_7-3 + 56, 1, 91.4, -251.4 , 0 );
setMoveKey( spep_7-3 + 58, 1, 96.4, -267 , 0 );
setMoveKey( spep_7-3 + 60, 1, 101.3, -282.7 , 0 );
setMoveKey( spep_7-3 + 62, 1, 106.3, -298.3 , 0 );
setMoveKey( spep_7-3 + 64, 1, 111.2, -314 , 0 );
setMoveKey( spep_7-3 + 66, 1, 116.2, -329.6 , 0 );
setMoveKey( spep_7-3 + 68, 1, 121.2, -345.3 , 0 );
setMoveKey( spep_7-3 + 70, 1, 126.1, -360.9 , 0 );
setMoveKey( spep_7-3 + 72, 1, 131.1, -376.6 , 0 );
setMoveKey( spep_7-3 + 74, 1, 136, -392.2 , 0 );
setMoveKey( spep_7-3 + 76, 1, 141, -407.9 , 0 );
setMoveKey( spep_7-3 + 78, 1, 146, -423.6 , 0 );

setScaleKey( spep_7-3 + 12, 1, 1.6, 1.6 );
setScaleKey( spep_7-3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7-3 + 28, 1, 1.76, 1.76 );
setScaleKey( spep_7-3 + 29, 1, 1.76, 1.76 );

setScaleKey( spep_7-3 + 30, 1, 1.4, 1.4 );
setScaleKey( spep_7-3 + 32, 1, 1.14, 1.14 );
setScaleKey( spep_7-3 + 34, 1, 1.05, 1.05 );
setScaleKey( spep_7-3 + 36, 1, 1.16, 1.16 );
setScaleKey( spep_7-3 + 38, 1, 1.2, 1.2 );
setScaleKey( spep_7-3 + 40, 1, 1.11, 1.11 );
setScaleKey( spep_7-3 + 42, 1, 1.11, 1.11 );
setScaleKey( spep_7-3 + 44, 1, 1.17, 1.17 );
setScaleKey( spep_7-3 + 46, 1, 1.22, 1.22 );
setScaleKey( spep_7-3 + 48, 1, 1.28, 1.28 );
setScaleKey( spep_7-3 + 50, 1, 1.34, 1.34 );
setScaleKey( spep_7-3 + 52, 1, 1.39, 1.39 );
setScaleKey( spep_7-3 + 54, 1, 1.45, 1.45 );
setScaleKey( spep_7-3 + 56, 1, 1.5, 1.5 );
setScaleKey( spep_7-3 + 58, 1, 1.56, 1.56 );
setScaleKey( spep_7-3 + 60, 1, 1.62, 1.62 );
setScaleKey( spep_7-3 + 62, 1, 1.67, 1.67 );
setScaleKey( spep_7-3 + 64, 1, 1.73, 1.73 );
setScaleKey( spep_7-3 + 66, 1, 1.78, 1.78 );
setScaleKey( spep_7-3 + 68, 1, 1.84, 1.84 );
setScaleKey( spep_7-3 + 70, 1, 1.9, 1.9 );
setScaleKey( spep_7-3 + 72, 1, 1.95, 1.95 );
setScaleKey( spep_7-3 + 74, 1, 2.01, 2.01 );
setScaleKey( spep_7-3 + 76, 1, 2.06, 2.06 );
setScaleKey( spep_7-3 + 78, 1, 2.12, 2.12 );

setRotateKey( spep_7-3 + 12, 1, 51.7 );
setRotateKey( spep_7-3 + 29, 1, 51.7 );

setRotateKey( spep_7-3 + 30, 1, 0 );
setRotateKey( spep_7-3 + 78, 1, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_7-3 + 30,  10021, 48, 0x100, -1, 0, 126.9, 374.4 );
setEffShake( spep_7-3 + 30, ctbago, 48, 10 );
setEffMoveKey( spep_7-3 + 30, ctbago, 126.9, 374.4 , 0 );
setEffMoveKey( spep_7-3 + 32, ctbago, 137.3, 383.2 , 0 );
setEffMoveKey( spep_7-3 + 34, ctbago, 140.8, 375.6 , 0 );
setEffMoveKey( spep_7-3 + 36, ctbago, 193, 397.6 , 0 );
setEffMoveKey( spep_7-3 + 38, ctbago, 173.7, 378.4 , 0 );
setEffMoveKey( spep_7-3 + 40, ctbago, 193, 397.7 , 0 );
setEffMoveKey( spep_7-3 + 42, ctbago, 173.7, 378.6 , 0 );
setEffMoveKey( spep_7-3 + 44, ctbago, 193.1, 398.2 , 0 );
setEffMoveKey( spep_7-3 + 46, ctbago, 173.9, 379.5 , 0 );
setEffMoveKey( spep_7-3 + 48, ctbago, 193.2, 399.4 , 0 );
setEffMoveKey( spep_7-3 + 50, ctbago, 174.2, 381.4 , 0 );
setEffMoveKey( spep_7-3 + 52, ctbago, 193.5, 401.8 , 0 );
setEffMoveKey( spep_7-3 + 54, ctbago, 174.7, 384.8 , 0 );
setEffMoveKey( spep_7-3 + 56, ctbago, 193.9, 405.9 , 0 );
setEffMoveKey( spep_7-3 + 58, ctbago, 175.6, 390.1 , 0 );
setEffMoveKey( spep_7-3 + 60, ctbago, 194.5, 411.8 , 0 );
setEffMoveKey( spep_7-3 + 62, ctbago, 176.9, 397.7 , 0 );
setEffMoveKey( spep_7-3 + 64, ctbago, 195.4, 420.2 , 0 );
setEffMoveKey( spep_7-3 + 66, ctbago, 178.6, 408.1 , 0 );
setEffMoveKey( spep_7-3 + 68, ctbago, 196.5, 431.3 , 0 );
setEffMoveKey( spep_7-3 + 70, ctbago, 180.8, 421.6 , 0 );
setEffMoveKey( spep_7-3 + 72, ctbago, 198, 445.5 , 0 );
setEffMoveKey( spep_7-3 + 74, ctbago, 183.6, 438.8 , 0 );
setEffMoveKey( spep_7-3 + 76, ctbago, 199.8, 463.3 , 0 );
setEffMoveKey( spep_7-3 + 78, ctbago, 187, 460 , 0 );

setEffScaleKey( spep_7-3 + 30, ctbago, 1.5, 1.5 );
setEffScaleKey( spep_7-3 + 32, ctbago, 1.57, 1.57 );
setEffScaleKey( spep_7-3 + 34, ctbago, 2.09, 2.09 );
setEffScaleKey( spep_7-3 + 36, ctbago, 3.49, 3.49 );
setEffScaleKey( spep_7-3 + 44, ctbago, 3.49, 3.49 );
setEffScaleKey( spep_7-3 + 46, ctbago, 3.48, 3.48 );
setEffScaleKey( spep_7-3 + 48, ctbago, 3.47, 3.47 );
setEffScaleKey( spep_7-3 + 50, ctbago, 3.46, 3.46 );
setEffScaleKey( spep_7-3 + 52, ctbago, 3.44, 3.44 );
setEffScaleKey( spep_7-3 + 54, ctbago, 3.42, 3.42 );
setEffScaleKey( spep_7-3 + 56, ctbago, 3.39, 3.39 );
setEffScaleKey( spep_7-3 + 58, ctbago, 3.35, 3.35 );
setEffScaleKey( spep_7-3 + 60, ctbago, 3.31, 3.31 );
setEffScaleKey( spep_7-3 + 62, ctbago, 3.26, 3.26 );
setEffScaleKey( spep_7-3 + 64, ctbago, 3.2, 3.2 );
setEffScaleKey( spep_7-3 + 66, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_7-3 + 68, ctbago, 3.05, 3.05 );
setEffScaleKey( spep_7-3 + 70, ctbago, 2.96, 2.96 );
setEffScaleKey( spep_7-3 + 72, ctbago, 2.87, 2.87 );
setEffScaleKey( spep_7-3 + 74, ctbago, 2.76, 2.76 );
setEffScaleKey( spep_7-3 + 76, ctbago, 2.63, 2.63 );
setEffScaleKey( spep_7-3 + 78, ctbago, 2.5, 2.5 );

setEffRotateKey( spep_7-3 + 30, ctbago, 31.9 );
setEffRotateKey( spep_7-3 + 32, ctbago, 31.9 );
setEffRotateKey( spep_7-3 + 34, ctbago, 31.8 );
setEffRotateKey( spep_7-3 + 78, ctbago, 31.8 );

setEffAlphaKey( spep_7-3 + 30, ctbago, 255 );
setEffAlphaKey( spep_7-3 + 78, ctbago, 255 );

--SE
playSe( spep_7 + 10, 1109 );
playSe( spep_7 + 27, 1003 );
playSe( spep_7 + 28, 1009 );
setSeVolume( spep_7 + 28, 1009, 81 );
playSe( spep_7 + 30, 1120 );

--白フェード
entryFade( spep_7 + 26, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 72, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 80;

------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_8 + 0, 1, 1 );
changeAnime( spep_8 + 0, 1, 107 );
setMoveKey( spep_8 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_8 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_8 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_8 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_8 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_8 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_8 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_8 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_8 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_8 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_8 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_8 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_8 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_8 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_8 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_8 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_8 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_8 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_8 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_8 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_8 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_8 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_8 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_8 + 0, 1, 0-z );
setRotateKey( spep_8 + 2, 1, 105-z );
setRotateKey( spep_8 + 4, 1, 240-z );
setRotateKey( spep_8 + 6, 1, 405-z );
setRotateKey( spep_8 + 8, 1, 600-z );
setRotateKey( spep_8 + 10, 1, 825-z );
setRotateKey( spep_8 + 12, 1, 1080-z );
setRotateKey( spep_8 + 110, 1, 1080-z );

-- ** エフェクト等 ** --
bg = entryEffect( spep_8 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_8 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_8 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, bg, 0 );
setEffRotateKey( spep_8 + 100, bg, 0 );
setEffAlphaKey( spep_8 + 0, bg, 255 );
setEffAlphaKey( spep_8 + 100, bg, 255 );

--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_8 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_8 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_8 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_8 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_8 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_8 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_8 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_8 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_8 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_8 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_8 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_8 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_8 + 112, bakuhatsu, 255 );
]]--

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_8 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_8 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_8 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_8 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_8 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_8 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_8 + 14, shuchusen4, 0 );
setEffRotateKey( spep_8 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_8 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_8 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_8 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_8 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_8 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_8 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_8 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_8 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_8 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_8 + 14,  1657, 86 +10, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_8 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100 +10, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_8 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_8 + 100 +10, shuchusen5, 1, 1 );

setEffRotateKey( spep_8 + 14, shuchusen5, 0 );
setEffRotateKey( spep_8 + 100 +10, shuchusen5, 0 );

setEffAlphaKey( spep_8 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_8 + 100 +10, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_8 + 14,  10005, 86 +10, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_8 + 14, ctga, 14, 20 );

setEffMoveKey( spep_8 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 100 +10, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_8 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_8 + 100 +10, ctga, 3.2, 3.2 );

setEffRotateKey( spep_8 + 14, ctga, -10.9 );
setEffRotateKey( spep_8 + 15, ctga, -10.9 );
setEffRotateKey( spep_8 + 16, ctga, -14.9 );
setEffRotateKey( spep_8 + 17, ctga, -14.9 );
setEffRotateKey( spep_8 + 18, ctga, -10.9 );
setEffRotateKey( spep_8 + 19, ctga, -10.9 );
setEffRotateKey( spep_8 + 20, ctga, -14.9 );
setEffRotateKey( spep_8 + 21, ctga, -14.9 );
setEffRotateKey( spep_8 + 22, ctga, -10.9 );
setEffRotateKey( spep_8 + 23, ctga, -10.9 );
setEffRotateKey( spep_8 + 24, ctga, -14.9 );
setEffRotateKey( spep_8 + 25, ctga, -14.9 );
setEffRotateKey( spep_8 + 26, ctga, -10.9 );
setEffRotateKey( spep_8 + 27, ctga, -10.9 );
setEffRotateKey( spep_8 + 28, ctga, -14.9 );
setEffRotateKey( spep_8 + 100 +10, ctga, -14.9 );

setEffAlphaKey( spep_8 + 14, ctga, 255 );
setEffAlphaKey( spep_8 + 100 +10, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_8 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_8 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_8 + 100 +10, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_8 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_8 + 100 +10, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_8 + 2, hibiware, 0 );
setEffRotateKey( spep_8 + 100 +10, hibiware, 0 );

setEffAlphaKey( spep_8 + 2, hibiware, 0 );
setEffAlphaKey( spep_8 + 13, hibiware, 0 );
setEffAlphaKey( spep_8 + 14, hibiware, 255 );
setEffAlphaKey( spep_8 + 100 +10, hibiware, 255 );

--SE
playSe( spep_8 + 0, 1023 );
playSe( spep_8 + 14, 1054 );
playSe( spep_8 + 14, 19 );

--終わり
dealDamage( spep_8 +10 );
endPhase( spep_8 + 100 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気だめ⇒セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 176, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 176, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 176, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 30,  906, 128, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 30, shuchusen1, 128, 20 );
setEffMoveKey( spep_0-3 + 30, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 158, shuchusen1, 0, 0 , 0 );

setEffMoveKey( spep_0-3 + 30, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 158, shuchusen1, 0, 0 , 0 );

setEffRotateKey( spep_0-3 + 30, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 158, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 158, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+68  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+68  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctzuzuzun = entryEffectLife( spep_0-3 + 32,  10013, 40, 0x100, -1, 0, 20.1, 249.8 );
setEffShake( spep_0-3 + 32, ctzuzuzun, 40, 10 );
setEffMoveKey( spep_0-3 + 32, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0-3 + 34, ctzuzuzun, 29.2, 317.4 , 0 );
setEffMoveKey( spep_0-3 + 36, ctzuzuzun, 51.2, 394.7 , 0 );
setEffMoveKey( spep_0-3 + 38, ctzuzuzun, 38.3, 377.6 , 0 );
setEffMoveKey( spep_0-3 + 40, ctzuzuzun, 43.3, 371.9 , 0 );
setEffMoveKey( spep_0-3 + 42, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 44, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 46, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 48, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 50, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 52, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 54, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 56, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 58, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 60, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 62, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 64, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 66, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 68, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 72, ctzuzuzun, 30.9, 354.4 , 0 );

setEffScaleKey( spep_0-3 + 32, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0-3 + 34, ctzuzuzun, 1.99, 1.99 );
setEffScaleKey( spep_0-3 + 36, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0-3 + 38, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0-3 + 72, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0-3 + 32, ctzuzuzun, -5 );
setEffRotateKey( spep_0-3 + 72, ctzuzuzun, -5 );

setEffAlphaKey( spep_0-3 + 32, ctzuzuzun, 255 );
setEffAlphaKey( spep_0-3 + 60, ctzuzuzun, 255 );
setEffAlphaKey( spep_0-3 + 62, ctzuzuzun, 212 );
setEffAlphaKey( spep_0-3 + 64, ctzuzuzun, 170 );
setEffAlphaKey( spep_0-3 + 66, ctzuzuzun, 128 );
setEffAlphaKey( spep_0-3 + 68, ctzuzuzun, 85 );
setEffAlphaKey( spep_0-3 + 70, ctzuzuzun, 43 );
setEffAlphaKey( spep_0-3 + 72, ctzuzuzun, 0 );



-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +80, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +80,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +152,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +80, ctgogo, 0 );
setEffAlphaKey( spep_0 + 81, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 + 146, ctgogo, 255 );
setEffAlphaKey( spep_0 + 148, ctgogo, 191 );
setEffAlphaKey( spep_0 + 150, ctgogo, 112 );
setEffAlphaKey( spep_0 + 152, ctgogo, 64 );

setEffRotateKey(  spep_0 +80,  ctgogo,  0);
setEffRotateKey(  spep_0 +152,  ctgogo,  0);

setEffScaleKey(  spep_0 +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +142,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +152,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 36, 1035 );
playSe( spep_0 + 80, 1018 );--顔カットイン
se_1146 = playSe( spep_0 + 158, 1146 );
setSeVolume( spep_0 + 158, 1146, 0 );
se_1109 = playSe( spep_0 + 168, 1109 );
se_1116 = playSe( spep_0 + 168, 1116 );
playSe( spep_0 + 172, 44 );

--はじめの準備
spep_1=spep_0+ 176;
------------------------------------------------------
-- 流背⇒攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_1 + 70, rush, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 70, rush, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 70, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 70, rush, 255 );

--SE
setSeVolume( spep_1 + 0, 1146, 0 );
setSeVolume( spep_1 + 1, 1146, 8.29 );
setSeVolume( spep_1 + 2, 1146, 16.59 );
setSeVolume( spep_1 + 3, 1146, 24.88 );
setSeVolume( spep_1 + 4, 1146, 33.18 );
setSeVolume( spep_1 + 5, 1146, 41.47 );
setSeVolume( spep_1 + 6, 1146, 49.76 );
setSeVolume( spep_1 + 7, 1146, 58.06 );
setSeVolume( spep_1 + 8, 1146, 66.35 );
setSeVolume( spep_1 + 9, 1146, 74.65 );
setSeVolume( spep_1 + 10, 1146, 82.94 );
setSeVolume( spep_1 + 11, 1146, 91.24 );
setSeVolume( spep_1 + 12, 1146, 99.53 );
setSeVolume( spep_1 + 13, 1146, 107.82 );
setSeVolume( spep_1 + 14, 1146, 116.12 );
setSeVolume( spep_1 + 15, 1146, 124.41 );
setSeVolume( spep_1 + 16, 1146, 132.71 );
setSeVolume( spep_1 + 17, 1146, 141 );
SE0=playSe( spep_1 + 15, 1222 );
setSeVolume( spep_1 + 15, 1222, 112 );
SE1=playSe( spep_1 + 15, 1026 );
setSeVolume( spep_1 + 15, 1026, 112 );
SE2=playSe( spep_1 + 24, 1072 );

stopSe( spep_1 + 13, se_1116, 27 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1146, 0 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );

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


stopSe( spep_1 + 42, se_1146, 82 );
--白フェード
entryFade( spep_1+62 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_2=spep_1+ 70;

------------------------------------------------------
-- 連続攻撃エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 100, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 100, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 100, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 100, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 100, fighting_b, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 14,  10020, 13, 0x100, -1, 0, 191.9, 34 );--バキッ
setEffShake( spep_2-3 + 14, ctbaki, 13, 10 );
setEffMoveKey( spep_2-3 + 14, ctbaki, 191.9, 34 , 0 );
setEffMoveKey( spep_2-3 + 16, ctbaki, 204.6, 44.6 , 0 );
setEffMoveKey( spep_2-3 + 18, ctbaki, 204.3, 58.9 , 0 );
setEffMoveKey( spep_2-3 + 20, ctbaki, 212, 55.9 , 0 );
setEffMoveKey( spep_2-3 + 22, ctbaki, 205.9, 62 , 0 );
setEffMoveKey( spep_2-3 + 27, ctbaki, 212, 55.9 , 0 );

setEffScaleKey( spep_2-3 + 14, ctbaki, 0.58, 0.58 );
--setEffScaleKey( spep_2-3 + 16, ctbaki, 0.25, 0.25 );
--setEffScaleKey( spep_2-3 + 18, ctbaki, 0.29, 0.29 );
setEffScaleKey( spep_2-3 + 20, ctbaki, 1.01, 1.01 );
setEffScaleKey( spep_2-3 + 27, ctbaki, 1.01, 1.01 );

setEffRotateKey( spep_2-3 + 14, ctbaki, 0 );
setEffRotateKey( spep_2-3 + 27, ctbaki, 0 );

setEffAlphaKey( spep_2-3 + 14, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 27, ctbaki, 255 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_2-3 + 28,  10020, 13, 0x100, -1, 0, 131.9, -46 );--バキッ
setEffShake( spep_2-3 + 28, ctbaki2, 13, 10 );
setEffMoveKey( spep_2-3 + 28, ctbaki2, 131.9, -46 , 0 );
setEffMoveKey( spep_2-3 + 30, ctbaki2, 87.2, 35.4 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbaki2, 44.8, 85.6 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbaki2, 47.4, 100 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbaki2, 34, 102 , 0 );
setEffMoveKey( spep_2-3 + 41, ctbaki2, 47.4, 100 , 0 );

setEffScaleKey( spep_2-3 + 28, ctbaki2, 0.58, 0.58 );
--setEffScaleKey( spep_2-3 + 30, ctbaki2, 0.35, 0.35 );
--setEffScaleKey( spep_2-3 + 32, ctbaki2, 0.45, 0.45 );
setEffScaleKey( spep_2-3 + 34, ctbaki2, 1.58, 1.58 );
setEffScaleKey( spep_2-3 + 41, ctbaki2, 1.58, 1.58 );

setEffRotateKey( spep_2-3 + 28, ctbaki2, -44.5 );
setEffRotateKey( spep_2-3 + 30, ctbaki2, -40.2 );
setEffRotateKey( spep_2-3 + 32, ctbaki2, -37.6 );
setEffRotateKey( spep_2-3 + 34, ctbaki2, -36.7 );
setEffRotateKey( spep_2-3 + 41, ctbaki2, -36.7 );

setEffAlphaKey( spep_2-3 + 28, ctbaki2, 255 );
setEffAlphaKey( spep_2-3 + 41, ctbaki2, 255 );

--文字エントリー
ctbaki3 = entryEffectLife( spep_2-3 + 42,  10020, 12, 0x100, -1, 0, 249.9, -14 );
setEffShake( spep_2-3 + 42, ctbaki3, 12, 10 );
setEffMoveKey( spep_2-3 + 42, ctbaki3, 249.9, -14 , 0 );
setEffMoveKey( spep_2-3 + 44, ctbaki3, 252.4, 52.9 , 0 );
setEffMoveKey( spep_2-3 + 46, ctbaki3, 253.5, 114 , 0 );
setEffMoveKey( spep_2-3 + 48, ctbaki3, 254.3, 110.4 , 0 );
setEffMoveKey( spep_2-3 + 50, ctbaki3, 253.9, 130 , 0 );
setEffMoveKey( spep_2-3 + 54, ctbaki3, 254.3, 110.4 , 0 );

setEffScaleKey( spep_2-3 + 42, ctbaki3, 0.58, 0.58 );
--setEffScaleKey( spep_2-3 + 44, ctbaki3, 0.46, 0.46 );
--setEffScaleKey( spep_2-3 + 46, ctbaki3, 0.64, 0.64 );
setEffScaleKey( spep_2-3 + 48, ctbaki3, 2.39, 2.39 );
setEffScaleKey( spep_2-3 + 54, ctbaki3, 2.39, 2.39 );

setEffRotateKey( spep_2-3 + 42, ctbaki3, 43.5 );
setEffRotateKey( spep_2-3 + 44, ctbaki3, 43.7 );
setEffRotateKey( spep_2-3 + 46, ctbaki3, 43.9 );
setEffRotateKey( spep_2-3 + 48, ctbaki3, 44 );
setEffRotateKey( spep_2-3 + 54, ctbaki3, 44 );

setEffAlphaKey( spep_2-3 + 42, ctbaki3, 255 );
setEffAlphaKey( spep_2-3 + 48, ctbaki3, 255 );
setEffAlphaKey( spep_2-3 + 50, ctbaki3, 179 );
setEffAlphaKey( spep_2-3 + 52, ctbaki3, 102 );
setEffAlphaKey( spep_2-3 + 54, ctbaki3, 26 );

--文字エントリー
ctbaki4 = entryEffectLife( spep_2-3 + 48,  10020, 32, 0x100, -1, 0, 165.9, 24 );
setEffShake( spep_2-3 + 48, ctbaki4, 32, 10 );
setEffMoveKey( spep_2-3 + 48, ctbaki4, 165.9, 24 , 0 );
setEffMoveKey( spep_2-3 + 50, ctbaki4, 121.4, 112.3 , 0 );
setEffMoveKey( spep_2-3 + 52, ctbaki4, 75.3, 178.7 , 0 );
setEffMoveKey( spep_2-3 + 54, ctbaki4, 83.1, 185.9 , 0 );
setEffMoveKey( spep_2-3 + 56, ctbaki4, 64, 198 , 0 );
setEffMoveKey( spep_2-3 + 58, ctbaki4, 84.7, 184.8 , 0 );
setEffMoveKey( spep_2-3 + 60, ctbaki4, 85.5, 184.3 , 0 );
setEffMoveKey( spep_2-3 + 62, ctbaki4, 86.4, 183.8 , 0 );
setEffMoveKey( spep_2-3 + 64, ctbaki4, 87.2, 183.2 , 0 );
setEffMoveKey( spep_2-3 + 66, ctbaki4, 88, 182.7 , 0 );
setEffMoveKey( spep_2-3 + 68, ctbaki4, 88.8, 182.2 , 0 );
setEffMoveKey( spep_2-3 + 70, ctbaki4, 89.7, 181.7 , 0 );
setEffMoveKey( spep_2-3 + 72, ctbaki4, 90.5, 181.1 , 0 );
setEffMoveKey( spep_2-3 + 74, ctbaki4, 91.3, 180.6 , 0 );
setEffMoveKey( spep_2-3 + 76, ctbaki4, 92.2, 180.1 , 0 );
setEffMoveKey( spep_2-3 + 78, ctbaki4, 93, 179.5 , 0 );
setEffMoveKey( spep_2-3 + 80, ctbaki4, 93.8, 179 , 0 );

setEffScaleKey( spep_2-3 + 48, ctbaki4, 0.58, 0.58 );
--setEffScaleKey( spep_2-3 + 50, ctbaki4, 0.52, 0.52 );
--setEffScaleKey( spep_2-3 + 52, ctbaki4, 0.73, 0.73 );
--setEffScaleKey( spep_2-3 + 54, ctbaki4, 0.8, 0.8 );
--setEffScaleKey( spep_2-3 + 56, ctbaki4, 0.83, 0.83 );
--setEffScaleKey( spep_2-3 + 58, ctbaki4, 0.87, 0.87 );
--setEffScaleKey( spep_2-3 + 60, ctbaki4, 0.9, 0.9 );
--setEffScaleKey( spep_2-3 + 62, ctbaki4, 0.94, 0.94 );
--setEffScaleKey( spep_2-3 + 64, ctbaki4, 0.97, 0.97 );
setEffScaleKey( spep_2-3 + 66, ctbaki4, 3.31, 3.31 );
setEffScaleKey( spep_2-3 + 68, ctbaki4, 3.34, 3.34 );
setEffScaleKey( spep_2-3 + 70, ctbaki4, 3.38, 3.38 );
setEffScaleKey( spep_2-3 + 72, ctbaki4, 3.41, 3.41 );
setEffScaleKey( spep_2-3 + 74, ctbaki4, 3.45, 3.45 );
setEffScaleKey( spep_2-3 + 76, ctbaki4, 3.48, 3.48 );
setEffScaleKey( spep_2-3 + 78, ctbaki4, 3.51, 3.51 );
setEffScaleKey( spep_2-3 + 80, ctbaki4, 3.55, 3.55 );

setEffRotateKey( spep_2-3 + 48, ctbaki4, -7.5 );
setEffRotateKey( spep_2-3 + 50, ctbaki4, -10.3 );
setEffRotateKey( spep_2-3 + 52, ctbaki4, -12 );
setEffRotateKey( spep_2-3 + 54, ctbaki4, -12.5 );
setEffRotateKey( spep_2-3 + 80, ctbaki4, -12.5 );

setEffAlphaKey( spep_2-3 + 48, ctbaki4, 255 );
setEffAlphaKey( spep_2-3 + 54, ctbaki4, 255 );
setEffAlphaKey( spep_2-3 + 56, ctbaki4, 235 );
setEffAlphaKey( spep_2-3 + 58, ctbaki4, 216 );
setEffAlphaKey( spep_2-3 + 60, ctbaki4, 196 );
setEffAlphaKey( spep_2-3 + 62, ctbaki4, 177 );
setEffAlphaKey( spep_2-3 + 64, ctbaki4, 157 );
setEffAlphaKey( spep_2-3 + 66, ctbaki4, 137 );
setEffAlphaKey( spep_2-3 + 68, ctbaki4, 118 );
setEffAlphaKey( spep_2-3 + 70, ctbaki4, 98 );
setEffAlphaKey( spep_2-3 + 72, ctbaki4, 78 );
setEffAlphaKey( spep_2-3 + 74, ctbaki4, 59 );
setEffAlphaKey( spep_2-3 + 76, ctbaki4, 39 );
setEffAlphaKey( spep_2-3 + 78, ctbaki4, 20 );
setEffAlphaKey( spep_2-3 + 80, ctbaki4, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 86, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2-3 + 10, 1, 106 );
changeAnime( spep_2-3 + 60, 1, 108 );

setMoveKey( spep_2 + 0, 1, 394, 4.5 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 311.6, 14.7 , 0 );
setMoveKey( spep_2-3 + 4, 1, 211.1, 8.8 , 0 );
setMoveKey( spep_2-3 + 6, 1, 126.7, 15 , 0 );
setMoveKey( spep_2-3 + 9, 1, 26.3, 9.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 40.1, 10.6 , 0 );
setMoveKey( spep_2-3 + 12, 1, 65.2, 18.1 , 0 );
setMoveKey( spep_2-3 + 14, 1, 102.4, 38.1 , 0 );
setMoveKey( spep_2-3 + 16, 1, 125.1, 47.8 , 0 );
setMoveKey( spep_2-3 + 18, 1, 96.1, -68.3 , 0 );
setMoveKey( spep_2-3 + 20, 1, 50.1, -49.9 , 0 );
setMoveKey( spep_2-3 + 22, 1, 10.2, -2.8 , 0 );
setMoveKey( spep_2-3 + 24, 1, -34.4, 24.9 , 0 );
setMoveKey( spep_2-3 + 26, 1, 88.1, -38.3 , 0 );
setMoveKey( spep_2-3 + 28, 1, 95.1, -13.6 , 0 );
setMoveKey( spep_2-3 + 30, 1, 118.1, 23.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, 125.1, 47.8 , 0 );
setMoveKey( spep_2-3 + 34, 1, -66.9, -54.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, -18.6, -33.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 45.8, -1.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 94.1, 18.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 74.1, -65.3 , 0 );
setMoveKey( spep_2-3 + 44, 1, 21.1, -42.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, -15.9, -7.9 , 0 );
setMoveKey( spep_2-3 + 48, 1, -68.9, 14.8 , 0 );
setMoveKey( spep_2-3 + 50, 1, -42.9, -90.3 , 0 );
setMoveKey( spep_2-3 + 52, 1, -22.9, -74.2 , 0 );
setMoveKey( spep_2-3 + 54, 1, 13.1, -46.2 , 0 );
setMoveKey( spep_2-3 + 56, 1, 33.1, -30.2 , 0 );
setMoveKey( spep_2-3 + 59, 1, 69.1, -2.2 , 0 );
setMoveKey( spep_2-3 + 60, 1, 176.3, -11.3 , 0 );
setMoveKey( spep_2-3 + 62, 1, 204.1, -0.9 , 0 );
setMoveKey( spep_2-3 + 64, 1, 267.3, -1.4 , 0 );
setMoveKey( spep_2-3 + 66, 1, 243.8, 7.9 , 0 );
setMoveKey( spep_2-3 + 68, 1, 234.5, 5.1 , 0 );
setMoveKey( spep_2-3 + 70, 1, 277.4, 16.2 , 0 );
setMoveKey( spep_2-3 + 72, 1, 295.2, 15.2 , 0 );
setMoveKey( spep_2-3 + 74, 1, 323.1, 25.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, 334.9, 24 , 0 );
setMoveKey( spep_2-3 + 78, 1, 362.7, 34.4 , 0 );
setMoveKey( spep_2-3 + 80, 1, 374.6, 32.8 , 0 );
setMoveKey( spep_2-3 + 82, 1, 402.4, 43.2 , 0 );
setMoveKey( spep_2-3 + 84, 1, 414.3, 41.6 , 0 );
setMoveKey( spep_2-3 + 86, 1, 434.1, 46 , 0 );

setScaleKey( spep_2 + 0, 1, 1.02, 1.02 );
--setScaleKey( spep_2-3 + 2, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 4, 1, 1.21, 1.21 );
setScaleKey( spep_2-3 + 6, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 9, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 10, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 12, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 18, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 20, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 22, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 24, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 26, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 59, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 60, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 62, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 64, 1, 2.32, 2.32 );
setScaleKey( spep_2-3 + 66, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 70, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 72, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 74, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 76, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 78, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 80, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 82, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 84, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 86, 1, 0.51, 0.51 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 10, 1, 0 );
setRotateKey( spep_2-3 + 12, 1, 3 );
setRotateKey( spep_2-3 + 14, 1, 6 );
setRotateKey( spep_2-3 + 16, 1, 9.1 );
setRotateKey( spep_2-3 + 18, 1, -0.7 );
setRotateKey( spep_2-3 + 20, 1, 6.1 );
setRotateKey( spep_2-3 + 22, 1, 12.9 );
setRotateKey( spep_2-3 + 24, 1, 19.7 );
setRotateKey( spep_2-3 + 26, 1, -1.9 );
setRotateKey( spep_2-3 + 28, 1, 4.8 );
setRotateKey( spep_2-3 + 30, 1, 11.4 );
setRotateKey( spep_2-3 + 32, 1, 18.1 );
setRotateKey( spep_2-3 + 34, 1, 0 );
setRotateKey( spep_2-3 + 36, 1, 3 );
setRotateKey( spep_2-3 + 38, 1, 6 );
setRotateKey( spep_2-3 + 40, 1, 9.1 );
setRotateKey( spep_2-3 + 42, 1, -0.7 );
setRotateKey( spep_2-3 + 44, 1, 7.5 );
setRotateKey( spep_2-3 + 46, 1, 15.6 );
setRotateKey( spep_2-3 + 48, 1, 23.8 );
setRotateKey( spep_2-3 + 50, 1, -1.9 );
setRotateKey( spep_2-3 + 52, 1, 3.1 );
setRotateKey( spep_2-3 + 54, 1, 8.1 );
setRotateKey( spep_2-3 + 56, 1, 13.1 );
setRotateKey( spep_2-3 + 59, 1, 18.1 );
setRotateKey( spep_2-3 + 60, 1, 0 );
setRotateKey( spep_2-3 + 86, 1, 0 );

--集中線
ryusen1 = entryEffectLife( spep_2 + 0,  921, 98, 0x80, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, ryusen1, 98, 20 );
setEffMoveKey( spep_2 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 1, 1 );
setEffScaleKey( spep_2 + 98, ryusen1, 1, 1 );

setEffRotateKey( spep_2 + 0, ryusen1, 0 );
setEffRotateKey( spep_2 + 98, ryusen1, 0 );

setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 98, ryusen1, 255 );

--SE
playSe( spep_2 + 4, 1007 );
setSeVolume( spep_2 + 4, 1007, 56 );
playSe( spep_2 + 5, 1000 );
playSe( spep_2 + 5, 1032 );
playSe( spep_2 + 15, 1007 );
setSeVolume( spep_2 + 15, 1007, 56 );
playSe( spep_2 + 17, 1000 );
setSeVolume( spep_2 + 17, 1000, 85 );
playSe( spep_2 + 17, 1032 );
setSeVolume( spep_2 + 17, 1032, 71 );
playSe( spep_2 + 27, 1006 );
setSeVolume( spep_2 + 27, 1006, 63 );
playSe( spep_2 + 28, 1000 );
setSeVolume( spep_2 + 28, 1000, 79 );
playSe( spep_2 + 29, 1032 );
setSeVolume( spep_2 + 29, 1032, 85 );
playSe( spep_2 + 42, 1007 );
setSeVolume( spep_2 + 42, 1007, 48 );
playSe( spep_2 + 43, 1000 );
setSeVolume( spep_2 + 43, 1000, 89 );
playSe( spep_2 + 43, 1032 );
setSeVolume( spep_2 + 43, 1032, 77 );
playSe( spep_2 + 66, 1003 );
setSeVolume( spep_2 + 66, 1003, 76 );
playSe( spep_2 + 70, 1010 );
playSe( spep_2 + 71, 1032 );
playSe( spep_2 + 73, 1110 );

--白フェード
entryFade( spep_2+92 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_3=spep_2+ 100;

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
-- 狼牙排球拳
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, attack_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 60, attack_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_f, 0 );
setEffRotateKey( spep_4 + 60, attack_f, 0 );
setEffAlphaKey( spep_4 + 0, attack_f, 255 );
setEffAlphaKey( spep_4 + 60, attack_f, 255 );

--流線
ryusen2 = entryEffectLife( spep_4-3 + 18,  921, 40, 0x80, -1, 0, -152.9, -214.1 );
setEffShake( spep_4-3 + 18, ryusen2, 40, 20 );
setEffMoveKey( spep_4-3 + 18, ryusen2, -152.9, -214.1 , 0 );
setEffMoveKey( spep_4-3 + 58, ryusen2, -152.9, -214.1 , 0 );

setEffScaleKey( spep_4-3 + 18, ryusen2, 2.34, 1.22 );
setEffScaleKey( spep_4-3 + 58, ryusen2, 2.34, 1.22 );

setEffRotateKey( spep_4-3 + 18, ryusen2, -56.8 );
setEffRotateKey( spep_4-3 + 58, ryusen2, -56.8 );

setEffAlphaKey( spep_4-3 + 18, ryusen2, 255 );
setEffAlphaKey( spep_4-3 + 58, ryusen2, 255 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, attack_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 60, attack_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_b, 0 );
setEffRotateKey( spep_4 + 60, attack_b, 0 );
setEffAlphaKey( spep_4 + 0, attack_b, 255 );
setEffAlphaKey( spep_4 + 60, attack_b, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 0,  906, 17-3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen2, 17-3, 20 );
setEffMoveKey( spep_4 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4-3 + 17, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen2, 1.24, 1.14 );
setEffScaleKey( spep_4-3 + 17, shuchusen2, 1.24, 1.14 );

setEffRotateKey( spep_4 + 0, shuchusen2, 180 );
setEffRotateKey( spep_4-3 + 17, shuchusen2, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_4-3 + 17, shuchusen2, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 58, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, 76.4, 111.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 80.2, 111.7 , 0 );
setMoveKey( spep_4-3 + 4, 1, 83.4, 111.9 , 0 );
setMoveKey( spep_4-3 + 6, 1, 86, 112 , 0 );
setMoveKey( spep_4-3 + 8, 1, 88.1, 112.1 , 0 );
setMoveKey( spep_4-3 + 10, 1, 89.5, 112.1 , 0 );
setMoveKey( spep_4-3 + 12, 1, 140.6, 183 , 0 );
setMoveKey( spep_4-3 + 14, 1, 177.1, 274.2 , 0 );
setMoveKey( spep_4-3 + 16, 1, 205.1, 315.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, 224.3, 358.2 , 0 );
setMoveKey( spep_4-3 + 20, 1, 231.5, 366.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 226.6, 382.3 , 0 );
setMoveKey( spep_4-3 + 24, 1, 239, 381.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, 232.8, 373.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, 240, 382.2 , 0 );
setMoveKey( spep_4-3 + 30, 1, 235.1, 397.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 247.5, 397 , 0 );
setMoveKey( spep_4-3 + 34, 1, 241.4, 389.1 , 0 );
setMoveKey( spep_4-3 + 36, 1, 248.6, 397.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, 243.6, 413.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 256, 412.4 , 0 );
setMoveKey( spep_4-3 + 42, 1, 249.9, 404.5 , 0 );
setMoveKey( spep_4-3 + 44, 1, 257.1, 413.1 , 0 );
setMoveKey( spep_4-3 + 46, 1, 252.2, 428.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 264.6, 427.9 , 0 );
setMoveKey( spep_4-3 + 50, 1, 256.3, 416.1 , 0 );
setMoveKey( spep_4-3 + 52, 1, 261.4, 420.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, 254.3, 432.6 , 0 );
setMoveKey( spep_4-3 + 56, 1, 264.6, 427.9 , 0 );
setMoveKey( spep_4-3 + 58, 1, 256.3, 416.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.5, 1.5 );
--setScaleKey( spep_4-3 + 2, 1, 1.58, 1.58 );
setScaleKey( spep_4-3 + 4, 1, 1.65, 1.65 );
setScaleKey( spep_4-3 + 6, 1, 1.7, 1.7 );
setScaleKey( spep_4-3 + 8, 1, 1.74, 1.74 );
setScaleKey( spep_4-3 + 10, 1, 1.78, 1.78 );
setScaleKey( spep_4-3 + 12, 1, 1.51, 1.51 );
setScaleKey( spep_4-3 + 14, 1, 1.23, 1.23 );
setScaleKey( spep_4-3 + 16, 1, 0.82, 0.82 );
setScaleKey( spep_4-3 + 18, 1, 0.55, 0.55 );
setScaleKey( spep_4-3 + 20, 1, 0.52, 0.52 );
setScaleKey( spep_4-3 + 22, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 24, 1, 0.48, 0.48 );
setScaleKey( spep_4-3 + 26, 1, 0.46, 0.46 );
setScaleKey( spep_4-3 + 28, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 30, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 32, 1, 0.39, 0.39 );
setScaleKey( spep_4-3 + 34, 1, 0.37, 0.37 );
setScaleKey( spep_4-3 + 36, 1, 0.35, 0.35 );
setScaleKey( spep_4-3 + 38, 1, 0.32, 0.32 );
setScaleKey( spep_4-3 + 40, 1, 0.3, 0.3 );
setScaleKey( spep_4-3 + 42, 1, 0.28, 0.28 );
setScaleKey( spep_4-3 + 44, 1, 0.26, 0.26 );
setScaleKey( spep_4-3 + 46, 1, 0.23, 0.23 );
setScaleKey( spep_4-3 + 48, 1, 0.21, 0.21 );
setScaleKey( spep_4-3 + 58, 1, 0.21, 0.21 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 58, 1, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_4-3 + 8,  10019, 28, 0x100, -1, 0, -86.3, 265.9 );--ドンッ
setEffShake( spep_4-3 + 8, ctdon, 28, 10 );
setEffMoveKey( spep_4-3 + 8, ctdon, -86.3, 265.9 , 0 );
setEffMoveKey( spep_4-3 + 10, ctdon, -91.6, 274.9 , 0 );
setEffMoveKey( spep_4-3 + 28, ctdon, -91.6, 274.9 , 0 );
setEffMoveKey( spep_4-3 + 30, ctdon, -75.5, 239.9 , 0 );
setEffMoveKey( spep_4-3 + 32, ctdon, -82.3, 250.3 , 0 );
setEffMoveKey( spep_4-3 + 34, ctdon, -89.2, 260.8 , 0 );
setEffMoveKey( spep_4-3 + 36, ctdon, -96, 271.2 , 0 );

setEffScaleKey( spep_4-3 + 8, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_4-3 + 10, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 12, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_4-3 + 14, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 16, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_4-3 + 18, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 20, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_4-3 + 22, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 24, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_4-3 + 26, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 28, ctdon, 2.5, 2.5 );
setEffScaleKey( spep_4-3 + 30, ctdon, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 32, ctdon, 2.67, 2.67 );
setEffScaleKey( spep_4-3 + 34, ctdon, 3.12, 3.12 );
setEffScaleKey( spep_4-3 + 36, ctdon, 3.3, 3.3 );

setEffRotateKey( spep_4-3 + 8, ctdon, -6.3 );
setEffRotateKey( spep_4-3 + 36, ctdon, -6.3 );

setEffAlphaKey( spep_4-3 + 8, ctdon, 255 );
setEffAlphaKey( spep_4-3 + 30, ctdon, 255 );
setEffAlphaKey( spep_4-3 + 32, ctdon, 174 );
setEffAlphaKey( spep_4-3 + 34, ctdon, 94 );
setEffAlphaKey( spep_4-3 + 36, ctdon, 13 );

--SE
playSe( spep_4 + 8, 1027 );
setSeVolume( spep_4 + 8, 1027, 79 );
se_0019 = playSe( spep_4 + 8, 19 );
setSeVolume( spep_4 + 8, 19, 89 );
playSe( spep_4 + 8, 1182 );

stopSe( spep_4 + 34, se_0019, 10 );

--白フェード
entryFade( spep_4 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 60;

------------------------------------------------------
-- 変顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
smile = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, smile, 0, 0, 0 );
setEffMoveKey( spep_5 + 70, smile, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, smile, 1.0, 1.0 );
setEffScaleKey( spep_5 + 70, smile, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, smile, 0 );
setEffRotateKey( spep_5 + 70, smile, 0 );
setEffAlphaKey( spep_5 + 0, smile, 255 );
setEffAlphaKey( spep_5 + 70, smile, 255 );
setEffAlphaKey( spep_5 + 71, smile, 0 );
setEffAlphaKey( spep_5 + 72, smile, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_5-3 + 24,  906, 49, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5-3 + 24, shuchusen3, 49, 20 );
setEffMoveKey( spep_5-3 + 24, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 24, shuchusen3, 1.08, 1.18 );
setEffScaleKey( spep_5 -3 + 26, shuchusen3, 1.09, 1.18 );
setEffScaleKey( spep_5 -3 + 28, shuchusen3, 1.29, 1.18 );
setEffScaleKey( spep_5 + 70, shuchusen3, 1.29, 1.18 );

setEffRotateKey( spep_5-3 + 24, shuchusen3, 180 );
setEffRotateKey( spep_5 + 70, shuchusen3, 180 );

setEffAlphaKey( spep_5-3 + 24, shuchusen3, 10 );
setEffAlphaKey( spep_5 -3 + 26, shuchusen3, 18 );
setEffAlphaKey( spep_5 -3 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_5  + 70, shuchusen3, 255 );

--SE
playSe( spep_5 + 26, 1062 );

--白フェード
entryFade( spep_5 + 60, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 70;
------------------------------------------------------
-- レシ－ブ⇒瞬間移動
------------------------------------------------------

-- ** エフェクト等 ** --
receive = entryEffect( spep_6 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, receive, 0, 0, 0 );
setEffMoveKey( spep_6 + 100, receive, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, receive, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, receive, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, receive, 0 );
setEffRotateKey( spep_6 + 100, receive, 0 );
setEffAlphaKey( spep_6 + 0, receive, 255 );
setEffAlphaKey( spep_6 + 100, receive, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_6-3 + 52,  906, 18, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6-3 + 52, shuchusen4, 18, 20 );
setEffMoveKey( spep_6-3 + 52, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6-3 + 70, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6-3 + 52, shuchusen4, 1, 1 );
setEffScaleKey( spep_6-3 + 64, shuchusen4, 1, 1 );
setEffScaleKey( spep_6-3 + 66, shuchusen4, 1.48, 1.28 );
setEffScaleKey( spep_6-3 + 70, shuchusen4, 1.48, 1.28 );

setEffRotateKey( spep_6-3 + 52, shuchusen4, 180 );
setEffRotateKey( spep_6-3 + 70, shuchusen4, 180 );

setEffAlphaKey( spep_6-3 + 52, shuchusen4, 13 );
setEffAlphaKey( spep_6-3 + 54, shuchusen4, 194 );
setEffAlphaKey( spep_6-3 + 56, shuchusen4, 255 );
setEffAlphaKey( spep_6-3 + 66, shuchusen4, 255 );
setEffAlphaKey( spep_6-3 + 68, shuchusen4, 43 );
setEffAlphaKey( spep_6-3 + 70, shuchusen4, 13 );

--文字エントリー
ctzudododo = entryEffectLife( spep_6-3 + 6,  10014, 20, 0x100, -1, 0, -189, 13.7 );
setEffShake( spep_6-3 + 6, ctzudododo, 20, 10 );
setEffMoveKey( spep_6-3 + 6, ctzudododo, -189, 13.7 , 0 );
setEffMoveKey( spep_6-3 + 8, ctzudododo, -130.3, 27.1 , 0 );
setEffMoveKey( spep_6-3 + 10, ctzudododo, -124.2, 38.9 , 0 );
setEffMoveKey( spep_6-3 + 12, ctzudododo, -62.2, 53.7 , 0 );
setEffMoveKey( spep_6-3 + 14, ctzudododo, -59.3, 64 , 0 );
setEffMoveKey( spep_6-3 + 16, ctzudododo, 5.8, 80.5 , 0 );
setEffMoveKey( spep_6-3 + 18, ctzudododo, 5.5, 89.2 , 0 );
setEffMoveKey( spep_6-3 + 20, ctzudododo, 73.6, 107.7 , 0 );
setEffMoveKey( spep_6-3 + 22, ctzudododo, 70.4, 114.4 , 0 );
setEffMoveKey( spep_6-3 + 24, ctzudododo, 141.4, 135.1 , 0 );
setEffMoveKey( spep_6-3 + 26, ctzudododo, 135.2, 139.6 , 0 );

setEffScaleKey( spep_6-3 + 6, ctzudododo, 1.5, 1.5 );
setEffScaleKey( spep_6-3 + 8, ctzudododo, 1.6, 1.6 );
setEffScaleKey( spep_6-3 + 10, ctzudododo, 1.7, 1.7 );
setEffScaleKey( spep_6-3 + 12, ctzudododo, 1.8, 1.8 );
setEffScaleKey( spep_6-3 + 14, ctzudododo, 1.9, 1.9 );
setEffScaleKey( spep_6-3 + 16, ctzudododo, 2, 2 );
setEffScaleKey( spep_6-3 + 18, ctzudododo, 2.1, 2.1 );
setEffScaleKey( spep_6-3 + 20, ctzudododo, 2.2, 2.2 );
setEffScaleKey( spep_6-3 + 22, ctzudododo, 2.3, 2.3 );
setEffScaleKey( spep_6-3 + 24, ctzudododo, 2.4, 2.4 );
setEffScaleKey( spep_6-3 + 26, ctzudododo, 2.5, 2.5 );

a=70;

setEffRotateKey( spep_6-3 + 6, ctzudododo, 17.8-a );
setEffRotateKey( spep_6-3 + 8, ctzudododo, 16.6-a );
setEffRotateKey( spep_6-3 + 10, ctzudododo, 15.4-a );
setEffRotateKey( spep_6-3 + 12, ctzudododo, 14.1-a );
setEffRotateKey( spep_6-3 + 14, ctzudododo, 12.8-a );
setEffRotateKey( spep_6-3 + 16, ctzudododo, 11.6-a );
setEffRotateKey( spep_6-3 + 18, ctzudododo, 10.3-a );
setEffRotateKey( spep_6-3 + 20, ctzudododo, 9-a );
setEffRotateKey( spep_6-3 + 22, ctzudododo, 7.8-a );
setEffRotateKey( spep_6-3 + 24, ctzudododo, 6.5-a );
setEffRotateKey( spep_6-3 + 26, ctzudododo, 5.2-a );

setEffAlphaKey( spep_6-3 + 6, ctzudododo, 255 );
setEffAlphaKey( spep_6-3 + 20, ctzudododo, 255 );
setEffAlphaKey( spep_6-3 + 22, ctzudododo, 174 );
setEffAlphaKey( spep_6-3 + 24, ctzudododo, 94 );
setEffAlphaKey( spep_6-3 + 26, ctzudododo, 13 );

--文字エントリー
ctdon2 = entryEffectLife( spep_6-3 + 56,  10019, 20, 0x100, -1, 0, -113.3, -8 );
setEffShake( spep_6-3 + 56, ctdon2, 20, 10 );
setEffMoveKey( spep_6-3 + 56, ctdon2, -113.3, -8 , 0 );
setEffMoveKey( spep_6-3 + 58, ctdon2, -119.8, 17.2 , 0 );
setEffMoveKey( spep_6-3 + 60, ctdon2, -126.2, 42.3 , 0 );
setEffMoveKey( spep_6-3 + 62, ctdon2, -132.7, 67.4 , 0 );
setEffMoveKey( spep_6-3 + 64, ctdon2, -139.1, 92.5 , 0 );
setEffMoveKey( spep_6-3 + 66, ctdon2, -145.6, 117.7 , 0 );
setEffMoveKey( spep_6-3 + 68, ctdon2, -152, 142.8 , 0 );
setEffMoveKey( spep_6-3 + 70, ctdon2, -158.5, 167.9 , 0 );
setEffMoveKey( spep_6-3 + 72, ctdon2, -158.4, 167.9 , 0 );
setEffMoveKey( spep_6-3 + 74, ctdon2, -158.5, 167.9 , 0 );
setEffMoveKey( spep_6-3 + 76, ctdon2, -158.4, 167.9 , 0 );

setEffScaleKey( spep_6-3 + 56, ctdon2, 1, 1 );
setEffScaleKey( spep_6-3 + 58, ctdon2, 1.26, 1.26 );
setEffScaleKey( spep_6-3 + 60, ctdon2, 1.28, 1.28 );
setEffScaleKey( spep_6-3 + 62, ctdon2, 1.57, 1.57 );
setEffScaleKey( spep_6-3 + 64, ctdon2, 1.57, 1.57 );
setEffScaleKey( spep_6-3 + 66, ctdon2, 1.88, 1.88 );
setEffScaleKey( spep_6-3 + 68, ctdon2, 1.86, 1.86 );
setEffScaleKey( spep_6-3 + 70, ctdon2, 2, 2 );
setEffScaleKey( spep_6-3 + 72, ctdon2, 2.2, 2.2 );
setEffScaleKey( spep_6-3 + 74, ctdon2, 2, 2 );
setEffScaleKey( spep_6-3 + 76, ctdon2, 2.2, 2.2 );

setEffRotateKey( spep_6-3 + 56, ctdon2, -19.1 );
setEffRotateKey( spep_6-3 + 66, ctdon2, -19.1 );
setEffRotateKey( spep_6-3 + 68, ctdon2, -19 );
setEffRotateKey( spep_6-3 + 76, ctdon2, -19 );

setEffAlphaKey( spep_6-3 + 56, ctdon2, 255 );
setEffAlphaKey( spep_6-3 + 70, ctdon2, 255 );
setEffAlphaKey( spep_6-3 + 72, ctdon2, 174 );
setEffAlphaKey( spep_6-3 + 74, ctdon2, 94 );
setEffAlphaKey( spep_6-3 + 76, ctdon2, 13 );

--敵の動き
setDisp( spep_6-3 + 36 , 1, 1 );
setDisp( spep_6-3 + 74, 1, 0 );

changeAnime( spep_6-3 + 36, 1, 108 );

setMoveKey( spep_6-3 + 36, 1, -656.6, 852.5 , 0 );
setMoveKey( spep_6-3 + 38, 1, -605.4, 830.8 , 0 );
setMoveKey( spep_6-3 + 40, 1, -521.1, 771.1 , 0 );
setMoveKey( spep_6-3 + 42, 1, -356.2, 607.9 , 0 );
setMoveKey( spep_6-3 + 44, 1, -207, 430.7 , 0 );
setMoveKey( spep_6-3 + 46, 1, -146.8, 355.5 , 0 );
setMoveKey( spep_6-3 + 48, 1, -117.8, 319.9 , 0 );
setMoveKey( spep_6-3 + 50, 1, -103.2, 303.4 , 0 );
setMoveKey( spep_6-3 + 52, 1, -2.9, 159.8 , 0 );
setMoveKey( spep_6-3 + 54, 1, 98.2, -15.5 , 0 );
setMoveKey( spep_6-3 + 55, 1, 98.2, -15.5 , 0 );
setMoveKey( spep_6-3 + 56, 1, 138.7, 175.3 , 0 );
setMoveKey( spep_6-3 + 58, 1, 244.8, 250.1 , 0 );
setMoveKey( spep_6-3 + 60, 1, 348.6, 316 , 0 );
setMoveKey( spep_6-3 + 62, 1, 442.2, 370.5 , 0 );
setMoveKey( spep_6-3 + 64, 1, 531.8, 418.4 , 0 );
setMoveKey( spep_6-3 + 66, 1, 616.7, 464.2 , 0 );
setMoveKey( spep_6-3 + 68, 1, 697, 507.1 , 0 );
setMoveKey( spep_6-3 + 70, 1, 772.7, 547.2 , 0 );
setMoveKey( spep_6-3 + 72, 1, 843.8, 584.5 , 0 );
setMoveKey( spep_6-3 + 74, 1, 818, 562.4 , 0 );

setScaleKey( spep_6-3 + 36, 1, 2.73, 2.73 );
setScaleKey( spep_6-3 + 38, 1, 2.6, 2.6 );
setScaleKey( spep_6-3 + 40, 1, 2.48, 2.48 );
setScaleKey( spep_6-3 + 42, 1, 2.35, 2.35 );
setScaleKey( spep_6-3 + 44, 1, 2.22, 2.22 );
setScaleKey( spep_6-3 + 46, 1, 2.16, 2.16 );
setScaleKey( spep_6-3 + 48, 1, 2.1, 2.1 );
setScaleKey( spep_6-3 + 50, 1, 2.03, 2.03 );
setScaleKey( spep_6-3 + 52, 1, 1.99, 1.99 );
setScaleKey( spep_6-3 + 54, 1, 1.85, 1.85 );
setScaleKey( spep_6-3 + 55, 1, 1.85, 1.85 );
setScaleKey( spep_6-3 + 56, 1, 2.01, 2.01 );
setScaleKey( spep_6-3 + 58, 1, 2.09, 2.09 );
setScaleKey( spep_6-3 + 60, 1, 2.18, 2.18 );
setScaleKey( spep_6-3 + 62, 1, 2.26, 2.26 );
setScaleKey( spep_6-3 + 64, 1, 2.33, 2.33 );
setScaleKey( spep_6-3 + 66, 1, 2.39, 2.39 );
setScaleKey( spep_6-3 + 68, 1, 2.45, 2.45 );
setScaleKey( spep_6-3 + 70, 1, 2.51, 2.51 );
setScaleKey( spep_6-3 + 72, 1, 2.56, 2.56 );
setScaleKey( spep_6-3 + 74, 1, 2.5, 2.5 );

setRotateKey( spep_6-3 + 36, 1, 16.6 );
setRotateKey( spep_6-3 + 38, 1, 16.7 );
setRotateKey( spep_6-3 + 44, 1, 16.7 );
setRotateKey( spep_6-3 + 46, 1, 17.3 );
setRotateKey( spep_6-3 + 48, 1, 18 );
setRotateKey( spep_6-3 + 50, 1, 18.7 );
setRotateKey( spep_6-3 + 52, 1, 20.4 );
setRotateKey( spep_6-3 + 54, 1, 22.2 );
setRotateKey( spep_6-3 + 55, 1, 22.2 );
setRotateKey( spep_6-3 + 56, 1, 68.5 );
setRotateKey( spep_6-3 + 58, 1, 68.5 );
setRotateKey( spep_6-3 + 60, 1, 68.4 );
setRotateKey( spep_6-3 + 62, 1, 68.3 );
setRotateKey( spep_6-3 + 64, 1, 68.2 );
setRotateKey( spep_6-3 + 66, 1, 68.2 );
setRotateKey( spep_6-3 + 68, 1, 68.1 );
setRotateKey( spep_6-3 + 70, 1, 68 );
setRotateKey( spep_6-3 + 74, 1, 68 );

--SE
playSe( spep_6 + 0, 1108 );
playSe( spep_6 + 5, 1108 );
setSeVolume( spep_6 + 5, 1108, 120 );
playSe( spep_6 + 11, 1108 );
setSeVolume( spep_6 + 11, 1108, 112 );
playSe( spep_6 + 16, 1108 );
setSeVolume( spep_6 + 16, 1108, 155 );
playSe( spep_6 + 52, 1251 );
setSeVolume( spep_6 + 52, 1251, 112 );
playSe( spep_6 + 75, 1109 );
setSeVolume( spep_6 + 75, 1109, 62 );

--白フェード
entryFade( spep_6 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 100;
------------------------------------------------------
-- アタック⇒敵手前に吹っ飛び
------------------------------------------------------
-- ** エフェクト等 ** --
attack = entryEffect( spep_7 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, attack, 0, 0, 0 );
setEffMoveKey( spep_7 + 80, attack, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_7 + 80, attack, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, attack, 0 );
setEffRotateKey( spep_7 + 80, attack, 0 );
setEffAlphaKey( spep_7 + 0, attack, 255 );
setEffAlphaKey( spep_7 + 80, attack, 255 );

--敵の動き
setDisp( spep_7-3 + 12, 1, 1 );
setDisp( spep_7-3 + 78, 1, 0 );

changeAnime( spep_7-3 + 12, 1, 108 );
changeAnime( spep_7-3 + 30, 1, 107 );

setMoveKey( spep_7-3 + 12, 1, -275.9, -774.7 , 0 );
setMoveKey( spep_7-3 + 14, 1, -206, -595.3 , 0 );
setMoveKey( spep_7-3 + 16, 1, -138.8, -416.3 , 0 );
setMoveKey( spep_7-3 + 18, 1, -71.5, -237.2 , 0 );
setMoveKey( spep_7-3 + 20, 1, -54.7, -181.6 , 0 );
setMoveKey( spep_7-3 + 22, 1, -37.9, -125.9 , 0 );
setMoveKey( spep_7-3 + 24, 1, -21, -70.2 , 0 );
setMoveKey( spep_7-3 + 26, 1, -4.2, -14.6 , 0 );
setMoveKey( spep_7-3 + 28, 1, 15.1, 35.2 , 0 );
setMoveKey( spep_7-3 + 29, 1, 15.1, 35.2 , 0 );

setMoveKey( spep_7-3 + 30, 1, 48.2, -99.5 , 0 );
setMoveKey( spep_7-3 + 32, 1, 58.1, -140.5 , 0 );
setMoveKey( spep_7-3 + 34, 1, 50.9, -121.4 , 0 );
setMoveKey( spep_7-3 + 36, 1, 60.1, -145.9 , 0 );
setMoveKey( spep_7-3 + 38, 1, 63.2, -154.1 , 0 );
setMoveKey( spep_7-3 + 40, 1, 56.1, -137.8 , 0 );
setMoveKey( spep_7-3 + 42, 1, 56.7, -141.8 , 0 );
setMoveKey( spep_7-3 + 44, 1, 61.6, -157.5 , 0 );
setMoveKey( spep_7-3 + 46, 1, 66.6, -173.1 , 0 );
setMoveKey( spep_7-3 + 48, 1, 71.6, -188.8 , 0 );
setMoveKey( spep_7-3 + 50, 1, 76.5, -204.4 , 0 );
setMoveKey( spep_7-3 + 52, 1, 81.5, -220.1 , 0 );
setMoveKey( spep_7-3 + 54, 1, 86.4, -235.7 , 0 );
setMoveKey( spep_7-3 + 56, 1, 91.4, -251.4 , 0 );
setMoveKey( spep_7-3 + 58, 1, 96.4, -267 , 0 );
setMoveKey( spep_7-3 + 60, 1, 101.3, -282.7 , 0 );
setMoveKey( spep_7-3 + 62, 1, 106.3, -298.3 , 0 );
setMoveKey( spep_7-3 + 64, 1, 111.2, -314 , 0 );
setMoveKey( spep_7-3 + 66, 1, 116.2, -329.6 , 0 );
setMoveKey( spep_7-3 + 68, 1, 121.2, -345.3 , 0 );
setMoveKey( spep_7-3 + 70, 1, 126.1, -360.9 , 0 );
setMoveKey( spep_7-3 + 72, 1, 131.1, -376.6 , 0 );
setMoveKey( spep_7-3 + 74, 1, 136, -392.2 , 0 );
setMoveKey( spep_7-3 + 76, 1, 141, -407.9 , 0 );
setMoveKey( spep_7-3 + 78, 1, 146, -423.6 , 0 );

setScaleKey( spep_7-3 + 12, 1, 1.6, 1.6 );
setScaleKey( spep_7-3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7-3 + 28, 1, 1.76, 1.76 );
setScaleKey( spep_7-3 + 29, 1, 1.76, 1.76 );

setScaleKey( spep_7-3 + 30, 1, 1.4, 1.4 );
setScaleKey( spep_7-3 + 32, 1, 1.14, 1.14 );
setScaleKey( spep_7-3 + 34, 1, 1.05, 1.05 );
setScaleKey( spep_7-3 + 36, 1, 1.16, 1.16 );
setScaleKey( spep_7-3 + 38, 1, 1.2, 1.2 );
setScaleKey( spep_7-3 + 40, 1, 1.11, 1.11 );
setScaleKey( spep_7-3 + 42, 1, 1.11, 1.11 );
setScaleKey( spep_7-3 + 44, 1, 1.17, 1.17 );
setScaleKey( spep_7-3 + 46, 1, 1.22, 1.22 );
setScaleKey( spep_7-3 + 48, 1, 1.28, 1.28 );
setScaleKey( spep_7-3 + 50, 1, 1.34, 1.34 );
setScaleKey( spep_7-3 + 52, 1, 1.39, 1.39 );
setScaleKey( spep_7-3 + 54, 1, 1.45, 1.45 );
setScaleKey( spep_7-3 + 56, 1, 1.5, 1.5 );
setScaleKey( spep_7-3 + 58, 1, 1.56, 1.56 );
setScaleKey( spep_7-3 + 60, 1, 1.62, 1.62 );
setScaleKey( spep_7-3 + 62, 1, 1.67, 1.67 );
setScaleKey( spep_7-3 + 64, 1, 1.73, 1.73 );
setScaleKey( spep_7-3 + 66, 1, 1.78, 1.78 );
setScaleKey( spep_7-3 + 68, 1, 1.84, 1.84 );
setScaleKey( spep_7-3 + 70, 1, 1.9, 1.9 );
setScaleKey( spep_7-3 + 72, 1, 1.95, 1.95 );
setScaleKey( spep_7-3 + 74, 1, 2.01, 2.01 );
setScaleKey( spep_7-3 + 76, 1, 2.06, 2.06 );
setScaleKey( spep_7-3 + 78, 1, 2.12, 2.12 );

setRotateKey( spep_7-3 + 12, 1, 51.7 );
setRotateKey( spep_7-3 + 29, 1, 51.7 );

setRotateKey( spep_7-3 + 30, 1, 0 );
setRotateKey( spep_7-3 + 78, 1, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_7-3 + 30,  10021, 48, 0x100, -1, 0, 126.9, 374.4 );
setEffShake( spep_7-3 + 30, ctbago, 48, 10 );
setEffMoveKey( spep_7-3 + 30, ctbago, 126.9, 374.4 , 0 );
setEffMoveKey( spep_7-3 + 32, ctbago, 137.3, 383.2 , 0 );
setEffMoveKey( spep_7-3 + 34, ctbago, 140.8, 375.6 , 0 );
setEffMoveKey( spep_7-3 + 36, ctbago, 193, 397.6 , 0 );
setEffMoveKey( spep_7-3 + 38, ctbago, 173.7, 378.4 , 0 );
setEffMoveKey( spep_7-3 + 40, ctbago, 193, 397.7 , 0 );
setEffMoveKey( spep_7-3 + 42, ctbago, 173.7, 378.6 , 0 );
setEffMoveKey( spep_7-3 + 44, ctbago, 193.1, 398.2 , 0 );
setEffMoveKey( spep_7-3 + 46, ctbago, 173.9, 379.5 , 0 );
setEffMoveKey( spep_7-3 + 48, ctbago, 193.2, 399.4 , 0 );
setEffMoveKey( spep_7-3 + 50, ctbago, 174.2, 381.4 , 0 );
setEffMoveKey( spep_7-3 + 52, ctbago, 193.5, 401.8 , 0 );
setEffMoveKey( spep_7-3 + 54, ctbago, 174.7, 384.8 , 0 );
setEffMoveKey( spep_7-3 + 56, ctbago, 193.9, 405.9 , 0 );
setEffMoveKey( spep_7-3 + 58, ctbago, 175.6, 390.1 , 0 );
setEffMoveKey( spep_7-3 + 60, ctbago, 194.5, 411.8 , 0 );
setEffMoveKey( spep_7-3 + 62, ctbago, 176.9, 397.7 , 0 );
setEffMoveKey( spep_7-3 + 64, ctbago, 195.4, 420.2 , 0 );
setEffMoveKey( spep_7-3 + 66, ctbago, 178.6, 408.1 , 0 );
setEffMoveKey( spep_7-3 + 68, ctbago, 196.5, 431.3 , 0 );
setEffMoveKey( spep_7-3 + 70, ctbago, 180.8, 421.6 , 0 );
setEffMoveKey( spep_7-3 + 72, ctbago, 198, 445.5 , 0 );
setEffMoveKey( spep_7-3 + 74, ctbago, 183.6, 438.8 , 0 );
setEffMoveKey( spep_7-3 + 76, ctbago, 199.8, 463.3 , 0 );
setEffMoveKey( spep_7-3 + 78, ctbago, 187, 460 , 0 );

setEffScaleKey( spep_7-3 + 30, ctbago, 1.5, 1.5 );
setEffScaleKey( spep_7-3 + 32, ctbago, 1.57, 1.57 );
setEffScaleKey( spep_7-3 + 34, ctbago, 2.09, 2.09 );
setEffScaleKey( spep_7-3 + 36, ctbago, 3.49, 3.49 );
setEffScaleKey( spep_7-3 + 44, ctbago, 3.49, 3.49 );
setEffScaleKey( spep_7-3 + 46, ctbago, 3.48, 3.48 );
setEffScaleKey( spep_7-3 + 48, ctbago, 3.47, 3.47 );
setEffScaleKey( spep_7-3 + 50, ctbago, 3.46, 3.46 );
setEffScaleKey( spep_7-3 + 52, ctbago, 3.44, 3.44 );
setEffScaleKey( spep_7-3 + 54, ctbago, 3.42, 3.42 );
setEffScaleKey( spep_7-3 + 56, ctbago, 3.39, 3.39 );
setEffScaleKey( spep_7-3 + 58, ctbago, 3.35, 3.35 );
setEffScaleKey( spep_7-3 + 60, ctbago, 3.31, 3.31 );
setEffScaleKey( spep_7-3 + 62, ctbago, 3.26, 3.26 );
setEffScaleKey( spep_7-3 + 64, ctbago, 3.2, 3.2 );
setEffScaleKey( spep_7-3 + 66, ctbago, 3.13, 3.13 );
setEffScaleKey( spep_7-3 + 68, ctbago, 3.05, 3.05 );
setEffScaleKey( spep_7-3 + 70, ctbago, 2.96, 2.96 );
setEffScaleKey( spep_7-3 + 72, ctbago, 2.87, 2.87 );
setEffScaleKey( spep_7-3 + 74, ctbago, 2.76, 2.76 );
setEffScaleKey( spep_7-3 + 76, ctbago, 2.63, 2.63 );
setEffScaleKey( spep_7-3 + 78, ctbago, 2.5, 2.5 );

setEffRotateKey( spep_7-3 + 30, ctbago, 31.9 );
setEffRotateKey( spep_7-3 + 32, ctbago, 31.9 );
setEffRotateKey( spep_7-3 + 34, ctbago, 31.8 );
setEffRotateKey( spep_7-3 + 78, ctbago, 31.8 );

setEffAlphaKey( spep_7-3 + 30, ctbago, 255 );
setEffAlphaKey( spep_7-3 + 78, ctbago, 255 );

--SE
playSe( spep_7 + 10, 1109 );
playSe( spep_7 + 27, 1003 );
playSe( spep_7 + 28, 1009 );
setSeVolume( spep_7 + 28, 1009, 81 );
playSe( spep_7 + 30, 1120 );

--白フェード
entryFade( spep_7 + 26, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 72, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 80;

------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_8 + 0, 1, 1 );
changeAnime( spep_8 + 0, 1, 107 );
setMoveKey( spep_8 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_8 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_8 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_8 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_8 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_8 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_8 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_8 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_8 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_8 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_8 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_8 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_8 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_8 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_8 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_8 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_8 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_8 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_8 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_8 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_8 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_8 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_8 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_8 + 0, 1, 0-z );
setRotateKey( spep_8 + 2, 1, 105-z );
setRotateKey( spep_8 + 4, 1, 240-z );
setRotateKey( spep_8 + 6, 1, 405-z );
setRotateKey( spep_8 + 8, 1, 600-z );
setRotateKey( spep_8 + 10, 1, 825-z );
setRotateKey( spep_8 + 12, 1, 1080-z );
setRotateKey( spep_8 + 110, 1, 1080-z );

-- ** エフェクト等 ** --
bg = entryEffect( spep_8 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_8 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_8 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, bg, 0 );
setEffRotateKey( spep_8 + 100, bg, 0 );
setEffAlphaKey( spep_8 + 0, bg, 255 );
setEffAlphaKey( spep_8 + 100, bg, 255 );

--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_8 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_8 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_8 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_8 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_8 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_8 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_8 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_8 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_8 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_8 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_8 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_8 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_8 + 112, bakuhatsu, 255 );
]]--

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_8 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_8 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_8 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_8 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_8 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_8 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_8 + 14, shuchusen4, 0 );
setEffRotateKey( spep_8 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_8 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_8 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_8 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_8 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_8 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_8 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_8 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_8 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_8 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_8 + 14,  1657, 86 +10, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_8 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100 +10, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_8 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_8 + 100 +10, shuchusen5, 1, 1 );

setEffRotateKey( spep_8 + 14, shuchusen5, 0 );
setEffRotateKey( spep_8 + 100 +10, shuchusen5, 0 );

setEffAlphaKey( spep_8 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_8 + 100 +10, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_8 + 14,  10005, 86 +10, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_8 + 14, ctga, 14, 20 );

setEffMoveKey( spep_8 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 100 +10, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_8 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_8 + 100 +10, ctga, 3.2, 3.2 );

setEffRotateKey( spep_8 + 14, ctga, -10.9 );
setEffRotateKey( spep_8 + 15, ctga, -10.9 );
setEffRotateKey( spep_8 + 16, ctga, -14.9 );
setEffRotateKey( spep_8 + 17, ctga, -14.9 );
setEffRotateKey( spep_8 + 18, ctga, -10.9 );
setEffRotateKey( spep_8 + 19, ctga, -10.9 );
setEffRotateKey( spep_8 + 20, ctga, -14.9 );
setEffRotateKey( spep_8 + 21, ctga, -14.9 );
setEffRotateKey( spep_8 + 22, ctga, -10.9 );
setEffRotateKey( spep_8 + 23, ctga, -10.9 );
setEffRotateKey( spep_8 + 24, ctga, -14.9 );
setEffRotateKey( spep_8 + 25, ctga, -14.9 );
setEffRotateKey( spep_8 + 26, ctga, -10.9 );
setEffRotateKey( spep_8 + 27, ctga, -10.9 );
setEffRotateKey( spep_8 + 28, ctga, -14.9 );
setEffRotateKey( spep_8 + 100 +10, ctga, -14.9 );

setEffAlphaKey( spep_8 + 14, ctga, 255 );
setEffAlphaKey( spep_8 + 100 +10, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_8 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_8 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_8 + 100 +10, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_8 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_8 + 100 +10, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_8 + 2, hibiware, 0 );
setEffRotateKey( spep_8 + 100 +10, hibiware, 0 );

setEffAlphaKey( spep_8 + 2, hibiware, 0 );
setEffAlphaKey( spep_8 + 13, hibiware, 0 );
setEffAlphaKey( spep_8 + 14, hibiware, 255 );
setEffAlphaKey( spep_8 + 100 +10, hibiware, 255 );

--SE
playSe( spep_8 + 0, 1023 );
playSe( spep_8 + 14, 1054 );
playSe( spep_8 + 14, 19 );

--終わり
dealDamage( spep_8 +10 );
endPhase( spep_8 + 100 );

end
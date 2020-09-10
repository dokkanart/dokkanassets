--1018660:ミスター・ブウ_ヒップクラッシュ
--sp_effect_b1_00091

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
SP_01=	154584	;--	気だめ、セリフカットイン
SP_02=	154585	;--	接近ビンタ⇒鉄槌⇒敵落下
SP_03=	154586	;--	接近ビンタ⇒鉄槌⇒敵落下
SP_04=	154587	;--	急降下
SP_05=	154588	;--	ヒップクラッシュ⇒ガッツポ-ズ
SP_06=	154589	;--	ヒップクラッシュ⇒ガッツポ-ズ
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
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気だめ
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 140, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 140, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 140, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 140, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 34,  906, 104, 0x100, -1, 0, 0, 0 );
setEffShake(  spep_0-3 + 34, shuchusen1, 104, 20 );
setEffMoveKey( spep_0-3 + 34, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 138, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 34, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_0-3 + 138, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_0-3 + 34, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 138, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 34, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 138, shuchusen1, 255 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +52, 190006, 72, 0x100, -1, 0, 120, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +52,  ctgogo,  120,  510);
setEffMoveKey(  spep_0 +124,  ctgogo,  120,  510);

setEffAlphaKey( spep_0 +52, ctgogo, 0 );
setEffAlphaKey( spep_0 + 53, ctgogo, 255 );
setEffAlphaKey( spep_0 + 54, ctgogo, 255 );
setEffAlphaKey( spep_0 + 118, ctgogo, 255 );
setEffAlphaKey( spep_0 + 120, ctgogo, 191 );
setEffAlphaKey( spep_0 + 122, ctgogo, 112 );
setEffAlphaKey( spep_0 + 124, ctgogo, 64 );

setEffRotateKey(  spep_0 +52,  ctgogo,  0);
setEffRotateKey(  spep_0 +124,  ctgogo,  0);

setEffScaleKey(  spep_0 +52,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +114,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +124,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 37, 1035 );
playSe(spep_0+52, 1018);

--白フェード
entryFade( spep_0 + 132, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--次の準備
spep_1=spep_0+140;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--白フェード
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--接近ビンタ⇒鉄槌⇒
--------------------------------------
-- ** エフェクト等 ** --
binta_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, binta_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 252, binta_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, binta_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 252, binta_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, binta_f, 0 );
setEffRotateKey( spep_2 + 252, binta_f, 0 );
setEffAlphaKey( spep_2 + 0, binta_f, 255 );
setEffAlphaKey( spep_2 + 252, binta_f, 255 );

-- ** エフェクト等 ** --
binta_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, binta_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 252, binta_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, binta_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 252, binta_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, binta_b, 0 );
setEffRotateKey( spep_2 + 252, binta_b, 0 );
setEffAlphaKey( spep_2 + 0, binta_b, 255 );
setEffAlphaKey( spep_2 + 252, binta_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 189.1, -185 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 178.5, -171.8 , 0 );
setMoveKey( spep_2-3 + 4, 1, 168, -158.6 , 0 );
setMoveKey( spep_2-3 + 6, 1, 157.4, -145.3 , 0 );
setMoveKey( spep_2-3 + 8, 1, 146.8, -132.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 136.2, -118.8 , 0 );
setMoveKey( spep_2-3 + 12, 1, 125.6, -105.6 , 0 );
setMoveKey( spep_2-3 + 14, 1, 115, -92.4 , 0 );
setMoveKey( spep_2-3 + 16, 1, 104.5, -79.1 , 0 );
setMoveKey( spep_2-3 + 18, 1, 93.9, -65.9 , 0 );
setMoveKey( spep_2-3 + 20, 1, 83.3, -52.6 , 0 );
setMoveKey( spep_2-3 + 22, 1, 72.8, -39.4 , 0 );
setMoveKey( spep_2-3 + 24, 1, 62.2, -26.2 , 0 );
setMoveKey( spep_2-3 + 26, 1, 51.6, -12.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, 41.1, 0.3 , 0 );
setMoveKey( spep_2-3 + 30, 1, 51.9, 0.3 , 0 );
setMoveKey( spep_2-3 + 32, 1, 52.3, 0.3 , 0 );

setScaleKey( spep_2 + 0, 1, 2.23, 2.23 );
--setScaleKey( spep_2-3 + 2, 1, 2.17, 2.17 );
setScaleKey( spep_2-3 + 4, 1, 2.11, 2.11 );
setScaleKey( spep_2-3 + 6, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 8, 1, 2, 2 );
setScaleKey( spep_2-3 + 10, 1, 1.94, 1.94 );
setScaleKey( spep_2-3 + 12, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 14, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 16, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 18, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 20, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 22, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 24, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 26, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 28, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 32, 1, 1.41, 1.41 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 28, 1, 0 );
setRotateKey( spep_2-3 + 30, 1, 2.4 );
setRotateKey( spep_2-3 + 32, 1, 2.5 );

--SE
se_0008 = playSe( spep_2, 8 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge -12, se_0008, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 30,  906, 14, 0x100, -1, 0, 0, 0 );
setEffShake(  spep_2-3 + 30, shuchusen2, 14, 20 );
setEffMoveKey( spep_2-3 + 30, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 44, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 30, shuchusen2, 1, 1 );
setEffScaleKey( spep_2-3 + 44, shuchusen2, 1, 1 );

setEffRotateKey( spep_2-3 + 30, shuchusen2, 180 );
setEffRotateKey( spep_2-3 + 44, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 30, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 44, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 76,  906, 22, 0x100, -1, 0, 0, 0 );
setEffShake(  spep_2-3 + 76, shuchusen3, 22, 20 );
setEffMoveKey( spep_2-3 + 76, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 98, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 76, shuchusen3, 1, 1 );
setEffScaleKey( spep_2-3 + 98, shuchusen3, 1, 1 );

setEffRotateKey( spep_2-3 + 76, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 98, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 76, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 98, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_2-3 + 142,  906, 2, 0x100, -1, 0, 0, 0 );
setEffShake(  spep_2-3 + 142, shuchusen4, 2, 20 );
setEffMoveKey( spep_2-3 + 142, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 144, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 142, shuchusen4, 1, 1 );
setEffScaleKey( spep_2-3 + 144, shuchusen4, 1, 1 );

setEffRotateKey( spep_2-3 + 142, shuchusen4, 180 );
setEffRotateKey( spep_2-3 + 144, shuchusen4, 180 );

setEffAlphaKey( spep_2-3 + 142, shuchusen4, 255 );
setEffAlphaKey( spep_2-3 + 144, shuchusen4, 255 );


--敵の動き
setDisp( spep_2  -3 + 250, 1, 0 );

changeAnime( spep_2-3 + 40, 1, 118 );
changeAnime( spep_2-3 + 76, 1, 108 );
changeAnime( spep_2-3 + 78, 1, 106 );
changeAnime( spep_2-3 + 144, 1, 108 );
changeAnime( spep_2-3 + 158, 1, 106 );
changeAnime( spep_2-3 + 198, 1, 108 );
changeAnime( spep_2-3 + 250, 1, 102 );


setMoveKey( spep_2-3 + 36, 1, 52.3, 0.3 , 0 );
setMoveKey( spep_2-3 + 39, 1, 53, 0.2 , 0 );
setMoveKey( spep_2-3 + 40, 1, 68, -18.5 , 0 );
setMoveKey( spep_2-3 + 48, 1, 68, -18.5 , 0 );
setMoveKey( spep_2-3 + 50, 1, 67.9, -18.5 , 0 );
setMoveKey( spep_2-3 + 52, 1, 68.1, -18.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 68.3, -18.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 68.5, -18.6 , 0 );
setMoveKey( spep_2-3 + 58, 1, 68.6, -18.7 , 0 );
setMoveKey( spep_2-3 + 60, 1, 68.8, -18.7 , 0 );
setMoveKey( spep_2-3 + 62, 1, 69, -18.7 , 0 );
setMoveKey( spep_2-3 + 64, 1, 69.2, -18.8 , 0 );
setMoveKey( spep_2-3 + 66, 1, 69.4, -18.8 , 0 );
setMoveKey( spep_2-3 + 68, 1, 69.6, -18.9 , 0 );
setMoveKey( spep_2-3 + 70, 1, 69.7, -18.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, 69.9, -19 , 0 );
setMoveKey( spep_2-3 + 75, 1, 70.1, -19 , 0 );
setMoveKey( spep_2-3 + 76, 1, 49.3, 13 , 0 );
setMoveKey( spep_2-3 + 77, 1, 49.3, 13 , 0 );
setMoveKey( spep_2-3 + 78, 1, 31.9, -48.4 , 0 );
setMoveKey( spep_2-3 + 80, 1, -11.2, -9.1 , 0 );
setMoveKey( spep_2-3 + 82, 1, 28.6, 14.6 , 0 );
setMoveKey( spep_2-3 + 84, 1, -13.8, -19.1 , 0 );
setMoveKey( spep_2-3 + 86, 1, 18.7, -20.9 , 0 );
setMoveKey( spep_2-3 + 88, 1, 2.5, -10.6 , 0 );
setMoveKey( spep_2-3 + 112, 1, 2.5, -10.6 , 0 );
setMoveKey( spep_2-3 + 114, 1, 2.5, -10.7 , 0 );
setMoveKey( spep_2-3 + 116, 1, 6.8, -12.7 , 0 );
setMoveKey( spep_2-3 + 118, 1, 11.4, -15 , 0 );
setMoveKey( spep_2-3 + 120, 1, 16.1, -17.2 , 0 );
setMoveKey( spep_2-3 + 122, 1, 20.8, -19.5 , 0 );
setMoveKey( spep_2-3 + 124, 1, 25.5, -21.8 , 0 );
setMoveKey( spep_2-3 + 126, 1, 30.2, -24 , 0 );
setMoveKey( spep_2-3 + 128, 1, 34.9, -26.3 , 0 );
setMoveKey( spep_2-3 + 130, 1, 39.7, -28.6 , 0 );
setMoveKey( spep_2-3 + 132, 1, 44.4, -30.8 , 0 );
setMoveKey( spep_2-3 + 134, 1, 49, -33.1 , 0 );
setMoveKey( spep_2-3 + 136, 1, 53.7, -35.3 , 0 );
setMoveKey( spep_2-3 + 138, 1, 58.3, -37.5 , 0 );
setMoveKey( spep_2-3 + 140, 1, 62.8, -39.6 , 0 );
setMoveKey( spep_2-3 + 143, 1, 63.7, -65.8 , 0 );
setMoveKey( spep_2-3 + 144, 1, 155.4, -98.8 , 0 );
setMoveKey( spep_2-3 + 146, 1, 130.8, -127.7 , 0 );
setMoveKey( spep_2-3 + 148, 1, 152.1, -123.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, 109.7, -178.9 , 0 );
setMoveKey( spep_2-3 + 152, 1, 142.2, -191.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, 126, -185.4 , 0 );
setMoveKey( spep_2-3 + 157, 1, 126, -186 , 0 );
setMoveKey( spep_2-3 + 158, 1, 127.1, -198 , 0 );
setMoveKey( spep_2-3 + 160, 1, 124.7, -196.2 , 0 );
setMoveKey( spep_2-3 + 162, 1, 117.5, -191 , 0 );
setMoveKey( spep_2-3 + 164, 1, 105.5, -182.2 , 0 );
setMoveKey( spep_2-3 + 166, 1, 88.7, -169.8 , 0 );
setMoveKey( spep_2-3 + 168, 1, 67.1, -150.8 , 0 );
setMoveKey( spep_2-3 + 170, 1, 67.1, -148.3 , 0 );
setMoveKey( spep_2-3 + 172, 1, 67.1, -145.9 , 0 );
setMoveKey( spep_2-3 + 174, 1, 67.1, -143.4 , 0 );
setMoveKey( spep_2-3 + 176, 1, 67.1, -140.9 , 0 );
setMoveKey( spep_2-3 + 178, 1, 67.1, -138.5 , 0 );
setMoveKey( spep_2-3 + 180, 1, 67.1, -136 , 0 );
setMoveKey( spep_2-3 + 182, 1, 67.1, -133.6 , 0 );
setMoveKey( spep_2-3 + 184, 1, 67.2, -131.1 , 0 );
setMoveKey( spep_2-3 + 186, 1, 67.2, -128.6 , 0 );
setMoveKey( spep_2-3 + 188, 1, 67.2, -126.2 , 0 );
setMoveKey( spep_2-3 + 190, 1, 67.2, -123.7 , 0 );
setMoveKey( spep_2-3 + 192, 1, 67.2, -252.9 , 0 );
setMoveKey( spep_2-3 + 194, 1, 67.2, -269.2 , 0 );
setMoveKey( spep_2-3 + 197, 1, 67.2, -266.6 , 0 );
setMoveKey( spep_2-3 + 198, 1, 35.9, -416 , 0 );
setMoveKey( spep_2-3 + 199, 1, 35.9, -416 , 0 );
setMoveKey( spep_2-3 + 200, 1, 36.1, -418.9 , 0 );
setMoveKey( spep_2-3 + 202, 1, 22.8, -412.8 , 0 );
setMoveKey( spep_2-3 + 204, 1, 31.2, -421.4 , 0 );
setMoveKey( spep_2-3 + 206, 1, 23.7, -431.8 , 0 );
setMoveKey( spep_2-3 + 208, 1, 32.1, -426.3 , 0 );
setMoveKey( spep_2-3 + 210, 1, 24.6, -436.7 , 0 );
setMoveKey( spep_2-3 + 212, 1, 33, -431.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 25.5, -441.6 , 0 );
setMoveKey( spep_2-3 + 216, 1, 34, -436 , 0 );
setMoveKey( spep_2-3 + 218, 1, 26.4, -446.4 , 0 );
setMoveKey( spep_2-3 + 220, 1, 34.9, -440.9 , 0 );
setMoveKey( spep_2-3 + 222, 1, 27.5, -452.3 , 0 );
setMoveKey( spep_2-3 + 224, 1, 35.7, -445.5 , 0 );
setMoveKey( spep_2-3 + 226, 1, 28, -454.8 , 0 );
setMoveKey( spep_2-3 + 228, 1, 36.3, -448.1 , 0 );
setMoveKey( spep_2-3 + 230, 1, 28.5, -457.3 , 0 );
setMoveKey( spep_2-3 + 232, 1, 36.8, -450.6 , 0 );
setMoveKey( spep_2-3 + 234, 1, 29.1, -459.9 , 0 );
setMoveKey( spep_2-3 + 236, 1, 37.3, -453.1 , 0 );
setMoveKey( spep_2-3 + 238, 1, 29.6, -462.4 , 0 );
setMoveKey( spep_2-3 + 240, 1, 37.9, -455.7 , 0 );
setMoveKey( spep_2-3 + 242, 1, 30.2, -464.9 , 0 );
setMoveKey( spep_2-3 + 244, 1, 38.4, -458.2 , 0 );
setMoveKey( spep_2-3 + 246, 1, 30.7, -467.5 , 0 );
setMoveKey( spep_2-3 + 249, 1, 39, -460.7 , 0 );
setMoveKey( spep_2-3 + 250, 1, 189.1, -185 , 0 );

setScaleKey( spep_2-3 + 36, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 39, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 52, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 54, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 60, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 62, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 68, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 70, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 75, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 76, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 77, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 78, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 80, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 82, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 116, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 118, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 120, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 122, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 124, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 126, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 128, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 130, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 132, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 134, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 140, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 143, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 144, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 146, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 148, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 197, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 198, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 199, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 200, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 202, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 204, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 206, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 208, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 210, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 212, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 214, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 216, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 218, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 220, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 222, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 224, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 226, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 228, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 230, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 232, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 234, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 236, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 238, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 240, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 242, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 244, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 246, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 249, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 250, 1, 2.23, 2.23 );

setRotateKey( spep_2-3 + 39, 1, 2.5 );
setRotateKey( spep_2-3 + 40, 1, 11.3 );
setRotateKey( spep_2-3 + 75, 1, 11.3 );
setRotateKey( spep_2-3 + 76, 1, -7 );
setRotateKey( spep_2-3 + 77, 1, -7 );
setRotateKey( spep_2-3 + 78, 1, -62.9 );
setRotateKey( spep_2-3 + 114, 1, -62.9 );
setRotateKey( spep_2-3 + 116, 1, -60.5 );
setRotateKey( spep_2-3 + 118, 1, -58 );
setRotateKey( spep_2-3 + 120, 1, -55.6 );
setRotateKey( spep_2-3 + 122, 1, -53.1 );
setRotateKey( spep_2-3 + 124, 1, -50.7 );
setRotateKey( spep_2-3 + 126, 1, -48.2 );
setRotateKey( spep_2-3 + 128, 1, -45.8 );
setRotateKey( spep_2-3 + 130, 1, -43.3 );
setRotateKey( spep_2-3 + 132, 1, -40.9 );
setRotateKey( spep_2-3 + 134, 1, -38.4 );
setRotateKey( spep_2-3 + 136, 1, -36 );
setRotateKey( spep_2-3 + 138, 1, -33.5 );
setRotateKey( spep_2-3 + 140, 1, -31.1 );
setRotateKey( spep_2-3 + 143, 1, -31.1 );
setRotateKey( spep_2-3 + 144, 1, 67.7 );
setRotateKey( spep_2-3 + 157, 1, 67.7 );
setRotateKey( spep_2-3 + 158, 1, 73 );
setRotateKey( spep_2-3 + 160, 1, 74.5 );
setRotateKey( spep_2-3 + 162, 1, 79 );
setRotateKey( spep_2-3 + 164, 1, 86.6 );
setRotateKey( spep_2-3 + 166, 1, 97.2 );
setRotateKey( spep_2-3 + 168, 1, 110.8 );
setRotateKey( spep_2-3 + 249, 1, 110.8 );
setRotateKey( spep_2-3 + 250, 1, 0 );

--!!
ctbikuri = entryEffectLife( spep_2-3 + 30,  10000, 16, 0x100, -1, 0, 75, 148.3 );

setEffMoveKey( spep_2-3 + 30, ctbikuri, 75, 148.3 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbikuri, 86.1, 172.9 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbikuri, 97.1, 197.6 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbikuri, 108.2, 222.2 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbikuri, 107.1, 219.4 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbikuri, 106, 216.7 , 0 );
setEffMoveKey( spep_2-3 + 42, ctbikuri, 105, 214 , 0 );
setEffMoveKey( spep_2-3 + 44, ctbikuri, 105.9, 216.5 , 0 );
setEffMoveKey( spep_2-3 + 46, ctbikuri, 106.9, 218.9 , 0 );

setEffScaleKey( spep_2-3 + 30, ctbikuri, 1, 1 );
setEffScaleKey( spep_2-3 + 32, ctbikuri, 1.37, 1.37 );
setEffScaleKey( spep_2-3 + 34, ctbikuri, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 36, ctbikuri, 2.1, 2.1 );
setEffScaleKey( spep_2-3 + 38, ctbikuri, 2.02, 2.02 );
setEffScaleKey( spep_2-3 + 40, ctbikuri, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 42, ctbikuri, 1.85, 1.85 );
setEffScaleKey( spep_2-3 + 44, ctbikuri, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 46, ctbikuri, 2, 2 );

setEffRotateKey( spep_2-3 + 30, ctbikuri, 20.3 );
setEffRotateKey( spep_2-3 + 46, ctbikuri, 20.3 );

setEffAlphaKey( spep_2-3 + 30, ctbikuri, 26 );
setEffAlphaKey( spep_2-3 + 32, ctbikuri, 102 );
setEffAlphaKey( spep_2-3 + 34, ctbikuri, 179 );
setEffAlphaKey( spep_2-3 + 36, ctbikuri, 255 );
setEffAlphaKey( spep_2-3 + 42, ctbikuri, 255 );
setEffAlphaKey( spep_2-3 + 44, ctbikuri, 141 );
setEffAlphaKey( spep_2-3 + 46, ctbikuri, 26 );

--ばき
ctbaki = entryEffectLife( spep_2-3 + 76,  10020, 28, 0x100, -1, 0, 134.5, 274.3 );--バキッ

setEffMoveKey( spep_2-3 + 76, ctbaki, 134.5, 274.3 , 0 );
setEffMoveKey( spep_2-3 + 78, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_2-3 + 80, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_2-3 + 82, ctbaki, 134.5, 274.3 , 0 );
setEffMoveKey( spep_2-3 + 84, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_2-3 + 86, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_2-3 + 88, ctbaki, 134.5, 274.3 , 0 );
setEffMoveKey( spep_2-3 + 90, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_2-3 + 92, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_2-3 + 94, ctbaki, 134.5, 274.3 , 0 );
setEffMoveKey( spep_2-3 + 96, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_2-3 + 98, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_2-3 + 100, ctbaki, 165.6, 321.5 , 0 );
setEffMoveKey( spep_2-3 + 102, ctbaki, 152.3, 317.6 , 0 );
setEffMoveKey( spep_2-3 + 104, ctbaki, 152.3, 317.6 , 0 );

setEffScaleKey( spep_2-3 + 76, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 104, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_2-3 + 76, ctbaki, 40 );
setEffRotateKey( spep_2-3 + 104, ctbaki, 40 );

setEffAlphaKey( spep_2-3 + 76, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 100, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 102, ctbaki, 128 );
setEffAlphaKey( spep_2-3 + 104, ctbaki, 0 );

--どん
ctdon = entryEffectLife( spep_2-3 + 142,  10019, 32, 0x100, -1, 0, -145.5, 428.8 );--ドンッ

setEffMoveKey( spep_2-3 + 142, ctdon, -145.5, 428.8 , 0 );
setEffMoveKey( spep_2-3 + 144, ctdon, -140.6, 432.9 , 0 );
setEffMoveKey( spep_2-3 + 146, ctdon, -138.2, 416.4 , 0 );
setEffMoveKey( spep_2-3 + 148, ctdon, -144.4, 424.2 , 0 );
setEffMoveKey( spep_2-3 + 150, ctdon, -137.8, 411.7 , 0 );
setEffMoveKey( spep_2-3 + 152, ctdon, -144.9, 409.6 , 0 );
setEffMoveKey( spep_2-3 + 154, ctdon, -139.6, 400.7 , 0 );
setEffMoveKey( spep_2-3 + 156, ctdon, -140.3, 403.3 , 0 );
setEffMoveKey( spep_2-3 + 158, ctdon, -139.9, 391 , 0 );
setEffMoveKey( spep_2-3 + 160, ctdon, -144.5, 394.2 , 0 );
setEffMoveKey( spep_2-3 + 162, ctdon, -141.2, 384.1 , 0 );
setEffMoveKey( spep_2-3 + 164, ctdon, -144.7, 383.5 , 0 );
setEffMoveKey( spep_2-3 + 166, ctdon, -139.4, 375.2 , 0 );
setEffMoveKey( spep_2-3 + 168, ctdon, -142.1, 374.8 , 0 );
setEffMoveKey( spep_2-3 + 170, ctdon, -144.6, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 172, ctdon, -166.3, 405.6 , 0 );
setEffMoveKey( spep_2-3 + 174, ctdon, -193.8, 438.5 , 0 );

setEffScaleKey( spep_2-3 + 142, ctdon, 2, 2 );
setEffScaleKey( spep_2-3 + 144, ctdon, 2, 2 );
setEffScaleKey( spep_2-3 + 146, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_2-3 + 150, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_2-3 + 152, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_2-3 + 156, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_2-3 + 158, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 160, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 162, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_2-3 + 166, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_2-3 + 168, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_2-3 + 170, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_2-3 + 172, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_2-3 + 174, ctdon, 0.75, 0.75 );

setEffRotateKey( spep_2-3 + 142, ctdon, -10 );
setEffRotateKey( spep_2-3 + 174, ctdon, -10 );

setEffAlphaKey( spep_2-3 + 142, ctdon, 255 );
setEffAlphaKey( spep_2-3 + 170, ctdon, 255 );
setEffAlphaKey( spep_2-3 + 172, ctdon, 128 );
setEffAlphaKey( spep_2-3 + 174, ctdon, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 198,  10016, 26, 0x100, -1, 0, 17.8, -90.8 );--ズンッ

setEffMoveKey( spep_2-3 + 198, ctzun, 17.8, -90.8 , 0 );
setEffMoveKey( spep_2-3 + 200, ctzun, 17.2, -89.9 , 0 );
setEffMoveKey( spep_2-3 + 202, ctzun, 16.6, -89 , 0 );
setEffMoveKey( spep_2-3 + 204, ctzun, 16, -88.2 , 0 );
setEffMoveKey( spep_2-3 + 206, ctzun, 15.4, -87.3 , 0 );
setEffMoveKey( spep_2-3 + 208, ctzun, 14.8, -86.4 , 0 );
setEffMoveKey( spep_2-3 + 210, ctzun, 14.2, -85.6 , 0 );
setEffMoveKey( spep_2-3 + 212, ctzun, 13.6, -84.7 , 0 );
setEffMoveKey( spep_2-3 + 214, ctzun, 13, -83.8 , 0 );
setEffMoveKey( spep_2-3 + 216, ctzun, 12.4, -82.9 , 0 );
setEffMoveKey( spep_2-3 + 218, ctzun, 11.8, -82.1 , 0 );
setEffMoveKey( spep_2-3 + 224, ctzun, 11.2, -81.2 , 0 );

setEffScaleKey( spep_2-3 + 198, ctzun, 1.2, 1.2 );
setEffScaleKey( spep_2-3 + 200, ctzun, 1.27, 1.27 );
setEffScaleKey( spep_2-3 + 202, ctzun, 1.35, 1.35 );
setEffScaleKey( spep_2-3 + 204, ctzun, 1.42, 1.42 );
setEffScaleKey( spep_2-3 + 206, ctzun, 1.49, 1.49 );
setEffScaleKey( spep_2-3 + 208, ctzun, 1.56, 1.56 );
setEffScaleKey( spep_2-3 + 210, ctzun, 1.64, 1.64 );
setEffScaleKey( spep_2-3 + 212, ctzun, 1.71, 1.71 );
setEffScaleKey( spep_2-3 + 214, ctzun, 1.78, 1.78 );
setEffScaleKey( spep_2-3 + 216, ctzun, 1.85, 1.85 );
setEffScaleKey( spep_2-3 + 218, ctzun, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 220, ctzun, 2, 2 );
setEffScaleKey( spep_2-3 + 224, ctzun, 2, 2 );

setEffRotateKey( spep_2-3 + 198, ctzun, 10 );
setEffRotateKey( spep_2-3 + 224, ctzun, 10 );

setEffAlphaKey( spep_2-3 + 198, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 220, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 222, ctzun, 141 );
setEffAlphaKey( spep_2-3 + 224, ctzun, 26 );


playSe( spep_2 + 29, 1113 );
playSe( spep_2 + 71, 1006 );
playSe( spep_2 + 71, 1110 );
playSe( spep_2 + 72, 1000 );
se_1121 = playSe( spep_2 + 75, 1121 );
setSeVolume( spep_2 + 75, 1121, 0 );
setSeVolume( spep_2 + 145, 1121, 35 );
setSeVolume( spep_2 + 146, 1121, 70 );
setSeVolume( spep_2 + 147, 1121, 100 );
playSe( spep_2 + 129, 1009 );
playSe( spep_2 + 129, 1110 );
setSeVolume( spep_2 + 129, 1110, 63 );
se_0009 = playSe( spep_2 + 132, 9 );
setSeVolume( spep_2 + 132, 9, 79 );
se_1159 = playSe( spep_2 + 197, 1159 );

stopSe( spep_2 + 28, se_0008, 10 );
stopSe( spep_2 + 202, se_1121, 0 );
stopSe( spep_2 + 197, se_0009, 0 );
stopSe( spep_2 + 247, se_1159, 52 );


--白フェード
entryFade( spep_2 + 242, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--次の準備
spep_3=spep_2+252;

------------------------------------------------------
-- 急降下
------------------------------------------------------
-- ** エフェクト等 ** --
fall = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, fall, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, fall, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fall, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, fall, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fall, 0 );
setEffRotateKey( spep_3 + 120, fall, 0 );
setEffAlphaKey( spep_3 + 0, fall, 255 );
setEffAlphaKey( spep_3 + 120, fall, 255 );

shuchusen5 = entryEffectLife( spep_3-3 + 58,  906, 60, 0x100, -1, 0, 0, 133 );
setEffShake(  spep_3-3 + 58, shuchusen5, 60, 20 );
setEffMoveKey( spep_3-3 + 58, shuchusen5, 0, 133 , 0 );
setEffMoveKey( spep_3-3 + 118, shuchusen5, 0, 133 , 0 );

setEffScaleKey( spep_3-3 + 58, shuchusen5, 1.07, 1.29 );
setEffScaleKey( spep_3-3 + 118, shuchusen5, 1.07, 1.29 );

setEffRotateKey( spep_3-3 + 58, shuchusen5, 180 );
setEffRotateKey( spep_3-3 + 118, shuchusen5, 180 );

setEffAlphaKey( spep_3-3 + 58, shuchusen5, 255 );
setEffAlphaKey( spep_3-3 + 118, shuchusen5, 255 );

--SE
playSe( spep_3 + 4, 1117 );
setSeVolume( spep_3 + 4, 1117, 79 );
se_1116 = playSe( spep_3 + 50, 1116 );
se_1118 = playSe( spep_3 + 55, 1118 );
setSeVolume( spep_3 + 55, 1118, 79 );

--白フェード
entryFade( spep_3 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--次の準備
spep_4=spep_3+120;

------------------------------------------------------
-- ヒップクラッシュ⇒ガッツポ-ズ
------------------------------------------------------


-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 160, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 160, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 160, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 160, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 160, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 160, finish_b, 255 );

setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 160, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 28, 1, 106 );
changeAnime( spep_4-3 + 32, 1, 108 );
changeAnime( spep_4-3 + 36, 1, 106 );

setMoveKey( spep_4 + 0, 1, 4.3, -349 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 5.4, -349.5 , 0 );
setMoveKey( spep_4-3 + 4, 1, 6.4, -350 , 0 );
setMoveKey( spep_4-3 + 6, 1, 7.4, -350.5 , 0 );
setMoveKey( spep_4-3 + 8, 1, 8.5, -351 , 0 );
setMoveKey( spep_4-3 + 10, 1, 9.5, -351.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 10.6, -352 , 0 );
setMoveKey( spep_4-3 + 14, 1, 11.6, -352.5 , 0 );
setMoveKey( spep_4-3 + 16, 1, 12.6, -353 , 0 );
setMoveKey( spep_4-3 + 18, 1, 13.7, -353.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, 14.7, -354.1 , 0 );
setMoveKey( spep_4-3 + 22, 1, 15.7, -354.6 , 0 );
setMoveKey( spep_4-3 + 24, 1, 16.8, -355.1 , 0 );
setMoveKey( spep_4-3 + 27, 1, 4, -380.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, 46.9, -364 , 0 );
setMoveKey( spep_4-3 + 31, 1, -1, -321.4 , 0 );
setMoveKey( spep_4-3 + 32, 1, 43.8, -346.6 , 0 );
setMoveKey( spep_4-3 + 35, 1, 1.4, -380.3 , 0 );
setMoveKey( spep_4-3 + 36, 1, 33.8, -352.4 , 0 );
setMoveKey( spep_4-3 + 38, 1, 17.6, -342.1 , 0 );
setMoveKey( spep_4-3 + 40, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 42, 1, 17.6, -342.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 46, 1, 17.6, -342.1 , 0 );
setMoveKey( spep_4-3 + 48, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 50, 1, 17.6, -342.1 , 0 );
setMoveKey( spep_4-3 + 52, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 54, 1, 17.6, -342.1 , 0 );
setMoveKey( spep_4-3 + 56, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 58, 1, 17.6, -342.1 , 0 );
setMoveKey( spep_4-3 + 60, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 76, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, 9.6, -355.1 , 0 );
setMoveKey( spep_4-3 + 82, 1, 9.6, -355.1 , 0 );
setMoveKey( spep_4-3 + 84, 1, 9.6, -352.6 , 0 );
setMoveKey( spep_4-3 + 86, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 98, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 100, 1, 9.6, -355.1 , 0 );
setMoveKey( spep_4-3 + 102, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 160, 1, 9.6, -350.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.02, 1.02 );
--setScaleKey( spep_4-3 + 2, 1, 1.03, 1.03 );
setScaleKey( spep_4-3 + 4, 1, 1.05, 1.05 );
setScaleKey( spep_4-3 + 6, 1, 1.06, 1.06 );
setScaleKey( spep_4-3 + 8, 1, 1.08, 1.08 );
setScaleKey( spep_4-3 + 10, 1, 1.09, 1.09 );
setScaleKey( spep_4-3 + 12, 1, 1.1, 1.1 );
setScaleKey( spep_4-3 + 14, 1, 1.12, 1.12 );
setScaleKey( spep_4-3 + 16, 1, 1.13, 1.13 );
setScaleKey( spep_4-3 + 18, 1, 1.15, 1.15 );
setScaleKey( spep_4-3 + 20, 1, 1.16, 1.16 );
setScaleKey( spep_4-3 + 22, 1, 1.17, 1.17 );
setScaleKey( spep_4-3 + 24, 1, 1.19, 1.19 );
setScaleKey( spep_4-3 + 27, 1, 1.38, 1.32 );
setScaleKey( spep_4-3 + 28, 1, 1.3, 1.3 );
setScaleKey( spep_4-3 + 31, 1, 1.3, 1.3 );
setScaleKey( spep_4-3 + 32, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 35, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 36, 1, 1.3, 1.3 );
setScaleKey( spep_4-3 + 102, 1, 1.3, 1.3 );
setScaleKey( spep_4-3 + 160, 1, 1.3, 1.3 );

setRotateKey( spep_4 + 0, 1, 78.2 );
setRotateKey( spep_4-3 + 27, 1, 78.2 );
setRotateKey( spep_4-3 + 28, 1, 38.1 );
setRotateKey( spep_4-3 + 31, 1, 38.1 );
setRotateKey( spep_4-3 + 32, 1, 78.2 );
setRotateKey( spep_4-3 + 35, 1, 78.2 );
setRotateKey( spep_4-3 + 36, 1, 38.1 );
setRotateKey( spep_4-3 + 102, 1, 38.1 );
setRotateKey( spep_4-3 + 160, 1, 38.1 );

--SE
playSe( spep_4 + 23, 1010 );
se_1159 = playSe( spep_4 + 23, 1159 );
playSe( spep_4 + 80, 1003 );
se_1023 = playSe( spep_4 + 93, 1023 );
se_0031 = playSe( spep_4 + 94, 31 );
playSe( spep_4 + 94, 1106 );
setSeVolume( spep_4 + 94, 1106, 158 );
playSe( spep_4 + 95, 1107 );
setSeVolume( spep_4 + 95, 1107, 158 );

stopSe( spep_4 + 23, se_1116, 0 );
stopSe( spep_4 + 23, se_1118, 0 );
stopSe( spep_4 + 46, se_1159, 47 );
stopSe( spep_4 + 54, se_1023, 19 );
stopSe( spep_4 + 107, se_0031, 19 );
-- ** ダメージ表示 ** --
dealDamage( spep_4 + 24 );
endPhase( spep_4 + 150 );
else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気だめ
------------------------------------------------------
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 140, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 140, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 140, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 140, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 34,  906, 104, 0x100, -1, 0, 0, 0 );
setEffShake(  spep_0-3 + 34, shuchusen1, 104, 20 );
setEffMoveKey( spep_0-3 + 34, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 138, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 34, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_0-3 + 138, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_0-3 + 34, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 138, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 34, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 138, shuchusen1, 255 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +52, 190006, 72, 0x100, -1, 0, 120, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +52,  ctgogo,  120,  510);
setEffMoveKey(  spep_0 +124,  ctgogo,  120,  510);

setEffAlphaKey( spep_0 +52, ctgogo, 0 );
setEffAlphaKey( spep_0 + 53, ctgogo, 255 );
setEffAlphaKey( spep_0 + 54, ctgogo, 255 );
setEffAlphaKey( spep_0 + 118, ctgogo, 255 );
setEffAlphaKey( spep_0 + 120, ctgogo, 191 );
setEffAlphaKey( spep_0 + 122, ctgogo, 112 );
setEffAlphaKey( spep_0 + 124, ctgogo, 64 );

setEffRotateKey(  spep_0 +52,  ctgogo,  0);
setEffRotateKey(  spep_0 +124,  ctgogo,  0);

setEffScaleKey(  spep_0 +52,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +114,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +124,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 37, 1035 );
playSe(spep_0+52, 1018);

--白フェード
entryFade( spep_0 + 132, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--次の準備
spep_1=spep_0+140;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--白フェード
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--接近ビンタ⇒鉄槌⇒
--------------------------------------
-- ** エフェクト等 ** --
binta_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, binta_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 252, binta_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, binta_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 252, binta_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, binta_f, 0 );
setEffRotateKey( spep_2 + 252, binta_f, 0 );
setEffAlphaKey( spep_2 + 0, binta_f, 255 );
setEffAlphaKey( spep_2 + 252, binta_f, 255 );

-- ** エフェクト等 ** --
binta_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, binta_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 252, binta_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, binta_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 252, binta_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, binta_b, 0 );
setEffRotateKey( spep_2 + 252, binta_b, 0 );
setEffAlphaKey( spep_2 + 0, binta_b, 255 );
setEffAlphaKey( spep_2 + 252, binta_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 189.1, -185 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 178.5, -171.8 , 0 );
setMoveKey( spep_2-3 + 4, 1, 168, -158.6 , 0 );
setMoveKey( spep_2-3 + 6, 1, 157.4, -145.3 , 0 );
setMoveKey( spep_2-3 + 8, 1, 146.8, -132.1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 136.2, -118.8 , 0 );
setMoveKey( spep_2-3 + 12, 1, 125.6, -105.6 , 0 );
setMoveKey( spep_2-3 + 14, 1, 115, -92.4 , 0 );
setMoveKey( spep_2-3 + 16, 1, 104.5, -79.1 , 0 );
setMoveKey( spep_2-3 + 18, 1, 93.9, -65.9 , 0 );
setMoveKey( spep_2-3 + 20, 1, 83.3, -52.6 , 0 );
setMoveKey( spep_2-3 + 22, 1, 72.8, -39.4 , 0 );
setMoveKey( spep_2-3 + 24, 1, 62.2, -26.2 , 0 );
setMoveKey( spep_2-3 + 26, 1, 51.6, -12.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, 41.1, 0.3 , 0 );
setMoveKey( spep_2-3 + 30, 1, 51.9, 0.3 , 0 );
setMoveKey( spep_2-3 + 32, 1, 52.3, 0.3 , 0 );

setScaleKey( spep_2 + 0, 1, 2.23, 2.23 );
--setScaleKey( spep_2-3 + 2, 1, 2.17, 2.17 );
setScaleKey( spep_2-3 + 4, 1, 2.11, 2.11 );
setScaleKey( spep_2-3 + 6, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 8, 1, 2, 2 );
setScaleKey( spep_2-3 + 10, 1, 1.94, 1.94 );
setScaleKey( spep_2-3 + 12, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 14, 1, 1.82, 1.82 );
setScaleKey( spep_2-3 + 16, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 18, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 20, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 22, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 24, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 26, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 28, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 32, 1, 1.41, 1.41 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 28, 1, 0 );
setRotateKey( spep_2-3 + 30, 1, 2.4 );
setRotateKey( spep_2-3 + 32, 1, 2.5 );

--SE
se_0008 = playSe( spep_2, 8 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge -12, se_0008, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 30,  906, 14, 0x100, -1, 0, 0, 0 );
setEffShake(  spep_2-3 + 30, shuchusen2, 14, 20 );
setEffMoveKey( spep_2-3 + 30, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 44, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 30, shuchusen2, 1, 1 );
setEffScaleKey( spep_2-3 + 44, shuchusen2, 1, 1 );

setEffRotateKey( spep_2-3 + 30, shuchusen2, 180 );
setEffRotateKey( spep_2-3 + 44, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 30, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 44, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 76,  906, 22, 0x100, -1, 0, 0, 0 );
setEffShake(  spep_2-3 + 76, shuchusen3, 22, 20 );
setEffMoveKey( spep_2-3 + 76, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 98, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 76, shuchusen3, 1, 1 );
setEffScaleKey( spep_2-3 + 98, shuchusen3, 1, 1 );

setEffRotateKey( spep_2-3 + 76, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 98, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 76, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 98, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_2-3 + 142,  906, 2, 0x100, -1, 0, 0, 0 );
setEffShake(  spep_2-3 + 142, shuchusen4, 2, 20 );
setEffMoveKey( spep_2-3 + 142, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 144, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 142, shuchusen4, 1, 1 );
setEffScaleKey( spep_2-3 + 144, shuchusen4, 1, 1 );

setEffRotateKey( spep_2-3 + 142, shuchusen4, 180 );
setEffRotateKey( spep_2-3 + 144, shuchusen4, 180 );

setEffAlphaKey( spep_2-3 + 142, shuchusen4, 255 );
setEffAlphaKey( spep_2-3 + 144, shuchusen4, 255 );


--敵の動き
setDisp( spep_2  -3 + 250, 1, 0 );

changeAnime( spep_2-3 + 40, 1, 118 );
changeAnime( spep_2-3 + 76, 1, 108 );
changeAnime( spep_2-3 + 78, 1, 106 );
changeAnime( spep_2-3 + 144, 1, 108 );
changeAnime( spep_2-3 + 158, 1, 106 );
changeAnime( spep_2-3 + 198, 1, 108 );
changeAnime( spep_2-3 + 250, 1, 102 );


setMoveKey( spep_2-3 + 36, 1, 52.3, 0.3 , 0 );
setMoveKey( spep_2-3 + 39, 1, 53, 0.2 , 0 );
setMoveKey( spep_2-3 + 40, 1, 68, -18.5 , 0 );
setMoveKey( spep_2-3 + 48, 1, 68, -18.5 , 0 );
setMoveKey( spep_2-3 + 50, 1, 67.9, -18.5 , 0 );
setMoveKey( spep_2-3 + 52, 1, 68.1, -18.5 , 0 );
setMoveKey( spep_2-3 + 54, 1, 68.3, -18.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 68.5, -18.6 , 0 );
setMoveKey( spep_2-3 + 58, 1, 68.6, -18.7 , 0 );
setMoveKey( spep_2-3 + 60, 1, 68.8, -18.7 , 0 );
setMoveKey( spep_2-3 + 62, 1, 69, -18.7 , 0 );
setMoveKey( spep_2-3 + 64, 1, 69.2, -18.8 , 0 );
setMoveKey( spep_2-3 + 66, 1, 69.4, -18.8 , 0 );
setMoveKey( spep_2-3 + 68, 1, 69.6, -18.9 , 0 );
setMoveKey( spep_2-3 + 70, 1, 69.7, -18.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, 69.9, -19 , 0 );
setMoveKey( spep_2-3 + 75, 1, 70.1, -19 , 0 );
setMoveKey( spep_2-3 + 76, 1, 49.3, 13 , 0 );
setMoveKey( spep_2-3 + 77, 1, 49.3, 13 , 0 );
setMoveKey( spep_2-3 + 78, 1, 31.9, -48.4 , 0 );
setMoveKey( spep_2-3 + 80, 1, -11.2, -9.1 , 0 );
setMoveKey( spep_2-3 + 82, 1, 28.6, 14.6 , 0 );
setMoveKey( spep_2-3 + 84, 1, -13.8, -19.1 , 0 );
setMoveKey( spep_2-3 + 86, 1, 18.7, -20.9 , 0 );
setMoveKey( spep_2-3 + 88, 1, 2.5, -10.6 , 0 );
setMoveKey( spep_2-3 + 112, 1, 2.5, -10.6 , 0 );
setMoveKey( spep_2-3 + 114, 1, 2.5, -10.7 , 0 );
setMoveKey( spep_2-3 + 116, 1, 6.8, -12.7 , 0 );
setMoveKey( spep_2-3 + 118, 1, 11.4, -15 , 0 );
setMoveKey( spep_2-3 + 120, 1, 16.1, -17.2 , 0 );
setMoveKey( spep_2-3 + 122, 1, 20.8, -19.5 , 0 );
setMoveKey( spep_2-3 + 124, 1, 25.5, -21.8 , 0 );
setMoveKey( spep_2-3 + 126, 1, 30.2, -24 , 0 );
setMoveKey( spep_2-3 + 128, 1, 34.9, -26.3 , 0 );
setMoveKey( spep_2-3 + 130, 1, 39.7, -28.6 , 0 );
setMoveKey( spep_2-3 + 132, 1, 44.4, -30.8 , 0 );
setMoveKey( spep_2-3 + 134, 1, 49, -33.1 , 0 );
setMoveKey( spep_2-3 + 136, 1, 53.7, -35.3 , 0 );
setMoveKey( spep_2-3 + 138, 1, 58.3, -37.5 , 0 );
setMoveKey( spep_2-3 + 140, 1, 62.8, -39.6 , 0 );
setMoveKey( spep_2-3 + 143, 1, 63.7, -65.8 , 0 );
setMoveKey( spep_2-3 + 144, 1, 155.4, -98.8 , 0 );
setMoveKey( spep_2-3 + 146, 1, 130.8, -127.7 , 0 );
setMoveKey( spep_2-3 + 148, 1, 152.1, -123.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, 109.7, -178.9 , 0 );
setMoveKey( spep_2-3 + 152, 1, 142.2, -191.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, 126, -185.4 , 0 );
setMoveKey( spep_2-3 + 157, 1, 126, -186 , 0 );
setMoveKey( spep_2-3 + 158, 1, 127.1, -198 , 0 );
setMoveKey( spep_2-3 + 160, 1, 124.7, -196.2 , 0 );
setMoveKey( spep_2-3 + 162, 1, 117.5, -191 , 0 );
setMoveKey( spep_2-3 + 164, 1, 105.5, -182.2 , 0 );
setMoveKey( spep_2-3 + 166, 1, 88.7, -169.8 , 0 );
setMoveKey( spep_2-3 + 168, 1, 67.1, -150.8 , 0 );
setMoveKey( spep_2-3 + 170, 1, 67.1, -148.3 , 0 );
setMoveKey( spep_2-3 + 172, 1, 67.1, -145.9 , 0 );
setMoveKey( spep_2-3 + 174, 1, 67.1, -143.4 , 0 );
setMoveKey( spep_2-3 + 176, 1, 67.1, -140.9 , 0 );
setMoveKey( spep_2-3 + 178, 1, 67.1, -138.5 , 0 );
setMoveKey( spep_2-3 + 180, 1, 67.1, -136 , 0 );
setMoveKey( spep_2-3 + 182, 1, 67.1, -133.6 , 0 );
setMoveKey( spep_2-3 + 184, 1, 67.2, -131.1 , 0 );
setMoveKey( spep_2-3 + 186, 1, 67.2, -128.6 , 0 );
setMoveKey( spep_2-3 + 188, 1, 67.2, -126.2 , 0 );
setMoveKey( spep_2-3 + 190, 1, 67.2, -123.7 , 0 );
setMoveKey( spep_2-3 + 192, 1, 67.2, -252.9 , 0 );
setMoveKey( spep_2-3 + 194, 1, 67.2, -269.2 , 0 );
setMoveKey( spep_2-3 + 197, 1, 67.2, -266.6 , 0 );
setMoveKey( spep_2-3 + 198, 1, 35.9, -416 , 0 );
setMoveKey( spep_2-3 + 199, 1, 35.9, -416 , 0 );
setMoveKey( spep_2-3 + 200, 1, 36.1, -418.9 , 0 );
setMoveKey( spep_2-3 + 202, 1, 22.8, -412.8 , 0 );
setMoveKey( spep_2-3 + 204, 1, 31.2, -421.4 , 0 );
setMoveKey( spep_2-3 + 206, 1, 23.7, -431.8 , 0 );
setMoveKey( spep_2-3 + 208, 1, 32.1, -426.3 , 0 );
setMoveKey( spep_2-3 + 210, 1, 24.6, -436.7 , 0 );
setMoveKey( spep_2-3 + 212, 1, 33, -431.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 25.5, -441.6 , 0 );
setMoveKey( spep_2-3 + 216, 1, 34, -436 , 0 );
setMoveKey( spep_2-3 + 218, 1, 26.4, -446.4 , 0 );
setMoveKey( spep_2-3 + 220, 1, 34.9, -440.9 , 0 );
setMoveKey( spep_2-3 + 222, 1, 27.5, -452.3 , 0 );
setMoveKey( spep_2-3 + 224, 1, 35.7, -445.5 , 0 );
setMoveKey( spep_2-3 + 226, 1, 28, -454.8 , 0 );
setMoveKey( spep_2-3 + 228, 1, 36.3, -448.1 , 0 );
setMoveKey( spep_2-3 + 230, 1, 28.5, -457.3 , 0 );
setMoveKey( spep_2-3 + 232, 1, 36.8, -450.6 , 0 );
setMoveKey( spep_2-3 + 234, 1, 29.1, -459.9 , 0 );
setMoveKey( spep_2-3 + 236, 1, 37.3, -453.1 , 0 );
setMoveKey( spep_2-3 + 238, 1, 29.6, -462.4 , 0 );
setMoveKey( spep_2-3 + 240, 1, 37.9, -455.7 , 0 );
setMoveKey( spep_2-3 + 242, 1, 30.2, -464.9 , 0 );
setMoveKey( spep_2-3 + 244, 1, 38.4, -458.2 , 0 );
setMoveKey( spep_2-3 + 246, 1, 30.7, -467.5 , 0 );
setMoveKey( spep_2-3 + 249, 1, 39, -460.7 , 0 );
setMoveKey( spep_2-3 + 250, 1, 189.1, -185 , 0 );

setScaleKey( spep_2-3 + 36, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 39, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 52, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 54, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 60, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 62, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 68, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 70, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 75, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 76, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 77, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 78, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 80, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 82, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 116, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 118, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 120, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 122, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 124, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 126, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 128, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 130, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 132, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 134, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 140, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 143, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 144, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 146, 1, 1.67, 1.67 );
setScaleKey( spep_2-3 + 148, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 197, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 198, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 199, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 200, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 202, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 204, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 206, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 208, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 210, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 212, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 214, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 216, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 218, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 220, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 222, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 224, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 226, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 228, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 230, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 232, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 234, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 236, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 238, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 240, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 242, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 244, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 246, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 249, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 250, 1, 2.23, 2.23 );

setRotateKey( spep_2-3 + 39, 1, 2.5 );
setRotateKey( spep_2-3 + 40, 1, 11.3 );
setRotateKey( spep_2-3 + 75, 1, 11.3 );
setRotateKey( spep_2-3 + 76, 1, -7 );
setRotateKey( spep_2-3 + 77, 1, -7 );
setRotateKey( spep_2-3 + 78, 1, -62.9 );
setRotateKey( spep_2-3 + 114, 1, -62.9 );
setRotateKey( spep_2-3 + 116, 1, -60.5 );
setRotateKey( spep_2-3 + 118, 1, -58 );
setRotateKey( spep_2-3 + 120, 1, -55.6 );
setRotateKey( spep_2-3 + 122, 1, -53.1 );
setRotateKey( spep_2-3 + 124, 1, -50.7 );
setRotateKey( spep_2-3 + 126, 1, -48.2 );
setRotateKey( spep_2-3 + 128, 1, -45.8 );
setRotateKey( spep_2-3 + 130, 1, -43.3 );
setRotateKey( spep_2-3 + 132, 1, -40.9 );
setRotateKey( spep_2-3 + 134, 1, -38.4 );
setRotateKey( spep_2-3 + 136, 1, -36 );
setRotateKey( spep_2-3 + 138, 1, -33.5 );
setRotateKey( spep_2-3 + 140, 1, -31.1 );
setRotateKey( spep_2-3 + 143, 1, -31.1 );
setRotateKey( spep_2-3 + 144, 1, 67.7 );
setRotateKey( spep_2-3 + 157, 1, 67.7 );
setRotateKey( spep_2-3 + 158, 1, 73 );
setRotateKey( spep_2-3 + 160, 1, 74.5 );
setRotateKey( spep_2-3 + 162, 1, 79 );
setRotateKey( spep_2-3 + 164, 1, 86.6 );
setRotateKey( spep_2-3 + 166, 1, 97.2 );
setRotateKey( spep_2-3 + 168, 1, 110.8 );
setRotateKey( spep_2-3 + 249, 1, 110.8 );
setRotateKey( spep_2-3 + 250, 1, 0 );

--!!
ctbikuri = entryEffectLife( spep_2-3 + 30,  10000, 16, 0x100, -1, 0, 75, 148.3 );

setEffMoveKey( spep_2-3 + 30, ctbikuri, 75, 148.3 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbikuri, 86.1, 172.9 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbikuri, 97.1, 197.6 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbikuri, 108.2, 222.2 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbikuri, 107.1, 219.4 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbikuri, 106, 216.7 , 0 );
setEffMoveKey( spep_2-3 + 42, ctbikuri, 105, 214 , 0 );
setEffMoveKey( spep_2-3 + 44, ctbikuri, 105.9, 216.5 , 0 );
setEffMoveKey( spep_2-3 + 46, ctbikuri, 106.9, 218.9 , 0 );

setEffScaleKey( spep_2-3 + 30, ctbikuri, 1, 1 );
setEffScaleKey( spep_2-3 + 32, ctbikuri, 1.37, 1.37 );
setEffScaleKey( spep_2-3 + 34, ctbikuri, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 36, ctbikuri, 2.1, 2.1 );
setEffScaleKey( spep_2-3 + 38, ctbikuri, 2.02, 2.02 );
setEffScaleKey( spep_2-3 + 40, ctbikuri, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 42, ctbikuri, 1.85, 1.85 );
setEffScaleKey( spep_2-3 + 44, ctbikuri, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 46, ctbikuri, 2, 2 );

setEffRotateKey( spep_2-3 + 30, ctbikuri, 20.3 );
setEffRotateKey( spep_2-3 + 46, ctbikuri, 20.3 );

setEffAlphaKey( spep_2-3 + 30, ctbikuri, 26 );
setEffAlphaKey( spep_2-3 + 32, ctbikuri, 102 );
setEffAlphaKey( spep_2-3 + 34, ctbikuri, 179 );
setEffAlphaKey( spep_2-3 + 36, ctbikuri, 255 );
setEffAlphaKey( spep_2-3 + 42, ctbikuri, 255 );
setEffAlphaKey( spep_2-3 + 44, ctbikuri, 141 );
setEffAlphaKey( spep_2-3 + 46, ctbikuri, 26 );

--ばき
ctbaki = entryEffectLife( spep_2-3 + 76,  10020, 28, 0x100, -1, 0, 134.5, 274.3 );--バキッ

setEffMoveKey( spep_2-3 + 76, ctbaki, 134.5, 274.3 , 0 );
setEffMoveKey( spep_2-3 + 78, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_2-3 + 80, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_2-3 + 82, ctbaki, 134.5, 274.3 , 0 );
setEffMoveKey( spep_2-3 + 84, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_2-3 + 86, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_2-3 + 88, ctbaki, 134.5, 274.3 , 0 );
setEffMoveKey( spep_2-3 + 90, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_2-3 + 92, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_2-3 + 94, ctbaki, 134.5, 274.3 , 0 );
setEffMoveKey( spep_2-3 + 96, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_2-3 + 98, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_2-3 + 100, ctbaki, 165.6, 321.5 , 0 );
setEffMoveKey( spep_2-3 + 102, ctbaki, 152.3, 317.6 , 0 );
setEffMoveKey( spep_2-3 + 104, ctbaki, 152.3, 317.6 , 0 );

setEffScaleKey( spep_2-3 + 76, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 104, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_2-3 + 76, ctbaki, 40 );
setEffRotateKey( spep_2-3 + 104, ctbaki, 40 );

setEffAlphaKey( spep_2-3 + 76, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 100, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 102, ctbaki, 128 );
setEffAlphaKey( spep_2-3 + 104, ctbaki, 0 );

--どん
ctdon = entryEffectLife( spep_2-3 + 142,  10019, 32, 0x100, -1, 0, -145.5, 428.8 );--ドンッ

setEffMoveKey( spep_2-3 + 142, ctdon, -145.5, 428.8 , 0 );
setEffMoveKey( spep_2-3 + 144, ctdon, -140.6, 432.9 , 0 );
setEffMoveKey( spep_2-3 + 146, ctdon, -138.2, 416.4 , 0 );
setEffMoveKey( spep_2-3 + 148, ctdon, -144.4, 424.2 , 0 );
setEffMoveKey( spep_2-3 + 150, ctdon, -137.8, 411.7 , 0 );
setEffMoveKey( spep_2-3 + 152, ctdon, -144.9, 409.6 , 0 );
setEffMoveKey( spep_2-3 + 154, ctdon, -139.6, 400.7 , 0 );
setEffMoveKey( spep_2-3 + 156, ctdon, -140.3, 403.3 , 0 );
setEffMoveKey( spep_2-3 + 158, ctdon, -139.9, 391 , 0 );
setEffMoveKey( spep_2-3 + 160, ctdon, -144.5, 394.2 , 0 );
setEffMoveKey( spep_2-3 + 162, ctdon, -141.2, 384.1 , 0 );
setEffMoveKey( spep_2-3 + 164, ctdon, -144.7, 383.5 , 0 );
setEffMoveKey( spep_2-3 + 166, ctdon, -139.4, 375.2 , 0 );
setEffMoveKey( spep_2-3 + 168, ctdon, -142.1, 374.8 , 0 );
setEffMoveKey( spep_2-3 + 170, ctdon, -144.6, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 172, ctdon, -166.3, 405.6 , 0 );
setEffMoveKey( spep_2-3 + 174, ctdon, -193.8, 438.5 , 0 );

setEffScaleKey( spep_2-3 + 142, ctdon, 2, 2 );
setEffScaleKey( spep_2-3 + 144, ctdon, 2, 2 );
setEffScaleKey( spep_2-3 + 146, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_2-3 + 150, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_2-3 + 152, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_2-3 + 156, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_2-3 + 158, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 160, ctdon, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 162, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_2-3 + 166, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_2-3 + 168, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_2-3 + 170, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_2-3 + 172, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_2-3 + 174, ctdon, 0.75, 0.75 );

setEffRotateKey( spep_2-3 + 142, ctdon, -10 );
setEffRotateKey( spep_2-3 + 174, ctdon, -10 );

setEffAlphaKey( spep_2-3 + 142, ctdon, 255 );
setEffAlphaKey( spep_2-3 + 170, ctdon, 255 );
setEffAlphaKey( spep_2-3 + 172, ctdon, 128 );
setEffAlphaKey( spep_2-3 + 174, ctdon, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 198,  10016, 26, 0x100, -1, 0, 17.8, -90.8 );--ズンッ

setEffMoveKey( spep_2-3 + 198, ctzun, 17.8, -90.8 , 0 );
setEffMoveKey( spep_2-3 + 200, ctzun, 17.2, -89.9 , 0 );
setEffMoveKey( spep_2-3 + 202, ctzun, 16.6, -89 , 0 );
setEffMoveKey( spep_2-3 + 204, ctzun, 16, -88.2 , 0 );
setEffMoveKey( spep_2-3 + 206, ctzun, 15.4, -87.3 , 0 );
setEffMoveKey( spep_2-3 + 208, ctzun, 14.8, -86.4 , 0 );
setEffMoveKey( spep_2-3 + 210, ctzun, 14.2, -85.6 , 0 );
setEffMoveKey( spep_2-3 + 212, ctzun, 13.6, -84.7 , 0 );
setEffMoveKey( spep_2-3 + 214, ctzun, 13, -83.8 , 0 );
setEffMoveKey( spep_2-3 + 216, ctzun, 12.4, -82.9 , 0 );
setEffMoveKey( spep_2-3 + 218, ctzun, 11.8, -82.1 , 0 );
setEffMoveKey( spep_2-3 + 224, ctzun, 11.2, -81.2 , 0 );

setEffScaleKey( spep_2-3 + 198, ctzun, 1.2, 1.2 );
setEffScaleKey( spep_2-3 + 200, ctzun, 1.27, 1.27 );
setEffScaleKey( spep_2-3 + 202, ctzun, 1.35, 1.35 );
setEffScaleKey( spep_2-3 + 204, ctzun, 1.42, 1.42 );
setEffScaleKey( spep_2-3 + 206, ctzun, 1.49, 1.49 );
setEffScaleKey( spep_2-3 + 208, ctzun, 1.56, 1.56 );
setEffScaleKey( spep_2-3 + 210, ctzun, 1.64, 1.64 );
setEffScaleKey( spep_2-3 + 212, ctzun, 1.71, 1.71 );
setEffScaleKey( spep_2-3 + 214, ctzun, 1.78, 1.78 );
setEffScaleKey( spep_2-3 + 216, ctzun, 1.85, 1.85 );
setEffScaleKey( spep_2-3 + 218, ctzun, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 220, ctzun, 2, 2 );
setEffScaleKey( spep_2-3 + 224, ctzun, 2, 2 );

setEffRotateKey( spep_2-3 + 198, ctzun, 10 );
setEffRotateKey( spep_2-3 + 224, ctzun, 10 );

setEffAlphaKey( spep_2-3 + 198, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 220, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 222, ctzun, 141 );
setEffAlphaKey( spep_2-3 + 224, ctzun, 26 );


playSe( spep_2 + 29, 1113 );
playSe( spep_2 + 71, 1006 );
playSe( spep_2 + 71, 1110 );
playSe( spep_2 + 72, 1000 );
se_1121 = playSe( spep_2 + 75, 1121 );
setSeVolume( spep_2 + 75, 1121, 0 );
setSeVolume( spep_2 + 145, 1121, 35 );
setSeVolume( spep_2 + 146, 1121, 70 );
setSeVolume( spep_2 + 147, 1121, 100 );
playSe( spep_2 + 129, 1009 );
playSe( spep_2 + 129, 1110 );
setSeVolume( spep_2 + 129, 1110, 63 );
se_0009 = playSe( spep_2 + 132, 9 );
setSeVolume( spep_2 + 132, 9, 79 );
se_1159 = playSe( spep_2 + 197, 1159 );

stopSe( spep_2 + 28, se_0008, 10 );
stopSe( spep_2 + 202, se_1121, 0 );
stopSe( spep_2 + 197, se_0009, 0 );
stopSe( spep_2 + 247, se_1159, 52 );


--白フェード
entryFade( spep_2 + 242, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--次の準備
spep_3=spep_2+252;

------------------------------------------------------
-- 急降下
------------------------------------------------------
-- ** エフェクト等 ** --
fall = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, fall, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, fall, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fall, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, fall, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fall, 0 );
setEffRotateKey( spep_3 + 120, fall, 0 );
setEffAlphaKey( spep_3 + 0, fall, 255 );
setEffAlphaKey( spep_3 + 120, fall, 255 );

shuchusen5 = entryEffectLife( spep_3-3 + 58,  906, 60, 0x100, -1, 0, 0, 133 );
setEffShake(  spep_3-3 + 58, shuchusen5, 60, 20 );
setEffMoveKey( spep_3-3 + 58, shuchusen5, 0, 133 , 0 );
setEffMoveKey( spep_3-3 + 118, shuchusen5, 0, 133 , 0 );

setEffScaleKey( spep_3-3 + 58, shuchusen5, 1.07, 1.29 );
setEffScaleKey( spep_3-3 + 118, shuchusen5, 1.07, 1.29 );

setEffRotateKey( spep_3-3 + 58, shuchusen5, 180 );
setEffRotateKey( spep_3-3 + 118, shuchusen5, 180 );

setEffAlphaKey( spep_3-3 + 58, shuchusen5, 255 );
setEffAlphaKey( spep_3-3 + 118, shuchusen5, 255 );

--SE
playSe( spep_3 + 4, 1117 );
setSeVolume( spep_3 + 4, 1117, 79 );
se_1116 = playSe( spep_3 + 50, 1116 );
se_1118 = playSe( spep_3 + 55, 1118 );
setSeVolume( spep_3 + 55, 1118, 79 );

--白フェード
entryFade( spep_3 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--次の準備
spep_4=spep_3+120;

------------------------------------------------------
-- ヒップクラッシュ⇒ガッツポ-ズ
------------------------------------------------------


-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 160, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 160, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 160, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 160, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 160, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 160, finish_b, 255 );

setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 160, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 28, 1, 106 );
changeAnime( spep_4-3 + 32, 1, 108 );
changeAnime( spep_4-3 + 36, 1, 106 );

setMoveKey( spep_4 + 0, 1, 4.3, -349 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 5.4, -349.5 , 0 );
setMoveKey( spep_4-3 + 4, 1, 6.4, -350 , 0 );
setMoveKey( spep_4-3 + 6, 1, 7.4, -350.5 , 0 );
setMoveKey( spep_4-3 + 8, 1, 8.5, -351 , 0 );
setMoveKey( spep_4-3 + 10, 1, 9.5, -351.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 10.6, -352 , 0 );
setMoveKey( spep_4-3 + 14, 1, 11.6, -352.5 , 0 );
setMoveKey( spep_4-3 + 16, 1, 12.6, -353 , 0 );
setMoveKey( spep_4-3 + 18, 1, 13.7, -353.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, 14.7, -354.1 , 0 );
setMoveKey( spep_4-3 + 22, 1, 15.7, -354.6 , 0 );
setMoveKey( spep_4-3 + 24, 1, 16.8, -355.1 , 0 );
setMoveKey( spep_4-3 + 27, 1, 4, -380.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, 46.9, -364 , 0 );
setMoveKey( spep_4-3 + 31, 1, -1, -321.4 , 0 );
setMoveKey( spep_4-3 + 32, 1, 43.8, -346.6 , 0 );
setMoveKey( spep_4-3 + 35, 1, 1.4, -380.3 , 0 );
setMoveKey( spep_4-3 + 36, 1, 33.8, -352.4 , 0 );
setMoveKey( spep_4-3 + 38, 1, 17.6, -342.1 , 0 );
setMoveKey( spep_4-3 + 40, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 42, 1, 17.6, -342.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 46, 1, 17.6, -342.1 , 0 );
setMoveKey( spep_4-3 + 48, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 50, 1, 17.6, -342.1 , 0 );
setMoveKey( spep_4-3 + 52, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 54, 1, 17.6, -342.1 , 0 );
setMoveKey( spep_4-3 + 56, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 58, 1, 17.6, -342.1 , 0 );
setMoveKey( spep_4-3 + 60, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 76, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, 9.6, -355.1 , 0 );
setMoveKey( spep_4-3 + 82, 1, 9.6, -355.1 , 0 );
setMoveKey( spep_4-3 + 84, 1, 9.6, -352.6 , 0 );
setMoveKey( spep_4-3 + 86, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 98, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 100, 1, 9.6, -355.1 , 0 );
setMoveKey( spep_4-3 + 102, 1, 9.6, -350.1 , 0 );
setMoveKey( spep_4-3 + 160, 1, 9.6, -350.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.02, 1.02 );
--setScaleKey( spep_4-3 + 2, 1, 1.03, 1.03 );
setScaleKey( spep_4-3 + 4, 1, 1.05, 1.05 );
setScaleKey( spep_4-3 + 6, 1, 1.06, 1.06 );
setScaleKey( spep_4-3 + 8, 1, 1.08, 1.08 );
setScaleKey( spep_4-3 + 10, 1, 1.09, 1.09 );
setScaleKey( spep_4-3 + 12, 1, 1.1, 1.1 );
setScaleKey( spep_4-3 + 14, 1, 1.12, 1.12 );
setScaleKey( spep_4-3 + 16, 1, 1.13, 1.13 );
setScaleKey( spep_4-3 + 18, 1, 1.15, 1.15 );
setScaleKey( spep_4-3 + 20, 1, 1.16, 1.16 );
setScaleKey( spep_4-3 + 22, 1, 1.17, 1.17 );
setScaleKey( spep_4-3 + 24, 1, 1.19, 1.19 );
setScaleKey( spep_4-3 + 27, 1, 1.38, 1.32 );
setScaleKey( spep_4-3 + 28, 1, 1.3, 1.3 );
setScaleKey( spep_4-3 + 31, 1, 1.3, 1.3 );
setScaleKey( spep_4-3 + 32, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 35, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 36, 1, 1.3, 1.3 );
setScaleKey( spep_4-3 + 102, 1, 1.3, 1.3 );
setScaleKey( spep_4-3 + 160, 1, 1.3, 1.3 );

setRotateKey( spep_4 + 0, 1, 78.2 );
setRotateKey( spep_4-3 + 27, 1, 78.2 );
setRotateKey( spep_4-3 + 28, 1, 38.1 );
setRotateKey( spep_4-3 + 31, 1, 38.1 );
setRotateKey( spep_4-3 + 32, 1, 78.2 );
setRotateKey( spep_4-3 + 35, 1, 78.2 );
setRotateKey( spep_4-3 + 36, 1, 38.1 );
setRotateKey( spep_4-3 + 102, 1, 38.1 );
setRotateKey( spep_4-3 + 160, 1, 38.1 );

--SE
playSe( spep_4 + 23, 1010 );
se_1159 = playSe( spep_4 + 23, 1159 );
playSe( spep_4 + 80, 1003 );
se_1023 = playSe( spep_4 + 93, 1023 );
se_0031 = playSe( spep_4 + 94, 31 );
playSe( spep_4 + 94, 1106 );
setSeVolume( spep_4 + 94, 1106, 158 );
playSe( spep_4 + 95, 1107 );
setSeVolume( spep_4 + 95, 1107, 158 );

stopSe( spep_4 + 23, se_1116, 0 );
stopSe( spep_4 + 23, se_1118, 0 );
stopSe( spep_4 + 46, se_1159, 47 );
stopSe( spep_4 + 54, se_1023, 19 );
stopSe( spep_4 + 107, se_0031, 19 );
-- ** ダメージ表示 ** --
dealDamage( spep_4 + 24 );
endPhase( spep_4 + 150 );
end


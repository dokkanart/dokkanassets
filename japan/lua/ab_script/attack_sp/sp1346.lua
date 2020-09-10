--1018060:サウザー(クウラ機甲戦隊)_アーマードスクランブル
--sp_effect_b4_00115

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
SP_01=	154264	;--	ファイティングポーズ
SP_02=	154265	;--	突進
SP_03=	154266	;--	ドーレキック
SP_04=	154268	;--	ドーレキック　背景
SP_05=	154269	;--	ネーズ発射
SP_06=	154271	;--	ネーズ発射　背景
SP_07=	154272	;--	ネーズビーム　手前
SP_08=	154273	;--	ネーズビーム　背面
SP_09=	154274	;--	ネーズビーム　背景
SP_10=	154275	;--	サウザー迫る
SP_11=	154277	;--	サウザー迫る　背景
SP_12=	154278	;--	斬撃
SP_13=	154279	;--	サウザーフィニッシュ
SP_14=	154280	;--	崖に激突
SP_15=	154281	;--	気弾ラッシュ
SP_16=	154282	;--	爆発

--エフェクト(てき)
SP_01x=	154264	;--	ファイティングポーズ
SP_02x=	154265	;--	突進
SP_03x=	154267	;--	ドーレキック
SP_04x=	154268	;--	ドーレキック　背景
SP_05x=	154270	;--	ネーズ発射
SP_06x=	154271	;--	ネーズ発射　背景
SP_07x=	154272	;--	ネーズビーム　手前
SP_08x=	154273	;--	ネーズビーム　背面
SP_09x=	154274	;--	ネーズビーム　背景
SP_10x=	154276	;--	サウザー迫る
SP_11x=	154277	;--	サウザー迫る　背景
SP_12x=	154278	;--	斬撃
SP_13x=	154279	;--	サウザーフィニッシュ
SP_14x=	154280	;--	崖に激突
SP_15x=	154281	;--	気弾ラッシュ
SP_16x=	154282	;--	爆発

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
-- ファイティングポーズ
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
pose = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, pose, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, pose, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, pose, 1.1, 1.1 );
setEffScaleKey( spep_0 + 120, pose, 1.1, 1.1 );
setEffRotateKey( spep_0 + 0, pose, 0 );
setEffRotateKey( spep_0 + 120, pose, 0 );
setEffAlphaKey( spep_0 + 0, pose, 255 );
setEffAlphaKey( spep_0 + 120, pose, 255 );


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x100, -1, 0, 70, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  70,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  70,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 76, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, 1.07, 1.07 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 38, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 38, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 38, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 38, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 2, shuchusen1, 243 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 231 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 219 );
setEffAlphaKey( spep_0 + 8, shuchusen1, 207 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 195 );
setEffAlphaKey( spep_0 + 12, shuchusen1, 183 );
setEffAlphaKey( spep_0 + 14, shuchusen1, 171 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 159 );
setEffAlphaKey( spep_0 + 18, shuchusen1, 147 );
setEffAlphaKey( spep_0 + 20, shuchusen1, 134 );
setEffAlphaKey( spep_0 + 22, shuchusen1, 122 );
setEffAlphaKey( spep_0 + 24, shuchusen1, 110 );
setEffAlphaKey( spep_0 + 26, shuchusen1, 98 );
setEffAlphaKey( spep_0 + 28, shuchusen1, 86 );
setEffAlphaKey( spep_0 + 30, shuchusen1, 74 );
setEffAlphaKey( spep_0 + 32, shuchusen1, 62 );
setEffAlphaKey( spep_0 + 34, shuchusen1, 50 );
setEffAlphaKey( spep_0 + 36, shuchusen1, 38 );
setEffAlphaKey( spep_0 + 38, shuchusen1, 26 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--白フェード
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 110, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_0 +12, 1018 );  --ゴゴゴ

--次の準備
spep_1 = spep_0+120;

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
entryFade( spep_1 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
pagdagan = entryEffect( spep_2 + 0, SP_02,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pagdagan, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, pagdagan, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, pagdagan, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, pagdagan, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pagdagan, 0 );
setEffRotateKey( spep_2 + 60, pagdagan, 0 );
setEffAlphaKey( spep_2 + 0, pagdagan, 255 );
setEffAlphaKey( spep_2 + 60, pagdagan, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 58, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.2, 1.44 );
setEffScaleKey( spep_2 + 58, shuchusen2, 1.2, 1.44 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 58, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen2, 255 );

--白フェード
entryFade( spep_2 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 0, 9 );  --突進

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;

------------------------------------------------------
-- ドーレキック
------------------------------------------------------
-- ** エフェクト等 ** --
sipaan_a = entryEffect( spep_3 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sipaan_a, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, sipaan_a, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sipaan_a, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, sipaan_a, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sipaan_a, 0 );
setEffRotateKey( spep_3 + 110, sipaan_a, 0 );
setEffAlphaKey( spep_3 + 0, sipaan_a, 0 );
setEffAlphaKey( spep_3 + 56, sipaan_a, 0 );
setEffAlphaKey( spep_3 + 57, sipaan_a, 255 );
setEffAlphaKey( spep_3 + 58, sipaan_a, 255 );
setEffAlphaKey( spep_3 + 110, sipaan_a, 255 );

-- ** エフェクト等 ** --
sipaan_b = entryEffect( spep_3 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sipaan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, sipaan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sipaan_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, sipaan_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sipaan_b, 0 );
setEffRotateKey( spep_3 + 110, sipaan_b, 0 );
setEffAlphaKey( spep_3 + 0, sipaan_b, 255 );
setEffAlphaKey( spep_3 + 110, sipaan_b, 255 );

-- ** エフェクト等 ** --
sipaan_t = entryEffect( spep_3 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sipaan_t, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, sipaan_t, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sipaan_t, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, sipaan_t, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sipaan_t, 0 );
setEffRotateKey( spep_3 + 110, sipaan_t, 0 );
setEffAlphaKey( spep_3 + 0, sipaan_t, 255 );
setEffAlphaKey( spep_3 + 56, sipaan_t, 255 );
setEffAlphaKey( spep_3 + 57, sipaan_t, 0 );
setEffAlphaKey( spep_3 + 58, sipaan_t, 0 );
setEffAlphaKey( spep_3 + 110, sipaan_t, 0 );

--敵の動き
setDisp(spep_3 -3 + 6,1,1);

changeAnime(spep_3 -3 + 6,1,102);


setMoveKey( spep_3 -3 + 6, 1, 689, -479.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 638.8, -450.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 588.7, -421.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 538.7, -392.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 488.5, -363.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 438.4, -334.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 388.3, -305 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 338.2, -275.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 288, -246.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 237.9, -217.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 187.8, -188.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 186.1, -187.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 184.5, -186.4 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 182.8, -185.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 181.1, -184.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 179.4, -183.3 , 0 );

setScaleKey( spep_3 -3 + 6, 1, 4, 4 );
setScaleKey( spep_3 -3 + 8, 1, 3.8, 3.8 );
setScaleKey( spep_3 -3 + 10, 1, 3.6, 3.6 );
setScaleKey( spep_3 -3 + 12, 1, 3.4, 3.4 );
setScaleKey( spep_3 -3 + 14, 1, 3.2, 3.2 );
setScaleKey( spep_3 -3 + 16, 1, 3, 3 );
setScaleKey( spep_3 -3 + 18, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 20, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 22, 1, 2.4, 2.4 );
setScaleKey( spep_3 -3 + 24, 1, 2.2, 2.2 );
setScaleKey( spep_3 -3 + 26, 1, 2, 2 );
setScaleKey( spep_3 -3 + 28, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 30, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 32, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 34, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 36, 1, 1.97, 1.97 );


setRotateKey( spep_3 -3 + 6, 1, 0 );
setRotateKey( spep_3 + 34, 1, 0 );

-- ** 音 ** --
SE0 = playSe( spep_3 + 0, 1072 );  --突進

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 34; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
--敵の固定
setMoveKey( SP_dodge + 10, 1, 179.4, -183.3 , 0 );
setScaleKey( SP_dodge+ 10, 1, 1.97, 1.97 );
setRotateKey( SP_dodge+10, 1, 0 );


    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
setDisp(spep_3 -3 + 80,1,0);

changeAnime(spep_3 -3 + 60,1,108);

setMoveKey( spep_3 -3 + 38, 1, 177.8, -182.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 176.1, -181.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 174.4, -180.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 172.7, -179.1 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 171.1, -178.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 169.4, -177 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 167.7, -176 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 166, -174.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 164.4, -173.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 162.7, -172.8 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 161, -171.8 , 0 );
setMoveKey( spep_3-3 + 60, 1, 395.8, 174 , 0 );
setMoveKey( spep_3-3 + 62, 1, 351.9, 122 , 0 );
setMoveKey( spep_3-3 + 64, 1, 326.7, 139.3 , 0 );
setMoveKey( spep_3-3 + 66, 1, 291.8, 113.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 306, 146.5 , 0 );
setMoveKey( spep_3-3 + 70, 1, 378.9, 151 , 0 );
setMoveKey( spep_3-3 + 72, 1, 423.5, 196.4 , 0 );
setMoveKey( spep_3-3 + 74, 1, 502.6, 223 , 0 );
setMoveKey( spep_3-3 + 76, 1, 545, 276.5 , 0 );
setMoveKey( spep_3-3 + 78, 1, 617.3, 280.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 661.3, 325.8 , 0 );

setScaleKey( spep_3 -3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 40, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 42, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 44, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 46, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 48, 1, 1.93, 1.93 );
setScaleKey( spep_3 -3 + 50, 1, 1.93, 1.93 );
setScaleKey( spep_3 -3 + 52, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 54, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 56, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 59, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 60, 1, 4, 4 );
setScaleKey( spep_3-3 + 62, 1, 3.48, 3.48 );
setScaleKey( spep_3-3 + 64, 1, 3.25, 3.25 );
setScaleKey( spep_3-3 + 66, 1, 2.76, 2.76 );
setScaleKey( spep_3-3 + 68, 1, 2.36, 2.36 );
setScaleKey( spep_3-3 + 70, 1, 2.12, 2.12 );
setScaleKey( spep_3-3 + 72, 1, 2.07, 2.07 );
setScaleKey( spep_3-3 + 74, 1, 1.85, 1.85 );
setScaleKey( spep_3-3 + 76, 1, 1.77, 1.77 );
setScaleKey( spep_3-3 + 78, 1, 1.56, 1.56 );
setScaleKey( spep_3-3 + 80, 1, 1.49, 1.49 );

setRotateKey( spep_3 -3 + 80, 1, 0 );

--文字エントリー
ctbako = entryEffectLife( spep_3-3 + 60,  10021, 38, 0x100, -1, 0, 20, -38.6 );--バゴォッ

setEffMoveKey( spep_3-3 + 60, ctbako, 20, -38.6 , 0 );
setEffMoveKey( spep_3-3 + 62, ctbako, 79.4, -113.7 , 0 );
setEffMoveKey( spep_3-3 + 64, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 66, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 68, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 70, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 72, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 74, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 76, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 78, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 80, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 82, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 84, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 86, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 88, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 90, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 92, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 94, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 98, ctbako, 137.9, -161.6 , 0 );

setEffScaleKey( spep_3-3 + 60, ctbako, 0.5, 0.5 );
setEffScaleKey( spep_3-3 + 62, ctbako, 1.87, 1.87 );
setEffScaleKey( spep_3-3 + 64, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 66, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 68, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 70, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 72, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 74, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 76, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 78, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 80, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 82, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 84, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 86, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 88, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 90, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 92, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 94, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 98, ctbako, 2.91, 2.91 );

setEffRotateKey( spep_3-3 + 60, ctbako, 35.1 );
setEffRotateKey( spep_3-3 + 62, ctbako, 29 );
setEffRotateKey( spep_3-3 + 64, ctbako, 23 );
setEffRotateKey( spep_3-3 + 98, ctbako, 23 );

setEffAlphaKey( spep_3-3 + 60, ctbako, 255 );
setEffAlphaKey( spep_3-3 + 88, ctbako, 255 );
setEffAlphaKey( spep_3-3 + 90, ctbako, 204 );
setEffAlphaKey( spep_3-3 + 92, ctbako, 153 );
setEffAlphaKey( spep_3-3 + 94, ctbako, 102 );
setEffAlphaKey( spep_3-3 + 96, ctbako, 51 );
setEffAlphaKey( spep_3-3 + 98, ctbako, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3 -3 + 60,  906, 48, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 60, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 108, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 60, shuchusen3, 1.5, 1.48 );
setEffScaleKey( spep_3 -3 + 108, shuchusen3, 1.5, 1.48 );

setEffRotateKey( spep_3 -3 + 60, shuchusen3, 0 );
setEffRotateKey( spep_3 -3 + 108, shuchusen3, 0 );

setEffAlphaKey( spep_3 -3 + 60, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 108, shuchusen3, 255 );

--白フェード
entryFade( spep_3 + 102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 -3 + 60, 1011 );  --蹴り

-- ** 次の準備 ** --
spep_4 = spep_3 + 110;

------------------------------------------------------
-- ネーズ発射
------------------------------------------------------
-- ** エフェクト等 ** --
lansad_a = entryEffect( spep_4 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, lansad_a, 0, 0 , 0 );
setEffMoveKey( spep_4 + 64, lansad_a, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, lansad_a, 1.0, 1.0 );
setEffScaleKey( spep_4 + 64, lansad_a, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, lansad_a, 0 );
setEffRotateKey( spep_4 + 64, lansad_a, 0 );
setEffAlphaKey( spep_4 + 0, lansad_a, 255 );
setEffAlphaKey( spep_4 + 64, lansad_a, 255 );

--流線
ryusen1 = entryEffectLife( spep_4 -3 + 22,  914, 40, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 -3 + 22, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 62, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 22, ryusen1, 3.2, 1.6 );
setEffScaleKey( spep_4 -3 + 62, ryusen1, 3.2, 1.6 );

setEffRotateKey( spep_4 -3 + 22, ryusen1, 152 );
setEffRotateKey( spep_4 -3 + 62, ryusen1, 152 );

setEffAlphaKey( spep_4 -3 + 22, ryusen1, 255 );
setEffAlphaKey( spep_4 -3 + 62, ryusen1, 255 );

-- ** エフェクト等 ** --
lansad_b = entryEffect( spep_4 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, lansad_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 64, lansad_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, lansad_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 64, lansad_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, lansad_b, 0 );
setEffRotateKey( spep_4 + 64, lansad_b, 0 );
setEffAlphaKey( spep_4 + 0, lansad_b, 255 );
setEffAlphaKey( spep_4 + 64, lansad_b, 255 );

--文字エントリー
ctbibibi = entryEffectLife( spep_4 -3 + 22,  10025, 30, 0x100, -1, 0, -74.5, 171.4 );--ビビビッ

setEffMoveKey( spep_4 -3 + 22, ctbibibi, -74.5, 171.4 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctbibibi, -111.6, 233.3 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctbibibi, -148.4, 294.8 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctbibibi, -148.4, 294.8 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctbibibi, -148.4, 294.8 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctbibibi, -148.4, 294.8 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctbibibi, -148.4, 294.8 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctbibibi, -148.4, 294.8 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctbibibi, -148.4, 294.8 , 0 );

setEffScaleKey( spep_4 -3 + 22, ctbibibi, 0.1, 0.1 );
setEffScaleKey( spep_4 -3 + 24, ctbibibi, 0.95, 0.95 );
setEffScaleKey( spep_4 -3 + 26, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 28, ctbibibi, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 30, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 32, ctbibibi, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 34, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 36, ctbibibi, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 38, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 40, ctbibibi, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 42, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 44, ctbibibi, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 46, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 48, ctbibibi, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 50, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 52, ctbibibi, 1.79, 1.79 );

setEffRotateKey( spep_4 -3 + 22, ctbibibi, 13.5 );
setEffRotateKey( spep_4 -3 + 52, ctbibibi, 13.5 );

setEffAlphaKey( spep_4 -3 + 22, ctbibibi, 255 );
setEffAlphaKey( spep_4 -3 + 52, ctbibibi, 255 );


--白フェード
entryFade( spep_4 + 56, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE1 = playSe( spep_4 + 0 -6, 1050 );  --溜め
stopSe( spep_4 + 20, SE1, 20);
playSe( spep_4 + 24, 1146 );  --発射
setSeVolume( spep_4 + 24, 1146, 66 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 64;

------------------------------------------------------
-- ネーズビーム
------------------------------------------------------
-- ** エフェクト等 ** --
beam_a = entryEffect( spep_5 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_a, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, beam_a, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam_a, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, beam_a, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_a, 0 );
setEffRotateKey( spep_5 + 60, beam_a, 0 );
setEffAlphaKey( spep_5 + 0, beam_a, 255 );
setEffAlphaKey( spep_5 + 60, beam_a, 255 );

-- ** エフェクト等 ** --
beam_t = entryEffect( spep_5 + 0, SP_09,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_t, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, beam_t, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam_t, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, beam_t, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_t, 0 );
setEffRotateKey( spep_5 + 60, beam_t, 0 );
setEffAlphaKey( spep_5 + 0, beam_t, 255 );
setEffAlphaKey( spep_5 + 60, beam_t, 255 );

--流線
ryusen2 = entryEffectLife( spep_5 + 0,  914, 18 -2, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 -2 + 18, ryusen2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, ryusen2, 3.2, 1.6 );
setEffScaleKey( spep_5 -2 + 18, ryusen2, 3.2, 1.6 );
setEffRotateKey( spep_5 + 0, ryusen2, 152 );
setEffRotateKey( spep_5 -2 + 18, ryusen2, 152 );
setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 -2 + 18, ryusen2, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_5 + 0, SP_08,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, beam_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_b, 0 );
setEffRotateKey( spep_5 + 60, beam_b, 0 );
setEffAlphaKey( spep_5 + 0, beam_b, 255 );
setEffAlphaKey( spep_5 + 60, beam_b, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_5 -3 + 20,  906, 38, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 -3 + 20, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 -3 + 58, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_5 -3 + 20, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 -3 + 58, shuchusen4, 1, 1 );
setEffRotateKey( spep_5 -3 + 20, shuchusen4, 0 );
setEffRotateKey( spep_5 -3 + 58, shuchusen4, 0 );
setEffAlphaKey( spep_5 -3 + 20, shuchusen4, 255 );
setEffAlphaKey( spep_5 -3 + 58, shuchusen4, 255 );

--敵の動き
setDisp( spep_5 -3 + 0, 1, 1 );
setDisp( spep_5 -3 + 58, 1, 0 );

changeAnime( spep_5 -3 + 0, 1, 108 );
changeAnime( spep_5 -3 + 20, 1, 106 );

setMoveKey( spep_5 -3 + 0, 1, -519.4, -263.2 , 0 );
setMoveKey( spep_5 -3 + 2, 1, -474.4, -234.4 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -429.4, -205.6 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -384.4, -176.8 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -339.4, -148 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -294.3, -119.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -249.4, -90.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -204.4, -61.6 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -159.3, -32.7 , 0 );
setMoveKey( spep_5 -3 + 19, 1, -114.3, -3.9 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -75.3, 32.9 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -64.1, 19.4 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -73, 28 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -61.8, 24.5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -70.7, 35 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -59.5, 21.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -68.4, 30.1 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -57.2, 26.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -66, 37.1 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -54.9, 23.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -63.7, 32.2 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -52.6, 28.7 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -61.4, 39.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -50.2, 25.7 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -59.1, 34.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -47.9, 30.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -56.8, 41.3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -45.6, 27.8 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -54.5, 36.4 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -43.3, 32.9 , 0 );

setScaleKey( spep_5 -3 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 2, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 4, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 6, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 8, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 10, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 12, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 14, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 19, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 58, 1, 1.2, 1.2 );

setRotateKey( spep_5 -3 + 0, 1, -36.5 );
setRotateKey( spep_5 -3 + 58, 1, -36.5 );

--白フェード
entryFade( spep_5 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 18, 1049 );  --被弾
SE1x = playSe( spep_5 + 20, 1050 );  --被弾
setSeVolume( spep_5 + 20, 1050, 70 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;

------------------------------------------------------
-- サウザー迫る
------------------------------------------------------
-- ** エフェクト等 ** --
pagpaduol_a = entryEffect( spep_6 + 0, SP_10,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, pagpaduol_a, 0, 0 , 0 );
setEffMoveKey( spep_6 + 50, pagpaduol_a, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, pagpaduol_a, 1.0, 1.0 );
setEffScaleKey( spep_6 + 50, pagpaduol_a, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, pagpaduol_a, 0 );
setEffRotateKey( spep_6 + 50, pagpaduol_a, 0 );
setEffAlphaKey( spep_6 + 0, pagpaduol_a, 255 );
setEffAlphaKey( spep_6 + 50, pagpaduol_a, 255 );

-- ** エフェクト等 ** --
pagpaduol_b = entryEffect( spep_6 + 0, SP_11,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, pagpaduol_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 50, pagpaduol_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, pagpaduol_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 50, pagpaduol_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, pagpaduol_b, 0 );
setEffRotateKey( spep_6 + 50, pagpaduol_b, 0 );
setEffAlphaKey( spep_6 + 0, pagpaduol_b, 255 );
setEffAlphaKey( spep_6 + 50, pagpaduol_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 48, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, -201.7, 390.1 , 0 );
setMoveKey( spep_6 + 2, 1, -204.4, 394.4 , 0 );
setMoveKey( spep_6 + 4, 1, -199.1, 384.2 , 0 );
setMoveKey( spep_6 + 6, 1, -197, 388.4 , 0 );
setMoveKey( spep_6 + 8, 1, -199.7, 387.8 , 0 );
setMoveKey( spep_6 + 10, 1, -202.4, 392 , 0 );
setMoveKey( spep_6 + 12, 1, -197.1, 381.8 , 0 );
setMoveKey( spep_6 + 14, 1, -195, 386.1 , 0 );
setMoveKey( spep_6 + 16, 1, -197.7, 385.5 , 0 );
setMoveKey( spep_6 + 18, 1, -200.4, 389.7 , 0 );
setMoveKey( spep_6 + 20, 1, -195.1, 379.5 , 0 );
setMoveKey( spep_6 + 22, 1, -193, 383.7 , 0 );
setMoveKey( spep_6 + 24, 1, -195.7, 383.1 , 0 );
setMoveKey( spep_6 + 26, 1, -198.4, 387.4 , 0 );
setMoveKey( spep_6 + 28, 1, -193.1, 377.2 , 0 );
setMoveKey( spep_6 + 30, 1, -191, 381.4 , 0 );
setMoveKey( spep_6 + 32, 1, -193.7, 380.8 , 0 );
setMoveKey( spep_6 + 34, 1, -196.4, 385 , 0 );
setMoveKey( spep_6 + 36, 1, -191.1, 374.8 , 0 );
setMoveKey( spep_6 + 38, 1, -189, 379.1 , 0 );
setMoveKey( spep_6 + 40, 1, -191.7, 378.5 , 0 );
setMoveKey( spep_6 + 42, 1, -194.4, 382.7 , 0 );
setMoveKey( spep_6 + 44, 1, -189.1, 372.5 , 0 );
setMoveKey( spep_6 + 46, 1, -187, 376.7 , 0 );
setMoveKey( spep_6 + 48, 1, -189.7, 376.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 48, 1, 0.62, 0.62 );

setRotateKey( spep_6 + 0, 1, -32.7 );
setRotateKey( spep_6 + 48, 1, -32.7 );

--白フェード
entryFade( spep_6 + 42, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 0, 8 );  --迫る
stopSe( spep_6 + 40, SE1x, 10 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 50;

------------------------------------------------------
-- 斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
tapus = entryEffect( spep_7 + 0, SP_12,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, tapus, 0, 0 , 0 );
setEffMoveKey( spep_7 + 40, tapus, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, tapus, 1.1, 1.1 );
setEffScaleKey( spep_7 + 40, tapus, 1.1, 1.1 );
setEffRotateKey( spep_7 + 0, tapus, 0 );
setEffRotateKey( spep_7 + 40, tapus, 0 );
setEffAlphaKey( spep_7 + 0, tapus, 255 );
setEffAlphaKey( spep_7 + 40, tapus, 255 );

--白フェード
entryFade( spep_7 + 32, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_7 + 0, 1172 ); --切る

-- ** 次の準備 ** --
spep_8 = spep_7 + 40;

------------------------------------------------------
-- サウザーフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
reverberation = entryEffect( spep_8 + 0, SP_13,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, reverberation, 0, 0 , 0 );
setEffMoveKey( spep_8 + 40, reverberation, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, reverberation, 1.0, 1.0 );
setEffScaleKey( spep_8 + 40, reverberation, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, reverberation, 0 );
setEffRotateKey( spep_8 + 40, reverberation, 0 );
setEffAlphaKey( spep_8 + 0, reverberation, 255 );
setEffAlphaKey( spep_8 + 40, reverberation, 255 );


--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -3 + 38, 1, 0 );

changeAnime( spep_8 + 0, 1, 107 );

b=90;

setMoveKey( spep_8 + 0, 1, 0, 199.4-b , 0 );
--setMoveKey( spep_8 + 2, 1, 0, 97.5-b , 0 );
setMoveKey( spep_8 -3 + 4, 1, 0, -4.5-b , 0 );
setMoveKey( spep_8 -3 + 6, 1, 0, -106.3-b , 0 );
setMoveKey( spep_8 -3 + 8, 1, 0, -208.3-b , 0 );
setMoveKey( spep_8 -3 + 10, 1, 0, -310.3-b , 0 );
setMoveKey( spep_8 -3 + 12, 1, 0, -357-b , 0 );
setMoveKey( spep_8 -3 + 14, 1, 0, -403.8-b , 0 );
setMoveKey( spep_8 -3 + 16, 1, 0, -450.5-b , 0 );
setMoveKey( spep_8 -3 + 18, 1, 0, -497.4-b , 0 );
setMoveKey( spep_8 -3 + 20, 1, 0, -544.1-b , 0 );
setMoveKey( spep_8 -3 + 22, 1, 0, -590.9-b , 0 );
setMoveKey( spep_8 -3 + 24, 1, 0, -637.7-b , 0 );
setMoveKey( spep_8 -3 + 26, 1, 0, -684.5-b , 0 );
setMoveKey( spep_8 -3 + 28, 1, 0, -731.2-b , 0 );
setMoveKey( spep_8 -3 + 30, 1, 0, -778-b , 0 );
setMoveKey( spep_8 -3 + 32, 1, 0, -824.8-b , 0 );
setMoveKey( spep_8 -3 + 34, 1, 0, -871.5-b , 0 );
setMoveKey( spep_8 -3 + 36, 1, 0, -918.3-b , 0 );
setMoveKey( spep_8 -3 + 38, 1, 0, -965.1-b , 0 );

a=0.23;

setScaleKey( spep_8 + 0, 1, 0.8 -a, 0.8-a );
setScaleKey( spep_8 -3 + 38, 1, 3.2, 3.2 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 -3 + 38, 1, 0 );

--白フェード
entryFade( spep_8 + 32, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 40;

------------------------------------------------------
-- 崖に激突
------------------------------------------------------
-- ** エフェクト等 ** --
pagsamad = entryEffect( spep_9 + 0, SP_14,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, pagsamad, 0, 0 , 0 );
setEffMoveKey( spep_9 + 60, pagsamad, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, pagsamad, 1.0, 1.0 );
setEffScaleKey( spep_9 + 60, pagsamad, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, pagsamad, 0 );
setEffRotateKey( spep_9 + 60, pagsamad, 0 );
setEffAlphaKey( spep_9 + 0, pagsamad, 255 );
setEffAlphaKey( spep_9 + 60, pagsamad, 255 );

--敵の動き
setDisp( spep_9  + 0, 1, 1 );
setDisp( spep_9 -3 + 20, 1, 0 );

changeAnime( spep_9  + 0, 1, 106 );

setMoveKey( spep_9  + 0, 1, -538.8, 544.3 , 0 );
setMoveKey( spep_9 -3 + 2, 1, -479.4, 488.4 , 0 );
setMoveKey( spep_9 -3 + 4, 1, -420, 432.4 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -360.6, 376.5 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -301.2, 320.5 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -241.9, 264.6 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -182.6, 208.8 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -123.3, 152.9 , 0 );
setMoveKey( spep_9 -3 + 16, 1, -64, 97.1 , 0 );
setMoveKey( spep_9 -3 + 18, 1, -4.8, 41.3 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 54.4, -14.4 , 0 );

setScaleKey( spep_9  + 0, 1, 0.33, 0.33 );
setScaleKey( spep_9 -3 + 20, 1, 0.33, 0.33 );

setRotateKey( spep_9  + 0, 1, 84 );
setRotateKey( spep_9 -3 + 2, 1, 82.4 );
setRotateKey( spep_9 -3 + 4, 1, 81 );
setRotateKey( spep_9 -3 + 6, 1, 79.5 );
setRotateKey( spep_9 -3 + 8, 1, 78 );
setRotateKey( spep_9 -3 + 10, 1, 76.6 );
setRotateKey( spep_9 -3 + 12, 1, 75.1 );
setRotateKey( spep_9 -3 + 14, 1, 73.6 );
setRotateKey( spep_9 -3 + 16, 1, 72.1 );
setRotateKey( spep_9 -3 + 18, 1, 70.7 );
setRotateKey( spep_9 -3 + 20, 1, 69.2 );

--集中線
shuchusen5 = entryEffectLife( spep_9 -3 + 20,  906, 38 +3 , 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_9 -3 + 20, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_9  + 58, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_9 -3 + 20, shuchusen5, 1.22, 1.22 );
setEffScaleKey( spep_9  + 58, shuchusen5, 1.22, 1.22 );

setEffRotateKey( spep_9 -3 + 20, shuchusen5, 0 );
setEffRotateKey( spep_9  + 58, shuchusen5, 0 );

setEffAlphaKey( spep_9 -3 + 20, shuchusen5, 255 );
setEffAlphaKey( spep_9  + 58, shuchusen5, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_9 -3 + 20,  10018, 38, 0x100, -1, 0, 53.7, 138.1 );--ドゴォンッ

setEffMoveKey( spep_9 -3 + 20, ctdogon, 53.7, 138.1 , 0 );
setEffMoveKey( spep_9 -3 + 22, ctdogon, 51.7, 149.8 , 0 );
setEffMoveKey( spep_9 -3 + 24, ctdogon, 50.6, 156.1 , 0 );
setEffMoveKey( spep_9 -3 + 26, ctdogon, 48.5, 169.2 , 0 );
setEffMoveKey( spep_9 -3 + 28, ctdogon, 49, 165.9 , 0 );
setEffMoveKey( spep_9 -3 + 30, ctdogon, 48.2, 170.8 , 0 );
setEffMoveKey( spep_9 -3 + 32, ctdogon, 48.8, 167.4 , 0 );
setEffMoveKey( spep_9 -3 + 34, ctdogon, 47.9, 172.5 , 0 );
setEffMoveKey( spep_9 -3 + 36, ctdogon, 48.6, 169 , 0 );
setEffMoveKey( spep_9 -3 + 38, ctdogon, 47.6, 174.1 , 0 );
setEffMoveKey( spep_9 -3 + 40, ctdogon, 48.3, 170.5 , 0 );
setEffMoveKey( spep_9 -3 + 42, ctdogon, 47.4, 175.7 , 0 );
setEffMoveKey( spep_9 -3 + 44, ctdogon, 48, 172.1 , 0 );
setEffMoveKey( spep_9 -3 + 46, ctdogon, 47.1, 177.4 , 0 );
setEffMoveKey( spep_9 -3 + 48, ctdogon, 47.8, 173.6 , 0 );
setEffMoveKey( spep_9 -3 + 50, ctdogon, 46.8, 179 , 0 );
setEffMoveKey( spep_9 -3 + 52, ctdogon, 47.5, 175 , 0 );
setEffMoveKey( spep_9 -3 + 54, ctdogon, 46.5, 180.6 , 0 );
setEffMoveKey( spep_9 -3 + 56, ctdogon, 47.3, 176.5 , 0 );
setEffMoveKey( spep_9 -3 + 58, ctdogon, 47.1, 177.3 , 0 );

setEffScaleKey( spep_9 -3 + 20, ctdogon, 0.8, 0.8 );
setEffScaleKey( spep_9 -3 + 22, ctdogon, 1.11, 1.11 );
setEffScaleKey( spep_9 -3 + 24, ctdogon, 1.32, 1.32 );
setEffScaleKey( spep_9 -3 + 26, ctdogon, 1.66, 1.66 );
setEffScaleKey( spep_9 -3 + 28, ctdogon, 1.61, 1.61 );
setEffScaleKey( spep_9 -3 + 30, ctdogon, 1.71, 1.71 );
setEffScaleKey( spep_9 -3 + 32, ctdogon, 1.65, 1.65 );
setEffScaleKey( spep_9 -3 + 34, ctdogon, 1.75, 1.75 );
setEffScaleKey( spep_9 -3 + 36, ctdogon, 1.69, 1.69 );
setEffScaleKey( spep_9 -3 + 38, ctdogon, 1.81, 1.81 );
setEffScaleKey( spep_9 -3 + 40, ctdogon, 1.74, 1.74 );
setEffScaleKey( spep_9 -3 + 42, ctdogon, 1.85, 1.85 );
setEffScaleKey( spep_9 -3 + 44, ctdogon, 1.78, 1.78 );
setEffScaleKey( spep_9 -3 + 46, ctdogon, 1.89, 1.89 );
setEffScaleKey( spep_9 -3 + 48, ctdogon, 1.82, 1.82 );
setEffScaleKey( spep_9 -3 + 50, ctdogon, 1.94, 1.94 );
setEffScaleKey( spep_9 -3 + 52, ctdogon, 1.87, 1.87 );
setEffScaleKey( spep_9 -3 + 54, ctdogon, 1.98, 1.98 );
setEffScaleKey( spep_9 -3 + 56, ctdogon, 1.91, 1.91 );
setEffScaleKey( spep_9 -3 + 58, ctdogon, 1.93, 1.93 );

setEffRotateKey( spep_9 -3 + 20, ctdogon, -9.3 );
setEffRotateKey( spep_9 -3 + 22, ctdogon, -9.5 );
setEffRotateKey( spep_9 -3 + 58, ctdogon, -9.5 );

setEffAlphaKey( spep_9 -3 + 20, ctdogon, 255 );
setEffAlphaKey( spep_9 -3 + 26, ctdogon, 255 );
setEffAlphaKey( spep_9 -3 + 28, ctdogon, 254 );
setEffAlphaKey( spep_9 -3 + 30, ctdogon, 252 );
setEffAlphaKey( spep_9 -3 + 32, ctdogon, 251 );
setEffAlphaKey( spep_9 -3 + 34, ctdogon, 250 );
setEffAlphaKey( spep_9 -3 + 36, ctdogon, 249 );
setEffAlphaKey( spep_9 -3 + 38, ctdogon, 247 );
setEffAlphaKey( spep_9 -3 + 40, ctdogon, 246 );
setEffAlphaKey( spep_9 -3 + 42, ctdogon, 245 );
setEffAlphaKey( spep_9 -3 + 44, ctdogon, 214 );
setEffAlphaKey( spep_9 -3 + 46, ctdogon, 184 );
setEffAlphaKey( spep_9 -3 + 48, ctdogon, 153 );
setEffAlphaKey( spep_9 -3 + 50, ctdogon, 122 );
setEffAlphaKey( spep_9 -3 + 52, ctdogon, 92 );
setEffAlphaKey( spep_9 -3 + 54, ctdogon, 61 );
setEffAlphaKey( spep_9 -3 + 56, ctdogon, 31 );
setEffAlphaKey( spep_9 -3 + 58, ctdogon, 0 );

--白フェード
entryFade( spep_9 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE2 = playSe( spep_9 + 0, 1116 ); --落ちる
stopSe( spep_9 -3 + 18, SE2, 10);
playSe( spep_9 -3 + 20, 1023 ); --衝突

-- ** 次の準備 ** --
spep_10 = spep_9 + 60;

------------------------------------------------------
-- 気弾ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
atiman = entryEffect( spep_10 + 0, SP_15,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, atiman, 0, 0 , 0 );
setEffMoveKey( spep_10 + 80, atiman, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, atiman, 1.0, 1.0 );
setEffScaleKey( spep_10 + 80, atiman, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, atiman, 0 );
setEffRotateKey( spep_10 + 80, atiman, 0 );
setEffAlphaKey( spep_10 + 0, atiman, 255 );
setEffAlphaKey( spep_10 + 80, atiman, 255 );

--文字エントリー
ctzudodododo = entryEffectLife( spep_10 + 0,  10014, 78, 0x100, -1, 0, 95.8, -218.5 );--ズドドドッ

setEffMoveKey( spep_10 + 0, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 2, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 4, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 6, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 8, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 10, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 12, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 14, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 16, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 18, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 20, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 22, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 24, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 26, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 28, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 30, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 32, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 34, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 36, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 38, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 40, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 42, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 44, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 46, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 48, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 50, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 52, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 54, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 56, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 58, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 60, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 62, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 64, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 66, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 68, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 70, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 72, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 74, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 76, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 78, ctzudodododo, 102.9, -207.8 , 0 );

setEffScaleKey( spep_10 + 0, ctzudodododo, 2.33, 2.13 );
setEffScaleKey( spep_10 + 78, ctzudodododo, 2.33, 2.13 );

setEffRotateKey( spep_10 + 0, ctzudodododo, -8 );
setEffRotateKey( spep_10 + 78, ctzudodododo, -8 );

setEffAlphaKey( spep_10 + 0, ctzudodododo, 255 );
setEffAlphaKey( spep_10 + 78, ctzudodododo, 255 );

--白フェード
entryFade( spep_10 + 70, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE3 = playSe( spep_10 + 0, 1044 ); --地鳴り
setSeVolume( spep_10 + 0, 1044, 70 );
--[[
playSe( spep_10 + 0, 1155 ); --気弾
playSe( spep_10 + 10, 1155 ); --気弾
playSe( spep_10 + 20, 1155 ); --気弾
playSe( spep_10 + 30, 1155 ); --気弾
playSe( spep_10 + 40, 1155 ); --気弾
playSe( spep_10 + 50, 1155 ); --気弾
playSe( spep_10 + 60, 1155 ); --気弾
playSe( spep_10 + 70, 1155 ); --気弾
]]
--v4.11調整
SE001 = playSe( spep_10 + 0, 1155 ); --気弾
stopSe(spep_10+12,SE001,5);
SE002 = playSe( spep_10 + 10, 1155 ); --気弾
stopSe(spep_10+22,SE002,5);
SE003 = playSe( spep_10 + 20, 1155 ); --気弾
stopSe(spep_10+32,SE003,5);
SE004 = playSe( spep_10 + 30, 1155 ); --気弾
stopSe(spep_10+42,SE004,5);
SE005 = playSe( spep_10 + 40, 1155 ); --気弾
stopSe(spep_10+52,SE005,5);
SE006 = playSe( spep_10 + 50, 1155 ); --気弾
stopSe(spep_10+62,SE006,5);
SE007 = playSe( spep_10 + 60, 1155 ); --気弾
stopSe(spep_10+72,SE007,5);
SE008 = playSe( spep_10 + 70, 1155 ); --気弾
stopSe(spep_10+82,SE008s,5);


-- ** 次の準備 ** --
spep_11 = spep_10 + 80;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
pagsabog = entryEffect( spep_11 + 0, SP_16,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, pagsabog, 0, 0 , 0 );
setEffMoveKey( spep_11 + 180, pagsabog, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, pagsabog, 1.0, 1.0 );
setEffScaleKey( spep_11 + 180, pagsabog, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, pagsabog, 0 );
setEffRotateKey( spep_11 + 180, pagsabog, 0 );
setEffAlphaKey( spep_11 + 0, pagsabog, 255 );
setEffAlphaKey( spep_11 + 180, pagsabog, 255 );

-- ** 音 ** --
--[[
playSe( spep_11 + 0, 1155 ); --気弾
playSe( spep_11 + 10, 1155 ); --気弾
playSe( spep_11 + 20, 1155 ); --気弾
playSe( spep_11 + 30, 1155 ); --気弾
playSe( spep_11 + 40, 1155 ); --気弾
playSe( spep_11 + 50, 1155 ); --気弾
playSe( spep_11 + 60, 1155 ); --気弾
playSe( spep_11 + 70, 1155 ); --気弾
playSe( spep_11 + 80, 1155 ); --気弾
playSe( spep_11 + 90, 1155 ); --気弾
playSe( spep_11 + 100, 1155 ); --気弾
playSe( spep_11 + 110, 1155 ); --気弾
playSe( spep_11 + 120, 1155 ); --気弾
playSe( spep_11 + 130, 1155 ); --気弾
playSe( spep_11 + 140, 1155 ); --気弾
playSe( spep_11 + 150, 1155 ); --気弾
playSe( spep_11 + 160, 1155 ); --気弾
setSeVolume( spep_11 + 0, 1155, 50 );
setSeVolume( spep_11 + 10, 1155, 50 );
setSeVolume( spep_11 + 20, 1155, 50 );
setSeVolume( spep_11 + 30, 1155, 50 );
setSeVolume( spep_11 + 40, 1155, 50 );
setSeVolume( spep_11 + 50, 1155, 50 );
setSeVolume( spep_11 + 60, 1155, 50 );
setSeVolume( spep_11 + 70, 1155, 50 );
setSeVolume( spep_11 + 80, 1155, 50 );
setSeVolume( spep_11 + 90, 1155, 50 );
setSeVolume( spep_11 + 100, 1155, 50 );
setSeVolume( spep_11 + 110, 1155, 50 );
setSeVolume( spep_11 + 120, 1155, 50 );
setSeVolume( spep_11 + 130, 1155, 50 );
setSeVolume( spep_11 + 140, 1155, 50 );
setSeVolume( spep_11 + 150, 1155, 50 );
setSeVolume( spep_11 + 160, 1155, 50 );
]]
--v4.11調整
SE010 = playSe( spep_11 + 0, 1155 ); --気弾
SE011 = playSe( spep_11 + 10, 1155 ); --気弾
SE012 = playSe( spep_11 + 20, 1155 ); --気弾
SE013 = playSe( spep_11 + 30, 1155 ); --気弾
SE014 = playSe( spep_11 + 40, 1155 ); --気弾
SE015 = playSe( spep_11 + 50, 1155 ); --気弾
SE016 = playSe( spep_11 + 60, 1155 ); --気弾
SE017 = playSe( spep_11 + 70, 1155 ); --気弾
SE018 = playSe( spep_11 + 80, 1155 ); --気弾
SE019 = playSe( spep_11 + 90, 1155 ); --気弾
SE020 = playSe( spep_11 + 100, 1155 ); --気弾
SE021 = playSe( spep_11 + 110, 1155 ); --気弾
SE022 = playSe( spep_11 + 120, 1155 ); --気弾
SE023 = playSe( spep_11 + 130, 1155 ); --気弾
SE024 = playSe( spep_11 + 140, 1155 ); --気弾
SE025 = playSe( spep_11 + 150, 1155 ); --気弾
SE026 = playSe( spep_11 + 160, 1155 ); --気弾
setSeVolume( spep_11 + 0, 1155, 50 );
setSeVolume( spep_11 + 10, 1155, 50 );
setSeVolume( spep_11 + 20, 1155, 50 );
setSeVolume( spep_11 + 30, 1155, 50 );
setSeVolume( spep_11 + 40, 1155, 50 );
setSeVolume( spep_11 + 50, 1155, 50 );
setSeVolume( spep_11 + 60, 1155, 50 );
setSeVolume( spep_11 + 70, 1155, 50 );
setSeVolume( spep_11 + 80, 1155, 50 );
setSeVolume( spep_11 + 90, 1155, 50 );
setSeVolume( spep_11 + 100, 1155, 50 );
setSeVolume( spep_11 + 110, 1155, 50 );
setSeVolume( spep_11 + 120, 1155, 50 );
setSeVolume( spep_11 + 130, 1155, 50 );
setSeVolume( spep_11 + 140, 1155, 50 );
setSeVolume( spep_11 + 150, 1155, 50 );
setSeVolume( spep_11 + 160, 1155, 50 );
stopSe(spep_11+15,SE010,5);
stopSe(spep_11+25,SE011,5);
stopSe(spep_11+35,SE012,5);
stopSe(spep_11+45,SE013,5);
stopSe(spep_11+55,SE014,5);
stopSe(spep_11+65,SE015,5);
stopSe(spep_11+75,SE016,5);
stopSe(spep_11+85,SE017,5);
stopSe(spep_11+95,SE018,5);
stopSe(spep_11+105,SE019,5);
stopSe(spep_11+115,SE020,5);
stopSe(spep_11+125,SE021,5);
stopSe(spep_11+135,SE022,5);
stopSe(spep_11+145,SE023,5);
stopSe(spep_11+155,SE024,5);
stopSe(spep_11+165,SE025,5);
stopSe(spep_11+175,SE026,5);

setSeVolume( spep_11 + 0, 1044, 100 );
playSe( spep_11 + 32, 1024 ); --爆発
setSeVolume( spep_11 + 32, 1024, 120 );
stopSe( spep_11 + 176, SE3, 0 );

-- ** ダメージ表示 ** --
dealDamage(spep_11 +30 );
endPhase( spep_11 + 156 );

else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ファイティングポーズ
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
pose = entryEffect( spep_0 + 0, SP_01x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, pose, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, pose, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, pose, -1.1, 1.1 );
setEffScaleKey( spep_0 + 120, pose, -1.1, 1.1 );
setEffRotateKey( spep_0 + 0, pose, 0 );
setEffRotateKey( spep_0 + 120, pose, 0 );
setEffAlphaKey( spep_0 + 0, pose, 255 );
setEffAlphaKey( spep_0 + 120, pose, 255 );


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 76, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, -1.07, 1.07 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 38, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 38, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 38, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 38, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 2, shuchusen1, 243 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 231 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 219 );
setEffAlphaKey( spep_0 + 8, shuchusen1, 207 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 195 );
setEffAlphaKey( spep_0 + 12, shuchusen1, 183 );
setEffAlphaKey( spep_0 + 14, shuchusen1, 171 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 159 );
setEffAlphaKey( spep_0 + 18, shuchusen1, 147 );
setEffAlphaKey( spep_0 + 20, shuchusen1, 134 );
setEffAlphaKey( spep_0 + 22, shuchusen1, 122 );
setEffAlphaKey( spep_0 + 24, shuchusen1, 110 );
setEffAlphaKey( spep_0 + 26, shuchusen1, 98 );
setEffAlphaKey( spep_0 + 28, shuchusen1, 86 );
setEffAlphaKey( spep_0 + 30, shuchusen1, 74 );
setEffAlphaKey( spep_0 + 32, shuchusen1, 62 );
setEffAlphaKey( spep_0 + 34, shuchusen1, 50 );
setEffAlphaKey( spep_0 + 36, shuchusen1, 38 );
setEffAlphaKey( spep_0 + 38, shuchusen1, 26 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--白フェード
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 110, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_0 +12, 1018 );  --ゴゴゴ

--次の準備
spep_1 = spep_0+120;

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
entryFade( spep_1 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
pagdagan = entryEffect( spep_2 + 0, SP_02x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pagdagan, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, pagdagan, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, pagdagan, -1.0, 1.0 );
setEffScaleKey( spep_2 + 60, pagdagan, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pagdagan, 0 );
setEffRotateKey( spep_2 + 60, pagdagan, 0 );
setEffAlphaKey( spep_2 + 0, pagdagan, 255 );
setEffAlphaKey( spep_2 + 60, pagdagan, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 58, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.2, 1.44 );
setEffScaleKey( spep_2 + 58, shuchusen2, 1.2, 1.44 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 58, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, 9 );  --突進


--白フェード
entryFade( spep_2 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;

------------------------------------------------------
-- ドーレキック
------------------------------------------------------
-- ** エフェクト等 ** --
sipaan_a = entryEffect( spep_3 + 0, SP_03x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sipaan_a, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, sipaan_a, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sipaan_a, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, sipaan_a, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sipaan_a, 0 );
setEffRotateKey( spep_3 + 110, sipaan_a, 0 );
setEffAlphaKey( spep_3 + 0, sipaan_a, 0 );
setEffAlphaKey( spep_3 + 56, sipaan_a, 0 );
setEffAlphaKey( spep_3 + 57, sipaan_a, 255 );
setEffAlphaKey( spep_3 + 58, sipaan_a, 255 );
setEffAlphaKey( spep_3 + 110, sipaan_a, 255 );

-- ** エフェクト等 ** --
sipaan_b = entryEffect( spep_3 + 0, SP_04x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sipaan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, sipaan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sipaan_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, sipaan_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sipaan_b, 0 );
setEffRotateKey( spep_3 + 110, sipaan_b, 0 );
setEffAlphaKey( spep_3 + 0, sipaan_b, 255 );
setEffAlphaKey( spep_3 + 110, sipaan_b, 255 );

-- ** エフェクト等 ** --
sipaan_t = entryEffect( spep_3 + 0, SP_03x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sipaan_t, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, sipaan_t, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sipaan_t, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, sipaan_t, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sipaan_t, 0 );
setEffRotateKey( spep_3 + 110, sipaan_t, 0 );
setEffAlphaKey( spep_3 + 0, sipaan_t, 255 );
setEffAlphaKey( spep_3 + 56, sipaan_t, 255 );
setEffAlphaKey( spep_3 + 57, sipaan_t, 0 );
setEffAlphaKey( spep_3 + 58, sipaan_t, 0 );
setEffAlphaKey( spep_3 + 110, sipaan_t, 0 );

--敵の動き
setDisp(spep_3 -3 + 6,1,1);

changeAnime(spep_3 -3 + 6,1,102);


setMoveKey( spep_3 -3 + 6, 1, 689, -479.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 638.8, -450.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 588.7, -421.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 538.7, -392.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 488.5, -363.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 438.4, -334.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 388.3, -305 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 338.2, -275.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 288, -246.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 237.9, -217.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 187.8, -188.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 186.1, -187.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 184.5, -186.4 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 182.8, -185.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 181.1, -184.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 179.4, -183.3 , 0 );

setScaleKey( spep_3 -3 + 6, 1, 4, 4 );
setScaleKey( spep_3 -3 + 8, 1, 3.8, 3.8 );
setScaleKey( spep_3 -3 + 10, 1, 3.6, 3.6 );
setScaleKey( spep_3 -3 + 12, 1, 3.4, 3.4 );
setScaleKey( spep_3 -3 + 14, 1, 3.2, 3.2 );
setScaleKey( spep_3 -3 + 16, 1, 3, 3 );
setScaleKey( spep_3 -3 + 18, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 20, 1, 2.6, 2.6 );
setScaleKey( spep_3 -3 + 22, 1, 2.4, 2.4 );
setScaleKey( spep_3 -3 + 24, 1, 2.2, 2.2 );
setScaleKey( spep_3 -3 + 26, 1, 2, 2 );
setScaleKey( spep_3 -3 + 28, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 30, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 32, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 34, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 36, 1, 1.97, 1.97 );


setRotateKey( spep_3 -3 + 6, 1, 0 );
setRotateKey( spep_3 + 34, 1, 0 );

-- ** 音 ** --
SE0 = playSe( spep_3 + 0, 1072 );  --突進

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 34; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
  stopSe( SP_dodge - 12, SE0, 0 );
--    stopSe( SP_dodge - 12, SE1, 0 );
--    stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
--敵の固定
setMoveKey( SP_dodge + 10, 1, 179.4, -183.3 , 0 );
setScaleKey( SP_dodge+ 10, 1, 1.97, 1.97 );
setRotateKey( SP_dodge+10, 1, 0 );


    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
setDisp(spep_3 -3 + 80,1,0);

changeAnime(spep_3 -3 + 60,1,108);

setMoveKey( spep_3 -3 + 38, 1, 177.8, -182.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 176.1, -181.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 174.4, -180.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 172.7, -179.1 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 171.1, -178.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 169.4, -177 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 167.7, -176 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 166, -174.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 164.4, -173.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 162.7, -172.8 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 161, -171.8 , 0 );
setMoveKey( spep_3-3 + 60, 1, 395.8, 174 , 0 );
setMoveKey( spep_3-3 + 62, 1, 351.9, 122 , 0 );
setMoveKey( spep_3-3 + 64, 1, 326.7, 139.3 , 0 );
setMoveKey( spep_3-3 + 66, 1, 291.8, 113.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 306, 146.5 , 0 );
setMoveKey( spep_3-3 + 70, 1, 378.9, 151 , 0 );
setMoveKey( spep_3-3 + 72, 1, 423.5, 196.4 , 0 );
setMoveKey( spep_3-3 + 74, 1, 502.6, 223 , 0 );
setMoveKey( spep_3-3 + 76, 1, 545, 276.5 , 0 );
setMoveKey( spep_3-3 + 78, 1, 617.3, 280.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 661.3, 325.8 , 0 );

setScaleKey( spep_3 -3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 40, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 42, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 44, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 46, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 48, 1, 1.93, 1.93 );
setScaleKey( spep_3 -3 + 50, 1, 1.93, 1.93 );
setScaleKey( spep_3 -3 + 52, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 54, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 56, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 59, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 60, 1, 4, 4 );
setScaleKey( spep_3-3 + 62, 1, 3.48, 3.48 );
setScaleKey( spep_3-3 + 64, 1, 3.25, 3.25 );
setScaleKey( spep_3-3 + 66, 1, 2.76, 2.76 );
setScaleKey( spep_3-3 + 68, 1, 2.36, 2.36 );
setScaleKey( spep_3-3 + 70, 1, 2.12, 2.12 );
setScaleKey( spep_3-3 + 72, 1, 2.07, 2.07 );
setScaleKey( spep_3-3 + 74, 1, 1.85, 1.85 );
setScaleKey( spep_3-3 + 76, 1, 1.77, 1.77 );
setScaleKey( spep_3-3 + 78, 1, 1.56, 1.56 );
setScaleKey( spep_3-3 + 80, 1, 1.49, 1.49 );

setRotateKey( spep_3 -3 + 80, 1, 0 );

--文字エントリー
ctbako = entryEffectLife( spep_3-3 + 60,  10021, 38, 0x100, -1, 0, 20, -38.6 );--バゴォッ

setEffMoveKey( spep_3-3 + 60, ctbako, 20, -38.6 , 0 );
setEffMoveKey( spep_3-3 + 62, ctbako, 79.4, -113.7 , 0 );
setEffMoveKey( spep_3-3 + 64, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 66, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 68, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 70, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 72, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 74, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 76, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 78, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 80, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 82, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 84, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 86, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 88, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 90, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 92, ctbako, 137.9, -161.6 , 0 );
setEffMoveKey( spep_3-3 + 94, ctbako, 151.7, -173.8 , 0 );
setEffMoveKey( spep_3-3 + 98, ctbako, 137.9, -161.6 , 0 );

setEffScaleKey( spep_3-3 + 60, ctbako, 0.5, 0.5 );
setEffScaleKey( spep_3-3 + 62, ctbako, 1.87, 1.87 );
setEffScaleKey( spep_3-3 + 64, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 66, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 68, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 70, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 72, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 74, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 76, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 78, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 80, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 82, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 84, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 86, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 88, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 90, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 92, ctbako, 2.91, 2.91 );
setEffScaleKey( spep_3-3 + 94, ctbako, 3.2, 3.2 );
setEffScaleKey( spep_3-3 + 98, ctbako, 2.91, 2.91 );

setEffRotateKey( spep_3-3 + 60, ctbako, 35.1 );
setEffRotateKey( spep_3-3 + 62, ctbako, 29 );
setEffRotateKey( spep_3-3 + 64, ctbako, 23 );
setEffRotateKey( spep_3-3 + 98, ctbako, 23 );

setEffAlphaKey( spep_3-3 + 60, ctbako, 255 );
setEffAlphaKey( spep_3-3 + 88, ctbako, 255 );
setEffAlphaKey( spep_3-3 + 90, ctbako, 204 );
setEffAlphaKey( spep_3-3 + 92, ctbako, 153 );
setEffAlphaKey( spep_3-3 + 94, ctbako, 102 );
setEffAlphaKey( spep_3-3 + 96, ctbako, 51 );
setEffAlphaKey( spep_3-3 + 98, ctbako, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3 -3 + 60,  906, 48, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 60, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 108, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 60, shuchusen3, 1.5, 1.48 );
setEffScaleKey( spep_3 -3 + 108, shuchusen3, 1.5, 1.48 );

setEffRotateKey( spep_3 -3 + 60, shuchusen3, 0 );
setEffRotateKey( spep_3 -3 + 108, shuchusen3, 0 );

setEffAlphaKey( spep_3 -3 + 60, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 108, shuchusen3, 255 );

--白フェード
entryFade( spep_3 + 102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 -3 + 60, 1011 );  --蹴り


-- ** 次の準備 ** --
spep_4 = spep_3 + 110;

------------------------------------------------------
-- ネーズ発射
------------------------------------------------------
-- ** エフェクト等 ** --
lansad_a = entryEffect( spep_4 + 0, SP_05x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, lansad_a, 0, 0 , 0 );
setEffMoveKey( spep_4 + 64, lansad_a, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, lansad_a, 1.0, 1.0 );
setEffScaleKey( spep_4 + 64, lansad_a, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, lansad_a, 0 );
setEffRotateKey( spep_4 + 64, lansad_a, 0 );
setEffAlphaKey( spep_4 + 0, lansad_a, 255 );
setEffAlphaKey( spep_4 + 64, lansad_a, 255 );

--流線
ryusen1 = entryEffectLife( spep_4 -3 + 22,  914, 40, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 -3 + 22, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 62, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 22, ryusen1, 3.2, 1.6 );
setEffScaleKey( spep_4 -3 + 62, ryusen1, 3.2, 1.6 );

setEffRotateKey( spep_4 -3 + 22, ryusen1, 152 );
setEffRotateKey( spep_4 -3 + 62, ryusen1, 152 );

setEffAlphaKey( spep_4 -3 + 22, ryusen1, 255 );
setEffAlphaKey( spep_4 -3 + 62, ryusen1, 255 );

-- ** エフェクト等 ** --
lansad_b = entryEffect( spep_4 + 0, SP_06x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, lansad_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 64, lansad_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, lansad_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 64, lansad_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, lansad_b, 0 );
setEffRotateKey( spep_4 + 64, lansad_b, 0 );
setEffAlphaKey( spep_4 + 0, lansad_b, 255 );
setEffAlphaKey( spep_4 + 64, lansad_b, 255 );

--文字エントリー
ctbibibi = entryEffectLife( spep_4 -3 + 22,  10025, 30, 0x100, -1, 0, -74.5, 171.4 );--ビビビッ

setEffMoveKey( spep_4 -3 + 22, ctbibibi, -74.5, 171.4 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctbibibi, -111.6, 233.3 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctbibibi, -148.4, 294.8 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctbibibi, -148.4, 294.8 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctbibibi, -148.4, 294.8 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctbibibi, -148.4, 294.8 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctbibibi, -148.4, 294.8 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctbibibi, -148.4, 294.8 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctbibibi, -143.1, 287.9 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctbibibi, -148.4, 294.8 , 0 );

setEffScaleKey( spep_4 -3 + 22, ctbibibi, 0.1, 0.1 );
setEffScaleKey( spep_4 -3 + 24, ctbibibi, 0.95, 0.95 );
setEffScaleKey( spep_4 -3 + 26, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 28, ctbibibi, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 30, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 32, ctbibibi, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 34, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 36, ctbibibi, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 38, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 40, ctbibibi, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 42, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 44, ctbibibi, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 46, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 48, ctbibibi, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 50, ctbibibi, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 52, ctbibibi, 1.79, 1.79 );

setEffRotateKey( spep_4 -3 + 22, ctbibibi, 13.5 );
setEffRotateKey( spep_4 -3 + 52, ctbibibi, 13.5 );

setEffAlphaKey( spep_4 -3 + 22, ctbibibi, 255 );
setEffAlphaKey( spep_4 -3 + 52, ctbibibi, 255 );

--白フェード
entryFade( spep_4 + 56, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE1 = playSe( spep_4 + 0 -6, 1050 );  --溜め
stopSe( spep_4 + 20, SE1, 20);
playSe( spep_4 + 24, 1146 );  --発射
setSeVolume( spep_4 + 24, 1146, 66 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 64;

------------------------------------------------------
-- ネーズビーム
------------------------------------------------------
-- ** エフェクト等 ** --
beam_a = entryEffect( spep_5 + 0, SP_07x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_a, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, beam_a, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam_a, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, beam_a, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_a, 0 );
setEffRotateKey( spep_5 + 60, beam_a, 0 );
setEffAlphaKey( spep_5 + 0, beam_a, 255 );
setEffAlphaKey( spep_5 + 60, beam_a, 255 );

-- ** エフェクト等 ** --
beam_t = entryEffect( spep_5 + 0, SP_09x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_t, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, beam_t, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam_t, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, beam_t, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_t, 0 );
setEffRotateKey( spep_5 + 60, beam_t, 0 );
setEffAlphaKey( spep_5 + 0, beam_t, 255 );
setEffAlphaKey( spep_5 + 60, beam_t, 255 );

--流線
ryusen2 = entryEffectLife( spep_5 + 0,  914, 18 -2, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 -2 + 18, ryusen2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, ryusen2, 3.2, 1.6 );
setEffScaleKey( spep_5 -2 + 18, ryusen2, 3.2, 1.6 );
setEffRotateKey( spep_5 + 0, ryusen2, 152 );
setEffRotateKey( spep_5 -2 + 18, ryusen2, 152 );
setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 -2 + 18, ryusen2, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_5 + 0, SP_08x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, beam_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_b, 0 );
setEffRotateKey( spep_5 + 60, beam_b, 0 );
setEffAlphaKey( spep_5 + 0, beam_b, 255 );
setEffAlphaKey( spep_5 + 60, beam_b, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_5 -3 + 20,  906, 38, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 -3 + 20, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 -3 + 58, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_5 -3 + 20, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 -3 + 58, shuchusen4, 1, 1 );
setEffRotateKey( spep_5 -3 + 20, shuchusen4, 0 );
setEffRotateKey( spep_5 -3 + 58, shuchusen4, 0 );
setEffAlphaKey( spep_5 -3 + 20, shuchusen4, 255 );
setEffAlphaKey( spep_5 -3 + 58, shuchusen4, 255 );

--敵の動き
setDisp( spep_5 -3 + 0, 1, 1 );
setDisp( spep_5 -3 + 58, 1, 0 );

changeAnime( spep_5 -3 + 0, 1, 108 );
changeAnime( spep_5 -3 + 20, 1, 106 );

setMoveKey( spep_5 -3 + 0, 1, -519.4, -263.2 , 0 );
setMoveKey( spep_5 -3 + 2, 1, -474.4, -234.4 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -429.4, -205.6 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -384.4, -176.8 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -339.4, -148 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -294.3, -119.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -249.4, -90.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -204.4, -61.6 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -159.3, -32.7 , 0 );
setMoveKey( spep_5 -3 + 19, 1, -114.3, -3.9 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -75.3, 32.9 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -64.1, 19.4 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -73, 28 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -61.8, 24.5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -70.7, 35 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -59.5, 21.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -68.4, 30.1 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -57.2, 26.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -66, 37.1 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -54.9, 23.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -63.7, 32.2 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -52.6, 28.7 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -61.4, 39.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -50.2, 25.7 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -59.1, 34.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -47.9, 30.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -56.8, 41.3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -45.6, 27.8 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -54.5, 36.4 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -43.3, 32.9 , 0 );

setScaleKey( spep_5 -3 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 2, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 4, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 6, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 8, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 10, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 12, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 14, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 19, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 58, 1, 1.2, 1.2 );

setRotateKey( spep_5 -3 + 0, 1, -36.5 );
setRotateKey( spep_5 -3 + 58, 1, -36.5 );

--白フェード
entryFade( spep_5 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 18, 1049 );  --被弾
SE1x = playSe( spep_5 + 20, 1050 );  --被弾
setSeVolume( spep_5 + 20, 1050, 70 );


-- ** 次の準備 ** --
spep_6 = spep_5 + 60;

------------------------------------------------------
-- サウザー迫る
------------------------------------------------------
-- ** エフェクト等 ** --
pagpaduol_a = entryEffect( spep_6 + 0, SP_10x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, pagpaduol_a, 0, 0 , 0 );
setEffMoveKey( spep_6 + 50, pagpaduol_a, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, pagpaduol_a, 1.0, 1.0 );
setEffScaleKey( spep_6 + 50, pagpaduol_a, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, pagpaduol_a, 0 );
setEffRotateKey( spep_6 + 50, pagpaduol_a, 0 );
setEffAlphaKey( spep_6 + 0, pagpaduol_a, 255 );
setEffAlphaKey( spep_6 + 50, pagpaduol_a, 255 );

-- ** エフェクト等 ** --
pagpaduol_b = entryEffect( spep_6 + 0, SP_11x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, pagpaduol_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 50, pagpaduol_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, pagpaduol_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 50, pagpaduol_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, pagpaduol_b, 0 );
setEffRotateKey( spep_6 + 50, pagpaduol_b, 0 );
setEffAlphaKey( spep_6 + 0, pagpaduol_b, 255 );
setEffAlphaKey( spep_6 + 50, pagpaduol_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 48, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, -201.7, 390.1 , 0 );
setMoveKey( spep_6 + 2, 1, -204.4, 394.4 , 0 );
setMoveKey( spep_6 + 4, 1, -199.1, 384.2 , 0 );
setMoveKey( spep_6 + 6, 1, -197, 388.4 , 0 );
setMoveKey( spep_6 + 8, 1, -199.7, 387.8 , 0 );
setMoveKey( spep_6 + 10, 1, -202.4, 392 , 0 );
setMoveKey( spep_6 + 12, 1, -197.1, 381.8 , 0 );
setMoveKey( spep_6 + 14, 1, -195, 386.1 , 0 );
setMoveKey( spep_6 + 16, 1, -197.7, 385.5 , 0 );
setMoveKey( spep_6 + 18, 1, -200.4, 389.7 , 0 );
setMoveKey( spep_6 + 20, 1, -195.1, 379.5 , 0 );
setMoveKey( spep_6 + 22, 1, -193, 383.7 , 0 );
setMoveKey( spep_6 + 24, 1, -195.7, 383.1 , 0 );
setMoveKey( spep_6 + 26, 1, -198.4, 387.4 , 0 );
setMoveKey( spep_6 + 28, 1, -193.1, 377.2 , 0 );
setMoveKey( spep_6 + 30, 1, -191, 381.4 , 0 );
setMoveKey( spep_6 + 32, 1, -193.7, 380.8 , 0 );
setMoveKey( spep_6 + 34, 1, -196.4, 385 , 0 );
setMoveKey( spep_6 + 36, 1, -191.1, 374.8 , 0 );
setMoveKey( spep_6 + 38, 1, -189, 379.1 , 0 );
setMoveKey( spep_6 + 40, 1, -191.7, 378.5 , 0 );
setMoveKey( spep_6 + 42, 1, -194.4, 382.7 , 0 );
setMoveKey( spep_6 + 44, 1, -189.1, 372.5 , 0 );
setMoveKey( spep_6 + 46, 1, -187, 376.7 , 0 );
setMoveKey( spep_6 + 48, 1, -189.7, 376.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 48, 1, 0.62, 0.62 );

setRotateKey( spep_6 + 0, 1, -32.7 );
setRotateKey( spep_6 + 48, 1, -32.7 );

--白フェード
entryFade( spep_6 + 42, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 0, 8 );  --迫る
stopSe( spep_6 + 40, SE1x, 10 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 50;

------------------------------------------------------
-- 斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
tapus = entryEffect( spep_7 + 0, SP_12x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, tapus, 0, 0 , 0 );
setEffMoveKey( spep_7 + 40, tapus, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, tapus, 1.1, 1.1 );
setEffScaleKey( spep_7 + 40, tapus, 1.1, 1.1 );
setEffRotateKey( spep_7 + 0, tapus, 0 );
setEffRotateKey( spep_7 + 40, tapus, 0 );
setEffAlphaKey( spep_7 + 0, tapus, 255 );
setEffAlphaKey( spep_7 + 40, tapus, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, 1172 ); --切る

--白フェード
entryFade( spep_7 + 32, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 40;

------------------------------------------------------
-- サウザーフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
reverberation = entryEffect( spep_8 + 0, SP_13x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, reverberation, 0, 0 , 0 );
setEffMoveKey( spep_8 + 40, reverberation, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, reverberation, -1.0, 1.0 );
setEffScaleKey( spep_8 + 40, reverberation, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, reverberation, 0 );
setEffRotateKey( spep_8 + 40, reverberation, 0 );
setEffAlphaKey( spep_8 + 0, reverberation, 255 );
setEffAlphaKey( spep_8 + 40, reverberation, 255 );


--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -3 + 38, 1, 0 );

changeAnime( spep_8 + 0, 1, 7 );

b=90;

setMoveKey( spep_8 + 0, 1, 0, 199.4-b , 0 );
--setMoveKey( spep_8 + 2, 1, 0, 97.5-b , 0 );
setMoveKey( spep_8 -3 + 4, 1, 0, -4.5-b , 0 );
setMoveKey( spep_8 -3 + 6, 1, 0, -106.3-b , 0 );
setMoveKey( spep_8 -3 + 8, 1, 0, -208.3-b , 0 );
setMoveKey( spep_8 -3 + 10, 1, 0, -310.3-b , 0 );
setMoveKey( spep_8 -3 + 12, 1, 0, -357-b , 0 );
setMoveKey( spep_8 -3 + 14, 1, 0, -403.8-b , 0 );
setMoveKey( spep_8 -3 + 16, 1, 0, -450.5-b , 0 );
setMoveKey( spep_8 -3 + 18, 1, 0, -497.4-b , 0 );
setMoveKey( spep_8 -3 + 20, 1, 0, -544.1-b , 0 );
setMoveKey( spep_8 -3 + 22, 1, 0, -590.9-b , 0 );
setMoveKey( spep_8 -3 + 24, 1, 0, -637.7-b , 0 );
setMoveKey( spep_8 -3 + 26, 1, 0, -684.5-b , 0 );
setMoveKey( spep_8 -3 + 28, 1, 0, -731.2-b , 0 );
setMoveKey( spep_8 -3 + 30, 1, 0, -778-b , 0 );
setMoveKey( spep_8 -3 + 32, 1, 0, -824.8-b , 0 );
setMoveKey( spep_8 -3 + 34, 1, 0, -871.5-b , 0 );
setMoveKey( spep_8 -3 + 36, 1, 0, -918.3-b , 0 );
setMoveKey( spep_8 -3 + 38, 1, 0, -965.1-b , 0 );

a=0.23;

setScaleKey( spep_8 + 0, 1, 0.8 -a, 0.8-a );
setScaleKey( spep_8 -3 + 38, 1, 3.2, 3.2 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 -3 + 38, 1, 0 );

--白フェード
entryFade( spep_8 + 32, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 40;

------------------------------------------------------
-- 崖に激突
------------------------------------------------------
-- ** エフェクト等 ** --
pagsamad = entryEffect( spep_9 + 0, SP_14x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, pagsamad, 0, 0 , 0 );
setEffMoveKey( spep_9 + 60, pagsamad, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, pagsamad, -1.0, 1.0 );
setEffScaleKey( spep_9 + 60, pagsamad, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, pagsamad, 0 );
setEffRotateKey( spep_9 + 60, pagsamad, 0 );
setEffAlphaKey( spep_9 + 0, pagsamad, 255 );
setEffAlphaKey( spep_9 + 60, pagsamad, 255 );

--敵の動き
setDisp( spep_9  + 0, 1, 1 );
setDisp( spep_9 -3 + 20, 1, 0 );

changeAnime( spep_9  + 0, 1, 6 );

setMoveKey( spep_9  + 0, 1, 538.8, 544.3 , 0 );
setMoveKey( spep_9 -3 + 2, 1, 479.4, 488.4 , 0 );
setMoveKey( spep_9 -3 + 4, 1, 420, 432.4 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 360.6, 376.5 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 301.2, 320.5 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 241.9, 264.6 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 182.6, 208.8 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 123.3, 152.9 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 64, 97.1 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 4.8, 41.3 , 0 );
setMoveKey( spep_9 -3 + 20, 1, -54.4, -14.4 , 0 );

setScaleKey( spep_9  + 0, 1, 0.33, 0.33 );
setScaleKey( spep_9 -3 + 20, 1, 0.33, 0.33 );

setRotateKey( spep_9  + 0, 1, 84 );
setRotateKey( spep_9 -3 + 2, 1, 82.4 );
setRotateKey( spep_9 -3 + 4, 1, 81 );
setRotateKey( spep_9 -3 + 6, 1, 79.5 );
setRotateKey( spep_9 -3 + 8, 1, 78 );
setRotateKey( spep_9 -3 + 10, 1, 76.6 );
setRotateKey( spep_9 -3 + 12, 1, 75.1 );
setRotateKey( spep_9 -3 + 14, 1, 73.6 );
setRotateKey( spep_9 -3 + 16, 1, 72.1 );
setRotateKey( spep_9 -3 + 18, 1, 70.7 );
setRotateKey( spep_9 -3 + 20, 1, 69.2 );

--集中線
shuchusen5 = entryEffectLife( spep_9 -3 + 20,  906, 38 +3 , 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_9 -3 + 20, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_9  + 58, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_9 -3 + 20, shuchusen5, 1.22, 1.22 );
setEffScaleKey( spep_9  + 58, shuchusen5, 1.22, 1.22 );

setEffRotateKey( spep_9 -3 + 20, shuchusen5, 0 );
setEffRotateKey( spep_9  + 58, shuchusen5, 0 );

setEffAlphaKey( spep_9 -3 + 20, shuchusen5, 255 );
setEffAlphaKey( spep_9  + 58, shuchusen5, 255 );

--文字エントリー
ctdogon = entryEffectLife( spep_9 -3 + 20,  10018, 38, 0x100, -1, 0, -53.7, 138.1 );--ドゴォンッ

setEffMoveKey( spep_9 -3 + 20, ctdogon, -53.7, 138.1 , 0 );
setEffMoveKey( spep_9 -3 + 22, ctdogon, -51.7, 149.8 , 0 );
setEffMoveKey( spep_9 -3 + 24, ctdogon, -50.6, 156.1 , 0 );
setEffMoveKey( spep_9 -3 + 26, ctdogon, -48.5, 169.2 , 0 );
setEffMoveKey( spep_9 -3 + 28, ctdogon, -49, 165.9 , 0 );
setEffMoveKey( spep_9 -3 + 30, ctdogon, -48.2, 170.8 , 0 );
setEffMoveKey( spep_9 -3 + 32, ctdogon, -48.8, 167.4 , 0 );
setEffMoveKey( spep_9 -3 + 34, ctdogon, -47.9, 172.5 , 0 );
setEffMoveKey( spep_9 -3 + 36, ctdogon, -48.6, 169 , 0 );
setEffMoveKey( spep_9 -3 + 38, ctdogon, -47.6, 174.1 , 0 );
setEffMoveKey( spep_9 -3 + 40, ctdogon, -48.3, 170.5 , 0 );
setEffMoveKey( spep_9 -3 + 42, ctdogon, -47.4, 175.7 , 0 );
setEffMoveKey( spep_9 -3 + 44, ctdogon, -48, 172.1 , 0 );
setEffMoveKey( spep_9 -3 + 46, ctdogon, -47.1, 177.4 , 0 );
setEffMoveKey( spep_9 -3 + 48, ctdogon, -47.8, 173.6 , 0 );
setEffMoveKey( spep_9 -3 + 50, ctdogon, -46.8, 179 , 0 );
setEffMoveKey( spep_9 -3 + 52, ctdogon, -47.5, 175 , 0 );
setEffMoveKey( spep_9 -3 + 54, ctdogon, -46.5, 180.6 , 0 );
setEffMoveKey( spep_9 -3 + 56, ctdogon, -47.3, 176.5 , 0 );
setEffMoveKey( spep_9 -3 + 58, ctdogon, -47.1, 177.3 , 0 );

setEffScaleKey( spep_9 -3 + 20, ctdogon, 0.8, 0.8 );
setEffScaleKey( spep_9 -3 + 22, ctdogon, 1.11, 1.11 );
setEffScaleKey( spep_9 -3 + 24, ctdogon, 1.32, 1.32 );
setEffScaleKey( spep_9 -3 + 26, ctdogon, 1.66, 1.66 );
setEffScaleKey( spep_9 -3 + 28, ctdogon, 1.61, 1.61 );
setEffScaleKey( spep_9 -3 + 30, ctdogon, 1.71, 1.71 );
setEffScaleKey( spep_9 -3 + 32, ctdogon, 1.65, 1.65 );
setEffScaleKey( spep_9 -3 + 34, ctdogon, 1.75, 1.75 );
setEffScaleKey( spep_9 -3 + 36, ctdogon, 1.69, 1.69 );
setEffScaleKey( spep_9 -3 + 38, ctdogon, 1.81, 1.81 );
setEffScaleKey( spep_9 -3 + 40, ctdogon, 1.74, 1.74 );
setEffScaleKey( spep_9 -3 + 42, ctdogon, 1.85, 1.85 );
setEffScaleKey( spep_9 -3 + 44, ctdogon, 1.78, 1.78 );
setEffScaleKey( spep_9 -3 + 46, ctdogon, 1.89, 1.89 );
setEffScaleKey( spep_9 -3 + 48, ctdogon, 1.82, 1.82 );
setEffScaleKey( spep_9 -3 + 50, ctdogon, 1.94, 1.94 );
setEffScaleKey( spep_9 -3 + 52, ctdogon, 1.87, 1.87 );
setEffScaleKey( spep_9 -3 + 54, ctdogon, 1.98, 1.98 );
setEffScaleKey( spep_9 -3 + 56, ctdogon, 1.91, 1.91 );
setEffScaleKey( spep_9 -3 + 58, ctdogon, 1.93, 1.93 );

setEffRotateKey( spep_9 -3 + 20, ctdogon, -9.3 );
setEffRotateKey( spep_9 -3 + 22, ctdogon, -9.5 );
setEffRotateKey( spep_9 -3 + 58, ctdogon, -9.5 );

setEffAlphaKey( spep_9 -3 + 20, ctdogon, 255 );
setEffAlphaKey( spep_9 -3 + 26, ctdogon, 255 );
setEffAlphaKey( spep_9 -3 + 28, ctdogon, 254 );
setEffAlphaKey( spep_9 -3 + 30, ctdogon, 252 );
setEffAlphaKey( spep_9 -3 + 32, ctdogon, 251 );
setEffAlphaKey( spep_9 -3 + 34, ctdogon, 250 );
setEffAlphaKey( spep_9 -3 + 36, ctdogon, 249 );
setEffAlphaKey( spep_9 -3 + 38, ctdogon, 247 );
setEffAlphaKey( spep_9 -3 + 40, ctdogon, 246 );
setEffAlphaKey( spep_9 -3 + 42, ctdogon, 245 );
setEffAlphaKey( spep_9 -3 + 44, ctdogon, 214 );
setEffAlphaKey( spep_9 -3 + 46, ctdogon, 184 );
setEffAlphaKey( spep_9 -3 + 48, ctdogon, 153 );
setEffAlphaKey( spep_9 -3 + 50, ctdogon, 122 );
setEffAlphaKey( spep_9 -3 + 52, ctdogon, 92 );
setEffAlphaKey( spep_9 -3 + 54, ctdogon, 61 );
setEffAlphaKey( spep_9 -3 + 56, ctdogon, 31 );
setEffAlphaKey( spep_9 -3 + 58, ctdogon, 0 );

-- ** 音 ** --
SE2 = playSe( spep_9 + 0, 1116 ); --落ちる
stopSe( spep_9 -3 + 18, SE2, 10);
playSe( spep_9 -3 + 20, 1023 ); --衝突

--白フェード
entryFade( spep_9 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 60;

------------------------------------------------------
-- 気弾ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
atiman = entryEffect( spep_10 + 0, SP_15x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, atiman, 0, 0 , 0 );
setEffMoveKey( spep_10 + 80, atiman, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, atiman, -1.0, 1.0 );
setEffScaleKey( spep_10 + 80, atiman, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, atiman, 0 );
setEffRotateKey( spep_10 + 80, atiman, 0 );
setEffAlphaKey( spep_10 + 0, atiman, 255 );
setEffAlphaKey( spep_10 + 80, atiman, 255 );

--文字エントリー
ctzudodododo = entryEffectLife( spep_10 + 0,  10014, 78, 0x100, -1, 0, 95.8, -218.5 );--ズドドドッ

setEffMoveKey( spep_10 + 0, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 2, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 4, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 6, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 8, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 10, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 12, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 14, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 16, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 18, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 20, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 22, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 24, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 26, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 28, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 30, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 32, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 34, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 36, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 38, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 40, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 42, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 44, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 46, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 48, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 50, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 52, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 54, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 56, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 58, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 60, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 62, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 64, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 66, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 68, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 70, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 72, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 74, ctzudodododo, 102.9, -207.8 , 0 );
setEffMoveKey( spep_10 + 76, ctzudodododo, 95.8, -218.5 , 0 );
setEffMoveKey( spep_10 + 78, ctzudodododo, 102.9, -207.8 , 0 );

setEffScaleKey( spep_10 + 0, ctzudodododo, 2.33, 2.13 );
setEffScaleKey( spep_10 + 78, ctzudodododo, 2.33, 2.13 );

setEffRotateKey( spep_10 + 0, ctzudodododo, -8 );
setEffRotateKey( spep_10 + 78, ctzudodododo, -8 );

setEffAlphaKey( spep_10 + 0, ctzudodododo, 255 );
setEffAlphaKey( spep_10 + 78, ctzudodododo, 255 );


--白フェード
entryFade( spep_10 + 70, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
SE3 = playSe( spep_10 + 0, 1044 ); --地鳴り
setSeVolume( spep_10 + 0, 1044, 70 );
--[[
playSe( spep_10 + 0, 1155 ); --気弾
playSe( spep_10 + 10, 1155 ); --気弾
playSe( spep_10 + 20, 1155 ); --気弾
playSe( spep_10 + 30, 1155 ); --気弾
playSe( spep_10 + 40, 1155 ); --気弾
playSe( spep_10 + 50, 1155 ); --気弾
playSe( spep_10 + 60, 1155 ); --気弾
playSe( spep_10 + 70, 1155 ); --気弾
]]
--v4.11調整
SE001 = playSe( spep_10 + 0, 1155 ); --気弾
stopSe(spep_10+12,SE001,5);
SE002 = playSe( spep_10 + 10, 1155 ); --気弾
stopSe(spep_10+22,SE002,5);
SE003 = playSe( spep_10 + 20, 1155 ); --気弾
stopSe(spep_10+32,SE003,5);
SE004 = playSe( spep_10 + 30, 1155 ); --気弾
stopSe(spep_10+42,SE004,5);
SE005 = playSe( spep_10 + 40, 1155 ); --気弾
stopSe(spep_10+52,SE005,5);
SE006 = playSe( spep_10 + 50, 1155 ); --気弾
stopSe(spep_10+62,SE006,5);
SE007 = playSe( spep_10 + 60, 1155 ); --気弾
stopSe(spep_10+72,SE007,5);
SE008 = playSe( spep_10 + 70, 1155 ); --気弾
stopSe(spep_10+82,SE008s,5);


-- ** 次の準備 ** --
spep_11 = spep_10 + 80;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
pagsabog = entryEffect( spep_11 + 0, SP_16x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, pagsabog, 0, 0 , 0 );
setEffMoveKey( spep_11 + 180, pagsabog, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, pagsabog, -1.0, 1.0 );
setEffScaleKey( spep_11 + 180, pagsabog, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, pagsabog, 0 );
setEffRotateKey( spep_11 + 180, pagsabog, 0 );
setEffAlphaKey( spep_11 + 0, pagsabog, 255 );
setEffAlphaKey( spep_11 + 180, pagsabog, 255 );

-- ** 音 ** --
--[[
playSe( spep_11 + 0, 1155 ); --気弾
playSe( spep_11 + 10, 1155 ); --気弾
playSe( spep_11 + 20, 1155 ); --気弾
playSe( spep_11 + 30, 1155 ); --気弾
playSe( spep_11 + 40, 1155 ); --気弾
playSe( spep_11 + 50, 1155 ); --気弾
playSe( spep_11 + 60, 1155 ); --気弾
playSe( spep_11 + 70, 1155 ); --気弾
playSe( spep_11 + 80, 1155 ); --気弾
playSe( spep_11 + 90, 1155 ); --気弾
playSe( spep_11 + 100, 1155 ); --気弾
playSe( spep_11 + 110, 1155 ); --気弾
playSe( spep_11 + 120, 1155 ); --気弾
playSe( spep_11 + 130, 1155 ); --気弾
playSe( spep_11 + 140, 1155 ); --気弾
playSe( spep_11 + 150, 1155 ); --気弾
playSe( spep_11 + 160, 1155 ); --気弾
setSeVolume( spep_11 + 0, 1155, 50 );
setSeVolume( spep_11 + 10, 1155, 50 );
setSeVolume( spep_11 + 20, 1155, 50 );
setSeVolume( spep_11 + 30, 1155, 50 );
setSeVolume( spep_11 + 40, 1155, 50 );
setSeVolume( spep_11 + 50, 1155, 50 );
setSeVolume( spep_11 + 60, 1155, 50 );
setSeVolume( spep_11 + 70, 1155, 50 );
setSeVolume( spep_11 + 80, 1155, 50 );
setSeVolume( spep_11 + 90, 1155, 50 );
setSeVolume( spep_11 + 100, 1155, 50 );
setSeVolume( spep_11 + 110, 1155, 50 );
setSeVolume( spep_11 + 120, 1155, 50 );
setSeVolume( spep_11 + 130, 1155, 50 );
setSeVolume( spep_11 + 140, 1155, 50 );
setSeVolume( spep_11 + 150, 1155, 50 );
setSeVolume( spep_11 + 160, 1155, 50 );
]]
--v4.11調整
SE010 = playSe( spep_11 + 0, 1155 ); --気弾
SE011 = playSe( spep_11 + 10, 1155 ); --気弾
SE012 = playSe( spep_11 + 20, 1155 ); --気弾
SE013 = playSe( spep_11 + 30, 1155 ); --気弾
SE014 = playSe( spep_11 + 40, 1155 ); --気弾
SE015 = playSe( spep_11 + 50, 1155 ); --気弾
SE016 = playSe( spep_11 + 60, 1155 ); --気弾
SE017 = playSe( spep_11 + 70, 1155 ); --気弾
SE018 = playSe( spep_11 + 80, 1155 ); --気弾
SE019 = playSe( spep_11 + 90, 1155 ); --気弾
SE020 = playSe( spep_11 + 100, 1155 ); --気弾
SE021 = playSe( spep_11 + 110, 1155 ); --気弾
SE022 = playSe( spep_11 + 120, 1155 ); --気弾
SE023 = playSe( spep_11 + 130, 1155 ); --気弾
SE024 = playSe( spep_11 + 140, 1155 ); --気弾
SE025 = playSe( spep_11 + 150, 1155 ); --気弾
SE026 = playSe( spep_11 + 160, 1155 ); --気弾
setSeVolume( spep_11 + 0, 1155, 50 );
setSeVolume( spep_11 + 10, 1155, 50 );
setSeVolume( spep_11 + 20, 1155, 50 );
setSeVolume( spep_11 + 30, 1155, 50 );
setSeVolume( spep_11 + 40, 1155, 50 );
setSeVolume( spep_11 + 50, 1155, 50 );
setSeVolume( spep_11 + 60, 1155, 50 );
setSeVolume( spep_11 + 70, 1155, 50 );
setSeVolume( spep_11 + 80, 1155, 50 );
setSeVolume( spep_11 + 90, 1155, 50 );
setSeVolume( spep_11 + 100, 1155, 50 );
setSeVolume( spep_11 + 110, 1155, 50 );
setSeVolume( spep_11 + 120, 1155, 50 );
setSeVolume( spep_11 + 130, 1155, 50 );
setSeVolume( spep_11 + 140, 1155, 50 );
setSeVolume( spep_11 + 150, 1155, 50 );
setSeVolume( spep_11 + 160, 1155, 50 );
stopSe(spep_11+15,SE010,5);
stopSe(spep_11+25,SE011,5);
stopSe(spep_11+35,SE012,5);
stopSe(spep_11+45,SE013,5);
stopSe(spep_11+55,SE014,5);
stopSe(spep_11+65,SE015,5);
stopSe(spep_11+75,SE016,5);
stopSe(spep_11+85,SE017,5);
stopSe(spep_11+95,SE018,5);
stopSe(spep_11+105,SE019,5);
stopSe(spep_11+115,SE020,5);
stopSe(spep_11+125,SE021,5);
stopSe(spep_11+135,SE022,5);
stopSe(spep_11+145,SE023,5);
stopSe(spep_11+155,SE024,5);
stopSe(spep_11+165,SE025,5);
stopSe(spep_11+175,SE026,5);

setSeVolume( spep_11 + 0, 1044, 100 );
playSe( spep_11 + 32, 1024 ); --爆発
setSeVolume( spep_11 + 32, 1024, 120 );
stopSe( spep_11 + 176, SE3, 0 );


-- ** ダメージ表示 ** --
dealDamage(spep_11 +30 );
endPhase( spep_11 + 156 );
end
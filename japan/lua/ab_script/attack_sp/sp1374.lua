--1018520:人造人間14号&15号_マーダーコンビネーション(ドッカン後)
--sp_effect_a1_00199

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
SP_01=	154435	;--	導入
SP_02=	154436	;--	ラッシュ：上
SP_03=	154437	;--	ラッシュ：下
SP_04=	154438	;--	ラッシュ：背景
SP_05=	154439	;--	敵落下、煙
SP_06=	154440	;--	気弾発射：キャラ
SP_07=	154441	;--	気弾発射；背景
SP_08=	154442	;--	気弾命中
SP_09=	154443	;--	ラストシーン

--敵側
SP_01x=	154435	;--	導入
SP_02x=	154444	;--	ラッシュ：上	(敵)
SP_03x=	154445	;--	ラッシュ：下	(敵)
SP_04x=	154438	;--	ラッシュ：背景
SP_05x=	154439	;--	敵落下、煙	
SP_06x=	154446	;--	気弾発射：キャラ	(敵)
SP_07x=	154441	;--	気弾発射；背景	
SP_08x=	154442	;--	気弾命中	
SP_09x=	154447	;--	ラストシーン	(敵)
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
--導入
------------------------------------------------------
--最初の準備
spep_0 = 0;


-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 112, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 112, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 112, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 112, tame, 255 );

--白フェード
entryFade( spep_0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
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

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x100, -1, 0, 120, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  120,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  120,  510);

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
setEffScaleKey(  spep_0 +72,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, 1.07, 1.07 );

--白フェード
entryFade( spep_0 + 104, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--SE
playSe( spep_0 + 12, 1018 );
playSe( spep_0 + 79, 43 );
setSeVolume( spep_0 + 79, 43, 56 );
se_0009 = playSe( spep_0 + 95, 9 );
setSeVolume( spep_0 + 95, 9, 79 );

stopSe( spep_0 + 112, se_0009, 0 );
-- ** 次の準備 ** --
spep_1 = spep_0 + 112;

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
stopSe( spep_1 + 2, se_0009, 0 );
playSe( spep_1 + 0, SE_05 );

--白フェード
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--ラッシュ
--------------------------------------
-- ** エフェクト等 ** --
lush_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, lush_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 392, lush_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, lush_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 392, lush_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, lush_f, 0 );
setEffRotateKey( spep_2 + 392, lush_f, 0 );
setEffAlphaKey( spep_2 + 0, lush_f, 255 );
setEffAlphaKey( spep_2 + 392, lush_f, 255 );
-- ** エフェクト等 ** --
lush_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, lush_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 392, lush_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, lush_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 392, lush_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, lush_b, 0 );
setEffRotateKey( spep_2 + 392, lush_b, 0 );
setEffAlphaKey( spep_2 + 0, lush_b, 255 );
setEffAlphaKey( spep_2 + 392, lush_b, 255 );

-- ** エフェクト等 ** --
lush_n = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, lush_n, 0, 0 , 0 );
setEffMoveKey( spep_2 + 392, lush_n, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, lush_n, 1.0, 1.0 );
setEffScaleKey( spep_2 + 392, lush_n, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, lush_n, 0 );
setEffRotateKey( spep_2 + 392, lush_n, 0 );
setEffAlphaKey( spep_2 + 0, lush_n, 255 );
setEffAlphaKey( spep_2 + 392, lush_n, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 24,  10020, 16, 0x100, -1, 0, 134.5, 274.3 );--バキッ
setEffShake( spep_2-3 + 24, ctbaki, 16, 20 );
setEffMoveKey( spep_2-3 + 24, ctbaki, 134.5, 274.3 , 0 );
setEffMoveKey( spep_2-3 + 26, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_2-3 + 28, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_2-3 + 30, ctbaki, 134.5, 274.3 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbaki, 165.6, 321.5 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbaki, 152.3, 317.6 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbaki, 152.3, 317.6 , 0 );

setEffScaleKey( spep_2-3 + 24, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 38, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 40, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_2-3 + 24, ctbaki, 40 );
setEffRotateKey( spep_2-3 + 38, ctbaki, 40 );
setEffRotateKey( spep_2-3 + 40, ctbaki, 40 );

setEffAlphaKey( spep_2-3 + 24, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 36, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 38, ctbaki, 128 );
setEffAlphaKey( spep_2-3 + 40, ctbaki, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_2-3 + 48,  10019, 10, 0x100, -1, 0, -71.1, 291.3 );--ドンッ
setEffShake( spep_2-3 + 48, ctdon, 10, 20 );
setEffMoveKey( spep_2-3 + 48, ctdon, -71.1, 291.3 , 0 );
setEffMoveKey( spep_2-3 + 50, ctdon, -32.2, 305.1 , 0 );
setEffMoveKey( spep_2-3 + 52, ctdon, 3.8, 295 , 0 );
setEffMoveKey( spep_2-3 + 54, ctdon, 29, 302.7 , 0 );
setEffMoveKey( spep_2-3 + 56, ctdon, 19.6, 347.1 , 0 );
setEffMoveKey( spep_2-3 + 58, ctdon, 4.7, 381.8 , 0 );

setEffScaleKey( spep_2-3 + 48, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_2-3 + 50, ctdon, 2.33, 2.33 );
setEffScaleKey( spep_2-3 + 52, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_2-3 + 54, ctdon, 2.28, 2.28 );
setEffScaleKey( spep_2-3 + 56, ctdon, 2.07, 2.07 );
setEffScaleKey( spep_2-3 + 58, ctdon, 1.85, 1.85 );

setEffRotateKey( spep_2-3 + 48, ctdon, -10 );
setEffRotateKey( spep_2-3 + 58, ctdon, -10 );

setEffAlphaKey( spep_2-3 + 48, ctdon, 255 );
setEffAlphaKey( spep_2-3 + 54, ctdon, 255 );
setEffAlphaKey( spep_2-3 + 56, ctdon, 128 );
setEffAlphaKey( spep_2-3 + 58, ctdon, 0 );

--文字エントリー
ctga = entryEffectLife( spep_2-3 + 100,  10005, 16, 0x100, -1, 0, -60, 332.9 );--ガッ
setEffShake( spep_2-3 + 100, ctga, 16, 20 );
setEffMoveKey( spep_2-3 + 100, ctga, -60, 332.9 , 0 );
setEffMoveKey( spep_2-3 + 102, ctga, -69, 326.2 , 0 );
setEffMoveKey( spep_2-3 + 104, ctga, -78, 319.6 , 0 );
setEffMoveKey( spep_2-3 + 106, ctga, -87, 312.9 , 0 );
setEffMoveKey( spep_2-3 + 108, ctga, -96, 306.3 , 0 );
setEffMoveKey( spep_2-3 + 110, ctga, -105, 299.6 , 0 );
setEffMoveKey( spep_2-3 + 112, ctga, -133.1, 318.1 , 0 );
setEffMoveKey( spep_2-3 + 114, ctga, -161.2, 336.5 , 0 );
setEffMoveKey( spep_2-3 + 116, ctga, -189.3, 355 , 0 );

setEffScaleKey( spep_2-3 + 100, ctga, 2.06, 2.06 );
setEffScaleKey( spep_2-3 + 110, ctga, 2.06, 2.06 );
--setEffScaleKey( spep_2-3 + 112, ctga, 1.98, 1.98 );
--setEffScaleKey( spep_2-3 + 114, ctga, 1.91, 1.91 );
setEffScaleKey( spep_2-3 + 116, ctga, 1.53, 1.53 );

setEffRotateKey( spep_2-3 + 100, ctga, -15 );
setEffRotateKey( spep_2-3 + 116, ctga, -15 );

setEffAlphaKey( spep_2-3 + 100, ctga, 255 );
setEffAlphaKey( spep_2-3 + 110, ctga, 255 );
setEffAlphaKey( spep_2-3 + 112, ctga, 170 );
setEffAlphaKey( spep_2-3 + 114, ctga, 85 );
setEffAlphaKey( spep_2-3 + 116, ctga, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_2-3 + 154,  10020, 10, 0x100, -1, 0, -123.2, 215.8 );--バキッ
setEffShake( spep_2-3 + 154, ctbaki2, 10, 20 );
setEffMoveKey( spep_2-3 + 154, ctbaki2, -123.2, 215.8 , 0 );
setEffMoveKey( spep_2-3 + 156, ctbaki2, -112.8, 261.2 , 0 );
setEffMoveKey( spep_2-3 + 158, ctbaki2, -132.8, 280.9 , 0 );
setEffMoveKey( spep_2-3 + 160, ctbaki2, -129.3, 307.5 , 0 );
setEffMoveKey( spep_2-3 + 162, ctbaki2, -147.9, 313.8 , 0 );
setEffMoveKey( spep_2-3 + 164, ctbaki2, -155.5, 323.2 , 0 );

setEffScaleKey( spep_2-3 + 154, ctbaki2, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 156, ctbaki2, 1.81, 1.81 );
setEffScaleKey( spep_2-3 + 158, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_2-3 + 160, ctbaki2, 1.58, 1.58 );
setEffScaleKey( spep_2-3 + 162, ctbaki2, 1.36, 1.36 );
setEffScaleKey( spep_2-3 + 164, ctbaki2, 1.14, 1.14 );

setEffRotateKey( spep_2-3 + 154, ctbaki2, 40 );
setEffRotateKey( spep_2-3 + 164, ctbaki2, 40 );

setEffAlphaKey( spep_2-3 + 154, ctbaki2, 255 );
setEffAlphaKey( spep_2-3 + 160, ctbaki2, 255 );
setEffAlphaKey( spep_2-3 + 162, ctbaki2, 128 );
setEffAlphaKey( spep_2-3 + 164, ctbaki2, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_2-3 + 198,  10019, 10, 0x100, -1, 0, 132.3, 398.4 );--ドン
setEffShake( spep_2-3 + 198, ctdon2, 10, 20 );
setEffMoveKey( spep_2-3 + 198, ctdon2, 132.3, 398.4 , 0 );
setEffMoveKey( spep_2-3 + 200, ctdon2, 156.4, 385.4 , 0 );
setEffMoveKey( spep_2-3 + 202, ctdon2, 178.8, 357.3 , 0 );
setEffMoveKey( spep_2-3 + 204, ctdon2, 193.9, 340.7 , 0 );
setEffMoveKey( spep_2-3 + 206, ctdon2, 191.3, 339.7 , 0 );
setEffMoveKey( spep_2-3 + 208, ctdon2, 184.4, 333.2 , 0 );

setEffScaleKey( spep_2-3 + 198, ctdon2, 1.42, 1.42 );
setEffScaleKey( spep_2-3 + 200, ctdon2, 1.47, 1.47 );
setEffScaleKey( spep_2-3 + 202, ctdon2, 1.51, 1.51 );
setEffScaleKey( spep_2-3 + 204, ctdon2, 1.56, 1.56 );
setEffScaleKey( spep_2-3 + 206, ctdon2, 1.16, 1.16 );
setEffScaleKey( spep_2-3 + 208, ctdon2, 0.75, 0.75 );

setEffRotateKey( spep_2-3 + 198, ctdon2, -10 );
setEffRotateKey( spep_2-3 + 208, ctdon2, -10 );

setEffAlphaKey( spep_2-3 + 198, ctdon2, 255 );
setEffAlphaKey( spep_2-3 + 204, ctdon2, 255 );
setEffAlphaKey( spep_2-3 + 206, ctdon2, 128 );
setEffAlphaKey( spep_2-3 + 208, ctdon2, 0 );

--文字エントリー
ctbaki3 = entryEffectLife( spep_2-3 + 274,  10020, 28, 0x100, -1, 0, -114.8, 215.6 );
setEffShake( spep_2-3 + 274, ctbaki3, 28, 20 );
setEffMoveKey( spep_2-3 + 274, ctbaki3, -114.8, 215.6 , 0 );
setEffMoveKey( spep_2-3 + 276, ctbaki3, -120.6, 247.9 , 0 );
setEffMoveKey( spep_2-3 + 278, ctbaki3, -126.9, 239 , 0 );
setEffMoveKey( spep_2-3 + 280, ctbaki3, -117, 227 , 0 );
setEffMoveKey( spep_2-3 + 282, ctbaki3, -122.7, 259.3 , 0 );
setEffMoveKey( spep_2-3 + 284, ctbaki3, -129, 250.4 , 0 );
setEffMoveKey( spep_2-3 + 286, ctbaki3, -119.1, 238.4 , 0 );
setEffMoveKey( spep_2-3 + 288, ctbaki3, -124.8, 270.8 , 0 );
setEffMoveKey( spep_2-3 + 290, ctbaki3, -131.2, 261.8 , 0 );
setEffMoveKey( spep_2-3 + 292, ctbaki3, -121.2, 249.9 , 0 );
setEffMoveKey( spep_2-3 + 294, ctbaki3, -127, 282.2 , 0 );
setEffMoveKey( spep_2-3 + 296, ctbaki3, -133.3, 273.2 , 0 );
setEffMoveKey( spep_2-3 + 298, ctbaki3, -128.4, 289.8 , 0 );
setEffMoveKey( spep_2-3 + 300, ctbaki3, -140.2, 347.9 , 0 );
setEffMoveKey( spep_2-3 + 302, ctbaki3, -146.3, 418.7 , 0 );

setEffScaleKey( spep_2-3 + 274, ctbaki3, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 298, ctbaki3, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 300, ctbaki3, 1.7, 1.7 );
setEffScaleKey( spep_2-3 + 302, ctbaki3, 1.47, 1.47 );

setEffRotateKey( spep_2-3 + 274, ctbaki3, -10 );
setEffRotateKey( spep_2-3 + 302, ctbaki3, -10 );

setEffAlphaKey( spep_2-3 + 274, ctbaki3, 255 );
setEffAlphaKey( spep_2-3 + 298, ctbaki3, 255 );
setEffAlphaKey( spep_2-3 + 300, ctbaki3, 128 );
setEffAlphaKey( spep_2-3 + 302, ctbaki3, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_2-3 + 364,  10018, 12, 0x100, -1, 0, -8.1, -203.8 );--ドゴォンッ
setEffShake( spep_2-3 + 364, ctdogon, 12, 20 );
setEffMoveKey( spep_2-3 + 364, ctdogon, -8.1, -203.8 , 0 );
setEffMoveKey( spep_2-3 + 366, ctdogon, -6.4, -182.9 , 0 );
setEffMoveKey( spep_2-3 + 368, ctdogon, 3.7, -192.2 , 0 );
setEffMoveKey( spep_2-3 + 370, ctdogon, -2.2, -177.8 , 0 );
setEffMoveKey( spep_2-3 + 372, ctdogon, 11.9, -177.5 , 0 );
setEffMoveKey( spep_2-3 + 374, ctdogon, -37.7, -21.1 , 0 );
setEffMoveKey( spep_2-3 + 376, ctdogon, -84.8, 120.9 , 0 );

setEffScaleKey( spep_2-3 + 364, ctdogon, 3.73, 3.73 );
setEffScaleKey( spep_2-3 + 366, ctdogon, 2.8, 2.8 );
setEffScaleKey( spep_2-3 + 368, ctdogon, 2.91, 2.91 );
setEffScaleKey( spep_2-3 + 370, ctdogon, 3.03, 3.03 );
setEffScaleKey( spep_2-3 + 372, ctdogon, 3.15, 3.15 );
setEffScaleKey( spep_2-3 + 374, ctdogon, 4, 4 );
setEffScaleKey( spep_2-3 + 376, ctdogon, 4.86, 4.86 );

setEffRotateKey( spep_2-3 + 364, ctdogon, 13 );
setEffRotateKey( spep_2-3 + 366, ctdogon, 13.1 );
setEffRotateKey( spep_2-3 + 368, ctdogon, 13.1 );
setEffRotateKey( spep_2-3 + 370, ctdogon, 13 );
setEffRotateKey( spep_2-3 + 376, ctdogon, 13 );

setEffAlphaKey( spep_2-3 + 364, ctdogon, 255 );
setEffAlphaKey( spep_2-3 + 372, ctdogon, 255 );
setEffAlphaKey( spep_2-3 + 374, ctdogon, 128 );
setEffAlphaKey( spep_2-3 + 376, ctdogon, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 24,  906, 36, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 24, shuchusen1, 36, 20 );
setEffMoveKey( spep_2-3 + 24, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 60, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 24, shuchusen1, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 60, shuchusen1, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 24, shuchusen1, 180 );
setEffRotateKey( spep_2-3 + 60, shuchusen1, 180 );

setEffAlphaKey( spep_2-3 + 24, shuchusen1, 255 );
setEffAlphaKey( spep_2-3 + 60, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 100,  906, 18, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 100, shuchusen2, 18, 20 );
setEffMoveKey( spep_2-3 + 100, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 118, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 100, shuchusen2, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 118, shuchusen2, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 100, shuchusen2, 180 );
setEffRotateKey( spep_2-3 + 118, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 100, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 118, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 154,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 154, shuchusen3, 8, 20 );
setEffMoveKey( spep_2-3 + 154, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 162, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 154, shuchusen3, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 162, shuchusen3, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 154, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 162, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 154, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 162, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_2-3 + 198,  906, 54, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 198, shuchusen4, 54, 20 );
setEffMoveKey( spep_2-3 + 198, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 252, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 198, shuchusen4, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 252, shuchusen4, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 198, shuchusen4, 180 );
setEffRotateKey( spep_2-3 + 252, shuchusen4, 180 );

setEffAlphaKey( spep_2-3 + 198, shuchusen4, 255 );
setEffAlphaKey( spep_2-3 + 252, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_2-3 + 274,  906, 30, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 274, shuchusen5, 30, 20 );
setEffMoveKey( spep_2-3 + 274, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 304, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 274, shuchusen5, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 304, shuchusen5, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 274, shuchusen5, 180 );
setEffRotateKey( spep_2-3 + 304, shuchusen5, 180 );

setEffAlphaKey( spep_2-3 + 274, shuchusen5, 255 );
setEffAlphaKey( spep_2-3 + 304, shuchusen5, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_2-3 + 364,  906, 26, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 364, shuchusen6, 26, 20 );
setEffMoveKey( spep_2-3 + 364, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 390, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 364, shuchusen6, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 390, shuchusen6, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 364, shuchusen6, 180 );
setEffRotateKey( spep_2-3 + 390, shuchusen6, 180 );

setEffAlphaKey( spep_2-3 + 364, shuchusen6, 255 );
setEffAlphaKey( spep_2-3 + 390, shuchusen6, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 73, 1, 0 );
setDisp( spep_2 + 75, 1, 1 );
setDisp( spep_2 + 116, 1, 0 );
setDisp( spep_2 + 137, 1, 1 );
setDisp( spep_2 + 226, 1, 0 );
setDisp( spep_2 + 247, 1, 1 );
setDisp( spep_2 + 316, 1, 0 );
setDisp( spep_2 + 329, 1, 1 );
setDisp( spep_2 + 390-3, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2-3 + 24, 1, 108 );
changeAnime( spep_2-3 + 28, 1, 106 );
changeAnime( spep_2-3 + 48, 1, 108 );
changeAnime( spep_2-3 + 100, 1, 106 );
changeAnime( spep_2-3 + 154, 1, 108 );
changeAnime( spep_2-3 + 198, 1, 107 );
changeAnime( spep_2-3 + 272, 1, 105 );
changeAnime( spep_2-3 + 364, 1, 107 );

setMoveKey( spep_2 + 0, 1, 225.7, 5.5 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 222.5, 5.5 , 0 );
setMoveKey( spep_2-3 + 4, 1, 215.7, 5.5 , 0 );
setMoveKey( spep_2-3 + 6, 1, 205.6, 5.5 , 0 );
setMoveKey( spep_2-3 + 8, 1, 192.9, 5.5 , 0 );
setMoveKey( spep_2-3 + 10, 1, 177.7, 5.5 , 0 );
setMoveKey( spep_2-3 + 12, 1, 160.1, 5.5 , 0 );
setMoveKey( spep_2-3 + 14, 1, 139.8, 5.5 , 0 );
setMoveKey( spep_2-3 + 16, 1, 116.6, 5.5 , 0 );
setMoveKey( spep_2-3 + 18, 1, 89.9, 5.5 , 0 );
setMoveKey( spep_2-3 + 20, 1, 58.8, 5.5 , 0 );
setMoveKey( spep_2-3 + 23, 1, 20.5, 5.5 , 0 );
setMoveKey( spep_2-3 + 24, 1, 38.7, 75.7 , 0 );
setMoveKey( spep_2-3 + 27, 1, 126.2, 41.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, 42.1, 34.3 , 0 );
setMoveKey( spep_2-3 + 30, 1, 41.5, 56.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, 3.4, 45.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, 51.1, 93 , 0 );
setMoveKey( spep_2-3 + 36, 1, 50.9, 78.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 56.8, 101.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 56.7, 87.5 , 0 );
setMoveKey( spep_2-3 + 42, 1, 59.5, 91.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 62.4, 96.1 , 0 );
setMoveKey( spep_2-3 + 47, 1, 65.3, 100.4 , 0 );
setMoveKey( spep_2-3 + 48, 1, 154, 136.5 , 0 );

setMoveKey( spep_2-3 + 50, 1, 154.4, 145.1 , 0 );
setMoveKey( spep_2-3 + 52, 1, 193, 167.3 , 0 );
setMoveKey( spep_2-3 + 54, 1, 184.8, 137.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 172.8, 131.1 , 0 );
setMoveKey( spep_2-3 + 58, 1, 174.4, 134.3 , 0 );
setMoveKey( spep_2-3 + 60, 1, 176.3, 137.8 , 0 );
setMoveKey( spep_2-3 + 62, 1, 178.4, 141.4 , 0 );
setMoveKey( spep_2-3 + 64, 1, 249.9, 180.6 , 0 );
setMoveKey( spep_2-3 + 66, 1, 317.6, 217.7 , 0 );
setMoveKey( spep_2-3 + 68, 1, 381.7, 252.5 , 0 );
setMoveKey( spep_2-3 + 70, 1, 442.1, 285.3 , 0 );
setMoveKey( spep_2-3 + 72, 1, 498.7, 316 , 0 );
setMoveKey( spep_2-3 + 74, 1, 551.7, 344.5 , 0 );
setMoveKey( spep_2-3 + 75, 1, 551.7, 344.5 , 0 );
setMoveKey( spep_2-3 + 76, 1, -534.7, -319 , 0 );
setMoveKey( spep_2-3 + 78, 1, -428.2, -250.9 , 0 );
setMoveKey( spep_2-3 + 80, 1, -330.8, -188.9 , 0 );
setMoveKey( spep_2-3 + 82, 1, -242.3, -132.5 , 0 );
setMoveKey( spep_2-3 + 84, 1, -162.9, -82.1 , 0 );
setMoveKey( spep_2-3 + 86, 1, -90.8, -35.7 , 0 );
setMoveKey( spep_2-3 + 88, 1, -27.8, 4.6 , 0 );
setMoveKey( spep_2-3 + 90, 1, 26.3, 39.2 , 0 );
setMoveKey( spep_2-3 + 92, 1, 67.2, 78.7 , 0 );
setMoveKey( spep_2-3 + 94, 1, 88.6, 94.8 , 0 );
setMoveKey( spep_2-3 + 96, 1, 109.9, 110.9 , 0 );
setMoveKey( spep_2-3 + 99, 1, 131.3, 127 , 0 );
setMoveKey( spep_2-3 + 100, 1, 45.2, 76.4 , 0 );
setMoveKey( spep_2-3 + 102, 1, -18.5, 39.3 , 0 );
setMoveKey( spep_2-3 + 104, 1, -53.6, -69.4 , 0 );
setMoveKey( spep_2-3 + 106, 1, -125.1, -128.6 , 0 );
setMoveKey( spep_2-3 + 108, 1, -185, -196.9 , 0 );
setMoveKey( spep_2-3 + 110, 1, -244.9, -265.2 , 0 );
setMoveKey( spep_2-3 + 112, 1, -304.8, -333.5 , 0 );
setMoveKey( spep_2-3 + 114, 1, -364.7, -401.7 , 0 );
setMoveKey( spep_2-3 + 116, 1, -424.6, -470 , 0 );
setMoveKey( spep_2-3 + 118, 1, -484.5, -538.3 , 0 );
setMoveKey( spep_2-3 + 120, 1, -544.3, -606.6 , 0 );
setMoveKey( spep_2-3 + 122, 1, -604.2, -674.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, -664.1, -743.1 , 0 );
setMoveKey( spep_2-3 + 126, 1, -742.6, -824.6 , 0 );
setMoveKey( spep_2-3 + 128, 1, -824.5, -910 , 0 );
setMoveKey( spep_2-3 + 130, 1, -909.7, -999.2 , 0 );
setMoveKey( spep_2-3 + 131, 1, -909.7, -999.2 , 0 );
setMoveKey( spep_2-3 + 132, 1, 697.1, 639.4 , 0 );
setMoveKey( spep_2-3 + 134, 1, 638, 573 , 0 );
setMoveKey( spep_2-3 + 136, 1, 577.6, 504.8 , 0 );
setMoveKey( spep_2-3 + 138, 1, 515.9, 435.4 , 0 );
setMoveKey( spep_2-3 + 140, 1, 452.9, 364.4 , 0 );
setMoveKey( spep_2-3 + 142, 1, 388.8, 292.3 , 0 );
setMoveKey( spep_2-3 + 144, 1, 324, 219.1 , 0 );
setMoveKey( spep_2-3 + 146, 1, 258.4, 145.3 , 0 );
setMoveKey( spep_2-3 + 148, 1, 192.4, 70.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, 126, -4.2 , 0 );
setMoveKey( spep_2-3 + 153, 1, 13, -104 , 0 );
setMoveKey( spep_2-3 + 154, 1, 140.5, -78.5 , 0 );
setMoveKey( spep_2-3 + 156, 1, 161.7, -43.2 , 0 );
setMoveKey( spep_2-3 + 158, 1, 138.1, -53.5 , 0 );
setMoveKey( spep_2-3 + 160, 1, 129.2, -31.9 , 0 );
setMoveKey( spep_2-3 + 162, 1, 120.3, -9.9 , 0 );
setMoveKey( spep_2-3 + 164, 1, 111.4, 12.5 , 0 );
setMoveKey( spep_2-3 + 166, 1, 102.4, 35.3 , 0 );
setMoveKey( spep_2-3 + 168, 1, 93.3, 58.5 , 0 );
setMoveKey( spep_2-3 + 170, 1, 84.2, 82.1 , 0 );
setMoveKey( spep_2-3 + 172, 1, 75.1, 106.2 , 0 );
setMoveKey( spep_2-3 + 174, 1, 66, 130.6 , 0 );
setMoveKey( spep_2-3 + 176, 1, 48.3, 187.3 , 0 );
setMoveKey( spep_2-3 + 178, 1, 32.8, 234.6 , 0 );
setMoveKey( spep_2-3 + 180, 1, 19.2, 273 , 0 );
setMoveKey( spep_2-3 + 182, 1, 7.6, 302.9 , 0 );
setMoveKey( spep_2-3 + 184, 1, -2.3, 324.8 , 0 );
setMoveKey( spep_2-3 + 186, 1, -10.5, 339.3 , 0 );
setMoveKey( spep_2-3 + 188, 1, -17.2, 346.8 , 0 );
setMoveKey( spep_2-3 + 190, 1, -22.4, 347.9 , 0 );
setMoveKey( spep_2-3 + 192, 1, -26.3, 343 , 0 );
setMoveKey( spep_2-3 + 194, 1, -29, 332.7 , 0 );
setMoveKey( spep_2-3 + 197, 1, -30.5, 317.4 , 0 );

setMoveKey( spep_2-3 + 198, 1, -37.3, 317.2, 0 );
setMoveKey( spep_2-3 + 200, 1, 30.6, 211.8 , 0 );
setMoveKey( spep_2-3 + 202, 1, 49.7, 114.8 , 0 );
setMoveKey( spep_2-3 + 204, 1, 78.3, 41.4 , 0 );
setMoveKey( spep_2-3 + 206, 1, 106.9, -32.1 , 0 );
setMoveKey( spep_2-3 + 208, 1, 135.6, -105.5 , 0 );
setMoveKey( spep_2-3 + 210, 1, 164.2, -179 , 0 );
setMoveKey( spep_2-3 + 212, 1, 192.8, -252.4 , 0 );
setMoveKey( spep_2-3 + 214, 1, 221.5, -325.9 , 0 );
setMoveKey( spep_2-3 + 216, 1, 250.1, -399.3 , 0 );
setMoveKey( spep_2-3 + 218, 1, 278.7, -472.8 , 0 );
setMoveKey( spep_2-3 + 220, 1, 307.3, -546.2 , 0 );
setMoveKey( spep_2-3 + 222, 1, 336, -619.7 , 0 );
setMoveKey( spep_2-3 + 224, 1, 364.6, -693.1 , 0 );
setMoveKey( spep_2-3 + 226, 1, 393.2, -766.6 , 0 );
setMoveKey( spep_2-3 + 228, 1, 421.8, -840 , 0 );
setMoveKey( spep_2-3 + 230, 1, 421.5, -839.7 , 0 );
setMoveKey( spep_2-3 + 232, 1, 421.2, -839.3 , 0 );
setMoveKey( spep_2-3 + 234, 1, 420.8, -839 , 0 );
setMoveKey( spep_2-3 + 236, 1, 420.5, -838.7 , 0 );
setMoveKey( spep_2-3 + 238, 1, 420.2, -838.4 , 0 );
setMoveKey( spep_2-3 + 240, 1, 419.9, -838 , 0 );
setMoveKey( spep_2-3 + 242, 1, 419.5, -837.7 , 0 );
setMoveKey( spep_2-3 + 244, 1, 419.2, -837.4 , 0 );
setMoveKey( spep_2-3 + 246, 1, 418.9, -837.1 , 0 );
setMoveKey( spep_2-3 + 248, 1, 418.6, -836.7 , 0 );
setMoveKey( spep_2-3 + 249, 1, 418.6+400, -836.7-1000 , 0 );

a=60;

setMoveKey( spep_2-3 + 250, 1, -203.8-a, 611.8 , 0 );
setMoveKey( spep_2-3 + 252, 1, -173.4-a, 541 , 0 );
setMoveKey( spep_2-3 + 254, 1, -143.1-a, 470.3 , 0 );
setMoveKey( spep_2-3 + 256, 1, -112.7-a, 399.6 , 0 );
setMoveKey( spep_2-3 + 258, 1, -82.3-a, 328.9 , 0 );
setMoveKey( spep_2-3 + 260, 1, -52-a, 258.2 , 0 );
setMoveKey( spep_2-3 + 262, 1, -21.5-a, 187.5 , 0 );
setMoveKey( spep_2-3 + 264, 1, 8.9-a, 116.8 , 0 );
setMoveKey( spep_2-3 + 266, 1, 39.3-a, 46.1 , 0 );
setMoveKey( spep_2-3 + 268, 1, 69.8-a, -24.5 , 0 );
setMoveKey( spep_2-3 + 271, 1, 100.2-a, -95.2 , 0 );

setMoveKey( spep_2-3 + 272, 1, 43.7, 247.4 , 0 );
setMoveKey( spep_2-3 + 274, 1, 40.9, 159.7 , 0 );
setMoveKey( spep_2-3 + 276, 1, 64, 123.3 , 0 );
setMoveKey( spep_2-3 + 278, 1, 50.6, 136.5 , 0 );
setMoveKey( spep_2-3 + 280, 1, 49, 140.7 , 0 );
setMoveKey( spep_2-3 + 282, 1, 47.3, 144.8 , 0 );
setMoveKey( spep_2-3 + 284, 1, 45.6, 149 , 0 );
setMoveKey( spep_2-3 + 286, 1, 43.9, 153.1 , 0 );
setMoveKey( spep_2-3 + 288, 1, 42.3, 157.3 , 0 );
setMoveKey( spep_2-3 + 290, 1, 40.6, 161.4 , 0 );
setMoveKey( spep_2-3 + 292, 1, 38.9, 165.6 , 0 );
setMoveKey( spep_2-3 + 294, 1, 37.2, 169.8 , 0 );
setMoveKey( spep_2-3 + 296, 1, 35.5, 173.9 , 0 );
setMoveKey( spep_2-3 + 298, 1, 33.9, 178.1 , 0 );
setMoveKey( spep_2-3 + 300, 1, 30.1, 183.2 , 0 );
setMoveKey( spep_2-3 + 302, 1, -1.8, 243.1 , 0 );
setMoveKey( spep_2-3 + 304, 1, -33.8, 303.1 , 0 );
setMoveKey( spep_2-3 + 306, 1, -65.7, 363.1 , 0 );
setMoveKey( spep_2-3 + 308, 1, -97.7, 423.3 , 0 );
setMoveKey( spep_2-3 + 310, 1, -129.7, 483.4 , 0 );
setMoveKey( spep_2-3 + 312, 1, -161.8, 543.7 , 0 );
setMoveKey( spep_2-3 + 314, 1, -193.8, 603.9 , 0 );
setMoveKey( spep_2-3 + 316, 1, -225.9, 664.3 , 0 );
setMoveKey( spep_2-3 + 318, 1, -258, 724.7 , 0 );
setMoveKey( spep_2-3 + 320, 1, -290.2, 785.2 , 0 );
setMoveKey( spep_2-3 + 322, 1, -290.8, 785.6 , 0 );
setMoveKey( spep_2-3 + 324, 1, -291.4, 786 , 0 );
setMoveKey( spep_2-3 + 326, 1, -291.9, 786.4 , 0 );
setMoveKey( spep_2-3 + 328, 1, -292.5, 796.8 , 0 );
setMoveKey( spep_2-3 + 330, 1, -292.5, 796.8 , 0 );
setMoveKey( spep_2-3 + 331, 1, 568.7, -684.8 , 0 );
setMoveKey( spep_2-3 + 332, 1, 527.6, -620.1 , 0 );
setMoveKey( spep_2-3 + 334, 1, 486.5, -555.3 , 0 );
setMoveKey( spep_2-3 + 336, 1, 445.3, -490.5 , 0 );
setMoveKey( spep_2-3 + 338, 1, 404.1, -425.6 , 0 );
setMoveKey( spep_2-3 + 340, 1, 362.9, -360.7 , 0 );
setMoveKey( spep_2-3 + 342, 1, 321.6, -295.7 , 0 );
setMoveKey( spep_2-3 + 344, 1, 280.3, -230.6 , 0 );
setMoveKey( spep_2-3 + 346, 1, 239, -165.5 , 0 );
setMoveKey( spep_2-3 + 348, 1, 197.6, -100.3 , 0 );
setMoveKey( spep_2-3 + 350, 1, 156.2, -35.1 , 0 );
setMoveKey( spep_2-3 + 352, 1, 114.7, 30.2 , 0 );
setMoveKey( spep_2-3 + 354, 1, 73.2, 95.6 , 0 );
setMoveKey( spep_2-3 + 356, 1, 31.7, 161 , 0 );
setMoveKey( spep_2-3 + 358, 1, -9.9, 226.5 , 0 );
setMoveKey( spep_2-3 + 360, 1, -21.7, 244.6 , 0 );
setMoveKey( spep_2-3 + 363, 1, -33.6, 262.7 , 0 );
setMoveKey( spep_2-3 + 364, 1, 9.7, 147.6 , 0 );
setMoveKey( spep_2-3 + 366, 1, 27.1, -19.5 , 0 );
setMoveKey( spep_2-3 + 368, 1, 50.7, -124.3 , 0 );
setMoveKey( spep_2-3 + 370, 1, 60.8, -227.3 , 0 );
setMoveKey( spep_2-3 + 372, 1, 79.9, -319.2 , 0 );
setMoveKey( spep_2-3 + 374, 1, 90, -422.2 , 0 );
setMoveKey( spep_2-3 + 376, 1, 209.6, -652.5 , 0 );
setMoveKey( spep_2-3 + 378, 1, 316.2, -881.5 , 0 );
setMoveKey( spep_2-3 + 380, 1, 416.2, -1068.1 , 0 );
setMoveKey( spep_2-3 + 382, 1, 491.5, -1234.1 , 0 );
setMoveKey( spep_2-3 + 384, 1, 560.3, -1357.7 , 0 );
setMoveKey( spep_2-3 + 386, 1, 604.3, -1460.7 , 0 );
setMoveKey( spep_2-3 + 388, 1, 641.8, -1521.3 , 0 );
setMoveKey( spep_2-3 + 390, 1, 654.6, -1561.4 , 0 );

setScaleKey( spep_2 + 0, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 24, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 27, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 28, 1, 1, 1 );
setScaleKey( spep_2-3 + 36, 1, 1, 1 );
setScaleKey( spep_2-3 + 38, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 47, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 48, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 50, 1, 1, 1 );
setScaleKey( spep_2-3 + 99, 1, 1, 1 );
setScaleKey( spep_2-3 + 100, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 102, 1, 1, 1 );
setScaleKey( spep_2-3 + 124, 1, 1, 1 );
setScaleKey( spep_2-3 + 126, 1, 1.03, 1.03 );
setScaleKey( spep_2-3 + 128, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 130, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 132, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 134, 1, 1.14, 1.14 );
setScaleKey( spep_2-3 + 136, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 138, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 140, 1, 1.23, 1.23 );
setScaleKey( spep_2-3 + 142, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 144, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 146, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 148, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 150, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 153, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 154, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 156, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 158, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 160, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 162, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 164, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 166, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 168, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 170, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 172, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 174, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 176, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 178, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 180, 1, 1.22, 1.22 );
setScaleKey( spep_2-3 + 182, 1, 1.14, 1.14 );
setScaleKey( spep_2-3 + 184, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 186, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 188, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 190, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 192, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 194, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 197, 1, 0.75, 0.75 );

setScaleKey( spep_2-3 + 198, 1, 0.36, 0.36 );
setScaleKey( spep_2-3 + 200, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 202, 1, 0.52, 0.52 );
setScaleKey( spep_2-3 + 204, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 206, 1, 0.72, 0.72 );
setScaleKey( spep_2-3 + 208, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 210, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 212, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 214, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 216, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 218, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 220, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 222, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 224, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 226, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 228, 1, 1.78, 1.78 );
setScaleKey( spep_2-3 + 248, 1, 1.78, 1.78 );
setScaleKey( spep_2-3 + 250, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 252, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 254, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 256, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 258, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 260, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 262, 1, 0.87, 0.87 );
setScaleKey( spep_2-3 + 264, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 266, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 268, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 271, 1, 1.12, 1.12 );

setScaleKey( spep_2-3 + 272, 1, 3.35, 3.35 );
setScaleKey( spep_2-3 + 274, 1, 3.1, 3.1 );
setScaleKey( spep_2-3 + 280, 1, 3.1, 3.1 );
setScaleKey( spep_2-3 + 282, 1, 3.11, 3.11 );
setScaleKey( spep_2-3 + 294, 1, 3.11, 3.11 );
setScaleKey( spep_2-3 + 296, 1, 3.12, 3.12 );
setScaleKey( spep_2-3 + 298, 1, 3.12, 3.12 );
setScaleKey( spep_2-3 + 300, 1, 2.99, 2.99 );
setScaleKey( spep_2-3 + 302, 1, 2.79, 2.79 );
setScaleKey( spep_2-3 + 304, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 306, 1, 2.41, 2.41 );
setScaleKey( spep_2-3 + 308, 1, 2.21, 2.21 );
setScaleKey( spep_2-3 + 310, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 312, 1, 1.83, 1.83 );
setScaleKey( spep_2-3 + 314, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 316, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 318, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 320, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 328, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 330, 1, 4.11, 4.11 );
setScaleKey( spep_2-3 + 332, 1, 3.89, 3.89 );
setScaleKey( spep_2-3 + 334, 1, 3.67, 3.67 );
setScaleKey( spep_2-3 + 336, 1, 3.46, 3.46 );
setScaleKey( spep_2-3 + 338, 1, 3.24, 3.24 );
setScaleKey( spep_2-3 + 340, 1, 3.02, 3.02 );
setScaleKey( spep_2-3 + 342, 1, 2.8, 2.8 );
setScaleKey( spep_2-3 + 344, 1, 2.58, 2.58 );
setScaleKey( spep_2-3 + 346, 1, 2.36, 2.36 );
setScaleKey( spep_2-3 + 348, 1, 2.15, 2.15 );
setScaleKey( spep_2-3 + 350, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 352, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 354, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 356, 1, 1.27, 1.27 );
setScaleKey( spep_2-3 + 358, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 363, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 364, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 366, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 368, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 369, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 370, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 372, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 374, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 376, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 378, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 380, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 382, 1, 1.35, 1.35 );
setScaleKey( spep_2-3 + 384, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 386, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 388, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 390, 1, 1.56, 1.56 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 23, 1, 0 );
setRotateKey( spep_2-3 + 24, 1, -10.5 );
setRotateKey( spep_2-3 + 27, 1, -10.2 );
setRotateKey( spep_2-3 + 28, 1, -48.4 );
setRotateKey( spep_2-3 + 30, 1, -47.5 );
setRotateKey( spep_2-3 + 32, 1, -46.6 );
setRotateKey( spep_2-3 + 34, 1, -45.7 );
setRotateKey( spep_2-3 + 36, 1, -44.8 );
setRotateKey( spep_2-3 + 38, 1, -43.9 );
setRotateKey( spep_2-3 + 40, 1, -43 );
setRotateKey( spep_2-3 + 42, 1, -42.1 );
setRotateKey( spep_2-3 + 44, 1, -41.2 );
setRotateKey( spep_2-3 + 47, 1, -40.3 );
setRotateKey( spep_2-3 + 48, 1, -6.5 );
setRotateKey( spep_2-3 + 99, 1, -6.5 );
setRotateKey( spep_2-3 + 100, 1, -93 );
setRotateKey( spep_2-3 + 153, 1, -93 );
setRotateKey( spep_2-3 + 154, 1, -12.3 );
setRotateKey( spep_2-3 + 174, 1, -12.3 );
setRotateKey( spep_2-3 + 176, 1, -13.5 );
setRotateKey( spep_2-3 + 178, 1, -14.6 );
setRotateKey( spep_2-3 + 180, 1, -15.7 );
setRotateKey( spep_2-3 + 182, 1, -16.6 );
setRotateKey( spep_2-3 + 184, 1, -17.5 );
setRotateKey( spep_2-3 + 186, 1, -18.2 );
setRotateKey( spep_2-3 + 188, 1, -18.8 );
setRotateKey( spep_2-3 + 190, 1, -19.4 );
setRotateKey( spep_2-3 + 192, 1, -19.9 );
setRotateKey( spep_2-3 + 194, 1, -20.2 );
setRotateKey( spep_2-3 + 197, 1, -20.5 );
setRotateKey( spep_2-3 + 198, 1, 0.8 );
setRotateKey( spep_2-3 + 271, 1, 0.8 );
setRotateKey( spep_2-3 + 272, 1, -41.1 );
setRotateKey( spep_2-3 + 328, 1, -41.1 );
setRotateKey( spep_2-3 + 329, 1, -41.1 );
setRotateKey( spep_2-3 + 330, 1, -46.9 );
setRotateKey( spep_2-3 + 332, 1, -46.5 );
setRotateKey( spep_2-3 + 334, 1, -46.1 );
setRotateKey( spep_2-3 + 336, 1, -45.7 );
setRotateKey( spep_2-3 + 338, 1, -45.2 );
setRotateKey( spep_2-3 + 340, 1, -44.8 );
setRotateKey( spep_2-3 + 342, 1, -44.4 );
setRotateKey( spep_2-3 + 344, 1, -44 );
setRotateKey( spep_2-3 + 346, 1, -43.6 );
setRotateKey( spep_2-3 + 348, 1, -43.2 );
setRotateKey( spep_2-3 + 350, 1, -42.8 );
setRotateKey( spep_2-3 + 352, 1, -42.3 );
setRotateKey( spep_2-3 + 354, 1, -41.9 );
setRotateKey( spep_2-3 + 356, 1, -41.5 );
setRotateKey( spep_2-3 + 358, 1, -41.1 );
setRotateKey( spep_2-3 + 363, 1, -41.1 );
setRotateKey( spep_2-3 + 364, 1, -39.6 );
setRotateKey( spep_2-3 + 366, 1, -31.7 );
setRotateKey( spep_2-3 + 368, 1, -23.8 );
setRotateKey( spep_2-3 + 370, 1, -15.8 );
setRotateKey( spep_2-3 + 372, 1, -7.9 );
setRotateKey( spep_2-3 + 374, 1, 0 );
setRotateKey( spep_2-3 + 390, 1, 0 );


--SE
playSe( spep_2 + 5, 1003 );
playSe( spep_2 + 16, 1189 );
playSe( spep_2 + 22, 1000 );
playSe( spep_2 + 43, 1189 );
playSe( spep_2 + 47, 1006 );
playSe( spep_2 + 48, 1000 );
playSe( spep_2 + 84, 43 );
playSe( spep_2 + 94, 1009 );
playSe( spep_2 + 147, 1189 );
playSe( spep_2 + 152, 1010 );
playSe( spep_2 + 197, 1009 );
playSe( spep_2 + 197, 1045 );
playSe( spep_2 + 208, 1116 );
setSeVolume( spep_2 + 208, 1116, 50 );
se_1011 = playSe( spep_2 + 277, 1011 );
playSe( spep_2 + 277, 1110 );
se_1121 = playSe( spep_2 + 278, 1121 );
setSeVolume( spep_2 + 278, 1121, 0 );
setSeVolume( spep_2 + 361, 1121, 50 );
setSeVolume( spep_2 + 362, 1121, 100 );
se_1118 = playSe( spep_2 + 293, 1118 );
setSeVolume( spep_2 + 293, 1118, 40 );
playSe( spep_2 + 326, 43 );
setSeVolume( spep_2 + 326, 43, 63 );
playSe( spep_2 + 362, 1009 );
playSe( spep_2 + 362, 1169 );

stopSe( spep_2 + 298, se_1011, 47 );
stopSe( spep_2 + 339, se_1118, 19 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 388;

--------------------------------------
--落下
--------------------------------------
-- ** エフェクト等 ** --
rakka = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, rakka, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, rakka, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rakka, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, rakka, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rakka, 0 );
setEffRotateKey( spep_3 + 90, rakka, 0 );
setEffAlphaKey( spep_3 + 0, rakka, 255 );
setEffAlphaKey( spep_3 + 90, rakka, 255 );

--集中線
shuchusen7 = entryEffectLife( spep_3-3 + 28,  906, 10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 28, shuchusen7, 10, 20 );
setEffMoveKey( spep_3-3 + 28, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_3-3 + 38, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 28, shuchusen7, 1, 1 );
setEffScaleKey( spep_3-3 + 38, shuchusen7, 1, 1 );

setEffRotateKey( spep_3-3 + 28, shuchusen7, 0 );
setEffRotateKey( spep_3-3 + 38, shuchusen7, 0 );

setEffAlphaKey( spep_3-3 + 28, shuchusen7, 255 );
setEffAlphaKey( spep_3-3 + 38, shuchusen7, 255 );

--文字エントリー
ctdogon2 = entryEffectLife( spep_3-3 + 28,  10018, 48, 0x100, -1, 0, -87.8, 234.3 );
setEffShake( spep_3-3 + 28, ctdogon2, 48, 20 );
setEffMoveKey( spep_3-3 + 28, ctdogon2, -87.8, 234.3 , 0 );
setEffMoveKey( spep_3-3 + 30, ctdogon2, -87, 232.4 , 0 );
setEffMoveKey( spep_3-3 + 32, ctdogon2, -84.9, 231.1 , 0 );
setEffMoveKey( spep_3-3 + 34, ctdogon2, -88.8, 230.9 , 0 );
setEffMoveKey( spep_3-3 + 36, ctdogon2, -85.7, 231.2 , 0 );
setEffMoveKey( spep_3-3 + 38, ctdogon2, -87.2, 231.9 , 0 );
setEffMoveKey( spep_3-3 + 40, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 42, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 44, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 46, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 48, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 54, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 56, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 58, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 60, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 62, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 64, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 66, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 68, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 70, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 72, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 74, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 76, ctdogon2, -86, 231.7 , 0 );

setEffScaleKey( spep_3-3 + 28, ctdogon2, 0.96, 0.96 );
setEffScaleKey( spep_3-3 + 30, ctdogon2, 2.28, 2.28 );
setEffScaleKey( spep_3-3 + 32, ctdogon2, 2.89, 2.89 );
setEffScaleKey( spep_3-3 + 34, ctdogon2, 2.75, 2.75 );
setEffScaleKey( spep_3-3 + 36, ctdogon2, 2.61, 2.61 );
setEffScaleKey( spep_3-3 + 38, ctdogon2, 2.47, 2.47 );
setEffScaleKey( spep_3-3 + 40, ctdogon2, 2.34, 2.34 );
setEffScaleKey( spep_3-3 + 76, ctdogon2, 2.34, 2.34 );

setEffRotateKey( spep_3-3 + 28, ctdogon2, -32.7 );
setEffRotateKey( spep_3-3 + 30, ctdogon2, -46.1 );
setEffRotateKey( spep_3-3 + 32, ctdogon2, -38.7 );
setEffRotateKey( spep_3-3 + 34, ctdogon2, -24.2 );
setEffRotateKey( spep_3-3 + 36, ctdogon2, -32.9 );
setEffRotateKey( spep_3-3 + 38, ctdogon2, -43.6 );
setEffRotateKey( spep_3-3 + 40, ctdogon2, -32.7 );
setEffRotateKey( spep_3-3 + 76, ctdogon2, -32.7 );

setEffAlphaKey( spep_3-3 + 28, ctdogon2, 255 );
setEffAlphaKey( spep_3-3 + 62, ctdogon2, 255 );
setEffAlphaKey( spep_3-3 + 64, ctdogon2, 219 );
setEffAlphaKey( spep_3-3 + 66, ctdogon2, 182 );
setEffAlphaKey( spep_3-3 + 68, ctdogon2, 146 );
setEffAlphaKey( spep_3-3 + 70, ctdogon2, 109 );
setEffAlphaKey( spep_3-3 + 72, ctdogon2, 73 );
setEffAlphaKey( spep_3-3 + 74, ctdogon2, 36 );
setEffAlphaKey( spep_3-3 + 76, ctdogon2, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -1 + 26, 1, 0 );

changeAnime( spep_3  + 0, 1, 105 );

setMoveKey( spep_3  + 0, 1, 69.4, -57.9 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 58.6, -54.7 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 49.1, -52 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 40.8, -49.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 33.6, -47.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 27.5, -45.7 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 22.5, -44.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 18.6, -43.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 15.5, -42.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 13, -41.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 10.9, -40.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 9.4, -40.4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 8.4, -40.1 , 0 );
setMoveKey( spep_3 -1 + 26, 1, 8.1, -40 , 0 );

setScaleKey( spep_3  + 0, 1, 5.21, 5.21 );
--setScaleKey( spep_3 -3 + 2, 1, 4.37, 4.37 );
setScaleKey( spep_3 -3 + 4, 1, 3.63, 3.63 );
setScaleKey( spep_3 -3 + 6, 1, 2.99, 2.99 );
setScaleKey( spep_3 -3 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_3 -3 + 10, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 12, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 20, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 22, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 24, 1, 0.48, 0.48 );
setScaleKey( spep_3 -1 + 26, 1, 0.45, 0.45 );

setRotateKey( spep_3  + 0, 1, -7.5 );
setRotateKey( spep_3 -1 + 26, 1, -7.5 );

--SE
playSe( spep_3 + 29, 1011 );
se_1168 = playSe( spep_3 + 29, 1168 );
setSeVolume( spep_3 + 29, 1168, 50 );
playSe( spep_3 + 87, 1072 );

stopSe( spep_3 + 31, se_1121, 0 );

--白フェード
entryFade( spep_3 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

--------------------------------------
--気弾発射
--------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 110, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 110, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_f, 0 );
setEffRotateKey( spep_4 + 110, kidan_f, 0 );
setEffAlphaKey( spep_4 + 0, kidan_f, 255 );
setEffAlphaKey( spep_4 + 110, kidan_f, 255 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 110, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 110, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_b, 0 );
setEffRotateKey( spep_4 + 110, kidan_b, 0 );
setEffAlphaKey( spep_4 + 0, kidan_b, 255 );
setEffAlphaKey( spep_4 + 110, kidan_b, 255 );

--白フェード
entryFade( spep_4 + 40, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_4 + 102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--SE
playSe( spep_4 + 45, 1016 );
setSeVolume( spep_4 + 45, 1016, 158 );
playSe( spep_4 + 46, 1155 );
setSeVolume( spep_4 + 46, 1155, 79 );
playSe( spep_4 + 50, 4 );
setSeVolume( spep_4 + 50, 4, 63 );
playSe( spep_4 + 52, 1016 );
setSeVolume( spep_4 + 52, 1016, 79 );
playSe( spep_4 + 54, 1155 );
playSe( spep_4 + 59, 4 );
playSe( spep_4 + 59, 1016 );
setSeVolume( spep_4 + 59, 1016, 50 );
playSe( spep_4 + 61, 1155 );
setSeVolume( spep_4 + 61, 1155, 50 );
playSe( spep_4 + 67, 1155 );
playSe( spep_4 + 67, 1016 );
setSeVolume( spep_4 + 67, 1016, 63 );
playSe( spep_4 + 76, 4 );
playSe( spep_4 + 78, 1155 );
setSeVolume( spep_4 + 78, 1155, 79 );
playSe( spep_4 + 78, 1016 );
setSeVolume( spep_4 + 78, 1016, 71 );
playSe( spep_4 + 85, 1016 );
playSe( spep_4 + 92, 1155 );
setSeVolume( spep_4 + 92, 1155, 112 );
playSe( spep_4 + 92, 4 );
playSe( spep_4 + 92, 1016 );
setSeVolume( spep_4 + 92, 1016, 89 );
playSe( spep_4 + 100, 1016 );
setSeVolume( spep_4 + 100, 1016, 63 );
playSe( spep_4 + 102, 1155 );

stopSe( spep_4 + 1, se_1168, 36 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 110;

------------------------------------------------------
--気弾命中
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, hit, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 90, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 90, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 90, hit, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_5-3 + 20,  10014, 68, 0x100, -1, 0, -119.1, 297.5 );
setEffShake( spep_5-3 + 28, ctzudodo, 68, 20 );
setEffMoveKey( spep_5-3 + 20, ctzudodo, -119.1, 297.5 , 0 );
setEffMoveKey( spep_5-3 + 22, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 24, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 26, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 28, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 30, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 32, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 34, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 36, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 38, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 40, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 42, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 44, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 46, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 48, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 50, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 52, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 54, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 56, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 58, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 60, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 62, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 64, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 66, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 68, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 70, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 72, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 74, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 76, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 78, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 80, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 82, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 84, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 88, ctzudodo, -104.3, 348.7 , 0 );

setEffScaleKey( spep_5-3 + 20, ctzudodo, 1.19, 1.54 );
setEffScaleKey( spep_5-3 + 22, ctzudodo, 1.92, 2.49 );
setEffScaleKey( spep_5-3 + 88, ctzudodo, 1.92, 2.49 );

setEffRotateKey( spep_5-3 + 20, ctzudodo, 6.4 );
setEffRotateKey( spep_5-3 + 88, ctzudodo, 6.4 );

setEffAlphaKey( spep_5-3 + 20, ctzudodo, 128 );
setEffAlphaKey( spep_5-3 + 22, ctzudodo, 255 );
setEffAlphaKey( spep_5-3 + 88, ctzudodo, 255 );

--集中線
shuchusen8 = entryEffectLife( spep_5-3 + 38,  906, 50, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5-3 + 38, shuchusen8, 50, 20 );
setEffMoveKey( spep_5-3 + 38, shuchusen8, 0, 0 , 0 );
setEffMoveKey( spep_5-3 + 88, shuchusen8, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 38, shuchusen8, 1, 1 );
setEffScaleKey( spep_5-3 + 88, shuchusen8, 1, 1 );

setEffScaleKey( spep_5-3 + 38, shuchusen8, 1, 1 );
setEffScaleKey( spep_5-3 + 88, shuchusen8, 1, 1 );

setEffAlphaKey( spep_5-3 + 38, shuchusen8, 255 );
setEffAlphaKey( spep_5-3 + 88, shuchusen8, 255 );

--SE
playSe( spep_5 + 0, 4 );
playSe( spep_5 + 0, 1016 );
setSeVolume( spep_5 + 0, 1016, 56 );
playSe( spep_5 + 6, 1155 );
setSeVolume( spep_5 + 6, 1155, 79 );
playSe( spep_5 + 8, 1016 );
playSe( spep_5 + 14, 1155 );
setSeVolume( spep_5 + 14, 1155, 50 );
playSe( spep_5 + 14, 4 );
playSe( spep_5 + 16, 1016 );
setSeVolume( spep_5 + 16, 1016, 79 );
playSe( spep_5 + 23, 1016 );
setSeVolume( spep_5 + 23, 1016, 50 );
playSe( spep_5 + 25, 1155 );
playSe( spep_5 + 25, 4 );
playSe( spep_5 + 27, 1023 );
playSe( spep_5 + 34, 4 );
playSe( spep_5 + 34, 1016 );
setSeVolume( spep_5 + 34, 1016, 79 );
playSe( spep_5 + 39, 1155 );
setSeVolume( spep_5 + 39, 1155, 71 );
playSe( spep_5 + 40, 1002 );
setSeVolume( spep_5 + 40, 1002, 63 );
playSe( spep_5 + 45, 4 );
playSe( spep_5 + 45, 1016 );
setSeVolume( spep_5 + 45, 1016, 63 );
playSe( spep_5 + 51, 1155 );
playSe( spep_5 + 52, 1016 );
playSe( spep_5 + 60, 4 );
playSe( spep_5 + 62, 1002 );
setSeVolume( spep_5 + 62, 1002, 79 );
playSe( spep_5 + 63, 1016 );
setSeVolume( spep_5 + 63, 1016, 89 );
playSe( spep_5 + 67, 1155 );
setSeVolume( spep_5 + 67, 1155, 79 );
playSe( spep_5 + 70, 4 );
playSe( spep_5 + 70, 1016 );
setSeVolume( spep_5 + 70, 1016, 71 );
playSe( spep_5 + 80, 4 );
playSe( spep_5 + 80, 1016 );
playSe( spep_5 + 81, 1155 );
setSeVolume( spep_5 + 81, 1155, 50 );
playSe( spep_5 + 81, 1002 );
setSeVolume( spep_5 + 81, 1002, 141 );


se_1145 = playSe( spep_4 + 92, 1145 );
setSeVolume( spep_4 + 92, 1145, 0 );
setSeVolume( spep_5 + 26, 1145, 31 );
setSeVolume( spep_5 + 27, 1145, 63 );

--集中線
entryFade( spep_5 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 90;

------------------------------------------------------
--ラストシーン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 110, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 110, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 110, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 110, finish, 255 );

--集中線
shuchusen9 = entryEffectLife( spep_6 + 0,  906, 112, 0x100, -1, 0, 0, -0.1 );
setEffShake( spep_6, shuchusen9, 112, 20 );
setEffMoveKey( spep_6 + 0, shuchusen9, 0, -0.1 , 0 );
setEffMoveKey( spep_6 + 112, shuchusen9, 0, -0.1 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen9, 1.35, 1.32 );
setEffScaleKey( spep_6 + 112, shuchusen9, 1.35, 1.32 );

setEffRotateKey( spep_6 + 0, shuchusen9, 180 );
setEffRotateKey( spep_6 + 112, shuchusen9, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen9, 255 );
setEffAlphaKey( spep_6 + 112, shuchusen9, 255 );

--SE
playSe( spep_6 + 6, 1023 );
playSe( spep_6 + 6, 1002 );

playSe( spep_5 + 51, 1159 );
setSeVolume( spep_5 + 51, 1159, 0 );
setSeVolume( spep_6 + 15, 1159, 12 );
setSeVolume( spep_6 + 16, 1159, 24 );
setSeVolume( spep_6 + 17, 1159, 36 );
setSeVolume( spep_6 + 18, 1159, 48 );
setSeVolume( spep_6 + 19, 1159, 60 );
setSeVolume( spep_6 + 20, 1159, 72 );
setSeVolume( spep_6 + 21, 1159, 84 );
setSeVolume( spep_6 + 22, 1159, 96 );
setSeVolume( spep_6 + 23, 1159, 108 );
setSeVolume( spep_6 + 24, 1159, 126 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );

endPhase( spep_6 + 100 );

else

-----------------------------------------------------
-- てき側
------------------------------------------------------
------------------------------------------------------
--導入
------------------------------------------------------
--最初の準備
spep_0 = 0;


-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 112, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 112, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 112, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 112, tame, 255 );

--白フェード
entryFade( spep_0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x100, -1, 0, 120, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  120,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  120,  510);

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
setEffScaleKey(  spep_0 +72,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, -1.07, 1.07 );

--白フェード
entryFade( spep_0 + 104, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--SE
playSe( spep_0 + 12, 1018 );
playSe( spep_0 + 79, 43 );
setSeVolume( spep_0 + 79, 43, 56 );
se_0009 = playSe( spep_0 + 95, 9 );
setSeVolume( spep_0 + 95, 9, 79 );

stopSe( spep_0 + 112, se_0009, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 112;

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
stopSe( spep_1 + 2, se_0009, 0 );
playSe( spep_1 + 0, SE_05 );

--白フェード
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--ラッシュ
--------------------------------------
-- ** エフェクト等 ** --
lush_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, lush_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 392, lush_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, lush_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 392, lush_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, lush_f, 0 );
setEffRotateKey( spep_2 + 392, lush_f, 0 );
setEffAlphaKey( spep_2 + 0, lush_f, 255 );
setEffAlphaKey( spep_2 + 392, lush_f, 255 );
-- ** エフェクト等 ** --
lush_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, lush_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 392, lush_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, lush_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 392, lush_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, lush_b, 0 );
setEffRotateKey( spep_2 + 392, lush_b, 0 );
setEffAlphaKey( spep_2 + 0, lush_b, 255 );
setEffAlphaKey( spep_2 + 392, lush_b, 255 );

-- ** エフェクト等 ** --
lush_n = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_2 + 0, lush_n, 0, 0 , 0 );
setEffMoveKey( spep_2 + 392, lush_n, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, lush_n, 1.0, 1.0 );
setEffScaleKey( spep_2 + 392, lush_n, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, lush_n, 0 );
setEffRotateKey( spep_2 + 392, lush_n, 0 );
setEffAlphaKey( spep_2 + 0, lush_n, 255 );
setEffAlphaKey( spep_2 + 392, lush_n, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 24,  10020, 16, 0x100, -1, 0, 134.5, 274.3 );--バキッ
setEffShake( spep_2-3 + 24, ctbaki, 16, 20 );
setEffMoveKey( spep_2-3 + 24, ctbaki, 134.5, 274.3 , 0 );
setEffMoveKey( spep_2-3 + 26, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_2-3 + 28, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_2-3 + 30, ctbaki, 134.5, 274.3 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbaki, 165.6, 321.5 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbaki, 152.3, 317.6 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbaki, 152.3, 317.6 , 0 );

setEffScaleKey( spep_2-3 + 24, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 38, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 40, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_2-3 + 24, ctbaki, -40 );
setEffRotateKey( spep_2-3 + 38, ctbaki, -40 );
setEffRotateKey( spep_2-3 + 40, ctbaki, -40 );

setEffAlphaKey( spep_2-3 + 24, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 36, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 38, ctbaki, 128 );
setEffAlphaKey( spep_2-3 + 40, ctbaki, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_2-3 + 48,  10019, 10, 0x100, -1, 0, -71.1, 291.3 );--ドンッ
setEffShake( spep_2-3 + 48, ctdon, 10, 20 );
setEffMoveKey( spep_2-3 + 48, ctdon, -71.1, 291.3 , 0 );
setEffMoveKey( spep_2-3 + 50, ctdon, -32.2, 305.1 , 0 );
setEffMoveKey( spep_2-3 + 52, ctdon, 3.8, 295 , 0 );
setEffMoveKey( spep_2-3 + 54, ctdon, 29, 302.7 , 0 );
setEffMoveKey( spep_2-3 + 56, ctdon, 19.6, 347.1 , 0 );
setEffMoveKey( spep_2-3 + 58, ctdon, 4.7, 381.8 , 0 );

setEffScaleKey( spep_2-3 + 48, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_2-3 + 50, ctdon, 2.33, 2.33 );
setEffScaleKey( spep_2-3 + 52, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_2-3 + 54, ctdon, 2.28, 2.28 );
setEffScaleKey( spep_2-3 + 56, ctdon, 2.07, 2.07 );
setEffScaleKey( spep_2-3 + 58, ctdon, 1.85, 1.85 );

setEffRotateKey( spep_2-3 + 48, ctdon, -10 );
setEffRotateKey( spep_2-3 + 58, ctdon, -10 );

setEffAlphaKey( spep_2-3 + 48, ctdon, 255 );
setEffAlphaKey( spep_2-3 + 54, ctdon, 255 );
setEffAlphaKey( spep_2-3 + 56, ctdon, 128 );
setEffAlphaKey( spep_2-3 + 58, ctdon, 0 );

--文字エントリー
ctga = entryEffectLife( spep_2-3 + 100,  10005, 16, 0x100, -1, 0, -60, 332.9 );--ガッ
setEffShake( spep_2-3 + 100, ctga, 16, 20 );
setEffMoveKey( spep_2-3 + 100, ctga, -60, 332.9 , 0 );
setEffMoveKey( spep_2-3 + 102, ctga, -69, 326.2 , 0 );
setEffMoveKey( spep_2-3 + 104, ctga, -78, 319.6 , 0 );
setEffMoveKey( spep_2-3 + 106, ctga, -87, 312.9 , 0 );
setEffMoveKey( spep_2-3 + 108, ctga, -96, 306.3 , 0 );
setEffMoveKey( spep_2-3 + 110, ctga, -105, 299.6 , 0 );
setEffMoveKey( spep_2-3 + 112, ctga, -133.1, 318.1 , 0 );
setEffMoveKey( spep_2-3 + 114, ctga, -161.2, 336.5 , 0 );
setEffMoveKey( spep_2-3 + 116, ctga, -189.3, 355 , 0 );

setEffScaleKey( spep_2-3 + 100, ctga, 2.06, 2.06 );
setEffScaleKey( spep_2-3 + 110, ctga, 2.06, 2.06 );
--setEffScaleKey( spep_2-3 + 112, ctga, 1.98, 1.98 );
--setEffScaleKey( spep_2-3 + 114, ctga, 1.91, 1.91 );
setEffScaleKey( spep_2-3 + 116, ctga, 1.53, 1.53 );

setEffRotateKey( spep_2-3 + 100, ctga, -15 );
setEffRotateKey( spep_2-3 + 116, ctga, -15 );

setEffAlphaKey( spep_2-3 + 100, ctga, 255 );
setEffAlphaKey( spep_2-3 + 110, ctga, 255 );
setEffAlphaKey( spep_2-3 + 112, ctga, 170 );
setEffAlphaKey( spep_2-3 + 114, ctga, 85 );
setEffAlphaKey( spep_2-3 + 116, ctga, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_2-3 + 154,  10020, 10, 0x100, -1, 0, -123.2, 215.8 );--バキッ
setEffShake( spep_2-3 + 154, ctbaki2, 10, 20 );
setEffMoveKey( spep_2-3 + 154, ctbaki2, -123.2, 215.8 , 0 );
setEffMoveKey( spep_2-3 + 156, ctbaki2, -112.8, 261.2 , 0 );
setEffMoveKey( spep_2-3 + 158, ctbaki2, -132.8, 280.9 , 0 );
setEffMoveKey( spep_2-3 + 160, ctbaki2, -129.3, 307.5 , 0 );
setEffMoveKey( spep_2-3 + 162, ctbaki2, -147.9, 313.8 , 0 );
setEffMoveKey( spep_2-3 + 164, ctbaki2, -155.5, 323.2 , 0 );

setEffScaleKey( spep_2-3 + 154, ctbaki2, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 156, ctbaki2, 1.81, 1.81 );
setEffScaleKey( spep_2-3 + 158, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_2-3 + 160, ctbaki2, 1.58, 1.58 );
setEffScaleKey( spep_2-3 + 162, ctbaki2, 1.36, 1.36 );
setEffScaleKey( spep_2-3 + 164, ctbaki2, 1.14, 1.14 );

setEffRotateKey( spep_2-3 + 154, ctbaki2, -40 );
setEffRotateKey( spep_2-3 + 164, ctbaki2, -40 );

setEffAlphaKey( spep_2-3 + 154, ctbaki2, 255 );
setEffAlphaKey( spep_2-3 + 160, ctbaki2, 255 );
setEffAlphaKey( spep_2-3 + 162, ctbaki2, 128 );
setEffAlphaKey( spep_2-3 + 164, ctbaki2, 0 );

--文字エントリー
ctdon2 = entryEffectLife( spep_2-3 + 198,  10019, 10, 0x100, -1, 0, 132.3, 398.4 );--ドン
setEffShake( spep_2-3 + 198, ctdon2, 10, 20 );
setEffMoveKey( spep_2-3 + 198, ctdon2, 132.3, 398.4 , 0 );
setEffMoveKey( spep_2-3 + 200, ctdon2, 156.4, 385.4 , 0 );
setEffMoveKey( spep_2-3 + 202, ctdon2, 178.8, 357.3 , 0 );
setEffMoveKey( spep_2-3 + 204, ctdon2, 193.9, 340.7 , 0 );
setEffMoveKey( spep_2-3 + 206, ctdon2, 191.3, 339.7 , 0 );
setEffMoveKey( spep_2-3 + 208, ctdon2, 184.4, 333.2 , 0 );

setEffScaleKey( spep_2-3 + 198, ctdon2, 1.42, 1.42 );
setEffScaleKey( spep_2-3 + 200, ctdon2, 1.47, 1.47 );
setEffScaleKey( spep_2-3 + 202, ctdon2, 1.51, 1.51 );
setEffScaleKey( spep_2-3 + 204, ctdon2, 1.56, 1.56 );
setEffScaleKey( spep_2-3 + 206, ctdon2, 1.16, 1.16 );
setEffScaleKey( spep_2-3 + 208, ctdon2, 0.75, 0.75 );

setEffRotateKey( spep_2-3 + 198, ctdon2, -10 );
setEffRotateKey( spep_2-3 + 208, ctdon2, -10 );

setEffAlphaKey( spep_2-3 + 198, ctdon2, 255 );
setEffAlphaKey( spep_2-3 + 204, ctdon2, 255 );
setEffAlphaKey( spep_2-3 + 206, ctdon2, 128 );
setEffAlphaKey( spep_2-3 + 208, ctdon2, 0 );

--文字エントリー
ctbaki3 = entryEffectLife( spep_2-3 + 274,  10020, 28, 0x100, -1, 0, -114.8, 215.6 );
setEffShake( spep_2-3 + 274, ctbaki3, 28, 20 );
setEffMoveKey( spep_2-3 + 274, ctbaki3, -114.8, 215.6 , 0 );
setEffMoveKey( spep_2-3 + 276, ctbaki3, -120.6, 247.9 , 0 );
setEffMoveKey( spep_2-3 + 278, ctbaki3, -126.9, 239 , 0 );
setEffMoveKey( spep_2-3 + 280, ctbaki3, -117, 227 , 0 );
setEffMoveKey( spep_2-3 + 282, ctbaki3, -122.7, 259.3 , 0 );
setEffMoveKey( spep_2-3 + 284, ctbaki3, -129, 250.4 , 0 );
setEffMoveKey( spep_2-3 + 286, ctbaki3, -119.1, 238.4 , 0 );
setEffMoveKey( spep_2-3 + 288, ctbaki3, -124.8, 270.8 , 0 );
setEffMoveKey( spep_2-3 + 290, ctbaki3, -131.2, 261.8 , 0 );
setEffMoveKey( spep_2-3 + 292, ctbaki3, -121.2, 249.9 , 0 );
setEffMoveKey( spep_2-3 + 294, ctbaki3, -127, 282.2 , 0 );
setEffMoveKey( spep_2-3 + 296, ctbaki3, -133.3, 273.2 , 0 );
setEffMoveKey( spep_2-3 + 298, ctbaki3, -128.4, 289.8 , 0 );
setEffMoveKey( spep_2-3 + 300, ctbaki3, -140.2, 347.9 , 0 );
setEffMoveKey( spep_2-3 + 302, ctbaki3, -146.3, 418.7 , 0 );

setEffScaleKey( spep_2-3 + 274, ctbaki3, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 298, ctbaki3, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 300, ctbaki3, 1.7, 1.7 );
setEffScaleKey( spep_2-3 + 302, ctbaki3, 1.47, 1.47 );

setEffRotateKey( spep_2-3 + 274, ctbaki3, -10 );
setEffRotateKey( spep_2-3 + 302, ctbaki3, -10 );

setEffAlphaKey( spep_2-3 + 274, ctbaki3, 255 );
setEffAlphaKey( spep_2-3 + 298, ctbaki3, 255 );
setEffAlphaKey( spep_2-3 + 300, ctbaki3, 128 );
setEffAlphaKey( spep_2-3 + 302, ctbaki3, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_2-3 + 364,  10018, 12, 0x100, -1, 0, -8.1, -203.8 );--ドゴォンッ
setEffShake( spep_2-3 + 364, ctdogon, 12, 20 );
setEffMoveKey( spep_2-3 + 364, ctdogon, -8.1, -203.8 , 0 );
setEffMoveKey( spep_2-3 + 366, ctdogon, -6.4, -182.9 , 0 );
setEffMoveKey( spep_2-3 + 368, ctdogon, 3.7, -192.2 , 0 );
setEffMoveKey( spep_2-3 + 370, ctdogon, -2.2, -177.8 , 0 );
setEffMoveKey( spep_2-3 + 372, ctdogon, 11.9, -177.5 , 0 );
setEffMoveKey( spep_2-3 + 374, ctdogon, -37.7, -21.1 , 0 );
setEffMoveKey( spep_2-3 + 376, ctdogon, -84.8, 120.9 , 0 );

setEffScaleKey( spep_2-3 + 364, ctdogon, 3.73, 3.73 );
setEffScaleKey( spep_2-3 + 366, ctdogon, 2.8, 2.8 );
setEffScaleKey( spep_2-3 + 368, ctdogon, 2.91, 2.91 );
setEffScaleKey( spep_2-3 + 370, ctdogon, 3.03, 3.03 );
setEffScaleKey( spep_2-3 + 372, ctdogon, 3.15, 3.15 );
setEffScaleKey( spep_2-3 + 374, ctdogon, 4, 4 );
setEffScaleKey( spep_2-3 + 376, ctdogon, 4.86, 4.86 );

setEffRotateKey( spep_2-3 + 364, ctdogon, 13 );
setEffRotateKey( spep_2-3 + 366, ctdogon, 13.1 );
setEffRotateKey( spep_2-3 + 368, ctdogon, 13.1 );
setEffRotateKey( spep_2-3 + 370, ctdogon, 13 );
setEffRotateKey( spep_2-3 + 376, ctdogon, 13 );

setEffAlphaKey( spep_2-3 + 364, ctdogon, 255 );
setEffAlphaKey( spep_2-3 + 372, ctdogon, 255 );
setEffAlphaKey( spep_2-3 + 374, ctdogon, 128 );
setEffAlphaKey( spep_2-3 + 376, ctdogon, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 24,  906, 36, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 24, shuchusen1, 36, 20 );
setEffMoveKey( spep_2-3 + 24, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 60, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 24, shuchusen1, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 60, shuchusen1, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 24, shuchusen1, 180 );
setEffRotateKey( spep_2-3 + 60, shuchusen1, 180 );

setEffAlphaKey( spep_2-3 + 24, shuchusen1, 255 );
setEffAlphaKey( spep_2-3 + 60, shuchusen1, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 100,  906, 18, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 100, shuchusen2, 18, 20 );
setEffMoveKey( spep_2-3 + 100, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 118, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 100, shuchusen2, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 118, shuchusen2, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 100, shuchusen2, 180 );
setEffRotateKey( spep_2-3 + 118, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 100, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 118, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 154,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 154, shuchusen3, 8, 20 );
setEffMoveKey( spep_2-3 + 154, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 162, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 154, shuchusen3, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 162, shuchusen3, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 154, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 162, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 154, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 162, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_2-3 + 198,  906, 54, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 198, shuchusen4, 54, 20 );
setEffMoveKey( spep_2-3 + 198, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 252, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 198, shuchusen4, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 252, shuchusen4, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 198, shuchusen4, 180 );
setEffRotateKey( spep_2-3 + 252, shuchusen4, 180 );

setEffAlphaKey( spep_2-3 + 198, shuchusen4, 255 );
setEffAlphaKey( spep_2-3 + 252, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_2-3 + 274,  906, 30, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 274, shuchusen5, 30, 20 );
setEffMoveKey( spep_2-3 + 274, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 304, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 274, shuchusen5, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 304, shuchusen5, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 274, shuchusen5, 180 );
setEffRotateKey( spep_2-3 + 304, shuchusen5, 180 );

setEffAlphaKey( spep_2-3 + 274, shuchusen5, 255 );
setEffAlphaKey( spep_2-3 + 304, shuchusen5, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_2-3 + 364,  906, 26, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 364, shuchusen6, 26, 20 );
setEffMoveKey( spep_2-3 + 364, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 390, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 364, shuchusen6, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 390, shuchusen6, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 364, shuchusen6, 180 );
setEffRotateKey( spep_2-3 + 390, shuchusen6, 180 );

setEffAlphaKey( spep_2-3 + 364, shuchusen6, 255 );
setEffAlphaKey( spep_2-3 + 390, shuchusen6, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 73, 1, 0 );
setDisp( spep_2 + 75, 1, 1 );
setDisp( spep_2 + 116, 1, 0 );
setDisp( spep_2 + 137, 1, 1 );
setDisp( spep_2 + 226, 1, 0 );
setDisp( spep_2 + 247, 1, 1 );
setDisp( spep_2 + 316, 1, 0 );
setDisp( spep_2 + 329, 1, 1 );
setDisp( spep_2 + 390-3, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2-3 + 24, 1, 108 );
changeAnime( spep_2-3 + 28, 1, 106 );
changeAnime( spep_2-3 + 48, 1, 108 );
changeAnime( spep_2-3 + 100, 1, 106 );
changeAnime( spep_2-3 + 154, 1, 108 );
changeAnime( spep_2-3 + 198, 1, 107 );
changeAnime( spep_2-3 + 272, 1, 105 );
changeAnime( spep_2-3 + 364, 1, 107 );

setMoveKey( spep_2 + 0, 1, 225.7, 5.5 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 222.5, 5.5 , 0 );
setMoveKey( spep_2-3 + 4, 1, 215.7, 5.5 , 0 );
setMoveKey( spep_2-3 + 6, 1, 205.6, 5.5 , 0 );
setMoveKey( spep_2-3 + 8, 1, 192.9, 5.5 , 0 );
setMoveKey( spep_2-3 + 10, 1, 177.7, 5.5 , 0 );
setMoveKey( spep_2-3 + 12, 1, 160.1, 5.5 , 0 );
setMoveKey( spep_2-3 + 14, 1, 139.8, 5.5 , 0 );
setMoveKey( spep_2-3 + 16, 1, 116.6, 5.5 , 0 );
setMoveKey( spep_2-3 + 18, 1, 89.9, 5.5 , 0 );
setMoveKey( spep_2-3 + 20, 1, 58.8, 5.5 , 0 );
setMoveKey( spep_2-3 + 23, 1, 20.5, 5.5 , 0 );
setMoveKey( spep_2-3 + 24, 1, 38.7, 75.7 , 0 );
setMoveKey( spep_2-3 + 27, 1, 126.2, 41.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, 42.1, 34.3 , 0 );
setMoveKey( spep_2-3 + 30, 1, 41.5, 56.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, 3.4, 45.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, 51.1, 93 , 0 );
setMoveKey( spep_2-3 + 36, 1, 50.9, 78.9 , 0 );
setMoveKey( spep_2-3 + 38, 1, 56.8, 101.6 , 0 );
setMoveKey( spep_2-3 + 40, 1, 56.7, 87.5 , 0 );
setMoveKey( spep_2-3 + 42, 1, 59.5, 91.8 , 0 );
setMoveKey( spep_2-3 + 44, 1, 62.4, 96.1 , 0 );
setMoveKey( spep_2-3 + 47, 1, 65.3, 100.4 , 0 );
setMoveKey( spep_2-3 + 48, 1, 154, 136.5 , 0 );

setMoveKey( spep_2-3 + 50, 1, 154.4, 145.1 , 0 );
setMoveKey( spep_2-3 + 52, 1, 193, 167.3 , 0 );
setMoveKey( spep_2-3 + 54, 1, 184.8, 137.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 172.8, 131.1 , 0 );
setMoveKey( spep_2-3 + 58, 1, 174.4, 134.3 , 0 );
setMoveKey( spep_2-3 + 60, 1, 176.3, 137.8 , 0 );
setMoveKey( spep_2-3 + 62, 1, 178.4, 141.4 , 0 );
setMoveKey( spep_2-3 + 64, 1, 249.9, 180.6 , 0 );
setMoveKey( spep_2-3 + 66, 1, 317.6, 217.7 , 0 );
setMoveKey( spep_2-3 + 68, 1, 381.7, 252.5 , 0 );
setMoveKey( spep_2-3 + 70, 1, 442.1, 285.3 , 0 );
setMoveKey( spep_2-3 + 72, 1, 498.7, 316 , 0 );
setMoveKey( spep_2-3 + 74, 1, 551.7, 344.5 , 0 );
setMoveKey( spep_2-3 + 75, 1, 551.7, 344.5 , 0 );
setMoveKey( spep_2-3 + 76, 1, -534.7, -319 , 0 );
setMoveKey( spep_2-3 + 78, 1, -428.2, -250.9 , 0 );
setMoveKey( spep_2-3 + 80, 1, -330.8, -188.9 , 0 );
setMoveKey( spep_2-3 + 82, 1, -242.3, -132.5 , 0 );
setMoveKey( spep_2-3 + 84, 1, -162.9, -82.1 , 0 );
setMoveKey( spep_2-3 + 86, 1, -90.8, -35.7 , 0 );
setMoveKey( spep_2-3 + 88, 1, -27.8, 4.6 , 0 );
setMoveKey( spep_2-3 + 90, 1, 26.3, 39.2 , 0 );
setMoveKey( spep_2-3 + 92, 1, 67.2, 78.7 , 0 );
setMoveKey( spep_2-3 + 94, 1, 88.6, 94.8 , 0 );
setMoveKey( spep_2-3 + 96, 1, 109.9, 110.9 , 0 );
setMoveKey( spep_2-3 + 99, 1, 131.3, 127 , 0 );
setMoveKey( spep_2-3 + 100, 1, 45.2, 76.4 , 0 );
setMoveKey( spep_2-3 + 102, 1, -18.5, 39.3 , 0 );
setMoveKey( spep_2-3 + 104, 1, -53.6, -69.4 , 0 );
setMoveKey( spep_2-3 + 106, 1, -125.1, -128.6 , 0 );
setMoveKey( spep_2-3 + 108, 1, -185, -196.9 , 0 );
setMoveKey( spep_2-3 + 110, 1, -244.9, -265.2 , 0 );
setMoveKey( spep_2-3 + 112, 1, -304.8, -333.5 , 0 );
setMoveKey( spep_2-3 + 114, 1, -364.7, -401.7 , 0 );
setMoveKey( spep_2-3 + 116, 1, -424.6, -470 , 0 );
setMoveKey( spep_2-3 + 118, 1, -484.5, -538.3 , 0 );
setMoveKey( spep_2-3 + 120, 1, -544.3, -606.6 , 0 );
setMoveKey( spep_2-3 + 122, 1, -604.2, -674.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, -664.1, -743.1 , 0 );
setMoveKey( spep_2-3 + 126, 1, -742.6, -824.6 , 0 );
setMoveKey( spep_2-3 + 128, 1, -824.5, -910 , 0 );
setMoveKey( spep_2-3 + 130, 1, -909.7, -999.2 , 0 );
setMoveKey( spep_2-3 + 131, 1, -909.7, -999.2 , 0 );
setMoveKey( spep_2-3 + 132, 1, 697.1, 639.4 , 0 );
setMoveKey( spep_2-3 + 134, 1, 638, 573 , 0 );
setMoveKey( spep_2-3 + 136, 1, 577.6, 504.8 , 0 );
setMoveKey( spep_2-3 + 138, 1, 515.9, 435.4 , 0 );
setMoveKey( spep_2-3 + 140, 1, 452.9, 364.4 , 0 );
setMoveKey( spep_2-3 + 142, 1, 388.8, 292.3 , 0 );
setMoveKey( spep_2-3 + 144, 1, 324, 219.1 , 0 );
setMoveKey( spep_2-3 + 146, 1, 258.4, 145.3 , 0 );
setMoveKey( spep_2-3 + 148, 1, 192.4, 70.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, 126, -4.2 , 0 );
setMoveKey( spep_2-3 + 153, 1, 13, -104 , 0 );
setMoveKey( spep_2-3 + 154, 1, 140.5, -78.5 , 0 );
setMoveKey( spep_2-3 + 156, 1, 161.7, -43.2 , 0 );
setMoveKey( spep_2-3 + 158, 1, 138.1, -53.5 , 0 );
setMoveKey( spep_2-3 + 160, 1, 129.2, -31.9 , 0 );
setMoveKey( spep_2-3 + 162, 1, 120.3, -9.9 , 0 );
setMoveKey( spep_2-3 + 164, 1, 111.4, 12.5 , 0 );
setMoveKey( spep_2-3 + 166, 1, 102.4, 35.3 , 0 );
setMoveKey( spep_2-3 + 168, 1, 93.3, 58.5 , 0 );
setMoveKey( spep_2-3 + 170, 1, 84.2, 82.1 , 0 );
setMoveKey( spep_2-3 + 172, 1, 75.1, 106.2 , 0 );
setMoveKey( spep_2-3 + 174, 1, 66, 130.6 , 0 );
setMoveKey( spep_2-3 + 176, 1, 48.3, 187.3 , 0 );
setMoveKey( spep_2-3 + 178, 1, 32.8, 234.6 , 0 );
setMoveKey( spep_2-3 + 180, 1, 19.2, 273 , 0 );
setMoveKey( spep_2-3 + 182, 1, 7.6, 302.9 , 0 );
setMoveKey( spep_2-3 + 184, 1, -2.3, 324.8 , 0 );
setMoveKey( spep_2-3 + 186, 1, -10.5, 339.3 , 0 );
setMoveKey( spep_2-3 + 188, 1, -17.2, 346.8 , 0 );
setMoveKey( spep_2-3 + 190, 1, -22.4, 347.9 , 0 );
setMoveKey( spep_2-3 + 192, 1, -26.3, 343 , 0 );
setMoveKey( spep_2-3 + 194, 1, -29, 332.7 , 0 );
setMoveKey( spep_2-3 + 197, 1, -30.5, 317.4 , 0 );

setMoveKey( spep_2-3 + 198, 1, -37.3, 317.2, 0 );
setMoveKey( spep_2-3 + 200, 1, 30.6, 211.8 , 0 );
setMoveKey( spep_2-3 + 202, 1, 49.7, 114.8 , 0 );
setMoveKey( spep_2-3 + 204, 1, 78.3, 41.4 , 0 );
setMoveKey( spep_2-3 + 206, 1, 106.9, -32.1 , 0 );
setMoveKey( spep_2-3 + 208, 1, 135.6, -105.5 , 0 );
setMoveKey( spep_2-3 + 210, 1, 164.2, -179 , 0 );
setMoveKey( spep_2-3 + 212, 1, 192.8, -252.4 , 0 );
setMoveKey( spep_2-3 + 214, 1, 221.5, -325.9 , 0 );
setMoveKey( spep_2-3 + 216, 1, 250.1, -399.3 , 0 );
setMoveKey( spep_2-3 + 218, 1, 278.7, -472.8 , 0 );
setMoveKey( spep_2-3 + 220, 1, 307.3, -546.2 , 0 );
setMoveKey( spep_2-3 + 222, 1, 336, -619.7 , 0 );
setMoveKey( spep_2-3 + 224, 1, 364.6, -693.1 , 0 );
setMoveKey( spep_2-3 + 226, 1, 393.2, -766.6 , 0 );
setMoveKey( spep_2-3 + 228, 1, 421.8, -840 , 0 );
setMoveKey( spep_2-3 + 230, 1, 421.5, -839.7 , 0 );
setMoveKey( spep_2-3 + 232, 1, 421.2, -839.3 , 0 );
setMoveKey( spep_2-3 + 234, 1, 420.8, -839 , 0 );
setMoveKey( spep_2-3 + 236, 1, 420.5, -838.7 , 0 );
setMoveKey( spep_2-3 + 238, 1, 420.2, -838.4 , 0 );
setMoveKey( spep_2-3 + 240, 1, 419.9, -838 , 0 );
setMoveKey( spep_2-3 + 242, 1, 419.5, -837.7 , 0 );
setMoveKey( spep_2-3 + 244, 1, 419.2, -837.4 , 0 );
setMoveKey( spep_2-3 + 246, 1, 418.9, -837.1 , 0 );
setMoveKey( spep_2-3 + 248, 1, 418.6, -836.7 , 0 );
setMoveKey( spep_2-3 + 249, 1, 418.6+400, -836.7-1000 , 0 );

a=60;

setMoveKey( spep_2-3 + 250, 1, -203.8-a, 611.8 , 0 );
setMoveKey( spep_2-3 + 252, 1, -173.4-a, 541 , 0 );
setMoveKey( spep_2-3 + 254, 1, -143.1-a, 470.3 , 0 );
setMoveKey( spep_2-3 + 256, 1, -112.7-a, 399.6 , 0 );
setMoveKey( spep_2-3 + 258, 1, -82.3-a, 328.9 , 0 );
setMoveKey( spep_2-3 + 260, 1, -52-a, 258.2 , 0 );
setMoveKey( spep_2-3 + 262, 1, -21.5-a, 187.5 , 0 );
setMoveKey( spep_2-3 + 264, 1, 8.9-a, 116.8 , 0 );
setMoveKey( spep_2-3 + 266, 1, 39.3-a, 46.1 , 0 );
setMoveKey( spep_2-3 + 268, 1, 69.8-a, -24.5 , 0 );
setMoveKey( spep_2-3 + 271, 1, 100.2-a, -95.2 , 0 );

setMoveKey( spep_2-3 + 272, 1, 43.7, 247.4 , 0 );
setMoveKey( spep_2-3 + 274, 1, 40.9, 159.7 , 0 );
setMoveKey( spep_2-3 + 276, 1, 64, 123.3 , 0 );
setMoveKey( spep_2-3 + 278, 1, 50.6, 136.5 , 0 );
setMoveKey( spep_2-3 + 280, 1, 49, 140.7 , 0 );
setMoveKey( spep_2-3 + 282, 1, 47.3, 144.8 , 0 );
setMoveKey( spep_2-3 + 284, 1, 45.6, 149 , 0 );
setMoveKey( spep_2-3 + 286, 1, 43.9, 153.1 , 0 );
setMoveKey( spep_2-3 + 288, 1, 42.3, 157.3 , 0 );
setMoveKey( spep_2-3 + 290, 1, 40.6, 161.4 , 0 );
setMoveKey( spep_2-3 + 292, 1, 38.9, 165.6 , 0 );
setMoveKey( spep_2-3 + 294, 1, 37.2, 169.8 , 0 );
setMoveKey( spep_2-3 + 296, 1, 35.5, 173.9 , 0 );
setMoveKey( spep_2-3 + 298, 1, 33.9, 178.1 , 0 );
setMoveKey( spep_2-3 + 300, 1, 30.1, 183.2 , 0 );
setMoveKey( spep_2-3 + 302, 1, -1.8, 243.1 , 0 );
setMoveKey( spep_2-3 + 304, 1, -33.8, 303.1 , 0 );
setMoveKey( spep_2-3 + 306, 1, -65.7, 363.1 , 0 );
setMoveKey( spep_2-3 + 308, 1, -97.7, 423.3 , 0 );
setMoveKey( spep_2-3 + 310, 1, -129.7, 483.4 , 0 );
setMoveKey( spep_2-3 + 312, 1, -161.8, 543.7 , 0 );
setMoveKey( spep_2-3 + 314, 1, -193.8, 603.9 , 0 );
setMoveKey( spep_2-3 + 316, 1, -225.9, 664.3 , 0 );
setMoveKey( spep_2-3 + 318, 1, -258, 724.7 , 0 );
setMoveKey( spep_2-3 + 320, 1, -290.2, 785.2 , 0 );
setMoveKey( spep_2-3 + 322, 1, -290.8, 785.6 , 0 );
setMoveKey( spep_2-3 + 324, 1, -291.4, 786 , 0 );
setMoveKey( spep_2-3 + 326, 1, -291.9, 786.4 , 0 );
setMoveKey( spep_2-3 + 328, 1, -292.5, 796.8 , 0 );
setMoveKey( spep_2-3 + 330, 1, -292.5, 796.8 , 0 );
setMoveKey( spep_2-3 + 331, 1, 568.7, -684.8 , 0 );
setMoveKey( spep_2-3 + 332, 1, 527.6, -620.1 , 0 );
setMoveKey( spep_2-3 + 334, 1, 486.5, -555.3 , 0 );
setMoveKey( spep_2-3 + 336, 1, 445.3, -490.5 , 0 );
setMoveKey( spep_2-3 + 338, 1, 404.1, -425.6 , 0 );
setMoveKey( spep_2-3 + 340, 1, 362.9, -360.7 , 0 );
setMoveKey( spep_2-3 + 342, 1, 321.6, -295.7 , 0 );
setMoveKey( spep_2-3 + 344, 1, 280.3, -230.6 , 0 );
setMoveKey( spep_2-3 + 346, 1, 239, -165.5 , 0 );
setMoveKey( spep_2-3 + 348, 1, 197.6, -100.3 , 0 );
setMoveKey( spep_2-3 + 350, 1, 156.2, -35.1 , 0 );
setMoveKey( spep_2-3 + 352, 1, 114.7, 30.2 , 0 );
setMoveKey( spep_2-3 + 354, 1, 73.2, 95.6 , 0 );
setMoveKey( spep_2-3 + 356, 1, 31.7, 161 , 0 );
setMoveKey( spep_2-3 + 358, 1, -9.9, 226.5 , 0 );
setMoveKey( spep_2-3 + 360, 1, -21.7, 244.6 , 0 );
setMoveKey( spep_2-3 + 363, 1, -33.6, 262.7 , 0 );
setMoveKey( spep_2-3 + 364, 1, 9.7, 147.6 , 0 );
setMoveKey( spep_2-3 + 366, 1, 27.1, -19.5 , 0 );
setMoveKey( spep_2-3 + 368, 1, 50.7, -124.3 , 0 );
setMoveKey( spep_2-3 + 370, 1, 60.8, -227.3 , 0 );
setMoveKey( spep_2-3 + 372, 1, 79.9, -319.2 , 0 );
setMoveKey( spep_2-3 + 374, 1, 90, -422.2 , 0 );
setMoveKey( spep_2-3 + 376, 1, 209.6, -652.5 , 0 );
setMoveKey( spep_2-3 + 378, 1, 316.2, -881.5 , 0 );
setMoveKey( spep_2-3 + 380, 1, 416.2, -1068.1 , 0 );
setMoveKey( spep_2-3 + 382, 1, 491.5, -1234.1 , 0 );
setMoveKey( spep_2-3 + 384, 1, 560.3, -1357.7 , 0 );
setMoveKey( spep_2-3 + 386, 1, 604.3, -1460.7 , 0 );
setMoveKey( spep_2-3 + 388, 1, 641.8, -1521.3 , 0 );
setMoveKey( spep_2-3 + 390, 1, 654.6, -1561.4 , 0 );

setScaleKey( spep_2 + 0, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 24, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 27, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 28, 1, 1, 1 );
setScaleKey( spep_2-3 + 36, 1, 1, 1 );
setScaleKey( spep_2-3 + 38, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 47, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 48, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 50, 1, 1, 1 );
setScaleKey( spep_2-3 + 99, 1, 1, 1 );
setScaleKey( spep_2-3 + 100, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 102, 1, 1, 1 );
setScaleKey( spep_2-3 + 124, 1, 1, 1 );
setScaleKey( spep_2-3 + 126, 1, 1.03, 1.03 );
setScaleKey( spep_2-3 + 128, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 130, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 132, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 134, 1, 1.14, 1.14 );
setScaleKey( spep_2-3 + 136, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 138, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 140, 1, 1.23, 1.23 );
setScaleKey( spep_2-3 + 142, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 144, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 146, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 148, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 150, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 153, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 154, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 156, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 158, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 160, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 162, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 164, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 166, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 168, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 170, 1, 1.48, 1.48 );
setScaleKey( spep_2-3 + 172, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 174, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 176, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 178, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 180, 1, 1.22, 1.22 );
setScaleKey( spep_2-3 + 182, 1, 1.14, 1.14 );
setScaleKey( spep_2-3 + 184, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 186, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 188, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 190, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 192, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 194, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 197, 1, 0.75, 0.75 );

setScaleKey( spep_2-3 + 198, 1, 0.36, 0.36 );
setScaleKey( spep_2-3 + 200, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 202, 1, 0.52, 0.52 );
setScaleKey( spep_2-3 + 204, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 206, 1, 0.72, 0.72 );
setScaleKey( spep_2-3 + 208, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 210, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 212, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 214, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 216, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 218, 1, 1.3, 1.3 );
setScaleKey( spep_2-3 + 220, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 222, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 224, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 226, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 228, 1, 1.78, 1.78 );
setScaleKey( spep_2-3 + 248, 1, 1.78, 1.78 );
setScaleKey( spep_2-3 + 250, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 252, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 254, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 256, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 258, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 260, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 262, 1, 0.87, 0.87 );
setScaleKey( spep_2-3 + 264, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 266, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 268, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 271, 1, 1.12, 1.12 );

setScaleKey( spep_2-3 + 272, 1, 3.35, 3.35 );
setScaleKey( spep_2-3 + 274, 1, 3.1, 3.1 );
setScaleKey( spep_2-3 + 280, 1, 3.1, 3.1 );
setScaleKey( spep_2-3 + 282, 1, 3.11, 3.11 );
setScaleKey( spep_2-3 + 294, 1, 3.11, 3.11 );
setScaleKey( spep_2-3 + 296, 1, 3.12, 3.12 );
setScaleKey( spep_2-3 + 298, 1, 3.12, 3.12 );
setScaleKey( spep_2-3 + 300, 1, 2.99, 2.99 );
setScaleKey( spep_2-3 + 302, 1, 2.79, 2.79 );
setScaleKey( spep_2-3 + 304, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 306, 1, 2.41, 2.41 );
setScaleKey( spep_2-3 + 308, 1, 2.21, 2.21 );
setScaleKey( spep_2-3 + 310, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 312, 1, 1.83, 1.83 );
setScaleKey( spep_2-3 + 314, 1, 1.63, 1.63 );
setScaleKey( spep_2-3 + 316, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 318, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 320, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 328, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 330, 1, 4.11, 4.11 );
setScaleKey( spep_2-3 + 332, 1, 3.89, 3.89 );
setScaleKey( spep_2-3 + 334, 1, 3.67, 3.67 );
setScaleKey( spep_2-3 + 336, 1, 3.46, 3.46 );
setScaleKey( spep_2-3 + 338, 1, 3.24, 3.24 );
setScaleKey( spep_2-3 + 340, 1, 3.02, 3.02 );
setScaleKey( spep_2-3 + 342, 1, 2.8, 2.8 );
setScaleKey( spep_2-3 + 344, 1, 2.58, 2.58 );
setScaleKey( spep_2-3 + 346, 1, 2.36, 2.36 );
setScaleKey( spep_2-3 + 348, 1, 2.15, 2.15 );
setScaleKey( spep_2-3 + 350, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 352, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 354, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 356, 1, 1.27, 1.27 );
setScaleKey( spep_2-3 + 358, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 363, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 364, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 366, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 368, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 369, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 370, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 372, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 374, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 376, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 378, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 380, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 382, 1, 1.35, 1.35 );
setScaleKey( spep_2-3 + 384, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 386, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 388, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 390, 1, 1.56, 1.56 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 23, 1, 0 );
setRotateKey( spep_2-3 + 24, 1, -10.5 );
setRotateKey( spep_2-3 + 27, 1, -10.2 );
setRotateKey( spep_2-3 + 28, 1, -48.4 );
setRotateKey( spep_2-3 + 30, 1, -47.5 );
setRotateKey( spep_2-3 + 32, 1, -46.6 );
setRotateKey( spep_2-3 + 34, 1, -45.7 );
setRotateKey( spep_2-3 + 36, 1, -44.8 );
setRotateKey( spep_2-3 + 38, 1, -43.9 );
setRotateKey( spep_2-3 + 40, 1, -43 );
setRotateKey( spep_2-3 + 42, 1, -42.1 );
setRotateKey( spep_2-3 + 44, 1, -41.2 );
setRotateKey( spep_2-3 + 47, 1, -40.3 );
setRotateKey( spep_2-3 + 48, 1, -6.5 );
setRotateKey( spep_2-3 + 99, 1, -6.5 );
setRotateKey( spep_2-3 + 100, 1, -93 );
setRotateKey( spep_2-3 + 153, 1, -93 );
setRotateKey( spep_2-3 + 154, 1, -12.3 );
setRotateKey( spep_2-3 + 174, 1, -12.3 );
setRotateKey( spep_2-3 + 176, 1, -13.5 );
setRotateKey( spep_2-3 + 178, 1, -14.6 );
setRotateKey( spep_2-3 + 180, 1, -15.7 );
setRotateKey( spep_2-3 + 182, 1, -16.6 );
setRotateKey( spep_2-3 + 184, 1, -17.5 );
setRotateKey( spep_2-3 + 186, 1, -18.2 );
setRotateKey( spep_2-3 + 188, 1, -18.8 );
setRotateKey( spep_2-3 + 190, 1, -19.4 );
setRotateKey( spep_2-3 + 192, 1, -19.9 );
setRotateKey( spep_2-3 + 194, 1, -20.2 );
setRotateKey( spep_2-3 + 197, 1, -20.5 );
setRotateKey( spep_2-3 + 198, 1, 0.8 );
setRotateKey( spep_2-3 + 271, 1, 0.8 );
setRotateKey( spep_2-3 + 272, 1, -41.1 );
setRotateKey( spep_2-3 + 328, 1, -41.1 );
setRotateKey( spep_2-3 + 329, 1, -41.1 );
setRotateKey( spep_2-3 + 330, 1, -46.9 );
setRotateKey( spep_2-3 + 332, 1, -46.5 );
setRotateKey( spep_2-3 + 334, 1, -46.1 );
setRotateKey( spep_2-3 + 336, 1, -45.7 );
setRotateKey( spep_2-3 + 338, 1, -45.2 );
setRotateKey( spep_2-3 + 340, 1, -44.8 );
setRotateKey( spep_2-3 + 342, 1, -44.4 );
setRotateKey( spep_2-3 + 344, 1, -44 );
setRotateKey( spep_2-3 + 346, 1, -43.6 );
setRotateKey( spep_2-3 + 348, 1, -43.2 );
setRotateKey( spep_2-3 + 350, 1, -42.8 );
setRotateKey( spep_2-3 + 352, 1, -42.3 );
setRotateKey( spep_2-3 + 354, 1, -41.9 );
setRotateKey( spep_2-3 + 356, 1, -41.5 );
setRotateKey( spep_2-3 + 358, 1, -41.1 );
setRotateKey( spep_2-3 + 363, 1, -41.1 );
setRotateKey( spep_2-3 + 364, 1, -39.6 );
setRotateKey( spep_2-3 + 366, 1, -31.7 );
setRotateKey( spep_2-3 + 368, 1, -23.8 );
setRotateKey( spep_2-3 + 370, 1, -15.8 );
setRotateKey( spep_2-3 + 372, 1, -7.9 );
setRotateKey( spep_2-3 + 374, 1, 0 );
setRotateKey( spep_2-3 + 390, 1, 0 );


--SE
playSe( spep_2 + 5, 1003 );
playSe( spep_2 + 16, 1189 );
playSe( spep_2 + 22, 1000 );
playSe( spep_2 + 43, 1189 );
playSe( spep_2 + 47, 1006 );
playSe( spep_2 + 48, 1000 );
playSe( spep_2 + 84, 43 );
playSe( spep_2 + 94, 1009 );
playSe( spep_2 + 147, 1189 );
playSe( spep_2 + 152, 1010 );
playSe( spep_2 + 197, 1009 );
playSe( spep_2 + 197, 1045 );
playSe( spep_2 + 208, 1116 );
setSeVolume( spep_2 + 208, 1116, 50 );
se_1011 = playSe( spep_2 + 277, 1011 );
playSe( spep_2 + 277, 1110 );
se_1121 = playSe( spep_2 + 278, 1121 );
setSeVolume( spep_2 + 278, 1121, 0 );
setSeVolume( spep_2 + 361, 1121, 50 );
setSeVolume( spep_2 + 362, 1121, 100 );
se_1118 = playSe( spep_2 + 293, 1118 );
setSeVolume( spep_2 + 293, 1118, 40 );
playSe( spep_2 + 326, 43 );
setSeVolume( spep_2 + 326, 43, 63 );
playSe( spep_2 + 362, 1009 );
playSe( spep_2 + 362, 1169 );

stopSe( spep_2 + 298, se_1011, 47 );
stopSe( spep_2 + 339, se_1118, 19 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 388;

--------------------------------------
--落下
--------------------------------------
-- ** エフェクト等 ** --
rakka = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, rakka, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, rakka, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rakka, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, rakka, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rakka, 0 );
setEffRotateKey( spep_3 + 90, rakka, 0 );
setEffAlphaKey( spep_3 + 0, rakka, 255 );
setEffAlphaKey( spep_3 + 90, rakka, 255 );

--集中線
shuchusen7 = entryEffectLife( spep_3-3 + 28,  906, 10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 28, shuchusen7, 10, 20 );
setEffMoveKey( spep_3-3 + 28, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_3-3 + 38, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 28, shuchusen7, 1, 1 );
setEffScaleKey( spep_3-3 + 38, shuchusen7, 1, 1 );

setEffRotateKey( spep_3-3 + 28, shuchusen7, 0 );
setEffRotateKey( spep_3-3 + 38, shuchusen7, 0 );

setEffAlphaKey( spep_3-3 + 28, shuchusen7, 255 );
setEffAlphaKey( spep_3-3 + 38, shuchusen7, 255 );

--文字エントリー
ctdogon2 = entryEffectLife( spep_3-3 + 28,  10018, 48, 0x100, -1, 0, -87.8, 234.3 );
setEffShake( spep_3-3 + 28, ctdogon2, 48, 20 );
setEffMoveKey( spep_3-3 + 28, ctdogon2, -87.8, 234.3 , 0 );
setEffMoveKey( spep_3-3 + 30, ctdogon2, -87, 232.4 , 0 );
setEffMoveKey( spep_3-3 + 32, ctdogon2, -84.9, 231.1 , 0 );
setEffMoveKey( spep_3-3 + 34, ctdogon2, -88.8, 230.9 , 0 );
setEffMoveKey( spep_3-3 + 36, ctdogon2, -85.7, 231.2 , 0 );
setEffMoveKey( spep_3-3 + 38, ctdogon2, -87.2, 231.9 , 0 );
setEffMoveKey( spep_3-3 + 40, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 42, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 44, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 46, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 48, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 54, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 56, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 58, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 60, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 62, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 64, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 66, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 68, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 70, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 72, ctdogon2, -86, 231.7 , 0 );
setEffMoveKey( spep_3-3 + 74, ctdogon2, -88.1, 231.8 , 0 );
setEffMoveKey( spep_3-3 + 76, ctdogon2, -86, 231.7 , 0 );

setEffScaleKey( spep_3-3 + 28, ctdogon2, 0.96, 0.96 );
setEffScaleKey( spep_3-3 + 30, ctdogon2, 2.28, 2.28 );
setEffScaleKey( spep_3-3 + 32, ctdogon2, 2.89, 2.89 );
setEffScaleKey( spep_3-3 + 34, ctdogon2, 2.75, 2.75 );
setEffScaleKey( spep_3-3 + 36, ctdogon2, 2.61, 2.61 );
setEffScaleKey( spep_3-3 + 38, ctdogon2, 2.47, 2.47 );
setEffScaleKey( spep_3-3 + 40, ctdogon2, 2.34, 2.34 );
setEffScaleKey( spep_3-3 + 76, ctdogon2, 2.34, 2.34 );

setEffRotateKey( spep_3-3 + 28, ctdogon2, -32.7 );
setEffRotateKey( spep_3-3 + 30, ctdogon2, -46.1 );
setEffRotateKey( spep_3-3 + 32, ctdogon2, -38.7 );
setEffRotateKey( spep_3-3 + 34, ctdogon2, -24.2 );
setEffRotateKey( spep_3-3 + 36, ctdogon2, -32.9 );
setEffRotateKey( spep_3-3 + 38, ctdogon2, -43.6 );
setEffRotateKey( spep_3-3 + 40, ctdogon2, -32.7 );
setEffRotateKey( spep_3-3 + 76, ctdogon2, -32.7 );

setEffAlphaKey( spep_3-3 + 28, ctdogon2, 255 );
setEffAlphaKey( spep_3-3 + 62, ctdogon2, 255 );
setEffAlphaKey( spep_3-3 + 64, ctdogon2, 219 );
setEffAlphaKey( spep_3-3 + 66, ctdogon2, 182 );
setEffAlphaKey( spep_3-3 + 68, ctdogon2, 146 );
setEffAlphaKey( spep_3-3 + 70, ctdogon2, 109 );
setEffAlphaKey( spep_3-3 + 72, ctdogon2, 73 );
setEffAlphaKey( spep_3-3 + 74, ctdogon2, 36 );
setEffAlphaKey( spep_3-3 + 76, ctdogon2, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3 -1 + 26, 1, 0 );

changeAnime( spep_3  + 0, 1, 105 );

setMoveKey( spep_3  + 0, 1, 69.4, -57.9 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 58.6, -54.7 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 49.1, -52 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 40.8, -49.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 33.6, -47.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 27.5, -45.7 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 22.5, -44.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 18.6, -43.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 15.5, -42.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 13, -41.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 10.9, -40.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 9.4, -40.4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 8.4, -40.1 , 0 );
setMoveKey( spep_3 -1 + 26, 1, 8.1, -40 , 0 );

setScaleKey( spep_3  + 0, 1, 5.21, 5.21 );
--setScaleKey( spep_3 -3 + 2, 1, 4.37, 4.37 );
setScaleKey( spep_3 -3 + 4, 1, 3.63, 3.63 );
setScaleKey( spep_3 -3 + 6, 1, 2.99, 2.99 );
setScaleKey( spep_3 -3 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_3 -3 + 10, 1, 1.96, 1.96 );
setScaleKey( spep_3 -3 + 12, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 18, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 20, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 22, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 24, 1, 0.48, 0.48 );
setScaleKey( spep_3 -1 + 26, 1, 0.45, 0.45 );

setRotateKey( spep_3  + 0, 1, -7.5 );
setRotateKey( spep_3 -1 + 26, 1, -7.5 );

--SE
playSe( spep_3 + 29, 1011 );
se_1168 = playSe( spep_3 + 29, 1168 );
setSeVolume( spep_3 + 29, 1168, 50 );
playSe( spep_3 + 87, 1072 );

stopSe( spep_3 + 31, se_1121, 0 );

--白フェード
entryFade( spep_3 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

--------------------------------------
--気弾発射
--------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 110, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 110, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_f, 0 );
setEffRotateKey( spep_4 + 110, kidan_f, 0 );
setEffAlphaKey( spep_4 + 0, kidan_f, 255 );
setEffAlphaKey( spep_4 + 110, kidan_f, 255 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_4 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 110, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 110, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_b, 0 );
setEffRotateKey( spep_4 + 110, kidan_b, 0 );
setEffAlphaKey( spep_4 + 0, kidan_b, 255 );
setEffAlphaKey( spep_4 + 110, kidan_b, 255 );

--白フェード
entryFade( spep_4 + 40, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_4 + 102, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

--SE
playSe( spep_4 + 45, 1016 );
setSeVolume( spep_4 + 45, 1016, 158 );
playSe( spep_4 + 46, 1155 );
setSeVolume( spep_4 + 46, 1155, 79 );
playSe( spep_4 + 50, 4 );
setSeVolume( spep_4 + 50, 4, 63 );
playSe( spep_4 + 52, 1016 );
setSeVolume( spep_4 + 52, 1016, 79 );
playSe( spep_4 + 54, 1155 );
playSe( spep_4 + 59, 4 );
playSe( spep_4 + 59, 1016 );
setSeVolume( spep_4 + 59, 1016, 50 );
playSe( spep_4 + 61, 1155 );
setSeVolume( spep_4 + 61, 1155, 50 );
playSe( spep_4 + 67, 1155 );
playSe( spep_4 + 67, 1016 );
setSeVolume( spep_4 + 67, 1016, 63 );
playSe( spep_4 + 76, 4 );
playSe( spep_4 + 78, 1155 );
setSeVolume( spep_4 + 78, 1155, 79 );
playSe( spep_4 + 78, 1016 );
setSeVolume( spep_4 + 78, 1016, 71 );
playSe( spep_4 + 85, 1016 );
playSe( spep_4 + 92, 1155 );
setSeVolume( spep_4 + 92, 1155, 112 );
playSe( spep_4 + 92, 4 );
playSe( spep_4 + 92, 1016 );
setSeVolume( spep_4 + 92, 1016, 89 );
playSe( spep_4 + 100, 1016 );
setSeVolume( spep_4 + 100, 1016, 63 );
playSe( spep_4 + 102, 1155 );

stopSe( spep_4 + 1, se_1168, 36 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 110;

------------------------------------------------------
--気弾命中
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, hit, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_5 + 90, hit, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit, 0 );
setEffRotateKey( spep_5 + 90, hit, 0 );
setEffAlphaKey( spep_5 + 0, hit, 255 );
setEffAlphaKey( spep_5 + 90, hit, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_5-3 + 20,  10014, 68, 0x100, -1, 0, -119.1, 297.5 );
setEffShake( spep_5-3 + 28, ctzudodo, 68, 20 );
setEffMoveKey( spep_5-3 + 20, ctzudodo, -119.1, 297.5 , 0 );
setEffMoveKey( spep_5-3 + 22, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 24, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 26, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 28, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 30, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 32, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 34, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 36, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 38, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 40, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 42, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 44, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 46, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 48, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 50, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 52, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 54, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 56, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 58, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 60, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 62, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 64, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 66, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 68, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 70, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 72, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 74, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 76, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 78, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 80, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 82, ctzudodo, -104.3, 348.7 , 0 );
setEffMoveKey( spep_5-3 + 84, ctzudodo, -98.5, 330.3 , 0 );
setEffMoveKey( spep_5-3 + 88, ctzudodo, -104.3, 348.7 , 0 );

setEffScaleKey( spep_5-3 + 20, ctzudodo, 1.19, 1.54 );
setEffScaleKey( spep_5-3 + 22, ctzudodo, 1.92, 2.49 );
setEffScaleKey( spep_5-3 + 88, ctzudodo, 1.92, 2.49 );

setEffRotateKey( spep_5-3 + 20, ctzudodo, -76.4 );
setEffRotateKey( spep_5-3 + 88, ctzudodo, -76.4 );

setEffAlphaKey( spep_5-3 + 20, ctzudodo, 128 );
setEffAlphaKey( spep_5-3 + 22, ctzudodo, 255 );
setEffAlphaKey( spep_5-3 + 88, ctzudodo, 255 );

--集中線
shuchusen8 = entryEffectLife( spep_5-3 + 38,  906, 50, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5-3 + 38, shuchusen8, 50, 20 );
setEffMoveKey( spep_5-3 + 38, shuchusen8, 0, 0 , 0 );
setEffMoveKey( spep_5-3 + 88, shuchusen8, 0, 0 , 0 );

setEffScaleKey( spep_5-3 + 38, shuchusen8, 1, 1 );
setEffScaleKey( spep_5-3 + 88, shuchusen8, 1, 1 );

setEffScaleKey( spep_5-3 + 38, shuchusen8, 1, 1 );
setEffScaleKey( spep_5-3 + 88, shuchusen8, 1, 1 );

setEffAlphaKey( spep_5-3 + 38, shuchusen8, 255 );
setEffAlphaKey( spep_5-3 + 88, shuchusen8, 255 );

--SE
playSe( spep_5 + 0, 4 );
playSe( spep_5 + 0, 1016 );
setSeVolume( spep_5 + 0, 1016, 56 );
playSe( spep_5 + 6, 1155 );
setSeVolume( spep_5 + 6, 1155, 79 );
playSe( spep_5 + 8, 1016 );
playSe( spep_5 + 14, 1155 );
setSeVolume( spep_5 + 14, 1155, 50 );
playSe( spep_5 + 14, 4 );
playSe( spep_5 + 16, 1016 );
setSeVolume( spep_5 + 16, 1016, 79 );
playSe( spep_5 + 23, 1016 );
setSeVolume( spep_5 + 23, 1016, 50 );
playSe( spep_5 + 25, 1155 );
playSe( spep_5 + 25, 4 );
playSe( spep_5 + 27, 1023 );
playSe( spep_5 + 34, 4 );
playSe( spep_5 + 34, 1016 );
setSeVolume( spep_5 + 34, 1016, 79 );
playSe( spep_5 + 39, 1155 );
setSeVolume( spep_5 + 39, 1155, 71 );
playSe( spep_5 + 40, 1002 );
setSeVolume( spep_5 + 40, 1002, 63 );
playSe( spep_5 + 45, 4 );
playSe( spep_5 + 45, 1016 );
setSeVolume( spep_5 + 45, 1016, 63 );
playSe( spep_5 + 51, 1155 );
playSe( spep_5 + 52, 1016 );
playSe( spep_5 + 60, 4 );
playSe( spep_5 + 62, 1002 );
setSeVolume( spep_5 + 62, 1002, 79 );
playSe( spep_5 + 63, 1016 );
setSeVolume( spep_5 + 63, 1016, 89 );
playSe( spep_5 + 67, 1155 );
setSeVolume( spep_5 + 67, 1155, 79 );
playSe( spep_5 + 70, 4 );
playSe( spep_5 + 70, 1016 );
setSeVolume( spep_5 + 70, 1016, 71 );
playSe( spep_5 + 80, 4 );
playSe( spep_5 + 80, 1016 );
playSe( spep_5 + 81, 1155 );
setSeVolume( spep_5 + 81, 1155, 50 );
playSe( spep_5 + 81, 1002 );
setSeVolume( spep_5 + 81, 1002, 141 );


se_1145 = playSe( spep_4 + 92, 1145 );
setSeVolume( spep_4 + 92, 1145, 0 );
setSeVolume( spep_5 + 26, 1145, 31 );
setSeVolume( spep_5 + 27, 1145, 63 );

--集中線
entryFade( spep_5 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 90;

------------------------------------------------------
--ラストシーン
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 110, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 110, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 110, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 110, finish, 255 );

--集中線
shuchusen9 = entryEffectLife( spep_6 + 0,  906, 112, 0x100, -1, 0, 0, -0.1 );
setEffShake( spep_6, shuchusen9, 112, 20 );
setEffMoveKey( spep_6 + 0, shuchusen9, 0, -0.1 , 0 );
setEffMoveKey( spep_6 + 112, shuchusen9, 0, -0.1 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen9, 1.35, 1.32 );
setEffScaleKey( spep_6 + 112, shuchusen9, 1.35, 1.32 );

setEffRotateKey( spep_6 + 0, shuchusen9, 180 );
setEffRotateKey( spep_6 + 112, shuchusen9, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen9, 255 );
setEffAlphaKey( spep_6 + 112, shuchusen9, 255 );

--SE
playSe( spep_6 + 6, 1023 );
playSe( spep_6 + 6, 1002 );

playSe( spep_5 + 51, 1159 );
setSeVolume( spep_5 + 51, 1159, 0 );
setSeVolume( spep_6 + 15, 1159, 12 );
setSeVolume( spep_6 + 16, 1159, 24 );
setSeVolume( spep_6 + 17, 1159, 36 );
setSeVolume( spep_6 + 18, 1159, 48 );
setSeVolume( spep_6 + 19, 1159, 60 );
setSeVolume( spep_6 + 20, 1159, 72 );
setSeVolume( spep_6 + 21, 1159, 84 );
setSeVolume( spep_6 + 22, 1159, 96 );
setSeVolume( spep_6 + 23, 1159, 108 );
setSeVolume( spep_6 + 24, 1159, 126 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );

endPhase( spep_6 + 100 );

end
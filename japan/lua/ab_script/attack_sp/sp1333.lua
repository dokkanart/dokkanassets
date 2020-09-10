--1017840:人造人間18号_フライングクラッシュ
--sp_effect_a1_00184

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

--エフェクト
SP_01=	154068	;--	導入、前面突進
SP_02=	154069	;--	ラッシュ、ひざ蹴り、叩き落としパンチ
SP_03=	154070	;--	敵落下、18号空から降りてくる
SP_04=	154071	;--	気弾溜め
SP_05=	154072	;--	気弾発射
SP_06=	154073	;--	気弾着弾、敵爆発
SP_07=	154074	;--	ラッシュ背景

--エフェクト(敵)
SP_01x=	154068	;--	導入、前面突進	
SP_02x=	154075	;--	ラッシュ、ひざ蹴り、叩き落としパンチ	(敵)
SP_03x=	154076	;--	敵落下、18号空から降りてくる	(敵)
SP_04x=	154077	;--	気弾溜め	(敵)
SP_05x=	154078	;--	気弾発射	(敵)
SP_06x=	154079	;--	気弾着弾、敵爆発	(敵)
SP_07x=	154080	;--	ラッシュ背景	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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
-- 手前突進
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
lush = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, lush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, lush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, lush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, lush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, lush, 0 );
setEffRotateKey( spep_0 + 76, lush, 0 );
setEffAlphaKey( spep_0 + 0, lush, 255 );
setEffAlphaKey( spep_0 + 76, lush, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 76, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 76, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 75, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 0 );

-- ** 音 ** --
playSe( spep_0,  9);  --ダッシュ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
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
--次の準備
spep_1 = spep_0 + 76;

------------------------------------------------------
-- ラッシュ、ひざ蹴り、叩き落としパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
assault = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, assault, 0, 0 , 0 );
setEffMoveKey( spep_1 + 152, assault, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, assault, 1.0, 1.0 );
setEffScaleKey( spep_1 + 152, assault, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, assault, 0 );
setEffRotateKey( spep_1 + 152, assault, 0 );
setEffAlphaKey( spep_1 + 0, assault, 255 );
setEffAlphaKey( spep_1 + 152, assault, 255 );

-- ** エフェクト等 ** --
assault_bg = entryEffect( spep_1 + 0, SP_07,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, assault_bg, 0, 0 , 0 );
setEffMoveKey( spep_1 + 152, assault_bg, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, assault_bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 152, assault_bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, assault_bg, 0 );
setEffRotateKey( spep_1 + 152, assault_bg, 0 );
setEffAlphaKey( spep_1 + 0, assault_bg, 255 );
setEffAlphaKey( spep_1 + 152, assault_bg, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 -3 + 18,  10020, 11, 0x100, -1, 0, 30.6, -41.9 );--バキッ

setEffMoveKey( spep_1 -3 + 18, ctbaki, 30.6, -41.9 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctbaki, 124.4, -177.3 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctbaki, 146.8, -195.9 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctbaki, 145.9, -201.5 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctbaki, 153.2, -213.5 , 0 );
setEffMoveKey( spep_1 -2 + 28, ctbaki, 160.5, -217.4 , 0 );

setEffScaleKey( spep_1 -3 + 18, ctbaki, 0.73, 0.73 );
setEffScaleKey( spep_1 -3 + 20, ctbaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 22, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 24, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 26, ctbaki, 2.15, 2.15 );
setEffScaleKey( spep_1 -2 + 28, ctbaki, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 18, ctbaki, 0 );
setEffRotateKey( spep_1 -2 + 28, ctbaki, 0 );

setEffAlphaKey( spep_1 -3 + 18, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 24, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 26, ctbaki, 141 );
setEffAlphaKey( spep_1 -2 + 28, ctbaki, 26 );

--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 30,  10019, 8, 0x100, -1, 0, -112.5, 149.9 );--ドンッ

setEffMoveKey( spep_1 -3 + 30, ctdon, -112.5, 149.9 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctdon, -119.3, 179.6 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctdon, -133.8, 194.9 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctdon, -143.4, 200.8 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctdon, -183.8, 222.1 , 0 );

setEffScaleKey( spep_1 -3 + 30, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 32, ctdon, 1.05, 1.05 );
setEffScaleKey( spep_1 -3 + 34, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 36, ctdon, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 38, ctdon, 1.8, 1.8 );

setEffRotateKey( spep_1 -3 + 30, ctdon, 0 );
setEffRotateKey( spep_1 -3 + 38, ctdon, 0 );

setEffAlphaKey( spep_1 -3 + 30, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 38, ctdon, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_1 -3 + 42,  10020, 10, 0x100, -1, 0, -65.8, -154.7 );--バキッ

setEffMoveKey( spep_1 -3 + 42, ctbaki2, -65.8, -154.7 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctbaki2, -105.1, -221 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctbaki2, -116.3, -219.7 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctbaki2, -143.5, -215.8 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctbaki2, -157.9, -237.6 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctbaki2, -173.6, -254.1 , 0 );

setEffScaleKey( spep_1 -3 + 42, ctbaki2, 0.3, 0.3 );
setEffScaleKey( spep_1 -3 + 44, ctbaki2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 46, ctbaki2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 48, ctbaki2, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 50, ctbaki2, 1.6, 1.6 );
setEffScaleKey( spep_1 -3 + 52, ctbaki2, 1.9, 1.9 );

setEffRotateKey( spep_1 -3 + 42, ctbaki2, -20 );
setEffRotateKey( spep_1 -3 + 52, ctbaki2, -20 );

setEffAlphaKey( spep_1 -3 + 42, ctbaki2, 255 );
setEffAlphaKey( spep_1 -3 + 48, ctbaki2, 255 );
setEffAlphaKey( spep_1 -3 + 50, ctbaki2, 141 );
setEffAlphaKey( spep_1 -3 + 52, ctbaki2, 26 );

--文字エントリー
ctdon2 = entryEffectLife( spep_1 -3 + 50,  10019, 8, 0x100, -1, 0, 52.7, 149.7 );--ドンッ

setEffMoveKey( spep_1 -3 + 50, ctdon2, 52.7, 149.7 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctdon2, 130.8, 201.7 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctdon2, 145.4, 210.4 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctdon2, 162.1, 205.5 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctdon2, 156.7, 230.3 , 0 );

setEffScaleKey( spep_1 -3 + 50, ctdon2, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 52, ctdon2, 1.4, 1.4 );
setEffScaleKey( spep_1 -3 + 54, ctdon2, 1.45, 1.45 );
setEffScaleKey( spep_1 -3 + 56, ctdon2, 1.5, 1.5 );
setEffScaleKey( spep_1 -3 + 58, ctdon2, 1.9, 1.9 );

setEffRotateKey( spep_1 -3 + 50, ctdon2, 20 );
setEffRotateKey( spep_1 -3 + 58, ctdon2, 20 );

setEffAlphaKey( spep_1 -3 + 50, ctdon2, 255 );
setEffAlphaKey( spep_1 -3 + 56, ctdon2, 255 );
setEffAlphaKey( spep_1 -3 + 58, ctdon2, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1 -3 + 74,  10018, 18, 0x100, -1, 0, -10.5, 297.8 );--ドゴォンッ

setEffMoveKey( spep_1 -3 + 74, ctdogon, -10.5, 297.8 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctdogon, 13.3, 310.1 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctdogon, 44.4, 313.7 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctdogon, 51.3, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctdogon, 65.4, 357.9 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctdogon, 65.6, 386.5 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctdogon, 74.8, 409.6 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctdogon, 105.4, 449 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctdogon, 120.6, 476.4 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctdogon, 142.4, 513.3 , 0 );

setEffScaleKey( spep_1 -3 + 74, ctdogon, 0.07, 0.07 );
setEffScaleKey( spep_1 -3 + 76, ctdogon, 1.07, 1.07 );
setEffScaleKey( spep_1 -3 + 78, ctdogon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 80, ctdogon, 2.18, 2.18 );
setEffScaleKey( spep_1 -3 + 82, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_1 -3 + 84, ctdogon, 2.37, 2.37 );
setEffScaleKey( spep_1 -3 + 86, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_1 -3 + 92, ctdogon, 2.47, 2.47 );

setEffRotateKey( spep_1 -3 + 74, ctdogon, 33.7 );
setEffRotateKey( spep_1 -3 + 76, ctdogon, 20.9 );
setEffRotateKey( spep_1 -3 + 78, ctdogon, 8 );
setEffRotateKey( spep_1 -3 + 82, ctdogon, 8 );
setEffRotateKey( spep_1 -3 + 84, ctdogon, 8.1 );
setEffRotateKey( spep_1 -3 + 88, ctdogon, 8.1 );
setEffRotateKey( spep_1 -3 + 90, ctdogon, 8 );
setEffRotateKey( spep_1 -3 + 92, ctdogon, 8 );

setEffAlphaKey( spep_1 -3 + 74, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 86, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 88, ctdogon, 170 );
setEffAlphaKey( spep_1 -3 + 90, ctdogon, 85 );
setEffAlphaKey( spep_1 -3 + 92, ctdogon, 0 );

--文字エントリー
ctbaki3 = entryEffectLife( spep_1 -3 + 116,  10020, 12, 0x100, -1, 0, -39.3, 138.3 );--バキッ

setEffMoveKey( spep_1 -3 + 116, ctbaki3, -39.3, 138.3 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctbaki3, -40.1, 193.2 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctbaki3, -23.1, 197 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctbaki3, -31, 208 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctbaki3, -25, 226 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctbaki3, 34.7, 278.1 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctbaki3, 95.8, 339.7 , 0 );

setEffScaleKey( spep_1 -3 + 116, ctbaki3, 0.2, 0.2 );
setEffScaleKey( spep_1 -3 + 118, ctbaki3, 2, 2 );
setEffScaleKey( spep_1 -3 + 120, ctbaki3, 2.07, 2.07 );
setEffScaleKey( spep_1 -3 + 122, ctbaki3, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 124, ctbaki3, 2.2, 2.2 );
setEffScaleKey( spep_1 -3 + 126, ctbaki3, 2.95, 2.95 );
setEffScaleKey( spep_1 -3 + 128, ctbaki3, 3.7, 3.7 );

setEffRotateKey( spep_1 -3 + 116, ctbaki3, 0 );
setEffRotateKey( spep_1 -3 + 128, ctbaki3, 0 );

setEffAlphaKey( spep_1 -3 + 116, ctbaki3, 255 );
setEffAlphaKey( spep_1 -3 + 124, ctbaki3, 255 );
setEffAlphaKey( spep_1 -3 + 126, ctbaki3, 141 );
setEffAlphaKey( spep_1 -3 + 128, ctbaki3, 26 );

--流線
ryusen1 = entryEffectLife( spep_1  + 0,  914, 92 -3, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 92, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1  + 0, ryusen1, 4, 1 );
setEffScaleKey( spep_1 -3 + 72, ryusen1, 4, 1 );
setEffScaleKey( spep_1 -3 + 73, ryusen1, 4, 1 )
setEffScaleKey( spep_1 -3 + 74, ryusen1, 5.2, 1.3 );
setEffScaleKey( spep_1 -3 + 92, ryusen1, 5.2, 1.3 );

setEffRotateKey( spep_1  + 0, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 72, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 73, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 74, ryusen1, -45 );
setEffRotateKey( spep_1 -3 + 92, ryusen1, -45 );

setEffAlphaKey( spep_1  + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 -3 + 91, ryusen1, 255 );
setEffAlphaKey( spep_1 -3 + 92, ryusen1, 0 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 110,  914, 38, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 110, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 148, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 110, ryusen2, 5.2, 1.3 );
setEffScaleKey( spep_1 -3 + 148, ryusen2, 5.2, 1.3 );

setEffRotateKey( spep_1 -3 + 110, ryusen2, 75 );
setEffRotateKey( spep_1 -3 + 148, ryusen2, 75 );

setEffAlphaKey( spep_1 -3 + 110, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 148, ryusen2, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 18,  906, 11, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 18, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -2 + 28, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 18, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 -2 + 28, shuchusen2, 1, 1 );

setEffRotateKey( spep_1 -3 + 18, shuchusen2, 0 );
setEffRotateKey( spep_1 -2 + 28, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 18, shuchusen2, 255 );
setEffAlphaKey( spep_1 -2 + 28, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1 -3 + 74,  906, 14, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 74, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 88, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 74, shuchusen3, 1, 1 );
setEffScaleKey( spep_1 -3 + 88, shuchusen3, 1, 1 );

setEffRotateKey( spep_1 -3 + 74, shuchusen3, 0 );
setEffRotateKey( spep_1 -3 + 88, shuchusen3, 0 );

setEffAlphaKey( spep_1 -3 + 74, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 88, shuchusen3, 255 );


--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 134, 1, 0 );

changeAnime( spep_1  + 0, 1, 101 );
changeAnime( spep_1 -3 + 18, 1, 106 );
changeAnime( spep_1 -3 + 30, 1, 108 );
changeAnime( spep_1 -3 + 42, 1, 106 );
changeAnime( spep_1 -3 + 50, 1, 108 );
changeAnime( spep_1 -3 + 74, 1, 106 );
changeAnime( spep_1 -3 + 116, 1, 108 );

setMoveKey( spep_1  + 0, 1, 168.7, 0 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 165.6, 0 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 157.7, 0 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 146, 0 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 130.7, 0 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 111.5, 0 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 87.5, 0 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 55.4, 0 , 0 );
setMoveKey( spep_1 -3 + 17, 1, -11.3, 0 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -16.8, 23.8 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -78.6, 15.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -60.3, 19.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -52.4, 15.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -66.6, 19.9 , 0 );
setMoveKey( spep_1 -3 + 29, 1, -82.8, 11.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 97.4, -8 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 7.2, -15.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 23.4, -15.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 21.2, -22.1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 26.8, -20.9 , 0 );
setMoveKey( spep_1 -3 + 41, 1, 24.4, -27.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -19.4, 20.9 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 26.6, 17.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 32.4, 21.4 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 55.4, 13.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 53.4, -7.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 64.2, -21.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 83, -26.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 88.8, -32.3 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 102.6, -21.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 108.4, -23 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 97.4, -19.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 86.3, -15.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 71.1, -12.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 55.7, -9.2 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 40.3, -6.1 , 0 );
setMoveKey( spep_1 -3 + 73, 1, 24.7, -3.2 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 58.8, 107.6 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 23, 51.1 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -3.4, 27.6 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 5.5, 37.3 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 22.7, 55.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 23.8, 53.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 33.2, 59.4 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 38.7, 61.4 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 44.4, 63.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 50.3, 65.6 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 56.3, 67.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 62.5, 69.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 68.8, 71.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 75.4, 74 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 82.1, 76.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 88.9, 78.2 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 96, 80.3 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 103.3, 82.5 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 105.3, 87.2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 106.7, 91.9 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 107.6, 96.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 180.7, -41 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 179.1, -100.6 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 185, -140.2 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 196.8, -239.5 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 216.5, -330.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 228.3, -430.1 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 248, -521.5 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 263.8, -616.8 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 279.6, -712.1 , 0 );
setMoveKey( spep_1  + 134, 1, 295.3, -807.4 , 0 );

setScaleKey( spep_1  + 0, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 17, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 18, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 20, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 29, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 30, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 32, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 34, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 36, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 38, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 41, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 42, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 44, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 46, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 49, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 50, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 52, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 54, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 56, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 58, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 60, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 62, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 64, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 66, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 68, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 70, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 73, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 74, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 76, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 78, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 80, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 82, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 84, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 86, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 88, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 90, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 92, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 94, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 96, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 98, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 100, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 102, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 104, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 106, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 108, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 110, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 112, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 115, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 116, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 118, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 120, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 122, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 124, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 126, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 128, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 130, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 132, 1, 1.39, 1.39 );
setScaleKey( spep_1  + 134, 1, 1.4, 1.4 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 17, 1, 0 );
setRotateKey( spep_1 -3 + 18, 1, -50 );
setRotateKey( spep_1 -3 + 29, 1, -50 );
setRotateKey( spep_1 -3 + 30, 1, 13.6 );
setRotateKey( spep_1 -3 + 32, 1, 13.6 );
setRotateKey( spep_1 -3 + 34, 1, 13.5 );
setRotateKey( spep_1 -3 + 41, 1, 13.5 );
setRotateKey( spep_1 -3 + 42, 1, -50 );
setRotateKey( spep_1 -3 + 49, 1, -50 );
setRotateKey( spep_1 -3 + 50, 1, 13.6 );
setRotateKey( spep_1 -3 + 52, 1, 13.6 );
setRotateKey( spep_1 -3 + 54, 1, 13.5 );
setRotateKey( spep_1 -3 + 56, 1, 14.2 );
setRotateKey( spep_1 -3 + 58, 1, 14.9 );
setRotateKey( spep_1 -3 + 60, 1, 15.7 );
setRotateKey( spep_1 -3 + 62, 1, 16.4 );
setRotateKey( spep_1 -3 + 64, 1, 17.1 );
setRotateKey( spep_1 -3 + 66, 1, 17.8 );
setRotateKey( spep_1 -3 + 68, 1, 18.6 );
setRotateKey( spep_1 -3 + 70, 1, 19.3 );
setRotateKey( spep_1 -3 + 73, 1, 20 );
setRotateKey( spep_1 -3 + 74, 1, -52.7 );
setRotateKey( spep_1 -3 + 76, 1, -47.4 );
setRotateKey( spep_1 -3 + 78, 1, -42.3 );
setRotateKey( spep_1 -3 + 80, 1, -37.1 );
setRotateKey( spep_1 -3 + 82, 1, -32 );
setRotateKey( spep_1 -3 + 84, 1, -31.4 );
setRotateKey( spep_1 -3 + 86, 1, -30.7 );
setRotateKey( spep_1 -3 + 88, 1, -30.1 );
setRotateKey( spep_1 -3 + 90, 1, -29.4 );
setRotateKey( spep_1 -3 + 92, 1, -28.8 );
setRotateKey( spep_1 -3 + 94, 1, -28.1 );
setRotateKey( spep_1 -3 + 96, 1, -27.5 );
setRotateKey( spep_1 -3 + 98, 1, -26.8 );
setRotateKey( spep_1 -3 + 100, 1, -26.2 );
setRotateKey( spep_1 -3 + 102, 1, -25.6 );
setRotateKey( spep_1 -3 + 104, 1, -24.9 );
setRotateKey( spep_1 -3 + 106, 1, -24.3 );
setRotateKey( spep_1 -3 + 108, 1, -23.6 );
setRotateKey( spep_1 -3 + 110, 1, -23 );
setRotateKey( spep_1 -3 + 112, 1, -22.3 );
setRotateKey( spep_1 -3 + 115, 1, -21.7 );
setRotateKey( spep_1 -3 + 116, 1, 45.4 );
setRotateKey( spep_1 -3 + 126, 1, 45.4 );
setRotateKey( spep_1 -3 + 128, 1, 45.5 );
setRotateKey( spep_1  + 134, 1, 45.5 );

--白フェード
entryFade( spep_1 + 142, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 -3 + 18, 1000);  -- 殴る
playSe( spep_1 -3 + 30, 1001);  -- 殴る
playSe( spep_1 -3 + 42, 1009);  -- 殴る
playSe( spep_1 -3 + 50, 1000);  -- 殴る
playSe( spep_1 -3 + 74, 1010);  -- 膝蹴り
playSe( spep_1 -3 + 116,  1011);  --殴る

--次の準備
spep_2 = spep_1 + 152;

------------------------------------------------------
-- 敵落下、18号空から降りてくる
------------------------------------------------------
-- ** エフェクト等 ** --
fall = entryEffect( spep_2 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fall, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, fall, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fall, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, fall, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fall, 0 );
setEffRotateKey( spep_2 + 80, fall, 0 );
setEffAlphaKey( spep_2 + 0, fall, 255 );
setEffAlphaKey( spep_2 + 80, fall, 255 );

--文字エントリー
ctdogon2 = entryEffectLife( spep_2 -5 + 30,  10018, 32, 0x100, -1, 0, 82.3, 262.6 );--ドゴォンッ

setEffMoveKey( spep_2 -5 + 30, ctdogon2, 82.3, 262.6 , 0 );
setEffMoveKey( spep_2 -5 + 32, ctdogon2, 77.9, 261.6 , 0 );
setEffMoveKey( spep_2 -5 + 34, ctdogon2, 80.8, 256.8 , 0 );
setEffMoveKey( spep_2 -5 + 36, ctdogon2, 79.8, 259 , 0 );
setEffMoveKey( spep_2 -5 + 38, ctdogon2, 81.3, 257.8 , 0 );
setEffMoveKey( spep_2 -5 + 40, ctdogon2, 79.1, 260 , 0 );
setEffMoveKey( spep_2 -5 + 42, ctdogon2, 81.5, 258.1 , 0 );
setEffMoveKey( spep_2 -5 + 44, ctdogon2, 80, 259.9 , 0 );
setEffMoveKey( spep_2 -5 + 46, ctdogon2, 81.5, 258.3 , 0 );
setEffMoveKey( spep_2 -5 + 48, ctdogon2, 80.1, 260 , 0 );
setEffMoveKey( spep_2 -5 + 50, ctdogon2, 81.6, 258.5 , 0 );
setEffMoveKey( spep_2 -5 + 52, ctdogon2, 80.2, 260.1 , 0 );
setEffMoveKey( spep_2 -5 + 54, ctdogon2, 81.7, 258.7 , 0 );
setEffMoveKey( spep_2 -5 + 56, ctdogon2, 80.3, 260.3 , 0 );
setEffMoveKey( spep_2 -5 + 58, ctdogon2, 81.7, 258.8 , 0 );
setEffMoveKey( spep_2 -5 + 60, ctdogon2, 80.3, 260.3 , 0 );
setEffMoveKey( spep_2 -5 + 62, ctdogon2, 81.6, 258.9 , 0 );

setEffScaleKey( spep_2 -5 + 32, ctdogon2, 2.8, 2.8 );
setEffScaleKey( spep_2 -5 + 34, ctdogon2, 3.3, 3.3 );
setEffScaleKey( spep_2 -5 + 36, ctdogon2, 3.1, 3.1 );
setEffScaleKey( spep_2 -5 + 38, ctdogon2, 2.8, 2.8 );
setEffScaleKey( spep_2 -5 + 40, ctdogon2, 2.72, 2.7 );
setEffScaleKey( spep_2 -5 + 42, ctdogon2, 2.6, 2.6 );
setEffScaleKey( spep_2 -5 + 44, ctdogon2, 2.56, 2.56 );
setEffScaleKey( spep_2 -5 + 46, ctdogon2, 2.53, 2.53 );
setEffScaleKey( spep_2 -5 + 48, ctdogon2, 2.49, 2.49 );
setEffScaleKey( spep_2 -5 + 50, ctdogon2, 2.45, 2.45 );
setEffScaleKey( spep_2 -5 + 52, ctdogon2, 2.41, 2.41 );
setEffScaleKey( spep_2 -5 + 54, ctdogon2, 2.38, 2.38 );
setEffScaleKey( spep_2 -5 + 56, ctdogon2, 2.34, 2.34 );
setEffScaleKey( spep_2 -5 + 62, ctdogon2, 2.34, 2.34 );

setEffRotateKey( spep_2 -5 + 30, ctdogon2, 11.8 );
setEffRotateKey( spep_2 -5 + 32, ctdogon2, 40.4 );
setEffRotateKey( spep_2 -5 + 34, ctdogon2, 14.8 );
setEffRotateKey( spep_2 -5 + 36, ctdogon2, 9.8 );
setEffRotateKey( spep_2 -5 + 38, ctdogon2, 12.8 );
setEffRotateKey( spep_2 -5 + 40, ctdogon2, 21 );
setEffRotateKey( spep_2 -5 + 42, ctdogon2, 11.8 );
setEffRotateKey( spep_2 -5 + 44, ctdogon2, 11.8 );
setEffRotateKey( spep_2 -5 + 46, ctdogon2, 11.9 );
setEffRotateKey( spep_2 -5 + 52, ctdogon2, 11.9 );
setEffRotateKey( spep_2 -5 + 54, ctdogon2, 12 );
setEffRotateKey( spep_2 -5 + 62, ctdogon2, 12 );

setEffAlphaKey( spep_2 -5 + 30, ctdogon2, 255 );
setEffAlphaKey( spep_2 -5 + 56, ctdogon2, 255 );
setEffAlphaKey( spep_2 -5 + 58, ctdogon2, 170 );
setEffAlphaKey( spep_2 -5 + 60, ctdogon2, 85 );
setEffAlphaKey( spep_2 -5 + 62, ctdogon2, 0 );

--敵の動き
setDisp( spep_2 -1  + 6, 1, 1 );
setDisp( spep_2 -1  + 28, 1, 0 );

changeAnime( spep_2 -1  + 0, 1, 108 );

setMoveKey( spep_2 -1 + 6, 1, -163.4, 743.7 , 0 );
setMoveKey( spep_2 -1 + 8, 1, -126.7, 622.4 , 0 );
setMoveKey( spep_2 -1 + 10, 1, -91.2, 505.3 , 0 );
setMoveKey( spep_2 -1 + 12, 1, -57.1, 392.5 , 0 );
setMoveKey( spep_2 -1 + 14, 1, -24.2, 283.9 , 0 );
setMoveKey( spep_2 -1 + 16, 1, 7.4, 179.5 , 0 );
setMoveKey( spep_2 -1 + 18, 1, 37.8, 79.4 , 0 );
setMoveKey( spep_2 -1 + 20, 1, 66.8, -16.5 , 0 );
setMoveKey( spep_2 -1 + 22, 1, 94.6, -108.1 , 0 );
setMoveKey( spep_2 -1 + 24, 1, 121, -195.5 , 0 );
setMoveKey( spep_2 -1 + 26, 1, 146.2, -278.7 , 0 );
setMoveKey( spep_2 -1 + 28, 1, 169.4, -357 , 0 );

setScaleKey( spep_2 -1 + 6, 1, 1, 1 );
setScaleKey( spep_2 -1 + 8, 1, 1.12, 1.12 );
setScaleKey( spep_2 -1 + 10, 1, 1.24, 1.24 );
setScaleKey( spep_2 -1 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_2 -1 + 14, 1, 1.46, 1.46 );
setScaleKey( spep_2 -1 + 16, 1, 1.56, 1.56 );
setScaleKey( spep_2 -1 + 18, 1, 1.66, 1.66 );
setScaleKey( spep_2 -1 + 20, 1, 1.76, 1.76 );
setScaleKey( spep_2 -1 + 22, 1, 1.85, 1.85 );
setScaleKey( spep_2 -1 + 24, 1, 1.94, 1.94 );
setScaleKey( spep_2 -1 + 26, 1, 2.02, 2.02 );
setScaleKey( spep_2 -1 + 28, 1, 2.1, 2.1 );

setRotateKey( spep_2 -1 + 6, 1, 59.9 );
setRotateKey( spep_2 -1 + 8, 1, 61.1 );
setRotateKey( spep_2 -1 + 10, 1, 62.2 );
setRotateKey( spep_2 -1 + 12, 1, 63.2 );
setRotateKey( spep_2 -1 + 14, 1, 64.2 );
setRotateKey( spep_2 -1 + 16, 1, 65.2 );
setRotateKey( spep_2 -1 + 18, 1, 66.1 );
setRotateKey( spep_2 -1 + 20, 1, 67 );
setRotateKey( spep_2 -1 + 22, 1, 67.9 );
setRotateKey( spep_2 -1 + 24, 1, 68.7 );
setRotateKey( spep_2 -1 + 26, 1, 69.5 );
setRotateKey( spep_2 -1 + 28, 1, 70.2 );

-- ** 音 ** --
playSe( spep_2 -5 + 30,  1023);

--白フェード
entryFade( spep_2 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2 + 80;

------------------------------------------------------
-- 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 100, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 100, tame, 255 );

--***カットイン***
speff = entryEffect(  spep_3 - 4 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_3 - 4 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3 - 4 +26, 190006, 72, 0x100, -1, 0, 140, 550);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 - 4 +26,  ctgogo,  140,  550);
setEffMoveKey(  spep_3 - 4 +98,  ctgogo,  140,  550);

setEffAlphaKey( spep_3 - 4  + 26, ctgogo, 0 );
setEffAlphaKey( spep_3 - 4  + 27, ctgogo, 255 );
setEffAlphaKey( spep_3 - 4  + 28, ctgogo, 255 );
setEffAlphaKey( spep_3 - 4  + 88, ctgogo, 255 );
setEffAlphaKey( spep_3 - 4  + 90, ctgogo, 255 );
setEffAlphaKey( spep_3 - 4  + 92, ctgogo, 191 );
setEffAlphaKey( spep_3 - 4  + 94, ctgogo, 128 );
setEffAlphaKey( spep_3 - 4  + 96, ctgogo, 64 );
setEffAlphaKey( spep_3 - 4  + 98, ctgogo, 0 );

setEffRotateKey(  spep_3 - 4 +26,  ctgogo,  0);
setEffRotateKey(  spep_3 - 4 +98,  ctgogo,  0);

setEffScaleKey(  spep_3 - 4 +26,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 - 4 +90,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 - 4 +98,  ctgogo, 1.07, 1.07 );

--集中線
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 98, shuchusen4, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 98, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 98, shuchusen4, 255 );

--SE
playSe( spep_3+22, 1018);--ごごご

--白フェード
entryFade( spep_3+ 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_4 = spep_3+100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--白フェード
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 気弾発射
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_5 + 72, beam, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 72, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 72, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 72, beam, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_5 -3 + 18,  10012, 22, 0x100, -1, 0, -72.8, 277.7 );--ズオッ

setEffMoveKey( spep_5 -3 + 18, ctzuo, -72.8, 277.7 , 0 );
setEffMoveKey( spep_5 -3 + 20, ctzuo, -28.5, 349.5 , 0 );
setEffMoveKey( spep_5 -3 + 22, ctzuo, -25.4, 349.4 , 0 );
setEffMoveKey( spep_5 -3 + 24, ctzuo, -11.6, 358.4 , 0 );
setEffMoveKey( spep_5 -3 + 26, ctzuo, -8.6, 358.2 , 0 );
setEffMoveKey( spep_5 -3 + 28, ctzuo, 5.2, 367.2 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctzuo, 8.3, 367.1 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctzuo, 22.1, 376.1 , 0 );
--setEffMoveKey( spep_5 -3 + 34, ctzuo, 34.3, 476.1 , 0 );
--setEffMoveKey( spep_5 -3 + 36, ctzuo, 63.1, 590.2 , 0 );
--setEffMoveKey( spep_5 -3 + 38, ctzuo, 109.7, 605.4 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctzuo, 107.4, 610.1 , 0 );

a=1;
b=0.6;
c=2;

setEffScaleKey( spep_5 -3 + 18, ctzuo, 0.43 +a, 0.43 +a );
setEffScaleKey( spep_5 -3 + 20, ctzuo, 0.8+a+b, 0.8+a+b );
setEffScaleKey( spep_5 -3 + 32, ctzuo, 0.8+a+b, 0.8+a+b );
--setEffScaleKey( spep_5 -3 + 34, ctzuo, 1.23+a+b, 1.23+a+b );
--setEffScaleKey( spep_5 -3 + 36, ctzuo, 1.65+a+b, 1.65+a+b );
--etEffScaleKey( spep_5 -3 + 38, ctzuo, 2.08+a+c, 2.08+a+c );
setEffScaleKey( spep_5 -3 + 40, ctzuo, 2.5+a+c, 2.5+a+c );

setEffRotateKey( spep_5 -3 + 18, ctzuo, 35 );
setEffRotateKey( spep_5 -3 + 40, ctzuo, 35 );

setEffAlphaKey( spep_5 -3 + 18, ctzuo, 128 );
setEffAlphaKey( spep_5 -3 + 20, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 32, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 34, ctzuo, 191 );
setEffAlphaKey( spep_5 -3 + 36, ctzuo, 128 );
setEffAlphaKey( spep_5 -3 + 38, ctzuo, 64 );
setEffAlphaKey( spep_5 -3 + 40, ctzuo, 0 );

-- ** 音 ** --
playSe( spep_5 -3 + 18,  1021);  --発射

--白フェード
entryFade( spep_5+ 64, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 72;


------------------------------------------------------
-- 気弾着弾、敵爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 140, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 140, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 140, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 140, finish, 255 );

--集中線

shuchusen5 = entryEffectLife( spep_6 -3 + 32,  906, 106, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 -3 + 32, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 -3 + 138, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 -3 + 32, shuchusen5, 1, 1 );
setEffScaleKey( spep_6 -3 + 138, shuchusen5, 1, 1 );

setEffRotateKey( spep_6 -3 + 32, shuchusen5, 180 );
setEffRotateKey( spep_6 -3 + 138, shuchusen5, 180 );

setEffAlphaKey( spep_6 -3 + 32, shuchusen5, 255 );
setEffAlphaKey( spep_6 -3 + 138, shuchusen5, 255 );

-- ** 音 ** --
playSe( spep_6 + 0,  1022);
playSe( spep_6 + 26,  1024);

--白フェード
entryFade( spep_6+ 26, 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_6 + 30 );
endPhase( spep_6 + 130 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 手前突進
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
lush = entryEffect( spep_0 + 0, SP_01x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, lush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, lush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, lush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76, lush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, lush, 0 );
setEffRotateKey( spep_0 + 76, lush, 0 );
setEffAlphaKey( spep_0 + 0, lush, 255 );
setEffAlphaKey( spep_0 + 76, lush, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 76, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 76, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 75, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 0 );

-- ** 音 ** --  
playSe( spep_0, 9); --ダッシュ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
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

--次の準備
spep_1 = spep_0 + 76;

------------------------------------------------------
-- ラッシュ、ひざ蹴り、叩き落としパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
assault = entryEffect( spep_1 + 0, SP_02x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, assault, 0, 0 , 0 );
setEffMoveKey( spep_1 + 152, assault, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, assault, 1.0, 1.0 );
setEffScaleKey( spep_1 + 152, assault, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, assault, 0 );
setEffRotateKey( spep_1 + 152, assault, 0 );
setEffAlphaKey( spep_1 + 0, assault, 255 );
setEffAlphaKey( spep_1 + 152, assault, 255 );

-- ** エフェクト等 ** --
assault_bg = entryEffect( spep_1 + 0, SP_07x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, assault_bg, 0, 0 , 0 );
setEffMoveKey( spep_1 + 152, assault_bg, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, assault_bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 152, assault_bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, assault_bg, 0 );
setEffRotateKey( spep_1 + 152, assault_bg, 0 );
setEffAlphaKey( spep_1 + 0, assault_bg, 255 );
setEffAlphaKey( spep_1 + 152, assault_bg, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 -3 + 18,  10020, 11, 0x100, -1, 0, 30.6, -41.9 );--バキッ

setEffMoveKey( spep_1 -3 + 18, ctbaki, 30.6, -41.9 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctbaki, 124.4, -177.3 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctbaki, 146.8, -195.9 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctbaki, 145.9, -201.5 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctbaki, 153.2, -213.5 , 0 );
setEffMoveKey( spep_1 -2 + 28, ctbaki, 160.5, -217.4 , 0 );

setEffScaleKey( spep_1 -3 + 18, ctbaki, 0.73, 0.73 );
setEffScaleKey( spep_1 -3 + 20, ctbaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 22, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 24, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 26, ctbaki, 2.15, 2.15 );
setEffScaleKey( spep_1 -2 + 28, ctbaki, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 18, ctbaki, 0 );
setEffRotateKey( spep_1 -2 + 28, ctbaki, 0 );

setEffAlphaKey( spep_1 -3 + 18, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 24, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 26, ctbaki, 141 );
setEffAlphaKey( spep_1 -2 + 28, ctbaki, 26 );

--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 30,  10019, 8, 0x100, -1, 0, -112.5, 149.9 );--ドンッ

setEffMoveKey( spep_1 -3 + 30, ctdon, -112.5, 149.9 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctdon, -119.3, 179.6 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctdon, -133.8, 194.9 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctdon, -143.4, 200.8 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctdon, -183.8, 222.1 , 0 );

setEffScaleKey( spep_1 -3 + 30, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 32, ctdon, 1.05, 1.05 );
setEffScaleKey( spep_1 -3 + 34, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 36, ctdon, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 38, ctdon, 1.8, 1.8 );

setEffRotateKey( spep_1 -3 + 30, ctdon, 0 );
setEffRotateKey( spep_1 -3 + 38, ctdon, 0 );

setEffAlphaKey( spep_1 -3 + 30, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 38, ctdon, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_1 -3 + 42,  10020, 10, 0x100, -1, 0, -65.8, -154.7 );--バキッ

setEffMoveKey( spep_1 -3 + 42, ctbaki2, -65.8, -154.7 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctbaki2, -105.1, -221 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctbaki2, -116.3, -219.7 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctbaki2, -143.5, -215.8 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctbaki2, -157.9, -237.6 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctbaki2, -173.6, -254.1 , 0 );

setEffScaleKey( spep_1 -3 + 42, ctbaki2, 0.3, 0.3 );
setEffScaleKey( spep_1 -3 + 44, ctbaki2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 46, ctbaki2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 48, ctbaki2, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 50, ctbaki2, 1.6, 1.6 );
setEffScaleKey( spep_1 -3 + 52, ctbaki2, 1.9, 1.9 );

setEffRotateKey( spep_1 -3 + 42, ctbaki2, -20 );
setEffRotateKey( spep_1 -3 + 52, ctbaki2, -20 );

setEffAlphaKey( spep_1 -3 + 42, ctbaki2, 255 );
setEffAlphaKey( spep_1 -3 + 48, ctbaki2, 255 );
setEffAlphaKey( spep_1 -3 + 50, ctbaki2, 141 );
setEffAlphaKey( spep_1 -3 + 52, ctbaki2, 26 );

--文字エントリー
ctdon2 = entryEffectLife( spep_1 -3 + 50,  10019, 8, 0x100, -1, 0, 52.7, 149.7 );--ドンッ

setEffMoveKey( spep_1 -3 + 50, ctdon2, 52.7, 149.7 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctdon2, 130.8, 201.7 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctdon2, 145.4, 210.4 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctdon2, 162.1, 205.5 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctdon2, 156.7, 230.3 , 0 );

setEffScaleKey( spep_1 -3 + 50, ctdon2, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 52, ctdon2, 1.4, 1.4 );
setEffScaleKey( spep_1 -3 + 54, ctdon2, 1.45, 1.45 );
setEffScaleKey( spep_1 -3 + 56, ctdon2, 1.5, 1.5 );
setEffScaleKey( spep_1 -3 + 58, ctdon2, 1.9, 1.9 );

setEffRotateKey( spep_1 -3 + 50, ctdon2, 20 );
setEffRotateKey( spep_1 -3 + 58, ctdon2, 20 );

setEffAlphaKey( spep_1 -3 + 50, ctdon2, 255 );
setEffAlphaKey( spep_1 -3 + 56, ctdon2, 255 );
setEffAlphaKey( spep_1 -3 + 58, ctdon2, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1 -3 + 74,  10018, 18, 0x100, -1, 0, -10.5, 297.8 );--ドゴォンッ

setEffMoveKey( spep_1 -3 + 74, ctdogon, -10.5, 297.8 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctdogon, 13.3, 310.1 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctdogon, 44.4, 313.7 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctdogon, 51.3, 346.4 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctdogon, 65.4, 357.9 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctdogon, 65.6, 386.5 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctdogon, 74.8, 409.6 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctdogon, 105.4, 449 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctdogon, 120.6, 476.4 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctdogon, 142.4, 513.3 , 0 );

setEffScaleKey( spep_1 -3 + 74, ctdogon, 0.07, 0.07 );
setEffScaleKey( spep_1 -3 + 76, ctdogon, 1.07, 1.07 );
setEffScaleKey( spep_1 -3 + 78, ctdogon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 80, ctdogon, 2.18, 2.18 );
setEffScaleKey( spep_1 -3 + 82, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_1 -3 + 84, ctdogon, 2.37, 2.37 );
setEffScaleKey( spep_1 -3 + 86, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_1 -3 + 92, ctdogon, 2.47, 2.47 );

setEffRotateKey( spep_1 -3 + 74, ctdogon, 33.7 );
setEffRotateKey( spep_1 -3 + 76, ctdogon, 20.9 );
setEffRotateKey( spep_1 -3 + 78, ctdogon, 8 );
setEffRotateKey( spep_1 -3 + 82, ctdogon, 8 );
setEffRotateKey( spep_1 -3 + 84, ctdogon, 8.1 );
setEffRotateKey( spep_1 -3 + 88, ctdogon, 8.1 );
setEffRotateKey( spep_1 -3 + 90, ctdogon, 8 );
setEffRotateKey( spep_1 -3 + 92, ctdogon, 8 );

setEffAlphaKey( spep_1 -3 + 74, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 86, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 88, ctdogon, 170 );
setEffAlphaKey( spep_1 -3 + 90, ctdogon, 85 );
setEffAlphaKey( spep_1 -3 + 92, ctdogon, 0 );

--文字エントリー
ctbaki3 = entryEffectLife( spep_1 -3 + 116,  10020, 12, 0x100, -1, 0, -39.3, 138.3 );--バキッ

setEffMoveKey( spep_1 -3 + 116, ctbaki3, -39.3, 138.3 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctbaki3, -40.1, 193.2 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctbaki3, -23.1, 197 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctbaki3, -31, 208 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctbaki3, -25, 226 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctbaki3, 34.7, 278.1 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctbaki3, 95.8, 339.7 , 0 );

setEffScaleKey( spep_1 -3 + 116, ctbaki3, 0.2, 0.2 );
setEffScaleKey( spep_1 -3 + 118, ctbaki3, 2, 2 );
setEffScaleKey( spep_1 -3 + 120, ctbaki3, 2.07, 2.07 );
setEffScaleKey( spep_1 -3 + 122, ctbaki3, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 124, ctbaki3, 2.2, 2.2 );
setEffScaleKey( spep_1 -3 + 126, ctbaki3, 2.95, 2.95 );
setEffScaleKey( spep_1 -3 + 128, ctbaki3, 3.7, 3.7 );

setEffRotateKey( spep_1 -3 + 116, ctbaki3, 0 );
setEffRotateKey( spep_1 -3 + 128, ctbaki3, 0 );

setEffAlphaKey( spep_1 -3 + 116, ctbaki3, 255 );
setEffAlphaKey( spep_1 -3 + 124, ctbaki3, 255 );
setEffAlphaKey( spep_1 -3 + 126, ctbaki3, 141 );
setEffAlphaKey( spep_1 -3 + 128, ctbaki3, 26 );

--流線
ryusen1 = entryEffectLife( spep_1  + 0,  914, 92 -3, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 92, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1  + 0, ryusen1, 4, 1 );
setEffScaleKey( spep_1 -3 + 72, ryusen1, 4, 1 );
setEffScaleKey( spep_1 -3 + 73, ryusen1, 4, 1 )
setEffScaleKey( spep_1 -3 + 74, ryusen1, 5.2, 1.3 );
setEffScaleKey( spep_1 -3 + 92, ryusen1, 5.2, 1.3 );

setEffRotateKey( spep_1  + 0, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 72, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 73, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 74, ryusen1, -45 );
setEffRotateKey( spep_1 -3 + 92, ryusen1, -45 );

setEffAlphaKey( spep_1  + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 -3 + 91, ryusen1, 255 );
setEffAlphaKey( spep_1 -3 + 92, ryusen1, 0 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 110,  914, 38, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 110, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 148, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 110, ryusen2, 5.2, 1.3 );
setEffScaleKey( spep_1 -3 + 148, ryusen2, 5.2, 1.3 );

setEffRotateKey( spep_1 -3 + 110, ryusen2, 75 );
setEffRotateKey( spep_1 -3 + 148, ryusen2, 75 );

setEffAlphaKey( spep_1 -3 + 110, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 148, ryusen2, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 18,  906, 11, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 18, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -2 + 28, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 18, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 -2 + 28, shuchusen2, 1, 1 );

setEffRotateKey( spep_1 -3 + 18, shuchusen2, 0 );
setEffRotateKey( spep_1 -2 + 28, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 18, shuchusen2, 255 );
setEffAlphaKey( spep_1 -2 + 28, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1 -3 + 74,  906, 14, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 74, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 88, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 74, shuchusen3, 1, 1 );
setEffScaleKey( spep_1 -3 + 88, shuchusen3, 1, 1 );

setEffRotateKey( spep_1 -3 + 74, shuchusen3, 0 );
setEffRotateKey( spep_1 -3 + 88, shuchusen3, 0 );

setEffAlphaKey( spep_1 -3 + 74, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 88, shuchusen3, 255 );


--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 134, 1, 0 );

changeAnime( spep_1  + 0, 1, 101 );
changeAnime( spep_1 -3 + 18, 1, 106 );
changeAnime( spep_1 -3 + 30, 1, 108 );
changeAnime( spep_1 -3 + 42, 1, 106 );
changeAnime( spep_1 -3 + 50, 1, 108 );
changeAnime( spep_1 -3 + 74, 1, 106 );
changeAnime( spep_1 -3 + 116, 1, 108 );

setMoveKey( spep_1  + 0, 1, 168.7, 0 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 165.6, 0 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 157.7, 0 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 146, 0 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 130.7, 0 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 111.5, 0 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 87.5, 0 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 55.4, 0 , 0 );
setMoveKey( spep_1 -3 + 17, 1, -11.3, 0 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -16.8, 23.8 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -78.6, 15.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -60.3, 19.9 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -52.4, 15.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -66.6, 19.9 , 0 );
setMoveKey( spep_1 -3 + 29, 1, -82.8, 11.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 97.4, -8 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 7.2, -15.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 23.4, -15.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 21.2, -22.1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 26.8, -20.9 , 0 );
setMoveKey( spep_1 -3 + 41, 1, 24.4, -27.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -19.4, 20.9 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 26.6, 17.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 32.4, 21.4 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 55.4, 13.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 53.4, -7.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 64.2, -21.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 83, -26.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 88.8, -32.3 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 102.6, -21.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 108.4, -23 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 97.4, -19.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 86.3, -15.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 71.1, -12.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 55.7, -9.2 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 40.3, -6.1 , 0 );
setMoveKey( spep_1 -3 + 73, 1, 24.7, -3.2 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 58.8, 107.6 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 23, 51.1 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -3.4, 27.6 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 5.5, 37.3 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 22.7, 55.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 23.8, 53.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 33.2, 59.4 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 38.7, 61.4 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 44.4, 63.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 50.3, 65.6 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 56.3, 67.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 62.5, 69.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 68.8, 71.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 75.4, 74 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 82.1, 76.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 88.9, 78.2 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 96, 80.3 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 103.3, 82.5 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 105.3, 87.2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 106.7, 91.9 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 107.6, 96.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 180.7, -41 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 179.1, -100.6 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 185, -140.2 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 196.8, -239.5 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 216.5, -330.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 228.3, -430.1 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 248, -521.5 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 263.8, -616.8 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 279.6, -712.1 , 0 );
setMoveKey( spep_1  + 134, 1, 295.3, -807.4 , 0 );

setScaleKey( spep_1  + 0, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 17, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 18, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 20, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 29, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 30, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 32, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 34, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 36, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 38, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 41, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 42, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 44, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 46, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 49, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 50, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 52, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 54, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 56, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 58, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 60, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 62, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 64, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 66, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 68, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 70, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 73, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 74, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 76, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 78, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 80, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 82, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 84, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 86, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 88, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 90, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 92, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 94, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 96, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 98, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 100, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 102, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 104, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 106, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 108, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 110, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 112, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 115, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 116, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 118, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 120, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 122, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 124, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 126, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 128, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 130, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 132, 1, 1.39, 1.39 );
setScaleKey( spep_1  + 134, 1, 1.4, 1.4 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 17, 1, 0 );
setRotateKey( spep_1 -3 + 18, 1, -50 );
setRotateKey( spep_1 -3 + 29, 1, -50 );
setRotateKey( spep_1 -3 + 30, 1, 13.6 );
setRotateKey( spep_1 -3 + 32, 1, 13.6 );
setRotateKey( spep_1 -3 + 34, 1, 13.5 );
setRotateKey( spep_1 -3 + 41, 1, 13.5 );
setRotateKey( spep_1 -3 + 42, 1, -50 );
setRotateKey( spep_1 -3 + 49, 1, -50 );
setRotateKey( spep_1 -3 + 50, 1, 13.6 );
setRotateKey( spep_1 -3 + 52, 1, 13.6 );
setRotateKey( spep_1 -3 + 54, 1, 13.5 );
setRotateKey( spep_1 -3 + 56, 1, 14.2 );
setRotateKey( spep_1 -3 + 58, 1, 14.9 );
setRotateKey( spep_1 -3 + 60, 1, 15.7 );
setRotateKey( spep_1 -3 + 62, 1, 16.4 );
setRotateKey( spep_1 -3 + 64, 1, 17.1 );
setRotateKey( spep_1 -3 + 66, 1, 17.8 );
setRotateKey( spep_1 -3 + 68, 1, 18.6 );
setRotateKey( spep_1 -3 + 70, 1, 19.3 );
setRotateKey( spep_1 -3 + 73, 1, 20 );
setRotateKey( spep_1 -3 + 74, 1, -52.7 );
setRotateKey( spep_1 -3 + 76, 1, -47.4 );
setRotateKey( spep_1 -3 + 78, 1, -42.3 );
setRotateKey( spep_1 -3 + 80, 1, -37.1 );
setRotateKey( spep_1 -3 + 82, 1, -32 );
setRotateKey( spep_1 -3 + 84, 1, -31.4 );
setRotateKey( spep_1 -3 + 86, 1, -30.7 );
setRotateKey( spep_1 -3 + 88, 1, -30.1 );
setRotateKey( spep_1 -3 + 90, 1, -29.4 );
setRotateKey( spep_1 -3 + 92, 1, -28.8 );
setRotateKey( spep_1 -3 + 94, 1, -28.1 );
setRotateKey( spep_1 -3 + 96, 1, -27.5 );
setRotateKey( spep_1 -3 + 98, 1, -26.8 );
setRotateKey( spep_1 -3 + 100, 1, -26.2 );
setRotateKey( spep_1 -3 + 102, 1, -25.6 );
setRotateKey( spep_1 -3 + 104, 1, -24.9 );
setRotateKey( spep_1 -3 + 106, 1, -24.3 );
setRotateKey( spep_1 -3 + 108, 1, -23.6 );
setRotateKey( spep_1 -3 + 110, 1, -23 );
setRotateKey( spep_1 -3 + 112, 1, -22.3 );
setRotateKey( spep_1 -3 + 115, 1, -21.7 );
setRotateKey( spep_1 -3 + 116, 1, 45.4 );
setRotateKey( spep_1 -3 + 126, 1, 45.4 );
setRotateKey( spep_1 -3 + 128, 1, 45.5 );
setRotateKey( spep_1  + 134, 1, 45.5 );

--白フェード
entryFade( spep_1 + 142, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 -3 + 18, 1000); -- 殴る    
playSe( spep_1 -3 + 30, 1001); -- 殴る    
playSe( spep_1 -3 + 42, 1009); -- 殴る    
playSe( spep_1 -3 + 50, 1000); -- 殴る    
playSe( spep_1 -3 + 74, 1010); -- 膝蹴り   
playSe( spep_1 -3 + 116, 1011); --殴る

--次の準備
spep_2 = spep_1 + 152;

------------------------------------------------------
-- 敵落下、18号空から降りてくる
------------------------------------------------------
-- ** エフェクト等 ** --
fall = entryEffect( spep_2 + 0, SP_03x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fall, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, fall, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fall, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, fall, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fall, 0 );
setEffRotateKey( spep_2 + 80, fall, 0 );
setEffAlphaKey( spep_2 + 0, fall, 255 );
setEffAlphaKey( spep_2 + 80, fall, 255 );

--文字エントリー
ctdogon2 = entryEffectLife( spep_2 -5 + 30,  10018, 32, 0x100, -1, 0, 82.3, 262.6 );--ドゴォンッ

setEffMoveKey( spep_2 -5 + 30, ctdogon2, 82.3, 262.6 , 0 );
setEffMoveKey( spep_2 -5 + 32, ctdogon2, 77.9, 261.6 , 0 );
setEffMoveKey( spep_2 -5 + 34, ctdogon2, 80.8, 256.8 , 0 );
setEffMoveKey( spep_2 -5 + 36, ctdogon2, 79.8, 259 , 0 );
setEffMoveKey( spep_2 -5 + 38, ctdogon2, 81.3, 257.8 , 0 );
setEffMoveKey( spep_2 -5 + 40, ctdogon2, 79.1, 260 , 0 );
setEffMoveKey( spep_2 -5 + 42, ctdogon2, 81.5, 258.1 , 0 );
setEffMoveKey( spep_2 -5 + 44, ctdogon2, 80, 259.9 , 0 );
setEffMoveKey( spep_2 -5 + 46, ctdogon2, 81.5, 258.3 , 0 );
setEffMoveKey( spep_2 -5 + 48, ctdogon2, 80.1, 260 , 0 );
setEffMoveKey( spep_2 -5 + 50, ctdogon2, 81.6, 258.5 , 0 );
setEffMoveKey( spep_2 -5 + 52, ctdogon2, 80.2, 260.1 , 0 );
setEffMoveKey( spep_2 -5 + 54, ctdogon2, 81.7, 258.7 , 0 );
setEffMoveKey( spep_2 -5 + 56, ctdogon2, 80.3, 260.3 , 0 );
setEffMoveKey( spep_2 -5 + 58, ctdogon2, 81.7, 258.8 , 0 );
setEffMoveKey( spep_2 -5 + 60, ctdogon2, 80.3, 260.3 , 0 );
setEffMoveKey( spep_2 -5 + 62, ctdogon2, 81.6, 258.9 , 0 );

setEffScaleKey( spep_2 -5 + 32, ctdogon2, 2.8, 2.8 );
setEffScaleKey( spep_2 -5 + 34, ctdogon2, 3.3, 3.3 );
setEffScaleKey( spep_2 -5 + 36, ctdogon2, 3.1, 3.1 );
setEffScaleKey( spep_2 -5 + 38, ctdogon2, 2.8, 2.8 );
setEffScaleKey( spep_2 -5 + 40, ctdogon2, 2.72, 2.7 );
setEffScaleKey( spep_2 -5 + 42, ctdogon2, 2.6, 2.6 );
setEffScaleKey( spep_2 -5 + 44, ctdogon2, 2.56, 2.56 );
setEffScaleKey( spep_2 -5 + 46, ctdogon2, 2.53, 2.53 );
setEffScaleKey( spep_2 -5 + 48, ctdogon2, 2.49, 2.49 );
setEffScaleKey( spep_2 -5 + 50, ctdogon2, 2.45, 2.45 );
setEffScaleKey( spep_2 -5 + 52, ctdogon2, 2.41, 2.41 );
setEffScaleKey( spep_2 -5 + 54, ctdogon2, 2.38, 2.38 );
setEffScaleKey( spep_2 -5 + 56, ctdogon2, 2.34, 2.34 );
setEffScaleKey( spep_2 -5 + 62, ctdogon2, 2.34, 2.34 );

setEffRotateKey( spep_2 -5 + 30, ctdogon2, 11.8 );
setEffRotateKey( spep_2 -5 + 32, ctdogon2, 40.4 );
setEffRotateKey( spep_2 -5 + 34, ctdogon2, 14.8 );
setEffRotateKey( spep_2 -5 + 36, ctdogon2, 9.8 );
setEffRotateKey( spep_2 -5 + 38, ctdogon2, 12.8 );
setEffRotateKey( spep_2 -5 + 40, ctdogon2, 21 );
setEffRotateKey( spep_2 -5 + 42, ctdogon2, 11.8 );
setEffRotateKey( spep_2 -5 + 44, ctdogon2, 11.8 );
setEffRotateKey( spep_2 -5 + 46, ctdogon2, 11.9 );
setEffRotateKey( spep_2 -5 + 52, ctdogon2, 11.9 );
setEffRotateKey( spep_2 -5 + 54, ctdogon2, 12 );
setEffRotateKey( spep_2 -5 + 62, ctdogon2, 12 );

setEffAlphaKey( spep_2 -5 + 30, ctdogon2, 255 );
setEffAlphaKey( spep_2 -5 + 56, ctdogon2, 255 );
setEffAlphaKey( spep_2 -5 + 58, ctdogon2, 170 );
setEffAlphaKey( spep_2 -5 + 60, ctdogon2, 85 );
setEffAlphaKey( spep_2 -5 + 62, ctdogon2, 0 );

--敵の動き
setDisp( spep_2 -1  + 6, 1, 1 );
setDisp( spep_2 -1  + 28, 1, 0 );

changeAnime( spep_2 -1  + 0, 1, 108 );

setMoveKey( spep_2 -1 + 6, 1, -163.4, 743.7 , 0 );
setMoveKey( spep_2 -1 + 8, 1, -126.7, 622.4 , 0 );
setMoveKey( spep_2 -1 + 10, 1, -91.2, 505.3 , 0 );
setMoveKey( spep_2 -1 + 12, 1, -57.1, 392.5 , 0 );
setMoveKey( spep_2 -1 + 14, 1, -24.2, 283.9 , 0 );
setMoveKey( spep_2 -1 + 16, 1, 7.4, 179.5 , 0 );
setMoveKey( spep_2 -1 + 18, 1, 37.8, 79.4 , 0 );
setMoveKey( spep_2 -1 + 20, 1, 66.8, -16.5 , 0 );
setMoveKey( spep_2 -1 + 22, 1, 94.6, -108.1 , 0 );
setMoveKey( spep_2 -1 + 24, 1, 121, -195.5 , 0 );
setMoveKey( spep_2 -1 + 26, 1, 146.2, -278.7 , 0 );
setMoveKey( spep_2 -1 + 28, 1, 169.4, -357 , 0 );

setScaleKey( spep_2 -1 + 6, 1, 1, 1 );
setScaleKey( spep_2 -1 + 8, 1, 1.12, 1.12 );
setScaleKey( spep_2 -1 + 10, 1, 1.24, 1.24 );
setScaleKey( spep_2 -1 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_2 -1 + 14, 1, 1.46, 1.46 );
setScaleKey( spep_2 -1 + 16, 1, 1.56, 1.56 );
setScaleKey( spep_2 -1 + 18, 1, 1.66, 1.66 );
setScaleKey( spep_2 -1 + 20, 1, 1.76, 1.76 );
setScaleKey( spep_2 -1 + 22, 1, 1.85, 1.85 );
setScaleKey( spep_2 -1 + 24, 1, 1.94, 1.94 );
setScaleKey( spep_2 -1 + 26, 1, 2.02, 2.02 );
setScaleKey( spep_2 -1 + 28, 1, 2.1, 2.1 );

setRotateKey( spep_2 -1 + 6, 1, 59.9 );
setRotateKey( spep_2 -1 + 8, 1, 61.1 );
setRotateKey( spep_2 -1 + 10, 1, 62.2 );
setRotateKey( spep_2 -1 + 12, 1, 63.2 );
setRotateKey( spep_2 -1 + 14, 1, 64.2 );
setRotateKey( spep_2 -1 + 16, 1, 65.2 );
setRotateKey( spep_2 -1 + 18, 1, 66.1 );
setRotateKey( spep_2 -1 + 20, 1, 67 );
setRotateKey( spep_2 -1 + 22, 1, 67.9 );
setRotateKey( spep_2 -1 + 24, 1, 68.7 );
setRotateKey( spep_2 -1 + 26, 1, 69.5 );
setRotateKey( spep_2 -1 + 28, 1, 70.2 );

--白フェード
entryFade( spep_2 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --   
playSe( spep_2 -5 + 30, 1023);

--次の準備
spep_3 = spep_2 + 80;

------------------------------------------------------
-- 気弾溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 100, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 100, tame, 255 );

--***カットイン***
--speff = entryEffect(  spep_3 - 4 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff3 = entryEffect(  spep_3 - 4 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3 - 4 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 - 4 +26,  ctgogo,  0,  540);
setEffMoveKey(  spep_3 - 4 +98,  ctgogo,  0,  540);

setEffAlphaKey( spep_3 - 4  + 26, ctgogo, 0 );
setEffAlphaKey( spep_3 - 4  + 27, ctgogo, 255 );
setEffAlphaKey( spep_3 - 4  + 28, ctgogo, 255 );
setEffAlphaKey( spep_3 - 4  + 88, ctgogo, 255 );
setEffAlphaKey( spep_3 - 4  + 90, ctgogo, 255 );
setEffAlphaKey( spep_3 - 4  + 92, ctgogo, 191 );
setEffAlphaKey( spep_3 - 4  + 94, ctgogo, 128 );
setEffAlphaKey( spep_3 - 4  + 96, ctgogo, 64 );
setEffAlphaKey( spep_3 - 4  + 98, ctgogo, 0 );

setEffRotateKey(  spep_3 - 4 +26,  ctgogo,  0);
setEffRotateKey(  spep_3 - 4 +98,  ctgogo,  0);

setEffScaleKey(  spep_3 - 4 +26,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 - 4 +90,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 - 4 +98,  ctgogo, -1.07, 1.07 );

--集中線
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 98, shuchusen4, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 98, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 98, shuchusen4, 255 );

--SE
playSe( spep_3+22, 1018);--ごごご

--白フェード
entryFade( spep_3+ 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_4 = spep_3+100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--白フェード
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 気弾発射
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_05x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_5 + 72, beam, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 72, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 72, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 72, beam, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_5 -3 + 18,  10012, 22, 0x100, -1, 0, -72.8, 277.7 );--ズオッ

setEffMoveKey( spep_5 -3 + 18, ctzuo, -72.8, 277.7 , 0 );
setEffMoveKey( spep_5 -3 + 20, ctzuo, -28.5, 349.5 , 0 );
setEffMoveKey( spep_5 -3 + 22, ctzuo, -25.4, 349.4 , 0 );
setEffMoveKey( spep_5 -3 + 24, ctzuo, -11.6, 358.4 , 0 );
setEffMoveKey( spep_5 -3 + 26, ctzuo, -8.6, 358.2 , 0 );
setEffMoveKey( spep_5 -3 + 28, ctzuo, 5.2, 367.2 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctzuo, 8.3, 367.1 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctzuo, 22.1, 376.1 , 0 );
--setEffMoveKey( spep_5 -3 + 34, ctzuo, 34.3, 476.1 , 0 );
--setEffMoveKey( spep_5 -3 + 36, ctzuo, 63.1, 590.2 , 0 );
--setEffMoveKey( spep_5 -3 + 38, ctzuo, 109.7, 605.4 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctzuo, 107.4, 610.1 , 0 );

a=1;
b=0.6;
c=2;

setEffScaleKey( spep_5 -3 + 18, ctzuo, 0.43 +a, 0.43 +a );
setEffScaleKey( spep_5 -3 + 20, ctzuo, 0.8+a+b, 0.8+a+b );
setEffScaleKey( spep_5 -3 + 32, ctzuo, 0.8+a+b, 0.8+a+b );
--setEffScaleKey( spep_5 -3 + 34, ctzuo, 1.23+a+b, 1.23+a+b );
--setEffScaleKey( spep_5 -3 + 36, ctzuo, 1.65+a+b, 1.65+a+b );
--etEffScaleKey( spep_5 -3 + 38, ctzuo, 2.08+a+c, 2.08+a+c );
setEffScaleKey( spep_5 -3 + 40, ctzuo, 2.5+a+c, 2.5+a+c );

setEffRotateKey( spep_5 -3 + 18, ctzuo, 35 );
setEffRotateKey( spep_5 -3 + 40, ctzuo, 35 );

setEffAlphaKey( spep_5 -3 + 18, ctzuo, 128 );
setEffAlphaKey( spep_5 -3 + 20, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 32, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 34, ctzuo, 191 );
setEffAlphaKey( spep_5 -3 + 36, ctzuo, 128 );
setEffAlphaKey( spep_5 -3 + 38, ctzuo, 64 );
setEffAlphaKey( spep_5 -3 + 40, ctzuo, 0 );

--白フェード
entryFade( spep_5+ 64, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** -- 
playSe( spep_5 -3 + 18, 1021); --発射

-- ** 次の準備 ** --
spep_6 = spep_5 + 72;


------------------------------------------------------
-- 気弾着弾、敵爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_06x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 140, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 140, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 140, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 140, finish, 255 );

--集中線

shuchusen5 = entryEffectLife( spep_6 -3 + 32,  906, 106, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 -3 + 32, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 -3 + 138, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 -3 + 32, shuchusen5, 1, 1 );
setEffScaleKey( spep_6 -3 + 138, shuchusen5, 1, 1 );

setEffRotateKey( spep_6 -3 + 32, shuchusen5, 180 );
setEffRotateKey( spep_6 -3 + 138, shuchusen5, 180 );

setEffAlphaKey( spep_6 -3 + 32, shuchusen5, 255 );
setEffAlphaKey( spep_6 -3 + 138, shuchusen5, 255 );

--白フェード
entryFade( spep_6+ 26, 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** -- 
playSe( spep_6 + 0, 1022);  
playSe( spep_6 + 26, 1024);

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 30 );
endPhase( spep_6 + 130 );
end

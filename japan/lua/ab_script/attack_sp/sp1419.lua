--1018960:ラディッツ(幼年期)_突撃
--sp_effect_b1_00094

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
SP_01=	154719	;--	カットイン
SP_02=	154720	;--	正面へ突進
SP_03=	154721	;--	格闘　手前
SP_04=	154723	;--	格闘　奥
SP_05=	154725	;--	格闘　背景
SP_06=	154726	;--	突進　手前
SP_07=	154728	;--	突進　背景
SP_08=	154729	;--	フィニッシュ背景

--エフェクト(敵)
SP_01x=	154719	;--	カットイン	
SP_02x=	154746	;--	正面へ突進	
SP_03x=	154722	;--	格闘　手前	(敵)
SP_04x=	154724	;--	格闘　奥	(敵)
SP_05x=	154725	;--	格闘　背景	
SP_06x=	154727	;--	突進　手前	(敵)
SP_07x=	154728	;--	突進　背景	
SP_08x=	154729	;--	フィニッシュ背景	

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
-- 気溜め〜突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 4  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusenx = entryEffectLife( spep_0 + 0,  906, 100, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusenx, 100, 20 );
setEffMoveKey( spep_0 + 0, shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusenx, 1.1, 1.1 );
setEffScaleKey( spep_0 + 100, shuchusenx, 1.1, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusenx, 180 );
setEffRotateKey( spep_0 + 100, shuchusenx, 180 );

setEffAlphaKey( spep_0 + 0, shuchusenx, 255 );
setEffAlphaKey( spep_0 + 100, shuchusenx, 255 );

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +16, 190006, 72, 0x100, -1, 0, 20, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +16,  ctgogo,  20,  510);
setEffMoveKey(  spep_0 +88,  ctgogo,  20,  510);

setEffAlphaKey( spep_0 +16, ctgogo, 0 );
setEffAlphaKey( spep_0 + 17, ctgogo, 255 );
setEffAlphaKey( spep_0 + 18, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 191 );
setEffAlphaKey( spep_0 + 86, ctgogo, 112 );
setEffAlphaKey( spep_0 + 88, ctgogo, 64 );

setEffRotateKey(  spep_0 +16,  ctgogo,  0);
setEffRotateKey(  spep_0 +88,  ctgogo,  0);

setEffScaleKey(  spep_0 +16,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +78,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +88,  ctgogo, 1.07, 1.07 );

--白フェード
entryFade( spep_0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_0 + 0, 8 );
playSe( spep_0 + 16, 1018 );

--次の準備
spep_1 = spep_0+100;

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
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 正面へ突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_2 + 36, tossin, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 36, tossin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tossin, 0 );
setEffRotateKey( spep_2 + 36, tossin, 0 );
setEffAlphaKey( spep_2 + 0, tossin, 255 );
setEffAlphaKey( spep_2 + 34, tossin, 255 );
setEffAlphaKey( spep_2 + 35, tossin, 255 );
setEffAlphaKey( spep_2 + 36, tossin, 0 );

--集中線
eshuchusen1 = entryEffectLife( spep_2 + 0,  906, 36, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, eshuchusen1, 36, 20 );
setEffMoveKey( spep_2 + 0, eshuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, eshuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, eshuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_2 + 36, eshuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_2 + 0, eshuchusen1, 180 );
setEffRotateKey( spep_2 + 36, eshuchusen1, 180 );

setEffAlphaKey( spep_2 + 0, eshuchusen1, 255 );
setEffAlphaKey( spep_2 + 34, eshuchusen1, 255 );
setEffAlphaKey( spep_2 + 35, eshuchusen1, 255 );
setEffAlphaKey( spep_2 + 36, eshuchusen1, 0 );

--SE
SE0=playSe( spep_2 + 2, 44 );
SE1=playSe( spep_2 + 2, 1109 );

setSeVolume( spep_2 + 2, 1109, 71 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
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

-- ** 次の準備 ** --
spep_3 = spep_2 + 36;

------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 120, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 120, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 120, fighting_f, 255 );

-- ** エフェクト等 ** --
bg_1 = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, bg_1, 0, 0, 0 );
setEffMoveKey( spep_3 + 120, bg_1, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, bg_1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, bg_1, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bg_1, 0 );
setEffRotateKey( spep_3 + 120, bg_1, 0 );
setEffAlphaKey( spep_3 + 0, bg_1, 255 );
setEffAlphaKey( spep_3 + 120, bg_1, 255 );

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  914, 118, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 118, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 4.3, 1.12 );
setEffScaleKey( spep_3 + 118, ryusen1, 4.3, 1.12 );

setEffRotateKey( spep_3 + 0, ryusen1, 0 );
setEffRotateKey( spep_3 + 118, ryusen1, 0 );

setEffAlphaKey( spep_3 + 0, ryusen1, 36 );
setEffAlphaKey( spep_3 + 2, ryusen1, 91 );
setEffAlphaKey( spep_3 + 4, ryusen1, 145 );
setEffAlphaKey( spep_3 + 6, ryusen1, 200 );
setEffAlphaKey( spep_3 + 8, ryusen1, 255 );
setEffAlphaKey( spep_3 + 118, ryusen1, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 120, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 120, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 120, fighting_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 118, 1, 0 );

changeAnime( spep_3 + 0, 1, 101 );
changeAnime( spep_3-3 + 26, 1, 104 );
changeAnime( spep_3-3 + 52, 1, 108 );
changeAnime( spep_3-3 + 66, 1, 106 );
changeAnime( spep_3-3 + 88, 1, 108 );

setMoveKey( spep_3 + 0, 1, 603.9, -12.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 551.7, -12.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 499.4, -12.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 447.1, -12.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 394.8, -12.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 342.6, -12.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 290.3, -12.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 263.4, -12.1 , 0 );
setMoveKey( spep_3-3 + 16, 1, 236.5, -12.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 209.6, -12.1 , 0 );
setMoveKey( spep_3-3 + 20, 1, 182.6, -12.1 , 0 );
setMoveKey( spep_3-3 + 22, 1, 155.7, -12.1 , 0 );
setMoveKey( spep_3-3 + 25, 1, 128.8, -12.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, 88.1, -6 , 0 );
setMoveKey( spep_3-3 + 28, 1, 109.5, 13.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, 68, -3.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, 93.2, 33.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 94.9, -1.5 , 0 );
setMoveKey( spep_3-3 + 36, 1, 96.6, -0.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, 98.3, 0.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 98.3, 0.8 , 0 );
setMoveKey( spep_3-3 + 42, 1, 112.5, 4.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 90, 16.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 114.5, -5.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, 108.6, -3.2 , 0 );
setMoveKey( spep_3-3 + 51, 1, 112, -4.6 , 0 );
setMoveKey( spep_3-3 + 52, 1, 75.6, 9.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 84.9, 29.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 61.3, 11.7 , 0 );
setMoveKey( spep_3-3 + 58, 1, 94, 3.5 , 0 );
setMoveKey( spep_3-3 + 60, 1, 84.9, 23.5 , 0 );
setMoveKey( spep_3-3 + 62, 1, 87.1, 27.1 , 0 );
setMoveKey( spep_3-3 + 65, 1, 89.3, 30.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, 48.4, 40.8 , 0 );
setMoveKey( spep_3-3 + 68, 1, 34.4, 47.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 81.9, 65.7 , 0 );
setMoveKey( spep_3-3 + 72, 1, 57.8, 36.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, 91.7, 55.6 , 0 );
setMoveKey( spep_3-3 + 76, 1, 89.2, 46.6 , 0 );
setMoveKey( spep_3-3 + 78, 1, 103.9, 51.2 , 0 );
setMoveKey( spep_3-3 + 80, 1, 111.3, 48.6 , 0 );
setMoveKey( spep_3-3 + 82, 1, 121.1, 50.9 , 0 );
setMoveKey( spep_3-3 + 84, 1, 131, 51.3 , 0 );
setMoveKey( spep_3-3 + 87, 1, 140.8, 51.6 , 0 );
setMoveKey( spep_3-3 + 88, 1, 104.9, 24.9 , 0 );
setMoveKey( spep_3-3 + 90, 1, 146.3, 55.8 , 0 );
setMoveKey( spep_3-3 + 92, 1, 117.6, 34.6 , 0 );
setMoveKey( spep_3-3 + 94, 1, 135.3, 34.3 , 0 );
setMoveKey( spep_3-3 + 96, 1, 143, 37 , 0 );
setMoveKey( spep_3-3 + 98, 1, 115.8, 16.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, 125.4, 54.6 , 0 );
setMoveKey( spep_3-3 + 102, 1, 253, 51.3 , 0 );
setMoveKey( spep_3-3 + 104, 1, 334.2, 52.5 , 0 );
setMoveKey( spep_3-3 + 106, 1, 408.1, 57.3 , 0 );
setMoveKey( spep_3-3 + 108, 1, 482, 62.1 , 0 );
setMoveKey( spep_3-3 + 110, 1, 605.2, 70.4 , 0 );
setMoveKey( spep_3-3 + 112, 1, 728.3, 78.8 , 0 );
setMoveKey( spep_3-3 + 114, 1, 851.5, 87.1 , 0 );
setMoveKey( spep_3-3 + 116, 1, 974.7, 95.5 , 0 );
setMoveKey( spep_3-3 + 118, 1, 1097.9, 103.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.17, 1.17 );
setScaleKey( spep_3-3 + 118, 1, 1.17, 1.17 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 65, 1, 0 );
setRotateKey( spep_3-3 + 66, 1, -46 );
setRotateKey( spep_3-3 + 68, 1, -42.8 );
setRotateKey( spep_3-3 + 70, 1, -39.5 );
setRotateKey( spep_3-3 + 72, 1, -39.1 );
setRotateKey( spep_3-3 + 74, 1, -38.7 );
setRotateKey( spep_3-3 + 76, 1, -38.3 );
setRotateKey( spep_3-3 + 78, 1, -37.9 );
setRotateKey( spep_3-3 + 80, 1, -37.5 );
setRotateKey( spep_3-3 + 82, 1, -37.1 );
setRotateKey( spep_3-3 + 84, 1, -36.7 );
setRotateKey( spep_3-3 + 87, 1, -36.3 );
setRotateKey( spep_3-3 + 88, 1, 0 );
setRotateKey( spep_3-3 + 90, 1, -2 );
setRotateKey( spep_3-3 + 92, 1, -4.1 );
setRotateKey( spep_3-3 + 94, 1, -6.1 );
setRotateKey( spep_3-3 + 96, 1, -8.2 );
setRotateKey( spep_3-3 + 98, 1, -10.2 );
setRotateKey( spep_3-3 + 100, 1, -10.6 );
setRotateKey( spep_3-3 + 102, 1, -11 );
setRotateKey( spep_3-3 + 104, 1, -11.4 );
setRotateKey( spep_3-3 + 106, 1, -11.8 );
setRotateKey( spep_3-3 + 108, 1, -12.1 );
setRotateKey( spep_3-3 + 110, 1, -12.5 );
setRotateKey( spep_3-3 + 112, 1, -12.9 );
setRotateKey( spep_3-3 + 114, 1, -13.3 );
setRotateKey( spep_3-3 + 116, 1, -13.7 );
setRotateKey( spep_3-3 + 118, 1, -14.1 );

--文字エントリー
ctdogaga = entryEffectLife( spep_3-3 + 26,  10017, 52, 0x100, -1, 0, -95.1, 195.5 );--ドガガガッ
setEffShake( spep_3-3 + 26, ctdogaga, 52, 20 );
setEffMoveKey( spep_3-3 + 26, ctdogaga, -95.1, 195.5 , 0 );
setEffMoveKey( spep_3-3 + 28, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 30, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 32, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 34, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 36, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 38, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 40, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 42, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 44, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 46, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 48, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 54, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 56, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 58, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 60, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 62, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 64, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 66, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 68, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 70, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 72, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 74, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 76, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 78, ctdogaga, -95.7, 201 , 0 );

setEffScaleKey( spep_3-3 + 26, ctdogaga, 1.44, 1.44 );
setEffScaleKey( spep_3-3 + 28, ctdogaga, 2.06, 2.06 );
setEffScaleKey( spep_3-3 + 78, ctdogaga, 2.06, 2.06 );

setEffRotateKey( spep_3-3 + 26, ctdogaga, 0 );
setEffRotateKey( spep_3-3 + 78, ctdogaga, 0 );

setEffAlphaKey( spep_3-3 + 26, ctdogaga, 128 );
setEffAlphaKey( spep_3-3 + 28, ctdogaga, 255 );
setEffAlphaKey( spep_3-3 + 74, ctdogaga, 255 );
setEffAlphaKey( spep_3-3 + 76, ctdogaga, 223 );
setEffAlphaKey( spep_3-3 + 78, ctdogaga, 191 );

--文字エントリー
ctbaki = entryEffectLife( spep_3-3 + 88,  10020, 16, 0x100, -1, 0, 71, 281.8 );--バキッ

setEffMoveKey( spep_3-3 + 88, ctbaki, 71, 281.8 , 0 );
setEffMoveKey( spep_3-3 + 90, ctbaki, 80.3, 295.3 , 0 );
setEffMoveKey( spep_3-3 + 92, ctbaki, 76.3, 306 , 0 );
setEffMoveKey( spep_3-3 + 94, ctbaki, 83.1, 299.4 , 0 );
setEffMoveKey( spep_3-3 + 96, ctbaki, 74.6, 304.8 , 0 );
setEffMoveKey( spep_3-3 + 98, ctbaki, 81.6, 311 , 0 );
setEffMoveKey( spep_3-3 + 100, ctbaki, 78.6, 304.8 , 0 );
setEffMoveKey( spep_3-3 + 102, ctbaki, 79.9, 318 , 0 );
setEffMoveKey( spep_3-3 + 104, ctbaki, 80.3, 320.5 , 0 );

setEffScaleKey( spep_3-3 + 88, ctbaki, 1.14, 1.14 );
setEffScaleKey( spep_3-3 + 90, ctbaki, 1.53, 1.53 );
setEffScaleKey( spep_3-3 + 104, ctbaki, 1.53, 1.53 );

setEffRotateKey( spep_3-3 + 88, ctbaki, 21.5 );
setEffRotateKey( spep_3-3 + 104, ctbaki, 21.5 );

setEffAlphaKey( spep_3-3 + 88, ctbaki, 128 );
setEffAlphaKey( spep_3-3 + 90, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 100, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 102, ctbaki, 128 );
setEffAlphaKey( spep_3-3 + 104, ctbaki, 0 );

--SE
playSe( spep_3 + 24, 1189 );
setSeVolume( spep_3 + 24, 1189, 63 );
playSe( spep_3 + 29, 1009 );
playSe( spep_3 + 44, 1006 );
playSe( spep_3 + 55, 1000 );
playSe( spep_3 + 67, 1009 );
playSe( spep_3 + 84, 1003 );
setSeVolume( spep_3 + 84, 1003, 40 );
playSe( spep_3 + 89, 1009 );
playSe( spep_3 + 89, 1001 );
setSeVolume( spep_3 + 89, 1001, 63 );
playSe( spep_3 + 105, 1232 );

--白フェード
entryFade( spep_3 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 120;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin2 = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tossin2, 0, 0, 0 );
setEffMoveKey( spep_4 + 96, tossin2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tossin2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, tossin2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tossin2, 0 );
setEffRotateKey( spep_4 + 96, tossin2, 0 );
setEffAlphaKey( spep_4 + 0, tossin2, 255 );
setEffAlphaKey( spep_4 + 96, tossin2, 255 );

-- ** エフェクト等 ** --
bg_2 = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, bg_2, 0, 0, 0 );
setEffMoveKey( spep_4 + 96, bg_2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, bg_2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, bg_2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg_2, 0 );
setEffRotateKey( spep_4 + 96, bg_2, 0 );
setEffAlphaKey( spep_4 + 0, bg_2, 255 );
setEffAlphaKey( spep_4 + 96, bg_2, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 94, 1, 0 );

changeAnime( spep_4 + 0, 1, 102 );
changeAnime( spep_4-3 + 58, 1, 107 );

setMoveKey( spep_4 + 0, 1, 1319.5, -509.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 1283.3, -491.9 , 0 );
setMoveKey( spep_4-3 + 4, 1, 1247.1, -473.9 , 0 );
setMoveKey( spep_4-3 + 6, 1, 1210.9, -455.9 , 0 );
setMoveKey( spep_4-3 + 8, 1, 1174.7, -437.9 , 0 );
setMoveKey( spep_4-3 + 10, 1, 1138.4, -419.9 , 0 );
setMoveKey( spep_4-3 + 12, 1, 1102.2, -401.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 1066, -383.9 , 0 );
setMoveKey( spep_4-3 + 16, 1, 1029.8, -365.9 , 0 );
setMoveKey( spep_4-3 + 18, 1, 993.6, -348 , 0 );
setMoveKey( spep_4-3 + 20, 1, 957.4, -330 , 0 );
setMoveKey( spep_4-3 + 22, 1, 921.2, -312 , 0 );
setMoveKey( spep_4-3 + 24, 1, 884.9, -294 , 0 );
setMoveKey( spep_4-3 + 26, 1, 848.7, -276 , 0 );
setMoveKey( spep_4-3 + 28, 1, 812.5, -258 , 0 );
setMoveKey( spep_4-3 + 30, 1, 776.3, -240 , 0 );
setMoveKey( spep_4-3 + 32, 1, 740.1, -222 , 0 );
setMoveKey( spep_4-3 + 34, 1, 703.9, -204 , 0 );
setMoveKey( spep_4-3 + 36, 1, 667.7, -186 , 0 );
setMoveKey( spep_4-3 + 38, 1, 631.4, -168 , 0 );
setMoveKey( spep_4-3 + 40, 1, 595.2, -150 , 0 );
setMoveKey( spep_4-3 + 42, 1, 540.3, -130.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 485.4, -111.8 , 0 );
setMoveKey( spep_4-3 + 46, 1, 430.5, -92.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 375.6, -73.6 , 0 );
setMoveKey( spep_4-3 + 50, 1, 320.7, -54.5 , 0 );
setMoveKey( spep_4-3 + 52, 1, 265.8, -35.4 , 0 );
setMoveKey( spep_4-3 + 54, 1, 210.9, -16.3 , 0 );
setMoveKey( spep_4-3 + 57, 1, 168.2, -12.9 , 0 );
setMoveKey( spep_4-3 + 58, 1, 60, -67.5 , 0 );
setMoveKey( spep_4-3 + 60, 1, 47.5, -75.6 , 0 );
setMoveKey( spep_4-3 + 62, 1, 96.8, -107.7 , 0 );
setMoveKey( spep_4-3 + 64, 1, 99.8, -150.6 , 0 );
setMoveKey( spep_4-3 + 66, 1, 173.9, -196.3 , 0 );
setMoveKey( spep_4-3 + 68, 1, 324.7, -475.4 , 0 );
setMoveKey( spep_4-3 + 70, 1, 505.4, -714.9 , 0 );
setMoveKey( spep_4-3 + 72, 1, 624.9, -787.4 , 0 );
setMoveKey( spep_4-3 + 74, 1, 744.5, -859.9 , 0 );
setMoveKey( spep_4-3 + 76, 1, 864.1, -932.3 , 0 );
setMoveKey( spep_4-3 + 78, 1, 983.6, -1004.8 , 0 );
setMoveKey( spep_4-3 + 80, 1, 1103.2, -1077.3 , 0 );
setMoveKey( spep_4-3 + 82, 1, 1222.8, -1149.8 , 0 );
setMoveKey( spep_4-3 + 84, 1, 1251.1, -1162.1 , 0 );
setMoveKey( spep_4-3 + 86, 1, 1279.3, -1174.4 , 0 );
setMoveKey( spep_4-3 + 88, 1, 1307.6, -1186.6 , 0 );
setMoveKey( spep_4-3 + 90, 1, 1335.9, -1198.9 , 0 );
setMoveKey( spep_4-3 + 92, 1, 1364.2, -1211.2 , 0 );
setMoveKey( spep_4-3 + 94, 1, 1392.4, -1223.5 , 0 );

setScaleKey( spep_4 + 0, 1, 3.29, 3.29 );
--setScaleKey( spep_4-3 + 2, 1, 3.27, 3.27 );
setScaleKey( spep_4-3 + 4, 1, 3.25, 3.25 );
setScaleKey( spep_4-3 + 6, 1, 3.23, 3.23 );
setScaleKey( spep_4-3 + 8, 1, 3.21, 3.21 );
setScaleKey( spep_4-3 + 10, 1, 3.19, 3.19 );
setScaleKey( spep_4-3 + 12, 1, 3.18, 3.18 );
setScaleKey( spep_4-3 + 14, 1, 3.16, 3.16 );
setScaleKey( spep_4-3 + 16, 1, 3.14, 3.14 );
setScaleKey( spep_4-3 + 18, 1, 3.12, 3.12 );
setScaleKey( spep_4-3 + 20, 1, 3.1, 3.1 );
setScaleKey( spep_4-3 + 22, 1, 3.08, 3.08 );
setScaleKey( spep_4-3 + 24, 1, 3.06, 3.06 );
setScaleKey( spep_4-3 + 26, 1, 3.04, 3.04 );
setScaleKey( spep_4-3 + 28, 1, 3.03, 3.03 );
setScaleKey( spep_4-3 + 30, 1, 3.01, 3.01 );
setScaleKey( spep_4-3 + 32, 1, 2.99, 2.99 );
setScaleKey( spep_4-3 + 34, 1, 2.97, 2.97 );
setScaleKey( spep_4-3 + 36, 1, 2.95, 2.95 );
setScaleKey( spep_4-3 + 38, 1, 2.93, 2.93 );
setScaleKey( spep_4-3 + 40, 1, 2.91, 2.91 );
setScaleKey( spep_4-3 + 42, 1, 2.79, 2.79 );
setScaleKey( spep_4-3 + 44, 1, 2.67, 2.67 );
setScaleKey( spep_4-3 + 46, 1, 2.54, 2.54 );
setScaleKey( spep_4-3 + 48, 1, 2.42, 2.42 );
setScaleKey( spep_4-3 + 50, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 52, 1, 2.17, 2.17 );
setScaleKey( spep_4-3 + 54, 1, 2.05, 2.05 );
setScaleKey( spep_4-3 + 57, 1, 2.01, 2.01 );

a=0.1;
setScaleKey( spep_4-3 + 58, 1, 0.84+a, 0.84+a );
setScaleKey( spep_4-3 + 60, 1, 0.8+a, 0.8+a );
setScaleKey( spep_4-3 + 62, 1, 1+a, 1+a );
setScaleKey( spep_4-3 + 64, 1, 1.13+a, 1.13+a );
setScaleKey( spep_4-3 + 66, 1, 1.25+a, 1.25+a );
setScaleKey( spep_4-3 + 68, 1, 1.38+a, 1.38+a );
setScaleKey( spep_4-3 + 70, 1, 1.44+a, 1.44+a );
setScaleKey( spep_4-3 + 72, 1, 1.5+a, 1.5+a );
setScaleKey( spep_4-3 + 74, 1, 1.56+a, 1.56+a );
setScaleKey( spep_4-3 + 76, 1, 1.61+a, 1.61+a );
setScaleKey( spep_4-3 + 78, 1, 1.67+a, 1.67+a );
setScaleKey( spep_4-3 + 80, 1, 1.73+a, 1.73+a );
setScaleKey( spep_4-3 + 82, 1, 1.79+a, 1.79+a );
setScaleKey( spep_4-3 + 84, 1, 1.78+a, 1.78+a );
setScaleKey( spep_4-3 + 90, 1, 1.78+a, 1.78+a );
setScaleKey( spep_4-3 + 92, 1, 1.77+a, 1.77+a );
setScaleKey( spep_4-3 + 94, 1, 1.77+a, 1.77+a );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 57, 1, 0 );
setRotateKey( spep_4-3 + 58, 1, -21 );
setRotateKey( spep_4-3 + 94, 1, -21 );

--文字エントリー
ctdon = entryEffectLife( spep_4-3 + 58,  10019, 24, 0x100, -1, 0, 117.7, 340.7 );--ドンッ

setEffMoveKey( spep_4-3 + 58, ctdon, 117.7, 340.7 , 0 );
setEffMoveKey( spep_4-3 + 60, ctdon, 136.1, 349.8 , 0 );
setEffMoveKey( spep_4-3 + 62, ctdon, 131.8, 362.4 , 0 );
setEffMoveKey( spep_4-3 + 64, ctdon, 139.1, 348.6 , 0 );
setEffMoveKey( spep_4-3 + 66, ctdon, 127.4, 354.6 , 0 );
setEffMoveKey( spep_4-3 + 68, ctdon, 137.6, 358.9 , 0 );
setEffMoveKey( spep_4-3 + 70, ctdon, 131.2, 347.3 , 0 );
setEffMoveKey( spep_4-3 + 72, ctdon, 134.8, 362.8 , 0 );
setEffMoveKey( spep_4-3 + 74, ctdon, 134.8, 351.4 , 0 );
setEffMoveKey( spep_4-3 + 76, ctdon, 130.4, 359.1 , 0 );
setEffMoveKey( spep_4-3 + 78, ctdon, 131.9, 351.7 , 0 );
setEffMoveKey( spep_4-3 + 80, ctdon, 136.4, 358.8 , 0 );
setEffMoveKey( spep_4-3 + 82, ctdon, 136.5, 359.1 , 0 );

setEffScaleKey( spep_4-3 + 58, ctdon, 1.38, 1.38 );
setEffScaleKey( spep_4-3 + 60, ctdon, 2.15, 2.15 );
setEffScaleKey( spep_4-3 + 62, ctdon, 2.16, 2.16 );
setEffScaleKey( spep_4-3 + 64, ctdon, 2.18, 2.18 );
setEffScaleKey( spep_4-3 + 66, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_4-3 + 68, ctdon, 2.21, 2.21 );
setEffScaleKey( spep_4-3 + 70, ctdon, 2.23, 2.23 );
setEffScaleKey( spep_4-3 + 72, ctdon, 2.24, 2.24 );
setEffScaleKey( spep_4-3 + 74, ctdon, 2.26, 2.26 );
setEffScaleKey( spep_4-3 + 76, ctdon, 2.27, 2.27 );
setEffScaleKey( spep_4-3 + 78, ctdon, 2.29, 2.29 );
setEffScaleKey( spep_4-3 + 80, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_4-3 + 82, ctdon, 2.32, 2.32 );

setEffRotateKey( spep_4-3 + 58, ctdon, 29.8 );
setEffRotateKey( spep_4-3 + 82, ctdon, 29.8 );

setEffAlphaKey( spep_4-3 + 58, ctdon, 128 );
setEffAlphaKey( spep_4-3 + 60, ctdon, 255 );
setEffAlphaKey( spep_4-3 + 78, ctdon, 255 );
setEffAlphaKey( spep_4-3 + 80, ctdon, 128 );
setEffAlphaKey( spep_4-3 + 82, ctdon, 0 );

--SE
playSe( spep_4 + 4, 1035 );
setSeVolume( spep_4 + 4, 1035, 79 );
se_0009 = playSe( spep_4 + 33, 9 );
se_1183 = playSe( spep_4 + 33, 1183 );
setSeVolume( spep_4 + 33, 1183, 158 );
playSe( spep_4 + 64, 1110 );
setSeVolume( spep_4 + 64, 1110, 71 );
playSe( spep_4 + 64, 1010 );

stopSe( spep_4 + 68, se_0009, 0 );
stopSe( spep_4 + 68, se_1183, 0 );

--白フェード
entryFade( spep_4 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- ガッ
------------------------------------------------------
-- ** エフェクト等 ** --
bg_3 = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg_3, 0, 0, 0 );
setEffMoveKey( spep_5 + 114, bg_3, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, bg_3, 1.0, 1.0 );
setEffScaleKey( spep_5 + 114, bg_3, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg_3, 0 );
setEffRotateKey( spep_5 + 114, bg_3, 0 );
setEffAlphaKey( spep_5 + 0, bg_3, 255 );
setEffAlphaKey( spep_5 + 114, bg_3, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen4, 0 );
setEffRotateKey( spep_5 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen5, 0 );
setEffRotateKey( spep_5 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 122, 1, -45.3, -142.1 , 0 );

a = 0.8;

setScaleKey( spep_5 + 0, 1, 0.22 * a, 0.22 * a );
setScaleKey( spep_5 + 2, 1, 0.35 * a, 0.35 * a );
setScaleKey( spep_5 + 4, 1, 0.51 * a, 0.51 * a );
setScaleKey( spep_5 + 6, 1, 0.7 * a, 0.7 * a );
setScaleKey( spep_5 + 8, 1, 0.93 * a, 0.93 * a );
setScaleKey( spep_5 + 10, 1, 1.2 * a, 1.2 * a );
setScaleKey( spep_5 + 12, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_5 + 14, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_5 + 16, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_5 + 18, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_5 + 20, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_5 + 22, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_5 + 24, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_5 + 26, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_5 + 122, 1, 1.6 * a, 1.6 * a );

setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 122, 1, -40 );


-- ** 音 ** --
--playSe( spep_5 + 0, 1025 );
playSe( spep_5 + 15, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 100 );
else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め〜突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 4  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusenx = entryEffectLife( spep_0 + 0,  906, 100, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusenx, 100, 20 );
setEffMoveKey( spep_0 + 0, shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusenx, 1.1, 1.1 );
setEffScaleKey( spep_0 + 100, shuchusenx, 1.1, 1.1 );

setEffRotateKey( spep_0 + 0, shuchusenx, 180 );
setEffRotateKey( spep_0 + 100, shuchusenx, 180 );

setEffAlphaKey( spep_0 + 0, shuchusenx, 255 );
setEffAlphaKey( spep_0 + 100, shuchusenx, 255 );

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +16, 190006, 72, 0x100, -1, 0, 120, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +16,  ctgogo,  120,  510);
setEffMoveKey(  spep_0 +88,  ctgogo,  120,  510);

setEffAlphaKey( spep_0 +16, ctgogo, 0 );
setEffAlphaKey( spep_0 + 17, ctgogo, 255 );
setEffAlphaKey( spep_0 + 18, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 191 );
setEffAlphaKey( spep_0 + 86, ctgogo, 112 );
setEffAlphaKey( spep_0 + 88, ctgogo, 64 );

setEffRotateKey(  spep_0 +16,  ctgogo,  0);
setEffRotateKey(  spep_0 +88,  ctgogo,  0);

setEffScaleKey(  spep_0 +16,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +78,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +88,  ctgogo, -1.07, 1.07 );

--白フェード
entryFade( spep_0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_0 + 0, 8 );
playSe( spep_0 + 16, 1018 );

--次の準備
spep_1 = spep_0+100;

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
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 正面へ突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_2 + 36, tossin, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tossin, -1.0, 1.0 );
setEffScaleKey( spep_2 + 36, tossin, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tossin, 0 );
setEffRotateKey( spep_2 + 36, tossin, 0 );
setEffAlphaKey( spep_2 + 0, tossin, 255 );
setEffAlphaKey( spep_2 + 34, tossin, 255 );
setEffAlphaKey( spep_2 + 35, tossin, 255 );
setEffAlphaKey( spep_2 + 36, tossin, 0 );

--集中線
eshuchusen1 = entryEffectLife( spep_2 + 0,  906, 36, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, eshuchusen1, 36, 20 );
setEffMoveKey( spep_2 + 0, eshuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, eshuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, eshuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_2 + 36, eshuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_2 + 0, eshuchusen1, 180 );
setEffRotateKey( spep_2 + 36, eshuchusen1, 180 );

setEffAlphaKey( spep_2 + 0, eshuchusen1, 255 );
setEffAlphaKey( spep_2 + 34, eshuchusen1, 255 );
setEffAlphaKey( spep_2 + 35, eshuchusen1, 255 );
setEffAlphaKey( spep_2 + 36, eshuchusen1, 0 );

--SE
SE0=playSe( spep_2 + 2, 44 );
SE1=playSe( spep_2 + 2, 1109 );

setSeVolume( spep_2 + 2, 1109, 71 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
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

-- ** 次の準備 ** --
spep_3 = spep_2 + 36;

------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 120, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 120, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 120, fighting_f, 255 );

-- ** エフェクト等 ** --
bg_1 = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, bg_1, 0, 0, 0 );
setEffMoveKey( spep_3 + 120, bg_1, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, bg_1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, bg_1, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bg_1, 0 );
setEffRotateKey( spep_3 + 120, bg_1, 0 );
setEffAlphaKey( spep_3 + 0, bg_1, 255 );
setEffAlphaKey( spep_3 + 120, bg_1, 255 );

--流線
ryusen1 = entryEffectLife( spep_3 + 0,  914, 118, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 118, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 4.3, 1.12 );
setEffScaleKey( spep_3 + 118, ryusen1, 4.3, 1.12 );

setEffRotateKey( spep_3 + 0, ryusen1, 0 );
setEffRotateKey( spep_3 + 118, ryusen1, 0 );

setEffAlphaKey( spep_3 + 0, ryusen1, 36 );
setEffAlphaKey( spep_3 + 2, ryusen1, 91 );
setEffAlphaKey( spep_3 + 4, ryusen1, 145 );
setEffAlphaKey( spep_3 + 6, ryusen1, 200 );
setEffAlphaKey( spep_3 + 8, ryusen1, 255 );
setEffAlphaKey( spep_3 + 118, ryusen1, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 120, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 120, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 120, fighting_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 118, 1, 0 );

changeAnime( spep_3 + 0, 1, 101 );
changeAnime( spep_3-3 + 26, 1, 104 );
changeAnime( spep_3-3 + 52, 1, 108 );
changeAnime( spep_3-3 + 66, 1, 106 );
changeAnime( spep_3-3 + 88, 1, 108 );

setMoveKey( spep_3 + 0, 1, 603.9, -12.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 551.7, -12.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 499.4, -12.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 447.1, -12.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 394.8, -12.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 342.6, -12.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 290.3, -12.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 263.4, -12.1 , 0 );
setMoveKey( spep_3-3 + 16, 1, 236.5, -12.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 209.6, -12.1 , 0 );
setMoveKey( spep_3-3 + 20, 1, 182.6, -12.1 , 0 );
setMoveKey( spep_3-3 + 22, 1, 155.7, -12.1 , 0 );
setMoveKey( spep_3-3 + 25, 1, 128.8, -12.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, 88.1, -6 , 0 );
setMoveKey( spep_3-3 + 28, 1, 109.5, 13.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, 68, -3.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, 93.2, 33.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 94.9, -1.5 , 0 );
setMoveKey( spep_3-3 + 36, 1, 96.6, -0.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, 98.3, 0.8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 98.3, 0.8 , 0 );
setMoveKey( spep_3-3 + 42, 1, 112.5, 4.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 90, 16.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 114.5, -5.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, 108.6, -3.2 , 0 );
setMoveKey( spep_3-3 + 51, 1, 112, -4.6 , 0 );
setMoveKey( spep_3-3 + 52, 1, 75.6, 9.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 84.9, 29.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 61.3, 11.7 , 0 );
setMoveKey( spep_3-3 + 58, 1, 94, 3.5 , 0 );
setMoveKey( spep_3-3 + 60, 1, 84.9, 23.5 , 0 );
setMoveKey( spep_3-3 + 62, 1, 87.1, 27.1 , 0 );
setMoveKey( spep_3-3 + 65, 1, 89.3, 30.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, 48.4, 40.8 , 0 );
setMoveKey( spep_3-3 + 68, 1, 34.4, 47.2 , 0 );
setMoveKey( spep_3-3 + 70, 1, 81.9, 65.7 , 0 );
setMoveKey( spep_3-3 + 72, 1, 57.8, 36.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, 91.7, 55.6 , 0 );
setMoveKey( spep_3-3 + 76, 1, 89.2, 46.6 , 0 );
setMoveKey( spep_3-3 + 78, 1, 103.9, 51.2 , 0 );
setMoveKey( spep_3-3 + 80, 1, 111.3, 48.6 , 0 );
setMoveKey( spep_3-3 + 82, 1, 121.1, 50.9 , 0 );
setMoveKey( spep_3-3 + 84, 1, 131, 51.3 , 0 );
setMoveKey( spep_3-3 + 87, 1, 140.8, 51.6 , 0 );
setMoveKey( spep_3-3 + 88, 1, 104.9, 24.9 , 0 );
setMoveKey( spep_3-3 + 90, 1, 146.3, 55.8 , 0 );
setMoveKey( spep_3-3 + 92, 1, 117.6, 34.6 , 0 );
setMoveKey( spep_3-3 + 94, 1, 135.3, 34.3 , 0 );
setMoveKey( spep_3-3 + 96, 1, 143, 37 , 0 );
setMoveKey( spep_3-3 + 98, 1, 115.8, 16.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, 125.4, 54.6 , 0 );
setMoveKey( spep_3-3 + 102, 1, 253, 51.3 , 0 );
setMoveKey( spep_3-3 + 104, 1, 334.2, 52.5 , 0 );
setMoveKey( spep_3-3 + 106, 1, 408.1, 57.3 , 0 );
setMoveKey( spep_3-3 + 108, 1, 482, 62.1 , 0 );
setMoveKey( spep_3-3 + 110, 1, 605.2, 70.4 , 0 );
setMoveKey( spep_3-3 + 112, 1, 728.3, 78.8 , 0 );
setMoveKey( spep_3-3 + 114, 1, 851.5, 87.1 , 0 );
setMoveKey( spep_3-3 + 116, 1, 974.7, 95.5 , 0 );
setMoveKey( spep_3-3 + 118, 1, 1097.9, 103.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.17, 1.17 );
setScaleKey( spep_3-3 + 118, 1, 1.17, 1.17 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 65, 1, 0 );
setRotateKey( spep_3-3 + 66, 1, -46 );
setRotateKey( spep_3-3 + 68, 1, -42.8 );
setRotateKey( spep_3-3 + 70, 1, -39.5 );
setRotateKey( spep_3-3 + 72, 1, -39.1 );
setRotateKey( spep_3-3 + 74, 1, -38.7 );
setRotateKey( spep_3-3 + 76, 1, -38.3 );
setRotateKey( spep_3-3 + 78, 1, -37.9 );
setRotateKey( spep_3-3 + 80, 1, -37.5 );
setRotateKey( spep_3-3 + 82, 1, -37.1 );
setRotateKey( spep_3-3 + 84, 1, -36.7 );
setRotateKey( spep_3-3 + 87, 1, -36.3 );
setRotateKey( spep_3-3 + 88, 1, 0 );
setRotateKey( spep_3-3 + 90, 1, -2 );
setRotateKey( spep_3-3 + 92, 1, -4.1 );
setRotateKey( spep_3-3 + 94, 1, -6.1 );
setRotateKey( spep_3-3 + 96, 1, -8.2 );
setRotateKey( spep_3-3 + 98, 1, -10.2 );
setRotateKey( spep_3-3 + 100, 1, -10.6 );
setRotateKey( spep_3-3 + 102, 1, -11 );
setRotateKey( spep_3-3 + 104, 1, -11.4 );
setRotateKey( spep_3-3 + 106, 1, -11.8 );
setRotateKey( spep_3-3 + 108, 1, -12.1 );
setRotateKey( spep_3-3 + 110, 1, -12.5 );
setRotateKey( spep_3-3 + 112, 1, -12.9 );
setRotateKey( spep_3-3 + 114, 1, -13.3 );
setRotateKey( spep_3-3 + 116, 1, -13.7 );
setRotateKey( spep_3-3 + 118, 1, -14.1 );

--文字エントリー
ctdogaga = entryEffectLife( spep_3-3 + 26,  10017, 52, 0x100, -1, 0, -95.1, 195.5 );--ドガガガッ
setEffShake( spep_3-3 + 26, ctdogaga, 52, 20 );
setEffMoveKey( spep_3-3 + 26, ctdogaga, -95.1, 195.5 , 0 );
setEffMoveKey( spep_3-3 + 28, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 30, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 32, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 34, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 36, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 38, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 40, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 42, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 44, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 46, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 48, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 50, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 52, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 54, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 56, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 58, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 60, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 62, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 64, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 66, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 68, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 70, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 72, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 74, ctdogaga, -95.7, 201 , 0 );
setEffMoveKey( spep_3-3 + 76, ctdogaga, -91.5, 209.2 , 0 );
setEffMoveKey( spep_3-3 + 78, ctdogaga, -95.7, 201 , 0 );

setEffScaleKey( spep_3-3 + 26, ctdogaga, 1.44, 1.44 );
setEffScaleKey( spep_3-3 + 28, ctdogaga, 2.06, 2.06 );
setEffScaleKey( spep_3-3 + 78, ctdogaga, 2.06, 2.06 );

setEffRotateKey( spep_3-3 + 26, ctdogaga, -30 );
setEffRotateKey( spep_3-3 + 78, ctdogaga, -30 );

setEffAlphaKey( spep_3-3 + 26, ctdogaga, 128 );
setEffAlphaKey( spep_3-3 + 28, ctdogaga, 255 );
setEffAlphaKey( spep_3-3 + 74, ctdogaga, 255 );
setEffAlphaKey( spep_3-3 + 76, ctdogaga, 223 );
setEffAlphaKey( spep_3-3 + 78, ctdogaga, 191 );

--文字エントリー
ctbaki = entryEffectLife( spep_3-3 + 88,  10020, 16, 0x100, -1, 0, 71, 281.8 );--バキッ

setEffMoveKey( spep_3-3 + 88, ctbaki, 71, 281.8 , 0 );
setEffMoveKey( spep_3-3 + 90, ctbaki, 80.3, 295.3 , 0 );
setEffMoveKey( spep_3-3 + 92, ctbaki, 76.3, 306 , 0 );
setEffMoveKey( spep_3-3 + 94, ctbaki, 83.1, 299.4 , 0 );
setEffMoveKey( spep_3-3 + 96, ctbaki, 74.6, 304.8 , 0 );
setEffMoveKey( spep_3-3 + 98, ctbaki, 81.6, 311 , 0 );
setEffMoveKey( spep_3-3 + 100, ctbaki, 78.6, 304.8 , 0 );
setEffMoveKey( spep_3-3 + 102, ctbaki, 79.9, 318 , 0 );
setEffMoveKey( spep_3-3 + 104, ctbaki, 80.3, 320.5 , 0 );

setEffScaleKey( spep_3-3 + 88, ctbaki, 1.14, 1.14 );
setEffScaleKey( spep_3-3 + 90, ctbaki, 1.53, 1.53 );
setEffScaleKey( spep_3-3 + 104, ctbaki, 1.53, 1.53 );

setEffRotateKey( spep_3-3 + 88, ctbaki, -21.5 );
setEffRotateKey( spep_3-3 + 104, ctbaki, -21.5 );

setEffAlphaKey( spep_3-3 + 88, ctbaki, 128 );
setEffAlphaKey( spep_3-3 + 90, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 100, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 102, ctbaki, 128 );
setEffAlphaKey( spep_3-3 + 104, ctbaki, 0 );

--SE
playSe( spep_3 + 24, 1189 );
setSeVolume( spep_3 + 24, 1189, 63 );
playSe( spep_3 + 29, 1009 );
playSe( spep_3 + 44, 1006 );
playSe( spep_3 + 55, 1000 );
playSe( spep_3 + 67, 1009 );
playSe( spep_3 + 84, 1003 );
setSeVolume( spep_3 + 84, 1003, 40 );
playSe( spep_3 + 89, 1009 );
playSe( spep_3 + 89, 1001 );
setSeVolume( spep_3 + 89, 1001, 63 );
playSe( spep_3 + 105, 1232 );

--白フェード
entryFade( spep_3 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 120;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
tossin2 = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tossin2, 0, 0, 0 );
setEffMoveKey( spep_4 + 96, tossin2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tossin2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, tossin2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tossin2, 0 );
setEffRotateKey( spep_4 + 96, tossin2, 0 );
setEffAlphaKey( spep_4 + 0, tossin2, 255 );
setEffAlphaKey( spep_4 + 96, tossin2, 255 );

-- ** エフェクト等 ** --
bg_2 = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, bg_2, 0, 0, 0 );
setEffMoveKey( spep_4 + 96, bg_2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, bg_2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, bg_2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg_2, 0 );
setEffRotateKey( spep_4 + 96, bg_2, 0 );
setEffAlphaKey( spep_4 + 0, bg_2, 255 );
setEffAlphaKey( spep_4 + 96, bg_2, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 94, 1, 0 );

changeAnime( spep_4 + 0, 1, 102 );
changeAnime( spep_4-3 + 58, 1, 107 );

setMoveKey( spep_4 + 0, 1, 1319.5, -509.9 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 1283.3, -491.9 , 0 );
setMoveKey( spep_4-3 + 4, 1, 1247.1, -473.9 , 0 );
setMoveKey( spep_4-3 + 6, 1, 1210.9, -455.9 , 0 );
setMoveKey( spep_4-3 + 8, 1, 1174.7, -437.9 , 0 );
setMoveKey( spep_4-3 + 10, 1, 1138.4, -419.9 , 0 );
setMoveKey( spep_4-3 + 12, 1, 1102.2, -401.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 1066, -383.9 , 0 );
setMoveKey( spep_4-3 + 16, 1, 1029.8, -365.9 , 0 );
setMoveKey( spep_4-3 + 18, 1, 993.6, -348 , 0 );
setMoveKey( spep_4-3 + 20, 1, 957.4, -330 , 0 );
setMoveKey( spep_4-3 + 22, 1, 921.2, -312 , 0 );
setMoveKey( spep_4-3 + 24, 1, 884.9, -294 , 0 );
setMoveKey( spep_4-3 + 26, 1, 848.7, -276 , 0 );
setMoveKey( spep_4-3 + 28, 1, 812.5, -258 , 0 );
setMoveKey( spep_4-3 + 30, 1, 776.3, -240 , 0 );
setMoveKey( spep_4-3 + 32, 1, 740.1, -222 , 0 );
setMoveKey( spep_4-3 + 34, 1, 703.9, -204 , 0 );
setMoveKey( spep_4-3 + 36, 1, 667.7, -186 , 0 );
setMoveKey( spep_4-3 + 38, 1, 631.4, -168 , 0 );
setMoveKey( spep_4-3 + 40, 1, 595.2, -150 , 0 );
setMoveKey( spep_4-3 + 42, 1, 540.3, -130.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 485.4, -111.8 , 0 );
setMoveKey( spep_4-3 + 46, 1, 430.5, -92.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 375.6, -73.6 , 0 );
setMoveKey( spep_4-3 + 50, 1, 320.7, -54.5 , 0 );
setMoveKey( spep_4-3 + 52, 1, 265.8, -35.4 , 0 );
setMoveKey( spep_4-3 + 54, 1, 210.9, -16.3 , 0 );
setMoveKey( spep_4-3 + 57, 1, 168.2, -12.9 , 0 );
setMoveKey( spep_4-3 + 58, 1, 60, -67.5 , 0 );
setMoveKey( spep_4-3 + 60, 1, 47.5, -75.6 , 0 );
setMoveKey( spep_4-3 + 62, 1, 96.8, -107.7 , 0 );
setMoveKey( spep_4-3 + 64, 1, 99.8, -150.6 , 0 );
setMoveKey( spep_4-3 + 66, 1, 173.9, -196.3 , 0 );
setMoveKey( spep_4-3 + 68, 1, 324.7, -475.4 , 0 );
setMoveKey( spep_4-3 + 70, 1, 505.4, -714.9 , 0 );
setMoveKey( spep_4-3 + 72, 1, 624.9, -787.4 , 0 );
setMoveKey( spep_4-3 + 74, 1, 744.5, -859.9 , 0 );
setMoveKey( spep_4-3 + 76, 1, 864.1, -932.3 , 0 );
setMoveKey( spep_4-3 + 78, 1, 983.6, -1004.8 , 0 );
setMoveKey( spep_4-3 + 80, 1, 1103.2, -1077.3 , 0 );
setMoveKey( spep_4-3 + 82, 1, 1222.8, -1149.8 , 0 );
setMoveKey( spep_4-3 + 84, 1, 1251.1, -1162.1 , 0 );
setMoveKey( spep_4-3 + 86, 1, 1279.3, -1174.4 , 0 );
setMoveKey( spep_4-3 + 88, 1, 1307.6, -1186.6 , 0 );
setMoveKey( spep_4-3 + 90, 1, 1335.9, -1198.9 , 0 );
setMoveKey( spep_4-3 + 92, 1, 1364.2, -1211.2 , 0 );
setMoveKey( spep_4-3 + 94, 1, 1392.4, -1223.5 , 0 );

setScaleKey( spep_4 + 0, 1, 3.29, 3.29 );
--setScaleKey( spep_4-3 + 2, 1, 3.27, 3.27 );
setScaleKey( spep_4-3 + 4, 1, 3.25, 3.25 );
setScaleKey( spep_4-3 + 6, 1, 3.23, 3.23 );
setScaleKey( spep_4-3 + 8, 1, 3.21, 3.21 );
setScaleKey( spep_4-3 + 10, 1, 3.19, 3.19 );
setScaleKey( spep_4-3 + 12, 1, 3.18, 3.18 );
setScaleKey( spep_4-3 + 14, 1, 3.16, 3.16 );
setScaleKey( spep_4-3 + 16, 1, 3.14, 3.14 );
setScaleKey( spep_4-3 + 18, 1, 3.12, 3.12 );
setScaleKey( spep_4-3 + 20, 1, 3.1, 3.1 );
setScaleKey( spep_4-3 + 22, 1, 3.08, 3.08 );
setScaleKey( spep_4-3 + 24, 1, 3.06, 3.06 );
setScaleKey( spep_4-3 + 26, 1, 3.04, 3.04 );
setScaleKey( spep_4-3 + 28, 1, 3.03, 3.03 );
setScaleKey( spep_4-3 + 30, 1, 3.01, 3.01 );
setScaleKey( spep_4-3 + 32, 1, 2.99, 2.99 );
setScaleKey( spep_4-3 + 34, 1, 2.97, 2.97 );
setScaleKey( spep_4-3 + 36, 1, 2.95, 2.95 );
setScaleKey( spep_4-3 + 38, 1, 2.93, 2.93 );
setScaleKey( spep_4-3 + 40, 1, 2.91, 2.91 );
setScaleKey( spep_4-3 + 42, 1, 2.79, 2.79 );
setScaleKey( spep_4-3 + 44, 1, 2.67, 2.67 );
setScaleKey( spep_4-3 + 46, 1, 2.54, 2.54 );
setScaleKey( spep_4-3 + 48, 1, 2.42, 2.42 );
setScaleKey( spep_4-3 + 50, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 52, 1, 2.17, 2.17 );
setScaleKey( spep_4-3 + 54, 1, 2.05, 2.05 );
setScaleKey( spep_4-3 + 57, 1, 2.01, 2.01 );
a=0.1;
setScaleKey( spep_4-3 + 58, 1, 0.84+a, 0.84+a );
setScaleKey( spep_4-3 + 60, 1, 0.8+a, 0.8+a );
setScaleKey( spep_4-3 + 62, 1, 1+a, 1+a );
setScaleKey( spep_4-3 + 64, 1, 1.13+a, 1.13+a );
setScaleKey( spep_4-3 + 66, 1, 1.25+a, 1.25+a );
setScaleKey( spep_4-3 + 68, 1, 1.38+a, 1.38+a );
setScaleKey( spep_4-3 + 70, 1, 1.44+a, 1.44+a );
setScaleKey( spep_4-3 + 72, 1, 1.5+a, 1.5+a );
setScaleKey( spep_4-3 + 74, 1, 1.56+a, 1.56+a );
setScaleKey( spep_4-3 + 76, 1, 1.61+a, 1.61+a );
setScaleKey( spep_4-3 + 78, 1, 1.67+a, 1.67+a );
setScaleKey( spep_4-3 + 80, 1, 1.73+a, 1.73+a );
setScaleKey( spep_4-3 + 82, 1, 1.79+a, 1.79+a );
setScaleKey( spep_4-3 + 84, 1, 1.78+a, 1.78+a );
setScaleKey( spep_4-3 + 90, 1, 1.78+a, 1.78+a );
setScaleKey( spep_4-3 + 92, 1, 1.77+a, 1.77+a );
setScaleKey( spep_4-3 + 94, 1, 1.77+a, 1.77+a );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 57, 1, 0 );
setRotateKey( spep_4-3 + 58, 1, -21 );
setRotateKey( spep_4-3 + 94, 1, -21 );

--文字エントリー
ctdon = entryEffectLife( spep_4-3 + 58,  10019, 24, 0x100, -1, 0, 117.7, 340.7 );--ドンッ

setEffMoveKey( spep_4-3 + 58, ctdon, 117.7, 340.7 , 0 );
setEffMoveKey( spep_4-3 + 60, ctdon, 136.1, 349.8 , 0 );
setEffMoveKey( spep_4-3 + 62, ctdon, 131.8, 362.4 , 0 );
setEffMoveKey( spep_4-3 + 64, ctdon, 139.1, 348.6 , 0 );
setEffMoveKey( spep_4-3 + 66, ctdon, 127.4, 354.6 , 0 );
setEffMoveKey( spep_4-3 + 68, ctdon, 137.6, 358.9 , 0 );
setEffMoveKey( spep_4-3 + 70, ctdon, 131.2, 347.3 , 0 );
setEffMoveKey( spep_4-3 + 72, ctdon, 134.8, 362.8 , 0 );
setEffMoveKey( spep_4-3 + 74, ctdon, 134.8, 351.4 , 0 );
setEffMoveKey( spep_4-3 + 76, ctdon, 130.4, 359.1 , 0 );
setEffMoveKey( spep_4-3 + 78, ctdon, 131.9, 351.7 , 0 );
setEffMoveKey( spep_4-3 + 80, ctdon, 136.4, 358.8 , 0 );
setEffMoveKey( spep_4-3 + 82, ctdon, 136.5, 359.1 , 0 );

setEffScaleKey( spep_4-3 + 58, ctdon, 1.38, 1.38 );
setEffScaleKey( spep_4-3 + 60, ctdon, 2.15, 2.15 );
setEffScaleKey( spep_4-3 + 62, ctdon, 2.16, 2.16 );
setEffScaleKey( spep_4-3 + 64, ctdon, 2.18, 2.18 );
setEffScaleKey( spep_4-3 + 66, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_4-3 + 68, ctdon, 2.21, 2.21 );
setEffScaleKey( spep_4-3 + 70, ctdon, 2.23, 2.23 );
setEffScaleKey( spep_4-3 + 72, ctdon, 2.24, 2.24 );
setEffScaleKey( spep_4-3 + 74, ctdon, 2.26, 2.26 );
setEffScaleKey( spep_4-3 + 76, ctdon, 2.27, 2.27 );
setEffScaleKey( spep_4-3 + 78, ctdon, 2.29, 2.29 );
setEffScaleKey( spep_4-3 + 80, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_4-3 + 82, ctdon, 2.32, 2.32 );

setEffRotateKey( spep_4-3 + 58, ctdon, -29.8 );
setEffRotateKey( spep_4-3 + 82, ctdon, -29.8 );

setEffAlphaKey( spep_4-3 + 58, ctdon, 128 );
setEffAlphaKey( spep_4-3 + 60, ctdon, 255 );
setEffAlphaKey( spep_4-3 + 78, ctdon, 255 );
setEffAlphaKey( spep_4-3 + 80, ctdon, 128 );
setEffAlphaKey( spep_4-3 + 82, ctdon, 0 );

--SE
playSe( spep_4 + 4, 1035 );
setSeVolume( spep_4 + 4, 1035, 79 );
se_0009 = playSe( spep_4 + 33, 9 );
se_1183 = playSe( spep_4 + 33, 1183 );
setSeVolume( spep_4 + 33, 1183, 158 );
playSe( spep_4 + 64, 1110 );
setSeVolume( spep_4 + 64, 1110, 71 );
playSe( spep_4 + 64, 1010 );

stopSe( spep_4 + 68, se_0009, 0 );
stopSe( spep_4 + 68, se_1183, 0 );

--白フェード
entryFade( spep_4 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- ガッ
------------------------------------------------------
-- ** エフェクト等 ** --
bg_3 = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg_3, 0, 0, 0 );
setEffMoveKey( spep_5 + 114, bg_3, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, bg_3, 1.0, 1.0 );
setEffScaleKey( spep_5 + 114, bg_3, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg_3, 0 );
setEffRotateKey( spep_5 + 114, bg_3, 0 );
setEffAlphaKey( spep_5 + 0, bg_3, 255 );
setEffAlphaKey( spep_5 + 114, bg_3, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen4, 0 );
setEffRotateKey( spep_5 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen5, 0 );
setEffRotateKey( spep_5 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 122, 1, -45.3, -142.1 , 0 );

a = 0.8;

setScaleKey( spep_5 + 0, 1, 0.22 * a, 0.22 * a );
setScaleKey( spep_5 + 2, 1, 0.35 * a, 0.35 * a );
setScaleKey( spep_5 + 4, 1, 0.51 * a, 0.51 * a );
setScaleKey( spep_5 + 6, 1, 0.7 * a, 0.7 * a );
setScaleKey( spep_5 + 8, 1, 0.93 * a, 0.93 * a );
setScaleKey( spep_5 + 10, 1, 1.2 * a, 1.2 * a );
setScaleKey( spep_5 + 12, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_5 + 14, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_5 + 16, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_5 + 18, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_5 + 20, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_5 + 22, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_5 + 24, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_5 + 26, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_5 + 122, 1, 1.6 * a, 1.6 * a );

setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 122, 1, -40 );


-- ** 音 ** --
--playSe( spep_5 + 0, 1025 );
playSe( spep_5 + 15, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 100 );

end
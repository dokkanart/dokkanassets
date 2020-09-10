--1019810:超サイヤ人ゴッドSS孫悟空_かめはめ波
--sp_effect_a1_00237

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
SP_01=	155444	;--	構え〜溜め
SP_02=	155445	;--	発射
SP_03=	155446	;--	敵へのビーム・手前
SP_04=	155447	;--	敵へのビーム・奥
SP_05=	155448	;--	締め背景

--エフェクト(てき)
SP_01x=	155449	;--	構え〜溜め	(敵)
SP_02x=	155450	;--	発射	(敵)
SP_03x=	155446	;--	敵へのビーム・手前	
SP_04x=	155447	;--	敵へのビーム・奥	
SP_05x=	155448	;--	締め背景	

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
-- 構え〜溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01,150, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 150, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 150, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 150, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+8 + 52, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+8 + 52, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

ctgogo = entryEffectLife( spep_0+8 + 68,  190006, 68, 0x100, -1, 0, 80.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0+8 + 68, ctgogo, 68, 10 );

setEffMoveKey( spep_0+8 + 68, ctgogo, 80.5, 521.8 , 0 );
setEffMoveKey( spep_0+8 + 136, ctgogo, 80.5, 515.5 , 0 );

setEffScaleKey( spep_0+8 + 68, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0+8 + 128, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0+8 + 130, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0+8 + 132, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0+8 + 134, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0+8 + 136, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0+8 + 68, ctgogo, 0 );
setEffRotateKey( spep_0+8 + 136, ctgogo, 0 );

setEffAlphaKey( spep_0+8 + 68, ctgogo, 255 );
setEffAlphaKey( spep_0+8 + 136, ctgogo, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0-3 + 22,  10013, 40, 0x100, -1, 0, 20.1, 249.8 ); --ズズズンッ
setEffShake( spep_0-3 + 22, ctzuzuzun, 40 ,10 );
setEffMoveKey( spep_0-3 + 22, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0-3 + 24, ctzuzuzun, 29.2, 317.4 , 0 );
setEffMoveKey( spep_0-3 + 26, ctzuzuzun, 51.2, 394.7 , 0 );
setEffMoveKey( spep_0-3 + 28, ctzuzuzun, 38.3, 377.6 , 0 );
setEffMoveKey( spep_0-3 + 30, ctzuzuzun, 43.3, 371.9 , 0 );
setEffMoveKey( spep_0-3 + 32, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 34, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 36, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 38, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 40, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 42, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 44, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 46, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 48, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 50, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 52, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 54, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 56, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 58, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 62, ctzuzuzun, 30.9, 354.4 , 0 );

setEffScaleKey( spep_0-3 + 22, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0-3 + 24, ctzuzuzun, 1.99, 1.99 );
setEffScaleKey( spep_0-3 + 26, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0-3 + 28, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0-3 + 62, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0-3 + 22, ctzuzuzun, -5 );
setEffRotateKey( spep_0-3 + 62, ctzuzuzun, -5 );


setEffAlphaKey( spep_0-3 + 22, ctzuzuzun, 255 );
setEffAlphaKey( spep_0-3 + 50, ctzuzuzun, 255 );
setEffAlphaKey( spep_0-3 + 52, ctzuzuzun, 212 );
setEffAlphaKey( spep_0-3 + 54, ctzuzuzun, 170 );
setEffAlphaKey( spep_0-3 + 56, ctzuzuzun, 128 );
setEffAlphaKey( spep_0-3 + 58, ctzuzuzun, 85 );
setEffAlphaKey( spep_0-3 + 60, ctzuzuzun, 43 );
setEffAlphaKey( spep_0-3 + 62, ctzuzuzun, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 20,  906, 128 +3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 20, shuchusen1, 128 +3 ,20 );
setEffMoveKey( spep_0 -3 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0  + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 20, shuchusen1, 1.21, 2.03 );
setEffScaleKey( spep_0  + 148, shuchusen1, 1.21, 2.03 );

setEffRotateKey( spep_0 -3 + 20, shuchusen1, 180 );
setEffRotateKey( spep_0  + 148, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_0  + 148, shuchusen1, 255 );


-- ** 音 ** --
playSe( spep_0 + 24, SE_02 );  --ため
playSe( spep_0 + 44, SE_02 );  --ため
playSe( spep_0 + 68, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 16, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 152, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1=spep_0+150;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_1+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffectLife( spep_2 + 0, SP_02, 90, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, beam, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 90, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 90, beam, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 20,  10012, 50, 0x100, -1, 0, 9.6, 282.4 );--ズオッ
setEffShake( spep_2-3 + 20, ctzuo, 50, 10 );
setEffMoveKey( spep_2-3 + 20, ctzuo, 9.6, 282.4 , 0 );
setEffMoveKey( spep_2-3 + 22, ctzuo, 32.9, 331.8 , 0 );
setEffMoveKey( spep_2-3 + 24, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 26, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 28, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 52, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 54, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 56, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 58, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 60, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 62, ctzuo, 71.3, 376.4 , 0 );
setEffMoveKey( spep_2-3 + 64, ctzuo, 64.6, 401.1 , 0 );
setEffMoveKey( spep_2-3 + 66, ctzuo, 109.1, 374.6 , 0 );
setEffMoveKey( spep_2-3 + 68, ctzuo, 92.7, 409 , 0 );
setEffMoveKey( spep_2-3 + 70, ctzuo, 106.9, 412.9 , 0 );

setEffScaleKey( spep_2-3 + 20, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-3 + 22, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2-3 + 24, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-3 + 60, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-3 + 62, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2-3 + 64, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2-3 + 66, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2-3 + 68, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2-3 + 70, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2-3 + 20, ctzuo, 9.7 );
setEffRotateKey( spep_2-3 + 22, ctzuo, 18.4 );
setEffRotateKey( spep_2-3 + 24, ctzuo, 27.2 );
setEffRotateKey( spep_2-3 + 70, ctzuo, 27.2 );

setEffAlphaKey( spep_2-3 + 20, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 60, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 62, ctzuo, 204 );
setEffAlphaKey( spep_2-3 + 64, ctzuo, 153 );
setEffAlphaKey( spep_2-3 + 66, ctzuo, 102 );
setEffAlphaKey( spep_2-3 + 68, ctzuo, 51 );
setEffAlphaKey( spep_2-3 + 70, ctzuo, 0 );


-- ** 音 ** --
playSe( spep_2 + 16, SE_06 );  --ズオッ

-- ** ホワイトフェード ** --
entryFade( spep_2 + 14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 82, 4,6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_3=spep_2+90;
------------------------------------------------------
-- 構え〜溜め
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_3 + 0, SP_03, 100, 0x100, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 100, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 100, hit_f, 255 );


-- ** エフェクト等 ** --
hit_b = entryEffectLife( spep_3 + 0, SP_04, 100, 0x80, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 100, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 100, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 52, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 30, 1, 108 );

setMoveKey( spep_3 + 0, 1, -13.9, -81.7 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -6.8, -67.7 , 0 );
setMoveKey( spep_3-3 + 4, 1, 9, -44.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 17.5, -31.5 , 0 );
setMoveKey( spep_3-3 + 8, 1, 34.6, -1.3 , 0 );
setMoveKey( spep_3-3 + 10, 1, 44.4, 14.5 , 0 );
setMoveKey( spep_3-3 + 12, 1, 62.8, 47.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 73.8, 70.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 84.2, 85.5 , 0 );
setMoveKey( spep_3-3 + 18, 1, 86.8, 93.1 , 0 );
setMoveKey( spep_3-3 + 20, 1, 97.5, 109.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 96.5, 113.9 , 0 );

setScaleKey( spep_3 + 0, 1, 3.09, 3.09 );
--setScaleKey( spep_3-3 + 2, 1, 2.95, 2.95 );
setScaleKey( spep_3-3 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_3-3 + 6, 1, 2.62, 2.62 );
setScaleKey( spep_3-3 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_3-3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 12, 1, 2.01, 2.01 );
setScaleKey( spep_3-3 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_3-3 + 16, 1, 1.71, 1.71 );
setScaleKey( spep_3-3 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 20, 1, 1.58, 1.58 );
setScaleKey( spep_3-3 + 22, 1, 1.51, 1.51 );

setRotateKey( spep_3 + 0, 1, -2 );
--setRotateKey( spep_3-3 + 2, 1, -2.1 );
setRotateKey( spep_3-3 + 4, 1, -2.3 );
setRotateKey( spep_3-3 + 6, 1, -2.4 );
setRotateKey( spep_3-3 + 8, 1, -2.5 );
setRotateKey( spep_3-3 + 10, 1, -2.6 );
setRotateKey( spep_3-3 + 12, 1, -2.8 );
setRotateKey( spep_3-3 + 14, 1, -2.9 );
setRotateKey( spep_3-3 + 16, 1, -3 );
setRotateKey( spep_3-3 + 18, 1, -3.1 );
setRotateKey( spep_3-3 + 20, 1, -3.3 );
setRotateKey( spep_3-3 + 22, 1, -3.4 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,96.5, 113.9 , 0 );
    setScaleKey(SP_dodge , 1, 1.51, 1.51);
    setRotateKey(SP_dodge,   1, -3.4 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1,96.5, 113.9 , 0 );
    setScaleKey(SP_dodge+10 , 1, 1.51, 1.51);
    setRotateKey(SP_dodge+10,   1, -3.4 );
   

    
    setDisp(SP_dodge+9, 0, 0);    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    --------------------------------------
    --回避しなかった場合
    --------------------------------------
setMoveKey( spep_3-3 + 24, 1, 111.6, 135.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, 114.8, 144.7 , 0 );
setMoveKey( spep_3-3 + 29, 1, 126.3, 162.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, 157.2, 198.6 , 0 );
setMoveKey( spep_3-3 + 32, 1, 159, 191.9 , 0 );
setMoveKey( spep_3-3 + 34, 1, 121.5, 181.9 , 0 );
setMoveKey( spep_3-3 + 36, 1, 144.8, 211 , 0 );
setMoveKey( spep_3-3 + 38, 1, 138.7, 208.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, 146, 215.8 , 0 );
setMoveKey( spep_3-3 + 42, 1, 141.3, 210.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 144.7, 213.5 , 0 );
setMoveKey( spep_3-3 + 46, 1, 136, 204.4 , 0 );
setMoveKey( spep_3-3 + 48, 1, 143.4, 211.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 138.7, 206.1 , 0 );
setMoveKey( spep_3-3 + 52, 1, 142.1, 208.9 , 0 );
setMoveKey( spep_3 + 52, 1, 133.5, 199.8 , 0 );

setScaleKey( spep_3-3 + 24, 1, 1.43, 1.43 );
setScaleKey( spep_3-3 + 26, 1, 1.35, 1.35 );
setScaleKey( spep_3-3 + 29, 1, 1.26, 1.26 );
setScaleKey( spep_3-3 + 30, 1, 1.44, 1.44 );
setScaleKey( spep_3-3 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_3-3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_3-3 + 36, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_3-3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_3-3 + 42, 1, 0.27, 0.27 );
setScaleKey( spep_3-3 + 50, 1, 0.27, 0.27 );
setScaleKey( spep_3-3 + 52, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 52, 1, 0.26, 0.26 );

setRotateKey( spep_3-3 + 24, 1, -3.5 );
setRotateKey( spep_3-3 + 26, 1, -3.6 );
setRotateKey( spep_3-3 + 29, 1, -3.8 );
setRotateKey( spep_3-3 + 30, 1, 21 );
setRotateKey( spep_3-3 + 32, 1, 18.5 );
setRotateKey( spep_3-3 + 34, 1, 16.1 );
setRotateKey( spep_3-3 + 36, 1, 13.8 );
setRotateKey( spep_3-3 + 38, 1, 11.6 );
setRotateKey( spep_3-3 + 40, 1, 11.4 );
setRotateKey( spep_3-3 + 42, 1, 11.3 );
setRotateKey( spep_3-3 + 44, 1, 11.1 );
setRotateKey( spep_3-3 + 46, 1, 10.9 );
setRotateKey( spep_3-3 + 48, 1, 10.8 );
setRotateKey( spep_3-3 + 50, 1, 10.6 );
setRotateKey( spep_3-3 + 52, 1, 10.4 );
setRotateKey( spep_3 + 52, 1, 10.3 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_3-4 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313 );

setEffShake( spep_3-4 + 30, ctzuo2, 20, 10 );

setEffMoveKey( spep_3-4 + 30, ctzuo2, -17.7, 313 , 0 );
setEffMoveKey( spep_3-4 + 32, ctzuo2, -35.7, 356 , 0 );
setEffMoveKey( spep_3-4 + 34, ctzuo2, -81.2, 407.4 , 0 );
setEffMoveKey( spep_3-4 + 36, ctzuo2, -64.3, 405.9 , 0 );
setEffMoveKey( spep_3-4 + 38, ctzuo2, -92.6, 407.5 , 0 );
setEffMoveKey( spep_3-4 + 40, ctzuo2, -75.6, 406.3 , 0 );
setEffMoveKey( spep_3-4 + 42, ctzuo2, -103.9, 407.7 , 0 );
setEffMoveKey( spep_3-4 + 44, ctzuo2, -87, 406.6 , 0 );
setEffMoveKey( spep_3-4 + 46, ctzuo2, -118.9, 421.2 , 0 );
setEffMoveKey( spep_3-4 + 48, ctzuo2, -82.5, 426.4 , 0 );
setEffMoveKey( spep_3-4 + 50, ctzuo2, -79.3, 433.2 , 0 );

setEffScaleKey( spep_3-4 + 30, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_3-4 + 32, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_3-4 + 34, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3-4 + 44, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3-4 + 46, ctzuo2, 4.09, 4.09 );
setEffScaleKey( spep_3-4 + 48, ctzuo2, 5.46, 5.46 );
setEffScaleKey( spep_3-4 + 50, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_3-4 + 30, ctzuo2, 6.9 );
setEffRotateKey( spep_3-4 + 32, ctzuo2, -3.4 );
setEffRotateKey( spep_3-4 + 34, ctzuo2, -13.5 );
setEffRotateKey( spep_3-4 + 36, ctzuo2, -13.8 );
setEffRotateKey( spep_3-4 + 38, ctzuo2, -14.1 );
setEffRotateKey( spep_3-4 + 40, ctzuo2, -14.4 );
setEffRotateKey( spep_3-4 + 42, ctzuo2, -14.7 );
setEffRotateKey( spep_3-4 + 44, ctzuo2, -15 );
setEffRotateKey( spep_3-4 + 46, ctzuo2, -11.8 );
setEffRotateKey( spep_3-4 + 48, ctzuo2, -8.5 );
setEffRotateKey( spep_3-4 + 50, ctzuo2, -5.2 );

setEffAlphaKey( spep_3-4 + 30, ctzuo2, 0 );
setEffAlphaKey( spep_3-4 + 31, ctzuo2, 255 );
setEffAlphaKey( spep_3-4 + 32, ctzuo2, 255 );
setEffAlphaKey( spep_3-4 + 44, ctzuo2, 255 );
setEffAlphaKey( spep_3-4 + 46, ctzuo2, 170 );
setEffAlphaKey( spep_3-4 + 48, ctzuo2, 85 );
setEffAlphaKey( spep_3-4 + 50, ctzuo2, 0 );

-- ** 音 ** --
playSe( spep_3+ 26, SE_07 );  --ズオッ

--白フェード
entryFade( spep_3 + 92, 4,12, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
bg = entryEffectLife( spep_4 + 0, SP_05, 100, 0x80, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_4 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bg, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 100, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 100, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

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

shuchusen5 = entryEffectLife( spep_4 + 0,  1657, 100, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 0 );
setEffAlphaKey( spep_4 + 12, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 13, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 0,  10005, 100, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 0, ctga, 28, 20 );

setEffMoveKey( spep_4 + 0, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 0, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 0, ctga, -10.9 );
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
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 0, ctga, 0 );
setEffAlphaKey( spep_4 + 12, ctga, 0 );
setEffAlphaKey( spep_4 + 13, ctga, 0 );
setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

--敵
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_4,    1,  100,  0,   0);
setScaleKey( spep_4,    1,  1.0, 1.0);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
--entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え〜溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01x,150, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 150, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 150, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 150, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+8 + 52, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+8 + 52, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

ctgogo = entryEffectLife( spep_0+8 + 68,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0+8 + 68, ctgogo, 68, 10 );

setEffMoveKey( spep_0+8 + 68, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0+8 + 136, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0+8 + 68, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0+8 + 128, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0+8 + 130, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0+8 + 132, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0+8 + 134, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0+8 + 136, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0+8 + 68, ctgogo, 0 );
setEffRotateKey( spep_0+8 + 136, ctgogo, 0 );

setEffAlphaKey( spep_0+8 + 68, ctgogo, 255 );
setEffAlphaKey( spep_0+8 + 136, ctgogo, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0-3 + 22,  10013, 40, 0x100, -1, 0, 20.1, 249.8 ); --ズズズンッ
setEffShake( spep_0-3 + 22, ctzuzuzun, 40 ,10 );
setEffMoveKey( spep_0-3 + 22, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0-3 + 24, ctzuzuzun, 29.2, 317.4 , 0 );
setEffMoveKey( spep_0-3 + 26, ctzuzuzun, 51.2, 394.7 , 0 );
setEffMoveKey( spep_0-3 + 28, ctzuzuzun, 38.3, 377.6 , 0 );
setEffMoveKey( spep_0-3 + 30, ctzuzuzun, 43.3, 371.9 , 0 );
setEffMoveKey( spep_0-3 + 32, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 34, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 36, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 38, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 40, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 42, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 44, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 46, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 48, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 50, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 52, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 54, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 56, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0-3 + 58, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0-3 + 62, ctzuzuzun, 30.9, 354.4 , 0 );

setEffScaleKey( spep_0-3 + 22, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0-3 + 24, ctzuzuzun, 1.99, 1.99 );
setEffScaleKey( spep_0-3 + 26, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0-3 + 28, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0-3 + 62, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0-3 + 22, ctzuzuzun, 0 );
setEffRotateKey( spep_0-3 + 62, ctzuzuzun, 0 );


setEffAlphaKey( spep_0-3 + 22, ctzuzuzun, 255 );
setEffAlphaKey( spep_0-3 + 50, ctzuzuzun, 255 );
setEffAlphaKey( spep_0-3 + 52, ctzuzuzun, 212 );
setEffAlphaKey( spep_0-3 + 54, ctzuzuzun, 170 );
setEffAlphaKey( spep_0-3 + 56, ctzuzuzun, 128 );
setEffAlphaKey( spep_0-3 + 58, ctzuzuzun, 85 );
setEffAlphaKey( spep_0-3 + 60, ctzuzuzun, 43 );
setEffAlphaKey( spep_0-3 + 62, ctzuzuzun, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 20,  906, 128 +3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 20, shuchusen1, 128 +3 ,20 );
setEffMoveKey( spep_0 -3 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0  + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 20, shuchusen1, 1.21, 2.03 );
setEffScaleKey( spep_0  + 148, shuchusen1, 1.21, 2.03 );

setEffRotateKey( spep_0 -3 + 20, shuchusen1, 180 );
setEffRotateKey( spep_0  + 148, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_0  + 148, shuchusen1, 255 );


-- ** 音 ** --
playSe( spep_0 + 24, SE_02 );  --ため
playSe( spep_0 + 44, SE_02 );  --ため
playSe( spep_0 + 68, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 16, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 152, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1=spep_0+150;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** エフェクト等 ** --
entryFade(spep_1+84,4,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffectLife( spep_2 + 0, SP_02x, 90, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, beam, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 90, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 90, beam, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 20,  10012, 50, 0x100, -1, 0, 9.6, 282.4 );--ズオッ
setEffShake( spep_2-3 + 20, ctzuo, 50, 10 );
setEffMoveKey( spep_2-3 + 20, ctzuo, 9.6, 282.4 , 0 );
setEffMoveKey( spep_2-3 + 22, ctzuo, 32.9, 331.8 , 0 );
setEffMoveKey( spep_2-3 + 24, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 26, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 28, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 38, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 40, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 42, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 44, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 46, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 48, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 50, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 52, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 54, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 56, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 58, ctzuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_2-3 + 60, ctzuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_2-3 + 62, ctzuo, 71.3, 376.4 , 0 );
setEffMoveKey( spep_2-3 + 64, ctzuo, 64.6, 401.1 , 0 );
setEffMoveKey( spep_2-3 + 66, ctzuo, 109.1, 374.6 , 0 );
setEffMoveKey( spep_2-3 + 68, ctzuo, 92.7, 409 , 0 );
setEffMoveKey( spep_2-3 + 70, ctzuo, 106.9, 412.9 , 0 );

setEffScaleKey( spep_2-3 + 20, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-3 + 22, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2-3 + 24, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-3 + 60, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-3 + 62, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2-3 + 64, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2-3 + 66, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2-3 + 68, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2-3 + 70, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2-3 + 20, ctzuo, 9.7 );
setEffRotateKey( spep_2-3 + 22, ctzuo, 18.4 );
setEffRotateKey( spep_2-3 + 24, ctzuo, 27.2 );
setEffRotateKey( spep_2-3 + 70, ctzuo, 27.2 );

setEffAlphaKey( spep_2-3 + 20, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 60, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 62, ctzuo, 204 );
setEffAlphaKey( spep_2-3 + 64, ctzuo, 153 );
setEffAlphaKey( spep_2-3 + 66, ctzuo, 102 );
setEffAlphaKey( spep_2-3 + 68, ctzuo, 51 );
setEffAlphaKey( spep_2-3 + 70, ctzuo, 0 );


-- ** 音 ** --
playSe( spep_2 + 16, SE_06 );  --ズオッ

-- ** ホワイトフェード ** --
entryFade( spep_2 + 14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 82, 4,6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_3=spep_2+90;
------------------------------------------------------
-- 構え〜溜め
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_3 + 0, SP_03x, 100, 0x100, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 100, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 100, hit_f, 255 );


-- ** エフェクト等 ** --
hit_b = entryEffectLife( spep_3 + 0, SP_04x, 100, 0x80, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 100, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 100, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 52, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 30, 1, 108 );

setMoveKey( spep_3 + 0, 1, -13.9, -81.7 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -6.8, -67.7 , 0 );
setMoveKey( spep_3-3 + 4, 1, 9, -44.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 17.5, -31.5 , 0 );
setMoveKey( spep_3-3 + 8, 1, 34.6, -1.3 , 0 );
setMoveKey( spep_3-3 + 10, 1, 44.4, 14.5 , 0 );
setMoveKey( spep_3-3 + 12, 1, 62.8, 47.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 73.8, 70.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 84.2, 85.5 , 0 );
setMoveKey( spep_3-3 + 18, 1, 86.8, 93.1 , 0 );
setMoveKey( spep_3-3 + 20, 1, 97.5, 109.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 96.5, 113.9 , 0 );

setScaleKey( spep_3 + 0, 1, 3.09, 3.09 );
--setScaleKey( spep_3-3 + 2, 1, 2.95, 2.95 );
setScaleKey( spep_3-3 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_3-3 + 6, 1, 2.62, 2.62 );
setScaleKey( spep_3-3 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_3-3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 12, 1, 2.01, 2.01 );
setScaleKey( spep_3-3 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_3-3 + 16, 1, 1.71, 1.71 );
setScaleKey( spep_3-3 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 20, 1, 1.58, 1.58 );
setScaleKey( spep_3-3 + 22, 1, 1.51, 1.51 );

setRotateKey( spep_3 + 0, 1, -2 );
--setRotateKey( spep_3-3 + 2, 1, -2.1 );
setRotateKey( spep_3-3 + 4, 1, -2.3 );
setRotateKey( spep_3-3 + 6, 1, -2.4 );
setRotateKey( spep_3-3 + 8, 1, -2.5 );
setRotateKey( spep_3-3 + 10, 1, -2.6 );
setRotateKey( spep_3-3 + 12, 1, -2.8 );
setRotateKey( spep_3-3 + 14, 1, -2.9 );
setRotateKey( spep_3-3 + 16, 1, -3 );
setRotateKey( spep_3-3 + 18, 1, -3.1 );
setRotateKey( spep_3-3 + 20, 1, -3.3 );
setRotateKey( spep_3-3 + 22, 1, -3.4 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,96.5, 113.9 , 0 );
    setScaleKey(SP_dodge , 1, 1.51, 1.51);
    setRotateKey(SP_dodge,   1, -3.4 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1,96.5, 113.9 , 0 );
    setScaleKey(SP_dodge+10 , 1, 1.51, 1.51);
    setRotateKey(SP_dodge+10,   1, -3.4 );
   

    
    setDisp(SP_dodge+9, 0, 0);    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    --------------------------------------
    --回避しなかった場合
    --------------------------------------
setMoveKey( spep_3-3 + 24, 1, 111.6, 135.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, 114.8, 144.7 , 0 );
setMoveKey( spep_3-3 + 29, 1, 126.3, 162.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, 157.2, 198.6 , 0 );
setMoveKey( spep_3-3 + 32, 1, 159, 191.9 , 0 );
setMoveKey( spep_3-3 + 34, 1, 121.5, 181.9 , 0 );
setMoveKey( spep_3-3 + 36, 1, 144.8, 211 , 0 );
setMoveKey( spep_3-3 + 38, 1, 138.7, 208.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, 146, 215.8 , 0 );
setMoveKey( spep_3-3 + 42, 1, 141.3, 210.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 144.7, 213.5 , 0 );
setMoveKey( spep_3-3 + 46, 1, 136, 204.4 , 0 );
setMoveKey( spep_3-3 + 48, 1, 143.4, 211.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 138.7, 206.1 , 0 );
setMoveKey( spep_3-3 + 52, 1, 142.1, 208.9 , 0 );
setMoveKey( spep_3 + 52, 1, 133.5, 199.8 , 0 );

setScaleKey( spep_3-3 + 24, 1, 1.43, 1.43 );
setScaleKey( spep_3-3 + 26, 1, 1.35, 1.35 );
setScaleKey( spep_3-3 + 29, 1, 1.26, 1.26 );
setScaleKey( spep_3-3 + 30, 1, 1.44, 1.44 );
setScaleKey( spep_3-3 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_3-3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_3-3 + 36, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_3-3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_3-3 + 42, 1, 0.27, 0.27 );
setScaleKey( spep_3-3 + 50, 1, 0.27, 0.27 );
setScaleKey( spep_3-3 + 52, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 52, 1, 0.26, 0.26 );

setRotateKey( spep_3-3 + 24, 1, -3.5 );
setRotateKey( spep_3-3 + 26, 1, -3.6 );
setRotateKey( spep_3-3 + 29, 1, -3.8 );
setRotateKey( spep_3-3 + 30, 1, 21 );
setRotateKey( spep_3-3 + 32, 1, 18.5 );
setRotateKey( spep_3-3 + 34, 1, 16.1 );
setRotateKey( spep_3-3 + 36, 1, 13.8 );
setRotateKey( spep_3-3 + 38, 1, 11.6 );
setRotateKey( spep_3-3 + 40, 1, 11.4 );
setRotateKey( spep_3-3 + 42, 1, 11.3 );
setRotateKey( spep_3-3 + 44, 1, 11.1 );
setRotateKey( spep_3-3 + 46, 1, 10.9 );
setRotateKey( spep_3-3 + 48, 1, 10.8 );
setRotateKey( spep_3-3 + 50, 1, 10.6 );
setRotateKey( spep_3-3 + 52, 1, 10.4 );
setRotateKey( spep_3 + 52, 1, 10.3 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_3-4 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313 );

setEffShake( spep_3-4 + 30, ctzuo2, 20, 10 );

setEffMoveKey( spep_3-4 + 30, ctzuo2, -17.7, 313 , 0 );
setEffMoveKey( spep_3-4 + 32, ctzuo2, -35.7, 356 , 0 );
setEffMoveKey( spep_3-4 + 34, ctzuo2, -81.2, 407.4 , 0 );
setEffMoveKey( spep_3-4 + 36, ctzuo2, -64.3, 405.9 , 0 );
setEffMoveKey( spep_3-4 + 38, ctzuo2, -92.6, 407.5 , 0 );
setEffMoveKey( spep_3-4 + 40, ctzuo2, -75.6, 406.3 , 0 );
setEffMoveKey( spep_3-4 + 42, ctzuo2, -103.9, 407.7 , 0 );
setEffMoveKey( spep_3-4 + 44, ctzuo2, -87, 406.6 , 0 );
setEffMoveKey( spep_3-4 + 46, ctzuo2, -118.9, 421.2 , 0 );
setEffMoveKey( spep_3-4 + 48, ctzuo2, -82.5, 426.4 , 0 );
setEffMoveKey( spep_3-4 + 50, ctzuo2, -79.3, 433.2 , 0 );

setEffScaleKey( spep_3-4 + 30, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_3-4 + 32, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_3-4 + 34, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3-4 + 44, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_3-4 + 46, ctzuo2, 4.09, 4.09 );
setEffScaleKey( spep_3-4 + 48, ctzuo2, 5.46, 5.46 );
setEffScaleKey( spep_3-4 + 50, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_3-4 + 30, ctzuo2, 6.9 );
setEffRotateKey( spep_3-4 + 32, ctzuo2, -3.4 );
setEffRotateKey( spep_3-4 + 34, ctzuo2, -13.5 );
setEffRotateKey( spep_3-4 + 36, ctzuo2, -13.8 );
setEffRotateKey( spep_3-4 + 38, ctzuo2, -14.1 );
setEffRotateKey( spep_3-4 + 40, ctzuo2, -14.4 );
setEffRotateKey( spep_3-4 + 42, ctzuo2, -14.7 );
setEffRotateKey( spep_3-4 + 44, ctzuo2, -15 );
setEffRotateKey( spep_3-4 + 46, ctzuo2, -11.8 );
setEffRotateKey( spep_3-4 + 48, ctzuo2, -8.5 );
setEffRotateKey( spep_3-4 + 50, ctzuo2, -5.2 );

setEffAlphaKey( spep_3-4 + 30, ctzuo2, 0 );
setEffAlphaKey( spep_3-4 + 31, ctzuo2, 255 );
setEffAlphaKey( spep_3-4 + 32, ctzuo2, 255 );
setEffAlphaKey( spep_3-4 + 44, ctzuo2, 255 );
setEffAlphaKey( spep_3-4 + 46, ctzuo2, 170 );
setEffAlphaKey( spep_3-4 + 48, ctzuo2, 85 );
setEffAlphaKey( spep_3-4 + 50, ctzuo2, 0 );

-- ** 音 ** --
playSe( spep_3+ 26, SE_07 );  --ズオッ

--白フェード
entryFade( spep_3 + 92, 4,12, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
bg = entryEffectLife( spep_4 + 0, SP_05x, 100, 0x80, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_4 + 0, bg, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bg, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bg, -1.0, 1.0 );
setEffScaleKey( spep_4 + 100, bg, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 100, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 100, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

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

shuchusen5 = entryEffectLife( spep_4 + 0,  1657, 100, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 0 );
setEffAlphaKey( spep_4 + 12, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 13, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 0,  10005, 100, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 0, ctga, 28, 20 );

setEffMoveKey( spep_4 + 0, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 0, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 0, ctga, -10.9 );
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
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 0, ctga, 0 );
setEffAlphaKey( spep_4 + 12, ctga, 0 );
setEffAlphaKey( spep_4 + 13, ctga, 0 );
setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

--敵
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_4,    1,  100,  0,   0);
setScaleKey( spep_4,    1,  1.0, 1.0);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
--entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );
end
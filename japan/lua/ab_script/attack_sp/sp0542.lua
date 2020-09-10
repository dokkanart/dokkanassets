--G4-1_1016040_超サイヤ人ベジータ_ビッグ・バン・アタック

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
SP_01=	153076	;--	溜め
SP_02=	153077	;--	放つ
SP_03=	153078	;--	着弾・手前
SP_04=	153079	;--	着弾・奥


--敵側
SP_01x=	153080	;--	溜め	(敵)
SP_02x=	153081	;--	放つ	(敵)
SP_03x=	153078	;--	着弾・手前	
SP_04x=	153079	;--	着弾・奥	


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

------------------------------------------------------
-- 味方側
------------------------------------------------------
spep_0=0;

--エフェクトの再生
rush = entryEffectLife( spep_0 + 0, SP_01, 150, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, rush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 68, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, rush, 1.2, 1.2 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 150, rush, 255 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 150, rush, 0 );



-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 20,  906, 128, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 20, shuchusen1, 128, 25 );

setEffMoveKey( spep_0 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 20, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 148, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 20, shuchusen1, 0 );
setEffRotateKey( spep_0 + 148, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 255 );

ctzuzun = entryEffectLife( spep_0 + 18,  10013, 44, 0x100, -1, 0, 20.1, 249.8 ); --ズズズンッ
setEffShake( spep_0 + 18, ctzuzun, 44, 10 );

setEffMoveKey( spep_0 + 18, ctzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 20, ctzuzun, 29.3, 317.5 , 0 );
setEffMoveKey( spep_0 + 24, ctzuzun, 51.3, 394.7 , 0 );
setEffMoveKey( spep_0 + 26, ctzuzun, 38.4, 377.7 , 0 );
setEffMoveKey( spep_0 + 28, ctzuzun, 43.5, 372 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 62, ctzuzun, 31.1, 354.5 , 0 );

setEffScaleKey( spep_0 + 18, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 20, ctzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 + 24, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 + 26, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 + 62, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 + 18, ctzuzun, 0 );
setEffRotateKey( spep_0 + 62, ctzuzun, 0 );

setEffAlphaKey( spep_0 + 18, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 40, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 42, ctzuzun, 212 );
setEffAlphaKey( spep_0 + 44, ctzuzun, 172 );
setEffAlphaKey( spep_0 + 46, ctzuzun, 136 );
setEffAlphaKey( spep_0 + 48, ctzuzun, 104 );
setEffAlphaKey( spep_0 + 50, ctzuzun, 77 );
setEffAlphaKey( spep_0 + 52, ctzuzun, 53 );
setEffAlphaKey( spep_0 + 54, ctzuzun, 34 );
setEffAlphaKey( spep_0 + 56, ctzuzun, 19 );
setEffAlphaKey( spep_0 + 58, ctzuzun, 9 );
setEffAlphaKey( spep_0 + 60, ctzuzun, 2 );
setEffAlphaKey( spep_0 + 62, ctzuzun, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+8 + 52, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+8 + 52, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

ctgogo = entryEffectLife( spep_0+8 + 68,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0+8 + 68, ctgogo, 68, 10 );

setEffMoveKey( spep_0+8 + 68, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0+8 + 136, ctgogo, -9.9, 515.5 , 0 );

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

-- ** 音 ** --
playSe( spep_0 + 24, SE_02 );  --ため
playSe( spep_0 + 44, SE_02 );  --ため
playSe( spep_0 + 68, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 20, 0, 128, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 150;

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
-- 発射シーン(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_2 + 0, SP_02, 90, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, hassha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, hassha, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha, 0 );
setEffRotateKey( spep_2 + 90, hassha, 0 );
setEffAlphaKey( spep_2 + 0, hassha, 255 );
setEffAlphaKey( spep_2 + 90, hassha, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 26, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 26, 25 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 26, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 26, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 26, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 26, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2-4 + 30,  10012, 50, 0x100, -1, 0, 9.7, 282.4 );--ズオッ

setEffShake( spep_2-4 + 30, ctzuo, 50, 20 );

setEffMoveKey( spep_2-4 + 30, ctzuo, 9.7, 282.4 , 0 );
setEffMoveKey( spep_2-4 + 32, ctzuo, 33, 331.8 , 0 );
setEffMoveKey( spep_2-4 + 34, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 36, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 38, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 40, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 42, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 44, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 46, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 48, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 50, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 52, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 54, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 56, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 58, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 60, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 62, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 64, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 66, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 68, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 70, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 72, ctzuo, 71.6, 376.4 , 0 );
setEffMoveKey( spep_2-4 + 74, ctzuo, 64.9, 401.3 , 0 );
setEffMoveKey( spep_2-4 + 76, ctzuo, 109.5, 374.8 , 0 );
setEffMoveKey( spep_2-4 + 78, ctzuo, 93.1, 409.1 , 0 );
setEffMoveKey( spep_2-4 + 80, ctzuo, 107.3, 413.1 , 0 );

setEffScaleKey( spep_2-4 + 30, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-4 + 32, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2-4 + 34, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-4 + 70, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-4 + 72, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2-4 + 74, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2-4 + 76, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2-4 + 78, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2-4 + 80, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2-4 + 30, ctzuo, 9.6 );
setEffRotateKey( spep_2-4 + 32, ctzuo, 18.3 );
setEffRotateKey( spep_2-4 + 34, ctzuo, 27.2 );
setEffRotateKey( spep_2-4 + 80, ctzuo, 27.2 );

setEffAlphaKey( spep_2-4 + 30, ctzuo, 255 );
setEffAlphaKey( spep_2-4 + 70, ctzuo, 255 );
setEffAlphaKey( spep_2-4 + 72, ctzuo, 204 );
setEffAlphaKey( spep_2-4 + 74, ctzuo, 153 );
setEffAlphaKey( spep_2-4 + 76, ctzuo, 102 );
setEffAlphaKey( spep_2-4 + 78, ctzuo, 51 );
setEffAlphaKey( spep_2-4 + 80, ctzuo, 0 );

-- ** 音 ** --
playSe( spep_2 + 26, SE_06 );  --ズオッ

-- ** ホワイトフェード ** --
entryFade( spep_2 + 24, 0, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 82, 4,6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 , 0, 90, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;

------------------------------------------------------
-- 着弾シーン(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan_f = entryEffectLife( spep_3 + 0, SP_03, 100, 0x100, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, tyakudan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, tyakudan_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudan_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, tyakudan_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudan_f, 0 );
setEffRotateKey( spep_3 + 100, tyakudan_f, 0 );
setEffAlphaKey( spep_3 + 0, tyakudan_f, 255 );
setEffAlphaKey( spep_3 + 100, tyakudan_f, 255 );


-- ** エフェクト等 ** --
tyakudan_b = entryEffectLife( spep_3 + 0, SP_04, 100, 0x80, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, tyakudan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, tyakudan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudan_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, tyakudan_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudan_b, 0 );
setEffRotateKey( spep_3 + 100, tyakudan_b, 0 );
setEffAlphaKey( spep_3 + 0, tyakudan_b, 255 );
setEffAlphaKey( spep_3 + 100, tyakudan_b, 255 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );


setMoveKey( spep_3-3 + 0, 1, -13.9, -81.7 , 0 );
setMoveKey( spep_3-3 + 2, 1, -6.7, -67.8 , 0 );
setMoveKey( spep_3-3 + 4, 1, 9.1, -44.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 17.6, -31.6 , 0 );
setMoveKey( spep_3-3 + 8, 1, 34.7, -1.3 , 0 );
setMoveKey( spep_3-3 + 10, 1, 44.4, 14.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 62.9, 47.6 , 0 );
setMoveKey( spep_3-3 + 14, 1, 73.9, 70.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 81.3, 79.4 , 0 );
setMoveKey( spep_3-3 + 18, 1, 80.7, 80.6 , 0 );
setMoveKey( spep_3-3 + 20, 1, 88.2, 90 , 0 );
setMoveKey( spep_3-3 + 22, 1, 83.7, 87.6 , 0 );
setMoveKey( spep_3-3 + 24, 1, 95.3, 101.3 , 0 );

setScaleKey( spep_3-3 + 0, 1, 3.09, 3.09 );
setScaleKey( spep_3-3 + 2, 1, 2.95, 2.95 );
setScaleKey( spep_3-3 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_3-3 + 6, 1, 2.62, 2.62 );
setScaleKey( spep_3-3 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_3-3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 12, 1, 2.01, 2.01 );
setScaleKey( spep_3-3 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_3-3 + 16, 1, 1.79, 1.79 );
setScaleKey( spep_3-3 + 18, 1, 1.8, 1.8 );
setScaleKey( spep_3-3 + 20, 1, 1.81, 1.81 );
setScaleKey( spep_3-3 + 22, 1, 1.83, 1.83 );
setScaleKey( spep_3-3 + 24, 1, 1.83, 1.83 );

setRotateKey( spep_3-3 + 0, 1, -2 );
setRotateKey( spep_3-3 + 2, 1, -2.1 );
setRotateKey( spep_3-3 + 4, 1, -2.3 );
setRotateKey( spep_3-3 + 6, 1, -2.4 );
setRotateKey( spep_3-3 + 8, 1, -2.5 );
setRotateKey( spep_3-3 + 10, 1, -2.6 );
setRotateKey( spep_3-3 + 12, 1, -2.8 );
setRotateKey( spep_3-3 + 14, 1, -2.9 );
setRotateKey( spep_3-3 + 16, 1, -3 );
setRotateKey( spep_3-3 + 18, 1, -3.2 );
setRotateKey( spep_3-3 + 20, 1, -3.3 );
setRotateKey( spep_3-3 + 22, 1, -3.4 );
setRotateKey( spep_3-3 + 24, 1, -3.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 , 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,83.7, 87.6 , 0 );
    setScaleKey(SP_dodge , 1, 1.83, 1.83);
    setRotateKey(SP_dodge,   1, -3.5 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1,83.7, 87.6 , 0 );
    setScaleKey(SP_dodge+10 , 1, 1.83, 1.83);
    setRotateKey(SP_dodge+10,   1, -3.5 );
   

    
    setDisp(SP_dodge+9, 0, 0);
    --setDisp(SP_dodge+9, 1, 0);
    --setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+9,1,0.9,0.9);
    --setRotateKey(SP_dodge+9,   1, 0);
    
    --setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
    --setRotateKey(SP_dodge+10,   1, 0);
    
    
    --悟飯を画面外に表示
    --setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
    --setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    --setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
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
--敵の動き
changeAnime( spep_3-3 + 58, 1, 108 );

setMoveKey( spep_3-3 + 26, 1, 94.9, 103.2 , 0 );
setMoveKey( spep_3-3 + 28, 1, 102.5, 113.3 , 0 );
--setMoveKey( spep_3-3 + 30, 1, 56.6, 38 , 0 );
--setMoveKey( spep_3-3 + 32, 1, 72.3, 64.1 , 0 );
--setMoveKey( spep_3-3 + 34, 1, 75.8, 77.8 , 0 );
--setMoveKey( spep_3-3 + 36, 1, 87.3, 99.1 , 0 );
setMoveKey( spep_3-3 + 38, 1, 86.6, 108 , 0 );
setMoveKey( spep_3-3 + 40, 1, 95.9, 118.5 , 0 );
setMoveKey( spep_3-3 + 42, 1, 93.1, 116.8 , 0 );
setMoveKey( spep_3-3 + 44, 1, 98.4, 123.2 , 0 );
setMoveKey( spep_3-3 + 46, 1, 91.6, 117.5 , 0 );
setMoveKey( spep_3-3 + 48, 1, 100.8, 127.7 , 0 );
setMoveKey( spep_3-3 + 50, 1, 97.9, 126 , 0 );
setMoveKey( spep_3-3 + 52, 1, 103, 132.1 , 0 );
setMoveKey( spep_3-3 + 54, 1, 96.1, 126.2 , 0 );
setMoveKey( spep_3-3 + 57, 1, 105.2, 136.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, 111.7, 137.7 , 0 );
setMoveKey( spep_3-3 + 60, 1, 118, 148.2 , 0 );
setMoveKey( spep_3-3 + 62, 1, 112, 146.2 , 0 );
setMoveKey( spep_3-3 + 64, 1, 121.9, 159.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, 119.6, 161.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 125.2, 169.9 , 0 );
setMoveKey( spep_3-3 + 70, 1, 118.5, 166.2 , 0 );
setMoveKey( spep_3-3 + 72, 1, 127.8, 178.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, 124.9, 177.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, 125.9, 181.1 , 0 );
setMoveKey( spep_3-3 + 78, 1, 122.7, 172 , 0 );
setMoveKey( spep_3-2 + 80, 1, 127.3, 176.5 , 0 );
setMoveKey( spep_3-2 + 82, 1, 119.9, 179.7 , 0 );
setMoveKey( spep_3-2 + 84, 1, 119.3, 190.5 , 0 );
--setMoveKey( spep_3-2 + 86, 1, 128.7, 191.9 , 0 );
--setMoveKey( spep_3-2 + 88, 1, 124.9, 181 , 0 );
--setMoveKey( spep_3-2 + 90, 1, 129.1, 193.9 , 0 );
--setMoveKey( spep_3-2 + 92, 1, 121.1, 190.3 , 0 );
--setMoveKey( spep_3-2 + 94, 1, 129.1, 194.5 , 0 );
--setMoveKey( spep_3-2 + 96, 1, 121, 190.3 , 0 );
--setMoveKey( spep_3 + 98, 1, 128.8, 193.8 , 0 );

setScaleKey( spep_3-3 + 26, 1, 1.84, 1.84 );
setScaleKey( spep_3-3 + 28, 1, 1.85, 1.85 );
setScaleKey( spep_3-3 + 30, 1, 1.95, 1.95 );
setScaleKey( spep_3-3 + 32, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 34, 1, 1.69, 1.69 );
setScaleKey( spep_3-3 + 36, 1, 1.57, 1.57 );
setScaleKey( spep_3-3 + 38, 1, 1.45, 1.45 );
setScaleKey( spep_3-3 + 40, 1, 1.41, 1.41 );
setScaleKey( spep_3-3 + 42, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 44, 1, 1.32, 1.32 );
setScaleKey( spep_3-3 + 46, 1, 1.27, 1.27 );
setScaleKey( spep_3-3 + 48, 1, 1.23, 1.23 );
setScaleKey( spep_3-3 + 50, 1, 1.19, 1.19 );
setScaleKey( spep_3-3 + 52, 1, 1.15, 1.15 );
setScaleKey( spep_3-3 + 54, 1, 1.11, 1.11 );
setScaleKey( spep_3-3 + 57, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 58, 1, 1.08, 1.08 );
setScaleKey( spep_3-3 + 60, 1, 0.99, 0.99 );
setScaleKey( spep_3-3 + 62, 1, 0.9, 0.9 );
setScaleKey( spep_3-3 + 64, 1, 0.81, 0.81 );
setScaleKey( spep_3-3 + 66, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 68, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 70, 1, 0.58, 0.58 );
setScaleKey( spep_3-3 + 72, 1, 0.52, 0.52 );
setScaleKey( spep_3-3 + 74, 1, 0.46, 0.46 );
setScaleKey( spep_3-3 + 76, 1, 0.4, 0.4 );
setScaleKey( spep_3-3 + 78, 1, 0.35, 0.35 );
setScaleKey( spep_3-3 + 80, 1, 0.31, 0.31 );
setScaleKey( spep_3-3 + 82, 1, 0.26, 0.26 );
setScaleKey( spep_3-3 + 84, 1, 0.22, 0.22 );
setScaleKey( spep_3-3 + 86, 1, 0.19, 0.19 );
--setScaleKey( spep_3-3 + 88, 1, 0.16, 0.16 );
--setScaleKey( spep_3-3 + 90, 1, 0.12, 0.12 );
--setScaleKey( spep_3-3 + 92, 1, 0.1, 0.1 );
--setScaleKey( spep_3-3 + 94, 1, 0.08, 0.08 );
--setScaleKey( spep_3-3 + 96, 1, 0.07, 0.07 );
--setScaleKey( spep_3-3 + 98, 1, 0.06, 0.06 );

setRotateKey( spep_3-3 + 26, 1, -3.7 );
setRotateKey( spep_3-3 + 28, 1, -3.8 );
setRotateKey( spep_3-3 + 30, 1, -3.8 );
setRotateKey( spep_3-3 + 32, 1, -4.1 );
setRotateKey( spep_3-3 + 34, 1, -4.4 );
setRotateKey( spep_3-3 + 36, 1, -4.7 );
setRotateKey( spep_3-3 + 38, 1, -5 );
setRotateKey( spep_3-3 + 40, 1, -5.2 );
setRotateKey( spep_3-3 + 42, 1, -5.3 );
setRotateKey( spep_3-3 + 44, 1, -5.5 );
setRotateKey( spep_3-3 + 46, 1, -5.7 );
setRotateKey( spep_3-3 + 48, 1, -5.8 );
setRotateKey( spep_3-3 + 50, 1, -6 );
setRotateKey( spep_3-3 + 52, 1, -6.2 );
setRotateKey( spep_3-3 + 54, 1, -6.3 );
setRotateKey( spep_3-3 + 57, 1, -6.5 );
setRotateKey( spep_3-3 + 58, 1, 18.1 );
setRotateKey( spep_3-3 + 60, 1, 18 );
setRotateKey( spep_3-3 + 62, 1, 17.8 );
setRotateKey( spep_3-3 + 64, 1, 17.6 );
setRotateKey( spep_3-3 + 66, 1, 17.5 );
setRotateKey( spep_3-3 + 68, 1, 17.3 );
setRotateKey( spep_3-3 + 70, 1, 17.1 );
setRotateKey( spep_3-3 + 72, 1, 17 );
setRotateKey( spep_3-3 + 74, 1, 16.8 );
setRotateKey( spep_3-3 + 76, 1, 16.6 );
setRotateKey( spep_3-3 + 78, 1, 16.5 );
setRotateKey( spep_3-3 + 80, 1, 16.3 );
setRotateKey( spep_3-3 + 82, 1, 16.1 );
setRotateKey( spep_3-3 + 84, 1, 16 );
setRotateKey( spep_3-3 + 86, 1, 15.8 );
--setRotateKey( spep_3-3 + 88, 1, 15.6 );
--setRotateKey( spep_3-3 + 90, 1, 15.5 );
--setRotateKey( spep_3-3 + 92, 1, 15.3 );
--setRotateKey( spep_3-3 + 94, 1, 15.1 );
--setRotateKey( spep_3-3 + 96, 1, 15 );
--setRotateKey( spep_3-3 + 98, 1, 14.8 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_3-4 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313 );

setEffShake( spep_3-4 + 30, ctzuo2, 20, 20 );

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
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0=0;

--エフェクトの再生
rush = entryEffectLife( spep_0 + 0, SP_01x, 150, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, rush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 68, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, rush, 1.2, 1.2 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 150, rush, 255 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 150, rush, 0 );



-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 20,  906, 128, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 20, shuchusen1, 128, 25 );

setEffMoveKey( spep_0 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 20, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 148, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 20, shuchusen1, 0 );
setEffRotateKey( spep_0 + 148, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 255 );

ctzuzun = entryEffectLife( spep_0 + 18,  10013, 44, 0x100, -1, 0, 20.1, 249.8 ); --ズズズンッ
setEffShake( spep_0 + 18, ctzuzun, 44, 10 );

setEffMoveKey( spep_0 + 18, ctzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 20, ctzuzun, 29.3, 317.5 , 0 );
setEffMoveKey( spep_0 + 24, ctzuzun, 51.3, 394.7 , 0 );
setEffMoveKey( spep_0 + 26, ctzuzun, 38.4, 377.7 , 0 );
setEffMoveKey( spep_0 + 28, ctzuzun, 43.5, 372 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 62, ctzuzun, 31.1, 354.5 , 0 );

setEffScaleKey( spep_0 + 18, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 20, ctzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 + 24, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 + 26, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 + 62, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 + 18, ctzuzun, 0 );
setEffRotateKey( spep_0 + 62, ctzuzun, 0 );

setEffAlphaKey( spep_0 + 18, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 40, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 42, ctzuzun, 212 );
setEffAlphaKey( spep_0 + 44, ctzuzun, 172 );
setEffAlphaKey( spep_0 + 46, ctzuzun, 136 );
setEffAlphaKey( spep_0 + 48, ctzuzun, 104 );
setEffAlphaKey( spep_0 + 50, ctzuzun, 77 );
setEffAlphaKey( spep_0 + 52, ctzuzun, 53 );
setEffAlphaKey( spep_0 + 54, ctzuzun, 34 );
setEffAlphaKey( spep_0 + 56, ctzuzun, 19 );
setEffAlphaKey( spep_0 + 58, ctzuzun, 9 );
setEffAlphaKey( spep_0 + 60, ctzuzun, 2 );
setEffAlphaKey( spep_0 + 62, ctzuzun, 0 );

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

-- ** 音 ** --
playSe( spep_0 + 24, SE_02 );  --ため
playSe( spep_0 + 44, SE_02 );  --ため
playSe( spep_0 + 68, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 20, 0, 128, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 150;

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
-- 発射シーン(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_2 + 0, SP_02x, 90, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, hassha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, hassha, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha, 0 );
setEffRotateKey( spep_2 + 90, hassha, 0 );
setEffAlphaKey( spep_2 + 0, hassha, 255 );
setEffAlphaKey( spep_2 + 90, hassha, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 26, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 26, 25 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 26, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 26, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 26, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 26, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2-4 + 30,  10012, 50, 0x100, -1, 0, 9.7, 282.4 );--ズオッ

setEffShake( spep_2-4 + 30, ctzuo, 50, 20 );

setEffMoveKey( spep_2-4 + 30, ctzuo, 9.7, 282.4 , 0 );
setEffMoveKey( spep_2-4 + 32, ctzuo, 33, 331.8 , 0 );
setEffMoveKey( spep_2-4 + 34, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 36, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 38, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 40, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 42, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 44, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 46, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 48, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 50, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 52, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 54, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 56, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 58, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 60, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 62, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 64, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 66, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 68, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2-4 + 70, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2-4 + 72, ctzuo, 71.6, 376.4 , 0 );
setEffMoveKey( spep_2-4 + 74, ctzuo, 64.9, 401.3 , 0 );
setEffMoveKey( spep_2-4 + 76, ctzuo, 109.5, 374.8 , 0 );
setEffMoveKey( spep_2-4 + 78, ctzuo, 93.1, 409.1 , 0 );
setEffMoveKey( spep_2-4 + 80, ctzuo, 107.3, 413.1 , 0 );

setEffScaleKey( spep_2-4 + 30, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-4 + 32, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2-4 + 34, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-4 + 70, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2-4 + 72, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2-4 + 74, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2-4 + 76, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2-4 + 78, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2-4 + 80, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2-4 + 30, ctzuo, 9.6 );
setEffRotateKey( spep_2-4 + 32, ctzuo, 18.3 );
setEffRotateKey( spep_2-4 + 34, ctzuo, 27.2 );
setEffRotateKey( spep_2-4 + 80, ctzuo, 27.2 );

setEffAlphaKey( spep_2-4 + 30, ctzuo, 255 );
setEffAlphaKey( spep_2-4 + 70, ctzuo, 255 );
setEffAlphaKey( spep_2-4 + 72, ctzuo, 204 );
setEffAlphaKey( spep_2-4 + 74, ctzuo, 153 );
setEffAlphaKey( spep_2-4 + 76, ctzuo, 102 );
setEffAlphaKey( spep_2-4 + 78, ctzuo, 51 );
setEffAlphaKey( spep_2-4 + 80, ctzuo, 0 );

-- ** 音 ** --
playSe( spep_2 + 26, SE_06 );  --ズオッ

-- ** ホワイトフェード ** --
entryFade( spep_2 + 24, 0, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;

------------------------------------------------------
-- 着弾シーン(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan_f = entryEffectLife( spep_3 + 0, SP_03x, 100, 0x100, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, tyakudan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, tyakudan_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudan_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, tyakudan_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudan_f, 0 );
setEffRotateKey( spep_3 + 100, tyakudan_f, 0 );
setEffAlphaKey( spep_3 + 0, tyakudan_f, 255 );
setEffAlphaKey( spep_3 + 100, tyakudan_f, 255 );


-- ** エフェクト等 ** --
tyakudan_b = entryEffectLife( spep_3 + 0, SP_04x, 100, 0x80, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, tyakudan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, tyakudan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudan_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, tyakudan_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudan_b, 0 );
setEffRotateKey( spep_3 + 100, tyakudan_b, 0 );
setEffAlphaKey( spep_3 + 0, tyakudan_b, 255 );
setEffAlphaKey( spep_3 + 100, tyakudan_b, 255 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );


setMoveKey( spep_3-3 + 0, 1, -13.9, -81.7 , 0 );
setMoveKey( spep_3-3 + 2, 1, -6.7, -67.8 , 0 );
setMoveKey( spep_3-3 + 4, 1, 9.1, -44.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 17.6, -31.6 , 0 );
setMoveKey( spep_3-3 + 8, 1, 34.7, -1.3 , 0 );
setMoveKey( spep_3-3 + 10, 1, 44.4, 14.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 62.9, 47.6 , 0 );
setMoveKey( spep_3-3 + 14, 1, 73.9, 70.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 81.3, 79.4 , 0 );
setMoveKey( spep_3-3 + 18, 1, 80.7, 80.6 , 0 );
setMoveKey( spep_3-3 + 20, 1, 88.2, 90 , 0 );
setMoveKey( spep_3-3 + 22, 1, 83.7, 87.6 , 0 );
setMoveKey( spep_3-3 + 24, 1, 95.3, 101.3 , 0 );

setScaleKey( spep_3-3 + 0, 1, 3.09, 3.09 );
setScaleKey( spep_3-3 + 2, 1, 2.95, 2.95 );
setScaleKey( spep_3-3 + 4, 1, 2.79, 2.79 );
setScaleKey( spep_3-3 + 6, 1, 2.62, 2.62 );
setScaleKey( spep_3-3 + 8, 1, 2.43, 2.43 );
setScaleKey( spep_3-3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 12, 1, 2.01, 2.01 );
setScaleKey( spep_3-3 + 14, 1, 1.77, 1.77 );
setScaleKey( spep_3-3 + 16, 1, 1.79, 1.79 );
setScaleKey( spep_3-3 + 18, 1, 1.8, 1.8 );
setScaleKey( spep_3-3 + 20, 1, 1.81, 1.81 );
setScaleKey( spep_3-3 + 22, 1, 1.83, 1.83 );
setScaleKey( spep_3-3 + 24, 1, 1.83, 1.83 );

setRotateKey( spep_3-3 + 0, 1, -2 );
setRotateKey( spep_3-3 + 2, 1, -2.1 );
setRotateKey( spep_3-3 + 4, 1, -2.3 );
setRotateKey( spep_3-3 + 6, 1, -2.4 );
setRotateKey( spep_3-3 + 8, 1, -2.5 );
setRotateKey( spep_3-3 + 10, 1, -2.6 );
setRotateKey( spep_3-3 + 12, 1, -2.8 );
setRotateKey( spep_3-3 + 14, 1, -2.9 );
setRotateKey( spep_3-3 + 16, 1, -3 );
setRotateKey( spep_3-3 + 18, 1, -3.2 );
setRotateKey( spep_3-3 + 20, 1, -3.3 );
setRotateKey( spep_3-3 + 22, 1, -3.4 );
setRotateKey( spep_3-3 + 24, 1, -3.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 , 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
      --キャラクターの固定
      setMoveKey(SP_dodge, 1,83.7, 87.6 , 0 );
      setScaleKey(SP_dodge , 1, 1.83, 1.83);
      setRotateKey(SP_dodge,   1, -3.5 );
      
      --キャラクターの固定
      setMoveKey(SP_dodge+10, 1,83.7, 87.6 , 0 );
      setScaleKey(SP_dodge+10 , 1, 1.83, 1.83);
      setRotateKey(SP_dodge+10,   1, -3.5 );
   
    
    
    setDisp(SP_dodge+9, 0, 0);
    --setDisp(SP_dodge+9, 1, 0);
    --setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+9,1,0.9,0.9);
    --setRotateKey(SP_dodge+9,   1, 0);
    
    --setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
    --setRotateKey(SP_dodge+10,   1, 0);
    
    
    --悟飯を画面外に表示
    --setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
    --setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    --setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
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
--敵の動き
changeAnime( spep_3-3 + 58, 1, 108 );

setMoveKey( spep_3-3 + 26, 1, 94.9, 103.2 , 0 );
setMoveKey( spep_3-3 + 28, 1, 102.5, 113.3 , 0 );
--setMoveKey( spep_3-3 + 30, 1, 56.6, 38 , 0 );
--setMoveKey( spep_3-3 + 32, 1, 72.3, 64.1 , 0 );
--setMoveKey( spep_3-3 + 34, 1, 75.8, 77.8 , 0 );
--setMoveKey( spep_3-3 + 36, 1, 87.3, 99.1 , 0 );
setMoveKey( spep_3-3 + 38, 1, 86.6, 108 , 0 );
setMoveKey( spep_3-3 + 40, 1, 95.9, 118.5 , 0 );
setMoveKey( spep_3-3 + 42, 1, 93.1, 116.8 , 0 );
setMoveKey( spep_3-3 + 44, 1, 98.4, 123.2 , 0 );
setMoveKey( spep_3-3 + 46, 1, 91.6, 117.5 , 0 );
setMoveKey( spep_3-3 + 48, 1, 100.8, 127.7 , 0 );
setMoveKey( spep_3-3 + 50, 1, 97.9, 126 , 0 );
setMoveKey( spep_3-3 + 52, 1, 103, 132.1 , 0 );
setMoveKey( spep_3-3 + 54, 1, 96.1, 126.2 , 0 );
setMoveKey( spep_3-3 + 57, 1, 105.2, 136.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, 111.7, 137.7 , 0 );
setMoveKey( spep_3-3 + 60, 1, 118, 148.2 , 0 );
setMoveKey( spep_3-3 + 62, 1, 112, 146.2 , 0 );
setMoveKey( spep_3-3 + 64, 1, 121.9, 159.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, 119.6, 161.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, 125.2, 169.9 , 0 );
setMoveKey( spep_3-3 + 70, 1, 118.5, 166.2 , 0 );
setMoveKey( spep_3-3 + 72, 1, 127.8, 178.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, 124.9, 177.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, 125.9, 181.1 , 0 );
setMoveKey( spep_3-3 + 78, 1, 122.7, 172 , 0 );
setMoveKey( spep_3-2 + 80, 1, 127.3, 176.5 , 0 );
setMoveKey( spep_3-2 + 82, 1, 119.9, 179.7 , 0 );
setMoveKey( spep_3-2 + 84, 1, 119.3, 190.5 , 0 );
--setMoveKey( spep_3-2 + 86, 1, 128.7, 191.9 , 0 );
--setMoveKey( spep_3-2 + 88, 1, 124.9, 181 , 0 );
--setMoveKey( spep_3-2 + 90, 1, 129.1, 193.9 , 0 );
--setMoveKey( spep_3-2 + 92, 1, 121.1, 190.3 , 0 );
--setMoveKey( spep_3-2 + 94, 1, 129.1, 194.5 , 0 );
--setMoveKey( spep_3-2 + 96, 1, 121, 190.3 , 0 );
--setMoveKey( spep_3 + 98, 1, 128.8, 193.8 , 0 );

setScaleKey( spep_3-3 + 26, 1, 1.84, 1.84 );
setScaleKey( spep_3-3 + 28, 1, 1.85, 1.85 );
setScaleKey( spep_3-3 + 30, 1, 1.95, 1.95 );
setScaleKey( spep_3-3 + 32, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 34, 1, 1.69, 1.69 );
setScaleKey( spep_3-3 + 36, 1, 1.57, 1.57 );
setScaleKey( spep_3-3 + 38, 1, 1.45, 1.45 );
setScaleKey( spep_3-3 + 40, 1, 1.41, 1.41 );
setScaleKey( spep_3-3 + 42, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 44, 1, 1.32, 1.32 );
setScaleKey( spep_3-3 + 46, 1, 1.27, 1.27 );
setScaleKey( spep_3-3 + 48, 1, 1.23, 1.23 );
setScaleKey( spep_3-3 + 50, 1, 1.19, 1.19 );
setScaleKey( spep_3-3 + 52, 1, 1.15, 1.15 );
setScaleKey( spep_3-3 + 54, 1, 1.11, 1.11 );
setScaleKey( spep_3-3 + 57, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 58, 1, 1.08, 1.08 );
setScaleKey( spep_3-3 + 60, 1, 0.99, 0.99 );
setScaleKey( spep_3-3 + 62, 1, 0.9, 0.9 );
setScaleKey( spep_3-3 + 64, 1, 0.81, 0.81 );
setScaleKey( spep_3-3 + 66, 1, 0.73, 0.73 );
setScaleKey( spep_3-3 + 68, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 70, 1, 0.58, 0.58 );
setScaleKey( spep_3-3 + 72, 1, 0.52, 0.52 );
setScaleKey( spep_3-3 + 74, 1, 0.46, 0.46 );
setScaleKey( spep_3-3 + 76, 1, 0.4, 0.4 );
setScaleKey( spep_3-3 + 78, 1, 0.35, 0.35 );
setScaleKey( spep_3-3 + 80, 1, 0.31, 0.31 );
setScaleKey( spep_3-3 + 82, 1, 0.26, 0.26 );
setScaleKey( spep_3-3 + 84, 1, 0.22, 0.22 );
setScaleKey( spep_3-3 + 86, 1, 0.19, 0.19 );
--setScaleKey( spep_3-3 + 88, 1, 0.16, 0.16 );
--setScaleKey( spep_3-3 + 90, 1, 0.12, 0.12 );
--setScaleKey( spep_3-3 + 92, 1, 0.1, 0.1 );
--setScaleKey( spep_3-3 + 94, 1, 0.08, 0.08 );
--setScaleKey( spep_3-3 + 96, 1, 0.07, 0.07 );
--setScaleKey( spep_3-3 + 98, 1, 0.06, 0.06 );

setRotateKey( spep_3-3 + 26, 1, -3.7 );
setRotateKey( spep_3-3 + 28, 1, -3.8 );
setRotateKey( spep_3-3 + 30, 1, -3.8 );
setRotateKey( spep_3-3 + 32, 1, -4.1 );
setRotateKey( spep_3-3 + 34, 1, -4.4 );
setRotateKey( spep_3-3 + 36, 1, -4.7 );
setRotateKey( spep_3-3 + 38, 1, -5 );
setRotateKey( spep_3-3 + 40, 1, -5.2 );
setRotateKey( spep_3-3 + 42, 1, -5.3 );
setRotateKey( spep_3-3 + 44, 1, -5.5 );
setRotateKey( spep_3-3 + 46, 1, -5.7 );
setRotateKey( spep_3-3 + 48, 1, -5.8 );
setRotateKey( spep_3-3 + 50, 1, -6 );
setRotateKey( spep_3-3 + 52, 1, -6.2 );
setRotateKey( spep_3-3 + 54, 1, -6.3 );
setRotateKey( spep_3-3 + 57, 1, -6.5 );
setRotateKey( spep_3-3 + 58, 1, 18.1 );
setRotateKey( spep_3-3 + 60, 1, 18 );
setRotateKey( spep_3-3 + 62, 1, 17.8 );
setRotateKey( spep_3-3 + 64, 1, 17.6 );
setRotateKey( spep_3-3 + 66, 1, 17.5 );
setRotateKey( spep_3-3 + 68, 1, 17.3 );
setRotateKey( spep_3-3 + 70, 1, 17.1 );
setRotateKey( spep_3-3 + 72, 1, 17 );
setRotateKey( spep_3-3 + 74, 1, 16.8 );
setRotateKey( spep_3-3 + 76, 1, 16.6 );
setRotateKey( spep_3-3 + 78, 1, 16.5 );
setRotateKey( spep_3-3 + 80, 1, 16.3 );
setRotateKey( spep_3-3 + 82, 1, 16.1 );
setRotateKey( spep_3-3 + 84, 1, 16 );
setRotateKey( spep_3-3 + 86, 1, 15.8 );
--setRotateKey( spep_3-3 + 88, 1, 15.6 );
--setRotateKey( spep_3-3 + 90, 1, 15.5 );
--setRotateKey( spep_3-3 + 92, 1, 15.3 );
--setRotateKey( spep_3-3 + 94, 1, 15.1 );
--setRotateKey( spep_3-3 + 96, 1, 15 );
--setRotateKey( spep_3-3 + 98, 1, 14.8 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_3-4 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313 );

setEffShake( spep_3-4 + 30, ctzuo2, 20, 20 );

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
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

end
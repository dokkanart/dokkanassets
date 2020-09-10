--1019850:ターブル_兄弟ギャリック砲
--sp_effect_a1_00231

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
SP_01=	155313	;--	気溜め～発射
SP_02=	155315	;--	発射　正面
SP_03=	155316	;--	気弾が敵に迫る
SP_04=	155317	;--	気弾が敵に迫る：背景
SP_05=	155318	;--	地球から飛び出る気弾

--エフェクト(てき)
SP_01x=	155314	;--	気溜め～発射
SP_02x=	155366	;--	発射　正面
SP_03x=	155316	;--	気弾が敵に迫る
SP_04x=	155317	;--	気弾が敵に迫る：背景
SP_05x=	155318	;--	地球から飛び出る気弾

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
-- 冒頭
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 372, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 372, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 372, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 372, tame, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0-3 + 32,  10013, 40, 0x101, -1, 0, 20.1, 249.8 );
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
setEffMoveKey( spep_0-3 + 70, ctzuzuzun, 30.9, 354.4 , 0 );
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

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+68  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+68  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


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

setEffScaleKey(  spep_0 +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +142,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +152,  ctgogo, 1.07, 1.07 );

-- 文字エントリー --
ctgogo2 = entryEffectLife( spep_0+142 +80, 190006, 74, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0+142 +80,  ctgogo2,  100,  510);
setEffMoveKey(  spep_0+144 +152,  ctgogo2,  100,  510);

setEffAlphaKey( spep_0+142 +80, ctgogo2, 0 );
setEffAlphaKey( spep_0+142 + 81, ctgogo2, 255 );
setEffAlphaKey( spep_0+142 + 82, ctgogo2, 255 );
setEffAlphaKey( spep_0+142 + 146, ctgogo2, 255 );
setEffAlphaKey( spep_0+142 + 148, ctgogo2, 191 );
setEffAlphaKey( spep_0+142 + 150, ctgogo2, 112 );
setEffAlphaKey( spep_0+144 + 152, ctgogo2, 64 );

setEffRotateKey(  spep_0+142 +80,  ctgogo2,  0);
setEffRotateKey(  spep_0+144 +152,  ctgogo2,  0);

setEffScaleKey(  spep_0+142 +80,  ctgogo2,  0.7,  0.7);
setEffScaleKey(  spep_0+142 +146,  ctgogo2,  0.7,  0.7);
setEffScaleKey(  spep_0+144 +152,  ctgogo2, 1.07, 1.07 );

--文字エントリー
ctzuo1 = entryEffectLife( spep_0-3 + 176,  10012, 26, 0x100, -1, 0, 46, 169.9 );
setEffMoveKey( spep_0-3 + 176, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 178, ctzuo1, 50, 165.9 , 0 );
setEffMoveKey( spep_0-3 + 180, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 182, ctzuo1, 54, 161.9 , 0 );
setEffMoveKey( spep_0-3 + 184, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 186, ctzuo1, 56, 159.9 , 0 );
setEffMoveKey( spep_0-3 + 188, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 190, ctzuo1, 56, 159.9 , 0 );
setEffMoveKey( spep_0-3 + 192, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 194, ctzuo1, 56, 159.9 , 0 );
setEffMoveKey( spep_0-3 + 196, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 198, ctzuo1, 58, 157.9 , 0 );
setEffMoveKey( spep_0-3 + 200, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 202, ctzuo1, 46, 169.9 , 0 );

a=0.3;
b=1.2;
c=1.8;

setEffScaleKey( spep_0-3 + 176, ctzuo1, 0.1+a, 0.1+a );
--setEffScaleKey( spep_0-3 + 178, ctzuo1, 0.2+a, 0.2+a );
--setEffScaleKey( spep_0-3 + 180, ctzuo1, 0.3+a, 0.3+a );
--setEffScaleKey( spep_0-3 + 182, ctzuo1, 0.4+a, 0.4+a );
setEffScaleKey( spep_0-3 + 184, ctzuo1, 0.5+b, 0.5+b );
setEffScaleKey( spep_0-3 + 196, ctzuo1, 0.5+b, 0.5+b );
--setEffScaleKey( spep_0-3 + 198, ctzuo1, 0.6+a, 0.6+a );
--setEffScaleKey( spep_0-3 + 200, ctzuo1, 0.7+a, 0.7+a );
setEffScaleKey( spep_0-3 + 202, ctzuo1, 0.8+c, 0.8+c );

setEffRotateKey( spep_0-3 + 176, ctzuo1, 20 );
setEffRotateKey( spep_0-3 + 202, ctzuo1, 20 );

setEffAlphaKey( spep_0-3 + 176, ctzuo1, 255 );
setEffAlphaKey( spep_0-3 + 196, ctzuo1, 255 );
setEffAlphaKey( spep_0-3 + 198, ctzuo1, 170 );
setEffAlphaKey( spep_0-3 + 200, ctzuo1, 85 );
setEffAlphaKey( spep_0-3 + 202, ctzuo1, 0 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_0-3 + 308,  10012, 26, 0x100, -1, 0, 46, 247.4 );

setEffMoveKey( spep_0-3 + 308, ctzuo2, 46, 247.4 , 0 );
setEffMoveKey( spep_0-3 + 310, ctzuo2, 50, 255 , 0 );
setEffMoveKey( spep_0-3 + 312, ctzuo2, 46, 270.6 , 0 );
setEffMoveKey( spep_0-3 + 314, ctzuo2, 54, 274.2 , 0 );
setEffMoveKey( spep_0-3 + 316, ctzuo2, 46, 293.9 , 0 );
setEffMoveKey( spep_0-3 + 318, ctzuo2, 56, 276.1 , 0 );
setEffMoveKey( spep_0-3 + 320, ctzuo2, 46, 278.4 , 0 );
setEffMoveKey( spep_0-3 + 322, ctzuo2, 56, 260.6 , 0 );
setEffMoveKey( spep_0-3 + 324, ctzuo2, 46, 262.9 , 0 );
setEffMoveKey( spep_0-3 + 326, ctzuo2, 56, 245.1 , 0 );
setEffMoveKey( spep_0-3 + 328, ctzuo2, 46, 247.4 , 0 );
setEffMoveKey( spep_0-3 + 330, ctzuo2, 58, 235.4 , 0 );
setEffMoveKey( spep_0-3 + 334, ctzuo2, 46, 247.4 , 0 );

setEffScaleKey( spep_0-3 + 308, ctzuo2, 0.1+a, 0.1+a );
--setEffScaleKey( spep_0-3 + 310, ctzuo2, 0.2, 0.2 );
--setEffScaleKey( spep_0-3 + 312, ctzuo2, 0.3, 0.3 );
--setEffScaleKey( spep_0-3 + 314, ctzuo2, 0.4, 0.4 );
setEffScaleKey( spep_0-3 + 316, ctzuo2, 0.5+b, 0.5+b );
setEffScaleKey( spep_0-3 + 328, ctzuo2, 0.5+b, 0.5+b );
--setEffScaleKey( spep_0-3 + 330, ctzuo2, 0.6, 0.6 );
--setEffScaleKey( spep_0-3 + 332, ctzuo2, 0.7, 0.7 );
setEffScaleKey( spep_0-3 + 334, ctzuo2, 0.8+c, 0.8+c );

setEffRotateKey( spep_0-3 + 308, ctzuo2, 20 );
setEffRotateKey( spep_0-3 + 334, ctzuo2, 20 );

setEffAlphaKey( spep_0-3 + 308, ctzuo2, 255 );
setEffAlphaKey( spep_0-3 + 328, ctzuo2, 255 );
setEffAlphaKey( spep_0-3 + 330, ctzuo2, 170 );
setEffAlphaKey( spep_0-3 + 332, ctzuo2, 85 );
setEffAlphaKey( spep_0-3 + 334, ctzuo2, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 30,  906, 154, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 30, shuchusen1, 154, 20 );
setEffMoveKey( spep_0-3 + 30, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 184, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 30, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 172, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 174, shuchusen1, 2, 2 );
setEffScaleKey( spep_0-3 + 176, shuchusen1, 2.08, 2.08 );
setEffScaleKey( spep_0-3 + 178, shuchusen1, 2.32, 2.32 );
setEffScaleKey( spep_0-3 + 180, shuchusen1, 2.72, 2.72 );
setEffScaleKey( spep_0-3 + 182, shuchusen1, 3.28, 3.28 );
setEffScaleKey( spep_0-3 + 184, shuchusen1, 4, 4 );

setEffRotateKey( spep_0-3 + 30, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 184, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 184, shuchusen1, 255 );

--流線
ryusen1 = entryEffectLife( spep_0-3 + 222,  921, 150, 0x80, -1, 0, 61.6, 4.9 );
setEffShake( spep_0-3 + 222, ryusen1, 150, 10 );
setEffMoveKey( spep_0-3 + 222, ryusen1, 61.6, 4.9 , 0 );
setEffMoveKey( spep_0-3 + 372, ryusen1, 61.6, 4.9 , 0 );

setEffScaleKey( spep_0-3 + 222, ryusen1, 1.46, 1.46 );
setEffScaleKey( spep_0-3 + 372, ryusen1, 1.46, 1.46 );

setEffRotateKey( spep_0-3 + 222, ryusen1, 164 );
setEffRotateKey( spep_0-3 + 372, ryusen1, 164 );

setEffAlphaKey( spep_0-3 + 222, ryusen1, 255 );
setEffAlphaKey( spep_0-3 + 372, ryusen1, 255 );

-- ** 音 ** --

playSe( spep_0 + 30, 1035 );--気溜め
playSe( spep_0 + 80, 1018 );--顔カットイン
se_1037=playSe( spep_0 + 76, 1037 );--気溜め
setSeVolume( spep_0 + 76,1037,89);
playSe( spep_0 + 76, 1036 );--気溜め
setSeVolume( spep_0 + 76,1036,79);
playSe( spep_0 + 100, 1036 );--気溜め
setSeVolume( spep_0 + 100,1036,79);
playSe( spep_0 + 124, 1036 );--気溜め
setSeVolume( spep_0 + 124,1036,79);
playSe( spep_0 + 148, 1036 );--気溜め
setSeVolume( spep_0 + 148,1036,79);
playSe( spep_0 + 174, 1027 );--ターブル気弾発射
setSeVolume( spep_0 + 174,1027,79);
se_1161=playSe( spep_0 + 180, 1161 );--ターブル気弾発射
setSeVolume( spep_0 + 180,1161,50);
playSe( spep_0 + 184, 1022 );--ターブル気弾発射
playSe( spep_0 + 213, 43 );--ベジータ気弾溜め
setSeVolume( spep_0 + 213,43,89);
playSe( spep_0+142 +80, 1018 );--顔カットイン２
se_1037=playSe( spep_0 + 229, 1037 );--ベジータ気弾溜め
setSeVolume( spep_0 + 229,1037,79);
se_1027=playSe( spep_0 + 311, 1027 );--ベジータ気弾発射
se_1022=playSe( spep_0 + 311, 1022 );--ベジータ気弾発射

stopSe(spep_0 + 181, se_1037,0);

--白フェード
entryFade( spep_0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+26 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+168 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+304 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+364 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 372, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_1=372;

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

stopSe(spep_1 + 0, se_1161,0);
stopSe(spep_1 + 0, se_1037,0);
stopSe(spep_1 + 0, se_1027,0);
stopSe(spep_1 + 0, se_1022,0);

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 発射　正面
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 60, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 60, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 60, beam, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 58, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen2, 58, 20 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.41, 3.06 );
setEffScaleKey( spep_2 + 58, shuchusen2, 1.41, 3.06 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 58, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen2, 255 );

--SE
se_1213=playSe( spep_2 + 0, 1213 );--２人気弾発射
setSeVolume( spep_2 + 0,1213,63);
SE0=playSe( spep_2 + 0, 1022 );--２人気弾発射
se_1161=playSe( spep_2 + 0, 1161 );--２人気弾発射
setSeVolume( spep_2 + 0,1161,50);


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1213, 0 );
    stopSe( SP_dodge - 12, se_1161, 0 );

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
se_1215=playSe( spep_2 + 38, 1215 );--２人気弾発射

--白フェード
entryFade( spep_2+52 , 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;
------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 82, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 82, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 82, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 82, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 82, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 82, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 82, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 82, hit_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 80, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen3, 80, 20 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.41, 1.41 );
setEffScaleKey( spep_3 + 80, shuchusen3, 1.41, 1.41 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 80, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 80, shuchusen3, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_3 + 0,  10014, 78, 0x100, -1, 0, -70.7, 404.1 );
setEffShake( spep_3 + 0, ctzudodo, 78, 10 );
setEffMoveKey( spep_3 + 0, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 2, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 4, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 6, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 8, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 10, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 12, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 14, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 16, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 18, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 20, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 22, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 24, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 26, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 28, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 30, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 32, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 34, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 36, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 38, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 40, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 42, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 44, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 46, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 48, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 50, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 52, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 54, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 56, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 58, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 60, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 62, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 64, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 66, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 68, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 70, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 72, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 74, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 76, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 78, ctzudodo, -68.5, 387 , 0 );

setEffScaleKey( spep_3 + 0, ctzudodo, 1.9, 1.9 );
setEffScaleKey( spep_3 + 78, ctzudodo, 1.9, 1.9 );

setEffRotateKey( spep_3 + 0, ctzudodo, 13.7 );
setEffRotateKey( spep_3 + 78, ctzudodo, 13.7 );

setEffAlphaKey( spep_3 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_3 + 78, ctzudodo, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, 0.7, 0 , 0 );
setMoveKey( spep_3 + 2, 1, 0.8, 0 , 0 );
setMoveKey( spep_3 + 4, 1, 0.9, 0 , 0 );
setMoveKey( spep_3 + 6, 1, 1, 0 , 0 );
setMoveKey( spep_3 + 8, 1, 1.2, 0.1 , 0 );
setMoveKey( spep_3 + 10, 1, 1.4, 0.1 , 0 );
setMoveKey( spep_3 + 12, 1, 1.6, 0.1 , 0 );
setMoveKey( spep_3 + 14, 1, 1.9, 0.1 , 0 );
setMoveKey( spep_3 + 16, 1, 2.2, 0.2 , 0 );
setMoveKey( spep_3 + 18, 1, 2.5, 0.2 , 0 );
setMoveKey( spep_3 + 20, 1, 2.9, 0.3 , 0 );
setMoveKey( spep_3 + 22, 1, 3.3, 0.3 , 0 );
setMoveKey( spep_3 + 24, 1, 3.7, 0.4 , 0 );
setMoveKey( spep_3 + 26, 1, 4.2, 0.4 , 0 );
setMoveKey( spep_3 + 28, 1, 4.7, 0.5 , 0 );
setMoveKey( spep_3 + 30, 1, 5.2, 0.5 , 0 );
setMoveKey( spep_3 + 32, 1, 5.8, 0.6 , 0 );
setMoveKey( spep_3 + 34, 1, 6.3, 0.7 , 0 );
setMoveKey( spep_3 + 36, 1, 7, 0.8 , 0 );
setMoveKey( spep_3 + 38, 1, 7.6, 0.9 , 0 );
setMoveKey( spep_3 + 40, 1, 8.3, 1 , 0 );
setMoveKey( spep_3 + 42, 1, 9.1, 1.1 , 0 );
setMoveKey( spep_3 + 44, 1, 9.8, 1.2 , 0 );
setMoveKey( spep_3 + 46, 1, 10.6, 1.3 , 0 );
setMoveKey( spep_3 + 48, 1, 11.5, 1.4 , 0 );
setMoveKey( spep_3 + 50, 1, 12.4, 1.6 , 0 );
setMoveKey( spep_3 + 52, 1, 13.3, 1.7 , 0 );
setMoveKey( spep_3 + 54, 1, 14.2, 1.8 , 0 );
setMoveKey( spep_3 + 56, 1, 15.2, 2 , 0 );
setMoveKey( spep_3 + 58, 1, 16.2, 2.2 , 0 );
setMoveKey( spep_3 + 60, 1, 17.3, 2.3 , 0 );
setMoveKey( spep_3 + 62, 1, 18.4, 2.5 , 0 );
setMoveKey( spep_3 + 64, 1, 19.6, 2.7 , 0 );
setMoveKey( spep_3 + 66, 1, 20.8, 2.9 , 0 );
setMoveKey( spep_3 + 68, 1, 22, 3.2 , 0 );
setMoveKey( spep_3 + 70, 1, 30.1, -4.4 , 0 );
setMoveKey( spep_3 + 72, 1, 39.1, -11.9 , 0 );
setMoveKey( spep_3 + 74, 1, 59.8, -17.5 , 0 );
setMoveKey( spep_3 + 76, 1, 66.4, -16.8 , 0 );
setMoveKey( spep_3 + 78, 1, 73.1, -16.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.05, 0.05 );
setScaleKey( spep_3 + 2, 1, 0.06, 0.06 );
setScaleKey( spep_3 + 4, 1, 0.07, 0.07 );
setScaleKey( spep_3 + 6, 1, 0.08, 0.08 );
setScaleKey( spep_3 + 8, 1, 0.09, 0.09 );
setScaleKey( spep_3 + 10, 1, 0.1, 0.1 );
setScaleKey( spep_3 + 12, 1, 0.11, 0.11 );
setScaleKey( spep_3 + 14, 1, 0.13, 0.13 );
setScaleKey( spep_3 + 16, 1, 0.15, 0.15 );
setScaleKey( spep_3 + 18, 1, 0.17, 0.17 );
setScaleKey( spep_3 + 20, 1, 0.19, 0.19 );
setScaleKey( spep_3 + 22, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 24, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 26, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_3 + 30, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 32, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 34, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_3 + 38, 1, 0.49, 0.49 );
setScaleKey( spep_3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 42, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 44, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 46, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 48, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 50, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 52, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 54, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 56, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 60, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 62, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 64, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 66, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 70, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 72, 1, 2.49, 2.49 );
setScaleKey( spep_3 + 74, 1, 3.78, 3.78 );
setScaleKey( spep_3 + 76, 1, 4.18, 4.18 );
setScaleKey( spep_3 + 78, 1, 4.58, 4.58 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 78, 1, 0 );

--SE
playSe( spep_3 + 74, 1023 );--爆発
setSeVolume( spep_3 + 74,1023,89);
playSe( spep_3 + 78, 1159 );--爆発
setSeVolume( spep_3 + 78,1159,79);

--白フェード
entryFade( spep_3+72 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 84, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 82;

------------------------------------------------------
-- 地球から飛び出る気弾
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_4 + 240, finish, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish, 1.1, 1.1 );
setEffScaleKey( spep_4 + 240, finish, 1.1, 1.1 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 240, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 240, finish, 255 );

--SE
playSe( spep_4 + 19, 1145 );--そして宇宙へ
setSeVolume( spep_4 + 19,1145,79);
playSe( spep_4 + 19, 1027 );--そして宇宙へ
setSeVolume( spep_4 + 19,1027,79);
stopSe(spep_4 + 0, se_1213,0);
stopSe(spep_4 + 0, se_1161,0);
stopSe(spep_4 + 0, se_1215,0);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 230 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 372, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 372, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 372, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 372, tame, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0-3 + 32,  10013, 40, 0x101, -1, 0, 20.1, 249.8 );
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
setEffMoveKey( spep_0-3 + 70, ctzuzuzun, 30.9, 354.4 , 0 );
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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+68  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+68  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


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
--[[
-- 文字エントリー --
ctgogo2 = entryEffectLife( spep_0+142 +80, 190006, 74, 0x102, -1, 0, -100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0+142 +80,  ctgogo2,  -100,  510);
setEffMoveKey(  spep_0+144 +152,  ctgogo2,  -100,  510);

setEffAlphaKey( spep_0+142 +80, ctgogo2, 0 );
setEffAlphaKey( spep_0+142 + 81, ctgogo2, 255 );
setEffAlphaKey( spep_0+142 + 82, ctgogo2, 255 );
setEffAlphaKey( spep_0+142 + 146, ctgogo2, 255 );
setEffAlphaKey( spep_0+142 + 148, ctgogo2, 191 );
setEffAlphaKey( spep_0+142 + 150, ctgogo2, 112 );
setEffAlphaKey( spep_0+144 + 152, ctgogo2, 64 );

setEffRotateKey(  spep_0+142 +80,  ctgogo2,  0);
setEffRotateKey(  spep_0+144 +152,  ctgogo2,  0);

setEffScaleKey(  spep_0+142 +80,  ctgogo2,  -0.7,  0.7);
setEffScaleKey(  spep_0+142 +146,  ctgogo2,  -0.7,  0.7);
setEffScaleKey(  spep_0+144 +152,  ctgogo2, -1.07, 1.07 );
]]
--文字エントリー
ctzuo1 = entryEffectLife( spep_0-3 + 176,  10012, 26, 0x100, -1, 0, 46, 169.9 );
setEffMoveKey( spep_0-3 + 176, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 178, ctzuo1, 50, 165.9 , 0 );
setEffMoveKey( spep_0-3 + 180, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 182, ctzuo1, 54, 161.9 , 0 );
setEffMoveKey( spep_0-3 + 184, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 186, ctzuo1, 56, 159.9 , 0 );
setEffMoveKey( spep_0-3 + 188, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 190, ctzuo1, 56, 159.9 , 0 );
setEffMoveKey( spep_0-3 + 192, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 194, ctzuo1, 56, 159.9 , 0 );
setEffMoveKey( spep_0-3 + 196, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 198, ctzuo1, 58, 157.9 , 0 );
setEffMoveKey( spep_0-3 + 200, ctzuo1, 46, 169.9 , 0 );
setEffMoveKey( spep_0-3 + 202, ctzuo1, 46, 169.9 , 0 );

a=0.3;
b=1.2;
c=1.8;

setEffScaleKey( spep_0-3 + 176, ctzuo1, 0.1+a, 0.1+a );
--setEffScaleKey( spep_0-3 + 178, ctzuo1, 0.2+a, 0.2+a );
--setEffScaleKey( spep_0-3 + 180, ctzuo1, 0.3+a, 0.3+a );
--setEffScaleKey( spep_0-3 + 182, ctzuo1, 0.4+a, 0.4+a );
setEffScaleKey( spep_0-3 + 184, ctzuo1, 0.5+b, 0.5+b );
setEffScaleKey( spep_0-3 + 196, ctzuo1, 0.5+b, 0.5+b );
--setEffScaleKey( spep_0-3 + 198, ctzuo1, 0.6+a, 0.6+a );
--setEffScaleKey( spep_0-3 + 200, ctzuo1, 0.7+a, 0.7+a );
setEffScaleKey( spep_0-3 + 202, ctzuo1, 0.8+c, 0.8+c );

setEffRotateKey( spep_0-3 + 176, ctzuo1, 20 );
setEffRotateKey( spep_0-3 + 202, ctzuo1, 20 );

setEffAlphaKey( spep_0-3 + 176, ctzuo1, 255 );
setEffAlphaKey( spep_0-3 + 196, ctzuo1, 255 );
setEffAlphaKey( spep_0-3 + 198, ctzuo1, 170 );
setEffAlphaKey( spep_0-3 + 200, ctzuo1, 85 );
setEffAlphaKey( spep_0-3 + 202, ctzuo1, 0 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_0-3 + 308,  10012, 26, 0x100, -1, 0, 46, 247.4 );

setEffMoveKey( spep_0-3 + 308, ctzuo2, 46, 247.4 , 0 );
setEffMoveKey( spep_0-3 + 310, ctzuo2, 50, 255 , 0 );
setEffMoveKey( spep_0-3 + 312, ctzuo2, 46, 270.6 , 0 );
setEffMoveKey( spep_0-3 + 314, ctzuo2, 54, 274.2 , 0 );
setEffMoveKey( spep_0-3 + 316, ctzuo2, 46, 293.9 , 0 );
setEffMoveKey( spep_0-3 + 318, ctzuo2, 56, 276.1 , 0 );
setEffMoveKey( spep_0-3 + 320, ctzuo2, 46, 278.4 , 0 );
setEffMoveKey( spep_0-3 + 322, ctzuo2, 56, 260.6 , 0 );
setEffMoveKey( spep_0-3 + 324, ctzuo2, 46, 262.9 , 0 );
setEffMoveKey( spep_0-3 + 326, ctzuo2, 56, 245.1 , 0 );
setEffMoveKey( spep_0-3 + 328, ctzuo2, 46, 247.4 , 0 );
setEffMoveKey( spep_0-3 + 330, ctzuo2, 58, 235.4 , 0 );
setEffMoveKey( spep_0-3 + 334, ctzuo2, 46, 247.4 , 0 );

setEffScaleKey( spep_0-3 + 308, ctzuo2, 0.1+a, 0.1+a );
--setEffScaleKey( spep_0-3 + 310, ctzuo2, 0.2, 0.2 );
--setEffScaleKey( spep_0-3 + 312, ctzuo2, 0.3, 0.3 );
--setEffScaleKey( spep_0-3 + 314, ctzuo2, 0.4, 0.4 );
setEffScaleKey( spep_0-3 + 316, ctzuo2, 0.5+b, 0.5+b );
setEffScaleKey( spep_0-3 + 328, ctzuo2, 0.5+b, 0.5+b );
--setEffScaleKey( spep_0-3 + 330, ctzuo2, 0.6, 0.6 );
--setEffScaleKey( spep_0-3 + 332, ctzuo2, 0.7, 0.7 );
setEffScaleKey( spep_0-3 + 334, ctzuo2, 0.8+c, 0.8+c );

setEffRotateKey( spep_0-3 + 308, ctzuo2, 20 );
setEffRotateKey( spep_0-3 + 334, ctzuo2, 20 );

setEffAlphaKey( spep_0-3 + 308, ctzuo2, 255 );
setEffAlphaKey( spep_0-3 + 328, ctzuo2, 255 );
setEffAlphaKey( spep_0-3 + 330, ctzuo2, 170 );
setEffAlphaKey( spep_0-3 + 332, ctzuo2, 85 );
setEffAlphaKey( spep_0-3 + 334, ctzuo2, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 30,  906, 154, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 30, shuchusen1, 154, 20 );
setEffMoveKey( spep_0-3 + 30, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 184, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 30, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 172, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 174, shuchusen1, 2, 2 );
setEffScaleKey( spep_0-3 + 176, shuchusen1, 2.08, 2.08 );
setEffScaleKey( spep_0-3 + 178, shuchusen1, 2.32, 2.32 );
setEffScaleKey( spep_0-3 + 180, shuchusen1, 2.72, 2.72 );
setEffScaleKey( spep_0-3 + 182, shuchusen1, 3.28, 3.28 );
setEffScaleKey( spep_0-3 + 184, shuchusen1, 4, 4 );

setEffRotateKey( spep_0-3 + 30, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 184, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 184, shuchusen1, 255 );

--流線
ryusen1 = entryEffectLife( spep_0-3 + 222,  921, 150, 0x80, -1, 0, 61.6, 4.9 );
setEffShake( spep_0-3 + 222, ryusen1, 150, 10 );
setEffMoveKey( spep_0-3 + 222, ryusen1, 61.6, 4.9 , 0 );
setEffMoveKey( spep_0-3 + 372, ryusen1, 61.6, 4.9 , 0 );

setEffScaleKey( spep_0-3 + 222, ryusen1, 1.46, 1.46 );
setEffScaleKey( spep_0-3 + 372, ryusen1, 1.46, 1.46 );

setEffRotateKey( spep_0-3 + 222, ryusen1, 164 );
setEffRotateKey( spep_0-3 + 372, ryusen1, 164 );

setEffAlphaKey( spep_0-3 + 222, ryusen1, 255 );
setEffAlphaKey( spep_0-3 + 372, ryusen1, 255 );

-- ** 音 ** --

playSe( spep_0 + 30, 1035 );--気溜め
playSe( spep_0 + 80, 1018 );--顔カットイン
se_1037=playSe( spep_0 + 76, 1037 );--気溜め
setSeVolume( spep_0 + 76,1037,89);
playSe( spep_0 + 76, 1036 );--気溜め
setSeVolume( spep_0 + 76,1036,79);
playSe( spep_0 + 100, 1036 );--気溜め
setSeVolume( spep_0 + 100,1036,79);
playSe( spep_0 + 124, 1036 );--気溜め
setSeVolume( spep_0 + 124,1036,79);
playSe( spep_0 + 148, 1036 );--気溜め
setSeVolume( spep_0 + 148,1036,79);
playSe( spep_0 + 174, 1027 );--ターブル気弾発射
setSeVolume( spep_0 + 174,1027,79);
se_1161=playSe( spep_0 + 180, 1161 );--ターブル気弾発射
setSeVolume( spep_0 + 180,1161,50);
playSe( spep_0 + 184, 1022 );--ターブル気弾発射
playSe( spep_0 + 213, 43 );--ベジータ気弾溜め
setSeVolume( spep_0 + 213,43,89);
playSe( spep_0+142 +80, 1018 );--顔カットイン２
se_1037=playSe( spep_0 + 229, 1037 );--ベジータ気弾溜め
setSeVolume( spep_0 + 229,1037,79);
se_1027=playSe( spep_0 + 311, 1027 );--ベジータ気弾発射
se_1022=playSe( spep_0 + 311, 1022 );--ベジータ気弾発射

stopSe(spep_0 + 181, se_1037,0);

--白フェード
entryFade( spep_0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+26 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+168 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+304 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+364 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 372, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_1=372;

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

stopSe(spep_1 + 0, se_1161,0);
stopSe(spep_1 + 0, se_1037,0);
stopSe(spep_1 + 0, se_1027,0);
stopSe(spep_1 + 0, se_1022,0);

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 発射　正面
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 60, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_2 + 60, beam, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 60, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 60, beam, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 58, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen2, 58, 20 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.41, 3.06 );
setEffScaleKey( spep_2 + 58, shuchusen2, 1.41, 3.06 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 58, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen2, 255 );

--SE
se_1213=playSe( spep_2 + 0, 1213 );--２人気弾発射
setSeVolume( spep_2 + 0,1213,63);
SE0=playSe( spep_2 + 0, 1022 );--２人気弾発射
se_1161=playSe( spep_2 + 0, 1161 );--２人気弾発射
setSeVolume( spep_2 + 0,1161,50);


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1213, 0 );
    stopSe( SP_dodge - 12, se_1161, 0 );

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
se_1215=playSe( spep_2 + 38, 1215 );--２人気弾発射

--白フェード
entryFade( spep_2+52 , 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;
------------------------------------------------------
-- 気弾が敵に迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 82, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 82, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 82, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 82, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 82, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 82, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 82, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 82, hit_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 80, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen3, 80, 20 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.41, 1.41 );
setEffScaleKey( spep_3 + 80, shuchusen3, 1.41, 1.41 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 80, shuchusen3, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 80, shuchusen3, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_3 + 0,  10014, 78, 0x100, -1, 0, -70.7, 404.1 );
setEffShake( spep_3 + 0, ctzudodo, 78, 10 );
setEffMoveKey( spep_3 + 0, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 2, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 4, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 6, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 8, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 10, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 12, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 14, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 16, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 18, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 20, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 22, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 24, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 26, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 28, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 30, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 32, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 34, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 36, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 38, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 40, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 42, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 44, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 46, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 48, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 50, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 52, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 54, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 56, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 58, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 60, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 62, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 64, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 66, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 68, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 70, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 72, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 74, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_3 + 76, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_3 + 78, ctzudodo, -68.5, 387 , 0 );

setEffScaleKey( spep_3 + 0, ctzudodo, 1.9, 1.9 );
setEffScaleKey( spep_3 + 78, ctzudodo, 1.9, 1.9 );

setEffRotateKey( spep_3 + 0, ctzudodo, -13.7 );
setEffRotateKey( spep_3 + 78, ctzudodo, -13.7 );

setEffAlphaKey( spep_3 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_3 + 78, ctzudodo, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, 0.7, 0 , 0 );
setMoveKey( spep_3 + 2, 1, 0.8, 0 , 0 );
setMoveKey( spep_3 + 4, 1, 0.9, 0 , 0 );
setMoveKey( spep_3 + 6, 1, 1, 0 , 0 );
setMoveKey( spep_3 + 8, 1, 1.2, 0.1 , 0 );
setMoveKey( spep_3 + 10, 1, 1.4, 0.1 , 0 );
setMoveKey( spep_3 + 12, 1, 1.6, 0.1 , 0 );
setMoveKey( spep_3 + 14, 1, 1.9, 0.1 , 0 );
setMoveKey( spep_3 + 16, 1, 2.2, 0.2 , 0 );
setMoveKey( spep_3 + 18, 1, 2.5, 0.2 , 0 );
setMoveKey( spep_3 + 20, 1, 2.9, 0.3 , 0 );
setMoveKey( spep_3 + 22, 1, 3.3, 0.3 , 0 );
setMoveKey( spep_3 + 24, 1, 3.7, 0.4 , 0 );
setMoveKey( spep_3 + 26, 1, 4.2, 0.4 , 0 );
setMoveKey( spep_3 + 28, 1, 4.7, 0.5 , 0 );
setMoveKey( spep_3 + 30, 1, 5.2, 0.5 , 0 );
setMoveKey( spep_3 + 32, 1, 5.8, 0.6 , 0 );
setMoveKey( spep_3 + 34, 1, 6.3, 0.7 , 0 );
setMoveKey( spep_3 + 36, 1, 7, 0.8 , 0 );
setMoveKey( spep_3 + 38, 1, 7.6, 0.9 , 0 );
setMoveKey( spep_3 + 40, 1, 8.3, 1 , 0 );
setMoveKey( spep_3 + 42, 1, 9.1, 1.1 , 0 );
setMoveKey( spep_3 + 44, 1, 9.8, 1.2 , 0 );
setMoveKey( spep_3 + 46, 1, 10.6, 1.3 , 0 );
setMoveKey( spep_3 + 48, 1, 11.5, 1.4 , 0 );
setMoveKey( spep_3 + 50, 1, 12.4, 1.6 , 0 );
setMoveKey( spep_3 + 52, 1, 13.3, 1.7 , 0 );
setMoveKey( spep_3 + 54, 1, 14.2, 1.8 , 0 );
setMoveKey( spep_3 + 56, 1, 15.2, 2 , 0 );
setMoveKey( spep_3 + 58, 1, 16.2, 2.2 , 0 );
setMoveKey( spep_3 + 60, 1, 17.3, 2.3 , 0 );
setMoveKey( spep_3 + 62, 1, 18.4, 2.5 , 0 );
setMoveKey( spep_3 + 64, 1, 19.6, 2.7 , 0 );
setMoveKey( spep_3 + 66, 1, 20.8, 2.9 , 0 );
setMoveKey( spep_3 + 68, 1, 22, 3.2 , 0 );
setMoveKey( spep_3 + 70, 1, 30.1, -4.4 , 0 );
setMoveKey( spep_3 + 72, 1, 39.1, -11.9 , 0 );
setMoveKey( spep_3 + 74, 1, 59.8, -17.5 , 0 );
setMoveKey( spep_3 + 76, 1, 66.4, -16.8 , 0 );
setMoveKey( spep_3 + 78, 1, 73.1, -16.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.05, 0.05 );
setScaleKey( spep_3 + 2, 1, 0.06, 0.06 );
setScaleKey( spep_3 + 4, 1, 0.07, 0.07 );
setScaleKey( spep_3 + 6, 1, 0.08, 0.08 );
setScaleKey( spep_3 + 8, 1, 0.09, 0.09 );
setScaleKey( spep_3 + 10, 1, 0.1, 0.1 );
setScaleKey( spep_3 + 12, 1, 0.11, 0.11 );
setScaleKey( spep_3 + 14, 1, 0.13, 0.13 );
setScaleKey( spep_3 + 16, 1, 0.15, 0.15 );
setScaleKey( spep_3 + 18, 1, 0.17, 0.17 );
setScaleKey( spep_3 + 20, 1, 0.19, 0.19 );
setScaleKey( spep_3 + 22, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 24, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 26, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_3 + 30, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 32, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 34, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_3 + 38, 1, 0.49, 0.49 );
setScaleKey( spep_3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 42, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 44, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 46, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 48, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 50, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 52, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 54, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 56, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 60, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 62, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 64, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 66, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 70, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 72, 1, 2.49, 2.49 );
setScaleKey( spep_3 + 74, 1, 3.78, 3.78 );
setScaleKey( spep_3 + 76, 1, 4.18, 4.18 );
setScaleKey( spep_3 + 78, 1, 4.58, 4.58 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 78, 1, 0 );

--SE
playSe( spep_3 + 74, 1023 );--爆発
setSeVolume( spep_3 + 74,1023,89);
playSe( spep_3 + 78, 1159 );--爆発
setSeVolume( spep_3 + 78,1159,79);

--白フェード
entryFade( spep_3+72 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 84, 0,  0, 0, 0, 180 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 82;

------------------------------------------------------
-- 地球から飛び出る気弾
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_4 + 240, finish, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish, 1.1, 1.1 );
setEffScaleKey( spep_4 + 240, finish, 1.1, 1.1 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 240, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 240, finish, 255 );

--SE
playSe( spep_4 + 19, 1145 );--そして宇宙へ
setSeVolume( spep_4 + 19,1145,79);
playSe( spep_4 + 19, 1027 );--そして宇宙へ
setSeVolume( spep_4 + 19,1027,79);
stopSe(spep_4 + 0, se_1213,0);
stopSe(spep_4 + 0, se_1161,0);
stopSe(spep_4 + 0, se_1215,0);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 230 );
end
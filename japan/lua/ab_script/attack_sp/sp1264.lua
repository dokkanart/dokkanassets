--ウーブ(青年期)_烈震気弾

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
SP_01 = 153021; --突進
SP_02 = 153022; --殴る　手前
SP_03 = 153023; --殴る　奥
SP_04 = 153024; --ビーム着弾　手前
SP_05 = 153025; --ビーム着弾　奥
SP_06 = 153026; --気溜め
SP_07 = 153027; --かめはめ波発射
SP_08 = 153028; --かめはめ波着弾　手前
SP_09 = 153029; --かめはめ波着弾　奥
SP_10 = 153030; --ラスト爆発

--敵側
SP_01r = 153060; --突進
SP_03r = 153061; --殴る　奥
SP_06r = 153062; --気溜め
SP_07r = 153063; --かめはめ波発射
SP_08r = 153064; --かめはめ波着弾　手前
SP_10r = 153065; --ラスト爆発

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
------------------------------------------------------
-- 突進(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0 + 0, SP_01, 76, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tosshin, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 76, tosshin, 255 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 76, tosshin, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 76, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 76, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.09, 1.99 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1.09, 1.99 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 76, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctzuo1 = entryEffectLife( spep_0 + 0,  10012, 74, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_0 + 0, ctzuo1, 74, 10 );

setEffMoveKey( spep_0 + 0, ctzuo1, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 2, ctzuo1, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo1, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo1, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 66, ctzuo1, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 68, ctzuo1, 145.5, 366.6 , 0 );
setEffMoveKey( spep_0 + 70, ctzuo1, 180.5, 341.1 , 0 );
setEffMoveKey( spep_0 + 72, ctzuo1, 160.8, 370.2 , 0 );
setEffMoveKey( spep_0 + 74, ctzuo1, 168.5, 372 , 0 );

setEffScaleKey( spep_0 + 0, ctzuo1, 0.34, 0.34 );
setEffScaleKey( spep_0 + 2, ctzuo1, 1.13, 1.13 );
setEffScaleKey( spep_0 + 4, ctzuo1, 1.94, 1.94 );
setEffScaleKey( spep_0 + 6, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_0 + 66, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_0 + 68, ctzuo1, 3.68, 3.68 );
setEffScaleKey( spep_0 + 70, ctzuo1, 4.67, 4.67 );
setEffScaleKey( spep_0 + 72, ctzuo1, 5.63, 5.63 );
setEffScaleKey( spep_0 + 74, ctzuo1, 6.62, 6.62 );

setEffRotateKey( spep_0 + 0, ctzuo1, 27.2 );
setEffRotateKey( spep_0 + 74, ctzuo1, 27.2 );

setEffAlphaKey( spep_0 + 0, ctzuo1, 255 );
setEffAlphaKey( spep_0 + 66, ctzuo1, 255 );
setEffAlphaKey( spep_0 + 68, ctzuo1, 191 );
setEffAlphaKey( spep_0 + 70, ctzuo1, 128 );
setEffAlphaKey( spep_0 + 72, ctzuo1, 64 );
setEffAlphaKey( spep_0 + 74, ctzuo1, 0 );

-- ** 音 ** --
playSe( spep_0 + 6, 8 );  --突進

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

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

------------------------------------------------------
-- 殴る(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
naguru_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --殴る　手前(ef_002)
setEffMoveKey( spep_1 + 0, naguru_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 126, naguru_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 128, naguru_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru_f, 0 );
setEffRotateKey( spep_1 + 128, naguru_f, 0 );
setEffAlphaKey( spep_1 + 0, naguru_f, 255 );
setEffAlphaKey( spep_1 + 127, naguru_f, 255 );
setEffAlphaKey( spep_1 + 128, naguru_f, 0 );

naguru_b = entryEffectLife( spep_1 + 0, SP_03, 126, 0x80, -1, 0, 0, 0 );  --殴る　奥(ef_003)
setEffMoveKey( spep_1 + 0, naguru_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 126, naguru_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 126, naguru_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru_b, 0 );
setEffRotateKey( spep_1 + 126, naguru_b, 0 );
setEffAlphaKey( spep_1 + 0, naguru_b, 255 );
setEffAlphaKey( spep_1 + 125, naguru_b, 255 );
setEffAlphaKey( spep_1 + 126, naguru_b, 0 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 + 2,  10020, 32, 0x100, -1, 0, 167.9, 258.7 );  --バキッ
setEffShake( spep_1 + 18, ctbaki, 16, 10 );

setEffMoveKey( spep_1 + 2, ctbaki, 167.9, 258.7 , 0 );
setEffMoveKey( spep_1 + 4, ctbaki, 160.3, 282.1 , 0 );
setEffMoveKey( spep_1 + 6, ctbaki, 167.8, 258.8 , 0 );
setEffMoveKey( spep_1 + 8, ctbaki, 162.1, 277 , 0 );
setEffMoveKey( spep_1 + 10, ctbaki, 167.9, 258.7 , 0 );
setEffMoveKey( spep_1 + 12, ctbaki, 163, 274.1 , 0 );
setEffMoveKey( spep_1 + 14, ctbaki, 167.9, 258.6 , 0 );
setEffMoveKey( spep_1 + 16, ctbaki, 163.1, 273.7 , 0 );
setEffMoveKey( spep_1 + 18, ctbaki, 168, 258.6 , 0 );
setEffMoveKey( spep_1 + 34, ctbaki, 168, 258.7 , 0 );

setEffScaleKey( spep_1 + 2, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 + 4, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 + 6, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_1 + 8, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_1 + 10, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 + 12, ctbaki, 1.91, 1.91 );
setEffScaleKey( spep_1 + 14, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_1 + 16, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_1 + 18, ctbaki, 1.84, 1.84 );
setEffScaleKey( spep_1 + 20, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1 + 22, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_1 + 24, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_1 + 26, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 + 28, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 + 30, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 + 32, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 + 34, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 + 2, ctbaki, 27.3 );
setEffRotateKey( spep_1 + 34, ctbaki, 27.3 );

setEffAlphaKey( spep_1 + 2, ctbaki, 255 );
setEffAlphaKey( spep_1 + 26, ctbaki, 255 );
setEffAlphaKey( spep_1 + 28, ctbaki, 195 );
setEffAlphaKey( spep_1 + 30, ctbaki, 134 );
setEffAlphaKey( spep_1 + 32, ctbaki, 74 );
setEffAlphaKey( spep_1 + 34, ctbaki, 13 );

a = 5;
ctzuo2 = entryEffectLife( spep_1 + 76 -a,  10012, 55, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_1 + 80 -a, ctzuo2, 48, 10 );

setEffMoveKey( spep_1 + 76 -a, ctzuo2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_1 + 78 -a, ctzuo2, 117.2, 303.7 , 0 );
setEffMoveKey( spep_1 + 80 -a, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_1 + 126, ctzuo2, 137.7, 364.8 , 0 );

setEffScaleKey( spep_1 + 76 -a, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_1 + 78 -a, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_1 + 80 -a, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_1 + 126, ctzuo2, 2.73, 2.73 );

setEffRotateKey( spep_1 + 76 -a, ctzuo2, 27.2 );
setEffRotateKey( spep_1 + 126, ctzuo2, 27.2 );

setEffAlphaKey( spep_1 + 76 -a, ctzuo2, 255 );
setEffAlphaKey( spep_1 + 125, ctzuo2, 255 );
setEffAlphaKey( spep_1 + 126, ctzuo2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 32, 1, 0 );
changeAnime( spep_1 + 0, 1, 107 );

setMoveKey( spep_1 + 0, 1, 11.1, -78.8 , 0 );
setMoveKey( spep_1 + 2, 1, 15.9, -95.7 , 0 );
setMoveKey( spep_1 + 4, 1, 28.7, -104.3 , 0 );
setMoveKey( spep_1 + 6, 1, 29.5, -120.5 , 0 );
setMoveKey( spep_1 + 8, 1, 46.3, -128.6 , 0 );
setMoveKey( spep_1 + 10, 1, 51, -148.3 , 0 );
setMoveKey( spep_1 + 12, 1, 63.6, -151.7 , 0 );
setMoveKey( spep_1 + 14, 1, 60.1, -174.9 , 0 );
setMoveKey( spep_1 + 16, 1, 80.6, -173.8 , 0 );
setMoveKey( spep_1 + 18, 1, 84.9, -188.4 , 0 );
setMoveKey( spep_1 + 20, 1, 133, -273.7 , 0 );
setMoveKey( spep_1 + 22, 1, 197.9, -428.3 , 0 );
setMoveKey( spep_1 + 24, 1, 308.6, -624.1 , 0 );
setMoveKey( spep_1 + 26, 1, 437.8, -893.2 , 0 );
setMoveKey( spep_1 + 28, 1, 606.3, -1203.4 , 0 );
setMoveKey( spep_1 + 30, 1, 794.3, -1586.8 , 0 );
setMoveKey( spep_1 + 32, 1, 794.3, -1586.8 , 0 );

setScaleKey( spep_1 + 0, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 2, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 4, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 6, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 8, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 12, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 14, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 18, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 20, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 22, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 24, 1, 2.39, 2.39 );
setScaleKey( spep_1 + 26, 1, 3.2, 3.2 );
setScaleKey( spep_1 + 28, 1, 4.19, 4.19 );
setScaleKey( spep_1 + 30, 1, 5.36, 5.36 );
setScaleKey( spep_1 + 32, 1, 5.36, 5.36 );

setRotateKey( spep_1 + 0, 1, 8 );
setRotateKey( spep_1 + 2, 1, 7.4 );
setRotateKey( spep_1 + 4, 1, 6.8 );
setRotateKey( spep_1 + 6, 1, 6.3 );
setRotateKey( spep_1 + 8, 1, 5.8 );
setRotateKey( spep_1 + 10, 1, 5.3 );
setRotateKey( spep_1 + 12, 1, 4.9 );
setRotateKey( spep_1 + 14, 1, 4.5 );
setRotateKey( spep_1 + 16, 1, 4.1 );
setRotateKey( spep_1 + 18, 1, 3.8 );
setRotateKey( spep_1 + 20, 1, 3.8 );
setRotateKey( spep_1 + 22, 1, 4.2 );
setRotateKey( spep_1 + 24, 1, 4.9 );
setRotateKey( spep_1 + 26, 1, 5.9 );
setRotateKey( spep_1 + 28, 1, 7.2 );
setRotateKey( spep_1 + 30, 1, 8.9 );
setRotateKey( spep_1 + 32, 1, 8.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 126, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 69, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 2, 1009 );  --バキ
playSe( spep_1 + 42, 1018 );  --気溜め
playSe( spep_1 + 72, 1022 );  --ビーム

-- ** 次の準備 ** --
spep_2 = spep_1 + 126;

------------------------------------------------------
-- ビーム着弾(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan_f = entryEffectLife( spep_2 + 0, SP_04, 136, 0x100, -1, 0, 0, 0 );  --ビーム着弾　手前(ef_004)
setEffMoveKey( spep_2 + 0, tyakudan_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, tyakudan_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tyakudan_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, tyakudan_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tyakudan_f, 0 );
setEffRotateKey( spep_2 + 136, tyakudan_f, 0 );
setEffAlphaKey( spep_2 + 0, tyakudan_f, 255 );
setEffAlphaKey( spep_2 + 136, tyakudan_f, 255 );

tyakudan_b = entryEffectLife( spep_2 + 0, SP_05, 136, 0x80, -1, 0, 0, 0 );  --ビーム着弾　奥(ef_005)
setEffMoveKey( spep_2 + 0, tyakudan_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, tyakudan_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tyakudan_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, tyakudan_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tyakudan_b, 0 );
setEffRotateKey( spep_2 + 136, tyakudan_b, 0 );
setEffAlphaKey( spep_2 + 0, tyakudan_b, 255 );
setEffAlphaKey( spep_2 + 136, tyakudan_b, 255 );

a1 = 2;
-- ** 書き文字 ** --
ctdogo = entryEffectLife( spep_2 + 64 -a1,  10018, 74, 0x100, -1, 0, -4, 366.9 );  --ドゴォン
setEffShake( spep_2 + 64 -a1, ctdogo, 74, 5 );

setEffMoveKey( spep_2 + 64 -a1, ctdogo, -4, 366.9 , 0 );
setEffMoveKey( spep_2 + 116 -a1, ctdogo, -4, 366.9 , 0 );
setEffMoveKey( spep_2 + 118 -a1, ctdogo, -5.9, 367.8 , 0 );
setEffMoveKey( spep_2 + 138 -a1, ctdogo, -5.9, 367.8 , 0 );

setEffScaleKey( spep_2 + 64 -a1, ctdogo, 2.41, 2.41 );
setEffScaleKey( spep_2 + 66 -a1, ctdogo, 3.04, 3.04 );
setEffScaleKey( spep_2 + 68 -a1, ctdogo, 3.67, 3.67 );
setEffScaleKey( spep_2 + 70 -a1, ctdogo, 3.39, 3.39 );
setEffScaleKey( spep_2 + 72 -a1, ctdogo, 3.11, 3.11 );
setEffScaleKey( spep_2 + 74 -a1, ctdogo, 2.83, 2.83 );
setEffScaleKey( spep_2 + 76 -a1, ctdogo, 2.82, 2.82 );
setEffScaleKey( spep_2 + 78 -a1, ctdogo, 2.81, 2.81 );
setEffScaleKey( spep_2 + 80 -a1, ctdogo, 2.8, 2.8 );
setEffScaleKey( spep_2 + 82 -a1, ctdogo, 2.79, 2.79 );
setEffScaleKey( spep_2 + 84 -a1, ctdogo, 2.78, 2.78 );
setEffScaleKey( spep_2 + 86 -a1, ctdogo, 2.77, 2.77 );
setEffScaleKey( spep_2 + 88 -a1, ctdogo, 2.76, 2.76 );
setEffScaleKey( spep_2 + 90 -a1, ctdogo, 2.75, 2.75 );
setEffScaleKey( spep_2 + 92 -a1, ctdogo, 2.74, 2.74 );
setEffScaleKey( spep_2 + 94 -a1, ctdogo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 96 -a1, ctdogo, 2.72, 2.72 );
setEffScaleKey( spep_2 + 98 -a1, ctdogo, 2.71, 2.71 );
setEffScaleKey( spep_2 + 100 -a1, ctdogo, 2.7, 2.7 );
setEffScaleKey( spep_2 + 102 -a1, ctdogo, 2.69, 2.69 );
setEffScaleKey( spep_2 + 104 -a1, ctdogo, 2.68, 2.68 );
setEffScaleKey( spep_2 + 106 -a1, ctdogo, 2.67, 2.67 );
setEffScaleKey( spep_2 + 108 -a1, ctdogo, 2.66, 2.66 );
setEffScaleKey( spep_2 + 110 -a1, ctdogo, 2.65, 2.65 );
setEffScaleKey( spep_2 + 112 -a1, ctdogo, 2.64, 2.64 );
setEffScaleKey( spep_2 + 114 -a1, ctdogo, 2.63, 2.63 );
setEffScaleKey( spep_2 + 116 -a1, ctdogo, 2.62, 2.62 );
setEffScaleKey( spep_2 + 118 -a1, ctdogo, 2.61, 2.61 );
setEffScaleKey( spep_2 + 120 -a1, ctdogo, 2.6, 2.6 );
setEffScaleKey( spep_2 + 122 -a1, ctdogo, 2.59, 2.59 );
setEffScaleKey( spep_2 + 124 -a1, ctdogo, 2.58, 2.58 );
setEffScaleKey( spep_2 + 126 -a1, ctdogo, 2.57, 2.57 );
setEffScaleKey( spep_2 + 128 -a1, ctdogo, 2.56, 2.56 );
setEffScaleKey( spep_2 + 130 -a1, ctdogo, 2.55, 2.55 );
setEffScaleKey( spep_2 + 132 -a1, ctdogo, 2.54, 2.54 );
setEffScaleKey( spep_2 + 134 -a1, ctdogo, 2.53, 2.53 );
setEffScaleKey( spep_2 + 136 -a1, ctdogo, 2.52, 2.52 );
setEffScaleKey( spep_2 + 138 -a1, ctdogo, 2.51, 2.51 );

setEffRotateKey( spep_2 + 64 -a1, ctdogo, -7.2 );
setEffRotateKey( spep_2 + 104 -a1, ctdogo, -7.2 );
setEffRotateKey( spep_2 + 106 -a1, ctdogo, -7.1 );
setEffRotateKey( spep_2 + 138 -a1, ctdogo, -7.1 );

setEffAlphaKey( spep_2 + 64 -a1, ctdogo, 85 );
setEffAlphaKey( spep_2 + 66 -a1, ctdogo, 170 );
setEffAlphaKey( spep_2 + 68 -a1, ctdogo, 255 );
setEffAlphaKey( spep_2 + 138 -a1, ctdogo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 62, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, -618.3, 744.6 , 0 );
setMoveKey( spep_2 + 2, 1, -549.5, 694.6 , 0 );
setMoveKey( spep_2 + 4, 1, -487.1, 615.4 , 0 );
setMoveKey( spep_2 + 6, 1, -432.1, 569.2 , 0 );
setMoveKey( spep_2 + 8, 1, -369.2, 499.1 , 0 );
setMoveKey( spep_2 + 10, 1, -311.7, 456.7 , 0 );
setMoveKey( spep_2 + 12, 1, -264.6, 396.1 , 0 );
setMoveKey( spep_2 + 14, 1, -219.1, 359.2 , 0 );
setMoveKey( spep_2 + 16, 1, -173.3, 306.1 , 0 );
setMoveKey( spep_2 + 18, 1, -129, 272.4 , 0 );
setMoveKey( spep_2 + 20, 1, -95.1, 229.2 , 0 );
setMoveKey( spep_2 + 22, 1, -61.2, 201.8 , 0 );
setMoveKey( spep_2 + 24, 1, -30.4, 165.4 , 0 );
setMoveKey( spep_2 + 26, 1, -0.2, 142 , 0 );
setMoveKey( spep_2 + 28, 1, 21.3, 114.5 , 0 );
setMoveKey( spep_2 + 30, 1, 42.4, 97.8 , 0 );
setMoveKey( spep_2 + 32, 1, 48.4, 85.4 , 0 );
setMoveKey( spep_2 + 34, 1, 56.7, 79.8 , 0 );
setMoveKey( spep_2 + 36, 1, 60.3, 69.2 , 0 );
setMoveKey( spep_2 + 38, 1, 66.5, 65.1 , 0 );
setMoveKey( spep_2 + 40, 1, 71.6, 54.1 , 0 );
setMoveKey( spep_2 + 42, 1, 79, 49.3 , 0 );
setMoveKey( spep_2 + 44, 1, 81.9, 40.2 , 0 );
setMoveKey( spep_2 + 46, 1, 87.4, 36.8 , 0 );
setMoveKey( spep_2 + 48, 1, 91.4, 27.4 , 0 );
setMoveKey( spep_2 + 50, 1, 98, 23.4 , 0 );
setMoveKey( spep_2 + 52, 1, 100, 15.6 , 0 );
setMoveKey( spep_2 + 54, 1, 104.8, 13.2 , 0 );
setMoveKey( spep_2 + 56, 1, 107.9, 5 , 0 );
setMoveKey( spep_2 + 58, 1, 113.6, 2 , 0 );
setMoveKey( spep_2 + 60, 1, 114.9, -4.4 , 0 );
setMoveKey( spep_2 + 62, 1, 114.9, -4.4 , 0 );

setScaleKey( spep_2 + 0, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 2, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 4, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 6, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 8, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 10, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 12, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 16, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 18, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 20, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 22, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 26, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 28, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 30, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 32, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 34, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 36, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 38, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 40, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 42, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 44, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 46, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 48, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 50, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 52, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 54, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 56, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 58, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 60, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 62, 1, 0.37, 0.37 );

setRotateKey( spep_2 + 0, 1, -0.5 );
setRotateKey( spep_2 + 2, 1, 3.3 );
setRotateKey( spep_2 + 4, 1, 6.9 );
setRotateKey( spep_2 + 6, 1, 10.4 );
setRotateKey( spep_2 + 8, 1, 13.7 );
setRotateKey( spep_2 + 10, 1, 16.7 );
setRotateKey( spep_2 + 12, 1, 19.6 );
setRotateKey( spep_2 + 14, 1, 22.3 );
setRotateKey( spep_2 + 16, 1, 24.8 );
setRotateKey( spep_2 + 18, 1, 27.2 );
setRotateKey( spep_2 + 20, 1, 29.3 );
setRotateKey( spep_2 + 22, 1, 31.2 );
setRotateKey( spep_2 + 24, 1, 33 );
setRotateKey( spep_2 + 26, 1, 34.6 );
setRotateKey( spep_2 + 28, 1, 35.9 );
setRotateKey( spep_2 + 30, 1, 37.1 );
setRotateKey( spep_2 + 32, 1, 38.1 );
setRotateKey( spep_2 + 34, 1, 39.1 );
setRotateKey( spep_2 + 36, 1, 40.1 );
setRotateKey( spep_2 + 38, 1, 41 );
setRotateKey( spep_2 + 40, 1, 41.9 );
setRotateKey( spep_2 + 42, 1, 42.7 );
setRotateKey( spep_2 + 44, 1, 43.5 );
setRotateKey( spep_2 + 46, 1, 44.3 );
setRotateKey( spep_2 + 48, 1, 45.1 );
setRotateKey( spep_2 + 50, 1, 45.8 );
setRotateKey( spep_2 + 52, 1, 46.5 );
setRotateKey( spep_2 + 54, 1, 47.1 );
setRotateKey( spep_2 + 56, 1, 47.7 );
setRotateKey( spep_2 + 58, 1, 48.3 );
setRotateKey( spep_2 + 60, 1, 48.8 );
setRotateKey( spep_2 + 62, 1, 48.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 62, 1023 );  --着弾

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;

------------------------------------------------------
-- 気溜め(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_3 + 0, SP_06, 176, 0x100, -1, 0, 0, 0 );  --気溜め(ef_006)
setEffMoveKey( spep_3 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, kidame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, kidame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidame, 0 );
setEffRotateKey( spep_3 + 176, kidame, 0 );
setEffAlphaKey( spep_3 + 0, kidame, 255 );
setEffAlphaKey( spep_3 + 176, kidame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3 + 20, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 20, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 176, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen2, 176, 10 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.88, 1.94 );
setEffScaleKey( spep_3 + 176, shuchusen2, 1.88, 1.94 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 176, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 176, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 34,  190006, 70, 0x100, -1, 0, -8.5, 515.5 );  --ゴゴゴ
setEffShake( spep_3 + 34, ctgogo, 68, 10 );

setEffMoveKey( spep_3 + 34, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_3 + 104, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 34, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 96, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 98, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_3 + 102, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_3 + 104, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_3 + 34, ctgogo, 0 );
setEffRotateKey( spep_3 + 104, ctgogo, 0 );

setEffAlphaKey( spep_3 + 34, ctgogo, 255 );
setEffAlphaKey( spep_3 + 104, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 34, SE_04 );  --ゴゴゴ
SE0 = playSe( spep_3 + 104, 1050 );
stopSe( spep_3 + 174, SE0, 0 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 176;

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

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- かめはめ波発射(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamebeam = entryEffectLife( spep_5 + 0, SP_07, 118, 0x100, -1, 0, 0, 0 );  --かめはめ波発射(ef_007)
setEffMoveKey( spep_5 + 0, kamebeam, 0, 0 , 0 );
setEffMoveKey( spep_5 + 118, kamebeam, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kamebeam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 118, kamebeam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kamebeam, 0 );
setEffRotateKey( spep_5 + 118, kamebeam, 0 );
setEffAlphaKey( spep_5 + 0, kamebeam, 255 );
setEffAlphaKey( spep_5 + 118, kamebeam, 255 );

-- ** 書き文字エントリー ** --
ctzuo3 = entryEffectLife( spep_5 + 50,  10012, 66, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_5 + 56, ctzuo3, 52, 20 );

setEffMoveKey( spep_5 + 50, ctzuo3, 78.7, 260.5 , 0 );
setEffMoveKey( spep_5 + 52, ctzuo3, 117.2, 303.7 , 0 );
setEffMoveKey( spep_5 + 54, ctzuo3, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 56, ctzuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 108, ctzuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 110, ctzuo3, 155.9, 366.7 , 0 );
setEffMoveKey( spep_5 + 112, ctzuo3, 202, 340.7 , 0 );
setEffMoveKey( spep_5 + 114, ctzuo3, 192.1, 370.5 , 0 );
setEffMoveKey( spep_5 + 116, ctzuo3, 210.3, 372.4 , 0 );

setEffScaleKey( spep_5 + 50, ctzuo3, 0.34, 0.34 );
setEffScaleKey( spep_5 + 52, ctzuo3, 1.54, 1.54 );
setEffScaleKey( spep_5 + 54, ctzuo3, 2.73, 2.73 );
setEffScaleKey( spep_5 + 108, ctzuo3, 2.73, 2.73 );
setEffScaleKey( spep_5 + 110, ctzuo3, 3.75, 3.75 );
setEffScaleKey( spep_5 + 112, ctzuo3, 4.78, 4.78 );
setEffScaleKey( spep_5 + 114, ctzuo3, 5.8, 5.8 );
setEffScaleKey( spep_5 + 116, ctzuo3, 6.82, 6.82 );

setEffRotateKey( spep_5 + 50, ctzuo3, 27.2 );
setEffRotateKey( spep_5 + 116, ctzuo3, 27.2 );

setEffAlphaKey( spep_5 + 50, ctzuo3, 255 );
setEffAlphaKey( spep_5 + 108, ctzuo3, 255 );
setEffAlphaKey( spep_5 + 110, ctzuo3, 191 );
setEffAlphaKey( spep_5 + 112, ctzuo3, 128 );
setEffAlphaKey( spep_5 + 114, ctzuo3, 64 );
setEffAlphaKey( spep_5 + 116, ctzuo3, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + 46, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + 108, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_5 + 50, 1022 );  --発射

-- ** 次の準備 ** --
spep_6 = spep_5 + 118;

------------------------------------------------------
-- かめはめ波着弾(226F)
------------------------------------------------------

-- ** エフェクト等 ** --
kametyaku_f = entryEffectLife( spep_6 + 0, SP_08, 226, 0x100, -1, 0, 0, 0 );  --かめはめ波着弾　手前(ef_008)
setEffMoveKey( spep_6 + 0, kametyaku_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 226, kametyaku_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kametyaku_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 226, kametyaku_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kametyaku_f, 0 );
setEffRotateKey( spep_6 + 226, kametyaku_f, 0 );
setEffAlphaKey( spep_6 + 0, kametyaku_f, 255 );
setEffAlphaKey( spep_6 + 226, kametyaku_f, 255 );

kametyaku_b = entryEffectLife( spep_6 + 0, SP_09, 226, 0x80, -1, 0, 0, 0 );  --かめはめ波着弾　奥(ef_009)
setEffMoveKey( spep_6 + 0, kametyaku_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 226, kametyaku_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kametyaku_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 226, kametyaku_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kametyaku_b, 0 );
setEffRotateKey( spep_6 + 226, kametyaku_b, 0 );
setEffAlphaKey( spep_6 + 0, kametyaku_b, 255 );
setEffAlphaKey( spep_6 + 226, kametyaku_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 50, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 373.4, -274.7 , 0 );
setMoveKey( spep_6 + 2, 1, 366.9, -266.6 , 0 );
setMoveKey( spep_6 + 4, 1, 360.4, -263.5 , 0 );
setMoveKey( spep_6 + 6, 1, 352.5, -255.8 , 0 );
setMoveKey( spep_6 + 8, 1, 347.4, -252.4 , 0 );
setMoveKey( spep_6 + 10, 1, 341, -244.4 , 0 );
setMoveKey( spep_6 + 12, 1, 334.5, -241.2 , 0 );
setMoveKey( spep_6 + 14, 1, 326.6, -233.5 , 0 );
setMoveKey( spep_6 + 16, 1, 321.5, -230.1 , 0 );
setMoveKey( spep_6 + 18, 1, 315.1, -222.2 , 0 );
setMoveKey( spep_6 + 20, 1, 308.5, -218.9 , 0 );
setMoveKey( spep_6 + 22, 1, 300.7, -211.3 , 0 );
setMoveKey( spep_6 + 24, 1, 295.6, -207.8 , 0 );
setMoveKey( spep_6 + 26, 1, 289.2, -200 , 0 );
setMoveKey( spep_6 + 28, 1, 282.6, -196.6 , 0 );
setMoveKey( spep_6 + 30, 1, 274.8, -189.1 , 0 );
setMoveKey( spep_6 + 32, 1, 269.7, -185.5 , 0 );
setMoveKey( spep_6 + 34, 1, 263.2, -177.7 , 0 );
setMoveKey( spep_6 + 36, 1, 256.7, -174.3 , 0 );
setMoveKey( spep_6 + 38, 1, 249, -166.8 , 0 );
setMoveKey( spep_6 + 40, 1, 243.7, -163.2 , 0 );
setMoveKey( spep_6 + 42, 1, 237.3, -155.5 , 0 );
setMoveKey( spep_6 + 44, 1, 230.8, -152 , 0 );
setMoveKey( spep_6 + 46, 1, 223.1, -144.6 , 0 );
setMoveKey( spep_6 + 48, 1, 217.8, -140.9 , 0 );
setMoveKey( spep_6 + 50, 1, 217.8, -140.9 , 0 );

setScaleKey( spep_6 + 0, 1, 0.34, 0.34 );
setScaleKey( spep_6 + 6, 1, 0.34, 0.34 );
setScaleKey( spep_6 + 8, 1, 0.33, 0.33 );
setScaleKey( spep_6 + 16, 1, 0.33, 0.33 );
setScaleKey( spep_6 + 18, 1, 0.32, 0.32 );
setScaleKey( spep_6 + 24, 1, 0.32, 0.32 );
setScaleKey( spep_6 + 26, 1, 0.31, 0.31 );
setScaleKey( spep_6 + 32, 1, 0.31, 0.31 );
setScaleKey( spep_6 + 34, 1, 0.3, 0.3 );
setScaleKey( spep_6 + 40, 1, 0.3, 0.3 );
setScaleKey( spep_6 + 42, 1, 0.29, 0.29 );
setScaleKey( spep_6 + 50, 1, 0.29, 0.29 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 50, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 46, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_6 + 125, 0, 2, 12, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade
entryFade( spep_6 + 202, 22, 4, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade

-- ** 音 ** --
playSe( spep_6 + 48, 1023 );  --着弾１
playSe( spep_6 + 127, 1024 );  --着弾２

-- ** 次の準備 ** --
spep_7 = spep_6 + 226;

------------------------------------------------------
-- 爆発(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --ラスト爆発(ef_010)
setEffMoveKey( spep_7 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_7 + 126, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_7 + 126, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bakuha, 0 );
setEffRotateKey( spep_7 + 126, bakuha, 0 );
setEffAlphaKey( spep_7 + 0, bakuha, 255 );
setEffAlphaKey( spep_7 + 126, bakuha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 126, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE1 = playSe( spep_7 + 2, 1044 );
stopSe( spep_7 + 120, SE1, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 12 );
entryFade( spep_7 + 114, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 126 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0 + 0, SP_01r, 76, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tosshin, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 76, tosshin, 255 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 76, tosshin, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 76, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 76, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.09, 1.99 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1.09, 1.99 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 76, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctzuo1 = entryEffectLife( spep_0 + 0,  10012, 74, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_0 + 0, ctzuo1, 74, 10 );

setEffMoveKey( spep_0 + 0, ctzuo1, 78.7, 260.5 , 0 );
setEffMoveKey( spep_0 + 2, ctzuo1, 105, 288.6 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo1, 117.9, 330.1 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo1, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 66, ctzuo1, 153.7, 348.8 , 0 );
setEffMoveKey( spep_0 + 68, ctzuo1, 145.5, 366.6 , 0 );
setEffMoveKey( spep_0 + 70, ctzuo1, 180.5, 341.1 , 0 );
setEffMoveKey( spep_0 + 72, ctzuo1, 160.8, 370.2 , 0 );
setEffMoveKey( spep_0 + 74, ctzuo1, 168.5, 372 , 0 );

setEffScaleKey( spep_0 + 0, ctzuo1, 0.34, 0.34 );
setEffScaleKey( spep_0 + 2, ctzuo1, 1.13, 1.13 );
setEffScaleKey( spep_0 + 4, ctzuo1, 1.94, 1.94 );
setEffScaleKey( spep_0 + 6, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_0 + 66, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_0 + 68, ctzuo1, 3.68, 3.68 );
setEffScaleKey( spep_0 + 70, ctzuo1, 4.67, 4.67 );
setEffScaleKey( spep_0 + 72, ctzuo1, 5.63, 5.63 );
setEffScaleKey( spep_0 + 74, ctzuo1, 6.62, 6.62 );

setEffRotateKey( spep_0 + 0, ctzuo1, 27.2 );
setEffRotateKey( spep_0 + 74, ctzuo1, 27.2 );

setEffAlphaKey( spep_0 + 0, ctzuo1, 255 );
setEffAlphaKey( spep_0 + 66, ctzuo1, 255 );
setEffAlphaKey( spep_0 + 68, ctzuo1, 191 );
setEffAlphaKey( spep_0 + 70, ctzuo1, 128 );
setEffAlphaKey( spep_0 + 72, ctzuo1, 64 );
setEffAlphaKey( spep_0 + 74, ctzuo1, 0 );

-- ** 音 ** --
playSe( spep_0 + 6, 8 );  --突進

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

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

------------------------------------------------------
-- 殴る(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
naguru_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --殴る　手前(ef_002)
setEffMoveKey( spep_1 + 0, naguru_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 126, naguru_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 128, naguru_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru_f, 0 );
setEffRotateKey( spep_1 + 128, naguru_f, 0 );
setEffAlphaKey( spep_1 + 0, naguru_f, 255 );
setEffAlphaKey( spep_1 + 127, naguru_f, 255 );
setEffAlphaKey( spep_1 + 128, naguru_f, 0 );

naguru_b = entryEffectLife( spep_1 + 0, SP_03r, 126, 0x80, -1, 0, 0, 0 );  --殴る　奥(ef_003)
setEffMoveKey( spep_1 + 0, naguru_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 126, naguru_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 126, naguru_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru_b, 0 );
setEffRotateKey( spep_1 + 126, naguru_b, 0 );
setEffAlphaKey( spep_1 + 0, naguru_b, 255 );
setEffAlphaKey( spep_1 + 125, naguru_b, 255 );
setEffAlphaKey( spep_1 + 126, naguru_b, 0 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 + 2,  10020, 32, 0x100, -1, 0, 167.9, 258.7 );  --バキッ
setEffShake( spep_1 + 18, ctbaki, 16, 10 );

setEffMoveKey( spep_1 + 2, ctbaki, 167.9, 258.7 , 0 );
setEffMoveKey( spep_1 + 4, ctbaki, 160.3, 282.1 , 0 );
setEffMoveKey( spep_1 + 6, ctbaki, 167.8, 258.8 , 0 );
setEffMoveKey( spep_1 + 8, ctbaki, 162.1, 277 , 0 );
setEffMoveKey( spep_1 + 10, ctbaki, 167.9, 258.7 , 0 );
setEffMoveKey( spep_1 + 12, ctbaki, 163, 274.1 , 0 );
setEffMoveKey( spep_1 + 14, ctbaki, 167.9, 258.6 , 0 );
setEffMoveKey( spep_1 + 16, ctbaki, 163.1, 273.7 , 0 );
setEffMoveKey( spep_1 + 18, ctbaki, 168, 258.6 , 0 );
setEffMoveKey( spep_1 + 34, ctbaki, 168, 258.7 , 0 );

setEffScaleKey( spep_1 + 2, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 + 4, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 + 6, ctbaki, 2.57, 2.57 );
setEffScaleKey( spep_1 + 8, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_1 + 10, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 + 12, ctbaki, 1.91, 1.91 );
setEffScaleKey( spep_1 + 14, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_1 + 16, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_1 + 18, ctbaki, 1.84, 1.84 );
setEffScaleKey( spep_1 + 20, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1 + 22, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_1 + 24, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_1 + 26, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 + 28, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 + 30, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 + 32, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 + 34, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 + 2, ctbaki, 27.3 );
setEffRotateKey( spep_1 + 34, ctbaki, 27.3 );

setEffAlphaKey( spep_1 + 2, ctbaki, 255 );
setEffAlphaKey( spep_1 + 26, ctbaki, 255 );
setEffAlphaKey( spep_1 + 28, ctbaki, 195 );
setEffAlphaKey( spep_1 + 30, ctbaki, 134 );
setEffAlphaKey( spep_1 + 32, ctbaki, 74 );
setEffAlphaKey( spep_1 + 34, ctbaki, 13 );

a = 5;
ctzuo2 = entryEffectLife( spep_1 + 76 -a,  10012, 55, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_1 + 80 -a, ctzuo2, 48, 10 );

setEffMoveKey( spep_1 + 76 -a, ctzuo2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_1 + 78 -a, ctzuo2, 117.2, 303.7 , 0 );
setEffMoveKey( spep_1 + 80 -a, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_1 + 126, ctzuo2, 137.7, 364.8 , 0 );

setEffScaleKey( spep_1 + 76 -a, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_1 + 78 -a, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_1 + 80 -a, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_1 + 126, ctzuo2, 2.73, 2.73 );

setEffRotateKey( spep_1 + 76 -a, ctzuo2, 27.2 );
setEffRotateKey( spep_1 + 126, ctzuo2, 27.2 );

setEffAlphaKey( spep_1 + 76 -a, ctzuo2, 255 );
setEffAlphaKey( spep_1 + 125, ctzuo2, 255 );
setEffAlphaKey( spep_1 + 126, ctzuo2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 32, 1, 0 );
changeAnime( spep_1 + 0, 1, 107 );

setMoveKey( spep_1 + 0, 1, 11.1, -78.8 , 0 );
setMoveKey( spep_1 + 2, 1, 15.9, -95.7 , 0 );
setMoveKey( spep_1 + 4, 1, 28.7, -104.3 , 0 );
setMoveKey( spep_1 + 6, 1, 29.5, -120.5 , 0 );
setMoveKey( spep_1 + 8, 1, 46.3, -128.6 , 0 );
setMoveKey( spep_1 + 10, 1, 51, -148.3 , 0 );
setMoveKey( spep_1 + 12, 1, 63.6, -151.7 , 0 );
setMoveKey( spep_1 + 14, 1, 60.1, -174.9 , 0 );
setMoveKey( spep_1 + 16, 1, 80.6, -173.8 , 0 );
setMoveKey( spep_1 + 18, 1, 84.9, -188.4 , 0 );
setMoveKey( spep_1 + 20, 1, 133, -273.7 , 0 );
setMoveKey( spep_1 + 22, 1, 197.9, -428.3 , 0 );
setMoveKey( spep_1 + 24, 1, 308.6, -624.1 , 0 );
setMoveKey( spep_1 + 26, 1, 437.8, -893.2 , 0 );
setMoveKey( spep_1 + 28, 1, 606.3, -1203.4 , 0 );
setMoveKey( spep_1 + 30, 1, 794.3, -1586.8 , 0 );
setMoveKey( spep_1 + 32, 1, 794.3, -1586.8 , 0 );

setScaleKey( spep_1 + 0, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 2, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 4, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 6, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 8, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 12, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 14, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 16, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 18, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 20, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 22, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 24, 1, 2.39, 2.39 );
setScaleKey( spep_1 + 26, 1, 3.2, 3.2 );
setScaleKey( spep_1 + 28, 1, 4.19, 4.19 );
setScaleKey( spep_1 + 30, 1, 5.36, 5.36 );
setScaleKey( spep_1 + 32, 1, 5.36, 5.36 );

setRotateKey( spep_1 + 0, 1, 8 );
setRotateKey( spep_1 + 2, 1, 7.4 );
setRotateKey( spep_1 + 4, 1, 6.8 );
setRotateKey( spep_1 + 6, 1, 6.3 );
setRotateKey( spep_1 + 8, 1, 5.8 );
setRotateKey( spep_1 + 10, 1, 5.3 );
setRotateKey( spep_1 + 12, 1, 4.9 );
setRotateKey( spep_1 + 14, 1, 4.5 );
setRotateKey( spep_1 + 16, 1, 4.1 );
setRotateKey( spep_1 + 18, 1, 3.8 );
setRotateKey( spep_1 + 20, 1, 3.8 );
setRotateKey( spep_1 + 22, 1, 4.2 );
setRotateKey( spep_1 + 24, 1, 4.9 );
setRotateKey( spep_1 + 26, 1, 5.9 );
setRotateKey( spep_1 + 28, 1, 7.2 );
setRotateKey( spep_1 + 30, 1, 8.9 );
setRotateKey( spep_1 + 32, 1, 8.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 126, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 69, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 2, 1009 );  --バキ
playSe( spep_1 + 42, 1018 );  --気溜め
playSe( spep_1 + 72, 1022 );  --ビーム

-- ** 次の準備 ** --
spep_2 = spep_1 + 126;

------------------------------------------------------
-- ビーム着弾(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan_f = entryEffectLife( spep_2 + 0, SP_04, 136, 0x100, -1, 0, 0, 0 );  --ビーム着弾　手前(ef_004)
setEffMoveKey( spep_2 + 0, tyakudan_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, tyakudan_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tyakudan_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, tyakudan_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tyakudan_f, 0 );
setEffRotateKey( spep_2 + 136, tyakudan_f, 0 );
setEffAlphaKey( spep_2 + 0, tyakudan_f, 255 );
setEffAlphaKey( spep_2 + 136, tyakudan_f, 255 );

tyakudan_b = entryEffectLife( spep_2 + 0, SP_05, 136, 0x80, -1, 0, 0, 0 );  --ビーム着弾　奥(ef_005)
setEffMoveKey( spep_2 + 0, tyakudan_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, tyakudan_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tyakudan_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, tyakudan_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tyakudan_b, 0 );
setEffRotateKey( spep_2 + 136, tyakudan_b, 0 );
setEffAlphaKey( spep_2 + 0, tyakudan_b, 255 );
setEffAlphaKey( spep_2 + 136, tyakudan_b, 255 );

a1 = 2;
-- ** 書き文字 ** --
ctdogo = entryEffectLife( spep_2 + 64 -a1,  10018, 74, 0x100, -1, 0, -4, 366.9 );  --ドゴォン
setEffShake( spep_2 + 64 -a1, ctdogo, 74, 5 );

setEffMoveKey( spep_2 + 64 -a1, ctdogo, -4, 366.9 , 0 );
setEffMoveKey( spep_2 + 116 -a1, ctdogo, -4, 366.9 , 0 );
setEffMoveKey( spep_2 + 118 -a1, ctdogo, -5.9, 367.8 , 0 );
setEffMoveKey( spep_2 + 138 -a1, ctdogo, -5.9, 367.8 , 0 );

setEffScaleKey( spep_2 + 64 -a1, ctdogo, 2.41, 2.41 );
setEffScaleKey( spep_2 + 66 -a1, ctdogo, 3.04, 3.04 );
setEffScaleKey( spep_2 + 68 -a1, ctdogo, 3.67, 3.67 );
setEffScaleKey( spep_2 + 70 -a1, ctdogo, 3.39, 3.39 );
setEffScaleKey( spep_2 + 72 -a1, ctdogo, 3.11, 3.11 );
setEffScaleKey( spep_2 + 74 -a1, ctdogo, 2.83, 2.83 );
setEffScaleKey( spep_2 + 76 -a1, ctdogo, 2.82, 2.82 );
setEffScaleKey( spep_2 + 78 -a1, ctdogo, 2.81, 2.81 );
setEffScaleKey( spep_2 + 80 -a1, ctdogo, 2.8, 2.8 );
setEffScaleKey( spep_2 + 82 -a1, ctdogo, 2.79, 2.79 );
setEffScaleKey( spep_2 + 84 -a1, ctdogo, 2.78, 2.78 );
setEffScaleKey( spep_2 + 86 -a1, ctdogo, 2.77, 2.77 );
setEffScaleKey( spep_2 + 88 -a1, ctdogo, 2.76, 2.76 );
setEffScaleKey( spep_2 + 90 -a1, ctdogo, 2.75, 2.75 );
setEffScaleKey( spep_2 + 92 -a1, ctdogo, 2.74, 2.74 );
setEffScaleKey( spep_2 + 94 -a1, ctdogo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 96 -a1, ctdogo, 2.72, 2.72 );
setEffScaleKey( spep_2 + 98 -a1, ctdogo, 2.71, 2.71 );
setEffScaleKey( spep_2 + 100 -a1, ctdogo, 2.7, 2.7 );
setEffScaleKey( spep_2 + 102 -a1, ctdogo, 2.69, 2.69 );
setEffScaleKey( spep_2 + 104 -a1, ctdogo, 2.68, 2.68 );
setEffScaleKey( spep_2 + 106 -a1, ctdogo, 2.67, 2.67 );
setEffScaleKey( spep_2 + 108 -a1, ctdogo, 2.66, 2.66 );
setEffScaleKey( spep_2 + 110 -a1, ctdogo, 2.65, 2.65 );
setEffScaleKey( spep_2 + 112 -a1, ctdogo, 2.64, 2.64 );
setEffScaleKey( spep_2 + 114 -a1, ctdogo, 2.63, 2.63 );
setEffScaleKey( spep_2 + 116 -a1, ctdogo, 2.62, 2.62 );
setEffScaleKey( spep_2 + 118 -a1, ctdogo, 2.61, 2.61 );
setEffScaleKey( spep_2 + 120 -a1, ctdogo, 2.6, 2.6 );
setEffScaleKey( spep_2 + 122 -a1, ctdogo, 2.59, 2.59 );
setEffScaleKey( spep_2 + 124 -a1, ctdogo, 2.58, 2.58 );
setEffScaleKey( spep_2 + 126 -a1, ctdogo, 2.57, 2.57 );
setEffScaleKey( spep_2 + 128 -a1, ctdogo, 2.56, 2.56 );
setEffScaleKey( spep_2 + 130 -a1, ctdogo, 2.55, 2.55 );
setEffScaleKey( spep_2 + 132 -a1, ctdogo, 2.54, 2.54 );
setEffScaleKey( spep_2 + 134 -a1, ctdogo, 2.53, 2.53 );
setEffScaleKey( spep_2 + 136 -a1, ctdogo, 2.52, 2.52 );
setEffScaleKey( spep_2 + 138 -a1, ctdogo, 2.51, 2.51 );

setEffRotateKey( spep_2 + 64 -a1, ctdogo, -7.2 );
setEffRotateKey( spep_2 + 104 -a1, ctdogo, -7.2 );
setEffRotateKey( spep_2 + 106 -a1, ctdogo, -7.1 );
setEffRotateKey( spep_2 + 138 -a1, ctdogo, -7.1 );

setEffAlphaKey( spep_2 + 64 -a1, ctdogo, 85 );
setEffAlphaKey( spep_2 + 66 -a1, ctdogo, 170 );
setEffAlphaKey( spep_2 + 68 -a1, ctdogo, 255 );
setEffAlphaKey( spep_2 + 138 -a1, ctdogo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 62, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, -618.3, 744.6 , 0 );
setMoveKey( spep_2 + 2, 1, -549.5, 694.6 , 0 );
setMoveKey( spep_2 + 4, 1, -487.1, 615.4 , 0 );
setMoveKey( spep_2 + 6, 1, -432.1, 569.2 , 0 );
setMoveKey( spep_2 + 8, 1, -369.2, 499.1 , 0 );
setMoveKey( spep_2 + 10, 1, -311.7, 456.7 , 0 );
setMoveKey( spep_2 + 12, 1, -264.6, 396.1 , 0 );
setMoveKey( spep_2 + 14, 1, -219.1, 359.2 , 0 );
setMoveKey( spep_2 + 16, 1, -173.3, 306.1 , 0 );
setMoveKey( spep_2 + 18, 1, -129, 272.4 , 0 );
setMoveKey( spep_2 + 20, 1, -95.1, 229.2 , 0 );
setMoveKey( spep_2 + 22, 1, -61.2, 201.8 , 0 );
setMoveKey( spep_2 + 24, 1, -30.4, 165.4 , 0 );
setMoveKey( spep_2 + 26, 1, -0.2, 142 , 0 );
setMoveKey( spep_2 + 28, 1, 21.3, 114.5 , 0 );
setMoveKey( spep_2 + 30, 1, 42.4, 97.8 , 0 );
setMoveKey( spep_2 + 32, 1, 48.4, 85.4 , 0 );
setMoveKey( spep_2 + 34, 1, 56.7, 79.8 , 0 );
setMoveKey( spep_2 + 36, 1, 60.3, 69.2 , 0 );
setMoveKey( spep_2 + 38, 1, 66.5, 65.1 , 0 );
setMoveKey( spep_2 + 40, 1, 71.6, 54.1 , 0 );
setMoveKey( spep_2 + 42, 1, 79, 49.3 , 0 );
setMoveKey( spep_2 + 44, 1, 81.9, 40.2 , 0 );
setMoveKey( spep_2 + 46, 1, 87.4, 36.8 , 0 );
setMoveKey( spep_2 + 48, 1, 91.4, 27.4 , 0 );
setMoveKey( spep_2 + 50, 1, 98, 23.4 , 0 );
setMoveKey( spep_2 + 52, 1, 100, 15.6 , 0 );
setMoveKey( spep_2 + 54, 1, 104.8, 13.2 , 0 );
setMoveKey( spep_2 + 56, 1, 107.9, 5 , 0 );
setMoveKey( spep_2 + 58, 1, 113.6, 2 , 0 );
setMoveKey( spep_2 + 60, 1, 114.9, -4.4 , 0 );
setMoveKey( spep_2 + 62, 1, 114.9, -4.4 , 0 );

setScaleKey( spep_2 + 0, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 2, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 4, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 6, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 8, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 10, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 12, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 14, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 16, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 18, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 20, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 22, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 26, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 28, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 30, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 32, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 34, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 36, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 38, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 40, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 42, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 44, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 46, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 48, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 50, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 52, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 54, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 56, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 58, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 60, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 62, 1, 0.37, 0.37 );

setRotateKey( spep_2 + 0, 1, -0.5 );
setRotateKey( spep_2 + 2, 1, 3.3 );
setRotateKey( spep_2 + 4, 1, 6.9 );
setRotateKey( spep_2 + 6, 1, 10.4 );
setRotateKey( spep_2 + 8, 1, 13.7 );
setRotateKey( spep_2 + 10, 1, 16.7 );
setRotateKey( spep_2 + 12, 1, 19.6 );
setRotateKey( spep_2 + 14, 1, 22.3 );
setRotateKey( spep_2 + 16, 1, 24.8 );
setRotateKey( spep_2 + 18, 1, 27.2 );
setRotateKey( spep_2 + 20, 1, 29.3 );
setRotateKey( spep_2 + 22, 1, 31.2 );
setRotateKey( spep_2 + 24, 1, 33 );
setRotateKey( spep_2 + 26, 1, 34.6 );
setRotateKey( spep_2 + 28, 1, 35.9 );
setRotateKey( spep_2 + 30, 1, 37.1 );
setRotateKey( spep_2 + 32, 1, 38.1 );
setRotateKey( spep_2 + 34, 1, 39.1 );
setRotateKey( spep_2 + 36, 1, 40.1 );
setRotateKey( spep_2 + 38, 1, 41 );
setRotateKey( spep_2 + 40, 1, 41.9 );
setRotateKey( spep_2 + 42, 1, 42.7 );
setRotateKey( spep_2 + 44, 1, 43.5 );
setRotateKey( spep_2 + 46, 1, 44.3 );
setRotateKey( spep_2 + 48, 1, 45.1 );
setRotateKey( spep_2 + 50, 1, 45.8 );
setRotateKey( spep_2 + 52, 1, 46.5 );
setRotateKey( spep_2 + 54, 1, 47.1 );
setRotateKey( spep_2 + 56, 1, 47.7 );
setRotateKey( spep_2 + 58, 1, 48.3 );
setRotateKey( spep_2 + 60, 1, 48.8 );
setRotateKey( spep_2 + 62, 1, 48.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 62, 1023 );  --着弾

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;

------------------------------------------------------
-- 気溜め(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_3 + 0, SP_06r, 176, 0x100, -1, 0, 0, 0 );  --気溜め(ef_006)
setEffMoveKey( spep_3 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, kidame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, kidame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidame, 0 );
setEffRotateKey( spep_3 + 176, kidame, 0 );
setEffAlphaKey( spep_3 + 0, kidame, 255 );
setEffAlphaKey( spep_3 + 176, kidame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3 + 20, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 20, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 176, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen2, 176, 10 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.88, 1.94 );
setEffScaleKey( spep_3 + 176, shuchusen2, 1.88, 1.94 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 176, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 176, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 34,  190006, 70, 0x100, -1, 0, -8.5, 515.5 );  --ゴゴゴ
setEffShake( spep_3 + 34, ctgogo, 68, 10 );

setEffMoveKey( spep_3 + 34, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_3 + 104, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 34, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 96, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 98, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_3 + 100, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_3 + 102, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_3 + 104, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_3 + 34, ctgogo, 0 );
setEffRotateKey( spep_3 + 104, ctgogo, 0 );

setEffAlphaKey( spep_3 + 34, ctgogo, 255 );
setEffAlphaKey( spep_3 + 104, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 34, SE_04 );  --ゴゴゴ
SE0 = playSe( spep_3 + 104, 1050 );
stopSe( spep_3 + 174, SE0, 0 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 176;

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

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- かめはめ波発射(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamebeam = entryEffectLife( spep_5 + 0, SP_07r, 118, 0x100, -1, 0, 0, 0 );  --かめはめ波発射(ef_007)
setEffMoveKey( spep_5 + 0, kamebeam, 0, 0 , 0 );
setEffMoveKey( spep_5 + 118, kamebeam, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kamebeam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 118, kamebeam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kamebeam, 0 );
setEffRotateKey( spep_5 + 118, kamebeam, 0 );
setEffAlphaKey( spep_5 + 0, kamebeam, 255 );
setEffAlphaKey( spep_5 + 118, kamebeam, 255 );

-- ** 書き文字エントリー ** --
ctzuo3 = entryEffectLife( spep_5 + 50,  10012, 66, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_5 + 56, ctzuo3, 52, 20 );

setEffMoveKey( spep_5 + 50, ctzuo3, 78.7, 260.5 , 0 );
setEffMoveKey( spep_5 + 52, ctzuo3, 117.2, 303.7 , 0 );
setEffMoveKey( spep_5 + 54, ctzuo3, 137.7, 364.8 , 0 );
setEffMoveKey( spep_5 + 56, ctzuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 108, ctzuo3, 153.7, 348.8 , 0 );
setEffMoveKey( spep_5 + 110, ctzuo3, 155.9, 366.7 , 0 );
setEffMoveKey( spep_5 + 112, ctzuo3, 202, 340.7 , 0 );
setEffMoveKey( spep_5 + 114, ctzuo3, 192.1, 370.5 , 0 );
setEffMoveKey( spep_5 + 116, ctzuo3, 210.3, 372.4 , 0 );

setEffScaleKey( spep_5 + 50, ctzuo3, 0.34, 0.34 );
setEffScaleKey( spep_5 + 52, ctzuo3, 1.54, 1.54 );
setEffScaleKey( spep_5 + 54, ctzuo3, 2.73, 2.73 );
setEffScaleKey( spep_5 + 108, ctzuo3, 2.73, 2.73 );
setEffScaleKey( spep_5 + 110, ctzuo3, 3.75, 3.75 );
setEffScaleKey( spep_5 + 112, ctzuo3, 4.78, 4.78 );
setEffScaleKey( spep_5 + 114, ctzuo3, 5.8, 5.8 );
setEffScaleKey( spep_5 + 116, ctzuo3, 6.82, 6.82 );

setEffRotateKey( spep_5 + 50, ctzuo3, 27.2 );
setEffRotateKey( spep_5 + 116, ctzuo3, 27.2 );

setEffAlphaKey( spep_5 + 50, ctzuo3, 255 );
setEffAlphaKey( spep_5 + 108, ctzuo3, 255 );
setEffAlphaKey( spep_5 + 110, ctzuo3, 191 );
setEffAlphaKey( spep_5 + 112, ctzuo3, 128 );
setEffAlphaKey( spep_5 + 114, ctzuo3, 64 );
setEffAlphaKey( spep_5 + 116, ctzuo3, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + 46, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + 108, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_5 + 50, 1022 );  --発射

-- ** 次の準備 ** --
spep_6 = spep_5 + 118;

------------------------------------------------------
-- かめはめ波着弾(226F)
------------------------------------------------------

-- ** エフェクト等 ** --
kametyaku_f = entryEffectLife( spep_6 + 0, SP_08r, 226, 0x100, -1, 0, 0, 0 );  --かめはめ波着弾　手前(ef_008)
setEffMoveKey( spep_6 + 0, kametyaku_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 226, kametyaku_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kametyaku_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 226, kametyaku_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kametyaku_f, 0 );
setEffRotateKey( spep_6 + 226, kametyaku_f, 0 );
setEffAlphaKey( spep_6 + 0, kametyaku_f, 255 );
setEffAlphaKey( spep_6 + 226, kametyaku_f, 255 );

kametyaku_b = entryEffectLife( spep_6 + 0, SP_09, 226, 0x80, -1, 0, 0, 0 );  --かめはめ波着弾　奥(ef_009)
setEffMoveKey( spep_6 + 0, kametyaku_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 226, kametyaku_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kametyaku_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 226, kametyaku_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kametyaku_b, 0 );
setEffRotateKey( spep_6 + 226, kametyaku_b, 0 );
setEffAlphaKey( spep_6 + 0, kametyaku_b, 255 );
setEffAlphaKey( spep_6 + 226, kametyaku_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 50, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 373.4, -274.7 , 0 );
setMoveKey( spep_6 + 2, 1, 366.9, -266.6 , 0 );
setMoveKey( spep_6 + 4, 1, 360.4, -263.5 , 0 );
setMoveKey( spep_6 + 6, 1, 352.5, -255.8 , 0 );
setMoveKey( spep_6 + 8, 1, 347.4, -252.4 , 0 );
setMoveKey( spep_6 + 10, 1, 341, -244.4 , 0 );
setMoveKey( spep_6 + 12, 1, 334.5, -241.2 , 0 );
setMoveKey( spep_6 + 14, 1, 326.6, -233.5 , 0 );
setMoveKey( spep_6 + 16, 1, 321.5, -230.1 , 0 );
setMoveKey( spep_6 + 18, 1, 315.1, -222.2 , 0 );
setMoveKey( spep_6 + 20, 1, 308.5, -218.9 , 0 );
setMoveKey( spep_6 + 22, 1, 300.7, -211.3 , 0 );
setMoveKey( spep_6 + 24, 1, 295.6, -207.8 , 0 );
setMoveKey( spep_6 + 26, 1, 289.2, -200 , 0 );
setMoveKey( spep_6 + 28, 1, 282.6, -196.6 , 0 );
setMoveKey( spep_6 + 30, 1, 274.8, -189.1 , 0 );
setMoveKey( spep_6 + 32, 1, 269.7, -185.5 , 0 );
setMoveKey( spep_6 + 34, 1, 263.2, -177.7 , 0 );
setMoveKey( spep_6 + 36, 1, 256.7, -174.3 , 0 );
setMoveKey( spep_6 + 38, 1, 249, -166.8 , 0 );
setMoveKey( spep_6 + 40, 1, 243.7, -163.2 , 0 );
setMoveKey( spep_6 + 42, 1, 237.3, -155.5 , 0 );
setMoveKey( spep_6 + 44, 1, 230.8, -152 , 0 );
setMoveKey( spep_6 + 46, 1, 223.1, -144.6 , 0 );
setMoveKey( spep_6 + 48, 1, 217.8, -140.9 , 0 );
setMoveKey( spep_6 + 50, 1, 217.8, -140.9 , 0 );

setScaleKey( spep_6 + 0, 1, 0.34, 0.34 );
setScaleKey( spep_6 + 6, 1, 0.34, 0.34 );
setScaleKey( spep_6 + 8, 1, 0.33, 0.33 );
setScaleKey( spep_6 + 16, 1, 0.33, 0.33 );
setScaleKey( spep_6 + 18, 1, 0.32, 0.32 );
setScaleKey( spep_6 + 24, 1, 0.32, 0.32 );
setScaleKey( spep_6 + 26, 1, 0.31, 0.31 );
setScaleKey( spep_6 + 32, 1, 0.31, 0.31 );
setScaleKey( spep_6 + 34, 1, 0.3, 0.3 );
setScaleKey( spep_6 + 40, 1, 0.3, 0.3 );
setScaleKey( spep_6 + 42, 1, 0.29, 0.29 );
setScaleKey( spep_6 + 50, 1, 0.29, 0.29 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 50, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 46, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_6 + 125, 0, 2, 12, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade
entryFade( spep_6 + 202, 22, 4, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade

-- ** 音 ** --
playSe( spep_6 + 48, 1023 );  --着弾１
playSe( spep_6 + 127, 1024 );  --着弾２

-- ** 次の準備 ** --
spep_7 = spep_6 + 226;

------------------------------------------------------
-- 爆発(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_7 + 0, SP_10r, 0x100, -1, 0, 0, 0 );  --ラスト爆発(ef_010)
setEffMoveKey( spep_7 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_7 + 126, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_7 + 126, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bakuha, 0 );
setEffRotateKey( spep_7 + 126, bakuha, 0 );
setEffAlphaKey( spep_7 + 0, bakuha, 255 );
setEffAlphaKey( spep_7 + 126, bakuha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 126, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE1 = playSe( spep_7 + 2, 1044 );
stopSe( spep_7 + 120, SE1, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 12 );
entryFade( spep_7 + 114, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 126 );

end



--時の界王神(時の力解放)_時の審判

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
SP_01 = 152429; --腕を上げる
SP_02 = 152430; --迫る
SP_03 = 152431; --溜め
SP_04 = 152433; --腕を下げる
SP_05 = 152434; --落雷ヒット下
SP_06 = 152435; --落雷ヒット上

--敵側
SP_03x = 152432; --溜め

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
-- 腕を上げる(58F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
udeage = entryEffectLife( spep_0 + 0, SP_01, 58, 0, -1, 0, 0, 0 );  --腕を上げる(ef_001)
setEffMoveKey( spep_0 + 0, udeage, 0, 0 , 0 );
setEffMoveKey( spep_0 + 58, udeage, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, udeage, 1.0, 1.0 );
setEffScaleKey( spep_0 + 58, udeage, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, udeage, 255 );
setEffAlphaKey( spep_0 + 58, udeage, 255 );
setEffRotateKey( spep_0 + 0, udeage, 0 );
setEffRotateKey( spep_0 + 58, udeage, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 58, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 58, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 58, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 2, shuchusen1, 180 );
setEffRotateKey( spep_0 + 4, shuchusen1, 0 );
setEffRotateKey( spep_0 + 6, shuchusen1, 180 );
setEffRotateKey( spep_0 + 8, shuchusen1, 0 );
setEffRotateKey( spep_0 + 10, shuchusen1, 180 );
setEffRotateKey( spep_0 + 12, shuchusen1, 0 );
setEffRotateKey( spep_0 + 14, shuchusen1, 180 );
setEffRotateKey( spep_0 + 16, shuchusen1, 0 );
setEffRotateKey( spep_0 + 18, shuchusen1, 180 );
setEffRotateKey( spep_0 + 20, shuchusen1, 0 );
setEffRotateKey( spep_0 + 22, shuchusen1, 180 );
setEffRotateKey( spep_0 + 24, shuchusen1, 0 );
setEffRotateKey( spep_0 + 26, shuchusen1, 180 );
setEffRotateKey( spep_0 + 28, shuchusen1, 0 );
setEffRotateKey( spep_0 + 30, shuchusen1, 180 );
setEffRotateKey( spep_0 + 32, shuchusen1, 0 );
setEffRotateKey( spep_0 + 34, shuchusen1, 180 );
setEffRotateKey( spep_0 + 36, shuchusen1, 0 );
setEffRotateKey( spep_0 + 38, shuchusen1, 180 );
setEffRotateKey( spep_0 + 40, shuchusen1, 0 );
setEffRotateKey( spep_0 + 42, shuchusen1, 180 );
setEffRotateKey( spep_0 + 44, shuchusen1, 0 );
setEffRotateKey( spep_0 + 46, shuchusen1, 180 );
setEffRotateKey( spep_0 + 48, shuchusen1, 0 );
setEffRotateKey( spep_0 + 50, shuchusen1, 180 );
setEffRotateKey( spep_0 + 52, shuchusen1, 0 );
setEffRotateKey( spep_0 + 54, shuchusen1, 180 );
setEffRotateKey( spep_0 + 56, shuchusen1, 0 );
setEffRotateKey( spep_0 + 58, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 58, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_0 + 0, 1034 ); --気溜め
playSe( spep_0 + 20, 1034 );
playSe( spep_0 + 40, 1034 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 58, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 58;

------------------------------------------------------
-- 迫る(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
semaru = entryEffectLife( spep_1 + 0, SP_02, 98, 0x100, -1, 0, 0, 0 ); --迫る(ef_002)
setEffMoveKey( spep_1 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, semaru, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_1 + 98, semaru, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, semaru, 0 );
setEffRotateKey( spep_1 + 98, semaru, 0 );
setEffAlphaKey( spep_1 + 0, semaru, 255 );
setEffAlphaKey( spep_1 + 96, semaru, 255 );
setEffAlphaKey( spep_1 + 97, semaru, 255 );
setEffAlphaKey( spep_1 + 98, semaru, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 94, 0x100, -1, 0, 0, 0 );  --集中線
shuchusen2x = entryEffectLife( spep_1 + 94,  906, 4, 0x80, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 94, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 94, shuchusen2x, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, shuchusen2x, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 + 94, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 + 94, shuchusen2x, 1.2, 1.2 );
setEffScaleKey( spep_1 + 98, shuchusen2x, 1.2, 1.2 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 2, shuchusen2, 180 );
setEffRotateKey( spep_1 + 4, shuchusen2, 0 );
setEffRotateKey( spep_1 + 6, shuchusen2, 180 );
setEffRotateKey( spep_1 + 8, shuchusen2, 0 );
setEffRotateKey( spep_1 + 10, shuchusen2, 180 );
setEffRotateKey( spep_1 + 12, shuchusen2, 0 );
setEffRotateKey( spep_1 + 14, shuchusen2, 180 );
setEffRotateKey( spep_1 + 16, shuchusen2, 0 );
setEffRotateKey( spep_1 + 18, shuchusen2, 180 );
setEffRotateKey( spep_1 + 20, shuchusen2, 0 );
setEffRotateKey( spep_1 + 22, shuchusen2, 180 );
setEffRotateKey( spep_1 + 24, shuchusen2, 0 );
setEffRotateKey( spep_1 + 26, shuchusen2, 180 );
setEffRotateKey( spep_1 + 28, shuchusen2, 0 );
setEffRotateKey( spep_1 + 30, shuchusen2, 180 );
setEffRotateKey( spep_1 + 32, shuchusen2, 0 );
setEffRotateKey( spep_1 + 34, shuchusen2, 180 );
setEffRotateKey( spep_1 + 36, shuchusen2, 0 );
setEffRotateKey( spep_1 + 38, shuchusen2, 180 );
setEffRotateKey( spep_1 + 40, shuchusen2, 0 );
setEffRotateKey( spep_1 + 42, shuchusen2, 180 );
setEffRotateKey( spep_1 + 44, shuchusen2, 0 );
setEffRotateKey( spep_1 + 46, shuchusen2, 180 );
setEffRotateKey( spep_1 + 48, shuchusen2, 0 );
setEffRotateKey( spep_1 + 50, shuchusen2, 180 );
setEffRotateKey( spep_1 + 52, shuchusen2, 0 );
setEffRotateKey( spep_1 + 54, shuchusen2, 180 );
setEffRotateKey( spep_1 + 56, shuchusen2, 0 );
setEffRotateKey( spep_1 + 58, shuchusen2, 180 );
setEffRotateKey( spep_1 + 60, shuchusen2, 0 );
setEffRotateKey( spep_1 + 62, shuchusen2, 180 );
setEffRotateKey( spep_1 + 64, shuchusen2, 0 );
setEffRotateKey( spep_1 + 66, shuchusen2, 180 );
setEffRotateKey( spep_1 + 68, shuchusen2, 0 );
setEffRotateKey( spep_1 + 70, shuchusen2, 180 );
setEffRotateKey( spep_1 + 72, shuchusen2, 0 );
setEffRotateKey( spep_1 + 74, shuchusen2, 180 );
setEffRotateKey( spep_1 + 76, shuchusen2, 0 );
setEffRotateKey( spep_1 + 78, shuchusen2, 180 );
setEffRotateKey( spep_1 + 80, shuchusen2, 0 );
setEffRotateKey( spep_1 + 82, shuchusen2, 180 );
setEffRotateKey( spep_1 + 84, shuchusen2, 0 );
setEffRotateKey( spep_1 + 86, shuchusen2, 180 );
setEffRotateKey( spep_1 + 88, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 180 );
setEffRotateKey( spep_1 + 92, shuchusen2, 0 );
setEffRotateKey( spep_1 + 94, shuchusen2, 180 );
setEffRotateKey( spep_1 + 94, shuchusen2x, 180 );
setEffRotateKey( spep_1 + 96, shuchusen2x, 0 );
setEffRotateKey( spep_1 + 98, shuchusen2x, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 94, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 94, shuchusen2x, 255 );
setEffAlphaKey( spep_1 + 98, shuchusen2x, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1 + 4, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 + 4, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 + 14,  190006, 74, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffMoveKey( spep_1 + 14, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 15, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 16, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 18, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 20, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 22, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 24, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 26, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 28, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 30, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 32, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 34, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 36, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 38, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 40, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 42, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 44, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 46, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 48, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 50, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 52, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 54, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 56, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 58, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 60, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 62, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 64, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 66, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 68, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 70, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 72, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 74, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 76, ctgogo, -8.5, 521.8 , 0 );
setEffMoveKey( spep_1 + 78, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_1 + 80, ctgogo, -7.7, 521.8 , 0 );
setEffMoveKey( spep_1 + 82, ctgogo, -3.2, 511.9 , 0 );
setEffMoveKey( spep_1 + 84, ctgogo, -3.1, 521.8 , 0 );
setEffMoveKey( spep_1 + 86, ctgogo, -0.8, 521.8 , 0 );
setEffMoveKey( spep_1 + 88, ctgogo, -0.8, 521.8 , 0 );

setEffScaleKey( spep_1 + 14, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 80, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 82, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_1 + 84, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_1 + 88, ctgogo, 1.4, 1.4 );

setEffRotateKey( spep_1 + 14, ctgogo, 0 );
setEffRotateKey( spep_1 + 88, ctgogo, 0 );

setEffAlphaKey( spep_1 + 14, ctgogo, 0 );
setEffAlphaKey( spep_1 + 15, ctgogo, 255 );
setEffAlphaKey( spep_1 + 16, ctgogo, 255 );
setEffAlphaKey( spep_1 + 80, ctgogo, 255 );
setEffAlphaKey( spep_1 + 82, ctgogo, 191 );
setEffAlphaKey( spep_1 + 86, ctgogo, 64 );
setEffAlphaKey( spep_1 + 88, ctgogo, 0 );

-- ** 黒背景 ** --
entryFadeBg(spep_1 + 0, 0, 98, 0, 0, 0, 0, 200 );  --薄い黒　背景

--白フェード
entryFade( spep_1 + 90, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_1 + 14, SE_04 ); --ゴゴゴ

-- ** 次の準備 ** --
spep_2 = spep_1 + 98;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 2, shuchusen3, 180 );
setEffRotateKey( spep_2 + 4, shuchusen3, 0 );
setEffRotateKey( spep_2 + 6, shuchusen3, 180 );
setEffRotateKey( spep_2 + 8, shuchusen3, 0 );
setEffRotateKey( spep_2 + 10, shuchusen3, 180 );
setEffRotateKey( spep_2 + 12, shuchusen3, 0 );
setEffRotateKey( spep_2 + 14, shuchusen3, 180 );
setEffRotateKey( spep_2 + 16, shuchusen3, 0 );
setEffRotateKey( spep_2 + 10, shuchusen3, 180 );
setEffRotateKey( spep_2 + 12, shuchusen3, 0 );
setEffRotateKey( spep_2 + 14, shuchusen3, 180 );
setEffRotateKey( spep_2 + 16, shuchusen3, 0 );
setEffRotateKey( spep_2 + 18, shuchusen3, 180 );
setEffRotateKey( spep_2 + 20, shuchusen3, 0 );
setEffRotateKey( spep_2 + 22, shuchusen3, 180 );
setEffRotateKey( spep_2 + 24, shuchusen3, 0 );
setEffRotateKey( spep_2 + 26, shuchusen3, 180 );
setEffRotateKey( spep_2 + 28, shuchusen3, 0 );
setEffRotateKey( spep_2 + 30, shuchusen3, 180 );
setEffRotateKey( spep_2 + 32, shuchusen3, 0 );
setEffRotateKey( spep_2 + 34, shuchusen3, 180 );
setEffRotateKey( spep_2 + 36, shuchusen3, 0 );
setEffRotateKey( spep_2 + 38, shuchusen3, 180 );
setEffRotateKey( spep_2 + 40, shuchusen3, 0 );
setEffRotateKey( spep_2 + 42, shuchusen3, 180 );
setEffRotateKey( spep_2 + 44, shuchusen3, 0 );
setEffRotateKey( spep_2 + 46, shuchusen3, 180 );
setEffRotateKey( spep_2 + 48, shuchusen3, 0 );
setEffRotateKey( spep_2 + 50, shuchusen3, 180 );
setEffRotateKey( spep_2 + 52, shuchusen3, 0 );
setEffRotateKey( spep_2 + 54, shuchusen3, 180 );
setEffRotateKey( spep_2 + 56, shuchusen3, 0 );
setEffRotateKey( spep_2 + 58, shuchusen3, 180 );
setEffRotateKey( spep_2 + 60, shuchusen3, 0 );
setEffRotateKey( spep_2 + 62, shuchusen3, 180 );
setEffRotateKey( spep_2 + 64, shuchusen3, 0 );
setEffRotateKey( spep_2 + 66, shuchusen3, 0 );
setEffRotateKey( spep_2 + 68, shuchusen3, 180 );
setEffRotateKey( spep_2 + 70, shuchusen3, 0 );
setEffRotateKey( spep_2 + 72, shuchusen3, 180 );
setEffRotateKey( spep_2 + 74, shuchusen3, 0 );
setEffRotateKey( spep_2 + 76, shuchusen3, 180 );
setEffRotateKey( spep_2 + 78, shuchusen3, 0 );
setEffRotateKey( spep_2 + 80, shuchusen3, 180 );
setEffRotateKey( spep_2 + 82, shuchusen3, 0 );
setEffRotateKey( spep_2 + 84, shuchusen3, 180 );
setEffRotateKey( spep_2 + 86, shuchusen3, 0 );
setEffRotateKey( spep_2 + 88, shuchusen3, 180 );
setEffRotateKey( spep_2 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;
entryFade( spep_3 - 8, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 溜め(168F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_03, 168, 0x100, -1, 0, 0, 0 ); --溜め(ef_004)
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 168, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 168, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 168, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 168, tame, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 168, 0x100, -1, 0, 0, 125 );  --集中線
setEffMoveKey( spep_3 + 0, shuchusen4, 0, 125 , 0 );
setEffMoveKey( spep_3 + 168, shuchusen4, 0, 125 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.6, 1.65 );
setEffScaleKey( spep_3 + 168, shuchusen4, 1.6, 1.65 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 2, shuchusen4, 180 );
setEffRotateKey( spep_3 + 4, shuchusen4, 0 );
setEffRotateKey( spep_3 + 6, shuchusen4, 180 );
setEffRotateKey( spep_3 + 8, shuchusen4, 0 );
setEffRotateKey( spep_3 + 10, shuchusen4, 180 );
setEffRotateKey( spep_3 + 12, shuchusen4, 0 );
setEffRotateKey( spep_3 + 14, shuchusen4, 180 );
setEffRotateKey( spep_3 + 16, shuchusen4, 0 );
setEffRotateKey( spep_3 + 18, shuchusen4, 180 );
setEffRotateKey( spep_3 + 20, shuchusen4, 0 );
setEffRotateKey( spep_3 + 22, shuchusen4, 180 );
setEffRotateKey( spep_3 + 24, shuchusen4, 0 );
setEffRotateKey( spep_3 + 26, shuchusen4, 180 );
setEffRotateKey( spep_3 + 28, shuchusen4, 0 );
setEffRotateKey( spep_3 + 30, shuchusen4, 180 );
setEffRotateKey( spep_3 + 32, shuchusen4, 0 );
setEffRotateKey( spep_3 + 34, shuchusen4, 180 );
setEffRotateKey( spep_3 + 36, shuchusen4, 0 );
setEffRotateKey( spep_3 + 38, shuchusen4, 180 );
setEffRotateKey( spep_3 + 40, shuchusen4, 0 );
setEffRotateKey( spep_3 + 42, shuchusen4, 180 );
setEffRotateKey( spep_3 + 44, shuchusen4, 0 );
setEffRotateKey( spep_3 + 46, shuchusen4, 180 );
setEffRotateKey( spep_3 + 48, shuchusen4, 0 );
setEffRotateKey( spep_3 + 50, shuchusen4, 180 );
setEffRotateKey( spep_3 + 52, shuchusen4, 0 );
setEffRotateKey( spep_3 + 54, shuchusen4, 180 );
setEffRotateKey( spep_3 + 56, shuchusen4, 0 );
setEffRotateKey( spep_3 + 58, shuchusen4, 180 );
setEffRotateKey( spep_3 + 60, shuchusen4, 0 );
setEffRotateKey( spep_3 + 62, shuchusen4, 180 );
setEffRotateKey( spep_3 + 64, shuchusen4, 0 );
setEffRotateKey( spep_3 + 66, shuchusen4, 180 );
setEffRotateKey( spep_3 + 68, shuchusen4, 0 );
setEffRotateKey( spep_3 + 70, shuchusen4, 180 );
setEffRotateKey( spep_3 + 72, shuchusen4, 0 );
setEffRotateKey( spep_3 + 74, shuchusen4, 180 );
setEffRotateKey( spep_3 + 76, shuchusen4, 0 );
setEffRotateKey( spep_3 + 78, shuchusen4, 180 );
setEffRotateKey( spep_3 + 80, shuchusen4, 0 );
setEffRotateKey( spep_3 + 82, shuchusen4, 180 );
setEffRotateKey( spep_3 + 84, shuchusen4, 0 );
setEffRotateKey( spep_3 + 86, shuchusen4, 180 );
setEffRotateKey( spep_3 + 88, shuchusen4, 0 );
setEffRotateKey( spep_3 + 90, shuchusen4, 180 );
setEffRotateKey( spep_3 + 92, shuchusen4, 0 );
setEffRotateKey( spep_3 + 94, shuchusen4, 180 );
setEffRotateKey( spep_3 + 96, shuchusen4, 0 );
setEffRotateKey( spep_3 + 98, shuchusen4, 180 );
setEffRotateKey( spep_3 + 100, shuchusen4, 0 );
setEffRotateKey( spep_3 + 102, shuchusen4, 180 );
setEffRotateKey( spep_3 + 104, shuchusen4, 0 );
setEffRotateKey( spep_3 + 106, shuchusen4, 180 );
setEffRotateKey( spep_3 + 108, shuchusen4, 0 );
setEffRotateKey( spep_3 + 110, shuchusen4, 180 );
setEffRotateKey( spep_3 + 112, shuchusen4, 0 );
setEffRotateKey( spep_3 + 114, shuchusen4, 180 );
setEffRotateKey( spep_3 + 116, shuchusen4, 0 );
setEffRotateKey( spep_3 + 118, shuchusen4, 180 );
setEffRotateKey( spep_3 + 120, shuchusen4, 0 );
setEffRotateKey( spep_3 + 122, shuchusen4, 180 );
setEffRotateKey( spep_3 + 124, shuchusen4, 0 );
setEffRotateKey( spep_3 + 126, shuchusen4, 180 );
setEffRotateKey( spep_3 + 128, shuchusen4, 0 );
setEffRotateKey( spep_3 + 130, shuchusen4, 180 );
setEffRotateKey( spep_3 + 132, shuchusen4, 0 );
setEffRotateKey( spep_3 + 134, shuchusen4, 180 );
setEffRotateKey( spep_3 + 136, shuchusen4, 0 );
setEffRotateKey( spep_3 + 138, shuchusen4, 180 );
setEffRotateKey( spep_3 + 140, shuchusen4, 0 );
setEffRotateKey( spep_3 + 142, shuchusen4, 180 );
setEffRotateKey( spep_3 + 144, shuchusen4, 0 );
setEffRotateKey( spep_3 + 146, shuchusen4, 180 );
setEffRotateKey( spep_3 + 148, shuchusen4, 0 );
setEffRotateKey( spep_3 + 150, shuchusen4, 180 );
setEffRotateKey( spep_3 + 152, shuchusen4, 0 );
setEffRotateKey( spep_3 + 154, shuchusen4, 180 );
setEffRotateKey( spep_3 + 156, shuchusen4, 0 );
setEffRotateKey( spep_3 + 158, shuchusen4, 180 );
setEffRotateKey( spep_3 + 160, shuchusen4, 0 );
setEffRotateKey( spep_3 + 162, shuchusen4, 180 );
setEffRotateKey( spep_3 + 164, shuchusen4, 0 );
setEffRotateKey( spep_3 + 166, shuchusen4, 180 );
setEffRotateKey( spep_3 + 168, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 168, shuchusen4, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 0, 1037 );
--[[playSe( spep_3 + 0, 1020 );
playSe( spep_3 + 30, 1020 );
playSe( spep_3 + 60, 1020 );
playSe( spep_3 + 90, 1020 );
playSe( spep_3 + 120, 1020 );
playSe( spep_3 + 150, 1020 );
]]

-- ** ホワイトフェード ** --
entryFade( spep_3 + 158, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 168;

------------------------------------------------------
-- 腕を下げる(138F)
------------------------------------------------------

-- ** エフェクト等 ** --
udesage = entryEffectLife( spep_4 + 0, SP_04, 138, 0x100, -1, 0, 0, 0 ); --腕を下げる(ef_005)
setEffMoveKey( spep_4 + 0, udesage, 0, 0 , 0 );
setEffMoveKey( spep_4 + 138, udesage, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, udesage, 1.0, 1.0 );
setEffScaleKey( spep_4 + 138, udesage, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, udesage, 0 );
setEffRotateKey( spep_4 + 138, udesage, 0 );
setEffAlphaKey( spep_4 + 0, udesage, 250 );
setEffAlphaKey( spep_4 + 138, udesage, 250 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 + 0,  906, 138, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 138, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_4 + 138, shuchusen5, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 2, shuchusen5, 180 );
setEffRotateKey( spep_4 + 4, shuchusen5, 0 );
setEffRotateKey( spep_4 + 6, shuchusen5, 180 );
setEffRotateKey( spep_4 + 8, shuchusen5, 0 );
setEffRotateKey( spep_4 + 10, shuchusen5, 180 );
setEffRotateKey( spep_4 + 12, shuchusen5, 0 );
setEffRotateKey( spep_4 + 14, shuchusen5, 180 );
setEffRotateKey( spep_4 + 16, shuchusen5, 0 );
setEffRotateKey( spep_4 + 18, shuchusen5, 180 );
setEffRotateKey( spep_4 + 20, shuchusen5, 0 );
setEffRotateKey( spep_4 + 22, shuchusen5, 180 );
setEffRotateKey( spep_4 + 24, shuchusen5, 0 );
setEffRotateKey( spep_4 + 26, shuchusen5, 180 );
setEffRotateKey( spep_4 + 28, shuchusen5, 0 );
setEffRotateKey( spep_4 + 30, shuchusen5, 180 );
setEffRotateKey( spep_4 + 32, shuchusen5, 0 );
setEffRotateKey( spep_4 + 34, shuchusen5, 180 );
setEffRotateKey( spep_4 + 36, shuchusen5, 0 );
setEffRotateKey( spep_4 + 38, shuchusen5, 180 );
setEffRotateKey( spep_4 + 40, shuchusen5, 0 );
setEffRotateKey( spep_4 + 42, shuchusen5, 180 );
setEffRotateKey( spep_4 + 44, shuchusen5, 0 );
setEffRotateKey( spep_4 + 46, shuchusen5, 180 );
setEffRotateKey( spep_4 + 48, shuchusen5, 0 );
setEffRotateKey( spep_4 + 50, shuchusen5, 180 );
setEffRotateKey( spep_4 + 52, shuchusen5, 0 );
setEffRotateKey( spep_4 + 54, shuchusen5, 180 );
setEffRotateKey( spep_4 + 56, shuchusen5, 0 );
setEffRotateKey( spep_4 + 58, shuchusen5, 180 );
setEffRotateKey( spep_4 + 60, shuchusen5, 0 );
setEffRotateKey( spep_4 + 62, shuchusen5, 180 );
setEffRotateKey( spep_4 + 64, shuchusen5, 0 );
setEffRotateKey( spep_4 + 66, shuchusen5, 180 );
setEffRotateKey( spep_4 + 68, shuchusen5, 0 );
setEffRotateKey( spep_4 + 70, shuchusen5, 180 );
setEffRotateKey( spep_4 + 72, shuchusen5, 0 );
setEffRotateKey( spep_4 + 74, shuchusen5, 180 );
setEffRotateKey( spep_4 + 76, shuchusen5, 0 );
setEffRotateKey( spep_4 + 78, shuchusen5, 180 );
setEffRotateKey( spep_4 + 80, shuchusen5, 0 );
setEffRotateKey( spep_4 + 82, shuchusen5, 180 );
setEffRotateKey( spep_4 + 84, shuchusen5, 0 );
setEffRotateKey( spep_4 + 86, shuchusen5, 180 );
setEffRotateKey( spep_4 + 88, shuchusen5, 0 );
setEffRotateKey( spep_4 + 90, shuchusen5, 180 );
setEffRotateKey( spep_4 + 92, shuchusen5, 0 );
setEffRotateKey( spep_4 + 94, shuchusen5, 180 );
setEffRotateKey( spep_4 + 96, shuchusen5, 0 );
setEffRotateKey( spep_4 + 98, shuchusen5, 180 );
setEffRotateKey( spep_4 + 100, shuchusen5, 180 );
setEffRotateKey( spep_4 + 102, shuchusen5, 0 );
setEffRotateKey( spep_4 + 104, shuchusen5, 180 );
setEffRotateKey( spep_4 + 106, shuchusen5, 0 );
setEffRotateKey( spep_4 + 108, shuchusen5, 180 );
setEffRotateKey( spep_4 + 110, shuchusen5, 0 );
setEffRotateKey( spep_4 + 112, shuchusen5, 180 );
setEffRotateKey( spep_4 + 114, shuchusen5, 0 );
setEffRotateKey( spep_4 + 116, shuchusen5, 180 );
setEffRotateKey( spep_4 + 118, shuchusen5, 0 );
setEffRotateKey( spep_4 + 120, shuchusen5, 180 );
setEffRotateKey( spep_4 + 122, shuchusen5, 0 );
setEffRotateKey( spep_4 + 124, shuchusen5, 180 );
setEffRotateKey( spep_4 + 126, shuchusen5, 0 );
setEffRotateKey( spep_4 + 128, shuchusen5, 180 );
setEffRotateKey( spep_4 + 130, shuchusen5, 0 );
setEffRotateKey( spep_4 + 132, shuchusen5, 180 );
setEffRotateKey( spep_4 + 134, shuchusen5, 0 );
setEffRotateKey( spep_4 + 136, shuchusen5, 180 );
setEffRotateKey( spep_4 + 138, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 138, shuchusen5, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 138, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_4 + 100, 1013 );  --腕を下げる

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 128, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 138;

------------------------------------------------------
-- 落雷ヒット(392F)
------------------------------------------------------

-- ** エフェクト等 ** --
rakurai1 = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --落雷ヒット下(ef_006)
setEffMoveKey( spep_5 + 0, rakurai1, 0, 0 , 0 );
setEffMoveKey( spep_5 + 392, rakurai1, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, rakurai1, 1.0, 1.0 );
setEffScaleKey( spep_5 + 392, rakurai1, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, rakurai1, 0 );
setEffRotateKey( spep_5 + 392, rakurai1, 0 );
setEffAlphaKey( spep_5 + 0, rakurai1, 250 );
setEffAlphaKey( spep_5 + 392, rakurai1, 250 );

rakurai2 = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); --落雷ヒット上(ef_007)
setEffMoveKey( spep_5 + 0, rakurai2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 392, rakurai2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, rakurai2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 392, rakurai2, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, rakurai2, 0 );
setEffRotateKey( spep_5 + 392, rakurai2, 0 );
setEffAlphaKey( spep_5 + 0, rakurai2, 250 );
setEffAlphaKey( spep_5 + 392, rakurai2, 250 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_5 + 0,  906, 392, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_5 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 392, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen6, 1.6, 1.6 );
setEffScaleKey( spep_5 + 392, shuchusen6, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen6, 0 );
setEffRotateKey( spep_5 + 2, shuchusen6, 180 );
setEffRotateKey( spep_5 + 4, shuchusen6, 0 );
setEffRotateKey( spep_5 + 6, shuchusen6, 180 );
setEffRotateKey( spep_5 + 8, shuchusen6, 0 );
setEffRotateKey( spep_5 + 10, shuchusen6, 180 );
setEffRotateKey( spep_5 + 12, shuchusen6, 0 );
setEffRotateKey( spep_5 + 14, shuchusen6, 180 );
setEffRotateKey( spep_5 + 16, shuchusen6, 0 );
setEffRotateKey( spep_5 + 18, shuchusen6, 180 );
setEffRotateKey( spep_5 + 20, shuchusen6, 0 );
setEffRotateKey( spep_5 + 22, shuchusen6, 180 );
setEffRotateKey( spep_5 + 24, shuchusen6, 0 );
setEffRotateKey( spep_5 + 26, shuchusen6, 180 );
setEffRotateKey( spep_5 + 28, shuchusen6, 0 );
setEffRotateKey( spep_5 + 30, shuchusen6, 180 );
setEffRotateKey( spep_5 + 32, shuchusen6, 0 );
setEffRotateKey( spep_5 + 34, shuchusen6, 180 );
setEffRotateKey( spep_5 + 36, shuchusen6, 0 );
setEffRotateKey( spep_5 + 38, shuchusen6, 180 );
setEffRotateKey( spep_5 + 40, shuchusen6, 0 );
setEffRotateKey( spep_5 + 42, shuchusen6, 180 );
setEffRotateKey( spep_5 + 44, shuchusen6, 0 );
setEffRotateKey( spep_5 + 46, shuchusen6, 180 );
setEffRotateKey( spep_5 + 48, shuchusen6, 0 );
setEffRotateKey( spep_5 + 50, shuchusen6, 180 );
setEffRotateKey( spep_5 + 52, shuchusen6, 0 );
setEffRotateKey( spep_5 + 54, shuchusen6, 180 );
setEffRotateKey( spep_5 + 56, shuchusen6, 0 );
setEffRotateKey( spep_5 + 58, shuchusen6, 180 );
setEffRotateKey( spep_5 + 60, shuchusen6, 0 );
setEffRotateKey( spep_5 + 62, shuchusen6, 180 );
setEffRotateKey( spep_5 + 64, shuchusen6, 0 );
setEffRotateKey( spep_5 + 66, shuchusen6, 180 );
setEffRotateKey( spep_5 + 68, shuchusen6, 0 );
setEffRotateKey( spep_5 + 70, shuchusen6, 180 );
setEffRotateKey( spep_5 + 72, shuchusen6, 0 );
setEffRotateKey( spep_5 + 74, shuchusen6, 180 );
setEffRotateKey( spep_5 + 76, shuchusen6, 0 );
setEffRotateKey( spep_5 + 78, shuchusen6, 180 );
setEffRotateKey( spep_5 + 80, shuchusen6, 0 );
setEffRotateKey( spep_5 + 82, shuchusen6, 180 );
setEffRotateKey( spep_5 + 84, shuchusen6, 0 );
setEffRotateKey( spep_5 + 86, shuchusen6, 180 );
setEffRotateKey( spep_5 + 88, shuchusen6, 0 );
setEffRotateKey( spep_5 + 90, shuchusen6, 180 );
setEffRotateKey( spep_5 + 92, shuchusen6, 0 );
setEffRotateKey( spep_5 + 94, shuchusen6, 180 );
setEffRotateKey( spep_5 + 96, shuchusen6, 0 );
setEffRotateKey( spep_5 + 98, shuchusen6, 180 );
setEffRotateKey( spep_5 + 100, shuchusen6, 0 );
setEffRotateKey( spep_5 + 102, shuchusen6, 180 );
setEffRotateKey( spep_5 + 104, shuchusen6, 0 );
setEffRotateKey( spep_5 + 106, shuchusen6, 180 );
setEffRotateKey( spep_5 + 108, shuchusen6, 0 );
setEffRotateKey( spep_5 + 110, shuchusen6, 180 );
setEffRotateKey( spep_5 + 112, shuchusen6, 0 );
setEffRotateKey( spep_5 + 114, shuchusen6, 180 );
setEffRotateKey( spep_5 + 116, shuchusen6, 0 );
setEffRotateKey( spep_5 + 118, shuchusen6, 180 );
setEffRotateKey( spep_5 + 120, shuchusen6, 0 );
setEffRotateKey( spep_5 + 122, shuchusen6, 180 );
setEffRotateKey( spep_5 + 124, shuchusen6, 0 );
setEffRotateKey( spep_5 + 126, shuchusen6, 180 );
setEffRotateKey( spep_5 + 128, shuchusen6, 0 );
setEffRotateKey( spep_5 + 130, shuchusen6, 180 );
setEffRotateKey( spep_5 + 132, shuchusen6, 0 );
setEffRotateKey( spep_5 + 134, shuchusen6, 180 );
setEffRotateKey( spep_5 + 136, shuchusen6, 0 );
setEffRotateKey( spep_5 + 138, shuchusen6, 180 );
setEffRotateKey( spep_5 + 140, shuchusen6, 0 );
setEffRotateKey( spep_5 + 142, shuchusen6, 180 );
setEffRotateKey( spep_5 + 144, shuchusen6, 0 );
setEffRotateKey( spep_5 + 146, shuchusen6, 180 );
setEffRotateKey( spep_5 + 148, shuchusen6, 0 );
setEffRotateKey( spep_5 + 150, shuchusen6, 180 );
setEffRotateKey( spep_5 + 152, shuchusen6, 0 );
setEffRotateKey( spep_5 + 154, shuchusen6, 180 );
setEffRotateKey( spep_5 + 156, shuchusen6, 0 );
setEffRotateKey( spep_5 + 158, shuchusen6, 180 );
setEffRotateKey( spep_5 + 160, shuchusen6, 0 );
setEffRotateKey( spep_5 + 162, shuchusen6, 180 );
setEffRotateKey( spep_5 + 164, shuchusen6, 0 );
setEffRotateKey( spep_5 + 166, shuchusen6, 180 );
setEffRotateKey( spep_5 + 168, shuchusen6, 0 );
setEffRotateKey( spep_5 + 170, shuchusen6, 180 );
setEffRotateKey( spep_5 + 172, shuchusen6, 0 );
setEffRotateKey( spep_5 + 174, shuchusen6, 180 );
setEffRotateKey( spep_5 + 176, shuchusen6, 0 );
setEffRotateKey( spep_5 + 178, shuchusen6, 180 );
setEffRotateKey( spep_5 + 180, shuchusen6, 0 );
setEffRotateKey( spep_5 + 182, shuchusen6, 180 );
setEffRotateKey( spep_5 + 184, shuchusen6, 0 );
setEffRotateKey( spep_5 + 186, shuchusen6, 180 );
setEffRotateKey( spep_5 + 188, shuchusen6, 0 );
setEffRotateKey( spep_5 + 190, shuchusen6, 180 );
setEffRotateKey( spep_5 + 192, shuchusen6, 0 );
setEffRotateKey( spep_5 + 194, shuchusen6, 180 );
setEffRotateKey( spep_5 + 196, shuchusen6, 0 );
setEffRotateKey( spep_5 + 198, shuchusen6, 180 );
setEffRotateKey( spep_5 + 200, shuchusen6, 0 );
setEffRotateKey( spep_5 + 202, shuchusen6, 180 );
setEffRotateKey( spep_5 + 204, shuchusen6, 0 );
setEffRotateKey( spep_5 + 206, shuchusen6, 180 );
setEffRotateKey( spep_5 + 208, shuchusen6, 0 );
setEffRotateKey( spep_5 + 210, shuchusen6, 180 );
setEffRotateKey( spep_5 + 212, shuchusen6, 0 );
setEffRotateKey( spep_5 + 214, shuchusen6, 180 );
setEffRotateKey( spep_5 + 216, shuchusen6, 0 );
setEffRotateKey( spep_5 + 218, shuchusen6, 180 );
setEffRotateKey( spep_5 + 220, shuchusen6, 0 );
setEffRotateKey( spep_5 + 222, shuchusen6, 180 );
setEffRotateKey( spep_5 + 224, shuchusen6, 0 );
setEffRotateKey( spep_5 + 226, shuchusen6, 180 );
setEffRotateKey( spep_5 + 228, shuchusen6, 0 );
setEffRotateKey( spep_5 + 230, shuchusen6, 180 );
setEffRotateKey( spep_5 + 232, shuchusen6, 0 );
setEffRotateKey( spep_5 + 234, shuchusen6, 180 );
setEffRotateKey( spep_5 + 236, shuchusen6, 0 );
setEffRotateKey( spep_5 + 238, shuchusen6, 180 );
setEffRotateKey( spep_5 + 240, shuchusen6, 0 );
setEffRotateKey( spep_5 + 242, shuchusen6, 180 );
setEffRotateKey( spep_5 + 244, shuchusen6, 0 );
setEffRotateKey( spep_5 + 246, shuchusen6, 180 );
setEffRotateKey( spep_5 + 248, shuchusen6, 0 );
setEffRotateKey( spep_5 + 250, shuchusen6, 180 );
setEffRotateKey( spep_5 + 252, shuchusen6, 0 );
setEffRotateKey( spep_5 + 254, shuchusen6, 180 );
setEffRotateKey( spep_5 + 256, shuchusen6, 0 );
setEffRotateKey( spep_5 + 258, shuchusen6, 180 );
setEffRotateKey( spep_5 + 260, shuchusen6, 0 );
setEffRotateKey( spep_5 + 262, shuchusen6, 180 );
setEffRotateKey( spep_5 + 264, shuchusen6, 0 );
setEffRotateKey( spep_5 + 266, shuchusen6, 180 );
setEffRotateKey( spep_5 + 268, shuchusen6, 0 );
setEffRotateKey( spep_5 + 270, shuchusen6, 180 );
setEffRotateKey( spep_5 + 272, shuchusen6, 0 );
setEffRotateKey( spep_5 + 274, shuchusen6, 180 );
setEffRotateKey( spep_5 + 276, shuchusen6, 0 );
setEffRotateKey( spep_5 + 278, shuchusen6, 180 );
setEffRotateKey( spep_5 + 280, shuchusen6, 0 );
setEffRotateKey( spep_5 + 282, shuchusen6, 180 );
setEffRotateKey( spep_5 + 284, shuchusen6, 0 );
setEffRotateKey( spep_5 + 286, shuchusen6, 180 );
setEffRotateKey( spep_5 + 288, shuchusen6, 0 );
setEffRotateKey( spep_5 + 290, shuchusen6, 180 );
setEffRotateKey( spep_5 + 292, shuchusen6, 0 );
setEffRotateKey( spep_5 + 294, shuchusen6, 180 );
setEffRotateKey( spep_5 + 296, shuchusen6, 0 );
setEffRotateKey( spep_5 + 298, shuchusen6, 180 );
setEffRotateKey( spep_5 + 300, shuchusen6, 0 );
setEffRotateKey( spep_5 + 302, shuchusen6, 180 );
setEffRotateKey( spep_5 + 304, shuchusen6, 0 );
setEffRotateKey( spep_5 + 306, shuchusen6, 180 );
setEffRotateKey( spep_5 + 308, shuchusen6, 0 );
setEffRotateKey( spep_5 + 310, shuchusen6, 180 );
setEffRotateKey( spep_5 + 312, shuchusen6, 0 );
setEffRotateKey( spep_5 + 314, shuchusen6, 180 );
setEffRotateKey( spep_5 + 316, shuchusen6, 0 );
setEffRotateKey( spep_5 + 318, shuchusen6, 180 );
setEffRotateKey( spep_5 + 320, shuchusen6, 0 );
setEffRotateKey( spep_5 + 322, shuchusen6, 180 );
setEffRotateKey( spep_5 + 324, shuchusen6, 0 );
setEffRotateKey( spep_5 + 326, shuchusen6, 180 );
setEffRotateKey( spep_5 + 328, shuchusen6, 0 );
setEffRotateKey( spep_5 + 330, shuchusen6, 180 );
setEffRotateKey( spep_5 + 332, shuchusen6, 0 );
setEffRotateKey( spep_5 + 334, shuchusen6, 180 );
setEffRotateKey( spep_5 + 336, shuchusen6, 0 );
setEffRotateKey( spep_5 + 338, shuchusen6, 180 );
setEffRotateKey( spep_5 + 340, shuchusen6, 0 );
setEffRotateKey( spep_5 + 342, shuchusen6, 180 );
setEffRotateKey( spep_5 + 344, shuchusen6, 0 );
setEffRotateKey( spep_5 + 346, shuchusen6, 180 );
setEffRotateKey( spep_5 + 348, shuchusen6, 0 );
setEffRotateKey( spep_5 + 350, shuchusen6, 180 );
setEffRotateKey( spep_5 + 352, shuchusen6, 0 );
setEffRotateKey( spep_5 + 354, shuchusen6, 180 );
setEffRotateKey( spep_5 + 356, shuchusen6, 0 );
setEffRotateKey( spep_5 + 358, shuchusen6, 180 );
setEffRotateKey( spep_5 + 360, shuchusen6, 0 );
setEffRotateKey( spep_5 + 362, shuchusen6, 180 );
setEffRotateKey( spep_5 + 364, shuchusen6, 0 );
setEffRotateKey( spep_5 + 366, shuchusen6, 180 );
setEffRotateKey( spep_5 + 368, shuchusen6, 0 );
setEffRotateKey( spep_5 + 370, shuchusen6, 180 );
setEffRotateKey( spep_5 + 372, shuchusen6, 0 );
setEffRotateKey( spep_5 + 374, shuchusen6, 180 );
setEffRotateKey( spep_5 + 376, shuchusen6, 0 );
setEffRotateKey( spep_5 + 378, shuchusen6, 180 );
setEffRotateKey( spep_5 + 380, shuchusen6, 0 );
setEffRotateKey( spep_5 + 382, shuchusen6, 180 );
setEffRotateKey( spep_5 + 384, shuchusen6, 0 );
setEffRotateKey( spep_5 + 386, shuchusen6, 180 );
setEffRotateKey( spep_5 + 388, shuchusen6, 0 );
setEffRotateKey( spep_5 + 390, shuchusen6, 180 );
setEffRotateKey( spep_5 + 392, shuchusen6, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 392, shuchusen6, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 392, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--SErakurai = playSeLife( spep_5 + 30, 1037 );  --雷落ちる
SErakurai = playSeLife( spep_5 + 26, 1022 );  --雷落ちる
stopSe( spep_5 + 200, SErakurai, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_5 + 36; --エンドフェイズのフレーム数を置き換える
stopSe( spep_5 + 36, SErakurai, 0 );

playSe( SP_dodge - 12, 1042 );

speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67 );

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_5 + 44, 1, 1 );
setDisp( spep_5 + 392, 1, 0 );

changeAnime( spep_5 + 44, 1, 101 );  --待機横向き
changeAnime( spep_5 + 51, 1, 106 );  --ダメージ
changeAnime( spep_5 + 52, 1, 106 );  --ダメージ

setMoveKey( spep_5 + 44, 1, -5.4, -633.9 , 0 );
setMoveKey( spep_5 + 45, 1, 0.4, -496.9 , 0 );
setMoveKey( spep_5 + 46, 1, 0.4, -496.9 , 0 );
setMoveKey( spep_5 + 47, 1, 0.4, -496.9 , 0 );
setMoveKey( spep_5 + 48, 1, 0.4, -496.9 , 0 );
setMoveKey( spep_5 + 49, 1, -17.2, -435.9 , 0 );
setMoveKey( spep_5 + 50, 1, -17.2, -435.9 , 0 );
setMoveKey( spep_5 + 51, 1, -3.1, -254.9 , 0 );
setMoveKey( spep_5 + 52, 1, -3.1, -254.9 , 0 );
setMoveKey( spep_5 + 53, 1, 16.9, -191.5 , 0 );
setMoveKey( spep_5 + 54, 1, 16.9, -191.5 , 0 );
setMoveKey( spep_5 + 55, 1, -14.3, -39.2 , 0 );
setMoveKey( spep_5 + 56, 1, -14.3, -39.2 , 0 );
setMoveKey( spep_5 + 57, 1, 2.4, -75.4 , 0 );
setMoveKey( spep_5 + 58, 1, 2.4, -75.4 , 0 );
setMoveKey( spep_5 + 59, 1, 13.9, -98 , 0 );
setMoveKey( spep_5 + 60, 1, 13.9, -98 , 0 );
setMoveKey( spep_5 + 61, 1, -4.5, -53.6 , 0 );
setMoveKey( spep_5 + 62, 1, -4.5, -53.6 , 0 );
setMoveKey( spep_5 + 63, 1, -12.3, -46.1 , 0 );
setMoveKey( spep_5 + 64, 1, -12.3, -46.1 , 0 );
setMoveKey( spep_5 + 65, 1, 10, -87.2 , 0 );
setMoveKey( spep_5 + 66, 1, 10, -87.2 , 0 );
setMoveKey( spep_5 + 68, 1, 10, -87.2 , 0 );
setMoveKey( spep_5 + 70, 1, 3.1, -57.8 , 0 );
setMoveKey( spep_5 + 72, 1, -4.3, -42.9 , 0 );
setMoveKey( spep_5 + 74, 1, -7.6, -68.6 , 0 );
setMoveKey( spep_5 + 76, 1, 2.8, -75.5 , 0 );
setMoveKey( spep_5 + 78, 1, -6.3, -68.4 , 0 );
setMoveKey( spep_5 + 80, 1, 0.1, -59.7 , 0 );
setMoveKey( spep_5 + 82, 1, 2.5, -48.5 , 0 );
setMoveKey( spep_5 + 84, 1, -5.2, -58.7 , 0 );
setMoveKey( spep_5 + 86, 1, -8.5, -63.3 , 0 );
setMoveKey( spep_5 + 88, 1, -4.3, -75.9 , 0 );
setMoveKey( spep_5 + 90, 1, 0.4, -58.9 , 0 );
setMoveKey( spep_5 + 92, 1, -3.4, -63.1 , 0 );
setMoveKey( spep_5 + 94, 1, 3.3, -55.3 , 0 );
setMoveKey( spep_5 + 96, 1, -3.2, -61.6 , 0 );
setMoveKey( spep_5 + 98, 1, -4.8, -54.1 , 0 );
setMoveKey( spep_5 + 100, 1, -0.3, -67 , 0 );
setMoveKey( spep_5 + 102, 1, -5.6, -61.3 , 0 );
setMoveKey( spep_5 + 104, 1, 1, -51.3 , 0 );
setMoveKey( spep_5 + 106, 1, -0.8, -57.9 , 0 );
setMoveKey( spep_5 + 108, 1, -5.5, -68.6 , 0 );
setMoveKey( spep_5 + 110, 1, 1.6, -55.1 , 0 );
setMoveKey( spep_5 + 112, 1, -1, -61.1 , 0 );
setMoveKey( spep_5 + 114, 1, -5.1, -66.3 , 0 );
setMoveKey( spep_5 + 116, 1, 1, -51.7 , 0 );
setMoveKey( spep_5 + 118, 1, -3.8, -63.7 , 0 );
setMoveKey( spep_5 + 120, 1, -0.3, -50.1 , 0 );
setMoveKey( spep_5 + 122, 1, -7.7, -56 , 0 );
setMoveKey( spep_5 + 124, 1, -5.8, -51.7 , 0 );
setMoveKey( spep_5 + 126, 1, -0.3, -63.1 , 0 );
setMoveKey( spep_5 + 128, 1, -6.3, -51.8 , 0 );
setMoveKey( spep_5 + 130, 1, -7.7, -46.5 , 0 );
setMoveKey( spep_5 + 132, 1, -5.8, -64.3 , 0 );
setMoveKey( spep_5 + 134, 1, -0.2, -67.8 , 0 );
setMoveKey( spep_5 + 136, 1, -3.4, -46.1 , 0 );
setMoveKey( spep_5 + 138, 1, 0, -62.7 , 0 );
setMoveKey( spep_5 + 140, 1, 2.4, -57.6 , 0 );
setMoveKey( spep_5 + 142, 1, -4.3, -45.7 , 0 );
setMoveKey( spep_5 + 144, 1, -0.8, -48.5 , 0 );
setMoveKey( spep_5 + 146, 1, 2.5, -57.2 , 0 );
setMoveKey( spep_5 + 148, 1, -7.7, -65.2 , 0 );
setMoveKey( spep_5 + 150, 1, -4.3, -56.4 , 0 );
setMoveKey( spep_5 + 152, 1, -7, -46.3 , 0 );
setMoveKey( spep_5 + 154, 1, 2, -65.4 , 0 );
setMoveKey( spep_5 + 156, 1, -2.5, -60.9 , 0 );
setMoveKey( spep_5 + 158, 1, -5.6, -47.3 , 0 );
setMoveKey( spep_5 + 160, 1, -7.3, -50.5 , 0 );
setMoveKey( spep_5 + 162, 1, -4.3, -42.7 , 0 );
setMoveKey( spep_5 + 164, 1, -7.6, -51.8 , 0 );
setMoveKey( spep_5 + 166, 1, 3, -65.5 , 0 );
setMoveKey( spep_5 + 168, 1, -0.3, -46.2 , 0 );
setMoveKey( spep_5 + 170, 1, -9.3, -57 , 0 );
setMoveKey( spep_5 + 172, 1, -6.1, -68 , 0 );
setMoveKey( spep_5 + 174, 1, -3.1, -55.6 , 0 );
setMoveKey( spep_5 + 176, 1, -9.2, -65.1 , 0 );
setMoveKey( spep_5 + 178, 1, -6.2, -50.8 , 0 );
setMoveKey( spep_5 + 180, 1, -2.6, -58.9 , 0 );
setMoveKey( spep_5 + 182, 1, 1.2, -40.3 , 0 );
setMoveKey( spep_5 + 184, 1, -6.3, -34.4 , 0 );
setMoveKey( spep_5 + 186, 1, -4.2, -45.9 , 0 );
setMoveKey( spep_5 + 188, 1, -8.6, -68.9 , 0 );
setMoveKey( spep_5 + 190, 1, -7.7, -50.1 , 0 );
setMoveKey( spep_5 + 192, 1, -2.2, -42.6 , 0 );
setMoveKey( spep_5 + 194, 1, 4.4, -71.1 , 0 );
setMoveKey( spep_5 + 196, 1, -1.1, -78.4 , 0 );
setMoveKey( spep_5 + 198, 1, -11, -62.2 , 0 );
setMoveKey( spep_5 + 200, 1, -6.7, -68.4 , 0 );
setMoveKey( spep_5 + 202, 1, -0.3, -43.4 , 0 );
setMoveKey( spep_5 + 204, 1, -4.4, -59.7 , 0 );
setMoveKey( spep_5 + 206, 1, 5.6, -31.9 , 0 );
setMoveKey( spep_5 + 208, 1, 1.2, -22.5 , 0 );
setMoveKey( spep_5 + 210, 1, -5.2, -49.3 , 0 );
setMoveKey( spep_5 + 212, 1, -10.6, -63.1 , 0 );
setMoveKey( spep_5 + 214, 1, -6.3, -45 , 0 );
setMoveKey( spep_5 + 216, 1, 8.2, -41.5 , 0 );
setMoveKey( spep_5 + 218, 1, 3.2, -66.4 , 0 );
setMoveKey( spep_5 + 220, 1, -6.6, -57.9 , 0 );
setMoveKey( spep_5 + 222, 1, -16.2, -78 , 0 );
setMoveKey( spep_5 + 224, 1, -4.8, -72.6 , 0 );
setMoveKey( spep_5 + 226, 1, 6.6, -35.9 , 0 );
setMoveKey( spep_5 + 228, 1, 0.2, -63.3 , 0 );
setMoveKey( spep_5 + 230, 1, -11.7, -43.5 , 0 );
setMoveKey( spep_5 + 232, 1, -8.3, -52.4 , 0 );
setMoveKey( spep_5 + 234, 1, 6.5, -28.4 , 0 );
setMoveKey( spep_5 + 236, 1, 2.7, -20.1 , 0 );
setMoveKey( spep_5 + 238, 1, -3.5, -45.4 , 0 );
setMoveKey( spep_5 + 240, 1, -5.6, -32.2 , 0 );
setMoveKey( spep_5 + 242, 1, -3.3, -51.5 , 0 );
setMoveKey( spep_5 + 244, 1, 0.9, -51.3 , 0 );
setMoveKey( spep_5 + 246, 1, -0.2, -52.8 , 0 );
setMoveKey( spep_5 + 248, 1, 0.3, -50.8 , 0 );
setMoveKey( spep_5 + 250, 1, 0.3, -50.6 , 0 );
setMoveKey( spep_5 + 252, 1, -0.9, -50.4 , 0 );
setMoveKey( spep_5 + 254, 1, 0.3, -52.3 , 0 );
setMoveKey( spep_5 + 256, 1, -0.9, -48.1 , 0 );
setMoveKey( spep_5 + 258, 1, -0.9, -46.4 , 0 );
setMoveKey( spep_5 + 260, 1, -2.4, -49.1 , 0 );
setMoveKey( spep_5 + 262, 1, -0.9, -20.9 , 0 );
setMoveKey( spep_5 + 264, 1, -1.8, -33.5 , 0 );
setMoveKey( spep_5 + 266, 1, 3.8, -28.8 , 0 );
setMoveKey( spep_5 + 268, 1, -2.9, -66.8 , 0 );
setMoveKey( spep_5 + 270, 1, -5.4, -50.4 , 0 );
setMoveKey( spep_5 + 272, 1, 3.5, -39.8 , 0 );
setMoveKey( spep_5 + 274, 1, 16.9, -66.3 , 0 );
setMoveKey( spep_5 + 276, 1, 9.2, -47.1 , 0 );
setMoveKey( spep_5 + 278, 1, 3.8, -36.5 , 0 );
setMoveKey( spep_5 + 280, 1, -1.6, -43.1 , 0 );
setMoveKey( spep_5 + 282, 1, 8.7, -39.6 , 0 );
setMoveKey( spep_5 + 284, 1, 2.7, -57.6 , 0 );
setMoveKey( spep_5 + 286, 1, -3.2, -47.8 , 0 );
setMoveKey( spep_5 + 288, 1, -9.1, -63.7 , 0 );
setMoveKey( spep_5 + 290, 1, -6.4, -38.9 , 0 );
setMoveKey( spep_5 + 292, 1, 6.6, -48.6 , 0 );
setMoveKey( spep_5 + 294, 1, -1.3, -53.2 , 0 );
setMoveKey( spep_5 + 296, 1, -8.7, -34.8 , 0 );
setMoveKey( spep_5 + 298, 1, 8.7, -18.4 , 0 );
setMoveKey( spep_5 + 300, 1, -10.8, -13.4 , 0 );
setMoveKey( spep_5 + 302, 1, -17, -51.3 , 0 );
setMoveKey( spep_5 + 304, 1, -10.1, -28.7 , 0 );
setMoveKey( spep_5 + 306, 1, 14.1, -46.4 , 0 );
setMoveKey( spep_5 + 308, 1, 9.1, -32.3 , 0 );
setMoveKey( spep_5 + 310, 1, -1.9, -54.4 , 0 );
setMoveKey( spep_5 + 312, 1, 8.7, -44.7 , 0 );
setMoveKey( spep_5 + 314, 1, 19.2, -66.6 , 0 );
setMoveKey( spep_5 + 316, 1, 15.3, -62.7 , 0 );
setMoveKey( spep_5 + 318, 1, 11.5, -24.3 , 0 );
setMoveKey( spep_5 + 320, 1, 14.1, -42.3 , 0 );
setMoveKey( spep_5 + 322, 1, -0.1, -30.1 , 0 );
setMoveKey( spep_5 + 324, 1, 8.5, -33.7 , 0 );
setMoveKey( spep_5 + 326, 1, 6.1, -17.5 , 0 );
setMoveKey( spep_5 + 328, 1, 3.8, -47.8 , 0 );
setMoveKey( spep_5 + 330, 1, -16.1, -60.7 , 0 );
setMoveKey( spep_5 + 332, 1, -8.8, -43.1 , 0 );
setMoveKey( spep_5 + 334, 1, -1.6, -50 , 0 );
setMoveKey( spep_5 + 336, 1, -17.1, -33.8 , 0 );
setMoveKey( spep_5 + 338, 1, -12.9, -37.7 , 0 );
setMoveKey( spep_5 + 340, 1, -8.9, -15.5 , 0 );
setMoveKey( spep_5 + 342, 1, 14.1, -42 , 0 );
setMoveKey( spep_5 + 344, 1, 8.3, -29.4 , 0 );
setMoveKey( spep_5 + 346, 1, 0.3, -43.2 , 0 );
setMoveKey( spep_5 + 348, 1, 8.4, -38.2 , 0 );
setMoveKey( spep_5 + 350, 1, -0.6, -52.5 , 0 );
setMoveKey( spep_5 + 352, 1, -9.6, -20.4 , 0 );
setMoveKey( spep_5 + 354, 1, -7.1, -36.8 , 0 );
setMoveKey( spep_5 + 356, 1, -13.1, -13.6 , 0 );
setMoveKey( spep_5 + 358, 1, 2.4, -33.1 , 0 );
setMoveKey( spep_5 + 360, 1, -0.9, -28.8 , 0 );
setMoveKey( spep_5 + 362, 1, -4.4, -24.6 , 0 );
setMoveKey( spep_5 + 364, 1, -7.8, -42.1 , 0 );
setMoveKey( spep_5 + 366, 1, 3.4, -24.1 , 0 );
setMoveKey( spep_5 + 368, 1, -3.1, -34.4 , 0 );
setMoveKey( spep_5 + 370, 1, -9.5, -44.7 , 0 );
setMoveKey( spep_5 + 372, 1, -0.8, -33.2 , 0 );
setMoveKey( spep_5 + 374, 1, 7.8, -21.6 , 0 );
setMoveKey( spep_5 + 376, 1, 1, -30.3 , 0 );
setMoveKey( spep_5 + 378, 1, -5.8, -39 , 0 );
setMoveKey( spep_5 + 380, 1, -0.9, -35.7 , 0 );
setMoveKey( spep_5 + 382, 1, 3.9, -32.3 , 0 );
setMoveKey( spep_5 + 384, 1, -4.7, -36.7 , 0 );
setMoveKey( spep_5 + 386, 1, -13.2, -40.9 , 0 );
setMoveKey( spep_5 + 388, 1, -7.5, -35 , 0 );
setMoveKey( spep_5 + 390, 1, -1.8, -29.1 , 0 );
setMoveKey( spep_5 + 392, 1, 3.9, -23.2 , 0 );

setScaleKey( spep_5 + 44, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 46, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 48, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 50, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 53, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 54, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 56, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 58, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 96, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 98, 1, 1.36, 1.36 );
setScaleKey( spep_5 + 142, 1, 1.36, 1.36 );
setScaleKey( spep_5 + 144, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 190, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 192, 1, 1.38, 1.38 );
setScaleKey( spep_5 + 236, 1, 1.38, 1.38 );
setScaleKey( spep_5 + 238, 1, 1.39, 1.39 );
setScaleKey( spep_5 + 284, 1, 1.39, 1.39 );
setScaleKey( spep_5 + 286, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 332, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 334, 1, 1.41, 1.41 );
setScaleKey( spep_5 + 378, 1, 1.41, 1.41 );
setScaleKey( spep_5 + 380, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 392, 1, 1.42, 1.42 );

-- ** 音 ** --
playSe( spep_5 + 200, 1069 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 282 );
entryFade( spep_5 + 382, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 392 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 腕を上げる(58F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
udeage = entryEffectLife( spep_0 + 0, SP_01, 58, 0, -1, 0, 0, 0 );  --腕を上げる(ef_001)
setEffMoveKey( spep_0 + 0, udeage, 0, 0 , 0 );
setEffMoveKey( spep_0 + 58, udeage, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, udeage, -1.0, 1.0 );
setEffScaleKey( spep_0 + 58, udeage, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, udeage, 255 );
setEffAlphaKey( spep_0 + 58, udeage, 255 );
setEffRotateKey( spep_0 + 0, udeage, 0 );
setEffRotateKey( spep_0 + 58, udeage, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 58, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 58, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 58, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 2, shuchusen1, 180 );
setEffRotateKey( spep_0 + 4, shuchusen1, 0 );
setEffRotateKey( spep_0 + 6, shuchusen1, 180 );
setEffRotateKey( spep_0 + 8, shuchusen1, 0 );
setEffRotateKey( spep_0 + 10, shuchusen1, 180 );
setEffRotateKey( spep_0 + 12, shuchusen1, 0 );
setEffRotateKey( spep_0 + 14, shuchusen1, 180 );
setEffRotateKey( spep_0 + 16, shuchusen1, 0 );
setEffRotateKey( spep_0 + 18, shuchusen1, 180 );
setEffRotateKey( spep_0 + 20, shuchusen1, 0 );
setEffRotateKey( spep_0 + 22, shuchusen1, 180 );
setEffRotateKey( spep_0 + 24, shuchusen1, 0 );
setEffRotateKey( spep_0 + 26, shuchusen1, 180 );
setEffRotateKey( spep_0 + 28, shuchusen1, 0 );
setEffRotateKey( spep_0 + 30, shuchusen1, 180 );
setEffRotateKey( spep_0 + 32, shuchusen1, 0 );
setEffRotateKey( spep_0 + 34, shuchusen1, 180 );
setEffRotateKey( spep_0 + 36, shuchusen1, 0 );
setEffRotateKey( spep_0 + 38, shuchusen1, 180 );
setEffRotateKey( spep_0 + 40, shuchusen1, 0 );
setEffRotateKey( spep_0 + 42, shuchusen1, 180 );
setEffRotateKey( spep_0 + 44, shuchusen1, 0 );
setEffRotateKey( spep_0 + 46, shuchusen1, 180 );
setEffRotateKey( spep_0 + 48, shuchusen1, 0 );
setEffRotateKey( spep_0 + 50, shuchusen1, 180 );
setEffRotateKey( spep_0 + 52, shuchusen1, 0 );
setEffRotateKey( spep_0 + 54, shuchusen1, 180 );
setEffRotateKey( spep_0 + 56, shuchusen1, 0 );
setEffRotateKey( spep_0 + 58, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 58, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_0 + 0, 1034 ); --気溜め
playSe( spep_0 + 20, 1034 );
playSe( spep_0 + 40, 1034 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 58, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 58;

------------------------------------------------------
-- 迫る(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
semaru = entryEffectLife( spep_1 + 0, SP_02, 98, 0x100, -1, 0, 0, 0 ); --迫る(ef_002)
setEffMoveKey( spep_1 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, semaru, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, semaru, -1.0, 1.0 );
setEffScaleKey( spep_1 + 98, semaru, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, semaru, 0 );
setEffRotateKey( spep_1 + 98, semaru, 0 );
setEffAlphaKey( spep_1 + 0, semaru, 255 );
setEffAlphaKey( spep_1 + 96, semaru, 255 );
setEffAlphaKey( spep_1 + 97, semaru, 255 );
setEffAlphaKey( spep_1 + 98, semaru, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 94, 0x100, -1, 0, 0, 0 );  --集中線
shuchusen2x = entryEffectLife( spep_1 + 94,  906, 4, 0x80, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 94, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 94, shuchusen2x, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, shuchusen2x, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 + 94, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 + 94, shuchusen2x, 1.2, 1.2 );
setEffScaleKey( spep_1 + 98, shuchusen2x, 1.2, 1.2 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 2, shuchusen2, 180 );
setEffRotateKey( spep_1 + 4, shuchusen2, 0 );
setEffRotateKey( spep_1 + 6, shuchusen2, 180 );
setEffRotateKey( spep_1 + 8, shuchusen2, 0 );
setEffRotateKey( spep_1 + 10, shuchusen2, 180 );
setEffRotateKey( spep_1 + 12, shuchusen2, 0 );
setEffRotateKey( spep_1 + 14, shuchusen2, 180 );
setEffRotateKey( spep_1 + 16, shuchusen2, 0 );
setEffRotateKey( spep_1 + 18, shuchusen2, 180 );
setEffRotateKey( spep_1 + 20, shuchusen2, 0 );
setEffRotateKey( spep_1 + 22, shuchusen2, 180 );
setEffRotateKey( spep_1 + 24, shuchusen2, 0 );
setEffRotateKey( spep_1 + 26, shuchusen2, 180 );
setEffRotateKey( spep_1 + 28, shuchusen2, 0 );
setEffRotateKey( spep_1 + 30, shuchusen2, 180 );
setEffRotateKey( spep_1 + 32, shuchusen2, 0 );
setEffRotateKey( spep_1 + 34, shuchusen2, 180 );
setEffRotateKey( spep_1 + 36, shuchusen2, 0 );
setEffRotateKey( spep_1 + 38, shuchusen2, 180 );
setEffRotateKey( spep_1 + 40, shuchusen2, 0 );
setEffRotateKey( spep_1 + 42, shuchusen2, 180 );
setEffRotateKey( spep_1 + 44, shuchusen2, 0 );
setEffRotateKey( spep_1 + 46, shuchusen2, 180 );
setEffRotateKey( spep_1 + 48, shuchusen2, 0 );
setEffRotateKey( spep_1 + 50, shuchusen2, 180 );
setEffRotateKey( spep_1 + 52, shuchusen2, 0 );
setEffRotateKey( spep_1 + 54, shuchusen2, 180 );
setEffRotateKey( spep_1 + 56, shuchusen2, 0 );
setEffRotateKey( spep_1 + 58, shuchusen2, 180 );
setEffRotateKey( spep_1 + 60, shuchusen2, 0 );
setEffRotateKey( spep_1 + 62, shuchusen2, 180 );
setEffRotateKey( spep_1 + 64, shuchusen2, 0 );
setEffRotateKey( spep_1 + 66, shuchusen2, 180 );
setEffRotateKey( spep_1 + 68, shuchusen2, 0 );
setEffRotateKey( spep_1 + 70, shuchusen2, 180 );
setEffRotateKey( spep_1 + 72, shuchusen2, 0 );
setEffRotateKey( spep_1 + 74, shuchusen2, 180 );
setEffRotateKey( spep_1 + 76, shuchusen2, 0 );
setEffRotateKey( spep_1 + 78, shuchusen2, 180 );
setEffRotateKey( spep_1 + 80, shuchusen2, 0 );
setEffRotateKey( spep_1 + 82, shuchusen2, 180 );
setEffRotateKey( spep_1 + 84, shuchusen2, 0 );
setEffRotateKey( spep_1 + 86, shuchusen2, 180 );
setEffRotateKey( spep_1 + 88, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 180 );
setEffRotateKey( spep_1 + 92, shuchusen2, 0 );
setEffRotateKey( spep_1 + 94, shuchusen2, 180 );
setEffRotateKey( spep_1 + 94, shuchusen2x, 180 );
setEffRotateKey( spep_1 + 96, shuchusen2x, 0 );
setEffRotateKey( spep_1 + 98, shuchusen2x, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 94, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 94, shuchusen2x, 255 );
setEffAlphaKey( spep_1 + 98, shuchusen2x, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 + 4, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 + 4, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 + 14,  190006, 74, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffMoveKey( spep_1 + 14, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 15, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 16, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 18, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 20, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 22, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 24, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 26, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 28, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 30, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 32, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 34, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 36, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 38, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 40, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 42, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 44, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 46, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 48, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 50, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 52, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 54, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 56, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 58, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 60, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 62, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 64, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 66, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 68, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 70, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 72, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_1 + 74, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 76, ctgogo, -8.5, 521.8 , 0 );
setEffMoveKey( spep_1 + 78, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_1 + 80, ctgogo, -7.7, 521.8 , 0 );
setEffMoveKey( spep_1 + 82, ctgogo, -3.2, 511.9 , 0 );
setEffMoveKey( spep_1 + 84, ctgogo, -3.1, 521.8 , 0 );
setEffMoveKey( spep_1 + 86, ctgogo, -0.8, 521.8 , 0 );
setEffMoveKey( spep_1 + 88, ctgogo, -0.8, 521.8 , 0 );

setEffScaleKey( spep_1 + 14, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 80, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 82, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_1 + 84, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_1 + 88, ctgogo, -1.4, 1.4 );

setEffRotateKey( spep_1 + 14, ctgogo, 0 );
setEffRotateKey( spep_1 + 88, ctgogo, 0 );

setEffAlphaKey( spep_1 + 14, ctgogo, 0 );
setEffAlphaKey( spep_1 + 15, ctgogo, 255 );
setEffAlphaKey( spep_1 + 16, ctgogo, 255 );
setEffAlphaKey( spep_1 + 80, ctgogo, 255 );
setEffAlphaKey( spep_1 + 82, ctgogo, 191 );
setEffAlphaKey( spep_1 + 86, ctgogo, 64 );
setEffAlphaKey( spep_1 + 88, ctgogo, 0 );

-- ** 黒背景 ** --
entryFadeBg(spep_1 + 0, 0, 98, 0, 0, 0, 0, 200 );  --薄い黒　背景

--白フェード
entryFade( spep_1 + 90, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_1 + 14, SE_04 ); --ゴゴゴ

-- ** 次の準備 ** --
spep_2 = spep_1 + 98;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 2, shuchusen3, 180 );
setEffRotateKey( spep_2 + 4, shuchusen3, 0 );
setEffRotateKey( spep_2 + 6, shuchusen3, 180 );
setEffRotateKey( spep_2 + 8, shuchusen3, 0 );
setEffRotateKey( spep_2 + 10, shuchusen3, 180 );
setEffRotateKey( spep_2 + 12, shuchusen3, 0 );
setEffRotateKey( spep_2 + 14, shuchusen3, 180 );
setEffRotateKey( spep_2 + 16, shuchusen3, 0 );
setEffRotateKey( spep_2 + 10, shuchusen3, 180 );
setEffRotateKey( spep_2 + 12, shuchusen3, 0 );
setEffRotateKey( spep_2 + 14, shuchusen3, 180 );
setEffRotateKey( spep_2 + 16, shuchusen3, 0 );
setEffRotateKey( spep_2 + 18, shuchusen3, 180 );
setEffRotateKey( spep_2 + 20, shuchusen3, 0 );
setEffRotateKey( spep_2 + 22, shuchusen3, 180 );
setEffRotateKey( spep_2 + 24, shuchusen3, 0 );
setEffRotateKey( spep_2 + 26, shuchusen3, 180 );
setEffRotateKey( spep_2 + 28, shuchusen3, 0 );
setEffRotateKey( spep_2 + 30, shuchusen3, 180 );
setEffRotateKey( spep_2 + 32, shuchusen3, 0 );
setEffRotateKey( spep_2 + 34, shuchusen3, 180 );
setEffRotateKey( spep_2 + 36, shuchusen3, 0 );
setEffRotateKey( spep_2 + 38, shuchusen3, 180 );
setEffRotateKey( spep_2 + 40, shuchusen3, 0 );
setEffRotateKey( spep_2 + 42, shuchusen3, 180 );
setEffRotateKey( spep_2 + 44, shuchusen3, 0 );
setEffRotateKey( spep_2 + 46, shuchusen3, 180 );
setEffRotateKey( spep_2 + 48, shuchusen3, 0 );
setEffRotateKey( spep_2 + 50, shuchusen3, 180 );
setEffRotateKey( spep_2 + 52, shuchusen3, 0 );
setEffRotateKey( spep_2 + 54, shuchusen3, 180 );
setEffRotateKey( spep_2 + 56, shuchusen3, 0 );
setEffRotateKey( spep_2 + 58, shuchusen3, 180 );
setEffRotateKey( spep_2 + 60, shuchusen3, 0 );
setEffRotateKey( spep_2 + 62, shuchusen3, 180 );
setEffRotateKey( spep_2 + 64, shuchusen3, 0 );
setEffRotateKey( spep_2 + 66, shuchusen3, 0 );
setEffRotateKey( spep_2 + 68, shuchusen3, 180 );
setEffRotateKey( spep_2 + 70, shuchusen3, 0 );
setEffRotateKey( spep_2 + 72, shuchusen3, 180 );
setEffRotateKey( spep_2 + 74, shuchusen3, 0 );
setEffRotateKey( spep_2 + 76, shuchusen3, 180 );
setEffRotateKey( spep_2 + 78, shuchusen3, 0 );
setEffRotateKey( spep_2 + 80, shuchusen3, 180 );
setEffRotateKey( spep_2 + 82, shuchusen3, 0 );
setEffRotateKey( spep_2 + 84, shuchusen3, 180 );
setEffRotateKey( spep_2 + 86, shuchusen3, 0 );
setEffRotateKey( spep_2 + 88, shuchusen3, 180 );
setEffRotateKey( spep_2 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;
entryFade( spep_3 - 8, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 溜め(168F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_03x, 168, 0x100, -1, 0, 0, 0 ); --溜め(ef_004r)
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 168, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 168, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 168, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 168, tame, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 168, 0x100, -1, 0, 0, 125 );  --集中線
setEffMoveKey( spep_3 + 0, shuchusen4, 0, 125 , 0 );
setEffMoveKey( spep_3 + 168, shuchusen4, 0, 125 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.6, 1.65 );
setEffScaleKey( spep_3 + 168, shuchusen4, 1.6, 1.65 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 2, shuchusen4, 180 );
setEffRotateKey( spep_3 + 4, shuchusen4, 0 );
setEffRotateKey( spep_3 + 6, shuchusen4, 180 );
setEffRotateKey( spep_3 + 8, shuchusen4, 0 );
setEffRotateKey( spep_3 + 10, shuchusen4, 180 );
setEffRotateKey( spep_3 + 12, shuchusen4, 0 );
setEffRotateKey( spep_3 + 14, shuchusen4, 180 );
setEffRotateKey( spep_3 + 16, shuchusen4, 0 );
setEffRotateKey( spep_3 + 18, shuchusen4, 180 );
setEffRotateKey( spep_3 + 20, shuchusen4, 0 );
setEffRotateKey( spep_3 + 22, shuchusen4, 180 );
setEffRotateKey( spep_3 + 24, shuchusen4, 0 );
setEffRotateKey( spep_3 + 26, shuchusen4, 180 );
setEffRotateKey( spep_3 + 28, shuchusen4, 0 );
setEffRotateKey( spep_3 + 30, shuchusen4, 180 );
setEffRotateKey( spep_3 + 32, shuchusen4, 0 );
setEffRotateKey( spep_3 + 34, shuchusen4, 180 );
setEffRotateKey( spep_3 + 36, shuchusen4, 0 );
setEffRotateKey( spep_3 + 38, shuchusen4, 180 );
setEffRotateKey( spep_3 + 40, shuchusen4, 0 );
setEffRotateKey( spep_3 + 42, shuchusen4, 180 );
setEffRotateKey( spep_3 + 44, shuchusen4, 0 );
setEffRotateKey( spep_3 + 46, shuchusen4, 180 );
setEffRotateKey( spep_3 + 48, shuchusen4, 0 );
setEffRotateKey( spep_3 + 50, shuchusen4, 180 );
setEffRotateKey( spep_3 + 52, shuchusen4, 0 );
setEffRotateKey( spep_3 + 54, shuchusen4, 180 );
setEffRotateKey( spep_3 + 56, shuchusen4, 0 );
setEffRotateKey( spep_3 + 58, shuchusen4, 180 );
setEffRotateKey( spep_3 + 60, shuchusen4, 0 );
setEffRotateKey( spep_3 + 62, shuchusen4, 180 );
setEffRotateKey( spep_3 + 64, shuchusen4, 0 );
setEffRotateKey( spep_3 + 66, shuchusen4, 180 );
setEffRotateKey( spep_3 + 68, shuchusen4, 0 );
setEffRotateKey( spep_3 + 70, shuchusen4, 180 );
setEffRotateKey( spep_3 + 72, shuchusen4, 0 );
setEffRotateKey( spep_3 + 74, shuchusen4, 180 );
setEffRotateKey( spep_3 + 76, shuchusen4, 0 );
setEffRotateKey( spep_3 + 78, shuchusen4, 180 );
setEffRotateKey( spep_3 + 80, shuchusen4, 0 );
setEffRotateKey( spep_3 + 82, shuchusen4, 180 );
setEffRotateKey( spep_3 + 84, shuchusen4, 0 );
setEffRotateKey( spep_3 + 86, shuchusen4, 180 );
setEffRotateKey( spep_3 + 88, shuchusen4, 0 );
setEffRotateKey( spep_3 + 90, shuchusen4, 180 );
setEffRotateKey( spep_3 + 92, shuchusen4, 0 );
setEffRotateKey( spep_3 + 94, shuchusen4, 180 );
setEffRotateKey( spep_3 + 96, shuchusen4, 0 );
setEffRotateKey( spep_3 + 98, shuchusen4, 180 );
setEffRotateKey( spep_3 + 100, shuchusen4, 0 );
setEffRotateKey( spep_3 + 102, shuchusen4, 180 );
setEffRotateKey( spep_3 + 104, shuchusen4, 0 );
setEffRotateKey( spep_3 + 106, shuchusen4, 180 );
setEffRotateKey( spep_3 + 108, shuchusen4, 0 );
setEffRotateKey( spep_3 + 110, shuchusen4, 180 );
setEffRotateKey( spep_3 + 112, shuchusen4, 0 );
setEffRotateKey( spep_3 + 114, shuchusen4, 180 );
setEffRotateKey( spep_3 + 116, shuchusen4, 0 );
setEffRotateKey( spep_3 + 118, shuchusen4, 180 );
setEffRotateKey( spep_3 + 120, shuchusen4, 0 );
setEffRotateKey( spep_3 + 122, shuchusen4, 180 );
setEffRotateKey( spep_3 + 124, shuchusen4, 0 );
setEffRotateKey( spep_3 + 126, shuchusen4, 180 );
setEffRotateKey( spep_3 + 128, shuchusen4, 0 );
setEffRotateKey( spep_3 + 130, shuchusen4, 180 );
setEffRotateKey( spep_3 + 132, shuchusen4, 0 );
setEffRotateKey( spep_3 + 134, shuchusen4, 180 );
setEffRotateKey( spep_3 + 136, shuchusen4, 0 );
setEffRotateKey( spep_3 + 138, shuchusen4, 180 );
setEffRotateKey( spep_3 + 140, shuchusen4, 0 );
setEffRotateKey( spep_3 + 142, shuchusen4, 180 );
setEffRotateKey( spep_3 + 144, shuchusen4, 0 );
setEffRotateKey( spep_3 + 146, shuchusen4, 180 );
setEffRotateKey( spep_3 + 148, shuchusen4, 0 );
setEffRotateKey( spep_3 + 150, shuchusen4, 180 );
setEffRotateKey( spep_3 + 152, shuchusen4, 0 );
setEffRotateKey( spep_3 + 154, shuchusen4, 180 );
setEffRotateKey( spep_3 + 156, shuchusen4, 0 );
setEffRotateKey( spep_3 + 158, shuchusen4, 180 );
setEffRotateKey( spep_3 + 160, shuchusen4, 0 );
setEffRotateKey( spep_3 + 162, shuchusen4, 180 );
setEffRotateKey( spep_3 + 164, shuchusen4, 0 );
setEffRotateKey( spep_3 + 166, shuchusen4, 180 );
setEffRotateKey( spep_3 + 168, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 168, shuchusen4, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 0, 1037 );
--[[playSe( spep_3 + 0, 1020 );
playSe( spep_3 + 30, 1020 );
playSe( spep_3 + 60, 1020 );
playSe( spep_3 + 90, 1020 );
playSe( spep_3 + 120, 1020 );
playSe( spep_3 + 150, 1020 );
]]

-- ** ホワイトフェード ** --
entryFade( spep_3 + 158, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 168;

------------------------------------------------------
-- 腕を下げる(138F)
------------------------------------------------------

-- ** エフェクト等 ** --
udesage = entryEffectLife( spep_4 + 0, SP_04, 138, 0x100, -1, 0, 0, 0 ); --腕を下げる(ef_005)
setEffMoveKey( spep_4 + 0, udesage, 0, 0 , 0 );
setEffMoveKey( spep_4 + 138, udesage, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, udesage, -1.0, 1.0 );
setEffScaleKey( spep_4 + 138, udesage, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, udesage, 0 );
setEffRotateKey( spep_4 + 138, udesage, 0 );
setEffAlphaKey( spep_4 + 0, udesage, 250 );
setEffAlphaKey( spep_4 + 138, udesage, 250 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 + 0,  906, 138, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 138, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_4 + 138, shuchusen5, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 2, shuchusen5, 180 );
setEffRotateKey( spep_4 + 4, shuchusen5, 0 );
setEffRotateKey( spep_4 + 6, shuchusen5, 180 );
setEffRotateKey( spep_4 + 8, shuchusen5, 0 );
setEffRotateKey( spep_4 + 10, shuchusen5, 180 );
setEffRotateKey( spep_4 + 12, shuchusen5, 0 );
setEffRotateKey( spep_4 + 14, shuchusen5, 180 );
setEffRotateKey( spep_4 + 16, shuchusen5, 0 );
setEffRotateKey( spep_4 + 18, shuchusen5, 180 );
setEffRotateKey( spep_4 + 20, shuchusen5, 0 );
setEffRotateKey( spep_4 + 22, shuchusen5, 180 );
setEffRotateKey( spep_4 + 24, shuchusen5, 0 );
setEffRotateKey( spep_4 + 26, shuchusen5, 180 );
setEffRotateKey( spep_4 + 28, shuchusen5, 0 );
setEffRotateKey( spep_4 + 30, shuchusen5, 180 );
setEffRotateKey( spep_4 + 32, shuchusen5, 0 );
setEffRotateKey( spep_4 + 34, shuchusen5, 180 );
setEffRotateKey( spep_4 + 36, shuchusen5, 0 );
setEffRotateKey( spep_4 + 38, shuchusen5, 180 );
setEffRotateKey( spep_4 + 40, shuchusen5, 0 );
setEffRotateKey( spep_4 + 42, shuchusen5, 180 );
setEffRotateKey( spep_4 + 44, shuchusen5, 0 );
setEffRotateKey( spep_4 + 46, shuchusen5, 180 );
setEffRotateKey( spep_4 + 48, shuchusen5, 0 );
setEffRotateKey( spep_4 + 50, shuchusen5, 180 );
setEffRotateKey( spep_4 + 52, shuchusen5, 0 );
setEffRotateKey( spep_4 + 54, shuchusen5, 180 );
setEffRotateKey( spep_4 + 56, shuchusen5, 0 );
setEffRotateKey( spep_4 + 58, shuchusen5, 180 );
setEffRotateKey( spep_4 + 60, shuchusen5, 0 );
setEffRotateKey( spep_4 + 62, shuchusen5, 180 );
setEffRotateKey( spep_4 + 64, shuchusen5, 0 );
setEffRotateKey( spep_4 + 66, shuchusen5, 180 );
setEffRotateKey( spep_4 + 68, shuchusen5, 0 );
setEffRotateKey( spep_4 + 70, shuchusen5, 180 );
setEffRotateKey( spep_4 + 72, shuchusen5, 0 );
setEffRotateKey( spep_4 + 74, shuchusen5, 180 );
setEffRotateKey( spep_4 + 76, shuchusen5, 0 );
setEffRotateKey( spep_4 + 78, shuchusen5, 180 );
setEffRotateKey( spep_4 + 80, shuchusen5, 0 );
setEffRotateKey( spep_4 + 82, shuchusen5, 180 );
setEffRotateKey( spep_4 + 84, shuchusen5, 0 );
setEffRotateKey( spep_4 + 86, shuchusen5, 180 );
setEffRotateKey( spep_4 + 88, shuchusen5, 0 );
setEffRotateKey( spep_4 + 90, shuchusen5, 180 );
setEffRotateKey( spep_4 + 92, shuchusen5, 0 );
setEffRotateKey( spep_4 + 94, shuchusen5, 180 );
setEffRotateKey( spep_4 + 96, shuchusen5, 0 );
setEffRotateKey( spep_4 + 98, shuchusen5, 180 );
setEffRotateKey( spep_4 + 100, shuchusen5, 180 );
setEffRotateKey( spep_4 + 102, shuchusen5, 0 );
setEffRotateKey( spep_4 + 104, shuchusen5, 180 );
setEffRotateKey( spep_4 + 106, shuchusen5, 0 );
setEffRotateKey( spep_4 + 108, shuchusen5, 180 );
setEffRotateKey( spep_4 + 110, shuchusen5, 0 );
setEffRotateKey( spep_4 + 112, shuchusen5, 180 );
setEffRotateKey( spep_4 + 114, shuchusen5, 0 );
setEffRotateKey( spep_4 + 116, shuchusen5, 180 );
setEffRotateKey( spep_4 + 118, shuchusen5, 0 );
setEffRotateKey( spep_4 + 120, shuchusen5, 180 );
setEffRotateKey( spep_4 + 122, shuchusen5, 0 );
setEffRotateKey( spep_4 + 124, shuchusen5, 180 );
setEffRotateKey( spep_4 + 126, shuchusen5, 0 );
setEffRotateKey( spep_4 + 128, shuchusen5, 180 );
setEffRotateKey( spep_4 + 130, shuchusen5, 0 );
setEffRotateKey( spep_4 + 132, shuchusen5, 180 );
setEffRotateKey( spep_4 + 134, shuchusen5, 0 );
setEffRotateKey( spep_4 + 136, shuchusen5, 180 );
setEffRotateKey( spep_4 + 138, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 138, shuchusen5, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 138, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_4 + 100, 1013 );  --腕を下げる

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 128, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 138;

------------------------------------------------------
-- 落雷ヒット(392F)
------------------------------------------------------

-- ** エフェクト等 ** --
rakurai1 = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --落雷ヒット下(ef_006)
setEffMoveKey( spep_5 + 0, rakurai1, 0, 0 , 0 );
setEffMoveKey( spep_5 + 392, rakurai1, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, rakurai1, 1.0, 1.0 );
setEffScaleKey( spep_5 + 392, rakurai1, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, rakurai1, 0 );
setEffRotateKey( spep_5 + 392, rakurai1, 0 );
setEffAlphaKey( spep_5 + 0, rakurai1, 250 );
setEffAlphaKey( spep_5 + 392, rakurai1, 250 );

rakurai2 = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); --落雷ヒット上(ef_007)
setEffMoveKey( spep_5 + 0, rakurai2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 392, rakurai2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, rakurai2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 392, rakurai2, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, rakurai2, 0 );
setEffRotateKey( spep_5 + 392, rakurai2, 0 );
setEffAlphaKey( spep_5 + 0, rakurai2, 250 );
setEffAlphaKey( spep_5 + 392, rakurai2, 250 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_5 + 0,  906, 392, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_5 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 392, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen6, 1.6, 1.6 );
setEffScaleKey( spep_5 + 392, shuchusen6, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen6, 0 );
setEffRotateKey( spep_5 + 2, shuchusen6, 180 );
setEffRotateKey( spep_5 + 4, shuchusen6, 0 );
setEffRotateKey( spep_5 + 6, shuchusen6, 180 );
setEffRotateKey( spep_5 + 8, shuchusen6, 0 );
setEffRotateKey( spep_5 + 10, shuchusen6, 180 );
setEffRotateKey( spep_5 + 12, shuchusen6, 0 );
setEffRotateKey( spep_5 + 14, shuchusen6, 180 );
setEffRotateKey( spep_5 + 16, shuchusen6, 0 );
setEffRotateKey( spep_5 + 18, shuchusen6, 180 );
setEffRotateKey( spep_5 + 20, shuchusen6, 0 );
setEffRotateKey( spep_5 + 22, shuchusen6, 180 );
setEffRotateKey( spep_5 + 24, shuchusen6, 0 );
setEffRotateKey( spep_5 + 26, shuchusen6, 180 );
setEffRotateKey( spep_5 + 28, shuchusen6, 0 );
setEffRotateKey( spep_5 + 30, shuchusen6, 180 );
setEffRotateKey( spep_5 + 32, shuchusen6, 0 );
setEffRotateKey( spep_5 + 34, shuchusen6, 180 );
setEffRotateKey( spep_5 + 36, shuchusen6, 0 );
setEffRotateKey( spep_5 + 38, shuchusen6, 180 );
setEffRotateKey( spep_5 + 40, shuchusen6, 0 );
setEffRotateKey( spep_5 + 42, shuchusen6, 180 );
setEffRotateKey( spep_5 + 44, shuchusen6, 0 );
setEffRotateKey( spep_5 + 46, shuchusen6, 180 );
setEffRotateKey( spep_5 + 48, shuchusen6, 0 );
setEffRotateKey( spep_5 + 50, shuchusen6, 180 );
setEffRotateKey( spep_5 + 52, shuchusen6, 0 );
setEffRotateKey( spep_5 + 54, shuchusen6, 180 );
setEffRotateKey( spep_5 + 56, shuchusen6, 0 );
setEffRotateKey( spep_5 + 58, shuchusen6, 180 );
setEffRotateKey( spep_5 + 60, shuchusen6, 0 );
setEffRotateKey( spep_5 + 62, shuchusen6, 180 );
setEffRotateKey( spep_5 + 64, shuchusen6, 0 );
setEffRotateKey( spep_5 + 66, shuchusen6, 180 );
setEffRotateKey( spep_5 + 68, shuchusen6, 0 );
setEffRotateKey( spep_5 + 70, shuchusen6, 180 );
setEffRotateKey( spep_5 + 72, shuchusen6, 0 );
setEffRotateKey( spep_5 + 74, shuchusen6, 180 );
setEffRotateKey( spep_5 + 76, shuchusen6, 0 );
setEffRotateKey( spep_5 + 78, shuchusen6, 180 );
setEffRotateKey( spep_5 + 80, shuchusen6, 0 );
setEffRotateKey( spep_5 + 82, shuchusen6, 180 );
setEffRotateKey( spep_5 + 84, shuchusen6, 0 );
setEffRotateKey( spep_5 + 86, shuchusen6, 180 );
setEffRotateKey( spep_5 + 88, shuchusen6, 0 );
setEffRotateKey( spep_5 + 90, shuchusen6, 180 );
setEffRotateKey( spep_5 + 92, shuchusen6, 0 );
setEffRotateKey( spep_5 + 94, shuchusen6, 180 );
setEffRotateKey( spep_5 + 96, shuchusen6, 0 );
setEffRotateKey( spep_5 + 98, shuchusen6, 180 );
setEffRotateKey( spep_5 + 100, shuchusen6, 0 );
setEffRotateKey( spep_5 + 102, shuchusen6, 180 );
setEffRotateKey( spep_5 + 104, shuchusen6, 0 );
setEffRotateKey( spep_5 + 106, shuchusen6, 180 );
setEffRotateKey( spep_5 + 108, shuchusen6, 0 );
setEffRotateKey( spep_5 + 110, shuchusen6, 180 );
setEffRotateKey( spep_5 + 112, shuchusen6, 0 );
setEffRotateKey( spep_5 + 114, shuchusen6, 180 );
setEffRotateKey( spep_5 + 116, shuchusen6, 0 );
setEffRotateKey( spep_5 + 118, shuchusen6, 180 );
setEffRotateKey( spep_5 + 120, shuchusen6, 0 );
setEffRotateKey( spep_5 + 122, shuchusen6, 180 );
setEffRotateKey( spep_5 + 124, shuchusen6, 0 );
setEffRotateKey( spep_5 + 126, shuchusen6, 180 );
setEffRotateKey( spep_5 + 128, shuchusen6, 0 );
setEffRotateKey( spep_5 + 130, shuchusen6, 180 );
setEffRotateKey( spep_5 + 132, shuchusen6, 0 );
setEffRotateKey( spep_5 + 134, shuchusen6, 180 );
setEffRotateKey( spep_5 + 136, shuchusen6, 0 );
setEffRotateKey( spep_5 + 138, shuchusen6, 180 );
setEffRotateKey( spep_5 + 140, shuchusen6, 0 );
setEffRotateKey( spep_5 + 142, shuchusen6, 180 );
setEffRotateKey( spep_5 + 144, shuchusen6, 0 );
setEffRotateKey( spep_5 + 146, shuchusen6, 180 );
setEffRotateKey( spep_5 + 148, shuchusen6, 0 );
setEffRotateKey( spep_5 + 150, shuchusen6, 180 );
setEffRotateKey( spep_5 + 152, shuchusen6, 0 );
setEffRotateKey( spep_5 + 154, shuchusen6, 180 );
setEffRotateKey( spep_5 + 156, shuchusen6, 0 );
setEffRotateKey( spep_5 + 158, shuchusen6, 180 );
setEffRotateKey( spep_5 + 160, shuchusen6, 0 );
setEffRotateKey( spep_5 + 162, shuchusen6, 180 );
setEffRotateKey( spep_5 + 164, shuchusen6, 0 );
setEffRotateKey( spep_5 + 166, shuchusen6, 180 );
setEffRotateKey( spep_5 + 168, shuchusen6, 0 );
setEffRotateKey( spep_5 + 170, shuchusen6, 180 );
setEffRotateKey( spep_5 + 172, shuchusen6, 0 );
setEffRotateKey( spep_5 + 174, shuchusen6, 180 );
setEffRotateKey( spep_5 + 176, shuchusen6, 0 );
setEffRotateKey( spep_5 + 178, shuchusen6, 180 );
setEffRotateKey( spep_5 + 180, shuchusen6, 0 );
setEffRotateKey( spep_5 + 182, shuchusen6, 180 );
setEffRotateKey( spep_5 + 184, shuchusen6, 0 );
setEffRotateKey( spep_5 + 186, shuchusen6, 180 );
setEffRotateKey( spep_5 + 188, shuchusen6, 0 );
setEffRotateKey( spep_5 + 190, shuchusen6, 180 );
setEffRotateKey( spep_5 + 192, shuchusen6, 0 );
setEffRotateKey( spep_5 + 194, shuchusen6, 180 );
setEffRotateKey( spep_5 + 196, shuchusen6, 0 );
setEffRotateKey( spep_5 + 198, shuchusen6, 180 );
setEffRotateKey( spep_5 + 200, shuchusen6, 0 );
setEffRotateKey( spep_5 + 202, shuchusen6, 180 );
setEffRotateKey( spep_5 + 204, shuchusen6, 0 );
setEffRotateKey( spep_5 + 206, shuchusen6, 180 );
setEffRotateKey( spep_5 + 208, shuchusen6, 0 );
setEffRotateKey( spep_5 + 210, shuchusen6, 180 );
setEffRotateKey( spep_5 + 212, shuchusen6, 0 );
setEffRotateKey( spep_5 + 214, shuchusen6, 180 );
setEffRotateKey( spep_5 + 216, shuchusen6, 0 );
setEffRotateKey( spep_5 + 218, shuchusen6, 180 );
setEffRotateKey( spep_5 + 220, shuchusen6, 0 );
setEffRotateKey( spep_5 + 222, shuchusen6, 180 );
setEffRotateKey( spep_5 + 224, shuchusen6, 0 );
setEffRotateKey( spep_5 + 226, shuchusen6, 180 );
setEffRotateKey( spep_5 + 228, shuchusen6, 0 );
setEffRotateKey( spep_5 + 230, shuchusen6, 180 );
setEffRotateKey( spep_5 + 232, shuchusen6, 0 );
setEffRotateKey( spep_5 + 234, shuchusen6, 180 );
setEffRotateKey( spep_5 + 236, shuchusen6, 0 );
setEffRotateKey( spep_5 + 238, shuchusen6, 180 );
setEffRotateKey( spep_5 + 240, shuchusen6, 0 );
setEffRotateKey( spep_5 + 242, shuchusen6, 180 );
setEffRotateKey( spep_5 + 244, shuchusen6, 0 );
setEffRotateKey( spep_5 + 246, shuchusen6, 180 );
setEffRotateKey( spep_5 + 248, shuchusen6, 0 );
setEffRotateKey( spep_5 + 250, shuchusen6, 180 );
setEffRotateKey( spep_5 + 252, shuchusen6, 0 );
setEffRotateKey( spep_5 + 254, shuchusen6, 180 );
setEffRotateKey( spep_5 + 256, shuchusen6, 0 );
setEffRotateKey( spep_5 + 258, shuchusen6, 180 );
setEffRotateKey( spep_5 + 260, shuchusen6, 0 );
setEffRotateKey( spep_5 + 262, shuchusen6, 180 );
setEffRotateKey( spep_5 + 264, shuchusen6, 0 );
setEffRotateKey( spep_5 + 266, shuchusen6, 180 );
setEffRotateKey( spep_5 + 268, shuchusen6, 0 );
setEffRotateKey( spep_5 + 270, shuchusen6, 180 );
setEffRotateKey( spep_5 + 272, shuchusen6, 0 );
setEffRotateKey( spep_5 + 274, shuchusen6, 180 );
setEffRotateKey( spep_5 + 276, shuchusen6, 0 );
setEffRotateKey( spep_5 + 278, shuchusen6, 180 );
setEffRotateKey( spep_5 + 280, shuchusen6, 0 );
setEffRotateKey( spep_5 + 282, shuchusen6, 180 );
setEffRotateKey( spep_5 + 284, shuchusen6, 0 );
setEffRotateKey( spep_5 + 286, shuchusen6, 180 );
setEffRotateKey( spep_5 + 288, shuchusen6, 0 );
setEffRotateKey( spep_5 + 290, shuchusen6, 180 );
setEffRotateKey( spep_5 + 292, shuchusen6, 0 );
setEffRotateKey( spep_5 + 294, shuchusen6, 180 );
setEffRotateKey( spep_5 + 296, shuchusen6, 0 );
setEffRotateKey( spep_5 + 298, shuchusen6, 180 );
setEffRotateKey( spep_5 + 300, shuchusen6, 0 );
setEffRotateKey( spep_5 + 302, shuchusen6, 180 );
setEffRotateKey( spep_5 + 304, shuchusen6, 0 );
setEffRotateKey( spep_5 + 306, shuchusen6, 180 );
setEffRotateKey( spep_5 + 308, shuchusen6, 0 );
setEffRotateKey( spep_5 + 310, shuchusen6, 180 );
setEffRotateKey( spep_5 + 312, shuchusen6, 0 );
setEffRotateKey( spep_5 + 314, shuchusen6, 180 );
setEffRotateKey( spep_5 + 316, shuchusen6, 0 );
setEffRotateKey( spep_5 + 318, shuchusen6, 180 );
setEffRotateKey( spep_5 + 320, shuchusen6, 0 );
setEffRotateKey( spep_5 + 322, shuchusen6, 180 );
setEffRotateKey( spep_5 + 324, shuchusen6, 0 );
setEffRotateKey( spep_5 + 326, shuchusen6, 180 );
setEffRotateKey( spep_5 + 328, shuchusen6, 0 );
setEffRotateKey( spep_5 + 330, shuchusen6, 180 );
setEffRotateKey( spep_5 + 332, shuchusen6, 0 );
setEffRotateKey( spep_5 + 334, shuchusen6, 180 );
setEffRotateKey( spep_5 + 336, shuchusen6, 0 );
setEffRotateKey( spep_5 + 338, shuchusen6, 180 );
setEffRotateKey( spep_5 + 340, shuchusen6, 0 );
setEffRotateKey( spep_5 + 342, shuchusen6, 180 );
setEffRotateKey( spep_5 + 344, shuchusen6, 0 );
setEffRotateKey( spep_5 + 346, shuchusen6, 180 );
setEffRotateKey( spep_5 + 348, shuchusen6, 0 );
setEffRotateKey( spep_5 + 350, shuchusen6, 180 );
setEffRotateKey( spep_5 + 352, shuchusen6, 0 );
setEffRotateKey( spep_5 + 354, shuchusen6, 180 );
setEffRotateKey( spep_5 + 356, shuchusen6, 0 );
setEffRotateKey( spep_5 + 358, shuchusen6, 180 );
setEffRotateKey( spep_5 + 360, shuchusen6, 0 );
setEffRotateKey( spep_5 + 362, shuchusen6, 180 );
setEffRotateKey( spep_5 + 364, shuchusen6, 0 );
setEffRotateKey( spep_5 + 366, shuchusen6, 180 );
setEffRotateKey( spep_5 + 368, shuchusen6, 0 );
setEffRotateKey( spep_5 + 370, shuchusen6, 180 );
setEffRotateKey( spep_5 + 372, shuchusen6, 0 );
setEffRotateKey( spep_5 + 374, shuchusen6, 180 );
setEffRotateKey( spep_5 + 376, shuchusen6, 0 );
setEffRotateKey( spep_5 + 378, shuchusen6, 180 );
setEffRotateKey( spep_5 + 380, shuchusen6, 0 );
setEffRotateKey( spep_5 + 382, shuchusen6, 180 );
setEffRotateKey( spep_5 + 384, shuchusen6, 0 );
setEffRotateKey( spep_5 + 386, shuchusen6, 180 );
setEffRotateKey( spep_5 + 388, shuchusen6, 0 );
setEffRotateKey( spep_5 + 390, shuchusen6, 180 );
setEffRotateKey( spep_5 + 392, shuchusen6, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 392, shuchusen6, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 392, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--SErakurai = playSeLife( spep_5 + 30, 1037 );  --雷落ちる
SErakurai = playSeLife( spep_5 + 26, 1022 );  --雷落ちる
stopSe( spep_5 + 200, SErakurai, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_5 + 36; --エンドフェイズのフレーム数を置き換える
stopSe( spep_5 + 36, SErakurai, 0 );

playSe( SP_dodge - 12, 1042 );

speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67 );

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_5 + 44, 1, 1 );
setDisp( spep_5 + 392, 1, 0 );

changeAnime( spep_5 + 44, 1, 101 );  --待機横向き
changeAnime( spep_5 + 51, 1, 106 );  --ダメージ
changeAnime( spep_5 + 52, 1, 106 );  --ダメージ

setMoveKey( spep_5 + 44, 1, -5.4, -633.9 , 0 );
setMoveKey( spep_5 + 45, 1, 0.4, -496.9 , 0 );
setMoveKey( spep_5 + 46, 1, 0.4, -496.9 , 0 );
setMoveKey( spep_5 + 47, 1, 0.4, -496.9 , 0 );
setMoveKey( spep_5 + 48, 1, 0.4, -496.9 , 0 );
setMoveKey( spep_5 + 49, 1, -17.2, -435.9 , 0 );
setMoveKey( spep_5 + 50, 1, -17.2, -435.9 , 0 );
setMoveKey( spep_5 + 51, 1, -3.1, -254.9 , 0 );
setMoveKey( spep_5 + 52, 1, -3.1, -254.9 , 0 );
setMoveKey( spep_5 + 53, 1, 16.9, -191.5 , 0 );
setMoveKey( spep_5 + 54, 1, 16.9, -191.5 , 0 );
setMoveKey( spep_5 + 55, 1, -14.3, -39.2 , 0 );
setMoveKey( spep_5 + 56, 1, -14.3, -39.2 , 0 );
setMoveKey( spep_5 + 57, 1, 2.4, -75.4 , 0 );
setMoveKey( spep_5 + 58, 1, 2.4, -75.4 , 0 );
setMoveKey( spep_5 + 59, 1, 13.9, -98 , 0 );
setMoveKey( spep_5 + 60, 1, 13.9, -98 , 0 );
setMoveKey( spep_5 + 61, 1, -4.5, -53.6 , 0 );
setMoveKey( spep_5 + 62, 1, -4.5, -53.6 , 0 );
setMoveKey( spep_5 + 63, 1, -12.3, -46.1 , 0 );
setMoveKey( spep_5 + 64, 1, -12.3, -46.1 , 0 );
setMoveKey( spep_5 + 65, 1, 10, -87.2 , 0 );
setMoveKey( spep_5 + 66, 1, 10, -87.2 , 0 );
setMoveKey( spep_5 + 68, 1, 10, -87.2 , 0 );
setMoveKey( spep_5 + 70, 1, 3.1, -57.8 , 0 );
setMoveKey( spep_5 + 72, 1, -4.3, -42.9 , 0 );
setMoveKey( spep_5 + 74, 1, -7.6, -68.6 , 0 );
setMoveKey( spep_5 + 76, 1, 2.8, -75.5 , 0 );
setMoveKey( spep_5 + 78, 1, -6.3, -68.4 , 0 );
setMoveKey( spep_5 + 80, 1, 0.1, -59.7 , 0 );
setMoveKey( spep_5 + 82, 1, 2.5, -48.5 , 0 );
setMoveKey( spep_5 + 84, 1, -5.2, -58.7 , 0 );
setMoveKey( spep_5 + 86, 1, -8.5, -63.3 , 0 );
setMoveKey( spep_5 + 88, 1, -4.3, -75.9 , 0 );
setMoveKey( spep_5 + 90, 1, 0.4, -58.9 , 0 );
setMoveKey( spep_5 + 92, 1, -3.4, -63.1 , 0 );
setMoveKey( spep_5 + 94, 1, 3.3, -55.3 , 0 );
setMoveKey( spep_5 + 96, 1, -3.2, -61.6 , 0 );
setMoveKey( spep_5 + 98, 1, -4.8, -54.1 , 0 );
setMoveKey( spep_5 + 100, 1, -0.3, -67 , 0 );
setMoveKey( spep_5 + 102, 1, -5.6, -61.3 , 0 );
setMoveKey( spep_5 + 104, 1, 1, -51.3 , 0 );
setMoveKey( spep_5 + 106, 1, -0.8, -57.9 , 0 );
setMoveKey( spep_5 + 108, 1, -5.5, -68.6 , 0 );
setMoveKey( spep_5 + 110, 1, 1.6, -55.1 , 0 );
setMoveKey( spep_5 + 112, 1, -1, -61.1 , 0 );
setMoveKey( spep_5 + 114, 1, -5.1, -66.3 , 0 );
setMoveKey( spep_5 + 116, 1, 1, -51.7 , 0 );
setMoveKey( spep_5 + 118, 1, -3.8, -63.7 , 0 );
setMoveKey( spep_5 + 120, 1, -0.3, -50.1 , 0 );
setMoveKey( spep_5 + 122, 1, -7.7, -56 , 0 );
setMoveKey( spep_5 + 124, 1, -5.8, -51.7 , 0 );
setMoveKey( spep_5 + 126, 1, -0.3, -63.1 , 0 );
setMoveKey( spep_5 + 128, 1, -6.3, -51.8 , 0 );
setMoveKey( spep_5 + 130, 1, -7.7, -46.5 , 0 );
setMoveKey( spep_5 + 132, 1, -5.8, -64.3 , 0 );
setMoveKey( spep_5 + 134, 1, -0.2, -67.8 , 0 );
setMoveKey( spep_5 + 136, 1, -3.4, -46.1 , 0 );
setMoveKey( spep_5 + 138, 1, 0, -62.7 , 0 );
setMoveKey( spep_5 + 140, 1, 2.4, -57.6 , 0 );
setMoveKey( spep_5 + 142, 1, -4.3, -45.7 , 0 );
setMoveKey( spep_5 + 144, 1, -0.8, -48.5 , 0 );
setMoveKey( spep_5 + 146, 1, 2.5, -57.2 , 0 );
setMoveKey( spep_5 + 148, 1, -7.7, -65.2 , 0 );
setMoveKey( spep_5 + 150, 1, -4.3, -56.4 , 0 );
setMoveKey( spep_5 + 152, 1, -7, -46.3 , 0 );
setMoveKey( spep_5 + 154, 1, 2, -65.4 , 0 );
setMoveKey( spep_5 + 156, 1, -2.5, -60.9 , 0 );
setMoveKey( spep_5 + 158, 1, -5.6, -47.3 , 0 );
setMoveKey( spep_5 + 160, 1, -7.3, -50.5 , 0 );
setMoveKey( spep_5 + 162, 1, -4.3, -42.7 , 0 );
setMoveKey( spep_5 + 164, 1, -7.6, -51.8 , 0 );
setMoveKey( spep_5 + 166, 1, 3, -65.5 , 0 );
setMoveKey( spep_5 + 168, 1, -0.3, -46.2 , 0 );
setMoveKey( spep_5 + 170, 1, -9.3, -57 , 0 );
setMoveKey( spep_5 + 172, 1, -6.1, -68 , 0 );
setMoveKey( spep_5 + 174, 1, -3.1, -55.6 , 0 );
setMoveKey( spep_5 + 176, 1, -9.2, -65.1 , 0 );
setMoveKey( spep_5 + 178, 1, -6.2, -50.8 , 0 );
setMoveKey( spep_5 + 180, 1, -2.6, -58.9 , 0 );
setMoveKey( spep_5 + 182, 1, 1.2, -40.3 , 0 );
setMoveKey( spep_5 + 184, 1, -6.3, -34.4 , 0 );
setMoveKey( spep_5 + 186, 1, -4.2, -45.9 , 0 );
setMoveKey( spep_5 + 188, 1, -8.6, -68.9 , 0 );
setMoveKey( spep_5 + 190, 1, -7.7, -50.1 , 0 );
setMoveKey( spep_5 + 192, 1, -2.2, -42.6 , 0 );
setMoveKey( spep_5 + 194, 1, 4.4, -71.1 , 0 );
setMoveKey( spep_5 + 196, 1, -1.1, -78.4 , 0 );
setMoveKey( spep_5 + 198, 1, -11, -62.2 , 0 );
setMoveKey( spep_5 + 200, 1, -6.7, -68.4 , 0 );
setMoveKey( spep_5 + 202, 1, -0.3, -43.4 , 0 );
setMoveKey( spep_5 + 204, 1, -4.4, -59.7 , 0 );
setMoveKey( spep_5 + 206, 1, 5.6, -31.9 , 0 );
setMoveKey( spep_5 + 208, 1, 1.2, -22.5 , 0 );
setMoveKey( spep_5 + 210, 1, -5.2, -49.3 , 0 );
setMoveKey( spep_5 + 212, 1, -10.6, -63.1 , 0 );
setMoveKey( spep_5 + 214, 1, -6.3, -45 , 0 );
setMoveKey( spep_5 + 216, 1, 8.2, -41.5 , 0 );
setMoveKey( spep_5 + 218, 1, 3.2, -66.4 , 0 );
setMoveKey( spep_5 + 220, 1, -6.6, -57.9 , 0 );
setMoveKey( spep_5 + 222, 1, -16.2, -78 , 0 );
setMoveKey( spep_5 + 224, 1, -4.8, -72.6 , 0 );
setMoveKey( spep_5 + 226, 1, 6.6, -35.9 , 0 );
setMoveKey( spep_5 + 228, 1, 0.2, -63.3 , 0 );
setMoveKey( spep_5 + 230, 1, -11.7, -43.5 , 0 );
setMoveKey( spep_5 + 232, 1, -8.3, -52.4 , 0 );
setMoveKey( spep_5 + 234, 1, 6.5, -28.4 , 0 );
setMoveKey( spep_5 + 236, 1, 2.7, -20.1 , 0 );
setMoveKey( spep_5 + 238, 1, -3.5, -45.4 , 0 );
setMoveKey( spep_5 + 240, 1, -5.6, -32.2 , 0 );
setMoveKey( spep_5 + 242, 1, -3.3, -51.5 , 0 );
setMoveKey( spep_5 + 244, 1, 0.9, -51.3 , 0 );
setMoveKey( spep_5 + 246, 1, -0.2, -52.8 , 0 );
setMoveKey( spep_5 + 248, 1, 0.3, -50.8 , 0 );
setMoveKey( spep_5 + 250, 1, 0.3, -50.6 , 0 );
setMoveKey( spep_5 + 252, 1, -0.9, -50.4 , 0 );
setMoveKey( spep_5 + 254, 1, 0.3, -52.3 , 0 );
setMoveKey( spep_5 + 256, 1, -0.9, -48.1 , 0 );
setMoveKey( spep_5 + 258, 1, -0.9, -46.4 , 0 );
setMoveKey( spep_5 + 260, 1, -2.4, -49.1 , 0 );
setMoveKey( spep_5 + 262, 1, -0.9, -20.9 , 0 );
setMoveKey( spep_5 + 264, 1, -1.8, -33.5 , 0 );
setMoveKey( spep_5 + 266, 1, 3.8, -28.8 , 0 );
setMoveKey( spep_5 + 268, 1, -2.9, -66.8 , 0 );
setMoveKey( spep_5 + 270, 1, -5.4, -50.4 , 0 );
setMoveKey( spep_5 + 272, 1, 3.5, -39.8 , 0 );
setMoveKey( spep_5 + 274, 1, 16.9, -66.3 , 0 );
setMoveKey( spep_5 + 276, 1, 9.2, -47.1 , 0 );
setMoveKey( spep_5 + 278, 1, 3.8, -36.5 , 0 );
setMoveKey( spep_5 + 280, 1, -1.6, -43.1 , 0 );
setMoveKey( spep_5 + 282, 1, 8.7, -39.6 , 0 );
setMoveKey( spep_5 + 284, 1, 2.7, -57.6 , 0 );
setMoveKey( spep_5 + 286, 1, -3.2, -47.8 , 0 );
setMoveKey( spep_5 + 288, 1, -9.1, -63.7 , 0 );
setMoveKey( spep_5 + 290, 1, -6.4, -38.9 , 0 );
setMoveKey( spep_5 + 292, 1, 6.6, -48.6 , 0 );
setMoveKey( spep_5 + 294, 1, -1.3, -53.2 , 0 );
setMoveKey( spep_5 + 296, 1, -8.7, -34.8 , 0 );
setMoveKey( spep_5 + 298, 1, 8.7, -18.4 , 0 );
setMoveKey( spep_5 + 300, 1, -10.8, -13.4 , 0 );
setMoveKey( spep_5 + 302, 1, -17, -51.3 , 0 );
setMoveKey( spep_5 + 304, 1, -10.1, -28.7 , 0 );
setMoveKey( spep_5 + 306, 1, 14.1, -46.4 , 0 );
setMoveKey( spep_5 + 308, 1, 9.1, -32.3 , 0 );
setMoveKey( spep_5 + 310, 1, -1.9, -54.4 , 0 );
setMoveKey( spep_5 + 312, 1, 8.7, -44.7 , 0 );
setMoveKey( spep_5 + 314, 1, 19.2, -66.6 , 0 );
setMoveKey( spep_5 + 316, 1, 15.3, -62.7 , 0 );
setMoveKey( spep_5 + 318, 1, 11.5, -24.3 , 0 );
setMoveKey( spep_5 + 320, 1, 14.1, -42.3 , 0 );
setMoveKey( spep_5 + 322, 1, -0.1, -30.1 , 0 );
setMoveKey( spep_5 + 324, 1, 8.5, -33.7 , 0 );
setMoveKey( spep_5 + 326, 1, 6.1, -17.5 , 0 );
setMoveKey( spep_5 + 328, 1, 3.8, -47.8 , 0 );
setMoveKey( spep_5 + 330, 1, -16.1, -60.7 , 0 );
setMoveKey( spep_5 + 332, 1, -8.8, -43.1 , 0 );
setMoveKey( spep_5 + 334, 1, -1.6, -50 , 0 );
setMoveKey( spep_5 + 336, 1, -17.1, -33.8 , 0 );
setMoveKey( spep_5 + 338, 1, -12.9, -37.7 , 0 );
setMoveKey( spep_5 + 340, 1, -8.9, -15.5 , 0 );
setMoveKey( spep_5 + 342, 1, 14.1, -42 , 0 );
setMoveKey( spep_5 + 344, 1, 8.3, -29.4 , 0 );
setMoveKey( spep_5 + 346, 1, 0.3, -43.2 , 0 );
setMoveKey( spep_5 + 348, 1, 8.4, -38.2 , 0 );
setMoveKey( spep_5 + 350, 1, -0.6, -52.5 , 0 );
setMoveKey( spep_5 + 352, 1, -9.6, -20.4 , 0 );
setMoveKey( spep_5 + 354, 1, -7.1, -36.8 , 0 );
setMoveKey( spep_5 + 356, 1, -13.1, -13.6 , 0 );
setMoveKey( spep_5 + 358, 1, 2.4, -33.1 , 0 );
setMoveKey( spep_5 + 360, 1, -0.9, -28.8 , 0 );
setMoveKey( spep_5 + 362, 1, -4.4, -24.6 , 0 );
setMoveKey( spep_5 + 364, 1, -7.8, -42.1 , 0 );
setMoveKey( spep_5 + 366, 1, 3.4, -24.1 , 0 );
setMoveKey( spep_5 + 368, 1, -3.1, -34.4 , 0 );
setMoveKey( spep_5 + 370, 1, -9.5, -44.7 , 0 );
setMoveKey( spep_5 + 372, 1, -0.8, -33.2 , 0 );
setMoveKey( spep_5 + 374, 1, 7.8, -21.6 , 0 );
setMoveKey( spep_5 + 376, 1, 1, -30.3 , 0 );
setMoveKey( spep_5 + 378, 1, -5.8, -39 , 0 );
setMoveKey( spep_5 + 380, 1, -0.9, -35.7 , 0 );
setMoveKey( spep_5 + 382, 1, 3.9, -32.3 , 0 );
setMoveKey( spep_5 + 384, 1, -4.7, -36.7 , 0 );
setMoveKey( spep_5 + 386, 1, -13.2, -40.9 , 0 );
setMoveKey( spep_5 + 388, 1, -7.5, -35 , 0 );
setMoveKey( spep_5 + 390, 1, -1.8, -29.1 , 0 );
setMoveKey( spep_5 + 392, 1, 3.9, -23.2 , 0 );

setScaleKey( spep_5 + 44, 1, 1.27, 1.27 );
setScaleKey( spep_5 + 46, 1, 1.28, 1.28 );
setScaleKey( spep_5 + 48, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 50, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 53, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 54, 1, 1.32, 1.32 );
setScaleKey( spep_5 + 56, 1, 1.33, 1.33 );
setScaleKey( spep_5 + 58, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 96, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 98, 1, 1.36, 1.36 );
setScaleKey( spep_5 + 142, 1, 1.36, 1.36 );
setScaleKey( spep_5 + 144, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 190, 1, 1.37, 1.37 );
setScaleKey( spep_5 + 192, 1, 1.38, 1.38 );
setScaleKey( spep_5 + 236, 1, 1.38, 1.38 );
setScaleKey( spep_5 + 238, 1, 1.39, 1.39 );
setScaleKey( spep_5 + 284, 1, 1.39, 1.39 );
setScaleKey( spep_5 + 286, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 332, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 334, 1, 1.41, 1.41 );
setScaleKey( spep_5 + 378, 1, 1.41, 1.41 );
setScaleKey( spep_5 + 380, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 392, 1, 1.42, 1.42 );

-- ** 音 ** --
playSe( spep_5 + 200, 1069 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 282 );
entryFade( spep_5 + 382, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 392 );

end



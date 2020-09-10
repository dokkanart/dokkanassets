--1018000:孫悟飯(じいちゃん)_かめはめ波

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
SP_01 = 154200; --アイドリング
SP_02 = 154202; --かめはめ波構え
SP_03 = 154204; --かめはめ波溜め放つ
SP_04 = 154205; --かめはめ波敵に向かって真っすぐ伸びる
SP_05 = 154206; --ヒット

--敵側
SP_01x = 154201; --アイドリング
SP_02x = 154203; --かめはめ波構え

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
-- アイドリング(28F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffectLife( spep_0 + 0, SP_01, 58, 0x100, -1, 0, 0, 0 );  --アイドリング(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 58, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 58, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 58, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 58, idling, 255 );

-- ** 白フェード ** --
--entryFade( spep_0 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 58;

------------------------------------------------------
-- かめはめ波構え(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_1 + 0, SP_02, 98, 0x80, -1, 0, 0, 0 );  --気溜め(ef_002)
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_1 + 98, kamae, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 98, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 98, kamae, 255 );

spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, -10 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -15, 535 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -15, 535, 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 535, 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.75, 0.75 );
setEffScaleKey( spep_x + 78, ctgogo, 0.75, 0.75 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 98, 0x80, -1, 0, 0, 0 );

setEffShake(spep_1, shuchusen1,98,10);

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_1 + 98, shuchusen1, 1, 1 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 98, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 98, shuchusen1, 255 );

-- ** 音 ** --
--playSe( spep_1 + 4, 4 );  --手を上げる
playSe( spep_x + 16, SE_04 );  --ゴゴゴ
--playSe( spep_1 + 40, 8 );  --構える

-- ** 薄い黒フェード ** --
entryFadeBg( spep_1 + 0, 54, 44, 0, 0, 0, 0, 180 );

-- ** 白フェード ** --
entryFade( spep_1 + 84, 8, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 98;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- かめはめ波溜め放つ(158F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_3 + 0, SP_03, 158, 0x100, -1, 0, 0, 0 );  --斜め撃ち(ef_004)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 158, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 158, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 158, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 158, hassha, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 158, 0x100, -1, 0, 0, 0 );

setEffShake(spep_3, shuchusen3,158,10);

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 158, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 158, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 2, shuchusen3, 0 );
setEffRotateKey( spep_3 + 4, shuchusen3, 180 );
setEffRotateKey( spep_3 + 6, shuchusen3, 0 );
setEffRotateKey( spep_3 + 8, shuchusen3, 180 );
setEffRotateKey( spep_3 + 10, shuchusen3, 0 );
setEffRotateKey( spep_3 + 12, shuchusen3, 180 );
setEffRotateKey( spep_3 + 14, shuchusen3, 0 );
setEffRotateKey( spep_3 + 16, shuchusen3, 180 );
setEffRotateKey( spep_3 + 18, shuchusen3, 0 );
setEffRotateKey( spep_3 + 20, shuchusen3, 180 );
setEffRotateKey( spep_3 + 22, shuchusen3, 0 );
setEffRotateKey( spep_3 + 24, shuchusen3, 180 );
setEffRotateKey( spep_3 + 26, shuchusen3, 0 );
setEffRotateKey( spep_3 + 28, shuchusen3, 180 );
setEffRotateKey( spep_3 + 30, shuchusen3, 0 );
setEffRotateKey( spep_3 + 32, shuchusen3, 180 );
setEffRotateKey( spep_3 + 34, shuchusen3, 0 );
setEffRotateKey( spep_3 + 36, shuchusen3, 180 );
setEffRotateKey( spep_3 + 38, shuchusen3, 0 );
setEffRotateKey( spep_3 + 40, shuchusen3, 180 );
setEffRotateKey( spep_3 + 42, shuchusen3, 0 );
setEffRotateKey( spep_3 + 44, shuchusen3, 180 );
setEffRotateKey( spep_3 + 46, shuchusen3, 0 );
setEffRotateKey( spep_3 + 48, shuchusen3, 180 );
setEffRotateKey( spep_3 + 50, shuchusen3, 0 );
setEffRotateKey( spep_3 + 52, shuchusen3, 180 );
setEffRotateKey( spep_3 + 54, shuchusen3, 0 );
setEffRotateKey( spep_3 + 56, shuchusen3, 180 );
setEffRotateKey( spep_3 + 58, shuchusen3, 0 );
setEffRotateKey( spep_3 + 60, shuchusen3, 180 );
setEffRotateKey( spep_3 + 62, shuchusen3, 0 );
setEffRotateKey( spep_3 + 64, shuchusen3, 180 );
setEffRotateKey( spep_3 + 66, shuchusen3, 0 );
setEffRotateKey( spep_3 + 68, shuchusen3, 180 );
setEffRotateKey( spep_3 + 70, shuchusen3, 0 );
setEffRotateKey( spep_3 + 72, shuchusen3, 180 );
setEffRotateKey( spep_3 + 74, shuchusen3, 0 );
setEffRotateKey( spep_3 + 76, shuchusen3, 180 );
setEffRotateKey( spep_3 + 78, shuchusen3, 0 );
setEffRotateKey( spep_3 + 80, shuchusen3, 180 );
setEffRotateKey( spep_3 + 82, shuchusen3, 0 );
setEffRotateKey( spep_3 + 84, shuchusen3, 180 );
setEffRotateKey( spep_3 + 86, shuchusen3, 0 );
setEffRotateKey( spep_3 + 88, shuchusen3, 180 );
setEffRotateKey( spep_3 + 90, shuchusen3, 0 );
setEffRotateKey( spep_3 + 92, shuchusen3, 180 );
setEffRotateKey( spep_3 + 94, shuchusen3, 0 );
setEffRotateKey( spep_3 + 96, shuchusen3, 180 );
setEffRotateKey( spep_3 + 98, shuchusen3, 0 );
setEffRotateKey( spep_3 + 100, shuchusen3, 180 );
setEffRotateKey( spep_3 + 102, shuchusen3, 0 );
setEffRotateKey( spep_3 + 104, shuchusen3, 180 );
setEffRotateKey( spep_3 + 106, shuchusen3, 0 );
setEffRotateKey( spep_3 + 108, shuchusen3, 180 );
setEffRotateKey( spep_3 + 110, shuchusen3, 0 );
setEffRotateKey( spep_3 + 112, shuchusen3, 180 );
setEffRotateKey( spep_3 + 114, shuchusen3, 0 );
setEffRotateKey( spep_3 + 116, shuchusen3, 180 );
setEffRotateKey( spep_3 + 118, shuchusen3, 0 );
setEffRotateKey( spep_3 + 120, shuchusen3, 180 );
setEffRotateKey( spep_3 + 122, shuchusen3, 0 );
setEffRotateKey( spep_3 + 124, shuchusen3, 180 );
setEffRotateKey( spep_3 + 126, shuchusen3, 0 );
setEffRotateKey( spep_3 + 128, shuchusen3, 180 );
setEffRotateKey( spep_3 + 130, shuchusen3, 0 );
setEffRotateKey( spep_3 + 132, shuchusen3, 180 );
setEffRotateKey( spep_3 + 134, shuchusen3, 0 );
setEffRotateKey( spep_3 + 136, shuchusen3, 180 );
setEffRotateKey( spep_3 + 138, shuchusen3, 0 );
setEffRotateKey( spep_3 + 140, shuchusen3, 180 );
setEffRotateKey( spep_3 + 142, shuchusen3, 0 );
setEffRotateKey( spep_3 + 144, shuchusen3, 180 );
setEffRotateKey( spep_3 + 146, shuchusen3, 0 );
setEffRotateKey( spep_3 + 148, shuchusen3, 180 );
setEffRotateKey( spep_3 + 150, shuchusen3, 0 );
setEffRotateKey( spep_3 + 152, shuchusen3, 180 );
setEffRotateKey( spep_3 + 154, shuchusen3, 0 );
setEffRotateKey( spep_3 + 156, shuchusen3, 180 );
setEffRotateKey( spep_3 + 158, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 158, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctZuo = entryEffectLife( spep_3 -3 + 82, 10012, 28, 0x100, -1, 0, 76, 259.9 ); --ズオッ
setEffMoveKey( spep_3 -3 + 82, ctZuo, 76, 259.9 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctZuo, 91.5, 279.4 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctZuo, 96, 309.9 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctZuo, 118.5, 322.4 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctZuo, 116, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 92, ctZuo, 138.4, 341.5 , 0 );
setEffMoveKey( spep_3 -3 + 94, ctZuo, 124, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 96, ctZuo, 151.2, 336.7 , 0 );
setEffMoveKey( spep_3 -3 + 98, ctZuo, 132, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 100, ctZuo, 164, 331.9 , 0 );
setEffMoveKey( spep_3 -3 + 102, ctZuo, 140, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 104, ctZuo, 176.8, 327.1 , 0 );
setEffMoveKey( spep_3 -3 + 106, ctZuo, 148, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 108, ctZuo, 189.5, 322.3 , 0 );
setEffMoveKey( spep_3 -3 + 110, ctZuo, 196, 319.9 , 0 );

setEffScaleKey( spep_3 -3 + 82, ctZuo, 0.5, 0.5 );
setEffScaleKey( spep_3 -3 + 110, ctZuo, 7, 7 );

setEffRotateKey( spep_3 -3 + 82, ctZuo, 30 );
setEffRotateKey( spep_3 -3 + 110, ctZuo, 30 );

setEffAlphaKey( spep_3 -3 + 82, ctZuo, 255 );
setEffAlphaKey( spep_3 -3 + 84, ctZuo, 237 );
setEffAlphaKey( spep_3 -3 + 86, ctZuo, 219 );
setEffAlphaKey( spep_3 -3 + 88, ctZuo, 200 );
setEffAlphaKey( spep_3 -3 + 90, ctZuo, 182 );
setEffAlphaKey( spep_3 -3 + 92, ctZuo, 164 );
setEffAlphaKey( spep_3 -3 + 94, ctZuo, 146 );
setEffAlphaKey( spep_3 -3 + 96, ctZuo, 128 );
setEffAlphaKey( spep_3 -3 + 98, ctZuo, 109 );
setEffAlphaKey( spep_3 -3 + 100, ctZuo, 91 );
setEffAlphaKey( spep_3 -3 + 102, ctZuo, 73 );
setEffAlphaKey( spep_3 -3 + 104, ctZuo, 55 );
setEffAlphaKey( spep_3 -3 + 106, ctZuo, 36 );
setEffAlphaKey( spep_3 -3 + 108, ctZuo, 18 );
setEffAlphaKey( spep_3 -3 + 110, ctZuo, 0 );

-- ** 音 ** --
SE0 = playSe( spep_3 + 0, 15 );  --溜める
stopSe( spep_3 -3 + 76, SE0, 20 );
playSe( spep_3 -3 + 82, 1022 );  --発射

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 158, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 150, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 158;

------------------------------------------------------
-- かめはめ波敵に向かって真っすぐ伸びる(158F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_4 + 0, SP_04, 58, 0x100, -1, 0, 0, 0 );  --被弾(ef_005)
setEffMoveKey( spep_4 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, hidan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, hidan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hidan, 0 );
setEffRotateKey( spep_4 + 58, hidan, 0 );
setEffAlphaKey( spep_4 + 0, hidan, 255 );
setEffAlphaKey( spep_4 + 58, hidan, 255 );

-- ** 書き文字エントリー ** --
ctZudodo = entryEffectLife( spep_4 + 0, 10014, 58, 0x100, -1, 0, 98.1, 284 ); --ズドドドッ
--setEffMoveKey( spep_4 -3 + 0, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 3, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 4, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 6, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 8, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 10, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 14, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 61, ctZudodo, 79.1, 262.3 , 0 );

setEffScaleKey( spep_4 + 0, ctZudodo, 3, 3 );
setEffScaleKey( spep_4 + 58, ctZudodo, 3, 3);

setEffRotateKey( spep_4 + 0, ctZudodo, 60 );
setEffRotateKey( spep_4 + 58, ctZudodo, 60 );

setEffAlphaKey( spep_4 + 0, ctZudodo, 255 );
setEffAlphaKey( spep_4 + 58, ctZudodo, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0, 906, 58, 0x100, -1, 0, 0, 0 );

setEffShake(spep_4, shuchusen4,58,10);

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0, 0 );
setEffMoveKey( spep_4 + 58, shuchusen4, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.2, 1.2 );
setEffScaleKey( spep_4 + 58, shuchusen4, 1.2, 1.2 );

setEffRotateKey( spep_4 + 0, shuchusen4, 180 );
setEffRotateKey( spep_4 + 2, shuchusen4, 0 );
setEffRotateKey( spep_4 + 4, shuchusen4, 180 );
setEffRotateKey( spep_4 + 6, shuchusen4, 0 );
setEffRotateKey( spep_4 + 8, shuchusen4, 180 );
setEffRotateKey( spep_4 + 10, shuchusen4, 0 );
setEffRotateKey( spep_4 + 12, shuchusen4, 180 );
setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 16, shuchusen4, 180 );
setEffRotateKey( spep_4 + 18, shuchusen4, 0 );
setEffRotateKey( spep_4 + 20, shuchusen4, 180 );
setEffRotateKey( spep_4 + 22, shuchusen4, 0 );
setEffRotateKey( spep_4 + 24, shuchusen4, 180 );
setEffRotateKey( spep_4 + 26, shuchusen4, 0 );
setEffRotateKey( spep_4 + 28, shuchusen4, 180 );
setEffRotateKey( spep_4 + 30, shuchusen4, 0 );
setEffRotateKey( spep_4 + 32, shuchusen4, 180 );
setEffRotateKey( spep_4 + 34, shuchusen4, 0 );
setEffRotateKey( spep_4 + 36, shuchusen4, 180 );
setEffRotateKey( spep_4 + 38, shuchusen4, 0 );
setEffRotateKey( spep_4 + 40, shuchusen4, 180 );
setEffRotateKey( spep_4 + 42, shuchusen4, 0 );
setEffRotateKey( spep_4 + 44, shuchusen4, 180 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );
setEffRotateKey( spep_4 + 48, shuchusen4, 180 );
setEffRotateKey( spep_4 + 50, shuchusen4, 0 );
setEffRotateKey( spep_4 + 52, shuchusen4, 180 );
setEffRotateKey( spep_4 + 54, shuchusen4, 0 );
setEffRotateKey( spep_4 + 56, shuchusen4, 180 );
setEffRotateKey( spep_4 + 58, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 58, shuchusen4, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 100 );

--setMoveKey( spep_4 -3 + 0, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 3, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -1.9, 27.7 , 0 );

setScaleKey( spep_4 -3 + 3, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 6, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 8, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 10, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 12, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 14, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 16, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 20, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 22, 1, 0.84, 0.84 );
setScaleKey( spep_4 -3 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 26, 1, 0.86, 0.86 );
setScaleKey( spep_4 -3 + 28, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 30, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 32, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 34, 1, 0.94, 0.94 );

setRotateKey( spep_4 -3 + 3, 1, 0 );
setRotateKey( spep_4 -3 + 34, 1, 0 );

-- ** 音 ** --
SE1 = playSe( spep_4 + 0, 1021 );  --迫る

-- ** 薄い黒フェード ** --
entryFadeBg( spep_4 + 0, 0, 58, 0, 0, 0, 0, 180 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 35; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 敵の動き ** --
setDisp( spep_4 + 58, 1, 0 );
changeAnime( spep_4 + 58, 1, 105 );

setMoveKey( spep_4 -3 + 36, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -1.9, 27.6 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -1.9, 31.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -1.9, 27.6 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -1.9, 31.6 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -1.9, 27.6 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -2, 31.5 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -1.9, 27.6 , 0 );
setMoveKey( spep_4 -3 + 57, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 42.1, 37.7 , 0 );

setScaleKey( spep_4 -3 + 36, 1, 0.97, 0.97 );
setScaleKey( spep_4 -3 + 38, 1, 1, 1 );
setScaleKey( spep_4 -3 + 40, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 42, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 44, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 46, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 48, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 50, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 52, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 54, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 57, 1, 1.66, 1.66 );
setScaleKey( spep_4 -3 + 58, 1, 1.27, 1.27 );

setRotateKey( spep_4 -3 + 36, 1, 0 );
setRotateKey( spep_4 -3 + 58, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_4 + 52, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;

------------------------------------------------------
-- ギャン(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, 190000, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, gyan, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, gyan, 1, 1 );
setEffScaleKey( spep_5 + 58, gyan, 1, 1 );

setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 58, gyan, 0 );

setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 58, gyan, 255 );

-- ** 書き文字エントリー ** --
ctGyan = entryEffectLife( spep_5 + 0, 10006, 58, 0x100, -1, 0, 7.1, 306.8 ); --ギャンッ
setEffMoveKey( spep_5 + 0, ctGyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_5 + 58, ctGyan, 7.1, 306.8 , 0 );

--setEffScaleKey( spep_5 -3 + 0, ctGyan, 0.6, 0.6 );
setEffScaleKey( spep_5 -3 + 3, ctGyan, 2, 2 );
setEffScaleKey( spep_5 -3 + 25, ctGyan, 3.5, 3.5 );
setEffScaleKey( spep_5 -3 + 61, ctGyan, 4, 4 );

setEffRotateKey( spep_5 + 0, ctGyan, 0 );
setEffRotateKey( spep_5 + 58, ctGyan, 0 );

setEffAlphaKey( spep_5 + 0, ctGyan, 255 );
setEffAlphaKey( spep_5 + 58, ctGyan, 255 );

-- ** 薄い黒フェード ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 180 );

-- ** 白フェード ** --
entryFade( spep_5 + 20, 36, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 0, 1023 );  --被弾

-- ** 次の準備 ** --
spep_6 = spep_5 + 58;

------------------------------------------------------
-- 爆発(100F)
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen5, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen5, 0 );
setEffRotateKey( spep_6 + 46, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen5, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen5, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen5, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen5, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen5, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen5, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen5, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen5, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen6, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen6, 0 );
setEffRotateKey( spep_6 + 100, shuchusen6, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_10 );  --爆発音
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- アイドリング(28F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffectLife( spep_0 + 0, SP_01x, 58, 0x100, -1, 0, 0, 0 );  --アイドリング(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 58, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, -1.0, 1.0 );
setEffScaleKey( spep_0 + 58, idling, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 58, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 58, idling, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 52, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 58;

------------------------------------------------------
-- かめはめ波構え(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_1 + 0, SP_02x, 98, 0x80, -1, 0, 0, 0 );  --気溜め(ef_002)
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_1 + 98, kamae, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 98, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 98, kamae, 255 );

spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, -10 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -15, 535 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -15, 535, 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 535, 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.75, 0.75 );
setEffScaleKey( spep_x + 78, ctgogo, -0.75, 0.75 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 98, 0x80, -1, 0, 0, 0 );

setEffShake(spep_1, shuchusen1,98,10);

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_1 + 98, shuchusen1, 1, 1 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 98, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 98, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_x + 16, SE_04 );  --ゴゴゴ

-- ** 薄い黒フェード ** --
entryFadeBg( spep_1 + 0, 54, 44, 0, 0, 0, 0, 180 );

-- ** 白フェード ** --
entryFade( spep_1 + 84, 8, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 98;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- かめはめ波溜め放つ(158F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_3 + 0, SP_03, 158, 0x100, -1, 0, 0, 0 );  --斜め撃ち(ef_004)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 158, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_3 + 158, hassha, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 158, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 158, hassha, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 158, 0x100, -1, 0, 0, 0 );

setEffShake(spep_3, shuchusen3,158,10);

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 158, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 158, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_3 + 0, shuchusen3, 180 );
setEffRotateKey( spep_3 + 2, shuchusen3, 0 );
setEffRotateKey( spep_3 + 4, shuchusen3, 180 );
setEffRotateKey( spep_3 + 6, shuchusen3, 0 );
setEffRotateKey( spep_3 + 8, shuchusen3, 180 );
setEffRotateKey( spep_3 + 10, shuchusen3, 0 );
setEffRotateKey( spep_3 + 12, shuchusen3, 180 );
setEffRotateKey( spep_3 + 14, shuchusen3, 0 );
setEffRotateKey( spep_3 + 16, shuchusen3, 180 );
setEffRotateKey( spep_3 + 18, shuchusen3, 0 );
setEffRotateKey( spep_3 + 20, shuchusen3, 180 );
setEffRotateKey( spep_3 + 22, shuchusen3, 0 );
setEffRotateKey( spep_3 + 24, shuchusen3, 180 );
setEffRotateKey( spep_3 + 26, shuchusen3, 0 );
setEffRotateKey( spep_3 + 28, shuchusen3, 180 );
setEffRotateKey( spep_3 + 30, shuchusen3, 0 );
setEffRotateKey( spep_3 + 32, shuchusen3, 180 );
setEffRotateKey( spep_3 + 34, shuchusen3, 0 );
setEffRotateKey( spep_3 + 36, shuchusen3, 180 );
setEffRotateKey( spep_3 + 38, shuchusen3, 0 );
setEffRotateKey( spep_3 + 40, shuchusen3, 180 );
setEffRotateKey( spep_3 + 42, shuchusen3, 0 );
setEffRotateKey( spep_3 + 44, shuchusen3, 180 );
setEffRotateKey( spep_3 + 46, shuchusen3, 0 );
setEffRotateKey( spep_3 + 48, shuchusen3, 180 );
setEffRotateKey( spep_3 + 50, shuchusen3, 0 );
setEffRotateKey( spep_3 + 52, shuchusen3, 180 );
setEffRotateKey( spep_3 + 54, shuchusen3, 0 );
setEffRotateKey( spep_3 + 56, shuchusen3, 180 );
setEffRotateKey( spep_3 + 58, shuchusen3, 0 );
setEffRotateKey( spep_3 + 60, shuchusen3, 180 );
setEffRotateKey( spep_3 + 62, shuchusen3, 0 );
setEffRotateKey( spep_3 + 64, shuchusen3, 180 );
setEffRotateKey( spep_3 + 66, shuchusen3, 0 );
setEffRotateKey( spep_3 + 68, shuchusen3, 180 );
setEffRotateKey( spep_3 + 70, shuchusen3, 0 );
setEffRotateKey( spep_3 + 72, shuchusen3, 180 );
setEffRotateKey( spep_3 + 74, shuchusen3, 0 );
setEffRotateKey( spep_3 + 76, shuchusen3, 180 );
setEffRotateKey( spep_3 + 78, shuchusen3, 0 );
setEffRotateKey( spep_3 + 80, shuchusen3, 180 );
setEffRotateKey( spep_3 + 82, shuchusen3, 0 );
setEffRotateKey( spep_3 + 84, shuchusen3, 180 );
setEffRotateKey( spep_3 + 86, shuchusen3, 0 );
setEffRotateKey( spep_3 + 88, shuchusen3, 180 );
setEffRotateKey( spep_3 + 90, shuchusen3, 0 );
setEffRotateKey( spep_3 + 92, shuchusen3, 180 );
setEffRotateKey( spep_3 + 94, shuchusen3, 0 );
setEffRotateKey( spep_3 + 96, shuchusen3, 180 );
setEffRotateKey( spep_3 + 98, shuchusen3, 0 );
setEffRotateKey( spep_3 + 100, shuchusen3, 180 );
setEffRotateKey( spep_3 + 102, shuchusen3, 0 );
setEffRotateKey( spep_3 + 104, shuchusen3, 180 );
setEffRotateKey( spep_3 + 106, shuchusen3, 0 );
setEffRotateKey( spep_3 + 108, shuchusen3, 180 );
setEffRotateKey( spep_3 + 110, shuchusen3, 0 );
setEffRotateKey( spep_3 + 112, shuchusen3, 180 );
setEffRotateKey( spep_3 + 114, shuchusen3, 0 );
setEffRotateKey( spep_3 + 116, shuchusen3, 180 );
setEffRotateKey( spep_3 + 118, shuchusen3, 0 );
setEffRotateKey( spep_3 + 120, shuchusen3, 180 );
setEffRotateKey( spep_3 + 122, shuchusen3, 0 );
setEffRotateKey( spep_3 + 124, shuchusen3, 180 );
setEffRotateKey( spep_3 + 126, shuchusen3, 0 );
setEffRotateKey( spep_3 + 128, shuchusen3, 180 );
setEffRotateKey( spep_3 + 130, shuchusen3, 0 );
setEffRotateKey( spep_3 + 132, shuchusen3, 180 );
setEffRotateKey( spep_3 + 134, shuchusen3, 0 );
setEffRotateKey( spep_3 + 136, shuchusen3, 180 );
setEffRotateKey( spep_3 + 138, shuchusen3, 0 );
setEffRotateKey( spep_3 + 140, shuchusen3, 180 );
setEffRotateKey( spep_3 + 142, shuchusen3, 0 );
setEffRotateKey( spep_3 + 144, shuchusen3, 180 );
setEffRotateKey( spep_3 + 146, shuchusen3, 0 );
setEffRotateKey( spep_3 + 148, shuchusen3, 180 );
setEffRotateKey( spep_3 + 150, shuchusen3, 0 );
setEffRotateKey( spep_3 + 152, shuchusen3, 180 );
setEffRotateKey( spep_3 + 154, shuchusen3, 0 );
setEffRotateKey( spep_3 + 156, shuchusen3, 180 );
setEffRotateKey( spep_3 + 158, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 158, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctZuo = entryEffectLife( spep_3 -3 + 82, 10012, 28, 0x100, -1, 0, 76, 259.9 ); --ズオッ
setEffMoveKey( spep_3 -3 + 82, ctZuo, 76, 259.9 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctZuo, 91.5, 279.4 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctZuo, 96, 309.9 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctZuo, 118.5, 322.4 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctZuo, 116, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 92, ctZuo, 138.4, 341.5 , 0 );
setEffMoveKey( spep_3 -3 + 94, ctZuo, 124, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 96, ctZuo, 151.2, 336.7 , 0 );
setEffMoveKey( spep_3 -3 + 98, ctZuo, 132, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 100, ctZuo, 164, 331.9 , 0 );
setEffMoveKey( spep_3 -3 + 102, ctZuo, 140, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 104, ctZuo, 176.8, 327.1 , 0 );
setEffMoveKey( spep_3 -3 + 106, ctZuo, 148, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 108, ctZuo, 189.5, 322.3 , 0 );
setEffMoveKey( spep_3 -3 + 110, ctZuo, 196, 319.9 , 0 );

setEffScaleKey( spep_3 -3 + 82, ctZuo, 0.5, 0.5 );
setEffScaleKey( spep_3 -3 + 110, ctZuo, 7, 7 );

setEffRotateKey( spep_3 -3 + 82, ctZuo, 30 );
setEffRotateKey( spep_3 -3 + 110, ctZuo, 30 );

setEffAlphaKey( spep_3 -3 + 82, ctZuo, 255 );
setEffAlphaKey( spep_3 -3 + 84, ctZuo, 237 );
setEffAlphaKey( spep_3 -3 + 86, ctZuo, 219 );
setEffAlphaKey( spep_3 -3 + 88, ctZuo, 200 );
setEffAlphaKey( spep_3 -3 + 90, ctZuo, 182 );
setEffAlphaKey( spep_3 -3 + 92, ctZuo, 164 );
setEffAlphaKey( spep_3 -3 + 94, ctZuo, 146 );
setEffAlphaKey( spep_3 -3 + 96, ctZuo, 128 );
setEffAlphaKey( spep_3 -3 + 98, ctZuo, 109 );
setEffAlphaKey( spep_3 -3 + 100, ctZuo, 91 );
setEffAlphaKey( spep_3 -3 + 102, ctZuo, 73 );
setEffAlphaKey( spep_3 -3 + 104, ctZuo, 55 );
setEffAlphaKey( spep_3 -3 + 106, ctZuo, 36 );
setEffAlphaKey( spep_3 -3 + 108, ctZuo, 18 );
setEffAlphaKey( spep_3 -3 + 110, ctZuo, 0 );

-- ** 音 ** --
SE0 = playSe( spep_3 + 0, 15 );  --溜める
stopSe( spep_3 -3 + 76, SE0, 20 );
playSe( spep_3 -3 + 82, 1022 );  --発射

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 158, 0, 0, 0, 0, 180 );  --薄い黒　背景


-- ** 白フェード ** --
entryFade( spep_3 + 150, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 158;

------------------------------------------------------
-- かめはめ波敵に向かって真っすぐ伸びる(158F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_4 + 0, SP_04, 58, 0x100, -1, 0, 0, 0 );  --被弾(ef_005)
setEffMoveKey( spep_4 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, hidan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, hidan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hidan, 0 );
setEffRotateKey( spep_4 + 58, hidan, 0 );
setEffAlphaKey( spep_4 + 0, hidan, 255 );
setEffAlphaKey( spep_4 + 58, hidan, 255 );

-- ** 書き文字エントリー ** --
ctZudodo = entryEffectLife( spep_4 + 0, 10014, 58, 0x100, -1, 0, 98.1, 284 ); --ズドドドッ
--setEffMoveKey( spep_4 -3 + 0, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 3, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 4, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 6, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 8, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 10, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 14, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctZudodo, 79.1, 262.3 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctZudodo, 98.1, 284 , 0 );
setEffMoveKey( spep_4 -3 + 61, ctZudodo, 79.1, 262.3 , 0 );

setEffScaleKey( spep_4 + 0, ctZudodo, 3, 3 );
setEffScaleKey( spep_4 + 58, ctZudodo, 3, 3);

setEffRotateKey( spep_4 + 0, ctZudodo, -15 );
setEffRotateKey( spep_4 + 58, ctZudodo, -15 );

setEffAlphaKey( spep_4 + 0, ctZudodo, 255 );
setEffAlphaKey( spep_4 + 58, ctZudodo, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0, 906, 58, 0x100, -1, 0, 0, 0 );

setEffShake(spep_4, shuchusen4,58,10);

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0, 0 );
setEffMoveKey( spep_4 + 58, shuchusen4, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.2, 1.2 );
setEffScaleKey( spep_4 + 58, shuchusen4, 1.2, 1.2 );

setEffRotateKey( spep_4 + 0, shuchusen4, 180 );
setEffRotateKey( spep_4 + 2, shuchusen4, 0 );
setEffRotateKey( spep_4 + 4, shuchusen4, 180 );
setEffRotateKey( spep_4 + 6, shuchusen4, 0 );
setEffRotateKey( spep_4 + 8, shuchusen4, 180 );
setEffRotateKey( spep_4 + 10, shuchusen4, 0 );
setEffRotateKey( spep_4 + 12, shuchusen4, 180 );
setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 16, shuchusen4, 180 );
setEffRotateKey( spep_4 + 18, shuchusen4, 0 );
setEffRotateKey( spep_4 + 20, shuchusen4, 180 );
setEffRotateKey( spep_4 + 22, shuchusen4, 0 );
setEffRotateKey( spep_4 + 24, shuchusen4, 180 );
setEffRotateKey( spep_4 + 26, shuchusen4, 0 );
setEffRotateKey( spep_4 + 28, shuchusen4, 180 );
setEffRotateKey( spep_4 + 30, shuchusen4, 0 );
setEffRotateKey( spep_4 + 32, shuchusen4, 180 );
setEffRotateKey( spep_4 + 34, shuchusen4, 0 );
setEffRotateKey( spep_4 + 36, shuchusen4, 180 );
setEffRotateKey( spep_4 + 38, shuchusen4, 0 );
setEffRotateKey( spep_4 + 40, shuchusen4, 180 );
setEffRotateKey( spep_4 + 42, shuchusen4, 0 );
setEffRotateKey( spep_4 + 44, shuchusen4, 180 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );
setEffRotateKey( spep_4 + 48, shuchusen4, 180 );
setEffRotateKey( spep_4 + 50, shuchusen4, 0 );
setEffRotateKey( spep_4 + 52, shuchusen4, 180 );
setEffRotateKey( spep_4 + 54, shuchusen4, 0 );
setEffRotateKey( spep_4 + 56, shuchusen4, 180 );
setEffRotateKey( spep_4 + 58, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 58, shuchusen4, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 100 );

--setMoveKey( spep_4 -3 + 0, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 3, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -1.9, 27.7 , 0 );

setScaleKey( spep_4 -3 + 3, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 6, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 8, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 10, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 12, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 14, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 16, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 20, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 22, 1, 0.84, 0.84 );
setScaleKey( spep_4 -3 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 26, 1, 0.86, 0.86 );
setScaleKey( spep_4 -3 + 28, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 30, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 32, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 34, 1, 0.94, 0.94 );

setRotateKey( spep_4 -3 + 3, 1, 0 );
setRotateKey( spep_4 -3 + 34, 1, 0 );

-- ** 音 ** --
SE1 = playSe( spep_4 + 0, 1021 );  --迫る

-- ** 薄い黒フェード ** --
entryFadeBg( spep_4 + 0, 0, 58, 0, 0, 0, 0, 180 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 35; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 敵の動き ** --
setDisp( spep_4 + 58, 1, 0 );
changeAnime( spep_4 + 58, 1, 105 );

setMoveKey( spep_4 -3 + 36, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -1.9, 27.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -1.9, 27.6 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -1.9, 31.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -1.9, 27.6 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -1.9, 31.6 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -1.9, 27.6 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -2, 31.5 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -1.9, 27.6 , 0 );
setMoveKey( spep_4 -3 + 57, 1, -1.9, 31.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 42.1, 37.7 , 0 );

setScaleKey( spep_4 -3 + 36, 1, 0.97, 0.97 );
setScaleKey( spep_4 -3 + 38, 1, 1, 1 );
setScaleKey( spep_4 -3 + 40, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 42, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 44, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 46, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 48, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 50, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 52, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 54, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 57, 1, 1.66, 1.66 );
setScaleKey( spep_4 -3 + 58, 1, 1.27, 1.27 );

setRotateKey( spep_4 -3 + 36, 1, 0 );
setRotateKey( spep_4 -3 + 58, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_4 + 52, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;

------------------------------------------------------
-- ギャン(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, 190000, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, gyan, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, gyan, 1, 1 );
setEffScaleKey( spep_5 + 58, gyan, 1, 1 );

setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 58, gyan, 0 );

setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 58, gyan, 255 );

-- ** 書き文字エントリー ** --
ctGyan = entryEffectLife( spep_5 + 0, 10006, 58, 0x100, -1, 0, 7.1, 306.8 ); --ギャンッ
setEffMoveKey( spep_5 + 0, ctGyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_5 + 58, ctGyan, 7.1, 306.8 , 0 );

--setEffScaleKey( spep_5 -3 + 0, ctGyan, 0.6, 0.6 );
setEffScaleKey( spep_5 -3 + 3, ctGyan, 2, 2 );
setEffScaleKey( spep_5 -3 + 25, ctGyan, 3.5, 3.5 );
setEffScaleKey( spep_5 -3 + 61, ctGyan, 4, 4 );

setEffRotateKey( spep_5 + 0, ctGyan, 0 );
setEffRotateKey( spep_5 + 58, ctGyan, 0 );

setEffAlphaKey( spep_5 + 0, ctGyan, 255 );
setEffAlphaKey( spep_5 + 58, ctGyan, 255 );

-- ** 薄い黒フェード ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 180 );

-- ** 音 ** --
playSe( spep_5 + 0, 1023 );  --被弾

-- ** 白フェード ** --
entryFade( spep_5 + 20, 36, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 58;

------------------------------------------------------
-- 爆発(100F)
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen5, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen5, 0 );
setEffRotateKey( spep_6 + 46, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen5, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen5, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen5, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen5, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen5, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen5, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen5, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen5, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen6, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen6, 0 );
setEffRotateKey( spep_6 + 100, shuchusen6, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_10 );  --爆発音
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 100 );

end
--1018790:超サイヤ人ゴッドSS孫悟空_ゴッドかめはめ波
--sp_effect_b4_00122

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
SP_01 = 154487; --気合い溜め
SP_02 = 154488; --ナビ溜め
SP_03 = 154489; --突進〜構え
SP_04 = 154490; --放つ
SP_05 = 154491; --着弾・手前
SP_06 = 154492; --着弾・奥

--敵側
SP_01r = 154493; --気合い溜め
SP_03r = 154494; --突進〜構え
SP_04r = 154495; --放つ


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
-- ため
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 76, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 76, tame, 255 );


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 18, 906, 61, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 18, shuchusen1, 61, 20);

setEffMoveKey( spep_0 -3 + 18, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 18, shuchusen1, 1.8, 1.8 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1.8, 1.8 );

setEffRotateKey( spep_0 -3 + 18, shuchusen1, 0 );
setEffRotateKey( spep_0 + 76, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_0 -3 + 18, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 191 );--white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 -3 + 18, 20, 42, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 19, 1035 );
playSe( spep_0 + 19, 1181 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 76
------------------------------------------------------
-- ためナビ(80F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame2 = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ためナビ(ef_002)

setEffMoveKey( spep_1 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, tame2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, tame2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame2, 0 );
setEffRotateKey( spep_1 + 76, tame2, 0 );
setEffAlphaKey( spep_1 + 0, tame2, 255 );
setEffAlphaKey( spep_1 + 76, tame2, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 75, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 + 0, shuchusen2, 75, 20);

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 75, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 75, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 75, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 75, shuchusen2, 255 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 76, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
se_1132 = playSe( spep_1 + 10, 1132 );
se_1037 = playSe( spep_1 + 10, 1037 );
playSe( spep_1 + 10, 1036 );
setSeVolume( spep_1 + 10, 1132, 25 );
setSeVolume( spep_1 + 10, 1037, 71 );
setSeVolume( spep_1 + 10, 1036, 79 );
playSe( spep_1 + 34, 1036 );
setSeVolume( spep_1 + 34, 1036, 79 );
se_1036 = playSe( spep_1 + 58, 1036 );
setSeVolume( spep_1 + 58, 1036, 79 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 76
------------------------------------------------------
-- 突進　(150F)
------------------------------------------------------
-- ** エフェクト等 ** --
tosshin = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ためナビ(ef_002)

setEffMoveKey( spep_2 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshin, 0 );
setEffRotateKey( spep_2 + 146, tosshin, 0 );
setEffAlphaKey( spep_2 + 0, tosshin, 255 );
setEffAlphaKey( spep_2 + 146, tosshin, 255 );

spep_x = spep_2 + 20;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 146, 0, 0, 0,  0, 200 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 -3 + 70, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 64 );--white fade
entryFade( spep_2 -3 + 137, 12, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

-- ** 音 ** --
se_1183 = playSe( spep_2 + 6, 1183 );
playSe( spep_2 + 6, 09 );
stopSe( spep_2 + 6, se_1132, 0 );
stopSe( spep_2 + 6, se_1037, 0 );
stopSe( spep_2 + 6, se_1036, 0 );
setSeVolume( spep_2 + 6, 1183, 158 );
setSeVolume( spep_2 + 6, 09, 89 );
playSe( spep_2 + 14, 1182 );
setSeVolume( spep_2 + 14, 1182, 141 );
--playSe( spep_2 + 60, 1018 );
se_1037 = playSe( spep_2 + 81, 1037 );
setSeVolume( spep_2 + 81, 1037, 71 );
playSe( spep_2 + 83, 1036 );
setSeVolume( spep_2 + 83, 1036, 79 );
playSe( spep_2 + 107, 1036 );
setSeVolume( spep_2 + 107, 1036, 79 );
playSe( spep_2 + 131, 1036 );
setSeVolume( spep_2 + 131, 1036, 79 );

playSe( spep_x + 16, 1018 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
stopSe( spep_3 + 8, se_1183, 0 );
stopSe( spep_3 + 9, se_1037, 0 );
playSe( spep_3 + 11, 1035 );
se_1132 = playSe( spep_3 + 22, 1132 );
setSeVolume( spep_3 + 22, 1132, 0 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

--------------------------------------
--放つ
--------------------------------------
-- ** エフェクト等 ** --
hanatsu = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ためナビ(ef_002)

setEffMoveKey( spep_4 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hanatsu, 0 );
setEffRotateKey( spep_4 + 116, hanatsu, 0 );
setEffAlphaKey( spep_4 + 0, hanatsu, 255 );
setEffAlphaKey( spep_4 + 116, hanatsu, 255 );

shuchusen3 = entryEffectLife( spep_4 -3 + 3, 906, 60 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 -3 + 3, shuchusen3, 60 -3, 20);

setEffMoveKey( spep_4 -3 + 3, shuchusen3, 0, 0, 0 );
setEffMoveKey( spep_4 -3 + 60, shuchusen3, 0, 0, 0 );

setEffScaleKey( spep_4 -3 + 3, shuchusen3, 1.8, 1.8 );
setEffScaleKey( spep_4 -3 + 60, shuchusen3, 1.8, 1.8 );

setEffRotateKey( spep_4 -3 + 3, shuchusen3, 0 );
setEffRotateKey( spep_4 -3 +60, shuchusen3, 0 );

setEffAlphaKey( spep_4 -3 + 3, shuchusen3, 255 );
setEffAlphaKey( spep_4 -3 + 50, shuchusen3, 255 );
setEffAlphaKey( spep_4 -3 + 52, shuchusen3, 204 );
setEffAlphaKey( spep_4 -3 + 54, shuchusen3, 153 );
setEffAlphaKey( spep_4 -3 + 56, shuchusen3, 102 );
setEffAlphaKey( spep_4 -3 + 58, shuchusen3, 51 );
setEffAlphaKey( spep_4 -3 + 60, shuchusen3, 0 );

-- ** 書き文字 ** --
ctzuo = entryEffectLife( spep_4 -3 + 60, 10012, 55, 0x100, -1, 0, 18.1, 240.7 );
setEffMoveKey( spep_4 -3 + 60, ctzuo, 18.1, 240.7 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctzuo, 32.4, 269.3 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctzuo, 35.9, 315.4 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctzuo, 61.5, 340.8 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctzuo, 44.2, 355.3 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctzuo, 61.7, 340.8 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctzuo, 44.2, 355.4 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctzuo, 61.9, 340.7 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctzuo, 44.3, 355.4 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctzuo, 62, 340.7 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctzuo, 44.5, 355.3 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctzuo, 62.3, 340.5 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctzuo, 44.5, 355.4 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctzuo, 62.4, 340.5 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctzuo, 44.7, 355.3 , 0 );
setEffMoveKey( spep_4 -3 + 90, ctzuo, 62.5, 340.4 , 0 );
setEffMoveKey( spep_4 -3 + 92, ctzuo, 44.7, 355.4 , 0 );
setEffMoveKey( spep_4 -3 + 94, ctzuo, 62.8, 340.3 , 0 );
setEffMoveKey( spep_4 -3 + 96, ctzuo, 45, 355.3 , 0 );
setEffMoveKey( spep_4 -3 + 98, ctzuo, 62.9, 340.2 , 0 );
setEffMoveKey( spep_4 -3 + 100, ctzuo, 45.1, 355.4 , 0 );
setEffMoveKey( spep_4 -3 + 102, ctzuo, 63.2, 340.1 , 0 );
setEffMoveKey( spep_4 -3 + 104, ctzuo, 45.1, 355.5 , 0 );
setEffMoveKey( spep_4 -3 + 106, ctzuo, 63.2, 339.9 , 0 );
setEffMoveKey( spep_4 -3 + 108, ctzuo, 45.3, 355.4 , 0 );
setEffMoveKey( spep_4 -3 + 110, ctzuo, 63.4, 339.9 , 0 );
setEffMoveKey( spep_4 -3 + 112, ctzuo, 45.4, 355.4 , 0 );
setEffMoveKey( spep_4 -3 + 114, ctzuo, 63.6, 339.8 , 0 );
setEffMoveKey( spep_4 -3 + 115, ctzuo, 45.5, 355.4 , 0 );

setEffScaleKey( spep_4 -3 + 60, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4 -3 + 62, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_4 -3 + 64, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_4 -3 + 66, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 -3 + 70, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 -3 + 72, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_4 -3 + 80, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_4 -3 + 82, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4 -3 + 90, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4 -3 + 92, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_4 -3 + 100, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_4 -3 + 102, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4 -3 + 112, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4 -3 + 114, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4 -3 + 115, ctzuo, 2.9, 2.9 );

setEffRotateKey( spep_4 -3 + 60, ctzuo, 45.7 );
setEffRotateKey( spep_4 -3 + 62, ctzuo, 37.9 );
setEffRotateKey( spep_4 -3 + 64, ctzuo, 29.9 );
setEffRotateKey( spep_4 -3 + 66, ctzuo, 21.9 );
setEffRotateKey( spep_4 -3 + 68, ctzuo, 22 );
setEffRotateKey( spep_4 -3 + 72, ctzuo, 22 );
setEffRotateKey( spep_4 -3 + 74, ctzuo, 22.1 );
setEffRotateKey( spep_4 -3 + 76, ctzuo, 22.1 );
setEffRotateKey( spep_4 -3 + 78, ctzuo, 22.2 );
setEffRotateKey( spep_4 -3 + 82, ctzuo, 22.2 );
setEffRotateKey( spep_4 -3 + 84, ctzuo, 22.3 );
setEffRotateKey( spep_4 -3 + 88, ctzuo, 22.3 );
setEffRotateKey( spep_4 -3 + 90, ctzuo, 22.4 );
setEffRotateKey( spep_4 -3 + 94, ctzuo, 22.4 );
setEffRotateKey( spep_4 -3 + 96, ctzuo, 22.5 );
setEffRotateKey( spep_4 -3 + 98, ctzuo, 22.5 );
setEffRotateKey( spep_4 -3 + 100, ctzuo, 22.6 );
setEffRotateKey( spep_4 -3 + 104, ctzuo, 22.6 );
setEffRotateKey( spep_4 -3 + 106, ctzuo, 22.7 );
setEffRotateKey( spep_4 -3 + 110, ctzuo, 22.7 );
setEffRotateKey( spep_4 -3 + 112, ctzuo, 22.8 );
setEffRotateKey( spep_4 -3 + 114, ctzuo, 22.8 );
setEffRotateKey( spep_4 -3 + 115, ctzuo, 22.9 );

setEffAlphaKey( spep_4 -3 + 60, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 115, ctzuo, 255 );

-- ** 音 ** --
setSeVolume( spep_4 + 1, 1132, 25 );
setSeVolume( spep_4 + 2, 1132, 50 );
se_1037 = playSe( spep_4 + 2, 1037 );
playSe( spep_4 + 2, 1036 );
setSeVolume( spep_4 + 2, 1037, 79 );
setSeVolume( spep_4 + 2, 1036, 79 );
playSe( spep_4 + 26, 1036 );
setSeVolume( spep_4 + 26, 1036, 79 );
setSeVolume( spep_4 + 39, 1132, 50 );
setSeVolume( spep_4 + 40, 1132, 54.26 );
setSeVolume( spep_4 + 41, 1132, 58.52 );
setSeVolume( spep_4 + 42, 1132, 62.78 );
setSeVolume( spep_4 + 43, 1132, 67.04 );
setSeVolume( spep_4 + 44, 1132, 71.3 );
setSeVolume( spep_4 + 45, 1132, 75.56 );
setSeVolume( spep_4 + 46, 1132, 79.82 );
setSeVolume( spep_4 + 47, 1132, 84.08 );
setSeVolume( spep_4 + 48, 1132, 88.34 );
setSeVolume( spep_4 + 49, 1132, 92.6 );
se_1036 = playSe( spep_4 + 50, 1036 );
setSeVolume( spep_4 + 50, 1036, 79 );
setSeVolume( spep_4 + 50, 1132, 96.86 );
setSeVolume( spep_4 + 51, 1132, 101.12 );
setSeVolume( spep_4 + 52, 1132, 105.38 );
setSeVolume( spep_4 + 53, 1132, 109.64 );
setSeVolume( spep_4 + 54, 1132, 113.9 );
setSeVolume( spep_4 + 55, 1132, 118.16 );
setSeVolume( spep_4 + 56, 1132, 122.42 );
setSeVolume( spep_4 + 57, 1132, 126.68 );
setSeVolume( spep_4 + 58, 1132, 130.94 );
setSeVolume( spep_4 + 59, 1132, 135.2 );
setSeVolume( spep_4 + 60, 1132, 139.46 );
setSeVolume( spep_4 + 61, 1132, 143.72 );
setSeVolume( spep_4 + 62, 1132, 147.98 );
se_1022 = playSe( spep_4 + 63, 1022 );
setSeVolume( spep_4 + 63, 1022, 158 );
setSeVolume( spep_4 + 63, 1132, 152.24 );
setSeVolume( spep_4 + 64, 1132, 156.5 );
setSeVolume( spep_4 + 65, 1132, 160.76 );
setSeVolume( spep_4 + 66, 1132, 165.02 );
setSeVolume( spep_4 + 67, 1132, 169.28 );
setSeVolume( spep_4 + 68, 1132, 173.54 );
setSeVolume( spep_4 + 69, 1132, 178 );
stopSe( spep_4 + 69, se_1132, 0 );
stopSe( spep_4 + 69, se_1037, 0 );
stopSe( spep_4 + 69, se_1036, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 116, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 -3 + 60, 0, 0, 12, fcolor_r, fcolor_g, fcolor_b, 102 );  --white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, se_1022, 0 );
stopSe( SP_dodge - 12, SE0, 0 );

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

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;

------------------------------------------------------
-- 迫る
------------------------------------------------------
-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --迫る(ef_003)

setEffMoveKey( spep_5 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_f, 0 );
setEffRotateKey( spep_5 + 76, semaru_f, 0 );
setEffAlphaKey( spep_5 + 0, semaru_f, 255 );
setEffAlphaKey( spep_5 + 76, semaru_f, 255 );


-- ** 敵の動き ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 36, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );

setMoveKey( spep_5 + 0, 1, -357.5, 352.8 , 0 );
setMoveKey( spep_5 + 2, 1, -321.1, 318.1 , 0 );
setMoveKey( spep_5 + 4, 1, -284.6, 283.4 , 0 );
setMoveKey( spep_5 + 6, 1, -248.1, 248.7 , 0 );
setMoveKey( spep_5 + 8, 1, -211.6, 214 , 0 );
setMoveKey( spep_5 + 10, 1, -175.1, 179.3 , 0 );
setMoveKey( spep_5 + 12, 1, -138.6, 144.6 , 0 );
setMoveKey( spep_5 + 14, 1, -102.1, 109.9 , 0 );
setMoveKey( spep_5 + 16, 1, -93.2, 101.4 , 0 );
setMoveKey( spep_5 + 18, 1, -84.3, 92.9 , 0 );
setMoveKey( spep_5 + 20, 1, -66.2, 74.4 , 0 );
setMoveKey( spep_5 + 22, 1, -48.4, 56.3 , 0 );
setMoveKey( spep_5 + 24, 1, -28.8, 36.5 , 0 );
setMoveKey( spep_5 + 26, 1, -11.7, 18.9 , 0 );
setMoveKey( spep_5 + 28, 1, 1.8, -4.7 , 0 );
setMoveKey( spep_5 + 30, 1, 21.4, -15.2 , 0 );
setMoveKey( spep_5 + 32, 1, 31, -34.9 , 0 );
setMoveKey( spep_5 + 34, 1, 53.1, -47.9 , 0 );
setMoveKey( spep_5 + 36, 1, 65.2, -70.2 , 0 );

setScaleKey( spep_5 + 0, 1, 2.57, 2.57 );
setScaleKey( spep_5 + 2, 1, 2.49, 2.49 );
setScaleKey( spep_5 + 4, 1, 2.42, 2.42 );
setScaleKey( spep_5 + 6, 1, 2.35, 2.35 );
setScaleKey( spep_5 + 8, 1, 2.27, 2.27 );
setScaleKey( spep_5 + 10, 1, 2.2, 2.2 );
setScaleKey( spep_5 + 12, 1, 2.12, 2.12 );
setScaleKey( spep_5 + 14, 1, 2.05, 2.05 );
setScaleKey( spep_5 + 16, 1, 2.03, 2.03 );
setScaleKey( spep_5 + 18, 1, 2.01, 2.01 );
setScaleKey( spep_5 + 20, 1, 1.95, 1.95 );
setScaleKey( spep_5 + 22, 1, 1.89, 1.89 );
setScaleKey( spep_5 + 24, 1, 1.86, 1.86 );
setScaleKey( spep_5 + 26, 1, 1.8, 1.8 );
setScaleKey( spep_5 + 28, 1, 1.74, 1.74 );
setScaleKey( spep_5 + 30, 1, 1.69, 1.69 );
setScaleKey( spep_5 + 32, 1, 1.63, 1.63 );
setScaleKey( spep_5 + 34, 1, 1.58, 1.58 );
setScaleKey( spep_5 + 36, 1, 1.53, 1.53 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 36, 1, 0 );

semaru_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --迫る(ef_003)

setEffMoveKey( spep_5 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_b, 0 );
setEffRotateKey( spep_5 + 76, semaru_b, 0 );
setEffAlphaKey( spep_5 + 0, semaru_b, 255 );
setEffAlphaKey( spep_5 + 76, semaru_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 76, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
playSe( spep_5 + 31, 1021 );

-- ** 白フェード ** --
entryFade( spep_5 -3 + 3, 0, 0, 12, fcolor_r, fcolor_g, fcolor_b, 102 );  --white fade
entryFade( spep_5 -3 + 68, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 165 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 76;


------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_6 + 0, 3103, 0x100, -1, 0, 0, 0 );  --爆発

setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 160, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bakuhatsu, 1.1, 1.1 );
setEffScaleKey( spep_6 + 160, bakuhatsu, 1.1, 1.1 );
setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 160, bakuhatsu, 0 );
setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 160, bakuhatsu, 255 );

-- ** 音 ** --
playSe( spep_6 + 28, 1024 );
playSe( spep_6 + 30, 1159 );
setSeVolume( spep_6 + 30, 1159 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 +22 );
endPhase( spep_6 + 150  );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ため
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --ため(ef_001)

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 76, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 76, tame, 255 );


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 18, 906, 61, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 18, shuchusen1, 61, 20);

setEffMoveKey( spep_0 -3 + 18, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 18, shuchusen1, 1.8, 1.8 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1.8, 1.8 );

setEffRotateKey( spep_0 -3 + 18, shuchusen1, 0 );
setEffRotateKey( spep_0 + 76, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_0 -3 + 18, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 191 );--white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 -3 + 18, 20, 42, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 19, 1035 );
playSe( spep_0 + 19, 1181 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 76
------------------------------------------------------
-- ためナビ(80F)
------------------------------------------------------
-- ** エフェクト等 ** --
--[[tame2 = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ためナビ(ef_002)

setEffMoveKey( spep_1 + 0, tame2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, tame2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, tame2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame2, 0 );
setEffRotateKey( spep_1 + 76, tame2, 0 );
setEffAlphaKey( spep_1 + 0, tame2, 255 );
setEffAlphaKey( spep_1 + 76, tame2, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 75, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 + 0, shuchusen2, 75, 20);

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 75, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 75, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 75, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 75, shuchusen2, 255 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 76, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
se_1132 = playSe( spep_1 + 10, 1132 );
se_1037 = playSe( spep_1 + 10, 1037 );
playSe( spep_1 + 10, 1036 );
setSeVolume( spep_1 + 10, 1132, 25 );
setSeVolume( spep_1 + 10, 1037, 71 );
setSeVolume( spep_1 + 10, 1036, 79 );
playSe( spep_1 + 34, 1036 );
setSeVolume( spep_1 + 34, 1036, 79 );
se_1036 = playSe( spep_1 + 58, 1036 );
setSeVolume( spep_1 + 58, 1036, 79 );]]

-- ** 次の準備 ** --
spep_2 = spep_1 + 0
------------------------------------------------------
-- 突進　(150F)
------------------------------------------------------
-- ** エフェクト等 ** --
tosshin = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --ためナビ(ef_002)

setEffMoveKey( spep_2 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshin, 0 );
setEffRotateKey( spep_2 + 146, tosshin, 0 );
setEffAlphaKey( spep_2 + 0, tosshin, 255 );
setEffAlphaKey( spep_2 + 146, tosshin, 255 );

-- ** カットイン ** --
--speff = entryEffect( spep_2 + 20, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 20, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 46, 190006, 68, 0x100, -1, 0, 0, 515.5 ); --ゴゴゴ
setEffShake( spep_2 + 46, ctgogo, 68, 10 );

setEffMoveKey( spep_2 + 46, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_2 + 114, ctgogo, 0, 515.5 , 0 );

setEffScaleKey( spep_2 + 46, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 106, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 108, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_2 + 110, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_2 + 112, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_2 + 114, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_2 + 46, ctgogo, 0 );
setEffRotateKey( spep_2 + 114, ctgogo, 0 );

setEffAlphaKey( spep_2 + 46, ctgogo, 255 );
setEffAlphaKey( spep_2 + 114, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 146, 0, 0, 0,  0, 200 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 -3 + 70, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 64 );--white fade
entryFade( spep_2 -3 + 137, 12, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

-- ** 音 ** --
se_1183 = playSe( spep_2 + 6, 1183 );
playSe( spep_2 + 6, 09 );
stopSe( spep_2 + 6, se_1132, 0 );
stopSe( spep_2 + 6, se_1037, 0 );
stopSe( spep_2 + 6, se_1036, 0 );
--setSeVolume( spep_2 + 6, 1183, 158 );
setSeVolume( spep_2 + 6, 09, 89 );
playSe( spep_2 + 14, 1182 );
setSeVolume( spep_2 + 14, 1182, 141 );
playSe( spep_2 + 60, 1018 );
se_1037 = playSe( spep_2 + 81, 1037 );
setSeVolume( spep_2 + 81, 1037, 71 );
playSe( spep_2 + 83, 1036 );
setSeVolume( spep_2 + 83, 1036, 79 );
playSe( spep_2 + 107, 1036 );
setSeVolume( spep_2 + 107, 1036, 79 );
playSe( spep_2 + 131, 1036 );
setSeVolume( spep_2 + 131, 1036, 79 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
stopSe( spep_3 + 8, se_1183, 0 );
stopSe( spep_3 + 9, se_1037, 0 );
playSe( spep_3 + 11, 1035 );
se_1132 = playSe( spep_3 + 22, 1132 );
setSeVolume( spep_3 + 22, 1132, 0 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

--------------------------------------
--放つ
--------------------------------------
-- ** エフェクト等 ** --
hanatsu = entryEffect( spep_4 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --ためナビ(ef_002)

setEffMoveKey( spep_4 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hanatsu, 0 );
setEffRotateKey( spep_4 + 86, hanatsu, 0 );
setEffAlphaKey( spep_4 + 0, hanatsu, 255 );
setEffAlphaKey( spep_4 + 86, hanatsu, 255 );

shuchusen3 = entryEffectLife( spep_4 -3 + 3, 906, 60 -3 -30, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 -3 + 3, shuchusen3, 60 -3 -30, 20);

setEffMoveKey( spep_4 -3 + 3, shuchusen3, 0, 0, 0 );
setEffMoveKey( spep_4 -3 -30 + 60, shuchusen3, 0, 0, 0 );

setEffScaleKey( spep_4 -3 + 3, shuchusen3, 1.8, 1.8 );
setEffScaleKey( spep_4 -3 -30 + 60, shuchusen3, 1.8, 1.8 );

setEffRotateKey( spep_4 -3 + 3, shuchusen3, 0 );
setEffRotateKey( spep_4 -3 -30 +60, shuchusen3, 0 );

setEffAlphaKey( spep_4 -3 + 3, shuchusen3, 255 );
setEffAlphaKey( spep_4 -3 -30 + 50, shuchusen3, 255 );
setEffAlphaKey( spep_4 -3 -30 + 52, shuchusen3, 204 );
setEffAlphaKey( spep_4 -3 -30 + 54, shuchusen3, 153 );
setEffAlphaKey( spep_4 -3 -30 + 56, shuchusen3, 102 );
setEffAlphaKey( spep_4 -3 -30 + 58, shuchusen3, 51 );
setEffAlphaKey( spep_4 -3 -30 + 60, shuchusen3, 0 );

-- ** 書き文字 ** --
ctzuo = entryEffectLife( spep_4 -3 -30 + 60, 10012, 55, 0x100, -1, 0, 18.1, 240.7 );
setEffMoveKey( spep_4 -3 -30 + 60, ctzuo, 18.1, 240.7 , 0 );
setEffMoveKey( spep_4 -3 -30 + 62, ctzuo, 32.4, 269.3 , 0 );
setEffMoveKey( spep_4 -3 -30 + 64, ctzuo, 35.9, 315.4 , 0 );
setEffMoveKey( spep_4 -3 -30 + 66, ctzuo, 61.5, 340.8 , 0 );
setEffMoveKey( spep_4 -3 -30 + 68, ctzuo, 44.2, 355.3 , 0 );
setEffMoveKey( spep_4 -3 -30 + 70, ctzuo, 61.7, 340.8 , 0 );
setEffMoveKey( spep_4 -3 -30 + 72, ctzuo, 44.2, 355.4 , 0 );
setEffMoveKey( spep_4 -3 -30 + 74, ctzuo, 61.9, 340.7 , 0 );
setEffMoveKey( spep_4 -3 -30 + 76, ctzuo, 44.3, 355.4 , 0 );
setEffMoveKey( spep_4 -3 -30 + 78, ctzuo, 62, 340.7 , 0 );
setEffMoveKey( spep_4 -3 -30 + 80, ctzuo, 44.5, 355.3 , 0 );
setEffMoveKey( spep_4 -3 -30 + 82, ctzuo, 62.3, 340.5 , 0 );
setEffMoveKey( spep_4 -3 -30 + 84, ctzuo, 44.5, 355.4 , 0 );
setEffMoveKey( spep_4 -3 -30 + 86, ctzuo, 62.4, 340.5 , 0 );
setEffMoveKey( spep_4 -3 -30 + 88, ctzuo, 44.7, 355.3 , 0 );
setEffMoveKey( spep_4 -3 -30 + 90, ctzuo, 62.5, 340.4 , 0 );
setEffMoveKey( spep_4 -3 -30 + 92, ctzuo, 44.7, 355.4 , 0 );
setEffMoveKey( spep_4 -3 -30 + 94, ctzuo, 62.8, 340.3 , 0 );
setEffMoveKey( spep_4 -3 -30 + 96, ctzuo, 45, 355.3 , 0 );
setEffMoveKey( spep_4 -3 -30 + 98, ctzuo, 62.9, 340.2 , 0 );
setEffMoveKey( spep_4 -3 -30 + 100, ctzuo, 45.1, 355.4 , 0 );
setEffMoveKey( spep_4 -3 -30 + 102, ctzuo, 63.2, 340.1 , 0 );
setEffMoveKey( spep_4 -3 -30 + 104, ctzuo, 45.1, 355.5 , 0 );
setEffMoveKey( spep_4 -3 -30 + 106, ctzuo, 63.2, 339.9 , 0 );
setEffMoveKey( spep_4 -3 -30 + 108, ctzuo, 45.3, 355.4 , 0 );
setEffMoveKey( spep_4 -3 -30 + 110, ctzuo, 63.4, 339.9 , 0 );
setEffMoveKey( spep_4 -3 -30 + 112, ctzuo, 45.4, 355.4 , 0 );
setEffMoveKey( spep_4 -3 -30 + 114, ctzuo, 63.6, 339.8 , 0 );
setEffMoveKey( spep_4 -3 -30 + 115, ctzuo, 45.5, 355.4 , 0 );

setEffScaleKey( spep_4 -3 -30 + 60, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4 -3 -30 + 62, ctzuo, 1.13, 1.13 );
setEffScaleKey( spep_4 -3 -30 + 64, ctzuo, 1.94, 1.94 );
setEffScaleKey( spep_4 -3 -30 + 66, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 -3 -30 + 70, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 -3 -30 + 72, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_4 -3 -30 + 80, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_4 -3 -30 + 82, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4 -3 -30 + 90, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4 -3 -30 + 92, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_4 -3 -30 + 100, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_4 -3 -30 + 102, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4 -3 -30 + 112, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4 -3 -30 + 114, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4 -3 -30 + 115, ctzuo, 2.9, 2.9 );

setEffRotateKey( spep_4 -3 -30 + 60, ctzuo, 45.7 );
setEffRotateKey( spep_4 -3 -30 + 62, ctzuo, 37.9 );
setEffRotateKey( spep_4 -3 -30 + 64, ctzuo, 29.9 );
setEffRotateKey( spep_4 -3 -30 + 66, ctzuo, 21.9 );
setEffRotateKey( spep_4 -3 -30 + 68, ctzuo, 22 );
setEffRotateKey( spep_4 -3 -30 + 72, ctzuo, 22 );
setEffRotateKey( spep_4 -3 -30 + 74, ctzuo, 22.1 );
setEffRotateKey( spep_4 -3 -30 + 76, ctzuo, 22.1 );
setEffRotateKey( spep_4 -3 -30 + 78, ctzuo, 22.2 );
setEffRotateKey( spep_4 -3 -30 + 82, ctzuo, 22.2 );
setEffRotateKey( spep_4 -3 -30 + 84, ctzuo, 22.3 );
setEffRotateKey( spep_4 -3 -30 + 88, ctzuo, 22.3 );
setEffRotateKey( spep_4 -3 -30 + 90, ctzuo, 22.4 );
setEffRotateKey( spep_4 -3 -30 + 94, ctzuo, 22.4 );
setEffRotateKey( spep_4 -3 -30 + 96, ctzuo, 22.5 );
setEffRotateKey( spep_4 -3 -30 + 98, ctzuo, 22.5 );
setEffRotateKey( spep_4 -3 -30 + 100, ctzuo, 22.6 );
setEffRotateKey( spep_4 -3 -30 + 104, ctzuo, 22.6 );
setEffRotateKey( spep_4 -3 -30 + 106, ctzuo, 22.7 );
setEffRotateKey( spep_4 -3 -30 + 110, ctzuo, 22.7 );
setEffRotateKey( spep_4 -3 -30 + 112, ctzuo, 22.8 );
setEffRotateKey( spep_4 -3 -30 + 114, ctzuo, 22.8 );
setEffRotateKey( spep_4 -3 -30 + 115, ctzuo, 22.9 );

setEffAlphaKey( spep_4 -3 -30 + 60, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 -30 + 115, ctzuo, 255 );

-- ** 音 ** --
setSeVolume( spep_4 + 1, 1132, 25 );
setSeVolume( spep_4 + 2, 1132, 50 );
se_1037 = playSe( spep_4 + 2, 1037 );
playSe( spep_4 + 2, 1036 );
setSeVolume( spep_4 + 2, 1037, 79 );
setSeVolume( spep_4 + 2, 1036, 79 );
--playSe( spep_4 + 26, 1036 );
--setSeVolume( spep_4 + 26, 1036, 79 );
setSeVolume( spep_4 + 39, 1132, 50 );
setSeVolume( spep_4 + 40, 1132, 54.26 );
setSeVolume( spep_4 + 41, 1132, 58.52 );
setSeVolume( spep_4 + 42, 1132, 62.78 );
setSeVolume( spep_4 + 43, 1132, 67.04 );
setSeVolume( spep_4 + 44, 1132, 71.3 );
setSeVolume( spep_4 + 45, 1132, 75.56 );
setSeVolume( spep_4 + 46, 1132, 79.82 );
setSeVolume( spep_4 + 47, 1132, 84.08 );
setSeVolume( spep_4 + 48, 1132, 88.34 );
setSeVolume( spep_4 + 49, 1132, 92.6 );
se_1036 = playSe( spep_4 -30 + 50, 1036 );
setSeVolume( spep_4 -30 + 50, 1036, 79 );
setSeVolume( spep_4 + 50, 1132, 96.86 );
setSeVolume( spep_4 + 51, 1132, 101.12 );
setSeVolume( spep_4 + 52, 1132, 105.38 );
setSeVolume( spep_4 + 53, 1132, 109.64 );
setSeVolume( spep_4 + 54, 1132, 113.9 );
setSeVolume( spep_4 + 55, 1132, 118.16 );
setSeVolume( spep_4 + 56, 1132, 122.42 );
setSeVolume( spep_4 + 57, 1132, 126.68 );
setSeVolume( spep_4 + 58, 1132, 130.94 );
setSeVolume( spep_4 + 59, 1132, 135.2 );
setSeVolume( spep_4 + 60, 1132, 139.46 );
setSeVolume( spep_4 + 61, 1132, 143.72 );
setSeVolume( spep_4 + 62, 1132, 147.98 );
se_1022 = playSe( spep_4 -30 + 63, 1022 );
setSeVolume( spep_4 -30 + 63, 1022, 158 );
setSeVolume( spep_4 + 63, 1132, 152.24 );
setSeVolume( spep_4 + 64, 1132, 156.5 );
setSeVolume( spep_4 + 65, 1132, 160.76 );
setSeVolume( spep_4 + 66, 1132, 165.02 );
setSeVolume( spep_4 + 67, 1132, 169.28 );
setSeVolume( spep_4 + 68, 1132, 173.54 );
setSeVolume( spep_4 + 69, 1132, 178 );
stopSe( spep_4 -30 + 69, se_1132, 0 );
stopSe( spep_4 -30 + 69, se_1037, 0 );
stopSe( spep_4 -30 + 69, se_1036, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 -30 -3 + 60, 0, 0, 12, fcolor_r, fcolor_g, fcolor_b, 102 );  --white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, se_1022, 0 );
stopSe( SP_dodge - 12, SE0, 0 );

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

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

------------------------------------------------------
-- 迫る
------------------------------------------------------
-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --迫る(ef_003)

setEffMoveKey( spep_5 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_f, 0 );
setEffRotateKey( spep_5 + 76, semaru_f, 0 );
setEffAlphaKey( spep_5 + 0, semaru_f, 255 );
setEffAlphaKey( spep_5 + 76, semaru_f, 255 );


-- ** 敵の動き ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 36, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );

setMoveKey( spep_5 + 0, 1, -357.5, 352.8 , 0 );
setMoveKey( spep_5 + 2, 1, -321.1, 318.1 , 0 );
setMoveKey( spep_5 + 4, 1, -284.6, 283.4 , 0 );
setMoveKey( spep_5 + 6, 1, -248.1, 248.7 , 0 );
setMoveKey( spep_5 + 8, 1, -211.6, 214 , 0 );
setMoveKey( spep_5 + 10, 1, -175.1, 179.3 , 0 );
setMoveKey( spep_5 + 12, 1, -138.6, 144.6 , 0 );
setMoveKey( spep_5 + 14, 1, -102.1, 109.9 , 0 );
setMoveKey( spep_5 + 16, 1, -93.2, 101.4 , 0 );
setMoveKey( spep_5 + 18, 1, -84.3, 92.9 , 0 );
setMoveKey( spep_5 + 20, 1, -66.2, 74.4 , 0 );
setMoveKey( spep_5 + 22, 1, -48.4, 56.3 , 0 );
setMoveKey( spep_5 + 24, 1, -28.8, 36.5 , 0 );
setMoveKey( spep_5 + 26, 1, -11.7, 18.9 , 0 );
setMoveKey( spep_5 + 28, 1, 1.8, -4.7 , 0 );
setMoveKey( spep_5 + 30, 1, 21.4, -15.2 , 0 );
setMoveKey( spep_5 + 32, 1, 31, -34.9 , 0 );
setMoveKey( spep_5 + 34, 1, 53.1, -47.9 , 0 );
setMoveKey( spep_5 + 36, 1, 65.2, -70.2 , 0 );

setScaleKey( spep_5 + 0, 1, 2.57, 2.57 );
setScaleKey( spep_5 + 2, 1, 2.49, 2.49 );
setScaleKey( spep_5 + 4, 1, 2.42, 2.42 );
setScaleKey( spep_5 + 6, 1, 2.35, 2.35 );
setScaleKey( spep_5 + 8, 1, 2.27, 2.27 );
setScaleKey( spep_5 + 10, 1, 2.2, 2.2 );
setScaleKey( spep_5 + 12, 1, 2.12, 2.12 );
setScaleKey( spep_5 + 14, 1, 2.05, 2.05 );
setScaleKey( spep_5 + 16, 1, 2.03, 2.03 );
setScaleKey( spep_5 + 18, 1, 2.01, 2.01 );
setScaleKey( spep_5 + 20, 1, 1.95, 1.95 );
setScaleKey( spep_5 + 22, 1, 1.89, 1.89 );
setScaleKey( spep_5 + 24, 1, 1.86, 1.86 );
setScaleKey( spep_5 + 26, 1, 1.8, 1.8 );
setScaleKey( spep_5 + 28, 1, 1.74, 1.74 );
setScaleKey( spep_5 + 30, 1, 1.69, 1.69 );
setScaleKey( spep_5 + 32, 1, 1.63, 1.63 );
setScaleKey( spep_5 + 34, 1, 1.58, 1.58 );
setScaleKey( spep_5 + 36, 1, 1.53, 1.53 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 36, 1, 0 );

semaru_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --迫る(ef_003)

setEffMoveKey( spep_5 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_b, 0 );
setEffRotateKey( spep_5 + 76, semaru_b, 0 );
setEffAlphaKey( spep_5 + 0, semaru_b, 255 );
setEffAlphaKey( spep_5 + 76, semaru_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 76, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
playSe( spep_5 + 31, 1021 );

-- ** 白フェード ** --
entryFade( spep_5 -3 + 3, 0, 0, 12, fcolor_r, fcolor_g, fcolor_b, 102 );  --white fade
entryFade( spep_5 -3 + 68, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 165 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 76;


------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_6 + 0, 3103, 0x100, -1, 0, 0, 0 );  --爆発

setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 160, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bakuhatsu, 1.1, 1.1 );
setEffScaleKey( spep_6 + 160, bakuhatsu, 1.1, 1.1 );
setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 160, bakuhatsu, 0 );
setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 160, bakuhatsu, 255 );

-- ** 音 ** --
playSe( spep_6 + 28, 1024 );
playSe( spep_6 + 30, 1159 );
setSeVolume( spep_6 + 30, 1159 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 +22 );
endPhase( spep_6 + 150  );

end
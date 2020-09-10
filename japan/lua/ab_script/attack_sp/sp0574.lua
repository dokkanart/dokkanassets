--孫悟飯(幼年期)_魔閃光

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
SP_01 = 153725; --飛んでいるシーン悟飯
SP_02 = 153726; --飛んでいるシーン背景
SP_03 = 153727; --飛び降りる1
SP_04 = 153728; --飛び降り2_悟飯
SP_05 = 153729; --飛び降り2_背景
SP_06 = 153730; --回転して魔閃光を放つ
SP_07 = 153731; --魔閃光ヒット
SP_08 = 153732; --魔閃光ヒット_背景
SP_09 = 153733; --爆発

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
-- 飛んでるシーン(244F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
fry_f = entryEffectLife( spep_0 + 0, SP_01, 244, 0x100, -1, 0, 0, 0 );  --飛んでいるシーン悟飯(ef_001)
setEffMoveKey( spep_0 + 0, fry_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 244, fry_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, fry_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 244, fry_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fry_f, 0 );
setEffRotateKey( spep_0 + 244, fry_f, 0 );
setEffAlphaKey( spep_0 + 0, fry_f, 255 );
setEffAlphaKey( spep_0 + 244, fry_f, 255 );

fry_b = entryEffectLife( spep_0 + 0, SP_02, 244, 0x80, -1, 0, 0, 0 );  --飛んでいるシーン背景(ef_002)
setEffMoveKey( spep_0 + 0, fry_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 244, fry_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, fry_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 244, fry_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fry_b, 0 );
setEffRotateKey( spep_0 + 244, fry_b, 0 );
setEffAlphaKey( spep_0 + 0, fry_b, 255 );
setEffAlphaKey( spep_0 + 244, fry_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 64, 906, 36, 0x80, -1, 0, -123.7, -81.2 );  --集中線
setEffShake( spep_0 + 64, shuchusen1, 36, 20 );

setEffMoveKey( spep_0 + 64, shuchusen1, -123.7, -81.2 , 0 );
setEffMoveKey( spep_0 + 66, shuchusen1, -128.8, -80.4 , 0 );
setEffMoveKey( spep_0 + 68, shuchusen1, -113.8, -79.6 , 0 );
setEffMoveKey( spep_0 + 70, shuchusen1, -108.9, -78.8 , 0 );
setEffMoveKey( spep_0 + 72, shuchusen1, -80, -77.9 , 0 );
setEffMoveKey( spep_0 + 74, shuchusen1, -60.5, -74.4 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, -30, -70.8 , 0 );
setEffMoveKey( spep_0 + 78, shuchusen1, -10, -67.2 , 0 );
setEffMoveKey( spep_0 + 80, shuchusen1, -4.1, -63.7 , 0 );
setEffMoveKey( spep_0 + 82, shuchusen1, -1.6, -60.1 , 0 );
setEffMoveKey( spep_0 + 84, shuchusen1, 0.1, -56.6 , 0 );
setEffMoveKey( spep_0 + 86, shuchusen1, 0.6, -53 , 0 );
setEffMoveKey( spep_0 + 88, shuchusen1, 3.1, -49.4 , 0 );
setEffMoveKey( spep_0 + 90, shuchusen1, 5.6, -45.9 , 0 );
setEffMoveKey( spep_0 + 92, shuchusen1, 9.1, -42.3 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 9.1, -42.3 , 0 );

setEffScaleKey( spep_0 + 64, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 100, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 64, shuchusen1, 0 );
setEffRotateKey( spep_0 + 100, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 64, shuchusen1, 51 );
setEffAlphaKey( spep_0 + 66, shuchusen1, 102 );
setEffAlphaKey( spep_0 + 68, shuchusen1, 153 );
setEffAlphaKey( spep_0 + 70, shuchusen1, 204 );
setEffAlphaKey( spep_0 + 72, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 92, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 94, shuchusen1, 191 );
setEffAlphaKey( spep_0 + 96, shuchusen1, 128 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 64 );
setEffAlphaKey( spep_0 + 100, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_0 + 224, 906, 20, 0x80, -1, 0, 68.2, 127.8 );  --集中線
setEffShake( spep_0 + 224, shuchusen2, 20, 20 );

setEffMoveKey( spep_0 + 224, shuchusen2, 68.2, 127.8 , 0 );
setEffMoveKey( spep_0 + 244, shuchusen2, 68.2, 127.8 , 0 );

setEffScaleKey( spep_0 + 224, shuchusen2, 1.87, 2.28 );
setEffScaleKey( spep_0 + 244, shuchusen2, 1.87, 2.28 );

setEffRotateKey( spep_0 + 224, shuchusen2, 20 );
setEffRotateKey( spep_0 + 244, shuchusen2, 20 );

setEffAlphaKey( spep_0 + 224, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 244, shuchusen2, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_0 + 98, 914, 126, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_0 + 98, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 224, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 98, ryusen1, 4.3, 1.44 );
setEffScaleKey( spep_0 + 224, ryusen1, 4.3, 1.44 );

setEffRotateKey( spep_0 + 98, ryusen1, -20.2 );
setEffRotateKey( spep_0 + 224, ryusen1, -20.2 );

setEffAlphaKey( spep_0 + 98, ryusen1, 20 );
setEffAlphaKey( spep_0 + 100, ryusen1, 41 );
setEffAlphaKey( spep_0 + 102, ryusen1, 61 );
setEffAlphaKey( spep_0 + 104, ryusen1, 82 );
setEffAlphaKey( spep_0 + 106, ryusen1, 102 );
setEffAlphaKey( spep_0 + 108, ryusen1, 123 );
setEffAlphaKey( spep_0 + 110, ryusen1, 143 );
setEffAlphaKey( spep_0 + 112, ryusen1, 163 );
setEffAlphaKey( spep_0 + 114, ryusen1, 184 );
setEffAlphaKey( spep_0 + 116, ryusen1, 204 );
setEffAlphaKey( spep_0 + 178, ryusen1, 204 );
setEffAlphaKey( spep_0 + 180, ryusen1, 195 );
setEffAlphaKey( spep_0 + 182, ryusen1, 186 );
setEffAlphaKey( spep_0 + 184, ryusen1, 178 );
setEffAlphaKey( spep_0 + 186, ryusen1, 169 );
setEffAlphaKey( spep_0 + 188, ryusen1, 160 );
setEffAlphaKey( spep_0 + 190, ryusen1, 151 );
setEffAlphaKey( spep_0 + 192, ryusen1, 142 );
setEffAlphaKey( spep_0 + 194, ryusen1, 133 );
setEffAlphaKey( spep_0 + 196, ryusen1, 124 );
setEffAlphaKey( spep_0 + 198, ryusen1, 115 );
setEffAlphaKey( spep_0 + 200, ryusen1, 107 );
setEffAlphaKey( spep_0 + 202, ryusen1, 98 );
setEffAlphaKey( spep_0 + 204, ryusen1, 89 );
setEffAlphaKey( spep_0 + 206, ryusen1, 80 );
setEffAlphaKey( spep_0 + 208, ryusen1, 71 );
setEffAlphaKey( spep_0 + 210, ryusen1, 62 );
setEffAlphaKey( spep_0 + 212, ryusen1, 53 );
setEffAlphaKey( spep_0 + 214, ryusen1, 44 );
setEffAlphaKey( spep_0 + 216, ryusen1, 36 );
setEffAlphaKey( spep_0 + 218, ryusen1, 27 );
setEffAlphaKey( spep_0 + 220, ryusen1, 18 );
setEffAlphaKey( spep_0 + 222, ryusen1, 9 );
setEffAlphaKey( spep_0 + 224, ryusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 244, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 234, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 62, 8 );  --手前に飛んでくる
playSe( spep_0 + 100, 9 );  --横に飛ぶ
playSe( spep_0 + 218, 44 );  --奥に飛ぶ

-- ** 次の準備 ** --
spep_1 = spep_0 + 244;

------------------------------------------------------
-- 飛び降りる1(148F)
------------------------------------------------------

-- ** エフェクト等 ** --
down1 = entryEffectLife( spep_1 + 0, SP_03, 148, 0x100, -1, 0, 0, 0 );  --飛び降りる1(ef_003)
setEffMoveKey( spep_1 + 0, down1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 148, down1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, down1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 148, down1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, down1, 0 );
setEffRotateKey( spep_1 + 148, down1, 0 );
setEffAlphaKey( spep_1 + 0, down1, 255 );
setEffAlphaKey( spep_1 + 148, down1, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 + 36, 906, 112, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 36, shuchusen3, 112, 20 );

setEffMoveKey( spep_1 + 36, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 148, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 + 36, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_1 + 148, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_1 + 36, shuchusen3, 0 );
setEffRotateKey( spep_1 + 148, shuchusen3, 0 );

setEffAlphaKey( spep_1 + 36, shuchusen3, 0 );
setEffAlphaKey( spep_1 + 51, shuchusen3, 0 );
setEffAlphaKey( spep_1 + 52, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 124, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 148, shuchusen3, 0 );

spep_x = spep_1 + 36;
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
entryFadeBg( spep_1 + 0, 0, 148, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 140, 6, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 24, 1003 );  --飛び降りる
playSe( spep_x + 16, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_2 = spep_1 + 148;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 飛び降り2(142F)
------------------------------------------------------

-- ** エフェクト等 ** --
down2_f = entryEffectLife( spep_3 + 0, SP_04, 142, 0x100, -1, 0, 0, 0 );  --飛び降り2_悟飯(ef_004)
setEffMoveKey( spep_3 + 0, down2_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 142, down2_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, down2_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 142, down2_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, down2_f, 0 );
setEffRotateKey( spep_3 + 142, down2_f, 0 );
setEffAlphaKey( spep_3 + 0, down2_f, 255 );
setEffAlphaKey( spep_3 + 142, down2_f, 255 );

down2_b = entryEffectLife( spep_3 + 0, SP_05, 142, 0x80, -1, 0, 0, 0 );  --飛び降り2_背景(ef_005)
setEffMoveKey( spep_3 + 0, down2_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 142, down2_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, down2_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 142, down2_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, down2_b, 0 );
setEffRotateKey( spep_3 + 142, down2_b, 0 );
setEffAlphaKey( spep_3 + 0, down2_b, 255 );
setEffAlphaKey( spep_3 + 142, down2_b, 255 );

hanatsu = entryEffectLife( spep_3 + 0, SP_06, 142, 0x100, -1, 0, 0, 0 );  --魔閃光放つ(ef_006)
setEffMoveKey( spep_3 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 142, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_3 + 142, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hanatsu, 0 );
setEffRotateKey( spep_3 + 142, hanatsu, 0 );
setEffAlphaKey( spep_3 + 0, hanatsu, 255 );
setEffAlphaKey( spep_3 + 142, hanatsu, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0, 906, 56, 0x100, -1, 0, 69.5, 65 );  --集中線
setEffShake( spep_3 + 0, shuchusen4, 56, 20 );

setEffMoveKey( spep_3 + 0, shuchusen4, 69.5, 65 , 0 );
setEffMoveKey( spep_3 + 56, shuchusen4, 69.5, 65 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.5, 2.6 );
setEffScaleKey( spep_3 + 56, shuchusen4, 1.5, 2.6 );

setEffRotateKey( spep_3 + 0, shuchusen4, 20 );
setEffRotateKey( spep_3 + 56, shuchusen4, 20 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 54, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 55, shuchusen4, 0 );
setEffAlphaKey( spep_3 + 56, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_3 + 96, 906, 20, 0x100, -1, 0, -234.2, 442.5 );  --集中線
setEffShake( spep_3 + 96, shuchusen5, 20, 20 );

setEffMoveKey( spep_3 + 96, shuchusen5, -234.2, 442.5 , 0 );
setEffMoveKey( spep_3 + 116, shuchusen5, -234.2, 442.5 , 0 );

setEffScaleKey( spep_3 + 96, shuchusen5, 2.5, 2.62 );
setEffScaleKey( spep_3 + 116, shuchusen5, 2.5, 2.62 );

setEffRotateKey( spep_3 + 96, shuchusen5, -14.9 );
setEffRotateKey( spep_3 + 116, shuchusen5, -14.9 );

setEffAlphaKey( spep_3 + 96, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 108, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 110, shuchusen5, 191 );
setEffAlphaKey( spep_3 + 112, shuchusen5, 128 );
setEffAlphaKey( spep_3 + 114, shuchusen5, 64 );
setEffAlphaKey( spep_3 + 116, shuchusen5, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 56, 1, 0 );
changeAnime( spep_3 + 0, 1, 101 );

setMoveKey( spep_3 + 0, 1, 192.7, 247 , 0 );
setMoveKey( spep_3 + 2, 1, 190.8, 243.1 , 0 );
setMoveKey( spep_3 + 4, 1, 192.1, 242.5 , 0 );
setMoveKey( spep_3 + 6, 1, 190.3, 240.3 , 0 );
setMoveKey( spep_3 + 8, 1, 191.6, 238.1 , 0 );
setMoveKey( spep_3 + 10, 1, 191.3, 234.3 , 0 );
setMoveKey( spep_3 + 12, 1, 191, 233.7 , 0 );
setMoveKey( spep_3 + 14, 1, 189.2, 231.5 , 0 );
setMoveKey( spep_3 + 16, 1, 190.5, 229.3 , 0 );
setMoveKey( spep_3 + 18, 1, 190.2, 223.8 , 0 );
setMoveKey( spep_3 + 20, 1, 189.9, 224.8 , 0 );
setMoveKey( spep_3 + 22, 1, 189.7, 221 , 0 );
setMoveKey( spep_3 + 24, 1, 189.4, 220.4 , 0 );
setMoveKey( spep_3 + 26, 1, 185.9, 216.6 , 0 );
setMoveKey( spep_3 + 28, 1, 188.8, 216 , 0 );
setMoveKey( spep_3 + 30, 1, 186.9, 212.2 , 0 );
setMoveKey( spep_3 + 32, 1, 188.3, 211.6 , 0 );
setMoveKey( spep_3 + 34, 1, 186.4, 207.7 , 0 );
setMoveKey( spep_3 + 36, 1, 187.7, 207.1 , 0 );
setMoveKey( spep_3 + 38, 1, 185.8, 204.9 , 0 );
setMoveKey( spep_3 + 40, 1, 187.1, 202.7 , 0 );
setMoveKey( spep_3 + 42, 1, 186.9, 198.9 , 0 );
setMoveKey( spep_3 + 44, 1, 186.6, 198.3 , 0 );
setMoveKey( spep_3 + 46, 1, 184.7, 194.5 , 0 );
setMoveKey( spep_3 + 48, 1, 186, 193.9 , 0 );
setMoveKey( spep_3 + 50, 1, 182.5, 190 , 0 );
setMoveKey( spep_3 + 52, 1, 185.4, 189.4 , 0 );
setMoveKey( spep_3 + 54, 1, 183.6, 184 , 0 );
setMoveKey( spep_3 + 56, 1, 184.9, 185 , 0 );

setScaleKey( spep_3 + 0, 1, 0.23, 0.23 );
setScaleKey( spep_3 + 2, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 4, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 6, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 8, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 10, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 12, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 14, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 16, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 18, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 20, 1, 0.3, 0.3 );
setScaleKey( spep_3 + 22, 1, 0.3, 0.3 );
setScaleKey( spep_3 + 24, 1, 0.31, 0.31 );
setScaleKey( spep_3 + 26, 1, 0.32, 0.32 );
setScaleKey( spep_3 + 28, 1, 0.32, 0.32 );
setScaleKey( spep_3 + 30, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 32, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 34, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 36, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 38, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 40, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 42, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 44, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 46, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 48, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 50, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 52, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 54, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 56, 1, 0.41, 0.41 );

setRotateKey( spep_3 + 0, 1, 23.2 );
setRotateKey( spep_3 + 2, 1, 23.3 );
setRotateKey( spep_3 + 4, 1, 23.4 );
setRotateKey( spep_3 + 6, 1, 23.6 );
setRotateKey( spep_3 + 8, 1, 23.7 );
setRotateKey( spep_3 + 10, 1, 23.8 );
setRotateKey( spep_3 + 12, 1, 23.9 );
setRotateKey( spep_3 + 14, 1, 24 );
setRotateKey( spep_3 + 16, 1, 24.1 );
setRotateKey( spep_3 + 18, 1, 24.3 );
setRotateKey( spep_3 + 20, 1, 24.4 );
setRotateKey( spep_3 + 22, 1, 24.5 );
setRotateKey( spep_3 + 24, 1, 24.6 );
setRotateKey( spep_3 + 26, 1, 24.7 );
setRotateKey( spep_3 + 28, 1, 24.9 );
setRotateKey( spep_3 + 30, 1, 25 );
setRotateKey( spep_3 + 32, 1, 25.1 );
setRotateKey( spep_3 + 34, 1, 25.2 );
setRotateKey( spep_3 + 36, 1, 25.3 );
setRotateKey( spep_3 + 38, 1, 25.4 );
setRotateKey( spep_3 + 40, 1, 25.6 );
setRotateKey( spep_3 + 42, 1, 25.7 );
setRotateKey( spep_3 + 44, 1, 25.8 );
setRotateKey( spep_3 + 46, 1, 25.9 );
setRotateKey( spep_3 + 48, 1, 26 );
setRotateKey( spep_3 + 50, 1, 26.1 );
setRotateKey( spep_3 + 52, 1, 26.3 );
setRotateKey( spep_3 + 54, 1, 26.4 );
setRotateKey( spep_3 + 56, 1, 26.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 142, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 134, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 + 0, 1072 );  --迫る
playSe( spep_3 + 58, 1048 );  --回る
playSe( spep_3 + 73, 1048 );  --回る
playSe( spep_3 + 88, 1048 );  --回る
playSe( spep_3 + 98, 1007 );  --両手上げる
setSeVolume( spep_3 + 98, 1007, 70 );
SE1 = playSe( spep_3 + 112, 1022 );  --放つ

-- ** 次の準備 ** --
spep_4 = spep_3 + 142;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 126; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
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
------------------------------------------------------
-- 魔閃光ヒット(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
hit_b = entryEffectLife( spep_4 + 0, SP_08, 66, 0x80, -1, 0, 0, 0 );  --魔閃光ヒット_背景(ef_008)
setEffMoveKey( spep_4 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 66, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 66, hit_b, 255 );

hit_f1 = entryEffectLife( spep_4 + 0, SP_07, 26 -3, 0x80, -1, 0, 0, 0 );  --魔閃光ヒット(ef_007)
setEffMoveKey( spep_4 + 0, hit_f1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 26 -3, hit_f1, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit_f1, 1.0, 1.0 );
setEffScaleKey( spep_4 + 26 -3, hit_f1, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f1, 0 );
setEffRotateKey( spep_4 + 26 -3, hit_f1, 0 );
setEffAlphaKey( spep_4 + 0, hit_f1, 255 );
setEffAlphaKey( spep_4 + 25 -3, hit_f1, 255 );
setEffAlphaKey( spep_4 + 26 -3, hit_f1, 0 );

hit_f2 = entryEffectLife( spep_4 + 0, SP_07, 66, 0x100, -1, 0, 0, 0 );  --魔閃光ヒット(ef_007)
setEffMoveKey( spep_4 + 0, hit_f2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, hit_f2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit_f2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, hit_f2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f2, 0 );
setEffRotateKey( spep_4 + 66, hit_f2, 0 );
setEffAlphaKey( spep_4 + 0, hit_f2, 0 );
setEffAlphaKey( spep_4 + 25 -3, hit_f2, 0 );
setEffAlphaKey( spep_4 + 26 -3, hit_f2, 255 );
setEffAlphaKey( spep_4 + 66, hit_f2, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_4 + 0, 906, 66, 0x100, -1, 0, -183.9, 480.1 );  --集中線
setEffShake( spep_4 + 0, shuchusen6, 66, 20 );

setEffMoveKey( spep_4 + 0, shuchusen6, -183.9, 480.1 , 0 );
setEffMoveKey( spep_4 + 66, shuchusen6, -183.9, 480.1 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen6, 1.97, 2.13 );
setEffScaleKey( spep_4 + 66, shuchusen6, 1.97, 2.13 );

setEffRotateKey( spep_4 + 0, shuchusen6, -100 );
setEffRotateKey( spep_4 + 66, shuchusen6, -100 );

setEffAlphaKey( spep_4 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_4 + 66, shuchusen6, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 66, 1, 0 );
changeAnime( spep_4 + 0, 1, 102 );
changeAnime( spep_4 + 26 -3, 1, 107 );

setMoveKey( spep_4 + 0, 1, 322.8, -272.6 , 0 );
setMoveKey( spep_4 + 4 -3, 1, 267, -206 , 0 );
setMoveKey( spep_4 + 6 -3, 1, 233.5, -184.2 , 0 );
setMoveKey( spep_4 + 8 -3, 1, 200.4, -159.7 , 0 );
setMoveKey( spep_4 + 10 -3, 1, 177.1, -119 , 0 );
setMoveKey( spep_4 + 12 -3, 1, 144.3, -95.8 , 0 );
setMoveKey( spep_4 + 14 -3, 1, 111.8, -70.4 , 0 );
setMoveKey( spep_4 + 16 -3, 1, 108.7, -50.3 , 0 );
setMoveKey( spep_4 + 18 -3, 1, 97.6, -45 , 0 );
setMoveKey( spep_4 + 20 -3, 1, 86.4, -38.3 , 0 );
setMoveKey( spep_4 + 22 -3, 1, 83.3, -18.4 , 0 );
setMoveKey( spep_4 + 24 -3, 1, 72.2, -13 , 0 );
setMoveKey( spep_4 + 25 -3, 1, 72.2, -13 , 0 );
setMoveKey( spep_4 + 26 -3, 1, 31.3, -81.2 , 0 );
setMoveKey( spep_4 + 28 -3, 1, 38.6, -93.4 , 0 );
setMoveKey( spep_4 + 30 -3, 1, 43.2, -82.8 , 0 );
setMoveKey( spep_4 + 32 -3, 1, 36.2, -96.7 , 0 );
setMoveKey( spep_4 + 34 -3, 1, 44.7, -109.6 , 0 );
setMoveKey( spep_4 + 36 -3, 1, 50.2, -96.8 , 0 );
setMoveKey( spep_4 + 38 -3, 1, 42.5, -111.7 , 0 );
setMoveKey( spep_4 + 40 -3, 1, 52, -125.3 , 0 );
setMoveKey( spep_4 + 42 -3, 1, 58.3, -110.5 , 0 );
setMoveKey( spep_4 + 44 -3, 1, 57.3, -141.3 , 0 );
setMoveKey( spep_4 + 46 -3, 1, 74.9, -170.6 , 0 );
setMoveKey( spep_4 + 48 -3, 1, 88.7, -169.7 , 0 );
setMoveKey( spep_4 + 50 -3, 1, 87.1, -201 , 0 );
setMoveKey( spep_4 + 52 -3, 1, 105.2, -230.7 , 0 );
setMoveKey( spep_4 + 54 -3, 1, 119.1, -229.1 , 0 );
setMoveKey( spep_4 + 56 -3, 1, 117.1, -260.8 , 0 );
setMoveKey( spep_4 + 58 -3, 1, 135.5, -290.9 , 0 );
setMoveKey( spep_4 + 60 -3, 1, 149.6, -288.2 , 0 );
setMoveKey( spep_4 + 62 -3, 1, 147.1, -320.4 , 0 );
setMoveKey( spep_4 + 64 -3, 1, 165.8, -351 , 0 );
setMoveKey( spep_4 + 66 -3, 1, 180, -347.4 , 0 );
setMoveKey( spep_4 + 66, 1, 177.1, -380.4 , 0 );

setScaleKey( spep_4 + 0, 1, 2.34, 2.34 );
setScaleKey( spep_4 + 2, 1, 2.22, 2.22 );
setScaleKey( spep_4 + 4, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 6, 1, 1.98, 1.98 );
setScaleKey( spep_4 + 8, 1, 1.86, 1.86 );
setScaleKey( spep_4 + 10, 1, 1.74, 1.74 );
setScaleKey( spep_4 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_4 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 16, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 20, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 22, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 25 -3, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 26 -3, 1, 0.89, 0.89 );
setScaleKey( spep_4 + 28 -3, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 30 -3, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 32 -3, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 34 -3, 1, 1.05, 1.05 );
setScaleKey( spep_4 + 36 -3, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 38 -3, 1, 1.13, 1.13 );
setScaleKey( spep_4 + 40 -3, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 42 -3, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 44 -3, 1, 1.22, 1.22 );
setScaleKey( spep_4 + 46 -3, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 48 -3, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 50 -3, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 52 -3, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 54 -3, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 56 -3, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 58 -3, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 60 -3, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 62 -3, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 64 -3, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 66 -3, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 66, 1, 1.44, 1.44 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 25 -3, 1, 0 );
setRotateKey( spep_4 + 26 -3, 1, -7.3 );
setRotateKey( spep_4 + 28 -3, 1, 1.8 );
setRotateKey( spep_4 + 30 -3, 1, -7.4 );
setRotateKey( spep_4 + 32 -3, 1, -7.4 );
setRotateKey( spep_4 + 34 -3, 1, 1.8 );
setRotateKey( spep_4 + 36 -3, 1, -7.4 );
setRotateKey( spep_4 + 38 -3, 1, -7.4 );
setRotateKey( spep_4 + 40 -3, 1, 1.8 );
setRotateKey( spep_4 + 42 -3, 1, -7.4 );
setRotateKey( spep_4 + 44 -3, 1, -7.4 );
setRotateKey( spep_4 + 46 -3, 1, 1.8 );
setRotateKey( spep_4 + 48 -3, 1, -7.4 );
setRotateKey( spep_4 + 50 -3, 1, -7.4 );
setRotateKey( spep_4 + 52 -3, 1, 1.8 );
setRotateKey( spep_4 + 54 -3, 1, -7.4 );
setRotateKey( spep_4 + 56 -3, 1, -7.4 );
setRotateKey( spep_4 + 58 -3, 1, 1.8 );
setRotateKey( spep_4 + 60 -3, 1, -7.4 );
setRotateKey( spep_4 + 62 -3, 1, -7.4 );
setRotateKey( spep_4 + 64 -3, 1, 1.8 );
setRotateKey( spep_4 + 66 -3, 1, -7.4 );
setRotateKey( spep_4 + 66, 1, -7.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 46, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_4 + 2, 1021 );  --ビーム

-- ** 次の準備 ** --
spep_5 = spep_4 + 66;

------------------------------------------------------
-- 爆発(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --爆発(ef_009)
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 116, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 116, finish, 255 );

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_5 + 0, 906, 58, 0x100, -1, 0, -201.9, 24.1 );  --集中線
setEffShake( spep_5 + 0, shuchusen7, 58, 20 );

setEffMoveKey( spep_5 + 0, shuchusen7, -201.9, 24.1 , 0 );
setEffMoveKey( spep_5 + 58, shuchusen7, -201.9, 24.1 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen7, 1.42, 1.51 );
setEffScaleKey( spep_5 + 58, shuchusen7, 1.42, 1.51 );

setEffRotateKey( spep_5 + 0, shuchusen7, 0 );
setEffRotateKey( spep_5 + 58, shuchusen7, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen7, 255 );
setEffAlphaKey( spep_5 + 38, shuchusen7, 255 );
setEffAlphaKey( spep_5 + 40, shuchusen7, 230 );
setEffAlphaKey( spep_5 + 42, shuchusen7, 204 );
setEffAlphaKey( spep_5 + 44, shuchusen7, 179 );
setEffAlphaKey( spep_5 + 46, shuchusen7, 153 );
setEffAlphaKey( spep_5 + 48, shuchusen7, 128 );
setEffAlphaKey( spep_5 + 50, shuchusen7, 102 );
setEffAlphaKey( spep_5 + 52, shuchusen7, 77 );
setEffAlphaKey( spep_5 + 54, shuchusen7, 51 );
setEffAlphaKey( spep_5 + 56, shuchusen7, 25 );
setEffAlphaKey( spep_5 + 58, shuchusen7, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 0 -20, 1069 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 0 );
--entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 112 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 飛んでるシーン(244F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
fry_f = entryEffectLife( spep_0 + 0, SP_01, 244, 0x100, -1, 0, 0, 0 );  --飛んでいるシーン悟飯(ef_001)
setEffMoveKey( spep_0 + 0, fry_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 244, fry_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, fry_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 244, fry_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fry_f, 0 );
setEffRotateKey( spep_0 + 244, fry_f, 0 );
setEffAlphaKey( spep_0 + 0, fry_f, 255 );
setEffAlphaKey( spep_0 + 244, fry_f, 255 );

fry_b = entryEffectLife( spep_0 + 0, SP_02, 244, 0x80, -1, 0, 0, 0 );  --飛んでいるシーン背景(ef_002)
setEffMoveKey( spep_0 + 0, fry_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 244, fry_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, fry_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 244, fry_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fry_b, 0 );
setEffRotateKey( spep_0 + 244, fry_b, 0 );
setEffAlphaKey( spep_0 + 0, fry_b, 255 );
setEffAlphaKey( spep_0 + 244, fry_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 64, 906, 36, 0x80, -1, 0, -123.7, -81.2 );  --集中線
setEffShake( spep_0 + 64, shuchusen1, 36, 20 );

setEffMoveKey( spep_0 + 64, shuchusen1, -123.7, -81.2 , 0 );
setEffMoveKey( spep_0 + 66, shuchusen1, -128.8, -80.4 , 0 );
setEffMoveKey( spep_0 + 68, shuchusen1, -113.8, -79.6 , 0 );
setEffMoveKey( spep_0 + 70, shuchusen1, -108.9, -78.8 , 0 );
setEffMoveKey( spep_0 + 72, shuchusen1, -80, -77.9 , 0 );
setEffMoveKey( spep_0 + 74, shuchusen1, -60.5, -74.4 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, -30, -70.8 , 0 );
setEffMoveKey( spep_0 + 78, shuchusen1, -10, -67.2 , 0 );
setEffMoveKey( spep_0 + 80, shuchusen1, -4.1, -63.7 , 0 );
setEffMoveKey( spep_0 + 82, shuchusen1, -1.6, -60.1 , 0 );
setEffMoveKey( spep_0 + 84, shuchusen1, 0.1, -56.6 , 0 );
setEffMoveKey( spep_0 + 86, shuchusen1, 0.6, -53 , 0 );
setEffMoveKey( spep_0 + 88, shuchusen1, 3.1, -49.4 , 0 );
setEffMoveKey( spep_0 + 90, shuchusen1, 5.6, -45.9 , 0 );
setEffMoveKey( spep_0 + 92, shuchusen1, 9.1, -42.3 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 9.1, -42.3 , 0 );

setEffScaleKey( spep_0 + 64, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 100, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 64, shuchusen1, 0 );
setEffRotateKey( spep_0 + 100, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 64, shuchusen1, 51 );
setEffAlphaKey( spep_0 + 66, shuchusen1, 102 );
setEffAlphaKey( spep_0 + 68, shuchusen1, 153 );
setEffAlphaKey( spep_0 + 70, shuchusen1, 204 );
setEffAlphaKey( spep_0 + 72, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 92, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 94, shuchusen1, 191 );
setEffAlphaKey( spep_0 + 96, shuchusen1, 128 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 64 );
setEffAlphaKey( spep_0 + 100, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_0 + 224, 906, 20, 0x80, -1, 0, 68.2, 127.8 );  --集中線
setEffShake( spep_0 + 224, shuchusen2, 20, 20 );

setEffMoveKey( spep_0 + 224, shuchusen2, 68.2, 127.8 , 0 );
setEffMoveKey( spep_0 + 244, shuchusen2, 68.2, 127.8 , 0 );

setEffScaleKey( spep_0 + 224, shuchusen2, 1.87, 2.28 );
setEffScaleKey( spep_0 + 244, shuchusen2, 1.87, 2.28 );

setEffRotateKey( spep_0 + 224, shuchusen2, 20 );
setEffRotateKey( spep_0 + 244, shuchusen2, 20 );

setEffAlphaKey( spep_0 + 224, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 244, shuchusen2, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_0 + 98, 914, 126, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_0 + 98, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 224, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 98, ryusen1, 4.3, 1.44 );
setEffScaleKey( spep_0 + 224, ryusen1, 4.3, 1.44 );

setEffRotateKey( spep_0 + 98, ryusen1, -20.2 );
setEffRotateKey( spep_0 + 224, ryusen1, -20.2 );

setEffAlphaKey( spep_0 + 98, ryusen1, 20 );
setEffAlphaKey( spep_0 + 100, ryusen1, 41 );
setEffAlphaKey( spep_0 + 102, ryusen1, 61 );
setEffAlphaKey( spep_0 + 104, ryusen1, 82 );
setEffAlphaKey( spep_0 + 106, ryusen1, 102 );
setEffAlphaKey( spep_0 + 108, ryusen1, 123 );
setEffAlphaKey( spep_0 + 110, ryusen1, 143 );
setEffAlphaKey( spep_0 + 112, ryusen1, 163 );
setEffAlphaKey( spep_0 + 114, ryusen1, 184 );
setEffAlphaKey( spep_0 + 116, ryusen1, 204 );
setEffAlphaKey( spep_0 + 178, ryusen1, 204 );
setEffAlphaKey( spep_0 + 180, ryusen1, 195 );
setEffAlphaKey( spep_0 + 182, ryusen1, 186 );
setEffAlphaKey( spep_0 + 184, ryusen1, 178 );
setEffAlphaKey( spep_0 + 186, ryusen1, 169 );
setEffAlphaKey( spep_0 + 188, ryusen1, 160 );
setEffAlphaKey( spep_0 + 190, ryusen1, 151 );
setEffAlphaKey( spep_0 + 192, ryusen1, 142 );
setEffAlphaKey( spep_0 + 194, ryusen1, 133 );
setEffAlphaKey( spep_0 + 196, ryusen1, 124 );
setEffAlphaKey( spep_0 + 198, ryusen1, 115 );
setEffAlphaKey( spep_0 + 200, ryusen1, 107 );
setEffAlphaKey( spep_0 + 202, ryusen1, 98 );
setEffAlphaKey( spep_0 + 204, ryusen1, 89 );
setEffAlphaKey( spep_0 + 206, ryusen1, 80 );
setEffAlphaKey( spep_0 + 208, ryusen1, 71 );
setEffAlphaKey( spep_0 + 210, ryusen1, 62 );
setEffAlphaKey( spep_0 + 212, ryusen1, 53 );
setEffAlphaKey( spep_0 + 214, ryusen1, 44 );
setEffAlphaKey( spep_0 + 216, ryusen1, 36 );
setEffAlphaKey( spep_0 + 218, ryusen1, 27 );
setEffAlphaKey( spep_0 + 220, ryusen1, 18 );
setEffAlphaKey( spep_0 + 222, ryusen1, 9 );
setEffAlphaKey( spep_0 + 224, ryusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 244, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 234, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 62, 8 );  --手前に飛んでくる
playSe( spep_0 + 100, 9 );  --横に飛ぶ
playSe( spep_0 + 218, 44 );  --奥に飛ぶ

-- ** 次の準備 ** --
spep_1 = spep_0 + 244;

------------------------------------------------------
-- 飛び降りる1(148F)
------------------------------------------------------

-- ** エフェクト等 ** --
down1 = entryEffectLife( spep_1 + 0, SP_03, 148, 0x100, -1, 0, 0, 0 );  --飛び降りる1(ef_003)
setEffMoveKey( spep_1 + 0, down1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 148, down1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, down1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 148, down1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, down1, 0 );
setEffRotateKey( spep_1 + 148, down1, 0 );
setEffAlphaKey( spep_1 + 0, down1, 255 );
setEffAlphaKey( spep_1 + 148, down1, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 + 36, 906, 112, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 36, shuchusen3, 112, 20 );

setEffMoveKey( spep_1 + 36, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 148, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 + 36, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_1 + 148, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_1 + 36, shuchusen3, 0 );
setEffRotateKey( spep_1 + 148, shuchusen3, 0 );

setEffAlphaKey( spep_1 + 36, shuchusen3, 0 );
setEffAlphaKey( spep_1 + 51, shuchusen3, 0 );
setEffAlphaKey( spep_1 + 52, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 124, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 148, shuchusen3, 0 );

spep_x = spep_1 + 36;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 148, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 140, 6, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 24, 1003 );  --飛び降りる
playSe( spep_x + 16, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_2 = spep_1 + 148;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 飛び降り2(142F)
------------------------------------------------------

-- ** エフェクト等 ** --
down2_f = entryEffectLife( spep_3 + 0, SP_04, 142, 0x100, -1, 0, 0, 0 );  --飛び降り2_悟飯(ef_004)
setEffMoveKey( spep_3 + 0, down2_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 142, down2_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, down2_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 142, down2_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, down2_f, 0 );
setEffRotateKey( spep_3 + 142, down2_f, 0 );
setEffAlphaKey( spep_3 + 0, down2_f, 255 );
setEffAlphaKey( spep_3 + 142, down2_f, 255 );

down2_b = entryEffectLife( spep_3 + 0, SP_05, 142, 0x80, -1, 0, 0, 0 );  --飛び降り2_背景(ef_005)
setEffMoveKey( spep_3 + 0, down2_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 142, down2_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, down2_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 142, down2_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, down2_b, 0 );
setEffRotateKey( spep_3 + 142, down2_b, 0 );
setEffAlphaKey( spep_3 + 0, down2_b, 255 );
setEffAlphaKey( spep_3 + 142, down2_b, 255 );

hanatsu = entryEffectLife( spep_3 + 0, SP_06, 142, 0x100, -1, 0, 0, 0 );  --魔閃光放つ(ef_006)
setEffMoveKey( spep_3 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 142, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_3 + 142, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hanatsu, 0 );
setEffRotateKey( spep_3 + 142, hanatsu, 0 );
setEffAlphaKey( spep_3 + 0, hanatsu, 255 );
setEffAlphaKey( spep_3 + 142, hanatsu, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0, 906, 56, 0x100, -1, 0, 69.5, 65 );  --集中線
setEffShake( spep_3 + 0, shuchusen4, 56, 20 );

setEffMoveKey( spep_3 + 0, shuchusen4, 69.5, 65 , 0 );
setEffMoveKey( spep_3 + 56, shuchusen4, 69.5, 65 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.5, 2.6 );
setEffScaleKey( spep_3 + 56, shuchusen4, 1.5, 2.6 );

setEffRotateKey( spep_3 + 0, shuchusen4, 20 );
setEffRotateKey( spep_3 + 56, shuchusen4, 20 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 54, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 55, shuchusen4, 0 );
setEffAlphaKey( spep_3 + 56, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_3 + 96, 906, 20, 0x100, -1, 0, -234.2, 442.5 );  --集中線
setEffShake( spep_3 + 96, shuchusen5, 20, 20 );

setEffMoveKey( spep_3 + 96, shuchusen5, -234.2, 442.5 , 0 );
setEffMoveKey( spep_3 + 116, shuchusen5, -234.2, 442.5 , 0 );

setEffScaleKey( spep_3 + 96, shuchusen5, 2.5, 2.62 );
setEffScaleKey( spep_3 + 116, shuchusen5, 2.5, 2.62 );

setEffRotateKey( spep_3 + 96, shuchusen5, -14.9 );
setEffRotateKey( spep_3 + 116, shuchusen5, -14.9 );

setEffAlphaKey( spep_3 + 96, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 108, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 110, shuchusen5, 191 );
setEffAlphaKey( spep_3 + 112, shuchusen5, 128 );
setEffAlphaKey( spep_3 + 114, shuchusen5, 64 );
setEffAlphaKey( spep_3 + 116, shuchusen5, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 56, 1, 0 );
changeAnime( spep_3 + 0, 1, 101 );

setMoveKey( spep_3 + 0, 1, 192.7, 247 , 0 );
setMoveKey( spep_3 + 2, 1, 190.8, 243.1 , 0 );
setMoveKey( spep_3 + 4, 1, 192.1, 242.5 , 0 );
setMoveKey( spep_3 + 6, 1, 190.3, 240.3 , 0 );
setMoveKey( spep_3 + 8, 1, 191.6, 238.1 , 0 );
setMoveKey( spep_3 + 10, 1, 191.3, 234.3 , 0 );
setMoveKey( spep_3 + 12, 1, 191, 233.7 , 0 );
setMoveKey( spep_3 + 14, 1, 189.2, 231.5 , 0 );
setMoveKey( spep_3 + 16, 1, 190.5, 229.3 , 0 );
setMoveKey( spep_3 + 18, 1, 190.2, 223.8 , 0 );
setMoveKey( spep_3 + 20, 1, 189.9, 224.8 , 0 );
setMoveKey( spep_3 + 22, 1, 189.7, 221 , 0 );
setMoveKey( spep_3 + 24, 1, 189.4, 220.4 , 0 );
setMoveKey( spep_3 + 26, 1, 185.9, 216.6 , 0 );
setMoveKey( spep_3 + 28, 1, 188.8, 216 , 0 );
setMoveKey( spep_3 + 30, 1, 186.9, 212.2 , 0 );
setMoveKey( spep_3 + 32, 1, 188.3, 211.6 , 0 );
setMoveKey( spep_3 + 34, 1, 186.4, 207.7 , 0 );
setMoveKey( spep_3 + 36, 1, 187.7, 207.1 , 0 );
setMoveKey( spep_3 + 38, 1, 185.8, 204.9 , 0 );
setMoveKey( spep_3 + 40, 1, 187.1, 202.7 , 0 );
setMoveKey( spep_3 + 42, 1, 186.9, 198.9 , 0 );
setMoveKey( spep_3 + 44, 1, 186.6, 198.3 , 0 );
setMoveKey( spep_3 + 46, 1, 184.7, 194.5 , 0 );
setMoveKey( spep_3 + 48, 1, 186, 193.9 , 0 );
setMoveKey( spep_3 + 50, 1, 182.5, 190 , 0 );
setMoveKey( spep_3 + 52, 1, 185.4, 189.4 , 0 );
setMoveKey( spep_3 + 54, 1, 183.6, 184 , 0 );
setMoveKey( spep_3 + 56, 1, 184.9, 185 , 0 );

setScaleKey( spep_3 + 0, 1, 0.23, 0.23 );
setScaleKey( spep_3 + 2, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 4, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 6, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 8, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 10, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 12, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 14, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 16, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 18, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 20, 1, 0.3, 0.3 );
setScaleKey( spep_3 + 22, 1, 0.3, 0.3 );
setScaleKey( spep_3 + 24, 1, 0.31, 0.31 );
setScaleKey( spep_3 + 26, 1, 0.32, 0.32 );
setScaleKey( spep_3 + 28, 1, 0.32, 0.32 );
setScaleKey( spep_3 + 30, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 32, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 34, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 36, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 38, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 40, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 42, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 44, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 46, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 48, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 50, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 52, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 54, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 56, 1, 0.41, 0.41 );

setRotateKey( spep_3 + 0, 1, 23.2 );
setRotateKey( spep_3 + 2, 1, 23.3 );
setRotateKey( spep_3 + 4, 1, 23.4 );
setRotateKey( spep_3 + 6, 1, 23.6 );
setRotateKey( spep_3 + 8, 1, 23.7 );
setRotateKey( spep_3 + 10, 1, 23.8 );
setRotateKey( spep_3 + 12, 1, 23.9 );
setRotateKey( spep_3 + 14, 1, 24 );
setRotateKey( spep_3 + 16, 1, 24.1 );
setRotateKey( spep_3 + 18, 1, 24.3 );
setRotateKey( spep_3 + 20, 1, 24.4 );
setRotateKey( spep_3 + 22, 1, 24.5 );
setRotateKey( spep_3 + 24, 1, 24.6 );
setRotateKey( spep_3 + 26, 1, 24.7 );
setRotateKey( spep_3 + 28, 1, 24.9 );
setRotateKey( spep_3 + 30, 1, 25 );
setRotateKey( spep_3 + 32, 1, 25.1 );
setRotateKey( spep_3 + 34, 1, 25.2 );
setRotateKey( spep_3 + 36, 1, 25.3 );
setRotateKey( spep_3 + 38, 1, 25.4 );
setRotateKey( spep_3 + 40, 1, 25.6 );
setRotateKey( spep_3 + 42, 1, 25.7 );
setRotateKey( spep_3 + 44, 1, 25.8 );
setRotateKey( spep_3 + 46, 1, 25.9 );
setRotateKey( spep_3 + 48, 1, 26 );
setRotateKey( spep_3 + 50, 1, 26.1 );
setRotateKey( spep_3 + 52, 1, 26.3 );
setRotateKey( spep_3 + 54, 1, 26.4 );
setRotateKey( spep_3 + 56, 1, 26.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 142, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 134, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 + 0, 1072 );  --迫る
playSe( spep_3 + 58, 1048 );  --回る
playSe( spep_3 + 73, 1048 );  --回る
playSe( spep_3 + 88, 1048 );  --回る
playSe( spep_3 + 98, 1007 );  --両手上げる
setSeVolume( spep_3 + 98, 1007, 70 );
SE1 = playSe( spep_3 + 112, 1022 );  --放つ

-- ** 次の準備 ** --
spep_4 = spep_3 + 142;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 126; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
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
------------------------------------------------------
-- 魔閃光ヒット(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
hit_b = entryEffectLife( spep_4 + 0, SP_08, 66, 0x80, -1, 0, 0, 0 );  --魔閃光ヒット_背景(ef_008)
setEffMoveKey( spep_4 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_b, 0 );
setEffRotateKey( spep_4 + 66, hit_b, 0 );
setEffAlphaKey( spep_4 + 0, hit_b, 255 );
setEffAlphaKey( spep_4 + 66, hit_b, 255 );

hit_f1 = entryEffectLife( spep_4 + 0, SP_07, 26 -3, 0x80, -1, 0, 0, 0 );  --魔閃光ヒット(ef_007)
setEffMoveKey( spep_4 + 0, hit_f1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 26 -3, hit_f1, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit_f1, 1.0, 1.0 );
setEffScaleKey( spep_4 + 26 -3, hit_f1, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f1, 0 );
setEffRotateKey( spep_4 + 26 -3, hit_f1, 0 );
setEffAlphaKey( spep_4 + 0, hit_f1, 255 );
setEffAlphaKey( spep_4 + 25 -3, hit_f1, 255 );
setEffAlphaKey( spep_4 + 26 -3, hit_f1, 0 );

hit_f2 = entryEffectLife( spep_4 + 0, SP_07, 66, 0x100, -1, 0, 0, 0 );  --魔閃光ヒット(ef_007)
setEffMoveKey( spep_4 + 0, hit_f2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, hit_f2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit_f2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, hit_f2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_f2, 0 );
setEffRotateKey( spep_4 + 66, hit_f2, 0 );
setEffAlphaKey( spep_4 + 0, hit_f2, 0 );
setEffAlphaKey( spep_4 + 25 -3, hit_f2, 0 );
setEffAlphaKey( spep_4 + 26 -3, hit_f2, 255 );
setEffAlphaKey( spep_4 + 66, hit_f2, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_4 + 0, 906, 66, 0x100, -1, 0, -183.9, 480.1 );  --集中線
setEffShake( spep_4 + 0, shuchusen6, 66, 20 );

setEffMoveKey( spep_4 + 0, shuchusen6, -183.9, 480.1 , 0 );
setEffMoveKey( spep_4 + 66, shuchusen6, -183.9, 480.1 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen6, 1.97, 2.13 );
setEffScaleKey( spep_4 + 66, shuchusen6, 1.97, 2.13 );

setEffRotateKey( spep_4 + 0, shuchusen6, -100 );
setEffRotateKey( spep_4 + 66, shuchusen6, -100 );

setEffAlphaKey( spep_4 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_4 + 66, shuchusen6, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 66, 1, 0 );
changeAnime( spep_4 + 0, 1, 102 );
changeAnime( spep_4 + 26 -3, 1, 107 );

setMoveKey( spep_4 + 0, 1, 322.8, -272.6 , 0 );
setMoveKey( spep_4 + 4 -3, 1, 267, -206 , 0 );
setMoveKey( spep_4 + 6 -3, 1, 233.5, -184.2 , 0 );
setMoveKey( spep_4 + 8 -3, 1, 200.4, -159.7 , 0 );
setMoveKey( spep_4 + 10 -3, 1, 177.1, -119 , 0 );
setMoveKey( spep_4 + 12 -3, 1, 144.3, -95.8 , 0 );
setMoveKey( spep_4 + 14 -3, 1, 111.8, -70.4 , 0 );
setMoveKey( spep_4 + 16 -3, 1, 108.7, -50.3 , 0 );
setMoveKey( spep_4 + 18 -3, 1, 97.6, -45 , 0 );
setMoveKey( spep_4 + 20 -3, 1, 86.4, -38.3 , 0 );
setMoveKey( spep_4 + 22 -3, 1, 83.3, -18.4 , 0 );
setMoveKey( spep_4 + 24 -3, 1, 72.2, -13 , 0 );
setMoveKey( spep_4 + 25 -3, 1, 72.2, -13 , 0 );
setMoveKey( spep_4 + 26 -3, 1, 31.3, -81.2 , 0 );
setMoveKey( spep_4 + 28 -3, 1, 38.6, -93.4 , 0 );
setMoveKey( spep_4 + 30 -3, 1, 43.2, -82.8 , 0 );
setMoveKey( spep_4 + 32 -3, 1, 36.2, -96.7 , 0 );
setMoveKey( spep_4 + 34 -3, 1, 44.7, -109.6 , 0 );
setMoveKey( spep_4 + 36 -3, 1, 50.2, -96.8 , 0 );
setMoveKey( spep_4 + 38 -3, 1, 42.5, -111.7 , 0 );
setMoveKey( spep_4 + 40 -3, 1, 52, -125.3 , 0 );
setMoveKey( spep_4 + 42 -3, 1, 58.3, -110.5 , 0 );
setMoveKey( spep_4 + 44 -3, 1, 57.3, -141.3 , 0 );
setMoveKey( spep_4 + 46 -3, 1, 74.9, -170.6 , 0 );
setMoveKey( spep_4 + 48 -3, 1, 88.7, -169.7 , 0 );
setMoveKey( spep_4 + 50 -3, 1, 87.1, -201 , 0 );
setMoveKey( spep_4 + 52 -3, 1, 105.2, -230.7 , 0 );
setMoveKey( spep_4 + 54 -3, 1, 119.1, -229.1 , 0 );
setMoveKey( spep_4 + 56 -3, 1, 117.1, -260.8 , 0 );
setMoveKey( spep_4 + 58 -3, 1, 135.5, -290.9 , 0 );
setMoveKey( spep_4 + 60 -3, 1, 149.6, -288.2 , 0 );
setMoveKey( spep_4 + 62 -3, 1, 147.1, -320.4 , 0 );
setMoveKey( spep_4 + 64 -3, 1, 165.8, -351 , 0 );
setMoveKey( spep_4 + 66 -3, 1, 180, -347.4 , 0 );
setMoveKey( spep_4 + 66, 1, 177.1, -380.4 , 0 );

setScaleKey( spep_4 + 0, 1, 2.34, 2.34 );
setScaleKey( spep_4 + 2, 1, 2.22, 2.22 );
setScaleKey( spep_4 + 4, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 6, 1, 1.98, 1.98 );
setScaleKey( spep_4 + 8, 1, 1.86, 1.86 );
setScaleKey( spep_4 + 10, 1, 1.74, 1.74 );
setScaleKey( spep_4 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_4 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 16, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 20, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 22, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 25 -3, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 26 -3, 1, 0.89, 0.89 );
setScaleKey( spep_4 + 28 -3, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 30 -3, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 32 -3, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 34 -3, 1, 1.05, 1.05 );
setScaleKey( spep_4 + 36 -3, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 38 -3, 1, 1.13, 1.13 );
setScaleKey( spep_4 + 40 -3, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 42 -3, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 44 -3, 1, 1.22, 1.22 );
setScaleKey( spep_4 + 46 -3, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 48 -3, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 50 -3, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 52 -3, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 54 -3, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 56 -3, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 58 -3, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 60 -3, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 62 -3, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 64 -3, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 66 -3, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 66, 1, 1.44, 1.44 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 25 -3, 1, 0 );
setRotateKey( spep_4 + 26 -3, 1, -7.3 );
setRotateKey( spep_4 + 28 -3, 1, 1.8 );
setRotateKey( spep_4 + 30 -3, 1, -7.4 );
setRotateKey( spep_4 + 32 -3, 1, -7.4 );
setRotateKey( spep_4 + 34 -3, 1, 1.8 );
setRotateKey( spep_4 + 36 -3, 1, -7.4 );
setRotateKey( spep_4 + 38 -3, 1, -7.4 );
setRotateKey( spep_4 + 40 -3, 1, 1.8 );
setRotateKey( spep_4 + 42 -3, 1, -7.4 );
setRotateKey( spep_4 + 44 -3, 1, -7.4 );
setRotateKey( spep_4 + 46 -3, 1, 1.8 );
setRotateKey( spep_4 + 48 -3, 1, -7.4 );
setRotateKey( spep_4 + 50 -3, 1, -7.4 );
setRotateKey( spep_4 + 52 -3, 1, 1.8 );
setRotateKey( spep_4 + 54 -3, 1, -7.4 );
setRotateKey( spep_4 + 56 -3, 1, -7.4 );
setRotateKey( spep_4 + 58 -3, 1, 1.8 );
setRotateKey( spep_4 + 60 -3, 1, -7.4 );
setRotateKey( spep_4 + 62 -3, 1, -7.4 );
setRotateKey( spep_4 + 64 -3, 1, 1.8 );
setRotateKey( spep_4 + 66 -3, 1, -7.4 );
setRotateKey( spep_4 + 66, 1, -7.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 46, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_4 + 2, 1021 );  --ビーム

-- ** 次の準備 ** --
spep_5 = spep_4 + 66;

------------------------------------------------------
-- 爆発(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --爆発(ef_009)
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 116, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 116, finish, 255 );

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_5 + 0, 906, 58, 0x100, -1, 0, -201.9, 24.1 );  --集中線
setEffShake( spep_5 + 0, shuchusen7, 58, 20 );

setEffMoveKey( spep_5 + 0, shuchusen7, -201.9, 24.1 , 0 );
setEffMoveKey( spep_5 + 58, shuchusen7, -201.9, 24.1 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen7, 1.42, 1.51 );
setEffScaleKey( spep_5 + 58, shuchusen7, 1.42, 1.51 );

setEffRotateKey( spep_5 + 0, shuchusen7, 0 );
setEffRotateKey( spep_5 + 58, shuchusen7, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen7, 255 );
setEffAlphaKey( spep_5 + 38, shuchusen7, 255 );
setEffAlphaKey( spep_5 + 40, shuchusen7, 230 );
setEffAlphaKey( spep_5 + 42, shuchusen7, 204 );
setEffAlphaKey( spep_5 + 44, shuchusen7, 179 );
setEffAlphaKey( spep_5 + 46, shuchusen7, 153 );
setEffAlphaKey( spep_5 + 48, shuchusen7, 128 );
setEffAlphaKey( spep_5 + 50, shuchusen7, 102 );
setEffAlphaKey( spep_5 + 52, shuchusen7, 77 );
setEffAlphaKey( spep_5 + 54, shuchusen7, 51 );
setEffAlphaKey( spep_5 + 56, shuchusen7, 25 );
setEffAlphaKey( spep_5 + 58, shuchusen7, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 0 -20, 1069 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 0 );
--entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 112 );


end
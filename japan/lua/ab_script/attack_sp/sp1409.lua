--セリパ_エナジーバレット

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
SP_01 = 155000; --突進
SP_02 = 155001; --蹴り：手前
SP_03 = 155003; --蹴り：奥
SP_04 = 155005; --気タメ
SP_05 = 155006; --気弾発射
SP_06 = 155007; --気弾着弾から爆発
SP_07 = 155009; --気弾着弾から爆発：背

--敵側
SP_02x = 155002; --蹴り：手前（敵側）
SP_03x = 155004; --蹴り：奥（敵側）
SP_06x = 155008; --気弾着弾から爆発（敵側）

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
tosshin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 76, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 76, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 76, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 76, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 76, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--前方ダッシュ
SE0 = playSe( spep_0 + 0, 9 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

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

-- ** 音 ** --
--前方ダッシュ
playSe( spep_0 + 69, 8 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- 蹴り(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_1 + 0, SP_02, 76, 0x100, -1, 0, 0, 0 );  --蹴り(ef_002)
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 76, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 76, kick_f, 255 );

kick_b = entryEffectLife( spep_1 + 0, SP_03, 76, 0x80, -1, 0, 0, 0 );  --蹴り(ef_003)
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 76, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 76, kick_b, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 46 -3, 906, 16, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 46 -3, shuchusen2, 16, 20 );

setEffMoveKey( spep_1 + 46 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 62 -3, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 46 -3, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 + 62 -3, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_1 + 46 -3, shuchusen2, 0 );
setEffRotateKey( spep_1 + 62 -3, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 46 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 62 -3, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_1 -3 + 46,  10019, 20, 0x100, -1, 0, 0, -0.1 );  --ドンッ
setEffMoveKey( spep_1 -3 + 46, ctdon, 0, -0.1 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctdon, -54.9, 128.3 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctdon, -93.8, 254 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctdon, -107, 267.8 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctdon, -98.5, 265.7 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctdon, -114.8, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctdon, -112.3, 284.7 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctdon, -122.7, 282.8 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctdon, -119.5, 305.9 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctdon, -122.6, 307.7 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctdon, -125.8, 322.6 , 0 );

setEffScaleKey( spep_1 -3 + 46, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 48, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 50, ctdon, 2, 2 );
setEffScaleKey( spep_1 -3 + 52, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 54, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 56, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 58, ctdon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 60, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 62, ctdon, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 64, ctdon, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 66, ctdon, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 46, ctdon, 0 );
setEffRotateKey( spep_1 -3 + 66, ctdon, 0 );

setEffAlphaKey( spep_1 -3 + 46, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 60, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 62, ctdon, 170 );
setEffAlphaKey( spep_1 -3 + 64, ctdon, 85 );
setEffAlphaKey( spep_1 -3 + 66, ctdon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 6, 1, 1 );
setDisp( spep_1 -3 + 60, 1, 0 );
changeAnime( spep_1 -3 + 6, 1, 118 );
changeAnime( spep_1 -3 + 40, 1, 107 );

setMoveKey( spep_1 -3 + 6, 1, 403.4, -79.2 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 306, -58.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 257.8, -48.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 222, -40.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 192.9, -34.5 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 168.2, -29.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 146.7, -24.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 127.6, -20.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 110.6, -17.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 95.2, -13.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 81.3, -10.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 68.7, -8.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 57.3, -5.8 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 47, -3.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 37.9, -1.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 29.9, 0 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 29.9, 0 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 181.7, -44.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 309.6, -48.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 196.4, -44.5 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 83.3, -40.7 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 156.5, -52.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 262.8, -71.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 333.1, -89.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 416.6, -110 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 575.6, -143.1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 772.1, -183.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 972.1, -233.9 , 0 );

setScaleKey( spep_1 -3 + 6, 1, 3, 3 );
setScaleKey( spep_1 -3 + 8, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 10, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 12, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 14, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 16, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 18, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 20, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 22, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 24, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 26, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 28, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 30, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 32, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 34, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 36, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 39, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 40, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 42, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 44, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 46, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 48, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 50, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 52, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 54, 1, 0.91, 0.91 );
setScaleKey( spep_1 -3 + 56, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 58, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 60, 1, 1.26, 1.26 );

setRotateKey( spep_1 -3 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 39, 1, 0 );
setRotateKey( spep_1 -3 + 40, 1, -80 );
setRotateKey( spep_1 -3 + 42, 1, -60 );
setRotateKey( spep_1 -3 + 44, 1, -65 );
setRotateKey( spep_1 -3 + 46, 1, -70 );
setRotateKey( spep_1 -3 + 48, 1, -67.1 );
setRotateKey( spep_1 -3 + 50, 1, -62.6 );
setRotateKey( spep_1 -3 + 52, 1, -56.7 );
setRotateKey( spep_1 -3 + 54, 1, -49.3 );
setRotateKey( spep_1 -3 + 56, 1, -40.5 );
setRotateKey( spep_1 -3 + 58, 1, -29.9 );
setRotateKey( spep_1 -3 + 60, 1, -29.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ドロップキック
playSe( spep_1 + 32, 1004 );
playSe( spep_1 + 37, 1189 );
playSe( spep_1 + 41, 1010 );
playSe( spep_1 + 44, 1110 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;

------------------------------------------------------
-- 気タメ(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_2 + 0, SP_04, 96, 0x100, -1, 0, 0, 0 );  --気タメ(ef_004)
setEffMoveKey( spep_2 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, kidame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, kidame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidame, 0 );
setEffRotateKey( spep_2 + 96, kidame, 0 );
setEffAlphaKey( spep_2 + 0, kidame, 255 );
setEffAlphaKey( spep_2 + 96, kidame, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 96, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 96, 20 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.3, 1.3 );
setEffScaleKey( spep_2 + 96, shuchusen3, 1.3, 1.3 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 96, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen3, 255 );

spep_x = spep_2 + 10;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +30, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +30, 515.5 , 0 );

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

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFade( spep_2 + 96 -12, 10, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め
playSe( spep_2 + 8, 49 );
SE1 = playSe( spep_2 + 18, 1037 );
setSeVolume( spep_2 + 18, 1037, 89 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

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
playSe( spep_3 + 0, SE_05 );

--気弾溜め
stopSe( spep_3 + 8, SE1, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾発射(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_4 + 0, SP_05, 56, 0x100, -1, 0, 0, 0 );  --気弾発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 56, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 56, hassha, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0, 906, 14, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen4, 14, 20 );

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.3, 1.3 );
setEffScaleKey( spep_4 + 14, shuchusen4, 1.3, 1.3 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 14, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 -3 + 14,  10012, 24, 0x100, -1, 0, 214.7, 142 );  --ズオッ
setEffShake( spep_4 -3 + 30, ctzuo, 8, 20 );

setEffMoveKey( spep_4 -3 + 14, ctzuo, 214.7, 142 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctzuo, 282.5, 274.3 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctzuo, 281.6, 277.7 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctzuo, 290.3, 289 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctzuo, 289.5, 292.4 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctzuo, 298.2, 303.8 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctzuo, 297.3, 307.1 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctzuo, 306, 318.5 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctzuo, 305.2, 321.9 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzuo, 305.2, 321.9 , 0 );

setEffScaleKey( spep_4 -3 + 14, ctzuo, 0.38 +0.7, 0.38 +0.7 );
setEffScaleKey( spep_4 -3 + 16, ctzuo, 0.7 +1.7, 0.7 +1.7 );
setEffScaleKey( spep_4 -3 + 38, ctzuo, 0.7 +1.7, 0.7 +1.7 );

setEffRotateKey( spep_4 -3 + 14, ctzuo, 25 +3.5 );
setEffRotateKey( spep_4 -3 + 38, ctzuo, 25 +3.5 );

setEffAlphaKey( spep_4 -3 + 14, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 16, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 32, ctzuo, 198 );
setEffAlphaKey( spep_4 -3 + 34, ctzuo, 140 );
setEffAlphaKey( spep_4 -3 + 36, ctzuo, 83 );
setEffAlphaKey( spep_4 -3 + 38, ctzuo, 26 );

-- ** 白フェード ** --
entryFade( spep_4 + 56 -22, 20, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾投げる
playSe( spep_4 + 6, 1027 );
playSe( spep_4 + 6, 1016 );
playSe( spep_4 + 10, 1021 );
setSeVolume( spep_4 + 10, 1021, 79 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;

------------------------------------------------------
-- 気弾着弾から爆発(236F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --気弾着弾から爆発(ef_006)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 236, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 236, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 236, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 236, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --気弾着弾から爆発(ef_007)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 236, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 236, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 236, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 236, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 60, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 64.2, 39.2 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 79.9, 33 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 91.1, 28.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 99.9, 25.1 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 107.2, 22.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 113.5, 19.7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 118.9, 17.6 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 123.6, 15.7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 127.9, 14 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 131.7, 12.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 135.1, 11.2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 138.2, 10 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 141, 8.9 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 143.5, 7.9 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 145.9, 6.9 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 148, 6.1 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 149.9, 5.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 151.7, 4.6 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 153.3, 4 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 154.8, 3.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 156.2, 2.9 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 157.4, 2.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 158.5, 1.9 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 159.6, 1.5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 160.5, 1.2 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 161.4, 0.8 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 162.1, 0.5 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 162.9, 0.2 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 163.5, -0.1 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 163.5, -0.1 , 0 );

setScaleKey( spep_5 + 0, 1, 2.97, 2.97 );
setScaleKey( spep_5 -3 + 4, 1, 2.55, 2.55 );
setScaleKey( spep_5 -3 + 6, 1, 2.25, 2.25 );
setScaleKey( spep_5 -3 + 8, 1, 2.01, 2.01 );
setScaleKey( spep_5 -3 + 10, 1, 1.81, 1.81 );
setScaleKey( spep_5 -3 + 12, 1, 1.65, 1.65 );
setScaleKey( spep_5 -3 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 16, 1, 1.37, 1.37 );
setScaleKey( spep_5 -3 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_5 -3 + 20, 1, 1.16, 1.16 );
setScaleKey( spep_5 -3 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_5 -3 + 24, 1, 0.98, 0.98 );
setScaleKey( spep_5 -3 + 26, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 28, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 32, 1, 0.72, 0.72 );
setScaleKey( spep_5 -3 + 34, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 36, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 38, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 42, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 44, 1, 0.47, 0.47 );
setScaleKey( spep_5 -3 + 46, 1, 0.43, 0.43 );
setScaleKey( spep_5 -3 + 48, 1, 0.41, 0.41 );
setScaleKey( spep_5 -3 + 50, 1, 0.38, 0.38 );
setScaleKey( spep_5 -3 + 52, 1, 0.36, 0.36 );
setScaleKey( spep_5 -3 + 54, 1, 0.34, 0.34 );
setScaleKey( spep_5 -3 + 56, 1, 0.32, 0.32 );
setScaleKey( spep_5 -3 + 58, 1, 0.3, 0.3 );
setScaleKey( spep_5 -3 + 60, 1, 0.3, 0.3 );

setRotateKey( spep_5 + 0, 1, 92.7 );
setRotateKey( spep_5 -3 + 4, 1, 93.8 );
setRotateKey( spep_5 -3 + 6, 1, 94.6 );
setRotateKey( spep_5 -3 + 8, 1, 95.2 );
setRotateKey( spep_5 -3 + 10, 1, 95.8 );
setRotateKey( spep_5 -3 + 12, 1, 96.2 );
setRotateKey( spep_5 -3 + 14, 1, 96.6 );
setRotateKey( spep_5 -3 + 16, 1, 96.9 );
setRotateKey( spep_5 -3 + 18, 1, 97.2 );
setRotateKey( spep_5 -3 + 20, 1, 97.5 );
setRotateKey( spep_5 -3 + 22, 1, 97.7 );
setRotateKey( spep_5 -3 + 24, 1, 98 );
setRotateKey( spep_5 -3 + 26, 1, 98.2 );
setRotateKey( spep_5 -3 + 28, 1, 98.3 );
setRotateKey( spep_5 -3 + 30, 1, 98.5 );
setRotateKey( spep_5 -3 + 32, 1, 98.7 );
setRotateKey( spep_5 -3 + 34, 1, 98.8 );
setRotateKey( spep_5 -3 + 36, 1, 98.9 );
setRotateKey( spep_5 -3 + 38, 1, 99 );
setRotateKey( spep_5 -3 + 40, 1, 99.1 );
setRotateKey( spep_5 -3 + 42, 1, 99.2 );
setRotateKey( spep_5 -3 + 44, 1, 99.3 );
setRotateKey( spep_5 -3 + 46, 1, 99.4 );
setRotateKey( spep_5 -3 + 48, 1, 99.5 );
setRotateKey( spep_5 -3 + 50, 1, 99.5 );
setRotateKey( spep_5 -3 + 52, 1, 99.6 );
setRotateKey( spep_5 -3 + 54, 1, 99.7 );
setRotateKey( spep_5 -3 + 56, 1, 99.7 );
setRotateKey( spep_5 -3 + 58, 1, 99.8 );
setRotateKey( spep_5 -3 + 60, 1, 99.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 236, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾降り注ぐ
playSe( spep_5 + 38, 1016 );
setSeVolume( spep_5 + 38, 1016, 126 );
playSe( spep_5 + 44, 1016 );
playSe( spep_5 + 50, 1016 );
playSe( spep_5 + 55, 1015 );

--爆発
playSe( spep_5 + 86, 1023 );
playSe( spep_5 + 88, 1159 );
setSeVolume( spep_5 + 88, 1159, 56 );
playSe( spep_5 + 95, 1017 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 84 );
endPhase( spep_5 + 234 -10 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 76, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 76, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 76, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 76, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.3, 1.3 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1.3, 1.3 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 76, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--前方ダッシュ
SE0 = playSe( spep_0 + 0, 9 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

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

-- ** 音 ** --
--前方ダッシュ
playSe( spep_0 + 69, 8 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- 蹴り(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_1 + 0, SP_02x, 76, 0x100, -1, 0, 0, 0 );  --蹴り(ef_002)
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 76, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 76, kick_f, 255 );

kick_b = entryEffectLife( spep_1 + 0, SP_03x, 76, 0x80, -1, 0, 0, 0 );  --蹴り(ef_003)
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 76, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 76, kick_b, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 46 -3, 906, 16, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 46 -3, shuchusen2, 16, 20 );

setEffMoveKey( spep_1 + 46 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 62 -3, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 46 -3, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 + 62 -3, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_1 + 46 -3, shuchusen2, 0 );
setEffRotateKey( spep_1 + 62 -3, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 46 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 62 -3, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_1 -3 + 46,  10019, 20, 0x100, -1, 0, 0, -0.1 );  --ドンッ
setEffMoveKey( spep_1 -3 + 46, ctdon, 0, -0.1 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctdon, -54.9, 128.3 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctdon, -93.8, 254 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctdon, -107, 267.8 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctdon, -98.5, 265.7 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctdon, -114.8, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctdon, -112.3, 284.7 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctdon, -122.7, 282.8 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctdon, -119.5, 305.9 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctdon, -122.6, 307.7 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctdon, -125.8, 322.6 , 0 );

setEffScaleKey( spep_1 -3 + 46, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 48, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 50, ctdon, 2, 2 );
setEffScaleKey( spep_1 -3 + 52, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 54, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 56, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 58, ctdon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 60, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 62, ctdon, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 64, ctdon, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 66, ctdon, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 46, ctdon, 0 );
setEffRotateKey( spep_1 -3 + 66, ctdon, 0 );

setEffAlphaKey( spep_1 -3 + 46, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 60, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 62, ctdon, 170 );
setEffAlphaKey( spep_1 -3 + 64, ctdon, 85 );
setEffAlphaKey( spep_1 -3 + 66, ctdon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 6, 1, 1 );
setDisp( spep_1 -3 + 60, 1, 0 );
changeAnime( spep_1 -3 + 6, 1, 118 );
changeAnime( spep_1 -3 + 40, 1, 107 );

setMoveKey( spep_1 -3 + 6, 1, 403.4, -79.2 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 306, -58.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 257.8, -48.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 222, -40.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 192.9, -34.5 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 168.2, -29.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 146.7, -24.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 127.6, -20.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 110.6, -17.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 95.2, -13.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 81.3, -10.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 68.7, -8.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 57.3, -5.8 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 47, -3.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 37.9, -1.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 29.9, 0 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 29.9, 0 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 181.7, -44.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 309.6, -48.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 196.4, -44.5 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 83.3, -40.7 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 156.5, -52.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 262.8, -71.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 333.1, -89.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 416.6, -110 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 575.6, -143.1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 772.1, -183.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 972.1, -233.9 , 0 );

setScaleKey( spep_1 -3 + 6, 1, 3, 3 );
setScaleKey( spep_1 -3 + 8, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 10, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 12, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 14, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 16, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 18, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 20, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 22, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 24, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 26, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 28, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 30, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 32, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 34, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 36, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 39, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 40, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 42, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 44, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 46, 1, 0.6, 0.6 );
setScaleKey( spep_1 -3 + 48, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 50, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 52, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 54, 1, 0.91, 0.91 );
setScaleKey( spep_1 -3 + 56, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 58, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 60, 1, 1.26, 1.26 );

setRotateKey( spep_1 -3 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 39, 1, 0 );
setRotateKey( spep_1 -3 + 40, 1, -80 );
setRotateKey( spep_1 -3 + 42, 1, -60 );
setRotateKey( spep_1 -3 + 44, 1, -65 );
setRotateKey( spep_1 -3 + 46, 1, -70 );
setRotateKey( spep_1 -3 + 48, 1, -67.1 );
setRotateKey( spep_1 -3 + 50, 1, -62.6 );
setRotateKey( spep_1 -3 + 52, 1, -56.7 );
setRotateKey( spep_1 -3 + 54, 1, -49.3 );
setRotateKey( spep_1 -3 + 56, 1, -40.5 );
setRotateKey( spep_1 -3 + 58, 1, -29.9 );
setRotateKey( spep_1 -3 + 60, 1, -29.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ドロップキック
playSe( spep_1 + 32, 1004 );
playSe( spep_1 + 37, 1189 );
playSe( spep_1 + 41, 1010 );
playSe( spep_1 + 44, 1110 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;

------------------------------------------------------
-- 気タメ(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_2 + 0, SP_04, 96, 0x100, -1, 0, 0, 0 );  --気タメ(ef_004)
setEffMoveKey( spep_2 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, kidame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kidame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, kidame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidame, 0 );
setEffRotateKey( spep_2 + 96, kidame, 0 );
setEffAlphaKey( spep_2 + 0, kidame, 255 );
setEffAlphaKey( spep_2 + 96, kidame, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 96, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 96, 20 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.3, 1.3 );
setEffScaleKey( spep_2 + 96, shuchusen3, 1.3, 1.3 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 96, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen3, 255 );

spep_x = spep_2 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +30, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +30, 515.5 , 0 );

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

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFade( spep_2 + 96 -12, 10, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め
playSe( spep_2 + 8, 49 );
SE1 = playSe( spep_2 + 18, 1037 );
setSeVolume( spep_2 + 18, 1037, 89 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

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
playSe( spep_3 + 0, SE_05 );

--気弾溜め
stopSe( spep_3 + 8, SE1, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾発射(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_4 + 0, SP_05, 56, 0x100, -1, 0, 0, 0 );  --気弾発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hassha, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 56, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 56, hassha, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0, 906, 14, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen4, 14, 20 );

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.3, 1.3 );
setEffScaleKey( spep_4 + 14, shuchusen4, 1.3, 1.3 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 14, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 -3 + 14,  10012, 24, 0x100, -1, 0, 214.7, 142 );  --ズオッ
setEffShake( spep_4 -3 + 30, ctzuo, 8, 20 );

setEffMoveKey( spep_4 -3 + 14, ctzuo, -214.7, 142 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctzuo, -282.5, 274.3 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctzuo, -281.6, 277.7 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctzuo, -290.3, 289 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctzuo, -289.5, 292.4 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctzuo, -298.2, 303.8 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctzuo, -297.3, 307.1 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctzuo, -306, 318.5 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctzuo, -305.2, 321.9 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzuo, -305.2, 321.9 , 0 );

setEffScaleKey( spep_4 -3 + 14, ctzuo, 0.38 +0.7, 0.38 +0.7 );
setEffScaleKey( spep_4 -3 + 16, ctzuo, 0.7 +1.7, 0.7 +1.7 );
setEffScaleKey( spep_4 -3 + 38, ctzuo, 0.7 +1.7, 0.7 +1.7 );

setEffRotateKey( spep_4 -3 + 14, ctzuo, -25 -3.5 );
setEffRotateKey( spep_4 -3 + 38, ctzuo, -25 -3.5 );

setEffAlphaKey( spep_4 -3 + 14, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 16, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 32, ctzuo, 198 );
setEffAlphaKey( spep_4 -3 + 34, ctzuo, 140 );
setEffAlphaKey( spep_4 -3 + 36, ctzuo, 83 );
setEffAlphaKey( spep_4 -3 + 38, ctzuo, 26 );

-- ** 白フェード ** --
entryFade( spep_4 + 56 -22, 20, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾投げる
playSe( spep_4 + 6, 1027 );
playSe( spep_4 + 6, 1016 );
playSe( spep_4 + 10, 1021 );
setSeVolume( spep_4 + 10, 1021, 79 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;

------------------------------------------------------
-- 気弾着弾から爆発(236F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 );  --気弾着弾から爆発(ef_006)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 236, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 236, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 236, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 236, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --気弾着弾から爆発(ef_007)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 236, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 236, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 236, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 236, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 60, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 64.2, 39.2 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 79.9, 33 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 91.1, 28.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 99.9, 25.1 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 107.2, 22.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 113.5, 19.7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 118.9, 17.6 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 123.6, 15.7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 127.9, 14 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 131.7, 12.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 135.1, 11.2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 138.2, 10 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 141, 8.9 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 143.5, 7.9 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 145.9, 6.9 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 148, 6.1 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 149.9, 5.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 151.7, 4.6 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 153.3, 4 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 154.8, 3.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 156.2, 2.9 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 157.4, 2.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 158.5, 1.9 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 159.6, 1.5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 160.5, 1.2 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 161.4, 0.8 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 162.1, 0.5 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 162.9, 0.2 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 163.5, -0.1 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 163.5, -0.1 , 0 );

setScaleKey( spep_5 + 0, 1, 2.97, 2.97 );
setScaleKey( spep_5 -3 + 4, 1, 2.55, 2.55 );
setScaleKey( spep_5 -3 + 6, 1, 2.25, 2.25 );
setScaleKey( spep_5 -3 + 8, 1, 2.01, 2.01 );
setScaleKey( spep_5 -3 + 10, 1, 1.81, 1.81 );
setScaleKey( spep_5 -3 + 12, 1, 1.65, 1.65 );
setScaleKey( spep_5 -3 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 16, 1, 1.37, 1.37 );
setScaleKey( spep_5 -3 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_5 -3 + 20, 1, 1.16, 1.16 );
setScaleKey( spep_5 -3 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_5 -3 + 24, 1, 0.98, 0.98 );
setScaleKey( spep_5 -3 + 26, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 28, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 32, 1, 0.72, 0.72 );
setScaleKey( spep_5 -3 + 34, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 36, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 38, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 42, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 44, 1, 0.47, 0.47 );
setScaleKey( spep_5 -3 + 46, 1, 0.43, 0.43 );
setScaleKey( spep_5 -3 + 48, 1, 0.41, 0.41 );
setScaleKey( spep_5 -3 + 50, 1, 0.38, 0.38 );
setScaleKey( spep_5 -3 + 52, 1, 0.36, 0.36 );
setScaleKey( spep_5 -3 + 54, 1, 0.34, 0.34 );
setScaleKey( spep_5 -3 + 56, 1, 0.32, 0.32 );
setScaleKey( spep_5 -3 + 58, 1, 0.3, 0.3 );
setScaleKey( spep_5 -3 + 60, 1, 0.3, 0.3 );

setRotateKey( spep_5 + 0, 1, 92.7 );
setRotateKey( spep_5 -3 + 4, 1, 93.8 );
setRotateKey( spep_5 -3 + 6, 1, 94.6 );
setRotateKey( spep_5 -3 + 8, 1, 95.2 );
setRotateKey( spep_5 -3 + 10, 1, 95.8 );
setRotateKey( spep_5 -3 + 12, 1, 96.2 );
setRotateKey( spep_5 -3 + 14, 1, 96.6 );
setRotateKey( spep_5 -3 + 16, 1, 96.9 );
setRotateKey( spep_5 -3 + 18, 1, 97.2 );
setRotateKey( spep_5 -3 + 20, 1, 97.5 );
setRotateKey( spep_5 -3 + 22, 1, 97.7 );
setRotateKey( spep_5 -3 + 24, 1, 98 );
setRotateKey( spep_5 -3 + 26, 1, 98.2 );
setRotateKey( spep_5 -3 + 28, 1, 98.3 );
setRotateKey( spep_5 -3 + 30, 1, 98.5 );
setRotateKey( spep_5 -3 + 32, 1, 98.7 );
setRotateKey( spep_5 -3 + 34, 1, 98.8 );
setRotateKey( spep_5 -3 + 36, 1, 98.9 );
setRotateKey( spep_5 -3 + 38, 1, 99 );
setRotateKey( spep_5 -3 + 40, 1, 99.1 );
setRotateKey( spep_5 -3 + 42, 1, 99.2 );
setRotateKey( spep_5 -3 + 44, 1, 99.3 );
setRotateKey( spep_5 -3 + 46, 1, 99.4 );
setRotateKey( spep_5 -3 + 48, 1, 99.5 );
setRotateKey( spep_5 -3 + 50, 1, 99.5 );
setRotateKey( spep_5 -3 + 52, 1, 99.6 );
setRotateKey( spep_5 -3 + 54, 1, 99.7 );
setRotateKey( spep_5 -3 + 56, 1, 99.7 );
setRotateKey( spep_5 -3 + 58, 1, 99.8 );
setRotateKey( spep_5 -3 + 60, 1, 99.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 236, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾降り注ぐ
playSe( spep_5 + 38, 1016 );
setSeVolume( spep_5 + 38, 1016, 126 );
playSe( spep_5 + 44, 1016 );
playSe( spep_5 + 50, 1016 );
playSe( spep_5 + 55, 1015 );

--爆発
playSe( spep_5 + 86, 1023 );
playSe( spep_5 + 88, 1159 );
setSeVolume( spep_5 + 88, 1159, 56 );
playSe( spep_5 + 95, 1017 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 84 );
endPhase( spep_5 + 234 -10 );

end
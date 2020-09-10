--超サイヤ人ゴッドベジータ_ライトニングバースト

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
SP_01 = 153208;  --溜め
SP_02 = 153209;  --連撃　手前
SP_03 = 153210;  --連撃　奥
SP_04 = 153211;  --ピンボール　手前
SP_05 = 153212;  --ピンボール　奥
SP_06 = 153213;  --強パンチ　手前
SP_07 = 153214;  --強パンチ　奥

--敵側
SP_05r = 153215;  --ピンボール　奥
SP_06r = 153216;  --強パンチ　手前

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
-- 気溜め(158F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 158, 0, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 158, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 158, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 158, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 158, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 158, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 158, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 158, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 158, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 158, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 158, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 42, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 42, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_0 + 0,  10012, 44, 0x100, -1, 0, 68.4, 251.6 );  --ズオッ
setEffShake( spep_0 + 6, ctzuo, 30, 25 );

setEffMoveKey( spep_0 + 0, ctzuo, 68.4, 251.6 , 0 );
setEffMoveKey( spep_0 + 2, ctzuo, 86.3, 270.7 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo, 95, 299 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo, 119.3, 311.6 , 0 );
setEffMoveKey( spep_0 + 36, ctzuo, 119.3, 311.6 , 0 );
setEffMoveKey( spep_0 + 38, ctzuo, 130.3, 320.3 , 0 );
setEffMoveKey( spep_0 + 40, ctzuo, 122.5, 347.7 , 0 );
setEffMoveKey( spep_0 + 42, ctzuo, 152.4, 337.7 , 0 );
setEffMoveKey( spep_0 + 44, ctzuo, 163.3, 346.5 , 0 );

setEffScaleKey( spep_0 + 0, ctzuo, 0.23, 0.23 );
setEffScaleKey( spep_0 + 2, ctzuo, 0.78, 0.78 );
setEffScaleKey( spep_0 + 4, ctzuo, 1.33, 1.33 );
setEffScaleKey( spep_0 + 6, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_0 + 36, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_0 + 38, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_0 + 40, ctzuo, 3.21, 3.21 );
setEffScaleKey( spep_0 + 42, ctzuo, 3.86, 3.86 );
setEffScaleKey( spep_0 + 44, ctzuo, 4.5, 4.5 );

setEffRotateKey( spep_0 + 0, ctzuo, 27.2 );
setEffRotateKey( spep_0 + 44, ctzuo, 27.2 );

setEffAlphaKey( spep_0 + 0, ctzuo, 255 );
setEffAlphaKey( spep_0 + 36, ctzuo, 255 );
setEffAlphaKey( spep_0 + 38, ctzuo, 191 );
setEffAlphaKey( spep_0 + 40, ctzuo, 128 );
setEffAlphaKey( spep_0 + 42, ctzuo, 64 );
setEffAlphaKey( spep_0 + 44, ctzuo, 0 );

ctgogo = entryEffectLife( spep_0 + 58,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 58, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 58, ctgogo, -8.5, 515.5, 0 );
setEffMoveKey( spep_0 + 128, ctgogo, -8.5, 515.5, 0 );

setEffScaleKey( spep_0 + 58, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 118, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 120, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 122, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 124, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 126, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 58, ctgogo, 0 );
setEffRotateKey( spep_0 + 126, ctgogo, 0 );

setEffAlphaKey( spep_0 + 58, ctgogo, 255 );
setEffAlphaKey( spep_0 + 126, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 2, 50 );  --ズオッ
playSe( spep_0 + 58, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 158, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 148, 10, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 158;

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

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 連撃(238F)
------------------------------------------------------

-- ** エフェクト等 ** --
rengeki_f = entryEffectLife( spep_2 + 0, SP_02, 238, 0x100, -1, 0, 0, 0 );  --連撃　手前(ef_002)
setEffMoveKey( spep_2 + 0, rengeki_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 238, rengeki_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rengeki_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 238, rengeki_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rengeki_f, 0 );
setEffRotateKey( spep_2 + 238, rengeki_f, 0 );
setEffAlphaKey( spep_2 + 0, rengeki_f, 255 );
setEffAlphaKey( spep_2 + 238, rengeki_f, 255 );

rengeki_b = entryEffectLife( spep_2 + 0, SP_03, 238, 0x80, -1, 0, 0, 0 );  --連撃　奥(ef_003)
setEffMoveKey( spep_2 + 0, rengeki_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 238, rengeki_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rengeki_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 238, rengeki_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rengeki_b, 0 );
setEffRotateKey( spep_2 + 238, rengeki_b, 0 );
setEffAlphaKey( spep_2 + 0, rengeki_b, 255 );
setEffAlphaKey( spep_2 + 238, rengeki_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_2 + 0,  914, 74, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_2 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 74, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 1.2, 1.2 );
setEffScaleKey( spep_2 + 74, ryusen1, 1.2, 1.2 );

setEffRotateKey( spep_2 + 0, ryusen1, 0 );
setEffRotateKey( spep_2 + 74, ryusen1, 0 );

setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 68, ryusen1, 255 );
setEffAlphaKey( spep_2 + 74, ryusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 238, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE1 = playSe( spep_2 + 0, 9 );  --迫る音

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 14; --エンドフェイズのフレーム数を置き換える

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
a = 3;

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 94,  914, 72, 0x80, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_2 + 94, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 156, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 94, ryusen2, 1.2, 1.2 );
setEffScaleKey( spep_2 + 156, ryusen2, 1.2, 1.2 );

setEffRotateKey( spep_2 + 94, ryusen2, 0 );
setEffRotateKey( spep_2 + 156, ryusen2, 0 );

setEffAlphaKey( spep_2 + 94, ryusen2, 0 );
setEffAlphaKey( spep_2 + 102, ryusen2, 255 );
setEffAlphaKey( spep_2 + 156, ryusen2, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 68 -a,  906, 34, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 68 -a, shuchusen3, 34, 25 );

setEffMoveKey( spep_2 + 68 -a, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 102 -a, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 68 -a, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 102 -a, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 68 -a, shuchusen3, 0 );
setEffRotateKey( spep_2 + 102 -a, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 68 -a, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 94 -a, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 102 -a, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_2 + 158 -a,  906, 34, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 158 -a, shuchusen4, 34, 25 );

setEffMoveKey( spep_2 + 158 -a, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 192 -a, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2 + 158 -a, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_2 + 192 -a, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_2 + 158 -a, shuchusen4, 0 );
setEffRotateKey( spep_2 + 192 -a, shuchusen4, 0 );

setEffAlphaKey( spep_2 + 158 -a, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 186 -a, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 192 -a, shuchusen4, 0 );

-- ** 書き文字エントリー ** --
ctzun = entryEffectLife( spep_2 + 68 -a,  10016, 24, 0x100, -1, 0, 46.1, 388.4 );  --ズン
setEffMoveKey( spep_2 + 68 -a, ctzun, 46.1, 388.4 , 0 );
setEffMoveKey( spep_2 + 70 -a, ctzun, 46, 388.5 , 0 );
setEffMoveKey( spep_2 + 72 -a, ctzun, 39.8, 395 , 0 );
setEffMoveKey( spep_2 + 74 -a, ctzun, 45.9, 388.5 , 0 );
setEffMoveKey( spep_2 + 76 -a, ctzun, 40.8, 393.8 , 0 );
setEffMoveKey( spep_2 + 78 -a, ctzun, 45.9, 388.4 , 0 );
setEffMoveKey( spep_2 + 80 -a, ctzun, 40.8, 393.7 , 0 );
setEffMoveKey( spep_2 + 82 -a, ctzun, 45.8, 388.3 , 0 );
setEffMoveKey( spep_2 + 84 -a, ctzun, 40.7, 393.7 , 0 );
setEffMoveKey( spep_2 + 86 -a, ctzun, 40.7, 393.6 , 0 );
setEffMoveKey( spep_2 + 88 -a, ctzun, 45.8, 388.3 , 0 );
setEffMoveKey( spep_2 + 90 -a, ctzun, 40.6, 393.8 , 0 );
setEffMoveKey( spep_2 + 92 -a, ctzun, 45.7, 388.5 , 0 );

setEffScaleKey( spep_2 + 68 -a, ctzun, 1.73, 1.73 );
setEffScaleKey( spep_2 + 70 -a, ctzun, 3.54, 3.54 );
setEffScaleKey( spep_2 + 72 -a, ctzun, 3.01, 3.01 );
setEffScaleKey( spep_2 + 74 -a, ctzun, 2.47, 2.47 );
setEffScaleKey( spep_2 + 76 -a, ctzun, 2.47, 2.47 );
setEffScaleKey( spep_2 + 78 -a, ctzun, 2.48, 2.48 );
setEffScaleKey( spep_2 + 82 -a, ctzun, 2.48, 2.48 );
setEffScaleKey( spep_2 + 84 -a, ctzun, 2.49, 2.49 );
setEffScaleKey( spep_2 + 86 -a, ctzun, 2.49, 2.49 );
setEffScaleKey( spep_2 + 88 -a, ctzun, 2.5, 2.5 );
setEffScaleKey( spep_2 + 90 -a, ctzun, 2.5, 2.5 );
setEffScaleKey( spep_2 + 92 -a, ctzun, 2.51, 2.51 );

setEffRotateKey( spep_2 + 68 -a, ctzun, 4.4 );
setEffRotateKey( spep_2 + 76 -a, ctzun, 4.4 );
setEffRotateKey( spep_2 + 78 -a, ctzun, 4.3 );
setEffRotateKey( spep_2 + 82 -a, ctzun, 4.3 );
setEffRotateKey( spep_2 + 84 -a, ctzun, 4.2 );
setEffRotateKey( spep_2 + 86 -a, ctzun, 4.2 );
setEffRotateKey( spep_2 + 88 -a, ctzun, 4.3 );
setEffRotateKey( spep_2 + 90 -a, ctzun, 4.3 );
setEffRotateKey( spep_2 + 92 -a, ctzun, 4.4 );

setEffAlphaKey( spep_2 + 68 -a, ctzun, 255 );
setEffAlphaKey( spep_2 + 86 -a, ctzun, 255 );
setEffAlphaKey( spep_2 + 88 -a, ctzun, 174 );
setEffAlphaKey( spep_2 + 90 -a, ctzun, 94 );
setEffAlphaKey( spep_2 + 92 -a, ctzun, 13 );

ctbaki = entryEffectLife( spep_2 + 158 -a,  10020, 32, 0x100, -1, 0, 35.4, 383.6 );  --バキッ
setEffMoveKey( spep_2 + 158 -a, ctbaki, 35.4, 383.6 , 0 );
setEffMoveKey( spep_2 + 160 -a, ctbaki, 17.3, 407 , 0 );
setEffMoveKey( spep_2 + 162 -a, ctbaki, 35.4, 383.6 , 0 );
setEffMoveKey( spep_2 + 164 -a, ctbaki, 35.4, 383.5 , 0 );
setEffMoveKey( spep_2 + 166 -a, ctbaki, 23.5, 399.1 , 0 );
setEffMoveKey( spep_2 + 168 -a, ctbaki, 35.4, 383.5 , 0 );
setEffMoveKey( spep_2 + 170 -a, ctbaki, 23.7, 398.8 , 0 );
setEffMoveKey( spep_2 + 172 -a, ctbaki, 35.4, 383.5 , 0 );
setEffMoveKey( spep_2 + 174 -a, ctbaki, 24, 398.4 , 0 );
setEffMoveKey( spep_2 + 176 -a, ctbaki, 35.5, 383.6 , 0 );
setEffMoveKey( spep_2 + 178 -a, ctbaki, 24.3, 398.1 , 0 );
setEffMoveKey( spep_2 + 180 -a, ctbaki, 35.5, 383.6 , 0 );
setEffMoveKey( spep_2 + 182 -a, ctbaki, 24.6, 397.8 , 0 );
setEffMoveKey( spep_2 + 184 -a, ctbaki, 35.5, 383.6 , 0 );
setEffMoveKey( spep_2 + 186 -a, ctbaki, 24.7, 397.7 , 0 );
setEffMoveKey( spep_2 + 188 -a, ctbaki, 35.5, 383.6 , 0 );
setEffMoveKey( spep_2 + 190 -a, ctbaki, 35.5, 383.5 , 0 );

setEffScaleKey( spep_2 + 158 -a, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_2 + 160 -a, ctbaki, 3.47, 3.47 );
setEffScaleKey( spep_2 + 162 -a, ctbaki, 2.91, 2.91 );
setEffScaleKey( spep_2 + 164 -a, ctbaki, 2.34, 2.34 );
setEffScaleKey( spep_2 + 166 -a, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_2 + 168 -a, ctbaki, 2.29, 2.29 );
setEffScaleKey( spep_2 + 170 -a, ctbaki, 2.26, 2.26 );
setEffScaleKey( spep_2 + 172 -a, ctbaki, 2.24, 2.24 );
setEffScaleKey( spep_2 + 174 -a, ctbaki, 2.21, 2.21 );
setEffScaleKey( spep_2 + 176 -a, ctbaki, 2.18, 2.18 );
setEffScaleKey( spep_2 + 178 -a, ctbaki, 2.16, 2.16 );
setEffScaleKey( spep_2 + 180 -a, ctbaki, 2.13, 2.13 );
setEffScaleKey( spep_2 + 182 -a, ctbaki, 2.11, 2.11 );
setEffScaleKey( spep_2 + 184 -a, ctbaki, 2.08, 2.08 );
setEffScaleKey( spep_2 + 186 -a, ctbaki, 2.09, 2.09 );
setEffScaleKey( spep_2 + 188 -a, ctbaki, 2.11, 2.11 );
setEffScaleKey( spep_2 + 190 -a, ctbaki, 2.12, 2.12 );

setEffRotateKey( spep_2 + 158 -a, ctbaki, 7.5 );
setEffRotateKey( spep_2 + 190 -a, ctbaki, 7.5 );

setEffAlphaKey( spep_2 + 158 -a, ctbaki, 255 );
setEffAlphaKey( spep_2 + 184 -a, ctbaki, 255 );
setEffAlphaKey( spep_2 + 186 -a, ctbaki, 174 );
setEffAlphaKey( spep_2 + 188 -a, ctbaki, 94 );
setEffAlphaKey( spep_2 + 190 -a, ctbaki, 13 );

ctshun = entryEffectLife( spep_2 + 210 -a,  10011, 16, 0x100, -1, 0, -150, 64.6 );  --シュン
setEffMoveKey( spep_2 + 210 -a, ctshun, -150, 64.6 , 0 );
setEffMoveKey( spep_2 + 212 -a, ctshun, -149.9, 64.7 , 0 );
setEffMoveKey( spep_2 + 214 -a, ctshun, -149.8, 64.6 , 0 );
setEffMoveKey( spep_2 + 216 -a, ctshun, -149.8, 64.6 , 0 );
setEffMoveKey( spep_2 + 218 -a, ctshun, -149.8, 64.5 , 0 );
setEffMoveKey( spep_2 + 220 -a, ctshun, -149.8, 64.6 , 0 );
setEffMoveKey( spep_2 + 222 -a, ctshun, -149.9, 64.6 , 0 );
setEffMoveKey( spep_2 + 224 -a, ctshun, -149.9, 64.6 , 0 );
setEffMoveKey( spep_2 + 226 -a, ctshun, -150, 64.7 , 0 );

setEffScaleKey( spep_2 + 210 -a, ctshun, 1.25, 1.25 );
setEffScaleKey( spep_2 + 212 -a, ctshun, 2.1, 2.1 );
setEffScaleKey( spep_2 + 214 -a, ctshun, 1.86, 1.86 );
setEffScaleKey( spep_2 + 216 -a, ctshun, 1.62, 1.62 );
setEffScaleKey( spep_2 + 218 -a, ctshun, 1.38, 1.38 );
setEffScaleKey( spep_2 + 220 -a, ctshun, 1.36, 1.36 );
setEffScaleKey( spep_2 + 222 -a, ctshun, 1.34, 1.34 );
setEffScaleKey( spep_2 + 224 -a, ctshun, 1.31, 1.31 );
setEffScaleKey( spep_2 + 226 -a, ctshun, 1.29, 1.29 );

setEffRotateKey( spep_2 + 210 -a, ctshun, 22.5 );
setEffRotateKey( spep_2 + 226 -a, ctshun, 22.5 );

setEffAlphaKey( spep_2 + 210 -a, ctshun, 255 );
setEffAlphaKey( spep_2 + 218 -a, ctshun, 255 );
setEffAlphaKey( spep_2 + 220 -a, ctshun, 191 );
setEffAlphaKey( spep_2 + 222 -a, ctshun, 128 );
setEffAlphaKey( spep_2 + 224 -a, ctshun, 64 );
setEffAlphaKey( spep_2 + 226 -a, ctshun, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 234, 1, 0 );
changeAnime( spep_2 + 2 -a, 1, 104 );  --ガード
changeAnime( spep_2 + 68 -a, 1, 108 );  --くの字
changeAnime( spep_2 + 96 -a, 1, 106 );  --仰け反り
changeAnime( spep_2 + 158 -a, 1, 108 );  --くの字

setMoveKey( spep_2 + 0, 1, 1361.5, 56.5 , 0 );
setMoveKey( spep_2 + 4 -a, 1, 1330.3, 55.2 , 0 );
setMoveKey( spep_2 + 6 -a, 1, 1299, 53.9 , 0 );
setMoveKey( spep_2 + 8 -a, 1, 1267.8, 52.6 , 0 );
setMoveKey( spep_2 + 10 -a, 1, 1236.6, 51.3 , 0 );
setMoveKey( spep_2 + 12 -a, 1, 1205.4, 50 , 0 );
setMoveKey( spep_2 + 14 -a, 1, 1174.2, 48.7 , 0 );
setMoveKey( spep_2 + 16 -a, 1, 1143, 47.4 , 0 );
setMoveKey( spep_2 + 18 -a, 1, 1111.8, 46.1 , 0 );
setMoveKey( spep_2 + 20 -a, 1, 1080.6, 44.8 , 0 );
setMoveKey( spep_2 + 22 -a, 1, 1049.4, 43.5 , 0 );
setMoveKey( spep_2 + 24 -a, 1, 1018.2, 42.2 , 0 );
setMoveKey( spep_2 + 26 -a, 1, 987, 40.9 , 0 );
setMoveKey( spep_2 + 28 -a, 1, 955.8, 39.6 , 0 );
setMoveKey( spep_2 + 30 -a, 1, 946, 39.2 , 0 );
setMoveKey( spep_2 + 32 -a, 1, 936.3, 38.8 , 0 );
setMoveKey( spep_2 + 34 -a, 1, 926.6, 38.3 , 0 );
setMoveKey( spep_2 + 36 -a, 1, 916.8, 37.9 , 0 );
setMoveKey( spep_2 + 38 -a, 1, 867.3, 37.5 , 0 );
setMoveKey( spep_2 + 40 -a, 1, 815.9, 37.1 , 0 );
setMoveKey( spep_2 + 42 -a, 1, 762.8, 36.7 , 0 );
setMoveKey( spep_2 + 44 -a, 1, 707.9, 36.3 , 0 );
setMoveKey( spep_2 + 46 -a, 1, 651.5, 35.9 , 0 );
setMoveKey( spep_2 + 48 -a, 1, 593.5, 35.5 , 0 );
setMoveKey( spep_2 + 50 -a, 1, 534.1, 35.1 , 0 );
setMoveKey( spep_2 + 52 -a, 1, 473.3, 34.7 , 0 );
setMoveKey( spep_2 + 54 -a, 1, 411.3, 34.3 , 0 );
setMoveKey( spep_2 + 56 -a, 1, 348.1, 33.9 , 0 );
setMoveKey( spep_2 + 58 -a, 1, 283.9, 33.5 , 0 );
setMoveKey( spep_2 + 60 -a, 1, 218.7, 33.1 , 0 );
setMoveKey( spep_2 + 62 -a, 1, 152.6, 32.7 , 0 );
setMoveKey( spep_2 + 64 -a, 1, 85.6, 32.3 , 0 );
setMoveKey( spep_2 + 66 -a, 1, 18, 31.9 , 0 );
setMoveKey( spep_2 + 67 -a, 1, 18, 31.9 , 0 );
setMoveKey( spep_2 + 68 -a, 1, 115.9, 69.2 , 0 );  --くの字
setMoveKey( spep_2 + 70 -a, 1, 125.7, 71.3 , 0 );
setMoveKey( spep_2 + 72 -a, 1, 133.4, 72.8 , 0 );
setMoveKey( spep_2 + 74 -a, 1, 132.5, 73.9 , 0 );
setMoveKey( spep_2 + 76 -a, 1, 138, 73.9 , 0 );
setMoveKey( spep_2 + 78 -a, 1, 141.3, 65.8 , 0 );
setMoveKey( spep_2 + 80 -a, 1, 147, 73.6 , 0 );
setMoveKey( spep_2 + 82 -a, 1, 147.2, 71.8 , 0 );
setMoveKey( spep_2 + 84 -a, 1, 152.9, 73.2 , 0 );
setMoveKey( spep_2 + 86 -a, 1, 152.8, 66.5 , 0 );
setMoveKey( spep_2 + 88 -a, 1, 154.9, 72.6 , 0 );
setMoveKey( spep_2 + 90 -a, 1, 151.1, 70.6 , 0 );
setMoveKey( spep_2 + 92 -a, 1, 152.5, 71.9 , 0 );
setMoveKey( spep_2 + 94 -a, 1, 143.1, 69.8 , 0 );
setMoveKey( spep_2 + 95 -a, 1, 143.1, 69.8 , 0 );
setMoveKey( spep_2 + 96 -a, 1, 159.3, 90 , 0 );  --仰け反り
setMoveKey( spep_2 + 98 -a, 1, 97.4, 77.7 , 0 );
setMoveKey( spep_2 + 100 -a, 1, 36.6, 75.1 , 0 );
setMoveKey( spep_2 + 102 -a, 1, -31.2, 66.1 , 0 );
setMoveKey( spep_2 + 104 -a, 1, -94.7, 60.3 , 0 );
setMoveKey( spep_2 + 106 -a, 1, -79.3, 56.3 , 0 );
setMoveKey( spep_2 + 108 -a, 1, -69.2, 61.8 , 0 );
setMoveKey( spep_2 + 110 -a, 1, -63.9, 59.4 , 0 );
setMoveKey( spep_2 + 112 -a, 1, -52.2, 63.4 , 0 );
setMoveKey( spep_2 + 114 -a, 1, -45.3, 61 , 0 );
setMoveKey( spep_2 + 116 -a, 1, -35.2, 65 , 0 );
setMoveKey( spep_2 + 118 -a, 1, -29.9, 62.6 , 0 );
setMoveKey( spep_2 + 120 -a, 1, -18.2, 66.5 , 0 );
setMoveKey( spep_2 + 122 -a, 1, -11.3, 65.7 , 0 );
setMoveKey( spep_2 + 124 -a, 1, -1.2, 68.1 , 0 );
setMoveKey( spep_2 + 126 -a, 1, 7.3, 68.9 , 0 );
setMoveKey( spep_2 + 128 -a, 1, 15.8, 69.7 , 0 );
setMoveKey( spep_2 + 130 -a, 1, 24.3, 70.5 , 0 );
setMoveKey( spep_2 + 132 -a, 1, 32.8, 71.2 , 0 );
setMoveKey( spep_2 + 134 -a, 1, 41.3, 72 , 0 );
setMoveKey( spep_2 + 136 -a, 1, 49.9, 75.3 , 0 );
setMoveKey( spep_2 + 138 -a, 1, 58.6, 78.6 , 0 );
setMoveKey( spep_2 + 140 -a, 1, 67.2, 81.9 , 0 );
setMoveKey( spep_2 + 142 -a, 1, 75.8, 85.1 , 0 );
setMoveKey( spep_2 + 144 -a, 1, 84.5, 88.4 , 0 );
setMoveKey( spep_2 + 146 -a, 1, 93.2, 91.7 , 0 );
setMoveKey( spep_2 + 148 -a, 1, 101.9, 95 , 0 );
setMoveKey( spep_2 + 150 -a, 1, 110.5, 98.2 , 0 );
setMoveKey( spep_2 + 152 -a, 1, 119.2, 101.5 , 0 );
setMoveKey( spep_2 + 154 -a, 1, 127.9, 104.8 , 0 );
setMoveKey( spep_2 + 156 -a, 1, 136.7, 108.1 , 0 );
setMoveKey( spep_2 + 157 -a, 1, 136.7, 108.1 , 0 );
setMoveKey( spep_2 + 158 -a, 1, 270.9, 111.1 , 0 );  --くの字
setMoveKey( spep_2 + 160 -a, 1, 259.2, 112.8 , 0 );
setMoveKey( spep_2 + 162 -a, 1, 230.4, 92.5 , 0 );
setMoveKey( spep_2 + 164 -a, 1, 224.4, 82.2 , 0 );
setMoveKey( spep_2 + 166 -a, 1, 219.6, 75.3 , 0 );
setMoveKey( spep_2 + 168 -a, 1, 222.7, 92.2 , 0 );
setMoveKey( spep_2 + 170 -a, 1, 213.7, 89.1 , 0 );
setMoveKey( spep_2 + 172 -a, 1, 220.7, 101.9 , 0 );
setMoveKey( spep_2 + 174 -a, 1, 215.6, 102.5 , 0 );
setMoveKey( spep_2 + 176 -a, 1, 218.4, 111 , 0 );
setMoveKey( spep_2 + 178 -a, 1, 201.1, 107.5 , 0 );
setMoveKey( spep_2 + 180 -a, 1, 215.8, 119.8 , 0 );
setMoveKey( spep_2 + 182 -a, 1, 210.4, 111.9 , 0 );
setMoveKey( spep_2 + 184 -a, 1, 213, 128 , 0 );
setMoveKey( spep_2 + 186 -a, 1, 207.5, 128 , 0 );
setMoveKey( spep_2 + 188 -a, 1, 209.9, 135.8 , 0 );
setMoveKey( spep_2 + 190 -a, 1, 121.2, 76.1 , 0 );
setMoveKey( spep_2 + 192 -a, 1, 284.3, 320.9 , 0 );
setMoveKey( spep_2 + 194 -a, 1, 391.8, 484.4 , 0 );
setMoveKey( spep_2 + 196 -a, 1, 483.8, 615.5 , 0 );
setMoveKey( spep_2 + 198 -a, 1, 581.7, 748.7 , 0 );
setMoveKey( spep_2 + 200 -a, 1, 656, 853.8 , 0 );
setMoveKey( spep_2 + 202 -a, 1, 709.4, 932 , 0 );
setMoveKey( spep_2 + 204 -a, 1, 748.8, 992.9 , 0 );
setMoveKey( spep_2 + 206 -a, 1, 766, 1025.4 , 0 );
setMoveKey( spep_2 + 208 -a, 1, 774, 1046.9 , 0 );
setMoveKey( spep_2 + 210 -a, 1, 770.3, 1050.8 , 0 );
setMoveKey( spep_2 + 212 -a, 1, 754.8, 1039.5 , 0 );
setMoveKey( spep_2 + 214 -a, 1, 738.6, 1025.2 , 0 );
setMoveKey( spep_2 + 216 -a, 1, 703.1, 989.6 , 0 );
setMoveKey( spep_2 + 218 -a, 1, 671.8, 952.4 , 0 );
setMoveKey( spep_2 + 220 -a, 1, 636.7, 912.4 , 0 );
setMoveKey( spep_2 + 222 -a, 1, 603.4, 874.4 , 0 );
setMoveKey( spep_2 + 224 -a, 1, 581.1, 849.2 , 0 );
setMoveKey( spep_2 + 226 -a, 1, 561.5, 825.2 , 0 );
setMoveKey( spep_2 + 228 -a, 1, 542.5, 803.9 , 0 );
setMoveKey( spep_2 + 230 -a, 1, 526, 783.8 , 0 );
setMoveKey( spep_2 + 232 -a, 1, 510.1, 766.5 , 0 );
setMoveKey( spep_2 + 234, 1, 496.9, 750.4 , 0 );

setScaleKey( spep_2 + 2, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 4 -a, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 6 -a, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 8 -a, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 10 -a, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 12 -a, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 14 -a, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 16 -a, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 18 -a, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 20 -a, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 22 -a, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 24 -a, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 26 -a, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 28 -a, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 30 -a, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 32 -a, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 34 -a, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 36 -a, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 38 -a, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 40 -a, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 42 -a, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 44 -a, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 46 -a, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 48 -a, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 50 -a, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 52 -a, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 54 -a, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 56 -a, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 58 -a, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 60 -a, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 62 -a, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 64 -a, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 66 -a, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 67 -a, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 68 -a, 1, 2.66, 2.66 );  --くの字
setScaleKey( spep_2 + 70 -a, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 72 -a, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 74 -a, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 76 -a, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 78 -a, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 80 -a, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 82 -a, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 84 -a, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 86 -a, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 88 -a, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 90 -a, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 92 -a, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 94 -a, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 95 -a, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 96 -a, 1, 1.19, 1.19 );  --仰け反り
setScaleKey( spep_2 + 98 -a, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 100 -a, 1, 1, 1 );
setScaleKey( spep_2 + 102 -a, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 104 -a, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 106 -a, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 108 -a, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 110 -a, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 112 -a, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 114 -a, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 116 -a, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 118 -a, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 120 -a, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 122 -a, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 124 -a, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 126 -a, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 128 -a, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 130 -a, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 132 -a, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 134 -a, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 136 -a, 1, 1, 1 );
setScaleKey( spep_2 + 138 -a, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 140 -a, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 142 -a, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 144 -a, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 146 -a, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 148 -a, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 150 -a, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 152 -a, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 154 -a, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 156 -a, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 157 -a, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 158 -a, 1, 3.84, 3.84 );  --くの字
setScaleKey( spep_2 + 160 -a, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 162 -a, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 164 -a, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 166 -a, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 168 -a, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 170 -a, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 172 -a, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 174 -a, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 176 -a, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 178 -a, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 180 -a, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 182 -a, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 184 -a, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 186 -a, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 188 -a, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 190 -a, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 192 -a, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 194 -a, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 196 -a, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 198 -a, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 200 -a, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 202 -a, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 204 -a, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 206 -a, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 208 -a, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 210 -a, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 212 -a, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 214 -a, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 216 -a, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 218 -a, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 220 -a, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 228 -a, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 230 -a, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 234, 1, 0.09, 0.09 );

setRotateKey( spep_2 + 2, 1, 0 );
setRotateKey( spep_2 + 67 -a, 1, 0 );
setRotateKey( spep_2 + 68 -a, 1, -1.2 );  --くの字
setRotateKey( spep_2 + 70 -a, 1, -1.1 );
setRotateKey( spep_2 + 82 -a, 1, -1.1 );
setRotateKey( spep_2 + 84 -a, 1, -1.2 );
setRotateKey( spep_2 + 94 -a, 1, -1.2 );
setRotateKey( spep_2 + 95 -a, 1, -1.2 );
setRotateKey( spep_2 + 96 -a, 1, -9.7 );  --仰け反り
setRotateKey( spep_2 + 98 -a, 1, -8.9 );
setRotateKey( spep_2 + 100 -a, 1, -8.2 );
setRotateKey( spep_2 + 102 -a, 1, -7.4 );
setRotateKey( spep_2 + 104 -a, 1, -6.7 );
setRotateKey( spep_2 + 106 -a, 1, -5.9 );
setRotateKey( spep_2 + 108 -a, 1, -5.8 );
setRotateKey( spep_2 + 110 -a, 1, -5.7 );
setRotateKey( spep_2 + 112 -a, 1, -5.7 );
setRotateKey( spep_2 + 114 -a, 1, -5.6 );
setRotateKey( spep_2 + 116 -a, 1, -5.5 );
setRotateKey( spep_2 + 118 -a, 1, -5.4 );
setRotateKey( spep_2 + 120 -a, 1, -5.3 );
setRotateKey( spep_2 + 122 -a, 1, -5.3 );
setRotateKey( spep_2 + 124 -a, 1, -5.2 );
setRotateKey( spep_2 + 126 -a, 1, -5.1 );
setRotateKey( spep_2 + 128 -a, 1, -5 );
setRotateKey( spep_2 + 130 -a, 1, -4.9 );
setRotateKey( spep_2 + 132 -a, 1, -4.9 );
setRotateKey( spep_2 + 134 -a, 1, -4.8 );
setRotateKey( spep_2 + 136 -a, 1, -4.7 );
setRotateKey( spep_2 + 138 -a, 1, -4.6 );
setRotateKey( spep_2 + 140 -a, 1, -4.5 );
setRotateKey( spep_2 + 142 -a, 1, -4.5 );
setRotateKey( spep_2 + 144 -a, 1, -4.4 );
setRotateKey( spep_2 + 146 -a, 1, -4.3 );
setRotateKey( spep_2 + 148 -a, 1, -4.2 );
setRotateKey( spep_2 + 150 -a, 1, -4.1 );
setRotateKey( spep_2 + 152 -a, 1, -4.1 );
setRotateKey( spep_2 + 154 -a, 1, -4 );
setRotateKey( spep_2 + 156 -a, 1, -3.9 );
setRotateKey( spep_2 + 157 -a, 1, -3.9 );
setRotateKey( spep_2 + 158 -a, 1, -21.7 );  --くの字
setRotateKey( spep_2 + 160 -a, 1, -20.6 );
setRotateKey( spep_2 + 162 -a, 1, -19.6 );
setRotateKey( spep_2 + 164 -a, 1, -18.5 );
setRotateKey( spep_2 + 170 -a, 1, -18.5 );
setRotateKey( spep_2 + 172 -a, 1, -18.6 );
setRotateKey( spep_2 + 182 -a, 1, -18.6 );
setRotateKey( spep_2 + 184 -a, 1, -18.7 );
setRotateKey( spep_2 + 188 -a, 1, -18.7 );
setRotateKey( spep_2 + 190 -a, 1, -18.5 );
setRotateKey( spep_2 + 192 -a, 1, -18.4 );
setRotateKey( spep_2 + 194 -a, 1, -18.3 );
setRotateKey( spep_2 + 196 -a, 1, -18.2 );
setRotateKey( spep_2 + 198 -a, 1, -18.4 );
setRotateKey( spep_2 + 200 -a, 1, -18.6 );
setRotateKey( spep_2 + 202 -a, 1, -18.7 );
setRotateKey( spep_2 + 204 -a, 1, -18.9 );
setRotateKey( spep_2 + 206 -a, 1, -19 );
setRotateKey( spep_2 + 208 -a, 1, -19.2 );
setRotateKey( spep_2 + 210 -a, 1, -19.3 );
setRotateKey( spep_2 + 212 -a, 1, -19.4 );
setRotateKey( spep_2 + 214 -a, 1, -19.5 );
setRotateKey( spep_2 + 216 -a, 1, -19.7 );
setRotateKey( spep_2 + 218 -a, 1, -19.7 );
setRotateKey( spep_2 + 220 -a, 1, -19.8 );
setRotateKey( spep_2 + 222 -a, 1, -19.9 );
setRotateKey( spep_2 + 224 -a, 1, -20 );
setRotateKey( spep_2 + 226 -a, 1, -20 );
setRotateKey( spep_2 + 228 -a, 1, -20.1 );
setRotateKey( spep_2 + 230 -a, 1, -20.1 );
setRotateKey( spep_2 + 232 -a, 1, -20.2 );
setRotateKey( spep_2 + 234, 1, -20.2 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 68 -a, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_2 + 158 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_2 + 226, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 68 -a, 1010 );  --ズン
playSe( spep_2 + 158 -a, 1011 );  --バキッ
playSe( spep_2 + 210 -a, 43 );  --シュン

-- ** 次の準備 ** --
spep_3 = spep_2 + 238;

------------------------------------------------------
-- ピンボール(146F)
------------------------------------------------------

-- ** エフェクト等 ** --
pin_f = entryEffectLife( spep_3 + 0, SP_04, 146, 0x100, -1, 0, 0, 0 );  --ピンボール　手前(ef_004)
setEffMoveKey( spep_3 + 0, pin_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, pin_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, pin_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, pin_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, pin_f, 0 );
setEffRotateKey( spep_3 + 146, pin_f, 0 );
setEffAlphaKey( spep_3 + 0, pin_f, 255 );
setEffAlphaKey( spep_3 + 145, pin_f, 255 );
setEffAlphaKey( spep_3 + 146, pin_f, 0 );

pin_b = entryEffectLife( spep_3 + 0, SP_05, 146, 0x80, -1, 0, 0, 0 );  --ピンボール　奥(ef_005)
setEffMoveKey( spep_3 + 0, pin_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, pin_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, pin_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, pin_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, pin_b, 0 );
setEffRotateKey( spep_3 + 146, pin_b, 0 );
setEffAlphaKey( spep_3 + 0, pin_b, 255 );
setEffAlphaKey( spep_3 + 145, pin_b, 255 );
setEffAlphaKey( spep_3 + 146, pin_f, 0 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_3 + 0,  906, 146, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen5, 146, 25 );

setEffMoveKey( spep_3 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_3 + 110, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_3 + 146, shuchusen5, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, shuchusen5, 0 );
setEffRotateKey( spep_3 + 146, shuchusen5, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 145, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 146, shuchusen5, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 115, 1, 0 );
changeAnime( spep_3 + 0, 1, 108 );  --くの字
changeAnime( spep_3 + 14 -a, 1, 107 );  --手前吹っ飛び
changeAnime( spep_3 + 30 -a, 1, 8 );  --くの字　味方
changeAnime( spep_3 + 44 -a, 1, 106 );  --仰け反り
changeAnime( spep_3 + 56 -a, 1, 108 );  --くの字
changeAnime( spep_3 + 66 -a, 1, 7 );  --仰け反り　味方

setMoveKey( spep_3 + 0, 1, -810, -270.9 , 0 );
setMoveKey( spep_3 + 4 -a, 1, -645.9, -109.4 , 0 );
setMoveKey( spep_3 + 6 -a, 1, -501.9, 32.4 , 0 );
setMoveKey( spep_3 + 8 -a, 1, -378.2, 154.5 , 0 );
setMoveKey( spep_3 + 10 -a, 1, -274.5, 256.8 , 0 );
setMoveKey( spep_3 + 13 -a, 1, -194.9, 334.4 , 0 );
setMoveKey( spep_3 + 14 -a, 1, -200.7, 331.2 , 0 );  --手前吹っ飛び
setMoveKey( spep_3 + 16 -a, 1, -78.9, 198 , 0 );
setMoveKey( spep_3 + 18 -a, 1, 36.4, 89.5 , 0 );
setMoveKey( spep_3 + 20 -a, 1, 137.3, -20.3 , 0 );
setMoveKey( spep_3 + 22 -a, 1, 231.7, -109.4 , 0 );
setMoveKey( spep_3 + 24 -a, 1, 313.6, -192.7 , 0 );
setMoveKey( spep_3 + 26 -a, 1, 384.9, -265.3 , 0 );
setMoveKey( spep_3 + 29 -a, 1, 444.7, -334.1 , 0 );
setMoveKey( spep_3 + 30 -a, 1, 363.7, -394.6 , 0 );  --くの字　味方
setMoveKey( spep_3 + 32 -a, 1, 168.3, -327 , 0 );
setMoveKey( spep_3 + 34 -a, 1, 3.9, -258.6 , 0 );
setMoveKey( spep_3 + 36 -a, 1, -149.6, -208.3 , 0 );
setMoveKey( spep_3 + 38 -a, 1, -280.2, -151.2 , 0 );
setMoveKey( spep_3 + 40 -a, 1, -395.9, -111.2 , 0 );
setMoveKey( spep_3 + 43 -a, 1, -488.6, -72.4 , 0 );
setMoveKey( spep_3 + 44 -a, 1, -469.8, -59.2 , 0 );  --仰け反り
setMoveKey( spep_3 + 46 -a, 1, -400, 56 , 0 );
setMoveKey( spep_3 + 48 -a, 1, -341.5, 147.9 , 0 );
setMoveKey( spep_3 + 50 -a, 1, -287.3, 234.6 , 0 );
setMoveKey( spep_3 + 52 -a, 1, -247.5, 302.1 , 0 );
setMoveKey( spep_3 + 55 -a, 1, -208.1, 360.3 , 0 );
setMoveKey( spep_3 + 56 -a, 1, -179.8, 360.5 , 0 );  --くの字
setMoveKey( spep_3 + 58 -a, 1, -24.4, 277.6 , 0 );
setMoveKey( spep_3 + 60 -a, 1, 99.1, 201.5 , 0 );
setMoveKey( spep_3 + 62 -a, 1, 200.6, 151.2 , 0 );
setMoveKey( spep_3 + 65 -a, 1, 269, 108.7 , 0 );
setMoveKey( spep_3 + 66 -a, 1, 266.4, 106.2 , 0 );  --仰け反り　味方
setMoveKey( spep_3 + 68 -a, 1, 221, 47.1 , 0 );
setMoveKey( spep_3 + 70 -a, 1, 177.6, -2 , 0 );
setMoveKey( spep_3 + 72 -a, 1, 130.2, -58.2 , 0 );
setMoveKey( spep_3 + 74 -a, 1, 87.8, -112.4 , 0 );
setMoveKey( spep_3 + 76 -a, 1, 44.4, -164.6 , 0 );
setMoveKey( spep_3 + 78 -a, 1, -1, -222.9 , 0 );
setMoveKey( spep_3 + 80 -a, 1, -19.7, -243.2 , 0 );
setMoveKey( spep_3 + 82 -a, 1, -43.5, -269.5 , 0 );
setMoveKey( spep_3 + 84 -a, 1, -59.2, -291.8 , 0 );
setMoveKey( spep_3 + 86 -a, 1, -79.9, -321 , 0 );
setMoveKey( spep_3 + 88 -a, 1, -98.6, -340.3 , 0 );
setMoveKey( spep_3 + 90 -a, 1, -118.5, -371.5 , 0 );
setMoveKey( spep_3 + 92 -a, 1, -132.4, -398.6 , 0 );
setMoveKey( spep_3 + 94 -a, 1, -151.3, -431.8 , 0 );
setMoveKey( spep_3 + 96 -a, 1, -166.2, -456.9 , 0 );
setMoveKey( spep_3 + 98 -a, 1, -186.1, -488.1 , 0 );
setMoveKey( spep_3 + 100 -a, 1, -200, -515.2 , 0 );
setMoveKey( spep_3 + 102 -a, 1, -217.9, -549.3 , 0 );
setMoveKey( spep_3 + 104 -a, 1, -233.7, -573.5 , 0 );
setMoveKey( spep_3 + 106 -a, 1, -252.6, -604.6 , 0 );
setMoveKey( spep_3 + 108 -a, 1, -275.2, -653.1 , 0 );
setMoveKey( spep_3 + 110 -a, 1, -296.4, -699.4 , 0 );
setMoveKey( spep_3 + 112 -a, 1, -311, -726.5 , 0 );
setMoveKey( spep_3 + 115, 1, -328.2, -752.5 , 0 );

setScaleKey( spep_3 + 0, 1, 4.79, 4.79 );
setScaleKey( spep_3 + 4 -a, 1, 3.67, 3.67 );
setScaleKey( spep_3 + 6 -a, 1, 2.68, 2.68 );
setScaleKey( spep_3 + 8 -a, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 10 -a, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 13 -a, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 14 -a, 1, 0.34, 0.34 );  --手前吹っ飛び
setScaleKey( spep_3 + 16 -a, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 18 -a, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 20 -a, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 22 -a, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 24 -a, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 26 -a, 1, 2.13, 2.13 );
setScaleKey( spep_3 + 29 -a, 1, 2.32, 2.32 );
setScaleKey( spep_3 + 30 -a, 1, 2.74, 2.74 );  --くの字　味方
setScaleKey( spep_3 + 32 -a, 1, 2.43, 2.43 );
setScaleKey( spep_3 + 34 -a, 1, 2.15, 2.15 );
setScaleKey( spep_3 + 36 -a, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 38 -a, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 40 -a, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 43 -a, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 44 -a, 1, 1.47, 1.47 );  --仰け反り
setScaleKey( spep_3 + 46 -a, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 48 -a, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 50 -a, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 52 -a, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 55 -a, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 56 -a, 1, 0.68, 0.68 );  --くの字
setScaleKey( spep_3 + 58 -a, 1, 0.49, 0.49 );
setScaleKey( spep_3 + 60 -a, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 62 -a, 1, 0.21, 0.21 );
setScaleKey( spep_3 + 65 -a, 1, 0.12, 0.12 );
setScaleKey( spep_3 + 66 -a, 1, 0.06, 0.06 );  --仰け反り　味方
setScaleKey( spep_3 + 68 -a, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 70 -a, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 72 -a, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 74 -a, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 76 -a, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 78 -a, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 80 -a, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 82 -a, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 84 -a, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 86 -a, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 88 -a, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 90 -a, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 92 -a, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 94 -a, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 96 -a, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 98 -a, 1, 1.88, 1.88 );
setScaleKey( spep_3 + 100 -a, 1, 1.97, 1.97 );
setScaleKey( spep_3 + 102 -a, 1, 2.06, 2.06 );
setScaleKey( spep_3 + 104 -a, 1, 2.15, 2.15 );
setScaleKey( spep_3 + 106 -a, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 108 -a, 1, 2.42, 2.42 );
setScaleKey( spep_3 + 110 -a, 1, 2.57, 2.57 );
setScaleKey( spep_3 + 112 -a, 1, 2.68, 2.68 );
setScaleKey( spep_3 + 115 -a, 1, 2.76, 2.76 );

setRotateKey( spep_3 + 0, 1, -19.2 );
setRotateKey( spep_3 + 4 -a, 1, -19.3 );
setRotateKey( spep_3 + 6 -a, 1, -19.5 );
setRotateKey( spep_3 + 8 -a, 1, -19.6 );
setRotateKey( spep_3 + 10 -a, 1, -19.7 );
setRotateKey( spep_3 + 13 -a, 1, -19.8 );
setRotateKey( spep_3 + 14 -a, 1, 0 );  --手前吹っ飛び
setRotateKey( spep_3 + 16 -a, 1, -3 );
setRotateKey( spep_3 + 18 -a, 1, -5.8 );
setRotateKey( spep_3 + 20 -a, 1, -8.3 );
setRotateKey( spep_3 + 22 -a, 1, -10.5 );
setRotateKey( spep_3 + 24 -a, 1, -12.5 );
setRotateKey( spep_3 + 26 -a, 1, -14.2 );
setRotateKey( spep_3 + 29 -a, 1, -15.7 );
setRotateKey( spep_3 + 30 -a, 1, -19.5 );  --くの字　味方
setRotateKey( spep_3 + 32 -a, 1, -19.3 );
setRotateKey( spep_3 + 34 -a, 1, -19.2 );
setRotateKey( spep_3 + 36 -a, 1, -19 );
setRotateKey( spep_3 + 38 -a, 1, -18.9 );
setRotateKey( spep_3 + 40 -a, 1, -18.8 );
setRotateKey( spep_3 + 43 -a, 1, -18.7 );
setRotateKey( spep_3 + 44 -a, 1, -23 );  --仰け反り
setRotateKey( spep_3 + 46 -a, 1, -23.1 );
setRotateKey( spep_3 + 48 -a, 1, -23.1 );
setRotateKey( spep_3 + 50 -a, 1, -23.2 );
setRotateKey( spep_3 + 52 -a, 1, -23.3 );
setRotateKey( spep_3 + 55 -a, 1, -23.3 );
setRotateKey( spep_3 + 56 -a, 1, 17.5 );  --くの字
setRotateKey( spep_3 + 58 -a, 1, 5.6 );
setRotateKey( spep_3 + 60 -a, 1, -4.2 );
setRotateKey( spep_3 + 62 -a, 1, -11.8 );
setRotateKey( spep_3 + 65 -a, 1, -17.2 );
setRotateKey( spep_3 + 66 -a, 1, -19.9 );  --仰け反り　味方
setRotateKey( spep_3 + 72 -a, 1, -19.9 );
setRotateKey( spep_3 + 74 -a, 1, -20 );
setRotateKey( spep_3 + 78 -a, 1, -20 );
setRotateKey( spep_3 + 80 -a, 1, -19.7 );
setRotateKey( spep_3 + 82 -a, 1, -19.4 );
setRotateKey( spep_3 + 84 -a, 1, -19.2 );
setRotateKey( spep_3 + 86 -a, 1, -18.9 );
setRotateKey( spep_3 + 88 -a, 1, -18.6 );
setRotateKey( spep_3 + 90 -a, 1, -18.4 );
setRotateKey( spep_3 + 92 -a, 1, -18.2 );
setRotateKey( spep_3 + 94 -a, 1, -18 );
setRotateKey( spep_3 + 96 -a, 1, -17.8 );
setRotateKey( spep_3 + 98 -a, 1, -17.7 );
setRotateKey( spep_3 + 100 -a, 1, -17.5 );
setRotateKey( spep_3 + 102 -a, 1, -17.3 );
setRotateKey( spep_3 + 104 -a, 1, -17.1 );
setRotateKey( spep_3 + 106 -a, 1, -16.9 );
setRotateKey( spep_3 + 108 -a, 1, -16.8 );
setRotateKey( spep_3 + 110 -a, 1, -16.6 );
setRotateKey( spep_3 + 112 -a, 1, -16.6 );
setRotateKey( spep_3 + 115, 1, -16.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 146, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 146, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 14 -a, 1000 );  --壁当たる音
playSe( spep_3 + 30 -a, 1000 );  --壁当たる音
playSe( spep_3 + 44 -a, 1000 );  --壁当たる音
playSe( spep_3 + 56 -a, 1000 );  --壁当たる音
playSe( spep_3 + 66 -a, 1000 );  --壁当たる音
playSe( spep_3 + 115, 8 );  --迫ってくる音

-- ** 次の準備 ** --
spep_4 = spep_3 + 146;

------------------------------------------------------
-- 強パンチ(146F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_4 + 0, SP_06, 146, 0x100, -1, 0, 0, 0 );  --強パンチ　手前(ef_006)
setEffMoveKey( spep_4 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 146, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 146, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_f, 0 );
setEffRotateKey( spep_4 + 146, punch_f, 0 );
setEffAlphaKey( spep_4 + 0, punch_f, 255 );
setEffAlphaKey( spep_4 + 146, punch_f, 255 );

punch_b = entryEffectLife( spep_4 + 0, SP_07, 146, 0x80, -1, 0, 0, 0 );  --強パンチ　奥(ef_007)
setEffMoveKey( spep_4 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 146, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 146, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_b, 0 );
setEffRotateKey( spep_4 + 146, punch_b, 0 );
setEffAlphaKey( spep_4 + 0, punch_b, 255 );
setEffAlphaKey( spep_4 + 146, punch_b, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_4 + 44 -a,  906, 42, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 44 -a, shuchusen6, 42, 25 );

setEffMoveKey( spep_4 + 44 -a, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86 -a, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_4 + 44 -a, shuchusen6, 1.6, 1.6 );
setEffScaleKey( spep_4 + 86 -a, shuchusen6, 1.6, 1.6 );

setEffRotateKey( spep_4 + 44 -a, shuchusen6, 0 );
setEffRotateKey( spep_4 + 86 -a, shuchusen6, 0 );

setEffAlphaKey( spep_4 + 44 -a, shuchusen6, 255 );
setEffAlphaKey( spep_4 + 80 -a, shuchusen6, 255 );
setEffAlphaKey( spep_4 + 86 -a, shuchusen6, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_4 + 44 -a,  10021, 40, 0x100, -1, 0, -43.1, 402.1 );  --バゴォッ
setEffMoveKey( spep_4 + 44 -a, ctbago, -43.1, 402.1 , 0 );
setEffMoveKey( spep_4 + 46 -a, ctbago, -61.7, 412.1 , 0 );
setEffMoveKey( spep_4 + 48 -a, ctbago, -42.3, 401.7 , 0 );
setEffMoveKey( spep_4 + 50 -a, ctbago, -78, 420.9 , 0 );
setEffMoveKey( spep_4 + 52 -a, ctbago, -42.3, 401.7 , 0 );
setEffMoveKey( spep_4 + 54 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 56 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 58 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 60 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 62 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 64 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 66 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 68 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 70 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 72 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 74 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 76 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 78 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 80 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 82 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 84 -a, ctbago, -42.7, 401.9 , 0 );

setEffScaleKey( spep_4 + 44 -a, ctbago, 1.29, 1.29 );
setEffScaleKey( spep_4 + 46 -a, ctbago, 2.34, 2.34 );
setEffScaleKey( spep_4 + 48 -a, ctbago, 3.39, 3.39 );
setEffScaleKey( spep_4 + 50 -a, ctbago, 4.44, 4.44 );
setEffScaleKey( spep_4 + 52 -a, ctbago, 3.51, 3.51 );
setEffScaleKey( spep_4 + 54 -a, ctbago, 2.58, 2.58 );
setEffScaleKey( spep_4 + 84 -a, ctbago, 2.58, 2.58 );

setEffRotateKey( spep_4 + 44 -a, ctbago, -21.2 );
setEffRotateKey( spep_4 + 84 -a, ctbago, -21.2 );

setEffAlphaKey( spep_4 + 44 -a, ctbago, 255 );
setEffAlphaKey( spep_4 + 76 -a, ctbago, 255 );
setEffAlphaKey( spep_4 + 78 -a, ctbago, 191 );
setEffAlphaKey( spep_4 + 80 -a, ctbago, 128 );
setEffAlphaKey( spep_4 + 82 -a, ctbago, 64 );
setEffAlphaKey( spep_4 + 84 -a, ctbago, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 148 -a, 1, 0 );
changeAnime( spep_4 + 2, 1, 106 );  --仰け反り
changeAnime( spep_4 + 44 -a, 1, 108 );  --くの字
changeAnime( spep_4 + 98 -a, 1, 6 );  --仰け反り　味方
changeAnime( spep_4 + 108 -a, 1, 108 );  --くの字
changeAnime( spep_4 + 118 -a, 1, 6 );  --仰け反り　味方
changeAnime( spep_4 + 128 -a, 1, 105 );  --奥吹っ飛び

setMoveKey( spep_4 + 0, 1, 926, 845.2 , 0 );
setMoveKey( spep_4 + 16 -a, 1, 926, 845.2 , 0 );
setMoveKey( spep_4 + 18 -a, 1, 859.5, 786.7 , 0 );
setMoveKey( spep_4 + 20 -a, 1, 792.9, 728.1 , 0 );
setMoveKey( spep_4 + 22 -a, 1, 726.3, 669.6 , 0 );
setMoveKey( spep_4 + 24 -a, 1, 659.7, 611 , 0 );
setMoveKey( spep_4 + 26 -a, 1, 587.6, 549.8 , 0 );
setMoveKey( spep_4 + 28 -a, 1, 514.6, 488.1 , 0 );
setMoveKey( spep_4 + 30 -a, 1, 444.4, 429.8 , 0 );
setMoveKey( spep_4 + 32 -a, 1, 376.3, 373.4 , 0 );
setMoveKey( spep_4 + 34 -a, 1, 307.5, 316.7 , 0 );
setMoveKey( spep_4 + 36 -a, 1, 242.4, 264.1 , 0 );
setMoveKey( spep_4 + 38 -a, 1, 181.1, 215.1 , 0 );
setMoveKey( spep_4 + 40 -a, 1, 123.1, 169.5 , 0 );
setMoveKey( spep_4 + 42 -a, 1, 68.6, 127.3 , 0 );
setMoveKey( spep_4 + 43 -a, 1, 68.6, 127.3 , 0 );
setMoveKey( spep_4 + 44 -a, 1, 191.6, 53.8 , 0 );  --くの字
setMoveKey( spep_4 + 46 -a, 1, 183.5, 67.3 , 0 );
setMoveKey( spep_4 + 48 -a, 1, 161.6, 67 , 0 );
setMoveKey( spep_4 + 50 -a, 1, 158, 72.2 , 0 );
setMoveKey( spep_4 + 52 -a, 1, 140.6, 70.1 , 0 );
setMoveKey( spep_4 + 54 -a, 1, 128.6, 73.5 , 0 );
setMoveKey( spep_4 + 56 -a, 1, 125.5, 70.7 , 0 );
setMoveKey( spep_4 + 58 -a, 1, 135.2, 80.6 , 0 );
setMoveKey( spep_4 + 60 -a, 1, 132, 80.8 , 0 );
setMoveKey( spep_4 + 62 -a, 1, 141.6, 87.5 , 0 );
setMoveKey( spep_4 + 64 -a, 1, 141.6, 84.5 , 0 );
setMoveKey( spep_4 + 66 -a, 1, 147.9, 94.3 , 0 );
setMoveKey( spep_4 + 68 -a, 1, 147.8, 94.4 , 0 );
setMoveKey( spep_4 + 70 -a, 1, 154.1, 100.9 , 0 );
setMoveKey( spep_4 + 72 -a, 1, 150.7, 97.8 , 0 );
setMoveKey( spep_4 + 74 -a, 1, 160.1, 107.4 , 0 );
setMoveKey( spep_4 + 76 -a, 1, 156.7, 107.4 , 0 );
setMoveKey( spep_4 + 78 -a, 1, 166, 113.7 , 0 );
setMoveKey( spep_4 + 80 -a, 1, 165.6, 110.5 , 0 );
setMoveKey( spep_4 + 82 -a, 1, 171.7, 119.9 , 0 );
setMoveKey( spep_4 + 84 -a, 1, 168.1, 119.8 , 0 );
setMoveKey( spep_4 + 86 -a, 1, 135.9, 4.3 , 0 );
setMoveKey( spep_4 + 88 -a, 1, 95, -116.7 , 0 );
setMoveKey( spep_4 + 90 -a, 1, 65.1, -209.7 , 0 );
setMoveKey( spep_4 + 92 -a, 1, 65.9, -181.2 , 0 );
setMoveKey( spep_4 + 94 -a, 1, 70, -145.4 , 0 );
setMoveKey( spep_4 + 96 -a, 1, 77.1, -102.4 , 0 );
setMoveKey( spep_4 + 97 -a, 1, 77.1, -102.4 , 0 );
setMoveKey( spep_4 + 98 -a, 1, 37.1, -42.5 , 0 );  --仰け反り　味方
setMoveKey( spep_4 + 100 -a, 1, 22.8, 18 , 0 );
setMoveKey( spep_4 + 102 -a, 1, 2.1, 62.6 , 0 );
setMoveKey( spep_4 + 104 -a, 1, -4.8, 113 , 0 );
setMoveKey( spep_4 + 106 -a, 1, -18.4, 154.6 , 0 );
setMoveKey( spep_4 + 107 -a, 1, -18.4, 154.6 , 0 );
setMoveKey( spep_4 + 108 -a, 1, -4.3, 101.7 , 0 );  --くの字
setMoveKey( spep_4 + 110 -a, 1, 29.9, 150.7 , 0 );
setMoveKey( spep_4 + 112 -a, 1, 66.2, 209.5 , 0 );
setMoveKey( spep_4 + 114 -a, 1, 93.3, 257.6 , 0 );
setMoveKey( spep_4 + 116 -a, 1, 130.5, 307.8 , 0 );
setMoveKey( spep_4 + 117 -a, 1, 130.5, 307.8 , 0 );
setMoveKey( spep_4 + 118 -a, 1, 131, 273.2 , 0 );  --仰け反り　味方
setMoveKey( spep_4 + 120 -a, 1, 129.8, 313.6 , 0 );
setMoveKey( spep_4 + 122 -a, 1, 122.4, 347.6 , 0 );
setMoveKey( spep_4 + 124 -a, 1, 123.1, 385.6 , 0 );
setMoveKey( spep_4 + 126 -a, 1, 117.8, 417.1 , 0 );
setMoveKey( spep_4 + 127 -a, 1, 117.8, 417.1 , 0 );
setMoveKey( spep_4 + 128 -a, 1, 122.6, 420.7 , 0 );  --奥吹っ飛び
setMoveKey( spep_4 + 130 -a, 1, 122.4, 424.3 , 0 );
setMoveKey( spep_4 + 132 -a, 1, 130, 431.5 , 0 );
setMoveKey( spep_4 + 134 -a, 1, 131.3, 432.3 , 0 );
setMoveKey( spep_4 + 136 -a, 1, 136.4, 440.8 , 0 );
setMoveKey( spep_4 + 138 -a, 1, 137.1, 442.9 , 0 );
setMoveKey( spep_4 + 140 -a, 1, 141.6, 448.6 , 0 );
setMoveKey( spep_4 + 142 -a, 1, 141.9, 450 , 0 );
setMoveKey( spep_4 + 144 -a, 1, 145.8, 454.9 , 0 );
setMoveKey( spep_4 + 146 -a, 1, 147.6, 457.5 , 0 );
setMoveKey( spep_4 + 148 -a, 1, 149, 459.7 , 0 );

setScaleKey( spep_4 + 0, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 16 -a, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 18 -a, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 20 -a, 1, 1.05, 1.05 );
setScaleKey( spep_4 + 22 -a, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 24 -a, 1, 1.13, 1.13 );
setScaleKey( spep_4 + 26 -a, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 28 -a, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 30 -a, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 32 -a, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 34 -a, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 36 -a, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 38 -a, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 40 -a, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 42 -a, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 43 -a, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 44 -a, 1, 5.75, 5.75 );  --くの字
setScaleKey( spep_4 + 46 -a, 1, 5.15, 5.15 );
setScaleKey( spep_4 + 48 -a, 1, 4.56, 4.56 );
setScaleKey( spep_4 + 50 -a, 1, 3.97, 3.97 );
setScaleKey( spep_4 + 52 -a, 1, 3.38, 3.38 );
setScaleKey( spep_4 + 54 -a, 1, 2.79, 2.79 );
setScaleKey( spep_4 + 56 -a, 1, 2.76, 2.76 );
setScaleKey( spep_4 + 58 -a, 1, 2.74, 2.74 );
setScaleKey( spep_4 + 60 -a, 1, 2.72, 2.72 );
setScaleKey( spep_4 + 62 -a, 1, 2.69, 2.69 );
setScaleKey( spep_4 + 64 -a, 1, 2.67, 2.67 );
setScaleKey( spep_4 + 66 -a, 1, 2.65, 2.65 );
setScaleKey( spep_4 + 68 -a, 1, 2.62, 2.62 );
setScaleKey( spep_4 + 70 -a, 1, 2.6, 2.6 );
setScaleKey( spep_4 + 72 -a, 1, 2.58, 2.58 );
setScaleKey( spep_4 + 74 -a, 1, 2.55, 2.55 );
setScaleKey( spep_4 + 76 -a, 1, 2.53, 2.53 );
setScaleKey( spep_4 + 78 -a, 1, 2.51, 2.51 );
setScaleKey( spep_4 + 80 -a, 1, 2.48, 2.48 );
setScaleKey( spep_4 + 82 -a, 1, 2.46, 2.46 );
setScaleKey( spep_4 + 84 -a, 1, 2.44, 2.44 );
setScaleKey( spep_4 + 86 -a, 1, 2.96, 2.96 );
setScaleKey( spep_4 + 88 -a, 1, 3.48, 3.48 );
setScaleKey( spep_4 + 90 -a, 1, 3.54, 3.54 );
setScaleKey( spep_4 + 92 -a, 1, 3, 3 );
setScaleKey( spep_4 + 94 -a, 1, 2.33, 2.33 );
setScaleKey( spep_4 + 96 -a, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 97 -a, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 98 -a, 1, 1.23, 1.23 );  --仰け反り　味方
setScaleKey( spep_4 + 100 -a, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 102 -a, 1, 0.96, 0.96 );
setScaleKey( spep_4 + 104 -a, 1, 0.82, 0.82 );
setScaleKey( spep_4 + 106 -a, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 107 -a, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 108 -a, 1, 0.7, 0.7 );  --くの字
setScaleKey( spep_4 + 110 -a, 1, 0.62, 0.62 );
setScaleKey( spep_4 + 112 -a, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 114 -a, 1, 0.5, 0.5 );
setScaleKey( spep_4 + 116 -a, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 117 -a, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 118 -a, 1, 0.36, 0.36 );  --仰け反り　味方
setScaleKey( spep_4 + 120 -a, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 122 -a, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 124 -a, 1, 0.24, 0.24 );
setScaleKey( spep_4 + 126 -a, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 127 -a, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 128 -a, 1, 0.22, 0.22 );  --奥吹っ飛び
setScaleKey( spep_4 + 130 -a, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 132 -a, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 134 -a, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 136 -a, 1, 0.13, 0.13 );
setScaleKey( spep_4 + 138 -a, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 140 -a, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 142 -a, 1, 0.08, 0.08 );
setScaleKey( spep_4 + 144 -a, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 146 -a, 1, 0.06, 0.06 );
setScaleKey( spep_4 + 148 -a, 1, 0.05, 0.05 );

setRotateKey( spep_4 + 0, 1, -11.9 );
setRotateKey( spep_4 + 16 -a, 1, -11.9 );
setRotateKey( spep_4 + 18 -a, 1, -13.9 );
setRotateKey( spep_4 + 20 -a, 1, -15.9 );
setRotateKey( spep_4 + 22 -a, 1, -17.9 );
setRotateKey( spep_4 + 24 -a, 1, -19.9 );
setRotateKey( spep_4 + 26 -a, 1, -21.9 );
setRotateKey( spep_4 + 28 -a, 1, -23.9 );
setRotateKey( spep_4 + 30 -a, 1, -26 );
setRotateKey( spep_4 + 32 -a, 1, -28 );
setRotateKey( spep_4 + 34 -a, 1, -30 );
setRotateKey( spep_4 + 36 -a, 1, -32 );
setRotateKey( spep_4 + 38 -a, 1, -34 );
setRotateKey( spep_4 + 40 -a, 1, -36 );
setRotateKey( spep_4 + 42 -a, 1, -38 );
setRotateKey( spep_4 + 43 -a, 1, -38 );
setRotateKey( spep_4 + 44 -a, 1, -14.7 );  --くの字
setRotateKey( spep_4 + 92 -a, 1, -14.7 );
setRotateKey( spep_4 + 94 -a, 1, -14.6 );
setRotateKey( spep_4 + 96 -a, 1, -14.6 );
setRotateKey( spep_4 + 97 -a, 1, -14.6 );
setRotateKey( spep_4 + 98 -a, 1, 0 );  --仰け反り　味方
setRotateKey( spep_4 + 106 -a, 1, 0 );
setRotateKey( spep_4 + 107 -a, 1, 0 );
setRotateKey( spep_4 + 108 -a, 1, -14.7 );  --くの字
setRotateKey( spep_4 + 110 -a, 1, -14.7 );
setRotateKey( spep_4 + 112 -a, 1, -14.6 );
setRotateKey( spep_4 + 114 -a, 1, -14.6 );
setRotateKey( spep_4 + 116 -a, 1, -14.5 );
setRotateKey( spep_4 + 117 -a, 1, -14.5 );
setRotateKey( spep_4 + 118 -a, 1, 12.2 );  --仰け反り　味方
setRotateKey( spep_4 + 120 -a, 1, 12.2 );
setRotateKey( spep_4 + 122 -a, 1, 12.1 );
setRotateKey( spep_4 + 127 -a, 1, 12.1 );
setRotateKey( spep_4 + 128 -a, 1, 0 );  --奥吹っ飛び
setRotateKey( spep_4 + 130 -a, 1, 2.1 );
setRotateKey( spep_4 + 132 -a, 1, 4 );
setRotateKey( spep_4 + 134 -a, 1, 5.8 );
setRotateKey( spep_4 + 136 -a, 1, 7.5 );
setRotateKey( spep_4 + 138 -a, 1, 9 );
setRotateKey( spep_4 + 140 -a, 1, 10.4 );
setRotateKey( spep_4 + 142 -a, 1, 11.6 );
setRotateKey( spep_4 + 144 -a, 1, 12.7 );
setRotateKey( spep_4 + 146 -a, 1, 13.6 );
setRotateKey( spep_4 + 148 -a, 1, 14.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 146, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 44 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_4 + 144, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 44 -a, 1011 );  --バゴォ
playSe( spep_4 + 102, 1023 );  --炎
playSe( spep_4 + 116, 1023 );  --炎
playSe( spep_4 + 124, 1023 );  --炎
playSe( spep_4 + 136, 1023 );  --炎

-- ** 次の準備 ** --
spep_5 = spep_4 + 146;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );

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
shuchusen7 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen7, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen7, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen7, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen7, 0 );
setEffRotateKey( spep_5 + 46, shuchusen7, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen7, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen7, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen7, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen7, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen7, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen7, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen7, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen7, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen7, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen7, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen7, 0 );

shuchusen8 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen8, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen8, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen8, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen8, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen8, 0 );
setEffRotateKey( spep_5 + 100, shuchusen8, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen8, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen8, 255 );

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
setMoveKey( spep_5 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_5 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_5 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_5 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_5 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_5 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_5 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_5 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 100, 1, 1.2, 1.2 );

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
setRotateKey( spep_5 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_10 );  --爆発音
playSe( spep_5 + 14, SE_11 );  --割れる音

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(158F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 158, 0, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 158, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 158, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 158, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 158, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 158, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 158, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 158, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 158, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 158, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 158, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 42, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 42, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_0 + 0,  10012, 44, 0x100, -1, 0, 68.4, 251.6 );  --ズオッ
setEffShake( spep_0 + 6, ctzuo, 30, 25 );

setEffMoveKey( spep_0 + 0, ctzuo, 68.4, 251.6 , 0 );
setEffMoveKey( spep_0 + 2, ctzuo, 86.3, 270.7 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo, 95, 299 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo, 119.3, 311.6 , 0 );
setEffMoveKey( spep_0 + 36, ctzuo, 119.3, 311.6 , 0 );
setEffMoveKey( spep_0 + 38, ctzuo, 130.3, 320.3 , 0 );
setEffMoveKey( spep_0 + 40, ctzuo, 122.5, 347.7 , 0 );
setEffMoveKey( spep_0 + 42, ctzuo, 152.4, 337.7 , 0 );
setEffMoveKey( spep_0 + 44, ctzuo, 163.3, 346.5 , 0 );

setEffScaleKey( spep_0 + 0, ctzuo, 0.23, 0.23 );
setEffScaleKey( spep_0 + 2, ctzuo, 0.78, 0.78 );
setEffScaleKey( spep_0 + 4, ctzuo, 1.33, 1.33 );
setEffScaleKey( spep_0 + 6, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_0 + 36, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_0 + 38, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_0 + 40, ctzuo, 3.21, 3.21 );
setEffScaleKey( spep_0 + 42, ctzuo, 3.86, 3.86 );
setEffScaleKey( spep_0 + 44, ctzuo, 4.5, 4.5 );

setEffRotateKey( spep_0 + 0, ctzuo, 27.2 );
setEffRotateKey( spep_0 + 44, ctzuo, 27.2 );

setEffAlphaKey( spep_0 + 0, ctzuo, 255 );
setEffAlphaKey( spep_0 + 36, ctzuo, 255 );
setEffAlphaKey( spep_0 + 38, ctzuo, 191 );
setEffAlphaKey( spep_0 + 40, ctzuo, 128 );
setEffAlphaKey( spep_0 + 42, ctzuo, 64 );
setEffAlphaKey( spep_0 + 44, ctzuo, 0 );

ctgogo = entryEffectLife( spep_0 + 58,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 58, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 58, ctgogo, -8.5, 515.5, 0 );
setEffMoveKey( spep_0 + 128, ctgogo, -8.5, 515.5, 0 );

setEffScaleKey( spep_0 + 58, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 118, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 120, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 122, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 124, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 126, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 58, ctgogo, 0 );
setEffRotateKey( spep_0 + 126, ctgogo, 0 );

setEffAlphaKey( spep_0 + 58, ctgogo, 255 );
setEffAlphaKey( spep_0 + 126, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 2, 50 );  --ズオッ
playSe( spep_0 + 58, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 158, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 148, 10, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 158;

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

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 連撃(238F)
------------------------------------------------------

-- ** エフェクト等 ** --
rengeki_f = entryEffectLife( spep_2 + 0, SP_02, 238, 0x100, -1, 0, 0, 0 );  --連撃　手前(ef_002)
setEffMoveKey( spep_2 + 0, rengeki_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 238, rengeki_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rengeki_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 238, rengeki_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rengeki_f, 0 );
setEffRotateKey( spep_2 + 238, rengeki_f, 0 );
setEffAlphaKey( spep_2 + 0, rengeki_f, 255 );
setEffAlphaKey( spep_2 + 238, rengeki_f, 255 );

rengeki_b = entryEffectLife( spep_2 + 0, SP_03, 238, 0x80, -1, 0, 0, 0 );  --連撃　奥(ef_003)
setEffMoveKey( spep_2 + 0, rengeki_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 238, rengeki_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rengeki_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 238, rengeki_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rengeki_b, 0 );
setEffRotateKey( spep_2 + 238, rengeki_b, 0 );
setEffAlphaKey( spep_2 + 0, rengeki_b, 255 );
setEffAlphaKey( spep_2 + 238, rengeki_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_2 + 0,  914, 74, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_2 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 74, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 1.2, 1.2 );
setEffScaleKey( spep_2 + 74, ryusen1, 1.2, 1.2 );

setEffRotateKey( spep_2 + 0, ryusen1, 0 );
setEffRotateKey( spep_2 + 74, ryusen1, 0 );

setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 68, ryusen1, 255 );
setEffAlphaKey( spep_2 + 74, ryusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 238, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE1 = playSe( spep_2 + 0, 9 );  --迫る音

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 14; --エンドフェイズのフレーム数を置き換える

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
a = 3;

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 94,  914, 72, 0x80, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_2 + 94, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 156, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 94, ryusen2, 1.2, 1.2 );
setEffScaleKey( spep_2 + 156, ryusen2, 1.2, 1.2 );

setEffRotateKey( spep_2 + 94, ryusen2, 0 );
setEffRotateKey( spep_2 + 156, ryusen2, 0 );

setEffAlphaKey( spep_2 + 94, ryusen2, 0 );
setEffAlphaKey( spep_2 + 102, ryusen2, 255 );
setEffAlphaKey( spep_2 + 156, ryusen2, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 68 -a,  906, 34, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 68 -a, shuchusen3, 34, 25 );

setEffMoveKey( spep_2 + 68 -a, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 102 -a, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 68 -a, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 102 -a, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 68 -a, shuchusen3, 0 );
setEffRotateKey( spep_2 + 102 -a, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 68 -a, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 94 -a, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 102 -a, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_2 + 158 -a,  906, 34, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 158 -a, shuchusen4, 34, 25 );

setEffMoveKey( spep_2 + 158 -a, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 192 -a, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2 + 158 -a, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_2 + 192 -a, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_2 + 158 -a, shuchusen4, 0 );
setEffRotateKey( spep_2 + 192 -a, shuchusen4, 0 );

setEffAlphaKey( spep_2 + 158 -a, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 186 -a, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 192 -a, shuchusen4, 0 );

-- ** 書き文字エントリー ** --
ctzun = entryEffectLife( spep_2 + 68 -a,  10016, 24, 0x100, -1, 0, 46.1, 388.4 );  --ズン
setEffMoveKey( spep_2 + 68 -a, ctzun, 46.1, 388.4 , 0 );
setEffMoveKey( spep_2 + 70 -a, ctzun, 46, 388.5 , 0 );
setEffMoveKey( spep_2 + 72 -a, ctzun, 39.8, 395 , 0 );
setEffMoveKey( spep_2 + 74 -a, ctzun, 45.9, 388.5 , 0 );
setEffMoveKey( spep_2 + 76 -a, ctzun, 40.8, 393.8 , 0 );
setEffMoveKey( spep_2 + 78 -a, ctzun, 45.9, 388.4 , 0 );
setEffMoveKey( spep_2 + 80 -a, ctzun, 40.8, 393.7 , 0 );
setEffMoveKey( spep_2 + 82 -a, ctzun, 45.8, 388.3 , 0 );
setEffMoveKey( spep_2 + 84 -a, ctzun, 40.7, 393.7 , 0 );
setEffMoveKey( spep_2 + 86 -a, ctzun, 40.7, 393.6 , 0 );
setEffMoveKey( spep_2 + 88 -a, ctzun, 45.8, 388.3 , 0 );
setEffMoveKey( spep_2 + 90 -a, ctzun, 40.6, 393.8 , 0 );
setEffMoveKey( spep_2 + 92 -a, ctzun, 45.7, 388.5 , 0 );

setEffScaleKey( spep_2 + 68 -a, ctzun, 1.73, 1.73 );
setEffScaleKey( spep_2 + 70 -a, ctzun, 3.54, 3.54 );
setEffScaleKey( spep_2 + 72 -a, ctzun, 3.01, 3.01 );
setEffScaleKey( spep_2 + 74 -a, ctzun, 2.47, 2.47 );
setEffScaleKey( spep_2 + 76 -a, ctzun, 2.47, 2.47 );
setEffScaleKey( spep_2 + 78 -a, ctzun, 2.48, 2.48 );
setEffScaleKey( spep_2 + 82 -a, ctzun, 2.48, 2.48 );
setEffScaleKey( spep_2 + 84 -a, ctzun, 2.49, 2.49 );
setEffScaleKey( spep_2 + 86 -a, ctzun, 2.49, 2.49 );
setEffScaleKey( spep_2 + 88 -a, ctzun, 2.5, 2.5 );
setEffScaleKey( spep_2 + 90 -a, ctzun, 2.5, 2.5 );
setEffScaleKey( spep_2 + 92 -a, ctzun, 2.51, 2.51 );

setEffRotateKey( spep_2 + 68 -a, ctzun, 4.4 );
setEffRotateKey( spep_2 + 76 -a, ctzun, 4.4 );
setEffRotateKey( spep_2 + 78 -a, ctzun, 4.3 );
setEffRotateKey( spep_2 + 82 -a, ctzun, 4.3 );
setEffRotateKey( spep_2 + 84 -a, ctzun, 4.2 );
setEffRotateKey( spep_2 + 86 -a, ctzun, 4.2 );
setEffRotateKey( spep_2 + 88 -a, ctzun, 4.3 );
setEffRotateKey( spep_2 + 90 -a, ctzun, 4.3 );
setEffRotateKey( spep_2 + 92 -a, ctzun, 4.4 );

setEffAlphaKey( spep_2 + 68 -a, ctzun, 255 );
setEffAlphaKey( spep_2 + 86 -a, ctzun, 255 );
setEffAlphaKey( spep_2 + 88 -a, ctzun, 174 );
setEffAlphaKey( spep_2 + 90 -a, ctzun, 94 );
setEffAlphaKey( spep_2 + 92 -a, ctzun, 13 );

ctbaki = entryEffectLife( spep_2 + 158 -a,  10020, 32, 0x100, -1, 0, 35.4, 383.6 );  --バキッ
setEffMoveKey( spep_2 + 158 -a, ctbaki, 35.4, 383.6 , 0 );
setEffMoveKey( spep_2 + 160 -a, ctbaki, 17.3, 407 , 0 );
setEffMoveKey( spep_2 + 162 -a, ctbaki, 35.4, 383.6 , 0 );
setEffMoveKey( spep_2 + 164 -a, ctbaki, 35.4, 383.5 , 0 );
setEffMoveKey( spep_2 + 166 -a, ctbaki, 23.5, 399.1 , 0 );
setEffMoveKey( spep_2 + 168 -a, ctbaki, 35.4, 383.5 , 0 );
setEffMoveKey( spep_2 + 170 -a, ctbaki, 23.7, 398.8 , 0 );
setEffMoveKey( spep_2 + 172 -a, ctbaki, 35.4, 383.5 , 0 );
setEffMoveKey( spep_2 + 174 -a, ctbaki, 24, 398.4 , 0 );
setEffMoveKey( spep_2 + 176 -a, ctbaki, 35.5, 383.6 , 0 );
setEffMoveKey( spep_2 + 178 -a, ctbaki, 24.3, 398.1 , 0 );
setEffMoveKey( spep_2 + 180 -a, ctbaki, 35.5, 383.6 , 0 );
setEffMoveKey( spep_2 + 182 -a, ctbaki, 24.6, 397.8 , 0 );
setEffMoveKey( spep_2 + 184 -a, ctbaki, 35.5, 383.6 , 0 );
setEffMoveKey( spep_2 + 186 -a, ctbaki, 24.7, 397.7 , 0 );
setEffMoveKey( spep_2 + 188 -a, ctbaki, 35.5, 383.6 , 0 );
setEffMoveKey( spep_2 + 190 -a, ctbaki, 35.5, 383.5 , 0 );

setEffScaleKey( spep_2 + 158 -a, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_2 + 160 -a, ctbaki, 3.47, 3.47 );
setEffScaleKey( spep_2 + 162 -a, ctbaki, 2.91, 2.91 );
setEffScaleKey( spep_2 + 164 -a, ctbaki, 2.34, 2.34 );
setEffScaleKey( spep_2 + 166 -a, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_2 + 168 -a, ctbaki, 2.29, 2.29 );
setEffScaleKey( spep_2 + 170 -a, ctbaki, 2.26, 2.26 );
setEffScaleKey( spep_2 + 172 -a, ctbaki, 2.24, 2.24 );
setEffScaleKey( spep_2 + 174 -a, ctbaki, 2.21, 2.21 );
setEffScaleKey( spep_2 + 176 -a, ctbaki, 2.18, 2.18 );
setEffScaleKey( spep_2 + 178 -a, ctbaki, 2.16, 2.16 );
setEffScaleKey( spep_2 + 180 -a, ctbaki, 2.13, 2.13 );
setEffScaleKey( spep_2 + 182 -a, ctbaki, 2.11, 2.11 );
setEffScaleKey( spep_2 + 184 -a, ctbaki, 2.08, 2.08 );
setEffScaleKey( spep_2 + 186 -a, ctbaki, 2.09, 2.09 );
setEffScaleKey( spep_2 + 188 -a, ctbaki, 2.11, 2.11 );
setEffScaleKey( spep_2 + 190 -a, ctbaki, 2.12, 2.12 );

setEffRotateKey( spep_2 + 158 -a, ctbaki, 7.5 );
setEffRotateKey( spep_2 + 190 -a, ctbaki, 7.5 );

setEffAlphaKey( spep_2 + 158 -a, ctbaki, 255 );
setEffAlphaKey( spep_2 + 184 -a, ctbaki, 255 );
setEffAlphaKey( spep_2 + 186 -a, ctbaki, 174 );
setEffAlphaKey( spep_2 + 188 -a, ctbaki, 94 );
setEffAlphaKey( spep_2 + 190 -a, ctbaki, 13 );

ctshun = entryEffectLife( spep_2 + 210 -a,  10011, 16, 0x100, -1, 0, -150, 64.6 );  --シュン
setEffMoveKey( spep_2 + 210 -a, ctshun, -150, 64.6 , 0 );
setEffMoveKey( spep_2 + 212 -a, ctshun, -149.9, 64.7 , 0 );
setEffMoveKey( spep_2 + 214 -a, ctshun, -149.8, 64.6 , 0 );
setEffMoveKey( spep_2 + 216 -a, ctshun, -149.8, 64.6 , 0 );
setEffMoveKey( spep_2 + 218 -a, ctshun, -149.8, 64.5 , 0 );
setEffMoveKey( spep_2 + 220 -a, ctshun, -149.8, 64.6 , 0 );
setEffMoveKey( spep_2 + 222 -a, ctshun, -149.9, 64.6 , 0 );
setEffMoveKey( spep_2 + 224 -a, ctshun, -149.9, 64.6 , 0 );
setEffMoveKey( spep_2 + 226 -a, ctshun, -150, 64.7 , 0 );

setEffScaleKey( spep_2 + 210 -a, ctshun, 1.25, 1.25 );
setEffScaleKey( spep_2 + 212 -a, ctshun, 2.1, 2.1 );
setEffScaleKey( spep_2 + 214 -a, ctshun, 1.86, 1.86 );
setEffScaleKey( spep_2 + 216 -a, ctshun, 1.62, 1.62 );
setEffScaleKey( spep_2 + 218 -a, ctshun, 1.38, 1.38 );
setEffScaleKey( spep_2 + 220 -a, ctshun, 1.36, 1.36 );
setEffScaleKey( spep_2 + 222 -a, ctshun, 1.34, 1.34 );
setEffScaleKey( spep_2 + 224 -a, ctshun, 1.31, 1.31 );
setEffScaleKey( spep_2 + 226 -a, ctshun, 1.29, 1.29 );

setEffRotateKey( spep_2 + 210 -a, ctshun, 22.5 );
setEffRotateKey( spep_2 + 226 -a, ctshun, 22.5 );

setEffAlphaKey( spep_2 + 210 -a, ctshun, 255 );
setEffAlphaKey( spep_2 + 218 -a, ctshun, 255 );
setEffAlphaKey( spep_2 + 220 -a, ctshun, 191 );
setEffAlphaKey( spep_2 + 222 -a, ctshun, 128 );
setEffAlphaKey( spep_2 + 224 -a, ctshun, 64 );
setEffAlphaKey( spep_2 + 226 -a, ctshun, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 234, 1, 0 );
changeAnime( spep_2 + 2 -a, 1, 104 );  --ガード
changeAnime( spep_2 + 68 -a, 1, 108 );  --くの字
changeAnime( spep_2 + 96 -a, 1, 106 );  --仰け反り
changeAnime( spep_2 + 158 -a, 1, 108 );  --くの字

setMoveKey( spep_2 + 0, 1, 1361.5, 56.5 , 0 );
setMoveKey( spep_2 + 4 -a, 1, 1330.3, 55.2 , 0 );
setMoveKey( spep_2 + 6 -a, 1, 1299, 53.9 , 0 );
setMoveKey( spep_2 + 8 -a, 1, 1267.8, 52.6 , 0 );
setMoveKey( spep_2 + 10 -a, 1, 1236.6, 51.3 , 0 );
setMoveKey( spep_2 + 12 -a, 1, 1205.4, 50 , 0 );
setMoveKey( spep_2 + 14 -a, 1, 1174.2, 48.7 , 0 );
setMoveKey( spep_2 + 16 -a, 1, 1143, 47.4 , 0 );
setMoveKey( spep_2 + 18 -a, 1, 1111.8, 46.1 , 0 );
setMoveKey( spep_2 + 20 -a, 1, 1080.6, 44.8 , 0 );
setMoveKey( spep_2 + 22 -a, 1, 1049.4, 43.5 , 0 );
setMoveKey( spep_2 + 24 -a, 1, 1018.2, 42.2 , 0 );
setMoveKey( spep_2 + 26 -a, 1, 987, 40.9 , 0 );
setMoveKey( spep_2 + 28 -a, 1, 955.8, 39.6 , 0 );
setMoveKey( spep_2 + 30 -a, 1, 946, 39.2 , 0 );
setMoveKey( spep_2 + 32 -a, 1, 936.3, 38.8 , 0 );
setMoveKey( spep_2 + 34 -a, 1, 926.6, 38.3 , 0 );
setMoveKey( spep_2 + 36 -a, 1, 916.8, 37.9 , 0 );
setMoveKey( spep_2 + 38 -a, 1, 867.3, 37.5 , 0 );
setMoveKey( spep_2 + 40 -a, 1, 815.9, 37.1 , 0 );
setMoveKey( spep_2 + 42 -a, 1, 762.8, 36.7 , 0 );
setMoveKey( spep_2 + 44 -a, 1, 707.9, 36.3 , 0 );
setMoveKey( spep_2 + 46 -a, 1, 651.5, 35.9 , 0 );
setMoveKey( spep_2 + 48 -a, 1, 593.5, 35.5 , 0 );
setMoveKey( spep_2 + 50 -a, 1, 534.1, 35.1 , 0 );
setMoveKey( spep_2 + 52 -a, 1, 473.3, 34.7 , 0 );
setMoveKey( spep_2 + 54 -a, 1, 411.3, 34.3 , 0 );
setMoveKey( spep_2 + 56 -a, 1, 348.1, 33.9 , 0 );
setMoveKey( spep_2 + 58 -a, 1, 283.9, 33.5 , 0 );
setMoveKey( spep_2 + 60 -a, 1, 218.7, 33.1 , 0 );
setMoveKey( spep_2 + 62 -a, 1, 152.6, 32.7 , 0 );
setMoveKey( spep_2 + 64 -a, 1, 85.6, 32.3 , 0 );
setMoveKey( spep_2 + 66 -a, 1, 18, 31.9 , 0 );
setMoveKey( spep_2 + 67 -a, 1, 18, 31.9 , 0 );
setMoveKey( spep_2 + 68 -a, 1, 115.9, 69.2 , 0 );  --くの字
setMoveKey( spep_2 + 70 -a, 1, 125.7, 71.3 , 0 );
setMoveKey( spep_2 + 72 -a, 1, 133.4, 72.8 , 0 );
setMoveKey( spep_2 + 74 -a, 1, 132.5, 73.9 , 0 );
setMoveKey( spep_2 + 76 -a, 1, 138, 73.9 , 0 );
setMoveKey( spep_2 + 78 -a, 1, 141.3, 65.8 , 0 );
setMoveKey( spep_2 + 80 -a, 1, 147, 73.6 , 0 );
setMoveKey( spep_2 + 82 -a, 1, 147.2, 71.8 , 0 );
setMoveKey( spep_2 + 84 -a, 1, 152.9, 73.2 , 0 );
setMoveKey( spep_2 + 86 -a, 1, 152.8, 66.5 , 0 );
setMoveKey( spep_2 + 88 -a, 1, 154.9, 72.6 , 0 );
setMoveKey( spep_2 + 90 -a, 1, 151.1, 70.6 , 0 );
setMoveKey( spep_2 + 92 -a, 1, 152.5, 71.9 , 0 );
setMoveKey( spep_2 + 94 -a, 1, 143.1, 69.8 , 0 );
setMoveKey( spep_2 + 95 -a, 1, 143.1, 69.8 , 0 );
setMoveKey( spep_2 + 96 -a, 1, 159.3, 90 , 0 );  --仰け反り
setMoveKey( spep_2 + 98 -a, 1, 97.4, 77.7 , 0 );
setMoveKey( spep_2 + 100 -a, 1, 36.6, 75.1 , 0 );
setMoveKey( spep_2 + 102 -a, 1, -31.2, 66.1 , 0 );
setMoveKey( spep_2 + 104 -a, 1, -94.7, 60.3 , 0 );
setMoveKey( spep_2 + 106 -a, 1, -79.3, 56.3 , 0 );
setMoveKey( spep_2 + 108 -a, 1, -69.2, 61.8 , 0 );
setMoveKey( spep_2 + 110 -a, 1, -63.9, 59.4 , 0 );
setMoveKey( spep_2 + 112 -a, 1, -52.2, 63.4 , 0 );
setMoveKey( spep_2 + 114 -a, 1, -45.3, 61 , 0 );
setMoveKey( spep_2 + 116 -a, 1, -35.2, 65 , 0 );
setMoveKey( spep_2 + 118 -a, 1, -29.9, 62.6 , 0 );
setMoveKey( spep_2 + 120 -a, 1, -18.2, 66.5 , 0 );
setMoveKey( spep_2 + 122 -a, 1, -11.3, 65.7 , 0 );
setMoveKey( spep_2 + 124 -a, 1, -1.2, 68.1 , 0 );
setMoveKey( spep_2 + 126 -a, 1, 7.3, 68.9 , 0 );
setMoveKey( spep_2 + 128 -a, 1, 15.8, 69.7 , 0 );
setMoveKey( spep_2 + 130 -a, 1, 24.3, 70.5 , 0 );
setMoveKey( spep_2 + 132 -a, 1, 32.8, 71.2 , 0 );
setMoveKey( spep_2 + 134 -a, 1, 41.3, 72 , 0 );
setMoveKey( spep_2 + 136 -a, 1, 49.9, 75.3 , 0 );
setMoveKey( spep_2 + 138 -a, 1, 58.6, 78.6 , 0 );
setMoveKey( spep_2 + 140 -a, 1, 67.2, 81.9 , 0 );
setMoveKey( spep_2 + 142 -a, 1, 75.8, 85.1 , 0 );
setMoveKey( spep_2 + 144 -a, 1, 84.5, 88.4 , 0 );
setMoveKey( spep_2 + 146 -a, 1, 93.2, 91.7 , 0 );
setMoveKey( spep_2 + 148 -a, 1, 101.9, 95 , 0 );
setMoveKey( spep_2 + 150 -a, 1, 110.5, 98.2 , 0 );
setMoveKey( spep_2 + 152 -a, 1, 119.2, 101.5 , 0 );
setMoveKey( spep_2 + 154 -a, 1, 127.9, 104.8 , 0 );
setMoveKey( spep_2 + 156 -a, 1, 136.7, 108.1 , 0 );
setMoveKey( spep_2 + 157 -a, 1, 136.7, 108.1 , 0 );
setMoveKey( spep_2 + 158 -a, 1, 270.9, 111.1 , 0 );  --くの字
setMoveKey( spep_2 + 160 -a, 1, 259.2, 112.8 , 0 );
setMoveKey( spep_2 + 162 -a, 1, 230.4, 92.5 , 0 );
setMoveKey( spep_2 + 164 -a, 1, 224.4, 82.2 , 0 );
setMoveKey( spep_2 + 166 -a, 1, 219.6, 75.3 , 0 );
setMoveKey( spep_2 + 168 -a, 1, 222.7, 92.2 , 0 );
setMoveKey( spep_2 + 170 -a, 1, 213.7, 89.1 , 0 );
setMoveKey( spep_2 + 172 -a, 1, 220.7, 101.9 , 0 );
setMoveKey( spep_2 + 174 -a, 1, 215.6, 102.5 , 0 );
setMoveKey( spep_2 + 176 -a, 1, 218.4, 111 , 0 );
setMoveKey( spep_2 + 178 -a, 1, 201.1, 107.5 , 0 );
setMoveKey( spep_2 + 180 -a, 1, 215.8, 119.8 , 0 );
setMoveKey( spep_2 + 182 -a, 1, 210.4, 111.9 , 0 );
setMoveKey( spep_2 + 184 -a, 1, 213, 128 , 0 );
setMoveKey( spep_2 + 186 -a, 1, 207.5, 128 , 0 );
setMoveKey( spep_2 + 188 -a, 1, 209.9, 135.8 , 0 );
setMoveKey( spep_2 + 190 -a, 1, 121.2, 76.1 , 0 );
setMoveKey( spep_2 + 192 -a, 1, 284.3, 320.9 , 0 );
setMoveKey( spep_2 + 194 -a, 1, 391.8, 484.4 , 0 );
setMoveKey( spep_2 + 196 -a, 1, 483.8, 615.5 , 0 );
setMoveKey( spep_2 + 198 -a, 1, 581.7, 748.7 , 0 );
setMoveKey( spep_2 + 200 -a, 1, 656, 853.8 , 0 );
setMoveKey( spep_2 + 202 -a, 1, 709.4, 932 , 0 );
setMoveKey( spep_2 + 204 -a, 1, 748.8, 992.9 , 0 );
setMoveKey( spep_2 + 206 -a, 1, 766, 1025.4 , 0 );
setMoveKey( spep_2 + 208 -a, 1, 774, 1046.9 , 0 );
setMoveKey( spep_2 + 210 -a, 1, 770.3, 1050.8 , 0 );
setMoveKey( spep_2 + 212 -a, 1, 754.8, 1039.5 , 0 );
setMoveKey( spep_2 + 214 -a, 1, 738.6, 1025.2 , 0 );
setMoveKey( spep_2 + 216 -a, 1, 703.1, 989.6 , 0 );
setMoveKey( spep_2 + 218 -a, 1, 671.8, 952.4 , 0 );
setMoveKey( spep_2 + 220 -a, 1, 636.7, 912.4 , 0 );
setMoveKey( spep_2 + 222 -a, 1, 603.4, 874.4 , 0 );
setMoveKey( spep_2 + 224 -a, 1, 581.1, 849.2 , 0 );
setMoveKey( spep_2 + 226 -a, 1, 561.5, 825.2 , 0 );
setMoveKey( spep_2 + 228 -a, 1, 542.5, 803.9 , 0 );
setMoveKey( spep_2 + 230 -a, 1, 526, 783.8 , 0 );
setMoveKey( spep_2 + 232 -a, 1, 510.1, 766.5 , 0 );
setMoveKey( spep_2 + 234, 1, 496.9, 750.4 , 0 );

setScaleKey( spep_2 + 2, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 4 -a, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 6 -a, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 8 -a, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 10 -a, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 12 -a, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 14 -a, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 16 -a, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 18 -a, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 20 -a, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 22 -a, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 24 -a, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 26 -a, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 28 -a, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 30 -a, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 32 -a, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 34 -a, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 36 -a, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 38 -a, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 40 -a, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 42 -a, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 44 -a, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 46 -a, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 48 -a, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 50 -a, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 52 -a, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 54 -a, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 56 -a, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 58 -a, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 60 -a, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 62 -a, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 64 -a, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 66 -a, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 67 -a, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 68 -a, 1, 2.66, 2.66 );  --くの字
setScaleKey( spep_2 + 70 -a, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 72 -a, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 74 -a, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 76 -a, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 78 -a, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 80 -a, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 82 -a, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 84 -a, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 86 -a, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 88 -a, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 90 -a, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 92 -a, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 94 -a, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 95 -a, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 96 -a, 1, 1.19, 1.19 );  --仰け反り
setScaleKey( spep_2 + 98 -a, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 100 -a, 1, 1, 1 );
setScaleKey( spep_2 + 102 -a, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 104 -a, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 106 -a, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 108 -a, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 110 -a, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 112 -a, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 114 -a, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 116 -a, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 118 -a, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 120 -a, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 122 -a, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 124 -a, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 126 -a, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 128 -a, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 130 -a, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 132 -a, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 134 -a, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 136 -a, 1, 1, 1 );
setScaleKey( spep_2 + 138 -a, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 140 -a, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 142 -a, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 144 -a, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 146 -a, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 148 -a, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 150 -a, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 152 -a, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 154 -a, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 156 -a, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 157 -a, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 158 -a, 1, 3.84, 3.84 );  --くの字
setScaleKey( spep_2 + 160 -a, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 162 -a, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 164 -a, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 166 -a, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 168 -a, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 170 -a, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 172 -a, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 174 -a, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 176 -a, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 178 -a, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 180 -a, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 182 -a, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 184 -a, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 186 -a, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 188 -a, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 190 -a, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 192 -a, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 194 -a, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 196 -a, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 198 -a, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 200 -a, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 202 -a, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 204 -a, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 206 -a, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 208 -a, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 210 -a, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 212 -a, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 214 -a, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 216 -a, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 218 -a, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 220 -a, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 228 -a, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 230 -a, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 234, 1, 0.09, 0.09 );

setRotateKey( spep_2 + 2, 1, 0 );
setRotateKey( spep_2 + 67 -a, 1, 0 );
setRotateKey( spep_2 + 68 -a, 1, -1.2 );  --くの字
setRotateKey( spep_2 + 70 -a, 1, -1.1 );
setRotateKey( spep_2 + 82 -a, 1, -1.1 );
setRotateKey( spep_2 + 84 -a, 1, -1.2 );
setRotateKey( spep_2 + 94 -a, 1, -1.2 );
setRotateKey( spep_2 + 95 -a, 1, -1.2 );
setRotateKey( spep_2 + 96 -a, 1, -9.7 );  --仰け反り
setRotateKey( spep_2 + 98 -a, 1, -8.9 );
setRotateKey( spep_2 + 100 -a, 1, -8.2 );
setRotateKey( spep_2 + 102 -a, 1, -7.4 );
setRotateKey( spep_2 + 104 -a, 1, -6.7 );
setRotateKey( spep_2 + 106 -a, 1, -5.9 );
setRotateKey( spep_2 + 108 -a, 1, -5.8 );
setRotateKey( spep_2 + 110 -a, 1, -5.7 );
setRotateKey( spep_2 + 112 -a, 1, -5.7 );
setRotateKey( spep_2 + 114 -a, 1, -5.6 );
setRotateKey( spep_2 + 116 -a, 1, -5.5 );
setRotateKey( spep_2 + 118 -a, 1, -5.4 );
setRotateKey( spep_2 + 120 -a, 1, -5.3 );
setRotateKey( spep_2 + 122 -a, 1, -5.3 );
setRotateKey( spep_2 + 124 -a, 1, -5.2 );
setRotateKey( spep_2 + 126 -a, 1, -5.1 );
setRotateKey( spep_2 + 128 -a, 1, -5 );
setRotateKey( spep_2 + 130 -a, 1, -4.9 );
setRotateKey( spep_2 + 132 -a, 1, -4.9 );
setRotateKey( spep_2 + 134 -a, 1, -4.8 );
setRotateKey( spep_2 + 136 -a, 1, -4.7 );
setRotateKey( spep_2 + 138 -a, 1, -4.6 );
setRotateKey( spep_2 + 140 -a, 1, -4.5 );
setRotateKey( spep_2 + 142 -a, 1, -4.5 );
setRotateKey( spep_2 + 144 -a, 1, -4.4 );
setRotateKey( spep_2 + 146 -a, 1, -4.3 );
setRotateKey( spep_2 + 148 -a, 1, -4.2 );
setRotateKey( spep_2 + 150 -a, 1, -4.1 );
setRotateKey( spep_2 + 152 -a, 1, -4.1 );
setRotateKey( spep_2 + 154 -a, 1, -4 );
setRotateKey( spep_2 + 156 -a, 1, -3.9 );
setRotateKey( spep_2 + 157 -a, 1, -3.9 );
setRotateKey( spep_2 + 158 -a, 1, -21.7 );  --くの字
setRotateKey( spep_2 + 160 -a, 1, -20.6 );
setRotateKey( spep_2 + 162 -a, 1, -19.6 );
setRotateKey( spep_2 + 164 -a, 1, -18.5 );
setRotateKey( spep_2 + 170 -a, 1, -18.5 );
setRotateKey( spep_2 + 172 -a, 1, -18.6 );
setRotateKey( spep_2 + 182 -a, 1, -18.6 );
setRotateKey( spep_2 + 184 -a, 1, -18.7 );
setRotateKey( spep_2 + 188 -a, 1, -18.7 );
setRotateKey( spep_2 + 190 -a, 1, -18.5 );
setRotateKey( spep_2 + 192 -a, 1, -18.4 );
setRotateKey( spep_2 + 194 -a, 1, -18.3 );
setRotateKey( spep_2 + 196 -a, 1, -18.2 );
setRotateKey( spep_2 + 198 -a, 1, -18.4 );
setRotateKey( spep_2 + 200 -a, 1, -18.6 );
setRotateKey( spep_2 + 202 -a, 1, -18.7 );
setRotateKey( spep_2 + 204 -a, 1, -18.9 );
setRotateKey( spep_2 + 206 -a, 1, -19 );
setRotateKey( spep_2 + 208 -a, 1, -19.2 );
setRotateKey( spep_2 + 210 -a, 1, -19.3 );
setRotateKey( spep_2 + 212 -a, 1, -19.4 );
setRotateKey( spep_2 + 214 -a, 1, -19.5 );
setRotateKey( spep_2 + 216 -a, 1, -19.7 );
setRotateKey( spep_2 + 218 -a, 1, -19.7 );
setRotateKey( spep_2 + 220 -a, 1, -19.8 );
setRotateKey( spep_2 + 222 -a, 1, -19.9 );
setRotateKey( spep_2 + 224 -a, 1, -20 );
setRotateKey( spep_2 + 226 -a, 1, -20 );
setRotateKey( spep_2 + 228 -a, 1, -20.1 );
setRotateKey( spep_2 + 230 -a, 1, -20.1 );
setRotateKey( spep_2 + 232 -a, 1, -20.2 );
setRotateKey( spep_2 + 234, 1, -20.2 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 68 -a, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_2 + 158 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_2 + 226, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 68 -a, 1010 );  --ズン
playSe( spep_2 + 158 -a, 1011 );  --バキッ
playSe( spep_2 + 210 -a, 43 );  --シュン

-- ** 次の準備 ** --
spep_3 = spep_2 + 238;

------------------------------------------------------
-- ピンボール(146F)
------------------------------------------------------

-- ** エフェクト等 ** --
pin_f = entryEffectLife( spep_3 + 0, SP_04, 146, 0x100, -1, 0, 0, 0 );  --ピンボール　手前(ef_004)
setEffMoveKey( spep_3 + 0, pin_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, pin_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, pin_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, pin_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, pin_f, 0 );
setEffRotateKey( spep_3 + 146, pin_f, 0 );
setEffAlphaKey( spep_3 + 0, pin_f, 255 );
setEffAlphaKey( spep_3 + 145, pin_f, 255 );
setEffAlphaKey( spep_3 + 146, pin_f, 0 );

pin_b = entryEffectLife( spep_3 + 0, SP_05r, 146, 0x80, -1, 0, 0, 0 );  --ピンボール　奥(ef_005)
setEffMoveKey( spep_3 + 0, pin_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, pin_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, pin_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, pin_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, pin_b, 0 );
setEffRotateKey( spep_3 + 146, pin_b, 0 );
setEffAlphaKey( spep_3 + 0, pin_b, 255 );
setEffAlphaKey( spep_3 + 145, pin_b, 255 );
setEffAlphaKey( spep_3 + 146, pin_f, 0 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_3 + 0,  906, 146, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen5, 146, 25 );

setEffMoveKey( spep_3 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_3 + 110, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_3 + 146, shuchusen5, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, shuchusen5, 0 );
setEffRotateKey( spep_3 + 146, shuchusen5, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 145, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 146, shuchusen5, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 115, 1, 0 );
changeAnime( spep_3 + 0, 1, 108 );  --くの字
changeAnime( spep_3 + 14 -a, 1, 107 );  --手前吹っ飛び
changeAnime( spep_3 + 30 -a, 1, 8 );  --くの字　味方
changeAnime( spep_3 + 44 -a, 1, 106 );  --仰け反り
changeAnime( spep_3 + 56 -a, 1, 108 );  --くの字
changeAnime( spep_3 + 66 -a, 1, 7 );  --仰け反り　味方

setMoveKey( spep_3 + 0, 1, -810, -270.9 , 0 );
setMoveKey( spep_3 + 4 -a, 1, -645.9, -109.4 , 0 );
setMoveKey( spep_3 + 6 -a, 1, -501.9, 32.4 , 0 );
setMoveKey( spep_3 + 8 -a, 1, -378.2, 154.5 , 0 );
setMoveKey( spep_3 + 10 -a, 1, -274.5, 256.8 , 0 );
setMoveKey( spep_3 + 13 -a, 1, -194.9, 334.4 , 0 );
setMoveKey( spep_3 + 14 -a, 1, -200.7, 331.2 , 0 );  --手前吹っ飛び
setMoveKey( spep_3 + 16 -a, 1, -78.9, 198 , 0 );
setMoveKey( spep_3 + 18 -a, 1, 36.4, 89.5 , 0 );
setMoveKey( spep_3 + 20 -a, 1, 137.3, -20.3 , 0 );
setMoveKey( spep_3 + 22 -a, 1, 231.7, -109.4 , 0 );
setMoveKey( spep_3 + 24 -a, 1, 313.6, -192.7 , 0 );
setMoveKey( spep_3 + 26 -a, 1, 384.9, -265.3 , 0 );
setMoveKey( spep_3 + 29 -a, 1, 444.7, -334.1 , 0 );
setMoveKey( spep_3 + 30 -a, 1, 363.7, -394.6 , 0 );  --くの字　味方
setMoveKey( spep_3 + 32 -a, 1, 168.3, -327 , 0 );
setMoveKey( spep_3 + 34 -a, 1, 3.9, -258.6 , 0 );
setMoveKey( spep_3 + 36 -a, 1, -149.6, -208.3 , 0 );
setMoveKey( spep_3 + 38 -a, 1, -280.2, -151.2 , 0 );
setMoveKey( spep_3 + 40 -a, 1, -395.9, -111.2 , 0 );
setMoveKey( spep_3 + 43 -a, 1, -488.6, -72.4 , 0 );
setMoveKey( spep_3 + 44 -a, 1, -469.8, -59.2 , 0 );  --仰け反り
setMoveKey( spep_3 + 46 -a, 1, -400, 56 , 0 );
setMoveKey( spep_3 + 48 -a, 1, -341.5, 147.9 , 0 );
setMoveKey( spep_3 + 50 -a, 1, -287.3, 234.6 , 0 );
setMoveKey( spep_3 + 52 -a, 1, -247.5, 302.1 , 0 );
setMoveKey( spep_3 + 55 -a, 1, -208.1, 360.3 , 0 );
setMoveKey( spep_3 + 56 -a, 1, -179.8, 360.5 , 0 );  --くの字
setMoveKey( spep_3 + 58 -a, 1, -24.4, 277.6 , 0 );
setMoveKey( spep_3 + 60 -a, 1, 99.1, 201.5 , 0 );
setMoveKey( spep_3 + 62 -a, 1, 200.6, 151.2 , 0 );
setMoveKey( spep_3 + 65 -a, 1, 269, 108.7 , 0 );
setMoveKey( spep_3 + 66 -a, 1, 266.4, 106.2 , 0 );  --仰け反り　味方
setMoveKey( spep_3 + 68 -a, 1, 221, 47.1 , 0 );
setMoveKey( spep_3 + 70 -a, 1, 177.6, -2 , 0 );
setMoveKey( spep_3 + 72 -a, 1, 130.2, -58.2 , 0 );
setMoveKey( spep_3 + 74 -a, 1, 87.8, -112.4 , 0 );
setMoveKey( spep_3 + 76 -a, 1, 44.4, -164.6 , 0 );
setMoveKey( spep_3 + 78 -a, 1, -1, -222.9 , 0 );
setMoveKey( spep_3 + 80 -a, 1, -19.7, -243.2 , 0 );
setMoveKey( spep_3 + 82 -a, 1, -43.5, -269.5 , 0 );
setMoveKey( spep_3 + 84 -a, 1, -59.2, -291.8 , 0 );
setMoveKey( spep_3 + 86 -a, 1, -79.9, -321 , 0 );
setMoveKey( spep_3 + 88 -a, 1, -98.6, -340.3 , 0 );
setMoveKey( spep_3 + 90 -a, 1, -118.5, -371.5 , 0 );
setMoveKey( spep_3 + 92 -a, 1, -132.4, -398.6 , 0 );
setMoveKey( spep_3 + 94 -a, 1, -151.3, -431.8 , 0 );
setMoveKey( spep_3 + 96 -a, 1, -166.2, -456.9 , 0 );
setMoveKey( spep_3 + 98 -a, 1, -186.1, -488.1 , 0 );
setMoveKey( spep_3 + 100 -a, 1, -200, -515.2 , 0 );
setMoveKey( spep_3 + 102 -a, 1, -217.9, -549.3 , 0 );
setMoveKey( spep_3 + 104 -a, 1, -233.7, -573.5 , 0 );
setMoveKey( spep_3 + 106 -a, 1, -252.6, -604.6 , 0 );
setMoveKey( spep_3 + 108 -a, 1, -275.2, -653.1 , 0 );
setMoveKey( spep_3 + 110 -a, 1, -296.4, -699.4 , 0 );
setMoveKey( spep_3 + 112 -a, 1, -311, -726.5 , 0 );
setMoveKey( spep_3 + 115, 1, -328.2, -752.5 , 0 );

setScaleKey( spep_3 + 0, 1, 4.79, 4.79 );
setScaleKey( spep_3 + 4 -a, 1, 3.67, 3.67 );
setScaleKey( spep_3 + 6 -a, 1, 2.68, 2.68 );
setScaleKey( spep_3 + 8 -a, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 10 -a, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 13 -a, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 14 -a, 1, 0.34, 0.34 );  --手前吹っ飛び
setScaleKey( spep_3 + 16 -a, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 18 -a, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 20 -a, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 22 -a, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 24 -a, 1, 1.92, 1.92 );
setScaleKey( spep_3 + 26 -a, 1, 2.13, 2.13 );
setScaleKey( spep_3 + 29 -a, 1, 2.32, 2.32 );
setScaleKey( spep_3 + 30 -a, 1, 2.74, 2.74 );  --くの字　味方
setScaleKey( spep_3 + 32 -a, 1, 2.43, 2.43 );
setScaleKey( spep_3 + 34 -a, 1, 2.15, 2.15 );
setScaleKey( spep_3 + 36 -a, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 38 -a, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 40 -a, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 43 -a, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 44 -a, 1, 1.47, 1.47 );  --仰け反り
setScaleKey( spep_3 + 46 -a, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 48 -a, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 50 -a, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 52 -a, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 55 -a, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 56 -a, 1, 0.68, 0.68 );  --くの字
setScaleKey( spep_3 + 58 -a, 1, 0.49, 0.49 );
setScaleKey( spep_3 + 60 -a, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 62 -a, 1, 0.21, 0.21 );
setScaleKey( spep_3 + 65 -a, 1, 0.12, 0.12 );
setScaleKey( spep_3 + 66 -a, 1, 0.06, 0.06 );  --仰け反り　味方
setScaleKey( spep_3 + 68 -a, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 70 -a, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 72 -a, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 74 -a, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 76 -a, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 78 -a, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 80 -a, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 82 -a, 1, 1.19, 1.19 );
setScaleKey( spep_3 + 84 -a, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 86 -a, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 88 -a, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 90 -a, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 92 -a, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 94 -a, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 96 -a, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 98 -a, 1, 1.88, 1.88 );
setScaleKey( spep_3 + 100 -a, 1, 1.97, 1.97 );
setScaleKey( spep_3 + 102 -a, 1, 2.06, 2.06 );
setScaleKey( spep_3 + 104 -a, 1, 2.15, 2.15 );
setScaleKey( spep_3 + 106 -a, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 108 -a, 1, 2.42, 2.42 );
setScaleKey( spep_3 + 110 -a, 1, 2.57, 2.57 );
setScaleKey( spep_3 + 112 -a, 1, 2.68, 2.68 );
setScaleKey( spep_3 + 115 -a, 1, 2.76, 2.76 );

setRotateKey( spep_3 + 0, 1, -19.2 );
setRotateKey( spep_3 + 4 -a, 1, -19.3 );
setRotateKey( spep_3 + 6 -a, 1, -19.5 );
setRotateKey( spep_3 + 8 -a, 1, -19.6 );
setRotateKey( spep_3 + 10 -a, 1, -19.7 );
setRotateKey( spep_3 + 13 -a, 1, -19.8 );
setRotateKey( spep_3 + 14 -a, 1, 0 );  --手前吹っ飛び
setRotateKey( spep_3 + 16 -a, 1, -3 );
setRotateKey( spep_3 + 18 -a, 1, -5.8 );
setRotateKey( spep_3 + 20 -a, 1, -8.3 );
setRotateKey( spep_3 + 22 -a, 1, -10.5 );
setRotateKey( spep_3 + 24 -a, 1, -12.5 );
setRotateKey( spep_3 + 26 -a, 1, -14.2 );
setRotateKey( spep_3 + 29 -a, 1, -15.7 );
setRotateKey( spep_3 + 30 -a, 1, -19.5 );  --くの字　味方
setRotateKey( spep_3 + 32 -a, 1, -19.3 );
setRotateKey( spep_3 + 34 -a, 1, -19.2 );
setRotateKey( spep_3 + 36 -a, 1, -19 );
setRotateKey( spep_3 + 38 -a, 1, -18.9 );
setRotateKey( spep_3 + 40 -a, 1, -18.8 );
setRotateKey( spep_3 + 43 -a, 1, -18.7 );
setRotateKey( spep_3 + 44 -a, 1, -23 );  --仰け反り
setRotateKey( spep_3 + 46 -a, 1, -23.1 );
setRotateKey( spep_3 + 48 -a, 1, -23.1 );
setRotateKey( spep_3 + 50 -a, 1, -23.2 );
setRotateKey( spep_3 + 52 -a, 1, -23.3 );
setRotateKey( spep_3 + 55 -a, 1, -23.3 );
setRotateKey( spep_3 + 56 -a, 1, 17.5 );  --くの字
setRotateKey( spep_3 + 58 -a, 1, 5.6 );
setRotateKey( spep_3 + 60 -a, 1, -4.2 );
setRotateKey( spep_3 + 62 -a, 1, -11.8 );
setRotateKey( spep_3 + 65 -a, 1, -17.2 );
setRotateKey( spep_3 + 66 -a, 1, -19.9 );  --仰け反り　味方
setRotateKey( spep_3 + 72 -a, 1, -19.9 );
setRotateKey( spep_3 + 74 -a, 1, -20 );
setRotateKey( spep_3 + 78 -a, 1, -20 );
setRotateKey( spep_3 + 80 -a, 1, -19.7 );
setRotateKey( spep_3 + 82 -a, 1, -19.4 );
setRotateKey( spep_3 + 84 -a, 1, -19.2 );
setRotateKey( spep_3 + 86 -a, 1, -18.9 );
setRotateKey( spep_3 + 88 -a, 1, -18.6 );
setRotateKey( spep_3 + 90 -a, 1, -18.4 );
setRotateKey( spep_3 + 92 -a, 1, -18.2 );
setRotateKey( spep_3 + 94 -a, 1, -18 );
setRotateKey( spep_3 + 96 -a, 1, -17.8 );
setRotateKey( spep_3 + 98 -a, 1, -17.7 );
setRotateKey( spep_3 + 100 -a, 1, -17.5 );
setRotateKey( spep_3 + 102 -a, 1, -17.3 );
setRotateKey( spep_3 + 104 -a, 1, -17.1 );
setRotateKey( spep_3 + 106 -a, 1, -16.9 );
setRotateKey( spep_3 + 108 -a, 1, -16.8 );
setRotateKey( spep_3 + 110 -a, 1, -16.6 );
setRotateKey( spep_3 + 112 -a, 1, -16.6 );
setRotateKey( spep_3 + 115, 1, -16.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 146, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 146, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 14 -a, 1000 );  --壁当たる音
playSe( spep_3 + 30 -a, 1000 );  --壁当たる音
playSe( spep_3 + 44 -a, 1000 );  --壁当たる音
playSe( spep_3 + 56 -a, 1000 );  --壁当たる音
playSe( spep_3 + 66 -a, 1000 );  --壁当たる音
playSe( spep_3 + 115, 8 );  --迫ってくる音

-- ** 次の準備 ** --
spep_4 = spep_3 + 146;

------------------------------------------------------
-- 強パンチ(146F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_4 + 0, SP_06r, 146, 0x100, -1, 0, 0, 0 );  --強パンチ　手前(ef_006)
setEffMoveKey( spep_4 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 146, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 146, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_f, 0 );
setEffRotateKey( spep_4 + 146, punch_f, 0 );
setEffAlphaKey( spep_4 + 0, punch_f, 255 );
setEffAlphaKey( spep_4 + 146, punch_f, 255 );

punch_b = entryEffectLife( spep_4 + 0, SP_07, 146, 0x80, -1, 0, 0, 0 );  --強パンチ　奥(ef_007)
setEffMoveKey( spep_4 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 146, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 146, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_b, 0 );
setEffRotateKey( spep_4 + 146, punch_b, 0 );
setEffAlphaKey( spep_4 + 0, punch_b, 255 );
setEffAlphaKey( spep_4 + 146, punch_b, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_4 + 44 -a,  906, 42, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 44 -a, shuchusen6, 42, 25 );

setEffMoveKey( spep_4 + 44 -a, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86 -a, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_4 + 44 -a, shuchusen6, 1.6, 1.6 );
setEffScaleKey( spep_4 + 86 -a, shuchusen6, 1.6, 1.6 );

setEffRotateKey( spep_4 + 44 -a, shuchusen6, 0 );
setEffRotateKey( spep_4 + 86 -a, shuchusen6, 0 );

setEffAlphaKey( spep_4 + 44 -a, shuchusen6, 255 );
setEffAlphaKey( spep_4 + 80 -a, shuchusen6, 255 );
setEffAlphaKey( spep_4 + 86 -a, shuchusen6, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_4 + 44 -a,  10021, 40, 0x100, -1, 0, -43.1, 402.1 );  --バゴォッ
setEffMoveKey( spep_4 + 44 -a, ctbago, -43.1, 402.1 , 0 );
setEffMoveKey( spep_4 + 46 -a, ctbago, -61.7, 412.1 , 0 );
setEffMoveKey( spep_4 + 48 -a, ctbago, -42.3, 401.7 , 0 );
setEffMoveKey( spep_4 + 50 -a, ctbago, -78, 420.9 , 0 );
setEffMoveKey( spep_4 + 52 -a, ctbago, -42.3, 401.7 , 0 );
setEffMoveKey( spep_4 + 54 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 56 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 58 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 60 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 62 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 64 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 66 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 68 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 70 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 72 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 74 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 76 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 78 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 80 -a, ctbago, -63.7, 413.1 , 0 );
setEffMoveKey( spep_4 + 82 -a, ctbago, -42.7, 401.9 , 0 );
setEffMoveKey( spep_4 + 84 -a, ctbago, -42.7, 401.9 , 0 );

setEffScaleKey( spep_4 + 44 -a, ctbago, 1.29, 1.29 );
setEffScaleKey( spep_4 + 46 -a, ctbago, 2.34, 2.34 );
setEffScaleKey( spep_4 + 48 -a, ctbago, 3.39, 3.39 );
setEffScaleKey( spep_4 + 50 -a, ctbago, 4.44, 4.44 );
setEffScaleKey( spep_4 + 52 -a, ctbago, 3.51, 3.51 );
setEffScaleKey( spep_4 + 54 -a, ctbago, 2.58, 2.58 );
setEffScaleKey( spep_4 + 84 -a, ctbago, 2.58, 2.58 );

setEffRotateKey( spep_4 + 44 -a, ctbago, -21.2 );
setEffRotateKey( spep_4 + 84 -a, ctbago, -21.2 );

setEffAlphaKey( spep_4 + 44 -a, ctbago, 255 );
setEffAlphaKey( spep_4 + 76 -a, ctbago, 255 );
setEffAlphaKey( spep_4 + 78 -a, ctbago, 191 );
setEffAlphaKey( spep_4 + 80 -a, ctbago, 128 );
setEffAlphaKey( spep_4 + 82 -a, ctbago, 64 );
setEffAlphaKey( spep_4 + 84 -a, ctbago, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 148 -a, 1, 0 );
changeAnime( spep_4 + 2, 1, 106 );  --仰け反り
changeAnime( spep_4 + 44 -a, 1, 108 );  --くの字
changeAnime( spep_4 + 98 -a, 1, 6 );  --仰け反り　味方
changeAnime( spep_4 + 108 -a, 1, 108 );  --くの字
changeAnime( spep_4 + 118 -a, 1, 6 );  --仰け反り　味方
changeAnime( spep_4 + 128 -a, 1, 105 );  --奥吹っ飛び

setMoveKey( spep_4 + 0, 1, 926, 845.2 , 0 );
setMoveKey( spep_4 + 16 -a, 1, 926, 845.2 , 0 );
setMoveKey( spep_4 + 18 -a, 1, 859.5, 786.7 , 0 );
setMoveKey( spep_4 + 20 -a, 1, 792.9, 728.1 , 0 );
setMoveKey( spep_4 + 22 -a, 1, 726.3, 669.6 , 0 );
setMoveKey( spep_4 + 24 -a, 1, 659.7, 611 , 0 );
setMoveKey( spep_4 + 26 -a, 1, 587.6, 549.8 , 0 );
setMoveKey( spep_4 + 28 -a, 1, 514.6, 488.1 , 0 );
setMoveKey( spep_4 + 30 -a, 1, 444.4, 429.8 , 0 );
setMoveKey( spep_4 + 32 -a, 1, 376.3, 373.4 , 0 );
setMoveKey( spep_4 + 34 -a, 1, 307.5, 316.7 , 0 );
setMoveKey( spep_4 + 36 -a, 1, 242.4, 264.1 , 0 );
setMoveKey( spep_4 + 38 -a, 1, 181.1, 215.1 , 0 );
setMoveKey( spep_4 + 40 -a, 1, 123.1, 169.5 , 0 );
setMoveKey( spep_4 + 42 -a, 1, 68.6, 127.3 , 0 );
setMoveKey( spep_4 + 43 -a, 1, 68.6, 127.3 , 0 );
setMoveKey( spep_4 + 44 -a, 1, 191.6, 53.8 , 0 );  --くの字
setMoveKey( spep_4 + 46 -a, 1, 183.5, 67.3 , 0 );
setMoveKey( spep_4 + 48 -a, 1, 161.6, 67 , 0 );
setMoveKey( spep_4 + 50 -a, 1, 158, 72.2 , 0 );
setMoveKey( spep_4 + 52 -a, 1, 140.6, 70.1 , 0 );
setMoveKey( spep_4 + 54 -a, 1, 128.6, 73.5 , 0 );
setMoveKey( spep_4 + 56 -a, 1, 125.5, 70.7 , 0 );
setMoveKey( spep_4 + 58 -a, 1, 135.2, 80.6 , 0 );
setMoveKey( spep_4 + 60 -a, 1, 132, 80.8 , 0 );
setMoveKey( spep_4 + 62 -a, 1, 141.6, 87.5 , 0 );
setMoveKey( spep_4 + 64 -a, 1, 141.6, 84.5 , 0 );
setMoveKey( spep_4 + 66 -a, 1, 147.9, 94.3 , 0 );
setMoveKey( spep_4 + 68 -a, 1, 147.8, 94.4 , 0 );
setMoveKey( spep_4 + 70 -a, 1, 154.1, 100.9 , 0 );
setMoveKey( spep_4 + 72 -a, 1, 150.7, 97.8 , 0 );
setMoveKey( spep_4 + 74 -a, 1, 160.1, 107.4 , 0 );
setMoveKey( spep_4 + 76 -a, 1, 156.7, 107.4 , 0 );
setMoveKey( spep_4 + 78 -a, 1, 166, 113.7 , 0 );
setMoveKey( spep_4 + 80 -a, 1, 165.6, 110.5 , 0 );
setMoveKey( spep_4 + 82 -a, 1, 171.7, 119.9 , 0 );
setMoveKey( spep_4 + 84 -a, 1, 168.1, 119.8 , 0 );
setMoveKey( spep_4 + 86 -a, 1, 135.9, 4.3 , 0 );
setMoveKey( spep_4 + 88 -a, 1, 95, -116.7 , 0 );
setMoveKey( spep_4 + 90 -a, 1, 65.1, -209.7 , 0 );
setMoveKey( spep_4 + 92 -a, 1, 65.9, -181.2 , 0 );
setMoveKey( spep_4 + 94 -a, 1, 70, -145.4 , 0 );
setMoveKey( spep_4 + 96 -a, 1, 77.1, -102.4 , 0 );
setMoveKey( spep_4 + 97 -a, 1, 77.1, -102.4 , 0 );
setMoveKey( spep_4 + 98 -a, 1, 37.1, -42.5 , 0 );  --仰け反り　味方
setMoveKey( spep_4 + 100 -a, 1, 22.8, 18 , 0 );
setMoveKey( spep_4 + 102 -a, 1, 2.1, 62.6 , 0 );
setMoveKey( spep_4 + 104 -a, 1, -4.8, 113 , 0 );
setMoveKey( spep_4 + 106 -a, 1, -18.4, 154.6 , 0 );
setMoveKey( spep_4 + 107 -a, 1, -18.4, 154.6 , 0 );
setMoveKey( spep_4 + 108 -a, 1, -4.3, 101.7 , 0 );  --くの字
setMoveKey( spep_4 + 110 -a, 1, 29.9, 150.7 , 0 );
setMoveKey( spep_4 + 112 -a, 1, 66.2, 209.5 , 0 );
setMoveKey( spep_4 + 114 -a, 1, 93.3, 257.6 , 0 );
setMoveKey( spep_4 + 116 -a, 1, 130.5, 307.8 , 0 );
setMoveKey( spep_4 + 117 -a, 1, 130.5, 307.8 , 0 );
setMoveKey( spep_4 + 118 -a, 1, 131, 273.2 , 0 );  --仰け反り　味方
setMoveKey( spep_4 + 120 -a, 1, 129.8, 313.6 , 0 );
setMoveKey( spep_4 + 122 -a, 1, 122.4, 347.6 , 0 );
setMoveKey( spep_4 + 124 -a, 1, 123.1, 385.6 , 0 );
setMoveKey( spep_4 + 126 -a, 1, 117.8, 417.1 , 0 );
setMoveKey( spep_4 + 127 -a, 1, 117.8, 417.1 , 0 );
setMoveKey( spep_4 + 128 -a, 1, 122.6, 420.7 , 0 );  --奥吹っ飛び
setMoveKey( spep_4 + 130 -a, 1, 122.4, 424.3 , 0 );
setMoveKey( spep_4 + 132 -a, 1, 130, 431.5 , 0 );
setMoveKey( spep_4 + 134 -a, 1, 131.3, 432.3 , 0 );
setMoveKey( spep_4 + 136 -a, 1, 136.4, 440.8 , 0 );
setMoveKey( spep_4 + 138 -a, 1, 137.1, 442.9 , 0 );
setMoveKey( spep_4 + 140 -a, 1, 141.6, 448.6 , 0 );
setMoveKey( spep_4 + 142 -a, 1, 141.9, 450 , 0 );
setMoveKey( spep_4 + 144 -a, 1, 145.8, 454.9 , 0 );
setMoveKey( spep_4 + 146 -a, 1, 147.6, 457.5 , 0 );
setMoveKey( spep_4 + 148 -a, 1, 149, 459.7 , 0 );

setScaleKey( spep_4 + 0, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 16 -a, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 18 -a, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 20 -a, 1, 1.05, 1.05 );
setScaleKey( spep_4 + 22 -a, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 24 -a, 1, 1.13, 1.13 );
setScaleKey( spep_4 + 26 -a, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 28 -a, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 30 -a, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 32 -a, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 34 -a, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 36 -a, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 38 -a, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 40 -a, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 42 -a, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 43 -a, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 44 -a, 1, 5.75, 5.75 );  --くの字
setScaleKey( spep_4 + 46 -a, 1, 5.15, 5.15 );
setScaleKey( spep_4 + 48 -a, 1, 4.56, 4.56 );
setScaleKey( spep_4 + 50 -a, 1, 3.97, 3.97 );
setScaleKey( spep_4 + 52 -a, 1, 3.38, 3.38 );
setScaleKey( spep_4 + 54 -a, 1, 2.79, 2.79 );
setScaleKey( spep_4 + 56 -a, 1, 2.76, 2.76 );
setScaleKey( spep_4 + 58 -a, 1, 2.74, 2.74 );
setScaleKey( spep_4 + 60 -a, 1, 2.72, 2.72 );
setScaleKey( spep_4 + 62 -a, 1, 2.69, 2.69 );
setScaleKey( spep_4 + 64 -a, 1, 2.67, 2.67 );
setScaleKey( spep_4 + 66 -a, 1, 2.65, 2.65 );
setScaleKey( spep_4 + 68 -a, 1, 2.62, 2.62 );
setScaleKey( spep_4 + 70 -a, 1, 2.6, 2.6 );
setScaleKey( spep_4 + 72 -a, 1, 2.58, 2.58 );
setScaleKey( spep_4 + 74 -a, 1, 2.55, 2.55 );
setScaleKey( spep_4 + 76 -a, 1, 2.53, 2.53 );
setScaleKey( spep_4 + 78 -a, 1, 2.51, 2.51 );
setScaleKey( spep_4 + 80 -a, 1, 2.48, 2.48 );
setScaleKey( spep_4 + 82 -a, 1, 2.46, 2.46 );
setScaleKey( spep_4 + 84 -a, 1, 2.44, 2.44 );
setScaleKey( spep_4 + 86 -a, 1, 2.96, 2.96 );
setScaleKey( spep_4 + 88 -a, 1, 3.48, 3.48 );
setScaleKey( spep_4 + 90 -a, 1, 3.54, 3.54 );
setScaleKey( spep_4 + 92 -a, 1, 3, 3 );
setScaleKey( spep_4 + 94 -a, 1, 2.33, 2.33 );
setScaleKey( spep_4 + 96 -a, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 97 -a, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 98 -a, 1, 1.23, 1.23 );  --仰け反り　味方
setScaleKey( spep_4 + 100 -a, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 102 -a, 1, 0.96, 0.96 );
setScaleKey( spep_4 + 104 -a, 1, 0.82, 0.82 );
setScaleKey( spep_4 + 106 -a, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 107 -a, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 108 -a, 1, 0.7, 0.7 );  --くの字
setScaleKey( spep_4 + 110 -a, 1, 0.62, 0.62 );
setScaleKey( spep_4 + 112 -a, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 114 -a, 1, 0.5, 0.5 );
setScaleKey( spep_4 + 116 -a, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 117 -a, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 118 -a, 1, 0.36, 0.36 );  --仰け反り　味方
setScaleKey( spep_4 + 120 -a, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 122 -a, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 124 -a, 1, 0.24, 0.24 );
setScaleKey( spep_4 + 126 -a, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 127 -a, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 128 -a, 1, 0.22, 0.22 );  --奥吹っ飛び
setScaleKey( spep_4 + 130 -a, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 132 -a, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 134 -a, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 136 -a, 1, 0.13, 0.13 );
setScaleKey( spep_4 + 138 -a, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 140 -a, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 142 -a, 1, 0.08, 0.08 );
setScaleKey( spep_4 + 144 -a, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 146 -a, 1, 0.06, 0.06 );
setScaleKey( spep_4 + 148 -a, 1, 0.05, 0.05 );

setRotateKey( spep_4 + 0, 1, -11.9 );
setRotateKey( spep_4 + 16 -a, 1, -11.9 );
setRotateKey( spep_4 + 18 -a, 1, -13.9 );
setRotateKey( spep_4 + 20 -a, 1, -15.9 );
setRotateKey( spep_4 + 22 -a, 1, -17.9 );
setRotateKey( spep_4 + 24 -a, 1, -19.9 );
setRotateKey( spep_4 + 26 -a, 1, -21.9 );
setRotateKey( spep_4 + 28 -a, 1, -23.9 );
setRotateKey( spep_4 + 30 -a, 1, -26 );
setRotateKey( spep_4 + 32 -a, 1, -28 );
setRotateKey( spep_4 + 34 -a, 1, -30 );
setRotateKey( spep_4 + 36 -a, 1, -32 );
setRotateKey( spep_4 + 38 -a, 1, -34 );
setRotateKey( spep_4 + 40 -a, 1, -36 );
setRotateKey( spep_4 + 42 -a, 1, -38 );
setRotateKey( spep_4 + 43 -a, 1, -38 );
setRotateKey( spep_4 + 44 -a, 1, -14.7 );  --くの字
setRotateKey( spep_4 + 92 -a, 1, -14.7 );
setRotateKey( spep_4 + 94 -a, 1, -14.6 );
setRotateKey( spep_4 + 96 -a, 1, -14.6 );
setRotateKey( spep_4 + 97 -a, 1, -14.6 );
setRotateKey( spep_4 + 98 -a, 1, 0 );  --仰け反り　味方
setRotateKey( spep_4 + 106 -a, 1, 0 );
setRotateKey( spep_4 + 107 -a, 1, 0 );
setRotateKey( spep_4 + 108 -a, 1, -14.7 );  --くの字
setRotateKey( spep_4 + 110 -a, 1, -14.7 );
setRotateKey( spep_4 + 112 -a, 1, -14.6 );
setRotateKey( spep_4 + 114 -a, 1, -14.6 );
setRotateKey( spep_4 + 116 -a, 1, -14.5 );
setRotateKey( spep_4 + 117 -a, 1, -14.5 );
setRotateKey( spep_4 + 118 -a, 1, 12.2 );  --仰け反り　味方
setRotateKey( spep_4 + 120 -a, 1, 12.2 );
setRotateKey( spep_4 + 122 -a, 1, 12.1 );
setRotateKey( spep_4 + 127 -a, 1, 12.1 );
setRotateKey( spep_4 + 128 -a, 1, 0 );  --奥吹っ飛び
setRotateKey( spep_4 + 130 -a, 1, 2.1 );
setRotateKey( spep_4 + 132 -a, 1, 4 );
setRotateKey( spep_4 + 134 -a, 1, 5.8 );
setRotateKey( spep_4 + 136 -a, 1, 7.5 );
setRotateKey( spep_4 + 138 -a, 1, 9 );
setRotateKey( spep_4 + 140 -a, 1, 10.4 );
setRotateKey( spep_4 + 142 -a, 1, 11.6 );
setRotateKey( spep_4 + 144 -a, 1, 12.7 );
setRotateKey( spep_4 + 146 -a, 1, 13.6 );
setRotateKey( spep_4 + 148 -a, 1, 14.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 146, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 44 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_4 + 144, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 44 -a, 1011 );  --バゴォ
playSe( spep_4 + 102, 1023 );  --炎
playSe( spep_4 + 116, 1023 );  --炎
playSe( spep_4 + 124, 1023 );  --炎
playSe( spep_4 + 136, 1023 );  --炎

-- ** 次の準備 ** --
spep_5 = spep_4 + 146;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );

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
shuchusen7 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen7, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen7, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen7, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen7, 0 );
setEffRotateKey( spep_5 + 46, shuchusen7, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen7, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen7, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen7, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen7, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen7, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen7, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen7, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen7, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen7, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen7, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen7, 0 );

shuchusen8 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen8, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen8, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen8, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen8, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen8, 0 );
setEffRotateKey( spep_5 + 100, shuchusen8, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen8, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen8, 255 );

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
setMoveKey( spep_5 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_5 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_5 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_5 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_5 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_5 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_5 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_5 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 100, 1, 1.2, 1.2 );

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
setRotateKey( spep_5 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_10 );  --爆発音
playSe( spep_5 + 14, SE_11 );  --割れる音

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );

end



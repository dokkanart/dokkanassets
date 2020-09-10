--セル(完全体)_パーフェクトアタック

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
SP_01 = 153988; --バストアップ
SP_02 = 153989; --蹴りタックル描き文字
SP_03 = 153991; --蹴りタックル
SP_04 = 153992; --奥へ吹っ飛ぶ用背景
SP_05 = 153993; --割れる岩　手前
SP_06 = 153995; --割れる岩　背面
SP_07 = 153996; --割れる割れる岩　手前
SP_08 = 153997; --割れる割れる岩　背面
SP_09 = 153998; --瞬間移動で回り込み
SP_10 = 154000; --蹴り上げ
SP_11 = 154002; --蹴り上げ　背景
SP_12 = 154003; --上空へ回り込み
SP_13 = 154005; --「はあっ・・・!!!」
SP_14 = 154007; --「はあっ・・・!!!」背景
SP_15 = 154008; --肘打ち　描き文字
SP_16 = 154009; --肘打ち
SP_17 = 154010; --落下
SP_18 = 154011; --地面に激突

--敵側
SP_02x = 153990; --蹴りタックル描き文字
SP_05x = 153994; --割れる岩　手前
SP_09x = 153999; --瞬間移動で回り込み
SP_10x = 154001; --蹴り上げ
SP_12x = 154004; --上空へ回り込み
SP_13x = 154006; --「はあっ・・・!!!」

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
-- バストアップ(108F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
bustup = entryEffectLife( spep_0 + 0, SP_01, 108, 0x100, -1, 0, 0, 0 );  --バストアップ(ef_001)
setEffMoveKey( spep_0 + 0, bustup, 0, 0 , 0 );
setEffMoveKey( spep_0 + 108, bustup, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, bustup, 1.0, 1.0 );
setEffScaleKey( spep_0 + 108, bustup, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, bustup, 0 );
setEffRotateKey( spep_0 + 108, bustup, 0 );
setEffAlphaKey( spep_0 + 0, bustup, 255 );
setEffAlphaKey( spep_0 + 108, bustup, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 78, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 78, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 78, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 78, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 21, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 22, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 78, shuchusen1, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 108, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE1 = playSe( spep_0 + 16, SE_04 );  --ゴゴゴ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 60; --エンドフェイズのフレーム数を置き換える

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

-- ** 白フェード ** --
entryFade( spep_0 + 104, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 86, 4 );  --移動
setSeVolume( spep_0 + 86, 4, 120 );
playSe( spep_0 + 86, 1109 );  --移動
setSeVolume( spep_0 + 86, 1109, 90 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 108;

------------------------------------------------------
-- 蹴りタックル(68F)
------------------------------------------------------

-- ** エフェクト等 ** --
tackle_f = entryEffectLife( spep_1 + 0, SP_02, 68, 0x100, -1, 0, 0, 0 );  --蹴りタックル描き文字(ef_002)
setEffMoveKey( spep_1 + 0, tackle_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, tackle_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tackle_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 68, tackle_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tackle_f, 0 );
setEffRotateKey( spep_1 + 68, tackle_f, 0 );
setEffAlphaKey( spep_1 + 0, tackle_f, 255 );
setEffAlphaKey( spep_1 + 68, tackle_f, 255 );

tackle_b = entryEffectLife( spep_1 + 0, SP_03, 68, 0x80, -1, 0, 0, 0 );  --蹴りタックル(ef_003)
setEffMoveKey( spep_1 + 0, tackle_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, tackle_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tackle_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 68, tackle_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tackle_b, 0 );
setEffRotateKey( spep_1 + 68, tackle_b, 0 );
setEffAlphaKey( spep_1 + 0, tackle_b, 255 );
setEffAlphaKey( spep_1 + 68, tackle_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 40, 1, 0 );
changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1 -3 + 26, 1, 107 );

setMoveKey( spep_1 + 0, 1, 139.8, -23.8 , 0 );
setMoveKey( spep_1 -3 + 2, 1, 139.6, -23.9 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 139.5, -24 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 139.3, -24.2 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 139.1, -24.4 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 139, -24.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 138.8, -24.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 138.6, -24.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 138.5, -25 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 138.3, -25.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 138.1, -25.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 138, -25.5 , 0 );
setMoveKey( spep_1 -3 + 25, 1, 137.8, -25.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 374.3, -200.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 145.1, -123.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 215.3, -210.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 332.9, -324.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 233.2, -257.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 362.2, -411.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 467.8, -417.8 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 356.5, -583.6 , 0 );
setMoveKey( spep_1 + 40, 1, 356.5 + 50, -583.6 -60 , 0 );

setScaleKey( spep_1 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 25, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 26, 1, 3.75 -1.5, 3.75 -1.5 );
setScaleKey( spep_1 -3 + 28, 1, 2.15 -1, 2.12 -1 );
setScaleKey( spep_1 -3 + 30, 1, 3.37 -1.2, 3.37 -1.2 );
setScaleKey( spep_1 -3 + 32, 1, 3.46 -1.4, 3.46 -1.4 );
setScaleKey( spep_1 -3 + 34, 1, 4.05 -1.5, 4.05 -1.5 );
setScaleKey( spep_1 -3 + 36, 1, 4.25 -1.6, 4.25 -1.6 );
setScaleKey( spep_1 -3 + 38, 1, 4.83 -1.6, 4.83 -1.6 );
setScaleKey( spep_1 -3 + 40, 1, 4.85 -1.6, 4.8 -1.6 );
setScaleKey( spep_1 + 40, 1, 4.85 -1.6, 4.8 -1.6 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 40, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 68, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 60, 6, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_1 + 6, 1118 );  --突進
--setSeVolume( spep_1 + 6, 1118, 85);
--setSeVolume( spep_1 + 62, 1118, 40);
--setSeVolume( spep_1 + 66, 1118, 10);
playSe( spep_1 + 26 -3, 1120 );  --ドスッ

-- ** 次の準備 ** --
spep_2 = spep_1 + 68;

------------------------------------------------------
-- 奥へ吹っ飛ぶ(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
futtobi = entryEffectLife( spep_2 + 0, SP_04, 58, 0x80, -1, 0, 0, 0 );  --奥へ吹っ飛ぶ(ef_004)
setEffMoveKey( spep_2 + 0, futtobi, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, futtobi, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, futtobi, 1.0, 1.0 );
setEffScaleKey( spep_2 + 58, futtobi, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, futtobi, 0 );
setEffRotateKey( spep_2 + 58, futtobi, 0 );
setEffAlphaKey( spep_2 + 0, futtobi, 255 );
setEffAlphaKey( spep_2 + 58, futtobi, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 58, 1, 0 );
changeAnime( spep_2 + 0, 1, 105 );

setMoveKey( spep_2 + 0, 1, 69.1, -206.1 , 0 );
setMoveKey( spep_2 + 2, 1, 62, -167.8 , 0 );
setMoveKey( spep_2 + 4, 1, 54.9, -129.5 , 0 );
setMoveKey( spep_2 + 6, 1, 47.8, -91.2 , 0 );
setMoveKey( spep_2 + 8, 1, 40.8, -53 , 0 );
setMoveKey( spep_2 + 10, 1, 33.8, -14.7 , 0 );
setMoveKey( spep_2 + 12, 1, 26.7, 23.6 , 0 );
setMoveKey( spep_2 + 14, 1, 19.6, 61.9 , 0 );
setMoveKey( spep_2 + 16, 1, 19.6, 61.2 , 0 );
setMoveKey( spep_2 + 18, 1, 19.6, 60.3 , 0 );
setMoveKey( spep_2 + 20, 1, 19.6, 59.6 , 0 );
setMoveKey( spep_2 + 22, 1, 19.6, 58.9 , 0 );
setMoveKey( spep_2 + 24, 1, 19.6, 58 , 0 );
setMoveKey( spep_2 + 26, 1, 19.6, 57.3 , 0 );
setMoveKey( spep_2 + 28, 1, 19.6, 56.5 , 0 );
setMoveKey( spep_2 + 30, 1, 19.6, 55.8 , 0 );
setMoveKey( spep_2 + 32, 1, 19.6, 55 , 0 );
setMoveKey( spep_2 + 34, 1, 19.6, 54.2 , 0 );
setMoveKey( spep_2 + 36, 1, 19.6, 53.5 , 0 );
setMoveKey( spep_2 + 38, 1, 19.6, 52.6 , 0 );
setMoveKey( spep_2 + 40, 1, 19.6, 51.9 , 0 );
setMoveKey( spep_2 + 42, 1, 19.6, 51.2 , 0 );
setMoveKey( spep_2 + 44, 1, 19.6, 50.4 , 0 );
setMoveKey( spep_2 + 46, 1, 19.6, 49.6 , 0 );
setMoveKey( spep_2 + 48, 1, 19.6, 48.8 , 0 );
setMoveKey( spep_2 + 50, 1, 19.6, 48.1 , 0 );
setMoveKey( spep_2 + 52, 1, 19.6, 47.4 , 0 );
setMoveKey( spep_2 + 54, 1, 19.6, 46.5 , 0 );
setMoveKey( spep_2 + 56, 1, 19.6, 45.8 , 0 );
setMoveKey( spep_2 + 58, 1, 19.6, 45 , 0 );

setScaleKey( spep_2 + 0, 1, 6, 6 );
setScaleKey( spep_2 + 2, 1, 5.23, 5.23 );
setScaleKey( spep_2 + 4, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 6, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 8, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 10, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 12, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 14, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 16, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 18, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 20, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 22, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 24, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 26, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 28, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 30, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 32, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 34, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 36, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 38, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 42, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 44, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 46, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 48, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 50, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 52, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 54, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 56, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 58, 1, 0.06, 0.06 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 58, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 48, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 0, 1121 );  --飛んでく

-- ** 次の準備 ** --
spep_3 = spep_2 + 58;

------------------------------------------------------
-- 割れる岩(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
wareru1_f = entryEffectLife( spep_3 + 0, SP_05, 58, 0x100, -1, 0, 0, 0 );  --割れる岩(ef_005)
setEffMoveKey( spep_3 + 0, wareru1_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, wareru1_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, wareru1_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 58, wareru1_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, wareru1_f, 0 );
setEffRotateKey( spep_3 + 58, wareru1_f, 0 );
setEffAlphaKey( spep_3 + 0, wareru1_f, 255 );
setEffAlphaKey( spep_3 + 57, wareru1_f, 255 );
setEffAlphaKey( spep_3 + 58, wareru1_f, 0 );

wareru1_b = entryEffectLife( spep_3 + 0, SP_06, 58, 0x80, -1, 0, 0, 0 );  --割れる岩(ef_006)
setEffMoveKey( spep_3 + 0, wareru1_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, wareru1_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, wareru1_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 58, wareru1_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, wareru1_b, 0 );
setEffRotateKey( spep_3 + 58, wareru1_b, 0 );
setEffAlphaKey( spep_3 + 0, wareru1_b, 255 );
setEffAlphaKey( spep_3 + 57, wareru1_b, 255 );
setEffAlphaKey( spep_3 + 58, wareru1_b, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 22 -3, 906, 36 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 22 -3, shuchusen2, 36 +3, 20 );

setEffMoveKey( spep_3 + 22 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 22 -3, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_3 + 58, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_3 + 22 -3, shuchusen2, 0 );
setEffRotateKey( spep_3 + 58, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 22 -3, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 57, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 58, shuchusen2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 16, 1, 0 );
setDisp( spep_3 + 22 -3, 1, 1 );
setDisp( spep_3 + 40 -3, 1, 0 );
changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, -290.6, 47 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -290.6, 47 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -285.5, 47.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -269.9, 48 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -243.9, 49.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -207.6, 51 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -160.8, 53.2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -103.7, 55.9 , 0 );
setMoveKey( spep_3 + 16, 1, -103.7, 55.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 42.5, 88 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 69.8, 52.3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 73.1, 87.4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 144.2, 64 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 172, 85.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 266.4, 78.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 337.5, 127.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 471.7, 85.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 571.6, 118.8 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 692.5, 135.9 , 0 );

setScaleKey( spep_3 + 0, 1, 0.1, 0.1 );
setScaleKey( spep_3 -3 + 4, 1, 0.1, 0.1 );
setScaleKey( spep_3 -3 + 6, 1, 0.12, 0.12 );
setScaleKey( spep_3 -3 + 8, 1, 0.18, 0.18 );
setScaleKey( spep_3 -3 + 10, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 12, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 14, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 16, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 16, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 24, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 26, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 28, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 30, 1, 1.83, 1.83 );
setScaleKey( spep_3 -3 + 32, 1, 2.13, 2.13 );
setScaleKey( spep_3 -3 + 34, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 36, 1, 2.93, 2.93 );
setScaleKey( spep_3 -3 + 38, 1, 3.43, 3.43 );
setScaleKey( spep_3 -3 + 40, 1, 4, 4 );

setRotateKey( spep_3 + 0, 1, 149.7 );
setRotateKey( spep_3 -3 + 4, 1, 149.7 );
setRotateKey( spep_3 -3 + 6, 1, 149.8 );
setRotateKey( spep_3 + 16, 1, 149.8 );
setRotateKey( spep_3 -3 + 22, 1, -124.6 );
setRotateKey( spep_3 -3 + 24, 1, -124.5 );
setRotateKey( spep_3 -3 + 40, 1, -124.5 );

-- ** 音 ** --
playSe( spep_3 + 22 -3, 1011 );  --岩に当たる

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 48, 8, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 58;

------------------------------------------------------
-- 割れる割れる岩(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
wareru2_f = entryEffectLife( spep_4 + 0, SP_07, 88, 0x100, -1, 0, 0, 0 );  --割れる割れる岩(ef_007)
setEffMoveKey( spep_4 + 0, wareru2_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 88, wareru2_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, wareru2_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88, wareru2_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, wareru2_f, 0 );
setEffRotateKey( spep_4 + 88, wareru2_f, 0 );
setEffAlphaKey( spep_4 + 0, wareru2_f, 255 );
setEffAlphaKey( spep_4 + 88, wareru2_f, 255 );

wareru2_b = entryEffectLife( spep_4 + 0, SP_08, 88, 0x80, -1, 0, 0, 0 );  --割れる割れる岩(ef_008)
setEffMoveKey( spep_4 + 0, wareru2_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 88, wareru2_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, wareru2_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88, wareru2_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, wareru2_b, 0 );
setEffRotateKey( spep_4 + 88, wareru2_b, 0 );
setEffAlphaKey( spep_4 + 0, wareru2_b, 255 );
setEffAlphaKey( spep_4 + 88, wareru2_b, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 34 -3, 906, 42, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 34 -3, shuchusen3, 42, 20 );

setEffMoveKey( spep_4 + 34 -3, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76 -3, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 34 -3, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_4 + 76 -3, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_4 + 34 -3, shuchusen3, 0 );
setEffRotateKey( spep_4 + 76 -3, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 34 -3, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 46 -3, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 47 -3, shuchusen3, 0 );
setEffAlphaKey( spep_4 + 63 -3, shuchusen3, 0 );
setEffAlphaKey( spep_4 + 64 -3, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 76 -3, shuchusen3, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 88, 1, 0 );
changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, -4.5, 96.9 , 0 );
setMoveKey( spep_4 + 2, 1, -4.5, 93.6 , 0 );
setMoveKey( spep_4 + 4, 1, -4.5, 90.2 , 0 );
setMoveKey( spep_4 + 6, 1, -4.5, 86.8 , 0 );
setMoveKey( spep_4 + 8, 1, -4.5, 83.4 , 0 );
setMoveKey( spep_4 + 10, 1, -4.5, 80 , 0 );
setMoveKey( spep_4 + 12, 1, -4.4, 76.6 , 0 );
setMoveKey( spep_4 + 14, 1, -4.4, 73.2 , 0 );
setMoveKey( spep_4 + 16, 1, -4.4, 69.8 , 0 );
setMoveKey( spep_4 + 18, 1, -4.4, 66.4 , 0 );
setMoveKey( spep_4 + 20, 1, -4.3, 63 , 0 );
setMoveKey( spep_4 + 22, 1, -4.3, 59.6 , 0 );
setMoveKey( spep_4 + 24, 1, -4.3, 56.2 , 0 );
setMoveKey( spep_4 + 26, 1, -4.2, 52.8 , 0 );
setMoveKey( spep_4 + 28, 1, -4.2, 49.4 , 0 );
setMoveKey( spep_4 + 30, 1, -4.2, 46 , 0 );
setMoveKey( spep_4 + 32, 1, -4.1, 42.6 , 0 );
setMoveKey( spep_4 + 34, 1, -13.1, 70.4 , 0 );
setMoveKey( spep_4 + 36, 1, 25.4, 36.3 , 0 );
setMoveKey( spep_4 + 38, 1, -9.3, 37.3 , 0 );
setMoveKey( spep_4 + 40, 1, -6.2, 69.4 , 0 );
setMoveKey( spep_4 + 42, 1, 6, 24.5 , 0 );
setMoveKey( spep_4 + 44, 1, 6.5, 21.4 , 0 );
setMoveKey( spep_4 + 46, 1, 3.3, 24.2 , 0 );
setMoveKey( spep_4 + 48, 1, 0.2, 26.9 , 0 );
setMoveKey( spep_4 + 50, 1, -2.9, 28 , 0 );
setMoveKey( spep_4 + 52, 1, -6, 28.9 , 0 );
setMoveKey( spep_4 + 54, 1, -9.1, 29.9 , 0 );
setMoveKey( spep_4 + 56, 1, -12.3, 31 , 0 );
setMoveKey( spep_4 + 58, 1, -15.4, 31.9 , 0 );
setMoveKey( spep_4 + 60, 1, -18.6, 32.9 , 0 );
setMoveKey( spep_4 + 62, 1, -21.8, 34 , 0 );
setMoveKey( spep_4 + 64, 1, 2.6, 45 , 0 );
setMoveKey( spep_4 + 66, 1, 5, 39.8 , 0 );
setMoveKey( spep_4 + 68, 1, -15.6, 34.2 , 0 );
setMoveKey( spep_4 + 70, 1, -8.1, 49.9 , 0 );
setMoveKey( spep_4 + 72, 1, -4, 25.1 , 0 );
setMoveKey( spep_4 + 74, 1, -4, 25.2 , 0 );
setMoveKey( spep_4 + 88, 1, -4, 25.2 , 0 );

setScaleKey( spep_4 + 0, 1, 7.99, 7.99 );
setScaleKey( spep_4 + 2, 1, 7.95, 7.95 );
setScaleKey( spep_4 + 4, 1, 7.28, 7.28 );
setScaleKey( spep_4 + 6, 1, 7.21, 7.21 );
setScaleKey( spep_4 + 8, 1, 6.58, 6.58 );
setScaleKey( spep_4 + 10, 1, 6.48, 6.48 );
setScaleKey( spep_4 + 12, 1, 5.87, 5.87 );
setScaleKey( spep_4 + 14, 1, 5.75, 5.75 );
setScaleKey( spep_4 + 16, 1, 5.17, 5.17 );
setScaleKey( spep_4 + 18, 1, 5.01, 5.01 );
setScaleKey( spep_4 + 20, 1, 4.47, 4.47 );
setScaleKey( spep_4 + 22, 1, 4.28, 4.28 );
setScaleKey( spep_4 + 24, 1, 3.77, 3.77 );
setScaleKey( spep_4 + 26, 1, 3.54, 3.54 );
setScaleKey( spep_4 + 28, 1, 3.06, 3.06 );
setScaleKey( spep_4 + 30, 1, 2.82, 2.82 );
setScaleKey( spep_4 + 32, 1, 2.35, 2.35 );
setScaleKey( spep_4 + 34, 1, 2, 2 );
setScaleKey( spep_4 + 36, 1, 2.56, 2.56 );
setScaleKey( spep_4 + 38, 1, 2.38, 2.38 );
setScaleKey( spep_4 + 40, 1, 2.19, 2.19 );
setScaleKey( spep_4 + 42, 1, 2.04, 2.04 );
setScaleKey( spep_4 + 44, 1, 1.93, 1.93 );
setScaleKey( spep_4 + 46, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 48, 1, 1.87, 1.87 );
setScaleKey( spep_4 + 50, 1, 1.78, 1.78 );
setScaleKey( spep_4 + 52, 1, 1.82, 1.82 );
setScaleKey( spep_4 + 54, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 56, 1, 1.77, 1.77 );
setScaleKey( spep_4 + 58, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 60, 1, 1.71, 1.71 );
setScaleKey( spep_4 + 62, 1, 1.63, 1.63 );
setScaleKey( spep_4 + 64, 1, 2.08, 2.08 );
setScaleKey( spep_4 + 66, 1, 1.93, 1.93 );
setScaleKey( spep_4 + 68, 1, 1.77, 1.77 );
setScaleKey( spep_4 + 70, 1, 1.63, 1.63 );
setScaleKey( spep_4 + 72, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 74, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 76, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 78, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 80, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 82, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 84, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 86, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 88, 1, 1.25, 1.25 );

setRotateKey( spep_4 + 0, 1, 106.7 );
setRotateKey( spep_4 + 2, 1, 107.2 );
setRotateKey( spep_4 + 4, 1, 107.6 );
setRotateKey( spep_4 + 6, 1, 108.1 );
setRotateKey( spep_4 + 8, 1, 108.5 );
setRotateKey( spep_4 + 10, 1, 108.9 );
setRotateKey( spep_4 + 12, 1, 109.4 );
setRotateKey( spep_4 + 14, 1, 109.8 );
setRotateKey( spep_4 + 16, 1, 110.3 );
setRotateKey( spep_4 + 18, 1, 110.7 );
setRotateKey( spep_4 + 20, 1, 111.1 );
setRotateKey( spep_4 + 22, 1, 111.6 );
setRotateKey( spep_4 + 24, 1, 112 );
setRotateKey( spep_4 + 26, 1, 112.4 );
setRotateKey( spep_4 + 28, 1, 112.9 );
setRotateKey( spep_4 + 30, 1, 113.3 );
setRotateKey( spep_4 + 32, 1, 113.8 );
setRotateKey( spep_4 + 34, 1, 114.2 );
setRotateKey( spep_4 + 78, 1, 114.2 );
setRotateKey( spep_4 + 80, 1, 114.6 );
setRotateKey( spep_4 + 82, 1, 114.9 );
setRotateKey( spep_4 + 84, 1, 115.2 );
setRotateKey( spep_4 + 86, 1, 115.5 );
setRotateKey( spep_4 + 88, 1, 115.9 );

-- ** 音 ** --
playSe( spep_4 + 34 -3, 1008 );  --岩に当たる
playSe( spep_4 + 64 -3, 1002 );  --岩に当たる

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 88, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 80, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 88;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_6 = spep_5 + 94;

------------------------------------------------------
-- 瞬間移動で回り込み(48F)
------------------------------------------------------

-- ** エフェクト等 ** --
mawarikomi = entryEffectLife( spep_6 + 0, SP_09, 48, 0x80, -1, 0, 0, 0 );  --瞬間移動で回り込み(ef_009)
setEffMoveKey( spep_6 + 0, mawarikomi, 0, 0 , 0 );
setEffMoveKey( spep_6 + 48, mawarikomi, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, mawarikomi, 1.0, 1.0 );
setEffScaleKey( spep_6 + 48, mawarikomi, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, mawarikomi, 0 );
setEffRotateKey( spep_6 + 48, mawarikomi, 0 );
setEffAlphaKey( spep_6 + 0, mawarikomi, 255 );
setEffAlphaKey( spep_6 + 47, mawarikomi, 255 );
setEffAlphaKey( spep_6 + 48, mawarikomi, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 48, 1, 0 );
changeAnime( spep_6 + 0, 1, 108 );

setMoveKey( spep_6 + 0, 1, -356.5, 254 , 0 );
setMoveKey( spep_6 + 2, 1, -290.4, 214 , 0 );
setMoveKey( spep_6 + 4, 1, -224.2, 174 , 0 );
setMoveKey( spep_6 + 6, 1, -158, 133.9 , 0 );
setMoveKey( spep_6 + 8, 1, -91.9, 93.9 , 0 );
setMoveKey( spep_6 + 10, 1, -84.5, 89.7 , 0 );
setMoveKey( spep_6 + 12, 1, -77.2, 85.4 , 0 );
setMoveKey( spep_6 + 14, 1, -69.9, 81.2 , 0 );
setMoveKey( spep_6 + 16, 1, -62.5, 77 , 0 );
setMoveKey( spep_6 + 18, 1, -55.2, 72.7 , 0 );
setMoveKey( spep_6 + 20, 1, -47.9, 68.5 , 0 );
setMoveKey( spep_6 + 22, 1, -40.6, 64.3 , 0 );
setMoveKey( spep_6 + 24, 1, -33.2, 60.1 , 0 );
setMoveKey( spep_6 + 26, 1, -25.9, 55.8 , 0 );
setMoveKey( spep_6 + 28, 1, -18.6, 51.6 , 0 );
setMoveKey( spep_6 + 30, 1, -11.2, 47.4 , 0 );
setMoveKey( spep_6 + 32, 1, -3.9, 43.2 , 0 );
setMoveKey( spep_6 + 34, 1, 3.4, 38.9 , 0 );
setMoveKey( spep_6 + 36, 1, 10.8, 34.7 , 0 );
setMoveKey( spep_6 + 38, 1, 18.1, 30.5 , 0 );
setMoveKey( spep_6 + 40, 1, 25.4, 26.2 , 0 );
setMoveKey( spep_6 + 42, 1, 32.8, 22 , 0 );
setMoveKey( spep_6 + 44, 1, 40.1, 17.8 , 0 );
setMoveKey( spep_6 + 46, 1, 47.4, 13.6 , 0 );
setMoveKey( spep_6 + 48, 1, 54.8, 9.3 , 0 );

setScaleKey( spep_6 + 0, 1, 6, 6 );
setScaleKey( spep_6 + 2, 1, 4.95, 4.95 );
setScaleKey( spep_6 + 4, 1, 3.9, 3.9 );
setScaleKey( spep_6 + 6, 1, 2.85, 2.85 );
setScaleKey( spep_6 + 8, 1, 1.8, 1.8 );
setScaleKey( spep_6 + 10, 1, 1.78, 1.78 );
setScaleKey( spep_6 + 12, 1, 1.75, 1.75 );
setScaleKey( spep_6 + 14, 1, 1.73, 1.73 );
setScaleKey( spep_6 + 16, 1, 1.7, 1.7 );
setScaleKey( spep_6 + 18, 1, 1.68, 1.68 );
setScaleKey( spep_6 + 20, 1, 1.66, 1.66 );
setScaleKey( spep_6 + 22, 1, 1.63, 1.63 );
setScaleKey( spep_6 + 24, 1, 1.61, 1.61 );
setScaleKey( spep_6 + 26, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 28, 1, 1.56, 1.56 );
setScaleKey( spep_6 + 30, 1, 1.53, 1.53 );
setScaleKey( spep_6 + 32, 1, 1.51, 1.51 );
setScaleKey( spep_6 + 34, 1, 1.49, 1.49 );
setScaleKey( spep_6 + 36, 1, 1.46, 1.46 );
setScaleKey( spep_6 + 38, 1, 1.44, 1.44 );
setScaleKey( spep_6 + 40, 1, 1.41, 1.41 );
setScaleKey( spep_6 + 42, 1, 1.39, 1.39 );
setScaleKey( spep_6 + 44, 1, 1.36, 1.36 );
setScaleKey( spep_6 + 46, 1, 1.34, 1.34 );
setScaleKey( spep_6 + 48, 1, 1.32, 1.32 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 48, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 48, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_6 + 42, 4, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 8, 4 );  --シャッ
setSeVolume( spep_6 + 8, 4, 90 );
playSe( spep_6 + 8, 43 );  --シャッ
setSeVolume( spep_6 + 8, 43, 120 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 48;

------------------------------------------------------
-- 蹴り上げ(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
keriage_f = entryEffectLife( spep_7 + 0, SP_10, 38, 0x100, -1, 0, 0, 0 );  --蹴り上げ(ef_010)
setEffMoveKey( spep_7 + 0, keriage_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 38, keriage_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, keriage_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 38, keriage_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, keriage_f, 0 );
setEffRotateKey( spep_7 + 38, keriage_f, 0 );
setEffAlphaKey( spep_7 + 0, keriage_f, 255 );
setEffAlphaKey( spep_7 + 38, keriage_f, 255 );

keriage_b = entryEffectLife( spep_7 + 0, SP_11, 38, 0x80, -1, 0, 0, 0 );  --蹴り上げ(ef_011)
setEffMoveKey( spep_7 + 0, keriage_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 38, keriage_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, keriage_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 38, keriage_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, keriage_b, 0 );
setEffRotateKey( spep_7 + 38, keriage_b, 0 );
setEffAlphaKey( spep_7 + 0, keriage_b, 255 );
setEffAlphaKey( spep_7 + 38, keriage_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 38, 1, 0 );
changeAnime( spep_7 + 0, 1, 8 );
changeAnime( spep_7 + 8 -3, 1, 6 );

setMoveKey( spep_7 + 0, 1, -9.7, 34.2 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -12.6, 65.5 , 0 );
setMoveKey( spep_7 -3 + 7, 1, -55.5, 56.8 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -34.4, 76.4 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -107.7, 154.8 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -92.1, 164.5 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -151.1, 177.9 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -136.4, 208.9 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -210.3, 284.5 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -232.7, 314.9 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -240.8, 315.8 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -236.3, 317.1 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -241.9, 324.5 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -238.4, 323.6 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -245.7, 323.7 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -241.8, 325.2 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -247.4, 332 , 0 );
setMoveKey( spep_7 -3 + 36, 1, -244.2, 332.3 , 0 );
setMoveKey( spep_7 -3 + 38, 1, -250.6, 331.5 , 0 );
setMoveKey( spep_7 + 38, 1, -250.6, 331.5 , 0 );

setScaleKey( spep_7 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 4, 1, 1.66, 1.66 );
setScaleKey( spep_7 -3 + 7, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 8, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 10, 1, 1.4, 1.4 );
setScaleKey( spep_7 -3 + 12, 1, 1.23, 1.23 );
setScaleKey( spep_7 -3 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_7 -3 + 16, 1, 0.85, 0.85 );
setScaleKey( spep_7 -3 + 18, 1, 0.67, 0.67 );
setScaleKey( spep_7 -3 + 20, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 22, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 24, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 26, 1, 0.37, 0.37 );
setScaleKey( spep_7 -3 + 28, 1, 0.33, 0.33 );
setScaleKey( spep_7 -3 + 30, 1, 0.3, 0.3 );
setScaleKey( spep_7 -3 + 32, 1, 0.27, 0.27 );
setScaleKey( spep_7 -3 + 34, 1, 0.22, 0.22 );
setScaleKey( spep_7 -3 + 36, 1, 0.19, 0.19 );
setScaleKey( spep_7 -3 + 38, 1, 0.16, 0.16 );
setScaleKey( spep_7 + 38, 1, 0.16, 0.16 );

setRotateKey( spep_7 + 0, 1, 37 );
setRotateKey( spep_7 -3 + 7, 1, 37 );
setRotateKey( spep_7 -3 + 8, 1, 33.7 );
setRotateKey( spep_7 -3 + 10, 1, 31.4 );
setRotateKey( spep_7 -3 + 12, 1, 29.1 );
setRotateKey( spep_7 -3 + 14, 1, 26.8 );
setRotateKey( spep_7 -3 + 16, 1, 24.5 );
setRotateKey( spep_7 -3 + 18, 1, 22.3 );
setRotateKey( spep_7 -3 + 20, 1, 20 );
setRotateKey( spep_7 -3 + 22, 1, 19.8 );
setRotateKey( spep_7 -3 + 24, 1, 19.7 );
setRotateKey( spep_7 -3 + 26, 1, 19.6 );
setRotateKey( spep_7 -3 + 28, 1, 19.5 );
setRotateKey( spep_7 -3 + 30, 1, 19.3 );
setRotateKey( spep_7 -3 + 32, 1, 19.2 );
setRotateKey( spep_7 -3 + 34, 1, 19.1 );
setRotateKey( spep_7 -3 + 36, 1, 19 );
setRotateKey( spep_7 -3 + 38, 1, 18.8 );
setRotateKey( spep_7 + 38, 1, 18.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 38, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 32, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_7 + 2, 1011 );  --蹴り上げ

-- ** 次の準備 ** --
spep_8 = spep_7 + 38;

------------------------------------------------------
-- 上空へ回り込み(42F)
------------------------------------------------------

-- ** エフェクト等 ** --
joukuu = entryEffectLife( spep_8 + 0, SP_12, 42, 0x80, -1, 0, 0, 0 );  --上空へ回り込み(ef_012)
setEffMoveKey( spep_8 + 0, joukuu, 0, 0 , 0 );
setEffMoveKey( spep_8 + 42, joukuu, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, joukuu, 1.0, 1.0 );
setEffScaleKey( spep_8 + 42, joukuu, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, joukuu, 0 );
setEffRotateKey( spep_8 + 42, joukuu, 0 );
setEffAlphaKey( spep_8 + 0, joukuu, 255 );
setEffAlphaKey( spep_8 + 42, joukuu, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 42, 1, 0 );
changeAnime( spep_8 + 0, 1, 8 );

setMoveKey( spep_8 + 0, 1, 282.3, -505.8 , 0 );
setMoveKey( spep_8 + 2, 1, 244.8, -432.3 , 0 );
setMoveKey( spep_8 + 4, 1, 207.5, -358.6 , 0 );
setMoveKey( spep_8 + 6, 1, 170.2, -285 , 0 );
setMoveKey( spep_8 + 8, 1, 132.8, -211.4 , 0 );
setMoveKey( spep_8 + 10, 1, 95.5, -137.8 , 0 );
setMoveKey( spep_8 + 12, 1, 58.1, -64.2 , 0 );
setMoveKey( spep_8 + 14, 1, 55.8, -59.6 , 0 );
setMoveKey( spep_8 + 16, 1, 53.5, -55 , 0 );
setMoveKey( spep_8 + 18, 1, 51.2, -50.4 , 0 );
setMoveKey( spep_8 + 20, 1, 49, -45.8 , 0 );
setMoveKey( spep_8 + 22, 1, 46.7, -41.2 , 0 );
setMoveKey( spep_8 + 24, 1, 44.4, -36.6 , 0 );
setMoveKey( spep_8 + 26, 1, 42.1, -32 , 0 );
setMoveKey( spep_8 + 28, 1, 39.8, -27.4 , 0 );
setMoveKey( spep_8 + 30, 1, 37.5, -22.8 , 0 );
setMoveKey( spep_8 + 32, 1, 35.2, -18.2 , 0 );
setMoveKey( spep_8 + 34, 1, 32.9, -13.6 , 0 );
setMoveKey( spep_8 + 36, 1, 30.6, -9 , 0 );
setMoveKey( spep_8 + 38, 1, 28.4, -4.4 , 0 );
setMoveKey( spep_8 + 40, 1, 26.1, 0.2 , 0 );
setMoveKey( spep_8 + 42, 1, 23.8, 4.8 , 0 );

setScaleKey( spep_8 + 0, 1, 7.99, 7.99 );
setScaleKey( spep_8 + 2, 1, 7.23, 7.23 );
setScaleKey( spep_8 + 4, 1, 6.47, 6.47 );
setScaleKey( spep_8 + 6, 1, 5.7, 5.7 );
setScaleKey( spep_8 + 8, 1, 4.93, 4.93 );
setScaleKey( spep_8 + 10, 1, 4.17, 4.17 );
setScaleKey( spep_8 + 12, 1, 3.4, 3.4 );
setScaleKey( spep_8 + 14, 1, 3.31, 3.31 );
setScaleKey( spep_8 + 16, 1, 3.21, 3.21 );
setScaleKey( spep_8 + 18, 1, 3.12, 3.12 );
setScaleKey( spep_8 + 20, 1, 3.03, 3.03 );
setScaleKey( spep_8 + 22, 1, 2.93, 2.93 );
setScaleKey( spep_8 + 24, 1, 2.84, 2.84 );
setScaleKey( spep_8 + 26, 1, 2.75, 2.75 );
setScaleKey( spep_8 + 28, 1, 2.65, 2.65 );
setScaleKey( spep_8 + 30, 1, 2.56, 2.56 );
setScaleKey( spep_8 + 32, 1, 2.47, 2.47 );
setScaleKey( spep_8 + 34, 1, 2.37, 2.37 );
setScaleKey( spep_8 + 36, 1, 2.28, 2.28 );
setScaleKey( spep_8 + 38, 1, 2.19, 2.19 );
setScaleKey( spep_8 + 40, 1, 2.09, 2.09 );
setScaleKey( spep_8 + 42, 1, 2, 2 );

setRotateKey( spep_8 + 0, 1, 35.1 );
setRotateKey( spep_8 + 2, 1, 35.2 );
setRotateKey( spep_8 + 42, 1, 35.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 42, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 36, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_8 + 16, 1109 );  --移動

-- ** 次の準備 ** --
spep_9 = spep_8 + 42;

------------------------------------------------------
-- 「はあっ・・・!!!」(90F)
------------------------------------------------------

-- ** エフェクト等 ** --
ha_f = entryEffectLife( spep_9 + 0, SP_13, 90, 0x100, -1, 0, 0, 0 );  --「はあっ・・・!!!」(ef_013)
setEffMoveKey( spep_9 + 0, ha_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 90, ha_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, ha_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 90, ha_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, ha_f, 0 );
setEffRotateKey( spep_9 + 90, ha_f, 0 );
setEffAlphaKey( spep_9 + 0, ha_f, 255 );
setEffAlphaKey( spep_9 + 89, ha_f, 255 );
setEffAlphaKey( spep_9 + 90, ha_f, 0 );

ha_b = entryEffectLife( spep_9 + 0, SP_14, 90, 0x80, -1, 0, 0, 0 );  --「はあっ・・・!!!」(ef_014)
setEffMoveKey( spep_9 + 0, ha_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 90, ha_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, ha_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 90, ha_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, ha_b, 0 );
setEffRotateKey( spep_9 + 90, ha_b, 0 );
setEffAlphaKey( spep_9 + 0, ha_b, 255 );
setEffAlphaKey( spep_9 + 89, ha_b, 255 );
setEffAlphaKey( spep_9 + 90, ha_b, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_9 + 0, 914, 90, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_9 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_9 + 90, ryusen1, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, ryusen1, 2.5, 1.2 );
setEffScaleKey( spep_9 + 90, ryusen1, 2.5, 1.2 );
setEffRotateKey( spep_9 + 0, ryusen1, 60 );
setEffRotateKey( spep_9 + 90, ryusen1, 60 );
setEffAlphaKey( spep_9 + 0, ryusen1, 255 );
setEffAlphaKey( spep_9 + 89, ryusen1, 255 );
setEffAlphaKey( spep_9 + 90, ryusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_9 + 80, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_9 + 2, SE_04 );  --はあっ

-- ** 次の準備 ** --
spep_10 = spep_9 + 90;

------------------------------------------------------
-- 肘打ち(78F)
------------------------------------------------------

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_10 + 0, 914, 16 -3, 0x100, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_10 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_10 + 16 -3, ryusen2, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, ryusen2, 1.5, 1.2 );
setEffScaleKey( spep_10 + 16 -3, ryusen2, 1.5, 1.2 );
setEffRotateKey( spep_10 + 0, ryusen2, 90 );
setEffRotateKey( spep_10 + 16 -3, ryusen2, 90 );
setEffAlphaKey( spep_10 + 0, ryusen2, 255 );
setEffAlphaKey( spep_10 + 16 -3, ryusen2, 255 );

-- ** エフェクト等 ** --
hiji_f = entryEffectLife( spep_10 + 0, SP_15, 78, 0x100, -1, 0, 0, 0 );  --肘打ち　描き文字(ef_015)
setEffMoveKey( spep_10 + 0, hiji_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 78, hiji_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hiji_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 78, hiji_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hiji_f, 0 );
setEffRotateKey( spep_10 + 78, hiji_f, 0 );
setEffAlphaKey( spep_10 + 0, hiji_f, 255 );
setEffAlphaKey( spep_10 + 78, hiji_f, 255 );

hiji_b = entryEffectLife( spep_10 + 0, SP_16, 78, 0x80, -1, 0, 0, 0 );  --肘打ち(ef_016)
setEffMoveKey( spep_10 + 0, hiji_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 78, hiji_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hiji_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 78, hiji_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hiji_b, 0 );
setEffRotateKey( spep_10 + 78, hiji_b, 0 );
setEffAlphaKey( spep_10 + 0, hiji_b, 255 );
setEffAlphaKey( spep_10 + 78, hiji_b, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_10 + 14 -3, 906, 40, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_10 + 14 -3, shuchusen4, 40, 20 );

setEffMoveKey( spep_10 + 14 -3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_10 + 54 -3, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_10 + 14 -3, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_10 + 54 -3, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_10 + 14 -3, shuchusen4, 0 );
setEffRotateKey( spep_10 + 54 -3, shuchusen4, 0 );

setEffAlphaKey( spep_10 + 14 -3, shuchusen4, 255 );
setEffAlphaKey( spep_10 + 54 -3, shuchusen4, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 + 76, 1, 0 );
changeAnime( spep_10 + 0, 1, 8 );
changeAnime( spep_10 -3 + 18, 1, 6 );

setMoveKey( spep_10 + 0, 1, 42.1, -812.3 , 0 );
setMoveKey( spep_10 -3 + 4, 1, 30.9, -689.7 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 37.1, -546.9 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 37.1, -423.1 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 42.1, -289.4 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 30.9, -167 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -10.4, -27.1 , 0 );
setMoveKey( spep_10 -3 + 17, 1, 67.7, -150.7 , 0 );
setMoveKey( spep_10 -3 + 18, 1, -4, -88 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 61.6, -107.8 , 0 );
setMoveKey( spep_10 -3 + 22, 1, -26.9, -138.5 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 57.4, -175.9 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 0, -121 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 67.2, -132.7 , 0 );
setMoveKey( spep_10 -3 + 30, 1, -6.2, -97.3 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 52, -168.6 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 9.9, -163.9 , 0 );
setMoveKey( spep_10 -3 + 36, 1, 64.1, -193.5 , 0 );
setMoveKey( spep_10 -3 + 38, 1, 8.2, -146.5 , 0 );
setMoveKey( spep_10 -3 + 40, 1, 55.4, -190.3 , 0 );
setMoveKey( spep_10 -3 + 42, 1, 8.8, -166.4 , 0 );
setMoveKey( spep_10 -3 + 44, 1, 33.9, -172.6 , 0 );
setMoveKey( spep_10 -3 + 46, 1, 35, -172.6 , 0 );
setMoveKey( spep_10 -3 + 48, 1, 36.2, -172.6 , 0 );
setMoveKey( spep_10 -3 + 50, 1, 32.3, -177.5 , 0 );
setMoveKey( spep_10 -3 + 52, 1, 36.5, -178.5 , 0 );
setMoveKey( spep_10 -3 + 54, 1, 32.7, -175.4 , 0 );
setMoveKey( spep_10 -3 + 56, 1, 37, -176.4 , 0 );
setMoveKey( spep_10 -3 + 58, 1, 33.1, -181.4 , 0 );
setMoveKey( spep_10 -3 + 60, 1, 33.3, -182.3 , 0 );
setMoveKey( spep_10 -3 + 62, 1, 33.5, -183.3 , 0 );
setMoveKey( spep_10 -3 + 64, 1, 33.6, -184.2 , 0 );
setMoveKey( spep_10 -3 + 66, 1, 33.8, -185.4 , 0 );
setMoveKey( spep_10 -3 + 68, 1, 33.9, -186.2 , 0 );
setMoveKey( spep_10 -3 + 70, 1, 34.1, -187.1 , 0 );
setMoveKey( spep_10 -3 + 72, 1, 34.3, -188.2 , 0 );
setMoveKey( spep_10 -3 + 74, 1, 34.4, -189 , 0 );
setMoveKey( spep_10 -3 + 76, 1, 34.6, -190.1 , 0 );
setMoveKey( spep_10 -3 + 78, 1, 34.8, -190.9 , 0 );
setMoveKey( spep_10 + 76, 1, 34.8, -190.9 , 0 );

setScaleKey( spep_10 + 0, 1, 1.57, 1.57 );
setScaleKey( spep_10 -3 + 12, 1, 1.57, 1.57 );
setScaleKey( spep_10 -3 + 14, 1, 2.29, 2.29 );
setScaleKey( spep_10 -3 + 17, 1, 1.97, 1.97 );
setScaleKey( spep_10 -3 + 18, 1, 1.67, 1.67 );
setScaleKey( spep_10 -3 + 20, 1, 1.36, 1.36 );
setScaleKey( spep_10 -3 + 22, 1, 2.29, 2.29 );
setScaleKey( spep_10 -3 + 24, 1, 2.12, 2.12 );
setScaleKey( spep_10 -3 + 26, 1, 1.93, 1.93 );
setScaleKey( spep_10 -3 + 28, 1, 1.76, 1.76 );
setScaleKey( spep_10 -3 + 30, 1, 1.57, 1.57 );
setScaleKey( spep_10 -3 + 32, 1, 2.29, 2.29 );
setScaleKey( spep_10 + 76, 1, 2.29, 2.29 );

setRotateKey( spep_10 + 0, 1, 90.5 );
setRotateKey( spep_10 -3 + 17, 1, 90.5 );
setRotateKey( spep_10 -3 + 18, 1, 144 );
setRotateKey( spep_10 -3 + 20, 1, 143.7 );
setRotateKey( spep_10 -3 + 22, 1, 143.3 );
setRotateKey( spep_10 -3 + 24, 1, 143 );
setRotateKey( spep_10 -3 + 26, 1, 142.7 );
setRotateKey( spep_10 -3 + 28, 1, 142.4 );
setRotateKey( spep_10 -3 + 30, 1, 142 );
setRotateKey( spep_10 -3 + 32, 1, 141.7 );
setRotateKey( spep_10 -3 + 34, 1, 141.4 );
setRotateKey( spep_10 -3 + 36, 1, 141.1 );
setRotateKey( spep_10 -3 + 38, 1, 140.8 );
setRotateKey( spep_10 -3 + 40, 1, 140.4 );
setRotateKey( spep_10 -3 + 42, 1, 140.1 );
setRotateKey( spep_10 -3 + 44, 1, 139.8 );
setRotateKey( spep_10 -3 + 46, 1, 139.5 );
setRotateKey( spep_10 -3 + 48, 1, 139.1 );
setRotateKey( spep_10 -3 + 50, 1, 138.8 );
setRotateKey( spep_10 -3 + 52, 1, 138.5 );
setRotateKey( spep_10 -3 + 54, 1, 138.2 );
setRotateKey( spep_10 -3 + 56, 1, 137.8 );
setRotateKey( spep_10 -3 + 58, 1, 137.5 );
setRotateKey( spep_10 -3 + 60, 1, 137.2 );
setRotateKey( spep_10 -3 + 62, 1, 136.9 );
setRotateKey( spep_10 -3 + 64, 1, 136.6 );
setRotateKey( spep_10 -3 + 66, 1, 136.2 );
setRotateKey( spep_10 -3 + 68, 1, 135.9 );
setRotateKey( spep_10 -3 + 70, 1, 135.6 );
setRotateKey( spep_10 -3 + 72, 1, 135.3 );
setRotateKey( spep_10 -3 + 74, 1, 134.9 );
setRotateKey( spep_10 -3 + 76, 1, 134.6 );
setRotateKey( spep_10 -3 + 78, 1, 134.3 );
setRotateKey( spep_10 + 76, 1, 134.3 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_10 + 68, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_10 -3 + 18, 1011 );  --肘打ち
setSeVolume( spep_10 + 0, 1011, 110 );
playSe( spep_10 -3 + 18, 1123 );  --肘打ち
setSeVolume( spep_10 + 0, 1011, 80 );

-- ** 次の準備 ** --
spep_11 = spep_10 + 78;

------------------------------------------------------
-- 落下(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
fall = entryEffectLife( spep_11 + 0, SP_17, 38, 0x80, -1, 0, 0, 0 );  --落下(ef_017)
setEffMoveKey( spep_11 + 0, fall, 0, 0 , 0 );
setEffMoveKey( spep_11 + 38, fall, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, fall, 1.0, 1.0 );
setEffScaleKey( spep_11 + 38, fall, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, fall, 0 );
setEffRotateKey( spep_11 + 38, fall, 0 );
setEffAlphaKey( spep_11 + 0, fall, 255 );
setEffAlphaKey( spep_11 + 37, fall, 255 );
setEffAlphaKey( spep_11 + 38, fall, 0 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_11 + 0, 906, 38, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_11 + 0, shuchusen5, 38, 20 );

setEffMoveKey( spep_11 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_11 + 38, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_11 + 0, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_11 + 38, shuchusen5, 1.6, 1.6 );

setEffRotateKey( spep_11 + 0, shuchusen5, 0 );
setEffRotateKey( spep_11 + 38, shuchusen5, 0 );

setEffAlphaKey( spep_11 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_11 + 38, shuchusen5, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 + 36, 1, 1 );
changeAnime( spep_11 + 0, 1, 105 );

setMoveKey( spep_11 + 0, 1, 140.4, 17.2 , 0 );
setMoveKey( spep_11 + 2, 1, 123.6, 15 , 0 );
setMoveKey( spep_11 + 4, 1, 106.8, 12.7 , 0 );
setMoveKey( spep_11 + 6, 1, 90, 10.5 , 0 );
setMoveKey( spep_11 + 8, 1, 73.2, 8.2 , 0 );
setMoveKey( spep_11 + 10, 1, 56.4, 6 , 0 );
setMoveKey( spep_11 + 12, 1, 39.6, 3.7 , 0 );
setMoveKey( spep_11 + 14, 1, 22.8, 1.5 , 0 );
setMoveKey( spep_11 + 16, 1, 6, -0.8 , 0 );
setMoveKey( spep_11 + 18, 1, 5.7, -0.5 , 0 );
setMoveKey( spep_11 + 20, 1, 5.5, -0.2 , 0 );
setMoveKey( spep_11 + 22, 1, 5.2, 0.1 , 0 );
setMoveKey( spep_11 + 24, 1, 4.9, 0.3 , 0 );
setMoveKey( spep_11 + 26, 1, 4.6, 0.6 , 0 );
setMoveKey( spep_11 + 28, 1, 4.4, 0.9 , 0 );
setMoveKey( spep_11 + 30, 1, 4.1, 1.2 , 0 );
setMoveKey( spep_11 + 32, 1, 3.8, 1.4 , 0 );
setMoveKey( spep_11 + 34, 1, 3.5, 1.7 , 0 );
setMoveKey( spep_11 + 36, 1, 3.3, 2 , 0 );

setScaleKey( spep_11 + 0, 1, 9, 9 );
setScaleKey( spep_11 + 2, 1, 8, 8 );
setScaleKey( spep_11 + 4, 1, 7, 7 );
setScaleKey( spep_11 + 6, 1, 6, 6 );
setScaleKey( spep_11 + 8, 1, 5, 5 );
setScaleKey( spep_11 + 10, 1, 4, 4 );
setScaleKey( spep_11 + 12, 1, 3, 3 );
setScaleKey( spep_11 + 14, 1, 2, 2 );
setScaleKey( spep_11 + 16, 1, 1, 1 );
setScaleKey( spep_11 + 18, 1, 0.92, 0.92 );
setScaleKey( spep_11 + 20, 1, 0.85, 0.85 );
setScaleKey( spep_11 + 22, 1, 0.77, 0.77 );
setScaleKey( spep_11 + 24, 1, 0.69, 0.69 );
setScaleKey( spep_11 + 26, 1, 0.61, 0.61 );
setScaleKey( spep_11 + 28, 1, 0.54, 0.54 );
setScaleKey( spep_11 + 30, 1, 0.46, 0.46 );
setScaleKey( spep_11 + 32, 1, 0.38, 0.38 );
setScaleKey( spep_11 + 34, 1, 0.31, 0.31 );
setScaleKey( spep_11 + 36, 1, 0.23, 0.23 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 + 36, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 38, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_11 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_11 + 28, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_11 + 0, 1116 );  --落ちる
setSeVolume( spep_11 + 0, 1116, 105 );
setSeVolume( spep_11 + 16, 1116, 70 );
setSeVolume( spep_11 + 20, 1116, 50 );
setSeVolume( spep_11 + 25, 1116, 35 );
setSeVolume( spep_11 + 36, 1116, 10 );

-- ** 次の準備 ** --
spep_12 = spep_11 + 38;

------------------------------------------------------
-- 地面に激突(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_12 + 0, SP_18, 0x80, -1, 0, 0, 0 );  --地面に激突(ef_018)
setEffMoveKey( spep_12 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_12 + 176, finish, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_12 + 176, finish, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, finish, 0 );
setEffRotateKey( spep_12 + 176, finish, 0 );
setEffAlphaKey( spep_12 + 0, finish, 255 );
setEffAlphaKey( spep_12 + 176, finish, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_12 + 0, 1, 1 );
setDisp( spep_12 + 14, 1, 0 );
changeAnime( spep_12 + 0, 1, 108 );

setMoveKey( spep_12 + 0, 1, 0, 593.2 , 0 );
setMoveKey( spep_12 + 4 -3, 1, 0, 498.8 , 0 );
setMoveKey( spep_12 + 6 -3, 1, 0, 404.5 , 0 );
setMoveKey( spep_12 + 8 -3, 1, 0, 310.2 , 0 );
setMoveKey( spep_12 + 10 -3, 1, 0, 105.6 , 0 );
setMoveKey( spep_12 + 12 -3, 1, 0, -98.9 , 0 );
setMoveKey( spep_12 + 14 -3, 1, 0, -303.4 , 0 );
setMoveKey( spep_12 + 14, 1, 0, -303.4 , 0 );

setScaleKey( spep_12 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_12 + 14, 1, 0.2, 0.2 );

setRotateKey( spep_12 + 0, 1, 90 );
setRotateKey( spep_12 + 14, 1, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 174, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_12 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_12 + 20, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_12 + 58 );
endPhase( spep_12 + 174 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- バストアップ(108F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
bustup = entryEffectLife( spep_0 + 0, SP_01, 108, 0x100, -1, 0, 0, 0 );  --バストアップ(ef_001)
setEffMoveKey( spep_0 + 0, bustup, 0, 0 , 0 );
setEffMoveKey( spep_0 + 108, bustup, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, bustup, -1.0, 1.0 );
setEffScaleKey( spep_0 + 108, bustup, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, bustup, 0 );
setEffRotateKey( spep_0 + 108, bustup, 0 );
setEffAlphaKey( spep_0 + 0, bustup, 255 );
setEffAlphaKey( spep_0 + 108, bustup, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 78, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 78, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 78, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 78, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 21, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 22, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 78, shuchusen1, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 108, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE1 = playSe( spep_0 + 16, SE_04 );  --ゴゴゴ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 60; --エンドフェイズのフレーム数を置き換える

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

-- ** 白フェード ** --
entryFade( spep_0 + 104, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 86, 4 );  --移動
setSeVolume( spep_0 + 86, 4, 120 );
playSe( spep_0 + 86, 1109 ); --移動	
setSeVolume( spep_0 + 86, 1109, 90 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 108;

------------------------------------------------------
-- 蹴りタックル(68F)
------------------------------------------------------

-- ** エフェクト等 ** --
tackle_f = entryEffectLife( spep_1 + 0, SP_02x, 68, 0x100, -1, 0, 0, 0 );  --蹴りタックル描き文字(ef_002)
setEffMoveKey( spep_1 + 0, tackle_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, tackle_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tackle_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 68, tackle_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tackle_f, 0 );
setEffRotateKey( spep_1 + 68, tackle_f, 0 );
setEffAlphaKey( spep_1 + 0, tackle_f, 255 );
setEffAlphaKey( spep_1 + 68, tackle_f, 255 );

tackle_b = entryEffectLife( spep_1 + 0, SP_03, 68, 0x80, -1, 0, 0, 0 );  --蹴りタックル(ef_003)
setEffMoveKey( spep_1 + 0, tackle_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, tackle_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tackle_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 68, tackle_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tackle_b, 0 );
setEffRotateKey( spep_1 + 68, tackle_b, 0 );
setEffAlphaKey( spep_1 + 0, tackle_b, 255 );
setEffAlphaKey( spep_1 + 68, tackle_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 40, 1, 0 );
changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1 -3 + 26, 1, 107 );

setMoveKey( spep_1 + 0, 1, 139.8, -23.8 , 0 );
setMoveKey( spep_1 -3 + 2, 1, 139.6, -23.9 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 139.5, -24 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 139.3, -24.2 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 139.1, -24.4 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 139, -24.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 138.8, -24.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 138.6, -24.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 138.5, -25 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 138.3, -25.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 138.1, -25.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 138, -25.5 , 0 );
setMoveKey( spep_1 -3 + 25, 1, 137.8, -25.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 374.3, -200.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 145.1, -123.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 215.3, -210.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 332.9, -324.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 233.2, -257.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 362.2, -411.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 467.8, -417.8 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 356.5, -583.6 , 0 );
setMoveKey( spep_1 + 40, 1, 356.5 + 50, -583.6 -60 , 0 );

setScaleKey( spep_1 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 25, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 26, 1, 3.75 -1.5, 3.75 -1.5 );
setScaleKey( spep_1 -3 + 28, 1, 2.15 -1, 2.12 -1 );
setScaleKey( spep_1 -3 + 30, 1, 3.37 -1.2, 3.37 -1.2 );
setScaleKey( spep_1 -3 + 32, 1, 3.46 -1.4, 3.46 -1.4 );
setScaleKey( spep_1 -3 + 34, 1, 4.05 -1.5, 4.05 -1.5 );
setScaleKey( spep_1 -3 + 36, 1, 4.25 -1.6, 4.25 -1.6 );
setScaleKey( spep_1 -3 + 38, 1, 4.83 -1.6, 4.83 -1.6 );
setScaleKey( spep_1 -3 + 40, 1, 4.85 -1.6, 4.8 -1.6 );
setScaleKey( spep_1 + 40, 1, 4.85 -1.6, 4.8 -1.6 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 40, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 68, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 60, 6, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_1 + 6, 1118 );  --突進
--setSeVolume( spep_1 + 6, 1118, 85);
--setSeVolume( spep_1 + 62, 1118, 40);
--setSeVolume( spep_1 + 66, 1118, 10);
playSe( spep_1 + 26 -3, 1120 );  --ドスッ

-- ** 次の準備 ** --
spep_2 = spep_1 + 68;

------------------------------------------------------
-- 奥へ吹っ飛ぶ(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
futtobi = entryEffectLife( spep_2 + 0, SP_04, 58, 0x80, -1, 0, 0, 0 );  --奥へ吹っ飛ぶ(ef_004)
setEffMoveKey( spep_2 + 0, futtobi, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, futtobi, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, futtobi, 1.0, 1.0 );
setEffScaleKey( spep_2 + 58, futtobi, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, futtobi, 0 );
setEffRotateKey( spep_2 + 58, futtobi, 0 );
setEffAlphaKey( spep_2 + 0, futtobi, 255 );
setEffAlphaKey( spep_2 + 58, futtobi, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 58, 1, 0 );
changeAnime( spep_2 + 0, 1, 105 );

setMoveKey( spep_2 + 0, 1, 69.1, -206.1 , 0 );
setMoveKey( spep_2 + 2, 1, 62, -167.8 , 0 );
setMoveKey( spep_2 + 4, 1, 54.9, -129.5 , 0 );
setMoveKey( spep_2 + 6, 1, 47.8, -91.2 , 0 );
setMoveKey( spep_2 + 8, 1, 40.8, -53 , 0 );
setMoveKey( spep_2 + 10, 1, 33.8, -14.7 , 0 );
setMoveKey( spep_2 + 12, 1, 26.7, 23.6 , 0 );
setMoveKey( spep_2 + 14, 1, 19.6, 61.9 , 0 );
setMoveKey( spep_2 + 16, 1, 19.6, 61.2 , 0 );
setMoveKey( spep_2 + 18, 1, 19.6, 60.3 , 0 );
setMoveKey( spep_2 + 20, 1, 19.6, 59.6 , 0 );
setMoveKey( spep_2 + 22, 1, 19.6, 58.9 , 0 );
setMoveKey( spep_2 + 24, 1, 19.6, 58 , 0 );
setMoveKey( spep_2 + 26, 1, 19.6, 57.3 , 0 );
setMoveKey( spep_2 + 28, 1, 19.6, 56.5 , 0 );
setMoveKey( spep_2 + 30, 1, 19.6, 55.8 , 0 );
setMoveKey( spep_2 + 32, 1, 19.6, 55 , 0 );
setMoveKey( spep_2 + 34, 1, 19.6, 54.2 , 0 );
setMoveKey( spep_2 + 36, 1, 19.6, 53.5 , 0 );
setMoveKey( spep_2 + 38, 1, 19.6, 52.6 , 0 );
setMoveKey( spep_2 + 40, 1, 19.6, 51.9 , 0 );
setMoveKey( spep_2 + 42, 1, 19.6, 51.2 , 0 );
setMoveKey( spep_2 + 44, 1, 19.6, 50.4 , 0 );
setMoveKey( spep_2 + 46, 1, 19.6, 49.6 , 0 );
setMoveKey( spep_2 + 48, 1, 19.6, 48.8 , 0 );
setMoveKey( spep_2 + 50, 1, 19.6, 48.1 , 0 );
setMoveKey( spep_2 + 52, 1, 19.6, 47.4 , 0 );
setMoveKey( spep_2 + 54, 1, 19.6, 46.5 , 0 );
setMoveKey( spep_2 + 56, 1, 19.6, 45.8 , 0 );
setMoveKey( spep_2 + 58, 1, 19.6, 45 , 0 );

setScaleKey( spep_2 + 0, 1, 6, 6 );
setScaleKey( spep_2 + 2, 1, 5.23, 5.23 );
setScaleKey( spep_2 + 4, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 6, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 8, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 10, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 12, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 14, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 16, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 18, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 20, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 22, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 24, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 26, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 28, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 30, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 32, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 34, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 36, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 38, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 42, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 44, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 46, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 48, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 50, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 52, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 54, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 56, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 58, 1, 0.06, 0.06 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 58, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 48, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 0, 1121 );  --飛んでく

-- ** 次の準備 ** --
spep_3 = spep_2 + 58;

------------------------------------------------------
-- 割れる岩(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
wareru1_f = entryEffectLife( spep_3 + 0, SP_05x, 58, 0x100, -1, 0, 0, 0 );  --割れる岩(ef_005)
setEffMoveKey( spep_3 + 0, wareru1_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, wareru1_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, wareru1_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 58, wareru1_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, wareru1_f, 0 );
setEffRotateKey( spep_3 + 58, wareru1_f, 0 );
setEffAlphaKey( spep_3 + 0, wareru1_f, 255 );
setEffAlphaKey( spep_3 + 57, wareru1_f, 255 );
setEffAlphaKey( spep_3 + 58, wareru1_f, 0 );

wareru1_b = entryEffectLife( spep_3 + 0, SP_06, 58, 0x80, -1, 0, 0, 0 );  --割れる岩(ef_006)
setEffMoveKey( spep_3 + 0, wareru1_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, wareru1_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, wareru1_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 58, wareru1_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, wareru1_b, 0 );
setEffRotateKey( spep_3 + 58, wareru1_b, 0 );
setEffAlphaKey( spep_3 + 0, wareru1_b, 255 );
setEffAlphaKey( spep_3 + 57, wareru1_b, 255 );
setEffAlphaKey( spep_3 + 58, wareru1_b, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 22 -3, 906, 36 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 22 -3, shuchusen2, 36 +3, 20 );

setEffMoveKey( spep_3 + 22 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 22 -3, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_3 + 58, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_3 + 22 -3, shuchusen2, 0 );
setEffRotateKey( spep_3 + 58, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 22 -3, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 57, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 58, shuchusen2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 16, 1, 0 );
setDisp( spep_3 + 22 -3, 1, 1 );
setDisp( spep_3 + 40 -3, 1, 0 );
changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, -290.6, 47 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -290.6, 47 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -285.5, 47.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -269.9, 48 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -243.9, 49.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -207.6, 51 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -160.8, 53.2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -103.7, 55.9 , 0 );
setMoveKey( spep_3 + 16, 1, -103.7, 55.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 42.5, 88 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 69.8, 52.3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 73.1, 87.4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 144.2, 64 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 172, 85.8 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 266.4, 78.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 337.5, 127.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 471.7, 85.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 571.6, 118.8 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 692.5, 135.9 , 0 );

setScaleKey( spep_3 + 0, 1, 0.1, 0.1 );
setScaleKey( spep_3 -3 + 4, 1, 0.1, 0.1 );
setScaleKey( spep_3 -3 + 6, 1, 0.12, 0.12 );
setScaleKey( spep_3 -3 + 8, 1, 0.18, 0.18 );
setScaleKey( spep_3 -3 + 10, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 12, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 14, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 16, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 16, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 24, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 26, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 28, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 30, 1, 1.83, 1.83 );
setScaleKey( spep_3 -3 + 32, 1, 2.13, 2.13 );
setScaleKey( spep_3 -3 + 34, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 36, 1, 2.93, 2.93 );
setScaleKey( spep_3 -3 + 38, 1, 3.43, 3.43 );
setScaleKey( spep_3 -3 + 40, 1, 4, 4 );

setRotateKey( spep_3 + 0, 1, 149.7 );
setRotateKey( spep_3 -3 + 4, 1, 149.7 );
setRotateKey( spep_3 -3 + 6, 1, 149.8 );
setRotateKey( spep_3 + 16, 1, 149.8 );
setRotateKey( spep_3 -3 + 22, 1, -124.6 );
setRotateKey( spep_3 -3 + 24, 1, -124.5 );
setRotateKey( spep_3 -3 + 40, 1, -124.5 );

-- ** 音 ** --
playSe( spep_3 + 22 -3, 1011 );  --岩に当たる

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 48, 8, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 58;

------------------------------------------------------
-- 割れる割れる岩(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
wareru2_f = entryEffectLife( spep_4 + 0, SP_07, 88, 0x100, -1, 0, 0, 0 );  --割れる割れる岩(ef_007)
setEffMoveKey( spep_4 + 0, wareru2_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 88, wareru2_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, wareru2_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88, wareru2_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, wareru2_f, 0 );
setEffRotateKey( spep_4 + 88, wareru2_f, 0 );
setEffAlphaKey( spep_4 + 0, wareru2_f, 255 );
setEffAlphaKey( spep_4 + 88, wareru2_f, 255 );

wareru2_b = entryEffectLife( spep_4 + 0, SP_08, 88, 0x80, -1, 0, 0, 0 );  --割れる割れる岩(ef_008)
setEffMoveKey( spep_4 + 0, wareru2_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 88, wareru2_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, wareru2_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88, wareru2_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, wareru2_b, 0 );
setEffRotateKey( spep_4 + 88, wareru2_b, 0 );
setEffAlphaKey( spep_4 + 0, wareru2_b, 255 );
setEffAlphaKey( spep_4 + 88, wareru2_b, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 34 -3, 906, 42, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 34 -3, shuchusen3, 42, 20 );

setEffMoveKey( spep_4 + 34 -3, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76 -3, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 34 -3, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_4 + 76 -3, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_4 + 34 -3, shuchusen3, 0 );
setEffRotateKey( spep_4 + 76 -3, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 34 -3, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 46 -3, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 47 -3, shuchusen3, 0 );
setEffAlphaKey( spep_4 + 63 -3, shuchusen3, 0 );
setEffAlphaKey( spep_4 + 64 -3, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 76 -3, shuchusen3, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 88, 1, 0 );
changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, -4.5, 96.9 , 0 );
setMoveKey( spep_4 + 2, 1, -4.5, 93.6 , 0 );
setMoveKey( spep_4 + 4, 1, -4.5, 90.2 , 0 );
setMoveKey( spep_4 + 6, 1, -4.5, 86.8 , 0 );
setMoveKey( spep_4 + 8, 1, -4.5, 83.4 , 0 );
setMoveKey( spep_4 + 10, 1, -4.5, 80 , 0 );
setMoveKey( spep_4 + 12, 1, -4.4, 76.6 , 0 );
setMoveKey( spep_4 + 14, 1, -4.4, 73.2 , 0 );
setMoveKey( spep_4 + 16, 1, -4.4, 69.8 , 0 );
setMoveKey( spep_4 + 18, 1, -4.4, 66.4 , 0 );
setMoveKey( spep_4 + 20, 1, -4.3, 63 , 0 );
setMoveKey( spep_4 + 22, 1, -4.3, 59.6 , 0 );
setMoveKey( spep_4 + 24, 1, -4.3, 56.2 , 0 );
setMoveKey( spep_4 + 26, 1, -4.2, 52.8 , 0 );
setMoveKey( spep_4 + 28, 1, -4.2, 49.4 , 0 );
setMoveKey( spep_4 + 30, 1, -4.2, 46 , 0 );
setMoveKey( spep_4 + 32, 1, -4.1, 42.6 , 0 );
setMoveKey( spep_4 + 34, 1, -13.1, 70.4 , 0 );
setMoveKey( spep_4 + 36, 1, 25.4, 36.3 , 0 );
setMoveKey( spep_4 + 38, 1, -9.3, 37.3 , 0 );
setMoveKey( spep_4 + 40, 1, -6.2, 69.4 , 0 );
setMoveKey( spep_4 + 42, 1, 6, 24.5 , 0 );
setMoveKey( spep_4 + 44, 1, 6.5, 21.4 , 0 );
setMoveKey( spep_4 + 46, 1, 3.3, 24.2 , 0 );
setMoveKey( spep_4 + 48, 1, 0.2, 26.9 , 0 );
setMoveKey( spep_4 + 50, 1, -2.9, 28 , 0 );
setMoveKey( spep_4 + 52, 1, -6, 28.9 , 0 );
setMoveKey( spep_4 + 54, 1, -9.1, 29.9 , 0 );
setMoveKey( spep_4 + 56, 1, -12.3, 31 , 0 );
setMoveKey( spep_4 + 58, 1, -15.4, 31.9 , 0 );
setMoveKey( spep_4 + 60, 1, -18.6, 32.9 , 0 );
setMoveKey( spep_4 + 62, 1, -21.8, 34 , 0 );
setMoveKey( spep_4 + 64, 1, 2.6, 45 , 0 );
setMoveKey( spep_4 + 66, 1, 5, 39.8 , 0 );
setMoveKey( spep_4 + 68, 1, -15.6, 34.2 , 0 );
setMoveKey( spep_4 + 70, 1, -8.1, 49.9 , 0 );
setMoveKey( spep_4 + 72, 1, -4, 25.1 , 0 );
setMoveKey( spep_4 + 74, 1, -4, 25.2 , 0 );
setMoveKey( spep_4 + 88, 1, -4, 25.2 , 0 );

setScaleKey( spep_4 + 0, 1, 7.99, 7.99 );
setScaleKey( spep_4 + 2, 1, 7.95, 7.95 );
setScaleKey( spep_4 + 4, 1, 7.28, 7.28 );
setScaleKey( spep_4 + 6, 1, 7.21, 7.21 );
setScaleKey( spep_4 + 8, 1, 6.58, 6.58 );
setScaleKey( spep_4 + 10, 1, 6.48, 6.48 );
setScaleKey( spep_4 + 12, 1, 5.87, 5.87 );
setScaleKey( spep_4 + 14, 1, 5.75, 5.75 );
setScaleKey( spep_4 + 16, 1, 5.17, 5.17 );
setScaleKey( spep_4 + 18, 1, 5.01, 5.01 );
setScaleKey( spep_4 + 20, 1, 4.47, 4.47 );
setScaleKey( spep_4 + 22, 1, 4.28, 4.28 );
setScaleKey( spep_4 + 24, 1, 3.77, 3.77 );
setScaleKey( spep_4 + 26, 1, 3.54, 3.54 );
setScaleKey( spep_4 + 28, 1, 3.06, 3.06 );
setScaleKey( spep_4 + 30, 1, 2.82, 2.82 );
setScaleKey( spep_4 + 32, 1, 2.35, 2.35 );
setScaleKey( spep_4 + 34, 1, 2, 2 );
setScaleKey( spep_4 + 36, 1, 2.56, 2.56 );
setScaleKey( spep_4 + 38, 1, 2.38, 2.38 );
setScaleKey( spep_4 + 40, 1, 2.19, 2.19 );
setScaleKey( spep_4 + 42, 1, 2.04, 2.04 );
setScaleKey( spep_4 + 44, 1, 1.93, 1.93 );
setScaleKey( spep_4 + 46, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 48, 1, 1.87, 1.87 );
setScaleKey( spep_4 + 50, 1, 1.78, 1.78 );
setScaleKey( spep_4 + 52, 1, 1.82, 1.82 );
setScaleKey( spep_4 + 54, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 56, 1, 1.77, 1.77 );
setScaleKey( spep_4 + 58, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 60, 1, 1.71, 1.71 );
setScaleKey( spep_4 + 62, 1, 1.63, 1.63 );
setScaleKey( spep_4 + 64, 1, 2.08, 2.08 );
setScaleKey( spep_4 + 66, 1, 1.93, 1.93 );
setScaleKey( spep_4 + 68, 1, 1.77, 1.77 );
setScaleKey( spep_4 + 70, 1, 1.63, 1.63 );
setScaleKey( spep_4 + 72, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 74, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 76, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 78, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 80, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 82, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 84, 1, 1.31, 1.31 );
setScaleKey( spep_4 + 86, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 88, 1, 1.25, 1.25 );

setRotateKey( spep_4 + 0, 1, 106.7 );
setRotateKey( spep_4 + 2, 1, 107.2 );
setRotateKey( spep_4 + 4, 1, 107.6 );
setRotateKey( spep_4 + 6, 1, 108.1 );
setRotateKey( spep_4 + 8, 1, 108.5 );
setRotateKey( spep_4 + 10, 1, 108.9 );
setRotateKey( spep_4 + 12, 1, 109.4 );
setRotateKey( spep_4 + 14, 1, 109.8 );
setRotateKey( spep_4 + 16, 1, 110.3 );
setRotateKey( spep_4 + 18, 1, 110.7 );
setRotateKey( spep_4 + 20, 1, 111.1 );
setRotateKey( spep_4 + 22, 1, 111.6 );
setRotateKey( spep_4 + 24, 1, 112 );
setRotateKey( spep_4 + 26, 1, 112.4 );
setRotateKey( spep_4 + 28, 1, 112.9 );
setRotateKey( spep_4 + 30, 1, 113.3 );
setRotateKey( spep_4 + 32, 1, 113.8 );
setRotateKey( spep_4 + 34, 1, 114.2 );
setRotateKey( spep_4 + 78, 1, 114.2 );
setRotateKey( spep_4 + 80, 1, 114.6 );
setRotateKey( spep_4 + 82, 1, 114.9 );
setRotateKey( spep_4 + 84, 1, 115.2 );
setRotateKey( spep_4 + 86, 1, 115.5 );
setRotateKey( spep_4 + 88, 1, 115.9 );

-- ** 音 ** --
playSe( spep_4 + 34 -3, 1008 );  --岩に当たる
playSe( spep_4 + 64 -3, 1002 );  --岩に当たる

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 88, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 80, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 88;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_6 = spep_5 + 94;

------------------------------------------------------
-- 瞬間移動で回り込み(48F)
------------------------------------------------------

-- ** エフェクト等 ** --
mawarikomi = entryEffectLife( spep_6 + 0, SP_09x, 48, 0x80, -1, 0, 0, 0 );  --瞬間移動で回り込み(ef_009)
setEffMoveKey( spep_6 + 0, mawarikomi, 0, 0 , 0 );
setEffMoveKey( spep_6 + 48, mawarikomi, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, mawarikomi, 1.0, 1.0 );
setEffScaleKey( spep_6 + 48, mawarikomi, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, mawarikomi, 0 );
setEffRotateKey( spep_6 + 48, mawarikomi, 0 );
setEffAlphaKey( spep_6 + 0, mawarikomi, 255 );
setEffAlphaKey( spep_6 + 47, mawarikomi, 255 );
setEffAlphaKey( spep_6 + 48, mawarikomi, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 48, 1, 0 );
changeAnime( spep_6 + 0, 1, 108 );

setMoveKey( spep_6 + 0, 1, -356.5, 254 , 0 );
setMoveKey( spep_6 + 2, 1, -290.4, 214 , 0 );
setMoveKey( spep_6 + 4, 1, -224.2, 174 , 0 );
setMoveKey( spep_6 + 6, 1, -158, 133.9 , 0 );
setMoveKey( spep_6 + 8, 1, -91.9, 93.9 , 0 );
setMoveKey( spep_6 + 10, 1, -84.5, 89.7 , 0 );
setMoveKey( spep_6 + 12, 1, -77.2, 85.4 , 0 );
setMoveKey( spep_6 + 14, 1, -69.9, 81.2 , 0 );
setMoveKey( spep_6 + 16, 1, -62.5, 77 , 0 );
setMoveKey( spep_6 + 18, 1, -55.2, 72.7 , 0 );
setMoveKey( spep_6 + 20, 1, -47.9, 68.5 , 0 );
setMoveKey( spep_6 + 22, 1, -40.6, 64.3 , 0 );
setMoveKey( spep_6 + 24, 1, -33.2, 60.1 , 0 );
setMoveKey( spep_6 + 26, 1, -25.9, 55.8 , 0 );
setMoveKey( spep_6 + 28, 1, -18.6, 51.6 , 0 );
setMoveKey( spep_6 + 30, 1, -11.2, 47.4 , 0 );
setMoveKey( spep_6 + 32, 1, -3.9, 43.2 , 0 );
setMoveKey( spep_6 + 34, 1, 3.4, 38.9 , 0 );
setMoveKey( spep_6 + 36, 1, 10.8, 34.7 , 0 );
setMoveKey( spep_6 + 38, 1, 18.1, 30.5 , 0 );
setMoveKey( spep_6 + 40, 1, 25.4, 26.2 , 0 );
setMoveKey( spep_6 + 42, 1, 32.8, 22 , 0 );
setMoveKey( spep_6 + 44, 1, 40.1, 17.8 , 0 );
setMoveKey( spep_6 + 46, 1, 47.4, 13.6 , 0 );
setMoveKey( spep_6 + 48, 1, 54.8, 9.3 , 0 );

setScaleKey( spep_6 + 0, 1, 6, 6 );
setScaleKey( spep_6 + 2, 1, 4.95, 4.95 );
setScaleKey( spep_6 + 4, 1, 3.9, 3.9 );
setScaleKey( spep_6 + 6, 1, 2.85, 2.85 );
setScaleKey( spep_6 + 8, 1, 1.8, 1.8 );
setScaleKey( spep_6 + 10, 1, 1.78, 1.78 );
setScaleKey( spep_6 + 12, 1, 1.75, 1.75 );
setScaleKey( spep_6 + 14, 1, 1.73, 1.73 );
setScaleKey( spep_6 + 16, 1, 1.7, 1.7 );
setScaleKey( spep_6 + 18, 1, 1.68, 1.68 );
setScaleKey( spep_6 + 20, 1, 1.66, 1.66 );
setScaleKey( spep_6 + 22, 1, 1.63, 1.63 );
setScaleKey( spep_6 + 24, 1, 1.61, 1.61 );
setScaleKey( spep_6 + 26, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 28, 1, 1.56, 1.56 );
setScaleKey( spep_6 + 30, 1, 1.53, 1.53 );
setScaleKey( spep_6 + 32, 1, 1.51, 1.51 );
setScaleKey( spep_6 + 34, 1, 1.49, 1.49 );
setScaleKey( spep_6 + 36, 1, 1.46, 1.46 );
setScaleKey( spep_6 + 38, 1, 1.44, 1.44 );
setScaleKey( spep_6 + 40, 1, 1.41, 1.41 );
setScaleKey( spep_6 + 42, 1, 1.39, 1.39 );
setScaleKey( spep_6 + 44, 1, 1.36, 1.36 );
setScaleKey( spep_6 + 46, 1, 1.34, 1.34 );
setScaleKey( spep_6 + 48, 1, 1.32, 1.32 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 48, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 48, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_6 + 42, 4, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 8, 4 );  --シャッ
setSeVolume( spep_6 + 8, 4, 90 );
playSe( spep_6 + 8, 43 ); --シャッ	
setSeVolume( spep_6 + 8, 43, 120 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 48;

------------------------------------------------------
-- 蹴り上げ(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
keriage_f = entryEffectLife( spep_7 + 0, SP_10x, 38, 0x100, -1, 0, 0, 0 );  --蹴り上げ(ef_010)
setEffMoveKey( spep_7 + 0, keriage_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 38, keriage_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, keriage_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 38, keriage_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, keriage_f, 0 );
setEffRotateKey( spep_7 + 38, keriage_f, 0 );
setEffAlphaKey( spep_7 + 0, keriage_f, 255 );
setEffAlphaKey( spep_7 + 38, keriage_f, 255 );

keriage_b = entryEffectLife( spep_7 + 0, SP_11, 38, 0x80, -1, 0, 0, 0 );  --蹴り上げ(ef_011)
setEffMoveKey( spep_7 + 0, keriage_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 38, keriage_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, keriage_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 38, keriage_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, keriage_b, 0 );
setEffRotateKey( spep_7 + 38, keriage_b, 0 );
setEffAlphaKey( spep_7 + 0, keriage_b, 255 );
setEffAlphaKey( spep_7 + 38, keriage_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 38, 1, 0 );
changeAnime( spep_7 + 0, 1, 8 );
changeAnime( spep_7 + 8 -3, 1, 6 );

setMoveKey( spep_7 + 0, 1, -9.7, 34.2 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -12.6, 65.5 , 0 );
setMoveKey( spep_7 -3 + 7, 1, -55.5, 56.8 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -34.4, 76.4 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -107.7, 154.8 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -92.1, 164.5 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -151.1, 177.9 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -136.4, 208.9 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -210.3, 284.5 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -232.7, 314.9 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -240.8, 315.8 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -236.3, 317.1 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -241.9, 324.5 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -238.4, 323.6 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -245.7, 323.7 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -241.8, 325.2 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -247.4, 332 , 0 );
setMoveKey( spep_7 -3 + 36, 1, -244.2, 332.3 , 0 );
setMoveKey( spep_7 -3 + 38, 1, -250.6, 331.5 , 0 );
setMoveKey( spep_7 + 38, 1, -250.6, 331.5 , 0 );

setScaleKey( spep_7 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 4, 1, 1.66, 1.66 );
setScaleKey( spep_7 -3 + 7, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 8, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 10, 1, 1.4, 1.4 );
setScaleKey( spep_7 -3 + 12, 1, 1.23, 1.23 );
setScaleKey( spep_7 -3 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_7 -3 + 16, 1, 0.85, 0.85 );
setScaleKey( spep_7 -3 + 18, 1, 0.67, 0.67 );
setScaleKey( spep_7 -3 + 20, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 22, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 24, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 26, 1, 0.37, 0.37 );
setScaleKey( spep_7 -3 + 28, 1, 0.33, 0.33 );
setScaleKey( spep_7 -3 + 30, 1, 0.3, 0.3 );
setScaleKey( spep_7 -3 + 32, 1, 0.27, 0.27 );
setScaleKey( spep_7 -3 + 34, 1, 0.22, 0.22 );
setScaleKey( spep_7 -3 + 36, 1, 0.19, 0.19 );
setScaleKey( spep_7 -3 + 38, 1, 0.16, 0.16 );
setScaleKey( spep_7 + 38, 1, 0.16, 0.16 );

setRotateKey( spep_7 + 0, 1, 37 );
setRotateKey( spep_7 -3 + 7, 1, 37 );
setRotateKey( spep_7 -3 + 8, 1, 33.7 );
setRotateKey( spep_7 -3 + 10, 1, 31.4 );
setRotateKey( spep_7 -3 + 12, 1, 29.1 );
setRotateKey( spep_7 -3 + 14, 1, 26.8 );
setRotateKey( spep_7 -3 + 16, 1, 24.5 );
setRotateKey( spep_7 -3 + 18, 1, 22.3 );
setRotateKey( spep_7 -3 + 20, 1, 20 );
setRotateKey( spep_7 -3 + 22, 1, 19.8 );
setRotateKey( spep_7 -3 + 24, 1, 19.7 );
setRotateKey( spep_7 -3 + 26, 1, 19.6 );
setRotateKey( spep_7 -3 + 28, 1, 19.5 );
setRotateKey( spep_7 -3 + 30, 1, 19.3 );
setRotateKey( spep_7 -3 + 32, 1, 19.2 );
setRotateKey( spep_7 -3 + 34, 1, 19.1 );
setRotateKey( spep_7 -3 + 36, 1, 19 );
setRotateKey( spep_7 -3 + 38, 1, 18.8 );
setRotateKey( spep_7 + 38, 1, 18.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 38, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 32, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_7 + 2, 1011 );  --蹴り上げ

-- ** 次の準備 ** --
spep_8 = spep_7 + 38;

------------------------------------------------------
-- 上空へ回り込み(42F)
------------------------------------------------------

-- ** エフェクト等 ** --
joukuu = entryEffectLife( spep_8 + 0, SP_12x, 42, 0x80, -1, 0, 0, 0 );  --上空へ回り込み(ef_012)
setEffMoveKey( spep_8 + 0, joukuu, 0, 0 , 0 );
setEffMoveKey( spep_8 + 42, joukuu, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, joukuu, 1.0, 1.0 );
setEffScaleKey( spep_8 + 42, joukuu, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, joukuu, 0 );
setEffRotateKey( spep_8 + 42, joukuu, 0 );
setEffAlphaKey( spep_8 + 0, joukuu, 255 );
setEffAlphaKey( spep_8 + 42, joukuu, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 42, 1, 0 );
changeAnime( spep_8 + 0, 1, 8 );

setMoveKey( spep_8 + 0, 1, 282.3, -505.8 , 0 );
setMoveKey( spep_8 + 2, 1, 244.8, -432.3 , 0 );
setMoveKey( spep_8 + 4, 1, 207.5, -358.6 , 0 );
setMoveKey( spep_8 + 6, 1, 170.2, -285 , 0 );
setMoveKey( spep_8 + 8, 1, 132.8, -211.4 , 0 );
setMoveKey( spep_8 + 10, 1, 95.5, -137.8 , 0 );
setMoveKey( spep_8 + 12, 1, 58.1, -64.2 , 0 );
setMoveKey( spep_8 + 14, 1, 55.8, -59.6 , 0 );
setMoveKey( spep_8 + 16, 1, 53.5, -55 , 0 );
setMoveKey( spep_8 + 18, 1, 51.2, -50.4 , 0 );
setMoveKey( spep_8 + 20, 1, 49, -45.8 , 0 );
setMoveKey( spep_8 + 22, 1, 46.7, -41.2 , 0 );
setMoveKey( spep_8 + 24, 1, 44.4, -36.6 , 0 );
setMoveKey( spep_8 + 26, 1, 42.1, -32 , 0 );
setMoveKey( spep_8 + 28, 1, 39.8, -27.4 , 0 );
setMoveKey( spep_8 + 30, 1, 37.5, -22.8 , 0 );
setMoveKey( spep_8 + 32, 1, 35.2, -18.2 , 0 );
setMoveKey( spep_8 + 34, 1, 32.9, -13.6 , 0 );
setMoveKey( spep_8 + 36, 1, 30.6, -9 , 0 );
setMoveKey( spep_8 + 38, 1, 28.4, -4.4 , 0 );
setMoveKey( spep_8 + 40, 1, 26.1, 0.2 , 0 );
setMoveKey( spep_8 + 42, 1, 23.8, 4.8 , 0 );

setScaleKey( spep_8 + 0, 1, 7.99, 7.99 );
setScaleKey( spep_8 + 2, 1, 7.23, 7.23 );
setScaleKey( spep_8 + 4, 1, 6.47, 6.47 );
setScaleKey( spep_8 + 6, 1, 5.7, 5.7 );
setScaleKey( spep_8 + 8, 1, 4.93, 4.93 );
setScaleKey( spep_8 + 10, 1, 4.17, 4.17 );
setScaleKey( spep_8 + 12, 1, 3.4, 3.4 );
setScaleKey( spep_8 + 14, 1, 3.31, 3.31 );
setScaleKey( spep_8 + 16, 1, 3.21, 3.21 );
setScaleKey( spep_8 + 18, 1, 3.12, 3.12 );
setScaleKey( spep_8 + 20, 1, 3.03, 3.03 );
setScaleKey( spep_8 + 22, 1, 2.93, 2.93 );
setScaleKey( spep_8 + 24, 1, 2.84, 2.84 );
setScaleKey( spep_8 + 26, 1, 2.75, 2.75 );
setScaleKey( spep_8 + 28, 1, 2.65, 2.65 );
setScaleKey( spep_8 + 30, 1, 2.56, 2.56 );
setScaleKey( spep_8 + 32, 1, 2.47, 2.47 );
setScaleKey( spep_8 + 34, 1, 2.37, 2.37 );
setScaleKey( spep_8 + 36, 1, 2.28, 2.28 );
setScaleKey( spep_8 + 38, 1, 2.19, 2.19 );
setScaleKey( spep_8 + 40, 1, 2.09, 2.09 );
setScaleKey( spep_8 + 42, 1, 2, 2 );

setRotateKey( spep_8 + 0, 1, 35.1 );
setRotateKey( spep_8 + 2, 1, 35.2 );
setRotateKey( spep_8 + 42, 1, 35.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 42, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 36, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_8 + 16, 1109 );  --移動

-- ** 次の準備 ** --
spep_9 = spep_8 + 42;

------------------------------------------------------
-- 「はあっ・・・!!!」(90F)
------------------------------------------------------

-- ** エフェクト等 ** --
ha_f = entryEffectLife( spep_9 + 0, SP_13x, 90, 0x100, -1, 0, 0, 0 );  --「はあっ・・・!!!」(ef_013)
setEffMoveKey( spep_9 + 0, ha_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 90, ha_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, ha_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 90, ha_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, ha_f, 0 );
setEffRotateKey( spep_9 + 90, ha_f, 0 );
setEffAlphaKey( spep_9 + 0, ha_f, 255 );
setEffAlphaKey( spep_9 + 89, ha_f, 255 );
setEffAlphaKey( spep_9 + 90, ha_f, 0 );

ha_b = entryEffectLife( spep_9 + 0, SP_14, 90, 0x80, -1, 0, 0, 0 );  --「はあっ・・・!!!」(ef_014)
setEffMoveKey( spep_9 + 0, ha_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 90, ha_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, ha_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 90, ha_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, ha_b, 0 );
setEffRotateKey( spep_9 + 90, ha_b, 0 );
setEffAlphaKey( spep_9 + 0, ha_b, 255 );
setEffAlphaKey( spep_9 + 89, ha_b, 255 );
setEffAlphaKey( spep_9 + 90, ha_b, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_9 + 0, 914, 90, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_9 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_9 + 90, ryusen1, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, ryusen1, 2.5, 1.2 );
setEffScaleKey( spep_9 + 90, ryusen1, 2.5, 1.2 );
setEffRotateKey( spep_9 + 0, ryusen1, 60 );
setEffRotateKey( spep_9 + 90, ryusen1, 60 );
setEffAlphaKey( spep_9 + 0, ryusen1, 255 );
setEffAlphaKey( spep_9 + 89, ryusen1, 255 );
setEffAlphaKey( spep_9 + 90, ryusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_9 + 80, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_9 + 2, SE_04 );  --はあっ

-- ** 次の準備 ** --
spep_10 = spep_9 + 90;

------------------------------------------------------
-- 肘打ち(78F)
------------------------------------------------------

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_10 + 0, 914, 16 -3, 0x100, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_10 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_10 + 16 -3, ryusen2, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, ryusen2, 1.5, 1.2 );
setEffScaleKey( spep_10 + 16 -3, ryusen2, 1.5, 1.2 );
setEffRotateKey( spep_10 + 0, ryusen2, 90 );
setEffRotateKey( spep_10 + 16 -3, ryusen2, 90 );
setEffAlphaKey( spep_10 + 0, ryusen2, 255 );
setEffAlphaKey( spep_10 + 16 -3, ryusen2, 255 );

-- ** エフェクト等 ** --
hiji_f = entryEffectLife( spep_10 + 0, SP_15, 78, 0x100, -1, 0, 0, 0 );  --肘打ち　描き文字(ef_015)
setEffMoveKey( spep_10 + 0, hiji_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 78, hiji_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hiji_f, -1.0, 1.0 );
setEffScaleKey( spep_10 + 78, hiji_f, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hiji_f, 0 );
setEffRotateKey( spep_10 + 78, hiji_f, 0 );
setEffAlphaKey( spep_10 + 0, hiji_f, 255 );
setEffAlphaKey( spep_10 + 78, hiji_f, 255 );

hiji_b = entryEffectLife( spep_10 + 0, SP_16, 78, 0x80, -1, 0, 0, 0 );  --肘打ち(ef_016)
setEffMoveKey( spep_10 + 0, hiji_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 78, hiji_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hiji_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 78, hiji_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hiji_b, 0 );
setEffRotateKey( spep_10 + 78, hiji_b, 0 );
setEffAlphaKey( spep_10 + 0, hiji_b, 255 );
setEffAlphaKey( spep_10 + 78, hiji_b, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_10 + 14 -3, 906, 40, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_10 + 14 -3, shuchusen4, 40, 20 );

setEffMoveKey( spep_10 + 14 -3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_10 + 54 -3, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_10 + 14 -3, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_10 + 54 -3, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_10 + 14 -3, shuchusen4, 0 );
setEffRotateKey( spep_10 + 54 -3, shuchusen4, 0 );

setEffAlphaKey( spep_10 + 14 -3, shuchusen4, 255 );
setEffAlphaKey( spep_10 + 54 -3, shuchusen4, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 + 76, 1, 0 );
changeAnime( spep_10 + 0, 1, 8 );
changeAnime( spep_10 -3 + 18, 1, 6 );

setMoveKey( spep_10 + 0, 1, 42.1, -812.3 , 0 );
setMoveKey( spep_10 -3 + 4, 1, 30.9, -689.7 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 37.1, -546.9 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 37.1, -423.1 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 42.1, -289.4 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 30.9, -167 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -10.4, -27.1 , 0 );
setMoveKey( spep_10 -3 + 17, 1, 67.7, -150.7 , 0 );
setMoveKey( spep_10 -3 + 18, 1, -4, -88 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 61.6, -107.8 , 0 );
setMoveKey( spep_10 -3 + 22, 1, -26.9, -138.5 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 57.4, -175.9 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 0, -121 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 67.2, -132.7 , 0 );
setMoveKey( spep_10 -3 + 30, 1, -6.2, -97.3 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 52, -168.6 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 9.9, -163.9 , 0 );
setMoveKey( spep_10 -3 + 36, 1, 64.1, -193.5 , 0 );
setMoveKey( spep_10 -3 + 38, 1, 8.2, -146.5 , 0 );
setMoveKey( spep_10 -3 + 40, 1, 55.4, -190.3 , 0 );
setMoveKey( spep_10 -3 + 42, 1, 8.8, -166.4 , 0 );
setMoveKey( spep_10 -3 + 44, 1, 33.9, -172.6 , 0 );
setMoveKey( spep_10 -3 + 46, 1, 35, -172.6 , 0 );
setMoveKey( spep_10 -3 + 48, 1, 36.2, -172.6 , 0 );
setMoveKey( spep_10 -3 + 50, 1, 32.3, -177.5 , 0 );
setMoveKey( spep_10 -3 + 52, 1, 36.5, -178.5 , 0 );
setMoveKey( spep_10 -3 + 54, 1, 32.7, -175.4 , 0 );
setMoveKey( spep_10 -3 + 56, 1, 37, -176.4 , 0 );
setMoveKey( spep_10 -3 + 58, 1, 33.1, -181.4 , 0 );
setMoveKey( spep_10 -3 + 60, 1, 33.3, -182.3 , 0 );
setMoveKey( spep_10 -3 + 62, 1, 33.5, -183.3 , 0 );
setMoveKey( spep_10 -3 + 64, 1, 33.6, -184.2 , 0 );
setMoveKey( spep_10 -3 + 66, 1, 33.8, -185.4 , 0 );
setMoveKey( spep_10 -3 + 68, 1, 33.9, -186.2 , 0 );
setMoveKey( spep_10 -3 + 70, 1, 34.1, -187.1 , 0 );
setMoveKey( spep_10 -3 + 72, 1, 34.3, -188.2 , 0 );
setMoveKey( spep_10 -3 + 74, 1, 34.4, -189 , 0 );
setMoveKey( spep_10 -3 + 76, 1, 34.6, -190.1 , 0 );
setMoveKey( spep_10 -3 + 78, 1, 34.8, -190.9 , 0 );
setMoveKey( spep_10 + 76, 1, 34.8, -190.9 , 0 );

setScaleKey( spep_10 + 0, 1, 1.57, 1.57 );
setScaleKey( spep_10 -3 + 12, 1, 1.57, 1.57 );
setScaleKey( spep_10 -3 + 14, 1, 2.29, 2.29 );
setScaleKey( spep_10 -3 + 17, 1, 1.97, 1.97 );
setScaleKey( spep_10 -3 + 18, 1, 1.67, 1.67 );
setScaleKey( spep_10 -3 + 20, 1, 1.36, 1.36 );
setScaleKey( spep_10 -3 + 22, 1, 2.29, 2.29 );
setScaleKey( spep_10 -3 + 24, 1, 2.12, 2.12 );
setScaleKey( spep_10 -3 + 26, 1, 1.93, 1.93 );
setScaleKey( spep_10 -3 + 28, 1, 1.76, 1.76 );
setScaleKey( spep_10 -3 + 30, 1, 1.57, 1.57 );
setScaleKey( spep_10 -3 + 32, 1, 2.29, 2.29 );
setScaleKey( spep_10 + 76, 1, 2.29, 2.29 );

setRotateKey( spep_10 + 0, 1, 90.5 );
setRotateKey( spep_10 -3 + 17, 1, 90.5 );
setRotateKey( spep_10 -3 + 18, 1, 144 );
setRotateKey( spep_10 -3 + 20, 1, 143.7 );
setRotateKey( spep_10 -3 + 22, 1, 143.3 );
setRotateKey( spep_10 -3 + 24, 1, 143 );
setRotateKey( spep_10 -3 + 26, 1, 142.7 );
setRotateKey( spep_10 -3 + 28, 1, 142.4 );
setRotateKey( spep_10 -3 + 30, 1, 142 );
setRotateKey( spep_10 -3 + 32, 1, 141.7 );
setRotateKey( spep_10 -3 + 34, 1, 141.4 );
setRotateKey( spep_10 -3 + 36, 1, 141.1 );
setRotateKey( spep_10 -3 + 38, 1, 140.8 );
setRotateKey( spep_10 -3 + 40, 1, 140.4 );
setRotateKey( spep_10 -3 + 42, 1, 140.1 );
setRotateKey( spep_10 -3 + 44, 1, 139.8 );
setRotateKey( spep_10 -3 + 46, 1, 139.5 );
setRotateKey( spep_10 -3 + 48, 1, 139.1 );
setRotateKey( spep_10 -3 + 50, 1, 138.8 );
setRotateKey( spep_10 -3 + 52, 1, 138.5 );
setRotateKey( spep_10 -3 + 54, 1, 138.2 );
setRotateKey( spep_10 -3 + 56, 1, 137.8 );
setRotateKey( spep_10 -3 + 58, 1, 137.5 );
setRotateKey( spep_10 -3 + 60, 1, 137.2 );
setRotateKey( spep_10 -3 + 62, 1, 136.9 );
setRotateKey( spep_10 -3 + 64, 1, 136.6 );
setRotateKey( spep_10 -3 + 66, 1, 136.2 );
setRotateKey( spep_10 -3 + 68, 1, 135.9 );
setRotateKey( spep_10 -3 + 70, 1, 135.6 );
setRotateKey( spep_10 -3 + 72, 1, 135.3 );
setRotateKey( spep_10 -3 + 74, 1, 134.9 );
setRotateKey( spep_10 -3 + 76, 1, 134.6 );
setRotateKey( spep_10 -3 + 78, 1, 134.3 );
setRotateKey( spep_10 + 76, 1, 134.3 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_10 + 68, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_10 -3 + 18, 1011 ); --肘打ち
setSeVolume( spep_10 + 0, 1011, 110 );
playSe( spep_10 -3 + 18, 1123 ); --肘打ち	
setSeVolume( spep_10 + 0, 1011, 80 );

-- ** 次の準備 ** --
spep_11 = spep_10 + 78;

------------------------------------------------------
-- 落下(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
fall = entryEffectLife( spep_11 + 0, SP_17, 38, 0x80, -1, 0, 0, 0 );  --落下(ef_017)
setEffMoveKey( spep_11 + 0, fall, 0, 0 , 0 );
setEffMoveKey( spep_11 + 38, fall, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, fall, 1.0, 1.0 );
setEffScaleKey( spep_11 + 38, fall, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, fall, 0 );
setEffRotateKey( spep_11 + 38, fall, 0 );
setEffAlphaKey( spep_11 + 0, fall, 255 );
setEffAlphaKey( spep_11 + 37, fall, 255 );
setEffAlphaKey( spep_11 + 38, fall, 0 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_11 + 0, 906, 38, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_11 + 0, shuchusen5, 38, 20 );

setEffMoveKey( spep_11 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_11 + 38, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_11 + 0, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_11 + 38, shuchusen5, 1.6, 1.6 );

setEffRotateKey( spep_11 + 0, shuchusen5, 0 );
setEffRotateKey( spep_11 + 38, shuchusen5, 0 );

setEffAlphaKey( spep_11 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_11 + 38, shuchusen5, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 + 36, 1, 1 );
changeAnime( spep_11 + 0, 1, 105 );

setMoveKey( spep_11 + 0, 1, 140.4, 17.2 , 0 );
setMoveKey( spep_11 + 2, 1, 123.6, 15 , 0 );
setMoveKey( spep_11 + 4, 1, 106.8, 12.7 , 0 );
setMoveKey( spep_11 + 6, 1, 90, 10.5 , 0 );
setMoveKey( spep_11 + 8, 1, 73.2, 8.2 , 0 );
setMoveKey( spep_11 + 10, 1, 56.4, 6 , 0 );
setMoveKey( spep_11 + 12, 1, 39.6, 3.7 , 0 );
setMoveKey( spep_11 + 14, 1, 22.8, 1.5 , 0 );
setMoveKey( spep_11 + 16, 1, 6, -0.8 , 0 );
setMoveKey( spep_11 + 18, 1, 5.7, -0.5 , 0 );
setMoveKey( spep_11 + 20, 1, 5.5, -0.2 , 0 );
setMoveKey( spep_11 + 22, 1, 5.2, 0.1 , 0 );
setMoveKey( spep_11 + 24, 1, 4.9, 0.3 , 0 );
setMoveKey( spep_11 + 26, 1, 4.6, 0.6 , 0 );
setMoveKey( spep_11 + 28, 1, 4.4, 0.9 , 0 );
setMoveKey( spep_11 + 30, 1, 4.1, 1.2 , 0 );
setMoveKey( spep_11 + 32, 1, 3.8, 1.4 , 0 );
setMoveKey( spep_11 + 34, 1, 3.5, 1.7 , 0 );
setMoveKey( spep_11 + 36, 1, 3.3, 2 , 0 );

setScaleKey( spep_11 + 0, 1, 9, 9 );
setScaleKey( spep_11 + 2, 1, 8, 8 );
setScaleKey( spep_11 + 4, 1, 7, 7 );
setScaleKey( spep_11 + 6, 1, 6, 6 );
setScaleKey( spep_11 + 8, 1, 5, 5 );
setScaleKey( spep_11 + 10, 1, 4, 4 );
setScaleKey( spep_11 + 12, 1, 3, 3 );
setScaleKey( spep_11 + 14, 1, 2, 2 );
setScaleKey( spep_11 + 16, 1, 1, 1 );
setScaleKey( spep_11 + 18, 1, 0.92, 0.92 );
setScaleKey( spep_11 + 20, 1, 0.85, 0.85 );
setScaleKey( spep_11 + 22, 1, 0.77, 0.77 );
setScaleKey( spep_11 + 24, 1, 0.69, 0.69 );
setScaleKey( spep_11 + 26, 1, 0.61, 0.61 );
setScaleKey( spep_11 + 28, 1, 0.54, 0.54 );
setScaleKey( spep_11 + 30, 1, 0.46, 0.46 );
setScaleKey( spep_11 + 32, 1, 0.38, 0.38 );
setScaleKey( spep_11 + 34, 1, 0.31, 0.31 );
setScaleKey( spep_11 + 36, 1, 0.23, 0.23 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 + 36, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 38, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_11 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_11 + 28, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_11 + 0, 1116 );  --落ちる
setSeVolume( spep_11 + 0, 1116, 105 );
setSeVolume( spep_11 + 16, 1116, 70 );
setSeVolume( spep_11 + 20, 1116, 50 );
setSeVolume( spep_11 + 25, 1116, 35 );
setSeVolume( spep_11 + 36, 1116, 10 );

-- ** 次の準備 ** --
spep_12 = spep_11 + 38;

------------------------------------------------------
-- 地面に激突(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_12 + 0, SP_18, 0x80, -1, 0, 0, 0 );  --地面に激突(ef_018)
setEffMoveKey( spep_12 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_12 + 176, finish, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_12 + 176, finish, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0, finish, 0 );
setEffRotateKey( spep_12 + 176, finish, 0 );
setEffAlphaKey( spep_12 + 0, finish, 255 );
setEffAlphaKey( spep_12 + 176, finish, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_12 + 0, 1, 1 );
setDisp( spep_12 + 14, 1, 0 );
changeAnime( spep_12 + 0, 1, 108 );

setMoveKey( spep_12 + 0, 1, 0, 593.2 , 0 );
setMoveKey( spep_12 + 4 -3, 1, 0, 498.8 , 0 );
setMoveKey( spep_12 + 6 -3, 1, 0, 404.5 , 0 );
setMoveKey( spep_12 + 8 -3, 1, 0, 310.2 , 0 );
setMoveKey( spep_12 + 10 -3, 1, 0, 105.6 , 0 );
setMoveKey( spep_12 + 12 -3, 1, 0, -98.9 , 0 );
setMoveKey( spep_12 + 14 -3, 1, 0, -303.4 , 0 );
setMoveKey( spep_12 + 14, 1, 0, -303.4 , 0 );

setScaleKey( spep_12 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_12 + 14, 1, 0.2, 0.2 );

setRotateKey( spep_12 + 0, 1, 90 );
setRotateKey( spep_12 + 14, 1, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 174, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_12 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_12 + 20, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_12 + 58 );
endPhase( spep_12 + 174 );

end
--1018560:人造人間13号_S.Sデッドリィボンバー
--sp_effect_a2_00123

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
SP_01 = 154474; --構え
SP_02 = 154476; --気溜め
SP_03 = 154478; --気弾発射
SP_04 = 154479; --気弾着弾
SP_05 = 154480; --背景
SP_06 = 154481; --背景(ブレあり)
SP_07 = 154558; --背景
SP_08 = 154559; --背景
SP_09 = 154560; --背景

--敵側
SP_01r = 154475; --構え
SP_02r = 154477; --気溜め

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
-- 構え
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0, 0 );
setEffMoveKey( spep_0 + 26, idling, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 26, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 26, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 26, idling, 255 );

haikei = entryEffect( spep_0 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --背景(ef_005)
setEffMoveKey( spep_0 + 0, haikei, 0, 0, 0 );
setEffMoveKey( spep_0 + 26, haikei, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_0 + 26, haikei, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, haikei, 0 );
setEffRotateKey( spep_0 + 26, haikei, 0 );
setEffAlphaKey( spep_0 + 0, haikei, 255 );
setEffAlphaKey( spep_0 + 26, haikei, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 26, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 26;

------------------------------------------------------
-- 気溜め
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --気溜め(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 176, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 176, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 176, tame, 255 );

haikei_1 = entryEffect( spep_1 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --背景(ef_006)
setEffMoveKey( spep_1 + 0, haikei_1, 0, 0, 0 );
setEffMoveKey( spep_1 + 176, haikei_1, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, haikei_1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, haikei_1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, haikei_1, 0 );
setEffRotateKey( spep_1 + 176, haikei_1, 0 );
setEffAlphaKey( spep_1 + 0, haikei_1, 255 );
setEffAlphaKey( spep_1 + 176, haikei_1, 255 );

spep_x = spep_1 + 88;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -4.9, 540 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -4.9, 540, 0 );
setEffMoveKey( spep_x + 84, ctgogo, -4.9, 540, 0 );

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
entryFade( spep_1 + 164, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 176, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_1 + 3, 1035 );
playSe( spep_1 + 31, 1036 );
setSeVolume( spep_1 + 31, 1036, 71 );
playSe( spep_1 + 55, 1036 );
se_1191 = playSe( spep_1 + 55, 1191 );
setSeVolume( spep_1 + 55, 1036, 71 );
setSeVolume( spep_1 + 55, 1191, 0 );
setSeVolume( spep_1 + 67, 1191, 19.75 );
setSeVolume( spep_1 + 68, 1191, 39.5 );
setSeVolume( spep_1 + 69, 1191, 59.25 );
setSeVolume( spep_1 + 70, 1191, 79 );
playSe( spep_1 + 79, 1036 );
playSe( spep_1 + 94, 1018 );
playSe( spep_1 + 103, 1036 );
setSeVolume( spep_1 + 103, 1036, 71 );
playSe( spep_1 + 127, 1036 );
setSeVolume( spep_1 + 127, 1036, 71 );
playSe( spep_1 + 151, 1036 );
setSeVolume( spep_1 + 151, 1036, 71 );
se_1036 = playSe( spep_1 + 175, 1036 );
setSeVolume( spep_1 + 175, 1036, 71 );

-- ** 次の準備 ** --
spep_2 = spep_1 +176;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 ); --カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 ); --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 7, 1035 );
stopSe( spep_2 + 7, se_1191, 0 );
stopSe( spep_2 + 7, se_1036, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_2 + 82, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 発射
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --発射(ef_003)
setEffMoveKey( spep_3 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, hassha, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 116, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 116, hassha, 255 );

haikei_3 = entryEffectLife( spep_3 + 0, SP_07, 116, 0x80, -1, 0, 0, 0 ); --背景(ef_005)
setEffMoveKey( spep_3 + 0, haikei_3, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, haikei_3, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, haikei_3, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, haikei_3, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, haikei_3, 0 );
setEffRotateKey( spep_3 + 116, haikei_3, 0 );
setEffAlphaKey( spep_3 + 0, haikei_3, 255 );
setEffAlphaKey( spep_3 + 116, haikei_3, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_3 -3 + 74, 923, 44, 0x80, -1, 0, 0, -16 );
setEffMoveKey( spep_3 -3 + 74, ryusen1, 0, -16 , 0 );
setEffMoveKey( spep_3 -3 + 118, ryusen1, 0, -16 , 0 );

setEffScaleKey( spep_3 -3 + 74, ryusen1, 1.39, 1 );
setEffScaleKey( spep_3 -3 + 118, ryusen1, 1.39, 1 );

setEffRotateKey( spep_3 -3 + 74, ryusen1, 0 );
setEffRotateKey( spep_3 -3 + 118, ryusen1, 0 );

setEffAlphaKey( spep_3 -3 + 74, ryusen1, 51 );
setEffAlphaKey( spep_3 -3 + 76, ryusen1, 102 );
setEffAlphaKey( spep_3 -3 + 78, ryusen1, 153 );
setEffAlphaKey( spep_3 -3 + 80, ryusen1, 204 );
setEffAlphaKey( spep_3 -3 + 82, ryusen1, 255 );
setEffAlphaKey( spep_3 -3 + 118, ryusen1, 255 );

-- ** 書き文字エントリー ** --
ctZuo = entryEffectLife( spep_3 -3 + 78, 10012, 12, 0x100, -1, 0, 35.9, 321.8 ); --ズオッ
setEffMoveKey( spep_3 -3 + 78, ctZuo, 35.9, 321.8 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctZuo, 90.9, 342.5 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctZuo, 129.3, 379.8 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctZuo, 196.9, 387.8 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctZuo, 222.6, 437.9 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctZuo, 302.9, 433.2 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctZuo, 356, 455.9 , 0 );

setEffScaleKey( spep_3 -3 + 78, ctZuo, 0.1, 0.1 );
--setEffScaleKey( spep_3 -3 + 80, ctZuo, 0.42, 0.42 );
--setEffScaleKey( spep_3 -3 + 82, ctZuo, 0.73, 0.73 );
--setEffScaleKey( spep_3 -3 + 84, ctZuo, 1.05, 1.05 );
--setEffScaleKey( spep_3 -3 + 86, ctZuo, 1.37, 1.37 );
--setEffScaleKey( spep_3 -3 + 88, ctZuo, 1.68, 1.68 );
setEffScaleKey( spep_3 -3 + 90, ctZuo, 6, 6 );

setEffRotateKey( spep_3 -3 + 78, ctZuo, 25 );
setEffRotateKey( spep_3 -3 + 90, ctZuo, 25 );

setEffAlphaKey( spep_3 -3 + 78, ctZuo, 255 );
setEffAlphaKey( spep_3 -3 + 88, ctZuo, 255 );
setEffAlphaKey( spep_3 -3 + 89, ctZuo, 255 );
setEffAlphaKey( spep_3 -3 + 90, ctZuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 116, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
se_1200 = playSe( spep_3 + 16, 1200 );
se_1157 = playSe( spep_3 + 16, 1157 );
setSeVolume( spep_3 + 16, 1200, 316 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, se_1200, 0 );
stopSe( SP_dodge - 12, se_1157, 0 );

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
entryFade( spep_3 + 108, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

-- ** 音 ** --
playSe( spep_3 + 90, 1202 );
playSe( spep_3 + 90, 1021 );
stopSe( spep_3 + 114, se_1157, 0 );
setSeVolume( spep_3 + 114, 1200, 316 );
setSeVolume( spep_3 + 115, 1200, 0 );

-- ** 次の準備 ** --
spep_4 = spep_3 +116;

------------------------------------------------------
-- 着弾
------------------------------------------------------

-- ** エフェクト等 ** --
haikei_4 = entryEffectLife( spep_4 + 0, SP_08, 116, 0x80, -1, 0, 0, 0 ); --背景(ef_005)
setEffMoveKey( spep_4 + 0, haikei_4, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, haikei_4, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, haikei_4, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, haikei_4, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, haikei_4, 0 );
setEffRotateKey( spep_4 + 116, haikei_4, 0 );
setEffAlphaKey( spep_4 + 0, haikei_4, 255 );
setEffAlphaKey( spep_4 + 116, haikei_4, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_4 + 0, 921, 118, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1.38, 1.3 );
setEffScaleKey( spep_4 + 118, ryusen2, 1.38, 1.3 );

setEffRotateKey( spep_4 + 0, ryusen2, 200 );
setEffRotateKey( spep_4 + 118, ryusen2, 200 );

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 118, ryusen2, 255 );

hit = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --着弾(ef_004)
setEffMoveKey( spep_4 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, hit, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, hit, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 116, hit, 0 );
setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 116, hit, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 3, 1, 1 );
changeAnime( spep_4 -3 + 3, 1, 102 );

--0setMoveKey( spep_4 -3 + 0, 1, 402.2, -225.5 , 0 );
setMoveKey( spep_4 -3 + 3, 1, 394.4, -227.9 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 396.9, -213 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 389.2, -217.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 381.4, -219.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 383.8, -204.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 376.1, -208.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 368.4, -210.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 370.7, -196.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 363.1, -200.3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 355.4, -202.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 357.7, -188.1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 350.1, -191.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 342.5, -193.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 344.6, -179.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 337, -183.4 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 329.5, -185.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 331.4, -171.6 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 324, -175.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 316.5, -176.9 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 318.3, -163.3 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 311, -166.7 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 303.6, -168.4 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 305.3, -155 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 297.9, -158.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 290.6, -159.9 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 292.2, -146.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 284.9, -149.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 277.6, -151.4 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 279.1, -138.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 271.8, -141.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 264.6, -142.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 266, -130.2 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 258.8, -133 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 251.6, -134.4 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 252.9, -121.9 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 245.8, -124.7 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 238.7, -126 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 239.8, -113.6 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 232.7, -116.2 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 225.7, -117.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 226.7, -105.3 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 219.7, -107.8 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 212.7, -109 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 213.6, -97.1 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 206.7, -99.5 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 199.7, -100.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 200.5, -88.8 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 193.6, -91 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 186.8, -92 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 187.4, -80.5 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 180.6, -82.6 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 173.8, -83.5 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 174.3, -72.2 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 167.6, -74.3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 160.8, -75 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 161.2, -63.9 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 154.5, -65.8 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 147.8, -66.5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 148.1, -55.7 , 0 );

--setScaleKey( spep_4 -3 + 0, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 3, 1, 1.93, 1.93 );
setScaleKey( spep_4 -3 + 4, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 6, 1, 1.9, 1.9 );
setScaleKey( spep_4 -3 + 8, 1, 1.89, 1.89 );
setScaleKey( spep_4 -3 + 10, 1, 1.88, 1.88 );
setScaleKey( spep_4 -3 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_4 -3 + 14, 1, 1.86, 1.86 );
setScaleKey( spep_4 -3 + 16, 1, 1.85, 1.85 );
setScaleKey( spep_4 -3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 20, 1, 1.83, 1.83 );
setScaleKey( spep_4 -3 + 22, 1, 1.81, 1.81 );
setScaleKey( spep_4 -3 + 24, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 26, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 28, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 30, 1, 1.77, 1.77 );
setScaleKey( spep_4 -3 + 32, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 34, 1, 1.75, 1.75 );
setScaleKey( spep_4 -3 + 36, 1, 1.74, 1.74 );
setScaleKey( spep_4 -3 + 38, 1, 1.72, 1.72 );
setScaleKey( spep_4 -3 + 40, 1, 1.71, 1.71 );
setScaleKey( spep_4 -3 + 42, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 44, 1, 1.69, 1.69 );
setScaleKey( spep_4 -3 + 46, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 48, 1, 1.67, 1.67 );
setScaleKey( spep_4 -3 + 50, 1, 1.66, 1.66 );
setScaleKey( spep_4 -3 + 52, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 54, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 56, 1, 1.62, 1.62 );
setScaleKey( spep_4 -3 + 58, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 60, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 62, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 64, 1, 1.58, 1.58 );
setScaleKey( spep_4 -3 + 66, 1, 1.57, 1.57 );
setScaleKey( spep_4 -3 + 68, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 70, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 72, 1, 1.53, 1.53 );
setScaleKey( spep_4 -3 + 74, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 76, 1, 1.51, 1.51 );
setScaleKey( spep_4 -3 + 78, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 80, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 82, 1, 1.48, 1.48 );
setScaleKey( spep_4 -3 + 84, 1, 1.47, 1.47 );
setScaleKey( spep_4 -3 + 86, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 88, 1, 1.44, 1.44 );
setScaleKey( spep_4 -3 + 90, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 92, 1, 1.42, 1.42 );
setScaleKey( spep_4 -3 + 94, 1, 1.41, 1.41 );
setScaleKey( spep_4 -3 + 96, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 98, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 100, 1, 1.38, 1.38 );
setScaleKey( spep_4 -3 + 102, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 104, 1, 1.35, 1.35 );
setScaleKey( spep_4 -3 + 106, 1, 1.34, 1.34 );
setScaleKey( spep_4 -3 + 108, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 110, 1, 1.32, 1.32 );
setScaleKey( spep_4 -3 + 112, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 114, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 116, 1, 1.29, 1.29 );
setScaleKey( spep_4 -3 + 118, 1, 1.27, 1.27 );

setRotateKey( spep_4 -3 + 3, 1, 0 );
setRotateKey( spep_4 -3 + 118, 1, 0 );

-- ** 書き文字エントリー ** --
ctZudododo = entryEffectLife( spep_4 -3 + 3, 10014, 95, 0x100, -1, 0, 10, 344 ); --ズドドドッ
setEffShake( spep_4 + 0, ctZudododo, 95, 20 );

setEffMoveKey( spep_4 -3 + 3, ctZudododo, 10, 344 , 0 );
setEffMoveKey( spep_4 -3 + 98, ctZudododo, 10, 344 , 0 );

setEffScaleKey( spep_4 -3 + 3, ctZudododo, 3.2, 3.2 );
setEffScaleKey( spep_4 -3 + 98, ctZudododo, 3.2, 3.2 );

setEffRotateKey( spep_4 -3 + 3, ctZudododo, 73 );
setEffRotateKey( spep_4 -3 + 98, ctZudododo, 73 );

setEffAlphaKey( spep_4 -3 + 3, ctZudododo, 255 );
setEffAlphaKey( spep_4 -3 + 98, ctZudododo, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade
entryFade( spep_4 + 98, 14, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 116, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_4 + 17, 1202 );
setSeVolume( spep_4 + 17, 1202, 200 );
setSeVolume( spep_4 + 31, 1200, 0 );
setSeVolume( spep_4 + 32, 1200, 5.5 );
setSeVolume( spep_4 + 33, 1200, 11 );
setSeVolume( spep_4 + 34, 1200, 16.5 );
setSeVolume( spep_4 + 35, 1200, 22 );
setSeVolume( spep_4 + 36, 1200, 27.5 );
setSeVolume( spep_4 + 37, 1200, 33 );
setSeVolume( spep_4 + 38, 1200, 38.5 );
setSeVolume( spep_4 + 39, 1200, 44 );
setSeVolume( spep_4 + 40, 1200, 49.5 );
setSeVolume( spep_4 + 41, 1200, 55 );
setSeVolume( spep_4 + 42, 1200, 60.5 );
setSeVolume( spep_4 + 43, 1200, 66 );
setSeVolume( spep_4 + 44, 1200, 71.5 );
setSeVolume( spep_4 + 45, 1200, 77 );
setSeVolume( spep_4 + 46, 1200, 82.5 );
setSeVolume( spep_4 + 47, 1200, 88 );
setSeVolume( spep_4 + 48, 1200, 93.5 );
setSeVolume( spep_4 + 49, 1200, 99 );
setSeVolume( spep_4 + 50, 1200, 104.5 );
setSeVolume( spep_4 + 51, 1200, 110 );
setSeVolume( spep_4 + 52, 1200, 115.5 );
setSeVolume( spep_4 + 53, 1200, 121 );
setSeVolume( spep_4 + 54, 1200, 126.5 );
setSeVolume( spep_4 + 55, 1200, 132 );
setSeVolume( spep_4 + 56, 1200, 137.5 );
setSeVolume( spep_4 + 57, 1200, 143 );
setSeVolume( spep_4 + 58, 1200, 148.5 );
setSeVolume( spep_4 + 59, 1200, 154 );
setSeVolume( spep_4 + 60, 1200, 159.5 );
setSeVolume( spep_4 + 61, 1200, 165 );
setSeVolume( spep_4 + 62, 1200, 170.5 );
setSeVolume( spep_4 + 63, 1200, 176 );
setSeVolume( spep_4 + 64, 1200, 181.5 );
setSeVolume( spep_4 + 65, 1200, 187 );
setSeVolume( spep_4 + 66, 1200, 192.5 );
setSeVolume( spep_4 + 67, 1200, 198 );
setSeVolume( spep_4 + 68, 1200, 203.5 );
setSeVolume( spep_4 + 69, 1200, 209 );
setSeVolume( spep_4 + 70, 1200, 214.5 );
setSeVolume( spep_4 + 71, 1200, 220 );
setSeVolume( spep_4 + 72, 1200, 225.5 );
setSeVolume( spep_4 + 73, 1200, 231 );
setSeVolume( spep_4 + 74, 1200, 236.5 );
setSeVolume( spep_4 + 75, 1200, 242 );
setSeVolume( spep_4 + 76, 1200, 247.5 );
setSeVolume( spep_4 + 77, 1200, 253 );
setSeVolume( spep_4 + 78, 1200, 258.5 );
setSeVolume( spep_4 + 79, 1200, 264 );
setSeVolume( spep_4 + 80, 1200, 269.5 );
setSeVolume( spep_4 + 81, 1200, 275 );
setSeVolume( spep_4 + 82, 1200, 280.5 );
setSeVolume( spep_4 + 83, 1200, 286 );
setSeVolume( spep_4 + 84, 1200, 291.5 );
setSeVolume( spep_4 + 85, 1200, 297 );
setSeVolume( spep_4 + 86, 1200, 302.5 );
setSeVolume( spep_4 + 87, 1200, 308 );
setSeVolume( spep_4 + 88, 1200, 313.5 );
setSeVolume( spep_4 + 89, 1200, 316 );

-- ** 次の準備 ** --
spep_5 = spep_4 +116;

------------------------------------------------------
-- 敵吹っ飛びシーン
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffectLife( spep_5 + 0, SP_09, 110, 0x80, -1, 0, 0, 0 ); --背景(ef_005)
setEffMoveKey( spep_5 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_5 + 110, finish, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 110, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 110, finish, 255 );

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

--ひび割れエフェクト
hibiware = entryEffect( spep_5+1 , 1600,  0x100, -1, 0, 60, -92 );

setEffMoveKey( spep_5+1 , hibiware, 60, -92 , 0 );
setEffMoveKey( spep_5 + 100, hibiware, 60, -92 , 0 );

setEffScaleKey( spep_5+1 , hibiware, 1, 1 );
setEffScaleKey( spep_5 + 100, hibiware, 1, 1 );

setEffRotateKey( spep_5+1 , hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5+1 , hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_ga = entryEffectLife( spep_5 + 12,  906, 88, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 12, shuchusen_ga, 32, 25 );

setEffMoveKey( spep_5 + 12, shuchusen_ga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen_ga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 12, shuchusen_ga, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen_ga, 1, 1 );

setEffRotateKey( spep_5 + 12, shuchusen_ga, 0 );
setEffRotateKey( spep_5 + 100, shuchusen_ga, 0 );

setEffAlphaKey( spep_5 + 12, shuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen_ga, 255 );

--黒集中線
bkshuchusen_ga= entryEffectLife( spep_5 + 12,  1657, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 12, bkshuchusen_ga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bkshuchusen_ga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 12, bkshuchusen_ga, 1, 1 );
setEffScaleKey( spep_5 + 100, bkshuchusen_ga, 1, 1 );

setEffRotateKey( spep_5 + 12, bkshuchusen_ga, 0 );
setEffRotateKey( spep_5 + 100, bkshuchusen_ga, 0 );

setEffAlphaKey( spep_5 + 12, bkshuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 100, bkshuchusen_ga, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 12,  10005, 88, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 0, ctga, 28, 20 );

setEffMoveKey( spep_5 + 12, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 12, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 12, ctga, -10.9 );
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

setEffAlphaKey( spep_5 + 12, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 12, 1, 1.2, 1.2);
setScaleKey( spep_5 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 24, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 28, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 110, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1050 );
setRotateKey( spep_5 + 110, 1, 1050 );

-- ** 音 ** --
playSe( spep_5 + 7, 1023 );
stopSe( spep_5 + 7, se_1200, 0 );
playSe( spep_5 + 12, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 ); --構え(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0, 0 );
setEffMoveKey( spep_0 + 26, idling, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 26, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 26, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 26, idling, 255 );

haikei = entryEffect( spep_0 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --背景(ef_005)
setEffMoveKey( spep_0 + 0, haikei, 0, 0, 0 );
setEffMoveKey( spep_0 + 26, haikei, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_0 + 26, haikei, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, haikei, 0 );
setEffRotateKey( spep_0 + 26, haikei, 0 );
setEffAlphaKey( spep_0 + 0, haikei, 255 );
setEffAlphaKey( spep_0 + 26, haikei, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 26, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 26;

------------------------------------------------------
-- 気溜め
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 ); --気溜め(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 176, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 176, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 176, tame, 255 );

haikei_1 = entryEffect( spep_1 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --背景(ef_006)
setEffMoveKey( spep_1 + 0, haikei_1, 0, 0, 0 );
setEffMoveKey( spep_1 + 176, haikei_1, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, haikei_1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, haikei_1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, haikei_1, 0 );
setEffRotateKey( spep_1 + 176, haikei_1, 0 );
setEffAlphaKey( spep_1 + 0, haikei_1, 255 );
setEffAlphaKey( spep_1 + 176, haikei_1, 255 );

spep_x = spep_1 + 88;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5, 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5, 0 );

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
entryFade( spep_1 + 164, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 176, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_1 + 3, 1035 );
playSe( spep_1 + 31, 1036 );
setSeVolume( spep_1 + 31, 1036, 71 );
playSe( spep_1 + 55, 1036 );
se_1191 = playSe( spep_1 + 55, 1191 );
setSeVolume( spep_1 + 55, 1036, 71 );
setSeVolume( spep_1 + 55, 1191, 0 );
setSeVolume( spep_1 + 67, 1191, 19.75 );
setSeVolume( spep_1 + 68, 1191, 39.5 );
setSeVolume( spep_1 + 69, 1191, 59.25 );
setSeVolume( spep_1 + 70, 1191, 79 );
playSe( spep_1 + 79, 1036 );
playSe( spep_1 + 94, 1018 );
playSe( spep_1 + 103, 1036 );
setSeVolume( spep_1 + 103, 1036, 71 );
playSe( spep_1 + 127, 1036 );
setSeVolume( spep_1 + 127, 1036, 71 );
playSe( spep_1 + 151, 1036 );
setSeVolume( spep_1 + 151, 1036, 71 );
se_1036 = playSe( spep_1 + 175, 1036 );
setSeVolume( spep_1 + 175, 1036, 71 );

-- ** 次の準備 ** --
spep_2 = spep_1 +176;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 ); --カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 ); --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 7, 1035 );
stopSe( spep_2 + 7, se_1191, 0 );
stopSe( spep_2 + 7, se_1036, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_2 + 82, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 発射
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --発射(ef_003)
setEffMoveKey( spep_3 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, hassha, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_3 + 116, hassha, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 116, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 116, hassha, 255 );

haikei_3 = entryEffectLife( spep_3 + 0, SP_07, 116, 0x80, -1, 0, 0, 0 ); --背景(ef_005)
setEffMoveKey( spep_3 + 0, haikei_3, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, haikei_3, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, haikei_3, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, haikei_3, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, haikei_3, 0 );
setEffRotateKey( spep_3 + 116, haikei_3, 0 );
setEffAlphaKey( spep_3 + 0, haikei_3, 255 );
setEffAlphaKey( spep_3 + 116, haikei_3, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_3 -3 + 74, 923, 44, 0x80, -1, 0, 0, -16 );
setEffMoveKey( spep_3 -3 + 74, ryusen1, 0, -16 , 0 );
setEffMoveKey( spep_3 -3 + 118, ryusen1, 0, -16 , 0 );

setEffScaleKey( spep_3 -3 + 74, ryusen1, 1.39, 1 );
setEffScaleKey( spep_3 -3 + 118, ryusen1, 1.39, 1 );

setEffRotateKey( spep_3 -3 + 74, ryusen1, 0 );
setEffRotateKey( spep_3 -3 + 118, ryusen1, 0 );

setEffAlphaKey( spep_3 -3 + 74, ryusen1, 51 );
setEffAlphaKey( spep_3 -3 + 76, ryusen1, 102 );
setEffAlphaKey( spep_3 -3 + 78, ryusen1, 153 );
setEffAlphaKey( spep_3 -3 + 80, ryusen1, 204 );
setEffAlphaKey( spep_3 -3 + 82, ryusen1, 255 );
setEffAlphaKey( spep_3 -3 + 118, ryusen1, 255 );

-- ** 書き文字エントリー ** --
ctZuo = entryEffectLife( spep_3 -3 + 78, 10012, 12, 0x100, -1, 0, -35.9, 321.8 ); --ズオッ
setEffMoveKey( spep_3 -3 + 78, ctZuo, -35.9, 321.8 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctZuo, -90.9, 342.5 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctZuo, -129.3, 379.8 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctZuo, -196.9, 387.8 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctZuo, -222.6, 437.9 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctZuo, -302.9, 433.2 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctZuo, -356, 455.9 , 0 );

setEffScaleKey( spep_3 -3 + 78, ctZuo, 0.1, 0.1 );
--setEffScaleKey( spep_3 -3 + 80, ctZuo, 0.42, 0.42 );
--setEffScaleKey( spep_3 -3 + 82, ctZuo, 0.73, 0.73 );
--setEffScaleKey( spep_3 -3 + 84, ctZuo, 1.05, 1.05 );
--setEffScaleKey( spep_3 -3 + 86, ctZuo, 1.37, 1.37 );
--setEffScaleKey( spep_3 -3 + 88, ctZuo, 1.68, 1.68 );
setEffScaleKey( spep_3 -3 + 90, ctZuo, 6, 6 );

setEffRotateKey( spep_3 -3 + 78, ctZuo, -25 );
setEffRotateKey( spep_3 -3 + 90, ctZuo, -25 );

setEffAlphaKey( spep_3 -3 + 78, ctZuo, 255 );
setEffAlphaKey( spep_3 -3 + 88, ctZuo, 255 );
setEffAlphaKey( spep_3 -3 + 89, ctZuo, 255 );
setEffAlphaKey( spep_3 -3 + 90, ctZuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 116, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
se_1200 = playSe( spep_3 + 16, 1200 );
se_1157 = playSe( spep_3 + 16, 1157 );
setSeVolume( spep_3 + 16, 1200, 316 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, se_1200, 0 );
stopSe( SP_dodge - 12, se_1157, 0 );

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
entryFade( spep_3 + 108, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

-- ** 音 ** --
playSe( spep_3 + 90, 1202 );
playSe( spep_3 + 90, 1021 );
stopSe( spep_3 + 114, se_1157, 0 );
setSeVolume( spep_3 + 114, 1200, 316 );
setSeVolume( spep_3 + 115, 1200, 0 );

-- ** 次の準備 ** --
spep_4 = spep_3 +116;

-- ** 次の準備 ** --
spep_4 = spep_3 +116;

------------------------------------------------------
-- 着弾
------------------------------------------------------

-- ** エフェクト等 ** --
haikei_4 = entryEffectLife( spep_4 + 0, SP_08, 116, 0x80, -1, 0, 0, 0 ); --背景(ef_005)
setEffMoveKey( spep_4 + 0, haikei_4, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, haikei_4, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, haikei_4, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, haikei_4, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, haikei_4, 0 );
setEffRotateKey( spep_4 + 116, haikei_4, 0 );
setEffAlphaKey( spep_4 + 0, haikei_4, 255 );
setEffAlphaKey( spep_4 + 116, haikei_4, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_4 + 0, 921, 118, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1.38, 1.3 );
setEffScaleKey( spep_4 + 118, ryusen2, 1.38, 1.3 );

setEffRotateKey( spep_4 + 0, ryusen2, 200 );
setEffRotateKey( spep_4 + 118, ryusen2, 200 );

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 118, ryusen2, 255 );

hit = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --着弾(ef_004)
setEffMoveKey( spep_4 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, hit, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, hit, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 116, hit, 0 );
setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 116, hit, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 3, 1, 1 );
changeAnime( spep_4 -3 + 3, 1, 102 );

--0setMoveKey( spep_4 -3 + 0, 1, 402.2, -225.5 , 0 );
setMoveKey( spep_4 -3 + 3, 1, 394.4, -227.9 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 396.9, -213 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 389.2, -217.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 381.4, -219.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 383.8, -204.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 376.1, -208.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 368.4, -210.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 370.7, -196.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 363.1, -200.3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 355.4, -202.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 357.7, -188.1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 350.1, -191.9 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 342.5, -193.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 344.6, -179.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 337, -183.4 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 329.5, -185.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 331.4, -171.6 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 324, -175.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 316.5, -176.9 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 318.3, -163.3 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 311, -166.7 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 303.6, -168.4 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 305.3, -155 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 297.9, -158.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 290.6, -159.9 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 292.2, -146.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 284.9, -149.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 277.6, -151.4 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 279.1, -138.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 271.8, -141.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 264.6, -142.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 266, -130.2 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 258.8, -133 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 251.6, -134.4 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 252.9, -121.9 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 245.8, -124.7 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 238.7, -126 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 239.8, -113.6 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 232.7, -116.2 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 225.7, -117.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 226.7, -105.3 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 219.7, -107.8 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 212.7, -109 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 213.6, -97.1 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 206.7, -99.5 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 199.7, -100.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 200.5, -88.8 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 193.6, -91 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 186.8, -92 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 187.4, -80.5 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 180.6, -82.6 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 173.8, -83.5 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 174.3, -72.2 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 167.6, -74.3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 160.8, -75 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 161.2, -63.9 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 154.5, -65.8 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 147.8, -66.5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 148.1, -55.7 , 0 );

--setScaleKey( spep_4 -3 + 0, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 3, 1, 1.93, 1.93 );
setScaleKey( spep_4 -3 + 4, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 6, 1, 1.9, 1.9 );
setScaleKey( spep_4 -3 + 8, 1, 1.89, 1.89 );
setScaleKey( spep_4 -3 + 10, 1, 1.88, 1.88 );
setScaleKey( spep_4 -3 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_4 -3 + 14, 1, 1.86, 1.86 );
setScaleKey( spep_4 -3 + 16, 1, 1.85, 1.85 );
setScaleKey( spep_4 -3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 20, 1, 1.83, 1.83 );
setScaleKey( spep_4 -3 + 22, 1, 1.81, 1.81 );
setScaleKey( spep_4 -3 + 24, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 26, 1, 1.79, 1.79 );
setScaleKey( spep_4 -3 + 28, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 30, 1, 1.77, 1.77 );
setScaleKey( spep_4 -3 + 32, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 34, 1, 1.75, 1.75 );
setScaleKey( spep_4 -3 + 36, 1, 1.74, 1.74 );
setScaleKey( spep_4 -3 + 38, 1, 1.72, 1.72 );
setScaleKey( spep_4 -3 + 40, 1, 1.71, 1.71 );
setScaleKey( spep_4 -3 + 42, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 44, 1, 1.69, 1.69 );
setScaleKey( spep_4 -3 + 46, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 48, 1, 1.67, 1.67 );
setScaleKey( spep_4 -3 + 50, 1, 1.66, 1.66 );
setScaleKey( spep_4 -3 + 52, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 54, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 56, 1, 1.62, 1.62 );
setScaleKey( spep_4 -3 + 58, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 60, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 62, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 64, 1, 1.58, 1.58 );
setScaleKey( spep_4 -3 + 66, 1, 1.57, 1.57 );
setScaleKey( spep_4 -3 + 68, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 70, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 72, 1, 1.53, 1.53 );
setScaleKey( spep_4 -3 + 74, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 76, 1, 1.51, 1.51 );
setScaleKey( spep_4 -3 + 78, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 80, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 82, 1, 1.48, 1.48 );
setScaleKey( spep_4 -3 + 84, 1, 1.47, 1.47 );
setScaleKey( spep_4 -3 + 86, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 88, 1, 1.44, 1.44 );
setScaleKey( spep_4 -3 + 90, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 92, 1, 1.42, 1.42 );
setScaleKey( spep_4 -3 + 94, 1, 1.41, 1.41 );
setScaleKey( spep_4 -3 + 96, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 98, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 100, 1, 1.38, 1.38 );
setScaleKey( spep_4 -3 + 102, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 104, 1, 1.35, 1.35 );
setScaleKey( spep_4 -3 + 106, 1, 1.34, 1.34 );
setScaleKey( spep_4 -3 + 108, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 110, 1, 1.32, 1.32 );
setScaleKey( spep_4 -3 + 112, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 114, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 116, 1, 1.29, 1.29 );
setScaleKey( spep_4 -3 + 118, 1, 1.27, 1.27 );

setRotateKey( spep_4 -3 + 3, 1, 0 );
setRotateKey( spep_4 -3 + 118, 1, 0 );

-- ** 書き文字エントリー ** --
ctZudododo = entryEffectLife( spep_4 -3 + 3, 10014, 95, 0x100, -1, 0, 10, 344 ); --ズドドドッ
setEffShake( spep_4 + 0, ctZudododo, 95, 20 );

setEffMoveKey( spep_4 -3 + 3, ctZudododo, 10, 344 , 0 );
setEffMoveKey( spep_4 -3 + 98, ctZudododo, 10, 344 , 0 );

setEffScaleKey( spep_4 -3 + 3, ctZudododo, 3.2, 3.2 );
setEffScaleKey( spep_4 -3 + 98, ctZudododo, 3.2, 3.2 );

setEffRotateKey( spep_4 -3 + 3, ctZudododo, 13 );
setEffRotateKey( spep_4 -3 + 98, ctZudododo, 13 );

setEffAlphaKey( spep_4 -3 + 3, ctZudododo, 255 );
setEffAlphaKey( spep_4 -3 + 98, ctZudododo, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade
entryFade( spep_4 + 98, 14, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );--white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 116, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_4 + 17, 1202 );
setSeVolume( spep_4 + 17, 1202, 200 );
setSeVolume( spep_4 + 31, 1200, 0 );
setSeVolume( spep_4 + 32, 1200, 5.5 );
setSeVolume( spep_4 + 33, 1200, 11 );
setSeVolume( spep_4 + 34, 1200, 16.5 );
setSeVolume( spep_4 + 35, 1200, 22 );
setSeVolume( spep_4 + 36, 1200, 27.5 );
setSeVolume( spep_4 + 37, 1200, 33 );
setSeVolume( spep_4 + 38, 1200, 38.5 );
setSeVolume( spep_4 + 39, 1200, 44 );
setSeVolume( spep_4 + 40, 1200, 49.5 );
setSeVolume( spep_4 + 41, 1200, 55 );
setSeVolume( spep_4 + 42, 1200, 60.5 );
setSeVolume( spep_4 + 43, 1200, 66 );
setSeVolume( spep_4 + 44, 1200, 71.5 );
setSeVolume( spep_4 + 45, 1200, 77 );
setSeVolume( spep_4 + 46, 1200, 82.5 );
setSeVolume( spep_4 + 47, 1200, 88 );
setSeVolume( spep_4 + 48, 1200, 93.5 );
setSeVolume( spep_4 + 49, 1200, 99 );
setSeVolume( spep_4 + 50, 1200, 104.5 );
setSeVolume( spep_4 + 51, 1200, 110 );
setSeVolume( spep_4 + 52, 1200, 115.5 );
setSeVolume( spep_4 + 53, 1200, 121 );
setSeVolume( spep_4 + 54, 1200, 126.5 );
setSeVolume( spep_4 + 55, 1200, 132 );
setSeVolume( spep_4 + 56, 1200, 137.5 );
setSeVolume( spep_4 + 57, 1200, 143 );
setSeVolume( spep_4 + 58, 1200, 148.5 );
setSeVolume( spep_4 + 59, 1200, 154 );
setSeVolume( spep_4 + 60, 1200, 159.5 );
setSeVolume( spep_4 + 61, 1200, 165 );
setSeVolume( spep_4 + 62, 1200, 170.5 );
setSeVolume( spep_4 + 63, 1200, 176 );
setSeVolume( spep_4 + 64, 1200, 181.5 );
setSeVolume( spep_4 + 65, 1200, 187 );
setSeVolume( spep_4 + 66, 1200, 192.5 );
setSeVolume( spep_4 + 67, 1200, 198 );
setSeVolume( spep_4 + 68, 1200, 203.5 );
setSeVolume( spep_4 + 69, 1200, 209 );
setSeVolume( spep_4 + 70, 1200, 214.5 );
setSeVolume( spep_4 + 71, 1200, 220 );
setSeVolume( spep_4 + 72, 1200, 225.5 );
setSeVolume( spep_4 + 73, 1200, 231 );
setSeVolume( spep_4 + 74, 1200, 236.5 );
setSeVolume( spep_4 + 75, 1200, 242 );
setSeVolume( spep_4 + 76, 1200, 247.5 );
setSeVolume( spep_4 + 77, 1200, 253 );
setSeVolume( spep_4 + 78, 1200, 258.5 );
setSeVolume( spep_4 + 79, 1200, 264 );
setSeVolume( spep_4 + 80, 1200, 269.5 );
setSeVolume( spep_4 + 81, 1200, 275 );
setSeVolume( spep_4 + 82, 1200, 280.5 );
setSeVolume( spep_4 + 83, 1200, 286 );
setSeVolume( spep_4 + 84, 1200, 291.5 );
setSeVolume( spep_4 + 85, 1200, 297 );
setSeVolume( spep_4 + 86, 1200, 302.5 );
setSeVolume( spep_4 + 87, 1200, 308 );
setSeVolume( spep_4 + 88, 1200, 313.5 );
setSeVolume( spep_4 + 89, 1200, 316 );

-- ** 次の準備 ** --
spep_5 = spep_4 +116;

------------------------------------------------------
-- 敵吹っ飛びシーン
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffectLife( spep_5 + 0, SP_09, 110, 0x80, -1, 0, 0, 0 ); --背景(ef_005)
setEffMoveKey( spep_5 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_5 + 110, finish, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 110, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 110, finish, 255 );

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

--ひび割れエフェクト
hibiware = entryEffect( spep_5+1 , 1600,  0x100, -1, 0, 60, -92 );

setEffMoveKey( spep_5+1 , hibiware, 60, -92 , 0 );
setEffMoveKey( spep_5 + 100, hibiware, 60, -92 , 0 );

setEffScaleKey( spep_5+1 , hibiware, 1, 1 );
setEffScaleKey( spep_5 + 100, hibiware, 1, 1 );

setEffRotateKey( spep_5+1 , hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5+1 , hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen_ga = entryEffectLife( spep_5 + 12,  906, 88, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 12, shuchusen_ga, 32, 25 );

setEffMoveKey( spep_5 + 12, shuchusen_ga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen_ga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 12, shuchusen_ga, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen_ga, 1, 1 );

setEffRotateKey( spep_5 + 12, shuchusen_ga, 0 );
setEffRotateKey( spep_5 + 100, shuchusen_ga, 0 );

setEffAlphaKey( spep_5 + 12, shuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen_ga, 255 );

--黒集中線
bkshuchusen_ga= entryEffectLife( spep_5 + 12,  1657, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 12, bkshuchusen_ga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bkshuchusen_ga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 12, bkshuchusen_ga, 1, 1 );
setEffScaleKey( spep_5 + 100, bkshuchusen_ga, 1, 1 );

setEffRotateKey( spep_5 + 12, bkshuchusen_ga, 0 );
setEffRotateKey( spep_5 + 100, bkshuchusen_ga, 0 );

setEffAlphaKey( spep_5 + 12, bkshuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 100, bkshuchusen_ga, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 12,  10005, 88, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 0, ctga, 28, 20 );

setEffMoveKey( spep_5 + 12, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 12, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 12, ctga, -10.9 );
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

setEffAlphaKey( spep_5 + 12, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 12, 1, 1.2, 1.2);
setScaleKey( spep_5 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 24, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 28, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 110, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1050 );
setRotateKey( spep_5 + 110, 1, 1050 );

-- ** 音 ** --
playSe( spep_5 + 7, 1023 );
stopSe( spep_5 + 7, se_1200, 0 );
playSe( spep_5 + 12, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 100 );

end
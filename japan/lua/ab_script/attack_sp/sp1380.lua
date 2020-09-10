--サイボーグ桃白白_スーパーどどん波
--sp_effect_b4_00126

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
SP_01 = 154547; --構え～前ダッシュ
SP_02 = 154548; --切りつけ　前面
SP_03 = 154549; --切りつけ　背面
SP_04 = 154551; --発射
SP_05 = 154553; --着弾

--敵側
SP_03r = 154550; --切りつけ　背面
SP_04r = 154552; --発射

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
-- 構え～前ダッシュ
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --構え～前ダッシュ(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, kamae, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 86, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 86, kamae, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 34, 906, 54, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 34, shuchusen1, 54, 20 );

setEffMoveKey( spep_0 -3 + 34, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 88, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 -3 + 34, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 -3 + 88, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 -3 + 34, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 88, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 34, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 36, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 88, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86, 0, 0, 0, 0, 200 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 80, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 1042 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
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

-- ** 音 ** --
playSe( spep_0 + 36, 08 );
se_1116 = playSe( spep_0 + 36, 1116 );
playSe( spep_0 + 68, 1072 );
stopSe( spep_0 + 69, se_1116, 23 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;

------------------------------------------------------
-- 構え～前ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
slash_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --切りつけ　前面(ef_002)
setEffMoveKey( spep_1 + 0, slash_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66, slash_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66, slash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, slash_f, 0 );
setEffRotateKey( spep_1 + 66, slash_f, 0 );
setEffAlphaKey( spep_1 + 0, slash_f, 255 );
setEffAlphaKey( spep_1 + 66, slash_f, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0, 921, 66, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0, 0 );
setEffMoveKey( spep_1 + 66, ryusen1, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1, 1 );
setEffScaleKey( spep_1 + 66, ryusen1, 1, 1 );

setEffRotateKey( spep_1 + 0, ryusen1, 180 );
setEffRotateKey( spep_1 + 66, ryusen1, 180 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 66, ryusen1, 255 );

slash_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --切りつけ　背面(ef_003)
setEffMoveKey( spep_1 + 0, slash_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66, slash_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66, slash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, slash_b, 0 );
setEffRotateKey( spep_1 + 66, slash_b, 0 );
setEffAlphaKey( spep_1 + 0, slash_b, 255 );
setEffAlphaKey( spep_1 + 66, slash_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 3, 1, 1 );
setDisp( spep_1 -3 + 68, 1, 0 );
changeAnime( spep_1 -3 + 3, 1, 102 );
changeAnime( spep_1 -3 + 42, 1, 107 );

--setMoveKey( spep_1 -3 + 0, 1, 798.4, -277.4 , 0 );
setMoveKey( spep_1 -3 + 3, 1, 743.4, -262 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 688.6, -246.6 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 633.8, -231.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 578.9, -215.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 524.1, -200.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 469.2, -185.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 414.4, -169.8 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 359.5, -154.4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 304.6, -139.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 249.8, -123.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 194.9, -108.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 140, -93 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 135.3, -91.8 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 130.4, -90.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 125.6, -89.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 120.9, -88.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 116.1, -87.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 111.2, -85.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 106.4, -84.7 , 0 );
setMoveKey( spep_1 -3 + 41, 1, 101.7, -83.5 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 60.1, -155 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 138.3, -171.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 127.3, -205.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 463.3, -372.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 487.6, -505.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 644.6, -609.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 770.3, -784.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 894, -729.1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 1004.2, -821.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 1114.3, -914 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 1224.6, -1006.4 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 1334.9, -1098.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 1445.1, -1191.4 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 1555.4, -1283.8 , 0 );

--setScaleKey( spep_1 -3 + 0, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 3, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 4, 1, 2.45, 2.45 );
setScaleKey( spep_1 -3 + 6, 1, 2.38, 2.38 );
setScaleKey( spep_1 -3 + 8, 1, 2.31, 2.3 );
setScaleKey( spep_1 -3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_1 -3 + 12, 1, 2.16, 2.15 );
setScaleKey( spep_1 -3 + 14, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 16, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 18, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 20, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 22, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 24, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 26, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 28, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 30, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 32, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 34, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 36, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 38, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 41, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 42, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 44, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 46, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 48, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 50, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 52, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 56, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 58, 1, 1.36, 1.37 );
setScaleKey( spep_1 -3 + 60, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 62, 1, 1.39, 1.4 );
setScaleKey( spep_1 -3 + 64, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 66, 1, 1.42, 1.43 );
setScaleKey( spep_1 -3 + 68, 1, 1.44, 1.44 );

setRotateKey( spep_1 -3 + 2, 1, 0 );
setRotateKey( spep_1 -3 + 41, 1, 0 );
setRotateKey( spep_1 -3 + 42, 1, -51.9 );
setRotateKey( spep_1 -3 + 68, 1, -51.9 );

-- ** 書き文字エントリー ** --
ctBa = entryEffectLife( spep_1 -3 + 42, 10022, 18, 0x100, -1, 0, 6.6, 202.3 ); --バッ
setEffMoveKey( spep_1 -3 + 42, ctBa, 6.6, 202.3 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctBa, 19.8, 223.2 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctBa, 21.1, 233 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctBa, 29.9, 241.1 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctBa, 21.1, 233 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctBa, 29.9, 241.2 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctBa, 21.1, 233 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctBa, 30, 241.2 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctBa, 21.1, 233 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctBa, 30.1, 241.3 , 0 );

setEffScaleKey( spep_1 -3 + 42, ctBa, 0.48, 0.48 );
setEffScaleKey( spep_1 -3 + 44, ctBa, 0.86, 0.86 );
setEffScaleKey( spep_1 -3 + 46, ctBa, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 48, ctBa, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 50, ctBa, 1.26, 1.26 );
setEffScaleKey( spep_1 -3 + 52, ctBa, 1.26, 1.26 );
setEffScaleKey( spep_1 -3 + 54, ctBa, 1.27, 1.27 );
setEffScaleKey( spep_1 -3 + 58, ctBa, 1.27, 1.27 );
setEffScaleKey( spep_1 -3 + 60, ctBa, 1.28, 1.28 );

setEffRotateKey( spep_1 -3 + 42, ctBa, 0 );
setEffRotateKey( spep_1 -3 + 60, ctBa, 0 );

setEffAlphaKey( spep_1 -3 + 42, ctBa, 255 );
setEffAlphaKey( spep_1 -3 + 60, ctBa, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 66, 0, 0, 0, 0, 200 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 58, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 52, 1032 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 66;

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
playSe( spep_2 + 6, 1035 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 発射
------------------------------------------------------

-- ** エフェクト等 ** --
shot = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --発射(ef_004)
setEffMoveKey( spep_3 + 0, shot, 0, 0, 0 );
setEffMoveKey( spep_3 + 126, shot, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, shot, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, shot, 0 );
setEffRotateKey( spep_3 + 126, shot, 0 );

setEffAlphaKey( spep_3 + 0, shot, 255 );
setEffAlphaKey( spep_3 + 126, shot, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 -3 + 3, 906, 82 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 -3 + 3, shuchusen2, 82 -3, 20 );

setEffMoveKey( spep_3 -3 + 3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 82, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 3, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_3 -3 + 82, shuchusen2, 1.4, 1.4 );

setEffRotateKey( spep_3 -3 + 3, shuchusen2, 180 );
setEffRotateKey( spep_3 -3 + 82, shuchusen2, 180 );

setEffRotateKey( spep_3 -3 + 3, shuchusen2, 0 );
setEffRotateKey( spep_3 -3 + 82, shuchusen2, 0 );

setEffAlphaKey( spep_3 -3 + 3, shuchusen2, 255 );
setEffAlphaKey( spep_3 -3 + 76, shuchusen2, 255 );
setEffAlphaKey( spep_3 -3 + 78, shuchusen2, 170 );
setEffAlphaKey( spep_3 -3 + 80, shuchusen2, 85 );
setEffAlphaKey( spep_3 -3 + 82, shuchusen2, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3 + 12, 190006, 72, 0x100, -1, 0, 120, 520);    --ゴゴゴゴ

setEffMoveKey( spep_3 + 12, ctgogo, 120, 520, 0 );
setEffMoveKey( spep_3 + 84, ctgogo, 120, 520, 0 );

setEffAlphaKey( spep_3 + 12, ctgogo, 0 );
setEffAlphaKey( spep_3 + 13, ctgogo, 255 );
setEffAlphaKey( spep_3 + 14, ctgogo, 255 );
setEffAlphaKey( spep_3 + 76, ctgogo, 255 );
setEffAlphaKey( spep_3 + 78, ctgogo, 255 );
setEffAlphaKey( spep_3 + 80, ctgogo, 191 );
setEffAlphaKey( spep_3 + 82, ctgogo, 112 );
setEffAlphaKey( spep_3 + 84, ctgogo, 64 );

setEffRotateKey( spep_3 + 12, ctgogo, 0);
setEffRotateKey( spep_3 + 84, ctgogo, 0);

setEffScaleKey( spep_3 + 12, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_3 + 72, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_3 + 84, ctgogo, 1.07, 1.07 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_3 -3 + 78, 921, 50, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 -3 + 78, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 128, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 78, ryusen2, 1, 1 );
setEffScaleKey( spep_3 -3 + 128, ryusen2, 1, 1 );

setEffRotateKey( spep_3 -3 + 78, ryusen2, 180 );
setEffRotateKey( spep_3 -3 + 128, ryusen2, 180 );

setEffAlphaKey( spep_3 -3 + 78, ryusen2, 85 );
setEffAlphaKey( spep_3 -3 + 80, ryusen2, 170 );
setEffAlphaKey( spep_3 -3 + 82, ryusen2, 255 );
setEffAlphaKey( spep_3 -3 + 128, ryusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 126, 0, 0, 0, 0, 200 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 120, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1154 = playSe( spep_3 + 0, 1154 );
playSe( spep_3 + 0, 1020 );
setSeVolume( spep_3 + 0, 1020, 126 );
playSe( spep_3 + 11, 1018 );
playSe( spep_3 + 17, 1020 );
setSeVolume( spep_3 + 17, 1020, 126 );
playSe( spep_3 + 37, 1020 );
setSeVolume( spep_3 + 37, 1020, 126 );
stopSe( spep_3 + 48, se_1154, 30 );
playSe( spep_3 + 55, 1020 );
setSeVolume( spep_3 + 55, 1020, 141 );
se_1020 = playSe( spep_3 + 74, 1020 );
setSeVolume( spep_3 + 74, 1020, 158 );
se_1022 = playSe( spep_3 + 84, 1022 );
stopSe( spep_3 + 90, se_1020, 0 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 126;

------------------------------------------------------
--着弾 
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --着弾(ef_005)
setEffMoveKey( spep_4 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 56, hit, 0 );

setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 56, hit, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 3, 1, 1 );
setDisp( spep_4 -3 + 58, 1, 0 );
changeAnime( spep_4 -3 + 3, 1, 106 );
changeAnime( spep_4 -3 + 42, 1, 108 );

--setMoveKey( spep_4 -3 + 0, 1, 289.7, 53.7 , 0 );
setMoveKey( spep_4 -3 + 3, 1, 283, 52.6 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 276.3, 51.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 269.5, 50.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 262.9, 48.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 256.1, 47.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 249.3, 46.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 242.6, 45.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 235.9, 44.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 229.2, 43.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 222.4, 41.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 215.7, 40.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 209, 39.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 202.3, 38.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 195.5, 37.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 188.8, 36 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 182.1, 34.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 175.3, 33.6 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 168.7, 32.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 161.9, 31.3 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 155.2, 30.1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 158.4, 29.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 161.7, 29.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 165, 29.4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 168.3, 29.1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 170.9, 29.3 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 173.5, 29.4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 176.2, 29.6 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 178.9, 29.8 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 181.5, 29.9 , 0 );

--setScaleKey( spep_4 -3 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 3, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 4, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 6, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 10, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 12, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 14, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 16, 1, 0.83, 0.82 );
setScaleKey( spep_4 -3 + 18, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 22, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 24, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_4 -3 + 28, 1, 0.99, 0.99 );
setScaleKey( spep_4 -3 + 30, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 32, 1, 1.05, 1.05 );
setScaleKey( spep_4 -3 + 34, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 36, 1, 1.11, 1.11 );
setScaleKey( spep_4 -3 + 38, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 41, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 42, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 44, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 46, 1, 1.21, 1.21 );
setScaleKey( spep_4 -3 + 48, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 50, 1, 1.21, 1.21 );
setScaleKey( spep_4 -3 + 52, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 54, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 56, 1, 1.14, 1.13 );
setScaleKey( spep_4 -3 + 58, 1, 1.11, 1.11 );

--setRotateKey( spep_4 -3 + 0, 1, -28.6 );
setRotateKey( spep_4 -3 + 3, 1, -28.3 );
setRotateKey( spep_4 -3 + 4, 1, -28 );
setRotateKey( spep_4 -3 + 6, 1, -27.8 );
setRotateKey( spep_4 -3 + 8, 1, -27.5 );
setRotateKey( spep_4 -3 + 10, 1, -27.3 );
setRotateKey( spep_4 -3 + 12, 1, -27 );
setRotateKey( spep_4 -3 + 14, 1, -26.8 );
setRotateKey( spep_4 -3 + 16, 1, -26.5 );
setRotateKey( spep_4 -3 + 18, 1, -26.2 );
setRotateKey( spep_4 -3 + 20, 1, -26 );
setRotateKey( spep_4 -3 + 22, 1, -25.7 );
setRotateKey( spep_4 -3 + 24, 1, -25.5 );
setRotateKey( spep_4 -3 + 26, 1, -25.2 );
setRotateKey( spep_4 -3 + 28, 1, -25 );
setRotateKey( spep_4 -3 + 30, 1, -24.7 );
setRotateKey( spep_4 -3 + 32, 1, -24.4 );
setRotateKey( spep_4 -3 + 34, 1, -24.2 );
setRotateKey( spep_4 -3 + 36, 1, -23.9 );
setRotateKey( spep_4 -3 + 38, 1, -23.7 );
setRotateKey( spep_4 -3 + 41, 1, -23.4 );
setRotateKey( spep_4 -3 + 42, 1, -1.7 );
setRotateKey( spep_4 -3 + 44, 1, -1.5 );
setRotateKey( spep_4 -3 + 46, 1, -1.2 );
setRotateKey( spep_4 -3 + 48, 1, -0.9 );
setRotateKey( spep_4 -3 + 50, 1, -0.7 );
setRotateKey( spep_4 -3 + 52, 1, -0.4 );
setRotateKey( spep_4 -3 + 54, 1, -0.2 );
setRotateKey( spep_4 -3 + 56, 1, 0.1 );
setRotateKey( spep_4 -3 + 58, 1, 0.3 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_4 + 0, 921, 56, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, ryusen3, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, ryusen3, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 1, 1 );
setEffScaleKey( spep_4 + 56, ryusen3, 1, 1 );

setEffRotateKey( spep_4 + 0, ryusen3, 0 );
setEffRotateKey( spep_4 + 56, ryusen3, 0 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 56, ryusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56, 0, 0, 0, 0, 200 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 50, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 10, 1021 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;

--------------------------------------
--ギャン
--------------------------------------
-- ** -エフェクト等 ** --
gyan = entryEffectLife(  spep_5,  190003,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_5,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_5 + 60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_5,  gyan,  255);
setEffAlphaKey(  spep_5 + 60,  gyan,  255);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 306.8 );    -- ギャン
setEffMoveKey( spep_5 + 0, ctgyan, 0, 306.8 , 0 );
setEffMoveKey( spep_5 + 60, ctgyan, 0, 306.8 , 0 );

setEffScaleKey( spep_5 + 0, ctgyan, 2.2, 2.2 );
setEffScaleKey( spep_5 + 10, ctgyan, 4.0, 4.0 );
setEffScaleKey( spep_5 + 60, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_5 + 0, ctgyan, -5 );
setEffRotateKey( spep_5 + 60, ctgyan, -5 );

setEffAlphaKey( spep_5 , ctgyan, 255);
setEffAlphaKey( spep_5 + 60, ctgyan, 255);

entryFade( spep_5 + 20, 40, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_5 + 3, 1023 );
stopSe( spep_5 + 10, se_1022, 0 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;

------------------------------------------------------
-- ガッ
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
shuchusen4 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen4, 0 );
setEffRotateKey( spep_6 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen5, 0 );
setEffRotateKey( spep_6 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen5, 255 );

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

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
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
playSe( spep_6 + 0, 1025 );
playSe( spep_6 + 15, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え～前ダッシュ
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --構え～前ダッシュ(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, kamae, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, kamae, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 86, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 86, kamae, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 34, 906, 54, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 34, shuchusen1, 54, 20 );

setEffMoveKey( spep_0 -3 + 34, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 88, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 -3 + 34, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 -3 + 88, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 -3 + 34, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 88, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 34, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 36, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 88, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86, 0, 0, 0, 0, 200 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 80, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 1042 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
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

-- ** 音 ** --
playSe( spep_0 + 36, 08 );
se_1116 = playSe( spep_0 + 36, 1116 );
playSe( spep_0 + 68, 1072 );
stopSe( spep_0 + 69, se_1116, 23 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;

------------------------------------------------------
-- 構え～前ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
slash_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --切りつけ　前面(ef_002)
setEffMoveKey( spep_1 + 0, slash_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66, slash_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66, slash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, slash_f, 0 );
setEffRotateKey( spep_1 + 66, slash_f, 0 );
setEffAlphaKey( spep_1 + 0, slash_f, 255 );
setEffAlphaKey( spep_1 + 66, slash_f, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0, 921, 66, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0, 0 );
setEffMoveKey( spep_1 + 66, ryusen1, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1, 1 );
setEffScaleKey( spep_1 + 66, ryusen1, 1, 1 );

setEffRotateKey( spep_1 + 0, ryusen1, 180 );
setEffRotateKey( spep_1 + 66, ryusen1, 180 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 66, ryusen1, 255 );

slash_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --切りつけ　背面(ef_003)
setEffMoveKey( spep_1 + 0, slash_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66, slash_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66, slash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, slash_b, 0 );
setEffRotateKey( spep_1 + 66, slash_b, 0 );
setEffAlphaKey( spep_1 + 0, slash_b, 255 );
setEffAlphaKey( spep_1 + 66, slash_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 3, 1, 1 );
setDisp( spep_1 -3 + 68, 1, 0 );
changeAnime( spep_1 -3 + 3, 1, 102 );
changeAnime( spep_1 -3 + 42, 1, 107 );

--setMoveKey( spep_1 -3 + 0, 1, 798.4, -277.4 , 0 );
setMoveKey( spep_1 -3 + 3, 1, 743.4, -262 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 688.6, -246.6 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 633.8, -231.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 578.9, -215.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 524.1, -200.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 469.2, -185.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 414.4, -169.8 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 359.5, -154.4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 304.6, -139.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 249.8, -123.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 194.9, -108.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 140, -93 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 135.3, -91.8 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 130.4, -90.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 125.6, -89.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 120.9, -88.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 116.1, -87.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 111.2, -85.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 106.4, -84.7 , 0 );
setMoveKey( spep_1 -3 + 41, 1, 101.7, -83.5 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 60.1, -155 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 138.3, -171.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 127.3, -205.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 463.3, -372.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 487.6, -505.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 644.6, -609.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 770.3, -784.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 894, -729.1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 1004.2, -821.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 1114.3, -914 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 1224.6, -1006.4 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 1334.9, -1098.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 1445.1, -1191.4 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 1555.4, -1283.8 , 0 );

--setScaleKey( spep_1 -3 + 0, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 3, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 4, 1, 2.45, 2.45 );
setScaleKey( spep_1 -3 + 6, 1, 2.38, 2.38 );
setScaleKey( spep_1 -3 + 8, 1, 2.31, 2.3 );
setScaleKey( spep_1 -3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_1 -3 + 12, 1, 2.16, 2.15 );
setScaleKey( spep_1 -3 + 14, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 16, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 18, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 20, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 22, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 24, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 26, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 28, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 30, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 32, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 34, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 36, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 38, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 41, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 42, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 44, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 46, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 48, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 50, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 52, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 56, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 58, 1, 1.36, 1.37 );
setScaleKey( spep_1 -3 + 60, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 62, 1, 1.39, 1.4 );
setScaleKey( spep_1 -3 + 64, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 66, 1, 1.42, 1.43 );
setScaleKey( spep_1 -3 + 68, 1, 1.44, 1.44 );

setRotateKey( spep_1 -3 + 3, 1, 0 );
setRotateKey( spep_1 -3 + 41, 1, 0 );
setRotateKey( spep_1 -3 + 42, 1, -51.9 );
setRotateKey( spep_1 -3 + 68, 1, -51.9 );

-- ** 書き文字エントリー ** --
ctBa = entryEffectLife( spep_1 -3 + 42, 10022, 18, 0x100, -1, 0, 6.6, 202.3 ); --バッ
setEffMoveKey( spep_1 -3 + 42, ctBa, 6.6, 202.3 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctBa, 19.8, 223.2 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctBa, 21.1, 233 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctBa, 29.9, 241.1 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctBa, 21.1, 233 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctBa, 29.9, 241.2 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctBa, 21.1, 233 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctBa, 30, 241.2 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctBa, 21.1, 233 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctBa, 30.1, 241.3 , 0 );

setEffScaleKey( spep_1 -3 + 42, ctBa, 0.48, 0.48 );
setEffScaleKey( spep_1 -3 + 44, ctBa, 0.86, 0.86 );
setEffScaleKey( spep_1 -3 + 46, ctBa, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 48, ctBa, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 50, ctBa, 1.26, 1.26 );
setEffScaleKey( spep_1 -3 + 52, ctBa, 1.26, 1.26 );
setEffScaleKey( spep_1 -3 + 54, ctBa, 1.27, 1.27 );
setEffScaleKey( spep_1 -3 + 58, ctBa, 1.27, 1.27 );
setEffScaleKey( spep_1 -3 + 60, ctBa, 1.28, 1.28 );

setEffRotateKey( spep_1 -3 + 42, ctBa, 0 );
setEffRotateKey( spep_1 -3 + 60, ctBa, 0 );

setEffAlphaKey( spep_1 -3 + 42, ctBa, 255 );
setEffAlphaKey( spep_1 -3 + 60, ctBa, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 66, 0, 0, 0, 0, 200 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 58, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 52, 1032 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 66;

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
playSe( spep_2 + 6, 1035 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 発射
------------------------------------------------------

-- ** エフェクト等 ** --
shot = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --発射(ef_004)
setEffMoveKey( spep_3 + 0, shot, 0, 0, 0 );
setEffMoveKey( spep_3 + 126, shot, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, shot, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, shot, 0 );
setEffRotateKey( spep_3 + 126, shot, 0 );

setEffAlphaKey( spep_3 + 0, shot, 255 );
setEffAlphaKey( spep_3 + 126, shot, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 -3 + 3, 906, 82 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 -3 + 3, shuchusen2, 82 -3, 20 );

setEffMoveKey( spep_3 -3 + 3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 82, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 3, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_3 -3 + 82, shuchusen2, 1.4, 1.4 );

setEffRotateKey( spep_3 -3 + 3, shuchusen2, 180 );
setEffRotateKey( spep_3 -3 + 82, shuchusen2, 180 );

setEffRotateKey( spep_3 -3 + 3, shuchusen2, 0 );
setEffRotateKey( spep_3 -3 + 82, shuchusen2, 0 );

setEffAlphaKey( spep_3 -3 + 3, shuchusen2, 255 );
setEffAlphaKey( spep_3 -3 + 76, shuchusen2, 255 );
setEffAlphaKey( spep_3 -3 + 78, shuchusen2, 170 );
setEffAlphaKey( spep_3 -3 + 80, shuchusen2, 85 );
setEffAlphaKey( spep_3 -3 + 82, shuchusen2, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3 + 12, 190006, 72, 0x100, -1, 0, 0, 520);    --ゴゴゴゴ

setEffMoveKey( spep_3 + 12, ctgogo, 0, 520, 0 );
setEffMoveKey( spep_3 + 84, ctgogo, 0, 520, 0 );

setEffAlphaKey( spep_3 + 12, ctgogo, 0 );
setEffAlphaKey( spep_3 + 13, ctgogo, 255 );
setEffAlphaKey( spep_3 + 14, ctgogo, 255 );
setEffAlphaKey( spep_3 + 76, ctgogo, 255 );
setEffAlphaKey( spep_3 + 78, ctgogo, 255 );
setEffAlphaKey( spep_3 + 80, ctgogo, 191 );
setEffAlphaKey( spep_3 + 82, ctgogo, 112 );
setEffAlphaKey( spep_3 + 84, ctgogo, 64 );

setEffRotateKey( spep_3 + 12, ctgogo, 0);
setEffRotateKey( spep_3 + 84, ctgogo, 0);

setEffScaleKey( spep_3 + 12, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_3 + 72, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_3 + 84, ctgogo, -1.07, 1.07 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_3 -3 + 78, 921, 50, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 -3 + 78, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 128, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 78, ryusen2, 1, 1 );
setEffScaleKey( spep_3 -3 + 128, ryusen2, 1, 1 );

setEffRotateKey( spep_3 -3 + 78, ryusen2, 180 );
setEffRotateKey( spep_3 -3 + 128, ryusen2, 180 );

setEffAlphaKey( spep_3 -3 + 78, ryusen2, 85 );
setEffAlphaKey( spep_3 -3 + 80, ryusen2, 170 );
setEffAlphaKey( spep_3 -3 + 82, ryusen2, 255 );
setEffAlphaKey( spep_3 -3 + 128, ryusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 126, 0, 0, 0, 0, 200 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 120, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1154 = playSe( spep_3 + 0, 1154 );
playSe( spep_3 + 0, 1020 );
setSeVolume( spep_3 + 0, 1020, 126 );
playSe( spep_3 + 11, 1018 );
playSe( spep_3 + 17, 1020 );
setSeVolume( spep_3 + 17, 1020, 126 );
playSe( spep_3 + 37, 1020 );
setSeVolume( spep_3 + 37, 1020, 126 );
stopSe( spep_3 + 48, se_1154, 30 );
playSe( spep_3 + 55, 1020 );
setSeVolume( spep_3 + 55, 1020, 141 );
se_1020 = playSe( spep_3 + 74, 1020 );
setSeVolume( spep_3 + 74, 1020, 158 );
se_1022 = playSe( spep_3 + 84, 1022 );
stopSe( spep_3 + 90, se_1020, 0 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 126;

------------------------------------------------------
--着弾 
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --着弾(ef_005)
setEffMoveKey( spep_4 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, hit, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, hit, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 56, hit, 0 );

setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 56, hit, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 3, 1, 1 );
setDisp( spep_4 -3 + 58, 1, 0 );
changeAnime( spep_4 -3 + 3, 1, 106 );
changeAnime( spep_4 -3 + 42, 1, 108 );

--setMoveKey( spep_4 -3 + 0, 1, 289.7, 53.7 , 0 );
setMoveKey( spep_4 -3 + 3, 1, 283, 52.6 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 276.3, 51.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 269.5, 50.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 262.9, 48.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 256.1, 47.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 249.3, 46.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 242.6, 45.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 235.9, 44.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 229.2, 43.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 222.4, 41.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 215.7, 40.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 209, 39.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 202.3, 38.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 195.5, 37.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 188.8, 36 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 182.1, 34.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 175.3, 33.6 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 168.7, 32.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 161.9, 31.3 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 155.2, 30.1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 158.4, 29.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 161.7, 29.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 165, 29.4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 168.3, 29.1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 170.9, 29.3 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 173.5, 29.4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 176.2, 29.6 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 178.9, 29.8 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 181.5, 29.9 , 0 );

--setScaleKey( spep_4 -3 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 3, 1, 0.63, 0.63 );
setScaleKey( spep_4 -3 + 4, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 6, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 10, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 12, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 14, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 16, 1, 0.83, 0.82 );
setScaleKey( spep_4 -3 + 18, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 22, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 24, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_4 -3 + 28, 1, 0.99, 0.99 );
setScaleKey( spep_4 -3 + 30, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 32, 1, 1.05, 1.05 );
setScaleKey( spep_4 -3 + 34, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 36, 1, 1.11, 1.11 );
setScaleKey( spep_4 -3 + 38, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 41, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 42, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 44, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 46, 1, 1.21, 1.21 );
setScaleKey( spep_4 -3 + 48, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 50, 1, 1.21, 1.21 );
setScaleKey( spep_4 -3 + 52, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 54, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 56, 1, 1.14, 1.13 );
setScaleKey( spep_4 -3 + 58, 1, 1.11, 1.11 );

--setRotateKey( spep_4 -3 + 0, 1, -28.6 );
setRotateKey( spep_4 -3 + 3, 1, -28.3 );
setRotateKey( spep_4 -3 + 4, 1, -28 );
setRotateKey( spep_4 -3 + 6, 1, -27.8 );
setRotateKey( spep_4 -3 + 8, 1, -27.5 );
setRotateKey( spep_4 -3 + 10, 1, -27.3 );
setRotateKey( spep_4 -3 + 12, 1, -27 );
setRotateKey( spep_4 -3 + 14, 1, -26.8 );
setRotateKey( spep_4 -3 + 16, 1, -26.5 );
setRotateKey( spep_4 -3 + 18, 1, -26.2 );
setRotateKey( spep_4 -3 + 20, 1, -26 );
setRotateKey( spep_4 -3 + 22, 1, -25.7 );
setRotateKey( spep_4 -3 + 24, 1, -25.5 );
setRotateKey( spep_4 -3 + 26, 1, -25.2 );
setRotateKey( spep_4 -3 + 28, 1, -25 );
setRotateKey( spep_4 -3 + 30, 1, -24.7 );
setRotateKey( spep_4 -3 + 32, 1, -24.4 );
setRotateKey( spep_4 -3 + 34, 1, -24.2 );
setRotateKey( spep_4 -3 + 36, 1, -23.9 );
setRotateKey( spep_4 -3 + 38, 1, -23.7 );
setRotateKey( spep_4 -3 + 41, 1, -23.4 );
setRotateKey( spep_4 -3 + 42, 1, -1.7 );
setRotateKey( spep_4 -3 + 44, 1, -1.5 );
setRotateKey( spep_4 -3 + 46, 1, -1.2 );
setRotateKey( spep_4 -3 + 48, 1, -0.9 );
setRotateKey( spep_4 -3 + 50, 1, -0.7 );
setRotateKey( spep_4 -3 + 52, 1, -0.4 );
setRotateKey( spep_4 -3 + 54, 1, -0.2 );
setRotateKey( spep_4 -3 + 56, 1, 0.1 );
setRotateKey( spep_4 -3 + 58, 1, 0.3 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_4 + 0, 921, 56, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, ryusen3, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, ryusen3, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 1, 1 );
setEffScaleKey( spep_4 + 56, ryusen3, 1, 1 );

setEffRotateKey( spep_4 + 0, ryusen3, 0 );
setEffRotateKey( spep_4 + 56, ryusen3, 0 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 56, ryusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56, 0, 0, 0, 0, 200 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 50, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 10, 1021 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;

--------------------------------------
--ギャン
--------------------------------------
-- ** -エフェクト等 ** --
gyan = entryEffectLife(  spep_5,  190003,  60,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_5,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_5 + 60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_5,  gyan,  255);
setEffAlphaKey(  spep_5 + 60,  gyan,  255);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 306.8 );    -- ギャン
setEffMoveKey( spep_5 + 0, ctgyan, 0, 306.8 , 0 );
setEffMoveKey( spep_5 + 60, ctgyan, 0, 306.8 , 0 );

setEffScaleKey( spep_5 + 0, ctgyan, 2.2, 2.2 );
setEffScaleKey( spep_5 + 10, ctgyan, 4.0, 4.0 );
setEffScaleKey( spep_5 + 60, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_5 + 0, ctgyan, -5 );
setEffRotateKey( spep_5 + 60, ctgyan, -5 );

setEffAlphaKey( spep_5 , ctgyan, 255);
setEffAlphaKey( spep_5 + 60, ctgyan, 255);

entryFade( spep_5 + 20, 40, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_5 + 3, 1023 );
stopSe( spep_5 + 10, se_1022, 0 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;

------------------------------------------------------
-- ガッ
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
shuchusen4 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen4, 0 );
setEffRotateKey( spep_6 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen5, 0 );
setEffRotateKey( spep_6 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen5, 255 );

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

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
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
playSe( spep_6 + 0, 1025 );
playSe( spep_6 + 15, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 100 );
end
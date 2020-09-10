--超サイヤ人2ベジータ_ファイナルバーストキャノン

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
SP_01 = 153194;  --溜め
SP_02 = 153195;  --パンチ〜追っかけ　手前
SP_03 = 153196;  --パンチ〜追っかけ　奥
SP_04 = 153197;  --構え
SP_05 = 153198;  --発射　手前
SP_06 = 153199;  --発射　奥
SP_07 = 153200;  --爆発

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
-- 気溜め(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 76, 0, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 76, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 76, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 76, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 76, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 76, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_0 + 0,  10012, 72, 0x100, -1, 0, 68.4, 251.6 );  --ズオッ
setEffShake( spep_0 + 6, ctzuo, 58, 25 );

setEffMoveKey( spep_0 + 0, ctzuo, 68.4, 251.6 , 0 );
setEffMoveKey( spep_0 + 2, ctzuo, 86.3, 270.7 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo, 95, 299 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo, 119.3, 311.6 , 0 );
setEffMoveKey( spep_0 + 64, ctzuo, 119.3, 311.6 , 0 );
setEffMoveKey( spep_0 + 66, ctzuo, 130.3, 320.3 , 0 );
setEffMoveKey( spep_0 + 68, ctzuo, 122.5, 347.7 , 0 );
setEffMoveKey( spep_0 + 70, ctzuo, 152.4, 337.7 , 0 );
setEffMoveKey( spep_0 + 72, ctzuo, 163.3, 346.5 , 0 );

setEffScaleKey( spep_0 + 0, ctzuo, 0.23, 0.23 );
setEffScaleKey( spep_0 + 2, ctzuo, 0.78, 0.78 );
setEffScaleKey( spep_0 + 4, ctzuo, 1.33, 1.33 );
setEffScaleKey( spep_0 + 6, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_0 + 64, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_0 + 66, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_0 + 68, ctzuo, 3.21, 3.21 );
setEffScaleKey( spep_0 + 70, ctzuo, 3.86, 3.86 );
setEffScaleKey( spep_0 + 72, ctzuo, 4.5, 4.5 );

setEffRotateKey( spep_0 + 0, ctzuo, 27.2 );
setEffRotateKey( spep_0 + 72, ctzuo, 27.2 );

setEffAlphaKey( spep_0 + 0, ctzuo, 255 );
setEffAlphaKey( spep_0 + 64, ctzuo, 255 );
setEffAlphaKey( spep_0 + 66, ctzuo, 191 );
setEffAlphaKey( spep_0 + 68, ctzuo, 128 );
setEffAlphaKey( spep_0 + 70, ctzuo, 64 );
setEffAlphaKey( spep_0 + 72, ctzuo, 0 );

-- ** 音 ** --
playSe( spep_0 + 2, SE_04 );  --ズオッ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 70, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- パンチ〜追っかけ(228F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_1 + 0, SP_02, 228, 0x100, -1, 0, 0, 0 );  --パンチ　手前(ef_002)
setEffMoveKey( spep_1 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_f, 0 );
setEffRotateKey( spep_1 + 228, punch_f, 0 );
setEffAlphaKey( spep_1 + 0, punch_f, 255 );
setEffAlphaKey( spep_1 + 228, punch_f, 255 );

punch_b = entryEffectLife( spep_1 + 0, SP_03, 228, 0x80, -1, 0, 0, 0 );  --パンチ　奥(ef_003)
setEffMoveKey( spep_1 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_b, 0 );
setEffRotateKey( spep_1 + 228, punch_b, 0 );
setEffAlphaKey( spep_1 + 0, punch_b, 255 );
setEffAlphaKey( spep_1 + 228, punch_b, 255 );

a = 3;
-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0,  914, 74 -a, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 74 -a, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.2, 1.2 );
setEffScaleKey( spep_1 + 74 -a, ryusen1, 1.2, 1.2 );

setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 74 -a, ryusen1, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 68 -a, ryusen1, 255 );
setEffAlphaKey( spep_1 + 74 -a, ryusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 228, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE1 = playSe( spep_1 + 0, 9 );  --迫る音

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 14; --エンドフェイズのフレーム数を置き換える

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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 68 -a,  906, 28, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 68 -a, shuchusen2, 28, 25 );

setEffMoveKey( spep_1 + 68 -a, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96 -a, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 68 -a, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 96 -a, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 68 -a, shuchusen2, 0 );
setEffRotateKey( spep_1 + 96 -a, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 68 -a, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90 -a, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 96 -a, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 + 68 -a,  10020, 26, 0x100, -1, 0, -56.6, 316.5 );  --バキッ
setEffMoveKey( spep_1 + 68 -a, ctbaki, -56.6, 316.5 , 0 );
setEffMoveKey( spep_1 + 70 -a, ctbaki, -74.8, 332.9 , 0 );
setEffMoveKey( spep_1 + 72 -a, ctbaki, -56.6, 316.5 , 0 );
setEffMoveKey( spep_1 + 74 -a, ctbaki, -56.6, 316.4 , 0 );
setEffMoveKey( spep_1 + 76 -a, ctbaki, -68.6, 327.3 , 0 );
setEffMoveKey( spep_1 + 78 -a, ctbaki, -56.5, 316.4 , 0 );
setEffMoveKey( spep_1 + 80 -a, ctbaki, -68.1, 327 , 0 );
setEffMoveKey( spep_1 + 82 -a, ctbaki, -56.5, 316.4 , 0 );
setEffMoveKey( spep_1 + 84 -a, ctbaki, -67.7, 326.6 , 0 );
setEffMoveKey( spep_1 + 86 -a, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 + 88 -a, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 + 90 -a, ctbaki, -67.3, 326.4 , 0 );
setEffMoveKey( spep_1 + 92 -a, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 + 94 -a, ctbaki, -56.5, 316.5 , 0 );

setEffScaleKey( spep_1 + 68 -a, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 + 70 -a, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 + 72 -a, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1 + 74 -a, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 + 76 -a, ctbaki, 1.91, 1.91 );
setEffScaleKey( spep_1 + 78 -a, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_1 + 80 -a, ctbaki, 1.85, 1.85 );
setEffScaleKey( spep_1 + 82 -a, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_1 + 84 -a, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_1 + 86 -a, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_1 + 88 -a, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 + 90 -a, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 + 92 -a, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 + 94 -a, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 + 68 -a, ctbaki, -2.7 );
setEffRotateKey( spep_1 + 94 -a, ctbaki, -2.7 );

setEffAlphaKey( spep_1 + 68 -a, ctbaki, 255 );
setEffAlphaKey( spep_1 + 88 -a, ctbaki, 255 );
setEffAlphaKey( spep_1 + 90 -a, ctbaki, 174 );
setEffAlphaKey( spep_1 + 92 -a, ctbaki, 94 );
setEffAlphaKey( spep_1 + 94 -a, ctbaki, 13 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 36, 1, 1 );
setDisp( spep_1 + 228, 1, 0 );
changeAnime( spep_1 + 36, 1, 104 );  --ガード
changeAnime( spep_1 + 68 -a, 1, 108 );  --くの字
changeAnime( spep_1 + 96 -a, 1, 105 );  --吹っ飛び奥

setMoveKey( spep_1 + 36, 1, 916.8, 37.9 , 0 );
setMoveKey( spep_1 + 37, 1, 867.3, 37.5 , 0 );
setMoveKey( spep_1 + 40 -a, 1, 815.9, 37.1 , 0 );
setMoveKey( spep_1 + 42 -a, 1, 762.8, 36.7 , 0 );
setMoveKey( spep_1 + 44 -a, 1, 707.9, 36.3 , 0 );
setMoveKey( spep_1 + 46 -a, 1, 651.5, 35.9 , 0 );
setMoveKey( spep_1 + 48 -a, 1, 593.5, 35.5 , 0 );
setMoveKey( spep_1 + 50 -a, 1, 534.1, 35.1 , 0 );
setMoveKey( spep_1 + 52 -a, 1, 473.3, 34.7 , 0 );
setMoveKey( spep_1 + 54 -a, 1, 411.3, 34.3 , 0 );
setMoveKey( spep_1 + 56 -a, 1, 348.1, 33.9 , 0 );
setMoveKey( spep_1 + 58 -a, 1, 283.9, 33.5 , 0 );
setMoveKey( spep_1 + 60 -a, 1, 218.7, 33.1 , 0 );
setMoveKey( spep_1 + 62 -a, 1, 152.6, 32.7 , 0 );
setMoveKey( spep_1 + 64 -a, 1, 85.6, 32.3 , 0 );
setMoveKey( spep_1 + 66 -a, 1, 18, 31.9 , 0 );
setMoveKey( spep_1 + 67 -a, 1, 18, 31.9 , 0 );
setMoveKey( spep_1 + 68 -a, 1, 128.3, 69.2 , 0 );  --くの字
setMoveKey( spep_1 + 70 -a, 1, 127.3, 81.4 , 0 );
setMoveKey( spep_1 + 72 -a, 1, 126, 90.3 , 0 );
setMoveKey( spep_1 + 74 -a, 1, 114.2, 90.5 , 0 );
setMoveKey( spep_1 + 76 -a, 1, 116.5, 93.6 , 0 );
setMoveKey( spep_1 + 78 -a, 1, 117, 88.6 , 0 );
setMoveKey( spep_1 + 80 -a, 1, 120.6, 99.6 , 0 );
setMoveKey( spep_1 + 82 -a, 1, 119.1, 100.7 , 0 );
setMoveKey( spep_1 + 84 -a, 1, 123.8, 104.9 , 0 );
setMoveKey( spep_1 + 86 -a, 1, 123.5, 101 , 0 );
setMoveKey( spep_1 + 88 -a, 1, 126.1, 109.6 , 0 );
setMoveKey( spep_1 + 90 -a, 1, 123.7, 110 , 0 );
setMoveKey( spep_1 + 92 -a, 1, 127.3, 113.3 , 0 );
setMoveKey( spep_1 + 94 -a, 1, 121, 113.1 , 0 );
setMoveKey( spep_1 + 95 -a, 1, 121, 113.1 , 0 );
setMoveKey( spep_1 + 96 -a, 1, 154.8, 131.3 , 0 );  --吹っ飛び奥
setMoveKey( spep_1 + 98 -a, 1, 156.6, 141.9 , 0 );
setMoveKey( spep_1 + 100 -a, 1, 183.7, 185.1 , 0 );
setMoveKey( spep_1 + 102 -a, 1, 184.1, 198.2 , 0 );
setMoveKey( spep_1 + 104 -a, 1, 188.8, 209.6 , 0 );
setMoveKey( spep_1 + 106 -a, 1, 186.8, 209.8 , 0 );
setMoveKey( spep_1 + 108 -a, 1, 183.9, 209.6 , 0 );
setMoveKey( spep_1 + 110 -a, 1, 180.8, 206.6 , 0 );
setMoveKey( spep_1 + 112 -a, 1, 193.9, 220.1 , 0 );
setMoveKey( spep_1 + 114 -a, 1, 202.9, 227.9 , 0 );
setMoveKey( spep_1 + 116 -a, 1, 216.1, 243.1 , 0 );
setMoveKey( spep_1 + 118 -a, 1, 225.3, 252.6 , 0 );
setMoveKey( spep_1 + 120 -a, 1, 241.8, 269.5 , 0 );
setMoveKey( spep_1 + 122 -a, 1, 254.3, 282.4 , 0 );
setMoveKey( spep_1 + 124 -a, 1, 270.7, 299.3 , 0 );
setMoveKey( spep_1 + 126 -a, 1, 286.5, 315.6 , 0 );
setMoveKey( spep_1 + 128 -a, 1, 303.1, 332.6 , 0 );
setMoveKey( spep_1 + 130 -a, 1, 320.6, 350.5 , 0 );
setMoveKey( spep_1 + 132 -a, 1, 338.8, 369.3 , 0 );
setMoveKey( spep_1 + 134 -a, 1, 358, 389 , 0 );
setMoveKey( spep_1 + 136 -a, 1, 361.9, 392.9 , 0 );
setMoveKey( spep_1 + 138 -a, 1, 365.8, 396.8 , 0 );
setMoveKey( spep_1 + 140 -a, 1, 363.2, 394.3 , 0 );
setMoveKey( spep_1 + 142 -a, 1, 373.5, 404.7 , 0 );
setMoveKey( spep_1 + 144 -a, 1, 374.2, 405.4 , 0 );
setMoveKey( spep_1 + 146 -a, 1, 381.2, 412.5 , 0 );
setMoveKey( spep_1 + 148 -a, 1, 378.7, 413.3 , 0 );
setMoveKey( spep_1 + 150 -a, 1, 388.9, 420.3 , 0 );
setMoveKey( spep_1 + 152 -a, 1, 389.7, 417.9 , 0 );
setMoveKey( spep_1 + 154 -a, 1, 396.8, 428.1 , 0 );
setMoveKey( spep_1 + 156 -a, 1, 397.4, 428.9 , 0 );
setMoveKey( spep_1 + 158 -a, 1, 404.5, 435.9 , 0 );
setMoveKey( spep_1 + 160 -a, 1, 405.1, 436.7 , 0 );
setMoveKey( spep_1 + 162 -a, 1, 412.2, 443.7 , 0 );
setMoveKey( spep_1 + 164 -a, 1, 412.8, 444.4 , 0 );
setMoveKey( spep_1 + 166 -a, 1, 419.9, 451.4 , 0 );
setMoveKey( spep_1 + 168 -a, 1, 396, 422 , 0 );
setMoveKey( spep_1 + 170 -a, 1, 371.8, 390.1 , 0 );
setMoveKey( spep_1 + 172 -a, 1, 334, 339.8 , 0 );
setMoveKey( spep_1 + 174 -a, 1, 295.8, 293.5 , 0 );
setMoveKey( spep_1 + 176 -a, 1, 247.3, 232.2 , 0 );
setMoveKey( spep_1 + 178 -a, 1, 246, 232.2 , 0 );
setMoveKey( spep_1 + 180 -a, 1, 244.7, 232.2 , 0 );
setMoveKey( spep_1 + 182 -a, 1, 243.4, 232.2 , 0 );
setMoveKey( spep_1 + 184 -a, 1, 242, 232.2 , 0 );
setMoveKey( spep_1 + 186 -a, 1, 240.6, 232.2 , 0 );
setMoveKey( spep_1 + 188 -a, 1, 239.3, 232.2 , 0 );
setMoveKey( spep_1 + 190 -a, 1, 237.9, 232.3 , 0 );
setMoveKey( spep_1 + 192 -a, 1, 236.5, 232.3 , 0 );
setMoveKey( spep_1 + 194 -a, 1, 235.2, 232.2 , 0 );
setMoveKey( spep_1 + 196 -a, 1, 233.8, 232.2 , 0 );
setMoveKey( spep_1 + 198 -a, 1, 232.4, 232.2 , 0 );
setMoveKey( spep_1 + 200 -a, 1, 231.1, 232.2 , 0 );
setMoveKey( spep_1 + 202 -a, 1, 229.7, 232.1 , 0 );
setMoveKey( spep_1 + 204 -a, 1, 228.3, 232.1 , 0 );
setMoveKey( spep_1 + 206 -a, 1, 227, 232.1 , 0 );
setMoveKey( spep_1 + 208 -a, 1, 225.6, 232.1 , 0 );
setMoveKey( spep_1 + 210 -a, 1, 224.2, 232 , 0 );
setMoveKey( spep_1 + 212 -a, 1, 222.8, 232 , 0 );
setMoveKey( spep_1 + 214 -a, 1, 221.5, 231.9 , 0 );
setMoveKey( spep_1 + 216 -a, 1, 220.1, 231.9 , 0 );
setMoveKey( spep_1 + 218 -a, 1, 218.7, 231.9 , 0 );
setMoveKey( spep_1 + 220 -a, 1, 217.2, 231.9 , 0 );
setMoveKey( spep_1 + 222 -a, 1, 215.8, 231.8 , 0 );
setMoveKey( spep_1 + 224 -a, 1, 214.4, 231.8 , 0 );
setMoveKey( spep_1 + 226 -a, 1, 213.1, 231.7 , 0 );
setMoveKey( spep_1 + 228, 1, 211.7, 231.6 , 0 );

setScaleKey( spep_1 + 36, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 37, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 40 -a, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 42 -a, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 44 -a, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 46 -a, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 48 -a, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 50 -a, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 52 -a, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 54 -a, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 56 -a, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 58 -a, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 60 -a, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 62 -a, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 64 -a, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 66 -a, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 67 -a, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 68 -a, 1, 2.66, 2.66 );  --くの字
setScaleKey( spep_1 + 70 -a, 1, 2.25, 2.25 );
setScaleKey( spep_1 + 72 -a, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 74 -a, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 76 -a, 1, 1.71, 1.71 );
setScaleKey( spep_1 + 78 -a, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 80 -a, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 82 -a, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 84 -a, 1, 1.61, 1.61 );
setScaleKey( spep_1 + 86 -a, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 88 -a, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 90 -a, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 92 -a, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 94 -a, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 95 -a, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 96 -a, 1, 1.05, 1.05 );  --吹っ飛び奥
setScaleKey( spep_1 + 98 -a, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 100 -a, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 102 -a, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 104 -a, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 106 -a, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 108 -a, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 110 -a, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 112 -a, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 114 -a, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 116 -a, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 118 -a, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 120 -a, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 124 -a, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 126 -a, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 128 -a, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 130 -a, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 136 -a, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 138 -a, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 140 -a, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 142 -a, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 144 -a, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 146 -a, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 150 -a, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 152 -a, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 154 -a, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 156 -a, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 158 -a, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 160 -a, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 164 -a, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 166 -a, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 168 -a, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 170 -a, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 172 -a, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 174 -a, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 176 -a, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 178 -a, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 182 -a, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 184 -a, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 190 -a, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 192 -a, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 194 -a, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 198 -a, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 200 -a, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 208 -a, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 210 -a, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 224 -a, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 226 -a, 1, 0.13, 0.13 );
setScaleKey( spep_1 + 228, 1, 0.13, 0.13 );

setRotateKey( spep_1 + 36, 1, 0 );
setRotateKey( spep_1 + 67 -a, 1, 0 );
setRotateKey( spep_1 + 68 -a, 1, -1.2 );  --くの字
setRotateKey( spep_1 + 70 -a, 1, -10.9 );
setRotateKey( spep_1 + 72 -a, 1, -20.6 );
setRotateKey( spep_1 + 74 -a, 1, -20.9 );
setRotateKey( spep_1 + 76 -a, 1, -21.3 );
setRotateKey( spep_1 + 78 -a, 1, -21.6 );
setRotateKey( spep_1 + 80 -a, 1, -21.9 );
setRotateKey( spep_1 + 82 -a, 1, -22.2 );
setRotateKey( spep_1 + 84 -a, 1, -22.6 );
setRotateKey( spep_1 + 86 -a, 1, -22.9 );
setRotateKey( spep_1 + 88 -a, 1, -23.2 );
setRotateKey( spep_1 + 90 -a, 1, -23.5 );
setRotateKey( spep_1 + 92 -a, 1, -23.9 );
setRotateKey( spep_1 + 94 -a, 1, -24.2 );
setRotateKey( spep_1 + 95 -a, 1, -24.2 );
setRotateKey( spep_1 + 96 -a, 1, 17.2 );  --吹っ飛び奥
setRotateKey( spep_1 + 98 -a, 1, 17.1 );
setRotateKey( spep_1 + 164 -a, 1, 17.1 );
setRotateKey( spep_1 + 166 -a, 1, 17.2 );
setRotateKey( spep_1 + 168 -a, 1, 17.3 );
setRotateKey( spep_1 + 170 -a, 1, 17.5 );
setRotateKey( spep_1 + 172 -a, 1, 17.7 );
setRotateKey( spep_1 + 174 -a, 1, 17.9 );
setRotateKey( spep_1 + 176 -a, 1, 18.2 );
setRotateKey( spep_1 + 178 -a, 1, 18.3 );
setRotateKey( spep_1 + 180 -a, 1, 18.3 );
setRotateKey( spep_1 + 182 -a, 1, 18.4 );
setRotateKey( spep_1 + 184 -a, 1, 18.5 );
setRotateKey( spep_1 + 186 -a, 1, 18.6 );
setRotateKey( spep_1 + 188 -a, 1, 18.6 );
setRotateKey( spep_1 + 190 -a, 1, 18.7 );
setRotateKey( spep_1 + 192 -a, 1, 18.8 );
setRotateKey( spep_1 + 194 -a, 1, 18.8 );
setRotateKey( spep_1 + 196 -a, 1, 18.9 );
setRotateKey( spep_1 + 198 -a, 1, 19 );
setRotateKey( spep_1 + 200 -a, 1, 19.1 );
setRotateKey( spep_1 + 202 -a, 1, 19.1 );
setRotateKey( spep_1 + 204 -a, 1, 19.2 );
setRotateKey( spep_1 + 206 -a, 1, 19.3 );
setRotateKey( spep_1 + 208 -a, 1, 19.4 );
setRotateKey( spep_1 + 210 -a, 1, 19.4 );
setRotateKey( spep_1 + 212 -a, 1, 19.5 );
setRotateKey( spep_1 + 214 -a, 1, 19.6 );
setRotateKey( spep_1 + 216 -a, 1, 19.6 );
setRotateKey( spep_1 + 218 -a, 1, 19.7 );
setRotateKey( spep_1 + 220 -a, 1, 19.8 );
setRotateKey( spep_1 + 222 -a, 1, 19.9 );
setRotateKey( spep_1 + 224 -a, 1, 19.9 );
setRotateKey( spep_1 + 226 -a, 1, 20 );
setRotateKey( spep_1 + 228, 1, 20.1 );

-- ** ホワイトフェード ** --
entryFade( spep_1 + 68 -a, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_1 + 218, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 68 -a, 1011 );  --バキッ
playSe( spep_1 + 130 -a, 1021 );  --気溜め
playSe( spep_1 + 172 -a, 44 );  --飛ぶ

-- ** 次の準備 ** --
spep_2 = spep_1 + 228;

------------------------------------------------------
-- 構え(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_2 + 0, SP_04, 136, 0x100, -1, 0, 0, 0 );  --構え(ef_004)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, kamae, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 136, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 136, kamae, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 0,  914, 136, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_2 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 3.0, 1.2 );
setEffScaleKey( spep_2 + 136, ryusen2, 3.0, 1.2 );

setEffRotateKey( spep_2 + 0, ryusen2, 40 );
setEffRotateKey( spep_2 + 136, ryusen2, 40 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 136, ryusen2, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 + 20, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 20, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 36,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_2 + 36, ctgogo, 68, 10 );

setEffMoveKey( spep_2 + 36, ctgogo, -8.5, 515.5, 0 );
setEffMoveKey( spep_2 + 104, ctgogo, -8.5, 515.5, 0 );

setEffScaleKey( spep_2 + 36, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 96, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 98, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_2 + 102, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_2 + 104, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_2 + 36, ctgogo, 0 );
setEffRotateKey( spep_2 + 104, ctgogo, 0 );

setEffAlphaKey( spep_2 + 36, ctgogo, 255 );
setEffAlphaKey( spep_2 + 104, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 136, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 126, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 36, SE_04 );  --ゴゴゴ
playSe( spep_2 , 1036 );  --気ダメ音
playSe( spep_2+20 , 1036 );  --気ダメ音
playSe( spep_2+40 , 1036 );  --気ダメ音
playSe( spep_2+60 , 1036 );  --気ダメ音
playSe( spep_2+80 , 1036 );  --気ダメ音
playSe( spep_2+100 , 1036 );  --気ダメ音
playSe( spep_2+120 , 1036 );  --気ダメ音


-- ** 次の準備 ** --
spep_3 = spep_2 + 136;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen_k = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen_k, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen_k, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen_k, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen_k, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen_k, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen_k, 0 );
setEffRotateKey( spep_3 + 90, shuchusen_k, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen_k, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen_k, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 発射(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha_f = entryEffectLife( spep_4 + 0, SP_05, 136, 0x100, -1, 0, 0, 0 );  --発射　手前(ef_005)
setEffMoveKey( spep_4 + 0, hassha_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, hassha_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, hassha_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha_f, 0 );
setEffRotateKey( spep_4 + 136, hassha_f, 0 );
setEffAlphaKey( spep_4 + 0, hassha_f, 255 );
setEffAlphaKey( spep_4 + 136, hassha_f, 255 );

hassha_b = entryEffectLife( spep_4 + 0, SP_06, 136, 0x80, -1, 0, 0, 0 );  --発射　奥(ef_006)
setEffMoveKey( spep_4 + 0, hassha_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, hassha_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, hassha_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha_b, 0 );
setEffRotateKey( spep_4 + 136, hassha_b, 0 );
setEffAlphaKey( spep_4 + 0, hassha_b, 255 );
setEffAlphaKey( spep_4 + 136, hassha_b, 255 );

-- ** 書き文字エントリー ** --
ctzuo2 = entryEffectLife( spep_4 + 2,  10012, 36, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_4 + 6, ctzuo2, 24, 20 );

setEffMoveKey( spep_4 + 2, ctzuo2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4 + 4, ctzuo2, 117.2, 303.7 , 0 );
setEffMoveKey( spep_4 + 6, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo2, 177.9, 344.7 , 0 );
setEffMoveKey( spep_4 + 34, ctzuo2, 174, 368.7 , 0 );
setEffMoveKey( spep_4 + 36, ctzuo2, 226.1, 336.5 , 0 );
setEffMoveKey( spep_4 + 38, ctzuo2, 250.3, 332.4 , 0 );

setEffScaleKey( spep_4 + 2, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_4 + 4, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_4 + 6, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_4 + 30, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_4 + 32, ctzuo2, 3.75, 3.75 );
setEffScaleKey( spep_4 + 34, ctzuo2, 4.78, 4.78 );
setEffScaleKey( spep_4 + 36, ctzuo2, 5.8, 5.8 );
setEffScaleKey( spep_4 + 38, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_4 + 2, ctzuo2, 27.2 );
setEffRotateKey( spep_4 + 38, ctzuo2, 27.2 );

setEffAlphaKey( spep_4 + 2, ctzuo2, 255 );
setEffAlphaKey( spep_4 + 30, ctzuo2, 255 );
setEffAlphaKey( spep_4 + 32, ctzuo2, 191 );
setEffAlphaKey( spep_4 + 34, ctzuo2, 128 );
setEffAlphaKey( spep_4 + 36, ctzuo2, 64 );
setEffAlphaKey( spep_4 + 38, ctzuo2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 60 -a, 1, 1 );
setDisp( spep_4 + 104 -a, 1, 0 );
changeAnime( spep_4 + 2, 1, 106 );  --仰け反り

setMoveKey( spep_4 + 60 -a, 1, 253.5, -161.8 , 0 );
setMoveKey( spep_4 + 62 -a, 1, 251.4, -161.3 , 0 );
setMoveKey( spep_4 + 64 -a, 1, 249.4, -160 , 0 );
setMoveKey( spep_4 + 66 -a, 1, 246.8, -159.4 , 0 );
setMoveKey( spep_4 + 68 -a, 1, 244.5, -158 , 0 );
setMoveKey( spep_4 + 70 -a, 1, 241.1, -157.2 , 0 );
setMoveKey( spep_4 + 72 -a, 1, 238.1, -155.2 , 0 );
setMoveKey( spep_4 + 74 -a, 1, 234.3, -154.5 , 0 );
setMoveKey( spep_4 + 76 -a, 1, 231.1, -152.4 , 0 );
setMoveKey( spep_4 + 78 -a, 1, 226.3, -151.3 , 0 );
setMoveKey( spep_4 + 80 -a, 1, 222.3, -148.4 , 0 );
setMoveKey( spep_4 + 82 -a, 1, 217.2, -147.7 , 0 );
setMoveKey( spep_4 + 84 -a, 1, 213.3, -144.9 , 0 );
setMoveKey( spep_4 + 86 -a, 1, 207, -143.7 , 0 );
setMoveKey( spep_4 + 88 -a, 1, 201.9, -139.8 , 0 );
setMoveKey( spep_4 + 90 -a, 1, 195.7, -139.2 , 0 );
setMoveKey( spep_4 + 92 -a, 1, 191, -135.5 , 0 );
setMoveKey( spep_4 + 94 -a, 1, 178.9, -130.5 , 0 );
setMoveKey( spep_4 + 96 -a, 1, 164.5, -118.8 , 0 );
setMoveKey( spep_4 + 98 -a, 1, 144.4, -110.8 , 0 );
setMoveKey( spep_4 + 100 -a, 1, 120.9, -103.5 , 0 );
setMoveKey( spep_4 + 102 -a, 1, 120.7, -97.3 , 0 );
setMoveKey( spep_4 + 104 -a, 1, 112.1, -95.5 , 0 );

setScaleKey( spep_4 + 60 -a, 1, 0.05, 0.05 );
setScaleKey( spep_4 + 62 -a, 1, 0.05, 0.05 );
setScaleKey( spep_4 + 64 -a, 1, 0.06, 0.06 );
setScaleKey( spep_4 + 66 -a, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 68 -a, 1, 0.08, 0.08 );
setScaleKey( spep_4 + 70 -a, 1, 0.09, 0.09 );
setScaleKey( spep_4 + 72 -a, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 74 -a, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 76 -a, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 78 -a, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 80 -a, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 82 -a, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 84 -a, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 86 -a, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 88 -a, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 90 -a, 1, 0.24, 0.24 );
setScaleKey( spep_4 + 92 -a, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 94 -a, 1, 0.32, 0.32 );
setScaleKey( spep_4 + 96 -a, 1, 0.41, 0.41 );
setScaleKey( spep_4 + 98 -a, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 100 -a, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 104 -a, 1, 0.66, 0.66 );

setRotateKey( spep_4 + 60 -a, 1, 51.9 );
setRotateKey( spep_4 + 62 -a, 1, 51.7 );
setRotateKey( spep_4 + 64 -a, 1, 51.5 );
setRotateKey( spep_4 + 66 -a, 1, 51.3 );
setRotateKey( spep_4 + 68 -a, 1, 51.1 );
setRotateKey( spep_4 + 70 -a, 1, 50.9 );
setRotateKey( spep_4 + 72 -a, 1, 50.6 );
setRotateKey( spep_4 + 74 -a, 1, 50.3 );
setRotateKey( spep_4 + 76 -a, 1, 50 );
setRotateKey( spep_4 + 78 -a, 1, 49.6 );
setRotateKey( spep_4 + 80 -a, 1, 49.3 );
setRotateKey( spep_4 + 82 -a, 1, 48.9 );
setRotateKey( spep_4 + 84 -a, 1, 48.5 );
setRotateKey( spep_4 + 86 -a, 1, 48 );
setRotateKey( spep_4 + 88 -a, 1, 47.6 );
setRotateKey( spep_4 + 90 -a, 1, 47.1 );
setRotateKey( spep_4 + 92 -a, 1, 46.6 );
setRotateKey( spep_4 + 94 -a, 1, 46.2 );
setRotateKey( spep_4 + 96 -a, 1, 45.6 );
setRotateKey( spep_4 + 98 -a, 1, 44.9 );
setRotateKey( spep_4 + 100 -a, 1, 44 );
setRotateKey( spep_4 + 104 -a, 1, 44 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 136, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 100 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_4 + 130, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 2, 1022 );  --発射
playSe( spep_4 + 102 -a, 1023 );  --着弾

-- ** 次の準備 ** --
spep_5 = spep_4 + 136;

------------------------------------------------------
-- ラスト爆発(216F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆発(ef_007)
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 216, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_5 + 216, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 216, bakuhatsu, 0 );
setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 216, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 44,  906, 172, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 44, shuchusen3, 34, 25 );

setEffMoveKey( spep_5 + 44, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 216, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 44, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_5 + 216, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_5 + 44, shuchusen3, 0 );
setEffRotateKey( spep_5 + 216, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 44, shuchusen3, 0 );
setEffAlphaKey( spep_5 + 50, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 216, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, 1019 );  --落ちる音
playSe( spep_5 + 40, 1024 );  --爆発音

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 20, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 46 );
entryFade( spep_5 + 206, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 216 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 76, 0, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 76, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 76, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 76, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 76, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 76, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_0 + 0,  10012, 72, 0x100, -1, 0, 68.4, 251.6 );  --ズオッ
setEffShake( spep_0 + 6, ctzuo, 58, 25 );

setEffMoveKey( spep_0 + 0, ctzuo, 68.4, 251.6 , 0 );
setEffMoveKey( spep_0 + 2, ctzuo, 86.3, 270.7 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo, 95, 299 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo, 119.3, 311.6 , 0 );
setEffMoveKey( spep_0 + 64, ctzuo, 119.3, 311.6 , 0 );
setEffMoveKey( spep_0 + 66, ctzuo, 130.3, 320.3 , 0 );
setEffMoveKey( spep_0 + 68, ctzuo, 122.5, 347.7 , 0 );
setEffMoveKey( spep_0 + 70, ctzuo, 152.4, 337.7 , 0 );
setEffMoveKey( spep_0 + 72, ctzuo, 163.3, 346.5 , 0 );

setEffScaleKey( spep_0 + 0, ctzuo, 0.23, 0.23 );
setEffScaleKey( spep_0 + 2, ctzuo, 0.78, 0.78 );
setEffScaleKey( spep_0 + 4, ctzuo, 1.33, 1.33 );
setEffScaleKey( spep_0 + 6, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_0 + 64, ctzuo, 1.88, 1.88 );
setEffScaleKey( spep_0 + 66, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_0 + 68, ctzuo, 3.21, 3.21 );
setEffScaleKey( spep_0 + 70, ctzuo, 3.86, 3.86 );
setEffScaleKey( spep_0 + 72, ctzuo, 4.5, 4.5 );

setEffRotateKey( spep_0 + 0, ctzuo, 27.2 );
setEffRotateKey( spep_0 + 72, ctzuo, 27.2 );

setEffAlphaKey( spep_0 + 0, ctzuo, 255 );
setEffAlphaKey( spep_0 + 64, ctzuo, 255 );
setEffAlphaKey( spep_0 + 66, ctzuo, 191 );
setEffAlphaKey( spep_0 + 68, ctzuo, 128 );
setEffAlphaKey( spep_0 + 70, ctzuo, 64 );
setEffAlphaKey( spep_0 + 72, ctzuo, 0 );

-- ** 音 ** --
playSe( spep_0 + 2, SE_04 );  --ズオッ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 70, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- パンチ〜追っかけ(228F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_1 + 0, SP_02, 228, 0x100, -1, 0, 0, 0 );  --パンチ　手前(ef_002)
setEffMoveKey( spep_1 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_f, 0 );
setEffRotateKey( spep_1 + 228, punch_f, 0 );
setEffAlphaKey( spep_1 + 0, punch_f, 255 );
setEffAlphaKey( spep_1 + 228, punch_f, 255 );

punch_b = entryEffectLife( spep_1 + 0, SP_03, 228, 0x80, -1, 0, 0, 0 );  --パンチ　奥(ef_003)
setEffMoveKey( spep_1 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_b, 0 );
setEffRotateKey( spep_1 + 228, punch_b, 0 );
setEffAlphaKey( spep_1 + 0, punch_b, 255 );
setEffAlphaKey( spep_1 + 228, punch_b, 255 );

a = 3;
-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0,  914, 74 -a, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 74 -a, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.2, 1.2 );
setEffScaleKey( spep_1 + 74 -a, ryusen1, 1.2, 1.2 );

setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 74 -a, ryusen1, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 68 -a, ryusen1, 255 );
setEffAlphaKey( spep_1 + 74 -a, ryusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 228, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE1 = playSe( spep_1 + 0, 9 );  --迫る音

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 14; --エンドフェイズのフレーム数を置き換える

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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 68 -a,  906, 28, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 68 -a, shuchusen2, 28, 25 );

setEffMoveKey( spep_1 + 68 -a, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96 -a, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 68 -a, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 96 -a, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 68 -a, shuchusen2, 0 );
setEffRotateKey( spep_1 + 96 -a, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 68 -a, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90 -a, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 96 -a, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 + 68 -a,  10020, 26, 0x100, -1, 0, -56.6, 316.5 );  --バキッ
setEffMoveKey( spep_1 + 68 -a, ctbaki, -56.6, 316.5 , 0 );
setEffMoveKey( spep_1 + 70 -a, ctbaki, -74.8, 332.9 , 0 );
setEffMoveKey( spep_1 + 72 -a, ctbaki, -56.6, 316.5 , 0 );
setEffMoveKey( spep_1 + 74 -a, ctbaki, -56.6, 316.4 , 0 );
setEffMoveKey( spep_1 + 76 -a, ctbaki, -68.6, 327.3 , 0 );
setEffMoveKey( spep_1 + 78 -a, ctbaki, -56.5, 316.4 , 0 );
setEffMoveKey( spep_1 + 80 -a, ctbaki, -68.1, 327 , 0 );
setEffMoveKey( spep_1 + 82 -a, ctbaki, -56.5, 316.4 , 0 );
setEffMoveKey( spep_1 + 84 -a, ctbaki, -67.7, 326.6 , 0 );
setEffMoveKey( spep_1 + 86 -a, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 + 88 -a, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 + 90 -a, ctbaki, -67.3, 326.4 , 0 );
setEffMoveKey( spep_1 + 92 -a, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 + 94 -a, ctbaki, -56.5, 316.5 , 0 );

setEffScaleKey( spep_1 + 68 -a, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 + 70 -a, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 + 72 -a, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1 + 74 -a, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 + 76 -a, ctbaki, 1.91, 1.91 );
setEffScaleKey( spep_1 + 78 -a, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_1 + 80 -a, ctbaki, 1.85, 1.85 );
setEffScaleKey( spep_1 + 82 -a, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_1 + 84 -a, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_1 + 86 -a, ctbaki, 1.76, 1.76 );
setEffScaleKey( spep_1 + 88 -a, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 + 90 -a, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 + 92 -a, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 + 94 -a, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 + 68 -a, ctbaki, -2.7 );
setEffRotateKey( spep_1 + 94 -a, ctbaki, -2.7 );

setEffAlphaKey( spep_1 + 68 -a, ctbaki, 255 );
setEffAlphaKey( spep_1 + 88 -a, ctbaki, 255 );
setEffAlphaKey( spep_1 + 90 -a, ctbaki, 174 );
setEffAlphaKey( spep_1 + 92 -a, ctbaki, 94 );
setEffAlphaKey( spep_1 + 94 -a, ctbaki, 13 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 36, 1, 1 );
setDisp( spep_1 + 228, 1, 0 );
changeAnime( spep_1 + 36, 1, 104 );  --ガード
changeAnime( spep_1 + 68 -a, 1, 108 );  --くの字
changeAnime( spep_1 + 96 -a, 1, 105 );  --吹っ飛び奥

setMoveKey( spep_1 + 36, 1, 916.8, 37.9 , 0 );
setMoveKey( spep_1 + 37, 1, 867.3, 37.5 , 0 );
setMoveKey( spep_1 + 40 -a, 1, 815.9, 37.1 , 0 );
setMoveKey( spep_1 + 42 -a, 1, 762.8, 36.7 , 0 );
setMoveKey( spep_1 + 44 -a, 1, 707.9, 36.3 , 0 );
setMoveKey( spep_1 + 46 -a, 1, 651.5, 35.9 , 0 );
setMoveKey( spep_1 + 48 -a, 1, 593.5, 35.5 , 0 );
setMoveKey( spep_1 + 50 -a, 1, 534.1, 35.1 , 0 );
setMoveKey( spep_1 + 52 -a, 1, 473.3, 34.7 , 0 );
setMoveKey( spep_1 + 54 -a, 1, 411.3, 34.3 , 0 );
setMoveKey( spep_1 + 56 -a, 1, 348.1, 33.9 , 0 );
setMoveKey( spep_1 + 58 -a, 1, 283.9, 33.5 , 0 );
setMoveKey( spep_1 + 60 -a, 1, 218.7, 33.1 , 0 );
setMoveKey( spep_1 + 62 -a, 1, 152.6, 32.7 , 0 );
setMoveKey( spep_1 + 64 -a, 1, 85.6, 32.3 , 0 );
setMoveKey( spep_1 + 66 -a, 1, 18, 31.9 , 0 );
setMoveKey( spep_1 + 67 -a, 1, 18, 31.9 , 0 );
setMoveKey( spep_1 + 68 -a, 1, 128.3, 69.2 , 0 );  --くの字
setMoveKey( spep_1 + 70 -a, 1, 127.3, 81.4 , 0 );
setMoveKey( spep_1 + 72 -a, 1, 126, 90.3 , 0 );
setMoveKey( spep_1 + 74 -a, 1, 114.2, 90.5 , 0 );
setMoveKey( spep_1 + 76 -a, 1, 116.5, 93.6 , 0 );
setMoveKey( spep_1 + 78 -a, 1, 117, 88.6 , 0 );
setMoveKey( spep_1 + 80 -a, 1, 120.6, 99.6 , 0 );
setMoveKey( spep_1 + 82 -a, 1, 119.1, 100.7 , 0 );
setMoveKey( spep_1 + 84 -a, 1, 123.8, 104.9 , 0 );
setMoveKey( spep_1 + 86 -a, 1, 123.5, 101 , 0 );
setMoveKey( spep_1 + 88 -a, 1, 126.1, 109.6 , 0 );
setMoveKey( spep_1 + 90 -a, 1, 123.7, 110 , 0 );
setMoveKey( spep_1 + 92 -a, 1, 127.3, 113.3 , 0 );
setMoveKey( spep_1 + 94 -a, 1, 121, 113.1 , 0 );
setMoveKey( spep_1 + 95 -a, 1, 121, 113.1 , 0 );
setMoveKey( spep_1 + 96 -a, 1, 154.8, 131.3 , 0 );  --吹っ飛び奥
setMoveKey( spep_1 + 98 -a, 1, 156.6, 141.9 , 0 );
setMoveKey( spep_1 + 100 -a, 1, 183.7, 185.1 , 0 );
setMoveKey( spep_1 + 102 -a, 1, 184.1, 198.2 , 0 );
setMoveKey( spep_1 + 104 -a, 1, 188.8, 209.6 , 0 );
setMoveKey( spep_1 + 106 -a, 1, 186.8, 209.8 , 0 );
setMoveKey( spep_1 + 108 -a, 1, 183.9, 209.6 , 0 );
setMoveKey( spep_1 + 110 -a, 1, 180.8, 206.6 , 0 );
setMoveKey( spep_1 + 112 -a, 1, 193.9, 220.1 , 0 );
setMoveKey( spep_1 + 114 -a, 1, 202.9, 227.9 , 0 );
setMoveKey( spep_1 + 116 -a, 1, 216.1, 243.1 , 0 );
setMoveKey( spep_1 + 118 -a, 1, 225.3, 252.6 , 0 );
setMoveKey( spep_1 + 120 -a, 1, 241.8, 269.5 , 0 );
setMoveKey( spep_1 + 122 -a, 1, 254.3, 282.4 , 0 );
setMoveKey( spep_1 + 124 -a, 1, 270.7, 299.3 , 0 );
setMoveKey( spep_1 + 126 -a, 1, 286.5, 315.6 , 0 );
setMoveKey( spep_1 + 128 -a, 1, 303.1, 332.6 , 0 );
setMoveKey( spep_1 + 130 -a, 1, 320.6, 350.5 , 0 );
setMoveKey( spep_1 + 132 -a, 1, 338.8, 369.3 , 0 );
setMoveKey( spep_1 + 134 -a, 1, 358, 389 , 0 );
setMoveKey( spep_1 + 136 -a, 1, 361.9, 392.9 , 0 );
setMoveKey( spep_1 + 138 -a, 1, 365.8, 396.8 , 0 );
setMoveKey( spep_1 + 140 -a, 1, 363.2, 394.3 , 0 );
setMoveKey( spep_1 + 142 -a, 1, 373.5, 404.7 , 0 );
setMoveKey( spep_1 + 144 -a, 1, 374.2, 405.4 , 0 );
setMoveKey( spep_1 + 146 -a, 1, 381.2, 412.5 , 0 );
setMoveKey( spep_1 + 148 -a, 1, 378.7, 413.3 , 0 );
setMoveKey( spep_1 + 150 -a, 1, 388.9, 420.3 , 0 );
setMoveKey( spep_1 + 152 -a, 1, 389.7, 417.9 , 0 );
setMoveKey( spep_1 + 154 -a, 1, 396.8, 428.1 , 0 );
setMoveKey( spep_1 + 156 -a, 1, 397.4, 428.9 , 0 );
setMoveKey( spep_1 + 158 -a, 1, 404.5, 435.9 , 0 );
setMoveKey( spep_1 + 160 -a, 1, 405.1, 436.7 , 0 );
setMoveKey( spep_1 + 162 -a, 1, 412.2, 443.7 , 0 );
setMoveKey( spep_1 + 164 -a, 1, 412.8, 444.4 , 0 );
setMoveKey( spep_1 + 166 -a, 1, 419.9, 451.4 , 0 );
setMoveKey( spep_1 + 168 -a, 1, 396, 422 , 0 );
setMoveKey( spep_1 + 170 -a, 1, 371.8, 390.1 , 0 );
setMoveKey( spep_1 + 172 -a, 1, 334, 339.8 , 0 );
setMoveKey( spep_1 + 174 -a, 1, 295.8, 293.5 , 0 );
setMoveKey( spep_1 + 176 -a, 1, 247.3, 232.2 , 0 );
setMoveKey( spep_1 + 178 -a, 1, 246, 232.2 , 0 );
setMoveKey( spep_1 + 180 -a, 1, 244.7, 232.2 , 0 );
setMoveKey( spep_1 + 182 -a, 1, 243.4, 232.2 , 0 );
setMoveKey( spep_1 + 184 -a, 1, 242, 232.2 , 0 );
setMoveKey( spep_1 + 186 -a, 1, 240.6, 232.2 , 0 );
setMoveKey( spep_1 + 188 -a, 1, 239.3, 232.2 , 0 );
setMoveKey( spep_1 + 190 -a, 1, 237.9, 232.3 , 0 );
setMoveKey( spep_1 + 192 -a, 1, 236.5, 232.3 , 0 );
setMoveKey( spep_1 + 194 -a, 1, 235.2, 232.2 , 0 );
setMoveKey( spep_1 + 196 -a, 1, 233.8, 232.2 , 0 );
setMoveKey( spep_1 + 198 -a, 1, 232.4, 232.2 , 0 );
setMoveKey( spep_1 + 200 -a, 1, 231.1, 232.2 , 0 );
setMoveKey( spep_1 + 202 -a, 1, 229.7, 232.1 , 0 );
setMoveKey( spep_1 + 204 -a, 1, 228.3, 232.1 , 0 );
setMoveKey( spep_1 + 206 -a, 1, 227, 232.1 , 0 );
setMoveKey( spep_1 + 208 -a, 1, 225.6, 232.1 , 0 );
setMoveKey( spep_1 + 210 -a, 1, 224.2, 232 , 0 );
setMoveKey( spep_1 + 212 -a, 1, 222.8, 232 , 0 );
setMoveKey( spep_1 + 214 -a, 1, 221.5, 231.9 , 0 );
setMoveKey( spep_1 + 216 -a, 1, 220.1, 231.9 , 0 );
setMoveKey( spep_1 + 218 -a, 1, 218.7, 231.9 , 0 );
setMoveKey( spep_1 + 220 -a, 1, 217.2, 231.9 , 0 );
setMoveKey( spep_1 + 222 -a, 1, 215.8, 231.8 , 0 );
setMoveKey( spep_1 + 224 -a, 1, 214.4, 231.8 , 0 );
setMoveKey( spep_1 + 226 -a, 1, 213.1, 231.7 , 0 );
setMoveKey( spep_1 + 228, 1, 211.7, 231.6 , 0 );

setScaleKey( spep_1 + 36, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 37, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 40 -a, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 42 -a, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 44 -a, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 46 -a, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 48 -a, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 50 -a, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 52 -a, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 54 -a, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 56 -a, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 58 -a, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 60 -a, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 62 -a, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 64 -a, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 66 -a, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 67 -a, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 68 -a, 1, 2.66, 2.66 );  --くの字
setScaleKey( spep_1 + 70 -a, 1, 2.25, 2.25 );
setScaleKey( spep_1 + 72 -a, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 74 -a, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 76 -a, 1, 1.71, 1.71 );
setScaleKey( spep_1 + 78 -a, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 80 -a, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 82 -a, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 84 -a, 1, 1.61, 1.61 );
setScaleKey( spep_1 + 86 -a, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 88 -a, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 90 -a, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 92 -a, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 94 -a, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 95 -a, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 96 -a, 1, 1.05, 1.05 );  --吹っ飛び奥
setScaleKey( spep_1 + 98 -a, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 100 -a, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 102 -a, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 104 -a, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 106 -a, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 108 -a, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 110 -a, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 112 -a, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 114 -a, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 116 -a, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 118 -a, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 120 -a, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 124 -a, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 126 -a, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 128 -a, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 130 -a, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 136 -a, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 138 -a, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 140 -a, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 142 -a, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 144 -a, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 146 -a, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 150 -a, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 152 -a, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 154 -a, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 156 -a, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 158 -a, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 160 -a, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 164 -a, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 166 -a, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 168 -a, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 170 -a, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 172 -a, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 174 -a, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 176 -a, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 178 -a, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 182 -a, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 184 -a, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 190 -a, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 192 -a, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 194 -a, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 198 -a, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 200 -a, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 208 -a, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 210 -a, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 224 -a, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 226 -a, 1, 0.13, 0.13 );
setScaleKey( spep_1 + 228, 1, 0.13, 0.13 );

setRotateKey( spep_1 + 36, 1, 0 );
setRotateKey( spep_1 + 67 -a, 1, 0 );
setRotateKey( spep_1 + 68 -a, 1, -1.2 );  --くの字
setRotateKey( spep_1 + 70 -a, 1, -10.9 );
setRotateKey( spep_1 + 72 -a, 1, -20.6 );
setRotateKey( spep_1 + 74 -a, 1, -20.9 );
setRotateKey( spep_1 + 76 -a, 1, -21.3 );
setRotateKey( spep_1 + 78 -a, 1, -21.6 );
setRotateKey( spep_1 + 80 -a, 1, -21.9 );
setRotateKey( spep_1 + 82 -a, 1, -22.2 );
setRotateKey( spep_1 + 84 -a, 1, -22.6 );
setRotateKey( spep_1 + 86 -a, 1, -22.9 );
setRotateKey( spep_1 + 88 -a, 1, -23.2 );
setRotateKey( spep_1 + 90 -a, 1, -23.5 );
setRotateKey( spep_1 + 92 -a, 1, -23.9 );
setRotateKey( spep_1 + 94 -a, 1, -24.2 );
setRotateKey( spep_1 + 95 -a, 1, -24.2 );
setRotateKey( spep_1 + 96 -a, 1, 17.2 );  --吹っ飛び奥
setRotateKey( spep_1 + 98 -a, 1, 17.1 );
setRotateKey( spep_1 + 164 -a, 1, 17.1 );
setRotateKey( spep_1 + 166 -a, 1, 17.2 );
setRotateKey( spep_1 + 168 -a, 1, 17.3 );
setRotateKey( spep_1 + 170 -a, 1, 17.5 );
setRotateKey( spep_1 + 172 -a, 1, 17.7 );
setRotateKey( spep_1 + 174 -a, 1, 17.9 );
setRotateKey( spep_1 + 176 -a, 1, 18.2 );
setRotateKey( spep_1 + 178 -a, 1, 18.3 );
setRotateKey( spep_1 + 180 -a, 1, 18.3 );
setRotateKey( spep_1 + 182 -a, 1, 18.4 );
setRotateKey( spep_1 + 184 -a, 1, 18.5 );
setRotateKey( spep_1 + 186 -a, 1, 18.6 );
setRotateKey( spep_1 + 188 -a, 1, 18.6 );
setRotateKey( spep_1 + 190 -a, 1, 18.7 );
setRotateKey( spep_1 + 192 -a, 1, 18.8 );
setRotateKey( spep_1 + 194 -a, 1, 18.8 );
setRotateKey( spep_1 + 196 -a, 1, 18.9 );
setRotateKey( spep_1 + 198 -a, 1, 19 );
setRotateKey( spep_1 + 200 -a, 1, 19.1 );
setRotateKey( spep_1 + 202 -a, 1, 19.1 );
setRotateKey( spep_1 + 204 -a, 1, 19.2 );
setRotateKey( spep_1 + 206 -a, 1, 19.3 );
setRotateKey( spep_1 + 208 -a, 1, 19.4 );
setRotateKey( spep_1 + 210 -a, 1, 19.4 );
setRotateKey( spep_1 + 212 -a, 1, 19.5 );
setRotateKey( spep_1 + 214 -a, 1, 19.6 );
setRotateKey( spep_1 + 216 -a, 1, 19.6 );
setRotateKey( spep_1 + 218 -a, 1, 19.7 );
setRotateKey( spep_1 + 220 -a, 1, 19.8 );
setRotateKey( spep_1 + 222 -a, 1, 19.9 );
setRotateKey( spep_1 + 224 -a, 1, 19.9 );
setRotateKey( spep_1 + 226 -a, 1, 20 );
setRotateKey( spep_1 + 228, 1, 20.1 );

-- ** ホワイトフェード ** --
entryFade( spep_1 + 68 -a, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_1 + 218, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 68 -a, 1011 );  --バキッ
playSe( spep_1 + 130 -a, 1021 );  --気溜め
playSe( spep_1 + 172 -a, 44 );  --飛ぶ

-- ** 次の準備 ** --
spep_2 = spep_1 + 228;

------------------------------------------------------
-- 構え(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_2 + 0, SP_04, 136, 0x100, -1, 0, 0, 0 );  --構え(ef_004)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, kamae, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 136, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 136, kamae, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 0,  914, 136, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_2 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 3.0, 1.2 );
setEffScaleKey( spep_2 + 136, ryusen2, 3.0, 1.2 );

setEffRotateKey( spep_2 + 0, ryusen2, 40 );
setEffRotateKey( spep_2 + 136, ryusen2, 40 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 136, ryusen2, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 + 20, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 20, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 36,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_2 + 36, ctgogo, 68, 10 );

setEffMoveKey( spep_2 + 36, ctgogo, -8.5, 515.5, 0 );
setEffMoveKey( spep_2 + 104, ctgogo, -8.5, 515.5, 0 );

setEffScaleKey( spep_2 + 36, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 96, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 98, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_2 + 100, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_2 + 102, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_2 + 104, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_2 + 36, ctgogo, 0 );
setEffRotateKey( spep_2 + 104, ctgogo, 0 );

setEffAlphaKey( spep_2 + 36, ctgogo, 255 );
setEffAlphaKey( spep_2 + 104, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 136, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 126, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 36, SE_04 );  --ゴゴゴ
playSe( spep_2 , 1036 );  --気ダメ音
playSe( spep_2+20 , 1036 );  --気ダメ音
playSe( spep_2+40 , 1036 );  --気ダメ音
playSe( spep_2+60 , 1036 );  --気ダメ音
playSe( spep_2+80 , 1036 );  --気ダメ音
playSe( spep_2+100 , 1036 );  --気ダメ音
playSe( spep_2+120 , 1036 );  --気ダメ音


-- ** 次の準備 ** --
spep_3 = spep_2 + 136;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen_k = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen_k, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen_k, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen_k, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen_k, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen_k, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen_k, 0 );
setEffRotateKey( spep_3 + 90, shuchusen_k, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen_k, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen_k, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 発射(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha_f = entryEffectLife( spep_4 + 0, SP_05, 136, 0x100, -1, 0, 0, 0 );  --発射　手前(ef_005)
setEffMoveKey( spep_4 + 0, hassha_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, hassha_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, hassha_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha_f, 0 );
setEffRotateKey( spep_4 + 136, hassha_f, 0 );
setEffAlphaKey( spep_4 + 0, hassha_f, 255 );
setEffAlphaKey( spep_4 + 136, hassha_f, 255 );

hassha_b = entryEffectLife( spep_4 + 0, SP_06, 136, 0x80, -1, 0, 0, 0 );  --発射　奥(ef_006)
setEffMoveKey( spep_4 + 0, hassha_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, hassha_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, hassha_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha_b, 0 );
setEffRotateKey( spep_4 + 136, hassha_b, 0 );
setEffAlphaKey( spep_4 + 0, hassha_b, 255 );
setEffAlphaKey( spep_4 + 136, hassha_b, 255 );

-- ** 書き文字エントリー ** --
ctzuo2 = entryEffectLife( spep_4 + 2,  10012, 36, 0x100, -1, 0, 78.7, 260.5 );  --ズオッ
setEffShake( spep_4 + 6, ctzuo2, 24, 20 );

setEffMoveKey( spep_4 + 2, ctzuo2, 78.7, 260.5 , 0 );
setEffMoveKey( spep_4 + 4, ctzuo2, 117.2, 303.7 , 0 );
setEffMoveKey( spep_4 + 6, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo2, 137.7, 364.8 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo2, 177.9, 344.7 , 0 );
setEffMoveKey( spep_4 + 34, ctzuo2, 174, 368.7 , 0 );
setEffMoveKey( spep_4 + 36, ctzuo2, 226.1, 336.5 , 0 );
setEffMoveKey( spep_4 + 38, ctzuo2, 250.3, 332.4 , 0 );

setEffScaleKey( spep_4 + 2, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_4 + 4, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_4 + 6, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_4 + 30, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_4 + 32, ctzuo2, 3.75, 3.75 );
setEffScaleKey( spep_4 + 34, ctzuo2, 4.78, 4.78 );
setEffScaleKey( spep_4 + 36, ctzuo2, 5.8, 5.8 );
setEffScaleKey( spep_4 + 38, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_4 + 2, ctzuo2, 27.2 );
setEffRotateKey( spep_4 + 38, ctzuo2, 27.2 );

setEffAlphaKey( spep_4 + 2, ctzuo2, 255 );
setEffAlphaKey( spep_4 + 30, ctzuo2, 255 );
setEffAlphaKey( spep_4 + 32, ctzuo2, 191 );
setEffAlphaKey( spep_4 + 34, ctzuo2, 128 );
setEffAlphaKey( spep_4 + 36, ctzuo2, 64 );
setEffAlphaKey( spep_4 + 38, ctzuo2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 60 -a, 1, 1 );
setDisp( spep_4 + 104 -a, 1, 0 );
changeAnime( spep_4 + 2, 1, 106 );  --仰け反り

setMoveKey( spep_4 + 60 -a, 1, 253.5, -161.8 , 0 );
setMoveKey( spep_4 + 62 -a, 1, 251.4, -161.3 , 0 );
setMoveKey( spep_4 + 64 -a, 1, 249.4, -160 , 0 );
setMoveKey( spep_4 + 66 -a, 1, 246.8, -159.4 , 0 );
setMoveKey( spep_4 + 68 -a, 1, 244.5, -158 , 0 );
setMoveKey( spep_4 + 70 -a, 1, 241.1, -157.2 , 0 );
setMoveKey( spep_4 + 72 -a, 1, 238.1, -155.2 , 0 );
setMoveKey( spep_4 + 74 -a, 1, 234.3, -154.5 , 0 );
setMoveKey( spep_4 + 76 -a, 1, 231.1, -152.4 , 0 );
setMoveKey( spep_4 + 78 -a, 1, 226.3, -151.3 , 0 );
setMoveKey( spep_4 + 80 -a, 1, 222.3, -148.4 , 0 );
setMoveKey( spep_4 + 82 -a, 1, 217.2, -147.7 , 0 );
setMoveKey( spep_4 + 84 -a, 1, 213.3, -144.9 , 0 );
setMoveKey( spep_4 + 86 -a, 1, 207, -143.7 , 0 );
setMoveKey( spep_4 + 88 -a, 1, 201.9, -139.8 , 0 );
setMoveKey( spep_4 + 90 -a, 1, 195.7, -139.2 , 0 );
setMoveKey( spep_4 + 92 -a, 1, 191, -135.5 , 0 );
setMoveKey( spep_4 + 94 -a, 1, 178.9, -130.5 , 0 );
setMoveKey( spep_4 + 96 -a, 1, 164.5, -118.8 , 0 );
setMoveKey( spep_4 + 98 -a, 1, 144.4, -110.8 , 0 );
setMoveKey( spep_4 + 100 -a, 1, 120.9, -103.5 , 0 );
setMoveKey( spep_4 + 102 -a, 1, 120.7, -97.3 , 0 );
setMoveKey( spep_4 + 104 -a, 1, 112.1, -95.5 , 0 );

setScaleKey( spep_4 + 60 -a, 1, 0.05, 0.05 );
setScaleKey( spep_4 + 62 -a, 1, 0.05, 0.05 );
setScaleKey( spep_4 + 64 -a, 1, 0.06, 0.06 );
setScaleKey( spep_4 + 66 -a, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 68 -a, 1, 0.08, 0.08 );
setScaleKey( spep_4 + 70 -a, 1, 0.09, 0.09 );
setScaleKey( spep_4 + 72 -a, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 74 -a, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 76 -a, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 78 -a, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 80 -a, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 82 -a, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 84 -a, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 86 -a, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 88 -a, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 90 -a, 1, 0.24, 0.24 );
setScaleKey( spep_4 + 92 -a, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 94 -a, 1, 0.32, 0.32 );
setScaleKey( spep_4 + 96 -a, 1, 0.41, 0.41 );
setScaleKey( spep_4 + 98 -a, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 100 -a, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 104 -a, 1, 0.66, 0.66 );

setRotateKey( spep_4 + 60 -a, 1, 51.9 );
setRotateKey( spep_4 + 62 -a, 1, 51.7 );
setRotateKey( spep_4 + 64 -a, 1, 51.5 );
setRotateKey( spep_4 + 66 -a, 1, 51.3 );
setRotateKey( spep_4 + 68 -a, 1, 51.1 );
setRotateKey( spep_4 + 70 -a, 1, 50.9 );
setRotateKey( spep_4 + 72 -a, 1, 50.6 );
setRotateKey( spep_4 + 74 -a, 1, 50.3 );
setRotateKey( spep_4 + 76 -a, 1, 50 );
setRotateKey( spep_4 + 78 -a, 1, 49.6 );
setRotateKey( spep_4 + 80 -a, 1, 49.3 );
setRotateKey( spep_4 + 82 -a, 1, 48.9 );
setRotateKey( spep_4 + 84 -a, 1, 48.5 );
setRotateKey( spep_4 + 86 -a, 1, 48 );
setRotateKey( spep_4 + 88 -a, 1, 47.6 );
setRotateKey( spep_4 + 90 -a, 1, 47.1 );
setRotateKey( spep_4 + 92 -a, 1, 46.6 );
setRotateKey( spep_4 + 94 -a, 1, 46.2 );
setRotateKey( spep_4 + 96 -a, 1, 45.6 );
setRotateKey( spep_4 + 98 -a, 1, 44.9 );
setRotateKey( spep_4 + 100 -a, 1, 44 );
setRotateKey( spep_4 + 104 -a, 1, 44 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 136, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 100 -a, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade
entryFade( spep_4 + 130, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 2, 1022 );  --発射
playSe( spep_4 + 102 -a, 1023 );  --着弾

-- ** 次の準備 ** --
spep_5 = spep_4 + 136;

------------------------------------------------------
-- ラスト爆発(216F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆発(ef_007)
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 216, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_5 + 216, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 216, bakuhatsu, 0 );
setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 216, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 44,  906, 172, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 44, shuchusen3, 34, 25 );

setEffMoveKey( spep_5 + 44, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 216, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 44, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_5 + 216, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_5 + 44, shuchusen3, 0 );
setEffRotateKey( spep_5 + 216, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 44, shuchusen3, 0 );
setEffAlphaKey( spep_5 + 50, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 216, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, 1019 );  --落ちる音
playSe( spep_5 + 40, 1024 );  --爆発音

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 20, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 46 );
entryFade( spep_5 + 206, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 216 );

end



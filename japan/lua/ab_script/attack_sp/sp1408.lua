--トーマ_フレイムバレット

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
SP_01 = 154992; --突進
SP_02 = 154993; --ラッシュ：キャラ
SP_03 = 154994; --ラッシュ：背景
SP_04 = 154995; --気タメ
SP_05 = 154996; --気弾発射
SP_06 = 154997; --気弾着弾から爆発：気弾
SP_07 = 154998; --気弾着弾から爆発：背景

--敵側
SP_02x = 154999; --ラッシュ：キャラ

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
--画面移動
playSe( spep_0 + 64, 8 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- ラッシュ(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_02, 116, 0x100, -1, 0, 0, 0 );  --ラッシュ(ef_002)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 116, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 115, rush_f, 255 );
setEffAlphaKey( spep_1 + 116, rush_f, 0 );

rush_b = entryEffectLife( spep_1 + 0, SP_03, 116, 0x80, -1, 0, 0, 0 );  --ラッシュ(ef_003)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 116, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 115, rush_b, 255 );
setEffAlphaKey( spep_1 + 116, rush_b, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 20 -3, 906, 87, 0x100, -1, 0, 50, 100 );  --集中線
setEffShake( spep_1 + 20 -3, shuchusen2, 87, 20 );

setEffMoveKey( spep_1 + 20 -3, shuchusen2, 50, 100 , 0 );
setEffMoveKey( spep_1 + 71 -3, shuchusen2, 50, 100 , 0 );
setEffMoveKey( spep_1 + 72 -3, shuchusen2, 50, -150 , 0 );
setEffMoveKey( spep_1 + 99 -3, shuchusen2, 50, -150 , 0 );
setEffMoveKey( spep_1 + 100 -3, shuchusen2, 100, -250 , 0 );
setEffMoveKey( spep_1 + 107 -3, shuchusen2, 100, -250 , 0 );

setEffScaleKey( spep_1 + 20 -3, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 + 99 -3, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 + 100 -3, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 107 -3, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 20 -3, shuchusen2, 0 );
setEffRotateKey( spep_1 + 107 -3, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 20 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 37 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 38 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 51 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 52 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 63 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 64 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 71 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 72 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 83 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 84 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 85 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 86 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 93 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 94 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 99 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 100 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 107 -3, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_1 -3 + 20,  10019, 20, 0x100, -1, 0, 0, -0.1 );  --ドン
setEffMoveKey( spep_1 -3 + 20, ctdon, 0, -0.1 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctdon, -54.9, 128.3 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctdon, -93.8, 254 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctdon, -107, 267.8 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctdon, -98.5, 265.7 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctdon, -114.8, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctdon, -112.3, 284.7 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctdon, -122.7, 282.8 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctdon, -119.5, 305.9 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctdon, -122.6, 307.7 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctdon, -125.8, 322.6 , 0 );

setEffScaleKey( spep_1 -3 + 20, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 22, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 24, ctdon, 2, 2 );
setEffScaleKey( spep_1 -3 + 26, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 28, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 30, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 32, ctdon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 34, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 36, ctdon, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 38, ctdon, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 40, ctdon, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 20, ctdon, 0 );
setEffRotateKey( spep_1 -3 + 40, ctdon, 0 );

setEffAlphaKey( spep_1 -3 + 20, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 34, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctdon, 170 );
setEffAlphaKey( spep_1 -3 + 38, ctdon, 85 );
setEffAlphaKey( spep_1 -3 + 40, ctdon, 0 );

ctbaki = entryEffectLife( spep_1 -3 + 52,  10020, 20, 0x100, -1, 0, 30.6, -41.9 );  --バキッ
setEffMoveKey( spep_1 -3 + 52, ctbaki, 30.6, -41.9 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctbaki, 84.7, -114.1 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctbaki, 124.4, -177.3 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctbaki, 140.7, -189.6 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctbaki, 132.5, -194.6 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctbaki, 142.9, -191.1 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctbaki, 147.1, -207.9 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctbaki, 145.9, -201.5 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctbaki, 151.6, -211.6 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctbaki, 151.9, -210.6 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctbaki, 160.5, -217.4 , 0 );

setEffScaleKey( spep_1 -3 + 52, ctbaki, 0.73, 0.73 );
setEffScaleKey( spep_1 -3 + 54, ctbaki, 1.37, 1.37 );
setEffScaleKey( spep_1 -3 + 56, ctbaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 58, ctbaki, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 60, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 62, ctbaki, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 64, ctbaki, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 66, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 68, ctbaki, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 70, ctbaki, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 72, ctbaki, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 52, ctbaki, 0 );
setEffRotateKey( spep_1 -3 + 72, ctbaki, 0 );

setEffAlphaKey( spep_1 -3 + 52, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 66, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 68, ctbaki, 179 );
setEffAlphaKey( spep_1 -3 + 70, ctbaki, 102 );
setEffAlphaKey( spep_1 -3 + 72, ctbaki, 26 );

ctdon1 = entryEffectLife( spep_1 -3 + 72,  10019, 20, 0x100, -1, 0, 0, -0.1 );  --ドン
setEffMoveKey( spep_1 -3 + 72, ctdon1, 0, -0.1 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctdon1, 75.1, 128.3 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctdon1, 166.2, 254 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctdon1, 161, 267.8 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctdon1, 177.5, 265.7 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctdon1, 169.2, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctdon1, 179.7, 284.7 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctdon1, 177.3, 282.8 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctdon1, 200.5, 305.9 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctdon1, 217.4, 307.7 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctdon1, 234.2, 322.6 , 0 );

setEffScaleKey( spep_1 -3 + 72, ctdon1, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 74, ctdon1, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 76, ctdon1, 2, 2 );
setEffScaleKey( spep_1 -3 + 78, ctdon1, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 80, ctdon1, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 82, ctdon1, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 84, ctdon1, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 86, ctdon1, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 88, ctdon1, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 90, ctdon1, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 92, ctdon1, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 72, ctdon1, 0 );
setEffRotateKey( spep_1 -3 + 92, ctdon1, 0 );

setEffAlphaKey( spep_1 -3 + 72, ctdon1, 255 );
setEffAlphaKey( spep_1 -3 + 86, ctdon1, 255 );
setEffAlphaKey( spep_1 -3 + 88, ctdon1, 170 );
setEffAlphaKey( spep_1 -3 + 90, ctdon1, 85 );
setEffAlphaKey( spep_1 -3 + 92, ctdon1, 0 );

ctba = entryEffectLife( spep_1 -3 + 100,  10022, 12, 0x100, -1, 0, 220.1, -359.9 );  --バッ
setEffMoveKey( spep_1 -3 + 100, ctba, 220.1, -359.9 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctba, 135.5, -361 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctba, 66.9, -364.7 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctba, 42.7, -354.4 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctba, 40.3, -360 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctba, 13, -358.3 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctba, -2, -355.9 , 0 );

setEffScaleKey( spep_1 -3 + 100, ctba, 0.15, 0.15 );
setEffScaleKey( spep_1 -3 + 102, ctba, 0.67, 0.67 );
setEffScaleKey( spep_1 -3 + 104, ctba, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 106, ctba, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 108, ctba, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 110, ctba, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 112, ctba, 1.24, 1.24 );

setEffRotateKey( spep_1 -3 + 100, ctba, 0 );
setEffRotateKey( spep_1 -3 + 112, ctba, 0 );

setEffAlphaKey( spep_1 -3 + 100, ctba, 255 );
setEffAlphaKey( spep_1 -3 + 112, ctba, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 118, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 20, 1, 108 );
changeAnime( spep_1 -3 + 52, 1, 106 );
changeAnime( spep_1 -3 + 72, 1, 108 );
changeAnime( spep_1 -3 + 88, 1, 106 );

setMoveKey( spep_1 + 0, 1, 263.8, -73.2 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 243.9, -66.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 223.9, -59.8 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 203.9, -53.2 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 183.9, -46.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 163.9, -39.8 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 143.9, -33.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 123.9, -26.5 , 0 );
setMoveKey( spep_1 -3 + 19, 1, 103.9, -19.8 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 77.9, 38.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 124.4, 24.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 143.3, 13.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 128.2, 12.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 110.6, 15.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 121.8, 14 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 133.1, 12.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 123.2, 13.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 113.2, 15.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 119.2, 13 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 125.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 120.5, 12.7 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 115.8, 14.7 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 116.5, 14.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 117.1, 14.4 , 0 );
setMoveKey( spep_1 -3 + 51, 1, 117.8, 14.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 53.7, 20 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 90.4, 17.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 106.3, 17.2 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 90.8, 5.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 76.9, 0.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 87.6, 3.6 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 98.5, 6.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 91.3, 4.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 83.9, 1.8 , 0 );
setMoveKey( spep_1 -3 + 71, 1, 102, -2.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 153.2, -92.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 204.6, -117.5 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 164.6, -100.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 160.7, -103.5 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 175.3, -111.7 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 164.9, -105.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 154.2, -98.5 , 0 );
setMoveKey( spep_1 -3 + 87, 1, 158.4, -104.1 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 159.1, -178.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 192.2, -244.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 198.2, -263.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 204.1, -283.3 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 210.1, -302.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 218.6, -323.5 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 270.6, -434.4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 295, -602 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 301.3, -660.8 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 303, -692.8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 326.7, -770.3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 349.4, -842.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 330.8, -794.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 312.2, -747.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 330.9, -810.2 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 359.5, -1072.8 , 0 );

setScaleKey( spep_1 + 0, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 4, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 6, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 8, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 10, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 12, 1, 0.93, 0.93 );
setScaleKey( spep_1 -3 + 14, 1, 0.99, 0.99 );
setScaleKey( spep_1 -3 + 16, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 19, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 24, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 26, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 28, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 30, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 32, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 34, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 36, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 38, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 40, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 42, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 44, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 51, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 52, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 54, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 56, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 58, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 60, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 62, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 64, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 66, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 68, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 71, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 72, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 74, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 76, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 78, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 80, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 82, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 84, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 87, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 88, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 106, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 108, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 110, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 112, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 114, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 116, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 118, 1, 1.26, 1.26 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 19, 1, 0 );
setRotateKey( spep_1 -3 + 20, 1, 23.8 );
setRotateKey( spep_1 -3 + 22, 1, 38.1 );
setRotateKey( spep_1 -3 + 24, 1, 31.6 );
setRotateKey( spep_1 -3 + 26, 1, 25.1 );
setRotateKey( spep_1 -3 + 28, 1, 25.5 );
setRotateKey( spep_1 -3 + 30, 1, 25.9 );
setRotateKey( spep_1 -3 + 32, 1, 26.3 );
setRotateKey( spep_1 -3 + 34, 1, 26.7 );
setRotateKey( spep_1 -3 + 36, 1, 27.1 );
setRotateKey( spep_1 -3 + 38, 1, 27.5 );
setRotateKey( spep_1 -3 + 40, 1, 27.9 );
setRotateKey( spep_1 -3 + 42, 1, 28.3 );
setRotateKey( spep_1 -3 + 44, 1, 28.7 );
setRotateKey( spep_1 -3 + 46, 1, 29.1 );
setRotateKey( spep_1 -3 + 48, 1, 29.5 );
setRotateKey( spep_1 -3 + 51, 1, 29.9 );
setRotateKey( spep_1 -3 + 52, 1, -60 );
setRotateKey( spep_1 -3 + 54, 1, -50 );
setRotateKey( spep_1 -3 + 56, 1, -49.6 );
setRotateKey( spep_1 -3 + 58, 1, -49.3 );
setRotateKey( spep_1 -3 + 60, 1, -47.7 );
setRotateKey( spep_1 -3 + 62, 1, -46.2 );
setRotateKey( spep_1 -3 + 64, 1, -44.6 );
setRotateKey( spep_1 -3 + 66, 1, -43.1 );
setRotateKey( spep_1 -3 + 68, 1, -41.5 );
setRotateKey( spep_1 -3 + 71, 1, -40 );
setRotateKey( spep_1 -3 + 72, 1, 29.9 );
setRotateKey( spep_1 -3 + 74, 1, 31.1 );
setRotateKey( spep_1 -3 + 76, 1, 32.4 );
setRotateKey( spep_1 -3 + 78, 1, 33.7 );
setRotateKey( spep_1 -3 + 87, 1, 33.7 );
setRotateKey( spep_1 -3 + 88, 1, -1 );
setRotateKey( spep_1 -3 + 90, 1, 15 );
setRotateKey( spep_1 -3 + 92, 1, 15.5 );
setRotateKey( spep_1 -3 + 94, 1, 15.9 );
setRotateKey( spep_1 -3 + 96, 1, 16.4 );
setRotateKey( spep_1 -3 + 98, 1, 20.1 );
setRotateKey( spep_1 -3 + 100, 1, 24 );
setRotateKey( spep_1 -3 + 118, 1, 24 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--パンチ
playSe( spep_1 + 17, 1189 );
playSe( spep_1 + 23, 1000 );

--パンチ２
playSe( spep_1 + 47, 1189 );
setSeVolume( spep_1 + 47, 1189, 79 );
playSe( spep_1 + 51, 1000 );
playSe( spep_1 + 53, 1006 );
setSeVolume( spep_1 + 53, 1006, 63 );

--キック
playSe( spep_1 + 72, 1003 );
setSeVolume( spep_1 + 72, 1003, 71 );
playSe( spep_1 + 78, 1010 );
playSe( spep_1 + 80, 1110 );
setSeVolume( spep_1 + 80, 1110, 63 );

--踏みつけ
playSe( spep_1 + 103, 1010 );
setSeVolume( spep_1 + 103, 1010, 126 );
playSe( spep_1 + 105, 1001 );
setSeVolume( spep_1 + 105, 1001, 63 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;

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
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 , 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 , 515.5 , 0 );

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
entryFade( spep_2 + 96 -12, 10, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め
playSe( spep_2 + 11, 49 );
SE1 = playSe( spep_2 + 14, 1037 );
setSeVolume( spep_2 + 14, 1037, 79 );

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
stopSe( spep_3 + 4, SE1, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾発射(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_4 + 0, SP_05, 86, 0x100, -1, 0, 0, 0 );  --気弾発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 86, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 86, hassha, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0, 906, 20 -3, 0x100, -1, 0, 0, 300 );  --集中線
setEffShake( spep_4 + 0, shuchusen4, 20 -3, 20 );

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 300 , 0 );
setEffMoveKey( spep_4 + 11 -3, shuchusen4, 0, 300 , 0 );
setEffMoveKey( spep_4 + 12 -3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 20 -3, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.3, 1.3 );
setEffScaleKey( spep_4 + 20 -3, shuchusen4, 1.3, 1.3 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 20 -3, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 20 -3, shuchusen4, 255 );

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
entryFade( spep_4 + 86 -22, 20, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾発射
playSe( spep_4 + 12, 1003 );
setSeVolume( spep_4 + 12, 1003, 71 );
playSe( spep_4 + 20, 1027 );
playSe( spep_4 + 20, 1021 );
playSe( spep_4 + 33, 1022 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

------------------------------------------------------
-- 気弾着弾から爆発(190F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --気弾着弾から爆発(ef_006)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 190, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 190, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 190, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 190, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --気弾着弾から爆発(ef_007)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 190, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 190, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 190, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 190, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 46, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, -0.1, 187.5 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -0.1, 89.8 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -0.1, 18.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -0.1, -38.5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -0.1, -86.3 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -0.1, -127.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -0.2, -163.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -0.2, -194.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -0.2, -222.1 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -0.2, -246.7 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -0.2, -268.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -0.2, -287.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -0.2, -303.8 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -0.2, -318 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -0.2, -329.9 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -0.2, -339.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -0.1, -346.5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -0.2, -348.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 9.8, -385.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 19.8, -423.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 4.8, -383 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -10.2, -342.5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -10.2, -342.5 , 0 );

setScaleKey( spep_5 + 0, 1, 2.09, 2.09 );
setScaleKey( spep_5 -3 + 4, 1, 1.89, 1.89 );
setScaleKey( spep_5 -3 + 6, 1, 1.75, 1.75 );
setScaleKey( spep_5 -3 + 8, 1, 1.63, 1.63 );
setScaleKey( spep_5 -3 + 10, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 12, 1, 1.45, 1.45 );
setScaleKey( spep_5 -3 + 14, 1, 1.38, 1.38 );
setScaleKey( spep_5 -3 + 16, 1, 1.32, 1.32 );
setScaleKey( spep_5 -3 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_5 -3 + 20, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 22, 1, 1.17, 1.17 );
setScaleKey( spep_5 -3 + 24, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 26, 1, 1.1, 1.1 );
setScaleKey( spep_5 -3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_5 -3 + 30, 1, 1.05, 1.05 );
setScaleKey( spep_5 -3 + 32, 1, 1.03, 1.03 );
setScaleKey( spep_5 -3 + 34, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 36, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 38, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 40, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 42, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 44, 1, 1, 1 );
setScaleKey( spep_5 -3 + 46, 1, 1, 1 );

setRotateKey( spep_5 + 0, 1, 99.9 );
setRotateKey( spep_5 -3 + 10, 1, 99.9 );
setRotateKey( spep_5 -3 + 12, 1, 99.8 );
setRotateKey( spep_5 -3 + 46, 1, 99.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 192, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--爆発
playSe( spep_5 + 37, 1023 );
playSe( spep_5 + 40, 1159 );
setSeVolume( spep_5 + 40, 1159, 56 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 56 );
endPhase( spep_5 + 190 -40 );

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
--画面移動
playSe( spep_0 + 64, 8 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- ラッシュ(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_02x, 116, 0x100, -1, 0, 0, 0 );  --ラッシュ(ef_002)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 116, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 115, rush_f, 255 );
setEffAlphaKey( spep_1 + 116, rush_f, 0 );

rush_b = entryEffectLife( spep_1 + 0, SP_03, 116, 0x80, -1, 0, 0, 0 );  --ラッシュ(ef_003)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 116, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 116, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 116, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 115, rush_b, 255 );
setEffAlphaKey( spep_1 + 116, rush_b, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 20 -3, 906, 87, 0x100, -1, 0, 50, 100 );  --集中線
setEffShake( spep_1 + 20 -3, shuchusen2, 87, 20 );

setEffMoveKey( spep_1 + 20 -3, shuchusen2, 50, 100 , 0 );
setEffMoveKey( spep_1 + 71 -3, shuchusen2, 50, 100 , 0 );
setEffMoveKey( spep_1 + 72 -3, shuchusen2, 50, -150 , 0 );
setEffMoveKey( spep_1 + 99 -3, shuchusen2, 50, -150 , 0 );
setEffMoveKey( spep_1 + 100 -3, shuchusen2, 100, -250 , 0 );
setEffMoveKey( spep_1 + 107 -3, shuchusen2, 100, -250 , 0 );

setEffScaleKey( spep_1 + 20 -3, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 + 99 -3, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 + 100 -3, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 107 -3, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 20 -3, shuchusen2, 0 );
setEffRotateKey( spep_1 + 107 -3, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 20 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 37 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 38 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 51 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 52 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 63 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 64 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 71 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 72 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 83 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 84 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 85 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 86 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 93 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 94 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 99 -3, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 100 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 107 -3, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_1 -3 + 20,  10019, 20, 0x100, -1, 0, 0, -0.1 );  --ドン
setEffMoveKey( spep_1 -3 + 20, ctdon, 0, -0.1 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctdon, -54.9, 128.3 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctdon, -93.8, 254 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctdon, -107, 267.8 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctdon, -98.5, 265.7 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctdon, -114.8, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctdon, -112.3, 284.7 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctdon, -122.7, 282.8 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctdon, -119.5, 305.9 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctdon, -122.6, 307.7 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctdon, -125.8, 322.6 , 0 );

setEffScaleKey( spep_1 -3 + 20, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 22, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 24, ctdon, 2, 2 );
setEffScaleKey( spep_1 -3 + 26, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 28, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 30, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 32, ctdon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 34, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 36, ctdon, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 38, ctdon, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 40, ctdon, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 20, ctdon, 0 );
setEffRotateKey( spep_1 -3 + 40, ctdon, 0 );

setEffAlphaKey( spep_1 -3 + 20, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 34, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctdon, 170 );
setEffAlphaKey( spep_1 -3 + 38, ctdon, 85 );
setEffAlphaKey( spep_1 -3 + 40, ctdon, 0 );

ctbaki = entryEffectLife( spep_1 -3 + 52,  10020, 20, 0x100, -1, 0, 30.6, -41.9 );  --バキッ
setEffMoveKey( spep_1 -3 + 52, ctbaki, 30.6, -41.9 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctbaki, 84.7, -114.1 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctbaki, 124.4, -177.3 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctbaki, 140.7, -189.6 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctbaki, 132.5, -194.6 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctbaki, 142.9, -191.1 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctbaki, 147.1, -207.9 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctbaki, 145.9, -201.5 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctbaki, 151.6, -211.6 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctbaki, 151.9, -210.6 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctbaki, 160.5, -217.4 , 0 );

setEffScaleKey( spep_1 -3 + 52, ctbaki, 0.73, 0.73 );
setEffScaleKey( spep_1 -3 + 54, ctbaki, 1.37, 1.37 );
setEffScaleKey( spep_1 -3 + 56, ctbaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 58, ctbaki, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 60, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 62, ctbaki, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 64, ctbaki, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 66, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 68, ctbaki, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 70, ctbaki, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 72, ctbaki, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 52, ctbaki, 0 );
setEffRotateKey( spep_1 -3 + 72, ctbaki, 0 );

setEffAlphaKey( spep_1 -3 + 52, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 66, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 68, ctbaki, 179 );
setEffAlphaKey( spep_1 -3 + 70, ctbaki, 102 );
setEffAlphaKey( spep_1 -3 + 72, ctbaki, 26 );

ctdon1 = entryEffectLife( spep_1 -3 + 72,  10019, 20, 0x100, -1, 0, 0, -0.1 );  --ドン
setEffMoveKey( spep_1 -3 + 72, ctdon1, 0, -0.1 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctdon1, 75.1, 128.3 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctdon1, 166.2, 254 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctdon1, 161, 267.8 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctdon1, 177.5, 265.7 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctdon1, 169.2, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctdon1, 179.7, 284.7 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctdon1, 177.3, 282.8 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctdon1, 200.5, 305.9 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctdon1, 217.4, 307.7 , 0 );
setEffMoveKey( spep_1 -3 + 92, ctdon1, 234.2, 322.6 , 0 );

setEffScaleKey( spep_1 -3 + 72, ctdon1, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 74, ctdon1, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 76, ctdon1, 2, 2 );
setEffScaleKey( spep_1 -3 + 78, ctdon1, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 80, ctdon1, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 82, ctdon1, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 84, ctdon1, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 86, ctdon1, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 88, ctdon1, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 90, ctdon1, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 92, ctdon1, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 72, ctdon1, 0 );
setEffRotateKey( spep_1 -3 + 92, ctdon1, 0 );

setEffAlphaKey( spep_1 -3 + 72, ctdon1, 255 );
setEffAlphaKey( spep_1 -3 + 86, ctdon1, 255 );
setEffAlphaKey( spep_1 -3 + 88, ctdon1, 170 );
setEffAlphaKey( spep_1 -3 + 90, ctdon1, 85 );
setEffAlphaKey( spep_1 -3 + 92, ctdon1, 0 );

ctba = entryEffectLife( spep_1 -3 + 100,  10022, 12, 0x100, -1, 0, 220.1, -359.9 );  --バッ
setEffMoveKey( spep_1 -3 + 100, ctba, 220.1, -359.9 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctba, 135.5, -361 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctba, 66.9, -364.7 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctba, 42.7, -354.4 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctba, 40.3, -360 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctba, 13, -358.3 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctba, -2, -355.9 , 0 );

setEffScaleKey( spep_1 -3 + 100, ctba, 0.15, 0.15 );
setEffScaleKey( spep_1 -3 + 102, ctba, 0.67, 0.67 );
setEffScaleKey( spep_1 -3 + 104, ctba, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 106, ctba, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 108, ctba, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 110, ctba, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 112, ctba, 1.24, 1.24 );

setEffRotateKey( spep_1 -3 + 100, ctba, 0 );
setEffRotateKey( spep_1 -3 + 112, ctba, 0 );

setEffAlphaKey( spep_1 -3 + 100, ctba, 255 );
setEffAlphaKey( spep_1 -3 + 112, ctba, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 118, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 20, 1, 108 );
changeAnime( spep_1 -3 + 52, 1, 106 );
changeAnime( spep_1 -3 + 72, 1, 108 );
changeAnime( spep_1 -3 + 88, 1, 106 );

setMoveKey( spep_1 + 0, 1, 263.8, -73.2 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 243.9, -66.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 223.9, -59.8 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 203.9, -53.2 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 183.9, -46.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 163.9, -39.8 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 143.9, -33.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 123.9, -26.5 , 0 );
setMoveKey( spep_1 -3 + 19, 1, 103.9, -19.8 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 77.9, 38.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 124.4, 24.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 143.3, 13.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 128.2, 12.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 110.6, 15.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 121.8, 14 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 133.1, 12.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 123.2, 13.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 113.2, 15.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 119.2, 13 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 125.2, 10.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 120.5, 12.7 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 115.8, 14.7 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 116.5, 14.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 117.1, 14.4 , 0 );
setMoveKey( spep_1 -3 + 51, 1, 117.8, 14.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 53.7, 20 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 90.4, 17.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 106.3, 17.2 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 90.8, 5.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 76.9, 0.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 87.6, 3.6 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 98.5, 6.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 91.3, 4.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 83.9, 1.8 , 0 );
setMoveKey( spep_1 -3 + 71, 1, 102, -2.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 153.2, -92.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 204.6, -117.5 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 164.6, -100.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 160.7, -103.5 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 175.3, -111.7 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 164.9, -105.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 154.2, -98.5 , 0 );
setMoveKey( spep_1 -3 + 87, 1, 158.4, -104.1 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 159.1, -178.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 192.2, -244.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 198.2, -263.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 204.1, -283.3 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 210.1, -302.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 218.6, -323.5 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 270.6, -434.4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 295, -602 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 301.3, -660.8 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 303, -692.8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 326.7, -770.3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 349.4, -842.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 330.8, -794.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 312.2, -747.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 330.9, -810.2 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 359.5, -1072.8 , 0 );

setScaleKey( spep_1 + 0, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 4, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 6, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 8, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 10, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 12, 1, 0.93, 0.93 );
setScaleKey( spep_1 -3 + 14, 1, 0.99, 0.99 );
setScaleKey( spep_1 -3 + 16, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 19, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 24, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 26, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 28, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 30, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 32, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 34, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 36, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 38, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 40, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 42, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 44, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 51, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 52, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 54, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 56, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 58, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 60, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 62, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 64, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 66, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 68, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 71, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 72, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 74, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 76, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 78, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 80, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 82, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 84, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 87, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 88, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 106, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 108, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 110, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 112, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 114, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 116, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 118, 1, 1.26, 1.26 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 19, 1, 0 );
setRotateKey( spep_1 -3 + 20, 1, 23.8 );
setRotateKey( spep_1 -3 + 22, 1, 38.1 );
setRotateKey( spep_1 -3 + 24, 1, 31.6 );
setRotateKey( spep_1 -3 + 26, 1, 25.1 );
setRotateKey( spep_1 -3 + 28, 1, 25.5 );
setRotateKey( spep_1 -3 + 30, 1, 25.9 );
setRotateKey( spep_1 -3 + 32, 1, 26.3 );
setRotateKey( spep_1 -3 + 34, 1, 26.7 );
setRotateKey( spep_1 -3 + 36, 1, 27.1 );
setRotateKey( spep_1 -3 + 38, 1, 27.5 );
setRotateKey( spep_1 -3 + 40, 1, 27.9 );
setRotateKey( spep_1 -3 + 42, 1, 28.3 );
setRotateKey( spep_1 -3 + 44, 1, 28.7 );
setRotateKey( spep_1 -3 + 46, 1, 29.1 );
setRotateKey( spep_1 -3 + 48, 1, 29.5 );
setRotateKey( spep_1 -3 + 51, 1, 29.9 );
setRotateKey( spep_1 -3 + 52, 1, -60 );
setRotateKey( spep_1 -3 + 54, 1, -50 );
setRotateKey( spep_1 -3 + 56, 1, -49.6 );
setRotateKey( spep_1 -3 + 58, 1, -49.3 );
setRotateKey( spep_1 -3 + 60, 1, -47.7 );
setRotateKey( spep_1 -3 + 62, 1, -46.2 );
setRotateKey( spep_1 -3 + 64, 1, -44.6 );
setRotateKey( spep_1 -3 + 66, 1, -43.1 );
setRotateKey( spep_1 -3 + 68, 1, -41.5 );
setRotateKey( spep_1 -3 + 71, 1, -40 );
setRotateKey( spep_1 -3 + 72, 1, 29.9 );
setRotateKey( spep_1 -3 + 74, 1, 31.1 );
setRotateKey( spep_1 -3 + 76, 1, 32.4 );
setRotateKey( spep_1 -3 + 78, 1, 33.7 );
setRotateKey( spep_1 -3 + 87, 1, 33.7 );
setRotateKey( spep_1 -3 + 88, 1, -1 );
setRotateKey( spep_1 -3 + 90, 1, 15 );
setRotateKey( spep_1 -3 + 92, 1, 15.5 );
setRotateKey( spep_1 -3 + 94, 1, 15.9 );
setRotateKey( spep_1 -3 + 96, 1, 16.4 );
setRotateKey( spep_1 -3 + 98, 1, 20.1 );
setRotateKey( spep_1 -3 + 100, 1, 24 );
setRotateKey( spep_1 -3 + 118, 1, 24 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--パンチ
playSe( spep_1 + 17, 1189 );
playSe( spep_1 + 23, 1000 );

--パンチ２
playSe( spep_1 + 47, 1189 );
setSeVolume( spep_1 + 47, 1189, 79 );
playSe( spep_1 + 51, 1000 );
playSe( spep_1 + 53, 1006 );
setSeVolume( spep_1 + 53, 1006, 63 );

--キック
playSe( spep_1 + 72, 1003 );
setSeVolume( spep_1 + 72, 1003, 71 );
playSe( spep_1 + 78, 1010 );
playSe( spep_1 + 80, 1110 );
setSeVolume( spep_1 + 80, 1110, 63 );

--踏みつけ
playSe( spep_1 + 103, 1010 );
setSeVolume( spep_1 + 103, 1010, 126 );
playSe( spep_1 + 105, 1001 );
setSeVolume( spep_1 + 105, 1001, 63 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 116;

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
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 , 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 , 515.5 , 0 );

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
entryFade( spep_2 + 96 -12, 10, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め
playSe( spep_2 + 11, 49 );
SE1 = playSe( spep_2 + 14, 1037 );
setSeVolume( spep_2 + 14, 1037, 79 );

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
stopSe( spep_3 + 4, SE1, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾発射(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_4 + 0, SP_05, 86, 0x100, -1, 0, 0, 0 );  --気弾発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, hassha,-1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 86, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 86, hassha, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0, 906, 20 -3, 0x100, -1, 0, 0, 300 );  --集中線
setEffShake( spep_4 + 0, shuchusen4, 20 -3, 20 );

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 300 , 0 );
setEffMoveKey( spep_4 + 11 -3, shuchusen4, 0, 300 , 0 );
setEffMoveKey( spep_4 + 12 -3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 20 -3, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.3, 1.3 );
setEffScaleKey( spep_4 + 20 -3, shuchusen4, 1.3, 1.3 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 20 -3, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 20 -3, shuchusen4, 255 );

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
entryFade( spep_4 + 86 -22, 20, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾発射
playSe( spep_4 + 12, 1003 );
setSeVolume( spep_4 + 12, 1003, 71 );
playSe( spep_4 + 20, 1027 );
playSe( spep_4 + 20, 1021 );
playSe( spep_4 + 33, 1022 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

------------------------------------------------------
-- 気弾着弾から爆発(190F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --気弾着弾から爆発(ef_006)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 190, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 190, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 190, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 190, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --気弾着弾から爆発(ef_007)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 190, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 190, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 190, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 190, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 46, 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, -0.1, 187.5 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -0.1, 89.8 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -0.1, 18.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -0.1, -38.5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -0.1, -86.3 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -0.1, -127.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -0.2, -163.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -0.2, -194.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -0.2, -222.1 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -0.2, -246.7 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -0.2, -268.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -0.2, -287.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -0.2, -303.8 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -0.2, -318 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -0.2, -329.9 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -0.2, -339.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -0.1, -346.5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -0.2, -348.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 9.8, -385.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 19.8, -423.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 4.8, -383 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -10.2, -342.5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -10.2, -342.5 , 0 );

setScaleKey( spep_5 + 0, 1, 2.09, 2.09 );
setScaleKey( spep_5 -3 + 4, 1, 1.89, 1.89 );
setScaleKey( spep_5 -3 + 6, 1, 1.75, 1.75 );
setScaleKey( spep_5 -3 + 8, 1, 1.63, 1.63 );
setScaleKey( spep_5 -3 + 10, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 12, 1, 1.45, 1.45 );
setScaleKey( spep_5 -3 + 14, 1, 1.38, 1.38 );
setScaleKey( spep_5 -3 + 16, 1, 1.32, 1.32 );
setScaleKey( spep_5 -3 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_5 -3 + 20, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 22, 1, 1.17, 1.17 );
setScaleKey( spep_5 -3 + 24, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 26, 1, 1.1, 1.1 );
setScaleKey( spep_5 -3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_5 -3 + 30, 1, 1.05, 1.05 );
setScaleKey( spep_5 -3 + 32, 1, 1.03, 1.03 );
setScaleKey( spep_5 -3 + 34, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 36, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 38, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 40, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 42, 1, 1.08, 1.08 );
setScaleKey( spep_5 -3 + 44, 1, 1, 1 );
setScaleKey( spep_5 -3 + 46, 1, 1, 1 );

setRotateKey( spep_5 + 0, 1, 99.9 );
setRotateKey( spep_5 -3 + 10, 1, 99.9 );
setRotateKey( spep_5 -3 + 12, 1, 99.8 );
setRotateKey( spep_5 -3 + 46, 1, 99.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 192, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--爆発
playSe( spep_5 + 37, 1023 );
playSe( spep_5 + 40, 1159 );
setSeVolume( spep_5 + 40, 1159, 56 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 56 );
endPhase( spep_5 + 190 -40 );

end
--クリリン_気円斬

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
SP_01 = 155292;  --キャラアップ絵
SP_02 = 155293;  --格闘
SP_03 = 155294;  --格闘
SP_04 = 155296;  --追い打ち
SP_05 = 155298;  --追い打ち
SP_06 = 155299;  --敵から距離をとる
SP_07 = 155301;  --構える→気円斬
SP_08 = 155302;  --気円斬投げる
SP_09 = 155304;  --気円斬が敵に迫る
SP_10 = 155305;  --気円斬が敵に迫る
SP_11 = 155306;  --斬撃エフェクト
SP_12 = 155307;  --気円斬が岩山を斬る

--敵側
SP_03x = 155295;  --格闘
SP_04x = 155297;  --追い打ち
SP_06x = 155300;  --敵から距離をとる
SP_08x = 155303;  --気円斬投げる

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
-- キャラアップ絵(46F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffectLife( spep_0 + 0, SP_01, 46, 0x100, -1, 0, 0, 0 );  --キャラアップ絵(ef_001)
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 46, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 46, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 46, first, 255 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 48, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--入り
SE0 = playSe( spep_0 + 0, 8 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 20; --エンドフェイズのフレーム数を置き換える

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
--瞬間移動
playSe( spep_0 + 27, 1109 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 46;

------------------------------------------------------
-- 格闘(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_1 + 0, SP_02, 86, 0x100, -1, 0, 0, 0 );  --格闘(ef_002)
setEffMoveKey( spep_1 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_f, 0 );
setEffRotateKey( spep_1 + 86, attack_f, 0 );
setEffAlphaKey( spep_1 + 0, attack_f, 255 );
setEffAlphaKey( spep_1 + 86, attack_f, 255 );

attack_b = entryEffectLife( spep_1 + 0, SP_03, 86, 0x80, -1, 0, 0, 0 );  --格闘(ef_003)
setEffMoveKey( spep_1 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 86, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 86, attack_b, 255 );

-- ** 書き文字エントリー ** --
ctex = entryEffectLife( spep_1 -3 + 4,  10000, 10, 0x100, -1, 0, 92.4, 158.6 );  --！！
setEffMoveKey( spep_1 -3 + 4, ctex, 92.4, 158.6 , 0 );
setEffMoveKey( spep_1 -3 + 6, ctex, 73.1, 147.5 , 0 );
setEffMoveKey( spep_1 -3 + 8, ctex, 65.5, 147 , 0 );
setEffMoveKey( spep_1 -3 + 10, ctex, 72.6, 155.1 , 0 );
setEffMoveKey( spep_1 -3 + 12, ctex, 73.1, 147.5 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctex, 65.5, 147 , 0 );

setEffScaleKey( spep_1 -3 + 4, ctex, 2.41, 2.41 );
setEffScaleKey( spep_1 -3 + 6, ctex, 1.76, 1.76 );
setEffScaleKey( spep_1 -3 + 14, ctex, 1.76, 1.76 );

setEffRotateKey( spep_1 -3 + 4, ctex, 18 );
setEffRotateKey( spep_1 -3 + 6, ctex, 17.8 );
setEffRotateKey( spep_1 -3 + 14, ctex, 17.8 );

setEffAlphaKey( spep_1 -3 + 4, ctex, 255 );
setEffAlphaKey( spep_1 -3 + 14, ctex, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 40, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 18, 1, 104 );
changeAnime( spep_1 -3 + 28, 1, 107 );

setMoveKey( spep_1 + 0, 1, 63.1, -93.1 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 63.1, -93.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 53.5, -114.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 154.1, -160.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 228.4, -237.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 274.5, -271.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 350.9, -349.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 428.4, -414.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 502.9, -468 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 499, -470.4 , 0 );
setMoveKey( spep_1 + 40, 1, 502.7, -469.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.96, 1.98 );
setScaleKey( spep_1 -3 + 27, 1, 1.96, 1.98 );
setScaleKey( spep_1 -3 + 28, 1, 0.71, 0.72 );
setScaleKey( spep_1 -3 + 30, 1, 1.06, 1.07 );
setScaleKey( spep_1 -3 + 32, 1, 1.41, 1.43 );
setScaleKey( spep_1 -3 + 34, 1, 1.76, 1.78 );
setScaleKey( spep_1 -3 + 36, 1, 2.11, 2.13 );
setScaleKey( spep_1 -3 + 38, 1, 2.46, 2.48 );
setScaleKey( spep_1 -3 + 40, 1, 2.81, 2.84 );
setScaleKey( spep_1 + 40, 1, 2.81, 2.84 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 27, 1, 0 );
setRotateKey( spep_1 -3 + 28, 1, -78 );
setRotateKey( spep_1 -3 + 30, 1, -73.7 );
setRotateKey( spep_1 -3 + 32, 1, -69.3 );
setRotateKey( spep_1 -3 + 34, 1, -65 );
setRotateKey( spep_1 -3 + 36, 1, -60.7 );
setRotateKey( spep_1 -3 + 38, 1, -56.3 );
setRotateKey( spep_1 -3 + 40, 1, -52 );
setRotateKey( spep_1 + 40, 1, -52 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 86 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--蹴り
playSe( spep_1 + 17, 1004 );
setSeVolume( spep_1 + 17, 1004, 71 );
playSe( spep_1 + 23, 1013 );
playSe( spep_1 + 25, 1010 );
playSe( spep_1 + 27, 1110 );
setSeVolume( spep_1 + 27, 1110, 79 );

--ダッシュ
playSe( spep_1 + 56, 1182 );
setSeVolume( spep_1 + 56, 1182, 79 );
playSe( spep_1 + 60, 44 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

------------------------------------------------------
-- 追い討ち(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
oiuchi_f = entryEffectLife( spep_2 + 0, SP_04, 66, 0x100, -1, 0, 0, 0 );  --追い討ち(ef_004)
setEffMoveKey( spep_2 + 0, oiuchi_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, oiuchi_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, oiuchi_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, oiuchi_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, oiuchi_f, 0 );
setEffRotateKey( spep_2 + 66, oiuchi_f, 0 );
setEffAlphaKey( spep_2 + 0, oiuchi_f, 255 );
setEffAlphaKey( spep_2 + 66, oiuchi_f, 255 );

oiuchi_b = entryEffectLife( spep_2 + 0, SP_05, 66, 0x80, -1, 0, 0, 0 );  --追い討ち(ef_005)
setEffMoveKey( spep_2 + 0, oiuchi_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, oiuchi_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, oiuchi_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, oiuchi_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, oiuchi_b, 0 );
setEffRotateKey( spep_2 + 66, oiuchi_b, 0 );
setEffAlphaKey( spep_2 + 0, oiuchi_b, 255 );
setEffAlphaKey( spep_2 + 66, oiuchi_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 68, 1, 0 );
changeAnime( spep_2 + 0, 1, 105 );

setMoveKey( spep_2 + 0, 1, 14.8, -162 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 14.3, -144.8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 14.1, -130 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 13.7, -116.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 13.4, -103.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 13.3, -92.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 13.1, -82.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 12.8, -71.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 12.7, -62.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 12.6, -54.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 12.4, -47 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 12.4, -38.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 12.2, -31.8 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 12.3, -25.9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 12.1, -18.4 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 12.2, -13.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -9.2, -62.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 23, 18.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 45.3, -32 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -33.9, 6.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 4.2, -22.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 18.4, -7.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 10.8, -18.6 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 3.5, -13.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 1.6, -20.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 0, -29.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 7.2, -23.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 14.6, -18 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 7.5, -26.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 9.8, -24.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 12.5, -23.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 8, -19.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 3.9, -17.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 6.2, -21.7 , 0 );

setScaleKey( spep_2 + 0, 1, 3.76, 3.76 );
setScaleKey( spep_2 -3 + 4, 1, 3.46, 3.46 );
setScaleKey( spep_2 -3 + 6, 1, 3.18, 3.18 );
setScaleKey( spep_2 -3 + 8, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 10, 1, 2.7, 2.7 );
setScaleKey( spep_2 -3 + 12, 1, 2.48, 2.48 );
setScaleKey( spep_2 -3 + 14, 1, 2.28, 2.28 );
setScaleKey( spep_2 -3 + 16, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 18, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 20, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 22, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 26, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 30, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 32, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 34, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 36, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 38, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 40, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 42, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 44, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 46, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 48, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 50, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 52, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 54, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 56, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 58, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 62, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 64, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 68, 1, 0.47, 0.47 );

setRotateKey( spep_2 + 0, 1, 9.8 );
setRotateKey( spep_2 -3 + 68, 1, 9.8 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 68, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 66 -6, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--パンチ
playSe( spep_2 + 26, 1003 );
setSeVolume( spep_2 + 26, 1003, 79 );
playSe( spep_2 + 31, 1009 );
SE1 = playSe( spep_2 + 34, 1187 );
setSeVolume( spep_2 + 34, 1187, 50 );
playSe( spep_2 + 37, 1169 );
setSeVolume( spep_2 + 37, 1169, 79 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;

------------------------------------------------------
-- 敵から距離をとる(106F)
------------------------------------------------------

-- ** エフェクト等 ** --
kyori = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --敵から距離をとる(ef_006)
setEffMoveKey( spep_3 + 0, kyori, 0, 0 , 0 );
setEffMoveKey( spep_3 + 106, kyori, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kyori, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, kyori, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kyori, 0 );
setEffRotateKey( spep_3 + 106, kyori, 0 );
setEffAlphaKey( spep_3 + 0, kyori, 255 );
setEffAlphaKey( spep_3 + 106, kyori, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 106 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 108, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--パンチ
setSeVolume( spep_3 + 6, 1187, 50 );
setSeVolume( spep_3 + 12, 1187, 32 );
setSeVolume( spep_3 + 18, 1187, 14 );
setSeVolume( spep_3 + 23, 1187, 0 );
stopSe( spep_3 + 23, SE1, 0 );

--バク宙
SE2 = playSe( spep_3 + 0, 1117 );
setSeVolume( spep_3 + 0, 1117, 0 );
setSeVolume( spep_3 + 12, 1117, 10 );
setSeVolume( spep_3 + 15, 1117, 71 );
setSeVolume( spep_3 + 27, 1117, 71 );
setSeVolume( spep_3 + 34, 1117, 46 );
setSeVolume( spep_3 + 38, 1117, 24 );
setSeVolume( spep_3 + 40, 1117, 0 );
stopSe( spep_3 + 40, SE2, 0 );

SE3 = playSe( spep_3 + 6, 1197 );
setSeVolume( spep_3 + 6, 1197, 126 );
setSeVolume( spep_3 + 11, 1197, 126 );
setSeVolume( spep_3 + 14, 1197, 56 );
setSeVolume( spep_3 + 17, 1197, 0 );
stopSe( spep_3 + 17, SE3, 0 );

playSe( spep_3 + 6, 1192 );
setSeVolume( spep_3 + 6, 1192, 178 );

SE4 = playSe( spep_3 + 37, 1197 );
setSeVolume( spep_3 + 37, 1197, 126 );
setSeVolume( spep_3 + 42, 1197, 126 );
setSeVolume( spep_3 + 46, 1197, 68 );
setSeVolume( spep_3 + 48, 1197, 0 );
stopSe( spep_3 + 48, SE4, 0 );

playSe( spep_3 + 37, 1192 );
setSeVolume( spep_3 + 37, 1192, 178 );

SE5 = playSe( spep_3 + 44, 1117 );
setSeVolume( spep_3 + 44, 1117, 71 );
setSeVolume( spep_3 + 71, 1197, 71 );
setSeVolume( spep_3 + 84, 1197, 42 );
setSeVolume( spep_3 + 97, 1197, 0 );
stopSe( spep_3 + 97, SE5, 0 );

--溜め
SE6 = playSe( spep_3 + 70, 1239 );
setSeVolume( spep_3 + 70, 1239, 0 );

playSe( spep_3 + 89, 1043 );
setSeVolume( spep_3 + 89, 1043, 0 );

--着地
playSe( spep_3 + 88, 1106 );
playSe( spep_3 + 89, 1108 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 106;

------------------------------------------------------
-- 構える→気円斬(166F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamaeru = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --構える→気円斬(ef_007)
setEffMoveKey( spep_4 + 0, kamaeru, 0, 0 , 0 );
setEffMoveKey( spep_4 + 166, kamaeru, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kamaeru, 1.0, 1.0 );
setEffScaleKey( spep_4 + 166, kamaeru, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kamaeru, 0 );
setEffRotateKey( spep_4 + 166, kamaeru, 0 );
setEffAlphaKey( spep_4 + 0, kamaeru, 255 );
setEffAlphaKey( spep_4 + 166, kamaeru, 255 );

spep_x = spep_4 + 66;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 166 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--溜め
setSeVolume( spep_4 + 59, 1239, 10 );
setSeVolume( spep_4 + 60, 1239, 72 );
setSeVolume( spep_4 + 61, 1239, 141 );

setSeVolume( spep_4 + 15, 1043, 10 );
setSeVolume( spep_4 + 18, 1043, 68 );
setSeVolume( spep_4 + 20, 1043, 100 );

SE7 = playSe( spep_4 + 16, 1147 ); 
stopSe( spep_4 + 75, SE7, 0 );

SE8 = playSe( spep_4 + 60, 1240 ); 
setSeVolume( spep_4 + 60, 1240, 141 );

--手を上げる
playSe( spep_4 + 8, 1003 ); 
setSeVolume( spep_4 + 8, 1003, 63 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 166;

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

--溜め
stopSe( spep_5 + 0, SE6, 0 );
stopSe( spep_5 + 0, SE8, 0 );

--発射
SE9 = playSe( spep_5 + 75, 1242 );
setSeVolume( spep_5 + 75, 1242, 0 );
setSeVolume( spep_5 + 89, 1242, 10 );
setSeVolume( spep_5 + 92, 1242, 60 );

playSe( spep_5 + 90, 1241 );
setSeVolume( spep_5 + 90, 1241, 158 );

SE10 = playSe( spep_5 + 90, 1177 );
setSeVolume( spep_5 + 90, 1177, 56 );

playSe( spep_5 + 90, 1027 );
setSeVolume( spep_5 + 90, 1027, 79 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_6 = spep_5 + 94;

------------------------------------------------------
-- 気円斬投げる(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
nageru = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --気円斬投げる(ef_008)
setEffMoveKey( spep_6 + 0, nageru, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, nageru, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, nageru, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, nageru, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, nageru, 0 );
setEffRotateKey( spep_6 + 56, nageru, 0 );
setEffAlphaKey( spep_6 + 0, nageru, 255 );
setEffAlphaKey( spep_6 + 55, nageru, 255 );
setEffAlphaKey( spep_6 + 56, nageru, 0 );

-- ** 音 ** --
--発射
setSeVolume( spep_6 + 0, 1242, 158 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

------------------------------------------------------
-- 気円斬が敵に迫る(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --気円斬が敵に迫る(ef_009)
setEffMoveKey( spep_7 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 56, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, semaru_f, 0 );
setEffRotateKey( spep_7 + 56, semaru_f, 0 );
setEffAlphaKey( spep_7 + 0, semaru_f, 255 );
setEffAlphaKey( spep_7 + 55, semaru_f, 255 );
setEffAlphaKey( spep_7 + 56, semaru_f, 0 );

semaru_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --気円斬が敵に迫る(ef_010)
setEffMoveKey( spep_7 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 56, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, semaru_b, 0 );
setEffRotateKey( spep_7 + 56, semaru_b, 0 );
setEffAlphaKey( spep_7 + 0, semaru_b, 255 );
setEffAlphaKey( spep_7 + 55, semaru_b, 255 );
setEffAlphaKey( spep_7 + 56, semaru_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 56, 1, 0 );
changeAnime( spep_7 + 0, 1, 104 );

setMoveKey( spep_7 + 0, 1, 268.3, -112.3 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 250.1, -109.2 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 274.9, -134.6 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 252.9, -132.9 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 230.9, -131.2 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 254.3, -90.1 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 250, -101.5 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 245.8, -112.7 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 211.7, -90.4 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 217.8, -105.4 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 224.4, -120.5 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 216.8, -115.4 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 209.6, -110.5 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 202.7, -105.5 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 196.2, -104.8 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 189.9, -104 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 184.1, -103.4 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 175.8, -109.4 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 167.7, -115.5 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 160.1, -121.7 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 166.8, -113.2 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 173.6, -104.7 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 180.8, -96.1 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 168, -92.6 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 155.6, -89.2 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 143.3, -85.9 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 148.7, -91.8 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 154.4, -97.6 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 160.4, -103.5 , 0 );
setMoveKey( spep_7 + 56, 1, 160.4, -103.5 , 0 );

setScaleKey( spep_7 + 0, 1, 0.78, 0.78 );
setScaleKey( spep_7 -3 + 4, 1, 0.89, 0.89 );
setScaleKey( spep_7 -3 + 6, 1, 1, 1 );
setScaleKey( spep_7 -3 + 8, 1, 1.11, 1.11 );
setScaleKey( spep_7 -3 + 10, 1, 1.21, 1.21 );
setScaleKey( spep_7 -3 + 12, 1, 1.31, 1.31 );
setScaleKey( spep_7 -3 + 14, 1, 1.41, 1.41 );
setScaleKey( spep_7 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 18, 1, 1.58, 1.58 );
setScaleKey( spep_7 -3 + 20, 1, 1.66, 1.66 );
setScaleKey( spep_7 -3 + 22, 1, 1.74, 1.74 );
setScaleKey( spep_7 -3 + 24, 1, 1.82, 1.82 );
setScaleKey( spep_7 -3 + 26, 1, 1.88, 1.88 );
setScaleKey( spep_7 -3 + 28, 1, 1.95, 1.95 );
setScaleKey( spep_7 -3 + 30, 1, 2.01, 2.01 );
setScaleKey( spep_7 -3 + 32, 1, 2.07, 2.07 );
setScaleKey( spep_7 -3 + 34, 1, 2.11, 2.11 );
setScaleKey( spep_7 -3 + 36, 1, 2.16, 2.16 );
setScaleKey( spep_7 -3 + 38, 1, 2.2, 2.2 );
setScaleKey( spep_7 -3 + 40, 1, 2.24, 2.24 );
setScaleKey( spep_7 -3 + 42, 1, 2.28, 2.28 );
setScaleKey( spep_7 -3 + 44, 1, 2.32, 2.32 );
setScaleKey( spep_7 -3 + 46, 1, 2.34, 2.34 );
setScaleKey( spep_7 -3 + 48, 1, 2.36, 2.36 );
setScaleKey( spep_7 -3 + 50, 1, 2.38, 2.38 );
setScaleKey( spep_7 -3 + 52, 1, 2.4, 2.4 );
setScaleKey( spep_7 -3 + 54, 1, 2.41, 2.41 );
setScaleKey( spep_7 -3 + 56, 1, 2.42, 2.42 );
setScaleKey( spep_7 + 56, 1, 2.42, 2.42 );

setRotateKey( spep_7 + 0, 1, 9.8 );
setRotateKey( spep_7 + 56, 1, 9.8 );

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 56;

------------------------------------------------------
-- 斬撃エフェクト(36F)
------------------------------------------------------

-- ** エフェクト等 ** --
kiru = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --斬撃エフェクト(ef_011)
setEffMoveKey( spep_8 + 0, kiru, 0, 0 , 0 );
setEffMoveKey( spep_8 + 36, kiru, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, kiru, 1.0, 1.0 );
setEffScaleKey( spep_8 + 36, kiru, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kiru, 0 );
setEffRotateKey( spep_8 + 36, kiru, 0 );
setEffAlphaKey( spep_8 + 0, kiru, 255 );
setEffAlphaKey( spep_8 + 36, kiru, 255 );

-- ** 音 ** --
--発射
stopSe( spep_8 + 2, SE8, 0 );
stopSe( spep_8 + 2, SE10, 0 );

--着弾
playSe( spep_8 + 0, 1061 );
playSe( spep_8 + 7, 1032 );
setSeVolume( spep_8 + 7, 1032, 71 );
playSe( spep_8 + 12, 1031 );
setSeVolume( spep_8 + 12, 1031, 56 );
playSe( spep_8 + 12, 1238 );

--岩に向かう
SE11 = playSe( spep_8 + 0, 1121 );
setSeVolume( spep_8 + 0, 1121, 0 );

-- ** 背景 ** --
entryFadeBg( spep_8 + 0, 0, 38, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 36;

------------------------------------------------------
-- 気円斬が岩山を斬る(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --気円斬が岩山を斬る(ef_012)
setEffMoveKey( spep_9 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 126, finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 126, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 126, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 126, finish, 255 );

-- ** 音 ** --
--岩に向かう
setSeVolume( spep_9 + 0, 1121, 10 );
setSeVolume( spep_9 + 5, 1121, 71 );
stopSe( spep_9 + 61, SE11, 0 );

SE12 = playSe( spep_9 + 2, 1241 );
setSeVolume( spep_9 + 2, 1241, 40 );
stopSe( spep_9 + 61, SE12, 0 );

SE13 = playSe( spep_9 + 2, 1242 );
setSeVolume( spep_9 + 2, 1242, 50 );
stopSe( spep_9 + 61, SE13, 0 );

--岩切れる
playSe( spep_9 + 37, 1209 );
setSeVolume( spep_9 + 37, 1209, 0 );
setSeVolume( spep_9 + 52, 1209, 10 );
setSeVolume( spep_9 + 54, 1209, 38 );
setSeVolume( spep_9 + 55, 1209, 56 );
setSeVolume( spep_9 + 71, 1209, 56 );
setSeVolume( spep_9 + 89, 1209, 48 );
setSeVolume( spep_9 + 102, 1209, 40 );
setSeVolume( spep_9 + 118, 1209, 34 );
setSeVolume( spep_9 + 127, 1209, 30 );

playSe( spep_9 + 48, 1142 );

SE14 = playSe( spep_9 + 51, 1235 );
setSeVolume( spep_9 + 51, 1235, 32 );
setSeVolume( spep_9 + 64, 1235, 32 );
setSeVolume( spep_9 + 72, 1235, 28 );
setSeVolume( spep_9 + 78, 1235, 22 );
setSeVolume( spep_9 + 84, 1235, 16 );
setSeVolume( spep_9 + 90, 1235, 10 );
setSeVolume( spep_9 + 98, 1235, 6 );
setSeVolume( spep_9 + 101, 1235, 0 );
stopSe( spep_9 + 101, SE14, 0 );

-- ** 背景 ** --
entryFadeBg( spep_9 + 0, 0, 128, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 20 );
endPhase( spep_9 + 124 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- キャラアップ絵(46F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffectLife( spep_0 + 0, SP_01, 46, 0x100, -1, 0, 0, 0 );  --キャラアップ絵(ef_001)
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 46, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, -1.0, 1.0 );
setEffScaleKey( spep_0 + 46, first, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 46, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 46, first, 255 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 48, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--入り
SE0 = playSe( spep_0 + 0, 8 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 20; --エンドフェイズのフレーム数を置き換える

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
--瞬間移動
playSe( spep_0 + 27, 1109 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 46;

------------------------------------------------------
-- 格闘(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_1 + 0, SP_02, 86, 0x100, -1, 0, 0, 0 );  --格闘(ef_002)
setEffMoveKey( spep_1 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_f, 0 );
setEffRotateKey( spep_1 + 86, attack_f, 0 );
setEffAlphaKey( spep_1 + 0, attack_f, 255 );
setEffAlphaKey( spep_1 + 86, attack_f, 255 );

attack_b = entryEffectLife( spep_1 + 0, SP_03x, 86, 0x80, -1, 0, 0, 0 );  --格闘(ef_003)
setEffMoveKey( spep_1 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 86, attack_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 86, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 86, attack_b, 255 );

-- ** 書き文字エントリー ** --
ctex = entryEffectLife( spep_1 -3 + 4,  10000, 10, 0x100, -1, 0, 92.4, 158.6 );  --！！
setEffMoveKey( spep_1 -3 + 4, ctex, 92.4, 158.6 , 0 );
setEffMoveKey( spep_1 -3 + 6, ctex, 73.1, 147.5 , 0 );
setEffMoveKey( spep_1 -3 + 8, ctex, 65.5, 147 , 0 );
setEffMoveKey( spep_1 -3 + 10, ctex, 72.6, 155.1 , 0 );
setEffMoveKey( spep_1 -3 + 12, ctex, 73.1, 147.5 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctex, 65.5, 147 , 0 );

setEffScaleKey( spep_1 -3 + 4, ctex, 2.41, 2.41 );
setEffScaleKey( spep_1 -3 + 6, ctex, 1.76, 1.76 );
setEffScaleKey( spep_1 -3 + 14, ctex, 1.76, 1.76 );

setEffRotateKey( spep_1 -3 + 4, ctex, 18 );
setEffRotateKey( spep_1 -3 + 6, ctex, 17.8 );
setEffRotateKey( spep_1 -3 + 14, ctex, 17.8 );

setEffAlphaKey( spep_1 -3 + 4, ctex, 255 );
setEffAlphaKey( spep_1 -3 + 14, ctex, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 40, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 18, 1, 104 );
changeAnime( spep_1 -3 + 28, 1, 107 );

setMoveKey( spep_1 + 0, 1, 63.1, -93.1 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 63.1, -93.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 53.5, -114.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 154.1, -160.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 228.4, -237.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 274.5, -271.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 350.9, -349.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 428.4, -414.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 502.9, -468 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 499, -470.4 , 0 );
setMoveKey( spep_1 + 40, 1, 502.7, -469.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.96, 1.98 );
setScaleKey( spep_1 -3 + 27, 1, 1.96, 1.98 );
setScaleKey( spep_1 -3 + 28, 1, 0.71, 0.72 );
setScaleKey( spep_1 -3 + 30, 1, 1.06, 1.07 );
setScaleKey( spep_1 -3 + 32, 1, 1.41, 1.43 );
setScaleKey( spep_1 -3 + 34, 1, 1.76, 1.78 );
setScaleKey( spep_1 -3 + 36, 1, 2.11, 2.13 );
setScaleKey( spep_1 -3 + 38, 1, 2.46, 2.48 );
setScaleKey( spep_1 -3 + 40, 1, 2.81, 2.84 );
setScaleKey( spep_1 + 40, 1, 2.81, 2.84 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 27, 1, 0 );
setRotateKey( spep_1 -3 + 28, 1, -78 );
setRotateKey( spep_1 -3 + 30, 1, -73.7 );
setRotateKey( spep_1 -3 + 32, 1, -69.3 );
setRotateKey( spep_1 -3 + 34, 1, -65 );
setRotateKey( spep_1 -3 + 36, 1, -60.7 );
setRotateKey( spep_1 -3 + 38, 1, -56.3 );
setRotateKey( spep_1 -3 + 40, 1, -52 );
setRotateKey( spep_1 + 40, 1, -52 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 86 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--蹴り
playSe( spep_1 + 17, 1004 );
setSeVolume( spep_1 + 17, 1004, 71 );
playSe( spep_1 + 23, 1013 );
playSe( spep_1 + 25, 1010 );
playSe( spep_1 + 27, 1110 );
setSeVolume( spep_1 + 27, 1110, 79 );

--ダッシュ
playSe( spep_1 + 56, 1182 );
setSeVolume( spep_1 + 56, 1182, 79 );
playSe( spep_1 + 60, 44 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

------------------------------------------------------
-- 追い討ち(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
oiuchi_f = entryEffectLife( spep_2 + 0, SP_04x, 66, 0x100, -1, 0, 0, 0 );  --追い討ち(ef_004)
setEffMoveKey( spep_2 + 0, oiuchi_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, oiuchi_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, oiuchi_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 66, oiuchi_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, oiuchi_f, 0 );
setEffRotateKey( spep_2 + 66, oiuchi_f, 0 );
setEffAlphaKey( spep_2 + 0, oiuchi_f, 255 );
setEffAlphaKey( spep_2 + 66, oiuchi_f, 255 );

oiuchi_b = entryEffectLife( spep_2 + 0, SP_05, 66, 0x80, -1, 0, 0, 0 );  --追い討ち(ef_005)
setEffMoveKey( spep_2 + 0, oiuchi_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, oiuchi_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, oiuchi_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, oiuchi_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, oiuchi_b, 0 );
setEffRotateKey( spep_2 + 66, oiuchi_b, 0 );
setEffAlphaKey( spep_2 + 0, oiuchi_b, 255 );
setEffAlphaKey( spep_2 + 66, oiuchi_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 68, 1, 0 );
changeAnime( spep_2 + 0, 1, 105 );

setMoveKey( spep_2 + 0, 1, 14.8, -162 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 14.3, -144.8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 14.1, -130 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 13.7, -116.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 13.4, -103.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 13.3, -92.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 13.1, -82.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 12.8, -71.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 12.7, -62.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 12.6, -54.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 12.4, -47 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 12.4, -38.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 12.2, -31.8 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 12.3, -25.9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 12.1, -18.4 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 12.2, -13.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -9.2, -62.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 23, 18.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 45.3, -32 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -33.9, 6.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 4.2, -22.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 18.4, -7.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 10.8, -18.6 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 3.5, -13.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 1.6, -20.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 0, -29.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 7.2, -23.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 14.6, -18 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 7.5, -26.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 9.8, -24.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 12.5, -23.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 8, -19.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 3.9, -17.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 6.2, -21.7 , 0 );

setScaleKey( spep_2 + 0, 1, 3.76, 3.76 );
setScaleKey( spep_2 -3 + 4, 1, 3.46, 3.46 );
setScaleKey( spep_2 -3 + 6, 1, 3.18, 3.18 );
setScaleKey( spep_2 -3 + 8, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 10, 1, 2.7, 2.7 );
setScaleKey( spep_2 -3 + 12, 1, 2.48, 2.48 );
setScaleKey( spep_2 -3 + 14, 1, 2.28, 2.28 );
setScaleKey( spep_2 -3 + 16, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 18, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 20, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 22, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 26, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 30, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 32, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 34, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 36, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 38, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 40, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 42, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 44, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 46, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 48, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 50, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 52, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 54, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 56, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 58, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 62, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 64, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 68, 1, 0.47, 0.47 );

setRotateKey( spep_2 + 0, 1, 9.8 );
setRotateKey( spep_2 -3 + 68, 1, 9.8 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 68, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 66 -6, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--パンチ
playSe( spep_2 + 26, 1003 );
setSeVolume( spep_2 + 26, 1003, 79 );
playSe( spep_2 + 31, 1009 );
SE1 = playSe( spep_2 + 34, 1187 );
setSeVolume( spep_2 + 34, 1187, 50 );
playSe( spep_2 + 37, 1169 );
setSeVolume( spep_2 + 37, 1169, 79 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;

------------------------------------------------------
-- 敵から距離をとる(106F)
------------------------------------------------------

-- ** エフェクト等 ** --
kyori = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 );  --敵から距離をとる(ef_006)
setEffMoveKey( spep_3 + 0, kyori, 0, 0 , 0 );
setEffMoveKey( spep_3 + 106, kyori, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kyori, -1.0, 1.0 );
setEffScaleKey( spep_3 + 106, kyori, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kyori, 0 );
setEffRotateKey( spep_3 + 106, kyori, 0 );
setEffAlphaKey( spep_3 + 0, kyori, 255 );
setEffAlphaKey( spep_3 + 106, kyori, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 106 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 108, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--パンチ
setSeVolume( spep_3 + 6, 1187, 50 );
setSeVolume( spep_3 + 12, 1187, 32 );
setSeVolume( spep_3 + 18, 1187, 14 );
setSeVolume( spep_3 + 23, 1187, 0 );
stopSe( spep_3 + 23, SE1, 0 );

--バク宙
SE2 = playSe( spep_3 + 0, 1117 );
setSeVolume( spep_3 + 0, 1117, 0 );
setSeVolume( spep_3 + 12, 1117, 10 );
setSeVolume( spep_3 + 15, 1117, 71 );
setSeVolume( spep_3 + 27, 1117, 71 );
setSeVolume( spep_3 + 34, 1117, 46 );
setSeVolume( spep_3 + 38, 1117, 24 );
setSeVolume( spep_3 + 40, 1117, 0 );
stopSe( spep_3 + 40, SE2, 0 );

SE3 = playSe( spep_3 + 6, 1197 );
setSeVolume( spep_3 + 6, 1197, 126 );
setSeVolume( spep_3 + 11, 1197, 126 );
setSeVolume( spep_3 + 14, 1197, 56 );
setSeVolume( spep_3 + 17, 1197, 0 );
stopSe( spep_3 + 17, SE3, 0 );

playSe( spep_3 + 6, 1192 );
setSeVolume( spep_3 + 6, 1192, 178 );

SE4 = playSe( spep_3 + 37, 1197 );
setSeVolume( spep_3 + 37, 1197, 126 );
setSeVolume( spep_3 + 42, 1197, 126 );
setSeVolume( spep_3 + 46, 1197, 68 );
setSeVolume( spep_3 + 48, 1197, 0 );
stopSe( spep_3 + 48, SE4, 0 );

playSe( spep_3 + 37, 1192 );
setSeVolume( spep_3 + 37, 1192, 178 );

SE5 = playSe( spep_3 + 44, 1117 );
setSeVolume( spep_3 + 44, 1117, 71 );
setSeVolume( spep_3 + 71, 1197, 71 );
setSeVolume( spep_3 + 84, 1197, 42 );
setSeVolume( spep_3 + 97, 1197, 0 );
stopSe( spep_3 + 97, SE5, 0 );

--溜め
SE6 = playSe( spep_3 + 70, 1239 );
setSeVolume( spep_3 + 70, 1239, 0 );

playSe( spep_3 + 89, 1043 );
setSeVolume( spep_3 + 89, 1043, 0 );

--着地
playSe( spep_3 + 88, 1106 );
playSe( spep_3 + 89, 1108 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 106;

------------------------------------------------------
-- 構える→気円斬(166F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamaeru = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --構える→気円斬(ef_007)
setEffMoveKey( spep_4 + 0, kamaeru, 0, 0 , 0 );
setEffMoveKey( spep_4 + 166, kamaeru, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kamaeru, -1.0, 1.0 );
setEffScaleKey( spep_4 + 166, kamaeru, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kamaeru, 0 );
setEffRotateKey( spep_4 + 166, kamaeru, 0 );
setEffAlphaKey( spep_4 + 0, kamaeru, 255 );
setEffAlphaKey( spep_4 + 166, kamaeru, 255 );

spep_x = spep_4 + 66;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 166 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--溜め
setSeVolume( spep_4 + 59, 1239, 10 );
setSeVolume( spep_4 + 60, 1239, 72 );
setSeVolume( spep_4 + 61, 1239, 141 );

setSeVolume( spep_4 + 15, 1043, 10 );
setSeVolume( spep_4 + 18, 1043, 68 );
setSeVolume( spep_4 + 20, 1043, 100 );

SE7 = playSe( spep_4 + 16, 1147 ); 
stopSe( spep_4 + 75, SE7, 0 );

SE8 = playSe( spep_4 + 60, 1240 ); 
setSeVolume( spep_4 + 60, 1240, 141 );

--手を上げる
playSe( spep_4 + 8, 1003 ); 
setSeVolume( spep_4 + 8, 1003, 63 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 166;

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

--溜め
stopSe( spep_5 + 0, SE6, 0 );
stopSe( spep_5 + 0, SE8, 0 );

--発射
SE9 = playSe( spep_5 + 75, 1242 );
setSeVolume( spep_5 + 75, 1242, 0 );
setSeVolume( spep_5 + 89, 1242, 10 );
setSeVolume( spep_5 + 92, 1242, 60 );

playSe( spep_5 + 90, 1241 );
setSeVolume( spep_5 + 90, 1241, 158 );

SE10 = playSe( spep_5 + 90, 1177 );
setSeVolume( spep_5 + 90, 1177, 56 );

playSe( spep_5 + 90, 1027 );
setSeVolume( spep_5 + 90, 1027, 79 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_6 = spep_5 + 94;

------------------------------------------------------
-- 気円斬投げる(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
nageru = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 );  --気円斬投げる(ef_008)
setEffMoveKey( spep_6 + 0, nageru, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, nageru, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, nageru, -1.0, 1.0 );
setEffScaleKey( spep_6 + 56, nageru, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, nageru, 0 );
setEffRotateKey( spep_6 + 56, nageru, 0 );
setEffAlphaKey( spep_6 + 0, nageru, 255 );
setEffAlphaKey( spep_6 + 55, nageru, 255 );
setEffAlphaKey( spep_6 + 56, nageru, 0 );

-- ** 音 ** --
--発射
setSeVolume( spep_6 + 0, 1242, 158 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

------------------------------------------------------
-- 気円斬が敵に迫る(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --気円斬が敵に迫る(ef_009)
setEffMoveKey( spep_7 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 56, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, semaru_f, 0 );
setEffRotateKey( spep_7 + 56, semaru_f, 0 );
setEffAlphaKey( spep_7 + 0, semaru_f, 255 );
setEffAlphaKey( spep_7 + 55, semaru_f, 255 );
setEffAlphaKey( spep_7 + 56, semaru_f, 0 );

semaru_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --気円斬が敵に迫る(ef_010)
setEffMoveKey( spep_7 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 56, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, semaru_b, 0 );
setEffRotateKey( spep_7 + 56, semaru_b, 0 );
setEffAlphaKey( spep_7 + 0, semaru_b, 255 );
setEffAlphaKey( spep_7 + 55, semaru_b, 255 );
setEffAlphaKey( spep_7 + 56, semaru_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 56, 1, 0 );
changeAnime( spep_7 + 0, 1, 104 );

setMoveKey( spep_7 + 0, 1, 268.3, -112.3 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 250.1, -109.2 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 274.9, -134.6 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 252.9, -132.9 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 230.9, -131.2 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 254.3, -90.1 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 250, -101.5 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 245.8, -112.7 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 211.7, -90.4 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 217.8, -105.4 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 224.4, -120.5 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 216.8, -115.4 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 209.6, -110.5 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 202.7, -105.5 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 196.2, -104.8 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 189.9, -104 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 184.1, -103.4 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 175.8, -109.4 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 167.7, -115.5 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 160.1, -121.7 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 166.8, -113.2 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 173.6, -104.7 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 180.8, -96.1 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 168, -92.6 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 155.6, -89.2 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 143.3, -85.9 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 148.7, -91.8 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 154.4, -97.6 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 160.4, -103.5 , 0 );
setMoveKey( spep_7 + 56, 1, 160.4, -103.5 , 0 );

setScaleKey( spep_7 + 0, 1, 0.78, 0.78 );
setScaleKey( spep_7 -3 + 4, 1, 0.89, 0.89 );
setScaleKey( spep_7 -3 + 6, 1, 1, 1 );
setScaleKey( spep_7 -3 + 8, 1, 1.11, 1.11 );
setScaleKey( spep_7 -3 + 10, 1, 1.21, 1.21 );
setScaleKey( spep_7 -3 + 12, 1, 1.31, 1.31 );
setScaleKey( spep_7 -3 + 14, 1, 1.41, 1.41 );
setScaleKey( spep_7 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 18, 1, 1.58, 1.58 );
setScaleKey( spep_7 -3 + 20, 1, 1.66, 1.66 );
setScaleKey( spep_7 -3 + 22, 1, 1.74, 1.74 );
setScaleKey( spep_7 -3 + 24, 1, 1.82, 1.82 );
setScaleKey( spep_7 -3 + 26, 1, 1.88, 1.88 );
setScaleKey( spep_7 -3 + 28, 1, 1.95, 1.95 );
setScaleKey( spep_7 -3 + 30, 1, 2.01, 2.01 );
setScaleKey( spep_7 -3 + 32, 1, 2.07, 2.07 );
setScaleKey( spep_7 -3 + 34, 1, 2.11, 2.11 );
setScaleKey( spep_7 -3 + 36, 1, 2.16, 2.16 );
setScaleKey( spep_7 -3 + 38, 1, 2.2, 2.2 );
setScaleKey( spep_7 -3 + 40, 1, 2.24, 2.24 );
setScaleKey( spep_7 -3 + 42, 1, 2.28, 2.28 );
setScaleKey( spep_7 -3 + 44, 1, 2.32, 2.32 );
setScaleKey( spep_7 -3 + 46, 1, 2.34, 2.34 );
setScaleKey( spep_7 -3 + 48, 1, 2.36, 2.36 );
setScaleKey( spep_7 -3 + 50, 1, 2.38, 2.38 );
setScaleKey( spep_7 -3 + 52, 1, 2.4, 2.4 );
setScaleKey( spep_7 -3 + 54, 1, 2.41, 2.41 );
setScaleKey( spep_7 -3 + 56, 1, 2.42, 2.42 );
setScaleKey( spep_7 + 56, 1, 2.42, 2.42 );

setRotateKey( spep_7 + 0, 1, 9.8 );
setRotateKey( spep_7 + 56, 1, 9.8 );

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 56;

------------------------------------------------------
-- 斬撃エフェクト(36F)
------------------------------------------------------

-- ** エフェクト等 ** --
kiru = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --斬撃エフェクト(ef_011)
setEffMoveKey( spep_8 + 0, kiru, 0, 0 , 0 );
setEffMoveKey( spep_8 + 36, kiru, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, kiru, 1.0, 1.0 );
setEffScaleKey( spep_8 + 36, kiru, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kiru, 0 );
setEffRotateKey( spep_8 + 36, kiru, 0 );
setEffAlphaKey( spep_8 + 0, kiru, 255 );
setEffAlphaKey( spep_8 + 36, kiru, 255 );

-- ** 音 ** --
--発射
stopSe( spep_8 + 2, SE8, 0 );
stopSe( spep_8 + 2, SE10, 0 );

--着弾
playSe( spep_8 + 0, 1061 );
playSe( spep_8 + 7, 1032 );
setSeVolume( spep_8 + 7, 1032, 71 );
playSe( spep_8 + 12, 1031 );
setSeVolume( spep_8 + 12, 1031, 56 );
playSe( spep_8 + 12, 1238 );

--岩に向かう
SE11 = playSe( spep_8 + 0, 1121 );
setSeVolume( spep_8 + 0, 1121, 0 );

-- ** 背景 ** --
entryFadeBg( spep_8 + 0, 0, 38, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 36;

------------------------------------------------------
-- 気円斬が岩山を斬る(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --気円斬が岩山を斬る(ef_012)
setEffMoveKey( spep_9 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 126, finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 126, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 126, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 126, finish, 255 );

-- ** 音 ** --
--岩に向かう
setSeVolume( spep_9 + 0, 1121, 10 );
setSeVolume( spep_9 + 5, 1121, 71 );
stopSe( spep_9 + 61, SE11, 0 );

SE12 = playSe( spep_9 + 2, 1241 );
setSeVolume( spep_9 + 2, 1241, 40 );
stopSe( spep_9 + 61, SE12, 0 );

SE13 = playSe( spep_9 + 2, 1242 );
setSeVolume( spep_9 + 2, 1242, 50 );
stopSe( spep_9 + 61, SE13, 0 );

--岩切れる
playSe( spep_9 + 37, 1209 );
setSeVolume( spep_9 + 37, 1209, 0 );
setSeVolume( spep_9 + 52, 1209, 10 );
setSeVolume( spep_9 + 54, 1209, 38 );
setSeVolume( spep_9 + 55, 1209, 56 );
setSeVolume( spep_9 + 71, 1209, 56 );
setSeVolume( spep_9 + 89, 1209, 48 );
setSeVolume( spep_9 + 102, 1209, 40 );
setSeVolume( spep_9 + 118, 1209, 34 );
setSeVolume( spep_9 + 127, 1209, 30 );

playSe( spep_9 + 48, 1142 );

SE14 = playSe( spep_9 + 51, 1235 );
setSeVolume( spep_9 + 51, 1235, 32 );
setSeVolume( spep_9 + 64, 1235, 32 );
setSeVolume( spep_9 + 72, 1235, 28 );
setSeVolume( spep_9 + 78, 1235, 22 );
setSeVolume( spep_9 + 84, 1235, 16 );
setSeVolume( spep_9 + 90, 1235, 10 );
setSeVolume( spep_9 + 98, 1235, 6 );
setSeVolume( spep_9 + 101, 1235, 0 );
stopSe( spep_9 + 101, SE14, 0 );

-- ** 背景 ** --
entryFadeBg( spep_9 + 0, 0, 128, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 20 );
endPhase( spep_9 + 124 );

end
--1013390  グレートサイヤマン1号2号_ツインジャスティスラッシュ_sp1192

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SP_01 = 151973  --突進
SP_02 = 151974  --格闘
SP_03 = 151975  --突進2
SP_04 = 151976  --ダブルパンチ
SP_05 = 151977  --被弾
SP_06 = 151978  --敵：格闘
SP_07 = 151979  --敵：突進２
SP_08 = 151980  --敵：ダブルパンチ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵

setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 突進(80F)
------------------------------------------------------
spep_1 = 0;

shuchusen1 = entryEffectLife( spep_1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.01,  1.01);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffScaleKey(  spep_1+80,  shuchusen1,  1.01,  1.01);
setEffMoveKey(  spep_1+80,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+80,  shuchusen1,  0);
setEffAlphaKey(  spep_1+80,  shuchusen1,  255);

--書き文字
ct_gyun = entryEffectLife( spep_1+57,  10007, 23, 0x100, -1, 0, 41.8, 188.5 );  --ギュンッ

setEffMoveKey( spep_1+57, ct_gyun, 41.8, 188.5 , 0 );
setEffMoveKey( spep_1+80, ct_gyun, 92.1, 274.3 , 0 );
setEffScaleKey( spep_1+57, ct_gyun, 1.6, 1.6 );
setEffScaleKey( spep_1+59, ct_gyun, 2.55, 2.55 );
setEffScaleKey( spep_1+61, ct_gyun, 3.23, 3.23 );
setEffScaleKey( spep_1+63, ct_gyun, 3.63, 3.63 );
setEffScaleKey( spep_1+65, ct_gyun, 3.63, 3.63 );
setEffScaleKey( spep_1+68, ct_gyun, 3.9, 3.9 );
setEffScaleKey( spep_1+73, ct_gyun, 3.94, 3.94 );
setEffScaleKey( spep_1+76, ct_gyun, 4.06, 4.06 );
setEffScaleKey( spep_1+79, ct_gyun, 4.11, 4.11 );
setEffScaleKey( spep_1+80, ct_gyun, 4.19, 4.19 );
setEffRotateKey( spep_1+57, ct_gyun, 23.4 );
setEffRotateKey( spep_1+80, ct_gyun, 21.5 );
setEffAlphaKey( spep_1+57, ct_gyun, 255 );
setEffAlphaKey( spep_1+80, ct_gyun, 255 );

tosshin = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin,  0,  0);
setEffRotateKey(  spep_1,  tosshin,  0);
setEffAlphaKey(  spep_1,  tosshin,  255);
setEffScaleKey(  spep_1+80,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_1+80,  tosshin,  0,  0);
setEffRotateKey(  spep_1+80,  tosshin,  0);
setEffAlphaKey(  spep_1+80,  tosshin,  255);

playSe(  spep_1,  9);  --ダッシュ

entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 220);          -- 黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase( SP_dodge+10);

do return end
else end

-- ** ホワイトフェード ** --
entryFade( spep_1+74, 3, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 格闘(420F)
------------------------------------------------------

spep_2 = spep_1+81;

ryu1 = entryEffectLife(  spep_2,  920,  420,  0x80,  -1,  0,  0,  0);  --流線横

setEffScaleKey(  spep_2,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2,  ryu1,  0,  0);
setEffRotateKey(  spep_2,  ryu1,  0);
setEffAlphaKey(  spep_2,  ryu1,  0);
setEffScaleKey(  spep_2+21,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+21,  ryu1,  0,  0);
setEffRotateKey(  spep_2+21,  ryu1,  0);
setEffAlphaKey(  spep_2+21,  ryu1,  0);
setEffScaleKey(  spep_2+33,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+33,  ryu1,  0,  0);
setEffRotateKey(  spep_2+33,  ryu1,  0);
setEffAlphaKey(  spep_2+33,  ryu1,  150);
setEffScaleKey(  spep_2+175,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+175,  ryu1,  0,  0);
setEffRotateKey(  spep_2+175,  ryu1,  0);
setEffAlphaKey(  spep_2+175,  ryu1,  150);
setEffScaleKey(  spep_2+185,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+185,  ryu1,  0,  0);
setEffRotateKey(  spep_2+185,  ryu1,  0);
setEffAlphaKey(  spep_2+185,  ryu1,  0);
setEffScaleKey(  spep_2+379,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+379,  ryu1,  0,  0);
setEffRotateKey(  spep_2+379,  ryu1,  90);
setEffAlphaKey(  spep_2+379,  ryu1,  0);
setEffScaleKey(  spep_2+387,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+387,  ryu1,  0,  0);
setEffRotateKey(  spep_2+387,  ryu1,  90);
setEffAlphaKey(  spep_2+387,  ryu1,  255);
setEffScaleKey(  spep_2+420,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+420,  ryu1,  0,  0);
setEffRotateKey(  spep_2+420,  ryu1,  90);
setEffAlphaKey(  spep_2+420,  ryu1,  255);

--書き文字エントリー
ct_don = entryEffectLife( spep_2+23,  10019, 16, 0x100, -1, 0, -23.3, 168 );  --ドン
setEffShake(  spep_2+23,  ct_don,  16,  20);  --揺れ
setEffMoveKey( spep_2+23, ct_don, -23.3, 168 , 0 );
setEffMoveKey( spep_2+25, ct_don, -26.2, 185.3 , 0 );
setEffMoveKey( spep_2+27, ct_don, -13.5, 197.5 , 0 );
setEffMoveKey( spep_2+29, ct_don, -19.5, 205.6 , 0 );
setEffMoveKey( spep_2+33, ct_don, -20.3, 200.7 , 0 );
setEffMoveKey( spep_2+35, ct_don, -14.3, 206.2 , 0 );
setEffMoveKey( spep_2+39, ct_don, -15.6, 197.2 , 0 );
setEffScaleKey( spep_2+23, ct_don, 1, 1 );
setEffScaleKey( spep_2+25, ct_don, 1.27, 1.27 );
setEffScaleKey( spep_2+27, ct_don, 1.54, 1.54 );
setEffScaleKey( spep_2+33, ct_don, 1.59, 1.59 );
setEffScaleKey( spep_2+35, ct_don, 1.6, 1.6 );
setEffScaleKey( spep_2+39, ct_don, 1.61, 1.61 );
setEffRotateKey( spep_2+23, ct_don, 9 );
setEffRotateKey( spep_2+39, ct_don, 9 );
setEffAlphaKey( spep_2+23, ct_don, 255 );
setEffAlphaKey( spep_2+33, ct_don, 255 );
setEffAlphaKey( spep_2+35, ct_don, 170 );
setEffAlphaKey( spep_2+37, ct_don, 85 );
setEffAlphaKey( spep_2+39, ct_don, 0 );

ct_doga = entryEffectLife( spep_2+37, 10017 , 68, 0x100, -1, 0, 71.1, 166.4 );  --ドガガガ

setEffShake(  spep_2+37,  ct_doga,  68,  20);  --揺れ
setEffMoveKey( spep_2+37, ct_doga, 71.1, 166.4 , 0 );
setEffMoveKey( spep_2+39, ct_doga, 87.1, 173.1 , 0 );
setEffMoveKey( spep_2+41, ct_doga, 117, 177.2 , 0 );
setEffMoveKey( spep_2+43, ct_doga, 128.6, 180.3 , 0 );
setEffMoveKey( spep_2+47, ct_doga, 140, 182.2 , 0 );
setEffMoveKey( spep_2+91, ct_doga, 158.6, 175 , 0 );
setEffMoveKey( spep_2+93, ct_doga, 173, 183.2 , 0 );
setEffMoveKey( spep_2+105, ct_doga, 181.7, 206.4 , 0 );
setEffScaleKey( spep_2+37, ct_doga, 1.33, 1.33 );
setEffScaleKey( spep_2+43, ct_doga, 1.88, 1.88 );
setEffScaleKey( spep_2+45, ct_doga, 1.88, 1.88 );
setEffScaleKey( spep_2+47, ct_doga, 1.89, 1.89 );
setEffScaleKey( spep_2+49, ct_doga, 1.89, 1.89 );
setEffScaleKey( spep_2+99, ct_doga, 1.99, 1.99 );
setEffScaleKey( spep_2+101, ct_doga, 2.03, 2.03 );
setEffScaleKey( spep_2+105, ct_doga, 2.11, 2.11 );
setEffRotateKey( spep_2+37, ct_doga, 10.5 );
setEffRotateKey( spep_2+105, ct_doga, 10.5 );
setEffAlphaKey( spep_2+37, ct_doga, 255 );
setEffAlphaKey( spep_2+99, ct_doga, 255 );
setEffAlphaKey( spep_2+101, ct_doga, 170 );
setEffAlphaKey( spep_2+103, ct_doga, 85 );
setEffAlphaKey( spep_2+105, ct_doga, 0 );


ct_zun = entryEffectLife( spep_2+151,  10016, 22, 0x100, -1, 0, -35.9, 163.2 ); --ズンッ

setEffMoveKey( spep_2+151, ct_zun, -35.9, 163.2 , 0 );
setEffMoveKey( spep_2+153, ct_zun, -71, 253 , 0 );
setEffMoveKey( spep_2+159, ct_zun, -99.8, 325.9 , 0 );
setEffMoveKey( spep_2+161, ct_zun, -100.6, 327.2 , 0 );
setEffMoveKey( spep_2+163, ct_zun, -101.4, 328.5 , 0 );
setEffMoveKey( spep_2+173, ct_zun, -109.1, 340.3 , 0 );
setEffScaleKey( spep_2+151, ct_zun, 1, 1 );
setEffScaleKey( spep_2+153, ct_zun, 2.11, 2.11 );
setEffScaleKey( spep_2+159, ct_zun, 3.01, 3.01 );
setEffScaleKey( spep_2+161, ct_zun, 3.02, 3.02 );
setEffScaleKey( spep_2+163, ct_zun, 3.04, 3.04 );
setEffScaleKey( spep_2+173, ct_zun, 3.19, 3.19 );
setEffRotateKey( spep_2+151, ct_zun, -14.8 );
setEffRotateKey( spep_2+173, ct_zun, -14.8 );
setEffAlphaKey( spep_2+151, ct_zun, 255 );
setEffAlphaKey( spep_2+167, ct_zun, 255 );
setEffAlphaKey( spep_2+169, ct_zun, 170 );
setEffAlphaKey( spep_2+171, ct_zun, 85 );
setEffAlphaKey( spep_2+173, ct_zun, 0 );

ct_ba = entryEffectLife( spep_2+211,  10022, 22, 0x100, -1, 0, 163.2, 348.6 );  --バッ

setEffMoveKey( spep_2+211, ct_ba, 163.2, 348.6 , 0 );
setEffMoveKey( spep_2+213, ct_ba, 175.2, 382 , 0 );
setEffMoveKey( spep_2+215, ct_ba, 179.2, 393.1 , 0 );
setEffMoveKey( spep_2+229, ct_ba, 181.5, 399.1 , 0 );
setEffMoveKey( spep_2+231, ct_ba, 185.4, 410.1 , 0 );
setEffMoveKey( spep_2+233, ct_ba, 192.1, 428.4 , 0 );
setEffScaleKey( spep_2+211, ct_ba, 1.11, 1.11 );
setEffScaleKey( spep_2+233, ct_ba, 1.45, 1.45 );
setEffRotateKey( spep_2+211, ct_ba, 22.2 );
setEffRotateKey( spep_2+233, ct_ba, 22.2 );
setEffAlphaKey( spep_2+211, ct_ba, 255 );
setEffAlphaKey( spep_2+227, ct_ba, 255 );
setEffAlphaKey( spep_2+229, ct_ba, 227 );
setEffAlphaKey( spep_2+231, ct_ba, 142 );
setEffAlphaKey( spep_2+233, ct_ba, 0 );

ct_ga = entryEffectLife( spep_2+227,  10005, 16, 0x100, -1, 0, 180.1, 118.9 );  --ガッ

setEffShake(  spep_2+227,  ct_ga,  16,  20);  --揺れ
setEffMoveKey( spep_2+227, ct_ga, 180.1, 118.9 , 0 );
setEffMoveKey( spep_2+243, ct_ga, 163.5, 150.7 , 0 );
setEffScaleKey( spep_2+227, ct_ga, 1.25, 1.25 );
setEffScaleKey( spep_2+243, ct_ga, 1.76, 1.76 );
setEffRotateKey( spep_2+227, ct_ga, 3 );
setEffRotateKey( spep_2+243, ct_ga, 3 );
setEffAlphaKey( spep_2+227, ct_ga, 255 );
setEffAlphaKey( spep_2+239, ct_ga, 255 );
setEffAlphaKey( spep_2+241, ct_ga, 64 );
setEffAlphaKey( spep_2+243, ct_ga, 0 );

ct_baki = entryEffectLife( spep_2+253,  10020, 18, 0x100, -1, 0, 34.6, 177.3 );  --バキッ

setEffShake(  spep_2+253,  ct_baki,  18,  10);  --揺れ
setEffMoveKey( spep_2+253, ct_baki, 34.6, 177.3 , 0 );
setEffMoveKey( spep_2+255, ct_baki, 26.4, 185.3 , 0 );
setEffMoveKey( spep_2+269, ct_baki, 19.7, 210.6 , 0 );
setEffMoveKey( spep_2+271, ct_baki, 21.5, 213.8 , 0 );
setEffScaleKey( spep_2+253, ct_baki, 1.25, 1.25 );
setEffScaleKey( spep_2+267, ct_baki, 1.5, 1.5 );
setEffScaleKey( spep_2+269, ct_baki, 1.7, 1.7 );
setEffScaleKey( spep_2+271, ct_baki, 1.76, 1.76 );
setEffRotateKey( spep_2+253, ct_baki, -4 );
setEffRotateKey( spep_2+271, ct_baki, -4 );
setEffAlphaKey( spep_2+253, ct_baki, 255 );
setEffAlphaKey( spep_2+267, ct_baki, 255 );
setEffAlphaKey( spep_2+269, ct_baki, 64 );
setEffAlphaKey( spep_2+271, ct_baki, 0 );

ct_zun2 = entryEffectLife( spep_2+297,  10016, 18, 0x100, -1, 0, 1.6, 261.5 );  --ズン(2号肘打ち)

setEffMoveKey( spep_2+297, ct_zun2, 1.6, 261.5 , 0 );
setEffMoveKey( spep_2+299, ct_zun2, 2.1, 315.3 , 0 );
setEffMoveKey( spep_2+315, ct_zun2, -2.4, 357.2 , 0 );
setEffScaleKey( spep_2+297, ct_zun2, 2.24, 2.24 );
setEffScaleKey( spep_2+309, ct_zun2, 3.13, 3.13 );
setEffScaleKey( spep_2+311, ct_zun2, 3.16, 3.16 );
setEffScaleKey( spep_2+313, ct_zun2, 3.24, 3.24 );
setEffScaleKey( spep_2+315, ct_zun2, 3.31, 3.31 );
setEffRotateKey( spep_2+297, ct_zun2, -5.5 );
setEffRotateKey( spep_2+315, ct_zun2, -5.5 );
setEffAlphaKey( spep_2+297, ct_zun2, 255 );
setEffAlphaKey( spep_2+311, ct_zun2, 255 );
setEffAlphaKey( spep_2+313, ct_zun2, 128 );
setEffAlphaKey( spep_2+315, ct_zun2, 0 );

ct_bago= entryEffectLife( spep_2+365,  10021, 22, 0x100, -1, 0, 39.7, 201.5 );  --バゴォ

setEffShake(  spep_2+365,  ct_bago,  22,  20);  --揺れ
setEffMoveKey( spep_2+365, ct_bago, 39.7, 201.5 , 0 );
setEffMoveKey( spep_2+367, ct_bago, 14.6, 240.6 , 0 );
setEffMoveKey( spep_2+385, ct_bago, 14, 301.4 , 0 );
setEffMoveKey( spep_2+387, ct_bago, 11.5, 316.3 , 0 );
setEffScaleKey( spep_2+365, ct_bago, 1.88, 1.88 );
setEffScaleKey( spep_2+367, ct_bago, 2.37, 2.37 );
setEffScaleKey( spep_2+369, ct_bago, 2.53, 2.53 );
setEffScaleKey( spep_2+383, ct_bago, 2.73, 2.73 );
setEffScaleKey( spep_2+385, ct_bago, 2.82, 2.82 );
setEffScaleKey( spep_2+387, ct_bago, 2.96, 2.96 );
setEffRotateKey( spep_2+365, ct_bago, -11.7 );
setEffRotateKey( spep_2+369, ct_bago, -15.6 );
setEffRotateKey( spep_2+387, ct_bago, -15.6 );
setEffAlphaKey( spep_2+365, ct_bago, 255 );
setEffAlphaKey( spep_2+381, ct_bago, 255 );
setEffAlphaKey( spep_2+383, ct_bago, 227 );
setEffAlphaKey( spep_2+385, ct_bago, 142 );
setEffAlphaKey( spep_2+387, ct_bago, 0 );


kakutou = entryEffect(  spep_2,  SP_02,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_2,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_2,  kakutou,  0,  0);
setEffRotateKey(  spep_2,  kakutou,  0);
setEffAlphaKey(  spep_2,  kakutou,  255);
setEffScaleKey(  spep_2+420,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_2+420,  kakutou,  0,  0);
setEffRotateKey(  spep_2+420,  kakutou,  0);
setEffAlphaKey(  spep_2+420,  kakutou,  255);

shuchusen2 = entryEffectLife( spep_2, 906, 420, 0x100,  -1, 0,  0,  0);   -- 集中線 

setEffScaleKey(  spep_2,  shuchusen2,  1.77,  2.28);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffScaleKey(  spep_2+20,  shuchusen2,  1.77,  2.88);
setEffMoveKey(  spep_2+20,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+20,  shuchusen2,  0);
setEffAlphaKey(  spep_2+20,  shuchusen2,  255);
setEffScaleKey(  spep_2+21,  shuchusen2,  1.34,  1.36);
setEffMoveKey(  spep_2+21,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+21,  shuchusen2,  0);
setEffAlphaKey(  spep_2+21,  shuchusen2,  255);
setEffScaleKey(  spep_2+54,  shuchusen2,  1.34,  1.36);
setEffMoveKey(  spep_2+54,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+54,  shuchusen2,  0);
setEffAlphaKey(  spep_2+54,  shuchusen2,  255);
setEffScaleKey(  spep_2+56,  shuchusen2,  1.61,  1.63);
setEffMoveKey(  spep_2+56,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+56,  shuchusen2,  0);
setEffAlphaKey(  spep_2+56,  shuchusen2,  255);
setEffScaleKey(  spep_2+209,  shuchusen2,  1.61,  1.63);
setEffMoveKey(  spep_2+209,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+209,  shuchusen2,  0);
setEffAlphaKey(  spep_2+209,  shuchusen2,  255);
setEffScaleKey(  spep_2+210,  shuchusen2,  1.40,  1.42);
setEffMoveKey(  spep_2+210,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+210,  shuchusen2,  0);
setEffAlphaKey(  spep_2+210,  shuchusen2,  255);
setEffScaleKey(  spep_2+234,  shuchusen2,  1.74,  1.76);
setEffMoveKey(  spep_2+234,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+234,  shuchusen2,  0);
setEffAlphaKey(  spep_2+234,  shuchusen2,  255);
setEffScaleKey(  spep_2+298,  shuchusen2,  1.74,  1.76);
setEffMoveKey(  spep_2+298,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+298,  shuchusen2,  0);
setEffAlphaKey(  spep_2+298,  shuchusen2,  255);
setEffScaleKey(  spep_2+302,  shuchusen2,  1.25,  1.27);
setEffMoveKey(  spep_2+302,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+302,  shuchusen2,  0);
setEffAlphaKey(  spep_2+302,  shuchusen2,  255);
setEffScaleKey(  spep_2+420,  shuchusen2,  1.25,  1.27);
setEffMoveKey(  spep_2+420,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+420,  shuchusen2,  0);
setEffAlphaKey(  spep_2+420,  shuchusen2,  255);

--敵の動き
setDisp( spep_2, 1, 1 );
changeAnime( spep_2, 1, 101 );  --構え

setShake(  spep_2,  1,  420,  10);  --揺れ
setMoveKey( spep_2, 1, 4.4, -1.1 , 0 );
setMoveKey( spep_2+22, 1, 4.4, -1.1 , 0 );
setScaleKey( spep_2, 1, 1.09, 1.09 );
setScaleKey( spep_2+22, 1, 1.09, 1.09 );
setRotateKey( spep_2, 1, 0 );
setRotateKey( spep_2+22, 1, 0 );

changeAnime( spep_2+23, 1, 106 );  --仰け反り


--ここはかえない
setMoveKey( spep_2+23, 1, 14, 31.9 , 0 );
setScaleKey( spep_2+23, 1, 1.61, 1.61 );
setRotateKey( spep_2+23, 1, -23 );

--ここからテスト

spep_2a = spep_2+4 --テスト


setMoveKey( spep_2+31, 1, 56.7, 23.5 , 0 );
setMoveKey( spep_2+37, 1, 28.9, 24.9 , 0 );
setMoveKey( spep_2+39, 1, 77, 28.2 , 0 );
setMoveKey( spep_2+41, 1, 97.4, 32.3 , 0 );
setMoveKey( spep_2+51, 1, 74, 32.8 , 0 );
setMoveKey( spep_2+53, 1, 134.5, 28.3 , 0 );
setMoveKey( spep_2+55, 1, 152.9, 41.5 , 0 );
setMoveKey( spep_2+57, 1, 149.7, 29.7 , 0 );
setMoveKey( spep_2+65, 1, 131.7, 37.9 , 0 );
setMoveKey( spep_2+67, 1, 207.3, 57.1 , 0 );
setMoveKey( spep_2+69, 1, 222.2, 50.1 , 0 );
setMoveKey( spep_2+73, 1, 208.2, 45.9 , 0 );
setMoveKey( spep_2+75, 1, 192.9, 52.2 , 0 );
setMoveKey( spep_2+79, 1, 183.2, 47.1 , 0 );
setMoveKey( spep_2+81, 1, 249.6, 56.8 , 0 );
setMoveKey( spep_2+93, 1, 218.7, 50.4 , 0 );
setMoveKey( spep_2+95, 1, 295.8, 54.8 , 0 );
setMoveKey( spep_2+99, 1, 315, 58.6 , 0 );
setMoveKey( spep_2+111, 1, 338.9, 55.8 , 0 );
setMoveKey( spep_2+113, 1, 333.1, 54 , 0 );
setMoveKey( spep_2+150, 1, 41.6, 29.5 , 0 );

setScaleKey( spep_2a+25, 1, 1.33, 1.33 );
setScaleKey( spep_2a+123, 1, 1.01, 1.01 );
setScaleKey( spep_2a+141, 1, 0.81, 0.81 );
setScaleKey( spep_2a+143, 1, 0.93, 0.93 );
setScaleKey( spep_2a+145, 1, 1.04, 1.04 );
setScaleKey( spep_2a+147, 1, 1.15, 1.15 );
setScaleKey( spep_2a+150, 1, 1.26, 1.26 );

setRotateKey( spep_2a+33, 1, -16 );
setRotateKey( spep_2a+37, 1, -22.3 );
setRotateKey( spep_2a+39, 1, -16 );
setRotateKey( spep_2a+41, 1, -14.7 );
setRotateKey( spep_2a+43, 1, -13.8 );
setRotateKey( spep_2a+51, 1, -16 );
setRotateKey( spep_2a+53, 1, -16 );
setRotateKey( spep_2a+61, 1, -13.3 );
setRotateKey( spep_2a+63, 1, -15.3 );
setRotateKey( spep_2a+67, 1, -16 );
setRotateKey( spep_2a+69, 1, -15 );
setRotateKey( spep_2a+71, 1, -14.3 );
setRotateKey( spep_2a+73, 1, -13.9 );
setRotateKey( spep_2a+75, 1, -13.8 );
setRotateKey( spep_2a+77, 1, -15.4 );
setRotateKey( spep_2a+79, 1, -16 );
setRotateKey( spep_2a+81, 1, -16 );
setRotateKey( spep_2a+83, 1, -13.9 );
setRotateKey( spep_2a+85, 1, -12.5 );
setRotateKey( spep_2a+87, 1, -11.6 );
setRotateKey( spep_2a+89, 1, -11.3 );
setRotateKey( spep_2a+91, 1, -14.8 );
setRotateKey( spep_2a+93, 1, -16 );
setRotateKey( spep_2a+95, 1, -16 );
setRotateKey( spep_2a+97, 1, -15.3 );
setRotateKey( spep_2a+150, 1, -8.2 );

changeAnime( spep_2+151, 1, 108 ); --くの字

setMoveKey( spep_2+151, 1, 58.5, 1.6 , 0 );

setMoveKey( spep_2+153, 1, 119.9, 3 , 0 );
setMoveKey( spep_2+157, 1, 217.2, -1.9 , 0 );
setMoveKey( spep_2+163, 1, 285.2, 2.3 , 0 );
setMoveKey( spep_2+169, 1, 290.8, 1.4 , 0 );
setMoveKey( spep_2+171, 1, 283.3, -6.5 , 0 );
setMoveKey( spep_2+173, 1, 245, -27.9 , 0 );
setMoveKey( spep_2+175, 1, 188.5, -55.6 , 0 );
setMoveKey( spep_2+177, 1, 156.1, -71.4 , 0 );
setMoveKey( spep_2+187, 1, 168, -75.7 , 0 );
setMoveKey( spep_2+189, 1, 172.8, -75.5 , 0 );
setMoveKey( spep_2+193, 1, 182.7, -75.1 , 0 );
setMoveKey( spep_2+199, 1, 198.2, -74.3 , 0 );
setMoveKey( spep_2+201, 1, 203.6, -74 , 0 );
setMoveKey( spep_2+226, 1, 235.1, -70.3 , 0 );

setScaleKey( spep_2a+154, 1, 1.63, 1.63 );
setScaleKey( spep_2a+156, 1, 1.39, 1.39 );
setScaleKey( spep_2a+158, 1, 1.54, 1.54 );
setScaleKey( spep_2a+182, 1, 1.1, 1.1 );
setScaleKey( spep_2+226, 1, 1.1, 1.1 );

setRotateKey( spep_2a+151, 1, -8.2 );
setRotateKey( spep_2a+172, 1, -8.2 );
setRotateKey( spep_2a+184, 1, 0.1 );
setRotateKey( spep_2a+208, 1, 10.2 );
setRotateKey( spep_2+226, 1, 14.5 );

changeAnime( spep_2+227, 1, 106 );  --仰け反り

setMoveKey( spep_2+227, 1, 144.8, -52.5 , 0 );
setMoveKey( spep_2+229, 1, 94.4, -45.2 , 0 );
setMoveKey( spep_2+235, 1, 28.4, -44.6 , 0 );
setMoveKey( spep_2+237, 1, 31, -40.7 , 0 );
setMoveKey( spep_2+249, 1, 7, -25.7 , 0 );
setMoveKey( spep_2+251, 1, 8.6, -27.5 , 0 );
setMoveKey( spep_2+255, 1, 16.1, -20.5 , 0 );
setMoveKey( spep_2+257, 1, 14.6, -30.8 , 0 );
setMoveKey( spep_2+259, 1, 22.3, -23.2 , 0 );
setMoveKey( spep_2+261, 1, 12.6, -19.4 , 0 );
setMoveKey( spep_2+263, 1, 17.8, -20.6 , 0 );
setMoveKey( spep_2+283, 1, 0, -7.8 , 0 );
setMoveKey( spep_2+293, 1, -2.4, -6.2 , 0 );
setMoveKey( spep_2+296, 1, -9, -6 , 0 );

setScaleKey( spep_2+227, 1, 0.97, 0.97 );
setScaleKey( spep_2a+243, 1, 1, 1 );
setScaleKey( spep_2+296, 1, 1.87, 1.87 );

setRotateKey( spep_2+227, 1, -37.6 );
setRotateKey( spep_2+255, 1, -37.1 );
setRotateKey( spep_2+257, 1, -36.5 );
setRotateKey( spep_2+296, 1, -31.7 );

changeAnime( spep_2+297, 1, 8 );  --2号肘打ち

setMoveKey( spep_2+297, 1, 1.2, -3.3 , 0 );
setMoveKey( spep_2+299, 1, 8.6, 5.4 , 0 );
setMoveKey( spep_2+301, 1, -4.5, 8.2 , 0 );
setMoveKey( spep_2+303, 1, 2.2, -1 , 0 );
setMoveKey( spep_2+305, 1, -14.4, 4.1 , 0 );
setMoveKey( spep_2+307, 1, -4.4, 3.1 , 0 );
setMoveKey( spep_2+309, 1, -12, 9.7 , 0 );
setMoveKey( spep_2+311, 1, -5.1, 4.9 , 0 );
setMoveKey( spep_2+313, 1, -17.6, 7.3 , 0 );
setMoveKey( spep_2+315, 1, -11.2, 2.4 , 0 );
setMoveKey( spep_2+317, 1, -15.3, 5.4 , 0 );
setMoveKey( spep_2+329, 1, -18.8, 5.4 , 0 );
setMoveKey( spep_2+331, 1, -21.9, -4.9 , 0 );
setMoveKey( spep_2+333, 1, -24.1, -30.9 , 0 );
setMoveKey( spep_2+335, 1, -23.9, -55.9 , 0 );
setMoveKey( spep_2+337, 1, -22.7, -63.1 , 0 );
setMoveKey( spep_2+364, 1, -28.1, -81.4 , 0 );

setScaleKey( spep_2+297, 1, 2.49, 2.49 );
setScaleKey( spep_2+331, 1, 2.14, 2.14 );
setScaleKey( spep_2a+333, 1, 1.88, 1.88 );
setScaleKey( spep_2a+335, 1, 1.48, 1.48 );
setScaleKey( spep_2a+339, 1, 1.13, 1.13 );
setScaleKey( spep_2a+361, 1, 1.13, 1.13 );
setScaleKey( spep_2a+364, 1, 1.44, 1.44 );
setRotateKey( spep_2+297, 1, 20 );
setRotateKey( spep_2+364, 1, 18 );

changeAnime( spep_2+365, 1, 108 ); --蹴り上げ

setMoveKey( spep_2+365, 1, -25.8, 9.2 , 0 );
setMoveKey( spep_2+367, 1, -12.9, 13.9 , 0 );
setMoveKey( spep_2+369, 1, -17.9, 34.4 , 0 );
setMoveKey( spep_2+371, 1, -13.8, 29 , 0 );
setMoveKey( spep_2+373, 1, -18.5, 45 , 0 );
setMoveKey( spep_2+375, 1, -17.2, 40.1 , 0 );
setMoveKey( spep_2+377, 1, -17.9, 57.4 , 0 );
setMoveKey( spep_2+379, 1, -13.8, 51.2 , 0 );
setMoveKey( spep_2+381, 1, -23.5, 53.8 , 0 );
setMoveKey( spep_2+383, 1, -13.7, 56.6 , 0 );
setMoveKey( spep_2+385, 1, -18.3, 124.3 , 0 );
setMoveKey( spep_2+389, 1, -20, 235.2 , 0 );
setMoveKey( spep_2+391, 1, -20.6, 279.3 , 0 );
setMoveKey( spep_2+393, 1, -21.1, 317.1 , 0 );
setMoveKey( spep_2+401, 1, -22, 421.1 , 0 );
setMoveKey( spep_2+413, 1, -22.1, 494.3 , 0 );
setMoveKey( spep_2+419, 1, -22.1, 2000 , 0 );
setMoveKey( spep_2+420, 1, -22.1, 2000 , 0 );

setScaleKey( spep_2a+368, 1, 1.75, 1.75 );
setScaleKey( spep_2a+372, 1, 1.75, 1.75 );
setScaleKey( spep_2a+413, 1, 1.27, 1.27 );
setRotateKey( spep_2+365, 1, -93.2 );
setRotateKey( spep_2+387, 1, -100.5 );
setRotateKey( spep_2a+413, 1, -111 );

setDisp(  spep_2+415,  1,  0);  --敵非表示

--SE
playSe(  spep_2+23,  1000);
playSe(  spep_2+39,  1001);
playSe(  spep_2+53,  1007);
playSe(  spep_2+68,  1000);
playSe(  spep_2+81,  1001);
playSe(  spep_2+95,  1000);
playSe(  spep_2+151,  1009);  --1号強めのパンチ

playSe(  spep_2+227,  1000);
playSe(  spep_2+253,  1001);
playSe(  spep_2+297,  1010);--2号ひじうち

playSe(  spep_2+365,  1060); --蹴り上げ

entryFadeBg( spep_2, 0, 420, 0, 0, 0, 0, 220);          -- 黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2+297, 0, 1, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade(肘打ち)
entryFade( spep_2+412, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_3 = spep_2+420;

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

-- ** ホワイトフェード ** --
entryFade( spep_3+78, 10, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 突進2(104F)
------------------------------------------------------

spep_4 = spep_3+90;

shuchusen4 = entryEffectLife(  spep_4+30,  906,  74,  0x80,  -1,  0,  0,  0);
setEffScaleKey(  spep_4+30,  shuchusen4,  1.88,  1.94);
setEffMoveKey(  spep_4+30,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4+30, shuchusen4,  0);
setEffAlphaKey(  spep_4+30,  shuchusen4,  255);
setEffScaleKey(  spep_3+104,  shuchusen4,  1.88,  1.94);
setEffMoveKey(  spep_3+104,  shuchusen4,  0,  0);
setEffRotateKey(  spep_3+104,  shuchusen4,  0);
setEffAlphaKey(  spep_3+104,  shuchusen4,  255);

tosshin2 = entryEffect(  spep_4,  SP_03,  0x80,  -1,  0,  0,  0);  --突進2

setEffScaleKey(  spep_4,  tosshin2,  1.0,  1.0);
setEffMoveKey(  spep_4,  tosshin2,  0,  0);
setEffRotateKey(  spep_4,  tosshin2,  0);
setEffAlphaKey(  spep_4,  tosshin2,  255);
setEffScaleKey(  spep_4+104,  tosshin2,  1.0,  1.0);
setEffMoveKey(  spep_4+104,  tosshin2,  0,  0);
setEffRotateKey(  spep_4+104,  tosshin2,  0);
setEffAlphaKey(  spep_4+104,  tosshin2,  255);

-- カットイン
speff = entryEffect(  spep_4+17,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4+17,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4+30, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_4+30,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_4+30,  ctgogo,  0,  530);
setEffRotateKey(  spep_4+30,  ctgogo,  0);
setEffScaleKey(  spep_4+101,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_4+101,  ctgogo,  0,  530);
setEffRotateKey(  spep_4+101,  ctgogo,  0);

playSe(  spep_4,  9);
playSe(  spep_4+17,  SE_04);  --カットイン音

entryFadeBg( spep_4, 0, 104, 0, 0, 0, 0, 220);          -- 黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4+98, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ダブルパンチ(218F)
------------------------------------------------------

spep_5 = spep_4+104;

setDisp(  spep_5,  1,  0);  --敵非表示

shuchusen5 = entryEffectLife(  spep_5+89,  906,  100,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_5+89,  shuchusen5,  1.2,  1.2);
setEffMoveKey(  spep_5+89,  shuchusen5,  0,  0);
setEffRotateKey(  spep_5+89, shuchusen5,  0);
setEffAlphaKey(  spep_5+89,  shuchusen5,  255);
setEffScaleKey(  spep_5+189,  shuchusen5,  1.2,  1.2);
setEffMoveKey(  spep_5+189,  shuchusen5,  0,  0);
setEffRotateKey(  spep_5+189,  shuchusen5,  0);
setEffAlphaKey(  spep_5+189,  shuchusen5,  255);

ryu2 = entryEffectLife(  spep_5,  920,  190,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_5,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_5,  ryu2,  0,  0);
setEffRotateKey(  spep_5,  ryu2,  90);
setEffAlphaKey(  spep_5,  ryu2,  150);
setEffScaleKey(  spep_5+190,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_5+190,  ryu2,  0,  0);
setEffRotateKey(  spep_5+190,  ryu2,  90);
setEffAlphaKey(  spep_5+190,  ryu2,  150);



punch = entryEffect(  spep_5,  SP_04,  0x100,  -1,  0,  0,  0);  --ダブルパンチ

setEffScaleKey(  spep_5,  punch,  1.0,  1.0);
setEffMoveKey(  spep_5,  punch,  0,  0);
setEffRotateKey(  spep_5,  punch,  0);
setEffAlphaKey(  spep_5,  punch,  255);
setEffScaleKey(  spep_5+190,  punch,  1.0,  1.0);
setEffMoveKey(  spep_5+190,  punch,  0,  0);
setEffRotateKey(  spep_5+190,  punch,  0);
setEffAlphaKey(  spep_5+190,  punch,  255);
setEffScaleKey(  spep_5+191,  punch,  1.0,  1.0);
setEffMoveKey(  spep_5+191,  punch,  0,  0);
setEffRotateKey(  spep_5+191,  punch,  0);
setEffAlphaKey(  spep_5+191,  punch,  0);
setEffScaleKey(  spep_5+218,  punch,  1.0,  1.0);
setEffMoveKey(  spep_5+218,  punch,  0,  0);
setEffRotateKey(  spep_5+218,  punch,  0);
setEffAlphaKey(  spep_5+218,  punch,  0);


--敵の動き
setDisp(  spep_5+53,  1,  1);  --敵表示
changeAnime( spep_5+53, 1, 106 ); 
setShake(  spep_5+53,  1,  33,  20);  --揺れ
setMoveKey( spep_5+53, 1, -14.4, -22.3 , 0 );
setMoveKey( spep_5+55, 1, -13.4, 9.3 , 0 );
setMoveKey( spep_5+57, 1, -16.8, 2.7 , 0 );
setMoveKey( spep_5+59, 1, -14.7, 13.9 , 0 );
setMoveKey( spep_5+61, 1, -12.4, 35.7 , 0 );
setMoveKey( spep_5+63, 1, -16.3, 35.3 , 0 );
setMoveKey( spep_5+79, 1, -15.3, 110 , 0 );
setMoveKey( spep_5+81, 1, -13.5, 90.7 , 0 );
setMoveKey( spep_5+86, 1, -17.1, 23.1 , 0 );

setScaleKey( spep_5+53, 1, 1.23, 1.23 );
setScaleKey( spep_5+83, 1, 1.23, 1.23 );
setScaleKey( spep_5+86, 1, 1.48, 1.48 );

setRotateKey( spep_5+56, 1, -114 );
setRotateKey( spep_5+86, 1, -114 );


changeAnime( spep_5+87, 1, 108 );  --くの字
setShake(  spep_5+87,  1,  102,  20);  --揺れ
setMoveKey( spep_5+87, 1, -30.2, -60.1 , 0 );
setMoveKey( spep_5+89, 1, -23.8, -110.3 , 0 );
setMoveKey( spep_5+91, 1, -24.4, -49.6 , 0 );
setMoveKey( spep_5+93, 1, -26.3, -91.9 , 0 );
setMoveKey( spep_5+95, 1, -26.2, -39 , 0 );
setMoveKey( spep_5+97, 1, -27.7, -70.2 , 0 );
setMoveKey( spep_5+99, 1, -25.9, -29.6 , 0 );
setMoveKey( spep_5+101, 1, -29.1, -40.2 , 0 );
setMoveKey( spep_5+103, 1, -26.4, -51.9 , 0 );
setMoveKey( spep_5+105, 1, -24.8, -28.6 , 0 );
setMoveKey( spep_5+107, 1, -25.3, -9.6 , 0 );
setMoveKey( spep_5+109, 1, -27.9, -33.1 , 0 );
setMoveKey( spep_5+111, 1, -26.2, -16.2 , 0 );
setMoveKey( spep_5+113, 1, -26.2, -13.7 , 0 );
setMoveKey( spep_5+121, 1, -26.2, -9.2 , 0 );
setMoveKey( spep_5+123, 1, -21.7, 189.8 , 0 );
setMoveKey( spep_5+125, 1, -16.5, 282.9 , 0 );
setMoveKey( spep_5+127, 1, -16.8, 388.5 , 0 );
setMoveKey( spep_5+129, 1, -17.1, 478.2 , 0 );
setMoveKey( spep_5+131, 1, -17, 553.6 , 0 );
setMoveKey( spep_5+133, 1, -16.7, 616.3 , 0 );
setMoveKey( spep_5+135, 1, -16.5, 667.7 , 0 );
setMoveKey( spep_5+149, 1, -23.2, 806 , 0 );
setMoveKey( spep_5+150, 1, -23.2, 806 , 0 );  --追加
setMoveKey( spep_5+151, 1, -20.3, -692.8 , 0 );
setMoveKey( spep_5+163, 1, -29.3, -60.3 , 0 );
setMoveKey( spep_5+165, 1, -19.7, 31.1 , 0 );
setMoveKey( spep_5+167, 1, -27.8, 112.2 , 0 );
setMoveKey( spep_5+189, 1, -29.4, 736.7 , 0 );
setScaleKey( spep_5+87, 1, 2.25, 2.25 );
setScaleKey( spep_5+121, 1, 2.25, 2.25 );
setScaleKey( spep_5+123, 1, 1.85, 1.85 );
setScaleKey( spep_5+125, 1, 1.55, 1.55 );
setScaleKey( spep_5+149, 1, 1.55, 1.55 );
setScaleKey( spep_5+189, 1, 1.55, 1.55 );
setRotateKey( spep_5+87, 1, -95.1 );
setRotateKey( spep_5+121, 1, -95.1 );
setRotateKey( spep_5+123, 1, 34.7 );
setRotateKey( spep_5+125, 1, 144.3 );
setRotateKey( spep_5+127, 1, 237 );
setRotateKey( spep_5+129, 1, 315.2 );
setRotateKey( spep_5+131, 1, 380.8 );
setRotateKey( spep_5+133, 1, 435.5 );
setRotateKey( spep_5+135, 1, 480.6 );
setRotateKey( spep_5+137, 1, 517.1 );
setRotateKey( spep_5+139, 1, 546 );
setRotateKey( spep_5+141, 1, 568.2 );
setRotateKey( spep_5+143, 1, 584.3 );
setRotateKey( spep_5+145, 1, 595.1 );
setRotateKey( spep_5+147, 1, 601.1 );
setRotateKey( spep_5+149, 1, 603 );
setRotateKey( spep_5+151, 1, 603 );
setRotateKey( spep_5+153, 1, 640.9 );
setRotateKey( spep_5+155, 1, 678.8 );
setRotateKey( spep_5+157, 1, 716.7 );
setRotateKey( spep_5+159, 1, 754.6 );
setRotateKey( spep_5+161, 1, 792.5 );
setRotateKey( spep_5+163, 1, 830.4 );
setRotateKey( spep_5+165, 1, 868.3 );
setRotateKey( spep_5+167, 1, 906.2 );
setRotateKey( spep_5+169, 1, 944.1 );
setRotateKey( spep_5+171, 1, 981.9 );
setRotateKey( spep_5+173, 1, 1019.8 );
setRotateKey( spep_5+175, 1, 1057.7 );
setRotateKey( spep_5+177, 1, 1095.6 );
setRotateKey( spep_5+179, 1, 1133.5 );
setRotateKey( spep_5+181, 1, 1171.4 );
setRotateKey( spep_5+183, 1, 1209.3 );
setRotateKey( spep_5+185, 1, 1247.2 );
setRotateKey( spep_5+187, 1, 1285.1 );
setRotateKey( spep_5+189, 1, 1323 );

setDisp(  spep_5+190, 1, 0);  --敵非表示

--書き文字エントリー
ct_ka = entryEffectLife( spep_5+87,  10004, 32, 0x80, -1, 0, -26.1, 278.5 );  --カッ

setEffMoveKey( spep_5+87, ct_ka, -26.1, 278.5 , 0 );
setEffMoveKey( spep_5+119, ct_ka, -26, 278.5 , 0 );
setEffScaleKey( spep_5+87, ct_ka, 3.57, 3.57 );
setEffScaleKey( spep_5+119, ct_ka, 5.13, 5.13 );
setEffRotateKey( spep_5+87, ct_ka, 0 );
setEffRotateKey( spep_5+119, ct_ka, 0 );
setEffAlphaKey( spep_5+87, ct_ka, 255 );
setEffAlphaKey( spep_5+97, ct_ka, 255 );
setEffAlphaKey( spep_5+107, ct_ka, 202 );
setEffAlphaKey( spep_5+109, ct_ka, 179 );
setEffAlphaKey( spep_5+113, ct_ka, 120 );
setEffAlphaKey( spep_5+117, ct_ka, 44 );
setEffAlphaKey( spep_5+119, ct_ka, 0 );

playSe(  spep_5,  1018);
playSe(  spep_5+87,  1011);--強打の音

entryFadeBg( spep_5, 0, 190, 0, 0, 0, 0, 220);          -- 黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_5+49, 3, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+87, 0, 1, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+149, 3, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+185, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 被弾(184F)
------------------------------------------------------

spep_6 = spep_5+190;

--敵の動き
setDisp( spep_6, 1, 1 );
changeAnime( spep_6, 1, 108 );  --くの字

setShake(  spep_6,  1,  95,  10);  --揺れ
setMoveKey( spep_6, 1, 0, -779.9 , 0 );
setMoveKey( spep_6+2, 1, 0.3, -675.4 , 0 );
setMoveKey( spep_6+24, 1, 0.2, -166.7 , 0 );
setMoveKey( spep_6+26, 1, 0.1, -142.2 , 0 );
setMoveKey( spep_6+28, 1, 0, -119.6 , 0 );
setMoveKey( spep_6+30, 1, -0.1, -98.8 , 0 );
setMoveKey( spep_6+32, 1, -0.2, -79.5 , 0 );
setMoveKey( spep_6+40, 1, 0, -14.9 , 0 );
setMoveKey( spep_6+42, 1, 0.1, -1.3 , 0 );
setMoveKey( spep_6+44, 1, 0.1, 11.2 , 0 );
setMoveKey( spep_6+48, 1, 0, 33.6 , 0 );
setMoveKey( spep_6+50, 1, -0.1, 43.6 , 0 );
setMoveKey( spep_6+54, 1, -0.1, 61.4 , 0 );
setMoveKey( spep_6+56, 1, 0, 69.3 , 0 );
setMoveKey( spep_6+58, 1, 0, 76.6 , 0 );
setMoveKey( spep_6+60, 1, 0, 83.3 , 0 );
setMoveKey( spep_6+62, 1, 0, 89.4 , 0 );
setMoveKey( spep_6+64, 1, 0, 95.1 , 0 );
setMoveKey( spep_6+66, 1, 0, 100.2 , 0 );
setMoveKey( spep_6+68, 1, 0, 104.8 , 0 );
setMoveKey( spep_6+70, 1, 0, 109 , 0 );
setMoveKey( spep_6+72, 1, 0, 112.8 , 0 );
setMoveKey( spep_6+74, 1, 0, 116.1 , 0 );
setMoveKey( spep_6+76, 1, 0, 119.1 , 0 );
setMoveKey( spep_6+78, 1, 0, 121.7 , 0 );
setMoveKey( spep_6+80, 1, 0, 123.9 , 0 );
setMoveKey( spep_6+82, 1, 0, 125.8 , 0 );
setMoveKey( spep_6+84, 1, 0, 127.5 , 0 );
setMoveKey( spep_6+86, 1, 0, 128.8 , 0 );
setMoveKey( spep_6+88, 1, 0, 129.9 , 0 );
--setMoveKey( spep_6+88, 1, 0, 132 , 0 );
--setMoveKey( spep_6+95, 1, 0, 132 , 0 );
setScaleKey( spep_6, 1, 4.4, 4.4 );
setScaleKey( spep_6+34, 1, 0.96, 0.96 );
setScaleKey( spep_6+72, 1, 0.11, 0.11 );
setScaleKey( spep_6+74, 1, 0.11, 0.11 );
setScaleKey( spep_6+76, 1, 0.08, 0.08 );
setScaleKey( spep_6+78, 1, 0.08, 0.08 );
setScaleKey( spep_6+80, 1, 0.06, 0.06 );
setScaleKey( spep_6+86, 1, 0.03, 0.03 );
setScaleKey( spep_6+88, 1, 0.01, 0.01 );
setScaleKey( spep_6+89, 1, 0.01, 0.01 );
--setScaleKey( spep_6+88, 1, 0.03, 0.03 );
--setScaleKey( spep_6+95, 1, 0.03, 0.03 );
--setScaleKey( spep_6+96, 1, 0.01, 0.01 );
setRotateKey( spep_6, 1, -117 );
setRotateKey( spep_6+2, 1, -80.3 );
setRotateKey( spep_6+4, 1, -43.5 );
setRotateKey( spep_6+6, 1, -6.8 );
setRotateKey( spep_6+8, 1, 29.9 );
setRotateKey( spep_6+26, 1, 360.6 );
setRotateKey( spep_6+46, 1, 727.9 );
setRotateKey( spep_6+66, 1, 1095.2 );
setRotateKey( spep_6+86, 1, 1646.3 );
setRotateKey( spep_6+88, 1, -117 );
--setRotateKey( spep_6+93, 1, 1646.3 );
--setRotateKey( spep_6+95, 1, -117 );

setDisp(  spep_6+89, 1,  0);  --非表示

hit = entryEffect(  spep_6,  151977,   0x80,  -1,  0,  0,  0);  --被弾

setEffScaleKey(  spep_6,  hit,  1.0,  1.0);
setEffMoveKey(  spep_6,  hit,  0,  0);
setEffRotateKey(  spep_6,  hit,  0);
setEffAlphaKey(  spep_6,  hit,  255);
setEffScaleKey(  spep_6+170,  hit,  1.0,  1.0);
setEffMoveKey(  spep_6+170,  hit,  0,  0);
setEffRotateKey(  spep_6+170,  hit,  0);
setEffAlphaKey(  spep_6+170,  hit,  255);

playSe(  spep_6,  8);

playSe(  spep_6+100,  3); --1042は回避カットインだけどキランてしてる

-- ダメージ表示
dealDamage(spep_6+70);
--entryFade( spep_6+160, 9,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade
endPhase(spep_6+170);


else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 突進(80F)
------------------------------------------------------
spep_1 = 0;

shuchusen1 = entryEffectLife( spep_1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.01,  1.01);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffScaleKey(  spep_1+80,  shuchusen1,  1.01,  1.01);
setEffMoveKey(  spep_1+80,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+80,  shuchusen1,  0);
setEffAlphaKey(  spep_1+80,  shuchusen1,  255);

--書き文字
ct_gyun = entryEffectLife( spep_1+57,  10007, 23, 0x100, -1, 0, 41.8, 188.5 );  --ギュンッ

setEffMoveKey( spep_1+57, ct_gyun, 41.8, 188.5 , 0 );
setEffMoveKey( spep_1+80, ct_gyun, 92.1, 274.3 , 0 );
setEffScaleKey( spep_1+57, ct_gyun, 1.6, 1.6 );
setEffScaleKey( spep_1+59, ct_gyun, 2.55, 2.55 );
setEffScaleKey( spep_1+61, ct_gyun, 3.23, 3.23 );
setEffScaleKey( spep_1+63, ct_gyun, 3.63, 3.63 );
setEffScaleKey( spep_1+65, ct_gyun, 3.63, 3.63 );
setEffScaleKey( spep_1+68, ct_gyun, 3.9, 3.9 );
setEffScaleKey( spep_1+73, ct_gyun, 3.94, 3.94 );
setEffScaleKey( spep_1+76, ct_gyun, 4.06, 4.06 );
setEffScaleKey( spep_1+79, ct_gyun, 4.11, 4.11 );
setEffScaleKey( spep_1+80, ct_gyun, 4.19, 4.19 );
setEffRotateKey( spep_1+57, ct_gyun, 23.4 );
setEffRotateKey( spep_1+80, ct_gyun, 21.5 );
setEffAlphaKey( spep_1+57, ct_gyun, 255 );
setEffAlphaKey( spep_1+80, ct_gyun, 255 );

tosshin = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  tosshin,  -1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin,  0,  0);
setEffRotateKey(  spep_1,  tosshin,  0);
setEffAlphaKey(  spep_1,  tosshin,  255);
setEffScaleKey(  spep_1+80,  tosshin,  -1.0,  1.0);
setEffMoveKey(  spep_1+80,  tosshin,  0,  0);
setEffRotateKey(  spep_1+80,  tosshin,  0);
setEffAlphaKey(  spep_1+80,  tosshin,  255);

playSe(  spep_1,  9);  --ダッシュ

entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 220);          -- 黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase( SP_dodge+10);

do return end
else end

-- ** ホワイトフェード ** --
entryFade( spep_1+74, 3, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 格闘(420F)
------------------------------------------------------

spep_2 = spep_1+81;

ryu1 = entryEffectLife(  spep_2,  920,  420,  0x80,  -1,  0,  0,  0);  --流線横

setEffScaleKey(  spep_2,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2,  ryu1,  0,  0);
setEffRotateKey(  spep_2,  ryu1,  0);
setEffAlphaKey(  spep_2,  ryu1,  0);
setEffScaleKey(  spep_2+21,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+21,  ryu1,  0,  0);
setEffRotateKey(  spep_2+21,  ryu1,  0);
setEffAlphaKey(  spep_2+21,  ryu1,  0);
setEffScaleKey(  spep_2+33,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+33,  ryu1,  0,  0);
setEffRotateKey(  spep_2+33,  ryu1,  0);
setEffAlphaKey(  spep_2+33,  ryu1,  150);
setEffScaleKey(  spep_2+175,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+175,  ryu1,  0,  0);
setEffRotateKey(  spep_2+175,  ryu1,  0);
setEffAlphaKey(  spep_2+175,  ryu1,  150);
setEffScaleKey(  spep_2+185,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+185,  ryu1,  0,  0);
setEffRotateKey(  spep_2+185,  ryu1,  0);
setEffAlphaKey(  spep_2+185,  ryu1,  0);
setEffScaleKey(  spep_2+379,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+379,  ryu1,  0,  0);
setEffRotateKey(  spep_2+379,  ryu1,  90);
setEffAlphaKey(  spep_2+379,  ryu1,  0);
setEffScaleKey(  spep_2+387,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+387,  ryu1,  0,  0);
setEffRotateKey(  spep_2+387,  ryu1,  90);
setEffAlphaKey(  spep_2+387,  ryu1,  255);
setEffScaleKey(  spep_2+420,  ryu1,  2.14,  1.12);
setEffMoveKey(  spep_2+420,  ryu1,  0,  0);
setEffRotateKey(  spep_2+420,  ryu1,  90);
setEffAlphaKey(  spep_2+420,  ryu1,  255);

--書き文字エントリー
ct_don = entryEffectLife( spep_2+23,  10019, 16, 0x100, -1, 0, -23.3, 168 );  --ドン
setEffShake(  spep_2+23,  ct_don,  16,  20);  --揺れ
setEffMoveKey( spep_2+23, ct_don, -23.3, 168 , 0 );
setEffMoveKey( spep_2+25, ct_don, -26.2, 185.3 , 0 );
setEffMoveKey( spep_2+27, ct_don, -13.5, 197.5 , 0 );
setEffMoveKey( spep_2+29, ct_don, -19.5, 205.6 , 0 );
setEffMoveKey( spep_2+33, ct_don, -20.3, 200.7 , 0 );
setEffMoveKey( spep_2+35, ct_don, -14.3, 206.2 , 0 );
setEffMoveKey( spep_2+39, ct_don, -15.6, 197.2 , 0 );
setEffScaleKey( spep_2+23, ct_don, 1, 1 );
setEffScaleKey( spep_2+25, ct_don, 1.27, 1.27 );
setEffScaleKey( spep_2+27, ct_don, 1.54, 1.54 );
setEffScaleKey( spep_2+33, ct_don, 1.59, 1.59 );
setEffScaleKey( spep_2+35, ct_don, 1.6, 1.6 );
setEffScaleKey( spep_2+39, ct_don, 1.61, 1.61 );
setEffRotateKey( spep_2+23, ct_don, 9 );
setEffRotateKey( spep_2+39, ct_don, 9 );
setEffAlphaKey( spep_2+23, ct_don, 255 );
setEffAlphaKey( spep_2+33, ct_don, 255 );
setEffAlphaKey( spep_2+35, ct_don, 170 );
setEffAlphaKey( spep_2+37, ct_don, 85 );
setEffAlphaKey( spep_2+39, ct_don, 0 );

ct_doga = entryEffectLife( spep_2+37, 10017 , 68, 0x100, -1, 0, 71.1, 166.4 );  --ドガガガ

setEffShake(  spep_2+37,  ct_doga,  68,  20);  --揺れ
setEffMoveKey( spep_2+37, ct_doga, 71.1, 166.4 , 0 );
setEffMoveKey( spep_2+39, ct_doga, 87.1, 173.1 , 0 );
setEffMoveKey( spep_2+41, ct_doga, 117, 177.2 , 0 );
setEffMoveKey( spep_2+43, ct_doga, 128.6, 180.3 , 0 );
setEffMoveKey( spep_2+47, ct_doga, 140, 182.2 , 0 );
setEffMoveKey( spep_2+91, ct_doga, 158.6, 175 , 0 );
setEffMoveKey( spep_2+93, ct_doga, 173, 183.2 , 0 );
setEffMoveKey( spep_2+105, ct_doga, 181.7, 206.4 , 0 );
setEffScaleKey( spep_2+37, ct_doga, 1.33, 1.33 );
setEffScaleKey( spep_2+43, ct_doga, 1.88, 1.88 );
setEffScaleKey( spep_2+45, ct_doga, 1.88, 1.88 );
setEffScaleKey( spep_2+47, ct_doga, 1.89, 1.89 );
setEffScaleKey( spep_2+49, ct_doga, 1.89, 1.89 );
setEffScaleKey( spep_2+99, ct_doga, 1.99, 1.99 );
setEffScaleKey( spep_2+101, ct_doga, 2.03, 2.03 );
setEffScaleKey( spep_2+105, ct_doga, 2.11, 2.11 );
setEffRotateKey( spep_2+37, ct_doga, 10.5 );
setEffRotateKey( spep_2+105, ct_doga, 10.5 );
setEffAlphaKey( spep_2+37, ct_doga, 255 );
setEffAlphaKey( spep_2+99, ct_doga, 255 );
setEffAlphaKey( spep_2+101, ct_doga, 170 );
setEffAlphaKey( spep_2+103, ct_doga, 85 );
setEffAlphaKey( spep_2+105, ct_doga, 0 );


ct_zun = entryEffectLife( spep_2+151,  10016, 22, 0x100, -1, 0, -35.9, 163.2 ); --ズンッ

setEffMoveKey( spep_2+151, ct_zun, -35.9, 163.2 , 0 );
setEffMoveKey( spep_2+153, ct_zun, -71, 253 , 0 );
setEffMoveKey( spep_2+159, ct_zun, -99.8, 325.9 , 0 );
setEffMoveKey( spep_2+161, ct_zun, -100.6, 327.2 , 0 );
setEffMoveKey( spep_2+163, ct_zun, -101.4, 328.5 , 0 );
setEffMoveKey( spep_2+173, ct_zun, -109.1, 340.3 , 0 );
setEffScaleKey( spep_2+151, ct_zun, 1, 1 );
setEffScaleKey( spep_2+153, ct_zun, 2.11, 2.11 );
setEffScaleKey( spep_2+159, ct_zun, 3.01, 3.01 );
setEffScaleKey( spep_2+161, ct_zun, 3.02, 3.02 );
setEffScaleKey( spep_2+163, ct_zun, 3.04, 3.04 );
setEffScaleKey( spep_2+173, ct_zun, 3.19, 3.19 );
setEffRotateKey( spep_2+151, ct_zun, -14.8 );
setEffRotateKey( spep_2+173, ct_zun, -14.8 );
setEffAlphaKey( spep_2+151, ct_zun, 255 );
setEffAlphaKey( spep_2+167, ct_zun, 255 );
setEffAlphaKey( spep_2+169, ct_zun, 170 );
setEffAlphaKey( spep_2+171, ct_zun, 85 );
setEffAlphaKey( spep_2+173, ct_zun, 0 );

ct_ba = entryEffectLife( spep_2+211,  10022, 22, 0x100, -1, 0, 163.2, 348.6 );  --バッ

setEffMoveKey( spep_2+211, ct_ba, 163.2, 348.6 , 0 );
setEffMoveKey( spep_2+213, ct_ba, 175.2, 382 , 0 );
setEffMoveKey( spep_2+215, ct_ba, 179.2, 393.1 , 0 );
setEffMoveKey( spep_2+229, ct_ba, 181.5, 399.1 , 0 );
setEffMoveKey( spep_2+231, ct_ba, 185.4, 410.1 , 0 );
setEffMoveKey( spep_2+233, ct_ba, 192.1, 428.4 , 0 );
setEffScaleKey( spep_2+211, ct_ba, 1.11, 1.11 );
setEffScaleKey( spep_2+233, ct_ba, 1.45, 1.45 );
setEffRotateKey( spep_2+211, ct_ba, 22.2 );
setEffRotateKey( spep_2+233, ct_ba, 22.2 );
setEffAlphaKey( spep_2+211, ct_ba, 255 );
setEffAlphaKey( spep_2+227, ct_ba, 255 );
setEffAlphaKey( spep_2+229, ct_ba, 227 );
setEffAlphaKey( spep_2+231, ct_ba, 142 );
setEffAlphaKey( spep_2+233, ct_ba, 0 );

ct_ga = entryEffectLife( spep_2+227,  10005, 16, 0x100, -1, 0, 180.1, 118.9 );  --ガッ

setEffShake(  spep_2+227,  ct_ga,  16,  20);  --揺れ
setEffMoveKey( spep_2+227, ct_ga, 180.1, 118.9 , 0 );
setEffMoveKey( spep_2+243, ct_ga, 163.5, 150.7 , 0 );
setEffScaleKey( spep_2+227, ct_ga, 1.25, 1.25 );
setEffScaleKey( spep_2+243, ct_ga, 1.76, 1.76 );
setEffRotateKey( spep_2+227, ct_ga, 3 );
setEffRotateKey( spep_2+243, ct_ga, 3 );
setEffAlphaKey( spep_2+227, ct_ga, 255 );
setEffAlphaKey( spep_2+239, ct_ga, 255 );
setEffAlphaKey( spep_2+241, ct_ga, 64 );
setEffAlphaKey( spep_2+243, ct_ga, 0 );

ct_baki = entryEffectLife( spep_2+253,  10020, 18, 0x100, -1, 0, 34.6, 177.3 );  --バキッ

setEffShake(  spep_2+253,  ct_baki,  18,  10);  --揺れ
setEffMoveKey( spep_2+253, ct_baki, 34.6, 177.3 , 0 );
setEffMoveKey( spep_2+255, ct_baki, 26.4, 185.3 , 0 );
setEffMoveKey( spep_2+269, ct_baki, 19.7, 210.6 , 0 );
setEffMoveKey( spep_2+271, ct_baki, 21.5, 213.8 , 0 );
setEffScaleKey( spep_2+253, ct_baki, 1.25, 1.25 );
setEffScaleKey( spep_2+267, ct_baki, 1.5, 1.5 );
setEffScaleKey( spep_2+269, ct_baki, 1.7, 1.7 );
setEffScaleKey( spep_2+271, ct_baki, 1.76, 1.76 );
setEffRotateKey( spep_2+253, ct_baki, -4 );
setEffRotateKey( spep_2+271, ct_baki, -4 );
setEffAlphaKey( spep_2+253, ct_baki, 255 );
setEffAlphaKey( spep_2+267, ct_baki, 255 );
setEffAlphaKey( spep_2+269, ct_baki, 64 );
setEffAlphaKey( spep_2+271, ct_baki, 0 );

ct_zun2 = entryEffectLife( spep_2+297,  10016, 18, 0x100, -1, 0, 1.6, 261.5 );  --ズン(2号肘打ち)

setEffMoveKey( spep_2+297, ct_zun2, 1.6, 261.5 , 0 );
setEffMoveKey( spep_2+299, ct_zun2, 2.1, 315.3 , 0 );
setEffMoveKey( spep_2+315, ct_zun2, -2.4, 357.2 , 0 );
setEffScaleKey( spep_2+297, ct_zun2, 2.24, 2.24 );
setEffScaleKey( spep_2+309, ct_zun2, 3.13, 3.13 );
setEffScaleKey( spep_2+311, ct_zun2, 3.16, 3.16 );
setEffScaleKey( spep_2+313, ct_zun2, 3.24, 3.24 );
setEffScaleKey( spep_2+315, ct_zun2, 3.31, 3.31 );
setEffRotateKey( spep_2+297, ct_zun2, -5.5 );
setEffRotateKey( spep_2+315, ct_zun2, -5.5 );
setEffAlphaKey( spep_2+297, ct_zun2, 255 );
setEffAlphaKey( spep_2+311, ct_zun2, 255 );
setEffAlphaKey( spep_2+313, ct_zun2, 128 );
setEffAlphaKey( spep_2+315, ct_zun2, 0 );

ct_bago= entryEffectLife( spep_2+365,  10021, 22, 0x100, -1, 0, 39.7, 201.5 );  --バゴォ

setEffShake(  spep_2+365,  ct_bago,  22,  20);  --揺れ
setEffMoveKey( spep_2+365, ct_bago, 39.7, 201.5 , 0 );
setEffMoveKey( spep_2+367, ct_bago, 14.6, 240.6 , 0 );
setEffMoveKey( spep_2+385, ct_bago, 14, 301.4 , 0 );
setEffMoveKey( spep_2+387, ct_bago, 11.5, 316.3 , 0 );
setEffScaleKey( spep_2+365, ct_bago, 1.88, 1.88 );
setEffScaleKey( spep_2+367, ct_bago, 2.37, 2.37 );
setEffScaleKey( spep_2+369, ct_bago, 2.53, 2.53 );
setEffScaleKey( spep_2+383, ct_bago, 2.73, 2.73 );
setEffScaleKey( spep_2+385, ct_bago, 2.82, 2.82 );
setEffScaleKey( spep_2+387, ct_bago, 2.96, 2.96 );
setEffRotateKey( spep_2+365, ct_bago, -11.7 );
setEffRotateKey( spep_2+369, ct_bago, -15.6 );
setEffRotateKey( spep_2+387, ct_bago, -15.6 );
setEffAlphaKey( spep_2+365, ct_bago, 255 );
setEffAlphaKey( spep_2+381, ct_bago, 255 );
setEffAlphaKey( spep_2+383, ct_bago, 227 );
setEffAlphaKey( spep_2+385, ct_bago, 142 );
setEffAlphaKey( spep_2+387, ct_bago, 0 );


kakutou = entryEffect(  spep_2,  SP_06,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_2,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_2,  kakutou,  0,  0);
setEffRotateKey(  spep_2,  kakutou,  0);
setEffAlphaKey(  spep_2,  kakutou,  255);
setEffScaleKey(  spep_2+420,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_2+420,  kakutou,  0,  0);
setEffRotateKey(  spep_2+420,  kakutou,  0);
setEffAlphaKey(  spep_2+420,  kakutou,  255);

shuchusen2 = entryEffectLife( spep_2, 906, 420, 0x100,  -1, 0,  0,  0);   -- 集中線 

setEffScaleKey(  spep_2,  shuchusen2,  1.77,  2.28);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffScaleKey(  spep_2+20,  shuchusen2,  1.77,  2.88);
setEffMoveKey(  spep_2+20,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+20,  shuchusen2,  0);
setEffAlphaKey(  spep_2+20,  shuchusen2,  255);
setEffScaleKey(  spep_2+21,  shuchusen2,  1.34,  1.36);
setEffMoveKey(  spep_2+21,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+21,  shuchusen2,  0);
setEffAlphaKey(  spep_2+21,  shuchusen2,  255);
setEffScaleKey(  spep_2+54,  shuchusen2,  1.34,  1.36);
setEffMoveKey(  spep_2+54,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+54,  shuchusen2,  0);
setEffAlphaKey(  spep_2+54,  shuchusen2,  255);
setEffScaleKey(  spep_2+56,  shuchusen2,  1.61,  1.63);
setEffMoveKey(  spep_2+56,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+56,  shuchusen2,  0);
setEffAlphaKey(  spep_2+56,  shuchusen2,  255);
setEffScaleKey(  spep_2+209,  shuchusen2,  1.61,  1.63);
setEffMoveKey(  spep_2+209,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+209,  shuchusen2,  0);
setEffAlphaKey(  spep_2+209,  shuchusen2,  255);
setEffScaleKey(  spep_2+210,  shuchusen2,  1.40,  1.42);
setEffMoveKey(  spep_2+210,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+210,  shuchusen2,  0);
setEffAlphaKey(  spep_2+210,  shuchusen2,  255);
setEffScaleKey(  spep_2+234,  shuchusen2,  1.74,  1.76);
setEffMoveKey(  spep_2+234,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+234,  shuchusen2,  0);
setEffAlphaKey(  spep_2+234,  shuchusen2,  255);
setEffScaleKey(  spep_2+298,  shuchusen2,  1.74,  1.76);
setEffMoveKey(  spep_2+298,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+298,  shuchusen2,  0);
setEffAlphaKey(  spep_2+298,  shuchusen2,  255);
setEffScaleKey(  spep_2+302,  shuchusen2,  1.25,  1.27);
setEffMoveKey(  spep_2+302,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+302,  shuchusen2,  0);
setEffAlphaKey(  spep_2+302,  shuchusen2,  255);
setEffScaleKey(  spep_2+420,  shuchusen2,  1.25,  1.27);
setEffMoveKey(  spep_2+420,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+420,  shuchusen2,  0);
setEffAlphaKey(  spep_2+420,  shuchusen2,  255);

--敵の動き
setDisp( spep_2, 1, 1 );
changeAnime( spep_2, 1, 101 );  --構え

setShake(  spep_2,  1,  420,  10);  --揺れ
setMoveKey( spep_2, 1, 4.4, -1.1 , 0 );
setMoveKey( spep_2+22, 1, 4.4, -1.1 , 0 );
setScaleKey( spep_2, 1, 1.09, 1.09 );
setScaleKey( spep_2+22, 1, 1.09, 1.09 );
setRotateKey( spep_2, 1, 0 );
setRotateKey( spep_2+22, 1, 0 );

changeAnime( spep_2+23, 1, 106 );  --仰け反り


--ここはかえない
setMoveKey( spep_2+23, 1, 14, 31.9 , 0 );
setScaleKey( spep_2+23, 1, 1.61, 1.61 );
setRotateKey( spep_2+23, 1, -23 );

--ここからテスト

spep_2a = spep_2+4 --テスト


setMoveKey( spep_2+31, 1, 56.7, 23.5 , 0 );
setMoveKey( spep_2+37, 1, 28.9, 24.9 , 0 );
setMoveKey( spep_2+39, 1, 77, 28.2 , 0 );
setMoveKey( spep_2+41, 1, 97.4, 32.3 , 0 );
setMoveKey( spep_2+51, 1, 74, 32.8 , 0 );
setMoveKey( spep_2+53, 1, 134.5, 28.3 , 0 );
setMoveKey( spep_2+55, 1, 152.9, 41.5 , 0 );
setMoveKey( spep_2+57, 1, 149.7, 29.7 , 0 );
setMoveKey( spep_2+65, 1, 131.7, 37.9 , 0 );
setMoveKey( spep_2+67, 1, 207.3, 57.1 , 0 );
setMoveKey( spep_2+69, 1, 222.2, 50.1 , 0 );
setMoveKey( spep_2+73, 1, 208.2, 45.9 , 0 );
setMoveKey( spep_2+75, 1, 192.9, 52.2 , 0 );
setMoveKey( spep_2+79, 1, 183.2, 47.1 , 0 );
setMoveKey( spep_2+81, 1, 249.6, 56.8 , 0 );
setMoveKey( spep_2+93, 1, 218.7, 50.4 , 0 );
setMoveKey( spep_2+95, 1, 295.8, 54.8 , 0 );
setMoveKey( spep_2+99, 1, 315, 58.6 , 0 );
setMoveKey( spep_2+111, 1, 338.9, 55.8 , 0 );
setMoveKey( spep_2+113, 1, 333.1, 54 , 0 );
setMoveKey( spep_2+150, 1, 41.6, 29.5 , 0 );

setScaleKey( spep_2a+25, 1, 1.33, 1.33 );
setScaleKey( spep_2a+123, 1, 1.01, 1.01 );
setScaleKey( spep_2a+141, 1, 0.81, 0.81 );
setScaleKey( spep_2a+143, 1, 0.93, 0.93 );
setScaleKey( spep_2a+145, 1, 1.04, 1.04 );
setScaleKey( spep_2a+147, 1, 1.15, 1.15 );
setScaleKey( spep_2a+150, 1, 1.26, 1.26 );

setRotateKey( spep_2a+33, 1, -16 );
setRotateKey( spep_2a+37, 1, -22.3 );
setRotateKey( spep_2a+39, 1, -16 );
setRotateKey( spep_2a+41, 1, -14.7 );
setRotateKey( spep_2a+43, 1, -13.8 );
setRotateKey( spep_2a+51, 1, -16 );
setRotateKey( spep_2a+53, 1, -16 );
setRotateKey( spep_2a+61, 1, -13.3 );
setRotateKey( spep_2a+63, 1, -15.3 );
setRotateKey( spep_2a+67, 1, -16 );
setRotateKey( spep_2a+69, 1, -15 );
setRotateKey( spep_2a+71, 1, -14.3 );
setRotateKey( spep_2a+73, 1, -13.9 );
setRotateKey( spep_2a+75, 1, -13.8 );
setRotateKey( spep_2a+77, 1, -15.4 );
setRotateKey( spep_2a+79, 1, -16 );
setRotateKey( spep_2a+81, 1, -16 );
setRotateKey( spep_2a+83, 1, -13.9 );
setRotateKey( spep_2a+85, 1, -12.5 );
setRotateKey( spep_2a+87, 1, -11.6 );
setRotateKey( spep_2a+89, 1, -11.3 );
setRotateKey( spep_2a+91, 1, -14.8 );
setRotateKey( spep_2a+93, 1, -16 );
setRotateKey( spep_2a+95, 1, -16 );
setRotateKey( spep_2a+97, 1, -15.3 );
setRotateKey( spep_2a+150, 1, -8.2 );

changeAnime( spep_2+151, 1, 108 );  --くの字

setMoveKey( spep_2+151, 1, 58.5, 1.6 , 0 );

setMoveKey( spep_2+153, 1, 119.9, 3 , 0 );
setMoveKey( spep_2+157, 1, 217.2, -1.9 , 0 );
setMoveKey( spep_2+163, 1, 285.2, 2.3 , 0 );
setMoveKey( spep_2+169, 1, 290.8, 1.4 , 0 );
setMoveKey( spep_2+171, 1, 283.3, -6.5 , 0 );
setMoveKey( spep_2+173, 1, 245, -27.9 , 0 );
setMoveKey( spep_2+175, 1, 188.5, -55.6 , 0 );
setMoveKey( spep_2+177, 1, 156.1, -71.4 , 0 );
setMoveKey( spep_2+187, 1, 168, -75.7 , 0 );
setMoveKey( spep_2+189, 1, 172.8, -75.5 , 0 );
setMoveKey( spep_2+193, 1, 182.7, -75.1 , 0 );
setMoveKey( spep_2+199, 1, 198.2, -74.3 , 0 );
setMoveKey( spep_2+201, 1, 203.6, -74 , 0 );
setMoveKey( spep_2+226, 1, 235.1, -70.3 , 0 );

setScaleKey( spep_2a+154, 1, 1.63, 1.63 );
setScaleKey( spep_2a+156, 1, 1.39, 1.39 );
setScaleKey( spep_2a+158, 1, 1.54, 1.54 );
setScaleKey( spep_2a+182, 1, 1.1, 1.1 );
setScaleKey( spep_2+226, 1, 1.1, 1.1 );

setRotateKey( spep_2a+151, 1, -8.2 );
setRotateKey( spep_2a+172, 1, -8.2 );
setRotateKey( spep_2a+184, 1, 0.1 );
setRotateKey( spep_2a+208, 1, 10.2 );
setRotateKey( spep_2+226, 1, 14.5 );

changeAnime( spep_2+227, 1, 106 );  --仰け反り

setMoveKey( spep_2+227, 1, 144.8, -52.5 , 0 );
setMoveKey( spep_2+229, 1, 94.4, -45.2 , 0 );
setMoveKey( spep_2+235, 1, 28.4, -44.6 , 0 );
setMoveKey( spep_2+237, 1, 31, -40.7 , 0 );
setMoveKey( spep_2+249, 1, 7, -25.7 , 0 );
setMoveKey( spep_2+251, 1, 8.6, -27.5 , 0 );
setMoveKey( spep_2+255, 1, 16.1, -20.5 , 0 );
setMoveKey( spep_2+257, 1, 14.6, -30.8 , 0 );
setMoveKey( spep_2+259, 1, 22.3, -23.2 , 0 );
setMoveKey( spep_2+261, 1, 12.6, -19.4 , 0 );
setMoveKey( spep_2+263, 1, 17.8, -20.6 , 0 );
setMoveKey( spep_2+283, 1, 0, -7.8 , 0 );
setMoveKey( spep_2+293, 1, -2.4, -6.2 , 0 );
setMoveKey( spep_2+296, 1, -9, -6 , 0 );

setScaleKey( spep_2+227, 1, 0.97, 0.97 );
setScaleKey( spep_2a+243, 1, 1, 1 );
setScaleKey( spep_2+296, 1, 1.87, 1.87 );

setRotateKey( spep_2+227, 1, -37.6 );
setRotateKey( spep_2+255, 1, -37.1 );
setRotateKey( spep_2+257, 1, -36.5 );
setRotateKey( spep_2+296, 1, -31.7 );

changeAnime( spep_2+297, 1, 8 );  --2号肘打ち

setMoveKey( spep_2+297, 1, 1.2, -3.3 , 0 );
setMoveKey( spep_2+299, 1, 8.6, 5.4 , 0 );
setMoveKey( spep_2+301, 1, -4.5, 8.2 , 0 );
setMoveKey( spep_2+303, 1, 2.2, -1 , 0 );
setMoveKey( spep_2+305, 1, -14.4, 4.1 , 0 );
setMoveKey( spep_2+307, 1, -4.4, 3.1 , 0 );
setMoveKey( spep_2+309, 1, -12, 9.7 , 0 );
setMoveKey( spep_2+311, 1, -5.1, 4.9 , 0 );
setMoveKey( spep_2+313, 1, -17.6, 7.3 , 0 );
setMoveKey( spep_2+315, 1, -11.2, 2.4 , 0 );
setMoveKey( spep_2+317, 1, -15.3, 5.4 , 0 );
setMoveKey( spep_2+329, 1, -18.8, 5.4 , 0 );
setMoveKey( spep_2+331, 1, -21.9, -4.9 , 0 );
setMoveKey( spep_2+333, 1, -24.1, -30.9 , 0 );
setMoveKey( spep_2+335, 1, -23.9, -55.9 , 0 );
setMoveKey( spep_2+337, 1, -22.7, -63.1 , 0 );
setMoveKey( spep_2+364, 1, -28.1, -81.4 , 0 );

setScaleKey( spep_2+297, 1, 2.49, 2.49 );
setScaleKey( spep_2+331, 1, 2.14, 2.14 );
setScaleKey( spep_2a+333, 1, 1.88, 1.88 );
setScaleKey( spep_2a+335, 1, 1.48, 1.48 );
setScaleKey( spep_2a+339, 1, 1.13, 1.13 );
setScaleKey( spep_2a+361, 1, 1.13, 1.13 );
setScaleKey( spep_2a+364, 1, 1.44, 1.44 );
setRotateKey( spep_2+297, 1, 20 );
setRotateKey( spep_2+364, 1, 18 );

changeAnime( spep_2+365, 1, 108 );  --蹴り上げ

setMoveKey( spep_2+365, 1, -25.8, 9.2 , 0 );
setMoveKey( spep_2+367, 1, -12.9, 13.9 , 0 );
setMoveKey( spep_2+369, 1, -17.9, 34.4 , 0 );
setMoveKey( spep_2+371, 1, -13.8, 29 , 0 );
setMoveKey( spep_2+373, 1, -18.5, 45 , 0 );
setMoveKey( spep_2+375, 1, -17.2, 40.1 , 0 );
setMoveKey( spep_2+377, 1, -17.9, 57.4 , 0 );
setMoveKey( spep_2+379, 1, -13.8, 51.2 , 0 );
setMoveKey( spep_2+381, 1, -23.5, 53.8 , 0 );
setMoveKey( spep_2+383, 1, -13.7, 56.6 , 0 );
setMoveKey( spep_2+385, 1, -18.3, 124.3 , 0 );
setMoveKey( spep_2+389, 1, -20, 235.2 , 0 );
setMoveKey( spep_2+391, 1, -20.6, 279.3 , 0 );
setMoveKey( spep_2+393, 1, -21.1, 317.1 , 0 );
setMoveKey( spep_2+401, 1, -22, 421.1 , 0 );
setMoveKey( spep_2+413, 1, -22.1, 494.3 , 0 );
setMoveKey( spep_2+419, 1, -22.1, 2000 , 0 );
setMoveKey( spep_2+420, 1, -22.1, 2000 , 0 );

setScaleKey( spep_2a+368, 1, 1.75, 1.75 );
setScaleKey( spep_2a+372, 1, 1.75, 1.75 );
setScaleKey( spep_2a+413, 1, 1.27, 1.27 );
setRotateKey( spep_2+365, 1, -93.2 );
setRotateKey( spep_2+387, 1, -100.5 );
setRotateKey( spep_2a+413, 1, -111 );

setDisp(  spep_2+415,  1,  0);  --敵非表示

--SE
playSe(  spep_2+23,  1000);
playSe(  spep_2+39,  1001);
playSe(  spep_2+53,  1007);
playSe(  spep_2+68,  1000);
playSe(  spep_2+81,  1001);
playSe(  spep_2+95,  1000);
playSe(  spep_2+151,  1009);  --1号強めのパンチ

playSe(  spep_2+227,  1000);
playSe(  spep_2+253,  1001);
playSe(  spep_2+297,  1010);--2号ひじうち

playSe(  spep_2+365,  1060); --蹴り上げ

entryFadeBg( spep_2, 0, 420, 0, 0, 0, 0, 220);          -- 黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2+297, 0, 1, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade(肘打ち)
entryFade( spep_2+412, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_3 = spep_2+420;

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

-- ** ホワイトフェード ** --
entryFade( spep_3+78, 10, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 突進2(104F)
------------------------------------------------------

spep_4 = spep_3+90;

shuchusen4 = entryEffectLife(  spep_4+30,  906,  74,  0x80,  -1,  0,  0,  0);
setEffScaleKey(  spep_4+30,  shuchusen4,  1.88,  1.94);
setEffMoveKey(  spep_4+30,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4+30, shuchusen4,  0);
setEffAlphaKey(  spep_4+30,  shuchusen4,  255);
setEffScaleKey(  spep_3+104,  shuchusen4,  1.88,  1.94);
setEffMoveKey(  spep_3+104,  shuchusen4,  0,  0);
setEffRotateKey(  spep_3+104,  shuchusen4,  0);
setEffAlphaKey(  spep_3+104,  shuchusen4,  255);

tosshin2 = entryEffect(  spep_4,  SP_07,  0x80,  -1,  0,  0,  0);  --突進2

setEffScaleKey(  spep_4,  tosshin2,  1.0,  1.0);
setEffMoveKey(  spep_4,  tosshin2,  0,  0);
setEffRotateKey(  spep_4,  tosshin2,  0);
setEffAlphaKey(  spep_4,  tosshin2,  255);
setEffScaleKey(  spep_4+104,  tosshin2,  1.0,  1.0);
setEffMoveKey(  spep_4+104,  tosshin2,  0,  0);
setEffRotateKey(  spep_4+104,  tosshin2,  0);
setEffAlphaKey(  spep_4+104,  tosshin2,  255);

-- カットイン
--speff = entryEffect(  spep_4+17,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_4+17,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
--ctgogo = entryEffectLife( spep_4+30, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

--setEffScaleKey(  spep_4+30,  ctgogo,  -0.7,  0.7);
--setEffMoveKey(  spep_4+30,  ctgogo,  0,  530);
--setEffRotateKey(  spep_4+30,  ctgogo,  0);
--setEffScaleKey(  spep_4+101,  ctgogo,  -0.7,  0.7);
--setEffMoveKey(  spep_4+101,  ctgogo,  0,  530);
--setEffRotateKey(  spep_4+101,  ctgogo,  0);

playSe(  spep_4,  9);
playSe(  spep_4+17,  SE_04);  --カットイン音

entryFadeBg( spep_4, 0, 104, 0, 0, 0, 0, 220);          -- 黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4+98, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ダブルパンチ(218F)
------------------------------------------------------

spep_5 = spep_4+104;

setDisp(  spep_5,  1,  0);  --敵非表示

shuchusen5 = entryEffectLife(  spep_5+89,  906,  100,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_5+89,  shuchusen5,  1.2,  1.2);
setEffMoveKey(  spep_5+89,  shuchusen5,  0,  0);
setEffRotateKey(  spep_5+89, shuchusen5,  0);
setEffAlphaKey(  spep_5+89,  shuchusen5,  255);
setEffScaleKey(  spep_5+189,  shuchusen5,  1.2,  1.2);
setEffMoveKey(  spep_5+189,  shuchusen5,  0,  0);
setEffRotateKey(  spep_5+189,  shuchusen5,  0);
setEffAlphaKey(  spep_5+189,  shuchusen5,  255);

ryu2 = entryEffectLife(  spep_5,  920,  190,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_5,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_5,  ryu2,  0,  0);
setEffRotateKey(  spep_5,  ryu2,  90);
setEffAlphaKey(  spep_5,  ryu2,  150);
setEffScaleKey(  spep_5+190,  ryu2,  2.14,  1.12);
setEffMoveKey(  spep_5+190,  ryu2,  0,  0);
setEffRotateKey(  spep_5+190,  ryu2,  90);
setEffAlphaKey(  spep_5+190,  ryu2,  150);


punch = entryEffect(  spep_5,  SP_08,  0x100,  -1,  0,  0,  0);  --ダブルパンチ

setEffScaleKey(  spep_5,  punch,  1.0,  1.0);
setEffMoveKey(  spep_5,  punch,  0,  0);
setEffRotateKey(  spep_5,  punch,  0);
setEffAlphaKey(  spep_5,  punch,  255);
setEffScaleKey(  spep_5+190,  punch,  1.0,  1.0);
setEffMoveKey(  spep_5+190,  punch,  0,  0);
setEffRotateKey(  spep_5+190,  punch,  0);
setEffAlphaKey(  spep_5+190,  punch,  255);
setEffScaleKey(  spep_5+191,  punch,  1.0,  1.0);
setEffMoveKey(  spep_5+191,  punch,  0,  0);
setEffRotateKey(  spep_5+191,  punch,  0);
setEffAlphaKey(  spep_5+191,  punch,  0);
setEffScaleKey(  spep_5+218,  punch,  1.0,  1.0);
setEffMoveKey(  spep_5+218,  punch,  0,  0);
setEffRotateKey(  spep_5+218,  punch,  0);
setEffAlphaKey(  spep_5+218,  punch,  0);


--敵の動き
setDisp(  spep_5+53,  1,  1);  --敵表示
changeAnime( spep_5+53, 1, 106 ); 
setShake(  spep_5+53,  1,  33,  20);  --揺れ
setMoveKey( spep_5+53, 1, -14.4, -22.3 , 0 );
setMoveKey( spep_5+55, 1, -13.4, 9.3 , 0 );
setMoveKey( spep_5+57, 1, -16.8, 2.7 , 0 );
setMoveKey( spep_5+59, 1, -14.7, 13.9 , 0 );
setMoveKey( spep_5+61, 1, -12.4, 35.7 , 0 );
setMoveKey( spep_5+63, 1, -16.3, 35.3 , 0 );
setMoveKey( spep_5+79, 1, -15.3, 110 , 0 );
setMoveKey( spep_5+81, 1, -13.5, 90.7 , 0 );
setMoveKey( spep_5+86, 1, -17.1, 23.1 , 0 );

setScaleKey( spep_5+53, 1, 1.23, 1.23 );
setScaleKey( spep_5+83, 1, 1.23, 1.23 );
setScaleKey( spep_5+86, 1, 1.48, 1.48 );

setRotateKey( spep_5+56, 1, -114 );
setRotateKey( spep_5+86, 1, -114 );


changeAnime( spep_5+87, 1, 108 );  --くの字
setShake(  spep_5+87,  1,  102,  20);  --揺れ
setMoveKey( spep_5+87, 1, -30.2, -60.1 , 0 );
setMoveKey( spep_5+89, 1, -23.8, -110.3 , 0 );
setMoveKey( spep_5+91, 1, -24.4, -49.6 , 0 );
setMoveKey( spep_5+93, 1, -26.3, -91.9 , 0 );
setMoveKey( spep_5+95, 1, -26.2, -39 , 0 );
setMoveKey( spep_5+97, 1, -27.7, -70.2 , 0 );
setMoveKey( spep_5+99, 1, -25.9, -29.6 , 0 );
setMoveKey( spep_5+101, 1, -29.1, -40.2 , 0 );
setMoveKey( spep_5+103, 1, -26.4, -51.9 , 0 );
setMoveKey( spep_5+105, 1, -24.8, -28.6 , 0 );
setMoveKey( spep_5+107, 1, -25.3, -9.6 , 0 );
setMoveKey( spep_5+109, 1, -27.9, -33.1 , 0 );
setMoveKey( spep_5+111, 1, -26.2, -16.2 , 0 );
setMoveKey( spep_5+113, 1, -26.2, -13.7 , 0 );
setMoveKey( spep_5+121, 1, -26.2, -9.2 , 0 );
setMoveKey( spep_5+123, 1, -21.7, 189.8 , 0 );
setMoveKey( spep_5+125, 1, -16.5, 282.9 , 0 );
setMoveKey( spep_5+127, 1, -16.8, 388.5 , 0 );
setMoveKey( spep_5+129, 1, -17.1, 478.2 , 0 );
setMoveKey( spep_5+131, 1, -17, 553.6 , 0 );
setMoveKey( spep_5+133, 1, -16.7, 616.3 , 0 );
setMoveKey( spep_5+135, 1, -16.5, 667.7 , 0 );
setMoveKey( spep_5+149, 1, -23.2, 806 , 0 );
setMoveKey( spep_5+150, 1, -23.2, 806 , 0 );  --追加
setMoveKey( spep_5+151, 1, -20.3, -692.8 , 0 );
setMoveKey( spep_5+163, 1, -29.3, -60.3 , 0 );
setMoveKey( spep_5+165, 1, -19.7, 31.1 , 0 );
setMoveKey( spep_5+167, 1, -27.8, 112.2 , 0 );
setMoveKey( spep_5+189, 1, -29.4, 736.7 , 0 );
setScaleKey( spep_5+87, 1, 2.25, 2.25 );
setScaleKey( spep_5+121, 1, 2.25, 2.25 );
setScaleKey( spep_5+123, 1, 1.85, 1.85 );
setScaleKey( spep_5+125, 1, 1.55, 1.55 );
setScaleKey( spep_5+149, 1, 1.55, 1.55 );
setScaleKey( spep_5+189, 1, 1.55, 1.55 );
setRotateKey( spep_5+87, 1, -95.1 );
setRotateKey( spep_5+121, 1, -95.1 );
setRotateKey( spep_5+123, 1, 34.7 );
setRotateKey( spep_5+125, 1, 144.3 );
setRotateKey( spep_5+127, 1, 237 );
setRotateKey( spep_5+129, 1, 315.2 );
setRotateKey( spep_5+131, 1, 380.8 );
setRotateKey( spep_5+133, 1, 435.5 );
setRotateKey( spep_5+135, 1, 480.6 );
setRotateKey( spep_5+137, 1, 517.1 );
setRotateKey( spep_5+139, 1, 546 );
setRotateKey( spep_5+141, 1, 568.2 );
setRotateKey( spep_5+143, 1, 584.3 );
setRotateKey( spep_5+145, 1, 595.1 );
setRotateKey( spep_5+147, 1, 601.1 );
setRotateKey( spep_5+149, 1, 603 );
setRotateKey( spep_5+151, 1, 603 );
setRotateKey( spep_5+153, 1, 640.9 );
setRotateKey( spep_5+155, 1, 678.8 );
setRotateKey( spep_5+157, 1, 716.7 );
setRotateKey( spep_5+159, 1, 754.6 );
setRotateKey( spep_5+161, 1, 792.5 );
setRotateKey( spep_5+163, 1, 830.4 );
setRotateKey( spep_5+165, 1, 868.3 );
setRotateKey( spep_5+167, 1, 906.2 );
setRotateKey( spep_5+169, 1, 944.1 );
setRotateKey( spep_5+171, 1, 981.9 );
setRotateKey( spep_5+173, 1, 1019.8 );
setRotateKey( spep_5+175, 1, 1057.7 );
setRotateKey( spep_5+177, 1, 1095.6 );
setRotateKey( spep_5+179, 1, 1133.5 );
setRotateKey( spep_5+181, 1, 1171.4 );
setRotateKey( spep_5+183, 1, 1209.3 );
setRotateKey( spep_5+185, 1, 1247.2 );
setRotateKey( spep_5+187, 1, 1285.1 );
setRotateKey( spep_5+189, 1, 1323 );

setDisp(  spep_5+190, 1, 0);  --敵非表示

--書き文字エントリー
ct_ka = entryEffectLife( spep_5+87,  10004, 32, 0x80, -1, 0, -26.1, 278.5 );  --カッ

setEffMoveKey( spep_5+87, ct_ka, -26.1, 278.5 , 0 );
setEffMoveKey( spep_5+119, ct_ka, -26, 278.5 , 0 );
setEffScaleKey( spep_5+87, ct_ka, 3.57, 3.57 );
setEffScaleKey( spep_5+119, ct_ka, 5.13, 5.13 );
setEffRotateKey( spep_5+87, ct_ka, 0 );
setEffRotateKey( spep_5+119, ct_ka, 0 );
setEffAlphaKey( spep_5+87, ct_ka, 255 );
setEffAlphaKey( spep_5+97, ct_ka, 255 );
setEffAlphaKey( spep_5+107, ct_ka, 202 );
setEffAlphaKey( spep_5+109, ct_ka, 179 );
setEffAlphaKey( spep_5+113, ct_ka, 120 );
setEffAlphaKey( spep_5+117, ct_ka, 44 );
setEffAlphaKey( spep_5+119, ct_ka, 0 );

playSe(  spep_5,  1018);
playSe(  spep_5+87,  1011);--強打の音

entryFadeBg( spep_5, 0, 190, 0, 0, 0, 0, 220);          -- 黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_5+49, 3, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+87, 0, 1, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+149, 3, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5+185, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 被弾(184F)
------------------------------------------------------

spep_6 = spep_5+190;

--敵の動き
setDisp( spep_6, 1, 1 );
changeAnime( spep_6, 1, 108 );  --くの字

setShake(  spep_6,  1,  95,  10);  --揺れ
setMoveKey( spep_6, 1, 0, -779.9 , 0 );
setMoveKey( spep_6+2, 1, 0.3, -675.4 , 0 );
setMoveKey( spep_6+24, 1, 0.2, -166.7 , 0 );
setMoveKey( spep_6+26, 1, 0.1, -142.2 , 0 );
setMoveKey( spep_6+28, 1, 0, -119.6 , 0 );
setMoveKey( spep_6+30, 1, -0.1, -98.8 , 0 );
setMoveKey( spep_6+32, 1, -0.2, -79.5 , 0 );
setMoveKey( spep_6+40, 1, 0, -14.9 , 0 );
setMoveKey( spep_6+42, 1, 0.1, -1.3 , 0 );
setMoveKey( spep_6+44, 1, 0.1, 11.2 , 0 );
setMoveKey( spep_6+48, 1, 0, 33.6 , 0 );
setMoveKey( spep_6+50, 1, -0.1, 43.6 , 0 );
setMoveKey( spep_6+54, 1, -0.1, 61.4 , 0 );
setMoveKey( spep_6+56, 1, 0, 69.3 , 0 );
setMoveKey( spep_6+58, 1, 0, 76.6 , 0 );
setMoveKey( spep_6+60, 1, 0, 83.3 , 0 );
setMoveKey( spep_6+62, 1, 0, 89.4 , 0 );
setMoveKey( spep_6+64, 1, 0, 95.1 , 0 );
setMoveKey( spep_6+66, 1, 0, 100.2 , 0 );
setMoveKey( spep_6+68, 1, 0, 104.8 , 0 );
setMoveKey( spep_6+70, 1, 0, 109 , 0 );
setMoveKey( spep_6+72, 1, 0, 112.8 , 0 );
setMoveKey( spep_6+74, 1, 0, 116.1 , 0 );
setMoveKey( spep_6+76, 1, 0, 119.1 , 0 );
setMoveKey( spep_6+78, 1, 0, 121.7 , 0 );
setMoveKey( spep_6+80, 1, 0, 123.9 , 0 );
setMoveKey( spep_6+82, 1, 0, 125.8 , 0 );
setMoveKey( spep_6+84, 1, 0, 127.5 , 0 );
setMoveKey( spep_6+86, 1, 0, 128.8 , 0 );
setMoveKey( spep_6+88, 1, 0, 129.9 , 0 );
--setMoveKey( spep_6+88, 1, 0, 132 , 0 );
--setMoveKey( spep_6+95, 1, 0, 132 , 0 );
setScaleKey( spep_6, 1, 4.4, 4.4 );
setScaleKey( spep_6+34, 1, 0.96, 0.96 );
setScaleKey( spep_6+72, 1, 0.11, 0.11 );
setScaleKey( spep_6+74, 1, 0.11, 0.11 );
setScaleKey( spep_6+76, 1, 0.08, 0.08 );
setScaleKey( spep_6+78, 1, 0.08, 0.08 );
setScaleKey( spep_6+80, 1, 0.06, 0.06 );
setScaleKey( spep_6+86, 1, 0.03, 0.03 );
setScaleKey( spep_6+88, 1, 0.01, 0.01 );
setScaleKey( spep_6+89, 1, 0.01, 0.01 );
--setScaleKey( spep_6+88, 1, 0.03, 0.03 );
--setScaleKey( spep_6+95, 1, 0.03, 0.03 );
--setScaleKey( spep_6+96, 1, 0.01, 0.01 );
setRotateKey( spep_6, 1, -117 );
setRotateKey( spep_6+2, 1, -80.3 );
setRotateKey( spep_6+4, 1, -43.5 );
setRotateKey( spep_6+6, 1, -6.8 );
setRotateKey( spep_6+8, 1, 29.9 );
setRotateKey( spep_6+26, 1, 360.6 );
setRotateKey( spep_6+46, 1, 727.9 );
setRotateKey( spep_6+66, 1, 1095.2 );
setRotateKey( spep_6+86, 1, 1646.3 );
setRotateKey( spep_6+88, 1, -117 );
--setRotateKey( spep_6+93, 1, 1646.3 );
--setRotateKey( spep_6+95, 1, -117 );

setDisp(  spep_6+89, 1,  0);  --非表示

hit = entryEffect(  spep_6,  151977,   0x80,  -1,  0,  0,  0);  --被弾

setEffScaleKey(  spep_6,  hit,  1.0,  1.0);
setEffMoveKey(  spep_6,  hit,  0,  0);
setEffRotateKey(  spep_6,  hit,  0);
setEffAlphaKey(  spep_6,  hit,  255);
setEffScaleKey(  spep_6+170,  hit,  1.0,  1.0);
setEffMoveKey(  spep_6+170,  hit,  0,  0);
setEffRotateKey(  spep_6+170,  hit,  0);
setEffAlphaKey(  spep_6+170,  hit,  255);

playSe(  spep_6,  8);

playSe(  spep_6+100,  3); --1042は回避カットインだけどキランてしてる

-- ダメージ表示
dealDamage(spep_6+70);
--entryFade( spep_6+160, 9,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade
endPhase(spep_6+170);

end

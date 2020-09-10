--超サイヤ人ゴッドSSベジット_ベジットソード

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
SP_01 = 154817; --カードカットインまで　前側
SP_02 = 154818; --カードカットインまで　後ろ側
SP_03 = 154819; --カードカットイン後　前側
SP_04 = 154820; --カードカットイン後　後ろ側

--敵側
SP_01x = 154821; --カードカットインまで　前側
SP_03x = 154822; --カードカットインまで　後ろ側

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- カードカットインまで(314F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
zenhan_f = entryEffectLife( spep_0 + 0, SP_01, 314, 0x100, -1, 0, 0, 0 );  --カードカットインまで　前側(ef_001)
setEffMoveKey( spep_0 + 0, zenhan_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 314, zenhan_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, zenhan_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 314, zenhan_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, zenhan_f, 0 );
setEffRotateKey( spep_0 + 314, zenhan_f, 0 );
setEffAlphaKey( spep_0 + 0, zenhan_f, 255 );
setEffAlphaKey( spep_0 + 314, zenhan_f, 255 );

zenhan_b = entryEffectLife( spep_0 + 0, SP_02, 314, 0x80, -1, 0, 0, 0 );  --カードカットインまで　後ろ側(ef_002)
setEffMoveKey( spep_0 + 0, zenhan_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 314, zenhan_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, zenhan_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 314, zenhan_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, zenhan_b, 0 );
setEffRotateKey( spep_0 + 314, zenhan_b, 0 );
setEffAlphaKey( spep_0 + 0, zenhan_b, 255 );
setEffAlphaKey( spep_0 + 314, zenhan_b, 255 );

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 100 );
setDisp( spep_0 + 0, 1, 1 );

setMoveKey( spep_0 + 0, 1, 208, 133.3 , 0 );
setMoveKey( spep_0 + 1, 1, 208, 133.3 , 0 );
setMoveKey( spep_0 + 2, 1, 208, 133.3 , 0 );
setMoveKey( spep_0 + 3, 1, 208, 133.3 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 208, 133.3 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 208, 133.3 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 208, 133.2 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 208, 133.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 207.9, 133.2 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 207.9, 133.2 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 207.9, 133.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 207.8, 133.1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 207.8, 133 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 207.8, 132.9 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 207.7, 132.8 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 207.6, 132.7 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 207.6, 132.6 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 207.5, 132.5 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 207.4, 132.4 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 207.3, 132.3 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 207.2, 132.1 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 207.1, 132 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 207, 131.8 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 206.9, 131.6 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 206.8, 131.4 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 206.7, 131.2 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 206.5, 131 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 206.4, 130.8 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 206.2, 130.5 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 206, 130.3 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 205.9, 130 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 205.7, 129.7 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 205.5, 129.4 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 205.2, 129 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 205, 128.7 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 204.8, 128.3 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 204.5, 127.9 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 204.2, 127.4 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 203.9, 126.9 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 203.6, 126.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 1, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 2, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 3, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 4, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 5, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 6, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 20, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 22, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 34, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 36, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 42, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 44, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 48, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 50, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 54, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 56, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 58, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 60, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 62, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 64, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 66, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 68, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 70, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 72, 1, 0.22, 0.22 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 316, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 14, 1072 );
SE0 = playSe( spep_0 + 23, 8 );
setSeVolume( spep_0 + 23, 8, 10 );
setSeVolume( spep_0 + 28, 8, 28 );
setSeVolume( spep_0 + 32, 8, 42 );
setSeVolume( spep_0 + 36, 8, 68 );
setSeVolume( spep_0 + 40, 8, 90 );
setSeVolume( spep_0 + 42, 8, 110 );

--前方ダッシュ
SE1 = playSe( spep_0 + 56, 9 );
setSeVolume( spep_0 + 56, 9, 110 );
stopSe( spep_0 + 121, SE1, 0 );

SE2 = playSe( spep_0 + 56, 1182 );
setSeVolume( spep_0 + 56, 1182, 198 );
setSeVolume( spep_0 + 61, 1182, 198 );
setSeVolume( spep_0 + 62, 1182, 140 );
setSeVolume( spep_0 + 63, 1182, 110 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 72 -3; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 203.6, 126.4 , 0 );
setMoveKey( SP_dodge + 2, 1, 203.2, 125.9 , 0 );
setMoveKey( SP_dodge + 4, 1, 202.8, 125.3 , 0 );
setMoveKey( SP_dodge + 6, 1, 202.4, 124.6 , 0 );
setMoveKey( SP_dodge + 8, 1, 202, 123.9 , 0 );
setMoveKey( SP_dodge + 10, 1, 201.5, 123.2 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.22, 0.22 );
setScaleKey( SP_dodge + 2, 1, 0.23, 0.23 );
setScaleKey( SP_dodge + 4, 1, 0.24, 0.24 );
setScaleKey( SP_dodge + 6, 1, 0.25, 0.25 );
setScaleKey( SP_dodge + 8, 1, 0.25, 0.25 );
setScaleKey( SP_dodge + 10, 1, 0.26, 0.26 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

spep_x = spep_0 + 236;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +20, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +20, 515.5 , 0 );

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

-- ** 敵キャラクター ** --
changeAnime( spep_0 -3 + 116, 1, 107 );
changeAnime( spep_0 -3 + 188, 1, 108 );
setDisp( spep_0 -3 + 236, 1, 0 );

setMoveKey( spep_0 -3 + 74, 1, 203.2, 125.9 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 202.8, 125.3 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 202.4, 124.6 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 202, 123.9 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 201.5, 123.2 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 200.9, 122.3 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 200.3, 121.4 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 199.6, 120.3 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 198.8, 119.1 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 197.9, 117.6 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 196.7, 115.8 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 195.2, 113.4 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 192.3, 108.9 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 183.8, 95.8 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 171.6, 76.8 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 154.6, 50.4 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 133, 17 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 111.3, -16.8 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 95.7, -41 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 87.7, -53.5 , 0 );
setMoveKey( spep_0 -3 + 115, 1, 83.1, -54.9 , 0 );
setMoveKey( spep_0 -3 + 116, 1, -225.9, -449.4 , 0 );
setMoveKey( spep_0 -3 + 118, 1, -225.9, -449.4 , 0 );
setMoveKey( spep_0 -3 + 120, 1, -205.9, -409.4 , 0 );
setMoveKey( spep_0 -3 + 122, 1, -185.9, -469.4 , 0 );
setMoveKey( spep_0 -3 + 124, 1, -191.9, -429.4 , 0 );
setMoveKey( spep_0 -3 + 128, 1, -191.9, -429.4 , 0 );
setMoveKey( spep_0 -3 + 130, 1, -171.9, -409.4 , 0 );
setMoveKey( spep_0 -3 + 132, 1, -151.9, -449.4 , 0 );
setMoveKey( spep_0 -3 + 134, 1, -161.9, -429.4 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 455.7, -419.8 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 456.1, -419.9 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 457.2, -420.1 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 459.1, -420.5 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 461.8, -421 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 465.2, -421.6 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 469.4, -422.4 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 474.1, -423.3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 478.3, -424.1 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 481.8, -424.7 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 484.4, -425.3 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 486.3, -425.6 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 487.5, -425.8 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 487.9, -425.9 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 502.1, -431.2 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 532.2, -442.4 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 577.3, -459.3 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 642.5, -483.6 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 741.1, -520.3 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 952.2, -599 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 1334.7, -741.7 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 1889.1, -948.3 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 2606.3, -1215.7 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 3454.2, -1531.7 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 4333.1, -1859.3 , 0 );
setMoveKey( spep_0 -3 + 187, 1, 4871.5, -2060.2 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 4.5, 129.2 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 4.5, 129.2 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 0.1, 122.6 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 2.3, 124.8 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 2.3, 116 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 2.3, 131.4 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 2.3, 120.2 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 2.3, 122.6 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 8.9, 120.4 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 8.9, 133.5 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 6.7, 124.8 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 8.9, 142.3 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 4.5, 129.2 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 11.1, 133.6 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 4.5, 127 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 4.5, 137.9 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 0.2, 122.6 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 4.5, 135.7 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 0.1, 120.4 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 2.3, 137.9 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 6.7, 124.8 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 6.7, 151.1 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 4.5, 133.6 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 4.5, 146.8 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 4.5, 146.8 , 0 );

setScaleKey( spep_0 -3 + 74, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 76, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 78, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 80, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 82, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 84, 1, 0.28, 0.28 );
setScaleKey( spep_0 -3 + 86, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 88, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 90, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 92, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 94, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 96, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 98, 1, 0.46, 0.46 );
setScaleKey( spep_0 -3 + 100, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 102, 1, 0.89, 0.89 );
setScaleKey( spep_0 -3 + 104, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 106, 1, 1.69, 1.69 );
setScaleKey( spep_0 -3 + 108, 1, 2.14, 2.14 );
setScaleKey( spep_0 -3 + 110, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 112, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 115, 1, 2.68, 2.68 );
setScaleKey( spep_0 -3 + 116, 1, 4, 4 );
setScaleKey( spep_0 -3 + 120, 1, 4, 4 );
setScaleKey( spep_0 -3 + 122, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 124, 1, 4, 4 );
setScaleKey( spep_0 -3 + 126, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 128, 1, 4, 4 );
setScaleKey( spep_0 -3 + 130, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 132, 1, 4, 4 );
setScaleKey( spep_0 -3 + 134, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 136, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 138, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 140, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 142, 1, 2.75, 2.75 );
setScaleKey( spep_0 -3 + 144, 1, 2.79, 2.79 );
setScaleKey( spep_0 -3 + 146, 1, 2.85, 2.85 );
setScaleKey( spep_0 -3 + 148, 1, 2.97, 2.97 );
setScaleKey( spep_0 -3 + 150, 1, 2.99, 2.99 );
setScaleKey( spep_0 -3 + 152, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 154, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 156, 1, 3.21, 3.21 );
setScaleKey( spep_0 -3 + 158, 1, 3.18, 3.18 );
setScaleKey( spep_0 -3 + 160, 1, 3.26, 3.26 );
setScaleKey( spep_0 -3 + 162, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 164, 1, 3.33, 3.33 );
setScaleKey( spep_0 -3 + 166, 1, 3.39, 3.39 );
setScaleKey( spep_0 -3 + 168, 1, 3.62, 3.62 );
setScaleKey( spep_0 -3 + 170, 1, 3.81, 3.81 );
setScaleKey( spep_0 -3 + 172, 1, 4.31, 4.31 );
setScaleKey( spep_0 -3 + 174, 1, 5.06, 5.06 );
setScaleKey( spep_0 -3 + 176, 1, 6.72, 6.72 );
setScaleKey( spep_0 -3 + 178, 1, 8.83, 8.83 );
setScaleKey( spep_0 -3 + 180, 1, 11.95, 11.95 );
setScaleKey( spep_0 -3 + 182, 1, 15.1, 15.1 );
setScaleKey( spep_0 -3 + 184, 1, 19, 19 );
setScaleKey( spep_0 -3 + 187, 1, 20.8, 20.8 );
setScaleKey( spep_0 -3 + 188, 1, 0.8, 0.8 );
setScaleKey( spep_0 -3 + 236, 1, 0.8, 0.8 );

setRotateKey( spep_0 -3 + 115, 1, 0 );
setRotateKey( spep_0 -3 + 116, 1, -75 );
setRotateKey( spep_0 -3 + 134, 1, -75 );
setRotateKey( spep_0 -3 + 136, 1, -95 );
setRotateKey( spep_0 -3 + 144, 1, -95 );
setRotateKey( spep_0 -3 + 146, 1, -94.9 );
setRotateKey( spep_0 -3 + 152, 1, -94.9 );
setRotateKey( spep_0 -3 + 154, 1, -94.8 );
setRotateKey( spep_0 -3 + 187, 1, -94.8 );
setRotateKey( spep_0 -3 + 188, 1, -25 );
setRotateKey( spep_0 -3 + 236, 1, -25 );

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--初撃パンチ
playSe( spep_0 + 113, 1110 );
setSeVolume( spep_0 + 113, 1110, 81 );
playSe( spep_0 + 113, 1009 );
setSeVolume( spep_0 + 113, 1009, 99 );
playSe( spep_0 + 113, 1187 );
setSeVolume( spep_0 + 113, 1187, 73 );
playSe( spep_0 + 113, 1120 );
setSeVolume( spep_0 + 113, 1120, 73 );
SE3 = playSe( spep_0 + 113, 1182 );
setSeVolume( spep_0 + 113, 1182, 188 );
setSeVolume( spep_0 + 121, 1182, 188 );
setSeVolume( spep_0 + 128, 1182, 132 );
setSeVolume( spep_0 + 130, 1182, 98 );
setSeVolume( spep_0 + 132, 1182, 56 );
setSeVolume( spep_0 + 136, 1182, 20 );
setSeVolume( spep_0 + 138, 1182, 0 );
stopSe( spep_0 + 138, SE3, 0 );

--顔ズーム
playSe( spep_0 + 133, 1188 );
setSeVolume( spep_0 + 133, 1188, 10 );
setSeVolume( spep_0 + 142, 1188, 28 );
setSeVolume( spep_0 + 156, 1188, 51 );
setSeVolume( spep_0 + 164, 1188, 76 );
setSeVolume( spep_0 + 176, 1188, 99 );

playSe( spep_0 + 140, 1072 );
setSeVolume( spep_0 + 140, 1072, 10 );
setSeVolume( spep_0 + 144, 1072, 27 );
setSeVolume( spep_0 + 148, 1072, 42 );
setSeVolume( spep_0 + 152, 1072, 67 );
setSeVolume( spep_0 + 156, 1072, 82 );
setSeVolume( spep_0 + 159, 1072, 110 );

SE4 = playSe( spep_0 + 155, 1116 );
stopSe( spep_0 + 189, SE4, 85 );

--ラッシュ
playSe( spep_0 + 186, 1110 );
setSeVolume( spep_0 + 186, 1110, 110 );
playSe( spep_0 + 196, 9 );
playSe( spep_0 + 197, 1110 );
setSeVolume( spep_0 + 197, 1110, 89 );
playSe( spep_0 + 207, 1009 );
setSeVolume( spep_0 + 207, 1009, 110 );
playSe( spep_0 + 208, 1009 );
playSe( spep_0 + 217, 1012 );
setSeVolume( spep_0 + 217, 1012, 122 );
playSe( spep_0 + 218, 1110 );
playSe( spep_0 + 228, 1009 );
setSeVolume( spep_0 + 228, 1009, 89 );
playSe( spep_0 + 228, 1010 );
setSeVolume( spep_0 + 228, 1010, 110 );
playSe( spep_0 + 238, 1001 );
setSeVolume( spep_0 + 238, 1001, 110 );
playSe( spep_0 + 240, 1110 );
setSeVolume( spep_0 + 240, 1110, 89 );
playSe( spep_0 + 249, 1009 );
setSeVolume( spep_0 + 249, 1009, 122 );
playSe( spep_0 + 250, 1110 );
setSeVolume( spep_0 + 250, 1110, 73 );
playSe( spep_0 + 260, 1009 );
setSeVolume( spep_0 + 260, 1009, 89 );
SE5 = playSe( spep_0 + 271, 1009 );
setSeVolume( spep_0 + 271, 1009, 81 );
stopSe( spep_0 + 280, SE5, 0 );
playSe( spep_0 + 272, 1110 );
playSe( spep_0 + 280, 1010 );
setSeVolume( spep_0 + 280, 1010, 89 );
SE6 = playSe( spep_0 + 288, 1009 );
setSeVolume( spep_0 + 288, 1009, 110 );
stopSe( spep_0 + 300, SE6, 0 );
SE7 = playSe( spep_0 + 289, 1110 );
setSeVolume( spep_0 + 289, 1110, 81 );
stopSe( spep_0 + 316, SE7, 0 );
SE8 = playSe( spep_0 + 300, 1000 );
setSeVolume( spep_0 + 300, 1000, 89 );
stopSe( spep_0 + 316, SE8, 0 );
SE9 = playSe( spep_0 + 300, 1110 );
setSeVolume( spep_0 + 300, 1110, 110 );
stopSe( spep_0 + 316, SE9, 0 );
SE10 = playSe( spep_0 + 310, 1009 );
setSeVolume( spep_0 + 310, 1009, 110 );
stopSe( spep_0 + 316, SE10, 0 );
SE11 = playSe( spep_0 + 311, 1110 );
setSeVolume( spep_0 + 311, 1110, 89 );
stopSe( spep_0 + 316, SE11, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 314;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- カードカットイン後(354F)
------------------------------------------------------

-- ** エフェクト等 ** --
kouhan_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --カードカットイン後　前側(ef_003)
setEffMoveKey( spep_2 + 0, kouhan_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 354, kouhan_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kouhan_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 354, kouhan_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kouhan_f, 0 );
setEffRotateKey( spep_2 + 354, kouhan_f, 0 );
setEffAlphaKey( spep_2 + 0, kouhan_f, 255 );
setEffAlphaKey( spep_2 + 354, kouhan_f, 255 );

kouhan_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --カードカットイン後　後ろ側(ef_004)
setEffMoveKey( spep_2 + 0, kouhan_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 354, kouhan_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kouhan_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 354, kouhan_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kouhan_b, 0 );
setEffRotateKey( spep_2 + 354, kouhan_b, 0 );
setEffAlphaKey( spep_2 + 0, kouhan_b, 255 );
setEffAlphaKey( spep_2 + 354, kouhan_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 16, 1, 1 );
setDisp( spep_2 -3 + 70, 1, 0 );
setDisp( spep_2 -3 + 100, 1, 1 );
setDisp( spep_2 -3 + 160, 1, 0 );
setDisp( spep_2 -3 + 216, 1, 1 );
setDisp( spep_2 -3 + 238, 1, 0 );
changeAnime( spep_2 -3 + 16, 1, 108 );
changeAnime( spep_2 -3 + 18, 1, 106 );
changeAnime( spep_2 -3 + 58, 1, 108 );
changeAnime( spep_2 -3 + 100, 1, 106 );

setMoveKey( spep_2 -3 + 16, 1, 84.9, 68.7 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 84.9, 68.7 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 65.1, 103.9 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 76.1, 81.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 76.1, 81.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 80.5, 119.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 80.5, 97.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 73.9, 101.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 80.5, 79.7 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 83.2, 81.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 85.9, 83.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 88.7, 63.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 91.4, 65.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 89.7, 52 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 92.5, 54 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 95.2, 55.9 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 97.9, 57.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 100.6, 59.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 103.4, 61.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 106.1, 63.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 108.8, 65.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 111.6, 67.7 , 0 );
setMoveKey( spep_2 -3 + 57, 1, 111.6, 67.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 158.3, 13.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 184.7, -14.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 189.1, -17 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 180.1, 1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 169.5, -18.4 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 169.5, -18.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -19, 16.6 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -19, 16.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -16.6, 36.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -14.5, -9.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -12.8, 11.1 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -13.6, 7.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -13.6, 7.7 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -18, 20.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -22.4, -1.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -15.8, 3.3 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -9.2, -18.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -9.2, -18.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -9.2, 16.5 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -7, 1.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -18, 9.9 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -7, 3.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -7, 3.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -13.6, 20.9 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -18, -5.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -9.2, 12.1 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -18, -9.9 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -18, -9.9 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -9.2, 3.3 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -15.8, -5.5 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -18, 16.5 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -18, -12.1 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -18, -12.1 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -11.4, 14.3 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -15.8, 3.3 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -15.8, 20.9 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -15.8, 20.9 , 0 );
setMoveKey( spep_2 -3 + 216, 1, -11.4, 9.9 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -12.1, -9.4 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -12.8, -28.8 , 0 );
setMoveKey( spep_2 -3 + 222, 1, -13.6, -48.2 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -14.3, -67.6 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -16.7, -59.1 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -19.2, -50.5 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -21.6, -42 , 0 );
setMoveKey( spep_2 -3 + 232, 1, -22.6, -36.1 , 0 );
setMoveKey( spep_2 -3 + 234, 1, -23.7, -30.1 , 0 );
setMoveKey( spep_2 -3 + 236, 1, -24.7, -24.2 , 0 );
setMoveKey( spep_2 -3 + 238, 1, -24.7, -24.2 , 0 );

setScaleKey( spep_2 -3 + 16, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 70, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 100, 1, 1, 1 );
setScaleKey( spep_2 -3 + 102, 1, 1, 1 );
setScaleKey( spep_2 -3 + 104, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 106, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 108, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 110, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 160, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 216, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 218, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 220, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 222, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 224, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 226, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 228, 1, 0.76, 0.76 );
setScaleKey( spep_2 -3 + 230, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 232, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 234, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 236, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 238, 1, 0.86, 0.86 );

setRotateKey( spep_2 -3 + 16, 1, -30 );
setRotateKey( spep_2 -3 + 17, 1, -30 );
setRotateKey( spep_2 -3 + 18, 1, -50 );
setRotateKey( spep_2 -3 + 30, 1, -50 );
setRotateKey( spep_2 -3 + 32, 1, -49.6 );
setRotateKey( spep_2 -3 + 34, 1, -49.2 );
setRotateKey( spep_2 -3 + 36, 1, -48.8 );
setRotateKey( spep_2 -3 + 38, 1, -48.5 );
setRotateKey( spep_2 -3 + 40, 1, -48.1 );
setRotateKey( spep_2 -3 + 42, 1, -47.7 );
setRotateKey( spep_2 -3 + 44, 1, -47.3 );
setRotateKey( spep_2 -3 + 46, 1, -46.9 );
setRotateKey( spep_2 -3 + 48, 1, -46.5 );
setRotateKey( spep_2 -3 + 50, 1, -46.2 );
setRotateKey( spep_2 -3 + 52, 1, -45.8 );
setRotateKey( spep_2 -3 + 54, 1, -45.4 );
setRotateKey( spep_2 -3 + 56, 1, -45 );
setRotateKey( spep_2 -3 + 57, 1, -45 );
setRotateKey( spep_2 -3 + 58, 1, 25 );
setRotateKey( spep_2 -3 + 60, 1, 25 );
setRotateKey( spep_2 -3 + 100, 1, -50 );
setRotateKey( spep_2 -3 + 160, 1, -50 );
setRotateKey( spep_2 -3 + 216, 1, -50 );
setRotateKey( spep_2 -3 + 218, 1, -51.2 );
setRotateKey( spep_2 -3 + 220, 1, -52.5 );
setRotateKey( spep_2 -3 + 222, 1, -53.7 );
setRotateKey( spep_2 -3 + 224, 1, -55 );
setRotateKey( spep_2 -3 + 226, 1, -54.5 );
setRotateKey( spep_2 -3 + 228, 1, -54 );
setRotateKey( spep_2 -3 + 230, 1, -53.5 );
setRotateKey( spep_2 -3 + 232, 1, -52.8 );
setRotateKey( spep_2 -3 + 234, 1, -52.2 );
setRotateKey( spep_2 -3 + 236, 1, -51.5 );
setRotateKey( spep_2 -3 + 238, 1, -51.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 356, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--前方ダッシュ
playSe( spep_2 + 0, 1182 );
setSeVolume( spep_2 + 0, 1182, 158 );
setSeVolume( spep_2 + 6, 1182, 158 );
setSeVolume( spep_2 + 7, 1182, 126 );
setSeVolume( spep_2 + 8, 1182, 110 );

playSe( spep_2 + 0, 9 );
setSeVolume( spep_2 + 0, 9, 89 );

playSe( spep_2 + 0, 1109 );
setSeVolume( spep_2 + 0, 1109, 10 );
setSeVolume( spep_2 + 2, 1109, 24 );
setSeVolume( spep_2 + 4, 1109, 42 );
setSeVolume( spep_2 + 6, 1109, 58 );
setSeVolume( spep_2 + 8, 1109, 64 );
setSeVolume( spep_2 + 10, 1109, 73 );

--膝蹴り
playSe( spep_2 + 8, 1003 );
setSeVolume( spep_2 + 8, 1003, 81 );
playSe( spep_2 + 15, 1187 );
playSe( spep_2 + 15, 1010 );
setSeVolume( spep_2 + 15, 1010, 110 );

--パンチ
playSe( spep_2 + 49, 1189 );
setSeVolume( spep_2 + 49, 1189, 110 );
playSe( spep_2 + 53, 1110 );
setSeVolume( spep_2 + 53, 1110, 110 );
playSe( spep_2 + 53, 1009 );
setSeVolume( spep_2 + 53, 1009, 110 );

--壁打ち付け蹴り
playSe( spep_2 + 53, 1072 );
setSeVolume( spep_2 + 53, 1072, 110 );
playSe( spep_2 + 84, 1004 );
setSeVolume( spep_2 + 84, 1004, 110 );
playSe( spep_2 + 95, 1159 );
setSeVolume( spep_2 + 95, 1159, 0 );
setSeVolume( spep_2 + 105, 1159, 0 );
setSeVolume( spep_2 + 106, 1159, 24 );
setSeVolume( spep_2 + 108, 1159, 67 );
setSeVolume( spep_2 + 109, 1159, 81 );
playSe( spep_2 + 95, 1182 );
setSeVolume( spep_2 + 95, 1182, 188 );
playSe( spep_2 + 95, 1010 );
setSeVolume( spep_2 + 95, 1010, 110 );
playSe( spep_2 + 101, 1187 );
setSeVolume( spep_2 + 101, 1187, 110 );
SE12 = playSe( spep_2 + 104, 1044 );
setSeVolume( spep_2 + 104, 1044, 42 );
stopSe( spep_2 + 159, SE12, 0 );

--ベジットソード出す
playSe( spep_2 + 154, 44 );
SE13 = playSe( spep_2 + 154, 1172 );
setSeVolume( spep_2 + 154, 1172, 73 );
setSeVolume( spep_2 + 176, 1172, 73 );
setSeVolume( spep_2 + 184, 1172, 62 );
setSeVolume( spep_2 + 192, 1172, 49 );
setSeVolume( spep_2 + 200, 1172, 32 );
setSeVolume( spep_2 + 208, 1172, 24 );
setSeVolume( spep_2 + 212, 1172, 10 );
setSeVolume( spep_2 + 218, 1172, 0 );
stopSe( spep_2 + 218, SE13, 0 );
playSe( spep_2 + 154, 1015 );

--斬りつけ
SE14 = playSe( spep_2 + 188, 63 );
setSeVolume( spep_2 + 188, 63, 89 );
setSeVolume( spep_2 + 231, 63, 89 );
setSeVolume( spep_2 + 242, 63, 54 );
setSeVolume( spep_2 + 248, 63, 20 );
setSeVolume( spep_2 + 250, 63, 0 );
stopSe( spep_2 + 250, SE14, 0 );

playSe( spep_2 + 188, 1122 );
setSeVolume( spep_2 + 188, 1122, 0 );
setSeVolume( spep_2 + 190, 1122, 0 );
setSeVolume( spep_2 + 192, 1122, 10 );
setSeVolume( spep_2 + 198, 1122, 25 );
setSeVolume( spep_2 + 200, 1122, 42 );
setSeVolume( spep_2 + 208, 1122, 57 );
setSeVolume( spep_2 + 212, 1122, 63 );
setSeVolume( spep_2 + 215, 1122, 73 );

playSe( spep_2 + 194, 1142 );
playSe( spep_2 + 201, 1004 );
setSeVolume( spep_2 + 201, 1004, 89 );
playSe( spep_2 + 208, 1003 );
setSeVolume( spep_2 + 208, 1003, 110 );
playSe( spep_2 + 216, 1032 );
playSe( spep_2 + 216, 1061 );
setSeVolume( spep_2 + 216, 1061, 110 );
playSe( spep_2 + 227, 1031 );
setSeVolume( spep_2 + 227, 1031, 81 );
playSe( spep_2 + 229, 1055 );
setSeVolume( spep_2 + 229, 1055, 110 );

--岩剣連撃
playSe( spep_2 + 241, 1031 );
setSeVolume( spep_2 + 241, 1031, 66 );

SE15 = playSe( spep_2 + 241, 1141 );
setSeVolume( spep_2 + 241, 1141, 73 );
stopSe( spep_2 + 251, SE15, 0 );

playSe( spep_2 + 247, 1032 );
setSeVolume( spep_2 + 247, 1032, 50 );

SE16 = playSe( spep_2 + 250, 1143 );
setSeVolume( spep_2 + 250, 1143, 66 );
stopSe( spep_2 + 260, SE16, 0 );

playSe( spep_2 + 253, 1031 );
setSeVolume( spep_2 + 253, 1031, 55 );

playSe( spep_2 + 259, 1032 );
setSeVolume( spep_2 + 259, 1032, 55 );

SE17 = playSe( spep_2 + 260, 1141 );
setSeVolume( spep_2 + 260, 1141, 81 );
stopSe( spep_2 + 270, SE17, 0 );

playSe( spep_2 + 265, 1031 );
setSeVolume( spep_2 + 265, 1031, 55 );

SE18 = playSe( spep_2 + 269, 1143 );
setSeVolume( spep_2 + 269, 1143, 55 );
stopSe( spep_2 + 282, SE18, 0 );

playSe( spep_2 + 271, 1032 );
setSeVolume( spep_2 + 271, 1032, 66 );

playSe( spep_2 + 277, 1031 );
setSeVolume( spep_2 + 277, 1031, 73 );

SE19 = playSe( spep_2 + 281, 1143 );
setSeVolume( spep_2 + 281, 1143, 73 );
stopSe( spep_2 + 289, SE19, 0 );

playSe( spep_2 + 282, 1032 );
setSeVolume( spep_2 + 282, 1032, 73 );

playSe( spep_2 + 289, 1031 );
setSeVolume( spep_2 + 289, 1031, 55 );

SE20 = playSe( spep_2 + 289, 1141 );
setSeVolume( spep_2 + 289, 1141, 73 );
stopSe( spep_2 + 299, SE20, 0 );

--爆発
playSe( spep_2 + 296, 1023 );
setSeVolume( spep_2 + 296, 1023, 110 );
playSe( spep_2 + 300, 1159 );
setSeVolume( spep_2 + 300, 1159, 110 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 298 );
endPhase( spep_2 + 352 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- カードカットインまで(314F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
zenhan_f = entryEffectLife( spep_0 + 0, SP_01x, 314, 0x100, -1, 0, 0, 0 );  --カードカットインまで　前側(ef_001)
setEffMoveKey( spep_0 + 0, zenhan_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 314, zenhan_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, zenhan_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 314, zenhan_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, zenhan_f, 0 );
setEffRotateKey( spep_0 + 314, zenhan_f, 0 );
setEffAlphaKey( spep_0 + 0, zenhan_f, 255 );
setEffAlphaKey( spep_0 + 314, zenhan_f, 255 );

zenhan_b = entryEffectLife( spep_0 + 0, SP_02, 314, 0x80, -1, 0, 0, 0 );  --カードカットインまで　後ろ側(ef_002)
setEffMoveKey( spep_0 + 0, zenhan_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 314, zenhan_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, zenhan_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 314, zenhan_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, zenhan_b, 0 );
setEffRotateKey( spep_0 + 314, zenhan_b, 0 );
setEffAlphaKey( spep_0 + 0, zenhan_b, 255 );
setEffAlphaKey( spep_0 + 314, zenhan_b, 255 );

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 100 );
setDisp( spep_0 + 0, 1, 1 );

setMoveKey( spep_0 + 0, 1, 208, 133.3 , 0 );
setMoveKey( spep_0 + 1, 1, 208, 133.3 , 0 );
setMoveKey( spep_0 + 2, 1, 208, 133.3 , 0 );
setMoveKey( spep_0 + 3, 1, 208, 133.3 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 208, 133.3 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 208, 133.3 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 208, 133.2 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 208, 133.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 207.9, 133.2 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 207.9, 133.2 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 207.9, 133.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 207.8, 133.1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 207.8, 133 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 207.8, 132.9 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 207.7, 132.8 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 207.6, 132.7 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 207.6, 132.6 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 207.5, 132.5 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 207.4, 132.4 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 207.3, 132.3 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 207.2, 132.1 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 207.1, 132 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 207, 131.8 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 206.9, 131.6 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 206.8, 131.4 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 206.7, 131.2 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 206.5, 131 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 206.4, 130.8 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 206.2, 130.5 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 206, 130.3 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 205.9, 130 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 205.7, 129.7 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 205.5, 129.4 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 205.2, 129 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 205, 128.7 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 204.8, 128.3 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 204.5, 127.9 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 204.2, 127.4 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 203.9, 126.9 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 203.6, 126.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 1, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 2, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 3, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 4, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 5, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 6, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 20, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 22, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 34, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 36, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 42, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 44, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 48, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 50, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 54, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 56, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 58, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 60, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 62, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 64, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 66, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 68, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 70, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 72, 1, 0.22, 0.22 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 316, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 14, 1072 );
SE0 = playSe( spep_0 + 23, 8 );
setSeVolume( spep_0 + 23, 8, 10 );
setSeVolume( spep_0 + 28, 8, 28 );
setSeVolume( spep_0 + 32, 8, 42 );
setSeVolume( spep_0 + 36, 8, 68 );
setSeVolume( spep_0 + 40, 8, 90 );
setSeVolume( spep_0 + 42, 8, 110 );

--前方ダッシュ
SE1 = playSe( spep_0 + 56, 9 );
setSeVolume( spep_0 + 56, 9, 110 );
stopSe( spep_0 + 121, SE1, 0 );

SE2 = playSe( spep_0 + 56, 1182 );
setSeVolume( spep_0 + 56, 1182, 198 );
setSeVolume( spep_0 + 61, 1182, 198 );
setSeVolume( spep_0 + 62, 1182, 140 );
setSeVolume( spep_0 + 63, 1182, 110 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 72 -3; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 203.6, 126.4 , 0 );
setMoveKey( SP_dodge + 2, 1, 203.2, 125.9 , 0 );
setMoveKey( SP_dodge + 4, 1, 202.8, 125.3 , 0 );
setMoveKey( SP_dodge + 6, 1, 202.4, 124.6 , 0 );
setMoveKey( SP_dodge + 8, 1, 202, 123.9 , 0 );
setMoveKey( SP_dodge + 10, 1, 201.5, 123.2 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.22, 0.22 );
setScaleKey( SP_dodge + 2, 1, 0.23, 0.23 );
setScaleKey( SP_dodge + 4, 1, 0.24, 0.24 );
setScaleKey( SP_dodge + 6, 1, 0.25, 0.25 );
setScaleKey( SP_dodge + 8, 1, 0.25, 0.25 );
setScaleKey( SP_dodge + 10, 1, 0.26, 0.26 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

spep_x = spep_0 + 236;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +20, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +20, 515.5 , 0 );

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

-- ** 敵キャラクター ** --
changeAnime( spep_0 -3 + 116, 1, 107 );
changeAnime( spep_0 -3 + 188, 1, 108 );
setDisp( spep_0 -3 + 236, 1, 0 );

setMoveKey( spep_0 -3 + 74, 1, 203.2, 125.9 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 202.8, 125.3 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 202.4, 124.6 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 202, 123.9 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 201.5, 123.2 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 200.9, 122.3 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 200.3, 121.4 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 199.6, 120.3 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 198.8, 119.1 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 197.9, 117.6 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 196.7, 115.8 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 195.2, 113.4 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 192.3, 108.9 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 183.8, 95.8 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 171.6, 76.8 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 154.6, 50.4 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 133, 17 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 111.3, -16.8 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 95.7, -41 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 87.7, -53.5 , 0 );
setMoveKey( spep_0 -3 + 115, 1, 83.1, -54.9 , 0 );
setMoveKey( spep_0 -3 + 116, 1, -225.9, -449.4 , 0 );
setMoveKey( spep_0 -3 + 118, 1, -225.9, -449.4 , 0 );
setMoveKey( spep_0 -3 + 120, 1, -205.9, -409.4 , 0 );
setMoveKey( spep_0 -3 + 122, 1, -185.9, -469.4 , 0 );
setMoveKey( spep_0 -3 + 124, 1, -191.9, -429.4 , 0 );
setMoveKey( spep_0 -3 + 128, 1, -191.9, -429.4 , 0 );
setMoveKey( spep_0 -3 + 130, 1, -171.9, -409.4 , 0 );
setMoveKey( spep_0 -3 + 132, 1, -151.9, -449.4 , 0 );
setMoveKey( spep_0 -3 + 134, 1, -161.9, -429.4 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 455.7, -419.8 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 456.1, -419.9 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 457.2, -420.1 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 459.1, -420.5 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 461.8, -421 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 465.2, -421.6 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 469.4, -422.4 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 474.1, -423.3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 478.3, -424.1 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 481.8, -424.7 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 484.4, -425.3 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 486.3, -425.6 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 487.5, -425.8 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 487.9, -425.9 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 502.1, -431.2 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 532.2, -442.4 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 577.3, -459.3 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 642.5, -483.6 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 741.1, -520.3 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 952.2, -599 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 1334.7, -741.7 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 1889.1, -948.3 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 2606.3, -1215.7 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 3454.2, -1531.7 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 4333.1, -1859.3 , 0 );
setMoveKey( spep_0 -3 + 187, 1, 4871.5, -2060.2 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 4.5, 129.2 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 4.5, 129.2 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 0.1, 122.6 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 2.3, 124.8 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 2.3, 116 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 2.3, 131.4 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 2.3, 120.2 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 2.3, 122.6 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 8.9, 120.4 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 8.9, 133.5 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 6.7, 124.8 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 8.9, 142.3 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 4.5, 129.2 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 11.1, 133.6 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 4.5, 127 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 4.5, 137.9 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 0.2, 122.6 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 4.5, 135.7 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 0.1, 120.4 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 2.3, 137.9 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 6.7, 124.8 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 6.7, 151.1 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 4.5, 133.6 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 4.5, 146.8 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 4.5, 146.8 , 0 );

setScaleKey( spep_0 -3 + 74, 1, 0.23, 0.23 );
setScaleKey( spep_0 -3 + 76, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 78, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 80, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 82, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 84, 1, 0.28, 0.28 );
setScaleKey( spep_0 -3 + 86, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 88, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 90, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 92, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 94, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 96, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 98, 1, 0.46, 0.46 );
setScaleKey( spep_0 -3 + 100, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 102, 1, 0.89, 0.89 );
setScaleKey( spep_0 -3 + 104, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 106, 1, 1.69, 1.69 );
setScaleKey( spep_0 -3 + 108, 1, 2.14, 2.14 );
setScaleKey( spep_0 -3 + 110, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 112, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 115, 1, 2.68, 2.68 );
setScaleKey( spep_0 -3 + 116, 1, 4, 4 );
setScaleKey( spep_0 -3 + 120, 1, 4, 4 );
setScaleKey( spep_0 -3 + 122, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 124, 1, 4, 4 );
setScaleKey( spep_0 -3 + 126, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 128, 1, 4, 4 );
setScaleKey( spep_0 -3 + 130, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 132, 1, 4, 4 );
setScaleKey( spep_0 -3 + 134, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 136, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 138, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 140, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 142, 1, 2.75, 2.75 );
setScaleKey( spep_0 -3 + 144, 1, 2.79, 2.79 );
setScaleKey( spep_0 -3 + 146, 1, 2.85, 2.85 );
setScaleKey( spep_0 -3 + 148, 1, 2.97, 2.97 );
setScaleKey( spep_0 -3 + 150, 1, 2.99, 2.99 );
setScaleKey( spep_0 -3 + 152, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 154, 1, 3.11, 3.11 );
setScaleKey( spep_0 -3 + 156, 1, 3.21, 3.21 );
setScaleKey( spep_0 -3 + 158, 1, 3.18, 3.18 );
setScaleKey( spep_0 -3 + 160, 1, 3.26, 3.26 );
setScaleKey( spep_0 -3 + 162, 1, 3.2, 3.2 );
setScaleKey( spep_0 -3 + 164, 1, 3.33, 3.33 );
setScaleKey( spep_0 -3 + 166, 1, 3.39, 3.39 );
setScaleKey( spep_0 -3 + 168, 1, 3.62, 3.62 );
setScaleKey( spep_0 -3 + 170, 1, 3.81, 3.81 );
setScaleKey( spep_0 -3 + 172, 1, 4.31, 4.31 );
setScaleKey( spep_0 -3 + 174, 1, 5.06, 5.06 );
setScaleKey( spep_0 -3 + 176, 1, 6.72, 6.72 );
setScaleKey( spep_0 -3 + 178, 1, 8.83, 8.83 );
setScaleKey( spep_0 -3 + 180, 1, 11.95, 11.95 );
setScaleKey( spep_0 -3 + 182, 1, 15.1, 15.1 );
setScaleKey( spep_0 -3 + 184, 1, 19, 19 );
setScaleKey( spep_0 -3 + 187, 1, 20.8, 20.8 );
setScaleKey( spep_0 -3 + 188, 1, 0.8, 0.8 );
setScaleKey( spep_0 -3 + 236, 1, 0.8, 0.8 );

setRotateKey( spep_0 -3 + 115, 1, 0 );
setRotateKey( spep_0 -3 + 116, 1, -75 );
setRotateKey( spep_0 -3 + 134, 1, -75 );
setRotateKey( spep_0 -3 + 136, 1, -95 );
setRotateKey( spep_0 -3 + 144, 1, -95 );
setRotateKey( spep_0 -3 + 146, 1, -94.9 );
setRotateKey( spep_0 -3 + 152, 1, -94.9 );
setRotateKey( spep_0 -3 + 154, 1, -94.8 );
setRotateKey( spep_0 -3 + 187, 1, -94.8 );
setRotateKey( spep_0 -3 + 188, 1, -25 );
setRotateKey( spep_0 -3 + 236, 1, -25 );

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--初撃パンチ
playSe( spep_0 + 113, 1110 );
setSeVolume( spep_0 + 113, 1110, 81 );
playSe( spep_0 + 113, 1009 );
setSeVolume( spep_0 + 113, 1009, 99 );
playSe( spep_0 + 113, 1187 );
setSeVolume( spep_0 + 113, 1187, 73 );
playSe( spep_0 + 113, 1120 );
setSeVolume( spep_0 + 113, 1120, 73 );
SE3 = playSe( spep_0 + 113, 1182 );
setSeVolume( spep_0 + 113, 1182, 188 );
setSeVolume( spep_0 + 121, 1182, 188 );
setSeVolume( spep_0 + 128, 1182, 132 );
setSeVolume( spep_0 + 130, 1182, 98 );
setSeVolume( spep_0 + 132, 1182, 56 );
setSeVolume( spep_0 + 136, 1182, 20 );
setSeVolume( spep_0 + 138, 1182, 0 );
stopSe( spep_0 + 138, SE3, 0 );

--顔ズーム
playSe( spep_0 + 133, 1188 );
setSeVolume( spep_0 + 133, 1188, 10 );
setSeVolume( spep_0 + 142, 1188, 28 );
setSeVolume( spep_0 + 156, 1188, 51 );
setSeVolume( spep_0 + 164, 1188, 76 );
setSeVolume( spep_0 + 176, 1188, 99 );

playSe( spep_0 + 140, 1072 );
setSeVolume( spep_0 + 140, 1072, 10 );
setSeVolume( spep_0 + 144, 1072, 27 );
setSeVolume( spep_0 + 148, 1072, 42 );
setSeVolume( spep_0 + 152, 1072, 67 );
setSeVolume( spep_0 + 156, 1072, 82 );
setSeVolume( spep_0 + 159, 1072, 110 );

SE4 = playSe( spep_0 + 155, 1116 );
stopSe( spep_0 + 189, SE4, 85 );

--ラッシュ
playSe( spep_0 + 186, 1110 );
setSeVolume( spep_0 + 186, 1110, 110 );
playSe( spep_0 + 196, 9 );
playSe( spep_0 + 197, 1110 );
setSeVolume( spep_0 + 197, 1110, 89 );
playSe( spep_0 + 207, 1009 );
setSeVolume( spep_0 + 207, 1009, 110 );
playSe( spep_0 + 208, 1009 );
playSe( spep_0 + 217, 1012 );
setSeVolume( spep_0 + 217, 1012, 122 );
playSe( spep_0 + 218, 1110 );
playSe( spep_0 + 228, 1009 );
setSeVolume( spep_0 + 228, 1009, 89 );
playSe( spep_0 + 228, 1010 );
setSeVolume( spep_0 + 228, 1010, 110 );
playSe( spep_0 + 238, 1001 );
setSeVolume( spep_0 + 238, 1001, 110 );
playSe( spep_0 + 240, 1110 );
setSeVolume( spep_0 + 240, 1110, 89 );
playSe( spep_0 + 249, 1009 );
setSeVolume( spep_0 + 249, 1009, 122 );
playSe( spep_0 + 250, 1110 );
setSeVolume( spep_0 + 250, 1110, 73 );
playSe( spep_0 + 260, 1009 );
setSeVolume( spep_0 + 260, 1009, 89 );
SE5 = playSe( spep_0 + 271, 1009 );
setSeVolume( spep_0 + 271, 1009, 81 );
stopSe( spep_0 + 280, SE5, 0 );
playSe( spep_0 + 272, 1110 );
playSe( spep_0 + 280, 1010 );
setSeVolume( spep_0 + 280, 1010, 89 );
SE6 = playSe( spep_0 + 288, 1009 );
setSeVolume( spep_0 + 288, 1009, 110 );
stopSe( spep_0 + 300, SE6, 0 );
SE7 = playSe( spep_0 + 289, 1110 );
setSeVolume( spep_0 + 289, 1110, 81 );
stopSe( spep_0 + 316, SE7, 0 );
SE8 = playSe( spep_0 + 300, 1000 );
setSeVolume( spep_0 + 300, 1000, 89 );
stopSe( spep_0 + 316, SE8, 0 );
SE9 = playSe( spep_0 + 300, 1110 );
setSeVolume( spep_0 + 300, 1110, 110 );
stopSe( spep_0 + 316, SE9, 0 );
SE10 = playSe( spep_0 + 310, 1009 );
setSeVolume( spep_0 + 310, 1009, 110 );
stopSe( spep_0 + 316, SE10, 0 );
SE11 = playSe( spep_0 + 311, 1110 );
setSeVolume( spep_0 + 311, 1110, 89 );
stopSe( spep_0 + 316, SE11, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 314;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- カードカットイン後(354F)
------------------------------------------------------

-- ** エフェクト等 ** --
kouhan_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --カードカットイン後　前側(ef_003)
setEffMoveKey( spep_2 + 0, kouhan_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 354, kouhan_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kouhan_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 354, kouhan_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kouhan_f, 0 );
setEffRotateKey( spep_2 + 354, kouhan_f, 0 );
setEffAlphaKey( spep_2 + 0, kouhan_f, 255 );
setEffAlphaKey( spep_2 + 354, kouhan_f, 255 );

kouhan_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --カードカットイン後　後ろ側(ef_004)
setEffMoveKey( spep_2 + 0, kouhan_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 354, kouhan_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kouhan_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 354, kouhan_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kouhan_b, 0 );
setEffRotateKey( spep_2 + 354, kouhan_b, 0 );
setEffAlphaKey( spep_2 + 0, kouhan_b, 255 );
setEffAlphaKey( spep_2 + 354, kouhan_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 16, 1, 1 );
setDisp( spep_2 -3 + 70, 1, 0 );
setDisp( spep_2 -3 + 100, 1, 1 );
setDisp( spep_2 -3 + 160, 1, 0 );
setDisp( spep_2 -3 + 216, 1, 1 );
setDisp( spep_2 -3 + 238, 1, 0 );
changeAnime( spep_2 -3 + 16, 1, 8 );
changeAnime( spep_2 -3 + 18, 1, 6 );
changeAnime( spep_2 -3 + 58, 1, 8 );
changeAnime( spep_2 -3 + 100, 1, 6 );

setMoveKey( spep_2 -3 + 16, 1, -84.9, 68.7 , 0 );
setMoveKey( spep_2 -3 + 17, 1, -84.9, 68.7 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -65.1, 103.9 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -76.1, 81.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -76.1, 81.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -80.5, 119.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -80.5, 97.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -73.9, 101.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -80.5, 79.7 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -83.2, 81.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -85.9, 83.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -88.7, 63.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -91.4, 65.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -89.7, 52 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -92.5, 54 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -95.2, 55.9 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -97.9, 57.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -100.6, 59.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -103.4, 61.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -106.1, 63.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -108.8, 65.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -111.6, 67.7 , 0 );
setMoveKey( spep_2 -3 + 57, 1, -111.6, 67.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -158.3, 13.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -184.7, -14.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -189.1, -17 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -180.1, 1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -169.5, -18.4 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -169.5, -18.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 19, 16.6 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 19, 16.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 16.6, 36.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 14.5, -9.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 12.8, 11.1 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 13.6, 7.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 13.6, 7.7 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 18, 20.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 22.4, -1.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 15.8, 3.3 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 9.2, -18.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 9.2, -18.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 9.2, 16.5 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 7, 1.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 18, 9.9 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 7, 3.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 7, 3.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 13.6, 20.9 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 18, -5.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 9.2, 12.1 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 18, -9.9 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 18, -9.9 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 9.2, 3.3 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 15.8, -5.5 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 18, 16.5 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 18, -12.1 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 18, -12.1 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 11.4, 14.3 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 15.8, 3.3 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 15.8, 20.9 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 15.8, 20.9 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 11.4, 9.9 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 12.1, -9.4 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 12.8, -28.8 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 13.6, -48.2 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 14.3, -67.6 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 16.7, -59.1 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 19.2, -50.5 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 21.6, -42 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 22.6, -36.1 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 23.7, -30.1 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 24.7, -24.2 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 24.7, -24.2 , 0 );

setScaleKey( spep_2 -3 + 16, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 70, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 100, 1, 1, 1 );
setScaleKey( spep_2 -3 + 102, 1, 1, 1 );
setScaleKey( spep_2 -3 + 104, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 106, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 108, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 110, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 160, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 216, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 218, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 220, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 222, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 224, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 226, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 228, 1, 0.76, 0.76 );
setScaleKey( spep_2 -3 + 230, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 232, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 234, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 236, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 238, 1, 0.86, 0.86 );

setRotateKey( spep_2 -3 + 16, 1, 30 );
setRotateKey( spep_2 -3 + 17, 1, 30 );
setRotateKey( spep_2 -3 + 18, 1, 50 );
setRotateKey( spep_2 -3 + 30, 1, 50 );
setRotateKey( spep_2 -3 + 32, 1, 49.6 );
setRotateKey( spep_2 -3 + 34, 1, 49.2 );
setRotateKey( spep_2 -3 + 36, 1, 48.8 );
setRotateKey( spep_2 -3 + 38, 1, 48.5 );
setRotateKey( spep_2 -3 + 40, 1, 48.1 );
setRotateKey( spep_2 -3 + 42, 1, 47.7 );
setRotateKey( spep_2 -3 + 44, 1, 47.3 );
setRotateKey( spep_2 -3 + 46, 1, 46.9 );
setRotateKey( spep_2 -3 + 48, 1, 46.5 );
setRotateKey( spep_2 -3 + 50, 1, 46.2 );
setRotateKey( spep_2 -3 + 52, 1, 45.8 );
setRotateKey( spep_2 -3 + 54, 1, 45.4 );
setRotateKey( spep_2 -3 + 56, 1, 45 );
setRotateKey( spep_2 -3 + 57, 1, 45 );
setRotateKey( spep_2 -3 + 58, 1, -25 );
setRotateKey( spep_2 -3 + 60, 1, -25 );
setRotateKey( spep_2 -3 + 100, 1, 50 );
setRotateKey( spep_2 -3 + 160, 1, 50 );
setRotateKey( spep_2 -3 + 216, 1, 50 );
setRotateKey( spep_2 -3 + 218, 1, 51.2 );
setRotateKey( spep_2 -3 + 220, 1, 52.5 );
setRotateKey( spep_2 -3 + 222, 1, 53.7 );
setRotateKey( spep_2 -3 + 224, 1, 55 );
setRotateKey( spep_2 -3 + 226, 1, 54.5 );
setRotateKey( spep_2 -3 + 228, 1, 54 );
setRotateKey( spep_2 -3 + 230, 1, 53.5 );
setRotateKey( spep_2 -3 + 232, 1, 52.8 );
setRotateKey( spep_2 -3 + 234, 1, 52.2 );
setRotateKey( spep_2 -3 + 236, 1, 51.5 );
setRotateKey( spep_2 -3 + 238, 1, 51.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 356, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--前方ダッシュ
playSe( spep_2 + 0, 1182 );
setSeVolume( spep_2 + 0, 1182, 158 );
setSeVolume( spep_2 + 6, 1182, 158 );
setSeVolume( spep_2 + 7, 1182, 126 );
setSeVolume( spep_2 + 8, 1182, 110 );

playSe( spep_2 + 0, 9 );
setSeVolume( spep_2 + 0, 9, 89 );

playSe( spep_2 + 0, 1109 );
setSeVolume( spep_2 + 0, 1109, 10 );
setSeVolume( spep_2 + 2, 1109, 24 );
setSeVolume( spep_2 + 4, 1109, 42 );
setSeVolume( spep_2 + 6, 1109, 58 );
setSeVolume( spep_2 + 8, 1109, 64 );
setSeVolume( spep_2 + 10, 1109, 73 );

--膝蹴り
playSe( spep_2 + 8, 1003 );
setSeVolume( spep_2 + 8, 1003, 81 );
playSe( spep_2 + 15, 1187 );
playSe( spep_2 + 15, 1010 );
setSeVolume( spep_2 + 15, 1010, 110 );

--パンチ
playSe( spep_2 + 49, 1189 );
setSeVolume( spep_2 + 49, 1189, 110 );
playSe( spep_2 + 53, 1110 );
setSeVolume( spep_2 + 53, 1110, 110 );
playSe( spep_2 + 53, 1009 );
setSeVolume( spep_2 + 53, 1009, 110 );

--壁打ち付け蹴り
playSe( spep_2 + 53, 1072 );
setSeVolume( spep_2 + 53, 1072, 110 );
playSe( spep_2 + 84, 1004 );
setSeVolume( spep_2 + 84, 1004, 110 );
playSe( spep_2 + 95, 1159 );
setSeVolume( spep_2 + 95, 1159, 0 );
setSeVolume( spep_2 + 105, 1159, 0 );
setSeVolume( spep_2 + 106, 1159, 24 );
setSeVolume( spep_2 + 108, 1159, 67 );
setSeVolume( spep_2 + 109, 1159, 81 );
playSe( spep_2 + 95, 1182 );
setSeVolume( spep_2 + 95, 1182, 188 );
playSe( spep_2 + 95, 1010 );
setSeVolume( spep_2 + 95, 1010, 110 );
playSe( spep_2 + 101, 1187 );
setSeVolume( spep_2 + 101, 1187, 110 );
SE12 = playSe( spep_2 + 104, 1044 );
setSeVolume( spep_2 + 104, 1044, 42 );
stopSe( spep_2 + 159, SE12, 0 );

--ベジットソード出す
playSe( spep_2 + 154, 44 );
SE13 = playSe( spep_2 + 154, 1172 );
setSeVolume( spep_2 + 154, 1172, 73 );
setSeVolume( spep_2 + 176, 1172, 73 );
setSeVolume( spep_2 + 184, 1172, 62 );
setSeVolume( spep_2 + 192, 1172, 49 );
setSeVolume( spep_2 + 200, 1172, 32 );
setSeVolume( spep_2 + 208, 1172, 24 );
setSeVolume( spep_2 + 212, 1172, 10 );
setSeVolume( spep_2 + 218, 1172, 0 );
stopSe( spep_2 + 218, SE13, 0 );
playSe( spep_2 + 154, 1015 );

--斬りつけ
SE14 = playSe( spep_2 + 188, 63 );
setSeVolume( spep_2 + 188, 63, 89 );
setSeVolume( spep_2 + 231, 63, 89 );
setSeVolume( spep_2 + 242, 63, 54 );
setSeVolume( spep_2 + 248, 63, 20 );
setSeVolume( spep_2 + 250, 63, 0 );
stopSe( spep_2 + 250, SE14, 0 );

playSe( spep_2 + 188, 1122 );
setSeVolume( spep_2 + 188, 1122, 0 );
setSeVolume( spep_2 + 190, 1122, 0 );
setSeVolume( spep_2 + 192, 1122, 10 );
setSeVolume( spep_2 + 198, 1122, 25 );
setSeVolume( spep_2 + 200, 1122, 42 );
setSeVolume( spep_2 + 208, 1122, 57 );
setSeVolume( spep_2 + 212, 1122, 63 );
setSeVolume( spep_2 + 215, 1122, 73 );

playSe( spep_2 + 194, 1142 );
playSe( spep_2 + 201, 1004 );
setSeVolume( spep_2 + 201, 1004, 89 );
playSe( spep_2 + 208, 1003 );
setSeVolume( spep_2 + 208, 1003, 110 );
playSe( spep_2 + 216, 1032 );
playSe( spep_2 + 216, 1061 );
setSeVolume( spep_2 + 216, 1061, 110 );
playSe( spep_2 + 227, 1031 );
setSeVolume( spep_2 + 227, 1031, 81 );
playSe( spep_2 + 229, 1055 );
setSeVolume( spep_2 + 229, 1055, 110 );

--岩剣連撃
playSe( spep_2 + 241, 1031 );
setSeVolume( spep_2 + 241, 1031, 66 );

SE15 = playSe( spep_2 + 241, 1141 );
setSeVolume( spep_2 + 241, 1141, 73 );
stopSe( spep_2 + 251, SE15, 0 );

playSe( spep_2 + 247, 1032 );
setSeVolume( spep_2 + 247, 1032, 50 );

SE16 = playSe( spep_2 + 250, 1143 );
setSeVolume( spep_2 + 250, 1143, 66 );
stopSe( spep_2 + 260, SE16, 0 );

playSe( spep_2 + 253, 1031 );
setSeVolume( spep_2 + 253, 1031, 55 );

playSe( spep_2 + 259, 1032 );
setSeVolume( spep_2 + 259, 1032, 55 );

SE17 = playSe( spep_2 + 260, 1141 );
setSeVolume( spep_2 + 260, 1141, 81 );
stopSe( spep_2 + 270, SE17, 0 );

playSe( spep_2 + 265, 1031 );
setSeVolume( spep_2 + 265, 1031, 55 );

SE18 = playSe( spep_2 + 269, 1143 );
setSeVolume( spep_2 + 269, 1143, 55 );
stopSe( spep_2 + 282, SE18, 0 );

playSe( spep_2 + 271, 1032 );
setSeVolume( spep_2 + 271, 1032, 66 );

playSe( spep_2 + 277, 1031 );
setSeVolume( spep_2 + 277, 1031, 73 );

SE19 = playSe( spep_2 + 281, 1143 );
setSeVolume( spep_2 + 281, 1143, 73 );
stopSe( spep_2 + 289, SE19, 0 );

playSe( spep_2 + 282, 1032 );
setSeVolume( spep_2 + 282, 1032, 73 );

playSe( spep_2 + 289, 1031 );
setSeVolume( spep_2 + 289, 1031, 55 );

SE20 = playSe( spep_2 + 289, 1141 );
setSeVolume( spep_2 + 289, 1141, 73 );
stopSe( spep_2 + 299, SE20, 0 );

--爆発
playSe( spep_2 + 296, 1023 );
setSeVolume( spep_2 + 296, 1023, 110 );
playSe( spep_2 + 300, 1159 );
setSeVolume( spep_2 + 300, 1159, 110 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 298 );
endPhase( spep_2 + 352 );

end
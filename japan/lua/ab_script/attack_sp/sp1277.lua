--超サイヤ人2孫悟飯_龍翔破

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
SP_01 = 153273; --気溜め
SP_02 = 153274; --瞬間移動
SP_03 = 153275; --殴る
SP_04 = 153276; --肘打ち
SP_05 = 153277; --蹴り・手前
SP_06 = 153278; --蹴り・奥


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
-- 気溜め(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 30, 0x100, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 30, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 30, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 30, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 29, tame, 255 );
setEffAlphaKey( spep_0 + 30, tame, 0 );

idou = entryEffectLife( spep_0 + 30, SP_02, 116, 0x100, -1, 0, 0, 0 );  --瞬間移動(ef_002)
setEffMoveKey( spep_0 + 30, idou, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, idou, 0, 0 , 0 );
setEffScaleKey( spep_0 + 30, idou, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, idou, 1.0, 1.0 );
setEffRotateKey( spep_0 + 30, idou, 0 );
setEffRotateKey( spep_0 + 146, idou, 0 );
setEffAlphaKey( spep_0 + 30, idou, 255 );
setEffAlphaKey( spep_0 + 146, idou, 255 );

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_0 + 30,  10013, 12, 0x100, -1, 0, 22, 191.9 ); --ズズズンッ
setEffShake( spep_0 + 30, ctzuzun, 12, 10 );

setEffMoveKey( spep_0 + 30, ctzuzun, 22, 191.9 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzun, 29.8, 246.3 , 0 );
setEffMoveKey( spep_0 + 34, ctzuzun, 49.2, 309.6 , 0 );
setEffMoveKey( spep_0 + 36, ctzuzun, 46.8, 334 , 0 );
setEffMoveKey( spep_0 + 38, ctzuzun, 52.9, 331.8 , 0 );
setEffMoveKey( spep_0 + 40, ctzuzun, 39.3, 310.4 , 0 );
setEffMoveKey( spep_0 + 42, ctzuzun, 36, 299.9 , 0 );

setEffScaleKey( spep_0 + 30, ctzuzun, 1.34, 1.34 );
setEffScaleKey( spep_0 + 32, ctzuzun, 2.17, 2.17 );
setEffScaleKey( spep_0 + 34, ctzuzun, 2.98, 2.98 );
setEffScaleKey( spep_0 + 36, ctzuzun, 3.5, 3.5 );
setEffScaleKey( spep_0 + 42, ctzuzun, 3.5, 3.5 );

setEffRotateKey( spep_0 + 30, ctzuzun, 0 );
setEffRotateKey( spep_0 + 42, ctzuzun, 0 );

setEffAlphaKey( spep_0 + 30, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 32, ctzuzun, 206 );
setEffAlphaKey( spep_0 + 34, ctzuzun, 159 );
setEffAlphaKey( spep_0 + 36, ctzuzun, 115 );
setEffAlphaKey( spep_0 + 38, ctzuzun, 74 );
setEffAlphaKey( spep_0 + 40, ctzuzun, 35 );
setEffAlphaKey( spep_0 + 42, ctzuzun, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 42; --エンドフェイズのフレーム数を置き換える

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

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 38, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 38, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 54,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 54, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 54, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 122, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 54, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 114, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 116, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 118, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 120, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 122, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 54, ctgogo, 0 );
setEffRotateKey( spep_0 + 122, ctgogo, 0 );

setEffAlphaKey( spep_0 + 54, ctgogo, 255 );
setEffAlphaKey( spep_0 + 122, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 30, 50 );  --気溜め
playSe( spep_0 + 54, SE_04 );  --ゴゴゴ
playSe( spep_0 + 136, 43 );  --瞬間移動

-- ** ホワイトフェード ** --
entryFade( spep_0 + 138, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

------------------------------------------------------
-- 殴る(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
naguru = entryEffectLife( spep_1 + 0, SP_03, 88, 0x100, -1, 0, 0, 0 );  --殴る(ef_003)
setEffMoveKey( spep_1 + 0, naguru, 0, 0 , 0 );
setEffMoveKey( spep_1 + 88, naguru, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru, 1.0, 1.0 );
setEffScaleKey( spep_1 + 88, naguru, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru, 0 );
setEffRotateKey( spep_1 + 88, naguru, 0 );
setEffAlphaKey( spep_1 + 0, naguru, 255 );
setEffAlphaKey( spep_1 + 87, naguru, 255 );
setEffAlphaKey( spep_1 + 88, naguru, 0 );

-- ** 書き文字エントリー ** --
ctexc = entryEffectLife( spep_1 + 4,  10000, 10, 0x100, -1, 0, 31.9, 308.6 );  --！！
setEffMoveKey( spep_1 + 4, ctexc, 31.9, 308.6 , 0 );
setEffMoveKey( spep_1 + 6, ctexc, 6.7, 331.7 , 0 );
setEffMoveKey( spep_1 + 8, ctexc, -18.3, 355 , 0 );
setEffMoveKey( spep_1 + 14, ctexc, -18.3, 355 , 0 );

setEffScaleKey( spep_1 + 4, ctexc, 0.8, 0.8 );
setEffScaleKey( spep_1 + 6, ctexc, 1.5, 1.5 );
setEffScaleKey( spep_1 + 8, ctexc, 2.2, 2.2 );
setEffScaleKey( spep_1 + 14, ctexc, 2.2, 2.2 );

setEffRotateKey( spep_1 + 4, ctexc, -19.8 );
setEffRotateKey( spep_1 + 14, ctexc, -19.8 );

setEffAlphaKey( spep_1 + 4, ctexc, 255 );
setEffAlphaKey( spep_1 + 14, ctexc, 255 );

a = 3;
-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 + 20 -a,  10020, 26, 0x100, -1, 0, 75, -25.6 );  --バキッ
setEffMoveKey( spep_1 + 20 -a, ctbaki, 75, -25.6 , 0 );
setEffMoveKey( spep_1 + 22 -a, ctbaki, 113.2, 4.1 , 0 );
setEffMoveKey( spep_1 + 24 -a, ctbaki, 163.6, 31.8 , 0 );
setEffMoveKey( spep_1 + 26 -a, ctbaki, 158.3, 44.5 , 0 );
setEffMoveKey( spep_1 + 28 -a, ctbaki, 169.5, 45.1 , 0 );
setEffMoveKey( spep_1 + 30 -a, ctbaki, 161.7, 51.2 , 0 );
setEffMoveKey( spep_1 + 32 -a, ctbaki, 168.5, 64.2 , 0 );
setEffMoveKey( spep_1 + 34 -a, ctbaki, 170.4, 60.8 , 0 );
setEffMoveKey( spep_1 + 36 -a, ctbaki, 168.7, 78.8 , 0 );
setEffMoveKey( spep_1 + 38 -a, ctbaki, 174.7, 77.8 , 0 );
setEffMoveKey( spep_1 + 40 -a, ctbaki, 170.6, 87.8 , 0 );
setEffMoveKey( spep_1 + 42 -a, ctbaki, 176.2, 89.8 , 0 );
setEffMoveKey( spep_1 + 44 -a, ctbaki, 178.3, 103 , 0 );
setEffMoveKey( spep_1 + 46 -a, ctbaki, 180.1, 109.9 , 0 );

setEffScaleKey( spep_1 + 20 -a, ctbaki, 0.25, 0.25 );
setEffScaleKey( spep_1 + 22 -a, ctbaki, 0.88, 0.88 );
setEffScaleKey( spep_1 + 24 -a, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_1 + 26 -a, ctbaki, 1.54, 1.54 );
setEffScaleKey( spep_1 + 28 -a, ctbaki, 1.57, 1.57 );
setEffScaleKey( spep_1 + 30 -a, ctbaki, 1.61, 1.61 );
setEffScaleKey( spep_1 + 32 -a, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_1 + 34 -a, ctbaki, 1.68, 1.68 );
setEffScaleKey( spep_1 + 36 -a, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_1 + 38 -a, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 + 40 -a, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_1 + 42 -a, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_1 + 44 -a, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_1 + 46 -a, ctbaki, 1.9, 1.9 );

setEffRotateKey( spep_1 + 20 -a, ctbaki, 0 );
setEffRotateKey( spep_1 + 46 -a, ctbaki, 0 );

setEffAlphaKey( spep_1 + 20 -a, ctbaki, 255 );
setEffAlphaKey( spep_1 + 24 -a, ctbaki, 255 );
setEffAlphaKey( spep_1 + 26 -a, ctbaki, 232 );
setEffAlphaKey( spep_1 + 28 -a, ctbaki, 209 );
setEffAlphaKey( spep_1 + 30 -a, ctbaki, 185 );
setEffAlphaKey( spep_1 + 32 -a, ctbaki, 162 );
setEffAlphaKey( spep_1 + 34 -a, ctbaki, 139 );
setEffAlphaKey( spep_1 + 36 -a, ctbaki, 116 );
setEffAlphaKey( spep_1 + 38 -a, ctbaki, 93 );
setEffAlphaKey( spep_1 + 40 -a, ctbaki, 70 );
setEffAlphaKey( spep_1 + 42 -a, ctbaki, 46 );
setEffAlphaKey( spep_1 + 44 -a, ctbaki, 23 );
setEffAlphaKey( spep_1 + 46 -a, ctbaki, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 22 -a,  921, 66, 0x80, -1, 0, 20.7, -34.9 );  --流線
setEffMoveKey( spep_1 + 22 -a, ryusen1, 20.7, -34.9 , 0 );
setEffMoveKey( spep_1 + 88 -a, ryusen1, 20.7, -34.9 , 0 );

setEffScaleKey( spep_1 + 22 -a, ryusen1, 1.7, 1.08 );
setEffScaleKey( spep_1 + 88 -a, ryusen1, 1.7, 1.08 );

setEffRotateKey( spep_1 + 22 -a, ryusen1, -75 );
setEffRotateKey( spep_1 + 88 -a, ryusen1, -75 );

setEffAlphaKey( spep_1 + 22 -a, ryusen1, 255 );
setEffAlphaKey( spep_1 + 88 -a, ryusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 46 -a, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 + 20 -a, 1, 105 );

setMoveKey( spep_1 + 0, 1, 139.8, 125.2 , 0 );
setMoveKey( spep_1 + 2, 1, 139.7, 124.9 , 0 );
setMoveKey( spep_1 + 4 -a, 1, 139.6, 124.5 , 0 );
setMoveKey( spep_1 + 6 -a, 1, 139.7, 124.8 , 0 );
setMoveKey( spep_1 + 8 -a, 1, 139.7, 125.1 , 0 );
setMoveKey( spep_1 + 19 -a, 1, 139.7, 125.1 , 0 );
setMoveKey( spep_1 + 20 -a, 1, 175.1, 163 , 0 );  --被弾
setMoveKey( spep_1 + 22 -a, 1, 255.9, 145.8 , 0 );
setMoveKey( spep_1 + 24 -a, 1, 172.9, 159.4 , 0 );
setMoveKey( spep_1 + 26 -a, 1, 193.6, 238.4 , 0 );
setMoveKey( spep_1 + 28 -a, 1, 200.5, 322.4 , 0 );
setMoveKey( spep_1 + 30 -a, 1, 216.7, 386.8 , 0 );
setMoveKey( spep_1 + 32 -a, 1, 220.9, 452.4 , 0 );
setMoveKey( spep_1 + 34 -a, 1, 234.3, 498.4 , 0 );
setMoveKey( spep_1 + 36 -a, 1, 235.6, 545.5 , 0 );
setMoveKey( spep_1 + 38 -a, 1, 240.7, 578 , 0 );
setMoveKey( spep_1 + 40 -a, 1, 244.4, 601.3 , 0 );
setMoveKey( spep_1 + 42 -a, 1, 246.7, 615.3 , 0 );
setMoveKey( spep_1 + 44 -a, 1, 247.4, 619.9 , 0 );
setMoveKey( spep_1 + 46 -a, 1, 247.4, 900.9 , 0 );

setScaleKey( spep_1 + 0, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 2, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 4 -a, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 6 -a, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 8 -a, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 19 -a, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 20 -a, 1, 2.48, 2.48 );  --被弾
setScaleKey( spep_1 + 22 -a, 1, 2.91, 2.91 );
setScaleKey( spep_1 + 24 -a, 1, 2.29, 2.29 );
setScaleKey( spep_1 + 26 -a, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 28 -a, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 30 -a, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 32 -a, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 34 -a, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 36 -a, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 38 -a, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 40 -a, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 42 -a, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 44 -a, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 46 -a, 1, 0.1, 0.1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 46 -a, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 80, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 20 -a, 1010 );  --バキッ
playSe( spep_1 + 68, 43 );  --瞬間移動

-- ** 次の準備 ** --
spep_2 = spep_1 + 88;

------------------------------------------------------
-- 肘打ち(72F)
------------------------------------------------------

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 0,  921, 38 -a, 0x80, -1, 0, 20.7, -34.9 );  --流線
setEffMoveKey( spep_2 + 0, ryusen2, 20.7, -34.9 , 0 );
setEffMoveKey( spep_2 + 38 -a, ryusen2, 20.7, -34.9 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 1.7, 1.08 );
setEffScaleKey( spep_2 + 38 -a, ryusen2, 1.7, 1.08 );

setEffRotateKey( spep_2 + 0, ryusen2, -75 );
setEffRotateKey( spep_2 + 38 -a, ryusen2, -75 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 37 -a, ryusen2, 255 );
setEffAlphaKey( spep_2 + 38 -a, ryusen2, 0 );

ryusen3 = entryEffectLife( spep_2 + 38 -a,  914, 34 +a, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_2 + 38 -a, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 72, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 38 -a, ryusen3, 1.3, 1.3 );
setEffScaleKey( spep_2 + 72, ryusen3, 1.3, 1.3 );

setEffRotateKey( spep_2 + 38 -a, ryusen3, 0 );
setEffRotateKey( spep_2 + 72, ryusen3, 0 );

setEffAlphaKey( spep_2 + 38 -a, ryusen3, 255 );
setEffAlphaKey( spep_2 + 72, ryusen3, 255 );

-- ** エフェクト等 ** --
hiji_b = entryEffectLife( spep_2 + 0, SP_04, 34, 0x80, -1, 0, 0, 0 );  --肘打ち(ef_004)構え
setEffMoveKey( spep_2 + 0, hiji_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 34, hiji_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hiji_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 34, hiji_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hiji_b, 0 );
setEffRotateKey( spep_2 + 34, hiji_b, 0 );
setEffAlphaKey( spep_2 + 0, hiji_b, 255 );
setEffAlphaKey( spep_2 + 34, hiji_b, 255 );

hiji_f = entryEffectLife( spep_2 + 0, SP_04, 72, 0x100, -1, 0, 0, 0 );  --肘打ち(ef_004)した後
setEffMoveKey( spep_2 + 0, hiji_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 72, hiji_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hiji_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 72, hiji_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hiji_f, 0 );
setEffRotateKey( spep_2 + 72, hiji_f, 0 );
setEffAlphaKey( spep_2 + 0, hiji_f, 0 );
setEffAlphaKey( spep_2 + 34, hiji_f, 0 );
setEffAlphaKey( spep_2 + 35, hiji_f, 255 );
setEffAlphaKey( spep_2 + 72, hiji_f, 255 );

-- ** 書き文字エントリー ** --
ctga1 = entryEffectLife( spep_2 + 38 -a,  10005, 14, 0x100, -1, 0, -53.3, 301.4 );  --ガッ
setEffMoveKey( spep_2 + 38 -a, ctga1, -53.3, 301.4 , 0 );
setEffMoveKey( spep_2 + 40 -a, ctga1, 78, 285.1 , 0 );
setEffMoveKey( spep_2 + 42 -a, ctga1, 209.4, 268.7 , 0 );
setEffMoveKey( spep_2 + 44 -a, ctga1, 221.6, 279.3 , 0 );
setEffMoveKey( spep_2 + 46 -a, ctga1, 233.9, 289.8 , 0 );
setEffMoveKey( spep_2 + 48 -a, ctga1, 246.1, 300.4 , 0 );
setEffMoveKey( spep_2 + 50 -a, ctga1, 258.4, 310.9 , 0 );
setEffMoveKey( spep_2 + 52 -a, ctga1, 270.6, 321.4 , 0 );

setEffScaleKey( spep_2 + 38 -a, ctga1, 0.50, 0.50 );
setEffScaleKey( spep_2 + 40 -a, ctga1, 1.08, 1.08 );
setEffScaleKey( spep_2 + 42 -a, ctga1, 1.5, 1.5 );
setEffScaleKey( spep_2 + 44 -a, ctga1, 1.58, 1.58 );
setEffScaleKey( spep_2 + 46 -a, ctga1, 1.92, 1.92 );
setEffScaleKey( spep_2 + 48 -a, ctga1, 2.58, 2.58 );
setEffScaleKey( spep_2 + 50 -a, ctga1, 2.91, 2.91 );
setEffScaleKey( spep_2 + 52 -a, ctga1, 4.3, 4.3 );

setEffRotateKey( spep_2 + 38 -a, ctga1, 15 );
setEffRotateKey( spep_2 + 52 -a, ctga1, 15 );

setEffAlphaKey( spep_2 + 38 -a, ctga1, 255 );
setEffAlphaKey( spep_2 + 42 -a, ctga1, 255 );
setEffAlphaKey( spep_2 + 44 -a, ctga1, 204 );
setEffAlphaKey( spep_2 + 46 -a, ctga1, 153 );
setEffAlphaKey( spep_2 + 48 -a, ctga1, 102 );
setEffAlphaKey( spep_2 + 50 -a, ctga1, 51 );
setEffAlphaKey( spep_2 + 52 -a, ctga1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 65, 1, 0 );
changeAnime( spep_2 + 0, 1, 105 );
changeAnime( spep_2 + 38 -a, 1, 108 );

setMoveKey( spep_2 + 0, 1, -22.3, -734.8 , 0 );
setMoveKey( spep_2 + 4 -a, 1, 3.6, -565.6 , 0 );
setMoveKey( spep_2 + 6 -a, 1, 16.6, -480.9 , 0 );
setMoveKey( spep_2 + 8 -a, 1, 29.6, -396.3 , 0 );
setMoveKey( spep_2 + 10 -a, 1, 42.6, -311.7 , 0 );
setMoveKey( spep_2 + 12 -a, 1, 55.6, -227.1 , 0 );
setMoveKey( spep_2 + 14 -a, 1, 68.7, -142.5 , 0 );
setMoveKey( spep_2 + 16 -a, 1, 81.7, -57.8 , 0 );
setMoveKey( spep_2 + 18 -a, 1, 94.7, 26.8 , 0 );
setMoveKey( spep_2 + 20 -a, 1, 95.6, 29.5 , 0 );
setMoveKey( spep_2 + 22 -a, 1, 96.5, 32.1 , 0 );
setMoveKey( spep_2 + 24 -a, 1, 97.4, 34.8 , 0 );
setMoveKey( spep_2 + 26 -a, 1, 98.3, 37.5 , 0 );
setMoveKey( spep_2 + 28 -a, 1, 99.2, 40.1 , 0 );
setMoveKey( spep_2 + 30 -a, 1, 100.1, 42.8 , 0 );
setMoveKey( spep_2 + 32 -a, 1, 101, 45.5 , 0 );
setMoveKey( spep_2 + 34 -a, 1, 101.9, 48.1 , 0 );
setMoveKey( spep_2 + 36 -a, 1, 102.9, 50.8 , 0 );
setMoveKey( spep_2 + 37 -a, 1, 102.9, 50.8 , 0 );
setMoveKey( spep_2 + 38 -a, 1, 65.7, 73.6 , 0 );  --くの字
setMoveKey( spep_2 + 40 -a, 1, 66.6, 174.8 , 0 );
setMoveKey( spep_2 + 44 -a, 1, 80.6, 174.8 , 0 );
setMoveKey( spep_2 + 50 -a, 1, 110.5, 174.7 , 0 );
setMoveKey( spep_2 + 65, 1, 1000.5, 174.7 , 0 );

setScaleKey( spep_2 + 0, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 4 -a, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 6 -a, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 8 -a, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 10 -a, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 12 -a, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 14 -a, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 16 -a, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 18 -a, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 37 -a, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 38 -a, 1, 2.61, 2.61 );  --くの字
setScaleKey( spep_2 + 40 -a, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 65, 1, 2.27, 2.27 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 37 -a, 1, 0 );
setRotateKey( spep_2 + 38 -a, 1, -20 );  --くの字
setRotateKey( spep_2 + 65, 1, -20 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 72, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 64, 6, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 38 -a, 1009 );  --ガッ
playSe( spep_2 + 56, 43 );  --瞬間移動

-- ** 次の準備 ** --
spep_3 = spep_2 + 72;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen1, 0 );
setEffRotateKey( spep_3 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 蹴り(84F)
------------------------------------------------------

-- ** エフェクト等 ** --
keri_f = entryEffectLife( spep_4 + 0, SP_05, 72, 0x100, -1, 0, 0, 0 );  --蹴り・手前(ef_005)
setEffMoveKey( spep_4 + 0, keri_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 72, keri_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, keri_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 72, keri_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, keri_f, 0 );
setEffRotateKey( spep_4 + 72, keri_f, 0 );
setEffAlphaKey( spep_4 + 0, keri_f, 255 );
setEffAlphaKey( spep_4 + 72, keri_f, 255 );

keri_b = entryEffectLife( spep_4 + 0, SP_06, 84, 0x80, -1, 0, 0, 0 );  --蹴り・奥(ef_006)
setEffMoveKey( spep_4 + 0, keri_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 84, keri_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, keri_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 84, keri_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, keri_b, 0 );
setEffRotateKey( spep_4 + 84, keri_b, 0 );
setEffAlphaKey( spep_4 + 0, keri_b, 255 );
setEffAlphaKey( spep_4 + 84, keri_b, 255 );

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_4 + 0,  914, 28 -a, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_4 + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 28 -a, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen4, 1.3, 1.3 );
setEffScaleKey( spep_4 + 28 -a, ryusen4, 1.3, 1.3 );

setEffRotateKey( spep_4 + 0, ryusen4, 0 );
setEffRotateKey( spep_4 + 28 -a, ryusen4, 0 );

setEffAlphaKey( spep_4 + 0, ryusen4, 255 );
setEffAlphaKey( spep_4 + 27 -a, ryusen4, 255 );
setEffAlphaKey( spep_4 + 28 -a, ryusen4, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_4 + 28 -a, 906, 14, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 28 -a, shuchusen2, 14, 20 );

setEffMoveKey( spep_4 + 28 -a, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 42 -a, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 28 -a, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_4 + 42 -a, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_4 + 28 -a, shuchusen2, 0 );
setEffRotateKey( spep_4 + 42 -a, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 28 -a, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 42 -a, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_4 + 28 -a,  10019, 20, 0x100, -1, 0, 121.3, 307.4 );  --ドンッ
setEffMoveKey( spep_4 + 28 -a, ctdon, 121.3, 307.4 , 0 );
setEffMoveKey( spep_4 + 30 -a, ctdon, 75.8, 339.3 , 0 );
setEffMoveKey( spep_4 + 32 -a, ctdon, 46.4, 368.5 , 0 );
setEffMoveKey( spep_4 + 34 -a, ctdon, 36.8, 369.7 , 0 );
setEffMoveKey( spep_4 + 36 -a, ctdon, 49.5, 354.5 , 0 );
setEffMoveKey( spep_4 + 38 -a, ctdon, 36.3, 346.7 , 0 );
setEffMoveKey( spep_4 + 40 -a, ctdon, 43.2, 355 , 0 );
setEffMoveKey( spep_4 + 42 -a, ctdon, 43.4, 341.6 , 0 );
setEffMoveKey( spep_4 + 44 -a, ctdon, 36.3, 346.7 , 0 );
setEffMoveKey( spep_4 + 46 -a, ctdon, 18.8, 370.3 , 0 );
setEffMoveKey( spep_4 + 48 -a, ctdon, -5.6, 385.5 , 0 );

setEffScaleKey( spep_4 + 28 -a, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_4 + 30 -a, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_4 + 32 -a, ctdon, 2, 2 );
setEffScaleKey( spep_4 + 34 -a, ctdon, 2.07, 2.07 );
setEffScaleKey( spep_4 + 36 -a, ctdon, 2.13, 2.13 );
setEffScaleKey( spep_4 + 38 -a, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_4 + 44 -a, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_4 + 46 -a, ctdon, 2, 2 );
setEffScaleKey( spep_4 + 48 -a, ctdon, 1.8, 1.8 );

setEffRotateKey( spep_4 + 28 -a, ctdon, 0 );
setEffRotateKey( spep_4 + 48 -a, ctdon, 0 );

setEffAlphaKey( spep_4 + 28 -a, ctdon, 255 );
setEffAlphaKey( spep_4 + 44 -a, ctdon, 255 );
setEffAlphaKey( spep_4 + 46 -a, ctdon, 128 );
setEffAlphaKey( spep_4 + 48 -a, ctdon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 84, 1, 0 );
changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 + 28 -a, 1, 105 );

setMoveKey( spep_4 + 0, 1, -593.2, 96.2 , 0 );
setMoveKey( spep_4 + 4 -a, 1, -356.7, 96.2 , 0 );
setMoveKey( spep_4 + 6 -a, 1, -238.4, 96.3 , 0 );
setMoveKey( spep_4 + 8 -a, 1, -120.1, 96.3 , 0 );
setMoveKey( spep_4 + 10 -a, 1, -1.9, 96.4 , 0 );
setMoveKey( spep_4 + 12 -a, 1, -0.4, 96.6 , 0 );
setMoveKey( spep_4 + 14 -a, 1, 1.2, 96.7 , 0 );
setMoveKey( spep_4 + 16 -a, 1, 2.8, 96.9 , 0 );
setMoveKey( spep_4 + 18 -a, 1, 4.4, 97.1 , 0 );
setMoveKey( spep_4 + 20 -a, 1, 6, 97.3 , 0 );
setMoveKey( spep_4 + 22 -a, 1, 7.6, 97.6 , 0 );
setMoveKey( spep_4 + 24 -a, 1, 9.2, 97.8 , 0 );
setMoveKey( spep_4 + 27 -a, 1, 10.9, 97.8 , 0 );
setMoveKey( spep_4 + 28 -a, 1, -62.3, 118.2 , 0 );  --蹴られる
setMoveKey( spep_4 + 30 -a, 1, -87.9, 251.4 , 0 );
setMoveKey( spep_4 + 32 -a, 1, -61.8, 123.2 , 0 );
setMoveKey( spep_4 + 34 -a, 1, -44.9, 250.2 , 0 );
setMoveKey( spep_4 + 36 -a, 1, -50.4, 192.3 , 0 );
setMoveKey( spep_4 + 38 -a, 1, -63.6, 125.8 , 0 );
setMoveKey( spep_4 + 40 -a, 1, -68.7, 157.9 , 0 );
setMoveKey( spep_4 + 42 -a, 1, -77.3, 189.9 , 0 );
setMoveKey( spep_4 + 44 -a, 1, -74.3, 156.7 , 0 );
setMoveKey( spep_4 + 46 -a, 1, -62.8, 129.2 , 0 );
setMoveKey( spep_4 + 48 -a, 1, -71.1, 159 , 0 );
setMoveKey( spep_4 + 50 -a, 1, -81.1, 188.2 , 0 );
setMoveKey( spep_4 + 52 -a, 1, -74.1, 157.5 , 0 );
setMoveKey( spep_4 + 54 -a, 1, -66.8, 126.6 , 0 );
setMoveKey( spep_4 + 56 -a, 1, -67.2, 127.3 , 0 );
setMoveKey( spep_4 + 58 -a, 1, -69.9, 129.4 , 0 );
setMoveKey( spep_4 + 60 -a, 1, -74.8, 133.2 , 0 );
setMoveKey( spep_4 + 62 -a, 1, -81.9, 138.3 , 0 );
setMoveKey( spep_4 + 64 -a, 1, -90.9, 145.1 , 0 );
setMoveKey( spep_4 + 66 -a, 1, -102, 153.2 , 0 );
setMoveKey( spep_4 + 68 -a, 1, -114.1, 162.8 , 0 );
setMoveKey( spep_4 + 70 -a, 1, -127.5, 173.3 , 0 );
setMoveKey( spep_4 + 72 -a, 1, -142.2, 184.6 , 0 );
setMoveKey( spep_4 + 74 -a, 1, -157.6, 196.3 , 0 );
setMoveKey( spep_4 + 76 -a, 1, -173.4, 208.3 , 0 );
setMoveKey( spep_4 + 78 -a, 1, -189.3, 220.3 , 0 );
setMoveKey( spep_4 + 80 -a, 1, -205.1, 232.3 , 0 );
setMoveKey( spep_4 + 82 -a, 1, -220.6, 244 , 0 );
setMoveKey( spep_4 + 84, 1, -235.5, 255.3 , 0 );

setScaleKey( spep_4 + 0, 1, 1.98, 1.98 );
setScaleKey( spep_4 + 8 -a, 1, 1.98, 1.98 );
setScaleKey( spep_4 + 10 -a, 1, 1.99, 1.99 );
setScaleKey( spep_4 + 12 -a, 1, 2, 2 );
setScaleKey( spep_4 + 14 -a, 1, 2.01, 2.01 );
setScaleKey( spep_4 + 16 -a, 1, 2.03, 2.03 );
setScaleKey( spep_4 + 18 -a, 1, 2.04, 2.04 );
setScaleKey( spep_4 + 20 -a, 1, 2.04, 2.04 );
setScaleKey( spep_4 + 22 -a, 1, 2.05, 2.05 );
setScaleKey( spep_4 + 24 -a, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 27 -a, 1, 2.08, 2.08 );
setScaleKey( spep_4 + 28 -a, 1, 1.87, 1.87 );  --蹴られる
setScaleKey( spep_4 + 30 -a, 1, 1.82, 1.82 );
setScaleKey( spep_4 + 32 -a, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 34 -a, 1, 1.81, 1.81 );
setScaleKey( spep_4 + 36 -a, 1, 1.97, 1.97 );
setScaleKey( spep_4 + 38 -a, 1, 1.78, 1.78 );
setScaleKey( spep_4 + 40 -a, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 42 -a, 1, 1.85, 1.85 );
setScaleKey( spep_4 + 44 -a, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 46 -a, 1, 1.86, 1.86 );
setScaleKey( spep_4 + 48 -a, 1, 1.81, 1.81 );
setScaleKey( spep_4 + 50 -a, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 54 -a, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 56 -a, 1, 1.72, 1.72 );
setScaleKey( spep_4 + 58 -a, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 60 -a, 1, 1.65, 1.65 );
setScaleKey( spep_4 + 62 -a, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 64 -a, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 66 -a, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 68 -a, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 70 -a, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 72 -a, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 74 -a, 1, 0.9, 0.9 );
setScaleKey( spep_4 + 76 -a, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 78 -a, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 80 -a, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 82 -a, 1, 0.32, 0.32 );
setScaleKey( spep_4 + 84, 1, 0.18, 0.18 );

setRotateKey( spep_4 + 0, 1, -20 );
setRotateKey( spep_4 + 10 -a, 1, -20 );
setRotateKey( spep_4 + 12 -a, 1, -20.2 );
setRotateKey( spep_4 + 14 -a, 1, -20.4 );
setRotateKey( spep_4 + 16 -a, 1, -20.7 );
setRotateKey( spep_4 + 18 -a, 1, -20.9 );
setRotateKey( spep_4 + 20 -a, 1, -21.1 );
setRotateKey( spep_4 + 22 -a, 1, -21.3 );
setRotateKey( spep_4 + 24 -a, 1, -21.6 );
setRotateKey( spep_4 + 27 -a, 1, -21.8 );
setRotateKey( spep_4 + 28 -a, 1, -29.9 );  --蹴られる
setRotateKey( spep_4 + 72 -a, 1, -29.9 );
setRotateKey( spep_4 + 74 -a, 1, -29.8 );
setRotateKey( spep_4 + 84, 1, -29.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 26, 0, 0, 0, 0, 180 );  --薄い黒　背景
entryFadeBg( spep_4 + 0, 26, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 80, 4, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 28 -a, 1011);  --ドンッ

-- ** 次の準備 ** --
spep_5 = spep_4 + 84;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 爆発 ** --
--[[bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
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
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );]]

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
shuchusen3 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen3, 0 );
setEffRotateKey( spep_5 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen4, 0 );
setEffRotateKey( spep_5 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga2 = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga2, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga2, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga2, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga2, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga2, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga2, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga2, -10.9 );
setEffRotateKey( spep_5 + 15, ctga2, -10.9 );
setEffRotateKey( spep_5 + 16, ctga2, -14.9 );
setEffRotateKey( spep_5 + 17, ctga2, -14.9 );
setEffRotateKey( spep_5 + 18, ctga2, -10.9 );
setEffRotateKey( spep_5 + 19, ctga2, -10.9 );
setEffRotateKey( spep_5 + 20, ctga2, -14.9 );
setEffRotateKey( spep_5 + 21, ctga2, -14.9 );
setEffRotateKey( spep_5 + 22, ctga2, -10.9 );
setEffRotateKey( spep_5 + 23, ctga2, -10.9 );
setEffRotateKey( spep_5 + 24, ctga2, -14.9 );
setEffRotateKey( spep_5 + 25, ctga2, -14.9 );
setEffRotateKey( spep_5 + 26, ctga2, -10.9 );
setEffRotateKey( spep_5 + 27, ctga2, -10.9 );
setEffRotateKey( spep_5 + 28, ctga2, -14.9 );
setEffRotateKey( spep_5 + 100, ctga2, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga2, 255 );
setEffAlphaKey( spep_5 + 100, ctga2, 255 );

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

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 30, 0x100, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 30, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 30, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 30, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 29, tame, 255 );
setEffAlphaKey( spep_0 + 30, tame, 0 );

idou = entryEffectLife( spep_0 + 30, SP_02, 116, 0x100, -1, 0, 0, 0 );  --瞬間移動(ef_002)
setEffMoveKey( spep_0 + 30, idou, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, idou, 0, 0 , 0 );
setEffScaleKey( spep_0 + 30, idou, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, idou, 1.0, 1.0 );
setEffRotateKey( spep_0 + 30, idou, 0 );
setEffRotateKey( spep_0 + 146, idou, 0 );
setEffAlphaKey( spep_0 + 30, idou, 255 );
setEffAlphaKey( spep_0 + 146, idou, 255 );

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_0 + 30,  10013, 12, 0x100, -1, 0, 22, 191.9 ); --ズズズンッ
setEffShake( spep_0 + 30, ctzuzun, 12, 10 );

setEffMoveKey( spep_0 + 30, ctzuzun, 22, 191.9 , 0 );
setEffMoveKey( spep_0 + 32, ctzuzun, 29.8, 246.3 , 0 );
setEffMoveKey( spep_0 + 34, ctzuzun, 49.2, 309.6 , 0 );
setEffMoveKey( spep_0 + 36, ctzuzun, 46.8, 334 , 0 );
setEffMoveKey( spep_0 + 38, ctzuzun, 52.9, 331.8 , 0 );
setEffMoveKey( spep_0 + 40, ctzuzun, 39.3, 310.4 , 0 );
setEffMoveKey( spep_0 + 42, ctzuzun, 36, 299.9 , 0 );

setEffScaleKey( spep_0 + 30, ctzuzun, 1.34, 1.34 );
setEffScaleKey( spep_0 + 32, ctzuzun, 2.17, 2.17 );
setEffScaleKey( spep_0 + 34, ctzuzun, 2.98, 2.98 );
setEffScaleKey( spep_0 + 36, ctzuzun, 3.5, 3.5 );
setEffScaleKey( spep_0 + 42, ctzuzun, 3.5, 3.5 );

setEffRotateKey( spep_0 + 30, ctzuzun, 0 );
setEffRotateKey( spep_0 + 42, ctzuzun, 0 );

setEffAlphaKey( spep_0 + 30, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 32, ctzuzun, 206 );
setEffAlphaKey( spep_0 + 34, ctzuzun, 159 );
setEffAlphaKey( spep_0 + 36, ctzuzun, 115 );
setEffAlphaKey( spep_0 + 38, ctzuzun, 74 );
setEffAlphaKey( spep_0 + 40, ctzuzun, 35 );
setEffAlphaKey( spep_0 + 42, ctzuzun, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 42; --エンドフェイズのフレーム数を置き換える

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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 38, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 38, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 54,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 54, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 54, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 122, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 54, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 114, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 116, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 118, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 120, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 122, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 54, ctgogo, 0 );
setEffRotateKey( spep_0 + 122, ctgogo, 0 );

setEffAlphaKey( spep_0 + 54, ctgogo, 255 );
setEffAlphaKey( spep_0 + 122, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 30, 50 );  --気溜め
playSe( spep_0 + 54, SE_04 );  --ゴゴゴ
playSe( spep_0 + 136, 43 );  --瞬間移動

-- ** ホワイトフェード ** --
entryFade( spep_0 + 138, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

------------------------------------------------------
-- 殴る(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
naguru = entryEffectLife( spep_1 + 0, SP_03, 88, 0x100, -1, 0, 0, 0 );  --殴る(ef_003)
setEffMoveKey( spep_1 + 0, naguru, 0, 0 , 0 );
setEffMoveKey( spep_1 + 88, naguru, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru, 1.0, 1.0 );
setEffScaleKey( spep_1 + 88, naguru, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru, 0 );
setEffRotateKey( spep_1 + 88, naguru, 0 );
setEffAlphaKey( spep_1 + 0, naguru, 255 );
setEffAlphaKey( spep_1 + 87, naguru, 255 );
setEffAlphaKey( spep_1 + 88, naguru, 0 );

-- ** 書き文字エントリー ** --
ctexc = entryEffectLife( spep_1 + 4,  10000, 10, 0x100, -1, 0, 31.9, 308.6 );  --！！
setEffMoveKey( spep_1 + 4, ctexc, 31.9, 308.6 , 0 );
setEffMoveKey( spep_1 + 6, ctexc, 6.7, 331.7 , 0 );
setEffMoveKey( spep_1 + 8, ctexc, -18.3, 355 , 0 );
setEffMoveKey( spep_1 + 14, ctexc, -18.3, 355 , 0 );

setEffScaleKey( spep_1 + 4, ctexc, 0.8, 0.8 );
setEffScaleKey( spep_1 + 6, ctexc, 1.5, 1.5 );
setEffScaleKey( spep_1 + 8, ctexc, 2.2, 2.2 );
setEffScaleKey( spep_1 + 14, ctexc, 2.2, 2.2 );

setEffRotateKey( spep_1 + 4, ctexc, -19.8 );
setEffRotateKey( spep_1 + 14, ctexc, -19.8 );

setEffAlphaKey( spep_1 + 4, ctexc, 255 );
setEffAlphaKey( spep_1 + 14, ctexc, 255 );

a = 3;
-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 + 20 -a,  10020, 26, 0x100, -1, 0, 75, -25.6 );  --バキッ
setEffMoveKey( spep_1 + 20 -a, ctbaki, 75, -25.6 , 0 );
setEffMoveKey( spep_1 + 22 -a, ctbaki, 113.2, 4.1 , 0 );
setEffMoveKey( spep_1 + 24 -a, ctbaki, 163.6, 31.8 , 0 );
setEffMoveKey( spep_1 + 26 -a, ctbaki, 158.3, 44.5 , 0 );
setEffMoveKey( spep_1 + 28 -a, ctbaki, 169.5, 45.1 , 0 );
setEffMoveKey( spep_1 + 30 -a, ctbaki, 161.7, 51.2 , 0 );
setEffMoveKey( spep_1 + 32 -a, ctbaki, 168.5, 64.2 , 0 );
setEffMoveKey( spep_1 + 34 -a, ctbaki, 170.4, 60.8 , 0 );
setEffMoveKey( spep_1 + 36 -a, ctbaki, 168.7, 78.8 , 0 );
setEffMoveKey( spep_1 + 38 -a, ctbaki, 174.7, 77.8 , 0 );
setEffMoveKey( spep_1 + 40 -a, ctbaki, 170.6, 87.8 , 0 );
setEffMoveKey( spep_1 + 42 -a, ctbaki, 176.2, 89.8 , 0 );
setEffMoveKey( spep_1 + 44 -a, ctbaki, 178.3, 103 , 0 );
setEffMoveKey( spep_1 + 46 -a, ctbaki, 180.1, 109.9 , 0 );

setEffScaleKey( spep_1 + 20 -a, ctbaki, 0.25, 0.25 );
setEffScaleKey( spep_1 + 22 -a, ctbaki, 0.88, 0.88 );
setEffScaleKey( spep_1 + 24 -a, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_1 + 26 -a, ctbaki, 1.54, 1.54 );
setEffScaleKey( spep_1 + 28 -a, ctbaki, 1.57, 1.57 );
setEffScaleKey( spep_1 + 30 -a, ctbaki, 1.61, 1.61 );
setEffScaleKey( spep_1 + 32 -a, ctbaki, 1.65, 1.65 );
setEffScaleKey( spep_1 + 34 -a, ctbaki, 1.68, 1.68 );
setEffScaleKey( spep_1 + 36 -a, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_1 + 38 -a, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 + 40 -a, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_1 + 42 -a, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_1 + 44 -a, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_1 + 46 -a, ctbaki, 1.9, 1.9 );

setEffRotateKey( spep_1 + 20 -a, ctbaki, 0 );
setEffRotateKey( spep_1 + 46 -a, ctbaki, 0 );

setEffAlphaKey( spep_1 + 20 -a, ctbaki, 255 );
setEffAlphaKey( spep_1 + 24 -a, ctbaki, 255 );
setEffAlphaKey( spep_1 + 26 -a, ctbaki, 232 );
setEffAlphaKey( spep_1 + 28 -a, ctbaki, 209 );
setEffAlphaKey( spep_1 + 30 -a, ctbaki, 185 );
setEffAlphaKey( spep_1 + 32 -a, ctbaki, 162 );
setEffAlphaKey( spep_1 + 34 -a, ctbaki, 139 );
setEffAlphaKey( spep_1 + 36 -a, ctbaki, 116 );
setEffAlphaKey( spep_1 + 38 -a, ctbaki, 93 );
setEffAlphaKey( spep_1 + 40 -a, ctbaki, 70 );
setEffAlphaKey( spep_1 + 42 -a, ctbaki, 46 );
setEffAlphaKey( spep_1 + 44 -a, ctbaki, 23 );
setEffAlphaKey( spep_1 + 46 -a, ctbaki, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 22 -a,  921, 66, 0x80, -1, 0, 20.7, -34.9 );  --流線
setEffMoveKey( spep_1 + 22 -a, ryusen1, 20.7, -34.9 , 0 );
setEffMoveKey( spep_1 + 88 -a, ryusen1, 20.7, -34.9 , 0 );

setEffScaleKey( spep_1 + 22 -a, ryusen1, 1.7, 1.08 );
setEffScaleKey( spep_1 + 88 -a, ryusen1, 1.7, 1.08 );

setEffRotateKey( spep_1 + 22 -a, ryusen1, -75 );
setEffRotateKey( spep_1 + 88 -a, ryusen1, -75 );

setEffAlphaKey( spep_1 + 22 -a, ryusen1, 255 );
setEffAlphaKey( spep_1 + 88 -a, ryusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 46 -a, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 + 20 -a, 1, 105 );

setMoveKey( spep_1 + 0, 1, 139.8, 125.2 , 0 );
setMoveKey( spep_1 + 2, 1, 139.7, 124.9 , 0 );
setMoveKey( spep_1 + 4 -a, 1, 139.6, 124.5 , 0 );
setMoveKey( spep_1 + 6 -a, 1, 139.7, 124.8 , 0 );
setMoveKey( spep_1 + 8 -a, 1, 139.7, 125.1 , 0 );
setMoveKey( spep_1 + 19 -a, 1, 139.7, 125.1 , 0 );
setMoveKey( spep_1 + 20 -a, 1, 175.1, 163 , 0 );  --被弾
setMoveKey( spep_1 + 22 -a, 1, 255.9, 145.8 , 0 );
setMoveKey( spep_1 + 24 -a, 1, 172.9, 159.4 , 0 );
setMoveKey( spep_1 + 26 -a, 1, 193.6, 238.4 , 0 );
setMoveKey( spep_1 + 28 -a, 1, 200.5, 322.4 , 0 );
setMoveKey( spep_1 + 30 -a, 1, 216.7, 386.8 , 0 );
setMoveKey( spep_1 + 32 -a, 1, 220.9, 452.4 , 0 );
setMoveKey( spep_1 + 34 -a, 1, 234.3, 498.4 , 0 );
setMoveKey( spep_1 + 36 -a, 1, 235.6, 545.5 , 0 );
setMoveKey( spep_1 + 38 -a, 1, 240.7, 578 , 0 );
setMoveKey( spep_1 + 40 -a, 1, 244.4, 601.3 , 0 );
setMoveKey( spep_1 + 42 -a, 1, 246.7, 615.3 , 0 );
setMoveKey( spep_1 + 44 -a, 1, 247.4, 619.9 , 0 );
setMoveKey( spep_1 + 46 -a, 1, 247.4, 900.9 , 0 );

setScaleKey( spep_1 + 0, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 2, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 4 -a, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 6 -a, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 8 -a, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 19 -a, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 20 -a, 1, 2.48, 2.48 );  --被弾
setScaleKey( spep_1 + 22 -a, 1, 2.91, 2.91 );
setScaleKey( spep_1 + 24 -a, 1, 2.29, 2.29 );
setScaleKey( spep_1 + 26 -a, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 28 -a, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 30 -a, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 32 -a, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 34 -a, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 36 -a, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 38 -a, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 40 -a, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 42 -a, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 44 -a, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 46 -a, 1, 0.1, 0.1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 46 -a, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 80, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 20 -a, 1010 );  --バキッ
playSe( spep_1 + 68, 43 );  --瞬間移動

-- ** 次の準備 ** --
spep_2 = spep_1 + 88;

------------------------------------------------------
-- 肘打ち(72F)
------------------------------------------------------

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 0,  921, 38 -a, 0x80, -1, 0, 20.7, -34.9 );  --流線
setEffMoveKey( spep_2 + 0, ryusen2, 20.7, -34.9 , 0 );
setEffMoveKey( spep_2 + 38 -a, ryusen2, 20.7, -34.9 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 1.7, 1.08 );
setEffScaleKey( spep_2 + 38 -a, ryusen2, 1.7, 1.08 );

setEffRotateKey( spep_2 + 0, ryusen2, -75 );
setEffRotateKey( spep_2 + 38 -a, ryusen2, -75 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 37 -a, ryusen2, 255 );
setEffAlphaKey( spep_2 + 38 -a, ryusen2, 0 );

ryusen3 = entryEffectLife( spep_2 + 38 -a,  914, 34 +a, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_2 + 38 -a, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 72, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 38 -a, ryusen3, 1.3, 1.3 );
setEffScaleKey( spep_2 + 72, ryusen3, 1.3, 1.3 );

setEffRotateKey( spep_2 + 38 -a, ryusen3, 0 );
setEffRotateKey( spep_2 + 72, ryusen3, 0 );

setEffAlphaKey( spep_2 + 38 -a, ryusen3, 255 );
setEffAlphaKey( spep_2 + 72, ryusen3, 255 );

-- ** エフェクト等 ** --
hiji_b = entryEffectLife( spep_2 + 0, SP_04, 34, 0x80, -1, 0, 0, 0 );  --肘打ち(ef_004)構え
setEffMoveKey( spep_2 + 0, hiji_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 34, hiji_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hiji_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 34, hiji_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hiji_b, 0 );
setEffRotateKey( spep_2 + 34, hiji_b, 0 );
setEffAlphaKey( spep_2 + 0, hiji_b, 255 );
setEffAlphaKey( spep_2 + 34, hiji_b, 255 );

hiji_f = entryEffectLife( spep_2 + 0, SP_04, 72, 0x100, -1, 0, 0, 0 );  --肘打ち(ef_004)した後
setEffMoveKey( spep_2 + 0, hiji_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 72, hiji_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hiji_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 72, hiji_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hiji_f, 0 );
setEffRotateKey( spep_2 + 72, hiji_f, 0 );
setEffAlphaKey( spep_2 + 0, hiji_f, 0 );
setEffAlphaKey( spep_2 + 34, hiji_f, 0 );
setEffAlphaKey( spep_2 + 35, hiji_f, 255 );
setEffAlphaKey( spep_2 + 72, hiji_f, 255 );

-- ** 書き文字エントリー ** --
ctga1 = entryEffectLife( spep_2 + 38 -a,  10005, 14, 0x100, -1, 0, -53.3, 301.4 );  --ガッ
setEffMoveKey( spep_2 + 38 -a, ctga1, -53.3, 301.4 , 0 );
setEffMoveKey( spep_2 + 40 -a, ctga1, 78, 285.1 , 0 );
setEffMoveKey( spep_2 + 42 -a, ctga1, 209.4, 268.7 , 0 );
setEffMoveKey( spep_2 + 44 -a, ctga1, 221.6, 279.3 , 0 );
setEffMoveKey( spep_2 + 46 -a, ctga1, 233.9, 289.8 , 0 );
setEffMoveKey( spep_2 + 48 -a, ctga1, 246.1, 300.4 , 0 );
setEffMoveKey( spep_2 + 50 -a, ctga1, 258.4, 310.9 , 0 );
setEffMoveKey( spep_2 + 52 -a, ctga1, 270.6, 321.4 , 0 );

setEffScaleKey( spep_2 + 38 -a, ctga1, 0.50, 0.50 );
setEffScaleKey( spep_2 + 40 -a, ctga1, 1.08, 1.08 );
setEffScaleKey( spep_2 + 42 -a, ctga1, 1.5, 1.5 );
setEffScaleKey( spep_2 + 44 -a, ctga1, 1.58, 1.58 );
setEffScaleKey( spep_2 + 46 -a, ctga1, 1.92, 1.92 );
setEffScaleKey( spep_2 + 48 -a, ctga1, 2.58, 2.58 );
setEffScaleKey( spep_2 + 50 -a, ctga1, 2.91, 2.91 );
setEffScaleKey( spep_2 + 52 -a, ctga1, 4.3, 4.3 );

setEffRotateKey( spep_2 + 38 -a, ctga1, 15 );
setEffRotateKey( spep_2 + 52 -a, ctga1, 15 );

setEffAlphaKey( spep_2 + 38 -a, ctga1, 255 );
setEffAlphaKey( spep_2 + 42 -a, ctga1, 255 );
setEffAlphaKey( spep_2 + 44 -a, ctga1, 204 );
setEffAlphaKey( spep_2 + 46 -a, ctga1, 153 );
setEffAlphaKey( spep_2 + 48 -a, ctga1, 102 );
setEffAlphaKey( spep_2 + 50 -a, ctga1, 51 );
setEffAlphaKey( spep_2 + 52 -a, ctga1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 65, 1, 0 );
changeAnime( spep_2 + 0, 1, 105 );
changeAnime( spep_2 + 38 -a, 1, 108 );

setMoveKey( spep_2 + 0, 1, -22.3, -734.8 , 0 );
setMoveKey( spep_2 + 4 -a, 1, 3.6, -565.6 , 0 );
setMoveKey( spep_2 + 6 -a, 1, 16.6, -480.9 , 0 );
setMoveKey( spep_2 + 8 -a, 1, 29.6, -396.3 , 0 );
setMoveKey( spep_2 + 10 -a, 1, 42.6, -311.7 , 0 );
setMoveKey( spep_2 + 12 -a, 1, 55.6, -227.1 , 0 );
setMoveKey( spep_2 + 14 -a, 1, 68.7, -142.5 , 0 );
setMoveKey( spep_2 + 16 -a, 1, 81.7, -57.8 , 0 );
setMoveKey( spep_2 + 18 -a, 1, 94.7, 26.8 , 0 );
setMoveKey( spep_2 + 20 -a, 1, 95.6, 29.5 , 0 );
setMoveKey( spep_2 + 22 -a, 1, 96.5, 32.1 , 0 );
setMoveKey( spep_2 + 24 -a, 1, 97.4, 34.8 , 0 );
setMoveKey( spep_2 + 26 -a, 1, 98.3, 37.5 , 0 );
setMoveKey( spep_2 + 28 -a, 1, 99.2, 40.1 , 0 );
setMoveKey( spep_2 + 30 -a, 1, 100.1, 42.8 , 0 );
setMoveKey( spep_2 + 32 -a, 1, 101, 45.5 , 0 );
setMoveKey( spep_2 + 34 -a, 1, 101.9, 48.1 , 0 );
setMoveKey( spep_2 + 36 -a, 1, 102.9, 50.8 , 0 );
setMoveKey( spep_2 + 37 -a, 1, 102.9, 50.8 , 0 );
setMoveKey( spep_2 + 38 -a, 1, 65.7, 73.6 , 0 );  --くの字
setMoveKey( spep_2 + 40 -a, 1, 66.6, 174.8 , 0 );
setMoveKey( spep_2 + 44 -a, 1, 80.6, 174.8 , 0 );
setMoveKey( spep_2 + 50 -a, 1, 110.5, 174.7 , 0 );
setMoveKey( spep_2 + 65, 1, 1000.5, 174.7 , 0 );

setScaleKey( spep_2 + 0, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 4 -a, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 6 -a, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 8 -a, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 10 -a, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 12 -a, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 14 -a, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 16 -a, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 18 -a, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 37 -a, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 38 -a, 1, 2.61, 2.61 );  --くの字
setScaleKey( spep_2 + 40 -a, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 65, 1, 2.27, 2.27 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 37 -a, 1, 0 );
setRotateKey( spep_2 + 38 -a, 1, -20 );  --くの字
setRotateKey( spep_2 + 65, 1, -20 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 72, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 64, 6, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 38 -a, 1009 );  --ガッ
playSe( spep_2 + 56, 43 );  --瞬間移動

-- ** 次の準備 ** --
spep_3 = spep_2 + 72;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen1, 0 );
setEffRotateKey( spep_3 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 蹴り(84F)
------------------------------------------------------

-- ** エフェクト等 ** --
keri_f = entryEffectLife( spep_4 + 0, SP_05, 72, 0x100, -1, 0, 0, 0 );  --蹴り・手前(ef_005)
setEffMoveKey( spep_4 + 0, keri_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 72, keri_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, keri_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 72, keri_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, keri_f, 0 );
setEffRotateKey( spep_4 + 72, keri_f, 0 );
setEffAlphaKey( spep_4 + 0, keri_f, 255 );
setEffAlphaKey( spep_4 + 72, keri_f, 255 );

keri_b = entryEffectLife( spep_4 + 0, SP_06, 84, 0x80, -1, 0, 0, 0 );  --蹴り・奥(ef_006)
setEffMoveKey( spep_4 + 0, keri_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 84, keri_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, keri_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 84, keri_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, keri_b, 0 );
setEffRotateKey( spep_4 + 84, keri_b, 0 );
setEffAlphaKey( spep_4 + 0, keri_b, 255 );
setEffAlphaKey( spep_4 + 84, keri_b, 255 );

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_4 + 0,  914, 28 -a, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_4 + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 28 -a, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen4, 1.3, 1.3 );
setEffScaleKey( spep_4 + 28 -a, ryusen4, 1.3, 1.3 );

setEffRotateKey( spep_4 + 0, ryusen4, 0 );
setEffRotateKey( spep_4 + 28 -a, ryusen4, 0 );

setEffAlphaKey( spep_4 + 0, ryusen4, 255 );
setEffAlphaKey( spep_4 + 27 -a, ryusen4, 255 );
setEffAlphaKey( spep_4 + 28 -a, ryusen4, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_4 + 28 -a, 906, 14, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 28 -a, shuchusen2, 14, 20 );

setEffMoveKey( spep_4 + 28 -a, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 42 -a, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 28 -a, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_4 + 42 -a, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_4 + 28 -a, shuchusen2, 0 );
setEffRotateKey( spep_4 + 42 -a, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 28 -a, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 42 -a, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_4 + 28 -a,  10019, 20, 0x100, -1, 0, 121.3, 307.4 );  --ドンッ
setEffMoveKey( spep_4 + 28 -a, ctdon, 121.3, 307.4 , 0 );
setEffMoveKey( spep_4 + 30 -a, ctdon, 75.8, 339.3 , 0 );
setEffMoveKey( spep_4 + 32 -a, ctdon, 46.4, 368.5 , 0 );
setEffMoveKey( spep_4 + 34 -a, ctdon, 36.8, 369.7 , 0 );
setEffMoveKey( spep_4 + 36 -a, ctdon, 49.5, 354.5 , 0 );
setEffMoveKey( spep_4 + 38 -a, ctdon, 36.3, 346.7 , 0 );
setEffMoveKey( spep_4 + 40 -a, ctdon, 43.2, 355 , 0 );
setEffMoveKey( spep_4 + 42 -a, ctdon, 43.4, 341.6 , 0 );
setEffMoveKey( spep_4 + 44 -a, ctdon, 36.3, 346.7 , 0 );
setEffMoveKey( spep_4 + 46 -a, ctdon, 18.8, 370.3 , 0 );
setEffMoveKey( spep_4 + 48 -a, ctdon, -5.6, 385.5 , 0 );

setEffScaleKey( spep_4 + 28 -a, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_4 + 30 -a, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_4 + 32 -a, ctdon, 2, 2 );
setEffScaleKey( spep_4 + 34 -a, ctdon, 2.07, 2.07 );
setEffScaleKey( spep_4 + 36 -a, ctdon, 2.13, 2.13 );
setEffScaleKey( spep_4 + 38 -a, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_4 + 44 -a, ctdon, 2.2, 2.2 );
setEffScaleKey( spep_4 + 46 -a, ctdon, 2, 2 );
setEffScaleKey( spep_4 + 48 -a, ctdon, 1.8, 1.8 );

setEffRotateKey( spep_4 + 28 -a, ctdon, 0 );
setEffRotateKey( spep_4 + 48 -a, ctdon, 0 );

setEffAlphaKey( spep_4 + 28 -a, ctdon, 255 );
setEffAlphaKey( spep_4 + 44 -a, ctdon, 255 );
setEffAlphaKey( spep_4 + 46 -a, ctdon, 128 );
setEffAlphaKey( spep_4 + 48 -a, ctdon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 84, 1, 0 );
changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 + 28 -a, 1, 105 );

setMoveKey( spep_4 + 0, 1, -593.2, 96.2 , 0 );
setMoveKey( spep_4 + 4 -a, 1, -356.7, 96.2 , 0 );
setMoveKey( spep_4 + 6 -a, 1, -238.4, 96.3 , 0 );
setMoveKey( spep_4 + 8 -a, 1, -120.1, 96.3 , 0 );
setMoveKey( spep_4 + 10 -a, 1, -1.9, 96.4 , 0 );
setMoveKey( spep_4 + 12 -a, 1, -0.4, 96.6 , 0 );
setMoveKey( spep_4 + 14 -a, 1, 1.2, 96.7 , 0 );
setMoveKey( spep_4 + 16 -a, 1, 2.8, 96.9 , 0 );
setMoveKey( spep_4 + 18 -a, 1, 4.4, 97.1 , 0 );
setMoveKey( spep_4 + 20 -a, 1, 6, 97.3 , 0 );
setMoveKey( spep_4 + 22 -a, 1, 7.6, 97.6 , 0 );
setMoveKey( spep_4 + 24 -a, 1, 9.2, 97.8 , 0 );
setMoveKey( spep_4 + 27 -a, 1, 10.9, 97.8 , 0 );
setMoveKey( spep_4 + 28 -a, 1, -62.3, 118.2 , 0 );  --蹴られる
setMoveKey( spep_4 + 30 -a, 1, -87.9, 251.4 , 0 );
setMoveKey( spep_4 + 32 -a, 1, -61.8, 123.2 , 0 );
setMoveKey( spep_4 + 34 -a, 1, -44.9, 250.2 , 0 );
setMoveKey( spep_4 + 36 -a, 1, -50.4, 192.3 , 0 );
setMoveKey( spep_4 + 38 -a, 1, -63.6, 125.8 , 0 );
setMoveKey( spep_4 + 40 -a, 1, -68.7, 157.9 , 0 );
setMoveKey( spep_4 + 42 -a, 1, -77.3, 189.9 , 0 );
setMoveKey( spep_4 + 44 -a, 1, -74.3, 156.7 , 0 );
setMoveKey( spep_4 + 46 -a, 1, -62.8, 129.2 , 0 );
setMoveKey( spep_4 + 48 -a, 1, -71.1, 159 , 0 );
setMoveKey( spep_4 + 50 -a, 1, -81.1, 188.2 , 0 );
setMoveKey( spep_4 + 52 -a, 1, -74.1, 157.5 , 0 );
setMoveKey( spep_4 + 54 -a, 1, -66.8, 126.6 , 0 );
setMoveKey( spep_4 + 56 -a, 1, -67.2, 127.3 , 0 );
setMoveKey( spep_4 + 58 -a, 1, -69.9, 129.4 , 0 );
setMoveKey( spep_4 + 60 -a, 1, -74.8, 133.2 , 0 );
setMoveKey( spep_4 + 62 -a, 1, -81.9, 138.3 , 0 );
setMoveKey( spep_4 + 64 -a, 1, -90.9, 145.1 , 0 );
setMoveKey( spep_4 + 66 -a, 1, -102, 153.2 , 0 );
setMoveKey( spep_4 + 68 -a, 1, -114.1, 162.8 , 0 );
setMoveKey( spep_4 + 70 -a, 1, -127.5, 173.3 , 0 );
setMoveKey( spep_4 + 72 -a, 1, -142.2, 184.6 , 0 );
setMoveKey( spep_4 + 74 -a, 1, -157.6, 196.3 , 0 );
setMoveKey( spep_4 + 76 -a, 1, -173.4, 208.3 , 0 );
setMoveKey( spep_4 + 78 -a, 1, -189.3, 220.3 , 0 );
setMoveKey( spep_4 + 80 -a, 1, -205.1, 232.3 , 0 );
setMoveKey( spep_4 + 82 -a, 1, -220.6, 244 , 0 );
setMoveKey( spep_4 + 84, 1, -235.5, 255.3 , 0 );

setScaleKey( spep_4 + 0, 1, 1.98, 1.98 );
setScaleKey( spep_4 + 8 -a, 1, 1.98, 1.98 );
setScaleKey( spep_4 + 10 -a, 1, 1.99, 1.99 );
setScaleKey( spep_4 + 12 -a, 1, 2, 2 );
setScaleKey( spep_4 + 14 -a, 1, 2.01, 2.01 );
setScaleKey( spep_4 + 16 -a, 1, 2.03, 2.03 );
setScaleKey( spep_4 + 18 -a, 1, 2.04, 2.04 );
setScaleKey( spep_4 + 20 -a, 1, 2.04, 2.04 );
setScaleKey( spep_4 + 22 -a, 1, 2.05, 2.05 );
setScaleKey( spep_4 + 24 -a, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 27 -a, 1, 2.08, 2.08 );
setScaleKey( spep_4 + 28 -a, 1, 1.87, 1.87 );  --蹴られる
setScaleKey( spep_4 + 30 -a, 1, 1.82, 1.82 );
setScaleKey( spep_4 + 32 -a, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 34 -a, 1, 1.81, 1.81 );
setScaleKey( spep_4 + 36 -a, 1, 1.97, 1.97 );
setScaleKey( spep_4 + 38 -a, 1, 1.78, 1.78 );
setScaleKey( spep_4 + 40 -a, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 42 -a, 1, 1.85, 1.85 );
setScaleKey( spep_4 + 44 -a, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 46 -a, 1, 1.86, 1.86 );
setScaleKey( spep_4 + 48 -a, 1, 1.81, 1.81 );
setScaleKey( spep_4 + 50 -a, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 54 -a, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 56 -a, 1, 1.72, 1.72 );
setScaleKey( spep_4 + 58 -a, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 60 -a, 1, 1.65, 1.65 );
setScaleKey( spep_4 + 62 -a, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 64 -a, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 66 -a, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 68 -a, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 70 -a, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 72 -a, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 74 -a, 1, 0.9, 0.9 );
setScaleKey( spep_4 + 76 -a, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 78 -a, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 80 -a, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 82 -a, 1, 0.32, 0.32 );
setScaleKey( spep_4 + 84, 1, 0.18, 0.18 );

setRotateKey( spep_4 + 0, 1, -20 );
setRotateKey( spep_4 + 10 -a, 1, -20 );
setRotateKey( spep_4 + 12 -a, 1, -20.2 );
setRotateKey( spep_4 + 14 -a, 1, -20.4 );
setRotateKey( spep_4 + 16 -a, 1, -20.7 );
setRotateKey( spep_4 + 18 -a, 1, -20.9 );
setRotateKey( spep_4 + 20 -a, 1, -21.1 );
setRotateKey( spep_4 + 22 -a, 1, -21.3 );
setRotateKey( spep_4 + 24 -a, 1, -21.6 );
setRotateKey( spep_4 + 27 -a, 1, -21.8 );
setRotateKey( spep_4 + 28 -a, 1, -29.9 );  --蹴られる
setRotateKey( spep_4 + 72 -a, 1, -29.9 );
setRotateKey( spep_4 + 74 -a, 1, -29.8 );
setRotateKey( spep_4 + 84, 1, -29.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 26, 0, 0, 0, 0, 180 );  --薄い黒　背景
entryFadeBg( spep_4 + 0, 26, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 80, 4, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 28 -a, 1011);  --ドンッ

-- ** 次の準備 ** --
spep_5 = spep_4 + 84;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 爆発 ** --
--[[bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
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
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );]]

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
shuchusen3 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen3, 0 );
setEffRotateKey( spep_5 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen4, 0 );
setEffRotateKey( spep_5 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga2 = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga2, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga2, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga2, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga2, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga2, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga2, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga2, -10.9 );
setEffRotateKey( spep_5 + 15, ctga2, -10.9 );
setEffRotateKey( spep_5 + 16, ctga2, -14.9 );
setEffRotateKey( spep_5 + 17, ctga2, -14.9 );
setEffRotateKey( spep_5 + 18, ctga2, -10.9 );
setEffRotateKey( spep_5 + 19, ctga2, -10.9 );
setEffRotateKey( spep_5 + 20, ctga2, -14.9 );
setEffRotateKey( spep_5 + 21, ctga2, -14.9 );
setEffRotateKey( spep_5 + 22, ctga2, -10.9 );
setEffRotateKey( spep_5 + 23, ctga2, -10.9 );
setEffRotateKey( spep_5 + 24, ctga2, -14.9 );
setEffRotateKey( spep_5 + 25, ctga2, -14.9 );
setEffRotateKey( spep_5 + 26, ctga2, -10.9 );
setEffRotateKey( spep_5 + 27, ctga2, -10.9 );
setEffRotateKey( spep_5 + 28, ctga2, -14.9 );
setEffRotateKey( spep_5 + 100, ctga2, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga2, 255 );
setEffAlphaKey( spep_5 + 100, ctga2, 255 );

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

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );

end



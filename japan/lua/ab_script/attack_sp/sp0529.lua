--スーパーウーブ_魔人ビーム

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
SP_01 = 152991; --気溜め
SP_02 = 152992; --気弾発射
SP_03 = 152993; --着弾　手前
SP_04 = 152994; --着弾　奥
SP_05 = 152995; --突進
SP_06 = 152996; --ビーム発射
SP_07 = 152998; --ビーム着弾
SP_08 = 152999; --チョコ
SP_09 = 190001; --ギャン

--敵側
SP_06r = 152997; --ビーム発射　敵用

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
-- 気溜め(168F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_0 + 0, SP_01, 168, 0x100, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, kidame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 168, kidame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kidame, 255 );
setEffAlphaKey( spep_0 + 168, kidame, 255 );
setEffRotateKey( spep_0 + 0, kidame, 0 );
setEffRotateKey( spep_0 + 168, kidame, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 70,  906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 70, shuchusen1, 98, 10 );

setEffMoveKey( spep_0 + 70, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 70, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_0 + 168, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_0 + 70, shuchusen1, 0 );
setEffRotateKey( spep_0 + 168, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 70, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 168, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 70, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 70, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 84,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 84, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 84, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 154, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 84, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 146, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 148, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 152, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 154, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 84, ctgogo, 0 );
setEffRotateKey( spep_0 + 154, ctgogo, 0 );

setEffAlphaKey( spep_0 + 84, ctgogo, 255 );
setEffAlphaKey( spep_0 + 154, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 0, 1034 );
playSe( spep_0 + 25, 1034 );
playSe( spep_0 + 50, 1034 );
playSe( spep_0 + 75, 1034 );
playSe( spep_0 + 84, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 158, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 168;

------------------------------------------------------
-- 発射(108F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_1 + 0, SP_02, 108, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_1 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_1 + 108, hassha, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_1 + 108, hassha, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hassha, 0 );
setEffRotateKey( spep_1 + 108, hassha, 0 );
setEffAlphaKey( spep_1 + 0, hassha, 255 );
setEffAlphaKey( spep_1 + 108, hassha, 255 );

a = 3;
-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 40 -a, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 40 -a, 10 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 40 -a, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 + 40 -a, shuchusen2, 1, 1 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 40 -a, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 39 -a, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 40 -a, shuchusen2, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 108, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 28; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

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

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 40 -a,  921, 68 +a, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 + 40 -a, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 108, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 40 -a, ryusen1, 1.77, 1.3 );
setEffScaleKey( spep_1 + 108, ryusen1, 1.77, 1.3 );

setEffRotateKey( spep_1 + 40 -a, ryusen1, -130 );
setEffRotateKey( spep_1 + 108, ryusen1, -130 );

setEffAlphaKey( spep_1 + 40 -a, ryusen1, 255 );
setEffAlphaKey( spep_1 + 108, ryusen1, 255 );

-- ** 書き文字 ** --
ctbaba = entryEffectLife( spep_1 + 40 -a,  10023, 38, 0x100, -1, 0, 70.3, 143.4 );  --バババッ
setEffShake( spep_1 + 48 -a, ctbaba, 20, 20 );

setEffMoveKey( spep_1 + 40 -a, ctbaba, 70.3, 143.4 , 0 );
setEffMoveKey( spep_1 + 42 -a, ctbaba, 87.8, 165.1 , 0 );
setEffMoveKey( spep_1 + 44 -a, ctbaba, 99, 188.9 , 0 );
setEffMoveKey( spep_1 + 46 -a, ctbaba, 119, 209.8 , 0 );
setEffMoveKey( spep_1 + 48 -a, ctbaba, 128, 234.4 , 0 );
setEffMoveKey( spep_1 + 68 -a, ctbaba, 128, 234.4 , 0 );
setEffMoveKey( spep_1 + 70 -a, ctbaba, 147.9, 251.3 , 0 );
setEffMoveKey( spep_1 + 72 -a, ctbaba, 152.7, 273.4 , 0 );
setEffMoveKey( spep_1 + 74 -a, ctbaba, 174.6, 289.6 , 0 );
setEffMoveKey( spep_1 + 76 -a, ctbaba, 177.3, 312.3 , 0 );
setEffMoveKey( spep_1 + 78 -a, ctbaba, 189.8, 331.8 , 0 );

setEffScaleKey( spep_1 + 40 -a, ctbaba, 0.63, 0.63 );
setEffScaleKey( spep_1 + 42 -a, ctbaba, 0.98, 0.98 );
setEffScaleKey( spep_1 + 44 -a, ctbaba, 1.34, 1.34 );
setEffScaleKey( spep_1 + 46 -a, ctbaba, 1.69, 1.69 );
setEffScaleKey( spep_1 + 48 -a, ctbaba, 2.05, 2.05 );
setEffScaleKey( spep_1 + 68 -a, ctbaba, 2.05, 2.05 );
setEffScaleKey( spep_1 + 70 -a, ctbaba, 2.35, 2.35 );
setEffScaleKey( spep_1 + 72 -a, ctbaba, 2.65, 2.65 );
setEffScaleKey( spep_1 + 74 -a, ctbaba, 2.96, 2.96 );
setEffScaleKey( spep_1 + 76 -a, ctbaba, 3.26, 3.26 );
setEffScaleKey( spep_1 + 78 -a, ctbaba, 3.56, 3.56 );

setEffRotateKey( spep_1 + 40 -a, ctbaba, -30.9 );
setEffRotateKey( spep_1 + 42 -a, ctbaba, -31 );
setEffRotateKey( spep_1 + 78 -a, ctbaba, -31 );

setEffAlphaKey( spep_1 + 40 -a, ctbaba, 255 );
setEffAlphaKey( spep_1 + 68 -a, ctbaba, 255 );
setEffAlphaKey( spep_1 + 70 -a, ctbaba, 204 );
setEffAlphaKey( spep_1 + 72 -a, ctbaba, 153 );
setEffAlphaKey( spep_1 + 74 -a, ctbaba, 102 );
setEffAlphaKey( spep_1 + 76 -a, ctbaba, 51 );
setEffAlphaKey( spep_1 + 78 -a, ctbaba, 0 );

-- ** 音 ** --
playSe( spep_1 + 38, 1016 );
playSe( spep_1 + 48, 1016 );
playSe( spep_1 + 58, 1016 );
playSe( spep_1 + 68, 1016 );
playSe( spep_1 + 78, 1016 );
playSe( spep_1 + 88, 1016 );
playSe( spep_1 + 98, 1016 );

-- ** ホワイトフェード ** --
entryFade( spep_1 + 98, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 108;

------------------------------------------------------
-- 着弾(78F)
------------------------------------------------------

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 0,  921, 78, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_2 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 1.77, 1.3 );
setEffScaleKey( spep_2 + 78, ryusen2, 1.77, 1.3 );

setEffRotateKey( spep_2 + 0, ryusen2, 30 );
setEffRotateKey( spep_2 + 78, ryusen2, 30 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 78, ryusen2, 255 );

-- ** エフェクト等 ** --
tyakudan_f = entryEffectLife( spep_2 + 0, SP_03, 78, 0x100, -1, 0, 0, 0 );  --着弾　手前(ef_003)
setEffMoveKey( spep_2 + 0, tyakudan_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, tyakudan_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tyakudan_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 78, tyakudan_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tyakudan_f, 0 );
setEffRotateKey( spep_2 + 78, tyakudan_f, 0 );
setEffAlphaKey( spep_2 + 0, tyakudan_f, 255 );
setEffAlphaKey( spep_2 + 78, tyakudan_f, 255 );

tyakudan_b = entryEffectLife( spep_2 + 0, SP_04, 78, 0x80, -1, 0, 0, 0 );  --着弾　奥(ef_004)
setEffMoveKey( spep_2 + 0, tyakudan_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, tyakudan_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tyakudan_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 78, tyakudan_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tyakudan_b, 0 );
setEffRotateKey( spep_2 + 78, tyakudan_b, 0 );
setEffAlphaKey( spep_2 + 0, tyakudan_b, 255 );
setEffAlphaKey( spep_2 + 78, tyakudan_b, 255 );

-- ** 書き文字 ** --
ctzudo = entryEffectLife( spep_2 + 0,  10014, 60, 0x100, -1, 0, 110.2, 286.4 );  --ズドドドッ
setEffShake( spep_2 + 0, ctzudo, 52, 20 );

setEffMoveKey( spep_2 + 0, ctzudo, 110.2, 286.4 , 0 );
setEffMoveKey( spep_2 + 52, ctzudo, 110.2, 286.4 , 0 );
setEffMoveKey( spep_2 + 54, ctzudo, 131.8, 315.8 , 0 );
setEffMoveKey( spep_2 + 56, ctzudo, 140.1, 329.3 , 0 );
setEffMoveKey( spep_2 + 58, ctzudo, 163.2, 360.4 , 0 );
setEffMoveKey( spep_2 + 60, ctzudo, 179, 382.8 , 0 );

setEffScaleKey( spep_2 + 0, ctzudo, 1.96, 1.96 );
setEffScaleKey( spep_2 + 52, ctzudo, 1.96, 1.96 );
setEffScaleKey( spep_2 + 54, ctzudo, 2.2, 2.2 );
setEffScaleKey( spep_2 + 56, ctzudo, 2.44, 2.44 );
setEffScaleKey( spep_2 + 58, ctzudo, 2.68, 2.68 );
setEffScaleKey( spep_2 + 60, ctzudo, 2.92, 2.92 );

setEffRotateKey( spep_2 + 0, ctzudo, 80 );
setEffRotateKey( spep_2 + 60, ctzudo, 80 );

setEffAlphaKey( spep_2 + 0, ctzudo, 255 );
setEffAlphaKey( spep_2 + 52, ctzudo, 255 );
setEffAlphaKey( spep_2 + 54, ctzudo, 191 );
setEffAlphaKey( spep_2 + 56, ctzudo, 128 );
setEffAlphaKey( spep_2 + 58, ctzudo, 64 );
setEffAlphaKey( spep_2 + 60, ctzudo, 0 );

-- ** 敵キャラクター ** --
a1 = 4;
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 78 - a1, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 ); --ガード
changeAnime( spep_2 + 53 - a1, 1, 106 ); --ダメージ
changeAnime( spep_2 + 55 - a1, 1, 108 ); --ダメージ吹き飛び

setMoveKey( spep_2 + 0, 1, 534.3, -306.5 , 0 );
setMoveKey( spep_2 + 2, 1, 470.4, -274.6 , 0 );
setMoveKey( spep_2 + 4, 1, 403.1, -249.9 , 0 );
setMoveKey( spep_2 + 6, 1, 340.4, -217.4 , 0 );
setMoveKey( spep_2 + 8, 1, 272.7, -188.1 , 0 );
setMoveKey( spep_2 + 10, 1, 209.2, -155.7 , 0 );
setMoveKey( spep_2 + 12, 1, 201.7, -158.7 , 0 );
setMoveKey( spep_2 + 14, 1, 200, -153.5 , 0 );
setMoveKey( spep_2 + 16, 1, 192.4, -150.9 , 0 );
setMoveKey( spep_2 + 18, 1, 189.5, -145.7 , 0 );
setMoveKey( spep_2 + 20, 1, 182.2, -149.3 , 0 );
setMoveKey( spep_2 + 22, 1, 180.3, -143.6 , 0 );
setMoveKey( spep_2 + 24, 1, 172.6, -141.1 , 0 );
setMoveKey( spep_2 + 26, 1, 169.7, -135.9 , 0 );
setMoveKey( spep_2 + 28, 1, 162.4, -139.5 , 0 );
setMoveKey( spep_2 + 30, 1, 160.5, -133.7 , 0 );
setMoveKey( spep_2 + 32, 1, 152.8, -131.2 , 0 );
setMoveKey( spep_2 + 34, 1, 150.3, -126.3 , 0 );
setMoveKey( spep_2 + 36, 1, 142.7, -129.6 , 0 );
setMoveKey( spep_2 + 38, 1, 140.8, -123.9 , 0 );
setMoveKey( spep_2 + 40, 1, 133.4, -121.6 , 0 );
setMoveKey( spep_2 + 42, 1, 130.6, -116.4 , 0 );
setMoveKey( spep_2 + 44, 1, 122.9, -119.8 , 0 );
setMoveKey( spep_2 + 46, 1, 121.4, -114.3 , 0 );
setMoveKey( spep_2 + 48, 1, 113.6, -111.8 , 0 );
setMoveKey( spep_2 + 53 - a1, 1, 84.8, -83 , 0 );
setMoveKey( spep_2 + 54 - a1, 1, 84.8, -83 , 0 );
setMoveKey( spep_2 + 55 - a1, 1, 163.4, -135.7 , 0 );
setMoveKey( spep_2 + 56 - a1, 1, 197.2, -149.9 , 0 );
setMoveKey( spep_2 + 58 - a1, 1, 241.5, -174.2 , 0 );
setMoveKey( spep_2 + 60 - a1, 1, 288, -193.5 , 0 );
setMoveKey( spep_2 + 62 - a1, 1, 331.7, -215.3 , 0 );
setMoveKey( spep_2 + 64 - a1, 1, 375.6, -234.8 , 0 );
setMoveKey( spep_2 + 66 - a1, 1, 419.9, -258.6 , 0 );
setMoveKey( spep_2 + 68 - a1, 1, 465.8, -277.9 , 0 );
setMoveKey( spep_2 + 70 - a1, 1, 509.6, -299.6 , 0 );
setMoveKey( spep_2 + 72 - a1, 1, 553.7, -319.4 , 0 );
setMoveKey( spep_2 + 74 - a1, 1, 598.1, -342.7 , 0 );
setMoveKey( spep_2 + 76 - a1, 1, 643.9, -362.6 , 0 );
setMoveKey( spep_2 + 78 - a1, 1, 687.9, -384.2 , 0 );

setScaleKey( spep_2 + 0, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 2, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 4, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 6, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 8, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 10, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 12, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 14, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 18, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 20, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 26, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 28, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 32, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 34, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 38, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 40, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 44, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 46, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 52 - a1, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 53 - a1, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 54 - a1, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 55 - a1, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 56 - a1, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 58 - a1, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 60 - a1, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 62 - a1, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 64 - a1, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 66 - a1, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 68 - a1, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 70 - a1, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 72 - a1, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 74 - a1, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 76 - a1, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 78 - a1, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 52 - a1, 1, 0 );
setRotateKey( spep_2 + 53 - a1, 1, -58.4 );
setRotateKey( spep_2 + 54 - a1, 1, -58.4 );
setRotateKey( spep_2 + 55 - a1, 1, 6.6 );
setRotateKey( spep_2 + 78 - a1, 1, 6.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 78, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 68, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 0, 1016 );
playSe( spep_2 + 10, 1016 );
playSe( spep_2 + 20, 1016 );
playSe( spep_2 + 30, 1016 );
playSe( spep_2 + 40, 1016 );
playSe( spep_2 + 50, 1016 );
playSe( spep_2 + 60, 1016 );
playSe( spep_2 + 70, 1016 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 78;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 突進(48F)
------------------------------------------------------

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_4 + 0, SP_05, 48, 0x100, -1, 0, 0, 0 );  --突進(ef_005)
setEffMoveKey( spep_4 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_4 + 48, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_4 + 48, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tosshin, 0 );
setEffRotateKey( spep_4 + 48, tosshin, 0 );
setEffAlphaKey( spep_4 + 0, tosshin, 255 );
setEffAlphaKey( spep_4 + 48, tosshin, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 48, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen3, 48, 20 );

setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0, 0 );
setEffMoveKey( spep_4 + 48, shuchusen3, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 48, shuchusen3, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen3, 0 );
setEffRotateKey( spep_4 + 48, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 48, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 + 6,  10012, 32, 0x100, -1, 0, -141.6, 351.3 );  --ズオッ
setEffMoveKey( spep_4 + 6, ctzuo, -141.6, 351.3 , 0 );
setEffMoveKey( spep_4 + 8, ctzuo, -146.1, 359.7 , 0 );
setEffMoveKey( spep_4 + 10, ctzuo, -150.5, 368.2 , 0 );
setEffMoveKey( spep_4 + 12, ctzuo, -155, 376.7 , 0 );
setEffMoveKey( spep_4 + 14, ctzuo, -155, 376.6 , 0 );
setEffMoveKey( spep_4 + 16, ctzuo, -155, 376.7 , 0 );
setEffMoveKey( spep_4 + 18, ctzuo, -155, 376.6 , 0 );
setEffMoveKey( spep_4 + 20, ctzuo, -155, 376.7 , 0 );
setEffMoveKey( spep_4 + 22, ctzuo, -155, 376.6 , 0 );
setEffMoveKey( spep_4 + 24, ctzuo, -155, 376.7 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo, -155, 376.6 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo, -155, 376.7 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo, -155, 376.6 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo, -155, 376.7 , 0 );
setEffMoveKey( spep_4 + 34, ctzuo, -156.5, 379.5 , 0 );
setEffMoveKey( spep_4 + 36, ctzuo, -158, 382.4 , 0 );
setEffMoveKey( spep_4 + 38, ctzuo, -159.4, 385.2 , 0 );

setEffScaleKey( spep_4 + 6, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_4 + 8, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_4 + 10, ctzuo, 1.55, 1.55 );
setEffScaleKey( spep_4 + 12, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 14, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 16, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 18, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 20, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 22, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 24, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 26, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 28, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 30, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 32, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 34, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_4 + 36, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4 + 38, ctzuo, 3.15, 3.15 );

setEffRotateKey( spep_4 + 6, ctzuo, -26.1 );
setEffRotateKey( spep_4 + 8, ctzuo, -26.2 );
setEffRotateKey( spep_4 + 38, ctzuo, -26.2 );

setEffAlphaKey( spep_4 + 6, ctzuo, 255 );
setEffAlphaKey( spep_4 + 32, ctzuo, 255 );
setEffAlphaKey( spep_4 + 34, ctzuo, 170 );
setEffAlphaKey( spep_4 + 36, ctzuo, 85 );
setEffAlphaKey( spep_4 + 38, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 48, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 32, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 6, 8 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 48;

------------------------------------------------------
-- 魔人ビーム(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffectLife( spep_5 + 0, SP_06, 88, 0x100, -1, 0, 0, 0 );  --ビーム(ef_006)
setEffMoveKey( spep_5 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_5 + 88, beam, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 88, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 88, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 88, beam, 255 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_5 + 0,  921, 88, 0x80, -1, 0, 116, -22 );  --流線
setEffMoveKey( spep_5 + 0, ryusen3, 116, -22 , 0 );
setEffMoveKey( spep_5 + 88, ryusen3, 116, -22 , 0 );

setEffScaleKey( spep_5 + 0, ryusen3, 1.97, 1.45 );
setEffScaleKey( spep_5 + 88, ryusen3, 1.97, 1.45 );

setEffRotateKey( spep_5 + 0, ryusen3, -130 );
setEffRotateKey( spep_5 + 88, ryusen3, -130 );

setEffAlphaKey( spep_5 + 0, ryusen3, 255 );
setEffAlphaKey( spep_5 + 15, ryusen3, 255 );
setEffAlphaKey( spep_5 + 16, ryusen3, 0 );
setEffAlphaKey( spep_5 + 38, ryusen3, 0 );
setEffAlphaKey( spep_5 + 39, ryusen3, 255 );
setEffAlphaKey( spep_5 + 88, ryusen3, 255 );

-- ** 書き文字エントリー ** --
ctbibi = entryEffectLife( spep_5 + 38,  10025, 50, 0x100, -1, 0, -88.2, 20.1 );  --ビビビ
setEffShake( spep_5 + 38, ctbibi, 50, 20 );

setEffMoveKey( spep_5 + 38, ctbibi, -88.2, 20.1 , 0 );
setEffMoveKey( spep_5 + 88, ctbibi, -88.2, 20.1 , 0 );

setEffScaleKey( spep_5 + 38, ctbibi, 1.73, 1.73 );
setEffScaleKey( spep_5 + 88, ctbibi, 1.73, 1.73 );

setEffRotateKey( spep_5 + 38, ctbibi, 0 );
setEffRotateKey( spep_5 + 88, ctbibi, 0 );

setEffAlphaKey( spep_5 + 38, ctbibi, 0 );
setEffAlphaKey( spep_5 + 39, ctbibi, 255 );
setEffAlphaKey( spep_5 + 88, ctbibi, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 88, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + 78, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_5 + 40, 1021 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 88;

------------------------------------------------------
-- ビーム着弾(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_6 + 0, SP_07, 38, 0x100, -1, 0, 0, 0 );  --ビーム着弾(ef_007)
setEffMoveKey( spep_6 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 38, hidan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 38, hidan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan, 0 );
setEffRotateKey( spep_6 + 38, hidan, 0 );
setEffAlphaKey( spep_6 + 0, hidan, 255 );
setEffAlphaKey( spep_6 + 38, hidan, 255 );

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_6 + 0,  921, 38, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_6 + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 38, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryusen4, 1.77, 1.3 );
setEffScaleKey( spep_6 + 38, ryusen4, 1.77, 1.3 );

setEffRotateKey( spep_6 + 0, ryusen4, 55 );
setEffRotateKey( spep_6 + 38, ryusen4, 55 );

setEffAlphaKey( spep_6 + 0, ryusen4, 255 );
setEffAlphaKey( spep_6 + 38, ryusen4, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 38, 1, 0 );
changeAnime( spep_6 + 0, 1, 108 ); --ダメージ吹き飛び

setMoveKey( spep_6 + 0, 1, -140.5, 154 , 0 );
setMoveKey( spep_6 + 2, 1, -112.3, 132.5 , 0 );
setMoveKey( spep_6 + 4, 1, -90.3, 86.4 , 0 );
setMoveKey( spep_6 + 6, 1, -51.1, 59.7 , 0 );
setMoveKey( spep_6 + 8, 1, -27.4, 26.2 , 0 );
setMoveKey( spep_6 + 10, 1, 0.8, -0.7 , 0 );
setMoveKey( spep_6 + 12, 1, 26.6, -39.1 , 0 );
setMoveKey( spep_6 + 14, 1, 34, -39.9 , 0 );
setMoveKey( spep_6 + 16, 1, 34.6, -43.8 , 0 );
setMoveKey( spep_6 + 18, 1, 37.2, -43.2 , 0 );
setMoveKey( spep_6 + 20, 1, 37.6, -51.3 , 0 );
setMoveKey( spep_6 + 22, 1, 44.9, -52.3 , 0 );
setMoveKey( spep_6 + 24, 1, 45.5, -56 , 0 );
setMoveKey( spep_6 + 26, 1, 48.1, -55.6 , 0 );
setMoveKey( spep_6 + 28, 1, 48.5, -63.5 , 0 );
setMoveKey( spep_6 + 30, 1, 55.7, -64.5 , 0 );
setMoveKey( spep_6 + 32, 1, 56.4, -68.3 , 0 );
setMoveKey( spep_6 + 34, 1, 59, -68 , 0 );
setMoveKey( spep_6 + 36, 1, 59.5, -75.8 , 0 );
setMoveKey( spep_6 + 38, 1, 66.6, -76.8 , 0 );

setScaleKey( spep_6 + 0, 1, 5.28, 5.28 );
setScaleKey( spep_6 + 2, 1, 4.68, 4.68 );
setScaleKey( spep_6 + 4, 1, 4.07, 4.07 );
setScaleKey( spep_6 + 6, 1, 3.47, 3.47 );
setScaleKey( spep_6 + 8, 1, 2.87, 2.87 );
setScaleKey( spep_6 + 10, 1, 2.26, 2.26 );
setScaleKey( spep_6 + 12, 1, 1.66, 1.66 );
setScaleKey( spep_6 + 14, 1, 1.64, 1.64 );
setScaleKey( spep_6 + 16, 1, 1.63, 1.63 );
setScaleKey( spep_6 + 18, 1, 1.62, 1.62 );
setScaleKey( spep_6 + 20, 1, 1.61, 1.61 );
setScaleKey( spep_6 + 22, 1, 1.59, 1.59 );
setScaleKey( spep_6 + 24, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 26, 1, 1.57, 1.57 );
setScaleKey( spep_6 + 28, 1, 1.56, 1.56 );
setScaleKey( spep_6 + 30, 1, 1.54, 1.54 );
setScaleKey( spep_6 + 32, 1, 1.53, 1.53 );
setScaleKey( spep_6 + 34, 1, 1.52, 1.52 );
setScaleKey( spep_6 + 36, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 38, 1, 1.49, 1.49 );

setRotateKey( spep_6 + 0, 1, 26.1 );
setRotateKey( spep_6 + 38, 1, 26.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 38, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 28, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 38;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_7 + 0, SP_09, 58, 0x100, -1, 0, 0, 0 );  --ギャン
setEffMoveKey( spep_7 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_7 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_7 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, gyan, 0 );
setEffRotateKey( spep_7 + 58, gyan, 0 );
setEffAlphaKey( spep_7 + 0, gyan, 255 );
setEffAlphaKey( spep_7 + 58, gyan, 255 );

-- ** 書き文字 ** --
ctgyan = entryEffectLife( spep_7 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_7 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_7 + 58, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_7 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_7 + 6, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_7 + 8, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_7 + 10, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_7 + 12, ctgyan, 3, 3 );
setEffScaleKey( spep_7 + 14, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_7 + 16, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_7 + 18, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_7 + 20, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_7 + 22, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_7 + 24, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_7 + 26, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_7 + 28, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_7 + 30, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_7 + 32, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_7 + 34, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_7 + 36, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_7 + 38, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_7 + 40, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_7 + 42, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_7 + 44, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_7 + 46, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_7 + 48, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_7 + 50, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_7 + 52, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_7 + 54, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_7 + 56, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_7 + 58, ctgyan, 5, 5 );

setEffRotateKey( spep_7 + 0, ctgyan, 0 );
setEffRotateKey( spep_7 + 58, ctgyan, 0 );

setEffAlphaKey( spep_7 + 0, ctgyan, 255 );
setEffAlphaKey( spep_7 + 58, ctgyan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 20, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_7 + 0, 1023 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 58;

------------------------------------------------------
-- 爆発(238F)
------------------------------------------------------

-- ** エフェクト等 ** --
choko = entryEffect( spep_8 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --チョコ
setEffMoveKey( spep_8 + 0, choko, 0, 0 , 0 );
setEffMoveKey( spep_8 + 238, choko, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, choko, 1.0, 1.0 );
setEffScaleKey( spep_8 + 238, choko, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, choko, 0 );
setEffRotateKey( spep_8 + 238, choko, 0 );
setEffAlphaKey( spep_8 + 0, choko, 255 );
setEffAlphaKey( spep_8 + 238, choko, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_8 + 0,  906, 238, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen4, 238, 20 );

setEffMoveKey( spep_8 + 0, shuchusen4, 0, 0, 0 );
setEffMoveKey( spep_8 + 238, shuchusen4, 0, 0, 0 );

setEffScaleKey( spep_8 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_8 + 238, shuchusen4, 1, 1 );

setEffRotateKey( spep_8 + 0, shuchusen4, 0 );
setEffRotateKey( spep_8 + 238, shuchusen4, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 238, shuchusen4, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 238, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_8 + 0, 0, 2, 16, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_8 + 4, 1024 );  --爆発
playSe( spep_8 + 132, 31 );  --チョコ

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 38 );
entryFade( spep_8 + 214, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_8 + 228 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(168F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_0 + 0, SP_01, 168, 0x100, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, kidame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 168, kidame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kidame, 255 );
setEffAlphaKey( spep_0 + 168, kidame, 255 );
setEffRotateKey( spep_0 + 0, kidame, 0 );
setEffRotateKey( spep_0 + 168, kidame, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 70,  906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 70, shuchusen1, 98, 10 );

setEffMoveKey( spep_0 + 70, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 70, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_0 + 168, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_0 + 70, shuchusen1, 0 );
setEffRotateKey( spep_0 + 168, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 70, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 168, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 70, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 70, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 84,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 84, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 84, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 154, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 84, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 146, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 148, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 150, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 152, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 154, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 84, ctgogo, 0 );
setEffRotateKey( spep_0 + 154, ctgogo, 0 );

setEffAlphaKey( spep_0 + 84, ctgogo, 255 );
setEffAlphaKey( spep_0 + 154, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 0, 1034 );
playSe( spep_0 + 25, 1034 );
playSe( spep_0 + 50, 1034 );
playSe( spep_0 + 75, 1034 );
playSe( spep_0 + 84, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 158, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 168;

------------------------------------------------------
-- 発射(108F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_1 + 0, SP_02, 108, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_1 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_1 + 108, hassha, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_1 + 108, hassha, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hassha, 0 );
setEffRotateKey( spep_1 + 108, hassha, 0 );
setEffAlphaKey( spep_1 + 0, hassha, 255 );
setEffAlphaKey( spep_1 + 108, hassha, 255 );

a = 3;
-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 40 -a, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 40 -a, 10 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 40 -a, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 + 40 -a, shuchusen2, 1, 1 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 40 -a, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 39 -a, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 40 -a, shuchusen2, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 108, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 28; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

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

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 40 -a,  921, 68 +a, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 + 40 -a, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 108, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 40 -a, ryusen1, 1.77, 1.3 );
setEffScaleKey( spep_1 + 108, ryusen1, 1.77, 1.3 );

setEffRotateKey( spep_1 + 40 -a, ryusen1, -130 );
setEffRotateKey( spep_1 + 108, ryusen1, -130 );

setEffAlphaKey( spep_1 + 40 -a, ryusen1, 255 );
setEffAlphaKey( spep_1 + 108, ryusen1, 255 );

-- ** 書き文字 ** --
ctbaba = entryEffectLife( spep_1 + 40 -a,  10023, 38, 0x100, -1, 0, 70.3, 143.4 );  --バババッ
setEffShake( spep_1 + 48 -a, ctbaba, 20, 20 );

setEffMoveKey( spep_1 + 40 -a, ctbaba, 70.3, 143.4 , 0 );
setEffMoveKey( spep_1 + 42 -a, ctbaba, 87.8, 165.1 , 0 );
setEffMoveKey( spep_1 + 44 -a, ctbaba, 99, 188.9 , 0 );
setEffMoveKey( spep_1 + 46 -a, ctbaba, 119, 209.8 , 0 );
setEffMoveKey( spep_1 + 48 -a, ctbaba, 128, 234.4 , 0 );
setEffMoveKey( spep_1 + 68 -a, ctbaba, 128, 234.4 , 0 );
setEffMoveKey( spep_1 + 70 -a, ctbaba, 147.9, 251.3 , 0 );
setEffMoveKey( spep_1 + 72 -a, ctbaba, 152.7, 273.4 , 0 );
setEffMoveKey( spep_1 + 74 -a, ctbaba, 174.6, 289.6 , 0 );
setEffMoveKey( spep_1 + 76 -a, ctbaba, 177.3, 312.3 , 0 );
setEffMoveKey( spep_1 + 78 -a, ctbaba, 189.8, 331.8 , 0 );

setEffScaleKey( spep_1 + 40 -a, ctbaba, 0.63, 0.63 );
setEffScaleKey( spep_1 + 42 -a, ctbaba, 0.98, 0.98 );
setEffScaleKey( spep_1 + 44 -a, ctbaba, 1.34, 1.34 );
setEffScaleKey( spep_1 + 46 -a, ctbaba, 1.69, 1.69 );
setEffScaleKey( spep_1 + 48 -a, ctbaba, 2.05, 2.05 );
setEffScaleKey( spep_1 + 68 -a, ctbaba, 2.05, 2.05 );
setEffScaleKey( spep_1 + 70 -a, ctbaba, 2.35, 2.35 );
setEffScaleKey( spep_1 + 72 -a, ctbaba, 2.65, 2.65 );
setEffScaleKey( spep_1 + 74 -a, ctbaba, 2.96, 2.96 );
setEffScaleKey( spep_1 + 76 -a, ctbaba, 3.26, 3.26 );
setEffScaleKey( spep_1 + 78 -a, ctbaba, 3.56, 3.56 );

setEffRotateKey( spep_1 + 40 -a, ctbaba, -30.9 );
setEffRotateKey( spep_1 + 42 -a, ctbaba, -31 );
setEffRotateKey( spep_1 + 78 -a, ctbaba, -31 );

setEffAlphaKey( spep_1 + 40 -a, ctbaba, 255 );
setEffAlphaKey( spep_1 + 68 -a, ctbaba, 255 );
setEffAlphaKey( spep_1 + 70 -a, ctbaba, 204 );
setEffAlphaKey( spep_1 + 72 -a, ctbaba, 153 );
setEffAlphaKey( spep_1 + 74 -a, ctbaba, 102 );
setEffAlphaKey( spep_1 + 76 -a, ctbaba, 51 );
setEffAlphaKey( spep_1 + 78 -a, ctbaba, 0 );

-- ** 音 ** --
playSe( spep_1 + 38, 1016 );
playSe( spep_1 + 48, 1016 );
playSe( spep_1 + 58, 1016 );
playSe( spep_1 + 68, 1016 );
playSe( spep_1 + 78, 1016 );
playSe( spep_1 + 88, 1016 );
playSe( spep_1 + 98, 1016 );

-- ** ホワイトフェード ** --
entryFade( spep_1 + 98, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 108;

------------------------------------------------------
-- 着弾(78F)
------------------------------------------------------

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 0,  921, 78, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_2 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 1.77, 1.3 );
setEffScaleKey( spep_2 + 78, ryusen2, 1.77, 1.3 );

setEffRotateKey( spep_2 + 0, ryusen2, 30 );
setEffRotateKey( spep_2 + 78, ryusen2, 30 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 78, ryusen2, 255 );

-- ** エフェクト等 ** --
tyakudan_f = entryEffectLife( spep_2 + 0, SP_03, 78, 0x100, -1, 0, 0, 0 );  --着弾　手前(ef_003)
setEffMoveKey( spep_2 + 0, tyakudan_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, tyakudan_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tyakudan_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 78, tyakudan_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tyakudan_f, 0 );
setEffRotateKey( spep_2 + 78, tyakudan_f, 0 );
setEffAlphaKey( spep_2 + 0, tyakudan_f, 255 );
setEffAlphaKey( spep_2 + 78, tyakudan_f, 255 );

tyakudan_b = entryEffectLife( spep_2 + 0, SP_04, 78, 0x80, -1, 0, 0, 0 );  --着弾　奥(ef_004)
setEffMoveKey( spep_2 + 0, tyakudan_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, tyakudan_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tyakudan_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 78, tyakudan_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tyakudan_b, 0 );
setEffRotateKey( spep_2 + 78, tyakudan_b, 0 );
setEffAlphaKey( spep_2 + 0, tyakudan_b, 255 );
setEffAlphaKey( spep_2 + 78, tyakudan_b, 255 );

-- ** 書き文字 ** --
ctzudo = entryEffectLife( spep_2 + 0,  10014, 60, 0x100, -1, 0, 110.2, 286.4 );  --ズドドドッ
setEffShake( spep_2 + 0, ctzudo, 52, 20 );

setEffMoveKey( spep_2 + 0, ctzudo, 110.2, 286.4 , 0 );
setEffMoveKey( spep_2 + 52, ctzudo, 110.2, 286.4 , 0 );
setEffMoveKey( spep_2 + 54, ctzudo, 131.8, 315.8 , 0 );
setEffMoveKey( spep_2 + 56, ctzudo, 140.1, 329.3 , 0 );
setEffMoveKey( spep_2 + 58, ctzudo, 163.2, 360.4 , 0 );
setEffMoveKey( spep_2 + 60, ctzudo, 179, 382.8 , 0 );

setEffScaleKey( spep_2 + 0, ctzudo, 1.96, 1.96 );
setEffScaleKey( spep_2 + 52, ctzudo, 1.96, 1.96 );
setEffScaleKey( spep_2 + 54, ctzudo, 2.2, 2.2 );
setEffScaleKey( spep_2 + 56, ctzudo, 2.44, 2.44 );
setEffScaleKey( spep_2 + 58, ctzudo, 2.68, 2.68 );
setEffScaleKey( spep_2 + 60, ctzudo, 2.92, 2.92 );

setEffRotateKey( spep_2 + 0, ctzudo, 0 );
setEffRotateKey( spep_2 + 60, ctzudo, 0 );

setEffAlphaKey( spep_2 + 0, ctzudo, 255 );
setEffAlphaKey( spep_2 + 52, ctzudo, 255 );
setEffAlphaKey( spep_2 + 54, ctzudo, 191 );
setEffAlphaKey( spep_2 + 56, ctzudo, 128 );
setEffAlphaKey( spep_2 + 58, ctzudo, 64 );
setEffAlphaKey( spep_2 + 60, ctzudo, 0 );

-- ** 敵キャラクター ** --
a1 = 4;
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 78 - a1, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 ); --ガード
changeAnime( spep_2 + 53 - a1, 1, 106 ); --ダメージ
changeAnime( spep_2 + 55 - a1, 1, 108 ); --ダメージ吹き飛び

setMoveKey( spep_2 + 0, 1, 534.3, -306.5 , 0 );
setMoveKey( spep_2 + 2, 1, 470.4, -274.6 , 0 );
setMoveKey( spep_2 + 4, 1, 403.1, -249.9 , 0 );
setMoveKey( spep_2 + 6, 1, 340.4, -217.4 , 0 );
setMoveKey( spep_2 + 8, 1, 272.7, -188.1 , 0 );
setMoveKey( spep_2 + 10, 1, 209.2, -155.7 , 0 );
setMoveKey( spep_2 + 12, 1, 201.7, -158.7 , 0 );
setMoveKey( spep_2 + 14, 1, 200, -153.5 , 0 );
setMoveKey( spep_2 + 16, 1, 192.4, -150.9 , 0 );
setMoveKey( spep_2 + 18, 1, 189.5, -145.7 , 0 );
setMoveKey( spep_2 + 20, 1, 182.2, -149.3 , 0 );
setMoveKey( spep_2 + 22, 1, 180.3, -143.6 , 0 );
setMoveKey( spep_2 + 24, 1, 172.6, -141.1 , 0 );
setMoveKey( spep_2 + 26, 1, 169.7, -135.9 , 0 );
setMoveKey( spep_2 + 28, 1, 162.4, -139.5 , 0 );
setMoveKey( spep_2 + 30, 1, 160.5, -133.7 , 0 );
setMoveKey( spep_2 + 32, 1, 152.8, -131.2 , 0 );
setMoveKey( spep_2 + 34, 1, 150.3, -126.3 , 0 );
setMoveKey( spep_2 + 36, 1, 142.7, -129.6 , 0 );
setMoveKey( spep_2 + 38, 1, 140.8, -123.9 , 0 );
setMoveKey( spep_2 + 40, 1, 133.4, -121.6 , 0 );
setMoveKey( spep_2 + 42, 1, 130.6, -116.4 , 0 );
setMoveKey( spep_2 + 44, 1, 122.9, -119.8 , 0 );
setMoveKey( spep_2 + 46, 1, 121.4, -114.3 , 0 );
setMoveKey( spep_2 + 48, 1, 113.6, -111.8 , 0 );
setMoveKey( spep_2 + 53 - a1, 1, 84.8, -83 , 0 );
setMoveKey( spep_2 + 54 - a1, 1, 84.8, -83 , 0 );
setMoveKey( spep_2 + 55 - a1, 1, 163.4, -135.7 , 0 );
setMoveKey( spep_2 + 56 - a1, 1, 197.2, -149.9 , 0 );
setMoveKey( spep_2 + 58 - a1, 1, 241.5, -174.2 , 0 );
setMoveKey( spep_2 + 60 - a1, 1, 288, -193.5 , 0 );
setMoveKey( spep_2 + 62 - a1, 1, 331.7, -215.3 , 0 );
setMoveKey( spep_2 + 64 - a1, 1, 375.6, -234.8 , 0 );
setMoveKey( spep_2 + 66 - a1, 1, 419.9, -258.6 , 0 );
setMoveKey( spep_2 + 68 - a1, 1, 465.8, -277.9 , 0 );
setMoveKey( spep_2 + 70 - a1, 1, 509.6, -299.6 , 0 );
setMoveKey( spep_2 + 72 - a1, 1, 553.7, -319.4 , 0 );
setMoveKey( spep_2 + 74 - a1, 1, 598.1, -342.7 , 0 );
setMoveKey( spep_2 + 76 - a1, 1, 643.9, -362.6 , 0 );
setMoveKey( spep_2 + 78 - a1, 1, 687.9, -384.2 , 0 );

setScaleKey( spep_2 + 0, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 2, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 4, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 6, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 8, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 10, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 12, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 14, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 18, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 20, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 26, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 28, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 32, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 34, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 38, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 40, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 44, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 46, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 52 - a1, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 53 - a1, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 54 - a1, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 55 - a1, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 56 - a1, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 58 - a1, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 60 - a1, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 62 - a1, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 64 - a1, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 66 - a1, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 68 - a1, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 70 - a1, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 72 - a1, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 74 - a1, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 76 - a1, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 78 - a1, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 52 - a1, 1, 0 );
setRotateKey( spep_2 + 53 - a1, 1, -58.4 );
setRotateKey( spep_2 + 54 - a1, 1, -58.4 );
setRotateKey( spep_2 + 55 - a1, 1, 6.6 );
setRotateKey( spep_2 + 78 - a1, 1, 6.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 78, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 68, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 0, 1016 );
playSe( spep_2 + 10, 1016 );
playSe( spep_2 + 20, 1016 );
playSe( spep_2 + 30, 1016 );
playSe( spep_2 + 40, 1016 );
playSe( spep_2 + 50, 1016 );
playSe( spep_2 + 60, 1016 );
playSe( spep_2 + 70, 1016 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 78;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 突進(48F)
------------------------------------------------------

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_4 + 0, SP_05, 48, 0x100, -1, 0, 0, 0 );  --突進(ef_005)
setEffMoveKey( spep_4 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_4 + 48, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_4 + 48, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tosshin, 0 );
setEffRotateKey( spep_4 + 48, tosshin, 0 );
setEffAlphaKey( spep_4 + 0, tosshin, 255 );
setEffAlphaKey( spep_4 + 48, tosshin, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 48, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen3, 48, 20 );

setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0, 0 );
setEffMoveKey( spep_4 + 48, shuchusen3, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 48, shuchusen3, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen3, 0 );
setEffRotateKey( spep_4 + 48, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 48, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 + 6,  10012, 32, 0x100, -1, 0, -141.6, 351.3 );  --ズオッ
setEffMoveKey( spep_4 + 6, ctzuo, -141.6, 351.3 , 0 );
setEffMoveKey( spep_4 + 8, ctzuo, -146.1, 359.7 , 0 );
setEffMoveKey( spep_4 + 10, ctzuo, -150.5, 368.2 , 0 );
setEffMoveKey( spep_4 + 12, ctzuo, -155, 376.7 , 0 );
setEffMoveKey( spep_4 + 14, ctzuo, -155, 376.6 , 0 );
setEffMoveKey( spep_4 + 16, ctzuo, -155, 376.7 , 0 );
setEffMoveKey( spep_4 + 18, ctzuo, -155, 376.6 , 0 );
setEffMoveKey( spep_4 + 20, ctzuo, -155, 376.7 , 0 );
setEffMoveKey( spep_4 + 22, ctzuo, -155, 376.6 , 0 );
setEffMoveKey( spep_4 + 24, ctzuo, -155, 376.7 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo, -155, 376.6 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo, -155, 376.7 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo, -155, 376.6 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo, -155, 376.7 , 0 );
setEffMoveKey( spep_4 + 34, ctzuo, -156.5, 379.5 , 0 );
setEffMoveKey( spep_4 + 36, ctzuo, -158, 382.4 , 0 );
setEffMoveKey( spep_4 + 38, ctzuo, -159.4, 385.2 , 0 );

setEffScaleKey( spep_4 + 6, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_4 + 8, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_4 + 10, ctzuo, 1.55, 1.55 );
setEffScaleKey( spep_4 + 12, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 14, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 16, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 18, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 20, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 22, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 24, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 26, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 28, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 30, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 32, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 34, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_4 + 36, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4 + 38, ctzuo, 3.15, 3.15 );

setEffRotateKey( spep_4 + 6, ctzuo, -26.1 );
setEffRotateKey( spep_4 + 8, ctzuo, -26.2 );
setEffRotateKey( spep_4 + 38, ctzuo, -26.2 );

setEffAlphaKey( spep_4 + 6, ctzuo, 255 );
setEffAlphaKey( spep_4 + 32, ctzuo, 255 );
setEffAlphaKey( spep_4 + 34, ctzuo, 170 );
setEffAlphaKey( spep_4 + 36, ctzuo, 85 );
setEffAlphaKey( spep_4 + 38, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 48, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 32, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 6, 8 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 48;

------------------------------------------------------
-- 魔人ビーム(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffectLife( spep_5 + 0, SP_06r, 88, 0x100, -1, 0, 0, 0 );  --ビーム(ef_006)
setEffMoveKey( spep_5 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_5 + 88, beam, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 88, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 88, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 88, beam, 255 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_5 + 0,  921, 88, 0x80, -1, 0, 116, -22 );  --流線
setEffMoveKey( spep_5 + 0, ryusen3, 116, -22 , 0 );
setEffMoveKey( spep_5 + 88, ryusen3, 116, -22 , 0 );

setEffScaleKey( spep_5 + 0, ryusen3, 1.97, 1.45 );
setEffScaleKey( spep_5 + 88, ryusen3, 1.97, 1.45 );

setEffRotateKey( spep_5 + 0, ryusen3, -130 );
setEffRotateKey( spep_5 + 88, ryusen3, -130 );

setEffAlphaKey( spep_5 + 0, ryusen3, 255 );
setEffAlphaKey( spep_5 + 15, ryusen3, 255 );
setEffAlphaKey( spep_5 + 16, ryusen3, 0 );
setEffAlphaKey( spep_5 + 38, ryusen3, 0 );
setEffAlphaKey( spep_5 + 39, ryusen3, 255 );
setEffAlphaKey( spep_5 + 88, ryusen3, 255 );

-- ** 書き文字エントリー ** --
ctbibi = entryEffectLife( spep_5 + 38,  10025, 50, 0x100, -1, 0, -88.2, 20.1 );  --ビビビ
setEffShake( spep_5 + 38, ctbibi, 50, 20 );

setEffMoveKey( spep_5 + 38, ctbibi, -88.2, 20.1 , 0 );
setEffMoveKey( spep_5 + 88, ctbibi, -88.2, 20.1 , 0 );

setEffScaleKey( spep_5 + 38, ctbibi, 1.73, 1.73 );
setEffScaleKey( spep_5 + 88, ctbibi, 1.73, 1.73 );

setEffRotateKey( spep_5 + 38, ctbibi, 0 );
setEffRotateKey( spep_5 + 88, ctbibi, 0 );

setEffAlphaKey( spep_5 + 38, ctbibi, 0 );
setEffAlphaKey( spep_5 + 39, ctbibi, 255 );
setEffAlphaKey( spep_5 + 88, ctbibi, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 88, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + 78, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_5 + 40, 1021 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 88;

------------------------------------------------------
-- ビーム着弾(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_6 + 0, SP_07, 38, 0x100, -1, 0, 0, 0 );  --ビーム着弾(ef_007)
setEffMoveKey( spep_6 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 38, hidan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 38, hidan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan, 0 );
setEffRotateKey( spep_6 + 38, hidan, 0 );
setEffAlphaKey( spep_6 + 0, hidan, 255 );
setEffAlphaKey( spep_6 + 38, hidan, 255 );

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_6 + 0,  921, 38, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_6 + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 38, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryusen4, 1.77, 1.3 );
setEffScaleKey( spep_6 + 38, ryusen4, 1.77, 1.3 );

setEffRotateKey( spep_6 + 0, ryusen4, 55 );
setEffRotateKey( spep_6 + 38, ryusen4, 55 );

setEffAlphaKey( spep_6 + 0, ryusen4, 255 );
setEffAlphaKey( spep_6 + 38, ryusen4, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 38, 1, 0 );
changeAnime( spep_6 + 0, 1, 108 ); --ダメージ吹き飛び

setMoveKey( spep_6 + 0, 1, -140.5, 154 , 0 );
setMoveKey( spep_6 + 2, 1, -112.3, 132.5 , 0 );
setMoveKey( spep_6 + 4, 1, -90.3, 86.4 , 0 );
setMoveKey( spep_6 + 6, 1, -51.1, 59.7 , 0 );
setMoveKey( spep_6 + 8, 1, -27.4, 26.2 , 0 );
setMoveKey( spep_6 + 10, 1, 0.8, -0.7 , 0 );
setMoveKey( spep_6 + 12, 1, 26.6, -39.1 , 0 );
setMoveKey( spep_6 + 14, 1, 34, -39.9 , 0 );
setMoveKey( spep_6 + 16, 1, 34.6, -43.8 , 0 );
setMoveKey( spep_6 + 18, 1, 37.2, -43.2 , 0 );
setMoveKey( spep_6 + 20, 1, 37.6, -51.3 , 0 );
setMoveKey( spep_6 + 22, 1, 44.9, -52.3 , 0 );
setMoveKey( spep_6 + 24, 1, 45.5, -56 , 0 );
setMoveKey( spep_6 + 26, 1, 48.1, -55.6 , 0 );
setMoveKey( spep_6 + 28, 1, 48.5, -63.5 , 0 );
setMoveKey( spep_6 + 30, 1, 55.7, -64.5 , 0 );
setMoveKey( spep_6 + 32, 1, 56.4, -68.3 , 0 );
setMoveKey( spep_6 + 34, 1, 59, -68 , 0 );
setMoveKey( spep_6 + 36, 1, 59.5, -75.8 , 0 );
setMoveKey( spep_6 + 38, 1, 66.6, -76.8 , 0 );

setScaleKey( spep_6 + 0, 1, 5.28, 5.28 );
setScaleKey( spep_6 + 2, 1, 4.68, 4.68 );
setScaleKey( spep_6 + 4, 1, 4.07, 4.07 );
setScaleKey( spep_6 + 6, 1, 3.47, 3.47 );
setScaleKey( spep_6 + 8, 1, 2.87, 2.87 );
setScaleKey( spep_6 + 10, 1, 2.26, 2.26 );
setScaleKey( spep_6 + 12, 1, 1.66, 1.66 );
setScaleKey( spep_6 + 14, 1, 1.64, 1.64 );
setScaleKey( spep_6 + 16, 1, 1.63, 1.63 );
setScaleKey( spep_6 + 18, 1, 1.62, 1.62 );
setScaleKey( spep_6 + 20, 1, 1.61, 1.61 );
setScaleKey( spep_6 + 22, 1, 1.59, 1.59 );
setScaleKey( spep_6 + 24, 1, 1.58, 1.58 );
setScaleKey( spep_6 + 26, 1, 1.57, 1.57 );
setScaleKey( spep_6 + 28, 1, 1.56, 1.56 );
setScaleKey( spep_6 + 30, 1, 1.54, 1.54 );
setScaleKey( spep_6 + 32, 1, 1.53, 1.53 );
setScaleKey( spep_6 + 34, 1, 1.52, 1.52 );
setScaleKey( spep_6 + 36, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 38, 1, 1.49, 1.49 );

setRotateKey( spep_6 + 0, 1, 26.1 );
setRotateKey( spep_6 + 38, 1, 26.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 38, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 28, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 38;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_7 + 0, SP_09, 58, 0x100, -1, 0, 0, 0 );  --ギャン
setEffMoveKey( spep_7 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_7 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_7 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, gyan, 0 );
setEffRotateKey( spep_7 + 58, gyan, 0 );
setEffAlphaKey( spep_7 + 0, gyan, 255 );
setEffAlphaKey( spep_7 + 58, gyan, 255 );

-- ** 書き文字 ** --
ctgyan = entryEffectLife( spep_7 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_7 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_7 + 58, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_7 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_7 + 6, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_7 + 8, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_7 + 10, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_7 + 12, ctgyan, 3, 3 );
setEffScaleKey( spep_7 + 14, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_7 + 16, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_7 + 18, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_7 + 20, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_7 + 22, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_7 + 24, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_7 + 26, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_7 + 28, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_7 + 30, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_7 + 32, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_7 + 34, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_7 + 36, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_7 + 38, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_7 + 40, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_7 + 42, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_7 + 44, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_7 + 46, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_7 + 48, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_7 + 50, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_7 + 52, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_7 + 54, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_7 + 56, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_7 + 58, ctgyan, 5, 5 );

setEffRotateKey( spep_7 + 0, ctgyan, 0 );
setEffRotateKey( spep_7 + 58, ctgyan, 0 );

setEffAlphaKey( spep_7 + 0, ctgyan, 255 );
setEffAlphaKey( spep_7 + 58, ctgyan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 20, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_7 + 0, 1023 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 58;

------------------------------------------------------
-- 爆発(238F)
------------------------------------------------------

-- ** エフェクト等 ** --
choko = entryEffect( spep_8 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --チョコ
setEffMoveKey( spep_8 + 0, choko, 0, 0 , 0 );
setEffMoveKey( spep_8 + 238, choko, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, choko, -1.0, 1.0 );
setEffScaleKey( spep_8 + 238, choko, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, choko, 0 );
setEffRotateKey( spep_8 + 238, choko, 0 );
setEffAlphaKey( spep_8 + 0, choko, 255 );
setEffAlphaKey( spep_8 + 238, choko, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_8 + 0,  906, 238, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen4, 238, 20 );

setEffMoveKey( spep_8 + 0, shuchusen4, 0, 0, 0 );
setEffMoveKey( spep_8 + 238, shuchusen4, 0, 0, 0 );

setEffScaleKey( spep_8 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_8 + 238, shuchusen4, 1, 1 );

setEffRotateKey( spep_8 + 0, shuchusen4, 0 );
setEffRotateKey( spep_8 + 238, shuchusen4, 0 );

setEffAlphaKey( spep_8 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_8 + 238, shuchusen4, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 238, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_8 + 0, 0, 2, 16, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_8 + 4, 1024 );  --爆発
playSe( spep_8 + 132, 31 );  --チョコ

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 38 );
entryFade( spep_8 + 214, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_8 + 228 );

end



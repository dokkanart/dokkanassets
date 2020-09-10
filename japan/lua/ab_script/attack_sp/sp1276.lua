--超サイヤ人孫悟飯(青年期)_爆砕気弾

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
SP_01 = 153288; --迫る
SP_02 = 153289; --パンチ・背景
SP_03 = 153290; --パンチ
SP_04 = 153292; --キック
SP_05 = 153294; --気溜め
SP_06 = 153296; --発射
SP_07 = 153298; --発射・背景
SP_08 = 153299; --爆発
SP_09 = 153300; --ギャン

--敵側
SP_03r = 153291; --パンチ
SP_04r = 153293; --キック
SP_05r = 153295; --気溜め
SP_06r = 153297; --発射

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
-- 手前に迫る(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
semaru = entryEffectLife( spep_0 + 0, SP_01, 146, 0x100, -1, 0, 0, 0 );  --迫る(ef_001)
setEffMoveKey( spep_0 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, semaru, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, semaru, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, semaru, 0 );
setEffRotateKey( spep_0 + 146, semaru, 0 );
setEffAlphaKey( spep_0 + 0, semaru, 255 );
setEffAlphaKey( spep_0 + 146, semaru, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 146, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 146, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 146, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 146, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 26,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 26, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 26, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 94, ctgogo, -8.5, 515.5 , 0 );

setEffScaleKey( spep_0 + 26, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 86, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 88, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 92, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 94, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 26, ctgogo, 0 );
setEffRotateKey( spep_0 + 94, ctgogo, 0 );

setEffAlphaKey( spep_0 + 26, ctgogo, 255 );
setEffAlphaKey( spep_0 + 94, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 26, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

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
playSe( spep_0 + 120, 8 );  --迫る

-- ** ホワイトフェード ** --
entryFade( spep_0 + 136, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

------------------------------------------------------
-- 殴る(138F)
------------------------------------------------------

-- ** エフェクト等 ** --
naguru_f = entryEffectLife( spep_1 + 0, SP_02, 138, 0x80, -1, 0, 0, 0 );  --殴る　奥(ef_002)
setEffMoveKey( spep_1 + 0, naguru_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 138, naguru_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 138, naguru_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru_f, 0 );
setEffRotateKey( spep_1 + 138, naguru_f, 0 );
setEffAlphaKey( spep_1 + 0, naguru_f, 255 );
setEffAlphaKey( spep_1 + 138, naguru_f, 255 );

naguru_b = entryEffectLife( spep_1 + 0, SP_03, 138, 0x100, -1, 0, 0, 0 );  --殴る　手前(ef_003)
setEffMoveKey( spep_1 + 0, naguru_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 138, naguru_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 138, naguru_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru_b, 0 );
setEffRotateKey( spep_1 + 138, naguru_b, 0 );
setEffAlphaKey( spep_1 + 0, naguru_b, 255 );
setEffAlphaKey( spep_1 + 138, naguru_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0,  914, 102, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 102, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 3.3, 1.3 );
setEffScaleKey( spep_1 + 102, ryusen1, 3.3, 1.3 );

setEffRotateKey( spep_1 + 0, ryusen1, -35 );
setEffRotateKey( spep_1 + 102, ryusen1, -35 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 86, ryusen1, 255 );
setEffAlphaKey( spep_1 + 102, ryusen1, 0 );

ryusen2 = entryEffectLife( spep_1 + 0,  921, 138, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 138, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen2, 1.7, 1.08 );
setEffScaleKey( spep_1 + 138, ryusen2, 1.7, 1.08 );

setEffRotateKey( spep_1 + 0, ryusen2, -60 );
setEffRotateKey( spep_1 + 138, ryusen2, -60 );

setEffAlphaKey( spep_1 + 0, ryusen2, 0 );
setEffAlphaKey( spep_1 + 101, ryusen2, 0 );
setEffAlphaKey( spep_1 + 102, ryusen2, 200 );
setEffAlphaKey( spep_1 + 138, ryusen2, 200 );

-- ** エフェクト等 ** --
kick = entryEffectLife( spep_1 + 0, SP_04, 138, 0x80, -1, 0, 0, 0 );  --蹴り(ef_004)
setEffMoveKey( spep_1 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_1 + 138, kick, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_1 + 138, kick, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick, 0 );
setEffRotateKey( spep_1 + 138, kick, 0 );
setEffAlphaKey( spep_1 + 0, kick, 255 );
setEffAlphaKey( spep_1 + 138, kick, 255 );

a = 3;
idou = entryEffectLife( spep_1 + 90 -a, 700, 8, 0x100, -1, 0, 199.8, 110.6 );  --瞬間移動
setEffMoveKey( spep_1 + 90 -a, idou, 199.8, 110.6 , 0 );
setEffMoveKey( spep_1 + 92 -a, idou, 196, 117.2 , 0 );
setEffMoveKey( spep_1 + 94 -a, idou, 192.1, 123.8 , 0 );
setEffMoveKey( spep_1 + 96 -a, idou, 197.9, 113.9 , 0 );
setEffMoveKey( spep_1 + 98 -a, idou, 203.7, 104 , 0 );

setEffScaleKey( spep_1 + 90 -a, idou, 1.0, 1.0 );
setEffScaleKey( spep_1 + 98 -a, idou, 1.0, 1.0 );

setEffRotateKey( spep_1 + 90 -a, idou, 149.7 );
setEffRotateKey( spep_1 + 98 -a, idou, 149.7 );

setEffAlphaKey( spep_1 + 90 -a, idou, 255 );
setEffAlphaKey( spep_1 + 98 -a, idou, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 88,  906, 14, 0x100, -1, 0, 0, 30 );  --集中線
setEffShake( spep_1 + 88, shuchusen2, 14, 25 );

setEffMoveKey( spep_1 + 88, shuchusen2, 0, 30 , 0 );
setEffMoveKey( spep_1 + 102, shuchusen2, 0, 30 , 0 );

setEffScaleKey( spep_1 + 88, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 102, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 88, shuchusen2, 0 );
setEffRotateKey( spep_1 + 102, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 88, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 102, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_1 + 8 -a,  10005, 28, 0x100, -1, 0, -80, 200 );  --ガッ
setEffMoveKey( spep_1 + 8 -a, ctga, -80, 200 , 0 );
setEffMoveKey( spep_1 + 36 -a, ctga, -80, 200 , 0 );

setEffScaleKey( spep_1 + 8 -a, ctga, 0.50, 0.50 );
setEffScaleKey( spep_1 + 12 -a, ctga, 1.08, 1.08 );
setEffScaleKey( spep_1 + 26 -a, ctga, 1.5, 1.5 );
setEffScaleKey( spep_1 + 28 -a, ctga, 1.58, 1.58 );
setEffScaleKey( spep_1 + 30 -a, ctga, 1.92, 1.92 );
setEffScaleKey( spep_1 + 32 -a, ctga, 2.58, 2.58 );
setEffScaleKey( spep_1 + 34 -a, ctga, 2.91, 2.91 );
setEffScaleKey( spep_1 + 36 -a, ctga, 3.3, 3.3 );

setEffRotateKey( spep_1 + 8 -a, ctga, -15 );
setEffRotateKey( spep_1 + 36 -a, ctga, -15 );

setEffAlphaKey( spep_1 + 8 -a, ctga, 255 );
setEffAlphaKey( spep_1 + 26 -a, ctga, 255 );
setEffAlphaKey( spep_1 + 28 -a, ctga, 204 );
setEffAlphaKey( spep_1 + 30 -a, ctga, 153 );
setEffAlphaKey( spep_1 + 32 -a, ctga, 102 );
setEffAlphaKey( spep_1 + 34 -a, ctga, 51 );
setEffAlphaKey( spep_1 + 36 -a, ctga, 0 );

ctbaki = entryEffectLife( spep_1 + 108 -a,  10020, 24, 0x100, -1, 0, -100, 300 );  --バキ
setEffMoveKey( spep_1 + 108 -a, ctbaki, -100, 300 , 0 );
setEffMoveKey( spep_1 + 132 -a, ctbaki, -100, 300 , 0 );

setEffScaleKey( spep_1 + 108 -a, ctbaki, 0.50, 0.50 );
setEffScaleKey( spep_1 + 112 -a, ctbaki, 1.08, 1.08 );
setEffScaleKey( spep_1 + 126 -a, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_1 + 124 -a, ctbaki, 1.68, 1.68 );
setEffScaleKey( spep_1 + 126 -a, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_1 + 128 -a, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 + 130 -a, ctbaki, 3.91, 3.91 );
setEffScaleKey( spep_1 + 132 -a, ctbaki, 4.6, 4.6 );

setEffRotateKey( spep_1 + 108 -a, ctbaki, 0 );
setEffRotateKey( spep_1 + 132 -a, ctbaki, 0 );

setEffAlphaKey( spep_1 + 108 -a, ctbaki, 255 );
setEffAlphaKey( spep_1 + 120 -a, ctbaki, 255 );
setEffAlphaKey( spep_1 + 122 -a, ctbaki, 204 );
setEffAlphaKey( spep_1 + 124 -a, ctbaki, 153 );
setEffAlphaKey( spep_1 + 126 -a, ctbaki, 102 );
setEffAlphaKey( spep_1 + 128 -a, ctbaki, 51 );
setEffAlphaKey( spep_1 + 132 -a, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 138, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 + 8 -a, 1, 108 );
changeAnime( spep_1 + 50 -a, 1, 106 );
changeAnime( spep_1 + 108 -a, 1, 107 );

setMoveKey( spep_1 + 0, 1, 0, -0.1 , 0 );
setMoveKey( spep_1 + 7 -a, 1, 0, -0.1 , 0 );
setMoveKey( spep_1 + 8 -a, 1, 52.1, 27.9 , 0 );
setMoveKey( spep_1 + 10 -a, 1, 64.1, 35.2 , 0 );
setMoveKey( spep_1 + 12 -a, 1, 76, 42.5 , 0 );
setMoveKey( spep_1 + 14 -a, 1, 87.9, 49.8 , 0 );
setMoveKey( spep_1 + 16 -a, 1, 99.8, 57.1 , 0 );
setMoveKey( spep_1 + 18 -a, 1, 111.6, 64.4 , 0 );
setMoveKey( spep_1 + 20 -a, 1, 123.4, 71.7 , 0 );
setMoveKey( spep_1 + 22 -a, 1, 135.1, 78.9 , 0 );
setMoveKey( spep_1 + 24 -a, 1, 146.8, 86 , 0 );
setMoveKey( spep_1 + 26 -a, 1, 158.4, 93.2 , 0 );
setMoveKey( spep_1 + 28 -a, 1, 170, 100.3 , 0 );
setMoveKey( spep_1 + 30 -a, 1, 181.6, 107.4 , 0 );
setMoveKey( spep_1 + 32 -a, 1, 193, 114.5 , 0 );
setMoveKey( spep_1 + 34 -a, 1, 204.6, 121.5 , 0 );
setMoveKey( spep_1 + 36 -a, 1, 272.8, 163.4 , 0 );
setMoveKey( spep_1 + 38 -a, 1, 344, 207 , 0 );
setMoveKey( spep_1 + 40 -a, 1, 417.3, 252 , 0 );
setMoveKey( spep_1 + 42 -a, 1, 431.5, 262.4 , 0 );
setMoveKey( spep_1 + 44 -a, 1, 445.3, 272.5 , 0 );
setMoveKey( spep_1 + 46 -a, 1, 458.4, 282.2 , 0 );
setMoveKey( spep_1 + 49 -a, 1, 469.9, 291.2 , 0 );
setMoveKey( spep_1 + 50 -a, 1, 479.5, 299 , 0 );
setMoveKey( spep_1 + 52 -a, 1, 486.7, 305.4 , 0 );
setMoveKey( spep_1 + 54 -a, 1, 491.3, 310.2 , 0 );
setMoveKey( spep_1 + 56 -a, 1, 492.2, 312.8 , 0 );
setMoveKey( spep_1 + 58 -a, 1, 489, 313.1 , 0 );
setMoveKey( spep_1 + 60 -a, 1, 481.5, 311 , 0 );
setMoveKey( spep_1 + 62 -a, 1, 469.4, 306.2 , 0 );
setMoveKey( spep_1 + 64 -a, 1, 453.1, 294.8 , 0 );
setMoveKey( spep_1 + 66 -a, 1, 429.4, 288.3 , 0 );
setMoveKey( spep_1 + 68 -a, 1, 400.4, 270.5 , 0 );
setMoveKey( spep_1 + 70 -a, 1, 368.2, 248.5 , 0 );
setMoveKey( spep_1 + 72 -a, 1, 331.1, 231.5 , 0 );
setMoveKey( spep_1 + 74 -a, 1, 287.1, 211.6 , 0 );
setMoveKey( spep_1 + 76 -a, 1, 239, 181.1 , 0 );
setMoveKey( spep_1 + 78 -a, 1, 189.8, 147.7 , 0 );
setMoveKey( spep_1 + 80 -a, 1, 138.5, 122.9 , 0 );
setMoveKey( spep_1 + 82 -a, 1, 84.9, 96.9 , 0 );
setMoveKey( spep_1 + 84 -a, 1, 33.6, 64.2 , 0 );
setMoveKey( spep_1 + 86 -a, 1, -8.4, 33.8 , 0 );
setMoveKey( spep_1 + 88 -a, 1, -40.7, 21 , 0 );
setMoveKey( spep_1 + 90 -a, 1, -48.4, 21.4 , 0 );
setMoveKey( spep_1 + 92 -a, 1, -35.4, 24 , 0 );
setMoveKey( spep_1 + 94 -a, 1, -29, 24.5 , 0 );
setMoveKey( spep_1 + 96 -a, 1, -26.1, 31.1 , 0 );
setMoveKey( spep_1 + 98 -a, 1, -23.8, 34.2 , 0 );
setMoveKey( spep_1 + 100 -a, 1, -25.6, 31.4 , 0 );
setMoveKey( spep_1 + 102 -a, 1, -24.2, 29.6 , 0 );
setMoveKey( spep_1 + 104 -a, 1, -24.1, 31.7 , 0 );
setMoveKey( spep_1 + 107 -a, 1, -24.1, 31.8 , 0 );
setMoveKey( spep_1 + 108 -a, 1, -14.4, 21.7 , 0 );
setMoveKey( spep_1 + 110 -a, 1, -45.7, -20.7 , 0 );
setMoveKey( spep_1 + 112 -a, 1, -77, -65 , 0 );
setMoveKey( spep_1 + 114 -a, 1, -107.6, -111 , 0 );
setMoveKey( spep_1 + 116 -a, 1, -137.7, -158.7 , 0 );
setMoveKey( spep_1 + 118 -a, 1, -166.6, -207.7 , 0 );
setMoveKey( spep_1 + 120 -a, 1, -194.3, -257.8 , 0 );
setMoveKey( spep_1 + 122 -a, 1, -220.5, -309 , 0 );
setMoveKey( spep_1 + 124 -a, 1, -245.2, -360.7 , 0 );
setMoveKey( spep_1 + 126 -a, 1, -268.5, -412.8 , 0 );
setMoveKey( spep_1 + 128 -a, 1, -290, -465 , 0 );
setMoveKey( spep_1 + 130 -a, 1, -310, -517.1 , 0 );
setMoveKey( spep_1 + 132 -a, 1, -328.5, -568.8 , 0 );
setMoveKey( spep_1 + 134 -a, 1, -345.5, -620.1 , 0 );
setMoveKey( spep_1 + 136 -a, 1, -361.4, -670.5 , 0 );
setMoveKey( spep_1 + 138, 1, -376.1, -720 , 0 );

setScaleKey( spep_1 + 0, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 7 -a, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 8 -a, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 10 -a, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 12 -a, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 14 -a, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 16 -a, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 18 -a, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 20 -a, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 22 -a, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 24 -a, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 26 -a, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 28 -a, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 30 -a, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 32 -a, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 34 -a, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 36 -a, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 38 -a, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 40 -a, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 42 -a, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 44 -a, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 46 -a, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 49 -a, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 50 -a, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 107 -a, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 108 -a, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 110 -a, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 112 -a, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 114 -a, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 116 -a, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 118 -a, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 120 -a, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 122 -a, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 124 -a, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 126 -a, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 128 -a, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 130 -a, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 132 -a, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 134 -a, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 136 -a, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 138, 1, 2.12, 2.12 );

setRotateKey( spep_1 + 0, 1, -0.2 );
setRotateKey( spep_1 + 7 -a, 1, -0.2 );
setRotateKey( spep_1 + 8 -a, 1, -24.5 );
setRotateKey( spep_1 + 10 -a, 1, -23.3 );
setRotateKey( spep_1 + 12 -a, 1, -22.1 );
setRotateKey( spep_1 + 14 -a, 1, -21 );
setRotateKey( spep_1 + 16 -a, 1, -19.8 );
setRotateKey( spep_1 + 18 -a, 1, -18.6 );
setRotateKey( spep_1 + 20 -a, 1, -17.4 );
setRotateKey( spep_1 + 22 -a, 1, -16.3 );
setRotateKey( spep_1 + 24 -a, 1, -15.1 );
setRotateKey( spep_1 + 26 -a, 1, -13.9 );
setRotateKey( spep_1 + 28 -a, 1, -12.7 );
setRotateKey( spep_1 + 30 -a, 1, -11.6 );
setRotateKey( spep_1 + 32 -a, 1, -10.4 );
setRotateKey( spep_1 + 34 -a, 1, -9.2 );
setRotateKey( spep_1 + 36 -a, 1, -8 );
setRotateKey( spep_1 + 38 -a, 1, -6.8 );
setRotateKey( spep_1 + 40 -a, 1, -5.6 );
setRotateKey( spep_1 + 42 -a, 1, -4.4 );
setRotateKey( spep_1 + 44 -a, 1, -3.2 );
setRotateKey( spep_1 + 46 -a, 1, -2 );
setRotateKey( spep_1 + 49 -a, 1, -0.8 );
setRotateKey( spep_1 + 50 -a, 1, -31.3 );
setRotateKey( spep_1 + 52 -a, 1, -28.2 );
setRotateKey( spep_1 + 54 -a, 1, -25.1 );
setRotateKey( spep_1 + 56 -a, 1, -22.1 );
setRotateKey( spep_1 + 58 -a, 1, -19.1 );
setRotateKey( spep_1 + 60 -a, 1, -16 );
setRotateKey( spep_1 + 62 -a, 1, -12.9 );
setRotateKey( spep_1 + 70 -a, 1, -12.9 );
setRotateKey( spep_1 + 72 -a, 1, -12.8 );
setRotateKey( spep_1 + 90 -a, 1, -12.8 );
setRotateKey( spep_1 + 92 -a, 1, -12.7 );
setRotateKey( spep_1 + 100 -a, 1, -12.7 );
setRotateKey( spep_1 + 102 -a, 1, -12.6 );
setRotateKey( spep_1 + 107 -a, 1, -12.6 );
setRotateKey( spep_1 + 108 -a, 1, -154.8 -55 );
setRotateKey( spep_1 + 110 -a, 1, -162.7 -55 );
setRotateKey( spep_1 + 112 -a, 1, -170.5 -55 );
setRotateKey( spep_1 + 114 -a, 1, -178 -55 );
setRotateKey( spep_1 + 116 -a, 1, -185.5 -55 );
setRotateKey( spep_1 + 118 -a, 1, -192.8 -55 );
setRotateKey( spep_1 + 120 -a, 1, -199.9 -55 );
setRotateKey( spep_1 + 122 -a, 1, -206.9 -55 );
setRotateKey( spep_1 + 124 -a, 1, -213.7 -55 );
setRotateKey( spep_1 + 126 -a, 1, -220.4 -55 );
setRotateKey( spep_1 + 128 -a, 1, -226.9 -55 );
setRotateKey( spep_1 + 130 -a, 1, -233.2 -55 );
setRotateKey( spep_1 + 132 -a, 1, -239.4 -55 );
setRotateKey( spep_1 + 134 -a, 1, -245.5 -55 );
setRotateKey( spep_1 + 136 -a, 1, -251.5 -55 );
setRotateKey( spep_1 + 138, 1, -257.2 -55 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 138, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 128, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 8 -a, 1009 );  --ガッ
playSe( spep_1 + 108 -a, 1011 );  --バキ

-- ** 次の準備 ** --
spep_2 = spep_1 + 138;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 溜め(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_05, 76, 0x100, -1, 0, 0, 0 );  --溜め(ef_005)
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 76, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 75, tame, 255 );
setEffAlphaKey( spep_3 + 76, tame, 0 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 8,  906, 68, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 8, shuchusen4, 28, 25 );

setEffMoveKey( spep_3 + 8, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 8, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_3 + 76, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_3 + 8, shuchusen4, 0 );
setEffRotateKey( spep_3 + 76, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 8, shuchusen4, 0 );
setEffAlphaKey( spep_3 + 22, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 76, shuchusen4, 255 );

-- ** 音 ** --
playSe( spep_3 + 2, 1021 );  --溜め

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;

------------------------------------------------------
-- 放つ(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
hanatsu_b = entryEffectLife( spep_4 + 0, SP_07, 100, 0x80, -1, 0, 0, 0 );  --放つ　奥(ef_007)
setEffMoveKey( spep_4 + 0, hanatsu_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, hanatsu_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hanatsu_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hanatsu_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hanatsu_b, 0 );
setEffRotateKey( spep_4 + 100, hanatsu_b, 0 );
setEffAlphaKey( spep_4 + 0, hanatsu_b, 255 );
setEffAlphaKey( spep_4 + 99, hanatsu_b, 255 );
setEffAlphaKey( spep_4 + 100, hanatsu_b, 0 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_4 + 0,  921, 100, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_4 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 1.7, 1.08 );
setEffScaleKey( spep_4 + 100, ryusen3, 1.7, 1.08 );

setEffRotateKey( spep_4 + 0, ryusen3, -60 );
setEffRotateKey( spep_4 + 100, ryusen3, -60 );

setEffAlphaKey( spep_4 + 0, ryusen3, 0 );
setEffAlphaKey( spep_4 + 4, ryusen3, 0 );
setEffAlphaKey( spep_4 + 14, ryusen3, 255 );
setEffAlphaKey( spep_4 + 99, ryusen3, 255 );
setEffAlphaKey( spep_4 + 100, ryusen3, 0 );

-- ** エフェクト等 ** --
hanatsu_f = entryEffectLife( spep_4 + 0, SP_06, 100, 0x80, -1, 0, 0, 0 );  --放つ　手前(ef_006)
setEffMoveKey( spep_4 + 0, hanatsu_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, hanatsu_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hanatsu_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hanatsu_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hanatsu_f, 0 );
setEffRotateKey( spep_4 + 100, hanatsu_f, 0 );
setEffAlphaKey( spep_4 + 0, hanatsu_f, 255 );
setEffAlphaKey( spep_4 + 99, hanatsu_f, 255 );
setEffAlphaKey( spep_4 + 100, hanatsu_f, 0 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 + 0,  906, 10, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen5, 10, 25 );

setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 10, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_4 + 10, shuchusen5, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 10, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 10, shuchusen5, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 74, 1, 1 );
setDisp( spep_4 + 100, 1, 0 );
changeAnime( spep_4 + 74, 1, 7 );

setMoveKey( spep_4 + 74, 1, -498.9, -632.4 , 0 );
setMoveKey( spep_4 + 76, 1, -405.2, -524.4 , 0 );
setMoveKey( spep_4 + 78, 1, -338.1, -452.2 , 0 );
setMoveKey( spep_4 + 80, 1, -267.8, -370 , 0 );
setMoveKey( spep_4 + 82, 1, -210, -316.1 , 0 );
setMoveKey( spep_4 + 84, 1, -174.4, -272.5 , 0 );
setMoveKey( spep_4 + 86, 1, -142.7, -231 , 0 );
setMoveKey( spep_4 + 88, 1, -121, -207.5 , 0 );
setMoveKey( spep_4 + 90, 1, -117.8, -212.8 , 0 );
setMoveKey( spep_4 + 92, 1, -123.9, -216.2 , 0 );
setMoveKey( spep_4 + 94, 1, -123.2, -209.5 , 0 );
setMoveKey( spep_4 + 96, 1, -117.9, -212 , 0 );
setMoveKey( spep_4 + 98, 1, -122.2, -205.2 , 0 );
setMoveKey( spep_4 + 100,1, -123.8, -211.2 , 0 );

setScaleKey( spep_4 + 74, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 76, 1, 0.92, 0.92 );
setScaleKey( spep_4 + 78, 1, 0.85, 0.85 );
setScaleKey( spep_4 + 80, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 82, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 84, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 86, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 88, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 100, 1, 0.64, 0.64 );

setRotateKey( spep_4 + 74, 1, -11.8 );
setRotateKey( spep_4 + 76, 1, -11 );
setRotateKey( spep_4 + 78, 1, -10.3 );
setRotateKey( spep_4 + 80, 1, -9.6 );
setRotateKey( spep_4 + 82, 1, -9.1 );
setRotateKey( spep_4 + 84, 1, -8.7 );
setRotateKey( spep_4 + 86, 1, -8.4 );
setRotateKey( spep_4 + 88, 1, -8.3 );
setRotateKey( spep_4 + 100, 1, -8.3 );

-- ** 音 ** --
playSe( spep_4 + 8, 1022);  --放つ

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_5 + 0, SP_09, 58, 0x100, -1, 0, 0, 0 );  --ギャン黄色
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 58, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 58, gyan, 255 );

-- ** 書き文字 ** --
ctgyan = entryEffectLife( spep_5 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffShake( spep_5 + 0, ctgyan, 58, 20 );

setEffMoveKey( spep_5 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_5 + 58, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_5 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_5 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_5 + 4, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_5 + 6, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_5 + 8, ctgyan, 3, 3 );
setEffScaleKey( spep_5 + 10, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_5 + 12, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_5 + 14, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_5 + 16, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_5 + 18, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_5 + 20, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_5 + 22, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_5 + 24, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_5 + 26, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_5 + 28, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_5 + 30, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_5 + 32, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_5 + 34, ctgyan, 4.5, 4.5 );
setEffScaleKey( spep_5 + 36, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_5 + 38, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_5 + 40, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_5 + 42, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_5 + 44, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_5 + 46, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_5 + 48, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_5 + 50, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_5 + 52, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_5 + 54, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_5 + 56, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_5 + 58, ctgyan, 5, 5 );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 58, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 58, ctgyan, 255 );

-- ** 音 ** --
playSe( spep_5 + 28, 1023);  --ギャン

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 20, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 58;


------------------------------------------------------
-- 最後の爆発(224F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --爆発(ef_008)
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 224, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_6 + 224, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 224, bakuhatsu, 0 );
setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 224, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 14,  906, 156, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 14, shuchusen6, 170, 25 );

setEffMoveKey( spep_6 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 170, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen6, 1.6, 1.6 );
setEffScaleKey( spep_6 + 170, shuchusen6, 1.6, 1.6 );

setEffRotateKey( spep_6 + 14, shuchusen6, 0 );
setEffRotateKey( spep_6 + 170, shuchusen6, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 28, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 138, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 170, shuchusen6, 0 );

-- ** 音 ** --
playSe( spep_6 + 2, 1072);  --気弾飛ぶ
playSe( spep_6 + 58, 1024);  --爆発

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 224, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 58 );
--entryFade( spep_6 + 214, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 214 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 手前に迫る(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
semaru = entryEffectLife( spep_0 + 0, SP_01, 146, 0x100, -1, 0, 0, 0 );  --迫る(ef_001)
setEffMoveKey( spep_0 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, semaru, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, semaru, -1.0, 1.0 );
setEffScaleKey( spep_0 + 146, semaru, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, semaru, 0 );
setEffRotateKey( spep_0 + 146, semaru, 0 );
setEffAlphaKey( spep_0 + 0, semaru, 255 );
setEffAlphaKey( spep_0 + 146, semaru, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 146, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 146, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 146, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 146, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 26,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 26, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 26, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 94, ctgogo, -8.5, 515.5 , 0 );

setEffScaleKey( spep_0 + 26, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 86, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 88, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 92, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 94, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 26, ctgogo, 0 );
setEffRotateKey( spep_0 + 94, ctgogo, 0 );

setEffAlphaKey( spep_0 + 26, ctgogo, 255 );
setEffAlphaKey( spep_0 + 94, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 26, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

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
playSe( spep_0 + 120, 8 );  --迫る

-- ** ホワイトフェード ** --
entryFade( spep_0 + 136, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

------------------------------------------------------
-- 殴る(138F)
------------------------------------------------------

-- ** エフェクト等 ** --
naguru_f = entryEffectLife( spep_1 + 0, SP_02, 138, 0x80, -1, 0, 0, 0 );  --殴る　奥(ef_002)
setEffMoveKey( spep_1 + 0, naguru_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 138, naguru_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 138, naguru_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru_f, 0 );
setEffRotateKey( spep_1 + 138, naguru_f, 0 );
setEffAlphaKey( spep_1 + 0, naguru_f, 255 );
setEffAlphaKey( spep_1 + 138, naguru_f, 255 );

naguru_b = entryEffectLife( spep_1 + 0, SP_03r, 138, 0x100, -1, 0, 0, 0 );  --殴る　手前(ef_003)
setEffMoveKey( spep_1 + 0, naguru_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 138, naguru_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 138, naguru_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru_b, 0 );
setEffRotateKey( spep_1 + 138, naguru_b, 0 );
setEffAlphaKey( spep_1 + 0, naguru_b, 255 );
setEffAlphaKey( spep_1 + 138, naguru_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0,  914, 102, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 102, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 3.3, 1.3 );
setEffScaleKey( spep_1 + 102, ryusen1, 3.3, 1.3 );

setEffRotateKey( spep_1 + 0, ryusen1, -35 );
setEffRotateKey( spep_1 + 102, ryusen1, -35 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 86, ryusen1, 255 );
setEffAlphaKey( spep_1 + 102, ryusen1, 0 );

ryusen2 = entryEffectLife( spep_1 + 0,  921, 138, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 138, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen2, 1.7, 1.08 );
setEffScaleKey( spep_1 + 138, ryusen2, 1.7, 1.08 );

setEffRotateKey( spep_1 + 0, ryusen2, -60 );
setEffRotateKey( spep_1 + 138, ryusen2, -60 );

setEffAlphaKey( spep_1 + 0, ryusen2, 0 );
setEffAlphaKey( spep_1 + 101, ryusen2, 0 );
setEffAlphaKey( spep_1 + 102, ryusen2, 200 );
setEffAlphaKey( spep_1 + 138, ryusen2, 200 );

-- ** エフェクト等 ** --
kick = entryEffectLife( spep_1 + 0, SP_04r, 138, 0x80, -1, 0, 0, 0 );  --蹴り(ef_004)
setEffMoveKey( spep_1 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_1 + 138, kick, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_1 + 138, kick, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick, 0 );
setEffRotateKey( spep_1 + 138, kick, 0 );
setEffAlphaKey( spep_1 + 0, kick, 255 );
setEffAlphaKey( spep_1 + 138, kick, 255 );

a = 3;
idou = entryEffectLife( spep_1 + 90 -a, 700, 8, 0x100, -1, 0, 199.8, 110.6 );  --瞬間移動
setEffMoveKey( spep_1 + 90 -a, idou, 199.8, 110.6 , 0 );
setEffMoveKey( spep_1 + 92 -a, idou, 196, 117.2 , 0 );
setEffMoveKey( spep_1 + 94 -a, idou, 192.1, 123.8 , 0 );
setEffMoveKey( spep_1 + 96 -a, idou, 197.9, 113.9 , 0 );
setEffMoveKey( spep_1 + 98 -a, idou, 203.7, 104 , 0 );

setEffScaleKey( spep_1 + 90 -a, idou, 1.0, 1.0 );
setEffScaleKey( spep_1 + 98 -a, idou, 1.0, 1.0 );

setEffRotateKey( spep_1 + 90 -a, idou, 149.7 );
setEffRotateKey( spep_1 + 98 -a, idou, 149.7 );

setEffAlphaKey( spep_1 + 90 -a, idou, 255 );
setEffAlphaKey( spep_1 + 98 -a, idou, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 88,  906, 14, 0x100, -1, 0, 0, 30 );  --集中線
setEffShake( spep_1 + 88, shuchusen2, 14, 25 );

setEffMoveKey( spep_1 + 88, shuchusen2, 0, 30 , 0 );
setEffMoveKey( spep_1 + 102, shuchusen2, 0, 30 , 0 );

setEffScaleKey( spep_1 + 88, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 102, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 88, shuchusen2, 0 );
setEffRotateKey( spep_1 + 102, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 88, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 102, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_1 + 8 -a,  10005, 28, 0x100, -1, 0, -80, 200 );  --ガッ
setEffMoveKey( spep_1 + 8 -a, ctga, -80, 200 , 0 );
setEffMoveKey( spep_1 + 36 -a, ctga, -80, 200 , 0 );

setEffScaleKey( spep_1 + 8 -a, ctga, 0.50, 0.50 );
setEffScaleKey( spep_1 + 12 -a, ctga, 1.08, 1.08 );
setEffScaleKey( spep_1 + 26 -a, ctga, 1.5, 1.5 );
setEffScaleKey( spep_1 + 28 -a, ctga, 1.58, 1.58 );
setEffScaleKey( spep_1 + 30 -a, ctga, 1.92, 1.92 );
setEffScaleKey( spep_1 + 32 -a, ctga, 2.58, 2.58 );
setEffScaleKey( spep_1 + 34 -a, ctga, 2.91, 2.91 );
setEffScaleKey( spep_1 + 36 -a, ctga, 3.3, 3.3 );

setEffRotateKey( spep_1 + 8 -a, ctga, -15 );
setEffRotateKey( spep_1 + 36 -a, ctga, -15 );

setEffAlphaKey( spep_1 + 8 -a, ctga, 255 );
setEffAlphaKey( spep_1 + 26 -a, ctga, 255 );
setEffAlphaKey( spep_1 + 28 -a, ctga, 204 );
setEffAlphaKey( spep_1 + 30 -a, ctga, 153 );
setEffAlphaKey( spep_1 + 32 -a, ctga, 102 );
setEffAlphaKey( spep_1 + 34 -a, ctga, 51 );
setEffAlphaKey( spep_1 + 36 -a, ctga, 0 );

ctbaki = entryEffectLife( spep_1 + 108 -a,  10020, 24, 0x100, -1, 0, -100, 300 );  --バキ
setEffMoveKey( spep_1 + 108 -a, ctbaki, -100, 300 , 0 );
setEffMoveKey( spep_1 + 132 -a, ctbaki, -100, 300 , 0 );

setEffScaleKey( spep_1 + 108 -a, ctbaki, 0.50, 0.50 );
setEffScaleKey( spep_1 + 112 -a, ctbaki, 1.08, 1.08 );
setEffScaleKey( spep_1 + 126 -a, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_1 + 124 -a, ctbaki, 1.68, 1.68 );
setEffScaleKey( spep_1 + 126 -a, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_1 + 128 -a, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 + 130 -a, ctbaki, 3.91, 3.91 );
setEffScaleKey( spep_1 + 132 -a, ctbaki, 4.6, 4.6 );

setEffRotateKey( spep_1 + 108 -a, ctbaki, 0 );
setEffRotateKey( spep_1 + 132 -a, ctbaki, 0 );

setEffAlphaKey( spep_1 + 108 -a, ctbaki, 255 );
setEffAlphaKey( spep_1 + 120 -a, ctbaki, 255 );
setEffAlphaKey( spep_1 + 122 -a, ctbaki, 204 );
setEffAlphaKey( spep_1 + 124 -a, ctbaki, 153 );
setEffAlphaKey( spep_1 + 126 -a, ctbaki, 102 );
setEffAlphaKey( spep_1 + 128 -a, ctbaki, 51 );
setEffAlphaKey( spep_1 + 132 -a, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 138, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 + 8 -a, 1, 108 );
changeAnime( spep_1 + 50 -a, 1, 106 );
changeAnime( spep_1 + 108 -a, 1, 107 );

setMoveKey( spep_1 + 0, 1, 0, -0.1 , 0 );
setMoveKey( spep_1 + 7 -a, 1, 0, -0.1 , 0 );
setMoveKey( spep_1 + 8 -a, 1, 52.1, 27.9 , 0 );
setMoveKey( spep_1 + 10 -a, 1, 64.1, 35.2 , 0 );
setMoveKey( spep_1 + 12 -a, 1, 76, 42.5 , 0 );
setMoveKey( spep_1 + 14 -a, 1, 87.9, 49.8 , 0 );
setMoveKey( spep_1 + 16 -a, 1, 99.8, 57.1 , 0 );
setMoveKey( spep_1 + 18 -a, 1, 111.6, 64.4 , 0 );
setMoveKey( spep_1 + 20 -a, 1, 123.4, 71.7 , 0 );
setMoveKey( spep_1 + 22 -a, 1, 135.1, 78.9 , 0 );
setMoveKey( spep_1 + 24 -a, 1, 146.8, 86 , 0 );
setMoveKey( spep_1 + 26 -a, 1, 158.4, 93.2 , 0 );
setMoveKey( spep_1 + 28 -a, 1, 170, 100.3 , 0 );
setMoveKey( spep_1 + 30 -a, 1, 181.6, 107.4 , 0 );
setMoveKey( spep_1 + 32 -a, 1, 193, 114.5 , 0 );
setMoveKey( spep_1 + 34 -a, 1, 204.6, 121.5 , 0 );
setMoveKey( spep_1 + 36 -a, 1, 272.8, 163.4 , 0 );
setMoveKey( spep_1 + 38 -a, 1, 344, 207 , 0 );
setMoveKey( spep_1 + 40 -a, 1, 417.3, 252 , 0 );
setMoveKey( spep_1 + 42 -a, 1, 431.5, 262.4 , 0 );
setMoveKey( spep_1 + 44 -a, 1, 445.3, 272.5 , 0 );
setMoveKey( spep_1 + 46 -a, 1, 458.4, 282.2 , 0 );
setMoveKey( spep_1 + 49 -a, 1, 469.9, 291.2 , 0 );
setMoveKey( spep_1 + 50 -a, 1, 479.5, 299 , 0 );
setMoveKey( spep_1 + 52 -a, 1, 486.7, 305.4 , 0 );
setMoveKey( spep_1 + 54 -a, 1, 491.3, 310.2 , 0 );
setMoveKey( spep_1 + 56 -a, 1, 492.2, 312.8 , 0 );
setMoveKey( spep_1 + 58 -a, 1, 489, 313.1 , 0 );
setMoveKey( spep_1 + 60 -a, 1, 481.5, 311 , 0 );
setMoveKey( spep_1 + 62 -a, 1, 469.4, 306.2 , 0 );
setMoveKey( spep_1 + 64 -a, 1, 453.1, 294.8 , 0 );
setMoveKey( spep_1 + 66 -a, 1, 429.4, 288.3 , 0 );
setMoveKey( spep_1 + 68 -a, 1, 400.4, 270.5 , 0 );
setMoveKey( spep_1 + 70 -a, 1, 368.2, 248.5 , 0 );
setMoveKey( spep_1 + 72 -a, 1, 331.1, 231.5 , 0 );
setMoveKey( spep_1 + 74 -a, 1, 287.1, 211.6 , 0 );
setMoveKey( spep_1 + 76 -a, 1, 239, 181.1 , 0 );
setMoveKey( spep_1 + 78 -a, 1, 189.8, 147.7 , 0 );
setMoveKey( spep_1 + 80 -a, 1, 138.5, 122.9 , 0 );
setMoveKey( spep_1 + 82 -a, 1, 84.9, 96.9 , 0 );
setMoveKey( spep_1 + 84 -a, 1, 33.6, 64.2 , 0 );
setMoveKey( spep_1 + 86 -a, 1, -8.4, 33.8 , 0 );
setMoveKey( spep_1 + 88 -a, 1, -40.7, 21 , 0 );
setMoveKey( spep_1 + 90 -a, 1, -48.4, 21.4 , 0 );
setMoveKey( spep_1 + 92 -a, 1, -35.4, 24 , 0 );
setMoveKey( spep_1 + 94 -a, 1, -29, 24.5 , 0 );
setMoveKey( spep_1 + 96 -a, 1, -26.1, 31.1 , 0 );
setMoveKey( spep_1 + 98 -a, 1, -23.8, 34.2 , 0 );
setMoveKey( spep_1 + 100 -a, 1, -25.6, 31.4 , 0 );
setMoveKey( spep_1 + 102 -a, 1, -24.2, 29.6 , 0 );
setMoveKey( spep_1 + 104 -a, 1, -24.1, 31.7 , 0 );
setMoveKey( spep_1 + 107 -a, 1, -24.1, 31.8 , 0 );
setMoveKey( spep_1 + 108 -a, 1, -14.4, 21.7 , 0 );
setMoveKey( spep_1 + 110 -a, 1, -45.7, -20.7 , 0 );
setMoveKey( spep_1 + 112 -a, 1, -77, -65 , 0 );
setMoveKey( spep_1 + 114 -a, 1, -107.6, -111 , 0 );
setMoveKey( spep_1 + 116 -a, 1, -137.7, -158.7 , 0 );
setMoveKey( spep_1 + 118 -a, 1, -166.6, -207.7 , 0 );
setMoveKey( spep_1 + 120 -a, 1, -194.3, -257.8 , 0 );
setMoveKey( spep_1 + 122 -a, 1, -220.5, -309 , 0 );
setMoveKey( spep_1 + 124 -a, 1, -245.2, -360.7 , 0 );
setMoveKey( spep_1 + 126 -a, 1, -268.5, -412.8 , 0 );
setMoveKey( spep_1 + 128 -a, 1, -290, -465 , 0 );
setMoveKey( spep_1 + 130 -a, 1, -310, -517.1 , 0 );
setMoveKey( spep_1 + 132 -a, 1, -328.5, -568.8 , 0 );
setMoveKey( spep_1 + 134 -a, 1, -345.5, -620.1 , 0 );
setMoveKey( spep_1 + 136 -a, 1, -361.4, -670.5 , 0 );
setMoveKey( spep_1 + 138, 1, -376.1, -720 , 0 );

setScaleKey( spep_1 + 0, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 7 -a, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 8 -a, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 10 -a, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 12 -a, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 14 -a, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 16 -a, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 18 -a, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 20 -a, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 22 -a, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 24 -a, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 26 -a, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 28 -a, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 30 -a, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 32 -a, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 34 -a, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 36 -a, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 38 -a, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 40 -a, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 42 -a, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 44 -a, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 46 -a, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 49 -a, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 50 -a, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 107 -a, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 108 -a, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 110 -a, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 112 -a, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 114 -a, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 116 -a, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 118 -a, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 120 -a, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 122 -a, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 124 -a, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 126 -a, 1, 1.54, 1.54 );
setScaleKey( spep_1 + 128 -a, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 130 -a, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 132 -a, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 134 -a, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 136 -a, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 138, 1, 2.12, 2.12 );

setRotateKey( spep_1 + 0, 1, -0.2 );
setRotateKey( spep_1 + 7 -a, 1, -0.2 );
setRotateKey( spep_1 + 8 -a, 1, -24.5 );
setRotateKey( spep_1 + 10 -a, 1, -23.3 );
setRotateKey( spep_1 + 12 -a, 1, -22.1 );
setRotateKey( spep_1 + 14 -a, 1, -21 );
setRotateKey( spep_1 + 16 -a, 1, -19.8 );
setRotateKey( spep_1 + 18 -a, 1, -18.6 );
setRotateKey( spep_1 + 20 -a, 1, -17.4 );
setRotateKey( spep_1 + 22 -a, 1, -16.3 );
setRotateKey( spep_1 + 24 -a, 1, -15.1 );
setRotateKey( spep_1 + 26 -a, 1, -13.9 );
setRotateKey( spep_1 + 28 -a, 1, -12.7 );
setRotateKey( spep_1 + 30 -a, 1, -11.6 );
setRotateKey( spep_1 + 32 -a, 1, -10.4 );
setRotateKey( spep_1 + 34 -a, 1, -9.2 );
setRotateKey( spep_1 + 36 -a, 1, -8 );
setRotateKey( spep_1 + 38 -a, 1, -6.8 );
setRotateKey( spep_1 + 40 -a, 1, -5.6 );
setRotateKey( spep_1 + 42 -a, 1, -4.4 );
setRotateKey( spep_1 + 44 -a, 1, -3.2 );
setRotateKey( spep_1 + 46 -a, 1, -2 );
setRotateKey( spep_1 + 49 -a, 1, -0.8 );
setRotateKey( spep_1 + 50 -a, 1, -31.3 );
setRotateKey( spep_1 + 52 -a, 1, -28.2 );
setRotateKey( spep_1 + 54 -a, 1, -25.1 );
setRotateKey( spep_1 + 56 -a, 1, -22.1 );
setRotateKey( spep_1 + 58 -a, 1, -19.1 );
setRotateKey( spep_1 + 60 -a, 1, -16 );
setRotateKey( spep_1 + 62 -a, 1, -12.9 );
setRotateKey( spep_1 + 70 -a, 1, -12.9 );
setRotateKey( spep_1 + 72 -a, 1, -12.8 );
setRotateKey( spep_1 + 90 -a, 1, -12.8 );
setRotateKey( spep_1 + 92 -a, 1, -12.7 );
setRotateKey( spep_1 + 100 -a, 1, -12.7 );
setRotateKey( spep_1 + 102 -a, 1, -12.6 );
setRotateKey( spep_1 + 107 -a, 1, -12.6 );
setRotateKey( spep_1 + 108 -a, 1, -154.8 -55 );
setRotateKey( spep_1 + 110 -a, 1, -162.7 -55 );
setRotateKey( spep_1 + 112 -a, 1, -170.5 -55 );
setRotateKey( spep_1 + 114 -a, 1, -178 -55 );
setRotateKey( spep_1 + 116 -a, 1, -185.5 -55 );
setRotateKey( spep_1 + 118 -a, 1, -192.8 -55 );
setRotateKey( spep_1 + 120 -a, 1, -199.9 -55 );
setRotateKey( spep_1 + 122 -a, 1, -206.9 -55 );
setRotateKey( spep_1 + 124 -a, 1, -213.7 -55 );
setRotateKey( spep_1 + 126 -a, 1, -220.4 -55 );
setRotateKey( spep_1 + 128 -a, 1, -226.9 -55 );
setRotateKey( spep_1 + 130 -a, 1, -233.2 -55 );
setRotateKey( spep_1 + 132 -a, 1, -239.4 -55 );
setRotateKey( spep_1 + 134 -a, 1, -245.5 -55 );
setRotateKey( spep_1 + 136 -a, 1, -251.5 -55 );
setRotateKey( spep_1 + 138, 1, -257.2 -55 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 138, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 128, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 8 -a, 1009 );  --ガッ
playSe( spep_1 + 108 -a, 1011 );  --バキ

-- ** 次の準備 ** --
spep_2 = spep_1 + 138;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 溜め(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_05r, 76, 0x100, -1, 0, 0, 0 );  --溜め(ef_005)
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 76, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 75, tame, 255 );
setEffAlphaKey( spep_3 + 76, tame, 0 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 8,  906, 68, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 8, shuchusen4, 28, 25 );

setEffMoveKey( spep_3 + 8, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 8, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_3 + 76, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_3 + 8, shuchusen4, 0 );
setEffRotateKey( spep_3 + 76, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 8, shuchusen4, 0 );
setEffAlphaKey( spep_3 + 22, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 76, shuchusen4, 255 );

-- ** 音 ** --
playSe( spep_3 + 2, 1021 );  --溜め

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;

------------------------------------------------------
-- 放つ(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
hanatsu_b = entryEffectLife( spep_4 + 0, SP_07, 100, 0x80, -1, 0, 0, 0 );  --放つ　奥(ef_007)
setEffMoveKey( spep_4 + 0, hanatsu_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, hanatsu_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hanatsu_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hanatsu_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hanatsu_b, 0 );
setEffRotateKey( spep_4 + 100, hanatsu_b, 0 );
setEffAlphaKey( spep_4 + 0, hanatsu_b, 255 );
setEffAlphaKey( spep_4 + 99, hanatsu_b, 255 );
setEffAlphaKey( spep_4 + 100, hanatsu_b, 0 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_4 + 0,  921, 100, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_4 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 1.7, 1.08 );
setEffScaleKey( spep_4 + 100, ryusen3, 1.7, 1.08 );

setEffRotateKey( spep_4 + 0, ryusen3, -60 );
setEffRotateKey( spep_4 + 100, ryusen3, -60 );

setEffAlphaKey( spep_4 + 0, ryusen3, 0 );
setEffAlphaKey( spep_4 + 4, ryusen3, 0 );
setEffAlphaKey( spep_4 + 14, ryusen3, 255 );
setEffAlphaKey( spep_4 + 99, ryusen3, 255 );
setEffAlphaKey( spep_4 + 100, ryusen3, 0 );

-- ** エフェクト等 ** --
hanatsu_f = entryEffectLife( spep_4 + 0, SP_06r, 100, 0x80, -1, 0, 0, 0 );  --放つ　手前(ef_006)
setEffMoveKey( spep_4 + 0, hanatsu_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, hanatsu_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hanatsu_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hanatsu_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hanatsu_f, 0 );
setEffRotateKey( spep_4 + 100, hanatsu_f, 0 );
setEffAlphaKey( spep_4 + 0, hanatsu_f, 255 );
setEffAlphaKey( spep_4 + 99, hanatsu_f, 255 );
setEffAlphaKey( spep_4 + 100, hanatsu_f, 0 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 + 0,  906, 10, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen5, 10, 25 );

setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 10, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_4 + 10, shuchusen5, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 10, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 10, shuchusen5, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 74, 1, 1 );
setDisp( spep_4 + 100, 1, 0 );
changeAnime( spep_4 + 74, 1, 7 );

setMoveKey( spep_4 + 74, 1, -498.9, -632.4 , 0 );
setMoveKey( spep_4 + 76, 1, -405.2, -524.4 , 0 );
setMoveKey( spep_4 + 78, 1, -338.1, -452.2 , 0 );
setMoveKey( spep_4 + 80, 1, -267.8, -370 , 0 );
setMoveKey( spep_4 + 82, 1, -210, -316.1 , 0 );
setMoveKey( spep_4 + 84, 1, -174.4, -272.5 , 0 );
setMoveKey( spep_4 + 86, 1, -142.7, -231 , 0 );
setMoveKey( spep_4 + 88, 1, -121, -207.5 , 0 );
setMoveKey( spep_4 + 90, 1, -117.8, -212.8 , 0 );
setMoveKey( spep_4 + 92, 1, -123.9, -216.2 , 0 );
setMoveKey( spep_4 + 94, 1, -123.2, -209.5 , 0 );
setMoveKey( spep_4 + 96, 1, -117.9, -212 , 0 );
setMoveKey( spep_4 + 98, 1, -122.2, -205.2 , 0 );
setMoveKey( spep_4 + 100,1, -123.8, -211.2 , 0 );

setScaleKey( spep_4 + 74, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 76, 1, 0.92, 0.92 );
setScaleKey( spep_4 + 78, 1, 0.85, 0.85 );
setScaleKey( spep_4 + 80, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 82, 1, 0.73, 0.73 );
setScaleKey( spep_4 + 84, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 86, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 88, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 100, 1, 0.64, 0.64 );

setRotateKey( spep_4 + 74, 1, -11.8 );
setRotateKey( spep_4 + 76, 1, -11 );
setRotateKey( spep_4 + 78, 1, -10.3 );
setRotateKey( spep_4 + 80, 1, -9.6 );
setRotateKey( spep_4 + 82, 1, -9.1 );
setRotateKey( spep_4 + 84, 1, -8.7 );
setRotateKey( spep_4 + 86, 1, -8.4 );
setRotateKey( spep_4 + 88, 1, -8.3 );
setRotateKey( spep_4 + 100, 1, -8.3 );

-- ** 音 ** --
playSe( spep_4 + 8, 1022);  --放つ

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_5 + 0, SP_09, 58, 0x100, -1, 0, 0, 0 );  --ギャン黄色
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 58, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 58, gyan, 255 );

-- ** 書き文字 ** --
ctgyan = entryEffectLife( spep_5 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffShake( spep_5 + 0, ctgyan, 58, 20 );

setEffMoveKey( spep_5 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_5 + 58, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_5 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_5 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_5 + 4, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_5 + 6, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_5 + 8, ctgyan, 3, 3 );
setEffScaleKey( spep_5 + 10, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_5 + 12, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_5 + 14, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_5 + 16, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_5 + 18, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_5 + 20, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_5 + 22, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_5 + 24, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_5 + 26, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_5 + 28, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_5 + 30, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_5 + 32, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_5 + 34, ctgyan, 4.5, 4.5 );
setEffScaleKey( spep_5 + 36, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_5 + 38, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_5 + 40, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_5 + 42, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_5 + 44, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_5 + 46, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_5 + 48, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_5 + 50, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_5 + 52, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_5 + 54, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_5 + 56, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_5 + 58, ctgyan, 5, 5 );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 58, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 58, ctgyan, 255 );

-- ** 音 ** --
playSe( spep_5 + 28, 1023);  --ギャン

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 20, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 58;


------------------------------------------------------
-- 最後の爆発(224F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --爆発(ef_008)
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 224, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_6 + 224, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 224, bakuhatsu, 0 );
setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 224, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 14,  906, 156, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 14, shuchusen6, 170, 25 );

setEffMoveKey( spep_6 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 170, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen6, 1.6, 1.6 );
setEffScaleKey( spep_6 + 170, shuchusen6, 1.6, 1.6 );

setEffRotateKey( spep_6 + 14, shuchusen6, 0 );
setEffRotateKey( spep_6 + 170, shuchusen6, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 28, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 138, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 170, shuchusen6, 0 );

-- ** 音 ** --
playSe( spep_6 + 2, 1072);  --気弾飛ぶ
playSe( spep_6 + 58, 1024);  --爆発

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 224, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 58 );
--entryFade( spep_6 + 214, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 214 );

end



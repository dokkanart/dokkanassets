--トランクス(幼年期)(グレートサイヤマン)_ビクトリーキャノン

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
SP_01 = 154207; --突進
SP_02 = 154209; --格闘
SP_03 = 154211; --背景
SP_04 = 154212; --ビクトリーキャノン発動
SP_05 = 154214; --背景
SP_06 = 154215; --向かっていくビクトリーキャノン
SP_07 = 154216; --背景
SP_08 = 154217; --爆破&ヘルメットを拾うトランクス

--敵側
SP_01x = 154208; --突進
SP_02x = 154210; --格闘
SP_04x = 154213; --ビクトリーキャノン発動
SP_08x = 154218; --爆破&ヘルメットを拾うトランクス

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
-- 突進(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 96, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 96, tosshin, 255 );

-- ** 集中線 ** --
shuchusenz = entryEffectLife( spep_0 , 906, 96, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 , shuchusenz, 96, 20 );

setEffMoveKey( spep_0 , shuchusenz, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, shuchusenz, 0, 0 , 0 );

setEffScaleKey( spep_0 , shuchusenz, 1.2, 1.2 );
setEffScaleKey( spep_0 + 96, shuchusenz, 1.2, 1.2 );

setEffRotateKey( spep_0 , shuchusenz, 0 );
setEffRotateKey( spep_0 + 96, shuchusenz, 0 );

setEffAlphaKey( spep_0 , shuchusenz, 255 );
setEffAlphaKey( spep_0 + 96, shuchusenz, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 94, 2,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 0, 9 );  --突進

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
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

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

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

-- ** 音 ** --
playSe( spep_x + 16, 1018 );  --ごごご

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

------------------------------------------------------
-- 格闘(226F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --格闘(ef_002)
setEffMoveKey( spep_1 + 0, attack, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, attack, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_1 + 226, attack, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack, 0 );
setEffRotateKey( spep_1 + 226, attack, 0 );
setEffAlphaKey( spep_1 + 0, attack, 255 );
setEffAlphaKey( spep_1 + 226, attack, 255 );

haikei1 = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --背景(ef_003)
setEffMoveKey( spep_1 + 0, haikei1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, haikei1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, haikei1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 226, haikei1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, haikei1, 0 );
setEffRotateKey( spep_1 + 226, haikei1, 0 );
setEffAlphaKey( spep_1 + 0, haikei1, 255 );
setEffAlphaKey( spep_1 + 226, haikei1, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0, 914, 22 -3, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 22 -3, ryusen1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ryusen1, 2.0, 1.0 );
setEffScaleKey( spep_1 + 22 -3, ryusen1, 2.0, 1.0 );
setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 22 -3, ryusen1, 0 );
setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 21 -3, ryusen1, 255 );
setEffAlphaKey( spep_1 + 22 -3, ryusen1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 226, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 24, 1, 108 );
changeAnime( spep_1 -3 + 28, 1, 106 );
changeAnime( spep_1 -3 + 50, 1, 108 );
changeAnime( spep_1 -3 + 62, 1, 106 );
changeAnime( spep_1 -3 + 72, 1, 104 );
changeAnime( spep_1 -3 + 120, 1, 110 );
changeAnime( spep_1 -3 + 136, 1, 117 );
changeAnime( spep_1 -3 + 188, 1, 104 );
changeAnime( spep_1 -3 + 200, 1, 108 );

setMoveKey( spep_1 + 0, 1, 324.5, 66.5 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 320.7, 66.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 314.5, 66.5 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 305.6, 66.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 293.6, 66.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 278, 66.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 258, 66.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 232.7, 66.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 200.9, 66.6 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 176.3, 66.5 , 0 );
setMoveKey( spep_1 -3 + 23, 1, 123.5, 66.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 135.2, 130.4 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 164.1, 128.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 108.6, 119.8 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 128.3, 125.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 132.8, 125.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 128.2, 119.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 132.8, 119.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 135.6, 119.7 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 137, 119.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 137.6, 119.7 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 44.3, 119.7 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 44.3, 119.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 232.6, 92.4 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 319.9, 94.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 327.5, 94.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 291.9, 92.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 286.7, 92.4 , 0 );
setMoveKey( spep_1 -3 + 61, 1, 250.2, 92.4 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 82.5, 108.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 121.5, 108.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 183.8, 110.7 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 185.9, 110.7 , 0 );
setMoveKey( spep_1 -3 + 71, 1, 137.9, 108.5 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 153.6, 61.4 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 153.6, 61.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 198.6, 61.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 272.6, 62.6 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 291.3, 62.6 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 256.5, 61.4 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 236.8, 61.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 214, 61.4 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 214, 61.4 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 213.9, 61.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 213.9, 61.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 213.9, 61.5 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 213.8, 61.5 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 213.8, 61.6 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 213.7, 61.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 213.6, 61.8 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 213.5, 61.8 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 213.4, 61.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 213.4, 62 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 213.3, 62 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 213.3, 62 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 213.3, 62.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 213.3, 62.1 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 229.5, 65.1 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 199.7, 80.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 168.8, 64.1 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 189.5, 61.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 164.7, 56.1 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 164.7, 56.1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 178.6, 58.8 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 178.6, 58.8 , 0 );
setMoveKey( spep_1 -3 + 135, 1, 164.6, 56.1 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 214, 58.5 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 214, 58 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 214, 57.5 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 214, 57 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 214, 56.5 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 214, 56 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 214, 55.5 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 214, 55 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 214, 56 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 214, 57 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 214, 58 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 214, 59 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 214, 60 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 214, 61 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 214, 62 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 214, 60.9 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 214, 59.7 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 214, 58.5 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 214, 57.3 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 214, 56.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 214, 55 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 231.4, 55.6 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 248, 56.1 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 264.4, 56.7 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 279.1, 57.2 , 0 );
setMoveKey( spep_1 -3 + 187, 1, 286.7, 57.4 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 259.6, 57 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 224.8, 56 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 209.9, 55.7 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 235.2, 60.9 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 232.6, 60.9 , 0 );
setMoveKey( spep_1 -3 + 199, 1, 200.8, 55.4 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 185.9, 39.2 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 200.7, 41.1 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 255.6, 41.1 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 272.8, 39 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 447.1, 39 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 571.7, 39 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 658.4, 39 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 716, 39.1 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 752.7, 39.1 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 775.1, 39.1 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 787.3 +20, 39.1 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 793.2 +50, 39.1 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 795.3 +70, 39.1 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 795.8 +90, 39.1 , 0 );
setMoveKey( spep_1 + 226, 1, 795.9 +100, 39.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 23, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 24, 1, 2, 2 );
setScaleKey( spep_1 -3 + 27, 1, 2, 2 );
setScaleKey( spep_1 -3 + 28, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 30, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 32, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 34, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 50, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 52, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 54, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 56, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 64, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 66, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 68, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 71, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 76, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 78, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 80, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 82, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 94, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 96, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 102, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 104, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 110, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 112, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 116, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 119, 1, 1.94, 1.94 );
setScaleKey( spep_1 -3 + 120, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 122, 1, 2, 2 );
setScaleKey( spep_1 -3 + 124, 1, 2, 2 );
setScaleKey( spep_1 -3 + 126, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 128, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 130, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 132, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 135, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 192, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 194, 1, 2, 2 );
setScaleKey( spep_1 -3 + 196, 1, 2, 2 );
setScaleKey( spep_1 -3 + 199, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 200, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 202, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 204, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 206, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 226, 1, 1.82, 1.82 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 23, 1, 0 );
setRotateKey( spep_1 -3 + 24, 1, -21.3 );
setRotateKey( spep_1 -3 + 27, 1, -21.3 );
setRotateKey( spep_1 -3 + 28, 1, -50 );
setRotateKey( spep_1 -3 + 49, 1, -50 );
setRotateKey( spep_1 -3 + 50, 1, 15 );
setRotateKey( spep_1 -3 + 61, 1, 15 );
setRotateKey( spep_1 -3 + 62, 1, -50 );
setRotateKey( spep_1 -3 + 71, 1, -50 );
setRotateKey( spep_1 -3 + 72, 1, 0 );
setRotateKey( spep_1 -3 + 119, 1, 0 );
setRotateKey( spep_1 -3 + 120, 1, 23.5 );
setRotateKey( spep_1 -3 + 122, 1, 20 );
setRotateKey( spep_1 -3 + 124, 1, 16.3 );
setRotateKey( spep_1 -3 + 126, 1, 15.8 );
setRotateKey( spep_1 -3 + 135, 1, 15.8 );
setRotateKey( spep_1 -3 + 136, 1, 0 );
setRotateKey( spep_1 -3 + 199, 1, 0 );
setRotateKey( spep_1 -3 + 200, 1, 15 );
setRotateKey( spep_1 + 226, 1, 15 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_1 -3 + 40, 914, 10, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 -3 + 40, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 50, ryusen2, 0, 0 , 0 );
setEffScaleKey( spep_1 -3 + 40, ryusen2, 2.0, 1.0 );
setEffScaleKey( spep_1 -3 + 50, ryusen2, 2.0, 1.0 );
setEffRotateKey( spep_1 -3 + 40, ryusen2, 0 );
setEffRotateKey( spep_1 -3 + 50, ryusen2, 0 );
setEffAlphaKey( spep_1 -3 + 40, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 49, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 50, ryusen2, 0 );

ryusen3 = entryEffectLife( spep_1 -3 + 186, 914, 6, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 -3 + 186, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 192, ryusen3, 0, 0 , 0 );
setEffScaleKey( spep_1 -3 + 186, ryusen3, 2.0, 1.0 );
setEffScaleKey( spep_1 -3 + 192, ryusen3, 2.0, 1.0 );
setEffRotateKey( spep_1 -3 + 186, ryusen3, 0 );
setEffRotateKey( spep_1 -3 + 192, ryusen3, 0 );
setEffAlphaKey( spep_1 -3 + 186, ryusen3, 255 );
setEffAlphaKey( spep_1 -3 + 191, ryusen3, 255 );
setEffAlphaKey( spep_1 -3 + 192, ryusen3, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 -3 + 22, 906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 -3 + 22, shuchusen1, 18, 20 );

setEffMoveKey( spep_1 -3 + 22, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 40, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 22, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 40, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_1 -3 + 22, shuchusen1, 0 );
setEffRotateKey( spep_1 -3 + 40, shuchusen1, 0 );

setEffAlphaKey( spep_1 -3 + 22, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 39, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 40, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_1 -3 + 50, 906, 34, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 -3 + 50, shuchusen2, 34, 20 );

setEffMoveKey( spep_1 -3 + 50, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 84, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 50, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 84, shuchusen2, 1.2, 1.2 );

setEffRotateKey( spep_1 -3 + 50, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 84, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 50, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 84, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_1 -3 + 192, 906, 34 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 -3 + 192, shuchusen3, 34, 20 );

setEffMoveKey( spep_1 -3 + 192, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 192, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_1 + 226, shuchusen3, 1.2, 1.2 );

setEffRotateKey( spep_1 -3 + 192, shuchusen3, 0 );
setEffRotateKey( spep_1 + 226, shuchusen3, 0 );

setEffAlphaKey( spep_1 -3 + 192, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 226, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_1 -3 + 22,  10019, 16, 0x100, -1, 0, -15.8, 210.4 );  --ドン
setEffMoveKey( spep_1 -3 + 22, ctdon, -15.8, 210.4 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctdon, 4.4, 270.4 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctdon, 40.7, 327.7 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctdon, 32.5, 337.7 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctdon, 45.7, 332 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctdon, 34.7, 333.4 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctdon, 41.9, 343.3 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctdon, 42.1, 331.1 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctdon, 38.1, 344.3 , 0 );

setEffScaleKey( spep_1 -3 + 22, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 24, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 26, ctdon, 2, 2 );
setEffScaleKey( spep_1 -3 + 38, ctdon, 2, 2 );

setEffRotateKey( spep_1 -3 + 22, ctdon, 0 );
setEffRotateKey( spep_1 -3 + 38, ctdon, 0 );

setEffAlphaKey( spep_1 -3 + 22, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 34, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctdon, 141 );
setEffAlphaKey( spep_1 -3 + 38, ctdon, 26 );

ctba1 = entryEffectLife( spep_1 -3 + 50,  10022, 10, 0x100, -1, 0, -2.4, 240.7 );  --バッ
setEffMoveKey( spep_1 -3 + 50, ctba1, -2.4, 240.7 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctba1, -33.7, 331.2 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctba1, -27.6, 321.4 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctba1, -26.6, 333.1 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctba1, -36.2, 328 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctba1, -21, 328.4 , 0 );

setEffScaleKey( spep_1 -3 + 50, ctba1, 0.51, 0.51 );
setEffScaleKey( spep_1 -3 + 52, ctba1, 1.4, 1.4 );
setEffScaleKey( spep_1 -3 + 60, ctba1, 1.4, 1.4 );

setEffRotateKey( spep_1 -3 + 50, ctba1, -17.2 );
setEffRotateKey( spep_1 -3 + 52, ctba1, -19.2 );
setEffRotateKey( spep_1 -3 + 60, ctba1, -19.2 );

setEffAlphaKey( spep_1 -3 + 50, ctba1, 255 );
setEffAlphaKey( spep_1 -3 + 60, ctba1, 255 );

ctba2 = entryEffectLife( spep_1 -3 + 62,  10022, 10, 0x100, -1, 0, -33.2, -186.8 );  --バッ
setEffMoveKey( spep_1 -3 + 62, ctba2, -33.2, -186.8 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctba2, -34.1, -190.4 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctba2, -37.3, -180.2 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctba2, -40.1, -191.4 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctba2, -31.2, -183.8 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctba2, -34.1, -190.4 , 0 );

setEffScaleKey( spep_1 -3 + 62, ctba2, 0.87, 0.87 );
setEffScaleKey( spep_1 -3 + 64, ctba2, 1.35, 1.42 );
setEffScaleKey( spep_1 -3 + 66, ctba2, 1.34, 1.41 );
setEffScaleKey( spep_1 -3 + 70, ctba2, 1.34, 1.41 );
setEffScaleKey( spep_1 -3 + 72, ctba2, 1.35, 1.42 );

setEffRotateKey( spep_1 -3 + 62, ctba2, 26.4 );
setEffRotateKey( spep_1 -3 + 72, ctba2, 26.4 );

setEffAlphaKey( spep_1 -3 + 62, ctba2, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctba2, 255 );

ctga = entryEffectLife( spep_1 -3 + 74,  10005, 10, 0x100, -1, 0, 16, 232.9 );  --ガッ
setEffMoveKey( spep_1 -3 + 74, ctga, 16, 232.9 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctga, -16.9, 271.1 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctga, -14.1, 269 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctga, -11.3, 266.8 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctga, -8.5, 264.7 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctga, -5.7, 262.6 , 0 );

setEffScaleKey( spep_1 -3 + 74, ctga, 0.5 +0.2, 0.5 +0.2 );
setEffScaleKey( spep_1 -3 + 76, ctga, 0.77 +0.4, 0.77 +0.4 );
setEffScaleKey( spep_1 -3 + 78, ctga, 0.79 +0.4, 0.79 +0.4 );
setEffScaleKey( spep_1 -3 + 80, ctga, 0.81 +0.5, 0.81 +0.5 );
setEffScaleKey( spep_1 -3 + 82, ctga, 0.83 +0.5, 0.83 +0.5 );
setEffScaleKey( spep_1 -3 + 84, ctga, 0.85 +0.5, 0.85 +0.5 );

setEffRotateKey( spep_1 -3 + 74, ctga, 19.7 +12 );
setEffRotateKey( spep_1 -3 + 76, ctga, 4.1 +12 );
setEffRotateKey( spep_1 -3 + 80, ctga, 4.1 +12 );
setEffRotateKey( spep_1 -3 + 82, ctga, 4 +12 );
setEffRotateKey( spep_1 -3 + 84, ctga, 4 +12 );

setEffAlphaKey( spep_1 -3 + 74, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 84, ctga, 255 );

ctbaki = entryEffectLife( spep_1 -3 + 120,  10020, 14, 0x100, -1, 0, -22.9, 286.1 );  --バキッ
setEffMoveKey( spep_1 -3 + 120, ctbaki, -22.9, 286.1 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctbaki, -28.1, 329.1 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctbaki, -20.5, 325.3 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctbaki, -26.9, 329.8 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctbaki, -20.8, 322.5 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctbaki, -30.2, 321.8 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctbaki, -35.6, 323.4 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctbaki, -35.6, 323.4 , 0 );

setEffScaleKey( spep_1 -3 + 120, ctbaki, 0.94, 0.94 );
setEffScaleKey( spep_1 -3 + 122, ctbaki, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 124, ctbaki, 1.25, 1.24 );
setEffScaleKey( spep_1 -3 + 126, ctbaki, 1.29, 1.27 );
setEffScaleKey( spep_1 -3 + 128, ctbaki, 1.34, 1.31 );
setEffScaleKey( spep_1 -3 + 130, ctbaki, 1.38, 1.34 );
setEffScaleKey( spep_1 -3 + 132, ctbaki, 1.43, 1.38 );
setEffScaleKey( spep_1 -3 + 134, ctbaki, 1.43, 1.38 );

setEffRotateKey( spep_1 -3 + 120, ctbaki, 7.2 );
setEffRotateKey( spep_1 -3 + 134, ctbaki, 7.2 );

setEffAlphaKey( spep_1 -3 + 120, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 132, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 134, ctbaki, 23 );

ctdogon = entryEffectLife( spep_1 -3 + 196,  10018, 18, 0x100, -1, 0, -11.9, 237.4 );  --ドゴン
setEffMoveKey( spep_1 -3 + 196, ctdogon, -11.9, 237.4 , 0 );
setEffMoveKey( spep_1 -3 + 198, ctdogon, -10, 248.7 , 0 );
setEffMoveKey( spep_1 -3 + 200, ctdogon, 6.5, 255.8 , 0 );
setEffMoveKey( spep_1 -3 + 202, ctdogon, 0.4, 263.2 , 0 );
setEffMoveKey( spep_1 -3 + 204, ctdogon, 8.9, 255.2 , 0 );
setEffMoveKey( spep_1 -3 + 206, ctdogon, -0.7, 256.3 , 0 );
setEffMoveKey( spep_1 -3 + 208, ctdogon, 5.2, 261.4 , 0 );
setEffMoveKey( spep_1 -3 + 210, ctdogon, 3.7, 251.7 , 0 );
setEffMoveKey( spep_1 -3 + 212, ctdogon, 2.4, 262.7 , 0 );
setEffMoveKey( spep_1 -3 + 214, ctdogon, 5.1, 254.9 , 0 );

setEffScaleKey( spep_1 -3 + 196, ctdogon, 0.9, 0.9 );
setEffScaleKey( spep_1 -3 + 198, ctdogon, 1.49, 1.49 );
setEffScaleKey( spep_1 -3 + 200, ctdogon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 214, ctdogon, 2.08, 2.08 );

setEffRotateKey( spep_1 -3 + 196, ctdogon, -26.5 );
setEffRotateKey( spep_1 -3 + 198, ctdogon, -21.7 );
setEffRotateKey( spep_1 -3 + 200, ctdogon, -17 );
setEffRotateKey( spep_1 -3 + 214, ctdogon, -17 );

setEffAlphaKey( spep_1 -3 + 196, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 210, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 212, ctdogon, 141 );
setEffAlphaKey( spep_1 -3 + 214, ctdogon, 26 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_1 + 216, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_1 + 0, 8 );  --迫る
playSe( spep_1 -3 + 22, 1010 );  --ドン
playSe( spep_1 -3 + 50, 1000 );  --バッ
playSe( spep_1 -3 + 62, 1001 );  --バッ
playSe( spep_1 -3 + 74, 1009 );  --ガッ
playSe( spep_1 -3 + 120, 1010 );  --バキ
playSe( spep_1 + 164, 1072 );  --迫る
setSeVolume( spep_1 + 168, 1072, 150 );
playSe( spep_1 -3 + 194, 1011 );  --ドゴン

-- ** 次の準備 ** --
spep_2 = spep_1 + 226;

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
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- ビクトリーキャノン発動(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ビクトリーキャノン発動(ef_004)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 116, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 116, hassha, 255 );

haikei2 = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --背景(ef_005)
setEffMoveKey( spep_3 + 0, haikei2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, haikei2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, haikei2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, haikei2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, haikei2, 0 );
setEffRotateKey( spep_3 + 116, haikei2, 0 );
setEffAlphaKey( spep_3 + 0, haikei2, 255 );
setEffAlphaKey( spep_3 + 116, haikei2, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0, 906, 68 -3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen4, 68 -3, 20 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 68, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.4, 1.4 );
setEffScaleKey( spep_3 -3 + 68, shuchusen4, 1.4, 1.4 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 -3 + 68, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 -3 + 67, shuchusen4, 255 );
setEffAlphaKey( spep_3 -3 + 68, shuchusen4, 0 );

-- ** 流線 ** --
--[[ryusen4 = entryEffectLife( spep_3 -3 + 68, 914, 48 +3, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_3 -3 + 68, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, ryusen4, 0, 0 , 0 );
setEffScaleKey( spep_3 -3 + 68, ryusen4, 2.0, 1.0 );
setEffScaleKey( spep_3 + 116, ryusen4, 2.0, 1.0 );
setEffRotateKey( spep_3 -3 + 68, ryusen4, 0 );
setEffRotateKey( spep_3 + 116, ryusen4, 0 );
setEffAlphaKey( spep_3 -3 + 68, ryusen4, 255 );
setEffAlphaKey( spep_3 + 116, ryusen4, 255 );]]

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_3 -3 + 78,  10012, 40, 0x100, -1, 0, -118, 191.2 );  --ズオッ
setEffMoveKey( spep_3 -3 + 78, ctzuo, -118, 191.2 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctzuo, -99.4, 234.4 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctzuo, -96.2, 276.3 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctzuo, -107, 280.1 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctzuo, -77.3, 283.8 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctzuo, -88.9, 287.6 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctzuo, -58.4, 291.3 , 0 );
setEffMoveKey( spep_3 -3 + 92, ctzuo, -70.9, 295.1 , 0 );
setEffMoveKey( spep_3 -3 + 94, ctzuo, -39.5, 298.8 , 0 );
setEffMoveKey( spep_3 -3 + 96, ctzuo, -52.8, 302.5 , 0 );
setEffMoveKey( spep_3 -3 + 98, ctzuo, -20.6, 306.3 , 0 );
setEffMoveKey( spep_3 -3 + 100, ctzuo, -34.7, 310 , 0 );
setEffMoveKey( spep_3 -3 + 102, ctzuo, -1.7, 313.8 , 0 );
setEffMoveKey( spep_3 -3 + 104, ctzuo, -16.6, 317.5 , 0 );
setEffMoveKey( spep_3 -3 + 106, ctzuo, 17.2, 321.3 , 0 );
setEffMoveKey( spep_3 -3 + 108, ctzuo, 1.4, 325 , 0 );
setEffMoveKey( spep_3 -3 + 110, ctzuo, 36.1, 328.8 , 0 );
setEffMoveKey( spep_3 -3 + 112, ctzuo, 45.5, 332.5 , 0 );
setEffMoveKey( spep_3 -3 + 114, ctzuo, 30.7, 320.7 , 0 );
setEffMoveKey( spep_3 -3 + 116, ctzuo, 68, 308.8 , 0 );
setEffMoveKey( spep_3 -3 + 118, ctzuo, 79.2, 296.9 , 0 );

a1 = 2;
setEffScaleKey( spep_3 -3 + 78, ctzuo, 0.3 +0.7, 0.3 +0.7 );
setEffScaleKey( spep_3 -3 + 80, ctzuo, 0.5 +1.1, 0.5 +1.1 );
setEffScaleKey( spep_3 -3 + 82, ctzuo, 0.7 +1.6, 0.7 +1.6 );
setEffScaleKey( spep_3 -3 + 84, ctzuo, 0.71 +a1, 0.71 +a1 );
setEffScaleKey( spep_3 -3 + 86, ctzuo, 0.73 +a1, 0.73 +a1 );
setEffScaleKey( spep_3 -3 + 88, ctzuo, 0.74 +a1, 0.74 +a1 );
setEffScaleKey( spep_3 -3 + 90, ctzuo, 0.76 +a1, 0.76 +a1 );
setEffScaleKey( spep_3 -3 + 92, ctzuo, 0.77 +a1, 0.77 +a1 );
setEffScaleKey( spep_3 -3 + 94, ctzuo, 0.79 +a1, 0.79 +a1 );
setEffScaleKey( spep_3 -3 + 96, ctzuo, 0.8 +a1, 0.8 +a1 );
setEffScaleKey( spep_3 -3 + 98, ctzuo, 0.82 +a1, 0.82 +a1 );
setEffScaleKey( spep_3 -3 + 100, ctzuo, 0.83 +a1, 0.83 +a1 );
setEffScaleKey( spep_3 -3 + 102, ctzuo, 0.85 +a1, 0.85 +a1 );
setEffScaleKey( spep_3 -3 + 104, ctzuo, 0.86 +a1, 0.86 +a1 );
setEffScaleKey( spep_3 -3 + 106, ctzuo, 0.88 +a1, 0.88 +a1 );
setEffScaleKey( spep_3 -3 + 108, ctzuo, 0.89 +a1 +0.1, 0.89 +a1 +0.1 );
setEffScaleKey( spep_3 -3 + 110, ctzuo, 0.91 +a1 +0.1, 0.91 +a1 +0.1 );
setEffScaleKey( spep_3 -3 + 112, ctzuo, 0.92 +a1 +0.2, 0.92 +a1 +0.2 );
setEffScaleKey( spep_3 -3 + 118, ctzuo, 0.92 +a1 +0.3, 0.92 +a1 +0.3 );

setEffRotateKey( spep_3 -3 + 78, ctzuo, -45 +30 );
setEffRotateKey( spep_3 -3 + 118, ctzuo, -45 +30 );

setEffAlphaKey( spep_3 -3 + 78, ctzuo, 74 );
setEffAlphaKey( spep_3 -3 + 80, ctzuo, 164 );
setEffAlphaKey( spep_3 -3 + 82, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 112, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 114, ctzuo, 170 );
setEffAlphaKey( spep_3 -3 + 116, ctzuo, 85 );
setEffAlphaKey( spep_3 -3 + 118, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_3 + 106, 6, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
SE1 = playSe( spep_3 + 0 -2, 15 );  --溜める
stopSe( spep_3 + 44, SE1, 20 );
playSe( spep_3 + 46, 1022 );  --発射

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;

------------------------------------------------------
-- 向かっていくビクトリーキャノン(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
mukau = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --向かっていくビクトリーキャノン(ef_006)
setEffMoveKey( spep_4 + 0, mukau, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, mukau, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, mukau, 1.0, 1.0 );
setEffScaleKey( spep_4 + 78, mukau, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, mukau, 0 );
setEffRotateKey( spep_4 + 78, mukau, 0 );
setEffAlphaKey( spep_4 + 0, mukau, 255 );
setEffAlphaKey( spep_4 + 78, mukau, 255 );

haikei3 = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --背景(ef_007)
setEffMoveKey( spep_4 + 0, haikei3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, haikei3, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, haikei3, 1.0, 1.0 );
setEffScaleKey( spep_4 + 78, haikei3, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, haikei3, 0 );
setEffRotateKey( spep_4 + 78, haikei3, 0 );
setEffAlphaKey( spep_4 + 0, haikei3, 255 );
setEffAlphaKey( spep_4 + 78, haikei3, 255 );

-- ** 流線 ** --
--[[ryusen5 = entryEffectLife( spep_4 + 0, 921, 78, 0x80, -1, 0, 0, 0 );  --奥行き流線
setEffMoveKey( spep_4 + 0, ryusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, ryusen5, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ryusen5, 1.0, 1.0 );
setEffScaleKey( spep_4 + 78, ryusen5, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ryusen5, 0 );
setEffRotateKey( spep_4 + 78, ryusen5, 0 );
setEffAlphaKey( spep_4 + 0, ryusen5, 255 );
setEffAlphaKey( spep_4 + 78, ryusen5, 255 );]]

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_4 + 0,  10014, 78, 0x100, -1, 0, 57.8, 363.3 );  --ズドド
setEffShake( spep_4 + 0, ctzudo, 78, 20 );

setEffMoveKey( spep_4 + 0, ctzudo, 57.8, 343.3 , 0 );
setEffMoveKey( spep_4 + 78, ctzudo, 57.8, 343.3 , 0 );

setEffScaleKey( spep_4 + 0, ctzudo, 2.87, 3.71 );
setEffScaleKey( spep_4 + 78, ctzudo, 2.87, 3.71 );

setEffRotateKey( spep_4 + 0, ctzudo, 78.1 );
setEffRotateKey( spep_4 + 78, ctzudo, 78.1 );

setEffAlphaKey( spep_4 + 0, ctzudo, 255 );
setEffAlphaKey( spep_4 + 78, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 78, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 -3 + 44, 1, 108 );
--changeAnime( spep_4 -3 + 70, 1, 104 );

setMoveKey( spep_4 + 0, 1, 238.3, -30 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 236.9, -30.6 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 235.5, -31.4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 234, -32.2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 232.3, -33 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 230.5, -33.9 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 228.7, -34.8 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 226.7, -35.8 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 224.6, -36.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 222.4, -38 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 220.1, -39.2 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 217.6, -40.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 215.1, -41.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 212.4, -43.1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 209.7, -44.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 206.8, -45.9 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 203.8, -47.4 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 200.7, -49 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 197.5, -50.6 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 194.2, -52.3 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 190.8, -54 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 185.6, -18.2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 218.6, -17.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 185.1, -46.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 187.5, -46.4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 194.9, -45.5 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 207.1, -44.1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 224.3, -42.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 246.4, -39.6 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 273.3, -36.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 305.2, -32.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 342, -28.7 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 383.7, -23.9 , 0 );
setMoveKey( spep_4 -3 + 69, 1, 430.4, -18.6 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 239.5, -29.4 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 238.3, -30 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 236.9, -30.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 235.5, -31.4 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 234, -32.2 , 0 );
setMoveKey( spep_4 + 78, 1, 234, -32.2 , 0 );

setScaleKey( spep_4 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 4, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 6, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 8, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_4 -3 + 12, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 14, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 16, 1, 1.55, 1.55 );
setScaleKey( spep_4 -3 + 18, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 22, 1, 1.75, 1.75 );
setScaleKey( spep_4 -3 + 24, 1, 1.82, 1.82 );
setScaleKey( spep_4 -3 + 26, 1, 1.9, 1.9 );
setScaleKey( spep_4 -3 + 28, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 30, 1, 2.07, 2.07 );
setScaleKey( spep_4 -3 + 32, 1, 2.15, 2.15 );
setScaleKey( spep_4 -3 + 34, 1, 2.24, 2.24 );
setScaleKey( spep_4 -3 + 36, 1, 2.34, 2.34 );
setScaleKey( spep_4 -3 + 38, 1, 2.43, 2.43 );
setScaleKey( spep_4 -3 + 40, 1, 2.54, 2.54 );
setScaleKey( spep_4 -3 + 43, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 44, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 46, 1, 2.37, 2.37 );
setScaleKey( spep_4 -3 + 48, 1, 2.37, 2.37 );
setScaleKey( spep_4 -3 + 50, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 52, 1, 2.3, 2.3 );
setScaleKey( spep_4 -3 + 54, 1, 2.2, 2.2 );
setScaleKey( spep_4 -3 + 56, 1, 2.07, 2.07 );
setScaleKey( spep_4 -3 + 58, 1, 1.91, 1.91 );
setScaleKey( spep_4 -3 + 60, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 62, 1, 1.46, 1.46 );
setScaleKey( spep_4 -3 + 64, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 66, 1, 0.86, 0.86 );
setScaleKey( spep_4 -3 + 69, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 70, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 72, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 74, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 76, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 78, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 78, 1, 1.33, 1.33 );

setRotateKey( spep_4 + 0, 1, -9 );
setRotateKey( spep_4 -3 + 43, 1, -9 );
setRotateKey( spep_4 -3 + 44, 1, 9 );
setRotateKey( spep_4 + 78, 1, 9 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0,  2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_4 + 56, 14,  8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_4 + 0, 1021 );  --迫る
playSe( spep_4 + 56, 1023 );  --爆発

-- ** 次の準備 ** --
spep_5 = spep_4 + 78;

------------------------------------------------------
-- 爆破&ヘルメットを拾うトランクス(236F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --爆破&ヘルメットを拾うトランクス(ef_008)
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 236, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 236, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 236, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 236, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 236, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--playSe( spep_5 + 0, 1023 );  --爆発
playSe( spep_5 + 20 -20, 1024 );  --爆発
playSe( spep_5 + 52, 47 );  --びっくり
playSe( spep_5 + 100, 4 );  --拾う
playSe( spep_5 + 192, 1151 );  --かぶる

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 60 );
endPhase( spep_5 + 234 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 96, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 96, tosshin, 255 );

-- ** 集中線 ** --
shuchusenz = entryEffectLife( spep_0 , 906, 96, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 , shuchusenz, 96, 20 );

setEffMoveKey( spep_0 , shuchusenz, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, shuchusenz, 0, 0 , 0 );

setEffScaleKey( spep_0 , shuchusenz, 1.2, 1.2 );
setEffScaleKey( spep_0 + 96, shuchusenz, 1.2, 1.2 );

setEffRotateKey( spep_0 , shuchusenz, 0 );
setEffRotateKey( spep_0 + 96, shuchusenz, 0 );

setEffAlphaKey( spep_0 , shuchusenz, 255 );
setEffAlphaKey( spep_0 + 96, shuchusenz, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 94, 2,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 0, 9 );  --突進

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
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

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

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

-- ** 音 ** --
playSe( spep_x + 16, 1018 );  --ごごご

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

------------------------------------------------------
-- 格闘(226F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --格闘(ef_002)
setEffMoveKey( spep_1 + 0, attack, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, attack, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_1 + 226, attack, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack, 0 );
setEffRotateKey( spep_1 + 226, attack, 0 );
setEffAlphaKey( spep_1 + 0, attack, 255 );
setEffAlphaKey( spep_1 + 226, attack, 255 );

haikei1 = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --背景(ef_003)
setEffMoveKey( spep_1 + 0, haikei1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, haikei1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, haikei1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 226, haikei1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, haikei1, 0 );
setEffRotateKey( spep_1 + 226, haikei1, 0 );
setEffAlphaKey( spep_1 + 0, haikei1, 255 );
setEffAlphaKey( spep_1 + 226, haikei1, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0, 914, 22 -3, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 22 -3, ryusen1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ryusen1, 2.0, 1.0 );
setEffScaleKey( spep_1 + 22 -3, ryusen1, 2.0, 1.0 );
setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 22 -3, ryusen1, 0 );
setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 21 -3, ryusen1, 255 );
setEffAlphaKey( spep_1 + 22 -3, ryusen1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 226, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 24, 1, 108 );
changeAnime( spep_1 -3 + 28, 1, 106 );
changeAnime( spep_1 -3 + 50, 1, 108 );
changeAnime( spep_1 -3 + 62, 1, 106 );
changeAnime( spep_1 -3 + 72, 1, 104 );
changeAnime( spep_1 -3 + 120, 1, 110 );
changeAnime( spep_1 -3 + 136, 1, 117 );
changeAnime( spep_1 -3 + 188, 1, 104 );
changeAnime( spep_1 -3 + 200, 1, 108 );

setMoveKey( spep_1 + 0, 1, 324.5, 66.5 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 320.7, 66.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 314.5, 66.5 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 305.6, 66.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 293.6, 66.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 278, 66.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 258, 66.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 232.7, 66.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 200.9, 66.6 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 176.3, 66.5 , 0 );
setMoveKey( spep_1 -3 + 23, 1, 123.5, 66.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 135.2, 130.4 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 164.1, 128.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 108.6, 119.8 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 128.3, 125.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 132.8, 125.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 128.2, 119.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 132.8, 119.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 135.6, 119.7 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 137, 119.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 137.6, 119.7 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 44.3, 119.7 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 44.3, 119.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 232.6, 92.4 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 319.9, 94.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 327.5, 94.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 291.9, 92.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 286.7, 92.4 , 0 );
setMoveKey( spep_1 -3 + 61, 1, 250.2, 92.4 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 82.5, 108.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 121.5, 108.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 183.8, 110.7 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 185.9, 110.7 , 0 );
setMoveKey( spep_1 -3 + 71, 1, 137.9, 108.5 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 153.6, 61.4 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 153.6, 61.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 198.6, 61.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 272.6, 62.6 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 291.3, 62.6 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 256.5, 61.4 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 236.8, 61.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 214, 61.4 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 214, 61.4 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 213.9, 61.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 213.9, 61.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 213.9, 61.5 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 213.8, 61.5 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 213.8, 61.6 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 213.7, 61.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 213.6, 61.8 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 213.5, 61.8 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 213.4, 61.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 213.4, 62 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 213.3, 62 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 213.3, 62 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 213.3, 62.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 213.3, 62.1 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 229.5, 65.1 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 199.7, 80.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 168.8, 64.1 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 189.5, 61.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 164.7, 56.1 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 164.7, 56.1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 178.6, 58.8 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 178.6, 58.8 , 0 );
setMoveKey( spep_1 -3 + 135, 1, 164.6, 56.1 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 214, 58.5 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 214, 58 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 214, 57.5 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 214, 57 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 214, 56.5 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 214, 56 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 214, 55.5 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 214, 55 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 214, 56 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 214, 57 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 214, 58 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 214, 59 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 214, 60 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 214, 61 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 214, 62 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 214, 60.9 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 214, 59.7 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 214, 58.5 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 214, 57.3 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 214, 56.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 214, 55 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 231.4, 55.6 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 248, 56.1 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 264.4, 56.7 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 279.1, 57.2 , 0 );
setMoveKey( spep_1 -3 + 187, 1, 286.7, 57.4 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 259.6, 57 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 224.8, 56 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 209.9, 55.7 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 235.2, 60.9 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 232.6, 60.9 , 0 );
setMoveKey( spep_1 -3 + 199, 1, 200.8, 55.4 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 185.9, 39.2 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 200.7, 41.1 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 255.6, 41.1 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 272.8, 39 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 447.1, 39 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 571.7, 39 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 658.4, 39 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 716, 39.1 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 752.7, 39.1 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 775.1, 39.1 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 787.3 +20, 39.1 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 793.2 +50, 39.1 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 795.3 +70, 39.1 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 795.8 +90, 39.1 , 0 );
setMoveKey( spep_1 + 226, 1, 795.9 +100, 39.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 23, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 24, 1, 2, 2 );
setScaleKey( spep_1 -3 + 27, 1, 2, 2 );
setScaleKey( spep_1 -3 + 28, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 30, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 32, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 34, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 50, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 52, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 54, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 56, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 64, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 66, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 68, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 71, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 76, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 78, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 80, 1, 1.86, 1.86 );
setScaleKey( spep_1 -3 + 82, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 94, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 96, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 102, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 104, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 110, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 112, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 116, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 119, 1, 1.94, 1.94 );
setScaleKey( spep_1 -3 + 120, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 122, 1, 2, 2 );
setScaleKey( spep_1 -3 + 124, 1, 2, 2 );
setScaleKey( spep_1 -3 + 126, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 128, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 130, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 132, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 135, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 192, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 194, 1, 2, 2 );
setScaleKey( spep_1 -3 + 196, 1, 2, 2 );
setScaleKey( spep_1 -3 + 199, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 200, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 202, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 204, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 206, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 226, 1, 1.82, 1.82 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 23, 1, 0 );
setRotateKey( spep_1 -3 + 24, 1, -21.3 );
setRotateKey( spep_1 -3 + 27, 1, -21.3 );
setRotateKey( spep_1 -3 + 28, 1, -50 );
setRotateKey( spep_1 -3 + 49, 1, -50 );
setRotateKey( spep_1 -3 + 50, 1, 15 );
setRotateKey( spep_1 -3 + 61, 1, 15 );
setRotateKey( spep_1 -3 + 62, 1, -50 );
setRotateKey( spep_1 -3 + 71, 1, -50 );
setRotateKey( spep_1 -3 + 72, 1, 0 );
setRotateKey( spep_1 -3 + 119, 1, 0 );
setRotateKey( spep_1 -3 + 120, 1, 23.5 );
setRotateKey( spep_1 -3 + 122, 1, 20 );
setRotateKey( spep_1 -3 + 124, 1, 16.3 );
setRotateKey( spep_1 -3 + 126, 1, 15.8 );
setRotateKey( spep_1 -3 + 135, 1, 15.8 );
setRotateKey( spep_1 -3 + 136, 1, 0 );
setRotateKey( spep_1 -3 + 199, 1, 0 );
setRotateKey( spep_1 -3 + 200, 1, 15 );
setRotateKey( spep_1 + 226, 1, 15 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_1 -3 + 40, 914, 10, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 -3 + 40, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 50, ryusen2, 0, 0 , 0 );
setEffScaleKey( spep_1 -3 + 40, ryusen2, 2.0, 1.0 );
setEffScaleKey( spep_1 -3 + 50, ryusen2, 2.0, 1.0 );
setEffRotateKey( spep_1 -3 + 40, ryusen2, 0 );
setEffRotateKey( spep_1 -3 + 50, ryusen2, 0 );
setEffAlphaKey( spep_1 -3 + 40, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 49, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 50, ryusen2, 0 );

ryusen3 = entryEffectLife( spep_1 -3 + 186, 914, 6, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 -3 + 186, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 192, ryusen3, 0, 0 , 0 );
setEffScaleKey( spep_1 -3 + 186, ryusen3, 2.0, 1.0 );
setEffScaleKey( spep_1 -3 + 192, ryusen3, 2.0, 1.0 );
setEffRotateKey( spep_1 -3 + 186, ryusen3, 0 );
setEffRotateKey( spep_1 -3 + 192, ryusen3, 0 );
setEffAlphaKey( spep_1 -3 + 186, ryusen3, 255 );
setEffAlphaKey( spep_1 -3 + 191, ryusen3, 255 );
setEffAlphaKey( spep_1 -3 + 192, ryusen3, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 -3 + 22, 906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 -3 + 22, shuchusen1, 18, 20 );

setEffMoveKey( spep_1 -3 + 22, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 40, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 22, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 40, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_1 -3 + 22, shuchusen1, 0 );
setEffRotateKey( spep_1 -3 + 40, shuchusen1, 0 );

setEffAlphaKey( spep_1 -3 + 22, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 39, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 40, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_1 -3 + 50, 906, 34, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 -3 + 50, shuchusen2, 34, 20 );

setEffMoveKey( spep_1 -3 + 50, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 84, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 50, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 84, shuchusen2, 1.2, 1.2 );

setEffRotateKey( spep_1 -3 + 50, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 84, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 50, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 84, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_1 -3 + 192, 906, 34 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 -3 + 192, shuchusen3, 34, 20 );

setEffMoveKey( spep_1 -3 + 192, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 192, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_1 + 226, shuchusen3, 1.2, 1.2 );

setEffRotateKey( spep_1 -3 + 192, shuchusen3, 0 );
setEffRotateKey( spep_1 + 226, shuchusen3, 0 );

setEffAlphaKey( spep_1 -3 + 192, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 226, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_1 -3 + 22,  10019, 16, 0x100, -1, 0, -15.8, 210.4 );  --ドン
setEffMoveKey( spep_1 -3 + 22, ctdon, -15.8, 210.4 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctdon, 4.4, 270.4 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctdon, 40.7, 327.7 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctdon, 32.5, 337.7 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctdon, 45.7, 332 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctdon, 34.7, 333.4 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctdon, 41.9, 343.3 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctdon, 42.1, 331.1 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctdon, 38.1, 344.3 , 0 );

setEffScaleKey( spep_1 -3 + 22, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 24, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 26, ctdon, 2, 2 );
setEffScaleKey( spep_1 -3 + 38, ctdon, 2, 2 );

setEffRotateKey( spep_1 -3 + 22, ctdon, 0 );
setEffRotateKey( spep_1 -3 + 38, ctdon, 0 );

setEffAlphaKey( spep_1 -3 + 22, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 34, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctdon, 141 );
setEffAlphaKey( spep_1 -3 + 38, ctdon, 26 );

ctba1 = entryEffectLife( spep_1 -3 + 50,  10022, 10, 0x100, -1, 0, -2.4, 240.7 );  --バッ
setEffMoveKey( spep_1 -3 + 50, ctba1, -2.4, 240.7 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctba1, -33.7, 331.2 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctba1, -27.6, 321.4 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctba1, -26.6, 333.1 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctba1, -36.2, 328 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctba1, -21, 328.4 , 0 );

setEffScaleKey( spep_1 -3 + 50, ctba1, 0.51, 0.51 );
setEffScaleKey( spep_1 -3 + 52, ctba1, 1.4, 1.4 );
setEffScaleKey( spep_1 -3 + 60, ctba1, 1.4, 1.4 );

setEffRotateKey( spep_1 -3 + 50, ctba1, -17.2 );
setEffRotateKey( spep_1 -3 + 52, ctba1, -19.2 );
setEffRotateKey( spep_1 -3 + 60, ctba1, -19.2 );

setEffAlphaKey( spep_1 -3 + 50, ctba1, 255 );
setEffAlphaKey( spep_1 -3 + 60, ctba1, 255 );

ctba2 = entryEffectLife( spep_1 -3 + 62,  10022, 10, 0x100, -1, 0, -33.2, -186.8 );  --バッ
setEffMoveKey( spep_1 -3 + 62, ctba2, -33.2, -186.8 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctba2, -34.1, -190.4 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctba2, -37.3, -180.2 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctba2, -40.1, -191.4 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctba2, -31.2, -183.8 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctba2, -34.1, -190.4 , 0 );

setEffScaleKey( spep_1 -3 + 62, ctba2, 0.87, 0.87 );
setEffScaleKey( spep_1 -3 + 64, ctba2, 1.35, 1.42 );
setEffScaleKey( spep_1 -3 + 66, ctba2, 1.34, 1.41 );
setEffScaleKey( spep_1 -3 + 70, ctba2, 1.34, 1.41 );
setEffScaleKey( spep_1 -3 + 72, ctba2, 1.35, 1.42 );

setEffRotateKey( spep_1 -3 + 62, ctba2, 26.4 );
setEffRotateKey( spep_1 -3 + 72, ctba2, 26.4 );

setEffAlphaKey( spep_1 -3 + 62, ctba2, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctba2, 255 );

ctga = entryEffectLife( spep_1 -3 + 74,  10005, 10, 0x100, -1, 0, 16, 232.9 );  --ガッ
setEffMoveKey( spep_1 -3 + 74, ctga, 16, 232.9 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctga, -16.9, 271.1 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctga, -14.1, 269 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctga, -11.3, 266.8 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctga, -8.5, 264.7 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctga, -5.7, 262.6 , 0 );

setEffScaleKey( spep_1 -3 + 74, ctga, 0.5 +0.2, 0.5 +0.2 );
setEffScaleKey( spep_1 -3 + 76, ctga, 0.77 +0.4, 0.77 +0.4 );
setEffScaleKey( spep_1 -3 + 78, ctga, 0.79 +0.4, 0.79 +0.4 );
setEffScaleKey( spep_1 -3 + 80, ctga, 0.81 +0.5, 0.81 +0.5 );
setEffScaleKey( spep_1 -3 + 82, ctga, 0.83 +0.5, 0.83 +0.5 );
setEffScaleKey( spep_1 -3 + 84, ctga, 0.85 +0.5, 0.85 +0.5 );

setEffRotateKey( spep_1 -3 + 74, ctga, 19.7 +12 );
setEffRotateKey( spep_1 -3 + 76, ctga, 4.1 +12 );
setEffRotateKey( spep_1 -3 + 80, ctga, 4.1 +12 );
setEffRotateKey( spep_1 -3 + 82, ctga, 4 +12 );
setEffRotateKey( spep_1 -3 + 84, ctga, 4 +12 );

setEffAlphaKey( spep_1 -3 + 74, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 84, ctga, 255 );

ctbaki = entryEffectLife( spep_1 -3 + 120,  10020, 14, 0x100, -1, 0, -22.9, 286.1 );  --バキッ
setEffMoveKey( spep_1 -3 + 120, ctbaki, -22.9, 286.1 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctbaki, -28.1, 329.1 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctbaki, -20.5, 325.3 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctbaki, -26.9, 329.8 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctbaki, -20.8, 322.5 , 0 );
setEffMoveKey( spep_1 -3 + 130, ctbaki, -30.2, 321.8 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctbaki, -35.6, 323.4 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctbaki, -35.6, 323.4 , 0 );

setEffScaleKey( spep_1 -3 + 120, ctbaki, 0.94, 0.94 );
setEffScaleKey( spep_1 -3 + 122, ctbaki, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 124, ctbaki, 1.25, 1.24 );
setEffScaleKey( spep_1 -3 + 126, ctbaki, 1.29, 1.27 );
setEffScaleKey( spep_1 -3 + 128, ctbaki, 1.34, 1.31 );
setEffScaleKey( spep_1 -3 + 130, ctbaki, 1.38, 1.34 );
setEffScaleKey( spep_1 -3 + 132, ctbaki, 1.43, 1.38 );
setEffScaleKey( spep_1 -3 + 134, ctbaki, 1.43, 1.38 );

setEffRotateKey( spep_1 -3 + 120, ctbaki, 7.2 );
setEffRotateKey( spep_1 -3 + 134, ctbaki, 7.2 );

setEffAlphaKey( spep_1 -3 + 120, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 132, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 134, ctbaki, 23 );

ctdogon = entryEffectLife( spep_1 -3 + 196,  10018, 18, 0x100, -1, 0, -11.9, 237.4 );  --ドゴン
setEffMoveKey( spep_1 -3 + 196, ctdogon, -11.9, 237.4 , 0 );
setEffMoveKey( spep_1 -3 + 198, ctdogon, -10, 248.7 , 0 );
setEffMoveKey( spep_1 -3 + 200, ctdogon, 6.5, 255.8 , 0 );
setEffMoveKey( spep_1 -3 + 202, ctdogon, 0.4, 263.2 , 0 );
setEffMoveKey( spep_1 -3 + 204, ctdogon, 8.9, 255.2 , 0 );
setEffMoveKey( spep_1 -3 + 206, ctdogon, -0.7, 256.3 , 0 );
setEffMoveKey( spep_1 -3 + 208, ctdogon, 5.2, 261.4 , 0 );
setEffMoveKey( spep_1 -3 + 210, ctdogon, 3.7, 251.7 , 0 );
setEffMoveKey( spep_1 -3 + 212, ctdogon, 2.4, 262.7 , 0 );
setEffMoveKey( spep_1 -3 + 214, ctdogon, 5.1, 254.9 , 0 );

setEffScaleKey( spep_1 -3 + 196, ctdogon, 0.9, 0.9 );
setEffScaleKey( spep_1 -3 + 198, ctdogon, 1.49, 1.49 );
setEffScaleKey( spep_1 -3 + 200, ctdogon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 214, ctdogon, 2.08, 2.08 );

setEffRotateKey( spep_1 -3 + 196, ctdogon, -26.5 );
setEffRotateKey( spep_1 -3 + 198, ctdogon, -21.7 );
setEffRotateKey( spep_1 -3 + 200, ctdogon, -17 );
setEffRotateKey( spep_1 -3 + 214, ctdogon, -17 );

setEffAlphaKey( spep_1 -3 + 196, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 210, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 212, ctdogon, 141 );
setEffAlphaKey( spep_1 -3 + 214, ctdogon, 26 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_1 + 216, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_1 + 0, 8 );  --迫る
playSe( spep_1 -3 + 22, 1010 );  --ドン
playSe( spep_1 -3 + 50, 1000 );  --バッ
playSe( spep_1 -3 + 62, 1001 );  --バッ
playSe( spep_1 -3 + 74, 1009 );  --ガッ
playSe( spep_1 -3 + 120, 1010 );  --バキ
playSe( spep_1 + 164, 1072 );  --迫る
setSeVolume( spep_1 + 168, 1072, 150 );
playSe( spep_1 -3 + 194, 1011 );  --ドゴン

-- ** 次の準備 ** --
spep_2 = spep_1 + 226;

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
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- ビクトリーキャノン発動(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --ビクトリーキャノン発動(ef_004)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 116, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 116, hassha, 255 );

haikei2 = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --背景(ef_005)
setEffMoveKey( spep_3 + 0, haikei2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, haikei2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, haikei2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, haikei2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, haikei2, 0 );
setEffRotateKey( spep_3 + 116, haikei2, 0 );
setEffAlphaKey( spep_3 + 0, haikei2, 255 );
setEffAlphaKey( spep_3 + 116, haikei2, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0, 906, 68 -3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen4, 68 -3, 20 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 68, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.4, 1.4 );
setEffScaleKey( spep_3 -3 + 68, shuchusen4, 1.4, 1.4 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 -3 + 68, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 -3 + 67, shuchusen4, 255 );
setEffAlphaKey( spep_3 -3 + 68, shuchusen4, 0 );

-- ** 流線 ** --
--[[ryusen4 = entryEffectLife( spep_3 -3 + 68, 914, 48 +3, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_3 -3 + 68, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, ryusen4, 0, 0 , 0 );
setEffScaleKey( spep_3 -3 + 68, ryusen4, 2.0, 1.0 );
setEffScaleKey( spep_3 + 116, ryusen4, 2.0, 1.0 );
setEffRotateKey( spep_3 -3 + 68, ryusen4, 0 );
setEffRotateKey( spep_3 + 116, ryusen4, 0 );
setEffAlphaKey( spep_3 -3 + 68, ryusen4, 255 );
setEffAlphaKey( spep_3 + 116, ryusen4, 255 );]]

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_3 -3 + 78,  10012, 40, 0x100, -1, 0, -118, 191.2 );  --ズオッ
setEffMoveKey( spep_3 -3 + 78, ctzuo, -118, 191.2 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctzuo, -99.4, 234.4 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctzuo, -96.2, 276.3 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctzuo, -107, 280.1 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctzuo, -77.3, 283.8 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctzuo, -88.9, 287.6 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctzuo, -58.4, 291.3 , 0 );
setEffMoveKey( spep_3 -3 + 92, ctzuo, -70.9, 295.1 , 0 );
setEffMoveKey( spep_3 -3 + 94, ctzuo, -39.5, 298.8 , 0 );
setEffMoveKey( spep_3 -3 + 96, ctzuo, -52.8, 302.5 , 0 );
setEffMoveKey( spep_3 -3 + 98, ctzuo, -20.6, 306.3 , 0 );
setEffMoveKey( spep_3 -3 + 100, ctzuo, -34.7, 310 , 0 );
setEffMoveKey( spep_3 -3 + 102, ctzuo, -1.7, 313.8 , 0 );
setEffMoveKey( spep_3 -3 + 104, ctzuo, -16.6, 317.5 , 0 );
setEffMoveKey( spep_3 -3 + 106, ctzuo, 17.2, 321.3 , 0 );
setEffMoveKey( spep_3 -3 + 108, ctzuo, 1.4, 325 , 0 );
setEffMoveKey( spep_3 -3 + 110, ctzuo, 36.1, 328.8 , 0 );
setEffMoveKey( spep_3 -3 + 112, ctzuo, 45.5, 332.5 , 0 );
setEffMoveKey( spep_3 -3 + 114, ctzuo, 30.7, 320.7 , 0 );
setEffMoveKey( spep_3 -3 + 116, ctzuo, 68, 308.8 , 0 );
setEffMoveKey( spep_3 -3 + 118, ctzuo, 79.2, 296.9 , 0 );

a1 = 2;
setEffScaleKey( spep_3 -3 + 78, ctzuo, 0.3 +0.7, 0.3 +0.7 );
setEffScaleKey( spep_3 -3 + 80, ctzuo, 0.5 +1.1, 0.5 +1.1 );
setEffScaleKey( spep_3 -3 + 82, ctzuo, 0.7 +1.6, 0.7 +1.6 );
setEffScaleKey( spep_3 -3 + 84, ctzuo, 0.71 +a1, 0.71 +a1 );
setEffScaleKey( spep_3 -3 + 86, ctzuo, 0.73 +a1, 0.73 +a1 );
setEffScaleKey( spep_3 -3 + 88, ctzuo, 0.74 +a1, 0.74 +a1 );
setEffScaleKey( spep_3 -3 + 90, ctzuo, 0.76 +a1, 0.76 +a1 );
setEffScaleKey( spep_3 -3 + 92, ctzuo, 0.77 +a1, 0.77 +a1 );
setEffScaleKey( spep_3 -3 + 94, ctzuo, 0.79 +a1, 0.79 +a1 );
setEffScaleKey( spep_3 -3 + 96, ctzuo, 0.8 +a1, 0.8 +a1 );
setEffScaleKey( spep_3 -3 + 98, ctzuo, 0.82 +a1, 0.82 +a1 );
setEffScaleKey( spep_3 -3 + 100, ctzuo, 0.83 +a1, 0.83 +a1 );
setEffScaleKey( spep_3 -3 + 102, ctzuo, 0.85 +a1, 0.85 +a1 );
setEffScaleKey( spep_3 -3 + 104, ctzuo, 0.86 +a1, 0.86 +a1 );
setEffScaleKey( spep_3 -3 + 106, ctzuo, 0.88 +a1, 0.88 +a1 );
setEffScaleKey( spep_3 -3 + 108, ctzuo, 0.89 +a1 +0.1, 0.89 +a1 +0.1 );
setEffScaleKey( spep_3 -3 + 110, ctzuo, 0.91 +a1 +0.1, 0.91 +a1 +0.1 );
setEffScaleKey( spep_3 -3 + 112, ctzuo, 0.92 +a1 +0.2, 0.92 +a1 +0.2 );
setEffScaleKey( spep_3 -3 + 118, ctzuo, 0.92 +a1 +0.3, 0.92 +a1 +0.3 );

setEffRotateKey( spep_3 -3 + 78, ctzuo, -45 +30 );
setEffRotateKey( spep_3 -3 + 118, ctzuo, -45 +30 );

setEffAlphaKey( spep_3 -3 + 78, ctzuo, 74 );
setEffAlphaKey( spep_3 -3 + 80, ctzuo, 164 );
setEffAlphaKey( spep_3 -3 + 82, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 112, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 114, ctzuo, 170 );
setEffAlphaKey( spep_3 -3 + 116, ctzuo, 85 );
setEffAlphaKey( spep_3 -3 + 118, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_3 + 106, 6, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
SE1 = playSe( spep_3 + 0 -2, 15 );  --溜める
stopSe( spep_3 + 44, SE1, 20 );
playSe( spep_3 + 46, 1022 );  --発射

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;

------------------------------------------------------
-- 向かっていくビクトリーキャノン(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
mukau = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --向かっていくビクトリーキャノン(ef_006)
setEffMoveKey( spep_4 + 0, mukau, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, mukau, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, mukau, 1.0, 1.0 );
setEffScaleKey( spep_4 + 78, mukau, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, mukau, 0 );
setEffRotateKey( spep_4 + 78, mukau, 0 );
setEffAlphaKey( spep_4 + 0, mukau, 255 );
setEffAlphaKey( spep_4 + 78, mukau, 255 );

haikei3 = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --背景(ef_007)
setEffMoveKey( spep_4 + 0, haikei3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, haikei3, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, haikei3, 1.0, 1.0 );
setEffScaleKey( spep_4 + 78, haikei3, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, haikei3, 0 );
setEffRotateKey( spep_4 + 78, haikei3, 0 );
setEffAlphaKey( spep_4 + 0, haikei3, 255 );
setEffAlphaKey( spep_4 + 78, haikei3, 255 );

-- ** 流線 ** --
--[[ryusen5 = entryEffectLife( spep_4 + 0, 921, 78, 0x80, -1, 0, 0, 0 );  --奥行き流線
setEffMoveKey( spep_4 + 0, ryusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, ryusen5, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, ryusen5, 1.0, 1.0 );
setEffScaleKey( spep_4 + 78, ryusen5, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ryusen5, 0 );
setEffRotateKey( spep_4 + 78, ryusen5, 0 );
setEffAlphaKey( spep_4 + 0, ryusen5, 255 );
setEffAlphaKey( spep_4 + 78, ryusen5, 255 );]]

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_4 + 0,  10014, 78, 0x100, -1, 0, 57.8, 363.3 );  --ズドド
setEffShake( spep_4 + 0, ctzudo, 78, 20 );

setEffMoveKey( spep_4 + 0, ctzudo, 57.8, 343.3 , 0 );
setEffMoveKey( spep_4 + 78, ctzudo, 57.8, 343.3 , 0 );

setEffScaleKey( spep_4 + 0, ctzudo, 2.87, 3.71 );
setEffScaleKey( spep_4 + 78, ctzudo, 2.87, 3.71 );

setEffRotateKey( spep_4 + 0, ctzudo, -10 );
setEffRotateKey( spep_4 + 78, ctzudo, -10 );

setEffAlphaKey( spep_4 + 0, ctzudo, 255 );
setEffAlphaKey( spep_4 + 78, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 78, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 -3 + 44, 1, 108 );
--changeAnime( spep_4 -3 + 70, 1, 104 );

setMoveKey( spep_4 + 0, 1, 238.3, -30 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 236.9, -30.6 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 235.5, -31.4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 234, -32.2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 232.3, -33 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 230.5, -33.9 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 228.7, -34.8 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 226.7, -35.8 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 224.6, -36.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 222.4, -38 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 220.1, -39.2 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 217.6, -40.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 215.1, -41.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 212.4, -43.1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 209.7, -44.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 206.8, -45.9 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 203.8, -47.4 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 200.7, -49 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 197.5, -50.6 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 194.2, -52.3 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 190.8, -54 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 185.6, -18.2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 218.6, -17.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 185.1, -46.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 187.5, -46.4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 194.9, -45.5 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 207.1, -44.1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 224.3, -42.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 246.4, -39.6 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 273.3, -36.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 305.2, -32.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 342, -28.7 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 383.7, -23.9 , 0 );
setMoveKey( spep_4 -3 + 69, 1, 430.4, -18.6 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 239.5, -29.4 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 238.3, -30 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 236.9, -30.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 235.5, -31.4 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 234, -32.2 , 0 );
setMoveKey( spep_4 + 78, 1, 234, -32.2 , 0 );

setScaleKey( spep_4 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 4, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 6, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 8, 1, 1.33, 1.33 );
setScaleKey( spep_4 -3 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_4 -3 + 12, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 14, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 16, 1, 1.55, 1.55 );
setScaleKey( spep_4 -3 + 18, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 22, 1, 1.75, 1.75 );
setScaleKey( spep_4 -3 + 24, 1, 1.82, 1.82 );
setScaleKey( spep_4 -3 + 26, 1, 1.9, 1.9 );
setScaleKey( spep_4 -3 + 28, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 30, 1, 2.07, 2.07 );
setScaleKey( spep_4 -3 + 32, 1, 2.15, 2.15 );
setScaleKey( spep_4 -3 + 34, 1, 2.24, 2.24 );
setScaleKey( spep_4 -3 + 36, 1, 2.34, 2.34 );
setScaleKey( spep_4 -3 + 38, 1, 2.43, 2.43 );
setScaleKey( spep_4 -3 + 40, 1, 2.54, 2.54 );
setScaleKey( spep_4 -3 + 43, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 44, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 46, 1, 2.37, 2.37 );
setScaleKey( spep_4 -3 + 48, 1, 2.37, 2.37 );
setScaleKey( spep_4 -3 + 50, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 52, 1, 2.3, 2.3 );
setScaleKey( spep_4 -3 + 54, 1, 2.2, 2.2 );
setScaleKey( spep_4 -3 + 56, 1, 2.07, 2.07 );
setScaleKey( spep_4 -3 + 58, 1, 1.91, 1.91 );
setScaleKey( spep_4 -3 + 60, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 62, 1, 1.46, 1.46 );
setScaleKey( spep_4 -3 + 64, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 66, 1, 0.86, 0.86 );
setScaleKey( spep_4 -3 + 69, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 70, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 72, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 74, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 76, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 78, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 78, 1, 1.33, 1.33 );

setRotateKey( spep_4 + 0, 1, -9 );
setRotateKey( spep_4 -3 + 43, 1, -9 );
setRotateKey( spep_4 -3 + 44, 1, 9 );
setRotateKey( spep_4 + 78, 1, 9 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0,  2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_4 + 56, 14,  8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_4 + 0, 1021 );  --迫る
playSe( spep_4 + 56, 1023 );  --爆発

-- ** 次の準備 ** --
spep_5 = spep_4 + 78;

------------------------------------------------------
-- 爆破&ヘルメットを拾うトランクス(236F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 );  --爆破&ヘルメットを拾うトランクス(ef_008)
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 236, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 236, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 236, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 236, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 236, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--playSe( spep_5 + 0, 1023 );  --爆発
playSe( spep_5 + 20 -20, 1024 );  --爆発
playSe( spep_5 + 52, 47 );  --びっくり
playSe( spep_5 + 100, 4 );  --拾う
playSe( spep_5 + 192, 1151 );  --かぶる

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 60 );
endPhase( spep_5 + 234 );

end
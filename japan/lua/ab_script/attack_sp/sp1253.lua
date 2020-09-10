--パン(幼年期)_乙女スマッシュ

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
SP_01 = 152786; --アイドリング
SP_02 = 152787; --キック
SP_03 = 152788; --パンチ1,2
SP_04 = 152789; --敵目前瞬間移動
SP_05 = 152791; --ビンタ構え
SP_06 = 152793; --ビンタ
SP_07 = 152795; --ビンタHitエフェクト

--敵側
SP_04r = 152790; --敵目前瞬間移動
SP_05r = 152792; --ビンタ構え
SP_06r = 152794; --ビンタ

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
-- アイドリング(128F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffectLife( spep_0 + 0, SP_01, 128, 0x100, -1, 0, 0, 0 );  --アイドリング(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 128, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 128, idling, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 128, idling, 255 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 128, idling, 0 );

-- ** 瞬間移動 ** --
idou1 = entryEffectLife( spep_0 + 102, 700, 12, 0x100, -1, 0, 0, -100 );  --瞬間移動
setEffMoveKey( spep_0 + 102, idou1, 0, -100 , 0 );
setEffMoveKey( spep_0 + 114, idou1, 0, -100 , 0 );
setEffScaleKey( spep_0 + 102, idou1, 2.0, 2.0 );
setEffScaleKey( spep_0 + 114, idou1, 2.0, 2.0 );
setEffAlphaKey( spep_0 + 102, idou1, 255 );
setEffAlphaKey( spep_0 + 114, idou1, 255 );
setEffRotateKey( spep_0 + 102, idou1, 0 );
setEffRotateKey( spep_0 + 114, idou1, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 128, 0x100, -1, 0, 0, -100 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 128, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, -100 , 0 );
setEffMoveKey( spep_0 + 128, shuchusen1, 0, -100 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 128, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 128, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 128, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 14,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 14, ctgogo, 70, 10 );

setEffMoveKey( spep_0 + 14, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 84, ctgogo, -8.5, 515.5 , 0 );

setEffScaleKey( spep_0 + 14, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 84, ctgogo, 0.7, 0.7 );

setEffRotateKey( spep_0 + 14, ctgogo, 0 );
setEffRotateKey( spep_0 + 84, ctgogo, 0 );

setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );

ctsyun1 = entryEffectLife( spep_0 + 102,  10011, 10, 0x100, -1, 0, 8.1, 160 );  --シュン
setEffMoveKey( spep_0 + 102, ctsyun1, 8.1, 160 , 0 );
setEffMoveKey( spep_0 + 110, ctsyun1, 8.1, 160 , 0 );
setEffMoveKey( spep_0 + 112, ctsyun1, 8.2, 160 , 0 );

setEffScaleKey( spep_0 + 102, ctsyun1, 1.62, 1.62 );
setEffScaleKey( spep_0 + 110, ctsyun1, 1.62, 1.62 );
setEffScaleKey( spep_0 + 112, ctsyun1, 1.62, 1.65 );

setEffRotateKey( spep_0 + 102, ctsyun1, 0 );
setEffRotateKey( spep_0 + 112, ctsyun1, 0 );

setEffAlphaKey( spep_0 + 102, ctsyun1, 10 );
setEffAlphaKey( spep_0 + 104, ctsyun1, 92 );
setEffAlphaKey( spep_0 + 106, ctsyun1, 173 );
setEffAlphaKey( spep_0 + 108, ctsyun1, 255 );
setEffAlphaKey( spep_0 + 110, ctsyun1, 128 );
setEffAlphaKey( spep_0 + 112, ctsyun1, 26 );

-- ** 音 ** --
playSe( spep_0 + 14, SE_04 );  --ゴゴゴ
playSe( spep_0 + 102, 43 );  --瞬間移動

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 128, 0, 0, 0, 0, 210 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 112, 14, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 128;

------------------------------------------------------
-- パンチ、キック(120F)
------------------------------------------------------

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0,  914, 118, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 118, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 118, ryusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 118, ryusen1, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1, 0 );
setEffAlphaKey( spep_1 + 90, ryusen1, 0 );
setEffAlphaKey( spep_1 + 96, ryusen1, 255 );
setEffAlphaKey( spep_1 + 118, ryusen1, 255 );

-- ** エフェクト等 ** --
kick = entryEffectLife( spep_1 + 0, SP_02, 118, 0x80, -1, 0, 0, 0 );  --キック(ef_002)
setEffMoveKey( spep_1 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_1 + 118, kick, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_1 + 118, kick, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick, 0 );
setEffRotateKey( spep_1 + 118, kick, 0 );
setEffAlphaKey( spep_1 + 0, kick, 255 );
setEffAlphaKey( spep_1 + 118, kick, 255 );

punch = entryEffectLife( spep_1 + 0, SP_03, 118, 0x100, -1, 0, 0, 0 );  --パンチ(ef_003)
setEffMoveKey( spep_1 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_1 + 118, punch, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_1 + 118, punch, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch, 0 );
setEffRotateKey( spep_1 + 118, punch, 0 );
setEffAlphaKey( spep_1 + 0, punch, 255 );
setEffAlphaKey( spep_1 + 118, punch, 255 );

-- ** 瞬間移動 ** --
idou2 = entryEffectLife( spep_1 + 12, 700, 12, 0x100, -1, 0, -160, -255.4 );  --瞬間移動
setEffMoveKey( spep_1 + 12, idou2, -160, -255.4 , 0 );
setEffMoveKey( spep_1 + 24, idou2, -160, -255.4 , 0 );
setEffScaleKey( spep_1 + 12, idou2, 2.0, 2.0 );
setEffScaleKey( spep_1 + 24, idou2, 2.0, 2.0 );
setEffAlphaKey( spep_1 + 12, idou2, 255 );
setEffAlphaKey( spep_1 + 24, idou2, 255 );
setEffRotateKey( spep_1 + 12, idou2, 0 );
setEffRotateKey( spep_1 + 24, idou2, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 90, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 25 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctsyun2 = entryEffectLife( spep_1 + 12,  10011, 12, 0x100, -1, 0, -223.8, 26 );  --シュン
setEffMoveKey( spep_1 + 12, ctsyun2, -223.8, 26 , 0 );
setEffMoveKey( spep_1 + 20, ctsyun2, -223.8, 26 , 0 );
setEffMoveKey( spep_1 + 22, ctsyun2, -223.7, 26 , 0 );
setEffMoveKey( spep_1 + 24, ctsyun2, -223.7, 26 , 0 );

setEffScaleKey( spep_1 + 12, ctsyun2, 1.62, 1.62 );
setEffScaleKey( spep_1 + 20, ctsyun2, 1.62, 1.62 );
setEffScaleKey( spep_1 + 22, ctsyun2, 1.62, 1.63 );
setEffScaleKey( spep_1 + 24, ctsyun2, 1.62, 1.65 );

setEffRotateKey( spep_1 + 12, ctsyun2, 0 );
setEffRotateKey( spep_1 + 24, ctsyun2, 0 );

setEffAlphaKey( spep_1 + 12, ctsyun2, 10 );
setEffAlphaKey( spep_1 + 14, ctsyun2, 132 );
setEffAlphaKey( spep_1 + 16, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 18, ctsyun2, 191 );
setEffAlphaKey( spep_1 + 20, ctsyun2, 128 );
setEffAlphaKey( spep_1 + 22, ctsyun2, 64 );
setEffAlphaKey( spep_1 + 24, ctsyun2, 0 );

ctexc = entryEffectLife( spep_1 + 12,  10000, 12, 0x100, -1, 0, 115.1, 227.6 );  --!!
setEffMoveKey( spep_1 + 12, ctexc, 115.1, 227.6 , 0 );
setEffMoveKey( spep_1 + 14, ctexc, 121.5, 236.6 , 0 );
setEffMoveKey( spep_1 + 16, ctexc, 120.2, 239.4 , 0 );
setEffMoveKey( spep_1 + 18, ctexc, 116.8, 233.4 , 0 );
setEffMoveKey( spep_1 + 20, ctexc, 120.5, 236.7 , 0 );
setEffMoveKey( spep_1 + 22, ctexc, 124.4, 244 , 0 );
setEffMoveKey( spep_1 + 24, ctexc, 118.2, 239.4 , 0 );

setEffScaleKey( spep_1 + 12, ctexc, 0.98, 1 );
setEffScaleKey( spep_1 + 14, ctexc, 1.32, 1.34 );
setEffScaleKey( spep_1 + 16, ctexc, 1.66, 1.68 );
setEffScaleKey( spep_1 + 18, ctexc, 1.34, 1.36 );
setEffScaleKey( spep_1 + 20, ctexc, 1.49, 1.51 );
setEffScaleKey( spep_1 + 22, ctexc, 1.64, 1.66 );
setEffScaleKey( spep_1 + 24, ctexc, 1.64, 1.66 );

setEffRotateKey( spep_1 + 12, ctexc, 10.5 );
setEffRotateKey( spep_1 + 24, ctexc, 10.5 );

setEffAlphaKey( spep_1 + 12, ctexc, 255 );
setEffAlphaKey( spep_1 + 24, ctexc, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );  --待機正面向き

setMoveKey( spep_1 + 0, 1, 30.1, -6.3 , 0 );
setMoveKey( spep_1 + 12, 1, 30.1, -6.3 , 0 );
setMoveKey( spep_1 + 14, 1, 30.2, -6.3 , 0 );
setMoveKey( spep_1 + 16, 1, 30.2, -6.3 , 0 );
setMoveKey( spep_1 + 18, 1, 30.3, -6.3 , 0 );
setMoveKey( spep_1 + 20, 1, 30.4, -6.3 , 0 );
setMoveKey( spep_1 + 22, 1, 30.5, -6.3 , 0 );
setMoveKey( spep_1 + 24, 1, 30.5, -6.3 , 0 );

setScaleKey( spep_1 + 0, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 24, 1, 2.12, 2.12 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 24, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 118, 0, 0, 0, 0, 210 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 12, 43 );  --瞬間移動

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 24; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( spep_1 + 0, 1, 100 );  --待機正面向き

setMoveKey( SP_dodge + 0, 1, 30.5, -6.3 , 0 );
setMoveKey( SP_dodge + 2, 1, 30.5, -6.3 , 0 );
setMoveKey( SP_dodge + 4, 1, 30.6, -6.3 , 0 );
setMoveKey( SP_dodge + 6, 1, 31.0, -6.3 , 0 );
setMoveKey( SP_dodge + 8, 1, 31.2, -6.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 32.2, -6.3 , 0 );

setScaleKey( SP_dodge + 0, 1, 2.12, 2.12 );
setScaleKey( SP_dodge + 10, 1, 2.12, 2.12 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
-- ** 瞬間移動 ** --
idou3 = entryEffectLife( spep_1 + 56, 700, 12, 0x100, -1, 0, -20, -115.4 );  --瞬間移動
setEffMoveKey( spep_1 + 56, idou3, -20, -115.4 , 0 );
setEffMoveKey( spep_1 + 68, idou3, -20, -115.4 , 0 );
setEffScaleKey( spep_1 + 56, idou3, 2.0, 2.0 );
setEffScaleKey( spep_1 + 68, idou3, 2.0, 2.0 );
setEffAlphaKey( spep_1 + 56, idou3, 255 );
setEffAlphaKey( spep_1 + 68, idou3, 255 );
setEffRotateKey( spep_1 + 56, idou3, 0 );
setEffRotateKey( spep_1 + 68, idou3, 0 );

idou4 = entryEffectLife( spep_1 + 70, 700, 12, 0x80, -1, 0, 260, 44.6 );  --瞬間移動
setEffMoveKey( spep_1 + 70, idou4, 260, 44.6 , 0 );
setEffMoveKey( spep_1 + 82, idou4, 260, 44.6 , 0 );
setEffScaleKey( spep_1 + 70, idou4, 2.0, 2.0 );
setEffScaleKey( spep_1 + 82, idou4, 2.0, 2.0 );
setEffAlphaKey( spep_1 + 70, idou4, 255 );
setEffAlphaKey( spep_1 + 82, idou4, 255 );
setEffRotateKey( spep_1 + 70, idou4, 0 );
setEffRotateKey( spep_1 + 82, idou4, 0 );

idou5 = entryEffectLife( spep_1 + 94, 700, 12, 0x80, -1, 0, 240, 84.6 );  --瞬間移動
setEffMoveKey( spep_1 + 94, idou5, 240, 84.6 , 0 );
setEffMoveKey( spep_1 + 106, idou5, 240, 84.6 , 0 );
setEffScaleKey( spep_1 + 94, idou5, 2.0, 2.0 );
setEffScaleKey( spep_1 + 106, idou5, 2.0, 2.0 );
setEffAlphaKey( spep_1 + 94, idou5, 255 );
setEffAlphaKey( spep_1 + 106, idou5, 255 );
setEffRotateKey( spep_1 + 94, idou5, 0 );
setEffRotateKey( spep_1 + 106, idou5, 0 );

-- ** 書き文字エントリー ** --
ctsyun3 = entryEffectLife( spep_1 + 70,  10011, 12, 0x100, -1, 0, 198.1, 281.8 );  --シュン
setEffMoveKey( spep_1 + 70, ctsyun3, 198.1, 281.8 , 0 );
setEffMoveKey( spep_1 + 72, ctsyun3, 198.1, 298.4 , 0 );
setEffMoveKey( spep_1 + 78, ctsyun3, 198.1, 298.4 , 0 );
setEffMoveKey( spep_1 + 80, ctsyun3, 198, 298.4 , 0 );
setEffMoveKey( spep_1 + 82, ctsyun3, 198, 298.4 , 0 );

setEffScaleKey( spep_1 + 70, ctsyun3, 1.34, 1.34 );
setEffScaleKey( spep_1 + 78, ctsyun3, 1.34, 1.34 );
setEffScaleKey( spep_1 + 80, ctsyun3, 1.34, 1.36 );
setEffScaleKey( spep_1 + 82, ctsyun3, 1.34, 1.37 );

setEffRotateKey( spep_1 + 70, ctsyun3, 0 );
setEffRotateKey( spep_1 + 82, ctsyun3, 0 );

setEffAlphaKey( spep_1 + 70, ctsyun3, 10 );
setEffAlphaKey( spep_1 + 72, ctsyun3, 255 );
setEffAlphaKey( spep_1 + 74, ctsyun3, 213 );
setEffAlphaKey( spep_1 + 76, ctsyun3, 170 );
setEffAlphaKey( spep_1 + 78, ctsyun3, 128 );
setEffAlphaKey( spep_1 + 80, ctsyun3, 64 );
setEffAlphaKey( spep_1 + 82, ctsyun3, 0 );

ctsyun4 = entryEffectLife( spep_1 + 100,  10011, 8, 0x100, -1, 0, 248.1, 280.1 );  --シュン
setEffMoveKey( spep_1 + 100, ctsyun4, 248.1, 280.1 , 0 );
setEffMoveKey( spep_1 + 106, ctsyun4, 248.1, 280.1 , 0 );
setEffMoveKey( spep_1 + 108, ctsyun4, 248.2, 280.1 , 0 );

setEffScaleKey( spep_1 + 100, ctsyun4, 1.28, 1.28 );
setEffScaleKey( spep_1 + 106, ctsyun4, 1.28, 1.28 );
setEffScaleKey( spep_1 + 108, ctsyun4, 1.28, 1.3 );

setEffRotateKey( spep_1 + 100, ctsyun4, 0 );
setEffRotateKey( spep_1 + 108, ctsyun4, 0 );

setEffAlphaKey( spep_1 + 100, ctsyun4, 10 );
setEffAlphaKey( spep_1 + 102, ctsyun4, 132 );
setEffAlphaKey( spep_1 + 104, ctsyun4, 255 );
setEffAlphaKey( spep_1 + 106, ctsyun4, 128 );
setEffAlphaKey( spep_1 + 108, ctsyun4, 26 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 118, 1, 0 );
changeAnime( spep_1 + 35, 1, 108 );  --ダメージ（吹き飛び）
changeAnime( spep_1 + 90 -3, 1, 106 );  --ダメージ

setMoveKey( spep_1 + 26, 1, 30.5, -6.3 , 0 );
setMoveKey( spep_1 + 28, 1, 30.6, -6.3 , 0 );
setMoveKey( spep_1 + 30, 1, 31.0, -6.3 , 0 );
setMoveKey( spep_1 + 32, 1, 31.2, -6.3 , 0 );
setMoveKey( spep_1 + 34, 1, 32.2, -6.3 , 0 );
setMoveKey( spep_1 + 35, 1, 57.6, 1.5 , 0 );
setMoveKey( spep_1 + 36, 1, 57.6, 1.5 , 0 );
setMoveKey( spep_1 + 38, 1, 74, 7.6 , 0 );
setMoveKey( spep_1 + 40, 1, 82, 1.9 , 0 );
setMoveKey( spep_1 + 42, 1, 79.7, 5.4 , 0 );
setMoveKey( spep_1 + 44, 1, 79.8, 5.4 , 0 );
setMoveKey( spep_1 + 46, 1, 80.9, 12 , 0 );
setMoveKey( spep_1 + 48, 1, 87.8, 9.4 , 0 );
setMoveKey( spep_1 + 50, 1, 104.1, 24.3 , 0 );
setMoveKey( spep_1 + 52, 1, 115.8, 19.9 , 0 );
setMoveKey( spep_1 + 54, 1, 116, 24.3 , 0 );
setMoveKey( spep_1 + 56, 1, 117.9, 31.8 , 0 );
setMoveKey( spep_1 + 58, 1, 121.8, 23.1 , 0 );
setMoveKey( spep_1 + 60, 1, 118.2, 32 , 0 );
setMoveKey( spep_1 + 62, 1, 121.8, 23.1 , 0 );
setMoveKey( spep_1 + 64, 1, 117.9, 25.3 , 0 );
setMoveKey( spep_1 + 66, 1, 118.2, 32 , 0 );
setMoveKey( spep_1 + 68, 1, 121.8, 23.1 , 0 );
setMoveKey( spep_1 + 70, 1, 118, 29.9 , 0 );
setMoveKey( spep_1 + 72, 1, 118.9, 30.1 , 0 );
setMoveKey( spep_1 + 74, 1, 119.8, 30.3 , 0 );
setMoveKey( spep_1 + 76, 1, 120.7, 30.5 , 0 );
setMoveKey( spep_1 + 78, 1, 121.7, 30.7 , 0 );
setMoveKey( spep_1 + 80, 1, 122.6, 30.9 , 0 );
setMoveKey( spep_1 + 82, 1, 123.5, 31.1 , 0 );
setMoveKey( spep_1 + 84, 1, 124.4, 31.3 , 0 );
setMoveKey( spep_1 + 86, 1, 125.3, 31.5 , 0 );
--setMoveKey( spep_1 + 89, 1, 126.2, 31.7 , 0 );
setMoveKey( spep_1 + 90 -3, 1, 43.3, 18.4 , 0 );
setMoveKey( spep_1 + 90 -2, 1, 43.3, 18.4 , 0 );
setMoveKey( spep_1 + 92 -2, 1, -46.9, 20.9 , 0 );
setMoveKey( spep_1 + 94 -2, 1, -108.4, 14.9 , 0 );
setMoveKey( spep_1 + 96 -2, 1, -155.7, 18.3 , 0 );
setMoveKey( spep_1 + 98 -2, 1, -202.3, 20.7 , 0 );
setMoveKey( spep_1 + 100 -2, 1, -226.9, 14.8 , 0 );
setMoveKey( spep_1 + 102 -2, 1, -243.9, 18.3 , 0 );
setMoveKey( spep_1 + 104 -2, 1, -266, 20.6 , 0 );
setMoveKey( spep_1 + 106 -2, 1, -271, 14.8 , 0 );
setMoveKey( spep_1 + 108 -2, 1, -272.9, 18.3 , 0 );
setMoveKey( spep_1 + 110 -2, 1, -283.9, 20.6 , 0 );
setMoveKey( spep_1 + 112 -2, 1, -281.1, 14.8 , 0 );
setMoveKey( spep_1 + 114 -2, 1, -278, 18.3 , 0 );
setMoveKey( spep_1 + 116 -2, 1, -286.1, 20.6 , 0 );
setMoveKey( spep_1 + 118, 1, -286.1, 20.6 , 0 );

setScaleKey( spep_1 + 26, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 35, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 36, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 68, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 70, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 89 -2, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 90 -2, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 92 -2, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 94 -2, 1, 2.25, 2.25 );
setScaleKey( spep_1 + 96 -2, 1, 2.26, 2.26 );
setScaleKey( spep_1 + 98 -2, 1, 2.27, 2.27 );
setScaleKey( spep_1 + 102 -2, 1, 2.27, 2.27 );
setScaleKey( spep_1 + 104 -2, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 118, 1, 2.28, 2.28 );

setRotateKey( spep_1 + 26, 1, 0 );
setRotateKey( spep_1 + 34, 1, 0 );
setRotateKey( spep_1 + 35, 1, -5.8 );
setRotateKey( spep_1 + 36, 1, -5.8 );
setRotateKey( spep_1 + 38, 1, -8 );
setRotateKey( spep_1 + 40, 1, -8.8 );
setRotateKey( spep_1 + 42, 1, -9 );
setRotateKey( spep_1 + 48, 1, -9 );
setRotateKey( spep_1 + 50, 1, -12.4 );
setRotateKey( spep_1 + 52, 1, -14.2 );
setRotateKey( spep_1 + 54, 1, -15.1 );
setRotateKey( spep_1 + 56, 1, -15.4 );
setRotateKey( spep_1 + 58, 1, -15.5 );
setRotateKey( spep_1 + 68, 1, -15.5 );
setRotateKey( spep_1 + 70, 1, -15.1 );
setRotateKey( spep_1 + 78, 1, -15.1 );
setRotateKey( spep_1 + 80, 1, -15.2 );
setRotateKey( spep_1 + 89 -3, 1, -15.2 );
setRotateKey( spep_1 + 90 -3, 1, -67.5 );
setRotateKey( spep_1 + 90 -2, 1, -67.5 );
setRotateKey( spep_1 + 92 -2, 1, -68.3 );
setRotateKey( spep_1 + 94 -2, 1, -68.9 );
setRotateKey( spep_1 + 96 -2, 1, -69.4 );
setRotateKey( spep_1 + 98 -2, 1, -69.8 );
setRotateKey( spep_1 + 100 -2, 1, -70.1 );
setRotateKey( spep_1 + 102 -2, 1, -70.3 );
setRotateKey( spep_1 + 104 -2, 1, -70.4 );
setRotateKey( spep_1 + 106 -2, 1, -70.5 );
setRotateKey( spep_1 + 108 -2, 1, -70.5 );
setRotateKey( spep_1 + 110 -2, 1, -70.6 );
setRotateKey( spep_1 + 118, 1, -70.6 );

-- ** ホワイトフェード ** --
entryFade( spep_1 + 108, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 36, 1000 );  --パンチ１
playSe( spep_1 + 46, 1000 );  --パンチ２
playSe( spep_1 + 70, 43 );  --瞬間移動
playSe( spep_1 + 88, 1001 );  --キック
playSe( spep_1 + 100, 43 );  --瞬間移動

-- ** 次の準備 ** --
spep_2 = spep_1 + 120;

------------------------------------------------------
-- 敵目前瞬間移動(40F)
------------------------------------------------------

-- ** エフェクト等 ** --
syunidou = entryEffectLife( spep_2 + 0, SP_04, 40, 0x80, -1, 0, 0, 0 );  --敵目前瞬間移動(ef_004)
setEffMoveKey( spep_2 + 0, syunidou, 0, 0 , 0 );
setEffMoveKey( spep_2 + 40, syunidou, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, syunidou, 1.0, 1.0 );
setEffScaleKey( spep_2 + 40, syunidou, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, syunidou, 0 );
setEffRotateKey( spep_2 + 40, syunidou, 0 );
setEffAlphaKey( spep_2 + 0, syunidou, 255 );
setEffAlphaKey( spep_2 + 40, syunidou, 255 );

-- ** 瞬間移動 ** --
idou6 = entryEffectLife( spep_2 + 12, 700, 12, 0x80, -1, 0, -100, 104.6 );  --瞬間移動
setEffMoveKey( spep_2 + 12, idou6, -100, 104.6, 0 );
setEffMoveKey( spep_2 + 24, idou6, -100, 104.6, 0 );
setEffScaleKey( spep_2 + 12, idou6, 2.0, 2.0 );
setEffScaleKey( spep_2 + 24, idou6, 2.0, 2.0 );
setEffAlphaKey( spep_2 + 12, idou6, 255 );
setEffAlphaKey( spep_2 + 24, idou6, 255 );
setEffRotateKey( spep_2 + 12, idou6, 0 );
setEffRotateKey( spep_2 + 24, idou6, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 40, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 40, 25 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 40, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 40, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 40, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 40, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctsyun5 = entryEffectLife( spep_2 + 8,  10011, 12, 0x100, -1, 0, -115.8, 286.6 );  --シュン
setEffMoveKey( spep_2 + 8, ctsyun5, -115.8, 286.6 , 0 );
setEffMoveKey( spep_2 + 10, ctsyun5, -115.8, 287.2 , 0 );
setEffMoveKey( spep_2 + 12, ctsyun5, -115.8, 287.9 , 0 );
setEffMoveKey( spep_2 + 16, ctsyun5, -115.8, 287.9 , 0 );
setEffMoveKey( spep_2 + 18, ctsyun5, -115.7, 287.9 , 0 );
setEffMoveKey( spep_2 + 20, ctsyun5, -115.7, 287.9 , 0 );

setEffScaleKey( spep_2 + 8, ctsyun5, 1.62, 1.57 );
setEffScaleKey( spep_2 + 10, ctsyun5, 1.62, 1.59 );
setEffScaleKey( spep_2 + 12, ctsyun5, 1.62, 1.62 );
setEffScaleKey( spep_2 + 16, ctsyun5, 1.62, 1.62 );
setEffScaleKey( spep_2 + 18, ctsyun5, 1.62, 1.64 );
setEffScaleKey( spep_2 + 20, ctsyun5, 1.62, 1.65 );

setEffRotateKey( spep_2 + 8, ctsyun5, 0 );
setEffRotateKey( spep_2 + 20, ctsyun5, 0 );

setEffAlphaKey( spep_2 + 8, ctsyun5, 85 );
setEffAlphaKey( spep_2 + 10, ctsyun5, 170 );
setEffAlphaKey( spep_2 + 12, ctsyun5, 255 );
setEffAlphaKey( spep_2 + 14, ctsyun5, 191 );
setEffAlphaKey( spep_2 + 16, ctsyun5, 128 );
setEffAlphaKey( spep_2 + 18, ctsyun5, 64 );
setEffAlphaKey( spep_2 + 20, ctsyun5, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 40, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );  --気溜め後ろ向き

setMoveKey( spep_2 + 0, 1, 114.5, -15.3 , 0 );
setMoveKey( spep_2 + 2, 1, 113.9, -15.3 , 0 );
setMoveKey( spep_2 + 4, 1, 112.5, -15.3 , 0 );
setMoveKey( spep_2 + 6, 1, 112.9, -15.3 , 0 );
setMoveKey( spep_2 + 8, 1, 112.0, -15.3 , 0 );
setMoveKey( spep_2 + 10, 1, 111.3, -15.3 , 0 );
setMoveKey( spep_2 + 12, 1, 110.4, -15.3 , 0 );
setMoveKey( spep_2 + 14, 1, 110.7, -15.3 , 0 );
setMoveKey( spep_2 + 16, 1, 108.4, -15.3 , 0 );
setMoveKey( spep_2 + 18, 1, 106.8, -15.3 , 0 );
setMoveKey( spep_2 + 20, 1, 106.2, -15.3 , 0 );
setMoveKey( spep_2 + 22, 1, 105.7, -15.3 , 0 );
setMoveKey( spep_2 + 24, 1, 104.7, -15.3 , 0 );
setMoveKey( spep_2 + 26, 1, 103.9, -15.3 , 0 );
setMoveKey( spep_2 + 28, 1, 103.5, -15.3 , 0 );
setMoveKey( spep_2 + 30, 1, 102.7, -15.3 , 0 );
setMoveKey( spep_2 + 32, 1, 101.7, -15.3 , 0 );
setMoveKey( spep_2 + 34, 1, 100.5, -15.3 , 0 );
setMoveKey( spep_2 + 36, 1, 100.1, -15.3 , 0 );
setMoveKey( spep_2 + 38, 1, 99.1, -15.3 , 0 );
setMoveKey( spep_2 + 40, 1, 98.8, -15.3 , 0 );

setScaleKey( spep_2 + 0, 1, 2.10, 2.10 );
setScaleKey( spep_2 + 40, 1, 2.10, 2.10 );

setRotateKey( spep_2 + 0, 1, 0.3 );
setRotateKey( spep_2 + 2, 1, 0.5 );
setRotateKey( spep_2 + 4, 1, 0.8 );
setRotateKey( spep_2 + 6, 1, 1.9 );
setRotateKey( spep_2 + 8, 1, 4.0 );
setRotateKey( spep_2 + 10, 1, 6.2 );
setRotateKey( spep_2 + 12, 1, 7.8 );
setRotateKey( spep_2 + 14, 1, 8.4 );
setRotateKey( spep_2 + 16, 1, 8.4 );
setRotateKey( spep_2 + 18, 1, 7.9 );
setRotateKey( spep_2 + 20, 1, 6.9 );
setRotateKey( spep_2 + 22, 1, 5.6 );
setRotateKey( spep_2 + 24, 1, 4.4 );
setRotateKey( spep_2 + 26, 1, 3.4 );
setRotateKey( spep_2 + 28, 1, 2.8 );
setRotateKey( spep_2 + 30, 1, 2.6 );
setRotateKey( spep_2 + 32, 1, 2.7 );
setRotateKey( spep_2 + 34, 1, 3.3 );
setRotateKey( spep_2 + 36, 1, 4.2 );
setRotateKey( spep_2 + 38, 1, 5.3 );
setRotateKey( spep_2 + 40, 1, 5.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 40, 0, 0, 0, 0, 210 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 34, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 8, 43 );  --瞬間移動

-- ** 次の準備 ** --
spep_3 = spep_2 + 40;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen4, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 90, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen4, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- ビンタ構え(28F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_4 + 0, SP_05, 28, 0x100, -1, 0, 0, 0 );  --ビンタ構え(ef_005)
setEffMoveKey( spep_4 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_4 + 28, kamae, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_4 + 28, kamae, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kamae, 0 );
setEffRotateKey( spep_4 + 28, kamae, 0 );
setEffAlphaKey( spep_4 + 0, kamae, 255 );
setEffAlphaKey( spep_4 + 28, kamae, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_4 + 0,  913, 28, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_4 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 28, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1.6, 1.6 );
setEffScaleKey( spep_4 + 28, ryusen2, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, ryusen2, -133.9 );
setEffRotateKey( spep_4 + 28, ryusen2, -133.9 );

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 28, ryusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 28, 0, 0, 0, 0, 210 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 22, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --


-- ** 次の準備 ** --
spep_5 = spep_4 + 28;

------------------------------------------------------
-- ビンタ(100F)
------------------------------------------------------

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_5 + 0,  921, 36, 0x80, -1, 0, -4, -8.1 );  --流線
setEffMoveKey( spep_5 + 0, ryusen3, -4, -8.1 , 0 );
setEffMoveKey( spep_5 + 36, ryusen3, -4, -8.1 , 0 );

setEffScaleKey( spep_5 + 0, ryusen3, 1.83, 1.3 );
setEffScaleKey( spep_5 + 2, ryusen3, 1.83, 1.31 );
setEffScaleKey( spep_5 + 36, ryusen3, 1.83, 1.31 );

setEffRotateKey( spep_5 + 0, ryusen3, -123.1 );
setEffRotateKey( spep_5 + 36, ryusen3, -123.1 );

setEffAlphaKey( spep_5 + 0, ryusen3, 255 );
setEffAlphaKey( spep_5 + 20, ryusen3, 255 );
setEffAlphaKey( spep_5 + 22, ryusen3, 223 );
setEffAlphaKey( spep_5 + 24, ryusen3, 191 );
setEffAlphaKey( spep_5 + 26, ryusen3, 159 );
setEffAlphaKey( spep_5 + 28, ryusen3, 128 );
setEffAlphaKey( spep_5 + 30, ryusen3, 96 );
setEffAlphaKey( spep_5 + 32, ryusen3, 64 );
setEffAlphaKey( spep_5 + 34, ryusen3, 32 );
setEffAlphaKey( spep_5 + 36, ryusen3, 0 );

-- ** エフェクト等 ** --
binta = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ビンタ(ef_006)
setEffMoveKey( spep_5 + 0, binta, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, binta, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, binta, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, binta, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, binta, 0 );
setEffRotateKey( spep_5 + 100, binta, 0 );
setEffAlphaKey( spep_5 + 0, binta, 255 );
setEffAlphaKey( spep_5 + 100, binta, 255 );

hiteff = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --ビンタHitエフェクト(ef_007)
setEffMoveKey( spep_5 + 0, hiteff, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, hiteff, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hiteff, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hiteff, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hiteff, 0 );
setEffRotateKey( spep_5 + 100, hiteff, 0 );
setEffAlphaKey( spep_5 + 0, hiteff, 255 );
setEffAlphaKey( spep_5 + 100, hiteff, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 14,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 14, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 14, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 14, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 14, hibiware, 0 );
setEffAlphaKey( spep_5 + 25, hibiware, 0 );
setEffAlphaKey( spep_5 + 26, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 + 26,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 26, shuchusen5, 32, 25 );

setEffMoveKey( spep_5 + 26, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 26, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 58, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 26, shuchusen5, 0 );
setEffRotateKey( spep_5 + 58, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 26, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 40, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 42, shuchusen5, 252 );
setEffAlphaKey( spep_5 + 44, shuchusen5, 242 );
setEffAlphaKey( spep_5 + 46, shuchusen5, 227 );
setEffAlphaKey( spep_5 + 48, shuchusen5, 205 );
setEffAlphaKey( spep_5 + 50, shuchusen5, 176 );
setEffAlphaKey( spep_5 + 52, shuchusen5, 142 );
setEffAlphaKey( spep_5 + 54, shuchusen5, 101 );
setEffAlphaKey( spep_5 + 56, shuchusen5, 54 );
setEffAlphaKey( spep_5 + 58, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_5 + 26,  1657, 74, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 26, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 26, shuchusen6, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen6, 1, 1 );

setEffRotateKey( spep_5 + 26, shuchusen6, 0 );
setEffRotateKey( spep_5 + 100, shuchusen6, 0 );

setEffAlphaKey( spep_5 + 26, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 26,  10005, 74, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 26, ctga, 14, 20 );

setEffMoveKey( spep_5 + 26, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 40, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 26, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 29, ctga, -14.9 );
setEffRotateKey( spep_5 + 30, ctga, -10.9 );
setEffRotateKey( spep_5 + 31, ctga, -10.9 );
setEffRotateKey( spep_5 + 32, ctga, -14.9 );
setEffRotateKey( spep_5 + 33, ctga, -14.9 );
setEffRotateKey( spep_5 + 34, ctga, -10.9 );
setEffRotateKey( spep_5 + 35, ctga, -10.9 );
setEffRotateKey( spep_5 + 36, ctga, -14.9 );
setEffRotateKey( spep_5 + 37, ctga, -14.9 );
setEffRotateKey( spep_5 + 38, ctga, -10.9 );
setEffRotateKey( spep_5 + 39, ctga, -10.9 );
setEffRotateKey( spep_5 + 40, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 26, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 118 );  --気溜め後ろ向き
changeAnime( spep_5 + 7, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 8.3, 95.5 , 0 );
setMoveKey( spep_5 + 2, 1, 9.2, 94.6 , 0 );
setMoveKey( spep_5 + 4, 1, 10.1, 93.7 , 0 );
setMoveKey( spep_5 + 6, 1, 12.0, 92.9 , 0 );
setMoveKey( spep_5 + 7, 1, -44,  95.9 , 0 );
setMoveKey( spep_5 + 9, 1, -45.1, 94.8 , 0 );
setMoveKey( spep_5 + 10, 1, -45.1, 94.8 , 0 );
setMoveKey( spep_5 + 12, 1, -45.1, 94.5 , 0 );
setMoveKey( spep_5 + 14, 1, -36.4, 70.3 , 0 );
setMoveKey( spep_5 + 16, 1, -21.4, 40.4 , 0 );
setMoveKey( spep_5 + 18, 1, -8.9, 5.8 , 0 );
--setMoveKey( spep_5 + 20, 1, 2, -0.5 , 0 );
--setMoveKey( spep_5 + 21, 1, 9, -20.5 , 0 );
setMoveKey( spep_5 + 20, 1, 14, -41.5 , 0 );
setMoveKey( spep_5 + 21, 1, 25.4, -98.5 , 0 );
setMoveKey( spep_5 + 22, 1, 34.1, -174.1 , 0 );  --ひび割れ
setMoveKey( spep_5 + 100, 1, 34.1, -174.1 , 0 );

setScaleKey( spep_5 + 0, 1, 2.07, 2.07 );
setScaleKey( spep_5 + 2, 1, 2.08, 2.08 );
setScaleKey( spep_5 + 4, 1, 2.09, 2.09 );
setScaleKey( spep_5 + 6, 1, 2.1, 2.1 );
setScaleKey( spep_5 + 7, 1, 0.69, 0.69 );
setScaleKey( spep_5 + 9, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 10, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 12, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 14, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 16, 1, 1.0, 1.0 );
setScaleKey( spep_5 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 20, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 22, 1, 1.42, 1.42 );  --ひび割れ
setScaleKey( spep_5 + 23, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 24, 1, 1.52, 1.52 );
setScaleKey( spep_5 + 25, 1, 1.52, 1.52 );
setScaleKey( spep_5 + 26, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 27, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 28, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 29, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 30, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 31, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 32, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 33, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 34, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 35, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 36, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 37, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 38, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 39, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 40, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 100, 1, 1.54, 1.54 );

setRotateKey( spep_5 + 0, 1, 13.2 );
setRotateKey( spep_5 + 2, 1, 13.3 );
setRotateKey( spep_5 + 4, 1, 13.5 );
setRotateKey( spep_5 + 6, 1, 13.6 );
setRotateKey( spep_5 + 8, 1, 13.6 );
setRotateKey( spep_5 + 9, 1, 0 );
setRotateKey( spep_5 + 14, 1, 0 );
setRotateKey( spep_5 + 16, 1, -14 );
setRotateKey( spep_5 + 18, 1, -20 );
setRotateKey( spep_5 + 20, 1, -29 );
setRotateKey( spep_5 + 22, 1, -39 );  --ひび割れ
setRotateKey( spep_5 + 100, 1, -39 );

-- ** 音 ** --
playSe( spep_5 + 6, 1009 );  --ビンタ
playSe( spep_5 + 22, SE_11 );  --割れる音

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- アイドリング(128F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffectLife( spep_0 + 0, SP_01, 128, 0x100, -1, 0, 0, 0 );  --アイドリング(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 128, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 128, idling, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 128, idling, 255 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 128, idling, 0 );

-- ** 瞬間移動 ** --
idou1 = entryEffectLife( spep_0 + 102, 700, 12, 0x100, -1, 0, 0, -100 );  --瞬間移動
setEffMoveKey( spep_0 + 102, idou1, 0, -100 , 0 );
setEffMoveKey( spep_0 + 114, idou1, 0, -100 , 0 );
setEffScaleKey( spep_0 + 102, idou1, 2.0, 2.0 );
setEffScaleKey( spep_0 + 114, idou1, 2.0, 2.0 );
setEffAlphaKey( spep_0 + 102, idou1, 255 );
setEffAlphaKey( spep_0 + 114, idou1, 255 );
setEffRotateKey( spep_0 + 102, idou1, 0 );
setEffRotateKey( spep_0 + 114, idou1, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 128, 0x100, -1, 0, 0, -100 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 128, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, -100 , 0 );
setEffMoveKey( spep_0 + 128, shuchusen1, 0, -100 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 128, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 128, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 128, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 14,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 14, ctgogo, 70, 10 );

setEffMoveKey( spep_0 + 14, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 84, ctgogo, -8.5, 515.5 , 0 );

setEffScaleKey( spep_0 + 14, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 84, ctgogo, -0.7, 0.7 );

setEffRotateKey( spep_0 + 14, ctgogo, 0 );
setEffRotateKey( spep_0 + 84, ctgogo, 0 );

setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );

ctsyun1 = entryEffectLife( spep_0 + 102,  10011, 10, 0x100, -1, 0, 8.1, 160 );  --シュン
setEffMoveKey( spep_0 + 102, ctsyun1, 8.1, 160 , 0 );
setEffMoveKey( spep_0 + 110, ctsyun1, 8.1, 160 , 0 );
setEffMoveKey( spep_0 + 112, ctsyun1, 8.2, 160 , 0 );

setEffScaleKey( spep_0 + 102, ctsyun1, 1.62, 1.62 );
setEffScaleKey( spep_0 + 110, ctsyun1, 1.62, 1.62 );
setEffScaleKey( spep_0 + 112, ctsyun1, 1.62, 1.65 );

setEffRotateKey( spep_0 + 102, ctsyun1, 0 );
setEffRotateKey( spep_0 + 112, ctsyun1, 0 );

setEffAlphaKey( spep_0 + 102, ctsyun1, 10 );
setEffAlphaKey( spep_0 + 104, ctsyun1, 92 );
setEffAlphaKey( spep_0 + 106, ctsyun1, 173 );
setEffAlphaKey( spep_0 + 108, ctsyun1, 255 );
setEffAlphaKey( spep_0 + 110, ctsyun1, 128 );
setEffAlphaKey( spep_0 + 112, ctsyun1, 26 );

-- ** 音 ** --
playSe( spep_0 + 14, SE_04 );  --ゴゴゴ
playSe( spep_0 + 102, 43 );  --瞬間移動

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 128, 0, 0, 0, 0, 210 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 112, 14, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 128;

------------------------------------------------------
-- パンチ、キック(120F)
------------------------------------------------------

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0,  914, 118, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 118, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 118, ryusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 118, ryusen1, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1, 0 );
setEffAlphaKey( spep_1 + 90, ryusen1, 0 );
setEffAlphaKey( spep_1 + 96, ryusen1, 255 );
setEffAlphaKey( spep_1 + 118, ryusen1, 255 );

-- ** エフェクト等 ** --
kick = entryEffectLife( spep_1 + 0, SP_02, 118, 0x80, -1, 0, 0, 0 );  --キック(ef_002)
setEffMoveKey( spep_1 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_1 + 118, kick, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_1 + 118, kick, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick, 0 );
setEffRotateKey( spep_1 + 118, kick, 0 );
setEffAlphaKey( spep_1 + 0, kick, 255 );
setEffAlphaKey( spep_1 + 118, kick, 255 );

punch = entryEffectLife( spep_1 + 0, SP_03, 118, 0x100, -1, 0, 0, 0 );  --パンチ(ef_003)
setEffMoveKey( spep_1 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_1 + 118, punch, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_1 + 118, punch, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch, 0 );
setEffRotateKey( spep_1 + 118, punch, 0 );
setEffAlphaKey( spep_1 + 0, punch, 255 );
setEffAlphaKey( spep_1 + 118, punch, 255 );

-- ** 瞬間移動 ** --
idou2 = entryEffectLife( spep_1 + 12, 700, 12, 0x100, -1, 0, -160, -255.4 );  --瞬間移動
setEffMoveKey( spep_1 + 12, idou2, -160, -255.4 , 0 );
setEffMoveKey( spep_1 + 24, idou2, -160, -255.4 , 0 );
setEffScaleKey( spep_1 + 12, idou2, 2.0, 2.0 );
setEffScaleKey( spep_1 + 24, idou2, 2.0, 2.0 );
setEffAlphaKey( spep_1 + 12, idou2, 255 );
setEffAlphaKey( spep_1 + 24, idou2, 255 );
setEffRotateKey( spep_1 + 12, idou2, 0 );
setEffRotateKey( spep_1 + 24, idou2, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0,  906, 90, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 25 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctsyun2 = entryEffectLife( spep_1 + 12,  10011, 12, 0x100, -1, 0, -223.8, 26 );  --シュン
setEffMoveKey( spep_1 + 12, ctsyun2, -223.8, 26 , 0 );
setEffMoveKey( spep_1 + 20, ctsyun2, -223.8, 26 , 0 );
setEffMoveKey( spep_1 + 22, ctsyun2, -223.7, 26 , 0 );
setEffMoveKey( spep_1 + 24, ctsyun2, -223.7, 26 , 0 );

setEffScaleKey( spep_1 + 12, ctsyun2, 1.62, 1.62 );
setEffScaleKey( spep_1 + 20, ctsyun2, 1.62, 1.62 );
setEffScaleKey( spep_1 + 22, ctsyun2, 1.62, 1.63 );
setEffScaleKey( spep_1 + 24, ctsyun2, 1.62, 1.65 );

setEffRotateKey( spep_1 + 12, ctsyun2, 0 );
setEffRotateKey( spep_1 + 24, ctsyun2, 0 );

setEffAlphaKey( spep_1 + 12, ctsyun2, 10 );
setEffAlphaKey( spep_1 + 14, ctsyun2, 132 );
setEffAlphaKey( spep_1 + 16, ctsyun2, 255 );
setEffAlphaKey( spep_1 + 18, ctsyun2, 191 );
setEffAlphaKey( spep_1 + 20, ctsyun2, 128 );
setEffAlphaKey( spep_1 + 22, ctsyun2, 64 );
setEffAlphaKey( spep_1 + 24, ctsyun2, 0 );

ctexc = entryEffectLife( spep_1 + 12,  10000, 12, 0x100, -1, 0, 115.1, 227.6 );  --!!
setEffMoveKey( spep_1 + 12, ctexc, 115.1, 227.6 , 0 );
setEffMoveKey( spep_1 + 14, ctexc, 121.5, 236.6 , 0 );
setEffMoveKey( spep_1 + 16, ctexc, 120.2, 239.4 , 0 );
setEffMoveKey( spep_1 + 18, ctexc, 116.8, 233.4 , 0 );
setEffMoveKey( spep_1 + 20, ctexc, 120.5, 236.7 , 0 );
setEffMoveKey( spep_1 + 22, ctexc, 124.4, 244 , 0 );
setEffMoveKey( spep_1 + 24, ctexc, 118.2, 239.4 , 0 );

setEffScaleKey( spep_1 + 12, ctexc, 0.98, 1 );
setEffScaleKey( spep_1 + 14, ctexc, 1.32, 1.34 );
setEffScaleKey( spep_1 + 16, ctexc, 1.66, 1.68 );
setEffScaleKey( spep_1 + 18, ctexc, 1.34, 1.36 );
setEffScaleKey( spep_1 + 20, ctexc, 1.49, 1.51 );
setEffScaleKey( spep_1 + 22, ctexc, 1.64, 1.66 );
setEffScaleKey( spep_1 + 24, ctexc, 1.64, 1.66 );

setEffRotateKey( spep_1 + 12, ctexc, 10.5 );
setEffRotateKey( spep_1 + 24, ctexc, 10.5 );

setEffAlphaKey( spep_1 + 12, ctexc, 255 );
setEffAlphaKey( spep_1 + 24, ctexc, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );  --待機正面向き

setMoveKey( spep_1 + 0, 1, 30.1, -6.3 , 0 );
setMoveKey( spep_1 + 12, 1, 30.1, -6.3 , 0 );
setMoveKey( spep_1 + 14, 1, 30.2, -6.3 , 0 );
setMoveKey( spep_1 + 16, 1, 30.2, -6.3 , 0 );
setMoveKey( spep_1 + 18, 1, 30.3, -6.3 , 0 );
setMoveKey( spep_1 + 20, 1, 30.4, -6.3 , 0 );
setMoveKey( spep_1 + 22, 1, 30.5, -6.3 , 0 );
setMoveKey( spep_1 + 24, 1, 30.5, -6.3 , 0 );

setScaleKey( spep_1 + 0, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 24, 1, 2.12, 2.12 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 24, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 118, 0, 0, 0, 0, 210 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 12, 43 );  --瞬間移動

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 24; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( spep_1 + 0, 1, 100 );  --待機正面向き

setMoveKey( SP_dodge + 0, 1, 30.5, -6.3 , 0 );
setMoveKey( SP_dodge + 2, 1, 30.5, -6.3 , 0 );
setMoveKey( SP_dodge + 4, 1, 30.6, -6.3 , 0 );
setMoveKey( SP_dodge + 6, 1, 31.0, -6.3 , 0 );
setMoveKey( SP_dodge + 8, 1, 31.2, -6.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 32.2, -6.3 , 0 );

setScaleKey( SP_dodge + 0, 1, 2.12, 2.12 );
setScaleKey( SP_dodge + 10, 1, 2.12, 2.12 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
-- ** 瞬間移動 ** --
idou3 = entryEffectLife( spep_1 + 56, 700, 12, 0x100, -1, 0, -20, -115.4 );  --瞬間移動
setEffMoveKey( spep_1 + 56, idou3, -20, -115.4 , 0 );
setEffMoveKey( spep_1 + 68, idou3, -20, -115.4 , 0 );
setEffScaleKey( spep_1 + 56, idou3, 2.0, 2.0 );
setEffScaleKey( spep_1 + 68, idou3, 2.0, 2.0 );
setEffAlphaKey( spep_1 + 56, idou3, 255 );
setEffAlphaKey( spep_1 + 68, idou3, 255 );
setEffRotateKey( spep_1 + 56, idou3, 0 );
setEffRotateKey( spep_1 + 68, idou3, 0 );

idou4 = entryEffectLife( spep_1 + 70, 700, 12, 0x80, -1, 0, 260, 44.6 );  --瞬間移動
setEffMoveKey( spep_1 + 70, idou4, 260, 44.6 , 0 );
setEffMoveKey( spep_1 + 82, idou4, 260, 44.6 , 0 );
setEffScaleKey( spep_1 + 70, idou4, 2.0, 2.0 );
setEffScaleKey( spep_1 + 82, idou4, 2.0, 2.0 );
setEffAlphaKey( spep_1 + 70, idou4, 255 );
setEffAlphaKey( spep_1 + 82, idou4, 255 );
setEffRotateKey( spep_1 + 70, idou4, 0 );
setEffRotateKey( spep_1 + 82, idou4, 0 );

idou5 = entryEffectLife( spep_1 + 94, 700, 12, 0x80, -1, 0, 240, 84.6 );  --瞬間移動
setEffMoveKey( spep_1 + 94, idou5, 240, 84.6 , 0 );
setEffMoveKey( spep_1 + 106, idou5, 240, 84.6 , 0 );
setEffScaleKey( spep_1 + 94, idou5, 2.0, 2.0 );
setEffScaleKey( spep_1 + 106, idou5, 2.0, 2.0 );
setEffAlphaKey( spep_1 + 94, idou5, 255 );
setEffAlphaKey( spep_1 + 106, idou5, 255 );
setEffRotateKey( spep_1 + 94, idou5, 0 );
setEffRotateKey( spep_1 + 106, idou5, 0 );

-- ** 書き文字エントリー ** --
ctsyun3 = entryEffectLife( spep_1 + 70,  10011, 12, 0x100, -1, 0, 198.1, 281.8 );  --シュン
setEffMoveKey( spep_1 + 70, ctsyun3, 198.1, 281.8 , 0 );
setEffMoveKey( spep_1 + 72, ctsyun3, 198.1, 298.4 , 0 );
setEffMoveKey( spep_1 + 78, ctsyun3, 198.1, 298.4 , 0 );
setEffMoveKey( spep_1 + 80, ctsyun3, 198, 298.4 , 0 );
setEffMoveKey( spep_1 + 82, ctsyun3, 198, 298.4 , 0 );

setEffScaleKey( spep_1 + 70, ctsyun3, 1.34, 1.34 );
setEffScaleKey( spep_1 + 78, ctsyun3, 1.34, 1.34 );
setEffScaleKey( spep_1 + 80, ctsyun3, 1.34, 1.36 );
setEffScaleKey( spep_1 + 82, ctsyun3, 1.34, 1.37 );

setEffRotateKey( spep_1 + 70, ctsyun3, 0 );
setEffRotateKey( spep_1 + 82, ctsyun3, 0 );

setEffAlphaKey( spep_1 + 70, ctsyun3, 10 );
setEffAlphaKey( spep_1 + 72, ctsyun3, 255 );
setEffAlphaKey( spep_1 + 74, ctsyun3, 213 );
setEffAlphaKey( spep_1 + 76, ctsyun3, 170 );
setEffAlphaKey( spep_1 + 78, ctsyun3, 128 );
setEffAlphaKey( spep_1 + 80, ctsyun3, 64 );
setEffAlphaKey( spep_1 + 82, ctsyun3, 0 );

ctsyun4 = entryEffectLife( spep_1 + 100,  10011, 8, 0x100, -1, 0, 248.1, 280.1 );  --シュン
setEffMoveKey( spep_1 + 100, ctsyun4, 248.1, 280.1 , 0 );
setEffMoveKey( spep_1 + 106, ctsyun4, 248.1, 280.1 , 0 );
setEffMoveKey( spep_1 + 108, ctsyun4, 248.2, 280.1 , 0 );

setEffScaleKey( spep_1 + 100, ctsyun4, 1.28, 1.28 );
setEffScaleKey( spep_1 + 106, ctsyun4, 1.28, 1.28 );
setEffScaleKey( spep_1 + 108, ctsyun4, 1.28, 1.3 );

setEffRotateKey( spep_1 + 100, ctsyun4, 0 );
setEffRotateKey( spep_1 + 108, ctsyun4, 0 );

setEffAlphaKey( spep_1 + 100, ctsyun4, 10 );
setEffAlphaKey( spep_1 + 102, ctsyun4, 132 );
setEffAlphaKey( spep_1 + 104, ctsyun4, 255 );
setEffAlphaKey( spep_1 + 106, ctsyun4, 128 );
setEffAlphaKey( spep_1 + 108, ctsyun4, 26 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 118, 1, 0 );
changeAnime( spep_1 + 35, 1, 108 );  --ダメージ（吹き飛び）
changeAnime( spep_1 + 90 -3, 1, 106 );  --ダメージ

setMoveKey( spep_1 + 26, 1, 30.5, -6.3 , 0 );
setMoveKey( spep_1 + 28, 1, 30.6, -6.3 , 0 );
setMoveKey( spep_1 + 30, 1, 31.0, -6.3 , 0 );
setMoveKey( spep_1 + 32, 1, 31.2, -6.3 , 0 );
setMoveKey( spep_1 + 34, 1, 32.2, -6.3 , 0 );
setMoveKey( spep_1 + 35, 1, 57.6, 1.5 , 0 );
setMoveKey( spep_1 + 36, 1, 57.6, 1.5 , 0 );
setMoveKey( spep_1 + 38, 1, 74, 7.6 , 0 );
setMoveKey( spep_1 + 40, 1, 82, 1.9 , 0 );
setMoveKey( spep_1 + 42, 1, 79.7, 5.4 , 0 );
setMoveKey( spep_1 + 44, 1, 79.8, 5.4 , 0 );
setMoveKey( spep_1 + 46, 1, 80.9, 12 , 0 );
setMoveKey( spep_1 + 48, 1, 87.8, 9.4 , 0 );
setMoveKey( spep_1 + 50, 1, 104.1, 24.3 , 0 );
setMoveKey( spep_1 + 52, 1, 115.8, 19.9 , 0 );
setMoveKey( spep_1 + 54, 1, 116, 24.3 , 0 );
setMoveKey( spep_1 + 56, 1, 117.9, 31.8 , 0 );
setMoveKey( spep_1 + 58, 1, 121.8, 23.1 , 0 );
setMoveKey( spep_1 + 60, 1, 118.2, 32 , 0 );
setMoveKey( spep_1 + 62, 1, 121.8, 23.1 , 0 );
setMoveKey( spep_1 + 64, 1, 117.9, 25.3 , 0 );
setMoveKey( spep_1 + 66, 1, 118.2, 32 , 0 );
setMoveKey( spep_1 + 68, 1, 121.8, 23.1 , 0 );
setMoveKey( spep_1 + 70, 1, 118, 29.9 , 0 );
setMoveKey( spep_1 + 72, 1, 118.9, 30.1 , 0 );
setMoveKey( spep_1 + 74, 1, 119.8, 30.3 , 0 );
setMoveKey( spep_1 + 76, 1, 120.7, 30.5 , 0 );
setMoveKey( spep_1 + 78, 1, 121.7, 30.7 , 0 );
setMoveKey( spep_1 + 80, 1, 122.6, 30.9 , 0 );
setMoveKey( spep_1 + 82, 1, 123.5, 31.1 , 0 );
setMoveKey( spep_1 + 84, 1, 124.4, 31.3 , 0 );
setMoveKey( spep_1 + 86, 1, 125.3, 31.5 , 0 );
--setMoveKey( spep_1 + 89, 1, 126.2, 31.7 , 0 );
setMoveKey( spep_1 + 90 -3, 1, 43.3, 18.4 , 0 );
setMoveKey( spep_1 + 90 -2, 1, 43.3, 18.4 , 0 );
setMoveKey( spep_1 + 92 -2, 1, -46.9, 20.9 , 0 );
setMoveKey( spep_1 + 94 -2, 1, -108.4, 14.9 , 0 );
setMoveKey( spep_1 + 96 -2, 1, -155.7, 18.3 , 0 );
setMoveKey( spep_1 + 98 -2, 1, -202.3, 20.7 , 0 );
setMoveKey( spep_1 + 100 -2, 1, -226.9, 14.8 , 0 );
setMoveKey( spep_1 + 102 -2, 1, -243.9, 18.3 , 0 );
setMoveKey( spep_1 + 104 -2, 1, -266, 20.6 , 0 );
setMoveKey( spep_1 + 106 -2, 1, -271, 14.8 , 0 );
setMoveKey( spep_1 + 108 -2, 1, -272.9, 18.3 , 0 );
setMoveKey( spep_1 + 110 -2, 1, -283.9, 20.6 , 0 );
setMoveKey( spep_1 + 112 -2, 1, -281.1, 14.8 , 0 );
setMoveKey( spep_1 + 114 -2, 1, -278, 18.3 , 0 );
setMoveKey( spep_1 + 116 -2, 1, -286.1, 20.6 , 0 );
setMoveKey( spep_1 + 118, 1, -286.1, 20.6 , 0 );

setScaleKey( spep_1 + 26, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 35, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 36, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 68, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 70, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 89 -2, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 90 -2, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 92 -2, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 94 -2, 1, 2.25, 2.25 );
setScaleKey( spep_1 + 96 -2, 1, 2.26, 2.26 );
setScaleKey( spep_1 + 98 -2, 1, 2.27, 2.27 );
setScaleKey( spep_1 + 102 -2, 1, 2.27, 2.27 );
setScaleKey( spep_1 + 104 -2, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 118, 1, 2.28, 2.28 );

setRotateKey( spep_1 + 26, 1, 0 );
setRotateKey( spep_1 + 34, 1, 0 );
setRotateKey( spep_1 + 35, 1, -5.8 );
setRotateKey( spep_1 + 36, 1, -5.8 );
setRotateKey( spep_1 + 38, 1, -8 );
setRotateKey( spep_1 + 40, 1, -8.8 );
setRotateKey( spep_1 + 42, 1, -9 );
setRotateKey( spep_1 + 48, 1, -9 );
setRotateKey( spep_1 + 50, 1, -12.4 );
setRotateKey( spep_1 + 52, 1, -14.2 );
setRotateKey( spep_1 + 54, 1, -15.1 );
setRotateKey( spep_1 + 56, 1, -15.4 );
setRotateKey( spep_1 + 58, 1, -15.5 );
setRotateKey( spep_1 + 68, 1, -15.5 );
setRotateKey( spep_1 + 70, 1, -15.1 );
setRotateKey( spep_1 + 78, 1, -15.1 );
setRotateKey( spep_1 + 80, 1, -15.2 );
setRotateKey( spep_1 + 89 -3, 1, -15.2 );
setRotateKey( spep_1 + 90 -3, 1, -67.5 );
setRotateKey( spep_1 + 90 -2, 1, -67.5 );
setRotateKey( spep_1 + 92 -2, 1, -68.3 );
setRotateKey( spep_1 + 94 -2, 1, -68.9 );
setRotateKey( spep_1 + 96 -2, 1, -69.4 );
setRotateKey( spep_1 + 98 -2, 1, -69.8 );
setRotateKey( spep_1 + 100 -2, 1, -70.1 );
setRotateKey( spep_1 + 102 -2, 1, -70.3 );
setRotateKey( spep_1 + 104 -2, 1, -70.4 );
setRotateKey( spep_1 + 106 -2, 1, -70.5 );
setRotateKey( spep_1 + 108 -2, 1, -70.5 );
setRotateKey( spep_1 + 110 -2, 1, -70.6 );
setRotateKey( spep_1 + 118, 1, -70.6 );

-- ** ホワイトフェード ** --
entryFade( spep_1 + 108, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 36, 1000 );  --パンチ１
playSe( spep_1 + 46, 1000 );  --パンチ２
playSe( spep_1 + 70, 43 );  --瞬間移動
playSe( spep_1 + 88, 1001 );  --キック
playSe( spep_1 + 100, 43 );  --瞬間移動

-- ** 次の準備 ** --
spep_2 = spep_1 + 120;

------------------------------------------------------
-- 敵目前瞬間移動(40F)
------------------------------------------------------

-- ** エフェクト等 ** --
syunidou = entryEffectLife( spep_2 + 0, SP_04r, 40, 0x80, -1, 0, 0, 0 );  --敵目前瞬間移動(ef_004r)
setEffMoveKey( spep_2 + 0, syunidou, 0, 0 , 0 );
setEffMoveKey( spep_2 + 40, syunidou, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, syunidou, 1.0, 1.0 );
setEffScaleKey( spep_2 + 40, syunidou, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, syunidou, 0 );
setEffRotateKey( spep_2 + 40, syunidou, 0 );
setEffAlphaKey( spep_2 + 0, syunidou, 255 );
setEffAlphaKey( spep_2 + 40, syunidou, 255 );

-- ** 瞬間移動 ** --
idou6 = entryEffectLife( spep_2 + 12, 700, 12, 0x80, -1, 0, -100, 104.6 );  --瞬間移動
setEffMoveKey( spep_2 + 12, idou6, -100, 104.6, 0 );
setEffMoveKey( spep_2 + 24, idou6, -100, 104.6, 0 );
setEffScaleKey( spep_2 + 12, idou6, 2.0, 2.0 );
setEffScaleKey( spep_2 + 24, idou6, 2.0, 2.0 );
setEffAlphaKey( spep_2 + 12, idou6, 255 );
setEffAlphaKey( spep_2 + 24, idou6, 255 );
setEffRotateKey( spep_2 + 12, idou6, 0 );
setEffRotateKey( spep_2 + 24, idou6, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 40, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 40, 25 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 40, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 40, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 40, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 40, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctsyun5 = entryEffectLife( spep_2 + 8,  10011, 12, 0x100, -1, 0, -115.8, 286.6 );  --シュン
setEffMoveKey( spep_2 + 8, ctsyun5, -115.8, 286.6 , 0 );
setEffMoveKey( spep_2 + 10, ctsyun5, -115.8, 287.2 , 0 );
setEffMoveKey( spep_2 + 12, ctsyun5, -115.8, 287.9 , 0 );
setEffMoveKey( spep_2 + 16, ctsyun5, -115.8, 287.9 , 0 );
setEffMoveKey( spep_2 + 18, ctsyun5, -115.7, 287.9 , 0 );
setEffMoveKey( spep_2 + 20, ctsyun5, -115.7, 287.9 , 0 );

setEffScaleKey( spep_2 + 8, ctsyun5, 1.62, 1.57 );
setEffScaleKey( spep_2 + 10, ctsyun5, 1.62, 1.59 );
setEffScaleKey( spep_2 + 12, ctsyun5, 1.62, 1.62 );
setEffScaleKey( spep_2 + 16, ctsyun5, 1.62, 1.62 );
setEffScaleKey( spep_2 + 18, ctsyun5, 1.62, 1.64 );
setEffScaleKey( spep_2 + 20, ctsyun5, 1.62, 1.65 );

setEffRotateKey( spep_2 + 8, ctsyun5, 0 );
setEffRotateKey( spep_2 + 20, ctsyun5, 0 );

setEffAlphaKey( spep_2 + 8, ctsyun5, 85 );
setEffAlphaKey( spep_2 + 10, ctsyun5, 170 );
setEffAlphaKey( spep_2 + 12, ctsyun5, 255 );
setEffAlphaKey( spep_2 + 14, ctsyun5, 191 );
setEffAlphaKey( spep_2 + 16, ctsyun5, 128 );
setEffAlphaKey( spep_2 + 18, ctsyun5, 64 );
setEffAlphaKey( spep_2 + 20, ctsyun5, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 40, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );  --気溜め後ろ向き

setMoveKey( spep_2 + 0, 1, 114.5, -15.3 , 0 );
setMoveKey( spep_2 + 2, 1, 113.9, -15.3 , 0 );
setMoveKey( spep_2 + 4, 1, 112.5, -15.3 , 0 );
setMoveKey( spep_2 + 6, 1, 112.9, -15.3 , 0 );
setMoveKey( spep_2 + 8, 1, 112.0, -15.3 , 0 );
setMoveKey( spep_2 + 10, 1, 111.3, -15.3 , 0 );
setMoveKey( spep_2 + 12, 1, 110.4, -15.3 , 0 );
setMoveKey( spep_2 + 14, 1, 110.7, -15.3 , 0 );
setMoveKey( spep_2 + 16, 1, 108.4, -15.3 , 0 );
setMoveKey( spep_2 + 18, 1, 106.8, -15.3 , 0 );
setMoveKey( spep_2 + 20, 1, 106.2, -15.3 , 0 );
setMoveKey( spep_2 + 22, 1, 105.7, -15.3 , 0 );
setMoveKey( spep_2 + 24, 1, 104.7, -15.3 , 0 );
setMoveKey( spep_2 + 26, 1, 103.9, -15.3 , 0 );
setMoveKey( spep_2 + 28, 1, 103.5, -15.3 , 0 );
setMoveKey( spep_2 + 30, 1, 102.7, -15.3 , 0 );
setMoveKey( spep_2 + 32, 1, 101.7, -15.3 , 0 );
setMoveKey( spep_2 + 34, 1, 100.5, -15.3 , 0 );
setMoveKey( spep_2 + 36, 1, 100.1, -15.3 , 0 );
setMoveKey( spep_2 + 38, 1, 99.1, -15.3 , 0 );
setMoveKey( spep_2 + 40, 1, 98.8, -15.3 , 0 );

setScaleKey( spep_2 + 0, 1, 2.10, 2.10 );
setScaleKey( spep_2 + 40, 1, 2.10, 2.10 );

setRotateKey( spep_2 + 0, 1, 0.3 );
setRotateKey( spep_2 + 2, 1, 0.5 );
setRotateKey( spep_2 + 4, 1, 0.8 );
setRotateKey( spep_2 + 6, 1, 1.9 );
setRotateKey( spep_2 + 8, 1, 4.0 );
setRotateKey( spep_2 + 10, 1, 6.2 );
setRotateKey( spep_2 + 12, 1, 7.8 );
setRotateKey( spep_2 + 14, 1, 8.4 );
setRotateKey( spep_2 + 16, 1, 8.4 );
setRotateKey( spep_2 + 18, 1, 7.9 );
setRotateKey( spep_2 + 20, 1, 6.9 );
setRotateKey( spep_2 + 22, 1, 5.6 );
setRotateKey( spep_2 + 24, 1, 4.4 );
setRotateKey( spep_2 + 26, 1, 3.4 );
setRotateKey( spep_2 + 28, 1, 2.8 );
setRotateKey( spep_2 + 30, 1, 2.6 );
setRotateKey( spep_2 + 32, 1, 2.7 );
setRotateKey( spep_2 + 34, 1, 3.3 );
setRotateKey( spep_2 + 36, 1, 4.2 );
setRotateKey( spep_2 + 38, 1, 5.3 );
setRotateKey( spep_2 + 40, 1, 5.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 40, 0, 0, 0, 0, 210 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 34, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 8, 43 );  --瞬間移動

-- ** 次の準備 ** --
spep_3 = spep_2 + 40;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen4, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 90, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen4, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- ビンタ構え(28F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_4 + 0, SP_05r, 28, 0x100, -1, 0, 0, 0 );  --ビンタ構え(ef_005r)
setEffMoveKey( spep_4 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_4 + 28, kamae, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_4 + 28, kamae, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kamae, 0 );
setEffRotateKey( spep_4 + 28, kamae, 0 );
setEffAlphaKey( spep_4 + 0, kamae, 255 );
setEffAlphaKey( spep_4 + 28, kamae, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_4 + 0,  913, 28, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_4 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 28, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 1.6, 1.6 );
setEffScaleKey( spep_4 + 28, ryusen2, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, ryusen2, -133.9 );
setEffRotateKey( spep_4 + 28, ryusen2, -133.9 );

setEffAlphaKey( spep_4 + 0, ryusen2, 255 );
setEffAlphaKey( spep_4 + 28, ryusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 28, 0, 0, 0, 0, 210 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 22, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --


-- ** 次の準備 ** --
spep_5 = spep_4 + 28;

------------------------------------------------------
-- ビンタ(100F)
------------------------------------------------------

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_5 + 0,  921, 36, 0x80, -1, 0, -4, -8.1 );  --流線
setEffMoveKey( spep_5 + 0, ryusen3, -4, -8.1 , 0 );
setEffMoveKey( spep_5 + 36, ryusen3, -4, -8.1 , 0 );

setEffScaleKey( spep_5 + 0, ryusen3, 1.83, 1.3 );
setEffScaleKey( spep_5 + 2, ryusen3, 1.83, 1.31 );
setEffScaleKey( spep_5 + 36, ryusen3, 1.83, 1.31 );

setEffRotateKey( spep_5 + 0, ryusen3, -123.1 );
setEffRotateKey( spep_5 + 36, ryusen3, -123.1 );

setEffAlphaKey( spep_5 + 0, ryusen3, 255 );
setEffAlphaKey( spep_5 + 20, ryusen3, 255 );
setEffAlphaKey( spep_5 + 22, ryusen3, 223 );
setEffAlphaKey( spep_5 + 24, ryusen3, 191 );
setEffAlphaKey( spep_5 + 26, ryusen3, 159 );
setEffAlphaKey( spep_5 + 28, ryusen3, 128 );
setEffAlphaKey( spep_5 + 30, ryusen3, 96 );
setEffAlphaKey( spep_5 + 32, ryusen3, 64 );
setEffAlphaKey( spep_5 + 34, ryusen3, 32 );
setEffAlphaKey( spep_5 + 36, ryusen3, 0 );

-- ** エフェクト等 ** --
binta = entryEffect( spep_5 + 0, SP_06r, 0x80, -1, 0, 0, 0 );  --ビンタ(ef_006r)
setEffMoveKey( spep_5 + 0, binta, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, binta, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, binta, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, binta, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, binta, 0 );
setEffRotateKey( spep_5 + 100, binta, 0 );
setEffAlphaKey( spep_5 + 0, binta, 255 );
setEffAlphaKey( spep_5 + 100, binta, 255 );

hiteff = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --ビンタHitエフェクト(ef_007)
setEffMoveKey( spep_5 + 0, hiteff, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, hiteff, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hiteff, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hiteff, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hiteff, 0 );
setEffRotateKey( spep_5 + 100, hiteff, 0 );
setEffAlphaKey( spep_5 + 0, hiteff, 255 );
setEffAlphaKey( spep_5 + 100, hiteff, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 14,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 14, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 14, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 14, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 14, hibiware, 0 );
setEffAlphaKey( spep_5 + 25, hibiware, 0 );
setEffAlphaKey( spep_5 + 26, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 + 26,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 26, shuchusen5, 32, 25 );

setEffMoveKey( spep_5 + 26, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 26, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 58, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 26, shuchusen5, 0 );
setEffRotateKey( spep_5 + 58, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 26, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 40, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 42, shuchusen5, 252 );
setEffAlphaKey( spep_5 + 44, shuchusen5, 242 );
setEffAlphaKey( spep_5 + 46, shuchusen5, 227 );
setEffAlphaKey( spep_5 + 48, shuchusen5, 205 );
setEffAlphaKey( spep_5 + 50, shuchusen5, 176 );
setEffAlphaKey( spep_5 + 52, shuchusen5, 142 );
setEffAlphaKey( spep_5 + 54, shuchusen5, 101 );
setEffAlphaKey( spep_5 + 56, shuchusen5, 54 );
setEffAlphaKey( spep_5 + 58, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_5 + 26,  1657, 74, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 26, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 26, shuchusen6, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen6, 1, 1 );

setEffRotateKey( spep_5 + 26, shuchusen6, 0 );
setEffRotateKey( spep_5 + 100, shuchusen6, 0 );

setEffAlphaKey( spep_5 + 26, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 26,  10005, 74, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 26, ctga, 14, 20 );

setEffMoveKey( spep_5 + 26, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 40, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 26, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 29, ctga, -14.9 );
setEffRotateKey( spep_5 + 30, ctga, -10.9 );
setEffRotateKey( spep_5 + 31, ctga, -10.9 );
setEffRotateKey( spep_5 + 32, ctga, -14.9 );
setEffRotateKey( spep_5 + 33, ctga, -14.9 );
setEffRotateKey( spep_5 + 34, ctga, -10.9 );
setEffRotateKey( spep_5 + 35, ctga, -10.9 );
setEffRotateKey( spep_5 + 36, ctga, -14.9 );
setEffRotateKey( spep_5 + 37, ctga, -14.9 );
setEffRotateKey( spep_5 + 38, ctga, -10.9 );
setEffRotateKey( spep_5 + 39, ctga, -10.9 );
setEffRotateKey( spep_5 + 40, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 26, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 118 );  --気溜め後ろ向き
changeAnime( spep_5 + 7, 1, 7 );  --ダメージ 手前(味方側)

setMoveKey( spep_5 + 0, 1, 8.3, 95.5 , 0 );
setMoveKey( spep_5 + 2, 1, 9.2, 94.6 , 0 );
setMoveKey( spep_5 + 4, 1, 10.1, 93.7 , 0 );
setMoveKey( spep_5 + 6, 1, 12.0, 92.9 , 0 );
setMoveKey( spep_5 + 7, 1, -44,  95.9 , 0 );
setMoveKey( spep_5 + 9, 1, -45.1, 94.8 , 0 );
setMoveKey( spep_5 + 10, 1, -45.1, 94.8 , 0 );
setMoveKey( spep_5 + 12, 1, -45.1, 94.5 , 0 );
setMoveKey( spep_5 + 14, 1, -36.4, 70.3 , 0 );
setMoveKey( spep_5 + 16, 1, -21.4, 40.4 , 0 );
setMoveKey( spep_5 + 18, 1, -8.9, 5.8 , 0 );
--setMoveKey( spep_5 + 20, 1, 2, -0.5 , 0 );
--setMoveKey( spep_5 + 21, 1, 9, -20.5 , 0 );
setMoveKey( spep_5 + 20, 1, 14, -41.5 , 0 );
setMoveKey( spep_5 + 21, 1, 25.4, -72.5 , 0 );
setMoveKey( spep_5 + 22, 1, 34.1, -104.1 , 0 );  --ひび割れ
setMoveKey( spep_5 + 100, 1, 34.1, -104.1 , 0 );

setScaleKey( spep_5 + 0, 1, 2.07, 2.07 );
setScaleKey( spep_5 + 2, 1, 2.08, 2.08 );
setScaleKey( spep_5 + 4, 1, 2.09, 2.09 );
setScaleKey( spep_5 + 6, 1, 2.1, 2.1 );
setScaleKey( spep_5 + 7, 1, 0.69, 0.69 );
setScaleKey( spep_5 + 9, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 10, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 12, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 14, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 16, 1, 1.0, 1.0 );
setScaleKey( spep_5 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 20, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 22, 1, 1.42, 1.42 );  --ひび割れ
setScaleKey( spep_5 + 23, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 24, 1, 1.52, 1.52 );
setScaleKey( spep_5 + 25, 1, 1.52, 1.52 );
setScaleKey( spep_5 + 26, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 27, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 28, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 29, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 30, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 31, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 32, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 33, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 34, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 35, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 36, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 37, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 38, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 39, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 40, 1, 1.54, 1.54 );
setScaleKey( spep_5 + 100, 1, 1.54, 1.54 );

setRotateKey( spep_5 + 0, 1, 13.2 );
setRotateKey( spep_5 + 2, 1, 13.3 );
setRotateKey( spep_5 + 4, 1, 13.5 );
setRotateKey( spep_5 + 6, 1, 13.6 );
setRotateKey( spep_5 + 7, 1, -85 );
setRotateKey( spep_5 + 8, 1, -85 );
setRotateKey( spep_5 + 9, 1, -96 );
setRotateKey( spep_5 + 14, 1, -100 );
setRotateKey( spep_5 + 16, 1, -114 );
setRotateKey( spep_5 + 18, 1, -120 );
setRotateKey( spep_5 + 20, 1, -129 );
setRotateKey( spep_5 + 22, 1, -141 );  --ひび割れ
setRotateKey( spep_5 + 100, 1, -141 );

-- ** 音 ** --
playSe( spep_5 + 6, 1009 );  --ビンタ
playSe( spep_5 + 22, SE_11 );  --割れる音

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );

end



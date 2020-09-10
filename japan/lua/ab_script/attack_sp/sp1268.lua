--孫悟空(少年期)&則巻アラレ_めちゃんこパワースペシャル

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
SP_01 = 153159;  --筋斗雲飛び降り
SP_02 = 153160;  --筋斗雲飛び降り　背景
SP_03 = 153161;  --ジャンプパンチ　手前
SP_04 = 153162;  --ジャンプパンチ　奥
SP_05 = 153163;  --ローリングジャンプ
SP_06 = 153164;  --蹴り落とし　手前
SP_07 = 153165;  --蹴り落とし　奥
SP_08 = 153166;  --蹴り落とし　背景
SP_09 = 153167;  --地面衝突煙　手前
SP_10 = 153168;  --地面衝突煙　奥
SP_11 = 153169;  --着地～ビリビリ
SP_12 = 153170;  --迫るビリビリ
SP_13 = 153171;  --光弾タメ～発射
SP_14 = 153172;  --迫る光弾　手前
SP_15 = 153173;  --迫る光弾　奥
SP_16 = 153174;  --万歳

--敵側
SP_01r = 153175;  --筋斗雲飛び降り　敵側

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
--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_0 = 0;

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_0 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_0 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_0 + 0, shuchusen, 0 );
setEffRotateKey( spep_0 + 90, shuchusen, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen, 255 );
setEffAlphaKey( spep_0 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_0 + 0, SE_05 );

-- ** カードカットイン ** --
speff2 = entryEffect( spep_0 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 94;

------------------------------------------------------
-- 筋斗雲飛び降り(108F)
------------------------------------------------------

-- ** エフェクト等 ** --
tobiori_f = entryEffectLife( spep_1 + 0, SP_01, 108, 0x100, -1, 0, 0, 0 );  --飛び降り　手前(ef_001)
setEffMoveKey( spep_1 + 0, tobiori_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 108, tobiori_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tobiori_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 108, tobiori_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tobiori_f, 0 );
setEffRotateKey( spep_1 + 108, tobiori_f, 0 );
setEffAlphaKey( spep_1 + 0, tobiori_f, 255 );
setEffAlphaKey( spep_1 + 107, tobiori_f, 255 );
setEffAlphaKey( spep_1 + 108, tobiori_f, 0 );

tobiori_b = entryEffectLife( spep_1 + 0, SP_02, 108, 0x80, -1, 0, 0, 0 );  --飛び降り　奥(ef_002)
setEffMoveKey( spep_1 + 0, tobiori_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 108, tobiori_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tobiori_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 108, tobiori_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tobiori_b, 0 );
setEffRotateKey( spep_1 + 108, tobiori_b, 0 );
setEffAlphaKey( spep_1 + 0, tobiori_b, 255 );
setEffAlphaKey( spep_1 + 107, tobiori_b, 255 );
setEffAlphaKey( spep_1 + 108, tobiori_b, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0,  914, 68, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 5.38, 1.37 );
setEffScaleKey( spep_1 + 68, ryusen1, 5.38, 1.37 );

setEffRotateKey( spep_1 + 0, ryusen1, 61 );
setEffRotateKey( spep_1 + 68, ryusen1, 61 );

setEffAlphaKey( spep_1 + 0, ryusen1, 97 );
setEffAlphaKey( spep_1 + 40, ryusen1, 97 );
setEffAlphaKey( spep_1 + 42, ryusen1, 90 );
setEffAlphaKey( spep_1 + 44, ryusen1, 83 );
setEffAlphaKey( spep_1 + 46, ryusen1, 76 );
setEffAlphaKey( spep_1 + 48, ryusen1, 69 );
setEffAlphaKey( spep_1 + 50, ryusen1, 62 );
setEffAlphaKey( spep_1 + 52, ryusen1, 55 );
setEffAlphaKey( spep_1 + 54, ryusen1, 48 );
setEffAlphaKey( spep_1 + 56, ryusen1, 41 );
setEffAlphaKey( spep_1 + 58, ryusen1, 35 );
setEffAlphaKey( spep_1 + 60, ryusen1, 28 );
setEffAlphaKey( spep_1 + 62, ryusen1, 21 );
setEffAlphaKey( spep_1 + 64, ryusen1, 14 );
setEffAlphaKey( spep_1 + 66, ryusen1, 7 );
setEffAlphaKey( spep_1 + 68, ryusen1, 0 );

-- ** 音 ** --
playSe( spep_1 + 2, 63 );  --筋斗雲の音
playSe( spep_1 + 84, 8 );  --向かう音

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 108, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 108;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 94; --エンドフェイズのフレーム数を置き換える

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

------------------------------------------------------
-- シャンプパンチ(60F)
------------------------------------------------------

-- ** エフェクト等 ** --
panshi_f = entryEffectLife( spep_2 + 0, SP_03, 60, 0x100, -1, 0, 0, 0 );  --ジャンプパンチ　手前(ef_003)
setEffMoveKey( spep_2 + 0, panshi_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, panshi_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, panshi_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, panshi_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panshi_f, 0 );
setEffRotateKey( spep_2 + 60, panshi_f, 0 );
setEffAlphaKey( spep_2 + 0, panshi_f, 255 );
setEffAlphaKey( spep_2 + 60, panshi_f, 255 );

panshi_b = entryEffectLife( spep_2 + 0, SP_04, 60, 0x80, -1, 0, 0, 0 );  --ジャンプパンチ　奥(ef_004)
setEffMoveKey( spep_2 + 0, panshi_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, panshi_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, panshi_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, panshi_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panshi_b, 0 );
setEffRotateKey( spep_2 + 60, panshi_b, 0 );
setEffAlphaKey( spep_2 + 0, panshi_b, 255 );
setEffAlphaKey( spep_2 + 60, panshi_b, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 0,  914, 14 -2, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_2 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 14 -2, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 5.38, 1.37 );
setEffScaleKey( spep_2 + 14 -2, ryusen2, 5.38, 1.37 );

setEffRotateKey( spep_2 + 0, ryusen2, -53.1 );
setEffRotateKey( spep_2 + 14 -2, ryusen2, -53.1 );

setEffAlphaKey( spep_2 + 0, ryusen2, 97 );
setEffAlphaKey( spep_2 + 14 -2, ryusen2, 97 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 100 );

setMoveKey( spep_2 + 0, 1, 183.7, 259.9 , 0 );
setMoveKey( spep_2 + 2, 1, 165.5, 234.9 , 0 );
setMoveKey( spep_2 + 4, 1, 147.2, 209.9 , 0 );
setMoveKey( spep_2 + 6, 1, 129, 184.9 , 0 );

setScaleKey( spep_2 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 4, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 6, 1, 0.97, 0.97 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 6, 1, 0 );

a = 3;
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_2 + 16 -a,  10005, 32 +a, 0x100, -1, 0, 123.1, 108.9 );  --ガッ
setEffMoveKey( spep_2 + 16 -a, ctga, 123.1, 108.9 , 0 );
setEffMoveKey( spep_2 + 18 -a, ctga, 132.3, 99.1 , 0 );
setEffMoveKey( spep_2 + 20 -a, ctga, 144.5, 94 , 0 );
setEffMoveKey( spep_2 + 22 -a, ctga, 152.7, 82.9 , 0 );
setEffMoveKey( spep_2 + 24 -a, ctga, 165.8, 79.2 , 0 );
setEffMoveKey( spep_2 + 26 -a, ctga, 164.3, 73.7 , 0 );
setEffMoveKey( spep_2 + 28 -a, ctga, 168.8, 77.1 , 0 );
setEffMoveKey( spep_2 + 30 -a, ctga, 167.2, 71.4 , 0 );
setEffMoveKey( spep_2 + 32 -a, ctga, 171.8, 75.1 , 0 );
setEffMoveKey( spep_2 + 34 -a, ctga, 170, 69.2 , 0 );
setEffMoveKey( spep_2 + 36 -a, ctga, 174.7, 73 , 0 );
setEffMoveKey( spep_2 + 38 -a, ctga, 172.8, 67 , 0 );
setEffMoveKey( spep_2 + 40 -a, ctga, 177.7, 71 , 0 );
setEffMoveKey( spep_2 + 42 -a, ctga, 175.7, 64.7 , 0 );
setEffMoveKey( spep_2 + 44 -a, ctga, 180.6, 68.8 , 0 );
setEffMoveKey( spep_2 + 46 -a, ctga, 178.5, 62.5 , 0 );
setEffMoveKey( spep_2 + 46, ctga, 183.5, 66.9 , 0 );
setEffMoveKey( spep_2 + 48, ctga, 183.5, 66.9 , 0 );

setEffScaleKey( spep_2 + 16 -a, ctga, 0.43, 0.43 );
setEffScaleKey( spep_2 + 18 -a, ctga, 0.61, 0.61 );
setEffScaleKey( spep_2 + 20 -a, ctga, 0.8, 0.8 );
setEffScaleKey( spep_2 + 22 -a, ctga, 0.98, 0.98 );
setEffScaleKey( spep_2 + 24 -a, ctga, 1.17, 1.17 );
setEffScaleKey( spep_2 + 26 -a, ctga, 1.19, 1.19 );
setEffScaleKey( spep_2 + 28 -a, ctga, 1.22, 1.22 );
setEffScaleKey( spep_2 + 30 -a, ctga, 1.25, 1.25 );
setEffScaleKey( spep_2 + 32 -a, ctga, 1.27, 1.27 );
setEffScaleKey( spep_2 + 34 -a, ctga, 1.3, 1.3 );
setEffScaleKey( spep_2 + 36 -a, ctga, 1.32, 1.32 );
setEffScaleKey( spep_2 + 38 -a, ctga, 1.35, 1.35 );
setEffScaleKey( spep_2 + 40 -a, ctga, 1.37, 1.37 );
setEffScaleKey( spep_2 + 42 -a, ctga, 1.4, 1.4 );
setEffScaleKey( spep_2 + 44 -a, ctga, 1.42, 1.42 );
setEffScaleKey( spep_2 + 46 -a, ctga, 1.45, 1.45 );
setEffScaleKey( spep_2 + 46, ctga, 1.47, 1.47 );
setEffScaleKey( spep_2 + 48, ctga, 1.47, 1.47 );

setEffRotateKey( spep_2 + 16 -a, ctga, 6.8 );
setEffRotateKey( spep_2 + 18 -a, ctga, 6.9 );
setEffRotateKey( spep_2 + 48, ctga, 6.9 );

setEffAlphaKey( spep_2 + 16 -a, ctga, 255 );
setEffAlphaKey( spep_2 + 48, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 58, 1, 0 );
changeAnime( spep_2 + 16 -a, 1, 108 );

setMoveKey( spep_2 + 8, 1, 110.8, 159.9 , 0 );
setMoveKey( spep_2 + 10, 1, 92.5, 134.9 , 0 );
setMoveKey( spep_2 + 12, 1, 74.3, 110 , 0 );
setMoveKey( spep_2 + 15 -a, 1, 56.1, 84.9 , 0 );
setMoveKey( spep_2 + 16 -a, 1, 62, 139 , 0 );  --着弾
setMoveKey( spep_2 + 18 -a, 1, 90, 177.1 , 0 );
setMoveKey( spep_2 + 20 -a, 1, 118, 215.2 , 0 );
setMoveKey( spep_2 + 22 -a, 1, 146.1, 253.4 , 0 );
setMoveKey( spep_2 + 24 -a, 1, 174.1, 291.5 , 0 );
setMoveKey( spep_2 + 26 -a, 1, 202.1, 329.6 , 0 );
setMoveKey( spep_2 + 28 -a, 1, 230.1, 367.7 , 0 );
setMoveKey( spep_2 + 30 -a, 1, 231, 369.1 , 0 );
setMoveKey( spep_2 + 32 -a, 1, 231.9, 370.5 , 0 );
setMoveKey( spep_2 + 34 -a, 1, 232.7, 371.9 , 0 );
setMoveKey( spep_2 + 36 -a, 1, 233.6, 373.3 , 0 );
setMoveKey( spep_2 + 38 -a, 1, 234.5, 374.7 , 0 );
setMoveKey( spep_2 + 40 -a, 1, 235.4, 376.1 , 0 );
setMoveKey( spep_2 + 42 -a, 1, 236.2, 377.5 , 0 );
setMoveKey( spep_2 + 44 -a, 1, 237.1, 378.9 , 0 );
setMoveKey( spep_2 + 46 -a, 1, 238, 380.3 , 0 );
setMoveKey( spep_2 + 48 -a, 1, 238.9, 381.7 , 0 );
setMoveKey( spep_2 + 50 -a, 1, 239.7, 383.1 , 0 );
setMoveKey( spep_2 + 52 -a, 1, 240.6, 384.5 , 0 );
setMoveKey( spep_2 + 54 -a, 1, 241.5, 385.9 , 0 );
setMoveKey( spep_2 + 56 -a, 1, 242.4, 387.3 , 0 );
setMoveKey( spep_2 + 58 -a, 1, 243.2, 388.7 , 0 );
setMoveKey( spep_2 + 58, 1, 244.1, 390.1 , 0 );

setScaleKey( spep_2 + 8, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 10, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 12, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 15 -a, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 16 -a, 1, 1.25, 1.25 );  --着弾
setScaleKey( spep_2 + 18 -a, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 20 -a, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 22 -a, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 24 -a, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 26 -a, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 28 -a, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 30 -a, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 32 -a, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 34 -a, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 36 -a, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 38 -a, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 40 -a, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 42 -a, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 44 -a, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 46 -a, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 48 -a, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 50 -a, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 52 -a, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 54 -a, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 56 -a, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 58 -a, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 58, 1, 0.61, 0.61 );

setRotateKey( spep_2 + 8, 1, 0 );
setRotateKey( spep_2 + 15 -a, 1, 0 );
setRotateKey( spep_2 + 16 -a, 1, -16.6 );  --着弾
setRotateKey( spep_2 + 18 -a, 1, -16.7 );
setRotateKey( spep_2 + 58, 1, -16.7 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 48, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_2 + 16 -a, 1001 );  --ガッ

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;

------------------------------------------------------
-- ローリングジャンプ(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
rolling = entryEffectLife( spep_3 + 0, SP_05, 58, 0x100, -1, 0, 0, 0 );  --ローリングジャンプ(ef_005)
setEffMoveKey( spep_3 + 0, rolling, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, rolling, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rolling, 1.0, 1.0 );
setEffScaleKey( spep_3 + 58, rolling, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rolling, 0 );
setEffRotateKey( spep_3 + 58, rolling, 0 );
setEffAlphaKey( spep_3 + 0, rolling, 255 );
setEffAlphaKey( spep_3 + 58, rolling, 255 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3 + 0,  914, 18 -2, 0x100, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_3 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 18 -2, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen3, 5.38, 1.37 );
setEffScaleKey( spep_3 + 18 -2, ryusen3, 5.38, 1.37 );

setEffRotateKey( spep_3 + 0, ryusen3, 61 );
setEffRotateKey( spep_3 + 18 -2, ryusen3, 61 );

setEffAlphaKey( spep_3 + 0, ryusen3, 80 );
setEffAlphaKey( spep_3 + 18 -2, ryusen3, 80 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 26 -4,  906, 32 +4, 0x100, -1, 0, 55.8, 298.6 );  --集中線
setEffShake( spep_3 + 26 -4, shuchusen1, 32, 10 );

setEffMoveKey( spep_3 + 26 -4, shuchusen1, 55.8, 298.6 , 0 );
setEffMoveKey( spep_3 + 58, shuchusen1, 55.8, 298.6 , 0 );

setEffScaleKey( spep_3 + 26 -4, shuchusen1, 1.57, 1.57 );
setEffScaleKey( spep_3 + 58, shuchusen1, 1.57, 1.57 );

setEffRotateKey( spep_3 + 26 -4, shuchusen1, 0 );
setEffRotateKey( spep_3 + 58, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 26 -4, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 58, shuchusen1, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_3 + 50, 8, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 78, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_3 + 24, 7 );  --ローリングジャンプ

-- ** 次の準備 ** --
spep_4 = spep_3 + 58;

------------------------------------------------------
-- 蹴り落とし(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
keri_f = entryEffectLife( spep_4 + 0, SP_06, 78, 0x100, -1, 0, 0, 0 );  --蹴り落とし　手前(ef_006)
setEffMoveKey( spep_4 + 0, keri_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, keri_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, keri_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 78, keri_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, keri_f, 0 );
setEffRotateKey( spep_4 + 78, keri_f, 0 );
setEffAlphaKey( spep_4 + 0, keri_f, 255 );
setEffAlphaKey( spep_4 + 78, keri_f, 255 );

keri_oku = entryEffectLife( spep_4 + 0, SP_08, 78, 0x80, -1, 0, 0, 0 );  --蹴り落とし　背景(ef_008)
setEffMoveKey( spep_4 + 0, keri_oku, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, keri_oku, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, keri_oku, 1.0, 1.0 );
setEffScaleKey( spep_4 + 78, keri_oku, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, keri_oku, 0 );
setEffRotateKey( spep_4 + 78, keri_oku, 0 );
setEffAlphaKey( spep_4 + 0, keri_oku, 255 );
setEffAlphaKey( spep_4 + 78, keri_oku, 255 );

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_4 + 0,  914, 28, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_4 + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 28, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen4, 5.38, 1.37 );
setEffScaleKey( spep_4 + 28, ryusen4, 5.38, 1.37 );

setEffRotateKey( spep_4 + 0, ryusen4, -81 );
setEffRotateKey( spep_4 + 28, ryusen4, -81 );

setEffAlphaKey( spep_4 + 0, ryusen4, 97 );
setEffAlphaKey( spep_4 + 28, ryusen4, 97 );

-- ** エフェクト等 ** --
keri_b = entryEffectLife( spep_4 + 0, SP_07, 78, 0x80, -1, 0, 0, 0 );  --蹴り落とし　奥(ef_007)
setEffMoveKey( spep_4 + 0, keri_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, keri_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, keri_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 78, keri_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, keri_b, 0 );
setEffRotateKey( spep_4 + 78, keri_b, 0 );
setEffAlphaKey( spep_4 + 0, keri_b, 255 );
setEffAlphaKey( spep_4 + 78, keri_b, 255 );

a1 = 3;
-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_4 + 32 -a1,  10020, 30 +a1, 0x100, -1, 0, 67.4, 216.6 );  --バキッ
setEffShake( spep_4 + 38 -a1, ctbaki, 24, 10 );

setEffMoveKey( spep_4 + 32 -a1, ctbaki, 67.4, 216.6 , 0 );
setEffMoveKey( spep_4 + 34 -a1, ctbaki, 83.9, 241.5 , 0 );
setEffMoveKey( spep_4 + 36 -a1, ctbaki, 102, 274 , 0 );
setEffMoveKey( spep_4 + 38 -a1, ctbaki, 117.8, 295.3 , 0 );
setEffMoveKey( spep_4 + 62, ctbaki, 117.8, 295.3 , 0 );

setEffScaleKey( spep_4 + 32 -a1, ctbaki, 0.5, 0.5 );
setEffScaleKey( spep_4 + 34 -a1, ctbaki, 0.89, 0.89 );
setEffScaleKey( spep_4 + 36 -a1, ctbaki, 1.28, 1.28 );
setEffScaleKey( spep_4 + 38 -a1, ctbaki, 1.68, 1.68 );
setEffScaleKey( spep_4 + 62, ctbaki, 1.68, 1.68 );

setEffRotateKey( spep_4 + 32 -a1, ctbaki, -13.8 );
setEffRotateKey( spep_4 + 34 -a1, ctbaki, -14 );
setEffRotateKey( spep_4 + 62, ctbaki, -14 );

setEffAlphaKey( spep_4 + 32 -a1, ctbaki, 255 );
setEffAlphaKey( spep_4 + 62, ctbaki, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 77, 1, 1 );
changeAnime( spep_4 + 0, 1, 108 );  --くの字 
changeAnime( spep_4 + 32 -a1, 1, 106 ); --仰け反り

setMoveKey( spep_4 + 0, 1, 66.8, 15.9 , 0 );
setMoveKey( spep_4 + 2, 1, 67.4, 18.7 , 0 );
setMoveKey( spep_4 + 4, 1, 67.9, 21.3 , 0 );
setMoveKey( spep_4 + 6, 1, 68.4, 24 , 0 );
setMoveKey( spep_4 + 8, 1, 69, 26.7 , 0 );
setMoveKey( spep_4 + 10, 1, 69.5, 29.3 , 0 );
setMoveKey( spep_4 + 12, 1, 70, 32 , 0 );
setMoveKey( spep_4 + 14, 1, 70.6, 34.7 , 0 );
setMoveKey( spep_4 + 16, 1, 71.1, 37.3 , 0 );
setMoveKey( spep_4 + 18, 1, 71.6, 40 , 0 );
setMoveKey( spep_4 + 20, 1, 72.2, 42.7 , 0 );
setMoveKey( spep_4 + 22, 1, 72.7, 45.3 , 0 );
setMoveKey( spep_4 + 24, 1, 73.2, 48 , 0 );
setMoveKey( spep_4 + 26, 1, 73.8, 50.7 , 0 );
setMoveKey( spep_4 + 28, 1, 74.3, 53.3 , 0 );
setMoveKey( spep_4 + 31 -a1, 1, 74.8, 56 , 0 );
setMoveKey( spep_4 + 32 -a1, 1, 6.9, -19.1 , 0 );  --仰け反り
setMoveKey( spep_4 + 34 -a1, 1, 4.9, -28.4 , 0 );
setMoveKey( spep_4 + 36 -a1, 1, 3, -37.9 , 0 );
setMoveKey( spep_4 + 38 -a1, 1, 1.1, -47.3 , 0 );
setMoveKey( spep_4 + 40 -a1, 1, -0.8, -56.7 , 0 );
setMoveKey( spep_4 + 42 -a1, 1, -2.8, -66.1 , 0 );
setMoveKey( spep_4 + 44 -a1, 1, -4.7, -75.5 , 0 );
setMoveKey( spep_4 + 46 -a1, 1, -6.6, -84.8 , 0 );
setMoveKey( spep_4 + 48 -a1, 1, -8.5, -94.2 , 0 );
setMoveKey( spep_4 + 50 -a1, 1, -10.4, -103.6 , 0 );
setMoveKey( spep_4 + 52 -a1, 1, -12.3, -113 , 0 );
setMoveKey( spep_4 + 54 -a1, 1, -14.2, -122.4 , 0 );
setMoveKey( spep_4 + 56 -a1, 1, -16.1, -131.8 , 0 );
setMoveKey( spep_4 + 58 -a1, 1, -18, -141.2 , 0 );
setMoveKey( spep_4 + 60 -a1, 1, -19.9, -150.6 , 0 );
setMoveKey( spep_4 + 62 -a1, 1, -21.8, -160 , 0 );
setMoveKey( spep_4 + 64 -a1, 1, -23.8, -169.4 , 0 );
setMoveKey( spep_4 + 66 -a1, 1, -25.7, -178.8 , 0 );
setMoveKey( spep_4 + 68 -a1, 1, -27.6, -188.1 , 0 );
setMoveKey( spep_4 + 70 -a1, 1, -29.5, -197.5 , 0 );
setMoveKey( spep_4 + 72 -a1, 1, -31.4, -206.9 , 0 );
setMoveKey( spep_4 + 74 -a1, 1, -33.3, -216.3 , 0 );
setMoveKey( spep_4 + 76 -a1, 1, -35.2, -225.7 , 0 );
setMoveKey( spep_4 + 77, 1, -37.1, -235.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_4 + 31 -a1, 1, 1.8, 1.8 );
setScaleKey( spep_4 + 32 -a1, 1, 1.85, 1.85 );  --仰け反り
setScaleKey( spep_4 + 34 -a1, 1, 2.36, 2.36 );
setScaleKey( spep_4 + 36 -a1, 1, 2.42, 2.42 );
setScaleKey( spep_4 + 38 -a1, 1, 2.47, 2.47 );
setScaleKey( spep_4 + 40 -a1, 1, 2.53, 2.53 );
setScaleKey( spep_4 + 42 -a1, 1, 2.59, 2.59 );
setScaleKey( spep_4 + 77, 1, 2.59, 2.59 );

setRotateKey( spep_4 + 0, 1, -28.8 );
setRotateKey( spep_4 + 31 -a1, 1, -28.8 );
setRotateKey( spep_4 + 32 -a1, 1, -109.8 );  --仰け反り
setRotateKey( spep_4 + 34 -a1, 1, -132.3 );
setRotateKey( spep_4 + 36 -a1, 1, -154.8 );
setRotateKey( spep_4 + 38 -a1, 1, -177.2 );
setRotateKey( spep_4 + 40 -a1, 1, -179.9 );
setRotateKey( spep_4 + 42 -a1, 1, -182.7 );
setRotateKey( spep_4 + 44 -a1, 1, -185.4 );
setRotateKey( spep_4 + 46 -a1, 1, -188.1 );
setRotateKey( spep_4 + 48 -a1, 1, -190.9 );
setRotateKey( spep_4 + 50 -a1, 1, -193.6 );
setRotateKey( spep_4 + 52 -a1, 1, -196.4 );
setRotateKey( spep_4 + 54 -a1, 1, -199.1 );
setRotateKey( spep_4 + 56 -a1, 1, -201.8 );
setRotateKey( spep_4 + 58 -a1, 1, -204.6 );
setRotateKey( spep_4 + 60 -a1, 1, -207.3 );
setRotateKey( spep_4 + 62 -a1, 1, -210.1 );
setRotateKey( spep_4 + 64 -a1, 1, -212.8 );
setRotateKey( spep_4 + 66 -a1, 1, -215.5 );
setRotateKey( spep_4 + 68 -a1, 1, -218.3 );
setRotateKey( spep_4 + 70 -a1, 1, -221 );
setRotateKey( spep_4 + 72 -a1, 1, -223.8 );
setRotateKey( spep_4 + 74 -a1, 1, -226.5 );
setRotateKey( spep_4 + 76 -a1, 1, -229.2 );
setRotateKey( spep_4 + 77, 1, -232 );

-- ** ホワイトフェード ** --
entryFade( spep_4 + 76, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 78, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_4 + 32 -a1, 1009 );  --バキ

-- ** 次の準備 ** --
spep_5 = spep_4 + 78;

------------------------------------------------------
-- 地面衝突(84F)
------------------------------------------------------

-- ** エフェクト等 ** --
syoutotsu_f = entryEffectLife( spep_5 + 0, SP_09, 84, 0x100, -1, 0, 0, 0 );  --地面衝突　手前(ef_009)
setEffMoveKey( spep_5 + 0, syoutotsu_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, syoutotsu_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, syoutotsu_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, syoutotsu_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, syoutotsu_f, 0 );
setEffRotateKey( spep_5 + 84, syoutotsu_f, 0 );
setEffAlphaKey( spep_5 + 0, syoutotsu_f, 255 );
setEffAlphaKey( spep_5 + 83, syoutotsu_f, 255 );
setEffAlphaKey( spep_5 + 84, syoutotsu_f, 0 );

syoutotsu_b = entryEffectLife( spep_5 + 0, SP_10, 84, 0x80, -1, 0, 0, 0 );  --地面衝突　奥(ef_010)
setEffMoveKey( spep_5 + 0, syoutotsu_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, syoutotsu_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, syoutotsu_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, syoutotsu_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, syoutotsu_b, 0 );
setEffRotateKey( spep_5 + 84, syoutotsu_b, 0 );
setEffAlphaKey( spep_5 + 0, syoutotsu_b, 255 );
setEffAlphaKey( spep_5 + 83, syoutotsu_b, 255 );
setEffAlphaKey( spep_5 + 84, syoutotsu_b, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5 + 0,  906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen2, 84, 10 );

setEffMoveKey( spep_5 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_5 + 84, shuchusen2, 1.2, 1.2 );

setEffRotateKey( spep_5 + 0, shuchusen2, 0 );
setEffRotateKey( spep_5 + 84, shuchusen2, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_5 + 83, shuchusen2, 255 );
setEffAlphaKey( spep_5 + 84, shuchusen2, 0 );

a2 = 3;
-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_5 + 32 -a2,  10018, 54, 0x100, -1, 0, -14, 95.5 );  --ドゴォン
setEffMoveKey( spep_5 + 32 -a2, ctdogon, -14, 95.5 , 0 );
setEffMoveKey( spep_5 + 34 -a2, ctdogon, -13.9, 110.1 , 0 );
setEffMoveKey( spep_5 + 36 -a2, ctdogon, -14, 124.8 , 0 );
setEffMoveKey( spep_5 + 38 -a2, ctdogon, -13.8, 139.4 , 0 );
setEffMoveKey( spep_5 + 40 -a2, ctdogon, -14, 140.1 , 0 );
setEffMoveKey( spep_5 + 42 -a2, ctdogon, -13.8, 140.6 , 0 );
setEffMoveKey( spep_5 + 44 -a2, ctdogon, -14, 141.3 , 0 );
setEffMoveKey( spep_5 + 46 -a2, ctdogon, -13.8, 141.8 , 0 );
setEffMoveKey( spep_5 + 48 -a2, ctdogon, -14, 142.6 , 0 );
setEffMoveKey( spep_5 + 50 -a2, ctdogon, -13.8, 143.1 , 0 );
setEffMoveKey( spep_5 + 52 -a2, ctdogon, -14, 143.8 , 0 );
setEffMoveKey( spep_5 + 54 -a2, ctdogon, -13.8, 144.3 , 0 );
setEffMoveKey( spep_5 + 56 -a2, ctdogon, -14, 145 , 0 );
setEffMoveKey( spep_5 + 58 -a2, ctdogon, -13.8, 145.6 , 0 );
setEffMoveKey( spep_5 + 60 -a2, ctdogon, -14, 146.3 , 0 );
setEffMoveKey( spep_5 + 62 -a2, ctdogon, -13.8, 146.8 , 0 );
setEffMoveKey( spep_5 + 64 -a2, ctdogon, -14, 147.5 , 0 );
setEffMoveKey( spep_5 + 66 -a2, ctdogon, -13.8, 148.1 , 0 );
setEffMoveKey( spep_5 + 68 -a2, ctdogon, -14, 148.8 , 0 );
setEffMoveKey( spep_5 + 70 -a2, ctdogon, -13.8, 149.3 , 0 );
setEffMoveKey( spep_5 + 72 -a2, ctdogon, -14, 150 , 0 );
setEffMoveKey( spep_5 + 74 -a2, ctdogon, -13.8, 150.5 , 0 );
setEffMoveKey( spep_5 + 76 -a2, ctdogon, -14, 151.3 , 0 );
setEffMoveKey( spep_5 + 78 -a2, ctdogon, -13.8, 151.8 , 0 );
setEffMoveKey( spep_5 + 80 -a2, ctdogon, -14, 152.5 , 0 );
setEffMoveKey( spep_5 + 82 -a2, ctdogon, -13.8, 153 , 0 );
setEffMoveKey( spep_5 + 84 -a2, ctdogon, -14, 153.7 , 0 );
setEffMoveKey( spep_5 + 84, ctdogon, -13.8, 154.3 , 0 );

setEffScaleKey( spep_5 + 32 -a2, ctdogon, 0.54, 0.54 );
setEffScaleKey( spep_5 + 34 -a2, ctdogon, 1.01, 1.01 );
setEffScaleKey( spep_5 + 36 -a2, ctdogon, 1.44, 1.44 );
setEffScaleKey( spep_5 + 38 -a2, ctdogon, 1.92, 1.92 );
setEffScaleKey( spep_5 + 40 -a2, ctdogon, 1.9, 1.9 );
setEffScaleKey( spep_5 + 42 -a2, ctdogon, 1.96, 1.96 );
setEffScaleKey( spep_5 + 44 -a2, ctdogon, 1.94, 1.94 );
setEffScaleKey( spep_5 + 46 -a2, ctdogon, 2, 2 );
setEffScaleKey( spep_5 + 48 -a2, ctdogon, 1.98, 1.98 );
setEffScaleKey( spep_5 + 50 -a2, ctdogon, 2.04, 2.04 );
setEffScaleKey( spep_5 + 52 -a2, ctdogon, 2.02, 2.02 );
setEffScaleKey( spep_5 + 54 -a2, ctdogon, 2.08, 2.08 );
setEffScaleKey( spep_5 + 56 -a2, ctdogon, 2.06, 2.06 );
setEffScaleKey( spep_5 + 58 -a2, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_5 + 60 -a2, ctdogon, 2.09, 2.09 );
setEffScaleKey( spep_5 + 62 -a2, ctdogon, 2.15, 2.15 );
setEffScaleKey( spep_5 + 64 -a2, ctdogon, 2.13, 2.13 );
setEffScaleKey( spep_5 + 66 -a2, ctdogon, 2.19, 2.19 );
setEffScaleKey( spep_5 + 68 -a2, ctdogon, 2.17, 2.17 );
setEffScaleKey( spep_5 + 70 -a2, ctdogon, 2.23, 2.23 );
setEffScaleKey( spep_5 + 72 -a2, ctdogon, 2.21, 2.21 );
setEffScaleKey( spep_5 + 74 -a2, ctdogon, 2.27, 2.27 );
setEffScaleKey( spep_5 + 76 -a2, ctdogon, 2.25, 2.25 );
setEffScaleKey( spep_5 + 78 -a2, ctdogon, 2.32, 2.32 );
setEffScaleKey( spep_5 + 80 -a2, ctdogon, 2.29, 2.29 );
setEffScaleKey( spep_5 + 82 -a2, ctdogon, 2.35, 2.35 );
setEffScaleKey( spep_5 + 84 -a2, ctdogon, 2.32, 2.32 );
setEffScaleKey( spep_5 + 84, ctdogon, 2.39, 2.39 );

setEffRotateKey( spep_5 + 32 -a2, ctdogon, 0 );
setEffRotateKey( spep_5 + 84, ctdogon, 0 );

setEffAlphaKey( spep_5 + 32 -a2, ctdogon, 255 );
setEffAlphaKey( spep_5 + 83, ctdogon, 255 );
setEffAlphaKey( spep_5 + 84, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 84, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );  --ダメージ奥
setShakeChara( spep_5 + 0, 1, 86 );

setMoveKey( spep_5 + 0, 1, -26.3, 21.8 , 0 );
setMoveKey( spep_5 + 2, 1, -26.4, 21.9 , 0 );
setMoveKey( spep_5 + 8, 1, -26.4, 21.9 , 0 );
setMoveKey( spep_5 + 10, 1, -26.5, 21.9 , 0 );
setMoveKey( spep_5 + 12, 1, -26.5, 22 , 0 );
setMoveKey( spep_5 + 14 -1, 1, -26.5, 22 , 0 );
setMoveKey( spep_5 + 16 -a2, 1, -26.7, 22.1 , 0 );
setMoveKey( spep_5 + 18 -a2, 1, -26.8, 22.3 , 0 );
setMoveKey( spep_5 + 20 -a2, 1, -27, 22.4 , 0 );
setMoveKey( spep_5 + 22 -a2, 1, -27.2, 22.6 , 0 );
setMoveKey( spep_5 + 24 -a2, 1, -27.4, 22.7 , 0 );
setMoveKey( spep_5 + 26 -a2, 1, -27.5, 22.9 , 0 );
setMoveKey( spep_5 + 28 -a2, 1, -27.7, 23 , 0 );
setMoveKey( spep_5 + 30 -a2, 1, -27.9, 23.2 , 0 );
setMoveKey( spep_5 + 32 -a2, 1, -28, 23.3 , 0 );
setMoveKey( spep_5 + 84, 1, -28, 23.3 , 0 );

setScaleKey( spep_5 + 0, 1, 4.79, 4.79 );
setScaleKey( spep_5 + 2, 1, 4.74, 4.74 );
setScaleKey( spep_5 + 4, 1, 4.68, 4.68 );
setScaleKey( spep_5 + 6, 1, 4.63, 4.63 );
setScaleKey( spep_5 + 8, 1, 4.57, 4.57 );
setScaleKey( spep_5 + 10, 1, 4.52, 4.52 );
setScaleKey( spep_5 + 12, 1, 4.46, 4.46 );
setScaleKey( spep_5 + 14 -1, 1, 4.41, 4.41 );
setScaleKey( spep_5 + 16 -a2, 1, 3.98, 3.98 );
setScaleKey( spep_5 + 18 -a2, 1, 3.56, 3.56 );
setScaleKey( spep_5 + 20 -a2, 1, 3.13, 3.13 );
setScaleKey( spep_5 + 22 -a2, 1, 2.71, 2.71 );
setScaleKey( spep_5 + 24 -a2, 1, 2.28, 2.28 );
setScaleKey( spep_5 + 26 -a2, 1, 1.85, 1.85 );
setScaleKey( spep_5 + 28 -a2, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 30 -a2, 1, 1, 1 );
setScaleKey( spep_5 + 32 -a2, 1, 0.58, 0.58 );
setScaleKey( spep_5 + 84, 1, 0.58, 0.58 );

setRotateKey( spep_5 + 0, 1, 179 );
setRotateKey( spep_5 + 84, 1, 179 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 84, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_5 + 0, 1053 );  --落ちる音
playSe( spep_5 + 32 -a2, SE_10 );  --ドゴォン

-- ** 次の準備 ** --
spep_6 = spep_5 + 84;

------------------------------------------------------
-- ビリビリ(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
biribiri = entryEffectLife( spep_6 + 0, SP_11, 86, 0x100, -1, 0, 0, 0 );  --ビリビリ(ef_011)
setEffMoveKey( spep_6 + 0, biribiri, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, biribiri, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, biribiri, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, biribiri, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, biribiri, 0 );
setEffRotateKey( spep_6 + 86, biribiri, 0 );
setEffAlphaKey( spep_6 + 0, biribiri, 255 );
setEffAlphaKey( spep_6 + 85, biribiri, 255 );
setEffAlphaKey( spep_6 + 86, biribiri, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_6 + 58,  906, 30, 0x100, -1, 0, 0, 30 );  --集中線
setEffShake( spep_6 + 58, shuchusen3, 30, 10 );

setEffMoveKey( spep_6 + 58, shuchusen3, 0, 30 , 0 );
setEffMoveKey( spep_6 + 88, shuchusen3, 0, 30 , 0 );

setEffScaleKey( spep_6 + 58, shuchusen3, 1.88, 1.94 );
setEffScaleKey( spep_6 + 88, shuchusen3, 1.88, 1.94 );

setEffRotateKey( spep_6 + 58, shuchusen3, 0 );
setEffRotateKey( spep_6 + 88, shuchusen3, 0 );

setEffAlphaKey( spep_6 + 58, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 87, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 88, shuchusen3, 0 );

-- ** 書き文字エントリー ** --
ctbibi1 = entryEffectLife( spep_6 + 62,  10025, 26, 0x100, -1, 0, -203.9, 430.2 );  --ビビビ
setEffMoveKey( spep_6 + 62, ctbibi1, -203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 64, ctbibi1, -205.9, 435.9 , 0 );
setEffMoveKey( spep_6 + 66, ctbibi1, -203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 68, ctbibi1, -205.9, 435.9 , 0 );
setEffMoveKey( spep_6 + 70, ctbibi1, -203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 72, ctbibi1, -205.9, 435.9 , 0 );
setEffMoveKey( spep_6 + 74, ctbibi1, -203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 76, ctbibi1, -205.9, 435.9 , 0 );
setEffMoveKey( spep_6 + 78, ctbibi1, -203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 80, ctbibi1, -205.9, 435.9 , 0 );
setEffMoveKey( spep_6 + 82, ctbibi1, -203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 84, ctbibi1, -205.9, 435.9 , 0 );
setEffMoveKey( spep_6 + 86, ctbibi1, -203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 88, ctbibi1, -205.9, 435.9 , 0 );

setEffScaleKey( spep_6 + 62, ctbibi1, 0.83, 0.83 );
setEffScaleKey( spep_6 + 88, ctbibi1, 0.83, 0.83 );

setEffRotateKey( spep_6 + 62, ctbibi1, 14 );
setEffRotateKey( spep_6 + 88, ctbibi1, 14 );

setEffAlphaKey( spep_6 + 62, ctbibi1, 255 );
setEffAlphaKey( spep_6 + 88, ctbibi1, 255 );

ctbibi2 = entryEffectLife( spep_6 + 62,  10025, 26, 0x100, -1, 0, 132.5, 449.8 );  --ビビビ
setEffMoveKey( spep_6 + 62, ctbibi2, 132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 64, ctbibi2, 133.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 66, ctbibi2, 132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 68, ctbibi2, 133.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 70, ctbibi2, 132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 72, ctbibi2, 133.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 74, ctbibi2, 132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 76, ctbibi2, 133.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 78, ctbibi2, 132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 80, ctbibi2, 133.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 82, ctbibi2, 132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 84, ctbibi2, 133.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 86, ctbibi2, 132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 88, ctbibi2, 133.6, 443.6 , 0 );

setEffScaleKey( spep_6 + 62, ctbibi2, 0.87, 0.87 );
setEffScaleKey( spep_6 + 88, ctbibi2, 0.87, 0.87 );

setEffRotateKey( spep_6 + 62, ctbibi2, 23.7 );
setEffRotateKey( spep_6 + 88, ctbibi2, 23.7 );

setEffAlphaKey( spep_6 + 62, ctbibi2, 255 );
setEffAlphaKey( spep_6 + 88, ctbibi2, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_6 + 54, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 86, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_6 + 12, 1013 );  --着地音
playSe( spep_6 + 50, 1056 );  --ビリビリ

-- ** 次の準備 ** --
spep_7 = spep_6 + 86;

------------------------------------------------------
-- ビリビリ受ける(68F)
------------------------------------------------------

-- ** エフェクト等 ** --
biribiri_hit = entryEffectLife( spep_7 + 0, SP_12, 68, 0x100, -1, 0, 0, 0 );  --迫るビリビリ(ef_012)
setEffMoveKey( spep_7 + 0, biribiri_hit, 0, 0 , 0 );
setEffMoveKey( spep_7 + 68, biribiri_hit, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, biribiri_hit, 1.0, 1.0 );
setEffScaleKey( spep_7 + 68, biribiri_hit, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, biribiri_hit, 0 );
setEffRotateKey( spep_7 + 68, biribiri_hit, 0 );
setEffAlphaKey( spep_7 + 0, biribiri_hit, 255 );
setEffAlphaKey( spep_7 + 68, biribiri_hit, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_7 + 0,  906, 68, 0x100, -1, 0, 55.8, 298.6 );  --集中線
setEffShake( spep_7 + 0, shuchusen4, 68, 10 );

setEffMoveKey( spep_7 + 0, shuchusen4, 55.8, 298.6 , 0 );
setEffMoveKey( spep_7 + 68, shuchusen4, 55.8, 298.6 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen4, 1.57, 1.57 );
setEffScaleKey( spep_7 + 68, shuchusen4, 1.57, 1.57 );

setEffRotateKey( spep_7 + 0, shuchusen4, 0 );
setEffRotateKey( spep_7 + 68, shuchusen4, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_7 + 68, shuchusen4, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_7 + 16 -3, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_7 + 56, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 68, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
SE1 = playSe( spep_7 + 18, 1050 );  --ビリビリ
stopSe(spep_7 + 68, SE1, 0 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 68;

------------------------------------------------------
-- 気弾発射(148F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_8 + 0, SP_13, 148, 0x100, -1, 0, 0, 0 );  --気弾発射(ef_013)
setEffMoveKey( spep_8 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_8 + 148, hassha, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_8 + 148, hassha, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hassha, 0 );
setEffRotateKey( spep_8 + 148, hassha, 0 );
setEffAlphaKey( spep_8 + 0, hassha, 255 );
setEffAlphaKey( spep_8 + 148, hassha, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_8 + 8, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_8 + 8, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_8 + 100 -3,  906, 12, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 100 -3, shuchusen5, 12, 10 );

setEffMoveKey( spep_8 + 100 -3, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_8 + 112 -3, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_8 + 100 -3, shuchusen5, 1.3, 1.3 );
setEffScaleKey( spep_8 + 112 -3, shuchusen5, 1.3, 1.3 );

setEffRotateKey( spep_8 + 100 -3, shuchusen5, 0 );
setEffRotateKey( spep_8 + 112 -3, shuchusen5, 0 );

setEffAlphaKey( spep_8 + 100 -3, shuchusen5, 255 );
setEffAlphaKey( spep_8 + 112 -3, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_8 + 24 - 2,  190006, 70, 0x100, -1, 0, 130.0, 515.5 ); --ゴゴゴ
setEffShake( spep_8 + 24 - 2, ctgogo, 70, 10 );

setEffMoveKey( spep_8 + 24 - 2, ctgogo, 130.0, 521.8 , 0 );
setEffMoveKey( spep_8 + 94 - 2, ctgogo, 130.0, 515.5 , 0 );

setEffScaleKey( spep_8 + 24 - 2, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_8 + 86 - 2, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_8 + 88 - 2, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_8 + 90 - 2, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_8 + 92 - 2, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_8 + 94 - 2, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_8 + 24 - 2, ctgogo, 0 );
setEffRotateKey( spep_8 + 94 - 2, ctgogo, 0 );

setEffAlphaKey( spep_8 + 24 - 2, ctgogo, 255 );
setEffAlphaKey( spep_8 + 94 - 2, ctgogo, 255 );

ctzuo = entryEffectLife( spep_8 + 100 -3,  10012, 30, 0x100, -1, 0, -37.6, 80.9 );  --ズオッ
setEffMoveKey( spep_8 + 100 -3, ctzuo, -37.6, 80.9 , 0 );
setEffMoveKey( spep_8 + 102 -3, ctzuo, -14.1, 121.2 , 0 );
setEffMoveKey( spep_8 + 104 -3, ctzuo, 4.3, 154.7 , 0 );
setEffMoveKey( spep_8 + 106 -3, ctzuo, 30, 197.7 , 0 );
setEffMoveKey( spep_8 + 108 -3, ctzuo, 46.4, 228.6 , 0 );
setEffMoveKey( spep_8 + 110 -3, ctzuo, 40.1, 246.2 , 0 );
setEffMoveKey( spep_8 + 112 -3, ctzuo, 22.1, 248.3 , 0 );
setEffMoveKey( spep_8 + 114 -3, ctzuo, 16.4, 266.7 , 0 );
setEffMoveKey( spep_8 + 116 -3, ctzuo, -2.2, 268.2 , 0 );
setEffMoveKey( spep_8 + 118 -3, ctzuo, -7.3, 287.3 , 0 );
setEffMoveKey( spep_8 + 120 -3, ctzuo, -14.3, 278.1 , 0 );
setEffMoveKey( spep_8 + 122 -3, ctzuo, -7.3, 287.3 , 0 );
setEffMoveKey( spep_8 + 124 -3, ctzuo, -14.3, 278.1 , 0 );
setEffMoveKey( spep_8 + 126 -3, ctzuo, -7.3, 287.3 , 0 );
setEffMoveKey( spep_8 + 128 -3, ctzuo, -14.3, 278.1 , 0 );
setEffMoveKey( spep_8 + 130 -3, ctzuo, -14.3, 278.1 , 0 );

setEffScaleKey( spep_8 + 100 -3, ctzuo, 0.59, 0.59 );
setEffScaleKey( spep_8 + 102 -3, ctzuo, 0.96, 0.96 );
setEffScaleKey( spep_8 + 104 -3, ctzuo, 1.32, 1.32 );
setEffScaleKey( spep_8 + 106 -3, ctzuo, 1.69, 1.69 );
setEffScaleKey( spep_8 + 108 -3, ctzuo, 2.06, 2.06 );
setEffScaleKey( spep_8 + 110 -3, ctzuo, 2.16, 2.16 );
setEffScaleKey( spep_8 + 112 -3, ctzuo, 2.27, 2.27 );
setEffScaleKey( spep_8 + 114 -3, ctzuo, 2.38, 2.38 );
setEffScaleKey( spep_8 + 116 -3, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_8 + 118 -3, ctzuo, 2.59, 2.59 );
setEffScaleKey( spep_8 + 130 -3, ctzuo, 2.59, 2.59 );

setEffRotateKey( spep_8 + 100 -3, ctzuo, -26.3 );
setEffRotateKey( spep_8 + 102 -3, ctzuo, -26.4 );
setEffRotateKey( spep_8 + 130 -3, ctzuo, -26.4 );

setEffAlphaKey( spep_8 + 100 -3, ctzuo, 255 );
setEffAlphaKey( spep_8 + 118 -3, ctzuo, 255 );
setEffAlphaKey( spep_8 + 120 -3, ctzuo, 212 );
setEffAlphaKey( spep_8 + 122 -3, ctzuo, 170 );
setEffAlphaKey( spep_8 + 124 -3, ctzuo, 128 );
setEffAlphaKey( spep_8 + 126 -3, ctzuo, 85 );
setEffAlphaKey( spep_8 + 128 -3, ctzuo, 43 );
setEffAlphaKey( spep_8 + 130 -3, ctzuo, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_8 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_8 + 140, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_8 + 0, 0, 148, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_8 + 24, SE_04 );  --ゴゴゴ
playSe( spep_8 + 100 -3, 1022 );  --発射

-- ** 次の準備 ** --
spep_9 = spep_8 + 148;

------------------------------------------------------
-- 着弾(158F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan_f = entryEffectLife( spep_9 + 0, SP_14, 158, 0x100, -1, 0, 0, 0 );  --着弾　手前(ef_014)
setEffMoveKey( spep_9 + 0, tyakudan_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 158, tyakudan_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, tyakudan_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 158, tyakudan_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tyakudan_f, 0 );
setEffRotateKey( spep_9 + 158, tyakudan_f, 0 );
setEffAlphaKey( spep_9 + 0, tyakudan_f, 255 );
setEffAlphaKey( spep_9 + 158, tyakudan_f, 255 );

tyakudan_b = entryEffectLife( spep_9 + 0, SP_15, 158, 0x80, -1, 0, 0, 0 );  --着弾　奥(ef_015)
setEffMoveKey( spep_9 + 0, tyakudan_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 158, tyakudan_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, tyakudan_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 158, tyakudan_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tyakudan_b, 0 );
setEffRotateKey( spep_9 + 158, tyakudan_b, 0 );
setEffAlphaKey( spep_9 + 0, tyakudan_b, 255 );
setEffAlphaKey( spep_9 + 158, tyakudan_b, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_9 + 0,  906, 158, 0x100, -1, 0, 10, 20 );  --集中線
setEffShake( spep_9 + 0, shuchusen6, 12, 10 );

setEffMoveKey( spep_9 + 0, shuchusen6, 10, 20 , 0 );
setEffMoveKey( spep_9 + 158, shuchusen6, 10, 20 , 0 );

setEffScaleKey( spep_9 + 0, shuchusen6, 1.3, 1.3 );
setEffScaleKey( spep_9 + 158, shuchusen6, 1.3, 1.3 );

setEffRotateKey( spep_9 + 0, shuchusen6, 0 );
setEffRotateKey( spep_9 + 158, shuchusen6, 0 );

setEffAlphaKey( spep_9 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_9 + 158, shuchusen6, 255 );

 a3 = 3;
-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 60, 1, 0 );
changeAnime( spep_9 + 0, 1, 105 );  --ダメージ奥

setMoveKey( spep_9 + 0, 1, 222.5, 277.5 , 0 );
setMoveKey( spep_9 + 2 -1, 1, 214.6, 264.5 , 0 );
setMoveKey( spep_9 + 4 -a3, 1, 206.7, 251.5 , 0 );
setMoveKey( spep_9 + 6 -a3, 1, 198.8, 238.5 , 0 );
setMoveKey( spep_9 + 8 -a3, 1, 190.9, 225.5 , 0 );
setMoveKey( spep_9 + 10 -a3, 1, 183, 212.6 , 0 );
setMoveKey( spep_9 + 12 -a3, 1, 175.2, 199.6 , 0 );
setMoveKey( spep_9 + 14 -a3, 1, 167.3, 186.6 , 0 );
setMoveKey( spep_9 + 16 -a3, 1, 159.4, 173.7 , 0 );
setMoveKey( spep_9 + 18 -a3, 1, 151.5, 160.7 , 0 );
setMoveKey( spep_9 + 20 -a3, 1, 143.6, 147.7 , 0 );
setMoveKey( spep_9 + 22 -a3, 1, 135.7, 134.7 , 0 );
setMoveKey( spep_9 + 24 -a3, 1, 127.9, 121.8 , 0 );
setMoveKey( spep_9 + 26 -a3, 1, 120, 108.8 , 0 );
setMoveKey( spep_9 + 28 -a3, 1, 112.1, 95.8 , 0 );
setMoveKey( spep_9 + 30 -a3, 1, 104.2, 82.8 , 0 );
setMoveKey( spep_9 + 32 -a3, 1, 96.3, 69.9 , 0 );
setMoveKey( spep_9 + 34 -a3, 1, 88.4, 56.9 , 0 );
setMoveKey( spep_9 + 36 -a3, 1, 80.5, 43.9 , 0 );
setMoveKey( spep_9 + 38 -a3, 1, 72.6, 30.9 , 0 );
setMoveKey( spep_9 + 40 -a3, 1, 64.8, 18 , 0 );
setMoveKey( spep_9 + 42 -a3, 1, 56.9, 5 , 0 );
setMoveKey( spep_9 + 44 -a3, 1, 49, -8 , 0 );
setMoveKey( spep_9 + 46 -a3, 1, 53.5, -27.3 , 0 );
setMoveKey( spep_9 + 48 -a3, 1, 77.2, -22.2 , 0 );
setMoveKey( spep_9 + 50 -a3, 1, 52.3, -46.7 , 0 );
setMoveKey( spep_9 + 52 -a3, 1, 75.9, -42.9 , 0 );
setMoveKey( spep_9 + 54 -a3, 1, 48.2, -19.1 , 0 );
setMoveKey( spep_9 + 56 -a3, 1, 68.9, -18 , 0 );
setMoveKey( spep_9 + 58 -a3, 1, 44.1, -42.6 , 0 );
setMoveKey( spep_9 + 60 -a3, 1, 67.8, -38.7 , 0 );

setScaleKey( spep_9 + 0, 1, 0.54, 0.54 );
setScaleKey( spep_9 + 2 -1, 1, 0.57, 0.57 );
setScaleKey( spep_9 + 4 -a3, 1, 0.6, 0.6 );
setScaleKey( spep_9 + 6 -a3, 1, 0.62, 0.62 );
setScaleKey( spep_9 + 8 -a3, 1, 0.65, 0.65 );
setScaleKey( spep_9 + 10 -a3, 1, 0.67, 0.67 );
setScaleKey( spep_9 + 12 -a3, 1, 0.7, 0.7 );
setScaleKey( spep_9 + 14 -a3, 1, 0.72, 0.72 );
setScaleKey( spep_9 + 16 -a3, 1, 0.74, 0.74 );
setScaleKey( spep_9 + 18 -a3, 1, 0.77, 0.77 );
setScaleKey( spep_9 + 20 -a3, 1, 0.79, 0.79 );
setScaleKey( spep_9 + 22 -a3, 1, 0.82, 0.82 );
setScaleKey( spep_9 + 24 -a3, 1, 0.84, 0.84 );
setScaleKey( spep_9 + 26 -a3, 1, 0.87, 0.87 );
setScaleKey( spep_9 + 28 -a3, 1, 0.89, 0.89 );
setScaleKey( spep_9 + 30 -a3, 1, 0.92, 0.92 );
setScaleKey( spep_9 + 32 -a3, 1, 0.94, 0.94 );
setScaleKey( spep_9 + 34 -a3, 1, 0.96, 0.96 );
setScaleKey( spep_9 + 36 -a3, 1, 0.99, 0.99 );
setScaleKey( spep_9 + 38 -a3, 1, 1.01, 1.01 );
setScaleKey( spep_9 + 40 -a3, 1, 1.04, 1.04 );
setScaleKey( spep_9 + 42 -a3, 1, 1.06, 1.06 );
setScaleKey( spep_9 + 44 -a3, 1, 1.09, 1.09 );
setScaleKey( spep_9 + 46 -a3, 1, 1.45, 1.45 );
setScaleKey( spep_9 + 48 -a3, 1, 1.78, 1.78 );
setScaleKey( spep_9 + 50 -a3, 1, 1.73, 1.73 );
setScaleKey( spep_9 + 52 -a3, 1, 1.67, 1.67 );
setScaleKey( spep_9 + 54 -a3, 1, 1.62, 1.62 );
setScaleKey( spep_9 + 56 -a3, 1, 1.56, 1.56 );
setScaleKey( spep_9 + 58 -a3, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 60 -a3, 1, 1.45, 1.45 );

setRotateKey( spep_9 + 0, 1, 165.8 );
setRotateKey( spep_9 + 60 -a3, 1, 165.8 );

-- ** ホワイトフェード ** --
entryFade( spep_9 + 46, 4, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_9 + 128, 28, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_9 + 0, 0, 158, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_9 + 52, 1024 );  --爆発

-- ** 次の準備 ** --
spep_10 = spep_9 + 158;

------------------------------------------------------
-- 万歳(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
banzai = entryEffect( spep_10 + 0, SP_16, 0x100, -1, 0, 0, 0 );  --万歳(ef_016)
setEffMoveKey( spep_10 + 0, banzai, 0, 0 , 0 );
setEffMoveKey( spep_10 + 176, banzai, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, banzai, 1.0, 1.0 );
setEffScaleKey( spep_10 + 176, banzai, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, banzai, 0 );
setEffRotateKey( spep_10 + 176, banzai, 0 );
setEffAlphaKey( spep_10 + 0, banzai, 255 );
setEffAlphaKey( spep_10 + 176, banzai, 255 );

-- ** 音 ** --
playSe( spep_10 + 50, 24 );  --じゃんぷ
playSe( spep_10 + 108, 24 );  --じゃんぷ
playSe( spep_10 + 168, 24 );  --じゃんぷ

-- ** ダメージ表示 ** --
dealDamage( spep_10 + 0 );
entryFade( spep_10 + 166, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_10 + 176 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_0 = 0;

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_0 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_0 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_0 + 0, shuchusen, 0 );
setEffRotateKey( spep_0 + 90, shuchusen, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen, 255 );
setEffAlphaKey( spep_0 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_0 + 0, SE_05 );

-- ** カードカットイン ** --
speff2 = entryEffect( spep_0 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 94;

------------------------------------------------------
-- 筋斗雲飛び降り(108F)
------------------------------------------------------

-- ** エフェクト等 ** --
tobiori_f = entryEffectLife( spep_1 + 0, SP_01r, 108, 0x100, -1, 0, 0, 0 );  --飛び降り　手前(ef_001)
setEffMoveKey( spep_1 + 0, tobiori_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 108, tobiori_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tobiori_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 108, tobiori_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tobiori_f, 0 );
setEffRotateKey( spep_1 + 108, tobiori_f, 0 );
setEffAlphaKey( spep_1 + 0, tobiori_f, 255 );
setEffAlphaKey( spep_1 + 107, tobiori_f, 255 );
setEffAlphaKey( spep_1 + 108, tobiori_f, 0 );

tobiori_b = entryEffectLife( spep_1 + 0, SP_02, 108, 0x80, -1, 0, 0, 0 );  --飛び降り　奥(ef_002)
setEffMoveKey( spep_1 + 0, tobiori_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 108, tobiori_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tobiori_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 108, tobiori_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tobiori_b, 0 );
setEffRotateKey( spep_1 + 108, tobiori_b, 0 );
setEffAlphaKey( spep_1 + 0, tobiori_b, 255 );
setEffAlphaKey( spep_1 + 107, tobiori_b, 255 );
setEffAlphaKey( spep_1 + 108, tobiori_b, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0,  914, 68, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 68, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, -5.38, 1.37 );
setEffScaleKey( spep_1 + 68, ryusen1, -5.38, 1.37 );

setEffRotateKey( spep_1 + 0, ryusen1, 61 );
setEffRotateKey( spep_1 + 68, ryusen1, 61 );

setEffAlphaKey( spep_1 + 0, ryusen1, 97 );
setEffAlphaKey( spep_1 + 40, ryusen1, 97 );
setEffAlphaKey( spep_1 + 42, ryusen1, 90 );
setEffAlphaKey( spep_1 + 44, ryusen1, 83 );
setEffAlphaKey( spep_1 + 46, ryusen1, 76 );
setEffAlphaKey( spep_1 + 48, ryusen1, 69 );
setEffAlphaKey( spep_1 + 50, ryusen1, 62 );
setEffAlphaKey( spep_1 + 52, ryusen1, 55 );
setEffAlphaKey( spep_1 + 54, ryusen1, 48 );
setEffAlphaKey( spep_1 + 56, ryusen1, 41 );
setEffAlphaKey( spep_1 + 58, ryusen1, 35 );
setEffAlphaKey( spep_1 + 60, ryusen1, 28 );
setEffAlphaKey( spep_1 + 62, ryusen1, 21 );
setEffAlphaKey( spep_1 + 64, ryusen1, 14 );
setEffAlphaKey( spep_1 + 66, ryusen1, 7 );
setEffAlphaKey( spep_1 + 68, ryusen1, 0 );

-- ** 音 ** --
playSe( spep_1 + 2, 63 );  --筋斗雲の音
playSe( spep_1 + 84, 8 );  --向かう音

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 108, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 108;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 94; --エンドフェイズのフレーム数を置き換える

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
------------------------------------------------------
-- シャンプパンチ(60F)
------------------------------------------------------

-- ** エフェクト等 ** --
panshi_f = entryEffectLife( spep_2 + 0, SP_03, 60, 0x100, -1, 0, 0, 0 );  --ジャンプパンチ　手前(ef_003)
setEffMoveKey( spep_2 + 0, panshi_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, panshi_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, panshi_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 60, panshi_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panshi_f, 0 );
setEffRotateKey( spep_2 + 60, panshi_f, 0 );
setEffAlphaKey( spep_2 + 0, panshi_f, 255 );
setEffAlphaKey( spep_2 + 60, panshi_f, 255 );

panshi_b = entryEffectLife( spep_2 + 0, SP_04, 60, 0x80, -1, 0, 0, 0 );  --ジャンプパンチ　奥(ef_004)
setEffMoveKey( spep_2 + 0, panshi_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, panshi_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, panshi_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 60, panshi_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panshi_b, 0 );
setEffRotateKey( spep_2 + 60, panshi_b, 0 );
setEffAlphaKey( spep_2 + 0, panshi_b, 255 );
setEffAlphaKey( spep_2 + 60, panshi_b, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 0,  914, 14 -2, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_2 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 14 -2, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 5.38, 1.37 );
setEffScaleKey( spep_2 + 14 -2, ryusen2, 5.38, 1.37 );

setEffRotateKey( spep_2 + 0, ryusen2, 53.1 );
setEffRotateKey( spep_2 + 14 -2, ryusen2, 53.1 );

setEffAlphaKey( spep_2 + 0, ryusen2, 97 );
setEffAlphaKey( spep_2 + 14 -2, ryusen2, 97 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 0 );

setMoveKey( spep_2 + 0, 1, -183.7, 259.9 , 0 );
setMoveKey( spep_2 + 2, 1, -165.5, 234.9 , 0 );
setMoveKey( spep_2 + 4, 1, -147.2, 209.9 , 0 );
setMoveKey( spep_2 + 6, 1, -129, 184.9 , 0 );

setScaleKey( spep_2 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 2, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 4, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 6, 1, 0.97, 0.97 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 6, 1, 0 );

a = 3;
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_2 + 16 -a,  10005, 32 +a, 0x100, -1, 0, 123.1, 108.9 );  --ガッ
setEffMoveKey( spep_2 + 16 -a, ctga, -123.1, 108.9 , 0 );
setEffMoveKey( spep_2 + 18 -a, ctga, -132.3, 99.1 , 0 );
setEffMoveKey( spep_2 + 20 -a, ctga, -144.5, 94 , 0 );
setEffMoveKey( spep_2 + 22 -a, ctga, -152.7, 82.9 , 0 );
setEffMoveKey( spep_2 + 24 -a, ctga, -165.8, 79.2 , 0 );
setEffMoveKey( spep_2 + 26 -a, ctga, -164.3, 73.7 , 0 );
setEffMoveKey( spep_2 + 28 -a, ctga, -168.8, 77.1 , 0 );
setEffMoveKey( spep_2 + 30 -a, ctga, -167.2, 71.4 , 0 );
setEffMoveKey( spep_2 + 32 -a, ctga, -171.8, 75.1 , 0 );
setEffMoveKey( spep_2 + 34 -a, ctga, -170, 69.2 , 0 );
setEffMoveKey( spep_2 + 36 -a, ctga, -174.7, 73 , 0 );
setEffMoveKey( spep_2 + 38 -a, ctga, -172.8, 67 , 0 );
setEffMoveKey( spep_2 + 40 -a, ctga, -177.7, 71 , 0 );
setEffMoveKey( spep_2 + 42 -a, ctga, -175.7, 64.7 , 0 );
setEffMoveKey( spep_2 + 44 -a, ctga, -180.6, 68.8 , 0 );
setEffMoveKey( spep_2 + 46 -a, ctga, -178.5, 62.5 , 0 );
setEffMoveKey( spep_2 + 46, ctga, -183.5, 66.9 , 0 );
setEffMoveKey( spep_2 + 48, ctga, -183.5, 66.9 , 0 );

setEffScaleKey( spep_2 + 16 -a, ctga, 0.43, 0.43 );
setEffScaleKey( spep_2 + 18 -a, ctga, 0.61, 0.61 );
setEffScaleKey( spep_2 + 20 -a, ctga, 0.8, 0.8 );
setEffScaleKey( spep_2 + 22 -a, ctga, 0.98, 0.98 );
setEffScaleKey( spep_2 + 24 -a, ctga, 1.17, 1.17 );
setEffScaleKey( spep_2 + 26 -a, ctga, 1.19, 1.19 );
setEffScaleKey( spep_2 + 28 -a, ctga, 1.22, 1.22 );
setEffScaleKey( spep_2 + 30 -a, ctga, 1.25, 1.25 );
setEffScaleKey( spep_2 + 32 -a, ctga, 1.27, 1.27 );
setEffScaleKey( spep_2 + 34 -a, ctga, 1.3, 1.3 );
setEffScaleKey( spep_2 + 36 -a, ctga, 1.32, 1.32 );
setEffScaleKey( spep_2 + 38 -a, ctga, 1.35, 1.35 );
setEffScaleKey( spep_2 + 40 -a, ctga, 1.37, 1.37 );
setEffScaleKey( spep_2 + 42 -a, ctga, 1.4, 1.4 );
setEffScaleKey( spep_2 + 44 -a, ctga, 1.42, 1.42 );
setEffScaleKey( spep_2 + 46 -a, ctga, 1.45, 1.45 );
setEffScaleKey( spep_2 + 46, ctga, 1.47, 1.47 );
setEffScaleKey( spep_2 + 48, ctga, 1.47, 1.47 );

setEffRotateKey( spep_2 + 16 -a, ctga, 6.8 );
setEffRotateKey( spep_2 + 18 -a, ctga, 6.9 );
setEffRotateKey( spep_2 + 48, ctga, 6.9 );

setEffAlphaKey( spep_2 + 16 -a, ctga, 255 );
setEffAlphaKey( spep_2 + 48, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 58, 1, 0 );
changeAnime( spep_2 + 16 -a, 1, 8 );

setMoveKey( spep_2 + 8, 1, -110.8, 159.9 , 0 );
setMoveKey( spep_2 + 10, 1, -92.5, 134.9 , 0 );
setMoveKey( spep_2 + 12, 1, -74.3, 110 , 0 );
setMoveKey( spep_2 + 15 -a, 1, -56.1, 84.9 , 0 );
setMoveKey( spep_2 + 16 -a, 1, -62, 139 , 0 );  --着弾
setMoveKey( spep_2 + 18 -a, 1, -90, 177.1 , 0 );
setMoveKey( spep_2 + 20 -a, 1, -118, 215.2 , 0 );
setMoveKey( spep_2 + 22 -a, 1, -146.1, 253.4 , 0 );
setMoveKey( spep_2 + 24 -a, 1, -174.1, 291.5 , 0 );
setMoveKey( spep_2 + 26 -a, 1, -202.1, 329.6 , 0 );
setMoveKey( spep_2 + 28 -a, 1, -230.1, 367.7 , 0 );
setMoveKey( spep_2 + 30 -a, 1, -231, 369.1 , 0 );
setMoveKey( spep_2 + 32 -a, 1, -231.9, 370.5 , 0 );
setMoveKey( spep_2 + 34 -a, 1, -232.7, 371.9 , 0 );
setMoveKey( spep_2 + 36 -a, 1, -233.6, 373.3 , 0 );
setMoveKey( spep_2 + 38 -a, 1, -234.5, 374.7 , 0 );
setMoveKey( spep_2 + 40 -a, 1, -235.4, 376.1 , 0 );
setMoveKey( spep_2 + 42 -a, 1, -236.2, 377.5 , 0 );
setMoveKey( spep_2 + 44 -a, 1, -237.1, 378.9 , 0 );
setMoveKey( spep_2 + 46 -a, 1, -238, 380.3 , 0 );
setMoveKey( spep_2 + 48 -a, 1, -238.9, 381.7 , 0 );
setMoveKey( spep_2 + 50 -a, 1, -239.7, 383.1 , 0 );
setMoveKey( spep_2 + 52 -a, 1, -240.6, 384.5 , 0 );
setMoveKey( spep_2 + 54 -a, 1, -241.5, 385.9 , 0 );
setMoveKey( spep_2 + 56 -a, 1, -242.4, 387.3 , 0 );
setMoveKey( spep_2 + 58 -a, 1, -243.2, 388.7 , 0 );
setMoveKey( spep_2 + 58, 1, -244.1, 390.1 , 0 );

setScaleKey( spep_2 + 8, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 10, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 12, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 15 -a, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 16 -a, 1, 1.25, 1.25 );  --着弾
setScaleKey( spep_2 + 18 -a, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 20 -a, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 22 -a, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 24 -a, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 26 -a, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 28 -a, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 30 -a, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 32 -a, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 34 -a, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 36 -a, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 38 -a, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 40 -a, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 42 -a, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 44 -a, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 46 -a, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 48 -a, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 50 -a, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 52 -a, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 54 -a, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 56 -a, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 58 -a, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 58, 1, 0.61, 0.61 );

setRotateKey( spep_2 + 8, 1, 0 );
setRotateKey( spep_2 + 15 -a, 1, 0 );
setRotateKey( spep_2 + 16 -a, 1, -16.6 );  --着弾
setRotateKey( spep_2 + 18 -a, 1, -16.7 );
setRotateKey( spep_2 + 58, 1, -16.7 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 48, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_2 + 16 -a, 1001 );  --ガッ

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;

------------------------------------------------------
-- ローリングジャンプ(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
rolling = entryEffectLife( spep_3 + 0, SP_05, 58, 0x100, -1, 0, 0, 0 );  --ローリングジャンプ(ef_005)
setEffMoveKey( spep_3 + 0, rolling, 0, 0 , 0 );
setEffMoveKey( spep_3 + 58, rolling, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rolling, -1.0, 1.0 );
setEffScaleKey( spep_3 + 58, rolling, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rolling, 0 );
setEffRotateKey( spep_3 + 58, rolling, 0 );
setEffAlphaKey( spep_3 + 0, rolling, 255 );
setEffAlphaKey( spep_3 + 58, rolling, 255 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3 + 0,  914, 18 -2, 0x100, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_3 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 18 -2, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen3, 5.38, 1.37 );
setEffScaleKey( spep_3 + 18 -2, ryusen3, 5.38, 1.37 );

setEffRotateKey( spep_3 + 0, ryusen3, -61 );
setEffRotateKey( spep_3 + 18 -2, ryusen3, -61 );

setEffAlphaKey( spep_3 + 0, ryusen3, 80 );
setEffAlphaKey( spep_3 + 18 -2, ryusen3, 80 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 26 -4,  906, 32 +4, 0x100, -1, 0, 55.8, 298.6 );  --集中線
setEffShake( spep_3 + 26 -4, shuchusen1, 32, 10 );

setEffMoveKey( spep_3 + 26 -4, shuchusen1, -55.8, 298.6 , 0 );
setEffMoveKey( spep_3 + 58, shuchusen1, -55.8, 298.6 , 0 );

setEffScaleKey( spep_3 + 26 -4, shuchusen1, 1.57, 1.57 );
setEffScaleKey( spep_3 + 58, shuchusen1, 1.57, 1.57 );

setEffRotateKey( spep_3 + 26 -4, shuchusen1, 0 );
setEffRotateKey( spep_3 + 58, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 26 -4, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 58, shuchusen1, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_3 + 50, 8, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 78, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_3 + 24, 7 );  --ローリングジャンプ

-- ** 次の準備 ** --
spep_4 = spep_3 + 58;

------------------------------------------------------
-- 蹴り落とし(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
keri_f = entryEffectLife( spep_4 + 0, SP_06, 78, 0x100, -1, 0, 0, 0 );  --蹴り落とし　手前(ef_006)
setEffMoveKey( spep_4 + 0, keri_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, keri_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, keri_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 78, keri_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, keri_f, 0 );
setEffRotateKey( spep_4 + 78, keri_f, 0 );
setEffAlphaKey( spep_4 + 0, keri_f, 255 );
setEffAlphaKey( spep_4 + 78, keri_f, 255 );

keri_oku = entryEffectLife( spep_4 + 0, SP_08, 78, 0x80, -1, 0, 0, 0 );  --蹴り落とし　背景(ef_008)
setEffMoveKey( spep_4 + 0, keri_oku, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, keri_oku, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, keri_oku, -1.0, 1.0 );
setEffScaleKey( spep_4 + 78, keri_oku, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, keri_oku, 0 );
setEffRotateKey( spep_4 + 78, keri_oku, 0 );
setEffAlphaKey( spep_4 + 0, keri_oku, 255 );
setEffAlphaKey( spep_4 + 78, keri_oku, 255 );

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_4 + 0,  914, 28, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_4 + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 28, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen4, 5.38, 1.37 );
setEffScaleKey( spep_4 + 28, ryusen4, 5.38, 1.37 );

setEffRotateKey( spep_4 + 0, ryusen4, 81 );
setEffRotateKey( spep_4 + 28, ryusen4, 81 );

setEffAlphaKey( spep_4 + 0, ryusen4, 97 );
setEffAlphaKey( spep_4 + 28, ryusen4, 97 );

-- ** エフェクト等 ** --
keri_b = entryEffectLife( spep_4 + 0, SP_07, 78, 0x80, -1, 0, 0, 0 );  --蹴り落とし　奥(ef_007)
setEffMoveKey( spep_4 + 0, keri_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, keri_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, keri_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 78, keri_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, keri_b, 0 );
setEffRotateKey( spep_4 + 78, keri_b, 0 );
setEffAlphaKey( spep_4 + 0, keri_b, 255 );
setEffAlphaKey( spep_4 + 78, keri_b, 255 );

a1 = 3;
-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_4 + 32 -a1,  10020, 30 +a1, 0x100, -1, 0, 67.4, 216.6 );  --バキッ
setEffShake( spep_4 + 38 -a1, ctbaki, 24, 10 );

setEffMoveKey( spep_4 + 32 -a1, ctbaki, -67.4, 216.6 , 0 );
setEffMoveKey( spep_4 + 34 -a1, ctbaki, -83.9, 241.5 , 0 );
setEffMoveKey( spep_4 + 36 -a1, ctbaki, -102, 274 , 0 );
setEffMoveKey( spep_4 + 38 -a1, ctbaki, -117.8, 295.3 , 0 );
setEffMoveKey( spep_4 + 62, ctbaki, -117.8, 295.3 , 0 );

setEffScaleKey( spep_4 + 32 -a1, ctbaki, 0.5, 0.5 );
setEffScaleKey( spep_4 + 34 -a1, ctbaki, 0.89, 0.89 );
setEffScaleKey( spep_4 + 36 -a1, ctbaki, 1.28, 1.28 );
setEffScaleKey( spep_4 + 38 -a1, ctbaki, 1.68, 1.68 );
setEffScaleKey( spep_4 + 62, ctbaki, 1.68, 1.68 );

setEffRotateKey( spep_4 + 32 -a1, ctbaki, -13.8 );
setEffRotateKey( spep_4 + 34 -a1, ctbaki, -14 );
setEffRotateKey( spep_4 + 62, ctbaki, -14 );

setEffAlphaKey( spep_4 + 32 -a1, ctbaki, 255 );
setEffAlphaKey( spep_4 + 62, ctbaki, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 77, 1, 1 );
changeAnime( spep_4 + 0, 1, 8 );  --くの字 
changeAnime( spep_4 + 32 -a1, 1, 6 ); --仰け反り

setMoveKey( spep_4 + 0, 1, -66.8, 15.9 , 0 );
setMoveKey( spep_4 + 2, 1, -67.4, 18.7 , 0 );
setMoveKey( spep_4 + 4, 1, -67.9, 21.3 , 0 );
setMoveKey( spep_4 + 6, 1, -68.4, 24 , 0 );
setMoveKey( spep_4 + 8, 1, -69, 26.7 , 0 );
setMoveKey( spep_4 + 10, 1, -69.5, 29.3 , 0 );
setMoveKey( spep_4 + 12, 1, -70, 32 , 0 );
setMoveKey( spep_4 + 14, 1, -70.6, 34.7 , 0 );
setMoveKey( spep_4 + 16, 1, -71.1, 37.3 , 0 );
setMoveKey( spep_4 + 18, 1, -71.6, 40 , 0 );
setMoveKey( spep_4 + 20, 1, -72.2, 42.7 , 0 );
setMoveKey( spep_4 + 22, 1, -72.7, 45.3 , 0 );
setMoveKey( spep_4 + 24, 1, -73.2, 48 , 0 );
setMoveKey( spep_4 + 26, 1, -73.8, 50.7 , 0 );
setMoveKey( spep_4 + 28, 1, -74.3, 53.3 , 0 );
setMoveKey( spep_4 + 31 -a1, 1, -74.8, 56 , 0 );
setMoveKey( spep_4 + 32 -a1, 1, -6.9, -19.1 , 0 );  --仰け反り
setMoveKey( spep_4 + 34 -a1, 1, -4.9, -28.4 , 0 );
setMoveKey( spep_4 + 36 -a1, 1, -3, -37.9 , 0 );
setMoveKey( spep_4 + 38 -a1, 1, -1.1, -47.3 , 0 );
setMoveKey( spep_4 + 40 -a1, 1, 0.8, -56.7 , 0 );
setMoveKey( spep_4 + 42 -a1, 1, 2.8, -66.1 , 0 );
setMoveKey( spep_4 + 44 -a1, 1, 4.7, -75.5 , 0 );
setMoveKey( spep_4 + 46 -a1, 1, 6.6, -84.8 , 0 );
setMoveKey( spep_4 + 48 -a1, 1, 8.5, -94.2 , 0 );
setMoveKey( spep_4 + 50 -a1, 1, 10.4, -103.6 , 0 );
setMoveKey( spep_4 + 52 -a1, 1, 12.3, -113 , 0 );
setMoveKey( spep_4 + 54 -a1, 1, 14.2, -122.4 , 0 );
setMoveKey( spep_4 + 56 -a1, 1, 16.1, -131.8 , 0 );
setMoveKey( spep_4 + 58 -a1, 1, 18, -141.2 , 0 );
setMoveKey( spep_4 + 60 -a1, 1, 19.9, -150.6 , 0 );
setMoveKey( spep_4 + 62 -a1, 1, 21.8, -160 , 0 );
setMoveKey( spep_4 + 64 -a1, 1, 23.8, -169.4 , 0 );
setMoveKey( spep_4 + 66 -a1, 1, 25.7, -178.8 , 0 );
setMoveKey( spep_4 + 68 -a1, 1, 27.6, -188.1 , 0 );
setMoveKey( spep_4 + 70 -a1, 1, 29.5, -197.5 , 0 );
setMoveKey( spep_4 + 72 -a1, 1, 31.4, -206.9 , 0 );
setMoveKey( spep_4 + 74 -a1, 1, 33.3, -216.3 , 0 );
setMoveKey( spep_4 + 76 -a1, 1, 35.2, -225.7 , 0 );
setMoveKey( spep_4 + 77, 1, 37.1, -235.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_4 + 31 -a1, 1, 1.8, 1.8 );
setScaleKey( spep_4 + 32 -a1, 1, 1.85, 1.85 );  --仰け反り
setScaleKey( spep_4 + 34 -a1, 1, 2.36, 2.36 );
setScaleKey( spep_4 + 36 -a1, 1, 2.42, 2.42 );
setScaleKey( spep_4 + 38 -a1, 1, 2.47, 2.47 );
setScaleKey( spep_4 + 40 -a1, 1, 2.53, 2.53 );
setScaleKey( spep_4 + 42 -a1, 1, 2.59, 2.59 );
setScaleKey( spep_4 + 77, 1, 2.59, 2.59 );

setRotateKey( spep_4 + 0, 1, 28.8 );
setRotateKey( spep_4 + 31 -a1, 1, 28.8 );
setRotateKey( spep_4 + 32 -a1, 1, 109.8 );  --仰け反り
setRotateKey( spep_4 + 34 -a1, 1, 132.3 );
setRotateKey( spep_4 + 36 -a1, 1, 154.8 );
setRotateKey( spep_4 + 38 -a1, 1, 177.2 );
setRotateKey( spep_4 + 40 -a1, 1, 179.9 );
setRotateKey( spep_4 + 42 -a1, 1, 182.7 );
setRotateKey( spep_4 + 44 -a1, 1, 185.4 );
setRotateKey( spep_4 + 46 -a1, 1, 188.1 );
setRotateKey( spep_4 + 48 -a1, 1, 190.9 );
setRotateKey( spep_4 + 50 -a1, 1, 193.6 );
setRotateKey( spep_4 + 52 -a1, 1, 196.4 );
setRotateKey( spep_4 + 54 -a1, 1, 199.1 );
setRotateKey( spep_4 + 56 -a1, 1, 201.8 );
setRotateKey( spep_4 + 58 -a1, 1, 204.6 );
setRotateKey( spep_4 + 60 -a1, 1, 207.3 );
setRotateKey( spep_4 + 62 -a1, 1, 210.1 );
setRotateKey( spep_4 + 64 -a1, 1, 212.8 );
setRotateKey( spep_4 + 66 -a1, 1, 215.5 );
setRotateKey( spep_4 + 68 -a1, 1, 218.3 );
setRotateKey( spep_4 + 70 -a1, 1, 221 );
setRotateKey( spep_4 + 72 -a1, 1, 223.8 );
setRotateKey( spep_4 + 74 -a1, 1, 226.5 );
setRotateKey( spep_4 + 76 -a1, 1, 229.2 );
setRotateKey( spep_4 + 77, 1, 232 );

-- ** ホワイトフェード ** --
entryFade( spep_4 + 76, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 78, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_4 + 32 -a1, 1009 );  --バキ

-- ** 次の準備 ** --
spep_5 = spep_4 + 78;

------------------------------------------------------
-- 地面衝突(84F)
------------------------------------------------------

-- ** エフェクト等 ** --
syoutotsu_f = entryEffectLife( spep_5 + 0, SP_09, 84, 0x100, -1, 0, 0, 0 );  --地面衝突　手前(ef_009)
setEffMoveKey( spep_5 + 0, syoutotsu_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, syoutotsu_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, syoutotsu_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 84, syoutotsu_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, syoutotsu_f, 0 );
setEffRotateKey( spep_5 + 84, syoutotsu_f, 0 );
setEffAlphaKey( spep_5 + 0, syoutotsu_f, 255 );
setEffAlphaKey( spep_5 + 83, syoutotsu_f, 255 );
setEffAlphaKey( spep_5 + 84, syoutotsu_f, 0 );

syoutotsu_b = entryEffectLife( spep_5 + 0, SP_10, 84, 0x80, -1, 0, 0, 0 );  --地面衝突　奥(ef_010)
setEffMoveKey( spep_5 + 0, syoutotsu_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, syoutotsu_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, syoutotsu_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 84, syoutotsu_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, syoutotsu_b, 0 );
setEffRotateKey( spep_5 + 84, syoutotsu_b, 0 );
setEffAlphaKey( spep_5 + 0, syoutotsu_b, 255 );
setEffAlphaKey( spep_5 + 83, syoutotsu_b, 255 );
setEffAlphaKey( spep_5 + 84, syoutotsu_b, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5 + 0,  906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen2, 84, 10 );

setEffMoveKey( spep_5 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 84, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen2, -1.2, 1.2 );
setEffScaleKey( spep_5 + 84, shuchusen2, -1.2, 1.2 );

setEffRotateKey( spep_5 + 0, shuchusen2, 0 );
setEffRotateKey( spep_5 + 84, shuchusen2, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_5 + 83, shuchusen2, 255 );
setEffAlphaKey( spep_5 + 84, shuchusen2, 0 );

a2 = 3;
-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_5 + 32 -a2,  10018, 54, 0x100, -1, 0, -14, 95.5 );  --ドゴォン
setEffMoveKey( spep_5 + 32 -a2, ctdogon, 14, 95.5 , 0 );
setEffMoveKey( spep_5 + 34 -a2, ctdogon, 13.9, 110.1 , 0 );
setEffMoveKey( spep_5 + 36 -a2, ctdogon, 14, 124.8 , 0 );
setEffMoveKey( spep_5 + 38 -a2, ctdogon, 13.8, 139.4 , 0 );
setEffMoveKey( spep_5 + 40 -a2, ctdogon, 14, 140.1 , 0 );
setEffMoveKey( spep_5 + 42 -a2, ctdogon, 13.8, 140.6 , 0 );
setEffMoveKey( spep_5 + 44 -a2, ctdogon, 14, 141.3 , 0 );
setEffMoveKey( spep_5 + 46 -a2, ctdogon, 13.8, 141.8 , 0 );
setEffMoveKey( spep_5 + 48 -a2, ctdogon, 14, 142.6 , 0 );
setEffMoveKey( spep_5 + 50 -a2, ctdogon, 13.8, 143.1 , 0 );
setEffMoveKey( spep_5 + 52 -a2, ctdogon, 14, 143.8 , 0 );
setEffMoveKey( spep_5 + 54 -a2, ctdogon, 13.8, 144.3 , 0 );
setEffMoveKey( spep_5 + 56 -a2, ctdogon, 14, 145 , 0 );
setEffMoveKey( spep_5 + 58 -a2, ctdogon, 13.8, 145.6 , 0 );
setEffMoveKey( spep_5 + 60 -a2, ctdogon, 14, 146.3 , 0 );
setEffMoveKey( spep_5 + 62 -a2, ctdogon, 13.8, 146.8 , 0 );
setEffMoveKey( spep_5 + 64 -a2, ctdogon, 14, 147.5 , 0 );
setEffMoveKey( spep_5 + 66 -a2, ctdogon, 13.8, 148.1 , 0 );
setEffMoveKey( spep_5 + 68 -a2, ctdogon, 14, 148.8 , 0 );
setEffMoveKey( spep_5 + 70 -a2, ctdogon, 13.8, 149.3 , 0 );
setEffMoveKey( spep_5 + 72 -a2, ctdogon, 14, 150 , 0 );
setEffMoveKey( spep_5 + 74 -a2, ctdogon, 13.8, 150.5 , 0 );
setEffMoveKey( spep_5 + 76 -a2, ctdogon, 14, 151.3 , 0 );
setEffMoveKey( spep_5 + 78 -a2, ctdogon, 13.8, 151.8 , 0 );
setEffMoveKey( spep_5 + 80 -a2, ctdogon, 14, 152.5 , 0 );
setEffMoveKey( spep_5 + 82 -a2, ctdogon, 13.8, 153 , 0 );
setEffMoveKey( spep_5 + 84 -a2, ctdogon, 14, 153.7 , 0 );
setEffMoveKey( spep_5 + 84, ctdogon, 13.8, 154.3 , 0 );

setEffScaleKey( spep_5 + 32 -a2, ctdogon, 0.54, 0.54 );
setEffScaleKey( spep_5 + 34 -a2, ctdogon, 1.01, 1.01 );
setEffScaleKey( spep_5 + 36 -a2, ctdogon, 1.44, 1.44 );
setEffScaleKey( spep_5 + 38 -a2, ctdogon, 1.92, 1.92 );
setEffScaleKey( spep_5 + 40 -a2, ctdogon, 1.9, 1.9 );
setEffScaleKey( spep_5 + 42 -a2, ctdogon, 1.96, 1.96 );
setEffScaleKey( spep_5 + 44 -a2, ctdogon, 1.94, 1.94 );
setEffScaleKey( spep_5 + 46 -a2, ctdogon, 2, 2 );
setEffScaleKey( spep_5 + 48 -a2, ctdogon, 1.98, 1.98 );
setEffScaleKey( spep_5 + 50 -a2, ctdogon, 2.04, 2.04 );
setEffScaleKey( spep_5 + 52 -a2, ctdogon, 2.02, 2.02 );
setEffScaleKey( spep_5 + 54 -a2, ctdogon, 2.08, 2.08 );
setEffScaleKey( spep_5 + 56 -a2, ctdogon, 2.06, 2.06 );
setEffScaleKey( spep_5 + 58 -a2, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_5 + 60 -a2, ctdogon, 2.09, 2.09 );
setEffScaleKey( spep_5 + 62 -a2, ctdogon, 2.15, 2.15 );
setEffScaleKey( spep_5 + 64 -a2, ctdogon, 2.13, 2.13 );
setEffScaleKey( spep_5 + 66 -a2, ctdogon, 2.19, 2.19 );
setEffScaleKey( spep_5 + 68 -a2, ctdogon, 2.17, 2.17 );
setEffScaleKey( spep_5 + 70 -a2, ctdogon, 2.23, 2.23 );
setEffScaleKey( spep_5 + 72 -a2, ctdogon, 2.21, 2.21 );
setEffScaleKey( spep_5 + 74 -a2, ctdogon, 2.27, 2.27 );
setEffScaleKey( spep_5 + 76 -a2, ctdogon, 2.25, 2.25 );
setEffScaleKey( spep_5 + 78 -a2, ctdogon, 2.32, 2.32 );
setEffScaleKey( spep_5 + 80 -a2, ctdogon, 2.29, 2.29 );
setEffScaleKey( spep_5 + 82 -a2, ctdogon, 2.35, 2.35 );
setEffScaleKey( spep_5 + 84 -a2, ctdogon, 2.32, 2.32 );
setEffScaleKey( spep_5 + 84, ctdogon, 2.39, 2.39 );

setEffRotateKey( spep_5 + 32 -a2, ctdogon, 0 );
setEffRotateKey( spep_5 + 84, ctdogon, 0 );

setEffAlphaKey( spep_5 + 32 -a2, ctdogon, 255 );
setEffAlphaKey( spep_5 + 83, ctdogon, 255 );
setEffAlphaKey( spep_5 + 84, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 84, 1, 0 );
changeAnime( spep_5 + 0, 1, 5 );  --ダメージ奥
setShakeChara( spep_5 + 0, 1, 86 );

setMoveKey( spep_5 + 0, 1, 26.3, 21.8 , 0 );
setMoveKey( spep_5 + 2, 1, 26.4, 21.9 , 0 );
setMoveKey( spep_5 + 8, 1, 26.4, 21.9 , 0 );
setMoveKey( spep_5 + 10, 1, 26.5, 21.9 , 0 );
setMoveKey( spep_5 + 12, 1, 26.5, 22 , 0 );
setMoveKey( spep_5 + 14 -1, 1, 26.5, 22 , 0 );
setMoveKey( spep_5 + 16 -a2, 1, 26.7, 22.1 , 0 );
setMoveKey( spep_5 + 18 -a2, 1, 26.8, 22.3 , 0 );
setMoveKey( spep_5 + 20 -a2, 1, 27, 22.4 , 0 );
setMoveKey( spep_5 + 22 -a2, 1, 27.2, 22.6 , 0 );
setMoveKey( spep_5 + 24 -a2, 1, 27.4, 22.7 , 0 );
setMoveKey( spep_5 + 26 -a2, 1, 27.5, 22.9 , 0 );
setMoveKey( spep_5 + 28 -a2, 1, 27.7, 23 , 0 );
setMoveKey( spep_5 + 30 -a2, 1, 27.9, 23.2 , 0 );
setMoveKey( spep_5 + 32 -a2, 1, 28, 23.3 , 0 );
setMoveKey( spep_5 + 84, 1, 28, 23.3 , 0 );

setScaleKey( spep_5 + 0, 1, 4.79, 4.79 );
setScaleKey( spep_5 + 2, 1, 4.74, 4.74 );
setScaleKey( spep_5 + 4, 1, 4.68, 4.68 );
setScaleKey( spep_5 + 6, 1, 4.63, 4.63 );
setScaleKey( spep_5 + 8, 1, 4.57, 4.57 );
setScaleKey( spep_5 + 10, 1, 4.52, 4.52 );
setScaleKey( spep_5 + 12, 1, 4.46, 4.46 );
setScaleKey( spep_5 + 14 -1, 1, 4.41, 4.41 );
setScaleKey( spep_5 + 16 -a2, 1, 3.98, 3.98 );
setScaleKey( spep_5 + 18 -a2, 1, 3.56, 3.56 );
setScaleKey( spep_5 + 20 -a2, 1, 3.13, 3.13 );
setScaleKey( spep_5 + 22 -a2, 1, 2.71, 2.71 );
setScaleKey( spep_5 + 24 -a2, 1, 2.28, 2.28 );
setScaleKey( spep_5 + 26 -a2, 1, 1.85, 1.85 );
setScaleKey( spep_5 + 28 -a2, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 30 -a2, 1, 1, 1 );
setScaleKey( spep_5 + 32 -a2, 1, 0.58, 0.58 );
setScaleKey( spep_5 + 84, 1, 0.58, 0.58 );

setRotateKey( spep_5 + 0, 1, 179 );
setRotateKey( spep_5 + 84, 1, 179 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 84, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_5 + 0, 1053 );  --落ちる音
playSe( spep_5 + 32 -a2, SE_10 );  --ドゴォン

-- ** 次の準備 ** --
spep_6 = spep_5 + 84;

------------------------------------------------------
-- ビリビリ(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
biribiri = entryEffectLife( spep_6 + 0, SP_11, 86, 0x100, -1, 0, 0, 0 );  --ビリビリ(ef_011)
setEffMoveKey( spep_6 + 0, biribiri, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, biribiri, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, biribiri, -1.0, 1.0 );
setEffScaleKey( spep_6 + 86, biribiri, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, biribiri, 0 );
setEffRotateKey( spep_6 + 86, biribiri, 0 );
setEffAlphaKey( spep_6 + 0, biribiri, 255 );
setEffAlphaKey( spep_6 + 85, biribiri, 255 );
setEffAlphaKey( spep_6 + 86, biribiri, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_6 + 58,  906, 30, 0x100, -1, 0, 0, 30 );  --集中線
setEffShake( spep_6 + 58, shuchusen3, 30, 10 );

setEffMoveKey( spep_6 + 58, shuchusen3, 0, 30 , 0 );
setEffMoveKey( spep_6 + 88, shuchusen3, 0, 30 , 0 );

setEffScaleKey( spep_6 + 58, shuchusen3, -1.88, 1.94 );
setEffScaleKey( spep_6 + 88, shuchusen3, -1.88, 1.94 );

setEffRotateKey( spep_6 + 58, shuchusen3, 0 );
setEffRotateKey( spep_6 + 88, shuchusen3, 0 );

setEffAlphaKey( spep_6 + 58, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 87, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 88, shuchusen3, 0 );

-- ** 書き文字エントリー ** --
ctbibi1 = entryEffectLife( spep_6 + 62,  10025, 26, 0x100, -1, 0, -203.9, 430.2 );  --ビビビ
setEffMoveKey( spep_6 + 62, ctbibi1, 203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 64, ctbibi1, 205.9, 435.9 , 0 );
setEffMoveKey( spep_6 + 66, ctbibi1, 203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 68, ctbibi1, 205.9, 435.9 , 0 );
setEffMoveKey( spep_6 + 70, ctbibi1, 203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 72, ctbibi1, 205.9, 435.9 , 0 );
setEffMoveKey( spep_6 + 74, ctbibi1, 203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 76, ctbibi1, 205.9, 435.9 , 0 );
setEffMoveKey( spep_6 + 78, ctbibi1, 203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 80, ctbibi1, 205.9, 435.9 , 0 );
setEffMoveKey( spep_6 + 82, ctbibi1, 203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 84, ctbibi1, 205.9, 435.9 , 0 );
setEffMoveKey( spep_6 + 86, ctbibi1, 203.9, 430.2 , 0 );
setEffMoveKey( spep_6 + 88, ctbibi1, 205.9, 435.9 , 0 );

setEffScaleKey( spep_6 + 62, ctbibi1, 0.83, 0.83 );
setEffScaleKey( spep_6 + 88, ctbibi1, 0.83, 0.83 );

setEffRotateKey( spep_6 + 62, ctbibi1, -14 );
setEffRotateKey( spep_6 + 88, ctbibi1, -14 );

setEffAlphaKey( spep_6 + 62, ctbibi1, 255 );
setEffAlphaKey( spep_6 + 88, ctbibi1, 255 );

ctbibi2 = entryEffectLife( spep_6 + 62,  10025, 26, 0x100, -1, 0, 132.5, 449.8 );  --ビビビ
setEffMoveKey( spep_6 + 62, ctbibi2, -132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 64, ctbibi2, -133.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 66, ctbibi2, -132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 68, ctbibi2, -133.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 70, ctbibi2, -132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 72, ctbibi2, -133.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 74, ctbibi2, -132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 76, ctbibi2, -133.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 78, ctbibi2, -132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 80, ctbibi2, -133.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 82, ctbibi2, -132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 84, ctbibi2, -133.6, 443.6 , 0 );
setEffMoveKey( spep_6 + 86, ctbibi2, -132.5, 449.8 , 0 );
setEffMoveKey( spep_6 + 88, ctbibi2, -133.6, 443.6 , 0 );

setEffScaleKey( spep_6 + 62, ctbibi2, 0.87, 0.87 );
setEffScaleKey( spep_6 + 88, ctbibi2, 0.87, 0.87 );

setEffRotateKey( spep_6 + 62, ctbibi2, -23.7 );
setEffRotateKey( spep_6 + 88, ctbibi2, -23.7 );

setEffAlphaKey( spep_6 + 62, ctbibi2, 255 );
setEffAlphaKey( spep_6 + 88, ctbibi2, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_6 + 54, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 86, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_6 + 12, 1013 );  --着地音
playSe( spep_6 + 50, 1056 );  --ビリビリ

-- ** 次の準備 ** --
spep_7 = spep_6 + 86;

------------------------------------------------------
-- ビリビリ受ける(68F)
------------------------------------------------------

-- ** エフェクト等 ** --
biribiri_hit = entryEffectLife( spep_7 + 0, SP_12, 68, 0x100, -1, 0, 0, 0 );  --迫るビリビリ(ef_012)
setEffMoveKey( spep_7 + 0, biribiri_hit, 0, 0 , 0 );
setEffMoveKey( spep_7 + 68, biribiri_hit, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, biribiri_hit, -1.0, 1.0 );
setEffScaleKey( spep_7 + 68, biribiri_hit, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, biribiri_hit, 0 );
setEffRotateKey( spep_7 + 68, biribiri_hit, 0 );
setEffAlphaKey( spep_7 + 0, biribiri_hit, 255 );
setEffAlphaKey( spep_7 + 68, biribiri_hit, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_7 + 0,  906, 68, 0x100, -1, 0, 55.8, 298.6 );  --集中線
setEffShake( spep_7 + 0, shuchusen4, 68, 10 );

setEffMoveKey( spep_7 + 0, shuchusen4, -55.8, 298.6 , 0 );
setEffMoveKey( spep_7 + 68, shuchusen4, -55.8, 298.6 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen4, 1.57, 1.57 );
setEffScaleKey( spep_7 + 68, shuchusen4, 1.57, 1.57 );

setEffRotateKey( spep_7 + 0, shuchusen4, 0 );
setEffRotateKey( spep_7 + 68, shuchusen4, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_7 + 68, shuchusen4, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_7 + 16 -3, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_7 + 56, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 68, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
SE1 = playSe( spep_7 + 18, 1050 );  --ビリビリ
stopSe(spep_7 + 68, SE1, 0 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 68;

------------------------------------------------------
-- 気弾発射(148F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_8 + 0, SP_13, 148, 0x100, -1, 0, 0, 0 );  --気弾発射(ef_013)
setEffMoveKey( spep_8 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_8 + 148, hassha, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_8 + 148, hassha, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hassha, 0 );
setEffRotateKey( spep_8 + 148, hassha, 0 );
setEffAlphaKey( spep_8 + 0, hassha, 255 );
setEffAlphaKey( spep_8 + 148, hassha, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_8 + 8, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_8 + 8, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_8 + 100 -3,  906, 12, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 100 -3, shuchusen5, 12, 10 );

setEffMoveKey( spep_8 + 100 -3, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_8 + 112 -3, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_8 + 100 -3, shuchusen5, 1.3, 1.3 );
setEffScaleKey( spep_8 + 112 -3, shuchusen5, 1.3, 1.3 );

setEffRotateKey( spep_8 + 100 -3, shuchusen5, 0 );
setEffRotateKey( spep_8 + 112 -3, shuchusen5, 0 );

setEffAlphaKey( spep_8 + 100 -3, shuchusen5, 255 );
setEffAlphaKey( spep_8 + 112 -3, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_8 + 24 - 2,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_8 + 24 - 2, ctgogo, 70, 10 );

setEffMoveKey( spep_8 + 24 - 2, ctgogo, -8.5, 515.5, 0 );
setEffMoveKey( spep_8 + 94 - 2, ctgogo, -8.5, 515.5, 0 );

setEffScaleKey( spep_8 + 24 - 2, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_8 + 86 - 2, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_8 + 88 - 2, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_8 + 90 - 2, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_8 + 92 - 2, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_8 + 94 - 2, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_8 + 24 - 2, ctgogo, 0 );
setEffRotateKey( spep_8 + 94 - 2, ctgogo, 0 );

setEffAlphaKey( spep_8 + 24 - 2, ctgogo, 255 );
setEffAlphaKey( spep_8 + 94 - 2, ctgogo, 255 );

ctzuo = entryEffectLife( spep_8 + 100 -3,  10012, 30, 0x100, -1, 0, -37.6, 80.9 );  --ズオッ
setEffMoveKey( spep_8 + 100 -3, ctzuo, 37.6, 80.9 , 0 );
setEffMoveKey( spep_8 + 102 -3, ctzuo, 14.1, 121.2 , 0 );
setEffMoveKey( spep_8 + 104 -3, ctzuo, -4.3, 154.7 , 0 );
setEffMoveKey( spep_8 + 106 -3, ctzuo, -30, 197.7 , 0 );
setEffMoveKey( spep_8 + 108 -3, ctzuo, -46.4, 228.6 , 0 );
setEffMoveKey( spep_8 + 110 -3, ctzuo, -40.1, 246.2 , 0 );
setEffMoveKey( spep_8 + 112 -3, ctzuo, -22.1, 248.3 , 0 );
setEffMoveKey( spep_8 + 114 -3, ctzuo, -16.4, 266.7 , 0 );
setEffMoveKey( spep_8 + 116 -3, ctzuo, 2.2, 268.2 , 0 );
setEffMoveKey( spep_8 + 118 -3, ctzuo, 7.3, 287.3 , 0 );
setEffMoveKey( spep_8 + 120 -3, ctzuo, 14.3, 278.1 , 0 );
setEffMoveKey( spep_8 + 122 -3, ctzuo, 7.3, 287.3 , 0 );
setEffMoveKey( spep_8 + 124 -3, ctzuo, 14.3, 278.1 , 0 );
setEffMoveKey( spep_8 + 126 -3, ctzuo, 7.3, 287.3 , 0 );
setEffMoveKey( spep_8 + 128 -3, ctzuo, 14.3, 278.1 , 0 );
setEffMoveKey( spep_8 + 130 -3, ctzuo, 14.3, 278.1 , 0 );

setEffScaleKey( spep_8 + 100 -3, ctzuo, 0.59, 0.59 );
setEffScaleKey( spep_8 + 102 -3, ctzuo, 0.96, 0.96 );
setEffScaleKey( spep_8 + 104 -3, ctzuo, 1.32, 1.32 );
setEffScaleKey( spep_8 + 106 -3, ctzuo, 1.69, 1.69 );
setEffScaleKey( spep_8 + 108 -3, ctzuo, 2.06, 2.06 );
setEffScaleKey( spep_8 + 110 -3, ctzuo, 2.16, 2.16 );
setEffScaleKey( spep_8 + 112 -3, ctzuo, 2.27, 2.27 );
setEffScaleKey( spep_8 + 114 -3, ctzuo, 2.38, 2.38 );
setEffScaleKey( spep_8 + 116 -3, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_8 + 118 -3, ctzuo, 2.59, 2.59 );
setEffScaleKey( spep_8 + 130 -3, ctzuo, 2.59, 2.59 );

setEffRotateKey( spep_8 + 100 -3, ctzuo, 26.3 );
setEffRotateKey( spep_8 + 102 -3, ctzuo, 26.4 );
setEffRotateKey( spep_8 + 130 -3, ctzuo, 26.4 );

setEffAlphaKey( spep_8 + 100 -3, ctzuo, 255 );
setEffAlphaKey( spep_8 + 118 -3, ctzuo, 255 );
setEffAlphaKey( spep_8 + 120 -3, ctzuo, 212 );
setEffAlphaKey( spep_8 + 122 -3, ctzuo, 170 );
setEffAlphaKey( spep_8 + 124 -3, ctzuo, 128 );
setEffAlphaKey( spep_8 + 126 -3, ctzuo, 85 );
setEffAlphaKey( spep_8 + 128 -3, ctzuo, 43 );
setEffAlphaKey( spep_8 + 130 -3, ctzuo, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_8 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_8 + 140, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_8 + 0, 0, 148, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_8 + 24, SE_04 );  --ゴゴゴ
playSe( spep_8 + 100 -3, 1022 );  --発射

-- ** 次の準備 ** --
spep_9 = spep_8 + 148;

------------------------------------------------------
-- 着弾(158F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan_f = entryEffectLife( spep_9 + 0, SP_14, 158, 0x100, -1, 0, 0, 0 );  --着弾　手前(ef_014)
setEffMoveKey( spep_9 + 0, tyakudan_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 158, tyakudan_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, tyakudan_f, -1.0, 1.0 );
setEffScaleKey( spep_9 + 158, tyakudan_f, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tyakudan_f, 0 );
setEffRotateKey( spep_9 + 158, tyakudan_f, 0 );
setEffAlphaKey( spep_9 + 0, tyakudan_f, 255 );
setEffAlphaKey( spep_9 + 158, tyakudan_f, 255 );

tyakudan_b = entryEffectLife( spep_9 + 0, SP_15, 158, 0x80, -1, 0, 0, 0 );  --着弾　奥(ef_015)
setEffMoveKey( spep_9 + 0, tyakudan_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 158, tyakudan_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, tyakudan_b, -1.0, 1.0 );
setEffScaleKey( spep_9 + 158, tyakudan_b, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tyakudan_b, 0 );
setEffRotateKey( spep_9 + 158, tyakudan_b, 0 );
setEffAlphaKey( spep_9 + 0, tyakudan_b, 255 );
setEffAlphaKey( spep_9 + 158, tyakudan_b, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_9 + 0,  906, 158, 0x100, -1, 0, 10, 20 );  --集中線
setEffShake( spep_9 + 0, shuchusen6, 12, 10 );

setEffMoveKey( spep_9 + 0, shuchusen6, 10, 20 , 0 );
setEffMoveKey( spep_9 + 158, shuchusen6, 10, 20 , 0 );

setEffScaleKey( spep_9 + 0, shuchusen6, -1.3, 1.3 );
setEffScaleKey( spep_9 + 158, shuchusen6, -1.3, 1.3 );

setEffRotateKey( spep_9 + 0, shuchusen6, 0 );
setEffRotateKey( spep_9 + 158, shuchusen6, 0 );

setEffAlphaKey( spep_9 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_9 + 158, shuchusen6, 255 );

 a3 = 3;
-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 60, 1, 0 );
changeAnime( spep_9 + 0, 1, 5 );  --ダメージ奥

setMoveKey( spep_9 + 0, 1, -222.5, 277.5 , 0 );
setMoveKey( spep_9 + 2 -1, 1, -214.6, 264.5 , 0 );
setMoveKey( spep_9 + 4 -a3, 1, -206.7, 251.5 , 0 );
setMoveKey( spep_9 + 6 -a3, 1, -198.8, 238.5 , 0 );
setMoveKey( spep_9 + 8 -a3, 1, -190.9, 225.5 , 0 );
setMoveKey( spep_9 + 10 -a3, 1, -183, 212.6 , 0 );
setMoveKey( spep_9 + 12 -a3, 1, -175.2, 199.6 , 0 );
setMoveKey( spep_9 + 14 -a3, 1, -167.3, 186.6 , 0 );
setMoveKey( spep_9 + 16 -a3, 1, -159.4, 173.7 , 0 );
setMoveKey( spep_9 + 18 -a3, 1, -151.5, 160.7 , 0 );
setMoveKey( spep_9 + 20 -a3, 1, -143.6, 147.7 , 0 );
setMoveKey( spep_9 + 22 -a3, 1, -135.7, 134.7 , 0 );
setMoveKey( spep_9 + 24 -a3, 1, -127.9, 121.8 , 0 );
setMoveKey( spep_9 + 26 -a3, 1, -120, 108.8 , 0 );
setMoveKey( spep_9 + 28 -a3, 1, -112.1, 95.8 , 0 );
setMoveKey( spep_9 + 30 -a3, 1, -104.2, 82.8 , 0 );
setMoveKey( spep_9 + 32 -a3, 1, -96.3, 69.9 , 0 );
setMoveKey( spep_9 + 34 -a3, 1, -88.4, 56.9 , 0 );
setMoveKey( spep_9 + 36 -a3, 1, -80.5, 43.9 , 0 );
setMoveKey( spep_9 + 38 -a3, 1, -72.6, 30.9 , 0 );
setMoveKey( spep_9 + 40 -a3, 1, -64.8, 18 , 0 );
setMoveKey( spep_9 + 42 -a3, 1, -56.9, 5 , 0 );
setMoveKey( spep_9 + 44 -a3, 1, -49, -8 , 0 );
setMoveKey( spep_9 + 46 -a3, 1, -53.5, -27.3 , 0 );
setMoveKey( spep_9 + 48 -a3, 1, -77.2, -22.2 , 0 );
setMoveKey( spep_9 + 50 -a3, 1, -52.3, -46.7 , 0 );
setMoveKey( spep_9 + 52 -a3, 1, -75.9, -42.9 , 0 );
setMoveKey( spep_9 + 54 -a3, 1, -48.2, -19.1 , 0 );
setMoveKey( spep_9 + 56 -a3, 1, -68.9, -18 , 0 );
setMoveKey( spep_9 + 58 -a3, 1, -44.1, -42.6 , 0 );
setMoveKey( spep_9 + 60 -a3, 1, -67.8, -38.7 , 0 );

setScaleKey( spep_9 + 0, 1, 0.54, 0.54 );
setScaleKey( spep_9 + 2 -1, 1, 0.57, 0.57 );
setScaleKey( spep_9 + 4 -a3, 1, 0.6, 0.6 );
setScaleKey( spep_9 + 6 -a3, 1, 0.62, 0.62 );
setScaleKey( spep_9 + 8 -a3, 1, 0.65, 0.65 );
setScaleKey( spep_9 + 10 -a3, 1, 0.67, 0.67 );
setScaleKey( spep_9 + 12 -a3, 1, 0.7, 0.7 );
setScaleKey( spep_9 + 14 -a3, 1, 0.72, 0.72 );
setScaleKey( spep_9 + 16 -a3, 1, 0.74, 0.74 );
setScaleKey( spep_9 + 18 -a3, 1, 0.77, 0.77 );
setScaleKey( spep_9 + 20 -a3, 1, 0.79, 0.79 );
setScaleKey( spep_9 + 22 -a3, 1, 0.82, 0.82 );
setScaleKey( spep_9 + 24 -a3, 1, 0.84, 0.84 );
setScaleKey( spep_9 + 26 -a3, 1, 0.87, 0.87 );
setScaleKey( spep_9 + 28 -a3, 1, 0.89, 0.89 );
setScaleKey( spep_9 + 30 -a3, 1, 0.92, 0.92 );
setScaleKey( spep_9 + 32 -a3, 1, 0.94, 0.94 );
setScaleKey( spep_9 + 34 -a3, 1, 0.96, 0.96 );
setScaleKey( spep_9 + 36 -a3, 1, 0.99, 0.99 );
setScaleKey( spep_9 + 38 -a3, 1, 1.01, 1.01 );
setScaleKey( spep_9 + 40 -a3, 1, 1.04, 1.04 );
setScaleKey( spep_9 + 42 -a3, 1, 1.06, 1.06 );
setScaleKey( spep_9 + 44 -a3, 1, 1.09, 1.09 );
setScaleKey( spep_9 + 46 -a3, 1, 1.45, 1.45 );
setScaleKey( spep_9 + 48 -a3, 1, 1.78, 1.78 );
setScaleKey( spep_9 + 50 -a3, 1, 1.73, 1.73 );
setScaleKey( spep_9 + 52 -a3, 1, 1.67, 1.67 );
setScaleKey( spep_9 + 54 -a3, 1, 1.62, 1.62 );
setScaleKey( spep_9 + 56 -a3, 1, 1.56, 1.56 );
setScaleKey( spep_9 + 58 -a3, 1, 1.5, 1.5 );
setScaleKey( spep_9 + 60 -a3, 1, 1.45, 1.45 );

setRotateKey( spep_9 + 0, 1, -165.8 );
setRotateKey( spep_9 + 60 -a3, 1, -165.8 );

-- ** ホワイトフェード ** --
entryFade( spep_9 + 46, 4, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_9 + 128, 28, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 背景 ** --
entryFadeBg( spep_9 + 0, 0, 158, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
playSe( spep_9 + 52, 1024 );  --爆発

-- ** 次の準備 ** --
spep_10 = spep_9 + 158;

------------------------------------------------------
-- 万歳(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
banzai = entryEffect( spep_10 + 0, SP_16, 0x100, -1, 0, 0, 0 );  --万歳(ef_016)
setEffMoveKey( spep_10 + 0, banzai, 0, 0 , 0 );
setEffMoveKey( spep_10 + 176, banzai, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, banzai, -1.0, 1.0 );
setEffScaleKey( spep_10 + 176, banzai, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, banzai, 0 );
setEffRotateKey( spep_10 + 176, banzai, 0 );
setEffAlphaKey( spep_10 + 0, banzai, 255 );
setEffAlphaKey( spep_10 + 176, banzai, 255 );

-- ** 音 ** --
playSe( spep_10 + 50, 24 );  --じゃんぷ
playSe( spep_10 + 108, 24 );  --じゃんぷ
playSe( spep_10 + 168, 24 );  --じゃんぷ

-- ** ダメージ表示 ** --
dealDamage( spep_10 + 0 );
entryFade( spep_10 + 166, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_10 + 176 );

end



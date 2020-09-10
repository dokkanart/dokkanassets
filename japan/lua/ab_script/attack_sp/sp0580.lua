--人造人間15号_F.Fスパークキャノン

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
SP_01 = 153843; --アイドリング
SP_02 = 153845; --気溜め
SP_03 = 153847; --構え
SP_04 = 153849; --斜め撃ち
SP_05 = 153851; --気弾が敵に迫る

--敵側
SP_01x = 153844; --アイドリング
SP_02x = 153846; --気溜め
SP_03x = 153848; --構え
SP_04x = 153850; --斜め撃ち

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
-- アイドリング(28F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffectLife( spep_0 + 0, SP_01, 28, 0x100, -1, 0, 0, 0 );  --アイドリング(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 28, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 28, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 28, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 28, idling, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 28;

------------------------------------------------------
-- 気溜め(36F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02, 36, 0x100, -1, 0, 0, 0 );  --気溜め(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 36, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 36, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 36, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 36, tame, 255 );

-- ** 書き文字エントリー ** --
a = 10;
ctzun = entryEffectLife( spep_1 + 0,  10013, 36,  0x100, -1, 0, 22, 191.9 );  --ズズズン
setEffShake( spep_1 + 12, ctzun, 24, 20 );

setEffMoveKey( spep_1 + 0, ctzun, 22, 191.9 -a , 0 );
setEffMoveKey( spep_1 + 2, ctzun, 29.8, 246.3 -a , 0 );
setEffMoveKey( spep_1 + 4, ctzun, 49.2, 309.6 -a , 0 );
setEffMoveKey( spep_1 + 6, ctzun, 46.5, 333.1 -a , 0 );
setEffMoveKey( spep_1 + 8, ctzun, 51.6, 327.8 -a , 0 );
setEffMoveKey( spep_1 + 10, ctzun, 37.1, 303.5 -a , 0 );
setEffMoveKey( spep_1 + 12, ctzun, 46, 309.9 -a , 0 );
setEffMoveKey( spep_1 + 36, ctzun, 46, 309.9 -a , 0 );

setEffScaleKey( spep_1 + 0, ctzun, 0.38 +0.7, 0.38 +0.7 );
setEffScaleKey( spep_1 + 2, ctzun, 0.62 +0.7, 0.62 +0.7 );
setEffScaleKey( spep_1 + 4, ctzun, 0.85 +0.7, 0.85 +0.7 );
setEffScaleKey( spep_1 + 6, ctzun, 1 +1.9, 1 +1.9 );
setEffScaleKey( spep_1 + 36, ctzun, 1 +1.9, 1 +1.9 );

setEffRotateKey( spep_1 + 0, ctzun, 0 );
setEffRotateKey( spep_1 + 36, ctzun, 0 );

setEffAlphaKey( spep_1 + 0, ctzun, 255 );
setEffAlphaKey( spep_1 + 36, ctzun, 255 );

-- ** 白フェード ** --
entryFade( spep_1 + 28, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 0, 1035 );  --溜める

-- ** 次の準備 ** --
spep_2 = spep_1 + 36;

------------------------------------------------------
-- 構え(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_2 + 0, SP_03, 98, 0x100, -1, 0, 0, 0 );  --構え(ef_003)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_2 + 98, kamae, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 98, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 98, kamae, 255 );

spep_x = spep_2 + 0;
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
playSe( spep_x + 16, SE_04 );  --ゴゴゴ

-- ** 白フェード ** --
entryFade( spep_2 + 88, 8, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 98;

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

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 斜め撃ち(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_4 + 0, SP_04, 118, 0x100, -1, 0, 0, 0 );  --斜め撃ち(ef_004)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 118, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 118, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 118, hassha, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_4 + 0,  921, 118, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_4 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen1, 1.2, 1 );
setEffScaleKey( spep_4 + 118, ryusen1, 1.2, 1 );

setEffRotateKey( spep_4 + 0, ryusen1, 180 );
setEffRotateKey( spep_4 + 118, ryusen1, 180 );

setEffAlphaKey( spep_4 + 0, ryusen1, 255 );
setEffAlphaKey( spep_4 + 118, ryusen1, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 + 30 -3,  10012, 14, 0x100, -1, 0, -44, 259.9 );  --ズオッ
setEffMoveKey( spep_4 + 30 -3, ctzuo, -44, 259.9 , 0 );
setEffMoveKey( spep_4 + 32 -3, ctzuo, 14.8, 286.2 , 0 );
setEffMoveKey( spep_4 + 34 -3, ctzuo, 58.9, 327.2 , 0 );
setEffMoveKey( spep_4 + 36 -3, ctzuo, 128.4, 342.7 , 0 );
setEffMoveKey( spep_4 + 38 -3, ctzuo, 161.6, 394.8 , 0 );
setEffMoveKey( spep_4 + 40 -3, ctzuo, 242.2, 399.3 , 0 );
setEffMoveKey( spep_4 + 42 -3, ctzuo, 264.5, 462.1 , 0 );
setEffMoveKey( spep_4 + 44 -3, ctzuo, 316, 495.9 , 0 );

setEffScaleKey( spep_4 + 30 -3, ctzuo, 0.3, 0.3 );
setEffScaleKey( spep_4 + 32 -3, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_4 + 34 -3, ctzuo, 2.64, 2.64 );
setEffScaleKey( spep_4 + 36 -3, ctzuo, 2.91, 2.91 );
setEffScaleKey( spep_4 + 38 -3, ctzuo, 3.19, 3.19 );
setEffScaleKey( spep_4 + 40 -3, ctzuo, 4.46, 4.46 );
setEffScaleKey( spep_4 + 42 -3, ctzuo, 5.73, 5.73 );
setEffScaleKey( spep_4 + 44 -3, ctzuo, 6.2 , 6.2 );

setEffRotateKey( spep_4 + 30 -3, ctzuo, 30 );
setEffRotateKey( spep_4 + 44 -3, ctzuo, 30 );

setEffAlphaKey( spep_4 + 30 -3, ctzuo, 255 );
setEffAlphaKey( spep_4 + 40 -3, ctzuo, 255 );
setEffAlphaKey( spep_4 + 42 -3, ctzuo, 128 );
setEffAlphaKey( spep_4 + 44 -3, ctzuo, 0 );

-- ** 音 ** --
SE1 = playSe( spep_4 + 30 -3, 1022 );  --発射

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 118, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 0 );

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

-- ** 白フェード ** --
entryFade( spep_4 + 112, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 118;

------------------------------------------------------
-- 被弾(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_5 + 0, SP_05, 98, 0x100, -1, 0, 0, 0 );  --被弾(ef_005)
setEffMoveKey( spep_5 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, hidan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, hidan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan, 0 );
setEffRotateKey( spep_5 + 98, hidan, 0 );
setEffAlphaKey( spep_5 + 0, hidan, 255 );
setEffAlphaKey( spep_5 + 96, hidan, 255 );
setEffAlphaKey( spep_5 + 97, hidan, 0 );
setEffAlphaKey( spep_5 + 98, hidan, 0 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_5 + 0,  921, 98, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_5 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 1, 1 );
setEffScaleKey( spep_5 + 98, ryusen2, 1, 1 );

setEffRotateKey( spep_5 + 0, ryusen2, 0 );
setEffRotateKey( spep_5 + 98, ryusen2, 0 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 96, ryusen2, 255 );
setEffAlphaKey( spep_5 + 97, ryusen2, 0 );
setEffAlphaKey( spep_5 + 98, ryusen2, 0 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_5 + 0,  10014, 98, 0x100, -1, 0, 58.1, 364 );  --ズドド
setEffShake( spep_5 + 0, ctzudo, 98, 25 );

setEffMoveKey( spep_5 + 0, ctzudo, 58.1, 364 -30 , 0 );
setEffMoveKey( spep_5 + 98, ctzudo, 58.1, 364 -30 , 0 );

setEffScaleKey( spep_5 + 0, ctzudo, 3.2, 3.2 );
setEffScaleKey( spep_5 + 98, ctzudo, 3.2, 3.2 );

setEffRotateKey( spep_5 + 0, ctzudo, 70 );
setEffRotateKey( spep_5 + 98, ctzudo, 70 );

setEffAlphaKey( spep_5 + 0, ctzudo, 255 );
setEffAlphaKey( spep_5 + 96, ctzudo, 255 );
setEffAlphaKey( spep_5 + 97, ctzudo, 0 );
setEffAlphaKey( spep_5 + 98, ctzudo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 96, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 + 60 -2, 1, 108 );

setMoveKey( spep_5 + 0, 1, 237.9, -80.6 , 0 );
setMoveKey( spep_5 + 4 -2, 1, 238.7, -76.6 , 0 );
setMoveKey( spep_5 + 6 -2, 1, 243, -73.6 , 0 );
setMoveKey( spep_5 + 8 -2, 1, 236.6, -78.1 , 0 );
setMoveKey( spep_5 + 10 -2, 1, 241.2, -75.2 , 0 );
setMoveKey( spep_5 + 12 -2, 1, 234.3, -79.7 , 0 );
setMoveKey( spep_5 + 14 -2, 1, 239, -76.9 , 0 );
setMoveKey( spep_5 + 16 -2, 1, 231.7, -81.5 , 0 );
setMoveKey( spep_5 + 18 -2, 1, 236.1, -78.8 , 0 );
setMoveKey( spep_5 + 20 -2, 1, 228.8, -83.5 , 0 );
setMoveKey( spep_5 + 22 -2, 1, 233.3, -80.9 , 0 );
setMoveKey( spep_5 + 24 -2, 1, 225.7, -85.7 , 0 );
setMoveKey( spep_5 + 26 -2, 1, 229.9, -83.1 , 0 );
setMoveKey( spep_5 + 28 -2, 1, 222.4, -88 , 0 );
setMoveKey( spep_5 + 30 -2, 1, 226.7, -85.3 , 0 );
setMoveKey( spep_5 + 32 -2, 1, 218.9, -90.5 , 0 );
setMoveKey( spep_5 + 34 -2, 1, 222.9, -88 , 0 );
setMoveKey( spep_5 + 36 -2, 1, 215, -93.2 , 0 );
setMoveKey( spep_5 + 38 -2, 1, 219, -90.8 , 0 );
setMoveKey( spep_5 + 40 -2, 1, 211, -96 , 0 );
setMoveKey( spep_5 + 42 -2, 1, 215, -93.7 , 0 );
setMoveKey( spep_5 + 44 -2, 1, 206.7, -99 , 0 );
setMoveKey( spep_5 + 46 -2, 1, 210.4, -96.8 , 0 );
setMoveKey( spep_5 + 48 -2, 1, 202.2, -102.1 , 0 );
setMoveKey( spep_5 + 50 -2, 1, 205.5, -100.1 , 0 );
setMoveKey( spep_5 + 52 -2, 1, 197.4, -105 , 0 );
setMoveKey( spep_5 + 54 -2, 1, 200.6, -103.2 , 0 );
setMoveKey( spep_5 + 56 -2, 1, 192.4, -108.5 , 0 );
setMoveKey( spep_5 + 59 -2, 1, 195.6, -106.7 , 0 );
setMoveKey( spep_5 + 60 -2, 1, 196.9, -103.8 , 0 );
setMoveKey( spep_5 + 62 -2, 1, 194.2, -98.6 , 0 );
setMoveKey( spep_5 + 64 -2, 1, 195.1, -103.8 , 0 );
setMoveKey( spep_5 + 66 -2, 1, 197.4, -99.7 , 0 );
setMoveKey( spep_5 + 68 -2, 1, 200.9, -103 , 0 );
setMoveKey( spep_5 + 70 -2, 1, 210.2, -98.1 , 0 );
setMoveKey( spep_5 + 72 -2, 1, 214.3, -100.7 , 0 );
setMoveKey( spep_5 + 74 -2, 1, 217.3, -95 , 0 );
setMoveKey( spep_5 + 76 -2, 1, 220.3, -96.8 , 0 );
setMoveKey( spep_5 + 78 -2, 1, 230.1 +5, -90.3 , 0 );
setMoveKey( spep_5 + 80 -2, 1, 235.8 +8, -91.3 , 0 );
setMoveKey( spep_5 + 82 -2, 1, 239.7 +8, -84.1 , 0 );
setMoveKey( spep_5 + 84 -2, 1, 250 +15, -84.3 , 0 );
setMoveKey( spep_5 + 86 -2, 1, 270.4 +15, -80.2 , 0 );
setMoveKey( spep_5 + 88 -2, 1, 313.7 +15, -75.8 , 0 );
setMoveKey( spep_5 + 90 -2, 1, 359.9 +15, -70.9 , 0 );
setMoveKey( spep_5 + 92 -2, 1, 399 +15, -65.6 , 0 );
setMoveKey( spep_5 + 94 -2, 1, 411 +15, -60 , 0 );
setMoveKey( spep_5 + 96, 1, 411 +15, -60 , 0 );

setScaleKey( spep_5 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 4 -2, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 6 -2, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 8 -2, 1, 1.44, 1.44 );
setScaleKey( spep_5 + 10 -2, 1, 1.45, 1.45 );
setScaleKey( spep_5 + 60 -2, 1, 1.89 +0.8, 1.89 +0.8 );
setScaleKey( spep_5 + 66 -2, 1, 1.89 +0.8, 1.89 +0.8 );
setScaleKey( spep_5 + 84 -2, 1, 1.31 +0.6, 1.31 +0.6 );
setScaleKey( spep_5 + 86 -2, 1, 1.18 +0.4, 1.18 +0.4 );
setScaleKey( spep_5 + 88 -2, 1, 1.12, 1.12 );
setScaleKey( spep_5 + 90 -2, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 92 -2, 1, 0.67, 0.67 );
setScaleKey( spep_5 + 94 -2, 1, 0.12, 0.12 );
setScaleKey( spep_5 + 96, 1, 0.12, 0.12 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 96, 1, 0 );

-- ** 音 ** --
playSe( spep_5 + 0, 1021 );  --気弾近づく
--playSe( spep_5 + 60 -2, 1023 );  --被弾

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 74, 20, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 98;

------------------------------------------------------
-- 爆発(100F)
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen1, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen1, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen1, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen1, 0 );
setEffRotateKey( spep_6 + 46, shuchusen1, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen1, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen1, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen1, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen1, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen1, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen1, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen1, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen1, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen1, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen2, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen2, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen2, 0 );
setEffRotateKey( spep_6 + 100, shuchusen2, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_10 );  --爆発音
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 96 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- アイドリング(28F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffectLife( spep_0 + 0, SP_01x, 28, 0x100, -1, 0, 0, 0 );  --アイドリング(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 28, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, -1.0, 1.0 );
setEffScaleKey( spep_0 + 28, idling, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 28, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 28, idling, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 28;

------------------------------------------------------
-- 気溜め(36F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02x, 36, 0x100, -1, 0, 0, 0 );  --気溜め(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 36, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_1 + 36, tame, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 36, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 36, tame, 255 );

-- ** 書き文字エントリー ** --
a = 10;
ctzun = entryEffectLife( spep_1 + 0,  10013, 36,  0x100, -1, 0, 22, 191.9 );  --ズズズン
setEffShake( spep_1 + 12, ctzun, 24, 20 );

setEffMoveKey( spep_1 + 0, ctzun, 22, 191.9 -a , 0 );
setEffMoveKey( spep_1 + 2, ctzun, 29.8, 246.3 -a , 0 );
setEffMoveKey( spep_1 + 4, ctzun, 49.2, 309.6 -a , 0 );
setEffMoveKey( spep_1 + 6, ctzun, 46.5, 333.1 -a , 0 );
setEffMoveKey( spep_1 + 8, ctzun, 51.6, 327.8 -a , 0 );
setEffMoveKey( spep_1 + 10, ctzun, 37.1, 303.5 -a , 0 );
setEffMoveKey( spep_1 + 12, ctzun, 46, 309.9 -a , 0 );
setEffMoveKey( spep_1 + 36, ctzun, 46, 309.9 -a , 0 );

setEffScaleKey( spep_1 + 0, ctzun, 0.38 +0.7, 0.38 +0.7 );
setEffScaleKey( spep_1 + 2, ctzun, 0.62 +0.7, 0.62 +0.7 );
setEffScaleKey( spep_1 + 4, ctzun, 0.85 +0.7, 0.85 +0.7 );
setEffScaleKey( spep_1 + 6, ctzun, 1 +1.9, 1 +1.9 );
setEffScaleKey( spep_1 + 36, ctzun, 1 +1.9, 1 +1.9 );

setEffRotateKey( spep_1 + 0, ctzun, 0 );
setEffRotateKey( spep_1 + 36, ctzun, 0 );

setEffAlphaKey( spep_1 + 0, ctzun, 255 );
setEffAlphaKey( spep_1 + 36, ctzun, 255 );

-- ** 白フェード ** --
entryFade( spep_1 + 28, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 0, 1035 );  --溜める

-- ** 次の準備 ** --
spep_2 = spep_1 + 36;

------------------------------------------------------
-- 構え(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_2 + 0, SP_03x, 98, 0x100, -1, 0, 0, 0 );  --構え(ef_003)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_2 + 98, kamae, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 98, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 98, kamae, 255 );

spep_x = spep_2 + 0;
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
playSe( spep_x + 16, SE_04 );  --ゴゴゴ

-- ** 白フェード ** --
entryFade( spep_2 + 88, 8, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 98;

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

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 斜め撃ち(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_4 + 0, SP_04x, 118, 0x100, -1, 0, 0, 0 );  --斜め撃ち(ef_004)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 118, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 118, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 118, hassha, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_4 + 0,  921, 118, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_4 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 118, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen1, 1.2, 1 );
setEffScaleKey( spep_4 + 118, ryusen1, 1.2, 1 );

setEffRotateKey( spep_4 + 0, ryusen1, 180 );
setEffRotateKey( spep_4 + 118, ryusen1, 180 );

setEffAlphaKey( spep_4 + 0, ryusen1, 255 );
setEffAlphaKey( spep_4 + 118, ryusen1, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 + 30 -3,  10012, 14, 0x100, -1, 0, -44, 259.9 );  --ズオッ
setEffMoveKey( spep_4 + 30 -3, ctzuo, -44, 259.9 , 0 );
setEffMoveKey( spep_4 + 32 -3, ctzuo, 14.8, 286.2 , 0 );
setEffMoveKey( spep_4 + 34 -3, ctzuo, 58.9, 327.2 , 0 );
setEffMoveKey( spep_4 + 36 -3, ctzuo, 128.4, 342.7 , 0 );
setEffMoveKey( spep_4 + 38 -3, ctzuo, 161.6, 394.8 , 0 );
setEffMoveKey( spep_4 + 40 -3, ctzuo, 242.2, 399.3 , 0 );
setEffMoveKey( spep_4 + 42 -3, ctzuo, 264.5, 462.1 , 0 );
setEffMoveKey( spep_4 + 44 -3, ctzuo, 316, 495.9 , 0 );

setEffScaleKey( spep_4 + 30 -3, ctzuo, 0.3, 0.3 );
setEffScaleKey( spep_4 + 32 -3, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_4 + 34 -3, ctzuo, 2.64, 2.64 );
setEffScaleKey( spep_4 + 36 -3, ctzuo, 2.91, 2.91 );
setEffScaleKey( spep_4 + 38 -3, ctzuo, 3.19, 3.19 );
setEffScaleKey( spep_4 + 40 -3, ctzuo, 4.46, 4.46 );
setEffScaleKey( spep_4 + 42 -3, ctzuo, 5.73, 5.73 );
setEffScaleKey( spep_4 + 44 -3, ctzuo, 6.2 , 6.2 );

setEffRotateKey( spep_4 + 30 -3, ctzuo, 30 );
setEffRotateKey( spep_4 + 44 -3, ctzuo, 30 );

setEffAlphaKey( spep_4 + 30 -3, ctzuo, 255 );
setEffAlphaKey( spep_4 + 40 -3, ctzuo, 255 );
setEffAlphaKey( spep_4 + 42 -3, ctzuo, 128 );
setEffAlphaKey( spep_4 + 44 -3, ctzuo, 0 );

-- ** 音 ** --
SE1 = playSe( spep_4 + 30 -3, 1022 );  --発射

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 118, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 0 );

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

-- ** 白フェード ** --
entryFade( spep_4 + 112, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 118;

------------------------------------------------------
-- 被弾(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_5 + 0, SP_05, 98, 0x100, -1, 0, 0, 0 );  --被弾(ef_005)
setEffMoveKey( spep_5 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, hidan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 98, hidan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan, 0 );
setEffRotateKey( spep_5 + 98, hidan, 0 );
setEffAlphaKey( spep_5 + 0, hidan, 255 );
setEffAlphaKey( spep_5 + 96, hidan, 255 );
setEffAlphaKey( spep_5 + 97, hidan, 0 );
setEffAlphaKey( spep_5 + 98, hidan, 0 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_5 + 0,  921, 98, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_5 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 98, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen2, 1, 1 );
setEffScaleKey( spep_5 + 98, ryusen2, 1, 1 );

setEffRotateKey( spep_5 + 0, ryusen2, 0 );
setEffRotateKey( spep_5 + 98, ryusen2, 0 );

setEffAlphaKey( spep_5 + 0, ryusen2, 255 );
setEffAlphaKey( spep_5 + 96, ryusen2, 255 );
setEffAlphaKey( spep_5 + 97, ryusen2, 0 );
setEffAlphaKey( spep_5 + 98, ryusen2, 0 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_5 + 0,  10014, 98, 0x100, -1, 0, 58.1, 364 );  --ズドド
setEffShake( spep_5 + 0, ctzudo, 98, 25 );

setEffMoveKey( spep_5 + 0, ctzudo, 58.1, 364 -30 , 0 );
setEffMoveKey( spep_5 + 98, ctzudo, 58.1, 364 -30 , 0 );

setEffScaleKey( spep_5 + 0, ctzudo, 3.2, 3.2 );
setEffScaleKey( spep_5 + 98, ctzudo, 3.2, 3.2 );

setEffRotateKey( spep_5 + 0, ctzudo, 0 );
setEffRotateKey( spep_5 + 98, ctzudo, 0 );

setEffAlphaKey( spep_5 + 0, ctzudo, 255 );
setEffAlphaKey( spep_5 + 96, ctzudo, 255 );
setEffAlphaKey( spep_5 + 97, ctzudo, 0 );
setEffAlphaKey( spep_5 + 98, ctzudo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 96, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 + 60 -2, 1, 108 );

setMoveKey( spep_5 + 0, 1, 237.9, -80.6 , 0 );
setMoveKey( spep_5 + 4 -2, 1, 238.7, -76.6 , 0 );
setMoveKey( spep_5 + 6 -2, 1, 243, -73.6 , 0 );
setMoveKey( spep_5 + 8 -2, 1, 236.6, -78.1 , 0 );
setMoveKey( spep_5 + 10 -2, 1, 241.2, -75.2 , 0 );
setMoveKey( spep_5 + 12 -2, 1, 234.3, -79.7 , 0 );
setMoveKey( spep_5 + 14 -2, 1, 239, -76.9 , 0 );
setMoveKey( spep_5 + 16 -2, 1, 231.7, -81.5 , 0 );
setMoveKey( spep_5 + 18 -2, 1, 236.1, -78.8 , 0 );
setMoveKey( spep_5 + 20 -2, 1, 228.8, -83.5 , 0 );
setMoveKey( spep_5 + 22 -2, 1, 233.3, -80.9 , 0 );
setMoveKey( spep_5 + 24 -2, 1, 225.7, -85.7 , 0 );
setMoveKey( spep_5 + 26 -2, 1, 229.9, -83.1 , 0 );
setMoveKey( spep_5 + 28 -2, 1, 222.4, -88 , 0 );
setMoveKey( spep_5 + 30 -2, 1, 226.7, -85.3 , 0 );
setMoveKey( spep_5 + 32 -2, 1, 218.9, -90.5 , 0 );
setMoveKey( spep_5 + 34 -2, 1, 222.9, -88 , 0 );
setMoveKey( spep_5 + 36 -2, 1, 215, -93.2 , 0 );
setMoveKey( spep_5 + 38 -2, 1, 219, -90.8 , 0 );
setMoveKey( spep_5 + 40 -2, 1, 211, -96 , 0 );
setMoveKey( spep_5 + 42 -2, 1, 215, -93.7 , 0 );
setMoveKey( spep_5 + 44 -2, 1, 206.7, -99 , 0 );
setMoveKey( spep_5 + 46 -2, 1, 210.4, -96.8 , 0 );
setMoveKey( spep_5 + 48 -2, 1, 202.2, -102.1 , 0 );
setMoveKey( spep_5 + 50 -2, 1, 205.5, -100.1 , 0 );
setMoveKey( spep_5 + 52 -2, 1, 197.4, -105 , 0 );
setMoveKey( spep_5 + 54 -2, 1, 200.6, -103.2 , 0 );
setMoveKey( spep_5 + 56 -2, 1, 192.4, -108.5 , 0 );
setMoveKey( spep_5 + 59 -2, 1, 195.6, -106.7 , 0 );
setMoveKey( spep_5 + 60 -2, 1, 196.9, -103.8 , 0 );
setMoveKey( spep_5 + 62 -2, 1, 194.2, -98.6 , 0 );
setMoveKey( spep_5 + 64 -2, 1, 195.1, -103.8 , 0 );
setMoveKey( spep_5 + 66 -2, 1, 197.4, -99.7 , 0 );
setMoveKey( spep_5 + 68 -2, 1, 200.9, -103 , 0 );
setMoveKey( spep_5 + 70 -2, 1, 210.2, -98.1 , 0 );
setMoveKey( spep_5 + 72 -2, 1, 214.3, -100.7 , 0 );
setMoveKey( spep_5 + 74 -2, 1, 217.3, -95 , 0 );
setMoveKey( spep_5 + 76 -2, 1, 220.3, -96.8 , 0 );
setMoveKey( spep_5 + 78 -2, 1, 230.1 +5, -90.3 , 0 );
setMoveKey( spep_5 + 80 -2, 1, 235.8 +8, -91.3 , 0 );
setMoveKey( spep_5 + 82 -2, 1, 239.7 +8, -84.1 , 0 );
setMoveKey( spep_5 + 84 -2, 1, 250 +15, -84.3 , 0 );
setMoveKey( spep_5 + 86 -2, 1, 270.4 +15, -80.2 , 0 );
setMoveKey( spep_5 + 88 -2, 1, 313.7 +15, -75.8 , 0 );
setMoveKey( spep_5 + 90 -2, 1, 359.9 +15, -70.9 , 0 );
setMoveKey( spep_5 + 92 -2, 1, 399 +15, -65.6 , 0 );
setMoveKey( spep_5 + 94 -2, 1, 411 +15, -60 , 0 );
setMoveKey( spep_5 + 96, 1, 411 +15, -60 , 0 );

setScaleKey( spep_5 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 4 -2, 1, 1.42, 1.42 );
setScaleKey( spep_5 + 6 -2, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 8 -2, 1, 1.44, 1.44 );
setScaleKey( spep_5 + 10 -2, 1, 1.45, 1.45 );
setScaleKey( spep_5 + 60 -2, 1, 1.89 +0.8, 1.89 +0.8 );
setScaleKey( spep_5 + 66 -2, 1, 1.89 +0.8, 1.89 +0.8 );
setScaleKey( spep_5 + 84 -2, 1, 1.31 +0.6, 1.31 +0.6 );
setScaleKey( spep_5 + 86 -2, 1, 1.18 +0.4, 1.18 +0.4 );
setScaleKey( spep_5 + 88 -2, 1, 1.12, 1.12 );
setScaleKey( spep_5 + 90 -2, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 92 -2, 1, 0.67, 0.67 );
setScaleKey( spep_5 + 94 -2, 1, 0.12, 0.12 );
setScaleKey( spep_5 + 96, 1, 0.12, 0.12 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 96, 1, 0 );

-- ** 音 ** --
playSe( spep_5 + 0, 1021 );  --気弾近づく
--playSe( spep_5 + 60 -2, 1023 );  --被弾

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 74, 20, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 98;

------------------------------------------------------
-- 爆発(100F)
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen1, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen1, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen1, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen1, 0 );
setEffRotateKey( spep_6 + 46, shuchusen1, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen1, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen1, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen1, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen1, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen1, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen1, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen1, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen1, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen1, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen1, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen2, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen2, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen2, 0 );
setEffRotateKey( spep_6 + 100, shuchusen2, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_6 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_6 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_6 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_6 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_6 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_6 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_6 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_6 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, -40 );
setRotateKey( spep_6 + 1, 1, -40 );
setRotateKey( spep_6 + 2, 1, 80 );
setRotateKey( spep_6 + 3, 1, 80 );
setRotateKey( spep_6 + 4, 1, 200 );
setRotateKey( spep_6 + 5, 1, 200 );
setRotateKey( spep_6 + 6, 1, 360 );
setRotateKey( spep_6 + 7, 1, 360 );
setRotateKey( spep_6 + 8, 1, 558 );
setRotateKey( spep_6 + 9, 1, 558 );
setRotateKey( spep_6 + 10, 1, 425 );
setRotateKey( spep_6 + 11, 1, 425 );
setRotateKey( spep_6 + 12, 1, -40 );
setRotateKey( spep_6 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_10 );  --爆発音
playSe( spep_6 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 96 );

end
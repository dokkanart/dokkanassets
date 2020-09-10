--孫悟空(GT)&パン(GT)&トランクス(GT)_トリプル気功波

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
SP_01 = 153067; --突進
SP_02 = 153068; --囲み　前
SP_03 = 153069; --囲み　奥
SP_04 = 153070; --発射
SP_05 = 153071; --被弾　前
SP_06 = 153072; --被弾　奥
SP_07 = 153073; --ダメージ

--敵側
SP_02r = 153074; --囲み　前
SP_03r = 153075; --囲み　奥
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
-- 突進(162F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0 + 0, SP_01, 162, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 162, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 162, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 162, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 162, tosshin, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 44, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 44, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 130, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 130, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 130, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_0 + 130, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 130, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 59, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 60, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 130, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 52,  190006, 78, 0x100, -1, 0, -8.5, 515.5 );  --ゴゴゴ
setEffShake( spep_0 + 52, ctgogo, 78, 10 );

setEffMoveKey( spep_0 + 52, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 130, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 52, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 122, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 124, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 126, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 128, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 130, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 52, ctgogo, 0 );
setEffRotateKey( spep_0 + 130, ctgogo, 0 );

setEffAlphaKey( spep_0 + 52, ctgogo, 255 );
setEffAlphaKey( spep_0 + 130, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 2, 1019 );  --迫ってくるとこ
playSe( spep_0 + 52, SE_04 );  --ゴゴゴ
playSe( spep_0 + 140, 8 );  --迫ってくるとこ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 162, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 156, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 162;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 囲め(80F)
------------------------------------------------------

-- ** エフェクト等 ** --
kakomi_f = entryEffectLife( spep_2 + 0, SP_02, 80, 0x100, -1, 0, 0, 0 );  --囲み　前(ef_002)
setEffMoveKey( spep_2 + 0, kakomi_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, kakomi_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kakomi_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, kakomi_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kakomi_f, 0 );
setEffRotateKey( spep_2 + 80, kakomi_f, 0 );
setEffAlphaKey( spep_2 + 0, kakomi_f, 255 );
setEffAlphaKey( spep_2 + 80, kakomi_f, 255 );

kakomi_b = entryEffectLife( spep_2 + 0, SP_03, 80, 0x80, -1, 0, 0, 0 );  --囲み　奥(ef_003)
setEffMoveKey( spep_2 + 0, kakomi_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, kakomi_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kakomi_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, kakomi_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kakomi_b, 0 );
setEffRotateKey( spep_2 + 80, kakomi_b, 0 );
setEffAlphaKey( spep_2 + 0, kakomi_b, 255 );
setEffAlphaKey( spep_2 + 80, kakomi_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 80, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );

setMoveKey( spep_2 + 0, 1, 22.1, -3 , 0 );
setMoveKey( spep_2 + 20, 1, 22.1, -3 , 0 );
setMoveKey( spep_2 + 22, 1, 22.5, -3 , 0 );
setMoveKey( spep_2 + 24, 1, 23.8, -3 , 0 );
setMoveKey( spep_2 + 26, 1, 25.8, -2.9 , 0 );
setMoveKey( spep_2 + 28, 1, 28.3, -2.9 , 0 );
setMoveKey( spep_2 + 30, 1, 31.4, -2.8 , 0 );
setMoveKey( spep_2 + 32, 1, 34.8, -2.7 , 0 );
setMoveKey( spep_2 + 34, 1, 38.4, -2.5 , 0 );
setMoveKey( spep_2 + 36, 1, 42.1, -2.4 , 0 );
setMoveKey( spep_2 + 38, 1, 45.8, -2.3 , 0 );
setMoveKey( spep_2 + 40, 1, 49.4, -2.2 , 0 );
setMoveKey( spep_2 + 42, 1, 52.7, -2.1 , 0 );
setMoveKey( spep_2 + 44, 1, 55.7, -2 , 0 );
setMoveKey( spep_2 + 46, 1, 58.2, -1.9 , 0 );
setMoveKey( spep_2 + 48, 1, 60.1, -1.9 , 0 );
setMoveKey( spep_2 + 50, 1, 61.3, -1.8 , 0 );
setMoveKey( spep_2 + 52, 1, 61.8, -1.8 , 0 );
setMoveKey( spep_2 + 80, 1, 61.8, -1.8 , 0 );

setScaleKey( spep_2 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 20, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 22, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 24, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 26, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 28, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 30, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 32, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 34, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 36, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 38, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 40, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 42, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 44, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 46, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 48, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 50, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 52, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 80, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 80, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 54; --エンドフェイズのフレーム数を置き換える

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

-- ** ホワイトフェード ** --
entryFade( spep_2 + 72, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 80;

------------------------------------------------------
-- 発射(146F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_3 + 0, SP_04, 146, 0x100, -1, 0, 0, 0 );  --発射(ef_004)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 146, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 146, hassha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 146, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 144, 2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 + 10, 1021 );  --溜める
playSe( spep_3 + 124, 1022 );  --発射

-- ** 次の準備 ** --
spep_4 = spep_3 + 146;

------------------------------------------------------
-- 被弾(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_4 + 0, SP_05, 96, 0x100, -1, 0, 0, 0 );  --被弾　手前(ef_005)
setEffMoveKey( spep_4 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hidan_f, 0 );
setEffRotateKey( spep_4 + 96, hidan_f, 0 );
setEffAlphaKey( spep_4 + 0, hidan_f, 255 );
setEffAlphaKey( spep_4 + 95, hidan_f, 255 );
setEffAlphaKey( spep_4 + 96, hidan_f, 0 );

hidan_b = entryEffectLife( spep_4 + 0, SP_06, 96, 0x80, -1, 0, 0, 0 );  --被弾　奥(ef_006)
setEffMoveKey( spep_4 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hidan_b, 0 );
setEffRotateKey( spep_4 + 96, hidan_b, 0 );
setEffAlphaKey( spep_4 + 0, hidan_b, 255 );
setEffAlphaKey( spep_4 + 95, hidan_b, 255 );
setEffAlphaKey( spep_4 + 96, hidan_b, 0 );

a = 3;
-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_4 + 18 -a, 906, 78 +a, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 18 -a, shuchusen2, 78 +a, 20 );

setEffMoveKey( spep_4 + 18 -a, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 18 -a, shuchusen2, 1, 1 );
setEffScaleKey( spep_4 + 96, shuchusen2, 1, 1 );

setEffRotateKey( spep_4 + 18 -a, shuchusen2, 0 );
setEffRotateKey( spep_4 + 96, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 18 -a, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 95, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 96, shuchusen2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 96, 1, 0 );
changeAnime( spep_4 + 0, 1, 100 );
changeAnime( spep_4 + 18 -a, 1, 6 );
changeAnime( spep_4 + 48 -a, 1, 8 );
changeAnime( spep_4 + 72 -a, 1, 7 );

setMoveKey( spep_4 + 0, 1, 1.7, 25.4 , 0 );
setMoveKey( spep_4 + 17 -a, 1, 1.7, 25.4 , 0 );
setMoveKey( spep_4 + 18 -a, 1, -5.9, 37.9 , 0 );
setMoveKey( spep_4 + 20 -a, 1, 27.8, 44.3 , 0 );
setMoveKey( spep_4 + 22 -a, 1, 90.9, -26.1 , 0 );
setMoveKey( spep_4 + 24 -a, 1, 117.9, -25.3 , 0 );
setMoveKey( spep_4 + 26 -a, 1, 123.5, -54 , 0 );
setMoveKey( spep_4 + 28 -a, 1, 146.6, -43 , 0 );
setMoveKey( spep_4 + 30 -a, 1, 130.9, -43.6 , 0 );
setMoveKey( spep_4 + 32 -a, 1, 142, -56.9 , 0 );
setMoveKey( spep_4 + 34 -a, 1, 132.1, -44 , 0 );
setMoveKey( spep_4 + 36 -a, 1, 149.6, -55.2 , 0 );
setMoveKey( spep_4 + 38 -a, 1, 143, -53.9 , 0 );
setMoveKey( spep_4 + 40 -a, 1, 143.5, -54.4 , 0 );
setMoveKey( spep_4 + 42 -a, 1, 143.8, -54.7 , 0 );
setMoveKey( spep_4 + 44 -a, 1, 143.9, -54.8 , 0 );
setMoveKey( spep_4 + 47 -a, 1, 143.7, -54.6 , 0 );
setMoveKey( spep_4 + 48 -a, 1, 97.8, 29.1 , 0 );
setMoveKey( spep_4 + 50 -a, 1, 44.4, 43.4 , 0 );
setMoveKey( spep_4 + 52 -a, 1, 18, 47.6 , 0 );
setMoveKey( spep_4 + 54 -a, 1, 34.1, 59.7 , 0 );
setMoveKey( spep_4 + 56 -a, 1, 6.8, 44.1 , 0 );
setMoveKey( spep_4 + 58 -a, 1, 3.9, 64.4 , 0 );
setMoveKey( spep_4 + 60 -a, 1, 0.2, 45.5 , 0 );
setMoveKey( spep_4 + 62 -a, 1, 7.9, 66.7 , 0 );
setMoveKey( spep_4 + 64 -a, 1, -12.6, 51.8 , 0 );
setMoveKey( spep_4 + 66 -a, 1, 8.7, 54.6 , 0 );
setMoveKey( spep_4 + 68 -a, 1, -9.6, 62.9 , 0 );
setMoveKey( spep_4 + 71 -a, 1, 5.7, 53.8 , 0 );
setMoveKey( spep_4 + 72 -a, 1, -15.4, 62.4 , 0 );
setMoveKey( spep_4 + 74 -a, 1, -26.2, -72.2 , 0 );
setMoveKey( spep_4 + 76 -a, 1, -29.5, -113.6 , 0 );
setMoveKey( spep_4 + 78 -a, 1, -49.4, -132 , 0 );
setMoveKey( spep_4 + 80 -a, 1, -25.6, -167.6 , 0 );
setMoveKey( spep_4 + 82 -a, 1, -34.1, -162 , 0 );
setMoveKey( spep_4 + 84 -a, 1, -32.6, -188.4 , 0 );
setMoveKey( spep_4 + 86 -a, 1, -46.3, -182.5 , 0 );
setMoveKey( spep_4 + 88 -a, 1, -32.7, -200.3 , 0 );
setMoveKey( spep_4 + 90 -a, 1, -37.2, -186.2 , 0 );
setMoveKey( spep_4 + 92 -a, 1, -36.1, -206.7 , 0 );
setMoveKey( spep_4 + 94 -a, 1, -33, -190.3 , 0 );
setMoveKey( spep_4 + 96 -a, 1, -32.3, -206.6 , 0 );
setMoveKey( spep_4 + 98 -a, 1, -35.6, -197.5 , 0 );

setScaleKey( spep_4 + 0, 1, 1.13, 1.13 );
setScaleKey( spep_4 + 17 -a, 1, 1.13, 1.13 );
setScaleKey( spep_4 + 18 -a, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 20 -a, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 22 -a, 1, 1.88, 1.88 );
setScaleKey( spep_4 + 24 -a, 1, 2.3, 2.3 );
setScaleKey( spep_4 + 26 -a, 1, 2.43, 2.43 );
setScaleKey( spep_4 + 28 -a, 1, 2.52, 2.52 );
setScaleKey( spep_4 + 30 -a, 1, 2.57, 2.57 );
setScaleKey( spep_4 + 32 -a, 1, 2.61, 2.61 );
setScaleKey( spep_4 + 34 -a, 1, 2.64, 2.64 );
setScaleKey( spep_4 + 36 -a, 1, 2.66, 2.66 );
setScaleKey( spep_4 + 38 -a, 1, 2.68, 2.68 );
setScaleKey( spep_4 + 40 -a, 1, 2.69, 2.69 );
setScaleKey( spep_4 + 44 -a, 1, 2.69, 2.69 );
setScaleKey( spep_4 + 47 -a, 1, 2.7, 2.7 );
setScaleKey( spep_4 + 48 -a, 1, 3.07, 3.07 );
setScaleKey( spep_4 + 50 -a, 1, 2.14, 2.14 );
setScaleKey( spep_4 + 52 -a, 1, 1.86, 1.86 );
setScaleKey( spep_4 + 54 -a, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 56 -a, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 58 -a, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 60 -a, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 62 -a, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 64 -a, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 66 -a, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 68 -a, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 71 -a, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 72 -a, 1, 0.5, 0.5 );
setScaleKey( spep_4 + 74 -a, 1, 1.02, 1.02 );
setScaleKey( spep_4 + 76 -a, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 78 -a, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 80 -a, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 82 -a, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 84 -a, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 86 -a, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 88 -a, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 90 -a, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 92 -a, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 96, 1, 1.51, 1.51 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 17 -a, 1, 0 );
setRotateKey( spep_4 + 18 -a, 1, 77 );
setRotateKey( spep_4 + 20 -a, 1, 77 );
setRotateKey( spep_4 + 22 -a, 1, 77.9 );
setRotateKey( spep_4 + 24 -a, 1, 80.5 );
setRotateKey( spep_4 + 26 -a, 1, 81.3 );
setRotateKey( spep_4 + 28 -a, 1, 81.8 );
setRotateKey( spep_4 + 30 -a, 1, 82.2 );
setRotateKey( spep_4 + 32 -a, 1, 82.4 );
setRotateKey( spep_4 + 34 -a, 1, 82.6 );
setRotateKey( spep_4 + 36 -a, 1, 82.8 );
setRotateKey( spep_4 + 38 -a, 1, 82.8 );
setRotateKey( spep_4 + 40 -a, 1, 82.9 );
setRotateKey( spep_4 + 44 -a, 1, 82.9 );
setRotateKey( spep_4 + 47 -a, 1, 83 );
setRotateKey( spep_4 + 48 -a, 1, 23.5 );
setRotateKey( spep_4 + 71 -a, 1, 23.5 );
setRotateKey( spep_4 + 72 -a, 1, 133.1 );
setRotateKey( spep_4 + 96, 1, 133.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_4 + 18 -a, 1017 );  --被弾１
playSe( spep_4 + 48 -a, 1017 );  --被弾２
playSe( spep_4 + 72 -a, 1023 );  --被弾３

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;

------------------------------------------------------
-- 爆発(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆発(ef_007)
setEffMoveKey( spep_5 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bakuha, 0 );
setEffRotateKey( spep_5 + 136, bakuha, 0 );
setEffAlphaKey( spep_5 + 0, bakuha, 255 );
setEffAlphaKey( spep_5 + 136, bakuha, 255 );

a1 = 10;
-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 18 +a1, 906, 118 -a1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 18 +a1, shuchusen3, 118 -a1, 20 );

setEffMoveKey( spep_5 + 18 +a1, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 18 +a1, shuchusen3, 1.3, 1.3 );
setEffScaleKey( spep_5 + 136, shuchusen3, 1.3, 1.3 );

setEffRotateKey( spep_5 + 18 +a1, shuchusen3, 0 );
setEffRotateKey( spep_5 + 136, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 18 +a1, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 136, shuchusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 136, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_5 + 42, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 30 );
entryFade( spep_5 + 124, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 136 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(162F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0 + 0, SP_01, 162, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 162, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 162, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 162, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 162, tosshin, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 44, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 44, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 130, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 130, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 130, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_0 + 130, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 130, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 59, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 60, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 130, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 52,  190006, 78, 0x100, -1, 0, -8.5, 515.5 );  --ゴゴゴ
setEffShake( spep_0 + 52, ctgogo, 78, 10 );

setEffMoveKey( spep_0 + 52, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 130, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 52, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 122, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 124, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 126, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 128, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 130, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 52, ctgogo, 0 );
setEffRotateKey( spep_0 + 130, ctgogo, 0 );

setEffAlphaKey( spep_0 + 52, ctgogo, 255 );
setEffAlphaKey( spep_0 + 130, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 2, 1019 );  --迫ってくるとこ
playSe( spep_0 + 52, SE_04 );  --ゴゴゴ
playSe( spep_0 + 140, 8 );  --迫ってくるとこ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 162, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 156, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 162;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 囲め(80F)
------------------------------------------------------

-- ** エフェクト等 ** --
kakomi_f = entryEffectLife( spep_2 + 0, SP_02r, 80, 0x100, -1, 0, 0, 0 );  --囲み　前(ef_002)
setEffMoveKey( spep_2 + 0, kakomi_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, kakomi_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kakomi_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 80, kakomi_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kakomi_f, 0 );
setEffRotateKey( spep_2 + 80, kakomi_f, 0 );
setEffAlphaKey( spep_2 + 0, kakomi_f, 255 );
setEffAlphaKey( spep_2 + 80, kakomi_f, 255 );

kakomi_b = entryEffectLife( spep_2 + 0, SP_03r, 80, 0x80, -1, 0, 0, 0 );  --囲み　奥(ef_003)
setEffMoveKey( spep_2 + 0, kakomi_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, kakomi_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kakomi_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 80, kakomi_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kakomi_b, 0 );
setEffRotateKey( spep_2 + 80, kakomi_b, 0 );
setEffAlphaKey( spep_2 + 0, kakomi_b, 255 );
setEffAlphaKey( spep_2 + 80, kakomi_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 80, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );

setMoveKey( spep_2 + 0, 1, -22.1, -3 , 0 );
setMoveKey( spep_2 + 20, 1, -22.1, -3 , 0 );
setMoveKey( spep_2 + 22, 1, -22.5, -3 , 0 );
setMoveKey( spep_2 + 24, 1, -23.8, -3 , 0 );
setMoveKey( spep_2 + 26, 1, -25.8, -2.9 , 0 );
setMoveKey( spep_2 + 28, 1, -28.3, -2.9 , 0 );
setMoveKey( spep_2 + 30, 1, -31.4, -2.8 , 0 );
setMoveKey( spep_2 + 32, 1, -34.8, -2.7 , 0 );
setMoveKey( spep_2 + 34, 1, -38.4, -2.5 , 0 );
setMoveKey( spep_2 + 36, 1, -42.1, -2.4 , 0 );
setMoveKey( spep_2 + 38, 1, -45.8, -2.3 , 0 );
setMoveKey( spep_2 + 40, 1, -49.4, -2.2 , 0 );
setMoveKey( spep_2 + 42, 1, -52.7, -2.1 , 0 );
setMoveKey( spep_2 + 44, 1, -55.7, -2 , 0 );
setMoveKey( spep_2 + 46, 1, -58.2, -1.9 , 0 );
setMoveKey( spep_2 + 48, 1, -60.1, -1.9 , 0 );
setMoveKey( spep_2 + 50, 1, -61.3, -1.8 , 0 );
setMoveKey( spep_2 + 52, 1, -61.8, -1.8 , 0 );
setMoveKey( spep_2 + 80, 1, -61.8, -1.8 , 0 );

setScaleKey( spep_2 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 20, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 22, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 24, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 26, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 28, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 30, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 32, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 34, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 36, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 38, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 40, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 42, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 44, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 46, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 48, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 50, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 52, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 80, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 80, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 54; --エンドフェイズのフレーム数を置き換える

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

-- ** ホワイトフェード ** --
entryFade( spep_2 + 72, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 80;

------------------------------------------------------
-- 発射(146F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_3 + 0, SP_04, 146, 0x100, -1, 0, 0, 0 );  --発射(ef_004)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_3 + 146, hassha, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 146, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 146, hassha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 146, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 144, 2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 + 10, 1021 );  --溜める
playSe( spep_3 + 124, 1022 );  --発射

-- ** 次の準備 ** --
spep_4 = spep_3 + 146;

------------------------------------------------------
-- 被弾(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_4 + 0, SP_05, 96, 0x100, -1, 0, 0, 0 );  --被弾　手前(ef_005)
setEffMoveKey( spep_4 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hidan_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hidan_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hidan_f, 0 );
setEffRotateKey( spep_4 + 96, hidan_f, 0 );
setEffAlphaKey( spep_4 + 0, hidan_f, 255 );
setEffAlphaKey( spep_4 + 95, hidan_f, 255 );
setEffAlphaKey( spep_4 + 96, hidan_f, 0 );

hidan_b = entryEffectLife( spep_4 + 0, SP_06, 96, 0x80, -1, 0, 0, 0 );  --被弾　奥(ef_006)
setEffMoveKey( spep_4 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hidan_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hidan_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hidan_b, 0 );
setEffRotateKey( spep_4 + 96, hidan_b, 0 );
setEffAlphaKey( spep_4 + 0, hidan_b, 255 );
setEffAlphaKey( spep_4 + 95, hidan_b, 255 );
setEffAlphaKey( spep_4 + 96, hidan_b, 0 );

a = 3;
-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_4 + 18 -a, 906, 78 +a, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 18 -a, shuchusen2, 78 +a, 20 );

setEffMoveKey( spep_4 + 18 -a, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 18 -a, shuchusen2, 1, 1 );
setEffScaleKey( spep_4 + 96, shuchusen2, 1, 1 );

setEffRotateKey( spep_4 + 18 -a, shuchusen2, 0 );
setEffRotateKey( spep_4 + 96, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 18 -a, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 95, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 96, shuchusen2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 96, 1, 0 );
changeAnime( spep_4 + 0, 1, 100 );
changeAnime( spep_4 + 18 -a, 1, 106 );
changeAnime( spep_4 + 48 -a, 1, 108 );
changeAnime( spep_4 + 72 -a, 1, 107 );

setMoveKey( spep_4 + 0, 1, 1.7, 25.4 , 0 );
setMoveKey( spep_4 + 17 -a, 1, 1.7, 25.4 , 0 );
setMoveKey( spep_4 + 18 -a, 1, 5.9, 37.9 , 0 );
setMoveKey( spep_4 + 20 -a, 1, -27.8, 44.3 , 0 );
setMoveKey( spep_4 + 22 -a, 1, -90.9, -26.1 , 0 );
setMoveKey( spep_4 + 24 -a, 1, -117.9, -25.3 , 0 );
setMoveKey( spep_4 + 26 -a, 1, -123.5, -54 , 0 );
setMoveKey( spep_4 + 28 -a, 1, -146.6, -43 , 0 );
setMoveKey( spep_4 + 30 -a, 1, -130.9, -43.6 , 0 );
setMoveKey( spep_4 + 32 -a, 1, -142, -56.9 , 0 );
setMoveKey( spep_4 + 34 -a, 1, -132.1, -44 , 0 );
setMoveKey( spep_4 + 36 -a, 1, -149.6, -55.2 , 0 );
setMoveKey( spep_4 + 38 -a, 1, -143, -53.9 , 0 );
setMoveKey( spep_4 + 40 -a, 1, -143.5, -54.4 , 0 );
setMoveKey( spep_4 + 42 -a, 1, -143.8, -54.7 , 0 );
setMoveKey( spep_4 + 44 -a, 1, -143.9, -54.8 , 0 );
setMoveKey( spep_4 + 47 -a, 1, -143.7, -54.6 , 0 );
setMoveKey( spep_4 + 48 -a, 1, -97.8, 29.1 , 0 );
setMoveKey( spep_4 + 50 -a, 1, -44.4, 43.4 , 0 );
setMoveKey( spep_4 + 52 -a, 1, -18, 47.6 , 0 );
setMoveKey( spep_4 + 54 -a, 1, -34.1, 59.7 , 0 );
setMoveKey( spep_4 + 56 -a, 1, -6.8, 44.1 , 0 );
setMoveKey( spep_4 + 58 -a, 1, -3.9, 64.4 , 0 );
setMoveKey( spep_4 + 60 -a, 1, -0.2, 45.5 , 0 );
setMoveKey( spep_4 + 62 -a, 1, -7.9, 66.7 , 0 );
setMoveKey( spep_4 + 64 -a, 1, 12.6, 51.8 , 0 );
setMoveKey( spep_4 + 66 -a, 1, -8.7, 54.6 , 0 );
setMoveKey( spep_4 + 68 -a, 1, 9.6, 62.9 , 0 );
setMoveKey( spep_4 + 71 -a, 1, -5.7, 53.8 , 0 );
setMoveKey( spep_4 + 72 -a, 1, 15.4, 62.4 , 0 );
setMoveKey( spep_4 + 74 -a, 1, 26.2, -72.2 , 0 );
setMoveKey( spep_4 + 76 -a, 1, 29.5, -113.6 , 0 );
setMoveKey( spep_4 + 78 -a, 1, 49.4, -132 , 0 );
setMoveKey( spep_4 + 80 -a, 1, 25.6, -167.6 , 0 );
setMoveKey( spep_4 + 82 -a, 1, 34.1, -162 , 0 );
setMoveKey( spep_4 + 84 -a, 1, 32.6, -188.4 , 0 );
setMoveKey( spep_4 + 86 -a, 1, 46.3, -182.5 , 0 );
setMoveKey( spep_4 + 88 -a, 1, 32.7, -200.3 , 0 );
setMoveKey( spep_4 + 90 -a, 1, 37.2, -186.2 , 0 );
setMoveKey( spep_4 + 92 -a, 1, 36.1, -206.7 , 0 );
setMoveKey( spep_4 + 94 -a, 1, 33, -190.3 , 0 );
setMoveKey( spep_4 + 96 -a, 1, 32.3, -206.6 , 0 );
setMoveKey( spep_4 + 98 -a, 1, 35.6, -197.5 , 0 );

setScaleKey( spep_4 + 0, 1, 1.13, 1.13 );
setScaleKey( spep_4 + 17 -a, 1, 1.13, 1.13 );
setScaleKey( spep_4 + 18 -a, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 20 -a, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 22 -a, 1, 1.88, 1.88 );
setScaleKey( spep_4 + 24 -a, 1, 2.3, 2.3 );
setScaleKey( spep_4 + 26 -a, 1, 2.43, 2.43 );
setScaleKey( spep_4 + 28 -a, 1, 2.52, 2.52 );
setScaleKey( spep_4 + 30 -a, 1, 2.57, 2.57 );
setScaleKey( spep_4 + 32 -a, 1, 2.61, 2.61 );
setScaleKey( spep_4 + 34 -a, 1, 2.64, 2.64 );
setScaleKey( spep_4 + 36 -a, 1, 2.66, 2.66 );
setScaleKey( spep_4 + 38 -a, 1, 2.68, 2.68 );
setScaleKey( spep_4 + 40 -a, 1, 2.69, 2.69 );
setScaleKey( spep_4 + 44 -a, 1, 2.69, 2.69 );
setScaleKey( spep_4 + 47 -a, 1, 2.7, 2.7 );
setScaleKey( spep_4 + 48 -a, 1, 3.07, 3.07 );
setScaleKey( spep_4 + 50 -a, 1, 2.14, 2.14 );
setScaleKey( spep_4 + 52 -a, 1, 1.86, 1.86 );
setScaleKey( spep_4 + 54 -a, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 56 -a, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 58 -a, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 60 -a, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 62 -a, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 64 -a, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 66 -a, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 68 -a, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 71 -a, 1, 1.34, 1.34 );
setScaleKey( spep_4 + 72 -a, 1, 0.5, 0.5 );
setScaleKey( spep_4 + 74 -a, 1, 1.02, 1.02 );
setScaleKey( spep_4 + 76 -a, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 78 -a, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 80 -a, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 82 -a, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 84 -a, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 86 -a, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 88 -a, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 90 -a, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 92 -a, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 96, 1, 1.51, 1.51 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 17 -a, 1, 0 );
setRotateKey( spep_4 + 18 -a, 1, 77 -162 );
setRotateKey( spep_4 + 20 -a, 1, 77 -162 );
setRotateKey( spep_4 + 22 -a, 1, 77.9 -162 );
setRotateKey( spep_4 + 24 -a, 1, 80.5 -162 );
setRotateKey( spep_4 + 26 -a, 1, 81.3 -162 );
setRotateKey( spep_4 + 28 -a, 1, 81.8 -162 );
setRotateKey( spep_4 + 30 -a, 1, 82.2 -162 );
setRotateKey( spep_4 + 32 -a, 1, 82.4 -162 );
setRotateKey( spep_4 + 34 -a, 1, 82.6 -162 );
setRotateKey( spep_4 + 36 -a, 1, 82.8 -162 );
setRotateKey( spep_4 + 38 -a, 1, 82.8 -162 );
setRotateKey( spep_4 + 40 -a, 1, 82.9 -162 );
setRotateKey( spep_4 + 44 -a, 1, 82.9 -162 );
setRotateKey( spep_4 + 47 -a, 1, 83 -162 );
setRotateKey( spep_4 + 48 -a, 1, 23.5 -45 );
setRotateKey( spep_4 + 71 -a, 1, 23.5 -45 );
setRotateKey( spep_4 + 72 -a, 1, 133.1 +90 );
setRotateKey( spep_4 + 96, 1, 133.1 +90 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_4 + 18 -a, 1017 );  --被弾１
playSe( spep_4 + 48 -a, 1017 );  --被弾２
playSe( spep_4 + 72 -a, 1023 );  --被弾３

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;

------------------------------------------------------
-- 爆発(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆発(ef_007)
setEffMoveKey( spep_5 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuha, -1.0, 1.0 );
setEffScaleKey( spep_5 + 136, bakuha, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bakuha, 0 );
setEffRotateKey( spep_5 + 136, bakuha, 0 );
setEffAlphaKey( spep_5 + 0, bakuha, 255 );
setEffAlphaKey( spep_5 + 136, bakuha, 255 );

a1 = 10;
-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 18 +a1, 906, 118 -a1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 18 +a1, shuchusen3, 118 -a1, 20 );

setEffMoveKey( spep_5 + 18 +a1, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 18 +a1, shuchusen3, 1.3, 1.3 );
setEffScaleKey( spep_5 + 136, shuchusen3, 1.3, 1.3 );

setEffRotateKey( spep_5 + 18 +a1, shuchusen3, 0 );
setEffRotateKey( spep_5 + 136, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 18 +a1, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 136, shuchusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 136, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_5 + 42, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 30 );
entryFade( spep_5 + 124, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 136 );

end



--ハッチャン_怒りの鉄拳

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
SP_01 = 153526; --顔アップ
SP_02 = 153527; --殴る　手前
SP_03 = 153529; --殴る　奥
SP_04 = 153530; --吹っ飛ぶ

--敵側
SP_02r = 153528; --殴る　手前

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
-- 顔アップ(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_0 + 0, SP_01, 196, 0x100, -1, 0, 0, 0 );  --顔アップ(ef_001)
setEffMoveKey( spep_0 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, faceup, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, faceup, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, faceup, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, faceup, 0 );
setEffRotateKey( spep_0 + 196, faceup, 0 );
setEffAlphaKey( spep_0 + 0, faceup, 255 );
setEffAlphaKey( spep_0 + 196, faceup, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 98,  906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 98, shuchusen1, 98, 20 );

setEffMoveKey( spep_0 + 98, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 98, shuchusen1, 1.8, 1.8 );
setEffScaleKey( spep_0 + 196, shuchusen1, 1.8, 1.8 );

setEffRotateKey( spep_0 + 98, shuchusen1, 0 );
setEffRotateKey( spep_0 + 196, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 98, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 98 +15, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 98 +16, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 196, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 98, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 98, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 98 +16,  190006, 68, 0x100, -1, 0, -9.9 -55.5, 518.5 ); --ゴゴゴ
setEffShake( spep_0 + 98 +16, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 98 +16, ctgogo, -9.9 -55.5, 518.5 , 0 );
setEffMoveKey( spep_0 + 182, ctgogo, -9.9 -55.5, 515.8 , 0 );

setEffScaleKey( spep_0 + 98 +16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 174, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 176, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 178, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 180, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 182, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 98 +16, ctgogo, 0 );
setEffRotateKey( spep_0 + 182, ctgogo, 0 );

setEffAlphaKey( spep_0 + 98 +16, ctgogo, 255 );
setEffAlphaKey( spep_0 + 182, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 188, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_0 + 4, 8 );  --顔アップ
playSe( spep_0 + 98 +16, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 殴る(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_2 + 0, SP_02, 96, 0x100, -1, 0, 0, 0 );  --殴る　手前(ef_002)
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 96, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 96, punch_f, 255 );

punch_b = entryEffectLife( spep_2 + 0, SP_03, 96, 0x80, -1, 0, 0, 0 );  --殴る　奥(ef_003)
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 96, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 96, punch_b, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 78, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 78, 20 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 78, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 78, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 78, shuchusen3, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 48, 1, 1 );
changeAnime( spep_2 -3 + 48, 1, 104 );

setMoveKey( spep_2 -3 + 48, 1, 173.8, -13.1 , 0 );

setScaleKey( spep_2 -3 + 48, 1, 1.2, 1.2 );

setRotateKey( spep_2 -3 + 48, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE1 = playSe( spep_2 + 2, 9 );  --拳アップ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 0);

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );

setMoveKey( SP_dodge + 0, 1, 173.8, -13.1 , 0 );
setMoveKey( SP_dodge + 10, 1, 173.8, -13.1 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.2, 1.2 );
setScaleKey( SP_dodge + 10, 1, 1.2, 1.2 );

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

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_2 + 62 -3,  10005, 24, 0x100, -1, 0, 3.9, 316.1 );  --ガッ

setEffMoveKey( spep_2 + 62 -3, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 + 86 -3, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_2 + 62 -3, ctga, 3.5, 3.5 );
setEffScaleKey( spep_2 + 78 -3, ctga, 3.5, 3.5 );
setEffScaleKey( spep_2 + 80 -3, ctga, 3.55, 3.55 );
setEffScaleKey( spep_2 + 82 -3, ctga, 3.6, 3.6 );
setEffScaleKey( spep_2 + 84 -3, ctga, 3.65, 3.65 );
setEffScaleKey( spep_2 + 86 -3, ctga, 3.7, 3.7 );

setEffRotateKey( spep_2 + 62 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 63 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 64 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 65 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 66 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 67 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 68 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 69 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 70 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 71 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 72 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 73 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 74 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 75 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 76 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 77 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 78 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 79 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 80 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 86 -3, ctga, -23.9 +8 );

setEffAlphaKey( spep_2 + 62 -3, ctga, 255 );
setEffAlphaKey( spep_2 + 78 -3, ctga, 255 );
setEffAlphaKey( spep_2 + 80 -3, ctga, 191 );
setEffAlphaKey( spep_2 + 82 -3, ctga, 128 );
setEffAlphaKey( spep_2 + 84 -3, ctga, 64 );
setEffAlphaKey( spep_2 + 86 -3, ctga, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 98, 1, 0 );
changeAnime( spep_2 -3 + 62, 1, 106 );
changeAnime( spep_2 -3 + 78, 1, 5 );

setMoveKey( spep_2 -3 + 61, 1, 173.8, -13.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 211.1, 11.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 193.2, 28.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 200, 17.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 204, 34.6 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 200.8, 32 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 203.4, 40.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 157.1, -18 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 111.2, -76.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 109.1, -45.6 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 167.8, 41.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 206.9, 98.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 231, 133.3 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 278.7, 193.5 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 317.1, 240.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 350.3, 279.5 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 380.9, 314.6 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 410.2, 347.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 439.2, 380.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 468.2, 413.5 , 0 );

setScaleKey( spep_2 -3 + 61, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 62, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 66, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 68, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 70, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 72, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 74, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 77, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 78, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 80, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 82, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 84, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 86, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 88, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 90, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 92, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 94, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 96, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 98, 1, 0.26, 0.26 );

setRotateKey( spep_2 -3 + 61, 1, 0 );
setRotateKey( spep_2 -3 + 62, 1, -32.5 );
setRotateKey( spep_2 -3 + 64, 1, -31.8 );
setRotateKey( spep_2 -3 + 66, 1, -31.1 );
setRotateKey( spep_2 -3 + 68, 1, -30.4 );
setRotateKey( spep_2 -3 + 70, 1, -29.6 );
setRotateKey( spep_2 -3 + 72, 1, -28.9 );
setRotateKey( spep_2 -3 + 74, 1, -28.2 );
setRotateKey( spep_2 -3 + 77, 1, -27.5 );
setRotateKey( spep_2 -3 + 78, 1, 58.6 );
setRotateKey( spep_2 -3 + 98, 1, 58.6 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 88, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 62 -3, 1009 );  --殴る

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

------------------------------------------------------
-- 吹っ飛ぶ(150F)
------------------------------------------------------

-- ** エフェクト等 ** --
kiran = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --吹っ飛ぶ(ef_004)
setEffMoveKey( spep_3 + 0, kiran, 0, 0 , 0 );
setEffMoveKey( spep_3 + 150, kiran, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kiran, 1.0, 1.0 );
setEffScaleKey( spep_3 + 150, kiran, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kiran, 0 );
setEffRotateKey( spep_3 + 150, kiran, 0 );
setEffAlphaKey( spep_3 + 0, kiran, 255 );
setEffAlphaKey( spep_3 + 150, kiran, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 98 -3, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, -0.2, -160.3 , 0 );
setMoveKey( spep_3 + 4 -3, 1, -0.1, -100.3 , 0 );
setMoveKey( spep_3 + 6 -3, 1, -0.1, -78.2 , 0 );
setMoveKey( spep_3 + 8 -3, 1, -0.1, -59.2 , 0 );
setMoveKey( spep_3 + 10 -3, 1, -0.1, -42.5 , 0 );
setMoveKey( spep_3 + 12 -3, 1, 0, -27.7 , 0 );
setMoveKey( spep_3 + 14 -3, 1, 0, -14.4 , 0 );
setMoveKey( spep_3 + 16 -3, 1, 0, -2.4 , 0 );
setMoveKey( spep_3 + 18 -3, 1, 0, 8.5 , 0 );
setMoveKey( spep_3 + 20 -3, 1, 0, 18.5 , 0 );
setMoveKey( spep_3 + 22 -3, 1, 0, 27.7 , 0 );
setMoveKey( spep_3 + 24 -3, 1, 0, 36.1 , 0 );
setMoveKey( spep_3 + 26 -3, 1, 0, 43.9 , 0 );
setMoveKey( spep_3 + 28 -3, 1, 0, 51.1 , 0 );
setMoveKey( spep_3 + 30 -3, 1, 0, 57.8 , 0 );
setMoveKey( spep_3 + 32 -3, 1, 0.1, 64 , 0 );
setMoveKey( spep_3 + 34 -3, 1, 0.1, 69.8 , 0 );
setMoveKey( spep_3 + 36 -3, 1, 0, 75.1 , 0 );
setMoveKey( spep_3 + 38 -3, 1, 0.1, 80.2 , 0 );
setMoveKey( spep_3 + 40 -3, 1, 0.1, 84.7 , 0 );
setMoveKey( spep_3 + 42 -3, 1, 0.1, 89.1 , 0 );
setMoveKey( spep_3 + 44 -3, 1, 0.1, 93.1 , 0 );
setMoveKey( spep_3 + 46 -3, 1, 0, 96.8 , 0 );
setMoveKey( spep_3 + 48 -3, 1, 0.1, 100.2 , 0 );
setMoveKey( spep_3 + 50 -3, 1, 0, 103.4 , 0 );
setMoveKey( spep_3 + 52 -3, 1, 0, 106.4 , 0 );
setMoveKey( spep_3 + 54 -3, 1, 0, 109.1 , 0 );
setMoveKey( spep_3 + 56 -3, 1, 0, 111.7 , 0 );
setMoveKey( spep_3 + 58 -3, 1, 0, 114 , 0 );
setMoveKey( spep_3 + 60 -3, 1, 0, 116.3 , 0 );
setMoveKey( spep_3 + 62 -3, 1, 0, 118.3 , 0 );
setMoveKey( spep_3 + 64 -3, 1, 0, 120.1 , 0 );
setMoveKey( spep_3 + 66 -3, 1, 0, 121.7 , 0 );
setMoveKey( spep_3 + 68 -3, 1, 0, 123.2 , 0 );
setMoveKey( spep_3 + 70 -3, 1, 0, 124.5 , 0 );
setMoveKey( spep_3 + 72 -3, 1, 0, 125.7 , 0 );
setMoveKey( spep_3 + 74 -3, 1, 0, 126.8 , 0 );
setMoveKey( spep_3 + 76 -3, 1, 0, 127.8 , 0 );
setMoveKey( spep_3 + 78 -3, 1, 0, 128.6 , 0 );
setMoveKey( spep_3 + 80 -3, 1, 0, 129.3 , 0 );
setMoveKey( spep_3 + 82 -3, 1, 0, 129.9 , 0 );
setMoveKey( spep_3 + 84 -3, 1, 0, 130.5 , 0 );
setMoveKey( spep_3 + 86 -3, 1, 0, 130.9 , 0 );
setMoveKey( spep_3 + 88 -3, 1, 0, 131.2 , 0 );
setMoveKey( spep_3 + 90 -3, 1, 0, 131.5 , 0 );
setMoveKey( spep_3 + 92 -3, 1, 0, 131.7 , 0 );
setMoveKey( spep_3 + 94 -3, 1, 0, 131.8 , 0 );
setMoveKey( spep_3 + 96 -3, 1, 0, 131.9 , 0 );
setMoveKey( spep_3 + 98 -3, 1, 0, 132 , 0 );

setScaleKey( spep_3 + 0, 1, 4.4, 4.4 );
setScaleKey( spep_3 + 4 -3, 1, 3.5, 3.5 );
setScaleKey( spep_3 + 6 -3, 1, 3.19, 3.19 );
setScaleKey( spep_3 + 8 -3, 1, 2.88, 2.88 );
setScaleKey( spep_3 + 10 -3, 1, 2.65, 2.65 );
setScaleKey( spep_3 + 12 -3, 1, 2.43, 2.43 );
setScaleKey( spep_3 + 14 -3, 1, 2.23, 2.23 );
setScaleKey( spep_3 + 16 -3, 1, 2.03, 2.03 );
setScaleKey( spep_3 + 18 -3, 1, 1.89, 1.89 );
setScaleKey( spep_3 + 20 -3, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 22 -3, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 24 -3, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 26 -3, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 28 -3, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 30 -3, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 32 -3, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 34 -3, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 36 -3, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 38 -3, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 40 -3, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 42 -3, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 44 -3, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 46 -3, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 48 -3, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 50 -3, 1, 0.45, 0.45 );
setScaleKey( spep_3 + 52 -3, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 54 -3, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 56 -3, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 58 -3, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 60 -3, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 62 -3, 1, 0.23, 0.23 );
setScaleKey( spep_3 + 64 -3, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 66 -3, 1, 0.17, 0.17 );
setScaleKey( spep_3 + 68 -3, 1, 0.17, 0.17 );
setScaleKey( spep_3 + 70 -3, 1, 0.14, 0.14 );
setScaleKey( spep_3 + 72 -3, 1, 0.11, 0.11 );
setScaleKey( spep_3 + 74 -3, 1, 0.11, 0.11 );
setScaleKey( spep_3 + 76 -3, 1, 0.08, 0.08 );
setScaleKey( spep_3 + 78 -3, 1, 0.08, 0.08 );
setScaleKey( spep_3 + 80 -3, 1, 0.06, 0.06 );
setScaleKey( spep_3 + 86 -3, 1, 0.06, 0.06 );
setScaleKey( spep_3 + 88 -3, 1, 0.03, 0.03 );
setScaleKey( spep_3 + 98 -3, 1, 0.03, 0.03 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 4 -3, 1, 0.6 );
setRotateKey( spep_3 + 6 -3, 1, 1.2 );
setRotateKey( spep_3 + 8 -3, 1, 2.2 );
setRotateKey( spep_3 + 10 -3, 1, 3.4 );
setRotateKey( spep_3 + 12 -3, 1, 4.9 );
setRotateKey( spep_3 + 14 -3, 1, 6.6 );
setRotateKey( spep_3 + 16 -3, 1, 8.6 );
setRotateKey( spep_3 + 18 -3, 1, 10.9 );
setRotateKey( spep_3 + 20 -3, 1, 13.4 );
setRotateKey( spep_3 + 22 -3, 1, 16.2 );
setRotateKey( spep_3 + 24 -3, 1, 19.3 );
setRotateKey( spep_3 + 26 -3, 1, 22.6 );
setRotateKey( spep_3 + 28 -3, 1, 26.3 );
setRotateKey( spep_3 + 30 -3, 1, 30.2 );
setRotateKey( spep_3 + 32 -3, 1, 34.4 );
setRotateKey( spep_3 + 34 -3, 1, 38.9 );
setRotateKey( spep_3 + 36 -3, 1, 43.8 );
setRotateKey( spep_3 + 38 -3, 1, 48.9 );
setRotateKey( spep_3 + 40 -3, 1, 54.4 );
setRotateKey( spep_3 + 42 -3, 1, 60.3 );
setRotateKey( spep_3 + 44 -3, 1, 66.5 );
setRotateKey( spep_3 + 46 -3, 1, 73 );
setRotateKey( spep_3 + 48 -3, 1, 80 );
setRotateKey( spep_3 + 50 -3, 1, 87.4 );
setRotateKey( spep_3 + 52 -3, 1, 95.2 );
setRotateKey( spep_3 + 54 -3, 1, 103.5 );
setRotateKey( spep_3 + 56 -3, 1, 112.2 );
setRotateKey( spep_3 + 58 -3, 1, 121.5 );
setRotateKey( spep_3 + 60 -3, 1, 131.3 );
setRotateKey( spep_3 + 62 -3, 1, 141.7 );
setRotateKey( spep_3 + 64 -3, 1, 152.7 );
setRotateKey( spep_3 + 66 -3, 1, 164.4 );
setRotateKey( spep_3 + 68 -3, 1, 176.9 );
setRotateKey( spep_3 + 70 -3, 1, 190.2 );
setRotateKey( spep_3 + 72 -3, 1, 204.4 );
setRotateKey( spep_3 + 74 -3, 1, 219.6 );
setRotateKey( spep_3 + 76 -3, 1, 235.8 );
setRotateKey( spep_3 + 78 -3, 1, 253.4 );
setRotateKey( spep_3 + 80 -3, 1, 272.4 );
setRotateKey( spep_3 + 82 -3, 1, 293.2 );
setRotateKey( spep_3 + 84 -3, 1, 315.9 );
setRotateKey( spep_3 + 86 -3, 1, 341.1 );
setRotateKey( spep_3 + 88 -3, 1, 369.5 );
setRotateKey( spep_3 + 90 -3, 1, 401.9 );
setRotateKey( spep_3 + 92 -3, 1, 440 );
setRotateKey( spep_3 + 94 -3, 1, 487.1 );
setRotateKey( spep_3 + 96 -3, 1, 551.4 );
setRotateKey( spep_3 + 98 -3, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 2, 7);  --飛んでいく
playSe( spep_3 + 92, 13);  --キラン

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 40 );
entryFade( spep_3 + 140, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_3 + 150 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 顔アップ(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_0 + 0, SP_01, 196, 0x100, -1, 0, 0, 0 );  --顔アップ(ef_001)
setEffMoveKey( spep_0 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, faceup, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, faceup, -1.0, 1.0 );
setEffScaleKey( spep_0 + 196, faceup, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, faceup, 0 );
setEffRotateKey( spep_0 + 196, faceup, 0 );
setEffAlphaKey( spep_0 + 0, faceup, 255 );
setEffAlphaKey( spep_0 + 196, faceup, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 98,  906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 98, shuchusen1, 98, 20 );

setEffMoveKey( spep_0 + 98, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 98, shuchusen1, 1.8, 1.8 );
setEffScaleKey( spep_0 + 196, shuchusen1, 1.8, 1.8 );

setEffRotateKey( spep_0 + 98, shuchusen1, 0 );
setEffRotateKey( spep_0 + 196, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 98, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 98 +15, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 98 +16, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 196, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 98, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 98, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 98 +16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 98 +16, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 98 +16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 182, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 98 +16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 174, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 176, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 178, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 180, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 182, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 98 +16, ctgogo, 0 );
setEffRotateKey( spep_0 + 182, ctgogo, 0 );

setEffAlphaKey( spep_0 + 98 +16, ctgogo, 255 );
setEffAlphaKey( spep_0 + 182, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 188, 6, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_0 + 4, 8 );  --顔アップ
playSe( spep_0 + 98 +16, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 殴る(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_2 + 0, SP_02r, 96, 0x100, -1, 0, 0, 0 );  --殴る　手前(ef_002)
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 96, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 96, punch_f, 255 );

punch_b = entryEffectLife( spep_2 + 0, SP_03, 96, 0x80, -1, 0, 0, 0 );  --殴る　奥(ef_003)
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 96, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 96, punch_b, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 78, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 78, 20 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 78, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 78, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 78, shuchusen3, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 48, 1, 1 );
changeAnime( spep_2 -3 + 48, 1, 104 );

setMoveKey( spep_2 -3 + 48, 1, 173.8, -13.1 , 0 );

setScaleKey( spep_2 -3 + 48, 1, 1.2, 1.2 );

setRotateKey( spep_2 -3 + 48, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE1 = playSe( spep_2 + 2, 9 );  --拳アップ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 0);

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );

setMoveKey( SP_dodge + 0, 1, 173.8, -13.1 , 0 );
setMoveKey( SP_dodge + 10, 1, 173.8, -13.1 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.2, 1.2 );
setScaleKey( SP_dodge + 10, 1, 1.2, 1.2 );

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

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_2 + 62 -3,  10005, 24, 0x100, -1, 0, 3.9, 316.1 );  --ガッ

setEffMoveKey( spep_2 + 62 -3, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_2 + 86 -3, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_2 + 62 -3, ctga, 3.5, 3.5 );
setEffScaleKey( spep_2 + 78 -3, ctga, 3.5, 3.5 );
setEffScaleKey( spep_2 + 80 -3, ctga, 3.55, 3.55 );
setEffScaleKey( spep_2 + 82 -3, ctga, 3.6, 3.6 );
setEffScaleKey( spep_2 + 84 -3, ctga, 3.65, 3.65 );
setEffScaleKey( spep_2 + 86 -3, ctga, 3.7, 3.7 );

setEffRotateKey( spep_2 + 62 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 63 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 64 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 65 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 66 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 67 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 68 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 69 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 70 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 71 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 72 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 73 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 74 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 75 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 76 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 77 -3, ctga, -14.9 +8 );
setEffRotateKey( spep_2 + 78 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 79 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 80 -3, ctga, -23.9 +8 );
setEffRotateKey( spep_2 + 86 -3, ctga, -23.9 +8 );

setEffAlphaKey( spep_2 + 62 -3, ctga, 255 );
setEffAlphaKey( spep_2 + 78 -3, ctga, 255 );
setEffAlphaKey( spep_2 + 80 -3, ctga, 191 );
setEffAlphaKey( spep_2 + 82 -3, ctga, 128 );
setEffAlphaKey( spep_2 + 84 -3, ctga, 64 );
setEffAlphaKey( spep_2 + 86 -3, ctga, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 98, 1, 0 );
changeAnime( spep_2 -3 + 62, 1, 106 );
changeAnime( spep_2 -3 + 78, 1, 5 );

setMoveKey( spep_2 -3 + 61, 1, 173.8, -13.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 211.1, 11.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 193.2, 28.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 200, 17.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 204, 34.6 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 200.8, 32 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 203.4, 40.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 157.1, -18 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 111.2, -76.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 109.1, -45.6 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 167.8, 41.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 206.9, 98.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 231, 133.3 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 278.7, 193.5 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 317.1, 240.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 350.3, 279.5 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 380.9, 314.6 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 410.2, 347.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 439.2, 380.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 468.2, 413.5 , 0 );

setScaleKey( spep_2 -3 + 61, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 62, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 66, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 68, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 70, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 72, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 74, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 77, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 78, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 80, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 82, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 84, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 86, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 88, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 90, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 92, 1, 0.56, 0.56 );
setScaleKey( spep_2 -3 + 94, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 96, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 98, 1, 0.26, 0.26 );

setRotateKey( spep_2 -3 + 61, 1, 0 );
setRotateKey( spep_2 -3 + 62, 1, -32.5 );
setRotateKey( spep_2 -3 + 64, 1, -31.8 );
setRotateKey( spep_2 -3 + 66, 1, -31.1 );
setRotateKey( spep_2 -3 + 68, 1, -30.4 );
setRotateKey( spep_2 -3 + 70, 1, -29.6 );
setRotateKey( spep_2 -3 + 72, 1, -28.9 );
setRotateKey( spep_2 -3 + 74, 1, -28.2 );
setRotateKey( spep_2 -3 + 77, 1, -27.5 );
setRotateKey( spep_2 -3 + 78, 1, 58.6 );
setRotateKey( spep_2 -3 + 98, 1, 58.6 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 88, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 62 -3, 1009 );  --殴る

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

------------------------------------------------------
-- 吹っ飛ぶ(150F)
------------------------------------------------------

-- ** エフェクト等 ** --
kiran = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --吹っ飛ぶ(ef_004)
setEffMoveKey( spep_3 + 0, kiran, 0, 0 , 0 );
setEffMoveKey( spep_3 + 150, kiran, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kiran, 1.0, 1.0 );
setEffScaleKey( spep_3 + 150, kiran, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kiran, 0 );
setEffRotateKey( spep_3 + 150, kiran, 0 );
setEffAlphaKey( spep_3 + 0, kiran, 255 );
setEffAlphaKey( spep_3 + 150, kiran, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 98 -3, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, -0.2, -160.3 , 0 );
setMoveKey( spep_3 + 4 -3, 1, -0.1, -100.3 , 0 );
setMoveKey( spep_3 + 6 -3, 1, -0.1, -78.2 , 0 );
setMoveKey( spep_3 + 8 -3, 1, -0.1, -59.2 , 0 );
setMoveKey( spep_3 + 10 -3, 1, -0.1, -42.5 , 0 );
setMoveKey( spep_3 + 12 -3, 1, 0, -27.7 , 0 );
setMoveKey( spep_3 + 14 -3, 1, 0, -14.4 , 0 );
setMoveKey( spep_3 + 16 -3, 1, 0, -2.4 , 0 );
setMoveKey( spep_3 + 18 -3, 1, 0, 8.5 , 0 );
setMoveKey( spep_3 + 20 -3, 1, 0, 18.5 , 0 );
setMoveKey( spep_3 + 22 -3, 1, 0, 27.7 , 0 );
setMoveKey( spep_3 + 24 -3, 1, 0, 36.1 , 0 );
setMoveKey( spep_3 + 26 -3, 1, 0, 43.9 , 0 );
setMoveKey( spep_3 + 28 -3, 1, 0, 51.1 , 0 );
setMoveKey( spep_3 + 30 -3, 1, 0, 57.8 , 0 );
setMoveKey( spep_3 + 32 -3, 1, 0.1, 64 , 0 );
setMoveKey( spep_3 + 34 -3, 1, 0.1, 69.8 , 0 );
setMoveKey( spep_3 + 36 -3, 1, 0, 75.1 , 0 );
setMoveKey( spep_3 + 38 -3, 1, 0.1, 80.2 , 0 );
setMoveKey( spep_3 + 40 -3, 1, 0.1, 84.7 , 0 );
setMoveKey( spep_3 + 42 -3, 1, 0.1, 89.1 , 0 );
setMoveKey( spep_3 + 44 -3, 1, 0.1, 93.1 , 0 );
setMoveKey( spep_3 + 46 -3, 1, 0, 96.8 , 0 );
setMoveKey( spep_3 + 48 -3, 1, 0.1, 100.2 , 0 );
setMoveKey( spep_3 + 50 -3, 1, 0, 103.4 , 0 );
setMoveKey( spep_3 + 52 -3, 1, 0, 106.4 , 0 );
setMoveKey( spep_3 + 54 -3, 1, 0, 109.1 , 0 );
setMoveKey( spep_3 + 56 -3, 1, 0, 111.7 , 0 );
setMoveKey( spep_3 + 58 -3, 1, 0, 114 , 0 );
setMoveKey( spep_3 + 60 -3, 1, 0, 116.3 , 0 );
setMoveKey( spep_3 + 62 -3, 1, 0, 118.3 , 0 );
setMoveKey( spep_3 + 64 -3, 1, 0, 120.1 , 0 );
setMoveKey( spep_3 + 66 -3, 1, 0, 121.7 , 0 );
setMoveKey( spep_3 + 68 -3, 1, 0, 123.2 , 0 );
setMoveKey( spep_3 + 70 -3, 1, 0, 124.5 , 0 );
setMoveKey( spep_3 + 72 -3, 1, 0, 125.7 , 0 );
setMoveKey( spep_3 + 74 -3, 1, 0, 126.8 , 0 );
setMoveKey( spep_3 + 76 -3, 1, 0, 127.8 , 0 );
setMoveKey( spep_3 + 78 -3, 1, 0, 128.6 , 0 );
setMoveKey( spep_3 + 80 -3, 1, 0, 129.3 , 0 );
setMoveKey( spep_3 + 82 -3, 1, 0, 129.9 , 0 );
setMoveKey( spep_3 + 84 -3, 1, 0, 130.5 , 0 );
setMoveKey( spep_3 + 86 -3, 1, 0, 130.9 , 0 );
setMoveKey( spep_3 + 88 -3, 1, 0, 131.2 , 0 );
setMoveKey( spep_3 + 90 -3, 1, 0, 131.5 , 0 );
setMoveKey( spep_3 + 92 -3, 1, 0, 131.7 , 0 );
setMoveKey( spep_3 + 94 -3, 1, 0, 131.8 , 0 );
setMoveKey( spep_3 + 96 -3, 1, 0, 131.9 , 0 );
setMoveKey( spep_3 + 98 -3, 1, 0, 132 , 0 );

setScaleKey( spep_3 + 0, 1, 4.4, 4.4 );
setScaleKey( spep_3 + 4 -3, 1, 3.5, 3.5 );
setScaleKey( spep_3 + 6 -3, 1, 3.19, 3.19 );
setScaleKey( spep_3 + 8 -3, 1, 2.88, 2.88 );
setScaleKey( spep_3 + 10 -3, 1, 2.65, 2.65 );
setScaleKey( spep_3 + 12 -3, 1, 2.43, 2.43 );
setScaleKey( spep_3 + 14 -3, 1, 2.23, 2.23 );
setScaleKey( spep_3 + 16 -3, 1, 2.03, 2.03 );
setScaleKey( spep_3 + 18 -3, 1, 1.89, 1.89 );
setScaleKey( spep_3 + 20 -3, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 22 -3, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 24 -3, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 26 -3, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 28 -3, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 30 -3, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 32 -3, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 34 -3, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 36 -3, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 38 -3, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 40 -3, 1, 0.73, 0.73 );
setScaleKey( spep_3 + 42 -3, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 44 -3, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 46 -3, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 48 -3, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 50 -3, 1, 0.45, 0.45 );
setScaleKey( spep_3 + 52 -3, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 54 -3, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 56 -3, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 58 -3, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 60 -3, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 62 -3, 1, 0.23, 0.23 );
setScaleKey( spep_3 + 64 -3, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 66 -3, 1, 0.17, 0.17 );
setScaleKey( spep_3 + 68 -3, 1, 0.17, 0.17 );
setScaleKey( spep_3 + 70 -3, 1, 0.14, 0.14 );
setScaleKey( spep_3 + 72 -3, 1, 0.11, 0.11 );
setScaleKey( spep_3 + 74 -3, 1, 0.11, 0.11 );
setScaleKey( spep_3 + 76 -3, 1, 0.08, 0.08 );
setScaleKey( spep_3 + 78 -3, 1, 0.08, 0.08 );
setScaleKey( spep_3 + 80 -3, 1, 0.06, 0.06 );
setScaleKey( spep_3 + 86 -3, 1, 0.06, 0.06 );
setScaleKey( spep_3 + 88 -3, 1, 0.03, 0.03 );
setScaleKey( spep_3 + 98 -3, 1, 0.03, 0.03 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 4 -3, 1, 0.6 );
setRotateKey( spep_3 + 6 -3, 1, 1.2 );
setRotateKey( spep_3 + 8 -3, 1, 2.2 );
setRotateKey( spep_3 + 10 -3, 1, 3.4 );
setRotateKey( spep_3 + 12 -3, 1, 4.9 );
setRotateKey( spep_3 + 14 -3, 1, 6.6 );
setRotateKey( spep_3 + 16 -3, 1, 8.6 );
setRotateKey( spep_3 + 18 -3, 1, 10.9 );
setRotateKey( spep_3 + 20 -3, 1, 13.4 );
setRotateKey( spep_3 + 22 -3, 1, 16.2 );
setRotateKey( spep_3 + 24 -3, 1, 19.3 );
setRotateKey( spep_3 + 26 -3, 1, 22.6 );
setRotateKey( spep_3 + 28 -3, 1, 26.3 );
setRotateKey( spep_3 + 30 -3, 1, 30.2 );
setRotateKey( spep_3 + 32 -3, 1, 34.4 );
setRotateKey( spep_3 + 34 -3, 1, 38.9 );
setRotateKey( spep_3 + 36 -3, 1, 43.8 );
setRotateKey( spep_3 + 38 -3, 1, 48.9 );
setRotateKey( spep_3 + 40 -3, 1, 54.4 );
setRotateKey( spep_3 + 42 -3, 1, 60.3 );
setRotateKey( spep_3 + 44 -3, 1, 66.5 );
setRotateKey( spep_3 + 46 -3, 1, 73 );
setRotateKey( spep_3 + 48 -3, 1, 80 );
setRotateKey( spep_3 + 50 -3, 1, 87.4 );
setRotateKey( spep_3 + 52 -3, 1, 95.2 );
setRotateKey( spep_3 + 54 -3, 1, 103.5 );
setRotateKey( spep_3 + 56 -3, 1, 112.2 );
setRotateKey( spep_3 + 58 -3, 1, 121.5 );
setRotateKey( spep_3 + 60 -3, 1, 131.3 );
setRotateKey( spep_3 + 62 -3, 1, 141.7 );
setRotateKey( spep_3 + 64 -3, 1, 152.7 );
setRotateKey( spep_3 + 66 -3, 1, 164.4 );
setRotateKey( spep_3 + 68 -3, 1, 176.9 );
setRotateKey( spep_3 + 70 -3, 1, 190.2 );
setRotateKey( spep_3 + 72 -3, 1, 204.4 );
setRotateKey( spep_3 + 74 -3, 1, 219.6 );
setRotateKey( spep_3 + 76 -3, 1, 235.8 );
setRotateKey( spep_3 + 78 -3, 1, 253.4 );
setRotateKey( spep_3 + 80 -3, 1, 272.4 );
setRotateKey( spep_3 + 82 -3, 1, 293.2 );
setRotateKey( spep_3 + 84 -3, 1, 315.9 );
setRotateKey( spep_3 + 86 -3, 1, 341.1 );
setRotateKey( spep_3 + 88 -3, 1, 369.5 );
setRotateKey( spep_3 + 90 -3, 1, 401.9 );
setRotateKey( spep_3 + 92 -3, 1, 440 );
setRotateKey( spep_3 + 94 -3, 1, 487.1 );
setRotateKey( spep_3 + 96 -3, 1, 551.4 );
setRotateKey( spep_3 + 98 -3, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 2, 7);  --飛んでいく
playSe( spep_3 + 92, 13);  --キラン

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 40 );
entryFade( spep_3 + 140, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_3 + 150 );

end



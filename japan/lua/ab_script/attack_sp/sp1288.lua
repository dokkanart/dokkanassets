--合体ザマス_神の鉄槌

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
SP_01 = 153404; --激突　手前
SP_02 = 153405; --激突　奥
SP_03 = 153406; --顔アップ
SP_04 = 153407; --吹っ飛ばし　奥
SP_05 = 153408; --吹っ飛ばし　手前
SP_06 = 153409; --殴り
SP_07 = 153410; --フィニッシュ　奥
SP_08 = 153411; --フィニッシュ手前

--敵側
SP_01r = 153412; --激突　手前
SP_02r = 153413; --激突　奥
SP_04r = 153414; --吹っ飛ばし　奥
SP_05r = 153415; --吹っ飛ばし　手前
SP_08r = 153416; --フィニッシュ手前

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

setMoveKey(   0,   1, 142.3, -19.5 , 0 );
setMoveKey(   1,   1, 142.3, -19.5 , 0 );
setMoveKey(   2,   1, 142.3, -19.5 , 0 );
setMoveKey(   3,   1, 142.3, -19.5 , 0 );
setMoveKey(   4,   1, 142.3, -19.5 , 0 );
setMoveKey(   5,   1, 142.3, -19.5 , 0 );
setMoveKey(   6,   1, 142.3, -19.5 , 0 );
setScaleKey(  0,   1, 2.5, 2.5 );
setScaleKey(  1,   1, 2.5, 2.5 );
setScaleKey(  2,   1, 2.5, 2.5 );
setScaleKey(  3,   1, 2.5, 2.5 );
setScaleKey(  4,   1, 2.5, 2.5 );
setScaleKey(  5,   1, 2.5, 2.5 );
setScaleKey(  6,   1, 2.5, 2.5 );
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
-- 激突(320F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
gekitotsu_f = entryEffectLife( spep_0 + 0, SP_01, 320, 0x100, -1, 0, 0, 0 );  --激突　手前(ef_001)
setEffMoveKey( spep_0 + 0, gekitotsu_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 320, gekitotsu_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, gekitotsu_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 320, gekitotsu_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, gekitotsu_f, 0 );
setEffRotateKey( spep_0 + 320, gekitotsu_f, 0 );
setEffAlphaKey( spep_0 + 0, gekitotsu_f, 255 );
setEffAlphaKey( spep_0 + 319, gekitotsu_f, 255 );
setEffAlphaKey( spep_0 + 320, gekitotsu_f, 0 );

gekitotsu_b = entryEffectLife( spep_0 + 0, SP_02, 320, 0x80, -1, 0, 0, 0 );  --激突　奥(ef_002)
setEffMoveKey( spep_0 + 0, gekitotsu_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 320, gekitotsu_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, gekitotsu_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 320, gekitotsu_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, gekitotsu_b, 0 );
setEffRotateKey( spep_0 + 320, gekitotsu_b, 0 );
setEffAlphaKey( spep_0 + 0, gekitotsu_b, 255 );
setEffAlphaKey( spep_0 + 319, gekitotsu_b, 255 );
setEffAlphaKey( spep_0 + 320, gekitotsu_b, 0 );

-- ** 敵キャラクター ** --
changeAnime( 0, 1, 118);
setDisp( 0, 1, 1);
setMoveKey( spep_0 + 0, 1, 142.3, -19.5 , 0 );
setMoveKey( spep_0 + 30, 1, 142.3, -19.5 , 0 );

setScaleKey( spep_0 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 30, 1, 2.5, 2.5 );

setRotateKey( spep_0 + 0, 1, -0.2 );
setRotateKey( spep_0 + 30, 1, -0.2 );

-- ** 音 ** --
SE1 = playSe( spep_0 , 1016 );  --最初ダッシュ
playSe(  spep_0 + 2,  8);
--stopSe(spep_0+10,  17,  5);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 320, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 24; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge  , 1, 118 );

setMoveKey( SP_dodge , 1, 142.3, -19.5 , 0 );
setMoveKey( SP_dodge + 10, 1, 142.3, -19.5 , 0 );

setScaleKey( SP_dodge , 1, 2.5, 2.5 );
setScaleKey( SP_dodge + 10, 1, 2.5, 2.5 );

setRotateKey( SP_dodge , 1, -0.2 );
setRotateKey( SP_dodge + 10, 1, -0.2 );

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

a = 3;
-- ** 敵キャラクター ** --
setDisp( spep_0 + 75 -2, 1, 0 );
setDisp( spep_0 + 196 -2, 1, 1 );
setDisp( spep_0 + 226 -2, 1, 0 );
changeAnime( spep_0 + 40 -2, 1, 107 );
changeAnime( spep_0 + 196 -2, 1, 107 );
changeAnime( spep_0 + 200 -2, 1, 106 );
changeAnime( spep_0 + 210 -2, 1, 5 );

setMoveKey( spep_0 + 36 -2, 1, 142.3, -19.5 , 0 );
setMoveKey( spep_0 + 39 -2, 1, 178.2, -70 , 0 );
setMoveKey( spep_0 + 40 -2, 1, 198.9, -357.9 , 0 );
setMoveKey( spep_0 + 42 -2, 1, 222.4, -445 , 0 );
setMoveKey( spep_0 + 44 -2, 1, 237.2, -440 , 0 );
setMoveKey( spep_0 + 46 -2, 1, 226.9, -489.7 , 0 );
setMoveKey( spep_0 + 48 -2, 1, 249.4, -466 , 0 );
setMoveKey( spep_0 + 50 -2, 1, 247.4, -513.4 , 0 );
setMoveKey( spep_0 + 52 -2, 1, 255, -492.8 , 0 );
setMoveKey( spep_0 + 54 -2, 1, 227.2, -511.7 , 0 );
setMoveKey( spep_0 + 56 -2, 1, 260.8, -503.1 , 0 );
setMoveKey( spep_0 + 58 -2, 1, 233.1, -524.7 , 0 );
setMoveKey( spep_0 + 60 -2, 1, 384.3, -886.4 , 0 );
setMoveKey( spep_0 + 62 -2, 1, 508.1, -1260.9 , 0 );
setMoveKey( spep_0 + 64 -2, 1, 612.4, -1520.3 , 0 );
setMoveKey( spep_0 + 66 -2, 1, 675.3, -1790.3 , 0 );
setMoveKey( spep_0 + 68 -2, 1, 751.5, -1934.6 , 0 );
setMoveKey( spep_0 + 70 -2, 1, 787.3, -2104.9 , 0 );
setMoveKey( spep_0 + 72 -2, 1, 820.2, -2146.5 , 0 );
setMoveKey( spep_0 + 75 -2, 1, 827.5, -2202.7 , 0 );
setMoveKey( spep_0 + 196 -2, 1, -419.7, 55.9 , 0 );
setMoveKey( spep_0 + 198 -2, 1, -215.3, 182.1 , 0 );
setMoveKey( spep_0 + 199 -2, 1, -215.3, 182.1 , 0 );
setMoveKey( spep_0 + 200 -2, 1, -148.2, 210.9 , 0 );
setMoveKey( spep_0 + 202 -2, 1, -66.7, 152.5 , 0 );
setMoveKey( spep_0 + 204 -2, 1, -29.9, 87.4 , 0 );
setMoveKey( spep_0 + 206 -2, 1, -18.9, 52.9 , 0 );
setMoveKey( spep_0 + 208 -2, 1, -12.1, 24.9 , 0 );
setMoveKey( spep_0 + 209 -2, 1, -12.1, 24.9 , 0 );
setMoveKey( spep_0 + 210 -2, 1, -13.9, 7.3 , 0 );
setMoveKey( spep_0 + 212 -2, 1, -4.1, -12.6 , 0 );
setMoveKey( spep_0 + 214 -2, 1, -6.7, -28.4 , 0 );
setMoveKey( spep_0 + 216 -2, 1, -4.9, -41.7 , 0 );
setMoveKey( spep_0 + 218 -2, 1, -1.4, -54.5 , 0 );
setMoveKey( spep_0 + 220 -2, 1, 2, -68.2 , 0 );
setMoveKey( spep_0 + 222 -2, 1, 3.4, -84.6 , 0 );
setMoveKey( spep_0 + 224 -2, 1, 2.9, -92.6 , 0 );
setMoveKey( spep_0 + 226 -2, 1, 3.4, -97.8 , 0 );

setScaleKey( spep_0 + 36 -2, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 39 -2, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 40 -2, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 42 -2, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 44 -2, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 46 -2, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 48 -2, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 50 -2, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 52 -2, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 54 -2, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 56 -2, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 58 -2, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 60 -2, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 62 -2, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 64 -2, 1, 5.37, 5.37 );
setScaleKey( spep_0 + 66 -2, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 68 -2, 1, 6.65, 6.65 );
setScaleKey( spep_0 + 70 -2, 1, 7.05, 7.05 );
setScaleKey( spep_0 + 72 -2, 1, 7.29, 7.29 );
setScaleKey( spep_0 + 75 -2, 1, 7.37, 7.37 );
setScaleKey( spep_0 + 196 -2, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 198 -2, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 199 -2, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 200 -2, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 202 -2, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 204 -2, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 206 -2, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 208 -2, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 209 -2, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 210 -2, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 212 -2, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 214 -2, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 216 -2, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 218 -2, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 220 -2, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 222 -2, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 224 -2, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 226 -2, 1, 0.1, 0.1 );

setRotateKey( spep_0 + 36 -2, 1, -0.2 );
setRotateKey( spep_0 + 39 -2, 1, 8.2 );
setRotateKey( spep_0 + 40 -2, 1, -89 );
setRotateKey( spep_0 + 42 -2, 1, -86 );
setRotateKey( spep_0 + 44 -2, 1, -84.7 );
setRotateKey( spep_0 + 46 -2, 1, -83.9 );
setRotateKey( spep_0 + 48 -2, 1, -83.2 );
setRotateKey( spep_0 + 50 -2, 1, -82.8 );
setRotateKey( spep_0 + 52 -2, 1, -82.4 );
setRotateKey( spep_0 + 54 -2, 1, -82.2 );
setRotateKey( spep_0 + 56 -2, 1, -82.1 );
setRotateKey( spep_0 + 58 -2, 1, -82 );
setRotateKey( spep_0 + 60 -2, 1, -78 );
setRotateKey( spep_0 + 62 -2, 1, -74.5 );
setRotateKey( spep_0 + 64 -2, 1, -71.6 );
setRotateKey( spep_0 + 66 -2, 1, -69.2 );
setRotateKey( spep_0 + 68 -2, 1, -67.3 );
setRotateKey( spep_0 + 70 -2, 1, -66 );
setRotateKey( spep_0 + 72 -2, 1, -65.2 );
setRotateKey( spep_0 + 75 -2, 1, -64.9 );
setRotateKey( spep_0 + 196 -2, 1, -80 );
setRotateKey( spep_0 + 198 -2, 1, -74 );
setRotateKey( spep_0 + 199 -2, 1, -74 );
setRotateKey( spep_0 + 200 -2, 1, -32.7 );
setRotateKey( spep_0 + 202 -2, 1, -31.9 );
setRotateKey( spep_0 + 204 -2, 1, -27.1 );
setRotateKey( spep_0 + 206 -2, 1, -21.8 );
setRotateKey( spep_0 + 208 -2, 1, -16 );
setRotateKey( spep_0 + 209 -2, 1, -16 );
setRotateKey( spep_0 + 210 -2, 1, 39 );
setRotateKey( spep_0 + 226 -2, 1, 39 );

-- ** 音 ** --
playSe( spep_0 + 38, 1010);  --殴る
playSe( spep_0 + 40, 1026);  --殴る 高い音
setSeVolume( spep_0 + 38,  1010,  60);
SE2 = playSe( spep_0 + 80, 1044);  --地割れ
playSe(  spep_0 +82,  1043);  --高い音
stopSe(  spep_0 +200,  SE2,  0);
playSe(  spep_0 +200,  8);
playSe(  spep_0 +230,  1023);  --地面に殴りつけ
playSe(  spep_0 +270,  1024);  --爆発
setSeVolume( spep_0 + 82,  1043,  60);

-- ** 次の準備 ** --
spep_1 = spep_0 + 320;

------------------------------------------------------
-- 顔アップ(220F)
------------------------------------------------------

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_1 + 0, SP_03, 180, 0x100, -1, 0, 0, 0 );  --顔アップ(ef_003)
setEffMoveKey( spep_1 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_1 + 180, faceup, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, faceup, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, faceup, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, faceup, 0 );
setEffRotateKey( spep_1 + 180, faceup, 0 );
setEffAlphaKey( spep_1 + 0, faceup, 255 );
setEffAlphaKey( spep_1 + 179, faceup, 255 );
setEffAlphaKey( spep_1 + 180, faceup, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 56,  906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 56, shuchusen1, 84, 25 );

setEffMoveKey( spep_1 + 56, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 140, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 56, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_1 + 140, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_1 + 56, shuchusen1, 0 );
setEffRotateKey( spep_1 + 140, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 56, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 71, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 72, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 140, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1 + 56, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 + 56, 1505, 0x100, -1, -40, 0, 0 );  --カットイン(セリフ)
setEffMoveKey ( spep_1 + 56, speff1, 0, -40 , 0 );
setEffMoveKey ( spep_1 + 146, speff1, 0, -40 , 0 );
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 + 72,  190006, 68, 0x100, -1, 0, -9.9, 521.8 ); --ゴゴゴ
setEffShake( spep_1 + 72, ctgogo, 68, 10 );

setEffMoveKey( spep_1 + 72, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 140, ctgogo, -9.9, 521.8 , 0 );

setEffScaleKey( spep_1 + 72, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 132, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 134, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_1 + 138, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_1 + 140, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_1 + 72, ctgogo, 0 );
setEffRotateKey( spep_1 + 140, ctgogo, 0 );

setEffAlphaKey( spep_1 + 72, ctgogo, 255 );
setEffAlphaKey( spep_1 + 140, ctgogo, 255 );

-- ** 音 ** --
--playSe( spep_1 + 72, SE_04 );  --ゴゴゴ
SE_megahikaru = playSe( spep_1 + 90,  3);  --目が光る
--stopSe(  spep_1 +130,  SE_megahikaru,  10);

SE_megurun1 = playSe( spep_1 + 140,  8);  --目グルン
--SE_megurun2 = playSe( spep_1 + 142,  3);  --目グルン

-- ** 次の準備 ** --
spep_2 = spep_1 + 180;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 吹っ飛ばし(216F)
------------------------------------------------------

-- ** エフェクト等 ** --
tobasu_b = entryEffectLife( spep_3 + 0, SP_04, 216, 0x80, -1, 0, 0, 0 );  --吹っ飛ばし　奥(ef_004)
setEffMoveKey( spep_3 + 0, tobasu_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 216, tobasu_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tobasu_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 216, tobasu_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tobasu_b, 0 );
setEffRotateKey( spep_3 + 216, tobasu_b, 0 );
setEffAlphaKey( spep_3 + 0, tobasu_b, 255 );
setEffAlphaKey( spep_3 + 215, tobasu_b, 255 );
setEffAlphaKey( spep_3 + 216, tobasu_b, 0 );

tobasu_f = entryEffectLife( spep_3 + 0, SP_05, 216, 0x100, -1, 0, 0, 0 );  --吹っ飛ばし　手前(ef_005)
setEffMoveKey( spep_3 + 0, tobasu_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 216, tobasu_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tobasu_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 216, tobasu_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tobasu_f, 0 );
setEffRotateKey( spep_3 + 216, tobasu_f, 0 );
setEffAlphaKey( spep_3 + 0, tobasu_f, 255 );
setEffAlphaKey( spep_3 + 215, tobasu_f, 255 );
setEffAlphaKey( spep_3 + 216, tobasu_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 12 -a, 1, 1 );
setDisp( spep_3 + 118 -a, 1, 0 );
setDisp( spep_3 + 138 -a, 1, 1 );
setDisp( spep_3 + 216, 1, 0 );
changeAnime( spep_3 + 12 -a, 1, 107 );
changeAnime( spep_3 + 138 -a, 1, 107 );
changeAnime( spep_3 + 144 -a, 1, 106 );
changeAnime( spep_3 + 148 -a, 1, 5 );

setMoveKey( spep_3 + 12 -a, 1, 16.1, -110.2 , 0 );
setMoveKey( spep_3 + 14 -a, 1, 17.2, -109.1 , 0 );
setMoveKey( spep_3 + 16 -a, 1, 23.9, -103.4 , 0 );
setMoveKey( spep_3 + 18 -a, 1, 48.8, -81.9 , 0 );
setMoveKey( spep_3 + 20 -a, 1, 65.4, -67.6 , 0 );
setMoveKey( spep_3 + 22 -a, 1, 74.4, -59.8 , 0 );
setMoveKey( spep_3 + 24 -a, 1, 80.4, -54.6 , 0 );
setMoveKey( spep_3 + 26 -a, 1, 84.5, -51.1 , 0 );
setMoveKey( spep_3 + 28 -a, 1, 87.5, -48.5 , 0 );
setMoveKey( spep_3 + 30 -a, 1, 89.9, -46.4 , 0 );
setMoveKey( spep_3 + 32 -a, 1, 91.8, -44.8 , 0 );
setMoveKey( spep_3 + 34 -a, 1, 93.4, -43.4 , 0 );
setMoveKey( spep_3 + 36 -a, 1, 94.8, -42.2 , 0 );
setMoveKey( spep_3 + 38 -a, 1, 95.9, -41.2 , 0 );
setMoveKey( spep_3 + 40 -a, 1, 97, -40.3 , 0 );
setMoveKey( spep_3 + 42 -a, 1, 97.8, -39.6 , 0 );
setMoveKey( spep_3 + 44 -a, 1, 98.6, -38.9 , 0 );
setMoveKey( spep_3 + 46 -a, 1, 99.3, -38.3 , 0 );
setMoveKey( spep_3 + 48 -a, 1, 100, -37.7 , 0 );
setMoveKey( spep_3 + 50 -a, 1, 100.6, -37.2 , 0 );
setMoveKey( spep_3 + 52 -a, 1, 101.1, -36.7 , 0 );
setMoveKey( spep_3 + 54 -a, 1, 101.6, -36.3 , 0 );
setMoveKey( spep_3 + 56 -a, 1, 102.1, -35.9 , 0 );
setMoveKey( spep_3 + 58 -a, 1, 102.5, -35.5 , 0 );
setMoveKey( spep_3 + 60 -a, 1, 103, -35.1 , 0 );
setMoveKey( spep_3 + 62 -a, 1, 103.4, -34.8 , 0 );
setMoveKey( spep_3 + 64 -a, 1, 103.8, -34.5 , 0 );
setMoveKey( spep_3 + 66 -a, 1, 104.2, -34 , 0 );
setMoveKey( spep_3 + 68 -a, 1, 104.5, -33.8 , 0 );
setMoveKey( spep_3 + 70 -a, 1, 104.8, -33.5 , 0 );
setMoveKey( spep_3 + 72 -a, 1, 105.2, -33.3 , 0 );
setMoveKey( spep_3 + 74 -a, 1, 105.6, -33 , 0 );
setMoveKey( spep_3 + 76 -a, 1, 106.1, -32.7 , 0 );
setMoveKey( spep_3 + 78 -a, 1, 106.7, -32.2 , 0 );
setMoveKey( spep_3 + 80 -a, 1, 107.6, -31.6 , 0 );
setMoveKey( spep_3 + 82 -a, 1, 108.6, -30.8 , 0 );
setMoveKey( spep_3 + 84 -a, 1, 110, -29.9 , 0 );
setMoveKey( spep_3 + 86 -a, 1, 111.7, -28.7 , 0 );
setMoveKey( spep_3 + 88 -a, 1, 113.9, -27.1 , 0 );
setMoveKey( spep_3 + 90 -a, 1, 116.7, -25.1 , 0 );
setMoveKey( spep_3 + 92 -a, 1, 120.4, -22.5 , 0 );
setMoveKey( spep_3 + 94 -a, 1, 125.5, -18.9 , 0 );
setMoveKey( spep_3 + 96 -a, 1, 133.4, -13.3 , 0 );
setMoveKey( spep_3 + 98 -a, 1, 158, 4 , 0 );
setMoveKey( spep_3 + 100 -a, 1, 287.2, -36.7 , 0 );
setMoveKey( spep_3 + 102 -a, 1, 423.3, 38.9 , 0 );
setMoveKey( spep_3 + 104 -a, 1, 522.6, 41.1 , 0 );
setMoveKey( spep_3 + 106 -a, 1, 606.3, -12.9 , 0 );
setMoveKey( spep_3 + 108 -a, 1, 704.2, 17.4 , 0 );
setMoveKey( spep_3 + 110 -a, 1, 748.5, 63.6 , 0 );
setMoveKey( spep_3 + 112 -a, 1, 809.6, -7.2 , 0 );
setMoveKey( spep_3 + 114 -a, 1, 840.4, 68.5 , 0 );
setMoveKey( spep_3 + 116 -a, 1, 866.3, 1.1 , 0 );
setMoveKey( spep_3 + 118 -a, 1, 876.2, 53.3 , 0 );
setMoveKey( spep_3 + 138 -a, 1, -187.9, -653.4 , 0 );
setMoveKey( spep_3 + 140 -a, 1, -146.1, -479 , 0 );
setMoveKey( spep_3 + 142 -a, 1, -104.2, -304.5 , 0 );
setMoveKey( spep_3 + 143 -a, 1, -104.2, -304.5 , 0 );
setMoveKey( spep_3 + 144 -a, 1, -126.9, -13.9 , 0 );
setMoveKey( spep_3 + 146 -a, 1, 35.1, 170.9 , 0 );
setMoveKey( spep_3 + 147 -a, 1, 35.1, 170.9 , 0 );
setMoveKey( spep_3 + 148 -a, 1, 148.6, 188 , 0 );
setMoveKey( spep_3 + 150 -a, 1, 161.2, 166.6 , 0 );
setMoveKey( spep_3 + 152 -a, 1, 171.9, 149.4 , 0 );
setMoveKey( spep_3 + 154 -a, 1, 181.1, 134.9 , 0 );
setMoveKey( spep_3 + 156 -a, 1, 188.6, 121.2 , 0 );
setMoveKey( spep_3 + 158 -a, 1, 195.1, 110.3 , 0 );
setMoveKey( spep_3 + 160 -a, 1, 200.9, 100.7 , 0 );
setMoveKey( spep_3 + 162 -a, 1, 205.9, 92.7 , 0 );
setMoveKey( spep_3 + 164 -a, 1, 210.1, 86.1 , 0 );
setMoveKey( spep_3 + 166 -a, 1, 213.6, 79.8 , 0 );
setMoveKey( spep_3 + 168 -a, 1, 216.7, 74.9 , 0 );
setMoveKey( spep_3 + 170 -a, 1, 219.1, 70.2 , 0 );
setMoveKey( spep_3 + 172 -a, 1, 221.3, 66.8 , 0 );
setMoveKey( spep_3 + 174 -a, 1, 222.8, 63.7 , 0 );
setMoveKey( spep_3 + 176 -a, 1, 224, 60.7 , 0 );
setMoveKey( spep_3 + 178 -a, 1, 225.2, 58.8 , 0 );
setMoveKey( spep_3 + 180 -a, 1, 226.2, 56.9 , 0 );
setMoveKey( spep_3 + 182 -a, 1, 227, 55.1 , 0 );
setMoveKey( spep_3 + 184 -a, 1, 227.7, 53.5 , 0 );
setMoveKey( spep_3 + 186 -a, 1, 228, 51.7 , 0 );
setMoveKey( spep_3 + 188 -a, 1, 228.8, 50.9 , 0 );
setMoveKey( spep_3 + 190 -a, 1, 229, 49.3 , 0 );
setMoveKey( spep_3 + 192 -a, 1, 229.4, 48.5 , 0 );
setMoveKey( spep_3 + 194 -a, 1, 229.6, 47.5 , 0 );
setMoveKey( spep_3 + 196 -a, 1, 229.5, 45.9 , 0 );
setMoveKey( spep_3 + 198 -a, 1, 229.6, 44.9 , 0 );
setMoveKey( spep_3 + 200 -a, 1, 229.6, 43.7 , 0 );
setMoveKey( spep_3 + 202 -a, 1, 229.3, 42.6 , 0 );
setMoveKey( spep_3 + 204 -a, 1, 229.1, 40.9 , 0 );
setMoveKey( spep_3 + 206 -a, 1, 228.6, 39.4 , 0 );
setMoveKey( spep_3 + 208 -a, 1, 228.1, 37.7 , 0 );
setMoveKey( spep_3 + 210 -a, 1, 227.5, 35.8 , 0 );
setMoveKey( spep_3 + 212 -a, 1, 226.7, 33.4 , 0 );
setMoveKey( spep_3 + 214 -a, 1, 225.7, 30.8 , 0 );
setMoveKey( spep_3 + 216 -a, 1, 224.8, 27.9 , 0 );
setMoveKey( spep_3 + 216, 1, 224.8, 27.9 , 0 );

setScaleKey( spep_3 + 12 -a, 1, 0.15, 0.15 );
setScaleKey( spep_3 + 14 -a, 1, 0.15, 0.15 );
setScaleKey( spep_3 + 16 -a, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 18 -a, 1, 0.19, 0.19 );
setScaleKey( spep_3 + 20 -a, 1, 0.21, 0.21 );
setScaleKey( spep_3 + 22 -a, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 24 -a, 1, 0.23, 0.23 );
setScaleKey( spep_3 + 26 -a, 1, 0.23, 0.23 );
setScaleKey( spep_3 + 28 -a, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 38 -a, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 40 -a, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 70 -a, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 72 -a, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 90 -a, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 92 -a, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 94 -a, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 96 -a, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 98 -a, 1, 0.3, 0.3 );
setScaleKey( spep_3 + 100 -a, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 102 -a, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 104 -a, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 106 -a, 1, 1, 1 );
setScaleKey( spep_3 + 108 -a, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 110 -a, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 112 -a, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 114 -a, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 116 -a, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 118 -a, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 138 -a, 1, 4.04, 4.04 );
setScaleKey( spep_3 + 140 -a, 1, 3.64, 3.64 );
setScaleKey( spep_3 + 142 -a, 1, 3.24, 3.24 );
setScaleKey( spep_3 + 143 -a, 1, 3.24, 3.24 );
setScaleKey( spep_3 + 144 -a, 1, 5.62, 5.62 );
setScaleKey( spep_3 + 146 -a, 1, 3.25, 3.25 );
setScaleKey( spep_3 + 147 -a, 1, 3.25, 3.25 );
setScaleKey( spep_3 + 148 -a, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 150 -a, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 152 -a, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 154 -a, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 156 -a, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 158 -a, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 160 -a, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 162 -a, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 164 -a, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 166 -a, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 168 -a, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 170 -a, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 172 -a, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 174 -a, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 176 -a, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 178 -a, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 180 -a, 1, 0.31, 0.31 );
setScaleKey( spep_3 + 182 -a, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 184 -a, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 186 -a, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 188 -a, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 190 -a, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 194 -a, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 196 -a, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 202 -a, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 204 -a, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 216, 1, 0.2, 0.2 );

setRotateKey( spep_3 + 12 -a, 1, -20.9 );
setRotateKey( spep_3 + 14 -a, 1, -21.1 );
setRotateKey( spep_3 + 16 -a, 1, -21.7 );
setRotateKey( spep_3 + 18 -a, 1, -24.1 );
setRotateKey( spep_3 + 20 -a, 1, -25.7 );
setRotateKey( spep_3 + 22 -a, 1, -26.5 );
setRotateKey( spep_3 + 24 -a, 1, -27.1 );
setRotateKey( spep_3 + 26 -a, 1, -27.5 );
setRotateKey( spep_3 + 28 -a, 1, -27.8 );
setRotateKey( spep_3 + 30 -a, 1, -28 );
setRotateKey( spep_3 + 32 -a, 1, -28.2 );
setRotateKey( spep_3 + 34 -a, 1, -28.4 );
setRotateKey( spep_3 + 36 -a, 1, -28.5 );
setRotateKey( spep_3 + 38 -a, 1, -28.6 );
setRotateKey( spep_3 + 40 -a, 1, -28.7 );
setRotateKey( spep_3 + 42 -a, 1, -28.8 );
setRotateKey( spep_3 + 44 -a, 1, -28.9 );
setRotateKey( spep_3 + 46 -a, 1, -28.9 );
setRotateKey( spep_3 + 48 -a, 1, -29 );
setRotateKey( spep_3 + 50 -a, 1, -29.1 );
setRotateKey( spep_3 + 52 -a, 1, -29.1 );
setRotateKey( spep_3 + 54 -a, 1, -29.2 );
setRotateKey( spep_3 + 58 -a, 1, -29.2 );
setRotateKey( spep_3 + 60 -a, 1, -29.3 );
setRotateKey( spep_3 + 62 -a, 1, -29.3 );
setRotateKey( spep_3 + 64 -a, 1, -29.4 );
setRotateKey( spep_3 + 66 -a, 1, -29.4 );
setRotateKey( spep_3 + 68 -a, 1, -29.3 );
setRotateKey( spep_3 + 72 -a, 1, -29.3 );
setRotateKey( spep_3 + 74 -a, 1, -29.2 );
setRotateKey( spep_3 + 76 -a, 1, -29.2 );
setRotateKey( spep_3 + 78 -a, 1, -29.1 );
setRotateKey( spep_3 + 80 -a, 1, -29 );
setRotateKey( spep_3 + 82 -a, 1, -28.8 );
setRotateKey( spep_3 + 84 -a, 1, -28.7 );
setRotateKey( spep_3 + 86 -a, 1, -28.5 );
setRotateKey( spep_3 + 88 -a, 1, -28.2 );
setRotateKey( spep_3 + 90 -a, 1, -27.9 );
setRotateKey( spep_3 + 92 -a, 1, -27.4 );
setRotateKey( spep_3 + 94 -a, 1, -26.8 );
setRotateKey( spep_3 + 96 -a, 1, -25.8 );
setRotateKey( spep_3 + 98 -a, 1, -22.9 );
setRotateKey( spep_3 + 100 -a, 1, -19.9 );
setRotateKey( spep_3 + 102 -a, 1, -17.2 );
setRotateKey( spep_3 + 104 -a, 1, -14.9 );
setRotateKey( spep_3 + 106 -a, 1, -12.9 );
setRotateKey( spep_3 + 108 -a, 1, -11.1 );
setRotateKey( spep_3 + 110 -a, 1, -9.7 );
setRotateKey( spep_3 + 112 -a, 1, -8.6 );
setRotateKey( spep_3 + 114 -a, 1, -7.8 );
setRotateKey( spep_3 + 116 -a, 1, -7.4 );
setRotateKey( spep_3 + 118 -a, 1, -7.2 );
setRotateKey( spep_3 + 138 -a, 1, -121 );
setRotateKey( spep_3 + 140 -a, 1, -114.6 );
setRotateKey( spep_3 + 142 -a, 1, -108.3 );
setRotateKey( spep_3 + 143 -a, 1, -108.3 );
setRotateKey( spep_3 + 144 -a, 1, -41 );
setRotateKey( spep_3 + 146 -a, 1, -27.6 );
setRotateKey( spep_3 + 147 -a, 1, -27.6 );
setRotateKey( spep_3 + 148 -a, 1, 47.9 );
setRotateKey( spep_3 + 150 -a, 1, 48.7 );
setRotateKey( spep_3 + 152 -a, 1, 49.4 );
setRotateKey( spep_3 + 154 -a, 1, 50 );
setRotateKey( spep_3 + 156 -a, 1, 50.5 );
setRotateKey( spep_3 + 158 -a, 1, 51 );
setRotateKey( spep_3 + 160 -a, 1, 51.4 );
setRotateKey( spep_3 + 162 -a, 1, 51.7 );
setRotateKey( spep_3 + 164 -a, 1, 52 );
setRotateKey( spep_3 + 166 -a, 1, 52.2 );
setRotateKey( spep_3 + 168 -a, 1, 52.4 );
setRotateKey( spep_3 + 170 -a, 1, 52.6 );
setRotateKey( spep_3 + 172 -a, 1, 52.7 );
setRotateKey( spep_3 + 174 -a, 1, 52.8 );
setRotateKey( spep_3 + 176 -a, 1, 52.9 );
setRotateKey( spep_3 + 178 -a, 1, 53 );
setRotateKey( spep_3 + 180 -a, 1, 53.1 );
setRotateKey( spep_3 + 182 -a, 1, 53.1 );
setRotateKey( spep_3 + 184 -a, 1, 53.2 );
setRotateKey( spep_3 + 186 -a, 1, 53.2 );
setRotateKey( spep_3 + 188 -a, 1, 53.3 );
setRotateKey( spep_3 + 194 -a, 1, 53.3 );
setRotateKey( spep_3 + 196 -a, 1, 53.4 );
setRotateKey( spep_3 + 216, 1, 53.4 );

-- ** 音 ** --
playSe( spep_3 + 20, 9);  --ピンクのオーラ
playSe( spep_3 + 100,  1054);
setSeVolume(  spep_3 +100,  1054,  120);
playSe( spep_3 + 102,  1024);
playSe( spep_3 + 138,  44);  --飛ぶ
playSe( spep_3 + 210,  43);  --瞬間移動


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 216, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 216;

------------------------------------------------------
-- 殴り(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
naguri = entryEffectLife( spep_4 + 0, SP_06, 106, 0x100, -1, 0, 0, 0 );  --殴り(ef_006)
setEffMoveKey( spep_4 + 0, naguri, 0, 0 , 0 );
setEffMoveKey( spep_4 + 106, naguri, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, naguri, 1.0, 1.0 );
setEffScaleKey( spep_4 + 106, naguri, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, naguri, 0 );
setEffRotateKey( spep_4 + 106, naguri, 0 );
setEffAlphaKey( spep_4 + 0, naguri, 255 );
setEffAlphaKey( spep_4 + 105, naguri, 255 );
setEffAlphaKey( spep_4 + 106, naguri, 0 );

-- ** 音 ** --
playSe( spep_4 , 9);
playSe( spep_4 + 60,  8);  --振りかぶる
playSe( spep_4 + 80,  1013);  --拳を突き出す
setSeVolume( spep_4 + 80,  1005,  150);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 106, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 106;

------------------------------------------------------
-- フィニッシュ(198F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --フィニッシュ　奥(ef_007)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 198, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 198, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 198, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 198, finish_b, 255 );

finish_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --フィニッシュ　手前(ef_008)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 198, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 198, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 198, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 198, finish_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 - 2 + 0, 1, 152.1, -12.4 , 0 );
setMoveKey( spep_5 - 2 + 2, 1, 115, -1.4 , 0 );
setMoveKey( spep_5 - 2 + 4, 1, 203.3, -2.4 , 0 );
setMoveKey( spep_5 - 2 + 6, 1, 142.4, -1.7 , 0 );
setMoveKey( spep_5 - 2 + 8, 1, 206.6, -15 , 0 );
setMoveKey( spep_5 - 2 + 10, 1, 115.4, -10.7 , 0 );
setMoveKey( spep_5 - 2 + 12, 1, 158.1, 12.2 , 0 );
setMoveKey( spep_5 - 2 + 14, 1, 91.5, -9.4 , 0 );
setMoveKey( spep_5 - 2 + 16, 1, 143.9, -17.2 , 0 );
setMoveKey( spep_5 - 2 + 18, 1, 103.2, 2.8 , 0 );
setMoveKey( spep_5 - 2 + 20, 1, 135.8, -21.2 , 0 );
setMoveKey( spep_5 - 2 + 22, 1, 93.7, -14.5 , 0 );
setMoveKey( spep_5 - 2 + 24, 1, 115.7, -1.3 , 0 );
setMoveKey( spep_5 - 2 + 26, 1, 96.2, -17.7 , 0 );
setMoveKey( spep_5 - 2 + 28, 1, 124.5, -0.2 , 0 );
setMoveKey( spep_5 - 2 + 30, 1, 108.7, -21.6 , 0 );
setMoveKey( spep_5 - 2 + 32, 1, 120, -0.9 , 0 );
setMoveKey( spep_5 - 2 + 34, 1, 102.6, -15.7 , 0 );
setMoveKey( spep_5 - 2 + 36, 1, 116.8, -0.8 , 0 );
setMoveKey( spep_5 - 2 + 38, 1, 98.5, -20 , 0 );
setMoveKey( spep_5 - 2 + 40, 1, 116.4, 2.1 , 0 );
setMoveKey( spep_5 - 2 + 42, 1, 105.3, -18.3 , 0 );
setMoveKey( spep_5 - 2 + 44, 1, 111.2, -0.4 , 0 );
setMoveKey( spep_5 - 2 + 46, 1, 116.3, -23.7 , 0 );
setMoveKey( spep_5 - 2 + 48, 1, 113.9, 1.3 , 0 );
setMoveKey( spep_5 - 2 + 50, 1, 104.8, -15.5 , 0 );
setMoveKey( spep_5 - 2 + 52, 1, 123.5, -12.8 , 0 );
setMoveKey( spep_5 - 2 + 54, 1, 106.5, -7.2 , 0 );
setMoveKey( spep_5 - 2 + 56, 1, 118.2, -13 , 0 );
setMoveKey( spep_5 - 2 + 58, 1, 105.2, -13 , 0 );
setMoveKey( spep_5 - 2 + 60, 1, 106.7, -14.3 , 0 );
setMoveKey( spep_5 - 2 + 62, 1, 107.8, -13.4 , 0 );
setMoveKey( spep_5 - 2 + 64, 1, 104.6, -15.6 , 0 );
setMoveKey( spep_5 - 2 + 66, 1, 107.3, -14.3 , 0 );
setMoveKey( spep_5 - 2 + 68, 1, 106.8, -13.7 , 0 );
setMoveKey( spep_5 - 2 + 70, 1, 106.6, -13.9 , 0 );
setMoveKey( spep_5 - 2 + 72, 1, 104.1, -10.3 , 0 );
setMoveKey( spep_5 - 2 + 74, 1, 107.7, -11.9 , 0 );
setMoveKey( spep_5 - 2 + 76, 1, 100.4, -9.1 , 0 );
setMoveKey( spep_5 - 2 + 78, 1, 99, -6.3 , 0 );
setMoveKey( spep_5 - 2 + 80, 1, 94.6, -0.2 , 0 );
setMoveKey( spep_5 - 2 + 82, 1, 84.9, 4 , 0 );
setMoveKey( spep_5 - 2 + 84, 1, 75.1, 16.7 , 0 );
setMoveKey( spep_5 - 2 + 86, 1, 64.3, 24.1 , 0 );
setMoveKey( spep_5 - 2 + 88, 1, 50.6, 32.4 , 0 );
setMoveKey( spep_5 - 2 + 90, 1, 46.6, 39.3 , 0 );
setMoveKey( spep_5 - 2 + 92, 1, 37.5, 45.7 , 0 );
setMoveKey( spep_5 - 2 + 94, 1, 35.2, 54.3 , 0 );
setMoveKey( spep_5 - 2 + 96, 1, 31.8, 52.5 , 0 );
setMoveKey( spep_5 - 2 + 98, 1, 27.7, 58.9 , 0 );
setMoveKey( spep_5 - 2 + 100, 1, 27.8, 56.8 , 0 );
setMoveKey( spep_5 - 2 + 102, 1, 29.5, 62.9 , 0 );
setMoveKey( spep_5 - 2 + 104, 1, 26.1, 57.9 , 0 );
setMoveKey( spep_5 - 2 + 106, 1, 27.9, 66.1 , 0 );
setMoveKey( spep_5 - 2 + 108, 1, 28.2, 58.7 , 0 );
setMoveKey( spep_5 - 2 + 110, 1, 31.6, 66.9 , 0 );
setMoveKey( spep_5 - 2 + 112, 1, 31.9, 61.1 , 0 );
setMoveKey( spep_5 - 2 + 114, 1, 37.9, 66.1 , 0 );
setMoveKey( spep_5 - 2 + 116, 1, 33.8, 62.2 , 0 );
setMoveKey( spep_5 - 2 + 118, 1, 38.8, 69 , 0 );
setMoveKey( spep_5 - 2 + 120, 1, 38.5, 62.3 , 0 );
setMoveKey( spep_5 - 2 + 122, 1, 38.7, 70.4 , 0 );
setMoveKey( spep_5 - 2 + 124, 1, 38.1, 61.8 , 0 );
setMoveKey( spep_5 - 2 + 126, 1, 38.3, 69.7 , 0 );
setMoveKey( spep_5 - 2 + 128, 1, 37, 63.5 , 0 );
setMoveKey( spep_5 - 2 + 130, 1, 39.3, 70.7 , 0 );
setMoveKey( spep_5 - 2 + 132, 1, 39.8, 63.3 , 0 );
setMoveKey( spep_5 - 2 + 134, 1, 38.4, 70.7 , 0 );
setMoveKey( spep_5 - 2 + 136, 1, 39.6, 63.8 , 0 );
setMoveKey( spep_5 - 2 + 138, 1, 34.4, 71.1 , 0 );
setMoveKey( spep_5 - 2 + 140, 1, 40.7, 65.1 , 0 );
setMoveKey( spep_5 - 2 + 142, 1, 32.4, 69.4 , 0 );
setMoveKey( spep_5 - 2 + 144, 1, 41.8, 67.1 , 0 );
setMoveKey( spep_5 - 2 + 146, 1, 33.9, 70.4 , 0 );
setMoveKey( spep_5 - 2 + 148, 1, 42.8, 66.7 , 0 );
setMoveKey( spep_5 - 2 + 150, 1, 35.1, 72.5 , 0 );
setMoveKey( spep_5 - 2 + 152, 1, 39.3, 63.1 , 0 );
setMoveKey( spep_5 - 2 + 154, 1, 34.9, 70.3 , 0 );
setMoveKey( spep_5 - 2 + 156, 1, 42.1, 66.8 , 0 );
setMoveKey( spep_5 - 2 + 158, 1, 34.4, 70.1 , 0 );
setMoveKey( spep_5 - 2 + 160, 1, 40.2, 64.3 , 0 );
setMoveKey( spep_5 - 2 + 162, 1, 33.6, 72.6 , 0 );
setMoveKey( spep_5 - 2 + 164, 1, 39.9, 63.6 , 0 );
setMoveKey( spep_5 - 2 + 166, 1, 34.4, 72.7 , 0 );
setMoveKey( spep_5 - 2 + 168, 1, 37.2, 61.3 , 0 );
setMoveKey( spep_5 - 2 + 170, 1, 33.2, 71.4 , 0 );
setMoveKey( spep_5 - 2 + 172, 1, 40.1, 61.9 , 0 );
setMoveKey( spep_5 - 2 + 174, 1, 34.6, 73.7 , 0 );
setMoveKey( spep_5 - 2 + 176, 1, 37.1, 63.7 , 0 );
setMoveKey( spep_5 - 2 + 178, 1, 34.7, 73.7 , 0 );
setMoveKey( spep_5 - 2 + 180, 1, 35.5, 65.4 , 0 );
setMoveKey( spep_5 - 2 + 182, 1, 40.7, 74.7 , 0 );
setMoveKey( spep_5 - 2 + 184, 1, 36.5, 65.9 , 0 );
setMoveKey( spep_5 - 2 + 186, 1, 41.8, 74 , 0 );
setMoveKey( spep_5 - 2 + 188, 1, 34.1, 64.3 , 0 );
setMoveKey( spep_5 - 2 + 190, 1, 39.1, 72.5 , 0 );
setMoveKey( spep_5 - 2 + 192, 1, 30.3, 67.7 , 0 );
setMoveKey( spep_5 - 2 + 194, 1, 43.9, 65.3 , 0 );
setMoveKey( spep_5 - 2 + 196, 1, 31.1, 66.2 , 0 );
setMoveKey( spep_5 - 2 + 198, 1, 44.3, 73.4 , 0 );
setMoveKey( spep_5 + 198, 1, 44.3, 73.4 , 0 );

setScaleKey( spep_5 - 2 + 0, 1, 4.5, 4.5 );
setScaleKey( spep_5 - 2 + 2, 1, 4.49, 4.49 );
setScaleKey( spep_5 - 2 + 4, 1, 4.42, 4.42 );
setScaleKey( spep_5 - 2 + 6, 1, 4.29, 4.29 );
setScaleKey( spep_5 - 2 + 8, 1, 4.03, 4.03 );
setScaleKey( spep_5 - 2 + 10, 1, 3.42, 3.42 );
setScaleKey( spep_5 - 2 + 12, 1, 2.51, 2.51 );
setScaleKey( spep_5 - 2 + 14, 1, 2.03, 2.03 );
setScaleKey( spep_5 - 2 + 16, 1, 1.74, 1.74 );
setScaleKey( spep_5 - 2 + 18, 1, 1.57, 1.57 );
setScaleKey( spep_5 - 2 + 20, 1, 1.47, 1.47 );
setScaleKey( spep_5 - 2 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_5 - 2 + 24, 1, 1.37, 1.37 );
setScaleKey( spep_5 - 2 + 26, 1, 1.34, 1.34 );
setScaleKey( spep_5 - 2 + 28, 1, 1.33, 1.33 );
setScaleKey( spep_5 - 2 + 30, 1, 1.31, 1.31 );
setScaleKey( spep_5 - 2 + 32, 1, 1.3, 1.3 );
setScaleKey( spep_5 - 2 + 40, 1, 1.3, 1.3 );
setScaleKey( spep_5 - 2 + 42, 1, 1.29, 1.29 );
setScaleKey( spep_5 - 2 + 48, 1, 1.29, 1.29 );
setScaleKey( spep_5 - 2 + 50, 1, 1.28, 1.28 );
setScaleKey( spep_5 - 2 + 56, 1, 1.28, 1.28 );
setScaleKey( spep_5 - 2 + 58, 1, 1.27, 1.27 );
setScaleKey( spep_5 - 2 + 64, 1, 1.27, 1.27 );
setScaleKey( spep_5 - 2 + 66, 1, 1.26, 1.26 );
setScaleKey( spep_5 - 2 + 70, 1, 1.26, 1.26 );
setScaleKey( spep_5 - 2 + 72, 1, 1.25, 1.25 );
setScaleKey( spep_5 - 2 + 74, 1, 1.23, 1.23 );
setScaleKey( spep_5 - 2 + 76, 1, 1.22, 1.22 );
setScaleKey( spep_5 - 2 + 78, 1, 1.18, 1.18 );
setScaleKey( spep_5 - 2 + 80, 1, 1.13, 1.13 );
setScaleKey( spep_5 - 2 + 82, 1, 1.07, 1.07 );
setScaleKey( spep_5 - 2 + 84, 1, 0.98, 0.98 );
setScaleKey( spep_5 - 2 + 86, 1, 0.87, 0.87 );
setScaleKey( spep_5 - 2 + 88, 1, 0.78, 0.78 );
setScaleKey( spep_5 - 2 + 90, 1, 0.7, 0.7 );
setScaleKey( spep_5 - 2 + 92, 1, 0.65, 0.65 );
setScaleKey( spep_5 - 2 + 94, 1, 0.6, 0.6 );
setScaleKey( spep_5 - 2 + 96, 1, 0.57, 0.57 );
setScaleKey( spep_5 - 2 + 98, 1, 0.55, 0.55 );
setScaleKey( spep_5 - 2 + 100, 1, 0.52, 0.52 );
setScaleKey( spep_5 - 2 + 102, 1, 0.51, 0.51 );
setScaleKey( spep_5 - 2 + 104, 1, 0.49, 0.49 );
setScaleKey( spep_5 - 2 + 106, 1, 0.48, 0.48 );
setScaleKey( spep_5 - 2 + 108, 1, 0.48, 0.48 );
setScaleKey( spep_5 - 2 + 110, 1, 0.47, 0.47 );
setScaleKey( spep_5 - 2 + 112, 1, 0.47, 0.47 );
setScaleKey( spep_5 - 2 + 114, 1, 0.45, 0.45 );
setScaleKey( spep_5 - 2 + 120, 1, 0.45, 0.45 );
setScaleKey( spep_5 - 2 + 122, 1, 0.44, 0.44 );
setScaleKey( spep_5 - 2 + 130, 1, 0.44, 0.44 );
setScaleKey( spep_5 - 2 + 132, 1, 0.43, 0.43 );
setScaleKey( spep_5 - 2 + 152, 1, 0.43, 0.43 );
setScaleKey( spep_5 - 2 + 154, 1, 0.42, 0.42 );
setScaleKey( spep_5 - 2 + 198, 1, 0.42, 0.42 );
setScaleKey( spep_5 + 198, 1, 0.42, 0.42 );

setRotateKey( spep_5 - 2 + 0, 1, 0 );
setRotateKey( spep_5 - 2 + 2, 1, -0.6 );
setRotateKey( spep_5 - 2 + 4, 1, 0.7 );
setRotateKey( spep_5 - 2 + 6, 1, -1.5 );
setRotateKey( spep_5 - 2 + 8, 1, -0.5 );
setRotateKey( spep_5 - 2 + 10, 1, 1.2 );
setRotateKey( spep_5 - 2 + 12, 1, -1.2 );
setRotateKey( spep_5 - 2 + 14, 1, -0.4 );
setRotateKey( spep_5 - 2 + 16, 1, 1.3 );
setRotateKey( spep_5 - 2 + 18, 1, -0.8 );
setRotateKey( spep_5 - 2 + 20, 1, -1 );
setRotateKey( spep_5 - 2 + 22, 1, -0.3 );
setRotateKey( spep_5 - 2 + 24, 1, 0.8 );
setRotateKey( spep_5 - 2 + 26, 1, 1.4 );
setRotateKey( spep_5 - 2 + 28, 1, -0.4 );
setRotateKey( spep_5 - 2 + 30, 1, 2.1 );
setRotateKey( spep_5 - 2 + 32, 1, -0.2 );
setRotateKey( spep_5 - 2 + 34, 1, -0.2 );
setRotateKey( spep_5 - 2 + 36, 1, 0.4 );
setRotateKey( spep_5 - 2 + 38, 1, 1.4 );
setRotateKey( spep_5 - 2 + 40, 1, 1.6 );
setRotateKey( spep_5 - 2 + 42, 1, 0.6 );
setRotateKey( spep_5 - 2 + 44, 1, 0.6 );
setRotateKey( spep_5 - 2 + 46, 1, -0.2 );
setRotateKey( spep_5 - 2 + 48, 1, 1.1 );
setRotateKey( spep_5 - 2 + 50, 1, -1.2 );
setRotateKey( spep_5 - 2 + 52, 1, -0.2 );
setRotateKey( spep_5 - 2 + 54, 1, 1.4 );
setRotateKey( spep_5 - 2 + 56, 1, -1 );
setRotateKey( spep_5 - 2 + 58, 1, -0.2 );
setRotateKey( spep_5 - 2 + 60, 1, 1.4 );
setRotateKey( spep_5 - 2 + 62, 1, -0.7 );
setRotateKey( spep_5 - 2 + 64, 1, -0.9 );
setRotateKey( spep_5 - 2 + 66, 1, -0.2 );
setRotateKey( spep_5 - 2 + 68, 1, 0.9 );
setRotateKey( spep_5 - 2 + 70, 1, 1.4 );
setRotateKey( spep_5 - 2 + 72, 1, -0.4 );
setRotateKey( spep_5 - 2 + 74, 1, 2.1 );
setRotateKey( spep_5 - 2 + 76, 1, -0.2 );
setRotateKey( spep_5 - 2 + 78, 1, -0.2 );
setRotateKey( spep_5 - 2 + 80, 1, 0.4 );
setRotateKey( spep_5 - 2 + 82, 1, 1.4 );
setRotateKey( spep_5 - 2 + 84, 1, 1.6 );
setRotateKey( spep_5 - 2 + 86, 1, 0.7 );
setRotateKey( spep_5 - 2 + 88, 1, 0.7 );
setRotateKey( spep_5 - 2 + 90, 1, -0.1 );
setRotateKey( spep_5 - 2 + 92, 1, 1.3 );
setRotateKey( spep_5 - 2 + 94, 1, -1 );
setRotateKey( spep_5 - 2 + 96, 1, 0.1 );
setRotateKey( spep_5 - 2 + 98, 1, 1.8 );
setRotateKey( spep_5 - 2 + 100, 1, -0.5 );
setRotateKey( spep_5 - 2 + 102, 1, 0.4 );
setRotateKey( spep_5 - 2 + 104, 1, 2.2 );
setRotateKey( spep_5 - 2 + 106, 1, 0.4 );
setRotateKey( spep_5 - 2 + 108, 1, 0.5 );
setRotateKey( spep_5 - 2 + 110, 1, 1.5 );
setRotateKey( spep_5 - 2 + 112, 1, 2.9 );
setRotateKey( spep_5 - 2 + 114, 1, 3.6 );
setRotateKey( spep_5 - 2 + 116, 1, 2 );
setRotateKey( spep_5 - 2 + 118, 1, 4.7 );
setRotateKey( spep_5 - 2 + 120, 1, 2.5 );
setRotateKey( spep_5 - 2 + 122, 1, 2.6 );
setRotateKey( spep_5 - 2 + 124, 1, 3.3 );
setRotateKey( spep_5 - 2 + 126, 1, 4.4 );
setRotateKey( spep_5 - 2 + 128, 1, 4.6 );
setRotateKey( spep_5 - 2 + 130, 1, 3.7 );
setRotateKey( spep_5 - 2 + 132, 1, 3.7 );
setRotateKey( spep_5 - 2 + 134, 1, 2.9 );
setRotateKey( spep_5 - 2 + 136, 1, 4.3 );
setRotateKey( spep_5 - 2 + 138, 1, 2 );
setRotateKey( spep_5 - 2 + 140, 1, 3 );
setRotateKey( spep_5 - 2 + 142, 1, 4.6 );
setRotateKey( spep_5 - 2 + 144, 1, 2.3 );
setRotateKey( spep_5 - 2 + 146, 1, 3.1 );
setRotateKey( spep_5 - 2 + 148, 1, 4.7 );
setRotateKey( spep_5 - 2 + 150, 1, 2.6 );
setRotateKey( spep_5 - 2 + 152, 1, 2.4 );
setRotateKey( spep_5 - 2 + 154, 1, 3.1 );
setRotateKey( spep_5 - 2 + 156, 1, 4.2 );
setRotateKey( spep_5 - 2 + 158, 1, 4.7 );
setRotateKey( spep_5 - 2 + 160, 1, 3 );
setRotateKey( spep_5 - 2 + 162, 1, 5.5 );
setRotateKey( spep_5 - 2 + 164, 1, 3.2 );
setRotateKey( spep_5 - 2 + 166, 1, 3.2 );
setRotateKey( spep_5 - 2 + 168, 1, 3.8 );
setRotateKey( spep_5 - 2 + 170, 1, 4.8 );
setRotateKey( spep_5 - 2 + 172, 1, 5 );
setRotateKey( spep_5 - 2 + 174, 1, 4 );
setRotateKey( spep_5 - 2 + 176, 1, 4 );
setRotateKey( spep_5 - 2 + 178, 1, 3.2 );
setRotateKey( spep_5 - 2 + 180, 1, 4.5 );
setRotateKey( spep_5 - 2 + 182, 1, 2.2 );
setRotateKey( spep_5 - 2 + 184, 1, 3.2 );
setRotateKey( spep_5 - 2 + 186, 1, 4.8 );
setRotateKey( spep_5 - 2 + 188, 1, 2.4 );
setRotateKey( spep_5 - 2 + 190, 1, 3.2 );
setRotateKey( spep_5 - 2 + 192, 1, 4.8 );
setRotateKey( spep_5 - 2 + 194, 1, 2.7 );
setRotateKey( spep_5 - 2 + 196, 1, 2.5 );
setRotateKey( spep_5 - 2 + 198, 1, 3.2 );
setRotateKey( spep_5 + 198, 1, 3.2 );

-- ** 音 ** --
playSe( spep_5 , 1026);
setSeVolume( spep_5,  1026,  150);
playSe( spep_5+2,  1010);
playSe( spep_5+4,  1067);
setSeVolume( spep_5,  1067,  150);
SE3 = playSe( spep_5 +100,  1044);
stopSe(  spep_5+196,  SE3,  0);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 198, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 78 );
entryFade( spep_5 + 188, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 198 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 激突(320F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
gekitotsu_f = entryEffectLife( spep_0 + 0, SP_01r, 320, 0x100, -1, 0, 0, 0 );  --激突　手前(ef_001)
setEffMoveKey( spep_0 + 0, gekitotsu_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 320, gekitotsu_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, gekitotsu_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 320, gekitotsu_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, gekitotsu_f, 0 );
setEffRotateKey( spep_0 + 320, gekitotsu_f, 0 );
setEffAlphaKey( spep_0 + 0, gekitotsu_f, 255 );
setEffAlphaKey( spep_0 + 319, gekitotsu_f, 255 );
setEffAlphaKey( spep_0 + 320, gekitotsu_f, 0 );

gekitotsu_b = entryEffectLife( spep_0 + 0, SP_02r, 320, 0x80, -1, 0, 0, 0 );  --激突　奥(ef_002)
setEffMoveKey( spep_0 + 0, gekitotsu_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 320, gekitotsu_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, gekitotsu_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 320, gekitotsu_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, gekitotsu_b, 0 );
setEffRotateKey( spep_0 + 320, gekitotsu_b, 0 );
setEffAlphaKey( spep_0 + 0, gekitotsu_b, 255 );
setEffAlphaKey( spep_0 + 319, gekitotsu_b, 255 );
setEffAlphaKey( spep_0 + 320, gekitotsu_b, 0 );

-- ** 敵キャラクター ** --
changeAnime( 0, 1, 118);
setDisp( 0, 1, 1);
setMoveKey( spep_0 + 0, 1, 142.3, -19.5 , 0 );
setMoveKey( spep_0 + 30, 1, 142.3, -19.5 , 0 );

setScaleKey( spep_0 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 30, 1, 2.5, 2.5 );

setRotateKey( spep_0 + 0, 1, -0.2 );
setRotateKey( spep_0 + 30, 1, -0.2 );

-- ** 音 ** --
SE1 = playSe( spep_0 , 1016 );  --最初ダッシュ
--stopSe(spep_0+10,  17,  5);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 320, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 24; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 118 );

setMoveKey( SP_dodge + 0, 1, 142.3, -19.5 , 0 );
setMoveKey( SP_dodge + 10, 1, 142.3, -19.5 , 0 );

setScaleKey( SP_dodge + 0, 1, 2.5, 2.5 );
setScaleKey( SP_dodge + 10, 1, 2.5, 2.5 );

setRotateKey( SP_dodge + 0, 1, -0.2 );
setRotateKey( SP_dodge + 10, 1, -0.2 );

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

a = 3;
-- ** 敵キャラクター ** --
setDisp( spep_0 + 75 -2, 1, 0 );
setDisp( spep_0 + 196 -2, 1, 1 );
setDisp( spep_0 + 226 -2, 1, 0 );
changeAnime( spep_0 + 40 -2, 1, 107 );
changeAnime( spep_0 + 196 -2, 1, 107 );
changeAnime( spep_0 + 200 -2, 1, 106 );
changeAnime( spep_0 + 210 -2, 1, 5 );

setMoveKey( spep_0 + 36 -2, 1, 142.3, -19.5 , 0 );
setMoveKey( spep_0 + 39 -2, 1, 178.2, -70 , 0 );
setMoveKey( spep_0 + 40 -2, 1, 198.9, -357.9 , 0 );
setMoveKey( spep_0 + 42 -2, 1, 222.4, -445 , 0 );
setMoveKey( spep_0 + 44 -2, 1, 237.2, -440 , 0 );
setMoveKey( spep_0 + 46 -2, 1, 226.9, -489.7 , 0 );
setMoveKey( spep_0 + 48 -2, 1, 249.4, -466 , 0 );
setMoveKey( spep_0 + 50 -2, 1, 247.4, -513.4 , 0 );
setMoveKey( spep_0 + 52 -2, 1, 255, -492.8 , 0 );
setMoveKey( spep_0 + 54 -2, 1, 227.2, -511.7 , 0 );
setMoveKey( spep_0 + 56 -2, 1, 260.8, -503.1 , 0 );
setMoveKey( spep_0 + 58 -2, 1, 233.1, -524.7 , 0 );
setMoveKey( spep_0 + 60 -2, 1, 384.3, -886.4 , 0 );
setMoveKey( spep_0 + 62 -2, 1, 508.1, -1260.9 , 0 );
setMoveKey( spep_0 + 64 -2, 1, 612.4, -1520.3 , 0 );
setMoveKey( spep_0 + 66 -2, 1, 675.3, -1790.3 , 0 );
setMoveKey( spep_0 + 68 -2, 1, 751.5, -1934.6 , 0 );
setMoveKey( spep_0 + 70 -2, 1, 787.3, -2104.9 , 0 );
setMoveKey( spep_0 + 72 -2, 1, 820.2, -2146.5 , 0 );
setMoveKey( spep_0 + 75 -2, 1, 827.5, -2202.7 , 0 );
setMoveKey( spep_0 + 196 -2, 1, -419.7, 55.9 , 0 );
setMoveKey( spep_0 + 198 -2, 1, -215.3, 182.1 , 0 );
setMoveKey( spep_0 + 199 -2, 1, -215.3, 182.1 , 0 );
setMoveKey( spep_0 + 200 -2, 1, -148.2, 210.9 , 0 );
setMoveKey( spep_0 + 202 -2, 1, -66.7, 152.5 , 0 );
setMoveKey( spep_0 + 204 -2, 1, -29.9, 87.4 , 0 );
setMoveKey( spep_0 + 206 -2, 1, -18.9, 52.9 , 0 );
setMoveKey( spep_0 + 208 -2, 1, -12.1, 24.9 , 0 );
setMoveKey( spep_0 + 209 -2, 1, -12.1, 24.9 , 0 );
setMoveKey( spep_0 + 210 -2, 1, -13.9, 7.3 , 0 );
setMoveKey( spep_0 + 212 -2, 1, -4.1, -12.6 , 0 );
setMoveKey( spep_0 + 214 -2, 1, -6.7, -28.4 , 0 );
setMoveKey( spep_0 + 216 -2, 1, -4.9, -41.7 , 0 );
setMoveKey( spep_0 + 218 -2, 1, -1.4, -54.5 , 0 );
setMoveKey( spep_0 + 220 -2, 1, 2, -68.2 , 0 );
setMoveKey( spep_0 + 222 -2, 1, 3.4, -84.6 , 0 );
setMoveKey( spep_0 + 224 -2, 1, 2.9, -92.6 , 0 );
setMoveKey( spep_0 + 226 -2, 1, 3.4, -97.8 , 0 );

setScaleKey( spep_0 + 36 -2, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 39 -2, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 40 -2, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 42 -2, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 44 -2, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 46 -2, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 48 -2, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 50 -2, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 52 -2, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 54 -2, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 56 -2, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 58 -2, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 60 -2, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 62 -2, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 64 -2, 1, 5.37, 5.37 );
setScaleKey( spep_0 + 66 -2, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 68 -2, 1, 6.65, 6.65 );
setScaleKey( spep_0 + 70 -2, 1, 7.05, 7.05 );
setScaleKey( spep_0 + 72 -2, 1, 7.29, 7.29 );
setScaleKey( spep_0 + 75 -2, 1, 7.37, 7.37 );
setScaleKey( spep_0 + 196 -2, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 198 -2, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 199 -2, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 200 -2, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 202 -2, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 204 -2, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 206 -2, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 208 -2, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 209 -2, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 210 -2, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 212 -2, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 214 -2, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 216 -2, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 218 -2, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 220 -2, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 222 -2, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 224 -2, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 226 -2, 1, 0.1, 0.1 );

setRotateKey( spep_0 + 36 -2, 1, -0.2 );
setRotateKey( spep_0 + 39 -2, 1, 8.2 );
setRotateKey( spep_0 + 40 -2, 1, -89 );
setRotateKey( spep_0 + 42 -2, 1, -86 );
setRotateKey( spep_0 + 44 -2, 1, -84.7 );
setRotateKey( spep_0 + 46 -2, 1, -83.9 );
setRotateKey( spep_0 + 48 -2, 1, -83.2 );
setRotateKey( spep_0 + 50 -2, 1, -82.8 );
setRotateKey( spep_0 + 52 -2, 1, -82.4 );
setRotateKey( spep_0 + 54 -2, 1, -82.2 );
setRotateKey( spep_0 + 56 -2, 1, -82.1 );
setRotateKey( spep_0 + 58 -2, 1, -82 );
setRotateKey( spep_0 + 60 -2, 1, -78 );
setRotateKey( spep_0 + 62 -2, 1, -74.5 );
setRotateKey( spep_0 + 64 -2, 1, -71.6 );
setRotateKey( spep_0 + 66 -2, 1, -69.2 );
setRotateKey( spep_0 + 68 -2, 1, -67.3 );
setRotateKey( spep_0 + 70 -2, 1, -66 );
setRotateKey( spep_0 + 72 -2, 1, -65.2 );
setRotateKey( spep_0 + 75 -2, 1, -64.9 );
setRotateKey( spep_0 + 196 -2, 1, -80 );
setRotateKey( spep_0 + 198 -2, 1, -74 );
setRotateKey( spep_0 + 199 -2, 1, -74 );
setRotateKey( spep_0 + 200 -2, 1, -32.7 );
setRotateKey( spep_0 + 202 -2, 1, -31.9 );
setRotateKey( spep_0 + 204 -2, 1, -27.1 );
setRotateKey( spep_0 + 206 -2, 1, -21.8 );
setRotateKey( spep_0 + 208 -2, 1, -16 );
setRotateKey( spep_0 + 209 -2, 1, -16 );
setRotateKey( spep_0 + 210 -2, 1, 39 );
setRotateKey( spep_0 + 226 -2, 1, 39 );

-- ** 音 ** --
playSe( spep_0 + 38, 1010);  --殴る
playSe( spep_0 + 40, 1026);  --殴る 高い音
setSeVolume( spep_0 + 38,  1010,  60);
SE2 = playSe( spep_0 + 80, 1044);  --地割れ
playSe(  spep_0 +82,  1043);  --高い音
stopSe(  spep_0 +200,  SE2,  0);
playSe(  spep_0 +200,  8);
playSe(  spep_0 +230,  1023);  --地面に殴りつけ
playSe(  spep_0 +270,  1024);  --爆発
setSeVolume( spep_0 + 82,  1043,  60);

-- ** 次の準備 ** --
spep_1 = spep_0 + 320;

------------------------------------------------------
-- 顔アップ(220F)
------------------------------------------------------

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_1 + 0, SP_03, 180, 0x100, -1, 0, 0, 0 );  --顔アップ(ef_003)
setEffMoveKey( spep_1 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_1 + 180, faceup, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, faceup, -1.0, 1.0 );
setEffScaleKey( spep_1 + 180, faceup, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, faceup, 0 );
setEffRotateKey( spep_1 + 180, faceup, 0 );
setEffAlphaKey( spep_1 + 0, faceup, 255 );
setEffAlphaKey( spep_1 + 179, faceup, 255 );
setEffAlphaKey( spep_1 + 180, faceup, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 56,  906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 56, shuchusen1, 84, 25 );

setEffMoveKey( spep_1 + 56, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 140, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 56, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_1 + 140, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_1 + 56, shuchusen1, 0 );
setEffRotateKey( spep_1 + 140, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 56, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 71, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 72, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 140, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 + 56, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 + 56, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 + 72,  190006, 68, 0x100, -1, 0, -9.9, 521.8 ); --ゴゴゴ
setEffShake( spep_1 + 72, ctgogo, 68, 10 );

setEffMoveKey( spep_1 + 72, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_1 + 140, ctgogo, -9.9, 521.8 , 0 );

setEffScaleKey( spep_1 + 72, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 132, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 134, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_1 + 136, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_1 + 138, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_1 + 140, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_1 + 72, ctgogo, 0 );
setEffRotateKey( spep_1 + 140, ctgogo, 0 );

setEffAlphaKey( spep_1 + 72, ctgogo, 255 );
setEffAlphaKey( spep_1 + 140, ctgogo, 255 );

-- ** 音 ** --
--playSe( spep_1 + 72, SE_04 );  --ゴゴゴ
SE_megahikaru = playSe( spep_1 + 90,  3);  --目が光る
--stopSe(  spep_1 +130,  SE_megahikaru,  10);

SE_megurun1 = playSe( spep_1 + 140,  8);  --目グルン
--SE_megurun2 = playSe( spep_1 + 142,  3);  --目グルン

-- ** 次の準備 ** --
spep_2 = spep_1 + 180;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 吹っ飛ばし(216F)
------------------------------------------------------

-- ** エフェクト等 ** --
tobasu_b = entryEffectLife( spep_3 + 0, SP_04r, 216, 0x80, -1, 0, 0, 0 );  --吹っ飛ばし　奥(ef_004)
setEffMoveKey( spep_3 + 0, tobasu_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 216, tobasu_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tobasu_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 216, tobasu_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tobasu_b, 0 );
setEffRotateKey( spep_3 + 216, tobasu_b, 0 );
setEffAlphaKey( spep_3 + 0, tobasu_b, 255 );
setEffAlphaKey( spep_3 + 215, tobasu_b, 255 );
setEffAlphaKey( spep_3 + 216, tobasu_b, 0 );

tobasu_f = entryEffectLife( spep_3 + 0, SP_05r, 216, 0x100, -1, 0, 0, 0 );  --吹っ飛ばし　手前(ef_005)
setEffMoveKey( spep_3 + 0, tobasu_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 216, tobasu_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tobasu_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 216, tobasu_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tobasu_f, 0 );
setEffRotateKey( spep_3 + 216, tobasu_f, 0 );
setEffAlphaKey( spep_3 + 0, tobasu_f, 255 );
setEffAlphaKey( spep_3 + 215, tobasu_f, 255 );
setEffAlphaKey( spep_3 + 216, tobasu_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 12 -a, 1, 1 );
setDisp( spep_3 + 118 -a, 1, 0 );
setDisp( spep_3 + 138 -a, 1, 1 );
setDisp( spep_3 + 216, 1, 0 );
changeAnime( spep_3 + 12 -a, 1, 107 );
changeAnime( spep_3 + 138 -a, 1, 107 );
changeAnime( spep_3 + 144 -a, 1, 106 );
changeAnime( spep_3 + 148 -a, 1, 5 );

setMoveKey( spep_3 + 12 -a, 1, 16.1, -110.2 , 0 );
setMoveKey( spep_3 + 14 -a, 1, 17.2, -109.1 , 0 );
setMoveKey( spep_3 + 16 -a, 1, 23.9, -103.4 , 0 );
setMoveKey( spep_3 + 18 -a, 1, 48.8, -81.9 , 0 );
setMoveKey( spep_3 + 20 -a, 1, 65.4, -67.6 , 0 );
setMoveKey( spep_3 + 22 -a, 1, 74.4, -59.8 , 0 );
setMoveKey( spep_3 + 24 -a, 1, 80.4, -54.6 , 0 );
setMoveKey( spep_3 + 26 -a, 1, 84.5, -51.1 , 0 );
setMoveKey( spep_3 + 28 -a, 1, 87.5, -48.5 , 0 );
setMoveKey( spep_3 + 30 -a, 1, 89.9, -46.4 , 0 );
setMoveKey( spep_3 + 32 -a, 1, 91.8, -44.8 , 0 );
setMoveKey( spep_3 + 34 -a, 1, 93.4, -43.4 , 0 );
setMoveKey( spep_3 + 36 -a, 1, 94.8, -42.2 , 0 );
setMoveKey( spep_3 + 38 -a, 1, 95.9, -41.2 , 0 );
setMoveKey( spep_3 + 40 -a, 1, 97, -40.3 , 0 );
setMoveKey( spep_3 + 42 -a, 1, 97.8, -39.6 , 0 );
setMoveKey( spep_3 + 44 -a, 1, 98.6, -38.9 , 0 );
setMoveKey( spep_3 + 46 -a, 1, 99.3, -38.3 , 0 );
setMoveKey( spep_3 + 48 -a, 1, 100, -37.7 , 0 );
setMoveKey( spep_3 + 50 -a, 1, 100.6, -37.2 , 0 );
setMoveKey( spep_3 + 52 -a, 1, 101.1, -36.7 , 0 );
setMoveKey( spep_3 + 54 -a, 1, 101.6, -36.3 , 0 );
setMoveKey( spep_3 + 56 -a, 1, 102.1, -35.9 , 0 );
setMoveKey( spep_3 + 58 -a, 1, 102.5, -35.5 , 0 );
setMoveKey( spep_3 + 60 -a, 1, 103, -35.1 , 0 );
setMoveKey( spep_3 + 62 -a, 1, 103.4, -34.8 , 0 );
setMoveKey( spep_3 + 64 -a, 1, 103.8, -34.5 , 0 );
setMoveKey( spep_3 + 66 -a, 1, 104.2, -34 , 0 );
setMoveKey( spep_3 + 68 -a, 1, 104.5, -33.8 , 0 );
setMoveKey( spep_3 + 70 -a, 1, 104.8, -33.5 , 0 );
setMoveKey( spep_3 + 72 -a, 1, 105.2, -33.3 , 0 );
setMoveKey( spep_3 + 74 -a, 1, 105.6, -33 , 0 );
setMoveKey( spep_3 + 76 -a, 1, 106.1, -32.7 , 0 );
setMoveKey( spep_3 + 78 -a, 1, 106.7, -32.2 , 0 );
setMoveKey( spep_3 + 80 -a, 1, 107.6, -31.6 , 0 );
setMoveKey( spep_3 + 82 -a, 1, 108.6, -30.8 , 0 );
setMoveKey( spep_3 + 84 -a, 1, 110, -29.9 , 0 );
setMoveKey( spep_3 + 86 -a, 1, 111.7, -28.7 , 0 );
setMoveKey( spep_3 + 88 -a, 1, 113.9, -27.1 , 0 );
setMoveKey( spep_3 + 90 -a, 1, 116.7, -25.1 , 0 );
setMoveKey( spep_3 + 92 -a, 1, 120.4, -22.5 , 0 );
setMoveKey( spep_3 + 94 -a, 1, 125.5, -18.9 , 0 );
setMoveKey( spep_3 + 96 -a, 1, 133.4, -13.3 , 0 );
setMoveKey( spep_3 + 98 -a, 1, 158, 4 , 0 );
setMoveKey( spep_3 + 100 -a, 1, 287.2, -36.7 , 0 );
setMoveKey( spep_3 + 102 -a, 1, 423.3, 38.9 , 0 );
setMoveKey( spep_3 + 104 -a, 1, 522.6, 41.1 , 0 );
setMoveKey( spep_3 + 106 -a, 1, 606.3, -12.9 , 0 );
setMoveKey( spep_3 + 108 -a, 1, 704.2, 17.4 , 0 );
setMoveKey( spep_3 + 110 -a, 1, 748.5, 63.6 , 0 );
setMoveKey( spep_3 + 112 -a, 1, 809.6, -7.2 , 0 );
setMoveKey( spep_3 + 114 -a, 1, 840.4, 68.5 , 0 );
setMoveKey( spep_3 + 116 -a, 1, 866.3, 1.1 , 0 );
setMoveKey( spep_3 + 118 -a, 1, 876.2, 53.3 , 0 );
setMoveKey( spep_3 + 138 -a, 1, -187.9, -653.4 , 0 );
setMoveKey( spep_3 + 140 -a, 1, -146.1, -479 , 0 );
setMoveKey( spep_3 + 142 -a, 1, -104.2, -304.5 , 0 );
setMoveKey( spep_3 + 143 -a, 1, -104.2, -304.5 , 0 );
setMoveKey( spep_3 + 144 -a, 1, -126.9, -13.9 , 0 );
setMoveKey( spep_3 + 146 -a, 1, 35.1, 170.9 , 0 );
setMoveKey( spep_3 + 147 -a, 1, 35.1, 170.9 , 0 );
setMoveKey( spep_3 + 148 -a, 1, 148.6, 188 , 0 );
setMoveKey( spep_3 + 150 -a, 1, 161.2, 166.6 , 0 );
setMoveKey( spep_3 + 152 -a, 1, 171.9, 149.4 , 0 );
setMoveKey( spep_3 + 154 -a, 1, 181.1, 134.9 , 0 );
setMoveKey( spep_3 + 156 -a, 1, 188.6, 121.2 , 0 );
setMoveKey( spep_3 + 158 -a, 1, 195.1, 110.3 , 0 );
setMoveKey( spep_3 + 160 -a, 1, 200.9, 100.7 , 0 );
setMoveKey( spep_3 + 162 -a, 1, 205.9, 92.7 , 0 );
setMoveKey( spep_3 + 164 -a, 1, 210.1, 86.1 , 0 );
setMoveKey( spep_3 + 166 -a, 1, 213.6, 79.8 , 0 );
setMoveKey( spep_3 + 168 -a, 1, 216.7, 74.9 , 0 );
setMoveKey( spep_3 + 170 -a, 1, 219.1, 70.2 , 0 );
setMoveKey( spep_3 + 172 -a, 1, 221.3, 66.8 , 0 );
setMoveKey( spep_3 + 174 -a, 1, 222.8, 63.7 , 0 );
setMoveKey( spep_3 + 176 -a, 1, 224, 60.7 , 0 );
setMoveKey( spep_3 + 178 -a, 1, 225.2, 58.8 , 0 );
setMoveKey( spep_3 + 180 -a, 1, 226.2, 56.9 , 0 );
setMoveKey( spep_3 + 182 -a, 1, 227, 55.1 , 0 );
setMoveKey( spep_3 + 184 -a, 1, 227.7, 53.5 , 0 );
setMoveKey( spep_3 + 186 -a, 1, 228, 51.7 , 0 );
setMoveKey( spep_3 + 188 -a, 1, 228.8, 50.9 , 0 );
setMoveKey( spep_3 + 190 -a, 1, 229, 49.3 , 0 );
setMoveKey( spep_3 + 192 -a, 1, 229.4, 48.5 , 0 );
setMoveKey( spep_3 + 194 -a, 1, 229.6, 47.5 , 0 );
setMoveKey( spep_3 + 196 -a, 1, 229.5, 45.9 , 0 );
setMoveKey( spep_3 + 198 -a, 1, 229.6, 44.9 , 0 );
setMoveKey( spep_3 + 200 -a, 1, 229.6, 43.7 , 0 );
setMoveKey( spep_3 + 202 -a, 1, 229.3, 42.6 , 0 );
setMoveKey( spep_3 + 204 -a, 1, 229.1, 40.9 , 0 );
setMoveKey( spep_3 + 206 -a, 1, 228.6, 39.4 , 0 );
setMoveKey( spep_3 + 208 -a, 1, 228.1, 37.7 , 0 );
setMoveKey( spep_3 + 210 -a, 1, 227.5, 35.8 , 0 );
setMoveKey( spep_3 + 212 -a, 1, 226.7, 33.4 , 0 );
setMoveKey( spep_3 + 214 -a, 1, 225.7, 30.8 , 0 );
setMoveKey( spep_3 + 216 -a, 1, 224.8, 27.9 , 0 );
setMoveKey( spep_3 + 216, 1, 224.8, 27.9 , 0 );

setScaleKey( spep_3 + 12 -a, 1, 0.15, 0.15 );
setScaleKey( spep_3 + 14 -a, 1, 0.15, 0.15 );
setScaleKey( spep_3 + 16 -a, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 18 -a, 1, 0.19, 0.19 );
setScaleKey( spep_3 + 20 -a, 1, 0.21, 0.21 );
setScaleKey( spep_3 + 22 -a, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 24 -a, 1, 0.23, 0.23 );
setScaleKey( spep_3 + 26 -a, 1, 0.23, 0.23 );
setScaleKey( spep_3 + 28 -a, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 38 -a, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 40 -a, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 70 -a, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 72 -a, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 90 -a, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 92 -a, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 94 -a, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 96 -a, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 98 -a, 1, 0.3, 0.3 );
setScaleKey( spep_3 + 100 -a, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 102 -a, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 104 -a, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 106 -a, 1, 1, 1 );
setScaleKey( spep_3 + 108 -a, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 110 -a, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 112 -a, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 114 -a, 1, 1.36, 1.36 );
setScaleKey( spep_3 + 116 -a, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 118 -a, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 138 -a, 1, 4.04, 4.04 );
setScaleKey( spep_3 + 140 -a, 1, 3.64, 3.64 );
setScaleKey( spep_3 + 142 -a, 1, 3.24, 3.24 );
setScaleKey( spep_3 + 143 -a, 1, 3.24, 3.24 );
setScaleKey( spep_3 + 144 -a, 1, 5.62, 5.62 );
setScaleKey( spep_3 + 146 -a, 1, 3.25, 3.25 );
setScaleKey( spep_3 + 147 -a, 1, 3.25, 3.25 );
setScaleKey( spep_3 + 148 -a, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 150 -a, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 152 -a, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 154 -a, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 156 -a, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 158 -a, 1, 0.92, 0.92 );
setScaleKey( spep_3 + 160 -a, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 162 -a, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 164 -a, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 166 -a, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 168 -a, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 170 -a, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 172 -a, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 174 -a, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 176 -a, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 178 -a, 1, 0.33, 0.33 );
setScaleKey( spep_3 + 180 -a, 1, 0.31, 0.31 );
setScaleKey( spep_3 + 182 -a, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 184 -a, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 186 -a, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 188 -a, 1, 0.26, 0.26 );
setScaleKey( spep_3 + 190 -a, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 194 -a, 1, 0.24, 0.24 );
setScaleKey( spep_3 + 196 -a, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 202 -a, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 204 -a, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 216, 1, 0.2, 0.2 );

setRotateKey( spep_3 + 12 -a, 1, -20.9 );
setRotateKey( spep_3 + 14 -a, 1, -21.1 );
setRotateKey( spep_3 + 16 -a, 1, -21.7 );
setRotateKey( spep_3 + 18 -a, 1, -24.1 );
setRotateKey( spep_3 + 20 -a, 1, -25.7 );
setRotateKey( spep_3 + 22 -a, 1, -26.5 );
setRotateKey( spep_3 + 24 -a, 1, -27.1 );
setRotateKey( spep_3 + 26 -a, 1, -27.5 );
setRotateKey( spep_3 + 28 -a, 1, -27.8 );
setRotateKey( spep_3 + 30 -a, 1, -28 );
setRotateKey( spep_3 + 32 -a, 1, -28.2 );
setRotateKey( spep_3 + 34 -a, 1, -28.4 );
setRotateKey( spep_3 + 36 -a, 1, -28.5 );
setRotateKey( spep_3 + 38 -a, 1, -28.6 );
setRotateKey( spep_3 + 40 -a, 1, -28.7 );
setRotateKey( spep_3 + 42 -a, 1, -28.8 );
setRotateKey( spep_3 + 44 -a, 1, -28.9 );
setRotateKey( spep_3 + 46 -a, 1, -28.9 );
setRotateKey( spep_3 + 48 -a, 1, -29 );
setRotateKey( spep_3 + 50 -a, 1, -29.1 );
setRotateKey( spep_3 + 52 -a, 1, -29.1 );
setRotateKey( spep_3 + 54 -a, 1, -29.2 );
setRotateKey( spep_3 + 58 -a, 1, -29.2 );
setRotateKey( spep_3 + 60 -a, 1, -29.3 );
setRotateKey( spep_3 + 62 -a, 1, -29.3 );
setRotateKey( spep_3 + 64 -a, 1, -29.4 );
setRotateKey( spep_3 + 66 -a, 1, -29.4 );
setRotateKey( spep_3 + 68 -a, 1, -29.3 );
setRotateKey( spep_3 + 72 -a, 1, -29.3 );
setRotateKey( spep_3 + 74 -a, 1, -29.2 );
setRotateKey( spep_3 + 76 -a, 1, -29.2 );
setRotateKey( spep_3 + 78 -a, 1, -29.1 );
setRotateKey( spep_3 + 80 -a, 1, -29 );
setRotateKey( spep_3 + 82 -a, 1, -28.8 );
setRotateKey( spep_3 + 84 -a, 1, -28.7 );
setRotateKey( spep_3 + 86 -a, 1, -28.5 );
setRotateKey( spep_3 + 88 -a, 1, -28.2 );
setRotateKey( spep_3 + 90 -a, 1, -27.9 );
setRotateKey( spep_3 + 92 -a, 1, -27.4 );
setRotateKey( spep_3 + 94 -a, 1, -26.8 );
setRotateKey( spep_3 + 96 -a, 1, -25.8 );
setRotateKey( spep_3 + 98 -a, 1, -22.9 );
setRotateKey( spep_3 + 100 -a, 1, -19.9 );
setRotateKey( spep_3 + 102 -a, 1, -17.2 );
setRotateKey( spep_3 + 104 -a, 1, -14.9 );
setRotateKey( spep_3 + 106 -a, 1, -12.9 );
setRotateKey( spep_3 + 108 -a, 1, -11.1 );
setRotateKey( spep_3 + 110 -a, 1, -9.7 );
setRotateKey( spep_3 + 112 -a, 1, -8.6 );
setRotateKey( spep_3 + 114 -a, 1, -7.8 );
setRotateKey( spep_3 + 116 -a, 1, -7.4 );
setRotateKey( spep_3 + 118 -a, 1, -7.2 );
setRotateKey( spep_3 + 138 -a, 1, -121 );
setRotateKey( spep_3 + 140 -a, 1, -114.6 );
setRotateKey( spep_3 + 142 -a, 1, -108.3 );
setRotateKey( spep_3 + 143 -a, 1, -108.3 );
setRotateKey( spep_3 + 144 -a, 1, -41 );
setRotateKey( spep_3 + 146 -a, 1, -27.6 );
setRotateKey( spep_3 + 147 -a, 1, -27.6 );
setRotateKey( spep_3 + 148 -a, 1, 47.9 );
setRotateKey( spep_3 + 150 -a, 1, 48.7 );
setRotateKey( spep_3 + 152 -a, 1, 49.4 );
setRotateKey( spep_3 + 154 -a, 1, 50 );
setRotateKey( spep_3 + 156 -a, 1, 50.5 );
setRotateKey( spep_3 + 158 -a, 1, 51 );
setRotateKey( spep_3 + 160 -a, 1, 51.4 );
setRotateKey( spep_3 + 162 -a, 1, 51.7 );
setRotateKey( spep_3 + 164 -a, 1, 52 );
setRotateKey( spep_3 + 166 -a, 1, 52.2 );
setRotateKey( spep_3 + 168 -a, 1, 52.4 );
setRotateKey( spep_3 + 170 -a, 1, 52.6 );
setRotateKey( spep_3 + 172 -a, 1, 52.7 );
setRotateKey( spep_3 + 174 -a, 1, 52.8 );
setRotateKey( spep_3 + 176 -a, 1, 52.9 );
setRotateKey( spep_3 + 178 -a, 1, 53 );
setRotateKey( spep_3 + 180 -a, 1, 53.1 );
setRotateKey( spep_3 + 182 -a, 1, 53.1 );
setRotateKey( spep_3 + 184 -a, 1, 53.2 );
setRotateKey( spep_3 + 186 -a, 1, 53.2 );
setRotateKey( spep_3 + 188 -a, 1, 53.3 );
setRotateKey( spep_3 + 194 -a, 1, 53.3 );
setRotateKey( spep_3 + 196 -a, 1, 53.4 );
setRotateKey( spep_3 + 216, 1, 53.4 );

-- ** 音 ** --
playSe( spep_3 + 20, 9);  --ピンクのオーラ
playSe( spep_3 + 100,  1054);
setSeVolume(  spep_3 +100,  1054,  120);
playSe( spep_3 + 102,  1024);
playSe( spep_3 + 138,  44);  --飛ぶ
playSe( spep_3 + 210,  43);  --瞬間移動


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 216, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 216;

------------------------------------------------------
-- 殴り(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
naguri = entryEffectLife( spep_4 + 0, SP_06, 106, 0x100, -1, 0, 0, 0 );  --殴り(ef_006)
setEffMoveKey( spep_4 + 0, naguri, 0, 0 , 0 );
setEffMoveKey( spep_4 + 106, naguri, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, naguri, -1.0, 1.0 );
setEffScaleKey( spep_4 + 106, naguri, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, naguri, 0 );
setEffRotateKey( spep_4 + 106, naguri, 0 );
setEffAlphaKey( spep_4 + 0, naguri, 255 );
setEffAlphaKey( spep_4 + 105, naguri, 255 );
setEffAlphaKey( spep_4 + 106, naguri, 0 );

-- ** 音 ** --
playSe( spep_4 , 9);
playSe( spep_4 + 60,  8);  --振りかぶる
playSe( spep_4 + 80,  1013);  --拳を突き出す
setSeVolume( spep_4 + 80,  1005,  150);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 106, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 106;

------------------------------------------------------
-- フィニッシュ(198F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --フィニッシュ　奥(ef_007)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 198, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 198, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 198, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 198, finish_b, 255 );

finish_f = entryEffect( spep_5 + 0, SP_08r, 0x100, -1, 0, 0, 0 );  --フィニッシュ　手前(ef_008)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 198, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 198, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 198, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 198, finish_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 - 2 + 0, 1, 152.1, -12.4 , 0 );
setMoveKey( spep_5 - 2 + 2, 1, 115, -1.4 , 0 );
setMoveKey( spep_5 - 2 + 4, 1, 203.3, -2.4 , 0 );
setMoveKey( spep_5 - 2 + 6, 1, 142.4, -1.7 , 0 );
setMoveKey( spep_5 - 2 + 8, 1, 206.6, -15 , 0 );
setMoveKey( spep_5 - 2 + 10, 1, 115.4, -10.7 , 0 );
setMoveKey( spep_5 - 2 + 12, 1, 158.1, 12.2 , 0 );
setMoveKey( spep_5 - 2 + 14, 1, 91.5, -9.4 , 0 );
setMoveKey( spep_5 - 2 + 16, 1, 143.9, -17.2 , 0 );
setMoveKey( spep_5 - 2 + 18, 1, 103.2, 2.8 , 0 );
setMoveKey( spep_5 - 2 + 20, 1, 135.8, -21.2 , 0 );
setMoveKey( spep_5 - 2 + 22, 1, 93.7, -14.5 , 0 );
setMoveKey( spep_5 - 2 + 24, 1, 115.7, -1.3 , 0 );
setMoveKey( spep_5 - 2 + 26, 1, 96.2, -17.7 , 0 );
setMoveKey( spep_5 - 2 + 28, 1, 124.5, -0.2 , 0 );
setMoveKey( spep_5 - 2 + 30, 1, 108.7, -21.6 , 0 );
setMoveKey( spep_5 - 2 + 32, 1, 120, -0.9 , 0 );
setMoveKey( spep_5 - 2 + 34, 1, 102.6, -15.7 , 0 );
setMoveKey( spep_5 - 2 + 36, 1, 116.8, -0.8 , 0 );
setMoveKey( spep_5 - 2 + 38, 1, 98.5, -20 , 0 );
setMoveKey( spep_5 - 2 + 40, 1, 116.4, 2.1 , 0 );
setMoveKey( spep_5 - 2 + 42, 1, 105.3, -18.3 , 0 );
setMoveKey( spep_5 - 2 + 44, 1, 111.2, -0.4 , 0 );
setMoveKey( spep_5 - 2 + 46, 1, 116.3, -23.7 , 0 );
setMoveKey( spep_5 - 2 + 48, 1, 113.9, 1.3 , 0 );
setMoveKey( spep_5 - 2 + 50, 1, 104.8, -15.5 , 0 );
setMoveKey( spep_5 - 2 + 52, 1, 123.5, -12.8 , 0 );
setMoveKey( spep_5 - 2 + 54, 1, 106.5, -7.2 , 0 );
setMoveKey( spep_5 - 2 + 56, 1, 118.2, -13 , 0 );
setMoveKey( spep_5 - 2 + 58, 1, 105.2, -13 , 0 );
setMoveKey( spep_5 - 2 + 60, 1, 106.7, -14.3 , 0 );
setMoveKey( spep_5 - 2 + 62, 1, 107.8, -13.4 , 0 );
setMoveKey( spep_5 - 2 + 64, 1, 104.6, -15.6 , 0 );
setMoveKey( spep_5 - 2 + 66, 1, 107.3, -14.3 , 0 );
setMoveKey( spep_5 - 2 + 68, 1, 106.8, -13.7 , 0 );
setMoveKey( spep_5 - 2 + 70, 1, 106.6, -13.9 , 0 );
setMoveKey( spep_5 - 2 + 72, 1, 104.1, -10.3 , 0 );
setMoveKey( spep_5 - 2 + 74, 1, 107.7, -11.9 , 0 );
setMoveKey( spep_5 - 2 + 76, 1, 100.4, -9.1 , 0 );
setMoveKey( spep_5 - 2 + 78, 1, 99, -6.3 , 0 );
setMoveKey( spep_5 - 2 + 80, 1, 94.6, -0.2 , 0 );
setMoveKey( spep_5 - 2 + 82, 1, 84.9, 4 , 0 );
setMoveKey( spep_5 - 2 + 84, 1, 75.1, 16.7 , 0 );
setMoveKey( spep_5 - 2 + 86, 1, 64.3, 24.1 , 0 );
setMoveKey( spep_5 - 2 + 88, 1, 50.6, 32.4 , 0 );
setMoveKey( spep_5 - 2 + 90, 1, 46.6, 39.3 , 0 );
setMoveKey( spep_5 - 2 + 92, 1, 37.5, 45.7 , 0 );
setMoveKey( spep_5 - 2 + 94, 1, 35.2, 54.3 , 0 );
setMoveKey( spep_5 - 2 + 96, 1, 31.8, 52.5 , 0 );
setMoveKey( spep_5 - 2 + 98, 1, 27.7, 58.9 , 0 );
setMoveKey( spep_5 - 2 + 100, 1, 27.8, 56.8 , 0 );
setMoveKey( spep_5 - 2 + 102, 1, 29.5, 62.9 , 0 );
setMoveKey( spep_5 - 2 + 104, 1, 26.1, 57.9 , 0 );
setMoveKey( spep_5 - 2 + 106, 1, 27.9, 66.1 , 0 );
setMoveKey( spep_5 - 2 + 108, 1, 28.2, 58.7 , 0 );
setMoveKey( spep_5 - 2 + 110, 1, 31.6, 66.9 , 0 );
setMoveKey( spep_5 - 2 + 112, 1, 31.9, 61.1 , 0 );
setMoveKey( spep_5 - 2 + 114, 1, 37.9, 66.1 , 0 );
setMoveKey( spep_5 - 2 + 116, 1, 33.8, 62.2 , 0 );
setMoveKey( spep_5 - 2 + 118, 1, 38.8, 69 , 0 );
setMoveKey( spep_5 - 2 + 120, 1, 38.5, 62.3 , 0 );
setMoveKey( spep_5 - 2 + 122, 1, 38.7, 70.4 , 0 );
setMoveKey( spep_5 - 2 + 124, 1, 38.1, 61.8 , 0 );
setMoveKey( spep_5 - 2 + 126, 1, 38.3, 69.7 , 0 );
setMoveKey( spep_5 - 2 + 128, 1, 37, 63.5 , 0 );
setMoveKey( spep_5 - 2 + 130, 1, 39.3, 70.7 , 0 );
setMoveKey( spep_5 - 2 + 132, 1, 39.8, 63.3 , 0 );
setMoveKey( spep_5 - 2 + 134, 1, 38.4, 70.7 , 0 );
setMoveKey( spep_5 - 2 + 136, 1, 39.6, 63.8 , 0 );
setMoveKey( spep_5 - 2 + 138, 1, 34.4, 71.1 , 0 );
setMoveKey( spep_5 - 2 + 140, 1, 40.7, 65.1 , 0 );
setMoveKey( spep_5 - 2 + 142, 1, 32.4, 69.4 , 0 );
setMoveKey( spep_5 - 2 + 144, 1, 41.8, 67.1 , 0 );
setMoveKey( spep_5 - 2 + 146, 1, 33.9, 70.4 , 0 );
setMoveKey( spep_5 - 2 + 148, 1, 42.8, 66.7 , 0 );
setMoveKey( spep_5 - 2 + 150, 1, 35.1, 72.5 , 0 );
setMoveKey( spep_5 - 2 + 152, 1, 39.3, 63.1 , 0 );
setMoveKey( spep_5 - 2 + 154, 1, 34.9, 70.3 , 0 );
setMoveKey( spep_5 - 2 + 156, 1, 42.1, 66.8 , 0 );
setMoveKey( spep_5 - 2 + 158, 1, 34.4, 70.1 , 0 );
setMoveKey( spep_5 - 2 + 160, 1, 40.2, 64.3 , 0 );
setMoveKey( spep_5 - 2 + 162, 1, 33.6, 72.6 , 0 );
setMoveKey( spep_5 - 2 + 164, 1, 39.9, 63.6 , 0 );
setMoveKey( spep_5 - 2 + 166, 1, 34.4, 72.7 , 0 );
setMoveKey( spep_5 - 2 + 168, 1, 37.2, 61.3 , 0 );
setMoveKey( spep_5 - 2 + 170, 1, 33.2, 71.4 , 0 );
setMoveKey( spep_5 - 2 + 172, 1, 40.1, 61.9 , 0 );
setMoveKey( spep_5 - 2 + 174, 1, 34.6, 73.7 , 0 );
setMoveKey( spep_5 - 2 + 176, 1, 37.1, 63.7 , 0 );
setMoveKey( spep_5 - 2 + 178, 1, 34.7, 73.7 , 0 );
setMoveKey( spep_5 - 2 + 180, 1, 35.5, 65.4 , 0 );
setMoveKey( spep_5 - 2 + 182, 1, 40.7, 74.7 , 0 );
setMoveKey( spep_5 - 2 + 184, 1, 36.5, 65.9 , 0 );
setMoveKey( spep_5 - 2 + 186, 1, 41.8, 74 , 0 );
setMoveKey( spep_5 - 2 + 188, 1, 34.1, 64.3 , 0 );
setMoveKey( spep_5 - 2 + 190, 1, 39.1, 72.5 , 0 );
setMoveKey( spep_5 - 2 + 192, 1, 30.3, 67.7 , 0 );
setMoveKey( spep_5 - 2 + 194, 1, 43.9, 65.3 , 0 );
setMoveKey( spep_5 - 2 + 196, 1, 31.1, 66.2 , 0 );
setMoveKey( spep_5 - 2 + 198, 1, 44.3, 73.4 , 0 );
setMoveKey( spep_5 + 198, 1, 44.3, 73.4 , 0 );

setScaleKey( spep_5 - 2 + 0, 1, 4.5, 4.5 );
setScaleKey( spep_5 - 2 + 2, 1, 4.49, 4.49 );
setScaleKey( spep_5 - 2 + 4, 1, 4.42, 4.42 );
setScaleKey( spep_5 - 2 + 6, 1, 4.29, 4.29 );
setScaleKey( spep_5 - 2 + 8, 1, 4.03, 4.03 );
setScaleKey( spep_5 - 2 + 10, 1, 3.42, 3.42 );
setScaleKey( spep_5 - 2 + 12, 1, 2.51, 2.51 );
setScaleKey( spep_5 - 2 + 14, 1, 2.03, 2.03 );
setScaleKey( spep_5 - 2 + 16, 1, 1.74, 1.74 );
setScaleKey( spep_5 - 2 + 18, 1, 1.57, 1.57 );
setScaleKey( spep_5 - 2 + 20, 1, 1.47, 1.47 );
setScaleKey( spep_5 - 2 + 22, 1, 1.4, 1.4 );
setScaleKey( spep_5 - 2 + 24, 1, 1.37, 1.37 );
setScaleKey( spep_5 - 2 + 26, 1, 1.34, 1.34 );
setScaleKey( spep_5 - 2 + 28, 1, 1.33, 1.33 );
setScaleKey( spep_5 - 2 + 30, 1, 1.31, 1.31 );
setScaleKey( spep_5 - 2 + 32, 1, 1.3, 1.3 );
setScaleKey( spep_5 - 2 + 40, 1, 1.3, 1.3 );
setScaleKey( spep_5 - 2 + 42, 1, 1.29, 1.29 );
setScaleKey( spep_5 - 2 + 48, 1, 1.29, 1.29 );
setScaleKey( spep_5 - 2 + 50, 1, 1.28, 1.28 );
setScaleKey( spep_5 - 2 + 56, 1, 1.28, 1.28 );
setScaleKey( spep_5 - 2 + 58, 1, 1.27, 1.27 );
setScaleKey( spep_5 - 2 + 64, 1, 1.27, 1.27 );
setScaleKey( spep_5 - 2 + 66, 1, 1.26, 1.26 );
setScaleKey( spep_5 - 2 + 70, 1, 1.26, 1.26 );
setScaleKey( spep_5 - 2 + 72, 1, 1.25, 1.25 );
setScaleKey( spep_5 - 2 + 74, 1, 1.23, 1.23 );
setScaleKey( spep_5 - 2 + 76, 1, 1.22, 1.22 );
setScaleKey( spep_5 - 2 + 78, 1, 1.18, 1.18 );
setScaleKey( spep_5 - 2 + 80, 1, 1.13, 1.13 );
setScaleKey( spep_5 - 2 + 82, 1, 1.07, 1.07 );
setScaleKey( spep_5 - 2 + 84, 1, 0.98, 0.98 );
setScaleKey( spep_5 - 2 + 86, 1, 0.87, 0.87 );
setScaleKey( spep_5 - 2 + 88, 1, 0.78, 0.78 );
setScaleKey( spep_5 - 2 + 90, 1, 0.7, 0.7 );
setScaleKey( spep_5 - 2 + 92, 1, 0.65, 0.65 );
setScaleKey( spep_5 - 2 + 94, 1, 0.6, 0.6 );
setScaleKey( spep_5 - 2 + 96, 1, 0.57, 0.57 );
setScaleKey( spep_5 - 2 + 98, 1, 0.55, 0.55 );
setScaleKey( spep_5 - 2 + 100, 1, 0.52, 0.52 );
setScaleKey( spep_5 - 2 + 102, 1, 0.51, 0.51 );
setScaleKey( spep_5 - 2 + 104, 1, 0.49, 0.49 );
setScaleKey( spep_5 - 2 + 106, 1, 0.48, 0.48 );
setScaleKey( spep_5 - 2 + 108, 1, 0.48, 0.48 );
setScaleKey( spep_5 - 2 + 110, 1, 0.47, 0.47 );
setScaleKey( spep_5 - 2 + 112, 1, 0.47, 0.47 );
setScaleKey( spep_5 - 2 + 114, 1, 0.45, 0.45 );
setScaleKey( spep_5 - 2 + 120, 1, 0.45, 0.45 );
setScaleKey( spep_5 - 2 + 122, 1, 0.44, 0.44 );
setScaleKey( spep_5 - 2 + 130, 1, 0.44, 0.44 );
setScaleKey( spep_5 - 2 + 132, 1, 0.43, 0.43 );
setScaleKey( spep_5 - 2 + 152, 1, 0.43, 0.43 );
setScaleKey( spep_5 - 2 + 154, 1, 0.42, 0.42 );
setScaleKey( spep_5 - 2 + 198, 1, 0.42, 0.42 );
setScaleKey( spep_5 + 198, 1, 0.42, 0.42 );

setRotateKey( spep_5 - 2 + 0, 1, 0 );
setRotateKey( spep_5 - 2 + 2, 1, -0.6 );
setRotateKey( spep_5 - 2 + 4, 1, 0.7 );
setRotateKey( spep_5 - 2 + 6, 1, -1.5 );
setRotateKey( spep_5 - 2 + 8, 1, -0.5 );
setRotateKey( spep_5 - 2 + 10, 1, 1.2 );
setRotateKey( spep_5 - 2 + 12, 1, -1.2 );
setRotateKey( spep_5 - 2 + 14, 1, -0.4 );
setRotateKey( spep_5 - 2 + 16, 1, 1.3 );
setRotateKey( spep_5 - 2 + 18, 1, -0.8 );
setRotateKey( spep_5 - 2 + 20, 1, -1 );
setRotateKey( spep_5 - 2 + 22, 1, -0.3 );
setRotateKey( spep_5 - 2 + 24, 1, 0.8 );
setRotateKey( spep_5 - 2 + 26, 1, 1.4 );
setRotateKey( spep_5 - 2 + 28, 1, -0.4 );
setRotateKey( spep_5 - 2 + 30, 1, 2.1 );
setRotateKey( spep_5 - 2 + 32, 1, -0.2 );
setRotateKey( spep_5 - 2 + 34, 1, -0.2 );
setRotateKey( spep_5 - 2 + 36, 1, 0.4 );
setRotateKey( spep_5 - 2 + 38, 1, 1.4 );
setRotateKey( spep_5 - 2 + 40, 1, 1.6 );
setRotateKey( spep_5 - 2 + 42, 1, 0.6 );
setRotateKey( spep_5 - 2 + 44, 1, 0.6 );
setRotateKey( spep_5 - 2 + 46, 1, -0.2 );
setRotateKey( spep_5 - 2 + 48, 1, 1.1 );
setRotateKey( spep_5 - 2 + 50, 1, -1.2 );
setRotateKey( spep_5 - 2 + 52, 1, -0.2 );
setRotateKey( spep_5 - 2 + 54, 1, 1.4 );
setRotateKey( spep_5 - 2 + 56, 1, -1 );
setRotateKey( spep_5 - 2 + 58, 1, -0.2 );
setRotateKey( spep_5 - 2 + 60, 1, 1.4 );
setRotateKey( spep_5 - 2 + 62, 1, -0.7 );
setRotateKey( spep_5 - 2 + 64, 1, -0.9 );
setRotateKey( spep_5 - 2 + 66, 1, -0.2 );
setRotateKey( spep_5 - 2 + 68, 1, 0.9 );
setRotateKey( spep_5 - 2 + 70, 1, 1.4 );
setRotateKey( spep_5 - 2 + 72, 1, -0.4 );
setRotateKey( spep_5 - 2 + 74, 1, 2.1 );
setRotateKey( spep_5 - 2 + 76, 1, -0.2 );
setRotateKey( spep_5 - 2 + 78, 1, -0.2 );
setRotateKey( spep_5 - 2 + 80, 1, 0.4 );
setRotateKey( spep_5 - 2 + 82, 1, 1.4 );
setRotateKey( spep_5 - 2 + 84, 1, 1.6 );
setRotateKey( spep_5 - 2 + 86, 1, 0.7 );
setRotateKey( spep_5 - 2 + 88, 1, 0.7 );
setRotateKey( spep_5 - 2 + 90, 1, -0.1 );
setRotateKey( spep_5 - 2 + 92, 1, 1.3 );
setRotateKey( spep_5 - 2 + 94, 1, -1 );
setRotateKey( spep_5 - 2 + 96, 1, 0.1 );
setRotateKey( spep_5 - 2 + 98, 1, 1.8 );
setRotateKey( spep_5 - 2 + 100, 1, -0.5 );
setRotateKey( spep_5 - 2 + 102, 1, 0.4 );
setRotateKey( spep_5 - 2 + 104, 1, 2.2 );
setRotateKey( spep_5 - 2 + 106, 1, 0.4 );
setRotateKey( spep_5 - 2 + 108, 1, 0.5 );
setRotateKey( spep_5 - 2 + 110, 1, 1.5 );
setRotateKey( spep_5 - 2 + 112, 1, 2.9 );
setRotateKey( spep_5 - 2 + 114, 1, 3.6 );
setRotateKey( spep_5 - 2 + 116, 1, 2 );
setRotateKey( spep_5 - 2 + 118, 1, 4.7 );
setRotateKey( spep_5 - 2 + 120, 1, 2.5 );
setRotateKey( spep_5 - 2 + 122, 1, 2.6 );
setRotateKey( spep_5 - 2 + 124, 1, 3.3 );
setRotateKey( spep_5 - 2 + 126, 1, 4.4 );
setRotateKey( spep_5 - 2 + 128, 1, 4.6 );
setRotateKey( spep_5 - 2 + 130, 1, 3.7 );
setRotateKey( spep_5 - 2 + 132, 1, 3.7 );
setRotateKey( spep_5 - 2 + 134, 1, 2.9 );
setRotateKey( spep_5 - 2 + 136, 1, 4.3 );
setRotateKey( spep_5 - 2 + 138, 1, 2 );
setRotateKey( spep_5 - 2 + 140, 1, 3 );
setRotateKey( spep_5 - 2 + 142, 1, 4.6 );
setRotateKey( spep_5 - 2 + 144, 1, 2.3 );
setRotateKey( spep_5 - 2 + 146, 1, 3.1 );
setRotateKey( spep_5 - 2 + 148, 1, 4.7 );
setRotateKey( spep_5 - 2 + 150, 1, 2.6 );
setRotateKey( spep_5 - 2 + 152, 1, 2.4 );
setRotateKey( spep_5 - 2 + 154, 1, 3.1 );
setRotateKey( spep_5 - 2 + 156, 1, 4.2 );
setRotateKey( spep_5 - 2 + 158, 1, 4.7 );
setRotateKey( spep_5 - 2 + 160, 1, 3 );
setRotateKey( spep_5 - 2 + 162, 1, 5.5 );
setRotateKey( spep_5 - 2 + 164, 1, 3.2 );
setRotateKey( spep_5 - 2 + 166, 1, 3.2 );
setRotateKey( spep_5 - 2 + 168, 1, 3.8 );
setRotateKey( spep_5 - 2 + 170, 1, 4.8 );
setRotateKey( spep_5 - 2 + 172, 1, 5 );
setRotateKey( spep_5 - 2 + 174, 1, 4 );
setRotateKey( spep_5 - 2 + 176, 1, 4 );
setRotateKey( spep_5 - 2 + 178, 1, 3.2 );
setRotateKey( spep_5 - 2 + 180, 1, 4.5 );
setRotateKey( spep_5 - 2 + 182, 1, 2.2 );
setRotateKey( spep_5 - 2 + 184, 1, 3.2 );
setRotateKey( spep_5 - 2 + 186, 1, 4.8 );
setRotateKey( spep_5 - 2 + 188, 1, 2.4 );
setRotateKey( spep_5 - 2 + 190, 1, 3.2 );
setRotateKey( spep_5 - 2 + 192, 1, 4.8 );
setRotateKey( spep_5 - 2 + 194, 1, 2.7 );
setRotateKey( spep_5 - 2 + 196, 1, 2.5 );
setRotateKey( spep_5 - 2 + 198, 1, 3.2 );
setRotateKey( spep_5 + 198, 1, 3.2 );

-- ** 音 ** --
playSe( spep_5 , 1026);
setSeVolume( spep_5,  1026,  150);
playSe( spep_5+2,  1010);
playSe( spep_5+4,  1067);
setSeVolume( spep_5,  1067,  150);
SE3 = playSe( spep_5 +100,  1044);
stopSe(  spep_5+196,  SE3,  0);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 198, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 78 );
entryFade( spep_5 + 188, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 198 );


end



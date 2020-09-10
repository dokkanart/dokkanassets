--超サイヤ人孫悟空_かめはめ波

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
SP_01 = 153591; --冒頭
SP_02 = 153592; --かめはめ波構え
SP_03 = 153593; --かめはめ波溜め　手前
SP_04 = 153594; --かめはめ波溜め　奥
SP_05 = 153595; --かめはめ波発射
SP_06 = 153596; --被弾　手前
SP_07 = 153597; --被弾　奥
SP_08 = 153598; --KO時

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
-- 冒頭(168F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffectLife( spep_0 + 0, SP_01, 168, 0x100, -1, 0, 0, 0 );  --冒頭(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 168, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 168, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 168, start, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
playSe( spep_0 + 16, SE_04 );  --ゴゴゴ
playSe( spep_0 + 104, 9 );  --雷

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 168;

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
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波構え(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_2 + 0, SP_02, 176, 0x80, -1, 0, 0, 0 );  --かめはめ波構え(ef_002)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, kamae, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 176, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 176, kamae, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 4, 51);  --構え
playSe( spep_2 + 14,  1003);  --腕を上げる
playSe( spep_2 + 28, 51);
playSe( spep_2 + 52, 51);
playSe( spep_2 + 76, 51);
playSe( spep_2 + 80,  1013);  --手を突き出す
playSe( spep_2 + 98, 51);
playSe( spep_2 + 122, 51);
playSe( spep_2 + 146, 51);
playSe( spep_2 + 150,  1061);  --腕を引く
playSe( spep_2 + 166, 51);
SE = playSe( spep_2 + 188,51);
stopSe( spep_2 + 198, SE, 10 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 176;

------------------------------------------------------
-- かめはめ波溜め(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_3 + 0, SP_03, 126, 0x100, -1, 0, 0, 0 );  --かめはめ波溜め　手前(ef_003)
setEffMoveKey( spep_3 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_f, 0 );
setEffRotateKey( spep_3 + 126, tame_f, 0 );
setEffAlphaKey( spep_3 + 0, tame_f, 255 );
setEffAlphaKey( spep_3 + 126, tame_f, 255 );

tame_b = entryEffectLife( spep_3 + 0, SP_04, 126, 0x80, -1, 0, 0, 0 );  --かめはめ波溜め　奥(ef_004)
setEffMoveKey( spep_3 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_b, 0 );
setEffRotateKey( spep_3 + 126, tame_b, 0 );
setEffAlphaKey( spep_3 + 0, tame_b, 255 );
setEffAlphaKey( spep_3 + 126, tame_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 0 );

setMoveKey( spep_3 + 0, 1, -118.7, 408.4 , 0 );
setMoveKey( spep_3 + 2, 1, -118.1, 408.4 , 0 );
setMoveKey( spep_3 + 4, 1, -117.5, 408.4 , 0 );
setMoveKey( spep_3 + 6, 1, -116.9, 408.4 , 0 );
setMoveKey( spep_3 + 8, 1, -116.3, 408.4 , 0 );
setMoveKey( spep_3 + 10, 1, -115.7, 408.4 , 0 );
setMoveKey( spep_3 + 12, 1, -115.1, 408.4 , 0 );
setMoveKey( spep_3 + 14, 1, -114.5, 408.4 , 0 );
setMoveKey( spep_3 + 16, 1, -113.9, 408.4 , 0 );
setMoveKey( spep_3 + 18, 1, -113.3, 408.4 , 0 );
setMoveKey( spep_3 + 20, 1, -112.7, 408.4 , 0 );
setMoveKey( spep_3 + 22, 1, -112.1, 408.4 , 0 );
setMoveKey( spep_3 + 24, 1, -111.5, 408.4 , 0 );
setMoveKey( spep_3 + 26, 1, -110.9, 408.4 , 0 );
setMoveKey( spep_3 + 28, 1, -110.3, 408.4 , 0 );
setMoveKey( spep_3 + 30, 1, -109.7, 408.4 , 0 );
setMoveKey( spep_3 + 32, 1, -109.1, 408.4 , 0 );
setMoveKey( spep_3 + 34, 1, -108.5, 408.4 , 0 );
setMoveKey( spep_3 + 36, 1, -107.9, 408.4 , 0 );
setMoveKey( spep_3 + 38, 1, -107.3, 408.4 , 0 );
setMoveKey( spep_3 + 40, 1, -106.7, 408.4 , 0 );
setMoveKey( spep_3 + 42, 1, -106.1, 408.4 , 0 );
setMoveKey( spep_3 + 44, 1, -105.5, 408.4 , 0 );

setScaleKey( spep_3 + 0, 1, 0.53, 0.53 );

setRotateKey( spep_3 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 126, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 44; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 0 );

setMoveKey( SP_dodge + 0, 1, -105.5, 408.4 , 0 );
setMoveKey( SP_dodge + 2, 1, -104.9, 408.4 , 0 );
setMoveKey( SP_dodge + 4, 1, -104.3, 408.4 , 0 );
setMoveKey( SP_dodge + 6, 1, -103.7, 408.4 , 0 );
setMoveKey( SP_dodge + 8, 1, -103.1, 408.4 , 0 );
setMoveKey( SP_dodge + 10, 1, -102.5, 408.4 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.53, 0.53 );
setScaleKey( SP_dodge + 10, 1, 0.53, 0.53 );

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

-- ** 敵キャラクター ** --
setDisp( spep_3 + 126, 1, 0 );

setMoveKey( spep_3 + 46, 1, -104.9, 408.4 , 0 );
setMoveKey( spep_3 + 48, 1, -104.3, 408.4 , 0 );
setMoveKey( spep_3 + 50, 1, -103.7, 408.4 , 0 );
setMoveKey( spep_3 + 52, 1, -103.1, 408.4 , 0 );
setMoveKey( spep_3 + 54, 1, -102.5, 408.4 , 0 );
setMoveKey( spep_3 + 56, 1, -101.9, 408.4 , 0 );
setMoveKey( spep_3 + 58, 1, -101.3, 408.4 , 0 );
setMoveKey( spep_3 + 60, 1, -100.7, 408.4 , 0 );
setMoveKey( spep_3 + 62, 1, -100.1, 408.4 , 0 );
setMoveKey( spep_3 + 64, 1, -99.5, 408.4 , 0 );
setMoveKey( spep_3 + 66, 1, -98.9, 408.4 , 0 );
setMoveKey( spep_3 + 68, 1, -98.3, 408.4 , 0 );
setMoveKey( spep_3 + 70, 1, -97.7, 408.4 , 0 );
setMoveKey( spep_3 + 72, 1, -97.1, 408.4 , 0 );
setMoveKey( spep_3 + 74, 1, -96.5, 408.4 , 0 );
setMoveKey( spep_3 + 76, 1, -95.9, 408.4 , 0 );
setMoveKey( spep_3 + 78, 1, -95.3, 408.4 , 0 );
setMoveKey( spep_3 + 80, 1, -94.7, 408.4 , 0 );
setMoveKey( spep_3 + 82, 1, -94.1, 408.4 , 0 );
setMoveKey( spep_3 + 84, 1, -93.5, 408.4 , 0 );
setMoveKey( spep_3 + 86, 1, -92.9, 408.4 , 0 );
setMoveKey( spep_3 + 88, 1, -92.3, 408.4 , 0 );
setMoveKey( spep_3 + 90, 1, -91.7, 408.4 , 0 );
setMoveKey( spep_3 + 92, 1, -91.1, 408.4 , 0 );
setMoveKey( spep_3 + 94, 1, -90.5, 408.4 , 0 );
setMoveKey( spep_3 + 96, 1, -89.9, 408.4 , 0 );
setMoveKey( spep_3 + 98, 1, -89.3, 408.4 , 0 );
setMoveKey( spep_3 + 100, 1, -88.7, 408.4 , 0 );
setMoveKey( spep_3 + 102, 1, -88.1, 408.4 , 0 );
setMoveKey( spep_3 + 104, 1, -87.5, 408.4 , 0 );
setMoveKey( spep_3 + 106, 1, -86.9, 408.4 , 0 );
setMoveKey( spep_3 + 108, 1, -86.3, 408.4 , 0 );
setMoveKey( spep_3 + 110, 1, -85.7, 408.4 , 0 );
setMoveKey( spep_3 + 112, 1, -85.1, 408.4 , 0 );
setMoveKey( spep_3 + 114, 1, -84.5, 408.4 , 0 );
setMoveKey( spep_3 + 116, 1, -83.9, 408.4 , 0 );
setMoveKey( spep_3 + 118, 1, -83.3, 408.4 , 0 );
setMoveKey( spep_3 + 120, 1, -82.7, 408.4 , 0 );
setMoveKey( spep_3 + 122, 1, -82.1, 408.4 , 0 );
setMoveKey( spep_3 + 124, 1, -81.5, 408.4 , 0 );
setMoveKey( spep_3 + 126, 1, -80.9, 408.4 , 0 );

setScaleKey( spep_3 + 126, 1, 0.53, 0.53 );

setRotateKey( spep_3 + 126, 1, 0 );

-- ** 音 ** --
playSe( spep_3 + 38, 17);  --溜め

-- ** 次の準備 ** --
spep_4 = spep_3 + 126;

------------------------------------------------------
-- かめはめ波発射(308F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_4 + 0, SP_05, 308, 0x100, -1, 0, 0, 0 );  --かめはめ波発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 308, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 308, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 308, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 308, hassha, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, 1021 );  --溜め
playSe( spep_4 + 78, 9 );  --発射前
playSe( spep_4 + 100, 1035 );  --発射
playSe( spep_4 + 120,  1072);
playSe( spep_4 + 180, 1022 );  --のびる

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 308, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 308;

------------------------------------------------------
-- 被弾(110F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_5 + 0, SP_06, 100, 0x100, -1, 0, 0, 0 );  --被弾　手前(ef_006)
setEffMoveKey( spep_5 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan_f, 0 );
setEffRotateKey( spep_5 + 100, hidan_f, 0 );
setEffAlphaKey( spep_5 + 0, hidan_f, 255 );
setEffAlphaKey( spep_5 + 100, hidan_f, 255 );

hidan_b = entryEffectLife( spep_5 + 0, SP_07, 100, 0x80, -1, 0, 0, 0 );  --被弾　奥(ef_007)
setEffMoveKey( spep_5 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan_b, 0 );
setEffRotateKey( spep_5 + 100, hidan_b, 0 );
setEffAlphaKey( spep_5 + 0, hidan_b, 255 );
setEffAlphaKey( spep_5 + 100, hidan_b, 255 );

KO = entryEffectLife( spep_5 + 100, SP_08, 24, 0x100, -1, 0, 0, 0 );  --KO時(ef_008)
setEffMoveKey( spep_5 + 100, KO, 0, 0 , 0 );
setEffMoveKey( spep_5 + 124, KO, 0, 0 , 0 );
setEffScaleKey( spep_5 + 100, KO, 1.0, 1.0 );
setEffScaleKey( spep_5 + 124, KO, 1.0, 1.0 );
setEffRotateKey( spep_5 + 100, KO, 0 );
setEffRotateKey( spep_5 + 124, KO, 0 );
setEffAlphaKey( spep_5 + 100, KO, 255 );
setEffAlphaKey( spep_5 + 124, KO, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_5 -3 + 28,  914, 26, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_5 -3 + 28, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_5 -3 + 54, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_5 -3 + 28, ryusen1, 4.29, 1.13 );
setEffScaleKey( spep_5 -3 + 54, ryusen1, 4.29, 1.13 );

setEffRotateKey( spep_5 -3 + 28, ryusen1, -180 );
setEffRotateKey( spep_5 -3 + 54, ryusen1, -180 );

setEffAlphaKey( spep_5 -3 + 28, ryusen1, 118 );
setEffAlphaKey( spep_5 -3 + 34, ryusen1, 118 );
setEffAlphaKey( spep_5 -3 + 36, ryusen1, 106 );
setEffAlphaKey( spep_5 -3 + 38, ryusen1, 94 );
setEffAlphaKey( spep_5 -3 + 40, ryusen1, 82 );
setEffAlphaKey( spep_5 -3 + 42, ryusen1, 71 );
setEffAlphaKey( spep_5 -3 + 44, ryusen1, 59 );
setEffAlphaKey( spep_5 -3 + 46, ryusen1, 47 );
setEffAlphaKey( spep_5 -3 + 48, ryusen1, 35 );
setEffAlphaKey( spep_5 -3 + 50, ryusen1, 24 );
setEffAlphaKey( spep_5 -3 + 52, ryusen1, 12 );
setEffAlphaKey( spep_5 -3 + 54, ryusen1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 58, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 + 28, 1, 108 );

setMoveKey( spep_5 + 0, 1, 61.3, -108.8 , 0 );
setMoveKey( spep_5 + 2, 1, 62.8, -108.8 , 0 );
setMoveKey( spep_5 + 4, 1, 64.3, -108.8 , 0 );
setMoveKey( spep_5 + 6, 1, 65.9, -108.8 , 0 );
setMoveKey( spep_5 + 8, 1, 67.4, -108.8 , 0 );
setMoveKey( spep_5 + 10, 1, 68.9, -108.8 , 0 );
setMoveKey( spep_5 + 12, 1, 70.5, -108.8 , 0 );
setMoveKey( spep_5 + 14, 1, 72, -108.8 , 0 );
setMoveKey( spep_5 + 16, 1, 73.6, -108.8 , 0 );
setMoveKey( spep_5 + 18, 1, 75.1, -108.8 , 0 );
setMoveKey( spep_5 + 20, 1, 76.6, -108.8 , 0 );
setMoveKey( spep_5 + 22, 1, 78.2, -108.8 , 0 );
setMoveKey( spep_5 + 24, 1, 79.7, -108.8 , 0 );
setMoveKey( spep_5 + 27, 1, 81.3, -108.8 , 0 );
setMoveKey( spep_5 + 28, 1, 64, -108.9 , 0 );
setMoveKey( spep_5 + 30, 1, 95.6, -106.2 , 0 );
setMoveKey( spep_5 + 32, 1, 74.7, -109.6 , 0 );
setMoveKey( spep_5 + 34, 1, 96.7, -107.2 , 0 );
setMoveKey( spep_5 + 36, 1, 76.3, -108.7 , 0 );
setMoveKey( spep_5 + 38, 1, 100.4, -107.7 , 0 );
setMoveKey( spep_5 + 40, 1, 74.6, -108.7 , 0 );
setMoveKey( spep_5 + 42, 1, 109.1, -110.2 , 0 );
setMoveKey( spep_5 + 44, 1, 83.6, -108.6 , 0 );
setMoveKey( spep_5 + 46, 1, 108.3, -111.3 , 0 );
setMoveKey( spep_5 + 48, 1, 92.3, -105.1 , 0 );
setMoveKey( spep_5 + 50, 1, 105.1, -112.4 , 0 );
setMoveKey( spep_5 + 52, 1, 114.8, -105.8 , 0 );
setMoveKey( spep_5 + 54, 1, 104.6, -112.4 , 0 );
setMoveKey( spep_5 + 56, 1, 115.3, -105.7 , 0 );
setMoveKey( spep_5 + 58, 1, 129.5, -111.7 , 0 );

setScaleKey( spep_5 + 0, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 58, 1, 0.73, 0.73 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 58, 1, 0 );

-- ** 音 ** --
playSe( spep_5 + 2, 1021 );  --発射
playSe( spep_5 + 28, 1023 );  --被弾
playSe( spep_5 + 30, 1022 );  --爆発

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 24 );
entryFade( spep_5 + 108, 4, 16, 10, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 120 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭(168F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffectLife( spep_0 + 0, SP_01, 168, 0x100, -1, 0, 0, 0 );  --冒頭(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0 );
setEffScaleKey( spep_0 + 168, start, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 168, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 168, start, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
playSe( spep_0 + 16, SE_04 );  --ゴゴゴ
playSe( spep_0 + 104, 9 );  --雷

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 168;

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
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波構え(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_2 + 0, SP_02, 176, 0x80, -1, 0, 0, 0 );  --かめはめ波構え(ef_002)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_2 + 176, kamae, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 176, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 176, kamae, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 4, 51);  --構え
playSe( spep_2 + 14,  1003);  --腕を上げる
playSe( spep_2 + 28, 51);
playSe( spep_2 + 52, 51);
playSe( spep_2 + 76, 51);
playSe( spep_2 + 80,  1013);  --手を突き出す
playSe( spep_2 + 98, 51);
playSe( spep_2 + 122, 51);
playSe( spep_2 + 146, 51);
playSe( spep_2 + 150,  1061);  --腕を引く
playSe( spep_2 + 166, 51);
SE = playSe( spep_2 + 188,51);
stopSe( spep_2 + 198, SE, 10 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 176;

------------------------------------------------------
-- かめはめ波溜め(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_3 + 0, SP_03, 126, 0x100, -1, 0, 0, 0 );  --かめはめ波溜め　手前(ef_003)
setEffMoveKey( spep_3 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 126, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_f, 0 );
setEffRotateKey( spep_3 + 126, tame_f, 0 );
setEffAlphaKey( spep_3 + 0, tame_f, 255 );
setEffAlphaKey( spep_3 + 126, tame_f, 255 );

tame_b = entryEffectLife( spep_3 + 0, SP_04, 126, 0x80, -1, 0, 0, 0 );  --かめはめ波溜め　奥(ef_004)
setEffMoveKey( spep_3 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 126, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_b, 0 );
setEffRotateKey( spep_3 + 126, tame_b, 0 );
setEffAlphaKey( spep_3 + 0, tame_b, 255 );
setEffAlphaKey( spep_3 + 126, tame_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, 118.7, 408.4 , 0 );
setMoveKey( spep_3 + 2, 1, 118.1, 408.4 , 0 );
setMoveKey( spep_3 + 4, 1, 117.5, 408.4 , 0 );
setMoveKey( spep_3 + 6, 1, 116.9, 408.4 , 0 );
setMoveKey( spep_3 + 8, 1, 116.3, 408.4 , 0 );
setMoveKey( spep_3 + 10, 1, 115.7, 408.4 , 0 );
setMoveKey( spep_3 + 12, 1, 115.1, 408.4 , 0 );
setMoveKey( spep_3 + 14, 1, 114.5, 408.4 , 0 );
setMoveKey( spep_3 + 16, 1, 113.9, 408.4 , 0 );
setMoveKey( spep_3 + 18, 1, 113.3, 408.4 , 0 );
setMoveKey( spep_3 + 20, 1, 112.7, 408.4 , 0 );
setMoveKey( spep_3 + 22, 1, 112.1, 408.4 , 0 );
setMoveKey( spep_3 + 24, 1, 111.5, 408.4 , 0 );
setMoveKey( spep_3 + 26, 1, 110.9, 408.4 , 0 );
setMoveKey( spep_3 + 28, 1, 110.3, 408.4 , 0 );
setMoveKey( spep_3 + 30, 1, 109.7, 408.4 , 0 );
setMoveKey( spep_3 + 32, 1, 109.1, 408.4 , 0 );
setMoveKey( spep_3 + 34, 1, 108.5, 408.4 , 0 );
setMoveKey( spep_3 + 36, 1, 107.9, 408.4 , 0 );
setMoveKey( spep_3 + 38, 1, 107.3, 408.4 , 0 );
setMoveKey( spep_3 + 40, 1, 106.7, 408.4 , 0 );
setMoveKey( spep_3 + 42, 1, 106.1, 408.4 , 0 );
setMoveKey( spep_3 + 44, 1, 105.5, 408.4 , 0 );

setScaleKey( spep_3 + 0, 1, 0.53, 0.53 );

setRotateKey( spep_3 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 126, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 44; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 100 );

setMoveKey( SP_dodge + 0, 1, 105.5, 408.4 , 0 );
setMoveKey( SP_dodge + 2, 1, 104.9, 408.4 , 0 );
setMoveKey( SP_dodge + 4, 1, 104.3, 408.4 , 0 );
setMoveKey( SP_dodge + 6, 1, 103.7, 408.4 , 0 );
setMoveKey( SP_dodge + 8, 1, 103.1, 408.4 , 0 );
setMoveKey( SP_dodge + 10, 1, 102.5, 408.4 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.53, 0.53 );
setScaleKey( SP_dodge + 10, 1, 0.53, 0.53 );

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

-- ** 敵キャラクター ** --
setDisp( spep_3 + 126, 1, 0 );

setMoveKey( spep_3 + 46, 1, 104.9, 408.4 , 0 );
setMoveKey( spep_3 + 48, 1, 104.3, 408.4 , 0 );
setMoveKey( spep_3 + 50, 1, 103.7, 408.4 , 0 );
setMoveKey( spep_3 + 52, 1, 103.1, 408.4 , 0 );
setMoveKey( spep_3 + 54, 1, 102.5, 408.4 , 0 );
setMoveKey( spep_3 + 56, 1, 101.9, 408.4 , 0 );
setMoveKey( spep_3 + 58, 1, 101.3, 408.4 , 0 );
setMoveKey( spep_3 + 60, 1, 100.7, 408.4 , 0 );
setMoveKey( spep_3 + 62, 1, 100.1, 408.4 , 0 );
setMoveKey( spep_3 + 64, 1, 99.5, 408.4 , 0 );
setMoveKey( spep_3 + 66, 1, 98.9, 408.4 , 0 );
setMoveKey( spep_3 + 68, 1, 98.3, 408.4 , 0 );
setMoveKey( spep_3 + 70, 1, 97.7, 408.4 , 0 );
setMoveKey( spep_3 + 72, 1, 97.1, 408.4 , 0 );
setMoveKey( spep_3 + 74, 1, 96.5, 408.4 , 0 );
setMoveKey( spep_3 + 76, 1, 95.9, 408.4 , 0 );
setMoveKey( spep_3 + 78, 1, 95.3, 408.4 , 0 );
setMoveKey( spep_3 + 80, 1, 94.7, 408.4 , 0 );
setMoveKey( spep_3 + 82, 1, 94.1, 408.4 , 0 );
setMoveKey( spep_3 + 84, 1, 93.5, 408.4 , 0 );
setMoveKey( spep_3 + 86, 1, 92.9, 408.4 , 0 );
setMoveKey( spep_3 + 88, 1, 92.3, 408.4 , 0 );
setMoveKey( spep_3 + 90, 1, 91.7, 408.4 , 0 );
setMoveKey( spep_3 + 92, 1, 91.1, 408.4 , 0 );
setMoveKey( spep_3 + 94, 1, 90.5, 408.4 , 0 );
setMoveKey( spep_3 + 96, 1, 89.9, 408.4 , 0 );
setMoveKey( spep_3 + 98, 1, 89.3, 408.4 , 0 );
setMoveKey( spep_3 + 100, 1, 88.7, 408.4 , 0 );
setMoveKey( spep_3 + 102, 1, 88.1, 408.4 , 0 );
setMoveKey( spep_3 + 104, 1, 87.5, 408.4 , 0 );
setMoveKey( spep_3 + 106, 1, 86.9, 408.4 , 0 );
setMoveKey( spep_3 + 108, 1, 86.3, 408.4 , 0 );
setMoveKey( spep_3 + 110, 1, 85.7, 408.4 , 0 );
setMoveKey( spep_3 + 112, 1, 85.1, 408.4 , 0 );
setMoveKey( spep_3 + 114, 1, 84.5, 408.4 , 0 );
setMoveKey( spep_3 + 116, 1, 83.9, 408.4 , 0 );
setMoveKey( spep_3 + 118, 1, 83.3, 408.4 , 0 );
setMoveKey( spep_3 + 120, 1, 82.7, 408.4 , 0 );
setMoveKey( spep_3 + 122, 1, 82.1, 408.4 , 0 );
setMoveKey( spep_3 + 124, 1, 81.5, 408.4 , 0 );
setMoveKey( spep_3 + 126, 1, 80.9, 408.4 , 0 );

setScaleKey( spep_3 + 126, 1, 0.53, 0.53 );

setRotateKey( spep_3 + 126, 1, 0 );

-- ** 音 ** --
playSe( spep_3 + 38, 17);  --溜め

-- ** 次の準備 ** --
spep_4 = spep_3 + 126;

------------------------------------------------------
-- かめはめ波発射(308F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_4 + 0, SP_05, 308, 0x100, -1, 0, 0, 0 );  --かめはめ波発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 308, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_4 + 308, hassha, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 308, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 308, hassha, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, 1021 );  --溜め
playSe( spep_4 + 78, 9 );  --発射前
playSe( spep_4 + 100, 1035 );  --発射
playSe( spep_4 + 120,  1072);
playSe( spep_4 + 180, 1022 );  --のびる
-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 308, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 308;

------------------------------------------------------
-- 被弾(110F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_5 + 0, SP_06, 100, 0x100, -1, 0, 0, 0 );  --被弾　手前(ef_006)
setEffMoveKey( spep_5 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan_f, 0 );
setEffRotateKey( spep_5 + 100, hidan_f, 0 );
setEffAlphaKey( spep_5 + 0, hidan_f, 255 );
setEffAlphaKey( spep_5 + 100, hidan_f, 255 );

hidan_b = entryEffectLife( spep_5 + 0, SP_07, 100, 0x80, -1, 0, 0, 0 );  --被弾　奥(ef_007)
setEffMoveKey( spep_5 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan_b, 0 );
setEffRotateKey( spep_5 + 100, hidan_b, 0 );
setEffAlphaKey( spep_5 + 0, hidan_b, 255 );
setEffAlphaKey( spep_5 + 100, hidan_b, 255 );

KO = entryEffectLife( spep_5 + 100, SP_08, 24, 0x100, -1, 0, 0, 0 );  --KO時(ef_008)
setEffMoveKey( spep_5 + 100, KO, 0, 0 , 0 );
setEffMoveKey( spep_5 + 124, KO, 0, 0 , 0 );
setEffScaleKey( spep_5 + 100, KO, 1.0, 1.0 );
setEffScaleKey( spep_5 + 124, KO, 1.0, 1.0 );
setEffRotateKey( spep_5 + 100, KO, 0 );
setEffRotateKey( spep_5 + 124, KO, 0 );
setEffAlphaKey( spep_5 + 100, KO, 255 );
setEffAlphaKey( spep_5 + 124, KO, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_5 -3 + 28,  914, 26, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_5 -3 + 28, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_5 -3 + 54, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_5 -3 + 28, ryusen1, 4.29, 1.13 );
setEffScaleKey( spep_5 -3 + 54, ryusen1, 4.29, 1.13 );

setEffRotateKey( spep_5 -3 + 28, ryusen1, -180 );
setEffRotateKey( spep_5 -3 + 54, ryusen1, -180 );

setEffAlphaKey( spep_5 -3 + 28, ryusen1, 118 );
setEffAlphaKey( spep_5 -3 + 34, ryusen1, 118 );
setEffAlphaKey( spep_5 -3 + 36, ryusen1, 106 );
setEffAlphaKey( spep_5 -3 + 38, ryusen1, 94 );
setEffAlphaKey( spep_5 -3 + 40, ryusen1, 82 );
setEffAlphaKey( spep_5 -3 + 42, ryusen1, 71 );
setEffAlphaKey( spep_5 -3 + 44, ryusen1, 59 );
setEffAlphaKey( spep_5 -3 + 46, ryusen1, 47 );
setEffAlphaKey( spep_5 -3 + 48, ryusen1, 35 );
setEffAlphaKey( spep_5 -3 + 50, ryusen1, 24 );
setEffAlphaKey( spep_5 -3 + 52, ryusen1, 12 );
setEffAlphaKey( spep_5 -3 + 54, ryusen1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 58, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 + 28, 1, 108 );

setMoveKey( spep_5 + 0, 1, 61.3, -108.8 , 0 );
setMoveKey( spep_5 + 2, 1, 62.8, -108.8 , 0 );
setMoveKey( spep_5 + 4, 1, 64.3, -108.8 , 0 );
setMoveKey( spep_5 + 6, 1, 65.9, -108.8 , 0 );
setMoveKey( spep_5 + 8, 1, 67.4, -108.8 , 0 );
setMoveKey( spep_5 + 10, 1, 68.9, -108.8 , 0 );
setMoveKey( spep_5 + 12, 1, 70.5, -108.8 , 0 );
setMoveKey( spep_5 + 14, 1, 72, -108.8 , 0 );
setMoveKey( spep_5 + 16, 1, 73.6, -108.8 , 0 );
setMoveKey( spep_5 + 18, 1, 75.1, -108.8 , 0 );
setMoveKey( spep_5 + 20, 1, 76.6, -108.8 , 0 );
setMoveKey( spep_5 + 22, 1, 78.2, -108.8 , 0 );
setMoveKey( spep_5 + 24, 1, 79.7, -108.8 , 0 );
setMoveKey( spep_5 + 27, 1, 81.3, -108.8 , 0 );
setMoveKey( spep_5 + 28, 1, 64, -108.9 , 0 );
setMoveKey( spep_5 + 30, 1, 95.6, -106.2 , 0 );
setMoveKey( spep_5 + 32, 1, 74.7, -109.6 , 0 );
setMoveKey( spep_5 + 34, 1, 96.7, -107.2 , 0 );
setMoveKey( spep_5 + 36, 1, 76.3, -108.7 , 0 );
setMoveKey( spep_5 + 38, 1, 100.4, -107.7 , 0 );
setMoveKey( spep_5 + 40, 1, 74.6, -108.7 , 0 );
setMoveKey( spep_5 + 42, 1, 109.1, -110.2 , 0 );
setMoveKey( spep_5 + 44, 1, 83.6, -108.6 , 0 );
setMoveKey( spep_5 + 46, 1, 108.3, -111.3 , 0 );
setMoveKey( spep_5 + 48, 1, 92.3, -105.1 , 0 );
setMoveKey( spep_5 + 50, 1, 105.1, -112.4 , 0 );
setMoveKey( spep_5 + 52, 1, 114.8, -105.8 , 0 );
setMoveKey( spep_5 + 54, 1, 104.6, -112.4 , 0 );
setMoveKey( spep_5 + 56, 1, 115.3, -105.7 , 0 );
setMoveKey( spep_5 + 58, 1, 129.5, -111.7 , 0 );

setScaleKey( spep_5 + 0, 1, 0.73, 0.73 );
setScaleKey( spep_5 + 58, 1, 0.73, 0.73 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 58, 1, 0 );

-- ** 音 ** --
playSe( spep_5 + 2, 1021 );  --発射
playSe( spep_5 + 28, 1023 );  --被弾
playSe( spep_5 + 30, 1022 );  --爆発

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 24 );
entryFade( spep_5 + 108, 4, 16, 10, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 120 );
end
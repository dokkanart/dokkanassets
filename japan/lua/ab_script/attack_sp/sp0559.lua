--アムズ(第三形態)_超ブラックかめはめ波

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
SP_01 = 153625 --アイドリング
SP_02 = 153627 --構えから溜
SP_03 = 153629 --発射
SP_04 = 153631 --ヒット
SP_06 = 153632 --ギャン
SP_07 = 153633 --爆発

--敵側
SP_01r = 153626 --アイドリング
SP_02r = 153628 --構えから溜
SP_03r = 153630 --発射
SP_04r = 153647 --ヒット

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
-- アイドリング(36F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffectLife( spep_0 + 0, SP_01, 36, 0x100, -1, 0, 0, 0 );  --アイドリング(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 36, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 36, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 36, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 36, idling, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 36, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 36;

------------------------------------------------------
-- 構えから溜(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_1 + 0, SP_02, 176, 0x100, -1, 0, 0, 0 );  --構えから溜(ef_002)
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, kamae, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 176, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 176, kamae, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1 + 76, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 + 76, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 + 92,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_1 + 92, ctgogo, 68, 10 );

setEffMoveKey( spep_1 + 92, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_1 + 160, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_1 + 92, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 152, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 154, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_1 + 156, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_1 + 158, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_1 + 160, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_1 + 92, ctgogo, 0 );
setEffRotateKey( spep_1 + 160, ctgogo, 0 );

setEffAlphaKey( spep_1 + 92, ctgogo, 255 );
setEffAlphaKey( spep_1 + 160, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 42 -6,  906, 134 +6, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 42 -6, shuchusen1, 134 +6, 20 );

setEffMoveKey( spep_1 + 42 -6, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 42 -6, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 176, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 42 -6, shuchusen1, 0 );
setEffRotateKey( spep_1 + 176, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 42 -6, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 176, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 176, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 164, 10, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 12, 1003 );  --構え
SE1 = playSe( spep_1 + 40, 15 );  --溜め
stopSe( spep_1 + 82, SE1, 10 );
playSe( spep_1 + 88, 1003 );  --手を引く
playSe( spep_1 + 92, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_2 = spep_1 + 176;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
-- 発射(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_3 + 0, SP_03, 116, 0x100, -1, 0, 0, 0 );  --発射(ef_003)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 116, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 116, hassha, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 40 -3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen3, 40 -3, 20 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 40 -3, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 40 -3, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 40 -3, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 39 -3, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 40 -3, shuchusen3, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_3 + 40 -3, 921, 76 +3, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_3 + 40 -3, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 40 -3, ryusen1, 1.6, 1.2 );
setEffScaleKey( spep_3 + 116, ryusen1, 1.6, 1.2 );

setEffRotateKey( spep_3 + 40 -3, ryusen1, -135 );
setEffRotateKey( spep_3 + 116, ryusen1, -135 );

setEffAlphaKey( spep_3 + 40 -3, ryusen1, 255 );
setEffAlphaKey( spep_3 + 116, ryusen1, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_3 + 40 -3,  10012, 50, 0x100, -1, 0, 138.4, 175.6 );  --ズオッ
setEffMoveKey( spep_3 + 40 -3, ctzuo, 138.4, 175.6 , 0 );
setEffMoveKey( spep_3 + 42 -3, ctzuo, 135.2, 195.6 , 0 );
setEffMoveKey( spep_3 + 44 -3, ctzuo, 105.6, 221.1 , 0 );
setEffMoveKey( spep_3 + 46 -3, ctzuo, 109.2, 239.8 , 0 );
setEffMoveKey( spep_3 + 48 -3, ctzuo, 72.8, 266.8 , 0 );
setEffMoveKey( spep_3 + 50 -3, ctzuo, 83.3, 284 , 0 );
setEffMoveKey( spep_3 + 52 -3, ctzuo, 56.5, 289.6 , 0 );
setEffMoveKey( spep_3 + 54 -3, ctzuo, 85, 283.6 , 0 );
setEffMoveKey( spep_3 + 56 -3, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 58 -3, ctzuo, 86.6, 283.2 , 0 );
setEffMoveKey( spep_3 + 60 -3, ctzuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_3 + 62 -3, ctzuo, 88.4, 282.9 , 0 );
setEffMoveKey( spep_3 + 64 -3, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 66 -3, ctzuo, 90, 282.6 , 0 );
setEffMoveKey( spep_3 + 68 -3, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 70 -3, ctzuo, 91.7, 282.2 , 0 );
setEffMoveKey( spep_3 + 72 -3, ctzuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_3 + 74 -3, ctzuo, 93.4, 281.8 , 0 );
setEffMoveKey( spep_3 + 76 -3, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 78 -3, ctzuo, 95, 281.4 , 0 );
setEffMoveKey( spep_3 + 80 -3, ctzuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_3 + 82 -3, ctzuo, 96.7, 281.2 , 0 );
setEffMoveKey( spep_3 + 84 -3, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 86 -3, ctzuo, 98.4, 280.8 , 0 );
setEffMoveKey( spep_3 + 88 -3, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 90 -3, ctzuo, 56.3, 289.6 , 0 );

setEffScaleKey( spep_3 + 40 -3, ctzuo, 1, 1 );
setEffScaleKey( spep_3 + 42 -3, ctzuo, 1.35, 1.35 );
setEffScaleKey( spep_3 + 44 -3, ctzuo, 1.7, 1.7 );
setEffScaleKey( spep_3 + 46 -3, ctzuo, 2.05, 2.05 );
setEffScaleKey( spep_3 + 48 -3, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_3 + 50 -3, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_3 + 52 -3, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_3 + 54 -3, ctzuo, 2.92, 2.92 );
setEffScaleKey( spep_3 + 56 -3, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_3 + 58 -3, ctzuo, 3.09, 3.09 );
setEffScaleKey( spep_3 + 60 -3, ctzuo, 3.18, 3.18 );
setEffScaleKey( spep_3 + 62 -3, ctzuo, 3.26, 3.26 );
setEffScaleKey( spep_3 + 64 -3, ctzuo, 3.35, 3.35 );
setEffScaleKey( spep_3 + 66 -3, ctzuo, 3.44, 3.44 );
setEffScaleKey( spep_3 + 68 -3, ctzuo, 3.52, 3.52 );
setEffScaleKey( spep_3 + 70 -3, ctzuo, 3.61, 3.61 );
setEffScaleKey( spep_3 + 72 -3, ctzuo, 3.69, 3.69 );
setEffScaleKey( spep_3 + 74 -3, ctzuo, 3.78, 3.78 );
setEffScaleKey( spep_3 + 76 -3, ctzuo, 3.86, 3.86 );
setEffScaleKey( spep_3 + 78 -3, ctzuo, 3.95, 3.95 );
setEffScaleKey( spep_3 + 80 -3, ctzuo, 4.04, 4.04 );
setEffScaleKey( spep_3 + 82 -3, ctzuo, 4.12, 4.12 );
setEffScaleKey( spep_3 + 84 -3, ctzuo, 4.21, 4.21 );
setEffScaleKey( spep_3 + 86 -3, ctzuo, 4.29, 4.29 );
setEffScaleKey( spep_3 + 88 -3, ctzuo, 4.38, 4.38 );
setEffScaleKey( spep_3 + 90 -3, ctzuo, 4.47, 4.47 );

setEffRotateKey( spep_3 + 40 -3, ctzuo, -24.8 );
setEffRotateKey( spep_3 + 42 -3, ctzuo, -25 );
setEffRotateKey( spep_3 + 90 -3, ctzuo, -25 );

setEffAlphaKey( spep_3 + 40 -3, ctzuo, 255 );
setEffAlphaKey( spep_3 + 78 -3, ctzuo, 255 );
setEffAlphaKey( spep_3 + 80 -3, ctzuo, 212 );
setEffAlphaKey( spep_3 + 82 -3, ctzuo, 170 );
setEffAlphaKey( spep_3 + 84 -3, ctzuo, 128 );
setEffAlphaKey( spep_3 + 86 -3, ctzuo, 85 );
setEffAlphaKey( spep_3 + 88 -3, ctzuo, 43 );
setEffAlphaKey( spep_3 + 90 -3, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 116, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_3 + 0, 49);  --溜め
--SE2 = playSe( spep_3 + 25, 49);  --溜め
SE2 = playSe( spep_3 + 0, 1072);  --溜め
setSeVolume( spep_3 + 0, 1072, 120 );
SE3 = playSe( spep_3 + 40 -3, 1022);  --発射

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE2, 0 );
stopSe( SP_dodge - 12, SE3, 0 );

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

-- ** 白フェード ** --
entryFade( spep_3 + 102, 14, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;

------------------------------------------------------
-- ヒット(76)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0, 906, 76, 0x100, -1, 0, -120, 300 );  --集中線
setEffShake( spep_4 + 0, shuchusen4, 76, 20 );

setEffMoveKey( spep_4 + 0, shuchusen4, -120, 300 , 0 );
setEffMoveKey( spep_4 + 76, shuchusen4, -120, 300 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_4 + 76, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 76, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 76, shuchusen4, 255 );

-- ** エフェクト等 ** --
hit = entryEffectLife( spep_4 + 0, SP_04, 76, 0x100, -1, 0, 0, 0 );  --ヒット(ef_004)
setEffMoveKey( spep_4 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, hit, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hit, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 76, hit, 0 );
setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 76, hit, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0 +2, 1, 1 );
setDisp( spep_4 + 76, 1, 0 );
changeAnime( spep_4 + 0 +2, 1, 102 );
changeAnime( spep_4 + 30 +2, 1, 107 );

setMoveKey( spep_4 + 0 +2, 1, 322.8, -272.6 , 0 );
setMoveKey( spep_4 + 2 +2, 1, 289, -249 , 0 );
setMoveKey( spep_4 + 4 +2, 1, 267, -206 , 0 );
setMoveKey( spep_4 + 6 +2, 1, 233.5, -184.2 , 0 );
setMoveKey( spep_4 + 8 +2, 1, 200.4, -159.7 , 0 );
setMoveKey( spep_4 + 10 +2, 1, 177.1, -119 , 0 );
setMoveKey( spep_4 + 12 +2, 1, 144.3, -95.8 , 0 );
setMoveKey( spep_4 + 14 +2, 1, 111.8, -70.4 , 0 );
setMoveKey( spep_4 + 16 +2, 1, 116.3, -59.9 , 0 );
setMoveKey( spep_4 + 18 +2, 1, 112.7, -64.2 , 0 );
setMoveKey( spep_4 + 20 +2, 1, 109.1, -67.3 , 0 );
setMoveKey( spep_4 + 22 +2, 1, 113.7, -56.8 , 0 );
setMoveKey( spep_4 + 24 +2, 1, 110.1, -61.1 , 0 );
setMoveKey( spep_4 + 26 +2, 1, 106.6, -64 , 0 );
setMoveKey( spep_4 + 29 +2, 1, 110.9, -53.7 , 0 );
setMoveKey( spep_4 + 30 +2, 1, 51.5, -62.2 , 0 );
setMoveKey( spep_4 + 32 +2, 1, 63.1, -85 , 0 );
setMoveKey( spep_4 + 34 +2, 1, 70.9, -79.5 , 0 );
setMoveKey( spep_4 + 36 +2, 1, 64.4, -104.3 , 0 );
setMoveKey( spep_4 + 38 +2, 1, 76.4, -127.6 , 0 );
setMoveKey( spep_4 + 40 +2, 1, 84.5, -120.8 , 0 );
setMoveKey( spep_4 + 42 +2, 1, 77.3, -146.2 , 0 );
setMoveKey( spep_4 + 44 +2, 1, 89.7, -170.1 , 0 );
setMoveKey( spep_4 + 46 +2, 1, 98.1, -162.1 , 0 );
setMoveKey( spep_4 + 48 +2, 1, 90.2, -188.2 , 0 );
setMoveKey( spep_4 + 50 +2, 1, 103.1, -212.6 , 0 );
setMoveKey( spep_4 + 52 +2, 1, 111.6, -203.5 , 0 );
setMoveKey( spep_4 + 54 +2, 1, 103.2, -230.2 , 0 );
setMoveKey( spep_4 + 56 +2, 1, 116.5, -255.1 , 0 );
setMoveKey( spep_4 + 58 +2, 1, 121.4, -234.8 , 0 );
setMoveKey( spep_4 + 60 +2, 1, 109, -251.6 , 0 );
setMoveKey( spep_4 + 62 +2, 1, 118.7, -266.2 , 0 );
setMoveKey( spep_4 + 64 +2, 1, 123.7, -245.6 , 0 );
setMoveKey( spep_4 + 66 +2, 1, 111.1, -262.4 , 0 );
setMoveKey( spep_4 + 68 +2, 1, 121, -277.2 , 0 );
setMoveKey( spep_4 + 70 +2, 1, 126, -256.3 , 0 );
setMoveKey( spep_4 + 72 +2, 1, 113.3, -273.4 , 0 );
setMoveKey( spep_4 + 74 +2, 1, 123.3, -288.2 , 0 );

setScaleKey( spep_4 + 0 +2, 1, 2.34, 2.34 );
setScaleKey( spep_4 + 2 +2, 1, 2.22, 2.22 );
setScaleKey( spep_4 + 4 +2, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 6 +2, 1, 1.98, 1.98 );
setScaleKey( spep_4 + 8 +2, 1, 1.86, 1.86 );
setScaleKey( spep_4 + 10 +2, 1, 1.74, 1.74 );
setScaleKey( spep_4 + 12 +2, 1, 1.62, 1.62 );
setScaleKey( spep_4 + 14 +2, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 16 +2, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18 +2, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 20 +2, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 22 +2, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 24 +2, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 26 +2, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 29 +2, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 30 +2, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 32 +2, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 34 +2, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 36 +2, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 38 +2, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 40 +2, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 42 +2, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 44 +2, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 46 +2, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 48 +2, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 50 +2, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 52 +2, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 54 +2, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 56 +2, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 58 +2, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 60 +2, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 62 +2, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 64 +2, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 66 +2, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 68 +2, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 70 +2, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 72 +2, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 74 +2, 1, 1.49, 1.49 );

setRotateKey( spep_4 + 0 +2, 1, 0 );
setRotateKey( spep_4 + 29 +2, 1, 0 );
setRotateKey( spep_4 + 30 +2, 1, -7.3 );
setRotateKey( spep_4 + 32 +2, 1, 1.8 );
setRotateKey( spep_4 + 34 +2, 1, -7.4 );
setRotateKey( spep_4 + 36 +2, 1, -7.4 );
setRotateKey( spep_4 + 38 +2, 1, 1.8 );
setRotateKey( spep_4 + 40 +2, 1, -7.4 );
setRotateKey( spep_4 + 42 +2, 1, -7.4 );
setRotateKey( spep_4 + 44 +2, 1, 1.8 );
setRotateKey( spep_4 + 46 +2, 1, -7.4 );
setRotateKey( spep_4 + 48 +2, 1, -7.4 );
setRotateKey( spep_4 + 50 +2, 1, 1.8 );
setRotateKey( spep_4 + 52 +2, 1, -7.4 );
setRotateKey( spep_4 + 54 +2, 1, -7.4 );
setRotateKey( spep_4 + 56 +2, 1, 1.8 );
setRotateKey( spep_4 + 58 +2, 1, -7.4 );
setRotateKey( spep_4 + 60 +2, 1, -7.4 );
setRotateKey( spep_4 + 62 +2, 1, 1.8 );
setRotateKey( spep_4 + 64 +2, 1, -7.4 );
setRotateKey( spep_4 + 66 +2, 1, -7.4 );
setRotateKey( spep_4 + 68 +2, 1, 1.8 );
setRotateKey( spep_4 + 70 +2, 1, -7.4 );
setRotateKey( spep_4 + 72 +2, 1, -7.4 );
setRotateKey( spep_4 + 74 +2, 1, 1.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 76, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 60, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 2, 1021 );  --発射

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;

------------------------------------------------------
-- ギャン(56)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_5 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --ギャン(ef_006)
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, gyan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 56, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 56, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_5 + 0,  10006, 56, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_5 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_5 + 56, ctgyan, 7.1, 306.8 , 0 );

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
setEffScaleKey( spep_5 + 34, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_5 + 36, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_5 + 38, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_5 + 40, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_5 + 42, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_5 + 44, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_5 + 46, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_5 + 48, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_5 + 50, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_5 + 52, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_5 + 54, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_5 + 56, ctgyan, 5, 5 );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 56, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 56, ctgyan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_5 + 2, 1023 );  --ギャン

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- 爆発(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆発(ef_007)
setEffMoveKey( spep_6 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bakuha, 0 );
setEffRotateKey( spep_6 + 176, bakuha, 0 );
setEffAlphaKey( spep_6 + 0, bakuha, 255 );
setEffAlphaKey( spep_6 + 176, bakuha, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_6 + 48, 906, 128, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 48, shuchusen5, 128, 20 );

setEffMoveKey( spep_6 + 48, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 48, shuchusen5, 1.4, 1.4 );
setEffScaleKey( spep_6 + 176, shuchusen5, 1.4, 1.4 );

setEffRotateKey( spep_6 + 48, shuchusen5, 0 );
setEffRotateKey( spep_6 + 176, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 48, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 176, shuchusen5, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 2, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 48 );
entryFade( spep_6 + 156, 4, 16, 10, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 176 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- アイドリング(36F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffectLife( spep_0 + 0, SP_01r, 36, 0x100, -1, 0, 0, 0 );  --アイドリング(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 36, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 36, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 36, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 36, idling, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 36, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 36;

------------------------------------------------------
-- 構えから溜(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_1 + 0, SP_02r, 176, 0x100, -1, 0, 0, 0 );  --構えから溜(ef_002)
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, kamae, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 176, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 176, kamae, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 + 76, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 + 76, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 + 92,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_1 + 92, ctgogo, 68, 10 );

setEffMoveKey( spep_1 + 92, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_1 + 160, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_1 + 92, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 152, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 154, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_1 + 156, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_1 + 158, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_1 + 160, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_1 + 92, ctgogo, 0 );
setEffRotateKey( spep_1 + 160, ctgogo, 0 );

setEffAlphaKey( spep_1 + 92, ctgogo, 255 );
setEffAlphaKey( spep_1 + 160, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 42 -6,  906, 134 +6, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 42 -6, shuchusen1, 134 +6, 20 );

setEffMoveKey( spep_1 + 42 -6, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 42 -6, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 176, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 42 -6, shuchusen1, 0 );
setEffRotateKey( spep_1 + 176, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 42 -6, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 176, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 176, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 164, 10, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 12, 1003 );  --構え
SE1 = playSe( spep_1 + 40, 15 );  --溜め
stopSe( spep_1 + 82, SE1, 10 );
playSe( spep_1 + 88, 1003 );  --手を引く
playSe( spep_1 + 92, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_2 = spep_1 + 176;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
-- 発射(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_3 + 0, SP_03r, 116, 0x100, -1, 0, 0, 0 );  --発射(ef_003)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 116, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 116, hassha, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 40 -3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen3, 40 -3, 20 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 40 -3, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 40 -3, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 40 -3, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 39 -3, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 40 -3, shuchusen3, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_3 + 40 -3, 921, 76 +3, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_3 + 40 -3, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 40 -3, ryusen1, 1.6, 1.2 );
setEffScaleKey( spep_3 + 116, ryusen1, 1.6, 1.2 );

setEffRotateKey( spep_3 + 40 -3, ryusen1, -135 );
setEffRotateKey( spep_3 + 116, ryusen1, -135 );

setEffAlphaKey( spep_3 + 40 -3, ryusen1, 255 );
setEffAlphaKey( spep_3 + 116, ryusen1, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_3 + 40 -3,  10012, 50, 0x100, -1, 0, 138.4, 175.6 );  --ズオッ
setEffMoveKey( spep_3 + 40 -3, ctzuo, 138.4, 175.6 , 0 );
setEffMoveKey( spep_3 + 42 -3, ctzuo, 135.2, 195.6 , 0 );
setEffMoveKey( spep_3 + 44 -3, ctzuo, 105.6, 221.1 , 0 );
setEffMoveKey( spep_3 + 46 -3, ctzuo, 109.2, 239.8 , 0 );
setEffMoveKey( spep_3 + 48 -3, ctzuo, 72.8, 266.8 , 0 );
setEffMoveKey( spep_3 + 50 -3, ctzuo, 83.3, 284 , 0 );
setEffMoveKey( spep_3 + 52 -3, ctzuo, 56.5, 289.6 , 0 );
setEffMoveKey( spep_3 + 54 -3, ctzuo, 85, 283.6 , 0 );
setEffMoveKey( spep_3 + 56 -3, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 58 -3, ctzuo, 86.6, 283.2 , 0 );
setEffMoveKey( spep_3 + 60 -3, ctzuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_3 + 62 -3, ctzuo, 88.4, 282.9 , 0 );
setEffMoveKey( spep_3 + 64 -3, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 66 -3, ctzuo, 90, 282.6 , 0 );
setEffMoveKey( spep_3 + 68 -3, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 70 -3, ctzuo, 91.7, 282.2 , 0 );
setEffMoveKey( spep_3 + 72 -3, ctzuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_3 + 74 -3, ctzuo, 93.4, 281.8 , 0 );
setEffMoveKey( spep_3 + 76 -3, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 78 -3, ctzuo, 95, 281.4 , 0 );
setEffMoveKey( spep_3 + 80 -3, ctzuo, 56.3, 289.6 , 0 );
setEffMoveKey( spep_3 + 82 -3, ctzuo, 96.7, 281.2 , 0 );
setEffMoveKey( spep_3 + 84 -3, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 86 -3, ctzuo, 98.4, 280.8 , 0 );
setEffMoveKey( spep_3 + 88 -3, ctzuo, 56.4, 289.6 , 0 );
setEffMoveKey( spep_3 + 90 -3, ctzuo, 56.3, 289.6 , 0 );

setEffScaleKey( spep_3 + 40 -3, ctzuo, 1, 1 );
setEffScaleKey( spep_3 + 42 -3, ctzuo, 1.35, 1.35 );
setEffScaleKey( spep_3 + 44 -3, ctzuo, 1.7, 1.7 );
setEffScaleKey( spep_3 + 46 -3, ctzuo, 2.05, 2.05 );
setEffScaleKey( spep_3 + 48 -3, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_3 + 50 -3, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_3 + 52 -3, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_3 + 54 -3, ctzuo, 2.92, 2.92 );
setEffScaleKey( spep_3 + 56 -3, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_3 + 58 -3, ctzuo, 3.09, 3.09 );
setEffScaleKey( spep_3 + 60 -3, ctzuo, 3.18, 3.18 );
setEffScaleKey( spep_3 + 62 -3, ctzuo, 3.26, 3.26 );
setEffScaleKey( spep_3 + 64 -3, ctzuo, 3.35, 3.35 );
setEffScaleKey( spep_3 + 66 -3, ctzuo, 3.44, 3.44 );
setEffScaleKey( spep_3 + 68 -3, ctzuo, 3.52, 3.52 );
setEffScaleKey( spep_3 + 70 -3, ctzuo, 3.61, 3.61 );
setEffScaleKey( spep_3 + 72 -3, ctzuo, 3.69, 3.69 );
setEffScaleKey( spep_3 + 74 -3, ctzuo, 3.78, 3.78 );
setEffScaleKey( spep_3 + 76 -3, ctzuo, 3.86, 3.86 );
setEffScaleKey( spep_3 + 78 -3, ctzuo, 3.95, 3.95 );
setEffScaleKey( spep_3 + 80 -3, ctzuo, 4.04, 4.04 );
setEffScaleKey( spep_3 + 82 -3, ctzuo, 4.12, 4.12 );
setEffScaleKey( spep_3 + 84 -3, ctzuo, 4.21, 4.21 );
setEffScaleKey( spep_3 + 86 -3, ctzuo, 4.29, 4.29 );
setEffScaleKey( spep_3 + 88 -3, ctzuo, 4.38, 4.38 );
setEffScaleKey( spep_3 + 90 -3, ctzuo, 4.47, 4.47 );

setEffRotateKey( spep_3 + 40 -3, ctzuo, -24.8 );
setEffRotateKey( spep_3 + 42 -3, ctzuo, -25 );
setEffRotateKey( spep_3 + 90 -3, ctzuo, -25 );

setEffAlphaKey( spep_3 + 40 -3, ctzuo, 255 );
setEffAlphaKey( spep_3 + 78 -3, ctzuo, 255 );
setEffAlphaKey( spep_3 + 80 -3, ctzuo, 212 );
setEffAlphaKey( spep_3 + 82 -3, ctzuo, 170 );
setEffAlphaKey( spep_3 + 84 -3, ctzuo, 128 );
setEffAlphaKey( spep_3 + 86 -3, ctzuo, 85 );
setEffAlphaKey( spep_3 + 88 -3, ctzuo, 43 );
setEffAlphaKey( spep_3 + 90 -3, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 116, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_3 + 0, 49);  --溜め
--SE2 = playSe( spep_3 + 25, 49);  --溜め
SE2 = playSe( spep_3 + 0, 1072);  --溜め
setSeVolume( spep_3 + 0, 1072, 120 );
SE3 = playSe( spep_3 + 40 -3, 1022);  --発射

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE2, 0 );
stopSe( SP_dodge - 12, SE3, 0 );

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

-- ** 白フェード ** --
entryFade( spep_3 + 102, 14, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;

------------------------------------------------------
-- ヒット(76)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0, 906, 76, 0x100, -1, 0, -120, 300 );  --集中線
setEffShake( spep_4 + 0, shuchusen4, 76, 20 );

setEffMoveKey( spep_4 + 0, shuchusen4, -120, 300 , 0 );
setEffMoveKey( spep_4 + 76, shuchusen4, -120, 300 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_4 + 76, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 76, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 76, shuchusen4, 255 );

-- ** エフェクト等 ** --
hit = entryEffectLife( spep_4 + 0, SP_04r, 76, 0x100, -1, 0, 0, 0 );  --ヒット(ef_004)
setEffMoveKey( spep_4 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, hit, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hit, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 76, hit, 0 );
setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 76, hit, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0 +2, 1, 1 );
setDisp( spep_4 + 76, 1, 0 );
changeAnime( spep_4 + 0 +2, 1, 102 );
changeAnime( spep_4 + 30 +2, 1, 107 );

setMoveKey( spep_4 + 0 +2, 1, 322.8, -272.6 , 0 );
setMoveKey( spep_4 + 2 +2, 1, 289, -249 , 0 );
setMoveKey( spep_4 + 4 +2, 1, 267, -206 , 0 );
setMoveKey( spep_4 + 6 +2, 1, 233.5, -184.2 , 0 );
setMoveKey( spep_4 + 8 +2, 1, 200.4, -159.7 , 0 );
setMoveKey( spep_4 + 10 +2, 1, 177.1, -119 , 0 );
setMoveKey( spep_4 + 12 +2, 1, 144.3, -95.8 , 0 );
setMoveKey( spep_4 + 14 +2, 1, 111.8, -70.4 , 0 );
setMoveKey( spep_4 + 16 +2, 1, 116.3, -59.9 , 0 );
setMoveKey( spep_4 + 18 +2, 1, 112.7, -64.2 , 0 );
setMoveKey( spep_4 + 20 +2, 1, 109.1, -67.3 , 0 );
setMoveKey( spep_4 + 22 +2, 1, 113.7, -56.8 , 0 );
setMoveKey( spep_4 + 24 +2, 1, 110.1, -61.1 , 0 );
setMoveKey( spep_4 + 26 +2, 1, 106.6, -64 , 0 );
setMoveKey( spep_4 + 29 +2, 1, 110.9, -53.7 , 0 );
setMoveKey( spep_4 + 30 +2, 1, 51.5, -62.2 , 0 );
setMoveKey( spep_4 + 32 +2, 1, 63.1, -85 , 0 );
setMoveKey( spep_4 + 34 +2, 1, 70.9, -79.5 , 0 );
setMoveKey( spep_4 + 36 +2, 1, 64.4, -104.3 , 0 );
setMoveKey( spep_4 + 38 +2, 1, 76.4, -127.6 , 0 );
setMoveKey( spep_4 + 40 +2, 1, 84.5, -120.8 , 0 );
setMoveKey( spep_4 + 42 +2, 1, 77.3, -146.2 , 0 );
setMoveKey( spep_4 + 44 +2, 1, 89.7, -170.1 , 0 );
setMoveKey( spep_4 + 46 +2, 1, 98.1, -162.1 , 0 );
setMoveKey( spep_4 + 48 +2, 1, 90.2, -188.2 , 0 );
setMoveKey( spep_4 + 50 +2, 1, 103.1, -212.6 , 0 );
setMoveKey( spep_4 + 52 +2, 1, 111.6, -203.5 , 0 );
setMoveKey( spep_4 + 54 +2, 1, 103.2, -230.2 , 0 );
setMoveKey( spep_4 + 56 +2, 1, 116.5, -255.1 , 0 );
setMoveKey( spep_4 + 58 +2, 1, 121.4, -234.8 , 0 );
setMoveKey( spep_4 + 60 +2, 1, 109, -251.6 , 0 );
setMoveKey( spep_4 + 62 +2, 1, 118.7, -266.2 , 0 );
setMoveKey( spep_4 + 64 +2, 1, 123.7, -245.6 , 0 );
setMoveKey( spep_4 + 66 +2, 1, 111.1, -262.4 , 0 );
setMoveKey( spep_4 + 68 +2, 1, 121, -277.2 , 0 );
setMoveKey( spep_4 + 70 +2, 1, 126, -256.3 , 0 );
setMoveKey( spep_4 + 72 +2, 1, 113.3, -273.4 , 0 );
setMoveKey( spep_4 + 74 +2, 1, 123.3, -288.2 , 0 );

setScaleKey( spep_4 + 0 +2, 1, 2.34, 2.34 );
setScaleKey( spep_4 + 2 +2, 1, 2.22, 2.22 );
setScaleKey( spep_4 + 4 +2, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 6 +2, 1, 1.98, 1.98 );
setScaleKey( spep_4 + 8 +2, 1, 1.86, 1.86 );
setScaleKey( spep_4 + 10 +2, 1, 1.74, 1.74 );
setScaleKey( spep_4 + 12 +2, 1, 1.62, 1.62 );
setScaleKey( spep_4 + 14 +2, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 16 +2, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18 +2, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 20 +2, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 22 +2, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 24 +2, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 26 +2, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 29 +2, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 30 +2, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 32 +2, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 34 +2, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 36 +2, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 38 +2, 1, 1.24, 1.24 );
setScaleKey( spep_4 + 40 +2, 1, 1.26, 1.26 );
setScaleKey( spep_4 + 42 +2, 1, 1.28, 1.28 );
setScaleKey( spep_4 + 44 +2, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 46 +2, 1, 1.33, 1.33 );
setScaleKey( spep_4 + 48 +2, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 50 +2, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 52 +2, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 54 +2, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 56 +2, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 58 +2, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 60 +2, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 62 +2, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 64 +2, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 66 +2, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 68 +2, 1, 1.47, 1.47 );
setScaleKey( spep_4 + 70 +2, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 72 +2, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 74 +2, 1, 1.49, 1.49 );

setRotateKey( spep_4 + 0 +2, 1, 0 );
setRotateKey( spep_4 + 29 +2, 1, 0 );
setRotateKey( spep_4 + 30 +2, 1, -7.3 );
setRotateKey( spep_4 + 32 +2, 1, 1.8 );
setRotateKey( spep_4 + 34 +2, 1, -7.4 );
setRotateKey( spep_4 + 36 +2, 1, -7.4 );
setRotateKey( spep_4 + 38 +2, 1, 1.8 );
setRotateKey( spep_4 + 40 +2, 1, -7.4 );
setRotateKey( spep_4 + 42 +2, 1, -7.4 );
setRotateKey( spep_4 + 44 +2, 1, 1.8 );
setRotateKey( spep_4 + 46 +2, 1, -7.4 );
setRotateKey( spep_4 + 48 +2, 1, -7.4 );
setRotateKey( spep_4 + 50 +2, 1, 1.8 );
setRotateKey( spep_4 + 52 +2, 1, -7.4 );
setRotateKey( spep_4 + 54 +2, 1, -7.4 );
setRotateKey( spep_4 + 56 +2, 1, 1.8 );
setRotateKey( spep_4 + 58 +2, 1, -7.4 );
setRotateKey( spep_4 + 60 +2, 1, -7.4 );
setRotateKey( spep_4 + 62 +2, 1, 1.8 );
setRotateKey( spep_4 + 64 +2, 1, -7.4 );
setRotateKey( spep_4 + 66 +2, 1, -7.4 );
setRotateKey( spep_4 + 68 +2, 1, 1.8 );
setRotateKey( spep_4 + 70 +2, 1, -7.4 );
setRotateKey( spep_4 + 72 +2, 1, -7.4 );
setRotateKey( spep_4 + 74 +2, 1, 1.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 76, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 60, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 2, 1021 );  --発射

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;

------------------------------------------------------
-- ギャン(56)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_5 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --ギャン(ef_006)
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, gyan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 56, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 56, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_5 + 0,  10006, 56, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_5 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_5 + 56, ctgyan, 7.1, 306.8 , 0 );

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
setEffScaleKey( spep_5 + 34, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_5 + 36, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_5 + 38, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_5 + 40, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_5 + 42, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_5 + 44, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_5 + 46, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_5 + 48, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_5 + 50, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_5 + 52, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_5 + 54, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_5 + 56, ctgyan, 5, 5 );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 56, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 56, ctgyan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_5 + 2, 1023 );  --ギャン

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- 爆発(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆発(ef_007)
setEffMoveKey( spep_6 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bakuha, 0 );
setEffRotateKey( spep_6 + 176, bakuha, 0 );
setEffAlphaKey( spep_6 + 0, bakuha, 255 );
setEffAlphaKey( spep_6 + 176, bakuha, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_6 + 48, 906, 128, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 48, shuchusen5, 128, 20 );

setEffMoveKey( spep_6 + 48, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 48, shuchusen5, 1.4, 1.4 );
setEffScaleKey( spep_6 + 176, shuchusen5, 1.4, 1.4 );

setEffRotateKey( spep_6 + 48, shuchusen5, 0 );
setEffRotateKey( spep_6 + 176, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 48, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 176, shuchusen5, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 2, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 48 );
entryFade( spep_6 + 156, 4, 16, 10, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 176 );

end
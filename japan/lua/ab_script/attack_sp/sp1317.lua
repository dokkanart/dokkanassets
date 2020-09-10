--超サイヤ人孫悟飯_爆裂乱魔

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
SP_01 = 153888; --導入、前方突進
SP_02 = 153889; --ラッシュ
SP_03 = 153890; --敵地面激突＆瞬間移動
SP_04 = 153891; --地面
SP_05 = 153892; --顔アップ気溜め
SP_06 = 153893; --ビーム発射
SP_07 = 153894; --ビーム発射　別アングル
SP_08 = 153895; --敵爆発
SP_09 = 153896; --ラッシュ：落下用集中線＆黒ベタ

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
-- 導入、前方突進(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
dash = entryEffectLife( spep_0 + 0, SP_01, 76, 0x100, -1, 0, 0, 0 );  --導入、前方突進(ef_001)
setEffMoveKey( spep_0 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, dash, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, dash, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash, 0 );
setEffRotateKey( spep_0 + 76, dash, 0 );
setEffAlphaKey( spep_0 + 0, dash, 255 );
setEffAlphaKey( spep_0 + 74, dash, 255 );
setEffAlphaKey( spep_0 + 75, dash, 255 );
setEffAlphaKey( spep_0 + 76, dash, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 76, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 76, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 76, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 74, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 75, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
SE1 = playSe( spep_0 + 0, 9 );  --手前に近づく

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 20; --エンドフェイズのフレーム数を置き換える

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

------------------------------------------------------
-- ラッシュ(186F)
------------------------------------------------------

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_02, 186, 0x100, -1, 0, 0, 0 );  --ラッシュ(ef_002)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 186, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 186, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 186, rush_f, 255 );

rush_b = entryEffectLife( spep_1 + 0, SP_09, 186, 0x80, -1, 0, 0, 0 );  --ラッシュ：落下用集中線＆黒ベタ(ef_009)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 186, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 186, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 186, rush_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0, 914, 136 -3, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136 -3, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 136 -3, ryusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 136 -3, ryusen1, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 108 -3, ryusen1, 255 );
setEffAlphaKey( spep_1 + 109 -3, ryusen1, 255 );
setEffAlphaKey( spep_1 + 110 -3, ryusen1, 0 );
setEffAlphaKey( spep_1 + 125 -3, ryusen1, 0 );
setEffAlphaKey( spep_1 + 126 -3, ryusen1, 255 );
setEffAlphaKey( spep_1 + 136 -3, ryusen1, 0 );

-- ** 書き文字エントリー ** --
ctdoga = entryEffectLife( spep_1 + 30 -3,  10017, 84, 0x100, -1, 0, -6.1, 237.5 );  --ドガガ
setEffShake( spep_1 + 34 -3, ctdoga, 76, 30 );

setEffMoveKey( spep_1 + 30 -3, ctdoga, -6.1, 237.5 , 0 );
setEffMoveKey( spep_1 + 32 -3, ctdoga, -1.4, 243.5 , 0 );
setEffMoveKey( spep_1 + 34 -3, ctdoga, -0.2, 244.9 , 0 );
setEffMoveKey( spep_1 + 110 -3, ctdoga, -0.2, 244.9 , 0 );
setEffMoveKey( spep_1 + 114 -3, ctdoga, -0.2, 244.9 , 0 );

setEffScaleKey( spep_1 + 30 -3, ctdoga, 0.9, 0.9 );
setEffScaleKey( spep_1 + 32 -3, ctdoga, 1.48, 1.48 );
setEffScaleKey( spep_1 + 34 -3, ctdoga, 2.06, 2.06 );
setEffScaleKey( spep_1 + 114 -3, ctdoga, 2.06, 2.06 );

setEffRotateKey( spep_1 + 30 -3, ctdoga, -1.5 );
setEffRotateKey( spep_1 + 114 -3, ctdoga, -1.5 );

setEffAlphaKey( spep_1 + 30 -3, ctdoga, 255 );
setEffAlphaKey( spep_1 + 110 -3, ctdoga, 255 );
setEffAlphaKey( spep_1 + 112 -3, ctdoga, 128 );
setEffAlphaKey( spep_1 + 114 -3, ctdoga, 0 );

ctbaki = entryEffectLife( spep_1 + 136 -3,  10020, 18, 0x100, -1, 0, 136.7, 279.2 );  --バキッ
setEffMoveKey( spep_1 + 136 -3, ctbaki, 136.7, 279.2 , 0 );
setEffMoveKey( spep_1 + 138 -3, ctbaki, 159.5, 309.3 , 0 );
setEffMoveKey( spep_1 + 140 -3, ctbaki, 178.1, 331.5 , 0 );
setEffMoveKey( spep_1 + 142 -3, ctbaki, 164.8, 327.6 , 0 );
setEffMoveKey( spep_1 + 144 -3, ctbaki, 159.5, 309.3 , 0 );
setEffMoveKey( spep_1 + 146 -3, ctbaki, 178.1, 331.5 , 0 );
setEffMoveKey( spep_1 + 148 -3, ctbaki, 164.8, 327.6 , 0 );
setEffMoveKey( spep_1 + 150 -3, ctbaki, 190.6, 356.5 , 0 );
setEffMoveKey( spep_1 + 152 -3, ctbaki, 177.3, 352.6 , 0 );
setEffMoveKey( spep_1 + 154 -3, ctbaki, 177.3, 352.6 , 0 );

setEffScaleKey( spep_1 + 136 -3, ctbaki, 1.34, 1.34 );
setEffScaleKey( spep_1 + 138 -3, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_1 + 154 -3, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_1 + 136 -3, ctbaki, 40 );
setEffRotateKey( spep_1 + 154 -3, ctbaki, 40 );

setEffAlphaKey( spep_1 + 136 -3, ctbaki, 128 );
setEffAlphaKey( spep_1 + 138 -3, ctbaki, 255 );
setEffAlphaKey( spep_1 + 150 -3, ctbaki, 255 );
setEffAlphaKey( spep_1 + 152 -3, ctbaki, 128 );
setEffAlphaKey( spep_1 + 154 -3, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 186, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 30, 1, 108 );
changeAnime( spep_1 -3 + 40, 1, 106 );
changeAnime( spep_1 -3 + 52, 1, 108 );
changeAnime( spep_1 -3 + 60, 1, 106 );
changeAnime( spep_1 -3 + 66, 1, 108 );
changeAnime( spep_1 -3 + 76, 1, 106 );
changeAnime( spep_1 -3 + 84, 1, 108 );
changeAnime( spep_1 -3 + 90, 1, 106 );
changeAnime( spep_1 -3 + 98, 1, 108 );
changeAnime( spep_1 -3 + 110, 1, 106 );
changeAnime( spep_1 -3 + 136, 1, 108 );

setMoveKey( spep_1 + 0, 1, 2.9, 39 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 0.2, 39 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -2.4, 39 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -5.1, 39 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -7.8, 39 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -10.4, 39 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -13.1, 39 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -15.8, 39 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -18.4, 39.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -21.1, 39.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -23.8, 39.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -26.4, 39.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -29.1, 39.1 , 0 );
setMoveKey( spep_1 -3 + 29, 1, -31.8, 39.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -12.3, 38.5 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 5.3, 38.4 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -21.8, 18.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 11, 38.3 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 13.2, 40.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -14.9, 58.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -31.1, 42.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -22.8, 47.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -28.1, 42.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -19.8, 47.8 , 0 );
setMoveKey( spep_1 -3 + 51, 1, -18.3, 46.8 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 20.8, 29.5 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 35.7, 33.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 20.7, 25.5 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 44.2, 37.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -35.3, 41.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -16.4, 57.2 , 0 );
setMoveKey( spep_1 -3 + 65, 1, -14.5, 42.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 22.7, 43.4 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 18.5, 27.7 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 21, 33 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 23.5, 38.3 , 0 );
setMoveKey( spep_1 -3 + 75, 1, 26, 43.7 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -14.2, 35.2 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -38.2, 58.5 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -11.6, 39.9 , 0 );
setMoveKey( spep_1 -3 + 83, 1, -21.3, 55 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 32, 26.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 17.2, 45 , 0 );
setMoveKey( spep_1 -3 + 89, 1, 32.6, 30.1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -27.7, 34.1 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -30.5, 25.7 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -11.2, 33.2 , 0 );
setMoveKey( spep_1 -3 + 97, 1, -10.8, 47 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 27.6, 30.6 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 54.2, 50.4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 53.5, 36.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 55.1, 41 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 74.3, 37.2 , 0 );
setMoveKey( spep_1 -3 + 109, 1, 63.8, 54.7 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 54.8, 58.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 60.4, 57.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 66.1, 57.5 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 71.9, 57 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 77.7, 56.6 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 83.6, 56.2 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 89.6, 55.7 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 95.7, 55.2 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 101.8, 54.8 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 107.3, 53.9 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 112.8, 53 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 118.3, 52.1 , 0 );
setMoveKey( spep_1 -3 + 135, 1, 123.8, 51.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 101.8, 40 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 126.5, 92.2 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 49.6, 17.6 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 97.9, -15.8 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 97.6, 47 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 65.1, 26 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 130.2, 46.8 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 98.1, 39.8 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 119.3, 12.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 128.2, -45.7 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 142, -84.9 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 155, -121.6 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 167.2, -156 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 178.5, -188 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 189, -217.7 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 198.6, -244.9 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 207.4, -269.8 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 215.4, -292.3 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 222.6, -312.5 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 228.9, -330.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 234.3, -345.6 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 238.9, -358.7 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 242.7, -369.3 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 245.7, -377.6 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 247.8, -383.5 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 249, -387.1 , 0 );
setMoveKey( spep_1 + 186, 1, 249.4, -388.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 29, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 30, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 32, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 39, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 40, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 51, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 59, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 60, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 65, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 66, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 75, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 76, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 83, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 84, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 89, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 90, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 97, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 98, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 100, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 102, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 104, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 106, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 109, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 110, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 112, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 114, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 116, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 118, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 120, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 122, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 124, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 126, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 135, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 136, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 138, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 140, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 142, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 144, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 146, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 148, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 150, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 152, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 154, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 156, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 158, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 160, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 162, 1, 0.86, 0.86 );
setScaleKey( spep_1 -3 + 164, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 166, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 168, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 170, 1, 0.57, 0.57 );
setScaleKey( spep_1 -3 + 172, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 174, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 176, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 178, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 180, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 182, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 184, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 186, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 186, 1, 0.3, 0.3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 39, 1, 0 );
setRotateKey( spep_1 -3 + 40, 1, -41.5 );
setRotateKey( spep_1 -3 + 42, 1, -41.2 );
setRotateKey( spep_1 -3 + 44, 1, -40.9 );
setRotateKey( spep_1 -3 + 46, 1, -40.6 );
setRotateKey( spep_1 -3 + 48, 1, -40.3 );
setRotateKey( spep_1 -3 + 51, 1, -40 );
setRotateKey( spep_1 -3 + 52, 1, 6.3 );
setRotateKey( spep_1 -3 + 54, 1, 3 );
setRotateKey( spep_1 -3 + 56, 1, -0.2 );
setRotateKey( spep_1 -3 + 59, 1, -3.5 );
setRotateKey( spep_1 -3 + 60, 1, -49.2 );
setRotateKey( spep_1 -3 + 62, 1, -44.6 );
setRotateKey( spep_1 -3 + 65, 1, -40 );
setRotateKey( spep_1 -3 + 66, 1, -6.2 );
setRotateKey( spep_1 -3 + 75, 1, -6.2 );
setRotateKey( spep_1 -3 + 76, 1, -41.5 );
setRotateKey( spep_1 -3 + 78, 1, -41 );
setRotateKey( spep_1 -3 + 80, 1, -40.5 );
setRotateKey( spep_1 -3 + 83, 1, -40 );
setRotateKey( spep_1 -3 + 84, 1, -6.2 );
setRotateKey( spep_1 -3 + 89, 1, -6.2 );
setRotateKey( spep_1 -3 + 90, 1, -41.5 );
setRotateKey( spep_1 -3 + 92, 1, -41 );
setRotateKey( spep_1 -3 + 94, 1, -40.5 );
setRotateKey( spep_1 -3 + 97, 1, -40 );
setRotateKey( spep_1 -3 + 98, 1, 0 );
setRotateKey( spep_1 -3 + 100, 1, 0.5 );
setRotateKey( spep_1 -3 + 102, 1, 1 );
setRotateKey( spep_1 -3 + 104, 1, 1.6 );
setRotateKey( spep_1 -3 + 106, 1, 2.2 );
setRotateKey( spep_1 -3 + 109, 1, 2.8 );
setRotateKey( spep_1 -3 + 110, 1, -49.2 );
setRotateKey( spep_1 -3 + 112, 1, -48.3 );
setRotateKey( spep_1 -3 + 114, 1, -47.3 );
setRotateKey( spep_1 -3 + 116, 1, -46.4 );
setRotateKey( spep_1 -3 + 118, 1, -45.5 );
setRotateKey( spep_1 -3 + 120, 1, -44.5 );
setRotateKey( spep_1 -3 + 122, 1, -43.6 );
setRotateKey( spep_1 -3 + 124, 1, -42.7 );
setRotateKey( spep_1 -3 + 126, 1, -41.7 );
setRotateKey( spep_1 -3 + 128, 1, -40.8 );
setRotateKey( spep_1 -3 + 130, 1, -39.9 );
setRotateKey( spep_1 -3 + 132, 1, -38.9 );
setRotateKey( spep_1 -3 + 135, 1, -38 );
setRotateKey( spep_1 -3 + 136, 1, 5 );
setRotateKey( spep_1 -3 + 138, 1, 8.5 );
setRotateKey( spep_1 -3 + 140, 1, 11.5 );
setRotateKey( spep_1 -3 + 142, 1, 14 );
setRotateKey( spep_1 -3 + 150, 1, 14 );
setRotateKey( spep_1 -3 + 152, 1, 18.7 );
setRotateKey( spep_1 -3 + 154, 1, 23.2 );
setRotateKey( spep_1 -3 + 156, 1, 27.4 );
setRotateKey( spep_1 -3 + 158, 1, 31.3 );
setRotateKey( spep_1 -3 + 160, 1, 35 );
setRotateKey( spep_1 -3 + 162, 1, 38.5 );
setRotateKey( spep_1 -3 + 164, 1, 41.7 );
setRotateKey( spep_1 -3 + 166, 1, 44.6 );
setRotateKey( spep_1 -3 + 168, 1, 47.3 );
setRotateKey( spep_1 -3 + 170, 1, 49.7 );
setRotateKey( spep_1 -3 + 172, 1, 51.8 );
setRotateKey( spep_1 -3 + 174, 1, 53.8 );
setRotateKey( spep_1 -3 + 176, 1, 55.4 );
setRotateKey( spep_1 -3 + 178, 1, 56.8 );
setRotateKey( spep_1 -3 + 180, 1, 58 );
setRotateKey( spep_1 -3 + 182, 1, 58.9 );
setRotateKey( spep_1 -3 + 184, 1, 59.5 );
setRotateKey( spep_1 -3 + 186, 1, 59.9 );
setRotateKey( spep_1 + 186, 1, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 186, 0, 0, 0, 0, 190 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 182, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 30 -3, 1000 );  --ラッシュ音
playSe( spep_1 + 40 -3, 1001 );  --ラッシュ音
playSe( spep_1 + 50 -3, 1007 );  --ラッシュ音
playSe( spep_1 + 60 -3, 1000 );  --ラッシュ音
playSe( spep_1 + 70 -3, 1001 );  --ラッシュ音
playSe( spep_1 + 80 -3, 1001 );  --ラッシュ音
playSe( spep_1 + 90 -3, 1000 );  --ラッシュ音
playSe( spep_1 + 100 -3, 1001 );  --ラッシュ音
playSe( spep_1 + 126 -3, 8 );  --迫る音
playSe( spep_1 + 136 -3, 1011 );  --バキッ

-- ** 次の準備 ** --
spep_2 = spep_1 + 186;

------------------------------------------------------
-- 敵地面激突＆瞬間移動(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
idou_f = entryEffectLife( spep_2 + 22, SP_03, 44, 0x100, -1, 0, 0, 0 );  --敵地面激突＆瞬間移動(ef_003)
setEffMoveKey( spep_2 + 22, idou_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, idou_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 22, idou_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, idou_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 22, idou_f, 0 );
setEffRotateKey( spep_2 + 66, idou_f, 0 );
setEffAlphaKey( spep_2 + 22, idou_f, 255 );
setEffAlphaKey( spep_2 + 66, idou_f, 255 );

idou_b = entryEffectLife( spep_2 + 0, SP_04, 66, 0x80, -1, 0, 0, 0 );  --敵地面激突＆瞬間移動(ef_004)
setEffMoveKey( spep_2 + 0, idou_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, idou_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, idou_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, idou_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, idou_b, 0 );
setEffRotateKey( spep_2 + 66, idou_b, 0 );
setEffAlphaKey( spep_2 + 0, idou_b, 255 );
setEffAlphaKey( spep_2 + 66, idou_b, 255 );

-- ** 書き文字エントリー ** --
ctdogo = entryEffectLife( spep_2 + 30 -3,  10018, 28, 0x100, -1, 0, -65.8, 322.3 );  --ドゴォン
setEffMoveKey( spep_2 + 30 -3, ctdogo, -65.8, 322.3 , 0 );
setEffMoveKey( spep_2 + 32 -3, ctdogo, -65, 320.4 , 0 );
setEffMoveKey( spep_2 + 34 -3, ctdogo, -62.9, 319.1 , 0 );
setEffMoveKey( spep_2 + 36 -3, ctdogo, -66.8, 318.9 , 0 );
setEffMoveKey( spep_2 + 38 -3, ctdogo, -63.7, 319.2 , 0 );
setEffMoveKey( spep_2 + 40 -3, ctdogo, -65.2, 319.9 , 0 );
setEffMoveKey( spep_2 + 42 -3, ctdogo, -64, 319.7 , 0 );
setEffMoveKey( spep_2 + 44 -3, ctdogo, -66.1, 319.8 , 0 );
setEffMoveKey( spep_2 + 46 -3, ctdogo, -64, 319.7 , 0 );
setEffMoveKey( spep_2 + 48 -3, ctdogo, -66.1, 319.8 , 0 );
setEffMoveKey( spep_2 + 50 -3, ctdogo, -64, 319.7 , 0 );
setEffMoveKey( spep_2 + 52 -3, ctdogo, -66.1, 319.8 , 0 );
setEffMoveKey( spep_2 + 54 -3, ctdogo, -64, 319.7 , 0 );
setEffMoveKey( spep_2 + 56 -3, ctdogo, -66.1, 319.8 , 0 );
setEffMoveKey( spep_2 + 58 -3, ctdogo, -64, 319.7 , 0 );

setEffScaleKey( spep_2 + 30 -3, ctdogo, 1.06, 1.06 );
setEffScaleKey( spep_2 + 32 -3, ctdogo, 2.28, 2.28 );
setEffScaleKey( spep_2 + 34 -3, ctdogo, 2.89, 2.89 );
setEffScaleKey( spep_2 + 36 -3, ctdogo, 2.75, 2.75 );
setEffScaleKey( spep_2 + 38 -3, ctdogo, 2.61, 2.61 );
setEffScaleKey( spep_2 + 40 -3, ctdogo, 2.47, 2.47 );
setEffScaleKey( spep_2 + 42 -3, ctdogo, 2.34, 2.34 );
setEffScaleKey( spep_2 + 58 -3, ctdogo, 2.34, 2.34 );

setEffRotateKey( spep_2 + 30 -3, ctdogo, -32.7 );
setEffRotateKey( spep_2 + 32 -3, ctdogo, -46.1 );
setEffRotateKey( spep_2 + 34 -3, ctdogo, -38.7 );
setEffRotateKey( spep_2 + 36 -3, ctdogo, -24.2 );
setEffRotateKey( spep_2 + 38 -3, ctdogo, -32.9 );
setEffRotateKey( spep_2 + 40 -3, ctdogo, -43.6 );
setEffRotateKey( spep_2 + 42 -3, ctdogo, -32.7 );
setEffRotateKey( spep_2 + 58 -3, ctdogo, -32.7 );

setEffAlphaKey( spep_2 + 30 -3, ctdogo, 255 );
setEffAlphaKey( spep_2 + 52 -3, ctdogo, 255 );
setEffAlphaKey( spep_2 + 54 -3, ctdogo, 170 );
setEffAlphaKey( spep_2 + 56 -3, ctdogo, 85 );
setEffAlphaKey( spep_2 + 58 -3, ctdogo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 30, 1, 0 );
changeAnime( spep_2 + 0, 1, 105 );

setMoveKey( spep_2 + 0, 1, -187.5, 1238 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -150.7, 1117.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -115.6, 1002.9 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -82.2, 893.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -50.3, 789.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -20.1, 690.7 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 8.5, 596.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 35.7, 508 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 61.4, 424 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 85.5, 344.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 108.2, 270.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 129.5, 201.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 149.2, 136.4 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 167.5, 76.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 167.5, 76.6 , 0 );

setScaleKey( spep_2 + 0, 1, 4.99, 4.99 );
setScaleKey( spep_2 -3 + 4, 1, 4.51, 4.51 );
setScaleKey( spep_2 -3 + 6, 1, 4.05, 4.05 );
setScaleKey( spep_2 -3 + 8, 1, 3.61, 3.61 );
setScaleKey( spep_2 -3 + 10, 1, 3.2, 3.2 );
setScaleKey( spep_2 -3 + 12, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 14, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 16, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 18, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 20, 1, 1.42, 1.42 );
setScaleKey( spep_2 -3 + 22, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 26, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 28, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 30, 1, 0.35, 0.35 );

setRotateKey( spep_2 + 0, 1, -0.8 );
setRotateKey( spep_2 -3 + 30, 1, -0.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 66, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 52, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 22, 4 );  --現れる
playSe( spep_2 + 30 -3, 1023 );  --ドゴォン

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;

------------------------------------------------------
-- 顔アップ気溜め(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_3 + 0, SP_05, 116, 0x100, -1, 0, 0, 0 );  --気溜め(ef_005)
setEffMoveKey( spep_3 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, kidame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, kidame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidame, 0 );
setEffRotateKey( spep_3 + 116, kidame, 0 );
setEffAlphaKey( spep_3 + 0, kidame, 255 );
setEffAlphaKey( spep_3 + 116, kidame, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 0, 906, 116, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen2, 76, 20 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_3 + 116, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 116, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 116, shuchusen2, 255 );

spep_x = spep_3 + 0;
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

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 32, 0, 0, 0, 0, 180 );  --薄い黒　背景
entryFadeBg( spep_3 + 0, 32, 86, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 106, 8, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 118;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_4 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;

------------------------------------------------------
-- ビーム発射(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_5 + 0, SP_06, 86, 0x100, -1, 0, 0, 0 );  --ビーム発射(ef_006)
setEffMoveKey( spep_5 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 86, hassha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, hassha, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hassha, 0 );
setEffRotateKey( spep_5 + 86, hassha, 0 );
setEffAlphaKey( spep_5 + 0, hassha, 255 );
setEffAlphaKey( spep_5 + 84, hassha, 255 );
setEffAlphaKey( spep_5 + 85, hassha, 255 );
setEffAlphaKey( spep_5 + 86, hassha, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen3, 86, 20 );

setEffMoveKey( spep_5 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 86, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_5 + 86, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 86, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 84, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 85, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 86, shuchusen3, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_5 + 10 -3,  10012, 48, 0x100, -1, 0, 9.9, 375.2 );  --ズオッ
setEffMoveKey( spep_5 + 10 -3, ctzuo, 9.9, 375.2 , 0 );
setEffMoveKey( spep_5 + 12 -3, ctzuo, 62.9, 393.5 , 0 );
setEffMoveKey( spep_5 + 14 -3, ctzuo, 61.3, 390 , 0 );
setEffMoveKey( spep_5 + 16 -3, ctzuo, 70.5, 395.8 , 0 );
setEffMoveKey( spep_5 + 18 -3, ctzuo, 68.9, 392.3 , 0 );
setEffMoveKey( spep_5 + 20 -3, ctzuo, 78.2, 398.1 , 0 );
setEffMoveKey( spep_5 + 22 -3, ctzuo, 76.6, 394.6 , 0 );
setEffMoveKey( spep_5 + 24 -3, ctzuo, 85.8, 400.4 , 0 );
setEffMoveKey( spep_5 + 26 -3, ctzuo, 84.2, 396.9 , 0 );
setEffMoveKey( spep_5 + 28 -3, ctzuo, 93.4, 402.7 , 0 );
setEffMoveKey( spep_5 + 30 -3, ctzuo, 91.8, 399.2 , 0 );
setEffMoveKey( spep_5 + 32 -3, ctzuo, 101, 405 , 0 );
setEffMoveKey( spep_5 + 34 -3, ctzuo, 99.4, 401.5 , 0 );
setEffMoveKey( spep_5 + 36 -3, ctzuo, 108.7, 407.3 , 0 );
setEffMoveKey( spep_5 + 38 -3, ctzuo, 107.1, 403.8 , 0 );
setEffMoveKey( spep_5 + 40 -3, ctzuo, 116.3, 409.6 , 0 );
setEffMoveKey( spep_5 + 42 -3, ctzuo, 114.7, 406.1 , 0 );
setEffMoveKey( spep_5 + 44 -3, ctzuo, 123.9, 411.9 , 0 );
setEffMoveKey( spep_5 + 46 -3, ctzuo, 122.3, 408.4 , 0 );
setEffMoveKey( spep_5 + 48 -3, ctzuo, 131.5, 414.2 , 0 );
setEffMoveKey( spep_5 + 50 -3, ctzuo, 130, 410.7 , 0 );
setEffMoveKey( spep_5 + 52 -3, ctzuo, 208.2, 488.9 , 0 );
setEffMoveKey( spep_5 + 54 -3, ctzuo, 270, 553.1 , 0 );
setEffMoveKey( spep_5 + 56 -3, ctzuo, 354.1, 636.2 , 0 );
setEffMoveKey( spep_5 + 58 -3, ctzuo, 426.9, 709.8 , 0 );

setEffScaleKey( spep_5 + 10 -3, ctzuo, 0.43, 0.43 );
setEffScaleKey( spep_5 + 12 -3, ctzuo, 0.8 + 2, 0.8 + 2 );
setEffScaleKey( spep_5 + 50 -3, ctzuo, 0.8 + 2, 0.8 + 2 );
setEffScaleKey( spep_5 + 52 -3, ctzuo, 1.23 + 2, 1.23 + 2 );
setEffScaleKey( spep_5 + 54 -3, ctzuo, 1.65 + 2, 1.65 + 2 );
setEffScaleKey( spep_5 + 56 -3, ctzuo, 2.08 + 2, 2.08 + 2 );
setEffScaleKey( spep_5 + 58 -3, ctzuo, 2.5 + 2, 2.5 + 2 );

setEffRotateKey( spep_5 + 10 -3, ctzuo, 37 );
setEffRotateKey( spep_5 + 58 -3, ctzuo, 37 );

setEffAlphaKey( spep_5 + 10 -3, ctzuo, 128 );
setEffAlphaKey( spep_5 + 12 -3, ctzuo, 255 );
setEffAlphaKey( spep_5 + 50 -3, ctzuo, 255 );
setEffAlphaKey( spep_5 + 52 -3, ctzuo, 191 );
setEffAlphaKey( spep_5 + 54 -3, ctzuo, 128 );
setEffAlphaKey( spep_5 + 56 -3, ctzuo, 64 );
setEffAlphaKey( spep_5 + 58 -3, ctzuo, 0 );

-- ** 音 ** --
playSe( spep_5 + 10 -3, 1022 );  --発射

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 86, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 86;

------------------------------------------------------
-- ビーム発射　別アングル(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha1 = entryEffectLife( spep_6 + 0, SP_07, 66, 0x100, -1, 0, 0, 0 );  --ビーム発射　別アングル(ef_007)
setEffMoveKey( spep_6 + 0, hassha1, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, hassha1, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hassha1, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, hassha1, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hassha1, 0 );
setEffRotateKey( spep_6 + 66, hassha1, 0 );
setEffAlphaKey( spep_6 + 0, hassha1, 255 );
setEffAlphaKey( spep_6 + 66, hassha1, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 0, 906, 66, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen4, 66, 20 );

setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_6 + 66, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen4, 0 );
setEffRotateKey( spep_6 + 66, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 66, shuchusen4, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_6 + 58, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 0, 1021 );  --気弾近づく

-- ** 次の準備 ** --
spep_7 = spep_6 + 66;

------------------------------------------------------
-- 敵爆発(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --敵爆発(ef_008)
setEffMoveKey( spep_7 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_7 + 136, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_7 + 136, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bakuha, 0 );
setEffRotateKey( spep_7 + 136, bakuha, 0 );
setEffAlphaKey( spep_7 + 0, bakuha, 255 );
setEffAlphaKey( spep_7 + 136, bakuha, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_7 + 0, 906, 136, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen5, 66, 20 );

setEffMoveKey( spep_7 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 136, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_7 + 136, shuchusen5, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen5, 0 );
setEffRotateKey( spep_7 + 136, shuchusen5, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 136, shuchusen5, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 136, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_7 + 0, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 22 );
endPhase( spep_7 + 136 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入、前方突進(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
dash = entryEffectLife( spep_0 + 0, SP_01, 76, 0x100, -1, 0, 0, 0 );  --導入、前方突進(ef_001)
setEffMoveKey( spep_0 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, dash, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, dash, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash, 0 );
setEffRotateKey( spep_0 + 76, dash, 0 );
setEffAlphaKey( spep_0 + 0, dash, 255 );
setEffAlphaKey( spep_0 + 74, dash, 255 );
setEffAlphaKey( spep_0 + 75, dash, 255 );
setEffAlphaKey( spep_0 + 76, dash, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 76, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 76, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 76, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 74, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 75, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
SE1 = playSe( spep_0 + 0, 9 );  --手前に近づく

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 20; --エンドフェイズのフレーム数を置き換える

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

------------------------------------------------------
-- ラッシュ(186F)
------------------------------------------------------

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_02, 186, 0x100, -1, 0, 0, 0 );  --ラッシュ(ef_002)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 186, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 186, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 186, rush_f, 255 );

rush_b = entryEffectLife( spep_1 + 0, SP_09, 186, 0x80, -1, 0, 0, 0 );  --ラッシュ：落下用集中線＆黒ベタ(ef_009)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 186, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 186, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 186, rush_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 0, 914, 136 -3, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136 -3, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 136 -3, ryusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 136 -3, ryusen1, 0 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 108 -3, ryusen1, 255 );
setEffAlphaKey( spep_1 + 109 -3, ryusen1, 255 );
setEffAlphaKey( spep_1 + 110 -3, ryusen1, 0 );
setEffAlphaKey( spep_1 + 125 -3, ryusen1, 0 );
setEffAlphaKey( spep_1 + 126 -3, ryusen1, 255 );
setEffAlphaKey( spep_1 + 136 -3, ryusen1, 0 );

-- ** 書き文字エントリー ** --
ctdoga = entryEffectLife( spep_1 + 30 -3,  10017, 84, 0x100, -1, 0, -6.1, 237.5 );  --ドガガ
setEffShake( spep_1 + 34 -3, ctdoga, 76, 30 );

setEffMoveKey( spep_1 + 30 -3, ctdoga, -6.1, 237.5 , 0 );
setEffMoveKey( spep_1 + 32 -3, ctdoga, -1.4, 243.5 , 0 );
setEffMoveKey( spep_1 + 34 -3, ctdoga, -0.2, 244.9 , 0 );
setEffMoveKey( spep_1 + 110 -3, ctdoga, -0.2, 244.9 , 0 );
setEffMoveKey( spep_1 + 114 -3, ctdoga, -0.2, 244.9 , 0 );

setEffScaleKey( spep_1 + 30 -3, ctdoga, 0.9, 0.9 );
setEffScaleKey( spep_1 + 32 -3, ctdoga, 1.48, 1.48 );
setEffScaleKey( spep_1 + 34 -3, ctdoga, 2.06, 2.06 );
setEffScaleKey( spep_1 + 114 -3, ctdoga, 2.06, 2.06 );

setEffRotateKey( spep_1 + 30 -3, ctdoga, -1.5 );
setEffRotateKey( spep_1 + 114 -3, ctdoga, -1.5 );

setEffAlphaKey( spep_1 + 30 -3, ctdoga, 255 );
setEffAlphaKey( spep_1 + 110 -3, ctdoga, 255 );
setEffAlphaKey( spep_1 + 112 -3, ctdoga, 128 );
setEffAlphaKey( spep_1 + 114 -3, ctdoga, 0 );

ctbaki = entryEffectLife( spep_1 + 136 -3,  10020, 18, 0x100, -1, 0, 136.7, 279.2 );  --バキッ
setEffMoveKey( spep_1 + 136 -3, ctbaki, 136.7, 279.2 , 0 );
setEffMoveKey( spep_1 + 138 -3, ctbaki, 159.5, 309.3 , 0 );
setEffMoveKey( spep_1 + 140 -3, ctbaki, 178.1, 331.5 , 0 );
setEffMoveKey( spep_1 + 142 -3, ctbaki, 164.8, 327.6 , 0 );
setEffMoveKey( spep_1 + 144 -3, ctbaki, 159.5, 309.3 , 0 );
setEffMoveKey( spep_1 + 146 -3, ctbaki, 178.1, 331.5 , 0 );
setEffMoveKey( spep_1 + 148 -3, ctbaki, 164.8, 327.6 , 0 );
setEffMoveKey( spep_1 + 150 -3, ctbaki, 190.6, 356.5 , 0 );
setEffMoveKey( spep_1 + 152 -3, ctbaki, 177.3, 352.6 , 0 );
setEffMoveKey( spep_1 + 154 -3, ctbaki, 177.3, 352.6 , 0 );

setEffScaleKey( spep_1 + 136 -3, ctbaki, 1.34, 1.34 );
setEffScaleKey( spep_1 + 138 -3, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_1 + 154 -3, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_1 + 136 -3, ctbaki, 40 );
setEffRotateKey( spep_1 + 154 -3, ctbaki, 40 );

setEffAlphaKey( spep_1 + 136 -3, ctbaki, 128 );
setEffAlphaKey( spep_1 + 138 -3, ctbaki, 255 );
setEffAlphaKey( spep_1 + 150 -3, ctbaki, 255 );
setEffAlphaKey( spep_1 + 152 -3, ctbaki, 128 );
setEffAlphaKey( spep_1 + 154 -3, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 186, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 30, 1, 108 );
changeAnime( spep_1 -3 + 40, 1, 106 );
changeAnime( spep_1 -3 + 52, 1, 108 );
changeAnime( spep_1 -3 + 60, 1, 106 );
changeAnime( spep_1 -3 + 66, 1, 108 );
changeAnime( spep_1 -3 + 76, 1, 106 );
changeAnime( spep_1 -3 + 84, 1, 108 );
changeAnime( spep_1 -3 + 90, 1, 106 );
changeAnime( spep_1 -3 + 98, 1, 108 );
changeAnime( spep_1 -3 + 110, 1, 106 );
changeAnime( spep_1 -3 + 136, 1, 108 );

setMoveKey( spep_1 + 0, 1, 2.9, 39 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 0.2, 39 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -2.4, 39 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -5.1, 39 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -7.8, 39 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -10.4, 39 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -13.1, 39 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -15.8, 39 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -18.4, 39.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -21.1, 39.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -23.8, 39.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -26.4, 39.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -29.1, 39.1 , 0 );
setMoveKey( spep_1 -3 + 29, 1, -31.8, 39.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -12.3, 38.5 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 5.3, 38.4 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -21.8, 18.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 11, 38.3 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 13.2, 40.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -14.9, 58.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -31.1, 42.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -22.8, 47.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -28.1, 42.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -19.8, 47.8 , 0 );
setMoveKey( spep_1 -3 + 51, 1, -18.3, 46.8 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 20.8, 29.5 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 35.7, 33.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 20.7, 25.5 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 44.2, 37.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -35.3, 41.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -16.4, 57.2 , 0 );
setMoveKey( spep_1 -3 + 65, 1, -14.5, 42.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 22.7, 43.4 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 18.5, 27.7 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 21, 33 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 23.5, 38.3 , 0 );
setMoveKey( spep_1 -3 + 75, 1, 26, 43.7 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -14.2, 35.2 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -38.2, 58.5 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -11.6, 39.9 , 0 );
setMoveKey( spep_1 -3 + 83, 1, -21.3, 55 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 32, 26.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 17.2, 45 , 0 );
setMoveKey( spep_1 -3 + 89, 1, 32.6, 30.1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -27.7, 34.1 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -30.5, 25.7 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -11.2, 33.2 , 0 );
setMoveKey( spep_1 -3 + 97, 1, -10.8, 47 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 27.6, 30.6 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 54.2, 50.4 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 53.5, 36.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 55.1, 41 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 74.3, 37.2 , 0 );
setMoveKey( spep_1 -3 + 109, 1, 63.8, 54.7 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 54.8, 58.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 60.4, 57.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 66.1, 57.5 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 71.9, 57 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 77.7, 56.6 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 83.6, 56.2 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 89.6, 55.7 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 95.7, 55.2 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 101.8, 54.8 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 107.3, 53.9 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 112.8, 53 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 118.3, 52.1 , 0 );
setMoveKey( spep_1 -3 + 135, 1, 123.8, 51.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 101.8, 40 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 126.5, 92.2 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 49.6, 17.6 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 97.9, -15.8 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 97.6, 47 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 65.1, 26 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 130.2, 46.8 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 98.1, 39.8 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 119.3, 12.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 128.2, -45.7 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 142, -84.9 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 155, -121.6 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 167.2, -156 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 178.5, -188 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 189, -217.7 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 198.6, -244.9 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 207.4, -269.8 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 215.4, -292.3 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 222.6, -312.5 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 228.9, -330.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 234.3, -345.6 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 238.9, -358.7 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 242.7, -369.3 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 245.7, -377.6 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 247.8, -383.5 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 249, -387.1 , 0 );
setMoveKey( spep_1 + 186, 1, 249.4, -388.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 29, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 30, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 32, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 39, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 40, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 51, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 59, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 60, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 65, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 66, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 75, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 76, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 83, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 84, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 89, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 90, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 97, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 98, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 100, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 102, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 104, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 106, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 109, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 110, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 112, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 114, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 116, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 118, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 120, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 122, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 124, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 126, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 135, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 136, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 138, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 140, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 142, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 144, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 146, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 148, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 150, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 152, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 154, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 156, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 158, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 160, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 162, 1, 0.86, 0.86 );
setScaleKey( spep_1 -3 + 164, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 166, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 168, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 170, 1, 0.57, 0.57 );
setScaleKey( spep_1 -3 + 172, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 174, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 176, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 178, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 180, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 182, 1, 0.33, 0.33 );
setScaleKey( spep_1 -3 + 184, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 186, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 186, 1, 0.3, 0.3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 39, 1, 0 );
setRotateKey( spep_1 -3 + 40, 1, -41.5 );
setRotateKey( spep_1 -3 + 42, 1, -41.2 );
setRotateKey( spep_1 -3 + 44, 1, -40.9 );
setRotateKey( spep_1 -3 + 46, 1, -40.6 );
setRotateKey( spep_1 -3 + 48, 1, -40.3 );
setRotateKey( spep_1 -3 + 51, 1, -40 );
setRotateKey( spep_1 -3 + 52, 1, 6.3 );
setRotateKey( spep_1 -3 + 54, 1, 3 );
setRotateKey( spep_1 -3 + 56, 1, -0.2 );
setRotateKey( spep_1 -3 + 59, 1, -3.5 );
setRotateKey( spep_1 -3 + 60, 1, -49.2 );
setRotateKey( spep_1 -3 + 62, 1, -44.6 );
setRotateKey( spep_1 -3 + 65, 1, -40 );
setRotateKey( spep_1 -3 + 66, 1, -6.2 );
setRotateKey( spep_1 -3 + 75, 1, -6.2 );
setRotateKey( spep_1 -3 + 76, 1, -41.5 );
setRotateKey( spep_1 -3 + 78, 1, -41 );
setRotateKey( spep_1 -3 + 80, 1, -40.5 );
setRotateKey( spep_1 -3 + 83, 1, -40 );
setRotateKey( spep_1 -3 + 84, 1, -6.2 );
setRotateKey( spep_1 -3 + 89, 1, -6.2 );
setRotateKey( spep_1 -3 + 90, 1, -41.5 );
setRotateKey( spep_1 -3 + 92, 1, -41 );
setRotateKey( spep_1 -3 + 94, 1, -40.5 );
setRotateKey( spep_1 -3 + 97, 1, -40 );
setRotateKey( spep_1 -3 + 98, 1, 0 );
setRotateKey( spep_1 -3 + 100, 1, 0.5 );
setRotateKey( spep_1 -3 + 102, 1, 1 );
setRotateKey( spep_1 -3 + 104, 1, 1.6 );
setRotateKey( spep_1 -3 + 106, 1, 2.2 );
setRotateKey( spep_1 -3 + 109, 1, 2.8 );
setRotateKey( spep_1 -3 + 110, 1, -49.2 );
setRotateKey( spep_1 -3 + 112, 1, -48.3 );
setRotateKey( spep_1 -3 + 114, 1, -47.3 );
setRotateKey( spep_1 -3 + 116, 1, -46.4 );
setRotateKey( spep_1 -3 + 118, 1, -45.5 );
setRotateKey( spep_1 -3 + 120, 1, -44.5 );
setRotateKey( spep_1 -3 + 122, 1, -43.6 );
setRotateKey( spep_1 -3 + 124, 1, -42.7 );
setRotateKey( spep_1 -3 + 126, 1, -41.7 );
setRotateKey( spep_1 -3 + 128, 1, -40.8 );
setRotateKey( spep_1 -3 + 130, 1, -39.9 );
setRotateKey( spep_1 -3 + 132, 1, -38.9 );
setRotateKey( spep_1 -3 + 135, 1, -38 );
setRotateKey( spep_1 -3 + 136, 1, 5 );
setRotateKey( spep_1 -3 + 138, 1, 8.5 );
setRotateKey( spep_1 -3 + 140, 1, 11.5 );
setRotateKey( spep_1 -3 + 142, 1, 14 );
setRotateKey( spep_1 -3 + 150, 1, 14 );
setRotateKey( spep_1 -3 + 152, 1, 18.7 );
setRotateKey( spep_1 -3 + 154, 1, 23.2 );
setRotateKey( spep_1 -3 + 156, 1, 27.4 );
setRotateKey( spep_1 -3 + 158, 1, 31.3 );
setRotateKey( spep_1 -3 + 160, 1, 35 );
setRotateKey( spep_1 -3 + 162, 1, 38.5 );
setRotateKey( spep_1 -3 + 164, 1, 41.7 );
setRotateKey( spep_1 -3 + 166, 1, 44.6 );
setRotateKey( spep_1 -3 + 168, 1, 47.3 );
setRotateKey( spep_1 -3 + 170, 1, 49.7 );
setRotateKey( spep_1 -3 + 172, 1, 51.8 );
setRotateKey( spep_1 -3 + 174, 1, 53.8 );
setRotateKey( spep_1 -3 + 176, 1, 55.4 );
setRotateKey( spep_1 -3 + 178, 1, 56.8 );
setRotateKey( spep_1 -3 + 180, 1, 58 );
setRotateKey( spep_1 -3 + 182, 1, 58.9 );
setRotateKey( spep_1 -3 + 184, 1, 59.5 );
setRotateKey( spep_1 -3 + 186, 1, 59.9 );
setRotateKey( spep_1 + 186, 1, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 186, 0, 0, 0, 0, 190 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 182, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 30 -3, 1000 );  --ラッシュ音
playSe( spep_1 + 40 -3, 1001 );  --ラッシュ音
playSe( spep_1 + 50 -3, 1007 );  --ラッシュ音
playSe( spep_1 + 60 -3, 1000 );  --ラッシュ音
playSe( spep_1 + 70 -3, 1001 );  --ラッシュ音
playSe( spep_1 + 80 -3, 1001 );  --ラッシュ音
playSe( spep_1 + 90 -3, 1000 );  --ラッシュ音
playSe( spep_1 + 100 -3, 1001 );  --ラッシュ音
playSe( spep_1 + 126 -3, 8 );  --迫る音
playSe( spep_1 + 136 -3, 1011 );  --バキッ

-- ** 次の準備 ** --
spep_2 = spep_1 + 186;

------------------------------------------------------
-- 敵地面激突＆瞬間移動(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
idou_f = entryEffectLife( spep_2 + 22, SP_03, 44, 0x100, -1, 0, 0, 0 );  --敵地面激突＆瞬間移動(ef_003)
setEffMoveKey( spep_2 + 22, idou_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, idou_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 22, idou_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, idou_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 22, idou_f, 0 );
setEffRotateKey( spep_2 + 66, idou_f, 0 );
setEffAlphaKey( spep_2 + 22, idou_f, 255 );
setEffAlphaKey( spep_2 + 66, idou_f, 255 );

idou_b = entryEffectLife( spep_2 + 0, SP_04, 66, 0x80, -1, 0, 0, 0 );  --敵地面激突＆瞬間移動(ef_004)
setEffMoveKey( spep_2 + 0, idou_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, idou_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, idou_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, idou_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, idou_b, 0 );
setEffRotateKey( spep_2 + 66, idou_b, 0 );
setEffAlphaKey( spep_2 + 0, idou_b, 255 );
setEffAlphaKey( spep_2 + 66, idou_b, 255 );

-- ** 書き文字エントリー ** --
ctdogo = entryEffectLife( spep_2 + 30 -3,  10018, 28, 0x100, -1, 0, -65.8, 322.3 );  --ドゴォン
setEffMoveKey( spep_2 + 30 -3, ctdogo, -65.8, 322.3 , 0 );
setEffMoveKey( spep_2 + 32 -3, ctdogo, -65, 320.4 , 0 );
setEffMoveKey( spep_2 + 34 -3, ctdogo, -62.9, 319.1 , 0 );
setEffMoveKey( spep_2 + 36 -3, ctdogo, -66.8, 318.9 , 0 );
setEffMoveKey( spep_2 + 38 -3, ctdogo, -63.7, 319.2 , 0 );
setEffMoveKey( spep_2 + 40 -3, ctdogo, -65.2, 319.9 , 0 );
setEffMoveKey( spep_2 + 42 -3, ctdogo, -64, 319.7 , 0 );
setEffMoveKey( spep_2 + 44 -3, ctdogo, -66.1, 319.8 , 0 );
setEffMoveKey( spep_2 + 46 -3, ctdogo, -64, 319.7 , 0 );
setEffMoveKey( spep_2 + 48 -3, ctdogo, -66.1, 319.8 , 0 );
setEffMoveKey( spep_2 + 50 -3, ctdogo, -64, 319.7 , 0 );
setEffMoveKey( spep_2 + 52 -3, ctdogo, -66.1, 319.8 , 0 );
setEffMoveKey( spep_2 + 54 -3, ctdogo, -64, 319.7 , 0 );
setEffMoveKey( spep_2 + 56 -3, ctdogo, -66.1, 319.8 , 0 );
setEffMoveKey( spep_2 + 58 -3, ctdogo, -64, 319.7 , 0 );

setEffScaleKey( spep_2 + 30 -3, ctdogo, 1.06, 1.06 );
setEffScaleKey( spep_2 + 32 -3, ctdogo, 2.28, 2.28 );
setEffScaleKey( spep_2 + 34 -3, ctdogo, 2.89, 2.89 );
setEffScaleKey( spep_2 + 36 -3, ctdogo, 2.75, 2.75 );
setEffScaleKey( spep_2 + 38 -3, ctdogo, 2.61, 2.61 );
setEffScaleKey( spep_2 + 40 -3, ctdogo, 2.47, 2.47 );
setEffScaleKey( spep_2 + 42 -3, ctdogo, 2.34, 2.34 );
setEffScaleKey( spep_2 + 58 -3, ctdogo, 2.34, 2.34 );

setEffRotateKey( spep_2 + 30 -3, ctdogo, -32.7 );
setEffRotateKey( spep_2 + 32 -3, ctdogo, -46.1 );
setEffRotateKey( spep_2 + 34 -3, ctdogo, -38.7 );
setEffRotateKey( spep_2 + 36 -3, ctdogo, -24.2 );
setEffRotateKey( spep_2 + 38 -3, ctdogo, -32.9 );
setEffRotateKey( spep_2 + 40 -3, ctdogo, -43.6 );
setEffRotateKey( spep_2 + 42 -3, ctdogo, -32.7 );
setEffRotateKey( spep_2 + 58 -3, ctdogo, -32.7 );

setEffAlphaKey( spep_2 + 30 -3, ctdogo, 255 );
setEffAlphaKey( spep_2 + 52 -3, ctdogo, 255 );
setEffAlphaKey( spep_2 + 54 -3, ctdogo, 170 );
setEffAlphaKey( spep_2 + 56 -3, ctdogo, 85 );
setEffAlphaKey( spep_2 + 58 -3, ctdogo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 30, 1, 0 );
changeAnime( spep_2 + 0, 1, 105 );

setMoveKey( spep_2 + 0, 1, -187.5, 1238 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -150.7, 1117.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -115.6, 1002.9 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -82.2, 893.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -50.3, 789.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -20.1, 690.7 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 8.5, 596.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 35.7, 508 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 61.4, 424 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 85.5, 344.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 108.2, 270.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 129.5, 201.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 149.2, 136.4 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 167.5, 76.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 167.5, 76.6 , 0 );

setScaleKey( spep_2 + 0, 1, 4.99, 4.99 );
setScaleKey( spep_2 -3 + 4, 1, 4.51, 4.51 );
setScaleKey( spep_2 -3 + 6, 1, 4.05, 4.05 );
setScaleKey( spep_2 -3 + 8, 1, 3.61, 3.61 );
setScaleKey( spep_2 -3 + 10, 1, 3.2, 3.2 );
setScaleKey( spep_2 -3 + 12, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 14, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 16, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 18, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 20, 1, 1.42, 1.42 );
setScaleKey( spep_2 -3 + 22, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 24, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 26, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 28, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 30, 1, 0.35, 0.35 );

setRotateKey( spep_2 + 0, 1, -0.8 );
setRotateKey( spep_2 -3 + 30, 1, -0.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 66, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 52, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 22, 4 );  --現れる
playSe( spep_2 + 30 -3, 1023 );  --ドゴォン

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;

------------------------------------------------------
-- 顔アップ気溜め(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_3 + 0, SP_05, 116, 0x100, -1, 0, 0, 0 );  --気溜め(ef_005)
setEffMoveKey( spep_3 + 0, kidame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, kidame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kidame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 116, kidame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidame, 0 );
setEffRotateKey( spep_3 + 116, kidame, 0 );
setEffAlphaKey( spep_3 + 0, kidame, 255 );
setEffAlphaKey( spep_3 + 116, kidame, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 0, 906, 116, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen2, 76, 20 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_3 + 116, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 116, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 116, shuchusen2, 255 );

spep_x = spep_3 + 0;
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

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 32, 0, 0, 0, 0, 180 );  --薄い黒　背景
entryFadeBg( spep_3 + 0, 32, 86, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 106, 8, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 118;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_4 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;

------------------------------------------------------
-- ビーム発射(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_5 + 0, SP_06, 86, 0x100, -1, 0, 0, 0 );  --ビーム発射(ef_006)
setEffMoveKey( spep_5 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 86, hassha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, hassha, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hassha, 0 );
setEffRotateKey( spep_5 + 86, hassha, 0 );
setEffAlphaKey( spep_5 + 0, hassha, 255 );
setEffAlphaKey( spep_5 + 84, hassha, 255 );
setEffAlphaKey( spep_5 + 85, hassha, 255 );
setEffAlphaKey( spep_5 + 86, hassha, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen3, 86, 20 );

setEffMoveKey( spep_5 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 86, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_5 + 86, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 86, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 84, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 85, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 86, shuchusen3, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_5 + 10 -3,  10012, 48, 0x100, -1, 0, 9.9, 375.2 );  --ズオッ
setEffMoveKey( spep_5 + 10 -3, ctzuo, 9.9, 375.2 , 0 );
setEffMoveKey( spep_5 + 12 -3, ctzuo, 62.9, 393.5 , 0 );
setEffMoveKey( spep_5 + 14 -3, ctzuo, 61.3, 390 , 0 );
setEffMoveKey( spep_5 + 16 -3, ctzuo, 70.5, 395.8 , 0 );
setEffMoveKey( spep_5 + 18 -3, ctzuo, 68.9, 392.3 , 0 );
setEffMoveKey( spep_5 + 20 -3, ctzuo, 78.2, 398.1 , 0 );
setEffMoveKey( spep_5 + 22 -3, ctzuo, 76.6, 394.6 , 0 );
setEffMoveKey( spep_5 + 24 -3, ctzuo, 85.8, 400.4 , 0 );
setEffMoveKey( spep_5 + 26 -3, ctzuo, 84.2, 396.9 , 0 );
setEffMoveKey( spep_5 + 28 -3, ctzuo, 93.4, 402.7 , 0 );
setEffMoveKey( spep_5 + 30 -3, ctzuo, 91.8, 399.2 , 0 );
setEffMoveKey( spep_5 + 32 -3, ctzuo, 101, 405 , 0 );
setEffMoveKey( spep_5 + 34 -3, ctzuo, 99.4, 401.5 , 0 );
setEffMoveKey( spep_5 + 36 -3, ctzuo, 108.7, 407.3 , 0 );
setEffMoveKey( spep_5 + 38 -3, ctzuo, 107.1, 403.8 , 0 );
setEffMoveKey( spep_5 + 40 -3, ctzuo, 116.3, 409.6 , 0 );
setEffMoveKey( spep_5 + 42 -3, ctzuo, 114.7, 406.1 , 0 );
setEffMoveKey( spep_5 + 44 -3, ctzuo, 123.9, 411.9 , 0 );
setEffMoveKey( spep_5 + 46 -3, ctzuo, 122.3, 408.4 , 0 );
setEffMoveKey( spep_5 + 48 -3, ctzuo, 131.5, 414.2 , 0 );
setEffMoveKey( spep_5 + 50 -3, ctzuo, 130, 410.7 , 0 );
setEffMoveKey( spep_5 + 52 -3, ctzuo, 208.2, 488.9 , 0 );
setEffMoveKey( spep_5 + 54 -3, ctzuo, 270, 553.1 , 0 );
setEffMoveKey( spep_5 + 56 -3, ctzuo, 354.1, 636.2 , 0 );
setEffMoveKey( spep_5 + 58 -3, ctzuo, 426.9, 709.8 , 0 );

setEffScaleKey( spep_5 + 10 -3, ctzuo, 0.43, 0.43 );
setEffScaleKey( spep_5 + 12 -3, ctzuo, 0.8 + 2, 0.8 + 2 );
setEffScaleKey( spep_5 + 50 -3, ctzuo, 0.8 + 2, 0.8 + 2 );
setEffScaleKey( spep_5 + 52 -3, ctzuo, 1.23 + 2, 1.23 + 2 );
setEffScaleKey( spep_5 + 54 -3, ctzuo, 1.65 + 2, 1.65 + 2 );
setEffScaleKey( spep_5 + 56 -3, ctzuo, 2.08 + 2, 2.08 + 2 );
setEffScaleKey( spep_5 + 58 -3, ctzuo, 2.5 + 2, 2.5 + 2 );

setEffRotateKey( spep_5 + 10 -3, ctzuo, 37 );
setEffRotateKey( spep_5 + 58 -3, ctzuo, 37 );

setEffAlphaKey( spep_5 + 10 -3, ctzuo, 128 );
setEffAlphaKey( spep_5 + 12 -3, ctzuo, 255 );
setEffAlphaKey( spep_5 + 50 -3, ctzuo, 255 );
setEffAlphaKey( spep_5 + 52 -3, ctzuo, 191 );
setEffAlphaKey( spep_5 + 54 -3, ctzuo, 128 );
setEffAlphaKey( spep_5 + 56 -3, ctzuo, 64 );
setEffAlphaKey( spep_5 + 58 -3, ctzuo, 0 );

-- ** 音 ** --
playSe( spep_5 + 10 -3, 1022 );  --発射

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 86, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 86;

------------------------------------------------------
-- ビーム発射　別アングル(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha1 = entryEffectLife( spep_6 + 0, SP_07, 66, 0x100, -1, 0, 0, 0 );  --ビーム発射　別アングル(ef_007)
setEffMoveKey( spep_6 + 0, hassha1, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, hassha1, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hassha1, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, hassha1, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hassha1, 0 );
setEffRotateKey( spep_6 + 66, hassha1, 0 );
setEffAlphaKey( spep_6 + 0, hassha1, 255 );
setEffAlphaKey( spep_6 + 66, hassha1, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 0, 906, 66, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen4, 66, 20 );

setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_6 + 66, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen4, 0 );
setEffRotateKey( spep_6 + 66, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 66, shuchusen4, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_6 + 58, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 0, 1021 );  --気弾近づく

-- ** 次の準備 ** --
spep_7 = spep_6 + 66;

------------------------------------------------------
-- 敵爆発(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --敵爆発(ef_008)
setEffMoveKey( spep_7 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_7 + 136, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_7 + 136, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bakuha, 0 );
setEffRotateKey( spep_7 + 136, bakuha, 0 );
setEffAlphaKey( spep_7 + 0, bakuha, 255 );
setEffAlphaKey( spep_7 + 136, bakuha, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_7 + 0, 906, 136, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen5, 66, 20 );

setEffMoveKey( spep_7 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 136, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_7 + 136, shuchusen5, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen5, 0 );
setEffRotateKey( spep_7 + 136, shuchusen5, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 136, shuchusen5, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 136, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_7 + 0, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 22 );
endPhase( spep_7 + 136 );

end
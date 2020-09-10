--セル(第二形態)_ビッグバンクラッシュ

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
SP_01 = 155087; --セル突進→パンチ；背景＆キャラ
SP_02 = 155088; --セル突進→パンチ：ヒットエフェクト
SP_03 = 155089; --セル追い越し→たたき落とし
SP_04 = 155090; --アオリ構図　セル手を開く
SP_05 = 155091; --気弾発射
SP_06 = 155092; --気弾接近
SP_07 = 155093; --爆発

--敵側

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
-- セル突進→パンチ；背景＆キャラ(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
punch = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --セル突進→パンチ；背景＆キャラ(ef_001)
setEffMoveKey( spep_0 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, punch, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, punch, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, punch, 0 );
setEffRotateKey( spep_0 + 96, punch, 0 );
setEffAlphaKey( spep_0 + 0, punch, 255 );
setEffAlphaKey( spep_0 + 96, punch, 255 );

hit = entryEffect( spep_0 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --セル突進→パンチ：ヒットエフェクト(ef_002)
setEffMoveKey( spep_0 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, hit, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, hit, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, hit, 0 );
setEffRotateKey( spep_0 + 96, hit, 0 );
setEffAlphaKey( spep_0 + 0, hit, 255 );
setEffAlphaKey( spep_0 + 96, hit, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ダッシュ
SE0 = playSe( spep_0 + 0, 9 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 38; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 42, 1, 1 );
setDisp( spep_0 -3 + 66, 1, 0 );
changeAnime( spep_0 -3 + 42, 1, 118 );
changeAnime( spep_0 -3 + 58, 1, 107 );

setMoveKey( spep_0 -3 + 42, 1, 720.2, -571.2 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 655.4, -520.4 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 590.6, -469.6 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 525.8, -418.8 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 461, -368.1 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 396.3, -317.3 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 331.5, -266.5 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 266.8, -215.8 , 0 );
setMoveKey( spep_0 -3 + 57, 1, 266.8, -215.8 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 98.9, -259.8 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 176.8, -300 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 340.6, -377.7 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 343.9, -382 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 443.9, -482 , 0 );

setScaleKey( spep_0 -3 + 42, 1, 7.2, 7.2 );
setScaleKey( spep_0 -3 + 44, 1, 6.88, 6.88 );
setScaleKey( spep_0 -3 + 46, 1, 6.56, 6.56 );
setScaleKey( spep_0 -3 + 48, 1, 6.24, 6.24 );
setScaleKey( spep_0 -3 + 50, 1, 5.91, 5.91 );
setScaleKey( spep_0 -3 + 52, 1, 5.59, 5.59 );
setScaleKey( spep_0 -3 + 54, 1, 5.27, 5.27 );
setScaleKey( spep_0 -3 + 56, 1, 4.95, 4.95 );
setScaleKey( spep_0 -3 + 57, 1, 4.95, 4.95 );
setScaleKey( spep_0 -3 + 58, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 60, 1, 2.1, 2.1 );
setScaleKey( spep_0 -3 + 62, 1, 2.55, 2.55 );
setScaleKey( spep_0 -3 + 64, 1, 3, 3 );
setScaleKey( spep_0 -3 + 66, 1, 3, 3 );

setRotateKey( spep_0 -3 + 42, 1, 0 );
setRotateKey( spep_0 -3 + 57, 1, 0 );
setRotateKey( spep_0 -3 + 58, 1, -10 );
setRotateKey( spep_0 -3 + 66, 1, -10 );

-- ** 白フェード ** --
entryFade( spep_0 + 96 -14, 8, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--パンチ
playSe( spep_0 + 57, 1003 );
setSeVolume( spep_0 + 57, 1003, 71 );
SE1 = playSe( spep_0 + 62, 1187 );
setSeVolume( spep_0 + 62, 1187, 71 );
playSe( spep_0 + 62, 1010 );
playSe( spep_0 + 64, 1009 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

--パンチ
setSeVolume( spep_1 + 7, 1187, 71 );
setSeVolume( spep_1 + 12, 1187, 58 );
setSeVolume( spep_1 + 18, 1187, 42 );
setSeVolume( spep_1 + 24, 1187, 36 );
setSeVolume( spep_1 + 28, 1187, 24 );
setSeVolume( spep_1 + 34, 1187, 12 );
setSeVolume( spep_1 + 38, 1187, 0 );
stopSe( spep_1 + 38, SE1, 0 );

--敵飛んでいく
playSe( spep_1 + 68, 1072 );
setSeVolume( spep_1 + 68, 1187, 0 );
setSeVolume( spep_1 + 87, 1187, 0 );

SE2 = playSe( spep_1 + 91, 1183 );
setSeVolume( spep_1 + 91, 1183, 79 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- セル追い越し→たたき落とし(120F)
------------------------------------------------------

-- ** エフェクト等 ** --
otosu = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --セル追い越し→たたき落とし(ef_003)
setEffMoveKey( spep_2 + 0, otosu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, otosu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, otosu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, otosu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, otosu, 0 );
setEffRotateKey( spep_2 + 120, otosu, 0 );
setEffAlphaKey( spep_2 + 0, otosu, 255 );
setEffAlphaKey( spep_2 + 120, otosu, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_2 -3 + 86,  10018, 14, 0x100, -1, 0, -107.5, 292.6 );  --ドゴン
setEffMoveKey( spep_2 -3 + 86, ctdogon, -107.5, 292.6 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctdogon, -117.2, 306.2 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctdogon, -99.5, 309.1 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctdogon, -110.5, 312.5 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctdogon, -98.3, 324.3 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctdogon, -146.4, 403.8 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctdogon, -158.3, 469.6 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctdogon, -190.1, 541.8 , 0 );

setEffScaleKey( spep_2 -3 + 86, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_2 -3 + 88, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_2 -3 + 90, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_2 -3 + 92, ctdogon, 3.06, 3.06 );
setEffScaleKey( spep_2 -3 + 94, ctdogon, 3.15, 3.15 );
setEffScaleKey( spep_2 -3 + 96, ctdogon, 3.72, 3.72 );
setEffScaleKey( spep_2 -3 + 98, ctdogon, 4.29, 4.29 );
setEffScaleKey( spep_2 -3 + 100, ctdogon, 4.86, 4.86 );

setEffRotateKey( spep_2 -3 + 86, ctdogon, -42 );
setEffRotateKey( spep_2 -3 + 100, ctdogon, -42 );

setEffAlphaKey( spep_2 -3 + 86, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 94, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 96, ctdogon, 170 );
setEffAlphaKey( spep_2 -3 + 98, ctdogon, 85 );
setEffAlphaKey( spep_2 -3 + 100, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 104, 1, 0 );
changeAnime( spep_2 -3 + 0, 1, 106 );
changeAnime( spep_2 -3 + 86, 1, 7 );

setMoveKey( spep_2 + 0, 1, -482.8, -399.4 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -319.4, -309.1 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -154, -219.1 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 6.2, -130.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 20, -121.7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 31.1, -114.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 39.1, -109 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 44.3, -105.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 47.3, -101.7 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 48, -99.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 46.6, -98.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 41.8, -98.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 39.2, -98.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 36.2, -96.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 29.6, -97.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 24.5, -97.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 18.6, -97.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -190.7, -201.3 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -396.2, -303.3 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -598.7, -405 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -796, -502.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -989.7, -598 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -1111.1, -660.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -1109.2, -656.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -1107.2, -652 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -1105.3, -647.6 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -1103.3, -643.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -1101.4, -638.9 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -1099.4, -634.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -1097.5, -630.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -1098.6, -630.2 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -1099.7, -630.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -1100.7, -630.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -1101.8, -630.2 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -953.7, -548.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -805.6, -467.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -657.4, -385.8 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -509.3, -304.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -361.2, -222.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -209.6, -141.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -58, -59.8 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 93.7, 21.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 85.6, -86.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 9.6, -252.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -32.2, -341.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -69.2, -410.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -105.2, -484.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -135.9, -545 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -170.2, -610.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -186.3, -655.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -215.5, -709.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -415.5, -909.2 , 0 );

setScaleKey( spep_2 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 4, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 6, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 8, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 10, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 12, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 16, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 18, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 20, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 22, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 24, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 26, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 28, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 30, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 32, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 34, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 36, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 38, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 40, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 44, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 85, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 86, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 88, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 90, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 92, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 94, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 96, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 98, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 100, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 102, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 104, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 104, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 120 -8, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 122, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵飛んでいく
setSeVolume( spep_2 + 0, 1187, 100 );

setSeVolume( spep_2 + 45, 1183, 79 );
setSeVolume( spep_2 + 52, 1183, 62 );
setSeVolume( spep_2 + 58, 1183, 46 );
setSeVolume( spep_2 + 64, 1183, 28 );
setSeVolume( spep_2 + 72, 1183, 14 );
setSeVolume( spep_2 + 77, 1183, 0 );
stopSe( spep_2 + 77, SE2, 0 );

--敵を追い越す
SE3 = playSe( spep_2 + 16, 1109 );
setSeVolume( spep_2 + 16, 1109, 79 );
setSeVolume( spep_2 + 32, 1183, 79 );
setSeVolume( spep_2 + 36, 1183, 43 );
setSeVolume( spep_2 + 40, 1183, 0 );
stopSe( spep_2 + 40, SE3, 0 );

SE4 = playSe( spep_2 + 26, 44 );
stopSe( spep_2 + 61, SE4, 14 );

--叩き落とし
playSe( spep_2 + 72, 1004 );
playSe( spep_2 + 79, 1001 );
setSeVolume( spep_2 + 79, 1001, 79 );

SE5 = playSe( spep_2 + 83, 1123 );
setSeVolume( spep_2 + 83, 1123, 56 );

playSe( spep_2 + 84, 1009 );
playSe( spep_2 + 90, 1110 );
setSeVolume( spep_2 + 90, 1110, 79 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 120;

------------------------------------------------------
-- アオリ構図　セル手を開く(106F)
------------------------------------------------------

-- ** エフェクト等 ** --
hiraku = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --アオリ構図　セル手を開く(ef_004)
setEffMoveKey( spep_3 + 0, hiraku, 0, 0 , 0 );
setEffMoveKey( spep_3 + 106, hiraku, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hiraku, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, hiraku, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hiraku, 0 );
setEffRotateKey( spep_3 + 106, hiraku, 0 );
setEffAlphaKey( spep_3 + 0, hiraku, 255 );
setEffAlphaKey( spep_3 + 106, hiraku, 255 );

spep_x = spep_3 + 16 -6;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 2000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 26 -3, 906, 80 +3, 0x100, -1, 0, 0, 0, 1000 );  --集中線
setEffShake( spep_3 + 26 -3, shuchusen1, 80 +3, 20 );

setEffMoveKey( spep_3 + 26 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 106, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 26 -3, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_3 + 106, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_3 + 26 -3, shuchusen1, 0 );
setEffRotateKey( spep_3 + 106, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 26 -3, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 106, shuchusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFade( spep_3 + 106 -12, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 108, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--叩き落とし
setSeVolume( spep_3 + 4, 1123, 56 );
setSeVolume( spep_3 + 14, 1123, 36 );
setSeVolume( spep_3 + 22, 1123, 18 );
setSeVolume( spep_3 + 26, 1123, 0 );
stopSe( spep_3 + 26, SE5, 0 );

--見下ろし
playSe( spep_3 + 4, 8 );

--気弾発射
SE6 = playSe( spep_3 + 72, 1193 );
setSeVolume( spep_3 + 72, 1193, 0 );

--画面切り替え
playSe( spep_3 + 76, 1072 );
setSeVolume( spep_3 + 76, 1072, 0 );
setSeVolume( spep_3 + 95, 1072, 10 );
setSeVolume( spep_3 + 98, 1072, 36 );
setSeVolume( spep_3 + 100, 1072, 72 );
setSeVolume( spep_3 + 102, 1072, 100 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_4 = spep_3 + 106;

------------------------------------------------------
-- 気弾発射(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --気弾発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 66, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 66, hassha, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 -3 + 26,  10012, 16, 0x100, -1, 0, -75.6, 344.8 );  --ズオッ
setEffMoveKey( spep_4 -3 + 26, ctzuo, -75.6, 344.8 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctzuo, -112.3, 402.3 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctzuo, -119.5, 400.1 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctzuo, -122.3, 407.5 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctzuo, -129.5, 405.3 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctzuo, -132.2, 412.7 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzuo, -139.4, 410.5 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctzuo, -142.2, 417.9 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctzuo, -149.4, 415.7 , 0 );

setEffScaleKey( spep_4 -3 + 26, ctzuo, 0.33 +0.7, 0.33 +0.7 );
setEffScaleKey( spep_4 -3 + 28, ctzuo, 0.6 +1.5, 0.6 +1.5 );
setEffScaleKey( spep_4 -3 + 42, ctzuo, 0.6 +1.5, 0.6 +1.5 );

setEffRotateKey( spep_4 -3 + 26, ctzuo, 10 );
setEffRotateKey( spep_4 -3 + 42, ctzuo, 10 );

setEffAlphaKey( spep_4 -3 + 26, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 28, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 42, ctzuo, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --白
entryFade( spep_4 + 22 -3, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白
entryFade( spep_4 + 66 -10, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 68, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾発射
setSeVolume( spep_4 + 36, 1193, 0 );
setSeVolume( spep_4 + 38, 1193, 18 );
setSeVolume( spep_4 + 42, 1193, 32 );
setSeVolume( spep_4 + 54, 1193, 56 );
setSeVolume( spep_4 + 66, 1193, 60 );

--気弾発射
playSe( spep_4 + 7, 1202 );
setSeVolume( spep_4 + 7, 1202, 0 );
setSeVolume( spep_4 + 21, 1202, 10 );
setSeVolume( spep_4 + 22, 1202, 98 );
setSeVolume( spep_4 + 23, 1202, 158 );

playSe( spep_4 + 7, 1145 );
setSeVolume( spep_4 + 7, 1145, 0 );
setSeVolume( spep_4 + 22, 1145, 10 );
setSeVolume( spep_4 + 28, 1145, 28 );
setSeVolume( spep_4 + 32, 1145, 42 );
setSeVolume( spep_4 + 35, 1145, 56 );

playSe( spep_4 + 20, 1201 );
setSeVolume( spep_4 + 20, 1201, 71 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 66;

------------------------------------------------------
-- 気弾接近(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
semaru = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --気弾接近(ef_006)
setEffMoveKey( spep_5 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, semaru, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, semaru, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru, 0 );
setEffRotateKey( spep_5 + 56, semaru, 0 );
setEffAlphaKey( spep_5 + 0, semaru, 255 );
setEffAlphaKey( spep_5 + 56, semaru, 255 );

-- ** 白フェード ** --
entryFade( spep_5 + 56 -16, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾発射
setSeVolume( spep_5 + 4, 1193, 68 );
setSeVolume( spep_5 + 16, 1193, 79 );
setSeVolume( spep_5 + 80, 1193, 79 );
setSeVolume( spep_5 + 84, 1193, 45 );
setSeVolume( spep_5 + 91, 1193, 0 );
stopSe( spep_5 + 91, SE6, 0 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- 爆発(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆発(ef_007)
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 176, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 176, finish, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_6 + 0, 906, 176, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen2, 176, 20 );

setEffMoveKey( spep_6 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_6 + 176, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_6 + 0, shuchusen2, 0 );
setEffRotateKey( spep_6 + 176, shuchusen2, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 176, shuchusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 178, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--爆発
playSe( spep_6 + 18 -10, 1159 );
playSe( spep_6 + 27 -10, 1023 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 60 );
endPhase( spep_6 + 176 -4 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- セル突進→パンチ；背景＆キャラ(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
punch = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --セル突進→パンチ；背景＆キャラ(ef_001)
setEffMoveKey( spep_0 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, punch, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, punch, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, punch, 0 );
setEffRotateKey( spep_0 + 96, punch, 0 );
setEffAlphaKey( spep_0 + 0, punch, 255 );
setEffAlphaKey( spep_0 + 96, punch, 255 );

hit = entryEffect( spep_0 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --セル突進→パンチ：ヒットエフェクト(ef_002)
setEffMoveKey( spep_0 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, hit, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, hit, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, hit, 0 );
setEffRotateKey( spep_0 + 96, hit, 0 );
setEffAlphaKey( spep_0 + 0, hit, 255 );
setEffAlphaKey( spep_0 + 96, hit, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ダッシュ
SE0 = playSe( spep_0 + 0, 9 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 38; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 42, 1, 1 );
setDisp( spep_0 -3 + 66, 1, 0 );
changeAnime( spep_0 -3 + 42, 1, 118 );
changeAnime( spep_0 -3 + 58, 1, 107 );

setMoveKey( spep_0 -3 + 42, 1, 720.2, -571.2 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 655.4, -520.4 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 590.6, -469.6 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 525.8, -418.8 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 461, -368.1 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 396.3, -317.3 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 331.5, -266.5 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 266.8, -215.8 , 0 );
setMoveKey( spep_0 -3 + 57, 1, 266.8, -215.8 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 98.9, -259.8 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 176.8, -300 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 340.6, -377.7 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 343.9, -382 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 443.9, -482 , 0 );

setScaleKey( spep_0 -3 + 42, 1, 7.2, 7.2 );
setScaleKey( spep_0 -3 + 44, 1, 6.88, 6.88 );
setScaleKey( spep_0 -3 + 46, 1, 6.56, 6.56 );
setScaleKey( spep_0 -3 + 48, 1, 6.24, 6.24 );
setScaleKey( spep_0 -3 + 50, 1, 5.91, 5.91 );
setScaleKey( spep_0 -3 + 52, 1, 5.59, 5.59 );
setScaleKey( spep_0 -3 + 54, 1, 5.27, 5.27 );
setScaleKey( spep_0 -3 + 56, 1, 4.95, 4.95 );
setScaleKey( spep_0 -3 + 57, 1, 4.95, 4.95 );
setScaleKey( spep_0 -3 + 58, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 60, 1, 2.1, 2.1 );
setScaleKey( spep_0 -3 + 62, 1, 2.55, 2.55 );
setScaleKey( spep_0 -3 + 64, 1, 3, 3 );
setScaleKey( spep_0 -3 + 66, 1, 3, 3 );

setRotateKey( spep_0 -3 + 42, 1, 0 );
setRotateKey( spep_0 -3 + 57, 1, 0 );
setRotateKey( spep_0 -3 + 58, 1, -10 );
setRotateKey( spep_0 -3 + 66, 1, -10 );

-- ** 白フェード ** --
entryFade( spep_0 + 96 -14, 8, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--パンチ
playSe( spep_0 + 57, 1003 );
setSeVolume( spep_0 + 57, 1003, 71 );
SE1 = playSe( spep_0 + 62, 1187 );
setSeVolume( spep_0 + 62, 1187, 71 );
playSe( spep_0 + 62, 1010 );
playSe( spep_0 + 64, 1009 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

--パンチ
setSeVolume( spep_1 + 7, 1187, 71 );
setSeVolume( spep_1 + 12, 1187, 58 );
setSeVolume( spep_1 + 18, 1187, 42 );
setSeVolume( spep_1 + 24, 1187, 36 );
setSeVolume( spep_1 + 28, 1187, 24 );
setSeVolume( spep_1 + 34, 1187, 12 );
setSeVolume( spep_1 + 38, 1187, 0 );
stopSe( spep_1 + 38, SE1, 0 );

--敵飛んでいく
playSe( spep_1 + 68, 1072 );
setSeVolume( spep_1 + 68, 1187, 0 );
setSeVolume( spep_1 + 87, 1187, 0 );

SE2 = playSe( spep_1 + 91, 1183 );
setSeVolume( spep_1 + 91, 1183, 79 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- セル追い越し→たたき落とし(120F)
------------------------------------------------------

-- ** エフェクト等 ** --
otosu = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --セル追い越し→たたき落とし(ef_003)
setEffMoveKey( spep_2 + 0, otosu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, otosu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, otosu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, otosu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, otosu, 0 );
setEffRotateKey( spep_2 + 120, otosu, 0 );
setEffAlphaKey( spep_2 + 0, otosu, 255 );
setEffAlphaKey( spep_2 + 120, otosu, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_2 -3 + 86,  10018, 14, 0x100, -1, 0, -107.5, 292.6 );  --ドゴン
setEffMoveKey( spep_2 -3 + 86, ctdogon, -107.5, 292.6 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctdogon, -117.2, 306.2 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctdogon, -99.5, 309.1 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctdogon, -110.5, 312.5 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctdogon, -98.3, 324.3 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctdogon, -146.4, 403.8 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctdogon, -158.3, 469.6 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctdogon, -190.1, 541.8 , 0 );

setEffScaleKey( spep_2 -3 + 86, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_2 -3 + 88, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_2 -3 + 90, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_2 -3 + 92, ctdogon, 3.06, 3.06 );
setEffScaleKey( spep_2 -3 + 94, ctdogon, 3.15, 3.15 );
setEffScaleKey( spep_2 -3 + 96, ctdogon, 3.72, 3.72 );
setEffScaleKey( spep_2 -3 + 98, ctdogon, 4.29, 4.29 );
setEffScaleKey( spep_2 -3 + 100, ctdogon, 4.86, 4.86 );

setEffRotateKey( spep_2 -3 + 86, ctdogon, -42 );
setEffRotateKey( spep_2 -3 + 100, ctdogon, -42 );

setEffAlphaKey( spep_2 -3 + 86, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 94, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 96, ctdogon, 170 );
setEffAlphaKey( spep_2 -3 + 98, ctdogon, 85 );
setEffAlphaKey( spep_2 -3 + 100, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 104, 1, 0 );
changeAnime( spep_2 -3 + 0, 1, 106 );
changeAnime( spep_2 -3 + 86, 1, 7 );

setMoveKey( spep_2 + 0, 1, -482.8, -399.4 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -319.4, -309.1 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -154, -219.1 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 6.2, -130.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 20, -121.7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 31.1, -114.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 39.1, -109 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 44.3, -105.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 47.3, -101.7 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 48, -99.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 46.6, -98.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 41.8, -98.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 39.2, -98.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 36.2, -96.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 29.6, -97.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 24.5, -97.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 18.6, -97.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -190.7, -201.3 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -396.2, -303.3 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -598.7, -405 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -796, -502.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -989.7, -598 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -1111.1, -660.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -1109.2, -656.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -1107.2, -652 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -1105.3, -647.6 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -1103.3, -643.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -1101.4, -638.9 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -1099.4, -634.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -1097.5, -630.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -1098.6, -630.2 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -1099.7, -630.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -1100.7, -630.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -1101.8, -630.2 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -953.7, -548.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -805.6, -467.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -657.4, -385.8 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -509.3, -304.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -361.2, -222.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -209.6, -141.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -58, -59.8 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 93.7, 21.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 85.6, -86.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 9.6, -252.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -32.2, -341.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -69.2, -410.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -105.2, -484.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -135.9, -545 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -170.2, -610.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -186.3, -655.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -215.5, -709.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -415.5, -909.2 , 0 );

setScaleKey( spep_2 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 4, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 6, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 8, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 10, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 12, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 16, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 18, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 20, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 22, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 24, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 26, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 28, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 30, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 32, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 34, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 36, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 38, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 40, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 44, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 85, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 86, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 88, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 90, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 92, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 94, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 96, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 98, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 100, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 102, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 104, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 104, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 120 -8, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 122, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵飛んでいく
setSeVolume( spep_2 + 0, 1187, 100 );

setSeVolume( spep_2 + 45, 1183, 79 );
setSeVolume( spep_2 + 52, 1183, 62 );
setSeVolume( spep_2 + 58, 1183, 46 );
setSeVolume( spep_2 + 64, 1183, 28 );
setSeVolume( spep_2 + 72, 1183, 14 );
setSeVolume( spep_2 + 77, 1183, 0 );
stopSe( spep_2 + 77, SE2, 0 );

--敵を追い越す
SE3 = playSe( spep_2 + 16, 1109 );
setSeVolume( spep_2 + 16, 1109, 79 );
setSeVolume( spep_2 + 32, 1183, 79 );
setSeVolume( spep_2 + 36, 1183, 43 );
setSeVolume( spep_2 + 40, 1183, 0 );
stopSe( spep_2 + 40, SE3, 0 );

SE4 = playSe( spep_2 + 26, 44 );
stopSe( spep_2 + 61, SE4, 14 );

--叩き落とし
playSe( spep_2 + 72, 1004 );
playSe( spep_2 + 79, 1001 );
setSeVolume( spep_2 + 79, 1001, 79 );

SE5 = playSe( spep_2 + 83, 1123 );
setSeVolume( spep_2 + 83, 1123, 56 );

playSe( spep_2 + 84, 1009 );
playSe( spep_2 + 90, 1110 );
setSeVolume( spep_2 + 90, 1110, 79 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 120;

------------------------------------------------------
-- アオリ構図　セル手を開く(106F)
------------------------------------------------------

-- ** エフェクト等 ** --
hiraku = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --アオリ構図　セル手を開く(ef_004)
setEffMoveKey( spep_3 + 0, hiraku, 0, 0 , 0 );
setEffMoveKey( spep_3 + 106, hiraku, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hiraku, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, hiraku, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hiraku, 0 );
setEffRotateKey( spep_3 + 106, hiraku, 0 );
setEffAlphaKey( spep_3 + 0, hiraku, 255 );
setEffAlphaKey( spep_3 + 106, hiraku, 255 );

spep_x = spep_3 + 16 -6;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 2000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 26 -3, 906, 80 +3, 0x100, -1, 0, 0, 0, 1000 );  --集中線
setEffShake( spep_3 + 26 -3, shuchusen1, 80 +3, 20 );

setEffMoveKey( spep_3 + 26 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 106, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 26 -3, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_3 + 106, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_3 + 26 -3, shuchusen1, 0 );
setEffRotateKey( spep_3 + 106, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 26 -3, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 106, shuchusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFade( spep_3 + 106 -12, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 108, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--叩き落とし
setSeVolume( spep_3 + 4, 1123, 56 );
setSeVolume( spep_3 + 14, 1123, 36 );
setSeVolume( spep_3 + 22, 1123, 18 );
setSeVolume( spep_3 + 26, 1123, 0 );
stopSe( spep_3 + 26, SE5, 0 );

--見下ろし
playSe( spep_3 + 4, 8 );

--気弾発射
SE6 = playSe( spep_3 + 72, 1193 );
setSeVolume( spep_3 + 72, 1193, 0 );

--画面切り替え
playSe( spep_3 + 76, 1072 );
setSeVolume( spep_3 + 76, 1072, 0 );
setSeVolume( spep_3 + 95, 1072, 10 );
setSeVolume( spep_3 + 98, 1072, 36 );
setSeVolume( spep_3 + 100, 1072, 72 );
setSeVolume( spep_3 + 102, 1072, 100 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_4 = spep_3 + 106;

------------------------------------------------------
-- 気弾発射(66F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --気弾発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 66, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 66, hassha, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 -3 + 26,  10012, 16, 0x100, -1, 0, -75.6, 344.8 );  --ズオッ
setEffMoveKey( spep_4 -3 + 26, ctzuo, -75.6, 344.8 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctzuo, -112.3, 402.3 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctzuo, -119.5, 400.1 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctzuo, -122.3, 407.5 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctzuo, -129.5, 405.3 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctzuo, -132.2, 412.7 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzuo, -139.4, 410.5 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctzuo, -142.2, 417.9 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctzuo, -149.4, 415.7 , 0 );

setEffScaleKey( spep_4 -3 + 26, ctzuo, 0.33 +0.7, 0.33 +0.7 );
setEffScaleKey( spep_4 -3 + 28, ctzuo, 0.6 +1.5, 0.6 +1.5 );
setEffScaleKey( spep_4 -3 + 42, ctzuo, 0.6 +1.5, 0.6 +1.5 );

setEffRotateKey( spep_4 -3 + 26, ctzuo, 10 );
setEffRotateKey( spep_4 -3 + 42, ctzuo, 10 );

setEffAlphaKey( spep_4 -3 + 26, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 28, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 42, ctzuo, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --白
entryFade( spep_4 + 22 -3, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白
entryFade( spep_4 + 66 -10, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 68, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾発射
setSeVolume( spep_4 + 36, 1193, 0 );
setSeVolume( spep_4 + 38, 1193, 18 );
setSeVolume( spep_4 + 42, 1193, 32 );
setSeVolume( spep_4 + 54, 1193, 56 );
setSeVolume( spep_4 + 66, 1193, 60 );

--気弾発射
playSe( spep_4 + 7, 1202 );
setSeVolume( spep_4 + 7, 1202, 0 );
setSeVolume( spep_4 + 21, 1202, 10 );
setSeVolume( spep_4 + 22, 1202, 98 );
setSeVolume( spep_4 + 23, 1202, 158 );

playSe( spep_4 + 7, 1145 );
setSeVolume( spep_4 + 7, 1145, 0 );
setSeVolume( spep_4 + 22, 1145, 10 );
setSeVolume( spep_4 + 28, 1145, 28 );
setSeVolume( spep_4 + 32, 1145, 42 );
setSeVolume( spep_4 + 35, 1145, 56 );

playSe( spep_4 + 20, 1201 );
setSeVolume( spep_4 + 20, 1201, 71 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 66;

------------------------------------------------------
-- 気弾接近(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
semaru = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --気弾接近(ef_006)
setEffMoveKey( spep_5 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, semaru, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, semaru, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru, 0 );
setEffRotateKey( spep_5 + 56, semaru, 0 );
setEffAlphaKey( spep_5 + 0, semaru, 255 );
setEffAlphaKey( spep_5 + 56, semaru, 255 );

-- ** 白フェード ** --
entryFade( spep_5 + 56 -16, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾発射
setSeVolume( spep_5 + 4, 1193, 68 );
setSeVolume( spep_5 + 16, 1193, 79 );
setSeVolume( spep_5 + 80, 1193, 79 );
setSeVolume( spep_5 + 84, 1193, 45 );
setSeVolume( spep_5 + 91, 1193, 0 );
stopSe( spep_5 + 91, SE6, 0 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- 爆発(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆発(ef_007)
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 176, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 176, finish, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_6 + 0, 906, 176, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen2, 176, 20 );

setEffMoveKey( spep_6 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_6 + 176, shuchusen2, 1.3, 1.3 );

setEffRotateKey( spep_6 + 0, shuchusen2, 0 );
setEffRotateKey( spep_6 + 176, shuchusen2, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_6 + 176, shuchusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 178, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--爆発
playSe( spep_6 + 18 -10, 1159 );
playSe( spep_6 + 27 -10, 1023 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 60 );
endPhase( spep_6 + 176 -4 );

end
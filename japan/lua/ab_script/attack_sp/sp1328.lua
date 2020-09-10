--人造人間16号_ロケットパンチ

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
SP_01 = 153948; --突進
SP_02 = 153949; --格闘前
SP_03 = 153951; --格闘後
SP_04 = 153952; --構え
SP_05 = 153953; --構え2
SP_06 = 153954; --発射
SP_07 = 153956; --被弾前
SP_08 = 153957; --背景
SP_09 = 153958; --背景

--敵側
SP_02r = 153950; --格闘前
SP_06r = 153955; --発射

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

tosshin_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 突進(117F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0 + 0, SP_01, 117, 0x80, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 117, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 117, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 117, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 117, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 116, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 116, 20 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen1, 1.06, 1.06 );
setEffScaleKey( spep_0 + 116, shuchusen1, 1.06, 1.06 );
setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 116, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 116, shuchusen1, 255 );

-- ** 書き文字 ** --
ctdon = entryEffectLife( spep_0 + 0,  10019, 24, 0x100, -1, 0, -0.4, 109.7 );  --ドンッ
setEffMoveKey( spep_0 + 0, ctdon, -0.4, 109.7 , 0 );
setEffMoveKey( spep_0 + 2, ctdon, -8.9, 214.8 , 0 );
setEffMoveKey( spep_0 + 4, ctdon, 8, 265.4 , 0 );
setEffMoveKey( spep_0 + 6, ctdon, -4.6, 296.3 , 0 );
setEffMoveKey( spep_0 + 8, ctdon, 13.4, 287.3 , 0 );
setEffMoveKey( spep_0 + 10, ctdon, -4.4, 286.1 , 0 );
setEffMoveKey( spep_0 + 12, ctdon, 4.8, 297.4 , 0 );
setEffMoveKey( spep_0 + 14, ctdon, 5.1, 279.3 , 0 );
setEffMoveKey( spep_0 + 16, ctdon, -0.8, 299 , 0 );
setEffMoveKey( spep_0 + 18, ctdon, -3.2, 291 , 0 );
setEffMoveKey( spep_0 + 20, ctdon, 3.3, 283.2 , 0 );
setEffMoveKey( spep_0 + 24, ctdon, 3.9, 293.6 , 0 );
setEffScaleKey( spep_0 + 0, ctdon, 0.62, 0.62 );
setEffScaleKey( spep_0 + 2, ctdon, 1.97, 1.97 );
setEffScaleKey( spep_0 + 4, ctdon, 2.67, 2.67 );
setEffScaleKey( spep_0 + 6, ctdon, 2.93, 2.93 );
setEffScaleKey( spep_0 + 8, ctdon, 2.96, 2.96 );
setEffScaleKey( spep_0 + 24, ctdon, 2.96, 2.96 );
setEffRotateKey( spep_0 + 0, ctdon, 0 );
setEffRotateKey( spep_0 + 24, ctdon, 0 );
setEffAlphaKey( spep_0 + 0, ctdon, 255 );
setEffAlphaKey( spep_0 + 18, ctdon, 255 );
setEffAlphaKey( spep_0 + 20, ctdon, 170 );
setEffAlphaKey( spep_0 + 22, ctdon, 85 );
setEffAlphaKey( spep_0 + 24, ctdon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 117, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0, 9);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

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

-- ** 音 ** --
playSe( spep_0 + 95, 8);

-- ** 次の準備 ** --
spep_1 = spep_0 + 117;

------------------------------------------------------
-- 格闘(217F)
------------------------------------------------------

-- ** エフェクト等 ** --
kakuto_b = entryEffectLife( spep_1 + 0, SP_08, 217, 0x80, -1, 0, 0, 0 );  --格闘(ef_003)
setEffMoveKey( spep_1 + 0, kakuto_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 217, kakuto_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kakuto_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 217, kakuto_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kakuto_b, 0 );
setEffRotateKey( spep_1 + 217, kakuto_b, 0 );
setEffAlphaKey( spep_1 + 0, kakuto_b, 255 );
setEffAlphaKey( spep_1 + 217, kakuto_b, 255 );

-- ** 流線 ** --
ryusen = entryEffectLife( spep_1 + 0,  914, 166, 0x80, -1, 0, 0, 0 ); --流線
setEffMoveKey( spep_1 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, ryusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ryusen, 2, 1 );
setEffScaleKey( spep_1 + 166, ryusen, 2, 1 );
setEffRotateKey( spep_1 + 0, ryusen, 0 );
setEffRotateKey( spep_1 + 166, ryusen, 0 );
setEffAlphaKey( spep_1 + 0, ryusen, 202 );
setEffAlphaKey( spep_1 + 56, ryusen, 202 );
setEffAlphaKey( spep_1 + 57, ryusen, 0 );
setEffAlphaKey( spep_1 + 58, ryusen, 0 );
setEffAlphaKey( spep_1 + 111, ryusen, 0 );
setEffAlphaKey( spep_1 + 112, ryusen, 202 );
setEffAlphaKey( spep_1 + 156, ryusen, 202 );
setEffAlphaKey( spep_1 + 158, ryusen, 161 );
setEffAlphaKey( spep_1 + 160, ryusen, 121 );
setEffAlphaKey( spep_1 + 162, ryusen, 81 );
setEffAlphaKey( spep_1 + 164, ryusen, 40 );
setEffAlphaKey( spep_1 + 166, ryusen, 0 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 14, 1,  1);
setDisp( spep_1 -3 + 220, 1,  0);
changeAnime( spep_1 - 3 + 14, 1, 100 );
changeAnime( spep_1 - 3 + 50, 1, 104 );
changeAnime( spep_1 - 3 + 56, 1, 104 );
changeAnime( spep_1 - 3 + 58, 1, 106 );
changeAnime( spep_1 - 3 + 98, 1, 106 );
changeAnime( spep_1 - 3 + 100, 1, 108 );
changeAnime( spep_1 - 3 + 150, 1, 106 );
changeAnime (spep_1 - 3 + 170, 1, 104 );

setMoveKey( spep_1 -3 + 14, 1, 751.8, -80.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 710.3, -85 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 671.5, -89.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 635.2, -93.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 601, -96.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 568.8, -99.3 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 538.1, -101.8 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 508.9, -103.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 481, -105.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 454.1, -107.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 428.1, -108.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 402.8, -109.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 378.2, -110.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 354.7, -110.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 331.6, -110.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 308.4, -110.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 285.2, -110.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 262, -110.3 , 0 );

setMoveKey( spep_1 -3 + 50, 1, 238.8, -110.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 215.7, -110.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 192.5, -110.3 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 169.3, -110.4 , 0 );

setMoveKey( spep_1 -3 + 58, 1, 90.5, -78.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 134.2, -91.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 142.1, -72.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 116.4, -70.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 112.3, -79.4 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 185.3, -81 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 165.5, -80.5 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 210.5, -81.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 225.4, -82.5 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 223.9, -82.3 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 222, -82.3 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 219.5, -82.3 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 216.4, -82 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 212.3, -82 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 206.8, -81.8 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 199.5, -81.6 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 189.6, -81.2 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 176.4, -80.8 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 159.3, -80.3 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 137.7, -79.7 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 111.6, -79 , 0 );

setMoveKey( spep_1 -3 + 100, 1, 133.4, -110.3 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 111.3, -89.7 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 178.4, -107 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 144.5, -85.8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 178, -107.4 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 163, -108.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 231.8, -109.3 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 208.9, -110.3 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 284.4, -110.3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 359.9, -110.3 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 363.1, -110.3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 366.3, -110.3 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 369.5, -110.3 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 372.7, -110.3 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 375.8, -110.3 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 379, -110.3 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 382.2, -110.3 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 385.4, -110.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 388.6, -110.3 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 345.1, -108 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 301.4, -105.8 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 257.7, -103.6 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 214, -101.5 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 170.1, -99.5 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 126.2, -97.6 , 0 );

setMoveKey( spep_1 -3 + 150, 1, 82.2, -95.7 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 38.2, -93.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 0.6, -92.4 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -30.6, -91.1 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -56, -90 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -79.3, -88.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -97.5, -87.3 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -111.2, -86.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -121, -85.8 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -127.3, -85.5 , 0 );

setMoveKey( spep_1 -3 + 170, 1, -119.2, -110.4 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -111.3, -110.4 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -105.9, -110 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -98.3, -110.7 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -91, -113.3 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -81.8, -110.1 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -73.1, -109.3 , 0 );
setMoveKey( spep_1 -3 + 184, 1, -68.5, -109.6 , 0 );
setMoveKey( spep_1 -3 + 186, 1, -58.4, -109.6 , 0 );
setMoveKey( spep_1 -3 + 188, 1, -50.4, -110.9 , 0 );
setMoveKey( spep_1 -3 + 190, 1, -43.6, -109.3 , 0 );
setMoveKey( spep_1 -3 + 192, 1, -36.7, -111.8 , 0 );
setMoveKey( spep_1 -3 + 194, 1, -28.8, -112.3 , 0 );
setMoveKey( spep_1 -3 + 196, 1, -19.9, -109.3 , 0 );
setMoveKey( spep_1 -3 + 198, 1, -12.5, -110.9 , 0 );
setMoveKey( spep_1 -3 + 200, 1, -5.5, -112.8 , 0 );
setMoveKey( spep_1 -3 + 202, 1, -0.2, -109.8 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 11.1, -110.3 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 16.8, -110.7 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 25.1, -112.3 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 30.5, -109.9 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 37.9, -110.6 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 44, -112.6 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 52.8, -111 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 58, -110.3 , 0 );
setMoveKey( spep_1 -3 + 219, 1, 59.5, -123.2 , 0 );

setScaleKey( spep_1 - 3 + 14, 1, 1.19, 1.19 );
setScaleKey( spep_1 - 3 + 16, 1, 1.17, 1.17 );
setScaleKey( spep_1 - 3 + 18, 1, 1.14, 1.14 );
setScaleKey( spep_1 - 3 + 20, 1, 1.12, 1.12 );
setScaleKey( spep_1 - 3 + 22, 1, 1.11, 1.11 );
setScaleKey( spep_1 - 3 + 24, 1, 1.09, 1.09 );
setScaleKey( spep_1 - 3 + 26, 1, 1.08, 1.08 );
setScaleKey( spep_1 - 3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_1 - 3 + 30, 1, 1.06, 1.06 );
setScaleKey( spep_1 - 3 + 32, 1, 1.06, 1.06 );
setScaleKey( spep_1 - 3 + 34, 1, 1.05, 1.05 );
setScaleKey( spep_1 - 3 + 36, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 50, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 56, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 60, 1, 1.23, 1.23 );
setScaleKey( spep_1 - 3 + 62, 1, 1.41, 1.41 );
setScaleKey( spep_1 - 3 + 64, 1, 1.28, 1.28 );
setScaleKey( spep_1 - 3 + 66, 1, 1.28, 1.28 );
setScaleKey( spep_1 - 3 + 68, 1, 1.16, 1.16 );
setScaleKey( spep_1 - 3 + 70, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 98, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 100, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 102, 1, 1.21, 1.21 );
setScaleKey( spep_1 - 3 + 104, 1, 1.37, 1.37 );
setScaleKey( spep_1 - 3 + 106, 1, 1.26, 1.26 );
setScaleKey( spep_1 - 3 + 108, 1, 1.37, 1.37 );
setScaleKey( spep_1 - 3 + 110, 1, 1.26, 1.26 );
setScaleKey( spep_1 - 3 + 112, 1, 1.15, 1.15 );
setScaleKey( spep_1 - 3 + 114, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 219, 1, 1.04, 1.04 );

setRotateKey( spep_1 - 3 + 14, 1, 0 );
setRotateKey( spep_1 - 3 + 50, 1, 0 );
setRotateKey( spep_1 - 3 + 56, 1, 0 );
setRotateKey( spep_1 - 3 + 57, 1, 0 );
setRotateKey( spep_1 - 3 + 58, 1, -39.2 );
setRotateKey( spep_1 - 3 + 64, 1, -39.2 );
setRotateKey( spep_1 - 3 + 66, 1, -34.2 );
setRotateKey( spep_1 - 3 + 68, 1, -31.2 );
setRotateKey( spep_1 - 3 + 70, 1, -30.2 );
setRotateKey( spep_1 - 3 + 72, 1, -30.3 );
setRotateKey( spep_1 - 3 + 74, 1, -30.5 );
setRotateKey( spep_1 - 3 + 76, 1, -30.6 );
setRotateKey( spep_1 - 3 + 78, 1, -30.8 );
setRotateKey( spep_1 - 3 + 80, 1, -31.1 );
setRotateKey( spep_1 - 3 + 82, 1, -31.5 );
setRotateKey( spep_1 - 3 + 84, 1, -32 );
setRotateKey( spep_1 - 3 + 86, 1, -32.7 );
setRotateKey( spep_1 - 3 + 88, 1, -33.6 );
setRotateKey( spep_1 - 3 + 90, 1, -34.7 );
setRotateKey( spep_1 - 3 + 92, 1, -36.2 );
setRotateKey( spep_1 - 3 + 94, 1, -38 );
setRotateKey( spep_1 - 3 + 96, 1, -40 );
setRotateKey( spep_1 - 3 + 98, 1, -42.2 );
setRotateKey( spep_1 - 3 + 99, 1, -42.2 );
setRotateKey( spep_1 - 3 + 100, 1, 0 );
setRotateKey( spep_1 - 3 + 130, 1, 0 );
setRotateKey( spep_1 - 3 + 132, 1, -1.9 );
setRotateKey( spep_1 - 3 + 134, 1, -3.8 );
setRotateKey( spep_1 - 3 + 136, 1, -5.7 );
setRotateKey( spep_1 - 3 + 138, 1, -7.5 );
setRotateKey( spep_1 - 3 + 140, 1, -9.4 );
setRotateKey( spep_1 - 3 + 142, 1, -11.3 );
setRotateKey( spep_1 - 3 + 143, 1, -11.3 );
setRotateKey( spep_1 - 3 + 144, 1, -13.2 );
setRotateKey( spep_1 - 3 + 146, 1, -15.1 );
setRotateKey( spep_1 - 3 + 148, 1, -16.7 );
setRotateKey( spep_1 - 3 + 150, 1, -18.1 );
setRotateKey( spep_1 - 3 + 152, 1, -19.2 );
setRotateKey( spep_1 - 3 + 154, 1, -21.2 );
setRotateKey( spep_1 - 3 + 156, 1, -22.7 );
setRotateKey( spep_1 - 3 + 158, 1, -23.8 );
setRotateKey( spep_1 - 3 + 160, 1, -24.7 );
setRotateKey( spep_1 - 3 + 162, 1, -25.2 );
setRotateKey( spep_1 - 3 + 163, 1, -25.2 );
setRotateKey( spep_1 - 3 + 164, 1, 0 );
setRotateKey( spep_1 - 3 + 219, 1, 0 );

-- ** 書き文字 ** --
ctga = entryEffectLife( spep_1 - 3 + 62,  10005, 12, 0x100, -1, 0, 100.1, 83.9 );  --ガッ
setEffMoveKey( spep_1 - 3 + 62, ctga, 100.1, 83.9 , 0 );
setEffMoveKey( spep_1 - 3 + 64, ctga, 110.1, 114 , 0 );
setEffMoveKey( spep_1 - 3 + 66, ctga, 120.2, 143.9 , 0 );
setEffMoveKey( spep_1 - 3 + 68, ctga, 120.2, 143.9 , 0 );
setEffMoveKey( spep_1 - 3 + 70, ctga, 123.5, 145.8 , 0 );
setEffMoveKey( spep_1 - 3 + 72, ctga, 126.9, 147.7 , 0 );
setEffMoveKey( spep_1 - 3 + 74, ctga, 130.3, 149.6 , 0 );

setEffScaleKey( spep_1 - 3 + 62, ctga, 0.46, 0.46 );
setEffScaleKey( spep_1 - 3 + 64, ctga, 0.81, 0.81 );
setEffScaleKey( spep_1 - 3 + 66, ctga, 1.36, 1.36 );
setEffScaleKey( spep_1 - 3 + 68, ctga, 1.46, 1.46 );
setEffScaleKey( spep_1 - 3 + 70, ctga, 1.5, 1.5 );
setEffScaleKey( spep_1 - 3 + 72, ctga, 1.7, 1.7 );
setEffScaleKey( spep_1 - 3 + 74, ctga, 2.0, 2.0 );

setEffRotateKey( spep_1 - 3 + 62, ctga, 10.7 );
setEffRotateKey( spep_1 - 3 + 74, ctga, 10.7 );

setEffAlphaKey( spep_1 - 3 + 62, ctga, 255 );
setEffAlphaKey( spep_1 - 3 + 68, ctga, 255 );
setEffAlphaKey( spep_1 - 3 + 70, ctga, 170 );
setEffAlphaKey( spep_1 - 3 + 72, ctga, 85 );
setEffAlphaKey( spep_1 - 3 + 74, ctga, 0 );

ctdon2 = entryEffectLife( spep_1 - 3 + 104,  10019, 12, 0x100, -1, 0, 95, 94.3 );  --ドンッ
setEffMoveKey( spep_1 - 3 + 104, ctdon2, 95, 94.3 , 0 );
setEffMoveKey( spep_1 - 3 + 106, ctdon2, 67.7, 135.6 , 0 );
setEffMoveKey( spep_1 - 3 + 108, ctdon2, 62, 173.3 , 0 );
setEffMoveKey( spep_1 - 3 + 110, ctdon2, 51.4, 182.3 , 0 );
setEffMoveKey( spep_1 - 3 + 112, ctdon2, 61.2, 177.7 , 0 );
setEffMoveKey( spep_1 - 3 + 114, ctdon2, 42, 181.3 , 0 );
setEffMoveKey( spep_1 - 3 + 116, ctdon2, 37.2, 185.9 , 0 );
setEffScaleKey( spep_1 - 3 + 104, ctdon2, 1, 1 );
setEffScaleKey( spep_1 - 3 + 106, ctdon2, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 108, ctdon2, 2.31, 2.31 );
setEffScaleKey( spep_1 - 3 + 110, ctdon2, 2.31, 2.31 );
setEffScaleKey( spep_1 - 3 + 112, ctdon2, 2.4, 2.4 );
setEffScaleKey( spep_1 - 3 + 114, ctdon2, 2.49, 2.49 );
setEffScaleKey( spep_1 - 3 + 116, ctdon2, 2.58, 2.58 );
setEffRotateKey( spep_1 - 3 + 104, ctdon2, 0 );
setEffRotateKey( spep_1 - 3 + 116, ctdon2, 0 );
setEffAlphaKey( spep_1 - 3 + 104, ctdon2, 255 );
setEffAlphaKey( spep_1 - 3 + 110, ctdon2, 255 );
setEffAlphaKey( spep_1 - 3 + 112, ctdon2, 170 );
setEffAlphaKey( spep_1 - 3 + 114, ctdon2, 85 );
setEffAlphaKey( spep_1 - 3 + 116, ctdon2, 0 );

kakuto_f = entryEffectLife( spep_1 + 0, SP_02, 217, 0x100, -1, 0, 0, 0 );  --格闘(ef_002)
setEffMoveKey( spep_1 + 0, kakuto_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 217, kakuto_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kakuto_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 217, kakuto_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kakuto_f, 0 );
setEffRotateKey( spep_1 + 217, kakuto_f, 0 );
setEffAlphaKey( spep_1 + 0, kakuto_f, 255 );
setEffAlphaKey( spep_1 + 217, kakuto_f, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_1 + 56, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 98, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 217, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_1 + 56, 1009 ); --パンチ
playSe( spep_1 + 98, 1010 ); --キック
playSe( spep_1 + 160, 1014 );
playSe( spep_1 + 160, 1027 );
setSeVolume( spep_1 + 160, 1027, 70 );
SE_1044 = playSe( spep_1 + 160, 1044); --地鳴り
stopSe( spep_1 + 185, SE_1044, 60 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 217;

------------------------------------------------------
--ロケットパンチ構え(56F)
------------------------------------------------------
-- ** 敵の動き ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 30 - 3, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2 + 0, 1, 270, -223 , 0 );
setMoveKey( spep_2 - 3 + 4, 1, 324, -248 , 0 );
setMoveKey( spep_2 - 3 + 6, 1, 418.7, -295.1 , 0 );
setMoveKey( spep_2 - 3 + 8, 1, 498.8, -334.9 , 0 );
setMoveKey( spep_2 - 3 + 10, 1, 565.6, -368.1 , 0 );
setMoveKey( spep_2 - 3 + 12, 1, 620.3, -395.3 , 0 );
setMoveKey( spep_2 - 3 + 14, 1, 664.2, -417.1 , 0 );
setMoveKey( spep_2 - 3 + 16, 1, 698.3, -434.1 , 0 );
setMoveKey( spep_2 - 3 + 18, 1, 723.9, -446.8 , 0 );
setMoveKey( spep_2 - 3 + 20, 1, 742.3, -456 , 0 );
setMoveKey( spep_2 - 3 + 22, 1, 754.6, -462.1 , 0 );
setMoveKey( spep_2 - 3 + 24, 1, 762.1, -465.8 , 0 );
setMoveKey( spep_2 - 3 + 26, 1, 765.9, -467.7 , 0 );
setMoveKey( spep_2 - 3 + 28, 1, 767.3, -468.4 , 0 );
setMoveKey( spep_2 - 3 + 30, 1, 767.5, -468.5 , 0 );

setScaleKey( spep_2 + 0, 1, 2.42, 2.42 );
setScaleKey( spep_2 - 3 + 4, 1, 2.66, 2.66 );
setScaleKey( spep_2 - 3 + 6, 1, 3.09, 3.09 );
setScaleKey( spep_2 - 3 + 8, 1, 3.45, 3.45 );
setScaleKey( spep_2 - 3 + 10, 1, 3.75, 3.75 );
setScaleKey( spep_2 - 3 + 12, 1, 4, 4 );
setScaleKey( spep_2 - 3 + 14, 1, 4.19, 4.19 );
setScaleKey( spep_2 - 3 + 16, 1, 4.35, 4.35 );
setScaleKey( spep_2 - 3 + 18, 1, 4.46, 4.46 );
setScaleKey( spep_2 - 3 + 20, 1, 4.55, 4.55 );
setScaleKey( spep_2 - 3 + 22, 1, 4.6, 4.6 );
setScaleKey( spep_2 - 3 + 24, 1, 4.64, 4.64 );
setScaleKey( spep_2 - 3 + 26, 1, 4.65, 4.65 );
setScaleKey( spep_2 - 3 + 30, 1, 4.66, 4.66 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 30 - 3, 1, 0 );

-- ** 集中 ** --
shuchusen2 = entryEffectLife( spep_2 + 26,  906, 30, 0x100, -1, 0, -100, -15.2 );
setEffMoveKey( spep_2 + 26, shuchusen2, -100, -15.2 , 0 );
setEffMoveKey( spep_2 + 56, shuchusen2, -100, -15.2 , 0 );
setEffScaleKey( spep_2 + 26, shuchusen2, 1.8, 1.8 );
setEffScaleKey( spep_2 + 56, shuchusen2, 1.8, 1.8 );
setEffRotateKey( spep_2 + 26, shuchusen2, 174.6 );
setEffRotateKey( spep_2 + 56, shuchusen2, 174.6 );
setEffAlphaKey( spep_2 + 26, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 56, shuchusen2, 255 );


-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_2 + 0, SP_03, 56, 0x80, -1, 0, 0, 0 );  --構え(ef_004)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, kamae, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 56, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 56, kamae, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 10, 1072); --フェードイン

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
--ロケットパンチ構え2(80F)
------------------------------------------------------
-- ** エフェクト等 ** --
kamae2 = entryEffectLife( spep_3 + 0, SP_04, 80, 0x80, -1, 0, 0, 0 );  --構え(ef_005)
setEffMoveKey( spep_3 + 0, kamae2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, kamae2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kamae2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, kamae2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kamae2, 0 );
setEffRotateKey( spep_3 + 80, kamae2, 0 );
setEffAlphaKey( spep_3 + 0, kamae2, 255 );
setEffAlphaKey( spep_3 + 80, kamae2, 255 );

-- ** 集中 ** --
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 90, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen3, 1.59, 1.59 );
setEffScaleKey( spep_3 + 90, shuchusen3, 1.59, 1.59 );
setEffRotateKey( spep_3 + 0, shuchusen3, 174.6 );
setEffRotateKey( spep_3 + 90, shuchusen3, 174.6 );
setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen3, 255 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_3 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 +16,  190006, 64, 0x100, -1, 0, -50, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 16, ctgogo, 64, 10 );

setEffMoveKey( spep_3 + 16, ctgogo, -40, 540.5 , 0 );
setEffMoveKey( spep_3 + 80, ctgogo, -40, 540.5 , 0 );

setEffScaleKey( spep_3 + 16, ctgogo, 0.9, 0.9 );
setEffScaleKey( spep_3 + 72, ctgogo, 0.9, 0.9 );
setEffScaleKey( spep_3 + 74, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_3 + 76, ctgogo, 1.5, 1.5 );
setEffScaleKey( spep_3 + 80, ctgogo, 1.8, 1.8 );

setEffRotateKey( spep_3 + 16, ctgogo, 0 );
setEffRotateKey( spep_3 + 80, ctgogo, 0 );

setEffAlphaKey( spep_3 + 16, ctgogo, 255 );
setEffAlphaKey( spep_3 + 72, ctgogo, 255 );
setEffAlphaKey( spep_3 + 80, ctgogo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 18, SE_04 );  --カットイン

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;

------------------------------------------------------
--カードカットイン(94F)
------------------------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
playSe( spep_4 + 0, SE_05 );

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
--ロケットパンチ発射(97F)
------------------------------------------------------

-- ** 書き文字 ** --
ctdon3 = entryEffectLife( spep_5 - 6 + 76,  10019, 12, 0x100, -1, 0, 17, 381.9 ); --ドンッ
setEffMoveKey( spep_5 - 6 + 76, ctdon3, 17, 381.9 , 0 );
setEffMoveKey( spep_5 - 6 + 78, ctdon3, 3.7, 384.3 , 0 );
setEffMoveKey( spep_5 - 6 + 80, ctdon3, 26.2, 380.7 , 0 );
setEffMoveKey( spep_5 - 6 + 82, ctdon3, 12.3, 392.5 , 0 );
setEffMoveKey( spep_5 - 6 + 88, ctdon3, 30.7, 380.4 , 0 );
setEffScaleKey( spep_5 - 6 + 76, ctdon3, 3.02, 3.02 );
setEffScaleKey( spep_5 - 6 + 88, ctdon3, 3.02, 3.02 );
setEffRotateKey( spep_5 - 6 + 76, ctdon3, 0 );
setEffRotateKey( spep_5 - 6 + 88, ctdon3, 0 );
setEffAlphaKey( spep_5 - 6 + 76, ctdon3, 255 );
setEffAlphaKey( spep_5 - 6 + 88, ctdon3, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_5 + 70, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** エフェクト等 ** --
hanatsu = entryEffectLife( spep_5 + 0, SP_05, 97, 0x80, -1, 0, 0, 0 );  --発射(ef_006)
setEffMoveKey( spep_5 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 97, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_5 + 97, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hanatsu, 0 );
setEffRotateKey( spep_5 + 97, hanatsu, 0 );
setEffAlphaKey( spep_5 + 0, hanatsu, 255 );
setEffAlphaKey( spep_5 + 97, hanatsu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 97, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE_1136 = playSe( spep_5 + 10, 1136 );--ロケットパンチ溜め
stopSe( spep_5 + 75, SE_1136, 5 )
playSe( spep_5 + 80, 1137 );--ロケットパンチ発射

-- ** 次の準備 ** --
spep_6 = spep_5 + 97;

------------------------------------------------------
--被弾(140F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_b = entryEffectLife( spep_6 + 0, SP_09, 138, 0x80, -1, 0, 0, 0 );  --被弾後ろ(ef_008)
setEffMoveKey( spep_6 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 138, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 138, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan_b, 0 );
setEffRotateKey( spep_6 + 138, hidan_b, 0 );
setEffAlphaKey( spep_6 + 0, hidan_b, 255 );
setEffAlphaKey( spep_6 + 138, hidan_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 71, 1, 0 );
changeAnime( spep_6 + 0, 1, 100 );
changeAnime( spep_6 - 3 + 20, 1, 106 );
changeAnime( spep_6 - 3 + 38, 1, 105 );

setMoveKey( spep_6 + 0, 1, 78.1, -81.9 , 0 );
--setMoveKey( spep_6 - 3 + 2, 1, 66, -89.9 , 0 );
setMoveKey( spep_6 - 3 + 4, 1, 54, -97.9 , 0 );
setMoveKey( spep_6 - 3 + 6, 1, 42, -105.9 , 0 );
setMoveKey( spep_6 - 3 + 8, 1, 30, -113.9 , 0 );
setMoveKey( spep_6 - 3 + 10, 1, 17.9, -121.9 , 0 );
setMoveKey( spep_6 - 3 + 12, 1, 8.7, -123.5 , 0 );
setMoveKey( spep_6 - 3 + 14, 1, -0.4, -125.1 , 0 );
setMoveKey( spep_6 - 3 + 16, 1, -9.6, -126.6 , 0 );
setMoveKey( spep_6 - 3 + 19, 1, -18.8, -128.2 , 0 );
setMoveKey( spep_6 - 3 + 20, 1, -78.1, -129.9 , 0 );
setMoveKey( spep_6 - 3 + 22, 1, -78.1, -129.9 , 0 );
setMoveKey( spep_6 - 3 + 24, 1, -53.3, -133.1 , 0 );
setMoveKey( spep_6 - 3 + 26, 1, -58.1, -131.1 , 0 );
setMoveKey( spep_6 - 3 + 28, 1, -63.1, -131 , 0 );
setMoveKey( spep_6 - 3 + 30, 1, -87.5, -126.8 , 0 );
setMoveKey( spep_6 - 3 + 32, 1, -74, -127 , 0 );
setMoveKey( spep_6 - 3 + 34, 1, -78.1, -129.9 , 0 );
setMoveKey( spep_6 - 3 + 37, 1, -78.1, -129.9 , 0 );
setMoveKey( spep_6 - 3 + 38, 1, 18, -41.7 , 0 );
setMoveKey( spep_6 - 3 + 40, 1, 21.5, -22.1 , 0 );
setMoveKey( spep_6 - 3 + 42, 1, 25.7, -4.6 , 0 );
setMoveKey( spep_6 - 3 + 44, 1, 30.1, 11 , 0 );
setMoveKey( spep_6 - 3 + 46, 1, 34.6, 24.8 , 0 );
setMoveKey( spep_6 - 3 + 48, 1, 38.9, 37 , 0 );
setMoveKey( spep_6 - 3 + 50, 1, 42.9, 47.8 , 0 );
setMoveKey( spep_6 - 3 + 52, 1, 46.6, 57.2 , 0 );
setMoveKey( spep_6 - 3 + 54, 1, 49.8, 65.4 , 0 );
setMoveKey( spep_6 - 3 + 56, 1, 52.6, 72.6 , 0 );
setMoveKey( spep_6 - 3 + 58, 1, 55, 78.7 , 0 );
setMoveKey( spep_6 - 3 + 60, 1, 57, 84 , 0 );
setMoveKey( spep_6 - 3 + 62, 1, 58.6, 88.4 , 0 );
setMoveKey( spep_6 - 3 + 64, 1, 59.9, 91.9 , 0 );
setMoveKey( spep_6 - 3 + 66, 1, 60.8, 94.7 , 0 );
setMoveKey( spep_6 - 3 + 68, 1, 61.5, 96.6 , 0 );
setMoveKey( spep_6 - 3 + 70, 1, 61.9, 97.8 , 0 );
setMoveKey( spep_6 - 3 + 72, 1, 62, 98.2 , 0 );
setMoveKey( spep_6 - 3 + 74, 1, 62.05, 98.4 , 0 );


setScaleKey( spep_6 + 0, 1, 0.64, 0.64 );
--setScaleKey( spep_6 - 3 + 2, 1, 0.71, 0.71 );
setScaleKey( spep_6 - 3 + 4, 1, 0.78, 0.78 );
setScaleKey( spep_6 - 3 + 6, 1, 0.84, 0.84 );
setScaleKey( spep_6 - 3 + 8, 1, 0.91, 0.91 );
setScaleKey( spep_6 - 3 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_6 - 3 + 12, 1, 1.17, 1.17 );
setScaleKey( spep_6 - 3 + 14, 1, 1.36, 1.36 );
setScaleKey( spep_6 - 3 + 16, 1, 1.55, 1.55 );
setScaleKey( spep_6 - 3 + 19, 1, 1.75, 1.75 );
setScaleKey( spep_6 - 3 + 20, 1, 1.94, 1.94 );
setScaleKey( spep_6 - 3 + 37, 1, 1.94, 1.94 );
setScaleKey( spep_6 - 3 + 38, 1, 1.58, 1.58 );
setScaleKey( spep_6 - 3 + 40, 1, 1.43, 1.43 );
setScaleKey( spep_6 - 3 + 42, 1, 1.29, 1.29 );
setScaleKey( spep_6 - 3 + 44, 1, 1.16, 1.16 );
setScaleKey( spep_6 - 3 + 46, 1, 1.04, 1.04 );
setScaleKey( spep_6 - 3 + 48, 1, 0.92, 0.92 );
setScaleKey( spep_6 - 3 + 50, 1, 0.82, 0.82 );
setScaleKey( spep_6 - 3 + 52, 1, 0.72, 0.72 );
setScaleKey( spep_6 - 3 + 54, 1, 0.64, 0.64 );
setScaleKey( spep_6 - 3 + 56, 1, 0.56, 0.56 );
setScaleKey( spep_6 - 3 + 58, 1, 0.49, 0.49 );
setScaleKey( spep_6 - 3 + 60, 1, 0.43, 0.43 );
setScaleKey( spep_6 - 3 + 62, 1, 0.38, 0.38 );
setScaleKey( spep_6 - 3 + 64, 1, 0.34, 0.34 );
setScaleKey( spep_6 - 3 + 66, 1, 0.31, 0.31 );
setScaleKey( spep_6 - 3 + 68, 1, 0.29, 0.29 );
setScaleKey( spep_6 - 3 + 74, 1, 0.26, 0.26 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 - 3 + 19, 1, 0 );
setRotateKey( spep_6 - 3 + 20, 1, -33.4 );
setRotateKey( spep_6 - 3 + 37, 1, -33.4 );
setRotateKey( spep_6 - 3 + 38, 1, 20.5 );
setRotateKey( spep_6 - 3 + 40, 1, 26.7 );
setRotateKey( spep_6 - 3 + 42, 1, 32.6 );
setRotateKey( spep_6 - 3 + 44, 1, 38.1 );
setRotateKey( spep_6 - 3 + 46, 1, 43.2 );
setRotateKey( spep_6 - 3 + 48, 1, 47.9 );
setRotateKey( spep_6 - 3 + 50, 1, 52.3 );
setRotateKey( spep_6 - 3 + 52, 1, 56.3 );
setRotateKey( spep_6 - 3 + 54, 1, 59.9 );
setRotateKey( spep_6 - 3 + 56, 1, 63.1 );
setRotateKey( spep_6 - 3 + 58, 1, 65.9 );
setRotateKey( spep_6 - 3 + 60, 1, 68.4 );
setRotateKey( spep_6 - 3 + 62, 1, 70.5 );
setRotateKey( spep_6 - 3 + 64, 1, 72.2 );
setRotateKey( spep_6 - 3 + 66, 1, 73.5 );
setRotateKey( spep_6 - 3 + 68, 1, 74.4 );
setRotateKey( spep_6 - 3 + 70, 1, 75 );
setRotateKey( spep_6 - 3 + 72, 1, 75.2 );
setRotateKey( spep_6 - 3 + 74, 1, 75.3 );

hidan_f = entryEffectLife( spep_6 + 0, SP_06, 138, 0x100, -1, 0, 0, 0 );  --被弾前(ef_007)
setEffMoveKey( spep_6 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 138, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 138, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan_f, 0 );
setEffRotateKey( spep_6 + 138, hidan_f, 0 );
setEffAlphaKey( spep_6 + 0, hidan_f, 255 );
setEffAlphaKey( spep_6 + 138, hidan_f, 255 );

ctdogon = entryEffectLife( spep_6 + 22,  10018, 12, 0x100, -1, 0, -3.8, 244.9 ); --ドゴォンッ
setEffMoveKey( spep_6 + 22, ctdogon, -3.8, 244.9 , 0 );
setEffMoveKey( spep_6 + 24, ctdogon, -3.6, 289.9 , 0 );
setEffMoveKey( spep_6 + 26, ctdogon, -3.5, 304.9 , 0 );
setEffMoveKey( spep_6 + 28, ctdogon, -3.5, 307.4 , 0 );
setEffMoveKey( spep_6 + 30, ctdogon, -3.5, 309.9 , 0 );
setEffMoveKey( spep_6 + 32, ctdogon, -3.5, 312.4 , 0 );
setEffMoveKey( spep_6 + 34, ctdogon, -3.4, 314.9 , 0 );

setEffScaleKey( spep_6 + 22, ctdogon, 1.3, 1.3 );
setEffScaleKey( spep_6 + 24, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_6 + 26, ctdogon, 3.75, 3.75 );
setEffScaleKey( spep_6 + 28, ctdogon, 3.91, 3.91 );
setEffScaleKey( spep_6 + 30, ctdogon, 4.08, 4.08 );
setEffScaleKey( spep_6 + 32, ctdogon, 4.24, 4.24 );
setEffScaleKey( spep_6 + 34, ctdogon, 4.41, 4.41 );

setEffRotateKey( spep_6 + 22, ctdogon, -5.5 );
setEffRotateKey( spep_6 + 34, ctdogon, -5.5 );

setEffAlphaKey( spep_6 + 22, ctdogon, 255 );
setEffAlphaKey( spep_6 + 26, ctdogon, 255 );
setEffAlphaKey( spep_6 + 28, ctdogon, 191 );
setEffAlphaKey( spep_6 + 30, ctdogon, 128 );
setEffAlphaKey( spep_6 + 32, ctdogon, 64 );
setEffAlphaKey( spep_6 + 34, ctdogon, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_6 + 20, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--** ブラックフェード ** --
entryFade( spep_6 + 22, 0, 0, 4, 0, 0, 0, 100 );  --black fade

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 138, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_6 + 20, 1120 ); --着弾
playSe( spep_6 + 72, 1023 ); --岩に激突

-- ** 次の準備 ** --
spep_7 = spep_6 + 138;

------------------------------------------------------
--小鳥(256F)
------------------------------------------------------

-- ** エフェクト等 ** --
last = entryEffect( spep_7 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --小鳥(ef_009)
setEffMoveKey( spep_7 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_7 + 250, last, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_7 + 250, last, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, last, 0 );
setEffRotateKey( spep_7 + 250, last, 0 );
setEffAlphaKey( spep_7 + 0, last, 255 );
setEffAlphaKey( spep_7 + 250, last, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_7 - 1, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 250, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_7 + 0, 1138 ); --鳥の羽音
playSe( spep_7 + 95, 1138 ); --鳥の羽音
playSe( spep_7 + 95, 1139 ); --鳥の鳴き声
playSe( spep_7 + 120, 1139 ); --鳥の鳴き声

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 140 );
endPhase( spep_7 + 240 );

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(117F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_0 + 0, SP_01, 117, 0x80, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin,0, 0 , 0 );
setEffMoveKey( spep_0 + 117, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 117, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 117, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 117, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 116, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 116, 20 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen1, 1.06, 1.06 );
setEffScaleKey( spep_0 + 116, shuchusen1, 1.06, 1.06 );
setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 116, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 116, shuchusen1, 255 );

-- ** 書き文字 ** --
ctdon = entryEffectLife( spep_0 + 0,  10019, 24, 0x100, -1, 0, -0.4, 109.7 );  --ドンッ
setEffMoveKey( spep_0 + 0, ctdon, -0.4, 109.7 , 0 );
setEffMoveKey( spep_0 + 2, ctdon, -8.9, 214.8 , 0 );
setEffMoveKey( spep_0 + 4, ctdon, 8, 265.4 , 0 );
setEffMoveKey( spep_0 + 6, ctdon, -4.6, 296.3 , 0 );
setEffMoveKey( spep_0 + 8, ctdon, 13.4, 287.3 , 0 );
setEffMoveKey( spep_0 + 10, ctdon, -4.4, 286.1 , 0 );
setEffMoveKey( spep_0 + 12, ctdon, 4.8, 297.4 , 0 );
setEffMoveKey( spep_0 + 14, ctdon, 5.1, 279.3 , 0 );
setEffMoveKey( spep_0 + 16, ctdon, -0.8, 299 , 0 );
setEffMoveKey( spep_0 + 18, ctdon, -3.2, 291 , 0 );
setEffMoveKey( spep_0 + 20, ctdon, 3.3, 283.2 , 0 );
setEffMoveKey( spep_0 + 24, ctdon, 3.9, 293.6 , 0 );
setEffScaleKey( spep_0 + 0, ctdon, 0.62, 0.62 );
setEffScaleKey( spep_0 + 2, ctdon, 1.97, 1.97 );
setEffScaleKey( spep_0 + 4, ctdon, 2.67, 2.67 );
setEffScaleKey( spep_0 + 6, ctdon, 2.93, 2.93 );
setEffScaleKey( spep_0 + 8, ctdon, 2.96, 2.96 );
setEffScaleKey( spep_0 + 24, ctdon, 2.96, 2.96 );
setEffRotateKey( spep_0 + 0, ctdon, 0 );
setEffRotateKey( spep_0 + 24, ctdon, 0 );
setEffAlphaKey( spep_0 + 0, ctdon, 255 );
setEffAlphaKey( spep_0 + 18, ctdon, 255 );
setEffAlphaKey( spep_0 + 20, ctdon, 170 );
setEffAlphaKey( spep_0 + 22, ctdon, 85 );
setEffAlphaKey( spep_0 + 24, ctdon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 117, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0, 1018);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

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

-- ** 音 ** --
playSe( spep_0 + 95, 8);

-- ** 次の準備 ** --
spep_1 = spep_0 + 117;

------------------------------------------------------
-- 格闘(217F)
------------------------------------------------------

-- ** エフェクト等 ** --
kakuto_b = entryEffectLife( spep_1 + 0, SP_08, 217, 0x80, -1, 0, 0, 0 );  --格闘(ef_003)
setEffMoveKey( spep_1 + 0, kakuto_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 217, kakuto_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kakuto_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 217, kakuto_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kakuto_b, 0 );
setEffRotateKey( spep_1 + 217, kakuto_b, 0 );
setEffAlphaKey( spep_1 + 0, kakuto_b, 255 );
setEffAlphaKey( spep_1 + 217, kakuto_b, 255 );

-- ** 流線 ** --
ryusen = entryEffectLife( spep_1 + 0,  914, 166, 0x80, -1, 0, 0, 0 ); --流線
setEffMoveKey( spep_1 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, ryusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ryusen, 2, 1 );
setEffScaleKey( spep_1 + 166, ryusen, 2, 1 );
setEffRotateKey( spep_1 + 0, ryusen, 0 );
setEffRotateKey( spep_1 + 166, ryusen, 0 );
setEffAlphaKey( spep_1 + 0, ryusen, 202 );
setEffAlphaKey( spep_1 + 56, ryusen, 202 );
setEffAlphaKey( spep_1 + 57, ryusen, 0 );
setEffAlphaKey( spep_1 + 58, ryusen, 0 );
setEffAlphaKey( spep_1 + 111, ryusen, 0 );
setEffAlphaKey( spep_1 + 112, ryusen, 202 );
setEffAlphaKey( spep_1 + 156, ryusen, 202 );
setEffAlphaKey( spep_1 + 158, ryusen, 161 );
setEffAlphaKey( spep_1 + 160, ryusen, 121 );
setEffAlphaKey( spep_1 + 162, ryusen, 81 );
setEffAlphaKey( spep_1 + 164, ryusen, 40 );
setEffAlphaKey( spep_1 + 166, ryusen, 0 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 14, 1,  1);
setDisp( spep_1 -3 + 220, 1,  0);
setDisp( spep_1 -3 + 14, 1,  1);
setDisp( spep_1 -3 + 220, 1,  0);
changeAnime( spep_1 - 3 + 14, 1, 100 );
changeAnime( spep_1 - 3 + 50, 1, 104 );
changeAnime( spep_1 - 3 + 56, 1, 104 );
changeAnime( spep_1 - 3 + 58, 1, 106 );
changeAnime( spep_1 - 3 + 98, 1, 106 );
changeAnime( spep_1 - 3 + 100, 1, 108 );
changeAnime( spep_1 - 3 + 150, 1, 106 );
changeAnime (spep_1 - 3 + 170, 1, 104 );

setMoveKey( spep_1 -3 + 14, 1, 751.8, -80.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 710.3, -85 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 671.5, -89.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 635.2, -93.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 601, -96.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 568.8, -99.3 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 538.1, -101.8 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 508.9, -103.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 481, -105.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 454.1, -107.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 428.1, -108.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 402.8, -109.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 378.2, -110.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 354.7, -110.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 331.6, -110.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 308.4, -110.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 285.2, -110.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 262, -110.3 , 0 );

setMoveKey( spep_1 -3 + 50, 1, 238.8, -110.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 215.7, -110.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 192.5, -110.3 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 169.3, -110.4 , 0 );

setMoveKey( spep_1 -3 + 58, 1, 90.5, -78.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 134.2, -91.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 142.1, -72.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 116.4, -70.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 112.3, -79.4 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 185.3, -81 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 165.5, -80.5 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 210.5, -81.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 225.4, -82.5 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 223.9, -82.3 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 222, -82.3 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 219.5, -82.3 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 216.4, -82 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 212.3, -82 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 206.8, -81.8 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 199.5, -81.6 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 189.6, -81.2 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 176.4, -80.8 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 159.3, -80.3 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 137.7, -79.7 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 111.6, -79 , 0 );

setMoveKey( spep_1 -3 + 100, 1, 133.4, -110.3 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 111.3, -89.7 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 178.4, -107 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 144.5, -85.8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 178, -107.4 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 163, -108.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 231.8, -109.3 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 208.9, -110.3 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 284.4, -110.3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 359.9, -110.3 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 363.1, -110.3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 366.3, -110.3 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 369.5, -110.3 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 372.7, -110.3 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 375.8, -110.3 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 379, -110.3 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 382.2, -110.3 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 385.4, -110.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 388.6, -110.3 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 345.1, -108 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 301.4, -105.8 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 257.7, -103.6 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 214, -101.5 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 170.1, -99.5 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 126.2, -97.6 , 0 );

setMoveKey( spep_1 -3 + 150, 1, 82.2, -95.7 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 38.2, -93.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 0.6, -92.4 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -30.6, -91.1 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -56, -90 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -79.3, -88.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -97.5, -87.3 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -111.2, -86.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -121, -85.8 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -127.3, -85.5 , 0 );

setMoveKey( spep_1 -3 + 170, 1, -119.2, -110.4 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -111.3, -110.4 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -105.9, -110 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -98.3, -110.7 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -91, -113.3 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -81.8, -110.1 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -73.1, -109.3 , 0 );
setMoveKey( spep_1 -3 + 184, 1, -68.5, -109.6 , 0 );
setMoveKey( spep_1 -3 + 186, 1, -58.4, -109.6 , 0 );
setMoveKey( spep_1 -3 + 188, 1, -50.4, -110.9 , 0 );
setMoveKey( spep_1 -3 + 190, 1, -43.6, -109.3 , 0 );
setMoveKey( spep_1 -3 + 192, 1, -36.7, -111.8 , 0 );
setMoveKey( spep_1 -3 + 194, 1, -28.8, -112.3 , 0 );
setMoveKey( spep_1 -3 + 196, 1, -19.9, -109.3 , 0 );
setMoveKey( spep_1 -3 + 198, 1, -12.5, -110.9 , 0 );
setMoveKey( spep_1 -3 + 200, 1, -5.5, -112.8 , 0 );
setMoveKey( spep_1 -3 + 202, 1, -0.2, -109.8 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 11.1, -110.3 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 16.8, -110.7 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 25.1, -112.3 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 30.5, -109.9 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 37.9, -110.6 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 44, -112.6 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 52.8, -111 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 58, -110.3 , 0 );
setMoveKey( spep_1 -3 + 219, 1, 59.5, -123.2 , 0 );

setScaleKey( spep_1 - 3 + 14, 1, 1.19, 1.19 );
setScaleKey( spep_1 - 3 + 16, 1, 1.17, 1.17 );
setScaleKey( spep_1 - 3 + 18, 1, 1.14, 1.14 );
setScaleKey( spep_1 - 3 + 20, 1, 1.12, 1.12 );
setScaleKey( spep_1 - 3 + 22, 1, 1.11, 1.11 );
setScaleKey( spep_1 - 3 + 24, 1, 1.09, 1.09 );
setScaleKey( spep_1 - 3 + 26, 1, 1.08, 1.08 );
setScaleKey( spep_1 - 3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_1 - 3 + 30, 1, 1.06, 1.06 );
setScaleKey( spep_1 - 3 + 32, 1, 1.06, 1.06 );
setScaleKey( spep_1 - 3 + 34, 1, 1.05, 1.05 );
setScaleKey( spep_1 - 3 + 36, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 50, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 56, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 60, 1, 1.23, 1.23 );
setScaleKey( spep_1 - 3 + 62, 1, 1.41, 1.41 );
setScaleKey( spep_1 - 3 + 64, 1, 1.28, 1.28 );
setScaleKey( spep_1 - 3 + 66, 1, 1.28, 1.28 );
setScaleKey( spep_1 - 3 + 68, 1, 1.16, 1.16 );
setScaleKey( spep_1 - 3 + 70, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 98, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 100, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 102, 1, 1.21, 1.21 );
setScaleKey( spep_1 - 3 + 104, 1, 1.37, 1.37 );
setScaleKey( spep_1 - 3 + 106, 1, 1.26, 1.26 );
setScaleKey( spep_1 - 3 + 108, 1, 1.37, 1.37 );
setScaleKey( spep_1 - 3 + 110, 1, 1.26, 1.26 );
setScaleKey( spep_1 - 3 + 112, 1, 1.15, 1.15 );
setScaleKey( spep_1 - 3 + 114, 1, 1.04, 1.04 );
setScaleKey( spep_1 - 3 + 219, 1, 1.04, 1.04 );

setRotateKey( spep_1 - 3 + 14, 1, 0 );
setRotateKey( spep_1 - 3 + 50, 1, 0 );
setRotateKey( spep_1 - 3 + 56, 1, 0 );
setRotateKey( spep_1 - 3 + 57, 1, 0 );
setRotateKey( spep_1 - 3 + 58, 1, -39.2 );
setRotateKey( spep_1 - 3 + 64, 1, -39.2 );
setRotateKey( spep_1 - 3 + 66, 1, -34.2 );
setRotateKey( spep_1 - 3 + 68, 1, -31.2 );
setRotateKey( spep_1 - 3 + 70, 1, -30.2 );
setRotateKey( spep_1 - 3 + 72, 1, -30.3 );
setRotateKey( spep_1 - 3 + 74, 1, -30.5 );
setRotateKey( spep_1 - 3 + 76, 1, -30.6 );
setRotateKey( spep_1 - 3 + 78, 1, -30.8 );
setRotateKey( spep_1 - 3 + 80, 1, -31.1 );
setRotateKey( spep_1 - 3 + 82, 1, -31.5 );
setRotateKey( spep_1 - 3 + 84, 1, -32 );
setRotateKey( spep_1 - 3 + 86, 1, -32.7 );
setRotateKey( spep_1 - 3 + 88, 1, -33.6 );
setRotateKey( spep_1 - 3 + 90, 1, -34.7 );
setRotateKey( spep_1 - 3 + 92, 1, -36.2 );
setRotateKey( spep_1 - 3 + 94, 1, -38 );
setRotateKey( spep_1 - 3 + 96, 1, -40 );
setRotateKey( spep_1 - 3 + 98, 1, -42.2 );
setRotateKey( spep_1 - 3 + 99, 1, -42.2 );
setRotateKey( spep_1 - 3 + 100, 1, 0 );
setRotateKey( spep_1 - 3 + 130, 1, 0 );
setRotateKey( spep_1 - 3 + 132, 1, -1.9 );
setRotateKey( spep_1 - 3 + 134, 1, -3.8 );
setRotateKey( spep_1 - 3 + 136, 1, -5.7 );
setRotateKey( spep_1 - 3 + 138, 1, -7.5 );
setRotateKey( spep_1 - 3 + 140, 1, -9.4 );
setRotateKey( spep_1 - 3 + 142, 1, -11.3 );
setRotateKey( spep_1 - 3 + 143, 1, -11.3 );
setRotateKey( spep_1 - 3 + 144, 1, -13.2 );
setRotateKey( spep_1 - 3 + 146, 1, -15.1 );
setRotateKey( spep_1 - 3 + 148, 1, -16.7 );
setRotateKey( spep_1 - 3 + 150, 1, -18.1 );
setRotateKey( spep_1 - 3 + 152, 1, -19.2 );
setRotateKey( spep_1 - 3 + 154, 1, -21.2 );
setRotateKey( spep_1 - 3 + 156, 1, -22.7 );
setRotateKey( spep_1 - 3 + 158, 1, -23.8 );
setRotateKey( spep_1 - 3 + 160, 1, -24.7 );
setRotateKey( spep_1 - 3 + 162, 1, -25.2 );
setRotateKey( spep_1 - 3 + 163, 1, -25.2 );
setRotateKey( spep_1 - 3 + 164, 1, 0 );
setRotateKey( spep_1 - 3 + 219, 1, 0 );

-- ** 書き文字 ** --
ctga = entryEffectLife( spep_1 - 3 + 62,  10005, 12, 0x100, -1, 0, 100.1, 83.9 );  --ガッ
setEffMoveKey( spep_1 - 3 + 62, ctga, 100.1, 83.9 , 0 );
setEffMoveKey( spep_1 - 3 + 64, ctga, 110.1, 114 , 0 );
setEffMoveKey( spep_1 - 3 + 66, ctga, 120.2, 143.9 , 0 );
setEffMoveKey( spep_1 - 3 + 68, ctga, 120.2, 143.9 , 0 );
setEffMoveKey( spep_1 - 3 + 70, ctga, 123.5, 145.8 , 0 );
setEffMoveKey( spep_1 - 3 + 72, ctga, 126.9, 147.7 , 0 );
setEffMoveKey( spep_1 - 3 + 74, ctga, 130.3, 149.6 , 0 );

setEffScaleKey( spep_1 - 3 + 62, ctga, 0.46, 0.46 );
setEffScaleKey( spep_1 - 3 + 64, ctga, 0.81, 0.81 );
setEffScaleKey( spep_1 - 3 + 66, ctga, 1.36, 1.36 );
setEffScaleKey( spep_1 - 3 + 68, ctga, 1.46, 1.46 );
setEffScaleKey( spep_1 - 3 + 70, ctga, 1.5, 1.5 );
setEffScaleKey( spep_1 - 3 + 72, ctga, 1.7, 1.7 );
setEffScaleKey( spep_1 - 3 + 74, ctga, 2.0, 2.0 );

setEffRotateKey( spep_1 - 3 + 62, ctga, 10.7 );
setEffRotateKey( spep_1 - 3 + 74, ctga, 10.7 );

setEffAlphaKey( spep_1 - 3 + 62, ctga, 255 );
setEffAlphaKey( spep_1 - 3 + 68, ctga, 255 );
setEffAlphaKey( spep_1 - 3 + 70, ctga, 170 );
setEffAlphaKey( spep_1 - 3 + 72, ctga, 85 );
setEffAlphaKey( spep_1 - 3 + 74, ctga, 0 );

ctdon2 = entryEffectLife( spep_1 - 3 + 104,  10019, 12, 0x100, -1, 0, 95, 94.3 );  --ドンッ
setEffMoveKey( spep_1 - 3 + 104, ctdon2, 95, 94.3 , 0 );
setEffMoveKey( spep_1 - 3 + 106, ctdon2, 67.7, 135.6 , 0 );
setEffMoveKey( spep_1 - 3 + 108, ctdon2, 62, 173.3 , 0 );
setEffMoveKey( spep_1 - 3 + 110, ctdon2, 51.4, 182.3 , 0 );
setEffMoveKey( spep_1 - 3 + 112, ctdon2, 61.2, 177.7 , 0 );
setEffMoveKey( spep_1 - 3 + 114, ctdon2, 42, 181.3 , 0 );
setEffMoveKey( spep_1 - 3 + 116, ctdon2, 37.2, 185.9 , 0 );
setEffScaleKey( spep_1 - 3 + 104, ctdon2, 1, 1 );
setEffScaleKey( spep_1 - 3 + 106, ctdon2, 1.66, 1.66 );
setEffScaleKey( spep_1 - 3 + 108, ctdon2, 2.31, 2.31 );
setEffScaleKey( spep_1 - 3 + 110, ctdon2, 2.31, 2.31 );
setEffScaleKey( spep_1 - 3 + 112, ctdon2, 2.4, 2.4 );
setEffScaleKey( spep_1 - 3 + 114, ctdon2, 2.49, 2.49 );
setEffScaleKey( spep_1 - 3 + 116, ctdon2, 2.58, 2.58 );
setEffRotateKey( spep_1 - 3 + 104, ctdon2, 0 );
setEffRotateKey( spep_1 - 3 + 116, ctdon2, 0 );
setEffAlphaKey( spep_1 - 3 + 104, ctdon2, 255 );
setEffAlphaKey( spep_1 - 3 + 110, ctdon2, 255 );
setEffAlphaKey( spep_1 - 3 + 112, ctdon2, 170 );
setEffAlphaKey( spep_1 - 3 + 114, ctdon2, 85 );
setEffAlphaKey( spep_1 - 3 + 116, ctdon2, 0 );

kakuto_f = entryEffectLife( spep_1 + 0, SP_02r, 217, 0x100, -1, 0, 0, 0 );  --格闘(ef_002)
setEffMoveKey( spep_1 + 0, kakuto_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 217, kakuto_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kakuto_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 217, kakuto_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kakuto_f, 0 );
setEffRotateKey( spep_1 + 217, kakuto_f, 0 );
setEffAlphaKey( spep_1 + 0, kakuto_f, 255 );
setEffAlphaKey( spep_1 + 217, kakuto_f, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_1 + 56, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 98, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 217, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_1 + 56, 1009 ); --パンチ
playSe( spep_1 + 98, 1010 ); --キック
SE_1044 = playSe( spep_1 + 160, 1044); --地鳴り
stopSe( spep_1 + 185, SE_1044, 60 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 217;

------------------------------------------------------
--ロケットパンチ構え(56F)
------------------------------------------------------
-- ** 敵の動き ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 30 - 3, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2 + 0, 1, -270, -223 , 0 );
setMoveKey( spep_2 - 3 + 4, 1, -324, -248 , 0 );
setMoveKey( spep_2 - 3 + 6, 1, -418.7, -295.1 , 0 );
setMoveKey( spep_2 - 3 + 8, 1, -498.8, -334.9 , 0 );
setMoveKey( spep_2 - 3 + 10, 1, -565.6, -368.1 , 0 );
setMoveKey( spep_2 - 3 + 12, 1, -620.3, -395.3 , 0 );
setMoveKey( spep_2 - 3 + 14, 1, -664.2, -417.1 , 0 );
setMoveKey( spep_2 - 3 + 16, 1, -698.3, -434.1 , 0 );
setMoveKey( spep_2 - 3 + 18, 1, -723.9, -446.8 , 0 );
setMoveKey( spep_2 - 3 + 20, 1, -742.3, -456 , 0 );
setMoveKey( spep_2 - 3 + 22, 1, -754.6, -462.1 , 0 );
setMoveKey( spep_2 - 3 + 24, 1, -762.1, -465.8 , 0 );
setMoveKey( spep_2 - 3 + 26, 1, -765.9, -467.7 , 0 );
setMoveKey( spep_2 - 3 + 28, 1, -767.3, -468.4 , 0 );
setMoveKey( spep_2 - 3 + 30, 1, -767.5, -468.5 , 0 );

setScaleKey( spep_2 + 0, 1, -2.42, 2.42 );
setScaleKey( spep_2 - 3 + 4, 1, -2.66, 2.66 );
setScaleKey( spep_2 - 3 + 6, 1, -3.09, 3.09 );
setScaleKey( spep_2 - 3 + 8, 1, -3.45, 3.45 );
setScaleKey( spep_2 - 3 + 10, 1, -3.75, 3.75 );
setScaleKey( spep_2 - 3 + 12, 1, -4, 4 );
setScaleKey( spep_2 - 3 + 14, 1, -4.19, 4.19 );
setScaleKey( spep_2 - 3 + 16, 1, -4.35, 4.35 );
setScaleKey( spep_2 - 3 + 18, 1, -4.46, 4.46 );
setScaleKey( spep_2 - 3 + 20, 1, -4.55, 4.55 );
setScaleKey( spep_2 - 3 + 22, 1, -4.6, 4.6 );
setScaleKey( spep_2 - 3 + 24, 1, -4.64, 4.64 );
setScaleKey( spep_2 - 3 + 26, 1, -4.65, 4.65 );
setScaleKey( spep_2 - 3 + 30, 1, -4.66, 4.66 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 30 - 3, 1, 0 );

-- ** 集中 ** --
shuchusen2 = entryEffectLife( spep_2 + 26,  906, 30, 0x100, -1, 0, -100, -15.2 );
setEffMoveKey( spep_2 + 26, shuchusen2, 100, -15.2 , 0 );
setEffMoveKey( spep_2 + 56, shuchusen2, 100, -15.2 , 0 );
setEffScaleKey( spep_2 + 26, shuchusen2, 1.8, 1.8 );
setEffScaleKey( spep_2 + 56, shuchusen2, 1.8, 1.8 );
setEffRotateKey( spep_2 + 26, shuchusen2, 174.6 );
setEffRotateKey( spep_2 + 56, shuchusen2, 174.6 );
setEffAlphaKey( spep_2 + 26, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 56, shuchusen2, 255 );


-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_2 + 0, SP_03, 56, 0x80, -1, 0, 0, 0 );  --構え(ef_004)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, kamae, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 56, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 56, kamae, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 10, 1072); --フェードイン

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
--ロケットパンチ構え2(80F)
------------------------------------------------------
-- ** エフェクト等 ** --
kamae2 = entryEffectLife( spep_3 + 0, SP_04, 80, 0x80, -1, 0, 0, 0 );  --構え(ef_005)
setEffMoveKey( spep_3 + 0, kamae2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, kamae2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kamae2, -1.0, 1.0 );
setEffScaleKey( spep_3 + 80, kamae2, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kamae2, 0 );
setEffRotateKey( spep_3 + 80, kamae2, 0 );
setEffAlphaKey( spep_3 + 0, kamae2, 255 );
setEffAlphaKey( spep_3 + 80, kamae2, 255 );

-- ** 集中 ** --
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 90, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen3, 1.59, 1.59 );
setEffScaleKey( spep_3 + 90, shuchusen3, 1.59, 1.59 );
setEffRotateKey( spep_3 + 0, shuchusen3, 174.6 );
setEffRotateKey( spep_3 + 90, shuchusen3, 174.6 );
setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen3, 255 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_3 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 +16,  190006, 64, 0x100, -1, 0, -50, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 16, ctgogo, 64, 10 );

setEffMoveKey( spep_3 + 16, ctgogo, 40, 540.5 , 0 );
setEffMoveKey( spep_3 + 80, ctgogo, 40, 540.5 , 0 );

setEffScaleKey( spep_3 + 16, ctgogo, -0.9, 0.9 );
setEffScaleKey( spep_3 + 72, ctgogo, -0.9, 0.9 );
setEffScaleKey( spep_3 + 74, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_3 + 76, ctgogo, -1.5, 1.5 );
setEffScaleKey( spep_3 + 80, ctgogo, -1.8, 1.8 );

setEffRotateKey( spep_3 + 16, ctgogo, 0 );
setEffRotateKey( spep_3 + 80, ctgogo, 0 );

setEffAlphaKey( spep_3 + 16, ctgogo, 255 );
setEffAlphaKey( spep_3 + 72, ctgogo, 255 );
setEffAlphaKey( spep_3 + 80, ctgogo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 18, SE_04 );  --カットイン

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;

------------------------------------------------------
--カードカットイン(94F)
------------------------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
playSe( spep_4 + 0, SE_05 );

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
--ロケットパンチ発射(97F)
------------------------------------------------------

-- ** 書き文字 ** --
ctdon3 = entryEffectLife( spep_5 - 6 + 76,  10019, 12, 0x100, -1, 0, 17, 381.9 ); --ドンッ
setEffMoveKey( spep_5 - 6 + 76, ctdon3, 17, 381.9 , 0 );
setEffMoveKey( spep_5 - 6 + 78, ctdon3, 3.7, 384.3 , 0 );
setEffMoveKey( spep_5 - 6 + 80, ctdon3, 26.2, 380.7 , 0 );
setEffMoveKey( spep_5 - 6 + 82, ctdon3, 12.3, 392.5 , 0 );
setEffMoveKey( spep_5 - 6 + 88, ctdon3, 30.7, 380.4 , 0 );
setEffScaleKey( spep_5 - 6 + 76, ctdon3, 3.02, 3.02 );
setEffScaleKey( spep_5 - 6 + 88, ctdon3, 3.02, 3.02 );
setEffRotateKey( spep_5 - 6 + 76, ctdon3, 0 );
setEffRotateKey( spep_5 - 6 + 88, ctdon3, 0 );
setEffAlphaKey( spep_5 - 6 + 76, ctdon3, 255 );
setEffAlphaKey( spep_5 - 6 + 88, ctdon3, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_5 + 70, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** エフェクト等 ** --
hanatsu = entryEffectLife( spep_5 + 0, SP_05, 97, 0x80, -1, 0, 0, 0 );  --発射(ef_006)
setEffMoveKey( spep_5 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 97, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hanatsu, -1.0, 1.0 );
setEffScaleKey( spep_5 + 97, hanatsu, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hanatsu, 0 );
setEffRotateKey( spep_5 + 97, hanatsu, 0 );
setEffAlphaKey( spep_5 + 0, hanatsu, 255 );
setEffAlphaKey( spep_5 + 97, hanatsu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 97, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE_1136 = playSe( spep_5 + 10, 1136 );--ロケットパンチ溜め
stopSe( spep_5 + 75, SE_1136, 5 )
playSe( spep_5 + 80, 1137 );--ロケットパンチ発射

-- ** 次の準備 ** --
spep_6 = spep_5 + 97;

------------------------------------------------------
--被弾(140F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_b = entryEffectLife( spep_6 + 0, SP_09, 138, 0x80, -1, 0, 0, 0 );  --被弾後ろ(ef_008)
setEffMoveKey( spep_6 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 138, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 138, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan_b, 0 );
setEffRotateKey( spep_6 + 138, hidan_b, 0 );
setEffAlphaKey( spep_6 + 0, hidan_b, 255 );
setEffAlphaKey( spep_6 + 138, hidan_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 71, 1, 0 );
changeAnime( spep_6 + 0, 1, 100 );
changeAnime( spep_6 - 3 + 20, 1, 106 );
changeAnime( spep_6 - 3 + 38, 1, 105 );

setMoveKey( spep_6 + 0, 1, 78.1, -81.9 , 0 );
--setMoveKey( spep_6 - 3 + 2, 1, 66, -89.9 , 0 );
setMoveKey( spep_6 - 3 + 4, 1, 54, -97.9 , 0 );
setMoveKey( spep_6 - 3 + 6, 1, 42, -105.9 , 0 );
setMoveKey( spep_6 - 3 + 8, 1, 30, -113.9 , 0 );
setMoveKey( spep_6 - 3 + 10, 1, 17.9, -121.9 , 0 );
setMoveKey( spep_6 - 3 + 12, 1, 8.7, -123.5 , 0 );
setMoveKey( spep_6 - 3 + 14, 1, -0.4, -125.1 , 0 );
setMoveKey( spep_6 - 3 + 16, 1, -9.6, -126.6 , 0 );
setMoveKey( spep_6 - 3 + 19, 1, -18.8, -128.2 , 0 );
setMoveKey( spep_6 - 3 + 20, 1, -78.1, -129.9 , 0 );
setMoveKey( spep_6 - 3 + 22, 1, -78.1, -129.9 , 0 );
setMoveKey( spep_6 - 3 + 24, 1, -53.3, -133.1 , 0 );
setMoveKey( spep_6 - 3 + 26, 1, -58.1, -131.1 , 0 );
setMoveKey( spep_6 - 3 + 28, 1, -63.1, -131 , 0 );
setMoveKey( spep_6 - 3 + 30, 1, -87.5, -126.8 , 0 );
setMoveKey( spep_6 - 3 + 32, 1, -74, -127 , 0 );
setMoveKey( spep_6 - 3 + 34, 1, -78.1, -129.9 , 0 );
setMoveKey( spep_6 - 3 + 37, 1, -78.1, -129.9 , 0 );
setMoveKey( spep_6 - 3 + 38, 1, 18, -41.7 , 0 );
setMoveKey( spep_6 - 3 + 40, 1, 21.5, -22.1 , 0 );
setMoveKey( spep_6 - 3 + 42, 1, 25.7, -4.6 , 0 );
setMoveKey( spep_6 - 3 + 44, 1, 30.1, 11 , 0 );
setMoveKey( spep_6 - 3 + 46, 1, 34.6, 24.8 , 0 );
setMoveKey( spep_6 - 3 + 48, 1, 38.9, 37 , 0 );
setMoveKey( spep_6 - 3 + 50, 1, 42.9, 47.8 , 0 );
setMoveKey( spep_6 - 3 + 52, 1, 46.6, 57.2 , 0 );
setMoveKey( spep_6 - 3 + 54, 1, 49.8, 65.4 , 0 );
setMoveKey( spep_6 - 3 + 56, 1, 52.6, 72.6 , 0 );
setMoveKey( spep_6 - 3 + 58, 1, 55, 78.7 , 0 );
setMoveKey( spep_6 - 3 + 60, 1, 57, 84 , 0 );
setMoveKey( spep_6 - 3 + 62, 1, 58.6, 88.4 , 0 );
setMoveKey( spep_6 - 3 + 64, 1, 59.9, 91.9 , 0 );
setMoveKey( spep_6 - 3 + 66, 1, 60.8, 94.7 , 0 );
setMoveKey( spep_6 - 3 + 68, 1, 61.5, 96.6 , 0 );
setMoveKey( spep_6 - 3 + 70, 1, 61.9, 97.8 , 0 );
setMoveKey( spep_6 - 3 + 72, 1, 62, 98.2 , 0 );
setMoveKey( spep_6 - 3 + 74, 1, 62.05, 98.4 , 0 );


setScaleKey( spep_6 + 0, 1, 0.64, 0.64 );
--setScaleKey( spep_6 - 3 + 2, 1, 0.71, 0.71 );
setScaleKey( spep_6 - 3 + 4, 1, 0.78, 0.78 );
setScaleKey( spep_6 - 3 + 6, 1, 0.84, 0.84 );
setScaleKey( spep_6 - 3 + 8, 1, 0.91, 0.91 );
setScaleKey( spep_6 - 3 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_6 - 3 + 12, 1, 1.17, 1.17 );
setScaleKey( spep_6 - 3 + 14, 1, 1.36, 1.36 );
setScaleKey( spep_6 - 3 + 16, 1, 1.55, 1.55 );
setScaleKey( spep_6 - 3 + 19, 1, 1.75, 1.75 );
setScaleKey( spep_6 - 3 + 20, 1, 1.94, 1.94 );
setScaleKey( spep_6 - 3 + 37, 1, 1.94, 1.94 );
setScaleKey( spep_6 - 3 + 38, 1, 1.58, 1.58 );
setScaleKey( spep_6 - 3 + 40, 1, 1.43, 1.43 );
setScaleKey( spep_6 - 3 + 42, 1, 1.29, 1.29 );
setScaleKey( spep_6 - 3 + 44, 1, 1.16, 1.16 );
setScaleKey( spep_6 - 3 + 46, 1, 1.04, 1.04 );
setScaleKey( spep_6 - 3 + 48, 1, 0.92, 0.92 );
setScaleKey( spep_6 - 3 + 50, 1, 0.82, 0.82 );
setScaleKey( spep_6 - 3 + 52, 1, 0.72, 0.72 );
setScaleKey( spep_6 - 3 + 54, 1, 0.64, 0.64 );
setScaleKey( spep_6 - 3 + 56, 1, 0.56, 0.56 );
setScaleKey( spep_6 - 3 + 58, 1, 0.49, 0.49 );
setScaleKey( spep_6 - 3 + 60, 1, 0.43, 0.43 );
setScaleKey( spep_6 - 3 + 62, 1, 0.38, 0.38 );
setScaleKey( spep_6 - 3 + 64, 1, 0.34, 0.34 );
setScaleKey( spep_6 - 3 + 66, 1, 0.31, 0.31 );
setScaleKey( spep_6 - 3 + 68, 1, 0.29, 0.29 );
setScaleKey( spep_6 - 3 + 74, 1, 0.26, 0.26 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 - 3 + 19, 1, 0 );
setRotateKey( spep_6 - 3 + 20, 1, -33.4 );
setRotateKey( spep_6 - 3 + 37, 1, -33.4 );
setRotateKey( spep_6 - 3 + 38, 1, 20.5 );
setRotateKey( spep_6 - 3 + 40, 1, 26.7 );
setRotateKey( spep_6 - 3 + 42, 1, 32.6 );
setRotateKey( spep_6 - 3 + 44, 1, 38.1 );
setRotateKey( spep_6 - 3 + 46, 1, 43.2 );
setRotateKey( spep_6 - 3 + 48, 1, 47.9 );
setRotateKey( spep_6 - 3 + 50, 1, 52.3 );
setRotateKey( spep_6 - 3 + 52, 1, 56.3 );
setRotateKey( spep_6 - 3 + 54, 1, 59.9 );
setRotateKey( spep_6 - 3 + 56, 1, 63.1 );
setRotateKey( spep_6 - 3 + 58, 1, 65.9 );
setRotateKey( spep_6 - 3 + 60, 1, 68.4 );
setRotateKey( spep_6 - 3 + 62, 1, 70.5 );
setRotateKey( spep_6 - 3 + 64, 1, 72.2 );
setRotateKey( spep_6 - 3 + 66, 1, 73.5 );
setRotateKey( spep_6 - 3 + 68, 1, 74.4 );
setRotateKey( spep_6 - 3 + 70, 1, 75 );
setRotateKey( spep_6 - 3 + 72, 1, 75.2 );
setRotateKey( spep_6 - 3 + 74, 1, 75.3 );

hidan_f = entryEffectLife( spep_6 + 0, SP_06r, 138, 0x100, -1, 0, 0, 0 );  --被弾前(ef_007)
setEffMoveKey( spep_6 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 138, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 138, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan_f, 0 );
setEffRotateKey( spep_6 + 138, hidan_f, 0 );
setEffAlphaKey( spep_6 + 0, hidan_f, 255 );
setEffAlphaKey( spep_6 + 138, hidan_f, 255 );

ctdogon = entryEffectLife( spep_6 + 22,  10018, 12, 0x100, -1, 0, -3.8, 244.9 ); --ドゴォンッ
setEffMoveKey( spep_6 + 22, ctdogon, -3.8, 244.9 , 0 );
setEffMoveKey( spep_6 + 24, ctdogon, -3.6, 289.9 , 0 );
setEffMoveKey( spep_6 + 26, ctdogon, -3.5, 304.9 , 0 );
setEffMoveKey( spep_6 + 28, ctdogon, -3.5, 307.4 , 0 );
setEffMoveKey( spep_6 + 30, ctdogon, -3.5, 309.9 , 0 );
setEffMoveKey( spep_6 + 32, ctdogon, -3.5, 312.4 , 0 );
setEffMoveKey( spep_6 + 34, ctdogon, -3.4, 314.9 , 0 );

setEffScaleKey( spep_6 + 22, ctdogon, 1.3, 1.3 );
setEffScaleKey( spep_6 + 24, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_6 + 26, ctdogon, 3.75, 3.75 );
setEffScaleKey( spep_6 + 28, ctdogon, 3.91, 3.91 );
setEffScaleKey( spep_6 + 30, ctdogon, 4.08, 4.08 );
setEffScaleKey( spep_6 + 32, ctdogon, 4.24, 4.24 );
setEffScaleKey( spep_6 + 34, ctdogon, 4.41, 4.41 );

setEffRotateKey( spep_6 + 22, ctdogon, -5.5 );
setEffRotateKey( spep_6 + 34, ctdogon, -5.5 );

setEffAlphaKey( spep_6 + 22, ctdogon, 255 );
setEffAlphaKey( spep_6 + 26, ctdogon, 255 );
setEffAlphaKey( spep_6 + 28, ctdogon, 191 );
setEffAlphaKey( spep_6 + 30, ctdogon, 128 );
setEffAlphaKey( spep_6 + 32, ctdogon, 64 );
setEffAlphaKey( spep_6 + 34, ctdogon, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_6 + 20, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--** ブラックフェード ** --
entryFade( spep_6 + 22, 0, 0, 4, 0, 0, 0, 100 );  --black fade

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 138, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_6 + 20, 1120 ); --着弾
playSe( spep_6 + 72, 1023 ); --岩に激突

-- ** 次の準備 ** --
spep_7 = spep_6 + 138;

------------------------------------------------------
--小鳥(256F)
------------------------------------------------------

-- ** エフェクト等 ** --
last = entryEffect( spep_7 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --小鳥(ef_009)
setEffMoveKey( spep_7 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_7 + 250, last, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, last, -1.0, 1.0 );
setEffScaleKey( spep_7 + 250, last, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, last, 0 );
setEffRotateKey( spep_7 + 250, last, 0 );
setEffAlphaKey( spep_7 + 0, last, 255 );
setEffAlphaKey( spep_7 + 250, last, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_7 - 1, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 250, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_7 + 0, 1138 ); --鳥の羽音
playSe( spep_7 + 95, 1138 ); --鳥の羽音
playSe( spep_7 + 95, 1139 ); --鳥の鳴き声
playSe( spep_7 + 120, 1139 ); --鳥の鳴き声

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 140 );
endPhase( spep_7 + 240 );

end
--1020530_魔人ブウ(ピッコロ吸収)_UR
--sp_effect_a2_00139

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
SP_01 = 155695;  --突進、パンチ：敵より前
SP_02 = 155696;  --突進、パンチ：敵より後ろ
SP_03 = 155697;  --ラッシュ、蹴り飛ばし：敵より前
SP_04 = 155698;  --ラッシュ、蹴り飛ばし：敵より後ろ１
SP_05 = 155699;  --ラッシュ、蹴り飛ばし：敵より後ろ２
SP_06 = 155700;  --気弾溜め
SP_07 = 155701;  --気弾発射
SP_08 = 155702;  --気弾命中：敵より前
SP_09 = 155703;  --気弾命中：敵より後ろ
SP_10 = 155704;  --ラスト爆発エフェクト
SP_11 = 155705;  --ギャン（黄色）

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
-- 突進、パンチ(95F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 95, 0x100, -1, 0, 0, 0 );  --突進、パンチ：敵より前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 95, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 95, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 95, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 95, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 95, 0x80, -1, 0, 0, 0 );  --突進、パンチ：敵より後ろ(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 95, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 95, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 95, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 95, first_b, 255 );

-- ** 書き文字エントリー ** --
ctgaha1 = entryEffectLife( spep_0 -3 + 60,  10005, 8, 0x100, -1, 0, -79.8, 307.5 ); --ガッ
setEffMoveKey( spep_0 -3 + 60, ctgaha1, -79.8, 297.5 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctgaha1, -79.8, 297.4 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctgaha1, -79.8, 297.4 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctgaha1, -79.7, 297.3 , 0 );

setEffScaleKey( spep_0 -3 + 60, ctgaha1, 1.062, 1.062 );
setEffScaleKey( spep_0 -3 + 62, ctgaha1, 1.674, 1.674 );
setEffScaleKey( spep_0 -3 + 64, ctgaha1, 2.268, 2.268 );
setEffScaleKey( spep_0 -3 + 66, ctgaha1, 2.358, 2.358 );
setEffScaleKey( spep_0 -3 + 68, ctgaha1, 2.466, 2.466 );

setEffRotateKey( spep_0 -3 + 60, ctgaha1, 27.9 );
setEffRotateKey( spep_0 -3 + 68, ctgaha1, 27.9 );

setEffAlphaKey( spep_0 -3 + 60, ctgaha1, 255 );
setEffAlphaKey( spep_0 -3 + 64, ctgaha1, 255 );
setEffAlphaKey( spep_0 -3 + 66, ctgaha1, 128 );
setEffAlphaKey( spep_0 -3 + 68, ctgaha1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 43, 1, 1 );
setDisp( spep_0 + 64 + 0, 1, 0 );
changeAnime( spep_0 + 43, 1, 118 );
changeAnime( spep_0 + 57, 1, 107 );

setMoveKey( spep_0 + 43, 1, 1210, -220 , 0 );
setMoveKey( spep_0 + 47, 1, 890, -170 , 0 );
setMoveKey( spep_0 + 49, 1, 755, -150 , 0 );
setMoveKey( spep_0 + 51, 1, 595, -135 , 0 );
setMoveKey( spep_0 + 53, 1, 447, -115 , 0 );
setMoveKey( spep_0 + 55, 1, 280, -95 , 0 );
setMoveKey( spep_0 + 56, 1, 280, -95 , 0 );
setMoveKey( spep_0 + 57, 1, 112, -240 , 0 );
setMoveKey( spep_0 + 59, 1, 275, -323 , 0 );
setMoveKey( spep_0 + 61, 1, 507, -450 , 0 );
setMoveKey( spep_0 + 63, 1, 547, -470 , 0 );
setMoveKey( spep_0 + 64, 1, 547, -470 , 0 );

setScaleKey( spep_0 + 43, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 45, 1, 8.1, 8.1 );
setScaleKey( spep_0 + 47, 1, 7.3, 7.3 );
setScaleKey( spep_0 + 49, 1, 6.7, 6.7 );
setScaleKey( spep_0 + 51, 1, 6.0, 6.0 );
setScaleKey( spep_0 + 53, 1, 5.4, 5.4 );
setScaleKey( spep_0 + 55, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 56, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 57, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 59, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 61, 1, 3.00, 3.00 );
setScaleKey( spep_0 + 63, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 64, 1, 3.51, 3.51 );

setRotateKey( spep_0 + 43, 1, 0 );
setRotateKey( spep_0 + 56, 1, 0 );
setRotateKey( spep_0 + 57, 1, -20 );
setRotateKey( spep_0 + 64, 1, -20 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** 音 ** --
--冒頭ダッシュ1
SE00 = playSe( spep_0 + 2, 9 );

--冒頭ダッシュ2
SE01 = playSe( spep_0 + 10, 1072 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 43; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE00, 0 );
stopSe( SP_dodge - 12, SE01, 0 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setDisp( SP_dodge + 0, 1, 1 );
changeAnime( SP_dodge + 0, 1, 118 );

setMoveKey( SP_dodge + 0, 1, 1210, -220 , 0 );
setMoveKey( SP_dodge + 4, 1, 890, -170 , 0 );
setMoveKey( SP_dodge + 6, 1, 755, -150 , 0 );
setMoveKey( SP_dodge + 8, 1, 595, -135 , 0 );
setMoveKey( SP_dodge + 10, 1, 447, -115 , 0 );

setScaleKey( SP_dodge + 0, 1, 8.7, 8.7 );
setScaleKey( SP_dodge + 2, 1, 8.1, 8.1 );
setScaleKey( SP_dodge + 4, 1, 7.3, 7.3 );
setScaleKey( SP_dodge + 6, 1, 6.7, 6.7 );
setScaleKey( SP_dodge + 8, 1, 6.0, 6.0 );
setScaleKey( SP_dodge + 10, 1, 5.4, 5.4 );

setRotateKey( spep_0 + 43, 1, 0 );

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

-- ** 音 ** --
--初手パンチ1	
playSe( spep_0 + 48, 1003 );
--初手パンチ2
playSe( spep_0 + 56, 1009 );
--初手パンチ3
playSe( spep_0 + 56, 1187 );
setSeVolume( spep_0 + 56, 1187, 75 );
--初手パンチ4
playSe( spep_0 + 58, 1110 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- ラッシュ、蹴り飛ばし(166F)
------------------------------------------------------
-- ** エフェクト等 ** --
chbuu_f = entryEffectLife( spep_1 + 0, SP_04, 131, 0x100, -1, 0, 0, 0 );  --ラッシュ、蹴り飛ばし：敵より前１(ef_004)
setEffMoveKey( spep_1 + 0, chbuu_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 131, chbuu_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, chbuu_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 131, chbuu_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, chbuu_f, 0 );
setEffRotateKey( spep_1 + 131, chbuu_f, 0 );
setEffAlphaKey( spep_1 + 0, chbuu_f, 255 );
setEffAlphaKey( spep_1 + 131, chbuu_f, 255 );

chbuu_b = entryEffectLife( spep_1 + 0, SP_04, 166, 0x80, -1, 0, 0, 0 );  --ラッシュ、蹴り飛ばし：敵より後ろ１(ef_004)
setEffMoveKey( spep_1 + 0, chbuu_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, chbuu_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, chbuu_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, chbuu_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, chbuu_b, 0 );
setEffRotateKey( spep_1 + 166, chbuu_b, 0 );
setEffAlphaKey( spep_1 + 0, chbuu_b, 0 );
setEffAlphaKey( spep_1 + 131, chbuu_b, 0 );
setEffAlphaKey( spep_1 + 132, chbuu_b, 255 );
setEffAlphaKey( spep_1 + 166, chbuu_b, 255 );

rush_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ラッシュ、蹴り飛ばし：敵より前(ef_003)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 166, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 166, rush_f, 255 );

rush_b = entryEffect( spep_1 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --ラッシュ、蹴り飛ばし：敵より後ろ２(ef_005)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 166, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 166, rush_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 73,  906, 12, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 73, shuchusen1, 12, 25 );
setEffMoveKey(   spep_1 + 73, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 85, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_1 + 73, shuchusen1, 1.8, 1.8 );
setEffScaleKey(  spep_1 + 85, shuchusen1, 1.8, 1.8 );
setEffRotateKey( spep_1 + 73, shuchusen1, 0 );
setEffRotateKey( spep_1 + 85, shuchusen1, 0 );
setEffAlphaKey(  spep_1 + 73, shuchusen1, 255 );
setEffAlphaKey(  spep_1 + 85, shuchusen1, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 95,  906, 10, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 95, shuchusen2, 10, 25 );
setEffMoveKey(   spep_1 + 95, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 105, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_1 + 95, shuchusen2, 1.8, 1.8 );
setEffScaleKey(  spep_1 + 105, shuchusen2, 1.8, 1.8 );
setEffRotateKey( spep_1 + 95, shuchusen2, 0 );
setEffRotateKey( spep_1 + 105, shuchusen2, 0 );
setEffAlphaKey(  spep_1 + 95, shuchusen2, 255 );
setEffAlphaKey(  spep_1 + 105, shuchusen2, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 + 131,  906, 34, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 131, shuchusen3, 34, 25 );
setEffMoveKey(   spep_1 + 131, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 165, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_1 + 131, shuchusen3, 2.4, 2.4 );
setEffScaleKey(  spep_1 + 165, shuchusen3, 2.4, 2.4 );
setEffRotateKey( spep_1 + 131, shuchusen3, 0 );
setEffRotateKey( spep_1 + 165, shuchusen3, 0 );
setEffAlphaKey(  spep_1 + 131, shuchusen3, 255 );
setEffAlphaKey(  spep_1 + 165, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 -3 + 76,  10020, 12, 0x100, -1, 0, -31.9, 286.6 ); --バキッ
setEffMoveKey( spep_1 -3 + 76, ctbaki, -31.9, 286.6 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctbaki, -12.6, 297.8 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctbaki, -31.9, 286.6 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctbaki, -12.6, 297.8 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctbaki, -31.9, 286.6 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctbaki, -12.6, 297.8 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctbaki, -31.9, 286.6 , 0 );

setEffScaleKey( spep_1 -3 + 76, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 -3 + 88, ctbaki, 1.73, 1.73 );

setEffRotateKey( spep_1 -3 + 76, ctbaki, 15 );
setEffRotateKey( spep_1 -3 + 88, ctbaki, 15 );

setEffAlphaKey( spep_1 -3 + 76, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 88, ctbaki, 255 );

ctgaha2 = entryEffectLife( spep_1 -3 + 98,  10005, 10, 0x100, -1, 0, 63.4, 307.5 );  --ガッ
setEffMoveKey( spep_1 -3 + 98, ctgaha2, 63.4, 307.5 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctgaha2, 73.7, 312.6 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctgaha2, 63.4, 307.5 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctgaha2, 73.7, 312.6 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctgaha2, 63.4, 307.5 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctgaha2, 73.7, 312.6 , 0 );

setEffScaleKey( spep_1 -3 + 98, ctgaha2, 1.42, 1.42 );
setEffScaleKey( spep_1 -3 + 108, ctgaha2, 1.42, 1.42 );

setEffRotateKey( spep_1 -3 + 98, ctgaha2, 0 );
setEffRotateKey( spep_1 -3 + 108, ctgaha2, 0 );

setEffAlphaKey( spep_1 -3 + 98, ctgaha2, 255 );
setEffAlphaKey( spep_1 -3 + 108, ctgaha2, 255 );

ctdogon = entryEffectLife( spep_1 -3 + 134,  10018, 32, 0x100, -1, 0, -79.5, 306.8 );  --ドゴォン
setEffMoveKey( spep_1 -3 + 134, ctdogon, -79.5, 306.8 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctdogon, -85, 363 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctdogon, -75.6, 410.1 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctdogon, -89.9, 412.2 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctdogon, -86.4, 423.7 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctdogon, -87.9, 414.8 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctdogon, -95, 431.8 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctdogon, -91.6, 426.1 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctdogon, -101.1, 433.1 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctdogon, -98.5, 431.2 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctdogon, -100.8, 442.2 , 0 );
setEffMoveKey( spep_1 -3 + 156, ctdogon, -103.7, 437.6 , 0 );
setEffMoveKey( spep_1 -3 + 158, ctdogon, -109.9, 449.7 , 0 );
setEffMoveKey( spep_1 -3 + 160, ctdogon, -103.8, 448.6 , 0 );
setEffMoveKey( spep_1 -3 + 162, ctdogon, -129, 472 , 0 );
setEffMoveKey( spep_1 -3 + 164, ctdogon, -123.3, 475.5 , 0 );
setEffMoveKey( spep_1 -3 + 166, ctdogon, -134.6, 488.9 , 0 );

setEffScaleKey( spep_1 -3 + 134, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_1 -3 + 136, ctdogon, 1.62, 1.62 );
setEffScaleKey( spep_1 -3 + 138, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_1 -3 + 140, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_1 -3 + 142, ctdogon, 2.65, 2.65 );
setEffScaleKey( spep_1 -3 + 144, ctdogon, 2.67, 2.67 );
setEffScaleKey( spep_1 -3 + 146, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_1 -3 + 148, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_1 -3 + 150, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_1 -3 + 152, ctdogon, 2.76, 2.76 );
setEffScaleKey( spep_1 -3 + 154, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_1 -3 + 156, ctdogon, 2.81, 2.81 );
setEffScaleKey( spep_1 -3 + 158, ctdogon, 2.84, 2.84 );
setEffScaleKey( spep_1 -3 + 160, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_1 -3 + 162, ctdogon, 3.52, 3.52 );
setEffScaleKey( spep_1 -3 + 164, ctdogon, 4.18, 4.18 );
setEffScaleKey( spep_1 -3 + 166, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_1 -3 + 134, ctdogon, -30 );
setEffRotateKey( spep_1 -3 + 136, ctdogon, -29.9 );
setEffRotateKey( spep_1 -3 + 138, ctdogon, -29.8 );
setEffRotateKey( spep_1 -3 + 142, ctdogon, -29.8 );
setEffRotateKey( spep_1 -3 + 144, ctdogon, -29.9 );
setEffRotateKey( spep_1 -3 + 154, ctdogon, -29.9 );
setEffRotateKey( spep_1 -3 + 156, ctdogon, -30 );
setEffRotateKey( spep_1 -3 + 166, ctdogon, -30 );

setEffAlphaKey( spep_1 -3 + 134, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 160, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 162, ctdogon, 170 );
setEffAlphaKey( spep_1 -3 + 164, ctdogon, 85 );
setEffAlphaKey( spep_1 -3 + 166, ctdogon, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 142, 1, 0 );
changeAnime( spep_1 -3 + 0, 1, 106 );
changeAnime( spep_1 -3 + 38, 1, 111 );
changeAnime( spep_1 -3 + 39, 1, 111 );
changeAnime( spep_1 -3 + 40, 1, 111 );
changeAnime( spep_1 -3 + 41, 1, 111 );
changeAnime( spep_1 -3 + 42, 1, 111 );
changeAnime( spep_1 -3 + 43, 1, 111 );
changeAnime( spep_1 -3 + 44, 1, 111 );
changeAnime( spep_1 -3 + 45, 1, 111 );
changeAnime( spep_1 -3 + 46, 1, 104 );
changeAnime( spep_1 -3 + 76, 1, 106 );
changeAnime( spep_1 -3 + 98, 1, 108 );
changeAnime( spep_1 -3 + 114, 1, 106 );
changeAnime( spep_1 -3 + 134, 1, 107 );

setMoveKey( spep_1 + 0, 1, -540.5, 21.9 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -318.6, 21.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -96.6, 22 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 125.3, 22 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 119.1, 22 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 112.8, 22 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 106.6, 22 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 100.4, 22 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 94.1, 22 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 87.9, 22 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 81.6, 22.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 75.4, 22.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 69.2, 22.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 62.9, 22.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 56.7, 22.1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 50.4, 22.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 60.8, 35.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 93.9, 46.1 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 93.9, 46.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 93.9, 46.1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 100.3, 74.3 , 0 );
setMoveKey( spep_1 -3 + 45, 1, 107, 101.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 79.5, 69 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 103.7, 68.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 105.8, 68.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 108.9, 68.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 112, 68.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 115.1, 68.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 118.2, 68.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 121.4, 68.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 124.5, 68.6 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 127.6, 68.6 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 130.7, 68.6 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 133.8, 68.6 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 136.9, 68.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 140, 68.6 , 0 );
setMoveKey( spep_1 -3 + 75, 1, 143.1, 68.6 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 81.6, 89.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 143.5, 99.4 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 175.5, 79.4 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 184.7, 99.4 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 163.8, 89.5 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 153, 89.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 142.2, 89.6 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 131.4, 89.7 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 120.6, 89.7 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 109.8, 89.8 , 0 );
setMoveKey( spep_1 -3 + 97, 1, 99, 89.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 115.4, 85.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 101.5, 68.6 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 127.6, 91.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 123.7, 84 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 129.8, 86.6 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 135.9, 89.3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 142, 92 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 148.1, 94.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 126.5, 134.4 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 126.9, 129.4 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 127.3, 124.5 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 127.7, 119.6 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 128.2, 114.7 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 128.6, 109.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 129, 104.9 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 129.5, 99.9 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 129.9, 95 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 130.3, 90.1 , 0 );
setMoveKey( spep_1 -3 + 133, 1, 130.3, 90.1 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 178.3, 3.1 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 230.3, -10.1 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 380.3, 111 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 459, 143 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 553, 203 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 660, 273 , 0 );
setMoveKey( spep_1 -3 + 145, 1, 660, 273 , 0 );

setScaleKey( spep_1 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 37, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 38, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 39, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 40, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 45, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 46, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 97, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 98, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 113, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 114, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 133, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 134, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 136, 1, 0.93, 0.93 );
setScaleKey( spep_1 -3 + 138, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 140, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 142, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 144, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 145, 1, 1.58, 1.58 );

setRotateKey( spep_1 + 0, 1, 30 );
setRotateKey( spep_1 -3 + 8, 1, 30 );
setRotateKey( spep_1 -3 + 10, 1, 29.8 );
setRotateKey( spep_1 -3 + 12, 1, 29.7 );
setRotateKey( spep_1 -3 + 14, 1, 29.5 );
setRotateKey( spep_1 -3 + 16, 1, 29.3 );
setRotateKey( spep_1 -3 + 18, 1, 29.2 );
setRotateKey( spep_1 -3 + 20, 1, 29 );
setRotateKey( spep_1 -3 + 22, 1, 28.8 );
setRotateKey( spep_1 -3 + 24, 1, 28.7 );
setRotateKey( spep_1 -3 + 26, 1, 28.5 );
setRotateKey( spep_1 -3 + 28, 1, 28.3 );
setRotateKey( spep_1 -3 + 30, 1, 28.2 );
setRotateKey( spep_1 -3 + 32, 1, 28 );
setRotateKey( spep_1 -3 + 34, 1, 25.3 );
setRotateKey( spep_1 -3 + 36, 1, 25.3 );
setRotateKey( spep_1 -3 + 37, 1, 25.3 );
setRotateKey( spep_1 -3 + 38, 1, 72 );
setRotateKey( spep_1 -3 + 39, 1, 70 );
setRotateKey( spep_1 -3 + 40, 1, 70 );
setRotateKey( spep_1 -3 + 42, 1, 55.9 );
setRotateKey( spep_1 -3 + 45, 1, 41.9 );
setRotateKey( spep_1 -3 + 46, 1, -0.8 );
setRotateKey( spep_1 -3 + 48, 1, -4.5 );
setRotateKey( spep_1 -3 + 75, 1, -4.5 );
setRotateKey( spep_1 -3 + 76, 1, -41.2 );
setRotateKey( spep_1 -3 + 78, 1, -40.8 );
setRotateKey( spep_1 -3 + 80, 1, -40.4 );
setRotateKey( spep_1 -3 + 82, 1, -40.1 );
setRotateKey( spep_1 -3 + 84, 1, -39.8 );
setRotateKey( spep_1 -3 + 86, 1, -39.5 );
setRotateKey( spep_1 -3 + 88, 1, -39.2 );
setRotateKey( spep_1 -3 + 90, 1, -38.9 );
setRotateKey( spep_1 -3 + 92, 1, -38.6 );
setRotateKey( spep_1 -3 + 94, 1, -38.3 );
setRotateKey( spep_1 -3 + 97, 1, -38 );
setRotateKey( spep_1 -3 + 98, 1, 7.2 );
setRotateKey( spep_1 -3 + 113, 1, 7.2 );
setRotateKey( spep_1 -3 + 114, 1, -37.4 );
setRotateKey( spep_1 -3 + 133, 1, -37.4 );
setRotateKey( spep_1 -3 + 134, 1,-66 );
setRotateKey( spep_1 -3 + 136, 1,-68 );
setRotateKey( spep_1 -3 + 145, 1,-68  );


-- ** 音 ** --
--敵飛んでいく
SE02 = playSe( spep_0 + 84, 1183 );
setSeVolume( spep_1 + 46, 1183, 100 );
setSeVolume( spep_1 + 47, 1183, 84 );
setSeVolume( spep_1 + 48, 1183, 62 );
setSeVolume( spep_1 + 49, 1183, 40 );
setSeVolume( spep_1 + 50, 1183, 18 );
setSeVolume( spep_1 + 51, 1183, 0 );
stopSe( spep_1 + 51, SE02, 0 );

--敵持ち直す
playSe( spep_1 + 48, 1003 );

--ラッシュ１_1
playSe( spep_1 + 68, 1189 );
--ラッシュ１_2
playSe( spep_1 + 74, 1000 );
--ラッシュ１_3
playSe( spep_1 + 74, 1010 );
--ラッシュ１_4
playSe( spep_1 + 74, 1110 );
setSeVolume( spep_1 + 74, 1110, 72 );
--ラッシュ１_5
playSe( spep_1 + 98, 1000 );
--ラッシュ１_6
playSe( spep_1 + 98, 1009 );
setSeVolume( spep_1 + 98, 1009, 90 );
--ラッシュ１_7
playSe( spep_1 + 98, 1110 );
setSeVolume( spep_1 + 98, 1110, 74 );

--キック1
playSe( spep_1 + 132, 1001 );
setSeVolume( spep_1 + 132, 1001, 83 );
--キック2
playSe( spep_1 + 132, 1010 );
setSeVolume( spep_1 + 132, 1010, 82 );
--キック3
playSe( spep_1 + 134, 1110 );
--キック4
playSe( spep_1 + 134, 1187 );
setSeVolume( spep_1 + 134, 1187, 71 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 166, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 154, 9, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 166;

------------------------------------------------------
-- 気弾溜め(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --気弾溜め(ef_006)
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 96, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 96, tame, 255 );

spep_x = spep_2 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_2 + 13,  906, 82, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 13, shuchusen4, 82, 25 );
setEffMoveKey(   spep_2 + 13, shuchusen4, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 95, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 13, shuchusen4, 1.2, 1.5 );
setEffScaleKey(  spep_2 + 95, shuchusen4, 1.2, 1.5 );
setEffRotateKey( spep_2 + 13, shuchusen4, 0 );
setEffRotateKey( spep_2 + 95, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 13, shuchusen4, 255 );
setEffAlphaKey(  spep_2 + 95, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 13,  190006, 71, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 13, ctgogo, 71, 10 );
setEffMoveKey( spep_x + 13, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey( spep_x + 13, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 13, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
playSe( spep_2 + 12, 1018 );

--気弾溜め1
playSe( spep_2 + 12, 1230 );
setSeVolume( spep_2 + 12, 1230, 52 );
--気弾溜め2
playSe( spep_2 + 14, 1231 );
setSeVolume( spep_2 + 14, 1231, 76 );
--気弾溜め3
SE10 = playSe( spep_2 + 14, 1177 );
setSeVolume( spep_2 + 14, 1177, 82 );
stopSe( spep_2 + 96, SE10, 0 );
--気弾溜め4
playSe( spep_2 + 14, 1122 );
setSeVolume( spep_2 + 14, 1122, 65 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 12, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 86, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

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
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


--------------------------------------
--気弾発射(86F)
--------------------------------------
-- ** エフェクト等 ** --
shoot = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --気弾発射(ef_007)
setEffMoveKey( spep_4 + 0, shoot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shoot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shoot, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, shoot, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shoot, 0 );
setEffRotateKey( spep_4 + 86, shoot, 0 );
setEffAlphaKey( spep_4 + 0, shoot, 255 );
setEffAlphaKey( spep_4 + 86, shoot, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 -3 + 50,  10012, 32, 0x100, -1, 0, 8.4, 221.7 );
setEffMoveKey( spep_4 -3 + 50, ctzuo, 8.4, 221.7 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzuo, -11.6, 262.5 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzuo, -53.5, 313.5 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctzuo, -32, 306.1 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctzuo, -52.2, 318.4 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctzuo, -29.9, 310.7 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctzuo, -51, 323.4 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctzuo, -27.7, 315.3 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctzuo, -49.7, 328.4 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctzuo, -25.6, 319.9 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctzuo, -48.5, 333.4 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctzuo, -23.4, 324.5 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctzuo, -47.2, 338.4 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctzuo, -21.3, 329.1 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctzuo, -45.9, 343.4 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctzuo, -2.6, 358.8 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctzuo, 15.2, 386.2 , 0 );

setEffScaleKey( spep_4 -3 + 50, ctzuo, 0.17, 0.17 );
setEffScaleKey( spep_4 -3 + 52, ctzuo, 1.45, 1.45 );
setEffScaleKey( spep_4 -3 + 54, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 -3 + 56, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_4 -3 + 58, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_4 -3 + 60, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4 -3 + 62, ctzuo, 2.96, 2.96 );
setEffScaleKey( spep_4 -3 + 64, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_4 -3 + 66, ctzuo, 3.07, 3.07 );
setEffScaleKey( spep_4 -3 + 68, ctzuo, 3.13, 3.13 );
setEffScaleKey( spep_4 -3 + 70, ctzuo, 3.18, 3.18 );
setEffScaleKey( spep_4 -3 + 72, ctzuo, 3.24, 3.24 );
setEffScaleKey( spep_4 -3 + 74, ctzuo, 3.3, 3.3 );
setEffScaleKey( spep_4 -3 + 76, ctzuo, 3.36, 3.36 );
setEffScaleKey( spep_4 -3 + 78, ctzuo, 3.41, 3.41 );
setEffScaleKey( spep_4 -3 + 80, ctzuo, 5.12, 5.12 );
setEffScaleKey( spep_4 -3 + 82, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_4 -3 + 50, ctzuo, 7.2 );
setEffRotateKey( spep_4 -3 + 82, ctzuo, 7.2 );

setEffAlphaKey( spep_4 -3 + 50, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 78, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 80, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 82, ctzuo, 0 );

-- ** 音 ** --
--気弾発射前ため1
SE03 = playSe( spep_4 + 14, 1177 );
setSeVolume( spep_4 + 14, 1177, 12 );
setSeVolume( spep_4 + 15, 1177, 24 );
setSeVolume( spep_4 + 16, 1177, 36 );
setSeVolume( spep_4 + 17, 1177, 48 );
setSeVolume( spep_4 + 18, 1177, 60 );
setSeVolume( spep_4 + 19, 1177, 72 );
setSeVolume( spep_4 + 20, 1177, 84 );
setSeVolume( spep_4 + 21, 1177, 96 );
setSeVolume( spep_4 + 22, 1177, 108 );
setSeVolume( spep_4 + 23, 1177, 120 );
setSeVolume( spep_4 + 24, 1177, 127 );
setSeVolume( spep_4 + 62, 1177, 127 );
setSeVolume( spep_4 + 63, 1177, 103 );
setSeVolume( spep_4 + 64, 1177, 81 );
setSeVolume( spep_4 + 65, 1177, 60 );
setSeVolume( spep_4 + 66, 1177, 42 );
setSeVolume( spep_4 + 67, 1177, 29 );
setSeVolume( spep_4 + 68, 1177, 17 );
setSeVolume( spep_4 + 69, 1177, 6 );
setSeVolume( spep_4 + 70, 1177, 0 );
stopSe( spep_4 + 70, SE03, 0 );

--気弾発射前ため2
SE04 = playSe( spep_4 + 14, 1157 );
setSeVolume( spep_4 + 62, 1157, 100 );
setSeVolume( spep_4 + 63, 1157, 88 );
setSeVolume( spep_4 + 64, 1157, 74 );
setSeVolume( spep_4 + 65, 1157, 63 );
setSeVolume( spep_4 + 66, 1157, 48 );
setSeVolume( spep_4 + 67, 1157, 36 );
setSeVolume( spep_4 + 68, 1157, 24 );
setSeVolume( spep_4 + 69, 1157, 12 );
setSeVolume( spep_4 + 70, 1157, 0 );
stopSe( spep_4 + 70, SE04, 0 );

--気弾発射前ため3
SE05 = playSe( spep_4 + 14, 1191 );
setSeVolume( spep_4 + 14, 1191, 174 );
setSeVolume( spep_4 + 62, 1157, 152 );
setSeVolume( spep_4 + 63, 1191, 130 );
setSeVolume( spep_4 + 64, 1191, 108 );
setSeVolume( spep_4 + 65, 1191, 86 );
setSeVolume( spep_4 + 66, 1191, 64 );
setSeVolume( spep_4 + 67, 1191, 42 );
setSeVolume( spep_4 + 68, 1191, 20 );
setSeVolume( spep_4 + 69, 1191, 6 );
setSeVolume( spep_4 + 70, 1191, 0 );
stopSe( spep_4 + 70, SE05, 0 );

--気弾発射1
playSe( spep_4 + 58, 1027 );
setSeVolume( spep_4 + 58, 1027, 76 );

--気弾発射2
SE06 = playSe( spep_4 + 58, 1236 );
setSeVolume( spep_4 + 58, 1236, 193 );
stopSe( spep_4 + 162 + 18, SE06, 0 );

--気弾発射3
SE07 = playSe( spep_4 + 58, 1205 );
setSeVolume( spep_4 + 58, 1205, 67 );
stopSe( spep_4 + 162 + 18, SE07, 0 );

--気弾発射4
SE08 = playSe( spep_4 + 60, 1212 );
setSeVolume( spep_4 + 60, 1212, 45 );
setSeVolume( spep_4 + 162 + 14, 1212, 45 );
setSeVolume( spep_4 + 162 + 16, 1212, 39 );
setSeVolume( spep_4 + 162 + 18, 1212, 33 );
setSeVolume( spep_4 + 162 + 20, 1212, 27 );
setSeVolume( spep_4 + 162 + 22, 1212, 21 );
setSeVolume( spep_4 + 162 + 24, 1212, 15 );
setSeVolume( spep_4 + 162 + 26, 1212, 9 );
setSeVolume( spep_4 + 162 + 28, 1212, 3 );
setSeVolume( spep_4 + 162 + 29, 1212, 0 );
stopSe( spep_4 + 162 + 29, SE08, 0 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 46, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 72, 4, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

--------------------------------------
--気弾命中(76F)
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --気弾命中：敵より前(ef_008)
setEffMoveKey( spep_5 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 76, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 76, hit_f, 255 );

hit_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --気弾命中：敵より後ろ(ef_009)
setEffMoveKey( spep_5 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 76, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 76, hit_b, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_5 -3 + 36,  10014, 42, 0x100, -1, 0, -134.5, 359.9 );  --ズドドドッ
setEffMoveKey( spep_5 -3 + 36, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 56, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 58, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 60, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 62, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 64, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 66, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 68, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 70, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 72, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 74, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 76, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 78, ctzudodo, -138.6, 378.5 , 0 );

setEffScaleKey( spep_5 -3 + 36, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_5 -3 + 78, ctzudodo, 1.98, 1.98 );

setEffRotateKey( spep_5 -3 + 36, ctzudodo, 8.5 );
setEffRotateKey( spep_5 -3 + 78, ctzudodo, 8.5 );

setEffAlphaKey( spep_5 -3 + 36, ctzudodo, 255 );
setEffAlphaKey( spep_5 -3 + 78, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 50, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5  + 0, 1, -828.9, -126.5 , 0 );
setMoveKey( spep_5  + 2, 1, -801.7, -118.4 , 0 );
setMoveKey( spep_5  + 4, 1, -772.5, -109.7 , 0 );
setMoveKey( spep_5  + 6, 1, -741.3, -100.3 , 0 );
setMoveKey( spep_5  + 8, 1, -708.1, -90.4 , 0 );
setMoveKey( spep_5  + 10, 1, -672.9, -79.8 , 0 );
setMoveKey( spep_5  + 12, 1, -635.8, -68.7 , 0 );
setMoveKey( spep_5  + 14, 1, -596.8, -56.9 , 0 );
setMoveKey( spep_5  + 16, 1, -555.9, -44.6 , 0 );
setMoveKey( spep_5  + 18, 1, -513.2, -31.7 , 0 );
setMoveKey( spep_5  + 20, 1, -468.6, -18.3 , 0 );
setMoveKey( spep_5  + 22, 1, -422.2, -4.2 , 0 );
setMoveKey( spep_5  + 24, 1, -374, 10.3 , 0 );
setMoveKey( spep_5  + 26, 1, -324.1, 25.4 , 0 );
setMoveKey( spep_5  + 28, 1, -272.4, 41.1 , 0 );
setMoveKey( spep_5  + 30, 1, -209, 49.2 , 0 );
setMoveKey( spep_5  + 32, 1, -163.9, 65.9 , 0 );
setMoveKey( spep_5  + 34, 1, -99.1, 91.1 , 0 );
setMoveKey( spep_5  + 36, 1, -48.7, 108.8 , 0 );
setMoveKey( spep_5  + 38, 1, 21.3, 119.1 , 0 );
setMoveKey( spep_5  + 40, 1, 73, 137.8 , 0 );
setMoveKey( spep_5  + 42, 1, 102.7, 145 , 0 );
setMoveKey( spep_5  + 44, 1, 116.4, 144.2 , 0 );
setMoveKey( spep_5  + 46, 1, 148.1, 135.3 , 0 );
setMoveKey( spep_5  + 48, 1, 159.7, 134.5 , 0 );
setMoveKey( spep_5  + 50, 1, 188.9, 141.5 , 0 );

setScaleKey( spep_5  + 0, 1, 6.59, 6.59 );
setScaleKey( spep_5  + 2, 1, 6.44, 6.44 );
setScaleKey( spep_5  + 4, 1, 6.28, 6.28 );
setScaleKey( spep_5  + 6, 1, 6.11, 6.11 );
setScaleKey( spep_5  + 8, 1, 5.93, 5.93 );
setScaleKey( spep_5  + 10, 1, 5.73, 5.73 );
setScaleKey( spep_5  + 12, 1, 5.53, 5.53 );
setScaleKey( spep_5  + 14, 1, 5.32, 5.32 );
setScaleKey( spep_5  + 16, 1, 5.09, 5.09 );
setScaleKey( spep_5  + 18, 1, 4.86, 4.86 );
setScaleKey( spep_5  + 20, 1, 4.61, 4.61 );
setScaleKey( spep_5  + 22, 1, 4.36, 4.36 );
setScaleKey( spep_5  + 24, 1, 4.1, 4.1 );
setScaleKey( spep_5  + 26, 1, 3.82, 3.82 );
setScaleKey( spep_5  + 28, 1, 3.54, 3.54 );
setScaleKey( spep_5  + 30, 1, 3.25, 3.25 );
setScaleKey( spep_5  + 32, 1, 2.95, 2.95 );
setScaleKey( spep_5  + 34, 1, 2.64, 2.64 );
setScaleKey( spep_5  + 36, 1, 2.32, 2.32 );
setScaleKey( spep_5  + 38, 1, 2, 2 );
setScaleKey( spep_5  + 40, 1, 1.66, 1.66 );
setScaleKey( spep_5  + 42, 1, 1.39, 1.39 );
setScaleKey( spep_5  + 44, 1, 1.13, 1.13 );
setScaleKey( spep_5  + 46, 1, 0.86, 0.86 );
setScaleKey( spep_5  + 48, 1, 0.59, 0.59 );
setScaleKey( spep_5  + 50, 1, 0.33, 0.33 );

setRotateKey( spep_5  + 0, 1, 30 );
setRotateKey( spep_5  + 42, 1, 30 );
setRotateKey( spep_5  + 44, 1, 29.9 );
setRotateKey( spep_5  + 50, 1, 29.9 );

-- ** 音 ** --
--追い気弾
playSe( spep_5 + 46, 1021 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 76, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + 68, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 76;

--------------------------------------
--ギャン(56F)
--------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --ギャン(ef_011)
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 56, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 56, gyan, 255 );

ctgyan = entryEffectLife( spep_6 + 0,  10006, 56, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
setEffMoveKey( spep_6 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_6 + 56, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_6 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_6 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_6 + 56, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 56, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 56, ctgyan, 255 );

-- ** 音 ** --
--ギャン
playSe( spep_6 + 14, 1023 );

-- ** ホワイトフェード ** --
entryFade( spep_6 + 18, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

--------------------------------------
--ラスト爆発エフェクト(126F)
--------------------------------------
-- ** エフェクト等 ** --
last_f = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --ラスト爆発エフェクト(ef_010)
setEffMoveKey( spep_7 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 126, last_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 126, last_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, last_f, 0 );
setEffRotateKey( spep_7 + 126, last_f, 0 );
setEffAlphaKey( spep_7 + 0, last_f, 255 );
setEffAlphaKey( spep_7 + 126, last_f, 255 );

-- ** 音 ** --
--爆発1
playSe( spep_7 + 14, 1159 );
setSeVolume( spep_7 + 14, 1159, 87 );

--爆発2
playSe( spep_7 + 14, 1024 );
setSeVolume( spep_7 + 14, 1024, 85 );

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 126, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 8 );
endPhase( spep_7 + 116 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進、パンチ(95F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 95, 0x100, -1, 0, 0, 0 );  --突進、パンチ：敵より前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 95, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 95, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 95, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 95, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 95, 0x80, -1, 0, 0, 0 );  --突進、パンチ：敵より後ろ(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 95, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 95, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 95, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 95, first_b, 255 );

-- ** 書き文字エントリー ** --
ctgaha1 = entryEffectLife( spep_0 -3 + 60,  10005, 8, 0x100, -1, 0, -79.8, 307.5 ); --ガッ
setEffMoveKey( spep_0 -3 + 60, ctgaha1, -79.8, 297.5 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctgaha1, -79.8, 297.4 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctgaha1, -79.8, 297.4 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctgaha1, -79.7, 297.3 , 0 );

setEffScaleKey( spep_0 -3 + 60, ctgaha1, 1.062, 1.062 );
setEffScaleKey( spep_0 -3 + 62, ctgaha1, 1.674, 1.674 );
setEffScaleKey( spep_0 -3 + 64, ctgaha1, 2.268, 2.268 );
setEffScaleKey( spep_0 -3 + 66, ctgaha1, 2.358, 2.358 );
setEffScaleKey( spep_0 -3 + 68, ctgaha1, 2.466, 2.466 );

setEffRotateKey( spep_0 -3 + 60, ctgaha1, 27.9 );
setEffRotateKey( spep_0 -3 + 68, ctgaha1, 27.9 );

setEffAlphaKey( spep_0 -3 + 60, ctgaha1, 255 );
setEffAlphaKey( spep_0 -3 + 64, ctgaha1, 255 );
setEffAlphaKey( spep_0 -3 + 66, ctgaha1, 128 );
setEffAlphaKey( spep_0 -3 + 68, ctgaha1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 43, 1, 1 );
setDisp( spep_0 + 64 + 0, 1, 0 );
changeAnime( spep_0 + 43, 1, 118 );
changeAnime( spep_0 + 57, 1, 107 );

setMoveKey( spep_0 + 43, 1, 1210, -220 , 0 );
setMoveKey( spep_0 + 47, 1, 890, -170 , 0 );
setMoveKey( spep_0 + 49, 1, 755, -150 , 0 );
setMoveKey( spep_0 + 51, 1, 595, -135 , 0 );
setMoveKey( spep_0 + 53, 1, 447, -115 , 0 );
setMoveKey( spep_0 + 55, 1, 280, -95 , 0 );
setMoveKey( spep_0 + 56, 1, 280, -95 , 0 );
setMoveKey( spep_0 + 57, 1, 112, -240 , 0 );
setMoveKey( spep_0 + 59, 1, 275, -323 , 0 );
setMoveKey( spep_0 + 61, 1, 507, -450 , 0 );
setMoveKey( spep_0 + 63, 1, 547, -470 , 0 );
setMoveKey( spep_0 + 64, 1, 547, -470 , 0 );

setScaleKey( spep_0 + 43, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 45, 1, 8.1, 8.1 );
setScaleKey( spep_0 + 47, 1, 7.3, 7.3 );
setScaleKey( spep_0 + 49, 1, 6.7, 6.7 );
setScaleKey( spep_0 + 51, 1, 6.0, 6.0 );
setScaleKey( spep_0 + 53, 1, 5.4, 5.4 );
setScaleKey( spep_0 + 55, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 56, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 57, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 59, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 61, 1, 3.00, 3.00 );
setScaleKey( spep_0 + 63, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 64, 1, 3.51, 3.51 );

setRotateKey( spep_0 + 43, 1, 0 );
setRotateKey( spep_0 + 56, 1, 0 );
setRotateKey( spep_0 + 57, 1, -20 );
setRotateKey( spep_0 + 64, 1, -20 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** 音 ** --
--冒頭ダッシュ1
SE00 = playSe( spep_0 + 2, 9 );

--冒頭ダッシュ2
SE01 = playSe( spep_0 + 10, 1072 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 43; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE00, 0 );
stopSe( SP_dodge - 12, SE01, 0 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setDisp( SP_dodge + 0, 1, 1 );
changeAnime( SP_dodge + 0, 1, 118 );

setMoveKey( SP_dodge + 0, 1, 1210, -220 , 0 );
setMoveKey( SP_dodge + 4, 1, 890, -170 , 0 );
setMoveKey( SP_dodge + 6, 1, 755, -150 , 0 );
setMoveKey( SP_dodge + 8, 1, 595, -135 , 0 );
setMoveKey( SP_dodge + 10, 1, 447, -115 , 0 );

setScaleKey( SP_dodge + 0, 1, 8.7, 8.7 );
setScaleKey( SP_dodge + 2, 1, 8.1, 8.1 );
setScaleKey( SP_dodge + 4, 1, 7.3, 7.3 );
setScaleKey( SP_dodge + 6, 1, 6.7, 6.7 );
setScaleKey( SP_dodge + 8, 1, 6.0, 6.0 );
setScaleKey( SP_dodge + 10, 1, 5.4, 5.4 );

setRotateKey( spep_0 + 43, 1, 0 );

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

-- ** 音 ** --
--初手パンチ1	
playSe( spep_0 + 48, 1003 );
--初手パンチ2
playSe( spep_0 + 56, 1009 );
--初手パンチ3
playSe( spep_0 + 56, 1187 );
setSeVolume( spep_0 + 56, 1187, 75 );
--初手パンチ4
playSe( spep_0 + 58, 1110 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- ラッシュ、蹴り飛ばし(166F)
------------------------------------------------------
-- ** エフェクト等 ** --
chbuu_f = entryEffectLife( spep_1 + 0, SP_04, 131, 0x100, -1, 0, 0, 0 );  --ラッシュ、蹴り飛ばし：敵より前１(ef_004)
setEffMoveKey( spep_1 + 0, chbuu_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 131, chbuu_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, chbuu_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 131, chbuu_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, chbuu_f, 0 );
setEffRotateKey( spep_1 + 131, chbuu_f, 0 );
setEffAlphaKey( spep_1 + 0, chbuu_f, 255 );
setEffAlphaKey( spep_1 + 131, chbuu_f, 255 );

chbuu_b = entryEffectLife( spep_1 + 0, SP_04, 166, 0x80, -1, 0, 0, 0 );  --ラッシュ、蹴り飛ばし：敵より後ろ１(ef_004)
setEffMoveKey( spep_1 + 0, chbuu_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, chbuu_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, chbuu_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, chbuu_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, chbuu_b, 0 );
setEffRotateKey( spep_1 + 166, chbuu_b, 0 );
setEffAlphaKey( spep_1 + 0, chbuu_b, 0 );
setEffAlphaKey( spep_1 + 131, chbuu_b, 0 );
setEffAlphaKey( spep_1 + 132, chbuu_b, 255 );
setEffAlphaKey( spep_1 + 166, chbuu_b, 255 );

rush_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ラッシュ、蹴り飛ばし：敵より前(ef_003)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 166, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 166, rush_f, 255 );

rush_b = entryEffect( spep_1 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --ラッシュ、蹴り飛ばし：敵より後ろ２(ef_005)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 166, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 166, rush_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 73,  906, 12, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 73, shuchusen1, 12, 25 );
setEffMoveKey(   spep_1 + 73, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 85, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_1 + 73, shuchusen1, 1.8, 1.8 );
setEffScaleKey(  spep_1 + 85, shuchusen1, 1.8, 1.8 );
setEffRotateKey( spep_1 + 73, shuchusen1, 0 );
setEffRotateKey( spep_1 + 85, shuchusen1, 0 );
setEffAlphaKey(  spep_1 + 73, shuchusen1, 255 );
setEffAlphaKey(  spep_1 + 85, shuchusen1, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 95,  906, 10, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 95, shuchusen2, 10, 25 );
setEffMoveKey(   spep_1 + 95, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 105, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_1 + 95, shuchusen2, 1.8, 1.8 );
setEffScaleKey(  spep_1 + 105, shuchusen2, 1.8, 1.8 );
setEffRotateKey( spep_1 + 95, shuchusen2, 0 );
setEffRotateKey( spep_1 + 105, shuchusen2, 0 );
setEffAlphaKey(  spep_1 + 95, shuchusen2, 255 );
setEffAlphaKey(  spep_1 + 105, shuchusen2, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 + 131,  906, 34, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 131, shuchusen3, 34, 25 );
setEffMoveKey(   spep_1 + 131, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 165, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_1 + 131, shuchusen3, 2.4, 2.4 );
setEffScaleKey(  spep_1 + 165, shuchusen3, 2.4, 2.4 );
setEffRotateKey( spep_1 + 131, shuchusen3, 0 );
setEffRotateKey( spep_1 + 165, shuchusen3, 0 );
setEffAlphaKey(  spep_1 + 131, shuchusen3, 255 );
setEffAlphaKey(  spep_1 + 165, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 -3 + 76,  10020, 12, 0x100, -1, 0, -31.9, 286.6 ); --バキッ
setEffMoveKey( spep_1 -3 + 76, ctbaki, -31.9, 286.6 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctbaki, -12.6, 297.8 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctbaki, -31.9, 286.6 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctbaki, -12.6, 297.8 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctbaki, -31.9, 286.6 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctbaki, -12.6, 297.8 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctbaki, -31.9, 286.6 , 0 );

setEffScaleKey( spep_1 -3 + 76, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 -3 + 88, ctbaki, 1.73, 1.73 );

setEffRotateKey( spep_1 -3 + 76, ctbaki, 15 );
setEffRotateKey( spep_1 -3 + 88, ctbaki, 15 );

setEffAlphaKey( spep_1 -3 + 76, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 88, ctbaki, 255 );

ctgaha2 = entryEffectLife( spep_1 -3 + 98,  10005, 10, 0x100, -1, 0, 63.4, 307.5 );  --ガッ
setEffMoveKey( spep_1 -3 + 98, ctgaha2, 63.4, 307.5 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctgaha2, 73.7, 312.6 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctgaha2, 63.4, 307.5 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctgaha2, 73.7, 312.6 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctgaha2, 63.4, 307.5 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctgaha2, 73.7, 312.6 , 0 );

setEffScaleKey( spep_1 -3 + 98, ctgaha2, 1.42, 1.42 );
setEffScaleKey( spep_1 -3 + 108, ctgaha2, 1.42, 1.42 );

setEffRotateKey( spep_1 -3 + 98, ctgaha2, 0 );
setEffRotateKey( spep_1 -3 + 108, ctgaha2, 0 );

setEffAlphaKey( spep_1 -3 + 98, ctgaha2, 255 );
setEffAlphaKey( spep_1 -3 + 108, ctgaha2, 255 );

ctdogon = entryEffectLife( spep_1 -3 + 134,  10018, 32, 0x100, -1, 0, -79.5, 306.8 );  --ドゴォン
setEffMoveKey( spep_1 -3 + 134, ctdogon, -79.5, 306.8 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctdogon, -85, 363 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctdogon, -75.6, 410.1 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctdogon, -89.9, 412.2 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctdogon, -86.4, 423.7 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctdogon, -87.9, 414.8 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctdogon, -95, 431.8 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctdogon, -91.6, 426.1 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctdogon, -101.1, 433.1 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctdogon, -98.5, 431.2 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctdogon, -100.8, 442.2 , 0 );
setEffMoveKey( spep_1 -3 + 156, ctdogon, -103.7, 437.6 , 0 );
setEffMoveKey( spep_1 -3 + 158, ctdogon, -109.9, 449.7 , 0 );
setEffMoveKey( spep_1 -3 + 160, ctdogon, -103.8, 448.6 , 0 );
setEffMoveKey( spep_1 -3 + 162, ctdogon, -129, 472 , 0 );
setEffMoveKey( spep_1 -3 + 164, ctdogon, -123.3, 475.5 , 0 );
setEffMoveKey( spep_1 -3 + 166, ctdogon, -134.6, 488.9 , 0 );

setEffScaleKey( spep_1 -3 + 134, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_1 -3 + 136, ctdogon, 1.62, 1.62 );
setEffScaleKey( spep_1 -3 + 138, ctdogon, 2.6, 2.6 );
setEffScaleKey( spep_1 -3 + 140, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_1 -3 + 142, ctdogon, 2.65, 2.65 );
setEffScaleKey( spep_1 -3 + 144, ctdogon, 2.67, 2.67 );
setEffScaleKey( spep_1 -3 + 146, ctdogon, 2.69, 2.69 );
setEffScaleKey( spep_1 -3 + 148, ctdogon, 2.72, 2.72 );
setEffScaleKey( spep_1 -3 + 150, ctdogon, 2.74, 2.74 );
setEffScaleKey( spep_1 -3 + 152, ctdogon, 2.76, 2.76 );
setEffScaleKey( spep_1 -3 + 154, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_1 -3 + 156, ctdogon, 2.81, 2.81 );
setEffScaleKey( spep_1 -3 + 158, ctdogon, 2.84, 2.84 );
setEffScaleKey( spep_1 -3 + 160, ctdogon, 2.86, 2.86 );
setEffScaleKey( spep_1 -3 + 162, ctdogon, 3.52, 3.52 );
setEffScaleKey( spep_1 -3 + 164, ctdogon, 4.18, 4.18 );
setEffScaleKey( spep_1 -3 + 166, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_1 -3 + 134, ctdogon, -30 );
setEffRotateKey( spep_1 -3 + 136, ctdogon, -29.9 );
setEffRotateKey( spep_1 -3 + 138, ctdogon, -29.8 );
setEffRotateKey( spep_1 -3 + 142, ctdogon, -29.8 );
setEffRotateKey( spep_1 -3 + 144, ctdogon, -29.9 );
setEffRotateKey( spep_1 -3 + 154, ctdogon, -29.9 );
setEffRotateKey( spep_1 -3 + 156, ctdogon, -30 );
setEffRotateKey( spep_1 -3 + 166, ctdogon, -30 );

setEffAlphaKey( spep_1 -3 + 134, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 160, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 162, ctdogon, 170 );
setEffAlphaKey( spep_1 -3 + 164, ctdogon, 85 );
setEffAlphaKey( spep_1 -3 + 166, ctdogon, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 142, 1, 0 );
changeAnime( spep_1 -3 + 0, 1, 106 );
changeAnime( spep_1 -3 + 38, 1, 111 );
changeAnime( spep_1 -3 + 39, 1, 111 );
changeAnime( spep_1 -3 + 40, 1, 111 );
changeAnime( spep_1 -3 + 41, 1, 111 );
changeAnime( spep_1 -3 + 42, 1, 111 );
changeAnime( spep_1 -3 + 43, 1, 111 );
changeAnime( spep_1 -3 + 44, 1, 111 );
changeAnime( spep_1 -3 + 45, 1, 111 );
changeAnime( spep_1 -3 + 46, 1, 104 );
changeAnime( spep_1 -3 + 76, 1, 106 );
changeAnime( spep_1 -3 + 98, 1, 108 );
changeAnime( spep_1 -3 + 114, 1, 106 );
changeAnime( spep_1 -3 + 134, 1, 107 );

setMoveKey( spep_1 + 0, 1, -540.5, 21.9 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -318.6, 21.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -96.6, 22 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 125.3, 22 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 119.1, 22 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 112.8, 22 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 106.6, 22 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 100.4, 22 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 94.1, 22 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 87.9, 22 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 81.6, 22.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 75.4, 22.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 69.2, 22.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 62.9, 22.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 56.7, 22.1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 50.4, 22.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 60.8, 35.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 93.9, 46.1 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 93.9, 46.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 93.9, 46.1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 100.3, 74.3 , 0 );
setMoveKey( spep_1 -3 + 45, 1, 107, 101.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 79.5, 69 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 103.7, 68.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 105.8, 68.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 108.9, 68.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 112, 68.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 115.1, 68.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 118.2, 68.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 121.4, 68.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 124.5, 68.6 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 127.6, 68.6 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 130.7, 68.6 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 133.8, 68.6 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 136.9, 68.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 140, 68.6 , 0 );
setMoveKey( spep_1 -3 + 75, 1, 143.1, 68.6 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 81.6, 89.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 143.5, 99.4 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 175.5, 79.4 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 184.7, 99.4 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 163.8, 89.5 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 153, 89.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 142.2, 89.6 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 131.4, 89.7 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 120.6, 89.7 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 109.8, 89.8 , 0 );
setMoveKey( spep_1 -3 + 97, 1, 99, 89.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 115.4, 85.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 101.5, 68.6 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 127.6, 91.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 123.7, 84 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 129.8, 86.6 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 135.9, 89.3 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 142, 92 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 148.1, 94.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 126.5, 134.4 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 126.9, 129.4 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 127.3, 124.5 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 127.7, 119.6 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 128.2, 114.7 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 128.6, 109.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 129, 104.9 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 129.5, 99.9 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 129.9, 95 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 130.3, 90.1 , 0 );
setMoveKey( spep_1 -3 + 133, 1, 130.3, 90.1 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 178.3, 3.1 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 230.3, -10.1 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 380.3, 111 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 459, 143 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 553, 203 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 660, 273 , 0 );
setMoveKey( spep_1 -3 + 145, 1, 660, 273 , 0 );

setScaleKey( spep_1 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 37, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 38, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 39, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 40, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 45, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 46, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 97, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 98, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 113, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 114, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 133, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 134, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 136, 1, 0.93, 0.93 );
setScaleKey( spep_1 -3 + 138, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 140, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 142, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 144, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 145, 1, 1.58, 1.58 );

setRotateKey( spep_1 + 0, 1, 30 );
setRotateKey( spep_1 -3 + 8, 1, 30 );
setRotateKey( spep_1 -3 + 10, 1, 29.8 );
setRotateKey( spep_1 -3 + 12, 1, 29.7 );
setRotateKey( spep_1 -3 + 14, 1, 29.5 );
setRotateKey( spep_1 -3 + 16, 1, 29.3 );
setRotateKey( spep_1 -3 + 18, 1, 29.2 );
setRotateKey( spep_1 -3 + 20, 1, 29 );
setRotateKey( spep_1 -3 + 22, 1, 28.8 );
setRotateKey( spep_1 -3 + 24, 1, 28.7 );
setRotateKey( spep_1 -3 + 26, 1, 28.5 );
setRotateKey( spep_1 -3 + 28, 1, 28.3 );
setRotateKey( spep_1 -3 + 30, 1, 28.2 );
setRotateKey( spep_1 -3 + 32, 1, 28 );
setRotateKey( spep_1 -3 + 34, 1, 25.3 );
setRotateKey( spep_1 -3 + 36, 1, 25.3 );
setRotateKey( spep_1 -3 + 37, 1, 25.3 );
setRotateKey( spep_1 -3 + 38, 1, 72 );
setRotateKey( spep_1 -3 + 39, 1, 70 );
setRotateKey( spep_1 -3 + 40, 1, 70 );
setRotateKey( spep_1 -3 + 42, 1, 55.9 );
setRotateKey( spep_1 -3 + 45, 1, 41.9 );
setRotateKey( spep_1 -3 + 46, 1, -0.8 );
setRotateKey( spep_1 -3 + 48, 1, -4.5 );
setRotateKey( spep_1 -3 + 75, 1, -4.5 );
setRotateKey( spep_1 -3 + 76, 1, -41.2 );
setRotateKey( spep_1 -3 + 78, 1, -40.8 );
setRotateKey( spep_1 -3 + 80, 1, -40.4 );
setRotateKey( spep_1 -3 + 82, 1, -40.1 );
setRotateKey( spep_1 -3 + 84, 1, -39.8 );
setRotateKey( spep_1 -3 + 86, 1, -39.5 );
setRotateKey( spep_1 -3 + 88, 1, -39.2 );
setRotateKey( spep_1 -3 + 90, 1, -38.9 );
setRotateKey( spep_1 -3 + 92, 1, -38.6 );
setRotateKey( spep_1 -3 + 94, 1, -38.3 );
setRotateKey( spep_1 -3 + 97, 1, -38 );
setRotateKey( spep_1 -3 + 98, 1, 7.2 );
setRotateKey( spep_1 -3 + 113, 1, 7.2 );
setRotateKey( spep_1 -3 + 114, 1, -37.4 );
setRotateKey( spep_1 -3 + 133, 1, -37.4 );
setRotateKey( spep_1 -3 + 134, 1,-66 );
setRotateKey( spep_1 -3 + 136, 1,-68 );
setRotateKey( spep_1 -3 + 145, 1,-68  );


-- ** 音 ** --
--敵飛んでいく
SE02 = playSe( spep_0 + 84, 1183 );
setSeVolume( spep_1 + 46, 1183, 100 );
setSeVolume( spep_1 + 47, 1183, 84 );
setSeVolume( spep_1 + 48, 1183, 62 );
setSeVolume( spep_1 + 49, 1183, 40 );
setSeVolume( spep_1 + 50, 1183, 18 );
setSeVolume( spep_1 + 51, 1183, 0 );
stopSe( spep_1 + 51, SE02, 0 );

--敵持ち直す
playSe( spep_1 + 48, 1003 );

--ラッシュ１_1
playSe( spep_1 + 68, 1189 );
--ラッシュ１_2
playSe( spep_1 + 74, 1000 );
--ラッシュ１_3
playSe( spep_1 + 74, 1010 );
--ラッシュ１_4
playSe( spep_1 + 74, 1110 );
setSeVolume( spep_1 + 74, 1110, 72 );
--ラッシュ１_5
playSe( spep_1 + 98, 1000 );
--ラッシュ１_6
playSe( spep_1 + 98, 1009 );
setSeVolume( spep_1 + 98, 1009, 90 );
--ラッシュ１_7
playSe( spep_1 + 98, 1110 );
setSeVolume( spep_1 + 98, 1110, 74 );

--キック1
playSe( spep_1 + 132, 1001 );
setSeVolume( spep_1 + 132, 1001, 83 );
--キック2
playSe( spep_1 + 132, 1010 );
setSeVolume( spep_1 + 132, 1010, 82 );
--キック3
playSe( spep_1 + 134, 1110 );
--キック4
playSe( spep_1 + 134, 1187 );
setSeVolume( spep_1 + 134, 1187, 71 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 166, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 154, 9, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 166;

------------------------------------------------------
-- 気弾溜め(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --気弾溜め(ef_006)
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 96, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 96, tame, 255 );

spep_x = spep_2 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_2 + 13,  906, 82, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 13, shuchusen4, 82, 25 );
setEffMoveKey(   spep_2 + 13, shuchusen4, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 95, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 13, shuchusen4, 1.2, 1.5 );
setEffScaleKey(  spep_2 + 95, shuchusen4, 1.2, 1.5 );
setEffRotateKey( spep_2 + 13, shuchusen4, 0 );
setEffRotateKey( spep_2 + 95, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 13, shuchusen4, 255 );
setEffAlphaKey(  spep_2 + 95, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 13,  190006, 71, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 13, ctgogo, 71, 10 );
setEffMoveKey( spep_x + 13, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey( spep_x + 13, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 13, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
--playSe( spep_2 + 12, 1018 );

--気弾溜め1
playSe( spep_2 + 12, 1230 );
setSeVolume( spep_2 + 12, 1230, 52 );
--気弾溜め2
playSe( spep_2 + 14, 1231 );
setSeVolume( spep_2 + 14, 1231, 76 );
--気弾溜め3
SE10 = playSe( spep_2 + 14, 1177 );
setSeVolume( spep_2 + 14, 1177, 82 );
stopSe( spep_2 + 96, SE10, 0 );
--気弾溜め4
playSe( spep_2 + 14, 1122 );
setSeVolume( spep_2 + 14, 1122, 65 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 12, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 86, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

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
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


--------------------------------------
--気弾発射(86F)
--------------------------------------
-- ** エフェクト等 ** --
shoot = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --気弾発射(ef_007)
setEffMoveKey( spep_4 + 0, shoot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shoot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shoot, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, shoot, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shoot, 0 );
setEffRotateKey( spep_4 + 86, shoot, 0 );
setEffAlphaKey( spep_4 + 0, shoot, 255 );
setEffAlphaKey( spep_4 + 86, shoot, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 -3 + 50,  10012, 32, 0x100, -1, 0, 8.4, 221.7 );
setEffMoveKey( spep_4 -3 + 50, ctzuo, 8.4, 221.7 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzuo, -11.6, 262.5 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzuo, -53.5, 313.5 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctzuo, -32, 306.1 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctzuo, -52.2, 318.4 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctzuo, -29.9, 310.7 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctzuo, -51, 323.4 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctzuo, -27.7, 315.3 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctzuo, -49.7, 328.4 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctzuo, -25.6, 319.9 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctzuo, -48.5, 333.4 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctzuo, -23.4, 324.5 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctzuo, -47.2, 338.4 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctzuo, -21.3, 329.1 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctzuo, -45.9, 343.4 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctzuo, -2.6, 358.8 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctzuo, 15.2, 386.2 , 0 );

setEffScaleKey( spep_4 -3 + 50, ctzuo, 0.17, 0.17 );
setEffScaleKey( spep_4 -3 + 52, ctzuo, 1.45, 1.45 );
setEffScaleKey( spep_4 -3 + 54, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4 -3 + 56, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_4 -3 + 58, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_4 -3 + 60, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4 -3 + 62, ctzuo, 2.96, 2.96 );
setEffScaleKey( spep_4 -3 + 64, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_4 -3 + 66, ctzuo, 3.07, 3.07 );
setEffScaleKey( spep_4 -3 + 68, ctzuo, 3.13, 3.13 );
setEffScaleKey( spep_4 -3 + 70, ctzuo, 3.18, 3.18 );
setEffScaleKey( spep_4 -3 + 72, ctzuo, 3.24, 3.24 );
setEffScaleKey( spep_4 -3 + 74, ctzuo, 3.3, 3.3 );
setEffScaleKey( spep_4 -3 + 76, ctzuo, 3.36, 3.36 );
setEffScaleKey( spep_4 -3 + 78, ctzuo, 3.41, 3.41 );
setEffScaleKey( spep_4 -3 + 80, ctzuo, 5.12, 5.12 );
setEffScaleKey( spep_4 -3 + 82, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_4 -3 + 50, ctzuo, 7.2 );
setEffRotateKey( spep_4 -3 + 82, ctzuo, 7.2 );

setEffAlphaKey( spep_4 -3 + 50, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 78, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 80, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 82, ctzuo, 0 );

-- ** 音 ** --
--気弾発射前ため1
SE03 = playSe( spep_4 + 14, 1177 );
setSeVolume( spep_4 + 14, 1177, 12 );
setSeVolume( spep_4 + 15, 1177, 24 );
setSeVolume( spep_4 + 16, 1177, 36 );
setSeVolume( spep_4 + 17, 1177, 48 );
setSeVolume( spep_4 + 18, 1177, 60 );
setSeVolume( spep_4 + 19, 1177, 72 );
setSeVolume( spep_4 + 20, 1177, 84 );
setSeVolume( spep_4 + 21, 1177, 96 );
setSeVolume( spep_4 + 22, 1177, 108 );
setSeVolume( spep_4 + 23, 1177, 120 );
setSeVolume( spep_4 + 24, 1177, 127 );
setSeVolume( spep_4 + 62, 1177, 127 );
setSeVolume( spep_4 + 63, 1177, 103 );
setSeVolume( spep_4 + 64, 1177, 81 );
setSeVolume( spep_4 + 65, 1177, 60 );
setSeVolume( spep_4 + 66, 1177, 42 );
setSeVolume( spep_4 + 67, 1177, 29 );
setSeVolume( spep_4 + 68, 1177, 17 );
setSeVolume( spep_4 + 69, 1177, 6 );
setSeVolume( spep_4 + 70, 1177, 0 );
stopSe( spep_4 + 70, SE03, 0 );

--気弾発射前ため2
SE04 = playSe( spep_4 + 14, 1157 );
setSeVolume( spep_4 + 62, 1157, 100 );
setSeVolume( spep_4 + 63, 1157, 88 );
setSeVolume( spep_4 + 64, 1157, 74 );
setSeVolume( spep_4 + 65, 1157, 63 );
setSeVolume( spep_4 + 66, 1157, 48 );
setSeVolume( spep_4 + 67, 1157, 36 );
setSeVolume( spep_4 + 68, 1157, 24 );
setSeVolume( spep_4 + 69, 1157, 12 );
setSeVolume( spep_4 + 70, 1157, 0 );
stopSe( spep_4 + 70, SE04, 0 );

--気弾発射前ため3
SE05 = playSe( spep_4 + 14, 1191 );
setSeVolume( spep_4 + 14, 1191, 174 );
setSeVolume( spep_4 + 62, 1157, 152 );
setSeVolume( spep_4 + 63, 1191, 130 );
setSeVolume( spep_4 + 64, 1191, 108 );
setSeVolume( spep_4 + 65, 1191, 86 );
setSeVolume( spep_4 + 66, 1191, 64 );
setSeVolume( spep_4 + 67, 1191, 42 );
setSeVolume( spep_4 + 68, 1191, 20 );
setSeVolume( spep_4 + 69, 1191, 6 );
setSeVolume( spep_4 + 70, 1191, 0 );
stopSe( spep_4 + 70, SE05, 0 );

--気弾発射1
playSe( spep_4 + 58, 1027 );
setSeVolume( spep_4 + 58, 1027, 76 );

--気弾発射2
SE06 = playSe( spep_4 + 58, 1236 );
setSeVolume( spep_4 + 58, 1236, 193 );
stopSe( spep_4 + 162 + 18, SE06, 0 );

--気弾発射3
SE07 = playSe( spep_4 + 58, 1205 );
setSeVolume( spep_4 + 58, 1205, 67 );
stopSe( spep_4 + 162 + 18, SE07, 0 );

--気弾発射4
SE08 = playSe( spep_4 + 60, 1212 );
setSeVolume( spep_4 + 60, 1212, 45 );
setSeVolume( spep_4 + 162 + 14, 1212, 45 );
setSeVolume( spep_4 + 162 + 16, 1212, 39 );
setSeVolume( spep_4 + 162 + 18, 1212, 33 );
setSeVolume( spep_4 + 162 + 20, 1212, 27 );
setSeVolume( spep_4 + 162 + 22, 1212, 21 );
setSeVolume( spep_4 + 162 + 24, 1212, 15 );
setSeVolume( spep_4 + 162 + 26, 1212, 9 );
setSeVolume( spep_4 + 162 + 28, 1212, 3 );
setSeVolume( spep_4 + 162 + 29, 1212, 0 );
stopSe( spep_4 + 162 + 29, SE08, 0 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 46, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 72, 4, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

--------------------------------------
--気弾命中(76F)
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --気弾命中：敵より前(ef_008)
setEffMoveKey( spep_5 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 76, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 76, hit_f, 255 );

hit_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --気弾命中：敵より後ろ(ef_009)
setEffMoveKey( spep_5 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 76, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 76, hit_b, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_5 -3 + 36,  10014, 42, 0x100, -1, 0, -134.5, 359.9 );  --ズドドドッ
setEffMoveKey( spep_5 -3 + 36, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 56, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 58, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 60, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 62, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 64, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 66, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 68, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 70, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 72, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 74, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_5 -3 + 76, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_5 -3 + 78, ctzudodo, -138.6, 378.5 , 0 );

setEffScaleKey( spep_5 -3 + 36, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_5 -3 + 78, ctzudodo, 1.98, 1.98 );

setEffRotateKey( spep_5 -3 + 36, ctzudodo, 8.5 );
setEffRotateKey( spep_5 -3 + 78, ctzudodo, 8.5 );

setEffAlphaKey( spep_5 -3 + 36, ctzudodo, 255 );
setEffAlphaKey( spep_5 -3 + 78, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 50, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5  + 0, 1, -828.9, -126.5 , 0 );
setMoveKey( spep_5  + 2, 1, -801.7, -118.4 , 0 );
setMoveKey( spep_5  + 4, 1, -772.5, -109.7 , 0 );
setMoveKey( spep_5  + 6, 1, -741.3, -100.3 , 0 );
setMoveKey( spep_5  + 8, 1, -708.1, -90.4 , 0 );
setMoveKey( spep_5  + 10, 1, -672.9, -79.8 , 0 );
setMoveKey( spep_5  + 12, 1, -635.8, -68.7 , 0 );
setMoveKey( spep_5  + 14, 1, -596.8, -56.9 , 0 );
setMoveKey( spep_5  + 16, 1, -555.9, -44.6 , 0 );
setMoveKey( spep_5  + 18, 1, -513.2, -31.7 , 0 );
setMoveKey( spep_5  + 20, 1, -468.6, -18.3 , 0 );
setMoveKey( spep_5  + 22, 1, -422.2, -4.2 , 0 );
setMoveKey( spep_5  + 24, 1, -374, 10.3 , 0 );
setMoveKey( spep_5  + 26, 1, -324.1, 25.4 , 0 );
setMoveKey( spep_5  + 28, 1, -272.4, 41.1 , 0 );
setMoveKey( spep_5  + 30, 1, -209, 49.2 , 0 );
setMoveKey( spep_5  + 32, 1, -163.9, 65.9 , 0 );
setMoveKey( spep_5  + 34, 1, -99.1, 91.1 , 0 );
setMoveKey( spep_5  + 36, 1, -48.7, 108.8 , 0 );
setMoveKey( spep_5  + 38, 1, 21.3, 119.1 , 0 );
setMoveKey( spep_5  + 40, 1, 73, 137.8 , 0 );
setMoveKey( spep_5  + 42, 1, 102.7, 145 , 0 );
setMoveKey( spep_5  + 44, 1, 116.4, 144.2 , 0 );
setMoveKey( spep_5  + 46, 1, 148.1, 135.3 , 0 );
setMoveKey( spep_5  + 48, 1, 159.7, 134.5 , 0 );
setMoveKey( spep_5  + 50, 1, 188.9, 141.5 , 0 );

setScaleKey( spep_5  + 0, 1, 6.59, 6.59 );
setScaleKey( spep_5  + 2, 1, 6.44, 6.44 );
setScaleKey( spep_5  + 4, 1, 6.28, 6.28 );
setScaleKey( spep_5  + 6, 1, 6.11, 6.11 );
setScaleKey( spep_5  + 8, 1, 5.93, 5.93 );
setScaleKey( spep_5  + 10, 1, 5.73, 5.73 );
setScaleKey( spep_5  + 12, 1, 5.53, 5.53 );
setScaleKey( spep_5  + 14, 1, 5.32, 5.32 );
setScaleKey( spep_5  + 16, 1, 5.09, 5.09 );
setScaleKey( spep_5  + 18, 1, 4.86, 4.86 );
setScaleKey( spep_5  + 20, 1, 4.61, 4.61 );
setScaleKey( spep_5  + 22, 1, 4.36, 4.36 );
setScaleKey( spep_5  + 24, 1, 4.1, 4.1 );
setScaleKey( spep_5  + 26, 1, 3.82, 3.82 );
setScaleKey( spep_5  + 28, 1, 3.54, 3.54 );
setScaleKey( spep_5  + 30, 1, 3.25, 3.25 );
setScaleKey( spep_5  + 32, 1, 2.95, 2.95 );
setScaleKey( spep_5  + 34, 1, 2.64, 2.64 );
setScaleKey( spep_5  + 36, 1, 2.32, 2.32 );
setScaleKey( spep_5  + 38, 1, 2, 2 );
setScaleKey( spep_5  + 40, 1, 1.66, 1.66 );
setScaleKey( spep_5  + 42, 1, 1.39, 1.39 );
setScaleKey( spep_5  + 44, 1, 1.13, 1.13 );
setScaleKey( spep_5  + 46, 1, 0.86, 0.86 );
setScaleKey( spep_5  + 48, 1, 0.59, 0.59 );
setScaleKey( spep_5  + 50, 1, 0.33, 0.33 );

setRotateKey( spep_5  + 0, 1, 30 );
setRotateKey( spep_5  + 42, 1, 30 );
setRotateKey( spep_5  + 44, 1, 29.9 );
setRotateKey( spep_5  + 50, 1, 29.9 );

-- ** 音 ** --
--追い気弾
playSe( spep_5 + 46, 1021 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 76, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + 68, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 76;

--------------------------------------
--ギャン(56F)
--------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --ギャン(ef_011)
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 56, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 56, gyan, 255 );

ctgyan = entryEffectLife( spep_6 + 0,  10006, 56, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
setEffMoveKey( spep_6 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_6 + 56, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_6 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_6 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_6 + 56, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 56, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 56, ctgyan, 255 );

-- ** 音 ** --
--ギャン
playSe( spep_6 + 14, 1023 );

-- ** ホワイトフェード ** --
entryFade( spep_6 + 18, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

--------------------------------------
--ラスト爆発エフェクト(126F)
--------------------------------------
-- ** エフェクト等 ** --
last_f = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --ラスト爆発エフェクト(ef_010)
setEffMoveKey( spep_7 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 126, last_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 126, last_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, last_f, 0 );
setEffRotateKey( spep_7 + 126, last_f, 0 );
setEffAlphaKey( spep_7 + 0, last_f, 255 );
setEffAlphaKey( spep_7 + 126, last_f, 255 );

-- ** 音 ** --
--爆発1
playSe( spep_7 + 14, 1159 );
setSeVolume( spep_7 + 14, 1159, 87 );

--爆発2
playSe( spep_7 + 14, 1024 );
setSeVolume( spep_7 + 14, 1024, 85 );

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 126, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 8 );
endPhase( spep_7 + 116 );

end
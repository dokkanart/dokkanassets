--超サイヤ人2ベジータ_ファイナルフラッシュ

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
SP_01 = 154643; --溜め
SP_02 = 154644; --前方突進
SP_03 = 154645; --横パンチ　前側
SP_04 = 154646; --横パンチ 後側
SP_05 = 154647; --前方へ蹴り構え
SP_06 = 154648; --膝蹴り　前側
SP_07 = 154649; --膝蹴り　後側
SP_08 = 154650; --パンチ落とし　前側
SP_09 = 154651; --パンチ落とし　後側
SP_10 = 154652; --気弾溜め
SP_11 = 154653; --発射
SP_12 = 154654; --迫る　前側
SP_13 = 154655; --迫る　後側
SP_14 = 154656; --大爆発

--敵側
SP_03x = 154604; --格闘

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
-- 溜め(188F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 188, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 188, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 188, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 188, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 188, tame, 255 );

spep_x = spep_0 + 14;
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 190, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--雷オーラ
playSe( spep_0 + 0, 1056 );
setSeVolume( spep_0 + 0, 1056, 80 );

--気溜め
playSe( spep_0 + 18, 1035 );

--オーラ
playSe( spep_0 + 39, 1036 );
playSe( spep_0 + 63, 1036 );
playSe( spep_0 + 87, 1036 );
playSe( spep_0 + 111, 1036 );
playSe( spep_0 + 135, 1036 );
playSe( spep_0 + 159, 1036 );
SE0 = playSe( spep_0 + 183, 1036 );

--強気溜め
playSe( spep_0 + 119 -10, 1068 );

--前方ダッシュ
SE1 = playSe( spep_0 + 174, 1183 );
setSeVolume( spep_0 + 174, 1183, 0 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 188;

------------------------------------------------------
-- 前方突進(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_1 + 0, SP_02, 56, 0x80, -1, 0, 0, 0 );  --前方突進(ef_001)
setEffMoveKey( spep_1 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tosshin, 0 );
setEffRotateKey( spep_1 + 56, tosshin, 0 );
setEffAlphaKey( spep_1 + 0, tosshin, 255 );
setEffAlphaKey( spep_1 + 56, tosshin, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--オーラ
stopSe( spep_1 + 2, SE0, 0 );

--前方ダッシュ
setSeVolume( spep_1 + 3, 1183, 0 );
setSeVolume( spep_1 + 4, 1183, 140 );
setSeVolume( spep_1 + 5, 1183, 188 );

SE2 = playSe( spep_1 + 2, 9 );
SE3 = playSe( spep_1 + 2, 1182 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 46; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );
stopSe(SP_dodge - 12, SE3, 0 );

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
-- 横パンチ(46F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_2 + 0, SP_03, 46, 0x100, -1, 0, 0, 0 );  --横パンチ(ef_003)
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 46, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 46, punch_f, 255 );

punch_b = entryEffectLife( spep_2 + 0, SP_04, 46, 0x80, -1, 0, 0, 0 );  --横パンチ(ef_004)
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 46, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 46, punch_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 46, 1, 0 );
changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 -3 + 26, 1, 106 );

setMoveKey( spep_2 + 0, 1, 247.8, 24.4 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 230.6, 24.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 213.4, 24.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 196.3, 24.4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 179.3, 24.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 162.2, 24.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 145.1, 24.4 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 128.1, 24.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 111, 24.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 93.9, 24.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 76.6, 24.4 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 59.6, 24.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 40.8, 83.4 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 101.4, 37.9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 97.2, 71.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 180.7, 57.9 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 189.9, 45 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 231.4, 81.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 246.2, 51.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 291.7, 62.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 299.8, 62.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 307.9, 62.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 316, 62.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 324.1, 62.1 , 0 );
setMoveKey( spep_2 + 46, 1, 324.1, 62.1 , 0 );

setScaleKey( spep_2 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 46, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 25, 1, 0 );
setRotateKey( spep_2 -3 + 26, 1, -31.1 );
setRotateKey( spep_2 + 46, 1, -31.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 48, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --

-- ** 音 ** --
--前方ダッシュ
stopSe( spep_2 + 31, SE1, 0 );
stopSe( spep_2 + 31, SE2, 0 );

--パンチ
playSe( spep_2 + 31 -8, 1009 );
setSeVolume( spep_2 + 31 -8, 1009, 90 );
playSe( spep_2 + 31 -8, 1110 );
setSeVolume( spep_2 + 31 -8, 1110, 90 );
SE4 = playSe( spep_2 + 31 -8, 1187 );
setSeVolume( spep_2 + 31 -8, 1187, 90 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 46;

------------------------------------------------------
-- 前方へ蹴り構え(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack = entryEffectLife( spep_3 + 0, SP_05, 56, 0x100, -1, 0, 0, 0 );  --前方へ蹴り構え(ef_005)
setEffMoveKey( spep_3 + 0, attack, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, attack, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, attack, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack, 0 );
setEffRotateKey( spep_3 + 56, attack, 0 );
setEffAlphaKey( spep_3 + 0, attack, 255 );
setEffAlphaKey( spep_3 + 55, attack, 255 );
setEffAlphaKey( spep_3 + 56, attack, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--パンチ
setSeVolume( spep_3 + 7 -8, 1187, 90 );
setSeVolume( spep_3 + 10 -8, 1187, 60 );
setSeVolume( spep_3 + 14 -8, 1187, 40 );
setSeVolume( spep_3 + 18 -8, 1187, 20 );
setSeVolume( spep_3 + 24 -8, 1187, 0 );
stopSe(spep_3 + 24 -8, SE4, 0 );

--足ふりかぶり
SE5 = playSe( spep_3 + 15, 1116 );
stopSe( spep_3 + 44, SE5, 26 );

playSe( spep_3 + 18, 1004 );
playSe( spep_3 + 45, 8 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;

------------------------------------------------------
-- 膝蹴り(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
hizageri_f = entryEffectLife( spep_4 + 0, SP_06, 96, 0x100, -1, 0, 0, 0 );  --膝蹴り(ef_006)
setEffMoveKey( spep_4 + 0, hizageri_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, hizageri_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hizageri_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hizageri_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hizageri_f, 0 );
setEffRotateKey( spep_4 + 96, hizageri_f, 0 );
setEffAlphaKey( spep_4 + 0, hizageri_f, 255 );
setEffAlphaKey( spep_4 + 96, hizageri_f, 255 );

hizageri_b = entryEffectLife( spep_4 + 0, SP_07, 96, 0x80, -1, 0, 0, 0 );  --膝蹴り(ef_007)
setEffMoveKey( spep_4 + 0, hizageri_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, hizageri_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hizageri_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hizageri_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hizageri_b, 0 );
setEffRotateKey( spep_4 + 96, hizageri_b, 0 );
setEffAlphaKey( spep_4 + 0, hizageri_b, 255 );
setEffAlphaKey( spep_4 + 96, hizageri_b, 255 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_4 -3 + 8,  10021, 22, 0x100, -1, 0, -22.8, 462.7 );  --バゴォ
setEffShake( spep_4 -3 + 12, ctbago, 22, 16 );
setEffMoveKey( spep_4 -3 + 8, ctbago, -22.8, 462.7 , 0 );
setEffMoveKey( spep_4 -3 + 10, ctbago, 35.5, 388.8 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctbago, 92.7, 342.1 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctbago, 92.7, 342.1 , 0 );

setEffScaleKey( spep_4 -3 + 8, ctbago, 0.5, 0.5 );
setEffScaleKey( spep_4 -3 + 10, ctbago, 1.87, 1.87 );
setEffScaleKey( spep_4 -3 + 12, ctbago, 2.91, 2.91 );
setEffScaleKey( spep_4 -3 + 30, ctbago, 2.91, 2.91 );

setEffRotateKey( spep_4 -3 + 8, ctbago, 35.1 );
setEffRotateKey( spep_4 -3 + 10, ctbago, 29 );
setEffRotateKey( spep_4 -3 + 12, ctbago, 23 );
setEffRotateKey( spep_4 -3 + 30, ctbago, 23 );

setEffAlphaKey( spep_4 -3 + 8, ctbago, 255 );
setEffAlphaKey( spep_4 -3 + 24, ctbago, 255 );
setEffAlphaKey( spep_4 -3 + 26, ctbago, 170 );
setEffAlphaKey( spep_4 -3 + 28, ctbago, 85 );
setEffAlphaKey( spep_4 -3 + 30, ctbago, 0 );

-- **  敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, 101.4, -20.5 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 110.1, -31.6 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 131.2, -18.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 59, 46.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 207.1, -159.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 58.3, 50.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 184.1, -122.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 131.8, 38.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 76.6, -75.5 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 150.8, 10.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 117.9, -23 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 109.5, -21.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 92.3, -31.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 79.5, -27.5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 99.5 +68, -37.4 +50 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 93 +68, -27.4 +50 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 96.9 +68, -6.9  +50, 0 );
setMoveKey( spep_4 -3 + 36, 1, 90.6, -8.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 99.7, 10.3 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 95.1, 20.7 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 98.9, 41.2 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 92.6, 39.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 101.8, 58.4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 6.4, -6.9 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 12.7, 3.7 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 8.6, -7.6 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 20.1, 1.2 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 17.8, 1.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 24.1, 12.3 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 20, 1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 31.5, 9.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 29.2, 10.3 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 35.5, 20.9 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 31.4, 9.6 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 42.9, 18.4 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 40.6, 18.9 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 46.8, 29.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 42.8, 18.2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 54.2, 27.1 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 52, 27.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 58.2, 38.2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 54.2, 26.8 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 65.6, 35.7 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 63.4, 36.1 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 69.6, 46.8 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 65.6, 35.4 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 77, 44.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 74.8, 44.7 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 81, 55.4 , 0 );

setScaleKey( spep_4 + 0, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 4, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 6, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 18, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 20, 1, 1.82, 1.82 );
setScaleKey( spep_4 -3 + 22, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 24, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 26, 1, 1.42, 1.42 );
setScaleKey( spep_4 -3 + 28, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 30, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 32, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 98, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, -44.4 );
setRotateKey( spep_4 -3 + 98, 1, -44.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--キック
playSe( spep_4 + 16 -10, 1189 );
SE6 = playSe( spep_4 + 20 -10, 1190 );
stopSe( spep_4 + 36 -10, SE6, 16 );

playSe( spep_4 + 20 -10, 1010 );
setSeVolume( spep_4 + 20 -10, 1010, 136 );
playSe( spep_4 + 20 -10, 1110 );
setSeVolume( spep_4 + 20 -10, 1110, 88 );

--敵が飛んでいく
playSe( spep_4 + 20 -10, 1072 );

--瞬間移動
SE7 = playSe( spep_4 + 51 -10, 1109 );
stopSe( spep_4 + 70 -10, SE7, 12 );
SE8 = playSe( spep_4 + 83 -10, 1109 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;

------------------------------------------------------
-- パンチ落とし(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch2_f = entryEffectLife( spep_5 + 0, SP_08, 56, 0x100, -1, 0, 0, 0 );  --パンチ落とし(ef_008)
setEffMoveKey( spep_5 + 0, punch2_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, punch2_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, punch2_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, punch2_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punch2_f, 0 );
setEffRotateKey( spep_5 + 56, punch2_f, 0 );
setEffAlphaKey( spep_5 + 0, punch2_f, 255 );
setEffAlphaKey( spep_5 + 56, punch2_f, 255 );

punch2_b = entryEffectLife( spep_5 + 0, SP_09, 56, 0x80, -1, 0, 0, 0 );  --パンチ落とし(ef_009)
setEffMoveKey( spep_5 + 0, punch2_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, punch2_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, punch2_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, punch2_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punch2_b, 0 );
setEffRotateKey( spep_5 + 56, punch2_b, 0 );
setEffAlphaKey( spep_5 + 0, punch2_b, 255 );
setEffAlphaKey( spep_5 + 56, punch2_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -37.4, -111 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 35.7, -181.8 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -66.4, -127.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 17.4, -135.4 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -51.2, -107.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 6.3, -104.2 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -50, -99.2 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 13, -120.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -44.7, -91.9 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 47.4, -143.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 31.6, -192.8 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 58.5, -225.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 71.5, -251.5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 99.6, -309.4 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 103.9, -341.1 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 129.4, -382 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 127.8, -376.9 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 147.7, -412 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 136.9, -415.7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 151.5, -429 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 148.8, -422.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 170.7, -459.7 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 157.9, -462.7 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 173.6, -476.2 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 169.8, -467.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 193.8, -507.4 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 179, -509.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 195.7, -523.3 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 190.7, -513.3 , 0 );
setMoveKey( spep_5 + 56, 1, 190.7, -513.3 , 0 );

a1 = 0.5;
a2 = 0.7;
a3 = 0.8;
setScaleKey( spep_5 + 0, 1, 1.47 -a2, 1.47 -a2 );
setScaleKey( spep_5 -3 + 4, 1, 1.65 -a2, 1.65 -a2 );
setScaleKey( spep_5 -3 + 6, 1, 1.56 -a1, 1.56 -a1 );
setScaleKey( spep_5 -3 + 8, 1, 1.36 -a1, 1.36 -a1 );
setScaleKey( spep_5 -3 + 10, 1, 1.1 -a1, 1.1 -a1 );
setScaleKey( spep_5 -3 + 18, 1, 1.1 -a1, 1.1 -a1 );
setScaleKey( spep_5 -3 + 20, 1, 1.25 -a1, 1.25 -a1 );
setScaleKey( spep_5 -3 + 22, 1, 1.41 -a1, 1.41 -a1 );
setScaleKey( spep_5 -3 + 24, 1, 1.56 -a1, 1.56 -a1 );
setScaleKey( spep_5 -3 + 26, 1, 1.71 -a1, 1.72 -a1 );
setScaleKey( spep_5 -3 + 28, 1, 1.84 -a1, 1.84 -a1 );
setScaleKey( spep_5 -3 + 30, 1, 2.02 -a2, 2.03 -a2 );
setScaleKey( spep_5 -3 + 32, 1, 2.17 -a2, 2.18 -a2 );
setScaleKey( spep_5 -3 + 34, 1, 2.24 -a2, 2.25 -a2 );
setScaleKey( spep_5 -3 + 36, 1, 2.3 -a2, 2.31 -a2 );
setScaleKey( spep_5 -3 + 38, 1, 2.36 -a2, 2.37 -a2 );
setScaleKey( spep_5 -3 + 40, 1, 2.43 -a2, 2.43 -a2 );
setScaleKey( spep_5 -3 + 42, 1, 2.49 -a3, 2.5 -a3 );
setScaleKey( spep_5 -3 + 44, 1, 2.56 -a3, 2.56 -a3 );
setScaleKey( spep_5 -3 + 46, 1, 2.62 -a3, 2.62 -a3 );
setScaleKey( spep_5 -3 + 48, 1, 2.68 -a3, 2.69 -a3 );
setScaleKey( spep_5 -3 + 50, 1, 2.75 -a3, 2.75 -a3 );
setScaleKey( spep_5 -3 + 52, 1, 2.78 -a3, 2.78 -a3 );
setScaleKey( spep_5 -3 + 54, 1, 2.80 -a3, 2.80 -a3 );
setScaleKey( spep_5 -3 + 56, 1, 2.83 -a3, 2.83 -a3 );
setScaleKey( spep_5 -3 + 58, 1, 2.85 -a3, 2.85 -a3 );
setScaleKey( spep_5 + 56, 1, 2.85 -a3, 2.85 -a3 );

setRotateKey( spep_5 + 0, 1, 5.4 );
setRotateKey( spep_5 -3 + 18, 1, 5.4 );
setRotateKey( spep_5 -3 + 20, 1, 4.3 );
setRotateKey( spep_5 -3 + 22, 1, 3.2 );
setRotateKey( spep_5 -3 + 24, 1, 2.1 );
setRotateKey( spep_5 -3 + 26, 1, 0.9 );
setRotateKey( spep_5 -3 + 28, 1, -0.2 );
setRotateKey( spep_5 -3 + 30, 1, -1.3 );
setRotateKey( spep_5 -3 + 32, 1, -2.5 );
setRotateKey( spep_5 -3 + 34, 1, -2.7 );
setRotateKey( spep_5 -3 + 36, 1, -2.9 );
setRotateKey( spep_5 -3 + 38, 1, -3.2 );
setRotateKey( spep_5 -3 + 40, 1, -3.4 );
setRotateKey( spep_5 -3 + 42, 1, -3.6 );
setRotateKey( spep_5 -3 + 44, 1, -3.9 );
setRotateKey( spep_5 -3 + 46, 1, -4.1 );
setRotateKey( spep_5 -3 + 48, 1, -4.3 );
setRotateKey( spep_5 -3 + 50, 1, -4.6 );
setRotateKey( spep_5 -3 + 52, 1, -4.8 );
setRotateKey( spep_5 -3 + 54, 1, -5 );
setRotateKey( spep_5 -3 + 56, 1, -5.3 );
setRotateKey( spep_5 -3 + 58, 1, -5.5 );
setRotateKey( spep_5 + 56, 1, -5.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--瞬間移動
stopSe( spep_5 + 6 -6, SE8, 12 );

--パンチ
playSe( spep_5 + 14 -10, 1120 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- 気弾溜め(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame1 = entryEffectLife( spep_6 + 0, SP_10, 56, 0x100, -1, 0, 0, 0 );  --気弾溜め(ef_010)
setEffMoveKey( spep_6 + 0, tame1, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, tame1, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tame1, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, tame1, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame1, 0 );
setEffRotateKey( spep_6 + 56, tame1, 0 );
setEffAlphaKey( spep_6 + 0, tame1, 255 );
setEffAlphaKey( spep_6 + 56, tame1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め
playSe( spep_6 + 14, 1056 );
playSe( spep_6 + 25, 1036 );
SE9 = playSe( spep_6 + 25, 1036 );
stopSe( spep_6 + 56, SE9, 0 );
playSe( spep_6 + 49, 1036 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_7 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_8 = spep_7 + 94;

------------------------------------------------------
-- 発射(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_8 + 0, SP_11, 86, 0x100, -1, 0, 0, 0 );  --発射(ef_011)
setEffMoveKey( spep_8 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_8 + 86, hassha, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_8 + 86, hassha, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hassha, 0 );
setEffRotateKey( spep_8 + 86, hassha, 0 );
setEffAlphaKey( spep_8 + 0, hassha, 255 );
setEffAlphaKey( spep_8 + 85, hassha, 255 );
setEffAlphaKey( spep_8 + 86, hassha, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--発射
playSe( spep_8 + 23 -10, 1022 );
setSeVolume( spep_8 + 23 -10, 1022, 136 );
SE10 = playSe( spep_8 + 28 -10, 1124 );
setSeVolume( spep_8 + 28 -10, 1124, 0 );
setSeVolume( spep_8 + 32 -10, 1124, 10 );
setSeVolume( spep_8 + 46 -10, 1124, 40 );
setSeVolume( spep_8 + 52 -10, 1124, 80 );
setSeVolume( spep_8 + 64 -10, 1124, 100 );

-- ** 次の準備 ** --
spep_9 = spep_8 + 86;

------------------------------------------------------
-- 迫る(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
semaru_f = entryEffectLife( spep_9 + 0, SP_12, 56, 0x100, -1, 0, 0, 0 );  --迫る(ef_012)
setEffMoveKey( spep_9 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 56, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, semaru_f, 0 );
setEffRotateKey( spep_9 + 56, semaru_f, 0 );
setEffAlphaKey( spep_9 + 0, semaru_f, 255 );
setEffAlphaKey( spep_9 + 56, semaru_f, 255 );

semaru_b = entryEffectLife( spep_9 + 0, SP_13, 56, 0x80, -1, 0, 0, 0 );  --迫る(ef_013)
setEffMoveKey( spep_9 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 56, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, semaru_b, 0 );
setEffRotateKey( spep_9 + 56, semaru_b, 0 );
setEffAlphaKey( spep_9 + 0, semaru_b, 255 );
setEffAlphaKey( spep_9 + 56, semaru_b, 255 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_9 + 0,  10014, 56, 0x100, -1, 0, 79.7, 365.9 -50 );  --ズドド
setEffShake( spep_9 + 0, ctzudo, 56, 18 );
setEffMoveKey( spep_9 + 0, ctzudo, 79.7, 365.9 -50 , 0 );
setEffMoveKey( spep_9 + 56, ctzudo, 79.7, 365.9 -50 , 0 );

setEffScaleKey( spep_9 + 0, ctzudo, 2.3, 2.3 );
setEffScaleKey( spep_9 + 56, ctzudo, 2.3, 2.3 );

setEffRotateKey( spep_9 + 0, ctzudo, 56 );
setEffRotateKey( spep_9 + 56, ctzudo, 56 );

setEffAlphaKey( spep_9 + 0, ctzudo, 255 );
setEffAlphaKey( spep_9 + 56, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 56, 1, 0 );
changeAnime( spep_9 + 0, 1, 107 );

setMoveKey( spep_9 + 0, 1, -199.3, 233.6 , 0 );
setMoveKey( spep_9 + 2, 1, -195, 231 , 0 );
setMoveKey( spep_9 + 4, 1, -184.3, 214.9 , 0 );
setMoveKey( spep_9 + 6, 1, -183.3, 209.9 , 0 );
setMoveKey( spep_9 + 8, 1, -174, 201 , 0 );
setMoveKey( spep_9 + 10, 1, -170.1, 199.5 , 0 );
setMoveKey( spep_9 + 12, 1, -90.2, 94.4 , 0 );
setMoveKey( spep_9 + 14, 1, -26.3, 4.8 , 0 );
setMoveKey( spep_9 + 16, 1, 53.6, -91.4 , 0 );
setMoveKey( spep_9 + 18, 1, 75, -109 , 0 );
setMoveKey( spep_9 + 20, 1, 114.6, -164.5 , 0 );
setMoveKey( spep_9 + 22, 1, 126.9, -189.5 , 0 );
setMoveKey( spep_9 + 24, 1, 162.6, -224.9 , 0 );
setMoveKey( spep_9 + 26, 1, 183.2, -239.9 , 0 );
setMoveKey( spep_9 + 28, 1, 224.7, -299.1 , 0 );
setMoveKey( spep_9 + 30, 1, 234.6, -322.6 , 0 );
setMoveKey( spep_9 + 32, 1, 266.7, -352 , 0 );
setMoveKey( spep_9 + 34, 1, 281.1, -358.3 , 0 );
setMoveKey( spep_9 + 36, 1, 319.3, -414.6 , 0 );
setMoveKey( spep_9 + 38, 1, 322.2, -430.8 , 0 );
setMoveKey( spep_9 + 40, 1, 355.3, -460.5 , 0 );
setMoveKey( spep_9 + 42, 1, 369, -464.6 , 0 );
setMoveKey( spep_9 + 44, 1, 408.8, -523.9 , 0 );
setMoveKey( spep_9 + 46, 1, 409.8, -538.9 , 0 );
setMoveKey( spep_9 + 48, 1, 443.9, -568.9 , 0 );
setMoveKey( spep_9 + 50, 1, 456.9, -571 , 0 );
setMoveKey( spep_9 + 52, 1, 498.3, -633.1 , 0 );
setMoveKey( spep_9 + 54, 1, 497.3, -647.1 , 0 );
setMoveKey( spep_9 + 56, 1, 532.5, -677.2 , 0 );

a3 = 0.7;
a4 = 0.8;
setScaleKey( spep_9 + 0, 1, 0.7 -0.3, 0.7 -0.3 );
setScaleKey( spep_9 + 2, 1, 0.73 -0.3, 0.73 -0.3 );
setScaleKey( spep_9 + 4, 1, 0.77 -0.3, 0.77 -0.3 );
setScaleKey( spep_9 + 6, 1, 0.8 -0.3, 0.8 -0.3 );
setScaleKey( spep_9 + 8, 1, 0.83 -0.3, 0.83 -0.3 );
setScaleKey( spep_9 + 10, 1, 0.86 -0.3, 0.86 -0.3 );
setScaleKey( spep_9 + 12, 1, 1.24 -0.5, 1.24 -0.5 );
setScaleKey( spep_9 + 14, 1, 1.62 -a3, 1.62 -a3 );
setScaleKey( spep_9 + 16, 1, 1.99 -a3, 1.99 -a3 );
setScaleKey( spep_9 + 18, 1, 2.08 -a3, 2.08 -a3 );
setScaleKey( spep_9 + 20, 1, 2.16 -a3, 2.16 -a3 );
setScaleKey( spep_9 + 22, 1, 2.25 -a3, 2.25 -a3 );
setScaleKey( spep_9 + 24, 1, 2.34 -a3, 2.34 -a3 );
setScaleKey( spep_9 + 26, 1, 2.42 -a3, 2.42 -a3 );
setScaleKey( spep_9 + 28, 1, 2.51 -a3, 2.51 -a3 );
setScaleKey( spep_9 + 30, 1, 2.59 -a3, 2.59 -a3 );
setScaleKey( spep_9 + 32, 1, 2.66 -a3, 2.66 -a3 );
setScaleKey( spep_9 + 34, 1, 2.73 -a3, 2.73 -a3 );
setScaleKey( spep_9 + 36, 1, 2.8 -a3, 2.8 -a3 );
setScaleKey( spep_9 + 38, 1, 2.82 -a3, 2.82 -a3 );
setScaleKey( spep_9 + 40, 1, 2.94 -a4, 2.94 -a4 );
setScaleKey( spep_9 + 42, 1, 3.0 -a4, 3.01 -a4 );
setScaleKey( spep_9 + 44, 1, 3.08 -a4, 3.08 -a4 );
setScaleKey( spep_9 + 46, 1, 3.15 -a4, 3.15 -a4 );
setScaleKey( spep_9 + 48, 1, 3.22 -a4, 3.22 -a4 );
setScaleKey( spep_9 + 50, 1, 3.29 -a4, 3.29 -a4 );
setScaleKey( spep_9 + 52, 1, 3.36 -a4, 3.36 -a4 );
setScaleKey( spep_9 + 54, 1, 3.43 -a4, 3.43 -a4 );
setScaleKey( spep_9 + 56, 1, 3.0 -a4, 3.0 -a4 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 56, 1, 0 );

setBlendColor(spep_9 + 6, 1, 2, 0, 0, 0, 0);
setBlendColor(spep_9 + 8, 1, 2, 0, 0, 0, 0.2);
setBlendColor(spep_9 + 10, 1, 2, 0, 0, 0, 0.4);
setBlendColor(spep_9 + 12, 1, 2, 0, 0, 0, 0.6);
setBlendColor(spep_9 + 14, 1, 2, 0, 0, 0, 0.8);
setBlendColor(spep_9 + 16, 1, 2, 0, 0, 0, 1);
setBlendColor(spep_9 + 56, 1, 2, 0, 0, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--発射
stopSe( spep_9 + 42 -10, SE10, 86 );

--迫る
playSe( spep_9 + 27 -10, 1021 );

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;

------------------------------------------------------
-- 大爆発(176F)
------------------------------------------------------
--敵の色戻す
setBlendColor(spep_10 + 50 , 1 , 2 , 0 , 0 , 0 , 0);

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_10 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --大爆発(ef_014)
setEffMoveKey( spep_10 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_10 + 176, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_10 + 176, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_10 + 176, bakuhatsu, 0 );
setEffAlphaKey( spep_10 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_10 + 176, bakuhatsu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--爆発前
SE11 = playSe( spep_10 + 37 -10, 1175 );
setSeVolume( spep_10 + 37 -10, 1175, 0 );
setSeVolume( spep_10 + 50 -10, 1175, 0 );
setSeVolume( spep_10 + 64 -10, 1175, 40 );
setSeVolume( spep_10 + 76 -10, 1175, 75 );
setSeVolume( spep_10 + 105 -10, 1175, 0 );
stopSe( spep_10 + 105 -10, SE11, 0 );

SE12 = playSe( spep_10 + 46 -10, 1184 );
setSeVolume( spep_10 + 46 -10, 1184, 75 );
setSeVolume( spep_10 + 105 -10, 1184, 0 );
stopSe( spep_10 + 105 -10, SE12, 0 );

--爆発
playSe( spep_10 + 100 -10, 1024 );
playSe( spep_10 + 100 -10, 1159 );
setSeVolume( spep_10 + 100 -10, 1159, 90 );

-- ** ダメージ表示 ** --
dealDamage( spep_10 + 70 );
endPhase( spep_10 + 174 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め(188F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 188, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 188, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 188, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 188, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 188, tame, 255 );

spep_x = spep_0 + 14;
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 190, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--雷オーラ
playSe( spep_0 + 0, 1056 );
setSeVolume( spep_0 + 0, 1056, 80 );

--気溜め
playSe( spep_0 + 18, 1035 );

--オーラ
playSe( spep_0 + 39, 1036 );
playSe( spep_0 + 63, 1036 );
playSe( spep_0 + 87, 1036 );
playSe( spep_0 + 111, 1036 );
playSe( spep_0 + 135, 1036 );
playSe( spep_0 + 159, 1036 );
SE0 = playSe( spep_0 + 183, 1036 );

--強気溜め
playSe( spep_0 + 119 -10, 1068 );

--前方ダッシュ
SE1 = playSe( spep_0 + 174, 1183 );
setSeVolume( spep_0 + 174, 1183, 0 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 188;

------------------------------------------------------
-- 前方突進(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_1 + 0, SP_02, 56, 0x80, -1, 0, 0, 0 );  --前方突進(ef_001)
setEffMoveKey( spep_1 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tosshin, 0 );
setEffRotateKey( spep_1 + 56, tosshin, 0 );
setEffAlphaKey( spep_1 + 0, tosshin, 255 );
setEffAlphaKey( spep_1 + 56, tosshin, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--オーラ
stopSe( spep_1 + 2, SE0, 0 );

--前方ダッシュ
setSeVolume( spep_1 + 3, 1183, 0 );
setSeVolume( spep_1 + 4, 1183, 140 );
setSeVolume( spep_1 + 5, 1183, 188 );

SE2 = playSe( spep_1 + 2, 9 );
SE3 = playSe( spep_1 + 2, 1182 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 46; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE1, 0 );
stopSe(SP_dodge - 12, SE2, 0 );
stopSe(SP_dodge - 12, SE3, 0 );

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
-- 横パンチ(46F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_2 + 0, SP_03, 46, 0x100, -1, 0, 0, 0 );  --横パンチ(ef_003)
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 46, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 46, punch_f, 255 );

punch_b = entryEffectLife( spep_2 + 0, SP_04, 46, 0x80, -1, 0, 0, 0 );  --横パンチ(ef_004)
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 46, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 46, punch_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 46, 1, 0 );
changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 -3 + 26, 1, 106 );

setMoveKey( spep_2 + 0, 1, 247.8, 24.4 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 230.6, 24.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 213.4, 24.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 196.3, 24.4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 179.3, 24.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 162.2, 24.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 145.1, 24.4 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 128.1, 24.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 111, 24.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 93.9, 24.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 76.6, 24.4 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 59.6, 24.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 40.8, 83.4 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 101.4, 37.9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 97.2, 71.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 180.7, 57.9 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 189.9, 45 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 231.4, 81.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 246.2, 51.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 291.7, 62.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 299.8, 62.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 307.9, 62.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 316, 62.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 324.1, 62.1 , 0 );
setMoveKey( spep_2 + 46, 1, 324.1, 62.1 , 0 );

setScaleKey( spep_2 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 46, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 25, 1, 0 );
setRotateKey( spep_2 -3 + 26, 1, -31.1 );
setRotateKey( spep_2 + 46, 1, -31.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 48, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --

-- ** 音 ** --
--前方ダッシュ
stopSe( spep_2 + 31, SE1, 0 );
stopSe( spep_2 + 31, SE2, 0 );

--パンチ
playSe( spep_2 + 31 -8, 1009 );
setSeVolume( spep_2 + 31 -8, 1009, 90 );
playSe( spep_2 + 31 -8, 1110 );
setSeVolume( spep_2 + 31 -8, 1110, 90 );
SE4 = playSe( spep_2 + 31 -8, 1187 );
setSeVolume( spep_2 + 31 -8, 1187, 90 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 46;

------------------------------------------------------
-- 前方へ蹴り構え(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack = entryEffectLife( spep_3 + 0, SP_05, 56, 0x100, -1, 0, 0, 0 );  --前方へ蹴り構え(ef_005)
setEffMoveKey( spep_3 + 0, attack, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, attack, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, attack, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack, 0 );
setEffRotateKey( spep_3 + 56, attack, 0 );
setEffAlphaKey( spep_3 + 0, attack, 255 );
setEffAlphaKey( spep_3 + 55, attack, 255 );
setEffAlphaKey( spep_3 + 56, attack, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--パンチ
setSeVolume( spep_3 + 7 -8, 1187, 90 );
setSeVolume( spep_3 + 10 -8, 1187, 60 );
setSeVolume( spep_3 + 14 -8, 1187, 40 );
setSeVolume( spep_3 + 18 -8, 1187, 20 );
setSeVolume( spep_3 + 24 -8, 1187, 0 );
stopSe(spep_3 + 24 -8, SE4, 0 );

--足ふりかぶり
SE5 = playSe( spep_3 + 15, 1116 );
stopSe( spep_3 + 44, SE5, 26 );

playSe( spep_3 + 18, 1004 );
playSe( spep_3 + 45, 8 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;

------------------------------------------------------
-- 膝蹴り(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
hizageri_f = entryEffectLife( spep_4 + 0, SP_06, 96, 0x100, -1, 0, 0, 0 );  --膝蹴り(ef_006)
setEffMoveKey( spep_4 + 0, hizageri_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, hizageri_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hizageri_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hizageri_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hizageri_f, 0 );
setEffRotateKey( spep_4 + 96, hizageri_f, 0 );
setEffAlphaKey( spep_4 + 0, hizageri_f, 255 );
setEffAlphaKey( spep_4 + 96, hizageri_f, 255 );

hizageri_b = entryEffectLife( spep_4 + 0, SP_07, 96, 0x80, -1, 0, 0, 0 );  --膝蹴り(ef_007)
setEffMoveKey( spep_4 + 0, hizageri_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, hizageri_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hizageri_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hizageri_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hizageri_b, 0 );
setEffRotateKey( spep_4 + 96, hizageri_b, 0 );
setEffAlphaKey( spep_4 + 0, hizageri_b, 255 );
setEffAlphaKey( spep_4 + 96, hizageri_b, 255 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_4 -3 + 8,  10021, 22, 0x100, -1, 0, -22.8, 462.7 );  --バゴォ
setEffShake( spep_4 -3 + 12, ctbago, 22, 16 );
setEffMoveKey( spep_4 -3 + 8, ctbago, -22.8, 462.7 , 0 );
setEffMoveKey( spep_4 -3 + 10, ctbago, 35.5, 388.8 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctbago, 92.7, 342.1 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctbago, 92.7, 342.1 , 0 );

setEffScaleKey( spep_4 -3 + 8, ctbago, 0.5, 0.5 );
setEffScaleKey( spep_4 -3 + 10, ctbago, 1.87, 1.87 );
setEffScaleKey( spep_4 -3 + 12, ctbago, 2.91, 2.91 );
setEffScaleKey( spep_4 -3 + 30, ctbago, 2.91, 2.91 );

setEffRotateKey( spep_4 -3 + 8, ctbago, 35.1 );
setEffRotateKey( spep_4 -3 + 10, ctbago, 29 );
setEffRotateKey( spep_4 -3 + 12, ctbago, 23 );
setEffRotateKey( spep_4 -3 + 30, ctbago, 23 );

setEffAlphaKey( spep_4 -3 + 8, ctbago, 255 );
setEffAlphaKey( spep_4 -3 + 24, ctbago, 255 );
setEffAlphaKey( spep_4 -3 + 26, ctbago, 170 );
setEffAlphaKey( spep_4 -3 + 28, ctbago, 85 );
setEffAlphaKey( spep_4 -3 + 30, ctbago, 0 );

-- **  敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, 101.4, -20.5 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 110.1, -31.6 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 131.2, -18.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 59, 46.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 207.1, -159.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 58.3, 50.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 184.1, -122.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 131.8, 38.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 76.6, -75.5 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 150.8, 10.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 117.9, -23 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 109.5, -21.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 92.3, -31.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 79.5, -27.5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 99.5 +68, -37.4 +50 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 93 +68, -27.4 +50 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 96.9 +68, -6.9  +50, 0 );
setMoveKey( spep_4 -3 + 36, 1, 90.6, -8.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 99.7, 10.3 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 95.1, 20.7 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 98.9, 41.2 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 92.6, 39.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 101.8, 58.4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 6.4, -6.9 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 12.7, 3.7 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 8.6, -7.6 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 20.1, 1.2 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 17.8, 1.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 24.1, 12.3 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 20, 1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 31.5, 9.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 29.2, 10.3 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 35.5, 20.9 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 31.4, 9.6 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 42.9, 18.4 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 40.6, 18.9 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 46.8, 29.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 42.8, 18.2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 54.2, 27.1 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 52, 27.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 58.2, 38.2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 54.2, 26.8 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 65.6, 35.7 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 63.4, 36.1 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 69.6, 46.8 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 65.6, 35.4 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 77, 44.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 74.8, 44.7 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 81, 55.4 , 0 );

setScaleKey( spep_4 + 0, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 4, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 6, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 18, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 20, 1, 1.82, 1.82 );
setScaleKey( spep_4 -3 + 22, 1, 1.68, 1.68 );
setScaleKey( spep_4 -3 + 24, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 26, 1, 1.42, 1.42 );
setScaleKey( spep_4 -3 + 28, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 30, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 32, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 98, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, -44.4 );
setRotateKey( spep_4 -3 + 98, 1, -44.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--キック
playSe( spep_4 + 16 -10, 1189 );
SE6 = playSe( spep_4 + 20 -10, 1190 );
stopSe( spep_4 + 36 -10, SE6, 16 );

playSe( spep_4 + 20 -10, 1010 );
setSeVolume( spep_4 + 20 -10, 1010, 136 );
playSe( spep_4 + 20 -10, 1110 );
setSeVolume( spep_4 + 20 -10, 1110, 88 );

--敵が飛んでいく
playSe( spep_4 + 20 -10, 1072 );

--瞬間移動
SE7 = playSe( spep_4 + 51 -10, 1109 );
stopSe( spep_4 + 70 -10, SE7, 12 );
SE8 = playSe( spep_4 + 83 -10, 1109 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;

------------------------------------------------------
-- パンチ落とし(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch2_f = entryEffectLife( spep_5 + 0, SP_08, 56, 0x100, -1, 0, 0, 0 );  --パンチ落とし(ef_008)
setEffMoveKey( spep_5 + 0, punch2_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, punch2_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, punch2_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, punch2_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punch2_f, 0 );
setEffRotateKey( spep_5 + 56, punch2_f, 0 );
setEffAlphaKey( spep_5 + 0, punch2_f, 255 );
setEffAlphaKey( spep_5 + 56, punch2_f, 255 );

punch2_b = entryEffectLife( spep_5 + 0, SP_09, 56, 0x80, -1, 0, 0, 0 );  --パンチ落とし(ef_009)
setEffMoveKey( spep_5 + 0, punch2_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, punch2_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, punch2_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, punch2_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punch2_b, 0 );
setEffRotateKey( spep_5 + 56, punch2_b, 0 );
setEffAlphaKey( spep_5 + 0, punch2_b, 255 );
setEffAlphaKey( spep_5 + 56, punch2_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -37.4, -111 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 35.7, -181.8 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -66.4, -127.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 17.4, -135.4 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -51.2, -107.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 6.3, -104.2 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -50, -99.2 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 13, -120.4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -44.7, -91.9 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 47.4, -143.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 31.6, -192.8 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 58.5, -225.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 71.5, -251.5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 99.6, -309.4 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 103.9, -341.1 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 129.4, -382 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 127.8, -376.9 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 147.7, -412 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 136.9, -415.7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 151.5, -429 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 148.8, -422.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 170.7, -459.7 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 157.9, -462.7 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 173.6, -476.2 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 169.8, -467.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 193.8, -507.4 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 179, -509.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 195.7, -523.3 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 190.7, -513.3 , 0 );
setMoveKey( spep_5 + 56, 1, 190.7, -513.3 , 0 );

a1 = 0.5;
a2 = 0.7;
a3 = 0.8;
setScaleKey( spep_5 + 0, 1, 1.47 -a2, 1.47 -a2 );
setScaleKey( spep_5 -3 + 4, 1, 1.65 -a2, 1.65 -a2 );
setScaleKey( spep_5 -3 + 6, 1, 1.56 -a1, 1.56 -a1 );
setScaleKey( spep_5 -3 + 8, 1, 1.36 -a1, 1.36 -a1 );
setScaleKey( spep_5 -3 + 10, 1, 1.1 -a1, 1.1 -a1 );
setScaleKey( spep_5 -3 + 18, 1, 1.1 -a1, 1.1 -a1 );
setScaleKey( spep_5 -3 + 20, 1, 1.25 -a1, 1.25 -a1 );
setScaleKey( spep_5 -3 + 22, 1, 1.41 -a1, 1.41 -a1 );
setScaleKey( spep_5 -3 + 24, 1, 1.56 -a1, 1.56 -a1 );
setScaleKey( spep_5 -3 + 26, 1, 1.71 -a1, 1.72 -a1 );
setScaleKey( spep_5 -3 + 28, 1, 1.84 -a1, 1.84 -a1 );
setScaleKey( spep_5 -3 + 30, 1, 2.02 -a2, 2.03 -a2 );
setScaleKey( spep_5 -3 + 32, 1, 2.17 -a2, 2.18 -a2 );
setScaleKey( spep_5 -3 + 34, 1, 2.24 -a2, 2.25 -a2 );
setScaleKey( spep_5 -3 + 36, 1, 2.3 -a2, 2.31 -a2 );
setScaleKey( spep_5 -3 + 38, 1, 2.36 -a2, 2.37 -a2 );
setScaleKey( spep_5 -3 + 40, 1, 2.43 -a2, 2.43 -a2 );
setScaleKey( spep_5 -3 + 42, 1, 2.49 -a3, 2.5 -a3 );
setScaleKey( spep_5 -3 + 44, 1, 2.56 -a3, 2.56 -a3 );
setScaleKey( spep_5 -3 + 46, 1, 2.62 -a3, 2.62 -a3 );
setScaleKey( spep_5 -3 + 48, 1, 2.68 -a3, 2.69 -a3 );
setScaleKey( spep_5 -3 + 50, 1, 2.75 -a3, 2.75 -a3 );
setScaleKey( spep_5 -3 + 52, 1, 2.78 -a3, 2.78 -a3 );
setScaleKey( spep_5 -3 + 54, 1, 2.80 -a3, 2.80 -a3 );
setScaleKey( spep_5 -3 + 56, 1, 2.83 -a3, 2.83 -a3 );
setScaleKey( spep_5 -3 + 58, 1, 2.85 -a3, 2.85 -a3 );
setScaleKey( spep_5 + 56, 1, 2.85 -a3, 2.85 -a3 );

setRotateKey( spep_5 + 0, 1, 5.4 );
setRotateKey( spep_5 -3 + 18, 1, 5.4 );
setRotateKey( spep_5 -3 + 20, 1, 4.3 );
setRotateKey( spep_5 -3 + 22, 1, 3.2 );
setRotateKey( spep_5 -3 + 24, 1, 2.1 );
setRotateKey( spep_5 -3 + 26, 1, 0.9 );
setRotateKey( spep_5 -3 + 28, 1, -0.2 );
setRotateKey( spep_5 -3 + 30, 1, -1.3 );
setRotateKey( spep_5 -3 + 32, 1, -2.5 );
setRotateKey( spep_5 -3 + 34, 1, -2.7 );
setRotateKey( spep_5 -3 + 36, 1, -2.9 );
setRotateKey( spep_5 -3 + 38, 1, -3.2 );
setRotateKey( spep_5 -3 + 40, 1, -3.4 );
setRotateKey( spep_5 -3 + 42, 1, -3.6 );
setRotateKey( spep_5 -3 + 44, 1, -3.9 );
setRotateKey( spep_5 -3 + 46, 1, -4.1 );
setRotateKey( spep_5 -3 + 48, 1, -4.3 );
setRotateKey( spep_5 -3 + 50, 1, -4.6 );
setRotateKey( spep_5 -3 + 52, 1, -4.8 );
setRotateKey( spep_5 -3 + 54, 1, -5 );
setRotateKey( spep_5 -3 + 56, 1, -5.3 );
setRotateKey( spep_5 -3 + 58, 1, -5.5 );
setRotateKey( spep_5 + 56, 1, -5.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--瞬間移動
stopSe( spep_5 + 6 -6, SE8, 12 );

--パンチ
playSe( spep_5 + 14 -10, 1120 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- 気弾溜め(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame1 = entryEffectLife( spep_6 + 0, SP_10, 56, 0x100, -1, 0, 0, 0 );  --気弾溜め(ef_010)
setEffMoveKey( spep_6 + 0, tame1, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, tame1, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tame1, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, tame1, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame1, 0 );
setEffRotateKey( spep_6 + 56, tame1, 0 );
setEffAlphaKey( spep_6 + 0, tame1, 255 );
setEffAlphaKey( spep_6 + 56, tame1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め
playSe( spep_6 + 14, 1056 );
playSe( spep_6 + 25, 1036 );
SE9 = playSe( spep_6 + 25, 1036 );
stopSe( spep_6 + 56, SE9, 0 );
playSe( spep_6 + 49, 1036 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_7 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_8 = spep_7 + 94;

------------------------------------------------------
-- 発射(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_8 + 0, SP_11, 86, 0x100, -1, 0, 0, 0 );  --発射(ef_011)
setEffMoveKey( spep_8 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_8 + 86, hassha, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_8 + 86, hassha, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hassha, 0 );
setEffRotateKey( spep_8 + 86, hassha, 0 );
setEffAlphaKey( spep_8 + 0, hassha, 255 );
setEffAlphaKey( spep_8 + 85, hassha, 255 );
setEffAlphaKey( spep_8 + 86, hassha, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--発射
playSe( spep_8 + 23 -10, 1022 );
setSeVolume( spep_8 + 23 -10, 1022, 136 );
SE10 = playSe( spep_8 + 28 -10, 1124 );
setSeVolume( spep_8 + 28 -10, 1124, 0 );
setSeVolume( spep_8 + 32 -10, 1124, 10 );
setSeVolume( spep_8 + 46 -10, 1124, 40 );
setSeVolume( spep_8 + 52 -10, 1124, 80 );
setSeVolume( spep_8 + 64 -10, 1124, 100 );

-- ** 次の準備 ** --
spep_9 = spep_8 + 86;

------------------------------------------------------
-- 迫る(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
semaru_f = entryEffectLife( spep_9 + 0, SP_12, 56, 0x100, -1, 0, 0, 0 );  --迫る(ef_012)
setEffMoveKey( spep_9 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 56, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, semaru_f, 0 );
setEffRotateKey( spep_9 + 56, semaru_f, 0 );
setEffAlphaKey( spep_9 + 0, semaru_f, 255 );
setEffAlphaKey( spep_9 + 56, semaru_f, 255 );

semaru_b = entryEffectLife( spep_9 + 0, SP_13, 56, 0x80, -1, 0, 0, 0 );  --迫る(ef_013)
setEffMoveKey( spep_9 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 56, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, semaru_b, 0 );
setEffRotateKey( spep_9 + 56, semaru_b, 0 );
setEffAlphaKey( spep_9 + 0, semaru_b, 255 );
setEffAlphaKey( spep_9 + 56, semaru_b, 255 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_9 + 0,  10014, 56, 0x100, -1, 0, 79.7, 365.9 -50 );  --ズドド
setEffShake( spep_9 + 0, ctzudo, 56, 18 );
setEffMoveKey( spep_9 + 0, ctzudo, 79.7, 365.9 -50 , 0 );
setEffMoveKey( spep_9 + 56, ctzudo, 79.7, 365.9 -50 , 0 );

setEffScaleKey( spep_9 + 0, ctzudo, 2.3, 2.3 );
setEffScaleKey( spep_9 + 56, ctzudo, 2.3, 2.3 );

setEffRotateKey( spep_9 + 0, ctzudo, 0 );
setEffRotateKey( spep_9 + 56, ctzudo, 0 );

setEffAlphaKey( spep_9 + 0, ctzudo, 255 );
setEffAlphaKey( spep_9 + 56, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 56, 1, 0 );
changeAnime( spep_9 + 0, 1, 107 );

setMoveKey( spep_9 + 0, 1, -199.3, 233.6 , 0 );
setMoveKey( spep_9 + 2, 1, -195, 231 , 0 );
setMoveKey( spep_9 + 4, 1, -184.3, 214.9 , 0 );
setMoveKey( spep_9 + 6, 1, -183.3, 209.9 , 0 );
setMoveKey( spep_9 + 8, 1, -174, 201 , 0 );
setMoveKey( spep_9 + 10, 1, -170.1, 199.5 , 0 );
setMoveKey( spep_9 + 12, 1, -90.2, 94.4 , 0 );
setMoveKey( spep_9 + 14, 1, -26.3, 4.8 , 0 );
setMoveKey( spep_9 + 16, 1, 53.6, -91.4 , 0 );
setMoveKey( spep_9 + 18, 1, 75, -109 , 0 );
setMoveKey( spep_9 + 20, 1, 114.6, -164.5 , 0 );
setMoveKey( spep_9 + 22, 1, 126.9, -189.5 , 0 );
setMoveKey( spep_9 + 24, 1, 162.6, -224.9 , 0 );
setMoveKey( spep_9 + 26, 1, 183.2, -239.9 , 0 );
setMoveKey( spep_9 + 28, 1, 224.7, -299.1 , 0 );
setMoveKey( spep_9 + 30, 1, 234.6, -322.6 , 0 );
setMoveKey( spep_9 + 32, 1, 266.7, -352 , 0 );
setMoveKey( spep_9 + 34, 1, 281.1, -358.3 , 0 );
setMoveKey( spep_9 + 36, 1, 319.3, -414.6 , 0 );
setMoveKey( spep_9 + 38, 1, 322.2, -430.8 , 0 );
setMoveKey( spep_9 + 40, 1, 355.3, -460.5 , 0 );
setMoveKey( spep_9 + 42, 1, 369, -464.6 , 0 );
setMoveKey( spep_9 + 44, 1, 408.8, -523.9 , 0 );
setMoveKey( spep_9 + 46, 1, 409.8, -538.9 , 0 );
setMoveKey( spep_9 + 48, 1, 443.9, -568.9 , 0 );
setMoveKey( spep_9 + 50, 1, 456.9, -571 , 0 );
setMoveKey( spep_9 + 52, 1, 498.3, -633.1 , 0 );
setMoveKey( spep_9 + 54, 1, 497.3, -647.1 , 0 );
setMoveKey( spep_9 + 56, 1, 532.5, -677.2 , 0 );

a3 = 0.7;
a4 = 0.8;
setScaleKey( spep_9 + 0, 1, 0.7 -0.3, 0.7 -0.3 );
setScaleKey( spep_9 + 2, 1, 0.73 -0.3, 0.73 -0.3 );
setScaleKey( spep_9 + 4, 1, 0.77 -0.3, 0.77 -0.3 );
setScaleKey( spep_9 + 6, 1, 0.8 -0.3, 0.8 -0.3 );
setScaleKey( spep_9 + 8, 1, 0.83 -0.3, 0.83 -0.3 );
setScaleKey( spep_9 + 10, 1, 0.86 -0.3, 0.86 -0.3 );
setScaleKey( spep_9 + 12, 1, 1.24 -0.5, 1.24 -0.5 );
setScaleKey( spep_9 + 14, 1, 1.62 -a3, 1.62 -a3 );
setScaleKey( spep_9 + 16, 1, 1.99 -a3, 1.99 -a3 );
setScaleKey( spep_9 + 18, 1, 2.08 -a3, 2.08 -a3 );
setScaleKey( spep_9 + 20, 1, 2.16 -a3, 2.16 -a3 );
setScaleKey( spep_9 + 22, 1, 2.25 -a3, 2.25 -a3 );
setScaleKey( spep_9 + 24, 1, 2.34 -a3, 2.34 -a3 );
setScaleKey( spep_9 + 26, 1, 2.42 -a3, 2.42 -a3 );
setScaleKey( spep_9 + 28, 1, 2.51 -a3, 2.51 -a3 );
setScaleKey( spep_9 + 30, 1, 2.59 -a3, 2.59 -a3 );
setScaleKey( spep_9 + 32, 1, 2.66 -a3, 2.66 -a3 );
setScaleKey( spep_9 + 34, 1, 2.73 -a3, 2.73 -a3 );
setScaleKey( spep_9 + 36, 1, 2.8 -a3, 2.8 -a3 );
setScaleKey( spep_9 + 38, 1, 2.82 -a3, 2.82 -a3 );
setScaleKey( spep_9 + 40, 1, 2.94 -a4, 2.94 -a4 );
setScaleKey( spep_9 + 42, 1, 3.0 -a4, 3.01 -a4 );
setScaleKey( spep_9 + 44, 1, 3.08 -a4, 3.08 -a4 );
setScaleKey( spep_9 + 46, 1, 3.15 -a4, 3.15 -a4 );
setScaleKey( spep_9 + 48, 1, 3.22 -a4, 3.22 -a4 );
setScaleKey( spep_9 + 50, 1, 3.29 -a4, 3.29 -a4 );
setScaleKey( spep_9 + 52, 1, 3.36 -a4, 3.36 -a4 );
setScaleKey( spep_9 + 54, 1, 3.43 -a4, 3.43 -a4 );
setScaleKey( spep_9 + 56, 1, 3.0 -a4, 3.0 -a4 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 56, 1, 0 );

setBlendColor(spep_9 + 6, 1, 2, 0, 0, 0, 0);
setBlendColor(spep_9 + 8, 1, 2, 0, 0, 0, 0.2);
setBlendColor(spep_9 + 10, 1, 2, 0, 0, 0, 0.4);
setBlendColor(spep_9 + 12, 1, 2, 0, 0, 0, 0.6);
setBlendColor(spep_9 + 14, 1, 2, 0, 0, 0, 0.8);
setBlendColor(spep_9 + 16, 1, 2, 0, 0, 0, 1);
setBlendColor(spep_9 + 56, 1, 2, 0, 0, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--発射
stopSe( spep_9 + 42 -10, SE10, 86 );

--迫る
playSe( spep_9 + 27 -10, 1021 );

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;

------------------------------------------------------
-- 大爆発(176F)
------------------------------------------------------
--敵の色戻す
setBlendColor(spep_10 + 50 , 1 , 2 , 0 , 0 , 0 , 0);

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_10 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --大爆発(ef_014)
setEffMoveKey( spep_10 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_10 + 176, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_10 + 176, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_10 + 176, bakuhatsu, 0 );
setEffAlphaKey( spep_10 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_10 + 176, bakuhatsu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--爆発前
SE11 = playSe( spep_10 + 37 -10, 1175 );
setSeVolume( spep_10 + 37 -10, 1175, 0 );
setSeVolume( spep_10 + 50 -10, 1175, 0 );
setSeVolume( spep_10 + 64 -10, 1175, 40 );
setSeVolume( spep_10 + 76 -10, 1175, 75 );
setSeVolume( spep_10 + 105 -10, 1175, 0 );
stopSe( spep_10 + 105 -10, SE11, 0 );

SE12 = playSe( spep_10 + 46 -10, 1184 );
setSeVolume( spep_10 + 46 -10, 1184, 75 );
setSeVolume( spep_10 + 105 -10, 1184, 0 );
stopSe( spep_10 + 105 -10, SE12, 0 );

--爆発
playSe( spep_10 + 100 -10, 1024 );
playSe( spep_10 + 100 -10, 1159 );
setSeVolume( spep_10 + 100 -10, 1159, 90 );

-- ** ダメージ表示 ** --
dealDamage( spep_10 + 70 );
endPhase( spep_10 + 174 );

end
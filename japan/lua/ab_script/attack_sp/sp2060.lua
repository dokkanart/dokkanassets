--超ベジット_スピリッツエクスカリバー

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
SP_01 = 155944;  --正面腕組
SP_02 = 155945;  --背後に回ってボディ〜ストレート
SP_03 = 155947;  --背後に回ってボディ〜ストレート
SP_04 = 155948;  --腕に気を溜め〜振り下ろす
SP_05 = 155950;  --腕に気を溜め〜振り下ろす

--敵側
SP_02x = 155946;  --背後に回ってボディ〜ストレート
SP_04x = 155949;  --腕に気を溜め〜振り下ろす

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
-- 構え〜敵が岩に激突(132F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffectLife( spep_0 + 0, SP_01, 132, 0x80, -1, 0, 0, 0 );  --正面腕組(ef_001)
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 132, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 132, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 132, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 132, first, 255 );

spep_x = spep_0 + 14;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +80, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +80, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +80, 515.5 , 0 );

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

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--瞬間移動
SE002 = playSe( spep_0 + 98, 1109 );
SE003 = playSe( spep_0 + 128, 1109 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 132;

------------------------------------------------------
-- 背後に回ってボディ〜ストレート(124F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_1 + 0, SP_02, 124, 0x100, -1, 0, 0, 0 );  --背後に回ってボディ〜ストレート(ef_002)
setEffMoveKey( spep_1 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 124, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 124, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_f, 0 );
setEffRotateKey( spep_1 + 124, punch_f, 0 );
setEffAlphaKey( spep_1 + 0, punch_f, 255 );
setEffAlphaKey( spep_1 + 124, punch_f, 255 );

punch_b = entryEffectLife( spep_1 + 0, SP_03, 124, 0x80, -1, 0, 0, 0 );  --背後に回ってボディ〜ストレート(ef_003)
setEffMoveKey( spep_1 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 124, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 124, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_b, 0 );
setEffRotateKey( spep_1 + 124, punch_b, 0 );
setEffAlphaKey( spep_1 + 0, punch_b, 255 );
setEffAlphaKey( spep_1 + 124, punch_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, -79, -87 , 0 );

a1 = 0.4;
setScaleKey( spep_1 + 0, 1, 1.86 +a1, 1.86 +a1 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
--stopSe( SP_dodge - 12, SE001, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, -79, -87 , 0 );
setMoveKey( SP_dodge + 10, 1, -79, -87 , 0 );
setScaleKey( SP_dodge + 0, 1, 1.86 +a1, 1.86 +a1 );
setScaleKey( SP_dodge + 10, 1, 1.86 +a1, 1.86 +a1 );
setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
setDisp( spep_1 -3 + 126, 1, 0 );
changeAnime( spep_1 -3 + 22, 1, 1 );
changeAnime( spep_1 -3 + 26, 1, 4 );
changeAnime( spep_1 -3 + 38, 1, 8 );
changeAnime( spep_1 -3 + 102, 1, 107 );

setMoveKey( spep_1 -3 + 21, 1, -79, -87 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -59, -47 , 0 );
setMoveKey( spep_1 -3 + 25, 1, -59, -47 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -19, -37 , 0 );
setMoveKey( spep_1 -3 + 37, 1, -19, -37 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -183.1, 75.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -181.5, 75.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -177.3, 69.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -178.5, 75 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -168.9, 79.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -193.8, 87.3 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -178.9, 73.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -180.3, 80.5 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -196.1, 85.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -181.6, 87.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -187.3, 78.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -187.8, 104.5 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -183.7, 90.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -182.8, 90.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -181.6, 91 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -180.4, 91 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -178.9, 90.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -177.4, 90.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -175.8, 90.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -174.2, 90.1 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -175.7, 90.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -164.5, 85.3 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -129.6, 67.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -59.7, 32.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 56.4, -25.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 57.8, -26.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 59.3, -27.7 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 60.7, -28.7 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 62.2, -29.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 63.6, -30.7 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 65.1, -31.8 , 0 );
setMoveKey( spep_1 -3 + 101, 1, 66.6, -32.9 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 312.2, -83.6 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 308.8, -68.1 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 309.3, -70 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 490.2, -171.4 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 776, -296.6 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 986.6, -388.2 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 1125.7, -447.3 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 1230.5, -500.8 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 1280, -522.2 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 1317.1, -528.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 1321.5, -530.5 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 1334.5, -527.6 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 1331.5, -544.7 , 0 );

a2 = 0.4;
setScaleKey( spep_1 -3 + 21, 1, 1.86 +a2, 1.86 +a2 );
setScaleKey( spep_1 -3 + 22, 1, 2.01 +a2, 2.01 +a2 );
setScaleKey( spep_1 -3 + 25, 1, 2.01 +a2, 2.01 +a2 );
setScaleKey( spep_1 -3 + 26, 1, 1.86 +a2, 1.86 +a2 );
setScaleKey( spep_1 -3 + 101, 1, 1.86 +a2, 1.86 +a2 );
setScaleKey( spep_1 -3 + 102, 1, 0.68 +a2, 0.68 +a2 );
setScaleKey( spep_1 -3 + 108, 1, 0.68 +a2, 0.68 +a2 );
setScaleKey( spep_1 -3 + 110, 1, 0.76 +a2, 0.76 +a2 );
setScaleKey( spep_1 -3 + 112, 1, 0.82 +a2, 0.82 +a2 );
setScaleKey( spep_1 -3 + 114, 1, 0.87 +a2, 0.87 +a2 );
setScaleKey( spep_1 -3 + 116, 1, 0.89 +a2, 0.89 +a2 );
setScaleKey( spep_1 -3 + 118, 1, 0.91 +a2, 0.91 +a2 );
setScaleKey( spep_1 -3 + 120, 1, 0.92 +a2, 0.92 +a2 );
setScaleKey( spep_1 -3 + 126, 1, 0.92 +a2, 0.92 +a2 );

setRotateKey( spep_1 -3 + 37, 1, 0 );
setRotateKey( spep_1 -3 + 38, 1, 22 );
setRotateKey( spep_1 -3 + 101, 1, 22 );
setRotateKey( spep_1 -3 + 102, 1, -14.2 );
setRotateKey( spep_1 -3 + 108, 1, -14.2 );
setRotateKey( spep_1 -3 + 110, 1, -16.4 );
setRotateKey( spep_1 -3 + 112, 1, -18.1 );
setRotateKey( spep_1 -3 + 114, 1, -19.2 );
setRotateKey( spep_1 -3 + 116, 1, -19.9 );
setRotateKey( spep_1 -3 + 118, 1, -20.3 );
setRotateKey( spep_1 -3 + 120, 1, -20.5 );
setRotateKey( spep_1 -3 + 122, 1, -20.7 );
setRotateKey( spep_1 -3 + 126, 1, -20.7 );

-- ** 音 ** --
--ボディブロー
SE004 = playSe( spep_1 + 28, 1189 );
SE005 = playSe( spep_1 + 34, 1010 );
SE006 = playSe( spep_1 + 34, 19 );
setSeVolumeByWorkId( spep_1 + 34, SE006, 58 );
SE007 = playSe( spep_1 + 36, 1110 );

--背後回り込む
SE008 = playSe( spep_1 + 76, 1003 );
setSeVolumeByWorkId( spep_1 + 76, SE008, 68 );

--パンチ
SE009 = playSe( spep_1 + 98, 1110 );
SE010 = playSe( spep_1 + 98, 1187 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 124;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--パンチ
stopSe( spep_2 + 0, SE009, 2 );
stopSe( spep_2 + 0, SE010, 2 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;

------------------------------------------------------
-- 腕に気を溜め〜振り下ろす(372F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --腕に気を溜め〜振り下ろす(ef_004)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 372, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 372, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 372, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 372, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --腕に気を溜め〜振り下ろす(ef_005)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 372, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 372, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 372, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 372, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 240, 1, 1 );
setDisp( spep_3 -3 + 368, 1, 0 );
changeAnime( spep_3 -3 + 240, 1, 107 );

setBlendColor( spep_3 -3 + 240, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_3 -3 + 368, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_3 -3 + 369, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_3 -3 + 370, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_3 -3 + 240, 1, 573.4, -440.7 , 0 );
setMoveKey( spep_3 -3 + 242, 1, 498.3, -413 , 0 );
setMoveKey( spep_3 -3 + 244, 1, 489.1, -382.5 , 0 );
setMoveKey( spep_3 -3 + 246, 1, 411.4, -352.2 , 0 );
setMoveKey( spep_3 -3 + 248, 1, 379.5, -318.8 , 0 );
setMoveKey( spep_3 -3 + 250, 1, 360.9, -290.9 , 0 );
setMoveKey( spep_3 -3 + 252, 1, 330.6, -276.6 , 0 );
setMoveKey( spep_3 -3 + 254, 1, 318.6, -239.6 , 0 );
setMoveKey( spep_3 -3 + 256, 1, 270.9, -233.7 , 0 );
setMoveKey( spep_3 -3 + 258, 1, 236.5, -219 , 0 );
setMoveKey( spep_3 -3 + 260, 1, 197.9, -199.1 , 0 );
setMoveKey( spep_3 -3 + 262, 1, 192.1, -201.5 , 0 );
setMoveKey( spep_3 -3 + 264, 1, 176.5, -181.2 , 0 );
setMoveKey( spep_3 -3 + 266, 1, 148.8, -148.5 , 0 );
setMoveKey( spep_3 -3 + 268, 1, 140, -145.7 , 0 );
setMoveKey( spep_3 -3 + 270, 1, 136.6, -144.5 , 0 );
setMoveKey( spep_3 -3 + 272, 1, 107.2, -127.2 , 0 );
setMoveKey( spep_3 -3 + 274, 1, 76.1, -111.8 , 0 );
setMoveKey( spep_3 -3 + 276, 1, 66.7, -105.8 , 0 );
setMoveKey( spep_3 -3 + 278, 1, 65.3, -94.2 , 0 );
setMoveKey( spep_3 -3 + 280, 1, 41.5, -78 , 0 );
setMoveKey( spep_3 -3 + 282, 1, 46.8, -57 , 0 );
setMoveKey( spep_3 -3 + 284, 1, 53.5, -86.4 , 0 );
setMoveKey( spep_3 -3 + 286, 1, 11.2, -84.1 , 0 );
setMoveKey( spep_3 -3 + 288, 1, 9.3, -41.9 , 0 );
setMoveKey( spep_3 -3 + 290, 1, 36.5, -58 , 0 );
setMoveKey( spep_3 -3 + 292, 1, 12, -55.2 , 0 );
setMoveKey( spep_3 -3 + 294, 1, 13.6, -58.8 , 0 );
setMoveKey( spep_3 -3 + 296, 1, -1.8, -49.4 , 0 );
setMoveKey( spep_3 -3 + 298, 1, -7.8, -50.1 , 0 );
setMoveKey( spep_3 -3 + 300, 1, 12.9, -35.6 , 0 );
setMoveKey( spep_3 -3 + 302, 1, -30.5, -56 , 0 );
setMoveKey( spep_3 -3 + 304, 1, -36.3, -43.5 , 0 );
setMoveKey( spep_3 -3 + 306, 1, -9.7, -31.8 , 0 );
setMoveKey( spep_3 -3 + 308, 1, -30.5, -28.4 , 0 );
setMoveKey( spep_3 -3 + 310, 1, -13.7, -50.3 , 0 );
setMoveKey( spep_3 -3 + 312, 1, -38, -51.1 , 0 );
setMoveKey( spep_3 -3 + 314, 1, -21.4, -33.7 , 0 );
setMoveKey( spep_3 -3 + 316, 1, -23.3, -37.7 , 0 );
setMoveKey( spep_3 -3 + 318, 1, -26.9, -40.4 , 0 );
setMoveKey( spep_3 -3 + 320, 1, -31.2, -33 , 0 );
setMoveKey( spep_3 -3 + 322, 1, -30, -49.6 , 0 );
setMoveKey( spep_3 -3 + 324, 1, -26.3, -33.5 , 0 );
setMoveKey( spep_3 -3 + 326, 1, -16.9, -34.7 , 0 );
setMoveKey( spep_3 -3 + 328, 1, -28.5, -36.5 , 0 );
setMoveKey( spep_3 -3 + 330, 1, -25.8, -32.9 , 0 );
setMoveKey( spep_3 -3 + 332, 1, -20.4, -56.3 , 0 );
setMoveKey( spep_3 -3 + 334, 1, -34.3, -12.5 , 0 );
setMoveKey( spep_3 -3 + 336, 1, -26.2, -33.1 , 0 );
setMoveKey( spep_3 -3 + 338, 1, -26, -33 , 0 );
setMoveKey( spep_3 -3 + 340, 1, -32.6, -31.4 , 0 );
setMoveKey( spep_3 -3 + 342, 1, -45.1, -36.4 , 0 );
setMoveKey( spep_3 -3 + 344, 1, -22.1, -31.7 , 0 );
setMoveKey( spep_3 -3 + 346, 1, -21, -14.3 , 0 );
setMoveKey( spep_3 -3 + 348, 1, -2.3, -33 , 0 );
setMoveKey( spep_3 -3 + 350, 1, -18.5, -43.9 , 0 );
setMoveKey( spep_3 -3 + 352, 1, -39.9, -19.8 , 0 );
setMoveKey( spep_3 -3 + 354, 1, -45.8, -43 , 0 );
setMoveKey( spep_3 -3 + 356, 1, -38.8, -38.4 , 0 );
setMoveKey( spep_3 -3 + 358, 1, -23.2, -27.2 , 0 );
setMoveKey( spep_3 -3 + 360, 1, -27.1, -27.2 , 0 );
setMoveKey( spep_3 -3 + 362, 1, -45.5, -43.7 , 0 );
setMoveKey( spep_3 -3 + 364, 1, -8.2, -17.5 , 0 );
setMoveKey( spep_3 -3 + 366, 1, -27.7, -35.2 , 0 );
setMoveKey( spep_3 -3 + 368, 1, -26.1, -33.1 , 0 );

a3 = 0.5 -0.3;
setScaleKey( spep_3 -3 + 240, 1, 2.17 +a3, 2.17 +a3 );
setScaleKey( spep_3 -3 + 242, 1, 2.07 +a3, 2.07 +a3 );
setScaleKey( spep_3 -3 + 244, 1, 1.98 +a3, 1.98 +a3 );
setScaleKey( spep_3 -3 + 246, 1, 1.9 +a3, 1.9 +a3 );
setScaleKey( spep_3 -3 + 248, 1, 1.82 +a3, 1.82 +a3 );
setScaleKey( spep_3 -3 + 250, 1, 1.75 +a3, 1.75 +a3 );
setScaleKey( spep_3 -3 + 252, 1, 1.68 +a3, 1.68 +a3 );
setScaleKey( spep_3 -3 + 254, 1, 1.61 +a3, 1.61 +a3 );
setScaleKey( spep_3 -3 + 256, 1, 1.55 +a3, 1.55 +a3 );
setScaleKey( spep_3 -3 + 258, 1, 1.49 +a3, 1.49 +a3 );
setScaleKey( spep_3 -3 + 260, 1, 1.44 +a3, 1.44 +a3 );
setScaleKey( spep_3 -3 + 262, 1, 1.39 +a3, 1.39 +a3 );
setScaleKey( spep_3 -3 + 264, 1, 1.35 +a3, 1.35 +a3 );
setScaleKey( spep_3 -3 + 266, 1, 1.31 +a3, 1.31 +a3 );
setScaleKey( spep_3 -3 + 268, 1, 1.27 +a3, 1.27 +a3 );
setScaleKey( spep_3 -3 + 270, 1, 1.23 +a3, 1.23 +a3 );
setScaleKey( spep_3 -3 + 272, 1, 1.2 +a3, 1.2 +a3 );
setScaleKey( spep_3 -3 + 274, 1, 1.17 +a3, 1.17 +a3 );
setScaleKey( spep_3 -3 + 276, 1, 1.14 +a3, 1.14 +a3 );
setScaleKey( spep_3 -3 + 278, 1, 1.11 +a3, 1.11 +a3 );
setScaleKey( spep_3 -3 + 280, 1, 1.09 +a3, 1.09 +a3 );
setScaleKey( spep_3 -3 + 282, 1, 1.07 +a3, 1.07 +a3 );
setScaleKey( spep_3 -3 + 284, 1, 1.05 +a3, 1.05 +a3 );
setScaleKey( spep_3 -3 + 286, 1, 1.03 +a3, 1.03 +a3 );
setScaleKey( spep_3 -3 + 288, 1, 1.02 +a3, 1.02 +a3 );
setScaleKey( spep_3 -3 + 290, 1, 1.01 +a3, 1.01 +a3 );
setScaleKey( spep_3 -3 + 292, 1, 0.99 +a3, 0.99 +a3 );
setScaleKey( spep_3 -3 + 294, 1, 0.98 +a3, 0.98 +a3 );
setScaleKey( spep_3 -3 + 296, 1, 0.97 +a3, 0.97 +a3 );
setScaleKey( spep_3 -3 + 298, 1, 0.96 +a3, 0.96 +a3 );
setScaleKey( spep_3 -3 + 300, 1, 0.96 +a3, 0.96 +a3 );
setScaleKey( spep_3 -3 + 302, 1, 0.95 +a3, 0.95 +a3 );
setScaleKey( spep_3 -3 + 304, 1, 0.95 +a3, 0.95 +a3 );
setScaleKey( spep_3 -3 + 306, 1, 0.94 +a3, 0.94 +a3 );
setScaleKey( spep_3 -3 + 308, 1, 0.94 +a3, 0.94 +a3 );
setScaleKey( spep_3 -3 + 310, 1, 0.93 +a3, 0.93 +a3 );
setScaleKey( spep_3 -3 + 316, 1, 0.93 +a3, 0.93 +a3 );
setScaleKey( spep_3 -3 + 318, 1, 0.92 +a3, 0.92 +a3 );
setScaleKey( spep_3 -3 + 368, 1, 0.92 +a3, 0.92 +a3 );

setRotateKey( spep_3 -3 + 240, 1, -11.3 );
setRotateKey( spep_3 -3 + 242, 1, -10.5 );
setRotateKey( spep_3 -3 + 244, 1, -9.6 );
setRotateKey( spep_3 -3 + 246, 1, -8.9 );
setRotateKey( spep_3 -3 + 248, 1, -8.2 );
setRotateKey( spep_3 -3 + 250, 1, -7.5 );
setRotateKey( spep_3 -3 + 252, 1, -6.9 );
setRotateKey( spep_3 -3 + 254, 1, -6.3 );
setRotateKey( spep_3 -3 + 256, 1, -5.7 );
setRotateKey( spep_3 -3 + 258, 1, -5.2 );
setRotateKey( spep_3 -3 + 260, 1, -4.7 );
setRotateKey( spep_3 -3 + 262, 1, -4.3 );
setRotateKey( spep_3 -3 + 264, 1, -3.9 );
setRotateKey( spep_3 -3 + 266, 1, -3.5 );
setRotateKey( spep_3 -3 + 268, 1, -3.1 );
setRotateKey( spep_3 -3 + 270, 1, -2.8 );
setRotateKey( spep_3 -3 + 272, 1, -2.5 );
setRotateKey( spep_3 -3 + 274, 1, -2.2 );
setRotateKey( spep_3 -3 + 276, 1, -2 );
setRotateKey( spep_3 -3 + 278, 1, -1.8 );
setRotateKey( spep_3 -3 + 280, 1, -1.5 );
setRotateKey( spep_3 -3 + 282, 1, -1.4 );
setRotateKey( spep_3 -3 + 284, 1, -1.2 );
setRotateKey( spep_3 -3 + 286, 1, -1 );
setRotateKey( spep_3 -3 + 288, 1, -0.9 );
setRotateKey( spep_3 -3 + 290, 1, -0.8 );
setRotateKey( spep_3 -3 + 292, 1, -0.7 );
setRotateKey( spep_3 -3 + 294, 1, -0.6 );
setRotateKey( spep_3 -3 + 296, 1, -0.5 );
setRotateKey( spep_3 -3 + 298, 1, -0.4 );
setRotateKey( spep_3 -3 + 300, 1, -0.3 );
setRotateKey( spep_3 -3 + 302, 1, -0.3 );
setRotateKey( spep_3 -3 + 304, 1, -0.2 );
setRotateKey( spep_3 -3 + 306, 1, -0.2 );
setRotateKey( spep_3 -3 + 308, 1, -0.1 );
setRotateKey( spep_3 -3 + 314, 1, -0.1 );
setRotateKey( spep_3 -3 + 316, 1, 0 );
setRotateKey( spep_3 -3 + 368, 1, 0 );

-- ** 音 ** --
--気ダメ
SE013 = playSe( spep_3 + 14, 1035 );

--オーラ
SE012 = playSe( spep_3 + 26, 1036 );
setSeVolumeByWorkId( spep_3 + 26, SE012, 45 );

SE014 = playSe( spep_3 + 22, 1252 );
setSeVolumeByWorkId( spep_3 + 22, SE014, 130 );
SE015 = playSe( spep_3 + 50, 1036 );
setSeVolumeByWorkId( spep_3 + 50, SE015, 45 );

SE017 = playSe( spep_3 + 74, 1036 );
setSeVolumeByWorkId( spep_3 + 74, SE017, 45 );

SE019 = playSe( spep_3 + 98, 1036 );
setSeVolumeByWorkId( spep_3 + 98, SE019, 45 );

SE022 = playSe( spep_3 + 122, 1036 );
setSeVolumeByWorkId( spep_3 + 122, SE022, 45 );

--手を水平に出す
SE016 = playSe( spep_3 + 50, 1003 );
setPitch( spep_3 + 50, SE016, -400 );
setTimeStretch( SE016, 0.73, 10, 1 );

SE018 = playSe( spep_3 + 76, 1004 );

--エクスカリバー発動
SE020 = playSe( spep_3 + 100, 1231 );
setSeVolumeByWorkId( spep_3 + 100, SE020, 122 );
SE021 = playSe( spep_3 + 104, 1122 );

--振り下ろし
SE023 = playSe( spep_3 + 194, 1213 );
setSeVolumeByWorkId( spep_3 + 194, SE023, 0 );
setSeVolumeByWorkId( spep_3 + 196, SE023, 2 );
setSeVolumeByWorkId( spep_3 + 200, SE023, 8 );
setSeVolumeByWorkId( spep_3 + 204, SE023, 14 );
setSeVolumeByWorkId( spep_3 + 208, SE023, 19 );
setSeVolumeByWorkId( spep_3 + 212, SE023, 21 );
setSeVolumeByWorkId( spep_3 + 216, SE023, 25 );
setSeVolumeByWorkId( spep_3 + 220, SE023, 29 );
setSeVolumeByWorkId( spep_3 + 224, SE023, 32 );
setSeVolumeByWorkId( spep_3 + 228, SE023, 39 );
setSeVolumeByWorkId( spep_3 + 232, SE023, 44 );
setSeVolumeByWorkId( spep_3 + 236, SE023, 50 );
setSeVolumeByWorkId( spep_3 + 240, SE023, 57 );
setSeVolumeByWorkId( spep_3 + 244, SE023, 65 );
setSeVolumeByWorkId( spep_3 + 248, SE023, 71 );
setSeVolumeByWorkId( spep_3 + 252, SE023, 78 );
setSeVolumeByWorkId( spep_3 + 256, SE023, 85 );
setSeVolumeByWorkId( spep_3 + 260, SE023, 98 );
setSeVolumeByWorkId( spep_3 + 264, SE023, 112 );
setSeVolumeByWorkId( spep_3 + 268, SE023, 126 );
setStartTimeMs( SE023,  500 );

SE024 = playSe( spep_3 + 176, 1271 );
setSeVolumeByWorkId( spep_3 + 176, SE024, 78 );
SE025 = playSe( spep_3 + 188, 1143 );
setSeVolumeByWorkId( spep_3 + 188, SE025, 72 );
setTimeStretch( SE025, 1.41, 10, 1 );

SE026 = playSe( spep_3 + 188, 1004 );
SE027 = playSe( spep_3 + 190, 1116 );
stopSe( spep_3 + 214, SE027, 14 );

SE028 = playSe( spep_3 + 191, 1126 );
setSeVolumeByWorkId( spep_3 + 191, SE028, 50 );
setPitch( spep_3 + 191, SE028, 600 );
setTimeStretch( SE028, 1.4, 10, 1 );
--[[SE029 = playSe( spep_3 + 210, 1215 );
setSeVolumeByWorkId( spep_3 + 210, SE029, 38 );]]

SE030 = playSe( spep_3 + 210, 1161 );
setSeVolumeByWorkId( spep_3 + 210, SE030, 0 );
setSeVolumeByWorkId( spep_3 + 214, SE030, 4 );
setSeVolumeByWorkId( spep_3 + 218, SE030, 12 );
setSeVolumeByWorkId( spep_3 + 222, SE030, 17 );
setSeVolumeByWorkId( spep_3 + 226, SE030, 21 );
setSeVolumeByWorkId( spep_3 + 230, SE030, 24 );
setSeVolumeByWorkId( spep_3 + 234, SE030, 29 );
setSeVolumeByWorkId( spep_3 + 238, SE030, 33 );
setSeVolumeByWorkId( spep_3 + 242, SE030, 37 );
setSeVolumeByWorkId( spep_3 + 246, SE030, 41 );
setSeVolumeByWorkId( spep_3 + 250, SE030, 43 );
setSeVolumeByWorkId( spep_3 + 254, SE030, 46 );
setSeVolumeByWorkId( spep_3 + 258, SE030, 50 );
setSeVolumeByWorkId( spep_3 + 262, SE030, 52 );
setSeVolumeByWorkId( spep_3 + 266, SE030, 56 );
setSeVolumeByWorkId( spep_3 + 270, SE030, 58 );

--[[SE031 = playSe( spep_3 + 222, 1038 );
setSeVolumeByWorkId( spep_3 + 222, SE031, 129 );
setTimeStretch( SE031, 1.98, 10, 1 );

SE032 = playSe( spep_3 + 224, 1126 );]]

--切り刻む
SE033 = playSe( spep_3 + 234, 1212 );
setSeVolumeByWorkId( spep_3 + 234, SE033, 22 );
stopSe( spep_3 + 250, SE033, 20 );

SE034 = playSe( spep_3 + 234, 1026 );
setSeVolumeByWorkId( spep_3 + 234, SE034, 81 );
setPitch( spep_3 + 234, SE034, 800 );
setTimeStretch( SE034, 0.97, 10, 1 );

SE035 = playSe( spep_3 + 252, 1026 );
setSeVolumeByWorkId( spep_3 + 252, SE035, 76 );
setPitch( spep_3 + 252, SE035, 800 );
setTimeStretch( SE035, 0.97, 10, 1 );

SE036 = playSe( spep_3 + 254, 1212 );
setSeVolumeByWorkId( spep_3 + 254, SE036, 30 );
stopSe( spep_3 + 270, SE036, 18 );
SE037 = playSe( spep_3 + 270, 1212 );
setSeVolumeByWorkId( spep_3 + 270, SE037, 33 );
stopSe( spep_3 + 286, SE037, 16 );

SE038 = playSe( spep_3 + 272, 1026 );
setSeVolumeByWorkId( spep_3 + 272, SE038, 74 );
setPitch( spep_3 + 272, SE038, 800 );
setTimeStretch( SE038, 0.97, 10, 1 );
SE039 = playSe( spep_3 + 284, 1212 );
setSeVolumeByWorkId( spep_3 + 284, SE039, 31 );
stopSe( spep_3 + 302, SE039, 12 );
SE040 = playSe( spep_3 + 292, 1026 );
setSeVolumeByWorkId( spep_3 + 292, SE040, 82 );
setPitch( spep_3 + 292, SE040, 800 );
setTimeStretch( SE040, 0.97, 10, 1 );
SE041 = playSe( spep_3 + 302, 1212 );
setSeVolumeByWorkId( spep_3 + 302, SE041, 36 );
stopSe( spep_3 + 320, SE041, 14 );
SE042 = playSe( spep_3 + 310, 1026 );
setSeVolumeByWorkId( spep_3 + 310, SE042, 81 );
setPitch( spep_3 + 310, SE042, 800 );
setTimeStretch( SE042, 0.97, 10, 1 );
SE043 = playSe( spep_3 + 322, 1212 );
setSeVolumeByWorkId( spep_3 + 322, SE043, 36 );
stopSe( spep_3 + 338, SE043, 8 );
SE044 = playSe( spep_3 + 328, 1026 );
setSeVolumeByWorkId( spep_3 + 328, SE044, 77 );
setPitch( spep_3 + 328, SE044, 800 );
setTimeStretch( SE044, 0.97, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 372, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 250 );
endPhase( spep_3 + 370 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え〜敵が岩に激突(132F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffectLife( spep_0 + 0, SP_01, 132, 0x80, -1, 0, 0, 0 );  --正面腕組(ef_001)
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 132, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, -1.0, 1.0 );
setEffScaleKey( spep_0 + 132, first, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 132, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 132, first, 255 );

spep_x = spep_0 + 14;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +80, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +80, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +80, 515.5 , 0 );

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

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--瞬間移動
SE002 = playSe( spep_0 + 98, 1109 );
SE003 = playSe( spep_0 + 128, 1109 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 132;

------------------------------------------------------
-- 背後に回ってボディ〜ストレート(124F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_1 + 0, SP_02x, 124, 0x100, -1, 0, 0, 0 );  --背後に回ってボディ〜ストレート(ef_002)
setEffMoveKey( spep_1 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 124, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 124, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_f, 0 );
setEffRotateKey( spep_1 + 124, punch_f, 0 );
setEffAlphaKey( spep_1 + 0, punch_f, 255 );
setEffAlphaKey( spep_1 + 124, punch_f, 255 );

punch_b = entryEffectLife( spep_1 + 0, SP_03, 124, 0x80, -1, 0, 0, 0 );  --背後に回ってボディ〜ストレート(ef_003)
setEffMoveKey( spep_1 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 124, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 124, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_b, 0 );
setEffRotateKey( spep_1 + 124, punch_b, 0 );
setEffAlphaKey( spep_1 + 0, punch_b, 255 );
setEffAlphaKey( spep_1 + 124, punch_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, -79, -87 , 0 );

a1 = 0.4;
setScaleKey( spep_1 + 0, 1, 1.86 +a1, 1.86 +a1 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 130, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
--stopSe( SP_dodge - 12, SE001, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, -79, -87 , 0 );
setMoveKey( SP_dodge + 10, 1, -79, -87 , 0 );
setScaleKey( SP_dodge + 0, 1, 1.86 +a1, 1.86 +a1 );
setScaleKey( SP_dodge + 10, 1, 1.86 +a1, 1.86 +a1 );
setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
setDisp( spep_1 -3 + 126, 1, 0 );
changeAnime( spep_1 -3 + 22, 1, 1 );
changeAnime( spep_1 -3 + 26, 1, 4 );
changeAnime( spep_1 -3 + 38, 1, 8 );
changeAnime( spep_1 -3 + 102, 1, 107 );

setMoveKey( spep_1 -3 + 21, 1, -79, -87 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -59, -47 , 0 );
setMoveKey( spep_1 -3 + 25, 1, -59, -47 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -19, -37 , 0 );
setMoveKey( spep_1 -3 + 37, 1, -19, -37 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -183.1, 75.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -181.5, 75.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -177.3, 69.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -178.5, 75 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -168.9, 79.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -193.8, 87.3 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -178.9, 73.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -180.3, 80.5 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -196.1, 85.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -181.6, 87.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -187.3, 78.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -187.8, 104.5 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -183.7, 90.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -182.8, 90.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -181.6, 91 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -180.4, 91 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -178.9, 90.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -177.4, 90.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -175.8, 90.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -174.2, 90.1 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -175.7, 90.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -164.5, 85.3 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -129.6, 67.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -59.7, 32.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 56.4, -25.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 57.8, -26.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 59.3, -27.7 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 60.7, -28.7 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 62.2, -29.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 63.6, -30.7 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 65.1, -31.8 , 0 );
setMoveKey( spep_1 -3 + 101, 1, 66.6, -32.9 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 312.2, -83.6 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 308.8, -68.1 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 309.3, -70 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 490.2, -171.4 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 776, -296.6 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 986.6, -388.2 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 1125.7, -447.3 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 1230.5, -500.8 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 1280, -522.2 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 1317.1, -528.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 1321.5, -530.5 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 1334.5, -527.6 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 1331.5, -544.7 , 0 );

a2 = 0.4;
setScaleKey( spep_1 -3 + 21, 1, 1.86 +a2, 1.86 +a2 );
setScaleKey( spep_1 -3 + 22, 1, 2.01 +a2, 2.01 +a2 );
setScaleKey( spep_1 -3 + 25, 1, 2.01 +a2, 2.01 +a2 );
setScaleKey( spep_1 -3 + 26, 1, 1.86 +a2, 1.86 +a2 );
setScaleKey( spep_1 -3 + 101, 1, 1.86 +a2, 1.86 +a2 );
setScaleKey( spep_1 -3 + 102, 1, 0.68 +a2, 0.68 +a2 );
setScaleKey( spep_1 -3 + 108, 1, 0.68 +a2, 0.68 +a2 );
setScaleKey( spep_1 -3 + 110, 1, 0.76 +a2, 0.76 +a2 );
setScaleKey( spep_1 -3 + 112, 1, 0.82 +a2, 0.82 +a2 );
setScaleKey( spep_1 -3 + 114, 1, 0.87 +a2, 0.87 +a2 );
setScaleKey( spep_1 -3 + 116, 1, 0.89 +a2, 0.89 +a2 );
setScaleKey( spep_1 -3 + 118, 1, 0.91 +a2, 0.91 +a2 );
setScaleKey( spep_1 -3 + 120, 1, 0.92 +a2, 0.92 +a2 );
setScaleKey( spep_1 -3 + 126, 1, 0.92 +a2, 0.92 +a2 );

setRotateKey( spep_1 -3 + 37, 1, 0 );
setRotateKey( spep_1 -3 + 38, 1, 22 );
setRotateKey( spep_1 -3 + 101, 1, 22 );
setRotateKey( spep_1 -3 + 102, 1, -14.2 );
setRotateKey( spep_1 -3 + 108, 1, -14.2 );
setRotateKey( spep_1 -3 + 110, 1, -16.4 );
setRotateKey( spep_1 -3 + 112, 1, -18.1 );
setRotateKey( spep_1 -3 + 114, 1, -19.2 );
setRotateKey( spep_1 -3 + 116, 1, -19.9 );
setRotateKey( spep_1 -3 + 118, 1, -20.3 );
setRotateKey( spep_1 -3 + 120, 1, -20.5 );
setRotateKey( spep_1 -3 + 122, 1, -20.7 );
setRotateKey( spep_1 -3 + 126, 1, -20.7 );

-- ** 音 ** --
--ボディブロー
SE004 = playSe( spep_1 + 28, 1189 );
SE005 = playSe( spep_1 + 34, 1010 );
SE006 = playSe( spep_1 + 34, 19 );
setSeVolumeByWorkId( spep_1 + 34, SE006, 58 );
SE007 = playSe( spep_1 + 36, 1110 );

--背後回り込む
SE008 = playSe( spep_1 + 76, 1003 );
setSeVolumeByWorkId( spep_1 + 76, SE008, 68 );

--パンチ
SE009 = playSe( spep_1 + 98, 1110 );
SE010 = playSe( spep_1 + 98, 1187 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 124;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--パンチ
stopSe( spep_2 + 0, SE009, 2 );
stopSe( spep_2 + 0, SE010, 2 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;

------------------------------------------------------
-- 腕に気を溜め〜振り下ろす(372F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --腕に気を溜め〜振り下ろす(ef_004)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 372, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 372, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 372, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 372, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --腕に気を溜め〜振り下ろす(ef_005)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 372, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 372, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 372, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 372, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 240, 1, 1 );
setDisp( spep_3 -3 + 368, 1, 0 );
changeAnime( spep_3 -3 + 240, 1, 107 );

setBlendColor( spep_3 -3 + 240, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_3 -3 + 368, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_3 -3 + 369, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_3 -3 + 370, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_3 -3 + 240, 1, 573.4, -440.7 , 0 );
setMoveKey( spep_3 -3 + 242, 1, 498.3, -413 , 0 );
setMoveKey( spep_3 -3 + 244, 1, 489.1, -382.5 , 0 );
setMoveKey( spep_3 -3 + 246, 1, 411.4, -352.2 , 0 );
setMoveKey( spep_3 -3 + 248, 1, 379.5, -318.8 , 0 );
setMoveKey( spep_3 -3 + 250, 1, 360.9, -290.9 , 0 );
setMoveKey( spep_3 -3 + 252, 1, 330.6, -276.6 , 0 );
setMoveKey( spep_3 -3 + 254, 1, 318.6, -239.6 , 0 );
setMoveKey( spep_3 -3 + 256, 1, 270.9, -233.7 , 0 );
setMoveKey( spep_3 -3 + 258, 1, 236.5, -219 , 0 );
setMoveKey( spep_3 -3 + 260, 1, 197.9, -199.1 , 0 );
setMoveKey( spep_3 -3 + 262, 1, 192.1, -201.5 , 0 );
setMoveKey( spep_3 -3 + 264, 1, 176.5, -181.2 , 0 );
setMoveKey( spep_3 -3 + 266, 1, 148.8, -148.5 , 0 );
setMoveKey( spep_3 -3 + 268, 1, 140, -145.7 , 0 );
setMoveKey( spep_3 -3 + 270, 1, 136.6, -144.5 , 0 );
setMoveKey( spep_3 -3 + 272, 1, 107.2, -127.2 , 0 );
setMoveKey( spep_3 -3 + 274, 1, 76.1, -111.8 , 0 );
setMoveKey( spep_3 -3 + 276, 1, 66.7, -105.8 , 0 );
setMoveKey( spep_3 -3 + 278, 1, 65.3, -94.2 , 0 );
setMoveKey( spep_3 -3 + 280, 1, 41.5, -78 , 0 );
setMoveKey( spep_3 -3 + 282, 1, 46.8, -57 , 0 );
setMoveKey( spep_3 -3 + 284, 1, 53.5, -86.4 , 0 );
setMoveKey( spep_3 -3 + 286, 1, 11.2, -84.1 , 0 );
setMoveKey( spep_3 -3 + 288, 1, 9.3, -41.9 , 0 );
setMoveKey( spep_3 -3 + 290, 1, 36.5, -58 , 0 );
setMoveKey( spep_3 -3 + 292, 1, 12, -55.2 , 0 );
setMoveKey( spep_3 -3 + 294, 1, 13.6, -58.8 , 0 );
setMoveKey( spep_3 -3 + 296, 1, -1.8, -49.4 , 0 );
setMoveKey( spep_3 -3 + 298, 1, -7.8, -50.1 , 0 );
setMoveKey( spep_3 -3 + 300, 1, 12.9, -35.6 , 0 );
setMoveKey( spep_3 -3 + 302, 1, -30.5, -56 , 0 );
setMoveKey( spep_3 -3 + 304, 1, -36.3, -43.5 , 0 );
setMoveKey( spep_3 -3 + 306, 1, -9.7, -31.8 , 0 );
setMoveKey( spep_3 -3 + 308, 1, -30.5, -28.4 , 0 );
setMoveKey( spep_3 -3 + 310, 1, -13.7, -50.3 , 0 );
setMoveKey( spep_3 -3 + 312, 1, -38, -51.1 , 0 );
setMoveKey( spep_3 -3 + 314, 1, -21.4, -33.7 , 0 );
setMoveKey( spep_3 -3 + 316, 1, -23.3, -37.7 , 0 );
setMoveKey( spep_3 -3 + 318, 1, -26.9, -40.4 , 0 );
setMoveKey( spep_3 -3 + 320, 1, -31.2, -33 , 0 );
setMoveKey( spep_3 -3 + 322, 1, -30, -49.6 , 0 );
setMoveKey( spep_3 -3 + 324, 1, -26.3, -33.5 , 0 );
setMoveKey( spep_3 -3 + 326, 1, -16.9, -34.7 , 0 );
setMoveKey( spep_3 -3 + 328, 1, -28.5, -36.5 , 0 );
setMoveKey( spep_3 -3 + 330, 1, -25.8, -32.9 , 0 );
setMoveKey( spep_3 -3 + 332, 1, -20.4, -56.3 , 0 );
setMoveKey( spep_3 -3 + 334, 1, -34.3, -12.5 , 0 );
setMoveKey( spep_3 -3 + 336, 1, -26.2, -33.1 , 0 );
setMoveKey( spep_3 -3 + 338, 1, -26, -33 , 0 );
setMoveKey( spep_3 -3 + 340, 1, -32.6, -31.4 , 0 );
setMoveKey( spep_3 -3 + 342, 1, -45.1, -36.4 , 0 );
setMoveKey( spep_3 -3 + 344, 1, -22.1, -31.7 , 0 );
setMoveKey( spep_3 -3 + 346, 1, -21, -14.3 , 0 );
setMoveKey( spep_3 -3 + 348, 1, -2.3, -33 , 0 );
setMoveKey( spep_3 -3 + 350, 1, -18.5, -43.9 , 0 );
setMoveKey( spep_3 -3 + 352, 1, -39.9, -19.8 , 0 );
setMoveKey( spep_3 -3 + 354, 1, -45.8, -43 , 0 );
setMoveKey( spep_3 -3 + 356, 1, -38.8, -38.4 , 0 );
setMoveKey( spep_3 -3 + 358, 1, -23.2, -27.2 , 0 );
setMoveKey( spep_3 -3 + 360, 1, -27.1, -27.2 , 0 );
setMoveKey( spep_3 -3 + 362, 1, -45.5, -43.7 , 0 );
setMoveKey( spep_3 -3 + 364, 1, -8.2, -17.5 , 0 );
setMoveKey( spep_3 -3 + 366, 1, -27.7, -35.2 , 0 );
setMoveKey( spep_3 -3 + 368, 1, -26.1, -33.1 , 0 );

a3 = 0.5 -0.3;
setScaleKey( spep_3 -3 + 240, 1, 2.17 +a3, 2.17 +a3 );
setScaleKey( spep_3 -3 + 242, 1, 2.07 +a3, 2.07 +a3 );
setScaleKey( spep_3 -3 + 244, 1, 1.98 +a3, 1.98 +a3 );
setScaleKey( spep_3 -3 + 246, 1, 1.9 +a3, 1.9 +a3 );
setScaleKey( spep_3 -3 + 248, 1, 1.82 +a3, 1.82 +a3 );
setScaleKey( spep_3 -3 + 250, 1, 1.75 +a3, 1.75 +a3 );
setScaleKey( spep_3 -3 + 252, 1, 1.68 +a3, 1.68 +a3 );
setScaleKey( spep_3 -3 + 254, 1, 1.61 +a3, 1.61 +a3 );
setScaleKey( spep_3 -3 + 256, 1, 1.55 +a3, 1.55 +a3 );
setScaleKey( spep_3 -3 + 258, 1, 1.49 +a3, 1.49 +a3 );
setScaleKey( spep_3 -3 + 260, 1, 1.44 +a3, 1.44 +a3 );
setScaleKey( spep_3 -3 + 262, 1, 1.39 +a3, 1.39 +a3 );
setScaleKey( spep_3 -3 + 264, 1, 1.35 +a3, 1.35 +a3 );
setScaleKey( spep_3 -3 + 266, 1, 1.31 +a3, 1.31 +a3 );
setScaleKey( spep_3 -3 + 268, 1, 1.27 +a3, 1.27 +a3 );
setScaleKey( spep_3 -3 + 270, 1, 1.23 +a3, 1.23 +a3 );
setScaleKey( spep_3 -3 + 272, 1, 1.2 +a3, 1.2 +a3 );
setScaleKey( spep_3 -3 + 274, 1, 1.17 +a3, 1.17 +a3 );
setScaleKey( spep_3 -3 + 276, 1, 1.14 +a3, 1.14 +a3 );
setScaleKey( spep_3 -3 + 278, 1, 1.11 +a3, 1.11 +a3 );
setScaleKey( spep_3 -3 + 280, 1, 1.09 +a3, 1.09 +a3 );
setScaleKey( spep_3 -3 + 282, 1, 1.07 +a3, 1.07 +a3 );
setScaleKey( spep_3 -3 + 284, 1, 1.05 +a3, 1.05 +a3 );
setScaleKey( spep_3 -3 + 286, 1, 1.03 +a3, 1.03 +a3 );
setScaleKey( spep_3 -3 + 288, 1, 1.02 +a3, 1.02 +a3 );
setScaleKey( spep_3 -3 + 290, 1, 1.01 +a3, 1.01 +a3 );
setScaleKey( spep_3 -3 + 292, 1, 0.99 +a3, 0.99 +a3 );
setScaleKey( spep_3 -3 + 294, 1, 0.98 +a3, 0.98 +a3 );
setScaleKey( spep_3 -3 + 296, 1, 0.97 +a3, 0.97 +a3 );
setScaleKey( spep_3 -3 + 298, 1, 0.96 +a3, 0.96 +a3 );
setScaleKey( spep_3 -3 + 300, 1, 0.96 +a3, 0.96 +a3 );
setScaleKey( spep_3 -3 + 302, 1, 0.95 +a3, 0.95 +a3 );
setScaleKey( spep_3 -3 + 304, 1, 0.95 +a3, 0.95 +a3 );
setScaleKey( spep_3 -3 + 306, 1, 0.94 +a3, 0.94 +a3 );
setScaleKey( spep_3 -3 + 308, 1, 0.94 +a3, 0.94 +a3 );
setScaleKey( spep_3 -3 + 310, 1, 0.93 +a3, 0.93 +a3 );
setScaleKey( spep_3 -3 + 316, 1, 0.93 +a3, 0.93 +a3 );
setScaleKey( spep_3 -3 + 318, 1, 0.92 +a3, 0.92 +a3 );
setScaleKey( spep_3 -3 + 368, 1, 0.92 +a3, 0.92 +a3 );

setRotateKey( spep_3 -3 + 240, 1, -11.3 );
setRotateKey( spep_3 -3 + 242, 1, -10.5 );
setRotateKey( spep_3 -3 + 244, 1, -9.6 );
setRotateKey( spep_3 -3 + 246, 1, -8.9 );
setRotateKey( spep_3 -3 + 248, 1, -8.2 );
setRotateKey( spep_3 -3 + 250, 1, -7.5 );
setRotateKey( spep_3 -3 + 252, 1, -6.9 );
setRotateKey( spep_3 -3 + 254, 1, -6.3 );
setRotateKey( spep_3 -3 + 256, 1, -5.7 );
setRotateKey( spep_3 -3 + 258, 1, -5.2 );
setRotateKey( spep_3 -3 + 260, 1, -4.7 );
setRotateKey( spep_3 -3 + 262, 1, -4.3 );
setRotateKey( spep_3 -3 + 264, 1, -3.9 );
setRotateKey( spep_3 -3 + 266, 1, -3.5 );
setRotateKey( spep_3 -3 + 268, 1, -3.1 );
setRotateKey( spep_3 -3 + 270, 1, -2.8 );
setRotateKey( spep_3 -3 + 272, 1, -2.5 );
setRotateKey( spep_3 -3 + 274, 1, -2.2 );
setRotateKey( spep_3 -3 + 276, 1, -2 );
setRotateKey( spep_3 -3 + 278, 1, -1.8 );
setRotateKey( spep_3 -3 + 280, 1, -1.5 );
setRotateKey( spep_3 -3 + 282, 1, -1.4 );
setRotateKey( spep_3 -3 + 284, 1, -1.2 );
setRotateKey( spep_3 -3 + 286, 1, -1 );
setRotateKey( spep_3 -3 + 288, 1, -0.9 );
setRotateKey( spep_3 -3 + 290, 1, -0.8 );
setRotateKey( spep_3 -3 + 292, 1, -0.7 );
setRotateKey( spep_3 -3 + 294, 1, -0.6 );
setRotateKey( spep_3 -3 + 296, 1, -0.5 );
setRotateKey( spep_3 -3 + 298, 1, -0.4 );
setRotateKey( spep_3 -3 + 300, 1, -0.3 );
setRotateKey( spep_3 -3 + 302, 1, -0.3 );
setRotateKey( spep_3 -3 + 304, 1, -0.2 );
setRotateKey( spep_3 -3 + 306, 1, -0.2 );
setRotateKey( spep_3 -3 + 308, 1, -0.1 );
setRotateKey( spep_3 -3 + 314, 1, -0.1 );
setRotateKey( spep_3 -3 + 316, 1, 0 );
setRotateKey( spep_3 -3 + 368, 1, 0 );

-- ** 音 ** --
--気ダメ
SE013 = playSe( spep_3 + 14, 1035 );

--オーラ
SE012 = playSe( spep_3 + 26, 1036 );
setSeVolumeByWorkId( spep_3 + 26, SE012, 45 );

SE014 = playSe( spep_3 + 22, 1252 );
setSeVolumeByWorkId( spep_3 + 22, SE014, 130 );
SE015 = playSe( spep_3 + 50, 1036 );
setSeVolumeByWorkId( spep_3 + 50, SE015, 45 );

SE017 = playSe( spep_3 + 74, 1036 );
setSeVolumeByWorkId( spep_3 + 74, SE017, 45 );

SE019 = playSe( spep_3 + 98, 1036 );
setSeVolumeByWorkId( spep_3 + 98, SE019, 45 );

SE022 = playSe( spep_3 + 122, 1036 );
setSeVolumeByWorkId( spep_3 + 122, SE022, 45 );

--手を水平に出す
SE016 = playSe( spep_3 + 50, 1003 );
setPitch( spep_3 + 50, SE016, -400 );
setTimeStretch( SE016, 0.73, 10, 1 );

SE018 = playSe( spep_3 + 76, 1004 );

--エクスカリバー発動
SE020 = playSe( spep_3 + 100, 1231 );
setSeVolumeByWorkId( spep_3 + 100, SE020, 122 );
SE021 = playSe( spep_3 + 104, 1122 );

--振り下ろし
SE023 = playSe( spep_3 + 194, 1213 );
setSeVolumeByWorkId( spep_3 + 194, SE023, 0 );
setSeVolumeByWorkId( spep_3 + 196, SE023, 2 );
setSeVolumeByWorkId( spep_3 + 200, SE023, 8 );
setSeVolumeByWorkId( spep_3 + 204, SE023, 14 );
setSeVolumeByWorkId( spep_3 + 208, SE023, 19 );
setSeVolumeByWorkId( spep_3 + 212, SE023, 21 );
setSeVolumeByWorkId( spep_3 + 216, SE023, 25 );
setSeVolumeByWorkId( spep_3 + 220, SE023, 29 );
setSeVolumeByWorkId( spep_3 + 224, SE023, 32 );
setSeVolumeByWorkId( spep_3 + 228, SE023, 39 );
setSeVolumeByWorkId( spep_3 + 232, SE023, 44 );
setSeVolumeByWorkId( spep_3 + 236, SE023, 50 );
setSeVolumeByWorkId( spep_3 + 240, SE023, 57 );
setSeVolumeByWorkId( spep_3 + 244, SE023, 65 );
setSeVolumeByWorkId( spep_3 + 248, SE023, 71 );
setSeVolumeByWorkId( spep_3 + 252, SE023, 78 );
setSeVolumeByWorkId( spep_3 + 256, SE023, 85 );
setSeVolumeByWorkId( spep_3 + 260, SE023, 98 );
setSeVolumeByWorkId( spep_3 + 264, SE023, 112 );
setSeVolumeByWorkId( spep_3 + 268, SE023, 126 );
setStartTimeMs( SE023,  500 );

SE024 = playSe( spep_3 + 176, 1271 );
setSeVolumeByWorkId( spep_3 + 176, SE024, 78 );
SE025 = playSe( spep_3 + 188, 1143 );
setSeVolumeByWorkId( spep_3 + 188, SE025, 72 );
setTimeStretch( SE025, 1.41, 10, 1 );

SE026 = playSe( spep_3 + 188, 1004 );
SE027 = playSe( spep_3 + 190, 1116 );
stopSe( spep_3 + 214, SE027, 14 );

SE028 = playSe( spep_3 + 191, 1126 );
setSeVolumeByWorkId( spep_3 + 191, SE028, 50 );
setPitch( spep_3 + 191, SE028, 600 );
setTimeStretch( SE028, 1.4, 10, 1 );
--[[SE029 = playSe( spep_3 + 210, 1215 );
setSeVolumeByWorkId( spep_3 + 210, SE029, 38 );]]

SE030 = playSe( spep_3 + 210, 1161 );
setSeVolumeByWorkId( spep_3 + 210, SE030, 0 );
setSeVolumeByWorkId( spep_3 + 214, SE030, 4 );
setSeVolumeByWorkId( spep_3 + 218, SE030, 12 );
setSeVolumeByWorkId( spep_3 + 222, SE030, 17 );
setSeVolumeByWorkId( spep_3 + 226, SE030, 21 );
setSeVolumeByWorkId( spep_3 + 230, SE030, 24 );
setSeVolumeByWorkId( spep_3 + 234, SE030, 29 );
setSeVolumeByWorkId( spep_3 + 238, SE030, 33 );
setSeVolumeByWorkId( spep_3 + 242, SE030, 37 );
setSeVolumeByWorkId( spep_3 + 246, SE030, 41 );
setSeVolumeByWorkId( spep_3 + 250, SE030, 43 );
setSeVolumeByWorkId( spep_3 + 254, SE030, 46 );
setSeVolumeByWorkId( spep_3 + 258, SE030, 50 );
setSeVolumeByWorkId( spep_3 + 262, SE030, 52 );
setSeVolumeByWorkId( spep_3 + 266, SE030, 56 );
setSeVolumeByWorkId( spep_3 + 270, SE030, 58 );

--[[SE031 = playSe( spep_3 + 222, 1038 );
setSeVolumeByWorkId( spep_3 + 222, SE031, 129 );
setTimeStretch( SE031, 1.98, 10, 1 );

SE032 = playSe( spep_3 + 224, 1126 );]]

--切り刻む
SE033 = playSe( spep_3 + 234, 1212 );
setSeVolumeByWorkId( spep_3 + 234, SE033, 22 );
stopSe( spep_3 + 250, SE033, 20 );

SE034 = playSe( spep_3 + 234, 1026 );
setSeVolumeByWorkId( spep_3 + 234, SE034, 81 );
setPitch( spep_3 + 234, SE034, 800 );
setTimeStretch( SE034, 0.97, 10, 1 );

SE035 = playSe( spep_3 + 252, 1026 );
setSeVolumeByWorkId( spep_3 + 252, SE035, 76 );
setPitch( spep_3 + 252, SE035, 800 );
setTimeStretch( SE035, 0.97, 10, 1 );

SE036 = playSe( spep_3 + 254, 1212 );
setSeVolumeByWorkId( spep_3 + 254, SE036, 30 );
stopSe( spep_3 + 270, SE036, 18 );
SE037 = playSe( spep_3 + 270, 1212 );
setSeVolumeByWorkId( spep_3 + 270, SE037, 33 );
stopSe( spep_3 + 286, SE037, 16 );

SE038 = playSe( spep_3 + 272, 1026 );
setSeVolumeByWorkId( spep_3 + 272, SE038, 74 );
setPitch( spep_3 + 272, SE038, 800 );
setTimeStretch( SE038, 0.97, 10, 1 );
SE039 = playSe( spep_3 + 284, 1212 );
setSeVolumeByWorkId( spep_3 + 284, SE039, 31 );
stopSe( spep_3 + 302, SE039, 12 );
SE040 = playSe( spep_3 + 292, 1026 );
setSeVolumeByWorkId( spep_3 + 292, SE040, 82 );
setPitch( spep_3 + 292, SE040, 800 );
setTimeStretch( SE040, 0.97, 10, 1 );
SE041 = playSe( spep_3 + 302, 1212 );
setSeVolumeByWorkId( spep_3 + 302, SE041, 36 );
stopSe( spep_3 + 320, SE041, 14 );
SE042 = playSe( spep_3 + 310, 1026 );
setSeVolumeByWorkId( spep_3 + 310, SE042, 81 );
setPitch( spep_3 + 310, SE042, 800 );
setTimeStretch( SE042, 0.97, 10, 1 );
SE043 = playSe( spep_3 + 322, 1212 );
setSeVolumeByWorkId( spep_3 + 322, SE043, 36 );
stopSe( spep_3 + 338, SE043, 8 );
SE044 = playSe( spep_3 + 328, 1026 );
setSeVolumeByWorkId( spep_3 + 328, SE044, 77 );
setPitch( spep_3 + 328, SE044, 800 );
setTimeStretch( SE044, 0.97, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 372, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 250 );
endPhase( spep_3 + 370 );

end
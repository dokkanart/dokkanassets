--1020800_SSRウーブ(少年期)_気合砲_sp2075
--sp_effect_a7_00038

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
SP_01 = 156062; --気合溜め    ef_001  45  反転なし　キャラ、背景、エフェクト
SP_02 = 156063; --気合砲を放つ  ef_002  30  キャラ、背景、エフェクト
SP_03 = 156065; --気合砲が敵にあたり吹っ飛ぶ   ef_003  35  そのまま反転　エフェクト
SP_04 = 156066; --気合砲が敵にあたり吹っ飛ぶ   ef_004  35  そのまま反転　背景
SP_05 = 156067; --敵が画面手前に吹っ飛ぶ ef_005  50  反転なし　背景のみ

--敵側
SP_02r = 156064; --気合砲を放つ  ef_002r 30  ef_009反転用
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
--------------------------------------
--気合溜め(86F)
--------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 86, 0x80, -1, 0, 0, 0 );  --気合溜め(ef_008)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 86, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 86, tame, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 39, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 39, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 39, 515.5 , 0 );
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
--気ダメ1
SE001 = playSe( spep_0 + 6, 1011 );
stopSe( spep_0 +86 + 4, SE001, 0 );
--気ダメ2
SE002 = playSe( spep_0 + 6, 1024 );
setSeVolumeByWorkId( spep_0 + 6, SE002, 71 );
stopSe( spep_0 +86 + 4, SE002, 0 );
--気ダメ3
SE003 = playSe( spep_0 + 8, 20 );
stopSe( spep_0 +86 + 4, SE003, 0 );

--顔カットイン
SE004 = playSe( spep_0 + 10, 1018 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 76, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気合砲を放つ(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
hanatu = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --気合砲を放つ(ef_009)
setEffMoveKey( spep_2 + 0, hanatu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, hanatu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hanatu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, hanatu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hanatu, 0 );
setEffRotateKey( spep_2 + 56, hanatu, 0 );
setEffAlphaKey( spep_2 + 0, hanatu, 255 );
setEffAlphaKey( spep_2 + 56, hanatu, 255 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 0 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE006, 0);
    --stopSe( SP_dodge - 12, SE007, 0);
    --stopSe( SP_dodge - 12, SE008, 0);
    --stopSe( SP_dodge - 12, SE009, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
    --stopSe( SP_dodge - 12, SE007, 0);
    --stopSe( SP_dodge - 12, SE008, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--気合いいれる1
SE006 = playSe( spep_2 + 8, 1258 );
setSeVolumeByWorkId( spep_2 + 8, SE006, 43 );
--気合いいれる2
SE007 = playSe( spep_2 + 14, 20 );
setSeVolumeByWorkId( spep_2 + 14, SE007, 63 );
--気合いいれる3
SE008 = playSe( spep_2 + 14, 1025 );
setSeVolumeByWorkId( spep_2 + 14, SE008, 74 );
--気合いいれる4
SE009 = playSe( spep_2 + 14, 1060 );

--空気圧1
SE010 = playSe( spep_2 + 30, 1278 );
stopSe( spep_2 +56 + 40, SE010, 29 );
--空気圧2
SE011 = playSe( spep_2 + 44, 1259 );
setSeVolumeByWorkId( spep_2 + 44, SE011, 60 );
stopSe( spep_2 +56 +66 + 14, SE011, 10 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 気合砲が敵にあたり吹っ飛ぶ(66F)
------------------------------------------------------
-- ** エフェクト等 ** --
huttobi_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気合砲が敵にあたり吹っ飛ぶ(ef_010)
setEffMoveKey( spep_3 + 0, huttobi_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, huttobi_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, huttobi_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, huttobi_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, huttobi_f, 0 );
setEffRotateKey( spep_3 + 66, huttobi_f, 0 );
setEffAlphaKey( spep_3 + 0, huttobi_f, 255 );
setEffAlphaKey( spep_3 + 66, huttobi_f, 255 );

-- ** エフェクト等 ** --
huttobi_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気合砲が敵にあたり吹っ飛ぶ(ef_011)
setEffMoveKey( spep_3 + 0, huttobi_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, huttobi_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, huttobi_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, huttobi_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, huttobi_b, 0 );
setEffRotateKey( spep_3 + 66, huttobi_b, 0 );
setEffAlphaKey( spep_3 + 0, huttobi_b, 255 );
setEffAlphaKey( spep_3 + 66, huttobi_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 166, 1, 0 );
changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 -3 + 26, 1, 106 );
changeAnime( spep_3 -3 + 40, 1, 5 );
changeAnime( spep_3 + 66, 1, 107 );

setMoveKey( spep_3 + 0, 1, -212.6, -4.5 , 0 );
setMoveKey( spep_3 + 1, 1, -208.6, -19.2 , 0 );
setMoveKey( spep_3 + 2, 1, -202.6, -7 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -191.2, -7.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -177.7, -10.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -171.8, -18.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -166, -8.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -152.5, -8.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -134.8, -15.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -139.6, -4.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -119.5, 0.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -108.7, -4.8 , 0 );
setMoveKey( spep_3 -3 + 25, 1, -118, -19.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -115.4, -25.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -96.3, -31.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -81.5, -29.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -87.3, -25.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -67.8, -49.6 , 0 );
setMoveKey( spep_3 -3 + 37, 1, -64.3, -38.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 2.1, -73.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 17.2, -48.8 , 0 );
setMoveKey( spep_3 -3 + 43, 1, -16.2, -81.9 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 3.2, -69.9 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -17.2, -29.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 13.4, -29.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 25, -82.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 39.5, -71.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 32.8, -64.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 87.4, -71 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 79.9, -78.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 96.5, -78.2 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 102.8, -77.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 112.5, -87.2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 130.8, -84.9 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 149.1, -96.3 , 0 );
--setMoveKey( spep_3 -3 + 69, 1, 149.1, -96.3 , 0 );

setMoveKey( spep_3 +66  + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 +66  -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 +66  -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 +66  -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 +66  -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 +66  -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 +66  -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 +66  + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 3.37, 3.37 );
setScaleKey( spep_3 + 1, 1, 3.32, 3.33 );
setScaleKey( spep_3 + 2, 1, 3.28, 3.28 );
setScaleKey( spep_3 -3 + 6, 1, 3.23, 3.23 );
setScaleKey( spep_3 -3 + 8, 1, 3.18, 3.19 );
setScaleKey( spep_3 -3 + 10, 1, 3.14, 3.14 );
setScaleKey( spep_3 -3 + 12, 1, 3.09, 3.1 );
setScaleKey( spep_3 -3 + 14, 1, 3.05, 3.05 );
setScaleKey( spep_3 -3 + 16, 1, 3.0, 3.01 );
setScaleKey( spep_3 -3 + 18, 1, 2.96, 2.97 );
setScaleKey( spep_3 -3 + 20, 1, 2.91, 2.92 );
setScaleKey( spep_3 -3 + 22, 1, 2.87, 2.88 );
setScaleKey( spep_3 -3 + 25, 1, 2.83, 2.84 );
setScaleKey( spep_3 -3 + 26, 1, 2.78, 2.79 );
setScaleKey( spep_3 -3 + 28, 1, 2.74, 2.75 );
setScaleKey( spep_3 -3 + 30, 1, 2.7, 2.71 );
setScaleKey( spep_3 -3 + 32, 1, 2.66, 2.67 );
setScaleKey( spep_3 -3 + 34, 1, 2.62, 2.63 );
setScaleKey( spep_3 -3 + 37, 1, 2.58, 2.59 );
setScaleKey( spep_3 -3 + 43, 1, 2.58, 2.59 );
setScaleKey( spep_3 -3 + 44, 1, 2.19, 2.2 );
setScaleKey( spep_3 -3 + 46, 1, 2.08, 2.09 );
setScaleKey( spep_3 -3 + 48, 1, 1.97, 1.97 );
setScaleKey( spep_3 -3 + 50, 1, 1.85, 1.86 );
setScaleKey( spep_3 -3 + 52, 1, 1.74, 1.75 );
setScaleKey( spep_3 -3 + 54, 1, 1.62, 1.63 );
setScaleKey( spep_3 -3 + 56, 1, 1.51, 1.52 );
setScaleKey( spep_3 -3 + 58, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 60, 1, 1.28, 1.29 );
setScaleKey( spep_3 -3 + 62, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 64, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 66, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 68, 1, 0.83, 0.83 );
--setScaleKey( spep_3 -3 + 69, 1, 0.43, 0.43 );

setScaleKey( spep_3 +66  + 0, 1, 0.35, 0.35 );
setScaleKey( spep_3 +66  -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 +66  -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 +66  -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 +66  -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 +66  -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 +66  -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 +66  -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 +66  -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 +66  -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 +66  -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 +66  -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 +66  -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 +66  + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 25, 1, 0 );
setRotateKey( spep_3 -3 + 26, 1, -53 );
setRotateKey( spep_3 -3 + 39, 1, -53 );
setRotateKey( spep_3 -3 + 40, 1, 58 );
setRotateKey( spep_3 -3 + 43, 1, 58 );
setRotateKey( spep_3 -3 + 44, 1, 58 );
setRotateKey( spep_3 -3 + 68, 1, 58 );

setRotateKey( spep_3 +66  + 0, 1, 105 );
setRotateKey( spep_3 +66  -3 + 4, 1, 240 );
setRotateKey( spep_3 +66  -3 + 6, 1, 405 );
setRotateKey( spep_3 +66  -3 + 8, 1, 600 );
setRotateKey( spep_3 +66  -3 + 10, 1, 825 );
setRotateKey( spep_3 +66  -3 + 12, 1, 1080 );
setRotateKey( spep_3 +66  + 100, 1, 1080 );


-- ** 音 ** --
--敵にヒット1
SE012 = playSe( spep_3 + 36, 1027 );
--敵にヒット2
SE013 = playSe( spep_3 + 36, 1011 );
setSeVolumeByWorkId( spep_3 + 36, SE013, 86 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 56, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面手前に吹っ飛ぶ(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 100, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 100, finish_f, 255 );

finish_b = entryEffectLife( spep_4 + 0, SP_05, 100, 0x80, -1, 0, 0, 0 );  --敵が画面手前に吹っ飛ぶ(ef_012)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.5, 1.5 );
setEffScaleKey( spep_4 + 100, finish_b, 1.5, 1.5 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 100, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 100, finish_b, 255 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 音 ** --
--ガッ
playSe( spep_4 + 8, 1054 );
setSeVolume( spep_4 + 8, 1054, 126 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
--------------------------------------
--気合溜め(86F)
--------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 86, 0x80, -1, 0, 0, 0 );  --気合溜め(ef_008)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 86, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 86, tame, 255 );

spep_x = spep_0 + 0;
---- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 39, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 39, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 39, 515.5 , 0 );
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
--気ダメ1
SE001 = playSe( spep_0 + 6, 1011 );
stopSe( spep_0 +86 + 4, SE001, 0 );
--気ダメ2
SE002 = playSe( spep_0 + 6, 1024 );
setSeVolumeByWorkId( spep_0 + 6, SE002, 71 );
stopSe( spep_0 +86 + 4, SE002, 0 );
--気ダメ3
SE003 = playSe( spep_0 + 8, 20 );
stopSe( spep_0 +86 + 4, SE003, 0 );

--顔カットイン
SE004 = playSe( spep_0 + 10, 1018 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 76, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気合砲を放つ(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
hanatu = entryEffect( spep_2 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --気合砲を放つ(ef_009)
setEffMoveKey( spep_2 + 0, hanatu, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, hanatu, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hanatu, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, hanatu, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hanatu, 0 );
setEffRotateKey( spep_2 + 56, hanatu, 0 );
setEffAlphaKey( spep_2 + 0, hanatu, 255 );
setEffAlphaKey( spep_2 + 56, hanatu, 255 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 0 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE006, 0);
    --stopSe( SP_dodge - 12, SE007, 0);
    --stopSe( SP_dodge - 12, SE008, 0);
    --stopSe( SP_dodge - 12, SE009, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
    --stopSe( SP_dodge - 12, SE007, 0);
    --stopSe( SP_dodge - 12, SE008, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--気合いいれる1
SE006 = playSe( spep_2 + 8, 1258 );
setSeVolumeByWorkId( spep_2 + 8, SE006, 43 );
--気合いいれる2
SE007 = playSe( spep_2 + 14, 20 );
setSeVolumeByWorkId( spep_2 + 14, SE007, 63 );
--気合いいれる3
SE008 = playSe( spep_2 + 14, 1025 );
setSeVolumeByWorkId( spep_2 + 14, SE008, 74 );
--気合いいれる4
SE009 = playSe( spep_2 + 14, 1060 );

--空気圧1
SE010 = playSe( spep_2 + 30, 1278 );
stopSe( spep_2 +56 + 40, SE010, 29 );
--空気圧2
SE011 = playSe( spep_2 + 44, 1259 );
setSeVolumeByWorkId( spep_2 + 44, SE011, 60 );
stopSe( spep_2 +56 +66 + 14, SE011, 10 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 気合砲が敵にあたり吹っ飛ぶ(66F)
------------------------------------------------------
-- ** エフェクト等 ** --
huttobi_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気合砲が敵にあたり吹っ飛ぶ(ef_010)
setEffMoveKey( spep_3 + 0, huttobi_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, huttobi_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, huttobi_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, huttobi_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, huttobi_f, 0 );
setEffRotateKey( spep_3 + 66, huttobi_f, 0 );
setEffAlphaKey( spep_3 + 0, huttobi_f, 255 );
setEffAlphaKey( spep_3 + 66, huttobi_f, 255 );

-- ** エフェクト等 ** --
huttobi_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気合砲が敵にあたり吹っ飛ぶ(ef_011)
setEffMoveKey( spep_3 + 0, huttobi_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, huttobi_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, huttobi_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, huttobi_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, huttobi_b, 0 );
setEffRotateKey( spep_3 + 66, huttobi_b, 0 );
setEffAlphaKey( spep_3 + 0, huttobi_b, 255 );
setEffAlphaKey( spep_3 + 66, huttobi_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 166, 1, 0 );
changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 -3 + 26, 1, 106 );
changeAnime( spep_3 -3 + 40, 1, 5 );
changeAnime( spep_3 + 66, 1, 107 );

setMoveKey( spep_3 + 0, 1, -212.6, -4.5 , 0 );
setMoveKey( spep_3 + 1, 1, -208.6, -19.2 , 0 );
setMoveKey( spep_3 + 2, 1, -202.6, -7 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -191.2, -7.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -177.7, -10.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -171.8, -18.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -166, -8.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -152.5, -8.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -134.8, -15.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -139.6, -4.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -119.5, 0.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -108.7, -4.8 , 0 );
setMoveKey( spep_3 -3 + 25, 1, -118, -19.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -115.4, -25.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -96.3, -31.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -81.5, -29.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -87.3, -25.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -67.8, -49.6 , 0 );
setMoveKey( spep_3 -3 + 37, 1, -64.3, -38.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 2.1, -73.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 17.2, -48.8 , 0 );
setMoveKey( spep_3 -3 + 43, 1, -16.2, -81.9 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 3.2, -69.9 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -17.2, -29.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 13.4, -29.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 25, -82.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 39.5, -71.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 32.8, -64.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 87.4, -71 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 79.9, -78.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 96.5, -78.2 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 102.8, -77.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 112.5, -87.2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 130.8, -84.9 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 149.1, -96.3 , 0 );
--setMoveKey( spep_3 -3 + 69, 1, 149.1, -96.3 , 0 );

setMoveKey( spep_3 +66  + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 +66  -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 +66  -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 +66  -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 +66  -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 +66  -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 +66  -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 +66  + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 3.37, 3.37 );
setScaleKey( spep_3 + 1, 1, 3.32, 3.33 );
setScaleKey( spep_3 + 2, 1, 3.28, 3.28 );
setScaleKey( spep_3 -3 + 6, 1, 3.23, 3.23 );
setScaleKey( spep_3 -3 + 8, 1, 3.18, 3.19 );
setScaleKey( spep_3 -3 + 10, 1, 3.14, 3.14 );
setScaleKey( spep_3 -3 + 12, 1, 3.09, 3.1 );
setScaleKey( spep_3 -3 + 14, 1, 3.05, 3.05 );
setScaleKey( spep_3 -3 + 16, 1, 3.0, 3.01 );
setScaleKey( spep_3 -3 + 18, 1, 2.96, 2.97 );
setScaleKey( spep_3 -3 + 20, 1, 2.91, 2.92 );
setScaleKey( spep_3 -3 + 22, 1, 2.87, 2.88 );
setScaleKey( spep_3 -3 + 25, 1, 2.83, 2.84 );
setScaleKey( spep_3 -3 + 26, 1, 2.78, 2.79 );
setScaleKey( spep_3 -3 + 28, 1, 2.74, 2.75 );
setScaleKey( spep_3 -3 + 30, 1, 2.7, 2.71 );
setScaleKey( spep_3 -3 + 32, 1, 2.66, 2.67 );
setScaleKey( spep_3 -3 + 34, 1, 2.62, 2.63 );
setScaleKey( spep_3 -3 + 37, 1, 2.58, 2.59 );
setScaleKey( spep_3 -3 + 43, 1, 2.58, 2.59 );
setScaleKey( spep_3 -3 + 44, 1, 2.19, 2.2 );
setScaleKey( spep_3 -3 + 46, 1, 2.08, 2.09 );
setScaleKey( spep_3 -3 + 48, 1, 1.97, 1.97 );
setScaleKey( spep_3 -3 + 50, 1, 1.85, 1.86 );
setScaleKey( spep_3 -3 + 52, 1, 1.74, 1.75 );
setScaleKey( spep_3 -3 + 54, 1, 1.62, 1.63 );
setScaleKey( spep_3 -3 + 56, 1, 1.51, 1.52 );
setScaleKey( spep_3 -3 + 58, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 60, 1, 1.28, 1.29 );
setScaleKey( spep_3 -3 + 62, 1, 1.17, 1.17 );
setScaleKey( spep_3 -3 + 64, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 66, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 68, 1, 0.83, 0.83 );
--setScaleKey( spep_3 -3 + 69, 1, 0.43, 0.43 );

setScaleKey( spep_3 +66  + 0, 1, 0.35, 0.35 );
setScaleKey( spep_3 +66  -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 +66  -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 +66  -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 +66  -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 +66  -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 +66  -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 +66  -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 +66  -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 +66  -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 +66  -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 +66  -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 +66  -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 +66  + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 25, 1, 0 );
setRotateKey( spep_3 -3 + 26, 1, -53 );
setRotateKey( spep_3 -3 + 39, 1, -53 );
setRotateKey( spep_3 -3 + 40, 1, 58 );
setRotateKey( spep_3 -3 + 43, 1, 58 );
setRotateKey( spep_3 -3 + 44, 1, 58 );
setRotateKey( spep_3 -3 + 68, 1, 58 );

setRotateKey( spep_3 +66  + 0, 1, 105 );
setRotateKey( spep_3 +66  -3 + 4, 1, 240 );
setRotateKey( spep_3 +66  -3 + 6, 1, 405 );
setRotateKey( spep_3 +66  -3 + 8, 1, 600 );
setRotateKey( spep_3 +66  -3 + 10, 1, 825 );
setRotateKey( spep_3 +66  -3 + 12, 1, 1080 );
setRotateKey( spep_3 +66  + 100, 1, 1080 );


-- ** 音 ** --
--敵にヒット1
SE012 = playSe( spep_3 + 36, 1027 );
--敵にヒット2
SE013 = playSe( spep_3 + 36, 1011 );
setSeVolumeByWorkId( spep_3 + 36, SE013, 86 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 56, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面手前に吹っ飛ぶ(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 100, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 100, finish_f, 255 );

finish_b = entryEffectLife( spep_4 + 0, SP_05, 100, 0x80, -1, 0, 0, 0 );  --敵が画面手前に吹っ飛ぶ(ef_012)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.5, 1.5 );
setEffScaleKey( spep_4 + 100, finish_b, 1.5, 1.5 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 100, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 100, finish_b, 255 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 音 ** --
--ガッ
playSe( spep_4 + 8, 1054 );
setSeVolume( spep_4 + 8, 1054, 126 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 98 );

end
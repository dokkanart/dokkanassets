--1020610:SSR孫悟空_必殺技_気円斬
--sp_effect_a6_00017

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
SP_01 = 155971;	  --登場	ef_001
SP_02 = 155973;	  --気溜め	ef_002
SP_03 = 155975;	  --気溜め→気円斬（顔、文字カットイン	ef_003
SP_04 = 155977;	  --気円斬投げる	ef_004
SP_05 = 155979;	  --敵に当たる_敵より手前	ef_005_front
SP_06 = 155981;	  --敵に当たる_敵より奥	ef_005_back


--敵側
SP_01r = 155972;	--登場_反転	ef_001_r
SP_02r = 155974;	--気溜め_反転	ef_002_r
SP_03r = 155976;	--気溜め→気円斬（顔、文字カットイン_反転	ef_003_r
SP_04r = 155978;	--気円斬投げる_反転	ef_004_r
SP_05r = 155980;	--敵に当たる_敵より手前_反転	ef_005_front_r
SP_06r = 155982;	--敵に当たる_敵より奥_反転	ef_005_back_r

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
-- 登場(26F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 26, 0x100, -1, 0, 0, 0 );  --登場(ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 26, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 26, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 26, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 26, first_f, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 26;


------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02, 40, 0x100, -1, 0, 0, 0 );  --気溜め(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 40, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 40, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 40, tame, 255 );

-- ** 音 ** --
--気ダメ
SE001 = playSe( spep_1 + 0, 1035 );
--オーラ
SE002 = playSe( spep_1 + 28, 1036 );
setSeVolumeByWorkId( spep_1 + 28, SE002, 56 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 40;


------------------------------------------------------
-- 気溜め→気円斬(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
kmove = entryEffectLife( spep_2 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --気溜め→気円斬(ef_003)
setEffMoveKey( spep_2 + 0, kmove, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, kmove, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kmove, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, kmove, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kmove, 0 );
setEffRotateKey( spep_2 + 96, kmove, 0 );
setEffAlphaKey( spep_2 + 0, kmove, 255 );
setEffAlphaKey( spep_2 + 96, kmove, 255 );

spep_x = spep_2 + 10;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 16,  190006, 78, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_2 + 16, ctgogo, 78, 10 );
setEffMoveKey( spep_2 + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_2 + 94, ctgogo, -45, 515.5 , 0 );
setEffScaleKey( spep_2 + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 86, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 88, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_2 + 92, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_2 + 94, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_2 + 16, ctgogo, 0 );
setEffRotateKey( spep_2 + 94, ctgogo, 0 );
setEffAlphaKey( spep_2 + 16, ctgogo, 255 );
setEffAlphaKey( spep_2 + 94, ctgogo, 255 );

-- ** 音 ** --
--気円斬溜め1
SE003 = playSe( spep_2 + 8, 1239 );
setSeVolumeByWorkId( spep_2 + 8, SE003, 82 );
stopSe( spep_2 +96 + 18, SE003, 0 );
--気円斬溜め2
SE004 = playSe( spep_2 + 8, 1240 );
setSeVolumeByWorkId( spep_2 + 8, SE004, 114 );
stopSe( spep_2 +96 + 18, SE004, 0 );

--オーラ1
SE005 = playSe( spep_2 + 12, 1036 );
setSeVolumeByWorkId( spep_2 + 12, SE005, 56 );

--顔カットイン
SE006 = playSe( spep_2 + 22, 1018 );

--オーラ2
SE007 = playSe( spep_2 + 36, 1036 );
setSeVolumeByWorkId( spep_2 + 36, SE007, 56 );

--オーラ3
SE008 = playSe( spep_2 + 60, 1036 );
setSeVolumeByWorkId( spep_2 + 60, SE008, 56 );

--オーラ4
SE009 = playSe( spep_2 + 84, 1036 );
setSeVolumeByWorkId( spep_2 + 84, SE009, 56 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 84, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

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


------------------------------------------------------
-- 気円斬投げる(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
kshot = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --気円斬投げる(ef_004)
setEffMoveKey( spep_4 + 0, kshot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, kshot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kshot, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, kshot, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kshot, 0 );
setEffRotateKey( spep_4 + 116, kshot, 0 );
setEffAlphaKey( spep_4 + 0, kshot, 255 );
setEffAlphaKey( spep_4 + 116, kshot, 255 );

-- ** 音 ** --
--気円斬投げる1
SE011 = playSe( spep_4 + 0, 4 );
--気円斬投げる2
SE012 = playSe( spep_4 + 2, 1003 );
setSeVolumeByWorkId( spep_4 + 2, SE012, 68 );
--気円斬投げる3
SE013 = playSe( spep_4 + 2, 1117 );
stopSe( spep_4 + 44, SE013, 32 );

--気円斬飛んでいく1
SE014 = playSe( spep_4 + 10, 1242 );
--気円斬飛んでいく2
SE015 = playSe( spep_4 + 46, 1241 );
setTimeStretch( SE015, 1.25, 10, 1 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;


------------------------------------------------------
-- 敵に当たる(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
khit_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --敵に当たる_敵より手前(ef_005_front)
setEffMoveKey( spep_5 + 0, khit_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 96, khit_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, khit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 96, khit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, khit_f, 0 );
setEffRotateKey( spep_5 + 96, khit_f, 0 );
setEffAlphaKey( spep_5 + 0, khit_f, 255 );
setEffAlphaKey( spep_5 + 96, khit_f, 255 );

-- ** エフェクト等 ** --
khit_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --敵に当たる_敵より奥(ef_005_back)
setEffMoveKey( spep_5 + 0, khit_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 96, khit_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, khit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 96, khit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, khit_b, 0 );
setEffRotateKey( spep_5 + 96, khit_b, 0 );
setEffAlphaKey( spep_5 + 0, khit_b, 255 );
setEffAlphaKey( spep_5 + 96, khit_b, 255 );

--** 敵キャラクター **--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 104 );

setMoveKey( spep_5 + 0, 1, 247.9, -13.1 , 0 );
setMoveKey( spep_5 + 1, 1, 240.9, -15.7 , 0 );
setMoveKey( spep_5 + 2, 1, 240.9, -15.7 , 0 );
--setMoveKey( spep_5 + 2, 1, 248, -15.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 240, -10.1 , 0 );
setMoveKey( spep_5 -3 + 7, 1, 240, -10.1 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 235.9, -16.8 , 0 );
setMoveKey( spep_5 -3 + 9, 1, 235.9, -16.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 250.7, -14.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 247.5, -20.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 250.2, -15.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 245.9, -20.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 256.5, -16.3 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 248.1, -22.3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 249.6, -20.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 245, -24.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 246.4, -20.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 241.7, -26.8 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 247.9, -20 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 238.1, -29.3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 244.3, -24.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 234.3, -31.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 240.3, -27.3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 240.3, -34.8 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 236.2, -26.2 , 0 );

setScaleKey( spep_5 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 1, 1, 1.1275, 1.1275 );
setScaleKey( spep_5 + 2, 1, 1.155, 1.155 );
setScaleKey( spep_5 -3 + 6, 1, 1.1825, 1.1825 );
setScaleKey( spep_5 -3 + 7, 1, 1.1825, 1.1825 );
setScaleKey( spep_5 -3 + 8, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 9, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 10, 1, 1.2375, 1.2375 );
setScaleKey( spep_5 -3 + 12, 1, 1.265, 1.265 );
setScaleKey( spep_5 -3 + 14, 1, 1.32, 1.32 );
setScaleKey( spep_5 -3 + 16, 1, 1.3475, 1.3475 );
setScaleKey( spep_5 -3 + 18, 1, 1.355, 1.355 );
setScaleKey( spep_5 -3 + 20, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 22, 1, 1.4575, 1.4575 );
setScaleKey( spep_5 -3 + 24, 1, 1.513, 1.513 );
setScaleKey( spep_5 -3 + 26, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 28, 1, 1.595, 1.595 );
setScaleKey( spep_5 -3 + 30, 1, 1.65, 1.65 );
setScaleKey( spep_5 -3 + 32, 1, 1.705, 1.705 );
setScaleKey( spep_5 -3 + 34, 1, 1.76, 1.76 );
setScaleKey( spep_5 -3 + 36, 1, 1.815, 1.815 );
setScaleKey( spep_5 -3 + 38, 1, 1.87, 1.87 );
setScaleKey( spep_5 -3 + 40, 1, 1.925, 1.925 );
setScaleKey( spep_5 -3 + 42, 1, 1.98, 1.98 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 1, 1, 0 );
setRotateKey( spep_5 + 2, 1, 0 );
setRotateKey( spep_5 + 3, 1, 0 );
setRotateKey( spep_5 + 4, 1, 0 );
setRotateKey( spep_5 + 5, 1, 0 );
setRotateKey( spep_5 + 6, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
    --stopSe( SP_dodge - 12, SE04, 0);
    --stopSe( SP_dodge - 12, SE05, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 236.2, -26.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 229, -32.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 238.8, -26.3 , 0 );
    setMoveKey( SP_dodge + 6, 1, 223.5, -28.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 233.1, -26.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, 226.7, -34.3 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.98, 1.98 );
    setScaleKey( SP_dodge + 2, 1, 2.035, 2.035 );
    setScaleKey( SP_dodge + 4, 1, 2.09, 2.09 );
    setScaleKey( SP_dodge + 6, 1, 2.145, 2.145 );
    setScaleKey( SP_dodge + 8, 1, 2.2275, 2.2275 );
    setScaleKey( SP_dodge + 10, 1, 2.2825, 2.2825 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
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

--** 敵キャラクター **--
setDisp( spep_5 -3 + 84, 1, 0 );
changeAnime( spep_5 -3 + 60, 1, 108 );

setMoveKey( spep_5 -3 + 44, 1, 229, -32.8 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 238.8, -26.3 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 223.5, -28.9 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 233.1, -26.6 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 226.7, -34.3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 222.2, -30 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 217.7, -36.8 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 222.1, -30.6 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 222.1, -30.6 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 190.2, -22.5 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 220.7, 15.4 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 195.4, -22.5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 204.7, -28.1 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 206.4, -32.8 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 230.7, -24.6 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 245.5, -27.5 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 282.9, -17.6 , 0 );
--setMoveKey( spep_5 -3 + 76, 1, 201.7, -46.8 , 0 );
--setMoveKey( spep_5 -3 + 78, 1, 252.1, -35.1 , 0 );
--setMoveKey( spep_5 -3 + 80, 1, 293, -34.5 , 0 );
--setMoveKey( spep_5 -3 + 82, 1, 356.4, -21.1 , 0 );
--setMoveKey( spep_5 -3 + 84, 1, 410.3, -18.7 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 282.9, -17.6 , 0 );

setScaleKey( spep_5 -3 + 44, 1, 2.035, 2.035 );
setScaleKey( spep_5 -3 + 46, 1, 2.09, 2.09 );
setScaleKey( spep_5 -3 + 48, 1, 2.145, 2.145 );
setScaleKey( spep_5 -3 + 50, 1, 2.2275, 2.2275 );
setScaleKey( spep_5 -3 + 52, 1, 2.2825, 2.2825 );
setScaleKey( spep_5 -3 + 54, 1, 2.365, 2.365 );
setScaleKey( spep_5 -3 + 56, 1, 2.42, 2.42 );
setScaleKey( spep_5 -3 + 59, 1, 2.5025, 2.5025 );
setScaleKey( spep_5 -3 + 60, 1, 2.37, 2.37 );
setScaleKey( spep_5 -3 + 66, 1, 2.37, 2.37 );
setScaleKey( spep_5 -3 + 68, 1, 2.31, 2.31 );
setScaleKey( spep_5 -3 + 70, 1, 2.22, 2.22 );
setScaleKey( spep_5 -3 + 72, 1, 2.07, 2.07 );
setScaleKey( spep_5 -3 + 74, 1, 1.92, 1.92 );
setScaleKey( spep_5 -3 + 76, 1, 1.71, 1.71 );
setScaleKey( spep_5 -3 + 78, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 80, 1, 1.17, 1.17 );
setScaleKey( spep_5 -3 + 82, 1, 0.87, 0.87 );
setScaleKey( spep_5 -3 + 84, 1, 0.51, 0.51 );

setRotateKey( spep_5 -3 + 59, 1, 0 );
setRotateKey( spep_5 -3 + 60, 1, 23.7 );
setRotateKey( spep_5 -3 + 62, 1, -16 );
setRotateKey( spep_5 -3 + 64, 1, 0 );
setRotateKey( spep_5 -3 + 84, 1, 0 );

-- ** 音 ** --
--気円斬飛んでいく3
SE016 = playSe( spep_5 + 40, 1242 );
setSeVolumeByWorkId( spep_5 + 42, SE016, 0 );
setSeVolumeByWorkId( spep_5 + 44, SE016, 25 );
setSeVolumeByWorkId( spep_5 + 46, SE016, 50 );
setSeVolumeByWorkId( spep_5 + 48, SE016, 75 );
setSeVolumeByWorkId( spep_5 + 50, SE016, 100 );
stopSe( spep_5 + 88, SE016, 6 );
setStartTimeMs( SE016,  1650 );
stopSe(spep_5+42,SE014,10);

--当たる1
SE017 = playSe( spep_5 + 62, 1032 );
--当たる2
SE018 = playSe( spep_5 + 68, 1023 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 96;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 100, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 100, finish_f, 255 );

--finish_b = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
--setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
--setEffMoveKey( spep_6 + 100, finish_b, 0, 0 , 0 );
--setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
--setEffScaleKey( spep_6 + 100, finish_b, 1.0, 1.0 );
--setEffRotateKey( spep_6 + 0, finish_b, 0 );
--setEffRotateKey( spep_6 + 100, finish_b, 0 );
--setEffAlphaKey( spep_6 + 0, finish_b, 255 );
--setEffAlphaKey( spep_6 + 100, finish_b, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 112, bakuhatsu, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_6 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, 105 );
setRotateKey( spep_6 -3 + 4, 1, 240 );
setRotateKey( spep_6 -3 + 6, 1, 405 );
setRotateKey( spep_6 -3 + 8, 1, 600 );
setRotateKey( spep_6 -3 + 10, 1, 825 );
setRotateKey( spep_6 -3 + 12, 1, 1080 );
setRotateKey( spep_6 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_6 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_6 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 音 ** --
--敵が吹っ飛ぶ
--stopSe( spep_6 + 16, SE5, 0 );
--stopSe( spep_6 + 16, SE6, 0 );

--ガッ
playSe( spep_6 + 8, 1054 );
setSeVolume( spep_6 + 8, 1054, 126 );
--playSe( spep_6 + 8, 1023 );
--setSeVolume( spep_6 + 8, 1023, 76 );

-- ** 背景 ** --
--entryFadeBg( spep_6 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 98 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場(26F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 26, 0x100, -1, 0, 0, 0 );  --登場(ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 26, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 26, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 26, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 26, first_f, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 26;


------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02r, 40, 0x100, -1, 0, 0, 0 );  --気溜め(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 40, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 40, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 40, tame, 255 );

-- ** 音 ** --
--気ダメ
SE001 = playSe( spep_1 + 0, 1035 );
--オーラ
SE002 = playSe( spep_1 + 28, 1036 );
setSeVolumeByWorkId( spep_1 + 28, SE002, 56 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 40;


------------------------------------------------------
-- 気溜め→気円斬(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
kmove = entryEffectLife( spep_2 + 0, SP_03r, 96, 0x100, -1, 0, 0, 0 );  --気溜め→気円斬(ef_003)
setEffMoveKey( spep_2 + 0, kmove, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, kmove, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kmove, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, kmove, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kmove, 0 );
setEffRotateKey( spep_2 + 96, kmove, 0 );
setEffAlphaKey( spep_2 + 0, kmove, 255 );
setEffAlphaKey( spep_2 + 96, kmove, 255 );

spep_x = spep_2 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 16,  190006, 78, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_2 + 16, ctgogo, 78, 10 );
setEffMoveKey( spep_2 + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_2 + 94, ctgogo, -45, 515.5 , 0 );
setEffScaleKey( spep_2 + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 86, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 88, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_2 + 90, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_2 + 92, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_2 + 94, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_2 + 16, ctgogo, 0 );
setEffRotateKey( spep_2 + 94, ctgogo, 0 );
setEffAlphaKey( spep_2 + 16, ctgogo, 255 );
setEffAlphaKey( spep_2 + 94, ctgogo, 255 );

-- ** 音 ** --
--気円斬溜め1
SE003 = playSe( spep_2 + 8, 1239 );
setSeVolumeByWorkId( spep_2 + 8, SE003, 82 );
stopSe( spep_2 +96 + 18, SE003, 0 );
--気円斬溜め2
SE004 = playSe( spep_2 + 8, 1240 );
setSeVolumeByWorkId( spep_2 + 8, SE004, 114 );
stopSe( spep_2 +96 + 18, SE004, 0 );

--オーラ1
SE005 = playSe( spep_2 + 12, 1036 );
setSeVolumeByWorkId( spep_2 + 12, SE005, 56 );

--顔カットイン
SE006 = playSe( spep_2 + 22, 1018 );

--オーラ2
SE007 = playSe( spep_2 + 36, 1036 );
setSeVolumeByWorkId( spep_2 + 36, SE007, 56 );

--オーラ3
SE008 = playSe( spep_2 + 60, 1036 );
setSeVolumeByWorkId( spep_2 + 60, SE008, 56 );

--オーラ4
SE009 = playSe( spep_2 + 84, 1036 );
setSeVolumeByWorkId( spep_2 + 84, SE009, 56 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 84, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

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


------------------------------------------------------
-- 気円斬投げる(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
kshot = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --気円斬投げる(ef_004)
setEffMoveKey( spep_4 + 0, kshot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, kshot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kshot, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, kshot, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kshot, 0 );
setEffRotateKey( spep_4 + 116, kshot, 0 );
setEffAlphaKey( spep_4 + 0, kshot, 255 );
setEffAlphaKey( spep_4 + 116, kshot, 255 );

-- ** 音 ** --
--気円斬投げる1
SE011 = playSe( spep_4 + 0, 4 );
--気円斬投げる2
SE012 = playSe( spep_4 + 2, 1003 );
setSeVolumeByWorkId( spep_4 + 2, SE012, 68 );
--気円斬投げる3
SE013 = playSe( spep_4 + 2, 1117 );
stopSe( spep_4 + 44, SE013, 32 );

--気円斬飛んでいく1
SE014 = playSe( spep_4 + 10, 1242 );
--気円斬飛んでいく2
SE015 = playSe( spep_4 + 46, 1241 );
setTimeStretch( SE015, 1.25, 10, 1 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;


------------------------------------------------------
-- 敵に当たる(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
khit_f = entryEffect( spep_5 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --敵に当たる_敵より手前(ef_005_front)
setEffMoveKey( spep_5 + 0, khit_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 96, khit_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, khit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 96, khit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, khit_f, 0 );
setEffRotateKey( spep_5 + 96, khit_f, 0 );
setEffAlphaKey( spep_5 + 0, khit_f, 255 );
setEffAlphaKey( spep_5 + 96, khit_f, 255 );

-- ** エフェクト等 ** --
khit_b = entryEffect( spep_5 + 0, SP_06r, 0x80, -1, 0, 0, 0 );  --敵に当たる_敵より奥(ef_005_back)
setEffMoveKey( spep_5 + 0, khit_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 96, khit_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, khit_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 96, khit_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, khit_b, 0 );
setEffRotateKey( spep_5 + 96, khit_b, 0 );
setEffAlphaKey( spep_5 + 0, khit_b, 255 );
setEffAlphaKey( spep_5 + 96, khit_b, 255 );

--** 敵キャラクター **--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 104 );

setMoveKey( spep_5 + 0, 1, 247.9, -13.1 , 0 );
setMoveKey( spep_5 + 1, 1, 240.9, -15.7 , 0 );
setMoveKey( spep_5 + 2, 1, 240.9, -15.7 , 0 );
--setMoveKey( spep_5 + 2, 1, 248, -15.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 240, -10.1 , 0 );
setMoveKey( spep_5 -3 + 7, 1, 240, -10.1 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 235.9, -16.8 , 0 );
setMoveKey( spep_5 -3 + 9, 1, 235.9, -16.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 250.7, -14.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 247.5, -20.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 250.2, -15.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 245.9, -20.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 256.5, -16.3 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 248.1, -22.3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 249.6, -20.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 245, -24.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 246.4, -20.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 241.7, -26.8 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 247.9, -20 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 238.1, -29.3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 244.3, -24.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 234.3, -31.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 240.3, -27.3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 240.3, -34.8 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 236.2, -26.2 , 0 );

setScaleKey( spep_5 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 1, 1, 1.1275, 1.1275 );
setScaleKey( spep_5 + 2, 1, 1.155, 1.155 );
setScaleKey( spep_5 -3 + 6, 1, 1.1825, 1.1825 );
setScaleKey( spep_5 -3 + 7, 1, 1.1825, 1.1825 );
setScaleKey( spep_5 -3 + 8, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 9, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 10, 1, 1.2375, 1.2375 );
setScaleKey( spep_5 -3 + 12, 1, 1.265, 1.265 );
setScaleKey( spep_5 -3 + 14, 1, 1.32, 1.32 );
setScaleKey( spep_5 -3 + 16, 1, 1.3475, 1.3475 );
setScaleKey( spep_5 -3 + 18, 1, 1.355, 1.355 );
setScaleKey( spep_5 -3 + 20, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 22, 1, 1.4575, 1.4575 );
setScaleKey( spep_5 -3 + 24, 1, 1.513, 1.513 );
setScaleKey( spep_5 -3 + 26, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 28, 1, 1.595, 1.595 );
setScaleKey( spep_5 -3 + 30, 1, 1.65, 1.65 );
setScaleKey( spep_5 -3 + 32, 1, 1.705, 1.705 );
setScaleKey( spep_5 -3 + 34, 1, 1.76, 1.76 );
setScaleKey( spep_5 -3 + 36, 1, 1.815, 1.815 );
setScaleKey( spep_5 -3 + 38, 1, 1.87, 1.87 );
setScaleKey( spep_5 -3 + 40, 1, 1.925, 1.925 );
setScaleKey( spep_5 -3 + 42, 1, 1.98, 1.98 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 1, 1, 0 );
setRotateKey( spep_5 + 2, 1, 0 );
setRotateKey( spep_5 + 3, 1, 0 );
setRotateKey( spep_5 + 4, 1, 0 );
setRotateKey( spep_5 + 5, 1, 0 );
setRotateKey( spep_5 + 6, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
    --stopSe( SP_dodge - 12, SE04, 0);
    --stopSe( SP_dodge - 12, SE05, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 236.2, -26.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 229, -32.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 238.8, -26.3 , 0 );
    setMoveKey( SP_dodge + 6, 1, 223.5, -28.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 233.1, -26.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, 226.7, -34.3 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.98, 1.98 );
    setScaleKey( SP_dodge + 2, 1, 2.035, 2.035 );
    setScaleKey( SP_dodge + 4, 1, 2.09, 2.09 );
    setScaleKey( SP_dodge + 6, 1, 2.145, 2.145 );
    setScaleKey( SP_dodge + 8, 1, 2.2275, 2.2275 );
    setScaleKey( SP_dodge + 10, 1, 2.2825, 2.2825 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
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

--** 敵キャラクター **--
setDisp( spep_5 -3 + 84, 1, 0 );
changeAnime( spep_5 -3 + 60, 1, 108 );

setMoveKey( spep_5 -3 + 44, 1, 229, -32.8 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 238.8, -26.3 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 223.5, -28.9 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 233.1, -26.6 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 226.7, -34.3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 222.2, -30 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 217.7, -36.8 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 222.1, -30.6 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 222.1, -30.6 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 190.2, -22.5 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 220.7, 15.4 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 195.4, -22.5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 204.7, -28.1 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 206.4, -32.8 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 230.7, -24.6 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 245.5, -27.5 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 282.9, -17.6 , 0 );
--setMoveKey( spep_5 -3 + 76, 1, 201.7, -46.8 , 0 );
--setMoveKey( spep_5 -3 + 78, 1, 252.1, -35.1 , 0 );
--setMoveKey( spep_5 -3 + 80, 1, 293, -34.5 , 0 );
--setMoveKey( spep_5 -3 + 82, 1, 356.4, -21.1 , 0 );
--setMoveKey( spep_5 -3 + 84, 1, 410.3, -18.7 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 282.9, -17.6 , 0 );

setScaleKey( spep_5 -3 + 44, 1, 2.035, 2.035 );
setScaleKey( spep_5 -3 + 46, 1, 2.09, 2.09 );
setScaleKey( spep_5 -3 + 48, 1, 2.145, 2.145 );
setScaleKey( spep_5 -3 + 50, 1, 2.2275, 2.2275 );
setScaleKey( spep_5 -3 + 52, 1, 2.2825, 2.2825 );
setScaleKey( spep_5 -3 + 54, 1, 2.365, 2.365 );
setScaleKey( spep_5 -3 + 56, 1, 2.42, 2.42 );
setScaleKey( spep_5 -3 + 59, 1, 2.5025, 2.5025 );
setScaleKey( spep_5 -3 + 60, 1, 2.37, 2.37 );
setScaleKey( spep_5 -3 + 66, 1, 2.37, 2.37 );
setScaleKey( spep_5 -3 + 68, 1, 2.31, 2.31 );
setScaleKey( spep_5 -3 + 70, 1, 2.22, 2.22 );
setScaleKey( spep_5 -3 + 72, 1, 2.07, 2.07 );
setScaleKey( spep_5 -3 + 74, 1, 1.92, 1.92 );
setScaleKey( spep_5 -3 + 76, 1, 1.71, 1.71 );
setScaleKey( spep_5 -3 + 78, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 80, 1, 1.17, 1.17 );
setScaleKey( spep_5 -3 + 82, 1, 0.87, 0.87 );
setScaleKey( spep_5 -3 + 84, 1, 0.51, 0.51 );

setRotateKey( spep_5 -3 + 59, 1, 0 );
setRotateKey( spep_5 -3 + 60, 1, 23.7 );
setRotateKey( spep_5 -3 + 62, 1, -16 );
setRotateKey( spep_5 -3 + 64, 1, 0 );
setRotateKey( spep_5 -3 + 84, 1, 0 );

-- ** 音 ** --
--気円斬飛んでいく3
SE016 = playSe( spep_5 + 40, 1242 );
setSeVolumeByWorkId( spep_5 + 42, SE016, 0 );
setSeVolumeByWorkId( spep_5 + 44, SE016, 25 );
setSeVolumeByWorkId( spep_5 + 46, SE016, 50 );
setSeVolumeByWorkId( spep_5 + 48, SE016, 75 );
setSeVolumeByWorkId( spep_5 + 50, SE016, 100 );
stopSe( spep_5 + 88, SE016, 6 );
setStartTimeMs( SE016,  1650 );
stopSe(spep_5+42,SE014,10);

--当たる1
SE017 = playSe( spep_5 + 62, 1032 );
--当たる2
SE018 = playSe( spep_5 + 68, 1023 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 96;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 100, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 100, finish_f, 255 );

--finish_b = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
--setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
--setEffMoveKey( spep_6 + 100, finish_b, 0, 0 , 0 );
--setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
--setEffScaleKey( spep_6 + 100, finish_b, 1.0, 1.0 );
--setEffRotateKey( spep_6 + 0, finish_b, 0 );
--setEffRotateKey( spep_6 + 100, finish_b, 0 );
--setEffAlphaKey( spep_6 + 0, finish_b, 255 );
--setEffAlphaKey( spep_6 + 100, finish_b, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 112, bakuhatsu, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_6 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, 105 );
setRotateKey( spep_6 -3 + 4, 1, 240 );
setRotateKey( spep_6 -3 + 6, 1, 405 );
setRotateKey( spep_6 -3 + 8, 1, 600 );
setRotateKey( spep_6 -3 + 10, 1, 825 );
setRotateKey( spep_6 -3 + 12, 1, 1080 );
setRotateKey( spep_6 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_6 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_6 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 音 ** --
--敵が吹っ飛ぶ
--stopSe( spep_6 + 16, SE5, 0 );
--stopSe( spep_6 + 16, SE6, 0 );

--ガッ
playSe( spep_6 + 8, 1054 );
setSeVolume( spep_6 + 8, 1054, 126 );
--playSe( spep_6 + 8, 1023 );
--setSeVolume( spep_6 + 8, 1023, 76 );

-- ** 背景 ** --
--entryFadeBg( spep_6 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 98 );

end
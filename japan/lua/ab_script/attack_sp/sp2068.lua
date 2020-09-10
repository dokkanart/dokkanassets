--1020760:ミスター・サタン_チャンピオンの華麗な舞い
--sp_effect_b1_00124

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
SP_01 = 155951; --導入、敵より前 ef_001
SP_02 = 155952; --導入、敵より後ろ    ef_002
SP_03 = 155953; --ラッシュ、敵より前   ef_003
SP_04 = 155954; --ラッシュ、敵より後ろ  ef_004
SP_05 = 155955; --ラスト、敵より前    ef_005
SP_06 = 155956; --ラッシュ、敵より後ろ  ef_006
SP_07 = 155957; --ラッシュ、敵ビックリマーク   ef_007

--敵側
SP_01r = 155958; --導入、敵より前：敵用  ef_001_r
SP_03r = 155959; --ラッシュ、敵より前：敵用    ef_003_r
SP_07r = 155960; --ラッシュ、敵ビックリマーク:敵用    ef_007_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 導入、敵より前,後ろ(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --導入、敵より前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --導入、敵より後ろ(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 96, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 96, first_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 85, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 85, 25 );
setEffMoveKey(   spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 85, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey(  spep_0 + 85, shuchusen1, 1.2, 1.2 );
setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 85, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 12, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 13, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 85, shuchusen1, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 99, 1, 0 );
changeAnime( spep_0 -3 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 816.1, -520.4 , 0 );
setMoveKey( spep_0 + 1, 1, 813.7, -518.8 , 0 );
setMoveKey( spep_0 + 2, 1, 806, -513.7 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 792.6, -504.7 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 792.6, -504.7 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 772.7, -491.4 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 772.7, -491.4 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 745.1, -472.9 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 707.8, -447.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 657, -414 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 584, -365.1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 437.8, -267.3 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 295, -171.8 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 244.6, -138 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 217.3, -119.8 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 201.1, -108.9 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 191.7, -102.6 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 187, -99.5 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 185.6, -98.5 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 184.9, -98.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 184.1, -97.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 183.4, -97.5 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 182.7, -97.2 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 182, -96.9 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 181.2, -96.6 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 180.5, -96.3 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 179.8, -96 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 179.1, -95.7 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 178.3, -95.4 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 177.6, -95 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 176.9, -94.7 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 176.2, -94.4 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 175.5, -94.1 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 174.7, -93.8 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 174, -93.5 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 173.3, -93.2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 172.6, -92.8 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 171.8, -92.5 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 171.1, -92.2 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 170.4, -91.9 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 169.7, -91.6 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 168.9, -91.3 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 168.2, -91 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 167.5, -90.7 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 166.8, -90.3 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 166, -90 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 165.3, -89.7 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 164.6, -89.4 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 163.9, -89.1 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 163.1, -88.8 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 162.4, -88.5 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 161.7, -88.1 , 0 );
setMoveKey( spep_0 -3 + 99, 1, 161.7, -88.1 , 0 );

setScaleKey( spep_0 + 0, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 1, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 2, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 6, 1, 2.57, 2.57 );
setScaleKey( spep_0 -3 + 7, 1, 2.57, 2.57 );
setScaleKey( spep_0 -3 + 8, 1, 2.52, 2.52 );
setScaleKey( spep_0 -3 + 9, 1, 2.52, 2.52 );
setScaleKey( spep_0 -3 + 10, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 12, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 14, 1, 2.23, 2.23 );
setScaleKey( spep_0 -3 + 16, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 18, 1, 1.68, 1.68 );
setScaleKey( spep_0 -3 + 20, 1, 1.32, 1.32 );
setScaleKey( spep_0 -3 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 24, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 26, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 30, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 38, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 40, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 50, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 52, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 62, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 64, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 74, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 76, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 88, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 90, 1, 1, 1 );
setScaleKey( spep_0 -3 + 99, 1, 1, 1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 99, 1, 0 );

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_0 + 8, 1018 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 86, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

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
SE002 = playSe( spep_1 + 0, SE_05 );

--ズサー1
SE003 = playSe( spep_1 + 90, 1003 );					
--ズサー2
SE004 = playSe( spep_1 + 92, 1197 );
setSeVolumeByWorkId( spep_1 + 92, SE004, 77 );
setTimeStretch( SE004, 1.36, 10, 1 );

--ズサー3
SE005 = playSe( spep_1 + 92, 1192 );
setSeVolumeByWorkId( spep_1 + 92, SE005, 172 );
stopSe( spep_1 +94 + 18, SE005, 2 );			

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- ラッシュ(226F)
------------------------------------------------------

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ラッシュ、敵より後ろ(ef_004)
setEffMoveKey( spep_2 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 226, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 226, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_b, 0 );
setEffRotateKey( spep_2 + 226, rush_b, 0 );
setEffAlphaKey( spep_2 + 0, rush_b, 255 );
setEffAlphaKey( spep_2 + 226, rush_b, 255 );

rush_f = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ラッシュ、敵より前 (ef_003)
setEffMoveKey( spep_2 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 226, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 226, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_f, 0 );
setEffRotateKey( spep_2 + 226, rush_f, 0 );
setEffAlphaKey( spep_2 + 0, rush_f, 255 );
setEffAlphaKey( spep_2 + 226, rush_f, 255 );

rush_e = entryEffect( spep_2 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --ラッシュ、敵より前 (ef_003)
setEffMoveKey( spep_2 + 0, rush_e, 0, 0 , 0 );
setEffMoveKey( spep_2 + 226, rush_e, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_e, 1.0, 1.0 );
setEffScaleKey( spep_2 + 226, rush_e, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_e, 0 );
setEffRotateKey( spep_2 + 226, rush_e, 0 );
setEffAlphaKey( spep_2 + 0, rush_e, 255 );
setEffAlphaKey( spep_2 + 226, rush_e, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 21,  906, 7, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 21, shuchusen2, 7, 25 );
setEffMoveKey(   spep_2 + 21, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 28, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 21, shuchusen2, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 28, shuchusen2, 1.2, 1.2 );
setEffRotateKey( spep_2 + 21, shuchusen2, 0 );
setEffRotateKey( spep_2 + 28, shuchusen2, 0 );
setEffAlphaKey(  spep_2 + 21, shuchusen2, 255 );
setEffAlphaKey(  spep_2 + 28, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_2 + 83,  906, 7, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 83, shuchusen3, 7, 25 );
setEffMoveKey(   spep_2 + 83, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 90, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 83, shuchusen3, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 90, shuchusen3, 1.2, 1.2 );
setEffRotateKey( spep_2 + 83, shuchusen3, 0 );
setEffRotateKey( spep_2 + 90, shuchusen3, 0 );
setEffAlphaKey(  spep_2 + 83, shuchusen3, 255 );
setEffAlphaKey(  spep_2 + 90, shuchusen3, 255 );

shuchusen4 = entryEffectLife( spep_2 + 97,  906, 103, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 97, shuchusen4, 103, 25 );
setEffMoveKey(   spep_2 + 97, shuchusen4, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 200, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 97, shuchusen4, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 200, shuchusen4, 1.2, 1.2 );
setEffRotateKey( spep_2 + 97, shuchusen4, 0 );
setEffRotateKey( spep_2 + 200, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 97, shuchusen4, 255 );
setEffAlphaKey(  spep_2 + 200, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctgaha = entryEffectLife( spep_2 -3 + 24,  10005, 10, 0x100, -1, 0, -108.9, 191.8 );
setEffMoveKey( spep_2 -3 + 24, ctgaha, -108.9, 191.8 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctgaha, -93, 203.6 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctgaha, -88.8, 202.6 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctgaha, -72, 215.4 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctgaha, -68.7, 213.3 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctgaha, -58.6, 218.7 , 0 );

setEffScaleKey( spep_2 -3 + 24, ctgaha, 1, 1 );
setEffScaleKey( spep_2 -3 + 26, ctgaha, 1.08, 1.08 );
setEffScaleKey( spep_2 -3 + 28, ctgaha, 1.17, 1.17 );
setEffScaleKey( spep_2 -3 + 30, ctgaha, 1.25, 1.25 );
setEffScaleKey( spep_2 -3 + 32, ctgaha, 1.34, 1.34 );
setEffScaleKey( spep_2 -3 + 34, ctgaha, 1.42, 1.42 );

setEffRotateKey( spep_2 -3 + 24, ctgaha, -21 );
setEffRotateKey( spep_2 -3 + 26, ctgaha, -21.1 );
setEffRotateKey( spep_2 -3 + 30, ctgaha, -21.1 );
setEffRotateKey( spep_2 -3 + 32, ctgaha, -21.2 );
setEffRotateKey( spep_2 -3 + 34, ctgaha, -21.2 );

setEffAlphaKey( spep_2 -3 + 24, ctgaha, 255 );
setEffAlphaKey( spep_2 -3 + 34, ctgaha, 255 );

-- ** 書き文字エントリー ** --
--[[ctbikkuri = entryEffectLife( spep_2 -3 + 56,  10001, 28, 0x100, -1, 0, 140.5, 87.7 );
setEffMoveKey( spep_2 -3 + 56, ctbikkuri, 140.5, 87.7 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctbikkuri, 152.8, 98.8 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctbikkuri, 166.1, 109 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctbikkuri, 180.3, 118.1 , 0 );
setEffMoveKey( spep_2 -3 + 87, ctbikkuri, 180.3, 118.1 , 0 );

setEffScaleKey( spep_2 -3 + 56, ctbikkuri, 1.06, 1.06 );
setEffScaleKey( spep_2 -3 + 58, ctbikkuri, 1.24, 1.24 );
setEffScaleKey( spep_2 -3 + 60, ctbikkuri, 1.42, 1.42 );
setEffScaleKey( spep_2 -3 + 62, ctbikkuri, 1.6, 1.6 );
setEffScaleKey( spep_2 -3 + 87, ctbikkuri, 1.6, 1.6 );

setEffRotateKey( spep_2 -3 + 56, ctbikkuri, -13.7 );
setEffRotateKey( spep_2 -3 + 58, ctbikkuri, -9.1 );
setEffRotateKey( spep_2 -3 + 60, ctbikkuri, -4.6 );
setEffRotateKey( spep_2 -3 + 62, ctbikkuri, 0 );
setEffRotateKey( spep_2 -3 + 87, ctbikkuri, 0 );

setEffAlphaKey( spep_2 -3 + 56, ctbikkuri, 255 );
setEffAlphaKey( spep_2 -3 + 87, ctbikkuri, 255 );]]

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_2 -3 + 86,  10020, 13, 0x100, -1, 0, 35.1, 214 );
setEffMoveKey( spep_2 -3 + 86, ctbaki, 35.1, 214 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctbaki, 50.8, 220.5 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctbaki, 49, 209.5 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctbaki, 65.7, 217 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctbaki, 62.8, 204.9 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctbaki, 80.7, 213.5 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctbaki, 76.7, 200.4 , 0 );
setEffMoveKey( spep_2 -3 + 99, ctbaki, 76.7, 200.4 , 0 );

setEffScaleKey( spep_2 -3 + 86, ctbaki, 0.9, 0.9 );
setEffScaleKey( spep_2 -3 + 88, ctbaki, 0.96, 0.96 );
setEffScaleKey( spep_2 -3 + 90, ctbaki, 1.02, 1.02 );
setEffScaleKey( spep_2 -3 + 92, ctbaki, 1.08, 1.08 );
setEffScaleKey( spep_2 -3 + 94, ctbaki, 1.14, 1.14 );
setEffScaleKey( spep_2 -3 + 96, ctbaki, 1.2, 1.2 );
setEffScaleKey( spep_2 -3 + 98, ctbaki, 1.26, 1.26 );
setEffScaleKey( spep_2 -3 + 99, ctbaki, 1.26, 1.26 );

setEffRotateKey( spep_2 -3 + 86, ctbaki, 0 );
setEffRotateKey( spep_2 -3 + 99, ctbaki, 0 );

setEffAlphaKey( spep_2 -3 + 86, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 99, ctbaki, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_2 -3 + 100,  10014, 103, 0x100, -1, 0, 27.9, 244.8 );
setEffShake( spep_2 -3 + 100, ctzudodo, 103, 10 );
setEffMoveKey( spep_2 -3 + 100, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 203, ctzudodo, 27.9, 244.8 , 0 );

setEffScaleKey( spep_2 -3 + 100, ctzudodo, 1.65, 1.65 );
setEffScaleKey( spep_2 -3 + 203, ctzudodo, 1.65, 1.65 );

setEffRotateKey( spep_2 -3 + 100, ctzudodo, 40 );
setEffRotateKey( spep_2 -3 + 203, ctzudodo, 40 );

setEffAlphaKey( spep_2 -3 + 100, ctzudodo, 255 );
setEffAlphaKey( spep_2 -3 + 203, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 42.4, -92.3 , 0 );
setMoveKey( spep_2 + 1, 1, 44.2, -92.2 , 0 );
setMoveKey( spep_2 + 2, 1, 46.4, -92.1 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 49.2, -92 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 49.2, -92 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 52.8, -91.8 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 52.8, -91.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 57.1, -91.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 62.2, -91.3 , 0 );

setScaleKey( spep_2 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 1, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 2, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 6, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 7, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 8, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 9, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 10, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 12, 1, 1.57, 1.57 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 1, 1, 0 );
setRotateKey( spep_2 + 2, 1, 0 );
setRotateKey( spep_2 + 3, 1, 0 );
setRotateKey( spep_2 + 4, 1, 0 );
setRotateKey( spep_2 + 5, 1, 0 );
setRotateKey( spep_2 + 6, 1, 0 );
setRotateKey( spep_2 + 9, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 10 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    --stopSe( SP_dodge - 12, SE04, 0);
    --stopSe( SP_dodge - 12, SE05, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 62.2, -91.3 , 0 );

    setMoveKey( SP_dodge + 2, 1, 68.3, -91.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 75.5, -90.6 , 0 );
    setMoveKey( SP_dodge + 6, 1, 84, -90.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 93.8, -89.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 104.9, -89.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 2, 1, 1.59, 1.59 );
    setScaleKey( SP_dodge + 4, 1, 1.62, 1.62 );
    setScaleKey( SP_dodge + 6, 1, 1.65, 1.65 );
    setScaleKey( SP_dodge + 8, 1, 1.68, 1.68 );
    setScaleKey( SP_dodge + 10, 1, 1.72, 1.72 );

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

setDisp( spep_2 -3 + 228, 1, 1 );
changeAnime( spep_2 -3 + 24, 1, 118 );

setMoveKey( spep_2 -3 + 14, 1, 68.3, -91.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 75.5, -90.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 84, -90.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 93.8, -89.7 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 104.9, -89.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 137.9, -122.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 147.9, -112.7 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 127.9, -132.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 137.9, -122.7 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 137.9, -122.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 148.1, -112.7 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 128.3, -132.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 138.5, -122.8 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 138.6, -122.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 138.8, -122.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 138.9, -123 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 139.1, -123 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 149, -120.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 122.5, -131.2 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 139.5, -123.2 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 138.4, -115.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 139.8, -123.3 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 138.7, -115.8 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 140.1, -123.3 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 139, -115.9 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 140.4, -123.4 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 139.3, -116 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 140.7, -123.5 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 139.6, -116.1 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 141, -123.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 139.9, -116.2 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 141.4, -123.7 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 140.3, -116.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 141.7, -123.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 140.6, -116.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 142, -123.9 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 140.9, -116.5 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 142.3, -124 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 141.2, -116.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 142.6, -124.1 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 141.5, -116.6 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 142.9, -124.2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 141.8, -116.7 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 143.2, -124.3 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 142.1, -116.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 143.5, -124.4 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 142.4, -116.9 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 143.8, -124.5 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 142.7, -117 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 144.1, -124.6 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 143, -117.1 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 144.4, -124.7 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 143.3, -117.2 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 144.7, -124.7 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 143.6, -117.3 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 145, -124.8 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 143.9, -117.4 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 145.3, -124.9 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 144.2, -117.5 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 145.6, -125 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 144.5, -117.5 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 146, -125.1 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 144.9, -117.6 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 146.3, -125.2 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 145.2, -117.7 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 146.6, -125.2 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 145.5, -117.8 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 145.6, -117.8 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 151.2, -117.8 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 167.7, -117.5 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 195, -117 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 232.6, -116 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 280, -114.4 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 336.5, -111.8 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 401.1, -108.1 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 473, -102.9 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 550.9, -96.1 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 633.7, -87.4 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 720.1, -76.8 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 808.7, -64.2 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 898.2, -49.8 , 0 );

setScaleKey( spep_2 -3 + 14, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 16, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 23, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 24, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 100, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 102, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 118, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 120, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 134, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 136, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 150, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 152, 1, 1.92, 1.93 );
setScaleKey( spep_2 -3 + 154, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 168, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 170, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 184, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 186, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 202, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 204, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 206, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 208, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 210, 1, 2.26, 2.26 );
setScaleKey( spep_2 -3 + 212, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 214, 1, 2.62, 2.62 );
setScaleKey( spep_2 -3 + 216, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 218, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 220, 1, 3.37, 3.37 );
setScaleKey( spep_2 -3 + 222, 1, 3.66, 3.66 );
setScaleKey( spep_2 -3 + 224, 1, 3.97, 3.97 );
setScaleKey( spep_2 -3 + 226, 1, 4.28, 4.28 );
setScaleKey( spep_2 -3 + 228, 1, 4.6, 4.6 );

setRotateKey( spep_2 -3 + 13, 1, 0 );
setRotateKey( spep_2 -3 + 202, 1, 0 );
setRotateKey( spep_2 -3 + 204, 1, -0.1 );
setRotateKey( spep_2 -3 + 206, 1, -0.3 );
setRotateKey( spep_2 -3 + 208, 1, -0.6 );
setRotateKey( spep_2 -3 + 210, 1, -1.1 );
setRotateKey( spep_2 -3 + 212, 1, -1.8 );
setRotateKey( spep_2 -3 + 214, 1, -2.5 );
setRotateKey( spep_2 -3 + 216, 1, -3.4 );
setRotateKey( spep_2 -3 + 218, 1, -4.3 );
setRotateKey( spep_2 -3 + 220, 1, -5.4 );
setRotateKey( spep_2 -3 + 222, 1, -6.5 );
setRotateKey( spep_2 -3 + 224, 1, -7.6 );
setRotateKey( spep_2 -3 + 226, 1, -8.8 );
setRotateKey( spep_2 -3 + 228, 1, -10 );

-- ** 音 ** --
--ズサー4
SE006 = playSe( spep_2 + 0, 1106 );

--パンチ1
SE007 = playSe( spep_2 + 18, 1189 );
setSeVolumeByWorkId( spep_2 + 18, SE007, 55 );				

--！？
SE008 = playSe( spep_2 + 48, 48 );
stopSe( spep_2 + 58, SE008, 16 );
setStartTimeMs( SE008,  500 );		
--パンチ2
SE009 = playSe( spep_2 + 22, 1000 );					

--ラッシュ1
SE010 = playSe( spep_2 + 86, 1000 );
--ラッシュ2
SE011 = playSe( spep_2 + 100, 1000 );
--ラッシュ3
SE012 = playSe( spep_2 + 118, 1000 );
--ラッシュ4
SE013 = playSe( spep_2 + 124, 1000 );
setSeVolumeByWorkId( spep_2 + 124, SE013, 79 );
--ラッシュ5
SE014 = playSe( spep_2 + 130, 1000 );
setSeVolumeByWorkId( spep_2 + 130, SE014, 94 );
--ラッシュ6
SE015 = playSe( spep_2 + 134, 1000 );
--ラッシュ7
SE016 = playSe( spep_2 + 140, 1000 );
setSeVolumeByWorkId( spep_2 + 140, SE016, 81 );
--ラッシュ8
SE017 = playSe( spep_2 + 146, 1000 );
setSeVolumeByWorkId( spep_2 + 146, SE017, 90 );
--ラッシュ9
SE018 = playSe( spep_2 + 152, 1000 );
--ラッシュ10
SE019 = playSe( spep_2 + 156, 1000 );
setSeVolumeByWorkId( spep_2 + 156, SE019, 82 );
--ラッシュ11
SE020 = playSe( spep_2 + 164, 1000 );
setSeVolumeByWorkId( spep_2 + 164, SE020, 88 );
--ラッシュ12
SE021 = playSe( spep_2 + 170, 1000 );
setSeVolumeByWorkId( spep_2 + 170, SE021, 81 );
--ラッシュ13
SE022 = playSe( spep_2 + 174, 1000 );
--ラッシュ14
SE023 = playSe( spep_2 + 180, 1000 );
setSeVolumeByWorkId( spep_2 + 180, SE023, 72 );
--ラッシュ15
SE024 = playSe( spep_2 + 186, 1000 );
--大きく振りかぶって1
SE025 = playSe( spep_2 + 204, 1072 );
setSeVolumeByWorkId( spep_2 + 204, SE025, 53 );
setTimeStretch( SE025, 0.7, 10, 1 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 212, 12, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 226;

------------------------------------------------------
-- ラスト(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
rast_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ラスト、敵より前(ef_005)
setEffMoveKey( spep_3 + 0, rast_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, rast_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rast_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, rast_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rast_f, 0 );
setEffRotateKey( spep_3 + 126, rast_f, 0 );
setEffAlphaKey( spep_3 + 0, rast_f, 255 );
setEffAlphaKey( spep_3 + 126, rast_f, 255 );

rast_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ラッシュ、敵より後ろ(ef_006)
setEffMoveKey( spep_3 + 0, rast_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, rast_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rast_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, rast_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rast_b, 0 );
setEffRotateKey( spep_3 + 126, rast_b, 0 );
setEffAlphaKey( spep_3 + 0, rast_b, 255 );
setEffAlphaKey( spep_3 + 126, rast_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 126, 1, 1 );
changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, 151.5, -200.7 , 0 );
setMoveKey( spep_3 + 1, 1, 132.2, -185.6 , 0 );
setMoveKey( spep_3 + 2, 1, 112.9, -170.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 93, -156 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 93, -156 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 71.9, -141.7 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 71.9, -141.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 48.9, -127.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 22.5, -114.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -9.9, -103.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -9.9, -103.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -38.8, -64.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 31.2, -142.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -36.8, -131.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 31.2, -72.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 0.2, -103.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -7.8, -103.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 0.2, -103.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -7.8, -103.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 0.2, -103.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -7.8, -103.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -7.8, -103.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 0.2, -103.6 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -0.4, -111.6 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -5.3, -101.3 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -0.4, -111.6 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -5.3, -101.3 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -3, -112.9 , 0 );
setMoveKey( spep_3 -3 + 129, 1, -3, -112.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 1, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 2, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 6, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 7, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 8, 1, 2.12, 2.12 );
setScaleKey( spep_3 -3 + 9, 1, 2.12, 2.12 );
setScaleKey( spep_3 -3 + 10, 1, 2.3, 2.3 );
setScaleKey( spep_3 -3 + 12, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 14, 1, 2.73, 2.73 );
setScaleKey( spep_3 -3 + 129, 1, 2.73, 2.73 );

setRotateKey( spep_3 + 0, 1, 7.8 );
setRotateKey( spep_3 + 1, 1, 7.7 );
setRotateKey( spep_3 + 2, 1, 7.3 );
setRotateKey( spep_3 -3 + 6, 1, 6.7 );
setRotateKey( spep_3 -3 + 7, 1, 6.7 );
setRotateKey( spep_3 -3 + 8, 1, 5.8 );
setRotateKey( spep_3 -3 + 9, 1, 5.8 );
setRotateKey( spep_3 -3 + 10, 1, 4.5 );
setRotateKey( spep_3 -3 + 12, 1, 2.7 );
setRotateKey( spep_3 -3 + 14, 1, 0 );
setRotateKey( spep_3 -3 + 129, 1, 0 );

-- ** 音 ** --
--大きく振りかぶって2
SE026 = playSe( spep_3 + 0, 1004 );
setSeVolumeByWorkId( spep_3 + 10, SE026, 62 );

--大きく振りかぶって3
SE027 = playSe( spep_3 + 4, 1003 );
setSeVolumeByWorkId( spep_3 + 14, SE027, 78 );

--パンチ3
SE028 = playSe( spep_3 + 10, 1000 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 126, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 16 );
endPhase( spep_3 + 116 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入、敵より前,後ろ(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --導入、敵より前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --導入、敵より後ろ(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 96, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 96, first_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 85, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 85, 25 );
setEffMoveKey(   spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 85, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey(  spep_0 + 85, shuchusen1, 1.2, 1.2 );
setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 85, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 12, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 13, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 85, shuchusen1, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 99, 1, 0 );
changeAnime( spep_0 -3 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 816.1, -520.4 , 0 );
setMoveKey( spep_0 + 1, 1, 813.7, -518.8 , 0 );
setMoveKey( spep_0 + 2, 1, 806, -513.7 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 792.6, -504.7 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 792.6, -504.7 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 772.7, -491.4 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 772.7, -491.4 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 745.1, -472.9 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 707.8, -447.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 657, -414 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 584, -365.1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 437.8, -267.3 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 295, -171.8 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 244.6, -138 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 217.3, -119.8 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 201.1, -108.9 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 191.7, -102.6 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 187, -99.5 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 185.6, -98.5 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 184.9, -98.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 184.1, -97.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 183.4, -97.5 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 182.7, -97.2 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 182, -96.9 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 181.2, -96.6 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 180.5, -96.3 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 179.8, -96 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 179.1, -95.7 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 178.3, -95.4 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 177.6, -95 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 176.9, -94.7 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 176.2, -94.4 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 175.5, -94.1 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 174.7, -93.8 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 174, -93.5 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 173.3, -93.2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 172.6, -92.8 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 171.8, -92.5 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 171.1, -92.2 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 170.4, -91.9 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 169.7, -91.6 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 168.9, -91.3 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 168.2, -91 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 167.5, -90.7 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 166.8, -90.3 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 166, -90 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 165.3, -89.7 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 164.6, -89.4 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 163.9, -89.1 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 163.1, -88.8 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 162.4, -88.5 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 161.7, -88.1 , 0 );
setMoveKey( spep_0 -3 + 99, 1, 161.7, -88.1 , 0 );

setScaleKey( spep_0 + 0, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 1, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 2, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 6, 1, 2.57, 2.57 );
setScaleKey( spep_0 -3 + 7, 1, 2.57, 2.57 );
setScaleKey( spep_0 -3 + 8, 1, 2.52, 2.52 );
setScaleKey( spep_0 -3 + 9, 1, 2.52, 2.52 );
setScaleKey( spep_0 -3 + 10, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 12, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 14, 1, 2.23, 2.23 );
setScaleKey( spep_0 -3 + 16, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 18, 1, 1.68, 1.68 );
setScaleKey( spep_0 -3 + 20, 1, 1.32, 1.32 );
setScaleKey( spep_0 -3 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 24, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 26, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 28, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 30, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 38, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 40, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 50, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 52, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 62, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 64, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 74, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 76, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 88, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 90, 1, 1, 1 );
setScaleKey( spep_0 -3 + 99, 1, 1, 1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 99, 1, 0 );

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_0 + 8, 1018 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 86, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

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
SE002 = playSe( spep_1 + 0, SE_05 );

--ズサー1
SE003 = playSe( spep_1 + 90, 1003 );					
--ズサー2
SE004 = playSe( spep_1 + 92, 1197 );
setSeVolumeByWorkId( spep_1 + 92, SE004, 77 );
setTimeStretch( SE004, 1.36, 10, 1 );

--ズサー3
SE005 = playSe( spep_1 + 92, 1192 );
setSeVolumeByWorkId( spep_1 + 92, SE005, 172 );
stopSe( spep_1 +94 + 18, SE005, 2 );			

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- ラッシュ(226F)
------------------------------------------------------

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ラッシュ、敵より後ろ(ef_004)
setEffMoveKey( spep_2 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 226, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 226, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_b, 0 );
setEffRotateKey( spep_2 + 226, rush_b, 0 );
setEffAlphaKey( spep_2 + 0, rush_b, 255 );
setEffAlphaKey( spep_2 + 226, rush_b, 255 );

rush_f = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --ラッシュ、敵より前 (ef_003)
setEffMoveKey( spep_2 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 226, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 226, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_f, 0 );
setEffRotateKey( spep_2 + 226, rush_f, 0 );
setEffAlphaKey( spep_2 + 0, rush_f, 255 );
setEffAlphaKey( spep_2 + 226, rush_f, 255 );

rush_e = entryEffect( spep_2 + 0, SP_07r, 0x100, -1, 0, 0, 0 );  --ラッシュ、敵より前 (ef_003)
setEffMoveKey( spep_2 + 0, rush_e, 0, 0 , 0 );
setEffMoveKey( spep_2 + 226, rush_e, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_e, 1.0, 1.0 );
setEffScaleKey( spep_2 + 226, rush_e, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_e, 0 );
setEffRotateKey( spep_2 + 226, rush_e, 0 );
setEffAlphaKey( spep_2 + 0, rush_e, 255 );
setEffAlphaKey( spep_2 + 226, rush_e, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 21,  906, 7, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 21, shuchusen2, 7, 25 );
setEffMoveKey(   spep_2 + 21, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 28, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 21, shuchusen2, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 28, shuchusen2, 1.2, 1.2 );
setEffRotateKey( spep_2 + 21, shuchusen2, 0 );
setEffRotateKey( spep_2 + 28, shuchusen2, 0 );
setEffAlphaKey(  spep_2 + 21, shuchusen2, 255 );
setEffAlphaKey(  spep_2 + 28, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_2 + 83,  906, 7, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 83, shuchusen3, 7, 25 );
setEffMoveKey(   spep_2 + 83, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 90, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 83, shuchusen3, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 90, shuchusen3, 1.2, 1.2 );
setEffRotateKey( spep_2 + 83, shuchusen3, 0 );
setEffRotateKey( spep_2 + 90, shuchusen3, 0 );
setEffAlphaKey(  spep_2 + 83, shuchusen3, 255 );
setEffAlphaKey(  spep_2 + 90, shuchusen3, 255 );

shuchusen4 = entryEffectLife( spep_2 + 97,  906, 103, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 97, shuchusen4, 103, 25 );
setEffMoveKey(   spep_2 + 97, shuchusen4, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 200, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 97, shuchusen4, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 200, shuchusen4, 1.2, 1.2 );
setEffRotateKey( spep_2 + 97, shuchusen4, 0 );
setEffRotateKey( spep_2 + 200, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 97, shuchusen4, 255 );
setEffAlphaKey(  spep_2 + 200, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctgaha = entryEffectLife( spep_2 -3 + 24,  10005, 10, 0x100, -1, 0, -108.9, 191.8 );
setEffMoveKey( spep_2 -3 + 24, ctgaha, -108.9, 191.8 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctgaha, -93, 203.6 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctgaha, -88.8, 202.6 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctgaha, -72, 215.4 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctgaha, -68.7, 213.3 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctgaha, -58.6, 218.7 , 0 );

setEffScaleKey( spep_2 -3 + 24, ctgaha, 1, 1 );
setEffScaleKey( spep_2 -3 + 26, ctgaha, 1.08, 1.08 );
setEffScaleKey( spep_2 -3 + 28, ctgaha, 1.17, 1.17 );
setEffScaleKey( spep_2 -3 + 30, ctgaha, 1.25, 1.25 );
setEffScaleKey( spep_2 -3 + 32, ctgaha, 1.34, 1.34 );
setEffScaleKey( spep_2 -3 + 34, ctgaha, 1.42, 1.42 );

setEffRotateKey( spep_2 -3 + 24, ctgaha, -21 );
setEffRotateKey( spep_2 -3 + 26, ctgaha, -21.1 );
setEffRotateKey( spep_2 -3 + 30, ctgaha, -21.1 );
setEffRotateKey( spep_2 -3 + 32, ctgaha, -21.2 );
setEffRotateKey( spep_2 -3 + 34, ctgaha, -21.2 );

setEffAlphaKey( spep_2 -3 + 24, ctgaha, 255 );
setEffAlphaKey( spep_2 -3 + 34, ctgaha, 255 );

-- ** 書き文字エントリー ** --
--[[ctbikkuri = entryEffectLife( spep_2 -3 + 56,  10001, 28, 0x100, -1, 0, 140.5, 87.7 );
setEffMoveKey( spep_2 -3 + 56, ctbikkuri, 140.5, 87.7 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctbikkuri, 152.8, 98.8 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctbikkuri, 166.1, 109 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctbikkuri, 180.3, 118.1 , 0 );
setEffMoveKey( spep_2 -3 + 87, ctbikkuri, 180.3, 118.1 , 0 );

setEffScaleKey( spep_2 -3 + 56, ctbikkuri, 1.06, 1.06 );
setEffScaleKey( spep_2 -3 + 58, ctbikkuri, 1.24, 1.24 );
setEffScaleKey( spep_2 -3 + 60, ctbikkuri, 1.42, 1.42 );
setEffScaleKey( spep_2 -3 + 62, ctbikkuri, 1.6, 1.6 );
setEffScaleKey( spep_2 -3 + 87, ctbikkuri, 1.6, 1.6 );

setEffRotateKey( spep_2 -3 + 56, ctbikkuri, -13.7 );
setEffRotateKey( spep_2 -3 + 58, ctbikkuri, -9.1 );
setEffRotateKey( spep_2 -3 + 60, ctbikkuri, -4.6 );
setEffRotateKey( spep_2 -3 + 62, ctbikkuri, 0 );
setEffRotateKey( spep_2 -3 + 87, ctbikkuri, 0 );

setEffAlphaKey( spep_2 -3 + 56, ctbikkuri, 255 );
setEffAlphaKey( spep_2 -3 + 87, ctbikkuri, 255 );]]

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_2 -3 + 86,  10020, 13, 0x100, -1, 0, 35.1, 214 );
setEffMoveKey( spep_2 -3 + 86, ctbaki, 35.1, 214 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctbaki, 50.8, 220.5 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctbaki, 49, 209.5 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctbaki, 65.7, 217 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctbaki, 62.8, 204.9 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctbaki, 80.7, 213.5 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctbaki, 76.7, 200.4 , 0 );
setEffMoveKey( spep_2 -3 + 99, ctbaki, 76.7, 200.4 , 0 );

setEffScaleKey( spep_2 -3 + 86, ctbaki, 0.9, 0.9 );
setEffScaleKey( spep_2 -3 + 88, ctbaki, 0.96, 0.96 );
setEffScaleKey( spep_2 -3 + 90, ctbaki, 1.02, 1.02 );
setEffScaleKey( spep_2 -3 + 92, ctbaki, 1.08, 1.08 );
setEffScaleKey( spep_2 -3 + 94, ctbaki, 1.14, 1.14 );
setEffScaleKey( spep_2 -3 + 96, ctbaki, 1.2, 1.2 );
setEffScaleKey( spep_2 -3 + 98, ctbaki, 1.26, 1.26 );
setEffScaleKey( spep_2 -3 + 99, ctbaki, 1.26, 1.26 );

setEffRotateKey( spep_2 -3 + 86, ctbaki, 0 );
setEffRotateKey( spep_2 -3 + 99, ctbaki, 0 );

setEffAlphaKey( spep_2 -3 + 86, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 99, ctbaki, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_2 -3 + 100,  10014, 103, 0x100, -1, 0, 27.9, 244.8 );
setEffShake( spep_2 -3 + 100, ctzudodo, 103, 10 );
setEffMoveKey( spep_2 -3 + 100, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 203, ctzudodo, 27.9, 244.8 , 0 );

setEffScaleKey( spep_2 -3 + 100, ctzudodo, 1.65, 1.65 );
setEffScaleKey( spep_2 -3 + 203, ctzudodo, 1.65, 1.65 );

setEffRotateKey( spep_2 -3 + 100, ctzudodo, -40 );
setEffRotateKey( spep_2 -3 + 203, ctzudodo, -40 );

setEffAlphaKey( spep_2 -3 + 100, ctzudodo, 255 );
setEffAlphaKey( spep_2 -3 + 203, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 42.4, -92.3 , 0 );
setMoveKey( spep_2 + 1, 1, 44.2, -92.2 , 0 );
setMoveKey( spep_2 + 2, 1, 46.4, -92.1 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 49.2, -92 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 49.2, -92 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 52.8, -91.8 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 52.8, -91.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 57.1, -91.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 62.2, -91.3 , 0 );

setScaleKey( spep_2 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 1, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 2, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 6, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 7, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 8, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 9, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 10, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 12, 1, 1.57, 1.57 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 1, 1, 0 );
setRotateKey( spep_2 + 2, 1, 0 );
setRotateKey( spep_2 + 3, 1, 0 );
setRotateKey( spep_2 + 4, 1, 0 );
setRotateKey( spep_2 + 5, 1, 0 );
setRotateKey( spep_2 + 6, 1, 0 );
setRotateKey( spep_2 + 9, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 10 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    --stopSe( SP_dodge - 12, SE04, 0);
    --stopSe( SP_dodge - 12, SE05, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 62.2, -91.3 , 0 );

    setMoveKey( SP_dodge + 2, 1, 68.3, -91.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 75.5, -90.6 , 0 );
    setMoveKey( SP_dodge + 6, 1, 84, -90.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 93.8, -89.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 104.9, -89.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.57, 1.57 );
    setScaleKey( SP_dodge + 2, 1, 1.59, 1.59 );
    setScaleKey( SP_dodge + 4, 1, 1.62, 1.62 );
    setScaleKey( SP_dodge + 6, 1, 1.65, 1.65 );
    setScaleKey( SP_dodge + 8, 1, 1.68, 1.68 );
    setScaleKey( SP_dodge + 10, 1, 1.72, 1.72 );

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

setDisp( spep_2 -3 + 228, 1, 1 );
changeAnime( spep_2 -3 + 24, 1, 118 );

setMoveKey( spep_2 -3 + 14, 1, 68.3, -91.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 75.5, -90.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 84, -90.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 93.8, -89.7 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 104.9, -89.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 137.9, -122.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 147.9, -112.7 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 127.9, -132.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 137.9, -122.7 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 137.9, -122.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 148.1, -112.7 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 128.3, -132.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 138.5, -122.8 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 138.6, -122.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 138.8, -122.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 138.9, -123 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 139.1, -123 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 149, -120.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 122.5, -131.2 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 139.5, -123.2 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 138.4, -115.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 139.8, -123.3 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 138.7, -115.8 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 140.1, -123.3 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 139, -115.9 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 140.4, -123.4 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 139.3, -116 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 140.7, -123.5 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 139.6, -116.1 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 141, -123.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 139.9, -116.2 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 141.4, -123.7 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 140.3, -116.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 141.7, -123.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 140.6, -116.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 142, -123.9 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 140.9, -116.5 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 142.3, -124 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 141.2, -116.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 142.6, -124.1 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 141.5, -116.6 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 142.9, -124.2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 141.8, -116.7 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 143.2, -124.3 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 142.1, -116.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 143.5, -124.4 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 142.4, -116.9 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 143.8, -124.5 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 142.7, -117 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 144.1, -124.6 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 143, -117.1 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 144.4, -124.7 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 143.3, -117.2 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 144.7, -124.7 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 143.6, -117.3 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 145, -124.8 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 143.9, -117.4 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 145.3, -124.9 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 144.2, -117.5 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 145.6, -125 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 144.5, -117.5 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 146, -125.1 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 144.9, -117.6 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 146.3, -125.2 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 145.2, -117.7 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 146.6, -125.2 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 145.5, -117.8 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 145.6, -117.8 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 151.2, -117.8 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 167.7, -117.5 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 195, -117 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 232.6, -116 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 280, -114.4 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 336.5, -111.8 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 401.1, -108.1 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 473, -102.9 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 550.9, -96.1 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 633.7, -87.4 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 720.1, -76.8 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 808.7, -64.2 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 898.2, -49.8 , 0 );

setScaleKey( spep_2 -3 + 14, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 16, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 23, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 24, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 100, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 102, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 118, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 120, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 134, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 136, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 150, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 152, 1, 1.92, 1.93 );
setScaleKey( spep_2 -3 + 154, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 168, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 170, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 184, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 186, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 202, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 204, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 206, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 208, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 210, 1, 2.26, 2.26 );
setScaleKey( spep_2 -3 + 212, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 214, 1, 2.62, 2.62 );
setScaleKey( spep_2 -3 + 216, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 218, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 220, 1, 3.37, 3.37 );
setScaleKey( spep_2 -3 + 222, 1, 3.66, 3.66 );
setScaleKey( spep_2 -3 + 224, 1, 3.97, 3.97 );
setScaleKey( spep_2 -3 + 226, 1, 4.28, 4.28 );
setScaleKey( spep_2 -3 + 228, 1, 4.6, 4.6 );

setRotateKey( spep_2 -3 + 13, 1, 0 );
setRotateKey( spep_2 -3 + 202, 1, 0 );
setRotateKey( spep_2 -3 + 204, 1, -0.1 );
setRotateKey( spep_2 -3 + 206, 1, -0.3 );
setRotateKey( spep_2 -3 + 208, 1, -0.6 );
setRotateKey( spep_2 -3 + 210, 1, -1.1 );
setRotateKey( spep_2 -3 + 212, 1, -1.8 );
setRotateKey( spep_2 -3 + 214, 1, -2.5 );
setRotateKey( spep_2 -3 + 216, 1, -3.4 );
setRotateKey( spep_2 -3 + 218, 1, -4.3 );
setRotateKey( spep_2 -3 + 220, 1, -5.4 );
setRotateKey( spep_2 -3 + 222, 1, -6.5 );
setRotateKey( spep_2 -3 + 224, 1, -7.6 );
setRotateKey( spep_2 -3 + 226, 1, -8.8 );
setRotateKey( spep_2 -3 + 228, 1, -10 );

-- ** 音 ** --
--ズサー4
SE006 = playSe( spep_2 + 0, 1106 );

--パンチ1
SE007 = playSe( spep_2 + 18, 1189 );
setSeVolumeByWorkId( spep_2 + 18, SE007, 55 );				

--！？
SE008 = playSe( spep_2 + 48, 48 );
stopSe( spep_2 + 58, SE008, 16 );
setStartTimeMs( SE008,  500 );		
--パンチ2
SE009 = playSe( spep_2 + 22, 1000 );					

--ラッシュ1
SE010 = playSe( spep_2 + 86, 1000 );
--ラッシュ2
SE011 = playSe( spep_2 + 100, 1000 );
--ラッシュ3
SE012 = playSe( spep_2 + 118, 1000 );
--ラッシュ4
SE013 = playSe( spep_2 + 124, 1000 );
setSeVolumeByWorkId( spep_2 + 124, SE013, 79 );
--ラッシュ5
SE014 = playSe( spep_2 + 130, 1000 );
setSeVolumeByWorkId( spep_2 + 130, SE014, 94 );
--ラッシュ6
SE015 = playSe( spep_2 + 134, 1000 );
--ラッシュ7
SE016 = playSe( spep_2 + 140, 1000 );
setSeVolumeByWorkId( spep_2 + 140, SE016, 81 );
--ラッシュ8
SE017 = playSe( spep_2 + 146, 1000 );
setSeVolumeByWorkId( spep_2 + 146, SE017, 90 );
--ラッシュ9
SE018 = playSe( spep_2 + 152, 1000 );
--ラッシュ10
SE019 = playSe( spep_2 + 156, 1000 );
setSeVolumeByWorkId( spep_2 + 156, SE019, 82 );
--ラッシュ11
SE020 = playSe( spep_2 + 164, 1000 );
setSeVolumeByWorkId( spep_2 + 164, SE020, 88 );
--ラッシュ12
SE021 = playSe( spep_2 + 170, 1000 );
setSeVolumeByWorkId( spep_2 + 170, SE021, 81 );
--ラッシュ13
SE022 = playSe( spep_2 + 174, 1000 );
--ラッシュ14
SE023 = playSe( spep_2 + 180, 1000 );
setSeVolumeByWorkId( spep_2 + 180, SE023, 72 );
--ラッシュ15
SE024 = playSe( spep_2 + 186, 1000 );
--大きく振りかぶって1
SE025 = playSe( spep_2 + 204, 1072 );
setSeVolumeByWorkId( spep_2 + 204, SE025, 53 );
setTimeStretch( SE025, 0.7, 10, 1 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 212, 12, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 226;

------------------------------------------------------
-- ラスト(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
rast_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ラスト、敵より前(ef_005)
setEffMoveKey( spep_3 + 0, rast_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, rast_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rast_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, rast_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rast_f, 0 );
setEffRotateKey( spep_3 + 126, rast_f, 0 );
setEffAlphaKey( spep_3 + 0, rast_f, 255 );
setEffAlphaKey( spep_3 + 126, rast_f, 255 );

rast_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ラッシュ、敵より後ろ(ef_006)
setEffMoveKey( spep_3 + 0, rast_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 126, rast_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rast_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 126, rast_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rast_b, 0 );
setEffRotateKey( spep_3 + 126, rast_b, 0 );
setEffAlphaKey( spep_3 + 0, rast_b, 255 );
setEffAlphaKey( spep_3 + 126, rast_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 126, 1, 1 );
changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, 151.5, -200.7 , 0 );
setMoveKey( spep_3 + 1, 1, 132.2, -185.6 , 0 );
setMoveKey( spep_3 + 2, 1, 112.9, -170.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 93, -156 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 93, -156 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 71.9, -141.7 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 71.9, -141.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 48.9, -127.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 22.5, -114.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -9.9, -103.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -9.9, -103.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -38.8, -64.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 31.2, -142.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -36.8, -131.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 31.2, -72.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 0.2, -103.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -7.8, -103.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 0.2, -103.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -7.8, -103.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 0.2, -103.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -7.8, -103.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -7.8, -103.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 2.2, -111.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 0.2, -103.6 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -7.8, -111.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -0.4, -111.6 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -5.3, -101.3 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -0.4, -111.6 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -5.3, -101.3 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -3, -112.9 , 0 );
setMoveKey( spep_3 -3 + 129, 1, -3, -112.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 1, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 2, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 6, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 7, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 8, 1, 2.12, 2.12 );
setScaleKey( spep_3 -3 + 9, 1, 2.12, 2.12 );
setScaleKey( spep_3 -3 + 10, 1, 2.3, 2.3 );
setScaleKey( spep_3 -3 + 12, 1, 2.5, 2.5 );
setScaleKey( spep_3 -3 + 14, 1, 2.73, 2.73 );
setScaleKey( spep_3 -3 + 129, 1, 2.73, 2.73 );

setRotateKey( spep_3 + 0, 1, 7.8 );
setRotateKey( spep_3 + 1, 1, 7.7 );
setRotateKey( spep_3 + 2, 1, 7.3 );
setRotateKey( spep_3 -3 + 6, 1, 6.7 );
setRotateKey( spep_3 -3 + 7, 1, 6.7 );
setRotateKey( spep_3 -3 + 8, 1, 5.8 );
setRotateKey( spep_3 -3 + 9, 1, 5.8 );
setRotateKey( spep_3 -3 + 10, 1, 4.5 );
setRotateKey( spep_3 -3 + 12, 1, 2.7 );
setRotateKey( spep_3 -3 + 14, 1, 0 );
setRotateKey( spep_3 -3 + 129, 1, 0 );

-- ** 音 ** --
--大きく振りかぶって2
SE026 = playSe( spep_3 + 0, 1004 );
setSeVolumeByWorkId( spep_3 + 10, SE026, 62 );

--大きく振りかぶって3
SE027 = playSe( spep_3 + 4, 1003 );
setSeVolumeByWorkId( spep_3 + 14, SE027, 78 );

--パンチ3
SE028 = playSe( spep_3 + 10, 1000 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 126, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 16 );
endPhase( spep_3 + 116 );

end
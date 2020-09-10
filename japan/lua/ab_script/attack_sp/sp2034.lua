--1012310:カクンサ_ワイルドクロー(SSR)
--sp_effect_b1_00115

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

--エフェクト(味方)
SP_01=  155580  ;-- 導入、しゃがみ状態→ジャンプ
SP_02=  155581  ;-- 引っかき、高速攻撃；敵より前
SP_03=  155582  ;-- 引っかき、高速攻撃；敵より後ろ
SP_04=  155583  ;-- ラストシーン
SP_05 = 155520  ;--敵が画面衝突

--エフェクト(敵側)
SP_02r =  155667 ;-- 引っかき、高速攻撃；敵より前_敵側

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、しゃがみ状態→ジャンプ(228)
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --導入、しゃがみ状態→ジャンプ(ef_001)
setEffMoveKey(   spep_0 +   0, first_f, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 226, first_f, 0, 0 , 0 );
setEffScaleKey(  spep_0 +   0, first_f, 1.0, 1.0 );
setEffScaleKey(  spep_0 + 226, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 +   0, first_f, 0 );
setEffRotateKey( spep_0 + 226, first_f, 0 );
setEffAlphaKey(  spep_0 +   0, first_f, 255 );
setEffAlphaKey(  spep_0 + 226, first_f, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 16,  906, 70, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 16, shuchusen1, 70, 25 );
setEffMoveKey(   spep_0 + 16, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 86, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 16, shuchusen1, 1.2, 1.2 );
setEffScaleKey(  spep_0 + 86, shuchusen1, 1.2, 1.2 );
setEffRotateKey( spep_0 + 16, shuchusen1, 0 );
setEffRotateKey( spep_0 + 86, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 16, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 86, shuchusen1, 255 );

-- ** 顔カットイン ** --
--spep_x = spep_0 + 0;
speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 68, 10 );
setEffMoveKey(   spep_0 + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey(   spep_0 + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey(  spep_0 + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey(  spep_0 + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey(  spep_0 + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey(  spep_0 + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey(  spep_0 + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey(  spep_0 + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_0 + 16, ctgogo, 0 );
setEffRotateKey( spep_0 + 84, ctgogo, 0 );
setEffAlphaKey(  spep_0 + 16, ctgogo, 255 );
setEffAlphaKey(  spep_0 + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
playSe( spep_0 + 12, 1018 );

--カメラ引く
SE00 = playSe( spep_0 + 94, 8 );
setSeVolume( spep_0 + 124, 8, 100 );
setSeVolume( spep_0 + 125, 8, 92 );
setSeVolume( spep_0 + 129, 8, 81 );
setSeVolume( spep_0 + 133, 8, 69 );
setSeVolume( spep_0 + 137, 8, 58 );

--飛び上がる1
SE01 = playSe( spep_0 + 113, 1048 );
setSeVolume( spep_0 + 113, 1048, 89 );
--飛び上がる2
SE02 = playSe( spep_0 + 122, 1109 );
setSeVolume( spep_0 + 121, 1109, 100 );
setSeVolume( spep_0 + 122, 1109, 88 );
setSeVolume( spep_0 + 124, 1109, 76 );
setSeVolume( spep_0 + 126, 1109, 64 );
setSeVolume( spep_0 + 128, 1109, 52 );
setSeVolume( spep_0 + 121, 1109, 40 );
setSeVolume( spep_0 + 130, 1109, 28 );
setSeVolume( spep_0 + 132, 1109, 16 );
setSeVolume( spep_0 + 136, 1109, 4 );
setSeVolume( spep_0 + 138, 1109, 0 );
stopSe( spep_0 + 138, SE02, 0 );
--飛び上がる3
SE03 = playSe( spep_0 + 115, 1108 );
setSeVolume( spep_0 + 115, 1108, 138 );
--飛び上がる4
SE04 = playSe( spep_0 + 117, 1207 );
setSeVolume( spep_0 + 117, 1207, 41 );
--飛び上がる5
SE05 = playSe( spep_0 + 119, 44 );
setSeVolume( spep_0 + 137, 44, 92 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 226, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 116,  0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 139; --エンドフェイズのフレーム数を置き換える--

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE00, 0 );
stopSe( SP_dodge - 12, SE01, 0 );
stopSe( SP_dodge - 12, SE02, 0 );
stopSe( SP_dodge - 12, SE03, 0 );
stopSe( SP_dodge - 12, SE04, 0 );
stopSe( SP_dodge - 12, SE05, 0 );

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

-- ** 音 ** --
--カメラ引く
setSeVolume( spep_0 + 141, 8, 47 );
setSeVolume( spep_0 + 145, 8, 36 );
setSeVolume( spep_0 + 149, 8, 25 );
setSeVolume( spep_0 + 153, 8, 13 );
setSeVolume( spep_0 + 155, 8, 0 );
stopSe( spep_0 + 155, SE00, 0 );
--飛び上がる4
setSeVolume( spep_0 + 146, 1207, 41 );
setSeVolume( spep_0 + 149, 1207, 38 );
setSeVolume( spep_0 + 152, 1207, 35 );
setSeVolume( spep_0 + 155, 1207, 32 );
setSeVolume( spep_0 + 158, 1207, 29 );
setSeVolume( spep_0 + 161, 1207, 26 );
setSeVolume( spep_0 + 164, 1207, 23);
setSeVolume( spep_0 + 167, 1207, 20 );
setSeVolume( spep_0 + 170, 1207, 17 );
setSeVolume( spep_0 + 173, 1207, 14 );
setSeVolume( spep_0 + 175, 1207, 9 );
setSeVolume( spep_0 + 179, 1207, 4 );
setSeVolume( spep_0 + 181, 1207, 0 );
stopSe( spep_0 + 181, SE04, 0 );
--飛び上がる5
setSeVolume( spep_0 + 140, 44, 84 );
setSeVolume( spep_0 + 143, 44, 76 );
setSeVolume( spep_0 + 146, 44, 68 );
setSeVolume( spep_0 + 149, 44, 60 );
setSeVolume( spep_0 + 152, 44, 52 );
setSeVolume( spep_0 + 155, 44, 44 );
setSeVolume( spep_0 + 158, 44, 36 );
setSeVolume( spep_0 + 161, 44, 28 );
setSeVolume( spep_0 + 164, 44, 20 );
setSeVolume( spep_0 + 167, 44, 12 );
setSeVolume( spep_0 + 170, 44, 4 );
setSeVolume( spep_0 + 171, 44, 0 );
stopSe( spep_0 + 171, SE05, 0 );

--飛び込んでくる1
playSe( spep_0 + 157, 1072 );
setSeVolume( spep_0 + 157, 1072, 66 );
--飛び込んでくる2
SE06 = playSe( spep_0 + 157, 1117 );
setSeVolume( spep_0 + 196, 1117, 91 );
setSeVolume( spep_0 + 199, 1117, 82 );
setSeVolume( spep_0 + 202, 1117, 73 );
setSeVolume( spep_0 + 205, 1117, 64 );
setSeVolume( spep_0 + 208, 1117, 55 );
setSeVolume( spep_0 + 211, 1117, 46 );
setSeVolume( spep_0 + 214, 1117, 37 );
setSeVolume( spep_0 + 217, 1117, 28 );
setSeVolume( spep_0 + 220, 1117, 19 );
setSeVolume( spep_0 + 223, 1117, 10 );
setSeVolume( spep_0 + 226, 1117, 6 );
setSeVolume( spep_0 + 229, 1117, 0 );
stopSe( spep_0 + 229, SE06, 0 );
--飛び込んでくる3
SE07 = playSe( spep_0 + 163, 1116 );
setSeVolume( spep_0 + 163, 1116, 112 );
setSeVolume( spep_0 + 191, 1116, 109 );
setSeVolume( spep_0 + 192, 1116, 103 );
setSeVolume( spep_0 + 193, 1116, 90 );
setSeVolume( spep_0 + 194, 1116, 78 );
setSeVolume( spep_0 + 195, 1116, 64 );
setSeVolume( spep_0 + 196, 1116, 52 );
setSeVolume( spep_0 + 197, 1116, 39 );
setSeVolume( spep_0 + 198, 1116, 25 );
setSeVolume( spep_0 + 199, 1116, 13 );
setSeVolume( spep_0 + 191, 1116, 6 );
setSeVolume( spep_0 + 220, 1116, 0 );
stopSe( spep_0 + 220, SE07, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 214, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 226;

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
setEffMoveKey(   spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey(  spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey(  spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey(  spep_1 + 0, shuchusen, 255 );
setEffAlphaKey(  spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1+ 94;

------------------------------------------------------
-- 引っかき、高速攻撃(96)
------------------------------------------------------

-- ** エフェクト等 ** --
hikkaki_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --引っかき、高速攻撃；敵より前(ef_002)
setEffMoveKey(   spep_2 +  0, hikkaki_f, 0, 0, 0 );
setEffMoveKey(   spep_2 + 96, hikkaki_f, 0, 0, 0 );
setEffScaleKey(  spep_2 +  0, hikkaki_f, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 96, hikkaki_f, 1.0, 1.0 );
setEffRotateKey( spep_2 +  0, hikkaki_f, 0 );
setEffRotateKey( spep_2 + 96, hikkaki_f, 0 );
setEffAlphaKey(  spep_2 +  0, hikkaki_f, 255 );
setEffAlphaKey(  spep_2 + 96, hikkaki_f, 255 );

-- ** エフェクト等 ** --
hikkaki_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --引っかき、高速攻撃；敵より後ろ(ef_003)
setEffMoveKey(   spep_2 +  0, hikkaki_b, 0, 0, 0 );
setEffMoveKey(   spep_2 + 96, hikkaki_b, 0, 0, 0 );
setEffScaleKey(  spep_2 +  0, hikkaki_b, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 96, hikkaki_b, 1.0, 1.0 );
setEffRotateKey( spep_2 +  0, hikkaki_b, 0 );
setEffRotateKey( spep_2 + 96, hikkaki_b, 0 );
setEffAlphaKey(  spep_2 +  0, hikkaki_b, 255 );
setEffAlphaKey(  spep_2 + 96, hikkaki_b, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 5,  906, 56, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake(     spep_2 +  5, shuchusen2, 56, 25 );
setEffMoveKey(   spep_2 +  5, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 61, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_2 +  5, shuchusen2, 1.3, 1.3 );
setEffScaleKey(  spep_2 + 61, shuchusen2, 1.3, 1.3 );
setEffRotateKey( spep_2 +  5, shuchusen2, 0 );
setEffRotateKey( spep_2 + 61, shuchusen2, 0 );
setEffAlphaKey(  spep_2 +  5, shuchusen2, 255 );
setEffAlphaKey(  spep_2 + 61, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_2 + 69,  906, 25, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake(     spep_2 + 69, shuchusen3, 25, 25 );
setEffMoveKey(   spep_2 + 69, shuchusen3, 0, -100 , 0 );
setEffMoveKey(   spep_2 + 94, shuchusen3, 0, -100 , 0 );
setEffScaleKey(  spep_2 + 69, shuchusen3, 1.45, 1.8 );
setEffScaleKey(  spep_2 + 94, shuchusen3, 1.45, 1.8 );
setEffRotateKey( spep_2 + 69, shuchusen3, 0 );
setEffRotateKey( spep_2 + 94, shuchusen3, 0 );
setEffAlphaKey(  spep_2 + 69, shuchusen3, 255 );
setEffAlphaKey(  spep_2 + 94, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzan1 = entryEffectLife( spep_2 -3 + 8,  10010, 21, 0x100, -1, 0, -4.8, 72.6 ); --ザンッ
setEffMoveKey(   spep_2 -3 +  8, ctzan1, -4.8, 72.6 , 0 );
setEffMoveKey(   spep_2 -3 + 10, ctzan1, 25.1, 118.7 , 0 );
setEffMoveKey(   spep_2 -3 + 12, ctzan1, 55, 164.8 , 0 );
setEffMoveKey(   spep_2 -3 + 14, ctzan1, 56.5, 166.2 , 0 );
setEffMoveKey(   spep_2 -3 + 16, ctzan1, 57.9, 167.6 , 0 );
setEffMoveKey(   spep_2 -3 + 18, ctzan1, 59.3, 169 , 0 );
setEffMoveKey(   spep_2 -3 + 20, ctzan1, 60.8, 170.5 , 0 );
setEffMoveKey(   spep_2 -3 + 22, ctzan1, 62.2, 171.9 , 0 );
setEffMoveKey(   spep_2 -3 + 24, ctzan1, 63.6, 173.3 , 0 );
setEffMoveKey(   spep_2 -3 + 26, ctzan1, 65.1, 174.8 , 0 );
setEffMoveKey(   spep_2 -3 + 28, ctzan1, 77.8, 184.5 , 0 );
setEffMoveKey(   spep_2 -3 + 29, ctzan1, 77.8, 184.5 , 0 );
setEffScaleKey(  spep_2 -3 +  8, ctzan1, 0.74, 0.74 );
setEffScaleKey(  spep_2 -3 + 10, ctzan1, 1.27, 1.27 );
setEffScaleKey(  spep_2 -3 + 12, ctzan1, 1.8, 1.8 );
setEffScaleKey(  spep_2 -3 + 29, ctzan1, 1.8, 1.8 );
setEffRotateKey( spep_2 -3 +  8, ctzan1, -9.8 );
setEffRotateKey( spep_2 -3 + 10, ctzan1, -10 );
setEffRotateKey( spep_2 -3 + 29, ctzan1, -10 );
setEffAlphaKey(  spep_2 -3 +  8, ctzan1, 255 );
setEffAlphaKey(  spep_2 -3 + 29, ctzan1, 255 );

ctga1 = entryEffectLife( spep_2 -3 + 30,  10005, 9, 0x100, -1, 0, -20, 130.6 ); --ガッ
setEffMoveKey(   spep_2 -3 + 30, ctga1, -20, 130.6 , 0 );
setEffMoveKey(   spep_2 -3 + 32, ctga1, 0.5, 143.8 , 0 );
setEffMoveKey(   spep_2 -3 + 34, ctga1, 5.7, 140.1 , 0 );
setEffMoveKey(   spep_2 -3 + 36, ctga1, 26.2, 153.4 , 0 );
setEffMoveKey(   spep_2 -3 + 38, ctga1, 31.4, 149.7 , 0 );
setEffMoveKey(   spep_2 -3 + 39, ctga1, 31.4, 149.7 , 0 );
setEffScaleKey(  spep_2 -3 + 30, ctga1, 1.42, 1.42 );
setEffScaleKey(  spep_2 -3 + 39, ctga1, 1.42, 1.42 );
setEffRotateKey( spep_2 -3 + 30, ctga1, -21.2 );
setEffRotateKey( spep_2 -3 + 39, ctga1, -21.2 );
setEffAlphaKey(  spep_2 -3 + 30, ctga1, 255 );
setEffAlphaKey(  spep_2 -3 + 39, ctga1, 255 );

ctbaki1 = entryEffectLife( spep_2 -3 + 44,  10020, 9, 0x100, -1, 0, 155.6, 136 ); --バキッ
setEffMoveKey(   spep_2 -3 + 44, ctbaki1, 155.6, 136 , 0 );
setEffMoveKey(   spep_2 -3 + 46, ctbaki1, 169.8, 161 , 0 );
setEffMoveKey(   spep_2 -3 + 48, ctbaki1, 161.2, 163.2 , 0 );
setEffMoveKey(   spep_2 -3 + 50, ctbaki1, 175.3, 188.2 , 0 );
setEffMoveKey(   spep_2 -3 + 51, ctbaki1, 166.7, 190.4 , 0 );
setEffMoveKey(   spep_2 -3 + 53, ctbaki1, 166.7, 190.4 , 0 );
setEffScaleKey(  spep_2 -3 + 44, ctbaki1, 1.26, 1.26 );
setEffScaleKey(  spep_2 -3 + 53, ctbaki1, 1.26, 1.26 );
setEffRotateKey( spep_2 -3 + 44, ctbaki1, 0 );
setEffRotateKey( spep_2 -3 + 50, ctbaki1, 0 );
setEffRotateKey( spep_2 -3 + 53, ctbaki1, 0 );
setEffAlphaKey(  spep_2 -3 + 44, ctbaki1, 255 );
setEffAlphaKey(  spep_2 -3 + 53, ctbaki1, 255 );

ctga2 = entryEffectLife( spep_2 -3 + 56,  10005, 8, 0x100, -1, 0, -7.4, 209 ); --ガッ
setEffMoveKey(   spep_2 -3 + 56, ctga2, -7.4, 209 , 0 );
setEffMoveKey(   spep_2 -3 + 58, ctga2, -5.2, 195.6 , 0 );
setEffMoveKey(   spep_2 -3 + 60, ctga2, -25.6, 180.8 , 0 );
setEffMoveKey(   spep_2 -3 + 62, ctga2, -23.4, 167.4 , 0 );
setEffMoveKey(   spep_2 -3 + 64, ctga2, -43.7, 152.6 , 0 );
setEffScaleKey(  spep_2 -3 + 56, ctga2, 1.41, 1.41 );
setEffScaleKey(  spep_2 -3 + 64, ctga2, 1.41, 1.41 );
setEffRotateKey( spep_2 -3 + 56, ctga2, 23 );
setEffRotateKey( spep_2 -3 + 64, ctga2, 23 );
setEffAlphaKey(  spep_2 -3 + 56, ctga2, 255 );
setEffAlphaKey(  spep_2 -3 + 64, ctga2, 255 );

ctzan2 = entryEffectLife( spep_2 -3 + 72,  10010, 24, 0x100, -1, 0, -64.8, 32.6 ); --ザンッ
setEffMoveKey(   spep_2 -3 + 72, ctzan2, -64.8, 32.6 , 0 );
setEffMoveKey(   spep_2 -3 + 74, ctzan2, 0.1, 83.7 , 0 );
setEffMoveKey(   spep_2 -3 + 76, ctzan2, 65.1, 134.8 , 0 );
setEffMoveKey(   spep_2 -3 + 78, ctzan2, 66.1, 135.8 , 0 );
setEffMoveKey(   spep_2 -3 + 80, ctzan2, 67.1, 136.8 , 0 );
setEffMoveKey(   spep_2 -3 + 82, ctzan2, 68.1, 137.8 , 0 );
setEffMoveKey(   spep_2 -3 + 84, ctzan2, 69.1, 138.8 , 0 );
setEffMoveKey(   spep_2 -3 + 86, ctzan2, 70.1, 139.8 , 0 );
setEffMoveKey(   spep_2 -3 + 88, ctzan2, 71.1, 140.8 , 0 );
setEffMoveKey(   spep_2 -3 + 90, ctzan2, 72.1, 141.8 , 0 );
setEffMoveKey(   spep_2 -3 + 92, ctzan2, 73.1, 142.8 , 0 );
setEffMoveKey(   spep_2 -3 + 94, ctzan2, 74.1, 143.8 , 0 );
setEffMoveKey(   spep_2 -3 + 96, ctzan2, 75.1, 144.8 , 0 );
--setEffMoveKey(   spep_2 -3 + 98, ctzan2, 117.8, 164.5 , 0 );
setEffScaleKey(  spep_2 -3 + 72, ctzan2, 0.74, 0.74 );
setEffScaleKey(  spep_2 -3 + 74, ctzan2, 1.27, 1.27 );
setEffScaleKey(  spep_2 -3 + 76, ctzan2, 1.8, 1.8 );
--setEffScaleKey(  spep_2 -3 + 98, ctzan2, 1.8, 1.8 );
setEffScaleKey(  spep_2 -3 + 96, ctzan2, 1.8, 1.8 );
setEffRotateKey( spep_2 -3 + 72, ctzan2, -9.8 );
setEffRotateKey( spep_2 -3 + 74, ctzan2, -10 );
--setEffRotateKey( spep_2 -3 + 98, ctzan2, -10 );
setEffRotateKey( spep_2 -3 + 96, ctzan2, -10 );
setEffAlphaKey(  spep_2 -3 + 72, ctzan2, 255 );
--setEffAlphaKey(  spep_2 -3 + 98, ctzan2, 255 );
setEffAlphaKey(  spep_2 -3 + 96, ctzan2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 84, 1, 0 );
changeAnime(  spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 10, 1, 108 );
changeAnime( spep_2 -3 + 30, 1, 106 );
changeAnime( spep_2 -3 + 44, 1, 108 );
changeAnime( spep_2 -3 + 56, 1, 106 );
changeAnime( spep_2 -3 + 72, 1, 108 );

setMoveKey( spep_2    + 0, 1, 69.4, -249 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 69.4, -249 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 80.1, -241.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 94.7, -231.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 79.2, -251.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 100.5, -231.2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 91.8, -241.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 103.1, -231.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 94.4, -241.2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 95.7, -241.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 97, -241.2 , 0 );
setMoveKey( spep_2 -3 + 29, 1, 98.3, -241.2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 51.5, -228 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 54.3, -222.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 57.2, -216.1 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 59.4, -215.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 61.5, -214 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 63.7, -213 , 0 );
setMoveKey( spep_2 -3 + 43, 1, 65.8, -211.9 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 94.1, -241.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 101.5, -229.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 108.8, -217.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 108.8, -211.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 108.8, -205.3 , 0 );
setMoveKey( spep_2 -3 + 55, 1, 108.8, -199.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 72.8, -200.8 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 75.2, -206.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 77.6, -212.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 79.9, -218 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 82.3, -223.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 84.6, -229.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 87, -235.3 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 89.3, -241 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 127.9, -245.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 208.4, -242.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 318.8, -208.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 419.3, -184.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 519.8, -161.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 620.2, -137.4 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 720.7, -113.6 , 0 );

setScaleKey( spep_2    + 0, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 9, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 10, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 29, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 30, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 43, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 44, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 55, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 56, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 71, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 72, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 84, 1, 1.15, 1.15 );

setRotateKey( spep_2   + 0, 1, 0 );
setRotateKey( spep_2 -3 + 9, 1, 0 );
setRotateKey( spep_2 -3 + 10, 1, -4.8 );
setRotateKey( spep_2 -3 + 29, 1, -4.8 );
setRotateKey( spep_2 -3 + 30, 1, -41.9 );
setRotateKey( spep_2 -3 + 43, 1, -41.9 );
setRotateKey( spep_2 -3 + 44, 1, -4.8 );
setRotateKey( spep_2 -3 + 55, 1, -4.8 );
setRotateKey( spep_2 -3 + 56, 1, -56.1 );
setRotateKey( spep_2 -3 + 58, 1, -56.6 );
setRotateKey( spep_2 -3 + 60, 1, -57.1 );
setRotateKey( spep_2 -3 + 62, 1, -57.6 );
setRotateKey( spep_2 -3 + 64, 1, -58.1 );
setRotateKey( spep_2 -3 + 66, 1, -58.6 );
setRotateKey( spep_2 -3 + 68, 1, -59.1 );
setRotateKey( spep_2 -3 + 71, 1, -59.6 );
setRotateKey( spep_2 -3 + 72, 1, -4.8 );
setRotateKey( spep_2 -3 + 74, 1, -3.5 );
setRotateKey( spep_2 -3 + 76, 1, -2.2 );
setRotateKey( spep_2 -3 + 78, 1, -0.9 );
setRotateKey( spep_2 -3 + 80, 1, 0.4 );
setRotateKey( spep_2 -3 + 82, 1, 1.7 );
setRotateKey( spep_2 -3 + 84, 1, 2.9 );

-- ** 音 ** --
--連撃1
playSe( spep_2 + 2, 1189 );
--連撃2
playSe( spep_2 + 8, 1012 );
--連撃3
playSe( spep_2 + 10, 1000 );
setSeVolume( spep_2 + 10, 1000, 56 );
--連撃4
playSe( spep_2 + 10, 1032 );
setSeVolume( spep_2 + 10, 1032, 76 );
--連撃5
playSe( spep_2 + 33, 1031 );
setSeVolume( spep_2 + 33, 1031, 75 );
--連撃6
playSe( spep_2 + 35, 1012 );
setSeVolume( spep_2 + 35, 1012, 63 );
--連撃7
SE08 = playSe( spep_2 + 35, 1169 );
setSeVolume( spep_2 + 35, 1169, 83 );
setSeVolume( spep_2 + 40, 1169, 73 );
setSeVolume( spep_2 + 42, 1169, 62 );
setSeVolume( spep_2 + 44, 1169, 51 );
setSeVolume( spep_2 + 46, 1169, 39 );
setSeVolume( spep_2 + 48, 1169, 28 );
setSeVolume( spep_2 + 50, 1169, 16 );
setSeVolume( spep_2 + 52, 1169, 8 );
setSeVolume( spep_2 + 54, 1169, 0 );
stopSe( spep_2 + 54, SE08, 0 );
--連撃8
playSe( spep_2 + 51, 1000 );
--連撃9
playSe( spep_2 + 51, 1031 );
--連撃10
playSe( spep_2 + 53, 1013 );
--連撃11
playSe( spep_2 + 63, 1000 );
--連撃12
playSe( spep_2 + 63, 1001 );
setSeVolume( spep_2 + 63, 1001, 59 );
--連撃13
playSe( spep_2 + 63, 1031 );
--連撃14
SE09 = playSe( spep_2 + 77, 1009 );
setSeVolume( spep_2 +  89, 1009, 100 );
setSeVolume( spep_2 +  91, 1009, 94 );
setSeVolume( spep_2 +  92, 1009, 90 );
setSeVolume( spep_2 +  93, 1009, 80 );
setSeVolume( spep_2 +  94, 1009, 70 );
setSeVolume( spep_2 +  95, 1009, 60 );
setSeVolume( spep_2 +  96, 1009, 50 );
setSeVolume( spep_2 +  97, 1009, 40 );
setSeVolume( spep_2 +  98, 1009, 30 );
setSeVolume( spep_2 +  99, 1009, 20 );
setSeVolume( spep_2 + 100, 1009, 10 );
setSeVolume( spep_2 + 102, 1009, 6 );
setSeVolume( spep_2 + 104, 1009, 0 );
stopSe( spep_2 + 104, SE09, 0 );
--連撃15
playSe( spep_2 + 77, 1032 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 312, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 84, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2+ 96;

------------------------------------------------------
-- ラストシーン(100F)
------------------------------------------------------

-- ** 岩場背景 ** --
haikei = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --岩場背景
setEffMoveKey( spep_3 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, haikei, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, haikei, 1, 1 );
setEffScaleKey( spep_3 + 100, haikei, 1, 1 );
setEffRotateKey( spep_3 + 0, haikei, 0 );
setEffRotateKey( spep_3 + 100, haikei, 0 );
setEffAlphaKey( spep_3 + 0, haikei, 255 );
setEffAlphaKey( spep_3 + 100, haikei, 255 );

finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 100, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 100, finish_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 音 ** --
--敵が吹っ飛ぶ
stopSe( spep_3 + 16, SE5, 0 );
stopSe( spep_3 + 16, SE6, 0 );

--ガッ
playSe( spep_3 + 8, 1054 );
setSeVolume( spep_3 + 8, 1054, 126 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
endPhase( spep_3 + 98 );

else 

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、しゃがみ状態→ジャンプ(228)
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --導入、しゃがみ状態→ジャンプ(ef_001)
setEffMoveKey(   spep_0 +   0, first_f, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 226, first_f, 0, 0 , 0 );
setEffScaleKey(  spep_0 +   0, first_f, -1.0, 1.0 );
setEffScaleKey(  spep_0 + 226, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 +   0, first_f, 0 );
setEffRotateKey( spep_0 + 226, first_f, 0 );
setEffAlphaKey(  spep_0 +   0, first_f, 255 );
setEffAlphaKey(  spep_0 + 226, first_f, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 16,  906, 70, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 16, shuchusen1, 70, 25 );
setEffMoveKey(   spep_0 + 16, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 86, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 16, shuchusen1, 1.2, 1.2 );
setEffScaleKey(  spep_0 + 86, shuchusen1, 1.2, 1.2 );
setEffRotateKey( spep_0 + 16, shuchusen1, 0 );
setEffRotateKey( spep_0 + 86, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 16, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 86, shuchusen1, 255 );

-- ** 顔カットイン ** --
--spep_x = spep_0 + 0;
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 68, 10 );
setEffMoveKey(   spep_0 + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey(   spep_0 + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey(  spep_0 + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey(  spep_0 + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey(  spep_0 + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey(  spep_0 + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey(  spep_0 + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey(  spep_0 + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_0 + 16, ctgogo, 0 );
setEffRotateKey( spep_0 + 84, ctgogo, 0 );
setEffAlphaKey(  spep_0 + 16, ctgogo, 255 );
setEffAlphaKey(  spep_0 + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
playSe( spep_0 + 12, 1018 );

--カメラ引く
SE00 = playSe( spep_0 + 94, 8 );
setSeVolume( spep_0 + 124, 8, 100 );
setSeVolume( spep_0 + 125, 8, 92 );
setSeVolume( spep_0 + 129, 8, 81 );
setSeVolume( spep_0 + 133, 8, 69 );
setSeVolume( spep_0 + 137, 8, 58 );

--飛び上がる1
SE01 = playSe( spep_0 + 113, 1048 );
setSeVolume( spep_0 + 113, 1048, 89 );
--飛び上がる2
SE02 = playSe( spep_0 + 122, 1109 );
setSeVolume( spep_0 + 121, 1109, 100 );
setSeVolume( spep_0 + 122, 1109, 88 );
setSeVolume( spep_0 + 124, 1109, 76 );
setSeVolume( spep_0 + 126, 1109, 64 );
setSeVolume( spep_0 + 128, 1109, 52 );
setSeVolume( spep_0 + 121, 1109, 40 );
setSeVolume( spep_0 + 130, 1109, 28 );
setSeVolume( spep_0 + 132, 1109, 16 );
setSeVolume( spep_0 + 136, 1109, 4 );
setSeVolume( spep_0 + 138, 1109, 0 );
stopSe( spep_0 + 138, SE02, 0 );
--飛び上がる3
SE03 = playSe( spep_0 + 115, 1108 );
setSeVolume( spep_0 + 115, 1108, 138 );
--飛び上がる4
SE04 = playSe( spep_0 + 117, 1207 );
setSeVolume( spep_0 + 117, 1207, 41 );
--飛び上がる5
SE05 = playSe( spep_0 + 119, 44 );
setSeVolume( spep_0 + 137, 44, 92 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 228, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 116,  0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 139; --エンドフェイズのフレーム数を置き換える--

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE00, 0 );
stopSe( SP_dodge - 12, SE01, 0 );
stopSe( SP_dodge - 12, SE02, 0 );
stopSe( SP_dodge - 12, SE03, 0 );
stopSe( SP_dodge - 12, SE04, 0 );
stopSe( SP_dodge - 12, SE05, 0 );

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

-- ** 音 ** --
--カメラ引く
setSeVolume( spep_0 + 141, 8, 47 );
setSeVolume( spep_0 + 145, 8, 36 );
setSeVolume( spep_0 + 149, 8, 25 );
setSeVolume( spep_0 + 153, 8, 13 );
setSeVolume( spep_0 + 155, 8, 0 );
stopSe( spep_0 + 155, SE00, 0 );
--飛び上がる4
setSeVolume( spep_0 + 146, 1207, 41 );
setSeVolume( spep_0 + 149, 1207, 38 );
setSeVolume( spep_0 + 152, 1207, 35 );
setSeVolume( spep_0 + 155, 1207, 32 );
setSeVolume( spep_0 + 158, 1207, 29 );
setSeVolume( spep_0 + 161, 1207, 26 );
setSeVolume( spep_0 + 164, 1207, 23);
setSeVolume( spep_0 + 167, 1207, 20 );
setSeVolume( spep_0 + 170, 1207, 17 );
setSeVolume( spep_0 + 173, 1207, 14 );
setSeVolume( spep_0 + 175, 1207, 9 );
setSeVolume( spep_0 + 179, 1207, 4 );
setSeVolume( spep_0 + 181, 1207, 0 );
stopSe( spep_0 + 181, SE04, 0 );
--飛び上がる5
setSeVolume( spep_0 + 140, 44, 84 );
setSeVolume( spep_0 + 143, 44, 76 );
setSeVolume( spep_0 + 146, 44, 68 );
setSeVolume( spep_0 + 149, 44, 60 );
setSeVolume( spep_0 + 152, 44, 52 );
setSeVolume( spep_0 + 155, 44, 44 );
setSeVolume( spep_0 + 158, 44, 36 );
setSeVolume( spep_0 + 161, 44, 28 );
setSeVolume( spep_0 + 164, 44, 20 );
setSeVolume( spep_0 + 167, 44, 12 );
setSeVolume( spep_0 + 170, 44, 4 );
setSeVolume( spep_0 + 171, 44, 0 );
stopSe( spep_0 + 171, SE05, 0 );

--飛び込んでくる1
playSe( spep_0 + 157, 1072 );
setSeVolume( spep_0 + 157, 1072, 66 );
--飛び込んでくる2
SE06 = playSe( spep_0 + 157, 1117 );
setSeVolume( spep_0 + 196, 1117, 91 );
setSeVolume( spep_0 + 199, 1117, 82 );
setSeVolume( spep_0 + 202, 1117, 73 );
setSeVolume( spep_0 + 205, 1117, 64 );
setSeVolume( spep_0 + 208, 1117, 55 );
setSeVolume( spep_0 + 211, 1117, 46 );
setSeVolume( spep_0 + 214, 1117, 37 );
setSeVolume( spep_0 + 217, 1117, 28 );
setSeVolume( spep_0 + 220, 1117, 19 );
setSeVolume( spep_0 + 223, 1117, 10 );
setSeVolume( spep_0 + 226, 1117, 6 );
setSeVolume( spep_0 + 229, 1117, 0 );
stopSe( spep_0 + 229, SE06, 0 );
--飛び込んでくる3
SE07 = playSe( spep_0 + 163, 1116 );
setSeVolume( spep_0 + 163, 1116, 112 );
setSeVolume( spep_0 + 191, 1116, 109 );
setSeVolume( spep_0 + 192, 1116, 103 );
setSeVolume( spep_0 + 193, 1116, 90 );
setSeVolume( spep_0 + 194, 1116, 78 );
setSeVolume( spep_0 + 195, 1116, 64 );
setSeVolume( spep_0 + 196, 1116, 52 );
setSeVolume( spep_0 + 197, 1116, 39 );
setSeVolume( spep_0 + 198, 1116, 25 );
setSeVolume( spep_0 + 199, 1116, 13 );
setSeVolume( spep_0 + 191, 1116, 6 );
setSeVolume( spep_0 + 220, 1116, 0 );
stopSe( spep_0 + 220, SE07, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 214, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 226;

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
setEffMoveKey(   spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey(  spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey(  spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey(  spep_1 + 0, shuchusen, 255 );
setEffAlphaKey(  spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1+ 94;

------------------------------------------------------
-- 引っかき、高速攻撃(96)
------------------------------------------------------

-- ** エフェクト等 ** --
hikkaki_f = entryEffectLife( spep_2 + 0, SP_02r, 95, 0x100, -1, 0, 0, 0 ); --引っかき、高速攻撃；敵より前(ef_002)
setEffMoveKey(   spep_2 +  0, hikkaki_f, 0, 0, 0 );
setEffMoveKey(   spep_2 + 95, hikkaki_f, 0, 0, 0 );
setEffScaleKey(  spep_2 +  0, hikkaki_f, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 95, hikkaki_f, 1.0, 1.0 );
setEffRotateKey( spep_2 +  0, hikkaki_f, 0 );
setEffRotateKey( spep_2 + 95, hikkaki_f, 0 );
setEffAlphaKey(  spep_2 +  0, hikkaki_f, 255 );
setEffAlphaKey(  spep_2 + 95, hikkaki_f, 255 );

-- ** エフェクト等 ** --
hikkaki_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --引っかき、高速攻撃；敵より後ろ(ef_003)
setEffMoveKey(   spep_2 +  0, hikkaki_b, 0, 0, 0 );
setEffMoveKey(   spep_2 + 96, hikkaki_b, 0, 0, 0 );
setEffScaleKey(  spep_2 +  0, hikkaki_b, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 96, hikkaki_b, 1.0, 1.0 );
setEffRotateKey( spep_2 +  0, hikkaki_b, 0 );
setEffRotateKey( spep_2 + 96, hikkaki_b, 0 );
setEffAlphaKey(  spep_2 +  0, hikkaki_b, 255 );
setEffAlphaKey(  spep_2 + 96, hikkaki_b, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 5,  906, 56, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake(     spep_2 +  5, shuchusen2, 56, 25 );
setEffMoveKey(   spep_2 +  5, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 61, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_2 +  5, shuchusen2, 1.3, 1.3 );
setEffScaleKey(  spep_2 + 61, shuchusen2, 1.3, 1.3 );
setEffRotateKey( spep_2 +  5, shuchusen2, 0 );
setEffRotateKey( spep_2 + 61, shuchusen2, 0 );
setEffAlphaKey(  spep_2 +  5, shuchusen2, 255 );
setEffAlphaKey(  spep_2 + 61, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_2 + 69,  906, 25, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake(     spep_2 + 69, shuchusen3, 25, 25 );
setEffMoveKey(   spep_2 + 69, shuchusen3, 0, -100 , 0 );
setEffMoveKey(   spep_2 + 94, shuchusen3, 0, -100 , 0 );
setEffScaleKey(  spep_2 + 69, shuchusen3, 1.45, 1.8 );
setEffScaleKey(  spep_2 + 94, shuchusen3, 1.45, 1.8 );
setEffRotateKey( spep_2 + 69, shuchusen3, 0 );
setEffRotateKey( spep_2 + 94, shuchusen3, 0 );
setEffAlphaKey(  spep_2 + 69, shuchusen3, 255 );
setEffAlphaKey(  spep_2 + 94, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzan1 = entryEffectLife( spep_2 -3 + 8,  10010, 21, 0x100, -1, 0, -4.8, 72.6 ); --ザンッ
setEffMoveKey(   spep_2 -3 +  8, ctzan1, -4.8, 72.6 , 0 );
setEffMoveKey(   spep_2 -3 + 10, ctzan1, 25.1, 118.7 , 0 );
setEffMoveKey(   spep_2 -3 + 12, ctzan1, 55, 164.8 , 0 );
setEffMoveKey(   spep_2 -3 + 14, ctzan1, 56.5, 166.2 , 0 );
setEffMoveKey(   spep_2 -3 + 16, ctzan1, 57.9, 167.6 , 0 );
setEffMoveKey(   spep_2 -3 + 18, ctzan1, 59.3, 169 , 0 );
setEffMoveKey(   spep_2 -3 + 20, ctzan1, 60.8, 170.5 , 0 );
setEffMoveKey(   spep_2 -3 + 22, ctzan1, 62.2, 171.9 , 0 );
setEffMoveKey(   spep_2 -3 + 24, ctzan1, 63.6, 173.3 , 0 );
setEffMoveKey(   spep_2 -3 + 26, ctzan1, 65.1, 174.8 , 0 );
setEffMoveKey(   spep_2 -3 + 28, ctzan1, 77.8, 184.5 , 0 );
setEffMoveKey(   spep_2 -3 + 29, ctzan1, 77.8, 184.5 , 0 );
setEffScaleKey(  spep_2 -3 +  8, ctzan1, 0.74, 0.74 );
setEffScaleKey(  spep_2 -3 + 10, ctzan1, 1.27, 1.27 );
setEffScaleKey(  spep_2 -3 + 12, ctzan1, 1.8, 1.8 );
setEffScaleKey(  spep_2 -3 + 29, ctzan1, 1.8, 1.8 );
setEffRotateKey( spep_2 -3 +  8, ctzan1, -9.8 );
setEffRotateKey( spep_2 -3 + 10, ctzan1, -10 );
setEffRotateKey( spep_2 -3 + 29, ctzan1, -10 );
setEffAlphaKey(  spep_2 -3 +  8, ctzan1, 255 );
setEffAlphaKey(  spep_2 -3 + 29, ctzan1, 255 );

ctga1 = entryEffectLife( spep_2 -3 + 30,  10005, 9, 0x100, -1, 0, -20, 130.6 ); --ガッ
setEffMoveKey(   spep_2 -3 + 30, ctga1, -20, 130.6 , 0 );
setEffMoveKey(   spep_2 -3 + 32, ctga1, 0.5, 143.8 , 0 );
setEffMoveKey(   spep_2 -3 + 34, ctga1, 5.7, 140.1 , 0 );
setEffMoveKey(   spep_2 -3 + 36, ctga1, 26.2, 153.4 , 0 );
setEffMoveKey(   spep_2 -3 + 38, ctga1, 31.4, 149.7 , 0 );
setEffMoveKey(   spep_2 -3 + 39, ctga1, 31.4, 149.7 , 0 );
setEffScaleKey(  spep_2 -3 + 30, ctga1, 1.42, 1.42 );
setEffScaleKey(  spep_2 -3 + 39, ctga1, 1.42, 1.42 );
setEffRotateKey( spep_2 -3 + 30, ctga1, -21.2 );
setEffRotateKey( spep_2 -3 + 39, ctga1, -21.2 );
setEffAlphaKey(  spep_2 -3 + 30, ctga1, 255 );
setEffAlphaKey(  spep_2 -3 + 39, ctga1, 255 );

ctbaki1 = entryEffectLife( spep_2 -3 + 44,  10020, 9, 0x100, -1, 0, 155.6, 136 ); --バキッ
setEffMoveKey(   spep_2 -3 + 44, ctbaki1, 155.6, 136 , 0 );
setEffMoveKey(   spep_2 -3 + 46, ctbaki1, 169.8, 161 , 0 );
setEffMoveKey(   spep_2 -3 + 48, ctbaki1, 161.2, 163.2 , 0 );
setEffMoveKey(   spep_2 -3 + 50, ctbaki1, 175.3, 188.2 , 0 );
setEffMoveKey(   spep_2 -3 + 51, ctbaki1, 166.7, 190.4 , 0 );
setEffMoveKey(   spep_2 -3 + 53, ctbaki1, 166.7, 190.4 , 0 );
setEffScaleKey(  spep_2 -3 + 44, ctbaki1, 1.26, 1.26 );
setEffScaleKey(  spep_2 -3 + 53, ctbaki1, 1.26, 1.26 );
setEffRotateKey( spep_2 -3 + 44, ctbaki1, 0 );
setEffRotateKey( spep_2 -3 + 50, ctbaki1, 0 );
setEffRotateKey( spep_2 -3 + 53, ctbaki1, 0 );
setEffAlphaKey(  spep_2 -3 + 44, ctbaki1, 255 );
setEffAlphaKey(  spep_2 -3 + 53, ctbaki1, 255 );

ctga2 = entryEffectLife( spep_2 -3 + 56,  10005, 8, 0x100, -1, 0, -7.4, 209 ); --ガッ
setEffMoveKey(   spep_2 -3 + 56, ctga2, -7.4, 209 , 0 );
setEffMoveKey(   spep_2 -3 + 58, ctga2, -5.2, 195.6 , 0 );
setEffMoveKey(   spep_2 -3 + 60, ctga2, -25.6, 180.8 , 0 );
setEffMoveKey(   spep_2 -3 + 62, ctga2, -23.4, 167.4 , 0 );
setEffMoveKey(   spep_2 -3 + 64, ctga2, -43.7, 152.6 , 0 );
setEffScaleKey(  spep_2 -3 + 56, ctga2, 1.41, 1.41 );
setEffScaleKey(  spep_2 -3 + 64, ctga2, 1.41, 1.41 );
setEffRotateKey( spep_2 -3 + 56, ctga2, 23 );
setEffRotateKey( spep_2 -3 + 64, ctga2, 23 );
setEffAlphaKey(  spep_2 -3 + 56, ctga2, 255 );
setEffAlphaKey(  spep_2 -3 + 64, ctga2, 255 );

ctzan2 = entryEffectLife( spep_2 -3 + 72,  10010, 24, 0x100, -1, 0, -64.8, 32.6 ); --ザンッ
setEffMoveKey(   spep_2 -3 + 72, ctzan2, -64.8, 32.6 , 0 );
setEffMoveKey(   spep_2 -3 + 74, ctzan2, 0.1, 83.7 , 0 );
setEffMoveKey(   spep_2 -3 + 76, ctzan2, 65.1, 134.8 , 0 );
setEffMoveKey(   spep_2 -3 + 78, ctzan2, 66.1, 135.8 , 0 );
setEffMoveKey(   spep_2 -3 + 80, ctzan2, 67.1, 136.8 , 0 );
setEffMoveKey(   spep_2 -3 + 82, ctzan2, 68.1, 137.8 , 0 );
setEffMoveKey(   spep_2 -3 + 84, ctzan2, 69.1, 138.8 , 0 );
setEffMoveKey(   spep_2 -3 + 86, ctzan2, 70.1, 139.8 , 0 );
setEffMoveKey(   spep_2 -3 + 88, ctzan2, 71.1, 140.8 , 0 );
setEffMoveKey(   spep_2 -3 + 90, ctzan2, 72.1, 141.8 , 0 );
setEffMoveKey(   spep_2 -3 + 92, ctzan2, 73.1, 142.8 , 0 );
setEffMoveKey(   spep_2 -3 + 94, ctzan2, 74.1, 143.8 , 0 );
setEffMoveKey(   spep_2 -3 + 96, ctzan2, 75.1, 144.8 , 0 );
--setEffMoveKey(   spep_2 -3 + 98, ctzan2, 117.8, 164.5 , 0 );
setEffScaleKey(  spep_2 -3 + 72, ctzan2, 0.74, 0.74 );
setEffScaleKey(  spep_2 -3 + 74, ctzan2, 1.27, 1.27 );
setEffScaleKey(  spep_2 -3 + 76, ctzan2, 1.8, 1.8 );
--setEffScaleKey(  spep_2 -3 + 98, ctzan2, 1.8, 1.8 );
setEffScaleKey(  spep_2 -3 + 96, ctzan2, 1.8, 1.8 );
setEffRotateKey( spep_2 -3 + 72, ctzan2, -9.8 );
setEffRotateKey( spep_2 -3 + 74, ctzan2, -10 );
--setEffRotateKey( spep_2 -3 + 98, ctzan2, -10 );
setEffRotateKey( spep_2 -3 + 96, ctzan2, -10 );
setEffAlphaKey(  spep_2 -3 + 72, ctzan2, 255 );
--setEffAlphaKey(  spep_2 -3 + 98, ctzan2, 255 );
setEffAlphaKey(  spep_2 -3 + 96, ctzan2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 84, 1, 0 );
changeAnime(  spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 10, 1, 108 );
changeAnime( spep_2 -3 + 30, 1, 106 );
changeAnime( spep_2 -3 + 44, 1, 108 );
changeAnime( spep_2 -3 + 56, 1, 106 );
changeAnime( spep_2 -3 + 72, 1, 108 );

setMoveKey( spep_2    + 0, 1, 69.4, -249 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 69.4, -249 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 80.1, -241.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 94.7, -231.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 79.2, -251.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 100.5, -231.2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 91.8, -241.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 103.1, -231.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 94.4, -241.2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 95.7, -241.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 97, -241.2 , 0 );
setMoveKey( spep_2 -3 + 29, 1, 98.3, -241.2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 51.5, -228 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 54.3, -222.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 57.2, -216.1 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 59.4, -215.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 61.5, -214 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 63.7, -213 , 0 );
setMoveKey( spep_2 -3 + 43, 1, 65.8, -211.9 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 94.1, -241.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 101.5, -229.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 108.8, -217.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 108.8, -211.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 108.8, -205.3 , 0 );
setMoveKey( spep_2 -3 + 55, 1, 108.8, -199.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 72.8, -200.8 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 75.2, -206.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 77.6, -212.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 79.9, -218 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 82.3, -223.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 84.6, -229.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 87, -235.3 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 89.3, -241 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 127.9, -245.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 208.4, -242.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 318.8, -208.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 419.3, -184.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 519.8, -161.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 620.2, -137.4 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 720.7, -113.6 , 0 );

setScaleKey( spep_2    + 0, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 9, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 10, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 29, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 30, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 43, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 44, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 55, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 56, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 71, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 72, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 84, 1, 1.15, 1.15 );

setRotateKey( spep_2   + 0, 1, 0 );
setRotateKey( spep_2 -3 + 9, 1, 0 );
setRotateKey( spep_2 -3 + 10, 1, -4.8 );
setRotateKey( spep_2 -3 + 29, 1, -4.8 );
setRotateKey( spep_2 -3 + 30, 1, -41.9 );
setRotateKey( spep_2 -3 + 43, 1, -41.9 );
setRotateKey( spep_2 -3 + 44, 1, -4.8 );
setRotateKey( spep_2 -3 + 55, 1, -4.8 );
setRotateKey( spep_2 -3 + 56, 1, -56.1 );
setRotateKey( spep_2 -3 + 58, 1, -56.6 );
setRotateKey( spep_2 -3 + 60, 1, -57.1 );
setRotateKey( spep_2 -3 + 62, 1, -57.6 );
setRotateKey( spep_2 -3 + 64, 1, -58.1 );
setRotateKey( spep_2 -3 + 66, 1, -58.6 );
setRotateKey( spep_2 -3 + 68, 1, -59.1 );
setRotateKey( spep_2 -3 + 71, 1, -59.6 );
setRotateKey( spep_2 -3 + 72, 1, -4.8 );
setRotateKey( spep_2 -3 + 74, 1, -3.5 );
setRotateKey( spep_2 -3 + 76, 1, -2.2 );
setRotateKey( spep_2 -3 + 78, 1, -0.9 );
setRotateKey( spep_2 -3 + 80, 1, 0.4 );
setRotateKey( spep_2 -3 + 82, 1, 1.7 );
setRotateKey( spep_2 -3 + 84, 1, 2.9 );

-- ** 音 ** --
--連撃1
playSe( spep_2 + 2, 1189 );
--連撃2
playSe( spep_2 + 8, 1012 );
--連撃3
playSe( spep_2 + 10, 1000 );
setSeVolume( spep_2 + 10, 1000, 56 );
--連撃4
playSe( spep_2 + 10, 1032 );
setSeVolume( spep_2 + 10, 1032, 76 );
--連撃5
playSe( spep_2 + 33, 1031 );
setSeVolume( spep_2 + 33, 1031, 75 );
--連撃6
playSe( spep_2 + 35, 1012 );
setSeVolume( spep_2 + 35, 1012, 63 );
--連撃7
SE08 = playSe( spep_2 + 35, 1169 );
setSeVolume( spep_2 + 35, 1169, 83 );
setSeVolume( spep_2 + 40, 1169, 73 );
setSeVolume( spep_2 + 42, 1169, 62 );
setSeVolume( spep_2 + 44, 1169, 51 );
setSeVolume( spep_2 + 46, 1169, 39 );
setSeVolume( spep_2 + 48, 1169, 28 );
setSeVolume( spep_2 + 50, 1169, 16 );
setSeVolume( spep_2 + 52, 1169, 8 );
setSeVolume( spep_2 + 54, 1169, 0 );
stopSe( spep_2 + 54, SE08, 0 );
--連撃8
playSe( spep_2 + 51, 1000 );
--連撃9
playSe( spep_2 + 51, 1031 );
--連撃10
playSe( spep_2 + 53, 1013 );
--連撃11
playSe( spep_2 + 63, 1000 );
--連撃12
playSe( spep_2 + 63, 1001 );
setSeVolume( spep_2 + 63, 1001, 59 );
--連撃13
playSe( spep_2 + 63, 1031 );
--連撃14
SE09 = playSe( spep_2 + 77, 1009 );
setSeVolume( spep_2 +  89, 1009, 100 );
setSeVolume( spep_2 +  91, 1009, 94 );
setSeVolume( spep_2 +  92, 1009, 90 );
setSeVolume( spep_2 +  93, 1009, 80 );
setSeVolume( spep_2 +  94, 1009, 70 );
setSeVolume( spep_2 +  95, 1009, 60 );
setSeVolume( spep_2 +  96, 1009, 50 );
setSeVolume( spep_2 +  97, 1009, 40 );
setSeVolume( spep_2 +  98, 1009, 30 );
setSeVolume( spep_2 +  99, 1009, 20 );
setSeVolume( spep_2 + 100, 1009, 10 );
setSeVolume( spep_2 + 102, 1009, 6 );
setSeVolume( spep_2 + 104, 1009, 0 );
stopSe( spep_2 + 104, SE09, 0 );
--連撃15
playSe( spep_2 + 77, 1032 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 312, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 84, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2+ 96;

------------------------------------------------------
-- ラストシーン(100F)
------------------------------------------------------

-- ** 岩場背景 ** --
haikei = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --岩場背景
setEffMoveKey( spep_3 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, haikei, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, haikei, 1, 1 );
setEffScaleKey( spep_3 + 100, haikei, 1, 1 );
setEffRotateKey( spep_3 + 0, haikei, 0 );
setEffRotateKey( spep_3 + 100, haikei, 0 );
setEffAlphaKey( spep_3 + 0, haikei, 255 );
setEffAlphaKey( spep_3 + 100, haikei, 255 );

finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 100, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 100, finish_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 音 ** --
--敵が吹っ飛ぶ
stopSe( spep_3 + 16, SE5, 0 );
stopSe( spep_3 + 16, SE6, 0 );

--ガッ
playSe( spep_3 + 8, 1054 );
setSeVolume( spep_3 + 8, 1054, 126 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
endPhase( spep_3 + 98 );
end
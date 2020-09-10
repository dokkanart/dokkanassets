--G1-1_超サイヤ人ゴジータ_スターダストフォール

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
SP_01 = 152711; --突進 前
SP_02 = 152712; --突進　奥
SP_03 = 152713; --発射
SP_04 = 152714; --発射中
SP_05 = 152715; --被弾

--敵側
SP_01r = 152716; --突進 前
SP_02r = 152717; --突進　奥
SP_03r = 152718; --発射
SP_04r = 152719; --発射中
SP_05r = 152715; --被弾

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
-- 最初のシーン(300F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tameBG = entryEffectLife( spep_0 + 0, SP_02, 280, 0x80, -1, 0, 0, 0 );  --背景(ef_002)
setEffMoveKey( spep_0 + 0, tameBG, 0, 0 , 0 );
setEffMoveKey( spep_0 + 280, tameBG, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tameBG, 1.0, 1.0 );
setEffScaleKey( spep_0 + 280, tameBG, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tameBG, 255 );
setEffAlphaKey( spep_0 + 280, tameBG, 255 );
setEffAlphaKey( spep_0 + 281, tameBG, 0 );
setEffRotateKey( spep_0 + 0, tameBG, 0 );
setEffRotateKey( spep_0 + 280, tameBG, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 126, 1, 1 );
changeAnime( spep_0 + 126, 1, 104 );  --ガード
setMoveKey( spep_0-3 + 126, 1, 203.9, -203.3 , 0 );
setScaleKey( spep_0-3 + 126, 1, 1.58, 1.58 );
setRotateKey( spep_0-3 + 126, 1, 0 );


tame = entryEffectLife( spep_0 + 0, SP_01, 280, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 280, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 280, tame, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 280, tame, 255 );
setEffAlphaKey( spep_0 + 281, tame, 0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 280, tame, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 26, shuchusen1, 60, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 86, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 86, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 24, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 26, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 86, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff0 = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff0, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 22,  190006, 64, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 22, ctgogo, 64, 10 );

setEffMoveKey( spep_0 + 22, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 86, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 22, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 80, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 82, ctgogo, 1.2, 1.2 );
setEffScaleKey( spep_0 + 84, ctgogo, 1.3, 1.3 );
setEffScaleKey( spep_0 + 86, ctgogo, 1.4, 1.4 );

setEffRotateKey( spep_0 + 22, ctgogo, 0 );
setEffRotateKey( spep_0 + 86, ctgogo, 0 );

setEffAlphaKey( spep_0 + 22, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 191 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );
setEffAlphaKey( spep_0 + 86, ctgogo, 0 );

-- ** 音 ** --
playSe( spep_0 + 22, SE_04 );  --ゴゴゴ
playSe( spep_0 + 90,  9); --突進

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 126; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 136.7, 2.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 136.7, 2.3 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.45, 1.45 );
setScaleKey( SP_dodge + 10, 1, 1.45, 1.45 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0-3 + 182, 1, 0 );
setDisp( spep_0-3 + 190, 1, 1 );
setDisp( spep_0-3 + 196, 1, 0 );
--changeAnime( spep_0-3 + 166, 1, 107 );  --ダメージ 手前
changeAnime( spep_0-3 + 167, 1, 107 );  --ダメージ 手前
changeAnime( spep_0-3 + 190, 1, 106 );  --ダメージ

setMoveKey( spep_0-3 + 128, 1, 200.4, -199.8 , 0 );
setMoveKey( spep_0-3 + 130, 1, 191.1, -190.4 , 0 );
setMoveKey( spep_0-3 + 132, 1, 177, -176.3 , 0 );
setMoveKey( spep_0-3 + 134, 1, 159.5, -158.9 , 0 );
setMoveKey( spep_0-3 + 136, 1, 140, -139.4 , 0 );
setMoveKey( spep_0-3 + 138, 1, 119.7, -119.2 , 0 );
setMoveKey( spep_0-3 + 140, 1, 100.1, -99.5 , 0 );
setMoveKey( spep_0-3 + 142, 1, 82.6, -82 , 0 );
setMoveKey( spep_0-3 + 144, 1, 68.4, -67.7 , 0 );
setMoveKey( spep_0-3 + 146, 1, 58.8, -58.2 , 0 );
setMoveKey( spep_0-3 + 148, 1, 55.4, -54.8 , 0 );
setMoveKey( spep_0-3 + 165, 1, 55.4, -54.8 , 0 );
setMoveKey( spep_0-3 + 166, 1, 37.4, -87.4 , 0 );
setMoveKey( spep_0-3 + 168, 1, 36.8, -110.2 , 0 );
setMoveKey( spep_0-3 + 170, 1, 87.8, -185 , 0 );
setMoveKey( spep_0-3 + 172, 1, 178.1, -444.5 , 0 );
setMoveKey( spep_0-3 + 174, 1, 375.1, -894.8 , 0 );
setMoveKey( spep_0-3 + 176, 1, 437.7, -1049.7 , 0 );
setMoveKey( spep_0-3 + 178, 1, 477.2, -1139.3 , 0 );
setMoveKey( spep_0-3 + 180, 1, 480.3, -1156.3 , 0 );
setMoveKey( spep_0-3 + 182, 1, 487.1, -1181.9 , 0 );
setMoveKey( spep_0-3 + 184, 1, 485.9, -1165 , 0 );
setMoveKey( spep_0-3 + 186, 1, 486.3, -1166 , 0 );
setMoveKey( spep_0-3 + 188, 1, 486.6, -1166.9 , 0 );
setMoveKey( spep_0-3 + 190, 1, -300.1, 492.8 , 0 );
setMoveKey( spep_0-3 + 192, 1, -188.2, 310 , 0 );
setMoveKey( spep_0-3 + 194, 1, -76.1, 127.2 , 0 );
setMoveKey( spep_0-3 + 196, 1, 35.8, -55.6 , 0 );


setScaleKey( spep_0-3 + 166, 1, 1.58, 1.58 );
setScaleKey( spep_0-3 + 167, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 168, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 170, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 172, 1, 0.86, 0.86 );
setScaleKey( spep_0-3 + 174, 1, 1.3, 1.3 );
setScaleKey( spep_0-3 + 176, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 178, 1, 1.54, 1.54 );
setScaleKey( spep_0-3 + 180, 1, 1.57, 1.57 );
setScaleKey( spep_0-3 + 182, 1, 1.58, 1.58 );
setScaleKey( spep_0-3 + 190, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 196, 1, 0.14, 0.14 );

setRotateKey( spep_0-3 + 164, 1, 0 );
setRotateKey( spep_0-3 + 166, 1, 20.7 );
setRotateKey( spep_0-3 + 188, 1, 20.7 );
setRotateKey( spep_0-3 + 190, 1, 85.1 );
setRotateKey( spep_0-3 + 196, 1, 85.1 );


-- ** 音 ** --
playSe( spep_0 + 132,  43); --蹴る瞬間
playSe( spep_0 + 165,  1011);  --蹴る
playSe( spep_0 + 198,  1023);  --地面に当たる
SE1 = playSe( spep_0 + 220,  1044);  --岩が飛ぶ
stopSe( spep_0+280,  SE1,  0);

entryFade( spep_0+274,  4,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade
--監修にはないけどエフェクトの長さの都合で

-- ** 次の準備 ** --
spep_1 = spep_0 + 280;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(434F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassya = entryEffectLife( spep_2 + 0, SP_03, 440, 0x100, -1, 0, 0, 0 );  --着弾・手前(ef_003)
setEffMoveKey( spep_2 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_2 + 440, hassya, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassya, 1.0, 1.0 );
setEffScaleKey( spep_2 + 440, hassya, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassya, 0 );
setEffRotateKey( spep_2 + 440, hassya, 0 );
setEffAlphaKey( spep_2 + 0, hassya, 255 );
setEffAlphaKey( spep_2 + 440, hassya, 255 );

-- ** 音 ** --
playSe( spep_2,  8);  --飛ぶ
SE01 = playSe( spep_2+44, 15);  --気を溜める
stopSe( spep_2+82, SE01, 4);
--playSe( spep_2+64, 1020);  --横に伸びる
playSe( spep_2+82, 1020);  --横に伸びる
playSe( spep_2+112, 1020);  --横に伸びる
playSe( spep_2+142, 1020);  --横に伸びる
playSe( spep_2+172, 1020);  --横に伸びる
--アップな音
playSe( spep_2+200, 1034);  --集まる
playSe( spep_2+210, 1026);  --降り注ぐ
setSeVolume( spep_2 + 210, 1026, 80 );
playSe( spep_2+242, 1022);  --引きの絵

--4.11調整
SE001 = playSe( spep_2+330, 1026); --地面に当たる
setSeVolume( spep_2 + 330, 1026, 70 );
stopSe(spep_2+352,SE001,8);
SE002 = playSe( spep_2+342, 1026);
setSeVolume( spep_2 + 342, 1026, 50 );
stopSe(spep_2+364,SE002,8);
SE003 = playSe( spep_2+354, 1026);
setSeVolume( spep_2 + 354, 1026, 70 );
stopSe(spep_2+376,SE003,8);
SE004 = playSe( spep_2+366, 1026);
setSeVolume( spep_2 + 366, 1026, 60 );
stopSe(spep_2+388,SE004,8);
SE005 = playSe( spep_2+378, 1026);
setSeVolume( spep_2 + 378, 1026, 70 );
stopSe(spep_2+400,SE005,8);
SE006 = playSe( spep_2+390, 1026);
setSeVolume( spep_2 + 390, 1026, 55 );
stopSe(spep_2+412,SE006,8);
SE007 = playSe( spep_2+402, 1026);
setSeVolume( spep_2 + 402, 1026, 60 );
stopSe(spep_2+424,SE007,8);
SE008 = playSe( spep_2+414, 1026);
setSeVolume( spep_2 + 414, 1026, 70 );
--playSe( spep_2+430, 1026); 

--[[
playSe( spep_2+334, 1044); --岩音
playSe( spep_2+354, 1044); 
playSe( spep_2+374, 1044); 
playSe( spep_2+394, 1044); 
SE2 = playSe( spep_2+414, 1044); --岩音
stopSe( spep_2+436,  SE2,  10);  --止める
]]
-- ** ホワイトフェード ** --
entryFade( spep_2 + 410, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 420;
------------------------------------------------------
-- 発射中(134F)
------------------------------------------------------
-- ** エフェクト等 ** --
tyakudanf = entryEffectLife( spep_3 + 0, SP_04, 134, 0x100, -1, 0, 0, 0 );  --着弾・手前(ef_003)
setEffMoveKey( spep_3 + 0, tyakudanf, 0, 0 , 0 );
setEffMoveKey( spep_3 + 134, tyakudanf, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudanf, 1.0, 1.0 );
setEffScaleKey( spep_3 + 134, tyakudanf, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudanf, 0 );
setEffRotateKey( spep_3 + 134, tyakudanf, 0 );
setEffAlphaKey( spep_3 + 0, tyakudanf, 255 );
setEffAlphaKey( spep_3 + 133, tyakudanf, 255 );
setEffAlphaKey( spep_3 + 134, tyakudanf, 0 );

-- ** ホワイトフェード ** --
--entryFade( spep_3 + 84, 4, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
--entryFade( spep_3 + 92, 4, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
--entryFade( spep_3 + 102, 4, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --

SE010 = playSe( spep_3,  1026);
setSeVolume( spep_3 , 1026, 75 );
stopSe(spep_3+30,SE010,8);
SE011 = playSe( spep_3+20,  1026);
setSeVolume( spep_3 +20, 1026, 60 );
stopSe(spep_3+50,SE011,8);
SE012 = playSe( spep_3+40,  1026);
setSeVolume( spep_3+40 , 1026, 55 );
stopSe(spep_3+70,SE012,8);
SE013 = playSe( spep_3+60,  1026);
setSeVolume( spep_3+60 , 1026, 70 );
stopSe(spep_3+90,SE013,8);
SE014 = playSe( spep_3+80,  1026);
setSeVolume( spep_3+80 , 1026, 65 );
stopSe(spep_3+110,SE014,8);
SE015 = playSe( spep_3+100,  1026);
setSeVolume( spep_3+100 , 1026, 70 );
stopSe(spep_3+130,SE015,8);
SE016 = playSe( spep_3+120,  1026);
setSeVolume( spep_3+120 , 1026, 60 );
--playSe( spep_3+120,  1026);


-- ** 次の準備 ** --
spep_4 = spep_3 + 134;

------------------------------------------------------
-- 最後(286F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudanf = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --着弾・手前(ef_003)
setEffMoveKey( spep_4 + 0, tyakudanf, 0, 0 , 0 );
setEffMoveKey( spep_4 + 288, tyakudanf, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tyakudanf, 1.0, 1.0 );
setEffScaleKey( spep_4 + 288, tyakudanf, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tyakudanf, 0 );
setEffRotateKey( spep_4 + 288, tyakudanf, 0 );
setEffAlphaKey( spep_4 + 0, tyakudanf, 255 );
setEffAlphaKey( spep_4 + 288, tyakudanf, 255 );
setEffAlphaKey( spep_4 + 289, tyakudanf, 0 );

-- ** 音 ** --


SE020 = playSe( spep_4,  1026);
setSeVolume( spep_4 , 1026, 80 );
stopSe(spep_4+22,SE020,8);
SE021 = playSe( spep_4+12,  1026);
setSeVolume( spep_4+12 , 1026, 70 );
stopSe(spep_4+34,SE021,8);
SE022 = playSe( spep_4+24,  1026);
setSeVolume( spep_4+24 , 1026, 70 );
stopSe(spep_4+46,SE022,8);
SE023 = playSe( spep_4+36,  1026);
setSeVolume( spep_4+36 , 1026, 75 );
stopSe(spep_4+58,SE023,8);
SE024 = playSe( spep_4+48,  1026);
setSeVolume( spep_4+48 , 1026, 65 );
stopSe(spep_4+70,SE024,8);
SE025 = playSe( spep_4+60,  1026);
setSeVolume( spep_4+60 , 1026, 55 );
stopSe(spep_4+82,SE025,8);
SE026 = playSe( spep_4+72,  1026);
setSeVolume( spep_4+72 , 1026, 70 );
stopSe(spep_4+94,SE026,8);
SE027 = playSe( spep_4+84,  1026);
setSeVolume( spep_4+84 , 1026, 60 );
stopSe(spep_4+106,SE027,8);
SE028 = playSe( spep_4+96,  1026);
setSeVolume( spep_4+96 , 1026, 65 );
stopSe(spep_4+118,SE028,8);
SE029 = playSe( spep_4+108,  1026);
setSeVolume( spep_4+108 , 1026, 70 );
stopSe(spep_4+130,SE029,8);
SE030 = playSe( spep_4+120,  1026);
setSeVolume( spep_4+120 , 1026, 65 );
stopSe(spep_4+148,SE030,8);
SE031 = playSe( spep_4+138,  1026);
setSeVolume( spep_4+138 , 1026, 60 );
stopSe(spep_4+158,SE031,8);
SE032 = playSe( spep_4+148,  1026);
setSeVolume( spep_4+148 , 1026, 65 );
stopSe(spep_4+172,SE032,8);
SE033 = playSe( spep_4+162,  1026);
setSeVolume( spep_4+162 , 1026, 70 );
stopSe(spep_4+184,SE033,8);
SE034 = playSe( spep_4+174,  1026);
setSeVolume( spep_4+174 , 1026, 65 );
stopSe(spep_4+196,SE034,8);
SE035 = playSe( spep_4+186,  1026);
setSeVolume( spep_4+186 , 1026, 75 );
stopSe(spep_4+208,SE035,8);
SE036 = playSe( spep_4+198,  1026);
setSeVolume( spep_4+198 , 1026, 60 );
stopSe(spep_4+220,SE036,8);
SE037 = playSe( spep_4+210,  1026);
setSeVolume( spep_4+210 , 1026, 60 );
stopSe(spep_4+232,SE037,8);
SE038 = playSe( spep_4+222,  1026);
setSeVolume( spep_4+222 , 1026, 60 );
stopSe(spep_4+244,SE038,8);
SE039 = playSe( spep_4+234,  1026);
setSeVolume( spep_4+234 , 1026, 55 );
stopSe(spep_4+256,SE039,8);
SE040 = playSe( spep_4+246,  1026);
setSeVolume( spep_4+246 , 1026, 65 );
stopSe(spep_4+268,SE040,8);
SE041 = playSe( spep_4+258,  1026);
setSeVolume( spep_4+258 , 1026, 60 );
stopSe(spep_4+280,SE041,8);
SE042 = playSe( spep_4+270,  1026);
setSeVolume( spep_4+270 , 1026, 55 );

--[[
playSe( spep_4+4,  1044);
playSe( spep_4+24,  1044);
playSe( spep_4+44,  1044);
playSe( spep_4+64,  1044);
playSe( spep_4+84,  1044);
playSe( spep_4+104,  1044);
playSe( spep_4+124,  1044);
playSe( spep_4+144,  1044);
playSe( spep_4+164,  1044);
playSe( spep_4+184,  1044);
playSe( spep_4+204,  1044);
playSe( spep_4+224,  1044);
playSe( spep_4+244,  1044);
SE3 = playSe( spep_4+264,  1044);
stopSe( spep_4+280, SE3, 0)
]]
-- ** ダメージ表示 ** --
dealDamage( spep_4 + 180 );
entryFade( spep_4 + 276, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 280 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 最初のシーン(300F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tameBG = entryEffectLife( spep_0 + 0, SP_02r, 280, 0x80, -1, 0, 0, 0 );  --背景(ef_002)
setEffMoveKey( spep_0 + 0, tameBG, 0, 0 , 0 );
setEffMoveKey( spep_0 + 280, tameBG, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tameBG, -1.0, 1.0 );
setEffScaleKey( spep_0 + 280, tameBG, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tameBG, 255 );
setEffAlphaKey( spep_0 + 280, tameBG, 255 );
setEffAlphaKey( spep_0 + 281, tameBG, 0 );
setEffRotateKey( spep_0 + 0, tameBG, 0 );
setEffRotateKey( spep_0 + 280, tameBG, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 126, 1, 1 );
changeAnime( spep_0 + 126, 1, 104 );  --ガード
setMoveKey( spep_0-3 + 126, 1, 203.9, -203.3 , 0 );
setScaleKey( spep_0-3 + 126, 1, 1.58, 1.58 );
setRotateKey( spep_0-3 + 126, 1, 0 );


tame = entryEffectLife( spep_0 + 0, SP_01r, 280, 0x100, -1, 0, 0, 0 );  --溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 280, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 280, tame, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 280, tame, 255 );
setEffAlphaKey( spep_0 + 281, tame, 0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 280, tame, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 26, shuchusen1, 60, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 86, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 86, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 24, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 26, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 86, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff0 = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff0, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 22,  190006, 64, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 22, ctgogo, 64, 10 );

setEffMoveKey( spep_0 + 22, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 86, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 22, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 80, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 82, ctgogo, -1.2, 1.2 );
setEffScaleKey( spep_0 + 84, ctgogo, -1.3, 1.3 );
setEffScaleKey( spep_0 + 86, ctgogo, -1.4, 1.4 );

setEffRotateKey( spep_0 + 22, ctgogo, 0 );
setEffRotateKey( spep_0 + 86, ctgogo, 0 );

setEffAlphaKey( spep_0 + 22, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 191 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );
setEffAlphaKey( spep_0 + 86, ctgogo, 0 );

-- ** 音 ** --
playSe( spep_0 + 22, SE_04 );  --ゴゴゴ
playSe( spep_0 + 90,  9); --突進

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 126; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 136.7, 2.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 136.7, 2.3 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.45, 1.45 );
setScaleKey( SP_dodge + 10, 1, 1.45, 1.45 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
-- 回避しなかった場合
------------------------------------------------------
-- ** 敵キャラクター ** --
setDisp( spep_0-3 + 182, 1, 0 );
setDisp( spep_0-3 + 190, 1, 1 );
setDisp( spep_0-3 + 196, 1, 0 );
--changeAnime( spep_0-3 + 166, 1, 107 );  --ダメージ 手前
changeAnime( spep_0-3 + 167, 1, 107 );  --ダメージ 手前
changeAnime( spep_0-3 + 190, 1, 106 );  --ダメージ

setMoveKey( spep_0-3 + 128, 1, 200.4, -199.8 , 0 );
setMoveKey( spep_0-3 + 130, 1, 191.1, -190.4 , 0 );
setMoveKey( spep_0-3 + 132, 1, 177, -176.3 , 0 );
setMoveKey( spep_0-3 + 134, 1, 159.5, -158.9 , 0 );
setMoveKey( spep_0-3 + 136, 1, 140, -139.4 , 0 );
setMoveKey( spep_0-3 + 138, 1, 119.7, -119.2 , 0 );
setMoveKey( spep_0-3 + 140, 1, 100.1, -99.5 , 0 );
setMoveKey( spep_0-3 + 142, 1, 82.6, -82 , 0 );
setMoveKey( spep_0-3 + 144, 1, 68.4, -67.7 , 0 );
setMoveKey( spep_0-3 + 146, 1, 58.8, -58.2 , 0 );
setMoveKey( spep_0-3 + 148, 1, 55.4, -54.8 , 0 );
setMoveKey( spep_0-3 + 165, 1, 55.4, -54.8 , 0 );
setMoveKey( spep_0-3 + 166, 1, 37.4, -87.4 , 0 );
setMoveKey( spep_0-3 + 168, 1, 36.8, -110.2 , 0 );
setMoveKey( spep_0-3 + 170, 1, 87.8, -185 , 0 );
setMoveKey( spep_0-3 + 172, 1, 178.1, -444.5 , 0 );
setMoveKey( spep_0-3 + 174, 1, 375.1, -894.8 , 0 );
setMoveKey( spep_0-3 + 176, 1, 437.7, -1049.7 , 0 );
setMoveKey( spep_0-3 + 178, 1, 477.2, -1139.3 , 0 );
setMoveKey( spep_0-3 + 180, 1, 480.3, -1156.3 , 0 );
setMoveKey( spep_0-3 + 182, 1, 487.1, -1181.9 , 0 );
setMoveKey( spep_0-3 + 184, 1, 485.9, -1165 , 0 );
setMoveKey( spep_0-3 + 186, 1, 486.3, -1166 , 0 );
setMoveKey( spep_0-3 + 188, 1, 486.6, -1166.9 , 0 );
setMoveKey( spep_0-3 + 190, 1, -300.1, 492.8 , 0 );
setMoveKey( spep_0-3 + 192, 1, -188.2, 310 , 0 );
setMoveKey( spep_0-3 + 194, 1, -76.1, 127.2 , 0 );
setMoveKey( spep_0-3 + 196, 1, 35.8, -55.6 , 0 );
setScaleKey( spep_0-3 + 166, 1, 1.58, 1.58 );
setScaleKey( spep_0-3 + 167, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 168, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 170, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 172, 1, 0.86, 0.86 );
setScaleKey( spep_0-3 + 174, 1, 1.3, 1.3 );
setScaleKey( spep_0-3 + 176, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 178, 1, 1.54, 1.54 );
setScaleKey( spep_0-3 + 180, 1, 1.57, 1.57 );
setScaleKey( spep_0-3 + 182, 1, 1.58, 1.58 );
setScaleKey( spep_0-3 + 190, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 196, 1, 0.14, 0.14 );
setRotateKey( spep_0-3 + 164, 1, 0 );
setRotateKey( spep_0-3 + 166, 1, 20.7 );
setRotateKey( spep_0-3 + 188, 1, 20.7 );
setRotateKey( spep_0-3 + 190, 1, 85.1 );
setRotateKey( spep_0-3 + 196, 1, 85.1 );

-- ** 音 ** --
playSe( spep_0 + 132,  43); --蹴る瞬間
playSe( spep_0 + 165,  1011);  --蹴る
playSe( spep_0 + 198,  1023);  --地面に当たる
SE1 = playSe( spep_0 + 220,  1044);  --岩が飛ぶ
stopSe( spep_0+280,  SE1,  0);

entryFade( spep_0+274,  4,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade
--監修にはないけどエフェクトの長さの都合で

-- ** 次の準備 ** --
spep_1 = spep_0 + 280;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射(434F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassya = entryEffectLife( spep_2 + 0, SP_03r, 440, 0x100, -1, 0, 0, 0 );  --着弾・手前(ef_003)
setEffMoveKey( spep_2 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_2 + 440, hassya, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassya, -1.0, 1.0 );
setEffScaleKey( spep_2 + 440, hassya, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassya, 0 );
setEffRotateKey( spep_2 + 440, hassya, 0 );
setEffAlphaKey( spep_2 + 0, hassya, 255 );
setEffAlphaKey( spep_2 + 440, hassya, 255 );

-- ** 音 ** --
playSe( spep_2,  8);  --飛ぶ
SE01 = playSe( spep_2+44, 15);  --気を溜める
stopSe( spep_2+82, SE01, 4);
--playSe( spep_2+64, 1020);  --横に伸びる
playSe( spep_2+82, 1020);  --横に伸びる
playSe( spep_2+112, 1020);  --横に伸びる
playSe( spep_2+142, 1020);  --横に伸びる
playSe( spep_2+172, 1020);  --横に伸びる
--アップな音
playSe( spep_2+200, 1034);  --集まる
playSe( spep_2+210, 1026);  --降り注ぐ
setSeVolume( spep_2 + 210, 1026, 80 );
playSe( spep_2+242, 1022);  --引きの絵

--4.11調整
SE001 = playSe( spep_2+330, 1026); --地面に当たる
setSeVolume( spep_2 + 330, 1026, 70 );
stopSe(spep_2+352,SE001,8);
SE002 = playSe( spep_2+342, 1026);
setSeVolume( spep_2 + 342, 1026, 50 );
stopSe(spep_2+364,SE002,8);
SE003 = playSe( spep_2+354, 1026);
setSeVolume( spep_2 + 354, 1026, 70 );
stopSe(spep_2+376,SE003,8);
SE004 = playSe( spep_2+366, 1026);
setSeVolume( spep_2 + 366, 1026, 60 );
stopSe(spep_2+388,SE004,8);
SE005 = playSe( spep_2+378, 1026);
setSeVolume( spep_2 + 378, 1026, 70 );
stopSe(spep_2+400,SE005,8);
SE006 = playSe( spep_2+390, 1026);
setSeVolume( spep_2 + 390, 1026, 55 );
stopSe(spep_2+412,SE006,8);
SE007 = playSe( spep_2+402, 1026);
setSeVolume( spep_2 + 402, 1026, 60 );
stopSe(spep_2+424,SE007,8);
SE008 = playSe( spep_2+414, 1026);
setSeVolume( spep_2 + 414, 1026, 70 );
--playSe( spep_2+430, 1026); 
--playSe( spep_2+430, 1026); 
--playSe( spep_2+430, 1026); 
--[[
playSe( spep_2+334, 1044); --岩音
playSe( spep_2+354, 1044); 
playSe( spep_2+374, 1044); 
playSe( spep_2+394, 1044); 
SE2 = playSe( spep_2+414, 1044); --岩音
stopSe( spep_2+436,  SE2,  10);  --止める
]]
-- ** ホワイトフェード ** --
entryFade( spep_2 + 410, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 420;
------------------------------------------------------
-- 発射中(134F)
------------------------------------------------------
-- ** エフェクト等 ** --
tyakudanf = entryEffectLife( spep_3 + 0, SP_04r, 134, 0x100, -1, 0, 0, 0 );  --着弾・手前(ef_003)
setEffMoveKey( spep_3 + 0, tyakudanf, 0, 0 , 0 );
setEffMoveKey( spep_3 + 134, tyakudanf, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudanf, -1.0, 1.0 );
setEffScaleKey( spep_3 + 134, tyakudanf, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudanf, 0 );
setEffRotateKey( spep_3 + 134, tyakudanf, 0 );
setEffAlphaKey( spep_3 + 0, tyakudanf, 255 );
setEffAlphaKey( spep_3 + 133, tyakudanf, 255 );
setEffAlphaKey( spep_3 + 134, tyakudanf, 0 );

-- ** ホワイトフェード ** --
--entryFade( spep_3 + 84, 4, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
--entryFade( spep_3 + 92, 4, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
--entryFade( spep_3 + 102, 4, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE010 = playSe( spep_3,  1026);
setSeVolume( spep_3 , 1026, 75 );
stopSe(spep_3+30,SE010,8);
SE011 = playSe( spep_3+20,  1026);
setSeVolume( spep_3 +20, 1026, 60 );
stopSe(spep_3+50,SE011,8);
SE012 = playSe( spep_3+40,  1026);
setSeVolume( spep_3+40 , 1026, 55 );
stopSe(spep_3+70,SE012,8);
SE013 = playSe( spep_3+60,  1026);
setSeVolume( spep_3+60 , 1026, 70 );
stopSe(spep_3+90,SE013,8);
SE014 = playSe( spep_3+80,  1026);
setSeVolume( spep_3+80 , 1026, 65 );
stopSe(spep_3+110,SE014,8);
SE015 = playSe( spep_3+100,  1026);
setSeVolume( spep_3+100 , 1026, 70 );
stopSe(spep_3+130,SE015,8);
SE016 = playSe( spep_3+120,  1026);
setSeVolume( spep_3+120 , 1026, 60 );
--playSe( spep_3+120,  1026);

-- ** 次の準備 ** --
spep_4 = spep_3 + 134;

------------------------------------------------------
-- 最後(286F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudanf = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --着弾・手前(ef_003)
setEffMoveKey( spep_4 + 0, tyakudanf, 0, 0 , 0 );
setEffMoveKey( spep_4 + 288, tyakudanf, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tyakudanf, 1.0, 1.0 );
setEffScaleKey( spep_4 + 288, tyakudanf, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tyakudanf, 0 );
setEffRotateKey( spep_4 + 288, tyakudanf, 0 );
setEffAlphaKey( spep_4 + 0, tyakudanf, 255 );
setEffAlphaKey( spep_4 + 288, tyakudanf, 255 );
setEffAlphaKey( spep_4 + 289, tyakudanf, 0 );

-- ** 音 ** --
-- ** 音 ** --
SE020 = playSe( spep_4,  1026);
setSeVolume( spep_4 , 1026, 80 );
stopSe(spep_4+22,SE020,8);
SE021 = playSe( spep_4+12,  1026);
setSeVolume( spep_4+12 , 1026, 70 );
stopSe(spep_4+34,SE021,8);
SE022 = playSe( spep_4+24,  1026);
setSeVolume( spep_4+24 , 1026, 70 );
stopSe(spep_4+46,SE022,8);
SE023 = playSe( spep_4+36,  1026);
setSeVolume( spep_4+36 , 1026, 75 );
stopSe(spep_4+58,SE023,8);
SE024 = playSe( spep_4+48,  1026);
setSeVolume( spep_4+48 , 1026, 65 );
stopSe(spep_4+70,SE024,8);
SE025 = playSe( spep_4+60,  1026);
setSeVolume( spep_4+60 , 1026, 55 );
stopSe(spep_4+82,SE025,8);
SE026 = playSe( spep_4+72,  1026);
setSeVolume( spep_4+72 , 1026, 70 );
stopSe(spep_4+94,SE026,8);
SE027 = playSe( spep_4+84,  1026);
setSeVolume( spep_4+84 , 1026, 60 );
stopSe(spep_4+106,SE027,8);
SE028 = playSe( spep_4+96,  1026);
setSeVolume( spep_4+96 , 1026, 65 );
stopSe(spep_4+118,SE028,8);
SE029 = playSe( spep_4+108,  1026);
setSeVolume( spep_4+108 , 1026, 70 );
stopSe(spep_4+130,SE029,8);
SE030 = playSe( spep_4+120,  1026);
setSeVolume( spep_4+120 , 1026, 65 );
stopSe(spep_4+148,SE030,8);
SE031 = playSe( spep_4+138,  1026);
setSeVolume( spep_4+138 , 1026, 60 );
stopSe(spep_4+158,SE031,8);
SE032 = playSe( spep_4+148,  1026);
setSeVolume( spep_4+148 , 1026, 65 );
stopSe(spep_4+172,SE032,8);
SE033 = playSe( spep_4+162,  1026);
setSeVolume( spep_4+162 , 1026, 70 );
stopSe(spep_4+184,SE033,8);
SE034 = playSe( spep_4+174,  1026);
setSeVolume( spep_4+174 , 1026, 65 );
stopSe(spep_4+196,SE034,8);
SE035 = playSe( spep_4+186,  1026);
setSeVolume( spep_4+186 , 1026, 75 );
stopSe(spep_4+208,SE035,8);
SE036 = playSe( spep_4+198,  1026);
setSeVolume( spep_4+198 , 1026, 60 );
stopSe(spep_4+220,SE036,8);
SE037 = playSe( spep_4+210,  1026);
setSeVolume( spep_4+210 , 1026, 60 );
stopSe(spep_4+232,SE037,8);
SE038 = playSe( spep_4+222,  1026);
setSeVolume( spep_4+222 , 1026, 60 );
stopSe(spep_4+244,SE038,8);
SE039 = playSe( spep_4+234,  1026);
setSeVolume( spep_4+234 , 1026, 55 );
stopSe(spep_4+256,SE039,8);
SE040 = playSe( spep_4+246,  1026);
setSeVolume( spep_4+246 , 1026, 65 );
stopSe(spep_4+268,SE040,8);
SE041 = playSe( spep_4+258,  1026);
setSeVolume( spep_4+258 , 1026, 60 );
stopSe(spep_4+280,SE041,8);
SE042 = playSe( spep_4+270,  1026);
setSeVolume( spep_4+270 , 1026, 55 );

--[[
playSe( spep_4+4,  1044);
playSe( spep_4+24,  1044);
playSe( spep_4+44,  1044);
playSe( spep_4+64,  1044);
playSe( spep_4+84,  1044);
playSe( spep_4+104,  1044);
playSe( spep_4+124,  1044);
playSe( spep_4+144,  1044);
playSe( spep_4+164,  1044);
playSe( spep_4+184,  1044);
playSe( spep_4+204,  1044);
playSe( spep_4+224,  1044);
playSe( spep_4+244,  1044);
SE3 = playSe( spep_4+264,  1044);
stopSe( spep_4+280, SE3, 0)
]]
-- ** ダメージ表示 ** --
dealDamage( spep_4 + 180 );
entryFade( spep_4 + 276, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 280 );

end



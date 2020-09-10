--1020180:カクンサ_ワイルドクロー(UR)
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
SP_01 = 155584  ;-- 導入、しゃがみ状態→ジャンプ
SP_02 = 155585  ;-- 引っかき、高速攻撃；敵より前
SP_03 = 155586  ;-- 引っかき、高速攻撃；敵より後ろ
SP_04 = 155587  ;-- 手アップ→引っかき
SP_05 = 155588  ;-- ラストシーン：敵より前
SP_06 = 155589  ;-- ラストシーン：敵より後ろ

--エフェクト(敵側)
SP_02r =  155668 ;-- 引っかき、高速攻撃；敵より前_敵側

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
--speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
--playSe( spep_1 + 0, SE_05 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1+ 94;

------------------------------------------------------
-- 引っかき、高速攻撃(312)
------------------------------------------------------

-- ** エフェクト等 ** --
hikkaki_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --引っかき、高速攻撃；敵より前(ef_002)
setEffMoveKey(   spep_2 + 0, hikkaki_f, 0, 0, 0 );
setEffMoveKey(   spep_2 + 312, hikkaki_f, 0, 0, 0 );
setEffScaleKey(  spep_2 + 0, hikkaki_f, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 312, hikkaki_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hikkaki_f, 0 );
setEffRotateKey( spep_2 + 312, hikkaki_f, 0 );
setEffAlphaKey(  spep_2 + 0, hikkaki_f, 255 );
setEffAlphaKey(  spep_2 + 312, hikkaki_f, 255 );

-- ** エフェクト等 ** --
hikkaki_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --引っかき、高速攻撃；敵より後ろ(ef_003)
setEffMoveKey(   spep_2 + 0, hikkaki_b, 0, 0, 0 );
setEffMoveKey(   spep_2 + 312, hikkaki_b, 0, 0, 0 );
setEffScaleKey(  spep_2 + 0, hikkaki_b, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 312, hikkaki_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hikkaki_b, 0 );
setEffRotateKey( spep_2 + 312, hikkaki_b, 0 );
setEffAlphaKey(  spep_2 + 0, hikkaki_b, 255 );
setEffAlphaKey(  spep_2 + 312, hikkaki_b, 255 );

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

shuchusen3 = entryEffectLife( spep_2 + 69,  906, 29, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake(     spep_2 + 69, shuchusen3, 29, 25 );
setEffMoveKey(   spep_2 + 69, shuchusen3, 0, -100 , 0 );
setEffMoveKey(   spep_2 + 98, shuchusen3, 0, -100 , 0 );
setEffScaleKey(  spep_2 + 69, shuchusen3, 1.45, 1.8 );
setEffScaleKey(  spep_2 + 98, shuchusen3, 1.45, 1.8 );
setEffRotateKey( spep_2 + 69, shuchusen3, 0 );
setEffRotateKey( spep_2 + 98, shuchusen3, 0 );
setEffAlphaKey(  spep_2 + 69, shuchusen3, 255 );
setEffAlphaKey(  spep_2 + 98, shuchusen3, 255 );

shuchusen4 = entryEffectLife( spep_2 + 127,  906, 184, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake(     spep_2 + 127, shuchusen4, 184, 25 );
setEffMoveKey(   spep_2 + 127, shuchusen4, 0, -100 , 0 );
setEffMoveKey(   spep_2 + 311, shuchusen4, 0, -100 , 0 );
setEffScaleKey(  spep_2 + 127, shuchusen4, 1.45, 1.8 );
setEffScaleKey(  spep_2 + 311, shuchusen4, 1.45, 1.8 );
setEffRotateKey( spep_2 + 127, shuchusen4, 0 );
setEffRotateKey( spep_2 + 311, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 127, shuchusen4, 255 );
setEffAlphaKey(  spep_2 + 311, shuchusen4, 255 );

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

ctzan2 = entryEffectLife( spep_2 -3 + 72,  10010, 26, 0x100, -1, 0, -64.8, 32.6 ); --ザンッ
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
setEffMoveKey(   spep_2 -3 + 98, ctzan2, 117.8, 164.5 , 0 );
setEffScaleKey(  spep_2 -3 + 72, ctzan2, 0.74, 0.74 );
setEffScaleKey(  spep_2 -3 + 74, ctzan2, 1.27, 1.27 );
setEffScaleKey(  spep_2 -3 + 76, ctzan2, 1.8, 1.8 );
setEffScaleKey(  spep_2 -3 + 98, ctzan2, 1.8, 1.8 );
setEffRotateKey( spep_2 -3 + 72, ctzan2, -9.8 );
setEffRotateKey( spep_2 -3 + 74, ctzan2, -10 );
setEffRotateKey( spep_2 -3 + 98, ctzan2, -10 );
setEffAlphaKey(  spep_2 -3 + 72, ctzan2, 255 );
setEffAlphaKey(  spep_2 -3 + 98, ctzan2, 255 );

ctzan3 = entryEffectLife( spep_2 -3 + 136,  10010, 14, 0x100, -1, 0, -74.8, -27.4 ); --ザンッ
setEffMoveKey(   spep_2 -3 + 136, ctzan3, -74.8, -27.4 , 0 );
setEffMoveKey(   spep_2 -3 + 138, ctzan3, -54.9, 3.7 , 0 );
setEffMoveKey(   spep_2 -3 + 140, ctzan3, -34.9, 34.8 , 0 );
setEffMoveKey(   spep_2 -3 + 142, ctzan3, -18.3, 44.8 , 0 );
setEffMoveKey(   spep_2 -3 + 144, ctzan3, -1.6, 54.8 , 0 );
setEffMoveKey(   spep_2 -3 + 146, ctzan3, 15.1, 64.8 , 0 );
setEffMoveKey(   spep_2 -3 + 148, ctzan3, 117.8, 114.5 , 0 );
setEffMoveKey(   spep_2 -3 + 148, ctzan3, 117.8, 114.5 , 0 );
setEffMoveKey(   spep_2 -3 + 150, ctzan3, 117.8, 114.5 , 0 );
setEffScaleKey(  spep_2 -3 + 136, ctzan3, 0.6, 0.6 );
setEffScaleKey(  spep_2 -3 + 138, ctzan3, 1.05, 1.05 );
setEffScaleKey(  spep_2 -3 + 140, ctzan3, 1.5, 1.5 );
setEffScaleKey(  spep_2 -3 + 150, ctzan3, 1.5, 1.5 );
setEffRotateKey( spep_2 -3 + 136, ctzan3, -9.8 );
setEffRotateKey( spep_2 -3 + 138, ctzan3, -5 );
setEffRotateKey( spep_2 -3 + 140, ctzan3, 0 );
setEffRotateKey( spep_2 -3 + 150, ctzan3, 0 );
setEffAlphaKey(  spep_2 -3 + 136, ctzan3, 255 );
setEffAlphaKey(  spep_2 -3 + 150, ctzan3, 255 );

ctzudo = entryEffectLife( spep_2 -3 + 156,  10014, 158, 0x100, -1, 0, -4.5, 123.5 ); --ズドドドッ
--setEffShake(   spep_2 -3 + 156, ctzudo, 159, 5 );
setEffMoveKey(   spep_2 -3 + 156, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 158, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 160, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 162, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 164, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 166, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 166, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 168, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 170, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 172, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 174, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 176, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 178, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 180, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 182, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 184, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 186, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 188, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 190, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 192, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 194, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 196, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 198, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 200, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 202, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 204, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 206, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 208, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 210, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 212, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 214, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 216, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 218, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 220, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 222, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 224, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 226, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 228, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 230, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 232, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 234, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 236, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 238, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 240, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 242, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 244, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 246, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 248, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 250, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 252, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 254, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 256, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 258, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 260, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 262, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 264, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 266, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 268, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 270, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 272, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 274, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 276, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 278, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 280, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 282, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 284, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 286, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 288, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 290, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 292, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 294, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 296, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 298, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 300, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 302, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 304, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 306, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 308, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 310, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 312, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 314, ctzudo,  2.5, 123.5 , 0 );
setEffScaleKey(  spep_2 -3 + 156, ctzudo, 1.80, 1.80 );
setEffScaleKey(  spep_2 -3 + 314, ctzudo, 1.80, 1.80 );
setEffRotateKey( spep_2 -3 + 156, ctzudo, 20 );
setEffRotateKey( spep_2 -3 + 314, ctzudo, 20 );
setEffAlphaKey(  spep_2 -3 + 156, ctzudo, 255 );
setEffAlphaKey(  spep_2 -3 + 314, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 +   0, 1, 1 );
setDisp( spep_2 + 312, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 10, 1, 108 );
changeAnime( spep_2 -3 + 30, 1, 106 );
changeAnime( spep_2 -3 + 44, 1, 108 );
changeAnime( spep_2 -3 + 56, 1, 106 );
changeAnime( spep_2 -3 + 72, 1, 108 );
changeAnime( spep_2 -3 + 108, 1, 106 );
changeAnime( spep_2 -3 + 138, 1, 108 );
changeAnime( spep_2 -3 + 156, 1, 106 );
changeAnime( spep_2 -3 + 174, 1, 108 );
changeAnime( spep_2 -3 + 188, 1, 106 );
changeAnime( spep_2 -3 + 208, 1, 108 );
changeAnime( spep_2 -3 + 220, 1, 106 );
changeAnime( spep_2 -3 + 230, 1, 108 );
changeAnime( spep_2 -3 + 238, 1, 106 );
changeAnime( spep_2 -3 + 248, 1, 108 );
changeAnime( spep_2 -3 + 258, 1, 106 );
changeAnime( spep_2 -3 + 266, 1, 108 );
changeAnime( spep_2 -3 + 272, 1, 106 );
changeAnime( spep_2 -3 + 282, 1, 108 );
changeAnime( spep_2 -3 + 315, 1, 108 );

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
setMoveKey( spep_2 -3 + 52, 1, 108.8, -205.2 , 0 );
setMoveKey( spep_2 -3 + 55, 1, 108.8, -199.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 72.8, -200.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 75.2, -206.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 77.6, -212.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 79.9, -218 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 82.3, -223.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 84.6, -229.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 87, -235.3 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 89.3, -241 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 127.9, -245.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 122.2, -256.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 146.5, -236.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 145.8, -237.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 145.1, -238.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 144.3, -238.9 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 143.6, -239.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 142.9, -240.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 142.2, -241.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 141.5, -242 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 140.7, -242.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 140, -243.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 139.3, -244.2 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 138.6, -245 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 137.9, -245.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 137.1, -246.5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 134.8, -248.9 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 132.5, -251.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 103.6, -247.3 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 103.6, -247.3 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 103.6, -247.2 , 0 );
setMoveKey( spep_2 -3 + 137, 1, 103.6, -247.2 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 129.3, -272.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 90, -274.3 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 109.2, -263.9 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 111.4, -261.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 113.7, -259.3 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 116, -257.1 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 118.3, -254.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 120.5, -252.5 , 0 );
setMoveKey( spep_2 -3 + 155, 1, 122.8, -250.2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 67.6, -219.3 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 24.6, -234.5 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 28.9, -224.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 16.4, -221.9 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 3.9, -219.6 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -8.6, -217.3 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -21.1, -215.1 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -33.6, -212.8 , 0 );
setMoveKey( spep_2 -3 + 173, 1, -46.1, -210.5 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 34.2, -213.2 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 11.9, -228 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 34.9, -226 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 40.9, -232 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 47, -238.1 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 53.1, -244.2 , 0 );
setMoveKey( spep_2 -3 + 187, 1, 59.1, -250.2 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 7.3, -226.3 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -30.2, -230.1 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -24.3, -213.4 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -36.5, -197.4 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -46.3, -196.3 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -58.5, -180.2 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -68.2, -179.2 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -80.4, -163.1 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -90.1, -162 , 0 );
setMoveKey( spep_2 -3 + 207, 1, -80.3, -154.7 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -36.5, -199.9 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 24, -202.9 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 47.5, -220.7 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 68.5, -223.6 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 92, -241.4 , 0 );
setMoveKey( spep_2 -3 + 219, 1, 112.9, -244.2 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 53.4, -225 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 4.3, -234.9 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -1.3, -221.4 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -25, -208.5 , 0 );
setMoveKey( spep_2 -3 + 229, 1, -46.1, -210.5 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 32.5, -206.5 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 18, -234.1 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 45.7, -230.6 , 0 );
setMoveKey( spep_2 -3 + 237, 1, 59.1, -250.2 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 7.4, -223.2 , 0 );
setMoveKey( spep_2 -3 + 240, 1, -41.2, -221.5 , 0 );
setMoveKey( spep_2 -3 + 242, 1, -47.5, -188.8 , 0 );
setMoveKey( spep_2 -3 + 244, 1, -68.2, -179.2 , 0 );
setMoveKey( spep_2 -3 + 247, 1, -91.4, -154.5 , 0 );
setMoveKey( spep_2 -3 + 248, 1, -9.3, -182.5 , 0 );
setMoveKey( spep_2 -3 + 250, 1, -2.7, -213.4 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 47.5, -220.7 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 79.6, -228.7 , 0 );
setMoveKey( spep_2 -3 + 257, 1, 114.2, -251.7 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 42.3, -224.8 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 13.7, -225 , 0 );
setMoveKey( spep_2 -3 + 262, 1, -17.5, -210.3 , 0 );
setMoveKey( spep_2 -3 + 265, 1, -46.1, -210.5 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 21.5, -206.3 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 40.9, -232 , 0 );
setMoveKey( spep_2 -3 + 271, 1, 57.9, -242.7 , 0 );
setMoveKey( spep_2 -3 + 272, 1, -2.4, -230.5 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -25.6, -205.9 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -46.3, -196.3 , 0 );
setMoveKey( spep_2 -3 + 278, 1, -69.4, -171.7 , 0 );
setMoveKey( spep_2 -3 + 281, 1, -90.1, -162 , 0 );
setMoveKey( spep_2 -3 + 282, 1, -20.4, -182.3 , 0 );
setMoveKey( spep_2 -3 + 284, 1, -10.8, -193.6 , 0 );
setMoveKey( spep_2 -3 + 286, 1, -3.7, -190 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 5.9, -201.4 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 12.9, -197.8 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 22.5, -209.1 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 29.6, -205.5 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 39.2, -216.9 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 46.3, -213.2 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 55.8, -224.6 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 62.9, -221 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 72.5, -232.4 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 79.6, -228.7 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 89.2, -240.1 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 96.3, -236.5 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 105.8, -247.8 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 112.9, -244.2 , 0 );
setMoveKey( spep_2 -3 + 315, 1, 112.9, -244.2 , 0 );

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
setScaleKey( spep_2 -3 + 107, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 108, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 137, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 138, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 140, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 155, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 156, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 158, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 173, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 174, 1, 1.24, 1.24 );
setScaleKey( spep_2 -3 + 176, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 187, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 188, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 190, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 207, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 208, 1, 1.19, 1.19 );
setScaleKey( spep_2 -3 + 210, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 212, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 214, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 216, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 219, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 220, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 229, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 230, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 237, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 238, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 247, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 248, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 250, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 252, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 254, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 257, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 258, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 265, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 266, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 271, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 272, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 281, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 282, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 286, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 288, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 292, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 294, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 298, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 300, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 304, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 306, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 308, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 310, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 315, 1, 1.1, 1.1 );

setRotateKey( spep_2    + 0, 1, 0 );
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
setRotateKey( spep_2 -3 + 74, 1, -0.9 );
setRotateKey( spep_2 -3 + 76, 1, 2.9 );
setRotateKey( spep_2 -3 + 78, 1, 2.7 );
setRotateKey( spep_2 -3 + 80, 1, 2.5 );
setRotateKey( spep_2 -3 + 82, 1, 2.2 );
setRotateKey( spep_2 -3 + 84, 1, 2 );
setRotateKey( spep_2 -3 + 86, 1, 1.7 );
setRotateKey( spep_2 -3 + 88, 1, 1.5 );
setRotateKey( spep_2 -3 + 90, 1, 1.2 );
setRotateKey( spep_2 -3 + 92, 1, 1 );
setRotateKey( spep_2 -3 + 94, 1, 0.7 );
setRotateKey( spep_2 -3 + 96, 1, 0.5 );
setRotateKey( spep_2 -3 + 98, 1, 0.2 );
setRotateKey( spep_2 -3 + 100, 1, 0 );
setRotateKey( spep_2 -3 + 102, 1, -0.3 );
setRotateKey( spep_2 -3 + 104, 1, -1.1 );
setRotateKey( spep_2 -3 + 107, 1, -2 );
setRotateKey( spep_2 -3 + 108, 1, -45.9 );
setRotateKey( spep_2 -3 + 137, 1, -45.9 );
setRotateKey( spep_2 -3 + 138, 1, -4.8 );
setRotateKey( spep_2 -3 + 155, 1, -4.8 );
setRotateKey( spep_2 -3 + 156, 1, -63.6 );
setRotateKey( spep_2 -3 + 158, 1, -65 );
setRotateKey( spep_2 -3 + 160, 1, -66.4 );
setRotateKey( spep_2 -3 + 162, 1, -67.7 );
setRotateKey( spep_2 -3 + 164, 1, -69.1 );
setRotateKey( spep_2 -3 + 166, 1, -70.5 );
setRotateKey( spep_2 -3 + 168, 1, -71.8 );
setRotateKey( spep_2 -3 + 170, 1, -73.2 );
setRotateKey( spep_2 -3 + 173, 1, -74.6 );
setRotateKey( spep_2 -3 + 174, 1, -4.8 );
setRotateKey( spep_2 -3 + 187, 1, -4.8 );
setRotateKey( spep_2 -3 + 188, 1, -46.6 );
setRotateKey( spep_2 -3 + 190, 1, -48.4 );
setRotateKey( spep_2 -3 + 192, 1, -50.2 );
setRotateKey( spep_2 -3 + 194, 1, -51.9 );
setRotateKey( spep_2 -3 + 196, 1, -53.7 );
setRotateKey( spep_2 -3 + 198, 1, -55.5 );
setRotateKey( spep_2 -3 + 200, 1, -57.3 );
setRotateKey( spep_2 -3 + 202, 1, -59 );
setRotateKey( spep_2 -3 + 204, 1, -60.8 );
setRotateKey( spep_2 -3 + 207, 1, -60.8 );
setRotateKey( spep_2 -3 + 208, 1, -11 );
setRotateKey( spep_2 -3 + 210, 1, -4.4 );
setRotateKey( spep_2 -3 + 212, 1, -1.1 );
setRotateKey( spep_2 -3 + 214, 1, 2.2 );
setRotateKey( spep_2 -3 + 216, 1, 5.5 );
setRotateKey( spep_2 -3 + 219, 1, 8.8 );
setRotateKey( spep_2 -3 + 220, 1, -59.1 );
setRotateKey( spep_2 -3 + 222, 1, -63 );
setRotateKey( spep_2 -3 + 224, 1, -66.9 );
setRotateKey( spep_2 -3 + 226, 1, -70.7 );
setRotateKey( spep_2 -3 + 229, 1, -74.6 );
setRotateKey( spep_2 -3 + 230, 1, -4.8 );
setRotateKey( spep_2 -3 + 237, 1, -4.8 );
setRotateKey( spep_2 -3 + 238, 1, -46.6 );
setRotateKey( spep_2 -3 + 240, 1, -50.2 );
setRotateKey( spep_2 -3 + 242, 1, -53.7 );
setRotateKey( spep_2 -3 + 244, 1, -57.3 );
setRotateKey( spep_2 -3 + 247, 1, -60.8 );
setRotateKey( spep_2 -3 + 248, 1, -11 );
setRotateKey( spep_2 -3 + 250, 1, -6 );
setRotateKey( spep_2 -3 + 252, 1, -1.1 );
setRotateKey( spep_2 -3 + 254, 1, 3.8 );
setRotateKey( spep_2 -3 + 257, 1, 8.8 );
setRotateKey( spep_2 -3 + 258, 1, -59.1 );
setRotateKey( spep_2 -3 + 260, 1, -64.3 );
setRotateKey( spep_2 -3 + 262, 1, -69.4 );
setRotateKey( spep_2 -3 + 265, 1, -74.6 );
setRotateKey( spep_2 -3 + 266, 1, -4.8 );
setRotateKey( spep_2 -3 + 271, 1, -4.8 );
setRotateKey( spep_2 -3 + 272, 1, -46.6 );
setRotateKey( spep_2 -3 + 274, 1, -50.2 );
setRotateKey( spep_2 -3 + 276, 1, -53.7 );
setRotateKey( spep_2 -3 + 278, 1, -57.3 );
setRotateKey( spep_2 -3 + 281, 1, -60.8 );
setRotateKey( spep_2 -3 + 282, 1, -11 );
setRotateKey( spep_2 -3 + 284, 1, -9.8 );
setRotateKey( spep_2 -3 + 286, 1, -8.5 );
setRotateKey( spep_2 -3 + 288, 1, -7.3 );
setRotateKey( spep_2 -3 + 290, 1, -6 );
setRotateKey( spep_2 -3 + 292, 1, -4.8 );
setRotateKey( spep_2 -3 + 294, 1, -3.6 );
setRotateKey( spep_2 -3 + 296, 1, -2.3 );
setRotateKey( spep_2 -3 + 298, 1, -1.1 );
setRotateKey( spep_2 -3 + 300, 1, 0.1 );
setRotateKey( spep_2 -3 + 302, 1, 1.4 );
setRotateKey( spep_2 -3 + 304, 1, 2.6 );
setRotateKey( spep_2 -3 + 306, 1, 3.8 );
setRotateKey( spep_2 -3 + 308, 1, 5.1 );
setRotateKey( spep_2 -3 + 310, 1, 6.3 );
setRotateKey( spep_2 -3 + 312, 1, 7.6 );
setRotateKey( spep_2 -3 + 314, 1, 8.8 );
setRotateKey( spep_2 -3 + 315, 1, 8.8 );

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
setSeVolume( spep_2 + 39, 1169, 83 );
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

--後ろ飛ぶ1
playSe( spep_2 + 105, 1108 );
setSeVolume( spep_2 + 105, 1108, 158 );
--後ろ飛ぶ2
SE10 = playSe( spep_2 + 105, 1109 );
setSeVolume( spep_2 + 105, 1109, 58 );
setSeVolume( spep_2 + 107, 1109, 52 );
setSeVolume( spep_2 + 109, 1109, 46 );
setSeVolume( spep_2 + 111, 1109, 40 );
setSeVolume( spep_2 + 113, 1109, 34 );
setSeVolume( spep_2 + 115, 1109, 28 );
setSeVolume( spep_2 + 117, 1109, 22 );
setSeVolume( spep_2 + 119, 1109, 16 );
setSeVolume( spep_2 + 120, 1109, 10 );
setSeVolume( spep_2 + 121, 1109, 4 );
setSeVolume( spep_2 + 122, 1109, 0 );
stopSe( spep_2 + 122, SE10, 0 );
--後ろ飛ぶ3
SE11 = playSe( spep_2 + 108, 44 );
setSeVolume( spep_2 + 122, 44, 100 );
setSeVolume( spep_2 + 125, 44, 90 );
setSeVolume( spep_2 + 128, 44, 80 );
setSeVolume( spep_2 + 131, 44, 70 );
setSeVolume( spep_2 + 134, 44, 60 );
setSeVolume( spep_2 + 137, 44, 50 );
setSeVolume( spep_2 + 140, 44, 40 );
setSeVolume( spep_2 + 143, 44, 30 );
setSeVolume( spep_2 + 146, 44, 20 );
setSeVolume( spep_2 + 149, 44, 10 );
setSeVolume( spep_2 + 152, 44, 0 );
stopSe( spep_2 + 152, SE11, 0 );

--連続体当たり1
playSe( spep_2 + 130, 1141 );
setSeVolume( spep_2 + 130, 1141, 55 );
--連続体当たり2
playSe( spep_2 + 132, 1245 );
setSeVolume( spep_2 + 132, 1245, 25 );
--連続体当たり3
playSe( spep_2 + 133, 1031 );
--連続体当たり4
playSe( spep_2 + 135, 1032 );
setSeVolume( spep_2 + 135, 1032, 79 );
--連続体当たり5
playSe( spep_2 + 156, 1031 );
setSeVolume( spep_2 + 156, 1031, 80 );
--連続体当たり6
playSe( spep_2 + 156, 1245 );
setSeVolume( spep_2 + 156, 1245, 47 );
--連続体当たり7
playSe( spep_2 + 158, 1032 );
setSeVolume( spep_2 + 158, 1032, 73 );
--連続体当たり8
playSe( spep_2 + 174, 1031 );
setSeVolume( spep_2 + 174, 1031, 61 );
--連続体当たり9
playSe( spep_2 + 174, 1245 );
setSeVolume( spep_2 + 174, 1245, 35 );
--連続体当たり10
playSe( spep_2 + 176, 1032 );
setSeVolume( spep_2 + 176, 1032, 69 );
--連続体当たり11
playSe( spep_2 + 176, 1238 );
setSeVolume( spep_2 + 176, 1238, 72 );
--連続体当たり12
playSe( spep_2 + 184, 1245 );
setSeVolume( spep_2 + 184, 1245, 43 );
--連続体当たり13
playSe( spep_2 + 188, 1031 );
setSeVolume( spep_2 + 188, 1031, 79 );
--連続体当たり14
playSe( spep_2 + 190, 1032 );
setSeVolume( spep_2 + 190, 1032, 68 );
--連続体当たり15
playSe( spep_2 + 206, 1245 );
setSeVolume( spep_2 + 206, 1245, 37 );
--連続体当たり16
playSe( spep_2 + 208, 1031 );
setSeVolume( spep_2 + 208, 1031, 82 );
--連続体当たり17
playSe( spep_2 + 210, 1032 );
setSeVolume( spep_2 + 210, 1032, 86 );
--連続体当たり18
playSe( spep_2 + 218, 1245 );
setSeVolume( spep_2 + 218, 1245, 28 );
--連続体当たり19
playSe( spep_2 + 221, 1031 );
setSeVolume( spep_2 + 221, 1031, 63 );
--連続体当たり20
playSe( spep_2 + 223, 1032 );
setSeVolume( spep_2 + 223, 1032, 69 );
--連続体当たり21
playSe( spep_2 + 228, 1245 );
setSeVolume( spep_2 + 228, 1245, 50 );
--連続体当たり22
playSe( spep_2 + 231, 1031 );
setSeVolume( spep_2 + 231, 1031, 72 );
--連続体当たり23
playSe( spep_2 + 233, 1032 );
setSeVolume( spep_2 + 233, 1032, 58 );
--連続体当たり24
playSe( spep_2 + 236, 1245 );
setSeVolume( spep_2 + 236, 1245, 43 );
--連続体当たり25
playSe( spep_2 + 239, 1031 );
setSeVolume( spep_2 + 239, 1031, 56 );
--連続体当たり26
playSe( spep_2 + 241, 1032 );
setSeVolume( spep_2 + 241, 1032, 54 );
--連続体当たり27
playSe( spep_2 + 249, 1031 );
--連続体当たり28
playSe( spep_2 + 249, 1245 );
setSeVolume( spep_2 + 249, 1245, 43 );
--連続体当たり29
playSe( spep_2 + 251, 1032 );
setSeVolume( spep_2 + 251, 1032, 63 );
--連続体当たり30
playSe( spep_2 + 258, 1031 );
--連続体当たり31
playSe( spep_2 + 265, 1031 );
setSeVolume( spep_2 + 265, 1031, 71 );
--連続体当たり32
playSe( spep_2 + 267, 1032 );
setSeVolume( spep_2 + 267, 1032, 84 );
--連続体当たり33
playSe( spep_2 + 267, 1245 );
setSeVolume( spep_2 + 267, 1245, 45 );
--連続体当たり34
playSe( spep_2 + 273, 1032 );
setSeVolume( spep_2 + 273, 1032, 56 );
--連続体当たり35
playSe( spep_2 + 275, 1141 );
setSeVolume( spep_2 + 275, 1141, 50 );
--連続体当たり36
playSe( spep_2 + 280, 1031 );
setSeVolume( spep_2 + 280, 1031, 71 );
--連続体当たり37
playSe( spep_2 + 282, 1032 );
setSeVolume( spep_2 + 282, 1032, 68 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 312, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 133, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 300, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2+ 312;

------------------------------------------------------
-- 手アップ→引っかき(52F)
------------------------------------------------------

-- ** エフェクト等 ** --
handup = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); --手アップ→引っかき(ef_004)
setEffMoveKey(   spep_3 +  0, handup, 0, 0, 0 );
setEffMoveKey(   spep_3 + 52, handup, 0, 0, 0 );
setEffScaleKey(  spep_3 +  0, handup, 1.0, 1.0 );
setEffScaleKey(  spep_3 + 52, handup, 1.0, 1.0 );
setEffRotateKey( spep_3 +  0, handup, 0 );
setEffRotateKey( spep_3 + 52, handup, 0 );
setEffAlphaKey(  spep_3 +  0, handup, 255 );
setEffAlphaKey(  spep_3 + 52, handup, 255 );

-- ** 音 ** --
--振りかぶる1
SE12 = playSe( spep_3 + 5, 1116 );
setSeVolume( spep_3 + 34, 1116, 100 );
setSeVolume( spep_3 + 35, 1116, 95 );
setSeVolume( spep_3 + 36, 1116, 90 );
setSeVolume( spep_3 + 37, 1116, 80 );
setSeVolume( spep_3 + 38, 1116, 70 );
setSeVolume( spep_3 + 39, 1116, 60 );
setSeVolume( spep_3 + 40, 1116, 50 );
setSeVolume( spep_3 + 41, 1116, 40 );
setSeVolume( spep_3 + 42, 1116, 30 );
setSeVolume( spep_3 + 43, 1116, 20 );
setSeVolume( spep_3 + 44, 1116, 10 );
setSeVolume( spep_3 + 45, 1116, 5 );
setSeVolume( spep_3 + 46, 1116, 0 );
stopSe( spep_3 + 46, SE12, 0 );

--振りかぶる2
SE13 = playSe( spep_3 + 15, 1190 );
setSeVolume( spep_3 + 14, 1190,  0 );
setSeVolume( spep_3 + 15, 1190,  9 );
setSeVolume( spep_3 + 17, 1190, 17 );
setSeVolume( spep_3 + 19, 1190, 26 );
setSeVolume( spep_3 + 21, 1190, 35 );
setSeVolume( spep_3 + 23, 1190, 44 );
setSeVolume( spep_3 + 25, 1190, 53 );
setSeVolume( spep_3 + 27, 1190, 62 );
setSeVolume( spep_3 + 36, 1190, 62 );
setSeVolume( spep_3 + 38, 1190, 53 );
setSeVolume( spep_3 + 40, 1190, 44 );
setSeVolume( spep_3 + 42, 1190, 35 );
setSeVolume( spep_3 + 44, 1190, 26 );
setSeVolume( spep_3 + 46, 1190, 17 );
setSeVolume( spep_3 + 48, 1190, 9 );
setSeVolume( spep_3 + 49, 1190, 0  );
stopSe( spep_3 + 49, SE13, 0 );

--振りかぶる3
playSe( spep_3 + 28, 1004 );


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 312, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 42, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3+ 52;

------------------------------------------------------
-- ラストシーン：敵より前~敵より後ろ(124)
------------------------------------------------------
-- ** エフェクト等 ** --
last_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); --ラストシーン：敵より前(ef_005)
setEffMoveKey(   spep_4 +   0, last_f, 0, 0, 0 );
setEffMoveKey(   spep_4 + 126, last_f, 0, 0, 0 );
setEffScaleKey(  spep_4 +   0, last_f, 1.0, 1.0 );
setEffScaleKey(  spep_4 + 126, last_f, 1.0, 1.0 );
setEffRotateKey( spep_4 +   0, last_f, 0 );
setEffRotateKey( spep_4 + 126, last_f, 0 );
setEffAlphaKey(  spep_4 +   0, last_f, 255 );
setEffAlphaKey(  spep_4 + 126, last_f, 255 );

-- ** エフェクト等 ** --
last_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --ラストシーン：敵より後ろ(ef_006)
setEffMoveKey(   spep_4 +   0, last_b, 0, 0, 0 );
setEffMoveKey(   spep_4 + 126, last_b, 0, 0, 0 );
setEffScaleKey(  spep_4 +   0, last_b, 1.0, 1.0 );
setEffScaleKey(  spep_4 + 126, last_b, 1.0, 1.0 );
setEffRotateKey( spep_4 +   0, last_b, 0 );
setEffRotateKey( spep_4 + 126, last_b, 0 );
setEffAlphaKey(  spep_4 +   0, last_b, 255 );
setEffAlphaKey(  spep_4 + 126, last_b, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 + 6,  906, 119, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake(     spep_4 +   6, shuchusen5, 120, 25 );
setEffMoveKey(   spep_4 +   6, shuchusen5, -50, -100 , 0 );
setEffMoveKey(   spep_4 + 125, shuchusen5, -50, -100 , 0 );
setEffScaleKey(  spep_4 +   6, shuchusen5, 1.4, 1.4 );
setEffScaleKey(  spep_4 + 125, shuchusen5, 1.4, 1.4 );
setEffRotateKey( spep_4 +   6, shuchusen5, 0 );
setEffRotateKey( spep_4 + 125, shuchusen5, 0 );
setEffAlphaKey(  spep_4 +   6, shuchusen5, 255 );
setEffAlphaKey(  spep_4 + 125, shuchusen5, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 +   0, 1, 1 );
setDisp( spep_4 + 126, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4    + 0, 1, 170.8, -203.9 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 162.6, -205 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 172.4, -198.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 166.2, -199.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 177.9, -208.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 169.7, -209.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 179.5, -202.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 173.3, -203.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 185, -212.5 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 175.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 183.5, -204.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 175.8, -204.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 186.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 176.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 176.6, -212.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 176.8, -212.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 177.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 177.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 177.6, -212.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 177.8, -212.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 178.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 178.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 178.6, -212.5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 178.9, -212.5 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 179.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 179.4, -212.5 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 179.6, -212.5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 179.9, -212.5 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 180.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 180.4, -212.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 180.6, -212.5 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 180.9, -212.5 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 181.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 181.4, -212.5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 181.7, -212.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 181.9, -212.5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 182.2, -212.5 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 182.4, -212.5 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 182.7, -212.5 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 182.9, -212.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 183.2, -212.5 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 183.4, -212.5 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 183.7, -212.5 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 184, -212.5 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 184.2, -212.5 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 184.5, -212.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 184.7, -212.5 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 185, -212.5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 185.2, -212.5 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 185.5, -212.5 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 185.7, -212.5 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 186, -212.5 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 186.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 186.5, -212.5 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 186.8, -212.5 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 187, -212.5 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 187.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 187.5, -212.5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 187.8, -212.5 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 188, -212.5 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 188.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 188.5, -212.5 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 188.8, -212.5 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 189.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 129, 1, 189.1, -212.5 , 0 );

setScaleKey( spep_4    + 0, 1, 1.17, 1.17 );
setScaleKey( spep_4 -3 + 4, 1, 1.14, 1.14 );
setScaleKey( spep_4 -3 + 6, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 8, 1, 1.09, 1.09 );
setScaleKey( spep_4 -3 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 12, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 14, 1, 1.01, 1.01 );
setScaleKey( spep_4 -3 + 16, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 18, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 20, 1, 0.955, 0.955 );
setScaleKey( spep_4 -3 + 32, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 34, 1, 0.945, 0.945 );
setScaleKey( spep_4 -3 + 46, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 48, 1, 0.935, 0.935 );
setScaleKey( spep_4 -3 + 62, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 64, 1, 0.925, 0.925 );
setScaleKey( spep_4 -3 + 76, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 78, 1, 0.915, 0.915 );
setScaleKey( spep_4 -3 + 90, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 92, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 106, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 108, 1, 0.895, 0.895 );
setScaleKey( spep_4 -3 + 120, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 122, 1, 0.885, 0.885 );
setScaleKey( spep_4 -3 + 129, 1, 0.88, 0.88 );

setRotateKey( spep_4    + 0, 1, -38.3 );
setRotateKey( spep_4 -3 + 129, 1, -38.3 );

-- ** 音 ** --
--ラストひっかき1	
playSe( spep_4 + 0, 1061 );
setSeVolume( spep_4 + 0, 1061, 37 );
--ラストひっかき2
playSe( spep_4 + 0, 1178 );
setSeVolume( spep_4 + 0, 1178, 49 );
--ラストひっかき3
playSe( spep_4 + 0, 1169 );
setSeVolume( spep_4 + 0, 1169, 65 );
--ラストひっかき4
playSe( spep_4 + 2, 1026 );
setSeVolume( spep_4 + 2, 1026, 46 );
--ラストひっかき5
playSe( spep_4 + 4, 1032 );
setSeVolume( spep_4 + 4, 1032, 81 );
--ラストひっかき6
playSe( spep_4 + 4, 1060 );
setSeVolume( spep_4 + 4, 1060, 64 );
--ラストひっかき7
playSe( spep_4 + 6, 1031 );
setSeVolume( spep_4 + 6, 1031, 76 );
--ラストひっかき8
playSe( spep_4 + 9, 1238 );
setSeVolume( spep_4 + 9, 1238, 23 );
--ラストひっかき9
playSe( spep_4 + 10, 1179 );
setSeVolume( spep_4 + 10, 1179, 32 );
--ラストひっかき10
playSe( spep_4 + 10, 1032 );
setSeVolume( spep_4 + 10, 1032, 85 );
--ラストひっかき11
playSe( spep_4 + 27, 1192 );
setSeVolume( spep_4 + 27, 1192, 158 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 126, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--終わり
dealDamage( spep_4 +26 );
endPhase( spep_4 + 124 ); --126

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
--speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
--playSe( spep_1 + 0, SE_05 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1+ 94;

------------------------------------------------------
-- 引っかき、高速攻撃(312)
------------------------------------------------------

-- ** エフェクト等 ** --
hikkaki_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 ); --引っかき、高速攻撃；敵より前(ef_002)
setEffMoveKey(   spep_2 + 0, hikkaki_f, 0, 0, 0 );
setEffMoveKey(   spep_2 + 312, hikkaki_f, 0, 0, 0 );
setEffScaleKey(  spep_2 + 0, hikkaki_f, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 312, hikkaki_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hikkaki_f, 0 );
setEffRotateKey( spep_2 + 312, hikkaki_f, 0 );
setEffAlphaKey(  spep_2 + 0, hikkaki_f, 255 );
setEffAlphaKey(  spep_2 + 312, hikkaki_f, 255 );

-- ** エフェクト等 ** --
hikkaki_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --引っかき、高速攻撃；敵より後ろ(ef_003)
setEffMoveKey(   spep_2 + 0, hikkaki_b, 0, 0, 0 );
setEffMoveKey(   spep_2 + 312, hikkaki_b, 0, 0, 0 );
setEffScaleKey(  spep_2 + 0, hikkaki_b, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 312, hikkaki_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hikkaki_b, 0 );
setEffRotateKey( spep_2 + 312, hikkaki_b, 0 );
setEffAlphaKey(  spep_2 + 0, hikkaki_b, 255 );
setEffAlphaKey(  spep_2 + 312, hikkaki_b, 255 );

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

shuchusen3 = entryEffectLife( spep_2 + 69,  906, 29, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake(     spep_2 + 69, shuchusen3, 29, 25 );
setEffMoveKey(   spep_2 + 69, shuchusen3, 0, -100 , 0 );
setEffMoveKey(   spep_2 + 98, shuchusen3, 0, -100 , 0 );
setEffScaleKey(  spep_2 + 69, shuchusen3, 1.45, 1.8 );
setEffScaleKey(  spep_2 + 98, shuchusen3, 1.45, 1.8 );
setEffRotateKey( spep_2 + 69, shuchusen3, 0 );
setEffRotateKey( spep_2 + 98, shuchusen3, 0 );
setEffAlphaKey(  spep_2 + 69, shuchusen3, 255 );
setEffAlphaKey(  spep_2 + 98, shuchusen3, 255 );

shuchusen4 = entryEffectLife( spep_2 + 127,  906, 184, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake(     spep_2 + 127, shuchusen4, 184, 25 );
setEffMoveKey(   spep_2 + 127, shuchusen4, 0, -100 , 0 );
setEffMoveKey(   spep_2 + 311, shuchusen4, 0, -100 , 0 );
setEffScaleKey(  spep_2 + 127, shuchusen4, 1.45, 1.8 );
setEffScaleKey(  spep_2 + 311, shuchusen4, 1.45, 1.8 );
setEffRotateKey( spep_2 + 127, shuchusen4, 0 );
setEffRotateKey( spep_2 + 311, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 127, shuchusen4, 255 );
setEffAlphaKey(  spep_2 + 311, shuchusen4, 255 );

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

ctzan2 = entryEffectLife( spep_2 -3 + 72,  10010, 26, 0x100, -1, 0, -64.8, 32.6 ); --ザンッ
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
setEffMoveKey(   spep_2 -3 + 98, ctzan2, 117.8, 164.5 , 0 );
setEffScaleKey(  spep_2 -3 + 72, ctzan2, 0.74, 0.74 );
setEffScaleKey(  spep_2 -3 + 74, ctzan2, 1.27, 1.27 );
setEffScaleKey(  spep_2 -3 + 76, ctzan2, 1.8, 1.8 );
setEffScaleKey(  spep_2 -3 + 98, ctzan2, 1.8, 1.8 );
setEffRotateKey( spep_2 -3 + 72, ctzan2, -9.8 );
setEffRotateKey( spep_2 -3 + 74, ctzan2, -10 );
setEffRotateKey( spep_2 -3 + 98, ctzan2, -10 );
setEffAlphaKey(  spep_2 -3 + 72, ctzan2, 255 );
setEffAlphaKey(  spep_2 -3 + 98, ctzan2, 255 );

ctzan3 = entryEffectLife( spep_2 -3 + 136,  10010, 14, 0x100, -1, 0, -74.8, -27.4 ); --ザンッ
setEffMoveKey(   spep_2 -3 + 136, ctzan3, -74.8, -27.4 , 0 );
setEffMoveKey(   spep_2 -3 + 138, ctzan3, -54.9, 3.7 , 0 );
setEffMoveKey(   spep_2 -3 + 140, ctzan3, -34.9, 34.8 , 0 );
setEffMoveKey(   spep_2 -3 + 142, ctzan3, -18.3, 44.8 , 0 );
setEffMoveKey(   spep_2 -3 + 144, ctzan3, -1.6, 54.8 , 0 );
setEffMoveKey(   spep_2 -3 + 146, ctzan3, 15.1, 64.8 , 0 );
setEffMoveKey(   spep_2 -3 + 148, ctzan3, 117.8, 114.5 , 0 );
setEffMoveKey(   spep_2 -3 + 148, ctzan3, 117.8, 114.5 , 0 );
setEffMoveKey(   spep_2 -3 + 150, ctzan3, 117.8, 114.5 , 0 );
setEffScaleKey(  spep_2 -3 + 136, ctzan3, 0.6, 0.6 );
setEffScaleKey(  spep_2 -3 + 138, ctzan3, 1.05, 1.05 );
setEffScaleKey(  spep_2 -3 + 140, ctzan3, 1.5, 1.5 );
setEffScaleKey(  spep_2 -3 + 150, ctzan3, 1.5, 1.5 );
setEffRotateKey( spep_2 -3 + 136, ctzan3, -9.8 );
setEffRotateKey( spep_2 -3 + 138, ctzan3, -5 );
setEffRotateKey( spep_2 -3 + 140, ctzan3, 0 );
setEffRotateKey( spep_2 -3 + 150, ctzan3, 0 );
setEffAlphaKey(  spep_2 -3 + 136, ctzan3, 255 );
setEffAlphaKey(  spep_2 -3 + 150, ctzan3, 255 );

ctzudo = entryEffectLife( spep_2 -3 + 156,  10014, 158, 0x100, -1, 0, -4.5, 123.5 ); --ズドドドッ
--setEffShake(   spep_2 -3 + 156, ctzudo, 159, 5 );
setEffMoveKey(   spep_2 -3 + 156, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 158, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 160, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 162, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 164, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 166, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 166, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 168, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 170, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 172, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 174, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 176, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 178, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 180, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 182, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 184, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 186, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 188, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 190, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 192, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 194, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 196, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 198, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 200, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 202, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 204, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 206, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 208, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 210, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 212, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 214, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 216, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 218, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 220, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 222, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 224, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 226, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 228, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 230, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 232, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 234, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 236, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 238, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 240, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 242, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 244, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 246, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 248, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 250, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 252, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 254, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 256, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 258, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 260, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 262, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 264, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 266, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 268, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 270, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 272, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 274, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 276, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 278, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 280, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 282, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 284, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 286, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 288, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 290, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 292, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 294, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 296, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 298, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 300, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 302, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 304, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 306, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 308, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 310, ctzudo,  2.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 312, ctzudo, -4.5, 123.5 , 0 );
setEffMoveKey(   spep_2 -3 + 314, ctzudo,  2.5, 123.5 , 0 );
setEffScaleKey(  spep_2 -3 + 156, ctzudo, 1.80, 1.80 );
setEffScaleKey(  spep_2 -3 + 314, ctzudo, 1.80, 1.80 );
setEffRotateKey( spep_2 -3 + 156, ctzudo, -20 );
setEffRotateKey( spep_2 -3 + 314, ctzudo, -20 );
setEffAlphaKey(  spep_2 -3 + 156, ctzudo, 255 );
setEffAlphaKey(  spep_2 -3 + 314, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 +   0, 1, 1 );
setDisp( spep_2 + 312, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 10, 1, 108 );
changeAnime( spep_2 -3 + 30, 1, 106 );
changeAnime( spep_2 -3 + 44, 1, 108 );
changeAnime( spep_2 -3 + 56, 1, 106 );
changeAnime( spep_2 -3 + 72, 1, 108 );
changeAnime( spep_2 -3 + 108, 1, 106 );
changeAnime( spep_2 -3 + 138, 1, 108 );
changeAnime( spep_2 -3 + 156, 1, 106 );
changeAnime( spep_2 -3 + 174, 1, 108 );
changeAnime( spep_2 -3 + 188, 1, 106 );
changeAnime( spep_2 -3 + 208, 1, 108 );
changeAnime( spep_2 -3 + 220, 1, 106 );
changeAnime( spep_2 -3 + 230, 1, 108 );
changeAnime( spep_2 -3 + 238, 1, 106 );
changeAnime( spep_2 -3 + 248, 1, 108 );
changeAnime( spep_2 -3 + 258, 1, 106 );
changeAnime( spep_2 -3 + 266, 1, 108 );
changeAnime( spep_2 -3 + 272, 1, 106 );
changeAnime( spep_2 -3 + 282, 1, 108 );
changeAnime( spep_2 -3 + 315, 1, 108 );

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
setMoveKey( spep_2 -3 + 52, 1, 108.8, -205.2 , 0 );
setMoveKey( spep_2 -3 + 55, 1, 108.8, -199.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 72.8, -200.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 75.2, -206.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 77.6, -212.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 79.9, -218 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 82.3, -223.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 84.6, -229.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 87, -235.3 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 89.3, -241 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 127.9, -245.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 122.2, -256.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 146.5, -236.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 145.8, -237.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 145.1, -238.2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 144.3, -238.9 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 143.6, -239.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 142.9, -240.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 142.2, -241.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 141.5, -242 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 140.7, -242.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 140, -243.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 139.3, -244.2 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 138.6, -245 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 137.9, -245.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 137.1, -246.5 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 134.8, -248.9 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 132.5, -251.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 103.6, -247.3 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 103.6, -247.3 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 103.6, -247.2 , 0 );
setMoveKey( spep_2 -3 + 137, 1, 103.6, -247.2 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 129.3, -272.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 90, -274.3 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 109.2, -263.9 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 111.4, -261.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 113.7, -259.3 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 116, -257.1 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 118.3, -254.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 120.5, -252.5 , 0 );
setMoveKey( spep_2 -3 + 155, 1, 122.8, -250.2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 67.6, -219.3 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 24.6, -234.5 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 28.9, -224.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 16.4, -221.9 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 3.9, -219.6 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -8.6, -217.3 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -21.1, -215.1 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -33.6, -212.8 , 0 );
setMoveKey( spep_2 -3 + 173, 1, -46.1, -210.5 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 34.2, -213.2 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 11.9, -228 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 34.9, -226 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 40.9, -232 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 47, -238.1 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 53.1, -244.2 , 0 );
setMoveKey( spep_2 -3 + 187, 1, 59.1, -250.2 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 7.3, -226.3 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -30.2, -230.1 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -24.3, -213.4 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -36.5, -197.4 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -46.3, -196.3 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -58.5, -180.2 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -68.2, -179.2 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -80.4, -163.1 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -90.1, -162 , 0 );
setMoveKey( spep_2 -3 + 207, 1, -80.3, -154.7 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -36.5, -199.9 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 24, -202.9 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 47.5, -220.7 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 68.5, -223.6 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 92, -241.4 , 0 );
setMoveKey( spep_2 -3 + 219, 1, 112.9, -244.2 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 53.4, -225 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 4.3, -234.9 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -1.3, -221.4 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -25, -208.5 , 0 );
setMoveKey( spep_2 -3 + 229, 1, -46.1, -210.5 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 32.5, -206.5 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 18, -234.1 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 45.7, -230.6 , 0 );
setMoveKey( spep_2 -3 + 237, 1, 59.1, -250.2 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 7.4, -223.2 , 0 );
setMoveKey( spep_2 -3 + 240, 1, -41.2, -221.5 , 0 );
setMoveKey( spep_2 -3 + 242, 1, -47.5, -188.8 , 0 );
setMoveKey( spep_2 -3 + 244, 1, -68.2, -179.2 , 0 );
setMoveKey( spep_2 -3 + 247, 1, -91.4, -154.5 , 0 );
setMoveKey( spep_2 -3 + 248, 1, -9.3, -182.5 , 0 );
setMoveKey( spep_2 -3 + 250, 1, -2.7, -213.4 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 47.5, -220.7 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 79.6, -228.7 , 0 );
setMoveKey( spep_2 -3 + 257, 1, 114.2, -251.7 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 42.3, -224.8 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 13.7, -225 , 0 );
setMoveKey( spep_2 -3 + 262, 1, -17.5, -210.3 , 0 );
setMoveKey( spep_2 -3 + 265, 1, -46.1, -210.5 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 21.5, -206.3 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 40.9, -232 , 0 );
setMoveKey( spep_2 -3 + 271, 1, 57.9, -242.7 , 0 );
setMoveKey( spep_2 -3 + 272, 1, -2.4, -230.5 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -25.6, -205.9 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -46.3, -196.3 , 0 );
setMoveKey( spep_2 -3 + 278, 1, -69.4, -171.7 , 0 );
setMoveKey( spep_2 -3 + 281, 1, -90.1, -162 , 0 );
setMoveKey( spep_2 -3 + 282, 1, -20.4, -182.3 , 0 );
setMoveKey( spep_2 -3 + 284, 1, -10.8, -193.6 , 0 );
setMoveKey( spep_2 -3 + 286, 1, -3.7, -190 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 5.9, -201.4 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 12.9, -197.8 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 22.5, -209.1 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 29.6, -205.5 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 39.2, -216.9 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 46.3, -213.2 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 55.8, -224.6 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 62.9, -221 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 72.5, -232.4 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 79.6, -228.7 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 89.2, -240.1 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 96.3, -236.5 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 105.8, -247.8 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 112.9, -244.2 , 0 );
setMoveKey( spep_2 -3 + 315, 1, 112.9, -244.2 , 0 );

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
setScaleKey( spep_2 -3 + 107, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 108, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 137, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 138, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 140, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 155, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 156, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 158, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 173, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 174, 1, 1.24, 1.24 );
setScaleKey( spep_2 -3 + 176, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 187, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 188, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 190, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 207, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 208, 1, 1.19, 1.19 );
setScaleKey( spep_2 -3 + 210, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 212, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 214, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 216, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 219, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 220, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 229, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 230, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 237, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 238, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 247, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 248, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 250, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 252, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 254, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 257, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 258, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 265, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 266, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 271, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 272, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 281, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 282, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 286, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 288, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 292, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 294, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 298, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 300, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 304, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 306, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 308, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 310, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 315, 1, 1.1, 1.1 );

setRotateKey( spep_2    + 0, 1, 0 );
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
setRotateKey( spep_2 -3 + 74, 1, -0.9 );
setRotateKey( spep_2 -3 + 76, 1, 2.9 );
setRotateKey( spep_2 -3 + 78, 1, 2.7 );
setRotateKey( spep_2 -3 + 80, 1, 2.5 );
setRotateKey( spep_2 -3 + 82, 1, 2.2 );
setRotateKey( spep_2 -3 + 84, 1, 2 );
setRotateKey( spep_2 -3 + 86, 1, 1.7 );
setRotateKey( spep_2 -3 + 88, 1, 1.5 );
setRotateKey( spep_2 -3 + 90, 1, 1.2 );
setRotateKey( spep_2 -3 + 92, 1, 1 );
setRotateKey( spep_2 -3 + 94, 1, 0.7 );
setRotateKey( spep_2 -3 + 96, 1, 0.5 );
setRotateKey( spep_2 -3 + 98, 1, 0.2 );
setRotateKey( spep_2 -3 + 100, 1, 0 );
setRotateKey( spep_2 -3 + 102, 1, -0.3 );
setRotateKey( spep_2 -3 + 104, 1, -1.1 );
setRotateKey( spep_2 -3 + 107, 1, -2 );
setRotateKey( spep_2 -3 + 108, 1, -45.9 );
setRotateKey( spep_2 -3 + 137, 1, -45.9 );
setRotateKey( spep_2 -3 + 138, 1, -4.8 );
setRotateKey( spep_2 -3 + 155, 1, -4.8 );
setRotateKey( spep_2 -3 + 156, 1, -63.6 );
setRotateKey( spep_2 -3 + 158, 1, -65 );
setRotateKey( spep_2 -3 + 160, 1, -66.4 );
setRotateKey( spep_2 -3 + 162, 1, -67.7 );
setRotateKey( spep_2 -3 + 164, 1, -69.1 );
setRotateKey( spep_2 -3 + 166, 1, -70.5 );
setRotateKey( spep_2 -3 + 168, 1, -71.8 );
setRotateKey( spep_2 -3 + 170, 1, -73.2 );
setRotateKey( spep_2 -3 + 173, 1, -74.6 );
setRotateKey( spep_2 -3 + 174, 1, -4.8 );
setRotateKey( spep_2 -3 + 187, 1, -4.8 );
setRotateKey( spep_2 -3 + 188, 1, -46.6 );
setRotateKey( spep_2 -3 + 190, 1, -48.4 );
setRotateKey( spep_2 -3 + 192, 1, -50.2 );
setRotateKey( spep_2 -3 + 194, 1, -51.9 );
setRotateKey( spep_2 -3 + 196, 1, -53.7 );
setRotateKey( spep_2 -3 + 198, 1, -55.5 );
setRotateKey( spep_2 -3 + 200, 1, -57.3 );
setRotateKey( spep_2 -3 + 202, 1, -59 );
setRotateKey( spep_2 -3 + 204, 1, -60.8 );
setRotateKey( spep_2 -3 + 207, 1, -60.8 );
setRotateKey( spep_2 -3 + 208, 1, -11 );
setRotateKey( spep_2 -3 + 210, 1, -4.4 );
setRotateKey( spep_2 -3 + 212, 1, -1.1 );
setRotateKey( spep_2 -3 + 214, 1, 2.2 );
setRotateKey( spep_2 -3 + 216, 1, 5.5 );
setRotateKey( spep_2 -3 + 219, 1, 8.8 );
setRotateKey( spep_2 -3 + 220, 1, -59.1 );
setRotateKey( spep_2 -3 + 222, 1, -63 );
setRotateKey( spep_2 -3 + 224, 1, -66.9 );
setRotateKey( spep_2 -3 + 226, 1, -70.7 );
setRotateKey( spep_2 -3 + 229, 1, -74.6 );
setRotateKey( spep_2 -3 + 230, 1, -4.8 );
setRotateKey( spep_2 -3 + 237, 1, -4.8 );
setRotateKey( spep_2 -3 + 238, 1, -46.6 );
setRotateKey( spep_2 -3 + 240, 1, -50.2 );
setRotateKey( spep_2 -3 + 242, 1, -53.7 );
setRotateKey( spep_2 -3 + 244, 1, -57.3 );
setRotateKey( spep_2 -3 + 247, 1, -60.8 );
setRotateKey( spep_2 -3 + 248, 1, -11 );
setRotateKey( spep_2 -3 + 250, 1, -6 );
setRotateKey( spep_2 -3 + 252, 1, -1.1 );
setRotateKey( spep_2 -3 + 254, 1, 3.8 );
setRotateKey( spep_2 -3 + 257, 1, 8.8 );
setRotateKey( spep_2 -3 + 258, 1, -59.1 );
setRotateKey( spep_2 -3 + 260, 1, -64.3 );
setRotateKey( spep_2 -3 + 262, 1, -69.4 );
setRotateKey( spep_2 -3 + 265, 1, -74.6 );
setRotateKey( spep_2 -3 + 266, 1, -4.8 );
setRotateKey( spep_2 -3 + 271, 1, -4.8 );
setRotateKey( spep_2 -3 + 272, 1, -46.6 );
setRotateKey( spep_2 -3 + 274, 1, -50.2 );
setRotateKey( spep_2 -3 + 276, 1, -53.7 );
setRotateKey( spep_2 -3 + 278, 1, -57.3 );
setRotateKey( spep_2 -3 + 281, 1, -60.8 );
setRotateKey( spep_2 -3 + 282, 1, -11 );
setRotateKey( spep_2 -3 + 284, 1, -9.8 );
setRotateKey( spep_2 -3 + 286, 1, -8.5 );
setRotateKey( spep_2 -3 + 288, 1, -7.3 );
setRotateKey( spep_2 -3 + 290, 1, -6 );
setRotateKey( spep_2 -3 + 292, 1, -4.8 );
setRotateKey( spep_2 -3 + 294, 1, -3.6 );
setRotateKey( spep_2 -3 + 296, 1, -2.3 );
setRotateKey( spep_2 -3 + 298, 1, -1.1 );
setRotateKey( spep_2 -3 + 300, 1, 0.1 );
setRotateKey( spep_2 -3 + 302, 1, 1.4 );
setRotateKey( spep_2 -3 + 304, 1, 2.6 );
setRotateKey( spep_2 -3 + 306, 1, 3.8 );
setRotateKey( spep_2 -3 + 308, 1, 5.1 );
setRotateKey( spep_2 -3 + 310, 1, 6.3 );
setRotateKey( spep_2 -3 + 312, 1, 7.6 );
setRotateKey( spep_2 -3 + 314, 1, 8.8 );
setRotateKey( spep_2 -3 + 315, 1, 8.8 );

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
setSeVolume( spep_2 + 39, 1169, 83 );
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

--後ろ飛ぶ1
playSe( spep_2 + 105, 1108 );
setSeVolume( spep_2 + 105, 1108, 158 );
--後ろ飛ぶ2
SE10 = playSe( spep_2 + 105, 1109 );
setSeVolume( spep_2 + 105, 1109, 58 );
setSeVolume( spep_2 + 107, 1109, 52 );
setSeVolume( spep_2 + 109, 1109, 46 );
setSeVolume( spep_2 + 111, 1109, 40 );
setSeVolume( spep_2 + 113, 1109, 34 );
setSeVolume( spep_2 + 115, 1109, 28 );
setSeVolume( spep_2 + 117, 1109, 22 );
setSeVolume( spep_2 + 119, 1109, 16 );
setSeVolume( spep_2 + 120, 1109, 10 );
setSeVolume( spep_2 + 121, 1109, 4 );
setSeVolume( spep_2 + 122, 1109, 0 );
stopSe( spep_2 + 122, SE10, 0 );
--後ろ飛ぶ3
SE11 = playSe( spep_2 + 108, 44 );
setSeVolume( spep_2 + 122, 44, 100 );
setSeVolume( spep_2 + 125, 44, 90 );
setSeVolume( spep_2 + 128, 44, 80 );
setSeVolume( spep_2 + 131, 44, 70 );
setSeVolume( spep_2 + 134, 44, 60 );
setSeVolume( spep_2 + 137, 44, 50 );
setSeVolume( spep_2 + 140, 44, 40 );
setSeVolume( spep_2 + 143, 44, 30 );
setSeVolume( spep_2 + 146, 44, 20 );
setSeVolume( spep_2 + 149, 44, 10 );
setSeVolume( spep_2 + 152, 44, 0 );
stopSe( spep_2 + 152, SE11, 0 );

--連続体当たり1
playSe( spep_2 + 130, 1141 );
setSeVolume( spep_2 + 130, 1141, 55 );
--連続体当たり2
playSe( spep_2 + 132, 1245 );
setSeVolume( spep_2 + 132, 1245, 25 );
--連続体当たり3
playSe( spep_2 + 133, 1031 );
--連続体当たり4
playSe( spep_2 + 135, 1032 );
setSeVolume( spep_2 + 135, 1032, 79 );
--連続体当たり5
playSe( spep_2 + 156, 1031 );
setSeVolume( spep_2 + 156, 1031, 80 );
--連続体当たり6
playSe( spep_2 + 156, 1245 );
setSeVolume( spep_2 + 156, 1245, 47 );
--連続体当たり7
playSe( spep_2 + 158, 1032 );
setSeVolume( spep_2 + 158, 1032, 73 );
--連続体当たり8
playSe( spep_2 + 174, 1031 );
setSeVolume( spep_2 + 174, 1031, 61 );
--連続体当たり9
playSe( spep_2 + 174, 1245 );
setSeVolume( spep_2 + 174, 1245, 35 );
--連続体当たり10
playSe( spep_2 + 176, 1032 );
setSeVolume( spep_2 + 176, 1032, 69 );
--連続体当たり11
playSe( spep_2 + 176, 1238 );
setSeVolume( spep_2 + 176, 1238, 72 );
--連続体当たり12
playSe( spep_2 + 184, 1245 );
setSeVolume( spep_2 + 184, 1245, 43 );
--連続体当たり13
playSe( spep_2 + 188, 1031 );
setSeVolume( spep_2 + 188, 1031, 79 );
--連続体当たり14
playSe( spep_2 + 190, 1032 );
setSeVolume( spep_2 + 190, 1032, 68 );
--連続体当たり15
playSe( spep_2 + 206, 1245 );
setSeVolume( spep_2 + 206, 1245, 37 );
--連続体当たり16
playSe( spep_2 + 208, 1031 );
setSeVolume( spep_2 + 208, 1031, 82 );
--連続体当たり17
playSe( spep_2 + 210, 1032 );
setSeVolume( spep_2 + 210, 1032, 86 );
--連続体当たり18
playSe( spep_2 + 218, 1245 );
setSeVolume( spep_2 + 218, 1245, 28 );
--連続体当たり19
playSe( spep_2 + 221, 1031 );
setSeVolume( spep_2 + 221, 1031, 63 );
--連続体当たり20
playSe( spep_2 + 223, 1032 );
setSeVolume( spep_2 + 223, 1032, 69 );
--連続体当たり21
playSe( spep_2 + 228, 1245 );
setSeVolume( spep_2 + 228, 1245, 50 );
--連続体当たり22
playSe( spep_2 + 231, 1031 );
setSeVolume( spep_2 + 231, 1031, 72 );
--連続体当たり23
playSe( spep_2 + 233, 1032 );
setSeVolume( spep_2 + 233, 1032, 58 );
--連続体当たり24
playSe( spep_2 + 236, 1245 );
setSeVolume( spep_2 + 236, 1245, 43 );
--連続体当たり25
playSe( spep_2 + 239, 1031 );
setSeVolume( spep_2 + 239, 1031, 56 );
--連続体当たり26
playSe( spep_2 + 241, 1032 );
setSeVolume( spep_2 + 241, 1032, 54 );
--連続体当たり27
playSe( spep_2 + 249, 1031 );
--連続体当たり28
playSe( spep_2 + 249, 1245 );
setSeVolume( spep_2 + 249, 1245, 43 );
--連続体当たり29
playSe( spep_2 + 251, 1032 );
setSeVolume( spep_2 + 251, 1032, 63 );
--連続体当たり30
playSe( spep_2 + 258, 1031 );
--連続体当たり31
playSe( spep_2 + 265, 1031 );
setSeVolume( spep_2 + 265, 1031, 71 );
--連続体当たり32
playSe( spep_2 + 267, 1032 );
setSeVolume( spep_2 + 267, 1032, 84 );
--連続体当たり33
playSe( spep_2 + 267, 1245 );
setSeVolume( spep_2 + 267, 1245, 45 );
--連続体当たり34
playSe( spep_2 + 273, 1032 );
setSeVolume( spep_2 + 273, 1032, 56 );
--連続体当たり35
playSe( spep_2 + 275, 1141 );
setSeVolume( spep_2 + 275, 1141, 50 );
--連続体当たり36
playSe( spep_2 + 280, 1031 );
setSeVolume( spep_2 + 280, 1031, 71 );
--連続体当たり37
playSe( spep_2 + 282, 1032 );
setSeVolume( spep_2 + 282, 1032, 68 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 312, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 133, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 300, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2+ 312;

------------------------------------------------------
-- 手アップ→引っかき(52F)
------------------------------------------------------

-- ** エフェクト等 ** --
handup = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); --手アップ→引っかき(ef_004)
setEffMoveKey(   spep_3 +  0, handup, 0, 0, 0 );
setEffMoveKey(   spep_3 + 52, handup, 0, 0, 0 );
setEffScaleKey(  spep_3 +  0, handup, 1.0, 1.0 );
setEffScaleKey(  spep_3 + 52, handup, 1.0, 1.0 );
setEffRotateKey( spep_3 +  0, handup, 0 );
setEffRotateKey( spep_3 + 52, handup, 0 );
setEffAlphaKey(  spep_3 +  0, handup, 255 );
setEffAlphaKey(  spep_3 + 52, handup, 255 );

-- ** 音 ** --
--振りかぶる1
SE12 = playSe( spep_3 + 5, 1116 );
setSeVolume( spep_3 + 34, 1116, 100 );
setSeVolume( spep_3 + 35, 1116, 95 );
setSeVolume( spep_3 + 36, 1116, 90 );
setSeVolume( spep_3 + 37, 1116, 80 );
setSeVolume( spep_3 + 38, 1116, 70 );
setSeVolume( spep_3 + 39, 1116, 60 );
setSeVolume( spep_3 + 40, 1116, 50 );
setSeVolume( spep_3 + 41, 1116, 40 );
setSeVolume( spep_3 + 42, 1116, 30 );
setSeVolume( spep_3 + 43, 1116, 20 );
setSeVolume( spep_3 + 44, 1116, 10 );
setSeVolume( spep_3 + 45, 1116, 5 );
setSeVolume( spep_3 + 46, 1116, 0 );
stopSe( spep_3 + 46, SE12, 0 );

--振りかぶる2
SE13 = playSe( spep_3 + 15, 1190 );
setSeVolume( spep_3 + 14, 1190,  0 );
setSeVolume( spep_3 + 15, 1190,  9 );
setSeVolume( spep_3 + 17, 1190, 17 );
setSeVolume( spep_3 + 19, 1190, 26 );
setSeVolume( spep_3 + 21, 1190, 35 );
setSeVolume( spep_3 + 23, 1190, 44 );
setSeVolume( spep_3 + 25, 1190, 53 );
setSeVolume( spep_3 + 27, 1190, 62 );
setSeVolume( spep_3 + 36, 1190, 62 );
setSeVolume( spep_3 + 38, 1190, 53 );
setSeVolume( spep_3 + 40, 1190, 44 );
setSeVolume( spep_3 + 42, 1190, 35 );
setSeVolume( spep_3 + 44, 1190, 26 );
setSeVolume( spep_3 + 46, 1190, 17 );
setSeVolume( spep_3 + 48, 1190, 9 );
setSeVolume( spep_3 + 49, 1190, 0  );
stopSe( spep_3 + 49, SE13, 0 );

--振りかぶる3
playSe( spep_3 + 28, 1004 );


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 312, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 42, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3+ 52;

------------------------------------------------------
-- ラストシーン：敵より前~敵より後ろ(124)
------------------------------------------------------
-- ** エフェクト等 ** --
last_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); --ラストシーン：敵より前(ef_005)
setEffMoveKey(   spep_4 +   0, last_f, 0, 0, 0 );
setEffMoveKey(   spep_4 + 126, last_f, 0, 0, 0 );
setEffScaleKey(  spep_4 +   0, last_f, 1.0, 1.0 );
setEffScaleKey(  spep_4 + 126, last_f, 1.0, 1.0 );
setEffRotateKey( spep_4 +   0, last_f, 0 );
setEffRotateKey( spep_4 + 126, last_f, 0 );
setEffAlphaKey(  spep_4 +   0, last_f, 255 );
setEffAlphaKey(  spep_4 + 126, last_f, 255 );

-- ** エフェクト等 ** --
last_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --ラストシーン：敵より後ろ(ef_006)
setEffMoveKey(   spep_4 +   0, last_b, 0, 0, 0 );
setEffMoveKey(   spep_4 + 126, last_b, 0, 0, 0 );
setEffScaleKey(  spep_4 +   0, last_b, 1.0, 1.0 );
setEffScaleKey(  spep_4 + 126, last_b, 1.0, 1.0 );
setEffRotateKey( spep_4 +   0, last_b, 0 );
setEffRotateKey( spep_4 + 126, last_b, 0 );
setEffAlphaKey(  spep_4 +   0, last_b, 255 );
setEffAlphaKey(  spep_4 + 126, last_b, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 + 6,  906, 119, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake(     spep_4 +   6, shuchusen5, 120, 25 );
setEffMoveKey(   spep_4 +   6, shuchusen5, -50, -100 , 0 );
setEffMoveKey(   spep_4 + 125, shuchusen5, -50, -100 , 0 );
setEffScaleKey(  spep_4 +   6, shuchusen5, 1.4, 1.4 );
setEffScaleKey(  spep_4 + 125, shuchusen5, 1.4, 1.4 );
setEffRotateKey( spep_4 +   6, shuchusen5, 0 );
setEffRotateKey( spep_4 + 125, shuchusen5, 0 );
setEffAlphaKey(  spep_4 +   6, shuchusen5, 255 );
setEffAlphaKey(  spep_4 + 125, shuchusen5, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 +   0, 1, 1 );
setDisp( spep_4 + 126, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4    + 0, 1, 170.8, -203.9 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 162.6, -205 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 172.4, -198.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 166.2, -199.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 177.9, -208.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 169.7, -209.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 179.5, -202.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 173.3, -203.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 185, -212.5 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 175.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 183.5, -204.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 175.8, -204.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 186.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 176.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 176.6, -212.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 176.8, -212.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 177.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 177.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 177.6, -212.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 177.8, -212.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 178.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 178.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 178.6, -212.5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 178.9, -212.5 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 179.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 179.4, -212.5 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 179.6, -212.5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 179.9, -212.5 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 180.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 180.4, -212.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 180.6, -212.5 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 180.9, -212.5 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 181.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 181.4, -212.5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 181.7, -212.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 181.9, -212.5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 182.2, -212.5 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 182.4, -212.5 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 182.7, -212.5 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 182.9, -212.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 183.2, -212.5 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 183.4, -212.5 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 183.7, -212.5 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 184, -212.5 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 184.2, -212.5 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 184.5, -212.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 184.7, -212.5 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 185, -212.5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 185.2, -212.5 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 185.5, -212.5 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 185.7, -212.5 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 186, -212.5 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 186.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 186.5, -212.5 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 186.8, -212.5 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 187, -212.5 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 187.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 187.5, -212.5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 187.8, -212.5 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 188, -212.5 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 188.3, -212.5 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 188.5, -212.5 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 188.8, -212.5 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 189.1, -212.5 , 0 );
setMoveKey( spep_4 -3 + 129, 1, 189.1, -212.5 , 0 );

setScaleKey( spep_4    + 0, 1, 1.17, 1.17 );
setScaleKey( spep_4 -3 + 4, 1, 1.14, 1.14 );
setScaleKey( spep_4 -3 + 6, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 8, 1, 1.09, 1.09 );
setScaleKey( spep_4 -3 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 12, 1, 1.04, 1.04 );
setScaleKey( spep_4 -3 + 14, 1, 1.01, 1.01 );
setScaleKey( spep_4 -3 + 16, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 18, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 20, 1, 0.955, 0.955 );
setScaleKey( spep_4 -3 + 32, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 34, 1, 0.945, 0.945 );
setScaleKey( spep_4 -3 + 46, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 48, 1, 0.935, 0.935 );
setScaleKey( spep_4 -3 + 62, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 64, 1, 0.925, 0.925 );
setScaleKey( spep_4 -3 + 76, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 78, 1, 0.915, 0.915 );
setScaleKey( spep_4 -3 + 90, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 92, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 106, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 108, 1, 0.895, 0.895 );
setScaleKey( spep_4 -3 + 120, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 122, 1, 0.885, 0.885 );
setScaleKey( spep_4 -3 + 129, 1, 0.88, 0.88 );

setRotateKey( spep_4    + 0, 1, -38.3 );
setRotateKey( spep_4 -3 + 129, 1, -38.3 );

-- ** 音 ** --
--ラストひっかき1	
playSe( spep_4 + 0, 1061 );
setSeVolume( spep_4 + 0, 1061, 37 );
--ラストひっかき2
playSe( spep_4 + 0, 1178 );
setSeVolume( spep_4 + 0, 1178, 49 );
--ラストひっかき3
playSe( spep_4 + 0, 1169 );
setSeVolume( spep_4 + 0, 1169, 65 );
--ラストひっかき4
playSe( spep_4 + 2, 1026 );
setSeVolume( spep_4 + 2, 1026, 46 );
--ラストひっかき5
playSe( spep_4 + 4, 1032 );
setSeVolume( spep_4 + 4, 1032, 81 );
--ラストひっかき6
playSe( spep_4 + 4, 1060 );
setSeVolume( spep_4 + 4, 1060, 64 );
--ラストひっかき7
playSe( spep_4 + 6, 1031 );
setSeVolume( spep_4 + 6, 1031, 76 );
--ラストひっかき8
playSe( spep_4 + 9, 1238 );
setSeVolume( spep_4 + 9, 1238, 23 );
--ラストひっかき9
playSe( spep_4 + 10, 1179 );
setSeVolume( spep_4 + 10, 1179, 32 );
--ラストひっかき10
playSe( spep_4 + 10, 1032 );
setSeVolume( spep_4 + 10, 1032, 85 );
--ラストひっかき11
playSe( spep_4 + 27, 1192 );
setSeVolume( spep_4 + 27, 1192, 158 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 126, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--終わり
dealDamage( spep_4 +26 );
endPhase( spep_4 + 124 ); --126
end
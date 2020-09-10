--1012130:ロージィ_ヤッチャイナー拳(SSR)
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
SP_01 = 155590	--導入、パンチ正面連打
SP_02 = 155591	--連打残像攻撃、敵より手前
SP_03 = 155592	--連打残像攻撃
SP_04 = 155593	--パンチ正面連打→高速パンチ
SP_05 = 155594	--パンチ残像、白→黄色
SP_06 = 155595	--連打残像攻撃(黄色)、敵より手前
SP_07 = 155596	--連打残像攻撃(黄色)→敵吹っ飛び
SP_08 = 155597	--ラスト敵やられシ－ン



--エフェクト(敵)
SP_09r =155607	--敵爆発、ロ－ジィ決めポ－ズ

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
-- 導入、パンチ正面連打(126)
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
prush1 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --導入、パンチ正面連打(ef_001)
setEffMoveKey(   spep_0 +   0, prush1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 126, prush1, 0, 0 , 0 );
setEffScaleKey(  spep_0 +   0, prush1, 1.0, 1.0 );
setEffScaleKey(  spep_0 + 126, prush1, 1.0, 1.0 );
setEffRotateKey( spep_0 +   0, prush1, 0 );
setEffRotateKey( spep_0 + 126, prush1, 0 );
setEffAlphaKey(  spep_0 +   0, prush1, 255 );
setEffAlphaKey(  spep_0 + 126, prush1, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 38, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 38, 25 );
setEffMoveKey(   spep_0 +  0, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 38, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 +  0, shuchusen1, 1.2, 1.2 );
setEffScaleKey(  spep_0 + 38, shuchusen1, 1.2, 1.2 );
setEffRotateKey( spep_0 +  0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 38, shuchusen1, 0 );
setEffAlphaKey(  spep_0 +  0, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 38, shuchusen1, 255 );

-- ** 音 ** --
--ゴーグル光る1
SE00 = playSe( spep_0 + 0, 46 );
setSeVolume( spep_0 +  0, 46,  0 );
setSeVolume( spep_0 + 10, 46,  1 );
setSeVolume( spep_0 + 11, 46,  5 );
setSeVolume( spep_0 + 12, 46,  9 );
setSeVolume( spep_0 + 13, 46, 14 );
setSeVolume( spep_0 + 14, 46, 19 );
setSeVolume( spep_0 + 15, 46, 22 );
setSeVolume( spep_0 + 27, 46, 22 );
setSeVolume( spep_0 + 33, 46, 19 );
setSeVolume( spep_0 + 39, 46, 16 );
setSeVolume( spep_0 + 45, 46, 13 );
setSeVolume( spep_0 + 51, 46, 10 );
setSeVolume( spep_0 + 57, 46,  7 );
setSeVolume( spep_0 + 63, 46,  5 );
setSeVolume( spep_0 + 69, 46,  2 );

--ゴーグル光る2
SE01 = playSe( spep_0 + 6, 1042 );
setSeVolume( spep_0 + 6, 1042, 92 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 126, 0, 0, 0, 0, 255 );  --薄い黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge, SE00, 0 );
stopSe( SP_dodge, SE01, 0 );

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

-- ** 顔カットイン ** --
spep_x = spep_0 + 32;
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );]]

-- ** 音 ** --
--ゴーグル光る1
setSeVolume( spep_0 + 73, 46,  0 );
stopSe( spep_0 + 73, SE00, 0 );

--セリフカットイン
playSe( spep_0 + 45, 1018 );

--腕連打1
SE02 = playSe( spep_0 + 47, 1189 );
--腕連打2
SE03 = playSe( spep_0 + 51, 1181 );
setSeVolume( spep_0 + 102, 1181, 100 );
setSeVolume( spep_0 + 105, 1181, 90 );
setSeVolume( spep_0 + 108, 1181, 80 );
setSeVolume( spep_0 + 111, 1181, 70 );
setSeVolume( spep_0 + 114, 1181, 60 );
setSeVolume( spep_0 + 117, 1181, 50 );
setSeVolume( spep_0 + 120, 1181, 40 );
setSeVolume( spep_0 + 123, 1181, 30 );
setSeVolume( spep_0 + 126, 1181, 20 );
setSeVolume( spep_0 + 129, 1181, 10 );
setSeVolume( spep_0 + 131, 1181, 5 );
setSeVolume( spep_0 + 133, 1181, 0 );
stopSe( spep_0 + 133, SE03, 0 );

--腕連打3
SE04 = playSe( spep_0 + 52, 1003 );
setSeVolume( spep_0 + 52, 1003, 76 );
--腕連打4
SE05 = playSe( spep_0 + 61, 1003 );
--腕連打5
SE06 = playSe( spep_0 + 68, 1189 );
--腕連打6
playSe( spep_0 + 73, 1003 );
setSeVolume( spep_0 + 73, 1003, 89 );
--腕連打7
playSe( spep_0 + 75, 1189 );
setSeVolume( spep_0 + 75, 1189, 81 );
--腕連打8
playSe( spep_0 + 82, 1003 );
setSeVolume( spep_0 + 82, 1003, 69 );
--腕連打9
playSe( spep_0 + 85, 1189 );
setSeVolume( spep_0 + 85, 1189, 71 );
--腕連打10
playSe( spep_0 + 91, 1003 );
setSeVolume( spep_0 + 91, 1003, 68 );
--腕連打11
playSe( spep_0 + 92, 1189 );
setSeVolume( spep_0 + 92, 1189, 75 );
--腕連打12
playSe( spep_0 + 99, 1003 );
setSeVolume( spep_0 + 99, 1003, 82 );
--腕連打13
playSe( spep_0 + 110, 1003 );
setSeVolume( spep_0 + 110, 1003, 68 );
--腕連打14
playSe( spep_0 + 118, 1003 );
setSeVolume( spep_0 + 118, 1003, 76 );
--腕高速15
SE07 = playSe( spep_0 + 126, 1003 );
setSeVolume( spep_0 + 126, 1003, 89 );
stopSe( spep_0 + 135, SE07, 0 );

-- ** ホワイトフェード ** --
--entryFade( spep_0 + 116,  0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 118, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 126;

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
setEffShake(     spep_1 +  0, shuchusen, 90, 20 );
setEffMoveKey(   spep_1 +  0, shuchusen, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey(  spep_1 +  0, shuchusen, 1.6, 1.6 );
setEffScaleKey(  spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 +  0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey(  spep_1 +  0, shuchusen, 255 );
setEffAlphaKey(  spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 連打残像攻撃、敵より手前(84)
------------------------------------------------------
-- ** エフェクト等 ** --
pattack1_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --連打残像攻撃、敵より手前(ef_002)
setEffMoveKey(   spep_2 +  0, pattack1_f, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 84, pattack1_f, 0, 0 , 0 );
setEffScaleKey(  spep_2 +  0, pattack1_f, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 84, pattack1_f, 1.0, 1.0 );
setEffRotateKey( spep_2 +  0, pattack1_f, 0 );
setEffRotateKey( spep_2 + 84, pattack1_f, 0 );
setEffAlphaKey(  spep_2 +  0, pattack1_f, 255 );
setEffAlphaKey(  spep_2 + 84, pattack1_f, 255 );

pattack1_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --連打残像攻撃用背景(ef_003)
setEffMoveKey(   spep_2 +  0, pattack1_b, 0,   0 , 0 );
setEffMoveKey(   spep_2 + 84, pattack1_b, 0,   0 , 0 );
setEffScaleKey(  spep_2 +  0, pattack1_b, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 84, pattack1_b, 1.0, 1.0 );
setEffRotateKey( spep_2 +  0, pattack1_b, 0 );
setEffRotateKey( spep_2 + 84, pattack1_b, 0 );
setEffAlphaKey(  spep_2 +  0, pattack1_b, 255 );
setEffAlphaKey(  spep_2 + 84, pattack1_b, 255 );

-- ** 書き文字エントリー ** --
ctga1 = entryEffectLife( spep_2 -3 + 6,  10005, 13, 0x100, -1, 0, 101.1, 21.3 ); --ガッ
setEffMoveKey(   spep_2 -3 + 6,  ctga1, 148.6, -2.4 , 0 );
setEffMoveKey(   spep_2 -3 + 8,  ctga1, 220.1,  9.9 , 0 );
setEffMoveKey(   spep_2 -3 + 10, ctga1, 263,   17.3 , 0 );
setEffMoveKey(   spep_2 -3 + 12, ctga1, 277.3, 19.8 , 0 );
setEffMoveKey(   spep_2 -3 + 19, ctga1, 277.3, 19.8 , 0 );
setEffScaleKey(  spep_2 -3 +  6, ctga1, 0.5,    0.5 );
setEffScaleKey(  spep_2 -3 +  8, ctga1, 0.71,   0.71 );
setEffScaleKey(  spep_2 -3 + 10, ctga1, 0.78,   0.78 );
setEffScaleKey(  spep_2 -3 + 12, ctga1, 0.83,   0.83 );
setEffScaleKey(  spep_2 -3 + 19, ctga1, 0.83,   0.83 );
setEffRotateKey( spep_2 -3 +  6, ctga1, 10 );
setEffRotateKey( spep_2 -3 + 19, ctga1, 10 );
setEffAlphaKey(  spep_2 -3 +  6, ctga1, 255 );
setEffAlphaKey(  spep_2 -3 + 19, ctga1, 255 );

ctga2 = entryEffectLife( spep_2 -3 + 20,  10005, 13, 0x100, -1, 0, -171.2, 91 ); --ガッ
setEffMoveKey(   spep_2 -3 + 20, ctga2, -105.2, 28.3 , 0 );
setEffMoveKey(   spep_2 -3 + 22, ctga2, -69.5,  100 , 0 );
setEffMoveKey(   spep_2 -3 + 24, ctga2, -51,    142.4 , 0 );
setEffMoveKey(   spep_2 -3 + 26, ctga2, -45.3,  156.2 , 0 );
setEffMoveKey(   spep_2 -3 + 33, ctga2, -45.3,  156.2 , 0 );

setEffScaleKey(  spep_2 -3 + 20, ctga2,  0.94,  0.94 );
setEffScaleKey(  spep_2 -3 + 22, ctga2,  1.05,  1.05 );
setEffScaleKey(  spep_2 -3 + 24, ctga2,  1.1,   1.1 );
setEffScaleKey(  spep_2 -3 + 26, ctga2,  1.12,  1.12 );
setEffScaleKey(  spep_2 -3 + 33, ctga2,  1.12,  1.12 );

setEffRotateKey( spep_2 -3 + 20, ctga2,  25.8 );
setEffRotateKey( spep_2 -3 + 22, ctga2,  35 );
setEffRotateKey( spep_2 -3 + 24, ctga2,  37.1 );
setEffRotateKey( spep_2 -3 + 26, ctga2,  40.1 );
setEffRotateKey( spep_2 -3 + 33, ctga2,  40.1 );
setEffAlphaKey(  spep_2 -3 + 20, ctga2,  255 );
setEffAlphaKey(  spep_2 -3 + 33, ctga2,  255 );

ctga3 = entryEffectLife( spep_2 -3 + 32,  10005, 14, 0x100, -1, 0, 163.4, 63.8 ); --ガッ
setEffMoveKey(   spep_2 -3 + 32, ctga3, 171.4, 35.7 , 0 );
setEffMoveKey(   spep_2 -3 + 34, ctga3, 211.5, 38.1 , 0 );
setEffMoveKey(   spep_2 -3 + 36, ctga3, 235.3, 37 , 0 );
setEffMoveKey(   spep_2 -3 + 40, ctga3, 257,   31.2 , 0 );
setEffMoveKey(   spep_2 -3 + 42, ctga3, 270.8, 21.7 , 0 );
setEffMoveKey(   spep_2 -3 + 44, ctga3, 284.6, 17.1 , 0 );
setEffMoveKey(   spep_2 -3 + 46, ctga3, 284.6, 17.1 , 0 );
setEffScaleKey(  spep_2 -3 + 32, ctga3, 0.33,  0.33 );
setEffScaleKey(  spep_2 -3 + 34, ctga3, 0.85,  0.85 );
setEffScaleKey(  spep_2 -3 + 36, ctga3, 1.2,   1.2 );
setEffScaleKey(  spep_2 -3 + 38, ctga3, 1.28,  1.28 );
setEffScaleKey(  spep_2 -3 + 46, ctga3, 1.28,  1.28 );
setEffRotateKey( spep_2 -3 + 32, ctga3, 55.7 );
setEffRotateKey( spep_2 -3 + 34, ctga3, 55.7 );
setEffRotateKey( spep_2 -3 + 36, ctga3, 55.7 );
setEffRotateKey( spep_2 -3 + 38, ctga3, 55.7 );
setEffRotateKey( spep_2 -3 + 46, ctga3, 55.7 );
setEffAlphaKey(  spep_2 -3 + 32, ctga3, 255 );
setEffAlphaKey(  spep_2 -3 + 38, ctga3, 255 );
setEffAlphaKey(  spep_2 -3 + 40, ctga3, 179 );
setEffAlphaKey(  spep_2 -3 + 42, ctga3, 102 );
setEffAlphaKey(  spep_2 -3 + 44, ctga3, 26 );
setEffAlphaKey(  spep_2 -3 + 46, ctga3, 0 );

ctga4 = entryEffectLife( spep_2 -3 + 46,  10005, 12, 0x100, -1, 0, 105.7, 23.1 ); --ガッ
setEffMoveKey(   spep_2 -3 + 46, ctga4, 148.6, -2.4 , 0 );
setEffMoveKey(   spep_2 -3 + 48, ctga4, 220.1,  9.9 , 0 );
setEffMoveKey(   spep_2 -3 + 50, ctga4, 263,   17.3 , 0 );
setEffMoveKey(   spep_2 -3 + 52, ctga4, 277.3, 19.8 , 0 );
setEffMoveKey(   spep_2 -3 + 58, ctga4, 277.3, 19.8 , 0 );
setEffScaleKey(  spep_2 -3 + 46, ctga4, 0.56,   0.56 );
setEffScaleKey(  spep_2 -3 + 48, ctga4, 0.67,   0.67 );
setEffScaleKey(  spep_2 -3 + 50, ctga4, 0.77,   0.79 );
setEffScaleKey(  spep_2 -3 + 52, ctga4, 0.8,    0.8 );
setEffScaleKey(  spep_2 -3 + 58, ctga4, 0.8,    0.8 );
setEffRotateKey( spep_2 -3 + 46, ctga4, 10 );
setEffRotateKey( spep_2 -3 + 58, ctga4, 10 );
setEffAlphaKey(  spep_2 -3 + 46, ctga4, 255 );
setEffAlphaKey(  spep_2 -3 + 58, ctga4, 255 );

ctga5 = entryEffectLife( spep_2 -3 + 60,  10005, 13, 0x100, -1, 0, -171.2, 91 ); --ガッ
setEffMoveKey(   spep_2 -3 + 60, ctga5, -105.2, 27.3 , 0 );
setEffMoveKey(   spep_2 -3 + 62, ctga5, -69.5, 100 , 0 );
setEffMoveKey(   spep_2 -3 + 64, ctga5, -53,   149.4 , 0 );
setEffMoveKey(   spep_2 -3 + 66, ctga5, -45.3, 157.2 , 0 );
setEffMoveKey(   spep_2 -3 + 73, ctga5, -45.3, 157.2 , 0 );
setEffScaleKey(  spep_2 -3 + 60, ctga5,  0.94,   0.94 );
setEffScaleKey(  spep_2 -3 + 62, ctga5,  1.12,   1.12 );
setEffScaleKey(  spep_2 -3 + 64, ctga5,  1.18,   1.18 );
setEffScaleKey(  spep_2 -3 + 66, ctga5,  1.21,   1.21 );
setEffScaleKey(  spep_2 -3 + 73, ctga5,  1.21,   1.21 );
setEffRotateKey( spep_2 -3 + 60, ctga5,  21.8 );
setEffRotateKey( spep_2 -3 + 62, ctga5,  34 );
setEffRotateKey( spep_2 -3 + 64, ctga5,  42.1 );
setEffRotateKey( spep_2 -3 + 66, ctga5,  44.1 );
setEffRotateKey( spep_2 -3 + 73, ctga5,  44.1 );
setEffAlphaKey(  spep_2 -3 + 60, ctga5,  255 );
setEffAlphaKey(  spep_2 -3 + 73, ctga5,  255 );

ctga6 = entryEffectLife( spep_2 -3 + 72,  10005, 14, 0x100, -1, 0, 163.4, 63.8 ); --ガッ
setEffMoveKey(   spep_2 -3 + 72, ctga6, 171.4, 35.7 , 0 );
setEffMoveKey(   spep_2 -3 + 74, ctga6, 211.5, 37.1 , 0 );
setEffMoveKey(   spep_2 -3 + 76, ctga6, 235.3, 39 , 0 );
setEffMoveKey(   spep_2 -3 + 78, ctga6, 243.2, 39.7 , 0 );
setEffMoveKey(   spep_2 -3 + 80, ctga6, 257,   32.2 , 0 );
setEffMoveKey(   spep_2 -3 + 82, ctga6, 270.8, 24.7 , 0 );
setEffMoveKey(   spep_2 -3 + 84, ctga6, 284.6, 17.1 , 0 );
setEffMoveKey(   spep_2 -3 + 86, ctga6, 284.6, 17.1 , 0 );
setEffScaleKey(  spep_2 -3 + 72, ctga6, 0.34,  0.34 );
setEffScaleKey(  spep_2 -3 + 74, ctga6, 0.82,  0.82 );
setEffScaleKey(  spep_2 -3 + 76, ctga6, 1.19,  1.19 );
setEffScaleKey(  spep_2 -3 + 78, ctga6, 1.27,  1.27 );
setEffScaleKey(  spep_2 -3 + 86, ctga6, 1.27,  1.27 );
setEffRotateKey( spep_2 -3 + 72, ctga6, 55.5 );
setEffRotateKey( spep_2 -3 + 74, ctga6, 55.7 );
setEffRotateKey( spep_2 -3 + 76, ctga6, 55.9 );
setEffRotateKey( spep_2 -3 + 78, ctga6, 56 );
setEffRotateKey( spep_2 -3 + 86, ctga6, 56 );
setEffAlphaKey(  spep_2 -3 + 72, ctga6, 255 );
setEffAlphaKey(  spep_2 -3 + 78, ctga6, 255 );
setEffAlphaKey(  spep_2 -3 + 80, ctga6, 179 );
setEffAlphaKey(  spep_2 -3 + 82, ctga6, 102 );
setEffAlphaKey(  spep_2 -3 + 84, ctga6, 26 );
setEffAlphaKey(  spep_2 -3 + 86, ctga6, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 +  0, 1, 1 );
setDisp( spep_2 + 84, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2    + 0, 1, 10, 10 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 2, 4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 21.7, 10 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 13.7, 4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 6.5, 11.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 2.2, 10 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -5.8, 4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -3.7, 31.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -15.9, 27.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -8.5, 35.3 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 33, 22.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 41.3, 27.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 52.9, 23.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 60.9, 29.6 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 49.4, 11.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 57.3, 16.5 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 49, 9.9 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 41.4, 16 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 33.4, 9.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 41.2, 17.6 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 28, -3.5 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 37.4, 2.5 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 37.4, 19.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 45.4, 29 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 25.2, 20.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 33.7, 25.8 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 4.1, 29.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 12.1, 35.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 1.1, 32.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 8.9, 39.8 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 51.3, 32.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 59.1, 37.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 51.1, 31.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 75.6, 59.2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 65.3, 48.6 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 72.8, 53.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 47.2, 57 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 55.2, 63 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -1.2, 4.8 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 6.5, 11.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 2, 4 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 0, 0 , 0 );

setScaleKey( spep_2    + 0, 1, 2, 2 );
setScaleKey( spep_2 -3 + 8, 1, 2, 2 );
setScaleKey( spep_2 -3 + 10, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 14, 1, 2, 2 );
setScaleKey( spep_2 -3 + 18, 1, 2, 2 );
setScaleKey( spep_2 -3 + 20, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 22, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 26, 1, 2, 2 );
setScaleKey( spep_2 -3 + 30, 1, 2, 2 );
setScaleKey( spep_2 -3 + 32, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 34, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 36, 1, 2, 2 );
setScaleKey( spep_2 -3 + 40, 1, 2, 2 );
setScaleKey( spep_2 -3 + 42, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 44, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 46, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 48, 1, 2, 2 );
setScaleKey( spep_2 -3 + 50, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 52, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 54, 1, 2, 2 );
setScaleKey( spep_2 -3 + 58, 1, 2, 2 );
setScaleKey( spep_2 -3 + 60, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 62, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 64, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 66, 1, 2, 2 );
setScaleKey( spep_2 -3 + 68, 1, 2, 2 );
setScaleKey( spep_2 -3 + 70, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 72, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 74, 1, 2, 2 );
setScaleKey( spep_2 -3 + 78, 1, 2, 2 );
setScaleKey( spep_2 -3 + 80, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 82, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 84, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 86, 1, 2, 2 );
setScaleKey( spep_2 -3 + 87, 1, 2, 2 );

setRotateKey( spep_2    +  0, 1, 0 );
setRotateKey( spep_2 -3 + 87, 1, 0 );

-- ** 音 ** --
--敵連打（耐える）1
playSe( spep_2 + 3, 1189 );
--敵連打（耐える）2
playSe( spep_2 + 7, 1006 );
--敵連打（耐える）3
playSe( spep_2 + 14, 1006 );
setSeVolume( spep_2 + 14, 1006, 71 );
--敵連打（耐える）4
playSe( spep_2 + 14, 1189 );
--敵連打（耐える）5
playSe( spep_2 + 21, 1007 );
--敵連打（耐える）6
playSe( spep_2 + 26, 1006 );
setSeVolume( spep_2 + 26, 1006, 76 );
--敵連打（耐える）7
playSe( spep_2 + 33, 1189 );
--敵連打（耐える）8
playSe( spep_2 + 34, 1007 );
setSeVolume( spep_2 + 34, 1007, 84 );
--敵連打（耐える）9
playSe( spep_2 + 38, 1013 );
setSeVolume( spep_2 + 38, 1013, 80 );
--敵連打（耐える）10
playSe( spep_2 + 41, 1189 );
--敵連打（耐える）11
playSe( spep_2 + 41, 1007 );
--敵連打（耐える）12
playSe( spep_2 + 44, 1012 );
setSeVolume( spep_2 + 44, 1012, 56 );
--敵連打（耐える）13
playSe( spep_2 + 44, 1189 );
setSeVolume( spep_2 + 44, 1189, 126 );
--敵連打（耐える）14
playSe( spep_2 + 49, 1007 );
setSeVolume( spep_2 + 49, 1007, 78 );
--敵連打（耐える）15
playSe( spep_2 + 56, 1007 );
setSeVolume( spep_2 + 56, 1007, 67 );
--敵連打（耐える）16
playSe( spep_2 + 61, 1012 );
setSeVolume( spep_2 + 61, 1012, 47 );
--敵連打（耐える）17
playSe( spep_2 + 70, 1007 );
setSeVolume( spep_2 + 70, 1007, 59 );
--敵連打（耐える）18
playSe( spep_2 + 77, 1006 );
setSeVolume( spep_2 + 77, 1006, 82 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 +  0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 82,  2, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 84;

------------------------------------------------------
-- 連打残像攻撃(106)
------------------------------------------------------
-- ** エフェクト等 ** --
prush2 = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --連打残像攻撃(ef_004)
setEffMoveKey(   spep_3 +   0, prush2, 0, 0 , 0 );
setEffMoveKey(   spep_3 + 106, prush2, 0, 0 , 0 );
setEffScaleKey(  spep_3 +   0, prush2, 1.0, 1.0 );
setEffScaleKey(  spep_3 + 106, prush2, 1.0, 1.0 );
setEffRotateKey( spep_3 +   0, prush2, 0 );
setEffRotateKey( spep_3 + 106, prush2, 0 );
setEffAlphaKey(  spep_3 +   0, prush2, 255 );
setEffAlphaKey(  spep_3 + 106, prush2, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 53,  906, 52, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 53, shuchusen2, 52, 25 );
setEffMoveKey(   spep_3 +  53, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_3 + 105, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_3 +  53, shuchusen2, 1.8, 1.8 );
setEffScaleKey(  spep_3 + 105, shuchusen2, 1.8, 1.8 );
setEffRotateKey( spep_3 +  53, shuchusen2, 0 );
setEffRotateKey( spep_3 + 105, shuchusen2, 0 );
setEffAlphaKey(  spep_3 +  53, shuchusen2, 255 );
setEffAlphaKey(  spep_3 + 105, shuchusen2, 255 );

-- ** 音 ** --
--腕連打（高速）1
SE08 = playSe( spep_3 + 7, 1181 );
setSeVolume( spep_3 +  90, 1181, 100 );
setSeVolume( spep_3 +  93, 1181,  95 );
setSeVolume( spep_3 +  96, 1181,  90 );
setSeVolume( spep_3 +  99, 1181,  80 );
setSeVolume( spep_3 + 102, 1181,  70 );
setSeVolume( spep_3 + 105, 1181,  60 );
setSeVolume( spep_3 + 108, 1181,  50 );
setSeVolume( spep_3 + 111, 1181,  40 );
setSeVolume( spep_3 + 114, 1181,  30 );
setSeVolume( spep_3 + 117, 1181,  20 );
setSeVolume( spep_3 + 120, 1181,  15 );
setSeVolume( spep_3 + 123, 1181,  10 );
setSeVolume( spep_3 + 126, 1181,   5 );
setSeVolume( spep_3 + 129, 1181,   0 );
stopSe( spep_3 + 129, SE08, 0 );
--腕加速1
playSe( spep_3 + 7, 1003 );
--腕加速2
playSe( spep_3 + 7, 1004 );
setSeVolume( spep_3 + 7, 1004, 63 );
--腕加速3
playSe( spep_3 + 15, 1003 );
setSeVolume( spep_3 + 15, 1003, 72 );
--腕加速4
playSe( spep_3 + 23, 1003 );
setSeVolume( spep_3 + 23, 1003, 73 );
--腕加速5
playSe( spep_3 + 28, 1003 );
setSeVolume( spep_3 + 28, 1003, 84 );
--腕加速6
playSe( spep_3 + 32, 1003 );
setSeVolume( spep_3 + 32, 1003, 87 );
--腕加速7
playSe( spep_3 + 35, 1003 );
setSeVolume( spep_3 + 35, 1003, 50 );
--腕加速8
playSe( spep_3 + 36, 1048 );
setSeVolume( spep_3 + 36, 1048, 34 );
--腕加速9
playSe( spep_3 + 39, 1003 );
setSeVolume( spep_3 + 39, 1003, 79 );
--腕加速10
playSe( spep_3 + 39, 1048 );
setSeVolume( spep_3 + 39, 1048, 36 );
--腕加速11
playSe( spep_3 + 43, 1048 );
setSeVolume( spep_3 + 43, 1048, 40 );
--腕加速12
playSe( spep_3 + 44, 1003 );
setSeVolume( spep_3 + 44, 1003, 67 );
--腕加速13
playSe( spep_3 + 49, 1048 );
setSeVolume( spep_3 + 49, 1048, 42 );
--腕加速14
playSe( spep_3 + 51, 1003 );
setSeVolume( spep_3 + 51, 1003, 68 );
--腕加速15
playSe( spep_3 + 56, 1048 );
setSeVolume( spep_3 + 56, 1048, 45 );
--腕加速16
playSe( spep_3 + 60, 1003 );
setSeVolume( spep_3 + 60, 1003, 70 );
--腕加速17
playSe( spep_3 + 62, 1048 );
setSeVolume( spep_3 + 62, 1048, 43 );
--腕加速18
playSe( spep_3 + 65, 1048 );
setSeVolume( spep_3 + 65, 1048, 38 );
--腕加速19
playSe( spep_3 + 68, 1003 );
setSeVolume( spep_3 + 68, 1003, 67 );
--腕加速20
playSe( spep_3 + 69, 1048 );
setSeVolume( spep_3 + 69, 1048, 57 );
--腕加速21
playSe( spep_3 + 72, 1048 );
setSeVolume( spep_3 + 72, 1048, 47 );
--腕加速22
playSe( spep_3 + 76, 1048 );
setSeVolume( spep_3 + 76, 1048, 61 );
--腕加速23
playSe( spep_3 + 77, 1003 );
setSeVolume( spep_3 + 77, 1003, 37 );
--腕加速24
playSe( spep_3 + 79, 1048 );
setSeVolume( spep_3 + 79, 1048, 62 );
--腕加速25	playSe( spep_3 + 82, 1048 );
setSeVolume( spep_3 + 82, 1048, 60 );
--腕加速26
playSe( spep_3 + 84, 1003 );
setSeVolume( spep_3 + 84, 1003, 65 );
--腕加速27
playSe( spep_3 + 85, 1048 );
setSeVolume( spep_3 + 85, 1048, 69 );
--腕加速28
playSe( spep_3 + 89, 1048 );
setSeVolume( spep_3 + 89, 1048, 69 );
--腕加速29
playSe( spep_3 + 90, 1003 );
setSeVolume( spep_3 + 90, 1003, 75 );
--腕加速30
playSe( spep_3 + 94, 1048 );
setSeVolume( spep_3 + 94, 1048, 71 );
--腕加速31
playSe( spep_3 + 98, 1048 );
setSeVolume( spep_3 + 98, 1048, 79 );
--腕加速32
playSe( spep_3 + 98, 1003 );
setSeVolume( spep_3 + 98, 1003, 44 );
--腕加速33
playSe( spep_3 + 102, 1048 );
setSeVolume( spep_3 + 102, 1048, 74 );
--腕加速34
playSe( spep_3 + 104, 1003 );
setSeVolume( spep_3 + 104, 1003, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 106, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 +   0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 104,  2, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 105;

------------------------------------------------------
-- パンチ残像、白→黄色(56)
------------------------------------------------------
pyellow = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --連打残像攻撃(ef_005)
setEffMoveKey(   spep_4 +  0, pyellow, 0, 0 , 0 );
setEffMoveKey(   spep_4 + 56, pyellow, 0, 0 , 0 );
setEffScaleKey(  spep_4 +  0, pyellow, 1.0, 1.0 );
setEffScaleKey(  spep_4 + 56, pyellow, 1.0, 1.0 );
setEffRotateKey( spep_4 +  0, pyellow, 0 );
setEffRotateKey( spep_4 + 56, pyellow, 0 );
setEffAlphaKey(  spep_4 +  0, pyellow, 255 );
setEffAlphaKey(  spep_4 + 56, pyellow, 255 );

-- ** 音 ** --

--腕加速35
playSe( spep_4 + 1, 1048 );
setSeVolume( spep_4 + 1, 1048, 79 );
--腕加速36
playSe( spep_4 + 6, 1003 );
setSeVolume( spep_4 + 6, 1003, 40 );

--空中連打1
playSe( spep_4 + 16, 1003 );
--空中連打2
playSe( spep_4 + 22, 1003 );
--空中連打3
playSe( spep_4 + 27, 1003 );
--空中連打4
playSe( spep_4 + 34, 1003 );
--空中連打5
playSe( spep_4 + 37, 1027 );
setSeVolume( spep_4 + 37, 1027, 20 );
--空中連打6
playSe( spep_4 + 40, 1003 );
setSeVolume( spep_4 + 40, 1003, 84 );
--空中連打7
playSe( spep_4 + 44, 1027 );
setSeVolume( spep_4 + 44, 1027, 41 );
--空中連打8
playSe( spep_4 + 45, 1003 );
setSeVolume( spep_4 + 45, 1003, 88 );
--空中連打9
playSe( spep_4 + 50, 1003 );
setSeVolume( spep_4 + 50, 1003, 68 );
--空中連打10
playSe( spep_4 + 50, 1027 );
setSeVolume( spep_4 + 50, 1027, 30 );
--空中連打11
playSe( spep_4 + 55, 1003 );
setSeVolume( spep_4 + 55, 1003, 67 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 106, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 +  0,  0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 54,  2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;

------------------------------------------------------
-- 連打残像攻撃(黄色)、敵より手前~敵吹っ飛び(120)
------------------------------------------------------
-- ** エフェクト等 ** --
prush2_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --連打残像攻撃(黄色)、敵より手前(ef_006)
setEffMoveKey(   spep_5 +   0, prush2_f, 0, 0 , 0 );
setEffMoveKey(   spep_5 + 120, prush2_f, 0, 0 , 0 );
setEffScaleKey(  spep_5 +   0, prush2_f, 1.0, 1.0 );
setEffScaleKey(  spep_5 + 120, prush2_f, 1.0, 1.0 );
setEffRotateKey( spep_5 +   0, prush2_f, 0 );
setEffRotateKey( spep_5 + 120, prush2_f, 0 );
setEffAlphaKey(  spep_5 +   0, prush2_f, 255 );
setEffAlphaKey(  spep_5 + 119, prush2_f, 255 );
setEffAlphaKey(  spep_5 + 120, prush2_f, 0 );

prush2_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --連打残像攻撃(黄色)→敵吹っ飛び(ef_007)
setEffMoveKey(   spep_5 +   0, prush2_b, 0,   0 , 0 );
setEffMoveKey(   spep_5 + 120, prush2_b, 0,   0 , 0 );
setEffScaleKey(  spep_5 +   0, prush2_b, 1.0, 1.0 );
setEffScaleKey(  spep_5 + 120, prush2_b, 1.0, 1.0 );
setEffRotateKey( spep_5 +   0, prush2_b, 0 );
setEffRotateKey( spep_5 + 120, prush2_b, 0 );
setEffAlphaKey(  spep_5 +   0, prush2_b, 255 );
setEffAlphaKey(  spep_5 + 119, prush2_b, 255 );
setEffAlphaKey(  spep_5 + 120, prush2_b, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 49,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 49, shuchusen3, 18, 25 );
setEffMoveKey(   spep_5 + 49, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_5 + 63, shuchusen3, 50, 100 , 0 );
setEffMoveKey(   spep_5 + 67, shuchusen3, 50, 100 , 0 );
setEffScaleKey(  spep_5 + 49, shuchusen3, 1.2, 1.2 );
setEffScaleKey(  spep_5 + 63, shuchusen3, 1.6, 1.6 );
setEffScaleKey(  spep_5 + 67, shuchusen3, 1.6, 1.6 );
setEffRotateKey( spep_5 + 49, shuchusen3, 0 );
setEffRotateKey( spep_5 + 67, shuchusen3, 0 );
setEffAlphaKey(  spep_5 + 49, shuchusen3,  10 );
setEffAlphaKey(  spep_5 + 52, shuchusen3, 200 );
setEffAlphaKey(  spep_5 + 38, shuchusen3, 255 );
setEffAlphaKey(  spep_5 + 63, shuchusen3, 200 );
setEffAlphaKey(  spep_5 + 65, shuchusen3,  70 );
setEffAlphaKey(  spep_5 + 67, shuchusen3,   0 );

-- ** 書き文字エントリー ** --
ctbaki1 = entryEffectLife( spep_5 -3 + 14,  10020, 13, 0x100, -1, 0, 191.9, 34 ); --バキ
setEffMoveKey(   spep_5 -3 + 14, ctbaki1, 191.9, 34 , 0 );
setEffMoveKey(   spep_5 -3 + 16, ctbaki1, 204.6, 44.6 , 0 );
setEffMoveKey(   spep_5 -3 + 18, ctbaki1, 204.3, 58.9 , 0 );
setEffMoveKey(   spep_5 -3 + 20, ctbaki1, 201.9, 62 , 0 );
setEffMoveKey(   spep_5 -3 + 27, ctbaki1, 201.9, 62 , 0 );
setEffScaleKey(  spep_5 -3 + 14, ctbaki1, 0.58, 0.58 );
setEffScaleKey(  spep_5 -3 + 16, ctbaki1, 0.75, 0.75 );
setEffScaleKey(  spep_5 -3 + 18, ctbaki1, 0.96, 0.96 );
setEffScaleKey(  spep_5 -3 + 20, ctbaki1, 1.01, 1.01 );
setEffScaleKey(  spep_5 -3 + 27, ctbaki1, 1.01, 1.01 );
setEffRotateKey( spep_5 -3 + 14, ctbaki1, 0 );
setEffRotateKey( spep_5 -3 + 27, ctbaki1, 0 );
setEffAlphaKey(  spep_5 -3 + 14, ctbaki1, 255 );
setEffAlphaKey(  spep_5 -3 + 27, ctbaki1, 255 );

ctbaki2 = entryEffectLife( spep_5 -3 + 28,  10020, 13, 0x100, -1, 0, -134.4, 128.3 ); --バキ
setEffMoveKey(   spep_5 -3 + 28, ctbaki2, -134.4, 128.3 , 0 );
setEffMoveKey(   spep_5 -3 + 30, ctbaki2, -161.7, 148.8 , 0 );
setEffMoveKey(   spep_5 -3 + 32, ctbaki2, -193.7, 162.4 , 0 );
setEffMoveKey(   spep_5 -3 + 34, ctbaki2, -187.6, 164.7 , 0 );
setEffMoveKey(   spep_5 -3 + 41, ctbaki2, -187.6, 164.7 , 0 );
setEffScaleKey(  spep_5 -3 + 28, ctbaki2, 0.64, 0.64 );
setEffScaleKey(  spep_5 -3 + 30, ctbaki2, 1.05, 1.05 );
setEffScaleKey(  spep_5 -3 + 32, ctbaki2, 1.35, 1.35 );
setEffScaleKey(  spep_5 -3 + 34, ctbaki2, 1.44, 1.44 );
setEffScaleKey(  spep_5 -3 + 41, ctbaki2, 1.44, 1.44 );
setEffRotateKey( spep_5 -3 + 28, ctbaki2, -42.5 );
setEffRotateKey( spep_5 -3 + 30, ctbaki2, -40.2 );
setEffRotateKey( spep_5 -3 + 32, ctbaki2, -37.6 );
setEffRotateKey( spep_5 -3 + 34, ctbaki2, -36.7 );
setEffRotateKey( spep_5 -3 + 41, ctbaki2, -36.7 );
setEffAlphaKey(  spep_5 -3 + 28, ctbaki2, 255 );
setEffAlphaKey(  spep_5 -3 + 34, ctbaki2, 255 );
setEffAlphaKey(  spep_5 -3 + 41, ctbaki2, 255 );

ctbaki3 = entryEffectLife( spep_5 -3 + 42,  10020, 13, 0x100, -1, 0, 249.9, -14 ); --バキ
setEffMoveKey(   spep_5 -3 + 42, ctbaki3, 249.9, -14 , 0 );
setEffMoveKey(   spep_5 -3 + 44, ctbaki3, 248.4, 60.9 , 0 );
setEffMoveKey(   spep_5 -3 + 46, ctbaki3, 263.5, 114 , 0 );
setEffMoveKey(   spep_5 -3 + 48, ctbaki3, 264.3, 129.4 , 0 );
setEffMoveKey(   spep_5 -3 + 55, ctbaki3, 264.3, 129.4 , 0 );
setEffScaleKey(  spep_5 -3 + 42, ctbaki3, 0.61,  0.61 );
setEffScaleKey(  spep_5 -3 + 44, ctbaki3, 1.61,  1.61 );
setEffScaleKey(  spep_5 -3 + 46, ctbaki3, 2.24,  2.24 );
setEffScaleKey(  spep_5 -3 + 48, ctbaki3, 2.4, 2.4 );
setEffScaleKey(  spep_5 -3 + 55, ctbaki3, 2.4, 2.4 );
setEffRotateKey( spep_5 -3 + 42, ctbaki3, 43.5 );
setEffRotateKey( spep_5 -3 + 44, ctbaki3, 43.7 );
setEffRotateKey( spep_5 -3 + 46, ctbaki3, 43.9 );
setEffRotateKey( spep_5 -3 + 48, ctbaki3, 44 );
setEffRotateKey( spep_5 -3 + 55, ctbaki3, 44 );
setEffAlphaKey(  spep_5 -3 + 42, ctbaki3, 255 );
setEffAlphaKey(  spep_5 -3 + 48, ctbaki3, 255 );
setEffAlphaKey(  spep_5 -3 + 50, ctbaki3, 179 );
setEffAlphaKey(  spep_5 -3 + 52, ctbaki3, 102 );
setEffAlphaKey(  spep_5 -3 + 54, ctbaki3, 26 );
setEffAlphaKey(  spep_5 -3 + 55, ctbaki3, 26 );

ctbaki4 = entryEffectLife( spep_5 -3 + 48,  10020, 32, 0x100, -1, 0, 165.9, 24 ); --バキ
setEffMoveKey(   spep_5 -3 + 48, ctbaki4, 165.9, 24 , 0 );
setEffMoveKey(   spep_5 -3 + 50, ctbaki4, 117.4, 127.3 , 0 );
setEffMoveKey(   spep_5 -3 + 52, ctbaki4, 75.3, 178.7 , 0 );
setEffMoveKey(   spep_5 -3 + 54, ctbaki4, 64, 198 , 0 );
setEffMoveKey(   spep_5 -3 + 56, ctbaki4, 64.8, 197.5 , 0 );
setEffMoveKey(   spep_5 -3 + 58, ctbaki4, 65.7, 197   , 0 );
setEffMoveKey(   spep_5 -3 + 60, ctbaki4, 66.5, 196.4 , 0 );
setEffMoveKey(   spep_5 -3 + 62, ctbaki4, 67.3, 195.9 , 0 );
setEffMoveKey(   spep_5 -3 + 64, ctbaki4, 68.1, 195.4 , 0 );
setEffMoveKey(   spep_5 -3 + 66, ctbaki4, 69  , 194.9 , 0 );
setEffMoveKey(   spep_5 -3 + 68, ctbaki4, 69.8, 194.3 , 0 );
setEffMoveKey(   spep_5 -3 + 70, ctbaki4, 70.6, 193.8 , 0 );
setEffMoveKey(   spep_5 -3 + 72, ctbaki4, 71.5, 193.3 , 0 );
setEffMoveKey(   spep_5 -3 + 74, ctbaki4, 72.3, 192.7 , 0 );
setEffMoveKey(   spep_5 -3 + 76, ctbaki4, 73.1, 192.2 , 0 );
setEffMoveKey(   spep_5 -3 + 78, ctbaki4, 74  , 191.7 , 0 );
setEffMoveKey(   spep_5 -3 + 80, ctbaki4, 73.2, 191.1 , 0 );
setEffScaleKey(  spep_5 -3 + 48, ctbaki4, 0.63, 0.63 );
setEffScaleKey(  spep_5 -3 + 50, ctbaki4, 1.86, 1.86 );
setEffScaleKey(  spep_5 -3 + 48, ctbaki4, 0.612, 0.612 );
setEffScaleKey(  spep_5 -3 + 50, ctbaki4, 1.768, 1.768 );
setEffScaleKey(  spep_5 -3 + 52, ctbaki4, 2.482, 2.482 );
setEffScaleKey(  spep_5 -3 + 54, ctbaki4, 2.72, 2.72 );
setEffScaleKey(  spep_5 -3 + 56, ctbaki4, 2.82, 2.82 );
setEffScaleKey(  spep_5 -3 + 58, ctbaki4, 2.96, 2.96 );
setEffScaleKey(  spep_5 -3 + 60, ctbaki4, 3.06, 3.06 );
setEffScaleKey(  spep_5 -3 + 62, ctbaki4, 3.20, 3.20 );
setEffScaleKey(  spep_5 -3 + 64, ctbaki4, 3.298, 3.298 );
setEffScaleKey(  spep_5 -3 + 66, ctbaki4, 3.44, 3.44 );
setEffScaleKey(  spep_5 -3 + 68, ctbaki4, 3.536, 3.536 );
setEffScaleKey(  spep_5 -3 + 70, ctbaki4, 3.672, 3.672 );
setEffScaleKey(  spep_5 -3 + 72, ctbaki4, 3.774, 3.774 );
setEffScaleKey(  spep_5 -3 + 74, ctbaki4, 3.910, 3.910 );
setEffScaleKey(  spep_5 -3 + 76, ctbaki4, 4.012, 4.012 );
setEffScaleKey(  spep_5 -3 + 78, ctbaki4, 4.114, 4.114 );
setEffScaleKey(  spep_5 -3 + 80, ctbaki4, 4.25, 4.25 );
setEffRotateKey( spep_5 -3 + 48, ctbaki4, -7.5 );
setEffRotateKey( spep_5 -3 + 50, ctbaki4, -10.3 );
setEffRotateKey( spep_5 -3 + 52, ctbaki4, -12 );
setEffRotateKey( spep_5 -3 + 54, ctbaki4, -12.5 );
setEffRotateKey( spep_5 -3 + 80, ctbaki4, -12.5 );
setEffAlphaKey(  spep_5 -3 + 48, ctbaki4, 255 );
setEffAlphaKey(  spep_5 -3 + 54, ctbaki4, 255 );
setEffAlphaKey(  spep_5 -3 + 56, ctbaki4, 235 );
setEffAlphaKey(  spep_5 -3 + 58, ctbaki4, 216 );
setEffAlphaKey(  spep_5 -3 + 60, ctbaki4, 196 );
setEffAlphaKey(  spep_5 -3 + 62, ctbaki4, 177 );
setEffAlphaKey(  spep_5 -3 + 64, ctbaki4, 157 );
setEffAlphaKey(  spep_5 -3 + 66, ctbaki4, 137 );
setEffAlphaKey(  spep_5 -3 + 68, ctbaki4, 118 );
setEffAlphaKey(  spep_5 -3 + 70, ctbaki4, 98 );
setEffAlphaKey(  spep_5 -3 + 72, ctbaki4, 78 );
setEffAlphaKey(  spep_5 -3 + 74, ctbaki4, 59 );
setEffAlphaKey(  spep_5 -3 + 76, ctbaki4, 39 );
setEffAlphaKey(  spep_5 -3 + 78, ctbaki4, 20 );
setEffAlphaKey(  spep_5 -3 + 80, ctbaki4, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5  +   0, 1, 1 );
setDisp( spep_5  + 118, 1, 0 );
changeAnime( spep_5    +  0, 1, 104 );
changeAnime( spep_5 -3 + 30, 1, 106 );
changeAnime( spep_5 -3 + 34, 1, 104 );
changeAnime( spep_5 -3 + 38, 1, 108 );
changeAnime( spep_5 -3 + 42, 1, 106 );
changeAnime( spep_5 -3 + 46, 1, 108 );
changeAnime( spep_5 -3 + 54, 1, 104 );
changeAnime( spep_5 -3 + 58, 1, 105 );

setMoveKey( spep_5    + 0, 1, 0, 0 , 0 );
setMoveKey( spep_5    + 2, 1, 10, 10 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 2, 4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 10, 10 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 2, 4 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 6.5, 11.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 10, 10 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 2, 4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 10, 10 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -1, 5.2 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 7.1, 12.4 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 10, 10 , 0 );
setMoveKey( spep_5 -3 + 29, 1, 2, 4 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 33.3, 10 , 0 );
setMoveKey( spep_5 -3 + 33, 1, 23.4, 5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 9.9, 11.1 , 0 );
setMoveKey( spep_5 -3 + 37, 1, 2.4, 4.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 33.2, 9.9 , 0 );
setMoveKey( spep_5 -3 + 41, 1, 25.2, 3.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 5.5, 61.6 , 0 );
setMoveKey( spep_5 -3 + 45, 1, -4.2, 56.6 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 33, 10.3 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 26.7, 4.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 33.9, 12.4 , 0 );
setMoveKey( spep_5 -3 + 53, 1, 24.7, 4.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 9.9, 9.9 , 0 );
setMoveKey( spep_5 -3 + 57, 1, 1.9, 3.9 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 44.6, -15.8 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 35.6, -22 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 44.6, -14.7 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 41.9, -23 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 53.9, 1 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 56.7, 10.3 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 70.2, 30.5 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 70.4, 38.3 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 86.4, 57.9 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 86.4, 65.3 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 102.4, 84.5 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 102.2, 91.5 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 118, 110.2 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 117.7, 116.7 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 125.2, 129.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 132.7, 141.1 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 139.9, 153 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 147.1, 164.5 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 154.1, 175.7 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 160.9, 186.6 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 167.5, 197.1 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 173.9, 207.2 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 180, 216.8 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 185.7, 225.7 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 191.1, 234 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 195.9, 241.3 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 200.1, 247.5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 203.4, 251.9 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 205.1, 253.8 , 0 );
setMoveKey( spep_5 -3 + 121, 1, 205.1, 253.8 , 0 );

setScaleKey( spep_5    + 0, 1, 2, 2 );
setScaleKey( spep_5 -3 + 8, 1, 2, 2 );
setScaleKey( spep_5 -3 + 10, 1, 2.2, 2.2 );
setScaleKey( spep_5 -3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 14, 1, 2, 2 );
setScaleKey( spep_5 -3 + 18, 1, 2, 2 );
setScaleKey( spep_5 -3 + 20, 1, 2.26, 2.26 );
setScaleKey( spep_5 -3 + 22, 1, 2.31, 2.31 );
setScaleKey( spep_5 -3 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 26, 1, 2, 2 );
setScaleKey( spep_5 -3 + 30, 1, 2, 2 );
setScaleKey( spep_5 -3 + 33, 1, 2.2, 2.2 );
setScaleKey( spep_5 -3 + 34, 1, 2.15, 2.15 );
setScaleKey( spep_5 -3 + 37, 1, 2.1, 2.1 );
setScaleKey( spep_5 -3 + 38, 1, 2, 2 );
setScaleKey( spep_5 -3 + 41, 1, 2, 2 );
setScaleKey( spep_5 -3 + 42, 1, 2.15, 2.15 );
setScaleKey( spep_5 -3 + 45, 1, 2.2, 2.2 );
setScaleKey( spep_5 -3 + 46, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 48, 1, 2.1, 2.1 );
setScaleKey( spep_5 -3 + 50, 1, 2.31, 2.31 );
setScaleKey( spep_5 -3 + 53, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 54, 1, 2, 2 );
setScaleKey( spep_5 -3 + 57, 1, 2, 2 );
setScaleKey( spep_5 -3 + 58, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 60, 1, 1.68, 1.69 );
setScaleKey( spep_5 -3 + 62, 1, 1.56, 1.58 );
setScaleKey( spep_5 -3 + 64, 1, 1.75, 1.78 );
setScaleKey( spep_5 -3 + 66, 1, 1.62, 1.65 );
setScaleKey( spep_5 -3 + 68, 1, 1.61, 1.64 );
setScaleKey( spep_5 -3 + 70, 1, 1.45, 1.48 );
setScaleKey( spep_5 -3 + 72, 1, 1.44, 1.46 );
setScaleKey( spep_5 -3 + 74, 1, 1.42, 1.43 );
setScaleKey( spep_5 -3 + 76, 1, 1.39, 1.4 );
setScaleKey( spep_5 -3 + 78, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 80, 1, 1.28, 1.28 );
setScaleKey( spep_5 -3 + 82, 1, 1.2, 1.19 );
setScaleKey( spep_5 -3 + 84, 1, 1.11, 1.1 );
setScaleKey( spep_5 -3 + 86, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 88, 1, 0.92, 0.92 );
setScaleKey( spep_5 -3 + 90, 1, 0.82, 0.83 );
setScaleKey( spep_5 -3 + 92, 1, 0.73, 0.74 );
setScaleKey( spep_5 -3 + 94, 1, 0.64, 0.66 );
setScaleKey( spep_5 -3 + 96, 1, 0.56, 0.58 );
setScaleKey( spep_5 -3 + 98, 1, 0.48, 0.5 );
setScaleKey( spep_5 -3 + 100, 1, 0.41, 0.43 );
setScaleKey( spep_5 -3 + 102, 1, 0.35, 0.37 );
setScaleKey( spep_5 -3 + 104, 1, 0.3, 0.31 );
setScaleKey( spep_5 -3 + 106, 1, 0.27, 0.27 );
setScaleKey( spep_5 -3 + 108, 1, 0.25, 0.25 );
setScaleKey( spep_5 -3 + 110, 1, 0.24, 0.24 );
setScaleKey( spep_5 -3 + 112, 1, 0.23, 0.24 );
setScaleKey( spep_5 -3 + 114, 1, 0.23, 0.23 );
setScaleKey( spep_5 -3 + 116, 1, 0.22, 0.23 );
setScaleKey( spep_5 -3 + 118, 1, 0.22, 0.23 );
setScaleKey( spep_5 -3 + 120, 1, 0.22, 0.22 );
setScaleKey( spep_5 -3 + 122, 1, 0.21, 0.22 );
setScaleKey( spep_5 -3 + 121, 1, 0.21, 0.22 );
--[[setScaleKey( spep_5 -3 + 128, 1, 0.21, 0.22 );
setScaleKey( spep_5 -3 + 130, 1, 0.21, 0.21 );
setScaleKey( spep_5 -3 + 132, 1, 0.2, 0.21 );
setScaleKey( spep_5 -3 + 148, 1, 0.2, 0.21 );
setScaleKey( spep_5 -3 + 150, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 179, 1, 0.2, 0.2 );]]

setRotateKey( spep_5    + 0, 1, 0 );
setRotateKey( spep_5 -3 + 29, 1, 0 );
setRotateKey( spep_5 -3 + 30, 1, -55.9 );
setRotateKey( spep_5 -3 + 33, 1, -55.9 );
setRotateKey( spep_5 -3 + 34, 1, 0 );
setRotateKey( spep_5 -3 + 41, 1, 0 );
setRotateKey( spep_5 -3 + 42, 1, -55.9 );
setRotateKey( spep_5 -3 + 45, 1, -55.9 );
setRotateKey( spep_5 -3 + 46, 1, 0 );
setRotateKey( spep_5 -3 + 121, 1, 0 );

-- ** 音 ** --
--空中連打12
playSe( spep_5 + 2, 1027 );
setSeVolume( spep_5 + 2, 1027, 43 );
--空中連打13
playSe( spep_5 + 5, 1003 );
setSeVolume( spep_5 + 5, 1003, 94 );

--敵連打ヒット1
playSe( spep_5 + 6, 1189 );
--敵連打ヒット2
playSe( spep_5 + 11, 1000 );
setSeVolume( spep_5 + 11, 1000, 79 );
--敵連打ヒット3
playSe( spep_5 + 11, 1006 );
setSeVolume( spep_5 + 11, 1006, 76 );
--敵連打ヒット4
playSe( spep_5 + 17, 1007 );
setSeVolume( spep_5 + 17, 1007, 80 );
--敵連打ヒット5
playSe( spep_5 + 19, 1000 );
setSeVolume( spep_5 + 19, 1000, 145 );
--敵連打ヒット6
playSe( spep_5 + 23, 1012 );
--敵連打ヒット7
playSe( spep_5 + 25, 1000 );
setSeVolume( spep_5 + 25, 1000, 77 );
--敵連打ヒット8
playSe( spep_5 + 29, 1000 );
setSeVolume( spep_5 + 29, 1000, 79 );
--敵連打ヒット9
playSe( spep_5 + 31, 1007 );
--敵連打ヒット10
playSe( spep_5 + 33, 1009 );
setSeVolume( spep_5 + 41, 1009, 60 );
--敵連打ヒット11
playSe( spep_5 + 35, 1000 );
--敵連打ヒット12
playSe( spep_5 + 39, 1010 );
setSeVolume( spep_5 + 39, 1010, 73 );
--敵連打ヒット13
playSe( spep_5 + 41, 1000 );
--敵連打ヒット14
playSe( spep_5 + 49, 1000 );
--敵連打ヒット15
playSe( spep_5 + 51, 1006 );
setSeVolume( spep_5 + 51, 1006, 83 );
--敵連打ヒット16
playSe( spep_5 + 57, 1000 );
--敵連打ヒット17
playSe( spep_5 + 59, 1007 );
--敵連打ヒット18
playSe( spep_5 + 59, 1110 );
setSeVolume( spep_5 + 59, 1110, 53 );

--敵飛んでいく1
SE09 = playSe( spep_5 + 69, 1183 );
setSeVolume( spep_5 + 69, 1183, 100 );
stopSe( spep_5 + 143, SE09, 0 );
--敵飛んでいく2
SE10 = playSe( spep_5 + 71, 1121 );
setSeVolume( spep_5 + 71, 1121, 50 );
stopSe( spep_5 + 143, SE10, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 120, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 +   0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + 112,  6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 120;

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

finish_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 100, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6  +   0, 1, 1 );
setDisp( spep_6  + 100, 1, 0 );
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
--ガッ
playSe( spep_6 + 8, 1054 );
setSeVolume( spep_6 + 8, 1054, 126 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 98 );

else 

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、パンチ正面連打(126)
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
prush1 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --導入、パンチ正面連打(ef_001)
setEffMoveKey(   spep_0 +   0, prush1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 126, prush1, 0, 0 , 0 );
setEffScaleKey(  spep_0 +   0, prush1, -1.0, 1.0 );
setEffScaleKey(  spep_0 + 126, prush1, -1.0, 1.0 );
setEffRotateKey( spep_0 +   0, prush1, 0 );
setEffRotateKey( spep_0 + 126, prush1, 0 );
setEffAlphaKey(  spep_0 +   0, prush1, 255 );
setEffAlphaKey(  spep_0 + 126, prush1, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 38, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 38, 25 );
setEffMoveKey(   spep_0 +  0, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 38, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 +  0, shuchusen1, 1.2, 1.2 );
setEffScaleKey(  spep_0 + 38, shuchusen1, 1.2, 1.2 );
setEffRotateKey( spep_0 +  0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 38, shuchusen1, 0 );
setEffAlphaKey(  spep_0 +  0, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 38, shuchusen1, 255 );

-- ** 音 ** --
--ゴーグル光る1
SE00 = playSe( spep_0 + 0, 46 );
setSeVolume( spep_0 +  0, 46,  0 );
setSeVolume( spep_0 + 10, 46,  1 );
setSeVolume( spep_0 + 11, 46,  5 );
setSeVolume( spep_0 + 12, 46,  9 );
setSeVolume( spep_0 + 13, 46, 14 );
setSeVolume( spep_0 + 14, 46, 19 );
setSeVolume( spep_0 + 15, 46, 22 );
setSeVolume( spep_0 + 27, 46, 22 );
setSeVolume( spep_0 + 33, 46, 19 );
setSeVolume( spep_0 + 39, 46, 16 );
setSeVolume( spep_0 + 45, 46, 13 );
setSeVolume( spep_0 + 51, 46, 10 );
setSeVolume( spep_0 + 57, 46,  7 );
setSeVolume( spep_0 + 63, 46,  5 );
setSeVolume( spep_0 + 69, 46,  2 );

--ゴーグル光る2
SE01 = playSe( spep_0 + 6, 1042 );
setSeVolume( spep_0 + 6, 1042, 92 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 126, 0, 0, 0, 0, 255 );  --薄い黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge, SE00, 0 );
stopSe( SP_dodge, SE01, 0 );

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

-- ** 顔カットイン ** --
--spep_x = spep_0 + 32;
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );]]

-- ** 音 ** --
--ゴーグル光る1
setSeVolume( spep_0 + 73, 46,  0 );
stopSe( spep_0 + 73, SE00, 0 );

--セリフカットイン
playSe( spep_0 + 45, 1018 );

--腕連打1
SE02 = playSe( spep_0 + 47, 1189 );
--腕連打2
SE03 = playSe( spep_0 + 51, 1181 );
setSeVolume( spep_0 + 102, 1181, 100 );
setSeVolume( spep_0 + 105, 1181, 90 );
setSeVolume( spep_0 + 108, 1181, 80 );
setSeVolume( spep_0 + 111, 1181, 70 );
setSeVolume( spep_0 + 114, 1181, 60 );
setSeVolume( spep_0 + 117, 1181, 50 );
setSeVolume( spep_0 + 120, 1181, 40 );
setSeVolume( spep_0 + 123, 1181, 30 );
setSeVolume( spep_0 + 126, 1181, 20 );
setSeVolume( spep_0 + 129, 1181, 10 );
setSeVolume( spep_0 + 131, 1181, 5 );
setSeVolume( spep_0 + 133, 1181, 0 );
stopSe( spep_0 + 133, SE03, 0 );

--腕連打3
SE04 = playSe( spep_0 + 52, 1003 );
setSeVolume( spep_0 + 52, 1003, 76 );
--腕連打4
SE05 = playSe( spep_0 + 61, 1003 );
--腕連打5
SE06 = playSe( spep_0 + 68, 1189 );
--腕連打6
playSe( spep_0 + 73, 1003 );
setSeVolume( spep_0 + 73, 1003, 89 );
--腕連打7
playSe( spep_0 + 75, 1189 );
setSeVolume( spep_0 + 75, 1189, 81 );
--腕連打8
playSe( spep_0 + 82, 1003 );
setSeVolume( spep_0 + 82, 1003, 69 );
--腕連打9
playSe( spep_0 + 85, 1189 );
setSeVolume( spep_0 + 85, 1189, 71 );
--腕連打10
playSe( spep_0 + 91, 1003 );
setSeVolume( spep_0 + 91, 1003, 68 );
--腕連打11
playSe( spep_0 + 92, 1189 );
setSeVolume( spep_0 + 92, 1189, 75 );
--腕連打12
playSe( spep_0 + 99, 1003 );
setSeVolume( spep_0 + 99, 1003, 82 );
--腕連打13
playSe( spep_0 + 110, 1003 );
setSeVolume( spep_0 + 110, 1003, 68 );
--腕連打14
playSe( spep_0 + 118, 1003 );
setSeVolume( spep_0 + 118, 1003, 76 );
--腕高速15
SE07 = playSe( spep_0 + 126, 1003 );
setSeVolume( spep_0 + 126, 1003, 89 );
stopSe( spep_0 + 135, SE07, 0 );

-- ** ホワイトフェード ** --
--entryFade( spep_0 + 116,  0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 118, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 126;

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
setEffShake(     spep_1 +  0, shuchusen, 90, 20 );
setEffMoveKey(   spep_1 +  0, shuchusen, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey(  spep_1 +  0, shuchusen, 1.6, 1.6 );
setEffScaleKey(  spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 +  0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey(  spep_1 +  0, shuchusen, 255 );
setEffAlphaKey(  spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 連打残像攻撃、敵より手前(84)
------------------------------------------------------
-- ** エフェクト等 ** --
pattack1_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --連打残像攻撃、敵より手前(ef_002)
setEffMoveKey(   spep_2 +  0, pattack1_f, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 84, pattack1_f, 0, 0 , 0 );
setEffScaleKey(  spep_2 +  0, pattack1_f, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 84, pattack1_f, 1.0, 1.0 );
setEffRotateKey( spep_2 +  0, pattack1_f, 0 );
setEffRotateKey( spep_2 + 84, pattack1_f, 0 );
setEffAlphaKey(  spep_2 +  0, pattack1_f, 255 );
setEffAlphaKey(  spep_2 + 84, pattack1_f, 255 );

pattack1_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --連打残像攻撃用背景(ef_003)
setEffMoveKey(   spep_2 +  0, pattack1_b, 0,   0 , 0 );
setEffMoveKey(   spep_2 + 84, pattack1_b, 0,   0 , 0 );
setEffScaleKey(  spep_2 +  0, pattack1_b, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 84, pattack1_b, 1.0, 1.0 );
setEffRotateKey( spep_2 +  0, pattack1_b, 0 );
setEffRotateKey( spep_2 + 84, pattack1_b, 0 );
setEffAlphaKey(  spep_2 +  0, pattack1_b, 255 );
setEffAlphaKey(  spep_2 + 84, pattack1_b, 255 );

-- ** 書き文字エントリー ** --
ctga1 = entryEffectLife( spep_2 -3 + 6,  10005, 13, 0x100, -1, 0, 101.1, 21.3 ); --ガッ
setEffMoveKey(   spep_2 -3 + 6,  ctga1, 148.6, -2.4 , 0 );
setEffMoveKey(   spep_2 -3 + 8,  ctga1, 220.1,  9.9 , 0 );
setEffMoveKey(   spep_2 -3 + 10, ctga1, 263,   17.3 , 0 );
setEffMoveKey(   spep_2 -3 + 12, ctga1, 277.3, 19.8 , 0 );
setEffMoveKey(   spep_2 -3 + 19, ctga1, 277.3, 19.8 , 0 );
setEffScaleKey(  spep_2 -3 +  6, ctga1, 0.5,    0.5 );
setEffScaleKey(  spep_2 -3 +  8, ctga1, 0.71,   0.71 );
setEffScaleKey(  spep_2 -3 + 10, ctga1, 0.78,   0.78 );
setEffScaleKey(  spep_2 -3 + 12, ctga1, 0.83,   0.83 );
setEffScaleKey(  spep_2 -3 + 19, ctga1, 0.83,   0.83 );
setEffRotateKey( spep_2 -3 +  6, ctga1, 10 );
setEffRotateKey( spep_2 -3 + 19, ctga1, 10 );
setEffAlphaKey(  spep_2 -3 +  6, ctga1, 255 );
setEffAlphaKey(  spep_2 -3 + 19, ctga1, 255 );

ctga2 = entryEffectLife( spep_2 -3 + 20,  10005, 13, 0x100, -1, 0, -171.2, 91 ); --ガッ
setEffMoveKey(   spep_2 -3 + 20, ctga2, -105.2, 28.3 , 0 );
setEffMoveKey(   spep_2 -3 + 22, ctga2, -69.5,  100 , 0 );
setEffMoveKey(   spep_2 -3 + 24, ctga2, -51,    142.4 , 0 );
setEffMoveKey(   spep_2 -3 + 26, ctga2, -45.3,  156.2 , 0 );
setEffMoveKey(   spep_2 -3 + 33, ctga2, -45.3,  156.2 , 0 );

setEffScaleKey(  spep_2 -3 + 20, ctga2,  0.94,  0.94 );
setEffScaleKey(  spep_2 -3 + 22, ctga2,  1.05,  1.05 );
setEffScaleKey(  spep_2 -3 + 24, ctga2,  1.1,   1.1 );
setEffScaleKey(  spep_2 -3 + 26, ctga2,  1.12,  1.12 );
setEffScaleKey(  spep_2 -3 + 33, ctga2,  1.12,  1.12 );

setEffRotateKey( spep_2 -3 + 20, ctga2,  25.8 );
setEffRotateKey( spep_2 -3 + 22, ctga2,  35 );
setEffRotateKey( spep_2 -3 + 24, ctga2,  37.1 );
setEffRotateKey( spep_2 -3 + 26, ctga2,  40.1 );
setEffRotateKey( spep_2 -3 + 33, ctga2,  40.1 );
setEffAlphaKey(  spep_2 -3 + 20, ctga2,  255 );
setEffAlphaKey(  spep_2 -3 + 33, ctga2,  255 );

ctga3 = entryEffectLife( spep_2 -3 + 32,  10005, 14, 0x100, -1, 0, 163.4, 63.8 ); --ガッ
setEffMoveKey(   spep_2 -3 + 32, ctga3, 171.4, 35.7 , 0 );
setEffMoveKey(   spep_2 -3 + 34, ctga3, 211.5, 38.1 , 0 );
setEffMoveKey(   spep_2 -3 + 36, ctga3, 235.3, 37 , 0 );
setEffMoveKey(   spep_2 -3 + 40, ctga3, 257,   31.2 , 0 );
setEffMoveKey(   spep_2 -3 + 42, ctga3, 270.8, 21.7 , 0 );
setEffMoveKey(   spep_2 -3 + 44, ctga3, 284.6, 17.1 , 0 );
setEffMoveKey(   spep_2 -3 + 46, ctga3, 284.6, 17.1 , 0 );
setEffScaleKey(  spep_2 -3 + 32, ctga3, 0.33,  0.33 );
setEffScaleKey(  spep_2 -3 + 34, ctga3, 0.85,  0.85 );
setEffScaleKey(  spep_2 -3 + 36, ctga3, 1.2,   1.2 );
setEffScaleKey(  spep_2 -3 + 38, ctga3, 1.28,  1.28 );
setEffScaleKey(  spep_2 -3 + 46, ctga3, 1.28,  1.28 );
setEffRotateKey( spep_2 -3 + 32, ctga3, 55.7 );
setEffRotateKey( spep_2 -3 + 34, ctga3, 55.7 );
setEffRotateKey( spep_2 -3 + 36, ctga3, 55.7 );
setEffRotateKey( spep_2 -3 + 38, ctga3, 55.7 );
setEffRotateKey( spep_2 -3 + 46, ctga3, 55.7 );
setEffAlphaKey(  spep_2 -3 + 32, ctga3, 255 );
setEffAlphaKey(  spep_2 -3 + 38, ctga3, 255 );
setEffAlphaKey(  spep_2 -3 + 40, ctga3, 179 );
setEffAlphaKey(  spep_2 -3 + 42, ctga3, 102 );
setEffAlphaKey(  spep_2 -3 + 44, ctga3, 26 );
setEffAlphaKey(  spep_2 -3 + 46, ctga3, 0 );

ctga4 = entryEffectLife( spep_2 -3 + 46,  10005, 12, 0x100, -1, 0, 105.7, 23.1 ); --ガッ
setEffMoveKey(   spep_2 -3 + 46, ctga4, 148.6, -2.4 , 0 );
setEffMoveKey(   spep_2 -3 + 48, ctga4, 220.1,  9.9 , 0 );
setEffMoveKey(   spep_2 -3 + 50, ctga4, 263,   17.3 , 0 );
setEffMoveKey(   spep_2 -3 + 52, ctga4, 277.3, 19.8 , 0 );
setEffMoveKey(   spep_2 -3 + 58, ctga4, 277.3, 19.8 , 0 );
setEffScaleKey(  spep_2 -3 + 46, ctga4, 0.56,   0.56 );
setEffScaleKey(  spep_2 -3 + 48, ctga4, 0.67,   0.67 );
setEffScaleKey(  spep_2 -3 + 50, ctga4, 0.77,   0.79 );
setEffScaleKey(  spep_2 -3 + 52, ctga4, 0.8,    0.8 );
setEffScaleKey(  spep_2 -3 + 58, ctga4, 0.8,    0.8 );
setEffRotateKey( spep_2 -3 + 46, ctga4, 10 );
setEffRotateKey( spep_2 -3 + 58, ctga4, 10 );
setEffAlphaKey(  spep_2 -3 + 46, ctga4, 255 );
setEffAlphaKey(  spep_2 -3 + 58, ctga4, 255 );

ctga5 = entryEffectLife( spep_2 -3 + 60,  10005, 13, 0x100, -1, 0, -171.2, 91 ); --ガッ
setEffMoveKey(   spep_2 -3 + 60, ctga5, -105.2, 27.3 , 0 );
setEffMoveKey(   spep_2 -3 + 62, ctga5, -69.5, 100 , 0 );
setEffMoveKey(   spep_2 -3 + 64, ctga5, -53,   149.4 , 0 );
setEffMoveKey(   spep_2 -3 + 66, ctga5, -45.3, 157.2 , 0 );
setEffMoveKey(   spep_2 -3 + 73, ctga5, -45.3, 157.2 , 0 );
setEffScaleKey(  spep_2 -3 + 60, ctga5,  0.94,   0.94 );
setEffScaleKey(  spep_2 -3 + 62, ctga5,  1.12,   1.12 );
setEffScaleKey(  spep_2 -3 + 64, ctga5,  1.18,   1.18 );
setEffScaleKey(  spep_2 -3 + 66, ctga5,  1.21,   1.21 );
setEffScaleKey(  spep_2 -3 + 73, ctga5,  1.21,   1.21 );
setEffRotateKey( spep_2 -3 + 60, ctga5,  21.8 );
setEffRotateKey( spep_2 -3 + 62, ctga5,  34 );
setEffRotateKey( spep_2 -3 + 64, ctga5,  42.1 );
setEffRotateKey( spep_2 -3 + 66, ctga5,  44.1 );
setEffRotateKey( spep_2 -3 + 73, ctga5,  44.1 );
setEffAlphaKey(  spep_2 -3 + 60, ctga5,  255 );
setEffAlphaKey(  spep_2 -3 + 73, ctga5,  255 );

ctga6 = entryEffectLife( spep_2 -3 + 72,  10005, 14, 0x100, -1, 0, 163.4, 63.8 ); --ガッ
setEffMoveKey(   spep_2 -3 + 72, ctga6, 171.4, 35.7 , 0 );
setEffMoveKey(   spep_2 -3 + 74, ctga6, 211.5, 37.1 , 0 );
setEffMoveKey(   spep_2 -3 + 76, ctga6, 235.3, 39 , 0 );
setEffMoveKey(   spep_2 -3 + 78, ctga6, 243.2, 39.7 , 0 );
setEffMoveKey(   spep_2 -3 + 80, ctga6, 257,   32.2 , 0 );
setEffMoveKey(   spep_2 -3 + 82, ctga6, 270.8, 24.7 , 0 );
setEffMoveKey(   spep_2 -3 + 84, ctga6, 284.6, 17.1 , 0 );
setEffMoveKey(   spep_2 -3 + 86, ctga6, 284.6, 17.1 , 0 );
setEffScaleKey(  spep_2 -3 + 72, ctga6, 0.34,  0.34 );
setEffScaleKey(  spep_2 -3 + 74, ctga6, 0.82,  0.82 );
setEffScaleKey(  spep_2 -3 + 76, ctga6, 1.19,  1.19 );
setEffScaleKey(  spep_2 -3 + 78, ctga6, 1.27,  1.27 );
setEffScaleKey(  spep_2 -3 + 86, ctga6, 1.27,  1.27 );
setEffRotateKey( spep_2 -3 + 72, ctga6, 55.5 );
setEffRotateKey( spep_2 -3 + 74, ctga6, 55.7 );
setEffRotateKey( spep_2 -3 + 76, ctga6, 55.9 );
setEffRotateKey( spep_2 -3 + 78, ctga6, 56 );
setEffRotateKey( spep_2 -3 + 86, ctga6, 56 );
setEffAlphaKey(  spep_2 -3 + 72, ctga6, 255 );
setEffAlphaKey(  spep_2 -3 + 78, ctga6, 255 );
setEffAlphaKey(  spep_2 -3 + 80, ctga6, 179 );
setEffAlphaKey(  spep_2 -3 + 82, ctga6, 102 );
setEffAlphaKey(  spep_2 -3 + 84, ctga6, 26 );
setEffAlphaKey(  spep_2 -3 + 86, ctga6, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 +  0, 1, 1 );
setDisp( spep_2 + 84, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2    + 0, 1, 10, 10 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 2, 4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 21.7, 10 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 13.7, 4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 6.5, 11.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 2.2, 10 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -5.8, 4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -3.7, 31.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -15.9, 27.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -8.5, 35.3 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 33, 22.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 41.3, 27.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 52.9, 23.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 60.9, 29.6 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 49.4, 11.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 57.3, 16.5 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 49, 9.9 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 41.4, 16 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 33.4, 9.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 41.2, 17.6 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 28, -3.5 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 37.4, 2.5 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 37.4, 19.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 45.4, 29 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 25.2, 20.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 33.7, 25.8 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 4.1, 29.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 12.1, 35.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 1.1, 32.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 8.9, 39.8 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 51.3, 32.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 59.1, 37.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 51.1, 31.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 75.6, 59.2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 65.3, 48.6 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 72.8, 53.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 47.2, 57 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 55.2, 63 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -1.2, 4.8 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 6.5, 11.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 2, 4 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 0, 0 , 0 );

setScaleKey( spep_2    + 0, 1, 2, 2 );
setScaleKey( spep_2 -3 + 8, 1, 2, 2 );
setScaleKey( spep_2 -3 + 10, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 14, 1, 2, 2 );
setScaleKey( spep_2 -3 + 18, 1, 2, 2 );
setScaleKey( spep_2 -3 + 20, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 22, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 26, 1, 2, 2 );
setScaleKey( spep_2 -3 + 30, 1, 2, 2 );
setScaleKey( spep_2 -3 + 32, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 34, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 36, 1, 2, 2 );
setScaleKey( spep_2 -3 + 40, 1, 2, 2 );
setScaleKey( spep_2 -3 + 42, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 44, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 46, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 48, 1, 2, 2 );
setScaleKey( spep_2 -3 + 50, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 52, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 54, 1, 2, 2 );
setScaleKey( spep_2 -3 + 58, 1, 2, 2 );
setScaleKey( spep_2 -3 + 60, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 62, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 64, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 66, 1, 2, 2 );
setScaleKey( spep_2 -3 + 68, 1, 2, 2 );
setScaleKey( spep_2 -3 + 70, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 72, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 74, 1, 2, 2 );
setScaleKey( spep_2 -3 + 78, 1, 2, 2 );
setScaleKey( spep_2 -3 + 80, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 82, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 84, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 86, 1, 2, 2 );
setScaleKey( spep_2 -3 + 87, 1, 2, 2 );

setRotateKey( spep_2    +  0, 1, 0 );
setRotateKey( spep_2 -3 + 87, 1, 0 );

-- ** 音 ** --
--敵連打（耐える）1
playSe( spep_2 + 3, 1189 );
--敵連打（耐える）2
playSe( spep_2 + 7, 1006 );
--敵連打（耐える）3
playSe( spep_2 + 14, 1006 );
setSeVolume( spep_2 + 14, 1006, 71 );
--敵連打（耐える）4
playSe( spep_2 + 14, 1189 );
--敵連打（耐える）5
playSe( spep_2 + 21, 1007 );
--敵連打（耐える）6
playSe( spep_2 + 26, 1006 );
setSeVolume( spep_2 + 26, 1006, 76 );
--敵連打（耐える）7
playSe( spep_2 + 33, 1189 );
--敵連打（耐える）8
playSe( spep_2 + 34, 1007 );
setSeVolume( spep_2 + 34, 1007, 84 );
--敵連打（耐える）9
playSe( spep_2 + 38, 1013 );
setSeVolume( spep_2 + 38, 1013, 80 );
--敵連打（耐える）10
playSe( spep_2 + 41, 1189 );
--敵連打（耐える）11
playSe( spep_2 + 41, 1007 );
--敵連打（耐える）12
playSe( spep_2 + 44, 1012 );
setSeVolume( spep_2 + 44, 1012, 56 );
--敵連打（耐える）13
playSe( spep_2 + 44, 1189 );
setSeVolume( spep_2 + 44, 1189, 126 );
--敵連打（耐える）14
playSe( spep_2 + 49, 1007 );
setSeVolume( spep_2 + 49, 1007, 78 );
--敵連打（耐える）15
playSe( spep_2 + 56, 1007 );
setSeVolume( spep_2 + 56, 1007, 67 );
--敵連打（耐える）16
playSe( spep_2 + 61, 1012 );
setSeVolume( spep_2 + 61, 1012, 47 );
--敵連打（耐える）17
playSe( spep_2 + 70, 1007 );
setSeVolume( spep_2 + 70, 1007, 59 );
--敵連打（耐える）18
playSe( spep_2 + 77, 1006 );
setSeVolume( spep_2 + 77, 1006, 82 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 +  0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 82,  2, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 84;

------------------------------------------------------
-- 連打残像攻撃(106)
------------------------------------------------------
-- ** エフェクト等 ** --
prush2 = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --連打残像攻撃(ef_004)
setEffMoveKey(   spep_3 +   0, prush2, 0, 0 , 0 );
setEffMoveKey(   spep_3 + 106, prush2, 0, 0 , 0 );
setEffScaleKey(  spep_3 +   0, prush2, -1.0, 1.0 );
setEffScaleKey(  spep_3 + 106, prush2, -1.0, 1.0 );
setEffRotateKey( spep_3 +   0, prush2, 0 );
setEffRotateKey( spep_3 + 106, prush2, 0 );
setEffAlphaKey(  spep_3 +   0, prush2, 255 );
setEffAlphaKey(  spep_3 + 106, prush2, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 53,  906, 52, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 53, shuchusen2, 52, 25 );
setEffMoveKey(   spep_3 +  53, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_3 + 105, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_3 +  53, shuchusen2, 1.8, 1.8 );
setEffScaleKey(  spep_3 + 105, shuchusen2, 1.8, 1.8 );
setEffRotateKey( spep_3 +  53, shuchusen2, 0 );
setEffRotateKey( spep_3 + 105, shuchusen2, 0 );
setEffAlphaKey(  spep_3 +  53, shuchusen2, 255 );
setEffAlphaKey(  spep_3 + 105, shuchusen2, 255 );

-- ** 音 ** --
--腕連打（高速）1
SE08 = playSe( spep_3 + 7, 1181 );
setSeVolume( spep_3 +  90, 1181, 100 );
setSeVolume( spep_3 +  93, 1181,  95 );
setSeVolume( spep_3 +  96, 1181,  90 );
setSeVolume( spep_3 +  99, 1181,  80 );
setSeVolume( spep_3 + 102, 1181,  70 );
setSeVolume( spep_3 + 105, 1181,  60 );
setSeVolume( spep_3 + 108, 1181,  50 );
setSeVolume( spep_3 + 111, 1181,  40 );
setSeVolume( spep_3 + 114, 1181,  30 );
setSeVolume( spep_3 + 117, 1181,  20 );
setSeVolume( spep_3 + 120, 1181,  15 );
setSeVolume( spep_3 + 123, 1181,  10 );
setSeVolume( spep_3 + 126, 1181,   5 );
setSeVolume( spep_3 + 129, 1181,   0 );
stopSe( spep_3 + 129, SE08, 0 );
--腕加速1
playSe( spep_3 + 7, 1003 );
--腕加速2
playSe( spep_3 + 7, 1004 );
setSeVolume( spep_3 + 7, 1004, 63 );
--腕加速3
playSe( spep_3 + 15, 1003 );
setSeVolume( spep_3 + 15, 1003, 72 );
--腕加速4
playSe( spep_3 + 23, 1003 );
setSeVolume( spep_3 + 23, 1003, 73 );
--腕加速5
playSe( spep_3 + 28, 1003 );
setSeVolume( spep_3 + 28, 1003, 84 );
--腕加速6
playSe( spep_3 + 32, 1003 );
setSeVolume( spep_3 + 32, 1003, 87 );
--腕加速7
playSe( spep_3 + 35, 1003 );
setSeVolume( spep_3 + 35, 1003, 50 );
--腕加速8
playSe( spep_3 + 36, 1048 );
setSeVolume( spep_3 + 36, 1048, 34 );
--腕加速9
playSe( spep_3 + 39, 1003 );
setSeVolume( spep_3 + 39, 1003, 79 );
--腕加速10
playSe( spep_3 + 39, 1048 );
setSeVolume( spep_3 + 39, 1048, 36 );
--腕加速11
playSe( spep_3 + 43, 1048 );
setSeVolume( spep_3 + 43, 1048, 40 );
--腕加速12
playSe( spep_3 + 44, 1003 );
setSeVolume( spep_3 + 44, 1003, 67 );
--腕加速13
playSe( spep_3 + 49, 1048 );
setSeVolume( spep_3 + 49, 1048, 42 );
--腕加速14
playSe( spep_3 + 51, 1003 );
setSeVolume( spep_3 + 51, 1003, 68 );
--腕加速15
playSe( spep_3 + 56, 1048 );
setSeVolume( spep_3 + 56, 1048, 45 );
--腕加速16
playSe( spep_3 + 60, 1003 );
setSeVolume( spep_3 + 60, 1003, 70 );
--腕加速17
playSe( spep_3 + 62, 1048 );
setSeVolume( spep_3 + 62, 1048, 43 );
--腕加速18
playSe( spep_3 + 65, 1048 );
setSeVolume( spep_3 + 65, 1048, 38 );
--腕加速19
playSe( spep_3 + 68, 1003 );
setSeVolume( spep_3 + 68, 1003, 67 );
--腕加速20
playSe( spep_3 + 69, 1048 );
setSeVolume( spep_3 + 69, 1048, 57 );
--腕加速21
playSe( spep_3 + 72, 1048 );
setSeVolume( spep_3 + 72, 1048, 47 );
--腕加速22
playSe( spep_3 + 76, 1048 );
setSeVolume( spep_3 + 76, 1048, 61 );
--腕加速23
playSe( spep_3 + 77, 1003 );
setSeVolume( spep_3 + 77, 1003, 37 );
--腕加速24
playSe( spep_3 + 79, 1048 );
setSeVolume( spep_3 + 79, 1048, 62 );
--腕加速25	playSe( spep_3 + 82, 1048 );
setSeVolume( spep_3 + 82, 1048, 60 );
--腕加速26
playSe( spep_3 + 84, 1003 );
setSeVolume( spep_3 + 84, 1003, 65 );
--腕加速27
playSe( spep_3 + 85, 1048 );
setSeVolume( spep_3 + 85, 1048, 69 );
--腕加速28
playSe( spep_3 + 89, 1048 );
setSeVolume( spep_3 + 89, 1048, 69 );
--腕加速29
playSe( spep_3 + 90, 1003 );
setSeVolume( spep_3 + 90, 1003, 75 );
--腕加速30
playSe( spep_3 + 94, 1048 );
setSeVolume( spep_3 + 94, 1048, 71 );
--腕加速31
playSe( spep_3 + 98, 1048 );
setSeVolume( spep_3 + 98, 1048, 79 );
--腕加速32
playSe( spep_3 + 98, 1003 );
setSeVolume( spep_3 + 98, 1003, 44 );
--腕加速33
playSe( spep_3 + 102, 1048 );
setSeVolume( spep_3 + 102, 1048, 74 );
--腕加速34
playSe( spep_3 + 104, 1003 );
setSeVolume( spep_3 + 104, 1003, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 106, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 +   0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 104,  2, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 105;

------------------------------------------------------
-- パンチ残像、白→黄色(56)
------------------------------------------------------
pyellow = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --連打残像攻撃(ef_005)
setEffMoveKey(   spep_4 +  0, pyellow, 0, 0 , 0 );
setEffMoveKey(   spep_4 + 56, pyellow, 0, 0 , 0 );
setEffScaleKey(  spep_4 +  0, pyellow, 1.0, 1.0 );
setEffScaleKey(  spep_4 + 56, pyellow, 1.0, 1.0 );
setEffRotateKey( spep_4 +  0, pyellow, 0 );
setEffRotateKey( spep_4 + 56, pyellow, 0 );
setEffAlphaKey(  spep_4 +  0, pyellow, 255 );
setEffAlphaKey(  spep_4 + 56, pyellow, 255 );

-- ** 音 ** --

--腕加速35
playSe( spep_4 + 1, 1048 );
setSeVolume( spep_4 + 1, 1048, 79 );
--腕加速36
playSe( spep_4 + 6, 1003 );
setSeVolume( spep_4 + 6, 1003, 40 );

--空中連打1
playSe( spep_4 + 16, 1003 );
--空中連打2
playSe( spep_4 + 22, 1003 );
--空中連打3
playSe( spep_4 + 27, 1003 );
--空中連打4
playSe( spep_4 + 34, 1003 );
--空中連打5
playSe( spep_4 + 37, 1027 );
setSeVolume( spep_4 + 37, 1027, 20 );
--空中連打6
playSe( spep_4 + 40, 1003 );
setSeVolume( spep_4 + 40, 1003, 84 );
--空中連打7
playSe( spep_4 + 44, 1027 );
setSeVolume( spep_4 + 44, 1027, 41 );
--空中連打8
playSe( spep_4 + 45, 1003 );
setSeVolume( spep_4 + 45, 1003, 88 );
--空中連打9
playSe( spep_4 + 50, 1003 );
setSeVolume( spep_4 + 50, 1003, 68 );
--空中連打10
playSe( spep_4 + 50, 1027 );
setSeVolume( spep_4 + 50, 1027, 30 );
--空中連打11
playSe( spep_4 + 55, 1003 );
setSeVolume( spep_4 + 55, 1003, 67 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 106, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 +  0,  0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 54,  2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;

------------------------------------------------------
-- 連打残像攻撃(黄色)、敵より手前~敵吹っ飛び(120)
------------------------------------------------------
-- ** エフェクト等 ** --
prush2_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --連打残像攻撃(黄色)、敵より手前(ef_006)
setEffMoveKey(   spep_5 +   0, prush2_f, 0, 0 , 0 );
setEffMoveKey(   spep_5 + 120, prush2_f, 0, 0 , 0 );
setEffScaleKey(  spep_5 +   0, prush2_f, 1.0, 1.0 );
setEffScaleKey(  spep_5 + 120, prush2_f, 1.0, 1.0 );
setEffRotateKey( spep_5 +   0, prush2_f, 0 );
setEffRotateKey( spep_5 + 120, prush2_f, 0 );
setEffAlphaKey(  spep_5 +   0, prush2_f, 255 );
setEffAlphaKey(  spep_5 + 119, prush2_f, 255 );
setEffAlphaKey(  spep_5 + 120, prush2_f, 0 );

prush2_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --連打残像攻撃(黄色)→敵吹っ飛び(ef_007)
setEffMoveKey(   spep_5 +   0, prush2_b, 0,   0 , 0 );
setEffMoveKey(   spep_5 + 120, prush2_b, 0,   0 , 0 );
setEffScaleKey(  spep_5 +   0, prush2_b, 1.0, 1.0 );
setEffScaleKey(  spep_5 + 120, prush2_b, 1.0, 1.0 );
setEffRotateKey( spep_5 +   0, prush2_b, 0 );
setEffRotateKey( spep_5 + 120, prush2_b, 0 );
setEffAlphaKey(  spep_5 +   0, prush2_b, 255 );
setEffAlphaKey(  spep_5 + 119, prush2_b, 255 );
setEffAlphaKey(  spep_5 + 120, prush2_b, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 49,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 49, shuchusen3, 18, 25 );
setEffMoveKey(   spep_5 + 49, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_5 + 63, shuchusen3, 50, 100 , 0 );
setEffMoveKey(   spep_5 + 67, shuchusen3, 50, 100 , 0 );
setEffScaleKey(  spep_5 + 49, shuchusen3, 1.2, 1.2 );
setEffScaleKey(  spep_5 + 63, shuchusen3, 1.6, 1.6 );
setEffScaleKey(  spep_5 + 67, shuchusen3, 1.6, 1.6 );
setEffRotateKey( spep_5 + 49, shuchusen3, 0 );
setEffRotateKey( spep_5 + 67, shuchusen3, 0 );
setEffAlphaKey(  spep_5 + 49, shuchusen3,  10 );
setEffAlphaKey(  spep_5 + 52, shuchusen3, 200 );
setEffAlphaKey(  spep_5 + 38, shuchusen3, 255 );
setEffAlphaKey(  spep_5 + 63, shuchusen3, 200 );
setEffAlphaKey(  spep_5 + 65, shuchusen3,  70 );
setEffAlphaKey(  spep_5 + 67, shuchusen3,   0 );

-- ** 書き文字エントリー ** --
ctbaki1 = entryEffectLife( spep_5 -3 + 14,  10020, 13, 0x100, -1, 0, 191.9, 34 ); --バキ
setEffMoveKey(   spep_5 -3 + 14, ctbaki1, 191.9, 34 , 0 );
setEffMoveKey(   spep_5 -3 + 16, ctbaki1, 204.6, 44.6 , 0 );
setEffMoveKey(   spep_5 -3 + 18, ctbaki1, 204.3, 58.9 , 0 );
setEffMoveKey(   spep_5 -3 + 20, ctbaki1, 201.9, 62 , 0 );
setEffMoveKey(   spep_5 -3 + 27, ctbaki1, 201.9, 62 , 0 );
setEffScaleKey(  spep_5 -3 + 14, ctbaki1, 0.58, 0.58 );
setEffScaleKey(  spep_5 -3 + 16, ctbaki1, 0.75, 0.75 );
setEffScaleKey(  spep_5 -3 + 18, ctbaki1, 0.96, 0.96 );
setEffScaleKey(  spep_5 -3 + 20, ctbaki1, 1.01, 1.01 );
setEffScaleKey(  spep_5 -3 + 27, ctbaki1, 1.01, 1.01 );
setEffRotateKey( spep_5 -3 + 14, ctbaki1, 0 );
setEffRotateKey( spep_5 -3 + 27, ctbaki1, 0 );
setEffAlphaKey(  spep_5 -3 + 14, ctbaki1, 255 );
setEffAlphaKey(  spep_5 -3 + 27, ctbaki1, 255 );

ctbaki2 = entryEffectLife( spep_5 -3 + 28,  10020, 13, 0x100, -1, 0, -134.4, 128.3 ); --バキ
setEffMoveKey(   spep_5 -3 + 28, ctbaki2, -134.4, 128.3 , 0 );
setEffMoveKey(   spep_5 -3 + 30, ctbaki2, -161.7, 148.8 , 0 );
setEffMoveKey(   spep_5 -3 + 32, ctbaki2, -193.7, 162.4 , 0 );
setEffMoveKey(   spep_5 -3 + 34, ctbaki2, -187.6, 164.7 , 0 );
setEffMoveKey(   spep_5 -3 + 41, ctbaki2, -187.6, 164.7 , 0 );
setEffScaleKey(  spep_5 -3 + 28, ctbaki2, 0.64, 0.64 );
setEffScaleKey(  spep_5 -3 + 30, ctbaki2, 1.05, 1.05 );
setEffScaleKey(  spep_5 -3 + 32, ctbaki2, 1.35, 1.35 );
setEffScaleKey(  spep_5 -3 + 34, ctbaki2, 1.44, 1.44 );
setEffScaleKey(  spep_5 -3 + 41, ctbaki2, 1.44, 1.44 );
setEffRotateKey( spep_5 -3 + 28, ctbaki2, -42.5 );
setEffRotateKey( spep_5 -3 + 30, ctbaki2, -40.2 );
setEffRotateKey( spep_5 -3 + 32, ctbaki2, -37.6 );
setEffRotateKey( spep_5 -3 + 34, ctbaki2, -36.7 );
setEffRotateKey( spep_5 -3 + 41, ctbaki2, -36.7 );
setEffAlphaKey(  spep_5 -3 + 28, ctbaki2, 255 );
setEffAlphaKey(  spep_5 -3 + 34, ctbaki2, 255 );
setEffAlphaKey(  spep_5 -3 + 41, ctbaki2, 255 );

ctbaki3 = entryEffectLife( spep_5 -3 + 42,  10020, 13, 0x100, -1, 0, 249.9, -14 ); --バキ
setEffMoveKey(   spep_5 -3 + 42, ctbaki3, 249.9, -14 , 0 );
setEffMoveKey(   spep_5 -3 + 44, ctbaki3, 248.4, 60.9 , 0 );
setEffMoveKey(   spep_5 -3 + 46, ctbaki3, 263.5, 114 , 0 );
setEffMoveKey(   spep_5 -3 + 48, ctbaki3, 264.3, 129.4 , 0 );
setEffMoveKey(   spep_5 -3 + 55, ctbaki3, 264.3, 129.4 , 0 );
setEffScaleKey(  spep_5 -3 + 42, ctbaki3, 0.61,  0.61 );
setEffScaleKey(  spep_5 -3 + 44, ctbaki3, 1.61,  1.61 );
setEffScaleKey(  spep_5 -3 + 46, ctbaki3, 2.24,  2.24 );
setEffScaleKey(  spep_5 -3 + 48, ctbaki3, 2.4, 2.4 );
setEffScaleKey(  spep_5 -3 + 55, ctbaki3, 2.4, 2.4 );
setEffRotateKey( spep_5 -3 + 42, ctbaki3, 43.5 );
setEffRotateKey( spep_5 -3 + 44, ctbaki3, 43.7 );
setEffRotateKey( spep_5 -3 + 46, ctbaki3, 43.9 );
setEffRotateKey( spep_5 -3 + 48, ctbaki3, 44 );
setEffRotateKey( spep_5 -3 + 55, ctbaki3, 44 );
setEffAlphaKey(  spep_5 -3 + 42, ctbaki3, 255 );
setEffAlphaKey(  spep_5 -3 + 48, ctbaki3, 255 );
setEffAlphaKey(  spep_5 -3 + 50, ctbaki3, 179 );
setEffAlphaKey(  spep_5 -3 + 52, ctbaki3, 102 );
setEffAlphaKey(  spep_5 -3 + 54, ctbaki3, 26 );
setEffAlphaKey(  spep_5 -3 + 55, ctbaki3, 26 );

ctbaki4 = entryEffectLife( spep_5 -3 + 48,  10020, 32, 0x100, -1, 0, 165.9, 24 ); --バキ
setEffMoveKey(   spep_5 -3 + 48, ctbaki4, 165.9, 24 , 0 );
setEffMoveKey(   spep_5 -3 + 50, ctbaki4, 117.4, 127.3 , 0 );
setEffMoveKey(   spep_5 -3 + 52, ctbaki4, 75.3, 178.7 , 0 );
setEffMoveKey(   spep_5 -3 + 54, ctbaki4, 64, 198 , 0 );
setEffMoveKey(   spep_5 -3 + 56, ctbaki4, 64.8, 197.5 , 0 );
setEffMoveKey(   spep_5 -3 + 58, ctbaki4, 65.7, 197   , 0 );
setEffMoveKey(   spep_5 -3 + 60, ctbaki4, 66.5, 196.4 , 0 );
setEffMoveKey(   spep_5 -3 + 62, ctbaki4, 67.3, 195.9 , 0 );
setEffMoveKey(   spep_5 -3 + 64, ctbaki4, 68.1, 195.4 , 0 );
setEffMoveKey(   spep_5 -3 + 66, ctbaki4, 69  , 194.9 , 0 );
setEffMoveKey(   spep_5 -3 + 68, ctbaki4, 69.8, 194.3 , 0 );
setEffMoveKey(   spep_5 -3 + 70, ctbaki4, 70.6, 193.8 , 0 );
setEffMoveKey(   spep_5 -3 + 72, ctbaki4, 71.5, 193.3 , 0 );
setEffMoveKey(   spep_5 -3 + 74, ctbaki4, 72.3, 192.7 , 0 );
setEffMoveKey(   spep_5 -3 + 76, ctbaki4, 73.1, 192.2 , 0 );
setEffMoveKey(   spep_5 -3 + 78, ctbaki4, 74  , 191.7 , 0 );
setEffMoveKey(   spep_5 -3 + 80, ctbaki4, 73.2, 191.1 , 0 );
setEffScaleKey(  spep_5 -3 + 48, ctbaki4, 0.63, 0.63 );
setEffScaleKey(  spep_5 -3 + 50, ctbaki4, 1.86, 1.86 );
setEffScaleKey(  spep_5 -3 + 48, ctbaki4, 0.612, 0.612 );
setEffScaleKey(  spep_5 -3 + 50, ctbaki4, 1.768, 1.768 );
setEffScaleKey(  spep_5 -3 + 52, ctbaki4, 2.482, 2.482 );
setEffScaleKey(  spep_5 -3 + 54, ctbaki4, 2.72, 2.72 );
setEffScaleKey(  spep_5 -3 + 56, ctbaki4, 2.82, 2.82 );
setEffScaleKey(  spep_5 -3 + 58, ctbaki4, 2.96, 2.96 );
setEffScaleKey(  spep_5 -3 + 60, ctbaki4, 3.06, 3.06 );
setEffScaleKey(  spep_5 -3 + 62, ctbaki4, 3.20, 3.20 );
setEffScaleKey(  spep_5 -3 + 64, ctbaki4, 3.298, 3.298 );
setEffScaleKey(  spep_5 -3 + 66, ctbaki4, 3.44, 3.44 );
setEffScaleKey(  spep_5 -3 + 68, ctbaki4, 3.536, 3.536 );
setEffScaleKey(  spep_5 -3 + 70, ctbaki4, 3.672, 3.672 );
setEffScaleKey(  spep_5 -3 + 72, ctbaki4, 3.774, 3.774 );
setEffScaleKey(  spep_5 -3 + 74, ctbaki4, 3.910, 3.910 );
setEffScaleKey(  spep_5 -3 + 76, ctbaki4, 4.012, 4.012 );
setEffScaleKey(  spep_5 -3 + 78, ctbaki4, 4.114, 4.114 );
setEffScaleKey(  spep_5 -3 + 80, ctbaki4, 4.25, 4.25 );
setEffRotateKey( spep_5 -3 + 48, ctbaki4, -7.5 );
setEffRotateKey( spep_5 -3 + 50, ctbaki4, -10.3 );
setEffRotateKey( spep_5 -3 + 52, ctbaki4, -12 );
setEffRotateKey( spep_5 -3 + 54, ctbaki4, -12.5 );
setEffRotateKey( spep_5 -3 + 80, ctbaki4, -12.5 );
setEffAlphaKey(  spep_5 -3 + 48, ctbaki4, 255 );
setEffAlphaKey(  spep_5 -3 + 54, ctbaki4, 255 );
setEffAlphaKey(  spep_5 -3 + 56, ctbaki4, 235 );
setEffAlphaKey(  spep_5 -3 + 58, ctbaki4, 216 );
setEffAlphaKey(  spep_5 -3 + 60, ctbaki4, 196 );
setEffAlphaKey(  spep_5 -3 + 62, ctbaki4, 177 );
setEffAlphaKey(  spep_5 -3 + 64, ctbaki4, 157 );
setEffAlphaKey(  spep_5 -3 + 66, ctbaki4, 137 );
setEffAlphaKey(  spep_5 -3 + 68, ctbaki4, 118 );
setEffAlphaKey(  spep_5 -3 + 70, ctbaki4, 98 );
setEffAlphaKey(  spep_5 -3 + 72, ctbaki4, 78 );
setEffAlphaKey(  spep_5 -3 + 74, ctbaki4, 59 );
setEffAlphaKey(  spep_5 -3 + 76, ctbaki4, 39 );
setEffAlphaKey(  spep_5 -3 + 78, ctbaki4, 20 );
setEffAlphaKey(  spep_5 -3 + 80, ctbaki4, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5  +   0, 1, 1 );
setDisp( spep_5  + 118, 1, 0 );
changeAnime( spep_5    +  0, 1, 104 );
changeAnime( spep_5 -3 + 30, 1, 106 );
changeAnime( spep_5 -3 + 34, 1, 104 );
changeAnime( spep_5 -3 + 38, 1, 108 );
changeAnime( spep_5 -3 + 42, 1, 106 );
changeAnime( spep_5 -3 + 46, 1, 108 );
changeAnime( spep_5 -3 + 54, 1, 104 );
changeAnime( spep_5 -3 + 58, 1, 105 );

setMoveKey( spep_5    + 0, 1, 0, 0 , 0 );
setMoveKey( spep_5    + 2, 1, 10, 10 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 2, 4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 10, 10 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 2, 4 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 6.5, 11.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 10, 10 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 2, 4 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 10, 10 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -1, 5.2 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 7.1, 12.4 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 10, 10 , 0 );
setMoveKey( spep_5 -3 + 29, 1, 2, 4 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 33.3, 10 , 0 );
setMoveKey( spep_5 -3 + 33, 1, 23.4, 5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 9.9, 11.1 , 0 );
setMoveKey( spep_5 -3 + 37, 1, 2.4, 4.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 33.2, 9.9 , 0 );
setMoveKey( spep_5 -3 + 41, 1, 25.2, 3.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 5.5, 61.6 , 0 );
setMoveKey( spep_5 -3 + 45, 1, -4.2, 56.6 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 33, 10.3 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 26.7, 4.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 33.9, 12.4 , 0 );
setMoveKey( spep_5 -3 + 53, 1, 24.7, 4.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 9.9, 9.9 , 0 );
setMoveKey( spep_5 -3 + 57, 1, 1.9, 3.9 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 44.6, -15.8 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 35.6, -22 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 44.6, -14.7 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 41.9, -23 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 53.9, 1 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 56.7, 10.3 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 70.2, 30.5 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 70.4, 38.3 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 86.4, 57.9 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 86.4, 65.3 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 102.4, 84.5 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 102.2, 91.5 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 118, 110.2 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 117.7, 116.7 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 125.2, 129.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 132.7, 141.1 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 139.9, 153 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 147.1, 164.5 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 154.1, 175.7 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 160.9, 186.6 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 167.5, 197.1 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 173.9, 207.2 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 180, 216.8 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 185.7, 225.7 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 191.1, 234 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 195.9, 241.3 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 200.1, 247.5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 203.4, 251.9 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 205.1, 253.8 , 0 );
setMoveKey( spep_5 -3 + 121, 1, 205.1, 253.8 , 0 );

setScaleKey( spep_5    + 0, 1, 2, 2 );
setScaleKey( spep_5 -3 + 8, 1, 2, 2 );
setScaleKey( spep_5 -3 + 10, 1, 2.2, 2.2 );
setScaleKey( spep_5 -3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 14, 1, 2, 2 );
setScaleKey( spep_5 -3 + 18, 1, 2, 2 );
setScaleKey( spep_5 -3 + 20, 1, 2.26, 2.26 );
setScaleKey( spep_5 -3 + 22, 1, 2.31, 2.31 );
setScaleKey( spep_5 -3 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 26, 1, 2, 2 );
setScaleKey( spep_5 -3 + 30, 1, 2, 2 );
setScaleKey( spep_5 -3 + 33, 1, 2.2, 2.2 );
setScaleKey( spep_5 -3 + 34, 1, 2.15, 2.15 );
setScaleKey( spep_5 -3 + 37, 1, 2.1, 2.1 );
setScaleKey( spep_5 -3 + 38, 1, 2, 2 );
setScaleKey( spep_5 -3 + 41, 1, 2, 2 );
setScaleKey( spep_5 -3 + 42, 1, 2.15, 2.15 );
setScaleKey( spep_5 -3 + 45, 1, 2.2, 2.2 );
setScaleKey( spep_5 -3 + 46, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 48, 1, 2.1, 2.1 );
setScaleKey( spep_5 -3 + 50, 1, 2.31, 2.31 );
setScaleKey( spep_5 -3 + 53, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 54, 1, 2, 2 );
setScaleKey( spep_5 -3 + 57, 1, 2, 2 );
setScaleKey( spep_5 -3 + 58, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 60, 1, 1.68, 1.69 );
setScaleKey( spep_5 -3 + 62, 1, 1.56, 1.58 );
setScaleKey( spep_5 -3 + 64, 1, 1.75, 1.78 );
setScaleKey( spep_5 -3 + 66, 1, 1.62, 1.65 );
setScaleKey( spep_5 -3 + 68, 1, 1.61, 1.64 );
setScaleKey( spep_5 -3 + 70, 1, 1.45, 1.48 );
setScaleKey( spep_5 -3 + 72, 1, 1.44, 1.46 );
setScaleKey( spep_5 -3 + 74, 1, 1.42, 1.43 );
setScaleKey( spep_5 -3 + 76, 1, 1.39, 1.4 );
setScaleKey( spep_5 -3 + 78, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 80, 1, 1.28, 1.28 );
setScaleKey( spep_5 -3 + 82, 1, 1.2, 1.19 );
setScaleKey( spep_5 -3 + 84, 1, 1.11, 1.1 );
setScaleKey( spep_5 -3 + 86, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 88, 1, 0.92, 0.92 );
setScaleKey( spep_5 -3 + 90, 1, 0.82, 0.83 );
setScaleKey( spep_5 -3 + 92, 1, 0.73, 0.74 );
setScaleKey( spep_5 -3 + 94, 1, 0.64, 0.66 );
setScaleKey( spep_5 -3 + 96, 1, 0.56, 0.58 );
setScaleKey( spep_5 -3 + 98, 1, 0.48, 0.5 );
setScaleKey( spep_5 -3 + 100, 1, 0.41, 0.43 );
setScaleKey( spep_5 -3 + 102, 1, 0.35, 0.37 );
setScaleKey( spep_5 -3 + 104, 1, 0.3, 0.31 );
setScaleKey( spep_5 -3 + 106, 1, 0.27, 0.27 );
setScaleKey( spep_5 -3 + 108, 1, 0.25, 0.25 );
setScaleKey( spep_5 -3 + 110, 1, 0.24, 0.24 );
setScaleKey( spep_5 -3 + 112, 1, 0.23, 0.24 );
setScaleKey( spep_5 -3 + 114, 1, 0.23, 0.23 );
setScaleKey( spep_5 -3 + 116, 1, 0.22, 0.23 );
setScaleKey( spep_5 -3 + 118, 1, 0.22, 0.23 );
setScaleKey( spep_5 -3 + 120, 1, 0.22, 0.22 );
setScaleKey( spep_5 -3 + 122, 1, 0.21, 0.22 );
setScaleKey( spep_5 -3 + 121, 1, 0.21, 0.22 );
--[[setScaleKey( spep_5 -3 + 128, 1, 0.21, 0.22 );
setScaleKey( spep_5 -3 + 130, 1, 0.21, 0.21 );
setScaleKey( spep_5 -3 + 132, 1, 0.2, 0.21 );
setScaleKey( spep_5 -3 + 148, 1, 0.2, 0.21 );
setScaleKey( spep_5 -3 + 150, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 179, 1, 0.2, 0.2 );]]

setRotateKey( spep_5    + 0, 1, 0 );
setRotateKey( spep_5 -3 + 29, 1, 0 );
setRotateKey( spep_5 -3 + 30, 1, -55.9 );
setRotateKey( spep_5 -3 + 33, 1, -55.9 );
setRotateKey( spep_5 -3 + 34, 1, 0 );
setRotateKey( spep_5 -3 + 41, 1, 0 );
setRotateKey( spep_5 -3 + 42, 1, -55.9 );
setRotateKey( spep_5 -3 + 45, 1, -55.9 );
setRotateKey( spep_5 -3 + 46, 1, 0 );
setRotateKey( spep_5 -3 + 121, 1, 0 );

-- ** 音 ** --
--空中連打12
playSe( spep_5 + 2, 1027 );
setSeVolume( spep_5 + 2, 1027, 43 );
--空中連打13
playSe( spep_5 + 5, 1003 );
setSeVolume( spep_5 + 5, 1003, 94 );

--敵連打ヒット1
playSe( spep_5 + 6, 1189 );
--敵連打ヒット2
playSe( spep_5 + 11, 1000 );
setSeVolume( spep_5 + 11, 1000, 79 );
--敵連打ヒット3
playSe( spep_5 + 11, 1006 );
setSeVolume( spep_5 + 11, 1006, 76 );
--敵連打ヒット4
playSe( spep_5 + 17, 1007 );
setSeVolume( spep_5 + 17, 1007, 80 );
--敵連打ヒット5
playSe( spep_5 + 19, 1000 );
setSeVolume( spep_5 + 19, 1000, 145 );
--敵連打ヒット6
playSe( spep_5 + 23, 1012 );
--敵連打ヒット7
playSe( spep_5 + 25, 1000 );
setSeVolume( spep_5 + 25, 1000, 77 );
--敵連打ヒット8
playSe( spep_5 + 29, 1000 );
setSeVolume( spep_5 + 29, 1000, 79 );
--敵連打ヒット9
playSe( spep_5 + 31, 1007 );
--敵連打ヒット10
playSe( spep_5 + 33, 1009 );
setSeVolume( spep_5 + 41, 1009, 60 );
--敵連打ヒット11
playSe( spep_5 + 35, 1000 );
--敵連打ヒット12
playSe( spep_5 + 39, 1010 );
setSeVolume( spep_5 + 39, 1010, 73 );
--敵連打ヒット13
playSe( spep_5 + 41, 1000 );
--敵連打ヒット14
playSe( spep_5 + 49, 1000 );
--敵連打ヒット15
playSe( spep_5 + 51, 1006 );
setSeVolume( spep_5 + 51, 1006, 83 );
--敵連打ヒット16
playSe( spep_5 + 57, 1000 );
--敵連打ヒット17
playSe( spep_5 + 59, 1007 );
--敵連打ヒット18
playSe( spep_5 + 59, 1110 );
setSeVolume( spep_5 + 59, 1110, 53 );

--敵飛んでいく1
SE09 = playSe( spep_5 + 69, 1183 );
setSeVolume( spep_5 + 69, 1183, 100 );
stopSe( spep_5 + 143, SE09, 0 );
--敵飛んでいく2
SE10 = playSe( spep_5 + 71, 1121 );
setSeVolume( spep_5 + 71, 1121, 50 );
stopSe( spep_5 + 143, SE10, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 120, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 +   0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + 112,  6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 120;

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

finish_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 100, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6  +   0, 1, 1 );
setDisp( spep_6  + 100, 1, 0 );
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
--ガッ
playSe( spep_6 + 8, 1054 );
setSeVolume( spep_6 + 8, 1054, 126 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 98 );


end
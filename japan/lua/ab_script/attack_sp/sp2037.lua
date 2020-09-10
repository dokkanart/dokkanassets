--1020190:ロージィ_ヤッチャイナー拳
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
SP_01 = 155598	--導入、パンチ正面連打
SP_02 = 155599	--連打残像攻撃、敵より手前
SP_03 = 155600	--連打残像攻撃
SP_04 = 155601	--パンチ正面連打→高速パンチ
SP_05 = 155602	--パンチ残像、白→黄色
SP_06 = 155603	--連打残像攻撃(黄色)、敵より手前
SP_07 = 155604	--連打残像攻撃(黄色)→敵吹っ飛び
SP_08 = 155605	--俯瞰手前に気弾飛んでくる
SP_09 = 155606	--敵爆発、ロ－ジィ決めポ－ズ、敵より手前
SP_10 = 155608	--背景

--エフェクト(敵)
SP_07r =155681	--連打残像攻撃(黄色)→敵吹っ飛び
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
SE02 = playSe( spep_0 + 46, 1189 );
--腕連打2
SE03 = playSe( spep_0 + 50, 1181 );
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
SE05 = playSe( spep_0 + 60, 1003 );
--腕連打5
SE06 = playSe( spep_0 + 68, 1189 );
--腕連打6
playSe( spep_0 + 72, 1003 );
setSeVolume( spep_0 + 72, 1003, 89 );
--腕連打7
playSe( spep_0 + 74, 1189 );
setSeVolume( spep_0 + 74, 1189, 81 );
--腕連打8
playSe( spep_0 + 82, 1003 );
setSeVolume( spep_0 + 82, 1003, 69 );
--腕連打9
playSe( spep_0 + 84, 1189 );
setSeVolume( spep_0 + 84, 1189, 71 );
--腕連打10
playSe( spep_0 + 90, 1003 );
setSeVolume( spep_0 + 90, 1003, 68 );
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

-- ** ホワイトフェード ** --
--entryFade( spep_0 + 116,  0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 118, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 126;

------------------------------------------------------
-- 連打残像攻撃、敵より手前(84)
------------------------------------------------------
-- ** エフェクト等 ** --
pattack1_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --連打残像攻撃、敵より手前(ef_002)
setEffMoveKey(   spep_1 +  0, pattack1_f, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 84, pattack1_f, 0, 0 , 0 );
setEffScaleKey(  spep_1 +  0, pattack1_f, 1.0, 1.0 );
setEffScaleKey(  spep_1 + 84, pattack1_f, 1.0, 1.0 );
setEffRotateKey( spep_1 +  0, pattack1_f, 0 );
setEffRotateKey( spep_1 + 84, pattack1_f, 0 );
setEffAlphaKey(  spep_1 +  0, pattack1_f, 255 );
setEffAlphaKey(  spep_1 + 84, pattack1_f, 255 );

pattack1_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --連打残像攻撃用背景(ef_003)
setEffMoveKey(   spep_1 +  0, pattack1_b, 0,   0 , 0 );
setEffMoveKey(   spep_1 + 84, pattack1_b, 0,   0 , 0 );
setEffScaleKey(  spep_1 +  0, pattack1_b, 1.0, 1.0 );
setEffScaleKey(  spep_1 + 84, pattack1_b, 1.0, 1.0 );
setEffRotateKey( spep_1 +  0, pattack1_b, 0 );
setEffRotateKey( spep_1 + 84, pattack1_b, 0 );
setEffAlphaKey(  spep_1 +  0, pattack1_b, 255 );
setEffAlphaKey(  spep_1 + 84, pattack1_b, 255 );

-- ** 書き文字エントリー ** --
ctga1 = entryEffectLife( spep_1 -3 + 6,  10005, 13, 0x100, -1, 0, 101.1, 21.3 ); --ガッ
setEffMoveKey(   spep_1 -3 +  6, ctga1, 101.1, 21.3 , 0 );
setEffMoveKey(   spep_1 -3 +  8, ctga1, 168.8, 40.9 , 0 );
setEffMoveKey(   spep_1 -3 + 10, ctga1, 189.7, 50.9 , 0 );
setEffMoveKey(   spep_1 -3 + 12, ctga1, 205.8, 56.5 , 0 );
setEffMoveKey(   spep_1 -3 + 19, ctga1, 205.8, 56.5 , 0 );
setEffScaleKey(  spep_1 -3 +  6, ctga1, 0.5,   0.5 );
setEffScaleKey(  spep_1 -3 +  8, ctga1, 0.81,  0.81 );
setEffScaleKey(  spep_1 -3 + 10, ctga1, 0.87,  0.87 );
setEffScaleKey(  spep_1 -3 + 12, ctga1, 0.89,  0.89 );
setEffScaleKey(  spep_1 -3 + 19, ctga1, 0.89,  0.89 );
setEffRotateKey( spep_1 -3 +  6, ctga1, 10 );
setEffRotateKey( spep_1 -3 + 19, ctga1, 10 );
setEffAlphaKey(  spep_1 -3 +  6, ctga1, 255 );
setEffAlphaKey(  spep_1 -3 + 19, ctga1, 255 );

ctga2 = entryEffectLife( spep_1 -3 + 20,  10005, 13, 0x100, -1, 0, -171.2, 91 ); --ガッ
setEffMoveKey(   spep_1 -3 + 20, ctga2, -171.2, 91 , 0 );
setEffMoveKey(   spep_1 -3 + 22, ctga2, -132.8, 188.1 , 0 );
setEffMoveKey(   spep_1 -3 + 24, ctga2, -105.7, 236.3 , 0 );
setEffMoveKey(   spep_1 -3 + 26, ctga2, -102,   250.8 , 0 );
setEffMoveKey(   spep_1 -3 + 33, ctga2, -102,   250.8 , 0 );
setEffScaleKey(  spep_1 -3 + 20, ctga2,  0.96,  0.96 );
setEffScaleKey(  spep_1 -3 + 22, ctga2,  1.05,  1.05 );
setEffScaleKey(  spep_1 -3 + 24, ctga2,  1.1,   1.1 );
setEffScaleKey(  spep_1 -3 + 26, ctga2,  1.12,  1.12 );
setEffScaleKey(  spep_1 -3 + 33, ctga2,  1.12,  1.12 );
setEffRotateKey( spep_1 -3 + 20, ctga2,  25.8 );
setEffRotateKey( spep_1 -3 + 22, ctga2,  35 );
setEffRotateKey( spep_1 -3 + 24, ctga2,  37.1 );
setEffRotateKey( spep_1 -3 + 26, ctga2,  39.1 );
setEffRotateKey( spep_1 -3 + 33, ctga2,  39.1 );
setEffAlphaKey(  spep_1 -3 + 20, ctga2,  255 );
setEffAlphaKey(  spep_1 -3 + 33, ctga2,  255 );

ctga3 = entryEffectLife( spep_1 -3 + 32,  10005, 14, 0x100, -1, 0, 163.4, 63.8 ); --ガッ
setEffMoveKey(   spep_1 -3 + 32, ctga3, 163.4, 63.8 , 0 );
setEffMoveKey(   spep_1 -3 + 34, ctga3, 190.8, 113.2 , 0 );
setEffMoveKey(   spep_1 -3 + 36, ctga3, 197.3, 142.9 , 0 );
setEffMoveKey(   spep_1 -3 + 38, ctga3, 202.8, 152.8 , 0 );
setEffMoveKey(   spep_1 -3 + 40, ctga3, 226.6, 145.3 , 0 );
setEffMoveKey(   spep_1 -3 + 42, ctga3, 240.4, 137.8 , 0 );
setEffMoveKey(   spep_1 -3 + 44, ctga3, 254.1, 130.2 , 0 );
setEffMoveKey(   spep_1 -3 + 46, ctga3, 254.1, 130.2 , 0 );
setEffScaleKey(  spep_1 -3 + 32, ctga3, 0.33, 0.33 );
setEffScaleKey(  spep_1 -3 + 34, ctga3, 0.84, 0.84 );
setEffScaleKey(  spep_1 -3 + 36, ctga3, 1.1,  1.1 );
setEffScaleKey(  spep_1 -3 + 38, ctga3, 1.16, 1.16 );
setEffScaleKey(  spep_1 -3 + 46, ctga3, 1.16, 1.16 );
setEffRotateKey( spep_1 -3 + 32, ctga3, 43.5 );
setEffRotateKey( spep_1 -3 + 34, ctga3, 51.7 );
setEffRotateKey( spep_1 -3 + 36, ctga3, 60.0 );
setEffRotateKey( spep_1 -3 + 38, ctga3, 60.1 );
setEffRotateKey( spep_1 -3 + 46, ctga3, 60.1 );
setEffAlphaKey(  spep_1 -3 + 32, ctga3, 255 );
setEffAlphaKey(  spep_1 -3 + 38, ctga3, 255 );
setEffAlphaKey(  spep_1 -3 + 40, ctga3, 179 );
setEffAlphaKey(  spep_1 -3 + 42, ctga3, 102 );
setEffAlphaKey(  spep_1 -3 + 44, ctga3, 26 );
setEffAlphaKey(  spep_1 -3 + 46, ctga3, 0 );

ctga4 = entryEffectLife( spep_1 -3 + 46,  10005, 12, 0x100, -1, 0, 105.7, 23.1 ); --ガッ
setEffMoveKey(   spep_1 -3 + 46, ctga4, 105.7, 23.1 , 0 );
setEffMoveKey(   spep_1 -3 + 48, ctga4, 153.3, 44.9 , 0 );
setEffMoveKey(   spep_1 -3 + 50, ctga4, 189.7, 57.9 , 0 );
setEffMoveKey(   spep_1 -3 + 52, ctga4, 200.8, 62.3 , 0 );
setEffMoveKey(   spep_1 -3 + 58, ctga4, 200.8, 62.3 , 0 );
setEffScaleKey(  spep_1 -3 + 46, ctga4, 0.56, 0.56 );
setEffScaleKey(  spep_1 -3 + 48, ctga4, 0.67, 0.67 );
setEffScaleKey(  spep_1 -3 + 50, ctga4, 0.77, 0.79 );
setEffScaleKey(  spep_1 -3 + 52, ctga4, 0.8,  0.8 );
setEffScaleKey(  spep_1 -3 + 58, ctga4, 0.8,  0.8 );
setEffRotateKey( spep_1 -3 + 46, ctga4, 10 );
setEffRotateKey( spep_1 -3 + 58, ctga4, 10 );
setEffAlphaKey(  spep_1 -3 + 46, ctga4, 255 );
setEffAlphaKey(  spep_1 -3 + 58, ctga4, 255 );

ctga5 = entryEffectLife( spep_1 -3 + 60,  10005, 13, 0x100, -1, 0, -171.2, 91 ); --ガッ
setEffMoveKey(   spep_1 -3 + 60, ctga5, -172.2, 81 , 0 );
setEffMoveKey(   spep_1 -3 + 62, ctga5, -128.8, 178.1 , 0 );
setEffMoveKey(   spep_1 -3 + 64, ctga5, -113.7, 222.3 , 0 );
setEffMoveKey(   spep_1 -3 + 66, ctga5, -97,    245.8 , 0 );
setEffMoveKey(   spep_1 -3 + 73, ctga5, -97,    245.8 , 0 );
setEffScaleKey(  spep_1 -3 + 60, ctga5,  0.91,  0.91 );
setEffScaleKey(  spep_1 -3 + 62, ctga5,  0.99,  0.99 );
setEffScaleKey(  spep_1 -3 + 64, ctga5,  1.04,  1.04 );
setEffScaleKey(  spep_1 -3 + 66, ctga5,  1.08,  1.08 );
setEffScaleKey(  spep_1 -3 + 73, ctga5,  1.08,  1.08 );
setEffRotateKey( spep_1 -3 + 60, ctga5,  20.8 );
setEffRotateKey( spep_1 -3 + 62, ctga5,  27 );
setEffRotateKey( spep_1 -3 + 64, ctga5,  32.1 );
setEffRotateKey( spep_1 -3 + 66, ctga5,  36.1 );
setEffRotateKey( spep_1 -3 + 73, ctga5,  36.1 );
setEffAlphaKey(  spep_1 -3 + 60, ctga5,  255 );
setEffAlphaKey(  spep_1 -3 + 73, ctga5,  255 );

ctga6 = entryEffectLife( spep_1 -3 + 72,  10005, 14, 0x100, -1, 0, 163.4, 63.8 ); --ガッ
setEffMoveKey(   spep_1 -3 + 72, ctga6, 163.4, 63.8 , 0 );
setEffMoveKey(   spep_1 -3 + 74, ctga6, 190.8, 113.2 , 0 );
setEffMoveKey(   spep_1 -3 + 76, ctga6, 207.3, 142.9 , 0 );
setEffMoveKey(   spep_1 -3 + 78, ctga6, 212.8, 152.8 , 0 );
setEffMoveKey(   spep_1 -3 + 80, ctga6, 226.6, 145.3 , 0 );
setEffMoveKey(   spep_1 -3 + 82, ctga6, 240.4, 137.8 , 0 );
setEffMoveKey(   spep_1 -3 + 84, ctga6, 254.1, 130.2 , 0 );
setEffMoveKey(   spep_1 -3 + 86, ctga6, 254.1, 130.2 , 0 );
setEffScaleKey(  spep_1 -3 + 72, ctga6, 0.34, 0.34 );
setEffScaleKey(  spep_1 -3 + 74, ctga6, 0.82, 0.82 );
setEffScaleKey(  spep_1 -3 + 76, ctga6, 1.19, 1.19 );
setEffScaleKey(  spep_1 -3 + 78, ctga6, 1.27, 1.27 );
setEffScaleKey(  spep_1 -3 + 86, ctga6, 1.27, 1.27 );
setEffRotateKey( spep_1 -3 + 72, ctga6, 57.5 );
setEffRotateKey( spep_1 -3 + 74, ctga6, 57.7 );
setEffRotateKey( spep_1 -3 + 76, ctga6, 57.9 );
setEffRotateKey( spep_1 -3 + 78, ctga6, 58 );
setEffRotateKey( spep_1 -3 + 86, ctga6, 58 );
setEffAlphaKey(  spep_1 -3 + 72, ctga6, 255 );
setEffAlphaKey(  spep_1 -3 + 78, ctga6, 255 );
setEffAlphaKey(  spep_1 -3 + 80, ctga6, 179 );
setEffAlphaKey(  spep_1 -3 + 82, ctga6, 102 );
setEffAlphaKey(  spep_1 -3 + 84, ctga6, 26 );
setEffAlphaKey(  spep_1 -3 + 86, ctga6, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 +  0, 1, 1 );
setDisp( spep_1 + 84, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );

setMoveKey( spep_1    + 0, 1, 10, 10 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 2, 4 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 21.7, 10 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 13.7, 4 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 6.5, 11.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 2.2, 10 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -5.8, 4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -3.7, 31.6 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -15.9, 27.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -8.5, 35.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 33, 22.3 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 41.3, 27.6 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 52.9, 23.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 60.9, 29.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 49.4, 11.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 57.3, 16.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 49, 9.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 41.4, 16 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 33.4, 9.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 41.2, 17.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 28, -3.5 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 37.4, 2.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 37.4, 19.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 45.4, 29 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 25.2, 20.4 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 33.7, 25.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 4.1, 29.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 12.1, 35.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 1.1, 32.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 8.9, 39.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 51.3, 32.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 59.1, 37.6 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 51.1, 31.5 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 75.6, 59.2 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 65.3, 48.6 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 72.8, 53.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 47.2, 57 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 55.2, 63 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -1.2, 4.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 6.5, 11.6 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 2, 4 , 0 );
setMoveKey( spep_1 -3 + 87, 1, 0, 0 , 0 );

setScaleKey( spep_1    + 0, 1, 2, 2 );
setScaleKey( spep_1 -3 + 8, 1, 2, 2 );
setScaleKey( spep_1 -3 + 10, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 14, 1, 2, 2 );
setScaleKey( spep_1 -3 + 18, 1, 2, 2 );
setScaleKey( spep_1 -3 + 20, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 22, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 26, 1, 2, 2 );
setScaleKey( spep_1 -3 + 30, 1, 2, 2 );
setScaleKey( spep_1 -3 + 32, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 34, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 36, 1, 2, 2 );
setScaleKey( spep_1 -3 + 40, 1, 2, 2 );
setScaleKey( spep_1 -3 + 42, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 44, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 46, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 48, 1, 2, 2 );
setScaleKey( spep_1 -3 + 50, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 52, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 54, 1, 2, 2 );
setScaleKey( spep_1 -3 + 58, 1, 2, 2 );
setScaleKey( spep_1 -3 + 60, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 62, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 64, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 66, 1, 2, 2 );
setScaleKey( spep_1 -3 + 68, 1, 2, 2 );
setScaleKey( spep_1 -3 + 70, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 72, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 74, 1, 2, 2 );
setScaleKey( spep_1 -3 + 78, 1, 2, 2 );
setScaleKey( spep_1 -3 + 80, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 82, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 84, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 86, 1, 2, 2 );
setScaleKey( spep_1 -3 + 87, 1, 2, 2 );

setRotateKey( spep_1    +  0, 1, 0 );
setRotateKey( spep_1 -3 + 87, 1, 0 );

-- ** 音 ** --
--腕連打15
playSe( spep_1 + 0, 1003 );
setSeVolume( spep_1 + 0, 1003, 91 );
--腕連打16
playSe( spep_1 + 5, 1003 );

--敵ヒット（耐え）1
playSe( spep_1 + 6, 1189 );
--敵ヒット（耐え）2
playSe( spep_1 + 14, 1006 );
--敵ヒット（耐え）3
playSe( spep_1 + 20, 1006 );
setSeVolume( spep_1 + 20, 1006, 70 );
--敵ヒット（耐え）4
playSe( spep_1 + 20, 1189 );
--敵ヒット（耐え）5
playSe( spep_1 + 28, 1007 );
--敵ヒット（耐え）6
playSe( spep_1 + 34, 1006 );
setSeVolume( spep_1 + 34, 1006, 76 );
--敵ヒット（耐え）7
playSe( spep_1 + 40, 1189 );
--敵ヒット（耐え）8
playSe( spep_1 + 42, 1007 );
setSeVolume( spep_1 + 42, 1007, 84 );
--敵ヒット（耐え）9
playSe( spep_1 + 46, 1013 );
setSeVolume( spep_1 + 46, 1013, 80 );
--敵ヒット（耐え）10
playSe( spep_1 + 48, 1189 );
--敵ヒット（耐え）11
playSe( spep_1 + 48, 1007 );
--敵ヒット（耐え）12
playSe( spep_1 + 50, 1189 );
setSeVolume( spep_1 + 50, 1189, 126 );
--敵ヒット（耐え）13
playSe( spep_1 + 52, 1012 );
setSeVolume( spep_1 + 52, 1012, 56 );
--敵ヒット（耐え）14
playSe( spep_1 + 56, 1007 );
setSeVolume( spep_1 + 56, 1007, 78 );
--敵ヒット（耐え）15
playSe( spep_1 + 62, 1007 );
setSeVolume( spep_1 + 62, 1007, 67 );
--敵ヒット（耐え）16
playSe( spep_1 + 68, 1012 );
setSeVolume( spep_1 + 68, 1012, 47 );
--敵ヒット（耐え）17
playSe( spep_1 + 76, 1007 );
setSeVolume( spep_1 + 76, 1007, 59 );
--敵ヒット（耐え）18
playSe( spep_1 + 84, 1006 );
setSeVolume( spep_1 + 84, 1006, 82 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 +  0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 82,  2, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 84;

------------------------------------------------------
-- 連打残像攻撃(105)
------------------------------------------------------
-- ** エフェクト等 ** --
prush2 = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --連打残像攻撃(ef_004)
setEffMoveKey(   spep_2 +   0, prush2, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 106, prush2, 0, 0 , 0 );
setEffScaleKey(  spep_2 +   0, prush2, 1.0, 1.0 );
setEffScaleKey(  spep_2 + 106, prush2, 1.0, 1.0 );
setEffRotateKey( spep_2 +   0, prush2, 0 );
setEffRotateKey( spep_2 + 106, prush2, 0 );
setEffAlphaKey(  spep_2 +   0, prush2, 255 );
setEffAlphaKey(  spep_2 + 106, prush2, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 53,  906, 52, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 53, shuchusen2, 52, 25 );
setEffMoveKey(   spep_2 +  53, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 105, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_2 +  53, shuchusen2, 1.8, 1.8 );
setEffScaleKey(  spep_2 + 105, shuchusen2, 1.8, 1.8 );
setEffRotateKey( spep_2 +  53, shuchusen2, 0 );
setEffRotateKey( spep_2 + 105, shuchusen2, 0 );
setEffAlphaKey(  spep_2 +  53, shuchusen2, 255 );
setEffAlphaKey(  spep_2 + 105, shuchusen2, 255 );

-- ** 音 ** --
--腕連打（高速）1
SE07 = playSe( spep_2 + 14, 1181 );
setSeVolume( spep_2 +  97, 1181, 100 );
setSeVolume( spep_2 + 100, 1181,  95 );
setSeVolume( spep_2 + 103, 1181,  90 );
setSeVolume( spep_2 + 106, 1181,  80 );
setSeVolume( spep_2 + 109, 1181,  70 );
setSeVolume( spep_2 + 112, 1181,  60 );
setSeVolume( spep_2 + 115, 1181,  50 );
setSeVolume( spep_2 + 118, 1181,  40 );
setSeVolume( spep_2 + 121, 1181,  30 );
setSeVolume( spep_2 + 124, 1181,  20 );
setSeVolume( spep_2 + 127, 1181,  15 );
setSeVolume( spep_2 + 130, 1181,  10 );
setSeVolume( spep_2 + 133, 1181,   5 );
setSeVolume( spep_2 + 136, 1181,   0 );
stopSe( spep_2 + 136, SE07, 0 );
--腕連打（高速）2
playSe( spep_2 + 14, 1003 );
setSeVolume( spep_2 + 14, 1003, 100 );
--腕連打（高速）3
playSe( spep_2 + 14, 1004 );
setSeVolume( spep_2 + 14, 1004, 63 );
--腕連打（高速）4
playSe( spep_2 + 22, 1003 );
setSeVolume( spep_2 + 22, 1003, 72 );
--腕連打（高速）5
playSe( spep_2 + 30, 1003 );
setSeVolume( spep_2 + 30, 1003, 73 );
--腕連打（高速）6
playSe( spep_2 + 34, 1003 );
setSeVolume( spep_2 + 34, 1003, 84 );

--腕連打（高速）7
playSe( spep_2 + 38, 1003 );
setSeVolume( spep_2 + 38, 1003, 87 );
--腕連打（高速）8
playSe( spep_2 + 42, 1003 );
setSeVolume( spep_2 + 42, 1003, 50 );
--腕連打（高速）9
playSe( spep_2 + 42, 1048 );
setSeVolume( spep_2 + 42, 1048, 34 );
--腕連打（高速）10
playSe( spep_2 + 46, 1003 );
setSeVolume( spep_2 + 46, 1003, 79 );
--腕連打（高速）11
playSe( spep_2 + 46, 1048 );
setSeVolume( spep_2 + 46, 1048, 36 );
--腕連打（高速）12
playSe( spep_2 + 50, 1003 );
setSeVolume( spep_2 + 50, 1003, 67 );
--腕連打（高速）13
playSe( spep_2 + 50, 1048 );
setSeVolume( spep_2 + 50, 1048, 40 );
--腕連打（高速）14
playSe( spep_2 + 56, 1048 );
setSeVolume( spep_2 + 56, 1048, 42 );
--腕連打（高速）15
playSe( spep_2 + 58, 1003 );
setSeVolume( spep_2 + 58, 1003, 68 );
--腕連打（高速）16
playSe( spep_2 + 64, 1048 );
setSeVolume( spep_2 + 64, 1048, 45 );
--腕連打（高速）17
playSe( spep_2 + 66, 1003 );
setSeVolume( spep_2 + 66, 1003, 71 );
--腕連打（高速）18
playSe( spep_2 + 68, 1048 );
setSeVolume( spep_2 + 68, 1048, 43 );
--腕連打（高速）19
playSe( spep_2 + 72, 1048 );
setSeVolume( spep_2 + 72, 1048, 38 );
--腕連打（高速）20
playSe( spep_2 + 74, 1003 );
setSeVolume( spep_2 + 74, 1003, 67 );
--腕連打（高速）21
playSe( spep_2 + 76, 1048 );
setSeVolume( spep_2 + 76, 1048, 56 );
--腕連打（高速）22
playSe( spep_2 + 80, 1048 );
setSeVolume( spep_2 + 80, 1048, 47 );
--腕連打（高速）23
playSe( spep_2 + 84, 1048 );
setSeVolume( spep_2 + 84, 1048, 61 );
--腕連打（高速）24
playSe( spep_2 + 84, 1003 );
setSeVolume( spep_2 + 84, 1003, 37 );
--腕連打（高速）25
playSe( spep_2 + 86, 1048 );
setSeVolume( spep_2 + 86, 1048, 62 );
--腕連打（高速）26
playSe( spep_2 + 90, 1048 );
setSeVolume( spep_2 + 90, 1048, 60 );
--腕連打（高速）27
playSe( spep_2 + 90, 1003 );
setSeVolume( spep_2 + 90, 1003, 65 );
--腕連打（高速）28
playSe( spep_2 + 92, 1048 );
setSeVolume( spep_2 + 92, 1048, 69 );
--腕連打（高速）29
playSe( spep_2 + 96, 1048 );
setSeVolume( spep_2 + 96, 1048, 69 );
--腕連打（高速）30
playSe( spep_2 + 96, 1003 );
setSeVolume( spep_2 + 96, 1003, 75 );
--腕連打（高速）31
playSe( spep_2 + 100, 1048 );
setSeVolume( spep_2 + 100, 1048, 70 );
--腕連打（高速）32
playSe( spep_2 + 104, 1048 );
setSeVolume( spep_2 + 104, 1048, 79 );
--腕連打（高速）33
playSe( spep_2 + 104, 1003 );
setSeVolume( spep_2 + 104, 1003, 44 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 106, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 +   0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 104,  2, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 105;

------------------------------------------------------
-- パンチ残像、白→黄色(56)
------------------------------------------------------
pyellow = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --連打残像攻撃(ef_005)
setEffMoveKey(   spep_3 +  0, pyellow, 0, 0 , 0 );
setEffMoveKey(   spep_3 + 56, pyellow, 0, 0 , 0 );
setEffScaleKey(  spep_3 +  0, pyellow, 1.0, 1.0 );
setEffScaleKey(  spep_3 + 56, pyellow, 1.0, 1.0 );
setEffRotateKey( spep_3 +  0, pyellow, 0 );
setEffRotateKey( spep_3 + 56, pyellow, 0 );
setEffAlphaKey(  spep_3 +  0, pyellow, 255 );
setEffAlphaKey(  spep_3 + 56, pyellow, 255 );

-- ** 音 ** --
--腕連打（高速）34
playSe( spep_3 + 2, 1048 );
setSeVolume( spep_3 + 2, 1048, 74 );
--腕連打（高速）35
playSe( spep_3 + 4, 1003 );
setSeVolume( spep_3 + 4, 1003, 78 );
--腕連打（高速）36
playSe( spep_3 + 8, 1048 );
setSeVolume( spep_3 + 8, 1048, 79 );

--連打（空中）1
playSe( spep_3 + 12, 1003 );
setSeVolume( spep_3 + 12, 1003, 40 );
--連打（空中）2
playSe( spep_3 + 22, 1003 );
--連打（空中）3
playSe( spep_3 + 28, 1003 );
--連打（空中）4
playSe( spep_3 + 34, 1003 );
--連打（空中）5
playSe( spep_3 + 40, 1003 );
--連打（空中）6
playSe( spep_3 + 44, 1027 );
setSeVolume( spep_3 + 44, 1027, 20 );
--連打（空中）7
playSe( spep_3 + 46, 1003 );
setSeVolume( spep_3 + 46, 1003, 84 );
--連打（空中）8
playSe( spep_3 + 50, 1027 );
setSeVolume( spep_3 + 50, 1027, 41 );
--連打（空中）9
playSe( spep_3 + 52, 1003 );
setSeVolume( spep_3 + 52, 1003, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 106, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 +  0,  0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 54,  2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;

------------------------------------------------------
-- 連打残像攻撃(黄色)、敵より手前~敵吹っ飛び(176)
------------------------------------------------------
-- ** エフェクト等 ** --
prush2_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --連打残像攻撃(黄色)、敵より手前(ef_006)
setEffMoveKey(   spep_4 +   0, prush2_f, 0, 0 , 0 );
setEffMoveKey(   spep_4 + 176, prush2_f, 0, 0 , 0 );
setEffScaleKey(  spep_4 +   0, prush2_f, 1.0, 1.0 );
setEffScaleKey(  spep_4 + 176, prush2_f, 1.0, 1.0 );
setEffRotateKey( spep_4 +   0, prush2_f, 0 );
setEffRotateKey( spep_4 + 176, prush2_f, 0 );
setEffAlphaKey(  spep_4 +   0, prush2_f, 255 );
setEffAlphaKey(  spep_4 + 176, prush2_f, 255 );

prush2_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --連打残像攻撃(黄色)→敵吹っ飛び(ef_007)
setEffMoveKey(   spep_4 +   0, prush2_b, 0,   0 , 0 );
setEffMoveKey(   spep_4 + 176, prush2_b, 0,   0 , 0 );
setEffScaleKey(  spep_4 +   0, prush2_b, 1.0, 1.0 );
setEffScaleKey(  spep_4 + 176, prush2_b, 1.0, 1.0 );
setEffRotateKey( spep_4 +   0, prush2_b, 0 );
setEffRotateKey( spep_4 + 176, prush2_b, 0 );
setEffAlphaKey(  spep_4 +   0, prush2_b, 255 );
setEffAlphaKey(  spep_4 + 176, prush2_b, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 49,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 49, shuchusen3, 18, 25 );
setEffMoveKey(   spep_4 + 49, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_4 + 63, shuchusen3, 50, 100 , 0 );
setEffMoveKey(   spep_4 + 67, shuchusen3, 50, 100 , 0 );
setEffScaleKey(  spep_4 + 49, shuchusen3, 1.2, 1.2 );
setEffScaleKey(  spep_4 + 63, shuchusen3, 1.6, 1.6 );
setEffScaleKey(  spep_4 + 67, shuchusen3, 1.6, 1.6 );
setEffRotateKey( spep_4 + 49, shuchusen3, 0 );
setEffRotateKey( spep_4 + 67, shuchusen3, 0 );
setEffAlphaKey(  spep_4 + 49, shuchusen3,  10 );
setEffAlphaKey(  spep_4 + 52, shuchusen3, 200 );
setEffAlphaKey(  spep_4 + 38, shuchusen3, 255 );
setEffAlphaKey(  spep_4 + 63, shuchusen3, 200 );
setEffAlphaKey(  spep_4 + 65, shuchusen3,  70 );
setEffAlphaKey(  spep_4 + 67, shuchusen3,   0 );

-- ** 書き文字エントリー ** --
ctbaki1 = entryEffectLife( spep_4 -3 + 14,  10020, 13, 0x100, -1, 0, 191.9, 34 ); --バキ
setEffMoveKey(   spep_4 -3 + 14, ctbaki1, 191.9, 34 , 0 );
setEffMoveKey(   spep_4 -3 + 16, ctbaki1, 204.6, 44.6 , 0 );
setEffMoveKey(   spep_4 -3 + 18, ctbaki1, 204.3, 58.9 , 0 );
setEffMoveKey(   spep_4 -3 + 20, ctbaki1, 201.9, 62 , 0 );
setEffMoveKey(   spep_4 -3 + 27, ctbaki1, 201.9, 62 , 0 );
setEffScaleKey(  spep_4 -3 + 14, ctbaki1, 0.58, 0.58 );
setEffScaleKey(  spep_4 -3 + 16, ctbaki1, 0.75, 0.75 );
setEffScaleKey(  spep_4 -3 + 18, ctbaki1, 0.96, 0.96 );
setEffScaleKey(  spep_4 -3 + 20, ctbaki1, 1.01, 1.01 );
setEffScaleKey(  spep_4 -3 + 27, ctbaki1, 1.01, 1.01 );
setEffRotateKey( spep_4 -3 + 14, ctbaki1, 0 );
setEffRotateKey( spep_4 -3 + 27, ctbaki1, 0 );
setEffAlphaKey(  spep_4 -3 + 14, ctbaki1, 255 );
setEffAlphaKey(  spep_4 -3 + 27, ctbaki1, 255 );

ctbaki2 = entryEffectLife( spep_4 -3 + 28,  10020, 13, 0x100, -1, 0, -134.4, 128.3 ); --バキ
setEffMoveKey(   spep_4 -3 + 28, ctbaki2, -134.4, 128.3 , 0 );
setEffMoveKey(   spep_4 -3 + 30, ctbaki2, -161.7, 148.8 , 0 );
setEffMoveKey(   spep_4 -3 + 32, ctbaki2, -193.7, 162.4 , 0 );
setEffMoveKey(   spep_4 -3 + 34, ctbaki2, -187.6, 164.7 , 0 );
setEffMoveKey(   spep_4 -3 + 41, ctbaki2, -187.6, 164.7 , 0 );
setEffScaleKey(  spep_4 -3 + 28, ctbaki2, 0.64, 0.64 );
setEffScaleKey(  spep_4 -3 + 30, ctbaki2, 1.05, 1.05 );
setEffScaleKey(  spep_4 -3 + 32, ctbaki2, 1.35, 1.35 );
setEffScaleKey(  spep_4 -3 + 34, ctbaki2, 1.44, 1.44 );
setEffScaleKey(  spep_4 -3 + 41, ctbaki2, 1.44, 1.44 );
setEffRotateKey( spep_4 -3 + 28, ctbaki2, -42.5 );
setEffRotateKey( spep_4 -3 + 30, ctbaki2, -40.2 );
setEffRotateKey( spep_4 -3 + 32, ctbaki2, -37.6 );
setEffRotateKey( spep_4 -3 + 34, ctbaki2, -36.7 );
setEffRotateKey( spep_4 -3 + 41, ctbaki2, -36.7 );
setEffAlphaKey(  spep_4 -3 + 28, ctbaki2, 255 );
setEffAlphaKey(  spep_4 -3 + 34, ctbaki2, 255 );
setEffAlphaKey(  spep_4 -3 + 41, ctbaki2, 255 );

ctbaki3 = entryEffectLife( spep_4 -3 + 42,  10020, 13, 0x100, -1, 0, 249.9, -14 ); --バキ
setEffMoveKey(   spep_4 -3 + 42, ctbaki3, 249.9, -14 , 0 );
setEffMoveKey(   spep_4 -3 + 44, ctbaki3, 248.4, 60.9 , 0 );
setEffMoveKey(   spep_4 -3 + 46, ctbaki3, 263.5, 114 , 0 );
setEffMoveKey(   spep_4 -3 + 48, ctbaki3, 264.3, 129.4 , 0 );
setEffMoveKey(   spep_4 -3 + 55, ctbaki3, 264.3, 129.4 , 0 );
setEffScaleKey(  spep_4 -3 + 42, ctbaki3, 0.61,  0.61 );
setEffScaleKey(  spep_4 -3 + 44, ctbaki3, 1.61,  1.61 );
setEffScaleKey(  spep_4 -3 + 46, ctbaki3, 2.24,  2.24 );
setEffScaleKey(  spep_4 -3 + 48, ctbaki3, 2.4, 2.4 );
setEffScaleKey(  spep_4 -3 + 55, ctbaki3, 2.4, 2.4 );
setEffRotateKey( spep_4 -3 + 42, ctbaki3, 43.5 );
setEffRotateKey( spep_4 -3 + 44, ctbaki3, 43.7 );
setEffRotateKey( spep_4 -3 + 46, ctbaki3, 43.9 );
setEffRotateKey( spep_4 -3 + 48, ctbaki3, 44 );
setEffRotateKey( spep_4 -3 + 55, ctbaki3, 44 );
setEffAlphaKey(  spep_4 -3 + 42, ctbaki3, 255 );
setEffAlphaKey(  spep_4 -3 + 48, ctbaki3, 255 );
setEffAlphaKey(  spep_4 -3 + 50, ctbaki3, 179 );
setEffAlphaKey(  spep_4 -3 + 52, ctbaki3, 102 );
setEffAlphaKey(  spep_4 -3 + 54, ctbaki3, 26 );
setEffAlphaKey(  spep_4 -3 + 55, ctbaki3, 26 );

ctbaki4 = entryEffectLife( spep_4 -3 + 48,  10020, 32, 0x100, -1, 0, 165.9, 24 ); --バキ
setEffMoveKey(   spep_4 -3 + 48, ctbaki4, 165.9, 24 , 0 );
setEffMoveKey(   spep_4 -3 + 50, ctbaki4, 117.4, 127.3 , 0 );
setEffMoveKey(   spep_4 -3 + 52, ctbaki4, 75.3, 178.7 , 0 );
setEffMoveKey(   spep_4 -3 + 54, ctbaki4, 64, 198 , 0 );
setEffMoveKey(   spep_4 -3 + 56, ctbaki4, 64.8, 197.5 , 0 );
setEffMoveKey(   spep_4 -3 + 58, ctbaki4, 65.7, 197   , 0 );
setEffMoveKey(   spep_4 -3 + 60, ctbaki4, 66.5, 196.4 , 0 );
setEffMoveKey(   spep_4 -3 + 62, ctbaki4, 67.3, 195.9 , 0 );
setEffMoveKey(   spep_4 -3 + 64, ctbaki4, 68.1, 195.4 , 0 );
setEffMoveKey(   spep_4 -3 + 66, ctbaki4, 69  , 194.9 , 0 );
setEffMoveKey(   spep_4 -3 + 68, ctbaki4, 69.8, 194.3 , 0 );
setEffMoveKey(   spep_4 -3 + 70, ctbaki4, 70.6, 193.8 , 0 );
setEffMoveKey(   spep_4 -3 + 72, ctbaki4, 71.5, 193.3 , 0 );
setEffMoveKey(   spep_4 -3 + 74, ctbaki4, 72.3, 192.7 , 0 );
setEffMoveKey(   spep_4 -3 + 76, ctbaki4, 73.1, 192.2 , 0 );
setEffMoveKey(   spep_4 -3 + 78, ctbaki4, 74  , 191.7 , 0 );
setEffMoveKey(   spep_4 -3 + 80, ctbaki4, 73.2, 191.1 , 0 );
setEffScaleKey(  spep_4 -3 + 48, ctbaki4, 0.63, 0.63 );
setEffScaleKey(  spep_4 -3 + 50, ctbaki4, 1.86, 1.86 );
setEffScaleKey(  spep_4 -3 + 48, ctbaki4, 0.612, 0.612 );
setEffScaleKey(  spep_4 -3 + 50, ctbaki4, 1.768, 1.768 );
setEffScaleKey(  spep_4 -3 + 52, ctbaki4, 2.482, 2.482 );
setEffScaleKey(  spep_4 -3 + 54, ctbaki4, 2.72, 2.72 );
setEffScaleKey(  spep_4 -3 + 56, ctbaki4, 2.82, 2.82 );
setEffScaleKey(  spep_4 -3 + 58, ctbaki4, 2.96, 2.96 );
setEffScaleKey(  spep_4 -3 + 60, ctbaki4, 3.06, 3.06 );
setEffScaleKey(  spep_4 -3 + 62, ctbaki4, 3.20, 3.20 );
setEffScaleKey(  spep_4 -3 + 64, ctbaki4, 3.298, 3.298 );
setEffScaleKey(  spep_4 -3 + 66, ctbaki4, 3.44, 3.44 );
setEffScaleKey(  spep_4 -3 + 68, ctbaki4, 3.536, 3.536 );
setEffScaleKey(  spep_4 -3 + 70, ctbaki4, 3.672, 3.672 );
setEffScaleKey(  spep_4 -3 + 72, ctbaki4, 3.774, 3.774 );
setEffScaleKey(  spep_4 -3 + 74, ctbaki4, 3.910, 3.910 );
setEffScaleKey(  spep_4 -3 + 76, ctbaki4, 4.012, 4.012 );
setEffScaleKey(  spep_4 -3 + 78, ctbaki4, 4.114, 4.114 );
setEffScaleKey(  spep_4 -3 + 80, ctbaki4, 4.25, 4.25 );
setEffRotateKey( spep_4 -3 + 48, ctbaki4, -7.5 );
setEffRotateKey( spep_4 -3 + 50, ctbaki4, -10.3 );
setEffRotateKey( spep_4 -3 + 52, ctbaki4, -12 );
setEffRotateKey( spep_4 -3 + 54, ctbaki4, -12.5 );
setEffRotateKey( spep_4 -3 + 80, ctbaki4, -12.5 );
setEffAlphaKey(  spep_4 -3 + 48, ctbaki4, 255 );
setEffAlphaKey(  spep_4 -3 + 54, ctbaki4, 255 );
setEffAlphaKey(  spep_4 -3 + 56, ctbaki4, 235 );
setEffAlphaKey(  spep_4 -3 + 58, ctbaki4, 216 );
setEffAlphaKey(  spep_4 -3 + 60, ctbaki4, 196 );
setEffAlphaKey(  spep_4 -3 + 62, ctbaki4, 177 );
setEffAlphaKey(  spep_4 -3 + 64, ctbaki4, 157 );
setEffAlphaKey(  spep_4 -3 + 66, ctbaki4, 137 );
setEffAlphaKey(  spep_4 -3 + 68, ctbaki4, 118 );
setEffAlphaKey(  spep_4 -3 + 70, ctbaki4, 98 );
setEffAlphaKey(  spep_4 -3 + 72, ctbaki4, 78 );
setEffAlphaKey(  spep_4 -3 + 74, ctbaki4, 59 );
setEffAlphaKey(  spep_4 -3 + 76, ctbaki4, 39 );
setEffAlphaKey(  spep_4 -3 + 78, ctbaki4, 20 );
setEffAlphaKey(  spep_4 -3 + 80, ctbaki4, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4  +   0, 1, 1 );
setDisp( spep_4  + 176, 1, 0 );
changeAnime( spep_4    +  0, 1, 104 );
changeAnime( spep_4 -3 + 30, 1, 106 );
changeAnime( spep_4 -3 + 34, 1, 104 );
changeAnime( spep_4 -3 + 38, 1, 108 );
changeAnime( spep_4 -3 + 42, 1, 106 );
changeAnime( spep_4 -3 + 46, 1, 108 );
changeAnime( spep_4 -3 + 54, 1, 104 );
changeAnime( spep_4 -3 + 58, 1, 105 );

setMoveKey( spep_4    + 0, 1, 0, 0 , 0 );
setMoveKey( spep_4    + 2, 1, 10, 10 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 2, 4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 10, 10 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 2, 4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 6.5, 11.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 10, 10 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 2, 4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 10, 10 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -1, 5.2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 7.1, 12.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 10, 10 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 2, 4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 33.3, 10 , 0 );
setMoveKey( spep_4 -3 + 33, 1, 23.4, 5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 9.9, 11.1 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 2.4, 4.4 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 33.2, 9.9 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 25.2, 3.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 5.5, 61.6 , 0 );
setMoveKey( spep_4 -3 + 45, 1, -4.2, 56.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 33, 10.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 26.7, 4.4 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 33.9, 12.4 , 0 );
setMoveKey( spep_4 -3 + 53, 1, 24.7, 4.2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 9.9, 9.9 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 1.9, 3.9 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 44.6, -15.8 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 35.6, -22 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 44.6, -14.7 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 41.9, -23 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 53.9, 1 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 56.7, 10.3 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 70.2, 30.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 70.4, 38.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 86.4, 57.9 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 86.4, 65.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 102.4, 84.5 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 102.2, 91.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 118, 110.2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 117.7, 116.7 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 125.2, 129.1 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 132.7, 141.1 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 139.9, 153 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 147.1, 164.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 154.1, 175.7 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 160.9, 186.6 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 167.5, 197.1 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 173.9, 207.2 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 180, 216.8 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 185.7, 225.7 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 191.1, 234 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 195.9, 241.3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 200.1, 247.5 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 203.4, 251.9 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 205.1, 253.8 , 0 );
setMoveKey( spep_4 -3 + 179, 1, 205.1, 253.8 , 0 );

setScaleKey( spep_4    + 0, 1, 2, 2 );
setScaleKey( spep_4 -3 + 8, 1, 2, 2 );
setScaleKey( spep_4 -3 + 10, 1, 2.2, 2.2 );
setScaleKey( spep_4 -3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 14, 1, 2, 2 );
setScaleKey( spep_4 -3 + 18, 1, 2, 2 );
setScaleKey( spep_4 -3 + 20, 1, 2.26, 2.26 );
setScaleKey( spep_4 -3 + 22, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 26, 1, 2, 2 );
setScaleKey( spep_4 -3 + 30, 1, 2, 2 );
setScaleKey( spep_4 -3 + 33, 1, 2.2, 2.2 );
setScaleKey( spep_4 -3 + 34, 1, 2.15, 2.15 );
setScaleKey( spep_4 -3 + 37, 1, 2.1, 2.1 );
setScaleKey( spep_4 -3 + 38, 1, 2, 2 );
setScaleKey( spep_4 -3 + 41, 1, 2, 2 );
setScaleKey( spep_4 -3 + 42, 1, 2.15, 2.15 );
setScaleKey( spep_4 -3 + 45, 1, 2.2, 2.2 );
setScaleKey( spep_4 -3 + 46, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 48, 1, 2.1, 2.1 );
setScaleKey( spep_4 -3 + 50, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 53, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 54, 1, 2, 2 );
setScaleKey( spep_4 -3 + 57, 1, 2, 2 );
setScaleKey( spep_4 -3 + 58, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 60, 1, 1.68, 1.69 );
setScaleKey( spep_4 -3 + 62, 1, 1.56, 1.58 );
setScaleKey( spep_4 -3 + 64, 1, 1.75, 1.78 );
setScaleKey( spep_4 -3 + 66, 1, 1.62, 1.65 );
setScaleKey( spep_4 -3 + 68, 1, 1.61, 1.64 );
setScaleKey( spep_4 -3 + 70, 1, 1.45, 1.48 );
setScaleKey( spep_4 -3 + 72, 1, 1.44, 1.46 );
setScaleKey( spep_4 -3 + 74, 1, 1.42, 1.43 );
setScaleKey( spep_4 -3 + 76, 1, 1.39, 1.4 );
setScaleKey( spep_4 -3 + 78, 1, 1.35, 1.35 );
setScaleKey( spep_4 -3 + 80, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 82, 1, 1.2, 1.19 );
setScaleKey( spep_4 -3 + 84, 1, 1.11, 1.1 );
setScaleKey( spep_4 -3 + 86, 1, 1.01, 1.01 );
setScaleKey( spep_4 -3 + 88, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 90, 1, 0.82, 0.83 );
setScaleKey( spep_4 -3 + 92, 1, 0.73, 0.74 );
setScaleKey( spep_4 -3 + 94, 1, 0.64, 0.66 );
setScaleKey( spep_4 -3 + 96, 1, 0.56, 0.58 );
setScaleKey( spep_4 -3 + 98, 1, 0.48, 0.5 );
setScaleKey( spep_4 -3 + 100, 1, 0.41, 0.43 );
setScaleKey( spep_4 -3 + 102, 1, 0.35, 0.37 );
setScaleKey( spep_4 -3 + 104, 1, 0.3, 0.31 );
setScaleKey( spep_4 -3 + 106, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 108, 1, 0.25, 0.25 );
setScaleKey( spep_4 -3 + 110, 1, 0.24, 0.24 );
setScaleKey( spep_4 -3 + 112, 1, 0.23, 0.24 );
setScaleKey( spep_4 -3 + 114, 1, 0.23, 0.23 );
setScaleKey( spep_4 -3 + 116, 1, 0.22, 0.23 );
setScaleKey( spep_4 -3 + 118, 1, 0.22, 0.23 );
setScaleKey( spep_4 -3 + 120, 1, 0.22, 0.22 );
setScaleKey( spep_4 -3 + 122, 1, 0.21, 0.22 );
setScaleKey( spep_4 -3 + 128, 1, 0.21, 0.22 );
setScaleKey( spep_4 -3 + 130, 1, 0.21, 0.21 );
setScaleKey( spep_4 -3 + 132, 1, 0.2, 0.21 );
setScaleKey( spep_4 -3 + 148, 1, 0.2, 0.21 );
setScaleKey( spep_4 -3 + 150, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 179, 1, 0.2, 0.2 );

setRotateKey( spep_4    + 0, 1, 0 );
setRotateKey( spep_4 -3 + 29, 1, 0 );
setRotateKey( spep_4 -3 + 30, 1, -55.9 );
setRotateKey( spep_4 -3 + 33, 1, -55.9 );
setRotateKey( spep_4 -3 + 34, 1, 0 );
setRotateKey( spep_4 -3 + 41, 1, 0 );
setRotateKey( spep_4 -3 + 42, 1, -55.9 );
setRotateKey( spep_4 -3 + 45, 1, -55.9 );
setRotateKey( spep_4 -3 + 46, 1, 0 );
setRotateKey( spep_4 -3 + 179, 1, 0 );

-- ** 音 ** --

--連打（空中）10
playSe( spep_4 + 0, 1003 );
setSeVolume( spep_4 + 0, 1003, 68 );
--連打（空中）11
playSe( spep_4 + 0, 1027 );
setSeVolume( spep_4 + 0, 1027, 30 );
--連打（空中）12
playSe( spep_4 + 6, 1003 );
setSeVolume( spep_4 + 6, 1003, 67 );
--連打（空中）13
playSe( spep_4 + 8, 1027 );
setSeVolume( spep_4 + 8, 1027, 43 );
--連打（空中）14
playSe( spep_4 + 12, 1003 );
setSeVolume( spep_4 + 12, 1003, 94 );

--連打敵ヒット1
playSe( spep_4 + 6, 1189 );
--連打敵ヒット2
playSe( spep_4 + 11, 1000 );
setSeVolume( spep_4 + 11, 1000, 79 );
--連打敵ヒット3
playSe( spep_4 + 11, 1006 );
setSeVolume( spep_4 + 11, 1006, 76 );
--連打敵ヒット4
playSe( spep_4 + 17, 1007 );
setSeVolume( spep_4 + 17, 1007, 80 );
--連打敵ヒット5
playSe( spep_4 + 19, 1000 );
setSeVolume( spep_4 + 19, 1000, 69 );
--連打敵ヒット6
playSe( spep_4 + 23, 1012 );
--連打敵ヒット7
playSe( spep_4 + 25, 1000 );
setSeVolume( spep_4 + 25, 1000, 77 );
--連打敵ヒット8
playSe( spep_4 + 29, 1000 );
setSeVolume( spep_4 + 29, 1000, 79 );
--連打敵ヒット9
playSe( spep_4 + 31, 1007 );
--連打敵ヒット10
playSe( spep_4 + 33, 1009 );
setSeVolume( spep_4 + 33, 1009, 60 );
--連打敵ヒット11
playSe( spep_4 + 35, 1000 );
--連打敵ヒット12
playSe( spep_4 + 39, 1010 );
setSeVolume( spep_4 + 39, 1010, 73 );
--連打敵ヒット13
playSe( spep_4 + 41, 1000 );
--連打敵ヒット14
playSe( spep_4 + 49, 1000 );
--連打敵ヒット15
playSe( spep_4 + 51, 1006 );
setSeVolume( spep_4 + 51, 1006, 83 );
--連打敵ヒット16
playSe( spep_4 + 57, 1000 );
--連打敵ヒット17
playSe( spep_4 + 59, 1007 );
--連打敵ヒット18
playSe( spep_4 + 59, 1110 );
setSeVolume( spep_4 + 59, 1110, 53 );

--敵飛んでいく1
SE08 = playSe( spep_4 + 69, 1183 );
stopSe( spep_4 + 176 + 9, SE08, 0 );

--敵飛んでいく2
SE09 = playSe( spep_4 + 71, 1121 );
setSeVolume( spep_4 + 71, 1121, 50 );
stopSe( spep_4 + 176 + 9, SE09, 0 );

--腕連打17
playSe( spep_4 + 71, 1003 );
setSeVolume( spep_4 + 71, 1003, 48 );
--腕連打18
playSe( spep_4 + 77, 1003 );
setSeVolume( spep_4 + 77, 1003, 52 );
--腕連打19
playSe( spep_4 + 79, 1189 );
setSeVolume( spep_4 + 79, 1189, 68 );
--腕連打20
playSe( spep_4 + 85, 1189 );
--腕連打21
playSe( spep_4 + 85, 1003 );
setSeVolume( spep_4 + 85, 1003, 40 );
--腕連打22
playSe( spep_4 + 91, 1189 );
setSeVolume( spep_4 + 91, 1189, 84 );
--腕連打23
playSe( spep_4 + 91, 1003 );
setSeVolume( spep_4 + 91, 1003, 45 );
--腕連打24
playSe( spep_4 + 97, 1189 );
setSeVolume( spep_4 + 97, 1189, 67 );
--腕連打25
playSe( spep_4 + 97, 1003 );
setSeVolume( spep_4 + 97, 1003, 52 );
--腕連打26
playSe( spep_4 + 103, 1003 );
setSeVolume( spep_4 + 103, 1003, 51 );
--腕連打27
playSe( spep_4 + 105, 1189 );
setSeVolume( spep_4 + 105, 1189, 73 );
--腕連打28
playSe( spep_4 + 109, 1003 );
setSeVolume( spep_4 + 109, 1003, 54 );
--腕連打29
playSe( spep_4 + 113, 1189 );
setSeVolume( spep_4 + 113, 1189, 85 );
--腕連打30
playSe( spep_4 + 113, 1003 );
setSeVolume( spep_4 + 113, 1003, 47 );
--腕連打31
playSe( spep_4 + 119, 1003 );
setSeVolume( spep_4 + 119, 1003, 50 );
--腕連打32
playSe( spep_4 + 123, 1189 );
setSeVolume( spep_4 + 123, 1189, 86 );
--腕連打33
playSe( spep_4 + 127, 1003 );
setSeVolume( spep_4 + 127, 1003, 46 );

--気弾発生1
SE10 = playSe( spep_4 + 127, 1239 );
setSeVolume( spep_4 + 127, 1239, 42 );
setSeVolume( spep_4 + 176 + 10, 1239, 0 );
stopSe( spep_4 + 176 + 10, SE10, 0 );
--気弾発生2
SE11 = playSe( spep_4 + 129, 1222 );
setSeVolume( spep_4 + 120, 1222, 48 );
setSeVolume( spep_4 + 176 + 10, 1222, 0 );
stopSe( spep_4 + 176 + 10, SE11, 0 );

--腕連打34
playSe( spep_4 + 129, 1189 );
--腕連打35
playSe( spep_4 + 133, 1003 );
setSeVolume( spep_4 + 133, 1003, 54 );
--腕連打36
playSe( spep_4 + 135, 1189 );
--腕連打37
playSe( spep_4 + 141, 1003 );
setSeVolume( spep_4 + 141, 1003, 50 );
--腕連打38
playSe( spep_4 + 145, 1003 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 176, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 +   0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 168,  6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 176;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_5 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_5 + 0, SE_05 

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;

--------------------------------------
--俯瞰手前に気弾飛んでくる(78F)
--------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --俯瞰手前に気弾飛んでくる(ef_008)
setEffMoveKey(   spep_6 +  0, kidan, 0, 0 , 0 );
setEffMoveKey(   spep_6 + 78, kidan, 0, 0 , 0 );
setEffScaleKey(  spep_6 +  0, kidan, 1.0, 1.0 );
setEffScaleKey(  spep_6 + 78, kidan, 1.0, 1.0 );
setEffRotateKey( spep_6 +  0, kidan, 0 );
setEffRotateKey( spep_6 + 78, kidan, 0 );
setEffAlphaKey(  spep_6 +  0, kidan, 255 );
setEffAlphaKey(  spep_6 + 78, kidan, 255 );

-- ** 音 ** --
--気弾連射2
playSe( spep_6 + 10, 1016 );
setSeVolume( spep_6 + 10, 1016, 81 );
--気弾連射3
playSe( spep_6 + 12, 1015 );
setSeVolume( spep_6 + 12, 1015, 51 );
--気弾連射4
playSe( spep_6 + 16, 1016 );
--気弾連射5
playSe( spep_6 + 22, 1016 );
setSeVolume( spep_6 + 32, 1016, 68 );
--気弾連射6
playSe( spep_6 + 30, 1016 );
--気弾連射7
playSe( spep_6 + 34, 1016 );
setSeVolume( spep_6 + 34, 1016, 66 );
--気弾連射8
playSe( spep_6 + 38, 1016 );
setSeVolume( spep_6 + 38, 1016, 58 );
--気弾連射9
playSe( spep_6 + 42, 1015 );
setSeVolume( spep_6 + 42, 1015, 41 );
--気弾連射10
playSe( spep_6 + 44, 1016 );
setSeVolume( spep_6 + 44, 1016, 100 );
--気弾連射11
playSe( spep_6 + 50, 1016 );
setSeVolume( spep_6 + 50, 1016, 55 );
--気弾連射12
playSe( spep_6 + 54, 1016 );
setSeVolume( spep_6 + 54, 1016, 100 );
--気弾連射13
playSe( spep_6 + 54, 1015 );
setSeVolume( spep_6 + 54, 1015, 44 );
--気弾連射14
playSe( spep_6 + 58, 1016 );
setSeVolume( spep_6 + 58, 1016, 77 );
--気弾連射15
playSe( spep_6 + 63, 1016 );
setSeVolume( spep_6 + 63, 1016, 65 );
--気弾連射16
playSe( spep_6 + 68, 1016 );
setSeVolume( spep_6 + 68, 1016, 73 );
--気弾連射17
playSe( spep_6 + 78, 1016 );
setSeVolume( spep_6 + 78, 1016, 54 );

--爆発1
playSe( spep_6 + 78, 1023 );
--爆発2
playSe( spep_6 + 80, 1017 );
setSeVolume( spep_6 + 80, 1017, 83 );
--爆発3
playSe( spep_6 + 84, 1008 );
--爆発4
playSe( spep_6 + 90, 20 );
setSeVolume( spep_6 + 90, 20, 68 );
--爆発5
playSe( spep_6 + 102, 1024 );


-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 78, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 +  0,  0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_6 + 76,  2, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 78;

------------------------------------------
--敵爆発、ロ－ジィ決めポ－ズ、敵より手前(196F)
------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --敵爆発、ロ－ジィ決めポ－ズ(ef_009)
setEffMoveKey(   spep_7 +   0, finish_f, 0, 0 , 0 );
setEffMoveKey(   spep_7 + 196, finish_f, 0, 0 , 0 );
setEffScaleKey(  spep_7 +   0, finish_f, 1.0, 1.0 );
setEffScaleKey(  spep_7 + 196, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 +   0, finish_f, 0 );
setEffRotateKey( spep_7 + 196, finish_f, 0 );
setEffAlphaKey(  spep_7 +   0, finish_f, 255 );
setEffAlphaKey(  spep_7 + 196, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --背景(ef_010)
setEffMoveKey(   spep_7 +   0, finish_b, 0, 0 , 0 );
setEffMoveKey(   spep_7 + 196, finish_b, 0, 0 , 0 );
setEffScaleKey(  spep_7 +   0, finish_b, 1.0, 1.0 );
setEffScaleKey(  spep_7 + 196, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 +   0, finish_b, 0 );
setEffRotateKey( spep_7 + 196, finish_b, 0 );
setEffAlphaKey(  spep_7 +   0, finish_b, 255 );
setEffAlphaKey(  spep_7 + 196, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 +   0, 1, 1 );
setDisp( spep_7 + 196, 1, 0 );
changeAnime( spep_7 + 0, 1, 105 );

setMoveKey( spep_7    + 0, 1, 40, 90.9 , 0 );
setMoveKey( spep_7    + 2, 1, 43.2, 96.9 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 57.2, 114.8 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 68, 126.3 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 71.3, 132.6 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 78.3, 141.5 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 85.4, 150.4 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 82.4, 132.7 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 114.5, 184.3 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 86.4, 145.7 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 125.2, 206.1 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 112.5, 179.6 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 135.6, 210.2 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 129.7, 196.2 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 143.5, 221.7 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 142.4, 222.4 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 160, 245.8 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 152.6, 245.1 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 173, 262.5 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 174.9, 262.9 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 185.1, 282 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 195, 287.2 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 198.3, 293.4 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 209.1, 305 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 212.3, 311.2 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 219.4, 320.1 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 226.4, 329.1 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 233.5, 337.9 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 240.5, 346.9 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 247.5, 355.8 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 254.6, 364.7 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 261.6, 373.6 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 268.7, 382.5 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 70, 1, 275.8, 391.4 , 0 );
setMoveKey( spep_7 -3 + 72, 1, 279.9, 394.9 , 0 );
setMoveKey( spep_7 -3 + 74, 1, 275.9, 391.9 , 0 );
setMoveKey( spep_7 -3 + 76, 1, 279.8, 394.7 , 0 );
setMoveKey( spep_7 -3 + 78, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 80, 1, 279.8, 394.6 , 0 );
setMoveKey( spep_7 -3 + 82, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 84, 1, 279.7, 394.5 , 0 );
setMoveKey( spep_7 -3 + 86, 1, 275.9, 391.7 , 0 );
setMoveKey( spep_7 -3 + 88, 1, 279.6, 394.3 , 0 );
setMoveKey( spep_7 -3 + 90, 1, 275.8, 391.7 , 0 );
setMoveKey( spep_7 -3 + 92, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 100, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 102, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 108, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 110, 1, 275.8, 391.4 , 0 );
setMoveKey( spep_7 -3 + 112, 1, 279.9, 394.9 , 0 );
setMoveKey( spep_7 -3 + 114, 1, 275.9, 391.9 , 0 );
setMoveKey( spep_7 -3 + 116, 1, 279.8, 394.7 , 0 );
setMoveKey( spep_7 -3 + 118, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 120, 1, 279.8, 394.6 , 0 );
setMoveKey( spep_7 -3 + 122, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 124, 1, 279.7, 394.5 , 0 );
setMoveKey( spep_7 -3 + 126, 1, 275.9, 391.7 , 0 );
setMoveKey( spep_7 -3 + 128, 1, 279.6, 394.3 , 0 );
setMoveKey( spep_7 -3 + 130, 1, 275.8, 391.7 , 0 );
setMoveKey( spep_7 -3 + 132, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 140, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 142, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 148, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 150, 1, 275.8, 391.4 , 0 );
setMoveKey( spep_7 -3 + 152, 1, 279.9, 394.9 , 0 );
setMoveKey( spep_7 -3 + 154, 1, 275.9, 391.9 , 0 );
setMoveKey( spep_7 -3 + 156, 1, 279.8, 394.7 , 0 );
setMoveKey( spep_7 -3 + 158, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 160, 1, 279.8, 394.6 , 0 );
setMoveKey( spep_7 -3 + 162, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 164, 1, 279.7, 394.5 , 0 );
setMoveKey( spep_7 -3 + 166, 1, 275.9, 391.7 , 0 );
setMoveKey( spep_7 -3 + 168, 1, 279.6, 394.3 , 0 );
setMoveKey( spep_7 -3 + 170, 1, 275.8, 391.7 , 0 );
setMoveKey( spep_7 -3 + 172, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 180, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 182, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 188, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 190, 1, 275.8, 391.4 , 0 );
setMoveKey( spep_7 -3 + 192, 1, 279.9, 394.9 , 0 );
setMoveKey( spep_7 -3 + 194, 1, 275.9, 391.9 , 0 );
setMoveKey( spep_7 -3 + 196, 1, 279.8, 394.7 , 0 );
setMoveKey( spep_7 -3 + 198, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 199, 1, 279.8, 394.6 , 0 );

--[[setMoveKey( spep_7 -3 + 200, 1, 279.8, 394.6 , 0 );
setMoveKey( spep_7 -3 + 202, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 204, 1, 279.7, 394.5 , 0 );
setMoveKey( spep_7 -3 + 206, 1, 275.9, 391.7 , 0 );
setMoveKey( spep_7 -3 + 208, 1, 279.6, 394.3 , 0 );
setMoveKey( spep_7 -3 + 210, 1, 275.8, 391.7 , 0 );
setMoveKey( spep_7 -3 + 212, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 220, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 222, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 228, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 230, 1, 275.8, 391.4 , 0 );
setMoveKey( spep_7 -3 + 232, 1, 279.9, 394.9 , 0 );
setMoveKey( spep_7 -3 + 234, 1, 275.9, 391.9 , 0 );
setMoveKey( spep_7 -3 + 236, 1, 279.8, 394.7 , 0 );
setMoveKey( spep_7 -3 + 238, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 240, 1, 279.8, 394.6 , 0 );
setMoveKey( spep_7 -3 + 242, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 244, 1, 279.7, 394.5 , 0 );
setMoveKey( spep_7 -3 + 246, 1, 275.9, 391.7 , 0 );
setMoveKey( spep_7 -3 + 248, 1, 279.6, 394.3 , 0 );
setMoveKey( spep_7 -3 + 250, 1, 275.8, 391.7 , 0 );
setMoveKey( spep_7 -3 + 252, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 260, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 262, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 268, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 270, 1, 275.8, 391.4 , 0 );
setMoveKey( spep_7 -3 + 272, 1, 279.9, 394.9 , 0 );
setMoveKey( spep_7 -3 + 274, 1, 275.9, 391.9 , 0 );
setMoveKey( spep_7 -3 + 276, 1, 279.8, 394.7 , 0 );
setMoveKey( spep_7 -3 + 279, 1, 275.9, 391.8 , 0 );]]

setScaleKey( spep_7    + 0, 1, 0.48, 0.48 );
setScaleKey( spep_7    + 2, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 6, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 8, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 10, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 12, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 14, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 16, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 18, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 20, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 22, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 24, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 28, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 30, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 32, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 34, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 36, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 38, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 40, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 42, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 44, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 46, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 48, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 50, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 52, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 54, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 56, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 58, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 60, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 62, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 64, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 66, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 68, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 70, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 72, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 74, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 76, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 78, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 80, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 82, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 84, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 86, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 88, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 90, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 92, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 94, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 96, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 98, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 100, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 102, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 104, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 106, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 108, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 110, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 112, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 114, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 116, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 118, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 120, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 122, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 124, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 126, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 128, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 130, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 132, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 134, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 136, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 138, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 140, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 142, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 144, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 146, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 148, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 150, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 152, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 154, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 156, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 158, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 160, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 162, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 164, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 166, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 168, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 170, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 172, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 174, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 176, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 178, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 180, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 182, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 184, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 186, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 188, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 190, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 192, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 194, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 196, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 198, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 199, 1, 0.48, 0.48 );

--[[setScaleKey( spep_7 -3 + 200, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 202, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 204, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 206, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 208, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 210, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 212, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 214, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 216, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 218, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 220, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 222, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 224, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 226, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 228, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 230, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 232, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 234, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 236, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 238, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 240, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 242, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 244, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 246, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 248, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 250, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 252, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 254, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 256, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 258, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 260, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 262, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 264, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 266, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 268, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 270, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 272, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 274, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 276, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 279, 1, 0.48, 0.48 );]]

setRotateKey( spep_7    + 0, 1, 1.1 );
setRotateKey( spep_7    + 2, 1, 1.3 );
setRotateKey( spep_7 -3 + 6, 1, 1.8 );
setRotateKey( spep_7 -3 + 8, 1, 2.1 );
setRotateKey( spep_7 -3 + 10, 1, 2.4 );
setRotateKey( spep_7 -3 + 12, 1, 2.6 );
setRotateKey( spep_7 -3 + 14, 1, 2.9 );
setRotateKey( spep_7 -3 + 16, 1, 3.2 );
setRotateKey( spep_7 -3 + 18, 1, 3.4 );
setRotateKey( spep_7 -3 + 20, 1, 3.7 );
setRotateKey( spep_7 -3 + 22, 1, 3.9 );
setRotateKey( spep_7 -3 + 24, 1, 4.2 );
setRotateKey( spep_7 -3 + 26, 1, 4.5 );
setRotateKey( spep_7 -3 + 28, 1, 4.7 );
setRotateKey( spep_7 -3 + 30, 1, 5 );
setRotateKey( spep_7 -3 + 32, 1, 0 );
setRotateKey( spep_7 -3 + 34, 1, 0.3 );
setRotateKey( spep_7 -3 + 36, 1, 0.5 );
setRotateKey( spep_7 -3 + 38, 1, 0.8 );
setRotateKey( spep_7 -3 + 40, 1, 1.1 );
setRotateKey( spep_7 -3 + 42, 1, 1.3 );
setRotateKey( spep_7 -3 + 44, 1, 1.6 );
setRotateKey( spep_7 -3 + 46, 1, 1.8 );
setRotateKey( spep_7 -3 + 48, 1, 2.1 );
setRotateKey( spep_7 -3 + 50, 1, 2.4 );
setRotateKey( spep_7 -3 + 52, 1, 2.6 );
setRotateKey( spep_7 -3 + 54, 1, 2.9 );
setRotateKey( spep_7 -3 + 56, 1, 3.2 );
setRotateKey( spep_7 -3 + 58, 1, 3.4 );
setRotateKey( spep_7 -3 + 60, 1, 3.7 );
setRotateKey( spep_7 -3 + 62, 1, 3.9 );
setRotateKey( spep_7 -3 + 64, 1, 4.2 );
setRotateKey( spep_7 -3 + 66, 1, 4.5 );
setRotateKey( spep_7 -3 + 68, 1, 4.7 );
setRotateKey( spep_7 -3 + 70, 1, 5 );
setRotateKey( spep_7 -3 + 72, 1, 0 );
setRotateKey( spep_7 -3 + 74, 1, 0.3 );
setRotateKey( spep_7 -3 + 76, 1, 0.5 );
setRotateKey( spep_7 -3 + 78, 1, 0.8 );
setRotateKey( spep_7 -3 + 80, 1, 1.1 );
setRotateKey( spep_7 -3 + 82, 1, 1.3 );
setRotateKey( spep_7 -3 + 84, 1, 1.6 );
setRotateKey( spep_7 -3 + 86, 1, 1.8 );
setRotateKey( spep_7 -3 + 88, 1, 2.1 );
setRotateKey( spep_7 -3 + 90, 1, 2.4 );
setRotateKey( spep_7 -3 + 92, 1, 2.6 );
setRotateKey( spep_7 -3 + 94, 1, 2.9 );
setRotateKey( spep_7 -3 + 96, 1, 3.2 );
setRotateKey( spep_7 -3 + 98, 1, 3.4 );
setRotateKey( spep_7 -3 + 100, 1, 3.7 );
setRotateKey( spep_7 -3 + 102, 1, 3.9 );
setRotateKey( spep_7 -3 + 104, 1, 4.2 );
setRotateKey( spep_7 -3 + 106, 1, 4.5 );
setRotateKey( spep_7 -3 + 108, 1, 4.7 );
setRotateKey( spep_7 -3 + 110, 1, 5 );
setRotateKey( spep_7 -3 + 112, 1, 0 );
setRotateKey( spep_7 -3 + 114, 1, 0.3 );
setRotateKey( spep_7 -3 + 116, 1, 0.5 );
setRotateKey( spep_7 -3 + 118, 1, 0.8 );
setRotateKey( spep_7 -3 + 120, 1, 1.1 );
setRotateKey( spep_7 -3 + 122, 1, 1.3 );
setRotateKey( spep_7 -3 + 124, 1, 1.6 );
setRotateKey( spep_7 -3 + 126, 1, 1.8 );
setRotateKey( spep_7 -3 + 128, 1, 2.1 );
setRotateKey( spep_7 -3 + 130, 1, 2.4 );
setRotateKey( spep_7 -3 + 132, 1, 2.6 );
setRotateKey( spep_7 -3 + 134, 1, 2.9 );
setRotateKey( spep_7 -3 + 136, 1, 3.2 );
setRotateKey( spep_7 -3 + 138, 1, 3.4 );
setRotateKey( spep_7 -3 + 140, 1, 3.7 );
setRotateKey( spep_7 -3 + 142, 1, 3.9 );
setRotateKey( spep_7 -3 + 144, 1, 4.2 );
setRotateKey( spep_7 -3 + 146, 1, 4.5 );
setRotateKey( spep_7 -3 + 148, 1, 4.7 );
setRotateKey( spep_7 -3 + 150, 1, 5 );
setRotateKey( spep_7 -3 + 152, 1, 0 );
setRotateKey( spep_7 -3 + 154, 1, 0.3 );
setRotateKey( spep_7 -3 + 156, 1, 0.5 );
setRotateKey( spep_7 -3 + 158, 1, 0.8 );
setRotateKey( spep_7 -3 + 160, 1, 1.1 );
setRotateKey( spep_7 -3 + 162, 1, 1.3 );
setRotateKey( spep_7 -3 + 164, 1, 1.6 );
setRotateKey( spep_7 -3 + 166, 1, 1.8 );
setRotateKey( spep_7 -3 + 168, 1, 2.1 );
setRotateKey( spep_7 -3 + 170, 1, 2.4 );
setRotateKey( spep_7 -3 + 172, 1, 2.6 );
setRotateKey( spep_7 -3 + 174, 1, 2.9 );
setRotateKey( spep_7 -3 + 176, 1, 3.2 );
setRotateKey( spep_7 -3 + 178, 1, 3.4 );
setRotateKey( spep_7 -3 + 180, 1, 3.7 );
setRotateKey( spep_7 -3 + 182, 1, 3.9 );
setRotateKey( spep_7 -3 + 184, 1, 4.2 );
setRotateKey( spep_7 -3 + 186, 1, 4.5 );
setRotateKey( spep_7 -3 + 188, 1, 4.7 );
setRotateKey( spep_7 -3 + 190, 1, 5 );
setRotateKey( spep_7 -3 + 192, 1, 0 );
setRotateKey( spep_7 -3 + 194, 1, 0.3 );
setRotateKey( spep_7 -3 + 196, 1, 0.5 );
setRotateKey( spep_7 -3 + 198, 1, 0.8 );
setRotateKey( spep_7 -3 + 199, 1, 1.1 );

--[[setRotateKey( spep_7 -3 + 200, 1, 1.1 );
setRotateKey( spep_7 -3 + 202, 1, 1.3 );
setRotateKey( spep_7 -3 + 204, 1, 1.6 );
setRotateKey( spep_7 -3 + 206, 1, 1.8 );
setRotateKey( spep_7 -3 + 208, 1, 2.1 );
setRotateKey( spep_7 -3 + 210, 1, 2.4 );
setRotateKey( spep_7 -3 + 212, 1, 2.6 );
setRotateKey( spep_7 -3 + 214, 1, 2.9 );
setRotateKey( spep_7 -3 + 216, 1, 3.2 );
setRotateKey( spep_7 -3 + 218, 1, 3.4 );
setRotateKey( spep_7 -3 + 220, 1, 3.7 );
setRotateKey( spep_7 -3 + 222, 1, 3.9 );
setRotateKey( spep_7 -3 + 224, 1, 4.2 );
setRotateKey( spep_7 -3 + 226, 1, 4.5 );
setRotateKey( spep_7 -3 + 228, 1, 4.7 );
setRotateKey( spep_7 -3 + 230, 1, 5 );
setRotateKey( spep_7 -3 + 232, 1, 0 );
setRotateKey( spep_7 -3 + 234, 1, 0.3 );
setRotateKey( spep_7 -3 + 236, 1, 0.5 );
setRotateKey( spep_7 -3 + 238, 1, 0.8 );
setRotateKey( spep_7 -3 + 240, 1, 1.1 );
setRotateKey( spep_7 -3 + 242, 1, 1.3 );
setRotateKey( spep_7 -3 + 244, 1, 1.6 );
setRotateKey( spep_7 -3 + 246, 1, 1.8 );
setRotateKey( spep_7 -3 + 248, 1, 2.1 );
setRotateKey( spep_7 -3 + 250, 1, 2.4 );
setRotateKey( spep_7 -3 + 252, 1, 2.6 );
setRotateKey( spep_7 -3 + 254, 1, 2.9 );
setRotateKey( spep_7 -3 + 256, 1, 3.2 );
setRotateKey( spep_7 -3 + 258, 1, 3.4 );
setRotateKey( spep_7 -3 + 260, 1, 3.7 );
setRotateKey( spep_7 -3 + 262, 1, 3.9 );
setRotateKey( spep_7 -3 + 264, 1, 4.2 );
setRotateKey( spep_7 -3 + 266, 1, 4.5 );
setRotateKey( spep_7 -3 + 268, 1, 4.7 );
setRotateKey( spep_7 -3 + 270, 1, 5 );
setRotateKey( spep_7 -3 + 272, 1, 0 );
setRotateKey( spep_7 -3 + 274, 1, 0.3 );
setRotateKey( spep_7 -3 + 276, 1, 0.5 );
setRotateKey( spep_7 -3 + 279, 1, 0.8 );]]

-- ** 音 ** --
--[[]]
--気弾連射1
playSe( spep_7 + 26, 1016 );
setSeVolume( spep_7 + 26, 1016, 30 );

--ラスト決め1
playSe( spep_7 + 80, 1003 );
setSeVolume( spep_7 + 80, 1003, 60 );
--ラスト決め2
playSe( spep_7 + 84, 34 );
setSeVolume( spep_7 + 84, 34, 251 );
--ラスト決め3
playSe( spep_7 + 84, 1257 );
setSeVolume( spep_7 + 84, 1257, 398 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 196, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 +   0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--終わり
dealDamage( spep_7 +73 );
endPhase( spep_7 + 196 );

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
SE02 = playSe( spep_0 + 46, 1189 );
--腕連打2
SE03 = playSe( spep_0 + 50, 1181 );
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
SE05 = playSe( spep_0 + 60, 1003 );
--腕連打5
SE06 = playSe( spep_0 + 68, 1189 );
--腕連打6
playSe( spep_0 + 72, 1003 );
setSeVolume( spep_0 + 72, 1003, 89 );
--腕連打7
playSe( spep_0 + 74, 1189 );
setSeVolume( spep_0 + 74, 1189, 81 );
--腕連打8
playSe( spep_0 + 82, 1003 );
setSeVolume( spep_0 + 82, 1003, 69 );
--腕連打9
playSe( spep_0 + 84, 1189 );
setSeVolume( spep_0 + 84, 1189, 71 );
--腕連打10
playSe( spep_0 + 90, 1003 );
setSeVolume( spep_0 + 90, 1003, 68 );
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

-- ** ホワイトフェード ** --
--entryFade( spep_0 + 116,  0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 118, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 126;

------------------------------------------------------
-- 連打残像攻撃、敵より手前(84)
------------------------------------------------------
-- ** エフェクト等 ** --
pattack1_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --連打残像攻撃、敵より手前(ef_002)
setEffMoveKey(   spep_1 +  0, pattack1_f, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 84, pattack1_f, 0, 0 , 0 );
setEffScaleKey(  spep_1 +  0, pattack1_f, 1.0, 1.0 );
setEffScaleKey(  spep_1 + 84, pattack1_f, 1.0, 1.0 );
setEffRotateKey( spep_1 +  0, pattack1_f, 0 );
setEffRotateKey( spep_1 + 84, pattack1_f, 0 );
setEffAlphaKey(  spep_1 +  0, pattack1_f, 255 );
setEffAlphaKey(  spep_1 + 84, pattack1_f, 255 );

pattack1_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --連打残像攻撃用背景(ef_003)
setEffMoveKey(   spep_1 +  0, pattack1_b, 0,   0 , 0 );
setEffMoveKey(   spep_1 + 84, pattack1_b, 0,   0 , 0 );
setEffScaleKey(  spep_1 +  0, pattack1_b, 1.0, 1.0 );
setEffScaleKey(  spep_1 + 84, pattack1_b, 1.0, 1.0 );
setEffRotateKey( spep_1 +  0, pattack1_b, 0 );
setEffRotateKey( spep_1 + 84, pattack1_b, 0 );
setEffAlphaKey(  spep_1 +  0, pattack1_b, 255 );
setEffAlphaKey(  spep_1 + 84, pattack1_b, 255 );

-- ** 書き文字エントリー ** --
ctga1 = entryEffectLife( spep_1 -3 + 6,  10005, 13, 0x100, -1, 0, 101.1, 21.3 ); --ガッ
setEffMoveKey(   spep_1 -3 +  6, ctga1, 101.1, 21.3 , 0 );
setEffMoveKey(   spep_1 -3 +  8, ctga1, 168.8, 40.9 , 0 );
setEffMoveKey(   spep_1 -3 + 10, ctga1, 189.7, 50.9 , 0 );
setEffMoveKey(   spep_1 -3 + 12, ctga1, 205.8, 56.5 , 0 );
setEffMoveKey(   spep_1 -3 + 19, ctga1, 205.8, 56.5 , 0 );
setEffScaleKey(  spep_1 -3 +  6, ctga1, 0.5,   0.5 );
setEffScaleKey(  spep_1 -3 +  8, ctga1, 0.81,  0.81 );
setEffScaleKey(  spep_1 -3 + 10, ctga1, 0.87,  0.87 );
setEffScaleKey(  spep_1 -3 + 12, ctga1, 0.89,  0.89 );
setEffScaleKey(  spep_1 -3 + 19, ctga1, 0.89,  0.89 );
setEffRotateKey( spep_1 -3 +  6, ctga1, 10 );
setEffRotateKey( spep_1 -3 + 19, ctga1, 10 );
setEffAlphaKey(  spep_1 -3 +  6, ctga1, 255 );
setEffAlphaKey(  spep_1 -3 + 19, ctga1, 255 );

ctga2 = entryEffectLife( spep_1 -3 + 20,  10005, 13, 0x100, -1, 0, -171.2, 91 ); --ガッ
setEffMoveKey(   spep_1 -3 + 20, ctga2, -171.2, 91 , 0 );
setEffMoveKey(   spep_1 -3 + 22, ctga2, -132.8, 188.1 , 0 );
setEffMoveKey(   spep_1 -3 + 24, ctga2, -105.7, 236.3 , 0 );
setEffMoveKey(   spep_1 -3 + 26, ctga2, -102,   250.8 , 0 );
setEffMoveKey(   spep_1 -3 + 33, ctga2, -102,   250.8 , 0 );
setEffScaleKey(  spep_1 -3 + 20, ctga2,  0.96,  0.96 );
setEffScaleKey(  spep_1 -3 + 22, ctga2,  1.05,  1.05 );
setEffScaleKey(  spep_1 -3 + 24, ctga2,  1.1,   1.1 );
setEffScaleKey(  spep_1 -3 + 26, ctga2,  1.12,  1.12 );
setEffScaleKey(  spep_1 -3 + 33, ctga2,  1.12,  1.12 );
setEffRotateKey( spep_1 -3 + 20, ctga2,  25.8 );
setEffRotateKey( spep_1 -3 + 22, ctga2,  35 );
setEffRotateKey( spep_1 -3 + 24, ctga2,  37.1 );
setEffRotateKey( spep_1 -3 + 26, ctga2,  39.1 );
setEffRotateKey( spep_1 -3 + 33, ctga2,  39.1 );
setEffAlphaKey(  spep_1 -3 + 20, ctga2,  255 );
setEffAlphaKey(  spep_1 -3 + 33, ctga2,  255 );

ctga3 = entryEffectLife( spep_1 -3 + 32,  10005, 14, 0x100, -1, 0, 163.4, 63.8 ); --ガッ
setEffMoveKey(   spep_1 -3 + 32, ctga3, 163.4, 63.8 , 0 );
setEffMoveKey(   spep_1 -3 + 34, ctga3, 190.8, 113.2 , 0 );
setEffMoveKey(   spep_1 -3 + 36, ctga3, 197.3, 142.9 , 0 );
setEffMoveKey(   spep_1 -3 + 38, ctga3, 202.8, 152.8 , 0 );
setEffMoveKey(   spep_1 -3 + 40, ctga3, 226.6, 145.3 , 0 );
setEffMoveKey(   spep_1 -3 + 42, ctga3, 240.4, 137.8 , 0 );
setEffMoveKey(   spep_1 -3 + 44, ctga3, 254.1, 130.2 , 0 );
setEffMoveKey(   spep_1 -3 + 46, ctga3, 254.1, 130.2 , 0 );
setEffScaleKey(  spep_1 -3 + 32, ctga3, 0.33, 0.33 );
setEffScaleKey(  spep_1 -3 + 34, ctga3, 0.84, 0.84 );
setEffScaleKey(  spep_1 -3 + 36, ctga3, 1.1,  1.1 );
setEffScaleKey(  spep_1 -3 + 38, ctga3, 1.16, 1.16 );
setEffScaleKey(  spep_1 -3 + 46, ctga3, 1.16, 1.16 );
setEffRotateKey( spep_1 -3 + 32, ctga3, 43.5 );
setEffRotateKey( spep_1 -3 + 34, ctga3, 51.7 );
setEffRotateKey( spep_1 -3 + 36, ctga3, 60.0 );
setEffRotateKey( spep_1 -3 + 38, ctga3, 60.1 );
setEffRotateKey( spep_1 -3 + 46, ctga3, 60.1 );
setEffAlphaKey(  spep_1 -3 + 32, ctga3, 255 );
setEffAlphaKey(  spep_1 -3 + 38, ctga3, 255 );
setEffAlphaKey(  spep_1 -3 + 40, ctga3, 179 );
setEffAlphaKey(  spep_1 -3 + 42, ctga3, 102 );
setEffAlphaKey(  spep_1 -3 + 44, ctga3, 26 );
setEffAlphaKey(  spep_1 -3 + 46, ctga3, 0 );

ctga4 = entryEffectLife( spep_1 -3 + 46,  10005, 12, 0x100, -1, 0, 105.7, 23.1 ); --ガッ
setEffMoveKey(   spep_1 -3 + 46, ctga4, 105.7, 23.1 , 0 );
setEffMoveKey(   spep_1 -3 + 48, ctga4, 153.3, 44.9 , 0 );
setEffMoveKey(   spep_1 -3 + 50, ctga4, 189.7, 57.9 , 0 );
setEffMoveKey(   spep_1 -3 + 52, ctga4, 200.8, 62.3 , 0 );
setEffMoveKey(   spep_1 -3 + 58, ctga4, 200.8, 62.3 , 0 );
setEffScaleKey(  spep_1 -3 + 46, ctga4, 0.56, 0.56 );
setEffScaleKey(  spep_1 -3 + 48, ctga4, 0.67, 0.67 );
setEffScaleKey(  spep_1 -3 + 50, ctga4, 0.77, 0.79 );
setEffScaleKey(  spep_1 -3 + 52, ctga4, 0.8,  0.8 );
setEffScaleKey(  spep_1 -3 + 58, ctga4, 0.8,  0.8 );
setEffRotateKey( spep_1 -3 + 46, ctga4, 10 );
setEffRotateKey( spep_1 -3 + 58, ctga4, 10 );
setEffAlphaKey(  spep_1 -3 + 46, ctga4, 255 );
setEffAlphaKey(  spep_1 -3 + 58, ctga4, 255 );

ctga5 = entryEffectLife( spep_1 -3 + 60,  10005, 13, 0x100, -1, 0, -171.2, 91 ); --ガッ
setEffMoveKey(   spep_1 -3 + 60, ctga5, -172.2, 81 , 0 );
setEffMoveKey(   spep_1 -3 + 62, ctga5, -128.8, 178.1 , 0 );
setEffMoveKey(   spep_1 -3 + 64, ctga5, -113.7, 222.3 , 0 );
setEffMoveKey(   spep_1 -3 + 66, ctga5, -97,    245.8 , 0 );
setEffMoveKey(   spep_1 -3 + 73, ctga5, -97,    245.8 , 0 );
setEffScaleKey(  spep_1 -3 + 60, ctga5,  0.91,  0.91 );
setEffScaleKey(  spep_1 -3 + 62, ctga5,  0.99,  0.99 );
setEffScaleKey(  spep_1 -3 + 64, ctga5,  1.04,  1.04 );
setEffScaleKey(  spep_1 -3 + 66, ctga5,  1.08,  1.08 );
setEffScaleKey(  spep_1 -3 + 73, ctga5,  1.08,  1.08 );
setEffRotateKey( spep_1 -3 + 60, ctga5,  20.8 );
setEffRotateKey( spep_1 -3 + 62, ctga5,  27 );
setEffRotateKey( spep_1 -3 + 64, ctga5,  32.1 );
setEffRotateKey( spep_1 -3 + 66, ctga5,  36.1 );
setEffRotateKey( spep_1 -3 + 73, ctga5,  36.1 );
setEffAlphaKey(  spep_1 -3 + 60, ctga5,  255 );
setEffAlphaKey(  spep_1 -3 + 73, ctga5,  255 );

ctga6 = entryEffectLife( spep_1 -3 + 72,  10005, 14, 0x100, -1, 0, 163.4, 63.8 ); --ガッ
setEffMoveKey(   spep_1 -3 + 72, ctga6, 163.4, 63.8 , 0 );
setEffMoveKey(   spep_1 -3 + 74, ctga6, 190.8, 113.2 , 0 );
setEffMoveKey(   spep_1 -3 + 76, ctga6, 207.3, 142.9 , 0 );
setEffMoveKey(   spep_1 -3 + 78, ctga6, 212.8, 152.8 , 0 );
setEffMoveKey(   spep_1 -3 + 80, ctga6, 226.6, 145.3 , 0 );
setEffMoveKey(   spep_1 -3 + 82, ctga6, 240.4, 137.8 , 0 );
setEffMoveKey(   spep_1 -3 + 84, ctga6, 254.1, 130.2 , 0 );
setEffMoveKey(   spep_1 -3 + 86, ctga6, 254.1, 130.2 , 0 );
setEffScaleKey(  spep_1 -3 + 72, ctga6, 0.34, 0.34 );
setEffScaleKey(  spep_1 -3 + 74, ctga6, 0.82, 0.82 );
setEffScaleKey(  spep_1 -3 + 76, ctga6, 1.19, 1.19 );
setEffScaleKey(  spep_1 -3 + 78, ctga6, 1.27, 1.27 );
setEffScaleKey(  spep_1 -3 + 86, ctga6, 1.27, 1.27 );
setEffRotateKey( spep_1 -3 + 72, ctga6, 57.5 );
setEffRotateKey( spep_1 -3 + 74, ctga6, 57.7 );
setEffRotateKey( spep_1 -3 + 76, ctga6, 57.9 );
setEffRotateKey( spep_1 -3 + 78, ctga6, 58 );
setEffRotateKey( spep_1 -3 + 86, ctga6, 58 );
setEffAlphaKey(  spep_1 -3 + 72, ctga6, 255 );
setEffAlphaKey(  spep_1 -3 + 78, ctga6, 255 );
setEffAlphaKey(  spep_1 -3 + 80, ctga6, 179 );
setEffAlphaKey(  spep_1 -3 + 82, ctga6, 102 );
setEffAlphaKey(  spep_1 -3 + 84, ctga6, 26 );
setEffAlphaKey(  spep_1 -3 + 86, ctga6, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 +  0, 1, 1 );
setDisp( spep_1 + 84, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );

setMoveKey( spep_1    + 0, 1, 10, 10 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 2, 4 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 21.7, 10 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 13.7, 4 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 6.5, 11.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 2.2, 10 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -5.8, 4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -3.7, 31.6 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -15.9, 27.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -8.5, 35.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 33, 22.3 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 41.3, 27.6 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 52.9, 23.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 60.9, 29.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 49.4, 11.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 57.3, 16.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 49, 9.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 41.4, 16 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 33.4, 9.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 41.2, 17.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 28, -3.5 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 37.4, 2.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 37.4, 19.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 45.4, 29 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 25.2, 20.4 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 33.7, 25.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 4.1, 29.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 12.1, 35.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 1.1, 32.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 8.9, 39.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 51.3, 32.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 59.1, 37.6 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 51.1, 31.5 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 75.6, 59.2 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 65.3, 48.6 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 72.8, 53.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 47.2, 57 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 55.2, 63 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -1.2, 4.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 6.5, 11.6 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 2, 4 , 0 );
setMoveKey( spep_1 -3 + 87, 1, 0, 0 , 0 );

setScaleKey( spep_1    + 0, 1, 2, 2 );
setScaleKey( spep_1 -3 + 8, 1, 2, 2 );
setScaleKey( spep_1 -3 + 10, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 14, 1, 2, 2 );
setScaleKey( spep_1 -3 + 18, 1, 2, 2 );
setScaleKey( spep_1 -3 + 20, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 22, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 26, 1, 2, 2 );
setScaleKey( spep_1 -3 + 30, 1, 2, 2 );
setScaleKey( spep_1 -3 + 32, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 34, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 36, 1, 2, 2 );
setScaleKey( spep_1 -3 + 40, 1, 2, 2 );
setScaleKey( spep_1 -3 + 42, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 44, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 46, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 48, 1, 2, 2 );
setScaleKey( spep_1 -3 + 50, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 52, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 54, 1, 2, 2 );
setScaleKey( spep_1 -3 + 58, 1, 2, 2 );
setScaleKey( spep_1 -3 + 60, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 62, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 64, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 66, 1, 2, 2 );
setScaleKey( spep_1 -3 + 68, 1, 2, 2 );
setScaleKey( spep_1 -3 + 70, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 72, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 74, 1, 2, 2 );
setScaleKey( spep_1 -3 + 78, 1, 2, 2 );
setScaleKey( spep_1 -3 + 80, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 82, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 84, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 86, 1, 2, 2 );
setScaleKey( spep_1 -3 + 87, 1, 2, 2 );

setRotateKey( spep_1    +  0, 1, 0 );
setRotateKey( spep_1 -3 + 87, 1, 0 );

-- ** 音 ** --
--腕連打15
playSe( spep_1 + 0, 1003 );
setSeVolume( spep_1 + 0, 1003, 91 );
--腕連打16
playSe( spep_1 + 5, 1003 );

--敵ヒット（耐え）1
playSe( spep_1 + 6, 1189 );
--敵ヒット（耐え）2
playSe( spep_1 + 14, 1006 );
--敵ヒット（耐え）3
playSe( spep_1 + 20, 1006 );
setSeVolume( spep_1 + 20, 1006, 70 );
--敵ヒット（耐え）4
playSe( spep_1 + 20, 1189 );
--敵ヒット（耐え）5
playSe( spep_1 + 28, 1007 );
--敵ヒット（耐え）6
playSe( spep_1 + 34, 1006 );
setSeVolume( spep_1 + 34, 1006, 76 );
--敵ヒット（耐え）7
playSe( spep_1 + 40, 1189 );
--敵ヒット（耐え）8
playSe( spep_1 + 42, 1007 );
setSeVolume( spep_1 + 42, 1007, 84 );
--敵ヒット（耐え）9
playSe( spep_1 + 46, 1013 );
setSeVolume( spep_1 + 46, 1013, 80 );
--敵ヒット（耐え）10
playSe( spep_1 + 48, 1189 );
--敵ヒット（耐え）11
playSe( spep_1 + 48, 1007 );
--敵ヒット（耐え）12
playSe( spep_1 + 50, 1189 );
setSeVolume( spep_1 + 50, 1189, 126 );
--敵ヒット（耐え）13
playSe( spep_1 + 52, 1012 );
setSeVolume( spep_1 + 52, 1012, 56 );
--敵ヒット（耐え）14
playSe( spep_1 + 56, 1007 );
setSeVolume( spep_1 + 56, 1007, 78 );
--敵ヒット（耐え）15
playSe( spep_1 + 62, 1007 );
setSeVolume( spep_1 + 62, 1007, 67 );
--敵ヒット（耐え）16
playSe( spep_1 + 68, 1012 );
setSeVolume( spep_1 + 68, 1012, 47 );
--敵ヒット（耐え）17
playSe( spep_1 + 76, 1007 );
setSeVolume( spep_1 + 76, 1007, 59 );
--敵ヒット（耐え）18
playSe( spep_1 + 84, 1006 );
setSeVolume( spep_1 + 84, 1006, 82 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 +  0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 82,  2, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 84;

------------------------------------------------------
-- 連打残像攻撃(106)
------------------------------------------------------
-- ** エフェクト等 ** --
prush2 = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --連打残像攻撃(ef_004)
setEffMoveKey(   spep_2 +   0, prush2, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 106, prush2, 0, 0 , 0 );
setEffScaleKey(  spep_2 +   0, prush2, -1.0, 1.0 );
setEffScaleKey(  spep_2 + 106, prush2, -1.0, 1.0 );
setEffRotateKey( spep_2 +   0, prush2, 0 );
setEffRotateKey( spep_2 + 106, prush2, 0 );
setEffAlphaKey(  spep_2 +   0, prush2, 255 );
setEffAlphaKey(  spep_2 + 106, prush2, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 53,  906, 52, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 53, shuchusen2, 52, 25 );
setEffMoveKey(   spep_2 +  53, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 105, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_2 +  53, shuchusen2, 1.8, 1.8 );
setEffScaleKey(  spep_2 + 105, shuchusen2, 1.8, 1.8 );
setEffRotateKey( spep_2 +  53, shuchusen2, 0 );
setEffRotateKey( spep_2 + 105, shuchusen2, 0 );
setEffAlphaKey(  spep_2 +  53, shuchusen2, 255 );
setEffAlphaKey(  spep_2 + 105, shuchusen2, 255 );

-- ** 音 ** --
--腕連打（高速）1
SE07 = playSe( spep_2 + 14, 1181 );
setSeVolume( spep_2 +  97, 1181, 100 );
setSeVolume( spep_2 + 100, 1181,  95 );
setSeVolume( spep_2 + 103, 1181,  90 );
setSeVolume( spep_2 + 106, 1181,  80 );
setSeVolume( spep_2 + 109, 1181,  70 );
setSeVolume( spep_2 + 112, 1181,  60 );
setSeVolume( spep_2 + 115, 1181,  50 );
setSeVolume( spep_2 + 118, 1181,  40 );
setSeVolume( spep_2 + 121, 1181,  30 );
setSeVolume( spep_2 + 124, 1181,  20 );
setSeVolume( spep_2 + 127, 1181,  15 );
setSeVolume( spep_2 + 130, 1181,  10 );
setSeVolume( spep_2 + 133, 1181,   5 );
setSeVolume( spep_2 + 136, 1181,   0 );
stopSe( spep_2 + 136, SE07, 0 );
--腕連打（高速）2
playSe( spep_2 + 14, 1003 );
setSeVolume( spep_2 + 14, 1003, 100 );
--腕連打（高速）3
playSe( spep_2 + 14, 1004 );
setSeVolume( spep_2 + 14, 1004, 63 );
--腕連打（高速）4
playSe( spep_2 + 22, 1003 );
setSeVolume( spep_2 + 22, 1003, 72 );
--腕連打（高速）5
playSe( spep_2 + 30, 1003 );
setSeVolume( spep_2 + 30, 1003, 73 );
--腕連打（高速）6
playSe( spep_2 + 34, 1003 );
setSeVolume( spep_2 + 34, 1003, 84 );

--腕連打（高速）7
playSe( spep_2 + 38, 1003 );
setSeVolume( spep_2 + 38, 1003, 87 );
--腕連打（高速）8
playSe( spep_2 + 42, 1003 );
setSeVolume( spep_2 + 42, 1003, 50 );
--腕連打（高速）9
playSe( spep_2 + 42, 1048 );
setSeVolume( spep_2 + 42, 1048, 34 );
--腕連打（高速）10
playSe( spep_2 + 46, 1003 );
setSeVolume( spep_2 + 46, 1003, 79 );
--腕連打（高速）11
playSe( spep_2 + 46, 1048 );
setSeVolume( spep_2 + 46, 1048, 36 );
--腕連打（高速）12
playSe( spep_2 + 50, 1003 );
setSeVolume( spep_2 + 50, 1003, 67 );
--腕連打（高速）13
playSe( spep_2 + 50, 1048 );
setSeVolume( spep_2 + 50, 1048, 40 );
--腕連打（高速）14
playSe( spep_2 + 56, 1048 );
setSeVolume( spep_2 + 56, 1048, 42 );
--腕連打（高速）15
playSe( spep_2 + 58, 1003 );
setSeVolume( spep_2 + 58, 1003, 68 );
--腕連打（高速）16
playSe( spep_2 + 64, 1048 );
setSeVolume( spep_2 + 64, 1048, 45 );
--腕連打（高速）17
playSe( spep_2 + 66, 1003 );
setSeVolume( spep_2 + 66, 1003, 71 );
--腕連打（高速）18
playSe( spep_2 + 68, 1048 );
setSeVolume( spep_2 + 68, 1048, 43 );
--腕連打（高速）19
playSe( spep_2 + 72, 1048 );
setSeVolume( spep_2 + 72, 1048, 38 );
--腕連打（高速）20
playSe( spep_2 + 74, 1003 );
setSeVolume( spep_2 + 74, 1003, 67 );
--腕連打（高速）21
playSe( spep_2 + 76, 1048 );
setSeVolume( spep_2 + 76, 1048, 56 );
--腕連打（高速）22
playSe( spep_2 + 80, 1048 );
setSeVolume( spep_2 + 80, 1048, 47 );
--腕連打（高速）23
playSe( spep_2 + 84, 1048 );
setSeVolume( spep_2 + 84, 1048, 61 );
--腕連打（高速）24
playSe( spep_2 + 84, 1003 );
setSeVolume( spep_2 + 84, 1003, 37 );
--腕連打（高速）25
playSe( spep_2 + 86, 1048 );
setSeVolume( spep_2 + 86, 1048, 62 );
--腕連打（高速）26
playSe( spep_2 + 90, 1048 );
setSeVolume( spep_2 + 90, 1048, 60 );
--腕連打（高速）27
playSe( spep_2 + 90, 1003 );
setSeVolume( spep_2 + 90, 1003, 65 );
--腕連打（高速）28
playSe( spep_2 + 92, 1048 );
setSeVolume( spep_2 + 92, 1048, 69 );
--腕連打（高速）29
playSe( spep_2 + 96, 1048 );
setSeVolume( spep_2 + 96, 1048, 69 );
--腕連打（高速）30
playSe( spep_2 + 96, 1003 );
setSeVolume( spep_2 + 96, 1003, 75 );
--腕連打（高速）31
playSe( spep_2 + 100, 1048 );
setSeVolume( spep_2 + 100, 1048, 70 );
--腕連打（高速）32
playSe( spep_2 + 104, 1048 );
setSeVolume( spep_2 + 104, 1048, 79 );
--腕連打（高速）33
playSe( spep_2 + 104, 1003 );
setSeVolume( spep_2 + 104, 1003, 44 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 106, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 +   0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 104,  2, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 105;

------------------------------------------------------
-- パンチ残像、白→黄色(56)
------------------------------------------------------
pyellow = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --連打残像攻撃(ef_005)
setEffMoveKey(   spep_3 +  0, pyellow, 0, 0 , 0 );
setEffMoveKey(   spep_3 + 56, pyellow, 0, 0 , 0 );
setEffScaleKey(  spep_3 +  0, pyellow, 1.0, 1.0 );
setEffScaleKey(  spep_3 + 56, pyellow, 1.0, 1.0 );
setEffRotateKey( spep_3 +  0, pyellow, 0 );
setEffRotateKey( spep_3 + 56, pyellow, 0 );
setEffAlphaKey(  spep_3 +  0, pyellow, 255 );
setEffAlphaKey(  spep_3 + 56, pyellow, 255 );

-- ** 音 ** --
--腕連打（高速）34
playSe( spep_3 + 2, 1048 );
setSeVolume( spep_3 + 2, 1048, 74 );
--腕連打（高速）35
playSe( spep_3 + 4, 1003 );
setSeVolume( spep_3 + 4, 1003, 78 );
--腕連打（高速）36
playSe( spep_3 + 8, 1048 );
setSeVolume( spep_3 + 8, 1048, 79 );

--連打（空中）1
playSe( spep_3 + 12, 1003 );
setSeVolume( spep_3 + 12, 1003, 40 );
--連打（空中）2
playSe( spep_3 + 22, 1003 );
--連打（空中）3
playSe( spep_3 + 28, 1003 );
--連打（空中）4
playSe( spep_3 + 34, 1003 );
--連打（空中）5
playSe( spep_3 + 40, 1003 );
--連打（空中）6
playSe( spep_3 + 44, 1027 );
setSeVolume( spep_3 + 44, 1027, 20 );
--連打（空中）7
playSe( spep_3 + 46, 1003 );
setSeVolume( spep_3 + 46, 1003, 84 );
--連打（空中）8
playSe( spep_3 + 50, 1027 );
setSeVolume( spep_3 + 50, 1027, 41 );
--連打（空中）9
playSe( spep_3 + 52, 1003 );
setSeVolume( spep_3 + 52, 1003, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 106, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 +  0,  0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 54,  2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;

------------------------------------------------------
-- 連打残像攻撃(黄色)、敵より手前~敵吹っ飛び(176)
------------------------------------------------------
-- ** エフェクト等 ** --
prush2_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --連打残像攻撃(黄色)、敵より手前(ef_006)
setEffMoveKey(   spep_4 +   0, prush2_f, 0, 0 , 0 );
setEffMoveKey(   spep_4 + 176, prush2_f, 0, 0 , 0 );
setEffScaleKey(  spep_4 +   0, prush2_f, 1.0, 1.0 );
setEffScaleKey(  spep_4 + 176, prush2_f, 1.0, 1.0 );
setEffRotateKey( spep_4 +   0, prush2_f, 0 );
setEffRotateKey( spep_4 + 176, prush2_f, 0 );
setEffAlphaKey(  spep_4 +   0, prush2_f, 255 );
setEffAlphaKey(  spep_4 + 176, prush2_f, 255 );

prush2_b = entryEffect( spep_4 + 0, SP_07r, 0x80, -1, 0, 0, 0 );  --連打残像攻撃(黄色)→敵吹っ飛び(ef_007)
setEffMoveKey(   spep_4 +   0, prush2_b, 0,   0 , 0 );
setEffMoveKey(   spep_4 + 176, prush2_b, 0,   0 , 0 );
setEffScaleKey(  spep_4 +   0, prush2_b, 1.0, 1.0 );
setEffScaleKey(  spep_4 + 176, prush2_b, 1.0, 1.0 );
setEffRotateKey( spep_4 +   0, prush2_b, 0 );
setEffRotateKey( spep_4 + 176, prush2_b, 0 );
setEffAlphaKey(  spep_4 +   0, prush2_b, 255 );
setEffAlphaKey(  spep_4 + 176, prush2_b, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 49,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 49, shuchusen3, 18, 25 );
setEffMoveKey(   spep_4 + 49, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_4 + 63, shuchusen3, 50, 100 , 0 );
setEffMoveKey(   spep_4 + 67, shuchusen3, 50, 100 , 0 );
setEffScaleKey(  spep_4 + 49, shuchusen3, 1.2, 1.2 );
setEffScaleKey(  spep_4 + 63, shuchusen3, 1.6, 1.6 );
setEffScaleKey(  spep_4 + 67, shuchusen3, 1.6, 1.6 );
setEffRotateKey( spep_4 + 49, shuchusen3, 0 );
setEffRotateKey( spep_4 + 67, shuchusen3, 0 );
setEffAlphaKey(  spep_4 + 49, shuchusen3,  10 );
setEffAlphaKey(  spep_4 + 52, shuchusen3, 200 );
setEffAlphaKey(  spep_4 + 38, shuchusen3, 255 );
setEffAlphaKey(  spep_4 + 63, shuchusen3, 200 );
setEffAlphaKey(  spep_4 + 65, shuchusen3,  70 );
setEffAlphaKey(  spep_4 + 67, shuchusen3,   0 );

-- ** 書き文字エントリー ** --
ctbaki1 = entryEffectLife( spep_4 -3 + 14,  10020, 13, 0x100, -1, 0, 191.9, 34 ); --バキ
setEffMoveKey(   spep_4 -3 + 14, ctbaki1, 191.9, 34 , 0 );
setEffMoveKey(   spep_4 -3 + 16, ctbaki1, 204.6, 44.6 , 0 );
setEffMoveKey(   spep_4 -3 + 18, ctbaki1, 204.3, 58.9 , 0 );
setEffMoveKey(   spep_4 -3 + 20, ctbaki1, 201.9, 62 , 0 );
setEffMoveKey(   spep_4 -3 + 27, ctbaki1, 201.9, 62 , 0 );
setEffScaleKey(  spep_4 -3 + 14, ctbaki1, 0.58, 0.58 );
setEffScaleKey(  spep_4 -3 + 16, ctbaki1, 0.75, 0.75 );
setEffScaleKey(  spep_4 -3 + 18, ctbaki1, 0.96, 0.96 );
setEffScaleKey(  spep_4 -3 + 20, ctbaki1, 1.01, 1.01 );
setEffScaleKey(  spep_4 -3 + 27, ctbaki1, 1.01, 1.01 );
setEffRotateKey( spep_4 -3 + 14, ctbaki1, 0 );
setEffRotateKey( spep_4 -3 + 27, ctbaki1, 0 );
setEffAlphaKey(  spep_4 -3 + 14, ctbaki1, 255 );
setEffAlphaKey(  spep_4 -3 + 27, ctbaki1, 255 );

ctbaki2 = entryEffectLife( spep_4 -3 + 28,  10020, 13, 0x100, -1, 0, -134.4, 128.3 ); --バキ
setEffMoveKey(   spep_4 -3 + 28, ctbaki2, -134.4, 128.3 , 0 );
setEffMoveKey(   spep_4 -3 + 30, ctbaki2, -161.7, 148.8 , 0 );
setEffMoveKey(   spep_4 -3 + 32, ctbaki2, -193.7, 162.4 , 0 );
setEffMoveKey(   spep_4 -3 + 34, ctbaki2, -187.6, 164.7 , 0 );
setEffMoveKey(   spep_4 -3 + 41, ctbaki2, -187.6, 164.7 , 0 );
setEffScaleKey(  spep_4 -3 + 28, ctbaki2, 0.64, 0.64 );
setEffScaleKey(  spep_4 -3 + 30, ctbaki2, 1.05, 1.05 );
setEffScaleKey(  spep_4 -3 + 32, ctbaki2, 1.35, 1.35 );
setEffScaleKey(  spep_4 -3 + 34, ctbaki2, 1.44, 1.44 );
setEffScaleKey(  spep_4 -3 + 41, ctbaki2, 1.44, 1.44 );
setEffRotateKey( spep_4 -3 + 28, ctbaki2, -42.5 );
setEffRotateKey( spep_4 -3 + 30, ctbaki2, -40.2 );
setEffRotateKey( spep_4 -3 + 32, ctbaki2, -37.6 );
setEffRotateKey( spep_4 -3 + 34, ctbaki2, -36.7 );
setEffRotateKey( spep_4 -3 + 41, ctbaki2, -36.7 );
setEffAlphaKey(  spep_4 -3 + 28, ctbaki2, 255 );
setEffAlphaKey(  spep_4 -3 + 34, ctbaki2, 255 );
setEffAlphaKey(  spep_4 -3 + 41, ctbaki2, 255 );

ctbaki3 = entryEffectLife( spep_4 -3 + 42,  10020, 13, 0x100, -1, 0, 249.9, -14 ); --バキ
setEffMoveKey(   spep_4 -3 + 42, ctbaki3, 249.9, -14 , 0 );
setEffMoveKey(   spep_4 -3 + 44, ctbaki3, 248.4, 60.9 , 0 );
setEffMoveKey(   spep_4 -3 + 46, ctbaki3, 263.5, 114 , 0 );
setEffMoveKey(   spep_4 -3 + 48, ctbaki3, 264.3, 129.4 , 0 );
setEffMoveKey(   spep_4 -3 + 55, ctbaki3, 264.3, 129.4 , 0 );
setEffScaleKey(  spep_4 -3 + 42, ctbaki3, 0.61,  0.61 );
setEffScaleKey(  spep_4 -3 + 44, ctbaki3, 1.61,  1.61 );
setEffScaleKey(  spep_4 -3 + 46, ctbaki3, 2.24,  2.24 );
setEffScaleKey(  spep_4 -3 + 48, ctbaki3, 2.4, 2.4 );
setEffScaleKey(  spep_4 -3 + 55, ctbaki3, 2.4, 2.4 );
setEffRotateKey( spep_4 -3 + 42, ctbaki3, 43.5 );
setEffRotateKey( spep_4 -3 + 44, ctbaki3, 43.7 );
setEffRotateKey( spep_4 -3 + 46, ctbaki3, 43.9 );
setEffRotateKey( spep_4 -3 + 48, ctbaki3, 44 );
setEffRotateKey( spep_4 -3 + 55, ctbaki3, 44 );
setEffAlphaKey(  spep_4 -3 + 42, ctbaki3, 255 );
setEffAlphaKey(  spep_4 -3 + 48, ctbaki3, 255 );
setEffAlphaKey(  spep_4 -3 + 50, ctbaki3, 179 );
setEffAlphaKey(  spep_4 -3 + 52, ctbaki3, 102 );
setEffAlphaKey(  spep_4 -3 + 54, ctbaki3, 26 );
setEffAlphaKey(  spep_4 -3 + 55, ctbaki3, 26 );

ctbaki4 = entryEffectLife( spep_4 -3 + 48,  10020, 32, 0x100, -1, 0, 165.9, 24 ); --バキ
setEffMoveKey(   spep_4 -3 + 48, ctbaki4, 165.9, 24 , 0 );
setEffMoveKey(   spep_4 -3 + 50, ctbaki4, 117.4, 127.3 , 0 );
setEffMoveKey(   spep_4 -3 + 52, ctbaki4, 75.3, 178.7 , 0 );
setEffMoveKey(   spep_4 -3 + 54, ctbaki4, 64, 198 , 0 );
setEffMoveKey(   spep_4 -3 + 56, ctbaki4, 64.8, 197.5 , 0 );
setEffMoveKey(   spep_4 -3 + 58, ctbaki4, 65.7, 197   , 0 );
setEffMoveKey(   spep_4 -3 + 60, ctbaki4, 66.5, 196.4 , 0 );
setEffMoveKey(   spep_4 -3 + 62, ctbaki4, 67.3, 195.9 , 0 );
setEffMoveKey(   spep_4 -3 + 64, ctbaki4, 68.1, 195.4 , 0 );
setEffMoveKey(   spep_4 -3 + 66, ctbaki4, 69  , 194.9 , 0 );
setEffMoveKey(   spep_4 -3 + 68, ctbaki4, 69.8, 194.3 , 0 );
setEffMoveKey(   spep_4 -3 + 70, ctbaki4, 70.6, 193.8 , 0 );
setEffMoveKey(   spep_4 -3 + 72, ctbaki4, 71.5, 193.3 , 0 );
setEffMoveKey(   spep_4 -3 + 74, ctbaki4, 72.3, 192.7 , 0 );
setEffMoveKey(   spep_4 -3 + 76, ctbaki4, 73.1, 192.2 , 0 );
setEffMoveKey(   spep_4 -3 + 78, ctbaki4, 74  , 191.7 , 0 );
setEffMoveKey(   spep_4 -3 + 80, ctbaki4, 73.2, 191.1 , 0 );
setEffScaleKey(  spep_4 -3 + 48, ctbaki4, 0.63, 0.63 );
setEffScaleKey(  spep_4 -3 + 50, ctbaki4, 1.86, 1.86 );
setEffScaleKey(  spep_4 -3 + 48, ctbaki4, 0.612, 0.612 );
setEffScaleKey(  spep_4 -3 + 50, ctbaki4, 1.768, 1.768 );
setEffScaleKey(  spep_4 -3 + 52, ctbaki4, 2.482, 2.482 );
setEffScaleKey(  spep_4 -3 + 54, ctbaki4, 2.72, 2.72 );
setEffScaleKey(  spep_4 -3 + 56, ctbaki4, 2.82, 2.82 );
setEffScaleKey(  spep_4 -3 + 58, ctbaki4, 2.96, 2.96 );
setEffScaleKey(  spep_4 -3 + 60, ctbaki4, 3.06, 3.06 );
setEffScaleKey(  spep_4 -3 + 62, ctbaki4, 3.20, 3.20 );
setEffScaleKey(  spep_4 -3 + 64, ctbaki4, 3.298, 3.298 );
setEffScaleKey(  spep_4 -3 + 66, ctbaki4, 3.44, 3.44 );
setEffScaleKey(  spep_4 -3 + 68, ctbaki4, 3.536, 3.536 );
setEffScaleKey(  spep_4 -3 + 70, ctbaki4, 3.672, 3.672 );
setEffScaleKey(  spep_4 -3 + 72, ctbaki4, 3.774, 3.774 );
setEffScaleKey(  spep_4 -3 + 74, ctbaki4, 3.910, 3.910 );
setEffScaleKey(  spep_4 -3 + 76, ctbaki4, 4.012, 4.012 );
setEffScaleKey(  spep_4 -3 + 78, ctbaki4, 4.114, 4.114 );
setEffScaleKey(  spep_4 -3 + 80, ctbaki4, 4.25, 4.25 );
setEffRotateKey( spep_4 -3 + 48, ctbaki4, -7.5 );
setEffRotateKey( spep_4 -3 + 50, ctbaki4, -10.3 );
setEffRotateKey( spep_4 -3 + 52, ctbaki4, -12 );
setEffRotateKey( spep_4 -3 + 54, ctbaki4, -12.5 );
setEffRotateKey( spep_4 -3 + 80, ctbaki4, -12.5 );
setEffAlphaKey(  spep_4 -3 + 48, ctbaki4, 255 );
setEffAlphaKey(  spep_4 -3 + 54, ctbaki4, 255 );
setEffAlphaKey(  spep_4 -3 + 56, ctbaki4, 235 );
setEffAlphaKey(  spep_4 -3 + 58, ctbaki4, 216 );
setEffAlphaKey(  spep_4 -3 + 60, ctbaki4, 196 );
setEffAlphaKey(  spep_4 -3 + 62, ctbaki4, 177 );
setEffAlphaKey(  spep_4 -3 + 64, ctbaki4, 157 );
setEffAlphaKey(  spep_4 -3 + 66, ctbaki4, 137 );
setEffAlphaKey(  spep_4 -3 + 68, ctbaki4, 118 );
setEffAlphaKey(  spep_4 -3 + 70, ctbaki4, 98 );
setEffAlphaKey(  spep_4 -3 + 72, ctbaki4, 78 );
setEffAlphaKey(  spep_4 -3 + 74, ctbaki4, 59 );
setEffAlphaKey(  spep_4 -3 + 76, ctbaki4, 39 );
setEffAlphaKey(  spep_4 -3 + 78, ctbaki4, 20 );
setEffAlphaKey(  spep_4 -3 + 80, ctbaki4, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4  +   0, 1, 1 );
setDisp( spep_4  + 176, 1, 0 );
changeAnime( spep_4    +  0, 1, 104 );
changeAnime( spep_4 -3 + 30, 1, 106 );
changeAnime( spep_4 -3 + 34, 1, 104 );
changeAnime( spep_4 -3 + 38, 1, 108 );
changeAnime( spep_4 -3 + 42, 1, 106 );
changeAnime( spep_4 -3 + 46, 1, 108 );
changeAnime( spep_4 -3 + 54, 1, 104 );
changeAnime( spep_4 -3 + 58, 1, 105 );

setMoveKey( spep_4    + 0, 1, 0, 0 , 0 );
setMoveKey( spep_4    + 2, 1, 10, 10 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 2, 4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 10, 10 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 2, 4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 6.5, 11.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 10, 10 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 2, 4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 10, 10 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -1, 5.2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 7.1, 12.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 0.9, 4.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 10, 10 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 2, 4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 33.3, 10 , 0 );
setMoveKey( spep_4 -3 + 33, 1, 23.4, 5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 9.9, 11.1 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 2.4, 4.4 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 33.2, 9.9 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 25.2, 3.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 5.5, 61.6 , 0 );
setMoveKey( spep_4 -3 + 45, 1, -4.2, 56.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 33, 10.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 26.7, 4.4 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 33.9, 12.4 , 0 );
setMoveKey( spep_4 -3 + 53, 1, 24.7, 4.2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 9.9, 9.9 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 1.9, 3.9 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 44.6, -15.8 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 35.6, -22 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 44.6, -14.7 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 41.9, -23 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 53.9, 1 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 56.7, 10.3 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 70.2, 30.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 70.4, 38.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 86.4, 57.9 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 86.4, 65.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 102.4, 84.5 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 102.2, 91.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 118, 110.2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 117.7, 116.7 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 125.2, 129.1 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 132.7, 141.1 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 139.9, 153 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 147.1, 164.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 154.1, 175.7 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 160.9, 186.6 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 167.5, 197.1 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 173.9, 207.2 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 180, 216.8 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 185.7, 225.7 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 191.1, 234 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 195.9, 241.3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 200.1, 247.5 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 203.4, 251.9 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 205.1, 253.8 , 0 );
setMoveKey( spep_4 -3 + 179, 1, 205.1, 253.8 , 0 );

setScaleKey( spep_4    + 0, 1, 2, 2 );
setScaleKey( spep_4 -3 + 8, 1, 2, 2 );
setScaleKey( spep_4 -3 + 10, 1, 2.2, 2.2 );
setScaleKey( spep_4 -3 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 14, 1, 2, 2 );
setScaleKey( spep_4 -3 + 18, 1, 2, 2 );
setScaleKey( spep_4 -3 + 20, 1, 2.26, 2.26 );
setScaleKey( spep_4 -3 + 22, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 26, 1, 2, 2 );
setScaleKey( spep_4 -3 + 30, 1, 2, 2 );
setScaleKey( spep_4 -3 + 33, 1, 2.2, 2.2 );
setScaleKey( spep_4 -3 + 34, 1, 2.15, 2.15 );
setScaleKey( spep_4 -3 + 37, 1, 2.1, 2.1 );
setScaleKey( spep_4 -3 + 38, 1, 2, 2 );
setScaleKey( spep_4 -3 + 41, 1, 2, 2 );
setScaleKey( spep_4 -3 + 42, 1, 2.15, 2.15 );
setScaleKey( spep_4 -3 + 45, 1, 2.2, 2.2 );
setScaleKey( spep_4 -3 + 46, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 48, 1, 2.1, 2.1 );
setScaleKey( spep_4 -3 + 50, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 53, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 54, 1, 2, 2 );
setScaleKey( spep_4 -3 + 57, 1, 2, 2 );
setScaleKey( spep_4 -3 + 58, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 60, 1, 1.68, 1.69 );
setScaleKey( spep_4 -3 + 62, 1, 1.56, 1.58 );
setScaleKey( spep_4 -3 + 64, 1, 1.75, 1.78 );
setScaleKey( spep_4 -3 + 66, 1, 1.62, 1.65 );
setScaleKey( spep_4 -3 + 68, 1, 1.61, 1.64 );
setScaleKey( spep_4 -3 + 70, 1, 1.45, 1.48 );
setScaleKey( spep_4 -3 + 72, 1, 1.44, 1.46 );
setScaleKey( spep_4 -3 + 74, 1, 1.42, 1.43 );
setScaleKey( spep_4 -3 + 76, 1, 1.39, 1.4 );
setScaleKey( spep_4 -3 + 78, 1, 1.35, 1.35 );
setScaleKey( spep_4 -3 + 80, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 82, 1, 1.2, 1.19 );
setScaleKey( spep_4 -3 + 84, 1, 1.11, 1.1 );
setScaleKey( spep_4 -3 + 86, 1, 1.01, 1.01 );
setScaleKey( spep_4 -3 + 88, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 90, 1, 0.82, 0.83 );
setScaleKey( spep_4 -3 + 92, 1, 0.73, 0.74 );
setScaleKey( spep_4 -3 + 94, 1, 0.64, 0.66 );
setScaleKey( spep_4 -3 + 96, 1, 0.56, 0.58 );
setScaleKey( spep_4 -3 + 98, 1, 0.48, 0.5 );
setScaleKey( spep_4 -3 + 100, 1, 0.41, 0.43 );
setScaleKey( spep_4 -3 + 102, 1, 0.35, 0.37 );
setScaleKey( spep_4 -3 + 104, 1, 0.3, 0.31 );
setScaleKey( spep_4 -3 + 106, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 108, 1, 0.25, 0.25 );
setScaleKey( spep_4 -3 + 110, 1, 0.24, 0.24 );
setScaleKey( spep_4 -3 + 112, 1, 0.23, 0.24 );
setScaleKey( spep_4 -3 + 114, 1, 0.23, 0.23 );
setScaleKey( spep_4 -3 + 116, 1, 0.22, 0.23 );
setScaleKey( spep_4 -3 + 118, 1, 0.22, 0.23 );
setScaleKey( spep_4 -3 + 120, 1, 0.22, 0.22 );
setScaleKey( spep_4 -3 + 122, 1, 0.21, 0.22 );
setScaleKey( spep_4 -3 + 128, 1, 0.21, 0.22 );
setScaleKey( spep_4 -3 + 130, 1, 0.21, 0.21 );
setScaleKey( spep_4 -3 + 132, 1, 0.2, 0.21 );
setScaleKey( spep_4 -3 + 148, 1, 0.2, 0.21 );
setScaleKey( spep_4 -3 + 150, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 179, 1, 0.2, 0.2 );

setRotateKey( spep_4    + 0, 1, 0 );
setRotateKey( spep_4 -3 + 29, 1, 0 );
setRotateKey( spep_4 -3 + 30, 1, -55.9 );
setRotateKey( spep_4 -3 + 33, 1, -55.9 );
setRotateKey( spep_4 -3 + 34, 1, 0 );
setRotateKey( spep_4 -3 + 41, 1, 0 );
setRotateKey( spep_4 -3 + 42, 1, -55.9 );
setRotateKey( spep_4 -3 + 45, 1, -55.9 );
setRotateKey( spep_4 -3 + 46, 1, 0 );
setRotateKey( spep_4 -3 + 179, 1, 0 );

-- ** 音 ** --

--連打（空中）10
playSe( spep_4 + 0, 1003 );
setSeVolume( spep_4 + 0, 1003, 68 );
--連打（空中）11
playSe( spep_4 + 0, 1027 );
setSeVolume( spep_4 + 0, 1027, 30 );
--連打（空中）12
playSe( spep_4 + 6, 1003 );
setSeVolume( spep_4 + 6, 1003, 67 );
--連打（空中）13
playSe( spep_4 + 8, 1027 );
setSeVolume( spep_4 + 8, 1027, 43 );
--連打（空中）14
playSe( spep_4 + 12, 1003 );
setSeVolume( spep_4 + 12, 1003, 94 );

--連打敵ヒット1
playSe( spep_4 + 6, 1189 );
--連打敵ヒット2
playSe( spep_4 + 11, 1000 );
setSeVolume( spep_4 + 11, 1000, 79 );
--連打敵ヒット3
playSe( spep_4 + 11, 1006 );
setSeVolume( spep_4 + 11, 1006, 76 );
--連打敵ヒット4
playSe( spep_4 + 17, 1007 );
setSeVolume( spep_4 + 17, 1007, 80 );
--連打敵ヒット5
playSe( spep_4 + 19, 1000 );
setSeVolume( spep_4 + 19, 1000, 69 );
--連打敵ヒット6
playSe( spep_4 + 23, 1012 );
--連打敵ヒット7
playSe( spep_4 + 25, 1000 );
setSeVolume( spep_4 + 25, 1000, 77 );
--連打敵ヒット8
playSe( spep_4 + 29, 1000 );
setSeVolume( spep_4 + 29, 1000, 79 );
--連打敵ヒット9
playSe( spep_4 + 31, 1007 );
--連打敵ヒット10
playSe( spep_4 + 33, 1009 );
setSeVolume( spep_4 + 33, 1009, 60 );
--連打敵ヒット11
playSe( spep_4 + 35, 1000 );
--連打敵ヒット12
playSe( spep_4 + 39, 1010 );
setSeVolume( spep_4 + 39, 1010, 73 );
--連打敵ヒット13
playSe( spep_4 + 41, 1000 );
--連打敵ヒット14
playSe( spep_4 + 49, 1000 );
--連打敵ヒット15
playSe( spep_4 + 51, 1006 );
setSeVolume( spep_4 + 51, 1006, 83 );
--連打敵ヒット16
playSe( spep_4 + 57, 1000 );
--連打敵ヒット17
playSe( spep_4 + 59, 1007 );
--連打敵ヒット18
playSe( spep_4 + 59, 1110 );
setSeVolume( spep_4 + 59, 1110, 53 );

--敵飛んでいく1
SE08 = playSe( spep_4 + 69, 1183 );
stopSe( spep_4 + 176 + 9, SE08, 0 );

--敵飛んでいく2
SE09 = playSe( spep_4 + 71, 1121 );
setSeVolume( spep_4 + 71, 1121, 50 );
stopSe( spep_4 + 176 + 9, SE09, 0 );

--腕連打17
playSe( spep_4 + 71, 1003 );
setSeVolume( spep_4 + 71, 1003, 48 );
--腕連打18
playSe( spep_4 + 77, 1003 );
setSeVolume( spep_4 + 77, 1003, 52 );
--腕連打19
playSe( spep_4 + 79, 1189 );
setSeVolume( spep_4 + 79, 1189, 68 );
--腕連打20
playSe( spep_4 + 85, 1189 );
--腕連打21
playSe( spep_4 + 85, 1003 );
setSeVolume( spep_4 + 85, 1003, 40 );
--腕連打22
playSe( spep_4 + 91, 1189 );
setSeVolume( spep_4 + 91, 1189, 84 );
--腕連打23
playSe( spep_4 + 91, 1003 );
setSeVolume( spep_4 + 91, 1003, 45 );
--腕連打24
playSe( spep_4 + 97, 1189 );
setSeVolume( spep_4 + 97, 1189, 67 );
--腕連打25
playSe( spep_4 + 97, 1003 );
setSeVolume( spep_4 + 97, 1003, 52 );
--腕連打26
playSe( spep_4 + 103, 1003 );
setSeVolume( spep_4 + 103, 1003, 51 );
--腕連打27
playSe( spep_4 + 105, 1189 );
setSeVolume( spep_4 + 105, 1189, 73 );
--腕連打28
playSe( spep_4 + 109, 1003 );
setSeVolume( spep_4 + 109, 1003, 54 );
--腕連打29
playSe( spep_4 + 113, 1189 );
setSeVolume( spep_4 + 113, 1189, 85 );
--腕連打30
playSe( spep_4 + 113, 1003 );
setSeVolume( spep_4 + 113, 1003, 47 );
--腕連打31
playSe( spep_4 + 119, 1003 );
setSeVolume( spep_4 + 119, 1003, 50 );
--腕連打32
playSe( spep_4 + 123, 1189 );
setSeVolume( spep_4 + 123, 1189, 86 );
--腕連打33
playSe( spep_4 + 127, 1003 );
setSeVolume( spep_4 + 127, 1003, 46 );

--気弾発生1
SE10 = playSe( spep_4 + 127, 1239 );
setSeVolume( spep_4 + 127, 1239, 42 );
setSeVolume( spep_4 + 176 + 10, 1239, 0 );
stopSe( spep_4 + 176 + 10, SE10, 0 );
--気弾発生2
SE11 = playSe( spep_4 + 129, 1222 );
setSeVolume( spep_4 + 120, 1222, 48 );
setSeVolume( spep_4 + 176 + 10, 1222, 0 );
stopSe( spep_4 + 176 + 10, SE11, 0 );

--腕連打34
playSe( spep_4 + 129, 1189 );
--腕連打35
playSe( spep_4 + 133, 1003 );
setSeVolume( spep_4 + 133, 1003, 54 );
--腕連打36
playSe( spep_4 + 135, 1189 );
--腕連打37
playSe( spep_4 + 141, 1003 );
setSeVolume( spep_4 + 141, 1003, 50 );
--腕連打38
playSe( spep_4 + 145, 1003 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 176, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 +   0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 168,  6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 176;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_5 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_5 + 0, SE_05 

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;

--------------------------------------
--俯瞰手前に気弾飛んでくる(78F)
--------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --俯瞰手前に気弾飛んでくる(ef_008)
setEffMoveKey(   spep_6 +  0, kidan, 0, 0 , 0 );
setEffMoveKey(   spep_6 + 78, kidan, 0, 0 , 0 );
setEffScaleKey(  spep_6 +  0, kidan, -1.0, 1.0 );
setEffScaleKey(  spep_6 + 78, kidan, -1.0, 1.0 );
setEffRotateKey( spep_6 +  0, kidan, 0 );
setEffRotateKey( spep_6 + 78, kidan, 0 );
setEffAlphaKey(  spep_6 +  0, kidan, 255 );
setEffAlphaKey(  spep_6 + 78, kidan, 255 );

-- ** 音 ** --
--気弾連射2
playSe( spep_6 + 10, 1016 );
setSeVolume( spep_6 + 10, 1016, 81 );
--気弾連射3
playSe( spep_6 + 12, 1015 );
setSeVolume( spep_6 + 12, 1015, 51 );
--気弾連射4
playSe( spep_6 + 16, 1016 );
--気弾連射5
playSe( spep_6 + 22, 1016 );
setSeVolume( spep_6 + 32, 1016, 68 );
--気弾連射6
playSe( spep_6 + 30, 1016 );
--気弾連射7
playSe( spep_6 + 34, 1016 );
setSeVolume( spep_6 + 34, 1016, 66 );
--気弾連射8
playSe( spep_6 + 38, 1016 );
setSeVolume( spep_6 + 38, 1016, 58 );
--気弾連射9
playSe( spep_6 + 42, 1015 );
setSeVolume( spep_6 + 42, 1015, 41 );
--気弾連射10
playSe( spep_6 + 44, 1016 );
setSeVolume( spep_6 + 44, 1016, 100 );
--気弾連射11
playSe( spep_6 + 50, 1016 );
setSeVolume( spep_6 + 50, 1016, 55 );
--気弾連射12
playSe( spep_6 + 54, 1016 );
setSeVolume( spep_6 + 54, 1016, 100 );
--気弾連射13
playSe( spep_6 + 54, 1015 );
setSeVolume( spep_6 + 54, 1015, 44 );
--気弾連射14
playSe( spep_6 + 58, 1016 );
setSeVolume( spep_6 + 58, 1016, 77 );
--気弾連射15
playSe( spep_6 + 63, 1016 );
setSeVolume( spep_6 + 63, 1016, 65 );
--気弾連射16
playSe( spep_6 + 68, 1016 );
setSeVolume( spep_6 + 68, 1016, 73 );
--気弾連射17
playSe( spep_6 + 78, 1016 );
setSeVolume( spep_6 + 78, 1016, 54 );

--爆発1
playSe( spep_6 + 78, 1023 );
--爆発2
playSe( spep_6 + 80, 1017 );
setSeVolume( spep_6 + 80, 1017, 83 );
--爆発3
playSe( spep_6 + 84, 1008 );
--爆発4
playSe( spep_6 + 90, 20 );
setSeVolume( spep_6 + 90, 20, 68 );
--爆発5
playSe( spep_6 + 102, 1024 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 78, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 +  0,  0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_6 + 76,  2, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 78;

------------------------------------------
--敵爆発、ロ－ジィ決めポ－ズ、敵より手前(196F)
------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09r, 0x100, -1, 0, 0, 0 );  --敵爆発、ロ－ジィ決めポ－ズ(ef_009)
setEffMoveKey(   spep_7 +   0, finish_f, 0, 0 , 0 );
setEffMoveKey(   spep_7 + 196, finish_f, 0, 0 , 0 );
setEffScaleKey(  spep_7 +   0, finish_f, 1.0, 1.0 );
setEffScaleKey(  spep_7 + 196, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 +   0, finish_f, 0 );
setEffRotateKey( spep_7 + 196, finish_f, 0 );
setEffAlphaKey(  spep_7 +   0, finish_f, 255 );
setEffAlphaKey(  spep_7 + 196, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --背景(ef_010)
setEffMoveKey(   spep_7 +   0, finish_b, 0, 0 , 0 );
setEffMoveKey(   spep_7 + 196, finish_b, 0, 0 , 0 );
setEffScaleKey(  spep_7 +   0, finish_b, 1.0, 1.0 );
setEffScaleKey(  spep_7 + 196, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 +   0, finish_b, 0 );
setEffRotateKey( spep_7 + 196, finish_b, 0 );
setEffAlphaKey(  spep_7 +   0, finish_b, 255 );
setEffAlphaKey(  spep_7 + 196, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 +   0, 1, 1 );
setDisp( spep_7 + 196, 1, 0 );
changeAnime( spep_7 + 0, 1, 105 );

setMoveKey( spep_7    + 0, 1, 40, 90.9 , 0 );
setMoveKey( spep_7    + 2, 1, 43.2, 96.9 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 57.2, 114.8 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 68, 126.3 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 71.3, 132.6 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 78.3, 141.5 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 85.4, 150.4 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 82.4, 132.7 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 114.5, 184.3 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 86.4, 145.7 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 125.2, 206.1 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 112.5, 179.6 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 135.6, 210.2 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 129.7, 196.2 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 143.5, 221.7 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 142.4, 222.4 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 160, 245.8 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 152.6, 245.1 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 173, 262.5 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 174.9, 262.9 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 185.1, 282 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 195, 287.2 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 198.3, 293.4 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 209.1, 305 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 212.3, 311.2 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 219.4, 320.1 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 226.4, 329.1 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 233.5, 337.9 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 240.5, 346.9 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 247.5, 355.8 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 254.6, 364.7 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 261.6, 373.6 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 268.7, 382.5 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 70, 1, 275.8, 391.4 , 0 );
setMoveKey( spep_7 -3 + 72, 1, 279.9, 394.9 , 0 );
setMoveKey( spep_7 -3 + 74, 1, 275.9, 391.9 , 0 );
setMoveKey( spep_7 -3 + 76, 1, 279.8, 394.7 , 0 );
setMoveKey( spep_7 -3 + 78, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 80, 1, 279.8, 394.6 , 0 );
setMoveKey( spep_7 -3 + 82, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 84, 1, 279.7, 394.5 , 0 );
setMoveKey( spep_7 -3 + 86, 1, 275.9, 391.7 , 0 );
setMoveKey( spep_7 -3 + 88, 1, 279.6, 394.3 , 0 );
setMoveKey( spep_7 -3 + 90, 1, 275.8, 391.7 , 0 );
setMoveKey( spep_7 -3 + 92, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 100, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 102, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 108, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 110, 1, 275.8, 391.4 , 0 );
setMoveKey( spep_7 -3 + 112, 1, 279.9, 394.9 , 0 );
setMoveKey( spep_7 -3 + 114, 1, 275.9, 391.9 , 0 );
setMoveKey( spep_7 -3 + 116, 1, 279.8, 394.7 , 0 );
setMoveKey( spep_7 -3 + 118, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 120, 1, 279.8, 394.6 , 0 );
setMoveKey( spep_7 -3 + 122, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 124, 1, 279.7, 394.5 , 0 );
setMoveKey( spep_7 -3 + 126, 1, 275.9, 391.7 , 0 );
setMoveKey( spep_7 -3 + 128, 1, 279.6, 394.3 , 0 );
setMoveKey( spep_7 -3 + 130, 1, 275.8, 391.7 , 0 );
setMoveKey( spep_7 -3 + 132, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 140, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 142, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 148, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 150, 1, 275.8, 391.4 , 0 );
setMoveKey( spep_7 -3 + 152, 1, 279.9, 394.9 , 0 );
setMoveKey( spep_7 -3 + 154, 1, 275.9, 391.9 , 0 );
setMoveKey( spep_7 -3 + 156, 1, 279.8, 394.7 , 0 );
setMoveKey( spep_7 -3 + 158, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 160, 1, 279.8, 394.6 , 0 );
setMoveKey( spep_7 -3 + 162, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 164, 1, 279.7, 394.5 , 0 );
setMoveKey( spep_7 -3 + 166, 1, 275.9, 391.7 , 0 );
setMoveKey( spep_7 -3 + 168, 1, 279.6, 394.3 , 0 );
setMoveKey( spep_7 -3 + 170, 1, 275.8, 391.7 , 0 );
setMoveKey( spep_7 -3 + 172, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 180, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 182, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 188, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 190, 1, 275.8, 391.4 , 0 );
setMoveKey( spep_7 -3 + 192, 1, 279.9, 394.9 , 0 );
setMoveKey( spep_7 -3 + 194, 1, 275.9, 391.9 , 0 );
setMoveKey( spep_7 -3 + 196, 1, 279.8, 394.7 , 0 );
setMoveKey( spep_7 -3 + 198, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 199, 1, 279.8, 394.6 , 0 );

--[[setMoveKey( spep_7 -3 + 200, 1, 279.8, 394.6 , 0 );
setMoveKey( spep_7 -3 + 202, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 204, 1, 279.7, 394.5 , 0 );
setMoveKey( spep_7 -3 + 206, 1, 275.9, 391.7 , 0 );
setMoveKey( spep_7 -3 + 208, 1, 279.6, 394.3 , 0 );
setMoveKey( spep_7 -3 + 210, 1, 275.8, 391.7 , 0 );
setMoveKey( spep_7 -3 + 212, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 220, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 222, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 228, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 230, 1, 275.8, 391.4 , 0 );
setMoveKey( spep_7 -3 + 232, 1, 279.9, 394.9 , 0 );
setMoveKey( spep_7 -3 + 234, 1, 275.9, 391.9 , 0 );
setMoveKey( spep_7 -3 + 236, 1, 279.8, 394.7 , 0 );
setMoveKey( spep_7 -3 + 238, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 240, 1, 279.8, 394.6 , 0 );
setMoveKey( spep_7 -3 + 242, 1, 275.9, 391.8 , 0 );
setMoveKey( spep_7 -3 + 244, 1, 279.7, 394.5 , 0 );
setMoveKey( spep_7 -3 + 246, 1, 275.9, 391.7 , 0 );
setMoveKey( spep_7 -3 + 248, 1, 279.6, 394.3 , 0 );
setMoveKey( spep_7 -3 + 250, 1, 275.8, 391.7 , 0 );
setMoveKey( spep_7 -3 + 252, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 260, 1, 275.8, 391.6 , 0 );
setMoveKey( spep_7 -3 + 262, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 268, 1, 275.8, 391.5 , 0 );
setMoveKey( spep_7 -3 + 270, 1, 275.8, 391.4 , 0 );
setMoveKey( spep_7 -3 + 272, 1, 279.9, 394.9 , 0 );
setMoveKey( spep_7 -3 + 274, 1, 275.9, 391.9 , 0 );
setMoveKey( spep_7 -3 + 276, 1, 279.8, 394.7 , 0 );
setMoveKey( spep_7 -3 + 279, 1, 275.9, 391.8 , 0 );]]

setScaleKey( spep_7    + 0, 1, 0.48, 0.48 );
setScaleKey( spep_7    + 2, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 6, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 8, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 10, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 12, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 14, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 16, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 18, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 20, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 22, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 24, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 28, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 30, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 32, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 34, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 36, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 38, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 40, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 42, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 44, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 46, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 48, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 50, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 52, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 54, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 56, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 58, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 60, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 62, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 64, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 66, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 68, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 70, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 72, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 74, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 76, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 78, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 80, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 82, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 84, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 86, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 88, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 90, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 92, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 94, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 96, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 98, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 100, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 102, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 104, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 106, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 108, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 110, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 112, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 114, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 116, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 118, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 120, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 122, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 124, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 126, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 128, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 130, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 132, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 134, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 136, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 138, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 140, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 142, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 144, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 146, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 148, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 150, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 152, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 154, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 156, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 158, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 160, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 162, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 164, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 166, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 168, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 170, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 172, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 174, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 176, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 178, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 180, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 182, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 184, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 186, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 188, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 190, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 192, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 194, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 196, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 198, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 199, 1, 0.48, 0.48 );

--[[setScaleKey( spep_7 -3 + 200, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 202, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 204, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 206, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 208, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 210, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 212, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 214, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 216, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 218, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 220, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 222, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 224, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 226, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 228, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 230, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 232, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 234, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 236, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 238, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 240, 1, 0.48, 0.48 );
setScaleKey( spep_7 -3 + 242, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 244, 1, 0.47, 0.47 );
setScaleKey( spep_7 -3 + 246, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 248, 1, 0.46, 0.46 );
setScaleKey( spep_7 -3 + 250, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 252, 1, 0.45, 0.45 );
setScaleKey( spep_7 -3 + 254, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 256, 1, 0.44, 0.44 );
setScaleKey( spep_7 -3 + 258, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 260, 1, 0.43, 0.43 );
setScaleKey( spep_7 -3 + 262, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 264, 1, 0.42, 0.42 );
setScaleKey( spep_7 -3 + 266, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 268, 1, 0.41, 0.41 );
setScaleKey( spep_7 -3 + 270, 1, 0.4, 0.4 );
setScaleKey( spep_7 -3 + 272, 1, 0.5, 0.5 );
setScaleKey( spep_7 -3 + 274, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 276, 1, 0.49, 0.49 );
setScaleKey( spep_7 -3 + 279, 1, 0.48, 0.48 );]]

setRotateKey( spep_7    + 0, 1, 1.1 );
setRotateKey( spep_7    + 2, 1, 1.3 );
setRotateKey( spep_7 -3 + 6, 1, 1.8 );
setRotateKey( spep_7 -3 + 8, 1, 2.1 );
setRotateKey( spep_7 -3 + 10, 1, 2.4 );
setRotateKey( spep_7 -3 + 12, 1, 2.6 );
setRotateKey( spep_7 -3 + 14, 1, 2.9 );
setRotateKey( spep_7 -3 + 16, 1, 3.2 );
setRotateKey( spep_7 -3 + 18, 1, 3.4 );
setRotateKey( spep_7 -3 + 20, 1, 3.7 );
setRotateKey( spep_7 -3 + 22, 1, 3.9 );
setRotateKey( spep_7 -3 + 24, 1, 4.2 );
setRotateKey( spep_7 -3 + 26, 1, 4.5 );
setRotateKey( spep_7 -3 + 28, 1, 4.7 );
setRotateKey( spep_7 -3 + 30, 1, 5 );
setRotateKey( spep_7 -3 + 32, 1, 0 );
setRotateKey( spep_7 -3 + 34, 1, 0.3 );
setRotateKey( spep_7 -3 + 36, 1, 0.5 );
setRotateKey( spep_7 -3 + 38, 1, 0.8 );
setRotateKey( spep_7 -3 + 40, 1, 1.1 );
setRotateKey( spep_7 -3 + 42, 1, 1.3 );
setRotateKey( spep_7 -3 + 44, 1, 1.6 );
setRotateKey( spep_7 -3 + 46, 1, 1.8 );
setRotateKey( spep_7 -3 + 48, 1, 2.1 );
setRotateKey( spep_7 -3 + 50, 1, 2.4 );
setRotateKey( spep_7 -3 + 52, 1, 2.6 );
setRotateKey( spep_7 -3 + 54, 1, 2.9 );
setRotateKey( spep_7 -3 + 56, 1, 3.2 );
setRotateKey( spep_7 -3 + 58, 1, 3.4 );
setRotateKey( spep_7 -3 + 60, 1, 3.7 );
setRotateKey( spep_7 -3 + 62, 1, 3.9 );
setRotateKey( spep_7 -3 + 64, 1, 4.2 );
setRotateKey( spep_7 -3 + 66, 1, 4.5 );
setRotateKey( spep_7 -3 + 68, 1, 4.7 );
setRotateKey( spep_7 -3 + 70, 1, 5 );
setRotateKey( spep_7 -3 + 72, 1, 0 );
setRotateKey( spep_7 -3 + 74, 1, 0.3 );
setRotateKey( spep_7 -3 + 76, 1, 0.5 );
setRotateKey( spep_7 -3 + 78, 1, 0.8 );
setRotateKey( spep_7 -3 + 80, 1, 1.1 );
setRotateKey( spep_7 -3 + 82, 1, 1.3 );
setRotateKey( spep_7 -3 + 84, 1, 1.6 );
setRotateKey( spep_7 -3 + 86, 1, 1.8 );
setRotateKey( spep_7 -3 + 88, 1, 2.1 );
setRotateKey( spep_7 -3 + 90, 1, 2.4 );
setRotateKey( spep_7 -3 + 92, 1, 2.6 );
setRotateKey( spep_7 -3 + 94, 1, 2.9 );
setRotateKey( spep_7 -3 + 96, 1, 3.2 );
setRotateKey( spep_7 -3 + 98, 1, 3.4 );
setRotateKey( spep_7 -3 + 100, 1, 3.7 );
setRotateKey( spep_7 -3 + 102, 1, 3.9 );
setRotateKey( spep_7 -3 + 104, 1, 4.2 );
setRotateKey( spep_7 -3 + 106, 1, 4.5 );
setRotateKey( spep_7 -3 + 108, 1, 4.7 );
setRotateKey( spep_7 -3 + 110, 1, 5 );
setRotateKey( spep_7 -3 + 112, 1, 0 );
setRotateKey( spep_7 -3 + 114, 1, 0.3 );
setRotateKey( spep_7 -3 + 116, 1, 0.5 );
setRotateKey( spep_7 -3 + 118, 1, 0.8 );
setRotateKey( spep_7 -3 + 120, 1, 1.1 );
setRotateKey( spep_7 -3 + 122, 1, 1.3 );
setRotateKey( spep_7 -3 + 124, 1, 1.6 );
setRotateKey( spep_7 -3 + 126, 1, 1.8 );
setRotateKey( spep_7 -3 + 128, 1, 2.1 );
setRotateKey( spep_7 -3 + 130, 1, 2.4 );
setRotateKey( spep_7 -3 + 132, 1, 2.6 );
setRotateKey( spep_7 -3 + 134, 1, 2.9 );
setRotateKey( spep_7 -3 + 136, 1, 3.2 );
setRotateKey( spep_7 -3 + 138, 1, 3.4 );
setRotateKey( spep_7 -3 + 140, 1, 3.7 );
setRotateKey( spep_7 -3 + 142, 1, 3.9 );
setRotateKey( spep_7 -3 + 144, 1, 4.2 );
setRotateKey( spep_7 -3 + 146, 1, 4.5 );
setRotateKey( spep_7 -3 + 148, 1, 4.7 );
setRotateKey( spep_7 -3 + 150, 1, 5 );
setRotateKey( spep_7 -3 + 152, 1, 0 );
setRotateKey( spep_7 -3 + 154, 1, 0.3 );
setRotateKey( spep_7 -3 + 156, 1, 0.5 );
setRotateKey( spep_7 -3 + 158, 1, 0.8 );
setRotateKey( spep_7 -3 + 160, 1, 1.1 );
setRotateKey( spep_7 -3 + 162, 1, 1.3 );
setRotateKey( spep_7 -3 + 164, 1, 1.6 );
setRotateKey( spep_7 -3 + 166, 1, 1.8 );
setRotateKey( spep_7 -3 + 168, 1, 2.1 );
setRotateKey( spep_7 -3 + 170, 1, 2.4 );
setRotateKey( spep_7 -3 + 172, 1, 2.6 );
setRotateKey( spep_7 -3 + 174, 1, 2.9 );
setRotateKey( spep_7 -3 + 176, 1, 3.2 );
setRotateKey( spep_7 -3 + 178, 1, 3.4 );
setRotateKey( spep_7 -3 + 180, 1, 3.7 );
setRotateKey( spep_7 -3 + 182, 1, 3.9 );
setRotateKey( spep_7 -3 + 184, 1, 4.2 );
setRotateKey( spep_7 -3 + 186, 1, 4.5 );
setRotateKey( spep_7 -3 + 188, 1, 4.7 );
setRotateKey( spep_7 -3 + 190, 1, 5 );
setRotateKey( spep_7 -3 + 192, 1, 0 );
setRotateKey( spep_7 -3 + 194, 1, 0.3 );
setRotateKey( spep_7 -3 + 196, 1, 0.5 );
setRotateKey( spep_7 -3 + 198, 1, 0.8 );
setRotateKey( spep_7 -3 + 199, 1, 1.1 );

--[[setRotateKey( spep_7 -3 + 200, 1, 1.1 );
setRotateKey( spep_7 -3 + 202, 1, 1.3 );
setRotateKey( spep_7 -3 + 204, 1, 1.6 );
setRotateKey( spep_7 -3 + 206, 1, 1.8 );
setRotateKey( spep_7 -3 + 208, 1, 2.1 );
setRotateKey( spep_7 -3 + 210, 1, 2.4 );
setRotateKey( spep_7 -3 + 212, 1, 2.6 );
setRotateKey( spep_7 -3 + 214, 1, 2.9 );
setRotateKey( spep_7 -3 + 216, 1, 3.2 );
setRotateKey( spep_7 -3 + 218, 1, 3.4 );
setRotateKey( spep_7 -3 + 220, 1, 3.7 );
setRotateKey( spep_7 -3 + 222, 1, 3.9 );
setRotateKey( spep_7 -3 + 224, 1, 4.2 );
setRotateKey( spep_7 -3 + 226, 1, 4.5 );
setRotateKey( spep_7 -3 + 228, 1, 4.7 );
setRotateKey( spep_7 -3 + 230, 1, 5 );
setRotateKey( spep_7 -3 + 232, 1, 0 );
setRotateKey( spep_7 -3 + 234, 1, 0.3 );
setRotateKey( spep_7 -3 + 236, 1, 0.5 );
setRotateKey( spep_7 -3 + 238, 1, 0.8 );
setRotateKey( spep_7 -3 + 240, 1, 1.1 );
setRotateKey( spep_7 -3 + 242, 1, 1.3 );
setRotateKey( spep_7 -3 + 244, 1, 1.6 );
setRotateKey( spep_7 -3 + 246, 1, 1.8 );
setRotateKey( spep_7 -3 + 248, 1, 2.1 );
setRotateKey( spep_7 -3 + 250, 1, 2.4 );
setRotateKey( spep_7 -3 + 252, 1, 2.6 );
setRotateKey( spep_7 -3 + 254, 1, 2.9 );
setRotateKey( spep_7 -3 + 256, 1, 3.2 );
setRotateKey( spep_7 -3 + 258, 1, 3.4 );
setRotateKey( spep_7 -3 + 260, 1, 3.7 );
setRotateKey( spep_7 -3 + 262, 1, 3.9 );
setRotateKey( spep_7 -3 + 264, 1, 4.2 );
setRotateKey( spep_7 -3 + 266, 1, 4.5 );
setRotateKey( spep_7 -3 + 268, 1, 4.7 );
setRotateKey( spep_7 -3 + 270, 1, 5 );
setRotateKey( spep_7 -3 + 272, 1, 0 );
setRotateKey( spep_7 -3 + 274, 1, 0.3 );
setRotateKey( spep_7 -3 + 276, 1, 0.5 );
setRotateKey( spep_7 -3 + 279, 1, 0.8 );]]

-- ** 音 ** --
--[[]]
--気弾連射1
playSe( spep_7 + 26, 1016 );
setSeVolume( spep_7 + 26, 1016, 30 );

--ラスト決め1
playSe( spep_7 + 80, 1003 );
setSeVolume( spep_7 + 80, 1003, 60 );
--ラスト決め2
playSe( spep_7 + 84, 34 );
setSeVolume( spep_7 + 84, 34, 251 );
--ラスト決め3
playSe( spep_7 + 84, 1257 );
setSeVolume( spep_7 + 84, 1257, 398 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 196, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 +   0,  0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--終わり
dealDamage( spep_7 +73 );
endPhase( spep_7 + 196 );


end
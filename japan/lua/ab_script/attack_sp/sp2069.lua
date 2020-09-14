--1020760:ミスター・サタン/魔人ブウ(善)_チャンピオンの華麗な舞い
--sp_effect_b1_00125

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
SP_01 = 155995;	 --導入、たじろぐサタン→決意	ef_001
SP_02 = 155996;	 --ラッシュ、キャラ	ef_002
SP_03 = 155997;	 --ラッシュ、背景	ef_003
SP_04 = 155998;	 --ラスト、敵より前	ef_004
SP_05 = 155999;	 --ラスト、敵より後ろ	ef_005


--敵側
SP_02r = 156000;	--ラッシュ、キャラ：敵用	ef_002_r
SP_05r = 156001;	--ラスト、敵より後ろ：敵用	ef_005_r

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
-- 導入、たじろぐサタン→決意(320F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --導入、敵より前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 320, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 320, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 320, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 320, first_f, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 247,  906, 72, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 247, shuchusen1, 72, 25 );
setEffMoveKey(   spep_0 + 247, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 319, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 247, shuchusen1, 1.6, 1.8 );
setEffScaleKey(  spep_0 + 319, shuchusen1, 1.6, 1.8 );
setEffRotateKey( spep_0 + 247, shuchusen1, 0 );
setEffRotateKey( spep_0 + 319, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 247, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 319, shuchusen1, 255 );

spep_x = spep_0 + 234;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 6, 8 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 40 );
setTimeStretch( SE001, 1.43, 30, 8 );

--ブウ横たわる
SE002 = playSe( spep_0 + 116, 1175 );
setSeVolumeByWorkId( spep_0 + 116, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 119, SE002, 4 );
setSeVolumeByWorkId( spep_0 + 122, SE002, 8 );
setSeVolumeByWorkId( spep_0 + 125, SE002, 12 );
setSeVolumeByWorkId( spep_0 + 128, SE002, 16);
setSeVolumeByWorkId( spep_0 + 131, SE002, 20 );
setSeVolumeByWorkId( spep_0 + 134, SE002, 24 );
setSeVolumeByWorkId( spep_0 + 138, SE002, 28 );
stopSe( spep_0 + 230, SE002, 34 );
setStartTimeMs( SE002,  1367 );

--セリフカットイン
SE003 = playSe( spep_0 + 244, 1018 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 320, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 308, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 320;



--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
--ズサー1
SE005 = playSe( spep_1 + 88, 1003 );
--ズサー2
SE006 = playSe( spep_1 + 90, 1197 );
setSeVolumeByWorkId( spep_1 + 90, SE006, 30 );
setTimeStretch( SE006, 1.36, 20, 1 );

--ズサー3
SE007 = playSe( spep_1 + 92, 1192 );
setSeVolumeByWorkId( spep_1 + 92, SE007, 300 );
stopSe( spep_1 +94 + 18, SE007, 2 );		
--ズサー4
SE008 = playSe( spep_1 + 92, 1106 );

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
rush_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ラッシュ、敵より後ろ(ef_004)
setEffMoveKey( spep_2 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 226, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 226, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_b, 0 );
setEffRotateKey( spep_2 + 226, rush_b, 0 );
setEffAlphaKey( spep_2 + 0, rush_b, 255 );
setEffAlphaKey( spep_2 + 226, rush_b, 255 );

rush_f = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --ラッシュ、敵より前 (ef_003)
setEffMoveKey( spep_2 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 226, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 226, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_f, 0 );
setEffRotateKey( spep_2 + 226, rush_f, 0 );
setEffAlphaKey( spep_2 + 0, rush_f, 255 );
setEffAlphaKey( spep_2 + 226, rush_f, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 21,  906, 29, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 21, shuchusen2, 29, 25 );
setEffMoveKey(   spep_2 + 21, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 50, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 21, shuchusen2, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 50, shuchusen2, 1.2, 1.2 );
setEffRotateKey( spep_2 + 21, shuchusen2, 0 );
setEffRotateKey( spep_2 + 50, shuchusen2, 0 );
setEffAlphaKey(  spep_2 + 21, shuchusen2, 255 );
setEffAlphaKey(  spep_2 + 50, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_2 + 65,  906, 10, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 65, shuchusen3, 10, 25 );
setEffMoveKey(   spep_2 + 65, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 75, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 65, shuchusen3, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 75, shuchusen3, 1.2, 1.2 );
setEffRotateKey( spep_2 + 65, shuchusen3, 0 );
setEffRotateKey( spep_2 + 75, shuchusen3, 0 );
setEffAlphaKey(  spep_2 + 65, shuchusen3, 255 );
setEffAlphaKey(  spep_2 + 75, shuchusen3, 255 );

shuchusen4 = entryEffectLife( spep_2 + 85,  906, 6, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 85, shuchusen4, 6, 25 );
setEffMoveKey(   spep_2 + 85, shuchusen4, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 91, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 85, shuchusen4, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 91, shuchusen4, 1.2, 1.2 );
setEffRotateKey( spep_2 + 85, shuchusen4, 0 );
setEffRotateKey( spep_2 + 91, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 85, shuchusen4, 255 );
setEffAlphaKey(  spep_2 + 91, shuchusen4, 255 );

shuchusen5 = entryEffectLife( spep_2 + 99,  906, 123, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 99, shuchusen5, 6, 25 );
setEffMoveKey(   spep_2 + 99, shuchusen5, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 222, shuchusen5, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 99, shuchusen5, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 222, shuchusen5, 1.2, 1.2 );
setEffRotateKey( spep_2 + 99, shuchusen5, 0 );
setEffRotateKey( spep_2 + 222, shuchusen5, 0 );
setEffAlphaKey(  spep_2 + 99, shuchusen5, 255 );
setEffAlphaKey(  spep_2 + 222, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctdogaga = entryEffectLife( spep_2 -3 + 24,  10017, 29, 0x100, -1, 0, 58.7, 221.2 );  --ドガガガッ
setEffMoveKey( spep_2 -3 + 24, ctdogaga, 58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctdogaga, 61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctdogaga, 58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctdogaga, 61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctdogaga, 58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctdogaga, 61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctdogaga, 58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctdogaga, 61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctdogaga, 58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctdogaga, 61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctdogaga, 58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctdogaga, 61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctdogaga, 58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctdogaga, 61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctdogaga, 58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 53, ctdogaga, 61.3, 217 , 0 );

setEffScaleKey( spep_2 -3 + 24, ctdogaga, 1.5, 1.5 );
setEffScaleKey( spep_2 -3 + 53, ctdogaga, 1.5, 1.5 );

setEffRotateKey( spep_2 -3 + 24, ctdogaga, 19.3 );
setEffRotateKey( spep_2 -3 + 53, ctdogaga, 19.3 );

setEffAlphaKey( spep_2 -3 + 24, ctdogaga, 255 );
setEffAlphaKey( spep_2 -3 + 53, ctdogaga, 255 );

ctgaha = entryEffectLife( spep_2 -3 + 68,  10005, 10, 0x100, -1, 0, -108.9, 191.8 );  --ガッ
setEffMoveKey( spep_2 -3 + 68, ctgaha, -108.9, 191.8 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctgaha, -93, 203.6 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctgaha, -88.8, 202.6 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctgaha, -72, 215.4 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctgaha, -68.7, 213.3 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctgaha, -58.6, 218.7 , 0 );

setEffScaleKey( spep_2 -3 + 68, ctgaha, 1, 1 );
setEffScaleKey( spep_2 -3 + 70, ctgaha, 1.08, 1.08 );
setEffScaleKey( spep_2 -3 + 72, ctgaha, 1.17, 1.17 );
setEffScaleKey( spep_2 -3 + 74, ctgaha, 1.25, 1.25 );
setEffScaleKey( spep_2 -3 + 76, ctgaha, 1.34, 1.34 );
setEffScaleKey( spep_2 -3 + 78, ctgaha, 1.42, 1.42 );

setEffRotateKey( spep_2 -3 + 68, ctgaha, -21 );
setEffRotateKey( spep_2 -3 + 70, ctgaha, -21.1 );
setEffRotateKey( spep_2 -3 + 74, ctgaha, -21.1 );
setEffRotateKey( spep_2 -3 + 76, ctgaha, -21.2 );
setEffRotateKey( spep_2 -3 + 78, ctgaha, -21.2 );

setEffAlphaKey( spep_2 -3 + 68, ctgaha, 255 );
setEffAlphaKey( spep_2 -3 + 78, ctgaha, 255 );

ctbaki = entryEffectLife( spep_2 -3 + 88,  10020, 13, 0x100, -1, 0, 35.1, 214 );  --バキッ
setEffMoveKey( spep_2 -3 + 88, ctbaki, 35.1, 214 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctbaki, 50.8, 220.5 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctbaki, 49, 209.5 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctbaki, 65.7, 217 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctbaki, 62.8, 204.9 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctbaki, 80.7, 213.5 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctbaki, 76.7, 200.4 , 0 );
setEffMoveKey( spep_2 -3 + 101, ctbaki, 76.7, 200.4 , 0 );

setEffScaleKey( spep_2 -3 + 88, ctbaki, 0.9, 0.9 );
setEffScaleKey( spep_2 -3 + 90, ctbaki, 0.96, 0.96 );
setEffScaleKey( spep_2 -3 + 92, ctbaki, 1.02, 1.02 );
setEffScaleKey( spep_2 -3 + 94, ctbaki, 1.08, 1.08 );
setEffScaleKey( spep_2 -3 + 96, ctbaki, 1.14, 1.14 );
setEffScaleKey( spep_2 -3 + 98, ctbaki, 1.2, 1.2 );
setEffScaleKey( spep_2 -3 + 100, ctbaki, 1.26, 1.26 );
setEffScaleKey( spep_2 -3 + 101, ctbaki, 1.26, 1.26 );

setEffRotateKey( spep_2 -3 + 88, ctbaki, 0 );
setEffRotateKey( spep_2 -3 + 101, ctbaki, 0 );

setEffAlphaKey( spep_2 -3 + 88, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 101, ctbaki, 255 );


ctzudodo = entryEffectLife( spep_2 -3 + 102,  10014, 102, 0x100, -1, 0, 27.9, 244.8 );  --ズドドド
setEffMoveKey( spep_2 -3 + 102, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 118, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 122, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 126, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 130, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 134, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 138, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 142, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 146, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 150, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 154, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 158, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 162, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 166, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 170, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 174, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 178, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 182, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 186, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 190, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 194, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 198, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 202, ctzudodo, 27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 116, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 120, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 124, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 128, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 132, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 136, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 140, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 144, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 148, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 152, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 156, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 160, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 164, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 168, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 172, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 176, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 180, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 184, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 188, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 192, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 196, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 200, ctzudodo, 36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 204, ctzudodo, 36.5, 243.3 , 0 );

setEffScaleKey( spep_2 -3 + 102, ctzudodo, 1.65, 1.65 );
setEffScaleKey( spep_2 -3 + 204, ctzudodo, 1.65, 1.65 );

setEffRotateKey( spep_2 -3 + 102, ctzudodo, 40 );
setEffRotateKey( spep_2 -3 + 204, ctzudodo, 40 );

setEffAlphaKey( spep_2 -3 + 102, ctzudodo, 255 );
setEffAlphaKey( spep_2 -3 + 204, ctzudodo, 255 );


-- ** 敵キャラクター ** -- x-50 y+5
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 42.4, -92.3 , 0 );
setMoveKey( spep_2 + 1, 1, 46.3, -92.1 , 0 );
setMoveKey( spep_2 + 2, 1, 50.4, -91.9 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 55, -91.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 60, -91.4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 65.4, -91.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 71.4, -90.9 , 0 );

setScaleKey( spep_2 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 1, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 2, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 6, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 8, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 10, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 12, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 10 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 71.4, -90.9 , 0 );

    setMoveKey( SP_dodge + 2, 1, 77.8, -90.6 , 0 );
    setMoveKey( SP_dodge + 4, 1, 84.6, -90.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 92, -89.8 , 0 );
    setMoveKey( SP_dodge + 8, 1, 100, -89.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 108.4, -89 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.6, 1.6 );

    setScaleKey( SP_dodge + 2, 1, 1.63, 1.63 );
    setScaleKey( SP_dodge + 4, 1, 1.65, 1.65 );
    setScaleKey( SP_dodge + 6, 1, 1.67, 1.68 );
    setScaleKey( SP_dodge + 8, 1, 1.7, 1.7 );
    setScaleKey( SP_dodge + 10, 1, 1.73, 1.73 );

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

-- ** 敵キャラクター ** -- x-50 y+5
setDisp( spep_2 -3 + 228, 1, 0 );
changeAnime( spep_2 -3 + 24, 1, 118 );

setMoveKey( spep_2 -3 + 14, 1, 77.8, -90.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 84.6, -90.2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 92, -89.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 100, -89.4 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 108.4, -89 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 137.9, -122.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 136.7, -115.2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 136.7, -115.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 136.7, -115.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 136.7, -115.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 136.7, -115.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 136.7, -115.2 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 148, -112.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 128, -132.7 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 148.1, -112.7 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 128.3, -132.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 138.4, -122.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 138.6, -122.9 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 138.7, -122.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 138.9, -123 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 139, -123 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 149, -125.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 122.5, -131.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 139.5, -123.1 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 138.4, -115.7 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 139.8, -123.2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 138.7, -115.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 140.1, -123.3 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 139, -115.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 140.4, -123.4 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 139.3, -115.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 140.7, -123.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 139.6, -116 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 141, -123.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 139.9, -116.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 141.3, -123.7 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 140.2, -116.2 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 141.6, -123.8 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 140.5, -116.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 141.9, -123.9 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 140.8, -116.4 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 142.2, -123.9 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 141.1, -116.5 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 142.5, -124 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 141.4, -116.6 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 142.8, -124.1 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 141.7, -116.7 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 143.1, -124.2 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 142, -116.8 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 143.4, -124.3 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 142.3, -116.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 143.7, -124.4 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 142.6, -116.9 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 144, -124.5 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 142.9, -117 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 144.3, -124.6 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 143.2, -117.1 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 144.6, -124.7 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 143.5, -117.2 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 144.9, -124.7 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 143.8, -117.3 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 145.2, -124.8 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 144.1, -117.4 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 145.5, -124.9 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 144.4, -117.5 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 145.8, -125 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 144.7, -117.6 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 146.1, -125.1 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 145, -117.7 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 146.4, -125.2 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 145.3, -117.7 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 145.5, -117.8 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 145.6, -117.8 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 152, -117.1 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 171.2, -114.9 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 202.8, -111.2 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 246.4, -105.7 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 301.3, -98.3 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 366.8, -88.8 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 441.7, -77 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 525, -62.7 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 615.4, -45.7 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 711.4, -26 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 811.7, -3.6 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 914.5, 21.4 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 1018.4, 48.6 , 0 );

setScaleKey( spep_2 -3 + 14, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 16, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 18, 1, 1.67, 1.68 );
setScaleKey( spep_2 -3 + 20, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 23, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 24, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 98, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 100, 1, 1.89, 1.9 );
setScaleKey( spep_2 -3 + 102, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 116, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 118, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 132, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 134, 1, 1.91, 1.92 );
setScaleKey( spep_2 -3 + 136, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 150, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 152, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 166, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 168, 1, 1.93, 1.94 );
setScaleKey( spep_2 -3 + 170, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 184, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 186, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 202, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 204, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 206, 1, 2.05, 2.04 );
setScaleKey( spep_2 -3 + 208, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 210, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 212, 1, 2.5, 2.5 );
setScaleKey( spep_2 -3 + 214, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 216, 1, 3, 3 );
setScaleKey( spep_2 -3 + 218, 1, 3.29, 3.29 );
setScaleKey( spep_2 -3 + 220, 1, 3.62, 3.61 );
setScaleKey( spep_2 -3 + 222, 1, 3.96, 3.96 );
setScaleKey( spep_2 -3 + 224, 1, 4.31, 4.31 );
setScaleKey( spep_2 -3 + 226, 1, 4.68, 4.68 );
setScaleKey( spep_2 -3 + 228, 1, 5.06, 5.05 );

setRotateKey( spep_2 -3 + 202, 1, 0 );
setRotateKey( spep_2 -3 + 204, 1, -0.1 );
setRotateKey( spep_2 -3 + 206, 1, -0.3 );
setRotateKey( spep_2 -3 + 208, 1, -0.6 );
setRotateKey( spep_2 -3 + 210, 1, -1.1 );
setRotateKey( spep_2 -3 + 212, 1, -1.7 );
setRotateKey( spep_2 -3 + 214, 1, -2.5 );
setRotateKey( spep_2 -3 + 216, 1, -3.3 );
setRotateKey( spep_2 -3 + 218, 1, -4.2 );
setRotateKey( spep_2 -3 + 220, 1, -5.3 );
setRotateKey( spep_2 -3 + 222, 1, -6.3 );
setRotateKey( spep_2 -3 + 224, 1, -7.5 );
setRotateKey( spep_2 -3 + 226, 1, -8.6 );
setRotateKey( spep_2 -3 + 228, 1, -9.8 );


-- ** 音 ** --
--キック連打1	
SE009 = playSe( spep_2 + 12, 1189 );
setSeVolumeByWorkId( spep_2 + 12, SE009, 63 );
--キック連打2
SE010 = playSe( spep_2 + 16, 1001 );
setSeVolumeByWorkId( spep_2 + 16, SE010, 55 );
--キック連打3
SE011 = playSe( spep_2 + 22, 1001 );
setSeVolumeByWorkId( spep_2 + 22, SE011, 56 );
--キック連打4
SE012 = playSe( spep_2 + 26, 1001 );
setSeVolumeByWorkId( spep_2 + 26, SE012, 56 );
--キック連打5
SE013 = playSe( spep_2 + 32, 1001 );
setSeVolumeByWorkId( spep_2 + 32, SE013, 54 );
--キック連打6
SE014 = playSe( spep_2 + 36, 1001 );
setSeVolumeByWorkId( spep_2 + 36, SE014, 70 );

--パンチ連打1
SE015 = playSe( spep_2 + 62, 1189 );
--パンチ連打2
SE016 = playSe( spep_2 + 66, 1000 );
--パンチ連打3
SE017 = playSe( spep_2 + 84, 1000 );
--パンチ連打4
SE018 = playSe( spep_2 + 96, 1000 );
setSeVolumeByWorkId( spep_2 + 96, SE018, 89 );
--パンチ連打5
SE019 = playSe( spep_2 + 102, 1000 );
--パンチ連打6
SE020 = playSe( spep_2 + 108, 1000 );
setSeVolumeByWorkId( spep_2 + 108, SE020, 81 );
--パンチ連打7
SE021 = playSe( spep_2 + 114, 1000 );
setSeVolumeByWorkId( spep_2 + 114, SE021, 89 );
--パンチ連打8
SE022 = playSe( spep_2 + 122, 1000 );
--パンチ連打9
SE023 = playSe( spep_2 + 130, 1000 );
setSeVolumeByWorkId( spep_2 + 130, SE023, 79 );
--パンチ連打10
SE024 = playSe( spep_2 + 136, 1000 );
setSeVolumeByWorkId( spep_2 + 136, SE024, 110 );
--パンチ連打11
SE025 = playSe( spep_2 + 142, 1000 );
setSeVolumeByWorkId( spep_2 + 142, SE025, 79 );
--パンチ連打12
SE026 = playSe( spep_2 + 148, 1000 );
setSeVolumeByWorkId( spep_2 + 148, SE026, 115 );
--パンチ連打13
SE027 = playSe( spep_2 + 158, 1000 );
setSeVolumeByWorkId( spep_2 + 158, SE027, 88 );
--パンチ連打14
SE028 = playSe( spep_2 + 166, 1000 );
--パンチ連打15
SE029 = playSe( spep_2 + 176, 1000 );
setSeVolumeByWorkId( spep_2 + 176, SE029, 89 );
--パンチ連打16
SE030 = playSe( spep_2 + 184, 1000 );
setSeVolumeByWorkId( spep_2 + 184, SE030, 108 );
--大きく振りかぶる
SE031 = playSe( spep_2 + 184, 1072 );
--パンチ連打17
SE032 = playSe( spep_2 + 194, 1000 );
setSeVolumeByWorkId( spep_2 + 194, SE032, 97 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 212, 12, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 226;

------------------------------------------------------
-- ラスト(166F)
------------------------------------------------------

-- ** エフェクト等 ** --
rast_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ラスト、敵より前(ef_005)
setEffMoveKey( spep_3 + 0, rast_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, rast_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rast_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, rast_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rast_f, 0 );
setEffRotateKey( spep_3 + 166, rast_f, 0 );
setEffAlphaKey( spep_3 + 0, rast_f, 255 );
setEffAlphaKey( spep_3 + 166, rast_f, 255 );

rast_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --ラッシュ、敵より後ろ(ef_006)
setEffMoveKey( spep_3 + 0, rast_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, rast_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rast_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, rast_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rast_b, 0 );
setEffRotateKey( spep_3 + 166, rast_b, 0 );
setEffAlphaKey( spep_3 + 0, rast_b, 255 );
setEffAlphaKey( spep_3 + 166, rast_b, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_3 + 0,  906, 58, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen6, 58, 25 );
setEffMoveKey(   spep_3 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey(   spep_3 + 58, shuchusen6, 0, 0 , 0 );
setEffScaleKey(  spep_3 + 0, shuchusen6, 1.6, 1.6 );
setEffScaleKey(  spep_3 + 58, shuchusen6, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen6, 0 );
setEffRotateKey( spep_3 + 58, shuchusen6, 0 );
setEffAlphaKey(  spep_3 + 0, shuchusen6, 255 );
setEffAlphaKey(  spep_3 + 58, shuchusen6, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 59, 1, 1 );
setDisp( spep_3 + 166, 1, 0 );
changeAnime( spep_3 + 59, 1, 100 );

setMoveKey( spep_3 -3 + 62, 1, 153.8, -199 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 130.4, -185.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 107.1, -171.7 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 83.7, -158 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 60.3, -144.4 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 36.9, -130.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 13.5, -117.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -38.7, -64.9 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 31.3, -142.9 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -36.7, -131.4 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 31.3, -72.9 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 0.3, -103.9 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -7.7, -103.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 0.3, -103.9 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -7.7, -103.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 0.3, -103.9 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -7.7, -103.9 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -7.7, -103.9 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 0.3, -103.9 , 0 );
setMoveKey( spep_3 -3 + 126, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 128, 1, -0.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 130, 1, -5.2, -101.6 , 0 );
setMoveKey( spep_3 -3 + 132, 1, -0.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 134, 1, -5.2, -101.6 , 0 );
setMoveKey( spep_3 -3 + 136, 1, -2.9, -113.2 , 0 );
setMoveKey( spep_3 -3 + 169, 1, -2.9, -113.2 , 0 );

setScaleKey( spep_3 -3 + 62, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 64, 1, 1.83, 1.83 );
setScaleKey( spep_3 -3 + 66, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 68, 1, 2.13, 2.13 );
setScaleKey( spep_3 -3 + 70, 1, 2.28, 2.28 );
setScaleKey( spep_3 -3 + 72, 1, 2.43, 2.43 );
setScaleKey( spep_3 -3 + 74, 1, 2.58, 2.58 );
setScaleKey( spep_3 -3 + 76, 1, 2.73, 2.73 );
setScaleKey( spep_3 -3 + 169, 1, 2.73, 2.73 );

setRotateKey( spep_3 -3 + 62, 1, 0 );
setRotateKey( spep_3 -3 + 169, 1, 0 );

-- ** 音 ** --
--大きく振りかぶる1
SE033 = playSe( spep_3 + 2, 9 );
setSeVolumeByWorkId( spep_3 + 2, SE033, 0 );
setSeVolumeByWorkId( spep_3 + 5, SE033, 6 );
setSeVolumeByWorkId( spep_3 + 8, SE033, 12 );
setSeVolumeByWorkId( spep_3 + 11, SE033, 24 );
setSeVolumeByWorkId( spep_3 + 14, SE033, 26 );
setSeVolumeByWorkId( spep_3 + 17, SE033, 48 );
setSeVolumeByWorkId( spep_3 + 20, SE033, 60 );
setSeVolumeByWorkId( spep_3 + 23, SE033, 72 );
setSeVolumeByWorkId( spep_3 + 26, SE033, 78 );
stopSe( spep_3 + 76, SE033, 6 );

--大きく振りかぶる1
SE034 = playSe( spep_3 + 2, 1116 );
stopSe( spep_3 + 34, SE034, 10 );
--大きく振りかぶる2
SE035 = playSe( spep_3 + 38, 1117 );
stopSe( spep_3 + 64, SE035, 6 );
--大きく振りかぶる3
SE036 = playSe( spep_3 + 40, 1004 );

--ラストパンチ1
SE037 = playSe( spep_3 + 76, 1000 );
--ラストパンチ2
SE038 = playSe( spep_3 + 76, 1110 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 166, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 81 );
endPhase( spep_3 + 156 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入、たじろぐサタン→決意(320F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --導入、敵より前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 320, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 320, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 320, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 320, first_f, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 247,  906, 72, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 247, shuchusen1, 72, 25 );
setEffMoveKey(   spep_0 + 247, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 319, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 247, shuchusen1, 1.6, 1.8 );
setEffScaleKey(  spep_0 + 319, shuchusen1, 1.6, 1.8 );
setEffRotateKey( spep_0 + 247, shuchusen1, 0 );
setEffRotateKey( spep_0 + 319, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 247, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 319, shuchusen1, 255 );

spep_x = spep_0 + 234;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 6, 8 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 40 );
setTimeStretch( SE001, 1.43, 30, 8 );

--ブウ横たわる
SE002 = playSe( spep_0 + 116, 1175 );
setSeVolumeByWorkId( spep_0 + 116, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 119, SE002, 4 );
setSeVolumeByWorkId( spep_0 + 122, SE002, 8 );
setSeVolumeByWorkId( spep_0 + 125, SE002, 12 );
setSeVolumeByWorkId( spep_0 + 128, SE002, 16);
setSeVolumeByWorkId( spep_0 + 131, SE002, 20 );
setSeVolumeByWorkId( spep_0 + 134, SE002, 24 );
setSeVolumeByWorkId( spep_0 + 138, SE002, 28 );
stopSe( spep_0 + 230, SE002, 34 );
setStartTimeMs( SE002,  1367 );

--セリフカットイン
SE003 = playSe( spep_0 + 244, 1018 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 320, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 308, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 320;



--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
--ズサー1
SE005 = playSe( spep_1 + 88, 1003 );
--ズサー2
SE006 = playSe( spep_1 + 90, 1197 );
setSeVolumeByWorkId( spep_1 + 90, SE006, 30 );
setTimeStretch( SE006, 1.36, 20, 1 );

--ズサー3
SE007 = playSe( spep_1 + 92, 1192 );
setSeVolumeByWorkId( spep_1 + 92, SE007, 300 );
stopSe( spep_1 +94 + 18, SE007, 2 );		
--ズサー4
SE008 = playSe( spep_1 + 92, 1106 );

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
rush_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ラッシュ、敵より後ろ(ef_004)
setEffMoveKey( spep_2 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 226, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 226, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_b, 0 );
setEffRotateKey( spep_2 + 226, rush_b, 0 );
setEffAlphaKey( spep_2 + 0, rush_b, 255 );
setEffAlphaKey( spep_2 + 226, rush_b, 255 );

rush_f = entryEffect( spep_2 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --ラッシュ、敵より前 (ef_003)
setEffMoveKey( spep_2 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 226, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 226, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_f, 0 );
setEffRotateKey( spep_2 + 226, rush_f, 0 );
setEffAlphaKey( spep_2 + 0, rush_f, 255 );
setEffAlphaKey( spep_2 + 226, rush_f, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 21,  906, 29, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 21, shuchusen2, 29, 25 );
setEffMoveKey(   spep_2 + 21, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 50, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 21, shuchusen2, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 50, shuchusen2, 1.2, 1.2 );
setEffRotateKey( spep_2 + 21, shuchusen2, 0 );
setEffRotateKey( spep_2 + 50, shuchusen2, 0 );
setEffAlphaKey(  spep_2 + 21, shuchusen2, 255 );
setEffAlphaKey(  spep_2 + 50, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_2 + 65,  906, 10, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 65, shuchusen3, 10, 25 );
setEffMoveKey(   spep_2 + 65, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 75, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 65, shuchusen3, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 75, shuchusen3, 1.2, 1.2 );
setEffRotateKey( spep_2 + 65, shuchusen3, 0 );
setEffRotateKey( spep_2 + 75, shuchusen3, 0 );
setEffAlphaKey(  spep_2 + 65, shuchusen3, 255 );
setEffAlphaKey(  spep_2 + 75, shuchusen3, 255 );

shuchusen4 = entryEffectLife( spep_2 + 85,  906, 6, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 85, shuchusen4, 6, 25 );
setEffMoveKey(   spep_2 + 85, shuchusen4, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 91, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 85, shuchusen4, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 91, shuchusen4, 1.2, 1.2 );
setEffRotateKey( spep_2 + 85, shuchusen4, 0 );
setEffRotateKey( spep_2 + 91, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 85, shuchusen4, 255 );
setEffAlphaKey(  spep_2 + 91, shuchusen4, 255 );

shuchusen5 = entryEffectLife( spep_2 + 99,  906, 123, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 99, shuchusen5, 6, 25 );
setEffMoveKey(   spep_2 + 99, shuchusen5, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 222, shuchusen5, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 99, shuchusen5, 1.2, 1.2 );
setEffScaleKey(  spep_2 + 222, shuchusen5, 1.2, 1.2 );
setEffRotateKey( spep_2 + 99, shuchusen5, 0 );
setEffRotateKey( spep_2 + 222, shuchusen5, 0 );
setEffAlphaKey(  spep_2 + 99, shuchusen5, 255 );
setEffAlphaKey(  spep_2 + 222, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctdogaga = entryEffectLife( spep_2 -3 + 24,  10017, 29, 0x100, -1, 0, -58.7, 221.2 );  --ドガガガッ
setEffMoveKey( spep_2 -3 + 24, ctdogaga, -58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctdogaga, -61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctdogaga, -58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctdogaga, -61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctdogaga, -58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctdogaga, -61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctdogaga, -58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctdogaga, -61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctdogaga, -58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctdogaga, -61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctdogaga, -58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctdogaga, -61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctdogaga, -58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctdogaga, -61.3, 217 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctdogaga, -58.7, 221.2 , 0 );
setEffMoveKey( spep_2 -3 + 53, ctdogaga, -61.3, 217 , 0 );

setEffScaleKey( spep_2 -3 + 24, ctdogaga, 1.5, 1.5 );
setEffScaleKey( spep_2 -3 + 53, ctdogaga, 1.5, 1.5 );

setEffRotateKey( spep_2 -3 + 24, ctdogaga, -19.3 );
setEffRotateKey( spep_2 -3 + 53, ctdogaga, -19.3 );

setEffAlphaKey( spep_2 -3 + 24, ctdogaga, 255 );
setEffAlphaKey( spep_2 -3 + 53, ctdogaga, 255 );

ctgaha = entryEffectLife( spep_2 -3 + 68,  10005, 10, 0x100, -1, 0, 108.9, 191.8 );  --ガッ
setEffMoveKey( spep_2 -3 + 68, ctgaha,108.9, 191.8 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctgaha,93, 203.6 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctgaha,88.8, 202.6 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctgaha,72, 215.4 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctgaha,68.7, 213.3 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctgaha,58.6, 218.7 , 0 );

setEffScaleKey( spep_2 -3 + 68, ctgaha, 1, 1 );
setEffScaleKey( spep_2 -3 + 70, ctgaha, 1.08, 1.08 );
setEffScaleKey( spep_2 -3 + 72, ctgaha, 1.17, 1.17 );
setEffScaleKey( spep_2 -3 + 74, ctgaha, 1.25, 1.25 );
setEffScaleKey( spep_2 -3 + 76, ctgaha, 1.34, 1.34 );
setEffScaleKey( spep_2 -3 + 78, ctgaha, 1.42, 1.42 );

setEffRotateKey( spep_2 -3 + 68, ctgaha, 21 );
setEffRotateKey( spep_2 -3 + 70, ctgaha, 21.1 );
setEffRotateKey( spep_2 -3 + 74, ctgaha, 21.1 );
setEffRotateKey( spep_2 -3 + 76, ctgaha, 21.2 );
setEffRotateKey( spep_2 -3 + 78, ctgaha, 21.2 );

setEffAlphaKey( spep_2 -3 + 68, ctgaha, 255 );
setEffAlphaKey( spep_2 -3 + 78, ctgaha, 255 );

ctbaki = entryEffectLife( spep_2 -3 + 88,  10020, 13, 0x100, -1, 0, -35.1, 214 );  --バキッ
setEffMoveKey( spep_2 -3 + 88, ctbaki, -35.1, 214 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctbaki, -50.8, 220.5 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctbaki, -49, 209.5 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctbaki, -65.7, 217 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctbaki, -62.8, 204.9 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctbaki, -80.7, 213.5 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctbaki, -76.7, 200.4 , 0 );
setEffMoveKey( spep_2 -3 + 101, ctbaki, -76.7, 200.4 , 0 );

setEffScaleKey( spep_2 -3 + 88, ctbaki, 0.9, 0.9 );
setEffScaleKey( spep_2 -3 + 90, ctbaki, 0.96, 0.96 );
setEffScaleKey( spep_2 -3 + 92, ctbaki, 1.02, 1.02 );
setEffScaleKey( spep_2 -3 + 94, ctbaki, 1.08, 1.08 );
setEffScaleKey( spep_2 -3 + 96, ctbaki, 1.14, 1.14 );
setEffScaleKey( spep_2 -3 + 98, ctbaki, 1.2, 1.2 );
setEffScaleKey( spep_2 -3 + 100, ctbaki, 1.26, 1.26 );
setEffScaleKey( spep_2 -3 + 101, ctbaki, 1.26, 1.26 );

setEffRotateKey( spep_2 -3 + 88, ctbaki, 0 );
setEffRotateKey( spep_2 -3 + 101, ctbaki, 0 );

setEffAlphaKey( spep_2 -3 + 88, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 101, ctbaki, 255 );


ctzudodo = entryEffectLife( spep_2 -3 + 102,  10014, 102, 0x100, -1, 0, -27.9, 244.8 );  --ズドドド
setEffMoveKey( spep_2 -3 + 102, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 118, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 122, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 126, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 130, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 134, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 138, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 142, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 146, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 150, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 154, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 158, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 162, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 166, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 170, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 174, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 178, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 182, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 186, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 190, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 194, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 198, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 202, ctzudodo, -27.9, 244.8 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 116, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 120, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 124, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 128, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 132, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 136, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 140, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 144, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 148, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 152, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 156, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 160, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 164, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 168, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 172, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 176, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 180, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 184, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 188, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 192, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 196, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 200, ctzudodo, -36.5, 243.3 , 0 );
setEffMoveKey( spep_2 -3 + 204, ctzudodo, -36.5, 243.3 , 0 );

setEffScaleKey( spep_2 -3 + 102, ctzudodo, 1.65, 1.65 );
setEffScaleKey( spep_2 -3 + 204, ctzudodo, 1.65, 1.65 );

setEffRotateKey( spep_2 -3 + 102, ctzudodo, -40 );
setEffRotateKey( spep_2 -3 + 204, ctzudodo, -40 );

setEffAlphaKey( spep_2 -3 + 102, ctzudodo, 255 );
setEffAlphaKey( spep_2 -3 + 204, ctzudodo, 255 );


-- ** 敵キャラクター ** -- x-50 y+5
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 42.4, -92.3 , 0 );
setMoveKey( spep_2 + 1, 1, 46.3, -92.1 , 0 );
setMoveKey( spep_2 + 2, 1, 50.4, -91.9 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 55, -91.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 60, -91.4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 65.4, -91.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 71.4, -90.9 , 0 );

setScaleKey( spep_2 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 1, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 2, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 6, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 8, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 10, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 12, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 10 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 71.4, -90.9 , 0 );

    setMoveKey( SP_dodge + 2, 1, 77.8, -90.6 , 0 );
    setMoveKey( SP_dodge + 4, 1, 84.6, -90.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 92, -89.8 , 0 );
    setMoveKey( SP_dodge + 8, 1, 100, -89.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 108.4, -89 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.6, 1.6 );

    setScaleKey( SP_dodge + 2, 1, 1.63, 1.63 );
    setScaleKey( SP_dodge + 4, 1, 1.65, 1.65 );
    setScaleKey( SP_dodge + 6, 1, 1.67, 1.68 );
    setScaleKey( SP_dodge + 8, 1, 1.7, 1.7 );
    setScaleKey( SP_dodge + 10, 1, 1.73, 1.73 );

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

-- ** 敵キャラクター ** -- x-50 y+5
setDisp( spep_2 -3 + 228, 1, 0 );
changeAnime( spep_2 -3 + 24, 1, 118 );

setMoveKey( spep_2 -3 + 14, 1, 77.8, -90.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 84.6, -90.2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 92, -89.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 100, -89.4 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 108.4, -89 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 137.9, -122.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 136.7, -115.2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 136.7, -115.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 136.7, -115.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 136.7, -115.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 136.7, -115.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 136.7, -115.2 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 148, -112.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 128, -132.7 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 138, -122.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 148.1, -112.7 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 128.3, -132.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 138.4, -122.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 138.6, -122.9 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 138.7, -122.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 138.9, -123 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 139, -123 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 149, -125.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 122.5, -131.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 139.5, -123.1 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 138.4, -115.7 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 139.8, -123.2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 138.7, -115.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 140.1, -123.3 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 139, -115.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 140.4, -123.4 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 139.3, -115.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 140.7, -123.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 139.6, -116 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 141, -123.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 139.9, -116.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 141.3, -123.7 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 140.2, -116.2 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 141.6, -123.8 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 140.5, -116.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 141.9, -123.9 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 140.8, -116.4 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 142.2, -123.9 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 141.1, -116.5 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 142.5, -124 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 141.4, -116.6 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 142.8, -124.1 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 141.7, -116.7 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 143.1, -124.2 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 142, -116.8 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 143.4, -124.3 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 142.3, -116.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 143.7, -124.4 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 142.6, -116.9 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 144, -124.5 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 142.9, -117 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 144.3, -124.6 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 143.2, -117.1 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 144.6, -124.7 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 143.5, -117.2 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 144.9, -124.7 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 143.8, -117.3 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 145.2, -124.8 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 144.1, -117.4 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 145.5, -124.9 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 144.4, -117.5 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 145.8, -125 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 144.7, -117.6 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 146.1, -125.1 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 145, -117.7 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 146.4, -125.2 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 145.3, -117.7 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 145.5, -117.8 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 145.6, -117.8 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 152, -117.1 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 171.2, -114.9 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 202.8, -111.2 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 246.4, -105.7 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 301.3, -98.3 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 366.8, -88.8 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 441.7, -77 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 525, -62.7 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 615.4, -45.7 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 711.4, -26 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 811.7, -3.6 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 914.5, 21.4 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 1018.4, 48.6 , 0 );

setScaleKey( spep_2 -3 + 14, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 16, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 18, 1, 1.67, 1.68 );
setScaleKey( spep_2 -3 + 20, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 23, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 24, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 98, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 100, 1, 1.89, 1.9 );
setScaleKey( spep_2 -3 + 102, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 116, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 118, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 132, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 134, 1, 1.91, 1.92 );
setScaleKey( spep_2 -3 + 136, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 150, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 152, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 166, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 168, 1, 1.93, 1.94 );
setScaleKey( spep_2 -3 + 170, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 184, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 186, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 202, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 204, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 206, 1, 2.05, 2.04 );
setScaleKey( spep_2 -3 + 208, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 210, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 212, 1, 2.5, 2.5 );
setScaleKey( spep_2 -3 + 214, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 216, 1, 3, 3 );
setScaleKey( spep_2 -3 + 218, 1, 3.29, 3.29 );
setScaleKey( spep_2 -3 + 220, 1, 3.62, 3.61 );
setScaleKey( spep_2 -3 + 222, 1, 3.96, 3.96 );
setScaleKey( spep_2 -3 + 224, 1, 4.31, 4.31 );
setScaleKey( spep_2 -3 + 226, 1, 4.68, 4.68 );
setScaleKey( spep_2 -3 + 228, 1, 5.06, 5.05 );

setRotateKey( spep_2 -3 + 202, 1, 0 );
setRotateKey( spep_2 -3 + 204, 1, -0.1 );
setRotateKey( spep_2 -3 + 206, 1, -0.3 );
setRotateKey( spep_2 -3 + 208, 1, -0.6 );
setRotateKey( spep_2 -3 + 210, 1, -1.1 );
setRotateKey( spep_2 -3 + 212, 1, -1.7 );
setRotateKey( spep_2 -3 + 214, 1, -2.5 );
setRotateKey( spep_2 -3 + 216, 1, -3.3 );
setRotateKey( spep_2 -3 + 218, 1, -4.2 );
setRotateKey( spep_2 -3 + 220, 1, -5.3 );
setRotateKey( spep_2 -3 + 222, 1, -6.3 );
setRotateKey( spep_2 -3 + 224, 1, -7.5 );
setRotateKey( spep_2 -3 + 226, 1, -8.6 );
setRotateKey( spep_2 -3 + 228, 1, -9.8 );


-- ** 音 ** --
--キック連打1	
SE009 = playSe( spep_2 + 12, 1189 );
setSeVolumeByWorkId( spep_2 + 12, SE009, 63 );
--キック連打2
SE010 = playSe( spep_2 + 16, 1001 );
setSeVolumeByWorkId( spep_2 + 16, SE010, 55 );
--キック連打3
SE011 = playSe( spep_2 + 22, 1001 );
setSeVolumeByWorkId( spep_2 + 22, SE011, 56 );
--キック連打4
SE012 = playSe( spep_2 + 26, 1001 );
setSeVolumeByWorkId( spep_2 + 26, SE012, 56 );
--キック連打5
SE013 = playSe( spep_2 + 32, 1001 );
setSeVolumeByWorkId( spep_2 + 32, SE013, 54 );
--キック連打6
SE014 = playSe( spep_2 + 36, 1001 );
setSeVolumeByWorkId( spep_2 + 36, SE014, 70 );

--パンチ連打1
SE015 = playSe( spep_2 + 62, 1189 );
--パンチ連打2
SE016 = playSe( spep_2 + 66, 1000 );
--パンチ連打3
SE017 = playSe( spep_2 + 84, 1000 );
--パンチ連打4
SE018 = playSe( spep_2 + 96, 1000 );
setSeVolumeByWorkId( spep_2 + 96, SE018, 89 );
--パンチ連打5
SE019 = playSe( spep_2 + 102, 1000 );
--パンチ連打6
SE020 = playSe( spep_2 + 108, 1000 );
setSeVolumeByWorkId( spep_2 + 108, SE020, 81 );
--パンチ連打7
SE021 = playSe( spep_2 + 114, 1000 );
setSeVolumeByWorkId( spep_2 + 114, SE021, 89 );
--パンチ連打8
SE022 = playSe( spep_2 + 122, 1000 );
--パンチ連打9
SE023 = playSe( spep_2 + 130, 1000 );
setSeVolumeByWorkId( spep_2 + 130, SE023, 79 );
--パンチ連打10
SE024 = playSe( spep_2 + 136, 1000 );
setSeVolumeByWorkId( spep_2 + 136, SE024, 110 );
--パンチ連打11
SE025 = playSe( spep_2 + 142, 1000 );
setSeVolumeByWorkId( spep_2 + 142, SE025, 79 );
--パンチ連打12
SE026 = playSe( spep_2 + 148, 1000 );
setSeVolumeByWorkId( spep_2 + 148, SE026, 115 );
--パンチ連打13
SE027 = playSe( spep_2 + 158, 1000 );
setSeVolumeByWorkId( spep_2 + 158, SE027, 88 );
--パンチ連打14
SE028 = playSe( spep_2 + 166, 1000 );
--パンチ連打15
SE029 = playSe( spep_2 + 176, 1000 );
setSeVolumeByWorkId( spep_2 + 176, SE029, 89 );
--パンチ連打16
SE030 = playSe( spep_2 + 184, 1000 );
setSeVolumeByWorkId( spep_2 + 184, SE030, 108 );
--大きく振りかぶる
SE031 = playSe( spep_2 + 184, 1072 );
--パンチ連打17
SE032 = playSe( spep_2 + 194, 1000 );
setSeVolumeByWorkId( spep_2 + 194, SE032, 97 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 212, 12, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 226;

------------------------------------------------------
-- ラスト(166F)
------------------------------------------------------

-- ** エフェクト等 ** --
rast_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ラスト、敵より前(ef_005)
setEffMoveKey( spep_3 + 0, rast_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, rast_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rast_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, rast_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rast_f, 0 );
setEffRotateKey( spep_3 + 166, rast_f, 0 );
setEffAlphaKey( spep_3 + 0, rast_f, 255 );
setEffAlphaKey( spep_3 + 166, rast_f, 255 );

rast_b = entryEffect( spep_3 + 0, SP_05r, 0x80, -1, 0, 0, 0 );  --ラッシュ、敵より後ろ(ef_006)
setEffMoveKey( spep_3 + 0, rast_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 166, rast_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rast_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, rast_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rast_b, 0 );
setEffRotateKey( spep_3 + 166, rast_b, 0 );
setEffAlphaKey( spep_3 + 0, rast_b, 255 );
setEffAlphaKey( spep_3 + 166, rast_b, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_3 + 0,  906, 58, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen6, 58, 25 );
setEffMoveKey(   spep_3 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey(   spep_3 + 58, shuchusen6, 0, 0 , 0 );
setEffScaleKey(  spep_3 + 0, shuchusen6, 1.6, 1.6 );
setEffScaleKey(  spep_3 + 58, shuchusen6, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen6, 0 );
setEffRotateKey( spep_3 + 58, shuchusen6, 0 );
setEffAlphaKey(  spep_3 + 0, shuchusen6, 255 );
setEffAlphaKey(  spep_3 + 58, shuchusen6, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 59, 1, 1 );
setDisp( spep_3 + 166, 1, 0 );
changeAnime( spep_3 + 59, 1, 100 );

setMoveKey( spep_3 -3 + 62, 1, 153.8, -199 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 130.4, -185.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 107.1, -171.7 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 83.7, -158 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 60.3, -144.4 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 36.9, -130.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 13.5, -117.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -38.7, -64.9 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 31.3, -142.9 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -36.7, -131.4 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 31.3, -72.9 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 0.3, -103.9 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -7.7, -103.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 0.3, -103.9 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -7.7, -103.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 0.3, -103.9 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -7.7, -103.9 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -7.7, -103.9 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 2.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 0.3, -103.9 , 0 );
setMoveKey( spep_3 -3 + 126, 1, -7.7, -111.9 , 0 );
setMoveKey( spep_3 -3 + 128, 1, -0.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 130, 1, -5.2, -101.6 , 0 );
setMoveKey( spep_3 -3 + 132, 1, -0.3, -111.9 , 0 );
setMoveKey( spep_3 -3 + 134, 1, -5.2, -101.6 , 0 );
setMoveKey( spep_3 -3 + 136, 1, -2.9, -113.2 , 0 );
setMoveKey( spep_3 -3 + 169, 1, -2.9, -113.2 , 0 );

setScaleKey( spep_3 -3 + 62, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 64, 1, 1.83, 1.83 );
setScaleKey( spep_3 -3 + 66, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 68, 1, 2.13, 2.13 );
setScaleKey( spep_3 -3 + 70, 1, 2.28, 2.28 );
setScaleKey( spep_3 -3 + 72, 1, 2.43, 2.43 );
setScaleKey( spep_3 -3 + 74, 1, 2.58, 2.58 );
setScaleKey( spep_3 -3 + 76, 1, 2.73, 2.73 );
setScaleKey( spep_3 -3 + 169, 1, 2.73, 2.73 );

setRotateKey( spep_3 -3 + 62, 1, 0 );
setRotateKey( spep_3 -3 + 169, 1, 0 );

-- ** 音 ** --
--大きく振りかぶる1
SE033 = playSe( spep_3 + 2, 9 );
setSeVolumeByWorkId( spep_3 + 2, SE033, 0 );
setSeVolumeByWorkId( spep_3 + 5, SE033, 6 );
setSeVolumeByWorkId( spep_3 + 8, SE033, 12 );
setSeVolumeByWorkId( spep_3 + 11, SE033, 24 );
setSeVolumeByWorkId( spep_3 + 14, SE033, 26 );
setSeVolumeByWorkId( spep_3 + 17, SE033, 48 );
setSeVolumeByWorkId( spep_3 + 20, SE033, 60 );
setSeVolumeByWorkId( spep_3 + 23, SE033, 72 );
setSeVolumeByWorkId( spep_3 + 26, SE033, 78 );
stopSe( spep_3 + 76, SE033, 6 );

--大きく振りかぶる1
SE034 = playSe( spep_3 + 2, 1116 );
stopSe( spep_3 + 34, SE034, 10 );
--大きく振りかぶる2
SE035 = playSe( spep_3 + 38, 1117 );
stopSe( spep_3 + 64, SE035, 6 );
--大きく振りかぶる3
SE036 = playSe( spep_3 + 40, 1004 );

--ラストパンチ1
SE037 = playSe( spep_3 + 76, 1000 );
--ラストパンチ2
SE038 = playSe( spep_3 + 76, 1110 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 166, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 81 );
endPhase( spep_3 + 156 );

end
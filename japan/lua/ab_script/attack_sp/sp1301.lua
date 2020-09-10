--フリーザ(第二形態)_デスストーム

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
SP_01 = 153538; --導入
SP_02 = 153539; --画面白黒切り替わり
SP_03 = 153540; --衝撃波
SP_04 = 153541; --島爆発
SP_05 = 153542; --渦

--敵側
SP_01r = 153544; --導入
SP_02r = 153545; --画面白黒切り替わり

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

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 導入(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_0 + 0, SP_01, 96, 0x80, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, kamae, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 96, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 96, kamae, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 321.7, -353.7 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 374.1, -381.4 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 406.7, -398.9 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 443.8, -418.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 485.5, -441 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 532.1, -466.4 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 584.2, -494.3 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 608.7 +50, -507.4 -20, 0 );
setMoveKey( spep_0 -3 + 18, 1, 633.1 +70, -520.4 -40, 0 );
setMoveKey( spep_0 -3 + 20, 1, 635.3 +80, -523.5 -60, 0 );
setMoveKey( spep_0 -3 + 22, 1, 637.5 +100, -526.6 -80, 0 );
setMoveKey( spep_0 -3 + 24, 1, 639.7 +150, -529.7 -100, 0 );
setMoveKey( spep_0 -3 + 26, 1, 641.8 +200, -532.8 -120, 0 );
setMoveKey( spep_0 -3 + 28, 1, 644 +400, -535.9 -320, 0 );
setMoveKey( spep_0 -3 + 30, 1, 646.2 +600, -539 -520, 0 );
setMoveKey( spep_0 -3 + 32, 1, 648.3 +800, -542.1 -720, 0 );
setMoveKey( spep_0 -3 + 34, 1, 650.5 +1000, -545.2 -920, 0 );

setScaleKey( spep_0 + 0, 1, 3.17, 3.14 );
setScaleKey( spep_0 -3 + 2, 1, 3.17, 3.14 );
setScaleKey( spep_0 -3 + 4, 1, 3.2, 3.17 );
setScaleKey( spep_0 -3 + 6, 1, 3.23, 3.2 );
setScaleKey( spep_0 -3 + 8, 1, 3.25, 3.25 );
setScaleKey( spep_0 -3 + 10, 1, 3.31, 3.31 );
setScaleKey( spep_0 -3 + 12, 1, 3.37, 3.37 );
setScaleKey( spep_0 -3 + 14, 1, 3.46, 3.46 );

setRotateKey( spep_0 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 32; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 102 );

setMoveKey( SP_dodge + 0, 1, 650.5 +1000, -545.2 -920, 0 );
setMoveKey( SP_dodge + 10, 1, 650.5 +1000, -545.2 -920, 0 );

setScaleKey( SP_dodge + 0, 1, 3.46, 3.46 );
setScaleKey( SP_dodge + 10, 1, 3.46, 3.46 );

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

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 16, ctgogo, 0 );
setEffRotateKey( spep_0 + 84, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 36, 1, 0 );

setMoveKey( spep_0 -3 + 36, 1, 652.7 +1000, -548.3 -920, 0 );

setScaleKey( spep_0 -3 + 36, 1, 3.46, 3.46 );

setRotateKey( spep_0 -3 + 36, 1, 0 );

-- ** 音 ** --
playSe( spep_0 + 16, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 84, 8, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 極限Z覚醒用 ** --
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
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen1, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 白黒(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
shirokuro = entryEffectLife( spep_2 + 0, SP_02, 128, 0x80, -1, 0, 0, 0 );  --白黒切り替わり(ef_002)
setEffMoveKey( spep_2 + 0, shirokuro, 0, 0 , 0 );
setEffMoveKey( spep_2 + 128, shirokuro, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shirokuro, 1.0, 1.0 );
setEffScaleKey( spep_2 + 128, shirokuro, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shirokuro, 0 );
setEffRotateKey( spep_2 + 128, shirokuro, 0 );
setEffAlphaKey( spep_2 + 0, shirokuro, 255 );
setEffAlphaKey( spep_2 + 128, shirokuro, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 36, 906, 92, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 36, shuchusen2, 92, 20 );

setEffMoveKey( spep_2 + 36, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 128, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 36, shuchusen2, 1.4, 2.0 );
setEffScaleKey( spep_2 + 128, shuchusen2, 1.4, 2.0 );

setEffRotateKey( spep_2 + 36, shuchusen2, 0 );
setEffRotateKey( spep_2 + 128, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 36, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 128, shuchusen2, 255 );

-- ** 画面黒 ** --
entryFade( spep_2 + 33, 0, 3, 0, 0, 0, 0, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 128, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 124, 2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE1 = playSe( spep_2 + 2, 1019 );  --待機
stopSe(spep_2 + 26, SE1, 10 );
playSe( spep_2 + 36, 1021 );  --白黒
SE2 = playSe( spep_2 + 50, 1044 );  --広がる
setSeVolume(spep_2 + 50, 1044, 75 );
stopSe(spep_2 + 124, SE2, 4 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 128;

------------------------------------------------------
-- 衝撃波(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
shougekiha = entryEffectLife( spep_3 + 0, SP_03, 76, 0x80, -1, 0, 0, 0 );  --衝撃波(ef_003)
setEffMoveKey( spep_3 + 0, shougekiha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, shougekiha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shougekiha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, shougekiha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shougekiha, 0 );
setEffRotateKey( spep_3 + 76, shougekiha, 0 );
setEffAlphaKey( spep_3 + 0, shougekiha, 255 );
setEffAlphaKey( spep_3 + 76, shougekiha, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_3 + 0,  10012, 26 -3, 0x100, -1, 0, -115.5, 259.9 );  --ズオッ
setEffShake( spep_3 + 0, ctzuo, 26, 15 );

setEffMoveKey( spep_3 + 0, ctzuo, -115.5, 259.9 , 0 );
setEffMoveKey( spep_3 -3 + 4, ctzuo, -168.5, 309.9 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctzuo, -196.8, 329.6 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctzuo, -221.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctzuo, -223.3, 353 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctzuo, -221.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctzuo, -223.3, 353 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctzuo, -221.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctzuo, -223.3, 353 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctzuo, -245.3, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctzuo, -275.1, 346.6 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctzuo, -292.7, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctzuo, -316.5, 359.9 , 0 );

setEffScaleKey( spep_3 + 0, ctzuo, 0.8, 0.8 );
setEffScaleKey( spep_3 -3 + 4, ctzuo, 1.45, 1.45 );
setEffScaleKey( spep_3 -3 + 6, ctzuo, 1.73, 1.73 );
setEffScaleKey( spep_3 -3 + 8, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_3 -3 + 18, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_3 -3 + 20, ctzuo, 4.23, 4.23 );
setEffScaleKey( spep_3 -3 + 22, ctzuo, 4.65, 4.65 );
setEffScaleKey( spep_3 -3 + 24, ctzuo, 5.08, 5.08 );
setEffScaleKey( spep_3 -3 + 26, ctzuo, 6.5, 6.5 );

setEffRotateKey( spep_3 + 0, ctzuo, 10 );
setEffRotateKey( spep_3 -3 + 4, ctzuo, 10 );
setEffRotateKey( spep_3 -3 + 6, ctzuo, 5 );
setEffRotateKey( spep_3 -3 + 8, ctzuo, 0 );
setEffRotateKey( spep_3 -3 + 18, ctzuo, 0 );
setEffRotateKey( spep_3 -3 + 20, ctzuo, 3 );
setEffRotateKey( spep_3 -3 + 22, ctzuo, 5 );
setEffRotateKey( spep_3 -3 + 24, ctzuo, 10 );
setEffRotateKey( spep_3 -3 + 26, ctzuo, 15 );

setEffAlphaKey( spep_3 + 0, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 18, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 20, ctzuo, 191 );
setEffAlphaKey( spep_3 -3 + 22, ctzuo, 128 );
setEffAlphaKey( spep_3 -3 + 24, ctzuo, 64 );
setEffAlphaKey( spep_3 -3 + 26, ctzuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 24 +3, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, 15.1, 28.4 -100 , 0 );
setMoveKey( spep_3 +3 + 0, 1, 15.1, 28.4 -80 , 0 );
setMoveKey( spep_3 +3 + 2, 1, 0.6, -44.6 , 0 );
setMoveKey( spep_3 +3 + 4, 1, 38.9, -46 , 0 );
setMoveKey( spep_3 +3 + 6, 1, 56.8, -57.8 , 0 );
setMoveKey( spep_3 +3 + 8, 1, 129.8, -9.3 , 0 );
setMoveKey( spep_3 +3 + 10, 1, 189.8, 51 , 0 );
setMoveKey( spep_3 +3 + 12, 1, 263.4, 124.9 , 0 );
setMoveKey( spep_3 +3 + 14, 1, 350.6, 212.7 , 0 );
setMoveKey( spep_3 +3 + 16, 1, 451.5, 314.3 , 0 );
setMoveKey( spep_3 +3 + 18, 1, 566.1, 429.8 , 0 );
setMoveKey( spep_3 +3 + 20, 1, 694.7, 559.4 , 0 );
setMoveKey( spep_3 +3 + 22, 1, 837.1, 703.1 , 0 );
setMoveKey( spep_3 +3 + 24, 1, 684.1, 678.3 , 0 );

setScaleKey( spep_3 + 0, 1, 0.72, 0.72 );
setScaleKey( spep_3 +3 + 0, 1, 0.72, 0.72 );
setScaleKey( spep_3 +3 + 2, 1, 0.91, 0.91 );
setScaleKey( spep_3 +3 + 4, 1, 1.11, 1.11 );
setScaleKey( spep_3 +3 + 6, 1, 1.33, 1.33 );
setScaleKey( spep_3 +3 + 8, 1, 1.56, 1.56 );
setScaleKey( spep_3 +3 + 10, 1, 1.82, 1.82 );
setScaleKey( spep_3 +3 + 12, 1, 2.14, 2.14 );
setScaleKey( spep_3 +3 + 14, 1, 2.51, 2.51 );
setScaleKey( spep_3 +3 + 16, 1, 2.95, 2.95 );
setScaleKey( spep_3 +3 + 18, 1, 3.44, 3.44 );
setScaleKey( spep_3 +3 + 20, 1, 4, 4 );
setScaleKey( spep_3 +3 + 22, 1, 4.61, 4.61 );
setScaleKey( spep_3 +3 + 24, 1, 4.62, 4.62 );

setRotateKey( spep_3 + 0, 1, -40.1 -50 );
setRotateKey( spep_3 + 2, 1, -39.7 -40 );
setRotateKey( spep_3 +3 + 0, 1, -40.1 -30 );
setRotateKey( spep_3 +3 + 2, 1, -39.7 -15 );
setRotateKey( spep_3 +3 + 4, 1, -38.4 -10 );
setRotateKey( spep_3 +3 + 6, 1, -36.4 -5);
setRotateKey( spep_3 +3 + 8, 1, -33.5 );
setRotateKey( spep_3 +3 + 10, 1, -29.7 );
setRotateKey( spep_3 +3 + 12, 1, -25.2 );
setRotateKey( spep_3 +3 + 14, 1, -19.8 );
setRotateKey( spep_3 +3 + 16, 1, -13.6 );
setRotateKey( spep_3 +3 + 18, 1, -6.6 );
setRotateKey( spep_3 +3 + 20, 1, 1.3 );
setRotateKey( spep_3 +3 + 22, 1, 10 );
setRotateKey( spep_3 +3 + 24, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 68, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 4, 1023 );  --衝撃波

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;

------------------------------------------------------
-- 爆発(106F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --爆発(ef_004)
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 106, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_4 + 106, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 106, bakuhatsu, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 106, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 14, 906, 92, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 14, shuchusen3, 94, 20 );

setEffMoveKey( spep_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 106, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_4 + 106, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 106, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 106, shuchusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 106, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 16, 1024);  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 16 );
entryFade( spep_4 + 96, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_0 + 0, SP_01r, 96, 0x80, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, kamae, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 96, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 96, kamae, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 321.7, -353.7 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 374.1, -381.4 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 406.7, -398.9 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 443.8, -418.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 485.5, -441 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 532.1, -466.4 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 584.2, -494.3 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 608.7 +50, -507.4 -20, 0 );
setMoveKey( spep_0 -3 + 18, 1, 633.1 +70, -520.4 -40, 0 );
setMoveKey( spep_0 -3 + 20, 1, 635.3 +80, -523.5 -60, 0 );
setMoveKey( spep_0 -3 + 22, 1, 637.5 +100, -526.6 -80, 0 );
setMoveKey( spep_0 -3 + 24, 1, 639.7 +150, -529.7 -100, 0 );
setMoveKey( spep_0 -3 + 26, 1, 641.8 +200, -532.8 -120, 0 );
setMoveKey( spep_0 -3 + 28, 1, 644 +400, -535.9 -320, 0 );
setMoveKey( spep_0 -3 + 30, 1, 646.2 +600, -539 -520, 0 );
setMoveKey( spep_0 -3 + 32, 1, 648.3 +800, -542.1 -720, 0 );
setMoveKey( spep_0 -3 + 34, 1, 650.5 +1000, -545.2 -920, 0 );

setScaleKey( spep_0 + 0, 1, 3.17, 3.14 );
setScaleKey( spep_0 -3 + 2, 1, 3.17, 3.14 );
setScaleKey( spep_0 -3 + 4, 1, 3.2, 3.17 );
setScaleKey( spep_0 -3 + 6, 1, 3.23, 3.2 );
setScaleKey( spep_0 -3 + 8, 1, 3.25, 3.25 );
setScaleKey( spep_0 -3 + 10, 1, 3.31, 3.31 );
setScaleKey( spep_0 -3 + 12, 1, 3.37, 3.37 );
setScaleKey( spep_0 -3 + 14, 1, 3.46, 3.46 );

setRotateKey( spep_0 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 32; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 102 );

setMoveKey( SP_dodge + 0, 1, 650.5 +1000, -545.2 -920, 0 );
setMoveKey( SP_dodge + 10, 1, 650.5 +1000, -545.2 -920, 0 );

setScaleKey( SP_dodge + 0, 1, 3.46, 3.46 );
setScaleKey( SP_dodge + 10, 1, 3.46, 3.46 );

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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 16, ctgogo, 0 );
setEffRotateKey( spep_0 + 84, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 36, 1, 0 );

setMoveKey( spep_0 -3 + 36, 1, 652.7 +1000, -548.3 -920, 0 );

setScaleKey( spep_0 -3 + 36, 1, 3.46, 3.46 );

setRotateKey( spep_0 -3 + 36, 1, 0 );

-- ** 音 ** --
playSe( spep_0 + 16, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 84, 8, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 極限Z覚醒用 ** --
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
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen1, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 白黒(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
shirokuro = entryEffectLife( spep_2 + 0, SP_02r, 128, 0x80, -1, 0, 0, 0 );  --白黒切り替わり(ef_002)
setEffMoveKey( spep_2 + 0, shirokuro, 0, 0 , 0 );
setEffMoveKey( spep_2 + 128, shirokuro, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shirokuro, 1.0, 1.0 );
setEffScaleKey( spep_2 + 128, shirokuro, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shirokuro, 0 );
setEffRotateKey( spep_2 + 128, shirokuro, 0 );
setEffAlphaKey( spep_2 + 0, shirokuro, 255 );
setEffAlphaKey( spep_2 + 128, shirokuro, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 36, 906, 92, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 36, shuchusen2, 92, 20 );

setEffMoveKey( spep_2 + 36, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 128, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 36, shuchusen2, 1.4, 2.0 );
setEffScaleKey( spep_2 + 128, shuchusen2, 1.4, 2.0 );

setEffRotateKey( spep_2 + 36, shuchusen2, 0 );
setEffRotateKey( spep_2 + 128, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 36, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 128, shuchusen2, 255 );

-- ** 画面黒 ** --
entryFade( spep_2 + 33, 0, 3, 0, 0, 0, 0, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 128, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 124, 2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
SE1 = playSe( spep_2 + 2, 1019 );  --待機
stopSe(spep_2 + 26, SE1, 10 );
playSe( spep_2 + 36, 1021 );  --白黒
SE2 = playSe( spep_2 + 50, 1044 );  --広がる
setSeVolume(spep_2 + 50, 1044, 75 );
stopSe(spep_2 + 124, SE2, 4 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 128;

------------------------------------------------------
-- 衝撃波(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
shougekiha = entryEffectLife( spep_3 + 0, SP_03, 76, 0x80, -1, 0, 0, 0 );  --衝撃波(ef_003)
setEffMoveKey( spep_3 + 0, shougekiha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, shougekiha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shougekiha, -1.0, 1.0 );
setEffScaleKey( spep_3 + 76, shougekiha, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shougekiha, 0 );
setEffRotateKey( spep_3 + 76, shougekiha, 0 );
setEffAlphaKey( spep_3 + 0, shougekiha, 255 );
setEffAlphaKey( spep_3 + 76, shougekiha, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_3 + 0,  10012, 26 -3, 0x100, -1, 0, -115.5, 259.9 );  --ズオッ
setEffShake( spep_3 + 0, ctzuo, 26, 15 );

setEffMoveKey( spep_3 + 0, ctzuo, -115.5, 259.9 , 0 );
setEffMoveKey( spep_3 -3 + 4, ctzuo, -168.5, 309.9 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctzuo, -196.8, 329.6 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctzuo, -221.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctzuo, -223.3, 353 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctzuo, -221.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctzuo, -223.3, 353 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctzuo, -221.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctzuo, -223.3, 353 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctzuo, -245.3, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctzuo, -275.1, 346.6 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctzuo, -292.7, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctzuo, -316.5, 359.9 , 0 );

setEffScaleKey( spep_3 + 0, ctzuo, 0.8, 0.8 );
setEffScaleKey( spep_3 -3 + 4, ctzuo, 1.45, 1.45 );
setEffScaleKey( spep_3 -3 + 6, ctzuo, 1.73, 1.73 );
setEffScaleKey( spep_3 -3 + 8, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_3 -3 + 18, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_3 -3 + 20, ctzuo, 4.23, 4.23 );
setEffScaleKey( spep_3 -3 + 22, ctzuo, 4.65, 4.65 );
setEffScaleKey( spep_3 -3 + 24, ctzuo, 5.08, 5.08 );
setEffScaleKey( spep_3 -3 + 26, ctzuo, 6.5, 6.5 );

setEffRotateKey( spep_3 + 0, ctzuo, 10 );
setEffRotateKey( spep_3 -3 + 4, ctzuo, 10 );
setEffRotateKey( spep_3 -3 + 6, ctzuo, 5 );
setEffRotateKey( spep_3 -3 + 8, ctzuo, 0 );
setEffRotateKey( spep_3 -3 + 18, ctzuo, 0 );
setEffRotateKey( spep_3 -3 + 20, ctzuo, 3 );
setEffRotateKey( spep_3 -3 + 22, ctzuo, 5 );
setEffRotateKey( spep_3 -3 + 24, ctzuo, 10 );
setEffRotateKey( spep_3 -3 + 26, ctzuo, 15 );

setEffAlphaKey( spep_3 + 0, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 18, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 20, ctzuo, 191 );
setEffAlphaKey( spep_3 -3 + 22, ctzuo, 128 );
setEffAlphaKey( spep_3 -3 + 24, ctzuo, 64 );
setEffAlphaKey( spep_3 -3 + 26, ctzuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 24 +3, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, 15.1, 28.4 -100 , 0 );
setMoveKey( spep_3 +3 + 0, 1, 15.1, 28.4 -80 , 0 );
setMoveKey( spep_3 +3 + 2, 1, 0.6, -44.6 , 0 );
setMoveKey( spep_3 +3 + 4, 1, 38.9, -46 , 0 );
setMoveKey( spep_3 +3 + 6, 1, 56.8, -57.8 , 0 );
setMoveKey( spep_3 +3 + 8, 1, 129.8, -9.3 , 0 );
setMoveKey( spep_3 +3 + 10, 1, 189.8, 51 , 0 );
setMoveKey( spep_3 +3 + 12, 1, 263.4, 124.9 , 0 );
setMoveKey( spep_3 +3 + 14, 1, 350.6, 212.7 , 0 );
setMoveKey( spep_3 +3 + 16, 1, 451.5, 314.3 , 0 );
setMoveKey( spep_3 +3 + 18, 1, 566.1, 429.8 , 0 );
setMoveKey( spep_3 +3 + 20, 1, 694.7, 559.4 , 0 );
setMoveKey( spep_3 +3 + 22, 1, 837.1, 703.1 , 0 );
setMoveKey( spep_3 +3 + 24, 1, 684.1, 678.3 , 0 );

setScaleKey( spep_3 + 0, 1, 0.72, 0.72 );
setScaleKey( spep_3 +3 + 0, 1, 0.72, 0.72 );
setScaleKey( spep_3 +3 + 2, 1, 0.91, 0.91 );
setScaleKey( spep_3 +3 + 4, 1, 1.11, 1.11 );
setScaleKey( spep_3 +3 + 6, 1, 1.33, 1.33 );
setScaleKey( spep_3 +3 + 8, 1, 1.56, 1.56 );
setScaleKey( spep_3 +3 + 10, 1, 1.82, 1.82 );
setScaleKey( spep_3 +3 + 12, 1, 2.14, 2.14 );
setScaleKey( spep_3 +3 + 14, 1, 2.51, 2.51 );
setScaleKey( spep_3 +3 + 16, 1, 2.95, 2.95 );
setScaleKey( spep_3 +3 + 18, 1, 3.44, 3.44 );
setScaleKey( spep_3 +3 + 20, 1, 4, 4 );
setScaleKey( spep_3 +3 + 22, 1, 4.61, 4.61 );
setScaleKey( spep_3 +3 + 24, 1, 4.62, 4.62 );

setRotateKey( spep_3 + 0, 1, -40.1 -50 );
setRotateKey( spep_3 + 2, 1, -39.7 -40 );
setRotateKey( spep_3 +3 + 0, 1, -40.1 -30 );
setRotateKey( spep_3 +3 + 2, 1, -39.7 -15 );
setRotateKey( spep_3 +3 + 4, 1, -38.4 -10 );
setRotateKey( spep_3 +3 + 6, 1, -36.4 -5);
setRotateKey( spep_3 +3 + 8, 1, -33.5 );
setRotateKey( spep_3 +3 + 10, 1, -29.7 );
setRotateKey( spep_3 +3 + 12, 1, -25.2 );
setRotateKey( spep_3 +3 + 14, 1, -19.8 );
setRotateKey( spep_3 +3 + 16, 1, -13.6 );
setRotateKey( spep_3 +3 + 18, 1, -6.6 );
setRotateKey( spep_3 +3 + 20, 1, 1.3 );
setRotateKey( spep_3 +3 + 22, 1, 10 );
setRotateKey( spep_3 +3 + 24, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 68, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 4, 1023 );  --衝撃波

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;


------------------------------------------------------
-- 爆発(106F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --爆発(ef_004)
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 106, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu, -1.0, 1.0 );
setEffScaleKey( spep_4 + 106, bakuhatsu, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 106, bakuhatsu, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 106, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 14, 906, 92, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 14, shuchusen3, 94, 20 );

setEffMoveKey( spep_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 106, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_4 + 106, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 106, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 106, shuchusen3, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 106, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_4 + 16, 1024);  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 16 );
entryFade( spep_4 + 96, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 106 );

end

end --全体必殺技の初回時のEND

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then

spep_z = 0;

setVisibleUI( spep_z, 0 );
setDisp( spep_z, 0, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, -1, 0, 0, -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 );   -- 回避の文字表示
if (_IS_PLAYER_SIDE_ == 1) then

setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0 );

else

setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0 );

end

setEffAlphaKey( SP_dodge, kaihi, 255 );

pauseAll( SP_dodge, 67 );

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

endPhase( SP_dodge + 10 );
do return end
else end

------------------------------------------------------
-- 2人目以降の演出
------------------------------------------------------

-- ** エフェクト等 ** --
uzu = entryEffect( spep_z + 0, SP_05, 0x80, -1, 0, 0, 0 );  --渦(ef_005)
setEffMoveKey( spep_z + 0, uzu, 0, 0 , 0 );
setEffMoveKey( spep_z + 100, uzu, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, uzu, 1.0, 1.0 );
setEffScaleKey( spep_z + 100, uzu, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, uzu, 0 );
setEffRotateKey( spep_z + 100, uzu, 0 );
setEffAlphaKey( spep_z + 0, uzu, 255 );
setEffAlphaKey( spep_z + 100, uzu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_z + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_z + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_z + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_z + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_z + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_z + 2, hibiware, 0 );
setEffRotateKey( spep_z + 100, hibiware, 0 );

setEffAlphaKey( spep_z + 2, hibiware, 0 );
setEffAlphaKey( spep_z + 13, hibiware, 0 );
setEffAlphaKey( spep_z + 14, hibiware, 255 );
setEffAlphaKey( spep_z + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_z + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_z + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_z + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_z + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_z + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_z + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_z + 14, shuchusen4, 0 );
setEffRotateKey( spep_z + 46, shuchusen4, 0 );

setEffAlphaKey( spep_z + 14, shuchusen4, 255 );
setEffAlphaKey( spep_z + 28, shuchusen4, 255 );
setEffAlphaKey( spep_z + 30, shuchusen4, 252 );
setEffAlphaKey( spep_z + 32, shuchusen4, 242 );
setEffAlphaKey( spep_z + 34, shuchusen4, 227 );
setEffAlphaKey( spep_z + 36, shuchusen4, 205 );
setEffAlphaKey( spep_z + 38, shuchusen4, 176 );
setEffAlphaKey( spep_z + 40, shuchusen4, 142 );
setEffAlphaKey( spep_z + 42, shuchusen4, 101 );
setEffAlphaKey( spep_z + 44, shuchusen4, 54 );
setEffAlphaKey( spep_z + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_z + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_z + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_z + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_z + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_z + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_z + 14, shuchusen5, 0 );
setEffRotateKey( spep_z + 100, shuchusen5, 0 );

setEffAlphaKey( spep_z + 14, shuchusen5, 255 );
setEffAlphaKey( spep_z + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga2 = entryEffectLife( spep_z + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_z + 14, ctga2, 14, 20 );

setEffMoveKey( spep_z + 14, ctga2, 3.9, 316.1 , 0 );
setEffMoveKey( spep_z + 28, ctga2, 3.9, 316.1 , 0 );
setEffMoveKey( spep_z + 100, ctga2, 3.9, 316.1 , 0 );

setEffScaleKey( spep_z + 14, ctga2, 3.2, 3.2 );
setEffScaleKey( spep_z + 100, ctga2, 3.2, 3.2 );

setEffRotateKey( spep_z + 14, ctga2, -10.9 );
setEffRotateKey( spep_z + 15, ctga2, -10.9 );
setEffRotateKey( spep_z + 16, ctga2, -14.9 );
setEffRotateKey( spep_z + 17, ctga2, -14.9 );
setEffRotateKey( spep_z + 18, ctga2, -10.9 );
setEffRotateKey( spep_z + 19, ctga2, -10.9 );
setEffRotateKey( spep_z + 20, ctga2, -14.9 );
setEffRotateKey( spep_z + 21, ctga2, -14.9 );
setEffRotateKey( spep_z + 22, ctga2, -10.9 );
setEffRotateKey( spep_z + 23, ctga2, -10.9 );
setEffRotateKey( spep_z + 24, ctga2, -14.9 );
setEffRotateKey( spep_z + 25, ctga2, -14.9 );
setEffRotateKey( spep_z + 26, ctga2, -10.9 );
setEffRotateKey( spep_z + 27, ctga2, -10.9 );
setEffRotateKey( spep_z + 28, ctga2, -14.9 );
setEffRotateKey( spep_z + 100, ctga2, -14.9 );

setEffAlphaKey( spep_z + 14, ctga2, 255 );
setEffAlphaKey( spep_z + 100, ctga2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
changeAnime( spep_z + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_z + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_z + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_z + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_z + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_z + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_z + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_z + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_z + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_z + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_z + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_z + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_z + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_z + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_z + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_z + 0, 1, 0.2, 0.2 );
setScaleKey( spep_z + 1, 1, 0.2, 0.2 );
setScaleKey( spep_z + 2, 1, 0.25, 0.25 );
setScaleKey( spep_z + 3, 1, 0.25, 0.25 );
setScaleKey( spep_z + 4, 1, 0.46, 0.46 );
setScaleKey( spep_z + 5, 1, 0.46, 0.46 );
setScaleKey( spep_z + 6, 1, 0.55, 0.55 );
setScaleKey( spep_z + 7, 1, 0.55, 0.55 );
setScaleKey( spep_z + 8, 1, 0.71, 0.71 );
setScaleKey( spep_z + 9, 1, 0.71, 0.71 );
setScaleKey( spep_z + 10, 1, 0.97, 0.97 );
setScaleKey( spep_z + 11, 1, 0.97, 0.97 );
setScaleKey( spep_z + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_z + 13, 1, 1.1, 1.1 );
setScaleKey( spep_z + 14, 1, 1.2, 1.2 );
setScaleKey( spep_z + 15, 1, 1.2, 1.2 );
setScaleKey( spep_z + 16, 1, 1.1, 1.1 );
setScaleKey( spep_z + 17, 1, 1.1, 1.1 );
setScaleKey( spep_z + 18, 1, 1.2, 1.2 );
setScaleKey( spep_z + 19, 1, 1.2, 1.2 );
setScaleKey( spep_z + 20, 1, 1.1, 1.1 );
setScaleKey( spep_z + 21, 1, 1.1, 1.1 );
setScaleKey( spep_z + 22, 1, 1.2, 1.2 );
setScaleKey( spep_z + 23, 1, 1.2, 1.2 );
setScaleKey( spep_z + 24, 1, 1.1, 1.1 );
setScaleKey( spep_z + 25, 1, 1.1, 1.1 );
setScaleKey( spep_z + 26, 1, 1.2, 1.2 );
setScaleKey( spep_z + 100, 1, 1.2, 1.2 );

setRotateKey( spep_z + 0, 1, -40 );
setRotateKey( spep_z + 1, 1, -40 );
setRotateKey( spep_z + 2, 1, 80 );
setRotateKey( spep_z + 3, 1, 80 );
setRotateKey( spep_z + 4, 1, 200 );
setRotateKey( spep_z + 5, 1, 200 );
setRotateKey( spep_z + 6, 1, 360 );
setRotateKey( spep_z + 7, 1, 360 );
setRotateKey( spep_z + 8, 1, 558 );
setRotateKey( spep_z + 9, 1, 558 );
setRotateKey( spep_z + 10, 1, 425 );
setRotateKey( spep_z + 11, 1, 425 );
setRotateKey( spep_z + 12, 1, -40 );
setRotateKey( spep_z + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_z + 0, SE_10 );  --爆発音
setSeVolume(spep_z + 0, SE_10, 70 );
playSe( spep_z + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_z + 10 );
entryFade( spep_z + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_z + 100 );

end



--孫悟空（GT）_超ウルトラ元気玉

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
SP_01 = 152961; --元気玉上昇１
SP_02 = 152962; --元気玉上昇２
SP_03 = 152963; --元気玉上昇３
SP_04 = 152964; --構え
SP_05 = 152966; --投げる
SP_06 = 152968; --被弾
SP_07 = 152969; --ギャン青
SP_08 = 152970; --爆破

--敵側
SP_04r = 152965; --構え
SP_05r = 152967; --投げる

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
-- 元気玉上昇１(88F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
jousyo1 = entryEffectLife( spep_0 + 0, SP_01, 88, 0x100, -1, 0, 0, 0 );  --元気玉上昇(ef_001)
setEffMoveKey( spep_0 + 0, jousyo1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, jousyo1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, jousyo1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 88, jousyo1, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, jousyo1, 255 );
setEffAlphaKey( spep_0 + 88, jousyo1, 255 );
setEffRotateKey( spep_0 + 0, jousyo1, 0 );
setEffRotateKey( spep_0 + 88, jousyo1, 0 );

-- ** 音 ** --
playSe( spep_0 + 2, 1034 );
playSe( spep_0 + 32, 1034 );
playSe( spep_0 + 62, 1034 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 74, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 88;

------------------------------------------------------
-- 元気玉上昇２(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
jousyo2 = entryEffectLife( spep_1 + 0, SP_02, 78, 0x100, -1, 0, 0, 0 );  --元気玉上昇(ef_002)
setEffMoveKey( spep_1 + 0, jousyo2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 78, jousyo2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jousyo2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 78, jousyo2, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, jousyo2, 255 );
setEffAlphaKey( spep_1 + 78, jousyo2, 255 );
setEffRotateKey( spep_1 + 0, jousyo2, 0 );
setEffRotateKey( spep_1 + 78, jousyo2, 0 );

-- ** 音 ** --
playSe( spep_1 + 2, 1034 );
playSe( spep_1 + 32, 1034 );
playSe( spep_1 + 62, 1034 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 64, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 78;

------------------------------------------------------
-- 元気玉上昇３(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
jousyo3 = entryEffectLife( spep_2 + 0, SP_03, 78, 0x100, -1, 0, 0, 0 );  --元気玉上昇(ef_003)
setEffMoveKey( spep_2 + 0, jousyo3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, jousyo3, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, jousyo3, 1.0, 1.0 );
setEffScaleKey( spep_2 + 78, jousyo3, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, jousyo3, 255 );
setEffAlphaKey( spep_2 + 78, jousyo3, 255 );
setEffRotateKey( spep_2 + 0, jousyo3, 0 );
setEffRotateKey( spep_2 + 78, jousyo3, 0 );

-- ** 音 ** --
playSe( spep_2 + 12, 1034 );
playSe( spep_2 + 42, 1034 );
playSe( spep_2 + 72, 1034 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 60, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 78;

------------------------------------------------------
-- 構え(148F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_3 + 0, SP_04, 148, 0x100, -1, 0, 0, 0 );  --構え(ef_004)
setEffMoveKey( spep_3 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_3 + 148, kamae, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_3 + 148, kamae, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, kamae, 255 );
setEffAlphaKey( spep_3 + 148, kamae, 255 );
setEffRotateKey( spep_3 + 0, kamae, 0 );
setEffRotateKey( spep_3 + 148, kamae, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 148, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

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
--speff = entryEffect( spep_3 + 50, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 50, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
playSe( spep_3 + 50, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_3 + 130, 8, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 148;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

--[[
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
]]

--極限Z覚醒構文

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen1, 0 );
setEffRotateKey( spep_4 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen1, 255 );

-- ** 音 ** --
--playSe( spep_4 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 投げる(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
nageru = entryEffectLife( spep_5 + 0, SP_05, 136, 0x100, -1, 0, 0, 0 );  --投げる(ef_005)
setEffMoveKey( spep_5 + 0, nageru, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, nageru, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, nageru, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, nageru, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, nageru, 255 );
setEffAlphaKey( spep_5 + 135, nageru, 255 );
setEffAlphaKey( spep_5 + 136, nageru, 0 );
setEffRotateKey( spep_5 + 0, nageru, 0 );
setEffRotateKey( spep_5 + 136, nageru, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_5 + 0,  920, 34, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_5 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_5 + 34, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen1, 5.22, 2.61 );
setEffScaleKey( spep_5 + 34, ryusen1, 5.22, 2.61 );

setEffRotateKey( spep_5 + 0, ryusen1, 69 );
setEffRotateKey( spep_5 + 34, ryusen1, 69 );

setEffAlphaKey( spep_5 + 0, ryusen1, 255 );
setEffAlphaKey( spep_5 + 34, ryusen1, 255 );

ryusen2 = entryEffectLife( spep_5 + 34,  921, 102, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_5 + 34, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 34, ryusen2, 1.69, 1.69 );
setEffScaleKey( spep_5 + 136, ryusen2, 1.69, 1.69 );

setEffRotateKey( spep_5 + 34, ryusen2, -122 );
setEffRotateKey( spep_5 + 136, ryusen2, -122 );

setEffAlphaKey( spep_5 + 34, ryusen2, 0 );
setEffAlphaKey( spep_5 + 35, ryusen2, 200 );
setEffAlphaKey( spep_5 + 136, ryusen2, 200 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5 + 0,  906, 48, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen2, 48, 25 );

setEffMoveKey( spep_5 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 48, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_5 + 38, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_5 + 40, shuchusen2, 1.54, 1.54 );
setEffScaleKey( spep_5 + 42, shuchusen2, 1.66, 1.66 );
setEffScaleKey( spep_5 + 44, shuchusen2, 1.86, 1.86 );
setEffScaleKey( spep_5 + 46, shuchusen2, 2.14, 2.14 );
setEffScaleKey( spep_5 + 48, shuchusen2, 2.5, 2.5 );

setEffRotateKey( spep_5 + 0, shuchusen2, 0 );
setEffRotateKey( spep_5 + 48, shuchusen2, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_5 + 48, shuchusen2, 255 );

-- ** 書き文字 ** --
ctzuo = entryEffectLife( spep_5 + 34,  10012, 44, 0x100, -1, 0, 76, 259.9 );  --ズオッ
setEffShake( spep_5 + 38, ctzuo, 30, 30 );

setEffMoveKey( spep_5 + 34, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_5 + 35, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_5 + 36, ctzuo, 105, 300.9 , 0 );
setEffMoveKey( spep_5 + 38, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_5 + 68, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_5 + 70, ctzuo, 124, 359.9 , 0 );
setEffMoveKey( spep_5 + 72, ctzuo, 157.6, 334.3 , 0 );
setEffMoveKey( spep_5 + 74, ctzuo, 139.9, 359.9 , 0 );
setEffMoveKey( spep_5 + 76, ctzuo, 183.2, 324.7 , 0 );
setEffMoveKey( spep_5 + 78, ctzuo, 196, 319.9 , 0 );

setEffScaleKey( spep_5 + 34, ctzuo, 0.5, 0.5 );
setEffScaleKey( spep_5 + 35, ctzuo, 0.5, 0.5 );
setEffScaleKey( spep_5 + 36, ctzuo, 1.2, 1.2 );
setEffScaleKey( spep_5 + 38, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_5 + 68, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_5 + 70, ctzuo, 3.3, 3.3 );
setEffScaleKey( spep_5 + 72, ctzuo, 3.6, 3.6 );
setEffScaleKey( spep_5 + 74, ctzuo, 3.8, 3.8 );
setEffScaleKey( spep_5 + 76, ctzuo, 4.3, 4.3 );
setEffScaleKey( spep_5 + 78, ctzuo, 6, 6 );

setEffRotateKey( spep_5 + 34, ctzuo, 40 );
setEffRotateKey( spep_5 + 78, ctzuo, 40 );

setEffAlphaKey( spep_5 + 34, ctzuo, 0 );
setEffAlphaKey( spep_5 + 35, ctzuo, 255 );
setEffAlphaKey( spep_5 + 68, ctzuo, 255 );
setEffAlphaKey( spep_5 + 70, ctzuo, 204 );
setEffAlphaKey( spep_5 + 72, ctzuo, 153 );
setEffAlphaKey( spep_5 + 74, ctzuo, 102 );
setEffAlphaKey( spep_5 + 76, ctzuo, 51 );
setEffAlphaKey( spep_5 + 78, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 35, 0, 0, 0, 0, 255 );  --黒　背景
entryFadeBg( spep_5 + 35, 0, 102, 0, 0, 75, 76, 255 );  --薄い青　背景

-- ** 音 ** --
playSe( spep_5 + 36, 1002 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 136;

------------------------------------------------------
-- 被弾(98F)
------------------------------------------------------

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_6 + 0,  921, 36, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_6 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 36, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryusen2, 1.7, 1.7 );
setEffScaleKey( spep_6 + 36, ryusen2, 1.7, 1.7 );

setEffRotateKey( spep_6 + 0, ryusen2, -137.6 );
setEffRotateKey( spep_6 + 36, ryusen2, -137.6 );

setEffAlphaKey( spep_6 + 0, ryusen2, 255 );
setEffAlphaKey( spep_6 + 36, ryusen2, 255 );

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_6 + 0, SP_06, 36, 0x80, -1, 0, 0, 0 );  --被弾(ef_006)
setEffMoveKey( spep_6 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 36, hidan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 36, hidan, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, hidan, 255 );
setEffAlphaKey( spep_6 + 35, hidan, 255 );
setEffAlphaKey( spep_6 + 36, hidan, 0 );
setEffRotateKey( spep_6 + 0, hidan, 0 );
setEffRotateKey( spep_6 + 36, hidan, 0 );

gyan = entryEffectLife( spep_6 + 36, SP_07, 62, 0x100, -1, 0, 0, 0 );  --ギャン青(ef_007)
setEffMoveKey( spep_6 + 36, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 36, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 98, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 36, gyan, 255 );
setEffAlphaKey( spep_6 + 98, gyan, 255 );
setEffRotateKey( spep_6 + 36, gyan, 0 );
setEffRotateKey( spep_6 + 98, gyan, 0 );

-- ** 書き文字 ** --
ctzudo = entryEffectLife( spep_6 + 0,  10014, 36, 0x100, -1, 0, 58.1, 304 );  --ズドドドッ
setEffShake( spep_6 + 0, ctzudo, 36, 30 );

setEffMoveKey( spep_6 + 0, ctzudo, 58.1, 304 , 0 );
setEffMoveKey( spep_6 + 36, ctzudo, 58.1, 304 , 0 );

setEffScaleKey( spep_6 + 0, ctzudo, 3, 3 );
setEffScaleKey( spep_6 + 36, ctzudo, 3, 3 );

setEffRotateKey( spep_6 + 0, ctzudo, 80 );
setEffRotateKey( spep_6 + 36, ctzudo, 80 );

setEffAlphaKey( spep_6 + 0, ctzudo, 255 );
setEffAlphaKey( spep_6 + 35, ctzudo, 255 );
setEffAlphaKey( spep_6 + 36, ctzudo, 0 );

ctgyan = entryEffectLife( spep_6 + 36,  10006, 62, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_6 + 36, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_6 + 98, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_6 + 36, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_6 + 44, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 42, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_6 + 46, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_6 + 48, ctgyan, 3, 3 );
setEffScaleKey( spep_6 + 50, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_6 + 52, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_6 + 54, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_6 + 56, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_6 + 58, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_6 + 60, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_6 + 62, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_6 + 64, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_6 + 66, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_6 + 68, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_6 + 70, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_6 + 72, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_6 + 74, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_6 + 76, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_6 + 78, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_6 + 80, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_6 + 82, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_6 + 84, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_6 + 86, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_6 + 88, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_6 + 90, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_6 + 92, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_6 + 94, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_6 + 96, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_6 + 98, ctgyan, 5, 5 );

setEffRotateKey( spep_6 + 36, ctgyan, 0 );
setEffRotateKey( spep_6 + 98, ctgyan, 0 );

setEffAlphaKey( spep_6 + 36, ctgyan, 255 );
setEffAlphaKey( spep_6 + 98, ctgyan, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 36, 1, 0 );
changeAnime( spep_6 + 0, 1, 118 );

setMoveKey( spep_6 + 0, 1, 503.8, -607.8 , 0 );
setMoveKey( spep_6 + 2, 1, 460.7, -548.6 , 0 );
setMoveKey( spep_6 + 4, 1, 399.6, -505.4 , 0 );
setMoveKey( spep_6 + 6, 1, 354.5, -450.3 , 0 );
setMoveKey( spep_6 + 8, 1, 293.3, -407.1 , 0 );
setMoveKey( spep_6 + 10, 1, 248.2, -351.9 , 0 );
setMoveKey( spep_6 + 12, 1, 187.2, -308.7 , 0 );
setMoveKey( spep_6 + 14, 1, 142, -253.5 , 0 );
setMoveKey( spep_6 + 16, 1, 138, -263.2 , 0 );
setMoveKey( spep_6 + 18, 1, 150, -260.8 , 0 );
setMoveKey( spep_6 + 20, 1, 146, -270.5 , 0 );
setMoveKey( spep_6 + 22, 1, 158, -268.2 , 0 );
setMoveKey( spep_6 + 24, 1, 154, -277.8 , 0 );
setMoveKey( spep_6 + 26, 1, 166, -275.5 , 0 );
setMoveKey( spep_6 + 28, 1, 162, -285.2 , 0 );
setMoveKey( spep_6 + 30, 1, 174, -282.8 , 0 );
setMoveKey( spep_6 + 32, 1, 170, -292.5 , 0 );
setMoveKey( spep_6 + 34, 1, 182, -290.2 , 0 );
setMoveKey( spep_6 + 36, 1, 178, -299.8 , 0 );

setScaleKey( spep_6 + 0, 1, 1, 1 );
setScaleKey( spep_6 + 2, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 4, 1, 0.89, 0.89 );
setScaleKey( spep_6 + 6, 1, 0.83, 0.83 );
setScaleKey( spep_6 + 8, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 10, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 12, 1, 0.66, 0.66 );
setScaleKey( spep_6 + 14, 1, 0.6, 0.6 );
setScaleKey( spep_6 + 16, 1, 0.6, 0.6 );
setScaleKey( spep_6 + 18, 1, 0.61, 0.61 );
setScaleKey( spep_6 + 20, 1, 0.61, 0.61 );
setScaleKey( spep_6 + 22, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 24, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 26, 1, 0.65, 0.65 );
setScaleKey( spep_6 + 28, 1, 0.68, 0.68 );
setScaleKey( spep_6 + 30, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_6 + 34, 1, 0.76, 0.76 );
setScaleKey( spep_6 + 36, 1, 0.79, 0.79 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 36, 1, 0 );

-- ** 音 ** --
SEzudo = playSe( spep_6 + 0, 1044 );
stopSe( spep_6 + 46, SEzudo, 5 );
playSe( spep_6 + 36, 1023 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_6 + 60, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 98;

------------------------------------------------------
-- 爆破(226F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --爆破(ef_008)
setEffMoveKey( spep_7 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_7 + 226, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_7 + 226, bakuha, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, bakuha, 255 );
setEffAlphaKey( spep_7 + 226, bakuha, 255 );
setEffRotateKey( spep_7 + 0, bakuha, 0 );
setEffRotateKey( spep_7 + 226, bakuha, 0 );

-- ** 音 ** --
playSe( spep_7 + 2, 1024 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 0, 0, 2, 18, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 56 );
entryFade( spep_7 + 216, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 226 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 元気玉上昇１(88F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
jousyo1 = entryEffectLife( spep_0 + 0, SP_01, 88, 0x100, -1, 0, 0, 0 );  --元気玉上昇(ef_001)
setEffMoveKey( spep_0 + 0, jousyo1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, jousyo1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, jousyo1, -1.0, 1.0 );
setEffScaleKey( spep_0 + 88, jousyo1, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, jousyo1, 255 );
setEffAlphaKey( spep_0 + 88, jousyo1, 255 );
setEffRotateKey( spep_0 + 0, jousyo1, 0 );
setEffRotateKey( spep_0 + 88, jousyo1, 0 );

-- ** 音 ** --
playSe( spep_0 + 2, 1034 );
playSe( spep_0 + 32, 1034 );
playSe( spep_0 + 62, 1034 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 74, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 88;

------------------------------------------------------
-- 元気玉上昇２(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
jousyo2 = entryEffectLife( spep_1 + 0, SP_02, 78, 0x100, -1, 0, 0, 0 );  --元気玉上昇(ef_002)
setEffMoveKey( spep_1 + 0, jousyo2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 78, jousyo2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jousyo2, -1.0, 1.0 );
setEffScaleKey( spep_1 + 78, jousyo2, -1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, jousyo2, 255 );
setEffAlphaKey( spep_1 + 78, jousyo2, 255 );
setEffRotateKey( spep_1 + 0, jousyo2, 0 );
setEffRotateKey( spep_1 + 78, jousyo2, 0 );

-- ** 音 ** --
playSe( spep_1 + 2, 1034 );
playSe( spep_1 + 32, 1034 );
playSe( spep_1 + 62, 1034 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 64, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 78;

------------------------------------------------------
-- 元気玉上昇３(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
jousyo3 = entryEffectLife( spep_2 + 0, SP_03, 78, 0x100, -1, 0, 0, 0 );  --元気玉上昇(ef_003)
setEffMoveKey( spep_2 + 0, jousyo3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 78, jousyo3, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, jousyo3, -1.0, 1.0 );
setEffScaleKey( spep_2 + 78, jousyo3, -1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, jousyo3, 255 );
setEffAlphaKey( spep_2 + 78, jousyo3, 255 );
setEffRotateKey( spep_2 + 0, jousyo3, 0 );
setEffRotateKey( spep_2 + 78, jousyo3, 0 );

-- ** 音 ** --
playSe( spep_2 + 12, 1034 );
playSe( spep_2 + 42, 1034 );
playSe( spep_2 + 72, 1034 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 60, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 78;

------------------------------------------------------
-- 構え(148F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_3 + 0, SP_04r, 148, 0x100, -1, 0, 0, 0 );  --構え(ef_004)
setEffMoveKey( spep_3 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_3 + 148, kamae, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_3 + 148, kamae, 1.0, 1.0 );
setEffAlphaKey( spep_3 + 0, kamae, 255 );
setEffAlphaKey( spep_3 + 148, kamae, 255 );
setEffRotateKey( spep_3 + 0, kamae, 0 );
setEffRotateKey( spep_3 + 148, kamae, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 148, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

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
--speff = entryEffect( spep_3 + 50, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 50, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
playSe( spep_3 + 50, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_3 + 130, 8, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 148;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

--[[
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
]]

--極限Z覚醒構文

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen1, 0 );
setEffRotateKey( spep_4 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen1, 255 );

-- ** 音 ** --
--playSe( spep_4 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 投げる(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
nageru = entryEffectLife( spep_5 + 0, SP_05r, 136, 0x100, -1, 0, 0, 0 );  --投げる(ef_005)
setEffMoveKey( spep_5 + 0, nageru, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, nageru, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, nageru, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, nageru, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, nageru, 255 );
setEffAlphaKey( spep_5 + 135, nageru, 255 );
setEffAlphaKey( spep_5 + 136, nageru, 0 );
setEffRotateKey( spep_5 + 0, nageru, 0 );
setEffRotateKey( spep_5 + 136, nageru, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_5 + 0,  920, 34, 0x80, -1, 0, 0, 0 );  --細い流線
setEffMoveKey( spep_5 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_5 + 34, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen1, 5.22, 2.61 );
setEffScaleKey( spep_5 + 34, ryusen1, 5.22, 2.61 );

setEffRotateKey( spep_5 + 0, ryusen1, 69 );
setEffRotateKey( spep_5 + 34, ryusen1, 69 );

setEffAlphaKey( spep_5 + 0, ryusen1, 255 );
setEffAlphaKey( spep_5 + 34, ryusen1, 255 );

ryusen2 = entryEffectLife( spep_5 + 34,  921, 102, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_5 + 34, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 34, ryusen2, 1.69, 1.69 );
setEffScaleKey( spep_5 + 136, ryusen2, 1.69, 1.69 );

setEffRotateKey( spep_5 + 34, ryusen2, -122 );
setEffRotateKey( spep_5 + 136, ryusen2, -122 );

setEffAlphaKey( spep_5 + 34, ryusen2, 0 );
setEffAlphaKey( spep_5 + 35, ryusen2, 200 );
setEffAlphaKey( spep_5 + 136, ryusen2, 200 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5 + 0,  906, 48, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen2, 48, 25 );

setEffMoveKey( spep_5 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 48, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_5 + 38, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_5 + 40, shuchusen2, 1.54, 1.54 );
setEffScaleKey( spep_5 + 42, shuchusen2, 1.66, 1.66 );
setEffScaleKey( spep_5 + 44, shuchusen2, 1.86, 1.86 );
setEffScaleKey( spep_5 + 46, shuchusen2, 2.14, 2.14 );
setEffScaleKey( spep_5 + 48, shuchusen2, 2.5, 2.5 );

setEffRotateKey( spep_5 + 0, shuchusen2, 0 );
setEffRotateKey( spep_5 + 48, shuchusen2, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_5 + 48, shuchusen2, 255 );

-- ** 書き文字 ** --
ctzuo = entryEffectLife( spep_5 + 34,  10012, 44, 0x100, -1, 0, 76, 259.9 );  --ズオッ
setEffShake( spep_5 + 38, ctzuo, 30, 30 );

setEffMoveKey( spep_5 + 34, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_5 + 35, ctzuo, 76, 259.9 , 0 );
setEffMoveKey( spep_5 + 36, ctzuo, 105, 300.9 , 0 );
setEffMoveKey( spep_5 + 38, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_5 + 68, ctzuo, 132, 343.9 , 0 );
setEffMoveKey( spep_5 + 70, ctzuo, 124, 359.9 , 0 );
setEffMoveKey( spep_5 + 72, ctzuo, 157.6, 334.3 , 0 );
setEffMoveKey( spep_5 + 74, ctzuo, 139.9, 359.9 , 0 );
setEffMoveKey( spep_5 + 76, ctzuo, 183.2, 324.7 , 0 );
setEffMoveKey( spep_5 + 78, ctzuo, 196, 319.9 , 0 );

setEffScaleKey( spep_5 + 34, ctzuo, 0.5, 0.5 );
setEffScaleKey( spep_5 + 35, ctzuo, 0.5, 0.5 );
setEffScaleKey( spep_5 + 36, ctzuo, 1.2, 1.2 );
setEffScaleKey( spep_5 + 38, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_5 + 68, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_5 + 70, ctzuo, 3.3, 3.3 );
setEffScaleKey( spep_5 + 72, ctzuo, 3.6, 3.6 );
setEffScaleKey( spep_5 + 74, ctzuo, 3.8, 3.8 );
setEffScaleKey( spep_5 + 76, ctzuo, 4.3, 4.3 );
setEffScaleKey( spep_5 + 78, ctzuo, 6, 6 );

setEffRotateKey( spep_5 + 34, ctzuo, 40 );
setEffRotateKey( spep_5 + 78, ctzuo, 40 );

setEffAlphaKey( spep_5 + 34, ctzuo, 0 );
setEffAlphaKey( spep_5 + 35, ctzuo, 255 );
setEffAlphaKey( spep_5 + 68, ctzuo, 255 );
setEffAlphaKey( spep_5 + 70, ctzuo, 204 );
setEffAlphaKey( spep_5 + 72, ctzuo, 153 );
setEffAlphaKey( spep_5 + 74, ctzuo, 102 );
setEffAlphaKey( spep_5 + 76, ctzuo, 51 );
setEffAlphaKey( spep_5 + 78, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 35, 0, 0, 0, 0, 255 );  --黒　背景
entryFadeBg( spep_5 + 35, 0, 102, 0, 0, 75, 76, 255 ); --薄い青　背景

-- ** 音 ** --
playSe( spep_5 + 36, 1002 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 136;

------------------------------------------------------
-- 被弾(98F)
------------------------------------------------------

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_6 + 0,  921, 36, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_6 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_6 + 36, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryusen2, 1.7, 1.7 );
setEffScaleKey( spep_6 + 36, ryusen2, 1.7, 1.7 );

setEffRotateKey( spep_6 + 0, ryusen2, -137.6 );
setEffRotateKey( spep_6 + 36, ryusen2, -137.6 );

setEffAlphaKey( spep_6 + 0, ryusen2, 255 );
setEffAlphaKey( spep_6 + 36, ryusen2, 255 );

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_6 + 0, SP_06, 36, 0x80, -1, 0, 0, 0 );  --被弾(ef_006)
setEffMoveKey( spep_6 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 36, hidan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 36, hidan, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, hidan, 255 );
setEffAlphaKey( spep_6 + 35, hidan, 255 );
setEffAlphaKey( spep_6 + 36, hidan, 0 );
setEffRotateKey( spep_6 + 0, hidan, 0 );
setEffRotateKey( spep_6 + 36, hidan, 0 );

gyan = entryEffectLife( spep_6 + 36, SP_07, 62, 0x100, -1, 0, 0, 0 );  --ギャン青(ef_007)
setEffMoveKey( spep_6 + 36, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 36, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 98, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 36, gyan, 255 );
setEffAlphaKey( spep_6 + 98, gyan, 255 );
setEffRotateKey( spep_6 + 36, gyan, 0 );
setEffRotateKey( spep_6 + 98, gyan, 0 );

-- ** 書き文字 ** --
ctzudo = entryEffectLife( spep_6 + 0,  10014, 36, 0x100, -1, 0, 58.1, 304 );  --ズドドドッ
setEffShake( spep_6 + 0, ctzudo, 36, 30 );

setEffMoveKey( spep_6 + 0, ctzudo, 58.1, 304 , 0 );
setEffMoveKey( spep_6 + 36, ctzudo, 58.1, 304 , 0 );

setEffScaleKey( spep_6 + 0, ctzudo, 3, 3 );
setEffScaleKey( spep_6 + 36, ctzudo, 3, 3 );

setEffRotateKey( spep_6 + 0, ctzudo, 0 );
setEffRotateKey( spep_6 + 36, ctzudo, 0 );

setEffAlphaKey( spep_6 + 0, ctzudo, 255 );
setEffAlphaKey( spep_6 + 35, ctzudo, 255 );
setEffAlphaKey( spep_6 + 36, ctzudo, 0 );

ctgyan = entryEffectLife( spep_6 + 36,  10006, 62, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_6 + 36, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_6 + 98, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_6 + 36, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_6 + 44, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 42, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_6 + 46, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_6 + 48, ctgyan, 3, 3 );
setEffScaleKey( spep_6 + 50, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_6 + 52, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_6 + 54, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_6 + 56, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_6 + 58, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_6 + 60, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_6 + 62, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_6 + 64, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_6 + 66, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_6 + 68, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_6 + 70, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_6 + 72, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_6 + 74, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_6 + 76, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_6 + 78, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_6 + 80, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_6 + 82, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_6 + 84, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_6 + 86, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_6 + 88, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_6 + 90, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_6 + 92, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_6 + 94, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_6 + 96, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_6 + 98, ctgyan, 5, 5 );

setEffRotateKey( spep_6 + 36, ctgyan, 0 );
setEffRotateKey( spep_6 + 98, ctgyan, 0 );

setEffAlphaKey( spep_6 + 36, ctgyan, 255 );
setEffAlphaKey( spep_6 + 98, ctgyan, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 36, 1, 0 );
changeAnime( spep_6 + 0, 1, 118 );

setMoveKey( spep_6 + 0, 1, 503.8, -607.8 , 0 );
setMoveKey( spep_6 + 2, 1, 460.7, -548.6 , 0 );
setMoveKey( spep_6 + 4, 1, 399.6, -505.4 , 0 );
setMoveKey( spep_6 + 6, 1, 354.5, -450.3 , 0 );
setMoveKey( spep_6 + 8, 1, 293.3, -407.1 , 0 );
setMoveKey( spep_6 + 10, 1, 248.2, -351.9 , 0 );
setMoveKey( spep_6 + 12, 1, 187.2, -308.7 , 0 );
setMoveKey( spep_6 + 14, 1, 142, -253.5 , 0 );
setMoveKey( spep_6 + 16, 1, 138, -263.2 , 0 );
setMoveKey( spep_6 + 18, 1, 150, -260.8 , 0 );
setMoveKey( spep_6 + 20, 1, 146, -270.5 , 0 );
setMoveKey( spep_6 + 22, 1, 158, -268.2 , 0 );
setMoveKey( spep_6 + 24, 1, 154, -277.8 , 0 );
setMoveKey( spep_6 + 26, 1, 166, -275.5 , 0 );
setMoveKey( spep_6 + 28, 1, 162, -285.2 , 0 );
setMoveKey( spep_6 + 30, 1, 174, -282.8 , 0 );
setMoveKey( spep_6 + 32, 1, 170, -292.5 , 0 );
setMoveKey( spep_6 + 34, 1, 182, -290.2 , 0 );
setMoveKey( spep_6 + 36, 1, 178, -299.8 , 0 );

setScaleKey( spep_6 + 0, 1, 1, 1 );
setScaleKey( spep_6 + 2, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 4, 1, 0.89, 0.89 );
setScaleKey( spep_6 + 6, 1, 0.83, 0.83 );
setScaleKey( spep_6 + 8, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 10, 1, 0.71, 0.71 );
setScaleKey( spep_6 + 12, 1, 0.66, 0.66 );
setScaleKey( spep_6 + 14, 1, 0.6, 0.6 );
setScaleKey( spep_6 + 16, 1, 0.6, 0.6 );
setScaleKey( spep_6 + 18, 1, 0.61, 0.61 );
setScaleKey( spep_6 + 20, 1, 0.61, 0.61 );
setScaleKey( spep_6 + 22, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 24, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 26, 1, 0.65, 0.65 );
setScaleKey( spep_6 + 28, 1, 0.68, 0.68 );
setScaleKey( spep_6 + 30, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_6 + 34, 1, 0.76, 0.76 );
setScaleKey( spep_6 + 36, 1, 0.79, 0.79 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 36, 1, 0 );

-- ** 音 ** --
SEzudo = playSe( spep_6 + 0, 1044 );
stopSe( spep_6 + 46, SEzudo, 5 );
playSe( spep_6 + 36, 1023 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_6 + 60, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 98;

------------------------------------------------------
-- 爆破(226F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuha = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --爆破(ef_008)
setEffMoveKey( spep_7 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_7 + 226, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_7 + 226, bakuha, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, bakuha, 255 );
setEffAlphaKey( spep_7 + 226, bakuha, 255 );
setEffRotateKey( spep_7 + 0, bakuha, 0 );
setEffRotateKey( spep_7 + 226, bakuha, 0 );

-- ** 音 ** --
playSe( spep_7 + 2, 1024 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 226, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 0, 0, 2, 18, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 56 );
entryFade( spep_7 + 216, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 226 );

end



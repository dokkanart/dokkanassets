--sp0441 超サイヤ人2ケール レジストブラスト

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

--味方側
SP_01 = 151337;--気溜め１　90f
SP_02 = 151338;--気溜め２　94f
SP_03 = 151339;--発射　60f
SP_04 = 151341;--迫る〜命中　70f
SP_05 = 151342;--撃っている～力増し 126　
SP_06 = 151343;--敵影 70

--敵側は味方側に1eをつけてます
SP_01e = 151373;--気溜め１　90f

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, 0,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, 0,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, 0,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め１(90F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

-- ** 背景 ** --
entryFadeBg( spep_0, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
kidame_1 = entryEffect( spep_0, SP_01, 0, -1, 0, 0, 60);   --気溜め１　19f
setEffScaleKey( spep_0, kidame_1, 1.2, 1.2);
setEffAlphaKey( spep_0, kidame_1, 255);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_0, shuchusen, 0, 0, 0);
setEffScaleKey( spep_0, shuchusen, 1.2, 1.2);
setEffAlphaKey( spep_0, shuchusen, 255);
setEffRotateKey( spep_0, shuchusen, 0);

-- ** 音 ** --
playSe( spep_0+23, SE_05);

-- ** 次の準備 ** --
spep_1 = spep_0+90;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 95, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 気溜め２(94F)　台詞カットイン
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 94, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 94, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.2, 1.2);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

-- ** エフェクト等 ** --
kidame_2 = entryEffect( spep_1, SP_02, 0, -1, 0, 0, 0);   --気溜め２　50f
setEffScaleKey( spep_1, kidame_2, 1, 1);
setEffAlphaKey( spep_1, kidame_2, 255);

--entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_1+5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 集中線 ** --

-- 書き文字エントリー --

ctGogogo = entryEffectLife( spep_1+10, 190006, 76, 0x100, -1, 0, -130, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_1+10, ctGogogo, 0.8, 0.8);
setEffAlphaKey( spep_1+10, ctGogogo, 255);
setEffRotateKey( spep_1+10, ctGogogo, 0);

-- ** 音 ** --
playSe( spep_1+10, SE_04);

-- ** 次の準備 ** --
spep_2 = spep_1+94;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--[[
-- カードカットイン
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_2+3, SE_05);
]]
-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.8, 1.8);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);


-- ** 次の準備 ** --
spep_3 = spep_2+90;
entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 発射(60F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi = entryEffect( spep_3, SP_03, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_3, hasi, 1, 1);
setEffAlphaKey( spep_3, hasi, 255);


-- ** 集中線 ** --

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_3, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_3, ryusen3, 1.8, 1.8);
setEffRotateKey( spep_3, ryusen3, 205);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffAlphaKey( spep_3+60, ryusen3, 255);

-- ** 音 ** --
playSe( spep_3+35, SE_06);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+24; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);



setDisp( SP_dodge, 0, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
--setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);
--setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge-1,   0,    0,  0,   0);
setMoveKey(   SP_dodge,   0,    0, -5400,   0);
setMoveKey(   SP_dodge+1,   0,    0, -5400,   0);


setMoveKey(  SP_dodge,    1,  350,  0,   0);
setScaleKey(  SP_dodge,   1,   1.7,  1.7);

setMoveKey(   SP_dodge+1,    1,  350,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+9,   1,   250, 0,  0);
setScaleKey(   SP_dodge+9,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+9,   1, 0);

changeAnime(  SP_dodge+10,    1,  100);
setMoveKey(  SP_dodge+10,    1,  250,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.7, 1.7);
setRotateKey(   SP_dodge+10,   1, 0);


endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 回避じゃない
------------------------------------------------------




-- ** 次の準備 ** --
spep_4 = spep_3+60;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0, 180); -- ベース暗め　背景

------------------------------------------------------
-- 迫る〜命中(70F)
------------------------------------------------------
-- ** キャラクター ** --
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4,    1,  400,  0,   0);
setRotateKey( spep_4,  1,  0);
setScaleKey( spep_4,    1,  1.5, 1.5);

setMoveKey(  spep_4+14,    1,  50,  0,   0);
changeAnime( spep_4+14, 1, 108); 
setShakeChara( spep_4+14, 1, 56, 15)
setScaleKey( spep_4+14,    1,  1.5, 1.5);


-- ** エフェクト等 ** --
tama = entryEffect( spep_4, SP_04, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_4, tama, 1, 1);
setEffAlphaKey( spep_4, tama, 255);

-- ** 奥行き流線斜め ** --
ryusen4 = entryEffectLife( spep_4, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_4, ryusen4, 1.8, 1.8);
setEffRotateKey( spep_3, ryusen3, 250);

-- 書き文字エントリー --
ct_04 = entryEffectLife( spep_4, 10014, 70, 0, -1, 0, 70, 350); -- ズドドッ
setEffShake( spep_4, ct_04, 70, 20);
setEffScaleKey( spep_4, ct_04, 2.5, 2.5);
setEffRotateKey( spep_4, ct_04, 60)

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_4, SE_07);




setMoveKey(  spep_4+70,    1,  50,  0,   0);
setScaleKey( spep_4+70,    1,  1.5, 1.5);
setRotateKey( spep_4+70,  1,  0);

-- ** 次の準備 ** --
spep_5 = spep_4+70;
entryFade( spep_5-6, 3, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 125, 0, 0, 0, 0, 255); -- ベース暗め　背景
setDisp( spep_5, 1, 0);
------------------------------------------------------
-- 発射2(125F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi5 = entryEffect( spep_5, SP_05, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_5, hasi5, 1, 1);
setEffAlphaKey( spep_5, hasi5, 255);


-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_5, 921, 125, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_5, ryusen5, 1.8, 1.8);
setEffRotateKey( spep_5, ryusen5, 235);

-- ** 音 ** --
playSe( spep_5+35, SE_06);

-- ** 次の準備 ** --
spep_6 = spep_5+125;
entryFade( spep_6-4, 2, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 70, 0, 30, 30, 30, 180); -- ベース暗め　背景
------------------------------------------------------
-- 迫る〜命中(70F)
------------------------------------------------------
-- ** キャラクター ** --
--setDisp( spep_6, 0, 0);
--changeAnime( spep_6, 1, 104);                        -- ガード
--setMoveKey(  spep_6-1,    1,  350,  0,   0);
--setMoveKey(  spep_6,    1,  350,  0,   0);
--setMoveKey(  spep_4+1,    1,  235,  0,   0);
--setScaleKey( spep_6-1,    1,  0.8, 0.8);
--setScaleKey( spep_6,    1,  0.8, 0.8);
--setRotateKey( spep_6,  1,  0);

--setMoveKey(  spep_4+30,    1,   120,  0,   0);

-- ** エフェクト等 ** --
tama6 = entryEffect( spep_6, SP_06, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_6, tama6, 1, 1);
setEffAlphaKey( spep_6, tama6, 255);


-- ** 集中線 ** --

-- ** 奥行き流線斜め ** --
ryusen6 = entryEffectLife( spep_6, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_6, ryusen6, 1.8, 1.8);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_6, 10014, 70, 0, -1, 0, 70, 350); -- ズドドッ
setEffShake( spep_6, ct_06, 70, 20);
setEffScaleKey( spep_6, ct_06, 2.5, 2.5);
setEffRotateKey( spep_6, ct_06, 60)

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_6+10, SE_07);


-- ** 次の準備 ** --
spep_7 = spep_6+70;
entryFade( spep_6-6, 3, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 70, 0, 30, 30, 30, 180); -- ベース暗め　背景

-------------------------------------------
-- ギャン ( 60F)
------------------------------------------------------

-- ** ギャン ** --
gyan = entryEffectLife( spep_7 , 190010 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_7 , gyan, 0, 0, 0);
setEffScaleKey( spep_7 , gyan,1.0, 1.0);
setEffAlphaKey( spep_7 , gyan, 255);
setEffShake( spep_7 , gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_7 , 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_7 , ctgyan, 255);
setEffScaleKey( spep_7 , ctgyan, 3.0, 3.0);
setEffScaleKey( spep_7+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_7 , ctgyan, 255);
setEffAlphaKey( spep_7 +60, ctgyan, 80);
setEffShake( spep_7 , ctgyan, 60, 10);

-- ** 音 ** --

playSe( spep_7, SE_09);

-- ** 次の準備 ** --
spep_8 = spep_7+60;
entryFade( spep_7-6, 3, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 70, 0, 30, 30, 30, 180); -- ベース暗め　背景
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
expl = entryEffect(  spep_8, 1673,   0,  -1,  0,  0,  0);
setEffScaleKey( spep_8, expl, 1.1, 1.1);
setEffAlphaKey( spep_8, expl, 255);

playSe( spep_8+6, SE_09);

-- ダメージ表示
dealDamage( spep_8+16);
entryFade( spep_8+130, 6, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_8+140);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め１(90F)
------------------------------------------------------


spep_0 = 0;

-- ** 背景 ** --
entryFadeBg( spep_0, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
kidame_1 = entryEffect( spep_0, SP_01e, 0, -1, 0, 0, 60);   --気溜め１　19f
setEffScaleKey( spep_0, kidame_1, 1.2, 1.2);
setEffAlphaKey( spep_0, kidame_1, 255);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_0, shuchusen, 0, 0, 0);
setEffScaleKey( spep_0, shuchusen, 1.2, 1.2);
setEffAlphaKey( spep_0, shuchusen, 255);
setEffRotateKey( spep_0, shuchusen, 0);

-- ** 音 ** --
playSe( spep_0+23, SE_05);

-- ** 次の準備 ** --
spep_1 = spep_0+90;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 95, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 気溜め２(94F)　台詞カットイン
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 94, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 94, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.2, 1.2);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

-- ** エフェクト等 ** --
kidame_2 = entryEffect( spep_1, SP_02, 0, -1, 0, 0, 0);   --気溜め２　50f
setEffScaleKey( spep_1, kidame_2, 1, 1);
setEffAlphaKey( spep_1, kidame_2, 255);

--entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  spep_1+5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 集中線 ** --

-- 書き文字エントリー --

ctGogogo = entryEffectLife( spep_1+10, 190006, 76, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_1+10, ctGogogo, -0.8, 0.8);
setEffAlphaKey( spep_1+10, ctGogogo, 255);
setEffRotateKey( spep_1+10, ctGogogo, 20);

-- ** 音 ** --
playSe( spep_1+10, SE_04);

-- ** 次の準備 ** --
spep_2 = spep_1+94;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--[[
-- カードカットイン
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_2+3, SE_05);
]]
-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.8, 1.8);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);


-- ** 次の準備 ** --
spep_3 = spep_2+90;
entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 発射(60F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi = entryEffect( spep_3, SP_03, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_3, hasi, 1, 1);
setEffAlphaKey( spep_3, hasi, 255);


-- ** 集中線 ** --

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_3, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_3, ryusen3, 1.8, 1.8);
setEffRotateKey( spep_3, ryusen3, 205);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffAlphaKey( spep_3+60, ryusen3, 255);

-- ** 音 ** --
playSe( spep_3+35, SE_06);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+24; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);



setDisp( SP_dodge, 0, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
--setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);
--setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge-1,   0,    0,  0,   0);
setMoveKey(   SP_dodge,   0,    0, -5400,   0);
setMoveKey(   SP_dodge+1,   0,    0, -5400,   0);


setMoveKey(  SP_dodge,    1,  350,  0,   0);
setScaleKey(  SP_dodge,   1,   1.7,  1.7);

setMoveKey(   SP_dodge+1,    1,  350,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+9,   1,   250, 0,  0);
setScaleKey(   SP_dodge+9,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+9,   1, 0);

changeAnime(  SP_dodge+10,    1,  100);
setMoveKey(  SP_dodge+10,    1,  250,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.7, 1.7);
setRotateKey(   SP_dodge+10,   1, 0);


endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 回避じゃない
------------------------------------------------------




-- ** 次の準備 ** --
spep_4 = spep_3+60;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0, 180); -- ベース暗め　背景

------------------------------------------------------
-- 迫る〜命中(70F)
------------------------------------------------------
-- ** キャラクター ** --
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4,    1,  400,  0,   0);
setRotateKey( spep_4,  1,  0);
setScaleKey( spep_4,    1,  1.5, 1.5);

setMoveKey(  spep_4+14,    1,  50,  0,   0);
changeAnime( spep_4+14, 1, 108); 
setShakeChara( spep_4+14, 1, 56, 15)
setScaleKey( spep_4+14,    1,  1.5, 1.5);


-- ** エフェクト等 ** --
tama = entryEffect( spep_4, SP_04, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_4, tama, 1, 1);
setEffAlphaKey( spep_4, tama, 255);

-- ** 奥行き流線斜め ** --
ryusen4 = entryEffectLife( spep_4, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_4, ryusen4, 1.8, 1.8);
setEffRotateKey( spep_3, ryusen3, 250);

-- 書き文字エントリー --
ct_04 = entryEffectLife( spep_4, 10014, 70, 0, -1, 0, 70, 350); -- ズドドッ
setEffShake( spep_4, ct_04, 70, 20);
setEffScaleKey( spep_4, ct_04, 2.5, 2.5);
setEffRotateKey( spep_4, ct_04, 0)

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_4, SE_07);




setMoveKey(  spep_4+70,    1,  50,  0,   0);
setScaleKey( spep_4+70,    1,  1.5, 1.5);
setRotateKey( spep_4+70,  1,  0);

-- ** 次の準備 ** --
spep_5 = spep_4+70;
entryFade( spep_5-6, 3, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 125, 0, 0, 0, 0, 255); -- ベース暗め　背景
setDisp( spep_5, 1, 0);
------------------------------------------------------
-- 発射2(125F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi5 = entryEffect( spep_5, SP_05, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_5, hasi5, 1, 1);
setEffAlphaKey( spep_5, hasi5, 255);


-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_5, 921, 125, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_5, ryusen5, 1.8, 1.8);
setEffRotateKey( spep_5, ryusen5, 235);

-- ** 音 ** --
playSe( spep_5+35, SE_06);

-- ** 次の準備 ** --
spep_6 = spep_5+125;
entryFade( spep_6-4, 2, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 70, 0, 30, 30, 30, 180); -- ベース暗め　背景
------------------------------------------------------
-- 迫る〜命中(70F)
------------------------------------------------------
-- ** キャラクター ** --
--setDisp( spep_6, 0, 0);
--changeAnime( spep_6, 1, 104);                        -- ガード
--setMoveKey(  spep_6-1,    1,  350,  0,   0);
--setMoveKey(  spep_6,    1,  350,  0,   0);
--setMoveKey(  spep_4+1,    1,  235,  0,   0);
--setScaleKey( spep_6-1,    1,  0.8, 0.8);
--setScaleKey( spep_6,    1,  0.8, 0.8);
--setRotateKey( spep_6,  1,  0);

--setMoveKey(  spep_4+30,    1,   120,  0,   0);

-- ** エフェクト等 ** --
tama6 = entryEffect( spep_6, SP_06, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_6, tama6, 1, 1);
setEffAlphaKey( spep_6, tama6, 255);


-- ** 集中線 ** --

-- ** 奥行き流線斜め ** --
ryusen6 = entryEffectLife( spep_6, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_6, ryusen6, 1.8, 1.8);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_6, 10014, 70, 0, -1, 0, 70, 350); -- ズドドッ
setEffShake( spep_6, ct_06, 70, 20);
setEffScaleKey( spep_6, ct_06, 2.5, 2.5);
setEffRotateKey( spep_6, ct_06, 0)

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_6+10, SE_07);


-- ** 次の準備 ** --
spep_7 = spep_6+70;
entryFade( spep_6-6, 3, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 70, 0, 30, 30, 30, 180); -- ベース暗め　背景

-------------------------------------------
-- ギャン ( 60F)
------------------------------------------------------

-- ** ギャン ** --
gyan = entryEffectLife( spep_7 , 190010 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_7 , gyan, 0, 0, 0);
setEffScaleKey( spep_7 , gyan,1.0, 1.0);
setEffAlphaKey( spep_7 , gyan, 255);
setEffShake( spep_7 , gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_7 , 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_7 , ctgyan, 255);
setEffScaleKey( spep_7 , ctgyan, 3.0, 3.0);
setEffScaleKey( spep_7+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_7 , ctgyan, 255);
setEffAlphaKey( spep_7 +60, ctgyan, 80);
setEffShake( spep_7 , ctgyan, 60, 10);

-- ** 音 ** --

playSe( spep_7, SE_09);

-- ** 次の準備 ** --
spep_8 = spep_7+60;
entryFade( spep_7-6, 3, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 70, 0, 30, 30, 30, 180); -- ベース暗め　背景
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
expl = entryEffect(  spep_8, 1673,   0,  -1,  0,  0,  0);
setEffScaleKey( spep_8, expl, 1.1, 1.1);
setEffAlphaKey( spep_8, expl, 255);

playSe( spep_8+6, SE_09);

-- ダメージ表示
dealDamage( spep_8+16);
entryFade( spep_8+130, 6, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_8+140);

end


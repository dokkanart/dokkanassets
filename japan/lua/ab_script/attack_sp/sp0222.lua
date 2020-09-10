--スーパーゴーストカミカゼアタック

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;

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

SE_12 = 09;

tyo = -40;
tyo2 = -60;

SP_01 = 108031; --ゴーストが10体出現
SP_02 = 108032; --ゴースト10体が突撃
SP_03 = 108033; --ゴースト10体突撃時に敵の前面に表示する爆発エフェクト郡
SP_04 = 108034; --ゴースト突撃時に敵の背面に表示する突撃ゴースト郡
SP_05 = 1571; --大爆発3


multi_frm = 2;

-- 味方
setDisp( 0, 0, 1);
changeAnime( 0, 0, 17);                  -- かめはめ波溜め
setMoveKey(   0,   0,   0, 0,   0);
setMoveKey(   1,   0,   0, 0,   0);
setMoveKey(   2,   0,   0, 0,   0);
setMoveKey(   3,   0,   0, 0,   0);
setMoveKey(   4,   0,   0, 0,   0);
setMoveKey(   5,   0,   0, 0,   0);
setMoveKey(   6,   0,   0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setDisp( 0, 1, 0);
changeAnime( 0, 1, 101);                       -- 立ち
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
changeAnime( 0, 0, 17);                  -- かめはめ波溜め

entryEffect(  0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  0,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 0, SE_01);


entryFade( 35, 7, 7, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setDisp( 47, 0, 0);
setMoveKey(   48,   0,    0, 0,   0);
setMoveKey(   49,   0,    -30, 0,   0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 47, 0x40,  0,  1,  0,  -20); -- オーラ
setEffScaleKey( 0, aura, 1.2, 1.2);
setShakeChara( 0, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 0, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(0, ct, 40, 7);
setEffAlphaKey(0, ct, 255);
setEffAlphaKey(20, ct, 255);
setEffAlphaKey(40, ct, 0);
setEffScaleKey( 0, ct, 0.1, 0.1);
setEffScaleKey( 10, ct, 2.0, 2.0);
playSe( 0, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(49, 0);
changeAnime( 40, 0, 30);                       -- 溜め!
playSe( 43, SE_03);

playSe( 40, SE_04);

playSe( 60, SE_03);
playSe( 90, SE_03);
playSe( 120, SE_03);
--playSe( 130, SE_03);

--playSe( 130, SE_03);

-- ** エフェクト等 ** 
aura = entryEffectLife(  50,   311, 119, 0x40,  0,  1,  0,  -50); -- オーラ
setShakeChara( 50, 0, 49, 5);

kame_hand = entryEffect( 50, SP_01, 0x40+0x100,      0,  300,  0,  50);   -- 手のカメハメ波部
--setScaleKey(   70,   0, 1.5, 1.5);
setEffScaleKey(50, kame_hand, 1.5, 1.5);

speff = entryEffect(  70,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  70,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- 書き文字エントリー
ct = entryEffectLife( 70, 10008, 70, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(70, ct, 40, 8);
setEffScaleKey(70, ct, 1.4, 1.4);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey(  169,   0, 1.0, 1.0);
setEffScaleKey(169, kame_hand, 1.0, 1.0);

setMoveKey(   169,   0,    -30, 0,   0);


spep_2 = 170;


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2,    0,      0,  0,   0);

--[[playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

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

entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+4; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( spep_3-2, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  spep_3-2,    0,  0,  0,   0);
setScaleKey( spep_3-2,   0, 1.5, 1.5);

--playSe( spep_3, SE_04);

setShake(spep_3,38, 8);
setShake(spep_3+38,137, 20);

kamehame_beam = entryEffect( spep_3, SP_02, 0x40,  0,  300,  0, 50);   -- 伸びるかめはめ波
playSe( spep_3+10, SE_04);

setScaleKey( spep_3-2,   0, 1.2, 1.2);

setScaleKey( spep_3+30,   0, 1.2, 1.2);
setScaleKey( spep_3+60,   0, 1.0, 1.0);
setScaleKey( spep_3+65,   0, 1.1, 1.1);
setScaleKey( spep_3+90,   0, 0.3, 0.3);
setRotateKey( spep_3 , 0 , 10);
setRotateKey( spep_3+30 , 0 , 10);
setRotateKey( spep_3+60 , 0 , 10);
setRotateKey( spep_3+90 , 0 , 20);


shuchusen = entryEffectLife( spep_3, 906, 175, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+114, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+118, shuchusen, 2.0, 2.0);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 123, 0, 0, 0, 0, 200);       -- ベース暗め　背景

--setEffScaleKey( spep_3, sen2, 1.6, 1.6);


-- 書き文字エントリー
ct = entryEffectLife( spep_3+75, 10012, 40, 0, -1, 0, 150, 150); -- ズオッ
setEffShake(spep_3+75, ct, 32, 5);
setEffAlphaKey(spep_3+75, ct, 255);
setEffAlphaKey(spep_3+108, ct, 255);
setEffAlphaKey(spep_3+113, ct, 0);
setEffScaleKey(spep_3+75, ct, 0.0, 0.0);
setEffScaleKey(spep_3+108, ct, 1.3, 1.3);
setEffScaleKey(spep_3+113, ct, 6.0, 6.0);

playSe( spep_3+75, SE_07);

entryFade( spep_3+113, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_3+119,    0,  0,  0,   0);
--setScaleKey( spep_3+176,   0, 2.0, 2.0);
setScaleKey( spep_3+119,   0, 0.3, 0.3);
setDisp( spep_3+119, 1, 1);
setScaleKey( spep_3+119,   1, 1.5, 1.5);
changeAnime( spep_3+119, 1, 102);                                    -- ダメージ
setDisp( spep_3+119, 0, 0);

--removeAllEffect(spep_3+133);

spep_4=spep_3+113+10; --311 370

setMoveKey(  spep_4+15,    0,  0,  0,   0);
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

--setMoveKey(  spep_4,    1,  400,  0,   0);

--changeAnime( spep_4, 0, 31);                                    -- かめはめ発射ポーズ


-- 途中からカメハメハが伸びる
setMoveKey(  spep_4,    1,  150,  -50,   0);


bakuhatu=entryEffect( spep_4+20, SP_03, 0x40+0x100,  1, 300,  -150, 150); --爆発
--playSe( spep_4+20, SE_09);


-- ** エフェクト等 ** --
entryFadeBg( spep_4, 0, 138, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_4, 921, 138, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_4, sen2, -110);
setShakeChara( spep_4+45, 1, 54, 50);
setEffScaleKey( spep_4, sen2, 1.6, 1.6);

kamehame_beam=entryEffect( spep_4+15, SP_04, 0x40+0x100,  1, 300,  -170, 100); --ゴースト
setEffScaleKey( spep_4+15, kamehame_beam, 1.0, 1.0);

--[[
shuchusen = entryEffectLife( spep_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_4+49, shuchusen, 2.0, 2.0);
--]]



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 425; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
setEffScaleKey( SP_dodge-12, speff, 1.0, 1.0);

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( SP_dodge+9,   1,   1.6,  1.6);
setMoveKey(  SP_dodge+9,    0,  1000,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

--changeAnime( spep_4+45, 1, 106);                                    -- ダメージ
--setShake(spep_4+45,70, 20);

playSe( spep_4+50, SE_09);
playSe( spep_4+80, SE_09);
playSe( spep_4+110, SE_09);
playSe( spep_4+130, SE_09);

entryFade( spep_4+102+30, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_4+112+30, 1, 0);
--setMoveKey(  spep_4+112+70,    1,   0,  100,   0);
setScaleKey( spep_4+112+30,   1, 1.6, 1.6);
--setEffMoveKey( spep_4+90+70, kamehame_beam, 700, 0);
setMoveKey(  spep_4+112+30,    1,   150,  -50,   0);

removeAllEffect( spep_4+102+36 );

spep_5=spep_4+102+6+30; --410 469

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuha = entryEffect( spep_5,SP_05,0,-1,0,0,0);
setEffScaleKey(  spep_5,  bakuha,  1.2,  1.2);

setDisp( spep_5, 1, 0);

-- 書き文字エントリー

playSe( spep_5+4, SE_10);
playSe( spep_5+34, SE_10);
--playSe( spep_5+44, SE_10);
--playSe( spep_5+74, SE_10);

-- ダメージ表示
dealDamage(spep_5+17 -4);

--entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111 -4);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
changeAnime( 0, 0, 17);                  -- かめはめ波溜め

entryEffect(  0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  0,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 0, SE_01);


entryFade( 35, 7, 7, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setDisp( 47, 0, 0);
setMoveKey(   48,   0,    0, 0,   0);
--setMoveKey(   49,   0,    -30, 0,   0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 47, 0x40,  0,  1,  0,  -20); -- オーラ
setEffScaleKey( 0, aura, 1.2, 1.2);
setShakeChara( 0, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 0, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(0, ct, 40, 7);
setEffAlphaKey(0, ct, 255);
setEffAlphaKey(20, ct, 255);
setEffAlphaKey(40, ct, 0);
setEffScaleKey( 0, ct, 0.1, 0.1);
setEffScaleKey( 10, ct, 2.0, 2.0);
playSe( 0, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(49, 0);
changeAnime( 40, 0, 30);                       -- 溜め!
playSe( 43, SE_03);

playSe( 40, SE_04);

playSe( 60, SE_03);
playSe( 90, SE_03);
playSe( 120, SE_03);
--playSe( 130, SE_03);

--playSe( 130, SE_03);

-- ** エフェクト等 ** 
aura = entryEffectLife(  50,   311, 119, 0x40,  0,  1,  0,  -50); -- オーラ
setShakeChara( 50, 0, 49, 5);

kame_hand = entryEffect( 50, SP_01, 0x40+0x100,      0,  300,  0,  50);   -- 手のカメハメ波部
--setScaleKey(   70,   0, 1.5, 1.5);
setEffScaleKey(50, kame_hand, 1.5, 1.5);

--[[
speff = entryEffect(  50,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  50,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]


-- 書き文字エントリー
ct = entryEffectLife( 70, 10008, 70, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(70, ct, 40, 8);
setEffScaleKey(70, ct, 1.4, 1.4);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey(  169,   0, 1.0, 1.0);
setEffScaleKey(169, kame_hand, 1.0, 1.0);

setMoveKey(   169,   0,    0, 0,   0);


spep_2 = 170;


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2,    0,      0,  0,   0);

--[[playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

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

entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+4; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( spep_3-2, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  spep_3-2,    0,  0,  0,   0);
setScaleKey( spep_3-2,   0, 1.5, 1.5);

--playSe( spep_3, SE_04);

setShake(spep_3,38, 8);
setShake(spep_3+38,137, 20);

kamehame_beam = entryEffect( spep_3, SP_02, 0x40,  0,  300,  0, 50);   -- 伸びるかめはめ波
playSe( spep_3+10, SE_04);

setScaleKey( spep_3-2,   0, 1.2, 1.2);

setScaleKey( spep_3+30,   0, 1.2, 1.2);
setScaleKey( spep_3+60,   0, 1.0, 1.0);
setScaleKey( spep_3+65,   0, 1.1, 1.1);
setScaleKey( spep_3+90,   0, 0.3, 0.3);
setRotateKey( spep_3 , 0 , 10);
setRotateKey( spep_3+30 , 0 , 10);
setRotateKey( spep_3+60 , 0 , 10);
setRotateKey( spep_3+90 , 0 , 20);


shuchusen = entryEffectLife( spep_3, 906, 175, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+114, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+118, shuchusen, 2.0, 2.0);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 123, 0, 0, 0, 0, 200);       -- ベース暗め　背景

--setEffScaleKey( spep_3, sen2, 1.6, 1.6);


-- 書き文字エントリー
ct = entryEffectLife( spep_3+75, 10012, 40, 0, -1, 0, 150, 150); -- ズオッ
setEffShake(spep_3+75, ct, 32, 5);
setEffAlphaKey(spep_3+75, ct, 255);
setEffAlphaKey(spep_3+108, ct, 255);
setEffAlphaKey(spep_3+113, ct, 0);
setEffScaleKey(spep_3+75, ct, 0.0, 0.0);
setEffScaleKey(spep_3+108, ct, 1.3, 1.3);
setEffScaleKey(spep_3+113, ct, 6.0, 6.0);

playSe( spep_3+75, SE_07);

entryFade( spep_3+113, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_3+119,    0,  0,  0,   0);
--setScaleKey( spep_3+176,   0, 2.0, 2.0);
setScaleKey( spep_3+119,   0, 0.3, 0.3);
setDisp( spep_3+119, 1, 1);
setScaleKey( spep_3+119,   1, 1.5, 1.5);
changeAnime( spep_3+119, 1, 102);                                    -- ダメージ
setDisp( spep_3+119, 0, 0);

--removeAllEffect(spep_3+133);

spep_4=spep_3+113+10; --311 370
setMoveKey(  spep_4+15,    0,  0,  0,   0);
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

--setMoveKey(  spep_4,    1,  400,  0,   0);

--changeAnime( spep_4, 0, 31);                                    -- かめはめ発射ポーズ


-- 途中からカメハメハが伸びる
setMoveKey(  spep_4,    1,  150,  -50,   0);



bakuhatu=entryEffect( spep_4+20, SP_03, 0x40+0x100,  1, 300,  -150, 150); --爆発
--playSe( spep_4+20, SE_09);


-- ** エフェクト等 ** --
entryFadeBg( spep_4, 0, 178, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_4, 921, 178, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_4, sen2, -110);
setShakeChara( spep_4+45, 1, 54, 50);
setEffScaleKey( spep_4, sen2, 1.6, 1.6);

kamehame_beam=entryEffect( spep_4+15, SP_04, 0x40+0x100,  1, 300,  -170, 100); --ゴースト
setEffScaleKey( spep_4+15, kamehame_beam, 1.0, 1.0);

--[[
shuchusen = entryEffectLife( spep_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_4+49, shuchusen, 2.0, 2.0);
--]]



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 425; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
setEffScaleKey( SP_dodge-12, speff, 1.0, 1.0);

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( SP_dodge+9,   1,   1.6,  1.6);
setMoveKey(  SP_dodge+9,    0,  1000,  0,   0);
endPhase(SP_dodge+10);
do return end
else end


--changeAnime( spep_4+45, 1, 106);                                    -- ダメージ
--setShake(spep_4+45,70, 20);

playSe( spep_4+50, SE_09);
playSe( spep_4+80, SE_09);
playSe( spep_4+110, SE_09);
playSe( spep_4+130, SE_09);

entryFade( spep_4+102+30, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_4+112+30, 1, 0);
--setMoveKey(  spep_4+112+70,    1,   0,  100,   0);
setScaleKey( spep_4+112+30,   1, 1.6, 1.6);
--setEffMoveKey( spep_4+90+70, kamehame_beam, 700, 0);
setMoveKey(  spep_4+112+30,    1,   150,  -50,   0);

removeAllEffect( spep_4+102+36 );

spep_5=spep_4+102+6+30; --410 469

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuha = entryEffect( spep_5,SP_05,0,-1,0,0,0);
setEffScaleKey(  spep_5,  bakuha,  1.2,  1.2);

setDisp( spep_5, 1, 0);

-- 書き文字エントリー

playSe( spep_5+4, SE_10);
playSe( spep_5+34, SE_10);
--playSe( spep_5+44, SE_10);
--playSe( spep_5+74, SE_10);

-- ダメージ表示
dealDamage(spep_5+17 -4);

--entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111 -4);

end

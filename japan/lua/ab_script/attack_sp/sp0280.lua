--親子ギャリック砲

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

tyo = -30;
tyo2 = -40;

SP_01 = 100344;--トランクス溜め
SP_02 = 100345;--トランクス放つ
SP_03 = 100347;--トランクス迫る
SP_04 = 1566;--ギャリック爆発
SP_05 = 100348;--トランクス放つ(敵)

-- 味方
changeAnime( 0, 0, 0);                  -- 立ち
setDisp( 0, 0, 1);
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
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 1, 0);
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

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   358, 39, 0x40+0x80,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 300); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

spep_1=70;

------------------------------------------------------
-- ギャリック砲溜め！(100F)
------------------------------------------------------
setVisibleUI(spep_1-1, 0);
changeAnime( spep_1, 0, 30);                       -- 溜め!
playSe( spep_1+3, SE_03);

setMoveKey( spep_1-1,   0,   0, 0,   0);
setMoveKey( spep_1,   0,   50, 0,   0);
setMoveKey( spep_1+100,   0,  50, 0,   0);
setMoveKey( spep_1+120,   0,  50, 0,   0);

--entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect(  spep_1+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_1+10, SE_04);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1,   358, 120, 0x40+0x80,  0,  1,  -50,  0); -- オーラ
setEffScaleKey( spep_1, aura, 2, 2);
setShakeChara( spep_1, 0, 120, 5);

kame_hand = entryEffect( spep_1, SP_01, 0x40+0x80,0, 300, -50,120);   -- 手のカメハメ波部
setEffScaleKey( spep_1, kame_hand, 0.8, 0.8);

entryFade( spep_1+115, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_1, 0, 120, 0, 10, 10, 10, 200);       -- ベース暗め　背景

shuchusen1 = entryEffectLife( spep_1, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

-- 書き文字エントリー
ct = entryEffectLife( spep_1+20, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_1+20, ct, 40, 8);
setEffScaleKey(spep_1+20, ct, 1.4, 1.4);

spep_3 = spep_1+120;

------------------------------------------------------
-- ギャリック砲発射(110F)
------------------------------------------------------
setDisp( spep_3, 0, 0);--260
setMoveKey( spep_3,   0,  50, 0,   0);

kamehame_beam = entryEffect( spep_3, SP_02, 0x100,  0,  0, -50,  0);   -- 伸びるかめはめ波
playSe( spep_3, SE_07);
playSe( spep_3+30, SE_03);
playSe( spep_3+90, SE_07);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 180, 0, 10, 10, 10, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_3, 921, 180, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey( spep_3, sen2, 1.25, 1.25);

setShakeChara( spep_3+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_3, 906, 180, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_3+8, ct, 32, 5);
setEffAlphaKey( spep_3+8, ct, 255);
setEffAlphaKey( spep_3+30, ct, 255);
setEffAlphaKey( spep_3+40, ct, 0);
setEffScaleKey( spep_3+8, ct, 0.0, 0.0);
setEffScaleKey( spep_3+12, ct, 1.3, 1.3);
setEffScaleKey( spep_3+38, ct, 1.3, 1.3);
setEffScaleKey( spep_3+40, ct, 6.0, 6.0);

--[[
ct_1 = entryEffectLife( spep_3+30, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_3+30, ct_1, 40, 8);
setEffScaleKey( spep_3+30, ct_1, 1.4, 1.4);
]]--

entryFade( spep_3+175, 2,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_3+180;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);

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

--entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+85, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_2, SE_06);

--spep_4 = spep_2+90;
spep_4 = spep_2+92;

------------------------------------------------------
-- ギャリック砲迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);--370
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4-1,    1,  235,  0,   0);
setMoveKey(  spep_4,    1,  235,  0,   0);
setMoveKey(  spep_4+1,    1,  235,  0,   0);
setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  0.7, 0.7);

setMoveKey(  spep_4+30,    1,   120,  0,   0);
setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4, SE_06);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_4, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+82, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe( spep_4+85, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_4+85, 1, 108);
setMoveKey(  spep_4+85, 1,  120,    0,  0);
setMoveKey(  spep_4+99, 1,  400,    0,  0);
setScaleKey( spep_4+85, 1,  1.6, 1.6);
setScaleKey( spep_4+85, 1,  1.5, 1.5);
setScaleKey( spep_4+85, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 87, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( spep_4, 921, 87, 0x80,  -1,  0,  0,  0); -- 流線斜め


-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey( spep_4, ct, 70);
setEffAlphaKey( spep_4, ct, 255);
setEffAlphaKey( spep_4+60, ct, 255);
setEffAlphaKey( spep_4+80, ct, 0);

entryFade( spep_4+82, 2,  18, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+87;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 475; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

--味方の挙動
setDisp( SP_dodge + 0, 0, 0);
setMoveKey( SP_dodge + 0,   0,    -5000,  -5000,  0);
setMoveKey( SP_dodge + 1,   0,    -5000,  -5000,  0);
setMoveKey( SP_dodge + 2,   0,    -5000,  -5000,  0);
setMoveKey( SP_dodge + 3,   0,    -5000,  -5000,  0);
setMoveKey( SP_dodge + 4,   0,    -5000,  -5000,  0);
setMoveKey( SP_dodge + 5,   0,    -5000,  -5000,  0);
setMoveKey( SP_dodge + 6,   0,    -5000,  -5000,  0);
setScaleKey( SP_dodge + 0,   0, 1.5, 1.5);
setScaleKey( SP_dodge + 1,   0, 1.5, 1.5);
setScaleKey( SP_dodge + 2,   0, 1.5, 1.5);
setScaleKey( SP_dodge + 3,   0, 1.5, 1.5);
setScaleKey( SP_dodge + 4,   0, 1.5, 1.5);
setScaleKey( SP_dodge + 5,   0, 1.5, 1.5);
setScaleKey( SP_dodge + 6,   0, 1.5, 1.5);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

explosion=entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（青）
setEffScaleKey( spep_5, explosion, 1.2, 1.2);
setEffScaleKey( spep_5+120, explosion, 1.2, 1.2);

playSe( spep_5+3, SE_07);--57

-- ダメージ表示
dealDamage(spep_5+13);--70

--entryFade( spep_5+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade
--entryFade( spep_5+106, 5,  10, 5, 245, 245, 245, 255);      -- white fade

endPhase(spep_5+112);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   358, 39, 0x40+0x80,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 300); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

spep_1=70;

------------------------------------------------------
-- ギャリック砲溜め！(100F)
------------------------------------------------------
setVisibleUI(spep_1-1, 0);
changeAnime( spep_1, 0, 30);                       -- 溜め!
playSe( spep_1+3, SE_03);

setMoveKey( spep_1-1,   0,   0, 0,   0);
setMoveKey( spep_1,   0,   -50, 0,   0);
setMoveKey( spep_1+100,   0,  -50, 0,   0);
setMoveKey( spep_1+120,   0,  -50, 0,   0);

--entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect(  spep_1+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( spep_1+10, SE_04);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1,   358, 120, 0x40+0x80,  0,  1,  50,  0); -- オーラ
setEffScaleKey( spep_1, aura, 2, 2);
setShakeChara( spep_1, 0, 120, 5);

kame_hand = entryEffect( spep_1, SP_01, 0x40+0x100,0, 300, -10,110);   -- 手のカメハメ波部
setEffScaleKey( spep_1, kame_hand, 0.8, 0.8);

entryFade( spep_1+115, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_1, 0, 120, 0, 10, 10, 10, 200);       -- ベース暗め　背景

shuchusen1 = entryEffectLife( spep_1, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

-- 書き文字エントリー
ct = entryEffectLife( spep_1+20, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_1+20, ct, 40, 8);
setEffScaleKey(spep_1+20, ct, 1.4, 1.4);

spep_3 = spep_1+120;

------------------------------------------------------
-- ギャリック砲発射(110F)
------------------------------------------------------
setDisp( spep_3, 0, 0);--260
setMoveKey( spep_3,   0,  -50, 0,   0);

kamehame_beam = entryEffect( spep_3, SP_05, 0x100,  0,  0,  50,  0);   -- 伸びるかめはめ波
playSe( spep_3, SE_07);
playSe( spep_3+30, SE_03);
playSe( spep_3+90, SE_07);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 180, 0, 10, 10, 10, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_3, 921, 180, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey( spep_3, sen2, 1.25, 1.25);

setShakeChara( spep_3+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_3, 906, 180, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_3+8, ct, 32, 5);
setEffAlphaKey( spep_3+8, ct, 255);
setEffAlphaKey( spep_3+30, ct, 255);
setEffAlphaKey( spep_3+40, ct, 0);
setEffScaleKey( spep_3+8, ct, 0.0, 0.0);
setEffScaleKey( spep_3+12, ct, 1.3, 1.3);
setEffScaleKey( spep_3+38, ct, 1.3, 1.3);
setEffScaleKey( spep_3+40, ct, 6.0, 6.0);

--[[
ct_1 = entryEffectLife( spep_3+30, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_3+30, ct_1, 40, 8);
setEffScaleKey( spep_3+30, ct_1, 1.4, 1.4);
]]--

entryFade( spep_3+175, 2,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_3+180;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);

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

--entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+85, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_2, SE_06);

--spep_4 = spep_2+90;
spep_4 = spep_2+92;

------------------------------------------------------
-- ギャリック砲迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);--370
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4-1,    1,  235,  0,   0);
setMoveKey(  spep_4,    1,  235,  0,   0);
setMoveKey(  spep_4+1,    1,  235,  0,   0);
setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  0.7, 0.7);

setMoveKey(  spep_4+30,    1,   120,  0,   0);
setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4, SE_06);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_4, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+82, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe( spep_4+85, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_4+85, 1, 108);
setMoveKey(  spep_4+85, 1,  120,    0,  0);
setMoveKey(  spep_4+99, 1,  400,    0,  0);
setScaleKey( spep_4+85, 1,  1.6, 1.6);
setScaleKey( spep_4+85, 1,  1.5, 1.5);
setScaleKey( spep_4+85, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 87, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( spep_4, 921, 87, 0x80,  -1,  0,  0,  0); -- 流線斜め


-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey( spep_4, ct, -70);
setEffAlphaKey( spep_4, ct, 255);
setEffAlphaKey( spep_4+60, ct, 255);
setEffAlphaKey( spep_4+80, ct, 0);

entryFade( spep_4+82, 2,  18, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+87;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 475; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

--味方の挙動
setDisp( SP_dodge + 0, 0, 0);
setMoveKey( SP_dodge + 0,   0,    -5000,  -5000,  0);
setMoveKey( SP_dodge + 1,   0,    -5000,  -5000,  0);
setMoveKey( SP_dodge + 2,   0,    -5000,  -5000,  0);
setMoveKey( SP_dodge + 3,   0,    -5000,  -5000,  0);
setMoveKey( SP_dodge + 4,   0,    -5000,  -5000,  0);
setMoveKey( SP_dodge + 5,   0,    -5000,  -5000,  0);
setMoveKey( SP_dodge + 6,   0,    -5000,  -5000,  0);
setScaleKey( SP_dodge + 0,   0, 1.5, 1.5);
setScaleKey( SP_dodge + 1,   0, 1.5, 1.5);
setScaleKey( SP_dodge + 2,   0, 1.5, 1.5);
setScaleKey( SP_dodge + 3,   0, 1.5, 1.5);
setScaleKey( SP_dodge + 4,   0, 1.5, 1.5);
setScaleKey( SP_dodge + 5,   0, 1.5, 1.5);
setScaleKey( SP_dodge + 6,   0, 1.5, 1.5);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

explosion=entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（青）
setEffScaleKey( spep_5, explosion, 1.2, 1.2);
setEffScaleKey( spep_5+120, explosion, 1.2, 1.2);

playSe( spep_5+3, SE_07);--57

-- ダメージ表示
dealDamage(spep_5+13);--70

--entryFade( spep_5+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade
--entryFade( spep_5+106, 5,  10, 5, 245, 245, 245, 255);      -- white fade

endPhase(spep_5+112);
end

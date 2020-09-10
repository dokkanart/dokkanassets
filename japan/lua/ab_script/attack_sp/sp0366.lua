

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

SP_01 = 150473;--ターブル溜め
SP_02 = 150474;---ターブル放つ
SP_03 = 100347;--伸びるギャリック砲
SP_04 = 1594;--ギャリック爆発
SP_05 = 150475;--−ターブル放つ(敵)



changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
setVisibleUI(0, 0);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
setMoveKey(   30,   0,    0, 0,   0);
setMoveKey(   95,   0,    0, 0,   0);
setScaleKey(   30,   0, 1.5, 1.5);
setScaleKey(   95,   0, 1.5, 1.5);
eff1=entryEffectLife(  30,   1501, 65, 0x80, -1,  0,  0,  0);    -- eff_002
eff2=entryEffectLife(  30,   1500,  65, 0,    -1,  0,  0,  0);    -- eff_001
setEffAlphaKey(30, eff1, 255);
setEffAlphaKey(30, eff2, 255);

playSe( 30, SE_01);


entryFade( 82, 8, 7, 5, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   350, 39, 0x80,  -1,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
--playSe( 30, SE_02);

--entryEffect(  61,   1501,   0x80, -1,  0,  0,  30);    -- eff_002
--entryEffect(  61,   1500,   0,    -1,  0,  0,  30);    -- eff_001

spep_2 = 95;
setEffAlphaKey(spep_2, eff1, 255);
setEffAlphaKey(spep_2, eff2, 255);
setEffAlphaKey(spep_2+1, eff1, 0);
setEffAlphaKey(spep_2+1, eff2, 0);

------------------------------------------------------
-- ギャリック砲溜め！(100F)
------------------------------------------------------
setDisp( spep_2, 0, 0);
--setVisibleUI(spep_2-1, 0);
--changeAnime( spep_2, 0, 30);                       -- 溜め!
playSe( spep_2+3, SE_03);

shuchusen = entryEffectLife( spep_2-3, 906, 12, 0x100,  -1, 0, 20,  65);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.3, 1.3);
setEffShake( spep_2, shuchusen, 95, 8);


--[[( spep_2,   0,   1.0, 1.0);
setScaleKey( spep_2+130,   0,   0.5, 0.5);
setMoveKey( spep_2-1,   0,   0, 0,   0);
setMoveKey( spep_2,   0,   50, 0,   0);
setMoveKey( spep_2+100,   0,  50, 0,   0);]]

--entryEffect(  spep_2,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_2,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_2+10, SE_04);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_2+20,  350, 78, 0x80,  0,  1,  -10,  -120); -- オーラ
setEffScaleKey( spep_2, aura, 1.7, 1.7);
setShakeChara( spep_2, 0, 120, 5);

kame_hand = entryEffect( spep_2+1, SP_01, 0x40, 0, 300, 10, 70);   -- 手のカメハメ波部
setEffScaleKey( spep_2, kame_hand, 1, 1);
setEffScaleKey( spep_2+115, kame_hand, 1, 1);

entryFade( spep_2+90, 8, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_2, 0, 120, 0, 10, 10, 10, 200);       -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( spep_2+20, 190006, 60, 0x100, -1, 0, -10, 520);    -- ゴゴゴ・・・
setEffShake(spep_2+20, ct, 40, 8);
setEffScaleKey(spep_2+20, ct, 0.8, 0.8);

shuchusen = entryEffectLife( spep_2+11, 906, 90, 0x100,  -1, 0, 20,  65);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.3, 1.3);
setEffShake( spep_2, shuchusen, 95, 8);

spep_3 = spep_2+100;

------------------------------------------------------
-- ギャリック砲発射(110F)
------------------------------------------------------
setDisp( spep_3, 0, 0);

kamehame_beam = entryEffect( spep_3, SP_02, 0x100,  0,  0, 10,  0);   -- 伸びるかめはめ波

playSe( spep_3, SE_07);
playSe( spep_3+30, SE_03);
playSe( spep_3+90, SE_07);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 200, 0, 10, 10, 10, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_3, 921, 180, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey( spep_3, sen2, 1.25, 1.25);
setEffShake( spep_3, sen2, 190, 7);

setShakeChara( spep_3+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_3-3, 906, 50, 0x80,  -1, 0, 20,  65);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.3, 1.3);
setEffScaleKey( spep_3+50, shuchusen, 1.3, 1.3);
setEffShake( spep_3, shuchusen, 50, 8);

--[[shuchusen = entryEffectLife( spep_3, 906, 180, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);--]]


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

entryFade( spep_3+180, 5,  5, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+190;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setScaleKey( spep_4-1,   0, 1.5, 1.5);
setScaleKey( spep_4,   0, 1.0, 1.0);

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--setShake(spep_4-1, 90, 5);

entryFade( spep_4+80, 8, 10, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( spep_4+64, SE_06);

spep_5 = spep_4+92;

------------------------------------------------------
-- ギャリック砲迫る(100F)
------------------------------------------------------
setDisp( spep_5, 0, 0);--477
setDisp( spep_5, 1, 1);    
setMoveKey( spep_5,   0,    0, 0,   0);

changeAnime( spep_5, 1, 104);                        -- ガード
setMoveKey(  spep_5-1,    1,  235,  0,   0);
setMoveKey(  spep_5,    1,  235,  0,   0);
setMoveKey(  spep_5+1,    1,  235,  0,   0);
setScaleKey( spep_5-1,    1,  0.7, 0.7);
setScaleKey( spep_5,    1,  0.7, 0.7);

setMoveKey(  spep_5+30,    1,   120,  0,   0);
setScaleKey(  spep_5+30,   1,   1.6,  1.6);

playSe( spep_5, SE_06);

kamehame_beam2 = entryEffect( spep_5, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_5, kamehame_beam2, 1, 1);
setEffScaleKey( spep_5+82, kamehame_beam2, 1, 1);
--setEffScaleKey( spep_5+84, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_5+82, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe( spep_5+70, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_5+85, 1, 108);
setMoveKey(  spep_5+85, 1,  120,    0,  0);
setMoveKey(  spep_5+99, 1,  400,    0,  0);
setScaleKey( spep_5+85, 1,  1.6, 1.6);
setScaleKey( spep_5+85, 1,  1.5, 1.5);
setScaleKey( spep_5+85, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);

entryFadeBg( spep_5, 0, 87, 0, 10, 10, 10, 200);          -- ベース暗め　背景

entryEffectLife( spep_5, 921, 87, 0x80,  -1,  0,  0,  0); -- 流線斜め


-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10014, 99, 0, -1, 0, -100, 290); -- ズドドッ
setEffScaleKey( spep_5, ct, 3, 3);
setEffRotateKey( spep_5, ct, 70);
setEffAlphaKey( spep_5, ct, 255);
setEffAlphaKey( spep_5+60, ct, 255);
setEffAlphaKey( spep_5+80, ct, 0);
setEffShake( spep_5, ct, 99, 20);

entryFade( spep_5+82, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(    spep_5+100,   0,    0, 8000,   0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 500; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------



spep_6 = spep_5+100;

setDisp( spep_6, 1, 0);

bakuhatsu = entryEffect( spep_6, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（紫）
setEffAlphaKey(spep_6, bakuhatsu, 255);
--setEffRotateKey(spep_6, bakuhatsu, -310);
setEffMoveKey(spep_6, bakuhatsu, 0, 0);
setEffScaleKey( spep_6, bakuhatsu, -1.2, 1.2);


playSe( spep_6+3, SE_07);--57

-- ダメージ表示
dealDamage(spep_6+13);--70

--entryFade( spep_5+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade
entryFade( spep_6+148, 5,  10, 5, 245, 245, 245, 255);      -- white fade
setEffAlphaKey(spep_6+155, bakuhatsu, 255);
setEffAlphaKey(spep_6+156, bakuhatsu, 0);
endPhase(spep_6+160);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
--気を貯める
setVisibleUI(0, 0);

--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
setMoveKey(   30,   0,    0, 0,   0);
setMoveKey(   95,   0,    0, 0,   0);
setScaleKey(   30,   0, 1.5, 1.5);
setScaleKey(   95,   0, 1.5, 1.5);
eff1=entryEffectLife(  30,   1501, 65, 0x80, -1,  0,  0,  0);    -- eff_002
eff2=entryEffectLife(  30,   1500,  65, 0,    -1,  0,  0,  0);    -- eff_001
setEffAlphaKey(30, eff1, 255);
setEffAlphaKey(30, eff2, 255);

playSe( 30, SE_01);


entryFade( 82, 8, 7, 5, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   350, 39, 0x80,  -1,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);


-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
--playSe( 30, SE_02);

--entryEffect(  61,   1501,   0x80, -1,  0,  0,  30);    -- eff_002
--entryEffect(  61,   1500,   0,    -1,  0,  0,  30);    -- eff_001

spep_2 = 95;
setEffAlphaKey(spep_2, eff1, 255);
setEffAlphaKey(spep_2, eff2, 255);
setEffAlphaKey(spep_2+1, eff1, 0);
setEffAlphaKey(spep_2+1, eff2, 0);

------------------------------------------------------
-- ギャリック砲溜め！(100F)
------------------------------------------------------
setDisp( spep_2, 0, 0);
--setVisibleUI(spep_2-1, 0);
--changeAnime( spep_2, 0, 30);                       -- 溜め!
shuchusen = entryEffectLife( spep_2-3, 906, 12, 0x100,  -1, 0, 20,  65);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.3, 1.3);
setEffShake( spep_2, shuchusen, 95, 8);

playSe( spep_2+3, SE_03);


--[[( spep_2,   0,   1.0, 1.0);
setScaleKey( spep_2+130,   0,   0.5, 0.5);
setMoveKey( spep_2-1,   0,   0, 0,   0);
setMoveKey( spep_2,   0,   50, 0,   0);
setMoveKey( spep_2+100,   0,  50, 0,   0);

--entryEffect(  spep_2,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_2,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
--playSe( spep_2+10, SE_04);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_2+20,  350, 78, 0x80,  0,  1,  -10,  -120); -- オーラ
setEffScaleKey( spep_2, aura, 1.7, 1.7);
setShakeChara( spep_2, 0, 120, 5);

kame_hand = entryEffect( spep_2+1, 150488, 0x40, 0, 300, 10, 70);   -- 手のカメハメ波部
setEffScaleKey( spep_2, kame_hand, 1, 1);
setEffScaleKey( spep_2+115, kame_hand, 1, 1);

entryFade( spep_2+90, 8, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_2, 0, 120, 0, 10, 10, 10, 200);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_2-3, 906, 95, 0x100,  -1, 0, 20,  65);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.3, 1.3);
setEffScaleKey( spep_2+115, shuchusen, 1.3, 1.3);
setEffShake( spep_2, shuchusen, 95, 8);


-- 書き文字エントリー
--[[
ct = entryEffectLife( spep_2+20,190006 , 60, 0x00, -1, 0, -10, 520);    -- ゴゴゴ・・・
setEffShake(spep_2+20, ct, 40, 8);
setEffScaleKey(spep_2+20, ct, 0.8, 0.8);
setEffScaleKey( spep_2+20, bakuhatsu, -1.0, 1.0);--]]

shuchusen = entryEffectLife( spep_2+11, 906, 90, 0x100,  -1, 0, 20,  65);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.3, 1.3);
setEffShake( spep_2, shuchusen, 95, 8);

spep_3 = spep_2+100;

------------------------------------------------------
-- ギャリック砲発射(110F)
------------------------------------------------------
setDisp( spep_3, 0, 0);

kamehame_beam = entryEffect( spep_3, SP_05, 0x100,  0,  0, 10,  0);   -- 伸びるかめはめ波

playSe( spep_3, SE_07);
playSe( spep_3+30, SE_03);
playSe( spep_3+90, SE_07);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 200, 0, 10, 10, 10, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_3, 921, 180, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey( spep_3, sen2, 1.25, 1.25);
setEffShake( spep_3, sen2, 190, 7);

setShakeChara( spep_3+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_3-3, 906, 50, 0x80,  -1, 0, 20,  65);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.3, 1.3);
setEffScaleKey( spep_3+50, shuchusen, 1.3, 1.3);
setEffShake( spep_3, shuchusen, 50, 8);

--[[shuchusen = entryEffectLife( spep_3, 906, 180, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);--]]


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

entryFade( spep_3+180, 5,  5, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+190;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setScaleKey( spep_4-1,   0, 1.5, 1.5);
setScaleKey( spep_4,   0, 1.0, 1.0);

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--setShake(spep_4-1, 90, 5);

entryFade( spep_4+80, 8, 10, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( spep_4+64, SE_06);

spep_5 = spep_4+92;

------------------------------------------------------
-- ギャリック砲迫る(100F)
------------------------------------------------------
setDisp( spep_5, 0, 0);--477
setDisp( spep_5, 1, 1);    
changeAnime( spep_5, 1, 104);                        -- ガード
setMoveKey(  spep_5-1,    1,  235,  0,   0);
setMoveKey(  spep_5,    1,  235,  0,   0);
setMoveKey(  spep_5+1,    1,  235,  0,   0);
setScaleKey( spep_5-1,    1,  0.7, 0.7);
setScaleKey( spep_5,    1,  0.7, 0.7);

setMoveKey(  spep_5+30,    1,   120,  0,   0);
setScaleKey(  spep_5+30,   1,   1.6,  1.6);

playSe( spep_5, SE_06);

kamehame_beam2 = entryEffect( spep_5, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_5, kamehame_beam2, 1, 1);
setEffScaleKey( spep_5+82, kamehame_beam2, 1, 1);
--setEffScaleKey( spep_5+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_5+82, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe( spep_5+70, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_5+85, 1, 108);
setMoveKey(  spep_5+85, 1,  120,    0,  0);
setMoveKey(  spep_5+99, 1,  400,    0,  0);
setScaleKey( spep_5+85, 1,  1.6, 1.6);
setScaleKey( spep_5+85, 1,  1.5, 1.5);
setScaleKey( spep_5+85, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);

entryFadeBg( spep_5, 0, 87, 0, 10, 10, 10, 200);          -- ベース暗め　背景

entryEffectLife( spep_5, 921, 87, 0x80,  -1,  0,  0,  0); -- 流線斜め


-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10014, 99, 0, -1, 0, -100, 290); -- ズドドッ
setEffShake( spep_5, ct, 99, 20);
setEffScaleKey( spep_5, ct, 3, 3);
setEffRotateKey( spep_5, ct, -70);
setEffAlphaKey( spep_5, ct, 255);
setEffAlphaKey( spep_5+60, ct, 255);
setEffAlphaKey( spep_5+80, ct, 0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 500; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------


entryFade( spep_5+82, 2,  18, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( spep_5,   0,    0, 0,   0);
setMoveKey(    spep_5+100,   0,    0, 8000,   0);



spep_6 = spep_5+100;

setDisp( spep_6, 1, 0);

bakuhatsu = entryEffect( spep_6, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（紫）
setEffAlphaKey(spep_6, bakuhatsu, 255);
--setEffRotateKey(spep_6, bakuhatsu, -310);
setEffMoveKey(spep_6, bakuhatsu, 0, 0);
setEffScaleKey( spep_6, bakuhatsu, -1.2, 1.2);


playSe( spep_6+3, SE_07);--57

-- ダメージ表示
dealDamage(spep_6+13);--70

--entryFade( spep_5+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade
entryFade( spep_6+148, 5,  10, 5, 245, 245, 245, 255);      -- white fade
setEffAlphaKey(spep_6+155, bakuhatsu, 255);
setEffAlphaKey(spep_6+156, bakuhatsu, 0);
endPhase(spep_6+160);

end
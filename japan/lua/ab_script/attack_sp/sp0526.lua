


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

SE_12 = 09;

tyo = -40;
tyo2 = -60;

--味方
SP_01 = 152827;
SP_02 = 152828;
SP_03 = 152829;

--敵
SP_01x = 152827;
SP_02x = 152828;
SP_03x = 152829;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

setVisibleUI(0, 0);
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------


--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 60, 6, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura1 = entryEffectLife(  28,   311, 42, 0x80,  0,  -1,  0,  -200); -- オーラ
--setEffScaleKey( 30, aura1, 1.1, 1.1);
setEffScaleKey( 30, aura1, 2.0, 2.0);
setEffScaleKey( 32, aura1, 2.0, 2.0);
setEffScaleKey( 70, aura1, 2.0, 2.0);
setShakeChara( 30, 0, 19, 5);

--setEffMoveKey(  30,  aura1,  0,  -150);
--setEffMoveKey(  31,  aura1,  0,  -150);
--setEffMoveKey(  32,  aura1,  0,  -150);
--setEffMoveKey(  33,  aura1,  0,  -150);
--setEffMoveKey(  34,  aura1,  0,  -150);
--setEffMoveKey(  35,  aura1,  0,  -150);
setEffMoveKey(  70,  aura1,  0,  -200);

setEffAlphaKey(  28, aura1, 0 );
setEffAlphaKey(  29, aura1, 0 );
setEffAlphaKey(  30, aura1, 255 );
setEffAlphaKey(  70, aura1, 255 );

-- 書き文字エントリー
ctzuzun = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ctzuzun, 40, 7);
setEffAlphaKey(30, ctzuzun, 255);
setEffAlphaKey(50, ctzuzun, 255);
setEffAlphaKey(70, ctzuzun, 0);
setEffScaleKey( 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( 40, ctzuzun, 2.0, 2.0);

playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffectLife(  70,   1503, 120,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffectLife(  70,   1502, 120,  0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  82,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  82,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 82, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x100,      0,  -20,  300,  0);   -- 手のカメハメ波部
setEffMoveKey(  70,  kame_hand,  -20,  300);
setEffMoveKey(  165,  kame_hand,  -20,  300);
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  70,   311, 99, 0x80,  0,  0,  0,  -200); -- オーラ
setEffScaleKey( 70, aura2, 2.0, 2.0);
setEffScaleKey( 169, aura2, 2.0, 2.0);
setShakeChara( 70, 0, 49, 5);

setEffMoveKey(  70,  aura2,  0,  -200);
setEffMoveKey(  169,  aura2,  0,  -200);


-- 書き文字エントリー
ctgogo = entryEffectLife( 94, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey(  94, ctgogo, 255 );
setEffAlphaKey(  156, ctgogo, 255 );
setEffAlphaKey(  158, ctgogo, 191 );
setEffAlphaKey(  160, ctgogo, 128 );
setEffAlphaKey(  162, ctgogo, 64 );
setEffAlphaKey(  164, ctgogo, 0 );

setEffRotateKey(  94,  ctgogo,  0);
setEffRotateKey(  164,  ctgogo,  0);

setEffScaleKey(  94,  ctgogo,  0.7,  0.7);
setEffScaleKey(  124,  ctgogo, 0.7,  0.7);
setEffScaleKey( 164, ctgogo, 1.07, 1.07 );

setEffMoveKey(  94,  ctgogo,  0,  530);
setEffMoveKey(  164,  ctgogo,  0,  530);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);
setMoveKey(  174,    0,      0,  0,   0);
setMoveKey(  175,    0,      0,  200,   0);
playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 255, 2, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
--[[
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);
--]]
setMoveKey(  259,    0,      0,  100,   0);
setMoveKey(  270,    0,      0,  100,   0);
setMoveKey(  290,    0,   -30,  100,   20);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  200,   0);
--setMoveKey(  300,    0,   -100,  200,   0);
--setMoveKey(  308,    0,   -1100,  200,   0);
setMoveKey(  300,    0,   -150,  100,   50);
setMoveKey(  305,    0,   -550,  100,   80);
--setMoveKey(  308,    0,   -1100,  0,   0);
setDisp( 306, 0, 0);


entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 210, 0, 0, 0, 0, 180);       -- ベース暗め　背景
--entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
--entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, sen2, 190);
setEffScaleKey( 260, sen2, 1.3, 1.3);
setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ctzuo = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ctzuo, 32, 5);
setEffAlphaKey(268, ctzuo, 255);
setEffAlphaKey(290, ctzuo, 255);
setEffAlphaKey(300, ctzuo, 0);
setEffScaleKey(268, ctzuo, 0.0, 0.0);
setEffScaleKey(272, ctzuo, 1.3, 1.3);
setEffScaleKey(292, ctzuo, 1.3, 1.3);
setEffScaleKey(300, ctzuo, 6.0, 6.0);

playSe( 300, SE_07);
entryFade( 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------
spep7=370;

setMoveKey(spep7-1,0, 0, -54,0);
setMoveKey(spep7,0, 0, -800,0);
setDisp( spep7, 0, 0);

Semaru = entryEffectLife(spep7,SP_03, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep7, Semaru, 1.0, 1.0);
setEffMoveKey( spep7, Semaru, 0, 0, 0);
setEffRotateKey( spep7, Semaru, 0);
setEffAlphaKey( spep7, Semaru, 255);

setDisp( spep7, 1, 1);
changeAnime( spep7, 1, 104);                        -- ガード
setMoveKey(  spep7-2,    1, 9000, 0,   0);
setMoveKey(  spep7-1,    1,  300,  0,   0);
setMoveKey(  spep7,    1,  300,  0,   0);
setScaleKey( spep7-1,    1,  1.0, 1.0);

setMoveKey(  spep7+60,    1,   250,  -30,   0);
setScaleKey(  spep7+60,   1,   2.5,  2.5);

playSe( spep7, SE_06); 

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep7, 10014, 90, 0, -1, 0, 0, 310); -- ズドドッ
setEffShake(spep7, ctZudodo, 90, 40);
setEffScaleKey( spep7, ctZudodo, 3.3, 3.3);
setEffRotateKey(spep7, ctZudodo, 70);
setEffAlphaKey(spep7, ctZudodo, 255);

-- ** エフェクト等 ** --
setShakeChara( spep7, 1, 90, 20);

entryFadeBg( spep7, 0, 86, 0,0, 0, 0, 180);          -- ベース暗め　背景

sen7 = entryEffectLife( spep7, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep7, sen7, 0);
setEffScaleKey( spep4, sen7, 1.25, 1.0);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 350; 

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--[[
setMoveKey( SP_dodge, 0,  -2500, -1000,0); --味方位置
setMoveKey( SP_dodge, 0,  -2500, -1000,0); --味方位置
]]
setMoveKey(SP_dodge+1,1,275,-15,0);
setScaleKey(SP_dodge+1,1,1.75,1.75);
setRotateKey(SP_dodge+1,1,0);


setMoveKey(  SP_dodge+1,    0,   -30,  100,   20);
setMoveKey(SP_dodge+8, 0,   -30,  100,   20);

setMoveKey(SP_dodge+8,1,275,-15,0);
setScaleKey(SP_dodge+8,1,1.75,1.75);
setRotateKey(SP_dodge+8,1,0);

setMoveKey( SP_dodge+9, 0,  -2500,  -1000,   0);
setMoveKey(   SP_dodge+10,   0,    -2500, -1000,   0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+9,   0, 0);
--setMoveKey(SP_dodge+10,1,0,0,0);
--setScaleKey(SP_dodge+10,1,1.0,1.0);
--setRotateKey(SP_dodge+10,1,0);


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

playSe( spep7+62, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep7+62, 1, 108);
setMoveKey(  spep7+61, 1,  250,    -30,  0);
setMoveKey(  spep7+62, 1,  230,    -30,  0);
setMoveKey(  spep7+63, 1,  250,    -30,  0);
setMoveKey(  spep7+89, 1,  300,    0,  0);
setScaleKey( spep7+62, 1,  2.5, 2.5);
setScaleKey( spep7+89, 1,  0.4, 0.4);

setRotateKey( spep7, 1, 0); 
setRotateKey( spep7+61, 1, 0); 
setRotateKey( spep7+62, 1, 30); 
setRotateKey( spep7+63, 1, 345); 
setRotateKey( spep7+64, 1, 0); 
setRotateKey( spep7+89, 1, 0); 

setDisp(spep7+89,1,0);

setEffAlphaKey(spep7+60, ctZudodo, 255);
setEffAlphaKey(spep7+80, ctZudodo, 255);

entryFade( spep7+77, 6, 14, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- ガッ
------------------------------------------------------
SP_ATK = spep7+100;

--***敵の動き***--
setDisp( SP_ATK + 0, 1, 1 );
changeAnime( SP_ATK + 0, 1, 107 );

setMoveKey( SP_ATK + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_ATK + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( SP_ATK + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_ATK + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_ATK + 8, 1, 15, -65.4 , 0 );
setMoveKey( SP_ATK + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( SP_ATK + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( SP_ATK + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( SP_ATK + 0, 1, 0.22, 0.22 );
setScaleKey( SP_ATK + 2, 1, 0.35, 0.35 );
setScaleKey( SP_ATK + 4, 1, 0.51, 0.51 );
setScaleKey( SP_ATK + 6, 1, 0.7, 0.7 );
setScaleKey( SP_ATK + 8, 1, 0.93, 0.93 );
setScaleKey( SP_ATK + 10, 1, 1.2, 1.2 );
setScaleKey( SP_ATK + 12, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 14, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 16, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 18, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 20, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 22, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 24, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 26, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 120, 1, 1.6, 1.6 );

setRotateKey( SP_ATK + 0, 1, 0 );
setRotateKey( SP_ATK + 2, 1, 105 );
setRotateKey( SP_ATK + 4, 1, 240 );
setRotateKey( SP_ATK + 6, 1, 405 );
setRotateKey( SP_ATK + 8, 1, 600 );
setRotateKey( SP_ATK + 10, 1, 825 );
setRotateKey( SP_ATK + 12, 1, 1080 );
setRotateKey( SP_ATK + 120, 1, 1080 );

--爆発エフェクト
entryEffect( SP_ATK, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK, SE_10);

setDamage( SP_ATK +16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK+8,6,15);
setShake(SP_ATK+14,15,10);

--書き文字--
ctGa = entryEffectLife( SP_ATK + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( SP_ATK + 14, ctGa, 30, 10);

setEffMoveKey( SP_ATK + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( SP_ATK + 14, ctGa, 2, 2 );
setEffScaleKey( SP_ATK+16, ctGa, 2.0, 2.0);
setEffScaleKey( SP_ATK+17, cGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+18, ctGa, 4.0, 4.0);
setEffScaleKey( SP_ATK+19, ctGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+20, ctGa, 3.8, 3.8);
setEffScaleKey( SP_ATK+112, ctGa, 3.8, 3.8);

setEffRotateKey( SP_ATK + 14, ctGa, -40 );
setEffRotateKey( SP_ATK + 16, ctGa, -31 );
setEffRotateKey( SP_ATK + 18, ctGa, -40 );
setEffRotateKey( SP_ATK + 20, ctGa, -31 );
setEffRotateKey( SP_ATK + 22, ctGa, -40 );
setEffRotateKey( SP_ATK + 24, ctGa, -31);
setEffRotateKey( SP_ATK + 26, ctGa, -40 );
setEffRotateKey( SP_ATK + 28, ctGa, -31);
setEffRotateKey( SP_ATK + 30, ctGa, -40 );

setEffAlphaKey( SP_ATK + 14, ctGa, 255 );

--entryFadeBg( SP_ATK,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( SP_ATK+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( SP_ATK+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( SP_ATK+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  SP_ATK+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(SP_ATK+16);
entryFade( SP_ATK+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK + 110);

else
--------------------------------------------------
---敵
--------------------------------------------------


--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 60, 6, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura1 = entryEffectLife(  28,   311, 42, 0x80,  0,  -1,  0,  -200); -- オーラ
--setEffScaleKey( 30, aura1, 1.1, 1.1);
setEffScaleKey( 30, aura1, 2.0, 2.0);
setEffScaleKey( 32, aura1, 2.0, 2.0);
setEffScaleKey( 70, aura1, 2.0, 2.0);
setShakeChara( 30, 0, 19, 5);

--setEffMoveKey(  30,  aura1,  0,  -150);
--setEffMoveKey(  31,  aura1,  0,  -150);
--setEffMoveKey(  32,  aura1,  0,  -150);
--setEffMoveKey(  33,  aura1,  0,  -150);
--setEffMoveKey(  34,  aura1,  0,  -150);
--setEffMoveKey(  35,  aura1,  0,  -150);
setEffMoveKey(  70,  aura1,  0,  -200);

setEffAlphaKey(  28, aura1, 0 );
setEffAlphaKey(  29, aura1, 0 );
setEffAlphaKey(  30, aura1, 255 );
setEffAlphaKey(  70, aura1, 255 );

-- 書き文字エントリー
ctzuzun = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ctzuzun, 40, 7);
setEffAlphaKey(30, ctzuzun, 255);
setEffAlphaKey(50, ctzuzun, 255);
setEffAlphaKey(70, ctzuzun, 0);
setEffScaleKey( 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( 40, ctzuzun, 2.0, 2.0);

playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffectLife(  70,   1503, 120,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffectLife(  70,   1502, 120,  0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  82,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  82,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 82, SE_04);

kame_hand = entryEffect( 70, SP_01x, 0x100,      0,  10,  300,  0);   -- 手のカメハメ波部
setEffMoveKey(  70,  kame_hand,  10,  300);
setEffMoveKey(  165,  kame_hand,  10,  300);
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  70,   311, 99, 0x80,  0,  0,  0,  -200); -- オーラ
setEffScaleKey( 70, aura2, 2.0, 2.0);
setEffScaleKey( 169, aura2, 2.0, 2.0);
setShakeChara( 70, 0, 49, 5);

setEffMoveKey(  70,  aura2,  0,  -200);
setEffMoveKey(  169,  aura2,  0,  -200);


-- 書き文字エントリー
ctgogo = entryEffectLife( 94, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey(  94, ctgogo, 255 );
setEffAlphaKey(  156, ctgogo, 255 );
setEffAlphaKey(  158, ctgogo, 191 );
setEffAlphaKey(  160, ctgogo, 128 );
setEffAlphaKey(  162, ctgogo, 64 );
setEffAlphaKey(  164, ctgogo, 0 );

setEffRotateKey(  94,  ctgogo,  0);
setEffRotateKey(  164,  ctgogo,  0);

setEffScaleKey(  94,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  124,  ctgogo, -0.7,  0.7);
setEffScaleKey( 164, ctgogo, -1.07, 1.07 );

setEffMoveKey(  94,  ctgogo,  0,  530);
setEffMoveKey(  164,  ctgogo,  0,  530);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);
setMoveKey(  174,    0,      0,  0,   0);
setMoveKey(  175,    0,      0,  200,   0);
playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 255, 2, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
--[[
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);
--]]
setMoveKey(  259,    0,      0,  100,   0);
setMoveKey(  270,    0,      0,  100,   0);
setMoveKey(  290,    0,   -30,  100,   20);

kamehame_beam = entryEffectLife( 260, SP_02x, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  200,   0);
--setMoveKey(  300,    0,   -100,  200,   0);
--setMoveKey(  308,    0,   -1100,  200,   0);
setMoveKey(  300,    0,   -150,  100,   50);
setMoveKey(  305,    0,   -550,  100,   80);
--setMoveKey(  308,    0,   -1100,  0,   0);
setDisp( 306, 0, 0);


entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 210, 0, 0, 0, 0, 180);       -- ベース暗め　背景
--entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
--entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, sen2, 190);
setEffScaleKey( 260, sen2, 1.3, 1.3);
setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ctzuo = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ctzuo, 32, 5);
setEffAlphaKey(268, ctzuo, 255);
setEffAlphaKey(290, ctzuo, 255);
setEffAlphaKey(300, ctzuo, 0);
setEffScaleKey(268, ctzuo, 0.0, 0.0);
setEffScaleKey(272, ctzuo, 1.3, 1.3);
setEffScaleKey(292, ctzuo, 1.3, 1.3);
setEffScaleKey(300, ctzuo, 6.0, 6.0);

playSe( 300, SE_07);
entryFade( 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------
spep7=370;

setMoveKey(spep7-1,0, 0, -54,0);
setMoveKey(spep7,0, 0, -800,0);
setDisp( spep7, 0, 0);

Semaru = entryEffectLife(spep7,SP_03, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep7, Semaru, 1.0, 1.0);
setEffMoveKey( spep7, Semaru, 0, 0, 0);
setEffRotateKey( spep7, Semaru, 0);
setEffAlphaKey( spep7, Semaru, 255);

setDisp( spep7, 1, 1);
changeAnime( spep7, 1, 104);                        -- ガード
setMoveKey(  spep7-2,    1, 9000, 0,   0);
setMoveKey(  spep7-1,    1,  300,  0,   0);
setMoveKey(  spep7,    1,  300,  0,   0);
setScaleKey( spep7-1,    1,  1.0, 1.0);

setMoveKey(  spep7+60,    1,   250,  -30,   0);
setScaleKey(  spep7+60,   1,   2.5,  2.5);

playSe( spep7, SE_06); 

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep7, 10014, 90, 0, -1, 0, 0, 310); -- ズドドッ
setEffShake(spep7, ctZudodo, 90, 40);
setEffScaleKey( spep7, ctZudodo, 3.3, 3.3);
setEffRotateKey(spep7, ctZudodo, 0);
setEffAlphaKey(spep7, ctZudodo, 255);

-- ** エフェクト等 ** --
setShakeChara( spep7, 1, 90, 20);

entryFadeBg( spep7, 0, 86, 0,0, 0, 0, 180);          -- ベース暗め　背景

sen7 = entryEffectLife( spep7, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep7, sen7, 0);
setEffScaleKey( spep4, sen7, 1.25, 1.0);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 350; 

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
setMoveKey( SP_dodge, 0,  -2500, -1000,0); --味方位置
setMoveKey( SP_dodge, 0,  -2500, -1000,0); --味方位置
]]

setMoveKey(SP_dodge+1,1,275,-15,0);
setScaleKey(SP_dodge+1,1,1.75,1.75);
setRotateKey(SP_dodge+1,1,0);

setMoveKey(SP_dodge+8,1,275,-15,0);
setScaleKey(SP_dodge+8,1,1.75,1.75);
setRotateKey(SP_dodge+8,1,0);

setMoveKey(  SP_dodge+1,    0,   -30,  100,   20);
setMoveKey(SP_dodge+8, 0,   -30,  100,   20);

setMoveKey( SP_dodge+9, 0,  -2500,  -1000,   0);
setMoveKey(   SP_dodge+10,   0,    -2500, -1000,   0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+10,   1, 0);
--setMoveKey(SP_dodge+10,1,0,0,0);
--setScaleKey(SP_dodge+10,1,1.0,1.0);
--setRotateKey(SP_dodge+10,1,0);


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

playSe( spep7+62, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep7+62, 1, 108);
setMoveKey(  spep7+61, 1,  250,    -30,  0);
setMoveKey(  spep7+62, 1,  230,    -30,  0);
setMoveKey(  spep7+63, 1,  250,    -30,  0);
setMoveKey(  spep7+89, 1,  300,    0,  0);
setScaleKey( spep7+62, 1,  2.5, 2.5);
setScaleKey( spep7+89, 1,  0.4, 0.4);

setRotateKey( spep7, 1, 0); 
setRotateKey( spep7+61, 1, 0); 
setRotateKey( spep7+62, 1, 30); 
setRotateKey( spep7+63, 1, 345); 
setRotateKey( spep7+64, 1, 0); 
setRotateKey( spep7+89, 1, 0); 

setDisp(spep7+89,1,0);

setEffAlphaKey(spep7+60, ctZudodo, 255);
setEffAlphaKey(spep7+80, ctZudodo, 255);

entryFade( spep7+77, 6, 14, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- ガッ
------------------------------------------------------
SP_ATK = spep7+100;

--***敵の動き***--
setDisp( SP_ATK + 0, 1, 1 );
changeAnime( SP_ATK + 0, 1, 107 );

setMoveKey( SP_ATK + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_ATK + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( SP_ATK + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_ATK + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_ATK + 8, 1, 15, -65.4 , 0 );
setMoveKey( SP_ATK + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( SP_ATK + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( SP_ATK + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( SP_ATK + 0, 1, 0.22, 0.22 );
setScaleKey( SP_ATK + 2, 1, 0.35, 0.35 );
setScaleKey( SP_ATK + 4, 1, 0.51, 0.51 );
setScaleKey( SP_ATK + 6, 1, 0.7, 0.7 );
setScaleKey( SP_ATK + 8, 1, 0.93, 0.93 );
setScaleKey( SP_ATK + 10, 1, 1.2, 1.2 );
setScaleKey( SP_ATK + 12, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 14, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 16, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 18, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 20, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 22, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 24, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 26, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 120, 1, 1.6, 1.6 );

setRotateKey( SP_ATK + 0, 1, 0 );
setRotateKey( SP_ATK + 2, 1, 105 );
setRotateKey( SP_ATK + 4, 1, 240 );
setRotateKey( SP_ATK + 6, 1, 405 );
setRotateKey( SP_ATK + 8, 1, 600 );
setRotateKey( SP_ATK + 10, 1, 825 );
setRotateKey( SP_ATK + 12, 1, 1080 );
setRotateKey( SP_ATK + 120, 1, 1080 );

--爆発エフェクト
entryEffect( SP_ATK, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK, SE_10);

setDamage( SP_ATK +16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK+8,6,15);
setShake(SP_ATK+14,15,10);

--書き文字--
ctGa = entryEffectLife( SP_ATK + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( SP_ATK + 14, ctGa, 30, 10);

setEffMoveKey( SP_ATK + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( SP_ATK + 14, ctGa, 2, 2 );
setEffScaleKey( SP_ATK+16, ctGa, 2.0, 2.0);
setEffScaleKey( SP_ATK+17, cGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+18, ctGa, 4.0, 4.0);
setEffScaleKey( SP_ATK+19, ctGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+20, ctGa, 3.8, 3.8);
setEffScaleKey( SP_ATK+112, ctGa, 3.8, 3.8);

setEffRotateKey( SP_ATK + 14, ctGa, -40 );
setEffRotateKey( SP_ATK + 16, ctGa, -31 );
setEffRotateKey( SP_ATK + 18, ctGa, -40 );
setEffRotateKey( SP_ATK + 20, ctGa, -31 );
setEffRotateKey( SP_ATK + 22, ctGa, -40 );
setEffRotateKey( SP_ATK + 24, ctGa, -31);
setEffRotateKey( SP_ATK + 26, ctGa, -40 );
setEffRotateKey( SP_ATK + 28, ctGa, -31);
setEffRotateKey( SP_ATK + 30, ctGa, -40 );

setEffAlphaKey( SP_ATK + 14, ctGa, 255 );

--entryFadeBg( SP_ATK,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( SP_ATK+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( SP_ATK+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( SP_ATK+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  SP_ATK+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(SP_ATK+16);
entryFade( SP_ATK+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK + 110);


end



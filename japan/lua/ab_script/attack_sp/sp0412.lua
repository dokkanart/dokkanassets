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

SP_01 = 100332;
SP_02 = 100333;
SP_03 = 100334;

SP_01=151071;--気溜め
SP_02=151072;--溜め～発射
SP_03=151073;--発射
SP_04=151074;--迫る
SP_05=151080;--気溜め
SP_06=151081;--溜め～発射
SP_07=151082;--迫る


-----------------------------------------------------
--気溜め（0-100F）
-----------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI( 0, 0);
changeAnime( 0, 0, 1); 

setDisp( 0, 1, 0);
setDisp( 0, 0, 1);
setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   0,    0, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   0,    0, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);

setScaleKey(   0,   0, 1.2, 1.2);
setScaleKey(   0,   1, 1.2, 1.2);
setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);

setMoveKey(   30,   0,    0, 0,   0);
setScaleKey(   30,   0, 1.2, 1.2);
setRotateKey(   30,   0, 0);

spep1=30;
setDisp(spep1,0,0);

Kitame = entryEffectLife(spep1,SP_01, 100,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep1, Kitame, 1.0, 1.0);
setEffMoveKey( spep1, Kitame, 0, 0, 0);
setEffRotateKey( spep1, Kitame, 0);
setEffAlphaKey( spep1, Kitame, 255);

playSe( spep1,SE_01);

entryEffect(  spep1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep1+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep1+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep1+10, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep1+23, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep1+23, ctgogo, 70, 10);
setEffScaleKey(spep1+23, ctgogo, 0.8, 0.8);
setEffRotateKey(spep1+23, ctgogo, 0);
setEffAlphaKey( spep1+23, ctgogo, 255);

entryFade( spep1+90, 5, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- カードカットイン(90F) (100〜190F)
------------------------------------------------------
spep4=spep1+100;

setScaleKey( spep4-1,   0, 1.5, 1.5);
setScaleKey( spep4,   0, 1.0, 1.0);

playSe( spep4, SE_05);
speff = entryEffect(  spep4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep4+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( spep4+64, SE_06);

------------------------------------------------------
-- かめはめ波溜め！(100F) (190〜290F)
------------------------------------------------------
spep5=spep4+90;
Tame = entryEffectLife(spep5,SP_02, 100,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep5, Tame, 1.0, 1.0);
setEffMoveKey( spep5, Tame, 0, 0, 0);
setEffRotateKey( spep5, Tame, 0);
setEffAlphaKey( spep5, Tame, 255);

playSe( spep5+10, SE_03);

entryEffect(  spep5,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep5,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--playSe( spep5+10, SE_04);
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  spep4,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( spep4, aura, 1.0, 1.0);
setShakeChara( spep4, 0, 49, 5);
]]--
-- 書き文字エントリー
-- 書き文字エントリー
--[[
ctgogo = entryEffectLife( spep5+23, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep5+23, ctgogo, 70, 10);
setEffScaleKey(spep5+23, ctgogo, 0.8, 0.8);
setEffRotateKey(spep5+23, ctgogo, 0);
setEffAlphaKey( spep5+23, ctgogo, 255);
]]--
entryFade( spep5+85, 10, 11, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カメハメハ発射(110F) (290〜400F)
------------------------------------------------------
spep6=spep5+100;

Burst = entryEffectLife(spep6,SP_03, 110,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep6, Burst, 1.0, 1.0);
setEffMoveKey( spep6, Burst, 0, 0, 0);
setEffRotateKey( spep6, Burst, 0);
setEffAlphaKey( spep6, Burst, 255);

spname = entryEffect( spep6, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade( spep6+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--removeAllEffect(spep6+109);

-- ** エフェクト等 ** --
entryFadeBg( spep6, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

sen2 = entryEffectLife( spep6, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep6, sen2, 190);
setEffScaleKey( spep6, sen2, 1.25, 1.25);

setShakeChara( spep6+45, 0, 54, 50);

shuchusen = entryEffectLife( spep6, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep6, shuchusen, 1.0, 1.0);
setEffScaleKey( spep6+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep6+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep6+2, 10012, 40, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep6+2, ctzuo, 100, 300,0);
setEffMoveKey(spep6+8, ctzuo, 150, 400,0);
setEffMoveKey(spep6+42, ctzuo, 150, 400,0);
setEffShake(spep6+2, ctzuo, 32, 15);
setEffAlphaKey(spep6+2, ctzuo, 255);
setEffAlphaKey(spep6+38, ctzuo, 255);
setEffAlphaKey(spep6+42, ctzuo, 0);
setEffScaleKey(spep6+2, ctzuo, 0.1, 0.1);
setEffScaleKey(spep6+8, ctzuo, 3.0, 3.0);
setEffScaleKey(spep6+38, ctzuo, 3.0, 3.0);
setEffScaleKey(spep6+42, ctzuo, 6.0, 6.0);
setEffRotateKey(spep6+2, ctzuo, 20);
setEffRotateKey(spep6+42, ctzuo, 20);

playSe( spep6+14, SE_07);
entryFade( spep6+88, 19,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)  (400〜510F)
------------------------------------------------------
spep7=spep6+110;

setDisp( spep7, 0, 0);
setMoveKey(spep7-1,0, 0, -54,0);
setMoveKey(spep7,0, 0, -800,0);

Semaru = entryEffectLife(spep7,SP_04, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep7, Semaru, 1.0, 1.0);
setEffMoveKey( spep7, Semaru, 0, 0, 0);
setEffRotateKey( spep7, Semaru, 0);
setEffAlphaKey( spep7, Semaru, 255);

setDisp( spep7, 1, 1);
changeAnime( spep7, 1, 104);                        -- ガード
setMoveKey(  spep7-1,    1,  300,  0,   0);
setMoveKey(  spep7,    1,  300,  0,   0);
setScaleKey( spep7-1,    1,  0.7, 0.7);

setMoveKey(  spep7+30,    1,   120,  0,   0);
setScaleKey(  spep7+30,   1,   1.6,  1.6);

playSe( spep7, SE_06); 

-- ** エフェクト等 ** --
setShakeChara( spep7, 1, 90, 20);

entryFadeBg( spep7, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryEffectLife( spep7, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep7, 10014, 90, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep7, ctZudodo, 90, 20);
setEffScaleKey( spep7, ctZudodo, 3.0, 3.0);
setEffRotateKey(spep7, ctZudodo, 70);
setEffAlphaKey(spep7, ctZudodo, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 443; --エンドフェイズのフレーム数を置き換える　（spep7+43）

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

setMoveKey(   SP_dodge+1,    1,  120,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+8,   1,   120, 0,  0);
setScaleKey(   SP_dodge+8,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------
playSe( spep7+53, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep7+53, 1, 108);
setMoveKey(  spep7+53, 1,  120,    0,  0);
setMoveKey(  spep7+80, 1,  300,    0,  0);
setMoveKey(  spep7+89, 1,  300,    0,  0);
setScaleKey( spep7+52, 1,  1.6, 1.6);
setScaleKey( spep7+53, 1,  1.5, 1.5);
setScaleKey( spep7+80, 1,  0.5, 0.5);
setScaleKey( spep7+89, 1,  0.5, 0.5);

setRotateKey( spep7, 1, 0); 
setRotateKey( spep7+89, 1, 0); 

setDisp(spep7+89,1,0);

setEffAlphaKey(spep7+60, ctZudodo, 255);
setEffAlphaKey(spep7+80, ctZudodo, 0);

entryFade( spep7+82, 6,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F) (510〜640F)
------------------------------------------------------
spep8=spep7+90;

setDisp( spep8-1, 0, 0);
setMoveKey(  spep8-1,    1,  100,  0,   0);
setScaleKey( spep8-1,    1,  1, 1);
setMoveKey(  spep8,    1,    0,   0,   128);
setScaleKey( spep8,    1,  0.1, 0.1);

changeAnime( spep8, 1, 107);                         -- 手前ダメージ
setDisp( spep8, 1, 1);

entryEffect( spep8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep8+8, SE_10);

setMoveKey(  spep8+8,   1,    0,   0,   128);
setMoveKey(  spep8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep8+16,   1,  -60,  -200,  -100);
setDamage( spep8+16, 1, 0);  -- ダメージ振動等
setShake(spep8+7,6,15);
setShake(spep8+13,15,10);

setRotateKey( spep8,  1,  30 );
setRotateKey( spep8+2,  1,  80 );
setRotateKey( spep8+4,  1, 120 );
setRotateKey( spep8+6,  1, 160 );
setRotateKey( spep8+8,  1, 200 );
setRotateKey( spep8+10,  1, 260 );
setRotateKey( spep8+12,  1, 320 );
setRotateKey( spep8+14,  1,   0 );

setShakeChara( spep8+15, 1, 5,  10);
setShakeChara( spep8+20, 1, 10, 20);

-- 書き文字エントリー
ctGa = entryEffectLife( spep8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep8+15, ctGa, 30, 10);
setEffRotateKey( spep8+15, ctGa, -40);
setEffScaleKey( spep8+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep8+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep8+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep8+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep8+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep8+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep8+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep8+15, ctGa, 255);
setEffAlphaKey( spep8+105, ctGa, 255);
setEffAlphaKey( spep8+115, ctGa, 0);

playSe( spep8+13, SE_11);
shuchusen = entryEffectLife( spep8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep8+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep8+16);


entryFade( spep8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep8+110);

else

-----------------------------------------------------
--敵側
-----------------------------------------------------
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI( 0, 0);
changeAnime( 0, 0, 1); 

setDisp( 0, 1, 0);
setDisp( 0, 0, 1);
setMoveKey(   0,   0,    -50, 0,   0);
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   0,    -50, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   0,    -50, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   0,    -50, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);

setScaleKey(   0,   0, 1.2, 1.2);
setScaleKey(   0,   1, 1.2, 1.2);
setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);

-----------------------------------------------------
--気溜め（0-100F）
-----------------------------------------------------
setMoveKey(   30,   0,    -50, 0,   0);
setScaleKey(   30,   0, 1.2, 1.2);
setRotateKey(   30,   0, 0);

spep1=30;
setDisp(spep1,0,0);

Kitame = entryEffectLife(spep1,SP_05, 100, 0x100,  -1, 0,  0,  0);
setEffScaleKey( spep1, Kitame, 1.0, 1.0);
setEffMoveKey( spep1, Kitame, 0, 0, 0);
setEffRotateKey( spep1, Kitame, 0);
setEffAlphaKey( spep1, Kitame, 255);

playSe( spep1,SE_01);

entryEffect(  spep1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  spep1+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep1+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
playSe( spep1+10, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep1+23, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep1+23, ctgogo, 70, 10);
setEffScaleKey(spep1+23, ctgogo, -0.8, 0.8);
setEffRotateKey(spep1+23, ctgogo, 0);
setEffAlphaKey( spep1+23, ctgogo, 255);

entryFade( spep1+90, 5, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- カードカットイン(90F) (100〜190F)
------------------------------------------------------
spep4=spep1+100;

setScaleKey( spep4-1,   0, 1.5, 1.5);
setScaleKey( spep4,   0, 1.0, 1.0);

playSe( spep4, SE_05);
speff = entryEffect(  spep4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep4+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( spep4+64, SE_06);

------------------------------------------------------
-- かめはめ波溜め！(100F) (190〜290F)
------------------------------------------------------
spep5=spep4+90;
Tame = entryEffectLife(spep5,SP_06, 100,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep5, Tame, 1.0, 1.0);
setEffMoveKey( spep5, Tame, 0, 0, 0);
setEffRotateKey( spep5, Tame, 0);
setEffAlphaKey( spep5, Tame, 255);

playSe( spep5+10, SE_03);

entryEffect(  spep5,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep5,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--playSe( spep5+10, SE_04);
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  spep4,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( spep4, aura, 1.0, 1.0);
setShakeChara( spep4, 0, 49, 5);
]]--
-- 書き文字エントリー
-- 書き文字エントリー
--[[
ctgogo = entryEffectLife( spep5+23, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep5+23, ctgogo, 70, 10);
setEffScaleKey(spep5+23, ctgogo, 0.8, 0.8);
setEffRotateKey(spep5+23, ctgogo, 0);
setEffAlphaKey( spep5+23, ctgogo, 255);
]]--
entryFade( spep5+85, 10, 11, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カメハメハ発射(110F) (290〜400F)
------------------------------------------------------
spep6=spep5+100;

Burst = entryEffectLife(spep6,SP_07, 110,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep6, Burst, 1.0, 1.0);
setEffMoveKey( spep6, Burst, 0, 0, 0);
setEffRotateKey( spep6, Burst, 0);
setEffAlphaKey( spep6, Burst, 255);

spname = entryEffect( spep6, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade( spep6+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--removeAllEffect(spep6+109);

-- ** エフェクト等 ** --
entryFadeBg( spep6, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

sen2 = entryEffectLife( spep6, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep6, sen2, 190);
setEffScaleKey( spep6, sen2, 1.25, 1.25);

setShakeChara( spep6+45, 0, 54, 50);

shuchusen = entryEffectLife( spep6, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep6, shuchusen, 1.0, 1.0);
setEffScaleKey( spep6+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep6+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep6+2, 10012, 40, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep6+2, ctzuo, 100, 300,0);
setEffMoveKey(spep6+8, ctzuo, 150, 400,0);
setEffMoveKey(spep6+42, ctzuo, 150, 400,0);
setEffShake(spep6+2, ctzuo, 32, 15);
setEffAlphaKey(spep6+2, ctzuo, 255);
setEffAlphaKey(spep6+38, ctzuo, 255);
setEffAlphaKey(spep6+42, ctzuo, 0);
setEffScaleKey(spep6+2, ctzuo, 0.1, 0.1);
setEffScaleKey(spep6+8, ctzuo, 3.0, 3.0);
setEffScaleKey(spep6+38, ctzuo, 3.0, 3.0);
setEffScaleKey(spep6+42, ctzuo, 6.0, 6.0);
setEffRotateKey(spep6+2, ctzuo, 20);
setEffRotateKey(spep6+42, ctzuo, 20);

playSe( spep6+14, SE_07);
entryFade( spep6+88, 19,  10, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)  (400〜510F)
------------------------------------------------------
spep7=spep6+110;

setDisp( spep7, 0, 0);
setMoveKey(spep7-1,0, 0, -54,0);
setMoveKey(spep7,0, 0, -800,0);

Semaru = entryEffectLife(spep7,SP_04, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep7, Semaru, 1.0, 1.0);
setEffMoveKey( spep7, Semaru, 0, 0, 0);
setEffRotateKey( spep7, Semaru, 0);
setEffAlphaKey( spep7, Semaru, 255);

setDisp( spep7, 1, 1);
changeAnime( spep7, 1, 104);                        -- ガード
setMoveKey(  spep7-1,    1,  300,  0,   0);
setMoveKey(  spep7,    1,  300,  0,   0);
setScaleKey( spep7-1,    1,  0.7, 0.7);

setMoveKey(  spep7+30,    1,   120,  0,   0);
setScaleKey(  spep7+30,   1,   1.6,  1.6);

playSe( spep7, SE_06);

-- ** エフェクト等 ** --
setShakeChara( spep7, 1, 90, 20);

entryFadeBg( spep7, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryEffectLife( spep7, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep7, 10014, 90, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep7, ctZudodo, 90, 20);
setEffScaleKey( spep7, ctZudodo, 3.0, 3.0);
setEffRotateKey(spep7, ctZudodo, 0);
setEffAlphaKey(spep7, ctZudodo, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 443; --エンドフェイズのフレーム数を置き換える　（spep7+42）

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

setMoveKey(   SP_dodge+1,    1,  120,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+8,   1,   120, 0,  0);
setScaleKey(   SP_dodge+8,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------
playSe( spep7+54, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep7+53, 1, 108);
setMoveKey(  spep7+53, 1,  120,    0,  0);
setMoveKey(  spep7+80, 1,  300,    0,  0);
setMoveKey(  spep7+89, 1,  300,    0,  0);
setScaleKey( spep7+52, 1,  1.6, 1.6);
setScaleKey( spep7+53, 1,  1.5, 1.5);
setScaleKey( spep7+80, 1,  0.5, 0.5);
setScaleKey( spep7+89, 1,  0.5, 0.5);

setRotateKey( spep7, 1, 0); 
setRotateKey( spep7+89, 1, 0);  

setDisp(spep7+89,1,0);

setEffAlphaKey(spep7+60, ctZudodo, 255);
setEffAlphaKey(spep7+80, ctZudodo, 0);

entryFade( spep7+82, 6,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F) (510〜640F)
------------------------------------------------------
spep8=spep7+90;

setDisp( spep8-1, 0, 0);
setMoveKey(  spep8-1,    1,  100,  0,   0);
setScaleKey( spep8-1,    1,  1, 1);
setMoveKey(  spep8,    1,    0,   0,   128);
setScaleKey( spep8,    1,  0.1, 0.1);

changeAnime( spep8, 1, 107);                         -- 手前ダメージ
setDisp( spep8, 1, 1);

entryEffect( spep8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep8+8, SE_10);

setMoveKey(  spep8+8,   1,    0,   0,   128);
setMoveKey(  spep8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep8+16,   1,  -60,  -200,  -100);
setDamage( spep8+16, 1, 0);  -- ダメージ振動等
setShake(spep8+7,6,15);
setShake(spep8+13,15,10);

setRotateKey( spep8,  1,  30 );
setRotateKey( spep8+2,  1,  80 );
setRotateKey( spep8+4,  1, 120 );
setRotateKey( spep8+6,  1, 160 );
setRotateKey( spep8+8,  1, 200 );
setRotateKey( spep8+10,  1, 260 );
setRotateKey( spep8+12,  1, 320 );
setRotateKey( spep8+14,  1,   0 );

setShakeChara( spep8+15, 1, 5,  10);
setShakeChara( spep8+20, 1, 10, 20);

-- 書き文字エントリー
ctGa = entryEffectLife( spep8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep8+15, ctGa, 30, 10);
setEffRotateKey( spep8+15, ctGa, -40);
setEffScaleKey( spep8+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep8+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep8+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep8+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep8+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep8+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep8+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep8+15, ctGa, 255);
setEffAlphaKey( spep8+105, ctGa, 255);
setEffAlphaKey( spep8+115, ctGa, 0);

playSe( spep8+13, SE_11);
shuchusen = entryEffectLife( spep8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep8+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep8+16);


entryFade( spep8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep8+110);

end
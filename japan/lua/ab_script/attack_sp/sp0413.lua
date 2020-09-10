--sp0413  孫悟空_連続かめはめ波

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

tyo = -30;
tyo2 = -40;

SP_01 = 151105;--溜め
SP_02 = 151106;--発射
SP_03 = 151107;--迫る
SP_04 = 151108;
SP_05 = 151109;--溜め（敵用）
SP_06 = 151110;--発射（敵用）

setVisibleUI(0,0);
changeAnime( 0, 0, 1);                       -- 立ち
--setAnimeLoop(  0, 0, 1);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, 0,   0);
setMoveKey(   4,   0,    0, -54,   0);
setMoveKey(   4,   1,    0, 0,   0);
setMoveKey(   5,   0,    0, -54,   0);
setMoveKey(   5,   1,    0, 0,   0);

setScaleKey(   0,   0, 1.2, 1.2);
setScaleKey(   0,   1, 1.2, 1.2);
setScaleKey(   1,   0, 1.2, 1.2);
setScaleKey(   1,   1, 1.2, 1.2);
setScaleKey(   2,   0, 1.2, 1.2);
setScaleKey(   2,   1, 1.2, 1.2);
setScaleKey(   3,   0, 1.2, 1.2);
setScaleKey(   3,   1, 1.2, 1.2);
setScaleKey(   4,   0, 1.2, 1.2);
setScaleKey(   4,   1, 1.2, 1.2);
setScaleKey(   5,   0, 1.2, 1.2);
setScaleKey(   5,   1, 1.2, 1.2);

------------------------------------------------------
-- 気溜め(40F)(0-70F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep1=0;
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep1+30, 0, 17);                       -- 溜め!
setAnimeLoop(  spep1+30, 0, 1);
entryEffect(  spep1+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep1+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( spep1+30, SE_01);

setDisp(spep1+69,0,0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep1+30,   311, 39, 0x40,  0,  1,  0,  -55); -- オーラ
setEffScaleKey( spep1+30, aura, 1.1, 1.1);
setShakeChara( spep1+30, 0, 59, 10);

entryFade( spep1+59, 7, 9, 6, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- 書き文字エントリー
ctZuzun = entryEffectLife( spep1+30, 10013, 39, 0x100, -1, 0, 0, 250,0); -- ズズンッ

setEffMoveKey( spep1+30,ctZuzun,0,250,0);
setEffMoveKey( spep1+37,ctZuzun,0,350,0);
setEffMoveKey( spep1+69,ctZuzun,0,350,0);

setEffRotateKey( spep1+30,ctZuzun,-10);
setEffShake(spep1+30, ctZuzun, 40, 7);
setEffAlphaKey(spep1+30, ctZuzun, 255);
setEffAlphaKey(spep1+50, ctZuzun, 255);
setEffAlphaKey(spep1+70, ctZuzun, 0);
setEffScaleKey( spep1+30, ctZuzun, 0.2, 0.2);
setEffScaleKey( spep1+40, ctZuzun, 3.0, 3.0);
playSe( spep1+30, SE_02);

entryEffect(  spep1+61,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep1+61,   1500,   0,    -1,  0,  0,  0);    -- eff_001

------------------------------------------------------
-- かめはめ波溜め！(100F)(70-170F)
------------------------------------------------------
spep2=spep1+70;

entryEffect(  spep2+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep2+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect(  spep2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep2+10, SE_04);

Tame = entryEffect( spep2+0, SP_01, 0x100,      0,  30,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep2+0, Tame, 1.0, 1.0);
setEffMoveKey( spep2+0, Tame, 0, 50,0);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep2+20, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep2+20, ctgogo, 70, 10);
setEffScaleKey(spep2+20, ctgogo, 0.8, 0.8);
setEffRotateKey(spep2+20, ctgogo, 0);
setEffAlphaKey( spep2+20, ctgogo, 255);

-- ** エフェクト等 ** --
entryFadeBg( spep2, 0, 99, 0, 0, 0, 0, 230);       -- ベース暗め　背景
entryFade( spep2+83, 7, 13, 6, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
------------------------------------------------------
-- カードカットイン(90F)(170-260F)
------------------------------------------------------
spep3=spep2+100;

setScaleKey( spep3-1,   0, 1.2, 1.2);
setScaleKey( spep3-1,   0, 1.5, 1.5);
setScaleKey( spep3,   0, 1.0, 1.0);

playSe( spep3, SE_05);
speff = entryEffect(  spep3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep3+81, 7, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep3+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F) (260-360F)
------------------------------------------------------
spep4=spep3+90;

Hanatsu= entryEffectLife( spep4, SP_02, 100, 0x100,  0,  -1,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep4, Hanatsu, 0, 0);
setEffMoveKey( spep4+100, Hanatsu, 0, 0, 0);

setEffScaleKey( spep4, Hanatsu, 1.0, 1.0);
setEffScaleKey( spep4+100, Hanatsu, 1.0, 1.0);

playSe( spep4+2, SE_06);
playSe( spep4+36, SE_06);
playSe( spep4+64, SE_06);

--entryFade( spep4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--removeAllEffect(spep4+99);

-- ** エフェクト等 ** --
entryFadeBg( spep4, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep4, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep4, sen2, 190);
setEffScaleKey( spep4, sen2, 1.25, 1.25);

--setShakeChara( spep4+45, 0, 54, 50);

shuchusen = entryEffectLife( spep4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, shuchusen, 1.0, 1.0);
setEffScaleKey( spep4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep4+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctzuo1 = entryEffectLife( spep4+4, 10012, 32, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep4+4, ctzuo1, 100, 250,0);
setEffMoveKey(spep4+8, ctzuo1, 150, 350,0);
setEffMoveKey(spep4+36, ctzuo1, 150, 350,0);
setEffShake(spep4+4, ctzuo1, 32, 15);
setEffAlphaKey(spep4+4, ctzuo1, 255);
setEffAlphaKey(spep4+24, ctzuo1, 255);
setEffAlphaKey(spep4+36, ctzuo1, 0);
setEffScaleKey(spep4+4, ctzuo1, 0.1, 0.1);
setEffScaleKey(spep4+8, ctzuo1, 3.0, 3.0);
setEffScaleKey(spep4+36, ctzuo1, 3.0, 3.0);
setEffRotateKey(spep4+4, ctzuo1, 20);
setEffRotateKey(spep4+36, ctzuo1, 20);

ctzuo2 = entryEffectLife( spep4+37, 10012, 34, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep4+37, ctzuo2, 100, 250,0);
setEffMoveKey(spep4+40, ctzuo2, 150, 350,0);
setEffMoveKey(spep4+71, ctzuo2, 150, 350,0);
setEffShake(spep4+37, ctzuo2, 34, 15);
setEffAlphaKey(spep4+37, ctzuo2, 255);
setEffAlphaKey(spep4+57, ctzuo2, 255);
setEffAlphaKey(spep4+71, ctzuo2, 0);
setEffScaleKey(spep4+37, ctzuo2, 0.1, 0.1);
setEffScaleKey(spep4+40, ctzuo2, 3.0, 3.0);
setEffScaleKey(spep4+71, ctzuo2, 3.0, 3.0);
setEffRotateKey(spep4+37, ctzuo2, 20);
setEffRotateKey(spep4+71, ctzuo2, 20);

ctzuo3 = entryEffectLife( spep4+61, 10012, 37, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep4+61, ctzuo3, 100, 250,0);
setEffMoveKey(spep4+83, ctzuo3, 150, 350,0);
setEffMoveKey(spep4+98, ctzuo3, 150, 350,0);
setEffShake(spep4+61, ctzuo3, 32, 15);
setEffAlphaKey(spep4+61, ctzuo3, 160);
setEffAlphaKey(spep4+74, ctzuo3, 160);
setEffAlphaKey(spep4+83, ctzuo3, 255);
setEffAlphaKey(spep4+98, ctzuo3, 255);
setEffScaleKey(spep4+61, ctzuo3, 0.1, 0.1);
setEffScaleKey(spep4+83, ctzuo3, 3.5, 3.5);
setEffScaleKey(spep4+90, ctzuo3, 3.5, 3.5);
setEffScaleKey(spep4+98, ctzuo3, 4.0, 4.0);
setEffRotateKey(spep4+61, ctzuo3, 30);
setEffRotateKey(spep4+98, ctzuo3, 30);

entryFade( spep4+87, 9, 8, 9, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
-----------------------------------------------------
-----------------------------------------------------
spep5=spep4+100;

Nobiru= entryEffectLife( spep5, SP_03, 100, 0x100,  0,  -1,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep5, Nobiru, 0, 0);
setEffMoveKey( spep5+100, Nobiru, 0, 0, 0);

setEffScaleKey( spep5, Nobiru, 1.2, 1.2);
setEffScaleKey( spep5+100, Nobiru, 1.2, 1.2);

entryFadeBg( spep5, 0, 100, 0,0, 0, 0, 180);          -- ベース暗め　背景
entryEffectLife( spep5, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep5, 10014, 100, 0x100, -1, 0, 0,340, 0); -- ズドドッ
setEffShake(spep5, ctZudodo, 99, 20);
setEffScaleKey( spep5, ctZudodo, 3.0, 3.0);
setEffRotateKey(spep5, ctZudodo, 70);
setEffAlphaKey(spep5, ctZudodo, 255);

playSe( spep5, SE_07);
playSe( spep5+40, SE_07);--390
playSe( spep5+76, SE_07);--426

entryFade( spep5+85, 11,  6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------
spep6=spep5+100;

setDisp( spep6, 0, 0);
setMoveKey(spep6-1,0, 0, -54,0);
setMoveKey(spep6,0, 0, -800,0);

setDisp( spep6, 1, 1);
changeAnime( spep6, 1, 100);
changeAnime( spep6+10, 1, 104);                        -- ガード
setMoveKey(  spep6-1,    1,  0,  0,   0);
setMoveKey(  spep6+100,    1,  0,  0,   0);
setMoveKey(  spep6+1,    1,  0,  0,   0);
setScaleKey( spep6-1,    1,  1.2, 1.2);
setScaleKey( spep6+100,    1,  1.2, 1.2);
setDisp( spep6+100, 1,0);

Semaru = entryEffectLife( spep6, SP_04, 180,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffMoveKey( spep6, Semaru, 0, 0);
setEffMoveKey( spep6+180, Semaru, 0, 0, 0);

setEffScaleKey( spep6, Semaru, 1.0, 1.0);
setEffScaleKey( spep6+180, Semaru, 1.0, 1.0);

-- ** エフェクト等 ** --
setShakeChara( spep6, 1, 100, 20);
entryFadeBg( spep6, 0, 180, 0,0, 0, 0, 180);          -- ベース暗め　背景
entryEffectLife( spep6, 921, 180, 0x80,  -1,  0,  0,  0); -- 流線斜め

entryFade( spep6+165, 11,  6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 473; --エンドフェイズのフレーム数を置き換える(spep5+45)

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(   SP_dodge+1,    1,  0,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.2, 1.2);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+8,   1,   0, 0,  0);
setScaleKey(   SP_dodge+8,   1, 1.2, 1.2);
setRotateKey(   SP_dodge+8,   1, 0);

setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

playSe( spep6+18, SE_09);
playSe( spep6+74, SE_09);
playSe( spep6+109, SE_09);
playSe( spep6+129, SE_09);
playSe( spep6+147, SE_09);
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep7=spep6+180;

setDisp( spep7-1, 1, 1);
setMoveKey(  spep7-1,    1,  100,  0,   0);
setScaleKey( spep7-1,    1,  1.0, 1.0);
setMoveKey(  spep7,    1,    0,   0,   128);
setScaleKey( spep7,    1,  0.1, 0.1);

changeAnime( spep7, 1, 107);                         -- 手前ダメージ
entryEffect( spep7+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep7+8, SE_10);

setMoveKey(  spep7+8,   1,    0,   0,   128);
setMoveKey(  spep7+15,   1,  -60,  -200,  -100);
setMoveKey(  spep7+16,   1,  -60,  -200,  -100);
setDamage( spep7+16, 1, 0);  -- ダメージ振動等
setShake(spep7+7,6,15);
setShake(spep7+13,15,10);

setRotateKey( spep7,  1,  30 );
setRotateKey( spep7+2,  1,  80 );
setRotateKey( spep7+4,  1, 120 );
setRotateKey( spep7+6,  1, 160 );
setRotateKey( spep7+8,  1, 200 );
setRotateKey( spep7+10,  1, 260 );
setRotateKey( spep7+12,  1, 320 );
setRotateKey( spep7+14,  1,   0 );

setShakeChara( spep7+15, 1, 5,  10);
setShakeChara( spep7+20, 1, 10, 20);

-- 書き文字エントリー
ctGa = entryEffectLife( spep7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep7+15, ctGa, 30, 10);
setEffRotateKey( spep7+15, ctGa, -40);
setEffScaleKey( spep7+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep7+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep7+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep7+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep7+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep7+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep7+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep7+15, ctGa, 255);
setEffAlphaKey( spep7+105, ctGa, 255);
setEffAlphaKey( spep7+115, ctGa, 0);

playSe( spep7+3, SE_11);
shuchusen = entryEffectLife( spep7+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep7+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep7+16);

entryFade( spep7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep7+110);

else
------------------------------------------------------
------------------------------------------------------
spep1=0;
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep1+30, 0, 17);                       -- 溜め!
setAnimeLoop(  spep1+30, 0, 1);
entryEffect(  spep1+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep1+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( spep1+30, SE_01);

setDisp(spep1+69,0,0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep1+30,   311, 39, 0x40,  0,  1,  0,  -55); -- オーラ
setEffScaleKey( spep1+30, aura, 1.1, 1.1);
setShakeChara( spep1+30, 0, 59, 10);

entryFade( spep1+59, 7, 9, 6, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- 書き文字エントリー
ctZuzun = entryEffectLife( spep1+30, 10013, 39, 0x100, -1, 0, 0, 250,0); -- ズズンッ

setEffMoveKey( spep1+30,ctZuzun,0,250,0);
setEffMoveKey( spep1+37,ctZuzun,0,350,0);
setEffMoveKey( spep1+69,ctZuzun,0,350,0);

setEffRotateKey( spep1+30,ctZuzun,20);
setEffShake(spep1+30, ctZuzun, 40, 7);
setEffAlphaKey(spep1+30, ctZuzun, 255);
setEffAlphaKey(spep1+50, ctZuzun, 255);
setEffAlphaKey(spep1+70, ctZuzun, 0);
setEffScaleKey( spep1+30, ctZuzun, 0.2, 0.2);
setEffScaleKey( spep1+40, ctZuzun, 3.0, 3.0);
playSe( spep1+30, SE_02);

entryEffect(  spep1+61,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep1+61,   1500,   0,    -1,  0,  0,  0);    -- eff_001

------------------------------------------------------
-- かめはめ波溜め！(100F)(70-170F)
------------------------------------------------------
spep2=spep1+70;

entryEffect(  spep2+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep2+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  spep2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
playSe( spep2+10, SE_04);

Tame = entryEffect( spep2+0, SP_05, 0x100,      0,  30,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep2+0, Tame, 1.0, 1.0);
setEffMoveKey( spep2+0, Tame, 0, 50,0);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep2+20, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep2+20, ctgogo, 70, 10);
setEffScaleKey(spep2+20, ctgogo, -0.8, 0.8);
setEffRotateKey(spep2+20, ctgogo, 0);
setEffAlphaKey( spep2+20, ctgogo, 255);

-- ** エフェクト等 ** --
entryFadeBg( spep2, 0, 99, 0, 0, 0, 0, 230);       -- ベース暗め　背景
entryFade( spep2+83, 7, 13, 6, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
------------------------------------------------------
-- カードカットイン(90F)(170-260F)
------------------------------------------------------
spep3=spep2+100;

setScaleKey( spep3-1,   0, 1.2, 1.2);
setScaleKey( spep3-1,   0, 1.5, 1.5);
setScaleKey( spep3,   0, 1.0, 1.0);

playSe( spep3, SE_05);
speff = entryEffect(  spep3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep3+81, 7, 3, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep3+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F) (260-350F)
------------------------------------------------------
spep4=spep3+90;

Hanatsu= entryEffectLife( spep4, SP_06, 100, 0x100,  0,  -1,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep4, Hanatsu, 0, 0);
setEffMoveKey( spep4+100, Hanatsu, 0, 0, 0);

setEffScaleKey( spep4, Hanatsu, 1.0, 1.0);
setEffScaleKey( spep4+100, Hanatsu, 1.0, 1.0);

playSe( spep4+2, SE_06);
playSe( spep4+36, SE_06);
playSe( spep4+64, SE_06);

--entryFade( spep4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--removeAllEffect(spep4+99);

-- ** エフェクト等 ** --
entryFadeBg( spep4, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep4, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep4, sen2, 190);
setEffScaleKey( spep4, sen2, 1.25, 1.25);

--setShakeChara( spep4+45, 0, 54, 50);

shuchusen = entryEffectLife( spep4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, shuchusen, 1.0, 1.0);
setEffScaleKey( spep4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep4+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctzuo1 = entryEffectLife( spep4+4, 10012, 32, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep4+4, ctzuo1, 100, 250,0);
setEffMoveKey(spep4+8, ctzuo1, 150, 350,0);
setEffMoveKey(spep4+36, ctzuo1, 150, 350,0);
setEffShake(spep4+4, ctzuo1, 32, 15);
setEffAlphaKey(spep4+4, ctzuo1, 255);
setEffAlphaKey(spep4+24, ctzuo1, 255);
setEffAlphaKey(spep4+36, ctzuo1, 0);
setEffScaleKey(spep4+4, ctzuo1, 0.1, 0.1);
setEffScaleKey(spep4+8, ctzuo1, 3.0, 3.0);
setEffScaleKey(spep4+36, ctzuo1, 3.0, 3.0);
setEffRotateKey(spep4+4, ctzuo1, 20);
setEffRotateKey(spep4+36, ctzuo1, 20);

ctzuo2 = entryEffectLife( spep4+37, 10012, 34, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep4+37, ctzuo2, 100, 250,0);
setEffMoveKey(spep4+40, ctzuo2, 150, 350,0);
setEffMoveKey(spep4+71, ctzuo2, 150, 350,0);
setEffShake(spep4+37, ctzuo2, 34, 15);
setEffAlphaKey(spep4+37, ctzuo2, 255);
setEffAlphaKey(spep4+57, ctzuo2, 255);
setEffAlphaKey(spep4+71, ctzuo2, 0);
setEffScaleKey(spep4+37, ctzuo2, 0.1, 0.1);
setEffScaleKey(spep4+40, ctzuo2, 3.0, 3.0);
setEffScaleKey(spep4+71, ctzuo2, 3.0, 3.0);
setEffRotateKey(spep4+37, ctzuo2, 20);
setEffRotateKey(spep4+71, ctzuo2, 20);

ctzuo3 = entryEffectLife( spep4+61, 10012, 37, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep4+61, ctzuo3, 100, 250,0);
setEffMoveKey(spep4+83, ctzuo3, 150, 350,0);
setEffMoveKey(spep4+98, ctzuo3, 150, 350,0);
setEffShake(spep4+61, ctzuo3, 32, 15);
setEffAlphaKey(spep4+61, ctzuo3, 160);
setEffAlphaKey(spep4+74, ctzuo3, 160);
setEffAlphaKey(spep4+83, ctzuo3, 255);
setEffAlphaKey(spep4+98, ctzuo3, 255);
setEffScaleKey(spep4+61, ctzuo3, 0.1, 0.1);
setEffScaleKey(spep4+83, ctzuo3, 3.5, 3.5);
setEffScaleKey(spep4+90, ctzuo3, 3.5, 3.5);
setEffScaleKey(spep4+98, ctzuo3, 4.0, 4.0);
setEffRotateKey(spep4+61, ctzuo3, 30);
setEffRotateKey(spep4+98, ctzuo3, 30);

entryFade( spep4+87, 9, 8, 9, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
-----------------------------------------------------
-----------------------------------------------------
spep5=spep4+100;

Nobiru= entryEffectLife( spep5, SP_03, 100, 0x100,  0,  -1,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep5, Nobiru, 0, 0);
setEffMoveKey( spep5+100, Nobiru, 0, 0, 0);

setEffScaleKey( spep5, Nobiru, 1.2, 1.2);
setEffScaleKey( spep5+100, Nobiru, 1.2, 1.2);

entryFadeBg( spep5, 0, 100, 0,0, 0, 0, 180);          -- ベース暗め　背景
entryEffectLife( spep5, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep5, 10014, 100, 0x100, -1, 0, 0,340, 0); -- ズドドッ
setEffShake(spep5, ctZudodo, 99, 20);
setEffScaleKey( spep5, ctZudodo, 3.0, 3.0);
setEffRotateKey(spep5, ctZudodo, 0);
setEffAlphaKey(spep5, ctZudodo, 255);

playSe( spep5, SE_07);
playSe( spep5+40, SE_07);--390
playSe( spep5+76, SE_07);--426

entryFade( spep5+85, 11,  6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------
spep6=spep5+100;

setDisp( spep6, 0, 0);
setMoveKey(spep6-1,0, 0, -54,0);
setMoveKey(spep6,0, 0, -800,0);

setDisp( spep6, 1, 1);
changeAnime( spep6, 1, 100);
changeAnime( spep6+10, 1, 104);                        -- ガード
setMoveKey(  spep6-1,    1,  0,  0,   0);
setMoveKey(  spep6+100,    1,  0,  0,   0);
setMoveKey(  spep6+1,    1,  0,  0,   0);
setScaleKey( spep6-1,    1,  1.2, 1.2);
setScaleKey( spep6+100,    1,  1.2, 1.2);
setDisp( spep6+100, 1,0);

Semaru = entryEffectLife( spep6, SP_04, 180,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffMoveKey( spep6, Semaru, 0, 0);
setEffMoveKey( spep6+180, Semaru, 0, 0, 0);

setEffScaleKey( spep6, Semaru, 1.0, 1.0);
setEffScaleKey( spep6+180, Semaru, 1.0, 1.0);

-- ** エフェクト等 ** --
setShakeChara( spep6, 1, 100, 20);
entryFadeBg( spep6, 0, 180, 0,0, 0, 0, 180);          -- ベース暗め　背景
entryEffectLife( spep6, 921, 180, 0x80,  -1,  0,  0,  0); -- 流線斜め

entryFade( spep6+165, 11,  6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 473; --エンドフェイズのフレーム数を置き換える(spep5+45)

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(   SP_dodge+1,    1,  0,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.2, 1.2);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+8,   1,   0, 0,  0);
setScaleKey(   SP_dodge+8,   1, 1.2, 1.2);
setRotateKey(   SP_dodge+8,   1, 0);

setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.0, 1.0);
setRotateKey(   SP_dodge+9,   1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

playSe( spep6+18, SE_09);
playSe( spep6+74, SE_09);
playSe( spep6+109, SE_09);
playSe( spep6+129, SE_09);
playSe( spep6+147, SE_09);
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep7=spep6+180;

setDisp( spep7-1, 1, 1);
setMoveKey(  spep7-1,    1,  100,  0,   0);
setScaleKey( spep7-1,    1,  1.0, 1.0);
setMoveKey(  spep7,    1,    0,   0,   128);
setScaleKey( spep7,    1,  0.1, 0.1);

changeAnime( spep7, 1, 107);                         -- 手前ダメージ
entryEffect( spep7+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep7+8, SE_10);

setMoveKey(  spep7+8,   1,    0,   0,   128);
setMoveKey(  spep7+15,   1,  -60,  -200,  -100);
setMoveKey(  spep7+16,   1,  -60,  -200,  -100);
setDamage( spep7+16, 1, 0);  -- ダメージ振動等
setShake(spep7+7,6,15);
setShake(spep7+13,15,10);

setRotateKey( spep7,  1,  30 );
setRotateKey( spep7+2,  1,  80 );
setRotateKey( spep7+4,  1, 120 );
setRotateKey( spep7+6,  1, 160 );
setRotateKey( spep7+8,  1, 200 );
setRotateKey( spep7+10,  1, 260 );
setRotateKey( spep7+12,  1, 320 );
setRotateKey( spep7+14,  1,   0 );

setShakeChara( spep7+15, 1, 5,  10);
setShakeChara( spep7+20, 1, 10, 20);

-- 書き文字エントリー
ctGa = entryEffectLife( spep7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep7+15, ctGa, 30, 10);
setEffRotateKey( spep7+15, ctGa, -40);
setEffScaleKey( spep7+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep7+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep7+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep7+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep7+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep7+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep7+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep7+15, ctGa, 255);
setEffAlphaKey( spep7+105, ctGa, 255);
setEffAlphaKey( spep7+115, ctGa, 0);

playSe( spep7+3, SE_11);
shuchusen = entryEffectLife( spep7+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep7+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep7+16);

entryFade( spep7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep7+110);
end
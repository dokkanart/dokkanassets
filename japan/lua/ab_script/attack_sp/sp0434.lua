--sp0434 超サイヤ人3孫悟空_超かめはめ波

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

SP_01 = 151048;--溜め
SP_02 = 151049;--発射
SP_03 = 151050;--迫る
SP_04 = 1551;

SP_05 = 151083;--溜め（敵用）
SP_06 = 151084;--発射（敵用）

setVisibleUI(0,0);
changeAnime( 0, 0, 1);                       -- 立ち
--setAnimeLoop(  0, 0, 1);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.2, 1.2);
setScaleKey(   1,   0, 1.2, 1.2);

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
-- カメハメハ発射(110F) (260-350F)
------------------------------------------------------
spep4=spep3+90;

Hanatsu= entryEffectLife( spep4, SP_02, 110, 0x100,  0,  -1,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep4, Hanatsu, 0, 0);
setEffMoveKey( spep4+110, Hanatsu, 0, 0, 0);

setEffScaleKey( spep4, Hanatsu, 1.0, 1.0);
setEffScaleKey( spep4+110, Hanatsu, 1.0, 1.0);

playSe( spep4, SE_07);

spname = entryEffect( spep4, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(spep4+99);

-- ** エフェクト等 ** --
entryFadeBg( spep4, 0, 109, 0, 0, 0, 0, 230);       -- ベース暗め　背景

sen2 = entryEffectLife( spep4, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep4, sen2, 190);
setEffScaleKey( spep4, sen2, 1.25, 1.25);

--setShakeChara( spep4+45, 0, 54, 50);

shuchusen = entryEffectLife( spep4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, shuchusen, 1.0, 1.0);
setEffScaleKey( spep4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep4+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep4+4, 10012, 42, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep4+4, ctzuo, 100, 300,0);
setEffMoveKey(spep4+10, ctzuo, 150, 400,0);
setEffMoveKey(spep4+46, ctzuo, 150, 400,0);
setEffShake(spep4+4, ctzuo, 32, 15);
setEffAlphaKey(spep4+4, ctzuo, 255);
setEffAlphaKey(spep4+40, ctzuo, 255);
setEffAlphaKey(spep4+46, ctzuo, 0);
setEffScaleKey(spep4+4, ctzuo, 0.1, 0.1);
setEffScaleKey(spep4+10, ctzuo, 3.0, 3.0);
setEffScaleKey(spep4+40, ctzuo, 3.0, 3.0);
setEffScaleKey(spep4+46, ctzuo, 6.0, 6.0);
setEffRotateKey(spep4+4, ctzuo, 20);
setEffRotateKey(spep4+46, ctzuo, 20);

--playSe( spep4+40, SE_07);
entryFade( spep4+90, 10,  17, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------
spep5=spep4+110;

setDisp( spep5, 0, 0);
setMoveKey(spep5-1,0, 0, -54,0);
setMoveKey(spep5,0, 0, -800,0);

setDisp( spep5, 1, 1);
changeAnime( spep5, 1, 104);                        -- ガード
setMoveKey(  spep5-1,    1,  255,  0,   0);
setMoveKey(  spep5,    1,  255,  0,   0);
setMoveKey(  spep5+1,    1,  255,  0,   0);
setScaleKey( spep5-1,    1,  1.0, 1.0);
setScaleKey( spep5,    1,  1.0, 1.0);

Semaru = entryEffect( spep5, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep5, Semaru, 1, 1);
--setEffScaleKey(spep5+82, Semaru, 1, 1);
--setEffScaleKey(spep5+84, Semaru, 2.5, 2.5);

playSe( spep5, SE_06);

-- ** エフェクト等 ** --
setShakeChara( spep5, 1, 99, 20);

entryFadeBg( spep5, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( spep5, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
CtZudo = entryEffectLife( spep5, 10014, 99, 0x100, -1, 0, 0,370, 0); -- ズドドッ
setEffShake(spep5, CtZudo, 99, 20);
setEffScaleKey( spep5, CtZudo, 3.0, 3.0);
setEffRotateKey(spep5, CtZudo, 70);
setEffAlphaKey(spep5, CtZudo, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 390; --エンドフェイズのフレーム数を置き換える(spep5+42)

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(   SP_dodge+1,    1,  168,  0, 0);
setScaleKey(   SP_dodge+1,   1, 2.5, 2.5);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+8,   1,   168, 0,  0);
setScaleKey(   SP_dodge+8,   1, 2.5, 2.5);
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
--回避されなかった場合
------------------------------------------------------
setMoveKey(  spep5+58,    1,   140,  0,   0);
setScaleKey(  spep5+58,   1,   3.0,  3.0);

setDamage( spep5+82, 1, 0);  -- ダメージ振動等

playSe( spep5+85, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( spep5+59, 1, 108);
setMoveKey(  spep5+59, 1,  180,    0,  0);
setMoveKey(  spep5+99, 1,  180,    0,  0);
setScaleKey( spep5+59, 1,  3.0, 3.0);
setScaleKey( spep5+98, 1,  3.0, 3.0);
setScaleKey( spep5+99, 1,  0.2, 0.2);

setEffAlphaKey(spep5+60, CtZudo, 255);
setEffAlphaKey(spep5+80, CtZudo, 0);

entryFade( spep5+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep6=spep5+100;

baku = entryEffect( spep6-1, SP_04, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( spep6-1, baku, 1.1, 1.1);

playSe( spep6+8, SE_10);

-- ダメージ表示
dealDamage(spep6+16);

entryFade( spep6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep6+110);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;

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
-- かめはめ波溜め！(100F)
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
-- カードカットイン(90F)
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
-- カメハメハ発射(110F) (260)
------------------------------------------------------
spep4=spep3+90;

Hanatsu= entryEffectLife( spep4, SP_06, 110, 0x100,  0,  -1,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep4, Hanatsu, 0, 0);
setEffMoveKey( spep4+110, Hanatsu, 0, 0, 0);

setEffScaleKey( spep4, Hanatsu, 1.0, 1.0);
setEffScaleKey( spep4+110, Hanatsu, 1.0, 1.0);

playSe( spep4, SE_07);

spname = entryEffect( spep4, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(spep4+99);

-- ** エフェクト等 ** --
entryFadeBg( spep4, 0, 109, 0, 0, 0, 0, 230);       -- ベース暗め　背景

sen2 = entryEffectLife( spep4, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep4, sen2, 190);
setEffScaleKey( spep4, sen2, 1.25, 1.25);

--setShakeChara( spep4+45, 0, 54, 50);

shuchusen = entryEffectLife( spep4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, shuchusen, 1.0, 1.0);
setEffScaleKey( spep4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep4+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep4+4, 10012, 42, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep4+4, ctzuo, 100, 300,0);
setEffMoveKey(spep4+10, ctzuo, 150, 400,0);
setEffMoveKey(spep4+46, ctzuo, 150, 400,0);
setEffShake(spep4+4, ctzuo, 32, 15);
setEffAlphaKey(spep4+4, ctzuo, 255);
setEffAlphaKey(spep4+40, ctzuo, 255);
setEffAlphaKey(spep4+46, ctzuo, 0);
setEffScaleKey(spep4+4, ctzuo, 0.1, 0.1);
setEffScaleKey(spep4+10, ctzuo, 3.0, 3.0);
setEffScaleKey(spep4+40, ctzuo, 3.0, 3.0);
setEffScaleKey(spep4+46, ctzuo, 6.0, 6.0);
setEffRotateKey(spep4+4, ctzuo, 20);
setEffRotateKey(spep4+46, ctzuo, 20);

--playSe( spep4+40, SE_07);
entryFade( spep4+90, 10,  17, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------
spep5=spep4+110;

setDisp( spep5, 0, 0);

setMoveKey(spep5-1,0, 0, -54,0);
setMoveKey(spep5,0, 0, -800,0);

setDisp( spep5, 1, 1);
changeAnime( spep5, 1, 104);                        -- ガード
setMoveKey(  spep5-1,    1,  255,  0,   0);
setMoveKey(  spep5,    1,  255,  0,   0);
setMoveKey(  spep5+1,    1,  255,  0,   0);
setScaleKey( spep5-1,    1,  1.0, 1.0);
setScaleKey( spep5,    1,  1.0, 1.0);

Semaru = entryEffect( spep5, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep5, Semaru, 1, 1);
--setEffScaleKey(spep5+82, Semaru, 1, 1);
--setEffScaleKey(spep5+84, Semaru, 2.5, 2.5);

playSe( spep5, SE_06);

-- ** エフェクト等 ** --
setShakeChara( spep5, 1, 99, 20);

entryFadeBg( spep5, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( spep5, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
CtZudo = entryEffectLife( spep5, 10014, 99, 0x100, -1, 0, 0,370, 0); -- ズドドッ
setEffShake(spep5, CtZudo, 99, 20);
setEffScaleKey( spep5, CtZudo, 3.0, 3.0);
setEffRotateKey(spep5, CtZudo, 0);
setEffAlphaKey(spep5, CtZudo, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 390; --エンドフェイズのフレーム数を置き換える(spep5+40)

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

setMoveKey(   SP_dodge+1,    1,  168,  0, 0);
setScaleKey(   SP_dodge+1,   1, 2.5, 2.5);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+8,   1,   168, 0,  0);
setScaleKey(   SP_dodge+8,   1, 2.5, 2.5);
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
--回避されなかった場合
------------------------------------------------------
setMoveKey(  spep5+58,    1,   140,  0,   0);
setScaleKey(  spep5+58,   1,   3.0,  3.0);

setDamage( spep5+82, 1, 0);  -- ダメージ振動等

playSe( spep5+85, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( spep5+59, 1, 108);
setMoveKey(  spep5+59, 1,  180,    0,  0);
setMoveKey(  spep5+99, 1,  180,    0,  0);
setScaleKey( spep5+59, 1,  3.0, 3.0);
setScaleKey( spep5+98, 1,  3.0, 3.0);
setScaleKey( spep5+99, 1,  0.2, 0.2);

setEffAlphaKey(spep5+60, CtZudo, 255);
setEffAlphaKey(spep5+80, CtZudo, 0);

entryFade( spep5+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep6=spep5+100;

baku = entryEffect( spep6-1, SP_04, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( spep6-1, baku, 1.1, 1.1);

playSe( spep6+8, SE_10);

-- ダメージ表示
dealDamage(spep6+16);

entryFade( spep6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep6+110);

end
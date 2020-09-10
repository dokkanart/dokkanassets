

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+50;

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

SP_01 = 150360;
SP_02 = 150361;
SP_03 = 150362;
SP_04 = 150363;

SP_01e = 150367;
SP_02e = 150364;
SP_03e = 150365;

SP_05 = 1589;







multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
--changeAnime( 0, 1, 0);                       -- 立ち

setDisp( 0, 1, 0);

--setDisp( 0, 0, 1);
setDisp( 1, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);

setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);

entryFadeBg( 0, 4, 30, 0, 10, 10, 10, 200);          -- ベース暗め　背景


------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


--setMoveKey(   33,   0,    0, -100,   0);

entryFade( 34-30, 3, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey(   34-30,   0,    0, -100,   0);
entryFadeBg( 34-30, 0, 120, 0, 10, 10, 10, 200);          -- ベース暗め　背景

setDisp( 34-30, 0, 0);
setVisibleUI( 0, 0);

tame = entryEffect(  34-30,   SP_01,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( 34-30, tame, 1.0, 1.0);
setEffAlphaKey( 34-30, tame, 255);

playSe( 34-10, SE_01);

shuchusentame=entryEffectLife( 34-30, 906, 56, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 34-30, shuchusentame, 1.5, 1.5);
setEffAlphaKey( 34-30, shuchusentame, 255);

-- 書き文字エントリー
ctzuo = entryEffectLife( 34-10, 10012, 90, 0x100, -1, 0, 150, 300);    -- ゴゴゴゴ
setEffShake( 34-10, ctzuo, 90, 12);
setEffScaleKey(34-10, ctzuo, 2.0, 2.0);
setEffRotateKey(34-10, ctzuo, 30);
--setEffAlphaKey( 34, ctzuo, 255);

--setDisp( 34, 0, 1);
--changeAnime( 34, 0, 17);                       -- 立ち
--[[
setMoveKey(   34,   0,    0, -54,   0);

--test = entryEffect(  0,   SP_01,   0,  -1,  0,  0,  0);   -- カード

entryFade( 34, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setMoveKey(   34,   0,    0, -54,   0);
setMoveKey(   34,   1,    0, -54,   0);
setScaleKey(   34,   0, 1.0, 1.0);



--気を貯める

playSe( 34, SE_01);
]]

--entryFade( 62-26, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  34,   341, 140, 0x100,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( 34, aura, 2.0, 2.0);
setShakeChara( 34, 0, 136, 8);
setEffScaleKey( 84, aura, 2.5, 2.5);
setScaleKey(   84,   0, 1.6, 1.6);
]]
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_1=90+34-30;

entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 10, 10, 10, 200);          -- ベース暗め　背景
setMoveKey(   spep_1,   0,    0, -54,   0);



playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



------------------------------------------------------
-- タックル(80F)
------------------------------------------------------
spep_2=spep_1+90;

entryFade( spep_2-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 140, 0,  10, 10, 10, 200);          -- ベース暗め　背景

shuchusentame=entryEffectLife( spep_2, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusentame, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusentame, 255);


ryuusennkamae=entryEffectLife( spep_2, 921, 140, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, ryuusennkamae, 1.5, 1.5);
setEffAlphaKey( spep_2, ryuusennkamae, 255);
setEffRotateKey(spep_2, ryuusennkamae, -150);

uti = entryEffect(  spep_2,   SP_02,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_2, uti, 1.0, 1.0);
setEffAlphaKey( spep_2, uti, 255);

entryFade( spep_2+20, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_2+20, 1018);

speff = entryEffect(  spep_2+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( spep_2, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_2+30, 190006, 39, 0x100, -1, 0, -80, 500);    -- ゴゴゴゴ
setEffShake(spep_2+30, ctgogo, 40, 8);
setEffScaleKey(spep_2+30, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_2+30, ctgogo, 10);
setEffAlphaKey( spep_2+30, ctgogo, 255);




------------------------------------------------------
--ため(100F)
------------------------------------------------------
spep_3=spep_2+140;

entryFade( spep_3-25, 10, 15, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0,  10, 10, 10, 200);          -- ベース暗め　背景
changeAnime( spep_3, 1, 102);                       -- 溜め!
--setQuake(spep_3,160,8);
--playSe( spep_3+10, 1021);
--playSe( spep_3, SE_04);
playSe( spep_3, SE_02);
playSe( spep_3+20, SE_02);
--playSe( spep_3+35, SE_03);
playSe( spep_3+40, SE_06);

shuchusentame=entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusentame, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusentame, 255);


ryuusennkamekame= entryEffectLife( spep_3, 921, 120, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_3, ryuusennkamekame, 1.6, 1.6);
setEffAlphaKey( spep_3, ryuusennkamekame, 255);
setEffRotateKey(spep_3, ryuusennkamekame, -90);

ctzuo2 = entryEffectLife(spep_3+40, 10012, 60, 0x100, -1, 0, 180, 300);    -- ゴゴゴゴ
setEffShake( spep_3+40, ctzuo2, 60, 12);
setEffScaleKey(spep_3+40, ctzuo2, 2.0, 2.0);
setEffRotateKey(spep_3+40, ctzuo2, 30);

uti = entryEffect(  spep_3,   SP_03,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, uti, 1.0, 1.0);
setEffAlphaKey( spep_3, uti, 255);
------------------------------------------------------
-- 被弾(90F)
------------------------------------------------------
spep_4=spep_3+120;

entryFade( spep_4-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0,  30, 30, 30, 180);          -- ベース暗め　背景
--setQuake(spep_4,120,8);
--setShakeChara( spep_4, 1, 20, 8);

ryuusenndane= entryEffectLife( spep_4, 921, 120, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_4, ryuusenndane, 1.6, 1.6);
setEffAlphaKey( spep_4, ryuusenndane, 255);
setEffRotateKey(spep_4, ryuusenndane, -130);

ataru = entryEffect(  spep_4,   SP_04,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_4, ataru, 1.0, 1.0);
setEffAlphaKey( spep_4, ataru, 255);

shuchusenatari=entryEffectLife( spep_4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusenatari, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenatari, 255);

--playSe( spep_4+20, 1021);
playSe( spep_4+10, SE_07);

setDisp( spep_4, 1, 1);
setScaleKey(   spep_4,   1, 1.8, 1.8);
setMoveKey(   spep_4,   1,    1000, -2000,   0);
--[[
setScaleKey(   spep_4+19,   1, 1.8, 1.8);
setMoveKey(   spep_4+19,   1,    1000, -2000,   0);
]]
setScaleKey(   spep_4+20,   1, 1.6, 1.6);
setMoveKey(   spep_4+20,   1,    200, -300,   0);
setShakeChara( spep_4+20, 1, 100, 10);

--changeAnime( spep_4+20, 1, 107);                       -- 溜め!
--playSe( spep_4+20, 1046);

setScaleKey(   spep_4+120,   1, 1.6, 1.6);
setMoveKey(   spep_4+120,   1,    200, -300,   0);

ctzudodo = entryEffectLife( spep_4+15, 10014, 70, 0x100, -1, 0, 100, 250);    -- ゴゴゴゴ
setEffShake(spep_4+15, ctzudodo, 70, 12);
setEffScaleKey(spep_4+15, ctzudodo, 2.5, 2.5);
setEffRotateKey(spep_4+15, ctzudodo, 80);
setEffAlphaKey( spep_4+15, ctzudodo, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 358; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end



------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_5=spep_4+120;
entryFade( spep_5-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

setScaleKey(   spep_5,   1, 1.6, 1.6);
setMoveKey(   spep_5,   1,    100, -100,   0);

setDisp( spep_5, 1, 0);

playSe( spep_5, 1024);

gyan = entryEffect( spep_5,190000,0x80,-1,0,0,0);
setEffAlphaKey( spep_5,gyan,255);

-- 書き文字エントリー
-- 書き文字エントリー
ct4 = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_5, ct4, 255);
setEffScaleKey( spep_5, ct4, 3.0, 3.0);
setEffScaleKey( spep_5+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_5, ct4, 255);
setEffAlphaKey( spep_5+60, ct4, 0);
setEffShake( spep_5, ct4, 60, 10);
--setEffAlphaKey(spep_5+50, ct, 0);

------------------------------------------------------
--発射(180F)
------------------------------------------------------
spep_9=spep_5+60;

entryFade( spep_9-15, 10, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_9, ct4, 0);

playSe( spep_9+60, SE_10);
--[[
ataru = entryEffect(  spep_3,   SP_04,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, ataru, 1.0, 1.0);
setEffAlphaKey( spep_3, ataru, 255);
]]
tikyuuhakai = entryEffect( spep_9, SP_05,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake( spep_9, tikyuuhakai , 180, 8);
setEffScaleKey( spep_9, tikyuuhakai , 1.1, 1.1);

-- ダメージ表示
dealDamage(spep_9+46);

entryFade( spep_9+120, 19,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade

endPhase(spep_9+140);
--[[
--entryFade( spep_5-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_5, 0, 180, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp( spep_9, 1, 0);
playSe( spep_9, 1021);

playSe( spep_9+30, 1018);
playSe( spep_9+60, 1018);
playSe( spep_9+90, 1018);
playSe( spep_9+110, SE_09);
playSe( spep_9+130, SE_10);
--playSe( spep_9+150, SE_10);


shuchusenfuttobi= entryEffectLife( spep_9, 921, 180, 0x80,  -1, 0,  0,  -300);   -- 集中線
setEffScaleKey( spep_9, shuchusenfuttobi, 2.0, 2.0);
setEffAlphaKey( spep_9, shuchusenfuttobi, 255);
setEffRotateKey( spep_9, shuchusenfuttobi, -45);

last = entryEffect(  spep_9,   SP_06,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_9, last, 1.0, 1.0);
setEffAlphaKey( spep_9, last, 255);



-- ダメージ表示

dealDamage(spep_9+86);

entryFade( spep_9+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+180);
]]
else



-----------------------------------------
--敵側の攻撃
-----------------------------------------
--setMoveKey(   33,   0,    0, -100,   0);

--setMoveKey(   33,   0,    0, -100,   0);

entryFade( 34-30, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey(   34-30,   0,    0, -100,   0);
entryFadeBg( 34-30, 0, 120, 0, 10, 10, 10, 200);          -- ベース暗め　背景

setDisp( 34-30, 0, 0);
setVisibleUI( 0, 0);

tame = entryEffect(  34-30,   SP_01e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( 34-30, tame, 1.0, 1.0);
setEffAlphaKey( 34-30, tame, 255);

playSe( 34-10, SE_01);

shuchusentame=entryEffectLife( 34-30, 906, 56, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 34-30, shuchusentame, 1.5, 1.5);
setEffAlphaKey( 34-30, shuchusentame, 255);

-- 書き文字エントリー
ctzuo = entryEffectLife( 34-10, 10012, 90, 0x100, -1, 0, 150, 300);    -- ゴゴゴゴ
setEffShake( 34-10, ctzuo, 90, 12);
setEffScaleKey(34-10, ctzuo, 2.0, 2.0);
setEffRotateKey(34-10, ctzuo, 30);
--setEffAlphaKey( 34, ctzuo, 255);

--setDisp( 34, 0, 1);
--changeAnime( 34, 0, 17);                       -- 立ち
--[[
setMoveKey(   34,   0,    0, -54,   0);

--test = entryEffect(  0,   SP_01,   0,  -1,  0,  0,  0);   -- カード

entryFade( 34, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setMoveKey(   34,   0,    0, -54,   0);
setMoveKey(   34,   1,    0, -54,   0);
setScaleKey(   34,   0, 1.0, 1.0);



--気を貯める

playSe( 34, SE_01);
]]

--entryFade( 62-26, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  34,   341, 140, 0x100,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( 34, aura, 2.0, 2.0);
setShakeChara( 34, 0, 136, 8);
setEffScaleKey( 84, aura, 2.5, 2.5);
setScaleKey(   84,   0, 1.6, 1.6);
]]
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_1=90+34-30;

entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 10, 10, 10, 200);          -- ベース暗め　背景
setMoveKey(   spep_1,   0,    0, -54,   0);



playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



------------------------------------------------------
-- タックル(80F)
------------------------------------------------------
spep_2=spep_1+90;

entryFade( spep_2-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 140, 0,  10, 10, 10, 200);          -- ベース暗め　背景

shuchusentame=entryEffectLife( spep_2, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusentame, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusentame, 255);


ryuusennkamae=entryEffectLife( spep_2, 921, 140, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, ryuusennkamae, 1.5, 1.5);
setEffAlphaKey( spep_2, ryuusennkamae, 255);
setEffRotateKey(spep_2, ryuusennkamae, -150);

uti = entryEffect(  spep_2,   SP_02e,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_2, uti, 1.0, 1.0);
setEffAlphaKey( spep_2, uti, 255);

entryFade( spep_2+20, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_2+20, 1018);

--[[
speff = entryEffect(  spep_2+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


--playSe( spep_2, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_2+30, 190006, 39, 0x100, -1, 0, -80, 500);    -- ゴゴゴゴ
setEffShake(spep_2+30, ctgogo, 40, 8);
setEffScaleKey(spep_2+30, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_2+30, ctgogo, 10);
setEffAlphaKey( spep_2+30, ctgogo, 255);
]]



------------------------------------------------------
--ため(100F)
------------------------------------------------------
spep_3=spep_2+140;

entryFade( spep_3-25, 10, 15, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0,  10, 10, 10, 200);          -- ベース暗め　背景
changeAnime( spep_3, 1, 102);                       -- 溜め!
--setQuake(spep_3,160,8);
--playSe( spep_3+10, 1021);
--playSe( spep_3, SE_04);
playSe( spep_3, SE_02);
playSe( spep_3+20, SE_02);
--playSe( spep_3+35, SE_03);
playSe( spep_3+40, SE_06);

shuchusentame=entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusentame, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusentame, 255);


ryuusennkamekame= entryEffectLife( spep_3, 921, 120, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_3, ryuusennkamekame, 1.6, 1.6);
setEffAlphaKey( spep_3, ryuusennkamekame, 255);
setEffRotateKey(spep_3, ryuusennkamekame, -90);

ctzuo2 = entryEffectLife(spep_3+40, 10012, 60, 0x100, -1, 0, 180, 300);    -- ゴゴゴゴ
setEffShake( spep_3+40, ctzuo2, 60, 12);
setEffScaleKey(spep_3+40, ctzuo2, 2.0, 2.0);
setEffRotateKey(spep_3+40, ctzuo2, 30);

uti = entryEffect(  spep_3,   SP_03e,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, uti, 1.0, 1.0);
setEffAlphaKey( spep_3, uti, 255);
------------------------------------------------------
-- 被弾(90F)
------------------------------------------------------
spep_4=spep_3+120;

entryFade( spep_4-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0,  30, 30, 30, 180);          -- ベース暗め　背景
--setQuake(spep_4,120,8);
--setShakeChara( spep_4, 1, 20, 8);

ryuusenndane= entryEffectLife( spep_4, 921, 120, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_4, ryuusenndane, 1.6, 1.6);
setEffAlphaKey( spep_4, ryuusenndane, 255);
setEffRotateKey(spep_4, ryuusenndane, -130);

ataru = entryEffect(  spep_4,   SP_04,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_4, ataru, 1.0, 1.0);
setEffAlphaKey( spep_4, ataru, 255);

shuchusenatari=entryEffectLife( spep_4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusenatari, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenatari, 255);

--playSe( spep_4+20, 1021);
playSe( spep_4+10, SE_07);

setDisp( spep_4, 1, 1);
setScaleKey(   spep_4,   1, 1.8, 1.8);
setMoveKey(   spep_4,   1,    1000, -2000,   0);
--[[
setScaleKey(   spep_4+19,   1, 1.8, 1.8);
setMoveKey(   spep_4+19,   1,    1000, -2000,   0);
]]
setScaleKey(   spep_4+20,   1, 1.6, 1.6);
setMoveKey(   spep_4+20,   1,    200, -300,   0);
setShakeChara( spep_4+20, 1, 100, 10);

--changeAnime( spep_4+20, 1, 107);                       -- 溜め!
--playSe( spep_4+20, 1046);

setScaleKey(   spep_4+120,   1, 1.6, 1.6);
setMoveKey(   spep_4+120,   1,    200, -300,   0);

ctzudodo = entryEffectLife( spep_4+15, 10014, 70, 0x100, -1, 0, 100, 250);    -- ゴゴゴゴ
setEffShake(spep_4+15, ctzudodo, 70, 12);
setEffScaleKey(spep_4+15, ctzudodo, 2.5, 2.5);
setEffRotateKey(spep_4+15, ctzudodo, 20);
setEffAlphaKey( spep_4+15, ctzudodo, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 358; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end



------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_5=spep_4+120;
entryFade( spep_5-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

setScaleKey(   spep_5,   1, 1.6, 1.6);
setMoveKey(   spep_5,   1,    100, -100,   0);

setDisp( spep_5, 1, 0);

playSe( spep_5, 1024);

gyan = entryEffect( spep_5,190000,0x80,-1,0,0,0);
setEffAlphaKey( spep_5,gyan,255);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+30, 10006, 60, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake(spep_5+30, ct, 99, 20);
setEffScaleKey( spep_5+30, ct, 0.1, 0.1);
setEffScaleKey( spep_5+35, ct, 2.4, 2.4);
setEffScaleKey( spep_5+30, ct, 2.8, 2.8);
setEffAlphaKey(spep_5+30, ct, 255);
setEffAlphaKey(spep_5+45, ct, 255);
--setEffAlphaKey(spep_5+50, ct, 0);

------------------------------------------------------
--発射(180F)
------------------------------------------------------
--spep_9=spep_5+60;

--entryFade( spep_9-5, 10, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_9, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
spep_9=spep_5+60;

entryFade( spep_9-15, 10, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_9, ct4, 0);

playSe( spep_9+60, SE_10);
--[[
ataru = entryEffect(  spep_3,   SP_04,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, ataru, 1.0, 1.0);
setEffAlphaKey( spep_3, ataru, 255);
]]
tikyuuhakai = entryEffect( spep_9, SP_05,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake( spep_9, tikyuuhakai , 180, 8);
setEffScaleKey( spep_9, tikyuuhakai , 1.1, 1.1);

-- ダメージ表示
dealDamage(spep_9+46);

entryFade( spep_9+120, 19,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade

endPhase(spep_9+140);
--[[
--entryFade( spep_5-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_5, 0, 180, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp( spep_9, 1, 0);
playSe( spep_9, 1021);

playSe( spep_9+30, 1018);
playSe( spep_9+60, 1018);
playSe( spep_9+90, 1018);
playSe( spep_9+110, SE_09);
playSe( spep_9+130, SE_10);
--playSe( spep_9+150, SE_10);


shuchusenfuttobi= entryEffectLife( spep_9, 921, 180, 0x80,  -1, 0,  0,  -300);   -- 集中線
setEffScaleKey( spep_9, shuchusenfuttobi, 2.0, 2.0);
setEffAlphaKey( spep_9, shuchusenfuttobi, 255);
setEffRotateKey( spep_9, shuchusenfuttobi, -45);

last = entryEffect(  spep_9,   SP_06,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_9, last, 1.0, 1.0);
setEffAlphaKey( spep_9, last, 255);



-- ダメージ表示

dealDamage(spep_9+86);

entryFade( spep_9+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+180);
]]
end



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

SP_01 = 109087;--ピッコロ突撃
SP_02 = 109088;--クリリンナックル
SP_03 = 109089;--悟飯とクリリンの光弾打ち
SP_04 = 109054;--敵が光弾を避ける時の瞬間移動エフェクト
SP_05 = 109092;--大爆発
SP_06 = 109090;--ピッコロ光弾打ち
SP_07 = 109091;--３本の光弾
SP_08 = 109093;--クリリンナックル(敵)
SP_09 = 109094;--悟飯とクリリンの光弾打ち(敵)


multi_frm = 2;
changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
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
changeAnime(  0, 0, 17);                       -- 溜め!
entryEffect(  0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  0,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 0, SE_01);

playSe( 20, SE_03);
--playSe( 40, SE_03);
playSe( 60, SE_03);
--playSe( 80, SE_03);

entryFade( 85, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setShakeChara( 0, 0,160 , 5);

entryEffect(  0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect(  0,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  0,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


playSe( 0, SE_04);

-- 書き文字エントリ

ct = entryEffectLife( 0, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(0, ct, 40, 8);
setEffScaleKey(0, ct, 1.4, 1.4);

spep_1 = 90;

------------------------------------------------------
-- 瞬間移動(100F)
------------------------------------------------------
playSe( spep_1+10, SE_03);
--playSe( spep_1+30, SE_03);
--playSe( spep_1+40, SE_03);
playSe( spep_1+55, 37);

--setMoveKey( spep_1+60,   0,    0, -54,   0);

setDisp( spep_1+55,0, 0);

-- ** エフェクト等 ** --

aura = entryEffectLife(   spep_1,   311, 55, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( spep_1, aura, 1.2, 1.2);
setShakeChara( spep_1, 0, 19, 5);

entryEffectLife( spep_1, 920, 70, 0x80, -1, 0, 0, 0);--流線
syunkan = entryEffect( spep_1+55, SP_04, 0x40+0x80,  0, 300,  0, 0);
playSe( spep_1+55, 37);

entryFadeBg(spep_1, 0, 70, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryFade( spep_1+65, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+70;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_2+64, SE_06);

spep_3 = spep_2+89;

------------------------------------------------------
-- ピッコロ突撃(60F)
------------------------------------------------------

setDisp( spep_3, 1, 1);

setRotateKey(spep_3,0,-10);

changeAnime( spep_3, 1, 118);
changeAnime( spep_3+50, 1, 107);

setMoveKey(  spep_3,  1, 500, -400 ,  0);
setMoveKey(  spep_3+11,  1, 100, 0 ,  0);
setMoveKey(  spep_3+49,  1, 100, 0 ,  0);

setScaleKey(  spep_3, 1 , 2.5, 2.5 );
setScaleKey(  spep_3+11,  1, 2, 2);
setScaleKey(  spep_3+49,  1, 2, 2);

-- ** エフェクト等 ** --

ryusen = entryEffectLife(spep_3, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, ryusen, -140);
setEffScaleKey(spep_3, ryusen, 2, 2);

entryEffect(  spep_3,  SP_01,  0x80, -1,  0,  0,  0);--ピッコロ突撃

playSe(spep_3, 37);
playSe( spep_3, 1018);

entryFadeBg(spep_3, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー

ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 290; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- ピッコロ突撃2(60F)
------------------------------------------------------

setMoveKey(  spep_3+70,  1, 600,  -400,   0);
setMoveKey(  spep_3+99,  1, 600,  -400,   0);

setScaleKey(  spep_3+50,  1, 1, 1);
setScaleKey(  spep_3+99,  1, 1, 1);

--setScaleKey(  spep_3+100,  1, 1.2, 1.2);

-- ** エフェクト等 ** --

setDamage( spep_3+50, 1, 0);  -- ダメージ振動等

p_attack = entryEffect( spep_3+50,3,0x40+0x100,0,300,100,100); --ピッコロ衝撃
setEffScaleKey( spep_3+50, p_attack, 3, 3);
playSe( spep_3+50, 1000);--突撃音

entryFade(spep_3+95, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake(spep_3+15, 95, 15);

-- 書き文字エントリー

dogon = entryEffectLife(spep_3+50,10018,10,0x100,0,-1,100,300);--ドゴォンッ
setEffAlphaKey( spep_3+50, dogon, 255);
setEffScaleKey(spep_3+50, dogon, 3, 3);

spep_4 = spep_3+100;

------------------------------------------------------
-- クリリンナックル(100F)
------------------------------------------------------

setScaleKey( spep_4-1, 1 , 1, 1 );
setScaleKey( spep_4, 1 , 3, 3 );
setScaleKey( spep_4+55, 1 , 2.0, 2.0);
setScaleKey( spep_4+120, 1 , 2.0, 2.0);
changeAnime( spep_4, 1, 108);
changeAnime(  spep_4+55 , 1, 106);

setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);

playSe( spep_4+55, 1009);

--P移動

--setEnvZoomEnable(spep_6+50,1);

setMoveKey(  spep_4,  1, -500,  400,   0);
setMoveKey(  spep_4+55,  1, 0,  150,   0);
setMoveKey(  spep_4+100,  1, 0, -400,   0);

setDamage( spep_4+55, 1, 0);  -- ダメージ振動等

bago = entryEffectLife(spep_4+55,10021,10,0x100,0,-1,100,300);--バゴォッ
setEffAlphaKey( spep_4+55, bago, 255);
setEffScaleKey(spep_4+55, bago, 2, 2);

playSe( spep_4+10, 37);
entryEffect(  spep_4,  SP_02,  0x100, -1,  0,  0,  0);--クリリンナックル

ryusen1 = entryEffectLife(spep_4, 921, 55, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, ryusen1, -140);
setEffScaleKey(spep_4, ryusen1, -2, 2);

ryusen2=entryEffectLife( spep_4+55, 920, 45, 0x80,  -1,  0,  0,  0); -- 流線 90-30
setEffRotateKey(spep_4+55, ryusen2, 100);
setEffScaleKey(spep_4+55, ryusen2, 2, 2);


entryFadeBg( spep_4, 0, 115, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

entryFade(spep_4+95, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+100;

------------------------------------------------------
-- 魔閃光&かめはめ波 (110F)
------------------------------------------------------

playSe( spep_5, 37);
playSe( spep_5+50, SE_07);

playSe( spep_5+30, SE_03);
playSe( spep_5+60, SE_07);

entryEffect(   spep_5,  SP_03,  0x100, -1,  0,  0,  0);--悟飯とクリリンの光弾打ち

setDisp( spep_5, 1, 0);

ryusen = entryEffectLife(spep_5, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5, ryusen, -190);
setEffScaleKey(spep_5, ryusen, -2, 2);

shuchusen = entryEffectLife(spep_5, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen, 1.5, 1.5);

entryFadeBg( spep_5, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

entryFade(spep_5+95, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+100;

------------------------------------------------------
-- ピッコロ (110F)
------------------------------------------------------

playSe( spep_6+10, SE_03);
playSe( spep_6+40, SE_07);

entryEffect(  spep_6,  SP_06,  0x100, -1,  0,  0,  0);--ピッコロ光弾打ち

shuchusen = entryEffectLife(spep_6, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen, 1.5, 1.5);

ryusen = entryEffectLife(spep_6+30, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6+30, ryusen, -160);
setEffScaleKey(spep_6+30, ryusen, -2, 2);

entryFade(spep_6+95, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

spep_7 = spep_6+100;

------------------------------------------------------
-- エネルギー波×３ (110F)
------------------------------------------------------
entryEffect(  spep_7,  SP_07,  0x100, -1,  0,  0,  0);--３本の光弾

setScaleKey( spep_7, 1 , 2.5, 2.5 );

setDisp( spep_7, 1, 1);

setMoveKey(  spep_7,  1, 0,  -600,   0);
setMoveKey(  spep_7+30,  1, 0,  -600,   0);
--setMoveKey(  spep_7+55,  1, 0,  -200,   0);
setMoveKey(  spep_7+75,  1, 0,  -200,   0);

ryusen = entryEffectLife(spep_7, 921, 80, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_7, ryusen, 90);
setEffScaleKey(spep_7, ryusen, 2, 2);

entryFadeBg(spep_7, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFade(spep_7+75, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setShakeChara( spep_7, 1,80 , 5);

ct = entryEffectLife( spep_7, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_7, ct, 99, 20);
setEffScaleKey(spep_7, ct, 2.4, 2.4);
setEffRotateKey(spep_7, ct, 0);
setEffAlphaKey(spep_7, ct, 255);
setEffAlphaKey(spep_7+70+5, ct, 255);
setEffAlphaKey(spep_7+75+5, ct, 0);

spep_8 = spep_7+80;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_8, 1, 0);

entryFadeBg(spep_8+30, 0, 91, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffect( spep_8,SP_05,0,-1,0,0,0);

entryFadeBg( spep_8, 0, 30, 5, 255, 255, 255, 255);       -- ベース暗め　背景 406

playSe( spep_8+4, SE_07);--爆発音
playSe( spep_8+ 50, SE_10);

shuchusen = entryEffectLife(spep_8,906, 131, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen, 1.5, 1.5);

-- ダメージ表示
dealDamage(spep_8+50);

entryFade( spep_8+111, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_8+121);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
setVisibleUI(0, 0);
changeAnime(  0, 0, 17);                       -- 溜め!
entryEffect(  0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  0,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 0, SE_01);

playSe( 20, SE_03);
--playSe( 40, SE_03);
playSe( 60, SE_03);
--playSe( 80, SE_03);

entryFade( 85, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setShakeChara( 0, 0,160 , 5);

entryEffect(  0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect(  0,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  0,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--


playSe( 0, SE_04);

-- 書き文字エントリ

ct = entryEffectLife( 0, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(0, ct, 40, 8);
setEffScaleKey(0, ct, 1.4, 1.4);

spep_1 = 90;

------------------------------------------------------
-- 瞬間移動(100F)
------------------------------------------------------
playSe( spep_1+10, SE_03);
--playSe( spep_1+30, SE_03);
--playSe( spep_1+40, SE_03);
playSe( spep_1+55, 37);

--setMoveKey( spep_1+60,   0,    0, -54,   0);

setDisp( spep_1+55,0, 0);

-- ** エフェクト等 ** --

aura = entryEffectLife(   spep_1,   311, 55, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( spep_1, aura, 1.2, 1.2);
setShakeChara( spep_1, 0, 19, 5);

entryEffectLife( spep_1, 920, 70, 0x80, -1, 0, 0, 0);--流線
syunkan = entryEffect( spep_1+55, SP_04, 0x40+0x80,  0, 300,  0, 0);
playSe( spep_1+55, 37);

entryFadeBg(spep_1, 0, 70, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryFade( spep_1+65, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+70;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_2+64, SE_06);

spep_3 = spep_2+89;

------------------------------------------------------
-- ピッコロ突撃(60F)
------------------------------------------------------

setDisp( spep_3, 1, 1);

setRotateKey(spep_3,0,-10);

changeAnime( spep_3, 1, 118);
changeAnime( spep_3+50, 1, 107);

setMoveKey(  spep_3,  1, 500, -400 ,  0);
setMoveKey(  spep_3+11,  1, 100, 0 ,  0);
setMoveKey(  spep_3+49,  1, 100, 0 ,  0);

setScaleKey(  spep_3, 1 , 2.5, 2.5 );
setScaleKey(  spep_3+11,  1, 2, 2);
setScaleKey(  spep_3+49,  1, 2, 2);

-- ** エフェクト等 ** --

playSe(spep_3, 37);
playSe( spep_3, 1018);

ryusen = entryEffectLife(spep_3, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, ryusen, -140);
setEffScaleKey(spep_3, ryusen, 2, 2);

entryEffect(  spep_3,  SP_01,  0x80, -1,  0,  0,  0);--ピッコロ突撃

entryFadeBg(spep_3, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー

ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 290; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- ピッコロ突撃2(60F)
------------------------------------------------------

setMoveKey(  spep_3+70,  1, 600,  -400,   0);
setMoveKey(  spep_3+99,  1, 600,  -400,   0);

setScaleKey(  spep_3+50,  1, 1, 1);
setScaleKey(  spep_3+99,  1, 1, 1);

--setScaleKey(  spep_3+100,  1, 1.2, 1.2);

-- ** エフェクト等 ** --

setDamage( spep_3+50, 1, 0);  -- ダメージ振動等

p_attack = entryEffect( spep_3+50,3,0x40+0x100,0,300,100,100); --ピッコロ衝撃
setEffScaleKey( spep_3+50, p_attack, 3, 3);
playSe( spep_3+50, 1000);--突撃音

entryFade(spep_3+95, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake(spep_3+15, 95, 15);

-- 書き文字エントリー

dogon = entryEffectLife(spep_3+50,10018,10,0x100,0,-1,100,300);--ドゴォンッ
setEffAlphaKey( spep_3+50, dogon, 255);
setEffScaleKey(spep_3+50, dogon, 3, 3);

spep_4 = spep_3+100;

------------------------------------------------------
-- クリリンナックル(100F)
------------------------------------------------------

setScaleKey( spep_4-1, 1 , 1, 1 );
setScaleKey( spep_4, 1 , 3, 3 );
setScaleKey( spep_4+55, 1 , 2.0, 2.0);
setScaleKey( spep_4+120, 1 , 2.0, 2.0);
changeAnime( spep_4, 1, 108);
changeAnime(  spep_4+55 , 1, 106);

setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);

playSe( spep_4+55, 1009);

--P移動

--setEnvZoomEnable(spep_6+50,1);

setMoveKey(  spep_4,  1, -500,  400,   0);
setMoveKey(  spep_4+55,  1, 0,  150,   0);
setMoveKey(  spep_4+100,  1, 0, -400,   0);

setDamage( spep_4+55, 1, 0);  -- ダメージ振動等

bago = entryEffectLife(spep_4+55,10021,10,0x100,0,-1,100,300);--バゴォッ
setEffAlphaKey( spep_4+55, bago, 255);
setEffScaleKey(spep_4+55, bago, 2, 2);

playSe( spep_4+10, 37);
entryEffect(  spep_4,  SP_08,  0x100, -1,  0,  0,  0);--クリリンナックル

ryusen1 = entryEffectLife(spep_4, 921, 55, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, ryusen1, -140);
setEffScaleKey(spep_4, ryusen1, -2, 2);

ryusen2=entryEffectLife( spep_4+55, 920, 45, 0x80,  -1,  0,  0,  0); -- 流線 90-30
setEffRotateKey(spep_4+55, ryusen2, 100);
setEffScaleKey(spep_4+55, ryusen2, 2, 2);

entryFadeBg( spep_4, 0, 115, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

entryFade(spep_4+95, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+100;

------------------------------------------------------
-- 魔閃光&かめはめ波 (110F)
------------------------------------------------------

playSe( spep_5, 37);
playSe( spep_5+50, SE_07);

playSe( spep_5+30, SE_03);
playSe( spep_5+60, SE_07);

entryEffect(   spep_5,  SP_03,  0x100, -1,  0,  0,  0);--悟飯とクリリンの光弾打ち

setDisp( spep_5, 1, 0);

ryusen = entryEffectLife(spep_5, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5, ryusen, -190);
setEffScaleKey(spep_5, ryusen, -2, 2);

shuchusen = entryEffectLife(spep_5, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen, 1.5, 1.5);

entryFadeBg( spep_5, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

entryFade(spep_5+95, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+100;

------------------------------------------------------
-- ピッコロ (110F)
------------------------------------------------------

playSe( spep_6+10, SE_03);
playSe( spep_6+40, SE_07);

entryEffect(  spep_6,  SP_06,  0x100, -1,  0,  0,  0);--ピッコロ光弾打ち

shuchusen = entryEffectLife(spep_6, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen, 1.5, 1.5);

ryusen = entryEffectLife(spep_6+30, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6+30, ryusen, -160);
setEffScaleKey(spep_6+30, ryusen, -2, 2);

entryFade(spep_6+95, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

spep_7 = spep_6+100;

------------------------------------------------------
-- エネルギー波×３ (110F)
------------------------------------------------------
entryEffect(  spep_7,  SP_07,  0x100, -1,  0,  0,  0);--３本の光弾

setScaleKey( spep_7, 1 , 2.5, 2.5 );

setDisp( spep_7, 1, 1);

setMoveKey(  spep_7,  1, 0,  -600,   0);
setMoveKey(  spep_7+30,  1, 0,  -600,   0);
--setMoveKey(  spep_7+55,  1, 0,  -200,   0);
setMoveKey(  spep_7+75,  1, 0,  -200,   0);

ryusen = entryEffectLife(spep_7, 921, 80, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_7, ryusen, 90);
setEffScaleKey(spep_7, ryusen, 2, 2);

entryFadeBg(spep_7, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFade(spep_7+75, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setShakeChara( spep_7, 1,80 , 5);

ct = entryEffectLife( spep_7, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_7, ct, 99, 20);
setEffScaleKey(spep_7, ct, 2.4, 2.4);
setEffRotateKey(spep_7, ct, 0);
setEffAlphaKey(spep_7, ct, 255);
setEffAlphaKey(spep_7+70+5, ct, 255);
setEffAlphaKey(spep_7+75+5, ct, 0);

spep_8 = spep_7+80;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_8, 1, 0);

entryFadeBg(spep_8+30, 0, 91, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffect( spep_8,SP_05,0,-1,0,0,0);

entryFadeBg( spep_8, 0, 30, 5, 255, 255, 255, 255);       -- ベース暗め　背景 406

playSe( spep_8+4, SE_07);--爆発音
playSe( spep_8+ 50, SE_10);

shuchusen = entryEffectLife(spep_8,906, 131, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen, 1.5, 1.5);

-- ダメージ表示
dealDamage(spep_8+50);

entryFade( spep_8+111, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_8+131);

end

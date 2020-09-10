

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SP_01 = 150391;
SP_02 = 150392;
SP_03 = 150393;
SP_04 = 150394;
SP_02e = 150395;
SP_03e = 150396;
SP_04e = 150397;


--[[
SP_01 = 100000;
SP_02 = 100001;
--SP_03 = 100002;
SP_03 = 103006;
SP_04 = 190003;
]]
multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(130F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
setVisibleUI(0, 0);
--[[--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
eff1=entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey( 30+26, eff1, 1.0, 1.0);
setEffAlphaKey( 30+26, eff1, 255);

eff2=entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
setEffScaleKey( 30+26, eff2, 1.0, 1.0);
setEffAlphaKey( 30+26, eff2, 255);

playSe( 30, SE_01);
playSe( 50, SE_03);
playSe( 70, SE_03);
]]
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   30,   0,    0, -54,   0);

entryFadeBg( 0, 30, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
changeAnime(  30, 0, 17);                       -- 溜め!
playSe( 30, SE_01);
playSe( 50, SE_03);
playSe( 70, SE_03);
playSe( 90, SE_03);
--playSe( 110, SE_03);


-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 100, 0x100,  -1,  0,  0,  -200); -- オーラ
setEffScaleKey( 30, aura, 1.4, 1.4);
setEffMoveKey(30, aura,0,-100,0);
setEffAlphaKey( 30, aura, 0);
setEffAlphaKey( 31, aura, 255);

setEffMoveKey(31, aura,0,-200,0);
setEffMoveKey(32, aura,0,-200,0);

setShakeChara( 30, 0, 19, 5);

shuchusen = entryEffectLife( 30, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 30, shuchusen, 1.4, 1.4);
setEffAlphaKey( 30, shuchusen, 255);


gil=entryEffect(  30+26,   SP_01,   0x100, -1,  0,  -50,  0);    -- eff_002
setEffScaleKey( 30+26, gil, 1.0, 1.0);
setEffAlphaKey( 30+26, gil, 255);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 100, 0x100, -1, 0, 0, 250); -- ズズンッ
setEffShake(30, ct, 100, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(129, ct, 255);
setEffAlphaKey(130, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.2, 2.0);
playSe( 30, SE_02);



spep_1 = 30+100;
entryFade( spep_1-15, 4, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 顔カットイン	(100F)
------------------------------------------------------
setEffAlphaKey( spep_1-1, shuchusen, 255);
setEffAlphaKey( spep_1, shuchusen, 0);
setEffMoveKey(spep_1-1, aura,0,-200,0);
setEffAlphaKey( spep_1-1, aura, 255);
setEffAlphaKey( spep_1, aura, 0);

ryusentosshinn = entryEffectLife( spep_1, 921, 95, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_1, ryusentosshinn, 90);
setEffScaleKey( spep_1, ryusentosshinn, 1.6, 1.6);
setEffAlphaKey( spep_1, ryusentosshinn, 255);
setDisp( spep_1, 0, 0);

tame=entryEffect(  spep_1,   SP_02,   0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey( spep_1, tame, 1.0, 1.0);
setEffAlphaKey( spep_1, tame, 255);


shuchusen = entryEffectLife( spep_1, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.4, 1.4);

speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_1, SE_04);
--[[
playSe( spep_1+10, SE_03);
playSe( spep_1+31, SE_03);
playSe( spep_1+51, SE_03);
playSe( spep_1+71, SE_03);
]]


--[[
setVisibleUI(spep_1, 0);
changeAnime( spep_1+1, 0, 30);                       -- 溜め!


setScaleKey(spep_1,   0, 1.5, 1.5);
setScaleKey(spep_1+50,  0, 4, 4); --119
setScaleKey(spep_1+131,  0, 4, 4); --200仮


entryEffectLife(  spep_1+1,  1503,  131,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
setEffScaleKey(  spep_1+1,  0,  0,  0);
entryEffect(  spep_1+1,  1502,  0,  -1,  0,  0,  0);   -- eff_003 (集中線)


-- ** 音 ** --
playSe( spep_1+4, SE_04);
playSe( spep_1+10, SE_03);
playSe( spep_1+31, SE_03);
playSe( spep_1+51, SE_03);
playSe( spep_1+71, SE_03);
playSe( spep_1+91, SE_03);
playSe( spep_1+111, SE_03);
playSe( spep_1+131, SE_03);
----------------------


-- ** カットイン＆セリフ ** --
speff = entryEffect(  spep_1+40,  1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)85
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+40,  1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
----------------------


-- ** 手のかめはめ波 ** --
kame_hand = entryEffectLife( spep_1+1, SP_01, 131,  0x40,  0,  300,  -45,  80);   -- 手のカメハメ波部
setEffScaleKey( spep_1+1, kame_hand, 0.3, 0.3);
setEffScaleKey( spep_1+50, kame_hand, 1.0, 1.0);
setEffScaleKey( spep_1+131, kame_hand, 1.0, 1.0);

setEffMoveKey( spep_1+1, kame_hand, -35, 60);
setEffMoveKey( spep_1+50, kame_hand, -53, 145);
setEffMoveKey( spep_1+131, kame_hand, -53, 145);
------------------------


-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1+1, 311, 131, 0x40,  0,  1,  0, 0); -- オーラ
setEffScaleKey( spep_1+1, aura, 1.5, 1.5);
setEffScaleKey( spep_1+50, aura, 4, 4);
setEffScaleKey( spep_1+131, aura, 4, 4);
----------------------


-- ** 書き文字エントリ ** --
ct = entryEffectLife( spep_1+20, 10008, 80, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_1+20, ct, 40, 8);
setEffScaleKey(spep_1+20, ct, 1.4, 1.4);
----------------------


]]

spep_2 = spep_1+95;
entryFade( spep_2-10, 5, 12, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(200F)
------------------------------------------------------

setScaleKey( spep_2,   0, 1.5, 1.5);
setScaleKey( spep_2+1,   0, 1.0, 1.0);

playSe( spep_2+1, SE_05);
speff = entryEffect(  spep_2+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え





spep_3 = spep_2+90;
entryFade( spep_3-5, 4, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 160, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- カメハメハ発射(290F)
------------------------------------------------------

playSe( spep_3, SE_06);
playSe( spep_3+20, 1030);

ryusen = entryEffectLife( spep_3, 921, 160, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_3, ryusen, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen, 255);
setEffRotateKey( spep_3, ryusen, -30);


hassha = entryEffect(  spep_3,   SP_03,   0,     -1,  0,  0,  0);--導入
setEffScaleKey( spep_3, hassha, 1.0, 1.0);
setEffAlphaKey( spep_3, hassha, 255);


shuchusenketta = entryEffectLife( spep_3, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusenketta, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenketta, 255);


spname = entryEffectLife(spep_3, 1508,30,0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey( spep_3, spname, 255);
setEffAlphaKey( spep_3+29, spname, 255);
setEffAlphaKey( spep_3+30, spname, 0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3, 10012, 50, 0x100, -1, 0, 200, 300);    -- ズオッ
--ctzuo = entryEffectLife( spep_3, 10012, 50, 0x100, -1, 0, 200, 3F00);    -- ズオッ
setEffShake(spep_3, ctzuo, 40, 28);
setEffScaleKey(spep_3, ctzuo, 2.0, 2.0);
setEffRotateKey(spep_3, ctzuo, 30);
setEffAlphaKey( spep_3, ctzuo, 255);
setEffScaleKey(spep_3+40, ctzuo, 2.2, 2.2);
setEffAlphaKey( spep_3+40, ctzuo, 255);
setEffScaleKey(spep_3+50, ctzuo, 3.8, 3.8);
setEffAlphaKey( spep_3+50, ctzuo, 0);
--[[
changeAnime( 290, 0, 31);                     -- かめはめ発射ポーズ

setMoveKey(  289,    0,      0,  0,   0);
setMoveKey(  290,    0,   -600,  0,   0);
setMoveKey(  291,    0,   -600,  0,   0);
setMoveKey(  300,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 290, SP_02, 110, 0x40,  0,  300,  100,  0);   -- 伸びるかめはめ波

playSe( 290, SE_07);

spname = entryEffect( 290, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  329,    0,   -100,  0,   0);
setMoveKey(  330,    0,   -100,  0,   0);
setMoveKey(  338,    0,   -1100,  0,   0);


-- ** エフェクト等 ** --
entryFadeBg( 290, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 290, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 330, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 290, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 335, 0, 54, 50);

shuchusen = entryEffectLife( 290, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 290, shuchusen, 1.0, 1.0);
setEffScaleKey( 340, shuchusen, 1.0, 1.0);
setEffScaleKey( 349, shuchusen, 2.0, 2.0);


-- ** 書き文字エントリ ** ー
ct = entryEffectLife( 298, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(298, ct, 32, 5);
setEffAlphaKey(298, ct, 255);
setEffAlphaKey(320, ct, 255);
setEffAlphaKey(330, ct, 0);
setEffScaleKey(298, ct, 0.0, 0.0);
setEffScaleKey(302, ct, 1.3, 1.3);
setEffScaleKey(322, ct, 1.3, 1.3);
setEffScaleKey(330, ct, 6.0, 6.0);
playSe( 330, SE_07);

]]

--playSe( spep_3+60, 1018);
--playSe( spep_3+80, 1018);
playSe( spep_3+60, 1022);




setDisp( spep_3+102, 1, 1);
changeAnime( spep_3+102, 1, 100);                        -- 棒立ち
setShakeChara( spep_3+102, 0, 58, 5);

setMoveKey(  spep_3+101,    1,  1000,  200,   0);
setMoveKey(   spep_3+102,    1,  1000,  200,   0);
setMoveKey(   spep_3+103,    1,  1000,  200,   0);
setScaleKey(  spep_3+101,    1,  0.7, 0.7);
setScaleKey(  spep_3+102,    1,  0.7, 0.7);

changeAnime( spep_3+132, 1, 108);                        -- 棒立ち

setMoveKey(   spep_3+132,    1,   170,  150,   0);
setScaleKey(  spep_3+132,   1,   1.6,  1.6);

--playSe( spep_3+132, SE_06);
setMoveKey(   spep_3+149,    1,   200,  170,   0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 435; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end



spep_4 = spep_3+160;
entryFade( spep_4-5, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setMoveKey(   spep_4,    1,   120,  0,   0);
setScaleKey(  spep_4,   1,   1.6,  1.6);



------------------------------------------------------
--ギャン(256F)
------------------------------------------------------
setEffAlphaKey( spep_4-1, hassha, 255);
setEffAlphaKey( spep_4, hassha, 0);
setMoveKey(   spep_4-1,    1,   200,  170,   0);

setRotateKey( spep_4-1,  1,  -90 );
--setMoveKey(   spep_4-1,  1,  0, -200, 0);

setMoveKey(   spep_4,   1,    200, -300,   0);
setScaleKey(   spep_4,   1, 2.5, 2.5);
setDisp( spep_4, 1, 0);
playSe( spep_4+8, 1024);
gyan=entryEffectLife(  spep_4,  190003,  60, 0,  -1,  0,  0,  0);   
setEffReplaceTexture( gyan, 1, 1);
setEffReplaceTexture( gyan, 2, 0);                         
setEffReplaceTexture( gyan, 5, 4);

ctgyan = entryEffectLife( spep_4, 10006, 60, 0x100, -1, 0, 0, 300);    -- ギャン

setEffAlphaKey( spep_4, ctgyan, 255);
setEffScaleKey( spep_4, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_4+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_4, ctgyan, 255);
setEffAlphaKey( spep_4+60, ctgyan, 0);
setEffShake( spep_4, ctgyan, 45, 8);
setEffAlphaKey( spep_4+59, ctgyan, 255);

------------------------------------------------------
--last(114F)
------------------------------------------------------


spep_9=spep_4 +60;
--spep_9=spep_4 +80-99;

entryFade( spep_9-45, 43, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 114, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setEffAlphaKey( spep_9, ctgyan, 0);

setDisp( spep_9, 1, 0);

hassha = entryEffect(  spep_9,   SP_04,   0,     -1,  0,  0,  0);--導入
setEffScaleKey( spep_9, hassha, 1.0, 1.0);
setEffScaleKey( spep_9+114, hassha, 1.0, 1.0);
setEffAlphaKey( spep_9, hassha, 255);


shuchusenlast = entryEffectLife( spep_9, 906, 114, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9, shuchusenlast, 1.5, 1.5);
setEffAlphaKey( spep_9, shuchusenlast, 255);
--playSe( spep_9+10, SE_09);
playSe( spep_9+34, SE_10);

--[[
setDisp( spep_9+99, 1, 1);
setMoveKey(  spep_9+99,    1,  100,  0,   0);
setScaleKey( spep_9+99,    1,  1.0, 1.0);
setMoveKey(  spep_9+100,    1,    0,   0,   128);
setScaleKey( spep_9+100,    1,  0.1, 0.1);

changeAnime( spep_9+100, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+108, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+108, SE_10);

setMoveKey( spep_9+108,   1,    0,   0,   128);
setMoveKey(  spep_9+115,   1,  -60,  -200,  -100);
--setMoveKey(  spep_9+116,   1,  -60,  -200,  -100);
setDamage( spep_9+116, 1, 0);  -- ダメージ振動等
setShake(spep_9+107,6,15);
setShake(spep_9+113,15,10);

setRotateKey( spep_9+100,  1,  30 );
setRotateKey( spep_9+102,  1,  80 );
setRotateKey( spep_9+104,  1, 120 );
setRotateKey( spep_9+106,  1, 160 );
setRotateKey( spep_9+108,  1, 200 );
setRotateKey( spep_9+110,  1, 260 );
setRotateKey( spep_9+112,  1, 320 );
setRotateKey( spep_9+114,  1,   0 );

setShakeChara( spep_9+115, 1, 5,  10);
setShakeChara( spep_9+120, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+125, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+115, ct, 30, 10);
setEffRotateKey( spep_9+115, ct, -40);
setEffScaleKey( spep_9+115, ct, 4.0, 4.0);
setEffScaleKey( spep_9+116, ct, 2.0, 2.0);
setEffScaleKey( spep_9+117, ct, 2.6, 2.6);
setEffScaleKey( spep_9+118, ct, 4.0, 4.0);
setEffScaleKey( spep_9+119, ct, 2.6, 2.6);
setEffScaleKey( spep_9+120, ct, 3.8, 3.8);
setEffScaleKey( spep_9+210, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+125, ct, 255);
setEffAlphaKey( spep_9+205, ct, 255);
setEffAlphaKey( spep_9+215, ct, 0);

playSe( spep_9+103, SE_11);
shuchusen = entryEffectLife( spep_9+103, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+103, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

]]
-- ダメージ表示
dealDamage(spep_9+2);

entryFade( spep_9+94, 19,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade
setEffAlphaKey( spep_9+113, shuchusenlast, 255);
setEffAlphaKey( spep_9+114, shuchusenlast, 255);

setEffAlphaKey( spep_9+113, hassha, 255);
setEffAlphaKey( spep_9+114, hassha, 255);
endPhase(spep_9+100);
--[[
setDisp( 400, 0, 0);
setDisp( 400, 1, 1);
changeAnime( 400, 1, 100);                        -- 棒立ち

setMoveKey(  399,    1,  235,  0,   0);
setMoveKey(  400,    1,  235,  0,   0);
setMoveKey(  401,    1,  235,  0,   0);
setScaleKey( 399,    1,  0.7, 0.7);
setScaleKey( 400,    1,  0.7, 0.7);

setMoveKey(  430,    1,   120,  0,   0);
setScaleKey(  430,   1,   1.6,  1.6);

playSe( 420, SE_06);

kamehame_beam2 = entryEffect( 400, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(400, kamehame_beam2, 1, 1);
setEffScaleKey(482, kamehame_beam2, 1, 1);
setEffScaleKey(484, kamehame_beam2, 2.5, 2.5);
setDamage( 482, 1, 0);  -- ダメージ振動等

playSe( 485, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( 462, 1, 108);
setMoveKey(  462, 1,  120,    0,  0);
setMoveKey(  476, 1,  400,    0,  0);
setScaleKey( 462, 1,  1.6, 1.6);
setScaleKey( 465, 1,  1.5, 1.5);
setScaleKey( 476, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 400, 1, 99, 20);
entryFadeBg( 400, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( 400, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め


-- 書き文字エントリー
ct = entryEffectLife( 400, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(400, ct, 99, 20);
setEffScaleKey( 400, ct, 2.4, 2.4);
setEffRotateKey(400, ct, 70);
setEffAlphaKey(400, ct, 255);
setEffAlphaKey(460, ct, 255);
setEffAlphaKey(480, ct, 0);

entryFade( 480, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

]]




--endPhase(550);
else
setVisibleUI(0, 0);

------------------------------------------------------
--敵側
------------------------------------------------------
--[[--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
eff1=entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey( 30+26, eff1, 1.0, 1.0);
setEffAlphaKey( 30+26, eff1, 255);

eff2=entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
setEffScaleKey( 30+26, eff2, 1.0, 1.0);
setEffAlphaKey( 30+26, eff2, 255);

playSe( 30, SE_01);
playSe( 50, SE_03);
playSe( 70, SE_03);
]]
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   30,   0,    0, -54,   0);

entryFadeBg( 0, 30, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
changeAnime(  30, 0, 17);                       -- 溜め!
playSe( 30, SE_01);
playSe( 50, SE_03);
playSe( 70, SE_03);
playSe( 90, SE_03);
--playSe( 110, SE_03);


-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 100, 0x100,  -1,  0,  0,  -200); -- オーラ
setEffScaleKey( 30, aura, 1.4, 1.4);
setEffMoveKey(30, aura,0,-100,0);
setEffAlphaKey( 30, aura, 0);
setEffAlphaKey( 31, aura, 255);

setEffMoveKey(31, aura,0,-200,0);
setEffMoveKey(32, aura,0,-200,0);

setShakeChara( 30, 0, 19, 5);

shuchusen = entryEffectLife( 30, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 30, shuchusen, 1.4, 1.4);
setEffAlphaKey( 30, shuchusen, 255);


gil=entryEffect(  30+26,   SP_01,   0x100, -1,  0,  -50,  0);    -- eff_002
setEffScaleKey( 30+26, gil, 1.0, 1.0);
setEffAlphaKey( 30+26, gil, 255);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 100, 0x100, -1, 0, 0, 250); -- ズズンッ
setEffShake(30, ct, 100, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(129, ct, 255);
setEffAlphaKey(130, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.2, 2.0);
playSe( 30, SE_02);



spep_1 = 30+100;
entryFade( spep_1-15, 4, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 顔カットイン	(100F)
------------------------------------------------------
setEffAlphaKey( spep_1-1, shuchusen, 255);
setEffAlphaKey( spep_1, shuchusen, 0);
setEffMoveKey(spep_1-1, aura,0,-200,0);
setEffAlphaKey( spep_1-1, aura, 255);
setEffAlphaKey( spep_1, aura, 0);

ryusentosshinn = entryEffectLife( spep_1, 921, 95, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_1, ryusentosshinn, 90);
setEffScaleKey( spep_1, ryusentosshinn, 1.6, 1.6);
setEffAlphaKey( spep_1, ryusentosshinn, 255);
setDisp( spep_1, 0, 0);

tame=entryEffect(  spep_1,   SP_02e,   0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey( spep_1, tame, 1.0, 1.0);
setEffAlphaKey( spep_1, tame, 255);


shuchusen = entryEffectLife( spep_1, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.4, 1.4);
--[[
speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
playSe( spep_1, SE_04);
--[[
playSe( spep_1+10, SE_03);
playSe( spep_1+31, SE_03);
playSe( spep_1+51, SE_03);
playSe( spep_1+71, SE_03);
]]


--[[
setVisibleUI(spep_1, 0);
changeAnime( spep_1+1, 0, 30);                       -- 溜め!


setScaleKey(spep_1,   0, 1.5, 1.5);
setScaleKey(spep_1+50,  0, 4, 4); --119
setScaleKey(spep_1+131,  0, 4, 4); --200仮


entryEffectLife(  spep_1+1,  1503,  131,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
setEffScaleKey(  spep_1+1,  0,  0,  0);
entryEffect(  spep_1+1,  1502,  0,  -1,  0,  0,  0);   -- eff_003 (集中線)


-- ** 音 ** --
playSe( spep_1+4, SE_04);
playSe( spep_1+10, SE_03);
playSe( spep_1+31, SE_03);
playSe( spep_1+51, SE_03);
playSe( spep_1+71, SE_03);
playSe( spep_1+91, SE_03);
playSe( spep_1+111, SE_03);
playSe( spep_1+131, SE_03);
----------------------


-- ** カットイン＆セリフ ** --
speff = entryEffect(  spep_1+40,  1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)85
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+40,  1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
----------------------


-- ** 手のかめはめ波 ** --
kame_hand = entryEffectLife( spep_1+1, SP_01, 131,  0x40,  0,  300,  -45,  80);   -- 手のカメハメ波部
setEffScaleKey( spep_1+1, kame_hand, 0.3, 0.3);
setEffScaleKey( spep_1+50, kame_hand, 1.0, 1.0);
setEffScaleKey( spep_1+131, kame_hand, 1.0, 1.0);

setEffMoveKey( spep_1+1, kame_hand, -35, 60);
setEffMoveKey( spep_1+50, kame_hand, -53, 145);
setEffMoveKey( spep_1+131, kame_hand, -53, 145);
------------------------


-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1+1, 311, 131, 0x40,  0,  1,  0, 0); -- オーラ
setEffScaleKey( spep_1+1, aura, 1.5, 1.5);
setEffScaleKey( spep_1+50, aura, 4, 4);
setEffScaleKey( spep_1+131, aura, 4, 4);
----------------------


-- ** 書き文字エントリ ** --
ct = entryEffectLife( spep_1+20, 10008, 80, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_1+20, ct, 40, 8);
setEffScaleKey(spep_1+20, ct, 1.4, 1.4);
----------------------


]]

spep_2 = spep_1+95;
entryFade( spep_2-10, 5, 12, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(200F)
------------------------------------------------------

setScaleKey( spep_2,   0, 1.5, 1.5);
setScaleKey( spep_2+1,   0, 1.0, 1.0);

playSe( spep_2+1, SE_05);
speff = entryEffect(  spep_2+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え





spep_3 = spep_2+90;
entryFade( spep_3-5, 4, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 160, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- カメハメハ発射(290F)
------------------------------------------------------

playSe( spep_3, SE_06);
playSe( spep_3+20, 1030);

ryusen = entryEffectLife( spep_3, 921, 160, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_3, ryusen, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen, 255);
setEffRotateKey( spep_3, ryusen, -30);


hassha = entryEffect(  spep_3,   SP_03e,   0,     -1,  0,  0,  0);--導入
setEffScaleKey( spep_3, hassha, 1.0, 1.0);
setEffAlphaKey( spep_3, hassha, 255);


shuchusenketta = entryEffectLife( spep_3, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusenketta, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenketta, 255);


spname = entryEffectLife(spep_3, 1508,30,0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey( spep_3, spname, 255);
setEffAlphaKey( spep_3+29, spname, 255);
setEffAlphaKey( spep_3+30, spname, 0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3, 10012, 50, 0x100, -1, 0, 200, 300);    -- ズオッ
--ctzuo = entryEffectLife( spep_3, 10012, 50, 0x100, -1, 0, 200, 3F00);    -- ズオッ
setEffShake(spep_3, ctzuo, 40, 28);
setEffScaleKey(spep_3, ctzuo, 2.0, 2.0);
setEffRotateKey(spep_3, ctzuo, 30);
setEffAlphaKey( spep_3, ctzuo, 255);
setEffScaleKey(spep_3+40, ctzuo, 2.2, 2.2);
setEffAlphaKey( spep_3+40, ctzuo, 255);
setEffScaleKey(spep_3+50, ctzuo, 3.8, 3.8);
setEffAlphaKey( spep_3+50, ctzuo, 0);
--[[
changeAnime( 290, 0, 31);                     -- かめはめ発射ポーズ

setMoveKey(  289,    0,      0,  0,   0);
setMoveKey(  290,    0,   -600,  0,   0);
setMoveKey(  291,    0,   -600,  0,   0);
setMoveKey(  300,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 290, SP_02, 110, 0x40,  0,  300,  100,  0);   -- 伸びるかめはめ波

playSe( 290, SE_07);

spname = entryEffect( 290, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  329,    0,   -100,  0,   0);
setMoveKey(  330,    0,   -100,  0,   0);
setMoveKey(  338,    0,   -1100,  0,   0);


-- ** エフェクト等 ** --
entryFadeBg( 290, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 290, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 330, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 290, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 335, 0, 54, 50);

shuchusen = entryEffectLife( 290, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 290, shuchusen, 1.0, 1.0);
setEffScaleKey( 340, shuchusen, 1.0, 1.0);
setEffScaleKey( 349, shuchusen, 2.0, 2.0);


-- ** 書き文字エントリ ** ー
ct = entryEffectLife( 298, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(298, ct, 32, 5);
setEffAlphaKey(298, ct, 255);
setEffAlphaKey(320, ct, 255);
setEffAlphaKey(330, ct, 0);
setEffScaleKey(298, ct, 0.0, 0.0);
setEffScaleKey(302, ct, 1.3, 1.3);
setEffScaleKey(322, ct, 1.3, 1.3);
setEffScaleKey(330, ct, 6.0, 6.0);
playSe( 330, SE_07);

]]

--playSe( spep_3+60, 1018);
--playSe( spep_3+80, 1018);
playSe( spep_3+60, 1022);




setDisp( spep_3+102, 1, 1);
changeAnime( spep_3+102, 1, 100);                        -- 棒立ち
setShakeChara( spep_3+102, 0, 58, 5);

setMoveKey(  spep_3+101,    1,  1000,  200,   0);
setMoveKey(   spep_3+102,    1,  1000,  200,   0);
setMoveKey(   spep_3+103,    1,  1000,  200,   0);
setScaleKey(  spep_3+101,    1,  0.7, 0.7);
setScaleKey(  spep_3+102,    1,  0.7, 0.7);

changeAnime( spep_3+132, 1, 108);                        -- 棒立ち

setMoveKey(   spep_3+132,    1,   170,  150,   0);
setScaleKey(  spep_3+132,   1,   1.6,  1.6);

--playSe( spep_3+132, SE_06);
setMoveKey(   spep_3+149,    1,   200,  170,   0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 435; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end



spep_4 = spep_3+160;
entryFade( spep_4-5, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setMoveKey(   spep_4,    1,   120,  0,   0);
setScaleKey(  spep_4,   1,   1.6,  1.6);



------------------------------------------------------
--ギャン(256F)
------------------------------------------------------
setEffAlphaKey( spep_4-1, hassha, 255);
setEffAlphaKey( spep_4, hassha, 0);
setMoveKey(   spep_4-1,    1,   200,  170,   0);

setRotateKey( spep_4-1,  1,  -90 );
--setMoveKey(   spep_4-1,  1,  0, -200, 0);

setMoveKey(   spep_4,   1,    200, -300,   0);
setScaleKey(   spep_4,   1, 2.5, 2.5);
setDisp( spep_4, 1, 0);
playSe( spep_4+8, 1024);
gyan=entryEffectLife(  spep_4,  190003,  60, 0,  -1,  0,  0,  0);   
setEffReplaceTexture( gyan, 1, 1);
setEffReplaceTexture( gyan, 2, 0);                         
setEffReplaceTexture( gyan, 5, 4);

ctgyan = entryEffectLife( spep_4, 10006, 60, 0x100, -1, 0, 0, 300);    -- ギャン

setEffAlphaKey( spep_4, ctgyan, 255);
setEffScaleKey( spep_4, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_4+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_4, ctgyan, 255);
setEffAlphaKey( spep_4+60, ctgyan, 0);
setEffShake( spep_4, ctgyan, 45, 8);
setEffAlphaKey( spep_4+59, ctgyan, 255);

------------------------------------------------------
--last(114F)
------------------------------------------------------


spep_9=spep_4 +60;
--spep_9=spep_4 +80-99;

entryFade( spep_9-45, 43, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 114, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setEffAlphaKey( spep_9, ctgyan, 0);

setDisp( spep_9, 1, 0);

hassha = entryEffect(  spep_9,   SP_04e,   0,     -1,  0,  0,  0);--導入
setEffScaleKey( spep_9, hassha, 1.0, 1.0);
setEffAlphaKey( spep_9, hassha, 255);


shuchusenlast = entryEffectLife( spep_9, 906, 114, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9, shuchusenlast, 1.5, 1.5);
setEffAlphaKey( spep_9, shuchusenlast, 255);
--playSe( spep_9+10, SE_09);
playSe( spep_9+34, SE_10);

--[[
setDisp( spep_9+99, 1, 1);
setMoveKey(  spep_9+99,    1,  100,  0,   0);
setScaleKey( spep_9+99,    1,  1.0, 1.0);
setMoveKey(  spep_9+100,    1,    0,   0,   128);
setScaleKey( spep_9+100,    1,  0.1, 0.1);

changeAnime( spep_9+100, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+108, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+108, SE_10);

setMoveKey( spep_9+108,   1,    0,   0,   128);
setMoveKey(  spep_9+115,   1,  -60,  -200,  -100);
--setMoveKey(  spep_9+116,   1,  -60,  -200,  -100);
setDamage( spep_9+116, 1, 0);  -- ダメージ振動等
setShake(spep_9+107,6,15);
setShake(spep_9+113,15,10);

setRotateKey( spep_9+100,  1,  30 );
setRotateKey( spep_9+102,  1,  80 );
setRotateKey( spep_9+104,  1, 120 );
setRotateKey( spep_9+106,  1, 160 );
setRotateKey( spep_9+108,  1, 200 );
setRotateKey( spep_9+110,  1, 260 );
setRotateKey( spep_9+112,  1, 320 );
setRotateKey( spep_9+114,  1,   0 );

setShakeChara( spep_9+115, 1, 5,  10);
setShakeChara( spep_9+120, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+125, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+115, ct, 30, 10);
setEffRotateKey( spep_9+115, ct, -40);
setEffScaleKey( spep_9+115, ct, 4.0, 4.0);
setEffScaleKey( spep_9+116, ct, 2.0, 2.0);
setEffScaleKey( spep_9+117, ct, 2.6, 2.6);
setEffScaleKey( spep_9+118, ct, 4.0, 4.0);
setEffScaleKey( spep_9+119, ct, 2.6, 2.6);
setEffScaleKey( spep_9+120, ct, 3.8, 3.8);
setEffScaleKey( spep_9+210, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+125, ct, 255);
setEffAlphaKey( spep_9+205, ct, 255);
setEffAlphaKey( spep_9+215, ct, 0);

playSe( spep_9+103, SE_11);
shuchusen = entryEffectLife( spep_9+103, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+103, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

]]
-- ダメージ表示
dealDamage(spep_9+2);

entryFade( spep_9+94, 19,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade
setEffAlphaKey( spep_9+113, shuchusenlast, 255);
setEffAlphaKey( spep_9+114, shuchusenlast, 255);

setEffAlphaKey( spep_9+113, hassha, 255);
setEffAlphaKey( spep_9+114, hassha, 255);
endPhase(spep_9+100);
--[[
setDisp( 400, 0, 0);
setDisp( 400, 1, 1);
changeAnime( 400, 1, 100);                        -- 棒立ち

setMoveKey(  399,    1,  235,  0,   0);
setMoveKey(  400,    1,  235,  0,   0);
setMoveKey(  401,    1,  235,  0,   0);
setScaleKey( 399,    1,  0.7, 0.7);
setScaleKey( 400,    1,  0.7, 0.7);

setMoveKey(  430,    1,   120,  0,   0);
setScaleKey(  430,   1,   1.6,  1.6);

playSe( 420, SE_06);

kamehame_beam2 = entryEffect( 400, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(400, kamehame_beam2, 1, 1);
setEffScaleKey(482, kamehame_beam2, 1, 1);
setEffScaleKey(484, kamehame_beam2, 2.5, 2.5);
setDamage( 482, 1, 0);  -- ダメージ振動等

playSe( 485, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( 462, 1, 108);
setMoveKey(  462, 1,  120,    0,  0);
setMoveKey(  476, 1,  400,    0,  0);
setScaleKey( 462, 1,  1.6, 1.6);
setScaleKey( 465, 1,  1.5, 1.5);
setScaleKey( 476, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 400, 1, 99, 20);
entryFadeBg( 400, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( 400, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め


-- 書き文字エントリー
ct = entryEffectLife( 400, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(400, ct, 99, 20);
setEffScaleKey( 400, ct, 2.4, 2.4);
setEffRotateKey(400, ct, 70);
setEffAlphaKey(400, ct, 255);
setEffAlphaKey(460, ct, 255);
setEffAlphaKey(480, ct, 0);

entryFade( 480, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

]]




--endPhase(550);

end












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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

SP_01 = 150237;--ef_101
SP_02 = 150238;--ef_102
SP_02e = 150239;--ef_102e
SP_03 = 150240;--ef_103 
SP_04 = 150241;--ef_104 
SP_04e = 150256;--ef_104 
SP_05 = 150242;--ef_105 
SP_07 = 150233;--ef_07 

--[[
SP_01 = 150243;
SP_02 = 150244;
SP_03 = 150245;
SP_04 = 150246;

SP_05 = 150247;


SP_01 = 150248;
SP_02 = 150249;
SP_03 = 150250;
SP_04 = 150251;

SP_01 = 150252;
SP_02 = 150253;
SP_03 = 150254;
SP_04 = 150255;
]]

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey(   0,   0,    -100, 0,   0);
setMoveKey(   1,   1,    1000, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   1, 1.0, 1.0);

------------------------------------------------------
-- 構え(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


setVisibleUI( 0, 0);

--setBgScroll(0,100);

changeAnime( 0, 0, 31); 
changeAnime( 0, 1, 100); 


entryFade( 0, 2,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

entryFadeBg( 3, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp( 3, 1, 1);
setDisp( 3, 0, 1);

setMoveKey(   3,   0,    -100, 0,   0);
setMoveKey(   3,   1,    1000, 0,   0);
setScaleKey(   3,   0, 0.5, 0.5);
setScaleKey(   3,   1, 1.0, 1.0);


shuchusen = entryEffectLife( 3, 906, 60, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 3, shuchusen, 1.5, 1.5);
setEffAlphaKey( 3, shuchusen, 255);

--[[

-- ** エフェクト等 ** --
aura = entryEffectLife(  3,   311, 43, 0x100,  -1,  0,  0,  -100); -- オーラ
setEffScaleKey( 3, aura, 1.7, 1.7);


-- 書き文字エントリー
ct = entryEffectLife(  10, 190006, 89, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴゴ
setEffShake( 10, ct, 40, 8);
setEffScaleKey( 10, ct, 0.8, 0.8);

]]
playSe( 30, SE_04);

setMoveKey(   30,   0,    -200, 0,   0);
setMoveKey(   30,   1,    200, 0,   0);
setScaleKey(   30,   0, 0.8, 0.8);
setScaleKey(   30,   1, 1.0, 1.0);

entryFade( 45, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

setMoveKey(   47,   0,    -200, 0,   0);
setMoveKey(   47,   1,    200, 0,   0);
setScaleKey(   47,   0, 0.8, 0.8);
setScaleKey(   47,   1, 1.0, 1.0);


setDisp( 47, 1, 0);
setDisp( 47, 0, 0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
playSe( 47, SE_05);
speff = entryEffect(  47,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


spep_1=90 +47;
entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 255);          -- ベース暗め　背景

------------------------------------------------------
--サタン突進(60F)
------------------------------------------------------
playSe( spep_1, SE_01);

shuchusen1 = entryEffectLife( spep_1, 906, 43, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen1, 255);

tosshin = entryEffectLife( spep_1, SP_01, 43, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_1, tosshin, 1.0, 1.0);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 177; --エンドフェイズのフレーム数を置き換える

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
--サタンのラッシュ(260F)
------------------------------------------------------
spep_2=spep_1 +40;

playSe( spep_2, 1000);
playSe( spep_2+20, 1001);
playSe( spep_2+40, 1000);
playSe( spep_2+60, 1001);
playSe( spep_2+80, 1000);

playSe( spep_2+120, 35);

playSe( spep_2+180, 1001);
--playSe( spep_2+200, 1000);
playSe( spep_2+220, SE_06);

entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 260, 0, 0, 0, 0, 260);          -- ベース暗め　背景
changeAnime( spep_2, 1, 100); 

setMoveKey(   spep_2,   1,    100, 0,   0);
setScaleKey(   spep_2,   1, 1.7, 1.7);
setDisp( spep_2, 1, 1);

rush = entryEffect( spep_2,   SP_02,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_2, rush, 1.0, 1.0);

shuchusen2 = entryEffectLife( spep_2, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.7, 1.7);
setEffAlphaKey( spep_2, shuchusen2, 255);


ryusen2 = entryEffectLife( spep_2, 920, 30, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_2, ryusen1, -30);
setEffScaleKey( spep_2, ryusen2, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusen2, 255);

changeAnime( spep_2+180, 1, 109); 
setMoveKey(   spep_2+180,   1,    100, 0,   0);
setMoveKey(   spep_2+200,   1,    300, 0,   0);

changeAnime( spep_2+200, 1, 103); 
--setMoveKey(   spep_2+190,   1,    100, 0,   0);
setMoveKey(   spep_2+220,   1,    0, 0,   0);

playSe( spep_2+0, SE_09);

ryusen2_2 = entryEffectLife( spep_2+180, 920, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_2, ryusen1, -30);
setEffScaleKey( spep_2+180, ryusen2_2, 1.6, 1.6);
setEffAlphaKey( spep_2+180, ryusen2_2, 255);


koukasen2 = entryEffectLife( spep_2+230, 921, 30, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_2+230, koukasen2, -25);
setEffScaleKey( spep_2+230, koukasen2, 1.6, 1.6);
setEffAlphaKey( spep_2+230, koukasen2, 255);


spep_3=spep_2 +260;

entryFade( spep_3-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 60, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setMoveKey(   spep_3-1,   1,    0, 0,   0);
setMoveKey(   spep_3,   1,    50, 0,   0);
setScaleKey(   spep_3,   1, 1.7, 1.7);
setDisp( spep_3, 1, 0);

------------------------------------------------------
--爆発(60F)
------------------------------------------------------
--[[
koukasen3 = entryEffectLife( spep_3+180, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_3, koukasen3, 45);
setEffScaleKey( spep_3, koukasen3, 1.6, 1.6);
setEffAlphaKey( spep_3, koukasen3, 255);
]]
playSe( spep_3, SE_10);

shuchusen3 = entryEffectLife( spep_3, 906, 60, 0x80,  -1, 0,  200,  200);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 2.0, 2.0);
setEffAlphaKey( spep_3, shuchusen3, 255);


bom = entryEffect( spep_3,   SP_03,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_3, bom, 1.0, 1.0);

spep_4=spep_3 +60;
entryFade( spep_4-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景


------------------------------------------------------
--ブウ登場(100F)
------------------------------------------------------


playSe( spep_4, SE_04);

shuchusen4 = entryEffectLife( spep_4, 906, 120, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen4, 255);

toujou = entryEffect( spep_4,   SP_04,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_4, toujou, 1.0, 1.0);
setEffAlphaKey( spep_4, toujou, 255);


-- 書き文字エントリー
ct4 = entryEffectLife( spep_4, 190006, 100, 0x100, -1, 0, 0, 450);    -- ゴゴゴゴ
setEffShake(spep_4, ct4, 40, 28);
setEffScaleKey(spep_4, ct4, 0.8, 0.8);
setEffRotateKey(spep_4, ct4, 10);
setEffAlphaKey( spep_4, ct4, 255);


spep_5=spep_4 +80;
entryFade( spep_5-10, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 65, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_5-1, shuchusen4, 255);
setEffAlphaKey( spep_5, shuchusen4, 0);
setEffAlphaKey( spep_5-1, toujou, 255);
setEffAlphaKey( spep_5, toujou, 0);

------------------------------------------------------
--出現(256F)
------------------------------------------------------

playSe( spep_5+10, 1042);

shuchusen5 = entryEffectLife( spep_5+10, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5+10, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_5+10, shuchusen5, 255);



syutugen = entryEffect( spep_5+15,   SP_07,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_5+15, syutugen, 1.0, 1.0);

spep_6=spep_5 +70;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 256, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
--サタン＆ブウのラッシュ(256F)
------------------------------------------------------

playSe( spep_6, 1000);
playSe( spep_6+20, 1001);
playSe( spep_6+30, 1000);
playSe( spep_6+50, 1001);
playSe( spep_6+60, 1000);
playSe( spep_6+80, 1001);

playSe( spep_6+90, 1001);
playSe( spep_6+100, 1000);

ryusen6 = entryEffectLife( spep_6+0, 920, 256, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_1+80, ryusen1, 225);
setEffScaleKey( spep_6+0, ryusen6, 1.6, 1.6);
setEffAlphaKey( spep_6+0, ryusen6, 255);

rush2 = entryEffect( spep_6,   SP_05,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_6, rush2, 1.0, 1.0);

setRotateKey(spep_6+0,  1,  -50 );
setMoveKey(   spep_6,   1,    -50, 0,   0);
setScaleKey(   spep_6,   1, 1.7, 1.7);
setDisp( spep_6, 1, 1);
changeAnime( spep_6+0, 1, 106); 

shuchusen6 = entryEffectLife( spep_6+10, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+10, shuchusen6, 1.5, 1.5);
setEffAlphaKey( spep_6+10, shuchusen6, 255);


setRotateKey(spep_6+20,  1,  -90 );
setRotateKey(spep_6+50,  1,  -90 );

setRotateKey(spep_6+60,  1,  -50 );
setMoveKey(   spep_6+10,   1,  -100, 0,   0);

setRotateKey(spep_6+20,  1,  0 );
setRotateKey(spep_6+30,  1,  -70 );

setRotateKey(spep_6+90,  1,  -70 );
setRotateKey(spep_6+100,  1,  -50 );


setMoveKey( spep_6+130,   1,    -100, 0,   0);
setMoveKey( spep_6+140,   1,    0, 0,   0);

setShakeChara( spep_6+140, 1, 116, 10);

playSe( spep_6+140, SE_04);

spep_7=spep_6 +256;
entryFade( spep_7-45, 43, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
playSe( spep_7-50, SE_10);

setMoveKey( spep_7-2,   1,    0, 0,   0);
setScaleKey( spep_7-2,   1, 1.7, 1.7);
setRotateKey( spep_7-2,  1,  -45 );



spep_9=spep_7; --410 469

--470
setDisp( spep_9-1, 1, 1);
setMoveKey(  spep_9-1,    1,  100,  0,   0);
setScaleKey( spep_9-1,    1,  1.0, 1.0);
setMoveKey(  spep_9,    1,    0,   0,   128);
setScaleKey( spep_9,    1,  0.1, 0.1);

changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);

setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9+8,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+15, ct, 30, 10);
setEffRotateKey( spep_9+15, ct, -40);
setEffScaleKey( spep_9+15, ct, 4.0, 4.0);
setEffScaleKey( spep_9+16, ct, 2.0, 2.0);
setEffScaleKey( spep_9+17, ct, 2.6, 2.6);
setEffScaleKey( spep_9+18, ct, 4.0, 4.0);
setEffScaleKey( spep_9+19, ct, 2.6, 2.6);
setEffScaleKey( spep_9+20, ct, 3.8, 3.8);
setEffScaleKey( spep_9+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ct, 255);
setEffAlphaKey( spep_9+115, ct, 255);
setEffAlphaKey( spep_9+115, ct, 0);

playSe( spep_9+3, SE_11);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ




--playSe( spep_9+4, SE_07);
--shuchusen = entryEffectLife( spep_9+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
--[[
-- ダメージ表示
dealDamage(spep_9+17);

entryFade( spep_9+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+111);

else
	]]

-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);
else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
--setMoveKey( 0,    0,      0,  0,   0);
setVisibleUI( 0, 0);

--setBgScroll(0,100);

changeAnime( 0, 0, 31); 
changeAnime( 0, 1, 100); 


entryFade( 0, 2,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

entryFadeBg( 3, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp( 3, 1, 1);
setDisp( 3, 0, 1);

setMoveKey(   3,   0,    -100, 0,   0);
setMoveKey(   3,   1,    1000, 0,   0);
setScaleKey(   3,   0, 0.5, 0.5);
setScaleKey(   3,   1, 1.0, 1.0);


shuchusen = entryEffectLife( 3, 906, 60, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 3, shuchusen, 1.5, 1.5);
setEffAlphaKey( 3, shuchusen, 255);

--[[

-- ** エフェクト等 ** --
aura = entryEffectLife(  3,   311, 43, 0x100,  -1,  0,  0,  -100); -- オーラ
setEffScaleKey( 3, aura, 1.7, 1.7);


-- 書き文字エントリー
ct = entryEffectLife(  10, 190006, 89, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴゴ
setEffShake( 10, ct, 40, 8);
setEffScaleKey( 10, ct, 0.8, 0.8);

]]
playSe( 30, SE_04);

setMoveKey(   30,   0,    -200, 0,   0);
setMoveKey(   30,   1,    200, 0,   0);
setScaleKey(   30,   0, 0.8, 0.8);
setScaleKey(   30,   1, 1.0, 1.0);

entryFade( 45, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

setMoveKey(   47,   0,    -200, 0,   0);
setMoveKey(   47,   1,    200, 0,   0);
setScaleKey(   47,   0, 0.8, 0.8);
setScaleKey(   47,   1, 1.0, 1.0);


setDisp( 47, 1, 0);
setDisp( 47, 0, 0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
playSe( 47, SE_05);
speff = entryEffect(  47,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


spep_1=90 +47;
entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 255);          -- ベース暗め　背景

------------------------------------------------------
--サタン突進(60F)
------------------------------------------------------
playSe( spep_1, SE_01);

shuchusen1 = entryEffectLife( spep_1, 906, 43, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen1, 255);

tosshin = entryEffectLife( spep_1, SP_01, 43, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_1, tosshin, 1.0, 1.0);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 177; --エンドフェイズのフレーム数を置き換える

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
--サタンのラッシュ(260F)
------------------------------------------------------
spep_2=spep_1 +40;



playSe( spep_2, 1000);
playSe( spep_2+20, 1001);
playSe( spep_2+40, 1000);
playSe( spep_2+60, 1001);
playSe( spep_2+80, 1000);

playSe( spep_2+120, 35);

playSe( spep_2+180, 1001);
--playSe( spep_2+200, 1000);
playSe( spep_2+220, SE_06);

entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 260, 0, 0, 0, 0, 260);          -- ベース暗め　背景
changeAnime( spep_2, 1, 100); 

setMoveKey(   spep_2,   1,    100, 0,   0);
setScaleKey(   spep_2,   1, 1.7, 1.7);
setDisp( spep_2, 1, 1);

rush = entryEffect( spep_2,   SP_02e,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_2, rush, 1.0, 1.0);

shuchusen2 = entryEffectLife( spep_2, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.7, 1.7);
setEffAlphaKey( spep_2, shuchusen2, 255);


ryusen2 = entryEffectLife( spep_2, 920, 30, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_2, ryusen1, -30);
setEffScaleKey( spep_2, ryusen2, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusen2, 255);

changeAnime( spep_2+180, 1, 109); 
setMoveKey(   spep_2+180,   1,    100, 0,   0);
setMoveKey(   spep_2+200,   1,    300, 0,   0);

changeAnime( spep_2+200, 1, 103); 
--setMoveKey(   spep_2+190,   1,    100, 0,   0);
setMoveKey(   spep_2+220,   1,    0, 0,   0);

playSe( spep_2+0, SE_09);

ryusen2_2 = entryEffectLife( spep_2+180, 920, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_2, ryusen1, -30);
setEffScaleKey( spep_2+180, ryusen2_2, 1.6, 1.6);
setEffAlphaKey( spep_2+180, ryusen2_2, 255);


koukasen2 = entryEffectLife( spep_2+230, 921, 30, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_2+230, koukasen2, -25);
setEffScaleKey( spep_2+230, koukasen2, 1.6, 1.6);
setEffAlphaKey( spep_2+230, koukasen2, 255);


spep_3=spep_2 +260;

entryFade( spep_3-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 60, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setMoveKey(   spep_3-1,   1,    0, 0,   0);
setMoveKey(   spep_3,   1,    50, 0,   0);
setScaleKey(   spep_3,   1, 1.7, 1.7);
setDisp( spep_3, 1, 0);

------------------------------------------------------
--爆発(60F)
------------------------------------------------------
--[[
koukasen3 = entryEffectLife( spep_3+180, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_3, koukasen3, 45);
setEffScaleKey( spep_3, koukasen3, 1.6, 1.6);
setEffAlphaKey( spep_3, koukasen3, 255);
]]
playSe( spep_3, SE_10);

shuchusen3 = entryEffectLife( spep_3, 906, 60, 0x80,  -1, 0,  200,  200);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 2.0, 2.0);
setEffAlphaKey( spep_3, shuchusen3, 255);


bom = entryEffect( spep_3,   SP_03,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_3, bom, 1.0, 1.0);

spep_4=spep_3 +60;
entryFade( spep_4-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景


------------------------------------------------------
--ブウ登場(100F)
------------------------------------------------------


playSe( spep_4, SE_04);

shuchusen4 = entryEffectLife( spep_4, 906, 120, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen4, 255);

toujou = entryEffect( spep_4,   SP_04e,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_4, toujou, 1.0, 1.0);
setEffAlphaKey( spep_4, toujou, 255);


-- 書き文字エントリー
ct4 = entryEffectLife( spep_4, 190006, 100, 0x100, -1, 0, 0, 450);    -- ゴゴゴゴ
setEffShake(spep_4, ct4, 40, 28);
setEffScaleKey(spep_4, ct4, -0.8, 0.8);
setEffRotateKey(spep_4, ct4, 10);
setEffAlphaKey( spep_4, ct4, 255);


spep_5=spep_4 +80;
entryFade( spep_5-10, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 65, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_5-1, shuchusen4, 255);
setEffAlphaKey( spep_5, shuchusen4, 0);
setEffAlphaKey( spep_5-1, toujou, 255);
setEffAlphaKey( spep_5, toujou, 0);


------------------------------------------------------
--出現(256F)
------------------------------------------------------

playSe( spep_5+10, 1042);

shuchusen5 = entryEffectLife( spep_5+10, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5+10, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_5+10, shuchusen5, 255);



syutugen = entryEffect( spep_5+15,   SP_07,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_5+15, syutugen, 1.0, 1.0);

spep_6=spep_5 +70;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 256, 0, 10, 10, 10, 180);          -- ベース暗め　背景


------------------------------------------------------
--サタン＆ブウのラッシュ(256F)
------------------------------------------------------
--[[
playSe( spep_6, 1000);
playSe( spep_6+20, 1001);
playSe( spep_6+30, 1000);
playSe( spep_6+90, 1001);
playSe( spep_6+100, 1000);
]]
playSe( spep_6, 1000);
playSe( spep_6+20, 1001);
playSe( spep_6+30, 1000);
playSe( spep_6+50, 1001);
playSe( spep_6+60, 1000);
playSe( spep_6+80, 1001);

playSe( spep_6+90, 1001);
playSe( spep_6+100, 1000);

ryusen6 = entryEffectLife( spep_6+0, 920, 256, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_1+80, ryusen1, 225);
setEffScaleKey( spep_6+0, ryusen6, 1.6, 1.6);
setEffAlphaKey( spep_6+0, ryusen6, 255);

rush2 = entryEffect( spep_6,   SP_05,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_6, rush2, 1.0, 1.0);

setRotateKey(spep_6+0,  1,  -50 );
setMoveKey(   spep_6,   1,    -50, 0,   0);
setScaleKey(   spep_6,   1, 1.7, 1.7);
setDisp( spep_6, 1, 1);
changeAnime( spep_6+0, 1, 106); 

shuchusen6 = entryEffectLife( spep_6+10, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+10, shuchusen6, 1.5, 1.5);
setEffAlphaKey( spep_6+10, shuchusen6, 255);


setRotateKey(spep_6+20,  1,  -90 );
setRotateKey(spep_6+50,  1,  -90 );

setRotateKey(spep_6+60,  1,  -50 );
setMoveKey(   spep_6+10,   1,  -100, 0,   0);

setRotateKey(spep_6+20,  1,  0 );
setRotateKey(spep_6+30,  1,  -70 );

setRotateKey(spep_6+90,  1,  -70 );
setRotateKey(spep_6+100,  1,  -50 );


setMoveKey( spep_6+130,   1,    -100, 0,   0);
setMoveKey( spep_6+140,   1,    0, 0,   0);

setShakeChara( spep_6+140, 1, 116, 10);

playSe( spep_6+140, SE_04);

spep_7=spep_6 +256;
entryFade( spep_7-45, 43, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
playSe( spep_7-50, SE_10);

setMoveKey( spep_7-2,   1,    0, 0,   0);
setScaleKey( spep_7-2,   1, 1.7, 1.7);
setRotateKey( spep_7-2,  1,  -45 );



spep_9=spep_7; --410 469

--470
setDisp( spep_9-1, 1, 1);
setMoveKey(  spep_9-1,    1,  100,  0,   0);
setScaleKey( spep_9-1,    1,  1.0, 1.0);
setMoveKey(  spep_9,    1,    0,   0,   128);
setScaleKey( spep_9,    1,  0.1, 0.1);

changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);

setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9+8,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, 100, 230); -- ガッ
setEffShake(spep_9+15, ct, 30, 10);
setEffRotateKey( spep_9+15, ct, 40);
--setEffRotateKey( spep_9+15, ct, -90);
setEffScaleKey( spep_9+15, ct, 4.0, 4.0);
setEffScaleKey( spep_9+16, ct, 2.0, 2.0);
setEffScaleKey( spep_9+17, ct, 2.6, 2.6);
setEffScaleKey( spep_9+18, ct, 4.0, 4.0);
setEffScaleKey( spep_9+19, ct, 2.6, 2.6);
setEffScaleKey( spep_9+20, ct, 3.8, 3.8);
setEffScaleKey( spep_9+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ct, 255);
setEffAlphaKey( spep_9+115, ct, 255);
setEffAlphaKey( spep_9+115, ct, 0);

playSe( spep_9+3, SE_11);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ




--playSe( spep_9+4, SE_07);
--shuchusen = entryEffectLife( spep_9+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
--[[
-- ダメージ表示
dealDamage(spep_9+17);

entryFade( spep_9+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+111);

else
	]]

-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);

end

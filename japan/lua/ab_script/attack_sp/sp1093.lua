

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
SP_01 = 150257;
SP_02 = 150258;
SP_03 = 150259;
SP_04 = 150260;
SP_05 = 150261;
SP_06 = 150262
SP_07 = 150263;
SP_08 = 150264;
SP_09 = 150265;
SP_10 = 150266;
SP_11 = 150267;
SP_12 = 150268;

SP_01e = 150269;
SP_02e = 150270;
SP_03e = 150271;
SP_04e = 150272;
SP_05e = 150273;
SP_06e = 150274;
SP_07e = 150275;
SP_08e = 150276;
SP_09e = 150277;
SP_12e = 150278;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 0);                       -- 立ち
setAnimeLoop( 0, 0, 1);
setAnimeLoop( 0, 1, 1);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey(   0,   0,    -100, 0,   0);
setMoveKey(   1,   1,    1000, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);


------------------------------------------------------
-- 構え(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then




setVisibleUI( 0, 0);
entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 4, 0, 80, 0, 10, 10, 10, 150);          -- ベース暗め　背景
toujou = entryEffect(  4,   SP_01,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( 4, toujou, 1.0, 1.0);
setEffAlphaKey( 4, toujou, 255);


--entryFade( 35, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
kiai=entryEffect(  40,   SP_02,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( 40, kiai, 1.0, 1.0);
setEffAlphaKey( 40, kiai, 255);



shuchusen_kamae=entryEffectLife( 40, 906, 43, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 40, shuchusen_kamae, 1.5, 1.5);
setEffAlphaKey( 40, shuchusen_kamae, 255);
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

kiai = entryEffect(  30,   SP_02,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( 30, kiai, 1.0, 1.0);

]]
--setBgScroll(0,100);
playSe( 40, SE_01);
playSe( 60, SE_03);
playSe( 80, SE_03);

spep_1=75;
entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景



------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
shuchusen_cut=entryEffectLife( spep_1, 906, 43, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen_cut, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen_cut, 255);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



------------------------------------------------------
--迫る(260F)
------------------------------------------------------
spep_2=spep_1+90;

entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 60, 0, 0, 0, 0, 255);          -- ベース暗め　背景
playSe( spep_2+0, 1018);

playSe( spep_2+30, 1018);
playSe( spep_2+60, 1018);
totugeki = entryEffect(  spep_2,   SP_03,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_2, totugeki, 1.0, 1.0);
--14 27
shuchusen_kamae= entryEffectLife( spep_2+28, 906, 26, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+27, shuchusen_kamae, 1.2, 1.2);
setEffAlphaKey( spep_2+27, shuchusen_kamae, 255);

shuchusen_kamae2= entryEffectLife( spep_2+64, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+64, shuchusen_kamae2, 1.2, 1.2);
setEffAlphaKey( spep_2+64, shuchusen_kamae2, 255);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 230; --エンドフェイズのフレーム数を置き換える

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
--ロゼ(60F)
------------------------------------------------------
spep_3=spep_2+84;

entryFade( spep_3-5, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--setShake(spep_3,6,15);
setQuake(spep_3,20,15);

changeAnime( spep_3, 1, 108);                                    -- かめはめ発射ポーズ
setDisp( spep_3, 1, 1);
setScaleKey(   spep_3,   1, 1.7, 1.7);
setRotateKey( spep_3,  1,  0 );
sashi = entryEffect(  spep_3,   SP_04,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, sashi, 1.0, 1.0);

setMoveKey(   spep_3,   1,    -400, 0,   0);
setMoveKey(   spep_3+4,   1,    0, 0,   0);
setMoveKey(   spep_3+8,   1,    100, 0,   0);
setMoveKey(   spep_3+12,   1,    300, 0,   0);
setMoveKey(   spep_3+20,   1,    200, 0,   0);
setMoveKey(   spep_3+52,   1,    200, 0,   0);
setScaleKey(   spep_3+52,   1, 1.7, 1.7);
setMoveKey(   spep_3+90,  1,  200, 300, 0);
setScaleKey(   spep_3+90,   1, 0.5, 0.5);

playSe( spep_3+10, 1031);

ryusen_rose=entryEffectLife( spep_3, 920, 48, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_3, ryusen_rose, 0);
setEffScaleKey( spep_3, ryusen_rose, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen_rose, 255);

shuchusen_rose=entryEffectLife( spep_3+12, 906, 8, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+12, shuchusen_rose, 1.5, 1.5);
setEffAlphaKey( spep_3+12, shuchusen_rose, 255);

--setShake(spep_3+30,6,15);
--setShake(spep_3+52,6,15);
setQuake(spep_3+30,10,15);
setQuake(spep_3+52,10,15);

playSe( spep_3+52, 1010);
playSe( spep_3+82, 1018);

playSe( spep_3+70, 43);

setRotateKey( spep_3+51,  1,  0 );
setRotateKey( spep_3+52,  1,  -30 );

buttobashi_ryusen_rose=entryEffectLife( spep_3+52, 924, 30, 0x80,  -1,  0,  250,  -450); -- 流線斜め
setEffRotateKey( spep_3+52, buttobashi_ryusen_rose, -90);
setEffScaleKey( spep_3+52, buttobashi_ryusen_rose, 1.5, 2.0);
setEffAlphaKey( spep_3+52, buttobashi_ryusen_rose, 255);


------------------------------------------------------
--ザマス(60F)
------------------------------------------------------
spep_4=spep_3+90;

entryFade( spep_4-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 100, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setMoveKey(   spep_4,  1,  200, 300, 0);
setMoveKey(   spep_4+1,  1,  -200, -300, 0);
setRotateKey( spep_4+1,  1,  -30 );

setScaleKey(   spep_4-1,   1, 0.5, 0.5);
setScaleKey(   spep_4,   1, 1.7, 1.7);
--[[
setShake(spep_4,6,15);
setShake(spep_4+10,6,15);
setShake(spep_4+30,6,15);
]]
--setQuake(spep_4+6,10,15);
--setQuake(spep_4+10,10,15);
setQuake(spep_4+30,10,15);


kick = entryEffect(  spep_4,   SP_05,   0,  -1,  0,  0,  0);   --
setEffScaleKey( spep_4, kick, 1.0, 1.0);
setEffAlphaKey( spep_4, kick, 255);
playSe( spep_4+10, 43);
playSe( spep_4+30, 1001);
ryusen_zamasu=entryEffectLife( spep_4, 920, 28, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusen_zamasu, -45);
setEffScaleKey( spep_4, ryusen_zamasu, 1.6, 1.6);
setEffAlphaKey( spep_4, ryusen_zamasu, 255);

playSe( spep_4+30, 1010);
setRotateKey( spep_4+29,  1,  -30 );
setRotateKey( spep_4+30,  1,  60 );
setMoveKey(   spep_4+30,  1,  0, 0, 0);
setScaleKey(   spep_4+30,   1, 1.2, 1.2);

setEffAlphaKey( spep_4+25, ryusen_zamasu, 255);
setEffAlphaKey( spep_4+28, ryusen_zamasu, 0);

buttobashi_ryusen_zamasu=entryEffectLife( spep_4+32, 924, 30, 0x80,  -1,  0,  -250,  -450); -- 流線斜め
setEffRotateKey( spep_4+32, buttobashi_ryusen_zamasu, -90);
setEffScaleKey( spep_4+32, buttobashi_ryusen_zamasu, 1.5, 2.0);
setEffAlphaKey( spep_4+32, buttobashi_ryusen_zamasu, 255);


spep_5=spep_4+50;
entryFade( spep_5-10, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 50, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setMoveKey(   spep_5-1,  1,  -150, 250, 0);
setScaleKey(   spep_5-1,   1, 0.7, 0.7);

setEffAlphaKey( spep_5, kick, 255);
setEffAlphaKey( spep_5+1, kick, 0);

setRotateKey( spep_5+1,  1,  60 );

------------------------------------------------------
--ロゼの一撃(256F)
------------------------------------------------------
spep_6=spep_5;
--[[
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 256, 0, 10, 10, 10, 180);          -- ベース暗め　背景
]]
setMoveKey(   spep_6,  1,  100, -200, 0);
setScaleKey(   spep_6,   1, 2.7, 2.7);


mawari = entryEffect(  spep_6+30,   SP_06,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_6+30, mawari, 1.0, 1.0);


ryusen_itigeki=entryEffectLife( spep_6, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_6, ryusen_itigeki, 225);
setEffScaleKey( spep_6, ryusen_itigeki, 1.6, 1.6);
setEffAlphaKey( spep_6, ryusen_itigeki, 255);


--setMoveKey(   spep_6+30,  1,  -100, 50, 0, 0);
setMoveKey(   spep_6+30,  1,  -70, 30, 0, 0);
setScaleKey(   spep_6+30,   1, 1.5, 1.5);

playSe( spep_6+30, 43);

setMoveKey(   spep_6+50,  1, -100, 50, 0);


------------------------------------------------------
--顔カットイン(256F)
------------------------------------------------------

spep_7=spep_6+50;
entryFade( spep_7-5, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_7, 1, 0);
playSe( spep_7, SE_04);
setEffRotateKey( spep_7, ryusen_itigeki, 225);
setEffRotateKey( spep_7+1, ryusen_itigeki, 0);
--setMoveKey(   spep_7,  1,  -150, 50, 0);
setMoveKey(   spep_7,  1,  -70, 30, 0);
setScaleKey(   spep_7,   1, 1.5, 1.5);


serifu= entryEffect(  spep_7,   SP_07,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_7, serifu, 1.0, 1.0);


shuchusenrose=entryEffectLife( spep_7, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusenrose, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusenrose, 255);

speff = entryEffect(  spep_7,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct4 = entryEffectLife( spep_7, 190006, 90, 0x100, -1, 0, -50, 450);    -- ゴゴゴゴ
setEffShake(spep_7, ct4, 40, 28);
setEffScaleKey(spep_7, ct4, 0.8, 0.8);
setEffRotateKey(spep_7, ct4, 10);
setEffAlphaKey( spep_7, ct4, 255);



spep_8=spep_7+95;

entryFade( spep_8-5, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 65, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_8, shuchusen_rose, 255);
setEffAlphaKey( spep_8+1, shuchusen_rose, 0);

------------------------------------------------------
--挟み撃ち(256F)
------------------------------------------------------
setDisp( spep_8, 1, 1);
setMoveKey(   spep_8,  1,  0, 0, 0);
setScaleKey(   spep_8,   1, 1.7, 1.7);
setRotateKey( spep_8,  1,  60 );


haikei = entryEffect(  spep_8,   SP_10,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_8, haikei, 1.0, 1.0);
shuchusenhasami=entryEffectLife( spep_8, 906, 40, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusenhasami, 1.5, 1.5);
setEffAlphaKey( spep_8, shuchusenhasami, 255);

ryuusenhasami=entryEffectLife( spep_8, 921, 40, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, ryuusenhasami, 1.5, 1.5);
setEffAlphaKey( spep_8, ryuusenhasami, 180);
setEffRotateKey( spep_8, ryuusenhasami, -135);
--setEffRotateKey( spep_8, ryuusenhasami, -45);

playSe( spep_8, 1018);

playSe( spep_8+10, 1018);

zamasukiri = entryEffect(  spep_8,   SP_08,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_8, zamasukiri, 1.0, 1.0);


rozekihi = entryEffect(  spep_8,   SP_09,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_8, rozekihi, 1.0, 1.0);

--setShake(spep_8+15,6,15);
setQuake(spep_8+15,20,15);

------------------------------------------------------
--最後(256F)
------------------------------------------------------

spep_9=spep_8+40;
entryFade( spep_9-5, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 65, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setMoveKey(   spep_9,  1,  0, 0, 0);
setScaleKey(   spep_9,   1, 1.7, 1.7);
setRotateKey( spep_9,  1,  60 );

setEffAlphaKey( spep_9, shuchusenhasami, 255);
setEffAlphaKey( spep_9+1, shuchusenhasami, 0);
setDisp( spep_9, 1, 0);


zangeki = entryEffect(  spep_9,   SP_11,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_9, zangeki, 1.0, 1.0);
playSe( spep_9, 1032);
playSe( spep_9+10, 1032);


spep_10=spep_9+70;

entryFade( spep_10-15, 13, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_10, 0, 65, 0, 0, 0, 0, 255);          -- ベース暗め　背景


jinnwari = entryEffect(  spep_10,   SP_12,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_10, jinnwari, 1.0, 1.0);

playSe( spep_10, SE_10);


shuchusen_last=entryEffectLife( spep_10+30, 906, 130, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_10+30, shuchusen_last, 1.5, 1.5);
setEffAlphaKey( spep_10+30, shuchusen_last, 255);


-- ダメージ表示
dealDamage(spep_10+16);

--entryFade( spep_10+150, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_10+146);
else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
--setMoveKey( 0,    0,      0,  0,   0);




setVisibleUI( 0, 0);
entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 4, 0, 80, 0, 10, 10, 10, 150);          -- ベース暗め　背景
toujou = entryEffect(  4,   SP_01e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( 4, toujou, 1.0, 1.0);
setEffAlphaKey( 4, toujou, 255);


--entryFade( 35, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
kiai=entryEffect(  40,   SP_02e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( 40, kiai, 1.0, 1.0);
setEffAlphaKey( 40, kiai, 255);



shuchusen_kamae=entryEffectLife( 40, 906, 43, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 40, shuchusen_kamae, 1.5, 1.5);
setEffAlphaKey( 40, shuchusen_kamae, 255);
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

kiai = entryEffect(  30,   SP_02,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( 30, kiai, 1.0, 1.0);

]]
--setBgScroll(0,100);
playSe( 40, SE_01);
playSe( 60, SE_03);
playSe( 80, SE_03);

spep_1=75;
entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景



------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
shuchusen_cut=entryEffectLife( spep_1, 906, 43, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen_cut, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen_cut, 255);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



------------------------------------------------------
--迫る(260F)
------------------------------------------------------
spep_2=spep_1+90;

entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 60, 0, 0, 0, 0, 255);          -- ベース暗め　背景
playSe( spep_2+0, 1018);

playSe( spep_2+30, 1018);
playSe( spep_2+60, 1018);
totugeki = entryEffect(  spep_2,   SP_03e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_2, totugeki, 1.0, 1.0);
--14 27
shuchusen_kamae= entryEffectLife( spep_2+28, 906, 26, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+27, shuchusen_kamae, 1.2, 1.2);
setEffAlphaKey( spep_2+27, shuchusen_kamae, 255);

shuchusen_kamae2= entryEffectLife( spep_2+64, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+64, shuchusen_kamae2, 1.2, 1.2);
setEffAlphaKey( spep_2+64, shuchusen_kamae2, 255);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 230; --エンドフェイズのフレーム数を置き換える

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
--ロゼ(60F)
------------------------------------------------------
spep_3=spep_2+84;

entryFade( spep_3-5, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--setShake(spep_3,6,15);
setQuake(spep_3,20,15);

changeAnime( spep_3, 1, 108);                                    -- かめはめ発射ポーズ
setDisp( spep_3, 1, 1);
setScaleKey(   spep_3,   1, 1.7, 1.7);
setRotateKey( spep_3,  1,  0 );
sashi = entryEffect(  spep_3,   SP_04e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, sashi, 1.0, 1.0);
--[[
setMoveKey(   spep_3,   1,    -1000, 0,   0);
setMoveKey(   spep_3+12,   1,    300, 0,   0);
setMoveKey(   spep_3+20,   1,    200, 0,   0);
setMoveKey(   spep_3+52,   1,    200, 0,   0);
setScaleKey(   spep_3+52,   1, 1.7, 1.7);
setMoveKey(   spep_3+90,  1,  200, 300, 0);
setScaleKey(   spep_3+90,   1, 0.5, 0.5);
]]
setMoveKey(   spep_3,   1,    -400, 0,   0);
setMoveKey(   spep_3+4,   1,    0, 0,   0);
setMoveKey(   spep_3+8,   1,    100, 0,   0);
setMoveKey(   spep_3+12,   1,    300, 0,   0);
setMoveKey(   spep_3+20,   1,    200, 0,   0);
setMoveKey(   spep_3+52,   1,    200, 0,   0);
setScaleKey(   spep_3+52,   1, 1.7, 1.7);
setMoveKey(   spep_3+90,  1,  200, 300, 0);
setScaleKey(   spep_3+90,   1, 0.5, 0.5);

playSe( spep_3+10, 1031);

ryusen_rose=entryEffectLife( spep_3, 920, 48, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_3, ryusen_rose, 0);
setEffScaleKey( spep_3, ryusen_rose, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen_rose, 255);

shuchusen_rose=entryEffectLife( spep_3+12, 906, 8, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+12, shuchusen_rose, 1.5, 1.5);
setEffAlphaKey( spep_3+12, shuchusen_rose, 255);

--setShake(spep_3+30,6,15);
--setShake(spep_3+52,6,15);

setQuake(spep_3+30,10,15);
setQuake(spep_3+52,10,15);

playSe( spep_3+52, 1010);
playSe( spep_3+82, 1018);

playSe( spep_3+70, 43);

setRotateKey( spep_3+51,  1,  0 );
setRotateKey( spep_3+52,  1,  -30 );

buttobashi_ryusen_rose=entryEffectLife( spep_3+52, 924, 30, 0x80,  -1,  0,  250,  -450); -- 流線斜め
setEffRotateKey( spep_3+52, buttobashi_ryusen_rose, -90);
setEffScaleKey( spep_3+52, buttobashi_ryusen_rose, 1.5, 2.0);
setEffAlphaKey( spep_3+52, buttobashi_ryusen_rose, 255);


------------------------------------------------------
--ザマス(60F)
------------------------------------------------------
spep_4=spep_3+90;

entryFade( spep_4-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 100, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setMoveKey(   spep_4,  1,  200, 300, 0);
setMoveKey(   spep_4+1,  1,  -200, -300, 0);
setRotateKey( spep_4+1,  1,  -30 );

setScaleKey(   spep_4-1,   1, 0.5, 0.5);
setScaleKey(   spep_4,   1, 1.7, 1.7);
--[[
setShake(spep_4,6,15);
setShake(spep_4+10,6,15);
setShake(spep_4+30,6,15);
]]
--setQuake(spep_4+6,10,15);
--setQuake(spep_4+10,10,15);
setQuake(spep_4+30,10,15);

kick = entryEffect(  spep_4,   SP_05e,   0,  -1,  0,  0,  0);   --
setEffScaleKey( spep_4, kick, 1.0, 1.0);
setEffAlphaKey( spep_4, kick, 255);
playSe( spep_4+10, 43);
playSe( spep_4+30, 1001);
ryusen_zamasu=entryEffectLife( spep_4, 920, 28, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusen_zamasu, -45);
setEffScaleKey( spep_4, ryusen_zamasu, 1.6, 1.6);
setEffAlphaKey( spep_4, ryusen_zamasu, 255);

playSe( spep_4+30, 1010);
setRotateKey( spep_4+29,  1,  -30 );
setRotateKey( spep_4+30,  1,  60 );
setMoveKey(   spep_4+30,  1,  0, 0, 0);
setScaleKey(   spep_4+30,   1, 1.2, 1.2);

setEffAlphaKey( spep_4+25, ryusen_zamasu, 255);
setEffAlphaKey( spep_4+28, ryusen_zamasu, 0);

buttobashi_ryusen_zamasu=entryEffectLife( spep_4+32, 924, 30, 0x80,  -1,  0,  -250,  -450); -- 流線斜め
setEffRotateKey( spep_4+32, buttobashi_ryusen_zamasu, -90);
setEffScaleKey( spep_4+32, buttobashi_ryusen_zamasu, 1.5, 2.0);
setEffAlphaKey( spep_4+32, buttobashi_ryusen_zamasu, 255);


spep_5=spep_4+50;
entryFade( spep_5-10, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 50, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setMoveKey(   spep_5-1,  1,  -150, 250, 0);
setScaleKey(   spep_5-1,   1, 0.7, 0.7);

setEffAlphaKey( spep_5, kick, 255);
setEffAlphaKey( spep_5+1, kick, 0);

setRotateKey( spep_5+1,  1,  60 );

------------------------------------------------------
--ロゼの一撃(256F)
------------------------------------------------------
spep_6=spep_5;
--[[
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 256, 0, 10, 10, 10, 180);          -- ベース暗め　背景
]]
setMoveKey(   spep_6,  1,  100, -200, 0);
setScaleKey(   spep_6,   1, 2.7, 2.7);


mawari = entryEffect(  spep_6+30,   SP_06e,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_6+30, mawari, 1.0, 1.0);


ryusen_itigeki=entryEffectLife( spep_6, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_6, ryusen_itigeki, 225);
setEffScaleKey( spep_6, ryusen_itigeki, 1.6, 1.6);
setEffAlphaKey( spep_6, ryusen_itigeki, 255);


--setMoveKey(   spep_6+30,  1,  -100, 50, 0, 0);
setMoveKey(   spep_6+30,  1,  -70, 30, 0, 0);
setScaleKey(   spep_6+30,   1, 1.5, 1.5);

playSe( spep_6+30, 43);

setMoveKey(   spep_6+50,  1, -100, 50, 0);


------------------------------------------------------
--顔カットイン(256F)
------------------------------------------------------

spep_7=spep_6+50;
entryFade( spep_7-5, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_7, 1, 0);
playSe( spep_7, SE_04);
setEffRotateKey( spep_7, ryusen_itigeki, 225);
setEffRotateKey( spep_7+1, ryusen_itigeki, 0);
--setMoveKey(   spep_7,  1,  -150, 50, 0);
setMoveKey(   spep_7,  1,  -70, 30, 0);
setScaleKey(   spep_7,   1, 1.5, 1.5);


serifu= entryEffect(  spep_7,   SP_07e,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_7, serifu, 1.0, 1.0);


shuchusenrose=entryEffectLife( spep_7, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusenrose, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusenrose, 255);

--speff = entryEffect(  spep_7,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct4 = entryEffectLife( spep_7, 190006, 90, 0x100, -1, 0, -50, 450);    -- ゴゴゴゴ
setEffShake(spep_7, ct4, 40, 28);
setEffScaleKey(spep_7, ct4, -0.8, 0.8);
setEffRotateKey(spep_7, ct4, 10);
setEffAlphaKey( spep_7, ct4, 255);



spep_8=spep_7+95;

entryFade( spep_8-5, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 65, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_8, shuchusen_rose, 255);
setEffAlphaKey( spep_8+1, shuchusen_rose, 0);

------------------------------------------------------
--挟み撃ち(256F)
------------------------------------------------------
setDisp( spep_8, 1, 1);
setMoveKey(   spep_8,  1,  0, 0, 0);
setScaleKey(   spep_8,   1, 1.7, 1.7);
setRotateKey( spep_8,  1,  60 );


haikei = entryEffect(  spep_8,   SP_10,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_8, haikei, 1.0, 1.0);
shuchusenhasami=entryEffectLife( spep_8, 906, 40, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusenhasami, 1.5, 1.5);
setEffAlphaKey( spep_8, shuchusenhasami, 255);

ryuusenhasami=entryEffectLife( spep_8, 921, 40, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, ryuusenhasami, 1.5, 1.5);
setEffAlphaKey( spep_8, ryuusenhasami, 180);
setEffRotateKey( spep_8, ryuusenhasami, -135);
--setEffRotateKey( spep_8, ryuusenhasami, -45);

playSe( spep_8, 1018);

playSe( spep_8+10, 1018);

zamasukiri = entryEffect(  spep_8,   SP_08e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_8, zamasukiri, 1.0, 1.0);


rozekihi = entryEffect(  spep_8,   SP_09e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_8, rozekihi, 1.0, 1.0);

--setShake(spep_8+15,6,15);
setQuake(spep_8+15,20,15);

------------------------------------------------------
--最後(256F)
------------------------------------------------------

spep_9=spep_8+40;
entryFade( spep_9-5, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 65, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setMoveKey(   spep_9,  1,  0, 0, 0);
setScaleKey(   spep_9,   1, 1.7, 1.7);
setRotateKey( spep_9,  1,  60 );

setEffAlphaKey( spep_9, shuchusenhasami, 255);
setEffAlphaKey( spep_9+1, shuchusenhasami, 0);
setDisp( spep_9, 1, 0);


zangeki = entryEffect(  spep_9,   SP_11,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_9, zangeki, 1.0, 1.0);
playSe( spep_9, 1032);
playSe( spep_9+10, 1032);


spep_10=spep_9+70;

entryFade( spep_10-15, 13, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_10, 0, 65, 0, 0, 0, 0, 255);          -- ベース暗め　背景


jinnwari = entryEffect(  spep_10,   SP_12e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_10, jinnwari, 1.0, 1.0);

playSe( spep_10, SE_10);


shuchusen_last=entryEffectLife( spep_10+30, 906, 130, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_10+30, shuchusen_last, 1.5, 1.5);
setEffAlphaKey( spep_10+30, shuchusen_last, 255);


-- ダメージ表示
dealDamage(spep_10+16);

--entryFade( spep_10+150, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_10+146);

end

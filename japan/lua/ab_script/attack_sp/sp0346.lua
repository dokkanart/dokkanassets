

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
--[[
SP_01 = 150346;
SP_02 = 150347;
SP_03 = 150348;
SP_03 = 150349;
SP_04 = 150350;
SP_05 = 150351;
SP_05e = 150352;
SP_06 = 150353;
]]

SP_01 = 150368;
SP_02 = 150369;
SP_03 = 150370;
SP_04 = 150371;
SP_05 = 150372;
SP_06 = 150373;
SP_01e = 150374;
SP_02e = 150375;
SP_03e = 150376;
SP_05e = 150377;
SP_07 = 150390;

multi_frm = 2;

--changeAnime( 0, 0, 0);                       -- 立ち
--changeAnime( 0, 1, 0);                       -- 立ち

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);

setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);


------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

entryFadeBg( 4, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

entryFade( 0, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   4,   0,    0, -54,   0);

--test = entryEffect(  0,   SP_01,   0,  -1,  0,  0,  0);   -- カード

--setQuake(4,90,3);

setDisp( 4, 0, 0);
changeAnime( 4, 0, 17);                       -- 立ち
setVisibleUI( 4, 0);
setMoveKey(   4,   0,    0, -54,   0);
setMoveKey(   4,   1,    0, -54,   0);

--playSe( 4, SE_01);


dedashi = entryEffect(  4,   SP_01,   0x80,  -1,  0,  0,  0);   -- 
setEffMoveKey( 4, dedashi, 0,  0,  0);
setEffMoveKey( 5, dedashi, 0,  0,  0);
setEffScaleKey( 4, dedashi, 1.0, 1.0);
setEffAlphaKey( 4, dedashi, 255);



shuchusentame=entryEffectLife( 4, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 4, shuchusentame, 1.5, 1.5);
setEffAlphaKey( 4, shuchusentame, 255);

--気を貯める
playSe( 4, 1026);
playSe( 24, 1026);
--playSe( 50, SE_02);
--playSe( 80, SE_02);

--entryFade( 62-26, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[-- ** エフェクト等 ** --
aura = entryEffectLife(  34,   341, 140, 0x100,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( 34, aura, 2.0, 2.0);
setShakeChara( 34, 0, 136, 8);
setEffScaleKey( 84, aura, 2.5, 2.5);
setScaleKey(   84,   0, 1.6, 1.6);
]]

------------------------------------------------------
-- 顔カットイン(90F)
------------------------------------------------------
spep_1=90;

entryFade( spep_1-5, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setMoveKey(   spep_1,   0,    0, -54,   0);
setQuake(spep_1,100,3);


ryuusentame=entryEffectLife( spep_1, 921, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, ryuusentame, 1.7, 1.7);
setEffAlphaKey( spep_1, ryuusentame, 255);
setEffRotateKey(spep_1, ryuusentame, -130);


tame = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   -- 
setEffMoveKey( spep_1, tame, 0,  0,  0);

setEffScaleKey( spep_1, tame, 1.0, 1.0);
setEffAlphaKey( spep_1, tame, 255);

setEffShake(spep_1, tame, 100, 8);

shuchusentame=entryEffectLife( spep_1, 906, 100, 0x100,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_1, shuchusentame, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusentame, 255);




speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_1, SE_04);
playSe( spep_1+30, SE_03);
playSe( spep_1+50, SE_03);
playSe( spep_1+70, SE_03);
playSe( spep_1+90, SE_03);
-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+30, 190006, 39, 0x100, -1, 0, -200, 500);    -- ゴゴゴゴ
setEffShake(spep_1+30, ctgogo, 40, 8);
setEffScaleKey(spep_1+30, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_1+30, ctgogo, 10);
setEffAlphaKey( spep_1+30, ctgogo, 255);


------------------------------------------------------
-- タックル(80F)
------------------------------------------------------
spep_2=spep_1+100;

entryFade( spep_2-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
--ため(100F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-25, 10, 15, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setQuake(spep_3,90,3);

ryuusenutu=entryEffectLife( spep_3, 921, 90, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, ryuusenutu, 1.7, 1.7);
setEffAlphaKey( spep_3, ryuusenutu, 255);
setEffRotateKey(spep_3, ryuusenutu, -130);

utu = entryEffect(  spep_3,   SP_03,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, utu, 1.0, 1.0);
setEffAlphaKey( spep_3, utu, 255);

playSe( spep_3+5, SE_06);

shuchusenutu=entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusenutu, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenutu, 255);


-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3, 10012, 90, 0, -1, 0, 200, 300); -- ズオッ

setEffShake(spep_3, ctzuo, 90, 20);
setEffRotateKey( spep_3, ctzuo, 30);
setEffAlphaKey(spep_3+8, ctzuo, 255);
setEffAlphaKey(spep_3+80, ctzuo, 255);
setEffAlphaKey(spep_3+90, ctzuo, 0);
setEffScaleKey(spep_3, ctzuo, 0.0, 0.0);
setEffScaleKey(spep_3+12, ctzuo, 3.0, 3.0);
setEffScaleKey(spep_3+32, ctzuo, 3.0, 3.0);
setEffScaleKey(spep_3+79, ctzuo, 3.0, 3.0);
setEffScaleKey(spep_3+80, ctzuo, 6.0, 6.0);
setEffScaleKey(spep_3+90, ctzuo, 6.0, 6.0);
setEffMoveKey(spep_3+90, ctzuo, 250, 350,0);

--entryFade( spep_3+20, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--[[




playSe( spep_3+10, 1021);

shuchusentame=entryEffectLife( spep_3, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusentame, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusentame, 255);


ryuusennkamekame= entryEffectLife( spep_3, 921, 160, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_3, ryuusennkamekame, 1.6, 1.6);
setEffAlphaKey( spep_3, ryuusennkamekame, 255);
setEffRotateKey(spep_3, ryuusennkamekame, -90);
]]
------------------------------------------------------
-- 被弾(90F)
------------------------------------------------------
spep_4=spep_3+90;

entryFade( spep_4-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
--setQuake(spep_4,120,8);
--setShakeChara( spep_4, 1, 20, 8);
setQuake(spep_4,40,3);
--setQuake(spep_4,180,3);

setEffAlphaKey( spep_4-1, ryuusenutu, 255);
setEffAlphaKey( spep_4-1, shuchusenutu, 255);
setEffAlphaKey( spep_4, ryuusenutu, 0);
setEffAlphaKey( spep_4, shuchusenutu, 0);

ryuusenndane= entryEffectLife( spep_4, 921, 80, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, ryuusenndane, 1.6, 1.6);
setEffAlphaKey( spep_4, ryuusenndane, 255);
setEffRotateKey(spep_4, ryuusenndane, -150);



ataru = entryEffect(  spep_4,   SP_04,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_4, ataru, 1.0, 1.0);
setEffAlphaKey( spep_4, ataru, 255);



shuchusenatari=entryEffectLife( spep_4, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusenatari, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenatari, 255);

-- 書き文字エントリー
ctzudo = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ctzudo, 99, 20);
setEffScaleKey( spep_4, ctzudo, 3, 3);
setEffRotateKey(spep_4, ctzudo, 70);
setEffAlphaKey(spep_4, ctzudo, 255);
setEffAlphaKey(spep_4+79, ctzudo, 255);
setEffAlphaKey(spep_4+80, ctzudo, 0);

playSe( spep_4+0, 1022);

changeAnime(  spep_4+9, 1, 102); 
setDisp( spep_4+10, 1, 1);

setScaleKey(   spep_4,   1, 1.8, 1.8);
setMoveKey(   spep_4,   1,    1000, -2000,   0);
--setMoveKey(   spep_4,   1,    1000, -2000,   0);
setScaleKey(   spep_4+10,   1, 1.8, 1.8);
setMoveKey(   spep_4+10,   1,    1000, -2000,   0);
--setMoveKey(   spep_4+10,   1,    1000, -2000,   0);

setScaleKey(   spep_4+20,   1, 1.8, 1.8);
setMoveKey(   spep_4+20,   1,    250, -200,   0);
--setMoveKey(   spep_4+20,   1,    200, -150,   0);
setShakeChara( spep_4+20, 1, 60,  20);

--changeAnime( spep_4+20, 1, 107);                       -- 溜め!
--playSe( spep_4+20, 1046);

entryFade( spep_4+70, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ryuusenyoko= entryEffectLife( spep_4+80, 920, 100, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_4+80, ryuusenyoko, 1.6, 1.6);
setEffAlphaKey( spep_4+80, ryuusenyoko, 255);
setEffRotateKey(spep_4+80, ryuusenyoko, 0);

shuchusenatari=entryEffectLife( spep_4+80, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+80, shuchusenatari, 1.5, 1.5);
setEffAlphaKey( spep_4+80, shuchusenatari, 255);

setScaleKey(   spep_4+30,   1, 1.6, 1.6);
setMoveKey(   spep_4+30,   1,    250, -200,   0);

--setMoveKey(   spep_4+79,   1,    250, -200,   0);
playSe( spep_4+80, SE_06);
changeAnime(  spep_4+80, 1, 104); 
setShakeChara( spep_4+80, 1, 100,  20);
setScaleKey(   spep_4+80,   1, 1.6, 1.6);
setMoveKey(   spep_4+80,   1,    250, -200,   0);

--setQuake(spep_4+80,160,8);
--setRotateKey( spep_4+80,  1,  30 );
setScaleKey(   spep_4+80+1,   1, 1.7, 1.7);
--setMoveKey(   spep_4+80+1,   1,    100, -100,   0);

setMoveKey(   spep_4+80+2,   1,    -1000, -54,   0);
setMoveKey(   spep_4+90,   1,    -1000, -54,   0);
--setMoveKey(   spep_4+80+1,   1,    -2000, -54,   0);
--setMoveKey(   spep_4+90,   1,    -2000, -54,   0);
--84fから入ってくるので前倒し

setMoveKey(   spep_4+105,   1,    50, -54,   0);
setScaleKey(   spep_4+105,   1, 1.7, 1.7);
changeAnime(  spep_4+110, 1, 108); 
--setMoveKey(   spep_4+120,   1,    50, -54,   0);
--setScaleKey(   spep_4+120,   1, 1.7, 1.7);
--changeAnime(  spep_4+128, 1, 108); 
--playSe( spep_4+122, 1022);
playSe( spep_4+128, 1018);
--148fから吹っ飛ぶ
setMoveKey(   spep_4+133,   1,    50, -54,   0);

setMoveKey(   spep_4+138,   1,    100, -54,   0);


setMoveKey(   spep_4+145,   1,    2000, -54,   0);
setScaleKey(   spep_4+145,   1, 1.7, 1.7);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 410; --エンドフェイズのフレーム数を置き換える

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
-- 追撃
------------------------------------------------------
spep_5=spep_4+180;


entryFade( spep_5-5, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
changeAnime( spep_5, 1, 102);                       -- 溜め!
setDisp( spep_5+1, 1, 0);
playSe( spep_5, SE_06);
setQuake(spep_5,160,3);


ryuusensec= entryEffectLife( spep_5, 921, 160, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_5, ryuusensec, 1.6, 1.6);
setEffAlphaKey( spep_5, ryuusensec, 255);
setEffRotateKey(spep_5, ryuusensec, -220);



yokouti = entryEffect(  spep_5,   SP_05,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_5, yokouti, 1.0, 1.0);
setEffAlphaKey( spep_5, yokouti, 255);

shuchusensec=entryEffectLife( spep_5, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusensec, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusensec, 255);

entryFade( spep_5+50, 4, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
playSe( spep_5+50, SE_07);
--[[
-- 書き文字エントリー
ctzuozuo = entryEffectLife( spep_5+40, 10012, 120, 0, -1, 0, -200, 300); -- ズオッ
setEffMoveKey(spep_5+0, ctzuo, -200, 300,0);

setEffShake(spep_5+40, ctzuozuo, 32, 20);
setEffRotateKey( spep_5+40, ctzuozuo, -30);
setEffAlphaKey(spep_5+8+40, ctzuozuo, 255);
setEffScaleKey(spep_5+40, ctzuozuo, 0.0, 0.0);
setEffScaleKey(spep_5+12+40, ctzuozuo, 3.0, 3.0);
setEffScaleKey(spep_5+32+40, ctzuozuo, 3.0, 3.0);
setEffScaleKey(spep_5+65+40, ctzuozuo, 3.0, 3.0);
setEffRotateKey( spep_5+65+40, ctzuozuo, -30);
setEffAlphaKey(spep_5+65+40, ctzuozuo, 255);

setEffAlphaKey(spep_5+75+40, ctzuozuo, 0);
setEffMoveKey(spep_5+75+40, ctzuozuo, -200, 300,0);

setEffScaleKey(spep_5+75+40, ctzuozuo, 6.0, 6.0);
setEffRotateKey( spep_5+75+40, ctzuozuo, -10);
setEffMoveKey(spep_5+75+40, ctzuozuo, 0, 350,0);
]]

-- 書き文字エントリー
ctzuozuo = entryEffectLife( spep_5+50, 10012, 50, 0, -1, 0, -200, 300); -- ズオッ
setEffShake(spep_5+50, ctzuozuo, 32, 20);
setEffRotateKey( spep_5+50, ctzuozuo, -30);
setEffAlphaKey(spep_5+8+50, ctzuozuo, 255);
setEffAlphaKey(spep_5+30+50, ctzuozuo, 255);
setEffAlphaKey(spep_5+40+50, ctzuozuo, 0);
setEffScaleKey(spep_5, ctzuozuo, 0.0, 0.0);
setEffScaleKey(spep_5+12+50, ctzuozuo, 3.5, 3.5);
setEffScaleKey(spep_5+32+50, ctzuozuo, 3.5, 3.5);
setEffScaleKey(spep_5+60+50, ctzuozuo, 6.0, 6.0);


------------------------------------------------------
-- ファサー
------------------------------------------------------
spep_6=spep_5+160;

entryFade( spep_6-45, 43, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 170, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setMoveKey(   spep_6-1,   1,    2000, -54,   0);
setQuake(spep_6,60,3);
setDisp( spep_6+1, 1, 1);
changeAnime( spep_6, 1, 108);
setRotateKey( spep_6,  1,  0 );
setRotateKey( spep_6+1,  1,  -30 );

haikei = entryEffect(  spep_6,   SP_07,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_6, haikei, 1.0, 1.0);
setEffAlphaKey( spep_6, haikei, 255);

ueuti = entryEffect(  spep_6+10,   SP_06,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_6+10, ueuti, 1.0, 1.0);
setEffAlphaKey( spep_6+10, ueuti, 255);

setShakeChara( spep_6+10, 1, 50,  20);
playSe( spep_6+10, SE_06);

setMoveKey(   spep_6,   1,    -600, -354,   0);
setScaleKey(   spep_6,   1, 2.0, 2.0);
setMoveKey(   spep_6+5,   1,    -600, -354,   0);
setScaleKey(   spep_6+15,   1, 2.0, 2.0);
setMoveKey(   spep_6+15,   1,    -100, -154,   0);

setMoveKey(   spep_6+30,   1,    0, -54,   0);
setScaleKey(   spep_6+30,   1, 2.0, 2.0);
setRotateKey( spep_6+30,  1,  -30 );
setDisp( spep_6+60, 1, 0);
setMoveKey(   spep_6+60,   1,    0, -54,   0);

playSe( spep_6+60, SE_06);
--playSe( spep_6+122, SE_09);
--[[
ryuusennue= entryEffectLife( spep_6, 920, 170, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_6, ryuusennue, 1.6, 1.6);
setEffAlphaKey( spep_6, ryuusennue, 255);
setEffRotateKey(spep_6, ryuusennue, -45);
]]
shuchusenue=entryEffectLife( spep_6+11, 906, 159, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+11, shuchusenue, 1.5, 1.5);
setEffAlphaKey( spep_6+11, shuchusenue, 255);
--setEffRotateKey(spep_5, ryuusenndane, -150);

-- 書き文字エントリー
ctzudozudo = entryEffectLife( spep_6+11, 10014, 159, 0x100, -1, 0, -150, 350); -- ズドドッ
setEffScaleKey( spep_6+11, ctzudozudo, 3, 3);
setEffRotateKey(spep_6+11, ctzudozudo, -20);
setEffAlphaKey(spep_6+11, ctzudozudo, 255);
setEffShake(spep_6+12, ctzudozudo, 168, 20);

setEffAlphaKey(spep_6+169, ctzudozudo, 255);
setEffAlphaKey(spep_6+170, ctzudozudo, 0);


------------------------------------------------------
-- 
------------------------------------------------------
spep_7=spep_6+170;
setScaleKey(   spep_7,   1, 2.0, 2.0);
setEffAlphaKey( spep_7, shuchusenue, 255);
setEffAlphaKey( spep_7, ryuusennue, 255);

--[[
entryFade( spep_7-45, 43, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景

setDisp( spep_7, 1, 1);
setMoveKey(   spep_7,   1,    0, -54,   0);
setScaleKey(   spep_7+1,   1, 1.5, 1.5);
setRotateKey( spep_7+1,  1,  -30 );


ryuusennfasa= entryEffectLife( spep_7, 920, 120, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_7, ryuusennfasa, 1.6, 1.6);
setEffAlphaKey( spep_7, ryuusennfasa, 255);
setEffRotateKey(spep_7, ryuusennfasa, -45);

shuchusenfasa=entryEffectLife( spep_7, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusenfasa, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusenfasa, 255);
]]





------------------------------------------------------
--発射(180F)
------------------------------------------------------
spep_9=spep_7;

entryFade( spep_9-15, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景


tikyuuhakai = entryEffect( spep_9, 1590,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
--setEffShake( spep_9, tikyuuhakai , 180, 8);
setEffScaleKey( spep_9, tikyuuhakai , 1.1, 1.1);
playSe( spep_9+10, SE_09);
playSe( spep_9+60, SE_10);

-- ダメージ表示
dealDamage(spep_9+66);

entryFade( spep_9+148, 8,  20, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+160);

else



-----------------------------------------
--敵側の攻撃
-----------------------------------------
entryFadeBg( 4, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

entryFade( 0, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   4,   0,    0, -54,   0);

--test = entryEffect(  0,   SP_01,   0,  -1,  0,  0,  0);   -- カード

--setQuake(4,90,3);

setDisp( 4, 0, 0);
changeAnime( 4, 0, 17);                       -- 立ち
setVisibleUI( 4, 0);
setMoveKey(   4,   0,    0, -54,   0);
setMoveKey(   4,   1,    0, -54,   0);

--playSe( 4, SE_01);


dedashi = entryEffect(  4,   SP_01,   0x80,  -1,  0,  0,  0);   -- 
setEffMoveKey( 4, dedashi, 0,  0,  0);
setEffMoveKey( 5, dedashi, 0,  0,  0);

setEffScaleKey( 4, dedashi, -1.0, 1.0);
setEffAlphaKey( 4, dedashi, 255);



shuchusentame=entryEffectLife( 4, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 4, shuchusentame, 1.5, 1.5);
setEffAlphaKey( 4, shuchusentame, 255);

--気を貯める
playSe( 4, 1026);
playSe( 24, 1026);
--playSe( 50, SE_02);
--playSe( 80, SE_02);

--entryFade( 62-26, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[-- ** エフェクト等 ** --
aura = entryEffectLife(  34,   341, 140, 0x100,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( 34, aura, 2.0, 2.0);
setShakeChara( 34, 0, 136, 8);
setEffScaleKey( 84, aura, 2.5, 2.5);
setScaleKey(   84,   0, 1.6, 1.6);
]]

------------------------------------------------------
-- 顔カットイン(90F)
------------------------------------------------------
spep_1=90;

entryFade( spep_1-5, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setMoveKey(   spep_1,   0,    0, -54,   0);
setQuake(spep_1,100,3);


ryuusentame=entryEffectLife( spep_1, 921, 100, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, ryuusentame, 1.7, 1.7);
setEffAlphaKey( spep_1, ryuusentame, 255);
setEffRotateKey(spep_1, ryuusentame, -130);


tame = entryEffect(  spep_1,   SP_02e,   0,  -1,  0,  0,  0);   -- 
setEffMoveKey( spep_1, tame, 0,  0,  0);

setEffScaleKey( spep_1, tame, 1.0, 1.0);
setEffAlphaKey( spep_1, tame, 255);

setEffShake(spep_1, tame, 100, 8);

shuchusentame=entryEffectLife( spep_1, 906, 100, 0x100,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_1, shuchusentame, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusentame, 255);

--[[


speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
playSe( spep_1, SE_04);
playSe( spep_1+30, SE_03);
playSe( spep_1+50, SE_03);
playSe( spep_1+70, SE_03);
playSe( spep_1+90, SE_03);
-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+30, 190006, 39, 0x100, -1, 0, -200, 500);    -- ゴゴゴゴ
setEffShake(spep_1+30, ctgogo, 40, 8);
setEffScaleKey(spep_1+30, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_1+30, ctgogo, 10);
setEffAlphaKey( spep_1+30, ctgogo, 255);


------------------------------------------------------
-- タックル(80F)
------------------------------------------------------
spep_2=spep_1+100;

entryFade( spep_2-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
--ため(100F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-25, 10, 15, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setQuake(spep_3,90,3);

ryuusenutu=entryEffectLife( spep_3, 921, 90, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, ryuusenutu, 1.7, 1.7);
setEffAlphaKey( spep_3, ryuusenutu, 255);
setEffRotateKey(spep_3, ryuusenutu, -130);

utu = entryEffect(  spep_3,   SP_03e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, utu, 1.0, 1.0);
setEffAlphaKey( spep_3, utu, 255);

playSe( spep_3+5, SE_06);

shuchusenutu=entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusenutu, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenutu, 255);


-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3, 10012, 90, 0, -1, 0, 200, 300); -- ズオッ

setEffShake(spep_3, ctzuo, 90, 20);
setEffRotateKey( spep_3, ctzuo, 30);
setEffAlphaKey(spep_3+8, ctzuo, 255);
setEffAlphaKey(spep_3+80, ctzuo, 255);
setEffAlphaKey(spep_3+90, ctzuo, 0);
setEffScaleKey(spep_3, ctzuo, 0.0, 0.0);
setEffScaleKey(spep_3+12, ctzuo, 3.0, 3.0);
setEffScaleKey(spep_3+32, ctzuo, 3.0, 3.0);
setEffScaleKey(spep_3+79, ctzuo, 3.0, 3.0);
setEffScaleKey(spep_3+80, ctzuo, 6.0, 6.0);
setEffScaleKey(spep_3+90, ctzuo, 6.0, 6.0);
setEffMoveKey(spep_3+90, ctzuo, 250, 350,0);

--entryFade( spep_3+20, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--[[




playSe( spep_3+10, 1021);

shuchusentame=entryEffectLife( spep_3, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusentame, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusentame, 255);


ryuusennkamekame= entryEffectLife( spep_3, 921, 160, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_3, ryuusennkamekame, 1.6, 1.6);
setEffAlphaKey( spep_3, ryuusennkamekame, 255);
setEffRotateKey(spep_3, ryuusennkamekame, -90);
]]
------------------------------------------------------
-- 被弾(90F)
------------------------------------------------------
spep_4=spep_3+90;

entryFade( spep_4-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
--setQuake(spep_4,120,8);
--setShakeChara( spep_4, 1, 20, 8);
setQuake(spep_4,40,3);
--setQuake(spep_4,180,3);

setEffAlphaKey( spep_4-1, ryuusenutu, 255);
setEffAlphaKey( spep_4-1, shuchusenutu, 255);
setEffAlphaKey( spep_4, ryuusenutu, 0);
setEffAlphaKey( spep_4, shuchusenutu, 0);

ryuusenndane= entryEffectLife( spep_4, 921, 80, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, ryuusenndane, 1.6, 1.6);
setEffAlphaKey( spep_4, ryuusenndane, 255);
setEffRotateKey(spep_4, ryuusenndane, -150);



ataru = entryEffect(  spep_4,   SP_04,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_4, ataru, 1.0, 1.0);
setEffAlphaKey( spep_4, ataru, 255);



shuchusenatari=entryEffectLife( spep_4, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusenatari, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenatari, 255);

-- 書き文字エントリー
ctzudo = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ctzudo, 99, 20);
setEffScaleKey( spep_4, ctzudo, 3, 3);
setEffRotateKey(spep_4, ctzudo, 20);
setEffAlphaKey(spep_4, ctzudo, 255);
setEffAlphaKey(spep_4+79, ctzudo, 255);
setEffAlphaKey(spep_4+80, ctzudo, 0);

playSe( spep_4+0, 1022);

changeAnime(  spep_4+9, 1, 102); 
setDisp( spep_4+10, 1, 1);

setScaleKey(   spep_4,   1, 1.8, 1.8);
setMoveKey(   spep_4,   1,    1000, -2000,   0);
--setMoveKey(   spep_4,   1,    1000, -2000,   0);
setScaleKey(   spep_4+10,   1, 1.8, 1.8);
setMoveKey(   spep_4+10,   1,    1000, -2000,   0);
--setMoveKey(   spep_4+10,   1,    1000, -2000,   0);

setScaleKey(   spep_4+20,   1, 1.8, 1.8);
setMoveKey(   spep_4+20,   1,    250, -200,   0);
--setMoveKey(   spep_4+20,   1,    200, -150,   0);
setShakeChara( spep_4+20, 1, 60,  20);

--changeAnime( spep_4+20, 1, 107);                       -- 溜め!
--playSe( spep_4+20, 1046);

entryFade( spep_4+70, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ryuusenyoko= entryEffectLife( spep_4+80, 920, 100, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_4+80, ryuusenyoko, 1.6, 1.6);
setEffAlphaKey( spep_4+80, ryuusenyoko, 255);
setEffRotateKey(spep_4+80, ryuusenyoko, 0);

shuchusenatari=entryEffectLife( spep_4+80, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+80, shuchusenatari, 1.5, 1.5);
setEffAlphaKey( spep_4+80, shuchusenatari, 255);

setScaleKey(   spep_4+30,   1, 1.6, 1.6);
setMoveKey(   spep_4+30,   1,    250, -200,   0);

--setMoveKey(   spep_4+79,   1,    250, -200,   0);
playSe( spep_4+80, SE_06);
changeAnime(  spep_4+80, 1, 104); 
setShakeChara( spep_4+80, 1, 100,  20);
setScaleKey(   spep_4+80,   1, 1.6, 1.6);
setMoveKey(   spep_4+80,   1,    250, -200,   0);

--setQuake(spep_4+80,160,8);
--setRotateKey( spep_4+80,  1,  30 );
setScaleKey(   spep_4+80+1,   1, 1.7, 1.7);
--setMoveKey(   spep_4+80+1,   1,    100, -100,   0);

setMoveKey(   spep_4+80+2,   1,    -1000, -54,   0);
setMoveKey(   spep_4+90,   1,    -1000, -54,   0);
--setMoveKey(   spep_4+80+1,   1,    -2000, -54,   0);
--setMoveKey(   spep_4+90,   1,    -2000, -54,   0);
--84fから入ってくるので前倒し

setMoveKey(   spep_4+105,   1,    50, -54,   0);
setScaleKey(   spep_4+105,   1, 1.7, 1.7);
changeAnime(  spep_4+110, 1, 108); 
--setMoveKey(   spep_4+120,   1,    50, -54,   0);
--setScaleKey(   spep_4+120,   1, 1.7, 1.7);
--changeAnime(  spep_4+128, 1, 108); 
--playSe( spep_4+122, 1022);
playSe( spep_4+128, 1018);
--148fから吹っ飛ぶ
setMoveKey(   spep_4+133,   1,    50, -54,   0);

setMoveKey(   spep_4+138,   1,    100, -54,   0);


setMoveKey(   spep_4+145,   1,    2000, -54,   0);
setScaleKey(   spep_4+145,   1, 1.7, 1.7);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 410; --エンドフェイズのフレーム数を置き換える

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
-- 追撃
------------------------------------------------------
spep_5=spep_4+180;


entryFade( spep_5-5, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
changeAnime( spep_5, 1, 102);                       -- 溜め!
setDisp( spep_5+1, 1, 0);
playSe( spep_5, SE_06);
setQuake(spep_5,160,3);


ryuusensec= entryEffectLife( spep_5, 921, 160, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_5, ryuusensec, 1.6, 1.6);
setEffAlphaKey( spep_5, ryuusensec, 255);
setEffRotateKey(spep_5, ryuusensec, -220);



yokouti = entryEffect(  spep_5,   SP_05e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_5, yokouti, 1.0, 1.0);
setEffAlphaKey( spep_5, yokouti, 255);

shuchusensec=entryEffectLife( spep_5, 906, 160, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusensec, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusensec, 255);

entryFade( spep_5+50, 4, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
playSe( spep_5+50, SE_07);
--[[
-- 書き文字エントリー
ctzuozuo = entryEffectLife( spep_5+40, 10012, 120, 0, -1, 0, -200, 300); -- ズオッ
setEffMoveKey(spep_5+0, ctzuo, -200, 300,0);

setEffShake(spep_5+40, ctzuozuo, 32, 20);
setEffRotateKey( spep_5+40, ctzuozuo, -30);
setEffAlphaKey(spep_5+8+40, ctzuozuo, 255);
setEffScaleKey(spep_5+40, ctzuozuo, 0.0, 0.0);
setEffScaleKey(spep_5+12+40, ctzuozuo, 3.0, 3.0);
setEffScaleKey(spep_5+32+40, ctzuozuo, 3.0, 3.0);
setEffScaleKey(spep_5+65+40, ctzuozuo, 3.0, 3.0);
setEffRotateKey( spep_5+65+40, ctzuozuo, -30);
setEffAlphaKey(spep_5+65+40, ctzuozuo, 255);

setEffAlphaKey(spep_5+75+40, ctzuozuo, 0);
setEffMoveKey(spep_5+75+40, ctzuozuo, -200, 300,0);

setEffScaleKey(spep_5+75+40, ctzuozuo, 6.0, 6.0);
setEffRotateKey( spep_5+75+40, ctzuozuo, -10);
setEffMoveKey(spep_5+75+40, ctzuozuo, 0, 350,0);
]]

-- 書き文字エントリー
ctzuozuo = entryEffectLife( spep_5+50, 10012, 50, 0, -1, 0, -200, 300); -- ズオッ
setEffShake(spep_5+50, ctzuozuo, 32, 20);
setEffRotateKey( spep_5+50, ctzuozuo, -30);
setEffAlphaKey(spep_5+8+50, ctzuozuo, 255);
setEffAlphaKey(spep_5+30+50, ctzuozuo, 255);
setEffAlphaKey(spep_5+40+50, ctzuozuo, 0);
setEffScaleKey(spep_5, ctzuozuo, 0.0, 0.0);
setEffScaleKey(spep_5+12+50, ctzuozuo, 3.5, 3.5);
setEffScaleKey(spep_5+32+50, ctzuozuo, 3.5, 3.5);
setEffScaleKey(spep_5+60+50, ctzuozuo, 6.0, 6.0);


------------------------------------------------------
-- ファサー
------------------------------------------------------
spep_6=spep_5+160;

entryFade( spep_6-45, 43, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 170, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setMoveKey(   spep_6-1,   1,    2000, -54,   0);
setQuake(spep_6,60,3);
setDisp( spep_6+1, 1, 1);
changeAnime( spep_6, 1, 108);
setRotateKey( spep_6,  1,  0 );
setRotateKey( spep_6+1,  1,  -30 );

haikei = entryEffect(  spep_6,   SP_07,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_6, haikei, 1.0, 1.0);
setEffAlphaKey( spep_6, haikei, 255);

ueuti = entryEffect(  spep_6+10,   SP_06,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_6+10, ueuti, 1.0, 1.0);
setEffAlphaKey( spep_6+10, ueuti, 255);

setShakeChara( spep_6+10, 1, 50,  20);
playSe( spep_6+10, SE_06);

setMoveKey(   spep_6,   1,    -600, -354,   0);
setScaleKey(   spep_6,   1, 2.0, 2.0);
setMoveKey(   spep_6+5,   1,    -600, -354,   0);
setScaleKey(   spep_6+15,   1, 2.0, 2.0);
setMoveKey(   spep_6+15,   1,    -100, -154,   0);

setMoveKey(   spep_6+30,   1,    0, -54,   0);
setScaleKey(   spep_6+30,   1, 2.0, 2.0);
setRotateKey( spep_6+30,  1,  -30 );
setDisp( spep_6+60, 1, 0);
setMoveKey(   spep_6+60,   1,    0, -54,   0);

playSe( spep_6+60, SE_06);
--playSe( spep_6+122, SE_09);
--[[
ryuusennue= entryEffectLife( spep_6, 920, 170, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_6, ryuusennue, 1.6, 1.6);
setEffAlphaKey( spep_6, ryuusennue, 255);
setEffRotateKey(spep_6, ryuusennue, -45);
]]
shuchusenue=entryEffectLife( spep_6+11, 906, 159, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+11, shuchusenue, 1.5, 1.5);
setEffAlphaKey( spep_6+11, shuchusenue, 255);
--setEffRotateKey(spep_5, ryuusenndane, -150);

-- 書き文字エントリー
ctzudozudo = entryEffectLife( spep_6+11, 10014, 159, 0x100, -1, 0, -150, 350); -- ズドドッ
setEffScaleKey( spep_6+11, ctzudozudo, 3, 3);
setEffRotateKey(spep_6+11, ctzudozudo, -50);
setEffAlphaKey(spep_6+11, ctzudozudo, 255);
setEffShake(spep_6+12, ctzudozudo, 168, 20);

setEffAlphaKey(spep_6+169, ctzudozudo, 255);
setEffAlphaKey(spep_6+170, ctzudozudo, 0);


------------------------------------------------------
-- 
------------------------------------------------------
spep_7=spep_6+170;
setScaleKey(   spep_7,   1, 2.0, 2.0);
setEffAlphaKey( spep_7, shuchusenue, 255);
setEffAlphaKey( spep_7, ryuusennue, 255);

--[[
entryFade( spep_7-45, 43, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景

setDisp( spep_7, 1, 1);
setMoveKey(   spep_7,   1,    0, -54,   0);
setScaleKey(   spep_7+1,   1, 1.5, 1.5);
setRotateKey( spep_7+1,  1,  -30 );


ryuusennfasa= entryEffectLife( spep_7, 920, 120, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_7, ryuusennfasa, 1.6, 1.6);
setEffAlphaKey( spep_7, ryuusennfasa, 255);
setEffRotateKey(spep_7, ryuusennfasa, -45);

shuchusenfasa=entryEffectLife( spep_7, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusenfasa, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusenfasa, 255);
]]





------------------------------------------------------
--発射(180F)
------------------------------------------------------
spep_9=spep_7;

entryFade( spep_9-15, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景


tikyuuhakai = entryEffect( spep_9, 1590,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
--setEffShake( spep_9, tikyuuhakai , 180, 8);
setEffScaleKey( spep_9, tikyuuhakai , 1.1, 1.1);
playSe( spep_9+10, SE_09);
playSe( spep_9+60, SE_10);

-- ダメージ表示
dealDamage(spep_9+66);

entryFade( spep_9+148, 8,  20, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+160);


end

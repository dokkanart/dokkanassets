

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
--[[
SP_01 = 150237;--ef_101
SP_02 = 150238;--ef_102
SP_02e = 150239;--ef_102e
SP_03 = 150240;--ef_103 
SP_04 = 150241;--ef_104 
SP_04e = 150256;--ef_104 
SP_05 = 150242;--ef_105 
SP_07 = 150233;--ef_07 
]]
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
--[[
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
]]
SP_01 = 150334;
SP_02 = 150335;
SP_02e = 150336;
SP_03 = 150337;
SP_04 = 150338;
SP_04e = 150339;
SP_05 = 150340;
SP_05e = 150341;
SP_06 = 150342;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 0);                       -- 立ち
setAnimeLoop( 0, 0, 1);
setAnimeLoop( 0, 1, 1);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey(   0,   0,    -100, 0,   0);
setMoveKey(   1,   1,    2000, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);


------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--test = entryEffect(  0,   SP_01,   0,  -1,  0,  0,  0);   -- カード


entryFade( 1, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 4, 0, 60, 0, 10, 10, 10, 180);          -- ベース暗め　背景
--[[
changeAnime( 4, 0, 17);                       -- 立ち
setMoveKey(   4,   0,    0, 0,   0);
setScaleKey(   4,   0, 0.5, 0.5);
]]
setDisp( 4, 0, 0);
setVisibleUI( 4, 0);

tosshin = entryEffect(  4,   SP_01,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( 4, tosshin, 1.0, 1.0);
setEffAlphaKey( 4, tosshin, 255);

playSe( 4, 1018);
--setBgScroll(0,100);



shuchusentsukkomu= entryEffectLife( 4, 906, 36, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 4, shuchusentsukkomu, 1.5, 1.5);
setEffAlphaKey( 4, shuchusentsukkomu, 255);
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);
]]

--setScaleKey(   39,   0, 2.5, 2.5);


------------------------------------------------------
-- タックル(80F)
------------------------------------------------------
spep_1=60;
entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景

ryusentosshinn = entryEffectLife( spep_1, 921, 80, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_1, ryusentosshinn, -120);
setEffScaleKey( spep_1, ryusentosshinn, 1.6, 1.6);
setEffAlphaKey( spep_1, ryusentosshinn, 255);

takkuru = entryEffect(  spep_1,   SP_02,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_1, takkuru, 1.0, 1.0);
setEffAlphaKey( spep_1, takkuru, 255);


setScaleKey(spep_1,   0, 2.5, 2.5);
setDisp( spep_1, 1, 1);
setDisp( spep_1, 0, 0);


changeAnime( spep_1+1, 1, 102);                       -- 立ち
setMoveKey(   spep_1+1,   1,    100, -100,   0);
setScaleKey(   spep_1+1,   1, 1.5, 1.5);




setMoveKey(   spep_1+19,   1,    100, -100,   0);
setScaleKey(   spep_1+19,   1, 1.4, 1.4);

entryFade( spep_1+21, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

changeAnime( spep_1+24, 1, 107);                       -- 立ち

setMoveKey(   spep_1+24,   1,    100, -100,   0);
setScaleKey(   spep_1+24,   1, 1.5, 1.5);

playSe( spep_1+24, 1009);


setMoveKey(   spep_1+48,   1,    1000, -1000,   0);
setScaleKey(   spep_1+48,   1, 2.5, 2.5);
setDisp( spep_1+48, 1, 0);


shuchusentosshin = entryEffectLife( spep_1+70, 906, 10, 0x100,  -1, 0,  200,  -200);   -- 集中線
setEffScaleKey( spep_1+70, shuchusentosshin, 1.5, 1.5);
setEffAlphaKey( spep_1+70, shuchusentosshin, 255);


--[[
setDisp( spep_1+50, 1, 0);
setMoveKey(   spep_1+50,   1,    2000, 0,   0);
setScaleKey(   spep_1+50,   1, 1.5, 1.5);
setMoveKey(   spep_1+60,   1,    200, 0,   0);
--setRotateKey( spep_1+60,  1,  0 );
changeAnime( spep_1+60, 1, 108);                       -- 立ち
setScaleKey(   spep_1+60,   1, 1.5, 1.5);
setMoveKey(   spep_1+69,   1,    200, 0,   0);
changeAnime( spep_1+70, 1, 106);                       -- 立ち
setMoveKey(   spep_1+70,   1,    200, 0,   0);
setScaleKey(   spep_1+70,   1, 1.5, 1.5);
]]

------------------------------------------------------
--ラッシュ(220F)
------------------------------------------------------
spep_2=spep_1 +80;
entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 220, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey(   spep_2,   1,    1000, -1000,   0);
setScaleKey(   spep_2,   1, 2.5, 2.5);
setEffRotateKey( spep_2+1, ryusenrose, 0);


rassyuura = entryEffect(  spep_2,   SP_03,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_2, rassyuura, 1.0, 1.0);
setEffAlphaKey( spep_2, rassyuura, 255);

rassyu = entryEffect(  spep_2,   SP_03,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_2, rassyu, 1.0, 1.0);
setEffAlphaKey( spep_2, rassyu, 255);

setMoveKey(   spep_2+1,   1,    1000, -50,   0);
setScaleKey(   spep_2+1,   1, 1.4, 1.4);
changeAnime( spep_2+1, 1, 108);  

ryusenkougeki = entryEffectLife( spep_2, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_2, ryusenkougeki, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusenkougeki, 255);
setDisp( spep_2+10, 1, 1);

setMoveKey(   spep_2+10,   1,    1000, -50,   0);

setMoveKey(   spep_2+46,   1,    100, -50,   0);
setScaleKey(   spep_2+46,   1, 1.4, 1.4);
changeAnime( spep_2+46, 1, 106); 
playSe( spep_2+45, 1009);
playSe( spep_2+56, 1009); 
playSe( spep_2+70, 1010);  
playSe( spep_2+86, 1010);  
playSe( spep_2+112, 1009); 

--[[
setEffRotateKey( spep_2+45, ryusenrose, 0);
setEffRotateKey( spep_2+56, ryusenrose, -30);
setEffRotateKey( spep_2+70, ryusenrose, 30);
setEffRotateKey( spep_2+86, ryusenrose, -30);
setEffRotateKey( spep_2+96, ryusenrose, 30);
]]
setRotateKey(spep_2+45, 1, 0);
setRotateKey(spep_2+56, 1, -60);
setRotateKey(spep_2+70, 1, 0);
setRotateKey(spep_2+86, 1, -60);
setRotateKey(spep_2+96, 1, 0);



shuchusenkougeki= entryEffectLife( spep_2+120, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+120, shuchusenkougeki, 1.5, 1.5);
setEffAlphaKey( spep_2+120, shuchusenkougeki, 255);
setMoveKey(   spep_2+140,   1,    100, -50,   0);

setScaleKey(   spep_2+140,   1, 1.4, 1.4);
changeAnime( spep_2+140, 1, 107);  
playSe( spep_2+140, 1009); 

setEffAlphaKey( spep_2+139, rassyu, 255);
setEffAlphaKey( spep_2+140, rassyu, 0);

buttobashikougeki = entryEffectLife( spep_2+140, 924, 80, 0x80,  -1,  0,  -100,  -600); -- 流線斜め
setEffRotateKey( spep_2+140, buttobashikougeki, -90);
setEffScaleKey( spep_2+140, buttobashikougeki, 2.0, 2.0);
setEffAlphaKey( spep_2+140, buttobashikougeki, 255);
playSe( spep_2+180, 1018); 

setMoveKey(   spep_2+200,   1,    500, -1000,   0);
setScaleKey(   spep_2+200,   1, 2.0, 2.0);
setDisp( spep_2+200, 1, 0);
setEffAlphaKey( spep_2+200, rassyuura, 255);

--[[
changeAnime( spep_1+24, 1, 107);                       -- 立ち

setMoveKey(   spep_1+24,   1,    100, -100,   0);
setScaleKey(   spep_1+24,   1, 1.5, 1.5);

playSe( spep_1+24, 1009);


setMoveKey(   spep_1+48,   1,    1000, -1000,   0);
setScaleKey(   spep_1+48,   1, 2.5, 2.5);
setDisp( spep_1+48, 1, 0);


shuchusentosshin = entryEffectLife( spep_1+70, 906, 10, 0x100,  -1, 0,  200,  -200);   -- 集中線
setEffScaleKey( spep_1+70, shuchusentosshin, 1.5, 1.5);
setEffAlphaKey( spep_1+70, shuchusentosshin, 255);


playSe( spep_2+30, 1018);
playSe( spep_2+60, 1018);
]]

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 70; --エンドフェイズのフレーム数を置き換える

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
--ため(100F)
------------------------------------------------------
spep_3=spep_2 +220;

entryFade( spep_3-25, 10, 15, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey(   spep_3-1,   1,    500, -1000,   0);
setScaleKey(   spep_3-1,   1, 2.0, 2.0);
setScaleKey(   spep_3,   1, 2.5, 2.5);
setMoveKey(   spep_3,   1,    0, 0,   0);

rassyu = entryEffect(  spep_3,   SP_04,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, rassyu, 1.0, 1.0);
setEffAlphaKey( spep_3, rassyu, 255);

shuchusenkougeki= entryEffectLife( spep_3, 906, 110, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusenkougeki, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenkougeki, 255);
playSe( spep_3, SE_04);
--[[
playSe( spep_3+20, SE_03);
playSe( spep_3+40, SE_03);
]]
speff = entryEffect(  spep_3,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct4 = entryEffectLife( spep_3, 190006, 100, 0x100, -1, 0,-100, 500);    -- ゴゴゴゴ
setEffShake(spep_3, ct4, 40, 28);
setEffScaleKey(spep_3, ct4, 0.8, 0.8);
setEffRotateKey(spep_3, ct4, 10);
setEffAlphaKey( spep_3, ct4, 255);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4=spep_3 +100;
entryFade( spep_4-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 180);          -- ベース暗め　背景
--[[
playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    

------------------------------------------------------
--発射(180F)
------------------------------------------------------
spep_5=spep_4 +90;
entryFade( spep_5-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 180, 0, 10, 10, 10, 180);          -- ベース暗め　背景
playSe( spep_5, SE_06);
playSe( spep_5+60, SE_07);
rassyu = entryEffect(  spep_5,   SP_05,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_5, rassyu, 1.0, 1.0);
setEffAlphaKey( spep_5, rassyu, 255);

ryusenhassya = entryEffectLife( spep_5, 921, 180, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_5, ryusenhassya, -130);
setEffScaleKey( spep_5, ryusenhassya, 1.6, 1.6);
setEffAlphaKey( spep_5, ryusenhassya, 255);

shuchusenhassya= entryEffectLife( spep_5, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusenhassya, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusenhassya, 255);


-- 書き文字エントリー
ctzuo = entryEffectLife( spep_5+20, 10012, 50, 0x100, -1, 0, 0, 450);    -- ズオッ
setEffShake(spep_5+20, ctzuo, 40, 28);
setEffScaleKey(spep_5+20, ctzuo, 1.8, 1.8);
setEffRotateKey(spep_5+20, ctzuo, 10);
setEffAlphaKey( spep_5+20, ctzuo, 255);

------------------------------------------------------
--被弾(60F)
------------------------------------------------------
spep_6=spep_5 +180;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp( spep_6, 1, 1);

setRotateKey( spep_6,  1,  30 );
setMoveKey(   spep_6,   1,    0, 0,   0);
changeAnime( spep_6, 1, 108);  
setScaleKey(   spep_6,   1, 1.5, 1.5);

rassyu = entryEffect(  spep_6,   SP_06,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_6, rassyu, 1.0, 1.0);
setEffAlphaKey( spep_6, rassyu, 255);

ryusenzamasu = entryEffectLife( spep_6, 921, 80, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_6, ryusenzamasu, 45);
setEffScaleKey( spep_6, ryusenzamasu, 1.6, 1.6);
setEffAlphaKey( spep_6, ryusenzamasu, 255);



setMoveKey(   spep_6+10,   1,    0, 0,   0);
setScaleKey(   spep_6+10,   1, 1.5, 1.5);
setMoveKey(   spep_6+40,  1,  100, -100, 0);

setDisp( spep_6+40, 1, 0);
setRotateKey( spep_6+40,  1,  30 );

playSe( spep_6+40, SE_09);
setScaleKey(   spep_6+80,   1, 2.5, 2.5);
setMoveKey(   spep_6+80,  1,  1000, -1000, 0);

-- 書き文字エントリー
ctzudodo = entryEffectLife( spep_6+0, 10014, 99, 0, -1, 0, -50, 255); -- ズドドッ
setEffShake(spep_6+0, ctzudodo, 99, 20);
setEffScaleKey( spep_6+0, ctzudodo, 2.8, 2.8);
setEffRotateKey(spep_6+0, ctzudodo, 70);
setEffAlphaKey(spep_6+0, ctzudodo, 255);
setEffAlphaKey(spep_6+60, ctzudodo, 255);
setEffAlphaKey(spep_6+80, ctzudodo, 0);



------------------------------------------------------
--ギャン(256F)
------------------------------------------------------
spep_7=spep_6 +80;
entryFade( spep_7-45, 43, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_7, 1, 0);
setRotateKey( spep_7,  1,  30 );
setScaleKey(   spep_7+1,   1, 2.5, 2.5);
setMoveKey(   spep_7+1,  1,  1000, -1000, 0);


setRotateKey( spep_7-1,  1,  -90 );
setMoveKey(   spep_7-1,  1,  0, -200, 0);

setMoveKey(   spep_7,   1,    200, -300,   0);
setScaleKey(   spep_7,   1, 2.5, 2.5);
setDisp( spep_7, 1, 0);
playSe( spep_7+8, 1024);
gyan=entryEffectLife(  spep_7,  190010,  60, 0,  -1,  0,  0,  0);   
setEffReplaceTexture( gyan, 1, 1);
setEffReplaceTexture( gyan, 2, 0);                         
setEffReplaceTexture( gyan, 5, 4);

ctgyan = entryEffectLife( spep_7+90, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_7, ctgyan, 255);
setEffScaleKey( spep_7, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_7+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_7, ctgyan, 255);
setEffAlphaKey( spep_7+60, ctgyan, 0);
setEffShake( spep_7, ctgyan, 45, 8);


------------------------------------------------------
--終了(256F)
------------------------------------------------------

spep_8=spep_7 +60;

spep_9=spep_8;

entryFade( spep_9-45, 43, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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


-- ダメージ表示
dealDamage(spep_9+116);

entryFade( spep_9+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+210);

]]
playSe( spep_9+10, SE_10);

tikyuuhakai = entryEffect( spep_9, 1906,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake( spep_9, tikyuuhakai , 180, 8);
setEffScaleKey( spep_9, tikyuuhakai , 1.1, 1.1);

-- ダメージ表示
dealDamage(spep_9+16);

--entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+100);

else



-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
--setMoveKey( 0,    0,      0,  0,   0);

entryFade( 1, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 4, 0, 60, 0, 10, 10, 10, 180);          -- ベース暗め　背景
--[[
changeAnime( 4, 0, 17);                       -- 立ち
setMoveKey(   4,   0,    0, 0,   0);
setScaleKey(   4,   0, 0.5, 0.5);
]]
setDisp( 4, 0, 0);
setVisibleUI( 4, 0);

tosshin = entryEffect(  4,   SP_01,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( 4, tosshin, 1.0, 1.0);
setEffAlphaKey( 4, tosshin, 255);

playSe( 4, 1018);
--setBgScroll(0,100);



shuchusentsukkomu= entryEffectLife( 4, 906, 36, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 4, shuchusentsukkomu, 1.5, 1.5);
setEffAlphaKey( 4, shuchusentsukkomu, 255);
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);
]]

--setScaleKey(   39,   0, 2.5, 2.5);


------------------------------------------------------
-- タックル(80F)
------------------------------------------------------
spep_1=60;
entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景

ryusentosshinn = entryEffectLife( spep_1, 921, 80, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_1, ryusentosshinn, -120);
setEffScaleKey( spep_1, ryusentosshinn, 1.6, 1.6);
setEffAlphaKey( spep_1, ryusentosshinn, 255);

takkuru = entryEffect(  spep_1,   SP_02e,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_1, takkuru, 1.0, 1.0);
setEffAlphaKey( spep_1, takkuru, 255);


setScaleKey(spep_1,   0, 2.5, 2.5);
setDisp( spep_1, 1, 1);
setDisp( spep_1, 0, 0);


changeAnime( spep_1+1, 1, 102);                       -- 立ち
setMoveKey(   spep_1+1,   1,    100, -100,   0);
setScaleKey(   spep_1+1,   1, 1.5, 1.5);




setMoveKey(   spep_1+19,   1,    100, -100,   0);
setScaleKey(   spep_1+19,   1, 1.4, 1.4);

entryFade( spep_1+21, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

changeAnime( spep_1+24, 1, 107);                       -- 立ち

setMoveKey(   spep_1+24,   1,    100, -100,   0);
setScaleKey(   spep_1+24,   1, 1.5, 1.5);

playSe( spep_1+24, 1009);


setMoveKey(   spep_1+48,   1,    1000, -1000,   0);
setScaleKey(   spep_1+48,   1, 2.5, 2.5);
setDisp( spep_1+48, 1, 0);


shuchusentosshin = entryEffectLife( spep_1+70, 906, 10, 0x100,  -1, 0,  200,  -200);   -- 集中線
setEffScaleKey( spep_1+70, shuchusentosshin, 1.5, 1.5);
setEffAlphaKey( spep_1+70, shuchusentosshin, 255);


--[[
setDisp( spep_1+50, 1, 0);
setMoveKey(   spep_1+50,   1,    2000, 0,   0);
setScaleKey(   spep_1+50,   1, 1.5, 1.5);
setMoveKey(   spep_1+60,   1,    200, 0,   0);
--setRotateKey( spep_1+60,  1,  0 );
changeAnime( spep_1+60, 1, 108);                       -- 立ち
setScaleKey(   spep_1+60,   1, 1.5, 1.5);
setMoveKey(   spep_1+69,   1,    200, 0,   0);
changeAnime( spep_1+70, 1, 106);                       -- 立ち
setMoveKey(   spep_1+70,   1,    200, 0,   0);
setScaleKey(   spep_1+70,   1, 1.5, 1.5);
]]

------------------------------------------------------
--ラッシュ(220F)
------------------------------------------------------
spep_2=spep_1 +80;
entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 220, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey(   spep_2,   1,    1000, -1000,   0);
setScaleKey(   spep_2,   1, 2.5, 2.5);
setEffRotateKey( spep_2+1, ryusenrose, 0);


rassyuura = entryEffect(  spep_2,   SP_03,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_2, rassyuura, 1.0, 1.0);
setEffAlphaKey( spep_2, rassyuura, 255);

rassyu = entryEffect(  spep_2,   SP_03,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_2, rassyu, 1.0, 1.0);
setEffAlphaKey( spep_2, rassyu, 255);

setMoveKey(   spep_2+1,   1,    1000, -50,   0);
setScaleKey(   spep_2+1,   1, 1.4, 1.4);
changeAnime( spep_2+1, 1, 108);  

ryusenkougeki = entryEffectLife( spep_2, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_2, ryusenkougeki, 1.6, 1.6);
setEffAlphaKey( spep_2, ryusenkougeki, 255);
setDisp( spep_2+10, 1, 1);

setMoveKey(   spep_2+10,   1,    1000, -50,   0);

setMoveKey(   spep_2+46,   1,    100, -50,   0);
setScaleKey(   spep_2+46,   1, 1.4, 1.4);
changeAnime( spep_2+46, 1, 106); 
playSe( spep_2+45, 1009);
playSe( spep_2+56, 1009); 
playSe( spep_2+70, 1010);  
playSe( spep_2+86, 1010);  
playSe( spep_2+112, 1009); 

--[[
setEffRotateKey( spep_2+45, ryusenrose, 0);
setEffRotateKey( spep_2+56, ryusenrose, -30);
setEffRotateKey( spep_2+70, ryusenrose, 30);
setEffRotateKey( spep_2+86, ryusenrose, -30);
setEffRotateKey( spep_2+96, ryusenrose, 30);
]]
setRotateKey(spep_2+45, 1, 0);
setRotateKey(spep_2+56, 1, -60);
setRotateKey(spep_2+70, 1, 0);
setRotateKey(spep_2+86, 1, -60);
setRotateKey(spep_2+96, 1, 0);



shuchusenkougeki= entryEffectLife( spep_2+120, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+120, shuchusenkougeki, 1.5, 1.5);
setEffAlphaKey( spep_2+120, shuchusenkougeki, 255);
setMoveKey(   spep_2+140,   1,    100, -50,   0);

setScaleKey(   spep_2+140,   1, 1.4, 1.4);
changeAnime( spep_2+140, 1, 107);  
playSe( spep_2+140, 1009); 

setEffAlphaKey( spep_2+139, rassyu, 255);
setEffAlphaKey( spep_2+140, rassyu, 0);

buttobashikougeki = entryEffectLife( spep_2+140, 924, 80, 0x80,  -1,  0,  -100,  -600); -- 流線斜め
setEffRotateKey( spep_2+140, buttobashikougeki, -90);
setEffScaleKey( spep_2+140, buttobashikougeki, 2.0, 2.0);
setEffAlphaKey( spep_2+140, buttobashikougeki, 255);
playSe( spep_2+180, 1018); 

setMoveKey(   spep_2+200,   1,    500, -1000,   0);
setScaleKey(   spep_2+200,   1, 2.0, 2.0);
setDisp( spep_2+200, 1, 0);
setEffAlphaKey( spep_2+200, rassyuura, 255);

--[[
changeAnime( spep_1+24, 1, 107);                       -- 立ち

setMoveKey(   spep_1+24,   1,    100, -100,   0);
setScaleKey(   spep_1+24,   1, 1.5, 1.5);

playSe( spep_1+24, 1009);


setMoveKey(   spep_1+48,   1,    1000, -1000,   0);
setScaleKey(   spep_1+48,   1, 2.5, 2.5);
setDisp( spep_1+48, 1, 0);


shuchusentosshin = entryEffectLife( spep_1+70, 906, 10, 0x100,  -1, 0,  200,  -200);   -- 集中線
setEffScaleKey( spep_1+70, shuchusentosshin, 1.5, 1.5);
setEffAlphaKey( spep_1+70, shuchusentosshin, 255);


playSe( spep_2+30, 1018);
playSe( spep_2+60, 1018);
]]

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 70; --エンドフェイズのフレーム数を置き換える

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
--ため(100F)
------------------------------------------------------
spep_3=spep_2 +220;

entryFade( spep_3-25, 10, 15, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey(   spep_3-1,   1,    500, -1000,   0);
setScaleKey(   spep_3-1,   1, 2.0, 2.0);
setScaleKey(   spep_3,   1, 2.5, 2.5);
setMoveKey(   spep_3,   1,    0, 0,   0);

rassyu = entryEffect(  spep_3,   SP_04e,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, rassyu, 1.0, 1.0);
setEffAlphaKey( spep_3, rassyu, 255);

shuchusenkougeki= entryEffectLife( spep_3, 906, 110, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusenkougeki, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenkougeki, 255);
playSe( spep_3, SE_04);
--[[
playSe( spep_3+20, SE_03);
playSe( spep_3+40, SE_03);
]]
--[[
speff = entryEffect(  spep_3,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
-- 書き文字エントリー
ct4 = entryEffectLife( spep_3, 190006, 100, 0x100, -1, 0,-100, 500);    -- ゴゴゴゴ
setEffShake(spep_3, ct4, 40, 28);
setEffScaleKey(spep_3, ct4, -0.8, 0.8);
setEffRotateKey(spep_3, ct4, 10);
setEffAlphaKey( spep_3, ct4, 255);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4=spep_3 +100;
entryFade( spep_4-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 180);          -- ベース暗め　背景
--[[
playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]
-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    


------------------------------------------------------
--発射(180F)
------------------------------------------------------
spep_5=spep_4 +90;
entryFade( spep_5-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 180, 0, 10, 10, 10, 180);          -- ベース暗め　背景
playSe( spep_5, SE_06);
playSe( spep_5+60, SE_07);
rassyu = entryEffect(  spep_5,   SP_05e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_5, rassyu, 1.0, 1.0);
setEffAlphaKey( spep_5, rassyu, 255);

ryusenhassya = entryEffectLife( spep_5, 921, 180, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_5, ryusenhassya, -130);
setEffScaleKey( spep_5, ryusenhassya, 1.6, 1.6);
setEffAlphaKey( spep_5, ryusenhassya, 255);

shuchusenhassya= entryEffectLife( spep_5, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusenhassya, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusenhassya, 255);


-- 書き文字エントリー
ctzuo = entryEffectLife( spep_5+20, 10012, 50, 0x100, -1, 0, 0, 450);    -- ズオッ
setEffShake(spep_5+20, ctzuo, 40, 28);
setEffScaleKey(spep_5+20, ctzuo, 1.8, 1.8);
setEffRotateKey(spep_5+20, ctzuo, 10);
setEffAlphaKey( spep_5+20, ctzuo, 255);

------------------------------------------------------
--被弾(60F)
------------------------------------------------------
spep_6=spep_5 +180;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp( spep_6, 1, 1);

setRotateKey( spep_6,  1,  30 );
setMoveKey(   spep_6,   1,    0, 0,   0);
changeAnime( spep_6, 1, 108);  
setScaleKey(   spep_6,   1, 1.5, 1.5);

rassyu = entryEffect(  spep_6,   SP_06,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_6, rassyu, 1.0, 1.0);
setEffAlphaKey( spep_6, rassyu, 255);

ryusenzamasu = entryEffectLife( spep_6, 921, 80, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_6, ryusenzamasu, 45);
setEffScaleKey( spep_6, ryusenzamasu, 1.6, 1.6);
setEffAlphaKey( spep_6, ryusenzamasu, 255);



setMoveKey(   spep_6+10,   1,    0, 0,   0);
setScaleKey(   spep_6+10,   1, 1.5, 1.5);
setMoveKey(   spep_6+40,  1,  100, -100, 0);

setDisp( spep_6+40, 1, 0);
setRotateKey( spep_6+40,  1,  30 );

playSe( spep_6+40, SE_09);
setScaleKey(   spep_6+80,   1, 2.5, 2.5);
setMoveKey(   spep_6+80,  1,  1000, -1000, 0);

-- 書き文字エントリー
ctzudodo = entryEffectLife( spep_6+0, 10014, 99, 0, -1, 0, -50, 255); -- ズドドッ
setEffShake(spep_6+0, ctzudodo, 99, 20);
setEffScaleKey( spep_6+0, ctzudodo, 2.8, 2.8);
setEffRotateKey(spep_6+0, ctzudodo, -70);
setEffAlphaKey(spep_6+0, ctzudodo, 255);
setEffAlphaKey(spep_6+60, ctzudodo, 255);
setEffAlphaKey(spep_6+80, ctzudodo, 0);



------------------------------------------------------
--ギャン(256F)
------------------------------------------------------
spep_7=spep_6 +80;
entryFade( spep_7-45, 43, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_7, 1, 0);
setRotateKey( spep_7,  1,  30 );
setScaleKey(   spep_7+1,   1, 2.5, 2.5);
setMoveKey(   spep_7+1,  1,  1000, -1000, 0);


setRotateKey( spep_7-1,  1,  -90 );
setMoveKey(   spep_7-1,  1,  0, -200, 0);

setMoveKey(   spep_7,   1,    200, -300,   0);
setScaleKey(   spep_7,   1, 2.5, 2.5);
setDisp( spep_7, 1, 0);
playSe( spep_7+8, 1024);
gyan=entryEffectLife(  spep_7,  190010,  60, 0,  -1,  0,  0,  0);   
setEffReplaceTexture( gyan, 1, 1);
setEffReplaceTexture( gyan, 2, 0);                         
setEffReplaceTexture( gyan, 5, 4);

ctgyan = entryEffectLife( spep_7+90, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_7, ctgyan, 255);
setEffScaleKey( spep_7, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_7+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_7, ctgyan, 255);
setEffAlphaKey( spep_7+60, ctgyan, 0);
setEffShake( spep_7, ctgyan, 45, 8);


------------------------------------------------------
--終了(256F)
------------------------------------------------------

spep_8=spep_7 +60;

spep_9=spep_8;

entryFade( spep_9-45, 43, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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


-- ダメージ表示
dealDamage(spep_9+116);

entryFade( spep_9+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+210);

]]
playSe( spep_9+10, SE_10);

tikyuuhakai = entryEffect( spep_9, 1906,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake( spep_9, tikyuuhakai , 180, 8);
setEffScaleKey( spep_9, tikyuuhakai , 1.1, 1.1);

-- ダメージ表示
dealDamage(spep_9+16);

--entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+100);

end

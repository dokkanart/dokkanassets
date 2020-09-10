

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

tyo = -30;
tyo2 = -40;

SP_01 = 160021;
SP_02 = 160022;
SP_03 = 160023;
SP_04 = 700;
SP_05 = 1584;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -100,   0);
setMoveKey(   1,   0,    0, -100,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   90,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  0, 0, 1);                       -- 溜め!

playSe( 0, SE_01);

playSe( 20, SE_03);
--playSe( 40, SE_03);
playSe( 60, SE_03);
--playSe( 80, SE_03);

entryFade( 85, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

setShakeChara( 0, 0,230 , 5);

speff = entryEffect(  0,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  0,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


playSe( 0, SE_04);

-- 書き文字エントリ

ct = entryEffectLife( 0, 10008, 80, 0x100, -1, 0, 190, 300);    -- ゴゴゴ・・・
setEffShake(0, ct, 40, 8);
setEffScaleKey(0, ct, 1.4, 1.4);

entryFadeBg(0, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景


spep_1 = 90;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    --playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    --playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    --playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
    -- ** 集中線 ** --
    shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
    setEffShake( spep_1 + 0, shuchusen, 90, 20 );
    
    setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
    setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
    
    setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
    setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
    
    setEffRotateKey( spep_1 + 0, shuchusen, 0 );
    setEffRotateKey( spep_1 + 90, shuchusen, 0 );
    
    setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
    setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
    
    -- ** 音 ** --
    playSe( spep_1 + 0, SE_05 );
    
    --白フェード
    entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
    
    -- ** 次の準備 ** --
    spep_2 = spep_1 + 94;

------------------------------------------------------
-- 瞬間移動(100F)
------------------------------------------------------
changeAnime( spep_2, 0, 17); 

playSe( spep_2+10, SE_03);

--setMoveKey( spep_1+60,   0,    0, -54,   0);

setDisp( spep_2+55,0, 0);

-- ** エフェクト等 ** --

setScaleKey(  spep_2,   0, 2.0, 2.0);
setScaleKey(  spep_2+55,   0, 2.0, 2.0);

entryEffectLife( spep_2, 920, 70, 0x80, -1, 0, 0, 0);--流線
syunkan = entryEffect( spep_2+55, SP_04, 0x40+0x80,  0, 300,  0, 0);

entryFadeBg(spep_2, 0, 70, 0, 10, 10, 10, 180);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 236; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+8,   0,    0, -100,   0);
setMoveKey(   SP_dodge+9,   0,    0, -1000,   0);

endPhase(SP_dodge+10);
do return end
else end
playSe( spep_2+55, 37);

entryFade( spep_2+65, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+70;

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

setDisp( spep_3, 1, 1);

changeAnime( spep_3, 1, 100); 
changeAnime( spep_3+20, 1, 108); 

setRotateKey( spep_3+95, 1, 100); 
--setRotateKey( spep_3+230, 1, 100); 


setMoveKey(  spep_3,  1, 500,  0,   -250);
setMoveKey(  spep_3+20,  1, 200,  0,   -250);
setMoveKey(  spep_3+40,  1, 600,  0,   -250);
setMoveKey(  spep_3+90,  1, 100,  0,   -250);
setMoveKey(  spep_3+94,  1, 100,  0,   -250);
setMoveKey(  spep_3+95,  1, 50,  0,   -250);
setMoveKey(  spep_3+115,  1, 50,  165,   -250);
setMoveKey(  spep_3+135,  1, 50,  0,   -250);
setMoveKey(  spep_3+140,  1, 50,  0,   -250);
setMoveKey(  spep_3+160,  1, 100,  -800,   -250);
setMoveKey(  spep_3+175,  1, 100,  -800,   -250);
setMoveKey(  spep_3+178,  1, -600,  600,   -250);
--setMoveKey(  spep_3+230,  1, 0,  600,   -300);

playSe( spep_3, SE_07);

-- ** エフェクト等 ** --

shuchusen1 = entryEffectLife( spep_3, 906, 175, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen1, 1.5, 1.5);

ryusen1 = entryEffectLife( spep_3+20, 920, 245, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey(spep_3,ryusen1,1.5,1.5);
setEffRotateKey(spep_3,ryusen1,0);
setEffRotateKey(spep_3+94,ryusen1,0);
setEffRotateKey(spep_3+95,ryusen1,-100);

panti = entryEffect( spep_3,SP_01,0,-1,0,0,0);--ベジータパンチ
setEffScaleKey( spep_3, panti, 0.8, 0.8);
setEffScaleKey( spep_3+90, panti, 0.8, 0.8);
setEffScaleKey( spep_3+91, panti, 1, 1);

playSe( spep_3+20,1009);-- パンチ音
playSe( spep_3+100,1009);-- パンチ音2
playSe( spep_3+140,1025);-- パンチ音3

entryFadeBg( spep_3, 0, 175, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


setDamage( spep_3+20, 1, 0);  -- ダメージ振動等
setDamage( spep_3+100, 1, 0);  -- ダメージ振動等
setDamage( spep_3+120, 1, 0);  -- ダメージ振動等

--setShakeChara( spep_6, 0, 100, 10);
--setShakeChara( spep_6, 1, 100, 10);

entryFade( spep_3+170, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー

ct = entryEffectLife( spep_3+135, 10021, 20, 0, -1, 0, 50, 300); -- バゴォッ
--setEffShake(spep_3, ct, 32, 5);
setEffAlphaKey( spep_3+135, ct, 255);
setEffAlphaKey( spep_3+145, ct, 255);
setEffScaleKey( spep_3+135, ct, 0.0, 0.0);
setEffScaleKey( spep_3+145, ct, 2, 2);
--setEffScaleKey( spep_3+140, ct, 3, 3);
setEffShake( spep_3+135 , ct , 80 , 20);


spep_4 = spep_3+180; --211 260

removeAllEffect (spep_3+175);

------------------------------------------------------
-- 激烈ラッシュ(110F)
------------------------------------------------------

setDisp( spep_4, 1, 1);

setMoveKey(  spep_4,  1, -600,  600,   -250);
setMoveKey(  spep_4+20,  1, 0,  -350,   -250);
setMoveKey(  spep_4+64,  1, 0,  -100,   -250);
setMoveKey(  spep_4+70,  1, 50,  -400,   -250);
setMoveKey(  spep_4+220,  1, 50,  -400,   -250);

changeAnime( spep_4, 1, 108); 
changeAnime( spep_4+40, 1, 106); 
changeAnime( spep_4+64, 1, 108); 
--changeAnime( spep_4+100, 1, 108); 
--changeAnime( spep_4+220, 1, 108); 


setRotateKey( spep_4, 1, 90); 
setRotateKey( spep_4+39, 1, 90); 
setRotateKey( spep_4+40, 1, 0); 
setRotateKey( spep_4+63, 1, 0); 
setRotateKey( spep_4+64, 1, 90); 
--setRotateKey( spep_4+61, 1, 90); 
--setRotateKey( spep_4+195, 1, 90); 


-- ** エフェクト等 ** --

playSe( spep_4+40,1014);--激突音1
playSe( spep_4+64,1025);--パンチ音
playSe( spep_4+70,1033);-- 激突音2

playSe( spep_4+100,1009);-- パンチ音
playSe( spep_4+110,1009);-- パンチ音
playSe( spep_4+120,1009);-- パンチ音
playSe( spep_4+130,1009);-- パンチ音
playSe( spep_4+140,1009);-- パンチ音
playSe( spep_4+150,1009);-- パンチ音
playSe( spep_4+160,1009);-- パンチ音
playSe( spep_4+170,1009);-- パンチ音
playSe( spep_4+180,1009);-- パンチ音
playSe( spep_4+190,1009);-- パンチ音

setShakeChara( spep_4+70, 1 , 125 , 5);

shuchusen2 = entryEffectLife( spep_4+65, 906, 135, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_4+65, shuchusen2, 1.5, 1.5);

ryusen2 = entryEffectLife( spep_4, 920, 20, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey(spep_4,ryusen2,2,2);
setEffRotateKey(spep_4,ryusen2,-120);
setEffAlphaKey(spep_4,ryusen2,255);
setEffAlphaKey(spep_4+20,ryusen2,0);

entryEffect( spep_4,SP_02,0x100,-1,0,0,0);
entryEffect( spep_4,SP_03,0x80,-1,0,0,0);

entryFadeBg( spep_4, 0, 230, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4+70, 10014, 195, 0, -1, 0, 100, 255); -- ズドドッ
setEffShake(spep_4+70, ct, 99, 20);
setEffScaleKey( spep_4+70, ct, 2.4, 2.4);
setEffRotateKey(spep_4+70, ct, 70);
setEffAlphaKey(spep_4+70, ct, 255);
--setEffAlphaKey(spep_4+175, ct, 255);
setEffAlphaKey(spep_4+195, ct, 255);
setEffShake(spep_4+70 , ct , 195 , 8);

entryFade( spep_4+195, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+200;


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_5,SP_05,0,-1,0,0,0);

setDisp( spep_5, 1, 0);

-- 書き文字エントリー

playSe( spep_5, SE_10);
--playSe( spep_2+4, 1022);

-- ダメージ表示
dealDamage(spep_5+17);

--entryFade( spep_5+190, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+200 -10);

else

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  0, 0, 1);                       -- 溜め!

playSe( 0, SE_01);

playSe( 20, SE_03);
--playSe( 40, SE_03);
playSe( 60, SE_03);
--playSe( 80, SE_03);

entryFade( 85, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

setShakeChara( 0, 0,230 , 5);
--[[
speff = entryEffect(  0,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  0,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--


playSe( 0, SE_04);

-- 書き文字エントリ

ct = entryEffectLife( 0, 10008, 80, 0x100, -1, 0, 190, 300);    -- ゴゴゴ・・・
setEffShake(0, ct, 40, 8);
setEffScaleKey(0, ct, 1.4, 1.4);

entryFadeBg(0, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景


spep_1 = 90;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    --playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    --playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    --playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
    -- ** 集中線 ** --
    shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
    setEffShake( spep_1 + 0, shuchusen, 90, 20 );
    
    setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
    setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
    
    setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
    setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
    
    setEffRotateKey( spep_1 + 0, shuchusen, 0 );
    setEffRotateKey( spep_1 + 90, shuchusen, 0 );
    
    setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
    setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
    
    -- ** 音 ** --
    playSe( spep_1 + 0, SE_05 );
    
    --白フェード
    entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
    
    -- ** 次の準備 ** --
    spep_2 = spep_1 + 94;

------------------------------------------------------
-- 瞬間移動(100F)
------------------------------------------------------
changeAnime( spep_2, 0, 17); 

playSe( spep_2+10, SE_03);

--setMoveKey( spep_1+60,   0,    0, -54,   0);

setDisp( spep_2+55,0, 0);

-- ** エフェクト等 ** --

setScaleKey(  spep_2,   0, 2.0, 2.0);
setScaleKey(  spep_2+55,   0, 2.0, 2.0);

entryEffectLife( spep_2, 920, 70, 0x80, -1, 0, 0, 0);--流線
syunkan = entryEffect( spep_2+55, SP_04, 0x40+0x80,  0, 300,  0, 0);

entryFadeBg(spep_2, 0, 70, 0, 10, 10, 10, 180);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 236; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+8,   0,    0, -100,   0);
setMoveKey(   SP_dodge+9,   0,    0, -1000,   0);

endPhase(SP_dodge+10);
do return end
else end

playSe( spep_2+55, 37);
entryFade( spep_2+65, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+70;

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

setDisp( spep_3, 1, 1);

changeAnime( spep_3, 1, 100); 
changeAnime( spep_3+20, 1, 108); 

setRotateKey( spep_3+95, 1, 100); 
--setRotateKey( spep_3+230, 1, 100); 


setMoveKey(  spep_3,  1, 500,  0,   -250);
setMoveKey(  spep_3+20,  1, 200,  0,   -250);
setMoveKey(  spep_3+40,  1, 600,  0,   -250);
setMoveKey(  spep_3+90,  1, 100,  0,   -250);
setMoveKey(  spep_3+94,  1, 100,  0,   -250);
setMoveKey(  spep_3+95,  1, 50,  0,   -250);
setMoveKey(  spep_3+115,  1, 50,  165,   -250);
setMoveKey(  spep_3+135,  1, 50,  0,   -250);
setMoveKey(  spep_3+140,  1, 50,  0,   -250);
setMoveKey(  spep_3+160,  1, 100,  -800,   -250);
setMoveKey(  spep_3+175,  1, 100,  -800,   -250);
setMoveKey(  spep_3+178,  1, -600,  600,   -250);
--setMoveKey(  spep_3+230,  1, 0,  600,   -300);

playSe( spep_3, SE_07);

-- ** エフェクト等 ** --

shuchusen1 = entryEffectLife( spep_3, 906, 175, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen1, 1.5, 1.5);

ryusen1 = entryEffectLife( spep_3+20, 920, 245, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey(spep_3,ryusen1,1.5,1.5);
setEffRotateKey(spep_3,ryusen1,0);
setEffRotateKey(spep_3+94,ryusen1,0);
setEffRotateKey(spep_3+95,ryusen1,-100);

panti = entryEffect( spep_3,SP_01,0,-1,0,0,0);--ベジータパンチ
setEffScaleKey( spep_3, panti, 0.8, 0.8);
setEffScaleKey( spep_3+90, panti, 0.8, 0.8);
setEffScaleKey( spep_3+91, panti, 1, 1);

playSe( spep_3+20,1009);-- パンチ音
playSe( spep_3+100,1009);-- パンチ音2
playSe( spep_3+140,1025);-- パンチ音3

entryFadeBg( spep_3, 0, 175, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


setDamage( spep_3+20, 1, 0);  -- ダメージ振動等
setDamage( spep_3+100, 1, 0);  -- ダメージ振動等
setDamage( spep_3+120, 1, 0);  -- ダメージ振動等

--setShakeChara( spep_6, 0, 100, 10);
--setShakeChara( spep_6, 1, 100, 10);

entryFade( spep_3+170, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー

ct = entryEffectLife( spep_3+135, 10021, 20, 0, -1, 0, 50, 300); -- バゴォッ
--setEffShake(spep_3, ct, 32, 5);
setEffAlphaKey( spep_3+135, ct, 255);
setEffAlphaKey( spep_3+145, ct, 255);
setEffScaleKey( spep_3+135, ct, 0.0, 0.0);
setEffScaleKey( spep_3+145, ct, 2, 2);
--setEffScaleKey( spep_3+140, ct, 3, 3);
setEffShake( spep_3+135 , ct , 80 , 20);


spep_4 = spep_3+180; --211 260

removeAllEffect (spep_3+175);

------------------------------------------------------
-- 激烈ラッシュ(110F)
------------------------------------------------------

setDisp( spep_4, 1, 1);

setMoveKey(  spep_4,  1, -600,  600,   -250);
setMoveKey(  spep_4+20,  1, 0,  -350,   -250);
setMoveKey(  spep_4+64,  1, 0,  -100,   -250);
setMoveKey(  spep_4+70,  1, 50,  -400,   -250);
setMoveKey(  spep_4+220,  1, 50,  -400,   -250);

changeAnime( spep_4, 1, 108); 
changeAnime( spep_4+40, 1, 106); 
changeAnime( spep_4+64, 1, 108); 
--changeAnime( spep_4+100, 1, 108); 
--changeAnime( spep_4+220, 1, 108); 


setRotateKey( spep_4, 1, 90); 
setRotateKey( spep_4+39, 1, 90); 
setRotateKey( spep_4+40, 1, 0); 
setRotateKey( spep_4+63, 1, 0); 
setRotateKey( spep_4+64, 1, 90); 
--setRotateKey( spep_4+61, 1, 90); 
--setRotateKey( spep_4+195, 1, 90); 


-- ** エフェクト等 ** --

playSe( spep_4+40,1014);--激突音1
playSe( spep_4+64,1025);--パンチ音
playSe( spep_4+70,1033);-- 激突音2

playSe( spep_4+100,1009);-- パンチ音
playSe( spep_4+110,1009);-- パンチ音
playSe( spep_4+120,1009);-- パンチ音
playSe( spep_4+130,1009);-- パンチ音
playSe( spep_4+140,1009);-- パンチ音
playSe( spep_4+150,1009);-- パンチ音
playSe( spep_4+160,1009);-- パンチ音
playSe( spep_4+170,1009);-- パンチ音
playSe( spep_4+180,1009);-- パンチ音
playSe( spep_4+190,1009);-- パンチ音

setShakeChara( spep_4+70, 1 , 125 , 5);

shuchusen2 = entryEffectLife( spep_4+65, 906, 135, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_4+65, shuchusen2, 1.5, 1.5);

ryusen2 = entryEffectLife( spep_4, 920, 20, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey(spep_4,ryusen2,2,2);
setEffRotateKey(spep_4,ryusen2,-120);
setEffAlphaKey(spep_4,ryusen2,255);
setEffAlphaKey(spep_4+20,ryusen2,0);

entryEffect( spep_4,SP_02,0x100,-1,0,0,0);
entryEffect( spep_4,SP_03,0x80,-1,0,0,0);

entryFadeBg( spep_4, 0, 230, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4+70, 10014, 195, 0, -1, 0, 100, 255); -- ズドドッ
setEffShake(spep_4+70, ct, 99, 20);
setEffScaleKey( spep_4+70, ct, 2.4, 2.4);
setEffRotateKey(spep_4+70, ct, -70);
setEffAlphaKey(spep_4+70, ct, 255);
--setEffAlphaKey(spep_4+175, ct, 255);
setEffAlphaKey(spep_4+195, ct, 255);
setEffShake(spep_4+70 , ct , 195 , 8);

entryFade( spep_4+195, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+200;


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_5,SP_05,0,-1,0,0,0);

setDisp( spep_5, 1, 0);

-- 書き文字エントリー

playSe( spep_5, SE_10);
--playSe( spep_2+4, 1022);

-- ダメージ表示
dealDamage(spep_5+17);

--entryFade( spep_5+190, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+210 -20);

end

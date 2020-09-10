--超サイヤ人トランクス(未来)_ファイナルホープスラッシュ

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

tyo = -40;
tyo2 = -60;

SP_01 = 150139;--元気玉モドキ
SP_02 = 150140;--トランクス突撃
SP_03 = 150141;--突きのエフェクト
SP_04 = 150142;--斬り上げ(敵前面)
SP_05 = 150143;--斬り上げ(敵背面)
SP_06 = 150144;--トランクス突撃(敵側)
SP_07 = 150145;--斬り上げ(敵前面)(敵側)

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

------------------------------------------------------
-- 元気玉モドキ (100F)
------------------------------------------------------

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** エフェクト等 ** --

--entryEffect(  0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
genkidama = entryEffect( 10,   SP_01,   0,  -1,  0,  0,  0); --元気玉モドキ
--setEffAlphaKey(10, genkidama, 255);

speff = entryEffect(  90,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了+30
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  90,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 90, SE_04);

playSe( 0, SE_03); --かめはめ波
playSe( 25, SE_03); 
playSe( 50, SE_03);
playSe( 75, SE_03);
--playSe( 85, SE_03); 
--playSe( 115, SE_03);  
playSe( 140, SE_06);  
--playSe( 165, SE_03);  
--playSe( 190, SE_03);  
--playSe( 200, SE_03); 
--[[ 
playSe( 225, SE_03);  
playSe( 250, SE_03);  
playSe( 275, SE_03);  
]]--

setShakeChara( 10, 0, 154, 6);
setShake( 70, 94, 8);

entryFadeBg( 0, 30, 204, 0, 0, 0, 0, 185);       -- ベース暗め　背景

--kame_hand = entryEffect( 40, SP_01, 0, -1,  0,  0,  870);   -- 手のカメハメ波部
--setEffScaleKey( 40, kame_hand, 1, 1);

entryFade( 197, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFadeBg( 0, 0, 20, 0, fcolor_r, fcolor_g, fcolor_b,255);  

--removeAllEffect(151);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 87, 0x100, -1, 0, -190, 400);    -- ゴゴゴ・・・
setEffShake(90, ct, 95, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

spep_6 = 204;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_6,   0, 1.7, 1.7);
setScaleKey( spep_6+1,   0, 1.7, 1.7);

------------------------------------------------------
-- 極限Z対応

--playSe( spep_6, SE_05);
--speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
--setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
entryFade( spep_6+85, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_6+64, SE_06);

spep_2 = spep_6+94; --211 260

------------------------------------------------------
-- トランクス突撃(90F)
------------------------------------------------------

entryEffect( spep_2,   SP_02,   0,  -1,  0,  0,  0);--トランクス突撃

entryFadeBg( spep_2, 0, 125, 0, 0, 0, 0, 185);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_2, 906, 70, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.5, 1.5);

sen = entryEffectLife( spep_2+70, 921, 45, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_2+70, sen, 150);
setEffScaleKey( spep_2+70, sen, 1.5, 1.5);

playSe( spep_2+70, SE_04);

-- 書き文字エントリー
ct = entryEffectLife( spep_2+70, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_2+70, ct, 32, 5);
setEffAlphaKey( spep_2+70, ct, 255);
setEffAlphaKey(spep_2+94, ct, 255);
setEffAlphaKey(spep_2+103, ct, 0);
setEffScaleKey(spep_2+70, ct, 0.0, 0.0);
setEffScaleKey(spep_2+74, ct, 1.3, 1.3);
setEffScaleKey(spep_2+94, ct, 1.3, 1.3);
setEffScaleKey(spep_2+103, ct, 6.0, 6.0);

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

endPhase(SP_dodge+10);
do return end
else end

playSe( spep_2+60, 1042);

entryFade( spep_2+110, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+115;

------------------------------------------------------
-- 突き(110F)
------------------------------------------------------

playSe( spep_3, 1032);

entryEffect( spep_3, SP_03,   0,  -1,  0,  0,  0);--突きのエフェクト

entryFadeBg( spep_3, 0, 70, 0, 0, 0, 0, 255);  -- ベース暗め　背景

shuchusen2 = entryEffectLife( spep_3, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen2, 1.5, 1.5);

entryFade( spep_3+65, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_3+70;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

playSe( spep_5+60, SE_06);
playSe( spep_5+143, SE_07);

setDisp( spep_5, 1, 1);

--[[
changeAnime( spep_5, 1, 106);  
setRotateKey( spep_5, 1, -75);
]]--

changeAnime( spep_5, 1, 108);  
setRotateKey( spep_5, 1, 0);
   
setMoveKey(  spep_5,   1, 195, -50,   0);
setMoveKey(  spep_5+95,   1, 195, -50,   0);
setMoveKey(  spep_5+143,   1, 0, -50,   0);
--setMoveKey(  spep_5+30,   1,    0, 0,   0);
setMoveKey(  spep_5+230,   1, 0, -50,   0);

setScaleKey(  spep_5,   1, 1.7, 1.7);
--setScaleKey(  spep_5+30,   1, 2, 2);
--setScaleKey(  spep_5+65,   1, 2.3, 2.3);
setScaleKey(  spep_5+240,   1, 1.7, 1.7);

entryEffect( spep_5,SP_04,0x100,-1,0,50,-50);
entryEffect( spep_5,SP_05,0x80,-1,0,50,-50);

shuchusen3 = entryEffectLife( spep_5, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen3, 1.5, 1.5);

sen2 = entryEffectLife( spep_5+55, 920, 210, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_5+55, sen2, 90);
setEffScaleKey( spep_5+55, sen2, 1.5, 1.5);

entryFadeBg( spep_5, 0, 240, 0, 0, 0, 0, 185);       -- ベース暗め　背景

-- ダメージ表示
dealDamage(spep_5+170 -60 );

--entryFade( spep_5+220 -10, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+240 -10);

else

------------------------------------------------------
-- 元気玉モドキ (100F)
------------------------------------------------------

setVisibleUI(0, 0);

-- ** エフェクト等 ** --

--entryEffect(  0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
genkidama = entryEffect( 10,   SP_01,   0,  -1,  0,  0,  0); --元気玉モドキ
--setEffAlphaKey(10, genkidama, 255);

--[[
speff = entryEffect(  90,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了+30
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  90,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( 90, SE_04);

playSe( 0, SE_03); --かめはめ波
playSe( 25, SE_03); 
playSe( 50, SE_03);
playSe( 75, SE_03);
--playSe( 85, SE_03); 
--playSe( 115, SE_03);  
playSe( 140, SE_06);  
--playSe( 165, SE_03);  
--playSe( 190, SE_03);  
--playSe( 200, SE_03); 
--[[ 
playSe( 225, SE_03);  
playSe( 250, SE_03);  
playSe( 275, SE_03);  
]]--

setShakeChara( 10, 0, 154, 6);
setShake( 70, 94, 8);

entryFadeBg( 0, 30, 204, 0, 0, 0, 0, 185);       -- ベース暗め　背景

--kame_hand = entryEffect( 40, SP_01, 0, -1,  0,  0,  870);   -- 手のカメハメ波部
--setEffScaleKey( 40, kame_hand, 1, 1);

entryFade( 197, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFadeBg( 0, 0, 20, 0, fcolor_r, fcolor_g, fcolor_b,255);  

--removeAllEffect(151);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 87, 0x100, -1, 0, -190, 400);    -- ゴゴゴ・・・
setEffShake(90, ct, 95, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

spep_6 = 204;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_6,   0, 1.7, 1.7);
setScaleKey( spep_6+1,   0, 1.7, 1.7);

playSe( spep_6, SE_05);
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    entryFade( spep_6+85, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_6+64, SE_06);

spep_2 = spep_6+94; --211 260

------------------------------------------------------
-- トランクス突撃(90F)
------------------------------------------------------

entryEffect( spep_2,   SP_02,   0,  -1,  0,  0,  0);--トランクス突撃

entryFadeBg( spep_2, 0, 125, 0, 0, 0, 0, 185);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_2, 906, 70, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.5, 1.5);

sen = entryEffectLife( spep_2+70, 921, 45, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_2+70, sen, 150);
setEffScaleKey( spep_2+70, sen, 1.5, 1.5);

playSe( spep_2+70, SE_04);

-- 書き文字エントリー
ct = entryEffectLife( spep_2+70, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_2+70, ct, 32, 5);
setEffAlphaKey( spep_2+70, ct, 255);
setEffAlphaKey(spep_2+94, ct, 255);
setEffAlphaKey(spep_2+103, ct, 0);
setEffScaleKey(spep_2+70, ct, 0.0, 0.0);
setEffScaleKey(spep_2+74, ct, 1.3, 1.3);
setEffScaleKey(spep_2+94, ct, 1.3, 1.3);
setEffScaleKey(spep_2+103, ct, 6.0, 6.0);
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

endPhase(SP_dodge+10);
do return end
else end

playSe( spep_2+60, 1042);

entryFade( spep_2+110, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+115;

------------------------------------------------------
-- 突き(110F)
------------------------------------------------------

playSe( spep_3, 1032);

entryEffect( spep_3, SP_03,   0,  -1,  0,  0,  0);--突きのエフェクト

entryFadeBg( spep_3, 0, 70, 0, 0, 0, 0, 255);  -- ベース暗め　背景

shuchusen2 = entryEffectLife( spep_3, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen2, 1.5, 1.5);

entryFade( spep_3+65, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_3+70;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

playSe( spep_5+60, SE_06);
playSe( spep_5+143, SE_07);

setDisp( spep_5, 1, 1);

--[[
changeAnime( spep_5, 1, 106);  
setRotateKey( spep_5, 1, -75);
]]--

changeAnime( spep_5, 1, 108);  
setRotateKey( spep_5, 1, 0);
   
setMoveKey(  spep_5,   1, 195, -50,   0);
setMoveKey(  spep_5+95,   1, 195, -50,   0);
setMoveKey(  spep_5+143,   1, 0, -50,   0);
--setMoveKey(  spep_5+30,   1,    0, 0,   0);
setMoveKey(  spep_5+230,   1, 0, -50,   0);

setScaleKey(  spep_5,   1, 1.7, 1.7);
--setScaleKey(  spep_5+30,   1, 2, 2);
--setScaleKey(  spep_5+65,   1, 2.3, 2.3);
setScaleKey(  spep_5+240,   1, 1.7, 1.7);

entryEffect( spep_5,SP_07,0x100,-1,0,50,-50);
entryEffect( spep_5,SP_05,0x80,-1,0,50,-50);

shuchusen3 = entryEffectLife( spep_5, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen3, 1.5, 1.5);

sen2 = entryEffectLife( spep_5+55, 920, 210, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_5+55, sen2, 90);
setEffScaleKey( spep_5+55, sen2, 1.5, 1.5);

entryFadeBg( spep_5, 0, 240, 0, 0, 0, 0, 185);       -- ベース暗め　背景

-- ダメージ表示
dealDamage(spep_5+170 -60 );

--entryFade( spep_5+220, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+240 -10);

end

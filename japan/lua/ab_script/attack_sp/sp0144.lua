
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

SP_01 = 102075;
SP_02 = 102076;
SP_03 = 102077;
SP_04 = 102078;


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

--setMoveKey(   0,   0,    0, -54,   0);
--setMoveKey(   1,   0,    0, -54,   0);
--setScaleKey(   0,   0, 0.8, 0.8);
--setScaleKey(   1,   0, 0.8, 0.8);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め 1 (100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 30);                       -- 溜め!

setMoveKey(   0,   0,    0, -700,   0);
setMoveKey(   1,   0,    0, -700,   0);
setMoveKey(   2,   0,    0, -700,   0);
setMoveKey(  70,   0,    0, -150,   0);
setMoveKey(  147,   0,    0, -150,   0);

setScaleKey(   0,   0, 1.7, 1.7);
setScaleKey(   1,   0, 1.7, 1.7);
--setScaleKey(   40,   0, 1.7, 1.7);
setScaleKey(   147,   0, 1.7, 1.7);

--playSe( 0, SE_03); --かめはめ波
--playSe( 25, SE_03); 
--[[
playSe( 50, SE_03);
playSe( 75, SE_03); 
playSe( 100, SE_03);  
playSe( 125, SE_03);  
playSe( 150, SE_03);  
playSe( 175, SE_03);  
playSe( 200, SE_03);  
playSe( 225, SE_03);  
playSe( 250, SE_03);  
playSe( 275, SE_03);  
]]
--v4.11調整
SE001 = playSe( 50, SE_03);
stopSe(80,SE001,5);
SE002 = playSe( 75, SE_03); 
stopSe(105,SE002,5);
SE003 = playSe( 100, SE_03); 
stopSe(130,SE003,5);
SE004 = playSe( 125, SE_03); 
stopSe(155,SE004,5); 
SE005 = playSe( 150, SE_03);
stopSe(180,SE005,5);  
SE006 = playSe( 175, SE_03); 
stopSe(205,SE006,5); 
SE007 = playSe( 200, SE_03);
stopSe(230,SE007,5);  
SE008 = playSe( 225, SE_03);
stopSe(255,SE008,5);  
SE009 = playSe( 250, SE_03);
stopSe(280,SE009,5);  
SE010 = playSe( 275, SE_03);  

--entryEffect(  0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  0,   1502,   0,  -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了+30
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 40, SP_01, 0, -1,  0,  0,  870);   -- 手のカメハメ波部
setEffScaleKey( 40, kame_hand, 1, 1);

entryFade( 147, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

setShakeChara( 0, 0, 154, 6);
setShake( 60, 94, 8);

-- 書き文字エントリー
ct = entryEffectLife( 60, 10008, 87, 0x100, -1, 0, -190, 200, 1000);    -- ゴゴゴ・・・
setEffShake(60, ct, 95, 8);
setEffScaleKey(60, ct, 1.4, 1.4);


--entryFadeBg( 0, 0, 20, 0, fcolor_r, fcolor_g, fcolor_b,255);  
entryFadeBg( 45, 30, 76, 0, 0, 0, 0, 185);       -- ベース暗め　背景

removeAllEffect(151);

spep_6 = 154;

------------------------------------------------------
-- かめはめ波溜め　２　(90F)
------------------------------------------------------

setScaleKey( spep_6-1,   0, 2, 2);
setScaleKey( spep_6,   0, 2, 2);
setScaleKey( spep_6+60,   0, 0.3, 0.3);
setScaleKey( spep_6+120,   0, 0.3, 0.3);

setMoveKey(   spep_6,   0,    0, -150,   0);
setMoveKey(  spep_6+60,   0,    0, -250,   0);
setMoveKey(  spep_6+120,   0,    0, -250,   0);

kame_hand_21 = entryEffect( spep_6, SP_02, 0, -1, 0, 0, 930);

setEffScaleKey(spep_6-2, kame_hand_21, 1, 1);
setEffScaleKey(spep_6+60, kame_hand_21, 0.5, 0.5);
setEffScaleKey(spep_6+120, kame_hand_21, 0.5, 0.5);

setEffMoveKey(spep_6-2, kame_hand_21, 0, 930, 0);
setEffMoveKey(spep_6+60, kame_hand_21, 0, 250, 0);
setEffMoveKey(spep_6+120, kame_hand_21, 0, 250, 0);

shuchusen = entryEffectLife( spep_6, 906, 115, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen, 2.0, 2.0);
setEffScaleKey( spep_6+60, shuchusen, 1.5, 1.5);


entryFade( spep_6+112, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_6, 0, 80, 100, 0, 0, 0, 185);       -- ベース暗め　背景

setShakeChara( spep_6, 0, 120, 6);
setShake( spep_6, 120, 14);

spep_2 = spep_6+115+6 ;  --275

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2,   0, 1.7, 1.7);
setScaleKey( spep_2+1,   0, 1.7, 1.7);
--[[
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]
-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
entryFade( spep_2+85 -3, 3, 5 +3, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+3; --363

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
--[[
setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,   -600,  0,   0);
setMoveKey(  spep_3+1,    0,   -600,  0,   0);
setMoveKey(  spep_3+10,    0,   -100,  0,   0);
--]]
setMoveKey(  spep_3-1,    0,     -550,  400,   0);
setMoveKey(  spep_3+10,    0,   -100,  150,   0);
setMoveKey(  spep_3+15,    0,   -100,  150,   0);

setScaleKey( spep_3+1,   0, 0.8, 0.8);
setScaleKey( spep_3+95,   0, 0.8, 0.8);

kamehame_beam = entryEffectLife( spep_3-1, SP_03, 109, 0x40,  -1,  0,  350,  600);   -- 伸びるかめはめ波

setEffScaleKey(spep_3-1, kamehame_beam, 1, 1);
setEffScaleKey(spep_3+95, kamehame_beam, 1.3, 1.3);

playSe( spep_3, SE_07);

--spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  spep_3+39,    0,   -100,  0,   0);
--setMoveKey(  spep_3+40,    0,   -100,  0,   0);
--setMoveKey(  spep_3+48,    0,   -1100,  0,   0);
setMoveKey(  spep_3+30,    0,   -550,  300,   70);
setMoveKey(  spep_3+40,    0,   -900,  350,   120);
--setMoveKey(  spep_3+48,    0,   -1100,  0,   0);


--entryFade( spep_3+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_3+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_3, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey(spep_3, sen2, 1.3, 1.3);
setShakeChara( spep_3+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

--entryFlash( (spep_3+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

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
SE01 = playSe( spep_3+40, SE_07);

entryFade( spep_3+95, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+95+10 --468

------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);
setMoveKey(  spep_4+30,    1,   120,  -270,   0);

setScaleKey(  spep_4-1,   1,   1.2,  1.2);
setScaleKey(  spep_4+75,   1,   1.2,  1.2);



entryFade( spep_4+70, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+75, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen, 190);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1.2, 1.2);
setEffScaleKey(spep_4+80, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

--speff = entryEffect( spep_4, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( spep_4, SE_08);

-- 敵吹っ飛ぶモーション
--[[
changeAnime( spep_4+85, 1, 108);
setMoveKey(  spep_4+85, 1,  120,    -150,  0);
setMoveKey(  spep_4+99, 1,  400,    0,  0);
setScaleKey( spep_4+85, 1,  1.6, 1.6);
setScaleKey( spep_4+88, 1,  1.5, 1.5);
setScaleKey( spep_4+98, 1,  0.2, 0.2);
]]--
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryFlash( (spep_4+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+65, ct, 255);
setEffAlphaKey(spep_4+75, ct, 0);

ct = entryEffectLife( spep_4+77, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+77, ct, 99, 20);
setEffScaleKey( spep_4+77, ct, 0.1, 0.1);
setEffScaleKey( spep_4+90, ct, 2.4, 2.4);
setEffScaleKey( spep_4+100, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+77, ct, 255);
setEffAlphaKey(spep_4+110, ct, 255);
setEffAlphaKey(spep_4+125, ct, 0);

entryFade( spep_4+120, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 520; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE01, 0 );

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

spep_5=spep_4+120+5; --410 469


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

playSe( spep_4+20, SE_06);
playSe( spep_4+85, SE_09);

entryEffect( spep_5,1560,0,-1,0,0,0);

setDisp( spep_5, 1, 0);

-- 書き文字エントリー
--ct = entryEffectLife( spep_5+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
--setEffShake(spep_5+16, ct, 30, 10);
--setEffRotateKey( spep_5+16, ct, -40);
--setEffScaleKey( spep_5+16, ct, 4.0, 4.0);
--setEffScaleKey( spep_5+17, ct, 2.0, 2.0);
--setEffScaleKey( spep_5+18, ct, 2.6, 2.6);
--setEffScaleKey( spep_5+19, ct, 4.0, 4.0);
--setEffScaleKey( spep_5+20, ct, 2.6, 2.6);
--setEffScaleKey( spep_5+21, ct, 3.8, 3.8);
--setEffScaleKey( spep_5+111, ct, 3.8, 3.8);
--setEffAlphaKey( spep_5+16, ct, 255);
--setEffAlphaKey( spep_5+106, ct, 255);
--setEffAlphaKey( spep_5+116, ct, 0);

playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

--entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+100);

else

------------------------------------------------------
-- かめはめ波溜め 1 (100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 30);                       -- 溜め!

setMoveKey(   0,   0,    0, -700,   0);
setMoveKey(   1,   0,    0, -700,   0);
setMoveKey(   2,   0,    0, -700,   0);
setMoveKey(  70,   0,    0, -150,   0);
setMoveKey(  147,   0,    0, -150,   0);

setScaleKey(   0,   0, 1.7, 1.7);
setScaleKey(   1,   0, 1.7, 1.7);
--setScaleKey(   40,   0, 1.7, 1.7);
setScaleKey(   147,   0, 1.7, 1.7);

--playSe( 0, SE_03); --かめはめ波
--playSe( 25, SE_03); 
--[[
playSe( 50, SE_03);
playSe( 75, SE_03); 
playSe( 100, SE_03);  
playSe( 125, SE_03);  
playSe( 150, SE_03);  
playSe( 175, SE_03);  
playSe( 200, SE_03);  
playSe( 225, SE_03);  
playSe( 250, SE_03);  
playSe( 275, SE_03);  
]]
--v4.11調整
SE001 = playSe( 50, SE_03);
stopSe(80,SE001,5);
SE002 = playSe( 75, SE_03); 
stopSe(105,SE002,5);
SE003 = playSe( 100, SE_03); 
stopSe(130,SE003,5);
SE004 = playSe( 125, SE_03); 
stopSe(155,SE004,5); 
SE005 = playSe( 150, SE_03);
stopSe(180,SE005,5);  
SE006 = playSe( 175, SE_03); 
stopSe(205,SE006,5); 
SE007 = playSe( 200, SE_03);
stopSe(230,SE007,5);  
SE008 = playSe( 225, SE_03);
stopSe(255,SE008,5);  
SE009 = playSe( 250, SE_03);
stopSe(280,SE009,5);  
SE010 = playSe( 275, SE_03);  

--entryEffect(  0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  0,   1502,   0,  -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了+30
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]
playSe( 80, SE_04);

kame_hand = entryEffect( 40, SP_01, 0, -1,  0,  0,  870);   -- 手のカメハメ波部
setEffScaleKey( 40, kame_hand, 1, 1);

entryFade( 147, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

setShakeChara( 0, 0, 117, 6);
setShake( 60, 117, 8);

-- 書き文字エントリー
ct = entryEffectLife( 60, 10008, 87, 0x100, -1, 0, -190, 200);    -- ゴゴゴ・・・
setEffShake(60, ct, 95, 8);
setEffScaleKey(60, ct, 1.4, 1.4);


--entryFadeBg( 0, 0, 20, 0, fcolor_r, fcolor_g, fcolor_b,255);  
entryFadeBg( 45, 30, 76, 0, 0, 0, 0, 185);       -- ベース暗め　背景

removeAllEffect(151);

spep_6 = 154;

------------------------------------------------------
-- かめはめ波溜め　２　(90F)
------------------------------------------------------

setScaleKey( spep_6-1,   0, 2, 2);
setScaleKey( spep_6,   0, 2, 2);
setScaleKey( spep_6+60,   0, 0.3, 0.3);
setScaleKey( spep_6+120,   0, 0.3, 0.3);

setMoveKey(   spep_6,   0,    0, -150,   0);
setMoveKey(  spep_6+60,   0,    0, -250,   0);
setMoveKey(  spep_6+120,   0,    0, -250,   0);

kame_hand_21 = entryEffect( spep_6, SP_02, 0, -1, 0, 0, 930);

setEffScaleKey(spep_6-2, kame_hand_21, 1, 1);
setEffScaleKey(spep_6+60, kame_hand_21, 0.5, 0.5);
setEffScaleKey(spep_6+120, kame_hand_21, 0.5, 0.5);

setEffMoveKey(spep_6-2, kame_hand_21, 0, 930, 0);
setEffMoveKey(spep_6+60, kame_hand_21, 0, 250, 0);
setEffMoveKey(spep_6+120, kame_hand_21, 0, 250, 0);

shuchusen = entryEffectLife( spep_6, 906, 115, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen, 2.0, 2.0);
setEffScaleKey( spep_6+60, shuchusen, 1.5, 1.5);


entryFade( spep_6+112, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_6, 0, 80, 100, 0, 0, 0, 185);       -- ベース暗め　背景

spep_2 = spep_6+115+6 ;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2,   0, 1.7, 1.7);
setScaleKey( spep_2+1,   0, 1.7, 1.7);
--[[
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]
-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

entryFade( spep_2+85 -3, 3, 5 +3, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+3; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
--[[
setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,   -600,  0,   0);
setMoveKey(  spep_3+1,    0,   -600,  0,   0);
setMoveKey(  spep_3+10,    0,   -100,  0,   0);
--]]
setMoveKey(  spep_3-1,    0,     -550,  400,   0);
setMoveKey(  spep_3+10,    0,   -100,  150,   0);
setMoveKey(  spep_3+15,    0,   -100,  150,   0);

setScaleKey( spep_3+1,   0, 0.8, 0.8);
setScaleKey( spep_3+95,   0, 0.8, 0.8);

kamehame_beam = entryEffectLife( spep_3-1, SP_03, 109, 0x40,  -1,  0,  -350,  600);   -- 伸びるかめはめ波

setEffScaleKey(spep_3-1, kamehame_beam, 1, 1);
setEffScaleKey(spep_3+95, kamehame_beam, 1.3, 1.3);

playSe( spep_3, SE_07);

--spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  spep_3+39,    0,   -100,  0,   0);
--setMoveKey(  spep_3+40,    0,   -100,  0,   0);
--setMoveKey(  spep_3+48,    0,   -1100,  0,   0);
setMoveKey(  spep_3+30,    0,   -550,  300,   70);
setMoveKey(  spep_3+40,    0,   -900,  350,   120);
--setMoveKey(  spep_3+48,    0,   -1100,  0,   0);


--entryFade( spep_3+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_3+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_3, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey(spep_3, sen2, 1.3, 1.3);
setShakeChara( spep_3+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

--entryFlash( (spep_3+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

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
SE01 = playSe( spep_3+40, SE_07);

entryFade( spep_3+95, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+95+10 --311 370

------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);
setMoveKey(  spep_4+30,    1,   120,  -270,   0);

setScaleKey(  spep_4-1,   1,   1.2,  1.2);
setScaleKey(  spep_4+75,   1,   1.2,  1.2);

entryFade( spep_4+70, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+75, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen, 190);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1.2, 1.2);
setEffScaleKey(spep_4+80, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

--speff = entryEffect( spep_4, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( spep_4, SE_08);

-- 敵吹っ飛ぶモーション
--[[
changeAnime( spep_4+85, 1, 108);
setMoveKey(  spep_4+85, 1,  120,    -150,  0);
setMoveKey(  spep_4+99, 1,  400,    0,  0);
setScaleKey( spep_4+85, 1,  1.6, 1.6);
setScaleKey( spep_4+88, 1,  1.5, 1.5);
setScaleKey( spep_4+98, 1,  0.2, 0.2);
]]--
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryFlash( (spep_4+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 15);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, 20);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+65, ct, 255);
setEffAlphaKey(spep_4+75, ct, 0);

ct = entryEffectLife( spep_4+77, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+77, ct, 99, 20);
setEffScaleKey( spep_4+77, ct, 0.1, 0.1);
setEffScaleKey( spep_4+90, ct, 2.4, 2.4);
setEffScaleKey( spep_4+100, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+77, ct, 255);
setEffAlphaKey(spep_4+110, ct, 255);
setEffAlphaKey(spep_4+125, ct, 0);

entryFade( spep_4+120, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 520; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE01, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

spep_5=spep_4+120+5; --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

playSe( spep_4+20, SE_06);
playSe( spep_4+85, SE_09);

entryEffect( spep_5,1560,0,-1,0,0,0);

setDisp( spep_5, 1, 0);

-- 書き文字エントリー
--ct = entryEffectLife( spep_5+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
--setEffShake(spep_5+16, ct, 30, 10);
--setEffRotateKey( spep_5+16, ct, -40);
--setEffScaleKey( spep_5+16, ct, 4.0, 4.0);
--setEffScaleKey( spep_5+17, ct, 2.0, 2.0);
--setEffScaleKey( spep_5+18, ct, 2.6, 2.6);
--setEffScaleKey( spep_5+19, ct, 4.0, 4.0);
--setEffScaleKey( spep_5+20, ct, 2.6, 2.6);
--setEffScaleKey( spep_5+21, ct, 3.8, 3.8);
--setEffScaleKey( spep_5+111, ct, 3.8, 3.8);
--setEffAlphaKey( spep_5+16, ct, 255);
--setEffAlphaKey( spep_5+106, ct, 255);
--setEffAlphaKey( spep_5+116, ct, 0);

playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

--entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+100);

end

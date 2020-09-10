
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


SP_01 = 102104;
SP_02 = 102105;
SP_03 = 102106;
SP_04 = 102107;
SP_05 = 1567;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め 1 (100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 17);                       -- 溜め!
entryFadeBg( 0, 20, 55, 10, 0, 0, 0, 185);       -- ベース暗め　背景

changeAnime( 30, 0, 30);                       -- 溜め!

setMoveKey(   0,   0,    0, -700,   0);
setMoveKey(  70,   0,    0, -150,   0);
setMoveKey(  147,   0,    0, -150,   0);

setScaleKey(   0,   0, 1.7, 1.7);
setScaleKey(   1,   0, 1.7, 1.7);
setScaleKey(   147,   0, 1.7, 1.7);

playSe( 50, 1034);
playSe( 75, 1034); 
playSe( 100, 1034);  
playSe( 125, 1034);  
playSe( 150, 1034);  
playSe( 175, 1034);  
playSe( 200, 1034);  
playSe( 225, 1034);  
playSe( 250, 1034);  
playSe( 275, 1034);  


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
ct = entryEffectLife( 60, 10008, 87, 0x100, -1, 0, -190, 200);    -- ゴゴゴ・・・
setEffShake(60, ct, 95, 8);
setEffScaleKey(60, ct, 1.4, 1.4);


entryFadeBg( 45, 45, 66, 0, 60, 0, 0, 185);       -- ベース暗め　背景

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


entryFade( spep_6+115, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_6, 0, 121, 100, 70, 0, 0, 185);       -- ベース暗め　背景

setShakeChara( spep_6, 0, 120, 6);
setShake( spep_6, 120, 14);

spep_2 = spep_6+115+6 ;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2,   0, 1.7, 1.7);
setScaleKey( spep_2+1,   0, 1.7, 1.7);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+3; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  spep_3-1,    0,     -550,  400,   0);
setMoveKey(  spep_3+10,    0,   -100,  150,   0);
setMoveKey(  spep_3+15,    0,   -100,  150,   0);

setScaleKey( spep_3+1,   0, 0.8, 0.8);
setScaleKey( spep_3+95,   0, 0.8, 0.8);

kamehame_beam = entryEffectLife( spep_3-1, SP_03, 109, 0x40,  -1,  0,  350,  600);   -- 伸びるかめはめ波

setEffScaleKey(spep_3-1, kamehame_beam, 1, 1);
setEffScaleKey(spep_3+95, kamehame_beam, 1.3, 1.3);

playSe( spep_3, SE_07);

spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_3+30,    0,   -550,  300,   70);
setMoveKey(  spep_3+40,    0,   -900,  350,   120);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 60, 0, 0, 215);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_3, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey(spep_3, sen2, 1.3, 1.3);
setShakeChara( spep_3+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);


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
playSe( spep_3+40, SE_07);

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


playSe( spep_4+20, SE_06);

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

playSe( spep_4+85, SE_09);
-- 敵吹っ飛ぶモーション
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0,60, 0, 0, 215);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+65, ct, 255);
setEffAlphaKey(spep_4+75, ct, 0);

entryFade( spep_4+75, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+70+5; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 520; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (110F)
------------------------------------------------------

explosion=entryEffect( spep_5,SP_05,0,-1,0,0,0);
setEffScaleKey(spep_5,explosion,1.1,1.1);
setEffScaleKey(spep_5+200,explosion,1.1,1.1);

setDisp( spep_5, 1, 0);

-- 書き文字エントリー

--playSe( spep_5+9, 1023);
playSe( spep_5+49, SE_10);
shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe( spep_5+149, SE_10);

-- ダメージ表示
dealDamage(spep_5+74);
setDamage( spep_5+74, 1, 0);  -- ダメージ振動等

entryFade( spep_5+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+190);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め 1 (100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 17);                       -- 溜め!
entryFadeBg( 0, 20, 55, 10, 0, 0, 0, 185);       -- ベース暗め　背景

changeAnime( 30, 0, 30);                       -- 溜め!

setMoveKey(   0,   0,    0, -700,   0);
setMoveKey(  70,   0,    0, -150,   0);
setMoveKey(  147,   0,    0, -150,   0);

setScaleKey(   0,   0, 1.7, 1.7);
setScaleKey(   1,   0, 1.7, 1.7);
setScaleKey(   147,   0, 1.7, 1.7);

playSe( 50, 1034);
playSe( 75, 1034); 
playSe( 100, 1034);  
playSe( 125, 1034);  
playSe( 150, 1034);  
playSe( 175, 1034);  
playSe( 200, 1034);  
playSe( 225, 1034);  
playSe( 250, 1034);  
playSe( 275, 1034);  

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

setShakeChara( 0, 0, 154, 6);
setShake( 60, 94, 8);

-- 書き文字エントリー
ct = entryEffectLife( 60, 10008, 87, 0x100, -1, 0, -190, 200);    -- ゴゴゴ・・・
setEffShake(60, ct, 95, 8);
setEffScaleKey(60, ct, 1.4, 1.4);


entryFadeBg( 45, 45, 66, 0, 60, 0, 0, 185);       -- ベース暗め　背景

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


entryFade( spep_6+115, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_6, 0, 121, 100, 70, 0, 0, 185);       -- ベース暗め　背景

setShakeChara( spep_6, 0, 120, 6);
setShake( spep_6, 120, 14);

spep_2 = spep_6+115+6 ;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2,   0, 1.7, 1.7);
setScaleKey( spep_2+1,   0, 1.7, 1.7);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+3; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  spep_3-1,    0,     -550,  400,   0);
setMoveKey(  spep_3+10,    0,   -100,  150,   0);
setMoveKey(  spep_3+15,    0,   -100,  150,   0);

setScaleKey( spep_3+1,   0, 0.8, 0.8);
setScaleKey( spep_3+95,   0, 0.8, 0.8);

kamehame_beam = entryEffectLife( spep_3-1, SP_03, 109, 0x40,  -1,  0,  -350,  600);   -- 伸びるかめはめ波

setEffScaleKey(spep_3-1, kamehame_beam, 1, 1);
setEffScaleKey(spep_3+95, kamehame_beam, 1.3, 1.3);
--setEffMoveKey(spep_3+30, kamehame_beam, 650, 600, 0);

playSe( spep_3, SE_07);

spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_3+30,    0,   -550,  300,   70);
setMoveKey(  spep_3+40,    0,   -900,  350,   120);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 60, 0, 0, 215);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_3, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey(spep_3, sen2, 1.3, 1.3);
setShakeChara( spep_3+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);


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
playSe( spep_3+40, SE_07);

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


playSe( spep_4+20, SE_06);

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

playSe( spep_4+85, SE_09);
-- 敵吹っ飛ぶモーション
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0,60, 0, 0, 215);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+65, ct, 255);
setEffAlphaKey(spep_4+75, ct, 0);

entryFade( spep_4+75, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+70+5; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 520; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

explosion=entryEffect( spep_5,SP_05,0,-1,0,0,0);
setEffScaleKey(spep_5,explosion,1.1,1.1);
setEffScaleKey(spep_5+200,explosion,1.1,1.1);

setDisp( spep_5, 1, 0);

-- 書き文字エントリー

--playSe( spep_5+9, 1023);
playSe( spep_5+49, SE_10);
shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe( spep_5+149, SE_10);

-- ダメージ表示
dealDamage(spep_5+74);
setDamage( spep_5+74, 1, 0);  -- ダメージ振動等

entryFade( spep_5+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+190);
end

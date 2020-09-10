

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

SP_01 = 100326;
SP_02 = 100327;
SP_03 = 100328;
SP_04 = 1556;
SP_05 = 190002;
--SP_06 = 100321;
SP_02e = 100329;
SP_03e = 100330;


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 30, 0, 30);                       -- 溜め!
--setScaleKey(   0,   0, 4, 4);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   30,   0, 1.5, 1.5);


setMoveKey(   0,   0,  0, 0,   0);
setMoveKey(   15,   0,  0, 0,   0);
setMoveKey(  117,   0,  0, 0,   0);

--playSe( 0, SE_03); --かめはめ波
--playSe( 25, SE_03); 
playSe( 50, SE_03);
--playSe( 75, SE_03); 
--playSe( 100, SE_03);  

--entryEffect(  70-40,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  70-40,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 20, SE_04);

kame_hand = entryEffect( 30, SP_01, 0x40+0x100, 0, 300,  -50, 50);   -- 手のカメハメ波部 50end
--setEffMoveKey(   0,  kame_hand,  150,  -200,   0);
--setEffMoveKey(   15,  kame_hand, 30,  90,   0);
--setEffScaleKey( 0, kame_hand, 1, 1);
--setEffScaleKey( 15, kame_hand, 0.5, 0.5);

entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   301, 117, 0x80,  -1,  0,  0,  0); -- オーラ
setEffMoveKey(   0,   aura,    80, -680,   0);
setEffMoveKey(   15,   aura,    0, -170,   0);
setEffMoveKey(  117,   aura,   0, -170,  0);
setEffScaleKey( 0, aura, 3, 3);
setEffScaleKey( 15, aura, 1.5, 1.5);
--setEffScaleKey( 40, aura, 1, 1);
setEffScaleKey( 117, aura, 1.8, 1.8);

aura1 = entryEffectLife( 0 , 353 , 117 , 0x80,  -1, 0,  0,  0); -- オーラ350
setEffMoveKey(   0,   aura1,    80, -680,   0);
setEffMoveKey(   15,   aura1,    0, -170,   0);
setEffMoveKey(  117,   aura1,   0, -170,  0);
setEffScaleKey( 0, aura1, 3, 3);
setEffScaleKey( 15, aura1, 1.5, 1.5);
--setEffScaleKey( 40, aura1, 1, 1);
setEffScaleKey( 117, aura1, 1.8, 1.8);
]]--


setShakeChara( 30, 0, 117, 18);
setShake( 30, 117, 8);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 30, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0+30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60+30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 117+30, shuchusen5, 1.0, 1.0);


entryFadeBg( 0+30, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 124;
setScaleKey(  spep_2,  0,  2.5,  2.5);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffScaleKey( spep_2, speff, 0.9, 0.9);
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

spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  0,  0);
--[[
setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,   -600,  0,   0);
setMoveKey(  spep_3+1,    0,   -600,  0,   0);
setMoveKey(  spep_3+10,    0,   -100,  0,   0);
--]]
setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,      -500,  -50,  -100);
setMoveKey(  spep_3+10,    0,      -200,  100,   0);
setMoveKey(  spep_3+25,    0,      -200,  100,   0);

sen2 = entryEffectLife( spep_3, 921, 110, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 140);
setEffScaleKey( spep_3, sen2, 1.6, 1.6);
setShakeChara( spep_3+10, 0, 24, 30);


kamehame_beam_st = entryEffectLife( spep_3, SP_02, 94, 0x40+0x100,  0,  300,  -20,  5);   -- 伸びるかめはめ波

kamehame_beam = entryEffectLife( spep_3, SP_02, 108, 0x40+0x80,  0,  300,  -20,  5);   -- 伸びるかめはめ波

--gacchan = entryEffectLife( spep_3, SP_06, 44, 0x40+0x80,  0,  300,  0,  0);   -- 伸びるかめはめ波

setEffAlphaKey(spep_3, kamehame_beam, 0);
setEffAlphaKey(spep_3+44, kamehame_beam, 0);
setEffAlphaKey(spep_3+45, kamehame_beam, 255);

playSe( spep_3, SE_07);

spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_3+40,    0,   -650,  0,   50); --600
setMoveKey(  spep_3+70,    0,   -650,  -100,   0); --1000
setDisp( spep_3+60, 0, 0);

--[[
-- 相手が画面に現れる
setDisp( spep_3+40, 1, 1);
changeAnime( spep_3+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_3+60,   1,   1.6,  1.6);
setMoveKey(  spep_3+40,    1,  500,  250,   0);
--setMoveKey(  spep_3+50,    1,  100,  150,   -10);
setMoveKey(  spep_3+60,    1,  70,  200,   -20);
]]--


--entryFade( spep_3+45, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

shuchusen = entryEffectLife( spep_3-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

--entryFlash( (spep_3+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 10, 350); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);
playSe( spep_3+40, SE_07);

entryFade( spep_3+105, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+65+50 --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);                        -- 気ダメ後ろ
setRotateKey( spep_4, 1, 0); 

setMoveKey(  spep_4,  1,  500,  150,   -100);
setMoveKey(  spep_4+15,  1,  150,  0,   0);
setMoveKey(  spep_4+35,  1,  150, 0,   0);

setDisp( spep_4+36, 1, 0);
setScaleKey( spep_4, 1,  2.5, 2.5);
setScaleKey( spep_4+35, 1,  2.0, 2.0);

--setMoveKey(  spep_4+30,    1,   80,  150,   0);
--setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4+20, SE_06);

entryFade( spep_4+34, 2,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setDisp( spep_4+50, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4-1, ryusen, 155);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+50, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_4+50, 1, 0);  -- ダメージ振動等

--speff = entryEffect( spep_4, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( spep_4, SE_08);

--playSe( spep_4+85, SE_09);
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

entryFadeBg( spep_4, 0, 50, 0,0, 0, 0, 180);          -- ベース暗め　背景

--entryFlash( (spep_4+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 40, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+40, ct, 255);
--setEffAlphaKey(spep_4+50, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 335; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


endPhase(SP_dodge+10);

do return end
else end



kamehame_beam = entryEffect( spep_4+40, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+55, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+45, ct, 99, 20);
setEffScaleKey( spep_4+45, ct, 0.1, 0.1);
setEffScaleKey( spep_4+77, ct, 2.4, 2.4);
setEffScaleKey( spep_4+90, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+45, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+90, ct, 0);

playSe( spep_4+48, 1024);

entryFade( spep_4+90, 5, 15, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+90, 1, 0);

removeAllEffect(spep_4+95);

spep_5=spep_4+92+10 --410 469


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( spep_5-1, 1, 1);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+110);
else

--[[

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0);  
setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

else


]]--

--敵
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 30, 0, 30);                       -- 溜め!
--setScaleKey(   0,   0, 4, 4);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   30,   0, 1.5, 1.5);


setMoveKey(   0,   0,  0, 0,   0);
setMoveKey(   15,   0,  0, 0,   0);
setMoveKey(  117,   0,  0, 0,   0);

--playSe( 0, SE_03); --かめはめ波
--playSe( 25, SE_03); 
playSe( 50, SE_03);
--playSe( 75, SE_03); 
--playSe( 100, SE_03);  

--entryEffect(  70-40,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  70-40,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 20, SE_04);

kame_hand = entryEffect( 30, SP_01, 0x40+0x100, 0, 300,  -80, 50);   -- 手のカメハメ波部 50end
--setEffMoveKey(   0,  kame_hand,  150,  -200,   0);
--setEffMoveKey(   15,  kame_hand, 30,  90,   0);
--setEffScaleKey( 0, kame_hand, 1, 1);
--setEffScaleKey( 15, kame_hand, 0.5, 0.5);

entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   301, 117, 0x80,  -1,  0,  0,  0); -- オーラ
setEffMoveKey(   0,   aura,    80, -680,   0);
setEffMoveKey(   15,   aura,    0, -170,   0);
setEffMoveKey(  117,   aura,   0, -170,  0);
setEffScaleKey( 0, aura, 3, 3);
setEffScaleKey( 15, aura, 1.5, 1.5);
--setEffScaleKey( 40, aura, 1, 1);
setEffScaleKey( 117, aura, 1.8, 1.8);

aura1 = entryEffectLife( 0 , 353 , 117 , 0x80,  -1, 0,  0,  0); -- オーラ350
setEffMoveKey(   0,   aura1,    80, -680,   0);
setEffMoveKey(   15,   aura1,    0, -170,   0);
setEffMoveKey(  117,   aura1,   0, -170,  0);
setEffScaleKey( 0, aura1, 3, 3);
setEffScaleKey( 15, aura1, 1.5, 1.5);
--setEffScaleKey( 40, aura1, 1, 1);
setEffScaleKey( 117, aura1, 1.8, 1.8);
]]--


setShakeChara( 30, 0, 117, 18);
setShake( 30, 117, 8);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 30, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0+30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60+30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 117+30, shuchusen5, 1.0, 1.0);


entryFadeBg( 0+30, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 124;
setScaleKey(  spep_2,  0,  2.5,  2.5);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffScaleKey( spep_2, speff, 0.9, 0.9);
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

spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  0,  0);
--[[
setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,   -600,  0,   0);
setMoveKey(  spep_3+1,    0,   -600,  0,   0);
setMoveKey(  spep_3+10,    0,   -100,  0,   0);
--]]
setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3,    0,      -500,  -50,  -100);
setMoveKey(  spep_3+10,    0,      -200,  100,   0);
setMoveKey(  spep_3+25,    0,      -200,  100,   0);

sen2 = entryEffectLife( spep_3, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 140);
setEffScaleKey( spep_3, sen2, 1.6, 1.6);
setShakeChara( spep_3+10, 0, 24, 30);


kamehame_beam_st = entryEffectLife( spep_3, SP_02e, 94, 0x40+0x100,  0,  300,  -20,  5);   -- 伸びるかめはめ波

--setEffScaleKey( spep_3, kamehame_beam_st, -1.0, 1.0);

kamehame_beam = entryEffectLife( spep_3, SP_02e, 108, 0x40+0x80,  0,  300,  -20,  5);   -- 伸びるかめはめ波

--setEffScaleKey( spep_3, kamehame_beam, -1.0, 1.0);

--gacchan = entryEffectLife( spep_3, SP_06, 44, 0x40+0x80,  0,  300,  0,  0);   -- 伸びるかめはめ波

setEffAlphaKey(spep_3, kamehame_beam, 0);
setEffAlphaKey(spep_3+44, kamehame_beam, 0);
setEffAlphaKey(spep_3+45, kamehame_beam, 255);

playSe( spep_3, SE_07);

spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_3+40,    0,   -650,  0,   50); --600
setMoveKey(  spep_3+70,    0,   -650,  -100,   0); --1000
setDisp( spep_3+60, 0, 0);

--[[
-- 相手が画面に現れる
setDisp( spep_3+40, 1, 1);
changeAnime( spep_3+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_3+60,   1,   1.6,  1.6);
setMoveKey(  spep_3+40,    1,  500,  250,   0);
--setMoveKey(  spep_3+50,    1,  100,  150,   -10);
setMoveKey(  spep_3+60,    1,  70,  200,   -20);
]]--


--entryFade( spep_3+45, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

shuchusen = entryEffectLife( spep_3-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

--entryFlash( (spep_3+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 10, 350); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);
playSe( spep_3+40, SE_07);

entryFade( spep_3+105, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+65+50 --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);                        -- 気ダメ後ろ
setRotateKey( spep_4, 1, 0); 

setMoveKey(  spep_4,  1,  500,  150,   -100);
setMoveKey(  spep_4+15,  1,  150,  0,   0);
setMoveKey(  spep_4+35,  1,  150, 0,   0);

setDisp( spep_4+36, 1, 0);
setScaleKey( spep_4, 1,  2.5, 2.5);
setScaleKey( spep_4+35, 1,  2.0, 2.0);

--setMoveKey(  spep_4+30,    1,   80,  150,   0);
--setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4+20, SE_06);

entryFade( spep_4+34, 2,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setDisp( spep_4+50, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4-1, ryusen, 155);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_03e,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+50, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_4+50, 1, 0);  -- ダメージ振動等

--speff = entryEffect( spep_4, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( spep_4, SE_08);

--playSe( spep_4+85, SE_09);
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

entryFadeBg( spep_4, 0, 50, 0,0, 0, 0, 180);          -- ベース暗め　背景

--entryFlash( (spep_4+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_4+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 40, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+40, ct, 255);
--setEffAlphaKey(spep_4+50, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 335; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end










kamehame_beam = entryEffect( spep_4+40, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+55, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+45, ct, 99, 20);
setEffScaleKey( spep_4+45, ct, 0.1, 0.1);
setEffScaleKey( spep_4+77, ct, 2.4, 2.4);
setEffScaleKey( spep_4+90, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+45, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+90, ct, 0);

playSe( spep_4+48, 1024);

entryFade( spep_4+90, 5, 15, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+90, 1, 0);

removeAllEffect(spep_4+95);

spep_5=spep_4+92+10 --410 469


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( spep_5-1, 1, 1);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+110);

end
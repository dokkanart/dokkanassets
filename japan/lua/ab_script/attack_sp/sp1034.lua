print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150063;
SP_02 = 150012;
SP_03 = 150013;

SP_04 = 3;
SP_05 = 2;


SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 43; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1009; --huru
SE_09 = 1010; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

SP_ATK_3 = 330;
SP_ATK_4 = SP_ATK_3+100;
---------------

------------------
multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setMoveKey(  0,    1,  700,  0,   0);

setVisibleUI(0, 0);
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 30);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------

--changeAnime( 70, 0, 3);                       -- 溜め!

entryEffectLife(  70,   1503, 100,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffectLife(  70,   1502, 100, 0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_03);
playSe( 80, SE_04);

entryFade( 158, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
--entryEffectLife( 90, SP_02, 109, 0x40,  0,  0,  0,  0); 
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.6, 1.6);

cr = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( 170, SE_05);
entryFade( 255, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

setEffScaleKey(	170,cr, 1,1);
setEffScaleKey(	260,cr, 1,1);
--[[
setEffShake( 240, ct, 3, 12);
setEffScaleKey(	243,cr, 1.2,1.2);
setEffScaleKey(	248,cr, 1.2,1.2);
setEffShake( 248, ct, 3, 8);
setEffScaleKey(	250,cr, 1.4,1.4);
setEffScaleKey(	256,cr, 1.4,1.4);
setEffShake( 255, ct, 8, 15);
setEffScaleKey(	258,cr, 2,2);
]]

------------------------------------------------------
-- 移動(110F)
------------------------------------------------------


changeAnime( 260, 0, 31);                                    -- パンチ

--setRotateKey(325, 0, 90);
--setRotateKey(330, 0, 180);
--setRotateKey(335, 0, 270);
--setRotateKey(339, 0, 359);



--P移動
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -400,  450,   128);
setMoveKey(  261,    0,   -400,  450,   128);
setMoveKey(  270,    0,   -100,  200,   48);

setMoveKey(  285,    0,   -50,  150,   48);
setMoveKey(  299,    0,   -50,  150,   48);
--setMoveKey(  305,  0,   -200,  0,   0);
--setMoveKey(  310,  0,   -180,  0,   0);
--setScaleKey( 300,0,1,1);
playSe( 305, SE_06);

--setScaleKey( 306,0,3,3);
--setMoveKey(  318,    0,   -300,  0,   0);

setMoveKey(  309,    0,   -100,  200,   48);
setMoveKey(  310,    0,   -100,  200,   48);
setMoveKey(  318,    0,   -150,  250,   48);

--kamehame_beam = entryEffectLife( 260, SP_03, 109, 0x40,  0,  0,  0,  0);   -- 伸びるかめはめ波
--setEffScaleKey(260,kamehame_beam,2.3,2.3);

playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 280, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

ryusen=entryEffectLife( 260, 920, 59, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, ryusen, 40);
setEffScaleKey( 260, ryusen, 2.0, 2.0);

setShakeChara( 265, 0, 20, 20);

--shuchusen = entryEffectLife( 260, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 260, shuchusen, 1.0, 1.0);
--setEffScaleKey( 300, shuchusen, 1.0, 1.0);
--setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 52, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ct, 32, 5);
setEffAlphaKey(268, ct, 255);
setEffAlphaKey(310, ct, 255);
setEffAlphaKey(320, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(310, ct, 1.3, 1.3);
setEffScaleKey(318, ct, 6.0, 6.0);

playSe( 300, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 321; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,  0, 950,  -850,   -128);
setMoveKey(  SP_dodge+9,  0, 1600,  200,   96);

endPhase(SP_dodge+10);
do return end
else end


entryFade( 325, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  330,  0,  950,  -850,   -128);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
--entryEffect( SP_ATK_3+20, SP_03,   0x40, 0,  0,  0,  0);   -- 迫るかめはめ波
--kamehame_beam3 = entryEffectLife( SP_ATK_3, SP_03, 46, 0x40, 0, 0, 0, 0);
--setEffScaleKey(SP_ATK_3, kamehame_beam3, 1, 1);
--setEffScaleKey(SP_ATK_3+1, kamehame_beam3, 2, 2);
--setEffScaleKey(SP_ATK_3+37, kamehame_beam3, 1, 1);
--setEffScaleKey(SP_ATK_3+40, kamehame_beam3, 3, 3);

--playSe( SP_ATK_3, SE_08);

--end

setDisp( SP_ATK_3, 1, 1);
setDrawFront( SP_ATK_3, 1, 1);
changeAnime( SP_ATK_3, 1, 118);                        -- 気ダメ後ろ向き

setScaleKey( SP_ATK_3-1,    1,  0.7, 0.7);
setScaleKey( SP_ATK_3,    1,  0.7, 0.7);
setScaleKey( SP_ATK_3+6,    1,  1.5, 1.5);

setMoveKey(  SP_ATK_3-1,    1,  235,  0,   0);
setMoveKey(  SP_ATK_3,    1,  700,  0,   0);
setMoveKey(  SP_ATK_3+6,    1,  150,  0,   0);
setMoveKey(  SP_ATK_3+31,    1,   150,  0,   0);
setScaleKey( SP_ATK_3+31,   1,   1.6,  1.6);
playSe( SP_ATK_3+12, SE_01);

--entryFade( SP_ATK_3+27, 10,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( SP_ATK_3+12, SE_09);
-- 敵吹っ飛ぶモーション
--Eやられ

changeAnime( SP_ATK_3+80, 1,  107);--ダメージ
setDamage( SP_ATK_3+44,  1,  0);--ダメージ振動等
setRotateKey( SP_ATK_3+79,  1,  0 );
setRotateKey( SP_ATK_3+80,  1,  0 );
setRotateKey( SP_ATK_3+100,  1,  0 );
setScaleKey( SP_ATK_3+79,   1,   1.6,  1.6);
setScaleKey( SP_ATK_3+80,   1,   1.0,  1.0);
setMoveKey(  SP_ATK_3+79,    1,   150,  0,   0);
setMoveKey(  SP_ATK_3+80, 1,  150,    -100,  32);
setMoveKey(  SP_ATK_3+98, 1,  150,    -130,  -96);

--setScaleKey( SP_ATK_3+35, 1,  1.6, 1.6);
--setScaleKey( SP_ATK_3+44, 1,  0.1, 0.1);
--setScaleKey( SP_ATK_3+28+5, 1,  0.2, 0.2);


-- ** エフェクト等 ** --
--changeAnime( SP_ATK_3+11, 0, 31);                                    -- パンチ


--[[
setScaleKey( SP_ATK_3,   0, 2.0, 2.0);
setScaleKey( SP_ATK_3+1,   0, 1.7, 1.7);
setScaleKey( SP_ATK_3+10,   0, 1.7, 1.7);
setScaleKey( SP_ATK_3+11,   0, 0.5, 0.5);
]]--

--setShakeChara( SP_ATK_3+11, 1, 99, 20);

--殴りエフェクト
entryEffect( SP_ATK_3+11,  4,  0x80,  -1,  0,  150, 50);--HIT
entryEffect( SP_ATK_3+11,  906,  0x80,  -1,  0,  150, 50);
--文字
entryEffect(  SP_ATK_3+30,  SP_01,  0, 1,  0,  0,  150);


entryFadeBg( SP_ATK_3, 4, 99, 4, 10, 10, 10, 150);          -- ベース暗め　背景

ryu2=entryEffectLife( SP_ATK_3, 921, 30, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(SP_ATK_3, ryu2, 220);
setEffScaleKey( SP_ATK_3, ryu2, 1.4, 1.4);
ryu3=entryEffectLife( SP_ATK_3+80, 921, 19, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(SP_ATK_3+80, ryu3, 220);
setEffScaleKey( SP_ATK_3, ryu3, 1.4, 1.4);

--entryFlash( (SP_ATK_3+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_3+15), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_3+25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_3+28), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_3, 10014, 99, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(SP_ATK_3, ct, 99, 20);
setEffScaleKey( SP_ATK_3, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK_3, ct, 70);
setEffAlphaKey(SP_ATK_3, ct, 255);
setEffAlphaKey(SP_ATK_3+20+5, ct, 255);
setEffAlphaKey(SP_ATK_3+25+5, ct, 0);


--プレイヤー側移動
setDisp( SP_ATK_3, 0, 1);


setMoveKey(  SP_ATK_3-1,  0,  950,  -850,   -128);
setMoveKey(  SP_ATK_3,  0, -400,  400,   128);
setMoveKey(  SP_ATK_3+5,  0, -400,  400,   128);
setMoveKey(  SP_ATK_3+10,  0, 0,  100,   80);
setMoveKey(  SP_ATK_3+35,  0, 0,  100,   80);
setMoveKey(  SP_ATK_3+45,  0, 0,  100,   80);
setMoveKey(  SP_ATK_3+80,  0, 0,  100,   80);
setMoveKey(  SP_ATK_3+96,  0, -100,  200,   96);
--setMoveKey(  SP_ATK_3+49,  0, -80,  0,   16);
--changeAnime( SP_ATK_3+36, 0, 31);

setScaleKey( SP_ATK_3+12, 0,  1.3, 1.3);
setScaleKey( SP_ATK_3+80, 0,  1.3, 1.3);
setScaleKey( SP_ATK_3+100, 0,  1.2, 1.2);

setShakeChara(SP_ATK_3+11,0,10,11);
setShakeChara(SP_ATK_3+11,1,10,11);

--entryEffectLife( SP_ATK_3+10, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffectLife( SP_ATK_3+40, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線
entryFade( SP_ATK_3+95, 4,  5, 1, 255, 255, 255, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK_4, 1, 1);
setDisp( SP_ATK_4, 0, 0);

setScaleKey( SP_ATK_4-1,    1,  1.0, 1.0);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4,    1,  50,    0,  -120);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4,  0, -100,  200,   96);
setMoveKey(  SP_ATK_4+1,    0,  -700,    0,  0);

setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);-- 手前ダメージ
entryEffect( SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_4+16,   1,  -60,  -200,  -100);

setRotateKey( SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);
setShake(SP_ATK_4+14,6,15);
setShake(SP_ATK_4+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);

playSe( SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+10);

entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+110);

else
-----------------------------------------
--敵側の攻撃
-----------------------------------------
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 30);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------

--changeAnime( 70, 0, 3);                       -- 溜め!

entryEffectLife(  70,   1503, 100,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffectLife(  70,   1502, 100, 0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_03);
playSe( 80, SE_04);

entryFade( 158, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
--entryEffectLife( 90, SP_02, 109, 0x40,  0,  0,  0,  0); 
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.6, 1.6);

cr = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( 170, SE_05);
entryFade( 255, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

setEffScaleKey(	170,cr, 1,1);
setEffScaleKey(	260,cr, 1,1);
--[[
setEffShake( 240, ct, 3, 12);
setEffScaleKey(	243,cr, 1.2,1.2);
setEffScaleKey(	248,cr, 1.2,1.2);
setEffShake( 248, ct, 3, 8);
setEffScaleKey(	250,cr, 1.4,1.4);
setEffScaleKey(	256,cr, 1.4,1.4);
setEffShake( 255, ct, 8, 15);
setEffScaleKey(	258,cr, 2,2);
]]

------------------------------------------------------
-- 移動(110F)
------------------------------------------------------


changeAnime( 260, 0, 31);                                    -- パンチ

--setRotateKey(325, 0, 90);
--setRotateKey(330, 0, 180);
--setRotateKey(335, 0, 270);
--setRotateKey(339, 0, 359);



--P移動
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -400,  450,   128);
setMoveKey(  261,    0,   -400,  450,   128);
setMoveKey(  270,    0,   -100,  200,   48);

setMoveKey(  285,    0,   -50,  150,   48);
setMoveKey(  299,    0,   -50,  150,   48);
--setMoveKey(  305,  0,   -200,  0,   0);
--setMoveKey(  310,  0,   -180,  0,   0);
--setScaleKey( 300,0,1,1);
playSe( 305, SE_06);

--setScaleKey( 306,0,3,3);
--setMoveKey(  318,    0,   -300,  0,   0);

setMoveKey(  309,    0,   -100,  200,   48);
setMoveKey(  310,    0,   -100,  200,   48);
setMoveKey(  318,    0,   -150,  250,   48);

--kamehame_beam = entryEffectLife( 260, SP_03, 109, 0x40,  0,  0,  0,  0);   -- 伸びるかめはめ波
--setEffScaleKey(260,kamehame_beam,2.3,2.3);

playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 280, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

ryusen=entryEffectLife( 260, 920, 59, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, ryusen, 40);
setEffScaleKey( 260, ryusen, 2.0, 2.0);

setShakeChara( 265, 0, 20, 20);

--shuchusen = entryEffectLife( 260, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 260, shuchusen, 1.0, 1.0);
--setEffScaleKey( 300, shuchusen, 1.0, 1.0);
--setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 52, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ct, 32, 5);
setEffAlphaKey(268, ct, 255);
setEffAlphaKey(310, ct, 255);
setEffAlphaKey(320, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(310, ct, 1.3, 1.3);
setEffScaleKey(318, ct, 6.0, 6.0);

playSe( 300, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 321; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,  0, 950,  -850,   -128);
setMoveKey(  SP_dodge+9,  0, 1600,  200,   96);

endPhase(SP_dodge+10);
do return end
else end


entryFade( 325, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  330,  0,  950,  -850,   -128);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
--entryEffect( SP_ATK_3+20, SP_03,   0x40, 0,  0,  0,  0);   -- 迫るかめはめ波
--kamehame_beam3 = entryEffectLife( SP_ATK_3, SP_03, 46, 0x40, 0, 0, 0, 0);
--setEffScaleKey(SP_ATK_3, kamehame_beam3, 1, 1);
--setEffScaleKey(SP_ATK_3+1, kamehame_beam3, 2, 2);
--setEffScaleKey(SP_ATK_3+37, kamehame_beam3, 1, 1);
--setEffScaleKey(SP_ATK_3+40, kamehame_beam3, 3, 3);

--playSe( SP_ATK_3, SE_08);

--end

setDisp( SP_ATK_3, 1, 1);
setDrawFront( SP_ATK_3, 1, 1);
changeAnime( SP_ATK_3, 1, 118);                        -- 気ダメ後ろ向き

setScaleKey( SP_ATK_3-1,    1,  0.7, 0.7);
setScaleKey( SP_ATK_3,    1,  0.7, 0.7);
setScaleKey( SP_ATK_3+6,    1,  1.5, 1.5);

setMoveKey(  SP_ATK_3-1,    1,  235,  0,   0);
setMoveKey(  SP_ATK_3,    1,  700,  0,   0);
setMoveKey(  SP_ATK_3+6,    1,  150,  0,   0);
setMoveKey(  SP_ATK_3+31,    1,   150,  0,   0);
setScaleKey( SP_ATK_3+31,   1,   1.6,  1.6);
playSe( SP_ATK_3+12, SE_01);

--entryFade( SP_ATK_3+27, 10,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( SP_ATK_3+12, SE_09);
-- 敵吹っ飛ぶモーション
--Eやられ

changeAnime( SP_ATK_3+80, 1,  107);--ダメージ
setDamage( SP_ATK_3+44,  1,  0);--ダメージ振動等
setRotateKey( SP_ATK_3+79,  1,  0 );
setRotateKey( SP_ATK_3+80,  1,  0 );
setRotateKey( SP_ATK_3+100,  1,  0 );
setScaleKey( SP_ATK_3+79,   1,   1.6,  1.6);
setScaleKey( SP_ATK_3+80,   1,   1.0,  1.0);
setMoveKey(  SP_ATK_3+79,    1,   150,  0,   0);
setMoveKey(  SP_ATK_3+80, 1,  150,    -100,  32);
setMoveKey(  SP_ATK_3+98, 1,  150,    -130,  -96);

--setScaleKey( SP_ATK_3+35, 1,  1.6, 1.6);
--setScaleKey( SP_ATK_3+44, 1,  0.1, 0.1);
--setScaleKey( SP_ATK_3+28+5, 1,  0.2, 0.2);


-- ** エフェクト等 ** --
--changeAnime( SP_ATK_3+11, 0, 31);                                    -- パンチ


--[[
setScaleKey( SP_ATK_3,   0, 2.0, 2.0);
setScaleKey( SP_ATK_3+1,   0, 1.7, 1.7);
setScaleKey( SP_ATK_3+10,   0, 1.7, 1.7);
setScaleKey( SP_ATK_3+11,   0, 0.5, 0.5);
]]--

--setShakeChara( SP_ATK_3+11, 1, 99, 20);

--殴りエフェクト
entryEffect( SP_ATK_3+11,  4,  0x80,  -1,  0,  150, 50);--HIT
entryEffect( SP_ATK_3+11,  906,  0x80,  -1,  0,  150, 50);
--文字
question = entryEffect(  SP_ATK_3+30,  SP_01,  0, 1,  0,  0,  150);
setEffMoveKey(  SP_ATK_3+30, question, 0, 150, 0);
setEffMoveKey(  SP_ATK_3+100, question, 0, 150, 0);
setEffScaleKey( SP_ATK_3+30, question, -1, 1 );
setEffScaleKey( SP_ATK_3+100, question, -1, 1 );
setEffRotateKey( SP_ATK_3+30, question, 0 );
setEffRotateKey( SP_ATK_3+100, question, 0 );
setEffAlphaKey( SP_ATK_3+30, question, 255 );
setEffAlphaKey( SP_ATK_3+100, question, 255 );

entryFadeBg( SP_ATK_3, 4, 99, 4, 10, 10, 10, 150);          -- ベース暗め　背景

ryu2=entryEffectLife( SP_ATK_3, 921, 30, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(SP_ATK_3, ryu2, 220);
setEffScaleKey( SP_ATK_3, ryu2, 1.4, 1.4);
ryu3=entryEffectLife( SP_ATK_3+80, 921, 19, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(SP_ATK_3+80, ryu3, 220);
setEffScaleKey( SP_ATK_3, ryu3, 1.4, 1.4);

--entryFlash( (SP_ATK_3+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_3+15), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_3+25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_3+28), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_3, 10014, 99, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(SP_ATK_3, ct, 99, 20);
setEffScaleKey( SP_ATK_3, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK_3, ct, -20);
setEffAlphaKey(SP_ATK_3, ct, 255);
setEffAlphaKey(SP_ATK_3+20+5, ct, 255);
setEffAlphaKey(SP_ATK_3+25+5, ct, 0);


--プレイヤー側移動
setDisp( SP_ATK_3, 0, 1);


setMoveKey(  SP_ATK_3-1,  0,  950,  -850,   -128);
setMoveKey(  SP_ATK_3,  0, -400,  400,   128);
setMoveKey(  SP_ATK_3+5,  0, -400,  400,   128);
setMoveKey(  SP_ATK_3+10,  0, 0,  100,   80);
setMoveKey(  SP_ATK_3+35,  0, 0,  100,   80);
setMoveKey(  SP_ATK_3+45,  0, 0,  100,   80);
setMoveKey(  SP_ATK_3+80,  0, 0,  100,   80);
setMoveKey(  SP_ATK_3+96,  0, -100,  200,   96);
--setMoveKey(  SP_ATK_3+49,  0, -80,  0,   16);
--changeAnime( SP_ATK_3+36, 0, 31);

setScaleKey( SP_ATK_3+12, 0,  1.3, 1.3);
setScaleKey( SP_ATK_3+80, 0,  1.3, 1.3);
setScaleKey( SP_ATK_3+100, 0,  1.2, 1.2);

setShakeChara(SP_ATK_3+11,0,10,11);
setShakeChara(SP_ATK_3+11,1,10,11);

--entryEffectLife( SP_ATK_3+10, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffectLife( SP_ATK_3+40, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線
entryFade( SP_ATK_3+95, 4,  5, 1, 255, 255, 255, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK_4, 1, 1);
setDisp( SP_ATK_4, 0, 0);

setScaleKey( SP_ATK_4-1,    1,  1.0, 1.0);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4,    1,  50,    0,  -120);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4,  0, -100,  200,   96);
setMoveKey(  SP_ATK_4+1,    0,  -700,    0,  0);

setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);-- 手前ダメージ
entryEffect( SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_4+16,   1,  -60,  -200,  -100);

setRotateKey( SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);
setShake(SP_ATK_4+14,6,15);
setShake(SP_ATK_4+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);

playSe( SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+10);

entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+110);
end

print ("[lua]sp0001 end");

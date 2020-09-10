print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150043;
--SP_01 = 100002;

--SP_02 = 150012;
--SP_03 = 150013;

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
SE_13 = 1000; --ドン
SE_14 = 1008; --ボン
SE_15 = 1023; --BOM!!

---------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

SP_ATK_3 = 320;
SP_ATK_4 = SP_ATK_3+100;
SP_ATK_5 = SP_ATK_4+50;
SP_end   = SP_ATK_5+116;
else

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+55;
SP_ATK_2 = SP_ATK_1+45;
SP_ATK_3 = SP_ATK_2+60;
SP_ATK_4 = SP_ATK_3+100;
SP_ATK_5 = SP_ATK_4+50;

end
------------------
multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setMoveKey(  0,    1,  700,  0,   0);


------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 60, 6, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

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
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!

entryEffectLife(  70,   1503, 100,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffectLife(  70,   1502, 100, 0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_03);
playSe( 80, SE_04);

entryFade( 162, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
--entryEffectLife( 90, SP_02, 109, 0x40,  0,  0,  0,  0); 
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ctgogo = entryEffectLife( 92,  190006, 70, 0x100, -1, 0, -100, 501.8 );  --ゴゴゴ

setEffShake(  92,  ctgogo,  70,  10);  --揺れ

setEffMoveKey( 92, ctgogo, -100, 501.8 , 0 );
setEffMoveKey( 162, ctgogo, -100, 492.8 , 0 );

setEffScaleKey( 92, ctgogo, 0.7, 0.7 );
setEffScaleKey( 152, ctgogo, 0.7, 0.7 );
setEffScaleKey( 162, ctgogo, 1.17, 1.17 );

setEffRotateKey(  92,  ctgogo,  0);
setEffRotateKey(  162,  ctgogo,  0);

setEffAlphaKey(  92,  ctgogo,  0);
setEffAlphaKey(  93,  ctgogo,  255);
setEffAlphaKey(  94,  ctgogo,  255);
setEffAlphaKey(  162,  ctgogo,  255);
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

cr = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( 170, SE_05);

entryFade( 252, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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
-- 突進(60F)
------------------------------------------------------
setScaleKey( 260, 0, 2.0, 2.0);
setScaleKey( 319, 0, 2.0, 2.0);
changeAnime( 260, 0, 3); 
--P移動
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  265,    0,   50,  0,   0);
setMoveKey(  275,    0,   0,  0,   0);

setMoveKey(  295,    0,   -150,  0,   0);
--setMoveKey(  305,  0,   -200,  0,   0);
--setMoveKey(  310,  0,   -180,  0,   0);
--setScaleKey( 300,0,1,1);
playSe( 305, SE_06);

--setScaleKey( 306,0,3,3);
--setMoveKey(  318,    0,   -300,  0,   0);
setMoveKey(  305,  0, 700,  0,   0);
setMoveKey(  308,  0, 700,  0,   0);
setMoveKey(  309,  0, -1700,  0,   0);




--kamehame_beam = entryEffectLife( 260, SP_03, 109, 0x40,  0,  0,  0,  0);   -- 伸びるかめはめ波
--setEffScaleKey(260,kamehame_beam,2.3,2.3);

SE0=playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 79, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 20, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 280, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 79, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 265, 0, 20, 50);

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
setEffAlphaKey(295, ct, 255);
setEffAlphaKey(305, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(295, ct, 1.3, 1.3);
setEffScaleKey(305, ct, 6.0, 6.0);

setEffAlphaKey(298,spname, 1);

-- 排球拳(長いので早めに再生しておく)
entryEffect( 300,  SP_01,  0,  -1,  0,  0, 0);--HIT

--playSe( 286, SE_07);
--entryFade( 322, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 排球拳(100F)
------------------------------------------------------
setDisp( SP_ATK_3, 0, 0);
setDisp( SP_ATK_3, 1, 0);

entryFadeBg( SP_ATK_3+1, 0, 95, 10, 0, 0, 0, 255);     -- 黒い　背景

--殴りエフェクト
entryEffect( SP_ATK_3+11,  4,  0,  -1,  0,  -150, -100);--HIT
entryEffect( SP_ATK_3+11,  906,  0,  -1,  0,  -150, -100);
entryEffect(  SP_ATK_3+11,  908,  0,  -1,  0,  -150,  -100);

playSe( SP_ATK_3+11, SE_13);
stopSe(SP_ATK_3+8,SE0,0);
--Eやられ
setDamage( SP_ATK_3+12,  1,  0);--ダメージ振動等

--殴りエフェクト
entryEffect( SP_ATK_3+51,  4,  0,  -1,  0,  -150, 200);--HIT
entryEffect( SP_ATK_3+51,  906,  0,  -1,  0,  -150, 200);
entryEffect(  SP_ATK_3+51,  908,  0,  -1,  0,  -150,  200);


playSe( SP_ATK_3+51, SE_14);
--Eやられ
setDamage( SP_ATK_3+52,  1,  0);--ダメージ振動等

entryFade( SP_ATK_3+90, 4,  5, 1, 0, 0, 0, 255);     

setDisp( SP_ATK_3+95, 0, 0);
setDisp( SP_ATK_3+95, 1, 1);
changeAnime(  SP_ATK_3+95,  1,  8);--モーション


------------------------------------------------------
-- アタック (110F)
------------------------------------------------------

stopBgScroll(SP_ATK_4, 5);
setBgScroll(SP_ATK_4,0);
tat=entryEffectLife( SP_ATK_4, 914, 60, 0x80,  -1,  0,  0,  0);
setEffRotateKey(SP_ATK_4,tat,90);
setEffScaleKey(SP_ATK_4,tat,1.5,1);
entryFadeBg( SP_ATK_4,  3,  60,  10, 2,7,69,255);

changeAnime(  SP_ATK_4,  0,  1);--モーション
setDrawFront( SP_ATK_4, 0, 0);
setDrawFront( SP_ATK_4, 1, 1);
setEnvZoomEnable(  SP_ATK_4,  0);

setMoveKey(  SP_ATK_4,  0,   250,  -200,  -128);
setMoveKey(  SP_ATK_4+1,  0,  -20,  320,  -80);
setMoveKey(  SP_ATK_4+15,  0,  -20,  320,  -80);
setMoveKey(  SP_ATK_4+20,  0,  -20,  285,  -80);
setMoveKey(  SP_ATK_4+25,  0,  -20,  280,  -80);


setMoveKey(  SP_ATK_4,  1,  700,  0,  0);
setMoveKey(  SP_ATK_4+1,  1,  20,  -100,  -100);
setMoveKey(  SP_ATK_4+20,  1,  20,  135,  -100);
setMoveKey(  SP_ATK_4+35,  1,  20,  155,  -100);

playSe( SP_ATK_4+20, 43);
entryEffect( SP_ATK_4+20,  700,  0,  0,  0,  0,  50);
setDisp ( SP_ATK_4+25, 0, 1);
setDisp ( SP_ATK_4+26, 0, 0);
setDisp ( SP_ATK_4+27, 0, 1);
entryKakimoji(  SP_ATK_4+20,  11,  1,  -1,  0,  -110,  280);

setScaleKey( SP_ATK_4,   0, 1.0, 1.0);
setScaleKey( SP_ATK_4+23,   0, 1.0, 1.0);
setScaleKey( SP_ATK_4+28,   0, 1.0, 1.0);
setScaleKey( SP_ATK_4+33,   0, 1.1, 1.1);
changeAnime(  SP_ATK_4+34,  0,  31);--モーション
setScaleKey( SP_ATK_4+34,   0, 0.5, 0.5);
setScaleKey( SP_ATK_4+50,   0, 0.5, 0.5);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+34, 10021, 99, 0, -1, 0, 200, 420); -- bako
setEffShake(SP_ATK_4+34, ct, 99, 35);
setEffScaleKey( SP_ATK_4+34, ct, 2.4, 2.4);
setEffAlphaKey(SP_ATK_4+34, ct, 255);
setEffAlphaKey(SP_ATK_4+34+10+5, ct, 255);
setEffAlphaKey(SP_ATK_4+34+15+5, ct, 0);


pauseChara(SP_ATK_4+28,5)
setMoveKey(  SP_ATK_4+33,  0,  -20,  280,  -80);
setMoveKey(  SP_ATK_4+34,  0,  -20,  270,  -80);
setDrawFront( SP_ATK_4+34, 0, 0);    --
setDrawFront( SP_ATK_4+34, 1, 1)
--dealDamage(  SP_ATK_4+30);
--entryKakimoji(  SP_ATK_4+35,  20,  4,  -1,  0,  -50,  0);--baki
--entryFlashBg(  SP_ATK_4+40,  1,  255,  255,  255);
entryEffect(  SP_ATK_4+34,  4,  0x100,  1,  0,  0,  0);
playSe(SP_ATK_4+34,1025);
entryEffect(  SP_ATK_4+35,  906,  1,  -1,  0,  0,  0);
entryEffect(  SP_ATK_4+35,  908,  1,  1,  0,  0,  0);
setRotateKey( SP_ATK_4+35,  1,  0);
setRotateKey( SP_ATK_4+36,  1,  45);

setScaleKey( SP_ATK_4+35,   1, 1.0, 1.0);
setScaleKey( SP_ATK_4+35,   1, 0.4, 0.4);
changeAnime(  SP_ATK_4+35,  1,  107);--モーション
setMoveKey(  SP_ATK_4+34,  1,  20,  155,  -100);
setMoveKey(  SP_ATK_4+35,  1,  20,  90,  -90);
--setShake(  SP_ATK_4+41,  15,  113);
pauseChara(  SP_ATK_4+37,  10);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 310; --エンドフェイズのフレーム数を置き換える

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
-- 最後の吹っ飛び (110F)
------------------------------------------------------
setDisp( SP_ATK_5, 0, 0);
setMoveKey(  SP_ATK_5,  0, -150,  300,   0);
setMoveKey(  SP_ATK_5+1,    0,  -700,    0,  0);

--changeAnime( SP_ATK_5+1, 1, 107);-- 手前ダメージ
--entryEffect( SP_ATK_5+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_5+1, SE_10);

setMoveKey(  SP_ATK_5,    1,  50,  -100,   -128);
setScaleKey( SP_ATK_5,    1,  1.5, 1.5);
setMoveKey(  SP_ATK_5+1,    1,    0,   0,   128);

setScaleKey( SP_ATK_5+1,    1,  0.1, 0.1);
setMoveKey(  SP_ATK_5+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_5+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_5+16,   1,  -60,  -200,  -100);

setRotateKey( SP_ATK_5,  1,  30 );
setRotateKey( SP_ATK_5+2,  1,  80 );
setRotateKey( SP_ATK_5+4,  1, 120 );
setRotateKey( SP_ATK_5+6,  1, 160 );
setRotateKey( SP_ATK_5+8,  1, 200 );
setRotateKey( SP_ATK_5+10,  1, 260 );
setRotateKey( SP_ATK_5+12,  1, 320 );
setRotateKey( SP_ATK_5+14,  1,   0 );

setShakeChara( SP_ATK_5+15, 1, 5,  10);
setShakeChara( SP_ATK_5+20, 1, 10, 20);
setShake(SP_ATK_5+14,6,15);
setShake(SP_ATK_5+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_5+15, ct, 30, 10);
setEffRotateKey( SP_ATK_5+15, ct, -40);
setEffScaleKey( SP_ATK_5+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_5+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_5+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_5+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_5+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_5+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_5+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_5+15, ct, 255);
setEffAlphaKey( SP_ATK_5+105, ct, 255);
setEffAlphaKey( SP_ATK_5+115, ct, 0);

playSe( SP_ATK_5+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_5, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_5+10);

dealDamage(SP_ATK_5+15);
entryFade( SP_ATK_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK_5+110);

else
-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
setMoveKey( 0,    0,      0,  0,   0);
setMoveKey( 0,    1,      800,  0,   0);

entryFade( 0, 2, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(SP_ATK_0, 0);
changeAnime( SP_ATK_0, 0, 30);                       -- 溜め!
playSe( SP_ATK_0, SE_01);

entryEffect( SP_ATK_0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_ATK_0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_ATK_0,   311, 100, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( SP_ATK_0, aura, 1.5, 1.5);
setShakeChara( SP_ATK_0+15, 0, 49, 5);
--kamehame_beam = entryEffectLife( SP_ATK_0+5, SP_02, 30, 0x40,  0,  0,  0,  0);   -- 伸びるかめはめ波
--setEffScaleKey(SP_ATK_0+5,kamehame_beam,1.3,1.3);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

speff = entryEffect(  SP_ATK_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_ATK_1, SE_05);

spname = entryEffect( SP_ATK_1+10, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
--entryFlash( (SP_ATK_1+10), 1, fcolor_r, fcolor_g, fcolor_b, 100);
--entryFlash( (SP_ATK_1+22), 1, fcolor_r, fcolor_g, fcolor_b, 100);

--entryFlash( (SP_ATK_1+36), 1, fcolor_r, fcolor_g, fcolor_b, 100);
--entryFlash( (SP_ATK_1+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (SP_ATK_1+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setMoveKey(  SP_ATK_1,    0,   0,  0,   0);
setMoveKey(  SP_ATK_1+1,    0,   -600,  0,   0);
setScaleKey( SP_ATK_1, 0,  1.5, 1.5);
setScaleKey( SP_ATK_1+1, 0,  2.0, 2.0);

setEffAlphaKey( (SP_ATK_1), speff, 255);
setEffAlphaKey( (SP_ATK_1+45), speff, 255);
setEffAlphaKey( SP_ATK_1+47, speff, 0);
--entryFade( SP_ATK_1+45, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

--P移動
setScaleKey( SP_ATK_2, 0, 2.0, 2.0);

changeAnime( SP_ATK_2, 0, 3);

setMoveKey(  SP_ATK_2,    0,   -600,  0,   0);
setMoveKey(  SP_ATK_2+5,    0,   50,  0,   0);
setMoveKey(  SP_ATK_2+15,    0,   0,  0,   0);

setMoveKey(  SP_ATK_2+35,  0,   -100,  0,   0);

playSe( SP_ATK_2+40, SE_06);

setMoveKey(  SP_ATK_2+45,  0,   700,  0,   0);
setMoveKey(  SP_ATK_2+48,  0,   700,  0,   0);
setMoveKey(  SP_ATK_2+49,  0,   -1700,  0,   0);


SE0=playSe(SP_ATK_2, SE_07);

spname = entryEffect( SP_ATK_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

--entryFade( SP_ATK_2+5, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_ATK_2, 0, 79, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_ATK_2, 0, 20, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_ATK_2+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_ATK_2, 920, 79, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_ATK_2+5, 0, 20, 50);

--shuchusen = entryEffectLife( SP_ATK_2, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( SP_ATK_2, shuchusen, 1.0, 1.0);
--setEffScaleKey( SP_ATK_2+40, shuchusen, 1.0, 1.0);
--setEffScaleKey( SP_ATK_2+46, shuchusen, 2.0, 2.0);

--entryFlash( (SP_ATK_2+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (SP_ATK_2+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (SP_ATK_2+90), 1, fcolor_r, fcolor_g, fcolor_b, 255);
--playSe( SP_ATK_2+90, SE_06);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_ATK_2+8, ct, 32, 5);
setEffAlphaKey(SP_ATK_2+8, ct, 255);
setEffAlphaKey(SP_ATK_2+35, ct, 255);
setEffAlphaKey(SP_ATK_2+45, ct, 0);
setEffScaleKey(SP_ATK_2+8, ct, 0.0, 0.0);
setEffScaleKey(SP_ATK_2+12, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_2+35, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_2+45, ct, 6.0, 6.0);
setEffAlphaKey(SP_ATK_2+48,spname,1);

onetwo = entryEffect( SP_ATK_2+40,  SP_01,  0,  -1,  0,  0, 0);--HIT
setEffScaleKey(SP_ATK_2+40,onetwo, -1, 1);

--entryFade( SP_ATK_2+64, 5, 8, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 排球拳(100F)
------------------------------------------------------
setDisp( SP_ATK_3, 0, 0);
setDisp( SP_ATK_3, 1, 0);

entryFadeBg( SP_ATK_3+1, 0, 95, 10, 0, 0, 0, 255);     -- 黒い　背景

--殴りエフェクト
entryEffect( SP_ATK_3+11,  4,  0,  -1,  0,  150, -100);--HIT
entryEffect( SP_ATK_3+11,  906,  0,  -1,  0,  150, -100);
entryEffect(  SP_ATK_3+11,  908,  0,  -1,  0,  150,  -100);

playSe( SP_ATK_3+11, SE_13);
stopSe(SP_ATK_3+8,SE0,0);
--Eやられ
setDamage( SP_ATK_3+12,  1,  0);--ダメージ振動等

--殴りエフェクト
entryEffect( SP_ATK_3+51,  4,  0,  -1,  0,  150, 200);--HIT
entryEffect( SP_ATK_3+51,  906,  0,  -1,  0,  150, 200);
entryEffect(  SP_ATK_3+51,  908,  0,  -1,  0,  150,  200);


playSe( SP_ATK_3+51, SE_14);
--Eやられ
setDamage( SP_ATK_3+52,  1,  0);--ダメージ振動等

entryFade( SP_ATK_3+90, 4,  5, 1, 0, 0, 0, 255);     

setDisp( SP_ATK_3+95, 0, 0);
setDisp( SP_ATK_3+95, 1, 1);
changeAnime(  SP_ATK_3+95,  1,  8);--モーション

------------------------------------------------------
-- アタック (110F)
------------------------------------------------------

stopBgScroll(SP_ATK_4, 5);
setBgScroll(SP_ATK_4,0);
tat=entryEffectLife( SP_ATK_4, 914, 60, 0x80,  -1,  0,  0,  0);
setEffRotateKey(SP_ATK_4,tat,90);
setEffScaleKey(SP_ATK_4,tat,1.5,1);
entryFadeBg( SP_ATK_4,  3,  60,  10, 2,7,69,255);

changeAnime(  SP_ATK_4,  0,  1);--モーション
setDrawFront( SP_ATK_4, 0, 0);
setDrawFront( SP_ATK_4, 1, 1);
setEnvZoomEnable(  SP_ATK_4,  0);

setMoveKey(  SP_ATK_4,  0,   250,  -200,  -128);
setMoveKey(  SP_ATK_4+1,  0,  -120,  320,  -80);
setMoveKey(  SP_ATK_4+15,  0,  -120,  320,  -80);
setMoveKey(  SP_ATK_4+20,  0,  -120,  285,  -80);
setMoveKey(  SP_ATK_4+25,  0,  -120,  280,  -80);


setMoveKey(  SP_ATK_4,  1,  700,  0,  0);
setMoveKey(  SP_ATK_4+1,  1,  -80,  -100,  -100);
setMoveKey(  SP_ATK_4+20,  1,  -80,  135,  -100);
setMoveKey(  SP_ATK_4+35,  1,  -80,  155,  -100);

playSe( SP_ATK_4+20, 43);
entryEffect( SP_ATK_4+20,  700,  0,  0,  0,  0,  50);
setDisp ( SP_ATK_4+25, 0, 1);
setDisp ( SP_ATK_4+26, 0, 0);
setDisp ( SP_ATK_4+27, 0, 1);
entryKakimoji(  SP_ATK_4+20,  11,  1,  -1,  0,  110,  280);

setScaleKey( SP_ATK_4,   0, 1.0, 1.0);
setScaleKey( SP_ATK_4+23,   0, 1.0, 1.0);
setScaleKey( SP_ATK_4+28,   0, 1.0, 1.0);
setScaleKey( SP_ATK_4+33,   0, 1.1, 1.1);
changeAnime(  SP_ATK_4+34,  0,  31);--モーション
setScaleKey( SP_ATK_4+34,   0, 0.5, 0.5);
setScaleKey( SP_ATK_4+50,   0, 0.5, 0.5);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+34, 10021, 99, 0, -1, 0, 150, 420); -- bako
setEffShake(SP_ATK_4+34, ct, 99, 35);
setEffScaleKey( SP_ATK_4+34, ct, 2.4, 2.4);
setEffAlphaKey(SP_ATK_4+34, ct, 255);
setEffAlphaKey(SP_ATK_4+34+10+5, ct, 255);
setEffAlphaKey(SP_ATK_4+34+15+5, ct, 0);


pauseChara(SP_ATK_4+28,5)
setMoveKey(  SP_ATK_4+33,  0,  -120,  280,  -80);
setMoveKey(  SP_ATK_4+34,  0,  -120,  270,  -80);
setDrawFront( SP_ATK_4+34, 0, 0);    --
setDrawFront( SP_ATK_4+34, 1, 1)
--dealDamage(  SP_ATK_4+30);
entryKakimoji(  SP_ATK_4+35,  20,  4,  -1,  0,  -50,  0);--baki
--entryFlashBg(  SP_ATK_4+40,  1,  255,  255,  255);
entryEffect(  SP_ATK_4+34,  4,  0x100,  1,  0,  0,  0);
playSe(SP_ATK_4+34,1025);
entryEffect(  SP_ATK_4+35,  906,  1,  -1,  0,  0,  0);
entryEffect(  SP_ATK_4+35,  908,  1,  1,  0,  0,  0);
setRotateKey( SP_ATK_4+35,  1,  0);
setRotateKey( SP_ATK_4+36,  1,  45);

setScaleKey( SP_ATK_4+35,   1, 1.0, 1.0);
setScaleKey( SP_ATK_4+35,   1, 0.4, 0.4);
changeAnime(  SP_ATK_4+35,  1,  107);--モーション
setMoveKey(  SP_ATK_4+34,  1,  -80,  155,  -100);
setMoveKey(  SP_ATK_4+35,  1,  -80,  90,  -90);
--setShake(  SP_ATK_4+41,  15,  113);
pauseChara(  SP_ATK_4+37,  10);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 155; --エンドフェイズのフレーム数を置き換える

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
setDisp( SP_ATK_5, 0, 0);
setMoveKey(  SP_ATK_5,  0, -150,  300,   0);
setMoveKey(  SP_ATK_5+1,    0,  -700,    0,  0);

playSe( SP_ATK_5+1, SE_10);

setMoveKey(  SP_ATK_5,    1,  50,  -100,   -128);
setScaleKey( SP_ATK_5,    1,  1.5, 1.5);
setMoveKey(  SP_ATK_5+1,    1,    0,   0,   128);

setScaleKey( SP_ATK_5+1,    1,  0.1, 0.1);
setMoveKey(  SP_ATK_5+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_5+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK_5+16,   1,  -60,  -200,  -100);

setRotateKey( SP_ATK_5,  1,  30 );
setRotateKey( SP_ATK_5+2,  1,  80 );
setRotateKey( SP_ATK_5+4,  1, 120 );
setRotateKey( SP_ATK_5+6,  1, 160 );
setRotateKey( SP_ATK_5+8,  1, 200 );
setRotateKey( SP_ATK_5+10,  1, 260 );
setRotateKey( SP_ATK_5+12,  1, 320 );
setRotateKey( SP_ATK_5+14,  1,   0 );

setShakeChara( SP_ATK_5+15, 1, 5,  10);
setShakeChara( SP_ATK_5+20, 1, 10, 20);
setShake(SP_ATK_5+14,6,15);
setShake(SP_ATK_5+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_5+15, ct, 30, 10);
setEffRotateKey( SP_ATK_5+15, ct, -40);
setEffScaleKey( SP_ATK_5+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_5+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_5+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_5+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_5+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_5+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_5+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_5+15, ct, 255);
setEffAlphaKey( SP_ATK_5+105, ct, 255);
setEffAlphaKey( SP_ATK_5+115, ct, 255);

playSe( SP_ATK_5+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_5, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_5+10);

entryFade( SP_ATK_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_5+110);
end

print ("[lua]sp0001 end");
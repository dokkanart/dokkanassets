print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--[[
SP_01 = 150018;
SP_03 = 150019;
SP_04 = 150020;
SP_05 = 150020;
SP_06 = 150020;
SP_07 = 150021;
--]]

SP_03 = 150000
SP_04 = 41
SP_05 = 30
SP_06 = 100002
SP_07 = 5

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 43; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1031; --huru
SE_09 = 1032; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;


SP_ATK01 = 314;
SP_ATK02 = 435;
SP_end   = SP_ATK02+116;

--[[
---------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

SP_ATK01 = 314;
SP_ATK02 = 435;
SP_end   = SP_ATK02+116;


else

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+55;
SP_ATK_2 = SP_ATK_1+45;
SP_ATK01 = SP_ATK_2+70;
SP_ATK02 = 302;
SP_end   = SP_ATK02+116;



end
--]]
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

entryFade( 62, 6, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
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
--changeAnime( 70, 0, 30);                       -- 溜め!

--entryEffectLife( 70, SP_01, 109, 0x40,  0,  0,  0,  0);   -- タメ

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--entryEffectLife( 70, SP_01, 109, 0x40,  0,  0,  0,  0);   -- タメ

speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff1, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_03);
playSe( 80, SE_04);

entryFade( 162, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ctgogo = entryEffectLife( 92,  190006, 70, 0x100, -1, 0, 0, 516.8 );  --ゴゴゴ

setEffShake(  92,  ctgogo,  70,  10);  --揺れ

setEffMoveKey( 92, ctgogo, 0, 516.8 , 0 );
setEffMoveKey( 162, ctgogo, 0, 516.8 , 0 );

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

--changeAnime( 170, 0, 30);   -- 溜め!

cr = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( 170, SE_05);

entryFade( 252, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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
-- カメハメハ発射(110F)
------------------------------------------------------

-- ** エフェクト等 ** --
entryFadeBg( 257, 0, 129, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 255, 0, 0, 250);     -- 青い　背景


changeAnime( 260, 0, 30);                                    -- かめはめ発射ポーズ
setScaleKey( 259,   0, 1.0, 1.0);
setScaleKey( 280,   0, 2, 2);

ran = entryEffectLife( 260, 921, 23, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 260, ran, 180);

--P移動（突進）
SE0=playSe( 260, SE_07);
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,    -150,  0,   0);
setMoveKey(  280,  0,   500,  140,   -128);
--playSe( 280, SE_06);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade(280, 3, 4, 2, 0, 0, 0, 255);     -- white fade

----------------------------------------------------

setMoveKey(  284,  0,   500,  140,   0);
setMoveKey(  285,  0,   -700,  800,   0);
setScaleKey( 284, 0, 3, 3);
setScaleKey( 285, 0, 1, 1);
changeAnime( 285, 0, 31);   

sen = entryEffectLife( 287, 920, 27, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 287, sen, 45);
setEffScaleKey(287, sen, 1.5,1,5);

--移動
setMoveKey(  290,    0,   -700,  800,   0);
setMoveKey(  310,    0,   700,  -800,   -128);


setEffAlphaKey( 260, spname, 255);
setEffAlphaKey( 310, spname, 255);
setEffAlphaKey( 312, spname, 0);



entryFade(310, 0, 4, 2, 255, 255, 255, 255);     -- white fade
----------------------------------------------------
--playSe( 300, SE_07);

------------------------------------------------------
-- 攻撃(100F)
------------------------------------------------------
changeAnime( SP_ATK01, 0, 31);                                    -- かめはめ発射ポーズ
setDisp( SP_ATK01, 0, 0);
setDisp( SP_ATK01, 1, 1);
changeAnime( SP_ATK01, 1, 104);                     -- ガード
setMoveKey(  SP_ATK01,    1,  0,  0,   -100);
setMoveKey(  SP_ATK01+15,  1,  50,  0,   -128);

--playSe( SP_ATK01+30, SE_07);


-- 敵吹っ飛ぶモーション

setMoveKey(  SP_ATK01+110-25+10, 1, 0,  0,  -128);
changeAnime( SP_ATK01+92-25+7, 1, 108);
entryEffectLife( SP_ATK01+110-25+10, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め
setMoveKey(  SP_ATK01+118-25+10, 1, 400,    0,  -50);
setDamage(  SP_ATK01+92+17,  1,  0);   --ダメージ振動等


--攻撃演出--

-- ** エフェクト等 ** --
setShakeChara( SP_ATK01, 1, 99, 20);
entryFadeBg( SP_ATK01, 0, 36, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( SP_ATK01, 921, 36, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (SP_ATK01+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage(  SP_ATK01+64-25,  1,  0);   --ダメージ振動等

entryEffectLife( SP_ATK01+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
eff01 = entryEffect( SP_ATK01+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト
setEffScaleKey( SP_ATK01+35, eff01,1,2);--サイズ
setEffRotateKey(SP_ATK01+35, eff01,-10);--角度
--entryFlashBg( (SP_ATK01+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
stopSe(  SP_ATK01+28,  SE0,  4);  --SE止め
changeAnime( SP_ATK01+36, 1, 106);--やられ   
playSe( SP_ATK01+35, SE_09);
entryFadeBg( SP_ATK01+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll(SP_ATK01+36,7);


--2撃目--
entryEffectLife( SP_ATK01+43-25, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+43-25, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+43-25, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+43-25, eff02,-70);--角度
--entryFlashBg( (SP_ATK01+43-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+43-25, SE_08);
changeAnime( SP_ATK01+43-25, 1, 105);--やられ 
setShake( SP_ATK01+43-25, 3, 14);
setMoveKey(  SP_ATK01+43-25, 1, 0,  0,  -50);
setMoveKey(  SP_ATK01+44-25, 1, 50,  -50,  -60);


--2撃目--
entryEffectLife( SP_ATK01+50-25, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+50-25, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+50-25, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+50-25, eff02,70);--角度
--entryFlashBg( (SP_ATK01+50-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+50-25, SE_08);
changeAnime( SP_ATK01+50-25, 1, 105);--やられ 
setShake( SP_ATK01+50-25, 3, 14);
setMoveKey(  SP_ATK01+50-25, 1, 0,  0,  -60);
setMoveKey(  SP_ATK01+51-25, 1, 50,  -50,  -80);

eff03 = entryEffect( SP_ATK01+57-25, SP_04,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( SP_ATK01+57-25, eff03, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+57-25, eff03, -80);--角度
playSe( SP_ATK01+57-25, SE_09);
changeAnime( SP_ATK01+57-25, 1, 108);--やられ 
setShake( SP_ATK01+57-25, 3, 14);
setMoveKey(  SP_ATK01+57-25, 1, 50,  -50,  -128);
setMoveKey(  SP_ATK01+58-25, 1, -80,  30,  -128);

eff04 = entryEffect( SP_ATK01+65-25, SP_04,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( SP_ATK01+65-25, eff04, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+65-25, eff04, 45);--角度
playSe( SP_ATK01+65-25, SE_08);
changeAnime( SP_ATK01+65-25, 1, 106);--やられ 
setShake( SP_ATK01+65-25, 3, 14);
setMoveKey(  SP_ATK01+65-25, 1, -80,  30,  -128);
setMoveKey(  SP_ATK01+66-25, 1, 40,  -35,  -128);

eff05 = entryEffect( SP_ATK01+72-25, SP_04,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+72-25, eff05, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+72-25, eff05, -100);--角度
--entryFlashBg( (SP_ATK01+72-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+72-25, SE_09);
setShake( SP_ATK01+72-25, 3, 14);
setMoveKey(  SP_ATK01+72-25, 1, 40,  -35,  -128);
setMoveKey(  SP_ATK01+73-25, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_ATK01+76-25, SP_04,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+76-25, eff06, 0.4,2);--サイズ
setEffRotateKey(SP_ATK01+76-25, eff06, 130);--角度
playSe( SP_ATK01+76-25, SE_08);
changeAnime( SP_ATK01+76-25, 1, 105);--やられ 
setShake( SP_ATK01+76-25, 3, 14);
setMoveKey(  SP_ATK01+76-25, 1, 90,  -90,  -128);
setMoveKey(  SP_ATK01+77-25, 1, -60, 80,  -128);

eff07 = entryEffect( SP_ATK01+80-25, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+80-25, eff07, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+80-25, eff07, 88);--角度
playSe( SP_ATK01+80-25, SE_08);
--entryFlashBg( (SP_ATK01+80-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+80-25, 1, 106);--やられ 
setShake( SP_ATK01+80-25, 3, 14);
setMoveKey(  SP_ATK01+80-25, 1, -60, 80,  -128);
setMoveKey(  SP_ATK01+81-25, 1, 80,  60,  -128);



eff08 = entryEffect( SP_ATK01+91-18, SP_07,  0, -1,  0,  0,  0);   -- 攻撃3
playSe( SP_ATK01+91-18, SE_09);
playSe( SP_ATK01+91-18, SE_08);
setShake( SP_ATK01+91-18, 3, 14);
entryFadeBg( SP_ATK01+92-18, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_ATK01+91-18, 906, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffectLife( SP_ATK01+91-18, 908, 32, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFlashBg( SP_ATK01+92-18, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_ATK01+94-18, 1, 255, 255, 255, 100);
setMoveKey(  SP_ATK01+92-18, 1, 0,  0,  -128);
pauseAll(SP_ATK01+92-18,3);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK01, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK01, ct, 81, 20);
setEffScaleKey( SP_ATK01, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK01, ct, 70);
setEffAlphaKey(SP_ATK01, ct, 255);
setEffAlphaKey(SP_ATK01+70-25, ct, 255);
setEffAlphaKey(SP_ATK01+92-25, ct, 0);

entryFadeBg( SP_ATK01+92-18, 3, 5, 4, 255, 0, 0, 255); 

entryFade( 429, 2, 3, 1, fcolor_r, fcolor_g, fcolor_b, 255); 

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

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
--setDisp( SP_ATK02, 1, 1);
setMoveKey(  SP_ATK02,    1,  600,    0,  50);
setMoveKey(  SP_ATK02+1,    1,    0,   0,   128);

setScaleKey( SP_ATK02,    1,  2.5, 2.5);
setScaleKey( SP_ATK02+1,    1,  1, 1);

changeAnime( SP_ATK02+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK02+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK02+9, SE_10);

setMoveKey(  SP_ATK02+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK02+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK02+16,   1,  -60,  -200,  -100);

setShakeChara( SP_ATK02+16, 1, 5,  10);
setShakeChara( SP_ATK02+21, 1, 10, 20);
setShake(SP_ATK02+14,6,15);
setShake(SP_ATK02+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_ATK02+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_ATK02+16, ct, 30, 10);
setEffRotateKey( SP_ATK02+16, ct, -40);
setEffScaleKey( SP_ATK02+16, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+17, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK02+18, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+19, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+20, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+21, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK02+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK02+16, ct, 255);
setEffAlphaKey( SP_ATK02+106, ct, 255);
setEffAlphaKey( SP_ATK02+116, ct, 0);

playSe( SP_ATK02+4, SE_11);
shuchusen = entryEffectLife( SP_ATK02+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK02+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK02+15);
entryFade( SP_ATK02+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK02+110);

else
-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
--[[
setMoveKey( 0,    0,      0,  0,   0);
setMoveKey( 0,    1,      800,  0,   0);

entryFade( 0, 2, 4, 8, fcolor_r, fcolor_g, fcolor_b, 120);     -- white fade
--]]
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(SP_ATK_0, 0);
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 6, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
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
--changeAnime( 70, 0, 30);                       -- 溜め!

--entryEffectLife( 70, SP_01, 109, 0x40,  0,  0,  0,  0);   -- タメ

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--entryEffectLife( 70, SP_01, 109, 0x40,  0,  0,  0,  0);   -- タメ

--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff1, 4, 5);                           -- セリフ差し替え
--]]

playSe( 70, SE_03);
playSe( 80, SE_04);

entryFade( 162, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ctgogo = entryEffectLife( 92,  190006, 70, 0x100, -1, 0, 0, 516.8 );  --ゴゴゴ

setEffShake(  92,  ctgogo,  70,  10);  --揺れ

setEffMoveKey( 92, ctgogo, 0, 516.8 , 0 );
setEffMoveKey( 162, ctgogo, 0, 516.8 , 0 );

setEffScaleKey( 92, ctgogo, -0.7, 0.7 );
setEffScaleKey( 152, ctgogo, -0.7, 0.7 );
setEffScaleKey( 162, ctgogo, -1.17, 1.17 );

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

--changeAnime( 170, 0, 30);   -- 溜め!

cr = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( 170, SE_05);

entryFade( 252, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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
-- カメハメハ発射(110F)
------------------------------------------------------

-- ** エフェクト等 ** --
entryFadeBg( 257, 0, 129, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 255, 0, 0, 250);     -- 青い　背景


changeAnime( 260, 0, 30);                                    -- かめはめ発射ポーズ
setScaleKey( 259,   0, 1.0, 1.0);
setScaleKey( 280,   0, 2, 2);

ran = entryEffectLife( 260, 921, 23, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 260, ran, 180);


--P移動（突進）
SE0=playSe( 260, SE_07);
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,    -150,  0,   0);
setMoveKey(  280,  0,   500,  140,   -128);
--playSe( 280, SE_06);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade(280, 3, 4, 2, 0, 0, 0, 255);     -- white fade
----------------------------------------------------

setMoveKey(  284,  0,   500,  140,   0);
setMoveKey(  285,  0,   -700,  800,   0);
setScaleKey( 284, 0, 3, 3);
setScaleKey( 285, 0, 1, 1);
changeAnime( 285, 0, 31);   

sen = entryEffectLife( 287, 920, 27, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 287, sen, 45);
setEffScaleKey(287, sen, 1.5,1,5);

--移動
setMoveKey(  290,    0,   -700,  800,   0);
setMoveKey(  310,    0,   700,  -800,   -128);


setEffAlphaKey( 260, spname, 255);
setEffAlphaKey( 310, spname, 255);
setEffAlphaKey( 312, spname, 0);



entryFade(310, 0, 4, 2, 255, 255, 255, 255);     -- white fade
----------------------------------------------------
--playSe( 300, SE_07);

------------------------------------------------------
-- 攻撃(100F)
------------------------------------------------------
changeAnime( SP_ATK01, 0, 31);                                    -- かめはめ発射ポーズ
setDisp( SP_ATK01, 0, 0);
setDisp( SP_ATK01, 1, 1);
changeAnime( SP_ATK01, 1, 104);                     -- ガード
setMoveKey(  SP_ATK01,    1,  0,  0,   -100);
setMoveKey(  SP_ATK01+15,  1,  50,  0,   -128);

--playSe( SP_ATK01+30, SE_07);


-- 敵吹っ飛ぶモーション

setMoveKey(  SP_ATK01+110-25+10, 1, 0,  0,  -128);
changeAnime( SP_ATK01+92-25+7, 1, 108);
entryEffectLife( SP_ATK01+110-25+10, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め
setMoveKey(  SP_ATK01+118-25+10, 1, 400,    0,  -50);
setDamage(  SP_ATK01+92+17,  1,  0);   --ダメージ振動等


--攻撃演出--

-- ** エフェクト等 ** --
setShakeChara( SP_ATK01, 1, 99, 20);
entryFadeBg( SP_ATK01, 0, 36, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( SP_ATK01, 921, 36, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (SP_ATK01+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage(  SP_ATK01+64-25,  1,  0);   --ダメージ振動等

entryEffectLife( SP_ATK01+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
eff01 = entryEffect( SP_ATK01+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト
setEffScaleKey( SP_ATK01+35, eff01,1,2);--サイズ
setEffRotateKey(SP_ATK01+35, eff01,-10);--角度
--entryFlashBg( (SP_ATK01+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+36, 1, 106);--やられ   
stopSe(  SP_ATK01+28,  SE0,  4);  --SE止め
playSe( SP_ATK01+35, SE_09);
entryFadeBg( SP_ATK01+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll(SP_ATK01+36,7);


--2撃目--
entryEffectLife( SP_ATK01+43-25, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+43-25, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+43-25, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+43-25, eff02,-70);--角度
--entryFlashBg( (SP_ATK01+43-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+43-25, SE_08);
changeAnime( SP_ATK01+43-25, 1, 105);--やられ 
setShake( SP_ATK01+43-25, 3, 14);
setMoveKey(  SP_ATK01+43-25, 1, 0,  0,  -50);
setMoveKey(  SP_ATK01+44-25, 1, 50,  -50,  -60);


--2撃目--
entryEffectLife( SP_ATK01+50-25, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+50-25, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+50-25, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+50-25, eff02,70);--角度
--entryFlashBg( (SP_ATK01+50-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+50-25, SE_08);
changeAnime( SP_ATK01+50-25, 1, 105);--やられ 
setShake( SP_ATK01+50-25, 3, 14);
setMoveKey(  SP_ATK01+50-25, 1, 0,  0,  -60);
setMoveKey(  SP_ATK01+51-25, 1, 50,  -50,  -80);

eff03 = entryEffect( SP_ATK01+57-25, SP_04,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( SP_ATK01+57-25, eff03, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+57-25, eff03, -80);--角度
playSe( SP_ATK01+57-25, SE_09);
changeAnime( SP_ATK01+57-25, 1, 108);--やられ 
setShake( SP_ATK01+57-25, 3, 14);
setMoveKey(  SP_ATK01+57-25, 1, 50,  -50,  -128);
setMoveKey(  SP_ATK01+58-25, 1, -80,  30,  -128);

eff04 = entryEffect( SP_ATK01+65-25, SP_04,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( SP_ATK01+65-25, eff04, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+65-25, eff04, 45);--角度
playSe( SP_ATK01+65-25, SE_08);
changeAnime( SP_ATK01+65-25, 1, 106);--やられ 
setShake( SP_ATK01+65-25, 3, 14);
setMoveKey(  SP_ATK01+65-25, 1, -80,  30,  -128);
setMoveKey(  SP_ATK01+66-25, 1, 40,  -35,  -128);

eff05 = entryEffect( SP_ATK01+72-25, SP_04,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+72-25, eff05, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+72-25, eff05, -100);--角度
--entryFlashBg( (SP_ATK01+72-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+72-25, SE_09);
setShake( SP_ATK01+72-25, 3, 14);
setMoveKey(  SP_ATK01+72-25, 1, 40,  -35,  -128);
setMoveKey(  SP_ATK01+73-25, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_ATK01+76-25, SP_04,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+76-25, eff06, 0.4,2);--サイズ
setEffRotateKey(SP_ATK01+76-25, eff06, 130);--角度
playSe( SP_ATK01+76-25, SE_08);
changeAnime( SP_ATK01+76-25, 1, 105);--やられ 
setShake( SP_ATK01+76-25, 3, 14);
setMoveKey(  SP_ATK01+76-25, 1, 90,  -90,  -128);
setMoveKey(  SP_ATK01+77-25, 1, -60, 80,  -128);

eff07 = entryEffect( SP_ATK01+80-25, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( SP_ATK01+80-25, eff07, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+80-25, eff07, 88);--角度
playSe( SP_ATK01+80-25, SE_08);
--entryFlashBg( (SP_ATK01+80-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+80-25, 1, 106);--やられ 
setShake( SP_ATK01+80-25, 3, 14);
setMoveKey(  SP_ATK01+80-25, 1, -60, 80,  -128);
setMoveKey(  SP_ATK01+81-25, 1, 80,  60,  -128);



eff08 = entryEffect( SP_ATK01+91-18, SP_07,  0, -1,  0,  0,  0);   -- 攻撃3
playSe( SP_ATK01+91-18, SE_09);
playSe( SP_ATK01+91-18, SE_08);
setShake( SP_ATK01+91-18, 3, 14);
entryFadeBg( SP_ATK01+92-18, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_ATK01+91-18, 906, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffectLife( SP_ATK01+91-18, 908, 32, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFlashBg( SP_ATK01+92-18, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_ATK01+94-18, 1, 255, 255, 255, 100);
setMoveKey(  SP_ATK01+92-18, 1, 0,  0,  -128);
pauseAll(SP_ATK01+92-18,3);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK01, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK01, ct, 81, 20);
setEffScaleKey( SP_ATK01, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK01, ct, -70);
setEffAlphaKey(SP_ATK01, ct, 255);
setEffAlphaKey(SP_ATK01+70-25, ct, 255);
setEffAlphaKey(SP_ATK01+92-25, ct, 0);

entryFadeBg( SP_ATK01+92-18, 3, 5, 4, 255, 0, 0, 255); 

entryFade( 429, 2, 3, 1, fcolor_r, fcolor_g, fcolor_b, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 321; --エンドフェイズのフレーム数を置き換える

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
--setDisp( SP_ATK02, 1, 1);
setMoveKey(  SP_ATK02,    1,  600,    0,  50);
setMoveKey(  SP_ATK02+1,    1,    0,   0,   128);

setScaleKey( SP_ATK02,    1,  2.5, 2.5);
setScaleKey( SP_ATK02+1,    1,  1, 1);

changeAnime( SP_ATK02+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK02+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK02+9, SE_10);

setMoveKey(  SP_ATK02+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK02+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK02+16,   1,  -60,  -200,  -100);

setShakeChara( SP_ATK02+16, 1, 5,  10);
setShakeChara( SP_ATK02+21, 1, 10, 20);
setShake(SP_ATK02+14,6,15);
setShake(SP_ATK02+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_ATK02+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_ATK02+16, ct, 30, 10);
setEffRotateKey( SP_ATK02+16, ct, -40);
setEffScaleKey( SP_ATK02+16, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+17, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK02+18, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+19, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+20, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+21, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK02+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK02+16, ct, 255);
setEffAlphaKey( SP_ATK02+106, ct, 255);
setEffAlphaKey( SP_ATK02+116, ct, 0);

playSe( SP_ATK02+4, SE_11);
shuchusen = entryEffectLife( SP_ATK02+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK02+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK02+15);
entryFade( SP_ATK02+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK02+110);

end

print ("[lua]sp0001 end");

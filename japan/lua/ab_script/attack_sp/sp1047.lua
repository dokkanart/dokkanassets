print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--SP_01 = 100006
--SP_02 = 150041;
SP_01 = 160005;
SP_02 = 160009;

SP_04 = 3;
SP_05 = 2;


SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 43; --発射
SE_07 = 1018; --のびる発射 1022
SE_08 = 1009; --huru
SE_09 = 1027; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

--[[
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


else

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+55;
SP_ATK_2 = SP_ATK_1+45;
SP_ATK_3 = SP_ATK_2+70;
SP_ATK_4 = SP_ATK_3+48;

end
--]]


SP_ATK_3 = 340;
SP_ATK_4 = SP_ATK_3+61+44;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setMoveKey(  0,    1,  700,  0,   0);

SP_start = -60;

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------

setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
entryFadeBg( SP_start+  70, 30, 109, 10, 10, 10, 10, 155);       -- ベース暗め　背景

speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( SP_start+ 70, SE_03);
--playSe( SP_start+ 80, SE_04);
playSe( SP_start+ 73, 1035);

playSe( SP_start+ 80, 17);

-- ** エフェクト等 ** --
--aura = entryEffectLife( SP_start+  70,   311, 100, 0x40,  0,  1,  0,  -50); -- オーラ
--entryEffectLife( SP_start+ 90, SP_02, 109, 0x40,  0,  0,  0,  0); 
--setEffScaleKey( SP_start+ 30, aura, 1.9, 1.9);
setShakeChara( SP_start+ 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 0.7, 0.7);

cr = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture(  cr, 1, 1);
setEffReplaceTexture(  cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture(  cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_start+ 170, SE_05);
--entryFade( SP_start+ 255, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

setEffScaleKey( SP_start+	170,cr, 1,1);
setEffScaleKey( SP_start+	260,cr, 1,1);
--[[
setEffShake( SP_start+ 240, ct, 3, 12);
setEffScaleKey( SP_start+	243,cr, 1.2,1.2);
setEffScaleKey( SP_start+	248,cr, 1.2,1.2);
setEffShake( SP_start+ 248, ct, 3, 8);
setEffScaleKey( SP_start+	250,cr, 1.4,1.4);
setEffScaleKey( SP_start+	256,cr, 1.4,1.4);
setEffShake( SP_start+ 255, ct, 8, 15);
setEffScaleKey( SP_start+	258,cr, 2,2);
]]
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

--P移動
setMoveKey( SP_start+  259,    0,      0,  0,   0);
setMoveKey( SP_start+  260,    0,   -600,  0,   0);
setMoveKey( SP_start+  261,    0,   -600,  0,   0);
setMoveKey( SP_start+  270,    0,   -100,  0,   0);
setMoveKey( SP_start+  299,  0,   -100,  0,   0);
setMoveKey( SP_start+  305,  0,   -250,  0,   0);
setMoveKey( SP_start+  333,  0, 1700,  0,   0);
setMoveKey( SP_start+  334,  0, -1700,  0,   0);

setShakeChara( SP_start+ 270, 0, 35, 30);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_01, 79, 0x40,  0,  300,  -250,  -70);   -- 伸びるかめはめ波
setEffScaleKey( SP_start+260,kamehame_beam,1.2,1.2);

playSe( SP_start+ 260, 203);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( SP_start+ 260, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線



shuchusen = entryEffectLife( SP_start+ 260, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+290, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);

setEffAlphaKey( SP_start+	308,spname, 1);
playSe( SP_start+ 300, SE_07);
--entryFade( SP_start+ 322, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey( SP_start+ SP_ATK_3-1,   0, 0.7, 0.7);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
--setRotateKey( SP_start+ SP_ATK_3,  1,  0 );
setRotateKey( SP_start+ SP_ATK_3,  0,  -10 );
setScaleKey( SP_start+ SP_ATK_3,   0, 0.6, 0.6);

kamehame_beam3 = entryEffectLife( SP_start+ SP_ATK_3, SP_01, 96, 0x40, 0, 300, -240,  -110);
setEffScaleKey( SP_start+SP_ATK_3, kamehame_beam3, 1.2, 1.2);
--playSe( SP_start+ SP_ATK_3, SE_08);
setEffRotateKey( SP_start+SP_ATK_3, kamehame_beam3, -10);

setDisp( SP_start+ SP_ATK_3, 1, 1);
changeAnime( SP_start+ SP_ATK_3, 1, 104);                        -- ガード

setMoveKey( SP_start+  SP_ATK_3+10,    1,   900,  170,   0);
setScaleKey( SP_start+ SP_ATK_3+10,   1,   0.5,  0.5);


playSe( SP_start+ SP_ATK_3+32, SE_09);
setMoveKey( SP_start+  SP_ATK_3+25, 1,  180,    100,  0);
setMoveKey( SP_start+  SP_ATK_3+30, 1,  120,    100,  0);

setScaleKey( SP_start+ SP_ATK_3+25, 1,  1.8, 1.8);
setScaleKey( SP_start+ SP_ATK_3+30, 1,  1.6, 1.6);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ SP_ATK_3+20+5, 1, 99, 20);
setShake( SP_start+ SP_ATK_3+20+5,99, 15);

entryFadeBg( SP_start+ SP_ATK_3, 4, 96, 4, 10, 10, 10, 150);          -- ベース暗め　背景


ryusenn = entryEffectLife( SP_start+ SP_ATK_3, 913, 96, 0x80,  -1,  0,  50,  100); -- 流線
--setEffRotateKey( SP_start+ SP_start+SP_ATK_3, ryusenn, -20);
setEffScaleKey( SP_start+ SP_ATK_3, ryusenn, 1.2, 1.2);


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_3, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+SP_ATK_3, ct, 99, 20);
setEffScaleKey( SP_start+ SP_ATK_3, ct, 2.4, 2.4);
setEffRotateKey( SP_start+SP_ATK_3, ct, 70);
setEffAlphaKey( SP_start+SP_ATK_3, ct, 255);
setEffAlphaKey( SP_start+SP_ATK_3+20+5, ct, 255);
setEffAlphaKey( SP_start+SP_ATK_3+25+5, ct, 0);


setDisp( SP_start+ SP_ATK_3, 0, 1);
--setScaleKey( SP_start+   SP_ATK_3-1,   0, 0.7, 0.7);

-- 敵吹っ飛ぶモーション

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 293; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+5,  0, -1700,  0,   0);
--setMoveKey( SP_dodge+9,  0, -1600,  0,   0);

endPhase(SP_dodge+10);
do return end
else end


changeAnime( SP_start+ SP_ATK_3+32, 1, 108);

setMoveKey( SP_start+  SP_ATK_3+31, 1,  120,    100,  0);
setMoveKey( SP_start+  SP_ATK_3+32, 1,  150,    100,  0);
setMoveKey( SP_start+  SP_ATK_3+35+38, 1,  150,    100,  0);
setMoveKey( SP_start+  SP_ATK_3+42+38, 1,  700,    220,  0);
-- ヒットエフェクト
hit_eff_1 = entryEffect( SP_start+ SP_ATK_3+32,  SP_02,  0x40,  -1,  0,  480, 700);--HIT
hit_eff_2 = entryEffect( SP_start+ SP_ATK_3+32,  906,  0x40,  -1,  0,  480, 700);
hit_eff_3 = entryEffect( SP_start+ SP_ATK_3+32,  908,  0x40,  -1,  0,  480, 700);

setEffScaleKey( SP_start+ SP_ATK_3+32, hit_eff_1, 1.5, 1.5);
setEffScaleKey( SP_start+ SP_ATK_3+32, hit_eff_2, 1.5, 1.5);
setEffScaleKey( SP_start+ SP_ATK_3+32, hit_eff_3, 1.5, 1.5);

setMoveKey( SP_start+  SP_ATK_3,  0, -1700,  0,   0);
--setMoveKey( SP_start+  SP_ATK_3+1,  0, -1000,  0,   0);
setMoveKey( SP_start+  SP_ATK_3+24,  0, -700,  0,   0);
setMoveKey( SP_start+  SP_ATK_3+31,  0, -250,  0,   0);
--changeAnime( SP_start+ SP_ATK_3+36, 0, 31);

setShakeChara( SP_start+SP_ATK_3+40,0,30,14);
setShakeChara( SP_start+SP_ATK_3+40,1,30,11);

entryEffectLife( SP_start+ SP_ATK_3+40, 906, 58, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffectLife( SP_start+ SP_ATK_3+40, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線

entryFade( SP_start+ SP_ATK_3+53+38, 4,  6, 4, 255, 255, 255, 255);     -- white fade
--setScaleKey( SP_start+ SP_ATK_3+45, 0, 0.5, 0.5);
setMoveKey( SP_start+  SP_ATK_3+53+43, 1,  700,    220,  0);
setScaleKey( SP_start+ SP_ATK_3+53+43, 1,  1.6, 1.6);
setScaleKey( SP_start+ SP_ATK_3+53+43,   0, 0.6, 0.6);
setDisp( SP_start+ SP_ATK_3+53+43, 0, 0);
setDisp( SP_start+ SP_ATK_3+53+43, 1, 0);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setScaleKey( SP_start+ SP_ATK_4, 0, 0.7, 0.7);
setScaleKey( SP_start+ SP_ATK_4+1, 0, 1.0, 1.0);

setMoveKey( SP_start+  SP_ATK_4,    1,  50,    0,  -120);
setScaleKey( SP_start+ SP_ATK_4,    1,  1.0, 1.0);
setMoveKey( SP_start+  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_start+ SP_ATK_4+1,    1,  0.1, 0.1);
changeAnime( SP_start+ SP_ATK_4+1, 1, 107);-- 手前ダメージ
setDisp( SP_start+ SP_ATK_4+1, 1, 1);

entryEffect( SP_start+ SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ SP_ATK_4+1, SE_10);

setMoveKey( SP_start+  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey( SP_start+  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey( SP_start+  SP_ATK_4+16,   1,  -60,  -200,  -100);

setRotateKey( SP_start+ SP_ATK_4,  1,  30 );
setRotateKey( SP_start+ SP_ATK_4+2,  1,  80 );
setRotateKey( SP_start+ SP_ATK_4+4,  1, 120 );
setRotateKey( SP_start+ SP_ATK_4+6,  1, 160 );
setRotateKey( SP_start+ SP_ATK_4+8,  1, 200 );
setRotateKey( SP_start+ SP_ATK_4+10,  1, 260 );
setRotateKey( SP_start+ SP_ATK_4+12,  1, 320 );
setRotateKey( SP_start+ SP_ATK_4+14,  1,   0 );

setShakeChara( SP_start+ SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_start+ SP_ATK_4+20, 1, 10, 20);
setShake( SP_start+SP_ATK_4+14,6,15);
setShake( SP_start+SP_ATK_4+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+ SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_start+ SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_start+ SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+115, ct, 0);

playSe( SP_start+ SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_start+ SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+SP_ATK_4+10);

entryFade( SP_start+ SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+SP_ATK_4+110);

else
-----------------------------------------
--敵側の攻撃
-----------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
entryFadeBg( SP_start+  70, 30, 109, 10, 10, 10, 10, 155);       -- ベース暗め　背景

--[[
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

--playSe( SP_start+ 70, SE_03);
playSe( SP_start+ 80, SE_04);


-- ** エフェクト等 ** --
--aura = entryEffectLife( SP_start+  70,   311, 100, 0x40,  0,  1,  0,  -50); -- オーラ
--entryEffectLife( SP_start+ 90, SP_02, 109, 0x40,  0,  0,  0,  0); 
--setEffScaleKey( SP_start+ 30, aura, 1.9, 1.9);
setShakeChara( SP_start+ 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 0.7, 0.7);

cr = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture(  cr, 1, 1);
setEffReplaceTexture(  cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture(  cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_start+ 170, SE_05);
--entryFade( SP_start+ 255, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

setEffScaleKey( SP_start+	170,cr, 1,1);
setEffScaleKey( SP_start+	260,cr, 1,1);
--[[
setEffShake( SP_start+ 240, ct, 3, 12);
setEffScaleKey( SP_start+	243,cr, 1.2,1.2);
setEffScaleKey( SP_start+	248,cr, 1.2,1.2);
setEffShake( SP_start+ 248, ct, 3, 8);
setEffScaleKey( SP_start+	250,cr, 1.4,1.4);
setEffScaleKey( SP_start+	256,cr, 1.4,1.4);
setEffShake( SP_start+ 255, ct, 8, 15);
setEffScaleKey( SP_start+	258,cr, 2,2);
]]
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

--P移動
setMoveKey( SP_start+  259,    0,      0,  0,   0);
setMoveKey( SP_start+  260,    0,   -600,  0,   0);
setMoveKey( SP_start+  261,    0,   -600,  0,   0);
setMoveKey( SP_start+  270,    0,   -100,  0,   0);
setMoveKey( SP_start+  299,  0,   -100,  0,   0);
setMoveKey( SP_start+  305,  0,   -250,  0,   0);
setMoveKey( SP_start+  333,  0, 1700,  0,   0);
setMoveKey( SP_start+  334,  0, -1700,  0,   0);

setShakeChara( SP_start+ 270, 0, 35, 30);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_01, 79, 0x40,  0,  300,  -250,  -70);   -- 伸びるかめはめ波
setEffScaleKey( SP_start+260,kamehame_beam,1.2,1.2);

playSe( SP_start+ 260, 203);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( SP_start+ 260, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線



shuchusen = entryEffectLife( SP_start+ 260, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+290, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);

setEffAlphaKey( SP_start+	308,spname, 1);
playSe( SP_start+ 300, SE_07);
--entryFade( SP_start+ 322, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey( SP_start+ SP_ATK_3-1,   0, 0.7, 0.7);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setRotateKey( SP_start+ SP_ATK_3,  0,  -10 );
setScaleKey( SP_start+ SP_ATK_3,   0, 0.6, 0.6);

kamehame_beam3 = entryEffectLife( SP_start+ SP_ATK_3, SP_01, 96, 0x40, 0, 300, -240,  -110);
setEffScaleKey( SP_start+SP_ATK_3, kamehame_beam3, 1.2, 1.2);
--playSe( SP_start+ SP_ATK_3, SE_08);
setEffRotateKey( SP_start+SP_ATK_3, kamehame_beam3, -10);

setDisp( SP_start+ SP_ATK_3, 1, 1);
changeAnime( SP_start+ SP_ATK_3, 1, 104);                        -- ガード


setMoveKey( SP_start+  SP_ATK_3+10,    1,   900,  170,   0);
setScaleKey( SP_start+ SP_ATK_3+10,   1,   0.5,  0.5);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 293; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+5,  0, -1700,  0,   0);
--setMoveKey( SP_dodge+9,  0, -1600,  0,   0);

endPhase(SP_dodge+10);
do return end
else end


playSe( SP_start+ SP_ATK_3+32, SE_09);
setMoveKey( SP_start+  SP_ATK_3+25, 1,  180,    100,  0);
setMoveKey( SP_start+  SP_ATK_3+30, 1,  120,    100,  0);

setScaleKey( SP_start+ SP_ATK_3+25, 1,  1.8, 1.8);
setScaleKey( SP_start+ SP_ATK_3+30, 1,  1.6, 1.6);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ SP_ATK_3+20+5, 1, 99, 20);
setShake( SP_start+ SP_ATK_3+20+5,99, 15);

entryFadeBg( SP_start+ SP_ATK_3, 4, 96, 4, 10, 10, 10, 150);          -- ベース暗め　背景


ryusenn = entryEffectLife( SP_start+ SP_ATK_3, 913, 96, 0x80,  -1,  0,  50,  100); -- 流線
--setEffRotateKey( SP_start+ SP_start+SP_ATK_3, ryusenn, -20);
setEffScaleKey( SP_start+ SP_ATK_3, ryusenn, 1.2, 1.2);


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_3, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+SP_ATK_3, ct, 99, 20);
setEffScaleKey( SP_start+ SP_ATK_3, ct, 2.4, 2.4);
setEffRotateKey( SP_start+SP_ATK_3, ct, -70);
setEffAlphaKey( SP_start+SP_ATK_3, ct, 255);
setEffAlphaKey( SP_start+SP_ATK_3+20+5, ct, 255);
setEffAlphaKey( SP_start+SP_ATK_3+25+5, ct, 0);


setDisp( SP_start+ SP_ATK_3, 0, 1);
setScaleKey( SP_start+   SP_ATK_3-1,   0, 0.7, 0.7);

-- 敵吹っ飛ぶモーション

changeAnime( SP_start+ SP_ATK_3+32, 1, 108);

setMoveKey( SP_start+  SP_ATK_3+31, 1,  120,    100,  0);
setMoveKey( SP_start+  SP_ATK_3+32, 1,  150,    100,  0);
setMoveKey( SP_start+  SP_ATK_3+35+38, 1,  150,    100,  0);
setMoveKey( SP_start+  SP_ATK_3+42+38, 1,  700,    220,  0);
-- ヒットエフェクト
hit_eff_1 = entryEffect( SP_start+ SP_ATK_3+32,  SP_02,  0x40,  -1,  0,  -250, 700);--HIT
hit_eff_2 = entryEffect( SP_start+ SP_ATK_3+32,  906,  0x40,  -1,  0,  -250, 700);
hit_eff_3 = entryEffect( SP_start+ SP_ATK_3+32,  908,  0x40,  -1,  0,  -250, 700);

setEffScaleKey( SP_start+ SP_ATK_3+32, hit_eff_1, 1.5, 1.5);
setEffScaleKey( SP_start+ SP_ATK_3+32, hit_eff_2, 1.5, 1.5);
setEffScaleKey( SP_start+ SP_ATK_3+32, hit_eff_3, 1.5, 1.5);

setMoveKey( SP_start+  SP_ATK_3,  0, -1700,  0,   0);
--setMoveKey( SP_start+  SP_ATK_3+1,  0, -1000,  0,   0);
setMoveKey( SP_start+  SP_ATK_3+24,  0, -700,  0,   0);
setMoveKey( SP_start+  SP_ATK_3+31,  0, -250,  0,   0);
--changeAnime( SP_start+ SP_ATK_3+36, 0, 31);

setShakeChara( SP_start+SP_ATK_3+40,0,30,14);
setShakeChara( SP_start+SP_ATK_3+40,1,30,11);

entryEffectLife( SP_start+ SP_ATK_3+40, 906, 58, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffectLife( SP_start+ SP_ATK_3+40, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線

entryFade( SP_start+ SP_ATK_3+53+38, 4,  6, 4, 255, 255, 255, 255);     -- white fade
--setScaleKey( SP_start+ SP_ATK_3+45, 0, 0.5, 0.5);
setMoveKey( SP_start+  SP_ATK_3+53+43, 1,  700,    220,  0);
setScaleKey( SP_start+ SP_ATK_3+53+43, 1,  1.6, 1.6);
setScaleKey( SP_start+ SP_ATK_3+53+43,   0, 0.6, 0.6);
setDisp( SP_start+ SP_ATK_3+53+43, 0, 0);
setDisp( SP_start+ SP_ATK_3+53+43, 1, 0);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setScaleKey( SP_start+ SP_ATK_4, 0, 0.7, 0.7);
setScaleKey( SP_start+ SP_ATK_4+1, 0, 1.0, 1.0);

setMoveKey( SP_start+  SP_ATK_4,    1,  50,    0,  -120);
setScaleKey( SP_start+ SP_ATK_4,    1,  1.0, 1.0);
setMoveKey( SP_start+  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_start+ SP_ATK_4+1,    1,  0.1, 0.1);
changeAnime( SP_start+ SP_ATK_4+1, 1, 107);-- 手前ダメージ
setDisp( SP_start+ SP_ATK_4+1, 1, 1);
entryEffect( SP_start+ SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ SP_ATK_4+1, SE_10);

setMoveKey( SP_start+  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey( SP_start+  SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey( SP_start+  SP_ATK_4+16,   1,  -60,  -200,  -100);

setRotateKey( SP_start+ SP_ATK_4,  1,  30 );
setRotateKey( SP_start+ SP_ATK_4+2,  1,  80 );
setRotateKey( SP_start+ SP_ATK_4+4,  1, 120 );
setRotateKey( SP_start+ SP_ATK_4+6,  1, 160 );
setRotateKey( SP_start+ SP_ATK_4+8,  1, 200 );
setRotateKey( SP_start+ SP_ATK_4+10,  1, 260 );
setRotateKey( SP_start+ SP_ATK_4+12,  1, 320 );
setRotateKey( SP_start+ SP_ATK_4+14,  1,   0 );

setShakeChara( SP_start+ SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_start+ SP_ATK_4+20, 1, 10, 20);
setShake( SP_start+SP_ATK_4+14,6,15);
setShake( SP_start+SP_ATK_4+20,15,10);
-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+ SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_start+ SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_start+ SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+115, ct, 0);

playSe( SP_start+ SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_start+ SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+SP_ATK_4+10);

entryFade( SP_start+ SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+SP_ATK_4+110);

end

print ("[lua]sp0001 end");

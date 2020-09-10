--sp0252 1008840 ゴクウブラック_ブラックかめはめ波

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

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

SP_01 = 100312;
SP_02 = 100313;
SP_03 = 100314;

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -85, 0); --味方位置
setMoveKey( 1, 0, 0, -85, 0); --味方位置
setMoveKey( 2, 0, 0, -85, 0); --味方位置
setMoveKey( 3, 0, 0, -85, 0); --味方位置
setMoveKey( 4, 0, 0, -85, 0); --味方位置
setMoveKey( 5, 0, 0, -85, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 1,    0,  1.5, 1.5);
setScaleKey( 2,    0,  1.5, 1.5);
setScaleKey( 3,    0,  1.5, 1.5);
setScaleKey( 4,    0,  1.5, 1.5);
setScaleKey( 5,    0,  1.5, 1.5);
setRotateKey( 0,  0, 0);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- アイドリング(10F)
------------------------------------------------------
setMoveKey( 10, 0, 0, -85, 0); --味方位置
setScaleKey( 10,    0,  1.5, 1.5);
setRotateKey( 10,  0, 0);

------------------------------------------------------
-- かめはめ波溜め！(98F)
------------------------------------------------------
spep_1=10;
entryFade( spep_1, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 98, 0, 0, 0, 0, 255);          -- ベース暗め　背景

changeAnime( spep_1, 0, 30);                       -- 溜め!

setMoveKey( spep_1, 0, 0, -85, 0); --味方位置
setMoveKey( spep_1 + 98, 0, 0, -85, 0); --味方位置
setScaleKey( spep_1,   0, 1.5, 1.5);
setScaleKey( spep_1 + 98,   0, 1.5, 1.5);

-- ** エフェクト等 ** --
entryEffect( spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect( spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

aura1 = entryEffectLife( spep_1,  356, 98, 0x40,  0, -1,  0,  -250); -- オーラ
setEffAlphaKey( spep_1, aura1, 255);
setEffAlphaKey( spep_1+98, aura1, 255);
setEffScaleKey( spep_1, aura1, 1.9, 2.0);
setEffScaleKey( spep_1+98, aura1, 1.9, 2.0);
setShakeChara( spep_1, 0, 98, 10);

kame_hand = entryEffect( spep_1, SP_01, 0x100+0x40,0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey(spep_1, kame_hand, 1.0, 1.0);

speff = entryEffect( spep_1+  12,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_1+  12,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--集中線--
shuchusen_1 = entryEffectLife( spep_1, 906, 98, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1,  shuchusen_1,  0,  0);
setEffScaleKey( spep_1,  shuchusen_1,  1.0,  1.0);
setEffRotateKey( spep_1,  shuchusen_1,  0);
setEffAlphaKey( spep_1,  shuchusen_1,  255);
setEffMoveKey( spep_1+98,  shuchusen_1,  0,  0);
setEffScaleKey( spep_1+98,  shuchusen_1,  1.0,  1.0);
setEffRotateKey( spep_1+98,  shuchusen_1,  0);
setEffAlphaKey( spep_1+98,  shuchusen_1,  255);

-- 書き文字エントリー　ゴゴゴ --
ctgogogo_1 = entryEffectLife( spep_1+25, 190006,73, 0x100, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake( spep_1+25, ctgogogo_1, 73, 10);
setEffScaleKey( spep_1+25, ctgogogo_1,0.8,0.8);
setEffRotateKey( spep_1+25, ctgogogo_1, 0);
setEffAlphaKey( spep_1+25, ctgogogo_1, 255);
setEffScaleKey( spep_1+98, ctgogogo_1,0.8,0.8);
setEffRotateKey( spep_1+98, ctgogogo_1, 0);
setEffAlphaKey( spep_1+98, ctgogogo_1, 255);

--SE--
playSe( spep_1, SE_01);
playSe( spep_1+ 25, SE_04);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2=spep_1+98;
entryFade( spep_2-10, 8, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 94, 0, 0, 0, 0, 255);          -- ベース暗め　背景

speff = entryEffect( spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--集中線--
shuchusen_2 = entryEffectLife( spep_2, 906, 94, 0x100,  -1, 0,  0,  0);
setEffMoveKey( spep_2,  shuchusen_2,  0,  0);
setEffScaleKey( spep_2,  shuchusen_2,  1.0,  1.0);
setEffRotateKey( spep_2,  shuchusen_2,  0);
setEffAlphaKey( spep_2,  shuchusen_2,  255);
setEffMoveKey( spep_2+94,  shuchusen_2,  0,  0);
setEffScaleKey( spep_2+94,  shuchusen_2,  1.0,  1.0);
setEffRotateKey( spep_2+94,  shuchusen_2,  0);
setEffAlphaKey( spep_2+94,  shuchusen_2,  255);

--SE--
playSe( spep_2, SE_05);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_3=spep_2+94;
entryFade( spep_3-14, 6, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 106, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 10, 230, 230, 230, 255);    -- 最初だけ明るい　背景

--味方キャラの動き
setDisp( spep_3, 0, 1);
setDisp( spep_3+ 50, 0, 0);
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey( spep_3 + 0, 0, -500, -50 , 0 );
setMoveKey( spep_3 + 6, 0, -170, -50 , 0 );
setMoveKey( spep_3 + 30, 0, -170, -50 , 0 );
setMoveKey( spep_3 + 40, 0, -600, -50 , 0 );
setMoveKey( spep_3 + 106, 0, -600, -50 , 0 );
setScaleKey( spep_3 - 1, 0, 1.5, 1.5 );
setScaleKey( spep_3 + 0, 0, 0.5, 0.5 );
setScaleKey( spep_3 + 6, 0, 0.8, 0.8 );
setScaleKey( spep_3 + 30, 0, 0.8, 0.8 );
setScaleKey( spep_3 + 40, 0, 0.3, 0.3 );
setScaleKey( spep_3 + 106, 0, 0.3, 0.3 );
setRotateKey( spep_3 + 0, 0, 0 );
setRotateKey( spep_3 +50, 0, 0 );
setRotateKey( spep_3 +106, 0, 0 );

aura_3 = entryEffectLife( spep_3,   356, 50, 0x40,  0, 1,  0,  -40); -- オーラ
setEffScaleKey( spep_3 + 0, aura_3, 1.5, 1.5);
setEffScaleKey( spep_3 + 6, aura_3, 2.4, 2.4);
setEffScaleKey( spep_3 + 30, aura_3, 2.4, 2.4);
setEffScaleKey( spep_3 + 40, aura_3, 1.5, 1.5);
setEffScaleKey( spep_3 + 50, aura_3, 1.5, 1.5);
setShakeChara( spep_3, 0, 50, 5);

kamehame_beam = entryEffect( spep_3, SP_02, 0x40,  0,  300,  45,  0);   -- 伸びるかめはめ波

spname = entryEffect( spep_3, 1508,  0x100,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

removeAllEffect(spep_3+106);

-- ** エフェクト等 ** --
sen_3 = entryEffectLife( spep_3, 921, 106, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_3, sen_3, 190);
setEffScaleKey( spep_3, sen_3, 1.25, 1.25);

shuchusen_3 = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3 + 0, shuchusen_3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 28, shuchusen_3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 30, shuchusen_3, 1.54, 1.54 );
setEffScaleKey( spep_3 + 32, shuchusen_3, 1.66, 1.66 );
setEffScaleKey( spep_3 + 34, shuchusen_3, 1.86, 1.86 );
setEffScaleKey( spep_3 + 36, shuchusen_3, 2.14, 2.14 );
setEffScaleKey( spep_3 + 49, shuchusen_3, 2.5, 2.5 );
setEffRotateKey( spep_3 + 0, shuchusen_3, 0 );
setEffRotateKey( spep_3 + 49, shuchusen_3, 0 );


-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3, 10012, 40, 0, -1, 0, 50, 250); -- ズオッ
setEffMoveKey(spep_3, ctzuo, 50, 250);
setEffMoveKey(spep_3+6, ctzuo, 150, 350);
setEffMoveKey(spep_3+40, ctzuo, 150, 350);
setEffShake(spep_3, ctzuo, 40, 15);
setEffAlphaKey(spep_3, ctzuo, 255);
setEffAlphaKey(spep_3+30, ctzuo, 255);
setEffAlphaKey(spep_3+40, ctzuo, 0);
setEffScaleKey(spep_3, ctzuo, 0.1, 0.1);
setEffScaleKey(spep_3+6, ctzuo, 2.8, 2.8);
setEffScaleKey(spep_3+30, ctzuo, 2.8, 2.8);
setEffScaleKey(spep_3+40, ctzuo, 6.0, 6.0);
setEffRotateKey(spep_3, ctzuo, 30);
setEffRotateKey(spep_3+40, ctzuo, 30);

-- SE --
playSe( spep_3, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_4=spep_3+106;
entryFade( spep_4, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 100, 0, 0, 0, 0, 153);          -- ベース暗め　背景

setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4-2,    1, 9000, 0,   0);
setMoveKey(  spep_4-1,    1,  300,  0,   0);
setMoveKey(  spep_4,    1,  300,  0,   0);
setMoveKey(  spep_4+90,    1,   150,  -30,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);
setScaleKey(  spep_4+90,   1,   2.5,  2.5);
setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4+90, 1, 0); 

kamehame_beam2 = entryEffect( spep_4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_4, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+90, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+90, kamehame_beam2, 2.5, 2.5);
setEffRotateKey( spep_4, kamehame_beam2, 0);
setEffRotateKey( spep_4+90, kamehame_beam2, 0);
--setDamage( spep_4+ 62, 1, 0);  -- ダメージ振動等


-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 90, 20);

entryEffectLife( spep_4, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudo = entryEffectLife( spep_4, 10014, 90, 0, -1, 0, 0, 310); -- ズドドッ
setEffShake( spep_4, ctZudo, 90, 40);
setEffScaleKey( spep_4, ctZudo, 3.3, 3.3);
setEffRotateKey( spep_4, ctZudo, 70);
setEffAlphaKey( spep_4, ctZudo, 255);


------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 20; 

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge-1, 0,  -2500, -1000,0); --味方位置
setMoveKey( SP_dodge, 0,  -2500, -1000,0); --味方位置

setMoveKey(SP_dodge+1,1,275,-15,0);
setScaleKey(SP_dodge+1,1,1.75,1.75);
setRotateKey(SP_dodge+1,1,0);

setMoveKey(SP_dodge+8,1,275,-15,0);
setScaleKey(SP_dodge+8,1,1.75,1.75);
setRotateKey(SP_dodge+8,1,0);

setMoveKey( SP_dodge+9, 0,  -2500,  -1000,   0);
setMoveKey(   SP_dodge+10,   0,    -2500, -1000,   0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+10,   1, 0);


endPhase(SP_dodge+10);

do return end
else end


------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

playSe( spep_4+76, SE_09);
-- 敵吹っ飛ぶモーション
--changeAnime( spep_4+ 60, 1, 108);                        -- くの字
--setMoveKey(  spep_4+61, 1,  150,    -30,  0);
--setMoveKey(  spep_4+62, 1,  130,    -30,  0);
--setMoveKey(  spep_4+63, 1,  150,    -30,  0);
--setMoveKey(  spep_4+80, 1,  500,    0,  0);
--setMoveKey(  spep_4+89, 1,  500,    0,  0);
--setScaleKey( spep_4+62, 1,  2.5, 2.5);
--setScaleKey( spep_4+80, 1,  0.4, 0.4);
--setScaleKey( spep_4+89, 1,  0.4, 0.4);

--setRotateKey( spep_4, 1, 0); 
--setRotateKey( spep_4+61, 1, 0); 
--setRotateKey( spep_4+62, 1, 30); 
--setRotateKey( spep_4+63, 1, 345); 
--setRotateKey( spep_4+64, 1, 0); 
--setRotateKey( spep_4+89, 1, 0); 

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_5 = spep_4+90;
entryFade( spep_5-13, 6, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_5, 1, 1);
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
setMoveKey(  spep_5+1,    1,    0,   0,   128);
setScaleKey( spep_5+1,    1,  0.1, 0.1);

changeAnime( spep_5+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
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
ctga_5 = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+15, ctga_5, 30, 10);
setEffRotateKey( spep_5+15, ctga_5, -40);
setEffScaleKey( spep_5+15, ctga_5, 4.0, 4.0);
setEffScaleKey( spep_5+16, ctga_5, 2.0, 2.0);
setEffScaleKey( spep_5+17, ctga_5, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctga_5, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctga_5, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctga_5, 3.8, 3.8);
setEffScaleKey( spep_5+115, ctga_5, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ctga_5, 255);
setEffAlphaKey( spep_5+105, ctga_5, 255);
setEffAlphaKey( spep_5+115, ctga_5, 0);

playSe( spep_5+3, SE_11);
shuchusen_5 = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+110);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- アイドリング(10F)
------------------------------------------------------
setMoveKey( 10, 0, 0, -85, 0); --味方位置
setScaleKey( 10,    0,  1.5, 1.5);
setRotateKey( 10,  0, 0);

------------------------------------------------------
-- かめはめ波溜め！(98F)
------------------------------------------------------
spep_1=10;
entryFade( spep_1, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 98, 0, 0, 0, 0, 255);          -- ベース暗め　背景

changeAnime( spep_1, 0, 30);                       -- 溜め!

setMoveKey( spep_1, 0, 0, -85, 0); --味方位置
setMoveKey( spep_1 + 98, 0, 0, -85, 0); --味方位置
setScaleKey( spep_1,   0, 1.5, 1.5);
setScaleKey( spep_1 + 98,   0, 1.5, 1.5);

-- ** エフェクト等 ** --
entryEffect( spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect( spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

aura1 = entryEffectLife( spep_1,  356, 98, 0x40,  0, -1,  0,  -250); -- オーラ
setEffAlphaKey( spep_1, aura1, 255);
setEffAlphaKey( spep_1+98, aura1, 255);
setEffScaleKey( spep_1, aura1, -1.9, 2.0);
setEffScaleKey( spep_1+98, aura1, -1.9, 2.0);
setShakeChara( spep_1, 0, 98, 10);

kame_hand = entryEffect( spep_1, SP_01, 0x80+0x40,0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey(spep_1, kame_hand, 1.0, 1.0);

--speff = entryEffect( spep_1+  12,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect( spep_1+  12,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--集中線--
shuchusen_1 = entryEffectLife( spep_1, 906, 98, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1,  shuchusen_1,  0,  0);
setEffScaleKey( spep_1,  shuchusen_1,  1.0,  1.0);
setEffRotateKey( spep_1,  shuchusen_1,  0);
setEffAlphaKey( spep_1,  shuchusen_1,  255);
setEffMoveKey( spep_1+98,  shuchusen_1,  0,  0);
setEffScaleKey( spep_1+98,  shuchusen_1,  1.0,  1.0);
setEffRotateKey( spep_1+98,  shuchusen_1,  0);
setEffAlphaKey( spep_1+98,  shuchusen_1,  255);

-- 書き文字エントリー　ゴゴゴ --
ctgogogo_1 = entryEffectLife( spep_1+25, 190006,73, 0x100, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake( spep_1+25, ctgogogo_1, 73, 10);
setEffScaleKey( spep_1+25, ctgogogo_1,-0.8,0.8);
setEffRotateKey( spep_1+25, ctgogogo_1, 0);
setEffAlphaKey( spep_1+25, ctgogogo_1, 255);
setEffScaleKey( spep_1+98, ctgogogo_1,-0.8,0.8);
setEffRotateKey( spep_1+98, ctgogogo_1, 0);
setEffAlphaKey( spep_1+98, ctgogogo_1, 255);

--SE--
playSe( spep_1, SE_01);
playSe( spep_1+ 25, SE_04);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2=spep_1+98;
entryFade( spep_2-10, 8, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 94, 0, 0, 0, 0, 255);          -- ベース暗め　背景

speff = entryEffect( spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--集中線--
shuchusen_2 = entryEffectLife( spep_2, 906, 94, 0x100,  -1, 0,  0,  0);

setEffMoveKey( spep_2,  shuchusen_2,  0,  0);
setEffScaleKey( spep_2,  shuchusen_2,  1.0,  1.0);
setEffRotateKey( spep_2,  shuchusen_2,  0);
setEffAlphaKey( spep_2,  shuchusen_2,  255);
setEffMoveKey( spep_2+94,  shuchusen_2,  0,  0);
setEffScaleKey( spep_2+94,  shuchusen_2,  1.0,  1.0);
setEffRotateKey( spep_2+94,  shuchusen_2,  0);
setEffAlphaKey( spep_2+94,  shuchusen_2,  255);

--SE--
playSe( spep_2, SE_05);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_3=spep_2+94;
entryFade( spep_3-14, 6, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 106, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 10, 230, 230, 230, 255);    -- 最初だけ明るい　背景

--味方キャラの動き
setDisp( spep_3, 0, 1);
setDisp( spep_3+ 50, 0, 0);
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey( spep_3 + 0, 0, -500, -50 , 0 );
setMoveKey( spep_3 + 6, 0, -170, -50 , 0 );
setMoveKey( spep_3 + 30, 0, -170, -50 , 0 );
setMoveKey( spep_3 + 40, 0, -600, -50 , 0 );
setMoveKey( spep_3 + 106, 0, -600, -50 , 0 );
setScaleKey( spep_3 - 1, 0, 1.5, 1.5 );
setScaleKey( spep_3 + 0, 0, 0.5, 0.5 );
setScaleKey( spep_3 + 6, 0, 0.8, 0.8 );
setScaleKey( spep_3 + 30, 0, 0.8, 0.8 );
setScaleKey( spep_3 + 40, 0, 0.3, 0.3 );
setScaleKey( spep_3 + 106, 0, 0.3, 0.3 );
setRotateKey( spep_3 + 0, 0, 0 );
setRotateKey( spep_3 +50, 0, 0 );
setRotateKey( spep_3 +106, 0, 0 );

aura_3 = entryEffectLife( spep_3,   356, 50, 0x40,  0, 1,  0,  -40); -- オーラ
setEffScaleKey( spep_3 + 0, aura_3, -1.5, 1.5);
setEffScaleKey( spep_3 + 6, aura_3, -2.4, 2.4);
setEffScaleKey( spep_3 + 30, aura_3, -2.4, 2.4);
setEffScaleKey( spep_3 + 40, aura_3, -1.5, 1.5);
setEffScaleKey( spep_3 + 50, aura_3, -1.5, 1.5);
setShakeChara( spep_3, 0, 50, 5);

kamehame_beam = entryEffect( spep_3, SP_02, 0x40,  0,  300,  45,  0);   -- 伸びるかめはめ波

spname = entryEffect( spep_3, 1508,  0x100,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

removeAllEffect(spep_3+106);

-- ** エフェクト等 ** --

sen_3 = entryEffectLife( spep_3, 921, 106, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_3, sen_3, 190);
setEffScaleKey( spep_3, sen_3, 1.25, 1.25);

shuchusen_3 = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3 + 0, shuchusen_3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 28, shuchusen_3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 30, shuchusen_3, 1.54, 1.54 );
setEffScaleKey( spep_3 + 32, shuchusen_3, 1.66, 1.66 );
setEffScaleKey( spep_3 + 34, shuchusen_3, 1.86, 1.86 );
setEffScaleKey( spep_3 + 36, shuchusen_3, 2.14, 2.14 );
setEffScaleKey( spep_3 + 49, shuchusen_3, 2.5, 2.5 );
setEffRotateKey( spep_3 + 0, shuchusen_3, 0 );
setEffRotateKey( spep_3 + 49, shuchusen_3, 0 );


-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3, 10012, 40, 0, -1, 0, 50, 250); -- ズオッ
setEffMoveKey(spep_3, ctzuo, 50, 250);
setEffMoveKey(spep_3+6, ctzuo, 150, 350);
setEffMoveKey(spep_3+40, ctzuo, 150, 350);
setEffShake(spep_3, ctzuo, 40, 15);
setEffAlphaKey(spep_3, ctzuo, 255);
setEffAlphaKey(spep_3+30, ctzuo, 255);
setEffAlphaKey(spep_3+40, ctzuo, 0);
setEffScaleKey(spep_3, ctzuo, 0.1, 0.1);
setEffScaleKey(spep_3+6, ctzuo, 2.8, 2.8);
setEffScaleKey(spep_3+30, ctzuo, 2.8, 2.8);
setEffScaleKey(spep_3+40, ctzuo, 6.0, 6.0);
setEffRotateKey(spep_3, ctzuo, 30);
setEffRotateKey(spep_3+40, ctzuo, 30);

-- SE --
playSe( spep_3, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_4=spep_3+106;
entryFade( spep_4, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 100, 0, 0, 0, 0, 153);          -- ベース暗め　背景

setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4-2,    1, 9000, 0,   0);
setMoveKey(  spep_4-1,    1,  300,  0,   0);
setMoveKey(  spep_4,    1,  300,  0,   0);
setMoveKey(  spep_4+90,    1,   150,  -30,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);
setScaleKey(  spep_4+90,   1,   2.5,  2.5);
setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4+90, 1, 0); 

kamehame_beam2 = entryEffect( spep_4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_4, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+90, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+90, kamehame_beam2, 2.5, 2.5);
setEffRotateKey( spep_4, kamehame_beam2, 0);
setEffRotateKey( spep_4+90, kamehame_beam2, 0);
setDamage( spep_4+ 62, 1, 0);  -- ダメージ振動等


-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 90, 20);

entryEffectLife( spep_4, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudo = entryEffectLife( spep_4, 10014, 90, 0, -1, 0, 0, 310); -- ズドドッ
setEffShake( spep_4, ctZudo, 90, 40);
setEffScaleKey( spep_4, ctZudo, 3.3, 3.3);
setEffRotateKey( spep_4, ctZudo, 10);
setEffAlphaKey( spep_4, ctZudo, 255);


------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_4 + 20; 

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge-1, 0,  -2500, -1000,0); --味方位置
setMoveKey( SP_dodge, 0,  -2500, -1000,0); --味方位置

setMoveKey(SP_dodge+1,1,275,-15,0);
setScaleKey(SP_dodge+1,1,1.75,1.75);
setRotateKey(SP_dodge+1,1,0);

setMoveKey(SP_dodge+8,1,275,-15,0);
setScaleKey(SP_dodge+8,1,1.75,1.75);
setRotateKey(SP_dodge+8,1,0);

setMoveKey( SP_dodge+9, 0,  -2500,  -1000,   0);
setMoveKey(   SP_dodge+10,   0,    -2500, -1000,   0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+10,   1, 0);


endPhase(SP_dodge+10);

do return end
else end


------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

playSe( spep_4+76, SE_09);
-- 敵吹っ飛ぶモーション
--changeAnime( spep_4+ 60, 1, 108);                        -- くの字
--setMoveKey(  spep_4+61, 1,  150,    -30,  0);
--setMoveKey(  spep_4+62, 1,  130,    -30,  0);
--setMoveKey(  spep_4+63, 1,  150,    -30,  0);
--setMoveKey(  spep_4+80, 1,  500,    0,  0);
--setMoveKey(  spep_4+89, 1,  500,    0,  0);
--setScaleKey( spep_4+62, 1,  2.5, 2.5);
--setScaleKey( spep_4+80, 1,  0.4, 0.4);
--setScaleKey( spep_4+89, 1,  0.4, 0.4);

--setRotateKey( spep_4, 1, 0); 
--setRotateKey( spep_4+61, 1, 0); 
--setRotateKey( spep_4+62, 1, 30); 
--setRotateKey( spep_4+63, 1, 345); 
--setRotateKey( spep_4+64, 1, 0); 
--setRotateKey( spep_4+89, 1, 0); 

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_5 = spep_4+90;
entryFade( spep_5-13, 6, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_5, 1, 1);
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
setMoveKey(  spep_5+1,    1,    0,   0,   128);
setScaleKey( spep_5+1,    1,  0.1, 0.1);

changeAnime( spep_5+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
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
ctga_5 = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+15, ctga_5, 30, 10);
setEffRotateKey( spep_5+15, ctga_5, -40);
setEffScaleKey( spep_5+15, ctga_5, 4.0, 4.0);
setEffScaleKey( spep_5+16, ctga_5, 2.0, 2.0);
setEffScaleKey( spep_5+17, ctga_5, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctga_5, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctga_5, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctga_5, 3.8, 3.8);
setEffScaleKey( spep_5+115, ctga_5, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ctga_5, 255);
setEffAlphaKey( spep_5+105, ctga_5, 255);
setEffAlphaKey( spep_5+115, ctga_5, 0);

playSe( spep_5+3, SE_11);
shuchusen_5 = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+110);

end

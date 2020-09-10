

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

SP_01 = 150097;
SP_02 = 150098;
--SP_03 = 100232;
SP_04 = 150080;--筋斗雲のしっぽ

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
--changeAnime( 0, 0, 0);                       -- 溜め!
--changeAnime( 30, 0, 1);  
setScaleKey(   0,   0, 1.5, 1.5);

setMoveKey(   0,   0, 0, 0, 0);
setMoveKey(   15,   0,  0, 0,  0);
setMoveKey(  125,   0,  0, 0, 0);

playSe( 30, 1035); --かめはめ波
--playSe( 20, 1036); 
playSe( 45, 1036);
playSe( 70, 1036); 
playSe( 95, 1036);  
playSe( 120, 1036);  

aura2 = entryEffect(  30,   1503,   0x80,  -1,  0,  0,  40);   -- eff_004 (気)
aura3 = entryEffect(  30,   1502,   0,     -1,  0,  0,  40);   -- eff_003 (気)
setEffScaleKey( 30, aura2, 1.2, 1.2);
setEffScaleKey( 30, aura3, 1.2, 1.2);


-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 95, 0x40,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( 30, aura, 1.0, 1.0);
changeAnime( 30, 0, 17);                       -- 溜め!

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 30, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

--entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 127;
setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, 1018);

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260




------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 2.0, 2.0);
changeAnime( spep_6, 0, 30); 
changeAnime( spep_6, 1, 104); 
setDisp( spep_6, 1, 0);
setScaleKey( spep_6, 1, 1.5, 1.5);
setMoveKey(  spep_6,  1, 20,  0,   0);

kintoun = entryEffectLife(  spep_6,   SP_04, 49, 0x40+0x80,  0,  300,  0,  -137); -- キン斗雲
setEffScaleKey( spep_6, kintoun, 2.6, 1.2);
setEffAlphaKey( spep_6, kintoun, 255);


--P移動
--setMoveKey(  spep_6-1,    0,      0,  0,   0);


setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
--setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+20,    0,   0,  0,   0);
--setMoveKey(  spep_6+35,    0,   -150,  0,   0);

--changeAnime( spep_6+35, 0, 30); 

playSe( spep_6, SE_06);

SP_start2 = -30;
playSe( SP_start2+ spep_6+78, 1003);


entryFade( SP_start2+ spep_6+78, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
changeAnime( SP_start2+ spep_6+82, 0, 31); 
setDisp( SP_start2+ spep_6+82, 0, 1);
setScaleKey( SP_start2+ spep_6+81, 0, 2.0, 2.0);

setScaleKey( SP_start2+ spep_6+82, 0, 0.6, 0.6);
--setEffAlphaKey( SP_start2+spep_6+77, nyoibou, 0);
setMoveKey( SP_start2+  spep_6,  1, 700,  0,   0);

nyoibou2 = entryEffectLife( SP_start2+  spep_6+82,   SP_02, 48, 0x40+0x100,  0,  300,  -20,  -96); -- 如意棒
setEffRotateKey( SP_start2+ spep_6+82, nyoibou2, 30);

--setEffRotateKey( SP_start2+ spep_6+82, nyoibou2, -147);
--setEffRotateKey( SP_start2+ spep_6+82, nyoibou2, 213);

setEffScaleKey( SP_start2+spep_6+82, nyoibou2, 0.4, 0.4);

--[[
nyoibou2 = entryEffectLife( SP_start2+  spep_6+82,   SP_02, 48, 0x40+0x100,  0,  300,  601,  -504); -- 如意棒
setEffRotateKey( SP_start2+ spep_6+82, nyoibou2, -147);
--setEffRotateKey( SP_start2+ spep_6+82, nyoibou2, 213);

setEffScaleKey( SP_start2+spep_6+82, nyoibou2, 0.5, 0.4);
--]]

setEffAlphaKey( SP_start2+spep_6+82, nyoibou2, 255);

kintoun2 = entryEffectLife( SP_start2+  spep_6+82,   SP_04, 40, 0x40+0x80,  0,  300,  0,  0); -- キン斗雲
--setEffScaleKey( SP_start2+ spep_6+82, kintoun, 2.6, 1.2);
setEffAlphaKey( SP_start2+spep_6+82, kintoun2, 255);
setEffMoveKey(   SP_start2+ spep_6+82,  kintoun2,  -200,  -137);

wipeInOut( SP_start2+ spep_6+108+10);
--entryFade( SP_start2+ spep_6+108, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffAlphaKey( SP_start2+spep_6+111+10, nyoibou2, 255);
setEffAlphaKey( SP_start2+spep_6+112+10, nyoibou2, 0);
setEffAlphaKey( SP_start2+spep_6+111+10, kintoun2, 255);
setEffAlphaKey( SP_start2+spep_6+112+10, kintoun2, 0);
setDisp( SP_start2+ spep_6+112+10, 0, 0);
setDisp( SP_start2+ spep_6+112+10, 1, 1);
setMoveKey( SP_start2+  spep_6+110+10,    0,      0,  0,   0);

SP_start = -27+SP_start2+10;

nyoibou = entryEffectLife( SP_start2+  spep_6+110+10,   SP_01, 48, 0x40+0x100,  0,  1,  100,  0); -- 如意棒
setEffAlphaKey( SP_start2+spep_6+110+10, nyoibou, 255);
setEffScaleKey( SP_start2+ spep_6+109+10, nyoibou, 1.0, 1.0);
--setEffScaleKey( SP_start2+ SP_start+ spep_6+132, nyoibou, 1.0, 1.0);

playSe( SP_start2+ spep_6+120+10, 1003);


--changeAnime( SP_start2+ spep_6+120, 1, 104);                        -- ガード
setMoveKey( SP_start2+  spep_6+119+10,    1,  20,  0,   0);
setMoveKey( SP_start2+  spep_6+120+10,    1,  20,  0,   0);
setMoveKey( SP_start2+  spep_6+121+10,    1,  20,  0,   0);
--setScaleKey( SP_start2+ spep_6+119,    1,  0.7, 0.7);
--setScaleKey( SP_start2+ spep_6+120,    1,  0.7, 0.7);

--setMoveKey( SP_start2+  spep_6+150,    1,   120,  0,   0);
setScaleKey( SP_start2+  spep_6+120+10,   1,   1.6,  1.6);


setDamage( SP_start+ spep_6+152, 1, 0);  -- ダメージ振動等


playSe( SP_start+ spep_6+155, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start+ spep_6+155, 1, 108);
setMoveKey( SP_start+  spep_6+155, 1,  20,    0,  0);
setMoveKey( SP_start+  spep_6+169, 1,  400,    0,  0);
setScaleKey( SP_start+ spep_6+155, 1,  1.6, 1.6);
setScaleKey( SP_start+ spep_6+158, 1,  1.5, 1.5);
setScaleKey( SP_start+ spep_6+168, 1,  0.2, 0.2);

hit_eff_1 = entryEffect( SP_start+ spep_6+155,  4,  0x40,  -1,  0,  430, 600);--HIT
hit_eff_2 = entryEffect( SP_start+ spep_6+155,  906,  0x40,  -1,  0,  430, 600);
hit_eff_3 = entryEffect( SP_start+ spep_6+155,  908,  0x40,  -1,  0,  430, 600);

setEffScaleKey( SP_start+ spep_6+155, hit_eff_1, 1.5, 1.5);
setEffScaleKey( SP_start+ spep_6+155, hit_eff_2, 1.5, 1.5);
setEffScaleKey( SP_start+ spep_6+155, hit_eff_3, 1.5, 1.5);


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 127, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_6, 920, 127, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_6, 0, 96, 15);
setShakeChara( spep_6, 1, 96, 15);
setShake(spep_6,90, 10);
setShake(spep_6+61,129, 20);
setShake(spep_6+77+25, 5, 40);
setShake(spep_6+90+50, 5, 40);


shuchusen8 = entryEffectLife( SP_start2+  spep_6+110+10, 906, 78, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

entryFade( SP_start+ spep_6+96+50+20, 5,  10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(SP_start+ spep_6+96+50+26);

--setDisp( SP_start+ spep_6+91, 1, 0);

setDisp( SP_start+ spep_6+102+50+20, 0, 0);
setScaleKey( SP_start+ spep_6+102+50+20, 1, 1.5, 1.5);
--setScaleKey( SP_start+ spep_6+102+50+20, 0, 1, 1);

setScaleKey( SP_start+ spep_6+102+50+20, 0, 0.6, 0.6);
setMoveKey( SP_start+  spep_6+102+50+20,    0,      0,  0,   0);

--spep_5 = spep_9+99;
spep_5 = SP_start+spep_6+106+50+20;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 293; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+5,    0,      0,  0,   0);
setMoveKey( SP_dodge+9,    0,      -1100,  0,   0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5-1, 1, 1);
--setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1, 1);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
--entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
--playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
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
setEffShake( spep_5+15, ct, 30, 10);
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

playSe( spep_5+13, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setVisibleUI(0, 0);
--changeAnime( 0, 0, 0);                       -- 溜め!
--changeAnime( 30, 0, 1);  
setScaleKey(   0,   0, 1.5, 1.5);

setMoveKey(   0,   0, 0, 0, 0);
setMoveKey(   15,   0,  0, 0,  0);
setMoveKey(  125,   0,  0, 0, 0);

playSe( 30, 1035); --かめはめ波
--playSe( 20, 1036); 
playSe( 45, 1036);
playSe( 70, 1036); 
playSe( 95, 1036);  
playSe( 120, 1036);  

aura2 = entryEffect(  30,   1503,   0x80,  -1,  0,  0,  40);   -- eff_004 (気)
aura3 = entryEffect(  30,   1502,   0,     -1,  0,  0,  40);   -- eff_003 (気)
setEffScaleKey( 30, aura2, 1.2, 1.2);
setEffScaleKey( 30, aura3, 1.2, 1.2);


-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 95, 0x40,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( 30, aura, 1.0, 1.0);
changeAnime( 30, 0, 17);                       -- 溜め!

--[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 30, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

--entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 127;
setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, 1018);

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260




------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 2.0, 2.0);
changeAnime( spep_6, 0, 30); 
changeAnime( spep_6, 1, 104); 
setDisp( spep_6, 1, 0);
setScaleKey( spep_6, 1, 1.5, 1.5);
setMoveKey(  spep_6,  1, 20,  0,   0);

kintoun = entryEffectLife(  spep_6,   SP_04, 49, 0x40+0x80,  0,  300,  -10,  -127); -- キン斗雲
setEffScaleKey( spep_6, kintoun, 2.6, 1.2);
setEffAlphaKey( spep_6, kintoun, 255);


--P移動
--setMoveKey(  spep_6-1,    0,      0,  0,   0);


setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
--setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+20,    0,   0,  0,   0);
--setMoveKey(  spep_6+35,    0,   -150,  0,   0);

--changeAnime( spep_6+35, 0, 30); 

playSe( spep_6, SE_06);

SP_start2 = -30;
playSe( SP_start2+ spep_6+78, 1003);


entryFade( SP_start2+ spep_6+78, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
changeAnime( SP_start2+ spep_6+82, 0, 31); 
setDisp( SP_start2+ spep_6+82, 0, 1);
setScaleKey( SP_start2+ spep_6+81, 0, 2.0, 2.0);

setScaleKey( SP_start2+ spep_6+82, 0, 0.6, 0.6);
--setEffAlphaKey( SP_start2+spep_6+77, nyoibou, 0);
setMoveKey( SP_start2+  spep_6,  1, 700,  0,   0);

nyoibou2 = entryEffectLife( SP_start2+  spep_6+82,   SP_02, 48, 0x40+0x100,  0,  300,  -50,  -72); -- 如意棒
setEffRotateKey( SP_start2+ spep_6+82, nyoibou2, 30);

--setEffRotateKey( SP_start2+ spep_6+82, nyoibou2, -147);
--setEffRotateKey( SP_start2+ spep_6+82, nyoibou2, 213);

setEffScaleKey( SP_start2+spep_6+82, nyoibou2, 0.4, 0.4);

--[[
nyoibou2 = entryEffectLife( SP_start2+  spep_6+82,   SP_02, 48, 0x40+0x100,  0,  300,  601,  -504); -- 如意棒
setEffRotateKey( SP_start2+ spep_6+82, nyoibou2, -147);
--setEffRotateKey( SP_start2+ spep_6+82, nyoibou2, 213);

setEffScaleKey( SP_start2+spep_6+82, nyoibou2, 0.5, 0.4);
--]]

setEffAlphaKey( SP_start2+spep_6+82, nyoibou2, 255);

kintoun2 = entryEffectLife( SP_start2+  spep_6+82,   SP_04, 40, 0x40+0x80,  0,  300,  0,  0); -- キン斗雲
--setEffScaleKey( SP_start2+ spep_6+82, kintoun, 2.6, 1.2);
setEffAlphaKey( SP_start2+spep_6+82, kintoun2, 255);
setEffMoveKey(   SP_start2+ spep_6+82,  kintoun2,  -200,  -127);

wipeInOut( SP_start2+ spep_6+108+10);
--entryFade( SP_start2+ spep_6+108, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffAlphaKey( SP_start2+spep_6+111+10, nyoibou2, 255);
setEffAlphaKey( SP_start2+spep_6+112+10, nyoibou2, 0);
setEffAlphaKey( SP_start2+spep_6+111+10, kintoun2, 255);
setEffAlphaKey( SP_start2+spep_6+112+10, kintoun2, 0);
setDisp( SP_start2+ spep_6+112+10, 0, 0);
setDisp( SP_start2+ spep_6+112+10, 1, 1);
setMoveKey( SP_start2+  spep_6+112+10,    0,      0,  0,   0);

SP_start = -27+SP_start2+10;

nyoibou = entryEffectLife( SP_start2+  spep_6+110+10,   SP_01, 48, 0x40+0x100,  0,  1,  100,  0); -- 如意棒
setEffAlphaKey( SP_start2+spep_6+110+10, nyoibou, 255);
setEffScaleKey( SP_start2+ spep_6+109+10, nyoibou, 1.0, 1.0);
--setEffScaleKey( SP_start2+ SP_start+ spep_6+132, nyoibou, 1.0, 1.0);

playSe( SP_start2+ spep_6+120+10, 1003);


--changeAnime( SP_start2+ spep_6+120, 1, 104);                        -- ガード
setMoveKey( SP_start2+  spep_6+119+10,    1,  20,  0,   0);
setMoveKey( SP_start2+  spep_6+120+10,    1,  20,  0,   0);
setMoveKey( SP_start2+  spep_6+121+10,    1,  20,  0,   0);
--setScaleKey( SP_start2+ spep_6+119,    1,  0.7, 0.7);
--setScaleKey( SP_start2+ spep_6+120,    1,  0.7, 0.7);

--setMoveKey( SP_start2+  spep_6+150,    1,   120,  0,   0);
setScaleKey( SP_start2+  spep_6+120+10,   1,   1.6,  1.6);


setDamage( SP_start+ spep_6+152, 1, 0);  -- ダメージ振動等


playSe( SP_start+ spep_6+155, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start+ spep_6+155, 1, 108);
setMoveKey( SP_start+  spep_6+155, 1,  20,    0,  0);
setMoveKey( SP_start+  spep_6+169, 1,  400,    0,  0);
setScaleKey( SP_start+ spep_6+155, 1,  1.6, 1.6);
setScaleKey( SP_start+ spep_6+158, 1,  1.5, 1.5);
setScaleKey( SP_start+ spep_6+168, 1,  0.2, 0.2);

hit_eff_1 = entryEffect( SP_start+ spep_6+155,  4,  0x40,  -1,  0,  -280, 600);--HIT
hit_eff_2 = entryEffect( SP_start+ spep_6+155,  906,  0x40,  -1,  0,  -280, 600);
hit_eff_3 = entryEffect( SP_start+ spep_6+155,  908,  0x40,  -1,  0,  -280, 600);

setEffScaleKey( SP_start+ spep_6+155, hit_eff_1, 1.5, 1.5);
setEffScaleKey( SP_start+ spep_6+155, hit_eff_2, 1.5, 1.5);
setEffScaleKey( SP_start+ spep_6+155, hit_eff_3, 1.5, 1.5);


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 127, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_6, 920, 127, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_6, 0, 96, 15);
setShakeChara( spep_6, 1, 96, 15);
setShake(spep_6,90, 10);
setShake(spep_6+61,129, 20);
setShake(spep_6+77+25, 5, 40);
setShake(spep_6+90+50, 5, 40);


shuchusen8 = entryEffectLife( SP_start2+  spep_6+110+10, 906, 78, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

entryFade( SP_start+ spep_6+96+50+20, 5,  10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(SP_start+ spep_6+96+50+26);

--setDisp( SP_start+ spep_6+91, 1, 0);

setDisp( SP_start+ spep_6+102+50+20, 0, 0);
setScaleKey( SP_start+ spep_6+102+50+20, 1, 1.5, 1.5);
--setScaleKey( SP_start+ spep_6+102+50+20, 0, 1, 1);

setScaleKey( SP_start+ spep_6+102+50+20, 0, 0.6, 0.6);
setMoveKey( SP_start+  spep_6+102+50+20,    0,      0,  0,   0);

--spep_5 = spep_9+99;
spep_5 = SP_start+spep_6+106+50+20;



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 293; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+5,    0,      0,  0,   0);
setMoveKey( SP_dodge+9,    0,      -1100,  0,   0);

endPhase(SP_dodge+10);

do return end
else end


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5-1, 1, 1);
--setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1, 1);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
--entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
--playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
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
setEffShake( spep_5+15, ct, 30, 10);
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

playSe( spep_5+13, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);


end

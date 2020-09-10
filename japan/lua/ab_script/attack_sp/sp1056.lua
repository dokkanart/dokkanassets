

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
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

--SE_12 = 09;
SE_13 = 1020;--1034 1037


SP_01 = 102094;
SP_02 = 102095;
SP_03 = 102096;--迫る
SP_04 = 1566;
SP_05 = 700;--瞬間移動
SP_06 = 102097;--残像


--multi_frm = 2;

setDisp( 0, 1, 0);
changeAnime( 0, 0, 0);                       -- 手前
setMoveKey(  0,  0, 0,  -54,   0);
setMoveKey(  1,  0, 0,  -54,   0);
setScaleKey(  0,  0,  1.6,  1.6);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 129, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.7, 1.7);
setShakeChara( 30, 0, 19, 5);

entryEffect(  30,   1503,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1504,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

speff1 = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

setEffAlphaKey(  30, speff1, 255);
setEffAlphaKey(  30, speff2, 255);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 100, 300); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey(  125,  0,  1.6,  1.6);

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15)
spep_2=130; --211 260

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
changeAnime( spep_2+90, 0, 16);                       -- 手前
setMoveKey(  spep_2+90,  0, 0,  -54,   0);
setScaleKey(  spep_2+90,  0,  1.6,  1.6);
--setMoveKey(  129,  0, 0,  -54,   0);

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+2; --211 260


------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
playSe( spep_3, 1018);
entryFadeBg( spep_3, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--playSe( spep_3+30, 1035); --かめはめ波

setScaleKey( spep_3, 0, 1.0, 1.0);
setScaleKey( spep_3+20, 0, 2.0, 2.0);

-- ** エフェクト等 ** --


setScaleKey( spep_3+106, 0, 2.0, 2.0);
setScaleKey( spep_3+119, 0, 4.0, 4.0);
playSe( spep_3+119, 1018);

entryFade( spep_3+120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_3+125,  0, 0,  0,   0);

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( spep_3+30, 125, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+30, 10008, 99, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_3+30, ct, 95, 8);
setEffScaleKey(spep_3+30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( spep_3, 906, 125, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_3+60, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_3+125, shuchusen5, 1.0, 1.0);


spep_12=spep_3+130; --211 260



spep_6=spep_12; --211 260 spep_12+45

------------------------------------------------------
-- 吹っ飛ばし(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 1.4, 1.4);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setDisp( spep_6, 0, 1);

setScaleKey( spep_6, 1, 1.4, 1.4);
setMoveKey(  spep_6,  1, 0,  0,   0);
setMoveKey(  spep_6,  0, -600,  -400,   0);
setRotateKey( spep_6 , 0 , -20);

sen2 = entryEffectLife( spep_6, 920, 66, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_6, sen2, -40);
--setEffRotateKey( SP_start+spep_6, sen2, -170);
setEffScaleKey( spep_6, sen2, 1.6, 1.6);

-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 67, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

SP_start=-30; 

setShakeChara( SP_start+ spep_6, 0, 87, 15);
setShakeChara( SP_start+ spep_6, 1, 87, 15);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 349; --エンドフェイズのフレーム数を置き換える

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



setEnvZoomEnable(SP_start+ spep_6+30,1);

setMoveKey(  SP_start+ spep_6+40,  0, -100,  0,   0);

setRotateKey( SP_start+ spep_6+39 , 0 , -20);

setRotateKey( SP_start+ spep_6+40 , 0 , -70);


playSe( SP_start+ spep_6+44,1025);--SE
hit1 = entryEffect( SP_start+  spep_6+44,   3,   0,  1,   0,  0,  0);
syougeki = entryEffect( SP_start+  spep_6+44,   908,   0,  1,   0,  0,  0);
syougeki2 = entryEffect( SP_start+  spep_6+44,   908,   0,  1,   0,  0,  0);

setEffScaleKey( SP_start+  spep_6+44, syougeki2, 3.4, 3.4);

setEffScaleKey( SP_start+ spep_6+44, syougeki, 2.4, 2.4);
setEffScaleKey( SP_start+ spep_6+44, hit1, 2.4, 2.4);

setDamage( SP_start+ spep_6+45, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+45,   1, 106 ); --敵モーション

setMoveKey( SP_start+  spep_6+41,  1, 0,  0,   0);

setEnvZoomEnable(SP_start+ spep_6+52,0);

setMoveKey( SP_start+  spep_6+70,  1, 400,  800,   100);
setMoveKey( SP_start+  spep_6+76,  1, 400,  800,   100);
setDisp( SP_start+ spep_6+76, 1, 0);
--setDisp( SP_start+ spep_6+92, 0, 0);
setScaleKey( SP_start+ spep_6+50, 1,  1.4, 1.4);
setScaleKey( SP_start+ spep_6+70, 1,  0.5, 0.5);

setShake( SP_start+ spep_6,87, 10);


entryFade( SP_start+ spep_6+87, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setRotateKey( SP_start+ spep_6+90 , 0 , -70);

spep_7=SP_start+spep_6+94; --211 260
setDisp( spep_7, 0, 0);
setScaleKey( spep_6+92, 0, 1.4, 1.4);

setScaleKey( SP_start+  spep_6+95, 1,  1.8, 1.8);
setRotateKey( spep_7 , 0 , 0);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setRotateKey( spep_7 , 1 , -40);

setDisp( spep_7, 1, 1);
setMoveKey(  spep_7,    1,   -1000,  -1100,   0);

setMoveKey(  spep_7+50,    1,   180,  200,   0);
setRotateKey( spep_7+50 , 1 , -20);

setMoveKey(  spep_7+80,    1,   780,  -200,   0);
setRotateKey( spep_7+80 , 1 , 20);


entryFade( spep_7+70, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_7+80,  0, -150,  0,   0);
setScaleKey( spep_7+80,  0, 2.4, 2.4);
setDisp( spep_7+76, 1, 0);

removeAllEffect( spep_7+77);

entryFadeBg( spep_7, 0, 82, 0, 10, 10, 10, 255);       -- ベース暗め　背景

sen3 = entryEffectLife( spep_7, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_7, sen3, -70);
setEffScaleKey( spep_7, sen3, 1.6, 1.6);

spep_1=spep_7+82; --260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( spep_1-1, 0, 1);
setDisp( spep_1, 1, 1);

setMoveKey(  spep_1,    1,   -180,  1000,   0);

setScaleKey( spep_1,  0, 1.5, 1.5);
setScaleKey( spep_1,  1, 1.8, 1.8);

changeAnime( spep_1, 0, 30); -- かめはめ波発射ポーズ
setMoveKey(  spep_1+0,    0,   -1050,  0,   -20);
setMoveKey(  spep_1+50,    0,   -200,  0,   0);

changeAnime( spep_1+50, 0, 31); -- かめはめ波発射ポーズ
setMoveKey(  spep_1+50,    1,   0,  150,   0);
setScaleKey( spep_1+49,  0, 1.5, 1.5);
setScaleKey( spep_1+50,  0, 0.5, 0.5);

hit1 = entryEffect( spep_1+50,   3,   0,  1,   0,  0,  0);
syougeki = entryEffect( spep_1+50,   908,   0,  1,   0,  0,  0);
syougeki2 = entryEffect( spep_1+50,   908,   0,  1,   0,  0,  0);

setEffScaleKey( spep_1+50, syougeki2, 4.4, 4.4);
setEffScaleKey( spep_1+50, syougeki, 3.4, 3.4);
setEffScaleKey( spep_1+50, hit1, 3.4, 3.4);

changeAnime( spep_1+50, 1, 108); -- かめはめ波発射ポーズ

setMoveKey(  spep_1+60,    1,   1200,  100,   0);

playSe( spep_1+10, 1018);
--playSe( spep_1+30, 1037);

setShakeChara( spep_1, 0, 38, 8);
setShakeChara( spep_1+50, 0, 75, 20);

sen7 = entryEffectLife( spep_1, 920, 75, 0x80,  -1,  0,  0,  0); -- 流線

setDisp( spep_1+62, 1, 0);

entryFade( spep_1+68, 5,  11, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryFadeBg( spep_1, 0, 75, 0, 10, 10, 10, 255);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_1+28+12, 10018, 40, 0x100, -1, 0, 200, 450); -- ドゴォン
setEffShake(spep_1+28+12, ct, 32, 5);
setEffAlphaKey(spep_1+28+12, ct, 255);
setEffAlphaKey(spep_1+48+12, ct, 255);
setEffAlphaKey(spep_1+60+12, ct, 0);
setEffScaleKey(spep_1+28+12, ct, 0.0, 0.0);
setEffScaleKey(spep_1+48+12, ct, 1.3, 1.3);
setEffScaleKey(spep_1+60+12, ct, 6.0, 6.0);


playSe( spep_1+50, 1027);

setDisp( spep_1+73, 1, 0);
setScaleKey( spep_1+73,  0, 0.5, 0.5);

setDisp( spep_1+73, 0, 0);
setScaleKey( spep_1+73,  1, 1.8, 1.8);
setMoveKey(  spep_1+73,    1,   1200,  100,   0);

--setMoveKey(  spep_1+120,    1,   180,  0,   0);

removeAllEffect( spep_1+73 );

spep_5=spep_1+68+24; 

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1, 1);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
setDisp( spep_5, 1, 1);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake( spep_5+7,6,15);
setShake( spep_5+13,15,10);

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
dealDamage( spep_5+16);


--entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade


endPhase( spep_5+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setVisibleUI(0, 0);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 129, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.7, 1.7);
setShakeChara( 30, 0, 19, 5);

entryEffect(  30,   1503,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1504,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);
--[[
speff1 = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え
--]]

setEffAlphaKey(  30, speff1, 255);
setEffAlphaKey(  30, speff2, 255);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 300); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey(  125,  0,  1.6,  1.6);

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15)
spep_2=130; --211 260

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
changeAnime( spep_2+90, 0, 16);                       -- 手前
setMoveKey(  spep_2+90,  0, 0,  -54,   0);
setScaleKey(  spep_2+90,  0,  1.6,  1.6);
--setMoveKey(  129,  0, 0,  -54,   0);

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
playSe( spep_3, 1018);
entryFadeBg( spep_3, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--playSe( spep_3+30, 1035); --かめはめ波

setScaleKey( spep_3, 0, 1.0, 1.0);
setScaleKey( spep_3+20, 0, 2.0, 2.0);

-- ** エフェクト等 ** --


setScaleKey( spep_3+106, 0, 2.0, 2.0);
setScaleKey( spep_3+119, 0, 4.0, 4.0);
playSe( spep_3+119, 1018);

entryFade( spep_3+120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_3+125,  0, 0,  0,   0);

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( spep_3+30, 125, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+30, 10008, 99, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_3+30, ct, 95, 8);
setEffScaleKey(spep_3+30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( spep_3, 906, 125, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_3+60, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_3+125, shuchusen5, 1.0, 1.0);


spep_12=spep_3+130; --211 260



spep_6=spep_12; --211 260 spep_12+45

------------------------------------------------------
-- 吹っ飛ばし(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 1.4, 1.4);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setDisp( spep_6, 0, 1);

setScaleKey( spep_6, 1, 1.4, 1.4);
setMoveKey(  spep_6,  1, 0,  0,   0);
setMoveKey(  spep_6,  0, -600,  -400,   0);
setRotateKey( spep_6 , 0 , -20);


sen2 = entryEffectLife( spep_6, 920, 66, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_6, sen2, -40);
--setEffRotateKey( SP_start+spep_6, sen2, -170);
setEffScaleKey( spep_6, sen2, 1.6, 1.6);

SP_start=-30; 


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 67, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

setShakeChara( SP_start+ spep_6, 0, 87, 15);
setShakeChara( SP_start+ spep_6, 1, 87, 15);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 349; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end


setEnvZoomEnable(SP_start+ spep_6+30,1);

setMoveKey(  SP_start+ spep_6+40,  0, -100,  0,   0);

setRotateKey( SP_start+ spep_6+39 , 0 , -20);

setRotateKey( SP_start+ spep_6+40 , 0 , -70);


playSe( SP_start+ spep_6+44,1025);--SE
hit1 = entryEffect( SP_start+  spep_6+44,   3,   0,  1,   0,  0,  0);
syougeki = entryEffect( SP_start+  spep_6+44,   908,   0,  1,   0,  0,  0);
syougeki2 = entryEffect( SP_start+  spep_6+44,   908,   0,  1,   0,  0,  0);

setEffScaleKey( SP_start+  spep_6+44, syougeki2, 3.4, 3.4);

setEffScaleKey( SP_start+ spep_6+44, syougeki, 2.4, 2.4);
setEffScaleKey( SP_start+ spep_6+44, hit1, 2.4, 2.4);

setDamage( SP_start+ spep_6+45, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+45,   1, 106 ); --敵モーション

setMoveKey( SP_start+  spep_6+41,  1, 0,  0,   0);

setEnvZoomEnable(SP_start+ spep_6+52,0);

setMoveKey( SP_start+  spep_6+70,  1, 400,  800,   100);
setMoveKey( SP_start+  spep_6+76,  1, 400,  800,   100);
setDisp( SP_start+ spep_6+76, 1, 0);
--setDisp( SP_start+ spep_6+92, 0, 0);
setScaleKey( SP_start+ spep_6+50, 1,  1.4, 1.4);
setScaleKey( SP_start+ spep_6+70, 1,  0.5, 0.5);

setShake( SP_start+ spep_6,87, 10);


entryFade( SP_start+ spep_6+87, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setRotateKey( SP_start+ spep_6+90 , 0 , -70);

spep_7=SP_start+spep_6+94; --211 260
setDisp( spep_7, 0, 0);
setScaleKey( spep_6+92, 0, 1.4, 1.4);

setScaleKey( SP_start+  spep_6+95, 1,  1.8, 1.8);
setRotateKey( spep_7 , 0 , 0);


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setRotateKey( spep_7 , 1 , -40);

setDisp( spep_7, 1, 1);
setMoveKey(  spep_7,    1,   -1000,  -1100,   0);

setMoveKey(  spep_7+50,    1,   180,  200,   0);
setRotateKey( spep_7+50 , 1 , -20);

setMoveKey(  spep_7+80,    1,   780,  -200,   0);
setRotateKey( spep_7+80 , 1 , 20);


entryFade( spep_7+70, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_7+80,  0, -150,  0,   0);
setScaleKey( spep_7+80,  0, 2.4, 2.4);
setDisp( spep_7+76, 1, 0);

removeAllEffect( spep_7+77);

entryFadeBg( spep_7, 0, 82, 0, 10, 10, 10, 255);       -- ベース暗め　背景

sen3 = entryEffectLife( spep_7, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_7, sen3, -70);
setEffScaleKey( spep_7, sen3, 1.6, 1.6);

spep_1=spep_7+82; --260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( spep_1-1, 0, 1);
setDisp( spep_1, 1, 1);

setMoveKey(  spep_1,    1,   -180,  1000,   0);

setScaleKey( spep_1,  0, 1.5, 1.5);
setScaleKey( spep_1,  1, 1.8, 1.8);

changeAnime( spep_1, 0, 30); -- かめはめ波発射ポーズ
setMoveKey(  spep_1+0,    0,   -1050,  0,   -20);
setMoveKey(  spep_1+50,    0,   -200,  0,   0);

changeAnime( spep_1+50, 0, 31); -- かめはめ波発射ポーズ
setMoveKey(  spep_1+50,    1,   0,  150,   0);
setScaleKey( spep_1+49,  0, 1.5, 1.5);
setScaleKey( spep_1+50,  0, 0.5, 0.5);

hit1 = entryEffect( spep_1+50,   3,   0,  1,   0,  0,  0);
syougeki = entryEffect( spep_1+50,   908,   0,  1,   0,  0,  0);
syougeki2 = entryEffect( spep_1+50,   908,   0,  1,   0,  0,  0);

setEffScaleKey( spep_1+50, syougeki2, 4.4, 4.4);
setEffScaleKey( spep_1+50, syougeki, 3.4, 3.4);
setEffScaleKey( spep_1+50, hit1, 3.4, 3.4);

changeAnime( spep_1+50, 1, 108); -- かめはめ波発射ポーズ

setMoveKey(  spep_1+60,    1,   1200,  100,   0);

playSe( spep_1+10, 1018);
--playSe( spep_1+30, 1037);

setShakeChara( spep_1, 0, 38, 8);
setShakeChara( spep_1+50, 0, 75, 20);

sen7 = entryEffectLife( spep_1, 920, 75, 0x80,  -1,  0,  0,  0); -- 流線

setDisp( spep_1+62, 1, 0);

entryFade( spep_1+68, 5,  11, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryFadeBg( spep_1, 0, 75, 0, 10, 10, 10, 255);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_1+28+12, 10018, 40, 0x100, -1, 0, 200, 450); -- ドゴォン
setEffShake(spep_1+28+12, ct, 32, 5);
setEffAlphaKey(spep_1+28+12, ct, 255);
setEffAlphaKey(spep_1+48+12, ct, 255);
setEffAlphaKey(spep_1+60+12, ct, 0);
setEffScaleKey(spep_1+28+12, ct, 0.0, 0.0);
setEffScaleKey(spep_1+48+12, ct, 1.3, 1.3);
setEffScaleKey(spep_1+60+12, ct, 6.0, 6.0);


playSe( spep_1+50, 1027);

setDisp( spep_1+73, 1, 0);
setScaleKey( spep_1+73,  0, 0.5, 0.5);

setDisp( spep_1+73, 0, 0);
setScaleKey( spep_1+73,  1, 1.8, 1.8);
setMoveKey(  spep_1+73,    1,   1200,  100,   0);

--setMoveKey(  spep_1+120,    1,   180,  0,   0);

removeAllEffect( spep_1+73 );

spep_5=spep_1+68+24; 

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1, 1);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
setDisp( spep_5, 1, 1);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake( spep_5+7,6,15);
setShake( spep_5+13,15,10);

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
dealDamage( spep_5+16);


--entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade


endPhase( spep_5+120);

end

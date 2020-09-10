--旧ジャン拳演出　sp1077とほぼ同じ。
--バトルコマに合わせて筋斗雲のエフェクトの位置調整

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

SP_01 = 100230;
SP_02 = 100231;
SP_03 = 100232;
--SP_04 = 100232;
SP_04 = 150080;--筋斗雲のしっぽ
--[[
SP_05 = 150080;--グー
SP_06 = 150080;--チョキ
SP_06 = 150080;--パー
--]]

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0,  0,  0);
setMoveKey(   1,   0,    0,  0,  0);
setMoveKey(   2,   0,    0,  0,  0);
setMoveKey(   3,   0,    0,  0,  0);
setMoveKey(   4,   0,    0,  0,  0);
setMoveKey(   5,   0,    0,  0,  0);
setMoveKey(   6,   0,    0,  0,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
changeAnime( 0, 0, 0);                       -- 溜め!
changeAnime( 30, 0, 1);  
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
aura = entryEffectLife(  30,   311, 95, 0x40,  0,  1,  0,  -150); -- オーラ
setEffScaleKey( 30, aura, 1.0, 1.0);

shuchusen5 = entryEffectLife( 30, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

speff = entryEffect(  30,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);


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

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

--kintoun = entryEffectLife( spep_6, SP_04, 90, 0x40,  -1, 0,  0,  0);   -- キン斗雲
kintoun = entryEffectLife(  spep_6,   SP_04, 48, 0x40,  0,  1,  -145,  -77); -- キン斗雲
setEffScaleKey( spep_6, kintoun, 2.6, 1.2);

setScaleKey( spep_6, 0, 2.0, 2.0);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.5, 1.5);
setMoveKey(  spep_6,  1, 1700,  0,   0);


--P移動
setMoveKey(  spep_6-1,    0,   0,     0,   0);
setMoveKey(  spep_6,      0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,    0,   0);
setMoveKey(  spep_6+15,   0,   0,     0,   0);

setMoveKey(  spep_6+35,    0,   -150,  0,   0);

setMoveKey(  spep_6+45,  0, 700,  -10,   0);
setMoveKey(  spep_6+48,  0, 700,  -10,   0);
setMoveKey(  spep_6+49,  0, -1700,  -10,   0);


entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setEnvZoomEnable(spep_6+50,1);

setScaleKey( spep_6+49, 0, 2.0, 2.0);
setScaleKey( spep_6+50, 0, 1.5, 1.5);


setMoveKey(  spep_6+50,  0, -1700,  0,   0);
setMoveKey(  spep_6+51,  0, -700,  0,   0);
setMoveKey(  spep_6+61,  0, -120,  0,   0);

setMoveKey(  spep_6+50,  1, 1700,  0,   0);
setMoveKey(  spep_6+51,  1, 550,  0,   0);
setMoveKey(  spep_6+61,  1, 200,  0,   0);

--ジャン拳グー
changeAnime( spep_6+60,   0, 9 );--パンチ1
changeAnime( spep_6+61,   1, 110 );--パンチ2
playSe( spep_6+61,1000);--SE
entryEffect(  spep_6+62,   908,   0,  -1,   0,  20,  0);
hiteffect=entryEffect(  spep_6+62,   3,   0,  -1,   0,  0,  0);
setEffScaleKey( spep_6+60, hiteffect, 1.8, 1.8);

setDamage( spep_6+61, 1, 0);  -- ダメージ振動等
--setEnvZoomEnable(spep_6+53,1);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+60, 150083, 52, 0, -1, 0, 30, 300); -- グー
--setEffRotateKey( spep_6+60, ct, 270);

setEffShake(spep_6+60, ct, 32, 5);
setEffAlphaKey(spep_6+60, ct, 255);
setEffAlphaKey(spep_6+72, ct, 255);
setEffAlphaKey(spep_6+72+25, ct, 0);
--setEffAlphaKey(spep_6+80, ct, 0);
setEffScaleKey(spep_6+58, ct, 0.0, 0.0);
setEffScaleKey(spep_6+62, ct, 1.8, 1.8);
setEffScaleKey(spep_6+72, ct, 1.8, 1.8);
setEffScaleKey(spep_6+72+25, ct, 6.0, 6.0);

--setEnvZoomEnable(spep_6+66,0);


--ジャン拳チョキ
changeAnime( spep_6+76+25,   0, 10 );--パンチ2
changeAnime( spep_6+77+25,   1, 110 );--パンチ2
playSe( spep_6+77+25,1000);--SE
entryEffect(  spep_6+79+25,   908,   0,  -1,   0,  20,  0);
hiteffect=entryEffect(  spep_6+79+25,   3,   0,  -1,   0,  0,  0);
setEffScaleKey( spep_6+76+25, hiteffect, 1.8, 1.8);

setDamage( spep_6+77+25, 1, 0);  -- ダメージ振動等
--setEnvZoomEnable(spep_6+70,1);

-- 書き文字エントリー
ct2 = entryEffectLife( spep_6+76+25, 150082, 52, 0, -1, 0, 30, 300); -- チョキ
--setEffRotateKey( spep_6+76, ct2, 270);

setEffShake(spep_6+76+25, ct2, 32, 5);
setEffAlphaKey(spep_6+76+25, ct2, 255);
setEffAlphaKey(spep_6+82+50, ct2, 0);
setEffAlphaKey(spep_6+82, ct2, 0);
setEffScaleKey(spep_6+74+25, ct2, 0.0, 0.0);
setEffScaleKey(spep_6+78+25, ct2, 1.8, 1.8);
setEffScaleKey(spep_6+82, ct2, 1.8, 1.8);
setEffScaleKey(spep_6+82+50, ct2, 6.0, 6.0);

--setEnvZoomEnable(spep_6+82);


--ジャン拳パー

setMoveKey(  spep_6+90+50,  0, -120,  0,   0);
setMoveKey(  spep_6+90+50,  1, 200,  0,   0);

changeAnime( spep_6+90+50,   0, 11);--パンチ3
playSe( spep_6+89+50,1027);--SE
entryEffect(  spep_6+90+50,   905,   0,  1,   0,  0,  0);
setDamage( spep_6+91+50, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+91+50,   1, 108 ); --敵モーション

setMoveKey(  spep_6+91+50,  0, 10,  0,   0);
setMoveKey(  spep_6+106+50,  0, -300,  0,   0);

setMoveKey(  spep_6+91+50,  1, 180,  0,   0);
setMoveKey(  spep_6+101+50+18,  1, 1500,  0,   0);

setDisp( spep_6+102+50, 1, 1);

setEnvZoomEnable(spep_6+90+50,1);

-- 書き文字エントリー
ct3 = entryEffectLife( spep_6+90+50, 150081, 52, 0, -1, 0, 30, 300); -- パー
--setEffRotateKey( spep_6+90, ct3, 270);

setEffShake(spep_6+90+50, ct3, 32, 5);
setEffAlphaKey(spep_6+90+50, ct3, 255);
setEffAlphaKey(spep_6+99+50, ct3, 255);
setEffAlphaKey(spep_6+99+50+20, ct3, 0);
setEffScaleKey(spep_6+88+50, ct3, 0.0, 0.0);
setEffScaleKey(spep_6+92+50, ct3, 1.8, 1.8);
setEffScaleKey(spep_6+96+50, ct3, 1.8, 1.8);
setEffScaleKey(spep_6+96+50+20, ct3, 6.0, 6.0);

setEnvZoomEnable(spep_6+114+50,0);

playSe( spep_6, SE_07);


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 172, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( spep_6, 920, 172, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_6, 0, 96, 15);
setShakeChara( spep_6, 1, 96, 15);
setShake(spep_6,90, 10);
setShake(spep_6+61,129, 20);
setShake(spep_6+77+25, 5, 40);
setShake(spep_6+90+50, 5, 40);


shuchusen8 = entryEffectLife( spep_6+50, 906, 172, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

setScaleKey( spep_6+96+50+20, 0, 1.5, 1.5);
setScaleKey( spep_6+96+50+20, 1, 1.5, 1.5);

entryFade( spep_6+96+50+20, 5,  10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setDisp( spep_6+91, 1, 0);
setDisp( spep_6+102+50+20, 0, 0);
setScaleKey( spep_6+102+50+20, 1, 1, 1);
setScaleKey( spep_6+102+50+20, 0, 1, 1);

--spep_5 = spep_9+99;
spep_5 = spep_6+106+50+20;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 255; --エンドフェイズのフレーム数を置き換える

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


playSe( spep_6+40, SE_06);

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
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 0);                       -- 溜め!
changeAnime( 30, 0, 1);  
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
aura = entryEffectLife(  30,   311, 95, 0x40,  0,  1,  0,  -150); -- オーラ
setEffScaleKey( 30, aura, 1.0, 1.0);

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 30, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
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

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260


------------------------------------------------------
-- 突進(60F)
------------------------------------------------------


kintoun = entryEffectLife(  spep_6,   SP_04, 48, 0x40,  0,  1,  -145,  -77); -- キン斗雲
setEffScaleKey( spep_6, kintoun, 2.6, 1.2);

setScaleKey( spep_6, 0, 2.0, 2.0);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.5, 1.5);
setMoveKey(  spep_6,  1, 1700,  0,   0);


--P移動
setMoveKey(  spep_6-1,    0,      0,  0,   0);
setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+15,    0,   0,  0,   0);

setMoveKey(  spep_6+35,    0,   -150,  0,   0);



setMoveKey(  spep_6+45,  0, 700,  0,   0);
setMoveKey(  spep_6+48,  0, 700,  0,   0);
setMoveKey(  spep_6+49,  0, -1700,  0,   0);


entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setEnvZoomEnable(spep_6+50,1);

setScaleKey( spep_6+49, 0, 2.0, 2.0);
setScaleKey( spep_6+50, 0, 1.5, 1.5);


setMoveKey(  spep_6+50,  0, -1700,  0,   0);
setMoveKey(  spep_6+51,  0, -700,  0,   0);
setMoveKey(  spep_6+61,  0, -120,  0,   0);

setMoveKey(  spep_6+50,  1, 1700,  0,   0);
setMoveKey(  spep_6+51,  1, 550,  0,   0);
setMoveKey(  spep_6+61,  1, 200,  0,   0);

--ジャン拳グー
changeAnime( spep_6+60,   0, 9 );--パンチ1
changeAnime( spep_6+61,   1, 110 );--パンチ2
playSe( spep_6+61,1000);--SE
entryEffect(  spep_6+62,   908,   0,  -1,   0,  20,  0);
hiteffect=entryEffect(  spep_6+62,   3,   0,  -1,   0,  0,  0);
setEffScaleKey( spep_6+60, hiteffect, 1.8, 1.8);

setDamage( spep_6+61, 1, 0);  -- ダメージ振動等
--setEnvZoomEnable(spep_6+53,1);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+60, 150083, 52, 0, -1, 0, 30, 300); -- グー

setEffShake(spep_6+60, ct, 32, 5);
setEffAlphaKey(spep_6+60, ct, 255);
setEffAlphaKey(spep_6+72, ct, 255);
setEffAlphaKey(spep_6+72+25, ct, 0);

--setEffAlphaKey(spep_6+80, ct, 0);
setEffScaleKey(spep_6+58, ct, 0.0, 0.0);
setEffScaleKey(spep_6+62, ct, -1.8, 1.8);
setEffScaleKey(spep_6+72, ct, -1.8, 1.8);
setEffScaleKey(spep_6+72+25, ct, -6.0, 6.0);

--setEnvZoomEnable(spep_6+66,0);


--ジャン拳チョキ
changeAnime( spep_6+76+25,   0, 10 );--パンチ2
changeAnime( spep_6+77+25,   1, 110 );--パンチ2
playSe( spep_6+77+25,1000);--SE
entryEffect(  spep_6+79+25,   908,   0,  -1,   0,  20,  0);
hiteffect=entryEffect(  spep_6+79+25,   3,   0,  -1,   0,  0,  0);
setEffScaleKey( spep_6+76+25, hiteffect, 1.8, 1.8);

setDamage( spep_6+77+25, 1, 0);  -- ダメージ振動等
--setEnvZoomEnable(spep_6+70,1);

-- 書き文字エントリー
ct2 = entryEffectLife( spep_6+76+25, 150082, 52, 0, -1, 0, 30, 300); -- チョキ

setEffShake(spep_6+76+25, ct2, 32, 5);
setEffAlphaKey(spep_6+76+25, ct2, 255);
setEffAlphaKey(spep_6+82+50, ct2, 0);
setEffAlphaKey(spep_6+82, ct2, 0);

setEffScaleKey(spep_6+74+25, ct2, 0.0, 0.0);
setEffScaleKey(spep_6+78+25, ct2, -1.8, 1.8);
setEffScaleKey(spep_6+82, ct2, -1.8, 1.8);
setEffScaleKey(spep_6+82+50, ct2, -6.0, 6.0);

--setEnvZoomEnable(spep_6+82);


--ジャン拳パー

setMoveKey(  spep_6+90+50,  0, -120,  0,   0);
setMoveKey(  spep_6+90+50,  1, 200,  0,   0);

changeAnime( spep_6+90+50,   0, 11);--パンチ3
playSe( spep_6+89+50,1027);--SE
entryEffect(  spep_6+90+50,   905,   0,  1,   0,  0,  0);
setDamage( spep_6+91+50, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+91+50,   1, 108 ); --敵モーション

setMoveKey(  spep_6+91+50,  0, 10,  0,   0);
setMoveKey(  spep_6+106+50,  0, -300,  0,   0);

setMoveKey(  spep_6+91+50,  1, 180,  0,   0);
setMoveKey(  spep_6+101+50+18,  1, 1500,  0,   0);

setDisp( spep_6+102+50, 1, 1);

setEnvZoomEnable(spep_6+90+50,1);

-- 書き文字エントリー
ct3 = entryEffectLife( spep_6+90+50, 150081, 52, 0, -1, 0, 30, 300); -- パー

setEffScaleKey(spep_6+88+50, ct3, 0.0, 0.0);

setEffShake(spep_6+90+50, ct3, 32, 5);
setEffAlphaKey(spep_6+90+50, ct3, 255);
setEffAlphaKey(spep_6+99+50, ct3, 255);
setEffAlphaKey(spep_6+99+50+20, ct3, 0);

setEffScaleKey(spep_6+92+50, ct3, -1.8, 1.8);
setEffScaleKey(spep_6+96+50, ct3, -1.8, 1.8);
setEffScaleKey(spep_6+96+50+20, ct3, -6.0, 6.0);

setEnvZoomEnable(spep_6+114+50,0);

playSe( spep_6, SE_07);


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 172, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( spep_6, 920, 172, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_6, 0, 96, 15);
setShakeChara( spep_6, 1, 96, 15);
setShake(spep_6,90, 10);
setShake(spep_6+61,129, 20);
setShake(spep_6+77+25, 5, 40);
setShake(spep_6+90+50, 5, 40);


shuchusen8 = entryEffectLife( spep_6+50, 906, 172, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

--setScaleKey( spep_6+96+60, 0, 2.0, 2.0);
setScaleKey( spep_6+96+50+20, 0, 1.5, 1.5);
setScaleKey( spep_6+96+50+20, 1, 1.5, 1.5);

entryFade( spep_6+96+50+20, 5,  10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setDisp( spep_6+91, 1, 0);
setDisp( spep_6+102+50+20, 0, 0);
setScaleKey( spep_6+102+50+20, 1, 1, 1);
setScaleKey( spep_6+102+50+20, 0, 1, 1);

--spep_5 = spep_9+99;
spep_5 = spep_6+106+50+20;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 255; --エンドフェイズのフレーム数を置き換える

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

playSe( spep_6+40, SE_06);

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

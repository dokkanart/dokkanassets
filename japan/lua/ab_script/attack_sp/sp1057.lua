

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

SP_01 = 160010;--敵方向へダッシュしてパンチ（絵が同じなので敵版は反転OK）
SP_02 = 160011;--パンチ連打とHITエフェクト（絵が同じなので敵版は反転OK）
SP_03 = 160012;--ダッシュ時の背景エフェクト
SP_04 = 160013;--連打時の背景エフェクト
SP_05 = 160014;--HIT時のエフェクト単品


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
entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setVisibleUI(0, 0);
changeAnime( 0, 0, 0);                       -- 溜め!
--changeAnime( 30, 0, 1);  
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);

setMoveKey(   0,   0, 0, -54, 0);
setMoveKey(   1,   0, 0, -54, 0);
setMoveKey(   2,   0, 0, -54, 0);
setMoveKey(   3,   0, 0, -54, 0);
setMoveKey(   4,   0, 0, -54, 0);
setMoveKey(   5,   0, 0, -54, 0);
setMoveKey(   15,   0,  0, -54,  0);
setMoveKey(  125,   0,  0, -54, 0);

playSe( 30, 1035); --かめはめ波
--playSe( 20, 1036); 
playSe( 45, 1036);
playSe( 70, 1036); 
playSe( 95, 1036);  
playSe( 120, 1036);  

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   341, 95, 0x40,  0,  -1,  -5,  -280); -- オーラ
setEffScaleKey( 30, aura, 1.7, 1.7);

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 5);

--文字エントリー
ctgogo=entryEffectLife(30,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(30,ctgogo,-10,520,0);
setEffMoveKey(100,ctgogo,-10,520,0);
setEffScaleKey(30, ctgogo, 0.7, 0.7);
setEffScaleKey(100, ctgogo, 0.7, 0.7);


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
setDisp( spep_2+90, 0, 0);
setMoveKey(  125,   0,  -110, -84, 0);

-- ** エフェクト等 ** --
removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260


------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

entryEffectLife( spep_6+1, 920, 227, 0x80,  -1,  0,  0,  0); -- 流線


tokitobasibg = entryEffectLife(  spep_6-1,   SP_03, 80, 0x40+0x080,  0, 300,  0,  0); -- 時飛ばし背景

--totugeki = entryEffectLife(  spep_6,   SP_01, 50, 0x40,  -1, 0,  0,  0); -- ヒット突撃
totugeki = entryEffect(  spep_6,   SP_01,   0x40,  0,  300,  0,  0);   -- ヒット突撃
changeAnime( spep_6, 1, 104); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.5, 1.5);
setMoveKey(  spep_6,  1, 1700,  0,   0);

playSe( spep_6, 1018);


setMoveKey( spep_6+50,  1, 1700,  0,   0);
setMoveKey( spep_6+51,  1, 550,  0,   0);
setMoveKey(  spep_6+61,  1, 100,  0,   0);

setShake( spep_6,80, 10);

changeAnime( spep_6+61,   1, 108 );--ダメージ
playSe( spep_6+61,1025);--SE

setDamage( spep_6+61, 1, 0);  -- ダメージ振動等

SP_start2 = 30;

setShake( SP_start2+spep_6+50,141, 20);

--entryFade( SP_start2+  spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

tokitobasibg2 = entryEffectLife( SP_start2+  spep_6+50,   SP_04, 141, 0x40+0x80,  0, 300,  0,  0); -- 時飛ばし背景
--rennda = entryEffectLife( SP_start2+  spep_6+50,   SP_02, 127, 0x40,  -1, 0,  0,  0); -- 連打
rennda = entryEffect( SP_start2+  spep_6+50,   SP_02,   0x40,  0,  300,  0,  0);   -- 連打

playSe( SP_start2+ spep_6+50,1000);--SE
playSe( SP_start2+ spep_6+60,1001);--SE
playSe( SP_start2+ spep_6+70,1006);--SE
playSe( SP_start2+ spep_6+80,1007);--SE
playSe( SP_start2+ spep_6+90,1009);--SE
playSe( SP_start2+ spep_6+100,1010);--SE
playSe( SP_start2+ spep_6+110,1013);--SE
playSe( SP_start2+ spep_6+124,1025);--SE


setShakeChara( SP_start2+ spep_6+50, 1, 20, 15);
setShakeChara( SP_start2+ spep_6+70, 1, 30, 20);
setShakeChara( SP_start2+ spep_6+100, 1, 30, 25);
setShakeChara( SP_start2+ spep_6+130, 1, 50, 30);

--setEnvZoomEnable( SP_start2+spep_6+44,1);


--setEnvZoomEnable( SP_start2+spep_6+130,0);


--playSe( SP_start2+ spep_6, SE_07);


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 227, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen8 = entryEffectLife( SP_start2+ spep_6+50, 906, 141, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start2+ spep_6+50, shuchusen8, 1.5, 1.5);

setScaleKey( SP_start2+ spep_6+96+50+20+15, 0, 1.5, 1.5);
setScaleKey( SP_start2+ spep_6+96+50+20+15, 1, 1.5, 1.5);

entryFade( SP_start2+ spep_6+166+10, 5,  10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_start2+  spep_6+166+21,   0,  -120, -60, 0);
setMoveKey(  SP_start2+  spep_6+166+21,  1, 100,  0,   0);

SP_start = SP_start2+  spep_6+170+21;


changeAnime( SP_start,   0, 102 );--パンチ1
setMoveKey( SP_start,    0,   -220,  200,   0);
setMoveKey(  SP_start,  1, 70,  -50,   0);
setDisp( SP_start, 0, 1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 264; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+8,   0,  -110, 0, 0);
setMoveKey( SP_dodge+10,   0,  -5000, 0, 0);
setMoveKey( SP_dodge+10,   1,  5000, -60, 0);

setDisp( SP_dodge+8, 0, 0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 敵吹き飛ぶ
------------------------------------------------------

entryFadeBg( SP_start, 0, 92, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen2 = entryEffectLife( SP_start, 921, 86, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start, sen2, 200);
--setShakeChara( 0, 0, 54, 50);
setEffScaleKey( SP_start, sen2, 1.6, 1.6);
setShakeChara( SP_start+32, 1, 20, 25);

playSe( SP_start+32, 1025);
playSe( SP_start+42, 1025);
playSe( SP_start+52, 1052);

hiteffect=entryEffect(  SP_start+32,   SP_05,   0x100,  1,   300,  0,  0);
setEffScaleKey( SP_start+30, hiteffect, 1.8, 1.8);

changeAnime( SP_start+78,   1, 107 );--吹き飛び
setMoveKey(  SP_start+78,  1, 70,  -50,   0);
--playSe( SP_start+82, 1002);
setShakeChara( SP_start+78, 1, 20, 55);

shuchusen9 = entryEffectLife( SP_start, 906, 92, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start, shuchusen9, 1.5, 1.5);


entryFade( SP_start+86, 5,  14, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_start+92,  1, 850,  -1200,   -150);
setDisp( SP_start+92, 0, 0);
setScaleKey( SP_start+92, 1, 1.5, 1.5);
setScaleKey( SP_start+92, 0, 1.5, 1.5);

spep_5 = SP_start+96;

------------------------------------------------------
-- ガ
------------------------------------------------------

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

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
ct = entryEffectLife( spep_5+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
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
setEffAlphaKey( spep_5+110, ct, 0);

playSe( spep_5+14, SE_11);
shuchusen = entryEffectLife( spep_5+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+106);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setVisibleUI(0, 0);
changeAnime( 0, 0, 0);                       -- 溜め!
--changeAnime( 30, 0, 1);  
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);


setMoveKey(   0,   0, 0, -54, 0);
setMoveKey(   1,   0, 0, -54, 0);
setMoveKey(   2,   0, 0, -54, 0);
setMoveKey(   3,   0, 0, -54, 0);
setMoveKey(   4,   0, 0, -54, 0);
setMoveKey(   5,   0, 0, -54, 0);
setMoveKey(   15,   0,  0, -54,  0);
setMoveKey(  125,   0,  0, -54, 0);

playSe( 30, 1035); --かめはめ波
--playSe( 20, 1036); 
playSe( 45, 1036);
playSe( 70, 1036); 
playSe( 95, 1036);  
playSe( 120, 1036);  

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   341, 95, 0x40,  0,  -1,  -5,  -280); -- オーラ
setEffScaleKey( 30, aura, 1.7, 1.7);

--[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 97, 5);

-- 書き文字エントリー
--文字エントリー
ctgogo=entryEffectLife(30,190006,70,0x100,-1,-10,520);--ゴゴゴ
setEffMoveKey(30,ctgogo,-10,520,0);
setEffMoveKey(100,ctgogo,-10,520,0);
setEffScaleKey(30, ctgogo, -0.7, 0.7);
setEffScaleKey(100, ctgogo, -0.7, 0.7);



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
setDisp( spep_2+90, 0, 0);
setMoveKey(  125,   0,  -110, -84, 0);

-- ** エフェクト等 ** --
removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

entryEffectLife( spep_6+1, 920, 227, 0x80,  -1,  0,  0,  0); -- 流線


tokitobasibg = entryEffectLife(  spep_6-1,   SP_03, 80, 0x40+0x080,  0, 300,  0,  0); -- 時飛ばし背景

--totugeki = entryEffectLife(  spep_6,   SP_01, 50, 0x40,  -1, 0,  0,  0); -- ヒット突撃
totugeki = entryEffect(  spep_6,   SP_01,   0x40,  0,  300,  0,  0);   -- ヒット突撃
changeAnime( spep_6, 1, 104); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.5, 1.5);
setMoveKey(  spep_6,  1, 1700,  0,   0);

playSe( spep_6, 1018);


setMoveKey( spep_6+50,  1, 1700,  0,   0);
setMoveKey( spep_6+51,  1, 550,  0,   0);
setMoveKey(  spep_6+61,  1, 100,  0,   0);



changeAnime( spep_6+61,   1, 108 );--ダメージ
playSe( spep_6+61,1025);--SE

setDamage( spep_6+61, 1, 0);  -- ダメージ振動等

SP_start2 = 30;


--entryFade( SP_start2+  spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

tokitobasibg2 = entryEffectLife( SP_start2+  spep_6+50,   SP_04, 141, 0x40+0x80,  0, 300,  0,  0); -- 時飛ばし背景
--rennda = entryEffectLife( SP_start2+  spep_6+50,   SP_02, 127, 0x40,  -1, 0,  0,  0); -- 連打
rennda = entryEffect( SP_start2+  spep_6+50,   SP_02,   0x40,  0,  300,  0,  0);   -- 連打

playSe( SP_start2+ spep_6+50,1000);--SE
playSe( SP_start2+ spep_6+60,1001);--SE
playSe( SP_start2+ spep_6+70,1006);--SE
playSe( SP_start2+ spep_6+80,1007);--SE
playSe( SP_start2+ spep_6+90,1009);--SE
playSe( SP_start2+ spep_6+100,1010);--SE
playSe( SP_start2+ spep_6+110,1013);--SE
playSe( SP_start2+ spep_6+124,1025);--SE


setShakeChara( SP_start2+ spep_6+50, 1, 20, 15);
setShakeChara( SP_start2+ spep_6+70, 1, 30, 20);
setShakeChara( SP_start2+ spep_6+100, 1, 30, 25);
setShakeChara( SP_start2+ spep_6+130, 1, 50, 30);

--setEnvZoomEnable( SP_start2+spep_6+44,1);


--setEnvZoomEnable( SP_start2+spep_6+130,0);


--playSe( SP_start2+ spep_6, SE_07);


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 227, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen8 = entryEffectLife( SP_start2+ spep_6+50, 906, 141, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start2+ spep_6+50, shuchusen8, 1.5, 1.5);



entryFade( SP_start2+ spep_6+166+10, 5,  10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_start2+  spep_6+166+21,   0,  -120, -60, 0);
setMoveKey(  SP_start2+  spep_6+166+21,  1, 100,  0,   0);

SP_start = SP_start2+  spep_6+170+21;


changeAnime( SP_start,   0, 102 );--パンチ1
setMoveKey( SP_start,    0,   -220,  200,   0);
setMoveKey(  SP_start,  1, 50,  -50,   0);
setDisp( SP_start, 0, 1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 264; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+8,   0,  -110, 0, 0);
setMoveKey( SP_dodge+10,   0,  -5000, 0, 0);
setMoveKey( SP_dodge+10,   1,  5000, -60, 0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 敵吹き飛ぶ
------------------------------------------------------
setShake( SP_start2+spep_6+50,141, 20);
setShake( spep_6,80, 10);
setScaleKey( SP_start2+ spep_6+96+50+20+15, 0, 1.5, 1.5);
setScaleKey( SP_start2+ spep_6+96+50+20+15, 1, 1.5, 1.5);

entryFadeBg( SP_start, 0, 92, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen2 = entryEffectLife( SP_start, 921, 86, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start, sen2, 200);
--setShakeChara( 0, 0, 54, 50);
setEffScaleKey( SP_start, sen2, 1.6, 1.6);
setShakeChara( SP_start+32, 1, 20, 25);

playSe( SP_start+32, 1025);
playSe( SP_start+42, 1025);
playSe( SP_start+52, 1052);

hiteffect=entryEffect(  SP_start+32,   SP_05,   0x100,  1,   300,  0,  0);
setEffScaleKey( SP_start+30, hiteffect, 1.8, 1.8);

changeAnime( SP_start+78,   1, 107 );--吹き飛び
setMoveKey(  SP_start+78,  1, 70,  -50,   0);
--playSe( SP_start+82, 1002);
setShakeChara( SP_start+78, 1, 20, 55);

shuchusen9 = entryEffectLife( SP_start, 906, 92, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start, shuchusen9, 1.5, 1.5);


entryFade( SP_start+86, 5,  14, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_start+92,  1, 850,  -1200,   -150);
setDisp( SP_start+92, 0, 0);
setScaleKey( SP_start+92, 1, 1.5, 1.5);
setScaleKey( SP_start+92, 0, 1.5, 1.5);

spep_5 = SP_start+96;

------------------------------------------------------
-- ガ
------------------------------------------------------

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

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
ct = entryEffectLife( spep_5+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
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
setEffAlphaKey( spep_5+110, ct, 0);

playSe( spep_5+14, SE_11);
shuchusen = entryEffectLife( spep_5+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+106);

end

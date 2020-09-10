-- 死亡 (最終）
setPhase(9);

ATK_dead = 0;
ATK_end = ATK_dead+160;

-- エフェクト全消し
removeAllEffect(0);

--entryEffect( 1,   1703,   0,  -1,  0,  0,  0);   --ガラス
--playSe( 1, 1041);--SE
--playSe( ATK_dead, 1040);--SE
--playSe( 2, 1054);--SE

---------------------
dealDamage( ATK_dead+1);
playSe( ATK_dead+1, 1035);--SE
playSe( ATK_dead+2, 1027);--SE
entryFade( ATK_dead, 5, 4, 7, 255,255,255,0);

changeAnime( ATK_dead,  1,  107);--ダメージふっ飛び

--P移動（これは前回の位置を当てはめます）
setMoveKey(  0,  0,     0,    0,   100);
setMoveKey(  1,  0,  -1800,  -1700,  0);

--E移動（これは前回の位置を当てはめます）
setScaleKey( ATK_dead+1, 1, 0.2, 0.2);--大きさ
setScaleKey( ATK_dead+2, 1, 0.2, 0.2);--大きさ
setScaleKey( ATK_dead+34, 1, 1.4, 1.4);--大きさ

setMoveKey(  0,   1,  700,  0,  100);  
setMoveKey(  ATK_dead,   1,  700,  0,  100); 
setMoveKey(  ATK_dead+1,   1,  0,  0,  100);  
setMoveKey(  ATK_dead+2,   1,  0,  0,  100);
setMoveKey(  ATK_dead+25,  1,  0,  0,  100);
setMoveKey(  ATK_dead+35,  1,  -100, 20, -128);
--setMoveKey(  ATK_dead+150, 1,  -100, 50, -128);

----entryFlash( (ATK_dead+16), 1, fcolor_r, fcolor_g, fcolor_b, 100);
------entryFlash( (ATK_dead+23), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (ATK_dead+26), 1, 255, 30, 0, 120);
------entryFlash( (ATK_dead+35), 3, fcolor_r, fcolor_g, fcolor_b, 200);
------entryFlash( (ATK_dead+45), 1, fcolor_r, fcolor_g, fcolor_b, 200);

--背景の色設定
entryFadeBg( ATK_dead+5, 2, 33, 0, 240, 240, 240, 255);

--集中線
--dead_sen=entryEffectLife( ATK_dead+7, 921, 20, 0x80,  -1,  0,  0,  0);

---------フェイド開け
setShakeChara( ATK_dead+13, 1, 120,20);--ゆれ
setQuake( ATK_dead+12+21, 7, 15);

--フェイド赤
entryFade( ATK_dead+30, 7, 10, 10, 255,30,0,255);
--Eいどう
setMoveKey(  ATK_dead+38,  1,  -100, 20, -128);
setMoveKey(  ATK_dead+39,  1,  -700, 0, 0);
setScaleKey( ATK_dead+38, 1, 1.4, 1.4);--大きさ
setScaleKey( ATK_dead+39, 1, 0.8,  0.8);--大きさ

death_ATK_1 = ATK_dead+45;
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

multi_frm = 2;

------------------------------------------------------
-- 死亡 
------------------------------------------------------
--entryFade(death_ATK_1,0,5,10,255,30,0,255);


--P移動
setMoveKey(  death_ATK_1,    0,  -1800,    -1700,  -128);
--集中線
sn1 = entryEffectLife( death_ATK_1, 921, 30, 0x80, -1, 0, 0,0); 
setEffShake( death_ATK_1, sn1, 15, 15);
setEffScaleKey(death_ATK_1,sn1,1.5,1.2);
setEffRotateKey( death_ATK_1, sn1, -135);

--Eいどう
setMoveKey(  death_ATK_1+1,    1,  -700, 0, 0);
setMoveKey(  death_ATK_1+2,    1,    -230,    280,  128);
changeAnime( death_ATK_1+1, 1, 107);                         -- 手前ダメージ
entryEffect( death_ATK_1+3, 1509,  0x80,  1,  0,  0,  0);   -- 爆発
playSe( death_ATK_1+14, SE_10);
setQuake(death_ATK_1+2,5,12);
------entryFlashBg(death_ATK_1+5,3,255,0,0);
setMoveKey(  death_ATK_1+10,    1,    -230,    280,  128);
setMoveKey(  death_ATK_1+23,   1,  -60,  -80,  -100);
--setMoveKey(  death_ATK_1+16,   1,  -60,  -150,  -100);
----entryFlashBg(death_ATK_1+10,1,255,255,255);
--[[
setScaleKey( death_ATK_1+15,   1,  0.8,  0.8);
setScaleKey( death_ATK_1+16,   1,  1.7,  1.7);
setScaleKey( death_ATK_1+17,   1,  1.1,  1.1);
--]]
----entryFlashBg(death_ATK_1+17,1,0,0,0);
--[[
setScaleKey( death_ATK_1+18,   1,  0.9,  0.9);
setScaleKey( death_ATK_1+19,   1,  1.5,  1.5);
setScaleKey( death_ATK_1+20,   1,  0.9,  0.9);
--]]
----entryFlashBg(death_ATK_1+20,3,0,0,0);
--[[
setScaleKey( death_ATK_1+22,   1,  1.25,  1.25);
setScaleKey( death_ATK_1+23,   1,  1.1,  1.1);
setScaleKey( death_ATK_1+110,   1,  1.1,  1.1);
--]]

setRotateKey( death_ATK_1,  1,  30 );
setRotateKey( death_ATK_1+2,  1,  80 );
setRotateKey( death_ATK_1+4,  1, 120 );
setRotateKey( death_ATK_1+6,  1, 160 );
setRotateKey( death_ATK_1+10,  1, 200 );
setRotateKey( death_ATK_1+13,  1, 260 );
setRotateKey( death_ATK_1+15,  1, 320 );
setRotateKey( death_ATK_1+18,  1,   0 );

setShakeChara( death_ATK_1+20, 1, 5,  10);
setShakeChara( death_ATK_1+25, 1, 10, 20);

--振動
setQuake(death_ATK_1+23,15,30);

-- 書き文字エントリー
ct = entryEffectLife( death_ATK_1+24, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( death_ATK_1+24, ct, 30, 10);
setEffRotateKey( death_ATK_1+24, ct, -40);
setEffScaleKey( death_ATK_1+24, ct, 4.0, 4.0);
setEffScaleKey( death_ATK_1+25, ct, 2.0, 2.0);
setEffScaleKey( death_ATK_1+26, ct, 2.6, 2.6);
setEffScaleKey( death_ATK_1+27, ct, 4.0, 4.0);
setEffScaleKey( death_ATK_1+28, ct, 2.6, 2.6);
setEffScaleKey( death_ATK_1+30, ct, 3.8, 3.8);
setEffScaleKey( death_ATK_1+119, ct, 3.8, 3.8);
setEffAlphaKey( death_ATK_1+24, ct, 255);
setEffAlphaKey( death_ATK_1+114, ct, 255);
setEffAlphaKey( death_ATK_1+120, ct, 0);

playSe( death_ATK_1+3, SE_11);
shuchusen = entryEffectLife( death_ATK_1+22, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( death_ATK_1+10, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示

entryFade( death_ATK_1+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(death_ATK_1+120);

--endPhase(ATK_end);

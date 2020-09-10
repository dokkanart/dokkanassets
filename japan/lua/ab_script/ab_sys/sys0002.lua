-- 死亡 (通常）
setPhase(9);

ATK_dead = 0;
ATK_end = ATK_dead+160;

-- エフェクト全消し
removeAllEffect(0);

--[[
entryEffect( 1,   1703,   0,  -1,  0,  0,  0);   --ガラス
playSe( 1, 1041);--SE
playSe( ATK_dead, 1040);--SE
playSe( 2, 1054);--SE
--]]
---------------

dealDamage( ATK_dead+1);
playSe( ATK_dead+1, 1035);--SE
playSe( ATK_dead+2, 1027);--SE
entryFade( ATK_dead, 0, 3, 7, 119,3,16,0);

--はじけ
dead_st = entryEffect( ATK_dead+2,  702,  0,  -1,  0,  -300,  -320);
setEffRotateKey( ATK_dead+2, dead_st, 135);
setEffScaleKey( ATK_dead+2, dead_st, 2,2);

changeAnime( ATK_dead,  1,  108);--ダメージふっ飛び
--サイズ
setScaleKey( ATK_dead, 1, 1.0, 1.0);--大きさ
setScaleKey( ATK_dead+1, 1, 1.4, 1.4);--大きさ

--角度
setRotateKey( ATK_dead,1,0);
setRotateKey( ATK_dead+1,1,-20);

--P移動（これは前回の位置を当てはめます）
setMoveKey(  0,  0,     0,    0,   100);
setMoveKey(  1,  0,  -1800,  -1700,  0);


--E移動（これは前回の位置を当てはめます）
--setMoveKey(  1,  1,   660,  -200, -128);  
setMoveKey(  ATK_dead,  1,   660,  -200, -128);
setMoveKey(  ATK_dead+1,  1,  130,  130,  -128);
setMoveKey(  ATK_dead+30+20,  1,  130,  130,  -128);
setMoveKey(  ATK_dead+45+20,  1,  130,  130,  -30);
setMoveKey(  ATK_dead+46+20,  1,  130,  130,  -30);
setMoveKey(  ATK_dead+47+20,  1,  150,  150,  -70);
setMoveKey(  ATK_dead+50+20,  1,  180,  180,  -40);
setMoveKey(  ATK_dead+65+20,  1,  200,  200,  128);

--entryFlash( (ATK_dead+16), 1, fcolor_r, fcolor_g, fcolor_b, 100);
--entryFlash( (ATK_dead+23), 1, fcolor_r, fcolor_g, fcolor_b, 100);
--entryFlash( (ATK_dead+30), 1, fcolor_r, fcolor_g, fcolor_b, 100);


--背景の色設定
entryFadeBg( ATK_dead+7,  2,  50,  20, 170,170,171,255);

--集中線
dead_sen=entryEffectLife( ATK_dead+7, 921, 30+20, 0x80,  -1,  0,  0,  0);
setEffRotateKey( ATK_dead+7,dead_sen,-30);
setEffScaleKey( ATK_dead+7,dead_sen,1.25,1.25);

---------フェイド開け
setShakeChara( ATK_dead+13, 1, 120,20);--ゆれ
dead_fn = entryEffect( ATK_dead+12+20,  702,  0,  -1,  0,  -300,  -300);
setEffRotateKey( ATK_dead+12+20, dead_fn, 135);
setEffScaleKey( ATK_dead+12+20, dead_fn, 2,2);
setQuake( ATK_dead+12+21, 7, 15);

--フェイド白
entryFade( ATK_dead+15+20, 30, 10, 10, 119,3,16,100);

--フェイド開け
--setScaleKey( ATK_dead+46+20, 1, 1.4, 1.4);--大きさ
--setScaleKey( ATK_dead+47+20, 1, 1,1);--大きさ

entryEffect( ATK_dead+80+20,11,0,1,0,0,0);
setQuake( ATK_dead+80+21, 7, 20);
playSe(ATK_dead+80+20,1033);
setScaleKey( ATK_dead+80+21, 1, 1.4, 1.4);--大きさ
setScaleKey( ATK_dead+80+22, 1, 1, 1);--大きさ

endPhase(ATK_end);

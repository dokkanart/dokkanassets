

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

SP_07 = 150233;--ef_07 

SP_01 = 150243;--120ため
SP_02 = 150244;--108突撃
SP_03 = 150245;--60画面に向かう
SP_04 = 150246;--80つかむ
SP_05 = 150247;--100持っていく
SP_06 = 00001;--30ギャン緑

multi_frm = 2;

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

------------------------------------------------------
-- 構え(120F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI( 0, 0);

entryFade( 0, 2,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( 3, 0, 120, 0, 10, 10, 10, 180);          -- ベース暗め　背景

shuchusen1 = entryEffectLife( 3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 3, shuchusen1, 1.5, 1.5);
setEffAlphaKey( 3, shuchusen1, 255);

dounyu = entryEffect( 3,   SP_01,   0x100,     -1,  0,  0,  0);   -- ef_002
setEffAlphaKey( 3,dounyu,255);
setEffShake(3,dounyu,120,10);

setEffScaleKey( 3, dounyu, 1.0, 1.0);

playSe(30, SE_04);
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

setEffScaleKey( 120, shuchusen1, 1.5, 1.5);

setEffAlphaKey( 114,dounyu,255);
setEffAlphaKey( 116,dounyu,0);

ct = entryEffectLife( 30, 190006, 80, 0x100, -1, 0, -150, 480);    -- ゴゴゴゴ
setEffRotateKey(30+5, ct, -10);
setEffAlphaKey( 30+5, ct, 255);
setEffScaleKey( 30+5, ct, 1.0, 1.0);
setEffAlphaKey( 70+5, ct, 255);
setEffAlphaKey( 70+5, ct, 0);

------------------------------------------------------
-- 突進(100F)
------------------------------------------------------

spep_1=115;
entryFade( spep_1-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 180);          -- ベース暗め　背景
setMoveKey(  spep_1,    1,  1000,  0,   0);

playSe( spep_1, 1018);

ryusen1 = entryEffectLife( spep_1, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_1, ryusen1, -30);
--setEffScaleKey( spep_1, ryusen1, 1.6, 1.6);
setEffScaleKey( spep_1, ryusen1, 1, 1);
setEffAlphaKey( spep_1, ryusen1, 255);

tosshin = entryEffect( spep_1, SP_02, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_1, tosshin, 1.0, 1.0);
setEffShake(spep_1, tosshin,100,10);

--playSe( spep_1, SE_04);
playSe( spep_1+70, 1009);
shuchusen1 = entryEffectLife( spep_1+1, 906, 100, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_1+1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1+1, shuchusen1, 255);

setDisp( spep_1+30, 1, 1);
setShakeChara(spep_1+30, 1, 100, 10 );
changeAnime( spep_1+30, 1, 104);  --ガード
setScaleKey(  spep_1+30,   1,   2.6,  2.6);
setMoveKey(  spep_1+30,   1,  1000,  0,   0);

setMoveKey(  spep_1+38,   1,  500,  0,   0);
setScaleKey(  spep_1+38,   1,   2.6,  2.6);

setMoveKey(  spep_1+68,    1,  200,  0,   0);
setScaleKey(  spep_1+68,   1,   2.6,  2.6);

entryFade( spep_1+68, 2,  4, 2, fcolor_r, fcolor_g, fcolor_b, 255);  


changeAnime( spep_1+72, 1, 108); 
setMoveKey(  spep_1+72,   1,  150,  0,   0);
setScaleKey(  spep_1+72,   1,   4,  4);

setMoveKey(  spep_1+80,   1,  200,  50,   0);
setScaleKey(  spep_1+80,   1,   4,  4);

playSe( spep_1+90, 1027);
setMoveKey(  spep_1+100,   1,  300,  300,   0);--フレーム110
setScaleKey(  spep_1+100,   1,   0.4,  0.4);--フレーム110

--setQuake( spep_1+72, 25, 10);

-- 書き文字エントリー
ct1 = entryEffectLife( spep_1+72, 10020, 24, 0x100, -1, 0, -100, 280);    -- バキ
setEffShake(spep_1+72, ct1, 40, 28);
setEffScaleKey(spep_1+72, ct1, 2.8, 2.8);
setEffRotateKey(spep_1+72, ct1, -10);
setEffAlphaKey( spep_1+72, ct1, 255);
setEffScaleKey(spep_1+100, ct1, 2.0, 2.0);
setEffAlphaKey( spep_1+92, ct1, 255);
setEffAlphaKey( spep_1+94, ct1, 0);

--setShake( spep_1+72, 25, 20);

spep_2=spep_1+102;
entryFade( spep_2-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_2, 0, 260, 0, 10, 10, 10, 180);          -- ベース暗め　背景


------------------------------------------------------
--吹っ飛ばし(30F)
------------------------------------------------------

playSe( spep_2+5, 1027);

ryuusen2 = entryEffectLife( spep_2-1, 921, 30, 0x80,  -1, 0,  0,  0);   -- 流線
--setEffScaleKey( spep_2, ryuusen2, 2.5, 2.5);
setEffScaleKey( spep_2, ryuusen2, 2, 2);
setEffAlphaKey( spep_2, ryuusen2, 255);
setEffRotateKey(spep_2, ryuusen2, -50);


shuchusen2 = entryEffectLife( spep_2, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 2.5, 2.5);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey(spep_2, shuchusen2, -50);

--setMoveKey(  spep_2+1,    1,  100,  0,   0);
--setScaleKey(  spep_2+1,   1,   2.5,  2.5);

--setMoveKey(  spep_2+30,   1,  300,  300,   0);
--setScaleKey(  spep_2+30,   1,   0.5,  0.5);

setMoveKey(  spep_2+1,    1,  -200,  -300,   0);
setScaleKey(  spep_2+1,   1,   4,  4);

setShakeChara( spep_2, 1, 30,  10);

setMoveKey(  spep_2+30,   1,  300,  300,   0);
setScaleKey(  spep_2+30,   1,   0.4,  0.4);


--setMoveKey(  spep_2+50,   1,  400,  400,   0);--300から変更
--setScaleKey(  spep_2+50,   1,   0.2,  0.2);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 155; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,   1,  1000,  0,   0);

endPhase(SP_dodge+10);
do return end
else end



------------------------------------------------------
--接近(60F)
------------------------------------------------------




spep_3=spep_2+30;
entryFade( spep_3-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_3, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp( spep_3, 1, 0);
playSe(spep_3+2, 1027);

sekkin = entryEffect( spep_3-35, SP_03, 0,  -1, 0,  0,  0); 
--sekkin = entryEffect( spep_3-35, SP_03, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_3, sekkin, 1.0, 1.0);
setEffAlphaKey( spep_3-30, sekkin, 255);
setEffShake(spep_3, sekkin,60,5);

ryuusen22 = entryEffectLife( spep_3, 921, 60, 0x80,  -1, 0,  0,  0);   -- 流線
--setEffScaleKey( spep_2, ryuusen2, 2.5, 2.5);
setEffScaleKey( spep_3, ryuusen22, 2, 2);
setEffAlphaKey( spep_3, ryuusen22, 255);
setEffRotateKey(spep_3, ryuusen22, -230);
--setShake(spep_2,30,15);




------------------------------------------------------
--掴む(80)ここだよ
------------------------------------------------------

spep_4=spep_3+60;
playSe(spep_4+3, 1027);

entryFade( spep_4-5, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_4, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景

setShakeChara( spep_4, 1, 80,  10);

ryuusen3 = entryEffectLife( spep_4-1, 921, 16, 0x80,  -1, 0,  0,  0); -- 流線・斜め
setEffScaleKey( spep_4, ryuusen3, 2, 2);
setEffAlphaKey( spep_4, ryuusen3, 255);
setEffRotateKey( spep_4, ryuusen3, -50);

tosshin3 = entryEffect( spep_4, SP_04,  0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_4, tosshin3, 1 , 1  );
setEffAlphaKey(spep_4, tosshin3,255);
setEffShake( spep_4, tosshin3 , 80 , 10 );




setMoveKey(  spep_4-2,    1,  300,  300,   0);
setScaleKey(  spep_4-2,   1,   2.0,  2.0);

setDisp( spep_4+1, 1, 1);

setMoveKey(  spep_4+16,    1,  130,  100,   0);
setScaleKey(  spep_4+16,   1,   2.0,  2.0);

entryFade( spep_4+10, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     

--setMoveKey(  spep_4+16,    1,  30,  120,   0);
--setScaleKey(  spep_4+16,   1,   2.0,  2.0);
--setMoveKey(  spep_4+18,   1,  250,  250,   0);
--setScaleKey(  spep_4+18,   1,   2.0,  2.0);

shuchusen1 = entryEffectLife( spep_4+16, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+16, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_4+16, shuchusen1, 255);

ryusen1 = entryEffectLife( spep_4+16, 920, 75, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4+16, ryusen1, -10);
--setEffScaleKey( spep_1, ryusen1, 1.6, 1.6);
setEffScaleKey( spep_4+16, ryusen1, 1.6, 1.6);
setEffAlphaKey( spep_4+16, ryusen1, 255);

playSe( spep_4+20, 1001);

ct3 = entryEffectLife( spep_4+20, 10005, 80, 0x100, -1, 0, -100, 400);    -- ガッ
setEffRotateKey(spep_4+20, ct3, -20);
setEffAlphaKey( spep_4+20, ct3, 255);
setEffScaleKey( spep_4+20, ct3, 3.0, 3.0);
setEffAlphaKey( spep_4+20, ct3, 255);
setEffAlphaKey( spep_4+60, ct3, 255);
setEffAlphaKey( spep_4+62, ct3, 0);
setEffShake( spep_4+20, ct3, 45, 10);



setMoveKey(  spep_4+18,   1,  300,  190,   0);
setScaleKey(  spep_4+18,   1,   2.0,  2.0);

setMoveKey(  spep_4+22,   1,  300,  200,   0);

setMoveKey(  spep_4+26,   1,  300,  220,   0);


setMoveKey(  spep_4+30,   1,  300,  230,   0);

setMoveKey(  spep_4+58,   1,  300,  240,   0);
setMoveKey(  spep_4+62,   1,  500,  240,   0);
setScaleKey(  spep_4+70,   1,   2.0,  2.0);



setMoveKey(  spep_4+64,   1,  1000,  220,   0);

--setMoveKey(  spep_4+75,   1,  430,  220,   0);

setDisp( spep_4+75, 1, 0);

spep_5=spep_4+80;
entryFade( spep_5-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_5, 0, 90, 0, 0, 0, 0, 260);          -- ベース暗め　背景

--setEffMoveKey( spep_5, sekkin, 320, 30);





------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


spep_6=spep_5+90;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

------------------------------------------------------
--突進(100F)
------------------------------------------------------

setShakeChara( spep_6, 1, 100,  10);

sekkin2 = entryEffect( spep_6, SP_05,  0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_6, sekkin2, 1.0, 1.0);
--setEffAlphaKey( spep_6, shuchusen2, 255);
--setMoveKey(  spep_6+1,    1,  130,  180,   0);
setScaleKey(  spep_6+1,   1,   2.5,  2.5);
setRotateKey( spep_6+1,  1,  0 );
setEffShake(spep_6, sekkin2,100,10);

shuchusen1 = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusen1, 255);

--shuchusen2 = entryEffectLife( spep_6+1, 921, 100, 0x80,  -1, 0,  0,  0);   -- 流線
--setEffScaleKey( spep_6, shuchusen2, 2.5, 2.5);
--setEffAlphaKey( spep_6, shuchusen2, 255);
--setEffRotateKey( spep_6, shuchusen2, -50);

ryuusen3 = entryEffectLife( spep_6, 921, 90, 0x80,  -1, 0,  0,  0); -- 流線・斜め
setEffScaleKey( spep_6, ryuusen3, 2, 2);
setEffAlphaKey( spep_6, ryuusen3, 255);
setEffRotateKey( spep_6, ryuusen3, -50);


setMoveKey(  spep_6,    1,  0,  0,   0);
setScaleKey(  spep_6,   1,   2.5,  2.5);--2.0

--setMoveKey(  spep_6+10,    1,  0,  0,   0);
--setScaleKey(  spep_6+10,   1,   2.5,  2.5);--2.0

setMoveKey(  spep_6+18,    1,  205,  200,   0);
setScaleKey(  spep_6+18,   1,   2.5,  2.5);--2.0

--setMoveKey(  spep_6+40,    1,  205,  200,   0);
--setMoveKey(  spep_6+40,    1,  180,  230,   0);
setScaleKey(  spep_6+40,   1,   2.5,  2.5);--2.0
--setScaleKey(  spep_6+40,   1,   2.5,  2.5);

playSe( spep_6+20, SE_01);
playSe( spep_6+40, SE_01);
playSe( spep_6+60, SE_01);
playSe( spep_6+80, SE_01);

--setMoveKey(  spep_6+70,   1,  230,  220,   0);--76
setMoveKey(  spep_6+70,   1,  270,  220,   0);--76
setScaleKey(  spep_6+70,   1,   2.5,  2.5);--2.7
setRotateKey( spep_6+70,  1,  0 );


setMoveKey(  spep_6+100,   1,  260,  220,   0);--76,270
setScaleKey(  spep_6+100,   1,   2.5,  2.5);--2.7
setRotateKey( spep_6+100,  1,  0 );

setMoveKey(  spep_6+100,   1,  290,  220,   0);--76

setMoveKey(  spep_6+150,   1,  290,  220,   0);--敵下降のバグ修正
setScaleKey(  spep_6+150,   1,   2.5,  2.5);--2.7
setRotateKey( spep_6+150,  1,  0 );

setDisp( spep_6+1, 1, 1);
setDisp( spep_6+89, 1, 0);
--setMoveKey(  spep_6+89,    1,  100,  0,   0);

gyan=entryEffectLife(  spep_6+90,  190010,  60, 0,  -1,  0,  0,  0);   
setEffReplaceTexture( gyan, 1, 1);
setEffReplaceTexture( gyan, 2, 0);                         
setEffReplaceTexture( gyan, 5, 4);

ct4 = entryEffectLife( spep_6+90, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_6+90, ct4, 255);
setEffScaleKey( spep_6+90, ct4, 3.0, 3.0);
setEffScaleKey( spep_6+150, ct4, 4.0, 4.0);
setEffAlphaKey( spep_6+90, ct4, 255);
setEffAlphaKey( spep_6+150, ct4, 0);
setEffShake( spep_6+90, ct4, 45, 8);



------------------------------------------------------
--最後
------------------------------------------------------

spep_9=spep_6+150; --410 469
entryFade( spep_9-5, 2,  10, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setMoveKey(  spep_9,   1,  230,  220,   0);


setDisp( spep_9-1, 1, 1);
setMoveKey(  spep_9-1,    1,  100,  0,   0);
setScaleKey( spep_9-1,    1,  1.0, 1.0);
setMoveKey(  spep_9,    1,    0,   0,   128);
setScaleKey( spep_9,    1,  0.1, 0.1);

changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);

setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+15, ct, 30, 10);
setEffRotateKey( spep_9+15, ct, -40);
setEffScaleKey( spep_9+15, ct, 4.0, 4.0);
setEffScaleKey( spep_9+16, ct, 2.0, 2.0);
setEffScaleKey( spep_9+17, ct, 2.6, 2.6);
setEffScaleKey( spep_9+18, ct, 4.0, 4.0);
setEffScaleKey( spep_9+19, ct, 2.6, 2.6);
setEffScaleKey( spep_9+20, ct, 3.8, 3.8);
setEffScaleKey( spep_9+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ct, 255);
setEffAlphaKey( spep_9+115, ct, 255);
setEffAlphaKey( spep_9+115, ct, 0);

playSe( spep_9+3, SE_11);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ





-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);
else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
setVisibleUI( 0, 0);

entryFade( 0, 2,  3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( 3, 0, 120, 0, 10, 10, 10, 180);          -- ベース暗め　背景

shuchusen1 = entryEffectLife( 3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 3, shuchusen1, 1.5, 1.5);
setEffAlphaKey( 3, shuchusen1, 255);

dounyu = entryEffect( 3,   SP_01,   0x100,     -1,  0,  0,  0);   -- ef_002
setEffAlphaKey( 3,dounyu,255);
setEffShake(3,dounyu,120,10);

setEffScaleKey( 3, dounyu, 1.0, 1.0);

playSe(30, SE_04);
--speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

setEffScaleKey( 120, shuchusen1, 1.5, 1.5);

setEffAlphaKey( 114,dounyu,255);
setEffAlphaKey( 116,dounyu,0);

ct = entryEffectLife( 30, 190006, 80, 0x100, -1, 0, -150, 380);    -- ゴゴゴゴ
setEffRotateKey(30+5, ct, -10);
setEffAlphaKey( 30+5, ct, 255);
setEffScaleKey( 30+5, ct, -1.0, 1.0);
setEffAlphaKey( 70+5, ct, 255);
setEffAlphaKey( 70+5, ct, 0);

------------------------------------------------------
-- 突進(100F)
------------------------------------------------------

spep_1=115;
entryFade( spep_1-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 180);          -- ベース暗め　背景
setMoveKey(  spep_1,    1,  1000,  0,   0);

playSe( spep_1, 1018);

ryusen1 = entryEffectLife( spep_1, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_1, ryusen1, -30);
--setEffScaleKey( spep_1, ryusen1, 1.6, 1.6);
setEffScaleKey( spep_1, ryusen1, 1, 1);
setEffAlphaKey( spep_1, ryusen1, 255);

tosshin = entryEffect( spep_1, SP_02, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_1, tosshin, 1.0, 1.0);
setEffShake(spep_1, tosshin,100,10);

--playSe( spep_1, SE_04);
playSe( spep_1+70, 1009);
shuchusen1 = entryEffectLife( spep_1+1, 906, 100, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_1+1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1+1, shuchusen1, 255);

setDisp( spep_1+30, 1, 1);
setShakeChara(spep_1+30, 1, 100, 10 );
changeAnime( spep_1+30, 1, 104);  --ガード
setScaleKey(  spep_1+30,   1,   2.6,  2.6);
setMoveKey(  spep_1+30,   1,  1000,  0,   0);

setMoveKey(  spep_1+38,   1,  500,  0,   0);
setScaleKey(  spep_1+38,   1,   2.6,  2.6);

setMoveKey(  spep_1+68,    1,  200,  0,   0);
setScaleKey(  spep_1+68,   1,   2.6,  2.6);

entryFade( spep_1+68, 2,  4, 2, fcolor_r, fcolor_g, fcolor_b, 255);  


changeAnime( spep_1+72, 1, 108); 
setMoveKey(  spep_1+72,   1,  150,  0,   0);
setScaleKey(  spep_1+72,   1,   4,  4);

setMoveKey(  spep_1+80,   1,  200,  50,   0);
setScaleKey(  spep_1+80,   1,   4,  4);

playSe( spep_1+90, 1027);
setMoveKey(  spep_1+100,   1,  300,  300,   0);--フレーム110
setScaleKey(  spep_1+100,   1,   0.4,  0.4);--フレーム110

--setQuake( spep_1+72, 25, 10);

-- 書き文字エントリー
ct1 = entryEffectLife( spep_1+72, 10020, 24, 0x100, -1, 0, -100, 280);    -- バキ
setEffShake(spep_1+72, ct1, 40, 28);
setEffScaleKey(spep_1+72, ct1, 2.8, 2.8);
setEffRotateKey(spep_1+72, ct1, -10);
setEffAlphaKey( spep_1+72, ct1, 255);
setEffScaleKey(spep_1+100, ct1, 2.0, 2.0);
setEffAlphaKey( spep_1+92, ct1, 255);
setEffAlphaKey( spep_1+94, ct1, 0);

--setShake( spep_1+72, 25, 20);

spep_2=spep_1+102;
entryFade( spep_2-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_2, 0, 260, 0, 10, 10, 10, 180);          -- ベース暗め　背景


------------------------------------------------------
--吹っ飛ばし(30F)
------------------------------------------------------

playSe( spep_2+5, 1027);

ryuusen2 = entryEffectLife( spep_2-1, 921, 30, 0x80,  -1, 0,  0,  0);   -- 流線
--setEffScaleKey( spep_2, ryuusen2, 2.5, 2.5);
setEffScaleKey( spep_2, ryuusen2, 2, 2);
setEffAlphaKey( spep_2, ryuusen2, 255);
setEffRotateKey(spep_2, ryuusen2, -50);


shuchusen2 = entryEffectLife( spep_2, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 2.5, 2.5);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey(spep_2, shuchusen2, -50);

--setMoveKey(  spep_2+1,    1,  100,  0,   0);
--setScaleKey(  spep_2+1,   1,   2.5,  2.5);

--setMoveKey(  spep_2+30,   1,  300,  300,   0);
--setScaleKey(  spep_2+30,   1,   0.5,  0.5);

setMoveKey(  spep_2+1,    1,  -200,  -300,   0);
setScaleKey(  spep_2+1,   1,   4,  4);

setShakeChara( spep_2, 1, 30,  10);

setMoveKey(  spep_2+30,   1,  300,  300,   0);
setScaleKey(  spep_2+30,   1,   0.4,  0.4);


--setMoveKey(  spep_2+50,   1,  400,  400,   0);--300から変更
--setScaleKey(  spep_2+50,   1,   0.2,  0.2);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 155; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,   1,  1000,  0,   0);

endPhase(SP_dodge+10);
do return end
else end



------------------------------------------------------
--接近(60F)
------------------------------------------------------




spep_3=spep_2+30;
entryFade( spep_3-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_3, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp( spep_3, 1, 0);
playSe(spep_3+2, 1027);

sekkin = entryEffect( spep_3-35, SP_03, 0,  -1, 0,  0,  0); 
--sekkin = entryEffect( spep_3-35, SP_03, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_3, sekkin, 1.0, 1.0);
setEffAlphaKey( spep_3-30, sekkin, 255);
setEffShake(spep_3, sekkin,60,5);

ryuusen22 = entryEffectLife( spep_3, 921, 60, 0x80,  -1, 0,  0,  0);   -- 流線
--setEffScaleKey( spep_2, ryuusen2, 2.5, 2.5);
setEffScaleKey( spep_3, ryuusen22, 2, 2);
setEffAlphaKey( spep_3, ryuusen22, 255);
setEffRotateKey(spep_3, ryuusen22, -230);
--setShake(spep_2,30,15);




------------------------------------------------------
--掴む(80)ここだよ
------------------------------------------------------

spep_4=spep_3+60;
playSe(spep_4+3, 1027);

entryFade( spep_4-5, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_4, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景

setShakeChara( spep_4, 1, 80,  10);

ryuusen3 = entryEffectLife( spep_4-1, 921, 16, 0x80,  -1, 0,  0,  0); -- 流線・斜め
setEffScaleKey( spep_4, ryuusen3, 2, 2);
setEffAlphaKey( spep_4, ryuusen3, 255);
setEffRotateKey( spep_4, ryuusen3, -50);

tosshin3 = entryEffect( spep_4, SP_04,  0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_4, tosshin3, 1 , 1  );
setEffAlphaKey(spep_4, tosshin3,255);
setEffShake( spep_4, tosshin3 , 80 , 10 );




setMoveKey(  spep_4-2,    1,  300,  300,   0);
setScaleKey(  spep_4-2,   1,   2.0,  2.0);

setDisp( spep_4+1, 1, 1);

setMoveKey(  spep_4+16,    1,  130,  100,   0);
setScaleKey(  spep_4+16,   1,   2.0,  2.0);

entryFade( spep_4+10, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     

--setMoveKey(  spep_4+16,    1,  30,  120,   0);
--setScaleKey(  spep_4+16,   1,   2.0,  2.0);
--setMoveKey(  spep_4+18,   1,  250,  250,   0);
--setScaleKey(  spep_4+18,   1,   2.0,  2.0);

shuchusen1 = entryEffectLife( spep_4+16, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+16, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_4+16, shuchusen1, 255);

ryusen1 = entryEffectLife( spep_4+16, 920, 75, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4+16, ryusen1, -10);
--setEffScaleKey( spep_1, ryusen1, 1.6, 1.6);
setEffScaleKey( spep_4+16, ryusen1, 1.6, 1.6);
setEffAlphaKey( spep_4+16, ryusen1, 255);

playSe( spep_4+20, 1001);

ct3 = entryEffectLife( spep_4+20, 10005, 80, 0x100, -1, 0, -100, 400);    -- ガッ
setEffRotateKey(spep_4+20, ct3, -20);
setEffAlphaKey( spep_4+20, ct3, 255);
setEffScaleKey( spep_4+20, ct3, 3.0, 3.0);
setEffAlphaKey( spep_4+20, ct3, 255);
setEffAlphaKey( spep_4+60, ct3, 255);
setEffAlphaKey( spep_4+62, ct3, 0);
setEffShake( spep_4+20, ct3, 45, 10);



setMoveKey(  spep_4+18,   1,  300,  190,   0);
setScaleKey(  spep_4+18,   1,   2.0,  2.0);

setMoveKey(  spep_4+22,   1,  300,  200,   0);

setMoveKey(  spep_4+26,   1,  300,  220,   0);


setMoveKey(  spep_4+30,   1,  300,  230,   0);

setMoveKey(  spep_4+58,   1,  300,  240,   0);
setMoveKey(  spep_4+62,   1,  500,  240,   0);

setScaleKey(  spep_4+70,   1,   2.0,  2.0);

setMoveKey(  spep_4+64,   1,  1000,  220,   0);

--setMoveKey(  spep_4+75,   1,  430,  220,   0);

setDisp( spep_4+75, 1, 0);

spep_5=spep_4+80;
entryFade( spep_5-5, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( spep_5, 0, 90, 0, 0, 0, 0, 260);          -- ベース暗め　背景

--setEffMoveKey( spep_5, sekkin, 320, 30);





------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


spep_6=spep_5+90;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

------------------------------------------------------
--突進(100F)
------------------------------------------------------

setShakeChara( spep_6, 1, 100,  10);

sekkin2 = entryEffect( spep_6, SP_05,  0x100,  -1, 0,  0,  0); 
setEffScaleKey( spep_6, sekkin2, 1.0, 1.0);
--setEffAlphaKey( spep_6, shuchusen2, 255);
--setMoveKey(  spep_6+1,    1,  130,  180,   0);
setScaleKey(  spep_6+1,   1,   2.5,  2.5);
setRotateKey( spep_6+1,  1,  0 );
setEffShake(spep_6, sekkin2,100,10);

shuchusen1 = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusen1, 255);

--shuchusen2 = entryEffectLife( spep_6+1, 921, 100, 0x80,  -1, 0,  0,  0);   -- 流線
--setEffScaleKey( spep_6, shuchusen2, 2.5, 2.5);
--setEffAlphaKey( spep_6, shuchusen2, 255);
--setEffRotateKey( spep_6, shuchusen2, -50);

ryuusen3 = entryEffectLife( spep_6, 921, 90, 0x80,  -1, 0,  0,  0); -- 流線・斜め
setEffScaleKey( spep_6, ryuusen3, 2, 2);
setEffAlphaKey( spep_6, ryuusen3, 255);
setEffRotateKey( spep_6, ryuusen3, -50);


setMoveKey(  spep_6,    1,  0,  0,   0);
setScaleKey(  spep_6,   1,   2.5,  2.5);--2.0

--setMoveKey(  spep_6+10,    1,  0,  0,   0);
--setScaleKey(  spep_6+10,   1,   2.5,  2.5);--2.0

setMoveKey(  spep_6+18,    1,  205,  200,   0);
setScaleKey(  spep_6+18,   1,   2.5,  2.5);--2.0

--setMoveKey(  spep_6+40,    1,  205,  200,   0);
--setMoveKey(  spep_6+40,    1,  180,  230,   0);
setScaleKey(  spep_6+40,   1,   2.5,  2.5);--2.0
--setScaleKey(  spep_6+40,   1,   2.5,  2.5);

playSe( spep_6+20, SE_01);
playSe( spep_6+40, SE_01);
playSe( spep_6+60, SE_01);
playSe( spep_6+80, SE_01);

--setMoveKey(  spep_6+70,   1,  230,  220,   0);--76
setMoveKey(  spep_6+70,   1,  270,  220,   0);--76
setScaleKey(  spep_6+70,   1,   2.5,  2.5);--2.7
setRotateKey( spep_6+70,  1,  0 );


setMoveKey(  spep_6+100,   1,  260,  220,   0);--76,270
setScaleKey(  spep_6+100,   1,   2.5,  2.5);--2.7
setRotateKey( spep_6+100,  1,  0 );

setMoveKey(  spep_6+100,   1,  290,  220,   0);--76

setMoveKey(  spep_6+150,   1,  290,  220,   0);--敵下降のバグ修正
setScaleKey(  spep_6+150,   1,   2.5,  2.5);--2.7
setRotateKey( spep_6+150,  1,  0 );

setDisp( spep_6+1, 1, 1);
setDisp( spep_6+89, 1, 0);
--setMoveKey(  spep_6+89,    1,  100,  0,   0);

gyan=entryEffectLife(  spep_6+90,  190010,  60, 0,  -1,  0,  0,  0);   
setEffReplaceTexture( gyan, 1, 1);
setEffReplaceTexture( gyan, 2, 0);                         
setEffReplaceTexture( gyan, 5, 4);

ct4 = entryEffectLife( spep_6+90, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_6+90, ct4, 255);
setEffScaleKey( spep_6+90, ct4, 3.0, 3.0);
setEffScaleKey( spep_6+150, ct4, 4.0, 4.0);
setEffAlphaKey( spep_6+90, ct4, 255);
setEffAlphaKey( spep_6+150, ct4, 0);
setEffShake( spep_6+90, ct4, 45, 8);



------------------------------------------------------
--最後
------------------------------------------------------

spep_9=spep_6+150; --410 469
entryFade( spep_9-5, 2,  10, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setMoveKey(  spep_9,   1,  230,  220,   0);


setDisp( spep_9-1, 1, 1);
setMoveKey(  spep_9-1,    1,  100,  0,   0);
setScaleKey( spep_9-1,    1,  1.0, 1.0);
setMoveKey(  spep_9,    1,    0,   0,   128);
setScaleKey( spep_9,    1,  0.1, 0.1);

changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);

setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+15, ct, 30, 10);
setEffRotateKey( spep_9+15, ct, -40);
setEffScaleKey( spep_9+15, ct, 4.0, 4.0);
setEffScaleKey( spep_9+16, ct, 2.0, 2.0);
setEffScaleKey( spep_9+17, ct, 2.6, 2.6);
setEffScaleKey( spep_9+18, ct, 4.0, 4.0);
setEffScaleKey( spep_9+19, ct, 2.6, 2.6);
setEffScaleKey( spep_9+20, ct, 3.8, 3.8);
setEffScaleKey( spep_9+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ct, 255);
setEffAlphaKey( spep_9+115, ct, 255);
setEffAlphaKey( spep_9+115, ct, 0);

playSe( spep_9+3, SE_11);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ





-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);

end

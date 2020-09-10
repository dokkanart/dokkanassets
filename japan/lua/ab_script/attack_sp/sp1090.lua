

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+50;

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

SP_01 = 150213;
SP_02 = 150214;
SP_03 = 150215;
SP_04 = 150216;
SP_05 = 150217;
SP_06 = 150218;
SP_07 = 150219;
SP_08 = 150220;
SP_09 = 150221;
SP_10 = 150222;
SP_11 = 150223;
SP_12 = 150224;
SP_13 = 150225;





multi_frm = 2;

changeAnime( 0, 0, 30);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

--setMoveKey(   0,   0,    0, 0,   0);
--setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.7, 1.7);
setScaleKey(   1,   0, 1.7, 1.7);

SP_start =-69

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- 発射( 160F)
------------------------------------------------------
setVisibleUI( 0, 0);

--setBgScroll(0,100);

setRotateKey( 0, 0, -25); 
setScaleKey( 0,   0, 1.7, 1.7);
changeAnime( 0, 0, 3); 
--changeAnime( 0, 0, 3); 

entryFade( 0, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( 3, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey(  3,    0,   -1000,  0,   0);
playSe( 3, SE_01);

hassha = entryEffect( 3,   SP_01,   0x100,     -1,  0,  0,  0);   -- ef_001
setEffScaleKey( 3, hassha, 1.0, 1.0);
setEffAlphaKey( 3, hassha, 255);

setEffRotateKey( 3, hassha, 0);

shuchusen1 = entryEffectLife( 3, 906, 155, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 3, shuchusen1, 1.5, 1.5);
setEffAlphaKey( 3, shuchusen1, 255);
playSe( 30, SE_01);


playSe( 109, SE_07);
--playSe( 109, SE_06);

ryusen = entryEffectLife( 110, 921, 92, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 110, ryusen, 225);
setEffScaleKey( 110, ryusen, 1.6, 1.6);
setEffAlphaKey( 110, ryusen, 255);


-- 書き文字エントリー
ct2 = entryEffectLife( 110, 10012, 39, 0x100, -1, 0, 100, 350);    -- ズオッ
setEffShake(110, ct2, 40, 28);
setEffScaleKey(110, ct2, 2.4, 2.4);
setEffRotateKey( 110, ct2, 30);


entryFade( 158, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
------------------------------------------------------
-- 爆発・遠景(100F)
------------------------------------------------------
setMoveKey( 160,    0,  0,  0,   0);

setEffRotateKey( 160, hassha, 0);


spep_2=160;
entryFadeBg( spep_2, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景
bakuha = entryEffect( spep_2,   SP_02,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_2, bakuha, 1.0, 1.0);
playSe( spep_2, 43);

playSe( spep_2+20, SE_10);

entryFade( spep_2+88, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355


shuchusenn = entryEffectLife( 160, 906, 159, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 160, shuchusenn, 1.5, 1.5);
setEffAlphaKey( 160, shuchusenn, 255);

spep_3=spep_2+85;--

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 265; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- ダメージ1(90F) +　ヒット（44Fから）
------------------------------------------------------

entryFadeBg( spep_3, 0, 90, 0, 10, 10, 10, 180);          -- ベース暗め　背景
damage1 = entryEffect( spep_3,   SP_03,   0x80,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_3, damage1, 1.0, 1.0);
setMoveKey( spep_3,    1,   100,  150,   0);

shuchusen2 = entryEffectLife( spep_3, 906, 17, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen2, 255);


damage2 = entryEffect( spep_3,   SP_04,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_3, damage2, 1.0, 1.0);


changeAnime( spep_3+9, 1, 100);                       -- 立ち
setDisp( spep_3+10, 1, 1);
setScaleKey( spep_3+10,   1, 3.0, 3.0);
setMoveKey( spep_3+10,    1,   100,  150,   0);
setRotateKey( spep_3+10, 1, 0); 

playSe( spep_3+10, 43);


--changeAnime( spep_3+17, 1, 104);                       -- 立ち
setRotateKey( spep_3+17, 1, 0); 

playSe( spep_3+37, SE_09);

ryusen2 = entryEffectLife( spep_3+37, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_3+37, ryusen2, -25);
setEffScaleKey( spep_3+37, ryusen2, 1.6, 1.6);

setScaleKey( spep_3+37,   1, 2.5, 2.5);
changeAnime( spep_3+38, 1, 115);                       -- 立ち


--entryFade( spep_3+55, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( spep_3+58,    1,   100,  150,   0);

setRotateKey( spep_3+59, 1, -20); 
setScaleKey( spep_3+59,   1, 3.0, 3.0);

--hit_s = entryEffect( spep_3+60,   SP_06,   0,     -1,  0,  0,  0);   -- ef_002
--setEffScaleKey( spep_3+60, hit_s, 1.0, 1.0);



spep_4=spep_3+90; --211 260
entryFade( spep_4-5, 3, 4, 4, 0, 0, 0, 255);     -- white fade
entryFadeBg( spep_4, 0, 150, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey( spep_4,    1,   1000,  1000,  0);
setDisp( spep_4, 1, 0);
setEffAlphaKey( spep_4, ryusen3, 0);

------------------------------------------------------
-- 復帰(75*2f)
------------------------------------------------------
fukki = entryEffect( spep_4,   SP_05,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_4, fukki, 1.0, 1.0);

ryusen3 = entryEffectLife( spep_4, 920, 20, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusen3, -30);
setEffScaleKey( spep_4, ryusen3, 1.6, 1.6);
setEffAlphaKey( spep_4, ryusen3, 255);

setEffAlphaKey( spep_4+59, ryusen3, 0);

playSe( spep_4+10, SE_01);


playSe( spep_4+60, 1018);


ryusen5 = entryEffectLife( spep_4+60, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusen5, -30);
setEffScaleKey( spep_4, ryusen5, 1.6, 1.6);
setEffAlphaKey( spep_4, ryusen5, 255);


speff = entryEffect( spep_4+60,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect( spep_4+60,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff1, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct2 = entryEffectLife(  spep_4+60, 190006, 89, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴゴ
setEffShake( spep_4+60, ct2, 40, 8);
setEffScaleKey( spep_4+60, ct2, 0.8, 0.8);


spep_5=spep_4+148; --410 469
entryFade( spep_5-5, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setEffAlphaKey( spep_5, ryusen5, 0);

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
entryFadeBg( spep_6, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景


------------------------------------------------------
-- 突進(70f)
------------------------------------------------------
tosshin = entryEffect( spep_6,   SP_07,   0x80,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_6, tosshin, 1.0, 1.0);

shuchusen3 = entryEffectLife( spep_6, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusen3, 255);

playSe( spep_6, SE_01);

SE000 = playSe( spep_6+20, SE_03);
setSeVolume( spep_6+20, SE_03, 70 );
stopSe( spep_6+44, SE000, 10 );

SE001 = playSe( spep_6+40, SE_03);
setSeVolume( spep_6+40, SE_03, 70 );
stopSe( spep_6+64, SE001, 10 );

SE002 = playSe( spep_6+60, SE_03);
setSeVolume( spep_6+60, SE_03, 70 );
stopSe( spep_6+74, SE002, 10 );


spep_7=spep_6+70;--spep_4=415
entryFade( spep_7-3, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
-- 両者突進・遠景(60f)
------------------------------------------------------


tosshin2 = entryEffect( spep_7,   SP_10,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_7, tosshin2, 1.0, 1.0);

shuchusen4 = entryEffectLife( spep_7, 906, 109, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusen4, 255);

SE003 = playSe( spep_7, SE_02);
setSeVolume( spep_7+0, SE_02, 70 );
stopSe( spep_7+24, SE003, 10 );

SE004 = playSe( spep_7+20, SE_02);
setSeVolume( spep_7+20, SE_02, 70 );
stopSe( spep_7+44, SE004, 10 );

SE005 = playSe( spep_7+40, SE_02);
setSeVolume( spep_7+40, SE_02, 70 );
stopSe( spep_7+64, SE005, 10 );

--playSe( spep_7+60, SE_02);
spep_8=spep_7+55;--spep_4=415
entryFade( spep_8-5, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景


------------------------------------------------------
-- 両者突進・頭突き1(30f)
------------------------------------------------------
setScaleKey( spep_8,   1, 3.0, 3.0);
setMoveKey( spep_8,    1,   0,  1400,   0);
setRotateKey( spep_8, 1, 270); 
setDisp( spep_8, 1, 1);
changeAnime( spep_8, 1, 103);                       -- 立ち


tosshinbg = entryEffect( spep_8,   SP_11,   0x80,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_8, tosshinbg, 1.0, 1.0);
tosshin3 = entryEffect( spep_8,   SP_12,   0x100,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_8, tosshin3, 1.0, 1.0);

shuchusen5 = entryEffectLife( spep_8, 906, 109, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_8, shuchusen5, 255);


entryFade( spep_8+18, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( spep_8+20,    1,   0,  400,   0);
setRotateKey( spep_8+20, 1, 270); 
setDisp( spep_8+20, 1, 0);

playSe( spep_8+30, SE_09);

-- 書き文字エントリー
ct3 = entryEffectLife( spep_8+38, 10018, 19, 0x100, -1, 0, 10, 300);    -- ドゴォンッ
setEffShake(spep_8+38, ct3, 40, 28);
setEffScaleKey(spep_8+38, ct3, 3.4, 3.4);
setEffRotateKey( spep_8+38, ct3, 20);


spep_9=spep_8+60;--spep_4=415
entryFade( spep_9-3, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_9-1, 0, -1000, 0, 0);


------------------------------------------------------
-- ラスト(110f)
------------------------------------------------------
--last = entryEffectLife( spep_9,   SP_13,200 ,  0,     -1,  0,  0,  0);   -- ef_002

entryEffect( spep_9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
last = entryEffect( spep_9,   SP_13,   0x80,     -1,  0,  0,  100);   -- ef_002
setEffScaleKey( spep_9, last, 1.0, 1.0);

setRotateKey( spep_9, 1, 0); 


--spep_10=spep_9+110;--spep_4=415
setDisp( spep_9, 1, 1);
setMoveKey(  spep_9,    1,  400,    0,  50);
setMoveKey(  spep_9+1,    1,    0,   0,   128);

setScaleKey( spep_9,    1,  2.5, 2.5);
setScaleKey( spep_9+1,    1,  1, 1);

changeAnime( spep_9+1, 1, 107);                         -- 手前ダメージ
playSe( spep_9, SE_10);

setMoveKey(  spep_9+8,    1,    0,   0,   128);
--setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
--setMoveKey(  spep_9+16,   1,  -60,  -200,  -100);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_9+16,   1,  -60,  -200,  -100);

setShakeChara( spep_9+16, 1, 5,  10);
setShakeChara( spep_9+21, 1, 10, 20);
setShake(spep_9+14,6,15);
setShake(spep_9+20,15,10);


--playSe( spep_5+9, 1023);
--playSe( spep_9+59-60, SE_10);


setDamage( spep_9+75-60, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage(spep_9+75-60);
--setMoveKey(  spep_end+75, 0, 0, 0, 0);

shuchusen3 = entryEffectLife( spep_9+2-60, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

entryFade( spep_9+159-60, 9, 15, 1, 8, 8, 8, 255);             -- black fade
setEffAlphaKey( spep_9+155-60, chakudan, 150);
setEffAlphaKey( spep_9+159-60, chakudan, 0);
entryFadeBg( spep_9+159-60, 0, 99, 0,10, 10, 10, 180);          -- ベース暗め　背景

endPhase(spep_9+169-60);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------

------------------------------------------------------
-- 発射( 160F)
------------------------------------------------------
setVisibleUI( 0, 0);

--setBgScroll(0,100);

setRotateKey( 0, 0, -25); 
setScaleKey( 0,   0, 1.7, 1.7);
changeAnime( 0, 0, 3); 
--changeAnime( 0, 0, 3); 

entryFade( 0, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
entryFadeBg( 3, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey(  3,    0,   -1000,  0,   0);
playSe( 3, SE_01);

hassha = entryEffect( 3,   SP_01,   0x100,     -1,  0,  0,  0);   -- ef_001
setEffScaleKey( 3, hassha, 1.0, 1.0);
setEffAlphaKey( 3, hassha, 255);

setEffRotateKey( 3, hassha, 0);

shuchusen1 = entryEffectLife( 3, 906, 155, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 3, shuchusen1, 1.5, 1.5);
setEffAlphaKey( 3, shuchusen1, 255);
playSe( 30, SE_01);


playSe( 109, SE_07);
--playSe( 109, SE_06);

ryusen = entryEffectLife( 110, 921, 92, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 110, ryusen, 225);
setEffScaleKey( 110, ryusen, 1.6, 1.6);
setEffAlphaKey( 110, ryusen, 255);


-- 書き文字エントリー
ct2 = entryEffectLife( 110, 10012, 39, 0x100, -1, 0, 100, 350);    -- ズオッ
setEffShake(110, ct2, 40, 28);
setEffScaleKey(110, ct2, 2.4, 2.4);
setEffRotateKey( 110, ct2, 30);


entryFade( 158, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
------------------------------------------------------
-- 爆発・遠景(100F)
------------------------------------------------------
setMoveKey( 160,    0,  0,  0,   0);

setEffRotateKey( 160, hassha, 0);


spep_2=160;
entryFadeBg( spep_2, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景
bakuha = entryEffect( spep_2,   SP_02,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_2, bakuha, 1.0, 1.0);
playSe( spep_2, 43);

playSe( spep_2+20, SE_10);

entryFade( spep_2+88, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355


shuchusenn = entryEffectLife( 160, 906, 159, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 160, shuchusenn, 1.5, 1.5);
setEffAlphaKey( 160, shuchusenn, 255);

spep_3=spep_2+85;--

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 265; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- ダメージ1(90F) +　ヒット（44Fから）
------------------------------------------------------

entryFadeBg( spep_3, 0, 90, 0, 10, 10, 10, 180);          -- ベース暗め　背景
damage1 = entryEffect( spep_3,   SP_03,   0x80,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_3, damage1, 1.0, 1.0);
setMoveKey( spep_3,    1,   100,  150,   0);

shuchusen2 = entryEffectLife( spep_3, 906, 17, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen2, 255);


damage2 = entryEffect( spep_3,   SP_04,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_3, damage2, 1.0, 1.0);


changeAnime( spep_3+9, 1, 100);                       -- 立ち
setDisp( spep_3+10, 1, 1);
setScaleKey( spep_3+10,   1, 3.0, 3.0);
setMoveKey( spep_3+10,    1,   100,  150,   0);
setRotateKey( spep_3+10, 1, 0); 

playSe( spep_3+10, 43);


changeAnime( spep_3+17, 1, 104);                       -- 立ち
setRotateKey( spep_3+17, 1, 0); 

playSe( spep_3+37, SE_09);

ryusen2 = entryEffectLife( spep_3+37, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_3+37, ryusen2, -25);
setEffScaleKey( spep_3+37, ryusen2, 1.6, 1.6);

setScaleKey( spep_3+37,   1, 2.5, 2.5);
changeAnime( spep_3+38, 1, 115);                       -- 立ち


--entryFade( spep_3+55, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( spep_3+58,    1,   100,  150,   0);

setRotateKey( spep_3+59, 1, -20); 
setScaleKey( spep_3+59,   1, 3.0, 3.0);

--hit_s = entryEffect( spep_3+60,   SP_06,   0,     -1,  0,  0,  0);   -- ef_002
--setEffScaleKey( spep_3+60, hit_s, 1.0, 1.0);



spep_4=spep_3+90; --211 260
entryFade( spep_4-5, 3, 4, 4, 0, 0, 0, 255);     -- white fade
entryFadeBg( spep_4, 0, 150, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey( spep_4,    1,   1000,  1000,  0);
setDisp( spep_4, 1, 0);
setEffAlphaKey( spep_4, ryusen3, 0);

------------------------------------------------------
-- 復帰(75*2f)
------------------------------------------------------
fukki = entryEffect( spep_4,   SP_05,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_4, fukki, 1.0, 1.0);

ryusen3 = entryEffectLife( spep_4, 920, 20, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusen3, -30);
setEffScaleKey( spep_4, ryusen3, 1.6, 1.6);
setEffAlphaKey( spep_4, ryusen3, 255);

setEffAlphaKey( spep_4+59, ryusen3, 0);

playSe( spep_4+10, SE_01);


playSe( spep_4+60, 1018);


ryusen5 = entryEffectLife( spep_4+60, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusen5, -30);
setEffScaleKey( spep_4, ryusen5, 1.6, 1.6);
setEffAlphaKey( spep_4, ryusen5, 255);

--[[
speff = entryEffect( spep_4+60,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect( spep_4+60,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff1, 4, 5);                           -- セリフ差し替え
]]
-- 書き文字エントリー
ct2 = entryEffectLife(  spep_4+60, 190006, 89, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴゴ
setEffShake( spep_4+60, ct2, 40, 8);
setEffScaleKey( spep_4+60, ct2, -0.8, 0.8);


spep_5=spep_4+148; --410 469
entryFade( spep_5-5, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setEffAlphaKey( spep_5, ryusen5, 0);

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
entryFadeBg( spep_6, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景


------------------------------------------------------
-- 突進(70f)
------------------------------------------------------
tosshin = entryEffect( spep_6,   SP_07,   0x80,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_6, tosshin, 1.0, 1.0);

shuchusen3 = entryEffectLife( spep_6, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusen3, 255);

playSe( spep_6, SE_01);

SE000 = playSe( spep_6+20, SE_03);
setSeVolume( spep_6+20, SE_03, 70 );
stopSe( spep_6+44, SE000, 10 );

SE001 = playSe( spep_6+40, SE_03);
setSeVolume( spep_6+40, SE_03, 70 );
stopSe( spep_6+64, SE001, 10 );

SE002 = playSe( spep_6+60, SE_03);
setSeVolume( spep_6+60, SE_03, 70 );
stopSe( spep_6+74, SE002, 10 );


spep_7=spep_6+70;--spep_4=415
entryFade( spep_7-3, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
-- 両者突進・遠景(60f)
------------------------------------------------------


tosshin2 = entryEffect( spep_7,   SP_10,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_7, tosshin2, 1.0, 1.0);

shuchusen4 = entryEffectLife( spep_7, 906, 109, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_7, shuchusen4, 255);

SE003 = playSe( spep_7, SE_02);
setSeVolume( spep_7+0, SE_02, 70 );
stopSe( spep_7+24, SE003, 10 );

SE004 = playSe( spep_7+20, SE_02);
setSeVolume( spep_7+20, SE_02, 70 );
stopSe( spep_7+44, SE004, 10 );

SE005 = playSe( spep_7+40, SE_02);
setSeVolume( spep_7+40, SE_02, 70 );
stopSe( spep_7+64, SE005, 10 );

--playSe( spep_7+60, SE_02);
spep_8=spep_7+55;--spep_4=415
entryFade( spep_8-5, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景


------------------------------------------------------
-- 両者突進・頭突き1(30f)
------------------------------------------------------
setScaleKey( spep_8,   1, 3.0, 3.0);
setMoveKey( spep_8,    1,   0,  1400,   0);
setRotateKey( spep_8, 1, 270); 
setDisp( spep_8, 1, 1);
changeAnime( spep_8, 1, 103);                       -- 立ち


tosshinbg = entryEffect( spep_8,   SP_11,   0x80,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_8, tosshinbg, 1.0, 1.0);
tosshin3 = entryEffect( spep_8,   SP_12,   0x100,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_8, tosshin3, 1.0, 1.0);

shuchusen5 = entryEffectLife( spep_8, 906, 109, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_8, shuchusen5, 255);


entryFade( spep_8+18, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( spep_8+20,    1,   0,  400,   0);
setRotateKey( spep_8+20, 1, 270); 
setDisp( spep_8+20, 1, 0);

playSe( spep_8+30, SE_09);

-- 書き文字エントリー
ct3 = entryEffectLife( spep_8+38, 10018, 19, 0x100, -1, 0, 10, 300);    -- ドゴォンッ
setEffShake(spep_8+38, ct3, 40, 28);
setEffScaleKey(spep_8+38, ct3, 3.4, 3.4);
setEffRotateKey( spep_8+38, ct3, 20);


spep_9=spep_8+60;--spep_4=415
entryFade( spep_9-3, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_9-1, 0, -1000, 0, 0);


------------------------------------------------------
-- ラスト(110f)
------------------------------------------------------
--last = entryEffectLife( spep_9,   SP_13,200 ,  0,     -1,  0,  0,  0);   -- ef_002
entryEffect( spep_9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
last = entryEffect( spep_9,   SP_13,   0x80,     -1,  0,  0,  100);   -- ef_002
--last = entryEffect( spep_9,   SP_13,   0,     -1,  0,  0,  100);   -- ef_002
--last = entryEffect( spep_9,   SP_13,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_9, last, 1.0, 1.0);

setRotateKey( spep_9, 1, 0); 


--spep_10=spep_9+110;--spep_4=415
setDisp( spep_9, 1, 1);
setMoveKey(  spep_9,    1,  400,    0,  50);
setMoveKey(  spep_9+1,    1,    0,   0,   128);

setScaleKey( spep_9,    1,  2.5, 2.5);
setScaleKey( spep_9+1,    1,  1, 1);

changeAnime( spep_9+1, 1, 107);                         -- 手前ダメージ
--entryEffect( spep_9+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9, SE_10);

setMoveKey(  spep_9+8,    1,    0,   0,   128);
--setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
--setMoveKey(  spep_9+16,   1,  -60,  -200,  -100);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_9+16,   1,  -60,  -200,  -100);

setShakeChara( spep_9+16, 1, 5,  10);
setShakeChara( spep_9+21, 1, 10, 20);
setShake(spep_9+14,6,15);
setShake(spep_9+20,15,10);


--playSe( spep_5+9, 1023);
--playSe( spep_9+59-60, SE_10);


setDamage( spep_9+75-60, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage(spep_9+75-60);
--setMoveKey(  spep_end+75, 0, 0, 0, 0);

shuchusen3 = entryEffectLife( spep_9+2-60, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

entryFade( spep_9+159-60, 9, 15, 1, 8, 8, 8, 255);             -- black fade
setEffAlphaKey( spep_9+155-60, chakudan, 150);
setEffAlphaKey( spep_9+159-60, chakudan, 0);
entryFadeBg( spep_9+159-60, 0, 99, 0,10, 10, 10, 180);          -- ベース暗め　背景

endPhase(spep_9+169-60);

end

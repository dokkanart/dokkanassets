-- 1012820 sp0459 メダマッチャ_エビルコメット

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--基本いじらない--
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン・セリフカットイン時に使用
SE_05 = 1035; --カードカットイン時に使用
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --回避時の気づきに使用
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;
---必要なSEがあれば以降に追記----

SP_01 = 151668;--
SP_02 = 151669;--
SP_03 = 151670;--
SP_04 = 151671;--

multi_frm = 2;

---------------------------------------------------
--初期位置
---------------------------------------------------
setVisibleUI( 0, 0);

setDisp( 0, 0, 1);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 1);

setMoveKey(   0,   0,    0,  0,   0);
setMoveKey(   0,   1,    0,  0,   0);
setMoveKey(   1,   0,    0,  0,   0);
setMoveKey(   1,   1,    0,  0,   0);

setScaleKey(   1,   0, 1.4, 1.4);
setScaleKey(   1,   1, 1.0, 1.0);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- アイドリング(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1=0;

-- ** エフェクト等 ** --
aura_1500=entryEffectLife(  spep_1+20,   1500, 40,   0,    -1,  0,  0,  0);    -- eff_001
setEffScaleKey(  spep_1+20,aura_1500,1.0,1.0);
setEffRotateKey(  spep_1+20,aura_1500,0);
setEffAlphaKey(  spep_1+20,aura_1500,180);

setEffScaleKey(  spep_1+59,aura_1500,1.0,1.0);
setEffRotateKey(  spep_1+59,aura_1500,0);
setEffAlphaKey(  spep_1+59,aura_1500,255);

aura_1501=entryEffectLife(  spep_1+22,   1501,37,   0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey(  spep_1+22,aura_1501,1.0,1.0);
setEffRotateKey(  spep_1+22,aura_1501,0);
setEffAlphaKey(  spep_1+22,aura_1501,255);

setEffScaleKey(  spep_1+59,aura_1501,1.0,1.0);
setEffRotateKey(  spep_1+59,aura_1501,0);
setEffAlphaKey(  spep_1+59,aura_1501,255);

aura_1 = entryEffectLife(  spep_1+20,   311, 39, 0x40,  0,  1,  0,  -40); -- オーラ
--setEffMoveKey( spep_1+19,aura_1, 0, -40);
setEffMoveKey( spep_1+20,aura_1, 0, -40);
setEffScaleKey( spep_1+20, aura_1, 1.2, 1.2);

-- ** キャラクター ** --
setShakeChara( spep_1+20, 0, 40, 5);
changeAnime(  spep_1+20, 0, 17);                       -- 溜め!

setMoveKey( spep_1, 0, 0, 0, 0);
setScaleKey( spep_1, 0, 1.4, 1.4);
setMoveKey( spep_1+19, 0, 0, 0, 0);
setScaleKey( spep_1+20, 0, 1.4, 1.4);
setMoveKey( spep_1+20, 0, 0, -35, 0);
setScaleKey( spep_1+59, 0, 1.4, 1.4);
setMoveKey( spep_1+59, 0, 0, -35, 0);


-- 書き文字エントリー
ct_01 = entryEffectLife( spep_1+20, 10013, 39, 0x100, -1, 0, 0, 200); -- ズズンッ
setEffShake( spep_1+20, ct_01, 40, 7);
setEffAlphaKey( spep_1+20, ct_01, 255);
setEffScaleKey( spep_1+20, ct_01, 1.0, 1.0);
setEffRotateKey( spep_1+20, ct_01, 5);
setEffMoveKey( spep_1+20,ct_01, 0, 200);
setEffScaleKey( spep_1+24, ct_01, 2.8, 2.8);
setEffMoveKey( spep_1+24,ct_01, 50, 350);
setEffAlphaKey( spep_1+59, ct_01, 5);
setEffScaleKey( spep_1+59, ct_01, 2.8, 2.8);
setEffMoveKey( spep_1+59,ct_01, 50, 350);
setEffRotateKey( spep_1+59, ct_01, 5);


playSe( spep_1+20, SE_01);
--playSe( spep_1+20, SE_02);

--entryFade( spep_1+20, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFade( spep_1+52, 4, 5, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- かめはめ波溜め！(80F)
------------------------------------------------------
spep_2=spep_1+60;

setDisp( spep_2, 0, 1); --味方表示
setDisp( spep_2+94, 0, 0); --味方非表示

-- 背景エフェクト --
back_2 = entryEffectLife( spep_2, 1503, 87, 0x80,  0,  0,  0,  0); 

--setEffShake( spep_2, back_2, 87, 5);
setEffScaleKey( spep_2, back_2, 1.05, 1.05);
setEffRotateKey( spep_2, back_2, 0);
setEffAlphaKey( spep_2, back_2, 255);
setEffScaleKey( spep_2+87, back_2, 1.05, 1.05);
setEffRotateKey( spep_2+87, back_2, 0);
setEffAlphaKey( spep_2+87, back_2, 255);

aura_2 = entryEffectLife(  spep_2,   311, 94, 0x80,  0,  1,  0,  -260); -- オーラ
setEffShake( spep_2, aura_2, 94, 10);
setEffMoveKey( spep_2,aura_2, 0, -260);
setEffMoveKey( spep_2+94,aura_2, 0, -260);
setEffScaleKey( spep_2, aura_2, 2.1, 2.2);

-- ** キャラクター ** --
changeAnime(  spep_2, 0, 17);                       -- 溜め!
setShakeChara( spep_2, 0, 94, 10);

setScaleKey( spep_2, 0, 1.9, 1.9);
setMoveKey( spep_2, 0, 0, -35, 0);
setScaleKey( spep_2+94, 0, 1.9, 1.9);
setMoveKey( spep_2+94, 0, 0, -35, 0);
setMoveKey( spep_2+95, 0, 0, -900, 0); --回避カウンター用の座標移動

shuchusen2 = entryEffectLife( spep_2, 906, 87, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.8, 1.8);
setEffScaleKey( spep_2+87, shuchusen2, 1.8, 1.8);

--speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_2, SE_01);

--playSe( spep_2+25, SE_13);

-- 書き文字エントリー --
ct_02 = entryEffectLife( spep_2+13, 190006, 72, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_2+13, ct_02, 72, 10);
setEffScaleKey(spep_2+13, ct_02, 0.8, 0.8);
setEffRotateKey(spep_2+13, ct_02, 0);
setEffAlphaKey( spep_2+13, ct_02, 255);

entryFadeBg(spep_2,0,87,0,10,10,10,230);
entryFade(spep_2+81,4,12,4,fcolor_r, fcolor_g, fcolor_b,255);

------------------------------------------
--カードカットイン
------------------------------------------
spep_3=spep_2+97;
playSe( spep_3, SE_05);

speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.4, 1.4);
setEffScaleKey( spep_3+90, shuchusen3, 1.4, 1.4);

entryFade( spep_3+70, 17, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_3+64, SE_06);
------------------------------------------------------
-- 発射
------------------------------------------------------
spep_4=spep_3+93;

entryFadeBg( spep_4, 0, 114, 0, 10, 10, 10, 255);          -- ベース暗め　背景

shuchusen4 = entryEffectLife( spep_4, 906, 114, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.6, 1.6);
setEffScaleKey( spep_4+114, shuchusen4, 1.6, 1.6);

-- 発射
Burst = entryEffectLife( spep_4, SP_01, 114, 0x100, -1, 0, 0, 0); 
setEffShake( spep_4, Burst, 58, 15);
setEffAlphaKey( spep_4, Burst,255);
setEffScaleKey( spep_4, Burst, 1.0, 1.0);
setEffRotateKey( spep_4, Burst, 0);

setEffAlphaKey( spep_4+114, Burst,255);
setEffScaleKey( spep_4+114, Burst, 1.0, 1.0);
setEffRotateKey( spep_4+114, Burst, 0);

--バ01 5-17f
cfBa1=entryEffectLife(spep_4+4,10022,12,0x100,-1,0,-90,240);
setEffShake( spep_4+7, cfBa1, 9, 15);
setEffMoveKey( spep_4+4,cfBa1, -90, 240);
setEffAlphaKey( spep_4+4, cfBa1,80);
setEffScaleKey( spep_4+4, cfBa1, 0.9,0.9);
setEffRotateKey( spep_4+4, cfBa1, 355);

setEffMoveKey( spep_4+7,cfBa1, -100, 250);
setEffAlphaKey( spep_4+7, cfBa1,255);
setEffScaleKey( spep_4+7, cfBa1, 1.6, 1.6);
setEffRotateKey( spep_4+7, cfBa1, 355);

setEffMoveKey( spep_4+16,cfBa1, -100, 250);
setEffAlphaKey( spep_4+16, cfBa1,255);
setEffScaleKey( spep_4+16, cfBa1, 1.6, 1.6);
setEffRotateKey( spep_4+16, cfBa1, 355);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_4+12; --エンドフェイズのフレーム数を置き換える

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
------------------------------------------------------

--バ02 16-27f
cfBa2=entryEffectLife(spep_4+13,10022,12,0x100,-1,0,230,-50);
setEffShake( spep_4+16, cfBa2, 9, 15);
setEffMoveKey( spep_4+13, cfBa2, 230,-50);
setEffAlphaKey( spep_4+13, cfBa2,80);
setEffScaleKey( spep_4+13, cfBa2, 0.9,0.9);
setEffRotateKey( spep_4+13, cfBa2, 8);

setEffMoveKey( spep_4+16, cfBa2, 230,-50);
setEffAlphaKey( spep_4+16, cfBa2,255);
setEffScaleKey( spep_4+16, cfBa2, 1.6, 1.6);
setEffRotateKey( spep_4+16, cfBa2, 8);

setEffMoveKey( spep_4+25, cfBa2, 230,-50);
setEffAlphaKey( spep_4+25, cfBa2,255);
setEffScaleKey( spep_4+25, cfBa2, 1.6, 1.6);
setEffRotateKey( spep_4+25, cfBa2, 8);

--バ03 25-38f
cfBa3=entryEffectLife(spep_4+25,10022,13,0x100,-1,0,-200,200);
setEffShake( spep_4+28, cfBa3, 10, 15);
setEffMoveKey( spep_4+25, cfBa3, -200,200);
setEffAlphaKey( spep_4+25, cfBa3,80);
setEffScaleKey( spep_4+25, cfBa3, 0.9,0.9);
setEffRotateKey( spep_4+25, cfBa3, 340);

setEffMoveKey( spep_4+31, cfBa3, -200,200);
setEffAlphaKey( spep_4+31, cfBa3,255);
setEffScaleKey( spep_4+31, cfBa3, 1.6, 1.6);
setEffRotateKey( spep_4+31, cfBa3, 340);

setEffMoveKey( spep_4+38, cfBa3, -200,200);
setEffAlphaKey( spep_4+38, cfBa3,255);
setEffScaleKey( spep_4+38, cfBa3, 1.6, 1.6);
setEffRotateKey( spep_4+38, cfBa3, 340);

--バ04 35-51f
cfBa4=entryEffectLife(spep_4+33,10022,17,0x100,-1,0,300,180);
setEffShake( spep_4+36, cfBa4, 14, 15);
setEffMoveKey( spep_4+33, cfBa4, 300,180);
setEffAlphaKey( spep_4+33, cfBa4,80);
setEffScaleKey( spep_4+33, cfBa4, 0.9,0.9);
setEffRotateKey( spep_4+33, cfBa4, 10);

setEffMoveKey( spep_4+36, cfBa4, 300,180);
setEffAlphaKey( spep_4+36, cfBa4,255);
setEffScaleKey( spep_4+36, cfBa4, 1.6, 1.6);
setEffRotateKey( spep_4+36, cfBa4, 10);

setEffMoveKey( spep_4+50, cfBa4, 300,180);
setEffAlphaKey( spep_4+50, cfBa4,255);
setEffScaleKey( spep_4+50, cfBa4, 1.6, 1.6);
setEffRotateKey( spep_4+50, cfBa4, 10);

--バ05 49-60f
cfBa5=entryEffectLife(spep_4+44,10022,11,0x100,-1,0,-200,-100);
setEffShake( spep_4+47, cfBa5, 9, 15);
setEffMoveKey( spep_4+44, cfBa5, -200,-100);
setEffAlphaKey( spep_4+44, cfBa5,80);
setEffScaleKey( spep_4+44, cfBa5, 0.9,0.9);
setEffRotateKey( spep_4+44, cfBa5, 0);

setEffMoveKey( spep_4+47, cfBa5, -200,-100);
setEffAlphaKey( spep_4+47, cfBa5,255);
setEffScaleKey( spep_4+47, cfBa5, 1.6, 1.6);
setEffRotateKey( spep_4+47, cfBa5, 0);

setEffMoveKey( spep_4+56, cfBa5, -200,-100);
setEffAlphaKey( spep_4+56, cfBa5,255);
setEffScaleKey( spep_4+56, cfBa5, 1.6, 1.6);
setEffRotateKey( spep_4+56, cfBa5, 0);

--バ06 58-70f
cfBa6=entryEffectLife(spep_4+55,10022,11,0x100,-1,0,250,-30);
setEffShake( spep_4+58, cfBa6, 9, 15);
setEffMoveKey( spep_4+55, cfBa6, 250,-30);
setEffAlphaKey( spep_4+55, cfBa6,80);
setEffScaleKey( spep_4+55, cfBa6, 0.9,0.9);
setEffRotateKey( spep_4+55, cfBa6, 0);

setEffMoveKey( spep_4+58, cfBa6, 250,-30);
setEffAlphaKey( spep_4+58, cfBa6,80);
setEffScaleKey( spep_4+58, cfBa6, 1.6, 1.6);
setEffRotateKey( spep_4+58, cfBa6, 0);

setEffMoveKey( spep_4+66, cfBa6, 250,-30);
setEffAlphaKey( spep_4+66, cfBa6,255);
setEffScaleKey( spep_4+66, cfBa6, 1.6, 1.6);
setEffRotateKey( spep_4+66, cfBa6, 0);

--バ07 67-f
cfBa7=entryEffectLife(spep_4+65,10022,14,0x100,-1,0,-200,200);
setEffShake( spep_4+68, cfBa7, 11, 15);
setEffMoveKey( spep_4+65, cfBa7, -200,200);
setEffAlphaKey( spep_4+65, cfBa7,80);
setEffScaleKey( spep_4+65, cfBa7, 0.9,0.9);
setEffRotateKey( spep_4+65, cfBa7, 340);

setEffMoveKey( spep_4+68, cfBa7, -200,200);
setEffAlphaKey( spep_4+68, cfBa7,255);
setEffScaleKey( spep_4+68, cfBa7, 1.6, 1.6);
setEffRotateKey( spep_4+68, cfBa7, 340);

setEffMoveKey( spep_4+79, cfBa7, -200,200);
setEffAlphaKey( spep_4+79, cfBa7,255);
setEffScaleKey( spep_4+79, cfBa7, 1.6, 1.6);
setEffRotateKey( spep_4+79, cfBa7, 340);

--バ08 77-f
cfBa8=entryEffectLife(spep_4+73,10022,13,0x100,-1,0,180,-150);
setEffShake( spep_4+76, cfBa8, 10, 15);
setEffMoveKey( spep_4+73, cfBa8, 180,-150);
setEffAlphaKey( spep_4+73, cfBa8,80);
setEffScaleKey( spep_4+73, cfBa8, 0.9,0.9);
setEffRotateKey( spep_4+73, cfBa8, 5);

setEffMoveKey( spep_4+76, cfBa8, 180,-150);
setEffAlphaKey( spep_4+76, cfBa8,80);
setEffScaleKey( spep_4+76, cfBa8, 1.6, 1.6);
setEffRotateKey( spep_4+76, cfBa8, 5);

setEffMoveKey( spep_4+86, cfBa8, 180,-150);
setEffAlphaKey( spep_4+86, cfBa8,255);
setEffScaleKey( spep_4+86, cfBa8, 1.6, 1.6);
setEffRotateKey( spep_4+86, cfBa8, 5);

--バ09 86-101
cfBa9=entryEffectLife(spep_4+85,10022,15,0x100,-1,0,-170,-200);
setEffShake( spep_4+88, cfBa9, 12, 15);
setEffMoveKey( spep_4+85, cfBa9, -170,-200);
setEffAlphaKey( spep_4+85, cfBa9,80);
setEffScaleKey( spep_4+85, cfBa9, 0.9,0.9);
setEffRotateKey( spep_4+85, cfBa9, 28);

setEffMoveKey( spep_4+88, cfBa9, -170,-200);
setEffAlphaKey( spep_4+88, cfBa9,80);
setEffScaleKey( spep_4+88, cfBa9, 1.6, 1.6);
setEffRotateKey( spep_4+88, cfBa9, 28);

setEffMoveKey( spep_4+100, cfBa9, -170,-200);
setEffAlphaKey( spep_4+100, cfBa9,255);
setEffScaleKey( spep_4+100, cfBa9, 1.6, 1.6);
setEffRotateKey( spep_4+100, cfBa9, 28);

--バ10
cfBa10=entryEffectLife(spep_4+96,10022,14,0x100,-1,0,50,250);
setEffShake( spep_4+99, cfBa10, 11, 15);
setEffMoveKey( spep_4+96, cfBa10, 50,250);
setEffAlphaKey( spep_4+96, cfBa10,80);
setEffScaleKey( spep_4+96, cfBa10, 0.9,0.9);
setEffRotateKey( spep_4+96, cfBa10, 5);

setEffMoveKey( spep_4+99, cfBa10, 50,250);
setEffAlphaKey( spep_4+99, cfBa10,80);
setEffScaleKey( spep_4+99, cfBa10, 1.6, 1.6);
setEffRotateKey( spep_4+99, cfBa10, 5);

setEffMoveKey( spep_4+110, cfBa10, 50,250);
setEffAlphaKey( spep_4+110, cfBa10,255);
setEffScaleKey( spep_4+110, cfBa10, 1.6, 1.6);
setEffRotateKey( spep_4+110, cfBa10, 5);

playSe( spep_4+4, 31); --506

playSe( spep_4+13, 31);
playSe( spep_4+25, 31);
playSe( spep_4+33, 31);
playSe( spep_4+44, 31);
playSe( spep_4+55, 31);
playSe( spep_4+65, 31);
playSe( spep_4+80, 31);
playSe( spep_4+73, 31);
playSe( spep_4+85, 31);
playSe( spep_4+96, 31);

entryFade(spep_4+105,9,2,6,255,255,255,255);

------------------------------------------------------
-- 迫る
------------------------------------------------------
spep_5=spep_4+114;

entryFadeBg( spep_5, 0, 58, 0, 10, 10, 10, 180);          -- ベース暗め　背景

entryEffectLife( spep_5, 921, 58, 0x80,  -1,  0,  0,  0); -- 流線斜め

setDisp(spep_5, 1, 1);
setDisp(spep_5+44, 1, 0);

changeAnime( spep_5, 1, 104);
changeAnime( spep_5+17, 1, 108);

setShakeChara( spep_5, 1, 14, 15);
setShakeChara( spep_5+15, 1, 39, 10);

setMoveKey(  spep_5-1,    1,  235,  0,   0);
setMoveKey(  spep_5,    1,  235,  0,   0);
setMoveKey(  spep_5+1,    1,  235,  0,   0);
setMoveKey(  spep_5+15,    1,  180,  -10,   0);
setMoveKey(  spep_5+16,    1,   180,  -10,   0);
setMoveKey(  spep_5+27,    1,   200,  -10,   0);
setMoveKey(  spep_5+40,    1,   400,  -5,   0);
setMoveKey(  spep_5+41,    1,   420,  -5,   0);
setMoveKey(  spep_5+42,    1,   500,  0,   0);

setScaleKey( spep_5-1,    1,  1.0, 1.0);
setScaleKey( spep_5+15,    1,  2.6, 2.6);
setScaleKey( spep_5+24,    1,  2.6, 2.6);
setScaleKey( spep_5+27,    1,  2.2, 2.2);
setScaleKey( spep_5+40,    1,  0.8, 0.8);
setScaleKey( spep_5+41,    1,  0.5, 0.5);
setScaleKey( spep_5+44,    1,  0.3, 0.3);

setRotateKey( spep_5, 1, 0);
setRotateKey( spep_5+15, 1, 0);
setRotateKey( spep_5+16, 1, 0);
setRotateKey( spep_5+17, 1, 20);
setRotateKey( spep_5+18, 1, 20);
setRotateKey( spep_5+19, 1, 340);
setRotateKey( spep_5+20, 1, 340);
setRotateKey( spep_5+21, 1, 0);
setRotateKey( spep_5+44, 1, 0);

-- 迫る
Semaru = entryEffectLife( spep_5, SP_02, 58, 0x100, -1, 0, 0, 0); 
setEffShake( spep_5, Semaru, 58, 10);
setEffAlphaKey( spep_5, Semaru,255);
setEffScaleKey( spep_5, Semaru, 1.0, 1.0);
setEffRotateKey( spep_5, Semaru, 0);

setEffAlphaKey( spep_5+58, Semaru,255);
setEffScaleKey( spep_5+58, Semaru, 1.0, 1.0);
setEffRotateKey( spep_5+58, Semaru, 0);

-- 書き文字エントリー
ct5 = entryEffectLife( spep_5, 10014, 58, 0x100, -1, 0, 0, 330); -- ズドドッ
setEffShake(spep_5, ct5, 58, 30);
setEffScaleKey( spep_5, ct5, 3.0, 3.0);
setEffRotateKey(spep_5, ct5, 70);
setEffAlphaKey(spep_5, ct5, 255);
setEffAlphaKey(spep_5+58, ct5, 255);

playSe( spep_5,31);
playSe( spep_5+6,31);
playSe( spep_5+14,31);
playSe( spep_5+20,1008);
playSe( spep_5+26,1008);
playSe( spep_5+33,1008);
playSe( spep_5+39,1008);
playSe( spep_5+46,1008);

entryFade(spep_5+44,12,10,6.255,255,255,255);
------------------------------------------------------
-- Hit
------------------------------------------------------
spep_6=spep_5+58;

entryFadeBg( spep_6, 0, 98, 0, 10, 10, 10, 255);          -- ベース暗め　背景

setDisp( spep_6, 1, 1);
changeAnime( spep_6, 1, 105);

setMoveKey(  spep_6-1,    1,   500,  0,   0);
setMoveKey(  spep_6, 1,  0,  0,  -100);
setMoveKey(  spep_6+10, 1,  0,  0,  -60);
setMoveKey(  spep_6+25, 1,  0,  0,  -20);
setMoveKey(  spep_6+40, 1,  0,  0,  10);
setMoveKey(  spep_6+99, 1,  0,  0,  80);

setShakeChara( spep_6+5, 1, 30, 25);
setShakeChara( spep_6+45, 1, 40, 15);

--playSe( spep_6,1008);
playSe( spep_6+8,1008);
playSe( spep_6+20,1008);
playSe( spep_6+20,1008);
playSe( spep_6+22,1008);
playSe( spep_6+28,1008);
playSe( spep_6+32,1008);
playSe( spep_6+52,1008);
playSe( spep_6+58,1008);
playSe( spep_6+70,1008);
playSe( spep_6+78,1008);
playSe( spep_6+82,1008);

setDisp( spep_6+99, 1, 0);

HitF= entryEffect( spep_6, SP_03, 0x100, -1, 0, 0, 0); 
setEffShake( spep_6, HitF, 98, 10);
setEffAlphaKey( spep_6, HitF,255);
setEffScaleKey( spep_6, HitF, 1.0, 1.0);
setEffRotateKey( spep_6, HitF, 0);

setEffAlphaKey( spep_6+98, HitF,255);
setEffScaleKey( spep_6+98, HitF, 1.0, 1.0);
setEffRotateKey( spep_6+98, HitF, 0);

HitB= entryEffect( spep_6, SP_04, 0x80, -1, 0, 0, 0); 
setEffShake( spep_6, HitB, 98, 10);
setEffAlphaKey( spep_6, HitB,255);
setEffScaleKey( spep_6, HitB, 1.0, 1.0);
setEffRotateKey( spep_6, HitB, 0);

setEffAlphaKey( spep_6+98, HitB,255);
setEffScaleKey( spep_6+98, HitB, 1.0, 1.0);
setEffRotateKey( spep_6+98, HitB, 0);

ct6 = entryEffectLife( spep_6, 10014, 86, 0x100, -1, 0, -30, 295); -- ズドドッ
setEffShake(spep_6, ct6, 75, 45);
setEffScaleKey( spep_6, ct6, 1.3, 1.3);
setEffScaleKey( spep_6+10, ct6, 3.0, 3.0);
setEffRotateKey(spep_6, ct6, 60);
setEffAlphaKey(spep_6, ct6, 255);
setEffAlphaKey(spep_6+40, ct6, 255);
setEffAlphaKey(spep_6+50, ct6, 0);

-- ダメージ表示
dealDamage(spep_6+12);

entryFade( spep_6+69, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);      -- white fade

endPhase(spep_6+79);

else

---------------------------------------------------
--敵側
---------------------------------------------------
------------------------------------------------------
-- アイドリング(40F)
------------------------------------------------------

spep_1=0;

-- ** エフェクト等 ** --
aura_1500=entryEffectLife(  spep_1+20,   1500, 40,   0,    -1,  0,  0,  0);    -- eff_001
setEffScaleKey(  spep_1+20,aura_1500,1.0,1.0);
setEffRotateKey(  spep_1+20,aura_1500,0);
setEffAlphaKey(  spep_1+20,aura_1500,180);

setEffScaleKey(  spep_1+59,aura_1500,1.0,1.0);
setEffRotateKey(  spep_1+59,aura_1500,0);
setEffAlphaKey(  spep_1+59,aura_1500,255);

aura_1501=entryEffectLife(  spep_1+22,   1501,37,   0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey(  spep_1+22,aura_1501,1.0,1.0);
setEffRotateKey(  spep_1+22,aura_1501,0);
setEffAlphaKey(  spep_1+22,aura_1501,255);

setEffScaleKey(  spep_1+59,aura_1501,1.0,1.0);
setEffRotateKey(  spep_1+59,aura_1501,0);
setEffAlphaKey(  spep_1+59,aura_1501,255);

aura_1 = entryEffectLife(  spep_1+20,   311, 39, 0x40,  0,  1,  0,  -40); -- オーラ
setEffMoveKey( spep_1+19,aura_1, 0, -40);
setEffMoveKey( spep_1+20,aura_1, 0, -40);
setEffScaleKey( spep_1+20, aura_1, 1.2, 1.2);

-- ** キャラクター ** --
setShakeChara( spep_1+20, 0, 40, 5);
changeAnime(  spep_1+20, 0, 17);                       -- 溜め!

setMoveKey( spep_1, 0, 0, 0, 0);
setScaleKey( spep_1, 0, 1.4, 1.4);
setMoveKey( spep_1+19, 0, 0, 0, 0);
setScaleKey( spep_1+20, 0, 1.4, 1.4);
setMoveKey( spep_1+20, 0, 0, -35, 0);
setScaleKey( spep_1+59, 0, 1.4, 1.4);
setMoveKey( spep_1+59, 0, 0, -35, 0);


-- 書き文字エントリー
ct_01 = entryEffectLife( spep_1+20, 10013, 39, 0x100, -1, 0, 0, 200); -- ズズンッ
setEffShake( spep_1+20, ct_01, 40, 7);
setEffAlphaKey( spep_1+20, ct_01, 255);
setEffScaleKey( spep_1+20, ct_01, 1.0, 1.0);
setEffRotateKey( spep_1+20, ct_01, 5);
setEffMoveKey( spep_1+20,ct_01, 0, 200);
setEffScaleKey( spep_1+24, ct_01, 2.8, 2.8);
setEffMoveKey( spep_1+24,ct_01, 50, 350);
setEffAlphaKey( spep_1+59, ct_01, 5);
setEffScaleKey( spep_1+59, ct_01, 2.8, 2.8);
setEffMoveKey( spep_1+59,ct_01, 50, 350);
setEffRotateKey( spep_1+59, ct_01, 5);


playSe( spep_1+20, SE_01);
--playSe( spep_1+20, SE_02);

--entryFade( spep_1+20, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFade( spep_1+52, 4, 5, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- かめはめ波溜め！(80F)
------------------------------------------------------
spep_2=spep_1+60;

setDisp( spep_2, 0, 1); --味方表示
setDisp( spep_2+94, 0, 0); --味方非表示

-- 背景エフェクト --
back_2 = entryEffectLife( spep_2, 1503, 87, 0x80,  0,  0,  0,  0); 

--setEffShake( spep_2, back_2, 87, 5);
setEffScaleKey( spep_2, back_2, 1.05, 1.05);
setEffRotateKey( spep_2, back_2, 0);
setEffAlphaKey( spep_2, back_2, 255);
setEffScaleKey( spep_2+87, back_2, 1.05, 1.05);
setEffRotateKey( spep_2+87, back_2, 0);
setEffAlphaKey( spep_2+87, back_2, 255);

aura_2 = entryEffectLife(  spep_2,   311, 94, 0x80,  0,  1,  0,  -260); -- オーラ
setEffShake( spep_2, aura_2, 94, 10);
setEffMoveKey( spep_2,aura_2, 0, -260);
setEffMoveKey( spep_2+94,aura_2, 0, -260);
setEffScaleKey( spep_2, aura_2, 2.1, 2.2);


-- ** キャラクター ** --
changeAnime(  spep_2, 0, 17);                       -- 溜め!
setShakeChara( spep_2, 0, 94, 10);

setScaleKey( spep_2, 0, 1.9, 1.9);
setMoveKey( spep_2, 0, 0, -35, 0);
setScaleKey( spep_2+94, 0, 1.9, 1.9);
setMoveKey( spep_2+94, 0, 0, -35, 0);
setMoveKey( spep_2+95, 0, 0, -900, 0); --回避カウンター用の座標移動

shuchusen2 = entryEffectLife( spep_2, 906, 87, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.8, 1.8);
setEffScaleKey( spep_2+87, shuchusen2, 1.8, 1.8);

--speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_2, SE_01);

--playSe( spep_2+25, SE_13);

-- 書き文字エントリー --
ct_02 = entryEffectLife( spep_2+13, 190006, 72, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_2+13, ct_02, 72, 10);
setEffScaleKey(spep_2+13, ct_02, -0.8, 0.8);
setEffRotateKey(spep_2+13, ct_02, 0);
setEffAlphaKey( spep_2+13, ct_02, 255);

entryFadeBg(spep_2,0,87,0,10,10,10,230);
entryFade(spep_2+81,4,12,4,fcolor_r, fcolor_g, fcolor_b,255);

------------------------------------------
--カードカットイン
------------------------------------------
spep_3=spep_2+97;
playSe( spep_3, SE_05);

speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.4, 1.4);
setEffScaleKey( spep_3+90, shuchusen3, 1.4, 1.4);

entryFade( spep_3+70, 17, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_3+64, SE_06);
------------------------------------------------------
-- 発射
------------------------------------------------------
spep_4=spep_3+93;

entryFadeBg( spep_4, 0, 114, 0, 10, 10, 10, 255);          -- ベース暗め　背景

shuchusen4 = entryEffectLife( spep_4, 906, 114, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.6, 1.6);
setEffScaleKey( spep_4+114, shuchusen4, 1.6, 1.6);

-- 発射
Burst = entryEffectLife( spep_4, SP_01, 114, 0x100, -1, 0, 0, 0); 
setEffShake( spep_4, Burst, 58, 15);
setEffAlphaKey( spep_4, Burst,255);
setEffScaleKey( spep_4, Burst, -1.0, 1.0);
setEffRotateKey( spep_4, Burst, 0);

setEffAlphaKey( spep_4+114, Burst,255);
setEffScaleKey( spep_4+114, Burst, -1.0, 1.0);
setEffRotateKey( spep_4+114, Burst, 0);

--バ01 5-17f
cfBa1=entryEffectLife(spep_4+4,10022,12,0x100,-1,0,90,240);
setEffShake( spep_4+7, cfBa1, 9, 15);
setEffMoveKey( spep_4+4,cfBa1, 90, 240);
setEffAlphaKey( spep_4+4, cfBa1,80);
setEffScaleKey( spep_4+4, cfBa1, 0.9,0.9);
setEffRotateKey( spep_4+4, cfBa1, 5);

setEffMoveKey( spep_4+7,cfBa1, 100, 250);
setEffAlphaKey( spep_4+7, cfBa1,255);
setEffScaleKey( spep_4+7, cfBa1, 1.6, 1.6);
setEffRotateKey( spep_4+7, cfBa1, 5);

setEffMoveKey( spep_4+16,cfBa1, 100, 250);
setEffAlphaKey( spep_4+16, cfBa1,255);
setEffScaleKey( spep_4+16, cfBa1, 1.6, 1.6);
setEffRotateKey( spep_4+16, cfBa1, 5);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_4+12; --エンドフェイズのフレーム数を置き換える

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
------------------------------------------------------

--バ02 16-27f
cfBa2=entryEffectLife(spep_4+13,10022,12,0x100,-1,0,-230,-50);
setEffShake( spep_4+16, cfBa2, 9, 15);
setEffMoveKey( spep_4+13, cfBa2, -230,-50);
setEffAlphaKey( spep_4+13, cfBa2,80);
setEffScaleKey( spep_4+13, cfBa2, 0.9,0.9);
setEffRotateKey( spep_4+13, cfBa2, 352);

setEffMoveKey( spep_4+16, cfBa2, -230,-50);
setEffAlphaKey( spep_4+16, cfBa2,255);
setEffScaleKey( spep_4+16, cfBa2, 1.6, 1.6);
setEffRotateKey( spep_4+16, cfBa2, 352);

setEffMoveKey( spep_4+25, cfBa2, -230,-50);
setEffAlphaKey( spep_4+25, cfBa2,255);
setEffScaleKey( spep_4+25, cfBa2, 1.6, 1.6);
setEffRotateKey( spep_4+25, cfBa2, 352);

--バ03 25-38f
cfBa3=entryEffectLife(spep_4+25,10022,13,0x100,-1,0,200,200);
setEffShake( spep_4+28, cfBa3, 10, 15);
setEffMoveKey( spep_4+25, cfBa3, 200,200);
setEffAlphaKey( spep_4+25, cfBa3,80);
setEffScaleKey( spep_4+25, cfBa3, 0.9,0.9);
setEffRotateKey( spep_4+25, cfBa3, 20);

setEffMoveKey( spep_4+31, cfBa3, 200,200);
setEffAlphaKey( spep_4+31, cfBa3,255);
setEffScaleKey( spep_4+31, cfBa3, 1.6, 1.6);
setEffRotateKey( spep_4+31, cfBa3, 20);

setEffMoveKey( spep_4+38, cfBa3, 200,200);
setEffAlphaKey( spep_4+38, cfBa3,255);
setEffScaleKey( spep_4+38, cfBa3, 1.6, 1.6);
setEffRotateKey( spep_4+38, cfBa3, 20);

--バ04 35-51f
cfBa4=entryEffectLife(spep_4+33,10022,17,0x100,-1,0,-300,180);
setEffShake( spep_4+36, cfBa4, 14, 15);
setEffMoveKey( spep_4+33, cfBa4, -300,180);
setEffAlphaKey( spep_4+33, cfBa4,80);
setEffScaleKey( spep_4+33, cfBa4, 0.9,0.9);
setEffRotateKey( spep_4+33, cfBa4, 350);

setEffMoveKey( spep_4+36, cfBa4, -300,180);
setEffAlphaKey( spep_4+36, cfBa4,255);
setEffScaleKey( spep_4+36, cfBa4, 1.6, 1.6);
setEffRotateKey( spep_4+36, cfBa4, 350);

setEffMoveKey( spep_4+50, cfBa4, -300,180);
setEffAlphaKey( spep_4+50, cfBa4,255);
setEffScaleKey( spep_4+50, cfBa4, 1.6, 1.6);
setEffRotateKey( spep_4+50, cfBa4, 350);

--バ05 49-60f
cfBa5=entryEffectLife(spep_4+44,10022,11,0x100,-1,0,200,-100);
setEffShake( spep_4+47, cfBa5, 9, 15);
setEffMoveKey( spep_4+44, cfBa5, 200,-100);
setEffAlphaKey( spep_4+44, cfBa5,80);
setEffScaleKey( spep_4+44, cfBa5, 0.9,0.9);
setEffRotateKey( spep_4+44, cfBa5, 0);

setEffMoveKey( spep_4+47, cfBa5, 200,-100);
setEffAlphaKey( spep_4+47, cfBa5,255);
setEffScaleKey( spep_4+47, cfBa5, 1.6, 1.6);
setEffRotateKey( spep_4+47, cfBa5, 0);

setEffMoveKey( spep_4+56, cfBa5, 200,-100);
setEffAlphaKey( spep_4+56, cfBa5,255);
setEffScaleKey( spep_4+56, cfBa5, 1.6, 1.6);
setEffRotateKey( spep_4+56, cfBa5, 0);

--バ06 58-70f
cfBa6=entryEffectLife(spep_4+55,10022,11,0x100,-1,0,-250,-30);
setEffShake( spep_4+58, cfBa6, 9, 15);
setEffMoveKey( spep_4+55, cfBa6, -250,-30);
setEffAlphaKey( spep_4+55, cfBa6,80);
setEffScaleKey( spep_4+55, cfBa6, 0.9,0.9);
setEffRotateKey( spep_4+55, cfBa6, 0);

setEffMoveKey( spep_4+58, cfBa6, -250,-30);
setEffAlphaKey( spep_4+58, cfBa6,80);
setEffScaleKey( spep_4+58, cfBa6, 1.6, 1.6);
setEffRotateKey( spep_4+58, cfBa6, 0);

setEffMoveKey( spep_4+66, cfBa6, -250,-30);
setEffAlphaKey( spep_4+66, cfBa6,255);
setEffScaleKey( spep_4+66, cfBa6, 1.6, 1.6);
setEffRotateKey( spep_4+66, cfBa6, 0);

--バ07 67-f
cfBa7=entryEffectLife(spep_4+65,10022,14,0x100,-1,0,200,200);
setEffShake( spep_4+68, cfBa7, 11, 15);
setEffMoveKey( spep_4+65, cfBa7, 200,200);
setEffAlphaKey( spep_4+65, cfBa7,80);
setEffScaleKey( spep_4+65, cfBa7, 0.9,0.9);
setEffRotateKey( spep_4+65, cfBa7, 20);

setEffMoveKey( spep_4+68, cfBa7, 200,200);
setEffAlphaKey( spep_4+68, cfBa7,255);
setEffScaleKey( spep_4+68, cfBa7, 1.6, 1.6);
setEffRotateKey( spep_4+68, cfBa7, 20);

setEffMoveKey( spep_4+79, cfBa7, 200,200);
setEffAlphaKey( spep_4+79, cfBa7,255);
setEffScaleKey( spep_4+79, cfBa7, 1.6, 1.6);
setEffRotateKey( spep_4+79, cfBa7, 20);

--バ08 77-f
cfBa8=entryEffectLife(spep_4+73,10022,13,0x100,-1,0,-180,-150);
setEffShake( spep_4+76, cfBa8, 10, 15);
setEffMoveKey( spep_4+73, cfBa8, -180,-150);
setEffAlphaKey( spep_4+73, cfBa8,80);
setEffScaleKey( spep_4+73, cfBa8, 0.9,0.9);
setEffRotateKey( spep_4+73, cfBa8, 355);

setEffMoveKey( spep_4+76, cfBa8, -180,-150);
setEffAlphaKey( spep_4+76, cfBa8,80);
setEffScaleKey( spep_4+76, cfBa8, 1.6, 1.6);
setEffRotateKey( spep_4+76, cfBa8, 355);

setEffMoveKey( spep_4+86, cfBa8, -180,-150);
setEffAlphaKey( spep_4+86, cfBa8,255);
setEffScaleKey( spep_4+86, cfBa8, 1.6, 1.6);
setEffRotateKey( spep_4+86, cfBa8, 355);

--バ09 86-101
cfBa9=entryEffectLife(spep_4+85,10022,15,0x100,-1,0,170,-200);
setEffShake( spep_4+88, cfBa9, 12, 15);
setEffMoveKey( spep_4+85, cfBa9, 170,-200);
setEffAlphaKey( spep_4+85, cfBa9,80);
setEffScaleKey( spep_4+85, cfBa9, 0.9,0.9);
setEffRotateKey( spep_4+85, cfBa9, 332);

setEffMoveKey( spep_4+88, cfBa9, 170,-200);
setEffAlphaKey( spep_4+88, cfBa9,80);
setEffScaleKey( spep_4+88, cfBa9, 1.6, 1.6);
setEffRotateKey( spep_4+88, cfBa9, 332);

setEffMoveKey( spep_4+100, cfBa9, 170,-200);
setEffAlphaKey( spep_4+100, cfBa9,255);
setEffScaleKey( spep_4+100, cfBa9, 1.6, 1.6);
setEffRotateKey( spep_4+100, cfBa9, 332);

--バ10
cfBa10=entryEffectLife(spep_4+96,10022,14,0x100,-1,0,-50,250);
setEffShake( spep_4+99, cfBa10, 11, 15);
setEffMoveKey( spep_4+96, cfBa10, -50,250);
setEffAlphaKey( spep_4+96, cfBa10,80);
setEffScaleKey( spep_4+96, cfBa10, 0.9,0.9);
setEffRotateKey( spep_4+96, cfBa10, 355);

setEffMoveKey( spep_4+99, cfBa10, -50,250);
setEffAlphaKey( spep_4+99, cfBa10,80);
setEffScaleKey( spep_4+99, cfBa10, 1.6, 1.6);
setEffRotateKey( spep_4+99, cfBa10, 355);

setEffMoveKey( spep_4+110, cfBa10, -50,250);
setEffAlphaKey( spep_4+110, cfBa10,255);
setEffScaleKey( spep_4+110, cfBa10, 1.6, 1.6);
setEffRotateKey( spep_4+110, cfBa10, 355);

playSe( spep_4+4, 31); --506

playSe( spep_4+13, 31);
playSe( spep_4+25, 31);
playSe( spep_4+33, 31);
playSe( spep_4+44, 31);
playSe( spep_4+55, 31);
playSe( spep_4+65, 31);
playSe( spep_4+80, 31);
playSe( spep_4+73, 31);
playSe( spep_4+85, 31);
playSe( spep_4+96, 31);

entryFade(spep_4+105,9,2,6,255,255,255,255);

------------------------------------------------------
-- 迫る
------------------------------------------------------
spep_5=spep_4+114;

entryFadeBg( spep_5, 0, 58, 0, 10, 10, 10, 180);          -- ベース暗め　背景

entryEffectLife( spep_5, 921, 58, 0x80,  -1,  0,  0,  0); -- 流線斜め

setDisp(spep_5, 1, 1);
setDisp(spep_5+44, 1, 0);

changeAnime( spep_5, 1, 104);
changeAnime( spep_5+17, 1, 108);

setShakeChara( spep_5, 1, 14, 15);
setShakeChara( spep_5+15, 1, 39, 10);

setMoveKey(  spep_5-1,    1,  235,  0,   0);
setMoveKey(  spep_5,    1,  235,  0,   0);
setMoveKey(  spep_5+1,    1,  235,  0,   0);
setMoveKey(  spep_5+15,    1,  180,  -10,   0);
setMoveKey(  spep_5+16,    1,   180,  -10,   0);
setMoveKey(  spep_5+27,    1,   200,  -10,   0);
setMoveKey(  spep_5+40,    1,   400,  -5,   0);
setMoveKey(  spep_5+41,    1,   420,  -5,   0);
setMoveKey(  spep_5+42,    1,   500,  0,   0);

setScaleKey( spep_5-1,    1,  1.0, 1.0);
setScaleKey( spep_5+15,    1,  2.6, 2.6);
setScaleKey( spep_5+24,    1,  2.6, 2.6);
setScaleKey( spep_5+27,    1,  2.2, 2.2);
setScaleKey( spep_5+40,    1,  0.8, 0.8);
setScaleKey( spep_5+41,    1,  0.5, 0.5);
setScaleKey( spep_5+44,    1,  0.3, 0.3);

setRotateKey( spep_5, 1, 0);
setRotateKey( spep_5+15, 1, 0);
setRotateKey( spep_5+16, 1, 0);
setRotateKey( spep_5+17, 1, 20);
setRotateKey( spep_5+18, 1, 20);
setRotateKey( spep_5+19, 1, 340);
setRotateKey( spep_5+20, 1, 340);
setRotateKey( spep_5+21, 1, 0);
setRotateKey( spep_5+44, 1, 0);

-- 迫る
Semaru = entryEffectLife( spep_5, SP_02, 58, 0x100, -1, 0, 0, 0); 
setEffShake( spep_5, Semaru, 58, 10);
setEffAlphaKey( spep_5, Semaru,255);
setEffScaleKey( spep_5, Semaru, 1.0, 1.0);
setEffRotateKey( spep_5, Semaru, 0);

setEffAlphaKey( spep_5+58, Semaru,255);
setEffScaleKey( spep_5+58, Semaru, 1.0, 1.0);
setEffRotateKey( spep_5+58, Semaru, 0);

-- 書き文字エントリー
ct5 = entryEffectLife( spep_5, 10014, 58, 0x100, -1, 0, 0, 330); -- ズドドッ
setEffShake(spep_5, ct5, 58, 30);
setEffScaleKey( spep_5, ct5, 3.0, 3.0);
setEffRotateKey(spep_5, ct5, 10);
setEffAlphaKey(spep_5, ct5, 255);
setEffAlphaKey(spep_5+58, ct5, 255);

playSe( spep_5,31);
playSe( spep_5+6,31);
playSe( spep_5+14,31);
playSe( spep_5+20,1008);
playSe( spep_5+26,1008);
playSe( spep_5+33,1008);
playSe( spep_5+39,1008);
playSe( spep_5+46,1008);

entryFade(spep_5+44,12,10,6.255,255,255,255);
------------------------------------------------------
-- Hit
------------------------------------------------------
spep_6=spep_5+58;

entryFadeBg( spep_6, 0, 98, 0, 10, 10, 10, 255);          -- ベース暗め　背景

setDisp( spep_6, 1, 1);
changeAnime( spep_6, 1, 105);

setMoveKey(  spep_6-1,    1,   500,  0,   0);
setMoveKey(  spep_6, 1,  0,  0,  -100);
setMoveKey(  spep_6+10, 1,  0,  0,  -60);
setMoveKey(  spep_6+25, 1,  0,  0,  -20);
setMoveKey(  spep_6+40, 1,  0,  0,  10);
setMoveKey(  spep_6+99, 1,  0,  0,  80);

setShakeChara( spep_6+5, 1, 30, 25);
setShakeChara( spep_6+45, 1, 40, 15);

--playSe( spep_6,1008);
playSe( spep_6+8,1008);
playSe( spep_6+20,1008);
playSe( spep_6+20,1008);
playSe( spep_6+22,1008);
playSe( spep_6+28,1008);
playSe( spep_6+32,1008);
playSe( spep_6+52,1008);
playSe( spep_6+58,1008);
playSe( spep_6+70,1008);
playSe( spep_6+78,1008);
playSe( spep_6+82,1008);

setDisp( spep_6+99, 1, 0);

HitF= entryEffect( spep_6, SP_03, 0x100, -1, 0, 0, 0); 
setEffShake( spep_6, HitF, 98, 10);
setEffAlphaKey( spep_6, HitF,255);
setEffScaleKey( spep_6, HitF, 1.0, 1.0);
setEffRotateKey( spep_6, HitF, 0);

setEffAlphaKey( spep_6+98, HitF,255);
setEffScaleKey( spep_6+98, HitF, 1.0, 1.0);
setEffRotateKey( spep_6+98, HitF, 0);

HitB= entryEffect( spep_6, SP_04, 0x80, -1, 0, 0, 0); 
setEffShake( spep_6, HitB, 98, 10);
setEffAlphaKey( spep_6, HitB,255);
setEffScaleKey( spep_6, HitB, 1.0, 1.0);
setEffRotateKey( spep_6, HitB, 0);

setEffAlphaKey( spep_6+98, HitB,255);
setEffScaleKey( spep_6+98, HitB, 1.0, 1.0);
setEffRotateKey( spep_6+98, HitB, 0);

ct6 = entryEffectLife( spep_6, 10014, 86, 0x100, -1, 0, -30, 295); -- ズドドッ
setEffShake(spep_6, ct6, 75, 45);
setEffScaleKey( spep_6, ct6, 1.3, 1.3);
setEffScaleKey( spep_6+10, ct6, 3.0, 3.0);
setEffRotateKey(spep_6, ct6, 300);
setEffAlphaKey(spep_6, ct6, 255);
setEffAlphaKey(spep_6+40, ct6, 255);
setEffAlphaKey(spep_6+50, ct6, 0);

-- ダメージ表示
dealDamage(spep_6+12);

entryFade( spep_6+69, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);      -- white fade

endPhase(spep_6+79);

end

--1013920 超サイヤ人3ベジータ(GT)　sp0454 ギャリック砲

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

SP_00 =151610;--110
SP_01 =151611;--70
SP_02 =151612;--70
SP_03 =190000;--60

SP_00x =151610;--110
SP_01x =151611;--70
SP_02x =151612;--70
SP_03x =190000;--60

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
--setMoveKey( 0, 0, 0, -10, 0); --味方位置

--setScaleKey( 0, 0, 1.3, 1.3);
--setScaleKey( 1, 0, 1.3, 1.3);
--setScaleKey( 0, 1, 1.0, 1.0);
setRotateKey( 0,  0, 0);

------------------------------------------------------
--気を貯める
------------------------------------------------------
spep_1=0;

-- ** エフェクト等 ** --
aura_1500=entryEffectLife(  spep_1+30,   1500, 39,  0,    -1,  0,  0,  0);    -- eff_001
setEffScaleKey(  spep_1+30,aura_1500,1.0,1.0);
setEffRotateKey(  spep_1+30,aura_1500,0);
setEffAlphaKey(  spep_1+30,aura_1500,180);

setEffScaleKey(  spep_1+69,aura_1500,1.0,1.0);
setEffRotateKey(  spep_1+69,aura_1500,0);
setEffAlphaKey(  spep_1+69,aura_1500,255);

aura_1501=entryEffectLife(  spep_1+41,   1501, 28,  0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey(  spep_1+41,aura_1501,1.0,1.0);
setEffRotateKey(  spep_1+41,aura_1501,0);
setEffAlphaKey(  spep_1+41,aura_1501,255);

setEffScaleKey(  spep_1+69,aura_1501,1.0,1.0);
setEffRotateKey(  spep_1+69,aura_1501,0);
setEffAlphaKey(  spep_1+69,aura_1501,255);

aura = entryEffectLife(  spep_1+30,   311, 39, 0x40,  0,  1,  0,  -25); -- オーラ
setEffMoveKey( spep_1+29,aura, 0, -25);
setEffMoveKey( spep_1+30,aura, 0, -25);
setEffScaleKey( spep_1+30, aura, 1.05, 1.05);

-- ** キャラクター ** --

setScaleKey( spep_1, 0, 1.3, 1.3);
setScaleKey( spep_1+1, 0, 1.3, 1.3);
setScaleKey( spep_1+2, 0, 1.3, 1.3);
setScaleKey( spep_1+3, 0, 1.3, 1.3);
setScaleKey( spep_1+4, 0, 1.3, 1.3);
setScaleKey( spep_1+5, 0, 1.3, 1.3);

setMoveKey( spep_1, 0, 0, -10, 0);
setMoveKey( spep_1+1, 0, 0, -10, 0);
setMoveKey( spep_1+2, 0, 0, -10, 0);
setMoveKey( spep_1+3, 0, 0, -10, 0);
setMoveKey( spep_1+4, 0, 0, -10, 0);
setMoveKey( spep_1+5, 0, 0, -10, 0);

setShakeChara( spep_1+30, 0, 40, 5);

setMoveKey( spep_1+29, 0, 0, -10, 0);
changeAnime(  spep_1+30, 0, 17);                       -- 溜め!
setScaleKey( spep_1+30, 0, 1.3, 1.3);
setMoveKey( spep_1+30, 0, 0, -35, 0);
setScaleKey( spep_1+70, 0, 1.3, 1.3);
setMoveKey( spep_1+70, 0, 0, -35, 0);


-- 書き文字エントリー
ct_01 = entryEffectLife( spep_1+30, 10013, 39, 0x100, -1, 0, 0, 200); -- ズズンッ
setEffShake( spep_1+30, ct_01, 40, 7);
setEffAlphaKey( spep_1+30, ct_01, 255);
setEffScaleKey( spep_1+30, ct_01, 1.0, 1.0);
setEffRotateKey( spep_1+30, ct_01, 355);
setEffMoveKey( spep_1+30,ct_01, 0, 200);
setEffScaleKey( spep_1+40, ct_01, 2.8, 2.8);
setEffMoveKey( spep_1+40,ct_01, 50, 350);
setEffAlphaKey( spep_1+69, ct_01, 255);
setEffScaleKey( spep_1+69, ct_01, 2.8, 2.8);
setEffMoveKey( spep_1+69,ct_01, 50, 350);
setEffRotateKey( spep_1+69, ct_01, 355);


playSe( spep_1+30, SE_01);
playSe( spep_1+30, SE_02);

--entryFade( spep_1+30, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFadeBg(spep_1+50,0,48,0,10,10,10,230);
entryFade( spep_1+62, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- かめはめ波溜め！(80F)
------------------------------------------------------
spep_2=spep_1+70;

setDisp( spep_2, 0, 0); --味方非表示

-- 背景エフェクト --
back_2a = entryEffectLife( spep_2, 1503, 87, 0x80,  0,  0,  0,  0); 

setEffScaleKey( spep_2, back_2a, 1.1, 1.1);
setEffRotateKey( spep_2, back_2a, 0);
setEffAlphaKey( spep_2, back_2a, 255);
setEffScaleKey( spep_2+87, back_2a, 1.1, 1.1);
setEffRotateKey( spep_2+87, back_2a, 0);
setEffAlphaKey( spep_2+87, back_2a, 255);

back_2b = entryEffectLife( spep_2, 1502, 87, 0x80,  0,  0,  0,  0); 

setEffScaleKey( spep_2, back_2b, 1.1, 1.1);
setEffRotateKey( spep_2, back_2b, 0);
setEffAlphaKey( spep_2, back_2b, 255);
setEffScaleKey( spep_2+87, back_2b, 1.1, 1.1);
setEffRotateKey( spep_2+87, back_2b, 0);
setEffAlphaKey( spep_2+87, back_2b, 255);

-- 気溜めエフェクト --
kidame_02 = entryEffectLife( spep_2, SP_00, 87, 0x100,  -1,  0,  0,  0); 

setEffScaleKey( spep_2, kidame_02, 1.0, 1.0);
setEffRotateKey( spep_2, kidame_02, 0);
setEffAlphaKey( spep_2, kidame_02, 255);
setEffScaleKey( spep_2+87, kidame_02, 1.0, 1.0);
setEffRotateKey( spep_2+87, kidame_02, 0);
setEffAlphaKey( spep_2+87, kidame_02, 255);

shuchusen2 = entryEffectLife( spep_2, 906, 87, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.1, 1.1);
setEffScaleKey( spep_2+87, shuchusen2, 1.1, 1.1);

speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_2, SE_01);

playSe( spep_2+25, SE_13);

-- 書き文字エントリー --
ct_02 = entryEffectLife( spep_2+13, 190006, 72, 0x100, -1, 0, 200, 500);    -- ゴゴゴゴ
setEffShake(spep_2+13, ct_02, 72, 10);
setEffScaleKey(spep_2+13, ct_02, 0.8, 0.8);
setEffRotateKey(spep_2+13, ct_02, 0);
setEffAlphaKey( spep_2+13, ct_02, 255);

entryFadeBg(spep_2,0,87,0,10,10,10,230);
entryFade(spep_2+81,4,12,4,fcolor_r, fcolor_g, fcolor_b,255);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+95;

entryFadeBg( spep_3, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_3, SE_05);

speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffScaleKey( spep_3+90, shuchusen3, 1.0, 1.0);

entryFadeBg(spep_3,0,90,0,0,0,0,255);
entryFade( spep_3+80, 4,  9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 発射(70F)
------------------------------------------------------
spep_4=spep_3+93;

hassya_04 = entryEffectLife( spep_4, SP_01, 70, 0x100,  -1,  0,  0,  0); 

setEffScaleKey( spep_4, hassya_04, 1.0, 1.0);
setEffRotateKey( spep_4, hassya_04, 0);
setEffAlphaKey( spep_4, hassya_04, 255);
setEffScaleKey( spep_4+70, hassya_04, 1.0, 1.0);
setEffRotateKey( spep_4+70, hassya_04, 0);
setEffAlphaKey( spep_4+70, hassya_04, 255);

ryu4 = entryEffectLife(spep_4, 921, 70, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey(spep_4, ryu4, 1.9, 1.4);
setEffRotateKey(spep_4, ryu4, 224);
setEffScaleKey(spep_4+70, ryu4, 1.9, 1.4);
setEffRotateKey(spep_4+70, ryu4, 224);

playSe( spep_4, SE_07);

-- 書き文字エントリー
ct_04 = entryEffectLife(spep_4, 10012, 70, 0, -1, 0, 0, 380); -- ズオッ
--setEffShake( spep_4, ct_04, 70, 15)
setEffScaleKey( spep_4, ct_04, 2.5, 2.5);
setEffRotateKey( spep_4, ct_04, 0)
setEffScaleKey( spep_4+4, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+8, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+12, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+16, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+20, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+24, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+28, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+32, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+36, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+40, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+44, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+48, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+52, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+56, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+60, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+64, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+70, ct_04, 2.3, 2.3);

entryFadeBg(spep_4,0,70,0,0,0,0,255);
entryFade( spep_4+60, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(66F)
------------------------------------------------------
spep_5=spep_4+70;

ryu5 = entryEffectLife(spep_5, 921, 66, 0x80,  -1, 0,  0,  0);   -- 流線
setEffMoveKey( spep_5,ryu5, 160, 0);
setEffScaleKey(spep_5, ryu5, 1.7, 1.4);
setEffRotateKey(spep_5, ryu5, 248);
setEffScaleKey(spep_5+66, ryu5, 1.7, 1.4);
setEffRotateKey(spep_5+66, ryu5, 248);

semaru_05 = entryEffectLife( spep_5, SP_02, 66, 0x80,  -1,  0,  0,  0); 

setEffScaleKey( spep_5, semaru_05, 1.0, 1.0);
setEffRotateKey( spep_5, semaru_05, 0);
setEffAlphaKey( spep_5, semaru_05, 255);
setEffScaleKey( spep_5+66, semaru_05, 1.0, 1.0);
setEffRotateKey( spep_5+66, semaru_05, 0);
setEffAlphaKey( spep_5+66, semaru_05, 255);

-- 敵の動き
setDisp( spep_5, 1, 1);
changeAnime(  spep_5, 1, 102);                       -- 敵後ろ向き

setScaleKey( spep_5, 1, 2.0, 2.0);
setMoveKey( spep_5, 1, 700, -1000,  0);

setScaleKey(   spep_5+20,   1, 1.5, 1.5);
setMoveKey(   spep_5+20,   1, 180, -300,   0);

setScaleKey(   spep_5+66,   1, 1.6, 1.6);
setMoveKey(   spep_5+66,   1, 130, -250,   0);


shuchusen5 = entryEffectLife( spep_5, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_5+90, shuchusen5, 1.0, 1.0);

playSe( spep_5, SE_06);


-- 書き文字エントリー
ct_05 = entryEffectLife( spep_5, 10014, 66, 0x100, -1, 0, 100, 255); -- ズドドッ
setEffShake(spep_5, ct_05, 66, 40);
setEffScaleKey( spep_5, ct_05, 3.3, 3.3);
setEffRotateKey(spep_5, ct_05, 75);
setEffAlphaKey(spep_5, ct_05, 255);

-- SP_04後方から波動・奥
entryFadeBg(spep_5,0,66,0,0,0,0,255);
entryFade( spep_5+56, 8,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 350; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,    0, 0); --味方位置
setMoveKey( SP_dodge, 0, 1000, -1000, 0); --味方位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
spep_6=spep_5+66;

setDisp( spep_6-1, 1, 0);

gyan = entryEffect(  spep_6,  SP_03,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_6, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_6, ct_06, 2.0, 2.0);
setEffAlphaKey( spep_6, ct_06, 255);
setEffScaleKey( spep_6+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_6+58, ct_06, 4.5, 4.5);
setEffAlphaKey( spep_6+58, ct_06, 255);
setEffShake( spep_6, ct_06, 58, 10);

playSe(  spep_6, SE_09);

entryFade(  spep_6+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_6,0,60,0,0,0,0,255);
entryFade( spep_6+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_7=spep_6+60;


setDisp( spep_7-1, 1, 1);
setMoveKey(  spep_7-1,    1,  100,  0,   0);
setScaleKey( spep_7-1,    1,  1.0, 1.0);
setMoveKey(  spep_7,    1,    0,   0,   128);
setScaleKey( spep_7,    1,  0.1, 0.1);

changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey(  spep_7+8,   1,    0,   0,   128);
setMoveKey(  spep_7+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_7+16,   1,  -60,  -200,  -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake(spep_7+7,6,15);
setShake(spep_7+13,15,10);

setRotateKey( spep_7,  1,  30 );
setRotateKey( spep_7+2,  1,  80 );
setRotateKey( spep_7+4,  1, 120 );
setRotateKey( spep_7+6,  1, 160 );
setRotateKey( spep_7+8,  1, 200 );
setRotateKey( spep_7+10,  1, 260 );
setRotateKey( spep_7+12,  1, 320 );
setRotateKey( spep_7+14,  1,   0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_11);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_7+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_7+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+110);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
--setMoveKey( 0, 0, 0, -10, 0); --味方位置

--setScaleKey( 0, 0, 1.3, 1.3);
--setScaleKey( 1, 0, 1.3, 1.3);
--setScaleKey( 0, 1, 1.0, 1.0);
setRotateKey( 0,  0, 0);

------------------------------------------------------
--気を貯める
------------------------------------------------------
spep_1=0;

-- ** エフェクト等 ** --
aura_1500=entryEffectLife(  spep_1+30,   1500, 39,  0,    -1,  0,  0,  0);    -- eff_001
setEffScaleKey(  spep_1+30,aura_1500,1.0,1.0);
setEffRotateKey(  spep_1+30,aura_1500,0);
setEffAlphaKey(  spep_1+30,aura_1500,180);

setEffScaleKey(  spep_1+69,aura_1500,1.0,1.0);
setEffRotateKey(  spep_1+69,aura_1500,0);
setEffAlphaKey(  spep_1+69,aura_1500,255);

aura_1501=entryEffectLife(  spep_1+41,   1501, 28,  0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey(  spep_1+41,aura_1501,1.0,1.0);
setEffRotateKey(  spep_1+41,aura_1501,0);
setEffAlphaKey(  spep_1+41,aura_1501,255);

setEffScaleKey(  spep_1+69,aura_1501,1.0,1.0);
setEffRotateKey(  spep_1+69,aura_1501,0);
setEffAlphaKey(  spep_1+69,aura_1501,255);

aura = entryEffectLife(  spep_1+30,   311, 39, 0x40,  0,  1,  0,  -25); -- オーラ
setEffMoveKey( spep_1+29,aura, 0, -25);
setEffMoveKey( spep_1+30,aura, 0, -25);
setEffScaleKey( spep_1+30, aura, 1.05, 1.05);

-- ** キャラクター ** --

setScaleKey( spep_1, 0, 1.3, 1.3);
setScaleKey( spep_1 +1, 0, 1.3, 1.3);
setScaleKey( spep_1 +2, 0, 1.3, 1.3);
setScaleKey( spep_1 +3, 0, 1.3, 1.3);
setScaleKey( spep_1 +4, 0, 1.3, 1.3);
setScaleKey( spep_1 +5, 0, 1.3, 1.3);

setMoveKey( spep_1, 0, 0, -10, 0);
setMoveKey( spep_1+1, 0, 0, -10, 0);
setMoveKey( spep_1+2, 0, 0, -10, 0);
setMoveKey( spep_1+3, 0, 0, -10, 0);
setMoveKey( spep_1+4, 0, 0, -10, 0);
setMoveKey( spep_1+5, 0, 0, -10, 0);

setShakeChara( spep_1+30, 0, 40, 5);

setMoveKey( spep_1+29, 0, 0, -10, 0);
changeAnime(  spep_1+30, 0, 17);                       -- 溜め!
setScaleKey( spep_1+30, 0, 1.3, 1.3);
setMoveKey( spep_1+30, 0, 0, -35, 0);
setScaleKey( spep_1+70, 0, 1.3, 1.3);
setMoveKey( spep_1+70, 0, 0, -35, 0);


-- 書き文字エントリー
ct_01 = entryEffectLife( spep_1+30, 10013, 39, 0x100, -1, 0, 0, 200); -- ズズンッ
setEffShake( spep_1+30, ct_01, 40, 7);
setEffAlphaKey( spep_1+30, ct_01, 255);
setEffScaleKey( spep_1+30, ct_01, 1.0, 1.0);
setEffRotateKey( spep_1+30, ct_01, 355);
setEffMoveKey( spep_1+30,ct_01, 0, 200);
setEffScaleKey( spep_1+40, ct_01, 2.8, 2.8);
setEffMoveKey( spep_1+40,ct_01, 50, 350);
setEffAlphaKey( spep_1+69, ct_01, 255);
setEffScaleKey( spep_1+69, ct_01, 2.8, 2.8);
setEffMoveKey( spep_1+69,ct_01, 50, 350);
setEffRotateKey( spep_1+69, ct_01, 355);


playSe( spep_1+30, SE_01);
playSe( spep_1+30, SE_02);

--entryFade( spep_1+30, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFadeBg(spep_1+50,0,48,0,10,10,10,230);
entryFade( spep_1+62, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- かめはめ波溜め！(80F)
------------------------------------------------------
spep_2=spep_1+70;

setDisp( spep_2, 0, 0); --味方非表示

-- 背景エフェクト --
back_2a = entryEffectLife( spep_2, 1503, 87, 0x80,  0,  0,  0,  0); 

setEffScaleKey( spep_2, back_2a, 1.1, 1.1);
setEffRotateKey( spep_2, back_2a, 0);
setEffAlphaKey( spep_2, back_2a, 255);
setEffScaleKey( spep_2+87, back_2a, 1.1, 1.1);
setEffRotateKey( spep_2+87, back_2a, 0);
setEffAlphaKey( spep_2+87, back_2a, 255);

back_2b = entryEffectLife( spep_2, 1502, 87, 0x80,  0,  0,  0,  0); 

setEffScaleKey( spep_2, back_2b, 1.1, 1.1);
setEffRotateKey( spep_2, back_2b, 0);
setEffAlphaKey( spep_2, back_2b, 255);
setEffScaleKey( spep_2+87, back_2b, 1.1, 1.1);
setEffRotateKey( spep_2+87, back_2b, 0);
setEffAlphaKey( spep_2+87, back_2b, 255);

-- 気溜めエフェクト --
kidame_02 = entryEffectLife( spep_2, SP_00x, 87, 0x100,  -1,  0,  0,  0); 

setEffScaleKey( spep_2, kidame_02, -1.0, 1.0);
setEffRotateKey( spep_2, kidame_02, 0);
setEffAlphaKey( spep_2, kidame_02, 255);
setEffScaleKey( spep_2+87, kidame_02, -1.0, 1.0);
setEffRotateKey( spep_2+87, kidame_02, 0);
setEffAlphaKey( spep_2+87, kidame_02, 255);

shuchusen2 = entryEffectLife( spep_2, 906, 87, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.1, 1.1);
setEffScaleKey( spep_2+87, shuchusen2, 1.1, 1.1);

--speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_2, SE_01);

playSe( spep_2+25, SE_13);

-- 書き文字エントリー --
ct_02 = entryEffectLife( spep_2+13, 190006, 72, 0x100, -1, 0, 200, 500);    -- ゴゴゴゴ
setEffShake(spep_2+13, ct_02, 72, 10);
setEffScaleKey(spep_2+13, ct_02, -0.8, 0.8);
setEffRotateKey(spep_2+13, ct_02, 0);
setEffAlphaKey( spep_2+13, ct_02, 255);

entryFadeBg(spep_2,0,87,0,10,10,10,230);
entryFade(spep_2+81,4,12,4,fcolor_r, fcolor_g, fcolor_b,255);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+95;

entryFadeBg( spep_3, 0, 88, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_3, SE_05);

speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffScaleKey( spep_3+90, shuchusen3, 1.0, 1.0);

entryFadeBg(spep_3,0,90,0,0,0,0,255);
entryFade( spep_3+80, 4,  9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 発射(70F)
------------------------------------------------------
spep_4=spep_3+93;

hassya_04 = entryEffectLife( spep_4, SP_01x, 70, 0x100,  -1,  0,  0,  0); 

setEffScaleKey( spep_4, hassya_04, 1.0, 1.0);
setEffRotateKey( spep_4, hassya_04, 0);
setEffAlphaKey( spep_4, hassya_04, 255);
setEffScaleKey( spep_4+70, hassya_04, 1.0, 1.0);
setEffRotateKey( spep_4+70, hassya_04, 0);
setEffAlphaKey( spep_4+70, hassya_04, 255);

ryu4 = entryEffectLife(spep_4, 921, 70, 0x80,  -1, 0,  0,  0);   -- 流線
setEffScaleKey(spep_4, ryu4, 1.9, 1.4);
setEffRotateKey(spep_4, ryu4, 224);
setEffScaleKey(spep_4+70, ryu4, 1.9, 1.4);
setEffRotateKey(spep_4+70, ryu4, 224);

playSe( spep_4, SE_07);

-- 書き文字エントリー
ct_04 = entryEffectLife(spep_4, 10012, 70, 0, -1, 0, 0, 380); -- ズオッ
--setEffShake( spep_4, ct_04, 70, 15)
setEffScaleKey( spep_4, ct_04, 2.5, 2.5);
setEffRotateKey( spep_4, ct_04, 0)
setEffScaleKey( spep_4+4, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+8, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+12, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+16, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+20, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+24, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+28, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+32, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+36, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+40, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+44, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+48, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+52, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+56, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+60, ct_04, 2.3, 2.3);
setEffScaleKey( spep_4+64, ct_04, 2.5, 2.5);
setEffScaleKey( spep_4+70, ct_04, 2.3, 2.3);


entryFadeBg(spep_4,0,70,0,0,0,0,255);
entryFade( spep_4+60, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(66F)
------------------------------------------------------
spep_5=spep_4+70;

ryu5 = entryEffectLife(spep_5, 921, 66, 0x80,  -1, 0,  0,  0);   -- 流線
setEffMoveKey( spep_5,ryu5, 160, 0);
setEffScaleKey(spep_5, ryu5, 1.7, 1.4);
setEffRotateKey(spep_5, ryu5, 248);
setEffScaleKey(spep_5+66, ryu5, 1.7, 1.4);
setEffRotateKey(spep_5+66, ryu5, 248);

semaru_05 = entryEffectLife( spep_5, SP_02x, 66, 0x80,  -1,  0,  0,  0); 

setEffScaleKey( spep_5, semaru_05, 1.0, 1.0);
setEffRotateKey( spep_5, semaru_05, 0);
setEffAlphaKey( spep_5, semaru_05, 255);
setEffScaleKey( spep_5+66, semaru_05, 1.0, 1.0);
setEffRotateKey( spep_5+66, semaru_05, 0);
setEffAlphaKey( spep_5+66, semaru_05, 255);

-- 敵の動き
setDisp( spep_5, 1, 1);
changeAnime(  spep_5, 1, 102);                       -- 敵後ろ向き

setScaleKey( spep_5, 1, 2.0, 2.0);
setMoveKey( spep_5, 1, 700, -1000,  0);

setScaleKey(   spep_5+20,   1, 1.5, 1.5);
setMoveKey(   spep_5+20,   1, 180, -300,   0);

setScaleKey(   spep_5+66,   1, 1.6, 1.6);
setMoveKey(   spep_5+66,   1, 130, -250,   0);


shuchusen5 = entryEffectLife( spep_5, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_5+90, shuchusen5, 1.0, 1.0);

playSe( spep_5, SE_06);


-- 書き文字エントリー
ct_05 = entryEffectLife( spep_5, 10014, 66, 0x100, -1, 0, 100, 255); -- ズドドッ
setEffShake(spep_5, ct_05, 66, 40);
setEffScaleKey( spep_5, ct_05, 3.3, 3.3);
setEffRotateKey(spep_5, ct_05, 15);
setEffAlphaKey(spep_5, ct_05, 255);

-- SP_04後方から波動・奥
entryFadeBg(spep_5,0,66,0,0,0,0,255);
entryFade( spep_5+56, 8,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 350; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,    0, 0); --味方位置
setMoveKey( SP_dodge, 0, 1000, -1000, 0); --味方位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
spep_6=spep_5+66;

setDisp( spep_6-1, 1, 0);

gyan = entryEffect(  spep_6,  SP_03x,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);

-- 書き文字エントリー --
ct_06 = entryEffectLife( spep_6, 10006, 58, 0x100, -1, 0, 0, 300);    -- ギャン

setEffScaleKey( spep_6, ct_06, 2.0, 2.0);
setEffAlphaKey( spep_6, ct_06, 255);
setEffScaleKey( spep_6+10, ct_06, 3.8, 3.8);
setEffScaleKey( spep_6+58, ct_06, 4.5, 4.5);
setEffAlphaKey( spep_6+58, ct_06, 255);
setEffShake( spep_6, ct_06, 58, 10);

playSe(  spep_6, SE_09);

entryFade(  spep_6+47,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg(spep_6,0,60,0,0,0,0,255);
entryFade( spep_6+50, 4,  8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_7=spep_6+60;


setDisp( spep_7-1, 1, 1);
setMoveKey(  spep_7-1,    1,  100,  0,   0);
setScaleKey( spep_7-1,    1,  1.0, 1.0);
setMoveKey(  spep_7,    1,    0,   0,   128);
setScaleKey( spep_7,    1,  0.1, 0.1);

changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey(  spep_7+8,   1,    0,   0,   128);
setMoveKey(  spep_7+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_7+16,   1,  -60,  -200,  -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake(spep_7+7,6,15);
setShake(spep_7+13,15,10);

setRotateKey( spep_7,  1,  30 );
setRotateKey( spep_7+2,  1,  80 );
setRotateKey( spep_7+4,  1, 120 );
setRotateKey( spep_7+6,  1, 160 );
setRotateKey( spep_7+8,  1, 200 );
setRotateKey( spep_7+10,  1, 260 );
setRotateKey( spep_7+12,  1, 320 );
setRotateKey( spep_7+14,  1,   0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_11);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_7+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_7+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+110);

end

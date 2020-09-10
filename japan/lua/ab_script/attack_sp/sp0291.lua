

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


SP_01 = 100168;--かめはめ溜め
SP_02 = 100169;--かめはめ発射

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
changeAnime( 0, 0, 17);                       -- 溜め!
setScaleKey(   0,   0, 4, 4);
setScaleKey(   15,   0, 1.8, 1.8);

setMoveKey(   0,   0,  100, -400,   0);
setMoveKey(   15,   0,  0, 0,   20);
setMoveKey(  117,   0,  0, 0,   20);

playSe( 0, SE_03); --かめはめ波
playSe( 25, SE_03); 
playSe( 50, SE_03);
playSe( 75, SE_03); 
playSe( 100, SE_03);  


speff1 = entryEffect(  30,   1504,  0, -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

setEffAlphaKey( 30, speff1, 255);

playSe( 20, SE_04);

entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

--aura = entryEffectLife(  0,   321, 117, 0x40+0x80,  0,  1,  0, 0); -- オーラ
--setEffMoveKey(   0,   aura,    80, 0,   0);
--setEffMoveKey(   15,   aura,    0, -220,   0);
--setEffMoveKey(  117,   aura,   0, -220,  0);
--setEffScaleKey( 0, aura, 3, 3);
--setEffScaleKey( 15, aura, 1.5, 1.5);
--setEffScaleKey( 40, aura, 1, 1);
--setEffScaleKey( 117, aura, 2, 2);

setShakeChara( 0, 0, 117, 8);
setShake( 0, 117, 15);

-- 書き文字エントリー

shuchusen5 = entryEffectLife( 0, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 117, shuchusen5, 1.0, 1.0);


entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 124;
setScaleKey(  spep_2,  0,  1.8,  1.8);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_2-1,   0, 1.5, 1.5);
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
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_2+64, SE_06);

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --214

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 2.0, 2.0);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.5, 1.5);
setMoveKey(  spep_6,  1, 1700,  0,   0);

--[[
Daura1 = entryEffectLife( spep_6, 321, 47, 0x40,  0, 1,  170,  0);   -- ドッカン用横向きオーラ
setEffScaleKey( spep_6, Daura1, 1.8, 1.8);
setEffRotateKey( spep_6,Daura1,-90);
]]--

--P移動
setMoveKey(  spep_6-1,    0,      0,  0,   0);
setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+15,    0,   0,  0,   0);

setMoveKey(  spep_6+35,    0,   -150,  0,   0);

playSe( spep_6, SE_07);


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_6, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_6, 0, 100, 10);
setShakeChara( spep_6, 1, 100, 10);

playSe( spep_6+38, 1018);

--setEffAlphaKey(spep_6+38,spname, 1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 260; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,  0, -100,  0,   0);
setMoveKey(  SP_dodge+9,  0, -1100,  0,   0);
setScaleKey( SP_dodge+9, 0, 2, 2);

endPhase(SP_dodge+10);
do return end
else end


playSe( spep_6+45, SE_06);

setMoveKey(  spep_6+45,  0, 700,  0,   0);
setMoveKey(  spep_6+48,  0, 700,  0,   0);
setMoveKey(  spep_6+49,  0, -1700,  0,   0);

--[[
Daura2 = entryEffectLife( spep_6+50, 321, 50, 0x40,  0, 1,  200,  0);   -- ドッカン用横向きオーラ
setEffScaleKey( spep_6+50, Daura2, 1.3, 1.3);
setEffRotateKey( spep_6+50,Daura2,-90);
]]--

entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setEnvZoomEnable(spep_6+50,1);
setScaleKey( spep_6+49, 0, 2.0, 2.0);
setScaleKey( spep_6+50, 0, 1.5, 1.5);

--右大パンチ

setMoveKey(  spep_6+50,  0, -1700,  0,   0);
setMoveKey(  spep_6+51,  0, -700,  0,   0);
setMoveKey(  spep_6+61,  0, -100,  0,   0);

setMoveKey(  spep_6+50,  1, 1700,  0,   0);
setMoveKey(  spep_6+51,  1, 550,  0,   0);
setMoveKey(  spep_6+61,  1, 20,  0,   0);

changeAnime( spep_6+60,   0, 11 );--パンチ3
playSe( spep_6+61,1009);--SE
entryEffect(  spep_6+60,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+61, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+61,   1, 108 ); --敵モーション


--追い討ち移動

setMoveKey(  spep_6+66,  0, -550,  0,   0);
setMoveKey(  spep_6+86,  0, 0,  0,   0);

setMoveKey(  spep_6+86,  1, 100,  0,   0);

changeAnime( spep_6+66, 0, 3); 

--右大キック吹き飛ばし

changeAnime( spep_6+85,   0, 14 );--キック3
playSe( spep_6+86,1010);--SE
entryEffect(  spep_6+85,   6,   0,  1,   0,  0,  0);
setDamage( spep_6+86, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+86,   1, 106 ); --敵モーション

setMoveKey(  spep_6+86,  0, 0,  0,   0);
setMoveKey(  spep_6+96,  0, -100,  0,   0);

setMoveKey(  spep_6+86,  1, 100,  0,   0);
setMoveKey(  spep_6+96,  1, 550,  350,   0);

setEnvZoomEnable(spep_6+86,0);

setScaleKey( spep_6+96, 0, 1.5, 1.5);
setScaleKey( spep_6+96, 1, 1.5, 1.5);


entryFade( spep_6+95, 3, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setShake(spep_6,50, 10);
setShake(spep_6+50,50, 20);


shuchusen8 = entryEffectLife( spep_6+50, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+8, 10012, 52, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_6+8, ct, 32, 5);
setEffAlphaKey(spep_6+8, ct, 255);
setEffAlphaKey(spep_6+35, ct, 255);
setEffAlphaKey(spep_6+45, ct, 0);
setEffScaleKey(spep_6+8, ct, 0.0, 0.0);
setEffScaleKey(spep_6+12, ct, 1.3, 1.3);
setEffScaleKey(spep_6+35, ct, 1.3, 1.3);
setEffScaleKey(spep_6+45, ct, 6.0, 6.0);

--playSe( spep_6+26, SE_07);
--entryFade( spep_6+62, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setDisp( spep_6+98, 1, 1);
setDisp( spep_6+98, 0, 0);
setScaleKey( spep_6+98, 1, 1, 1);
setScaleKey( spep_6+98, 0, 1, 1);

spep_7=spep_6+103; --317

------------------------------------------------------
-- ピンボール
------------------------------------------------------

--entryFadeBg( spep_7, 0, 150, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--setDisp( spep_7-2, 1, 1);

setMoveKey(   spep_7,   1,  -350, -650,   -100);
setMoveKey(   spep_7+20,   1,  350, 200,   40); --1c
setMoveKey(   spep_7+40,   1,  -550, 450,   120); --2c
setMoveKey(   spep_7+50,   1,  550, -550,   -200); --3c
setMoveKey(   spep_7+65,   1,  -450, -50,   60); --4c
setMoveKey(   spep_7+85,   1,  300, 350,   128); --5c
setMoveKey(   spep_7+105, 1,  -550, -300,  -200);

--味方
setDisp( spep_7+95 , 0 , 1 );
changeAnime( spep_7+95, 0, 16);
setMoveKey(   spep_7+95,   0,  300, 350,   0); --5c
setMoveKey(   spep_7+105, 0,  -150, -50,  0);
setMoveKey(   spep_7+130, 0,  120, 90,  0);
--setMoveKey(   spep_7+135, 0,  30, 50,  20);

setScaleKey(  spep_7+95,  0,  0, 0);
setScaleKey(  spep_7+105,  0,  1.2, 1.2);
setScaleKey(  spep_7+132,  0,  1.2, 1.2);

syunkan1=entryEffect( spep_7+132, 700, 0x40+0x100,  0, 0,  10, 0); --瞬間移動
syunkan2=entryEffect( spep_7+132, 700, 0x40+0x100,  0, 0,  10, 0); --瞬間移動
setDisp( spep_7+135, 0, 0);
setEffScaleKey( spep_7+132, syunkan1, 0.4, 0.4);
setEffScaleKey( spep_7+132, syunkan2, 0.4, 0.4);

setRotateKey( spep_7+95 , 0 , 0);
setRotateKey( spep_7+135 , 0 , -20);
setRotateKey( spep_7+135 , 0 , 0);
setEffRotateKey( spep_7+130 , syunkan1 , -20);
setEffRotateKey( spep_7+130 , syunkan2 , -20);


sho1=entryEffect( spep_7+20, 908, 0x20, 1,  300,  0,  0); 
sho1a=entryEffect( spep_7+20, 908, 0x20, 1,  300,  0,  0); 
sho2=entryEffect( spep_7+40, 908, 0x20, 1,  300,  0,  0); 
sho2b=entryEffect( spep_7+40, 908, 0x20, 1,  300,  0,  0); 
sho3=entryEffect( spep_7+50, 908, 0x20, 1,  300,  0,  0); 
sho3c=entryEffect( spep_7+50, 908, 0x20, 1,  300,  0,  0); 
sho4=entryEffect( spep_7+65, 908, 0x20, 1,  300,  0,  0); 
sho4d=entryEffect( spep_7+65, 908, 0x20, 1,  300,  0,  0); 
sho5=entryEffect( spep_7+85, 908, 0x20, 1,  300,  0,  0); 
sho5e=entryEffect( spep_7+85, 908, 0x20, 1,  300,  0,  0); 
--sho6=entryEffect( spep_7+105, 908, 0x20, 1,  300,  0,  0); 

playSe( spep_7+20, 1025);
playSe( spep_7+40, 1025);
playSe( spep_7+48, 1025);
playSe( spep_7+62, 1025);
playSe( spep_7+81, 1025);
playSe( spep_7+105, 1018);
playSe( spep_7+132, 1034);

changeAnime( spep_7, 1, 106); 
changeAnime( spep_7+21, 1, 8);
changeAnime( spep_7+41, 1, 107);
changeAnime( spep_7+51, 1, 6);
changeAnime( spep_7+66, 1, 108);
changeAnime( spep_7+86, 1, 7);


setEffScaleKey( spep_7+20, sho1, 3, 3);
setEffScaleKey( spep_7+20, sho1a, 2, 2);
setEffScaleKey( spep_7+40, sho2, 2.5, 2.5);
setEffScaleKey( spep_7+40, sho2b, 2, 2);
setEffScaleKey( spep_7+51, sho3, 3, 3);
setEffScaleKey( spep_7+51, sho3c, 3, 3);
setEffScaleKey( spep_7+66, sho4, 1, 1);
setEffScaleKey( spep_7+66, sho4d, 1.5, 1.5);
setEffScaleKey( spep_7+86, sho5, 0.5, 0.5);
setEffScaleKey( spep_7+86, sho5e, 0.4, 0.4);

setEffRotateKey( spep_7+20,sho1a,-30);
setEffRotateKey( spep_7+40,sho2b,30);
setEffRotateKey( spep_7+51,sho3c,-50);
setEffRotateKey( spep_7+66,sho4d,-10);
setEffRotateKey( spep_7+86,sho5e,40);


setMoveKey(   spep_7+120, 1,  -550, -300,  -200);
setMoveKey(  spep_7+130,   1,    -120, -110,   -200); 
setMoveKey(  spep_7+145,   1,    -130, -120,   -200); 

setShakeChara( spep_7, 1, 150, 8);
setShake( spep_7,150, 25);


shuchusen9 = entryEffectLife( spep_7, 906, 150, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( spep_7+145, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setDisp( spep_7+150, 1, 0);
setScaleKey( spep_7+150,  1,  1, 1);
setRotateKey( spep_7+150 , 0 , 0);

spep_3=spep_7+145+15;--477

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

syunkan1=entryEffect( spep_3, 700, 0x40+0x100,  0, 0,  10, 0); --瞬間移動
setDisp( spep_3+10, 0, 1);
changeAnime( spep_3, 0, 30);                       -- 溜め!

playSe( spep_3, 1034);
playSe( spep_3+15, SE_03);

setMoveKey(  spep_3,    0,      0,  0,   0);
setMoveKey(  spep_3+35,    0,      0,  0,   0);

setScaleKey( spep_3,  0,  1.5, 1.5);
setScaleKey( spep_3+35,  0,  1.5, 1.5);

kame_hand = entryEffect( spep_3+10, SP_01, 0x40,  0,  300,  -60,  20);   -- 手のカメハメ波部
setEffScaleKey( spep_3+5, kame_hand, 0.5, 0.5);

entryFade( spep_3+30, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

aura = entryEffectLife(  spep_3+10,   351, 25, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( spep_3+10, aura, 2.3, 2.3);
setShakeChara( spep_3+10, 0, 25, 5);

entryFadeBg( spep_3, 0, 35, 0, 10, 10, 10, 200);       -- ベース暗め　背景

shuchusen10 = entryEffectLife( spep_3, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen10, 1.5, 1.5);

spep_1 = spep_3+35;--512

removeAllEffect (spep_3+35);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

setDisp( spep_1, 1, 1);
changeAnime( spep_1, 1, 118); 

setScaleKey( spep_1,    1,  2, 2);
setScaleKey( spep_1+85,    1,  2, 2);

setMoveKey(  spep_1,    1,      1000,  0,   0);
setMoveKey(  spep_1+64,    1,  1000,  0,   0);
setMoveKey(  spep_1+80,    1,   200,  0,   0);
setMoveKey(  spep_1+85,    1,   200,  0,   0);


changeAnime( spep_1, 0, 31); --260                                   -- かめはめ発射ポーズ
setMoveKey(  spep_1-1,    0,      0,  0,   0);
setMoveKey(  spep_1+10,    0,      0,  0,   0);
setMoveKey(  spep_1+20,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( spep_1, SP_02, 109, 0x40,  0,  300,  200,  30);   -- 伸びるかめはめ波
setEffMoveKey(   spep_1+34,   kamehame_beam, 180, 10,   0);--546
setEffMoveKey(   spep_1+42,   kamehame_beam, 150, 10,   0);--554
setEffMoveKey(   spep_1+44,   kamehame_beam, 90, 30,   0);--556

playSe( spep_1, SE_07);

--[[
spname = entryEffect( spep_1, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
]]--


-- 途中からカメハメハが伸びる
setMoveKey(  spep_1+40,    0,   -150,  0,   50);
setMoveKey(  spep_1+45,    0,   -600,  0,   80); --305

--entryFade( spep_1+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --


entryFadeBg( spep_1, 0, 85, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( spep_1, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_1+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_1, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1, sen2, 190);
setShakeChara( spep_1+45, 0, 54, 50);
setEffScaleKey(  spep_1, sen2, 1.3, 1.3);

shuchusen = entryEffectLife( spep_1, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_1+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_1+49, shuchusen, 2.0, 2.0);

aura = entryEffectLife(  spep_1,   351, 85, 0x40+0x80,  0,  1,  50,  -50); -- オーラ
setEffScaleKey(spep_1, aura, 3, 3);
setEffScaleKey(spep_1+85, aura, 2.5, 2.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_1+8, ct, 32, 5);
setEffAlphaKey( spep_1+8, ct, 255);
setEffAlphaKey( spep_1+10, ct, 255);
setEffAlphaKey( spep_1+40, ct, 0);
setEffScaleKey( spep_1+8, ct, 0.0, 0.0);
setEffScaleKey( spep_1+12, ct, 1.3, 1.3);
setEffScaleKey( spep_1+32, ct, 1.3, 1.3);
setEffScaleKey( spep_1+40, ct, 6.0, 6.0);
playSe( spep_1+40, SE_07);
entryFade( spep_1+80, 2,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_9 = spep_1+85

removeAllEffect (spep_1+85);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( spep_9, 1, 1);
setMoveKey(  spep_9,    1,  100,  0,   0);
setScaleKey( spep_9,    1,  1.0, 1.0);
setMoveKey(  spep_9+1,    1,    0,   0,   128);--470
setScaleKey( spep_9+1,    1,  0.1, 0.1);

changeAnime( spep_9+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+9, SE_10);

setMoveKey(  spep_9+9,   1,    0,   0,   128);--478
setMoveKey(  spep_9+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_9+17, 1, 0);  -- ダメージ振動等
setShake( spep_9+8,6,15);
setShake( spep_9+14,15,10);

setRotateKey( spep_9+1,  1,  30 );
setRotateKey( spep_9+3,  1,  80 );
setRotateKey( spep_9+5,  1, 120 );
setRotateKey( spep_9+7,  1, 160 );
setRotateKey( spep_9+9,  1, 200 );--478
setRotateKey( spep_9+11,  1, 260 );
setRotateKey( spep_9+13,  1, 320 );
setRotateKey( spep_9+15,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_9+16, ct, 30, 10);
setEffRotateKey( spep_9+16, ct, -40);
setEffScaleKey( spep_9+16, ct, 4.0, 4.0);
setEffScaleKey( spep_9+17, ct, 2.0, 2.0);
setEffScaleKey( spep_9+18, ct, 2.6, 2.6);
setEffScaleKey( spep_9+19, ct, 4.0, 4.0);
setEffScaleKey( spep_9+20, ct, 2.6, 2.6);
setEffScaleKey( spep_9+21, ct, 3.8, 3.8);
setEffScaleKey( spep_9+111, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+16, ct, 255);
setEffAlphaKey( spep_9+106, ct, 255);
setEffAlphaKey( spep_9+116, ct, 0);

playSe(  spep_9+15, SE_11);
shuchusen = entryEffectLife( spep_9+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_9+17);

entryFade( spep_9+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+111);
else

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 17);                       -- 溜め!
setScaleKey(   0,   0, 4, 4);
setScaleKey(   15,   0, 1.8, 1.8);

setMoveKey(   0,   0,  100, -400,   0);
setMoveKey(   15,   0,  0, 0,   20);
setMoveKey(  117,   0,  0, 0,   20);

playSe( 0, SE_03); --かめはめ波
playSe( 25, SE_03); 
playSe( 50, SE_03);
playSe( 75, SE_03); 
playSe( 100, SE_03);  

--[[
speff1 = entryEffect(  30,   1504,  0, -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

setEffAlphaKey( 30, speff1, 255);
]]--

playSe( 20, SE_04);

entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

--aura = entryEffectLife(  0,   321, 117, 0x40+0x80,  0,  1,  0, 0); -- オーラ
--setEffMoveKey(   0,   aura,    80, 0,   0);
--setEffMoveKey(   15,   aura,    0, -220,   0);
--setEffMoveKey(  117,   aura,   0, -220,  0);
--setEffScaleKey( 0, aura, 3, 3);
--setEffScaleKey( 15, aura, 1.5, 1.5);
--setEffScaleKey( 40, aura, 1, 1);
--setEffScaleKey( 117, aura, 2, 2);

setShakeChara( 0, 0, 117, 8);
setShake( 0, 117, 15);

-- 書き文字エントリー

shuchusen5 = entryEffectLife( 0, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 117, shuchusen5, 1.0, 1.0);


entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 124;
setScaleKey(  spep_2,  0,  1.8,  1.8);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_2-1,   0, 1.5, 1.5);
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
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_2+64, SE_06);

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --214

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 2.0, 2.0);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.5, 1.5);
setMoveKey(  spep_6,  1, 1700,  0,   0);

--[[
Daura1 = entryEffectLife( spep_6, 321, 47, 0x40,  0, 1,  170,  0);   -- ドッカン用横向きオーラ
setEffScaleKey( spep_6, Daura1, 1.8, 1.8);
setEffRotateKey( spep_6,Daura1,-90);
]]--

--P移動
setMoveKey(  spep_6-1,    0,      0,  0,   0);
setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+15,    0,   0,  0,   0);

setMoveKey(  spep_6+35,    0,   -150,  0,   0);

playSe( spep_6, SE_07);


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_6, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_6, 0, 100, 10);
setShakeChara( spep_6, 1, 100, 10);

playSe( spep_6+38, 1018);

--setEffAlphaKey(spep_6+38,spname, 1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 260; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,  0, -100,  0,   0);
setMoveKey(  SP_dodge+9,  0, -1100,  0,   0);
setScaleKey( SP_dodge+9, 0, 2, 2);

endPhase(SP_dodge+10);
do return end
else end


playSe( spep_6+45, SE_06);

setMoveKey(  spep_6+45,  0, 700,  0,   0);
setMoveKey(  spep_6+48,  0, 700,  0,   0);
setMoveKey(  spep_6+49,  0, -1700,  0,   0);

--[[
Daura2 = entryEffectLife( spep_6+50, 321, 50, 0x40,  0, 1,  200,  0);   -- ドッカン用横向きオーラ
setEffScaleKey( spep_6+50, Daura2, 1.3, 1.3);
setEffRotateKey( spep_6+50,Daura2,-90);
]]--

entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setEnvZoomEnable(spep_6+50,1);
setScaleKey( spep_6+49, 0, 2.0, 2.0);
setScaleKey( spep_6+50, 0, 1.5, 1.5);

--右大パンチ

setMoveKey(  spep_6+50,  0, -1700,  0,   0);
setMoveKey(  spep_6+51,  0, -700,  0,   0);
setMoveKey(  spep_6+61,  0, -100,  0,   0);

setMoveKey(  spep_6+50,  1, 1700,  0,   0);
setMoveKey(  spep_6+51,  1, 550,  0,   0);
setMoveKey(  spep_6+61,  1, 20,  0,   0);

changeAnime( spep_6+60,   0, 11 );--パンチ3
playSe( spep_6+61,1009);--SE
entryEffect(  spep_6+60,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+61, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+61,   1, 108 ); --敵モーション


--追い討ち移動

setMoveKey(  spep_6+66,  0, -550,  0,   0);
setMoveKey(  spep_6+86,  0, 0,  0,   0);

setMoveKey(  spep_6+86,  1, 100,  0,   0);

changeAnime( spep_6+66, 0, 3); 

--右大キック吹き飛ばし

changeAnime( spep_6+85,   0, 14 );--キック3
playSe( spep_6+86,1010);--SE
entryEffect(  spep_6+85,   6,   0,  1,   0,  0,  0);
setDamage( spep_6+86, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+86,   1, 106 ); --敵モーション

setMoveKey(  spep_6+86,  0, 0,  0,   0);
setMoveKey(  spep_6+96,  0, -100,  0,   0);

setMoveKey(  spep_6+86,  1, 100,  0,   0);
setMoveKey(  spep_6+96,  1, 550,  350,   0);

setEnvZoomEnable(spep_6+86,0);

setScaleKey( spep_6+96, 0, 1.5, 1.5);
setScaleKey( spep_6+96, 1, 1.5, 1.5);


entryFade( spep_6+95, 3, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setShake(spep_6,50, 10);
setShake(spep_6+50,50, 20);


shuchusen8 = entryEffectLife( spep_6+50, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+8, 10012, 52, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_6+8, ct, 32, 5);
setEffAlphaKey(spep_6+8, ct, 255);
setEffAlphaKey(spep_6+35, ct, 255);
setEffAlphaKey(spep_6+45, ct, 0);
setEffScaleKey(spep_6+8, ct, 0.0, 0.0);
setEffScaleKey(spep_6+12, ct, 1.3, 1.3);
setEffScaleKey(spep_6+35, ct, 1.3, 1.3);
setEffScaleKey(spep_6+45, ct, 6.0, 6.0);

--playSe( spep_6+26, SE_07);
--entryFade( spep_6+62, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setDisp( spep_6+98, 1, 1);
setDisp( spep_6+98, 0, 0);
setScaleKey( spep_6+98, 1, 1, 1);
setScaleKey( spep_6+98, 0, 1, 1);

spep_7=spep_6+103; --317

------------------------------------------------------
-- ピンボール
------------------------------------------------------

--entryFadeBg( spep_7, 0, 150, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--setDisp( spep_7-2, 1, 1);

setMoveKey(   spep_7,   1,  -350, -650,   -100);
setMoveKey(   spep_7+20,   1,  350, 200,   40); --1c
setMoveKey(   spep_7+40,   1,  -550, 450,   120); --2c
setMoveKey(   spep_7+50,   1,  550, -550,   -200); --3c
setMoveKey(   spep_7+65,   1,  -450, -50,   60); --4c
setMoveKey(   spep_7+85,   1,  300, 350,   128); --5c
setMoveKey(   spep_7+105, 1,  -550, -300,  -200);

--味方
setDisp( spep_7+95 , 0 , 1 );
changeAnime( spep_7+95, 0, 16);
setMoveKey(   spep_7+95,   0,  300, 350,   0); --5c
setMoveKey(   spep_7+105, 0,  -150, -50,  0);
setMoveKey(   spep_7+130, 0,  120, 90,  0);
--setMoveKey(   spep_7+135, 0,  30, 50,  20);

setScaleKey(  spep_7+95,  0,  0, 0);
setScaleKey(  spep_7+105,  0,  1.2, 1.2);
setScaleKey(  spep_7+132,  0,  1.2, 1.2);

syunkan1=entryEffect( spep_7+132, 700, 0x40+0x100,  0, 0,  10, 0); --瞬間移動
syunkan2=entryEffect( spep_7+132, 700, 0x40+0x100,  0, 0,  10, 0); --瞬間移動
setDisp( spep_7+135, 0, 0);
setEffScaleKey( spep_7+132, syunkan1, 0.4, 0.4);
setEffScaleKey( spep_7+132, syunkan2, 0.4, 0.4);

setRotateKey( spep_7+95 , 0 , 0);
setRotateKey( spep_7+135 , 0 , -20);
setRotateKey( spep_7+135 , 0 , 0);
setEffRotateKey( spep_7+130 , syunkan1 , -20);
setEffRotateKey( spep_7+130 , syunkan2 , -20);


sho1=entryEffect( spep_7+20, 908, 0x20, 1,  300,  0,  0); 
sho1a=entryEffect( spep_7+20, 908, 0x20, 1,  300,  0,  0); 
sho2=entryEffect( spep_7+40, 908, 0x20, 1,  300,  0,  0); 
sho2b=entryEffect( spep_7+40, 908, 0x20, 1,  300,  0,  0); 
sho3=entryEffect( spep_7+50, 908, 0x20, 1,  300,  0,  0); 
sho3c=entryEffect( spep_7+50, 908, 0x20, 1,  300,  0,  0); 
sho4=entryEffect( spep_7+65, 908, 0x20, 1,  300,  0,  0); 
sho4d=entryEffect( spep_7+65, 908, 0x20, 1,  300,  0,  0); 
sho5=entryEffect( spep_7+85, 908, 0x20, 1,  300,  0,  0); 
sho5e=entryEffect( spep_7+85, 908, 0x20, 1,  300,  0,  0); 
--sho6=entryEffect( spep_7+105, 908, 0x20, 1,  300,  0,  0); 

playSe( spep_7+20, 1025);
playSe( spep_7+40, 1025);
playSe( spep_7+48, 1025);
playSe( spep_7+62, 1025);
playSe( spep_7+81, 1025);
playSe( spep_7+105, 1018);
playSe( spep_7+132, 1034);

changeAnime( spep_7, 1, 106); 
changeAnime( spep_7+21, 1, 8);
changeAnime( spep_7+41, 1, 107);
changeAnime( spep_7+51, 1, 6);
changeAnime( spep_7+66, 1, 108);
changeAnime( spep_7+86, 1, 7);


setEffScaleKey( spep_7+20, sho1, 3, 3);
setEffScaleKey( spep_7+20, sho1a, 2, 2);
setEffScaleKey( spep_7+40, sho2, 2.5, 2.5);
setEffScaleKey( spep_7+40, sho2b, 2, 2);
setEffScaleKey( spep_7+51, sho3, 3, 3);
setEffScaleKey( spep_7+51, sho3c, 3, 3);
setEffScaleKey( spep_7+66, sho4, 1, 1);
setEffScaleKey( spep_7+66, sho4d, 1.5, 1.5);
setEffScaleKey( spep_7+86, sho5, 0.5, 0.5);
setEffScaleKey( spep_7+86, sho5e, 0.4, 0.4);

setEffRotateKey( spep_7+20,sho1a,-30);
setEffRotateKey( spep_7+40,sho2b,30);
setEffRotateKey( spep_7+51,sho3c,-50);
setEffRotateKey( spep_7+66,sho4d,-10);
setEffRotateKey( spep_7+86,sho5e,40);


setMoveKey(   spep_7+120, 1,  -550, -300,  -200);
setMoveKey(  spep_7+130,   1,    -120, -110,   -200); 
setMoveKey(  spep_7+145,   1,    -130, -120,   -200); 

setShakeChara( spep_7, 1, 150, 8);
setShake( spep_7,150, 25);


shuchusen9 = entryEffectLife( spep_7, 906, 150, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( spep_7+145, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setDisp( spep_7+150, 1, 0);
setScaleKey( spep_7+150,  1,  1, 1);
setRotateKey( spep_7+150 , 0 , 0);

spep_3=spep_7+145+15;--477

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
syunkan1=entryEffect( spep_3, 700, 0x40+0x100,  0, 0,  10, 0); --瞬間移動
setDisp( spep_3+10, 0, 1);
changeAnime( spep_3, 0, 30);                       -- 溜め!

playSe( spep_3, 1034);
playSe( spep_3+15, SE_03);

setMoveKey(  spep_3,    0,      0,  0,   0);
setMoveKey(  spep_3+35,    0,      0,  0,   0);

setScaleKey( spep_3,  0,  1.5, 1.5);
setScaleKey( spep_3+35,  0,  1.5, 1.5);

entryFade( spep_3+30, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

aura = entryEffectLife(  spep_3+10,   351, 25, 0x40+0x80,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( spep_3+10, aura, 2.3, 2.3);
setShakeChara( spep_3+10, 0, 25, 5);

kame_hand = entryEffect( spep_3+10, SP_01, 0x40+0x80,  0,  300,  -43,  20);   -- 手のカメハメ波部
setEffScaleKey( spep_3+5, kame_hand, 0.5, 0.5);

entryFadeBg( spep_3, 0, 35, 0, 10, 10, 10, 200);       -- ベース暗め　背景

shuchusen10 = entryEffectLife( spep_3, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen10, 1.5, 1.5);

spep_1 = spep_3+35;--512

removeAllEffect (spep_3+35);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

setDisp( spep_1, 1, 1);
changeAnime( spep_1, 1, 118); 

setScaleKey( spep_1,    1,  2, 2);
setScaleKey( spep_1+85,    1,  2, 2);

setMoveKey(  spep_1,    1,      1000,  0,   0);
setMoveKey(  spep_1+64,    1,  1000,  0,   0);
setMoveKey(  spep_1+80,    1,   200,  0,   0);
setMoveKey(  spep_1+85,    1,   200,  0,   0);


changeAnime( spep_1, 0, 31); --260                                   -- かめはめ発射ポーズ
setMoveKey(  spep_1-1,    0,      0,  0,   0);
setMoveKey(  spep_1+10,    0,      0,  0,   0);
setMoveKey(  spep_1+20,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( spep_1, SP_02, 109, 0x40,  0,  300,  200,  40);   -- 伸びるかめはめ波

setEffMoveKey(   spep_1+18,   kamehame_beam, 200, 40,   0);--530
setEffMoveKey(   spep_1+34,   kamehame_beam, 150, 30,   0);--546
setEffMoveKey(   spep_1+34,   kamehame_beam, 150, 30,   0);--546
setEffMoveKey(   spep_1+42,   kamehame_beam, 100, 30,   0);--554
setEffMoveKey(   spep_1+44,   kamehame_beam, 60, 50,   0);--556

playSe( spep_1, SE_07);


--[[
spname = entryEffect( spep_1, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
]]--


-- 途中からカメハメハが伸びる
setMoveKey(  spep_1+40,    0,   -150,  0,   50);
setMoveKey(  spep_1+45,    0,   -600,  0,   80); --305

--entryFade( spep_1+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --


entryFadeBg( spep_1, 0, 85, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( spep_1, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_1+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_1, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1, sen2, 190);
setShakeChara( spep_1+45, 0, 54, 50);
setEffScaleKey(  spep_1, sen2, 1.3, 1.3);

shuchusen = entryEffectLife( spep_1, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_1+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_1+49, shuchusen, 2.0, 2.0);

aura = entryEffectLife(  spep_1,   351, 85, 0x40+0x80,  0,  1,  50,  -50); -- オーラ
setEffScaleKey(spep_1, aura, 3, 3);
setEffScaleKey(spep_1+85, aura, 2.5, 2.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_1+8, ct, 32, 5);
setEffAlphaKey( spep_1+8, ct, 255);
setEffAlphaKey( spep_1+10, ct, 255);
setEffAlphaKey( spep_1+40, ct, 0);
setEffScaleKey( spep_1+8, ct, 0.0, 0.0);
setEffScaleKey( spep_1+12, ct, 1.3, 1.3);
setEffScaleKey( spep_1+32, ct, 1.3, 1.3);
setEffScaleKey( spep_1+40, ct, 6.0, 6.0);
playSe( spep_1+40, SE_07);
entryFade( spep_1+80, 2,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_9 = spep_1+85

removeAllEffect (spep_1+85);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( spep_9, 1, 1);
setMoveKey(  spep_9,    1,  100,  0,   0);
setScaleKey( spep_9,    1,  1.0, 1.0);
setMoveKey(  spep_9+1,    1,    0,   0,   128);--470
setScaleKey( spep_9+1,    1,  0.1, 0.1);

changeAnime( spep_9+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+9, SE_10);

setMoveKey(  spep_9+9,   1,    0,   0,   128);--478
setMoveKey(  spep_9+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_9+17, 1, 0);  -- ダメージ振動等
setShake( spep_9+8,6,15);
setShake( spep_9+14,15,10);

setRotateKey( spep_9+1,  1,  30 );
setRotateKey( spep_9+3,  1,  80 );
setRotateKey( spep_9+5,  1, 120 );
setRotateKey( spep_9+7,  1, 160 );
setRotateKey( spep_9+9,  1, 200 );--478
setRotateKey( spep_9+11,  1, 260 );
setRotateKey( spep_9+13,  1, 320 );
setRotateKey( spep_9+15,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_9+16, ct, 30, 10);
setEffRotateKey( spep_9+16, ct, -40);
setEffScaleKey( spep_9+16, ct, 4.0, 4.0);
setEffScaleKey( spep_9+17, ct, 2.0, 2.0);
setEffScaleKey( spep_9+18, ct, 2.6, 2.6);
setEffScaleKey( spep_9+19, ct, 4.0, 4.0);
setEffScaleKey( spep_9+20, ct, 2.6, 2.6);
setEffScaleKey( spep_9+21, ct, 3.8, 3.8);
setEffScaleKey( spep_9+111, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+16, ct, 255);
setEffAlphaKey( spep_9+106, ct, 255);
setEffAlphaKey( spep_9+116, ct, 0);

playSe(  spep_9+15, SE_11);
shuchusen = entryEffectLife( spep_9+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_9+17);

entryFade( spep_9+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+111);

end

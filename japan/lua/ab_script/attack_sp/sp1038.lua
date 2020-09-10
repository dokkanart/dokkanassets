

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

SP_01 = 150071;
SP_02 = 150072;
SP_03 = 150073;
SP_04 = 150074;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 気溜め(100F)
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


playSe( 20, SE_04);

--kame_hand = entryEffect( 0, SP_01, 0x100, -1, 0,  0, 0);   -- 手のカメハメ波部 50end
--setEffMoveKey(   0,  kame_hand,  150,  -200,   0);
--setEffMoveKey(   15,  kame_hand, 30,  90,   0);
--setEffScaleKey( 0, kame_hand, 1, 1);
--setEffScaleKey( 15, kame_hand, 0.5, 0.5);

entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 117, 0x40+0x100,  0,  1,  0, 0); -- オーラ
--setEffMoveKey(   0,   aura,    80, 0,   0);
--setEffMoveKey(   15,   aura,    0, -220,   0);
--setEffMoveKey(  117,   aura,   0, -220,  0);
setEffScaleKey( 0, aura, 3, 3);
setEffScaleKey( 15, aura, 1.5, 1.5);
--setEffScaleKey( 40, aura, 1, 1);
setEffScaleKey( 117, aura, 2, 2);
setEffAlphaKey(0, aura, 255);


speff1 = entryEffect(  30,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  30,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え
setEffAlphaKey(30, speff1, 255);
setEffAlphaKey(30, speff2, 255);

setShakeChara( 0, 0, 117, 8);
setShake( 0, 117, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

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

spep_6=spep_2+85+5; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 2.0, 2.0);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.5, 1.5);
setMoveKey(  spep_6,  1, 1700,  0,   0);

Daura1 = entryEffectLife( spep_6, 311, 47, 0x40,  0, 1,  170,  0);   -- ドッカン用横向きオーラ
setEffScaleKey( spep_6, Daura1, 1.8, 1.8);
setEffRotateKey( spep_6,Daura1,-90);

--P移動
setMoveKey(  spep_6-1,    0,      0,  0,   0);
setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+15,    0,   0,  0,   0);

setMoveKey(  spep_6+35,    0,   -150,  0,   0);

playSe( spep_6+45, SE_06);

setMoveKey(  spep_6+45,  0, 700,  0,   0);
setMoveKey(  spep_6+48,  0, 700,  0,   0);
setMoveKey(  spep_6+49,  0, -1700,  0,   0);

Daura2 = entryEffectLife( spep_6+50, 311, 50, 0x40+0x80,  0, 1,  200,  0);   -- ドッカン用横向きオーラ
setEffScaleKey( spep_6+50, Daura2, 1.3, 1.3);
setEffRotateKey( spep_6+50,Daura2,-90);

entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey( spep_6+49, 0, 2.0, 2.0);
setScaleKey( spep_6+50, 0, 1.5, 1.5);

--右大パンチ

setMoveKey(  spep_6+50,  0, -1700,  0,   0);
setMoveKey(  spep_6+51,  0, -700,  0,   0);

setMoveKey(  spep_6+50,  1, 1700,  0,   0);
setMoveKey(  spep_6+51,  1, 550,  0,   0);

playSe( spep_6, SE_07);


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_6, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_6, 0, 100, 10);
setShakeChara( spep_6, 1, 100, 10);
setShake(spep_6,50, 10);
setShake(spep_6+50,50, 20);


shuchusen8 = entryEffectLife( spep_6+50, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);
--setEffScaleKey( 60, shuchusen8, 1.0, 1.0);
--setEffScaleKey( 117, shuchusen8, 1.0, 1.0);

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

playSe( spep_6+38, 1018);

setEffAlphaKey(spep_6+38,spname, 1);
--playSe( spep_6+26, SE_07);
--entryFade( spep_6+62, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 270; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(  SP_dodge-1,  0, -300,  0,   0);
setMoveKey(  SP_dodge-1,  1, 200,  0,   0);
speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+9,  0, -1000,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

setEnvZoomEnable(spep_6+50,1);

setMoveKey(  spep_6+61,  0, -100,  0,   0);

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


--setDisp( spep_6+98, 1, 1);
setDisp( spep_6+98, 0, 0);
setScaleKey( spep_6+98, 1, 1, 1);
setScaleKey( spep_6+98, 0, 1, 1);

spep_7=spep_6+103; --211 260


------------------------------------------------------
-- ピンボール
------------------------------------------------------

--entryFadeBg( spep_7, 0, 150, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--setDisp( spep_7-2, 1, 1);

setMoveKey(   spep_7,   1,  -550, -150,   -100);
setMoveKey(   spep_7+20,   1,  -180, 300,   90); --1c
setMoveKey(   spep_7+40,   1,  550, -450,   -200); --2c
setMoveKey(   spep_7+50,   1,  -550, -50,   -100); --3c
setMoveKey(   spep_7+65,   1,  -150, 350,   60); --4c
setMoveKey(   spep_7+85,   1,  300, 100,   128); --5c
setMoveKey(   spep_7+105, 1,  -550, -300,  -200);

--味方
setDrawFront( spep_7+95, 0, 0);
setDisp( spep_7+95 , 0 , 1 );
changeAnime( spep_7+95, 0, 16);
setMoveKey(   spep_7+95,   0,  300, 100,   128); --5c
setMoveKey(   spep_7+105, 0,  -150, -50,  -200);
setMoveKey(   spep_7+130, 0,  120, 90,  20);
setMoveKey(   spep_7+135, 0,  120, 90,  20);

syunkan1=entryEffect( spep_7+132, 700, 0x40+0x100,  0, 0,  10, 0); --瞬間移動
setDisp( spep_7+135, 0, 0);
syunkan2=entryEffect( spep_7+132, 700, 0x40+0x100,  0, 0,  10, 0); --瞬間移動
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
changeAnime( spep_7+21, 1, 107);
changeAnime( spep_7+41, 1, 8);
changeAnime( spep_7+51, 1, 106);
changeAnime( spep_7+66, 1, 108);
changeAnime( spep_7+86, 1, 7);


setEffScaleKey( spep_7+20, sho1, 0.7, 0.7);
setEffScaleKey( spep_7+20, sho1a, 1, 1);
setEffScaleKey( spep_7+40, sho2, 4, 4);
setEffScaleKey( spep_7+40, sho2b, 3, 3);
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

spep_3=spep_7+145+15;

setDisp( spep_7+150, 1, 0);
--setDisp( spep_7+150, 0, 1);
setScaleKey( spep_7+150,  1,  1, 1);
setScaleKey( spep_7+150,  0,  1, 1);
setRotateKey( spep_7+150 , 0 , 0);

spep_8 = spep_7+145+15;

------------------------------------------------------
-- かめはめ波溜め！
------------------------------------------------------
changeAnime( spep_8, 0, 30); --かめはめ波溜め
setMoveKey(  spep_8,  0, 0,  0,   0);
setDisp( spep_8+5, 0, 1);
syunkan2=entryEffect( spep_8, 700, 0,  -1, 0,  0, 0); --瞬間移動
setEffScaleKey( spep_8, syunkan2, 1.5, 1.5);

setScaleKey(  spep_8+5,  0,  1.5, 1.5);
setMoveKey(  spep_8+50,  0, 0,  0,   -50);

setShakeChara( spep_8+5, 0, 30, 7);
setShakeChara( spep_8+20, 0, 20, 15);
setShake( spep_8+20,60, 20);

aura = entryEffectLife(  spep_8+20,   311, 73, 0x100,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( spep_8+20, aura, 1.9, 1.9);
setEffScaleKey( spep_8+80, aura, 2.3, 2.3);

kame_hand = entryEffectLife( spep_8+20, SP_01, 60, 0x100, 0, 300,  -65, -90);   -- 手のカメハメ波部 50end
playSe( spep_8+20, 1035);
setEffScaleKey( spep_8+20, kame_hand, 1, 1);
setEffScaleKey( spep_8+80, kame_hand, 1.5, 1.5);


entryFade( spep_8+80, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --


entryFadeBg( spep_8, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen9 = entryEffectLife( spep_8+20, 906, 65, 0x00,  -1, 0,  0,  0);   -- 集中線


setMoveKey(  spep_8+85,  0, 0,  0, -50);
setMoveKey(  spep_8+86,  0, 0,  0, 0);
setScaleKey(  spep_8+85,  0,  1.5, 1.5);
setScaleKey(  spep_8+86,  0,  1, 1);

spep_3 = spep_8+87;

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 108);   

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  0.5, 0.5);
setScaleKey(  spep_3,  1,  1.4, 1.4);

setEnvZoomEnable(spep_3,1);

setMoveKey(  spep_3-1,    0,      -150,  0,   0);
setMoveKey(  spep_3+90,    0,     -150,  0,   0);

setMoveKey(  spep_3-1,    1,  150,  0,   0);
setMoveKey(  spep_3+90,    1,  150,  0,   0);

setEnvZoomEnable(spep_3+50,0);

--敵吹っ飛び

setMoveKey(  spep_3+115,    0,     -220,  0,   0);
setMoveKey(  spep_3+115,    1,     1100,  0,   0);

sen2 = entryEffectLife( spep_3, 920, 115, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_3, sen2, -20);
--setEffScaleKey( spep_3, sen2, 1.5, 1.5);

setShakeChara( spep_3, 0, 90, 20);
setShakeChara( spep_3, 1, 40, 20);
setShakeChara( spep_3+40, 1, 50, 30);

setShake( spep_3,115, 30);

setScaleKey(  spep_3+115,  0,  0.4, 0.4);
setScaleKey(  spep_3+115,  1,  1, 1);


kamehame_beam_st = entryEffectLife( spep_3, SP_02, 115, 0x40+0x100,  0,  300,  0,  0);   -- 拳オーラ

oozaru_beam_st = entryEffect( spep_3, SP_03, 0x40+0x80,  0,  1,  130,  75);   -- 大猿
setEffScaleKey(spep_3, oozaru_beam_st, 1.1, 1.1);
setEffAlphaKey(spep_3, oozaru_beam_st, 0);
setEffAlphaKey(spep_3+28, oozaru_beam_st, 0);
setEffAlphaKey(spep_3+29, oozaru_beam_st, 255);

mawari_beam_st = entryEffect( spep_3, SP_04, 0x40+0x100,  0,  300,  0,  0);   -- 拳オーラ周り

setEffScaleKey(spep_3, mawari_beam_st, 1.2, 1.2);

--kamehame_beam = entryEffectLife( spep_3, SP_02, 58, 0x40+0x100,  0,  300,  0,  0);   -- 伸びるかめはめ波

setEffAlphaKey(spep_3, kamehame_beam_st, 255);
setEffAlphaKey(spep_3+90, kamehame_beam_st, 255);
setEffAlphaKey(spep_3+115, kamehame_beam_st, 0);

playSe( spep_3, SE_07);


-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 115, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

shuchusen = entryEffectLife( spep_3-1, 906, 115, 0x80,  -1, 0,  0,  0);   -- 集中線
--setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

--entryFlash( (spep_3+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_3, 10021, 90, 0, -1, 0, 130, 250); -- バゴォッ
setEffShake(spep_3, ct, 32, 5);
setEffAlphaKey(spep_3, ct, 255);
setEffAlphaKey(spep_3+80, ct, 255);
setEffAlphaKey(spep_3+90, ct, 0);
setEffScaleKey(spep_3, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.5, 1.5);
setEffScaleKey(spep_3+80, ct, 1.5, 1.5);
setEffScaleKey(spep_3+90, ct, 6.0, 6.0);
playSe( spep_3+90, SE_07);

entryFade( spep_3+110, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey(  spep_3+115,  0,  0.5, 0.5);
setScaleKey(  spep_3+115,  1,  1.2, 1.2);

--setScaleKey(  spep_3+127,  1, 1, 1);

spep_5=spep_3+118 --311 370

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5-1, 1, 1);
setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1, 1);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
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

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

--entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+100);

else

------------------------------------------------------
-- 気溜め(100F)
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

--speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 20, SE_04);

--kame_hand = entryEffect( 0, SP_01, 0x100, -1, 0,  0, 0);   -- 手のカメハメ波部 50end
--setEffMoveKey(   0,  kame_hand,  150,  -200,   0);
--setEffMoveKey(   15,  kame_hand, 30,  90,   0);
--setEffScaleKey( 0, kame_hand, 1, 1);
--setEffScaleKey( 15, kame_hand, 0.5, 0.5);

entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 117, 0x40+0x100,  0,  1,  0, 0); -- オーラ
--setEffMoveKey(   0,   aura,    80, 0,   0);
--setEffMoveKey(   15,   aura,    0, -220,   0);
--setEffMoveKey(  117,   aura,   0, -220,  0);
setEffScaleKey( 0, aura, 3, 3);
setEffScaleKey( 15, aura, 1.5, 1.5);
--setEffScaleKey( 40, aura, 1, 1);
setEffScaleKey( 117, aura, 2, 2);
setEffAlphaKey(0, aura, 255);


setShakeChara( 0, 0, 117, 8);
setShake( 0, 117, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

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

spep_6=spep_2+85+5; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 2.0, 2.0);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.5, 1.5);
setMoveKey(  spep_6,  1, 1700,  0,   0);

Daura1 = entryEffectLife( spep_6, 311, 47, 0x40,  0, 1,  170,  0);   -- ドッカン用横向きオーラ
setEffScaleKey( spep_6, Daura1, 1.8, 1.8);
setEffRotateKey( spep_6,Daura1,-90);

--P移動
setMoveKey(  spep_6-1,    0,      0,  0,   0);
setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+15,    0,   0,  0,   0);

setMoveKey(  spep_6+35,    0,   -150,  0,   0);

playSe( spep_6+45, SE_06);

setMoveKey(  spep_6+45,  0, 700,  0,   0);
setMoveKey(  spep_6+48,  0, 700,  0,   0);
setMoveKey(  spep_6+49,  0, -1700,  0,   0);

Daura2 = entryEffectLife( spep_6+50, 311, 50, 0x40+0x80,  0, 1,  200,  0);   -- ドッカン用横向きオーラ
setEffScaleKey( spep_6+50, Daura2, 1.3, 1.3);
setEffRotateKey( spep_6+50,Daura2,-90);

entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey( spep_6+49, 0, 2.0, 2.0);
setScaleKey( spep_6+50, 0, 1.5, 1.5);

--右大パンチ

setMoveKey(  spep_6+50,  0, -1700,  0,   0);
setMoveKey(  spep_6+51,  0, -700,  0,   0);
setMoveKey(  spep_6+61,  0, -100,  0,   0);

setMoveKey(  spep_6+50,  1, 1700,  0,   0);
setMoveKey(  spep_6+51,  1, 550,  0,   0);

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

playSe( spep_6+38, 1018);

setEffAlphaKey(spep_6+38,spname, 1);

playSe( spep_6, SE_07);


-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_6, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_6, 0, 100, 10);
setShakeChara( spep_6, 1, 100, 10);
setShake(spep_6,50, 10);
setShake(spep_6+50,50, 20);


shuchusen8 = entryEffectLife( spep_6+50, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 270; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

setMoveKey(  SP_dodge-1,  0, -300,  0,   0);
setMoveKey(  SP_dodge-1,  1, 200,  0,   0);
speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+9,  0, -1000,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

setEnvZoomEnable(spep_6+50,1);

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


--setDisp( spep_6+98, 1, 1);
setDisp( spep_6+98, 0, 0);
setScaleKey( spep_6+98, 1, 1, 1);
setScaleKey( spep_6+98, 0, 1, 1);

spep_7=spep_6+103; --211 260


------------------------------------------------------
-- ピンボール
------------------------------------------------------

--entryFadeBg( spep_7, 0, 150, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--setDisp( spep_7-2, 1, 1);

setMoveKey(   spep_7,   1,  -550, -150,   -100);
setMoveKey(   spep_7+20,   1,  -180, 300,   90); --1c
setMoveKey(   spep_7+40,   1,  550, -450,   -200); --2c
setMoveKey(   spep_7+50,   1,  -550, -50,   -100); --3c
setMoveKey(   spep_7+65,   1,  -150, 350,   60); --4c
setMoveKey(   spep_7+85,   1,  300, 100,   128); --5c
setMoveKey(   spep_7+105, 1,  -550, -300,  -200);

--味方
setDrawFront( spep_7+95, 0, 0);
setDisp( spep_7+95 , 0 , 1 );
changeAnime( spep_7+95, 0, 16);
setMoveKey(   spep_7+95,   0,  300, 100,   128); --5c
setMoveKey(   spep_7+105, 0,  -150, -50,  -200);
setMoveKey(   spep_7+130, 0,  120, 90,  20);
setMoveKey(   spep_7+135, 0,  120, 90,  20);

syunkan1=entryEffect( spep_7+132, 700, 0x40+0x100,  0, 0,  10, 0); --瞬間移動
setDisp( spep_7+135, 0, 0);
syunkan2=entryEffect( spep_7+132, 700, 0x40+0x100,  0, 0,  10, 0); --瞬間移動
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
changeAnime( spep_7+21, 1, 107);
changeAnime( spep_7+41, 1, 8);
changeAnime( spep_7+51, 1, 106);
changeAnime( spep_7+66, 1, 108);
changeAnime( spep_7+86, 1, 7);


setEffScaleKey( spep_7+20, sho1, 0.7, 0.7);
setEffScaleKey( spep_7+20, sho1a, 1, 1);
setEffScaleKey( spep_7+40, sho2, 4, 4);
setEffScaleKey( spep_7+40, sho2b, 3, 3);
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

spep_3=spep_7+145+15;

setDisp( spep_7+150, 1, 0);
--setDisp( spep_7+150, 0, 1);
setScaleKey( spep_7+150,  1,  1, 1);
setScaleKey( spep_7+150,  0,  1, 1);
setRotateKey( spep_7+150 , 0 , 0);

spep_8 = spep_7+145+15;

------------------------------------------------------
-- かめはめ波溜め！
------------------------------------------------------
changeAnime( spep_8, 0, 30); --かめはめ波溜め
setMoveKey(  spep_8,  0, 0,  0,   0);
setDisp( spep_8+5, 0, 1);
syunkan2=entryEffect( spep_8, 700, 0,  -1, 0,  0, 0); --瞬間移動
setEffScaleKey( spep_8, syunkan2, 1.5, 1.5);

setScaleKey(  spep_8+5,  0,  1.5, 1.5);
setMoveKey(  spep_8+50,  0, 0,  0,   -50);

setShakeChara( spep_8+5, 0, 30, 7);
setShakeChara( spep_8+20, 0, 20, 15);
setShake( spep_8+20,60, 20);

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_8+20,   311, 73, 0x100,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( spep_8+20, aura, 1.9, 1.9);
setEffScaleKey( spep_8+80, aura, 2.3, 2.3);

kame_hand = entryEffectLife( spep_8+20, SP_01, 60, 0x100, 0, 300,  -65, -90);   -- 手のカメハメ波部 50end
playSe( spep_8+20, 1035);
setEffScaleKey( spep_8+20, kame_hand, 1, 1);
setEffScaleKey( spep_8+80, kame_hand, 1.5, 1.5);


entryFade( spep_8+80, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



entryFadeBg( spep_8, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen9 = entryEffectLife( spep_8+20, 906, 65, 0x00,  -1, 0,  0,  0);   -- 集中線


setMoveKey(  spep_8+85,  0, 0,  0, -50);
setMoveKey(  spep_8+86,  0, 0,  0, 0);
setScaleKey(  spep_8+85,  0,  1.5, 1.5);
setScaleKey(  spep_8+86,  0,  1, 1);

spep_3 = spep_8+87;

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 108);   

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  0.5, 0.5);
setScaleKey(  spep_3,  1,  1.4, 1.4);

setEnvZoomEnable(spep_3,1);

setMoveKey(  spep_3-1,    0,      -150,  0,   0);
setMoveKey(  spep_3+90,    0,     -150,  0,   0);

setMoveKey(  spep_3-1,    1,  150,  0,   0);
setMoveKey(  spep_3+90,    1,  150,  0,   0);

setEnvZoomEnable(spep_3+50,0);

--敵吹っ飛び

setMoveKey(  spep_3+115,    0,     -220,  0,   0);
setMoveKey(  spep_3+115,    1,     1100,  0,   0);

sen2 = entryEffectLife( spep_3, 920, 115, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_3, sen2, -20);
--setEffScaleKey( spep_3, sen2, 1.5, 1.5);

setShakeChara( spep_3, 0, 90, 20);
setShakeChara( spep_3, 1, 40, 20);
setShakeChara( spep_3+40, 1, 50, 30);

setShake( spep_3,115, 30);

setScaleKey(  spep_3+115,  0,  0.4, 0.4);
setScaleKey(  spep_3+115,  1,  1, 1);


kamehame_beam_st = entryEffectLife( spep_3, SP_02, 115, 0x40+0x100,  0,  300,  0,  0);   -- 拳オーラ

oozaru_beam_st = entryEffect( spep_3, SP_03, 0x40+0x80,  0,  1,  130,  75);   -- 大猿
setEffScaleKey(spep_3, oozaru_beam_st, 1.1, 1.1);
setEffAlphaKey(spep_3, oozaru_beam_st, 0);
setEffAlphaKey(spep_3+28, oozaru_beam_st, 0);
setEffAlphaKey(spep_3+29, oozaru_beam_st, 255);

mawari_beam_st = entryEffect( spep_3, SP_04, 0x40+0x100,  0,  300,  0,  0);   -- 拳オーラ周り

setEffScaleKey(spep_3, mawari_beam_st, 1.2, 1.2);

--kamehame_beam = entryEffectLife( spep_3, SP_02, 58, 0x40+0x100,  0,  300,  0,  0);   -- 伸びるかめはめ波

setEffAlphaKey(spep_3, kamehame_beam_st, 255);
setEffAlphaKey(spep_3+90, kamehame_beam_st, 255);
setEffAlphaKey(spep_3+115, kamehame_beam_st, 0);

playSe( spep_3, SE_07);


-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 115, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

shuchusen = entryEffectLife( spep_3-1, 906, 115, 0x80,  -1, 0,  0,  0);   -- 集中線
--setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

--entryFlash( (spep_3+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_3+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_3, 10021, 90, 0, -1, 0, 130, 250); -- バゴォッ
setEffShake(spep_3, ct, 32, 5);
setEffAlphaKey(spep_3, ct, 255);
setEffAlphaKey(spep_3+80, ct, 255);
setEffAlphaKey(spep_3+90, ct, 0);
setEffScaleKey(spep_3, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.5, 1.5);
setEffScaleKey(spep_3+80, ct, 1.5, 1.5);
setEffScaleKey(spep_3+90, ct, 6.0, 6.0);
playSe( spep_3+90, SE_07);

entryFade( spep_3+110, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey(  spep_3+115,  0,  0.5, 0.5);
setScaleKey(  spep_3+115,  1,  1.2, 1.2);

--setScaleKey(  spep_3+127,  1, 1, 1);

spep_5=spep_3+118 --311 370

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5-1, 1, 1);
setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1, 1);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
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

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

--entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+100);

end

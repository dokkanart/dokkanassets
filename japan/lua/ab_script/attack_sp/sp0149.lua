

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
changeAnime( 0, 0, 0);                       -- 溜め!
changeAnime( 30, 0, 17);  
setScaleKey(   0,   0, 1.5, 1.5);

setMoveKey(   0,   0, 0, 0, 0);
setMoveKey(   15,   0,  0, 0,  0);
setMoveKey(  125,   0,  0, 0, 0);

playSe( 0, 1035); --かめはめ波
playSe( 20, 1036); 
playSe( 45, 1036);
playSe( 70, 1036); 
playSe( 95, 1036);  
playSe( 120, 1036);  

entryEffect(  30,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  30,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( 20, SE_04);

--kame_hand = entryEffect( 0, SP_01, 0x100, -1, 0,  0, 0);   -- 手のカメハメ波部 50end
--setEffMoveKey(   0,  kame_hand,  150,  -200,   0);
--setEffMoveKey(   15,  kame_hand, 30,  90,   0);
--setEffScaleKey( 0, kame_hand, 1, 1);
--setEffScaleKey( 15, kame_hand, 0.5, 0.5);

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

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


--P移動
setMoveKey(  spep_6-1,    0,      0,  0,   0);
setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+15,    0,   0,  0,   0);

setMoveKey(  spep_6+35,    0,   -150,  0,   0);

playSe( spep_6+40, SE_06);

setMoveKey(  spep_6+45,  0, 700,  0,   0);
setMoveKey(  spep_6+48,  0, 700,  0,   0);
setMoveKey(  spep_6+49,  0, -1700,  0,   0);


entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setEnvZoomEnable(spep_6+50,1);

setScaleKey( spep_6+49, 0, 2.0, 2.0);
setScaleKey( spep_6+50, 0, 1.5, 1.5);
setMoveKey(  spep_6+50,  0, -1700,  0,   0);
setMoveKey(  spep_6+51,  0, -700,  0,   0);

setMoveKey(  spep_6+50,  1, 1700,  0,   0);
setMoveKey(  spep_6+51,  1, 550,  0,   0);

--右大キック

setMoveKey(  spep_6+61,  0, -100,  0,   0);

setMoveKey(  spep_6+61,  1, 20,  0,   0);

entryFadeBg( spep_6, 0, 179, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_6, 920, 179, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_6, 0, 179, 15);
setShakeChara( spep_6, 1, 179, 15);
setShake(spep_6,179, 10);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 275; --エンドフェイズのフレーム数を置き換える

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



changeAnime( spep_6+60,   0, 14 );--キック3
playSe( spep_6+61,1009);--SE
entryEffect(  spep_6+60,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+61, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+61,   1, 108 ); --敵モーション


--追い討ち移動

setMoveKey(  spep_6+66,  0, -550,  0,   0);
setMoveKey(  spep_6+86,  0, 0,  0,   0);

setMoveKey(  spep_6+86,  1, 100,  0,   0);

changeAnime( spep_6+66, 0, 3); 

--パンチの嵐

changeAnime( spep_6+85,   0, 9 );--パンチ1
playSe( spep_6+86,1000);--SE
entryEffect(  spep_6+85,   1,   0,  1,   0,  0,  0);
setDamage( spep_6+86, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+86,   1, 106 ); --敵モーション

setMoveKey(  spep_6+86,  0, 0,  0,   0);
setMoveKey(  spep_6+94,  0, 30,  0,   0);

setMoveKey(  spep_6+86,  1, 140,  0,   0);
setMoveKey(  spep_6+94,  1, 170,  0,   0);

setEnvZoomEnable(spep_6+90,1);

changeAnime( spep_6+93,   0, 10);--パンチ2
playSe( spep_6+94,1006);--SE
entryEffect(  spep_6+93,  2,   0,  1,   0,  0,  0);
setDamage( spep_6+94, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+94,   1, 108 ); --敵モーション

setMoveKey(  spep_6+94,  0, 30,  0,   0);
setMoveKey(  spep_6+102,  0, 60,  0,   0);

setMoveKey(  spep_6+94,  1, 170,  0,   0);
setMoveKey(  spep_6+102,  1, 200,  0,   0);

changeAnime( spep_6+101,   0, 11);--パンチ3
playSe( spep_6+102,1009);--SE
entryEffect(  spep_6+101,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+102, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+102,   1, 106 ); --敵モーション

setMoveKey(  spep_6+102,  0, 60,  0,   0);
setMoveKey(  spep_6+110,  0, 90,  0,   0);

setMoveKey(  spep_6+102,  1, 200,  0,   0);
setMoveKey(  spep_6+110,  1, 230,  0,   0);

setEnvZoomEnable(spep_6+106,0);

changeAnime( spep_6+109,   0, 10);--パンチ2
playSe( spep_6+110,1006);--SE
entryEffect(  spep_6+109,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+110, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+110,   1, 106 ); --敵モーション

setMoveKey(  spep_6+110,  0, 90,  0,   0);
setMoveKey(  spep_6+118,  0, 60,  0,   0);

setMoveKey(  spep_6+110,  1, 230,  0,   0);
setMoveKey(  spep_6+118,  1, 200,  0,   0);

--setEnvZoomEnable(spep_6+110,1);

changeAnime( spep_6+117,   0, 11);--パンチ3
playSe( spep_6+118,1009);--SE
entryEffect(  spep_6+117,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+118, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+118,   1, 108 ); --敵モーション

setMoveKey(  spep_6+118,  0, 60,  0,   0);
setMoveKey(  spep_6+126,  0, 40,  0,   0);

setMoveKey(  spep_6+118,  1, 200,  0,   0);
setMoveKey(  spep_6+126,  1, 180,  0,   0);


setEnvZoomEnable(spep_6+121,1);

changeAnime( spep_6+125,   0, 9);--パンチ1
playSe( spep_6+126,1000);--SE
entryEffect(  spep_6+125,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+126, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+126,   1, 108 ); --敵モーション

setMoveKey(  spep_6+126,  0, 40,  0,   0);
setMoveKey(  spep_6+134,  0, 10,  0,   0);

setMoveKey(  spep_6+126,  1, 180,  0,   0);
setMoveKey(  spep_6+134,  1, 150,  0,   0);


changeAnime( spep_6+133,   0, 10);--パンチ2
playSe( spep_6+134,1006);--SE
entryEffect(  spep_6+133,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+134, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+134,   1, 106 ); --敵モーション

setMoveKey(  spep_6+134,  0, 40,  0,   0);
setMoveKey(  spep_6+142,  0, 10,  0,   0);

setMoveKey(  spep_6+134,  1, 180,  0,   0);
setMoveKey(  spep_6+142,  1, 150,  0,   0);

--setEnvZoomEnable(spep_6+138,0);

changeAnime( spep_6+141,   0, 9);--パンチ1
playSe( spep_6+142,1000);--SE
entryEffect(  spep_6+141,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+142, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+142,   1, 108 ); --敵モーション

setMoveKey(  spep_6+142,  0, 40,  0,   0);
setMoveKey(  spep_6+155,  0, 10,  0,   0);

setMoveKey(  spep_6+142,  1, 180,  0,   0);
setMoveKey(  spep_6+155,  1, 150,  0,   0);

--setEnvZoomEnable(spep_6+140,0);

changeAnime( spep_6+154,   0, 11);--パンチ3
playSe( spep_6+153,1009);--SE
entryEffect(  spep_6+154,   905,   0,  1,   0,  0,  0);
setDamage( spep_6+155, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+155,   1, 108 ); --敵モーション

setMoveKey(  spep_6+155,  0, 10,  0,   0);
setMoveKey(  spep_6+170,  0, -300,  0,   0);

setMoveKey(  spep_6+155,  1, 150,  0,   0);
setMoveKey(  spep_6+165,  1, 1500,  0,   0);

setDisp( spep_6+165, 1, 0);

setEnvZoomEnable(spep_6+156,0);

--changeAnime( spep_6+165,   0, 17); --気溜め

setMoveKey(  spep_6+170,  0, -300,  0,   0);
--setMoveKey(  spep_6+170,  0, -100,  0,   0);

changeAnime( spep_6+170,   0, 3); --ダッシュ
setRotateKey( spep_6+170 , 0 , -65);
setMoveKey(  spep_6+179,  0, 150,  700,   0);

playSe( spep_6+172, 1018);

setRotateKey( spep_6+179 , 0 , -65);
setRotateKey( spep_6+180 , 0 , 0);

setScaleKey( spep_6+179, 0, 1.5, 1.5);
setScaleKey( spep_6+179, 1, 1.5, 1.5);


entryFade( spep_6+179, 3, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


playSe( spep_6, SE_07);


-- ** エフェクト等 ** --
setShake(spep_6+50,129, 20);
setShake(spep_6+155, 5, 40);


shuchusen8 = entryEffectLife( spep_6+50, 906, 129, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

--entryFlash( (spep_6+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_6+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_6+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_6+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_6+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_6+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_6+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+85, 10017, 52, 0, -1, 0, 200, 300); -- ドガガガッ
setEffShake(spep_6+85, ct, 32, 5);
setEffAlphaKey(spep_6+85, ct, 255);
setEffAlphaKey(spep_6+123, ct, 255);
setEffAlphaKey(spep_6+133, ct, 0);
setEffScaleKey(spep_6+83, ct, 0.0, 0.0);
setEffScaleKey(spep_6+89, ct, 1.8, 1.8);
setEffScaleKey(spep_6+123, ct, 1.8, 1.8);
setEffScaleKey(spep_6+133, ct, 6.0, 6.0);

--setEffAlphaKey(spep_6+38,spname, 1);
--playSe( spep_6+26, SE_07);
--entryFade( spep_6+62, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_6+180, 1, 0);
setDisp( spep_6+180, 0, 0);
setScaleKey( spep_6+180, 1, 1, 1);
setScaleKey( spep_6+180, 0, 1, 1);



spep_7=spep_6+187; --211 260


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( spep_7, 0, 30);                       -- 溜め!
setDisp( spep_7, 0, 1);
setScaleKey( spep_7, 0, 1.5, 1.5);

playSe( spep_7+15, SE_03);
playSe( spep_7+38, SE_03);
playSe( spep_7+63, SE_03);
playSe( spep_7+88, SE_03);
playSe( spep_7+113, SE_03);

setMoveKey(  spep_7-1,  0, -350,  -650,   0);
setMoveKey(  spep_7+10,  0, 0, 0,   0);


--entryEffect(  spep_7+50,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_7+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--playSe( spep_7+20, SE_04);

kame_hand = entryEffect( spep_7+10, SP_01, 0x40,  0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( spep_7, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_7+10,   311, 107, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( spep_7+10, aura, 1.2, 1.2);
setShakeChara( spep_7+10, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+10, 10008, 100, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_7+10, ct, 100, 8);
setEffScaleKey(spep_7+10, ct, 1.4, 1.4);

entryFade( spep_7+110, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey( spep_7+115, 0, 1.5, 1.5);

--entryFadeBg( spep_7, 0, 118, 0, 0, 0, 0, 190);       -- ベース暗め　背景

removeAllEffect(spep_7+117);


spep_8=spep_7+118; --260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_8, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  spep_8-1,    0,      0,  0,   0);
setMoveKey(  spep_8,    0,      -600,  350,   50);
setMoveKey(  spep_8+10,    0,      -120,  180,   0);
setMoveKey( spep_8+30,    0,      -120,  180,   0);


kamehame_beam = entryEffectLife( spep_8, SP_02, 109, 0x40,  0,  300,  50,  -50);   -- 伸びるかめはめ波
playSe( spep_8, SE_07);

spname = entryEffect( spep_8, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
setMoveKey(  spep_8+40,    0,   -350,  300,   50);
setMoveKey(  spep_8+45,    0,   -650,  600,   65);
--setMoveKey(  spep_8+48,    0,   -1100,  0,   0);
setDisp( spep_8+45 , 0, 0);

--entryFade( spep_8+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_8, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_8+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_8+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景
entryFadeBg( spep_8, 0, 105, 0, 0, 0, 0, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_8, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_8, sen2, 210);
setEffScaleKey( spep_8, sen2, 1.5, 1.5);
setShakeChara( spep_8+10, 0, 24, 50);

shuchusen = entryEffectLife( spep_8, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_8+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_8+49, shuchusen, 2.0, 2.0);

--entryFlash( (spep_8+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_8+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_8+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_8+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_8+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_8+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_8+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_8+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_8+8, ct, 32, 5);
setEffAlphaKey(spep_8+8, ct, 255);
setEffAlphaKey(spep_8+30, ct, 255);
setEffAlphaKey(spep_8+40, ct, 0);
setEffScaleKey(spep_8+8, ct, 0.0, 0.0);
setEffScaleKey(spep_8+12, ct, 1.3, 1.3);
setEffScaleKey(spep_8+32, ct, 1.3, 1.3);
setEffScaleKey(spep_8+40, ct, 6.0, 6.0);
playSe( spep_8+40, SE_07);

entryFade( spep_8+95, 5,  10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_9=spep_8+105; --370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_9, 0, 0);
setDisp( spep_9, 1, 1);
changeAnime( spep_9, 1, 104);                        -- ガード
setMoveKey(  spep_9-1,    1,  235,  0,   0);
setMoveKey(  spep_9,    1,  235,  0,   0);
setMoveKey(  spep_9+1,    1,  235,  0,   0);
setScaleKey( spep_9-1,    1,  0.7, 0.7);
setScaleKey( spep_9,    1,  0.7, 0.7);

setMoveKey(  spep_9+30,    1,   120,  0,   0);
setScaleKey(  spep_9+30,   1,   1.6,  1.6);

playSe( spep_9+20, SE_06);

kamehame_beam2 = entryEffect( spep_9, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_9, kamehame_beam2, 1, 1);
setEffScaleKey( spep_9+82, kamehame_beam2, 1, 1);
setEffScaleKey( spep_9+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_9+82, 1, 0);  -- ダメージ振動等

--speff = entryEffect( spep_9, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( spep_9, SE_08);

playSe( spep_9+85, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_9+85, 1, 108);
setMoveKey(  spep_9+85, 1,  120,    0,  0);
setMoveKey(  spep_9+99, 1,  400,    0,  0);
setScaleKey( spep_9+85, 1,  1.6, 1.6);
setScaleKey( spep_9+88, 1,  1.5, 1.5);
setScaleKey( spep_9+98, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_9, 1, 99, 20);

entryFadeBg( spep_9, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_9, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (spep_9+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_9+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_9+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_9+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_9+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_9+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_9, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_9, ct, 99, 20);
setEffScaleKey( spep_9, ct, 2.4, 2.4);
setEffRotateKey(spep_9, ct, 70);
setEffAlphaKey(spep_9, ct, 255);
setEffAlphaKey(spep_9+60, ct, 255);
setEffAlphaKey(spep_9+80, ct, 0);

entryFade( spep_9+92, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_9+99;

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

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);

else

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 0);                       -- 溜め!
changeAnime( 30, 0, 17);  
setScaleKey(   0,   0, 1.5, 1.5);

setMoveKey(   0,   0, 0, 0, 0);
setMoveKey(   15,   0,  0, 0,  0);
setMoveKey(  125,   0,  0, 0, 0);

playSe( 0, 1035); --かめはめ波
playSe( 20, 1036); 
playSe( 45, 1036);
playSe( 70, 1036); 
playSe( 95, 1036);  
playSe( 120, 1036);  

entryEffect(  30,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  30,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);

--speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( 20, SE_04);

--kame_hand = entryEffect( 0, SP_01, 0x100, -1, 0,  0, 0);   -- 手のカメハメ波部 50end
--setEffMoveKey(   0,  kame_hand,  150,  -200,   0);
--setEffMoveKey(   15,  kame_hand, 30,  90,   0);
--setEffScaleKey( 0, kame_hand, 1, 1);
--setEffScaleKey( 15, kame_hand, 0.5, 0.5);

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

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


--P移動
setMoveKey(  spep_6-1,    0,      0,  0,   0);
setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+15,    0,   0,  0,   0);

setMoveKey(  spep_6+35,    0,   -150,  0,   0);

playSe( spep_6+40, SE_06);

setMoveKey(  spep_6+45,  0, 700,  0,   0);
setMoveKey(  spep_6+48,  0, 700,  0,   0);
setMoveKey(  spep_6+49,  0, -1700,  0,   0);


entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setEnvZoomEnable(spep_6+50,1);

setScaleKey( spep_6+49, 0, 2.0, 2.0);
setScaleKey( spep_6+50, 0, 1.5, 1.5);

--右大キック

setMoveKey(  spep_6+50,  0, -1700,  0,   0);
setMoveKey(  spep_6+51,  0, -700,  0,   0);

setMoveKey(  spep_6+50,  1, 1700,  0,   0);
setMoveKey(  spep_6+51,  1, 550,  0,   0);

setMoveKey(  spep_6+61,  0, -100,  0,   0);

setMoveKey(  spep_6+61,  1, 20,  0,   0);

entryFadeBg( spep_6, 0, 179, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_6, 920, 179, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_6, 0, 179, 15);
setShakeChara( spep_6, 1, 179, 15);
setShake(spep_6,179, 10);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 275; --エンドフェイズのフレーム数を置き換える

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


changeAnime( spep_6+60,   0, 14 );--キック3
playSe( spep_6+61,1009);--SE
entryEffect(  spep_6+60,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+61, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+61,   1, 108 ); --敵モーション


--追い討ち移動

setMoveKey(  spep_6+66,  0, -550,  0,   0);
setMoveKey(  spep_6+86,  0, 0,  0,   0);

setMoveKey(  spep_6+86,  1, 100,  0,   0);

changeAnime( spep_6+66, 0, 3); 

--パンチの嵐

changeAnime( spep_6+85,   0, 9 );--パンチ1
playSe( spep_6+86,1000);--SE
entryEffect(  spep_6+85,   1,   0,  1,   0,  0,  0);
setDamage( spep_6+86, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+86,   1, 106 ); --敵モーション

setMoveKey(  spep_6+86,  0, 0,  0,   0);
setMoveKey(  spep_6+94,  0, 30,  0,   0);

setMoveKey(  spep_6+86,  1, 140,  0,   0);
setMoveKey(  spep_6+94,  1, 170,  0,   0);

setEnvZoomEnable(spep_6+90,1);

changeAnime( spep_6+93,   0, 10);--パンチ2
playSe( spep_6+94,1006);--SE
entryEffect(  spep_6+93,  2,   0,  1,   0,  0,  0);
setDamage( spep_6+94, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+94,   1, 108 ); --敵モーション

setMoveKey(  spep_6+94,  0, 30,  0,   0);
setMoveKey(  spep_6+102,  0, 60,  0,   0);

setMoveKey(  spep_6+94,  1, 170,  0,   0);
setMoveKey(  spep_6+102,  1, 200,  0,   0);

changeAnime( spep_6+101,   0, 11);--パンチ3
playSe( spep_6+102,1009);--SE
entryEffect(  spep_6+101,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+102, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+102,   1, 106 ); --敵モーション

setMoveKey(  spep_6+102,  0, 60,  0,   0);
setMoveKey(  spep_6+110,  0, 90,  0,   0);

setMoveKey(  spep_6+102,  1, 200,  0,   0);
setMoveKey(  spep_6+110,  1, 230,  0,   0);

setEnvZoomEnable(spep_6+106,0);

changeAnime( spep_6+109,   0, 10);--パンチ2
playSe( spep_6+110,1006);--SE
entryEffect(  spep_6+109,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+110, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+110,   1, 106 ); --敵モーション

setMoveKey(  spep_6+110,  0, 90,  0,   0);
setMoveKey(  spep_6+118,  0, 60,  0,   0);

setMoveKey(  spep_6+110,  1, 230,  0,   0);
setMoveKey(  spep_6+118,  1, 200,  0,   0);

--setEnvZoomEnable(spep_6+110,1);

changeAnime( spep_6+117,   0, 11);--パンチ3
playSe( spep_6+118,1009);--SE
entryEffect(  spep_6+117,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+118, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+118,   1, 108 ); --敵モーション

setMoveKey(  spep_6+118,  0, 60,  0,   0);
setMoveKey(  spep_6+126,  0, 40,  0,   0);

setMoveKey(  spep_6+118,  1, 200,  0,   0);
setMoveKey(  spep_6+126,  1, 180,  0,   0);


setEnvZoomEnable(spep_6+121,1);

changeAnime( spep_6+125,   0, 9);--パンチ1
playSe( spep_6+126,1000);--SE
entryEffect(  spep_6+125,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+126, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+126,   1, 108 ); --敵モーション

setMoveKey(  spep_6+126,  0, 40,  0,   0);
setMoveKey(  spep_6+134,  0, 10,  0,   0);

setMoveKey(  spep_6+126,  1, 180,  0,   0);
setMoveKey(  spep_6+134,  1, 150,  0,   0);


changeAnime( spep_6+133,   0, 10);--パンチ2
playSe( spep_6+134,1006);--SE
entryEffect(  spep_6+133,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+134, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+134,   1, 106 ); --敵モーション

setMoveKey(  spep_6+134,  0, 40,  0,   0);
setMoveKey(  spep_6+142,  0, 10,  0,   0);

setMoveKey(  spep_6+134,  1, 180,  0,   0);
setMoveKey(  spep_6+142,  1, 150,  0,   0);

--setEnvZoomEnable(spep_6+138,0);

changeAnime( spep_6+141,   0, 9);--パンチ1
playSe( spep_6+142,1000);--SE
entryEffect(  spep_6+141,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+142, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+142,   1, 108 ); --敵モーション

setMoveKey(  spep_6+142,  0, 40,  0,   0);
setMoveKey(  spep_6+155,  0, 10,  0,   0);

setMoveKey(  spep_6+142,  1, 180,  0,   0);
setMoveKey(  spep_6+155,  1, 150,  0,   0);

--setEnvZoomEnable(spep_6+140,0);

changeAnime( spep_6+154,   0, 11);--パンチ3
playSe( spep_6+153,1009);--SE
entryEffect(  spep_6+154,   905,   0,  1,   0,  0,  0);
setDamage( spep_6+155, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+155,   1, 108 ); --敵モーション

setMoveKey(  spep_6+155,  0, 10,  0,   0);
setMoveKey(  spep_6+170,  0, -300,  0,   0);

setMoveKey(  spep_6+155,  1, 150,  0,   0);
setMoveKey(  spep_6+165,  1, 1500,  0,   0);

setDisp( spep_6+165, 1, 0);

setEnvZoomEnable(spep_6+156,0);

--changeAnime( spep_6+165,   0, 17); --気溜め

setMoveKey(  spep_6+170,  0, -300,  0,   0);
--setMoveKey(  spep_6+170,  0, -100,  0,   0);

changeAnime( spep_6+170,   0, 3); --ダッシュ
setRotateKey( spep_6+170 , 0 , -65);
setMoveKey(  spep_6+179,  0, 150,  700,   0);

playSe( spep_6+172, 1018);

setRotateKey( spep_6+179 , 0 , -65);
setRotateKey( spep_6+180 , 0 , 0);

setScaleKey( spep_6+179, 0, 1.5, 1.5);
setScaleKey( spep_6+179, 1, 1.5, 1.5);


entryFade( spep_6+179, 3, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


playSe( spep_6, SE_07);


-- ** エフェクト等 ** --
setShake(spep_6+50,129, 20);
setShake(spep_6+155, 5, 40);


shuchusen8 = entryEffectLife( spep_6+50, 906, 129, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

--entryFlash( (spep_6+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_6+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_6+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_6+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_6+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_6+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_6+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+85, 10017, 52, 0, -1, 0, 200, 300); -- ドガガガッ
setEffShake(spep_6+85, ct, 32, 5);
setEffAlphaKey(spep_6+85, ct, 255);
setEffAlphaKey(spep_6+123, ct, 255);
setEffAlphaKey(spep_6+133, ct, 0);
setEffScaleKey(spep_6+83, ct, 0.0, 0.0);
setEffScaleKey(spep_6+89, ct, 1.8, 1.8);
setEffScaleKey(spep_6+123, ct, 1.8, 1.8);
setEffScaleKey(spep_6+133, ct, 6.0, 6.0);

--setEffAlphaKey(spep_6+38,spname, 1);
--playSe( spep_6+26, SE_07);
--entryFade( spep_6+62, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_6+180, 1, 0);
setDisp( spep_6+180, 0, 0);
setScaleKey( spep_6+180, 1, 1, 1);
setScaleKey( spep_6+180, 0, 1, 1);



spep_7=spep_6+187; --211 260


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( spep_7, 0, 30);                       -- 溜め!
setDisp( spep_7, 0, 1);
setScaleKey( spep_7, 0, 1.5, 1.5);

playSe( spep_7+15, SE_03);
playSe( spep_7+38, SE_03);
playSe( spep_7+63, SE_03);
playSe( spep_7+88, SE_03);
playSe( spep_7+113, SE_03);

setMoveKey(  spep_7-1,  0, -350,  -650,   0);
setMoveKey(  spep_7+10,  0, 0, 0,   0);


--entryEffect(  spep_7+50,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_7+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--playSe( spep_7+20, SE_04);

kame_hand = entryEffect( spep_7+10, SP_01, 0x40,  0,  300,  0,  250);   -- 手のカメハメ波部
--setEffScaleKey( spep_7, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_7+10,   311, 107, 0x40,  0,  1,  0,  -250); -- オーラ
setEffScaleKey( spep_7+10, aura, 1.2, 1.2);
setShakeChara( spep_7+10, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+10, 10008, 100, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_7+10, ct, 100, 8);
setEffScaleKey(spep_7+10, ct, 1.4, 1.4);

entryFade( spep_7+110, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey( spep_7+115, 0, 1.5, 1.5);

--entryFadeBg( spep_7, 0, 118, 0, 0, 0, 0, 190);       -- ベース暗め　背景

removeAllEffect(spep_7+117);


spep_8=spep_7+118; --260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_8, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  spep_8-1,    0,      0,  0,   0);
setMoveKey(  spep_8,    0,      -600,  350,   50);
setMoveKey(  spep_8+10,    0,      -120,  180,   0);
setMoveKey( spep_8+30,    0,      -120,  180,   0);


kamehame_beam = entryEffectLife( spep_8, SP_02, 109, 0x40,  0,  300,  50,  -50);   -- 伸びるかめはめ波
playSe( spep_8, SE_07);

--spname = entryEffect( spep_8, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
setMoveKey(  spep_8+40,    0,   -350,  300,   50);
setMoveKey(  spep_8+45,    0,   -650,  600,   65);
--setMoveKey(  spep_8+48,    0,   -1100,  0,   0);
setDisp( spep_8+45 , 0, 0);

--entryFade( spep_8+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_8, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_8+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_8+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景
entryFadeBg( spep_8, 0, 105, 0, 0, 0, 0, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_8, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_8, sen2, 210);
setEffScaleKey( spep_8, sen2, 1.5, 1.5);
setShakeChara( spep_8+10, 0, 24, 50);

shuchusen = entryEffectLife( spep_8, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_8+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_8+49, shuchusen, 2.0, 2.0);

--entryFlash( (spep_8+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_8+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_8+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_8+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_8+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_8+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_8+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_8+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_8+8, ct, 32, 5);
setEffAlphaKey(spep_8+8, ct, 255);
setEffAlphaKey(spep_8+30, ct, 255);
setEffAlphaKey(spep_8+40, ct, 0);
setEffScaleKey(spep_8+8, ct, 0.0, 0.0);
setEffScaleKey(spep_8+12, ct, 1.3, 1.3);
setEffScaleKey(spep_8+32, ct, 1.3, 1.3);
setEffScaleKey(spep_8+40, ct, 6.0, 6.0);
playSe( spep_8+40, SE_07);

entryFade( spep_8+95, 5,  10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_9=spep_8+105; --370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_9, 0, 0);
setDisp( spep_9, 1, 1);
changeAnime( spep_9, 1, 104);                        -- ガード
setMoveKey(  spep_9-1,    1,  235,  0,   0);
setMoveKey(  spep_9,    1,  235,  0,   0);
setMoveKey(  spep_9+1,    1,  235,  0,   0);
setScaleKey( spep_9-1,    1,  0.7, 0.7);
setScaleKey( spep_9,    1,  0.7, 0.7);

setMoveKey(  spep_9+30,    1,   120,  0,   0);
setScaleKey(  spep_9+30,   1,   1.6,  1.6);

playSe( spep_9+20, SE_06);

kamehame_beam2 = entryEffect( spep_9, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_9, kamehame_beam2, 1, 1);
setEffScaleKey( spep_9+82, kamehame_beam2, 1, 1);
setEffScaleKey( spep_9+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_9+82, 1, 0);  -- ダメージ振動等

--speff = entryEffect( spep_9, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( spep_9, SE_08);

playSe( spep_9+85, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_9+85, 1, 108);
setMoveKey(  spep_9+85, 1,  120,    0,  0);
setMoveKey(  spep_9+99, 1,  400,    0,  0);
setScaleKey( spep_9+85, 1,  1.6, 1.6);
setScaleKey( spep_9+88, 1,  1.5, 1.5);
setScaleKey( spep_9+98, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_9, 1, 99, 20);

entryFadeBg( spep_9, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_9, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (spep_9+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_9+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_9+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_9+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_9+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_9+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( spep_9, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_9, ct, 99, 20);
setEffScaleKey( spep_9, ct, 2.4, 2.4);
setEffRotateKey(spep_9, ct, 10);
setEffAlphaKey(spep_9, ct, 255);
setEffAlphaKey(spep_9+60, ct, 255);
setEffAlphaKey(spep_9+80, ct, 0);

entryFade( spep_9+92, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_9+99;

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

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);

end



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

SP_01 = 107016;
SP_02 = 107017;
SP_03 = 107011;--未使用

SP_04 = 107015;--格闘中の背景エフェクト
SP_05 = 107018;--龍の背景エフェクト


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
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);

setMoveKey(   0,   0, 0, -54, 0);
setMoveKey(    1,   0, 0, -54, 0);
setMoveKey(    2,   0, 0, -54, 0);
setMoveKey(    3,   0, 0, -54, 0);
setMoveKey(    4,   0, 0, -54, 0);
setMoveKey(    5,   0, 0, -54, 0);
setMoveKey(   15,   0,  0, -54,  0);
setMoveKey(  125,   0,  0, -54, 0);

setRotateKey( 0,  0,  0 );
setRotateKey( 1,  0,  0 );
setRotateKey( 2,  0,  0 );
setRotateKey( 3,  0,  0 );
setRotateKey( 4,  0,  0 );
setRotateKey( 5,  0,  0 );

--playSe( 20, 1036); 
--[[
playSe( 45, 1036);
playSe( 65, 1036); 
playSe( 85, 1036);  
playSe( 115, 1036); 
]]

--v4.11修正
SE005 = playSe( 50, 1036);
stopSe(74,SE005,5);
SE006 = playSe( 74, 1036);
stopSe(98,SE006,5);
SE007 = playSe( 98, 1036);
stopSe(122,SE007,5);
--SE008 = playSe( 117, 1036);
--stopSe(132,SE008,5);

--playSe( 135, 1036);  

playSe( 30, 1035); --かめはめ波

entryEffect(  30,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  30,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

shuchusen5 = entryEffectLife( 30, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 95, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
--setShake( 30, 125, 15);

-- 書き文字エントリー
ctGo = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ctGo, 95, 8);
setEffScaleKey(30, ctGo, 1.4, 1.4);

--entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 127;
setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 1.4, 1.4);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.0, 1.0);
setMoveKey(  spep_6,  1, 1700,  0,   0);
setRotateKey( spep_6,  1,  -5 );
setRotateKey( spep_6,  0,  -10 );

--P移動
setMoveKey(  spep_6-1,    0,      0,  0,   0);
setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+15,    0,   0,  0,   0);

setMoveKey(  spep_6+35,    0,   -150,  0,   0);

playSe( spep_6+35, 1018);

setMoveKey(  spep_6+45,  0, 700,  0,   0);
setMoveKey(  spep_6+48,  0, 700,  0,   0);
setMoveKey(  spep_6+49,  0, -1700,  0,   0);

entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setEnvZoomEnable(spep_6+50,1);

setScaleKey( spep_6+49, 0, 1.4, 1.4);
setScaleKey( spep_6+50, 0, 1.4, 1.4);

--右大パンチ

setMoveKey(  spep_6+50,  0, -1700,  0,   0);
setMoveKey(  spep_6+51,  0, -700,  0,   0);


setMoveKey(  spep_6+50,  1, 1700,  0,   0);
setMoveKey(  spep_6+51,  1, 550,  0,   0);

entryFadeBg( spep_6, 0, 265, 0, 10, 10, 10, 180);       -- ベース暗め　背景

ryusen_1=entryEffectLife( spep_6, 920, 265, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  spep_6, ryusen_1, 1.3, 1.3);

setShakeChara( spep_6, 0, 179, 15);
setShakeChara( spep_6, 1, 179, 15);
--setShake(spep_6,179, 10);

--setShake(spep_6+50,129, 20);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 272; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setDisp(SP_dodge+10, 0, 0);
setDisp(SP_dodge+10, 1, 0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end


setMoveKey(  spep_6+61,  1, 20,  0,   0);

changeAnime( spep_6+60,   0, 11 );--パンチ3
playSe( spep_6+61,1009);--SE
entryEffect(  spep_6+60,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+61, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+61,   1, 108 ); --敵モーション


--追い討ち移動

setMoveKey(  spep_6+66,  0, -200,  0,   0);
setMoveKey(  spep_6+76,  0, -150,  0,   0);

setMoveKey(  spep_6+66,  1, 220,  0,   0);
setMoveKey(  spep_6+86,  1, -50,  0,   0);

changeAnime( spep_6+66, 0, 3); 

--パンチの嵐

changeAnime( spep_6+85,   0, 9 );--パンチ1
playSe( spep_6+86,1000);--SE
entryEffect(  spep_6+85,   1,   0,  1,   0,  0,  0);
setDamage( spep_6+86, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+86,   1, 106 ); --敵モーション

setMoveKey(  spep_6+86,  0, -150,  0,   0);
setMoveKey(  spep_6+94,  0, -120,  0,   0);

setMoveKey(  spep_6+86,  1, -10,  0,   0);
setMoveKey(  spep_6+94,  1, 20,  10,   0);

setEnvZoomEnable(spep_6+90,1);

changeAnime( spep_6+93,   0, 12);--キック1
playSe( spep_6+94,1001);--SE
entryEffect(  spep_6+93,  2,   0,  1,   0,  0,  0);
setDamage( spep_6+94, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+94,   1, 108 ); --敵モーション

setMoveKey(  spep_6+94,  0, -120,  0,   0);
setMoveKey(  spep_6+102,  0, -90,  0,   0);

setMoveKey(  spep_6+94,  1, 20,  10,   0);
setMoveKey(  spep_6+102,  1, 50,  20,   0);

changeAnime( spep_6+101,   0, 9);--パンチ1
playSe( spep_6+102,1006);--SE
entryEffect(  spep_6+101,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+102, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+102,   1, 106 ); --敵モーション

setMoveKey(  spep_6+102,  0, -90,  0,   0);
setMoveKey(  spep_6+110,  0, -60,  0,   0);

setMoveKey(  spep_6+102,  1, 50,  20,   0);
setMoveKey(  spep_6+110,  1, 80,  30,   0);

setEnvZoomEnable(spep_6+89,0);-- -18

changeAnime( spep_6+109,   0, 11);--パンチ3
playSe( spep_6+110,1009);--SE
entryEffect(  spep_6+109,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+110, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+110,   1, 106 ); --敵モーション

setMoveKey(  spep_6+110,  0, -90,  0,   0);
setMoveKey(  spep_6+118,  0, -60,  0,   0);

setMoveKey(  spep_6+110,  1, 80,  30,   0);
setMoveKey(  spep_6+118,  1, 110,  40,   0);

setEnvZoomEnable(spep_6+110,1);

changeAnime( spep_6+117,   0, 12);--キック1
playSe( spep_6+118,1001);--SE
entryEffect(  spep_6+117,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+118, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+118,   1, 108 ); --敵モーション

setMoveKey(  spep_6+118,  0, -60,  0,   0);
setMoveKey(  spep_6+126,  0, -30,  0,   0);

setMoveKey(  spep_6+118,  1, 110,  40,   0);
setMoveKey(  spep_6+126,  1, 140,  50,   0);

--setEnvZoomEnable(spep_6+121,1);

changeAnime( spep_6+125,   0, 14);--キック3
playSe( spep_6+126,1025);--SE
entryEffect(  spep_6+125,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+126, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+126,   1, 108 ); --敵モーション

setMoveKey(  spep_6+126,  0, -30,  0,   0);
setMoveKey(  spep_6+134,  0, 0,  0,   0);

setMoveKey(  spep_6+126,  1, 140,  100,   0);
setMoveKey(  spep_6+134,  1, 360,  800,   0);

setEnvZoomEnable(spep_6+133,0);

setDisp( spep_6+160, 1, 0);



-- ** エフェクト等 ** --
setShake(spep_6+155, 5, 40);

kamebg = entryEffectLife( spep_6+46, SP_04, 88, 0x40+0x80,  0, 250,  0,  0);   -- 格闘時の背景
setEffScaleKey(spep_6+46, kamebg, 1.4, 1);
setEffAlphaKey(spep_6+46, kamebg, 0);
setEffAlphaKey(spep_6+49, kamebg, 255);

shuchusen8 = entryEffectLife( spep_6+50, 906, 88, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ctDoga = entryEffectLife( spep_6+85, 10017, 52, 0, -1, 0, 0, 200); -- ドガガガッ
setEffShake(spep_6+85, ctDoga, 32, 5);
setEffAlphaKey(spep_6+85, ctDoga, 255);
setEffAlphaKey(spep_6+123, ctDoga, 255);
setEffAlphaKey(spep_6+133, ctDoga, 0);
setEffScaleKey(spep_6+83, ctDoga, 0.0, 0.0);
setEffScaleKey(spep_6+89, ctDoga, 1.8, 1.8);
setEffScaleKey(spep_6+123, ctDoga, 1.8, 1.8);
setEffScaleKey(spep_6+133, ctDoga, 6.0, 6.0);

entryFade( spep_6+128, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( spep_6+132, 0, 1.4, 1.4);

spep_7=spep_6+178-40; --211 260


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( spep_7-4, 0, 30);                       -- 溜め!
setDisp( spep_7, 0, 1);
setScaleKey( spep_7-4, 0, 3.0, 3.0);
setScaleKey( spep_7, 0, 3.0, 3.0);
setScaleKey( spep_7+15, 0, 1.7, 1.7);

--[[
playSe( spep_7+15, 1034);
playSe( spep_7+35, 1034);
playSe( spep_7+55, 1034);
]]

--v4.11修正
SE001 = playSe( spep_7+15, 1034);
stopSe( spep_7+35, SE001, 10);
SE002 = playSe( spep_7+35, 1034);
stopSe( spep_7+55, SE002, 10);
SE003 = playSe( spep_7+55, 1034);
stopSe( spep_7+80, SE003, 10);

--playSe( spep_7+75, 1034);
--playSe( spep_7+113, SE_03);

--setMoveKey(  spep_7-1,  0, -350,  -650,   0);
--setMoveKey(  spep_7+10,  0, 0, 0,   0);


--entryEffect(  spep_7+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_7+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--playSe( spep_7+20, SE_04);
--setEnvZoomEnable(spep_7+10,1);

kame_hand = entryEffect( spep_7+10, SP_01, 0x40,  0,  300,  -40,  24);   -- 手のカメハメ波部

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_7-4,   311, 107, 0x40,  0,  1,  20,  -50); -- オーラ
setEffScaleKey( spep_7-4, aura, 1.2, 1.2);
setShakeChara( spep_7, 0, 49, 5);
setEffRotateKey( spep_7-4, aura, -5);

shuchusen8 = entryEffectLife( spep_7, 906, 76, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ctGo2 = entryEffectLife( spep_7+10, 10008, 100, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_7+10, ctGo2, 100, 8);
setEffScaleKey(spep_7+10, ctGo2, 1.4, 1.4);

entryFade( spep_7+70, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_7+70,  0, 0,  0,   0);

setMoveKey(  spep_7+70,  1, 360,  800,   0);

setScaleKey( spep_7+75, 0, 1.7, 1.7);

removeAllEffect(spep_7+77);

spep_8=spep_7+78; --260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setMoveKey(  spep_8,  1, 150,  900,   0);
changeAnime( spep_8,   1, 106 ); --敵モーション

changeAnime( spep_8, 0, 31);                                    -- かめはめ発射ポーズ
setDisp( spep_8, 1, 1);

setMoveKey(  spep_8-1,    0,      0,  0,   0);
setMoveKey(  spep_8,    0,      -50,  -100,   0);
setMoveKey(  spep_8+25,    0,      -250,  -200,   -30);


kamehame_beam = entryEffectLife( spep_8, SP_02, 109, 0x40,  0,  300,  50,  -50);   -- 伸びるかめはめ波
playSe( spep_8, SE_07);

sen2 = entryEffectLife( spep_8, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_8, sen2, 160);
setEffScaleKey( spep_8, sen2, 1.5, 1.5);
setShakeChara( spep_8+10, 0, 24, 50);
setEffAlphaKey(spep_8, sen2, 200);

setShakeChara( spep_8, 1, 60, 55);

dragon_beam_st = entryEffectLife( spep_8, SP_05, 68, 0x80,  -1, 0,  0,  0);   -- ドラゴン
setEffScaleKey( spep_8, dragon_beam_st, 1.2, 1.2);
setEffRotateKey( spep_8,dragon_beam_st,-20);
setEffShake(spep_8, dragon_beam_st, 32, 5);
setEffAlphaKey(spep_8+8, dragon_beam_st, 255);
setEffAlphaKey(spep_8+30, dragon_beam_st, 255);
setEffAlphaKey(spep_8+40, dragon_beam_st, 0);
setEffScaleKey(spep_8+8, dragon_beam_st, 0.0, 0.0);
setEffScaleKey(spep_8+12, dragon_beam_st, 1.3, 1.3);
setEffScaleKey(spep_8+32, dragon_beam_st, 1.3, 1.3);
setEffScaleKey(spep_8+40, dragon_beam_st, 6.0, 6.0);

-- 途中からカメハメハが伸びる
setMoveKey(  spep_8+30,    0,   -550,  -450,   -60); --650
setMoveKey(  spep_8+69,    0,   -950,  -50,   -90); --1000 600
setDisp( spep_8+60, 0, 0);


-- ** エフェクト等 ** --
--entryFadeBg( spep_8, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_8+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
--entryFadeBg( spep_8+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景
entryFadeBg( spep_8, 0, 68, 0, 10, 10, 10, 150);       -- ベース暗め　背景

setMoveKey(  spep_8+18,  1, 100,  400,   0);
setRotateKey( spep_8+18,  1,  0 );
setScaleKey( spep_8+18, 1,  1.6, 1.6);

setMoveKey(  spep_8+43,  1, 0,  -100,   0);

hit_eff_1 = entryEffect( spep_8+43,  4,  0x40,  -1,  0,  220, 470);--HIT
hit_eff_2 = entryEffect( spep_8+43,  906,  0x40,  -1,  0,  220, 470);
hit_eff_3 = entryEffect( spep_8+43,  908,  0x40,  -1,  0,  220, 470);


setEffScaleKey( spep_8+43, hit_eff_1, 1.5, 1.5);
setEffScaleKey( spep_8+43, hit_eff_2, 1.5, 1.5);
setEffScaleKey( spep_8+43, hit_eff_3, 1.5, 1.5);

playSe( spep_8+43, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_8+43, 1, 108);
setMoveKey(  spep_8+43, 1,  0,    -250,  0);
setMoveKey(  spep_8+57, 1,  640,    500,  0);
setScaleKey( spep_8+43, 1,  1.6, 1.6);
setScaleKey( spep_8+46, 1,  1.5, 1.5);
setScaleKey( spep_8+56, 1,  0.2, 0.2);
setRotateKey( spep_8+56,  1,  0 );

setShake(spep_8,60, 10);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_8+8, 10012, 68, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_8+8, ctZuo, 32, 5);
setEffAlphaKey(spep_8+8, ctZuo, 255);
setEffAlphaKey(spep_8+30, ctZuo, 255);
setEffAlphaKey(spep_8+40, ctZuo, 0);
setEffScaleKey(spep_8+8, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_8+12, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_8+32, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_8+40, ctZuo, 6.0, 6.0);
playSe( spep_8+40, SE_07);

--[[
ct = entryEffectLife( spep_8+40, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_8+40, ct, 99, 20);
setEffScaleKey( spep_8+40, ct, 2.4, 2.4);
setEffRotateKey(spep_8+40, ct, 70);
setEffAlphaKey(spep_8+40, ct, 255);
setEffAlphaKey(spep_8+60, ct, 255);
setEffAlphaKey(spep_8+80, ct, 0);
--]]

entryFade( spep_8+54, 5,  10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_8+60, 1,  640,    400,  0);
removeAllEffect(spep_8+60);

spep_5 = spep_8+64;

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
ctGa = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ctGa, 30, 10);
setEffRotateKey( spep_5+15, ctGa, -40);
setEffScaleKey( spep_5+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ctGa, 255);
setEffAlphaKey( spep_5+105, ctGa, 255);
setEffAlphaKey( spep_5+115, ctGa, 0);

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setVisibleUI(0, 0);

changeAnime( 0, 0, 0);                       -- 溜め!
changeAnime( 30, 0, 17);  
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);

setMoveKey(   0,   0, 0, -54, 0);
setMoveKey(    1,   0, 0, -54, 0);
setMoveKey(    2,   0, 0, -54, 0);
setMoveKey(    3,   0, 0, -54, 0);
setMoveKey(    4,   0, 0, -54, 0);
setMoveKey(    5,   0, 0, -54, 0);
setMoveKey(   15,   0,  0, -54,  0);
setMoveKey(  125,   0,  0, -54, 0);

setRotateKey( 0,  0,  0 );
setRotateKey( 1,  0,  0 );
setRotateKey( 2,  0,  0 );
setRotateKey( 3,  0,  0 );
setRotateKey( 4,  0,  0 );
setRotateKey( 5,  0,  0 );

--playSe( 20, 1036); 
--[[
playSe( 45, 1036);
playSe( 65, 1036); 
playSe( 85, 1036);  
playSe( 115, 1036); 
]]

--v4.11修正
SE005 = playSe( 50, 1036);
stopSe(74,SE005,5);
SE006 = playSe( 74, 1036);
stopSe(98,SE006,5);
SE007 = playSe( 98, 1036);
stopSe(122,SE007,5);
--SE008 = playSe( 117, 1036);
--stopSe(132,SE008,5);

playSe( 30, 1035); --かめはめ波

entryEffect(  30,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  30,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

shuchusen5 = entryEffectLife( 30, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 95, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);

--[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
--setShake( 30, 125, 15);

-- 書き文字エントリー
ctGo = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ctGo, 95, 8);
setEffScaleKey(30, ctGo, 1.4, 1.4);

--entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 127;
setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 1.4, 1.4);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.0, 1.0);
setMoveKey(  spep_6,  1, 1700,  0,   0);
setRotateKey( spep_6,  1,  -5 );
setRotateKey( spep_6,  0,  -10 );

--P移動
setMoveKey(  spep_6-1,    0,      0,  0,   0);
setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+15,    0,   0,  0,   0);

setMoveKey(  spep_6+35,    0,   -150,  0,   0);

playSe( spep_6+35, 1018);


setMoveKey(  spep_6+45,  0, 700,  0,   0);
setMoveKey(  spep_6+48,  0, 700,  0,   0);
setMoveKey(  spep_6+49,  0, -1700,  0,   0);

entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setEnvZoomEnable(spep_6+50,1);

setScaleKey( spep_6+49, 0, 1.4, 1.4);
setScaleKey( spep_6+50, 0, 1.4, 1.4);

--右大パンチ

setMoveKey(  spep_6+50,  0, -1700,  0,   0);
setMoveKey(  spep_6+51,  0, -700,  0,   0);

setMoveKey(  spep_6+50,  1, 1700,  0,   0);
setMoveKey(  spep_6+51,  1, 550,  0,   0);

entryFadeBg( spep_6, 0, 265, 0, 10, 10, 10, 180);       -- ベース暗め　背景

ryusen_1=entryEffectLife( spep_6, 920, 265, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  spep_6, ryusen_1, 1.3, 1.3);

setShakeChara( spep_6, 0, 179, 15);
setShakeChara( spep_6, 1, 179, 15);
--setShake(spep_6,179, 10);
--setShake(spep_6+50,129, 20);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 272; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setDisp(SP_dodge+10, 0, 0);
setDisp(SP_dodge+10, 1, 0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end



setMoveKey(  spep_6+61,  1, 20,  0,   0);

changeAnime( spep_6+60,   0, 11 );--パンチ3
playSe( spep_6+61,1009);--SE
entryEffect(  spep_6+60,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+61, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+61,   1, 108 ); --敵モーション


--追い討ち移動

setMoveKey(  spep_6+66,  0, -200,  0,   0);
setMoveKey(  spep_6+76,  0, -150,  0,   0);

setMoveKey(  spep_6+66,  1, 220,  0,   0);
setMoveKey(  spep_6+86,  1, -50,  0,   0);

changeAnime( spep_6+66, 0, 3); 

--パンチの嵐

changeAnime( spep_6+85,   0, 9 );--パンチ1
playSe( spep_6+86,1000);--SE
entryEffect(  spep_6+85,   1,   0,  1,   0,  0,  0);
setDamage( spep_6+86, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+86,   1, 106 ); --敵モーション

setMoveKey(  spep_6+86,  0, -150,  0,   0);
setMoveKey(  spep_6+94,  0, -120,  0,   0);

setMoveKey(  spep_6+86,  1, -10,  0,   0);
setMoveKey(  spep_6+94,  1, 20,  10,   0);

setEnvZoomEnable(spep_6+90,1);

changeAnime( spep_6+93,   0, 12);--キック1
playSe( spep_6+94,1001);--SE
entryEffect(  spep_6+93,  2,   0,  1,   0,  0,  0);
setDamage( spep_6+94, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+94,   1, 108 ); --敵モーション

setMoveKey(  spep_6+94,  0, -120,  0,   0);
setMoveKey(  spep_6+102,  0, -90,  0,   0);

setMoveKey(  spep_6+94,  1, 20,  10,   0);
setMoveKey(  spep_6+102,  1, 50,  20,   0);

changeAnime( spep_6+101,   0, 9);--パンチ1
playSe( spep_6+102,1006);--SE
entryEffect(  spep_6+101,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+102, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+102,   1, 106 ); --敵モーション

setMoveKey(  spep_6+102,  0, -90,  0,   0);
setMoveKey(  spep_6+110,  0, -60,  0,   0);

setMoveKey(  spep_6+102,  1, 50,  20,   0);
setMoveKey(  spep_6+110,  1, 80,  30,   0);

setEnvZoomEnable(spep_6+89,0);-- -18

changeAnime( spep_6+109,   0, 11);--パンチ3
playSe( spep_6+110,1009);--SE
entryEffect(  spep_6+109,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+110, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+110,   1, 106 ); --敵モーション

setMoveKey(  spep_6+110,  0, -90,  0,   0);
setMoveKey(  spep_6+118,  0, -60,  0,   0);

setMoveKey(  spep_6+110,  1, 80,  30,   0);
setMoveKey(  spep_6+118,  1, 110,  40,   0);

setEnvZoomEnable(spep_6+110,1);

changeAnime( spep_6+117,   0, 12);--キック1
playSe( spep_6+118,1001);--SE
entryEffect(  spep_6+117,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+118, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+118,   1, 108 ); --敵モーション

setMoveKey(  spep_6+118,  0, -60,  0,   0);
setMoveKey(  spep_6+126,  0, -30,  0,   0);

setMoveKey(  spep_6+118,  1, 110,  40,   0);
setMoveKey(  spep_6+126,  1, 140,  50,   0);

--setEnvZoomEnable(spep_6+121,1);

changeAnime( spep_6+125,   0, 14);--キック3
playSe( spep_6+126,1025);--SE
entryEffect(  spep_6+125,   3,   0,  1,   0,  0,  0);
setDamage( spep_6+126, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+126,   1, 108 ); --敵モーション

setMoveKey(  spep_6+126,  0, -30,  0,   0);
setMoveKey(  spep_6+134,  0, 0,  0,   0);

setMoveKey(  spep_6+126,  1, 140,  100,   0);
setMoveKey(  spep_6+134,  1, 360,  800,   0);

setEnvZoomEnable(spep_6+133,0);

setDisp( spep_6+160, 1, 0);



-- ** エフェクト等 ** --
setShake(spep_6+155, 5, 40);

kamebg = entryEffectLife( spep_6+46, SP_04, 88, 0x40+0x80,  0, 300,  250,  0);   -- 格闘時の背景
setEffAlphaKey(spep_6+46, kamebg, 0);
setEffAlphaKey(spep_6+49, kamebg, 255);

shuchusen8 = entryEffectLife( spep_6+50, 906, 88, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ctDoga = entryEffectLife( spep_6+85, 10017, 52, 0, -1, 0, 0, 200); -- ドガガガッ
setEffShake(spep_6+85, ctDoga, 32, 5);
setEffAlphaKey(spep_6+85, ctDoga, 255);
setEffAlphaKey(spep_6+123, ctDoga, 255);
setEffAlphaKey(spep_6+133, ctDoga, 0);
setEffScaleKey(spep_6+83, ctDoga, 0.0, 0.0);
setEffScaleKey(spep_6+89, ctDoga, 1.8, 1.8);
setEffScaleKey(spep_6+123, ctDoga, 1.8, 1.8);
setEffScaleKey(spep_6+133, ctDoga, 6.0, 6.0);

entryFade( spep_6+128, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( spep_6+132, 0, 1.4, 1.4);

spep_7=spep_6+178-40; --211 260


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( spep_7-4, 0, 30);                       -- 溜め!
setDisp( spep_7, 0, 1);
setScaleKey( spep_7-4, 0, 3.0, 3.0);
setScaleKey( spep_7, 0, 3.0, 3.0);
setScaleKey( spep_7+15, 0, 1.7, 1.7);

--[[
playSe( spep_7+15, 1034);
playSe( spep_7+35, 1034);
playSe( spep_7+55, 1034);
]]

--v4.11修正
SE001 = playSe( spep_7+15, 1034);
stopSe( spep_7+35, SE001, 10);
SE002 = playSe( spep_7+35, 1034);
stopSe( spep_7+55, SE002, 10);
SE003 = playSe( spep_7+55, 1034);
stopSe( spep_7+80, SE003, 10);
--playSe( spep_7+75, 1034);
--playSe( spep_7+113, SE_03);

--setMoveKey(  spep_7-1,  0, -350,  -650,   0);
--setMoveKey(  spep_7+10,  0, 0, 0,   0);


--entryEffect(  spep_7+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_7+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--playSe( spep_7+20, SE_04);
--setEnvZoomEnable(spep_7+10,1);

kame_hand = entryEffect( spep_7+10, SP_01, 0x40,  0,  300,  -30,  24);   -- 手のカメハメ波部

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_7-4,   311, 76, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( spep_7-4, aura, 1.2, 1.2);
setShakeChara( spep_7, 0, 49, 5);
setEffRotateKey( spep_7-4, aura, -5);

shuchusen8 = entryEffectLife( spep_7, 906, 76, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ctGo2 = entryEffectLife( spep_7+10, 10008, 100, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_7+10, ctGo2, 100, 8);
setEffScaleKey(spep_7+10, ctGo2, 1.4, 1.4);

entryFade( spep_7+70, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_7+70,  0, 0,  0,   0);

setMoveKey(  spep_7+70,  1, 360,  800,   0);

setScaleKey( spep_7+75, 0, 1.7, 1.7);

removeAllEffect(spep_7+77);

spep_8=spep_7+78; --260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setMoveKey(  spep_8,  1, 150,  900,   0);
changeAnime( spep_8,   1, 106 ); --敵モーション

changeAnime( spep_8, 0, 31);                                    -- かめはめ発射ポーズ
setDisp( spep_8, 1, 1);

setMoveKey(  spep_8-1,    0,      0,  0,   0);
setMoveKey(  spep_8,    0,      -50,  -100,   0);
setMoveKey(  spep_8+25,    0,      -250,  -200,   -30);


kamehame_beam = entryEffectLife( spep_8, SP_02, 109, 0x40,  0,  300,  50,  -50);   -- 伸びるかめはめ波
playSe( spep_8, SE_07);

sen2 = entryEffectLife( spep_8, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_8, sen2, 160);
setEffScaleKey( spep_8, sen2, 1.5, 1.5);
setShakeChara( spep_8+10, 0, 24, 50);
setEffAlphaKey(spep_8, sen2, 200);

setShakeChara( spep_8, 1, 60, 55);

dragon_beam_st = entryEffectLife( spep_8, SP_05, 68, 0x80,  -1, 0,  0,  0);   -- ドラゴン
setEffScaleKey( spep_8, dragon_beam_st, 1.2, 1.2);
setEffRotateKey( spep_8,dragon_beam_st,-20);
setEffShake(spep_8, dragon_beam_st, 32, 5);
setEffAlphaKey(spep_8+8, dragon_beam_st, 255);
setEffAlphaKey(spep_8+30, dragon_beam_st, 255);
setEffAlphaKey(spep_8+40, dragon_beam_st, 0);
setEffScaleKey(spep_8+8, dragon_beam_st, 0.0, 0.0);
setEffScaleKey(spep_8+12, dragon_beam_st, 1.3, 1.3);
setEffScaleKey(spep_8+32, dragon_beam_st, 1.3, 1.3);
setEffScaleKey(spep_8+40, dragon_beam_st, 6.0, 6.0);

-- 途中からカメハメハが伸びる
setMoveKey(  spep_8+30,    0,   -550,  -450,   -60); --650
setMoveKey(  spep_8+69,    0,   -950,  -50,   -90); --1000 600
setDisp( spep_8+60, 0, 0);


-- ** エフェクト等 ** --
--entryFadeBg( spep_8, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_8+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
--entryFadeBg( spep_8+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景
entryFadeBg( spep_8, 0, 68, 0, 10, 10, 10, 150);       -- ベース暗め　背景

setMoveKey(  spep_8+18,  1, 100,  400,   0);
setRotateKey( spep_8+18,  1,  0 );
setScaleKey( spep_8+18, 1,  1.6, 1.6);

setMoveKey(  spep_8+43,  1, 0,  -100,   0);

hit_eff_1 = entryEffect( spep_8+43,  4,  0x40,  -1,  0,  -320, 470);--HIT
hit_eff_2 = entryEffect( spep_8+43,  906,  0x40,  -1,  0,  -320, 470);
hit_eff_3 = entryEffect( spep_8+43,  908,  0x40,  -1,  0,  -320, 470);


setEffScaleKey( spep_8+43, hit_eff_1, 1.5, 1.5);
setEffScaleKey( spep_8+43, hit_eff_2, 1.5, 1.5);
setEffScaleKey( spep_8+43, hit_eff_3, 1.5, 1.5);

playSe( spep_8+43, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_8+43, 1, 108);
setMoveKey(  spep_8+43, 1,  0,    -250,  0);
setMoveKey(  spep_8+57, 1,  640,    500,  0);
setScaleKey( spep_8+43, 1,  1.6, 1.6);
setScaleKey( spep_8+46, 1,  1.5, 1.5);
setScaleKey( spep_8+56, 1,  0.2, 0.2);
setRotateKey( spep_8+56,  1,  0 );

setShake(spep_8,60, 10);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_8+8, 10012, 68, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_8+8, ctZuo, 32, 5);
setEffAlphaKey(spep_8+8, ctZuo, 255);
setEffAlphaKey(spep_8+30, ctZuo, 255);
setEffAlphaKey(spep_8+40, ctZuo, 0);
setEffScaleKey(spep_8+8, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_8+12, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_8+32, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_8+40, ctZuo, 6.0, 6.0);
playSe( spep_8+40, SE_07);

--[[
ct = entryEffectLife( spep_8+40, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_8+40, ct, 99, 20);
setEffScaleKey( spep_8+40, ct, 2.4, 2.4);
setEffRotateKey(spep_8+40, ct, 70);
setEffAlphaKey(spep_8+40, ct, 255);
setEffAlphaKey(spep_8+60, ct, 255);
setEffAlphaKey(spep_8+80, ct, 0);
--]]

entryFade( spep_8+54, 5,  10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_8+60, 1,  640,    400,  0);
removeAllEffect(spep_8+60);

spep_5 = spep_8+64;
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
ctGa = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ctGa, 30, 10);
setEffRotateKey( spep_5+15, ctGa, -40);
setEffScaleKey( spep_5+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ctGa, 255);
setEffAlphaKey( spep_5+105, ctGa, 255);
setEffAlphaKey( spep_5+115, ctGa, 0);

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);

end

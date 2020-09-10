color_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150707;	--瞬間移動
SP_02 = 150708;	--ラッシュ
SP_03 = 150709;	--気弾溜め
SP_04 = 150710;	--気弾発射
SP_05 = 150711;	--ソード出す
SP_06 = 150712;	--ソード振りかぶる
SP_07 = 150713;	--ソード構え
SP_08 = 150714;	--ソード斬りかかる
SP_09 = 150715;	--斬撃
SP_10 = 150716;	--フィニッシュ
SP_11 = 150718;	--ラッシュ（敵）
SP_12 = 150719;	--ソード出す（敵）
SP_13 = 150720;	--フィニッシュ（敵）

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

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,   600, -800,   0);
setMoveKey(   0,   1,   600, -800,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.2, 1.2);

------------------------------------------------------
-- SP_01 = 150707;	--瞬間移動
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

spep_1=0;

syun_1 = entryEffectLife(spep_1, SP_01 , 56, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_1, syun_1, 0, 0, 0);
setEffScaleKey(spep_1, syun_1, 1.0 ,1.0);
setEffAlphaKey(spep_1, syun_1, 255);

setEffScaleKey(spep_1+56, syun_1, 1.0 ,1.0);

--36 瞬間移動音
playSe(spep_1+36,43);

entryFade(spep_1+50,5,2,5,255,255,255,255);

------------------------------------------------------
-- SP_02 = 150708;	--ラッシュ　60-219
------------------------------------------------------
spep_2 = spep_1+57;

syun_2 = entryEffectLife( spep_2,  SP_02 , 157,0x100,-1,0,0,0);

--60　瞬間移動音
playSe(spep_2,43);

setEffMoveKey(spep_2, syun_2, 0, 0, 0);
setEffScaleKey(spep_2, syun_2, 1.0 ,1.0);
setEffAlphaKey(spep_2, syun_2, 255);
setEffShake(spep_2, syun_2, 159, 10);

entryFadeBg( spep_2, 0, 157, 0, 10, 10, 10, 200);

changeAnime(spep_2,1,101);

setDisp(spep_2, 1,1);
setMoveKey(spep_2,1,110,0,0);
setScaleKey(spep_2,1,1.2,1.2);
setRotateKey(spep_2,1,0);

--集中線
shuchusen2a = entryEffectLife( spep_2, 906, 25, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_2, shuchusen2a, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2a, 1.4, 1.4);
setEffAlphaKey( spep_2, shuchusen2a, 255);
setEffRotateKey( spep_2, shuchusen2a, 0);

----------------------------------------------------
-- 回避 
----------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 72; --エンドフェイズのフレーム数を置き換える

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
-----------------------------------------------------

setMoveKey(spep_2+21,1,110,0,0);
setScaleKey(spep_2+21,1,1.2,1.2);
setRotateKey(spep_2+21,1,0);

changeAnime(spep_2+22,1,106);

setMoveKey(spep_2+22,1,110,0,0);
setScaleKey(spep_2+22,1,1.2,1.2);
setRotateKey(spep_2+22,1,300);

--82蹴りヒット音
playSe(spep_2+22,1014);

setMoveKey(spep_2+23,1,110,0,0);
setScaleKey(spep_2+23,1,1.2,1.2);
setRotateKey(spep_2+23,1,300);

setScaleKey(spep_2+24,1,1.2,1.2);
setRotateKey(spep_2+24,1,300);

setScaleKey(spep_2+25,1,1.2,1.2);
setRotateKey(spep_2+25,1,300);

setMoveKey(spep_2+26,1,120,0,0);
setScaleKey(spep_2+26,1,1.4,1.4);
setRotateKey(spep_2+26,1,300);

--集中線
shuchusen2b = entryEffectLife( spep_2+26, 920, 85, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_2+26, shuchusen2b, 0, 0, 0);
setEffScaleKey( spep_2+26, shuchusen2b, 1.4, 1.4);
setEffAlphaKey( spep_2+26, shuchusen2b, 255);
setEffRotateKey( spep_2+26, shuchusen2b, 0);

setScaleKey(spep_2+27,1,1.4,1.4);
setRotateKey(spep_2+27,1,300);

setScaleKey(spep_2+28,1,1.4,1.4);
setRotateKey(spep_2+28,1,300);

setMoveKey(spep_2+30,1,110,0,0);
setScaleKey(spep_2+30,1,1.3,1.3);
setRotateKey(spep_2+30,1,300);

setScaleKey(spep_2+32,1,1.2,1.2);
setRotateKey(spep_2+32,1,300);

--92蹴りヒット音

playSe(spep_2+32,1009);

setMoveKey(spep_2+34,1,115,-5,0);
setMoveKey(spep_2+36,1,110,-5,0);
setMoveKey(spep_2+38,1,115,-5,0);
setMoveKey(spep_2+40,1,115,-10,0);

--100蹴りヒット
playSe(spep_2+40,1010);

setMoveKey(spep_2+42,1,115,-5,0);
setMoveKey(spep_2+44,1,115,-10,0);
setMoveKey(spep_2+46,1,110,-10,0);
setMoveKey(spep_2+48,1,115,-10,0);
setMoveKey(spep_2+50,1,115,-5,0);
setMoveKey(spep_2+52,1,110,-5,0);
setMoveKey(spep_2+54,1,105,-5,0);
setMoveKey(spep_2+56,1,100,-5,0);

--116蹴りヒット
playSe(spep_2+56,1009);

setMoveKey(spep_2+58,1,95,-5,0);
setMoveKey(spep_2+60,1,95,-10,0);
setMoveKey(spep_2+62,1,90,-10,0);
setMoveKey(spep_2+64,1,90,-5,0);
setMoveKey(spep_2+66,1,85,0,0);
setMoveKey(spep_2+68,1,85,5,0);
setMoveKey(spep_2+70,1,75,10,0);
setMoveKey(spep_2+72,1,75,10,0);
setMoveKey(spep_2+74,1,80,5,0);

--136蹴りヒット
playSe(spep_2+76,1010);

setMoveKey(spep_2+76,1,70,5,0);
setMoveKey(spep_2+78,1,60,15,0);
setMoveKey(spep_2+80,1,60,10,0);
setMoveKey(spep_2+82,1,60,5,0);
setMoveKey(spep_2+84,1,65,0,0);
setMoveKey(spep_2+86,1,70,-5,0);
setMoveKey(spep_2+88,1,70,-10,0);--OK
setMoveKey(spep_2+90,1,75,-5,0);
setMoveKey(spep_2+92,1,80,-5,0);
setMoveKey(spep_2+94,1,90,0,0);
setMoveKey(spep_2+96,1,100,-5,0);
setMoveKey(spep_2+98,1,105,-5,0); --OK

--158蹴りヒット
playSe(spep_2+98,1009);

setMoveKey(spep_2+100,1,100,-10,0);
setMoveKey(spep_2+102,1,105,-5,0);
setMoveKey(spep_2+104,1,105,0,0);
setMoveKey(spep_2+106,1,110,0,0);
setMoveKey(spep_2+108,1,110,0,0);

--168大蹴りヒット
playSe(spep_2+108,1014);

setMoveKey(spep_2+110,1,110,0,0);
setScaleKey(spep_2+110,1,1.2,1.2);
setRotateKey(spep_2+110,1,300);

--集中線
shuchusen2c = entryEffectLife( spep_2+111, 906, 10, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_2+111, shuchusen2c, 0, 0, 0);
setEffScaleKey( spep_2+111, shuchusen2c, 1.4, 1.4);
setEffAlphaKey( spep_2+111, shuchusen2c, 255);
setEffRotateKey( spep_2+111, shuchusen2c, 0);

changeAnime(spep_2+111,1,108);

setMoveKey(spep_2+111,1,100,0,0);
setScaleKey(spep_2+111,1,1.8,1.8);
setRotateKey(spep_2+111,1,0);
setScaleKey(spep_2+113,1,1.5,1.5);

--集中線 ぶっ飛ばし流線
shuchusen2d = entryEffectLife( spep_2+128, 924,29, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_2+128, shuchusen2d, 0, -100, 0);
setEffScaleKey( spep_2+128, shuchusen2d, 1.3, 1.3);
setEffAlphaKey( spep_2+128, shuchusen2d, 255);
setEffRotateKey( spep_2+128, shuchusen2d, 300);

setMoveKey(spep_2+157,1,290,390,0);
setScaleKey(spep_2+157,1,0.1,0.1);
setRotateKey(spep_2+157,1,0);

setDisp(spep_2+157,1,0);

entryFade(spep_2+151,5,2,5,255,255,255,255);
------------------------------------------------------
-- SP_03 = 150709;	--気弾溜め 220-299
------------------------------------------------------
spep_3=spep_2+158;

syun_3 = entryEffectLife(spep_3, SP_03 ,77,0x100,-1,0,0,0);

setEffMoveKey(spep_3, syun_3, 0, 0, 0);
setEffScaleKey(spep_3, syun_3, 1.0 ,1.0);
setEffAlphaKey(spep_3, syun_3, 255);
setEffShake(spep_3, syun_3, 77, 10);

entryFadeBg( spep_3, 0, 77, 0, 10, 10, 10, 200);

--220　気ダメ
playSe(spep_3,SE_01);

shuchusen3 = entryEffectLife( spep_3, 921, 77, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.4, 1.4);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 180);

--playSe(spep_3+26,SE_02);

setEffMoveKey( spep_3+77, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3+77, shuchusen3, 1.4, 1.4);
setEffAlphaKey( spep_3+77, shuchusen3, 255);
setEffRotateKey( spep_3+77, shuchusen3, 180);

entryFade(spep_3+71,5,2,5,255,255,255,255);
------------------------------------------------------
-- SP_04 = 150710;	--気弾発射 300-419
------------------------------------------------------
spep_4=spep_3+78;

syun_4 = entryEffectLife(spep_4, SP_04 ,115,0x100,-1,0,0,0);

setEffMoveKey(spep_4, syun_4, 0, 0, 0);
setEffScaleKey(spep_4, syun_4, 1.0 ,1.0);
setEffAlphaKey(spep_4, syun_4, 255);
setEffShake(spep_4, syun_4, 117, 10);

entryFadeBg( spep_4, 0, 117, 0, 10, 10, 10, 200);

--集中線 ぶっ飛ばし流線
shuchusen4a = entryEffectLife( spep_4, 924,77,0x80, -1, 0,  0,  0); -- -493
setEffMoveKey( spep_4, shuchusen4a, -100, -200, 0);
setEffScaleKey( spep_4, shuchusen4a, 1.4, 1.4);
setEffAlphaKey( spep_4, shuchusen4a, 255);
setEffRotateKey( spep_4, shuchusen4a, 300);

--315 放つ
playSe(spep_4+15,1021);

changeAnime(spep_4+38,1,108);
setDisp(spep_4+38,1,1);
setMoveKey(spep_4+38,1,290,390,0);
setScaleKey(spep_4+38,1,0.1,0.1);
setRotateKey(spep_4+38,1,0);

--365 HIT
playSe(spep_4+76,1023);

setMoveKey(spep_4+76,1,240,340,0);
setScaleKey(spep_4+76,1,1.0,1.0);
setRotateKey(spep_4+76,1,0);
setDisp(spep_4+76,1,0);

--集中線
shuchusen4b = entryEffectLife( spep_4+77, 906, 38, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_4+77, shuchusen4b, 200, 300, 0);
setEffScaleKey( spep_4+77, shuchusen4b, 1.8, 1.8);
setEffAlphaKey( spep_4+77, shuchusen4b, 255);
setEffRotateKey( spep_4+77, shuchusen4b, 0);

entryFade(spep_4+109,5,2,5,255,255,255,255);
------------------------------------------------------
-- SP_05 = 150711;	--ソード出す 420-479
------------------------------------------------------
spep_5=spep_4+116;

syun_5 = entryEffectLife(spep_5, SP_05 ,51,0x100,-1,0,0,0);

setEffMoveKey(spep_5, syun_5, 0, 0, 0);
setEffScaleKey(spep_5, syun_5, 1.0 ,1.0);
setEffAlphaKey(spep_5, syun_5, 255);
setEffShake(spep_5, syun_5, 57, 10);

entryFadeBg( spep_5, 0, 51, 0, 10, 10, 10, 100);

--集中線
shuchusen5a = entryEffectLife( spep_5, 922, 15, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);

playSe(spep_5,SE_01);

--436
shuchusen5b = entryEffectLife( spep_5+16, 906, 35, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_5+16, shuchusen5b, 0, 0, 0);
setEffScaleKey( spep_5+16, shuchusen5b, 1.4, 1.4);
setEffAlphaKey( spep_5+16, shuchusen5b, 255);
setEffRotateKey( spep_5+16, shuchusen5b, 0);

entryFade(spep_5+45,5,2,5,255,255,255,255);
------------------------------------------------------
-- SP_06 = 150712;	--ソード振りかぶる 480-569
------------------------------------------------------
spep_6=spep_5+52;

syun_6 = entryEffectLife(spep_6, SP_06 ,89,0x100,-1,0,0,0);

setEffMoveKey(spep_6, syun_6, 0, 0, 0);
setEffScaleKey(spep_6, syun_6, 1.0 ,1.0);
setEffAlphaKey(spep_6, syun_6, 255);
setEffShake(spep_6, syun_6, 89, 10);

entryFadeBg( spep_6, 0, 89, 0, 10, 10, 10, 255);

--[[
--集中線
shuchusen6 = entryEffectLife( spep_6, 906, 89, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.4, 1.4);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);
]]--

playSe(spep_6,SE_02);

entryFade(spep_6+83,5,2,5,255,255,255,255);
------------------------------------------------------
-- SP_07 = 150713;	--ソード構え 570-669
------------------------------------------------------
spep_7=spep_6+90; 

syun_7 = entryEffectLife(spep_7, SP_07 ,99,0x100,-1,0,0,0);

setEffMoveKey(spep_7, syun_7, 0, 0, 0);
setEffScaleKey(spep_7, syun_7, 1.0 ,1.0);
setEffAlphaKey(spep_7, syun_7, 255);
setEffShake(spep_7, syun_7, 89, 10);

entryFadeBg( spep_7, 0, 99, 0, 10, 10, 10, 200);

--集中線
shuchusen7a = entryEffectLife( spep_7, 906, 99, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_7, shuchusen7a, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen7a, 1.4, 1.4);
setEffAlphaKey( spep_7, shuchusen7a, 255);
setEffRotateKey( spep_7, shuchusen7a, 0);

shuchusen7b = entryEffectLife( spep_7, 914, 99, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_7, shuchusen7b, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen7b, 1.8, 1.8);
setEffAlphaKey( spep_7, shuchusen7b, 255);
setEffRotateKey( spep_7, shuchusen7b, 30);

speff = entryEffect(  spep_7,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_7,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(spep_7,SE_04);

ctgogo = entryEffectLife( spep_7+3, 190006, 80, 0x100, -1, 0, 100, 500);    -- ゴゴゴゴ
setEffScaleKey( spep_7+19, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_7+19, ctgogo, 10);
setEffAlphaKey( spep_7+19, ctgogo, 255);

setEffScaleKey( spep_7+94, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_7+94, ctgogo, 10);
setEffAlphaKey( spep_7+94, ctgogo, 255);

setEffScaleKey( spep_7+99, ctgogo, 2.0, 2.0);
setEffRotateKey( spep_7+99, ctgogo, 10);
setEffAlphaKey( spep_7+99, ctgogo, 255);

entryFade(spep_7+93,5,2,5,255,255,255,255);
------------------------------------------------------
-- カードカットイン(75F開始 164終わり) 670-769
------------------------------------------------------
spep_8=spep_7+100;

-- ** 背景 ** --
entryFadeBg( spep_8, 0, 89, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** カードカットイン ** --
speff_8 = entryEffect( spep_8, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff_8, 1, 1);
setEffReplaceTexture( speff_8, 2, 0); -- カード差し替え
setEffReplaceTexture( speff_8, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen_8 = entryEffectLife( spep_8+1, 906, 89, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_8+1, shuchusen_8, 0, 0, 0);
setEffScaleKey( spep_8+1, shuchusen_8, 1.2, 1.2);
setEffAlphaKey( spep_8+1, shuchusen_8, 255);
setEffRotateKey( spep_8+1, shuchusen_8, 0);

-- ** 音 ** --
playSe(spep_8+5,SE_05);

entryFade(spep_8+83,5,10,5,255,255,255,255);
------------------------------------------------------
-- SP_08 = 150714;	--ソード斬りかかる 770-809
------------------------------------------------------
spep_9=spep_8+100;

syun_9 = entryEffectLife(spep_9, SP_08 ,39,0x100,-1,0,0,0);

setEffMoveKey(spep_9, syun_9, 0, 0, 0);
setEffScaleKey(spep_9, syun_9, 1.0 ,1.0);
setEffAlphaKey(spep_9, syun_9, 255);
setEffShake(spep_9, syun_9, 34, 10);

entryFadeBg( spep_9, 0, 39, 0, 10, 10, 10, 100);

playSe(spep_9,SE_07);

--集中線
shuchusen9 = entryEffectLife( spep_9, 906, 39, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_9, shuchusen9, 0, 0, 0);
setEffScaleKey( spep_9, shuchusen9, 1.4, 1.4);
setEffAlphaKey( spep_9, shuchusen9, 255);
setEffRotateKey( spep_9, shuchusen9, 0);

zuo = entryEffectLife( spep_9, 10012, 39, 0, -1, 30, 200, 0); -- ズオ
setEffMoveKey( spep_9, zuo, 150, 400, 0);
setEffScaleKey( spep_9, zuo, 1.5, 1.5);
setEffAlphaKey( spep_9, zuo, 255);
setEffRotateKey( spep_9, zuo, 20);
setEffShake( spep_9, zuo,39, 20);

entryFade(spep_9+33,5,2,5,255,255,255,255);
------------------------------------------------------
-- SP_09 = 150715;	--斬撃 810-907
------------------------------------------------------
spep_10=spep_9+40;

syun_10 = entryEffectLife(spep_10, SP_09 ,107,0x100,-1,0,0,0);

playSe(spep_10,1032);

setEffMoveKey(spep_10, syun_10, 0, 0, 0);
setEffScaleKey(spep_10, syun_10, 1.0 ,1.0);
setEffAlphaKey(spep_10, syun_10, 255);
setEffShake(spep_10, syun_10, 107, 10);

entryFadeBg( spep_10, 0, 60, 0, 10, 10, 10, 255);
entryFadeBg( spep_10+61, 0, 46, 0, 10, 10, 10, 100);

entryFade(spep_10+101,5,10,5,255,255,255,255);
------------------------------------------------------
-- SP_10 = 150716;	--フィニッシュ 908-
------------------------------------------------------
spep_11=spep_10+108;

syun_11 = entryEffect(spep_11+8, SP_10 ,0x100,-1,0,0,0);

setEffMoveKey(spep_10, syun_11, 0, 0, 0);
setEffScaleKey(spep_10, syun_11, 1.0 ,1.0);
setEffAlphaKey(spep_10, syun_11, 255);
setEffShake(spep_10, syun_11, 98, 10);

entryFadeBg( spep_11, 0, 110, 0, 10, 10, 10, 100);

playSe(spep_11,1024);

--集中線
shuchusen11 = entryEffectLife( spep_11, 906, 32, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_11, shuchusen11, 200, 300, 0);
setEffScaleKey( spep_11, shuchusen11, 1.8, 1.8);
setEffAlphaKey( spep_11, shuchusen11, 255);
setEffRotateKey( spep_11, shuchusen11, 0);

-- ダメージ表示
dealDamage(spep_11+16);

--entryFade( spep_11+90, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_11+90);

else
------------------------------------------------------
--敵側対応
------------------------------------------------------
setVisibleUI(0, 0);

spep_1=0;

syun_1 = entryEffectLife(spep_1, SP_01 , 56, 0x100, -1 ,0,0,0);

setEffMoveKey(spep_1, syun_1, 0, 0, 0);
setEffScaleKey(spep_1, syun_1, 1.0 ,1.0);
setEffAlphaKey(spep_1, syun_1, 255);

setEffScaleKey(spep_1+56, syun_1, 1.0 ,1.0);

--36 瞬間移動音
playSe(spep_1+36,43);

entryFade(spep_1+50,5,2,5,255,255,255,255);

------------------------------------------------------
-- SP_11 = 150718;	--ラッシュ　60-219
------------------------------------------------------
spep_2 = spep_1+57;

syun_2 = entryEffectLife( spep_2,  SP_02 , 157,0x100,-1,0,0,0);

--60　瞬間移動音
playSe(spep_2,43);

setEffMoveKey(spep_2, syun_2, 0, 0, 0);
setEffScaleKey(spep_2, syun_2, 1.0 ,1.0);
setEffAlphaKey(spep_2, syun_2, 255);

entryFadeBg( spep_2, 0, 157, 0, 10, 10, 10, 200);

changeAnime(spep_2,1,101);

setDisp(spep_2, 1,1);
setMoveKey(spep_2,1,110,0,0);
setScaleKey(spep_2,1,1.2,1.2);
setRotateKey(spep_2,1,0);

--集中線
shuchusen2a = entryEffectLife( spep_2, 906, 25, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_2, shuchusen2a, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2a, 1.4, 1.4);
setEffAlphaKey( spep_2, shuchusen2a, 255);
setEffRotateKey( spep_2, shuchusen2a, 0);

----------------------------------------------------
-- 回避 
----------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 72; --エンドフェイズのフレーム数を置き換える

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
-----------------------------------------------------

setEffShake(spep_2+21, syun_2, 138, 10);

setMoveKey(spep_2+21,1,110,0,0);
setScaleKey(spep_2+21,1,1.2,1.2);
setRotateKey(spep_2+21,1,0);

changeAnime(spep_2+22,1,106);

setMoveKey(spep_2+22,1,110,0,0);
setScaleKey(spep_2+22,1,1.2,1.2);
setRotateKey(spep_2+22,1,300);

--82蹴りヒット音
playSe(spep_2+22,1014);

setMoveKey(spep_2+23,1,110,0,0);
setScaleKey(spep_2+23,1,1.2,1.2);
setRotateKey(spep_2+23,1,300);

setScaleKey(spep_2+24,1,1.2,1.2);
setRotateKey(spep_2+24,1,300);

setScaleKey(spep_2+25,1,1.2,1.2);
setRotateKey(spep_2+25,1,300);

setMoveKey(spep_2+26,1,120,0,0);
setScaleKey(spep_2+26,1,1.4,1.4);
setRotateKey(spep_2+26,1,300);

--集中線
shuchusen2b = entryEffectLife( spep_2+26, 920, 85, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_2+26, shuchusen2b, 0, 0, 0);
setEffScaleKey( spep_2+26, shuchusen2b, 1.4, 1.4);
setEffAlphaKey( spep_2+26, shuchusen2b, 255);
setEffRotateKey( spep_2+26, shuchusen2b, 0);

setScaleKey(spep_2+27,1,1.4,1.4);
setRotateKey(spep_2+27,1,300);

setScaleKey(spep_2+28,1,1.4,1.4);
setRotateKey(spep_2+28,1,300);

setMoveKey(spep_2+30,1,110,0,0);
setScaleKey(spep_2+30,1,1.3,1.3);
setRotateKey(spep_2+30,1,300);

setScaleKey(spep_2+32,1,1.2,1.2);
setRotateKey(spep_2+32,1,300);

--92蹴りヒット音

playSe(spep_2+32,1009);

setMoveKey(spep_2+34,1,115,-5,0);
setMoveKey(spep_2+36,1,110,-5,0);
setMoveKey(spep_2+38,1,115,-5,0);
setMoveKey(spep_2+40,1,115,-10,0);

--100蹴りヒット
playSe(spep_2+40,1010);

setMoveKey(spep_2+42,1,115,-5,0);
setMoveKey(spep_2+44,1,115,-10,0);
setMoveKey(spep_2+46,1,110,-10,0);
setMoveKey(spep_2+48,1,115,-10,0);
setMoveKey(spep_2+50,1,115,-5,0);
setMoveKey(spep_2+52,1,110,-5,0);
setMoveKey(spep_2+54,1,105,-5,0);
setMoveKey(spep_2+56,1,100,-5,0);

--116蹴りヒット
playSe(spep_2+56,1009);

setMoveKey(spep_2+58,1,95,-5,0);
setMoveKey(spep_2+60,1,95,-10,0);
setMoveKey(spep_2+62,1,90,-10,0);
setMoveKey(spep_2+64,1,90,-5,0);
setMoveKey(spep_2+66,1,85,0,0);
setMoveKey(spep_2+68,1,85,5,0);
setMoveKey(spep_2+70,1,75,10,0);
setMoveKey(spep_2+72,1,75,10,0);
setMoveKey(spep_2+74,1,80,5,0);

--136蹴りヒット
playSe(spep_2+76,1010);

setMoveKey(spep_2+76,1,70,5,0);
setMoveKey(spep_2+78,1,60,15,0);
setMoveKey(spep_2+80,1,60,10,0);
setMoveKey(spep_2+82,1,60,5,0);
setMoveKey(spep_2+84,1,65,0,0);
setMoveKey(spep_2+86,1,70,-5,0);
setMoveKey(spep_2+88,1,70,-10,0);--OK
setMoveKey(spep_2+90,1,75,-5,0);
setMoveKey(spep_2+92,1,80,-5,0);
setMoveKey(spep_2+94,1,90,0,0);
setMoveKey(spep_2+96,1,100,-5,0);
setMoveKey(spep_2+98,1,105,-5,0); --OK

--158蹴りヒット
playSe(spep_2+98,1009);

setMoveKey(spep_2+100,1,100,-10,0);
setMoveKey(spep_2+102,1,105,-5,0);
setMoveKey(spep_2+104,1,105,0,0);
setMoveKey(spep_2+106,1,110,0,0);
setMoveKey(spep_2+108,1,110,0,0);

--168大蹴りヒット
playSe(spep_2+108,1014);

setMoveKey(spep_2+110,1,110,0,0);
setScaleKey(spep_2+110,1,1.2,1.2);
setRotateKey(spep_2+110,1,300);

--集中線
shuchusen2c = entryEffectLife( spep_2+111, 906, 10, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_2+111, shuchusen2c, 0, 0, 0);
setEffScaleKey( spep_2+111, shuchusen2c, 1.4, 1.4);
setEffAlphaKey( spep_2+111, shuchusen2c, 255);
setEffRotateKey( spep_2+111, shuchusen2c, 0);

changeAnime(spep_2+111,1,108);

setMoveKey(spep_2+111,1,100,0,0);
setScaleKey(spep_2+111,1,1.8,1.8);
setRotateKey(spep_2+111,1,0);
setScaleKey(spep_2+113,1,1.5,1.5);

--集中線 ぶっ飛ばし流線
shuchusen2d = entryEffectLife( spep_2+128, 924,29, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_2+128, shuchusen2d, 0, -100, 0);
setEffScaleKey( spep_2+128, shuchusen2d, 1.3, 1.3);
setEffAlphaKey( spep_2+128, shuchusen2d, 255);
setEffRotateKey( spep_2+128, shuchusen2d, 300);

setMoveKey(spep_2+157,1,290,390,0);
setScaleKey(spep_2+157,1,0.1,0.1);
setRotateKey(spep_2+157,1,0);

setDisp(spep_2+157,1,0);

entryFade(spep_2+151,5,2,5,255,255,255,255);
------------------------------------------------------
-- SP_03 = 150709;	--気弾溜め 220-299
------------------------------------------------------
spep_3=spep_2+158;

syun_3 = entryEffectLife(spep_3, SP_03 ,77,0x100,-1,0,0,0);

setEffMoveKey(spep_3, syun_3, 0, 0, 0);
setEffScaleKey(spep_3, syun_3, 1.0 ,1.0);
setEffAlphaKey(spep_3, syun_3, 255);
setEffShake(spep_3, syun_3, 77, 10);

entryFadeBg( spep_3, 0, 77, 0, 10, 10, 10, 200);

--220　気ダメ
playSe(spep_3,SE_01);

shuchusen3 = entryEffectLife( spep_3, 921, 77, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.4, 1.4);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 180);

--playSe(spep_3+26,SE_02);

setEffMoveKey( spep_3+77, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3+77, shuchusen3, 1.4, 1.4);
setEffAlphaKey( spep_3+77, shuchusen3, 255);
setEffRotateKey( spep_3+77, shuchusen3, 180);

entryFade(spep_3+71,5,2,5,255,255,255,255);
------------------------------------------------------
-- SP_04 = 150710;	--気弾発射 300-419
------------------------------------------------------
spep_4=spep_3+78;

syun_4 = entryEffectLife(spep_4, SP_04 ,115,0x100,-1,0,0,0);

setEffMoveKey(spep_4, syun_4, 0, 0, 0);
setEffScaleKey(spep_4, syun_4, 1.0 ,1.0);
setEffAlphaKey(spep_4, syun_4, 255);
setEffShake(spep_4, syun_4, 117, 10);

entryFadeBg( spep_4, 0, 117, 0, 10, 10, 10, 200);

--集中線 ぶっ飛ばし流線
shuchusen4a = entryEffectLife( spep_4, 924,77,0x80, -1, 0,  0,  0); -- -493
setEffMoveKey( spep_4, shuchusen4a, -100, -200, 0);
setEffScaleKey( spep_4, shuchusen4a, 1.4, 1.4);
setEffAlphaKey( spep_4, shuchusen4a, 255);
setEffRotateKey( spep_4, shuchusen4a, 300);

--315 放つ
playSe(spep_4+15,1021);

changeAnime(spep_4+38,1,108);
setDisp(spep_4+38,1,1);
setMoveKey(spep_4+38,1,290,390,0);
setScaleKey(spep_4+38,1,0.1,0.1);
setRotateKey(spep_4+38,1,0);

--365 HIT
playSe(spep_4+76,1023);

setMoveKey(spep_4+76,1,240,340,0);
setScaleKey(spep_4+76,1,1.0,1.0);
setRotateKey(spep_4+76,1,0);
setDisp(spep_4+76,1,0);

--集中線
shuchusen4b = entryEffectLife( spep_4+77, 906, 38, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_4+77, shuchusen4b, 200, 300, 0);
setEffScaleKey( spep_4+77, shuchusen4b, 1.8, 1.8);
setEffAlphaKey( spep_4+77, shuchusen4b, 255);
setEffRotateKey( spep_4+77, shuchusen4b, 0);

entryFade(spep_4+109,5,2,5,255,255,255,255);
------------------------------------------------------
-- SP_12 = 150719;	--ソード出す（敵） 420-479
------------------------------------------------------
spep_5=spep_4+116;

syun_5 = entryEffectLife(spep_5, SP_12 ,51,0x100,-1,0,0,0);

setEffMoveKey(spep_5, syun_5, 0, 0, 0);
setEffScaleKey(spep_5, syun_5, 1.0 ,1.0);
setEffAlphaKey(spep_5, syun_5, 255);
setEffShake(spep_5, syun_5, 57, 10);

entryFadeBg( spep_5, 0, 51, 0, 10, 10, 10, 100);

--集中線
shuchusen5a = entryEffectLife( spep_5, 922, 15, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);

playSe(spep_5,SE_01);

--436
shuchusen5b = entryEffectLife( spep_5+16, 906, 35, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_5+16, shuchusen5b, 0, 0, 0);
setEffScaleKey( spep_5+16, shuchusen5b, 1.4, 1.4);
setEffAlphaKey( spep_5+16, shuchusen5b, 255);
setEffRotateKey( spep_5+16, shuchusen5b, 0);

entryFade(spep_5+45,5,2,5,255,255,255,255);
------------------------------------------------------
-- SP_06 = 150712;	--ソード振りかぶる 480-569
------------------------------------------------------
spep_6=spep_5+52;

syun_6 = entryEffectLife(spep_6, SP_06 ,89,0x100,-1,0,0,0);

setEffMoveKey(spep_6, syun_6, 0, 0, 0);
setEffScaleKey(spep_6, syun_6, -1.0 ,1.0);
setEffAlphaKey(spep_6, syun_6, 255);
setEffShake(spep_6, syun_6, 89, 10);

entryFadeBg( spep_6, 0, 89, 0, 10, 10, 10, 255);

--[[
--集中線
shuchusen6 = entryEffectLife( spep_6, 906, 89, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.4, 1.4);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);
]]--

playSe(spep_6,SE_02);

entryFade(spep_6+83,5,2,5,255,255,255,255);
------------------------------------------------------
-- SP_07 = 150713;	--ソード構え 570-669
------------------------------------------------------
spep_7=spep_6+90; 

syun_7 = entryEffectLife(spep_7, SP_07 ,99,0x100,-1,0,0,0);

setEffMoveKey(spep_7, syun_7, 0, 0, 0);
setEffScaleKey(spep_7, syun_7, -1.0 ,1.0);
setEffAlphaKey(spep_7, syun_7, 255);
setEffShake(spep_7, syun_7, 89, 10);

entryFadeBg( spep_7, 0, 99, 0, 10, 10, 10, 200);

--集中線
shuchusen7a = entryEffectLife( spep_7, 906, 99, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_7, shuchusen7a, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen7a, 1.4, 1.4);
setEffAlphaKey( spep_7, shuchusen7a, 255);
setEffRotateKey( spep_7, shuchusen7a, 0);

shuchusen7b = entryEffectLife( spep_7, 914, 99, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_7, shuchusen7b, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen7b, 1.8, 1.8);
setEffAlphaKey( spep_7, shuchusen7b, 255);
setEffRotateKey( spep_7, shuchusen7b, -30);
--[[
speff = entryEffect(  spep_7,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_7,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
playSe(spep_7,SE_04);

ctgogo = entryEffectLife( spep_7+3, 190006, 80, 0x100, -1, 0, 100, 500);    -- ゴゴゴゴ
setEffScaleKey( spep_7+19, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_7+19, ctgogo, 10);
setEffAlphaKey( spep_7+19, ctgogo, 255);

setEffScaleKey( spep_7+94, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_7+94, ctgogo, 10);
setEffAlphaKey( spep_7+94, ctgogo, 255);

setEffScaleKey( spep_7+99, ctgogo, -2.0, 2.0);
setEffRotateKey( spep_7+99, ctgogo, 10);
setEffAlphaKey( spep_7+99, ctgogo, 255);

entryFade(spep_7+93,5,2,5,255,255,255,255);
------------------------------------------------------
-- カードカットイン(75F開始 164終わり) 670-769
------------------------------------------------------
spep_8=spep_7+100;

-- ** 背景 ** --
entryFadeBg( spep_8, 0, 89, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** カードカットイン ** --
speff_8 = entryEffect( spep_8, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff_8, 1, 1);
setEffReplaceTexture( speff_8, 2, 0); -- カード差し替え
setEffReplaceTexture( speff_8, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen_8 = entryEffectLife( spep_8+1, 906, 89, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_8+1, shuchusen_8, 0, 0, 0);
setEffScaleKey( spep_8+1, shuchusen_8, 1.2, 1.2);
setEffAlphaKey( spep_8+1, shuchusen_8, 255);
setEffRotateKey( spep_8+1, shuchusen_8, 0);

-- ** 音 ** --
playSe(spep_8+5,SE_05);

entryFade(spep_8+83,5,10,5,255,255,255,255);
------------------------------------------------------
-- SP_08 = 150714;	--ソード斬りかかる 770-809
------------------------------------------------------
spep_9=spep_8+100;

syun_9 = entryEffectLife(spep_9, SP_08 ,39,0x100,-1,0,0,0);

setEffMoveKey(spep_9, syun_9, 0, 0, 0);
setEffScaleKey(spep_9, syun_9, -1.0 ,1.0);
setEffAlphaKey(spep_9, syun_9, 255);
setEffShake(spep_9, syun_9, 34, 10);

entryFadeBg( spep_9, 0, 39, 0, 10, 10, 10, 100);

playSe(spep_9,SE_07);

--集中線
shuchusen9 = entryEffectLife( spep_9, 906, 39, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_9, shuchusen9, 0, 0, 0);
setEffScaleKey( spep_9, shuchusen9, 1.4, 1.4);
setEffAlphaKey( spep_9, shuchusen9, 255);
setEffRotateKey( spep_9, shuchusen9, 0);

zuo = entryEffectLife( spep_9, 10012, 39, 0, -1, 30, 200, 0); -- ズオ
setEffMoveKey( spep_9, zuo, 150, 400, 0);
setEffScaleKey( spep_9, zuo, 1.5, 1.5);
setEffAlphaKey( spep_9, zuo, 255);
setEffRotateKey( spep_9, zuo, 20);
setEffShake( spep_9, zuo,39, 20);

entryFade(spep_9+33,5,2,5,255,255,255,255);
------------------------------------------------------
-- SP_09 = 150715;	--斬撃 810-907
------------------------------------------------------
spep_10=spep_9+40;

syun_10 = entryEffectLife(spep_10, SP_09 ,107,0x100,-1,0,0,0);

playSe(spep_10,1032);

setEffMoveKey(spep_10, syun_10, 0, 0, 0);
setEffScaleKey(spep_10, syun_10, -1.0 ,1.0);
setEffAlphaKey(spep_10, syun_10, 255);
setEffShake(spep_10, syun_10, 107, 10);

entryFadeBg( spep_10, 0, 60, 0, 10, 10, 10, 255);
entryFadeBg( spep_10+61, 0, 46, 0, 10, 10, 10, 100);

entryFade(spep_10+101,5,10,5,255,255,255,255);
------------------------------------------------------
-- SP_13 = 150720;	--フィニッシュ（敵） 908-
------------------------------------------------------
spep_11=spep_10+108;

syun_11 = entryEffect(spep_11+8, SP_13 ,0x100,-1,0,0,0);

setEffMoveKey(spep_10, syun_11, 0, 0, 0);
setEffScaleKey(spep_10, syun_11, 1.0 ,1.0);
setEffAlphaKey(spep_10, syun_11, 255);
setEffShake(spep_10, syun_11, 98, 10);

entryFadeBg( spep_11, 0, 110, 0, 10, 10, 10, 100);

playSe(spep_11,1024);

--集中線
shuchusen11 = entryEffectLife( spep_11, 906, 32, 0x80,  -1, 0,  0,  0); -- -493
setEffMoveKey( spep_11, shuchusen11, 200, 300, 0);
setEffScaleKey( spep_11, shuchusen11, 1.8, 1.8);
setEffAlphaKey( spep_11, shuchusen11, 255);
setEffRotateKey( spep_11, shuchusen11, 0);

-- ダメージ表示
dealDamage(spep_11+16);

--entryFade( spep_11+90, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_11+90);
end
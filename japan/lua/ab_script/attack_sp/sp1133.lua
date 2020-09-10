fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150874;
SP_02 = 150875; --敵
SP_03 = 150876;
SP_04 = 150877; --敵
SP_05 = 150878;
SP_06 = 150879;
SP_07 = 150880; --敵
SP_08 = 150881;
SP_09 = 150882; --敵
SP_10 = 1656;
--[[
spep_0=0;
spep_1=spep_0+71;
spep_2=spep_1+293;
--spep_3=spep_2+171;
spep_3=spep_2+86;
spep_4=spep_3+101;
spep_5=spep_4+199;
]]--
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1009; --huru
SE_09 = 1010; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

------------------------------------------------------
-- 立ち(F)
------------------------------------------------------
multi_frm = 2;


if (_IS_PLAYER_SIDE_ == 1) then
setVisibleUI(0, 0);

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 104);                       -- 立ち

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,   600, -800,   0);
setMoveKey(   0,   1,   600, -800,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);

------------------------------------------------------
-- 突っ込む(70F)
------------------------------------------------------
entryFadeBg(0, 0, 189, 0, 10, 10, 10, 200);       --ベース暗め　背景
--spep_0 = 40;

spattack=entryEffectLife( 0, SP_01, 70, 0x100, -1, 0, 0, 0);
setEffMoveKey( 0, spattack, 0, 0, 0);
setEffScaleKey( 0, spattack, 1.0, 1.0);
setEffAlphaKey( 0, spattack, 255);
setEffRotateKey( 0, spattack, 0);
setEffShake(0,spattack,70,10);

syu0=entryEffectLife( 0, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 0, syu0, 0, 0, 0);
setEffScaleKey( 0, syu0, 1.0, 1.0);
setEffAlphaKey( 0, syu0, 255);
setEffRotateKey( 0, syu0, 0);

entryFade( 16, 2,  4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 63, 2,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 

playSe(30,1018);
setDisp( 65, 0, 0);
------------------------------------------------------
-- 連打(290F)145
------------------------------------------------------
spep_1 = 70;

spattack1=entryEffectLife( spep_1, SP_03, 292, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_1, spattack1, 0, 0, 0);
setEffScaleKey( spep_1, spattack1, 1.0, 1.0);
setEffAlphaKey( spep_1, spattack1, 255);
setEffRotateKey( spep_1, spattack1, 0);

syu1 = entryEffectLife( spep_1, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1, syu1, 1.5, 1.5);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 敵の動き
------------------------------------------------------
changeAnime(spep_1-1,1,100);--待機
setDisp(spep_1-1,1,1);
setMoveKey(spep_1-1,1,680,0,0);
setMoveKey(spep_1+25,1,680,0,0);
setMoveKey(spep_1+32,1,140,0,0);
setScaleKey(spep_1-1,1, 1.3, 1.3);
setRotateKey(spep_1-1,1,0);

-------------------------------------------------
changeAnime(spep_1+37,1,108);--ダメージ（吹き飛び） 
setMoveKey(spep_1+37,1,140,0,0);
setMoveKey(spep_1+48,1,140,0,0);
setMoveKey(spep_1+59,1,200, 0,0);
setScaleKey(spep_1+37,1,1.3, 1.3);
setRotateKey(spep_1+37,1,0);

playSe(spep_1+37,1009);


syu2 = entryEffectLife( spep_1+37, 906, 15, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1+37, syu2, 1.5, 1.5);
--------------------------------------------------
changeAnime(spep_1+68,1,103);--ダッシュ
setMoveKey(spep_1+68,1,200,0,0);
setMoveKey(spep_1+77,1,0,0,0);
setMoveKey(spep_1+86,1,160,0,0);
setScaleKey(spep_1+68,1,1.3,1.3);
setRotateKey(spep_1+68,1,0);

setMoveKey(spep_1+89,1,120,0,0);
setRotateKey(spep_1+89,1,0);

--playSe(spep_1+89,37);

syu3 = entryEffectLife( spep_1+68, 906, 14, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1+68, syu3, 1.5, 1.5);
--------------------------------------------------
changeAnime(spep_1+93, 1, 111);--パンチ
setMoveKey(spep_1+93, 1,100, 0,0);
setScaleKey(spep_1+93,1, 1.3, 1.3);
setRotateKey(spep_1+93,1,0);

playSe(spep_1+96,43);
setRotateKey(spep_1+118,1,0);



ryu = entryEffectLife(spep_1, 920, 118, 0x80,  -1,  0,  0,  0); -- 流線(横)
setEffScaleKey(spep_1, ryu, 1.5, 1.5);

-- 書き文字エントリー
zuo_1 = entryEffectLife(spep_1+2,10012,47, 0, -1, 0, 100, 350);--ズオッ
setEffMoveKey(spep_1+2,zuo_1,100,350,0);
setEffScaleKey(spep_1+2,zuo_1,0.3,0.3);
setEffScaleKey(spep_1+5,zuo_1,1.0,1.0);
setEffScaleKey(spep_1+7,zuo_1,3.0,3.0);
setEffScaleKey(spep_1+36,zuo_1,3.0,3.0);
setEffScaleKey(spep_1+43,zuo_1,5.0,5.0);
setEffRotateKey(spep_1+2,zuo_1,30);
setEffAlphaKey(spep_1+2,zuo_1,255);
setEffAlphaKey(spep_1+36,zuo_1,255);
setEffAlphaKey(spep_1+43,zuo_1,0);
setEffShake(spep_1+4, zuo_1, 47, 20);

syn_1 = entryEffectLife(spep_1+96,10011,14, 0, -1, 0, 0, 0);
setEffMoveKey(spep_1+96,syn_1,-150,200,0);
setEffScaleKey(spep_1+96,syn_1,1.0,1.0);
setEffRotateKey(spep_1+96,syn_1,350);
setEffAlphaKey(spep_1+96,syn_1,255);

------------------------------------------------------
-- 地面(170F)85
------------------------------------------------------
entryFadeBg(spep_1+119, 0, 84, 0, 0, 0, 0, 255);       -- ベース暗い　背景

changeAnime(spep_1+119,1,108);--ダメージ（吹き飛び） 
setMoveKey(spep_1+119,1,100,0,0);
setMoveKey(spep_1+169,1,160,-350,0);
setMoveKey(spep_1+176,1,160,-350,0);
setScaleKey(spep_1+119,1, 1.3, 1.3);
setRotateKey(spep_1+119,1,80);
setRotateKey(spep_1+176,1,80);
setShakeChara(spep_1+169,1,11,20);

playSe(spep_1+119,1009);

syu4 = entryEffectLife(spep_1+119, 906, 17, 0x100,  -1,  0,  0,  0); -- 集中線
setEffScaleKey(spep_1+119, syu4, 1.5, 1.5);

ryu3 = entryEffectLife(spep_1+119, 920, 83, 0x80,  -1,  0,  0,  0); -- 流線(横)
setEffAlphaKey(spep_1+119, ryu3, 255);
setEffAlphaKey(spep_1+163, ryu3, 255);
setEffAlphaKey(spep_1+164, ryu3, 0);
setEffAlphaKey(spep_1+175, ryu3, 0);
setEffAlphaKey(spep_1+176, ryu3, 255);
setEffAlphaKey(spep_1+202, ryu3, 255);
setEffRotateKey(spep_1+119, ryu3, 50);
setEffRotateKey(spep_1+175, ryu3, 50);
setEffRotateKey(spep_1+176, ryu3, -50);
setEffRotateKey(spep_1+202, ryu3, -50);
setEffScaleKey(spep_1+119, ryu3, 2.0, 2.0);

changeAnime(spep_1+177,1,106);--ダメージ 
setMoveKey(spep_1+177,1,180,-300,0);
setScaleKey(spep_1+177,1, 1.3, 1.3);
setRotateKey(spep_1+177,1,50);
setRotateKey(spep_1+202,1,50);

syu5 = entryEffectLife(spep_1+164, 906, 11, 0x100,  -1,  0,  200,  -200); -- 集中線
setEffScaleKey(spep_1+164, syu5, 1.8, 1.8);


ground = entryEffect(spep_1+131, SP_05, 0x80, -1, 0, 0, 0);
setEffMoveKey(spep_1+131, ground, 0, 0, 0);
setEffScaleKey(spep_1+131, ground, 1.0, 1.0);
setEffAlphaKey(spep_1+131, ground, 255);
setEffRotateKey(spep_1+131, ground, 0);


bgo_1 = entryEffectLife(spep_1+273,10021,15, 0, -1, 0, 0, 0);
setEffMoveKey(spep_1+273,bgo_1,0,250,0);
setEffScaleKey(spep_1+273,bgo_1,0.6,0.6);
setEffRotateKey(spep_1+273,bgo_1,350);
setEffAlphaKey(spep_1+273,bgo_1,255);

setEffMoveKey(spep_1+288,bgo_1,0,250,0);
setEffScaleKey(spep_1+288,bgo_1,2.4,2.4);
setEffRotateKey(spep_1+288,bgo_1,350);
setEffAlphaKey(spep_1+288,bgo_1,255);


ryu4 = entryEffectLife(spep_1+203, 920, 85, 0x80,  -1,  0,  0,  0); -- 流線(横)
setEffScaleKey(spep_1+203, ryu4, 1.0, 1.0);

--------------------------------------------------
--ここから再度ラッシュ
--------------------------------------------------
entryFadeBg(spep_1+203, 0, 89, 0, 10, 10, 10, 200);       --ベース暗め　背景

changeAnime(spep_1+203,1,108);--ダメージ（吹き飛び） 
setMoveKey(spep_1+203,1,170, 0,0);
setMoveKey(spep_1+213,1,190, 0,0);
setMoveKey(spep_1+234,1,170, 0,0);
setMoveKey(spep_1+245,1,200, 0,0);
setMoveKey(spep_1+228,1,150,0,0);
setMoveKey(spep_1+230,1,150,0,0);
setMoveKey(spep_1+234,1,170,0,0);
setMoveKey(spep_1+237,1,170,0,0);
setMoveKey(spep_1+263,1,170,0,0);
setMoveKey(spep_1+270,1,170,0,0);
setMoveKey(spep_1+290,1,1550,0,0);

setScaleKey(spep_1+203,1, 1.2, 1.2);
setScaleKey(spep_1+290,1,1.2,1.2);

setRotateKey(spep_1+203,1,0);
setRotateKey(spep_1+212,1,0);
setRotateKey(spep_1+213,1,-10);
setRotateKey(spep_1+233,1,-10);
setRotateKey(spep_1+234,1,20);
setRotateKey(spep_1+244,1,20);
setRotateKey(spep_1+245,1,0);
setRotateKey(spep_1+290,1,0);


syu6 = entryEffectLife(spep_1+203, 906, 22, 0x100,  -1,  0,  0,  0); -- 集中線
setEffScaleKey(spep_1+203, syu6, 1.5, 1.5);

syu7 = entryEffectLife(spep_1+235, 906, 22, 0x100,  -1,  0,  0,  0); -- 集中線
setEffScaleKey(spep_1+235, syu7, 1.5, 1.5);

syu8 = entryEffectLife(spep_1+263, 906, 36, 0x100,  -1,  0,  0,  0); -- 集中線
setEffScaleKey(spep_1+263, syu8, 1.5, 1.5);


playSe(spep_1+169,SE_11);
playSe(spep_1+203,1009);
playSe(spep_1+215,1009);
playSe(spep_1+234,1009);
playSe(spep_1+245,1009);
playSe(spep_1+270,1011);

entryFade(spep_1+285, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- 溜め(100F)
------------------------------------------------------
spep_2 = spep_1+290;
sp6 = entryEffectLife( spep_2, SP_06, 100, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_2, sp6, 0, 0, 0);
setEffScaleKey( spep_2, sp6, 1.0, 1.0);
setEffAlphaKey( spep_2, sp6, 255);
setEffRotateKey( spep_2, sp6, 0);

SP_ATK_2 = spep_2;
--spep_2=spep_1+293=364
speff = entryEffect(SP_ATK_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(SP_ATK_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(speff, 4, 5);                           -- セリフ差し替え

playSe( SP_ATK_2+10, SE_04);
entryEffectLife( SP_ATK_2, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFadeBg( SP_ATK_2, 0, 100, 0, 10, 10, 10, 200);       --ベース暗め　背景

ctgogo = entryEffectLife( SP_ATK_2+23, 190006, 69, 0x100, -1, 0, -150, 500);    -- ゴゴゴゴ
setEffScaleKey( SP_ATK_2+23, ctgogo, 0.7, 0.7);
setEffRotateKey( SP_ATK_2+23, ctgogo, -10);
setEffAlphaKey( SP_ATK_2+23, ctgogo, 255);

--entryFade(spep_2+93, 3, 5, 4, color_r, fcolor_g, fcolor_b, 255); -- white fade
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+100;
entryFade(spep_2+93, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3 ,   0, 1.0, 1.0);

speff = entryEffect(  spep_3 ,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

syu9 = entryEffectLife(spep_3, 906, 100, 0x100,  -1,  0,  0,  0); -- 集中線
setEffScaleKey(spep_3, syu9, 1.5, 1.5);


playSe( spep_3 , SE_05);

entryFade(spep_3+82, 6, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 発射(200F)
------------------------------------------------------
spep_4 = spep_3+100;

sp4 = entryEffectLife( spep_4, SP_08, 198, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_4, sp4, 0, 0, 0);
setEffScaleKey( spep_4, sp4, 1.0, 1.0);
setEffAlphaKey( spep_4, sp4, 255);
setEffRotateKey( spep_4, sp4, 0);
setEffShake( spep_4, sp4, 200, 15);
setShakeChara(spep_4,0,200,15);

spname = entryEffectLife( spep_4, 1508,  40, 0x100,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え


sen2 = entryEffectLife( spep_4, 921, 198, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_4, sen2, 30);
setEffScaleKey( spep_4, sen2, 1.6, 1.6);

setDisp( spep_4+40, 1, 1);
setDisp( spep_4+100, 1, 0);
changeAnime( spep_4+40, 1, 108); 
setScaleKey( spep_4+22,    1,  1.2, 1.2);
setScaleKey( spep_4+100,    1,  1.2, 1.2);

setMoveKey( spep_4+40+15, 1,  700,  -200,   0);
setMoveKey( spep_4+60+15, 1,  700,  -200,   0);
setMoveKey( spep_4+90, 1,  -100,  80,   0);
setScaleKey( spep_4+45,   1,   1.3,  1.3);

-- 書き文字エントリー
zuo_2 = entryEffectLife(spep_4+2,10012,47, 0, -1, 0, 100, 350);--ズオッ
setEffMoveKey(spep_4+2,zuo_2,100,350,0);
setEffScaleKey(spep_4+2,zuo_2,0.3,0.3);
setEffScaleKey(spep_4+5,zuo_2,1.0,1.0);
setEffScaleKey(spep_4+7,zuo_2,3.0,3.0);
setEffScaleKey(spep_4+36,zuo_2,3.0,3.0);
setEffScaleKey(spep_4+45,zuo_2,5.0,5.0);
setEffRotateKey(spep_4+2,zuo_2,30);
setEffAlphaKey(spep_4+2,zuo_2,255);
setEffAlphaKey(spep_4+36,zuo_2,255);
setEffAlphaKey(spep_4+45,zuo_2,0);
--setEffShake(spep_4+4, zuo_2, 47, 10);


playSe( spep_4+10, SE_06);
playSe( spep_4+60, SE_07);


entryFadeBg(spep_4, 0, 200, 0, 0, 0, 0, 255);       -- ベース暗い　背景
entryFade(spep_4+194, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_5 = spep_4+200;

exp = entryEffect( spep_5, SP_10, 0,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey( spep_5, exp, 0, 0, 0);
setEffScaleKey( spep_5, exp, 1.2, 1.2);
setEffAlphaKey( spep_5, exp, 255);
setEffRotateKey( spep_5, exp, 0);

playSe( spep_5, SE_10);
playSe( spep_5+110, SE_10);

-- ダメージ表示
dealDamage(spep_5+16);
--entryFade( spep_5+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+170);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setVisibleUI(0, 0);

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 104);                       -- 立ち

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,   600, -800,   0);
setMoveKey(   0,   1,   600, -800,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);

------------------------------------------------------
-- 突っ込む(70F)
------------------------------------------------------
entryFadeBg(0, 0, 189, 0, 10, 10, 10, 200);       --ベース暗め　背景
--spep_0 = 40;

spattack = entryEffectLife( 0, SP_02, 70, 0x100, -1, 0, 0, 0);
setEffMoveKey( 0, spattack, 0, 0, 0);
setEffScaleKey( 0, spattack, 1.0, 1.0);
setEffAlphaKey( 0, spattack, 255);
setEffRotateKey( 0, spattack, 0);
setEffShake(0,spattack,70,10);

syu0=entryEffectLife( 0, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 0, syu0, 0, 0, 0);
setEffScaleKey( 0, syu0, 1.0, 1.0);
setEffAlphaKey( 0, syu0, 255);
setEffRotateKey( 0, syu0, 0);

entryFade( 16, 2,  4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 63, 2,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 

playSe(30,1018);
setDisp( 65, 0, 0);
------------------------------------------------------
-- 連打(290F)145
------------------------------------------------------
spep_1 = 70;

spattack_1=entryEffectLife( spep_1, SP_04, 292, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_1, spattack_1, 0, 0, 0);
setEffScaleKey( spep_1, spattack_1, 1.0, 1.0);
setEffAlphaKey( spep_1, spattack_1, 255);
setEffRotateKey( spep_1, spattack_1, 0);

syu1 = entryEffectLife( spep_1, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1, syu1, 1.5, 1.5);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 敵の動き
------------------------------------------------------
changeAnime(spep_1-1,1,100);--待機
setDisp(spep_1-1,1,1);
setMoveKey(spep_1-1,1,680,0,0);
setMoveKey(spep_1+25,1,680,0,0);
setMoveKey(spep_1+32,1,140,0,0);
setScaleKey(spep_1-1,1, 1.3, 1.3);
setRotateKey(spep_1-1,1,0);

-------------------------------------------------
changeAnime(spep_1+37,1,108);--ダメージ（吹き飛び） 
setMoveKey(spep_1+37,1,140,0,0);
setMoveKey(spep_1+48,1,140,0,0);
setMoveKey(spep_1+59,1,200, 0,0);
setScaleKey(spep_1+37,1,1.3, 1.3);
setRotateKey(spep_1+37,1,0);

playSe(spep_1+37,1009);


syu2 = entryEffectLife( spep_1+37, 906, 15, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1+37, syu2, 1.5, 1.5);
--------------------------------------------------
changeAnime(spep_1+68,1,103);--ダッシュ
setMoveKey(spep_1+68,1,200,0,0);
setMoveKey(spep_1+77,1,0,0,0);
setMoveKey(spep_1+86,1,160,0,0);
setScaleKey(spep_1+68,1,1.3,1.3);
setRotateKey(spep_1+68,1,0);

setMoveKey(spep_1+89,1,120,0,0);
setRotateKey(spep_1+89,1,0);

--playSe(spep_1+89,37);

syu3 = entryEffectLife( spep_1+68, 906, 14, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_1+68, syu3, 1.5, 1.5);
--------------------------------------------------
changeAnime(spep_1+93, 1, 111);--パンチ
setMoveKey(spep_1+93, 1,100, 0,0);
setScaleKey(spep_1+93,1, 1.3, 1.3);
setRotateKey(spep_1+93,1,0);

playSe(spep_1+96,43);
setRotateKey(spep_1+118,1,0);



ryu = entryEffectLife(spep_1, 920, 118, 0x80,  -1,  0,  0,  0); -- 流線(横)
setEffScaleKey(spep_1, ryu, 1.5, 1.5);

-- 書き文字エントリー
zuo_1 = entryEffectLife(spep_1+2,10012,47, 0, -1, 0, 100, 350);--ズオッ
setEffMoveKey(spep_1+2,zuo_1,100,350,0);
setEffScaleKey(spep_1+2,zuo_1,0.3,0.3);
setEffScaleKey(spep_1+5,zuo_1,1.0,1.0);
setEffScaleKey(spep_1+7,zuo_1,3.0,3.0);
setEffScaleKey(spep_1+36,zuo_1,3.0,3.0);
setEffScaleKey(spep_1+43,zuo_1,5.0,5.0);
setEffRotateKey(spep_1+2,zuo_1,-30);
setEffAlphaKey(spep_1+2,zuo_1,255);
setEffAlphaKey(spep_1+36,zuo_1,255);
setEffAlphaKey(spep_1+43,zuo_1,0);
setEffShake(spep_1+4, zuo_1, 47, 20);

syn_1 = entryEffectLife(spep_1+96,10011,14, 0, -1, 0, 0, 0);
setEffMoveKey(spep_1+96,syn_1,-150,200,0);
setEffScaleKey(spep_1+96,syn_1,1.0,1.0);
setEffRotateKey(spep_1+96,syn_1,350);
setEffAlphaKey(spep_1+96,syn_1,255);

------------------------------------------------------
-- 地面(170F)85
------------------------------------------------------
entryFadeBg(spep_1+119, 0, 84, 0, 0, 0, 0, 255);       -- ベース暗い　背景

changeAnime(spep_1+119,1,108);--ダメージ（吹き飛び） 
setMoveKey(spep_1+119,1,100,0,0);
setMoveKey(spep_1+169,1,160,-350,0);
setMoveKey(spep_1+176,1,160,-350,0);
setScaleKey(spep_1+119,1, 1.3, 1.3);
setRotateKey(spep_1+119,1,80);
setRotateKey(spep_1+176,1,80);
setShakeChara(spep_1+169,1,11,20);

playSe(spep_1+119,1009);

syu4 = entryEffectLife(spep_1+119, 906, 17, 0x100,  -1,  0,  0,  0); -- 集中線
setEffScaleKey(spep_1+119, syu4, 1.5, 1.5);

ryu3 = entryEffectLife(spep_1+119, 920, 83, 0x80,  -1,  0,  0,  0); -- 流線(横)
setEffAlphaKey(spep_1+119, ryu3, 255);
setEffAlphaKey(spep_1+163, ryu3, 255);
setEffAlphaKey(spep_1+164, ryu3, 0);
setEffAlphaKey(spep_1+175, ryu3, 0);
setEffAlphaKey(spep_1+176, ryu3, 255);
setEffAlphaKey(spep_1+202, ryu3, 255);
setEffRotateKey(spep_1+119, ryu3, 50);
setEffRotateKey(spep_1+175, ryu3, 50);
setEffRotateKey(spep_1+176, ryu3, -50);
setEffRotateKey(spep_1+202, ryu3, -50);
setEffScaleKey(spep_1+119, ryu3, 2.0, 2.0);

changeAnime(spep_1+177,1,106);--ダメージ 
setMoveKey(spep_1+177,1,180,-300,0);
setScaleKey(spep_1+177,1, 1.3, 1.3);
setRotateKey(spep_1+177,1,50);
setRotateKey(spep_1+202,1,50);

syu5 = entryEffectLife(spep_1+164, 906, 11, 0x100,  -1,  0,  200,  -200); -- 集中線
setEffScaleKey(spep_1+164, syu5, 1.8, 1.8);


ground = entryEffect(spep_1+131, SP_05, 0x80, -1, 0, 0, 0);
setEffMoveKey(spep_1+131, ground, 0, 0, 0);
setEffScaleKey(spep_1+131, ground, 1.0, 1.0);
setEffAlphaKey(spep_1+131, ground, 255);
setEffRotateKey(spep_1+131, ground, 0);


bgo_1 = entryEffectLife(spep_1+273,10021,15, 0, -1, 0, 0, 0);
setEffMoveKey(spep_1+273,bgo_1,0,250,0);
setEffScaleKey(spep_1+273,bgo_1,0.6,0.6);
setEffRotateKey(spep_1+273,bgo_1,350);
setEffAlphaKey(spep_1+273,bgo_1,255);

setEffMoveKey(spep_1+288,bgo_1,0,250,0);
setEffScaleKey(spep_1+288,bgo_1,2.4,2.4);
setEffRotateKey(spep_1+288,bgo_1,350);
setEffAlphaKey(spep_1+288,bgo_1,255);


ryu4 = entryEffectLife(spep_1+203, 920, 85, 0x80,  -1,  0,  0,  0); -- 流線(横)
setEffScaleKey(spep_1+203, ryu4, 1.0, 1.0);

--------------------------------------------------
--ここから再度ラッシュ
--------------------------------------------------
entryFadeBg(spep_1+203, 0, 89, 0, 10, 10, 10, 200);       --ベース暗め　背景

changeAnime(spep_1+203,1,108);--ダメージ（吹き飛び） 
setMoveKey(spep_1+203,1,170, 0,0);
setMoveKey(spep_1+213,1,190, 0,0);
setMoveKey(spep_1+234,1,170, 0,0);
setMoveKey(spep_1+245,1,200, 0,0);
setMoveKey(spep_1+228,1,150,0,0);
setMoveKey(spep_1+230,1,150,0,0);
setMoveKey(spep_1+234,1,170,0,0);
setMoveKey(spep_1+237,1,170,0,0);
setMoveKey(spep_1+263,1,170,0,0);
setMoveKey(spep_1+270,1,170,0,0);
setMoveKey(spep_1+290,1,1550,0,0);

setScaleKey(spep_1+203,1, 1.2, 1.2);
setScaleKey(spep_1+290,1,1.2,1.2);

setRotateKey(spep_1+203,1,0);
setRotateKey(spep_1+212,1,0);
setRotateKey(spep_1+213,1,-10);
setRotateKey(spep_1+233,1,-10);
setRotateKey(spep_1+234,1,20);
setRotateKey(spep_1+244,1,20);
setRotateKey(spep_1+245,1,0);
setRotateKey(spep_1+290,1,0);


syu6 = entryEffectLife(spep_1+203, 906, 22, 0x100,  -1,  0,  0,  0); -- 集中線
setEffScaleKey(spep_1+203, syu6, 1.5, 1.5);

syu7 = entryEffectLife(spep_1+235, 906, 22, 0x100,  -1,  0,  0,  0); -- 集中線
setEffScaleKey(spep_1+235, syu7, 1.5, 1.5);

syu8 = entryEffectLife(spep_1+263, 906, 36, 0x100,  -1,  0,  0,  0); -- 集中線
setEffScaleKey(spep_1+263, syu8, 1.5, 1.5);


playSe(spep_1+169,SE_11);
playSe(spep_1+203,1009);
playSe(spep_1+215,1009);
playSe(spep_1+234,1009);
playSe(spep_1+245,1009);
playSe(spep_1+270,1011);

entryFade(spep_1+285, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- 溜め(100F)
------------------------------------------------------
spep_2 = spep_1+290;
sp7 = entryEffectLife( spep_2, SP_07, 100, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_2, sp7, 0, 0, 0);
setEffScaleKey( spep_2, sp7, 1.0, 1.0);
setEffAlphaKey( spep_2, sp7, 255);
setEffRotateKey( spep_2, sp7, 0);

SP_ATK_2 = spep_2;
--[[
speff = entryEffect(SP_ATK_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(SP_ATK_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(speff, 4, 5);                           -- セリフ差し替え
]]--
playSe( SP_ATK_2+10, SE_04);
entryEffectLife( SP_ATK_2, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFadeBg( SP_ATK_2, 0, 100, 0, 10, 10, 10, 200);       --ベース暗め　背景

ctgogo = entryEffectLife( SP_ATK_2+23, 190006, 69, 0x100, -1, 0, -150, 400);    -- ゴゴゴゴ
setEffScaleKey( SP_ATK_2+23, ctgogo, -0.7, 0.7);
setEffRotateKey( SP_ATK_2+23, ctgogo, -10);
setEffAlphaKey( SP_ATK_2+23, ctgogo, 255);

--entryFade(spep_2+93, 3, 5, 4, color_r, fcolor_g, fcolor_b, 255); -- white fade
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+100;
entryFade(spep_2+93, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3 ,   0, 1.0, 1.0);

speff = entryEffect(  spep_3 ,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

syu9 = entryEffectLife(spep_3, 906, 100, 0x100,  -1,  0,  0,  0); -- 集中線
setEffScaleKey(spep_3, syu9, 1.5, 1.5);


playSe( spep_3 , SE_05);

entryFade(spep_3+82, 6, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 発射(200F)
------------------------------------------------------
spep_4 = spep_3+100;

sp4 = entryEffectLife( spep_4, SP_09, 198, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_4, sp4, 0, 0, 0);
setEffScaleKey( spep_4, sp4, 1.0, 1.0);
setEffAlphaKey( spep_4, sp4, 255);
setEffRotateKey( spep_4, sp4, 0);
setEffShake( spep_4, sp4, 200, 15);
setShakeChara(spep_4,0,200,15);

spname = entryEffectLife( spep_4, 1508,  40, 0x100,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え


sen2 = entryEffectLife( spep_4, 921, 198, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_4, sen2, 30);
setEffScaleKey( spep_4, sen2, 1.6, 1.6);

setDisp( spep_4+40, 1, 1);
setDisp( spep_4+100, 1, 0);
changeAnime( spep_4+40, 1, 108); 
setScaleKey( spep_4+22,    1,  1.2, 1.2);
setScaleKey( spep_4+100,    1,  1.2, 1.2);

setMoveKey( spep_4+40+15, 1,  700,  -200,   0);
setMoveKey( spep_4+60+15, 1,  700,  -200,   0);
setMoveKey( spep_4+90, 1,  -100,  80,   0);
setScaleKey( spep_4+45,   1,   1.3,  1.3);

-- 書き文字エントリー
zuo_2 = entryEffectLife(spep_4+2,10012,47, 0, -1, 0, 100, 350);--ズオッ
setEffMoveKey(spep_4+2,zuo_2,100,350,0);
setEffScaleKey(spep_4+2,zuo_2,0.3,0.3);
setEffScaleKey(spep_4+5,zuo_2,1.0,1.0);
setEffScaleKey(spep_4+7,zuo_2,3.0,3.0);
setEffScaleKey(spep_4+36,zuo_2,3.0,3.0);
setEffScaleKey(spep_4+45,zuo_2,5.0,5.0);
setEffRotateKey(spep_4+2,zuo_2,30);
setEffAlphaKey(spep_4+2,zuo_2,255);
setEffAlphaKey(spep_4+36,zuo_2,255);
setEffAlphaKey(spep_4+45,zuo_2,0);
--setEffShake(spep_4+4, zuo_2, 47, 10);


playSe( spep_4+10, SE_06);
playSe( spep_4+60, SE_07);


entryFadeBg(spep_4, 0, 200, 0, 0, 0, 0, 255);       -- ベース暗い　背景
--entryFade(SP_ATK_4+95, 3, 5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_5 = spep_4+200;

exp=entryEffect( spep_5, SP_10, 0,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey( spep_5, exp, 0, 0, 0);
setEffScaleKey( spep_5, exp, 1.2, 1.2);
setEffAlphaKey( spep_5, exp, 255);
setEffRotateKey( spep_5, exp, 0);

playSe( spep_5, SE_10);
playSe( spep_5+110, SE_10);

-- ダメージ表示
dealDamage(spep_5+16);
--entryFade( spep_5+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+170);


end	
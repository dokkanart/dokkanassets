--sp0460 1013850 超サイヤ人孫悟飯(未来)_激烈魔閃

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

SP_01=151680;--100　気溜
SP_02=151681;--100　溜め
SP_03=151682;--120　発射
SP_04=151683;--90   迫る
SP_05=151684;--100　敵側
SP_06=151685;--100　敵側
SP_07=151686;--120　敵側

setDisp( 0, 1, 0);

setMoveKey(0,1,0,0,0);
setScaleKey(0,1, 1.5, 1.5);

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

setMoveKey(0,0,0,0,0);
setMoveKey(1,0,0,0,0);
setMoveKey(2,0,0,0,0);
setMoveKey(3,0,0,0,0);
setMoveKey(4,0,0,0,0);
setMoveKey(5,0,0,0,0);

setMoveKey(28,0,0,0,0);

setScaleKey(0,0,1.5,1.5);
setScaleKey(1,0,1.5,1.5);
setScaleKey(2,0,1.5,1.5);
setScaleKey(3,0,1.5,1.5);
setScaleKey(4,0,1.5,1.5);
setScaleKey(5,0,1.5,1.5);

setScaleKey(28,0,1.5,1.5);

setRotateKey(0,0,0);
setRotateKey(28,0,0);

setDisp(29,0,0,0);
setMoveKey(29,0,0,-900,0);
setScaleKey(29,0,1.2,1.2);
setRotateKey(29,0,0);
------------------------------------------------------
-- 溜め(100F)
------------------------------------------------------
spep_1=29;

Kitame = entryEffectLife( spep_1,SP_01,36,0x100,  -1,  0,  0,  0);

setEffScaleKey(spep_1,Kitame,  1.0,  1.0);
setEffMoveKey(spep_1,Kitame,  0,  0);
setEffRotateKey(spep_1,Kitame,  0);
setEffAlphaKey(spep_1,Kitame,  255);
setEffScaleKey(spep_1+36,Kitame,  1.0,  1.0);
setEffMoveKey(spep_1+36,Kitame,  0,  0);
setEffRotateKey(spep_1+36,Kitame,  0);
setEffAlphaKey(spep_1+36,Kitame,  255);

Aura1500=entryEffectLife( spep_1,1500,36,0x100,  -1,  0,  0,  0);

setEffScaleKey(spep_1,Aura1500,  1.0,  1.0);
setEffMoveKey(spep_1,Aura1500,  0,  0);
setEffRotateKey(spep_1,Aura1500,  0);
setEffAlphaKey(spep_1,Aura1500,  255);
setEffScaleKey(spep_1+36,Aura1500,  1.0,  1.0);
setEffMoveKey(spep_1+36,Aura1500,  0,  0);
setEffRotateKey(spep_1+36,Aura1500,  0);
setEffAlphaKey(spep_1+36,Aura1500,  255);

--[[
Aura1502=entryEffectLife( spep_1+5,1502,30,0x100,  -1,  0,  0,  0);

setEffScaleKey(spep_1+5,Aura1502,  1.0,  1.0);
setEffMoveKey(spep_1+5,Aura1502,  0,  0);
setEffRotateKey(spep_1+5,Aura1502,  0);
setEffAlphaKey(spep_1+5,Aura1502,  255);
setEffScaleKey(spep_1+35,Aura1502,  1.0,  1.0);
setEffMoveKey(spep_1+35,Aura1502,  0,  0);
setEffRotateKey(spep_1+35,Aura1502,  0);
setEffAlphaKey(spep_1+35,Aura1502,  255);
]]--

Aura1501=entryEffectLife( spep_1,1501,36,0x80,  -1,  0,  0,  0);

setEffScaleKey(spep_1,Aura1501,  1.0,  1.0);
setEffMoveKey(spep_1,Aura1501,  0,  0);
setEffRotateKey(spep_1,Aura1501,  0);
setEffAlphaKey(spep_1,Aura1501,  255);
setEffScaleKey(spep_1+36,Aura1501,  1.0,  1.0);
setEffMoveKey(spep_1+36,Aura1501,  0,  0);
setEffRotateKey(spep_1+36,Aura1501,  0);
setEffAlphaKey(spep_1+36,Aura1501,  255);

-- 書き文字エントリー
ctzuzun = entryEffectLife( spep_1, 10013, 36, 0x100, -1, 0, 0, 0); -- ズズンッ
setEffMoveKey( spep_1,ctzuzun,22,192,0);
setEffMoveKey( spep_1+10,ctzuzun,47,313,0);
setEffMoveKey( spep_1+18,ctzuzun,46,310,0);
setEffShake(spep_1, ctzuzun, 36, 15);
setEffAlphaKey(spep_1, ctzuzun, 255);
setEffAlphaKey(spep_1+10, ctzuzun, 255);
setEffAlphaKey(spep_1+36, ctzuzun, 255);
setEffScaleKey( spep_1, ctzuzun, 0.8, 0.8);
setEffScaleKey( spep_1+10, ctzuzun, 3.0, 3.0);
setEffScaleKey( spep_1+36, ctzuzun, 3.0, 3.0);
setEffRotateKey(spep_1, ctzuzun, 355);
setEffRotateKey(spep_1+36, ctzuzun, 355);

playSe( spep_1, SE_01);
playSe( spep_1, SE_02);

entryFadeBg(spep_1+10,0,36,0,10,10,10,255);

entryFade(spep_1+28,8,8,7,255,255,255,255);
------------------------------------------------------
-- 溜め(100F)
------------------------------------------------------
spep_2=spep_1+38;

tame = entryEffectLife( spep_2,  SP_02,100,0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_2,  tame,  1.0,  1.0);
setEffMoveKey(  spep_2,  tame,  0,  0);
setEffRotateKey(  spep_2,  tame,  0);
setEffAlphaKey(  spep_2,  tame,  255);
setEffScaleKey(  spep_2+100,  tame,  1.0,  1.0);
setEffMoveKey(  spep_2+100,  tame,  0,  0);
setEffRotateKey(  spep_2+100,  tame,  0);
setEffAlphaKey(  spep_2+100, tame,  255);

Aura1503=entryEffectLife( spep_2,1503,100,0x80,  -1,  0,  0,  0);

setEffScaleKey(spep_2,Aura1503,  1.0,  1.0);
setEffMoveKey(spep_2,Aura1503,  0,  0);
setEffRotateKey(spep_2,Aura1503,  0);
setEffAlphaKey(spep_2,Aura1503,  255);
setEffScaleKey(spep_2+100,Aura1503,  1.0,  1.0);
setEffMoveKey(spep_2+100,Aura1503,  0,  0);
setEffRotateKey(spep_2+100,Aura1503,  0);
setEffAlphaKey(spep_2+100,Aura1503,  255);

Aura1659=entryEffectLife( spep_2,1659,100,0x80,  -1,  0,  0,  0);

setEffScaleKey(spep_2,Aura1659,  1.0,  1.0);
setEffMoveKey(spep_2,Aura1659,  0,  0);
setEffRotateKey(spep_2,Aura1659,  0);
setEffAlphaKey(spep_2,Aura1659,  255);
setEffScaleKey(spep_2+100,Aura1659,  1.0,  1.0);
setEffMoveKey(spep_2+100,Aura1659,  0,  0);
setEffRotateKey(spep_2+100,Aura1659,  0);
setEffAlphaKey(spep_2+100,Aura1659,  255);

playSe( spep_2, SE_04);

--entryEffect(  spep_2+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_2+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_2+15,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+15,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( spep_2+25, 190006,75, 0x100, -1, 0, 100, 510);    -- ゴゴゴ・・・
setEffShake(spep_2+25, ct, 70, 8);
setEffScaleKey(spep_2+25, ct,0.8,0.8);

entryFade( spep_2+90, 8, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255); 
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+100;

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--集中線--
shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

entryFade( spep_3+80, 6, 10, 6, fcolor_r, fcolor_g, fcolor_b, 255);  

------------------------------------------------------
-- 発射(110F)
------------------------------------------------------
spep_4=spep_3+96;

Burst = entryEffectLife( spep_4,SP_03,110,0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_4,Burst,1.0,  1.0);
setEffMoveKey(  spep_4,Burst,0,0);
setEffRotateKey(  spep_4,Burst,0);
setEffAlphaKey(  spep_4,Burst,255);
setEffScaleKey(  spep_4+110,Burst,1.0,1.0);
setEffMoveKey(  spep_4+110,Burst,0,0);
setEffRotateKey(  spep_4+110,Burst,0);
setEffAlphaKey(  spep_4+110,Burst,255);

-- ** エフェクト等 ** --
entryFadeBg( spep_4, 0, 109, 0, 10, 10, 10, 255);       -- ベース暗め　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_4+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_4, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, sen2, 190);
setEffScaleKey( spep_4, sen2, 1.25, 1.25);

setShakeChara( spep_4+45, 0, 54, 50);

shuchusen4 = entryEffectLife( spep_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+49, shuchusen4, 2.0, 2.0);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_4+4, 10012, 44, 0, -1, 0, 100, 250); -- ズオッ

setEffMoveKey( spep_4+4,ctZuo,76,250,0);
setEffMoveKey( spep_4+8,ctZuo,150,350,0);
setEffMoveKey( spep_4+38,ctZuo,150,350,0);
setEffMoveKey( spep_4+48,ctZuo,150,350,0);
setEffShake(spep_4+4, ctZuo, 48, 15);
setEffAlphaKey(spep_4+4, ctZuo, 255);
setEffAlphaKey(spep_4+38, ctZuo, 255);
setEffAlphaKey(spep_4+48, ctZuo, 0);
setEffScaleKey(spep_4+4, ctZuo, 0.1, 0.1);
setEffScaleKey(spep_4+8, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_4+38, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_4+48, ctZuo, 6.0, 6.0);
setEffRotateKey( spep_4+4,ctZuo,25);
setEffRotateKey( spep_4+48,ctZuo,25);

playSe( spep_4, SE_07);
playSe( spep_4+60, SE_07);
entryFade( spep_4+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------
spep_5=spep_4+110;

setMoveKey(spep_5-1,0, 0, -54,0);
setMoveKey(spep_5,0, 0, -800,0);
setDisp( spep_5, 0, 0);

Semaru = entryEffectLife(spep_5,SP_04, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep_5, Semaru, 1.0, 1.0);
setEffMoveKey( spep_5, Semaru, 0, 0, 0);
setEffRotateKey( spep_5, Semaru, 0);
setEffAlphaKey( spep_5, Semaru, 255);

setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                        -- ガード
setMoveKey(  spep_5-2,    1, 9000, 0,   0);
setMoveKey(  spep_5-1,    1,  300,  0,   0);
setMoveKey(  spep_5,    1,  300,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);

setMoveKey(  spep_5+60,    1,   250,  -30,   0);
setScaleKey(  spep_5+60,   1,   2.5,  2.5);

playSe( spep_5, SE_06); 

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_5, 10014, 90, 0, -1, 0, 0, 310); -- ズドドッ
setEffShake(spep_5, ctZudodo, 90, 40);
setEffScaleKey( spep_5, ctZudodo, 3.3, 3.3);
setEffRotateKey(spep_5, ctZudodo, 70);
setEffAlphaKey(spep_5, ctZudodo, 255);

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 90, 20);

entryFadeBg( spep_5, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

sen7 = entryEffectLife( spep_5, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_5, sen7, 0);
setEffScaleKey( spep_5, sen7, 1.2, 1.0);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_5+61; 

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge-1, 0,  -2500, -1000,0); --味方位置
setMoveKey( SP_dodge, 0,  -2500, -1000,0); --味方位置

setMoveKey(SP_dodge+1,1,275,-15,0);
setScaleKey(SP_dodge+1,1,1.75,1.75);
setRotateKey(SP_dodge+1,1,0);

setMoveKey(SP_dodge+8,1,275,-15,0);
setScaleKey(SP_dodge+8,1,1.75,1.75);
setRotateKey(SP_dodge+8,1,0);

setMoveKey( SP_dodge+9, 0,  -2500,  -1000,   0);
setMoveKey(   SP_dodge+10,   0,    -2500, -1000,   0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+10,   1, 0);
--setMoveKey(SP_dodge+10,1,0,0,0);
--setScaleKey(SP_dodge+10,1,1.0,1.0);
--setRotateKey(SP_dodge+10,1,0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

playSe( spep_5+62, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_5+62, 1, 108);
setMoveKey(  spep_5+61, 1,  250,    -30,  0);
setMoveKey(  spep_5+62, 1,  230,    -30,  0);
setMoveKey(  spep_5+63, 1,  250,    -30,  0);
setMoveKey(  spep_5+89, 1,  300,    0,  0);
setScaleKey( spep_5+62, 1,  2.5, 2.5);
setScaleKey( spep_5+89, 1,  0.7, 0.7);

setRotateKey( spep_5, 1, 0); 
setRotateKey( spep_5+61, 1, 0); 
setRotateKey( spep_5+62, 1, 30); 
setRotateKey( spep_5+63, 1, 345); 
setRotateKey( spep_5+64, 1, 0); 
setRotateKey( spep_5+89, 1, 0); 

setDisp(spep_5+89,1,0);

setEffAlphaKey(spep_5+60, ctZudodo, 255);
setEffAlphaKey(spep_5+80, ctZudodo, 255);

entryFade( spep_5+77, 6, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_6=spep_5+90;

setDisp( spep_6-1, 1, 1);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1.0, 1.0);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+115, ct, 0);

playSe( spep_6+3, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_6+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_6+16);
entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+106);

else

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);

setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ

setMoveKey(0,0,0,0,0);
setMoveKey(1,0,0,0,0);
setMoveKey(2,0,0,0,0);
setMoveKey(3,0,0,0,0);
setMoveKey(4,0,0,0,0);
setMoveKey(5,0,0,0,0);

setMoveKey(28,0,0,0,0);

setScaleKey(0,0,1.5,1.5);
setScaleKey(1,0,1.5,1.5);
setScaleKey(2,0,1.5,1.5);
setScaleKey(3,0,1.5,1.5);
setScaleKey(4,0,1.5,1.5);
setScaleKey(5,0,1.5,1.5);

setScaleKey(28,0,1.5,1.5);

setRotateKey(0,0,0);
setRotateKey(28,0,0);

setDisp(29,0,0,0);
setMoveKey(29,0,0,-900,0);
setScaleKey(29,0,1.2,1.2);
setRotateKey(29,0,0);
------------------------------------------------------
-- 溜め(100F)
------------------------------------------------------
spep_1=29;

Kitame = entryEffectLife( spep_1,SP_05,36,0x100,  -1,  0,  0,  0);

setEffScaleKey(spep_1,Kitame,  1.0,  1.0);
setEffMoveKey(spep_1,Kitame,  0,  0);
setEffRotateKey(spep_1,Kitame,  0);
setEffAlphaKey(spep_1,Kitame,  255);
setEffScaleKey(spep_1+36,Kitame,  1.0,  1.0);
setEffMoveKey(spep_1+36,Kitame,  0,  0);
setEffRotateKey(spep_1+36,Kitame,  0);
setEffAlphaKey(spep_1+36,Kitame,  255);

Aura1500=entryEffectLife( spep_1,1500,36,0x100,  -1,  0,  0,  0);

setEffScaleKey(spep_1,Aura1500,  1.0,  1.0);
setEffMoveKey(spep_1,Aura1500,  0,  0);
setEffRotateKey(spep_1,Aura1500,  0);
setEffAlphaKey(spep_1,Aura1500,  255);
setEffScaleKey(spep_1+36,Aura1500,  1.0,  1.0);
setEffMoveKey(spep_1+36,Aura1500,  0,  0);
setEffRotateKey(spep_1+36,Aura1500,  0);
setEffAlphaKey(spep_1+36,Aura1500,  255);

--[[
Aura1502=entryEffectLife( spep_1+5,1502,30,0x100,  -1,  0,  0,  0);

setEffScaleKey(spep_1+5,Aura1502,  1.0,  1.0);
setEffMoveKey(spep_1+5,Aura1502,  0,  0);
setEffRotateKey(spep_1+5,Aura1502,  0);
setEffAlphaKey(spep_1+5,Aura1502,  255);
setEffScaleKey(spep_1+35,Aura1502,  1.0,  1.0);
setEffMoveKey(spep_1+35,Aura1502,  0,  0);
setEffRotateKey(spep_1+35,Aura1502,  0);
setEffAlphaKey(spep_1+35,Aura1502,  255);
]]--

Aura1501=entryEffectLife( spep_1,1501,36,0x80,  -1,  0,  0,  0);

setEffScaleKey(spep_1,Aura1501,  1.0,  1.0);
setEffMoveKey(spep_1,Aura1501,  0,  0);
setEffRotateKey(spep_1,Aura1501,  0);
setEffAlphaKey(spep_1,Aura1501,  255);
setEffScaleKey(spep_1+36,Aura1501,  1.0,  1.0);
setEffMoveKey(spep_1+36,Aura1501,  0,  0);
setEffRotateKey(spep_1+36,Aura1501,  0);
setEffAlphaKey(spep_1+36,Aura1501,  255);

-- 書き文字エントリー
ctzuzun = entryEffectLife( spep_1, 10013, 36, 0x100, -1, 0, 0, 0); -- ズズンッ
setEffMoveKey( spep_1,ctzuzun,22,192,0);
setEffMoveKey( spep_1+10,ctzuzun,47,313,0);
setEffMoveKey( spep_1+18,ctzuzun,46,310,0);
setEffShake(spep_1, ctzuzun, 36, 15);
setEffAlphaKey(spep_1, ctzuzun, 255);
setEffAlphaKey(spep_1+18, ctzuzun, 255);
setEffAlphaKey(spep_1+36, ctzuzun, 255);
setEffScaleKey( spep_1, ctzuzun, 0.8, 0.8);
setEffScaleKey( spep_1+18, ctzuzun, 3.0, 3.0);
setEffScaleKey( spep_1+36, ctzuzun, 3.0, 3.0);
setEffRotateKey(spep_1, ctzuzun, 345);
setEffRotateKey(spep_1+36, ctzuzun, 345);

playSe( spep_1, SE_01);
playSe( spep_1, SE_02);

entryFadeBg(spep_1+10,0,36,0,10,10,10,255);

entryFade(spep_1+28,8,8,7,255,255,255,255);
------------------------------------------------------
-- 溜め(100F)
------------------------------------------------------
spep_2=spep_1+38;

tame = entryEffectLife( spep_2,  SP_06,100,0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_2,  tame,  1.0,  1.0);
setEffMoveKey(  spep_2,  tame,  0,  0);
setEffRotateKey(  spep_2,  tame,  0);
setEffAlphaKey(  spep_2,  tame,  255);
setEffScaleKey(  spep_2+100,  tame,  1.0,  1.0);
setEffMoveKey(  spep_2+100,  tame,  0,  0);
setEffRotateKey(  spep_2+100,  tame,  0);
setEffAlphaKey(  spep_2+100, tame,  255);

Aura1503=entryEffectLife( spep_2,1503,100,0x80,  -1,  0,  0,  0);

setEffScaleKey(spep_2,Aura1503,  1.0,  1.0);
setEffMoveKey(spep_2,Aura1503,  0,  0);
setEffRotateKey(spep_2,Aura1503,  0);
setEffAlphaKey(spep_2,Aura1503,  255);
setEffScaleKey(spep_2+100,Aura1503,  1.0,  1.0);
setEffMoveKey(spep_2+100,Aura1503,  0,  0);
setEffRotateKey(spep_2+100,Aura1503,  0);
setEffAlphaKey(spep_2+100,Aura1503,  255);

Aura1659=entryEffectLife( spep_2,1659,100,0x80,  -1,  0,  0,  0);

setEffScaleKey(spep_2,Aura1659,  1.0,  1.0);
setEffMoveKey(spep_2,Aura1659,  0,  0);
setEffRotateKey(spep_2,Aura1659,  0);
setEffAlphaKey(spep_2,Aura1659,  255);
setEffScaleKey(spep_2+100,Aura1659,  1.0,  1.0);
setEffMoveKey(spep_2+100,Aura1659,  0,  0);
setEffRotateKey(spep_2+100,Aura1659,  0);
setEffAlphaKey(spep_2+100,Aura1659,  255);

playSe( spep_2, SE_04);

--entryEffect(  spep_2+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_2+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  spep_2+15,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2+15,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( spep_2+25, 190006,75, 0x100, -1, 0, 100, 510);    -- ゴゴゴ・・・
setEffShake(spep_2+25, ct, 70, 8);
setEffScaleKey(spep_2+25, ct,-0.8,0.8);

entryFade( spep_2+90, 8, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255); 
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+100;

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--集中線--
shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

entryFade( spep_3+80, 6, 10, 6, fcolor_r, fcolor_g, fcolor_b, 255);  

------------------------------------------------------
-- 発射(110F)
------------------------------------------------------
spep_4=spep_3+96;

Burst = entryEffectLife( spep_4,SP_07,110,0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_4,Burst,1.0,  1.0);
setEffMoveKey(  spep_4,Burst,0,0);
setEffRotateKey(  spep_4,Burst,0);
setEffAlphaKey(  spep_4,Burst,255);
setEffScaleKey(  spep_4+110,Burst,1.0,1.0);
setEffMoveKey(  spep_4+110,Burst,0,0);
setEffRotateKey(  spep_4+110,Burst,0);
setEffAlphaKey(  spep_4+110,Burst,255);

-- ** エフェクト等 ** --
entryFadeBg( spep_4, 0, 109, 0, 10, 10, 10, 255);       -- ベース暗め　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_4+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_4, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, sen2, 190);
setEffScaleKey( spep_4, sen2, 1.25, 1.25);

setShakeChara( spep_4+45, 0, 54, 50);

shuchusen4 = entryEffectLife( spep_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+49, shuchusen4, 2.0, 2.0);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_4+4, 10012, 44, 0, -1, 0, 100, 250); -- ズオッ

setEffMoveKey( spep_4+4,ctZuo,76,250,0);
setEffMoveKey( spep_4+8,ctZuo,150,350,0);
setEffMoveKey( spep_4+38,ctZuo,150,350,0);
setEffMoveKey( spep_4+48,ctZuo,150,350,0);
setEffShake(spep_4+4, ctZuo, 48, 15);
setEffAlphaKey(spep_4+4, ctZuo, 255);
setEffAlphaKey(spep_4+38, ctZuo, 255);
setEffAlphaKey(spep_4+48, ctZuo, 0);
setEffScaleKey(spep_4+4, ctZuo, 0.1, 0.1);
setEffScaleKey(spep_4+8, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_4+38, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_4+48, ctZuo, 6.0, 6.0);
setEffRotateKey( spep_4+4,ctZuo,25);
setEffRotateKey( spep_4+48,ctZuo,25);

playSe( spep_4, SE_07);
playSe( spep_4+60, SE_07);
entryFade( spep_4+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------
spep_5=spep_4+110;

setMoveKey(spep_5-1,0, 0, -54,0);
setMoveKey(spep_5,0, 0, -800,0);
setDisp( spep_5, 0, 0);

Semaru = entryEffectLife(spep_5,SP_04, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep_5, Semaru, 1.0, 1.0);
setEffMoveKey( spep_5, Semaru, 0, 0, 0);
setEffRotateKey( spep_5, Semaru, 0);
setEffAlphaKey( spep_5, Semaru, 255);

setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                        -- ガード
setMoveKey(  spep_5-2,    1, 9000, 0,   0);
setMoveKey(  spep_5-1,    1,  300,  0,   0);
setMoveKey(  spep_5,    1,  300,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);

setMoveKey(  spep_5+60,    1,   250,  -30,   0);
setScaleKey(  spep_5+60,   1,   2.5,  2.5);

playSe( spep_5, SE_06); 

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_5, 10014, 90, 0, -1, 0, 0, 310); -- ズドドッ
setEffShake(spep_5, ctZudodo, 90, 40);
setEffScaleKey( spep_5, ctZudodo, 3.3, 3.3);
setEffRotateKey(spep_5, ctZudodo, 0);
setEffAlphaKey(spep_5, ctZudodo, 255);

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 90, 20);

entryFadeBg( spep_5, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

sen7 = entryEffectLife( spep_5, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_5, sen7, 0);
setEffScaleKey( spep_5, sen7, 1.2, 1.0);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = spep_5+61; 

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge-1, 0,  -2500, -1000,0); --味方位置
setMoveKey( SP_dodge, 0,  -2500, -1000,0); --味方位置

setMoveKey(SP_dodge+1,1,275,-15,0);
setScaleKey(SP_dodge+1,1,1.75,1.75);
setRotateKey(SP_dodge+1,1,0);

setMoveKey(SP_dodge+8,1,275,-15,0);
setScaleKey(SP_dodge+8,1,1.75,1.75);
setRotateKey(SP_dodge+8,1,0);

setMoveKey( SP_dodge+9, 0,  -2500,  -1000,   0);
setMoveKey(   SP_dodge+10,   0,    -2500, -1000,   0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+10,   1, 0);
--setMoveKey(SP_dodge+10,1,0,0,0);
--setScaleKey(SP_dodge+10,1,1.0,1.0);
--setRotateKey(SP_dodge+10,1,0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------

playSe( spep_5+62, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_5+62, 1, 108);
setMoveKey(  spep_5+61, 1,  250,    -30,  0);
setMoveKey(  spep_5+62, 1,  230,    -30,  0);
setMoveKey(  spep_5+63, 1,  250,    -30,  0);
setMoveKey(  spep_5+89, 1,  300,    0,  0);
setScaleKey( spep_5+62, 1,  2.5, 2.5);
setScaleKey( spep_5+89, 1,  0.7, 0.7);

setRotateKey( spep_5, 1, 0); 
setRotateKey( spep_5+61, 1, 0); 
setRotateKey( spep_5+62, 1, 30); 
setRotateKey( spep_5+63, 1, 345); 
setRotateKey( spep_5+64, 1, 0); 
setRotateKey( spep_5+89, 1, 0); 

setDisp(spep_5+89,1,0);

setEffAlphaKey(spep_5+60, ctZudodo, 255);
setEffAlphaKey(spep_5+80, ctZudodo, 255);

entryFade( spep_5+77, 6, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_6=spep_5+90;

setDisp( spep_6-1, 1, 1);
setMoveKey(  spep_6-1,    1,  100,  0,   0);
setScaleKey( spep_6-1,    1,  1.0, 1.0);
setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);

changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+8, SE_10);

setMoveKey(  spep_6+8,   1,    0,   0,   128);
setMoveKey(  spep_6+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake(spep_6+7,6,15);
setShake(spep_6+13,15,10);

setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+115, ct, 0);

playSe( spep_6+3, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_6+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_6+16);
entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+106);

end
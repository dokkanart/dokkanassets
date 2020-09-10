--1012800 アンギラ　sp0458 エビルクエーサー

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

tyo = -30;
tyo2 = -40;

SP_01 = 151280;--溜め
SP_02 = 151634;--構え
SP_03 = 151635;--発射
SP_04 = 151636;--迫る


SP_02e = 151637;--溜め（敵用）
SP_03e = 151638;--発射（敵用）
SP_04e = 151636;--迫る（敵用）

setVisibleUI( 0, 0);

setDisp( 0, 1, 1);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -70,   0);
setMoveKey(   0,   1, 1000, -54,   0);
setMoveKey(   1,   0,    0, -70,   0);
setMoveKey(   1,   1, 1000, -54,   0);
setMoveKey(   2,   0,    0, -70,   0);
setMoveKey(   2,   1, 1000, -54,   0);
setMoveKey(   3,   0,    0, -70,   0);
setMoveKey(   3,   1, 1000, -54,   0);
setMoveKey(   4,   0,    0, -70,   0);
setMoveKey(   4,   1, 1000, -54,   0);
setMoveKey(   5,   0,    0, -70,   0);
setMoveKey(   5,   1, 1000, -54,   0);

setScaleKey(   1,   0, 1.2, 1.2);
setScaleKey(   1,   1, 1.5, 1.5);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- アイドリング(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep1=0;

setDisp(spep1, 0, 1);
changeAnime(spep1, 0, 0)

setScaleKey(   spep1,   0, 1.2, 1.2);
setScaleKey(   spep1+40,   0, 1.2, 1.2);

setMoveKey(   spep1+40,   0,    0, -70,   0);
setMoveKey(   spep1+40,   1, 1000, -54,   0);

-- ** エフェクト等 ** --
entryFade( spep1+37, 0, 3, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- かめはめ波溜め！(100F)(70-170F)
------------------------------------------------------
spep2=spep1+40;

setDisp(spep2, 0, 0);

setMoveKey(   spep2+40,   1, 1000, -54,   0);

-- 背景エフェクト --
back_2b = entryEffectLife( spep2, 1503, 100, 0x80,  0,  0,  0,  150); 

setEffScaleKey( spep2, back_2b, 1.1, 1.2);
setEffRotateKey( spep2, back_2b, 0);
setEffAlphaKey( spep2, back_2b, 255);
setEffScaleKey( spep2+100, back_2b, 1.1, 1.2);
setEffRotateKey( spep2+100, back_2b, 0);
setEffAlphaKey( spep2+100, back_2b, 255);

back_2c = entryEffectLife( spep2, 1502, 100, 0x80,  0,  0,  0,  0); 

setEffScaleKey( spep2, back_2c, 1.1, 1.2);
setEffRotateKey( spep2, back_2c, 0);
setEffAlphaKey( spep2, back_2c, 255);
setEffScaleKey( spep2+100, back_2c, 1.1, 1.2);
setEffRotateKey( spep2+100, back_2c, 0);
setEffAlphaKey( spep2+100, back_2c, 255);

back_2a = entryEffectLife( spep2, 1500, 100, 0x80,  0,  0,  0,  0); 

setEffScaleKey( spep2, back_2a, 1.1, 1.2);
setEffRotateKey( spep2, back_2a, 0);
setEffAlphaKey( spep2, back_2a, 255);
setEffScaleKey( spep2+100, back_2a, 1.1, 1.2);
setEffRotateKey( spep2+100, back_2a, 0);
setEffAlphaKey( spep2+100, back_2a, 255);

back_2d = entryEffectLife( spep2, 1501, 100, 0x80,  0,  0,  0,  150); 

setEffScaleKey( spep2, back_2d, 1.1, 1.2);
setEffRotateKey( spep2, back_2d, 0);
setEffAlphaKey( spep2, back_2d, 255);
setEffScaleKey( spep2+100, back_2d, 1.1, 1.2);
setEffRotateKey( spep2+100, back_2d, 0);
setEffAlphaKey( spep2+100, back_2d, 255);


--entryEffect(  spep2+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep2+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

Tame2 = entryEffect( spep2+0, SP_02, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep2+0, Tame2, 1.0, 1.0);
setEffMoveKey( spep2+0, Tame2, 0, -20,0);

shuchusen2 = entryEffectLife( spep2, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep2, shuchusen2, 1.2, 1.2);
setEffScaleKey( spep2+100, shuchusen2, 1.2, 1.2);

--speff = entryEffect(  spep2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep2, SE_04);


-- 書き文字エントリー
ctgogo = entryEffectLife( spep2+20, 190006, 80, 0x100, -1, 0, 0,500, 0);    -- ゴゴゴゴ
setEffShake(spep2+20, ctgogo, 80, 10);
setEffScaleKey(spep2+20, ctgogo, 0.8, 0.8);
setEffRotateKey(spep2+20, ctgogo, 0);
setEffAlphaKey( spep2+20, ctgogo, 255);

-- ** エフェクト等 ** --
entryFadeBg( spep2, 0, 100, 0, 0, 0, 0, 210);       -- ベース暗め　背景
entryFade( spep2+83, 7, 13, 6, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
------------------------------------------------------
-- カードカットイン(90F)(170-260F)
------------------------------------------------------
spep3=spep2+100;

playSe( spep3, SE_05);

speff = entryEffect(  spep3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep3, shuchusen3, 1.2, 1.2);
setEffScaleKey( spep3+90, shuchusen3, 1.2, 1.2);

entryFade( spep3+81, 7, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep3+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F) (260-350F)
------------------------------------------------------
spep4=spep3+90;

Hanatsu= entryEffectLife( spep4, SP_03, 100, 0x100,  0,  -1,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep4, Hanatsu, 0, 50, 0);
setEffMoveKey( spep4+100, Hanatsu, 0, 50, 0);

setEffScaleKey( spep4, Hanatsu, 1.0, 1.0);
setEffScaleKey( spep4+100, Hanatsu, 1.0, 1.0);

playSe( spep4, SE_07);

spname = entryEffectLife( spep4, 1508,48,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey( spep4,spname,255);
setEffAlphaKey( spep4+34,spname,255);
setEffAlphaKey( spep4+48,spname,0);   

--entryFade( spep4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(spep4+99);

-- ** エフェクト等 ** --
entryFadeBg( spep4, 0, 100, 0, 0, 0, 0, 230);       -- ベース暗め　背景

sen2 = entryEffectLife( spep4, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep4, sen2, 185);
setEffScaleKey( spep4, sen2, 1.1, 1.1);

--setShakeChara( spep4+45, 0, 54, 50);

shuchusen4 = entryEffectLife( spep4, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, shuchusen4, 1.3, 1.3);
setEffScaleKey( spep4+40, shuchusen4, 1.3, 1.3);
setEffScaleKey( spep4+49, shuchusen4, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep4, 10012, 48, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep4, ctzuo, 50, 250,0);
setEffMoveKey(spep4+6, ctzuo, 150, 350,0);
setEffMoveKey(spep4+48, ctzuo, 150, 350,0);
setEffShake(spep4, ctzuo, 32, 15);
setEffAlphaKey(spep4, ctzuo, 255);
setEffAlphaKey(spep4+40, ctzuo, 255);
setEffAlphaKey(spep4+48, ctzuo, 0);
setEffScaleKey(spep4, ctzuo, 0.1, 0.1);
setEffScaleKey(spep4+6, ctzuo, 2.8, 2.8);
setEffScaleKey(spep4+40, ctzuo, 2.8, 2.8);
setEffScaleKey(spep4+48, ctzuo, 6.0, 6.0);
setEffRotateKey(spep4, ctzuo, 30);
setEffRotateKey(spep4+48, ctzuo, 30);

--playSe( spep4+40, SE_07);
entryFade( spep4+92, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------
spep7=spep4+100;

setMoveKey(spep7-1,0, 0, -54,0);
setMoveKey(spep7,0, 0, -800,0);
setDisp( spep7, 0, 0);

Semaru = entryEffectLife(spep7,SP_04, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep7, Semaru, 1.0, 1.0);
setEffMoveKey( spep7, Semaru, 0, 0, 0);
setEffRotateKey( spep7, Semaru, 0);
setEffAlphaKey( spep7, Semaru, 255);

setDisp( spep7, 1, 1);
changeAnime( spep7, 1, 104);                        -- ガード
setMoveKey(  spep7-2,    1, 9000, 0,   0);
setMoveKey(  spep7-1,    1,  300,  0,   0);
setMoveKey(  spep7,    1,  300,  0,   0);
setScaleKey( spep7-1,    1,  1.0, 1.0);

setMoveKey(  spep7+60,    1,   250,  -30,   0);
setScaleKey(  spep7+60,   1,   2.5,  2.5);

playSe( spep7, SE_06); 

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep7, 10014, 90, 0, -1, 0, 0, 310); -- ズドドッ
setEffShake(spep7, ctZudodo, 90, 40);
setEffScaleKey( spep7, ctZudodo, 3.3, 3.3);
setEffRotateKey(spep7, ctZudodo, 70);
setEffAlphaKey(spep7, ctZudodo, 255);

-- ** エフェクト等 ** --
setShakeChara( spep7, 1, 90, 20);

entryFadeBg( spep7, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

sen7 = entryEffectLife( spep7, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep4, sen7, 0);
setEffScaleKey( spep4, sen7, 1.25, 1.0);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 350; 

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

playSe( spep7+62, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep7+62, 1, 108);
setMoveKey(  spep7+61, 1,  250,    -30,  0);
setMoveKey(  spep7+62, 1,  230,    -30,  0);
setMoveKey(  spep7+63, 1,  250,    -30,  0);
setMoveKey(  spep7+89, 1,  300,    0,  0);
setScaleKey( spep7+62, 1,  2.5, 2.5);
setScaleKey( spep7+89, 1,  0.7, 0.7);

setRotateKey( spep7, 1, 0); 
setRotateKey( spep7+61, 1, 0); 
setRotateKey( spep7+62, 1, 30); 
setRotateKey( spep7+63, 1, 345); 
setRotateKey( spep7+64, 1, 0); 
setRotateKey( spep7+89, 1, 0); 

setDisp(spep7+89,1,0);

setEffAlphaKey(spep7+60, ctZudodo, 255);
setEffAlphaKey(spep7+80, ctZudodo, 255);

entryFade( spep7+77, 6, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep8=spep7+90;


setDisp( spep8-1, 1, 1);
setMoveKey(  spep8-1,    1,  100,  0,   0);
setScaleKey( spep8-1,    1,  1.0, 1.0);
setMoveKey(  spep8,    1,    0,   0,   128);
setScaleKey( spep8,    1,  0.1, 0.1);

changeAnime( spep8, 1, 107);                         -- 手前ダメージ
entryEffect( spep8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep8+8, SE_10);

setMoveKey(  spep8+8,   1,    0,   0,   128);
setMoveKey(  spep8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep8+16,   1,  -60,  -200,  -100);
setDamage( spep8+16, 1, 0);  -- ダメージ振動等
setShake(spep8+7,6,15);
setShake(spep8+13,15,10);

setRotateKey( spep8,  1,  30 );
setRotateKey( spep8+2,  1,  80 );
setRotateKey( spep8+4,  1, 120 );
setRotateKey( spep8+6,  1, 160 );
setRotateKey( spep8+8,  1, 200 );
setRotateKey( spep8+10,  1, 260 );
setRotateKey( spep8+12,  1, 320 );
setRotateKey( spep8+14,  1,   0 );

setShakeChara( spep8+15, 1, 5,  10);
setShakeChara( spep8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep8+15, ct, 30, 10);
setEffRotateKey( spep8+15, ct, -40);
setEffScaleKey( spep8+15, ct, 4.0, 4.0);
setEffScaleKey( spep8+16, ct, 2.0, 2.0);
setEffScaleKey( spep8+17, ct, 2.6, 2.6);
setEffScaleKey( spep8+18, ct, 4.0, 4.0);
setEffScaleKey( spep8+19, ct, 2.6, 2.6);
setEffScaleKey( spep8+20, ct, 3.8, 3.8);
setEffScaleKey( spep8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep8+15, ct, 255);
setEffAlphaKey( spep8+105, ct, 255);
setEffAlphaKey( spep8+115, ct, 0);

playSe( spep8+3, SE_11);
shuchusen = entryEffectLife( spep8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep8+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep8+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep8+16);
entryFade( spep8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep8+110);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- アイドリング(40F)
------------------------------------------------------
spep1=0;

setDisp(spep1, 0, 1);
changeAnime(spep1, 0, 0)

setScaleKey(   spep1,   0, 1.2, 1.2);
setScaleKey(   spep1+40,   0, 1.2, 1.2);

setMoveKey(   spep1+40,   0,    0, -70,   0);
setMoveKey(   spep1+40,   1, 1000, -54,   0);

-- ** エフェクト等 ** --
entryFade( spep1+37, 0, 3, 7, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- かめはめ波溜め！(100F)(70-170F)
------------------------------------------------------
spep2=spep1+40;

setDisp(spep2, 0, 0);

setMoveKey(   spep2+40,   1, 1000, -54,   0);

-- 背景エフェクト --
back_2b = entryEffectLife( spep2, 1503, 100, 0x80,  0,  0,  0,  150); 

setEffScaleKey( spep2, back_2b, 1.1, 1.2);
setEffRotateKey( spep2, back_2b, 0);
setEffAlphaKey( spep2, back_2b, 255);
setEffScaleKey( spep2+100, back_2b, 1.1, 1.2);
setEffRotateKey( spep2+100, back_2b, 0);
setEffAlphaKey( spep2+100, back_2b, 255);

back_2c = entryEffectLife( spep2, 1502, 100, 0x80,  0,  0,  0,  0); 

setEffScaleKey( spep2, back_2c, 1.1, 1.2);
setEffRotateKey( spep2, back_2c, 0);
setEffAlphaKey( spep2, back_2c, 255);
setEffScaleKey( spep2+100, back_2c, 1.1, 1.2);
setEffRotateKey( spep2+100, back_2c, 0);
setEffAlphaKey( spep2+100, back_2c, 255);

back_2a = entryEffectLife( spep2, 1500, 100, 0x80,  0,  0,  0,  0); 

setEffScaleKey( spep2, back_2a, 1.1, 1.2);
setEffRotateKey( spep2, back_2a, 0);
setEffAlphaKey( spep2, back_2a, 255);
setEffScaleKey( spep2+100, back_2a, 1.1, 1.2);
setEffRotateKey( spep2+100, back_2a, 0);
setEffAlphaKey( spep2+100, back_2a, 255);

back_2d = entryEffectLife( spep2, 1501, 100, 0x80,  0,  0,  0,  150); 

setEffScaleKey( spep2, back_2d, 1.1, 1.2);
setEffRotateKey( spep2, back_2d, 0);
setEffAlphaKey( spep2, back_2d, 255);
setEffScaleKey( spep2+100, back_2d, 1.1, 1.2);
setEffRotateKey( spep2+100, back_2d, 0);
setEffAlphaKey( spep2+100, back_2d, 255);

--entryEffect(  spep2+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep2+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

Tame2 = entryEffect( spep2+0, SP_02e, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep2+0, Tame2, 1.0, 1.0);
setEffMoveKey( spep2+0, Tame2, 0, -20,0);

shuchusen2 = entryEffectLife( spep2, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep2, shuchusen2, 1.2, 1.2);
setEffScaleKey( spep2+100, shuchusen2, 1.2, 1.2);

--speff = entryEffect(  spep2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep2, SE_04);


-- 書き文字エントリー
ctgogo = entryEffectLife( spep2+20, 190006, 80, 0x100, -1, 0, 0,500, 0);    -- ゴゴゴゴ
setEffShake(spep2+20, ctgogo, 80, 10);
setEffScaleKey(spep2+20, ctgogo, -0.8, 0.8);
setEffRotateKey(spep2+20, ctgogo, 0);
setEffAlphaKey( spep2+20, ctgogo, 255);

-- ** エフェクト等 ** --
entryFadeBg( spep2, 0, 100, 0, 0, 0, 0, 210);       -- ベース暗め　背景
entryFade( spep2+83, 7, 13, 6, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
------------------------------------------------------
-- カードカットイン(90F)(170-260F)
------------------------------------------------------
spep3=spep2+100;

playSe( spep3, SE_05);

speff = entryEffect(  spep3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep3, shuchusen3, 1.2, 1.2);
setEffScaleKey( spep3+90, shuchusen3, 1.2, 1.2);

entryFade( spep3+81, 7, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep3+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F) (260-350F)
------------------------------------------------------
spep4=spep3+90;

Hanatsu= entryEffectLife( spep4, SP_03e, 100, 0x100,  0,  -1,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep4, Hanatsu, 0, 50, 0);
setEffMoveKey( spep4+100, Hanatsu, 0, 50, 0);

setEffScaleKey( spep4, Hanatsu, 1.0, 1.0);
setEffScaleKey( spep4+100, Hanatsu, 1.0, 1.0);

playSe( spep4, SE_07);

spname = entryEffectLife( spep4, 1508,48,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey( spep4,spname,255);
setEffAlphaKey( spep4+34,spname,255);
setEffAlphaKey( spep4+48,spname,0);   

--entryFade( spep4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(spep4+99);

-- ** エフェクト等 ** --
entryFadeBg( spep4, 0, 100, 0, 0, 0, 0, 230);       -- ベース暗め　背景

sen2 = entryEffectLife( spep4, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep4, sen2, 185);
setEffScaleKey( spep4, sen2, 1.1, 1.1);

--setShakeChara( spep4+45, 0, 54, 50);

shuchusen4 = entryEffectLife( spep4, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, shuchusen4, 1.3, 1.3);
setEffScaleKey( spep4+40, shuchusen4, 1.3, 1.3);
setEffScaleKey( spep4+49, shuchusen4, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep4, 10012, 48, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep4, ctzuo, 50, 250,0);
setEffMoveKey(spep4+6, ctzuo, 150, 350,0);
setEffMoveKey(spep4+48, ctzuo, 150, 350,0);
setEffShake(spep4, ctzuo, 32, 15);
setEffAlphaKey(spep4, ctzuo, 255);
setEffAlphaKey(spep4+40, ctzuo, 255);
setEffAlphaKey(spep4+48, ctzuo, 0);
setEffScaleKey(spep4, ctzuo, 0.1, 0.1);
setEffScaleKey(spep4+6, ctzuo, 2.8, 2.8);
setEffScaleKey(spep4+40, ctzuo, 2.8, 2.8);
setEffScaleKey(spep4+48, ctzuo, 6.0, 6.0);
setEffRotateKey(spep4, ctzuo, 330);
setEffRotateKey(spep4+48, ctzuo, 330);

--playSe( spep4+40, SE_07);
entryFade( spep4+92, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------
spep7=spep4+100;

setMoveKey(spep7-1,0, 0, -54,0);
setMoveKey(spep7,0, 0, -800,0);
setDisp( spep7, 0, 0);

Semaru = entryEffectLife(spep7,SP_04e, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep7, Semaru, 1.0, 1.0);
setEffMoveKey( spep7, Semaru, 0, 0, 0);
setEffRotateKey( spep7, Semaru, 0);
setEffAlphaKey( spep7, Semaru, 255);

setDisp( spep7, 1, 1);
changeAnime( spep7, 1, 104);                        -- ガード
setMoveKey(  spep7-2,    1, 9000, 0,   0);
setMoveKey(  spep7-1,    1,  300,  0,   0);
setMoveKey(  spep7,    1,  300,  0,   0);
setScaleKey( spep7-1,    1,  1.0, 1.0);

setMoveKey(  spep7+60,    1,   250,  -30,   0);
setScaleKey(  spep7+60,   1,   2.5,  2.5);

playSe( spep7, SE_06); 

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep7, 10014, 90, 0, -1, 0, 0, 310); -- ズドドッ
setEffShake(spep7, ctZudodo, 90, 40);
setEffScaleKey( spep7, ctZudodo, 3.3, 3.3);
setEffRotateKey(spep7, ctZudodo, 10);
setEffAlphaKey(spep7, ctZudodo, 255);

-- ** エフェクト等 ** --
setShakeChara( spep7, 1, 90, 20);

entryFadeBg( spep7, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

sen7 = entryEffectLife( spep7, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep4, sen7, 0);
setEffScaleKey( spep4, sen7, 1.25, 1.0);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 350; 

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

playSe( spep7+62, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep7+62, 1, 108);
setMoveKey(  spep7+61, 1,  250,    -30,  0);
setMoveKey(  spep7+62, 1,  230,    -30,  0);
setMoveKey(  spep7+63, 1,  250,    -30,  0);
setMoveKey(  spep7+89, 1,  300,    0,  0);
setScaleKey( spep7+62, 1,  2.5, 2.5);
setScaleKey( spep7+89, 1,  0.7, 0.7);

setRotateKey( spep7, 1, 0); 
setRotateKey( spep7+61, 1, 0); 
setRotateKey( spep7+62, 1, 30); 
setRotateKey( spep7+63, 1, 345); 
setRotateKey( spep7+64, 1, 0); 
setRotateKey( spep7+89, 1, 0); 

setDisp(spep7+89,1,0);

setEffAlphaKey(spep7+60, ctZudodo, 255);
setEffAlphaKey(spep7+80, ctZudodo, 255);

entryFade( spep7+77, 6, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep8=spep7+90;


setDisp( spep8-1, 1, 1);
setMoveKey(  spep8-1,    1,  100,  0,   0);
setScaleKey( spep8-1,    1,  1.0, 1.0);
setMoveKey(  spep8,    1,    0,   0,   128);
setScaleKey( spep8,    1,  0.1, 0.1);

changeAnime( spep8, 1, 107);                         -- 手前ダメージ
entryEffect( spep8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep8+8, SE_10);

setMoveKey(  spep8+8,   1,    0,   0,   128);
setMoveKey(  spep8+15,   1,  -60,  -200,  -100);
setMoveKey(  spep8+16,   1,  -60,  -200,  -100);
setDamage( spep8+16, 1, 0);  -- ダメージ振動等
setShake(spep8+7,6,15);
setShake(spep8+13,15,10);

setRotateKey( spep8,  1,  30 );
setRotateKey( spep8+2,  1,  80 );
setRotateKey( spep8+4,  1, 120 );
setRotateKey( spep8+6,  1, 160 );
setRotateKey( spep8+8,  1, 200 );
setRotateKey( spep8+10,  1, 260 );
setRotateKey( spep8+12,  1, 320 );
setRotateKey( spep8+14,  1,   0 );

setShakeChara( spep8+15, 1, 5,  10);
setShakeChara( spep8+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep8+15, ct, 30, 10);
setEffRotateKey( spep8+15, ct, -40);
setEffScaleKey( spep8+15, ct, 4.0, 4.0);
setEffScaleKey( spep8+16, ct, 2.0, 2.0);
setEffScaleKey( spep8+17, ct, 2.6, 2.6);
setEffScaleKey( spep8+18, ct, 4.0, 4.0);
setEffScaleKey( spep8+19, ct, 2.6, 2.6);
setEffScaleKey( spep8+20, ct, 3.8, 3.8);
setEffScaleKey( spep8+110, ct, 3.8, 3.8);
setEffAlphaKey( spep8+15, ct, 255);
setEffAlphaKey( spep8+105, ct, 255);
setEffAlphaKey( spep8+115, ct, 0);

playSe( spep8+3, SE_11);
shuchusen = entryEffectLife( spep8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep8+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep8+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep8+16);
entryFade( spep8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep8+110);

end
--sp0417 ジース

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


SP_01 = 151299;--溜め
SP_02 = 151300;--構え
SP_03 = 151301;--発射

SP_01e = 151302;--溜め（敵用）
SP_02e = 151303;--発射（敵用）


setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);


------------------------------------------------------
-- 気溜め(40F)(0-70F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep2=0;


------------------------------------------------------
-- かめはめ波溜め！(100F)(70-170F)
------------------------------------------------------

--entryEffect(  spep2+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep2+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

Tame2 = entryEffect( spep2, SP_01, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep2, Tame2, 1.0, 1.0);
setEffMoveKey( spep2, Tame2, 0, 50,0);

shuchusen2 = entryEffectLife( spep2+28, 906, 112, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep2+28, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep2+140, shuchusen2, 1.0, 1.0);

speff = entryEffect(  spep2+50,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep2+50,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep2+50, SE_04);


-- 書き文字エントリー
ctgogo = entryEffectLife( spep2+80, 190006, 60, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep2+80, ctgogo, 60, 10);
setEffScaleKey(spep2+80, ctgogo, 0.7, 0.7);
setEffRotateKey(spep2+80, ctgogo, 0);
setEffAlphaKey( spep2+80, ctgogo, 255);

-- ** エフェクト等 ** --
entryFadeBg( spep2+27, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFade( spep2+25, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFade( spep2+55, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b,  180);     -- white fade
entryFade( spep2+79, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b,  180);     -- white fade
entryFade( spep2+133, 2, 7, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
------------------------------------------------------
-- カードカットイン(90F)(170-260F)
------------------------------------------------------
spep3=spep2+140;

setScaleKey( spep3-1,   0, 1.2, 1.2);
setScaleKey( spep3-1,   0, 1.5, 1.5);
setScaleKey( spep3,   0, 1.0, 1.0);

playSe( spep3, SE_05);
speff = entryEffect(  spep3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep3+81, 7, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep3+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F) (260-350F)
------------------------------------------------------
spep4=spep3+90;

Hanatsu= entryEffectLife( spep4, SP_02, 110, 0x100,  0,  -1,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep4, Hanatsu, 0, 0);
setEffMoveKey( spep4+110, Hanatsu, 0, 0, 0);

setEffScaleKey( spep4, Hanatsu, 1.0, 1.0);
setEffScaleKey( spep4+110, Hanatsu, 1.0, 1.0);

playSe( spep4, SE_07);

spname = entryEffectLife( spep4, 1508,48,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey( spep4,spname,255);
setEffAlphaKey( spep4+26,spname,255);
setEffAlphaKey( spep4+48,spname,0);   

entryFade( spep4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(spep4+99);

-- ** エフェクト等 ** --
--entryFadeBg( spep4, 0, 40, 3, 245, 245, 245, 255);       -- ベース暗め　背景
entryFadeBg( spep4, 0, 110, 0, 0, 0, 0, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep4, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep4, sen2, 190);
setEffScaleKey( spep4, sen2, 1.25, 1.25);

--setShakeChara( spep4+45, 0, 54, 50);

shuchusen4 = entryEffectLife( spep4, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep4+40, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep4+49, shuchusen4, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep4+4, 10012, 42, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep4+4, ctzuo, 100, 300,0);
setEffMoveKey(spep4+10, ctzuo, 150, 400,0);
setEffMoveKey(spep4+46, ctzuo, 150, 400,0);
setEffShake(spep4+4, ctzuo, 32, 15);
setEffAlphaKey(spep4+4, ctzuo, 255);
setEffAlphaKey(spep4+40, ctzuo, 255);
setEffAlphaKey(spep4+46, ctzuo, 0);
setEffScaleKey(spep4+4, ctzuo, 0.1, 0.1);
setEffScaleKey(spep4+10, ctzuo, 3.0, 3.0);
setEffScaleKey(spep4+40, ctzuo, 3.0, 3.0);
setEffScaleKey(spep4+46, ctzuo, 6.0, 6.0);
setEffRotateKey(spep4+4, ctzuo, 20);
setEffRotateKey(spep4+46, ctzuo, 20);

--playSe( spep4+40, SE_07);
entryFade( spep4+90, 10,  17, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------
spep7=spep4+110;

setDisp( spep7, 0, 0);
setMoveKey(spep7-1,0, 0, -54,0);
setMoveKey(spep7,0, 0, -800,0);

Semaru = entryEffectLife(spep7,SP_03, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep7, Semaru, 1.0, 1.0);
setEffMoveKey( spep7, Semaru, 0, 0, 0);
setEffRotateKey( spep7, Semaru, 0);
setEffAlphaKey( spep7, Semaru, 255);

setDisp( spep7, 1, 1);
changeAnime( spep7, 1, 104);                        -- ガード
setMoveKey(  spep7-1,    1,  300,  0,   0);
setMoveKey(  spep7,    1,  300,  0,   0);
setScaleKey( spep7-1,    1,  0.7, 0.7);

setMoveKey(  spep7+30,    1,   120,  0,   0);
setScaleKey(  spep7+30,   1,   1.6,  1.6);

playSe( spep7, SE_06); 

-- ** エフェクト等 ** --
setShakeChara( spep7, 1, 90, 20);

entryFadeBg( spep7, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryEffectLife( spep7, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep7, 10014, 90, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep7, ctZudodo, 90, 20);
setEffScaleKey( spep7, ctZudodo, 3.0, 3.0);
setEffRotateKey(spep7, ctZudodo, 70);
setEffAlphaKey(spep7, ctZudodo, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 370; --エンドフェイズのフレーム数を置き換える　（spep7+43）

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

setMoveKey(   SP_dodge+1,    1,  120,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+8,   1,   120, 0,  0);
setScaleKey(   SP_dodge+8,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------
playSe( spep7+53, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep7+61, 1, 108);
setMoveKey(  spep7+61, 1,  120,    0,  0);
setMoveKey(  spep7+80, 1,  325,    0,  0);
setMoveKey(  spep7+89, 1,  325,    0,  0);
setScaleKey( spep7+52, 1,  1.6, 1.6);
setScaleKey( spep7+53, 1,  1.5, 1.5);
setScaleKey( spep7+80, 1,  0.5, 0.5);
setScaleKey( spep7+89, 1,  0.5, 0.5);

setRotateKey( spep7, 1, 0); 
setRotateKey( spep7+89, 1, 0); 

setDisp(spep7+89,1,0);

setEffAlphaKey(spep7+60, ctZudodo, 255);
setEffAlphaKey(spep7+80, ctZudodo, 0);

entryFade( spep7+80, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep8=spep7+90;

setDisp( spep8-1, 0, 0);
setMoveKey(  spep8-1,    1,  100,  0,   0);
setScaleKey( spep8-1,    1,  1, 1);
setMoveKey(  spep8,    1,    0,   0,   128);
setScaleKey( spep8,    1,  0.1, 0.1);

changeAnime( spep8, 1, 107);                         -- 手前ダメージ
setDisp( spep8, 1, 1);

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
ctGa = entryEffectLife( spep8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep8+15, ctGa, 30, 10);
setEffRotateKey( spep8+15, ctGa, -40);
setEffScaleKey( spep8+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep8+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep8+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep8+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep8+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep8+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep8+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep8+15, ctGa, 255);
setEffAlphaKey( spep8+105, ctGa, 255);
setEffAlphaKey( spep8+115, ctGa, 0);

playSe( spep8+13, SE_11);
shuchusen8 = entryEffectLife( spep8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep8+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep8+16);

entryFade( spep8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep8+110);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
spep2=0;


------------------------------------------------------
-- かめはめ波溜め！(100F)(70-170F)
------------------------------------------------------

--entryEffect(  spep2+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep2+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

Tame2a = entryEffect( spep2, SP_01e, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep2, Tame2a, 1.0, 1.0);
setEffMoveKey( spep2, Tame2a, 0, 50,0);
setEffAlphaKey( spep2, Tame2a, 255);
setEffAlphaKey( spep2+28, Tame2a, 255);
setEffAlphaKey( spep2+29, Tame2a, 0);

Tame2b = entryEffect( spep2, SP_01e, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep2, Tame2b, -1.0, 1.0);
setEffMoveKey( spep2, Tame2b, 0, 50,0);
setEffAlphaKey( spep2, Tame2b, 0);
setEffAlphaKey( spep2+28, Tame2b, 0);
setEffAlphaKey( spep2+29, Tame2b, 255);

shuchusen2 = entryEffectLife( spep2+28, 906, 112, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep2+28, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep2+140, shuchusen2, 1.0, 1.0);

playSe( spep2+50, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep2+80, 190006, 60, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep2+80, ctgogo, 60, 10);
setEffScaleKey(spep2+80, ctgogo, -0.7, 0.7);
setEffRotateKey(spep2+80, ctgogo, 0);
setEffAlphaKey( spep2+80, ctgogo, 255);

-- ** エフェクト等 ** --
entryFadeBg( spep2+27, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFade( spep2+25, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
entryFade( spep2+55, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b,  180);     -- white fade
entryFade( spep2+79, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b,  180);     -- white fade
entryFade( spep2+133, 2, 7, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade
------------------------------------------------------
-- カードカットイン(90F)(170-260F)
------------------------------------------------------
spep3=spep2+140;

setScaleKey( spep3-1,   0, 1.2, 1.2);
setScaleKey( spep3-1,   0, 1.5, 1.5);
setScaleKey( spep3,   0, 1.0, 1.0);

playSe( spep3, SE_05);
speff = entryEffect(  spep3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep3+81, 7, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep3+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F) (260-350F)
------------------------------------------------------
spep4=spep3+90;

Hanatsu= entryEffectLife( spep4, SP_02e, 110, 0x100,  0,  -1,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep4, Hanatsu, 0, 0);
setEffMoveKey( spep4+110, Hanatsu, 0, 0, 0);

setEffScaleKey( spep4, Hanatsu, 1.0, 1.0);
setEffScaleKey( spep4+110, Hanatsu, 1.0, 1.0);

playSe( spep4, SE_07);

spname = entryEffectLife( spep4, 1508,48,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey( spep4,spname,255);
setEffAlphaKey( spep4+26,spname,255);
setEffAlphaKey( spep4+48,spname,0);   

entryFade( spep4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(spep4+99);

-- ** エフェクト等 ** --
--entryFadeBg( spep4, 0, 40, 3, 245, 245, 245, 255);       -- ベース暗め　背景
entryFadeBg( spep4, 0, 110, 0, 0, 0, 0, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep4, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep4, sen2, 190);
setEffScaleKey( spep4, sen2, 1.25, 1.25);

--setShakeChara( spep4+45, 0, 54, 50);

shuchusen4 = entryEffectLife( spep4, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep4, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep4+40, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep4+49, shuchusen4, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep4+4, 10012, 42, 0, -1, 0, 100, 300); -- ズオッ
setEffMoveKey(spep4+4, ctzuo, 100, 300,0);
setEffMoveKey(spep4+10, ctzuo, 150, 400,0);
setEffMoveKey(spep4+46, ctzuo, 150, 400,0);
setEffShake(spep4+4, ctzuo, 32, 15);
setEffAlphaKey(spep4+4, ctzuo, 255);
setEffAlphaKey(spep4+40, ctzuo, 255);
setEffAlphaKey(spep4+46, ctzuo, 0);
setEffScaleKey(spep4+4, ctzuo, 0.1, 0.1);
setEffScaleKey(spep4+10, ctzuo, 3.0, 3.0);
setEffScaleKey(spep4+40, ctzuo, 3.0, 3.0);
setEffScaleKey(spep4+46, ctzuo, 6.0, 6.0);
setEffRotateKey(spep4+4, ctzuo, 20);
setEffRotateKey(spep4+46, ctzuo, 20);

--playSe( spep4+40, SE_07);
entryFade( spep4+90, 10,  17, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)(350-450F)
------------------------------------------------------
spep7=spep4+110;

setDisp( spep7, 0, 0);
setMoveKey(spep7-1,0, 0, -54,0);
setMoveKey(spep7,0, 0, -800,0);

Semaru = entryEffectLife(spep7,SP_03, 90,0x100,  -1, 0,  0,  0);
setEffScaleKey( spep7, Semaru, 1.0, 1.0);
setEffMoveKey( spep7, Semaru, 0, 0, 0);
setEffRotateKey( spep7, Semaru, 0);
setEffAlphaKey( spep7, Semaru, 255);

setDisp( spep7, 1, 1);
changeAnime( spep7, 1, 104);                        -- ガード
setMoveKey(  spep7-1,    1,  300,  0,   0);
setMoveKey(  spep7,    1,  300,  0,   0);
setScaleKey( spep7-1,    1,  0.7, 0.7);

setMoveKey(  spep7+30,    1,   120,  0,   0);
setScaleKey(  spep7+30,   1,   1.6,  1.6);

playSe( spep7, SE_06); 

-- ** エフェクト等 ** --
setShakeChara( spep7, 1, 90, 20);

entryFadeBg( spep7, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryEffectLife( spep7, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep7, 10014, 90, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep7, ctZudodo, 90, 20);
setEffScaleKey( spep7, ctZudodo, 3.0, 3.0);
setEffRotateKey(spep7, ctZudodo, 20);
setEffAlphaKey(spep7, ctZudodo, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 370; --エンドフェイズのフレーム数を置き換える　（spep7+43）

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

setMoveKey(   SP_dodge+1,    1,  120,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+8,   1,   120, 0,  0);
setScaleKey(   SP_dodge+8,   1, 1.6, 1.6);
setRotateKey(   SP_dodge+8,   1, 0);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避されなかった場合
------------------------------------------------------
playSe( spep7+53, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep7+61, 1, 108);
setMoveKey(  spep7+61, 1,  120,    0,  0);
setMoveKey(  spep7+80, 1,  325,    0,  0);
setMoveKey(  spep7+89, 1,  325,    0,  0);
setScaleKey( spep7+52, 1,  1.6, 1.6);
setScaleKey( spep7+53, 1,  1.5, 1.5);
setScaleKey( spep7+80, 1,  0.5, 0.5);
setScaleKey( spep7+89, 1,  0.5, 0.5);

setRotateKey( spep7, 1, 0); 
setRotateKey( spep7+89, 1, 0); 

setDisp(spep7+89,1,0);

setEffAlphaKey(spep7+60, ctZudodo, 255);
setEffAlphaKey(spep7+80, ctZudodo, 0);

entryFade( spep7+80, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep8=spep7+90;

setDisp( spep8-1, 0, 0);
setMoveKey(  spep8-1,    1,  100,  0,   0);
setScaleKey( spep8-1,    1,  1, 1);
setMoveKey(  spep8,    1,    0,   0,   128);
setScaleKey( spep8,    1,  0.1, 0.1);

changeAnime( spep8, 1, 107);                         -- 手前ダメージ
setDisp( spep8, 1, 1);

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
ctGa = entryEffectLife( spep8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep8+15, ctGa, 30, 10);
setEffRotateKey( spep8+15, ctGa, -40);
setEffScaleKey( spep8+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep8+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep8+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep8+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep8+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep8+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep8+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep8+15, ctGa, 255);
setEffAlphaKey( spep8+105, ctGa, 255);
setEffAlphaKey( spep8+115, ctGa, 0);

playSe( spep8+13, SE_11);
shuchusen8 = entryEffectLife( spep8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep8+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep8+16);


entryFade( spep8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep8+110);

end
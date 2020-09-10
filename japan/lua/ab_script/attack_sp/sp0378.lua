
print("[lua]sp0378");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150599; --　迫る亀仙人(90)
SP_02 = 150600; --　詠唱(50)
SP_03 = 150601; --　仙人(95)
SP_04 = 150602; --　迫る横ビーム(36)
SP_05 = 150603; --　迫るかめはめ波(50)
SP_06 = 150604; --　迫る亀仙人（敵）(90)
SP_07 = 150605; --　仙人(敵）(95)


SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン 高速ダッシュ移動
SE_05 = 1035; --カットイン攻撃
SE_06 = 1018; --発射
SE_07 = 1018; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1025; --HIT 気をまとった打撃攻撃。通常のパンチ、キック強打よりも爆発音よりの音
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

multi_frm = 2;
-------------------------------------------------------
-------------------------------------------------------
changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,    0,    0,   -600,   0);
setMoveKey(   0,    1,    0,   -600,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);

-------------------------------------------------------
-------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
setVisibleUI(0, 0);

-------------------------------------------------------
--SP_01 = 150599; --　迫る亀仙人(90)
-------------------------------------------------------
step_1 = 0;
speff_01 = entryEffectLife(step_1, 150599, 178, 0x100,     -1,  0,  0,  0);--導入

setEffMoveKey( step_1, speff_01, 0, 0, 0);
setEffAlphaKey( step_1, speff_01, 255);
setEffScaleKey( step_1, speff_01, 1.0, 1.0);
setEffRotateKey( step_1, speff_01, 0);

setEffMoveKey( step_1+178, speff_01, 0, 0, 0);
setEffScaleKey( step_1+178, speff_01, 1.0, 1.0);
setEffAlphaKey( step_1+178, speff_01, 255);
setEffRotateKey( step_1+178, speff_01, 0);

--setEffShake(step_1,speff_01,178,10);

--67F 強キック
playSe(67,1010); --1025 気を込めたキック
--113F お札ピタ
playSe(113,1001);

--書き文字
pinch1 = entryEffectLife( step_1+48, 10000, 17, 0x100,  -1, 0,  0,  0); --!(10000)
setEffMoveKey(step_1+48, pinch1, 50, 160, 0);
setEffScaleKey( step_1+48, pinch1, 2.4, 2.4);
setEffAlphaKey( step_1+48, pinch1, 255);
setEffRotateKey( step_1+48, pinch1, 0);

--集中線
shuchusen1 = entryEffectLife( step_1+68, 906, 55, 0x100,  -1, 0,  0,  0);  
setEffMoveKey(step_1+68, shuchusen1, 0, 0, 0);
setEffScaleKey( step_1+68, shuchusen1, 1.4, 1.4);
setEffAlphaKey( step_1+68, shuchusen1, 255);
setEffRotateKey( step_1+68, shuchusen1, 0);

entryFade( step_1+175, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-------------------------------------------------------
--SP_02 = 150600; 179-277 --　詠唱(50)
-------------------------------------------------------
step_2 = step_1+180;
speff_02 = entryEffect( step_2, 150600, 0,     -1,  0,  0,  0);

setEffMoveKey( step_2, speff_02, 0, 0, 0);
setEffScaleKey( step_2, speff_02, 1.0, 1.0);
setEffAlphaKey( step_2, speff_02, 255);
setEffRotateKey( step_2, speff_02, 0);

setEffShake(step_2,speff_02,100,10);

--集中線(黒)
shuchusen2 = entryEffectLife(step_2, 911, 100, 0x100,  -1, 0,  0,  0);  
setEffMoveKey(step_2, shuchusen2, 0, 0, 0);
setEffScaleKey( step_2, shuchusen2, 1.4, 1.4);
setEffAlphaKey( step_2, shuchusen2, 255);
setEffRotateKey( step_2, shuchusen2, 0);

setEffMoveKey(step_2+100, shuchusen2, 0, 0, 0);
setEffScaleKey( step_2+100, shuchusen2, 1.4, 1.4);
setEffAlphaKey( step_2+100, shuchusen2, 255);
setEffRotateKey( step_2+100, shuchusen2, 0);

speff = entryEffect(  step_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  step_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(step_2, SE_04);


--書き文字
ctgogo = entryEffectLife( step_2+20, 190006, 65, 0x100, -1, -170, 0, 500);    -- ゴゴゴゴ
--setEffShake( step_2+20, ctgogo, 65, 20);
setEffRotateKey( step_2+20, ctgogo, 0);

setEffScaleKey( step_2+20, ctgogo, 0.6, 0.6);
setEffAlphaKey( step_2+20, ctgogo, 255);

setEffScaleKey( step_2+81, ctgogo, 0.6, 0.6);
setEffAlphaKey( step_2+81, ctgogo, 255);

setEffScaleKey( step_2+85, ctgogo, 3.0, 3.0);
setEffAlphaKey( step_2+85, ctgogo, 0);

entryFade( step_2+95, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------------------------------------
--カードカットイン 278-368 (100-190)—90F
--------------------------------------------------------------------
step_3 = step_2+100;

setScaleKey( step_3-9,   0, 1.5, 1.5);
setScaleKey( step_3-8,   0, 1.0, 1.0);

speff = entryEffect( step_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

playSe(step_3, SE_05);

entryFade( step_3+85, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-------------------------------------------------------
--SP_03 = 150601; --　仙人(95)
-------------------------------------------------------
step_4 = step_3+90;
speff_03 = entryEffect( step_4, 150601, 0,     -1,  0,  0,  0);

setEffMoveKey( step_4, speff_03, 0, 0, 0);
setEffScaleKey( step_4, speff_03, 1.0, 1.0);
setEffAlphaKey( step_4, speff_03, 255);
setEffRotateKey( step_4, speff_03, 0);

setEffShake(step_4, speff_03, 190, 10);

--集中線
shuchusen4a = entryEffectLife( step_4, 906, 25, 0x100,  -1, 0,  0,  0); -- -493
setEffMoveKey(step_4, shuchusen4a, 0, 0, 0);
setEffScaleKey( step_4, shuchusen4a, 1.4, 1.4);
setEffAlphaKey( step_4, shuchusen4a, 255);
setEffRotateKey( step_4, shuchusen4a, 0);

--集中線
shuchusen4b = entryEffectLife( step_4+79, 906, 45, 0x100,  -1, 0,  0,  0); -- -493
setEffMoveKey(step_4+79, shuchusen4b, 0, 0, 0);
setEffScaleKey( step_4+79, shuchusen4b, 1.4, 1.4);
setEffAlphaKey( step_4+79, shuchusen4b, 255);
setEffRotateKey( step_4+79, shuchusen4b, 0);

--横線
ryusen5 = entryEffectLife( step_4+168, 920, 22, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( step_4+168, ryusen5, 0);
setEffScaleKey( step_4+168, ryusen5, 1.0, 1.0);
setEffAlphaKey( step_4+168, ryusen5, 255);

--書き文字
zuzu = entryEffectLife(step_4+88, 10013, 31,  0x100, -1, 120, 150, 0);-- ずずずん 457

setEffRotateKey( step_4+88, zuzu, 0);
setEffMoveKey( step_4+88, zuzu, 120, 150, 0);
setEffScaleKey( step_4+88, zuzu, 1.2, 1.2);
setEffAlphaKey( step_4+88, zuzu, 255);

setEffMoveKey( step_4+98, zuzu, 120, 220, 0);
setEffScaleKey( step_4+98, zuzu, 1.2, 1.2);
setEffAlphaKey( step_4+98, zuzu, 255);
setEffRotateKey( step_4+98, zuzu, 0);

setEffMoveKey( step_4+118, zuzu, 120, 220, 0);
setEffScaleKey( step_4+118, zuzu, 1.2, 1.2);
setEffAlphaKey( step_4+118, zuzu, 255);
setEffRotateKey( step_4+118, zuzu, 0);

setEffAlphaKey( step_4+119, zuzu, 0);

setEffShake( step_4+88, zuzu, 31, 10);

--420F きため
playSe(420,SE_01); --気を貯める
--490F 強きため
playSe(490,SE_02) --気が広がる
playSe(515,SE_02) --気が広がる
--539F 放つ
playSe(539,1022) --かめはめ波ーー

--書き文字
zuo = entryEffectLife(step_4+170, 10012, 18,  0x100, -1, 130, 21, 0);-- ズオ 540
setEffMoveKey( step_4+170, zuo, 130, 210, 0);
setEffScaleKey( step_4+170, zuo, 2.0, 2.0);
setEffAlphaKey( step_4+170, zuo, 255);
setEffRotateKey( step_4+170, zuo, 0);

setEffShake( step_4+170, zuo, 18, 20);

entryFadeBg( step_4, 0, 190, 0, 10, 10, 10, 200);
entryFade( step_4+186, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-------------------------------------------------------
--SP_04 = 150602; 560-632 --　迫る横ビーム(36)
-------------------------------------------------------
step_5 = step_4+190;
speff_04 = entryEffect( step_5,150602, 0,     -1,  0,  0,  0);

setEffMoveKey( step_5, speff_04, 0, 0, 0);
setEffScaleKey( step_5, speff_04, 1.0, 1.0);
setEffAlphaKey( step_5, speff_04, 255);
setEffRotateKey( step_5, speff_04, 0);

setEffShake(step_5, speff_04, 72, 20);

entryFadeBg( step_5, 0, 72, 0, 10, 10, 10, 200);
entryFade( step_5+67, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--横線
ryusen5 = entryEffectLife( step_5, 920, 72, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( step_5, ryusen5, 0);
setEffScaleKey( step_5, ryusen5, 1.0, 1.0);
setEffAlphaKey( step_5, ryusen5, 255);

entryFadeBg( step_5, 0, 72, 0, 10, 10, 10, 200);
entryFade( step_5+67, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( step_5,1018);

-------------------------------------------------------
--SP_05 = 150603; 633-733--　迫るかめはめ波(50)
-------------------------------------------------------
step_6 = step_5+72;

changeAnime(step_6-1,1,104);
setDisp(step_6-1,1,1);
setMoveKey(step_6-1,1,200,0,0);
setScaleKey(step_6-1,1,0.6,0.6);
setRotateKey(step_6-1,1,0);
setShakeChara(step_6-1,1,50,20);

speff_05 = entryEffect(step_6, 150603, 0x100, -1,  0,  0,  0);

setEffMoveKey( step_6, speff_05, 0, 0, 0);
setEffScaleKey( step_6, speff_05, 1.0, 1.0);
setEffAlphaKey( step_6, speff_05, 255);
setEffRotateKey( step_6, speff_05, 0);

setEffShake(step_6, speff_05, 100, 20);

--書き文字
zudo = entryEffectLife(step_6, 10014, 71,  0x100, -1, 0, 400, 0);-- ズドド 540
setEffMoveKey( step_6, zudo, 0, 350, 0);
setEffScaleKey( step_6, zudo, 3.5, 3.5);
setEffAlphaKey( step_6, zudo, 255);
setEffRotateKey( step_6, zudo, 70);

setEffShake( step_6, zudo, 100, 20);

--横線(奥行き)
ryusen6 = entryEffectLife( step_6, 921, 100, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( step_6, ryusen6, 0);
setEffScaleKey( step_6, ryusen6, 1.0, 1.0);
setEffAlphaKey( step_6, ryusen6, 255);

entryFadeBg( step_6, 0,100, 0, 10, 10, 10, 200);

playSe( step_6,1018);
------------------------------------------------------
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 690; --エンドフェイズのフレーム数を置き換える (step_6+57)

setMoveKey(step_6+57,1,200,0,0);
setScaleKey(step_6+57,1,2.15,2.15);
setRotateKey(step_6+57,1,0);

setScaleKey(SP_dodge+12,1,2.15,2.15);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setScaleKey(SP_dodge+5-1,1,2.0,2.0);
endPhase(SP_dodge+9);

do return end
else end
-------------------------------------------------------
-------------------------------------------------------
setMoveKey(step_6+70, 1, 200, 0, 0);
setScaleKey(step_6+70, 1, 2.5, 2.5);
setRotateKey(step_6+70, 1, 0);

changeAnime(step_6+71, 1, 108); --704
setMoveKey(step_6+71, 1, 200, 0, 0);
setScaleKey(step_6+71, 1, 2.5, 2.5);
setRotateKey(step_6+71, 1, 0);

playSe(step_6+71,1023);

setMoveKey(step_6+98, 1, 800, 0, 0);
setScaleKey(step_6+98, 1, 0.1, 0.1);
setRotateKey(step_6+98, 1 ,0);

entryFade( step_6+93, 2, 10, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)(使い回し)
------------------------------------------------------
exp=step_6+100;

setDisp( exp-1, 1, 1);
setMoveKey(  exp-1,    1,  100,  0,   0);
setScaleKey( exp-1,    1,  1.0, 1.0);
setMoveKey(  exp,    1,    0,   0,   128);
setScaleKey( exp,    1,  0.1, 0.1);

changeAnime( exp, 1, 107);                         -- 手前ダメージ
entryEffect( exp+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( exp+8, SE_10);

setMoveKey(  exp+8,   1,    0,   0,   128);
setMoveKey(  exp+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( exp+16, 1, 0);  -- ダメージ振動等
setShake(exp+7,6,15);
setShake(exp+13,15,10);

setRotateKey( exp,  1,  30 );
setRotateKey( exp+2,  1,  80 );
setRotateKey( exp+4,  1, 120 );
setRotateKey( exp+6,  1, 160 );
setRotateKey( exp+8,  1, 200 );
setRotateKey( exp+10,  1, 260 );
setRotateKey( exp+12,  1, 320 );
setRotateKey( exp+14,  1,   0 );

setShakeChara( exp+15, 1, 5,  10);
setShakeChara( exp+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( exp+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(exp+15, ct, 30, 10);
setEffRotateKey( exp+15, ct, -40);
setEffScaleKey( exp+15, ct, 4.0, 4.0);
setEffScaleKey( exp+16, ct, 2.0, 2.0);
setEffScaleKey( exp+17, ct, 2.6, 2.6);
setEffScaleKey( exp+18, ct, 4.0, 4.0);
setEffScaleKey( exp+19, ct, 2.6, 2.6);
setEffScaleKey( exp+20, ct, 3.8, 3.8);
setEffScaleKey( exp+110, ct, 3.8, 3.8);
setEffAlphaKey( exp+15, ct, 255);
setEffAlphaKey( exp+115, ct, 255);
setEffAlphaKey( exp+115, ct, 0);

playSe( exp+3, SE_11);
shuchusen7 = entryEffectLife( exp+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( exp+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(exp+16);--(1110/1126)

entryFade( exp+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(exp+110);

else

-------------------------------------------------------
--敵側対応
-------------------------------------------------------
setVisibleUI(0, 0);

-------------------------------------------------------
-- SP_06 = 150604; --　迫る亀仙人（敵）(90)
-------------------------------------------------------
step_1 = 0;
speff_01 = entryEffectLife(step_1, 150604, 178, 0x100,     -1,  0,  0,  0);--導入

setEffMoveKey( step_1, speff_01, 0, 0, 0);
setEffAlphaKey( step_1, speff_01, 255);
setEffScaleKey( step_1, speff_01, 1.0, 1.0);
setEffRotateKey( step_1, speff_01, 0);

setEffMoveKey( step_1+178, speff_01, 0, 0, 0);
setEffScaleKey( step_1+178, speff_01, 1.0, 1.0);
setEffAlphaKey( step_1+178, speff_01, 255);
setEffRotateKey( step_1+178, speff_01, 0);

--setEffShake(step_1,speff_01,178,10);

--67F 強キック
playSe(67,1010); --1025 気を込めたキック
--113F お札ピタ
playSe(113,1001);

--書き文字
pinch1 = entryEffectLife( step_1+48, 10000, 17, 0x100,  -1, 0,  0,  0); --!(10000)
setEffMoveKey(step_1+48, pinch1, 50, 160, 0);
setEffScaleKey( step_1+48, pinch1, 2.4, 2.4);
setEffAlphaKey( step_1+48, pinch1, 255);
setEffRotateKey( step_1+48, pinch1, 0);

--集中線
shuchusen1 = entryEffectLife( step_1+68, 906, 55, 0x100,  -1, 0,  0,  0);  
setEffMoveKey(step_1+68, shuchusen1, 0, 0, 0);
setEffScaleKey( step_1+68, shuchusen1, 1.4, 1.4);
setEffAlphaKey( step_1+68, shuchusen1, 255);
setEffRotateKey( step_1+68, shuchusen1, 0);

entryFade( step_1+175, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-------------------------------------------------------
--SP_02 = 150600; 179-277 --　詠唱(50)
-------------------------------------------------------
step_2 = step_1+180;
speff_02 = entryEffect( step_2, 150600, 0,     -1,  0,  0,  0);

setEffMoveKey( step_2, speff_02, 0, 0, 0);
setEffScaleKey( step_2, speff_02, -1.0, 1.0);
setEffAlphaKey( step_2, speff_02, 255);
setEffRotateKey( step_2, speff_02, 0);

setEffShake(step_2,speff_02,100,10);

--集中線(黒)
shuchusen2 = entryEffectLife(step_2, 911, 100, 0x100,  -1, 0,  0,  0);  
setEffMoveKey(step_2, shuchusen2, 0, 0, 0);
setEffScaleKey( step_2, shuchusen2, 1.4, 1.4);
setEffAlphaKey( step_2, shuchusen2, 255);
setEffRotateKey( step_2, shuchusen2, 0);

setEffMoveKey(step_2+100, shuchusen2, 0, 0, 0);
setEffScaleKey( step_2+100, shuchusen2, 1.4, 1.4);
setEffAlphaKey( step_2+100, shuchusen2, 255);
setEffRotateKey( step_2+100, shuchusen2, 0);

--[[
speff = entryEffect(  step_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  step_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe(step_2, SE_04);

--書き文字
ctgogo = entryEffectLife( step_2+20, 190006, 65, 0x100, -1, -170, 0, 300);    -- ゴゴゴゴ
--setEffShake( step_2+20, ctgogo, 65, 20);
setEffRotateKey( step_2+20, ctgogo, 0);

setEffScaleKey( step_2+20, ctgogo, -0.6, 0.6);
setEffAlphaKey( step_2+20, ctgogo, 255);

setEffScaleKey( step_2+81, ctgogo, -0.6, 0.6);
setEffAlphaKey( step_2+81, ctgogo, 255);

setEffScaleKey( step_2+85, ctgogo, -3.0, 3.0);
setEffAlphaKey( step_2+85, ctgogo, 0);

entryFade( step_2+95, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------------------------------------
--カードカットイン 278-368 (100-190)—90F
--------------------------------------------------------------------
step_3 = step_2+100;

setScaleKey( step_3-9,   0, 1.5, 1.5);
setScaleKey( step_3-8,   0, 1.0, 1.0);

speff = entryEffect( step_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

playSe(step_3, SE_05);

entryFade( step_3+85, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-------------------------------------------------------
--SP_07 = 150605; --　仙人(敵）(95)
-------------------------------------------------------
step_4 = step_3+90;
speff_03 = entryEffect( step_4, 150605, 0,     -1,  0,  0,  0);

setEffMoveKey( step_4, speff_03, 0, 0, 0);
setEffScaleKey( step_4, speff_03, 1.0, 1.0);
setEffAlphaKey( step_4, speff_03, 255);
setEffRotateKey( step_4, speff_03, 0);

setEffShake(step_4, speff_03, 190, 10);

--集中線
shuchusen4a = entryEffectLife( step_4, 906, 25, 0x100,  -1, 0,  0,  0); -- -493
setEffMoveKey(step_4, shuchusen4a, 0, 0, 0);
setEffScaleKey( step_4, shuchusen4a, 1.4, 1.4);
setEffAlphaKey( step_4, shuchusen4a, 255);
setEffRotateKey( step_4, shuchusen4a, 0);

--集中線
shuchusen4b = entryEffectLife( step_4+79, 906, 45, 0x100,  -1, 0,  0,  0); -- -493
setEffMoveKey(step_4+79, shuchusen4b, 0, 0, 0);
setEffScaleKey( step_4+79, shuchusen4b, 1.4, 1.4);
setEffAlphaKey( step_4+79, shuchusen4b, 255);
setEffRotateKey( step_4+79, shuchusen4b, 0);

--横線
ryusen5 = entryEffectLife( step_4+168, 920, 22, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( step_4+168, ryusen5, 0);
setEffScaleKey( step_4+168, ryusen5, 1.0, 1.0);
setEffAlphaKey( step_4+168, ryusen5, 255);

--書き文字
zuzu = entryEffectLife(step_4+88, 10013, 31,  0x100, -1, 120, 150, 0);-- ずずずん 457

setEffRotateKey( step_4+88, zuzu, 0);
setEffMoveKey( step_4+88, zuzu, 120, 150, 0);
setEffScaleKey( step_4+88, zuzu, 1.2, 1.2);
setEffAlphaKey( step_4+88, zuzu, 255);

setEffMoveKey( step_4+98, zuzu, 120, 220, 0);
setEffScaleKey( step_4+98, zuzu, 1.2, 1.2);
setEffAlphaKey( step_4+98, zuzu, 255);
setEffRotateKey( step_4+98, zuzu, 0);

setEffMoveKey( step_4+118, zuzu, 120, 220, 0);
setEffScaleKey( step_4+118, zuzu, 1.2, 1.2);
setEffAlphaKey( step_4+118, zuzu, 255);
setEffRotateKey( step_4+118, zuzu, 0);

setEffAlphaKey( step_4+119, zuzu, 0);

setEffShake( step_4+88, zuzu, 31, 10);

--420F きため
playSe(420,SE_01); --気を貯める
--490F 強きため
playSe(490,SE_02) --気が広がる
playSe(515,SE_02) --気が広がる
--539F 放つ
playSe(539,1022) --かめはめ波ーー

--書き文字
zuo = entryEffectLife(step_4+170, 10012, 18,  0x100, -1, 130, 21, 0);-- ズオ 540
setEffMoveKey( step_4+170, zuo, 130, 210, 0);
setEffScaleKey( step_4+170, zuo, 2.0, 2.0);
setEffAlphaKey( step_4+170, zuo, 255);
setEffRotateKey( step_4+170, zuo, 0);

setEffShake( step_4+170, zuo, 18, 20);

entryFadeBg( step_4, 0, 190, 0, 10, 10, 10, 200);
entryFade( step_4+186, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-------------------------------------------------------
--SP_04 = 150602; 560-632 --　迫る横ビーム(36)
-------------------------------------------------------
step_5 = step_4+190;
speff_04 = entryEffect( step_5,150602, 0,     -1,  0,  0,  0);

setEffMoveKey( step_5, speff_04, 0, 0, 0);
setEffScaleKey( step_5, speff_04, 1.0, 1.0);
setEffAlphaKey( step_5, speff_04, 255);
setEffRotateKey( step_5, speff_04, 0);

setEffShake(step_5, speff_04, 72, 20);

entryFadeBg( step_5, 0, 72, 0, 10, 10, 10, 200);
entryFade( step_5+67, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--横線
ryusen5 = entryEffectLife( step_5, 920, 72, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( step_5, ryusen5, 0);
setEffScaleKey( step_5, ryusen5, 1.0, 1.0);
setEffAlphaKey( step_5, ryusen5, 255);

entryFadeBg( step_5, 0, 72, 0, 10, 10, 10, 200);
entryFade( step_5+67, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( step_5,1018);

-------------------------------------------------------
--SP_05 = 150603; 633-733--　迫るかめはめ波(50)
-------------------------------------------------------
step_6 = step_5+72;

changeAnime(step_6-1,1,104);
setDisp(step_6-1,1,1);
setMoveKey(step_6-1,1,200,0,0);
setScaleKey(step_6-1,1,0.6,0.6);
setRotateKey(step_6-1,1,0);
setShakeChara(step_6-1,1,50,20);

speff_05 = entryEffect(step_6, 150603, 0x100, -1,  0,  0,  0);

setEffMoveKey( step_6, speff_05, 0, 0, 0);
setEffScaleKey( step_6, speff_05, 1.0, 1.0);
setEffAlphaKey( step_6, speff_05, 255);
setEffRotateKey( step_6, speff_05, 0);

setEffShake(step_6, speff_05, 100, 20);

--書き文字
zudo = entryEffectLife(step_6, 10014, 71,  0x100, -1, 0, 400, 0);-- ズドド 540
setEffMoveKey( step_6, zudo, 0, 350, 0);
setEffScaleKey( step_6, zudo, 3.5, 3.5);
setEffAlphaKey( step_6, zudo, 255);
setEffRotateKey( step_6, zudo, -70);

setEffShake( step_6, zudo, 100, 20);

--横線(奥行き)
ryusen6 = entryEffectLife( step_6, 921, 100, 0x80,  -1,  0,  0,  0); 
setEffRotateKey( step_6, ryusen6, 0);
setEffScaleKey( step_6, ryusen6, 1.0, 1.0);
setEffAlphaKey( step_6, ryusen6, 255);

entryFadeBg( step_6, 0,100, 0, 10, 10, 10, 200);

playSe( step_6,1018);
------------------------------------------------------
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 690; --エンドフェイズのフレーム数を置き換える (step_6+57)

setMoveKey(step_6+57,1,200,0,0);
setScaleKey(step_6+57,1,2.15,2.15);
setRotateKey(step_6+57,1,0);

setScaleKey(SP_dodge+12,1,2.15,2.15);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setScaleKey(SP_dodge+5-1,1,2.0,2.0);
endPhase(SP_dodge+9);

do return end
else end
-------------------------------------------------------
-------------------------------------------------------
setMoveKey(step_6+70, 1, 200, 0, 0);
setScaleKey(step_6+70, 1, 2.5, 2.5);
setRotateKey(step_6+70, 1, 0);

changeAnime(step_6+71, 1, 108); --704
setMoveKey(step_6+71, 1, 200, 0, 0);
setScaleKey(step_6+71, 1, 2.5, 2.5);
setRotateKey(step_6+71, 1, 0);

playSe(step_6+71,1023);

setMoveKey(step_6+98, 1, 800, 0, 0);
setScaleKey(step_6+98, 1, 0.1, 0.1);
setRotateKey(step_6+98, 1 ,0);

entryFade( step_6+93, 2, 10, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)(使い回し)
------------------------------------------------------
exp=step_6+100;

setDisp( exp-1, 1, 1);
setMoveKey(  exp-1,    1,  100,  0,   0);
setScaleKey( exp-1,    1,  1.0, 1.0);
setMoveKey(  exp,    1,    0,   0,   128);
setScaleKey( exp,    1,  0.1, 0.1);

changeAnime( exp, 1, 107);                         -- 手前ダメージ
entryEffect( exp+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( exp+8, SE_10);

setMoveKey(  exp+8,   1,    0,   0,   128);
setMoveKey(  exp+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( exp+16, 1, 0);  -- ダメージ振動等
setShake(exp+7,6,15);
setShake(exp+13,15,10);

setRotateKey( exp,  1,  30 );
setRotateKey( exp+2,  1,  80 );
setRotateKey( exp+4,  1, 120 );
setRotateKey( exp+6,  1, 160 );
setRotateKey( exp+8,  1, 200 );
setRotateKey( exp+10,  1, 260 );
setRotateKey( exp+12,  1, 320 );
setRotateKey( exp+14,  1,   0 );

setShakeChara( exp+15, 1, 5,  10);
setShakeChara( exp+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( exp+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(exp+15, ct, 30, 10);
setEffRotateKey( exp+15, ct, -40);
setEffScaleKey( exp+15, ct, 4.0, 4.0);
setEffScaleKey( exp+16, ct, 2.0, 2.0);
setEffScaleKey( exp+17, ct, 2.6, 2.6);
setEffScaleKey( exp+18, ct, 4.0, 4.0);
setEffScaleKey( exp+19, ct, 2.6, 2.6);
setEffScaleKey( exp+20, ct, 3.8, 3.8);
setEffScaleKey( exp+110, ct, 3.8, 3.8);
setEffAlphaKey( exp+15, ct, 255);
setEffAlphaKey( exp+115, ct, 255);
setEffAlphaKey( exp+115, ct, 0);

playSe( exp+3, SE_11);
shuchusen7 = entryEffectLife( exp+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( exp+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(exp+16);--(1110/1126)

entryFade( exp+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(exp+110);

end
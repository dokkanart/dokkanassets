--1012810　ドロダボ(エネミー)　エビルグラビティ

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 151639;--タメ
SP_02 = 151640;--突進
SP_03 = 151641;--パンチ


--敵側は味方側に1xをつけてます

SP_01x = 151642;--敵側タメ
SP_02x = 151643;--敵側突進
SP_03x = 151644;--敵側パンチ



multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

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
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(160F)
------------------------------------------------------

spep_0 = 0;

kidame=entryEffectLife(spep_0, SP_01, 160, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_0, kidame, 0, 0, 0);
setEffMoveKey(spep_0+160, kidame, 0, 0, 0);

setEffScaleKey(spep_0, kidame, 1.0, 1.0);
setEffScaleKey(spep_0+160, kidame, 1.0, 1.0);

setEffAlphaKey(spep_0, kidame, 255);
setEffAlphaKey(spep_0+160, kidame, 255);

setEffRotateKey(spep_0, kidame, 0);
setEffRotateKey(spep_0+160, kidame, 0);


kidame2 = entryEffectLife(spep_0+20, 1503, 140, 0x80, -1, 0, 0, 0) --気溜め背景
setEffMoveKey(spep_0, kidame2, 0, 0, 0);
setEffMoveKey(spep_0+160, kidame2, 0, 0, 0);

setEffScaleKey(spep_0, kidame2, 1.0, 1.0);
setEffScaleKey(spep_0+160, kidame2, 1.0, 1.0);

setEffAlphaKey(spep_0, kidame2, 255);
setEffAlphaKey(spep_0+160, kidame2, 255);

setEffRotateKey(spep_0, kidame2, 0);
setEffRotateKey(spep_0+160, kidame2, 0);



ctzuzun = entryEffectLife(spep_0+13, 10013, 147, 0x100, -1, 0, 0);	--ズズズン

setEffMoveKey(spep_0+13, ctzuzun, 30, 280, 0);
setEffMoveKey(spep_0+20, ctzuzun, 30, 300, 0);
setEffMoveKey(spep_0+160, ctzuzun, 30, 300, 0);

setEffScaleKey(spep_0+20, ctzuzun, 1.5, 1.5);
setEffScaleKey(spep_0+22, ctzuzun, 3.0, 3.0);
setEffScaleKey(spep_0+160, ctzuzun, 3.0, 3.0);

setEffAlphaKey(spep_0+20, ctzuzun, 255);
setEffAlphaKey(spep_0+55, ctzuzun, 255);
setEffAlphaKey(spep_0+63, ctzuzun, 0);
setEffAlphaKey(spep_0+160, ctzuzun, 0);

setEffRotateKey(spep_0+20, ctzuzun, 355);
setEffRotateKey(spep_0+160, ctzuzun, 355);

setEffShake(spep_0, ctzuzun, 80, 20);	--もじ揺れ

--[[

--顔＆セリフカットイン
speff = entryEffect(spep_0+59, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect(spep_0+59, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

]]

--文字エントリー
ctgogo = entryEffectLife(spep_0+72, 190006, 88, 0x100, -1, 0, 0, 500);	--ゴゴゴ
setEffMoveKey(spep_0+71, ctgogo, 0, 500, 0);
setEffMoveKey(spep_0+160, ctgogo, 0, 500, 0);

setEffScaleKey(spep_0+71, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+135, ctgogo, 0.7, 0.7);
setEffScaleKey(spep_0+150, ctgogo, 2.0, 2.0);
setEffScaleKey(spep_0+160, ctgogo, 2.0, 2.0);

setEffAlphaKey(spep_0+71, ctgogo, 255);
setEffAlphaKey(spep_0+137, ctgogo, 255);
setEffAlphaKey(spep_0+160, ctgogo, 0);



--集中線
shuchusen = entryEffectLife(spep_0+27, 906, 133,0x80,0,0,0,0);   -- 集中線
setEffScaleKey(spep_0+27, shuchusen, 1.5, 1.5);
setEffScaleKey(spep_0+160, shuchusen, 1.5, 1.5);

--黒背景
entryFadeBg( spep_0, 0, 160, 0, 0, 0, 0, 210);  -- 黒　背景

--白フェード
entryFade(spep_0+16, 3, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);

entryFade(spep_0+143, 6, 12, 6, fcolor_r, fcolor_g, fcolor_b, 255);

--SE
playSe( spep_0+13, SE_05); --ゴゴゴ音(ズズズン)
playSe( spep_0+72, SE_04); --ゴゴゴ音(ズズズン)



----------------------------------------------------------------------------
--カードカットイン(90F)
----------------------------------------------------------------------------

spep_1 = spep_0+160;

playSe(spep_1, SE_05);

shuchusen2 = entryEffectLife(spep_1, 906, 90, 0x100, -1, 0, 0, 0);   -- 集中線
setEffScaleKey(spep_1, shuchusen2, 1.6, 1.6);

speff2 = entryEffect(spep_1,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85 , 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




------------------------------------------------------
-- 突進_70f
------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1+90;

tosshin = entryEffectLife(spep_2, SP_02, 70, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_2, tosshin, 0, 0, 0);
setEffMoveKey(spep_2+70, tosshin, 0, 0, 0);

setEffScaleKey(spep_2, tosshin, 1.0, 1.0);
setEffScaleKey(spep_2+70, tosshin, 1.0, 1.0);

setEffAlphaKey(spep_2, tosshin, 255);
setEffAlphaKey(spep_2+70, tosshin, 255);

setEffRotateKey(spep_2, tosshin, 0);
setEffRotateKey(spep_2+70, tosshin, 0);




ctzuo = entryEffectLife(spep_2, 10012, 70, 0x100, -1, 0, 0);	--ズオッ
setEffMoveKey(spep_2, ctzuo, 170, 380, 0);
setEffMoveKey(spep_2+70, ctzuo, 170, 380, 0);

setEffScaleKey(spep_2, ctzuo, 0.6, 0.6);
setEffScaleKey(spep_2+7, ctzuo, 2.8, 2.8);
setEffScaleKey(spep_2+53, ctzuo, 2.8, 2.8);
setEffScaleKey(spep_2+54, ctzuo, 4.5, 4.5);
setEffScaleKey(spep_2+70, ctzuo, 4.5, 4.5);

setEffAlphaKey(spep_2, ctzuo, 255);
setEffAlphaKey(spep_2+50, ctzuo, 255);
setEffAlphaKey(spep_2+58, ctzuo, 0);
setEffAlphaKey(spep_2+70, ctzuo, 0);

setEffRotateKey(spep_2, ctzuo, 25);
setEffRotateKey(spep_2+70, ctzuo, 25);

setEffShake(spep_2, ctzuo, 80, 30);	--もじ揺れ


--集中線
shuchusen3 = entryEffectLife(spep_2, 906, 70, 0x80, 0, 0, 0, 0);   -- 集中線
setEffScaleKey(spep_2, shuchusen3, 1.3, 1.3);
setEffScaleKey(spep_2+70, shuchusen3, 1.3, 1.3);


entryFade( spep_2+53, 12, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 70, 0, 0, 0, 0, 200); -- ベース暗め　背景

playSe( spep_2+10, SE_04);


------------------------------------------------------
-- パンチ_90f
------------------------------------------------------

-- ** 次の準備 ** --
spep_3 = spep_2+70;

punch = entryEffectLife(spep_3, SP_03, 90, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_3, punch, 0, 0, 0);
setEffMoveKey(spep_3+90, punch, 0, 0, 0);

setEffScaleKey(spep_3, punch, 1.0, 1.0);
setEffScaleKey(spep_3+90, punch, 1.0, 1.0);

setEffAlphaKey(spep_3, punch, 255);
setEffAlphaKey(spep_3+90, punch, 255);

setEffRotateKey(spep_3, punch, 0);
setEffRotateKey(spep_3+90, punch, 0);

setEffShake( spep_3, punch, 90, 20);



ctbaki = entryEffectLife(spep_3+38, 10020, 52, 0x100, -1, 0, 0);	--バキッ
setEffMoveKey(spep_3+38, ctbaki, 40, 370, 0);
setEffMoveKey(spep_3+90, ctbaki, 40, 370, 0);

setEffScaleKey(spep_3+38, ctbaki, 2.2, 2.2);
setEffScaleKey(spep_3+90, ctbaki, 2.2, 2.2);

setEffAlphaKey(spep_3+38, ctbaki, 255);
setEffAlphaKey(spep_3+50, ctbaki, 255);
setEffAlphaKey(spep_3+70, ctbaki, 0);
setEffAlphaKey(spep_3+90, ctbaki, 0);

setEffRotateKey(spep_3+38, ctbaki, 10);
setEffRotateKey(spep_3+70, ctbaki, 10);

setEffShake(spep_3+38, ctbaki, 40, 15);	--もじ揺れ


--横流線
ryuusen2 = entryEffectLife(spep_3, 920, 90, 0x80, 0, 0, 0, 0);

setEffScaleKey(spep_3, ryuusen2, 1.5, 1.5);
setEffScaleKey(spep_3+90, ryuusen2, 1.5, 1.5);

entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 180); -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+15; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

--キャラクターの固定


setDisp( SP_dodge, 1, 1);
changeAnime(SP_dodge, 1, 101);
setMoveKey( SP_dodge, 1, 260, 70, 0);
setMoveKey( SP_dodge+4, 1, 230, 70, 0);
setMoveKey( SP_dodge+7, 1, 230, 70, 0);
setScaleKey( SP_dodge, 1, 1.4, 1.4);
setRotateKey( SP_dodge, 1, 0);

setDisp( SP_dodge, 0, 0);
setMoveKey(SP_dodge, 0, 0, -2000, 0);
setScaleKey(SP_dodge, 0, 1.4, 1.4);
setRotateKey(SP_dodge, 0, 0);
setRotateKey( SP_dodge, 0, 0);

setMoveKey(SP_dodge+8, 1, 230, 70, 0);
setScaleKey(SP_dodge+8, 1, 1.4, 1.4);
setRotateKey(SP_dodge+8, 1, 0);

setDisp(SP_dodge+9, 1, 0);

setMoveKey(SP_dodge+9, 1, 0, 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 0, 0 ,-2000, 0);
setScaleKey(SP_dodge+10,  0 , 1.5 ,1.5);
setRotateKey(SP_dodge+10,   0, 0);

--[[
setMoveKey(SP_dodge+10, 0, 0 , -2000, 0);
setScaleKey(SP_dodge , 0 , 1.3 ,1.3);
setRotateKey(SP_dodge,   0, 0);
]]

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase(SP_dodge+10);

do return end
else end


------------------------------------------------------
--敵の動き_パンチ受ける
------------------------------------------------------


setDisp(spep_3, 1, 1);
changeAnime(spep_3, 1, 101);
changeAnime(spep_3+35, 1, 108);


--setMoveKey(spep_3, 1, 0, 0, 0);
setMoveKey(spep_3, 1, 750, 70, 0);
setMoveKey(spep_3+15, 1, 225, 70, 0);
setMoveKey(spep_3+38, 1, 154, 70, 0);
setMoveKey(spep_3+68, 1, 154, 70, 0);
setMoveKey(spep_3+73, 1, 1400, 70, 0);
setMoveKey(spep_3+84, 1, 1900, 70, 0);


setScaleKey(spep_3, 1, 1.2, 1.2);
setScaleKey(spep_3+90, 1, 1.2, 1.2);

setShakeChara(spep_3, 1, 80, 10);
setShakeChara(spep_3+30, 1, 80, 20);



entryFade( spep_3+34, 0, 5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+82, 3, 13, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 180); -- ベース暗め　背景

playSe( spep_3+44, 1033);




------------------------------------------------------
-- ダメージ演出
------------------------------------------------------



spep_4 = spep_3+92;

setDisp( spep_4-5, 1, 1);
setMoveKey(  spep_4-5,    1,  100,  0,   0);
setScaleKey( spep_4-5,    1,  1.0, 1.0);
setMoveKey(  spep_4,    1,    0,   0,   128);
setScaleKey( spep_4,    1,  0.1, 0.1);
setRotateKey( spep_4,    1,  0);

changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ct, 30, 10);
setEffRotateKey( spep_4+15, ct, -40);
setEffScaleKey( spep_4+15, ct, 4.0, 4.0);
setEffScaleKey( spep_4+16, ct, 2.0, 2.0);
setEffScaleKey( spep_4+17, ct, 2.6, 2.6);
setEffScaleKey( spep_4+18, ct, 4.0, 4.0);
setEffScaleKey( spep_4+19, ct, 2.6, 2.6);
setEffScaleKey( spep_4+20, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ct, 255);
setEffAlphaKey( spep_4+105, ct, 255);
setEffAlphaKey( spep_4+115, ct, 0);

playSe( spep_4+3, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_4+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 10, 13, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+110);


else

------------------------------------------------------
-- 敵側
------------------------------------------------------

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

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
-- 気溜め(160F)
------------------------------------------------------

spep_0 = 0;

kidame=entryEffectLife(spep_0, SP_01, 160, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_0, kidame, 0, 0, 0);
setEffMoveKey(spep_0+160, kidame, 0, 0, 0);

setEffScaleKey(spep_0, kidame, 1.0, 1.0);
setEffScaleKey(spep_0+160, kidame, 1.0, 1.0);

setEffAlphaKey(spep_0, kidame, 255);
setEffAlphaKey(spep_0+160, kidame, 255);

setEffRotateKey(spep_0, kidame, 0);
setEffRotateKey(spep_0+160, kidame, 0);


kidame2 = entryEffectLife(spep_0+20, 1503, 140, 0x80, -1, 0, 0, 0) --気溜め背景
setEffMoveKey(spep_0, kidame2, 0, 0, 0);
setEffMoveKey(spep_0+160, kidame2, 0, 0, 0);

setEffScaleKey(spep_0, kidame2, 1.0, 1.0);
setEffScaleKey(spep_0+160, kidame2, 1.0, 1.0);

setEffAlphaKey(spep_0, kidame2, 255);
setEffAlphaKey(spep_0+160, kidame2, 255);

setEffRotateKey(spep_0, kidame2, 0);
setEffRotateKey(spep_0+160, kidame2, 0);



ctzuzun = entryEffectLife(spep_0+13, 10013, 147, 0x100, -1, 0, 0);	--ズズズン

setEffMoveKey(spep_0+13, ctzuzun, 30, 280, 0);
setEffMoveKey(spep_0+20, ctzuzun, 30, 300, 0);
setEffMoveKey(spep_0+160, ctzuzun, 30, 300, 0);

setEffScaleKey(spep_0+20, ctzuzun, 1.5, 1.5);
setEffScaleKey(spep_0+22, ctzuzun, 3.0, 3.0);
setEffScaleKey(spep_0+160, ctzuzun, 3.0, 3.0);

setEffAlphaKey(spep_0+20, ctzuzun, 255);
setEffAlphaKey(spep_0+55, ctzuzun, 255);
setEffAlphaKey(spep_0+63, ctzuzun, 0);
setEffAlphaKey(spep_0+160, ctzuzun, 0);

setEffRotateKey(spep_0+20, ctzuzun, 355);
setEffRotateKey(spep_0+160, ctzuzun, 355);

setEffShake(spep_0, ctzuzun, 80, 20);	--もじ揺れ

--[[

--顔＆セリフカットイン
speff = entryEffect(spep_0+59, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture(speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect(spep_0+59, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture(speff1, 4, 5);  --セリフカットイン差し替え

]]

--文字エントリー
ctgogo = entryEffectLife(spep_0+72, 190006, 88, 0x100, -1, 0, 0, 500);	--ゴゴゴ
setEffMoveKey(spep_0+71, ctgogo, 0, 500, 0);
setEffMoveKey(spep_0+160, ctgogo, 0, 500, 0);

setEffScaleKey(spep_0+71, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+135, ctgogo, -0.7, 0.7);
setEffScaleKey(spep_0+150, ctgogo, -2.0, 2.0);
setEffScaleKey(spep_0+160, ctgogo, -2.0, 2.0);

setEffAlphaKey(spep_0+71, ctgogo, 255);
setEffAlphaKey(spep_0+137, ctgogo, 255);
setEffAlphaKey(spep_0+160, ctgogo, 0);



--集中線
shuchusen = entryEffectLife(spep_0+27, 906, 133,0x80,0,0,0,0);   -- 集中線
setEffScaleKey(spep_0+27, shuchusen, 1.5, 1.5);
setEffScaleKey(spep_0+160, shuchusen, 1.5, 1.5);

--黒背景
entryFadeBg( spep_0, 0, 160, 0, 0, 0, 0, 210);  -- 黒　背景

--白フェード
entryFade(spep_0+16, 3, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);

entryFade(spep_0+143, 6, 12, 6, fcolor_r, fcolor_g, fcolor_b, 255);

--SE
playSe( spep_0+13, SE_05); --ゴゴゴ音(ズズズン)
playSe( spep_0+72, SE_04); --ゴゴゴ音(ズズズン)


----------------------------------------------------------------------------
--カードカットイン(90F)
----------------------------------------------------------------------------

spep_1 = spep_0+160;

playSe(spep_1, SE_05);

shuchusen2 = entryEffectLife(spep_1, 906, 90, 0x100, -1, 0, 0, 0);   -- 集中線
setEffScaleKey(spep_1, shuchusen2, 1.6, 1.6);

speff2 = entryEffect(spep_1,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_1+85 , 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




------------------------------------------------------
-- 突進_70f
------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1+90;

tosshin = entryEffectLife(spep_2, SP_02, 70, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_2, tosshin, 0, 0, 0);
setEffMoveKey(spep_2+70, tosshin, 0, 0, 0);

setEffScaleKey(spep_2, tosshin, 1.0, 1.0);
setEffScaleKey(spep_2+70, tosshin, 1.0, 1.0);

setEffAlphaKey(spep_2, tosshin, 255);
setEffAlphaKey(spep_2+70, tosshin, 255);

setEffRotateKey(spep_2, tosshin, 0);
setEffRotateKey(spep_2+70, tosshin, 0);




ctzuo = entryEffectLife(spep_2, 10012, 70, 0x100, -1, 0, 0);	--ズオッ
setEffMoveKey(spep_2, ctzuo, 170, 380, 0);
setEffMoveKey(spep_2+70, ctzuo, 170, 380, 0);

setEffScaleKey(spep_2, ctzuo, 0.6, 0.6);
setEffScaleKey(spep_2+7, ctzuo, 2.8, 2.8);
setEffScaleKey(spep_2+53, ctzuo, 2.8, 2.8);
setEffScaleKey(spep_2+54, ctzuo, 4.5, 4.5);
setEffScaleKey(spep_2+70, ctzuo, 4.5, 4.5);

setEffAlphaKey(spep_2, ctzuo, 255);
setEffAlphaKey(spep_2+50, ctzuo, 255);
setEffAlphaKey(spep_2+58, ctzuo, 0);
setEffAlphaKey(spep_2+70, ctzuo, 0);

setEffRotateKey(spep_2, ctzuo, 25);
setEffRotateKey(spep_2+70, ctzuo, 25);

setEffShake(spep_2, ctzuo, 80, 30);	--もじ揺れ


--集中線
shuchusen3 = entryEffectLife(spep_2, 906, 70, 0x80, 0, 0, 0, 0);   -- 集中線
setEffScaleKey(spep_2, shuchusen3, 1.3, 1.3);
setEffScaleKey(spep_2+70, shuchusen3, 1.3, 1.3);


entryFade( spep_2+53, 12, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 70, 0, 0, 0, 0, 200); -- ベース暗め　背景

playSe( spep_2+10, SE_04);


------------------------------------------------------
-- パンチ_90f
------------------------------------------------------

-- ** 次の準備 ** --
spep_3 = spep_2+70;

punch = entryEffectLife(spep_3, SP_03, 90, 0x100, -1, 0, 0, 0);
setEffMoveKey(spep_3, punch, 0, 0, 0);
setEffMoveKey(spep_3+90, punch, 0, 0, 0);

setEffScaleKey(spep_3, punch, 1.0, 1.0);
setEffScaleKey(spep_3+90, punch, 1.0, 1.0);

setEffAlphaKey(spep_3, punch, 255);
setEffAlphaKey(spep_3+90, punch, 255);

setEffRotateKey(spep_3, punch, 0);
setEffRotateKey(spep_3+90, punch, 0);

setEffShake( spep_3, punch, 90, 20);



ctbaki = entryEffectLife(spep_3+38, 10020, 52, 0x100, -1, 0, 0);	--バキッ
setEffMoveKey(spep_3+38, ctbaki, 40, 370, 0);
setEffMoveKey(spep_3+90, ctbaki, 40, 370, 0);

setEffScaleKey(spep_3+38, ctbaki, 2.2, 2.2);
setEffScaleKey(spep_3+90, ctbaki, 2.2, 2.2);

setEffAlphaKey(spep_3+38, ctbaki, 255);
setEffAlphaKey(spep_3+50, ctbaki, 255);
setEffAlphaKey(spep_3+70, ctbaki, 0);
setEffAlphaKey(spep_3+90, ctbaki, 0);

setEffRotateKey(spep_3+38, ctbaki, 10);
setEffRotateKey(spep_3+70, ctbaki, 10);

setEffShake(spep_3+38, ctbaki, 40, 15);	--もじ揺れ


--横流線
ryuusen2 = entryEffectLife(spep_3, 920, 90, 0x80, 0, 0, 0, 0);

setEffScaleKey(spep_3, ryuusen2, 1.5, 1.5);
setEffScaleKey(spep_3+90, ryuusen2, 1.5, 1.5);

entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 180); -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+15; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

--キャラクターの固定


setDisp( SP_dodge, 1, 1);
changeAnime(SP_dodge, 1, 101);
setMoveKey( SP_dodge, 1, 260, 70, 0);
setMoveKey( SP_dodge+4, 1, 230, 70, 0);
setMoveKey( SP_dodge+7, 1, 230, 70, 0);
setScaleKey( SP_dodge, 1, 1.4, 1.4);
setRotateKey( SP_dodge, 1, 0);

setDisp( SP_dodge, 0, 0);
setMoveKey(SP_dodge, 0, 0, -2000, 0);
setScaleKey(SP_dodge, 0, 1.4, 1.4);
setRotateKey(SP_dodge, 0, 0);
setRotateKey( SP_dodge, 0, 0);

setMoveKey(SP_dodge+8, 1, 230, 70, 0);
setScaleKey(SP_dodge+8, 1, 1.4, 1.4);
setRotateKey(SP_dodge+8, 1, 0);

setDisp(SP_dodge+9, 1, 0);

setMoveKey(SP_dodge+9, 1, 0, 0, 0);
setScaleKey(SP_dodge+9,  1 , 1.5 ,1.5);
setRotateKey(SP_dodge+9,   1, 0);

setMoveKey(SP_dodge+10, 0, 0 ,-2000, 0);
setScaleKey(SP_dodge+10,  0 , 1.5 ,1.5);
setRotateKey(SP_dodge+10,   0, 0);

--[[
setMoveKey(SP_dodge+10, 0, 0 , -2000, 0);
setScaleKey(SP_dodge , 0 , 1.3 ,1.3);
setRotateKey(SP_dodge,   0, 0);
]]

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase(SP_dodge+10);

do return end
else end


------------------------------------------------------
--敵の動き_パンチ受ける
------------------------------------------------------


setDisp(spep_3, 1, 1);
changeAnime(spep_3, 1, 101);
changeAnime(spep_3+35, 1, 108);


--setMoveKey(spep_3, 1, 0, 0, 0);
setMoveKey(spep_3, 1, 750, 70, 0);
setMoveKey(spep_3+15, 1, 225, 70, 0);
setMoveKey(spep_3+38, 1, 154, 70, 0);
setMoveKey(spep_3+68, 1, 154, 70, 0);
setMoveKey(spep_3+73, 1, 1400, 70, 0);
setMoveKey(spep_3+84, 1, 1900, 70, 0);


setScaleKey(spep_3, 1, 1.2, 1.2);
setScaleKey(spep_3+90, 1, 1.2, 1.2);

setShakeChara(spep_3, 1, 80, 10);
setShakeChara(spep_3+30, 1, 80, 20);



entryFade( spep_3+34, 0, 5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+82, 3, 13, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 180); -- ベース暗め　背景

playSe( spep_3+44, 1033);



------------------------------------------------------
-- ダメージ演出
------------------------------------------------------



spep_4 = spep_3+92;

setDisp( spep_4-5, 1, 1);
setMoveKey(  spep_4-5,    1,  100,  0,   0);
setScaleKey( spep_4-5,    1,  1.0, 1.0);
setMoveKey(  spep_4,    1,    0,   0,   128);
setScaleKey( spep_4,    1,  0.1, 0.1);
setRotateKey( spep_4,    1,  0);

changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ct, 30, 10);
setEffRotateKey( spep_4+15, ct, -40);
setEffScaleKey( spep_4+15, ct, 4.0, 4.0);
setEffScaleKey( spep_4+16, ct, 2.0, 2.0);
setEffScaleKey( spep_4+17, ct, 2.6, 2.6);
setEffScaleKey( spep_4+18, ct, 4.0, 4.0);
setEffScaleKey( spep_4+19, ct, 2.6, 2.6);
setEffScaleKey( spep_4+20, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ct, 255);
setEffAlphaKey( spep_4+105, ct, 255);
setEffAlphaKey( spep_4+115, ct, 0);

playSe( spep_4+3, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_4+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 10, 13, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+110);



end



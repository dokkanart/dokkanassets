

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1066;
SE_13 = 1068; --爆煙
--1011
--1068


SP_01 = 150992; --溜め
SP_02 = 150993; --しなる
SP_03 = 150994; --発射
SP_01e = 151012; --溜め（敵）
SP_02e = 151013; --瞬間移動（敵）
SP_03e = 151014; --発射（敵）

SP_07 = 1604;



multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜め(110F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


setVisibleUI(0, 0);
setMoveKey(   0,  0,  0,  0,  0);


playSe( 20, SE_04);

ef = entryEffectLife( 0, SP_01,  108, 0x80,  -1,  0,  0,  0);
setEffMoveKey(  0,  ef,  0,  0,   0);
setEffScaleKey( 0, ef, 1.0, 1.0);
setEffRotateKey(0, ef, 0);
setEffAlphaKey( 0, ef, 255);
setEffShake(0, ef, 120, 5);

shuchusen = entryEffectLife( 0, 906, 110, 0x80, -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.2, 1.2);
tyousei = -5;
setDisp( 0, 1, 0);
speff = entryEffect(  20+tyousei,   1504,   0x80,  -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  20+tyousei,   1505,   0x80,  -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--speff = entryEffectLife( 0, 1503, 108, 0x80,  -1, 0,  0,  0);   -- 背景


ct = entryEffectLife( 35+tyousei, 190006, 70, 0x80, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake(35+tyousei, ct, 71, 8);
setEffScaleKey(35+tyousei, ct, 0.7, 0.7);


--entryFade( 17, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 110, 3, 10, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( 99, 3, 7, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( 0, 0, 120, 0, 10, 10, 10, 210);       -- ベース暗め　背景
spep_2 = 120;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
--speff = entryEffectLife( spep_1, 1503, 90, 0x80,  -1, 0,  0,  0);   -- 背景

shuchusen2 = entryEffectLife( spep_2, 906, 87, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);


-- ** エフェクト等 ** --
entryFade( spep_2+83, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_1=spep_2+90; --120



------------------------------------------------------
-- 構え…40
------------------------------------------------------
setDisp( spep_1, 1, 1);
entryFadeBg( spep_1, 0, 65, 5, 10, 10, 10, 210);       -- ベース暗め　背景

changeAnime( spep_1, 1, 100);                        -- 気ダメ後ろ
setMoveKey(  spep_1,    1,   500,  450,   0);
setMoveKey(  spep_1+10,    1,  300,  350,   0);
setMoveKey(  spep_1+30,    1,  280,  300,   0);
setScaleKey(  spep_1,   1,   0.5,  0.5);
setScaleKey(  spep_1+10,   1,   0.5,  0.5);
setScaleKey(  spep_1+30,   1,   0.9,  0.9);


ef1 = entryEffect( spep_1, SP_02, 0x100, -1,  0,  0,  0);
setEffAlphaKey(spep_1, ef1, 255);
setEffScaleKey( spep_1, ef1, 0.9, 0.9);


shuchusen1 = entryEffectLife( spep_1, 906, 40, 0x100,  -1, 0,  350,  250);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.7, 1.7);

playSe( spep_1+20, 8);
--playSe( spep_1, SE_06);

entryFade( spep_1+38, 1, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_1+40


------------------------------------------------------
-- ビーム移動！150
------------------------------------------------------
changeAnime( spep_3, 1, 108);
setMoveKey(  spep_3,    1,   280,  300,   0);
setMoveKey(  spep_3+38,    1, 330,  350,   0);
--setMoveKey(  spep_3+38,    1, 400,  400,   0);
setScaleKey(  spep_3,   1,   0.9,  0.9);
setScaleKey(  spep_3+38,   1,   0.1,  0.1);
setRotateKey(spep_3,   1,  -10);
setRotateKey(spep_3+38,   1,  -10);


setDisp( spep_3+38, 1, 0);

ef3 = entryEffectLife( spep_3, SP_03, 30, 0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_3,  ef3,  0,  0,   0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffRotateKey(spep_3, ef3, 0);
setEffAlphaKey( spep_3, ef3, 255);

--playSe( spep_3, SE_06);


ct3 = entryEffectLife( spep_3, 10010, 40, 0, -1, 0, -400, 300); -- ザンッ
setEffScaleKey(spep_3, ct3, 1.5, 1.5);
setEffScaleKey(spep_3+40, ct3, 1.3, 1.3);
setEffMoveKey(  spep_3,  ct3,  -400,  300,   0);
setEffMoveKey(  spep_3+7,  ct3,  -100,  300,   0);
setEffMoveKey(  spep_3+9,  ct3,  -120,  300,   0);
setEffRotateKey(spep_3, ct3, -10);

shuchusen3 = entryEffectLife( spep_3, 906, 30, 0x100,  -1, 0,  350,  250);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.7, 1.7);

entryFade( spep_3+25, 6,  10, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_3, SE_07);
playSe( spep_3, 1032);

spep_7 = spep_3+40; --120+90+110

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 224; --エンドフェイズのフレーム数を置き換える
setMoveKey(  SP_dodge,    1, 330,  350,   0);
setMoveKey(  SP_dodge+8,    1, 330,  350,   0);
setMoveKey(  SP_dodge+9,    1, 0,  0,   0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+6,   0,   0, -54,   0);
setMoveKey( SP_dodge+7,   0,   3000, 0,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------ 
-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
setMoveKey(  spep_7-1, 1, 350, 300, 0);
setScaleKey( spep_7-1, 1, 0.5, 0.5);
setRotateKey( spep_7-1, 1, 60);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_11);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------


setVisibleUI(0, 0);
setMoveKey(   0,  0,  0,  0,  0);


playSe( 20, SE_04);

ef = entryEffectLife( 0, SP_01e,  108, 0x80,  -1,  0,  0,  0);
setEffMoveKey(  0,  ef,  0,  0,   0);
setEffScaleKey( 0, ef, 1.0, 1.0);
setEffRotateKey(0, ef, 0);
setEffAlphaKey( 0, ef, 255);
setEffShake(0, ef, 120, 5);

shuchusen = entryEffectLife( 0, 906, 110, 0x80, -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.2, 1.2);
tyousei = -5;
setDisp( 0, 1, 0);
--[[
speff = entryEffect(  20+tyousei,   1504,   0x80,  -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  20+tyousei,   1505,   0x80,  -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
--speff = entryEffectLife( 0, 1503, 108, 0x80,  -1, 0,  0,  0);   -- 背景


ct = entryEffectLife( 35+tyousei, 190006, 70, 0x80, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake(35+tyousei, ct, 71, 8);
setEffScaleKey(35+tyousei, ct, -0.7, 0.7);


--entryFade( 17, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 110, 3, 10, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( 99, 3, 7, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( 0, 0, 120, 0, 10, 10, 10, 210);       -- ベース暗め　背景
spep_2 = 120;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
--speff = entryEffectLife( spep_1, 1503, 90, 0x80,  -1, 0,  0,  0);   -- 背景

shuchusen2 = entryEffectLife( spep_2, 906, 87, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);


-- ** エフェクト等 ** --
entryFade( spep_2+83, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_1=spep_2+90; --120



------------------------------------------------------
-- 構え…40
------------------------------------------------------
setDisp( spep_1, 1, 1);
entryFadeBg( spep_1, 0, 65, 5, 10, 10, 10, 210);       -- ベース暗め　背景

changeAnime( spep_1, 1, 100);                        -- 気ダメ後ろ
setMoveKey(  spep_1,    1,   500,  450,   0);
setMoveKey(  spep_1+10,    1,  300,  350,   0);
setMoveKey(  spep_1+30,    1,  280,  300,   0);
setScaleKey(  spep_1,   1,   0.5,  0.5);
setScaleKey(  spep_1+10,   1,   0.5,  0.5);
setScaleKey(  spep_1+30,   1,   0.9,  0.9);


ef1 = entryEffect( spep_1, SP_02e, 0x100, -1,  0,  0,  0);
setEffAlphaKey(spep_1, ef1, 255);
setEffScaleKey( spep_1, ef1, 0.9, 0.9);
--
setEffRotateKey(spep_1, ef1, 0);
setEffRotateKey(spep_1+39, ef1, 0);

shuchusen1 = entryEffectLife( spep_1, 906, 40, 0x100,  -1, 0,  350,  250);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.7, 1.7);

playSe( spep_1+20, 8);
--playSe( spep_1, SE_06);

entryFade( spep_1+38, 1, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_1+40


------------------------------------------------------
-- ビーム移動！150
------------------------------------------------------
changeAnime( spep_3, 1, 108);
setMoveKey(  spep_3,    1,   280,  300,   0);
setMoveKey(  spep_3+38,    1, 330,  350,   0);
--setMoveKey(  spep_3+38,    1, 400,  400,   0);
setScaleKey(  spep_3,   1,   0.9,  0.9);
setScaleKey(  spep_3+38,   1,   0.1,  0.1);
setRotateKey(spep_3,   1,  -10); -- -10
setRotateKey(spep_3+38,   1,  -10); -- -10


setDisp( spep_3+38, 1, 0);

ef3 = entryEffectLife( spep_3, SP_03e, 30, 0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_3,  ef3,  0,  0,   0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffRotateKey(spep_3, ef3, 0);
setEffAlphaKey( spep_3, ef3, 255);

--playSe( spep_3, SE_06);


ct3 = entryEffectLife( spep_3, 10010, 40, 0, -1, 0, -400, 300); -- ザンッ
setEffScaleKey(spep_3, ct3, 1.5, 1.5);
setEffScaleKey(spep_3+40, ct3, 1.3, 1.3);
setEffMoveKey(  spep_3,  ct3,  -400,  300,   0);
setEffMoveKey(  spep_3+7,  ct3,  -100,  300,   0);
setEffMoveKey(  spep_3+9,  ct3,  -120,  300,   0);
setEffRotateKey(spep_3, ct3, -10);

shuchusen3 = entryEffectLife( spep_3, 906, 30, 0x100,  -1, 0,  350,  250);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.7, 1.7);

entryFade( spep_3+25, 6,  10, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_3, SE_07);
playSe( spep_3, 1032);

spep_7 = spep_3+40; --120+90+110

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 224; --エンドフェイズのフレーム数を置き換える
setMoveKey(  SP_dodge,    1, 330,  350,   0);
setMoveKey(  SP_dodge+8,    1, 330,  350,   0);
setMoveKey(  SP_dodge+9,    1, 0,  0,   0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+6,   0,   0, -54,   0);
setMoveKey( SP_dodge+7,   0,   3000, 0,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------ 
-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
setMoveKey(  spep_7-1, 1, 350, 300, 0);
setScaleKey( spep_7-1, 1, 0.5, 0.5);
setRotateKey( spep_7-1, 1, 60);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_11);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);
end
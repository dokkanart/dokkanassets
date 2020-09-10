

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
---------------
kame_flag = 0x00;

SP_ATK = 566-395

--[[
if (_IS_PLAYER_SIDE_ == 1) then

else

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+40;
SP_ATK_enemy = SP_ATK_1+64-260;
SP_ATK = SP_ATK_enemy+430-240;

end
--]]

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

SP_01 = 107003
SP_02 = 107004
SP_03 = 107005

SP_04 = 1552
SP_05 = 1568


changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め( 40F)
------------------------------------------------------
kame_flag = 0x00;
if ( _IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 60, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake( 30, ct, 40, 7);
setEffAlphaKey( 30, ct, 255);
setEffAlphaKey( 50, ct, 255);
setEffAlphaKey( 70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！( 100F)
------------------------------------------------------
setVisibleUI( 69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 ( 気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 ( 気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 ( カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 ( セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 162, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

--文字エントリー
ctgogo=entryEffectLife(90,190006,70,0x100,-1,-10,520);--ゴゴゴ

setEffMoveKey(90,ctgogo,-10,520,0);
setEffMoveKey(160,ctgogo,-10,520,0);

setEffScaleKey(90, ctgogo, 0.7, 0.7);
setEffScaleKey(160, ctgogo, 0.7, 0.7);

setEffAlphaKey( 90, ctgogo, 255 );
setEffAlphaKey( 160, ctgogo, 255 );


setMoveKey(   169,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン( 90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

------------------------------------------------------
-- 極限Z対応

--playSe( spep_2, SE_05);
--speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
--setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( 170, SE_05);
speff = entryEffect( 170, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( 170, SE_05);
speff = entryEffect( 170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( 170, SE_05);
speff = entryEffect( 170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
------------------------------------------------------


entryFade( 255, 2, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射( 110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  259,    0,      -70,  0,   0);
--setMoveKey(  260,    0,      0,  -600,   0);
--setMoveKey(  261,    0,      0,  -600,   0);
setMoveKey(  270,    0,      -70,  -100,   0);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( 260,kamehame_beam, 1.5,1.5);

playSe( 260, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  299,    0,   -70,  -100,   0);
setMoveKey(  300,    0,   -70,  -100,   0);
setMoveKey(  305,    0,   -70,  700,   0);
setMoveKey(  365,    0,   -70,  1500,   0);

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( 369,   0, 1.0, 1.0);
setDisp( 369, 0, 0);

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 250, 250, 200, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

sen1 = entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 260,sen1,90);
setEffScaleKey( 260,sen1, 1.5, 1);

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 40, 0, -1, 0, 50, 250); -- ズオッ
setEffShake( 268, ct, 32, 25);
setEffAlphaKey( 268, ct, 255);
setEffAlphaKey( 290, ct, 255);
setEffAlphaKey( 300, ct, 0);
setEffScaleKey( 268, ct, 2, 2);
setEffScaleKey( 272, ct, 2.4, 2.4);
setEffScaleKey( 292, ct, 2.4, 2.4);
setEffScaleKey( 300, ct, 4.0, 4.0);
playSe( 300, SE_07);

entryFade( 360,10,20,10,255,255,255,255);


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 330; --エンドフェイズのフレーム数を置き換える

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


------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------


entryFadeBg( 370, 0, 99, 0, 10, 10, 10, 180);       -- ベース暗め　背景

changeAnime( 400, 0, 2);                        -- 待機後ろ
setRotateKey( 400, 0, 10);

setMoveKey( 400,    0,  -618,  480,   0);
setMoveKey( 400+15,    0,  -218,  380,   0);

setDisp( 400, 0, 1);
setScaleKey(  400,   0,   3.0,  3.0);
setScaleKey(  400+15,   0,   1.0,  1.0);

ware = entryEffectLife( 400,10008,120,0,-1,0,150,260);--ゴゴゴゴ
setEffShake( 400,ware,120,20);

earth = entryEffect( 390, SP_04,  0x80,  -1,  0,  0,  0);   -- 地球
setEffScaleKey( 390, earth, 1.2, 1.2);


playSe( 380,1023);
SE0=playSe( 380,1044);
stopSe(  SP_ATK+366,  SE0,  0);  --SE止め
playSe( 400,1034);


SE001 = playSe( 430,SE_09);
stopSe(450,SE001,5);

--SE002 = playSe( 438,SE_09);
--stopSe(454,SE002,5);

SE003 = playSe( 444,SE_09);
stopSe(464,SE003,0);


SE004 = playSe( 456,SE_09);
stopSe(466,SE004,5);


playSe( 462,SE_09);


playSe( SP_ATK+250,1033);
playSe( SP_ATK+360,SE_06);

entryFade( SP_ATK+360,6,5,15,fcolor_r,fcolor_g,fcolor_b,255);--whitefade
setDisp( SP_ATK+367, 0, 1);

setDisp( SP_ATK+370,0,0);
setDisp( SP_ATK+370,1,1);
changeAnime( SP_ATK+370,1,100);--通常待機
setMoveKey( SP_ATK+369,1,0,1000,0);
setMoveKey( SP_ATK+370,1,0,1000,0);
setMoveKey( SP_ATK+371,1,0,1000,0);
setScaleKey( SP_ATK+369,1,0.7,0.7);
setScaleKey( SP_ATK+370,1, 1.6,  1.6);

setMoveKey( SP_ATK+400,1,0,200,0);
--setScaleKey( SP_ATK+400,1,1.6,1.6);

hibasira = entryEffect( SP_ATK+370, 150079,   0x100, -1,  0,  100,  -450);   -- 火柱
setEffScaleKey( SP_ATK+370, hibasira, 1.0, 1.0);
setEffAlphaKey( SP_ATK+370, hibasira,155);

--playSe( SP_ATK+370, 1014);
--playSe( SP_ATK+385, 1014);
--playSe( SP_ATK+400, 1014);

kamehame_beam2=entryEffect( SP_ATK+370,SP_03,0,-1,0,10,-350);--迫るかめはめ波
setEffAlphaKey( SP_ATK+370, kamehame_beam2, 0);
setEffAlphaKey( SP_ATK+379, kamehame_beam2, 0);
setEffAlphaKey( SP_ATK+380, kamehame_beam2, 255);

--setEffMoveKey( SP_ATK+390,kamehame_beam2,0,0,0);
setEffMoveKey( SP_ATK+420,kamehame_beam2,0,-15,0);
setEffMoveKey( SP_ATK+445,kamehame_beam2,0,15,0);
setEffMoveKey( SP_ATK+455,kamehame_beam2,0,10,0);
setEffScaleKey( SP_ATK+370,kamehame_beam2,1.0,1.0);
setEffScaleKey( SP_ATK+450,kamehame_beam2,1.0,1.0);
setEffScaleKey( SP_ATK+452,kamehame_beam2,2.5,2.5);
setDamage( SP_ATK+450,1,0);--ダメージ振動等

iwa = entryEffectLife( SP_ATK+370,107027 ,99, 0x100, -1, 0, 0, -260);--岩

entryFade( SP_ATK+456,6,3,4,fcolor_r,fcolor_g,fcolor_b,255);--whitefade
removeAllEffect( SP_ATK+463 );

playSe( SP_ATK+450,SE_09);
--敵吹っ飛ぶモーション
changeAnime( SP_ATK+440,1,108);
setRotateKey( SP_ATK+440, 1, -90);

setMoveKey( SP_ATK+442,1,0,200,0);
setMoveKey( SP_ATK+449,1,0,800,0);
setScaleKey( SP_ATK+ 440, 1,  1.6, 1.6);
setScaleKey( SP_ATK+ 443, 1,  1.5, 1.5);
setScaleKey( SP_ATK+ 452, 1,  0.2, 0.2);

--**エフェクト等**--
setShakeChara( SP_ATK+370,1,99,20);

entryFadeBg( SP_ATK+370,0,50,0,0,0,0,255);--ベース暗め背景

entryFadeBg( SP_ATK+410,20,80,0,255,255,255,255);--ベース暗め背景

sen2=entryEffectLife( SP_ATK+370,921,99,0x80,-1,180,0,0);--流線斜め
setEffRotateKey( SP_ATK+370,sen2,90);
setEffScaleKey( SP_ATK+370,sen2,1.5,1);

--書き文字エントリー
ct2=entryEffectLife( SP_ATK+370,10002,99, 0x100,-1,0,100,0);--ズドドッ
setEffShake( SP_ATK+370,ct2,99,20);
setEffScaleKey( SP_ATK+370,ct2,3.4,3.4);
setEffRotateKey( SP_ATK+370,ct2,45);
setEffAlphaKey( SP_ATK+370,ct2,255);
setEffAlphaKey( SP_ATK+430,ct2,255);
setEffAlphaKey( SP_ATK+450,ct2,0);
entryFade( SP_ATK+450,10,26,10,fcolor_r,fcolor_g,fcolor_b,255);
------------------------------------------------------
--爆発( SP_ATK+110F)
------------------------------------------------------
abc = 24


entryEffect( SP_ATK+469+abc,SP_05,0,-1,0,0,0);
--setDisp( SP_ATK+469+abc,1,1);

playSe( SP_ATK+473+abc,SE_10);
shuchusen=entryEffectLife( SP_ATK+473+abc,906,120,0x00,-1,0,0,0);--集中線
--entryEffect( SP_ATK+473+abc,1600,0x00,-1,0,30,-130);--ひび割れ

--ダメージ表示
dealDamage( SP_ATK+486+abc -10);

--entryFade( SP_ATK+570+abc,9,10,1,8,8,8,255);--blackfade

endPhase( SP_ATK+580+abc -10);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 60, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake( 30, ct, 40, 7);
setEffAlphaKey( 30, ct, 255);
setEffAlphaKey( 50, ct, 255);
setEffAlphaKey( 70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！( 100F)
------------------------------------------------------
setVisibleUI( 69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 ( 気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 ( 気)

--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 ( カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 ( セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 162, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

--文字エントリー
ctgogo=entryEffectLife(90,190006,70,0x100,-1,-10,520);--ゴゴゴ

setEffMoveKey(90,ctgogo,-10,520,0);
setEffMoveKey(160,ctgogo,-10,520,0);

setEffScaleKey(90, ctgogo, -0.7, 0.7);
setEffScaleKey(160, ctgogo, -0.7, 0.7);

setEffAlphaKey( 90, ctgogo, 255 );
setEffAlphaKey( 160, ctgogo, 255 );

setMoveKey(   169,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン( 90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

------------------------------------------------------
-- 極限Z対応

--playSe( spep_2, SE_05);
--speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
--setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( 170, SE_05);
speff = entryEffect( 170, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( 170, SE_05);
speff = entryEffect( 170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( 170, SE_05);
speff = entryEffect( 170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
------------------------------------------------------

entryFade( 255, 2, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射( 110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  259,    0,      -70,  0,   0);
--setMoveKey(  260,    0,      0,  -600,   0);
--setMoveKey(  261,    0,      0,  -600,   0);
setMoveKey(  270,    0,      -70,  -100,   0);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( 260,kamehame_beam, 1.5,1.5);

playSe( 260, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  299,    0,   -70,  -100,   0);
setMoveKey(  300,    0,   -70,  -100,   0);
setMoveKey(  305,    0,   -70,  700,   0);
setMoveKey(  365,    0,   -70,  1500,   0);

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( 369,   0, 1.0, 1.0);
setDisp( 369, 0, 0);

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 250, 250, 200, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

sen1 = entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 260,sen1,90);
setEffScaleKey( 260,sen1, 1.5, 1);

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 40, 0, -1, 0, 50, 250); -- ズオッ
setEffShake( 268, ct, 32, 25);
setEffAlphaKey( 268, ct, 255);
setEffAlphaKey( 290, ct, 255);
setEffAlphaKey( 300, ct, 0);
setEffScaleKey( 268, ct, 2, 2);
setEffScaleKey( 272, ct, 2.4, 2.4);
setEffScaleKey( 292, ct, 2.4, 2.4);
setEffScaleKey( 300, ct, 4.0, 4.0);
playSe( 300, SE_07);

entryFade( 360,10,20,10,255,255,255,255);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 330; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------

entryFadeBg( 370, 0, 99, 0, 10, 10, 10, 180);       -- ベース暗め　背景

changeAnime( 400, 0, 2);                        -- 待機後ろ
setRotateKey( 400, 0, 10);

setMoveKey( 400,    0,  -618,  480,   0);
setMoveKey( 400+15,    0,  -218,  380,   0);

setDisp( 400, 0, 1);
setScaleKey(  400,   0,   3.0,  3.0);
setScaleKey(  400+15,   0,   1.0,  1.0);

ware = entryEffectLife( 400,10008,120,0,-1,0,150,260);--ゴゴゴゴ
setEffShake( 400,ware,120,20);

earth = entryEffect( 390, SP_04,  0x80,  -1,  0,  0,  0);   -- 地球
setEffScaleKey( 390, earth, 1.2, 1.2);

playSe( 380,1023);
SE0=playSe( 380,1044);
stopSe(  SP_ATK+366,  SE0,  0);  --SE止め
playSe( 400,1034);

--[[
playSe( 430,SE_09);
playSe( 434,SE_09);
playSe( 444,SE_09);
playSe( 456,SE_09);
playSe( 462,SE_09);
]]
SE001 = playSe( 430,SE_09);
stopSe(450,SE001,5);

--SE002 = playSe( 438,SE_09);
--stopSe(454,SE002,5);

SE003 = playSe( 444,SE_09);
stopSe(464,SE003,0);
SE004 = playSe( 456,SE_09);
stopSe(466,SE004,5);
playSe( 462,SE_09);

playSe( SP_ATK+250,1033);
playSe( SP_ATK+360,SE_06);
entryFade( SP_ATK+360,6,5,15,fcolor_r,fcolor_g,fcolor_b,255);--whitefade
setDisp( SP_ATK+367, 0, 1);

setDisp( SP_ATK+370,0,0);
setDisp( SP_ATK+370,1,1);
changeAnime( SP_ATK+370,1,100);--通常待機
setMoveKey( SP_ATK+369,1,0,1000,0);
setMoveKey( SP_ATK+370,1,0,1000,0);
setMoveKey( SP_ATK+371,1,0,1000,0);
setScaleKey( SP_ATK+369,1,0.7,0.7);
setScaleKey( SP_ATK+370,1, 1.6,  1.6);

setMoveKey( SP_ATK+400,1,0,200,0);
--setScaleKey( SP_ATK+400,1,1.6,1.6);

hibasira = entryEffect( SP_ATK+370, 150079,   0x100, -1,  0,  100,  -450);   -- 火柱
setEffScaleKey( SP_ATK+370, hibasira, 1.0, 1.0);
setEffAlphaKey( SP_ATK+370, hibasira,155);

--playSe( SP_ATK+370, 1014);
--playSe( SP_ATK+385, 1014);
--playSe( SP_ATK+400, 1014);

kamehame_beam2=entryEffect( SP_ATK+370,SP_03,0,-1,0,10,-350);--迫るかめはめ波
setEffAlphaKey( SP_ATK+370, kamehame_beam2, 0);
setEffAlphaKey( SP_ATK+379, kamehame_beam2, 0);
setEffAlphaKey( SP_ATK+380, kamehame_beam2, 255);

--setEffMoveKey( SP_ATK+390,kamehame_beam2,0,0,0);
setEffMoveKey( SP_ATK+420,kamehame_beam2,0,-15,0);
setEffMoveKey( SP_ATK+445,kamehame_beam2,0,15,0);
setEffMoveKey( SP_ATK+455,kamehame_beam2,0,10,0);
setEffScaleKey( SP_ATK+370,kamehame_beam2,1.0,1.0);
setEffScaleKey( SP_ATK+450,kamehame_beam2,1.0,1.0);
setEffScaleKey( SP_ATK+452,kamehame_beam2,2.5,2.5);
setDamage( SP_ATK+450,1,0);--ダメージ振動等

iwa = entryEffectLife( SP_ATK+370,107027 ,99, 0x100, -1, 0, 0, -260);--岩

entryFade( SP_ATK+456,6,3,4,fcolor_r,fcolor_g,fcolor_b,255);--whitefade
removeAllEffect( SP_ATK+463 );

playSe( SP_ATK+450,SE_09);
--敵吹っ飛ぶモーション
changeAnime( SP_ATK+440,1,108);
setRotateKey( SP_ATK+440, 1, -90);

setMoveKey( SP_ATK+442,1,0,200,0);
setMoveKey( SP_ATK+449,1,0,800,0);
setScaleKey( SP_ATK+ 440, 1,  1.6, 1.6);
setScaleKey( SP_ATK+ 443, 1,  1.5, 1.5);
setScaleKey( SP_ATK+ 452, 1,  0.2, 0.2);

--**エフェクト等**--
setShakeChara( SP_ATK+370,1,99,20);

entryFadeBg( SP_ATK+370,0,50,0,0,0,0,255);--ベース暗め背景

entryFadeBg( SP_ATK+410,20,80,0,255,255,255,255);--ベース暗め背景

sen2=entryEffectLife( SP_ATK+370,921,99,0x80,-1,180,0,0);--流線斜め
setEffRotateKey( SP_ATK+370,sen2,90);
setEffScaleKey( SP_ATK+370,sen2,1.5,1);

--書き文字エントリー
ct2=entryEffectLife( SP_ATK+370,10002,99, 0x100,-1,0,-100,0);--ズドドッ
setEffShake( SP_ATK+370,ct2,99,20);
setEffScaleKey( SP_ATK+370,ct2,3.4,3.4);
setEffRotateKey( SP_ATK+370,ct2,-45);
setEffAlphaKey( SP_ATK+370,ct2,255);
setEffAlphaKey( SP_ATK+430,ct2,255);
setEffAlphaKey( SP_ATK+450,ct2,0);
entryFade( SP_ATK+450,10,26,10,fcolor_r,fcolor_g,fcolor_b,255);
------------------------------------------------------
--爆発( SP_ATK+110F)
------------------------------------------------------
abc = 24


entryEffect( SP_ATK+469+abc,SP_05,0,-1,0,0,0);
--setDisp( SP_ATK+469+abc,1,1);

playSe( SP_ATK+473+abc,SE_10);
shuchusen=entryEffectLife( SP_ATK+473+abc,906,120,0x00,-1,0,0,0);--集中線
--entryEffect( SP_ATK+473+abc,1600,0x00,-1,0,30,-130);--ひび割れ

--ダメージ表示
dealDamage( SP_ATK+486+abc -10);

--entryFade( SP_ATK+570+abc,9,10,1,8,8,8,255);--blackfade

endPhase( SP_ATK+580+abc -10);
end
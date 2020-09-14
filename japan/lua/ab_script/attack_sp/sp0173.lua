--孫悟空_怒りのかめはめ波
--2018/8/15修正　監修動画との差異について対応。残りについては仕様とする。

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
SE_13 = 1020;--1034 1037

tyo = -30;
tyo2 = -40;

SP_01 = 100254;--100221
SP_02 = 100255;
SP_03 = 100256;
SP_04 = 100257;
SP_05 = 100258;
--SP_05 = 1558;

multi_frm = 2;

changeAnime( 0, 0, 17);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);

setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

SP_start2 = -69;

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
setVisibleUI(0, 0);

--気を貯める
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
changeAnime( 0, 0, 17);                       -- 溜め!

setScaleKey(  0,   0, 1.0, 1.0);

setVisibleUI( SP_start2+69, 0);
playSe( SP_start2+ 78, SE_03);
playSe( SP_start2+ 98, SE_03);
playSe( SP_start2+ 118, SE_03);
playSe( SP_start2+ 138, SE_03);
playSe( SP_start2+ 158, SE_03);


entryEffect( SP_start2+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start2+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect( SP_start2+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start2+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start2+ 80, SE_04);

--setEffScaleKey( SP_start2+ 70, kame_hand, 0.5, 0.5);

entryFade( SP_start2+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_start2+  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( SP_start2+ 70, aura, 3.0, 3.0);
setEffScaleKey( SP_start2+ 30, aura, 1.5, 1.5);
setShakeChara( SP_start2+ 70, 0, 119, 10);

-- 書き文字エントリー
ctgogo = entryEffectLife( SP_start2+ 80, 190006, 70, 0x100, -1, 0, 150, 510);    -- ゴゴゴ・・・
setEffShake(SP_start2+ 80, ctgogo, 70, 8);
setEffScaleKey(SP_start2+ 80, ctgogo, 0.7, 0.7);

setScaleKey(   SP_start2+  115,   0, 1.6, 1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey( SP_start2+   168,   0,    0, 0,   0);

--setScaleKey( SP_start2+ 169,   0, 1.5, 1.5);
--setScaleKey( SP_start2+ 170,   0, 1.0, 1.0);
setMoveKey( SP_start2+  169,    0,      100,  -54,   0);
setMoveKey( SP_start2+  170,    0,      0,  0,   0);

playSe( SP_start2+ 170, SE_05);
speff = entryEffect( SP_start2+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start2+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start2+ 259 );

-- ** エフェクト等 ** --
playSe( SP_start2+ 170+64, SE_06);
setMoveKey( SP_start2+  259,    0,      -700,  600,   0);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
kame_hand = entryEffect( SP_start2+ 260, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--playSe( SP_start2+ 260, SE_05);
setShakeChara( SP_start2+ 260, 0, 115, 25);

playSe( SP_start2+ 270, SE_13);
playSe( SP_start2+ 300, SE_13);
playSe( SP_start2+ 330, SE_13);
playSe( SP_start2+ 360, SE_13);

changeAnime( SP_start2+ 260, 0, 30);                                    -- かめはめ発射ポーズ
setMoveKey( SP_start2+  270,    0,      -100,  200,   0);
setMoveKey( SP_start2+  290,    0,      -100,  200,   0);

setScaleKey(   SP_start2+  260,   0, 3, 3);
setScaleKey(  SP_start2+  270,   0, 1.0, 1.0);


-- ** エフェクト等 ** --
entryFadeBg( 191, 0, 284, 0, 10, 10, 10, 255);       -- ベース暗め　背景
--entryFadeBg( SP_start2+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_start2+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

sen2 = entryEffectLife( SP_start2+ 260, 921, 284, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start2+260, sen2, 30);
setEffScaleKey( SP_start2+ 260, sen2, 1.6, 1.6);

shuchusen = entryEffectLife( SP_start2+ 259, 906, 284, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey( SP_start2+259, shuchusen, 145);
setEffScaleKey( SP_start2+ 259, shuchusen, 2.8, 2.8);


changeAnime( SP_start2+ 260+116, 0, 31);                                    -- かめはめ発射ポーズ

--kira = entryEffectLife( SP_start2+ 260+115, SP_02, 79, 0x40+0x80,  0,  300,  0,  0);   -- 発射前に一瞬光る横長の光エフェクト

kira = entryEffect( SP_start2+ 260+116, SP_02, 0x40+0x80,      0,  300,  0,  0);   -- 発射前に一瞬光る横長の光エフェクト 308
setEffMoveKey( SP_start2+ 260+116,    kira,   170,  13);
setEffMoveKey( SP_start2+ 260+117,    kira,   0,  0);

playSe( SP_start2+ 260+116, 1042);
setEffScaleKey( SP_start2+ 260+116, kira, 1.5, 1.5);
setEffAlphaKey( SP_start2+ 260+116, kira, 255);

setEffAlphaKey( SP_start2+ 260+125, kira, 255);
setEffAlphaKey( SP_start2+ 260+126, kira, 0);



SP_start = 55;

-- 相手が画面に現れる
setDisp( SP_start+ 310, 1, 1);


kamehame_beam_st = entryEffectLife( SP_start+ 260, SP_03, 109, 0x40+0x80,  0,  300,  -120,  -100);   -- 伸びるかめはめ波 323
setEffRotateKey(SP_start+ 260, kamehame_beam_st, 20);

playSe( SP_start+ 260, SE_07);

--spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SP_start+  292,    0,   -100,  200,   -32);--200
setMoveKey( SP_start+  297,    0,    -650,  300,   -32);--353
--setMoveKey( SP_start+  299,    0,    -700,  300,   -32);--354
--setMoveKey( SP_start+  300,    0,   -650,  300,   -32);--800
setDisp( SP_start+ 297, 0, 0);
setMoveKey( SP_start+  305,    0,   -150,  180,   -32);--800


changeAnime( SP_start+ 305, 1, 100);                        -- 気ダメ後ろ

setScaleKey( SP_start+ 282,    1,  1.0, 1.0);

setMoveKey( SP_start+  304,    1,  500,  -200,   64);
setMoveKey( SP_start+  305,    1,  500,  -200,   64);
setMoveKey( SP_start+  306,    1,  500,  -200,   64);
setScaleKey( SP_start+ 304,    1,  0.7, 0.7);
setScaleKey( SP_start+ 305,    1,  0.7, 0.7);

setMoveKey( SP_start+  345,    1,   120,  0,   0);
setScaleKey( SP_start+  345,   1,   1.6,  1.6);

setShakeChara( SP_start+ 270, 0, 24, 30);


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
playSe( SP_start+ 300, SE_07);
entryFade( SP_start+ 345, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect( SP_start+ 356 );

SP_start3= -10;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start3+ SP_start+ 370, 0, 0);
setDisp( SP_start3+ SP_start+ 370, 1, 1);
changeAnime( SP_start3+ SP_start+ 365, 1, 118);                        -- 気ダメ後ろ
setMoveKey( SP_start3+ SP_start+  365,    1,   120,  0,   0);
setMoveKey( SP_start3+ SP_start+  366,    1,  400,  -400,   0);
setMoveKey( SP_start3+ SP_start+  370,    1,  400,  -400,   0);
setScaleKey( SP_start3+ SP_start+  365,   1,   1.6,  1.6);
--setScaleKey( SP_start3+ SP_start+ 366,    1,  1, 1);

setMoveKey( SP_start3+ SP_start+  400,    1,   120,  -270,   0);
setScaleKey( SP_start3+ SP_start+  400,   1,   1.6,  1.6);

playSe( SP_start3+ SP_start+ 390, SE_06);
entryFade( SP_start3+ SP_start+ 410, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start3+ SP_start+ 416, 1, 0);
setScaleKey( SP_start3+ SP_start+  416,   1,   1.6,  1.6);

ryusen = entryEffectLife( SP_start3+ SP_start+ 369, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( SP_start3+ SP_start+369, ryusen, 190);
setEffScaleKey( SP_start3+ SP_start+ 369, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( SP_start3+ SP_start+ 370, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start3+ SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start3+ SP_start+452, kamehame_beam2, 1, 1);
--setEffScaleKey( SP_start3+ SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start3+ SP_start+ 452, 1, 0);  -- ダメージ振動等

playSe( SP_start3+ SP_start+ 435, SE_09);
-- 敵吹っ飛ぶモーション
-- ** エフェクト等 ** --
setShakeChara( SP_start3+ SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start3+ SP_start+ 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SP_start3+ SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start3+ SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start3+ SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start3+ SP_start+370, ct, 70);
setEffAlphaKey( SP_start3+ SP_start+370, ct, 255);
setEffAlphaKey( SP_start3+ SP_start+410, ct, 255);
setEffAlphaKey( SP_start3+ SP_start+420, ct, 0);

ct = entryEffectLife( SP_start3+ SP_start+ 430, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake( SP_start3+ SP_start+430, ct, 99, 20);
setEffScaleKey( SP_start3+ SP_start+ 430, ct, 0.1, 0.1);
setEffScaleKey( SP_start3+ SP_start+ 435, ct, 2.4, 2.4);
setEffScaleKey( SP_start3+ SP_start+ 460, ct, 2.8, 2.8);
setEffAlphaKey( SP_start3+ SP_start+430, ct, 255);
setEffAlphaKey( SP_start3+ SP_start+445, ct, 255);
setEffAlphaKey( SP_start3+ SP_start+460, ct, 0);

entryFade( SP_start3+ SP_start+ 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setScaleKey( SP_start3+ SP_start+  459,   1,   1.6,  1.6);
setScaleKey( SP_start3+ SP_start+ 469,    0,  0.5, 0.5);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 435; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge-1,    0,      -100,  200,   0);
setMoveKey( SP_dodge+5, 0, 2000, 2000);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
entryFadeBg( SP_start3+ SP_start+ 468, 0, 170, 0, 10, 10, 10, 255);       -- ベース暗め　背景

bakuhatu = entryEffect( SP_start3+ SP_start+ 469, SP_05, 0x80,  -1,  0,  0,  0);   -- 爆発

setDisp( SP_start3+ SP_start+ 470, 0, 1);
setMoveKey( SP_start3+ SP_start+  470,    0,  -218,  380,   0);

playSe( SP_start3+ SP_start+ 478, 1008);
setDamage( SP_start3+ SP_start+ 486, 1, 0);  -- ダメージ振動等
playSe( SP_start3+ SP_start+ 486, 1014);

--[[
playSe( SP_start3+ SP_start+ 510, SE_10);
playSe( SP_start3+ SP_start+ 540, SE_10);
playSe( SP_start3+ SP_start+ 560, SE_10);
--playSe( SP_start3+ SP_start+ 580, SE_10);
playSe( SP_start3+ SP_start+ 575, SE_10);
--playSe( SP_start3+ SP_start+ 620, SE_10);
]]
--4.11
SE001 = playSe( SP_start3+ SP_start+ 510, SE_10);
stopSe(SP_start3+ SP_start+ 550,SE001,10);
SE002 = playSe( SP_start3+ SP_start+ 540, SE_10);
stopSe(SP_start3+ SP_start+ 570,SE001,10);
SE003 = playSe( SP_start3+ SP_start+ 560, SE_10);
stopSe(SP_start3+ SP_start+ 585,SE001,10);
SE004 = playSe( SP_start3+ SP_start+ 575, SE_10);

--setMoveKey( SP_start3+ SP_start+  490,    0,  -468,  680,   0);
setMoveKey( SP_start3+ SP_start+  470,    0,  -218,  380,   0);


setMoveKey( SP_start3+ SP_start+  520,    0,  -168,  330,   0);

playSe( SP_start3+ SP_start+ 473, SE_11);
shuchusen = entryEffectLife( SP_start3+ SP_start+ 473, 906, 157, 0x100,  -1, 0,  300,  -300);   -- 集中線
setEffScaleKey( SP_start3+ SP_start+ 469, shuchusen, 3.0, 3.0);

--entryEffect( SP_start3+ SP_start+ 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start3+ SP_start+486);

entryFade( SP_start3+ SP_start+ 620, 9,  10, 1, 8, 8, 8, 255);             -- black fade
--setScaleKey( SP_start3+ SP_start+ 579,    0,  0.6, 0.6);
setScaleKey( SP_start3+ SP_start+ 630,    0,  0.5, 0.5);

endPhase( SP_start3+ SP_start+630);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setVisibleUI(0, 0);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
changeAnime( 0, 0, 17);                       -- 溜め!

setScaleKey(  0,   0, 1.0, 1.0);

setVisibleUI( SP_start2+69, 0);
playSe( SP_start2+ 78, SE_03);
playSe( SP_start2+ 98, SE_03);
playSe( SP_start2+ 118, SE_03);
playSe( SP_start2+ 138, SE_03);
playSe( SP_start2+ 158, SE_03);


entryEffect( SP_start2+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start2+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect( SP_start2+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start2+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( SP_start2+ 80, SE_04);

--setEffScaleKey( SP_start2+ 70, kame_hand, 0.5, 0.5);

entryFade( SP_start2+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_start2+  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( SP_start2+ 70, aura, 3.0, 3.0);
setEffScaleKey( SP_start2+ 30, aura, 1.5, 1.5);
setShakeChara( SP_start2+ 70, 0, 119, 10);

-- 書き文字エントリー
ctgogo = entryEffectLife( SP_start2+ 80, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(SP_start2+ 80, ctgogo, 70, 8);
setEffScaleKey(SP_start2+ 80, ctgogo, -0.7, 0.7);

setScaleKey(   SP_start2+  115,   0, 1.6, 1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey( SP_start2+   168,   0,    0, 0,   0);

--setScaleKey( SP_start2+ 169,   0, 1.5, 1.5);
--setScaleKey( SP_start2+ 170,   0, 1.0, 1.0);
setMoveKey( SP_start2+  169,    0,      100,  -54,   0);
setMoveKey( SP_start2+  170,    0,      0,  0,   0);

playSe( SP_start2+ 170, SE_05);
speff = entryEffect( SP_start2+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start2+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start2+ 259 );

-- ** エフェクト等 ** --
playSe( SP_start2+ 170+64, SE_06);
setMoveKey( SP_start2+  259,    0,      -700,  600,   0);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
kame_hand = entryEffect( SP_start2+ 260, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--playSe( SP_start2+ 260, SE_05);
setShakeChara( SP_start2+ 260, 0, 115, 25);

playSe( SP_start2+ 270, SE_13);
playSe( SP_start2+ 300, SE_13);
playSe( SP_start2+ 330, SE_13);
playSe( SP_start2+ 360, SE_13);

changeAnime( SP_start2+ 260, 0, 30);                                    -- かめはめ発射ポーズ
setMoveKey( SP_start2+  270,    0,      -100,  200,   0);
setMoveKey( SP_start2+  290,    0,      -100,  200,   0);

setScaleKey(   SP_start2+  260,   0, 3, 3);
setScaleKey(  SP_start2+  270,   0, 1.0, 1.0);


-- ** エフェクト等 ** --
entryFadeBg( SP_start2+ 260, 0, 284, 0, 10, 10, 10, 255);       -- ベース暗め　背景
--entryFadeBg( SP_start2+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_start2+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

sen2 = entryEffectLife( SP_start2+ 260, 921, 284, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start2+260, sen2, 30);
setEffScaleKey( SP_start2+ 260, sen2, 1.6, 1.6);

shuchusen = entryEffectLife( SP_start2+ 259, 906, 284, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey( SP_start2+259, shuchusen, 145);
setEffScaleKey( SP_start2+ 259, shuchusen, 2.8, 2.8);


changeAnime( SP_start2+ 260+116, 0, 31);                                    -- かめはめ発射ポーズ

--kira = entryEffectLife( SP_start2+ 260+115, SP_02, 79, 0x40+0x80,  0,  300,  0,  0);   -- 発射前に一瞬光る横長の光エフェクト

kira = entryEffect( SP_start2+ 260+116, SP_02, 0x40+0x80,      0,  300,  0,  0);   -- 発射前に一瞬光る横長の光エフェクト 308
setEffMoveKey( SP_start2+ 260+116,    kira,   160,  -30);
setEffMoveKey( SP_start2+ 260+117,    kira,   0,  0);

playSe( SP_start2+ 260+116, 1042);
setEffScaleKey( SP_start2+ 260+116, kira, 1.5, 1.5);
setEffAlphaKey( SP_start2+ 260+116, kira, 255);

setEffAlphaKey( SP_start2+ 260+125, kira, 255);
setEffAlphaKey( SP_start2+ 260+126, kira, 0);

SP_start = 55;

-- 相手が画面に現れる
setDisp( SP_start+ 310, 1, 1);


kamehame_beam_st = entryEffectLife( SP_start+ 260, SP_03, 109, 0x40+0x80,  0,  300,  -120,  -100);   -- 伸びるかめはめ波 323
setEffRotateKey(SP_start+ 260, kamehame_beam_st, 20);

playSe( SP_start+ 260, SE_07);

--spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SP_start+  292,    0,   -100,  200,   -32);--200
setMoveKey( SP_start+  297,    0,    -650,  300,   -32);--800
--setMoveKey( SP_start+  299,    0,    -700,  300,   -32);--354
--setMoveKey( SP_start+  300,    0,   -650,  300,   -32);--800
setDisp( SP_start+ 297, 0, 0);
setMoveKey( SP_start+  305,    0,   -150,  180,   -32);--800


changeAnime( SP_start+ 305, 1, 100);                        -- 気ダメ後ろ

setScaleKey( SP_start+ 282,    1,  1.0, 1.0);

setMoveKey( SP_start+  304,    1,  500,  -200,   64);
setMoveKey( SP_start+  305,    1,  500,  -200,   64);
setMoveKey( SP_start+  306,    1,  500,  -200,   64);
setScaleKey( SP_start+ 304,    1,  0.7, 0.7);
setScaleKey( SP_start+ 305,    1,  0.7, 0.7);

setMoveKey( SP_start+  345,    1,   120,  0,   0);
setScaleKey( SP_start+  345,   1,   1.6,  1.6);

setShakeChara( SP_start+ 270, 0, 24, 30);


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
playSe( SP_start+ 300, SE_07);
entryFade( SP_start+ 345, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect( SP_start+ 356 );

SP_start3= -10;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start3+ SP_start+ 370, 0, 0);
setDisp( SP_start3+ SP_start+ 370, 1, 1);
changeAnime( SP_start3+ SP_start+ 365, 1, 118);                        -- 気ダメ後ろ
setMoveKey( SP_start3+ SP_start+  365,    1,   120,  0,   0);
setMoveKey( SP_start3+ SP_start+  366,    1,  400,  -400,   0);
setMoveKey( SP_start3+ SP_start+  370,    1,  400,  -400,   0);
setScaleKey( SP_start3+ SP_start+  365,   1,   1.6,  1.6);
--setScaleKey( SP_start3+ SP_start+ 366,    1,  1, 1);

setMoveKey( SP_start3+ SP_start+  400,    1,   120,  -270,   0);
setScaleKey( SP_start3+ SP_start+  400,   1,   1.6,  1.6);

playSe( SP_start3+ SP_start+ 390, SE_06);
entryFade( SP_start3+ SP_start+ 410, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start3+ SP_start+ 416, 1, 0);
setScaleKey( SP_start3+ SP_start+  416,   1,   1.6,  1.6);

ryusen = entryEffectLife( SP_start3+ SP_start+ 369, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( SP_start3+ SP_start+369, ryusen, 190);
setEffScaleKey( SP_start3+ SP_start+ 369, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( SP_start3+ SP_start+ 370, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start3+ SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start3+ SP_start+452, kamehame_beam2, 1, 1);
--setEffScaleKey( SP_start3+ SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start3+ SP_start+ 452, 1, 0);  -- ダメージ振動等

playSe( SP_start3+ SP_start+ 435, SE_09);
-- 敵吹っ飛ぶモーション
-- ** エフェクト等 ** --
setShakeChara( SP_start3+ SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start3+ SP_start+ 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SP_start3+ SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start3+ SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start3+ SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start3+ SP_start+370, ct, -70);
setEffAlphaKey( SP_start3+ SP_start+370, ct, 255);
setEffAlphaKey( SP_start3+ SP_start+410, ct, 255);
setEffAlphaKey( SP_start3+ SP_start+420, ct, 0);

ct = entryEffectLife( SP_start3+ SP_start+ 430, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake( SP_start3+ SP_start+430, ct, 99, 20);
setEffScaleKey( SP_start3+ SP_start+ 430, ct, 0.1, 0.1);
setEffScaleKey( SP_start3+ SP_start+ 435, ct, 2.4, 2.4);
setEffScaleKey( SP_start3+ SP_start+ 460, ct, 2.8, 2.8);
setEffAlphaKey( SP_start3+ SP_start+430, ct, 255);
setEffAlphaKey( SP_start3+ SP_start+445, ct, 255);
setEffAlphaKey( SP_start3+ SP_start+460, ct, 0);

entryFade( SP_start3+ SP_start+ 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setScaleKey( SP_start3+ SP_start+  459,   1,   1.6,  1.6);
setScaleKey( SP_start3+ SP_start+ 469,    0,  0.5, 0.5);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 445; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge-1,    0,      -100,  200,   0);
setMoveKey( SP_dodge+5, 0, 2000, 2000);


endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
entryFadeBg( SP_start3+ SP_start+ 468, 0, 170, 0, 10, 10, 10, 255);       -- ベース暗め　背景

bakuhatu = entryEffect( SP_start3+ SP_start+ 469, SP_05, 0x80,  -1,  0,  0,  0);   -- 爆発

setDisp( SP_start3+ SP_start+ 470, 0, 1);
setMoveKey( SP_start3+ SP_start+  470,    0,  -218,  380,   0);

playSe( SP_start3+ SP_start+ 478, 1008);
setDamage( SP_start3+ SP_start+ 486, 1, 0);  -- ダメージ振動等
playSe( SP_start3+ SP_start+ 486, 1014);

--[[
playSe( SP_start3+ SP_start+ 510, SE_10);
playSe( SP_start3+ SP_start+ 540, SE_10);
playSe( SP_start3+ SP_start+ 560, SE_10);
--playSe( SP_start3+ SP_start+ 580, SE_10);
playSe( SP_start3+ SP_start+ 575, SE_10);
--playSe( SP_start3+ SP_start+ 620, SE_10);
]]
--4.11
SE001 = playSe( SP_start3+ SP_start+ 510, SE_10);
stopSe(SP_start3+ SP_start+ 550,SE001,10);
SE002 = playSe( SP_start3+ SP_start+ 540, SE_10);
stopSe(SP_start3+ SP_start+ 570,SE001,10);
SE003 = playSe( SP_start3+ SP_start+ 560, SE_10);
stopSe(SP_start3+ SP_start+ 585,SE001,10);
SE004 = playSe( SP_start3+ SP_start+ 575, SE_10);

--setMoveKey( SP_start3+ SP_start+  490,    0,  -468,  680,   0);
setMoveKey( SP_start3+ SP_start+  470,    0,  -218,  380,   0);


setMoveKey( SP_start3+ SP_start+  520,    0,  -168,  330,   0);

playSe( SP_start3+ SP_start+ 473, SE_11);
shuchusen = entryEffectLife( SP_start3+ SP_start+ 473, 906, 157, 0x100,  -1, 0,  300,  -300);   -- 集中線
setEffScaleKey( SP_start3+ SP_start+ 469, shuchusen, 3.0, 3.0);

--entryEffect( SP_start3+ SP_start+ 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start3+ SP_start+486);

entryFade( SP_start3+ SP_start+ 620, 9,  10, 1, 8, 8, 8, 255);             -- black fade
--setScaleKey( SP_start3+ SP_start+ 579,    0,  0.6, 0.6);
setScaleKey( SP_start3+ SP_start+ 630,    0,  0.5, 0.5);

endPhase( SP_start3+ SP_start+630);

end

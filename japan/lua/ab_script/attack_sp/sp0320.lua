

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

SP_01 = 150165;
SP_02 = 150166;
SP_03 = 150167;
SP_04 = 150168;
SP_05 = 150169;
SP_06 = 150170;
SP_07 = 150171;
SP_08 = 150172;
SP_09 = 150173;
SP_10 = 150174;
SP_11 = 150175;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI(0, 0); --69
changeAnime( 1, 0, 30);                       -- 溜め!
playSe( 3, SE_03);

entryEffect(  0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

setMoveKey(   2,   0,    0, -54,   -80);
setMoveKey(   15,   0,    0, -54,   0);

speff = entryEffect(  20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


playSe( 10, SE_04);

playSe( 20, SE_03);
playSe( 40, SE_03);
playSe( 60, SE_03);
playSe( 80, SE_03);

kame_hand = entryEffect( 0, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 0, kame_hand, 0.5, 0.5);

kamehame_beam = entryEffectLife( 0, SP_02, 109, 0x40,  0,  300,  50,  0);   -- 取り巻きの栽培マン

entryFade( 96, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade --69

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setShakeChara( 0, 0, 96, 5);

-- 書き文字エントリー
ct = entryEffectLife( 20, 10008, 80, 0x100, -1, 0, 250, 300);    -- ゴゴゴ・・・
setEffShake(20, ct, 80, 8);
setEffScaleKey(20, ct, 1.4, 1.4);

spep_1 =100;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_1,   0, 1.5, 1.5);
setScaleKey( spep_1+1,   0, 1.0, 1.0);--70

playSe( spep_1+1, SE_05);
speff = entryEffect(  spep_1+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+86, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_1+165, SE_06);

spep_2 = spep_1+90;


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_2, 0, 31);                                    -- かめはめ発射ポーズ--260

setMoveKey(  spep_2-1,    0,      0,  0,   0);
setMoveKey(  spep_2,    0,   -600,  0,   0);
setMoveKey(  spep_2+1,    0,   -600,  0,   0);
setMoveKey(  spep_2+10,    0,   -100,  0,   0);

kamehame_beam = entryEffect( spep_2, SP_03, 0x40,  0,  300,  50,  0);   -- かめはめ波発射 276

playSe( spep_2, SE_07);

--spname = entryEffect( spep_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_2+39,    0,   -100,  0,   0);
setMoveKey(  spep_2+40,    0,   -100,  0,   0);--300
setMoveKey(  spep_2+48,    0,   -1100,  0,   0);

entryFade( spep_2+79, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_2, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_2, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_2+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_2, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_2+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_2, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_2+8, ct, 32, 5);
setEffAlphaKey( spep_2+8, ct, 255);
setEffAlphaKey( spep_2+30, ct, 255);
setEffAlphaKey( spep_2+40, ct, 0);
setEffScaleKey( spep_2+8, ct, 0.0, 0.0);
setEffScaleKey( spep_2+12, ct, 1.3, 1.3);
setEffScaleKey( spep_2+32, ct, 1.3, 1.3);
setEffScaleKey( spep_2+40, ct, 6.0, 6.0);
playSe( spep_2+40, SE_07);

spep_3 = spep_2+85;

--275



------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 255; --エンドフェイズのフレーム数を置き換える

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
-- 命中爆破とボコスカ栽培(100F)
------------------------------------------------------

kamehame_beam = entryEffect( spep_3, SP_04, 0x100,  -1,  300,  0,  0);   -- かめはめ命中
kamehame_beam = entryEffect( spep_3+12, SP_05, 0x100,  -1,  300,  0,  0);   -- かめはめ爆発

kamehame_beam = entryEffect( spep_3+74, SP_06, 0x100,  -1,  300,  0,  0);   -- 栽培マンラッシュ


setDisp(  spep_3, 0, 0);
setDisp(  spep_3, 1, 1);

changeAnime( spep_3, 1, 100);
changeAnime( spep_3+14, 1, 108);
changeAnime( spep_3+60, 1, 100);
changeAnime( spep_3+90, 1, 104);

setAnimeLoop( spep_3+1, 1, 1);
setAnimeLoop( spep_3+15, 1, 1);
setAnimeLoop( spep_3+61, 1, 1);
setAnimeLoop( spep_3+91, 1, 1);

setDamage( spep_3+60, 1, 0);  -- ダメージ振動等
setShake(spep_3+90,100,20);

setShakeChara( spep_3, 1, 200, 5);

playSe( spep_3+12, SE_10);
playSe( spep_3+74, 37);

playSe(spep_3+92,1009);
playSe(spep_3+97,1009);
playSe(spep_3+102,1009);
playSe(spep_3+107,1009);
playSe(spep_3+112,1009);
playSe(spep_3+117,1009);
playSe(spep_3+122,1009);
playSe(spep_3+127,1009);
playSe(spep_3+132,1009);
playSe(spep_3+137,1009);
playSe(spep_3+142,1009);
playSe(spep_3+147,1009);
playSe(spep_3+152,1009);
playSe(spep_3+157,1009);

setScaleKey( spep_3,   1, 1.5, 1.5);
setScaleKey( spep_3+200,   1, 1.5, 1.5);

setMoveKey(  spep_3,    1,   800,  0,   0);
setMoveKey(  spep_3+10,    1,   100,  0,   0);
--setMoveKey(  spep_3+30,    1,   0,  0,   0);
setMoveKey(  spep_3+40,    1,   -10,  0,   0);
setMoveKey(  spep_3+45,    1,   50,  0,   0);
--setMoveKey(  spep_3+60,    1,   50,  0,   0);
setMoveKey(  spep_3+90,    1,   0,  0,   0);
setMoveKey(  spep_3+200,    1,   0,  0,   0);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 165, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryEffectLife( spep_3, 920, 165, 0x80,  -1,  0,  0,  0); -- 流線


entryFade( spep_3+160, 2 ,5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+165;


------------------------------------------------------
-- 斬撃場面(100F)
------------------------------------------------------

--kamehame_beam = entryEffect( spep_4, SP_08,  0x100,  -1,  300,  0,  0);   -- 栽培マン斬撃のポーズ
kamehame_beam = entryEffect( spep_4, SP_07, 0x100,  -1,  300,  0,  0);   -- 栽培マンの斬撃


setDisp(  spep_4, 1, 0);

--entryEffect( spep_4,  109077, 0x80,  -1,  0,  0,  0);   -- 斬撃

entryFadeBg( spep_4, 0, 35, 0, 0, 0, 0, 255);       -- ベース暗め　背景

playSe( spep_4+2,1032);
playSe( spep_4+7,1032);
playSe( spep_4+12,1032);
playSe( spep_4+15,1033);

entryFade( spep_4+30, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー

ct = entryEffectLife(spep_4, 10010, 10, 0, -1, 0, 200, 100); -- ザンッ
setEffAlphaKey( spep_4, ct, 255);
setEffAlphaKey( spep_4+10, ct, 255);
setEffScaleKey( spep_4, ct, 0.0, 0.0);
setEffScaleKey( spep_4+5, ct, 1.5, 1.5);
setEffScaleKey( spep_4+10, ct, 1.5, 1.5);

ct = entryEffectLife(spep_4+5, 10010, 8, 0, -1, 0, -200, 100); -- ザンッ
setEffAlphaKey( spep_4+5, ct, 255);
setEffAlphaKey( spep_4+13, ct, 255);
setEffScaleKey( spep_4+5, ct, 0.0, 0.0);
setEffScaleKey( spep_4+9, ct, 1.5, 1.5);
setEffScaleKey( spep_4+13, ct, 1.5, 1.5);

ct = entryEffectLife( spep_4+13, 10009, 22, 0, -1, 0, 200, 100); -- ザザンッ
setEffAlphaKey( spep_4+13, ct, 255);
setEffAlphaKey( spep_4+35, ct, 255);
setEffScaleKey( spep_4+13, ct, 0.0, 0.0);
setEffScaleKey( spep_4+18, ct, 1.5, 1.5);
setEffScaleKey( spep_4+35, ct, 1.5, 1.5);

spep_5 = spep_4+35;


------------------------------------------------------
-- 地面叩き付け(100F)
------------------------------------------------------

kamehame_beam = entryEffect( spep_5, SP_08,  0x100,  -1,  300,  0,  0);   -- 栽培マン斬撃のポーズ
kamehame_beam = entryEffect( spep_5+40, SP_09, 0x80,  -1,  300,  70,  0);   -- 最初の地面

setDisp( spep_5, 1, 1);

changeAnime( spep_5, 1, 108);
setAnimeLoop( spep_5+1, 1, 1);

setScaleKey( spep_5,  1, 2.0, 2.0);
setScaleKey( spep_5+70, 1,2.0, 2.0);

setRotateKey( spep_5, 1, 50);
setRotateKey( spep_5+70, 1, 50);

setMoveKey(  spep_5,    1,   0,  0,   0);
setMoveKey(  spep_5+30,    1,   -200,  200,   0);
setMoveKey(  spep_5+50,    1,   250,  -250,   0);
setMoveKey(  spep_5+69,    1,   250,  -250,   0);

playSe( spep_5, SE_04);
playSe( spep_5+50,1014);

ryusen_3 = entryEffectLife( spep_5, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5, ryusen_3, 60 );
setEffScaleKey(spep_5, ryusen_3, 2.0, 2.0);

shuchusen = entryEffectLife( spep_5, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_5, shuchusen, 1.3, 1.3);

entryFadeBg( spep_5, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_5+65, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+70;


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

ryusen = entryEffectLife(spep_6, 921, 200, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6, ryusen,220);
setEffScaleKey(spep_6, ryusen, 1.5, 1.5);

kamehame_beam = entryEffect( spep_6, SP_10,  0x80,  -1,  300,  0,  0);   -- 地面2

kamehame_beam = entryEffect( spep_6, SP_11, 0x100,  -1,  300,  0,  0);   -- よっしゃ自爆だ

setShakeChara( spep_6, 1, 200, 5);

setMoveKey(  spep_6,    1,   30,  -130,   0);
setMoveKey(  spep_6+200,    1,   30,  -130,   0);

setRotateKey( spep_6, 1, 50);
setRotateKey( spep_6+200, 1, 50);

setScaleKey( spep_6,  1, 2.0, 2.0);
setScaleKey( spep_6+200, 1,2.0, 2.0);

playSe(  560, SE_10);
playSe(  599, SE_10);
playSe(  610, SE_10);
playSe(  618, SE_10);

shuchusen = entryEffectLife( spep_6, 906, 200, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_6, shuchusen, 1.3, 1.3);

entryFadeBg( spep_6, 0, 200, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ダメージ表示
dealDamage(610);

entryFade( spep_6+90, 9,  10, 1, 8, 8, 8, 255);             -- black fade--570



endPhase( 645);--580
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI(0, 0); --69
changeAnime( 1, 0, 30);                       -- 溜め!
playSe( 3, SE_03);

entryEffect(  0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

setMoveKey(   2,   0,    0, -54,   -80);
setMoveKey(   15,   0,    0, -54,   0);

--speff = entryEffect(  20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


playSe( 10, SE_04);

playSe( 20, SE_03);
playSe( 40, SE_03);
playSe( 60, SE_03);
playSe( 80, SE_03);

kame_hand = entryEffect( 0, SP_01, 0x40+0x80,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 0, kame_hand, 0.5, 0.5);

kamehame_beam = entryEffectLife( 0, SP_02, 109, 0x40,  0,  300,  50,  0);   -- 取り巻きの栽培マン

entryFade( 96, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade --69

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setShakeChara( 0, 0, 96, 5);

-- 書き文字エントリー
ct = entryEffectLife( 20, 10008, 80, 0x100, -1, 0, 220, 300);    -- ゴゴゴ・・・
setEffShake(20, ct, 80, 8);
setEffScaleKey(20, ct, 1.4, 1.4);

spep_1 =100;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_1,   0, 1.5, 1.5);
setScaleKey( spep_1+1,   0, 1.0, 1.0);--70

playSe( spep_1+1, SE_05);
speff = entryEffect(  spep_1+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+86, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_1+165, SE_06);

spep_2 = spep_1+90;


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_2, 0, 31);                                    -- かめはめ発射ポーズ--260

setMoveKey(  spep_2-1,    0,      0,  0,   0);
setMoveKey(  spep_2,    0,   -600,  0,   0);
setMoveKey(  spep_2+1,    0,   -600,  0,   0);
setMoveKey(  spep_2+10,    0,   -100,  0,   0);

kamehame_beam = entryEffect( spep_2, SP_03, 0x40,  0,  300,  50,  0);   -- かめはめ波発射 276

playSe( spep_2, SE_07);

--spname = entryEffect( spep_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_2+39,    0,   -100,  0,   0);
setMoveKey(  spep_2+40,    0,   -100,  0,   0);--300
setMoveKey(  spep_2+48,    0,   -1100,  0,   0);

entryFade( spep_2+79, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_2, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_2, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_2+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_2, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_2+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_2, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_2+8, ct, 32, 5);
setEffAlphaKey( spep_2+8, ct, 255);
setEffAlphaKey( spep_2+30, ct, 255);
setEffAlphaKey( spep_2+40, ct, 0);
setEffScaleKey( spep_2+8, ct, 0.0, 0.0);
setEffScaleKey( spep_2+12, ct, 1.3, 1.3);
setEffScaleKey( spep_2+32, ct, 1.3, 1.3);
setEffScaleKey( spep_2+40, ct, 6.0, 6.0);
playSe( spep_2+40, SE_07);

spep_3 = spep_2+85;

--275



------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 255; --エンドフェイズのフレーム数を置き換える

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
-- 命中爆破とボコスカ栽培(100F)
------------------------------------------------------

kamehame_beam = entryEffect( spep_3, SP_04, 0x100,  -1,  300,  0,  0);   -- かめはめ命中
kamehame_beam = entryEffect( spep_3+12, SP_05, 0x100,  -1,  300,  0,  0);   -- かめはめ爆発

kamehame_beam = entryEffect( spep_3+74, SP_06, 0x100,  -1,  300,  0,  0);   -- 栽培マンラッシュ


setDisp(  spep_3, 0, 0);
setDisp(  spep_3, 1, 1);

changeAnime( spep_3, 1, 100);
changeAnime( spep_3+14, 1, 108);
changeAnime( spep_3+60, 1, 100);
changeAnime( spep_3+90, 1, 104);

setAnimeLoop( spep_3+1, 1, 1);
setAnimeLoop( spep_3+15, 1, 1);
setAnimeLoop( spep_3+61, 1, 1);
setAnimeLoop( spep_3+91, 1, 1);

setDamage( spep_3+60, 1, 0);  -- ダメージ振動等
setShake(spep_3+90,100,20);

setShakeChara( spep_3, 1, 200, 5);

playSe( spep_3+12, SE_10);
playSe( spep_3+74, 37);

playSe(spep_3+92,1009);
playSe(spep_3+97,1009);
playSe(spep_3+102,1009);
playSe(spep_3+107,1009);
playSe(spep_3+112,1009);
playSe(spep_3+117,1009);
playSe(spep_3+122,1009);
playSe(spep_3+127,1009);
playSe(spep_3+132,1009);
playSe(spep_3+137,1009);
playSe(spep_3+142,1009);
playSe(spep_3+147,1009);
playSe(spep_3+152,1009);
playSe(spep_3+157,1009);

setScaleKey( spep_3,   1, 1.5, 1.5);
setScaleKey( spep_3+200,   1, 1.5, 1.5);

setMoveKey(  spep_3,    1,   800,  0,   0);
setMoveKey(  spep_3+10,    1,   100,  0,   0);
--setMoveKey(  spep_3+30,    1,   0,  0,   0);
setMoveKey(  spep_3+40,    1,   -10,  0,   0);
setMoveKey(  spep_3+45,    1,   50,  0,   0);
--setMoveKey(  spep_3+60,    1,   50,  0,   0);
setMoveKey(  spep_3+90,    1,   0,  0,   0);
setMoveKey(  spep_3+200,    1,   0,  0,   0);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 165, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryEffectLife( spep_3, 920, 165, 0x80,  -1,  0,  0,  0); -- 流線


entryFade( spep_3+160, 2 ,5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+165;


------------------------------------------------------
-- 斬撃場面(100F)
------------------------------------------------------

--kamehame_beam = entryEffect( spep_4, SP_08,  0x100,  -1,  300,  0,  0);   -- 栽培マン斬撃のポーズ
kamehame_beam = entryEffect( spep_4, SP_07, 0x100,  -1,  300,  0,  0);   -- 栽培マンの斬撃


setDisp(  spep_4, 1, 0);

--entryEffect( spep_4,  109077, 0x80,  -1,  0,  0,  0);   -- 斬撃

entryFadeBg( spep_4, 0, 35, 0, 0, 0, 0, 255);       -- ベース暗め　背景

playSe( spep_4+2,1032);
playSe( spep_4+7,1032);
playSe( spep_4+12,1032);
playSe( spep_4+15,1033);

entryFade( spep_4+30, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー

ct = entryEffectLife(spep_4, 10010, 10, 0, -1, 0, 200, 100); -- ザンッ
setEffAlphaKey( spep_4, ct, 255);
setEffAlphaKey( spep_4+10, ct, 255);
setEffScaleKey( spep_4, ct, 0.0, 0.0);
setEffScaleKey( spep_4+5, ct, 1.5, 1.5);
setEffScaleKey( spep_4+10, ct, 1.5, 1.5);

ct = entryEffectLife(spep_4+5, 10010, 8, 0, -1, 0, -200, 100); -- ザンッ
setEffAlphaKey( spep_4+5, ct, 255);
setEffAlphaKey( spep_4+13, ct, 255);
setEffScaleKey( spep_4+5, ct, 0.0, 0.0);
setEffScaleKey( spep_4+9, ct, 1.5, 1.5);
setEffScaleKey( spep_4+13, ct, 1.5, 1.5);

ct = entryEffectLife( spep_4+13, 10009, 22, 0, -1, 0, 200, 100); -- ザザンッ
setEffAlphaKey( spep_4+13, ct, 255);
setEffAlphaKey( spep_4+35, ct, 255);
setEffScaleKey( spep_4+13, ct, 0.0, 0.0);
setEffScaleKey( spep_4+18, ct, 1.5, 1.5);
setEffScaleKey( spep_4+35, ct, 1.5, 1.5);

spep_5 = spep_4+35;


------------------------------------------------------
-- 地面叩き付け(100F)
------------------------------------------------------

kamehame_beam = entryEffect( spep_5, SP_08,  0x100,  -1,  300,  0,  0);   -- 栽培マン斬撃のポーズ
kamehame_beam = entryEffect( spep_5+40, SP_09, 0x80,  -1,  300,  70,  0);   -- 最初の地面

setDisp( spep_5, 1, 1);

changeAnime( spep_5, 1, 108);
setAnimeLoop( spep_5+1, 1, 1);

setScaleKey( spep_5,  1, 2.0, 2.0);
setScaleKey( spep_5+70, 1,2.0, 2.0);

setRotateKey( spep_5, 1, 50);
setRotateKey( spep_5+70, 1, 50);

setMoveKey(  spep_5,    1,   0,  0,   0);
setMoveKey(  spep_5+30,    1,   -200,  200,   0);
setMoveKey(  spep_5+50,    1,   250,  -250,   0);
setMoveKey(  spep_5+69,    1,   250,  -250,   0);

playSe( spep_5, SE_04);
playSe( spep_5+50,1014);

ryusen_3 = entryEffectLife( spep_5, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5, ryusen_3, 60 );
setEffScaleKey(spep_5, ryusen_3, 2.0, 2.0);

shuchusen = entryEffectLife( spep_5, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_5, shuchusen, 1.3, 1.3);

entryFadeBg( spep_5, 0, 70, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_5+65, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+70;


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

ryusen = entryEffectLife(spep_6, 921, 200, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6, ryusen,220);
setEffScaleKey(spep_6, ryusen, 1.5, 1.5);

kamehame_beam = entryEffect( spep_6, SP_10,  0x80,  -1,  300,  0,  0);   -- 地面2

kamehame_beam = entryEffect( spep_6, SP_11, 0x100,  -1,  300,  0,  0);   -- よっしゃ自爆だ

setShakeChara( spep_6, 1, 200, 5);

setMoveKey(  spep_6,    1,   30,  -130,   0);
setMoveKey(  spep_6+200,    1,   30,  -130,   0);

setRotateKey( spep_6, 1, 50);
setRotateKey( spep_6+200, 1, 50);

setScaleKey( spep_6,  1, 2.0, 2.0);
setScaleKey( spep_6+200, 1,2.0, 2.0);

playSe(  560, SE_10);
playSe(  599, SE_10);
playSe(  610, SE_10);
playSe(  618, SE_10);

shuchusen = entryEffectLife( spep_6, 906, 200, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_6, shuchusen, 1.3, 1.3);

entryFadeBg( spep_6, 0, 200, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ダメージ表示
dealDamage(610);

entryFade( spep_6+90, 9,  10, 1, 8, 8, 8, 255);             -- black fade--570



endPhase( 655);--580

end

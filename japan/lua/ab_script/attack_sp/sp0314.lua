

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

tyo = -30;
tyo2 = -40;

SP_01 = 109000; --溜め
SP_02 = 102142;--突撃
SP_03 = 102143;--発射
SP_04 = 102144;--迫る
SP_05 = 190000;--ギャン

SP_02e = 102145;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setAnimeLoop( 1, 0, 1);
setDisp( 0, 1, 0);
setDisp( 1, 0, 1);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
setAnimeLoop( 31, 0, 1);
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
setAnimeLoop( 71, 0, 1);
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  -120,  120);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

entryFade( 160, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryEffect(  160,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  160,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

spep_2 = 170;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);
setDisp( 170, 0, 0);
setMoveKey(   spep_2-1,   0,    0, -54,   0);
setMoveKey(   spep_2,   0,    40, 0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_1=spep_2+85+5; --211 260

--[[

------------------------------------------------------
-- ピッチャー振りかぶって…
------------------------------------------------------
--setDisp( 0, 0, 0);
setMoveKey(   spep_1,   0,    0, 0,   0);

sen2 = entryEffectLife( spep_1, 921, 81, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1, sen2, 150);
setEffScaleKey( spep_1, sen2, 1.6, 1.6);

playSe( spep_1+10, 1018);

--kame_hand = entryEffect( spep_1, SP_02, 0x40+0x100, 0,  300,  0,  0);
kame_hand = entryEffect( spep_1, SP_02, 0x100, -1,  0,  -500,  -400);
setEffAlphaKey(spep_1, kame_hand, 255);
setEffScaleKey( spep_1, kame_hand, 0.8, 0.8);
--setEffScaleKey( spep_1+80, kame_hand, 0.5, 0.5);

--setShakeChara( spep_1, 0, 70, 15);
setShake( spep_1, 60, 10);
setEffShake( spep_1, kame_hand, 70, 15);

entryFadeBg( spep_1, 0, 82, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setMoveKey(   spep_1+80,   0,    0, 0,   0);

--entryFade( spep_1+60, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

]]--

--spep_3=spep_1+80+2; --211 260

------------------------------------------------------
-- 投げた！
------------------------------------------------------
setDisp( spep_1, 0, 1);

changeAnime(spep_1, 0, 31);                                    -- かめはめ発射ポーズ
setAnimeLoop( spep_1+1, 0, 1);
setScaleKey(  spep_1,  0,  1.0, 1.0);

setMoveKey(  spep_1-1,    0,   1000,  150,  160);

sen2 = entryEffectLife( spep_1-1, 921, 61, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1-1, sen2, 30);
setEffScaleKey( spep_1-1, sen2, 1.6, 1.6);
setEffAlphaKey(spep_1-1, sen2, 0);
setEffAlphaKey(spep_1, sen2, 255);

setShakeChara( spep_1, 0, 34, 30);
setShake( spep_1, 60, 15);

kamehame_beam_st = entryEffectLife( spep_1, SP_03, 61, 0x40+0x80,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( spep_1, SE_07);

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_1+30,    0,   -700,  150,   -120); --600
setMoveKey(  spep_1+50,    0,   -900,  250,   -150); --1000
setMoveKey(  spep_1+64,    0,   -600,  150,   -150); --1000
setDisp( spep_1+30, 0, 0);


-- 相手が画面に現れる

setDisp( spep_1+40, 1, 0);
changeAnime( spep_1+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_1+60,   1,   1.6,  1.6);
setMoveKey(  spep_1+40,    1,  500,  0,   0);
setMoveKey(  spep_1+60,    1,  170,  -100,   -20);

--entryFade( spep_3+45, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_1, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

shuchusen = entryEffectLife( spep_1-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_1-1, shuchusen, 145);
setEffScaleKey( spep_1-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_1+8, ct, 32, 5);
setEffAlphaKey(spep_1+8, ct, 255);
setEffAlphaKey(spep_1+30, ct, 255);
setEffAlphaKey(spep_1+40, ct, 0);
setEffScaleKey(spep_1+8, ct, 0.0, 0.0);
setEffScaleKey(spep_1+12, ct, 1.3, 1.3);
setEffScaleKey(spep_1+32, ct, 1.3, 1.3);
setEffScaleKey(spep_1+40, ct, 6.0, 6.0);
playSe( spep_1+40, SE_07);

entryFade( spep_1+55, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_1+65; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ
setAnimeLoop( spep_4, 1, 1);

setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);

setScaleKey(  spep_4-1,   1,   1.6,  1.6);

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen, 190);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0, 10, 10, 10, 155);          -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 333; --エンドフェイズのフレーム数を置き換える

setMoveKey(  SP_dodge,    0,   -1000,  150,   -150); --1000

setMoveKey(  SP_dodge,    1,   325,  -364,   0);
setScaleKey(  SP_dodge,   1,   1.6,  1.6);
setScaleKey(  SP_dodge+9,   1,   1.6,  1.6);

setEffRotateKey(SP_dodge+9, ct, 70);
setEffAlphaKey(SP_dodge+9, ct, 255);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
--回避されなかった場合
------------------------------------------------------
setMoveKey(  spep_4+30,    1,   120,  -270,   0);

setScaleKey(  spep_4+75,   1,   1.6,  1.6);

playSe( spep_4+20, SE_06);

entryFade( spep_4+31, 5,  9, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+41, 1, 0);

setEffScaleKey(spep_4+80, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+77, 1, 0);  -- ダメージ振動等

playSe( spep_4+60, SE_09);

setEffAlphaKey(spep_4+30, ct, 255);
setEffAlphaKey(spep_4+35, ct, 0);

kamehame_beam = entryEffect( spep_4+40, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+55, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+55, ct, 99, 20);
setEffScaleKey( spep_4+55, ct, 0.1, 0.1);
setEffScaleKey( spep_4+60, ct, 2.4, 2.4);
setEffScaleKey( spep_4+85, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+55, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+85, ct, 0);

entryFade( spep_4+77, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+83, 1, 0);

removeAllEffect(spep_4+85);

spep_5=spep_4+77+10; --410 469

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_5, 1551, 0,  -1,  0,  0,  0);  

setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_10);

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--setVisibleUI(0, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
--kame_flag = 0x00;
--if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
setAnimeLoop( 31, 0, 1);
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
setAnimeLoop( 71, 0, 1);
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  -90,  110);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

--entryEffect(  160,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  160,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

entryFade( 160, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = 170;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);
setDisp( 170, 0, 0);
setMoveKey(   spep_2-1,   0,    0, -54,   0);
setMoveKey(   spep_2,   0,    40, 0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_1=spep_2+85+5; --211 260

--[[

------------------------------------------------------
-- ピッチャー振りかぶって…
------------------------------------------------------
--setDisp( 0, 0, 0);
setMoveKey(   spep_1,   0,    0, 0,   0);

sen2 = entryEffectLife( spep_1, 921, 81, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1, sen2, 150);
setEffScaleKey( spep_1, sen2, 1.6, 1.6);

playSe( spep_1+10, 1018);

--kame_hand = entryEffect( spep_1, SP_02, 0x40+0x100, 0,  300,  0,  0);
kame_hand = entryEffect( spep_1, SP_02, 0x100, -1,  0,  -500,  -400);
setEffAlphaKey(spep_1, kame_hand, 255);
setEffScaleKey( spep_1, kame_hand, 0.8, 0.8);
--setEffScaleKey( spep_1+80, kame_hand, 0.5, 0.5);

--setShakeChara( spep_1, 0, 70, 15);
setShake( spep_1, 60, 10);
setEffShake( spep_1, kame_hand, 70, 15);

entryFadeBg( spep_1, 0, 82, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setMoveKey(   spep_1+80,   0,    0, 0,   0);

--entryFade( spep_1+60, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

]]--

--spep_3=spep_1+80+2; --211 260

------------------------------------------------------
-- 投げた！
------------------------------------------------------
setDisp( spep_1, 0, 1);

changeAnime(spep_1, 0, 31);                                    -- かめはめ発射ポーズ
setAnimeLoop( spep_1+1, 0, 1);
setScaleKey(  spep_1,  0,  1.0, 1.0);

setMoveKey(  spep_1-1,    0,   1000,  150,  160);

sen2 = entryEffectLife( spep_1-1, 921, 61, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1-1, sen2, 30);
setEffScaleKey( spep_1-1, sen2, 1.6, 1.6);
setEffAlphaKey(spep_1-1, sen2, 0);
setEffAlphaKey(spep_1, sen2, 255);

setShakeChara( spep_1, 0, 34, 30);
setShake( spep_1, 60, 15);

kamehame_beam_st = entryEffectLife( spep_1, SP_03, 61, 0x40+0x80,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( spep_1, SE_07);

-- 途中からカメハメハが伸びる 
setMoveKey(  spep_1+30,    0,   -700,  150,   -120); --600
setMoveKey(  spep_1+50,    0,   -900,  250,   -150); --1000
setMoveKey(  spep_1+64,    0,   -600,  150,   -150); --1000
setDisp( spep_1+30, 0, 0);
-- 相手が画面に現れる

setDisp( spep_1+40, 1, 0);
changeAnime( spep_1+40, 1, 100);                        -- 敵　気ダメ後ろ
setScaleKey(  spep_1+60,   1,   1.6,  1.6);
setMoveKey(  spep_1+40,    1,  500,  0,   0);
setMoveKey(  spep_1+60,    1,  170,  -100,   -20);

--entryFade( spep_3+45, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_1, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

shuchusen = entryEffectLife( spep_1-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_1-1, shuchusen, 145);
setEffScaleKey( spep_1-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_1+8, ct, 32, 5);
setEffAlphaKey(spep_1+8, ct, 255);
setEffAlphaKey(spep_1+30, ct, 255);
setEffAlphaKey(spep_1+40, ct, 0);
setEffScaleKey(spep_1+8, ct, 0.0, 0.0);
setEffScaleKey(spep_1+12, ct, 1.3, 1.3);
setEffScaleKey(spep_1+32, ct, 1.3, 1.3);
setEffScaleKey(spep_1+40, ct, 6.0, 6.0);
playSe( spep_1+40, SE_07);

entryFade( spep_1+55, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_1+65; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ
setAnimeLoop( spep_4, 1, 1);

setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);


setScaleKey(  spep_4-1,   1,   1.6,  1.6);

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen, 190);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0, 10, 10, 10, 155);          -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 333; --エンドフェイズのフレーム数を置き換える

setMoveKey(  SP_dodge, 0,   -1000,  150, -150); --1000
setMoveKey(  SP_dodge,    1,   325,  -364,   0);

setScaleKey(  SP_dodge,   1,   1.6,  1.6);
setScaleKey(  SP_dodge+9,   1,   1.6,  1.6);

setEffRotateKey(SP_dodge+9, ct, -70);
setEffAlphaKey(SP_dodge+9, ct, 255);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
--回避されなかった場合
-------------------------------------------------------
setMoveKey(  spep_4+30,    1,   120,  -270,   0);
setScaleKey(  spep_4+75,   1,   1.6,  1.6);

playSe( spep_4+20, SE_06);

entryFade( spep_4+31, 5,  9, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+41, 1, 0);

setEffScaleKey(spep_4+80, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+77, 1, 0);  -- ダメージ振動等

playSe( spep_4+60, SE_09);

setEffAlphaKey(spep_4+30, ct, 255);
setEffAlphaKey(spep_4+35, ct, 0);

kamehame_beam = entryEffect( spep_4+40, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+55, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+55, ct, 99, 20);
setEffScaleKey( spep_4+55, ct, 0.1, 0.1);
setEffScaleKey( spep_4+60, ct, 2.4, 2.4);
setEffScaleKey( spep_4+85, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+55, ct, 255);
setEffAlphaKey(spep_4+70, ct, 255);
setEffAlphaKey(spep_4+85, ct, 0);

entryFade( spep_4+77, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+83, 1, 0);

removeAllEffect(spep_4+85);

spep_5=spep_4+77+10; --410 469

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_5, 1551, 0,  -1,  0,  0,  0);  

setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_10);

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+120);

end

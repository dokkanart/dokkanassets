--SP0537 五星龍（巨大化版）
--sp0249の大きくなるシーンを削除 

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1043; --発射
SE_07 = 1056; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SP_01 = 103080
SP_02 = 103081
SP_03 = 103082

multi_frm = 2;
setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 100);                       -- 立ち
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   4,   0,    0, -54,   0);
setMoveKey(   5,   0,    0, -54,   0);
setMoveKey(   6,   0,    0, -54,   0);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- 気溜め(70F)
------------------------------------------------------
spep_1 = 0;

--気を貯める
setMoveKey( spep_1,  0,   0, -54,   0);
setMoveKey( spep_1+28,  0,   0, -54,   0);
setScaleKey(  spep_1,  0,  1.5,  1.5);
setScaleKey(  spep_1+28,  0,  1.5,  1.5);

changeAnime(  spep_1+30, 0, 17);                       -- 溜め!
setShakeChara( spep_1+30, 0, 19, 5);

entryEffect(  spep_1+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep_1+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1+30,   311, 39, 0x40,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( spep_1+30, aura, 2.2, 2.2);

-- **書き文字エントリ** ー
ct_zuzu = entryEffectLife( spep_1+30, 10013, 39, 0, -1, 0, 0, 400); -- ズズンッ
setEffShake(spep_1+30, ct_zuzu, 40, 7);
setEffAlphaKey(spep_1+30, ct_zuzu, 255);
setEffAlphaKey(spep_1+50, ct_zuzu, 255);
setEffAlphaKey(spep_1+69, ct_zuzu, 0);
setEffScaleKey( spep_1+30, ct_zuzu, 0.1, 0.1);
setEffScaleKey( spep_1+40, ct_zuzu, 2.0, 2.0);
setEffScaleKey( spep_1+69, ct_zuzu, 2.0, 2.0);

entryFadeBg( spep_1, 0, 240, 0, 10, 10, 10, 180);       -- ベース暗め　背景

playSe( spep_1+30, SE_01);
playSe( spep_1+40, SE_02);

entryFade( spep_1+62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--[[
------------------------------------------------------
-- 巨大化するところはカット
------------------------------------------------------

changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

--***カードカットイン ***
speff = entryEffect(  spep_1+30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct_gogo = entryEffectLife( spep_1+42, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake(spep_1+42, ct_gogo, 70, 8);
setEffScaleKey(spep_1+42, ct_gogo, 0.7, 0.7);
setEffAlphaKey(spep_1+42, ct_gogo, 0);
setEffAlphaKey(spep_1+43, ct_gogo, 255);

playSe( 80, SE_04);

playSe( 90, SE_03);
playSe( 110, SE_03);
playSe( 130, SE_03);
playSe( 150, SE_03);
playSe( 170, SE_03);
playSe( 190, SE_03);
playSe( 210, SE_03);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  -50);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 1.0, 1.0);

entryFade( 165, 3, 2, 4, 225, 50, 50, 255);     -- white fade
setMoveKey(   170,   0,    0, -54,   0);
setMoveKey(   171,   0,    50, -54,   0);

entryFade( 165+70, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

-- ** エフェクト等 ** --

shuchusen = entryEffectLife( 70, 906, 170, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 70, shuchusen, 1.0, 1.0);

setShakeChara( 70, 0, 170, 5);

setMoveKey(   SP_start2+ 169,   0,    50, -54,   0);
]]
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = spep_1 + 70;

setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);

playSe( spep_2, SE_05);
speff = entryEffect( spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+84, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, 1021);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_3 = spep_2+90;  --260

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( spep_3-1,     0,      0,  0,   0);
setMoveKey( spep_3,       0,   -700,  0,   0);
setMoveKey( spep_3+1,     0,   -700,  0,   0);
setMoveKey( spep_3+10,    0,   -100,  0,   0);
setMoveKey( spep_3+39,    0,   -100,  0,   0);
setMoveKey( spep_3+40,    0,   -100,  0,   0);
setMoveKey( spep_3+48,    0,   -900, 0,   0);

setScaleKey(  spep_3,  0,  0.8,  0.8);
setScaleKey(  spep_3+48,  0,  0.8,  0.8);

setShakeChara( spep_3+45, 0, 54, 50);


kamehame_beam = entryEffectLife( spep_3, SP_02, 109, 0x40,  0,  -1,  320,  170);   -- 伸びるかめはめ波


--[[
spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
]]

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_3, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線


shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct_zuo = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ

setEffShake( spep_3+8, ct_zuo, 32, 5);
setEffAlphaKey( spep_3+8, ct_zuo, 255);
setEffAlphaKey( spep_3+30, ct_zuo, 255);
setEffAlphaKey( spep_3+40, ct_zuo, 0);
setEffScaleKey( spep_3+8, ct_zuo, 0.1, 0.1);
setEffScaleKey( spep_3+12, ct_zuo, 1.3, 1.3);
setEffScaleKey( spep_3+32, ct_zuo, 1.3, 1.3);
setEffScaleKey( spep_3+40, ct_zuo, 6.0, 6.0);

--*** SE
playSe( spep_3, SE_07);
playSe( spep_3+20, SE_07);
playSe( spep_3+40, SE_07);
playSe( spep_3+60, SE_07);
playSe( spep_3+80, SE_07);
playSe( spep_3+100, SE_07);

entryFade( spep_3+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_4 = spep_3+110;  --370

SP_start2 = 70

setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
setDisp( spep_4+84, 1, 0);  --消す
changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 + 60, 1, 108 );

setMoveKey( spep_4 + 0, 1, 237.9, -38.1 , 0 );
setMoveKey( spep_4 + 2, 1, 246.9, -28.7 , 0 );
setMoveKey( spep_4 + 4, 1, 238, -35.4 , 0 );
setMoveKey( spep_4 + 6, 1, 245, -30.1 , 0 );
setMoveKey( spep_4 + 8, 1, 235.9, -36.8 , 0 );
setMoveKey( spep_4 + 10, 1, 242.7, -31.6 , 0 );
setMoveKey( spep_4 + 12, 1, 233.5, -38.5 , 0 );
setMoveKey( spep_4 + 14, 1, 240.2, -33.4 , 0 );
setMoveKey( spep_4 + 16, 1, 230.9, -40.3 , 0 );
setMoveKey( spep_4 + 18, 1, 237.5, -35.3 , 0 );
setMoveKey( spep_4 + 20, 1, 228.1, -42.3 , 0 );
setMoveKey( spep_4 + 22, 1, 234.6, -37.3 , 0 );
setMoveKey( spep_4 + 24, 1, 225, -44.4 , 0 );
setMoveKey( spep_4 + 26, 1, 231.4, -39.6 , 0 );
setMoveKey( spep_4 + 28, 1, 221.7, -46.8 , 0 );
setMoveKey( spep_4 + 30, 1, 227.9, -42 , 0 );
setMoveKey( spep_4 + 32, 1, 218.1, -49.3 , 0 );
setMoveKey( spep_4 + 34, 1, 224.3, -44.6 , 0 );
setMoveKey( spep_4 + 36, 1, 214.3, -51.9 , 0 );
setMoveKey( spep_4 + 38, 1, 220.3, -47.3 , 0 );
setMoveKey( spep_4 + 40, 1, 210.3, -54.8 , 0 );
setMoveKey( spep_4 + 42, 1, 216.2, -50.2 , 0 );
setMoveKey( spep_4 + 44, 1, 206, -57.8 , 0 );
setMoveKey( spep_4 + 46, 1, 211.8, -53.3 , 0 );
setMoveKey( spep_4 + 48, 1, 201.5, -60.9 , 0 );
setMoveKey( spep_4 + 50, 1, 207.1, -56.6 , 0 );
setMoveKey( spep_4 + 52, 1, 196.7, -64.3 , 0 );
setMoveKey( spep_4 + 54, 1, 202.2, -60 , 0 );
setMoveKey( spep_4 + 56, 1, 191.7, -67.8 , 0 );
setMoveKey( spep_4 + 59, 1, 197.1, -63.6 , 0 );
setMoveKey( spep_4 + 60, 1, 197.1, -22.5 , 0 );
setMoveKey( spep_4 + 62, 1, 205.1, -55.4 , 0 );
setMoveKey( spep_4 + 64, 1, 205.1, -62.5 , 0 );
setMoveKey( spep_4 + 66, 1, 210.1, -56.1 , 0 );
setMoveKey( spep_4 + 68, 1, 220.1, -60.8 , 0 );
setMoveKey( spep_4 + 70, 1, 225.1, -52.6 , 0 );
setMoveKey( spep_4 + 72, 1, 230.1, -55.5 , 0 );
setMoveKey( spep_4 + 74, 1, 235.1, -45.6 , 0 );
setMoveKey( spep_4 + 76, 1, 240.1, -46.8 , 0 );
setMoveKey( spep_4 + 78, 1, 252.1, -35.1 , 0 );
setMoveKey( spep_4 + 80, 1, 293, -34.5 , 0 );
setMoveKey( spep_4 + 82, 1, 356.4, -21.1 , 0 );
setMoveKey( spep_4 + 84, 1, 410.3, -18.7 , 0 );

setScaleKey( spep_4 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 2, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 4, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 6, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 8, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 10, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 12, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 14, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 16, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 18, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 20, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 22, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 24, 1, 1.55, 1.55 );
setScaleKey( spep_4 + 26, 1, 1.56, 1.56 );
setScaleKey( spep_4 + 28, 1, 1.58, 1.58 );
setScaleKey( spep_4 + 30, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 32, 1, 1.62, 1.62 );
setScaleKey( spep_4 + 34, 1, 1.64, 1.64 );
setScaleKey( spep_4 + 36, 1, 1.66, 1.66 );
setScaleKey( spep_4 + 38, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 40, 1, 1.7, 1.7 );
setScaleKey( spep_4 + 42, 1, 1.72, 1.72 );
setScaleKey( spep_4 + 44, 1, 1.74, 1.74 );
setScaleKey( spep_4 + 46, 1, 1.76, 1.76 );
setScaleKey( spep_4 + 48, 1, 1.78, 1.78 );
setScaleKey( spep_4 + 50, 1, 1.81, 1.81 );
setScaleKey( spep_4 + 52, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 54, 1, 1.86, 1.86 );
setScaleKey( spep_4 + 56, 1, 1.88, 1.88 );
setScaleKey( spep_4 + 59, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 60, 1, 1.79, 1.79 );
setScaleKey( spep_4 + 66, 1, 1.79, 1.79 );
setScaleKey( spep_4 + 68, 1, 1.77, 1.77 );
setScaleKey( spep_4 + 70, 1, 1.74, 1.74 );
setScaleKey( spep_4 + 72, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 74, 1, 1.64, 1.64 );
setScaleKey( spep_4 + 76, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 78, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 80, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 82, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 84, 1, 1.17, 1.17 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 59, 1, 0 );
setRotateKey( spep_4 + 60, 1, 23.7 );
setRotateKey( spep_4 + 62, 1, -16 );
setRotateKey( spep_4 + 64, 1, 0 );
setRotateKey( spep_4 + 84, 1, 0 );

playSe( spep_4, SE_06);
playSe( spep_4+20, SE_07);
playSe( spep_4+40, SE_07);
--playSe( SP_start2+ 430, SE_07);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_4, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+88, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+90, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_4+117, 1, 0);  -- ダメージ振動等

playSe( SP_start2+ 455-35, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 74, 20);

entryFadeBg( spep_4, 0, 100, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_4, 921, 98, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct_zudodo = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( spep_4, ct_zudodo, 99, 20);
setEffScaleKey( spep_4, ct_zudodo, 2.4, 2.4);
setEffRotateKey( spep_4, ct_zudodo, 70);
setEffAlphaKey( spep_4, ct_zudodo, 255);
setEffAlphaKey( spep_4+99, ct_zudodo, 255);

SP_start = -35+SP_start2

entryFade( spep_4+90, 6,  12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--removeAllEffect( spep_4+135 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_4+50; --エンドフェイズのフレーム数を置き換える

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
-- ガ
------------------------------------------------------
spep_5 =spep_4+100;

--敵の動き--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );

--爆発エフェクト
bakuhatsu = entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey(  spep_5+8,  bakuhatsu,  0,  0,  0);
setEffMoveKey(  spep_5+110,  bakuhatsu,  0,  0,  0);

playSe( spep_5+8, SE_10);

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 30, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_5+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+110);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め(70F)
------------------------------------------------------
spep_1 = 0;

--気を貯める
setMoveKey( spep_1,  0,   0, -54,   0);
setMoveKey( spep_1+28,  0,   0, -54,   0);
setScaleKey(  spep_1,  0,  1.5,  1.5);
setScaleKey(  spep_1+28,  0,  1.5,  1.5);

changeAnime(  spep_1+30, 0, 17);                       -- 溜め!
setShakeChara( spep_1+30, 0, 19, 5);

entryEffect(  spep_1+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep_1+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1+30,   311, 39, 0x40,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( spep_1+30, aura, 2.2, 2.2);

-- **書き文字エントリ** ー
ct_zuzu = entryEffectLife( spep_1+30, 10013, 39, 0, -1, 0, 0, 400); -- ズズンッ
setEffShake(spep_1+30, ct_zuzu, 40, 7);
setEffAlphaKey(spep_1+30, ct_zuzu, 255);
setEffAlphaKey(spep_1+50, ct_zuzu, 255);
setEffAlphaKey(spep_1+69, ct_zuzu, 0);
setEffScaleKey( spep_1+30, ct_zuzu, 0.1, 0.1);
setEffScaleKey( spep_1+40, ct_zuzu, 2.0, 2.0);
setEffScaleKey( spep_1+69, ct_zuzu, 2.0, 2.0);

entryFadeBg( spep_1, 0, 240, 0, 10, 10, 10, 180);       -- ベース暗め　背景

playSe( spep_1+30, SE_01);
playSe( spep_1+40, SE_02);

entryFade( spep_1+62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--[[
------------------------------------------------------
-- 巨大化するところはカット
------------------------------------------------------

changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

--***カードカットイン ***
speff = entryEffect(  spep_1+30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct_gogo = entryEffectLife( spep_1+42, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake(spep_1+42, ct_gogo, 70, 8);
setEffScaleKey(spep_1+42, ct_gogo, 0.7, 0.7);
setEffAlphaKey(spep_1+42, ct_gogo, 0);
setEffAlphaKey(spep_1+43, ct_gogo, 255);

playSe( 80, SE_04);

playSe( 90, SE_03);
playSe( 110, SE_03);
playSe( 130, SE_03);
playSe( 150, SE_03);
playSe( 170, SE_03);
playSe( 190, SE_03);
playSe( 210, SE_03);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  -50);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 1.0, 1.0);

entryFade( 165, 3, 2, 4, 225, 50, 50, 255);     -- white fade
setMoveKey(   170,   0,    0, -54,   0);
setMoveKey(   171,   0,    50, -54,   0);

entryFade( 165+70, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

-- ** エフェクト等 ** --

shuchusen = entryEffectLife( 70, 906, 170, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 70, shuchusen, 1.0, 1.0);

setShakeChara( 70, 0, 170, 5);

setMoveKey(   SP_start2+ 169,   0,    50, -54,   0);
]]
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = spep_1 + 70;

setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);

playSe( spep_2, SE_05);
speff = entryEffect( spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+84, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, 1021);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_3 = spep_2+90;  --260

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( spep_3-1,     0,      0,  0,   0);
setMoveKey( spep_3,       0,   -700,  0,   0);
setMoveKey( spep_3+1,     0,   -700,  0,   0);
setMoveKey( spep_3+10,    0,   -100,  0,   0);
setMoveKey( spep_3+39,    0,   -100,  0,   0);
setMoveKey( spep_3+40,    0,   -100,  0,   0);
setMoveKey( spep_3+48,    0,   -900, 0,   0);

setScaleKey(  spep_3,  0,  0.8,  0.8);
setScaleKey(  spep_3+48,  0,  0.8,  0.8);

setShakeChara( spep_3+45, 0, 54, 50);


kamehame_beam = entryEffectLife( spep_3, SP_02, 109, 0x40,  0,  -1,  320,  170);   -- 伸びるかめはめ波


--[[
spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
]]

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_3, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線


shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct_zuo = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ

setEffShake( spep_3+8, ct_zuo, 32, 5);
setEffAlphaKey( spep_3+8, ct_zuo, 255);
setEffAlphaKey( spep_3+30, ct_zuo, 255);
setEffAlphaKey( spep_3+40, ct_zuo, 0);
setEffScaleKey( spep_3+8, ct_zuo, 0.1, 0.1);
setEffScaleKey( spep_3+12, ct_zuo, 1.3, 1.3);
setEffScaleKey( spep_3+32, ct_zuo, 1.3, 1.3);
setEffScaleKey( spep_3+40, ct_zuo, 6.0, 6.0);

--*** SE
playSe( spep_3, SE_07);
playSe( spep_3+20, SE_07);
playSe( spep_3+40, SE_07);
playSe( spep_3+60, SE_07);
playSe( spep_3+80, SE_07);
playSe( spep_3+100, SE_07);

entryFade( spep_3+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_4 = spep_3+110;  --370

SP_start2 = 70

setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
setDisp( spep_4+84, 1, 0);  --消す
changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 + 60, 1, 108 );

setMoveKey( spep_4 + 0, 1, 237.9, -38.1 , 0 );
setMoveKey( spep_4 + 2, 1, 246.9, -28.7 , 0 );
setMoveKey( spep_4 + 4, 1, 238, -35.4 , 0 );
setMoveKey( spep_4 + 6, 1, 245, -30.1 , 0 );
setMoveKey( spep_4 + 8, 1, 235.9, -36.8 , 0 );
setMoveKey( spep_4 + 10, 1, 242.7, -31.6 , 0 );
setMoveKey( spep_4 + 12, 1, 233.5, -38.5 , 0 );
setMoveKey( spep_4 + 14, 1, 240.2, -33.4 , 0 );
setMoveKey( spep_4 + 16, 1, 230.9, -40.3 , 0 );
setMoveKey( spep_4 + 18, 1, 237.5, -35.3 , 0 );
setMoveKey( spep_4 + 20, 1, 228.1, -42.3 , 0 );
setMoveKey( spep_4 + 22, 1, 234.6, -37.3 , 0 );
setMoveKey( spep_4 + 24, 1, 225, -44.4 , 0 );
setMoveKey( spep_4 + 26, 1, 231.4, -39.6 , 0 );
setMoveKey( spep_4 + 28, 1, 221.7, -46.8 , 0 );
setMoveKey( spep_4 + 30, 1, 227.9, -42 , 0 );
setMoveKey( spep_4 + 32, 1, 218.1, -49.3 , 0 );
setMoveKey( spep_4 + 34, 1, 224.3, -44.6 , 0 );
setMoveKey( spep_4 + 36, 1, 214.3, -51.9 , 0 );
setMoveKey( spep_4 + 38, 1, 220.3, -47.3 , 0 );
setMoveKey( spep_4 + 40, 1, 210.3, -54.8 , 0 );
setMoveKey( spep_4 + 42, 1, 216.2, -50.2 , 0 );
setMoveKey( spep_4 + 44, 1, 206, -57.8 , 0 );
setMoveKey( spep_4 + 46, 1, 211.8, -53.3 , 0 );
setMoveKey( spep_4 + 48, 1, 201.5, -60.9 , 0 );
setMoveKey( spep_4 + 50, 1, 207.1, -56.6 , 0 );
setMoveKey( spep_4 + 52, 1, 196.7, -64.3 , 0 );
setMoveKey( spep_4 + 54, 1, 202.2, -60 , 0 );
setMoveKey( spep_4 + 56, 1, 191.7, -67.8 , 0 );
setMoveKey( spep_4 + 59, 1, 197.1, -63.6 , 0 );
setMoveKey( spep_4 + 60, 1, 197.1, -22.5 , 0 );
setMoveKey( spep_4 + 62, 1, 205.1, -55.4 , 0 );
setMoveKey( spep_4 + 64, 1, 205.1, -62.5 , 0 );
setMoveKey( spep_4 + 66, 1, 210.1, -56.1 , 0 );
setMoveKey( spep_4 + 68, 1, 220.1, -60.8 , 0 );
setMoveKey( spep_4 + 70, 1, 225.1, -52.6 , 0 );
setMoveKey( spep_4 + 72, 1, 230.1, -55.5 , 0 );
setMoveKey( spep_4 + 74, 1, 235.1, -45.6 , 0 );
setMoveKey( spep_4 + 76, 1, 240.1, -46.8 , 0 );
setMoveKey( spep_4 + 78, 1, 252.1, -35.1 , 0 );
setMoveKey( spep_4 + 80, 1, 293, -34.5 , 0 );
setMoveKey( spep_4 + 82, 1, 356.4, -21.1 , 0 );
setMoveKey( spep_4 + 84, 1, 410.3, -18.7 , 0 );

setScaleKey( spep_4 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 2, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 4, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 6, 1, 1.43, 1.43 );
setScaleKey( spep_4 + 8, 1, 1.44, 1.44 );
setScaleKey( spep_4 + 10, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 12, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 14, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 16, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 18, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 20, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 22, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 24, 1, 1.55, 1.55 );
setScaleKey( spep_4 + 26, 1, 1.56, 1.56 );
setScaleKey( spep_4 + 28, 1, 1.58, 1.58 );
setScaleKey( spep_4 + 30, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 32, 1, 1.62, 1.62 );
setScaleKey( spep_4 + 34, 1, 1.64, 1.64 );
setScaleKey( spep_4 + 36, 1, 1.66, 1.66 );
setScaleKey( spep_4 + 38, 1, 1.68, 1.68 );
setScaleKey( spep_4 + 40, 1, 1.7, 1.7 );
setScaleKey( spep_4 + 42, 1, 1.72, 1.72 );
setScaleKey( spep_4 + 44, 1, 1.74, 1.74 );
setScaleKey( spep_4 + 46, 1, 1.76, 1.76 );
setScaleKey( spep_4 + 48, 1, 1.78, 1.78 );
setScaleKey( spep_4 + 50, 1, 1.81, 1.81 );
setScaleKey( spep_4 + 52, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 54, 1, 1.86, 1.86 );
setScaleKey( spep_4 + 56, 1, 1.88, 1.88 );
setScaleKey( spep_4 + 59, 1, 1.91, 1.91 );
setScaleKey( spep_4 + 60, 1, 1.79, 1.79 );
setScaleKey( spep_4 + 66, 1, 1.79, 1.79 );
setScaleKey( spep_4 + 68, 1, 1.77, 1.77 );
setScaleKey( spep_4 + 70, 1, 1.74, 1.74 );
setScaleKey( spep_4 + 72, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 74, 1, 1.64, 1.64 );
setScaleKey( spep_4 + 76, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 78, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 80, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 82, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 84, 1, 1.17, 1.17 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 59, 1, 0 );
setRotateKey( spep_4 + 60, 1, 23.7 );
setRotateKey( spep_4 + 62, 1, -16 );
setRotateKey( spep_4 + 64, 1, 0 );
setRotateKey( spep_4 + 84, 1, 0 );

playSe( spep_4, SE_06);
playSe( spep_4+20, SE_07);
playSe( spep_4+40, SE_07);
--playSe( SP_start2+ 430, SE_07);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_4, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+88, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+90, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_4+117, 1, 0);  -- ダメージ振動等

playSe( SP_start2+ 455-35, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 74, 20);

entryFadeBg( spep_4, 0, 100, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_4, 921, 98, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct_zudodo = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( spep_4, ct_zudodo, 99, 20);
setEffScaleKey( spep_4, ct_zudodo, 2.4, 2.4);
setEffRotateKey( spep_4, ct_zudodo, 0);
setEffAlphaKey( spep_4, ct_zudodo, 255);
setEffAlphaKey( spep_4+99, ct_zudodo, 255);

SP_start = -35+SP_start2

entryFade( spep_4+90, 6,  12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--removeAllEffect( spep_4+135 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_4+50; --エンドフェイズのフレーム数を置き換える

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
-- ガ
------------------------------------------------------
spep_5 =spep_4+100;

--敵の動き--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );

--爆発エフェクト
bakuhatsu = entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey(  spep_5+8,  bakuhatsu,  0,  0,  0);
setEffMoveKey(  spep_5+110,  bakuhatsu,  0,  0,  0);

playSe( spep_5+8, SE_10);

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 30, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_5+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+110);
end

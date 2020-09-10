print ("[lua]sp0022");
--sp0479.lua

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 100063;--変える
SP_02 = 100064;
SP_03 = 100065;

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

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

setVisibleUI(0, 0);
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_1=0;
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep_1+30, 0, 17);                       -- 溜め!
entryEffect(  spep_1+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep_1+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( spep_1+30, SE_01);

entryFade( spep_1+62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1+30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( spep_1+30, aura, 1.5, 1.5);
setShakeChara( spep_1+30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake( spep_1+30, ct, 40, 7);
setEffAlphaKey( spep_1+30, ct, 255);
setEffAlphaKey( spep_1+50, ct, 255);
setEffAlphaKey( spep_1+70, ct, 0);
setEffScaleKey( spep_1+30, ct, 0.1, 0.1);
setEffScaleKey( spep_1+40, ct, 2.0, 2.0);
playSe( spep_1+30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
spep_2=spep_1+70; --70

changeAnime( spep_2, 0, 30);                       -- 溜め!
playSe( spep_2+3, SE_03);

entryEffect(  spep_2,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_2,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_2+10, SE_04);

kame_hand = entryEffect( spep_2, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_2, kame_hand, 0.5, 0.5);

entryFade( spep_2+95, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_2,   311, 99, 0x40+0x80,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( spep_1+30, aura, 1.5, 1.5);
setShakeChara( spep_2, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_2+20, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_2+20, ct, 40, 8);
setEffScaleKey(spep_2+20, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+100; --170

setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3,   0, 1.0, 1.0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_3+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_3+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_4=spep_3+90; --260

changeAnime( spep_4, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  spep_4-1,    0,      0,  0,   0);
setMoveKey(  spep_4,    0,   -600,  0,   0);
setMoveKey(  spep_4+1,    0,   -600,  0,   0);
setMoveKey(  spep_4+10,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( spep_4, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( spep_4, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  spep_4+39,    0,   -100,  0,   0);
setMoveKey(  spep_4+40,    0,   -100,  0,   0);
setMoveKey(  spep_4+48,    0,   -1100,  0,   0);

entryFade( spep_4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_4, 0, 109, 0, 10, 10, 10, 200);       -- ベース暗め　背景
entryEffectLife( spep_4, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_4+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_4+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_4+8, ct, 32, 5);
setEffAlphaKey(spep_4+8, ct, 255);
setEffAlphaKey(spep_4+30, ct, 255);
setEffAlphaKey(spep_4+40, ct, 0);
setEffScaleKey(spep_4+8, ct, 0.0, 0.0);
setEffScaleKey(spep_4+12, ct, 1.3, 1.3);
setEffScaleKey(spep_4+32, ct, 1.3, 1.3);
setEffScaleKey(spep_4+40, ct, 6.0, 6.0);
playSe( spep_4+40, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_5=spep_4+110;--370

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);
entryFadeBg( spep_5, 0, 99, 0, 10, 10, 10, 200);          -- ベース暗め　背景
entryEffectLife( spep_5, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                        -- ガード
setMoveKey( spep_5, 1, 237.9, -38.1 , 0 );
setMoveKey( spep_5+2, 1, 247, -28.7 , 0 );
setMoveKey( spep_5+4, 1, 238, -35.4 , 0 );
setMoveKey( spep_5+6, 1, 245, -30.1 , 0 );
setMoveKey( spep_5+8, 1, 235.9, -36.9 , 0 );
setMoveKey( spep_5+10, 1, 242.8, -31.7 , 0 );
setMoveKey( spep_5+12, 1, 233.6, -38.5 , 0 );
setMoveKey( spep_5+14, 1, 240.3, -33.4 , 0 );
setMoveKey( spep_5+16, 1, 231, -40.3 , 0 );
setMoveKey( spep_5+18, 1, 237.6, -35.3 , 0 );
setMoveKey( spep_5+20, 1, 228.1, -42.3 , 0 );
setMoveKey( spep_5+22, 1, 234.6, -37.4 , 0 );
setMoveKey( spep_5+24, 1, 225, -44.5 , 0 );
setMoveKey( spep_5+26, 1, 231.4, -39.6 , 0 );
setMoveKey( spep_5+28, 1, 221.7, -46.8 , 0 );
setMoveKey( spep_5+30, 1, 228, -42 , 0 );
setMoveKey( spep_5+32, 1, 218.2, -49.3 , 0 );
setMoveKey( spep_5+34, 1, 224.3, -44.6 , 0 );
setMoveKey( spep_5+36, 1, 214.3, -52 , 0 );
setMoveKey( spep_5+38, 1, 220.4, -47.3 , 0 );
setMoveKey( spep_5+40, 1, 210.3, -54.8 , 0 );
setMoveKey( spep_5+42, 1, 216.2, -50.3 , 0 );
setMoveKey( spep_5+44, 1, 206, -57.8 , 0 );
setMoveKey( spep_5+46, 1, 211.8, -53.3 , 0 );
setMoveKey( spep_5+48, 1, 201.5, -60.9 , 0 );
setMoveKey( spep_5+50, 1, 207.1, -56.6 , 0 );
setMoveKey( spep_5+52, 1, 196.7, -64.3 , 0 );
setMoveKey( spep_5+54, 1, 202.2, -60 , 0 );
setMoveKey( spep_5+56, 1, 191.7, -67.8 , 0 );
setScaleKey( spep_5+0, 1, 1.0, 1.0 );
setScaleKey( spep_5+18, 1, 1.1, 1.1 );
setScaleKey( spep_5+30, 1, 1.2, 1.2 );
setScaleKey( spep_5+40, 1, 1.4, 1.4 );
setScaleKey( spep_5+56, 1, 2.2, 2.2 );
setRotateKey( spep_5+0, 1, 0 );
setRotateKey( spep_5+82, 1, 0 );

playSe( spep_5+20, SE_06);

kamehame_beam2 = entryEffect( spep_5, SP_03, 0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_5, kamehame_beam2, 1, 1);

-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10014, 99, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ct, 99, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey(spep_5, ct, 70);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5+60, ct, 255);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_5+70; --エンドフェイズのフレーム数を置き換える(spep5+42)

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

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
--------------------------------------------
--------------------------------------------
setEffScaleKey(spep_5+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_5+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_5+82, 1, 0);  -- ダメージ振動等

setEffAlphaKey(spep_5+80, ct, 0);

playSe( spep_5+83, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_5+83, 1, 108);  --くの字

setMoveKey( spep_5+73, 1, 162.4, -22.3 , 0 );
setMoveKey( spep_5+78, 1, 206.5, -2.3 , 0 );
setMoveKey( spep_5+80, 1, 176.4, -16.3 , 0 );
setMoveKey( spep_5+82, 1, 206.8, -9.1 , 0 );
setMoveKey( spep_5+84, 1, 221.2, -13.9 , 0 );
setMoveKey( spep_5+86, 1, 251.6, -6.7 , 0 );
setMoveKey( spep_5+88, 1, 266, -11.5 , 0 );
setMoveKey( spep_5+90, 1, 296.5, -4.3 , 0 );
setMoveKey( spep_5+92, 1, 310.9, -9.1 , 0 );
setMoveKey( spep_5+94, 1, 341.3, -1.9 , 0 );
setMoveKey( spep_5+96, 1, 355.7, -6.7 , 0 );
setMoveKey( spep_5+98, 1, 386.1, 0.5 , 0 );
setMoveKey( spep_5+100, 1, 2000, -2000 , 0 );

setScaleKey( spep_5+73, 1, 2.5, 2.5 );
setScaleKey( spep_5+80, 1, 2.5, 2.5 );
setScaleKey( spep_5+82, 1, 2.3, 2.3 );
setScaleKey( spep_5+84, 1, 2.11, 2.11 );
setScaleKey( spep_5+86, 1, 1.91, 1.91 );
setScaleKey( spep_5+88, 1, 1.71, 1.71 );
setScaleKey( spep_5+90, 1, 1.52, 1.52 );
setScaleKey( spep_5+92, 1, 1.32, 1.32 );
setScaleKey( spep_5+94, 1, 1.13, 1.13 );
setScaleKey( spep_5+96, 1, 0.93, 0.93 );
setScaleKey( spep_5+98, 1, 0.74, 0.74 );
setScaleKey( spep_5+100, 1, 0.54, 0.54 );

setRotateKey( spep_5+83, 1, 21.5 );
setRotateKey( spep_5+88, 1, -10.7 );
setRotateKey( spep_5+90, 1, -2.7 );
setRotateKey( spep_5+100, 1, -2.7 );

entryFade( spep_5+90, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- Finish 
------------------------------------------------------
spep_Finish=spep_5+100;

--敵の動き--
setDisp( spep_Finish + 0, 1, 1 );
changeAnime( spep_Finish + 0, 1, 107 );

setMoveKey( spep_Finish + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_Finish + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_Finish + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_Finish + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_Finish + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_Finish + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_Finish + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_Finish + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_Finish + 0, 1, 0.22, 0.22 );
setScaleKey( spep_Finish + 2, 1, 0.35, 0.35 );
setScaleKey( spep_Finish + 4, 1, 0.51, 0.51 );
setScaleKey( spep_Finish + 6, 1, 0.7, 0.7 );
setScaleKey( spep_Finish + 8, 1, 0.93, 0.93 );
setScaleKey( spep_Finish + 10, 1, 1.2, 1.2 );
setScaleKey( spep_Finish + 12, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 14, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 16, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 18, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 20, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 22, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 24, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 26, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 120, 1, 1.6, 1.6 );

setRotateKey( spep_Finish + 0, 1, 0 );
setRotateKey( spep_Finish + 2, 1, 105 );
setRotateKey( spep_Finish + 4, 1, 240 );
setRotateKey( spep_Finish + 6, 1, 405 );
setRotateKey( spep_Finish + 8, 1, 600 );
setRotateKey( spep_Finish + 10, 1, 825 );
setRotateKey( spep_Finish + 12, 1, 1080 );
setRotateKey( spep_Finish + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_Finish, 1509,  0x80,  -1,  0,  0,  0);

playSe( spep_Finish+8, SE_10);

setDamage( spep_Finish +16, 1, 0);  -- ダメージ振動等
setShake(spep_Finish+8,6,15);
setShake(spep_Finish+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_Finish + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_Finish + 14, ctGa, 30, 10);

setEffMoveKey( spep_Finish + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_Finish + 14, ctGa, 2,2);
setEffScaleKey( spep_Finish+16, ctGa, 2.0,2.0);
setEffScaleKey( spep_Finish+17, cGa, 2.6,2.6);
setEffScaleKey( spep_Finish+18, ctGa, 4.0,4.0);
setEffScaleKey( spep_Finish+19, ctGa, 2.6,2.6);
setEffScaleKey( spep_Finish+20, ctGa, 3.8,3.8);
setEffScaleKey( spep_Finish+112, ctGa, 3.8,3.8);

setEffRotateKey( spep_Finish + 14, ctGa, -40 );
setEffRotateKey( spep_Finish + 16, ctGa, -31 );
setEffRotateKey( spep_Finish + 18, ctGa, -40 );
setEffRotateKey( spep_Finish + 20, ctGa, -31 );
setEffRotateKey( spep_Finish + 22, ctGa, -40 );
setEffRotateKey( spep_Finish + 24, ctGa, -31);
setEffRotateKey( spep_Finish + 26, ctGa, -40 );
setEffRotateKey( spep_Finish + 28, ctGa, -31);
setEffRotateKey( spep_Finish + 30, ctGa, -40 );

setEffAlphaKey( spep_Finish + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_Finish+2, 906, 120, 0x00,  -1, 0,  0,  0);

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_Finish+14, 1657, 120, 0x80,  -1, 0,  0,  0);

--ひび割れ
hibi = entryEffect( spep_Finish+2, 1600,  0x00,  -1,  0,30, -130);

-- ダメージ表示
dealDamage(spep_Finish+16);
entryFade( spep_Finish+100, 9,  10, 1, 8, 8, 8, 255);-- black fade
endPhase( spep_Finish+110);
else
-----------------------------------------
--敵側の攻撃
-----------------------------------------
spep_1=0;
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  spep_1+30, 0, 17);                       -- 溜め!
entryEffect(  spep_1+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep_1+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( spep_1+30, SE_01);

entryFade( spep_1+62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1+30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( spep_1+30, aura, 1.5, 1.5);
setShakeChara( spep_1+30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake( spep_1+30, ct, 40, 7);
setEffAlphaKey( spep_1+30, ct, 255);
setEffAlphaKey( spep_1+50, ct, 255);
setEffAlphaKey( spep_1+70, ct, 0);
setEffScaleKey( spep_1+30, ct, 0.1, 0.1);
setEffScaleKey( spep_1+40, ct, 2.0, 2.0);
playSe( spep_1+30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
spep_2=spep_1+70; --70

changeAnime( spep_2, 0, 30);                       -- 溜め!
playSe( spep_2+3, SE_03);

entryEffect(  spep_2,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_2,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  spep_2+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_2+10, SE_04);

kame_hand = entryEffect( spep_2, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_2, kame_hand, 0.5, 0.5);

entryFade( spep_2+95, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_2,   311, 99, 0x40+0x80,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( spep_1+30, aura, 1.5, 1.5);
setShakeChara( spep_2, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_2+20, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_2+20, ct, 40, 8);
setEffScaleKey(spep_2+20, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+100; --170

setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3,   0, 1.0, 1.0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_3+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_3+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_4=spep_3+90; --260

changeAnime( spep_4, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  spep_4-1,    0,      0,  0,   0);
setMoveKey(  spep_4,    0,   -600,  0,   0);
setMoveKey(  spep_4+1,    0,   -600,  0,   0);
setMoveKey(  spep_4+10,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( spep_4, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( spep_4, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  spep_4+39,    0,   -100,  0,   0);
setMoveKey(  spep_4+40,    0,   -100,  0,   0);
setMoveKey(  spep_4+48,    0,   -1100,  0,   0);

entryFade( spep_4+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_4, 0, 109, 0, 10, 10, 10, 200);       -- ベース暗め　背景
entryEffectLife( spep_4, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_4+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_4+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_4+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_4+8, ct, 32, 5);
setEffAlphaKey(spep_4+8, ct, 255);
setEffAlphaKey(spep_4+30, ct, 255);
setEffAlphaKey(spep_4+40, ct, 0);
setEffScaleKey(spep_4+8, ct, 0.0, 0.0);
setEffScaleKey(spep_4+12, ct, 1.3, 1.3);
setEffScaleKey(spep_4+32, ct, 1.3, 1.3);
setEffScaleKey(spep_4+40, ct, 6.0, 6.0);
playSe( spep_4+40, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_5=spep_4+110;--370

-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);
entryFadeBg( spep_5, 0, 99, 0, 10, 10, 10, 200);          -- ベース暗め　背景
entryEffectLife( spep_5, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 104);                        -- ガード
setMoveKey( spep_5, 1, 237.9, -38.1 , 0 );
setMoveKey( spep_5+2, 1, 247, -28.7 , 0 );
setMoveKey( spep_5+4, 1, 238, -35.4 , 0 );
setMoveKey( spep_5+6, 1, 245, -30.1 , 0 );
setMoveKey( spep_5+8, 1, 235.9, -36.9 , 0 );
setMoveKey( spep_5+10, 1, 242.8, -31.7 , 0 );
setMoveKey( spep_5+12, 1, 233.6, -38.5 , 0 );
setMoveKey( spep_5+14, 1, 240.3, -33.4 , 0 );
setMoveKey( spep_5+16, 1, 231, -40.3 , 0 );
setMoveKey( spep_5+18, 1, 237.6, -35.3 , 0 );
setMoveKey( spep_5+20, 1, 228.1, -42.3 , 0 );
setMoveKey( spep_5+22, 1, 234.6, -37.4 , 0 );
setMoveKey( spep_5+24, 1, 225, -44.5 , 0 );
setMoveKey( spep_5+26, 1, 231.4, -39.6 , 0 );
setMoveKey( spep_5+28, 1, 221.7, -46.8 , 0 );
setMoveKey( spep_5+30, 1, 228, -42 , 0 );
setMoveKey( spep_5+32, 1, 218.2, -49.3 , 0 );
setMoveKey( spep_5+34, 1, 224.3, -44.6 , 0 );
setMoveKey( spep_5+36, 1, 214.3, -52 , 0 );
setMoveKey( spep_5+38, 1, 220.4, -47.3 , 0 );
setMoveKey( spep_5+40, 1, 210.3, -54.8 , 0 );
setMoveKey( spep_5+42, 1, 216.2, -50.3 , 0 );
setMoveKey( spep_5+44, 1, 206, -57.8 , 0 );
setMoveKey( spep_5+46, 1, 211.8, -53.3 , 0 );
setMoveKey( spep_5+48, 1, 201.5, -60.9 , 0 );
setMoveKey( spep_5+50, 1, 207.1, -56.6 , 0 );
setMoveKey( spep_5+52, 1, 196.7, -64.3 , 0 );
setMoveKey( spep_5+54, 1, 202.2, -60 , 0 );
setMoveKey( spep_5+56, 1, 191.7, -67.8 , 0 );
setScaleKey( spep_5+0, 1, 1.0, 1.0 );
setScaleKey( spep_5+18, 1, 1.1, 1.1 );
setScaleKey( spep_5+30, 1, 1.2, 1.2 );
setScaleKey( spep_5+40, 1, 1.4, 1.4 );
setScaleKey( spep_5+56, 1, 2.2, 2.2 );
setRotateKey( spep_5+0, 1, 0 );
setRotateKey( spep_5+82, 1, 0 );

playSe( spep_5+20, SE_06);

kamehame_beam2 = entryEffect( spep_5, SP_03, 0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_5, kamehame_beam2, 1, 1);

-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10014, 99, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ct, 99, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey(spep_5, ct, 0);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5+60, ct, 255);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_5+70; --エンドフェイズのフレーム数を置き換える(spep5+42)

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

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
--------------------------------------------
--------------------------------------------
setEffScaleKey(spep_5+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_5+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_5+82, 1, 0);  -- ダメージ振動等

setEffAlphaKey(spep_5+80, ct, 0);

playSe( spep_5+83, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_5+83, 1, 108);  --くの字

setMoveKey( spep_5+73, 1, 162.4, -22.3 , 0 );
setMoveKey( spep_5+78, 1, 206.5, -2.3 , 0 );
setMoveKey( spep_5+80, 1, 176.4, -16.3 , 0 );
setMoveKey( spep_5+82, 1, 206.8, -9.1 , 0 );
setMoveKey( spep_5+84, 1, 221.2, -13.9 , 0 );
setMoveKey( spep_5+86, 1, 251.6, -6.7 , 0 );
setMoveKey( spep_5+88, 1, 266, -11.5 , 0 );
setMoveKey( spep_5+90, 1, 296.5, -4.3 , 0 );
setMoveKey( spep_5+92, 1, 310.9, -9.1 , 0 );
setMoveKey( spep_5+94, 1, 341.3, -1.9 , 0 );
setMoveKey( spep_5+96, 1, 355.7, -6.7 , 0 );
setMoveKey( spep_5+98, 1, 386.1, 0.5 , 0 );
setMoveKey( spep_5+100, 1, 2000, -2000 , 0 );

setScaleKey( spep_5+73, 1, 2.5, 2.5 );
setScaleKey( spep_5+80, 1, 2.5, 2.5 );
setScaleKey( spep_5+82, 1, 2.3, 2.3 );
setScaleKey( spep_5+84, 1, 2.11, 2.11 );
setScaleKey( spep_5+86, 1, 1.91, 1.91 );
setScaleKey( spep_5+88, 1, 1.71, 1.71 );
setScaleKey( spep_5+90, 1, 1.52, 1.52 );
setScaleKey( spep_5+92, 1, 1.32, 1.32 );
setScaleKey( spep_5+94, 1, 1.13, 1.13 );
setScaleKey( spep_5+96, 1, 0.93, 0.93 );
setScaleKey( spep_5+98, 1, 0.74, 0.74 );
setScaleKey( spep_5+100, 1, 0.54, 0.54 );

setRotateKey( spep_5+83, 1, 21.5 );
setRotateKey( spep_5+88, 1, -10.7 );
setRotateKey( spep_5+90, 1, -2.7 );
setRotateKey( spep_5+100, 1, -2.7 );

entryFade( spep_5+90, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- Finish 
------------------------------------------------------
spep_Finish=spep_5+100;

--敵の動き--
setDisp( spep_Finish + 0, 1, 1 );
changeAnime( spep_Finish + 0, 1, 107 );

setMoveKey( spep_Finish + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_Finish + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_Finish + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_Finish + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_Finish + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_Finish + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_Finish + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_Finish + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_Finish + 0, 1, 0.22, 0.22 );
setScaleKey( spep_Finish + 2, 1, 0.35, 0.35 );
setScaleKey( spep_Finish + 4, 1, 0.51, 0.51 );
setScaleKey( spep_Finish + 6, 1, 0.7, 0.7 );
setScaleKey( spep_Finish + 8, 1, 0.93, 0.93 );
setScaleKey( spep_Finish + 10, 1, 1.2, 1.2 );
setScaleKey( spep_Finish + 12, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 14, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 16, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 18, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 20, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 22, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 24, 1, 1.5, 1.5 );
setScaleKey( spep_Finish + 26, 1, 1.6, 1.6 );
setScaleKey( spep_Finish + 120, 1, 1.6, 1.6 );

setRotateKey( spep_Finish + 0, 1, 0 );
setRotateKey( spep_Finish + 2, 1, 105 );
setRotateKey( spep_Finish + 4, 1, 240 );
setRotateKey( spep_Finish + 6, 1, 405 );
setRotateKey( spep_Finish + 8, 1, 600 );
setRotateKey( spep_Finish + 10, 1, 825 );
setRotateKey( spep_Finish + 12, 1, 1080 );
setRotateKey( spep_Finish + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_Finish, 1509,  0x80,  -1,  0,  0,  0);

playSe( spep_Finish+8, SE_10);

setDamage( spep_Finish +16, 1, 0);  -- ダメージ振動等
setShake(spep_Finish+8,6,15);
setShake(spep_Finish+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_Finish + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_Finish + 14, ctGa, 30, 10);

setEffMoveKey( spep_Finish + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_Finish + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_Finish + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_Finish + 14, ctGa, 2,2);
setEffScaleKey( spep_Finish+16, ctGa, 2.0,2.0);
setEffScaleKey( spep_Finish+17, cGa, 2.6,2.6);
setEffScaleKey( spep_Finish+18, ctGa, 4.0,4.0);
setEffScaleKey( spep_Finish+19, ctGa, 2.6,2.6);
setEffScaleKey( spep_Finish+20, ctGa, 3.8,3.8);
setEffScaleKey( spep_Finish+112, ctGa, 3.8,3.8);

setEffRotateKey( spep_Finish + 14, ctGa, -40 );
setEffRotateKey( spep_Finish + 16, ctGa, -31 );
setEffRotateKey( spep_Finish + 18, ctGa, -40 );
setEffRotateKey( spep_Finish + 20, ctGa, -31 );
setEffRotateKey( spep_Finish + 22, ctGa, -40 );
setEffRotateKey( spep_Finish + 24, ctGa, -31);
setEffRotateKey( spep_Finish + 26, ctGa, -40 );
setEffRotateKey( spep_Finish + 28, ctGa, -31);
setEffRotateKey( spep_Finish + 30, ctGa, -40 );

setEffAlphaKey( spep_Finish + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_Finish+2, 906, 120, 0x00,  -1, 0,  0,  0);

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_Finish+14, 1657, 120, 0x80,  -1, 0,  0,  0);

--ひび割れ
hibi = entryEffect( spep_Finish+2, 1600,  0x00,  -1,  0,30, -130);

-- ダメージ表示
dealDamage(spep_Finish+16);
entryFade( spep_Finish+100, 9,  10, 1, 8, 8, 8, 255);-- black fade
endPhase( spep_Finish+110);
end

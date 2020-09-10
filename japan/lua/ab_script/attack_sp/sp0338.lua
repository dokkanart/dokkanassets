

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

SP_01 = 150207;--溜め
SP_02 = 150208;--発射
SP_03 = 150209;--迫る
SP_04 = 150210;--溜め(敵側)
SP_05 = 150211;--発射(敵側)
--[[
150207
150208
150209
150210
150211
]]


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
setVisibleUI(0, 0);
setDisp( 0, 0, 0);
--playSe( 2, SE_03);

speff = entryEffect(  10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** エフェクト等 ** --

entryEffect(  0,   SP_01,   0,     -1,  0,  0,  0);--溜め

playSe( 10, SE_04);

--playSe( 20, SE_03);
--playSe( 40, SE_03);
playSe( 60, SE_03);
playSe( 80, SE_03);

entryFadeBg( 0, 0, 101, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife(  0, 906, 101, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.3, 1.3);

entryFade( 96, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( 20, 10008, 81, 0x100, -1, 0, 190, 300);    -- ゴゴゴ・・・
setEffShake(20, ct, 81, 8);
setEffScaleKey(20, ct, 1.4, 1.4);

spep_1 = 101;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_1,   0, 1.5, 1.5);--169
setScaleKey( spep_1+1,  0, 1.0, 1.0);

playSe( spep_1+1, SE_05);
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+86, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

--playSe( spep_1+65, SE_06);

spep_2 =spep_1+90;

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

kamehame_beam = entryEffect( spep_2, SP_02, 0x00,  0,  -1,  0,  0);   --発射

entryFade( spep_2+225, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

--playSe( spep_2, SE_03);
playSe( spep_2, SE_06);
playSe( spep_2+40, SE_07);
playSe( spep_2+180, SE_07);

entryFadeBg( spep_2, 0, 230, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( spep_2+40, 920, 190, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_2+45, 0, 54, 50);

shuchusen = entryEffectLife(  spep_2, 906, 230, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.3, 1.3);
--[[
setEffScaleKey( spep_2+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+49, shuchusen, 2.0, 2.0);
]]--

-- 書き文字エントリー
ct = entryEffectLife( spep_2+48, 10012, 190, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_2+48, ct, 190, 5);
setEffAlphaKey( spep_2+48, ct, 255);
setEffAlphaKey( spep_2+180, ct, 255);
setEffAlphaKey( spep_2+190, ct, 0);
setEffScaleKey( spep_2+48, ct, 0.0, 0.0);
setEffScaleKey( spep_2+52, ct, 2.0, 2.0);
setEffScaleKey( spep_2+180, ct, 2.0, 2.0);
setEffScaleKey( spep_2+190, ct, 6.0, 6.0);

spep_3 = spep_2+230;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_3, 0, 0);--370
setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 104);                        -- ガード
setAnimeLoop( spep_3, 1, 1);

setMoveKey(  spep_3-1,    1,  235,  0,   0);
setMoveKey(  spep_3,    1,  235,  0,   0);
setMoveKey(  spep_3+1,    1,  235,  0,   0);
setScaleKey( spep_3-1,    1,  0.7, 0.7);
setScaleKey( spep_3,    1,  0.7, 0.7);

setMoveKey(  spep_3+30,    1,   120,  0,   0);--400
setScaleKey(  spep_3+30,   1,   1.6,  1.6);

playSe( spep_3, SE_06);

kamehame_beam2 = entryEffect( spep_3, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波

setDamage( spep_3+82, 1, 0);  -- ダメージ振動等

playSe( spep_3+85, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_3+85, 1, 108);
setAnimeLoop( spep_3+85, 1, 1);
setMoveKey(  spep_3+85, 1,  120,    0,  0);--455
setMoveKey(  spep_3+99, 1,  400,    0,  0);
setScaleKey( spep_3+85, 1,  1.6, 1.6);
setScaleKey( spep_3+88, 1,  1.5, 1.5);
setScaleKey( spep_3+98, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_3, 1, 99, 20);

shuchusen = entryEffectLife(  spep_3, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.3, 1.3);

entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_3, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep_3, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( spep_3, ct, 99, 20);
setEffScaleKey( spep_3, ct, 2.4, 2.4);
setEffRotateKey( spep_3, ct, 70);
setEffAlphaKey( spep_3, ct, 255);
setEffAlphaKey(spep_3+60, ct, 255);
setEffAlphaKey(spep_3+80, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 440; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(SP_dodge+8,   0,    0, -54,   0);
setMoveKey(SP_dodge+9, 0,  -1500,    -54,  0);

endPhase(SP_dodge+10);

do return end
else end

entryFade( spep_3+95, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+100;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_4, 1, 1);
setMoveKey(  spep_4,    1,  100,  0,   0);
setScaleKey( spep_4,    1,  1.0, 1.0);
setMoveKey(  spep_4+1,    1,    0,   0,   128);

setScaleKey( spep_4+1,    1,  0.1, 0.1);

changeAnime( spep_4+1, 1, 107);                         -- 手前ダメージ
setAnimeLoop( spep_4+1, 1, 1);
entryEffect( spep_4+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+9, SE_10);

setMoveKey(  spep_4+9,   1,    0,   0,   128);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_4+17, 1, 0);  -- ダメージ振動等--486
setShake( spep_4+8,6,15);
setShake(spep_4+14,15,10);

setRotateKey( spep_4+1,  1,  30 );
setRotateKey( spep_4+3,  1,  80 );
setRotateKey( spep_4+5,  1, 120 );
setRotateKey( spep_4+7,  1, 160 );
setRotateKey( spep_4+9,  1, 200 );
setRotateKey( spep_4+11,  1, 260 );
setRotateKey( spep_4+13,  1, 320 );
setRotateKey( spep_4+15,  1,   0 );

setShakeChara( spep_4+16, 1, 5,  10);
setShakeChara( spep_4+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_4+16, ct, 30, 10);
setEffRotateKey( spep_4+16, ct, -40);
setEffScaleKey( spep_4+16, ct, 4.0, 4.0);
setEffScaleKey( spep_4+17, ct, 2.0, 2.0);
setEffScaleKey( spep_4+18, ct, 2.6, 2.6);
setEffScaleKey( spep_4+19, ct, 4.0, 4.0);
setEffScaleKey( spep_4+20, ct, 2.6, 2.6);
setEffScaleKey( spep_4+21, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+16, ct, 255);
setEffAlphaKey( spep_4+106, ct, 255);
setEffAlphaKey( spep_4+116, ct, 0);

playSe( spep_4+15, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_4+16);

entryFade( spep_4+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_4+111);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0);
--playSe( 2, SE_03);

--[[
speff = entryEffect(  10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

-- ** エフェクト等 ** --

entryEffect(  0,   SP_04,   0,     -1,  0,  0,  0);--溜め

playSe( 10, SE_04);

--playSe( 20, SE_03);
--playSe( 40, SE_03);
playSe( 60, SE_03);
playSe( 80, SE_03);

entryFadeBg( 0, 0, 101, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife(  0, 906, 101, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.3, 1.3);

entryFade( 96, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( 20, 10008, 81, 0x100, -1, 0, 190, 300);    -- ゴゴゴ・・・
setEffShake(20, ct, 81, 8);
setEffScaleKey(20, ct, 1.4, 1.4);

spep_1 = 101;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_1,   0, 1.5, 1.5);--169
setScaleKey( spep_1+1,  0, 1.0, 1.0);

playSe( spep_1+1, SE_05);
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+86, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

--playSe( spep_1+65, SE_06);

spep_2 =spep_1+90;

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

kamehame_beam = entryEffect( spep_2, SP_05, 0x00,  0,  -1,  0,  0);   -- 発射

entryFade( spep_2+225, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

--playSe( spep_2, SE_03);
playSe( spep_2, SE_06);
playSe( spep_2+40, SE_07);
playSe( spep_2+180, SE_07);

entryFadeBg( spep_2, 0, 230, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( spep_2+40, 920, 190, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_2+45, 0, 54, 50);

shuchusen = entryEffectLife(  spep_2, 906, 230, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.3, 1.3);
--[[
setEffScaleKey( spep_2+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+49, shuchusen, 2.0, 2.0);
]]--

-- 書き文字エントリー
ct = entryEffectLife( spep_2+48, 10012, 190, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_2+48, ct, 190, 5);
setEffAlphaKey( spep_2+48, ct, 255);
setEffAlphaKey( spep_2+180, ct, 255);
setEffAlphaKey( spep_2+190, ct, 0);
setEffScaleKey( spep_2+48, ct, 0.0, 0.0);
setEffScaleKey( spep_2+52, ct, 2.0, 2.0);
setEffScaleKey( spep_2+180, ct, 2.0, 2.0);
setEffScaleKey( spep_2+190, ct, 6.0, 6.0);

spep_3 = spep_2+230;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_3, 0, 0);--370
setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 104);                        -- ガード
setAnimeLoop( spep_3, 1, 1);

setMoveKey(  spep_3-1,    1,  235,  0,   0);
setMoveKey(  spep_3,    1,  235,  0,   0);
setMoveKey(  spep_3+1,    1,  235,  0,   0);
setScaleKey( spep_3-1,    1,  0.7, 0.7);
setScaleKey( spep_3,    1,  0.7, 0.7);

setMoveKey(  spep_3+30,    1,   120,  0,   0);--400
setScaleKey(  spep_3+30,   1,   1.6,  1.6);

playSe( spep_3, SE_06);

kamehame_beam2 = entryEffect( spep_3, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波

setDamage( spep_3+82, 1, 0);  -- ダメージ振動等

playSe( spep_3+85, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_3+85, 1, 108);
setAnimeLoop( spep_3+85, 1, 1);
setMoveKey(  spep_3+85, 1,  120,    0,  0);--455
setMoveKey(  spep_3+99, 1,  400,    0,  0);
setScaleKey( spep_3+85, 1,  1.6, 1.6);
setScaleKey( spep_3+88, 1,  1.5, 1.5);
setScaleKey( spep_3+98, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_3, 1, 99, 20);

shuchusen = entryEffectLife(  spep_3, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.3, 1.3);

entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_3, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep_3, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( spep_3, ct, 99, 20);
setEffScaleKey( spep_3, ct, 2.4, 2.4);
setEffRotateKey( spep_3, ct, -70);
setEffAlphaKey( spep_3, ct, 255);
setEffAlphaKey(spep_3+60, ct, 255);
setEffAlphaKey(spep_3+80, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 440; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(SP_dodge+8,   0,    0, -54,   0);
setMoveKey(SP_dodge+9, 0,  -1500,  -54,  0);

endPhase(SP_dodge+10);

do return end
else end

entryFade( spep_3+95, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+100;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_4, 1, 1);
setMoveKey(  spep_4,    1,  100,  0,   0);
setScaleKey( spep_4,    1,  1.0, 1.0);
setMoveKey(  spep_4+1,    1,    0,   0,   128);

setScaleKey( spep_4+1,    1,  0.1, 0.1);

changeAnime( spep_4+1, 1, 107);                         -- 手前ダメージ
setAnimeLoop( spep_4+1, 1, 1);
entryEffect( spep_4+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+9, SE_10);

setMoveKey(  spep_4+9,   1,    0,   0,   128);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_4+17, 1, 0);  -- ダメージ振動等--486
setShake( spep_4+8,6,15);
setShake(spep_4+14,15,10);

setRotateKey( spep_4+1,  1,  30 );
setRotateKey( spep_4+3,  1,  80 );
setRotateKey( spep_4+5,  1, 120 );
setRotateKey( spep_4+7,  1, 160 );
setRotateKey( spep_4+9,  1, 200 );
setRotateKey( spep_4+11,  1, 260 );
setRotateKey( spep_4+13,  1, 320 );
setRotateKey( spep_4+15,  1,   0 );

setShakeChara( spep_4+16, 1, 5,  10);
setShakeChara( spep_4+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_4+16, ct, 30, 10);
setEffRotateKey( spep_4+16, ct, -40);
setEffScaleKey( spep_4+16, ct, 4.0, 4.0);
setEffScaleKey( spep_4+17, ct, 2.0, 2.0);
setEffScaleKey( spep_4+18, ct, 2.6, 2.6);
setEffScaleKey( spep_4+19, ct, 4.0, 4.0);
setEffScaleKey( spep_4+20, ct, 2.6, 2.6);
setEffScaleKey( spep_4+21, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+16, ct, 255);
setEffAlphaKey( spep_4+106, ct, 255);
setEffAlphaKey( spep_4+116, ct, 0);

playSe( spep_4+15, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_4+16);

entryFade( spep_4+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_4+111);

end

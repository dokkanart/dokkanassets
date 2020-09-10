

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
SE_09 = 1027; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SP_01 = 160000;
SP_02 = 160001;
SP_03 = 160002;

multi_frm = 2;

setMoveKey(   0,   0, -300, -1136, 0);
changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI(0, 0);
changeAnime( 0, 0, 30);                       -- 溜め!
--changeAnime( 30, 0, 17);  
setScaleKey(   0,   0, 1.5, 1.5);

playSe( 0, 1018);
setMoveKey(   30,   0, 0, -40, 0);

entryFade( 179, 3, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト等 ** --
entryFadeBg( 0, 0, 179, 0, 10, 10, 10, 180);       -- ベース暗め　背景

ryuusenn = entryEffectLife( 0, 920, 179, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(0, ryuusenn, -80);
setEffScaleKey( 0, ryuusenn, 1.5, 1.5);

setShakeChara( 0, 0, 179, 15);
setShake(0,179, 10);
setShake(50,129, 20);
setShake(155, 5, 40);


shuchusen8 = entryEffectLife( 0, 906, 129, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen8, 1.5, 1.5);



setMoveKey(   0,   0, 0, 0, 0);
setMoveKey(   15,   0,  0, 0,  0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   SP_01, 128, 0x40,  0,  1,  0,  130); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 10);
setShake( 30, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

setMoveKey(   127,   0, 30, 20, 0);

spep_2 = 127;
setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   spep_2+85,   0, 30, 60, 0);

playSe( spep_2+65, 1018);

removeAllEffect(spep_2+87);
spep_8=spep_2+85+5--217

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_8, 0, 31);                                    -- かめはめ発射ポーズ
setShakeChara( spep_8, 0, 91, 50);
setShake( spep_8, 91, 20);

setScaleKey( spep_8,   0, 1.3, 1.3);
setDisp( spep_8, 0, 1);


--P移動
setMoveKey(  spep_8,    0,   -600,  150,   0);


playSe( spep_8, 1019);
playSe( spep_8+6, 1019);
playSe( spep_8+12, 1019);
playSe( spep_8+17, 1019);
playSe( spep_8+23, 1019);
playSe( spep_8+28, 1019);
playSe( spep_8+34, 1019);
playSe( spep_8+40, 1019);
playSe( spep_8+45, 1019);
playSe( spep_8+51, 1019);
playSe( spep_8+56, 1019);
playSe( spep_8+62, 1019);
playSe( spep_8+67, 1019);
playSe( spep_8+73, 1019);
playSe( spep_8+78, 1019);
playSe( spep_8+82, 1019);
playSe( spep_8+88, 1019);

kamehame_beam = entryEffectLife( spep_8, SP_02, 109, 0x40,  0,  300,  -180,  240);   -- 伸びるかめはめ波


-- ** エフェクト等 ** --
--entryFadeBg( spep_8, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_8, 0, 101, 0, 230, 230, 230);    -- 最初だけ明るい　背景
--entryFadeBg( spep_8+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_8+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景
entryFadeBg( spep_8, 0, 105, 0, 30, 30, 30, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_8, 921, 101, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_8, sen2, 210);
setEffScaleKey( spep_8, sen2, 1.5, 1.5);
--setShakeChara( spep_8+10, 0, 24, 50);

shuchusen = entryEffectLife( spep_8, 906, 101, 0x80,  -1, 0,  0,  -50);   -- 集中線
setEffScaleKey( spep_8, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_8+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_8+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_8+8, 10012, 83, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_8+8, ct, 32, 5);
setEffAlphaKey(spep_8+8, ct, 255);
setEffAlphaKey(spep_8+30, ct, 255);
setEffAlphaKey(spep_8+60, ct, 255);
setEffAlphaKey(spep_8+85, ct, 0);
setEffScaleKey(spep_8+8, ct, 0.0, 0.0);
setEffScaleKey(spep_8+12, ct, 1.3, 1.3);
setEffScaleKey(spep_8+32, ct, 1.3, 1.3);
setEffScaleKey(spep_8+64, ct, 1.3, 1.3);
setEffScaleKey(spep_8+85, ct, 6.0, 6.0);
--playSe( spep_8+40, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 291; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -100,  25,   -30);
setMoveKey(  SP_dodge+9,    0,   -2100,  -220,   -50);


endPhase(SP_dodge+10);
do return end
else end


setMoveKey(  spep_8+70,    0,   -100,  25,   -30);

--setMoveKey(  spep_8+85,    0,   100,  -75,   0);
setMoveKey(  spep_8+79,    0,   -100,  25,   -30);
--setScaleKey( spep_8+79,   0, 1.5, 1.5);

setMoveKey(  spep_8+85,    0,   100,  -220,   -50);
--setScaleKey( spep_8+85,    1,  1.8, 1.8);

entryFade( spep_8+85, 5,  10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(spep_8+91);
--setMoveKey( spep_8+91,    0,      -120,  0,   0);
--setMoveKey(  spep_8+91,    0,   60,  -80,   50);
stopSe( spep_8+91, 1,   4);
setScaleKey( spep_8+91,    1,  1.7, 1.7);

spep_9=spep_8+95; --370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_9, 0, 0);
setDisp( spep_9, 1, 0);
changeAnime( spep_9, 1, 104);                        -- ガード
setMoveKey(  spep_9-1,    1,  0,  0,   0);
setMoveKey(  spep_9,    1,  0,  0,   0);
setMoveKey(  spep_9+1,    1,  0,  0,   0);
setScaleKey( spep_9-1,    1,  1.7, 1.7);

playSe( spep_9, SE_09);

kamehame_beam2 = entryEffect( spep_9, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setDamage( spep_9, 1, 0);  -- ダメージ振動等

-- ** エフェクト等 ** --
setShakeChara( spep_9, 1, 99, 20);

entryFadeBg( spep_9, 0, 21, 0, 0, 0, 0, 255);       -- ベース暗め　背景

spep_5 = spep_9+21;--+99

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5-1, 0, 0);
changeAnime( spep_5-2, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_5-2,    1,  100,  0,   0);

setDisp( spep_5-1, 1, 1);
setScaleKey( spep_5-2,    1,  1, 1);
setMoveKey(  spep_5-1,    1,    0,   0,   128);
setScaleKey( spep_5-1,    1,  0.1, 0.1);


setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI(0, 0);
changeAnime( 0, 0, 30);                       -- 溜め!
--changeAnime( 30, 0, 17);  
setScaleKey(   0,   0, 1.5, 1.5);

playSe( 0, 1018);
setMoveKey(   30,   0, 0, -40, 0);

entryFade( 179, 3, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト等 ** --
entryFadeBg( 0, 0, 179, 0, 10, 10, 10, 180);       -- ベース暗め　背景

ryuusenn = entryEffectLife( 0, 920, 179, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(0, ryuusenn, -80);
setEffScaleKey( 0, ryuusenn, 1.5, 1.5);

setShakeChara( 0, 0, 179, 15);
setShake(0,179, 10);
setShake(50,129, 20);
setShake(155, 5, 40);


shuchusen8 = entryEffectLife( 0, 906, 129, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen8, 1.5, 1.5);



setMoveKey(   0,   0, 0, 0, 0);
setMoveKey(   15,   0,  0, 0,  0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   SP_01, 128, 0x40,  0,  1,  0,  130); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);

--[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]
entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 10);
setShake( 30, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

setMoveKey(   127,   0, 30, 20, 0);

spep_2 = 127;
setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   spep_2+85,   0, 30, 60, 0);

playSe( spep_2+65, 1018);

removeAllEffect(spep_2+87);
spep_8=spep_2+85+5--217

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_8, 0, 31);                                    -- かめはめ発射ポーズ
setShakeChara( spep_8, 0, 91, 50);
setShake( spep_8, 91, 20);

setScaleKey( spep_8,   0, 1.3, 1.3);
setDisp( spep_8, 0, 1);


--P移動
setMoveKey(  spep_8,    0,   -600,  150,   0);

playSe( spep_8, 1019);
playSe( spep_8+6, 1019);
playSe( spep_8+12, 1019);
playSe( spep_8+17, 1019);
playSe( spep_8+23, 1019);
playSe( spep_8+28, 1019);
playSe( spep_8+34, 1019);
playSe( spep_8+40, 1019);
playSe( spep_8+45, 1019);
playSe( spep_8+51, 1019);
playSe( spep_8+56, 1019);
playSe( spep_8+62, 1019);
playSe( spep_8+67, 1019);
playSe( spep_8+73, 1019);
playSe( spep_8+78, 1019);
playSe( spep_8+82, 1019);
playSe( spep_8+88, 1019);

kamehame_beam = entryEffectLife( spep_8, SP_02, 109, 0x40,  0,  300,  -180,  240);   -- 伸びるかめはめ波


-- ** エフェクト等 ** --
--entryFadeBg( spep_8, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_8, 0, 101, 0, 230, 230, 230);    -- 最初だけ明るい　背景
--entryFadeBg( spep_8+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_8+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景
entryFadeBg( spep_8, 0, 105, 0, 30, 30, 30, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_8, 921, 101, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_8, sen2, 210);
setEffScaleKey( spep_8, sen2, 1.5, 1.5);
--setShakeChara( spep_8+10, 0, 24, 50);

shuchusen = entryEffectLife( spep_8, 906, 101, 0x80,  -1, 0,  0,  -50);   -- 集中線
setEffScaleKey( spep_8, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_8+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_8+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_8+8, 10012, 83, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_8+8, ct, 32, 5);
setEffAlphaKey(spep_8+8, ct, 255);
setEffAlphaKey(spep_8+30, ct, 255);
setEffAlphaKey(spep_8+60, ct, 255);
setEffAlphaKey(spep_8+86, ct, 0);
setEffScaleKey(spep_8+8, ct, 0.0, 0.0);
setEffScaleKey(spep_8+12, ct, 1.3, 1.3);
setEffScaleKey(spep_8+32, ct, 1.3, 1.3);
setEffScaleKey(spep_8+64, ct, 1.3, 1.3);
setEffScaleKey(spep_8+85, ct, 6.0, 6.0);
--playSe( spep_8+40, SE_07);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 291; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,    -100,  25,   -30);
setMoveKey(  SP_dodge+9,    0,   -2100,  -220,   -50);

endPhase(SP_dodge+10);
do return end
else end


setMoveKey(  spep_8+70,    0,   -100,  25,   -30);

--setMoveKey(  spep_8+85,    0,   100,  -75,   0);
setMoveKey(  spep_8+79,    0,   -100,  25,   -30);
--setScaleKey( spep_8+79,   0, 1.5, 1.5);

setMoveKey(  spep_8+85,    0,   100,  -220,   -50);
--setScaleKey( spep_8+85,    1,  1.8, 1.8);

entryFade( spep_8+85, 5,  10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(spep_8+91);
--setMoveKey( spep_8+91,    0,      -120,  0,   0);
--setMoveKey(  spep_8+91,    0,   60,  -80,   50);
stopSe( spep_8+91, 1,   4);
setScaleKey( spep_8+91,    1,  1.7, 1.7);

spep_9=spep_8+95; --370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_9, 0, 0);
setDisp( spep_9, 1, 0);
changeAnime( spep_9, 1, 104);                        -- ガード
setMoveKey(  spep_9-1,    1,  0,  0,   0);
setMoveKey(  spep_9,    1,  0,  0,   0);
setMoveKey(  spep_9+1,    1,  0,  0,   0);
setScaleKey( spep_9-1,    1,  1.7, 1.7);

playSe( spep_9, SE_09);

kamehame_beam2 = entryEffect( spep_9, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setDamage( spep_9, 1, 0);  -- ダメージ振動等

-- ** エフェクト等 ** --
setShakeChara( spep_9, 1, 99, 20);

entryFadeBg( spep_9, 0, 21, 0, 0, 0, 0, 255);       -- ベース暗め　背景

spep_5 = spep_9+21;--+99

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5-1, 0, 0);
changeAnime( spep_5-2, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_5-2,    1,  100,  0,   0);

setDisp( spep_5-1, 1, 1);
setScaleKey( spep_5-2,    1,  1, 1);
setMoveKey(  spep_5-1,    1,    0,   0,   128);
setScaleKey( spep_5-1,    1,  0.1, 0.1);


setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);

end

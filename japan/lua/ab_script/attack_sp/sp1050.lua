
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

tyo = -40;
tyo2 = -60;

--SP_01 = 106003;--未使用
SP_01 = 160006;--風切りエフェクト
SP_02 = 160007;--迫る

SP_03 = 106006;--切れ味の良さそうなHITエフェクト
SP_04 = 106006;--切れ味の良さそうなHITエフェクト


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0,      0,   0);
setMoveKey(   1,   0,    0,      0,   0);
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
--changeAnime( 0, 0, 30);                       -- 溜め!

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryEffect( 0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( 0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

playSe( 3, 1035);
--playSe( 25, SE_03); --かめはめ波
--playSe( 42, SE_04);


entryFade( 94, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setMoveKey(   121,   0,    0, 0,   0);
setMoveKey(   101,   0,    0, 0,   0);

-- ** エフェクト等 ** --

setShakeChara( 0, 0, 112, 8);
setShake( 0, 112, 10);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 85, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

playSe( 10, 17);

entryFadeBg( 0, 0, 110, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 104;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

spep_8=spep_2+85+4; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_8, 0, 30);                                    -- かめはめ発射ポーズ
setScaleKey( spep_8,   0, 1.0, 1.0);

setShakeChara( spep_8, 0, 91, 50);
setShake( spep_8, 91, 12);

setScaleKey( spep_8,   0, 1.3, 1.3);
setDisp( spep_8, 0, 1);


--P移動
setMoveKey(  spep_8,    0,   -600,  150,   0);

setMoveKey(  spep_8+70,    0,   -100,  25,   -30);

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

kamehame_beam = entryEffectLife( spep_8, SP_01, 109, 0x40,  0,  300,  -100,  120);   -- 伸びるかめはめ波


-- ** エフェクト等 ** --
--entryFadeBg( spep_8, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_8, 0, 101, 0, 230, 230, 230);    -- 最初だけ明るい　背景
--entryFadeBg( spep_8+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_8+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景
entryFadeBg( spep_8, 0, 105, 0, 30, 30, 30, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_8, 921, 101, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_8, sen2, 230);
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

setScaleKey( spep_8+79,   0, 1.3, 1.3);
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
setScaleKey( spep_8+91,    0,  1.5, 1.5);
--setScaleKey( spep_8+91,   0, 1.0, 1.0);
setMoveKey(  spep_8+91,    0,   100,  -220,   -50);

--entryFade( spep_3+95, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_3+98);

spep_4=spep_8+85+10; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
changeAnime( spep_4, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey( spep_4,   0, 0.7, 0.7);
setMoveKey(  spep_4,    0,   -150,  200,   -50);
setRotateKey( spep_4,  0,  60 );

kamehame_beam = entryEffectLife( spep_4, SP_02, 109, 0x40+0x80,  0,  300,  0,  0);   -- 突撃時の風切りエフェクト
setEffRotateKey(spep_4, kamehame_beam, 60);
setEffScaleKey( spep_4, kamehame_beam, 0.7, 0.7);
setEffAlphaKey(spep_4, kamehame_beam, 255);

setDisp( spep_4, 0, 1);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey( spep_4-1,    1,  335,  0,   0);
setMoveKey( spep_4,    1,  335,  0,   0);
setMoveKey( spep_4+1,    1,  335,  0,   0);

setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  0.7, 0.7);
setScaleKey(  spep_4-1,   1,   1.0,  1.0);

--setRotateKey(spep_4,1,10);

--setMoveKey(  spep_4+30,    1,   180, -250,   -20);
setMoveKey( spep_4+30,    1,   220,  0,   0);
setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4+20, 1018);

setShake( spep_4, 63, 12);
setShake( spep_4+63, 38, 15);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

setScaleKey( spep_4+55,   0, 0.5, 0.5);
setEffScaleKey( spep_4+55, kamehame_beam, 0.3, 0.3);

--setMoveKey(  spep_4+55,    0,   50,  0,   0);
setMoveKey(  spep_4+55,    0,   220,  0,   40);
setEffScaleKey( spep_4+62, kamehame_beam, 0.0, 0.0);
setEffAlphaKey(spep_4+59, kamehame_beam, 255);
setEffAlphaKey(spep_4+62, kamehame_beam, 0);

setMoveKey(  spep_4+62,    0,   300,  0,   80);

setScaleKey( spep_4+62,   0, 0.0, 0.0);
setDisp( spep_4+62, 0, 0);

hit_eff_1 = entryEffect( spep_4+55,  4,  0x40,  -1,  0,  530, 600);--HIT
hit_eff_2 = entryEffect( spep_4+55,  906,  0x40,  -1,  0,  530, 600);
hit_eff_3 = entryEffect( spep_4+55,  908,  0x40,  -1,  0,  530, 600);

playSe( spep_4+55, SE_09);

setEffScaleKey( spep_4+55, hit_eff_1, 1.5, 1.5);
setEffScaleKey( spep_4+55, hit_eff_2, 1.5, 1.5);
setEffScaleKey( spep_4+55, hit_eff_3, 1.5, 1.5);

--playSe( spep_4+55, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_4+55, 1, 108);
setMoveKey( spep_4+55, 1,  250,    0,  0);
setMoveKey( spep_4+69, 1,  400,    0,  40);

--setMoveKey( spep_4+60, 1,  180,   -250,  -20);
setMoveKey(  spep_4+76, 1,  400,    -500,  60);
setScaleKey( spep_4+55, 1,  1.6, 1.6);
setScaleKey( spep_4+58, 1,  1.5, 1.5);
setScaleKey( spep_4+76, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 77, 0,0, 0, 0, 180);          -- ベース暗め　背景

ryuu = entryEffectLife( spep_4, 921, 77, 0x80,  -1,  0,  -200,  0); -- 流線斜め
setEffScaleKey( spep_4, ryuu, 1.5, 1.5);

--[[
ryuu2 = entryEffectLife( spep_4, 921, 77, 0x80,  -1,  0,  680,  0); -- 流線斜め
setEffScaleKey( spep_4, ryuu, 1.3, 1.3);
setEffRotateKey(spep_4, ryuu2, 180);
--]]

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -50, 305); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+60, ct, 255);
setEffAlphaKey(spep_4+70, ct, 0);

entryFade( spep_4+70, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_4+80);
setScaleKey( spep_4+80,   0, 0.5, 0.5);
setDisp( spep_4+80, 0, 0);

spep_5=spep_4+70+17 --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 311; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (110F)
------------------------------------------------------

--entryEffect( spep_5,1553,0,-1,0,0,0);

setDisp( spep_5, 1, 0);

setDisp( spep_5, 1, 1);
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
setMoveKey(  spep_5+1,    1,    0,   0,   128);
setScaleKey( spep_5+1,    1,  0.1, 0.1);

changeAnime( spep_5+1, 1, 107);                         -- 手前ダメージ 470
entryEffect( spep_5+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+17, 1, 0);  -- ダメージ振動等
setShake(spep_5+8);
setShake(spep_5+13,15,10);

setRotateKey( spep_5+1,  1,  30 );
setRotateKey( spep_5+3,  1,  80 );
setRotateKey( spep_5+5,  1, 120 );
setRotateKey( spep_5+7,  1, 160 );
setRotateKey( spep_5+9,  1, 200 );
setRotateKey( spep_5+11,  1, 260 );
setRotateKey( spep_5+13,  1, 320 );
setRotateKey( spep_5+15,  1,   0 );

setShakeChara( spep_5+16, 1, 5,  10);
setShakeChara( spep_5+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+16, ct, 30, 10);
setEffRotateKey( spep_5+16, ct, -40);
setEffScaleKey( spep_5+16, ct, 4.0, 4.0);
setEffScaleKey( spep_5+17, ct, 2.0, 2.0);
setEffScaleKey( spep_5+18, ct, 2.6, 2.6);
setEffScaleKey( spep_5+19, ct, 4.0, 4.0);
setEffScaleKey( spep_5+20, ct, 2.6, 2.6);
setEffScaleKey( spep_5+21, ct, 3.8, 3.8);
setEffScaleKey( spep_5+111, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+16, ct, 255);
setEffAlphaKey( spep_5+106, ct, 255);
setEffAlphaKey( spep_5+116, ct, 0);

playSe( spep_5+4, SE_11);
shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setVisibleUI(0, 0);
--changeAnime( 0, 0, 30);                       -- 溜め!

--[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

entryEffect( 0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( 0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

playSe( 3, 1035);
--playSe( 25, SE_03); --かめはめ波
--playSe( 42, SE_04);


entryFade( 94, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setMoveKey(   121,   0,    0, 0,   0);
setMoveKey(   101,   0,    0, 0,   0);

-- ** エフェクト等 ** --

setShakeChara( 0, 0, 112, 8);
setShake( 0, 112, 10);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 85, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

playSe( 10, 17);

entryFadeBg( 0, 0, 110, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 104;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

spep_8=spep_2+85+4; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_8, 0, 30);                                    -- かめはめ発射ポーズ
setScaleKey( spep_8,   0, 1.0, 1.0);

setShakeChara( spep_8, 0, 91, 50);
setShake( spep_8, 91, 12);

setScaleKey( spep_8,   0, 1.3, 1.3);
setDisp( spep_8, 0, 1);


--P移動
setMoveKey(  spep_8,    0,   -600,  150,   0);

setMoveKey(  spep_8+70,    0,   -100,  25,   -30);

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

kamehame_beam = entryEffectLife( spep_8, SP_01, 109, 0x40,  0,  300,  -100,  120);   -- 伸びるかめはめ波


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
setScaleKey( spep_8+91,   0, 1.0, 1.0);

--entryFade( spep_3+95, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_3+98);

spep_4=spep_8+85+10; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
changeAnime( spep_4, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey( spep_4,   0, 0.7, 0.7);
setMoveKey(  spep_4,    0,   -150,  200,   -50);
setRotateKey( spep_4,  0,  60 );

kamehame_beam = entryEffectLife( spep_4, SP_02, 109, 0x40+0x80,  0,  300,  0,  0);   -- 突撃時の風切りエフェクト
setEffRotateKey(spep_4, kamehame_beam, 60);
setEffScaleKey( spep_4, kamehame_beam, 0.7, 0.7);
setEffAlphaKey(spep_4, kamehame_beam, 255);

setDisp( spep_4, 0, 1);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey( spep_4-1,    1,  335,  0,   0);
setMoveKey( spep_4,    1,  335,  0,   0);
setMoveKey( spep_4+1,    1,  335,  0,   0);

setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  0.7, 0.7);
setScaleKey(  spep_4-1,   1,   1.0,  1.0);

--setRotateKey(spep_4,1,10);

--setMoveKey(  spep_4+30,    1,   180, -250,   -20);
setMoveKey( spep_4+30,    1,   180,  0,   0);
setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4+20, 1018);

setShake( spep_4, 63, 12);
setShake( spep_4+63, 38, 15);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

setScaleKey( spep_4+55,   0, 0.5, 0.5);
setEffScaleKey( spep_4+55, kamehame_beam, 0.3, 0.3);

--setMoveKey(  spep_4+55,    0,   50,  0,   0);
setMoveKey(  spep_4+55,    0,   180,  0,   40);
setEffScaleKey( spep_4+62, kamehame_beam, 0.0, 0.0);
setEffAlphaKey(spep_4+59, kamehame_beam, 255);
setEffAlphaKey(spep_4+62, kamehame_beam, 0);

setMoveKey(  spep_4+62,    0,   270,  0,   80);

setScaleKey( spep_4+62,   0, 0.0, 0.0);
setDisp( spep_4+62, 0, 0);

hit_eff_1 = entryEffect( spep_4+55,  4,  0x40,  -1,  0,  -220, 600);--HIT
hit_eff_2 = entryEffect( spep_4+55,  906,  0x40,  -1,  0,  -220, 600);
hit_eff_3 = entryEffect( spep_4+55,  908,  0x40,  -1,  0,  -220, 600);

playSe( spep_4+55, SE_09);

setEffScaleKey( spep_4+55, hit_eff_1, 1.5, 1.5);
setEffScaleKey( spep_4+55, hit_eff_2, 1.5, 1.5);
setEffScaleKey( spep_4+55, hit_eff_3, 1.5, 1.5);

--playSe( spep_4+55, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_4+55, 1, 108);
setMoveKey( spep_4+55, 1,  250,    0,  0);
setMoveKey( spep_4+69, 1,  400,    0,  40);

--setMoveKey( spep_4+60, 1,  180,   -250,  -20);
setMoveKey(  spep_4+76, 1,  400,    -500,  60);
setScaleKey( spep_4+55, 1,  1.6, 1.6);
setScaleKey( spep_4+58, 1,  1.5, 1.5);
setScaleKey( spep_4+76, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 77, 0,0, 0, 0, 180);          -- ベース暗め　背景

ryuu = entryEffectLife( spep_4, 921, 77, 0x80,  -1,  0,  -200,  0); -- 流線斜め
setEffScaleKey( spep_4, ryuu, 1.5, 1.5);

--[[
ryuu2 = entryEffectLife( spep_4, 921, 77, 0x80,  -1,  0,  680,  0); -- 流線斜め
setEffScaleKey( spep_4, ryuu, 1.3, 1.3);
setEffRotateKey(spep_4, ryuu2, 180);
--]]

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -50, 305); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+60, ct, 255);
setEffAlphaKey(spep_4+70, ct, 0);

entryFade( spep_4+70, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_4+80);
setScaleKey( spep_4+80,   0, 0.5, 0.5);
setDisp( spep_4+80, 0, 0);

spep_5=spep_4+70+17 --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 317; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

--entryEffect( spep_5,1553,0,-1,0,0,0);

setDisp( spep_5, 1, 0);

setDisp( spep_5, 1, 1);
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
setMoveKey(  spep_5+1,    1,    0,   0,   128);
setScaleKey( spep_5+1,    1,  0.1, 0.1);

changeAnime( spep_5+1, 1, 107);                         -- 手前ダメージ 470
entryEffect( spep_5+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+17, 1, 0);  -- ダメージ振動等
setShake(spep_5+8);
setShake(spep_5+13,15,10);

setRotateKey( spep_5+1,  1,  30 );
setRotateKey( spep_5+3,  1,  80 );
setRotateKey( spep_5+5,  1, 120 );
setRotateKey( spep_5+7,  1, 160 );
setRotateKey( spep_5+9,  1, 200 );
setRotateKey( spep_5+11,  1, 260 );
setRotateKey( spep_5+13,  1, 320 );
setRotateKey( spep_5+15,  1,   0 );

setShakeChara( spep_5+16, 1, 5,  10);
setShakeChara( spep_5+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+16, ct, 30, 10);
setEffRotateKey( spep_5+16, ct, -40);
setEffScaleKey( spep_5+16, ct, 4.0, 4.0);
setEffScaleKey( spep_5+17, ct, 2.0, 2.0);
setEffScaleKey( spep_5+18, ct, 2.6, 2.6);
setEffScaleKey( spep_5+19, ct, 4.0, 4.0);
setEffScaleKey( spep_5+20, ct, 2.6, 2.6);
setEffScaleKey( spep_5+21, ct, 3.8, 3.8);
setEffScaleKey( spep_5+111, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+16, ct, 255);
setEffAlphaKey( spep_5+106, ct, 255);
setEffAlphaKey( spep_5+116, ct, 0);

playSe( spep_5+4, SE_11);
shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111);

end

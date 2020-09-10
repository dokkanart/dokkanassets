

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+50;

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

SP_01 = 109041;--溜め 未使用
SP_02 = 109055; --発射
SP_03 = 109056; --ドーナツ巻きつく全面
SP_04 = 109057; --ドーナツ巻きつく後面
SP_05 = 109058; --光弾発射
SP_06 = 109059; --光弾迫る

multi_frm = 2;

changeAnime( 0, 0, 30);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

SP_start =-69

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
--changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_start+  70,   311, 99, 0x40,  0,  1,  -10,  -30); -- オーラ
setEffScaleKey( SP_start+ 30, aura, 1.6, 1.6);
setShakeChara( SP_start+ 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_start+  255,    0,   0,  0,   0);

------------------------------------------------------
-- ドーナツ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start+  259,    0,      -500,  250,   0);
setMoveKey( SP_start+  270,    0,   -150,  150,   0);
setMoveKey( SP_start+  290,    0,   -150,  150,   0);

playSe( SP_start+ 265, SE_06);


kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( SP_start+ 260, kamehame_beam, 1.0, 1.0);

--playSe( SP_start+ 260+20, SE_07);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え


setMoveKey( SP_start+  290,    0,   -300,  200,   70);
setMoveKey( SP_start+  302,    0,   -450,  220,   120);
setMoveKey( SP_start+  355,    0,   -900,  0,   0);


--entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( SP_start+ 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

--entryEffectLife( SP_start+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
sen2 = entryEffectLife( SP_start+ 260, 921, 107, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+260, sen2, 190);
setEffScaleKey( SP_start+260, sen2, 1.3, 1.3);
setShakeChara( SP_start+ 305, 0, 54, 50);

--setShakeChara( SP_start+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);

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

entryFade( SP_start+ 355, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( SP_start+ 355,   0, 1.0, 1.0);

removeAllEffect( SP_start+358);

------------------------------------------------------
-- ドーナツ迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  0,  0,   0);
setMoveKey( SP_start+  370,    1,  0,  0,   0);
setMoveKey( SP_start+  371,    1,  0,  0,   0);
setScaleKey( SP_start+ 369,    1,  1.5, 1.5);
setScaleKey( SP_start+ 370,    1,  1.5, 1.5);
setRotateKey( SP_start+ 370 , 1 , 20);

setMoveKey( SP_start+  394,    1,   0,  0,   0);
setScaleKey( SP_start+  394,   1,   1.6,  1.6);

sen2 = entryEffectLife( SP_start+ 370, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( SP_start+260, sen2, -70);
setEffScaleKey( SP_start+260, sen2, 1.6, 1.6);

gurumae = entryEffectLife( SP_start+ 370, SP_03, 80 ,  0x100 , 1,  0,  0,  -100);--ドーナツ前
gurugo = entryEffectLife( SP_start+ 370, SP_04, 80 ,  0x80 , 1,  0,  0,  -100);--ドーナツ後

setEffAlphaKey( SP_start+370, gurumae, 255);
setEffAlphaKey( SP_start+370, gurugo, 255);

spep_3=40;

entryFade( SP_start+ spep_3+405, 6,  8, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade--spep_3+422
setEffAlphaKey( SP_start+spep_3+411, gurumae, 255);
setEffAlphaKey( SP_start+spep_3+411, gurugo, 255);
setDisp( SP_start+ spep_3+411, 1, 0);

setEffAlphaKey( SP_start+spep_3+414, gurumae, 0);
setEffAlphaKey( SP_start+spep_3+414, gurugo, 0);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start+ 370, 0, 90, 0, 10, 10, 10, 150);          -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 428, 10007, 65, 0, -1, 0, -100, 255); -- ギュンッ
setEffShake( SP_start+428, ct, 99, 20);
setEffScaleKey( SP_start+ 428, ct, 2.4, 2.4);
setEffRotateKey( SP_start+405, ct, 0);
--setEffAlphaKey( SP_start+415, ct, 155);
setEffAlphaKey( SP_start+428, ct, 255);
setEffAlphaKey( SP_start+450, ct, 0);

playSe( SP_start+ 428, 1017);

--playSe( SP_start+ 428, 1015);
--playSe( SP_start+ 428, SE_06);


setMoveKey( SP_start+  spep_3+411,    1,   0,  0,   0);
setScaleKey( SP_start+  spep_3+415,   1,   1.6,  1.6);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 329; --エンドフェイズのフレーム数を置き換える

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

spep_4=spep_3+432;--spep_3=40 445

------------------------------------------------------
-- 突撃( 100F)
------------------------------------------------------

playSe( SP_start+ spep_4, 1018);

setDisp( SP_start+ spep_4-1, 0, 0);

spnamkamehame_beam2 = entryEffect( SP_start+ spep_4, SP_05,  0x100,  -1,  0,  100,  -150);               -- かめはめ波文字


playSe( SP_start+ spep_4+30, SE_07);


-- ** エフェクト等 ** --
entryFadeBg( SP_start+ spep_4-14, 0, 166, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260

sen2 = entryEffectLife( SP_start+ spep_4-14, 921, 166, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+ spep_4-14, sen2, -150);
setEffScaleKey( SP_start+ spep_4-14, sen2, 1.6, 1.6);

--setShakeChara( SP_start+ spep_4+30+30, 0, 24, 30);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ spep_4+33, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+ spep_4+33, ct, 32, 5);
setEffAlphaKey( SP_start+ spep_4+33, ct, 255);
setEffAlphaKey( SP_start+ spep_4+47, ct, 255);
setEffAlphaKey( SP_start+ spep_4+55, ct, 0);
setEffScaleKey( SP_start+ spep_4+33, ct, 0.0, 0.0);
setEffScaleKey( SP_start+ spep_4+37, ct, 1.3, 1.3);
setEffScaleKey( SP_start+ spep_4+47, ct, 1.3, 1.3);
setEffScaleKey( SP_start+ spep_4+55, ct, 6.0, 6.0);
playSe( SP_start+ spep_4+55, SE_07);

entryFade( SP_start+ spep_4+58, 10,  7, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setScaleKey( SP_start+ spep_4+58+11,   0, 1.7, 1.7);
removeAllEffect( SP_start+spep_4+58+11);

--spep_6=spep_4+125+10+20;--spep_4=415

spep_6=spep_4+58+25;--spep_4=415


------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------

playSe( SP_start+ spep_6+20, SE_06);

--entryFade( SP_start+ spep_6+70, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( SP_start+ spep_6+75, 1, 0);

ryusen = entryEffectLife( SP_start+ spep_6-7, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( SP_start+ spep_6-7, ryusen, 210);
setEffScaleKey( SP_start+ spep_6-7, ryusen, 1.4, 1.4);

kamehame_beam3 = entryEffect( SP_start+ spep_6, SP_06,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start+spep_6, kamehame_beam3, 1.2, 1.2);
setEffScaleKey( SP_start+spep_6+80, kamehame_beam3, 1, 1);
--setEffScaleKey( SP_start+spep_6+84, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start+ spep_6+82, 1, 0);  -- ダメージ振動等


playSe( SP_start+ spep_6+85, SE_09);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ spep_6, 1, 99, 20);

entryFadeBg( SP_start+ spep_6-7, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー

ct = entryEffectLife( SP_start+ spep_6-5, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake( SP_start+spep_6-5, ct, 99, 20);
setEffScaleKey( SP_start+ spep_6-5, ct, 3, 3);
setEffRotateKey( SP_start+spep_6-5, ct, 70);
setEffAlphaKey( SP_start+spep_6-5, ct, 255);
setEffAlphaKey( SP_start+spep_6+35, ct, 255);
setEffAlphaKey( SP_start+spep_6+40, ct, 0);

ct = entryEffectLife( SP_start+ spep_6+62-15, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake( SP_start+spep_6+62-15, ct, 99, 20);
setEffScaleKey( SP_start+ spep_6+62-15, ct, 0.1, 0.1);
setEffScaleKey( SP_start+ spep_6+75-10, ct, 2.4, 2.4);
setEffScaleKey( SP_start+ spep_6+85-10, ct, 2.8, 2.8);
setEffAlphaKey( SP_start+spep_6+62-15, ct, 255);
setEffAlphaKey( SP_start+spep_6+95-10, ct, 255);
setEffAlphaKey( SP_start+spep_6+110-10, ct, 0);

entryFade( SP_start+ spep_6+85, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_6+100; --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( SP_start+  spep_5, 1, 1);
setMoveKey( SP_start+  spep_5,    1,  100,  0,   0);
setScaleKey( SP_start+  spep_5,    1,  1.0, 1.0);
setMoveKey( SP_start+  spep_5+ 1,    1,    0,   0,   128);
setScaleKey( SP_start+  spep_5+ 1,    1,  0.1, 0.1);

changeAnime( SP_start+  spep_5+ 9, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+  spep_5+ 9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+  spep_5+ 9, SE_10);

setMoveKey( SP_start+  spep_5+ 9,   1,    0,   0,   128);
setMoveKey( SP_start+  spep_5+ 16,   1,  -60,  -200,  -100);
--setMoveKey( SP_start+      486,   1,  -60,  -200,  -100);
setDamage( SP_start+  spep_5+ 17, 1, 0);  -- ダメージ振動等
setShake( SP_start+  spep_5+ 8,6,15);
setShake( SP_start+  spep_5+ 13,15,10);

setRotateKey( SP_start+  spep_5+ 1,  1,  30 );
setRotateKey( SP_start+  spep_5+ 3,  1,  80 );
setRotateKey( SP_start+  spep_5+ 5,  1, 120 );
setRotateKey( SP_start+  spep_5+ 7,  1, 160 );
setRotateKey( SP_start+  spep_5+ 9,  1, 200 );
setRotateKey( SP_start+  spep_5+ 11,  1, 260 );
setRotateKey( SP_start+  spep_5+ 13,  1, 320 );
setRotateKey( SP_start+  spep_5+ 15,  1,   0 );

setShakeChara( SP_start+  spep_5+ 16, 1, 5,  10);
setShakeChara( SP_start+  spep_5+ 120, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+  spep_5+ 16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+  spep_5+ 16, ct, 30, 10);
setEffRotateKey( SP_start+  spep_5+ 16, ct, -40);
setEffScaleKey( SP_start+  spep_5+ 16, ct, 4.0, 4.0);
setEffScaleKey( SP_start+  spep_5+ 17, ct, 2.0, 2.0);
setEffScaleKey( SP_start+  spep_5+ 18, ct, 2.6, 2.6);
setEffScaleKey( SP_start+  spep_5+ 19, ct, 4.0, 4.0);
setEffScaleKey( SP_start+  spep_5+ 20, ct, 2.6, 2.6);
setEffScaleKey( SP_start+  spep_5+ 21, ct, 3.8, 3.8);
setEffScaleKey( SP_start+  spep_5+ 111, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+  spep_5+ 16, ct, 255);
setEffAlphaKey( SP_start+  spep_5+ 101, ct, 255);
setEffAlphaKey( SP_start+  spep_5+ 111, ct, 0);

playSe( SP_start+  spep_5+ 4, SE_11);
shuchusen = entryEffectLife( SP_start+  spep_5+ 4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+  spep_5+ 4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+  spep_5+ 17);

entryFade( SP_start+  spep_5+ 101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+  spep_5+ 111);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
--changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( SP_start+ 80, SE_04);

entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_start+  70,   311, 99, 0x40,  0,  1,  -10,  -30); -- オーラ
setEffScaleKey( SP_start+ 30, aura, 1.6, 1.6);
setShakeChara( SP_start+ 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_start+  255,    0,   0,  0,   0);

------------------------------------------------------
-- ドーナツ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start+  259,    0,      -500,  250,   0);
setMoveKey( SP_start+  270,    0,   -150,  150,   0);
setMoveKey( SP_start+  290,    0,   -150,  150,   0);

playSe( SP_start+ 265, SE_06);


kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( SP_start+ 260, kamehame_beam, 1.0, 1.0);

--playSe( SP_start+ 260+20, SE_07);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え


setMoveKey( SP_start+  290,    0,   -300,  200,   70);
setMoveKey( SP_start+  302,    0,   -450,  220,   120);
setMoveKey( SP_start+  355,    0,   -900,  0,   0);


--entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( SP_start+ 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

--entryEffectLife( SP_start+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
sen2 = entryEffectLife( SP_start+ 260, 921, 107, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+260, sen2, 190);
setEffScaleKey( SP_start+260, sen2, 1.3, 1.3);
setShakeChara( SP_start+ 305, 0, 54, 50);

--setShakeChara( SP_start+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);

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

entryFade( SP_start+ 355, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( SP_start+ 355,   0, 1.0, 1.0);

removeAllEffect( SP_start+358);

------------------------------------------------------
-- ドーナツ迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  0,  0,   0);
setMoveKey( SP_start+  370,    1,  0,  0,   0);
setMoveKey( SP_start+  371,    1,  0,  0,   0);
setScaleKey( SP_start+ 369,    1,  1.5, 1.5);
setScaleKey( SP_start+ 370,    1,  1.5, 1.5);
setRotateKey( SP_start+ 370 , 1 , 20);

setMoveKey( SP_start+  394,    1,   0,  0,   0);
setScaleKey( SP_start+  394,   1,   1.6,  1.6);

sen2 = entryEffectLife( SP_start+ 370, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( SP_start+260, sen2, -70);
setEffScaleKey( SP_start+260, sen2, 1.6, 1.6);

gurumae = entryEffectLife( SP_start+ 370, SP_03, 80 ,  0x100 , 1,  0,  0,  -100);--ドーナツ前
gurugo = entryEffectLife( SP_start+ 370, SP_04, 80 ,  0x80 , 1,  0,  0,  -100);--ドーナツ後

setEffAlphaKey( SP_start+370, gurumae, 255);
setEffAlphaKey( SP_start+370, gurugo, 255);

spep_3=40;

entryFade( SP_start+ spep_3+405, 6,  8, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade--spep_3+422
setEffAlphaKey( SP_start+spep_3+411, gurumae, 255);
setEffAlphaKey( SP_start+spep_3+411, gurugo, 255);
setDisp( SP_start+ spep_3+411, 1, 0);

setEffAlphaKey( SP_start+spep_3+414, gurumae, 0);
setEffAlphaKey( SP_start+spep_3+414, gurugo, 0);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start+ 370, 0, 90, 0, 10, 10, 10, 150);          -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 428, 10007, 65, 0, -1, 0, -100, 255); -- ギュンッ
setEffShake( SP_start+428, ct, 99, 20);
setEffScaleKey( SP_start+ 428, ct, 2.4, 2.4);
setEffRotateKey( SP_start+405, ct, 0);
--setEffAlphaKey( SP_start+415, ct, 155);
setEffAlphaKey( SP_start+428, ct, 255);
setEffAlphaKey( SP_start+450, ct, 0);

playSe( SP_start+ 428, 1017);

--playSe( SP_start+ 428, 1015);
--playSe( SP_start+ 428, SE_06);


setMoveKey( SP_start+  spep_3+411,    1,   0,  0,   0);
setScaleKey( SP_start+  spep_3+415,   1,   1.6,  1.6);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 329; --エンドフェイズのフレーム数を置き換える

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

spep_4=spep_3+432;--spep_3=40 445

------------------------------------------------------
-- 突撃( 100F)
------------------------------------------------------

playSe( SP_start+ spep_4, 1018);

setDisp( SP_start+ spep_4-1, 0, 0);

spnamkamehame_beam2 = entryEffect( SP_start+ spep_4, SP_05,  0x100,  -1,  0,  100,  -150);               -- かめはめ波文字


playSe( SP_start+ spep_4+30, SE_07);


-- ** エフェクト等 ** --
entryFadeBg( SP_start+ spep_4-14, 0, 166, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260

sen2 = entryEffectLife( SP_start+ spep_4-14, 921, 166, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+ spep_4-14, sen2, -150);
setEffScaleKey( SP_start+ spep_4-14, sen2, 1.6, 1.6);

--setShakeChara( SP_start+ spep_4+30+30, 0, 24, 30);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ spep_4+33, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+ spep_4+33, ct, 32, 5);
setEffAlphaKey( SP_start+ spep_4+33, ct, 255);
setEffAlphaKey( SP_start+ spep_4+47, ct, 255);
setEffAlphaKey( SP_start+ spep_4+55, ct, 0);
setEffScaleKey( SP_start+ spep_4+33, ct, 0.0, 0.0);
setEffScaleKey( SP_start+ spep_4+37, ct, 1.3, 1.3);
setEffScaleKey( SP_start+ spep_4+47, ct, 1.3, 1.3);
setEffScaleKey( SP_start+ spep_4+55, ct, 6.0, 6.0);
playSe( SP_start+ spep_4+55, SE_07);

entryFade( SP_start+ spep_4+58, 10,  7, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setScaleKey( SP_start+ spep_4+58+11,   0, 1.7, 1.7);
removeAllEffect( SP_start+spep_4+58+11);

--spep_6=spep_4+125+10+20;--spep_4=415

spep_6=spep_4+58+25;--spep_4=415


------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------

playSe( SP_start+ spep_6+20, SE_06);

--entryFade( SP_start+ spep_6+70, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( SP_start+ spep_6+75, 1, 0);

ryusen = entryEffectLife( SP_start+ spep_6-7, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( SP_start+ spep_6-7, ryusen, 210);
setEffScaleKey( SP_start+ spep_6-7, ryusen, 1.4, 1.4);

kamehame_beam3 = entryEffect( SP_start+ spep_6, SP_06,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start+spep_6, kamehame_beam3, 1.2, 1.2);
setEffScaleKey( SP_start+spep_6+80, kamehame_beam3, 1, 1);
--setEffScaleKey( SP_start+spep_6+84, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start+ spep_6+82, 1, 0);  -- ダメージ振動等


playSe( SP_start+ spep_6+85, SE_09);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ spep_6, 1, 99, 20);

entryFadeBg( SP_start+ spep_6-7, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー

ct = entryEffectLife( SP_start+ spep_6-5, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake( SP_start+spep_6-5, ct, 99, 20);
setEffScaleKey( SP_start+ spep_6-5, ct, 3, 3);
setEffRotateKey( SP_start+spep_6-5, ct, -70);
setEffAlphaKey( SP_start+spep_6-5, ct, 255);
setEffAlphaKey( SP_start+spep_6+35, ct, 255);
setEffAlphaKey( SP_start+spep_6+40, ct, 0);

ct = entryEffectLife( SP_start+ spep_6+62-15, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake( SP_start+spep_6+62-15, ct, 99, 20);
setEffScaleKey( SP_start+ spep_6+62-15, ct, 0.1, 0.1);
setEffScaleKey( SP_start+ spep_6+75-10, ct, 2.4, 2.4);
setEffScaleKey( SP_start+ spep_6+85-10, ct, 2.8, 2.8);
setEffAlphaKey( SP_start+spep_6+62-15, ct, 255);
setEffAlphaKey( SP_start+spep_6+95-10, ct, 255);
setEffAlphaKey( SP_start+spep_6+110-10, ct, 0);

entryFade( SP_start+ spep_6+85, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_6+100; --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( SP_start+  spep_5, 1, 1);
setMoveKey( SP_start+  spep_5,    1,  100,  0,   0);
setScaleKey( SP_start+  spep_5,    1,  1.0, 1.0);
setMoveKey( SP_start+  spep_5+ 1,    1,    0,   0,   128);
setScaleKey( SP_start+  spep_5+ 1,    1,  0.1, 0.1);

changeAnime( SP_start+  spep_5+ 9, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+  spep_5+ 9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+  spep_5+ 9, SE_10);

setMoveKey( SP_start+  spep_5+ 9,   1,    0,   0,   128);
setMoveKey( SP_start+  spep_5+ 16,   1,  -60,  -200,  -100);
--setMoveKey( SP_start+      486,   1,  -60,  -200,  -100);
setDamage( SP_start+  spep_5+ 17, 1, 0);  -- ダメージ振動等
setShake( SP_start+  spep_5+ 8,6,15);
setShake( SP_start+  spep_5+ 13,15,10);

setRotateKey( SP_start+  spep_5+ 1,  1,  30 );
setRotateKey( SP_start+  spep_5+ 3,  1,  80 );
setRotateKey( SP_start+  spep_5+ 5,  1, 120 );
setRotateKey( SP_start+  spep_5+ 7,  1, 160 );
setRotateKey( SP_start+  spep_5+ 9,  1, 200 );
setRotateKey( SP_start+  spep_5+ 11,  1, 260 );
setRotateKey( SP_start+  spep_5+ 13,  1, 320 );
setRotateKey( SP_start+  spep_5+ 15,  1,   0 );

setShakeChara( SP_start+  spep_5+ 16, 1, 5,  10);
setShakeChara( SP_start+  spep_5+ 120, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+  spep_5+ 16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+  spep_5+ 16, ct, 30, 10);
setEffRotateKey( SP_start+  spep_5+ 16, ct, -40);
setEffScaleKey( SP_start+  spep_5+ 16, ct, 4.0, 4.0);
setEffScaleKey( SP_start+  spep_5+ 17, ct, 2.0, 2.0);
setEffScaleKey( SP_start+  spep_5+ 18, ct, 2.6, 2.6);
setEffScaleKey( SP_start+  spep_5+ 19, ct, 4.0, 4.0);
setEffScaleKey( SP_start+  spep_5+ 20, ct, 2.6, 2.6);
setEffScaleKey( SP_start+  spep_5+ 21, ct, 3.8, 3.8);
setEffScaleKey( SP_start+  spep_5+ 111, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+  spep_5+ 16, ct, 255);
setEffAlphaKey( SP_start+  spep_5+ 101, ct, 255);
setEffAlphaKey( SP_start+  spep_5+ 111, ct, 0);

playSe( SP_start+  spep_5+ 4, SE_11);
shuchusen = entryEffectLife( SP_start+  spep_5+ 4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+  spep_5+ 4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+  spep_5+ 17);

entryFade( SP_start+  spep_5+ 101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+  spep_5+ 111);

end

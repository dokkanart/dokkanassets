

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

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

SP_01 = 150248;--ef_001(120f) 導入
SP_02 = 150249;--ef_002(100f) 目から発光
SP_03 = 150250;--ef_003(180f) 光線放つ
SP_04 = 150251;--ef_004(100f)迫る光線
SP_05 = 190002;--ギャン赤

multi_frm = 2;

--自バトルキャラはエフェクトに実装しています
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

------------------------------------------------------
-- 導入　気溜め(120F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI( 0, 0);

shuchusen1 = entryEffectLife( 0, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen1, 1.5, 1.5);
setEffAlphaKey( 0, shuchusen1, 255);

entryFade( 0, 0,  4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



entryFadeBg( 3, 0, 120, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** エフェクト等 ** -- エフェクトにバトルキャラもオーラも入っています
kamae = entryEffect( 3, SP_01, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( 3, kamae, 1.0, 1.0);
setEffShake(3, kamae, 120, 10);


playSe(30, SE_04);
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct = entryEffectLife(  40, 190006, 89, 0x100, -1, 0, -150, 500);    -- ゴゴゴゴゴ
setEffShake( 40, ct, 40, 8);
setEffScaleKey( 40, ct, 0.8, 0.8);
setEffAlphaKey( 40, ct, 255);


setEffScaleKey( 120, shuchusen1, 1.5, 1.5);
setEffScaleKey( 120, kamae, 1.0, 1.0);
entryFade( 114, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

setEffAlphaKey( 116, ct, 255);
setEffAlphaKey( 117, ct, 0);


-----------------------------------------------------
-- 目から発光(100F)
------------------------------------------------------
playSe(122, SE_01);
stopSe(214,SE_01,6);

ryusen1 = entryEffectLife( 118, 914, 100, 0x80,  -1, 0,  0,  0);   -- 流線横
setEffScaleKey( 118, ryusen1, 1, 1);
setEffAlphaKey( 118, ryusen1, 255);

entryFadeBg( 118, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景

entryFadeBg( 140, 60, 20, 0, fcolor_r, fcolor_g, fcolor_b, 255);          -- ベース白め　背景

pikapika = entryEffect( 118, SP_02, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( 118, pikapika, 1.0, 1.0);
setEffShake(118, pikapika, 100, 10);

shuchusen2 = entryEffectLife( 118, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 118, shuchusen2, 1.5, 1.5);
setEffAlphaKey( 118, shuchusen2, 255);


entryFade( 212, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setEffScaleKey( 218, pikapika, 1.0, 1.0);
setEffScaleKey( 218, shuchusen2, 1.5, 1.5);
spep_1 =214 ; --ここまでOK
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = spep_1 + 4 ;

playSe( spep_2, SE_05);
speff = entryEffect( spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spep_3= spep_2+ 90;

entryFade( spep_3-5, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
--ef_003 光線放つ(180F)
------------------------------------------------------
spep_3= spep_2+ 90;

ryusen1 = entryEffectLife( spep_3, 914, 180, 0x80,  -1, 0,  0,  0);   -- 流線横
setEffScaleKey( spep_3, ryusen1, 1, 1);
setEffAlphaKey( spep_3, ryusen1, 255);

hassya = entryEffect( spep_3,  SP_03,   0x100,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_3, hassya, 1.0, 1.0);
setEffScaleKey( spep_3+180, hassya, 1.0, 1.0);

shuchusen2 = entryEffectLife( spep_3, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen1, 255);

entryFadeBg( spep_3, 0, 180, 0, 10, 10, 10, 180);          -- ベース暗め　背景

entryFadeBg( spep_3+30, 150, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);          -- ベース白め　背景

playSe(spep_3+20, SE_06);

-- 書き文字エントリー
ct1 = entryEffectLife( spep_3+20, 10012, 99, 0x100, -1, 0, 0, 350);    -- ズオッ
setEffShake(spep_3+20, ct1, 40, 28);
setEffScaleKey(spep_3+20, ct1, 2.4, 2.4);
setEffRotateKey(spep_3+20, ct1, 30);
setEffScaleKey(spep_3+50, ct1, 2.4, 2.4);
setEffAlphaKey( spep_3, ct1, 255);

setEffAlphaKey( spep_3+50, ct1, 255);
setEffScaleKey(spep_3+70, ct1, 4, 4);
setEffAlphaKey( spep_3+60, ct1, 0);


entryFade( spep_3+176, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--ef_004 光線迫る(100F)
------------------------------------------------------
spep_4= spep_3+ 180;
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setAnimeLoop( spep_4, 1, 1);

setMoveKey(  spep_4-1,    1,  235,  0,   0);
setMoveKey(  spep_4,    1,  235,  0,   0);
setMoveKey(  spep_4+1,    1,  235,  0,   0);
setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  0.7, 0.7);

setMoveKey(  spep_4+30,    1,   120,  0,   0);
setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4, SE_06);

kamehame_beam2 = entryEffect( spep_4, SP_04,   0, -1,  0,  0,  0);   -- 迫るかめはめ波

setDamage( spep_4+70, 1, 0);  -- ダメージ振動等

playSe( spep_4+70, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( spep_4+50, 1, 108);
setAnimeLoop( spep_4+50, 1, 1);
setMoveKey(  spep_4+50, 1,  120,    0,  0);--455
setMoveKey(  spep_4+64, 1,  400,    0,  0);
setScaleKey( spep_4+50, 1,  1.6, 1.6);
setScaleKey( spep_4+53, 1,  1.5, 1.5);
setScaleKey( spep_4+63, 1,  0.2, 0.2);
setScaleKey( spep_4+73, 1,  0.2, 0.2);
setScaleKey( spep_4+90, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

--shuchusen = entryEffectLife(  spep_4, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( spep_4, shuchusen, 1.3, 1.3);

entryFadeBg( spep_4, 0, 100, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_4, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, 100, 255); -- ズドドッ
setEffShake( spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey( spep_4, ct, 70);
setEffAlphaKey( spep_4, ct, 255);
setEffAlphaKey(spep_4+60, ct, 255);
setEffAlphaKey(spep_4+80, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 500; --エンドフェイズのフレーム数を置き換える

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


spep_5=spep_4+70

gyan = entryEffect( spep_5,  SP_05,   0x100,     -1,  0,  0,  0);   --ギャン
setEffScaleKey( spep_5, gyan, 1.0, 1.0);
setEffScaleKey( spep_5+180, gyan, 1.0, 1.0);


ct = entryEffectLife( spep_5+15, 10006, 45, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake(spep_5+15, ct, 99, 20);
setEffScaleKey( spep_5+15, ct, 0.1, 0.1);
setEffScaleKey( spep_5+20, ct, 2.4, 2.4);
setEffScaleKey( spep_5+55, ct, 2.8, 2.8);
setEffAlphaKey(spep_5+15, ct, 255);
setEffAlphaKey(spep_5+20, ct, 255);
setEffAlphaKey(spep_5+50, ct, 0);

entryFade( spep_5+46, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_6=spep_5+50

setDisp( spep_6, 1, 1);
setMoveKey(  spep_6,    1,  100,  0,   0);
setScaleKey( spep_6,    1,  1.0, 1.0);
setMoveKey(  spep_6+1,    1,    0,   0,   128);

setScaleKey( spep_6+1,    1,  0.1, 0.1);

changeAnime( spep_6+1, 1, 107);                         -- 手前ダメージ
setAnimeLoop( spep_6+1, 1, 1);
entryEffect( spep_6+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+9, SE_10);

setMoveKey(  spep_6+9,   1,    0,   0,   128);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_6+17, 1, 0);  -- ダメージ振動等--486
setShake( spep_6+8,6,15);
setShake(spep_6+14,15,10);

setRotateKey( spep_6+1,  1,  30 );
setRotateKey( spep_6+3,  1,  80 );
setRotateKey( spep_6+5,  1, 120 );
setRotateKey( spep_6+7,  1, 160 );
setRotateKey( spep_6+9,  1, 200 );
setRotateKey( spep_6+11,  1, 260 );
setRotateKey( spep_6+13,  1, 320 );
setRotateKey( spep_6+15,  1,   0 );

setShakeChara( spep_6+16, 1, 5,  10);
setShakeChara( spep_6+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_6+16, ct, 30, 10);
setEffRotateKey( spep_6+16, ct, -40);
setEffScaleKey( spep_6+16, ct, 4.0, 4.0);
setEffScaleKey( spep_6+17, ct, 2.0, 2.0);
setEffScaleKey( spep_6+18, ct, 2.6, 2.6);
setEffScaleKey( spep_6+19, ct, 4.0, 4.0);
setEffScaleKey( spep_6+20, ct, 2.6, 2.6);
setEffScaleKey( spep_6+21, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+16, ct, 255);
setEffAlphaKey( spep_6+106, ct, 255);
setEffAlphaKey( spep_6+116, ct, 0);

playSe( spep_6+15, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+111);

else



-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 導入　気溜め(120F)
------------------------------------------------------

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setVisibleUI( 0, 0);

shuchusen1 = entryEffectLife( 0, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen1, 1.5, 1.5);
setEffAlphaKey( 0, shuchusen1, 255);

entryFade( 0, 0,  4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



entryFadeBg( 3, 0, 120, 0, 10, 10, 10, 180);          -- ベース暗め　背景

-- ** エフェクト等 ** -- エフェクトにバトルキャラもオーラも入っています
kamae = entryEffect( 3, SP_01, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( 3, kamae, 1.0, 1.0);
setEffShake(3, kamae, 120, 10);


playSe(30, SE_04);
--speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- 書き文字エントリー
ct = entryEffectLife(  40, 190006, 89, 0x100, -1, 0, 0, 350);    -- ゴゴゴゴゴ
setEffShake( 40, ct, 40, 8);
setEffScaleKey( 40, ct, -0.8, 0.8);
setEffAlphaKey( 40, ct, 255);


setEffScaleKey( 120, shuchusen1, 1.5, 1.5);
setEffScaleKey( 120, kamae, 1.0, 1.0);
entryFade( 114, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

setEffAlphaKey( 116, ct, 255);
setEffAlphaKey( 117, ct, 0);


-----------------------------------------------------
-- 目から発光(100F)
------------------------------------------------------
playSe(122, SE_01);
stopSe(214,SE_01,6);

ryusen1 = entryEffectLife( 118, 914, 100, 0x80,  -1, 0,  0,  0);   -- 流線横
setEffScaleKey( 118, ryusen1, 1, 1);
setEffAlphaKey( 118, ryusen1, 255);

entryFadeBg( 118, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景

entryFadeBg( 140, 60, 20, 0, fcolor_r, fcolor_g, fcolor_b, 255);          -- ベース白め　背景

pikapika = entryEffect( 118, SP_02, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( 118, pikapika, 1.0, 1.0);
setEffShake(118, pikapika, 100, 10);

shuchusen2 = entryEffectLife( 118, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 118, shuchusen2, 1.5, 1.5);
setEffAlphaKey( 118, shuchusen2, 255);


entryFade( 212, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setEffScaleKey( 218, pikapika, 1.0, 1.0);
setEffScaleKey( 218, shuchusen2, 1.5, 1.5);
spep_1 =214 ; --ここまでOK
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = spep_1 + 4 ;

playSe( spep_2, SE_05);
speff = entryEffect( spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spep_3= spep_2+ 90;

entryFade( spep_3-5, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
--ef_003 光線放つ(180F)
------------------------------------------------------
spep_3= spep_2+ 90;

ryusen1 = entryEffectLife( spep_3, 914, 180, 0x80,  -1, 0,  0,  0);   -- 流線横
setEffScaleKey( spep_3, ryusen1, 1, 1);
setEffAlphaKey( spep_3, ryusen1, 255);

hassya = entryEffect( spep_3,  SP_03,   0x100,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_3, hassya, 1.0, 1.0);
setEffScaleKey( spep_3+180, hassya, 1.0, 1.0);

shuchusen2 = entryEffectLife( spep_3, 906, 180, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen1, 255);

entryFadeBg( spep_3, 0, 180, 0, 10, 10, 10, 180);          -- ベース暗め　背景

entryFadeBg( spep_3+30, 150, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);          -- ベース白め　背景

playSe(spep_3+20, SE_06);

-- 書き文字エントリー
ct1 = entryEffectLife( spep_3+20, 10012, 99, 0x100, -1, 0, 0, 350);    -- ズオッ
setEffShake(spep_3+20, ct1, 40, 28);
setEffScaleKey(spep_3+20, ct1, 2.4, 2.4);
setEffRotateKey(spep_3+20, ct1, -30);
setEffScaleKey(spep_3+50, ct1, 2.4, 2.4);
setEffAlphaKey( spep_3, ct1, 255);

setEffAlphaKey( spep_3+50, ct1, 255);
setEffScaleKey(spep_3+70, ct1, 4, 4);
setEffAlphaKey( spep_3+60, ct1, 0);


entryFade( spep_3+176, 2, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
--ef_004 光線迫る(100F)
------------------------------------------------------
spep_4= spep_3+ 180;
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setAnimeLoop( spep_4, 1, 1);

setMoveKey(  spep_4-1,    1,  235,  0,   0);
setMoveKey(  spep_4,    1,  235,  0,   0);
setMoveKey(  spep_4+1,    1,  235,  0,   0);
setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  0.7, 0.7);

setMoveKey(  spep_4+30,    1,   120,  0,   0);
setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4, SE_06);

kamehame_beam2 = entryEffect( spep_4, SP_04,   0, -1,  0,  0,  0);   -- 迫るかめはめ波

setDamage( spep_4+70, 1, 0);  -- ダメージ振動等

playSe( spep_4+70, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( spep_4+50, 1, 108);
setAnimeLoop( spep_4+50, 1, 1);
setMoveKey(  spep_4+50, 1,  120,    0,  0);--455
setMoveKey(  spep_4+64, 1,  400,    0,  0);
setScaleKey( spep_4+50, 1,  1.6, 1.6);
setScaleKey( spep_4+53, 1,  1.5, 1.5);
setScaleKey( spep_4+63, 1,  0.2, 0.2);
setScaleKey( spep_4+73, 1,  0.2, 0.2);
setScaleKey( spep_4+90, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

--shuchusen = entryEffectLife(  spep_4, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( spep_4, shuchusen, 1.3, 1.3);

entryFadeBg( spep_4, 0, 100, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_4, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, 100, 255); -- ズドドッ
setEffShake( spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey( spep_4, ct, -70);
setEffAlphaKey( spep_4, ct, 255);
setEffAlphaKey(spep_4+60, ct, 255);
setEffAlphaKey(spep_4+80, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 500; --エンドフェイズのフレーム数を置き換える

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


spep_5=spep_4+70

gyan = entryEffect( spep_5,  SP_05,   0x100,     -1,  0,  0,  0);   --ギャン
setEffScaleKey( spep_5, gyan, 1.0, 1.0);
setEffScaleKey( spep_5+180, gyan, 1.0, 1.0);


ct = entryEffectLife( spep_5+15, 10006, 45, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake(spep_5+15, ct, 99, 20);
setEffScaleKey( spep_5+15, ct, 0.1, 0.1);
setEffScaleKey( spep_5+20, ct, 2.4, 2.4);
setEffScaleKey( spep_5+55, ct, 2.8, 2.8);
setEffAlphaKey(spep_5+15, ct, 255);
setEffAlphaKey(spep_5+20, ct, 255);
setEffAlphaKey(spep_5+50, ct, 0);

entryFade( spep_5+46, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_6=spep_5+50

setDisp( spep_6, 1, 1);
setMoveKey(  spep_6,    1,  100,  0,   0);
setScaleKey( spep_6,    1,  1.0, 1.0);
setMoveKey(  spep_6+1,    1,    0,   0,   128);

setScaleKey( spep_6+1,    1,  0.1, 0.1);

changeAnime( spep_6+1, 1, 107);                         -- 手前ダメージ
setAnimeLoop( spep_6+1, 1, 1);
entryEffect( spep_6+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+9, SE_10);

setMoveKey(  spep_6+9,   1,    0,   0,   128);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_6+17, 1, 0);  -- ダメージ振動等--486
setShake( spep_6+8,6,15);
setShake(spep_6+14,15,10);

setRotateKey( spep_6+1,  1,  30 );
setRotateKey( spep_6+3,  1,  80 );
setRotateKey( spep_6+5,  1, 120 );
setRotateKey( spep_6+7,  1, 160 );
setRotateKey( spep_6+9,  1, 200 );
setRotateKey( spep_6+11,  1, 260 );
setRotateKey( spep_6+13,  1, 320 );
setRotateKey( spep_6+15,  1,   0 );

setShakeChara( spep_6+16, 1, 5,  10);
setShakeChara( spep_6+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_6+16, ct, 30, 10);
setEffRotateKey( spep_6+16, ct, -40);
setEffScaleKey( spep_6+16, ct, 4.0, 4.0);
setEffScaleKey( spep_6+17, ct, 2.0, 2.0);
setEffScaleKey( spep_6+18, ct, 2.6, 2.6);
setEffScaleKey( spep_6+19, ct, 4.0, 4.0);
setEffScaleKey( spep_6+20, ct, 2.6, 2.6);
setEffScaleKey( spep_6+21, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+16, ct, 255);
setEffAlphaKey( spep_6+106, ct, 255);
setEffAlphaKey( spep_6+116, ct, 0);

playSe( spep_6+15, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+111);

end



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

SP_01 = 150107;--迫る1
SP_02 = 150108;--迫る2
SP_03 = 150109;--突撃
SP_04 = 150110;--蹴り
SP_05 = 150115;--溜め
SP_06 = 150116;--発射
SP_07 = 150117;--迫る
SP_08 = 150114;--大爆発

SP_03e = 150118;--突撃
SP_06e = 150119;--発射

multi_frm = 2;

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
setDisp( 0, 0, 0);
entryFadeBg( 0, 0, 177, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffect( 0,  11,  0x80,  -1,  0,  0,  -20);--爆破
playSe( 0, 1033);--SE

setVisibleUI(0, 0);
--
playSe( 30, 1035); --かめはめ波

semaru = entryEffect(  0,   SP_01,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了

setEffShake(0, ulgohann, 110, 7);

entryFade( 56, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffect(  60,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  60,   1502,   0x80,     -1,  0,  0,  0);   -- eff_003 (気)

semaru2 = entryEffect(  60, SP_02,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
playSe( 120, 1018);


speff = entryEffect(  60,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  60,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


entryFade( 150, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( 0, 150, 10);

-- 書き文字エントリー
ct = entryEffectLife( 60, 10008, 95, 0x100, -1, 0, 0, 300);    -- ゴゴゴ・・・
setEffShake(60, ct, 95, 8);
setEffScaleKey(60, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 177, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 82, shuchusen5, 1.0, 1.0);


spep_2 = 157;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260

------------------------------------------------------
-- 突進
------------------------------------------------------
playSe( spep_6, 1018);

setRotateKey( spep_6 , 1 , 0);

changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.7, 1.7);
setMoveKey(  spep_6,  1, 1000,  -5,   0);
setRotateKey( spep_6,  1,  -5 );

setShake( spep_6, 72, 5);

--P移動

totugeki = entryEffect(  spep_6,   SP_03,   0,     -1,  0,  0,  0);   -- 突撃

-- 書き文字エントリー
ct = entryEffectLife( spep_6, 10012, 61, 0, -1, 0, 200, 200); -- ズオッ
setEffShake(spep_6, ct, 32, 5);
setEffAlphaKey(spep_6, ct, 255);
setEffAlphaKey(spep_6+41, ct, 255);
setEffAlphaKey(spep_6+51, ct, 0);
setEffScaleKey(spep_6, ct, 0.0, 0.0);
setEffScaleKey(spep_6+11, ct, 1.8, 1.8);
setEffScaleKey(spep_6+41, ct, 1.8, 1.8);
setEffScaleKey(spep_6+51, ct, 6.0, 6.0);

setEffShake(spep_6, ct, 50, 50);


entryEffectLife( spep_6+76, 10011, 10, 0x100, -1, 0, 200, 50);    -- シュンッ
entryEffectLife( spep_6+76, 10011, 10, 0x100, -1, 0, 0, 250);    -- シュンッ

playSe( spep_6+72, 43);


setMoveKey(  spep_6+81,  1, 1000,  -50,   0);
setMoveKey(  spep_6+112,  1, 0,  -50,   0);
setMoveKey(  spep_6+112,  0, 0,  -50,   0);

------------------------------------------------------
--連撃
------------------------------------------------------

spep_9=spep_6+152; --17号と18号連撃の開始

--setEnvZoomEnable(spep_9,1);
--setEnvZoomEnable(spep_9+90,0);

playSe( spep_9,1052);--SE
playSe( spep_9+40,1009);--SE
playSe( spep_9+50,1001);--SE
playSe( spep_9+60,1000);--SE
playSe( spep_9+70,1009);--SE
playSe( spep_9+80,1006);--SE
playSe( spep_9+90,1052);--SE

playSe( spep_9+120,1018);--SE
playSe( spep_9+150,43);--SE

changeAnime( spep_9,   1, 106 ); --敵モーション
changeAnime( spep_9+45,   1, 105 ); --敵モーション
changeAnime( spep_9+90,   1, 106 ); --敵モーション

setRotateKey( spep_9-1 , 1 , 0);
setRotateKey( spep_9 , 1 , -85);
setRotateKey( spep_9+158 , 1 , -85);
setRotateKey( spep_9+168 , 1 , 0);

setShakeChara( spep_9, 1, 79, 30);
setShake( spep_9, 89, 20);

setShake( spep_9+108, 69, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_9, 10021, 61, 0, -1, 0, 0, 300); -- バゴォッ
setEffShake(spep_9, ct, 32, 10);
setEffAlphaKey(spep_9, ct, 255);
setEffAlphaKey(spep_9+11, ct, 255);
setEffAlphaKey(spep_9+21, ct, 0);
setEffScaleKey(spep_9, ct, 0.0, 0.0);
setEffScaleKey(spep_9+4, ct, 1.8, 1.8);
setEffScaleKey(spep_9+11, ct, 1.8, 1.8);
setEffScaleKey(spep_9+21, ct, 6.0, 6.0);

hit = entryEffect( spep_9,   4,   0,  1,  0,  0,  0);    --HIT 
setEffScaleKey( spep_9, hit, 2, 2);

hit = entryEffect( spep_9+90,   4,   0,  1,  0,  0,  0);    --HIT 
setEffScaleKey( spep_9+90, hit, 2, 2);


setDamage( spep_9, 1, 0);  -- ダメージ振動等

--この辺りから上へ移動

setMoveKey(  spep_9+98,  1, 0,  -50,   0);
setMoveKey(  spep_9+108,  1, 0,  1700,   0);

setDisp( spep_9+110, 1, 0);

ryusen_1=entryEffectLife( spep_6, 920, 240, 0x80,  -1,  0,  0,  0); -- 流線 90-30
setEffScaleKey(  spep_6, ryusen_1, 1.3, 1.3);

shuchusen8 = entryEffectLife( spep_6, 906, 300, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen8, 1.5, 1.5);

ryusen_1=entryEffectLife( spep_9+90, 920, 88, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
setEffRotateKey( spep_9+90,ryusen_1,-90);
setEffScaleKey(  spep_9+90, ryusen_1, 1.6, 1.6);


entryFade( spep_6+323, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_6+322,  1, 0,  1700,   0);
setScaleKey( spep_6+330, 1, 1.7, 1.7);

entryFadeBg( spep_6, 0, 330, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 393; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,  0, 0,  -50,   0);
setMoveKey(  SP_dodge+9,  0, -1100,  -50,   0);

endPhase(SP_dodge+10);

do return end
else end


------------------------------------------------------
--蹴り
------------------------------------------------------

spep_10=spep_6+323; --２カット目の開始 90-30


setMoveKey(   spep_10,   1, 0, -1036, 0);
setDisp( spep_10+5, 1, 1);
keri = entryEffect(  spep_10+40,  SP_04,   0,     -1,  0,  0,  0);   -- 蹴り

setShake( spep_10, 60, 5);
setShake( spep_10+65, 25, 15);

setShakeChara( spep_10+65, 1, 10, 30);

setMoveKey(   spep_10+20,   1, 0, -200, 0);
setMoveKey(   spep_10+65,   1, 0, -200, 0);
setMoveKey(   spep_10+70,   1, 0, -1000, 0);

hit = entryEffect( spep_10+60,   4,   0,  1,  0,  0,  0);    --HIT 
setEffScaleKey( spep_10+60, hit, 2, 2);

playSe( spep_10+60,1052);--SE

ryusen_1=entryEffectLife( spep_10, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
setEffRotateKey(spep_10,ryusen_1,-90);
setEffScaleKey(  spep_10, ryusen_1, 1.6, 1.6);

entryFade( spep_10+92, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   spep_10+101,   1, 0, -1000, 0);
setDisp( spep_10+101, 1, 0);
setScaleKey( spep_10+101, 1, 1.7, 1.7);

entryFadeBg( spep_10, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

spep_7=spep_10+105; --211 260

setMoveKey(  spep_7,  1, 0,  1000,   0);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setDisp( spep_7, 0, 0);
setDisp( spep_7, 1, 0);

playSe( spep_7+4, SE_04);

playSe( spep_7+11, SE_03);
playSe( spep_7+31, SE_03);
playSe( spep_7+51, SE_03);
playSe( spep_7+71, SE_03);

kame_hand = entryEffect( spep_7, SP_05, 0x100,  -1, 0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_7, kame_hand, 1.4, 1.4);

setShake( spep_7, 95, 10);

entryFade( spep_7+95, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_7, 0, 101, 0, 10, 10, 10, 180);       -- ベース暗め　背景

spep_5=spep_7+102; --260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_5, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  spep_5-1,    0,      0,  -80,   0);
setMoveKey(  spep_5,    0,   -600,  -80,   0);
setMoveKey(  spep_5+1,    0,   -600,  -80,   0);
setMoveKey(  spep_5+10,    0,   -100,  -80,   0);

kamehame_beam = entryEffectLife( spep_5, SP_06, 109, 0x40,  0,  300,  0,  -50);   -- 伸びるかめはめ波
setEffScaleKey( spep_5, kamehame_beam, 1.2, 1.2);
setEffScaleKey( spep_5+45, kamehame_beam, 1.2, 1.2);
setEffScaleKey( spep_5+46, kamehame_beam, 2.0, 2.0);
setEffMoveKey( spep_5+45, kamehame_beam,0,  -50, 0);
setEffMoveKey( spep_5+46, kamehame_beam,0,  -270, 0);

playSe( spep_5, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  spep_5+39,    0,   -100,  -80,   0);
setMoveKey(  spep_5+40,    0,   -100,  -80,   0);
setMoveKey(  spep_5+48,    0,   -900,  -80,   0);

entryFade( spep_5+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_5, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_5, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_5+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_5, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

shuchusen = entryEffectLife( spep_5, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_5+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_5+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_5+8, ct, 32, 5);

setEffAlphaKey(spep_5+8, ct, 255);
setEffAlphaKey(spep_5+30, ct, 255);
setEffAlphaKey(spep_5+40, ct, 0);

setEffScaleKey(spep_5+8, ct, 0.0, 0.0);
setEffScaleKey(spep_5+12, ct, 1.3, 1.3);
setEffScaleKey(spep_5+32, ct, 1.3, 1.3);
setEffScaleKey(spep_5+40, ct, 6.0, 6.0);
playSe( spep_5+40, SE_07);

setShake( spep_5, 95, 5);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( spep_5+110, 0, 0);
setDisp( spep_5+110, 1, 1);
setRotateKey(spep_5+111,1,0);  

changeAnime( spep_5+110, 1, 104);                        -- ガード
setMoveKey(  spep_5+109,    1,  235,  0,   0);
setMoveKey(  spep_5+110,    1,  235,  0,   0);
setMoveKey(  spep_5+111,    1,  235,  0,   0);
setScaleKey( spep_5+109,    1,  0.7, 0.7);
setScaleKey( spep_5+110,    1,  0.7, 0.7);

setMoveKey(  spep_5+140,    1,   120,  0,   0);
setScaleKey(  spep_5+140,   1,   1.6,  1.6);
setRotateKey(spep_5+140,1,0);  

playSe( spep_5+130, SE_06);

kamehame_beam2 = entryEffect( spep_5+110, SP_07,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_5+110, kamehame_beam2, 2, 2);
setEffScaleKey(spep_5+192, kamehame_beam2, 2, 2);
setEffScaleKey(spep_5+194, kamehame_beam2, 3.5, 3.5);
setEffMoveKey( spep_5+192, kamehame_beam2, 0,  0, 0);
setEffMoveKey( spep_5+194, kamehame_beam2, 100,  0, 0);

setDamage( spep_5+192, 1, 0);  -- ダメージ振動等

playSe( spep_5+195, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( spep_5+195, 1, 108);
setMoveKey(  spep_5+195, 1,  120,    0,  0);
setMoveKey(  spep_5+209, 1,  400,    0,  0);
setScaleKey( spep_5+195, 1,  1.6, 1.6);
setScaleKey( spep_5+198, 1,  1.5, 1.5);
setScaleKey( spep_5+208, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_5+110, 1, 99, 20);

entryFadeBg( spep_5+110, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_5+110, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep_5+110, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5+110, ct, 99, 20);
setEffScaleKey( spep_5+110, ct, 2.4, 2.4);
setEffRotateKey(spep_5+110, ct, 70);
setEffAlphaKey(spep_5+110, ct, 255);
setEffAlphaKey(spep_5+170, ct, 255);
setEffAlphaKey(spep_5+190, ct, 0);

entryFade( spep_5+202, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setRotateKey(spep_5+208, 1,0);  
setDisp( spep_5+208, 1, 0);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryFadeBg( spep_5+209, 0, 180, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffect( spep_5+209, SP_08, 0,  -1,  0,  0,  50);   -- 大爆発

playSe( spep_5+239, SE_10);
playSe( spep_5+289, SE_10);
playSe( spep_5+319, SE_10);

setDamage( spep_5+267, 1, 0);  -- ダメージ振動等

shuchusen = entryEffectLife( spep_5+209, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_5+287);

entryFade( spep_5+369, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+379);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setDisp( 0, 0, 0);
entryFadeBg( 0, 0, 177, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffect( 0,  11,  0x80,  -1,  0,  0,  -20);--爆破
playSe( 0, 1033);--SE

setVisibleUI(0, 0);
--
playSe( 30, 1035); --かめはめ波

semaru = entryEffect(  0,   SP_01,   0,     -1,  0,  0,  0);   -- 迫る17号＆18号
setEffScaleKey( 0, semaru, -1.0, 1.0);

setEffShake(0, ulgohann, 110, 7);

entryFade( 56, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffect(  60,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  60,   1502,   0x80,     -1,  0,  0,  0);   -- eff_003 (気)

semaru2 = entryEffect(  60, SP_02,   0x100,     -1,  0,  0,  0);   --  迫る17号＆18号（顔カットイン後）
playSe( 120, 1018);
setEffScaleKey( 60, semaru2, -1.0, 1.0);

--[[
speff = entryEffect(  60,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  60,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]


entryFade( 150, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( 0, 150, 10);

-- 書き文字エントリー
ct = entryEffectLife( 60, 10008, 95, 0x100, -1, 0, 0, 300);    -- ゴゴゴ・・・
setEffShake(60, ct, 95, 8);
setEffScaleKey(60, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 177, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 82, shuchusen5, 1.0, 1.0);


spep_2 = 157;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260

------------------------------------------------------
-- 突進
------------------------------------------------------
playSe( spep_6, 1018);

setRotateKey( spep_6 , 1 , 0);

changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.7, 1.7);
setMoveKey(  spep_6,  1, 1000,  -5,   0);
setRotateKey( spep_6,  1,  -5 );

setShake( spep_6, 72, 5);

--P移動

totugeki = entryEffect(  spep_6,   SP_03e,   0,     -1,  0,  0,  0);   -- 横に突撃
setEffScaleKey( spep_6, totugeki, 1.0, 1.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_6, 10012, 61, 0, -1, 0, 200, 200); -- ズオッ
setEffShake(spep_6, ct, 32, 5);
setEffAlphaKey(spep_6, ct, 255);
setEffAlphaKey(spep_6+41, ct, 255);
setEffAlphaKey(spep_6+51, ct, 0);
setEffScaleKey(spep_6, ct, 0.0, 0.0);
setEffScaleKey(spep_6+11, ct, 1.8, 1.8);
setEffScaleKey(spep_6+41, ct, 1.8, 1.8);
setEffScaleKey(spep_6+51, ct, 6.0, 6.0);

setEffShake(spep_6, ct, 50, 50);


entryEffectLife( spep_6+76, 10011, 10, 0x100, -1, 0, 200, 50);    -- シュンッ
entryEffectLife( spep_6+76, 10011, 10, 0x100, -1, 0, 0, 250);    -- シュンッ

playSe( spep_6+72, 43);


setMoveKey(  spep_6+81,  1, 1000,  -50,   0);
setMoveKey(  spep_6+112,  1, 0,  -50,   0);
setMoveKey(  spep_6+112,  0, 0,  -50,   0);

------------------------------------------------------
--連撃
------------------------------------------------------

spep_9=spep_6+152; --17号と18号連撃の開始

--setEnvZoomEnable(spep_9,1);
--setEnvZoomEnable(spep_9+90,0);

playSe( spep_9,1052);--SE
playSe( spep_9+40,1009);--SE
playSe( spep_9+50,1001);--SE
playSe( spep_9+60,1000);--SE
playSe( spep_9+70,1009);--SE
playSe( spep_9+80,1006);--SE
playSe( spep_9+90,1052);--SE

playSe( spep_9+120,1018);--SE
playSe( spep_9+150,43);--SE

changeAnime( spep_9,   1, 106 ); --敵モーション
changeAnime( spep_9+45,   1, 105 ); --敵モーション
changeAnime( spep_9+90,   1, 106 ); --敵モーション

setRotateKey( spep_9-1 , 1 , 0);
setRotateKey( spep_9 , 1 , -85);
setRotateKey( spep_9+158 , 1 , -85);
setRotateKey( spep_9+168 , 1 , 0);

setShakeChara( spep_9, 1, 79, 30);
setShake( spep_9, 89, 20);

setShake( spep_9+108, 69, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_9, 10021, 61, 0, -1, 0, 0, 300); -- バゴォッ
setEffShake(spep_9, ct, 32, 10);
setEffAlphaKey(spep_9, ct, 255);
setEffAlphaKey(spep_9+11, ct, 255);
setEffAlphaKey(spep_9+21, ct, 0);
setEffScaleKey(spep_9, ct, 0.0, 0.0);
setEffScaleKey(spep_9+4, ct, 1.8, 1.8);
setEffScaleKey(spep_9+11, ct, 1.8, 1.8);
setEffScaleKey(spep_9+21, ct, 6.0, 6.0);

hit = entryEffect( spep_9,   4,   0,  1,  0,  0,  0);    --HIT 
setEffScaleKey( spep_9, hit, 2, 2);

hit = entryEffect( spep_9+90,   4,   0,  1,  0,  0,  0);    --HIT 
setEffScaleKey( spep_9+90, hit, 2, 2);


setDamage( spep_9, 1, 0);  -- ダメージ振動等

--この辺りから上へ移動

setMoveKey(  spep_9+98,  1, 0,  -50,   0);
setMoveKey(  spep_9+108,  1, 0,  1700,   0);

setDisp( spep_9+110, 1, 0);

ryusen_1=entryEffectLife( spep_6, 920, 240, 0x80,  -1,  0,  0,  0); -- 流線 90-30
setEffScaleKey(  spep_6, ryusen_1, 1.3, 1.3);

shuchusen8 = entryEffectLife( spep_6, 906, 300, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen8, 1.5, 1.5);

ryusen_1=entryEffectLife( spep_9+90, 920, 88, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
setEffRotateKey( spep_9+90,ryusen_1,-90);
setEffScaleKey(  spep_9+90, ryusen_1, 1.6, 1.6);


entryFade( spep_6+323, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_6+322,  1, 0,  1700,   0);
setScaleKey( spep_6+330, 1, 1.7, 1.7);

entryFadeBg( spep_6, 0, 330, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 393; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,  0, 0,  -50,   0);
setMoveKey(  SP_dodge+9,  0, -1100,  -50,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
--蹴り
------------------------------------------------------

spep_10=spep_6+323; --２カット目の開始 90-30


setMoveKey(   spep_10,   1, 0, -1036, 0);
setDisp( spep_10+5, 1, 1);
keri = entryEffect(  spep_10+40,  SP_04,   0,     -1,  0,  0,  0);   -- 蹴り
setEffScaleKey( spep_10+40, keri, -1.0, 1.0);

setShake( spep_10, 60, 5);
setShake( spep_10+65, 25, 15);

setShakeChara( spep_10+65, 1, 10, 30);

setMoveKey(   spep_10+20,   1, 0, -200, 0);
setMoveKey(   spep_10+65,   1, 0, -200, 0);
setMoveKey(   spep_10+70,   1, 0, -1000, 0);

hit = entryEffect( spep_10+60,   4,   0,  1,  0,  0,  0);    --HIT 
setEffScaleKey( spep_10+60, hit, 2, 2);

playSe( spep_10+60,1052);--SE

ryusen_1=entryEffectLife( spep_10, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
setEffRotateKey(spep_10,ryusen_1,-90);
setEffScaleKey(  spep_10, ryusen_1, 1.6, 1.6);

entryFade( spep_10+92, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   spep_10+101,   1, 0, -1000, 0);
setDisp( spep_10+101, 1, 0);
setScaleKey( spep_10+101, 1, 1.7, 1.7);

entryFadeBg( spep_10, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

spep_7=spep_10+105; --211 260

setMoveKey(  spep_7,  1, 0,  1000,   0);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setDisp( spep_7, 0, 0);
setDisp( spep_7, 1, 0);

playSe( spep_7+4, SE_04);

playSe( spep_7+11, SE_03);
playSe( spep_7+31, SE_03);
playSe( spep_7+51, SE_03);
playSe( spep_7+71, SE_03);

kame_hand = entryEffect( spep_7, SP_05, 0x100,  -1, 0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_7, kame_hand, -1.4, 1.4);

setShake( spep_7, 95, 10);

entryFade( spep_7+95, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_7, 0, 101, 0, 10, 10, 10, 180);       -- ベース暗め　背景

spep_5=spep_7+102; --260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_5, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  spep_5-1,    0,      0,  -80,   0);
setMoveKey(  spep_5,    0,   -600,  -80,   0);
setMoveKey(  spep_5+1,    0,   -600,  -80,   0);
setMoveKey(  spep_5+10,    0,   -100,  -80,   0);

kamehame_beam = entryEffectLife( spep_5, SP_06e, 109, 0x40,  0,  300,  0,  -50);   -- 伸びるかめはめ波
setEffScaleKey( spep_5, kamehame_beam, 1.2, 1.2);
setEffScaleKey( spep_5+45, kamehame_beam, 1.2, 1.2);
setEffScaleKey( spep_5+46, kamehame_beam, 2.0, 2.0);
setEffMoveKey( spep_5+45, kamehame_beam,0,  -50, 0);
setEffMoveKey( spep_5+46, kamehame_beam,0,  -270, 0);

playSe( spep_5, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  spep_5+39,    0,   -100,  -80,   0);
setMoveKey(  spep_5+40,    0,   -100,  -80,   0);
setMoveKey(  spep_5+48,    0,   -900,  -80,   0);

entryFade( spep_5+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_5, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_5, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_5+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_5, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

shuchusen = entryEffectLife( spep_5, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_5+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_5+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_5+8, ct, 32, 5);

setEffAlphaKey(spep_5+8, ct, 255);
setEffAlphaKey(spep_5+30, ct, 255);
setEffAlphaKey(spep_5+40, ct, 0);

setEffScaleKey(spep_5+8, ct, 0.0, 0.0);
setEffScaleKey(spep_5+12, ct, 1.3, 1.3);
setEffScaleKey(spep_5+32, ct, 1.3, 1.3);
setEffScaleKey(spep_5+40, ct, 6.0, 6.0);
playSe( spep_5+40, SE_07);

setShake( spep_5, 95, 5);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( spep_5+110, 0, 0);
setDisp( spep_5+110, 1, 1);
setRotateKey(spep_5+111,1,0);  

changeAnime( spep_5+110, 1, 104);                        -- ガード
setMoveKey(  spep_5+109,    1,  235,  0,   0);
setMoveKey(  spep_5+110,    1,  235,  0,   0);
setMoveKey(  spep_5+111,    1,  235,  0,   0);
setScaleKey( spep_5+109,    1,  0.7, 0.7);
setScaleKey( spep_5+110,    1,  0.7, 0.7);

setMoveKey(  spep_5+140,    1,   120,  0,   0);
setScaleKey(  spep_5+140,   1,   1.6,  1.6);
setRotateKey(spep_5+140,1,0);  

playSe( spep_5+130, SE_06);

kamehame_beam2 = entryEffect( spep_5+110, SP_07,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_5+110, kamehame_beam2, 2, 2);
setEffScaleKey(spep_5+192, kamehame_beam2, 2, 2);
setEffScaleKey(spep_5+194, kamehame_beam2, 3.5, 3.5);
setEffMoveKey( spep_5+192, kamehame_beam2, 0,  0, 0);
setEffMoveKey( spep_5+194, kamehame_beam2, 100,  0, 0);

setDamage( spep_5+192, 1, 0);  -- ダメージ振動等

playSe( spep_5+195, SE_09);

-- 敵吹っ飛ぶモーション
changeAnime( spep_5+195, 1, 108);
setMoveKey(  spep_5+195, 1,  120,    0,  0);
setMoveKey(  spep_5+209, 1,  400,    0,  0);
setScaleKey( spep_5+195, 1,  1.6, 1.6);
setScaleKey( spep_5+198, 1,  1.5, 1.5);
setScaleKey( spep_5+208, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_5+110, 1, 99, 20);

entryFadeBg( spep_5+110, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_5+110, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep_5+110, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5+110, ct, 99, 20);
setEffScaleKey( spep_5+110, ct, 2.4, 2.4);
setEffRotateKey(spep_5+110, ct, -70);
setEffAlphaKey(spep_5+110, ct, 255);
setEffAlphaKey(spep_5+170, ct, 255);
setEffAlphaKey(spep_5+190, ct, 0);

entryFade( spep_5+202, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setRotateKey(spep_5+208, 1,0);  
setDisp( spep_5+208, 1, 0);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryFadeBg( spep_5+209, 0, 180, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffect( spep_5+209, SP_08, 0,  -1,  0,  0,  50);   -- 大爆発

playSe( spep_5+239, SE_10);
playSe( spep_5+289, SE_10);
playSe( spep_5+319, SE_10);

setDamage( spep_5+267, 1, 0);  -- ダメージ振動等

shuchusen = entryEffectLife( spep_5+209, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_5+287);

entryFade( spep_5+369, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+379);

end

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
SE_11 = 1044; --割れる音

SE_12 = 09;

tyo = -30;
tyo2 = -40;

SP_01 = 102202; --オーラの溜め_バトルキャラ込み
SP_02 = 102203; --手前に向かってくる時にゴジータがまとうオーラ
SP_03 = 102204; --かまいたち風エフェクト
SP_04 = 102205; --膝蹴りのラッシュ&サマーソルト
SP_05 = 102206; --光弾の溜め_バトルキャラ込み
SP_06 = 102207; --光弾発射
SP_07 = 102208; --命中とsparking
SP_01e = 102209; --オーラの溜め_バトルキャラ込み敵側だよ
SP_04e = 102210; --膝蹴りのラッシュ&サマーソルト敵側だよ

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
setVisibleUI(0, 0);
changeAnime( 0, 0, 3);                  -- ダッシュ
setScaleKey(   0,   0, 1.5, 1.5);
--setRotateKey( 0, 0 , -30);

setMoveKey(   0,   0,  -550, 0,  0);

setMoveKey(  20,   0,  0, 0,  0);
setMoveKey(  90,   0,  0, 0,  0);
setMoveKey(  100,   0,  -150, 0,  -10);
setMoveKey(  125,   0,  1100, 0,  -20);

playSe( 0, 1036);
playSe( 25, 1036);
playSe( 50, 1036);
playSe( 75, 1036);
playSe( 100, 1018);

aura67 = entryEffect(  1,  SP_01, 0x100,  -1,  300,  0,  0); -- オーラ


speff = entryEffect(  1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了 87
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 100, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  0,   SP_01, 125, 0x40+0x100,  0,  300,  -250,  150); -- オーラ
--setEffScaleKey( 0, aura, 1, 1 );
--setEffRotateKey( 0, aura, 0);

--aura1 = entryEffectLife(  0,  SP_07, 125, 0x40+0x100,  0,  300,  -100,  0); -- オーラ
--setEffScaleKey( 0, aura1, 1.1, 1.1);
--setEffRotateKey( 0, aura1, 30);

setShakeChara( 0, 0, 125, 10);
--setShake( 0, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 1, 190006, 100, 0x100, -1, 0, 180, 500);    -- ゴゴゴ・・・
setEffShake(1, ct, 135, 8);
setEffScaleKey(1, ct, 0.8, 0.8);

shuchusen5 = entryEffectLife( 0, 906, 130, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 130, shuchusen5, 1.0, 1.0);

sen6 = entryEffectLife( 0, 920, 105, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 0, sen6, 130);
setEffScaleKey( 0, sen6, 1.5, 1.5);


entryFadeBg( 0, 0, 130, 0, 0, 0, 0, 255);       -- ベース暗め　背景

setScaleKey(   130,   0, 1.5, 1.5);

spep_9 = 105;
--setScaleKey(  spep_2,  0,  1.5,  1.5);

------------------------------------------------------
-- 手前向かってくる(90F)
------------------------------------------------------
setScaleKey(  spep_9-1,   0, 1.0, 1.0);
setMoveKey(  spep_9-1,   0,  0, 0,  120);
changeAnime( spep_9, 0, 16); --手前ダッシュ

setMoveKey(  spep_9+10,   0,  0, 0,  -120);
setMoveKey(  spep_9+40,   0,  0, 0,  -40);
setMoveKey(  spep_9+50,   0,  0, 0,  -80);

setScaleKey(  spep_9+40,   0, 1.0, 1.0);
setScaleKey(  spep_9+50,   0, 2.5, 2.5);


aura67 = entryEffect(  spep_9,  SP_02, 0x100,  -1, 300,  0,  0); -- オーラ
--setEffScaleKey( spep_9-1, aura67, 1.0, 1.0);
--setEffScaleKey( spep_9+10, aura67, 1.0, 1.0);
--setEffScaleKey( spep_9+40, aura67, 1.5, 1.5);
--setEffScaleKey( spep_9+50, aura67, 3, 3);
--setEffRotateKey( 0, aura67, 90);

--setEffMoveKey( spep_9+5,  aura67,  150, 60,   0);
--setEffMoveKey( spep_9+40,  aura67,  220,70,   0);
--setEffMoveKey( spep_9+50,  aura67,  500, 115,   0);

playSe( spep_9, 1018);


entryFadeBg( spep_9-1, 0, 53, 0, 0, 0, 0, 255);       -- ベース暗め　背景

shuchusen31 = entryEffectLife( spep_9-1, 906, 53, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9-1, shuchusen31, 1, 1);

entryFade( spep_9+30, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_9 , 0 , 0);

--removeAllEffect(spep_9+53);

spep_10 = spep_9+35; --140

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 120; --エンドフェイズのフレーム数を置き換える

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

playSe( spep_9+20, 1021);

------------------------------------------------------
-- アタック(90F)
------------------------------------------------------
setDisp( spep_10 , 1 , 1);

changeAnime( spep_10, 1, 100); 
setScaleKey(  spep_10,  1,  1.5,  1.5);
setScaleKey(  spep_10+50,  1,  1.5,  1.5);
setMoveKey(  spep_10,  1,  150, 50,  30);
setMoveKey(  spep_10+8,  1,  150, 50,  0);

changeAnime( spep_10+10, 1, 108);
changeAnime( spep_10+24, 1, 106);
changeAnime( spep_10+31, 1, 108); 

playSe( spep_10+5, 1008);
playSe( spep_10+15, 1008);
playSe( spep_10+22, 1008);
playSe( spep_10+32, 1008);
playSe( spep_10+40, 1008);
--playSe( spep_10+24, 1001);
--playSe( spep_10+32, 1002);
--playSe( spep_10+51, 1008);

setMoveKey(  spep_10+31,  1,  50, 0,  -50);

setMoveKey(  spep_10+48,    1,   650,  100,   120);
setMoveKey(  spep_10+50,    1,   -600,  50,   -30);
setScaleKey(  spep_10+50,  0,  1,  1);

--sen2 = entryEffectLife( spep_10, 920, 78, 0x80,  -1,  0,  0,  0); -- 流線
--setEffScaleKey( spep_10, sen2, 1.2, 1.2);

entryFadeBg( spep_10, 0, 50, 0, 0, 0, 0, 255);       -- ベース暗め　背景

aura28=entryEffect( spep_10, SP_03, 0x100,  -1,  0,  0,  0);  --光のラッシュエフェクト
--setEffScaleKey( spep_10, aura28, 1, 1);

sen2 = entryEffectLife( spep_10+31, 921, 19, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_10+31, sen2, 190);
--setEffScaleKey( spep_10+31, sen2, 2.0, 2.0);

entryFade( spep_10+45, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_10+80);
--setDisp( spep_10+78 , 1 , 0);

spep_11 = spep_10+50; --190

------------------------------------------------------
-- 膝蹴り膝蹴りサマーソルトォォォ！！
------------------------------------------------------

setDisp( spep_11 , 0 , 0);

changeAnime( spep_11+47, 1, 106); 

--changeAnime( spep_11, 0, 30);                       -- 溜め!
setScaleKey(   spep_11,   1, 4, 4);
setScaleKey(   spep_11+8,   1, 4, 4);
setScaleKey(   spep_11+15,   1, 1.5, 1.5);

setMoveKey(   spep_11,   1,  -600, 50,   -30);
setMoveKey(   spep_11+8,   1,  -600, 50,   -30);
setMoveKey(   spep_11+15,  1,  0, -54,   0);
setMoveKey(   spep_11+47,  1,  20, -64,  10);
setMoveKey(   spep_11+65,  1,  -250, 0,  10);
setMoveKey(   spep_11+93,  1,  -50, 0,  10);
setMoveKey(   spep_11+110,  1,  -150, 20,  10);
setMoveKey(   spep_11+145,  1,  150, -20,   0);
setMoveKey(   spep_11+160,  1,  50, -20,   0);
setMoveKey(   spep_11+166,  1,  200, -20,   0);

--setMoveKey(   spep_11+116,  1,  -200, 30,   0);
--setMoveKey(   spep_11+116,  1,  0, -54,   0);
--setMoveKey(  spep_11+40,   1,  50, 0,   0);

setRotateKey( spep_11+46, 1 , 0);
setRotateKey( spep_11+47, 1 , -70);
setRotateKey( spep_11+93, 1 , -70);
setRotateKey( spep_11+94, 1 , -100);
setRotateKey( spep_11+124, 1 , -100);
setRotateKey( spep_11+159, 1 , -100);
setRotateKey( spep_11+160, 1 , -50);
setRotateKey( spep_11+164, 1 , -50);
setRotateKey( spep_11+210, 1 , -20);


playSe( spep_11+47, 1010);
playSe( spep_11+93, 1010);
playSe( spep_11+160, 1010);



--playSe( spep_11+50, 1037);

playSe( spep_11+70, 1034);

kame_hand = entryEffect( spep_11+30, SP_04, 0x100, -1, 300,  0, 0);   -- 手のカメハメ波部 50end
--setEffMoveKey(   spep_11,  kame_hand,  150,  -200,   0);
--setEffMoveKey(   spep_11+15,  kame_hand, 30,  90,   0);
--setEffScaleKey( spep_11, kame_hand, 1, 1);
--setEffScaleKey( spep_11+15, kame_hand, 0.5, 0.5);

entryFadeBg( spep_11, 0, 220, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_11+205, 14, 7, 9, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setShakeChara( spep_11, 0, 114, 8);
setShake( spep_11, 114, 15);

-- 書き文字エントリー
--ct = entryEffectLife( spep_11+30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
--setEffShake(spep_11+30, ct, 95, 8);
--setEffScaleKey(spep_11+30, ct, 1.4, 1.4);

--shuchusen5 = entryEffectLife( spep_11, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( spep_11, shuchusen5, 1.0, 1.0);
--setEffScaleKey( spep_11+60, shuchusen5, 1.0, 1.0);
--setEffScaleKey( spep_11+114, shuchusen5, 1.0, 1.0);

sen3 = entryEffectLife( spep_11, 921, 47, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_11, sen3, 20);
setEffScaleKey( spep_11, sen3, 1.5, 1.5);

sen6 = entryEffectLife( spep_11+47, 920, 112, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_11+47, sen6, 10);
setEffScaleKey( spep_11+47, sen6, 1.5, 1.5);

sen6 = entryEffectLife( spep_11+160, 920, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_11+47, sen6, -10);
setEffScaleKey( spep_11+47, sen6, 1.5, 1.5);


entryFadeBg( spep_11, 0, 117, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = spep_11+220; --410

setScaleKey(  spep_2,  0,  1.6,  1.6);
setMoveKey(  spep_2,   0,  0, 0,   10);


------------------------------------------------------
-- カメハメハ溜め(110F)
------------------------------------------------------

changeAnime( spep_2, 0, 31);    -- かめはめ発射ポーズ
setDisp( spep_2 , 1 , 0);

setMoveKey(  spep_2-1,    0,      0,  100,   -20);
setMoveKey(  spep_2+10,    0,      0,  100,   -10);
setMoveKey(  spep_2+20,    0,   -30,  100,   0);

kamehame_beam = entryEffect( spep_2, SP_05, 0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波
--playSe( spep_2, SE_07);

playSe( spep_2+20, SE_04);

--playSe( spep_11+50, 1037);

playSe( spep_2+70, 1034);

--spname = entryEffect( spep_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

setMoveKey(  spep_2+40,    0,   -200,  120,   30);
--setMoveKey(  spep_3+65,    0,   -350,  170,   50);
setMoveKey(  spep_2+85,    0,   -750,  160,   70);

--entryFade( spep_3+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_2, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--sen2 = entryEffectLife( spep_2, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_2, sen2, 190);
--setShakeChara( spep_2+45, 0, 54, 50);
--setEffScaleKey( spep_2, sen2, 2.0, 2.0);

shuchusen = entryEffectLife( spep_2, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+49, shuchusen, 2.0, 2.0);


-- 書き文字エントリー
ct = entryEffectLife( spep_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_2+8, ct, 32, 5);
setEffAlphaKey(spep_2+8, ct, 255);
setEffAlphaKey(spep_2+30, ct, 255);
setEffAlphaKey(spep_2+40, ct, 0);
setEffScaleKey(spep_2+8, ct, 0.0, 0.0);
setEffScaleKey(spep_2+12, ct, 1.3, 1.3);
setEffScaleKey(spep_2+32, ct, 1.3, 1.3);
setEffScaleKey(spep_2+40, ct, 6.0, 6.0);
playSe( spep_2+60, SE_07);

entryFade( spep_2+87, 10,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_2+100; --510
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
--setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_3,    0,      0,  0,   0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_3+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_3+64, SE_06);


spep_99=spep_3+90; --600



------------------------------------------------------
-- かめはめは発射(100F)
------------------------------------------------------
setDisp( spep_99, 0, 0);
setDisp( spep_99, 1, 0);
changeAnime( spep_99, 1, 108);

setMoveKey(  spep_99-1,    1,  235,  0,   0);
setMoveKey(  spep_99,    1,  235,  0,   0);
setMoveKey(  spep_99+1,    1,  235,  0,   0);

setScaleKey( spep_99-1,    1,  1.5, 1.5);
setScaleKey( spep_99,    1,  1.5, 1.5);

setMoveKey(  spep_99+30,    1,   50,  0,   0);
setScaleKey(  spep_99+30,   1,   2,  2);

changeAnime( spep_99+50, 1, 106);

--playSe( spep_99+20, SE_06);

kamehame_beam2 = entryEffect( spep_99, SP_06,   0x100, -1,  300,  0,  0);   -- 迫るかめはめ波
--setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+82, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 1.5, 1.5);

playSe( spep_99, SE_07);
playSe( spep_99+60, SE_07);

--playSe( spep_99+40, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_99, 1, 80, 10);
setShakeChara( spep_99, 1, 90, 20);
setShake( spep_99, 170, 10);

entryFadeBg( spep_99, 0, 170, 0,0, 0, 0, 255);          -- ベース暗め　背景

shuchusen31 = entryEffectLife( spep_99, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9, shuchusen31, 1, 1);

sen2 = entryEffectLife( spep_99+40, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_99+40, sen2, -170);
setEffScaleKey( spep_99+40, sen2, 2.0, 2.0);
setEffAlphaKey(spep_99+40, sen2, 100);

shuchusen31 = entryEffectLife( spep_99+60, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_99+60, shuchusen31, 1, 1);

--entryEffectLife( spep_4, 921, 43, 0x80,  -1,  0,  0,  0); -- 流線斜め


-- ダメージ表示


--setScaleKey(  spep_99+160,   1,   2,  2);

entryFade( spep_99+80,  7,  5,5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



spep_4=spep_99+90; --690

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 108);

setMoveKey(  spep_4-1,    1,  235,  0,   0);
setMoveKey(  spep_4,    1,  235,  0,   0);
setMoveKey(  spep_4+1,    1,  235,  0,   0);

setScaleKey( spep_4-1,    1,  1.5, 1.5);
setScaleKey( spep_4,    1,  1.5, 1.5);

setMoveKey(  spep_4+30,    1,   50,  0,   0);
setScaleKey(  spep_4+30,   1,   2,  2);

changeAnime( spep_4+50, 1, 106);

playSe( spep_4+10, SE_06);

kamehame_beam2 = entryEffect( spep_4, SP_07,   0x100, -1,  300,  0,  0);   -- 迫るかめはめ波
--setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+82, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 1.5, 1.5);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等



playSe( spep_4+36, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 80, 10);
setShakeChara( spep_4, 1, 90, 20);
setShake( spep_4, 170, 10);

entryFadeBg( spep_4, 0, 170, 0,0, 0, 0, 255);          -- ベース暗め　背景

sen2 = entryEffectLife( spep_4, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, sen2, -20);
setEffScaleKey( spep_4, sen2, 2.0, 2.0);
setEffAlphaKey(spep_4, sen2, 100);



-- 書き文字エントリー
--ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
--setEffShake(spep_4, ct, 99, 20);
--setEffScaleKey( spep_4, ct, 2.4, 2.4);
--setEffRotateKey(spep_4, ct, 70);
--setEffAlphaKey(spep_4, ct, 255);
--setEffAlphaKey(spep_4+35, ct, 255);
--setEffAlphaKey(spep_4+55, ct, 0);

-- ダメージ表示

dealDamage(spep_4+70);

setScaleKey(  spep_4+160,   1,   2,  2);

entryFade( spep_4+125, 20,  45, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(spep_4+180);

else




--敵
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 3);                  -- ダッシュ
setScaleKey(   0,   0, 1.5, 1.5);
--setRotateKey( 0, 0 , -30);

setMoveKey(   0,   0,  -550, 0,  0);

setMoveKey(  20,   0,  0, 0,  0);
setMoveKey(  90,   0,  0, 0,  0);
setMoveKey(  100,   0,  -150, 0,  -10);
setMoveKey(  125,   0,  1100, 0,  -20);

playSe( 0, 1036);
playSe( 25, 1036);
playSe( 50, 1036);
playSe( 75, 1036);
playSe( 100, 1018);

aura67 = entryEffect(  1,  SP_01e, 0x100,  -1,  300,  0,  0); -- オーラ


--speff = entryEffect(  1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了 87
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 100, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  0,   SP_01, 125, 0x40+0x100,  0,  300,  -250,  150); -- オーラ
--setEffScaleKey( 0, aura, 1, 1 );
--setEffRotateKey( 0, aura, 0);

--aura1 = entryEffectLife(  0,  SP_07, 125, 0x40+0x100,  0,  300,  -100,  0); -- オーラ
--setEffScaleKey( 0, aura1, 1.1, 1.1);
--setEffRotateKey( 0, aura1, 30);

setShakeChara( 0, 0, 125, 10);
setShake( 0, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 1, 190006, 100, 0x100, -1, 0, 0, 500);    -- ゴゴゴ・・・
setEffShake(1, ct, 135, 8);
setEffScaleKey(1, ct, -0.8, 0.8);

--[[
shuchusen5 = entryEffectLife( 0, 906, 130, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 130, shuchusen5, 1.0, 1.0);

sen6 = entryEffectLife( 0, 920, 105, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 0, sen6, 130);
setEffScaleKey( 0, sen6, 1.5, 1.5);
]]--


entryFadeBg( 0, 0, 130, 0, 0, 0, 0, 255);       -- ベース暗め　背景

setScaleKey(   130,   0, 1.5, 1.5);

spep_9 = 105;
--setScaleKey(  spep_2,  0,  1.5,  1.5);

------------------------------------------------------
-- 手前向かってくる(90F)
------------------------------------------------------
setScaleKey(  spep_9-1,   0, 1.0, 1.0);
setMoveKey(  spep_9-1,   0,  0, 0,  120);
changeAnime( spep_9, 0, 16); --手前ダッシュ

setMoveKey(  spep_9+10,   0,  0, 0,  -120);
setMoveKey(  spep_9+40,   0,  0, 0,  -40);
setMoveKey(  spep_9+50,   0,  0, 0,  -80);

setScaleKey(  spep_9+40,   0, 1.0, 1.0);
setScaleKey(  spep_9+50,   0, 2.5, 2.5);


aura67 = entryEffect(  spep_9,  SP_02, 0x100,  -1, 300,  0,  0); -- オーラ
--setEffScaleKey( spep_9-1, aura67, 1.0, 1.0);
setEffScaleKey( spep_9+10, aura67, -1.0, 1.0);
--setEffScaleKey( spep_9+40, aura67, 1.5, 1.5);
--setEffScaleKey( spep_9+50, aura67, 3, 3);
--setEffRotateKey( 0, aura67, 90);

--setEffMoveKey( spep_9+5,  aura67,  150, 60,   0);
--setEffMoveKey( spep_9+40,  aura67,  220,70,   0);
--setEffMoveKey( spep_9+50,  aura67,  500, 115,   0);

playSe( spep_9, 1018);


entryFadeBg( spep_9-1, 0, 53, 0, 0, 0, 0, 255);       -- ベース暗め　背景

shuchusen31 = entryEffectLife( spep_9-1, 906, 53, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9-1, shuchusen31, 1, 1);

entryFade( spep_9+30, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_9 , 0 , 0);

--removeAllEffect(spep_9+53);

spep_10 = spep_9+35; --140

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 120; --エンドフェイズのフレーム数を置き換える

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

playSe( spep_9+20, 1021);

------------------------------------------------------
-- アタック(90F)
------------------------------------------------------
setDisp( spep_10 , 1 , 1);

changeAnime( spep_10, 1, 100); 
setScaleKey(  spep_10,  1,  1.5,  1.5);
setScaleKey(  spep_10+50,  1,  1.5,  1.5);
setMoveKey(  spep_10,  1,  150, 50,  30);
setMoveKey(  spep_10+8,  1,  150, 50,  0);

changeAnime( spep_10+10, 1, 108);
changeAnime( spep_10+24, 1, 106);
changeAnime( spep_10+31, 1, 108); 

playSe( spep_10+5, 1008);
playSe( spep_10+15, 1008);
playSe( spep_10+22, 1008);
playSe( spep_10+32, 1008);
playSe( spep_10+40, 1008);
--playSe( spep_10+24, 1001);
--playSe( spep_10+32, 1002);
--playSe( spep_10+51, 1008);

setMoveKey(  spep_10+31,  1,  50, 0,  -50);

setMoveKey(  spep_10+48,    1,   650,  100,   120);
setMoveKey(  spep_10+50,    1,   -600,  50,   -30);
setScaleKey(  spep_10+50,  0,  1,  1);

--sen2 = entryEffectLife( spep_10, 920, 78, 0x80,  -1,  0,  0,  0); -- 流線
--setEffScaleKey( spep_10, sen2, 1.2, 1.2);

entryFadeBg( spep_10, 0, 50, 0, 0, 0, 0, 255);       -- ベース暗め　背景

aura28=entryEffect( spep_10, SP_03, 0x100,  -1,  0,  0,  0);  --光のラッシュエフェクト
--setEffScaleKey( spep_10, aura28, 1, 1);

sen2 = entryEffectLife( spep_10+31, 921, 19, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_10+31, sen2, 190);
--setEffScaleKey( spep_10+31, sen2, 2.0, 2.0);

entryFade( spep_10+45, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_10+80);
--setDisp( spep_10+78 , 1 , 0);

spep_11 = spep_10+50; --190

------------------------------------------------------
-- 膝蹴り膝蹴りサマーソルトォォォ！！
------------------------------------------------------

setDisp( spep_11 , 0 , 0);

changeAnime( spep_11+47, 1, 106); 

--changeAnime( spep_11, 0, 30);                       -- 溜め!
setScaleKey(   spep_11,   1, 4, 4);
setScaleKey(   spep_11+8,   1, 4, 4);
setScaleKey(   spep_11+15,   1, 1.5, 1.5);

setMoveKey(   spep_11,   1,  -600, 50,   -30);
setMoveKey(   spep_11+8,   1,  -600, 50,   -30);
setMoveKey(   spep_11+15,  1,  0, -54,   0);
setMoveKey(   spep_11+47,  1,  20, -64,  10);
setMoveKey(   spep_11+65,  1,  -250, 0,  10);
setMoveKey(   spep_11+93,  1,  -50, 0,  10);
setMoveKey(   spep_11+110,  1,  -150, 20,  10);
setMoveKey(   spep_11+145,  1,  150, -20,   0);
setMoveKey(   spep_11+160,  1,  50, -20,   0);
setMoveKey(   spep_11+166,  1,  200, -20,   0);

--setMoveKey(   spep_11+116,  1,  -200, 30,   0);
--setMoveKey(   spep_11+116,  1,  0, -54,   0);
--setMoveKey(  spep_11+40,   1,  50, 0,   0);

setRotateKey( spep_11+46, 1 , 0);
setRotateKey( spep_11+47, 1 , -70);
setRotateKey( spep_11+93, 1 , -70);
setRotateKey( spep_11+94, 1 , -100);
setRotateKey( spep_11+124, 1 , -100);
setRotateKey( spep_11+159, 1 , -100);
setRotateKey( spep_11+160, 1 , -50);
setRotateKey( spep_11+164, 1 , -50);
setRotateKey( spep_11+210, 1 , -20);


playSe( spep_11+47, 1010);
playSe( spep_11+93, 1010);
playSe( spep_11+160, 1010);



--playSe( spep_11+50, 1037);

playSe( spep_11+70, 1034);

kame_hand = entryEffect( spep_11+30, SP_04e, 0x100, -1, 300,  0, 0);   -- 手のカメハメ波部 50end
--setEffMoveKey(   spep_11,  kame_hand,  150,  -200,   0);
--setEffMoveKey(   spep_11+15,  kame_hand, 30,  90,   0);
--setEffScaleKey( spep_11, kame_hand, 1, 1);
--setEffScaleKey( spep_11+15, kame_hand, 0.5, 0.5);

entryFadeBg( spep_11, 0, 220, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_11+205, 14, 7, 9, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setShakeChara( spep_11, 0, 114, 8);
setShake( spep_11, 114, 15);

-- 書き文字エントリー
--ct = entryEffectLife( spep_11+30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
--setEffShake(spep_11+30, ct, 95, 8);
--setEffScaleKey(spep_11+30, ct, 1.4, 1.4);

--shuchusen5 = entryEffectLife( spep_11, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( spep_11, shuchusen5, 1.0, 1.0);
--setEffScaleKey( spep_11+60, shuchusen5, 1.0, 1.0);
--setEffScaleKey( spep_11+114, shuchusen5, 1.0, 1.0);

sen3 = entryEffectLife( spep_11, 921, 47, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_11, sen3, 20);
setEffScaleKey( spep_11, sen3, 1.5, 1.5);

sen6 = entryEffectLife( spep_11+47, 920, 112, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_11+47, sen6, 10);
setEffScaleKey( spep_11+47, sen6, 1.5, 1.5);

sen6 = entryEffectLife( spep_11+160, 920, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_11+47, sen6, -10);
setEffScaleKey( spep_11+47, sen6, 1.5, 1.5);


entryFadeBg( spep_11, 0, 117, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = spep_11+220; --410

setScaleKey(  spep_2,  0,  1.6,  1.6);
setMoveKey(  spep_2,   0,  0, 0,   10);


------------------------------------------------------
-- カメハメハ溜め(110F)
------------------------------------------------------

changeAnime( spep_2, 0, 31);    -- かめはめ発射ポーズ
setDisp( spep_2 , 1 , 0);

setMoveKey(  spep_2-1,    0,      0,  100,   -20);
setMoveKey(  spep_2+10,    0,      0,  100,   -10);
setMoveKey(  spep_2+20,    0,   -30,  100,   0);

kamehame_beam = entryEffect( spep_2, SP_05, 0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( spep_2, kamehame_beam, -1.0, 1.0);
--playSe( spep_2, SE_07);

playSe( spep_2+20, SE_04);

--playSe( spep_11+50, 1037);

playSe( spep_2+70, 1034);

--spname = entryEffect( spep_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

setMoveKey(  spep_2+40,    0,   -200,  120,   30);
--setMoveKey(  spep_3+65,    0,   -350,  170,   50);
setMoveKey(  spep_2+85,    0,   -750,  160,   70);

--entryFade( spep_3+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_2, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--sen2 = entryEffectLife( spep_2, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_2, sen2, 190);
--setShakeChara( spep_2+45, 0, 54, 50);
--setEffScaleKey( spep_2, sen2, 2.0, 2.0);

shuchusen = entryEffectLife( spep_2, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+49, shuchusen, 2.0, 2.0);


-- 書き文字エントリー
ct = entryEffectLife( spep_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_2+8, ct, 32, 5);
setEffAlphaKey(spep_2+8, ct, 255);
setEffAlphaKey(spep_2+30, ct, 255);
setEffAlphaKey(spep_2+40, ct, 0);
setEffScaleKey(spep_2+8, ct, 0.0, 0.0);
setEffScaleKey(spep_2+12, ct, 1.3, 1.3);
setEffScaleKey(spep_2+32, ct, 1.3, 1.3);
setEffScaleKey(spep_2+40, ct, 6.0, 6.0);
playSe( spep_2+60, SE_07);

entryFade( spep_2+87, 10,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_2+100; --510
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
--setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_3,    0,      0,  0,   0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_3+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_3+64, SE_06);


spep_99=spep_3+90; --600



------------------------------------------------------
-- かめはめは発射(100F)
------------------------------------------------------
setDisp( spep_99, 0, 0);
setDisp( spep_99, 1, 0);
changeAnime( spep_99, 1, 108);

setMoveKey(  spep_99-1,    1,  235,  0,   0);
setMoveKey(  spep_99,    1,  235,  0,   0);
setMoveKey(  spep_99+1,    1,  235,  0,   0);

setScaleKey( spep_99-1,    1,  1.5, 1.5);
setScaleKey( spep_99,    1,  1.5, 1.5);

setMoveKey(  spep_99+30,    1,   50,  0,   0);
setScaleKey(  spep_99+30,   1,   2,  2);

changeAnime( spep_99+50, 1, 106);

--playSe( spep_99+20, SE_06);

kamehame_beam2 = entryEffect( spep_99, 102219,   0x100, -1,  300,  0,  0);   -- 迫るかめはめ波
--setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+82, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 1.5, 1.5);

playSe( spep_99, SE_07);
playSe( spep_99+60, SE_07);

--playSe( spep_99+40, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_99, 1, 80, 10);
setShakeChara( spep_99, 1, 90, 20);
setShake( spep_99, 170, 10);

entryFadeBg( spep_99, 0, 170, 0,0, 0, 0, 255);          -- ベース暗め　背景

shuchusen31 = entryEffectLife( spep_99, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9, shuchusen31, 1, 1);

sen2 = entryEffectLife( spep_99+40, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_99+40, sen2, -170);
setEffScaleKey( spep_99+40, sen2, 2.0, 2.0);
setEffAlphaKey(spep_99+40, sen2, 100);

shuchusen31 = entryEffectLife( spep_99+60, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_99+60, shuchusen31, 1, 1);

--entryEffectLife( spep_4, 921, 43, 0x80,  -1,  0,  0,  0); -- 流線斜め


-- ダメージ表示


--setScaleKey(  spep_99+160,   1,   2,  2);

entryFade( spep_99+80,  7,  5,5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



spep_4=spep_99+90; --690

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 108);

setMoveKey(  spep_4-1,    1,  235,  0,   0);
setMoveKey(  spep_4,    1,  235,  0,   0);
setMoveKey(  spep_4+1,    1,  235,  0,   0);

setScaleKey( spep_4-1,    1,  1.5, 1.5);
setScaleKey( spep_4,    1,  1.5, 1.5);

setMoveKey(  spep_4+30,    1,   50,  0,   0);
setScaleKey(  spep_4+30,   1,   2,  2);

changeAnime( spep_4+50, 1, 106);

playSe( spep_4+10, SE_06);

kamehame_beam2 = entryEffect( spep_4, SP_07,   0x100, -1,  300,  0,  0);   -- 迫るかめはめ波
--setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+82, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 1.5, 1.5);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等



playSe( spep_4+36, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 80, 10);
setShakeChara( spep_4, 1, 90, 20);
setShake( spep_4, 170, 10);

entryFadeBg( spep_4, 0, 170, 0,0, 0, 0, 255);          -- ベース暗め　背景

sen2 = entryEffectLife( spep_4, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, sen2, -20);
setEffScaleKey( spep_4, sen2, 2.0, 2.0);
setEffAlphaKey(spep_4, sen2, 100);



-- 書き文字エントリー
--ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
--setEffShake(spep_4, ct, 99, 20);
--setEffScaleKey( spep_4, ct, 2.4, 2.4);
--setEffRotateKey(spep_4, ct, 70);
--setEffAlphaKey(spep_4, ct, 255);
--setEffAlphaKey(spep_4+35, ct, 255);
--setEffAlphaKey(spep_4+55, ct, 0);

-- ダメージ表示

dealDamage(spep_4+70);

setScaleKey(  spep_4+160,   1,   2,  2);

entryFade( spep_4+125, 20,  45, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(spep_4+180);

end



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

SP_01 = 100021;
SP_02 = 100022;
SP_03 = 100223;--迫る
SP_04 = 1551;--地球上でエネルギー波
SP_05 = 109054;--敵が光弾を避ける時の瞬間移動エフェクト
SP_06 = 150096;--アルティメット孫悟飯正面向きのキャラ画像
SP_07 = 160000;--移動時の風切りオーラエフェクト
SP_08 = 160008;--正面アングル用の風切りオーラエフェクト

multi_frm = 2;

changeAnime( 0, 0, 3);                       -- ダッシュ
setDisp( 0, 1, 0);

------------------------------------------------------
-- キーン1(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

setScaleKey(   0,   0, 2, 2);
setScaleKey(   100,   0, 2, 2);

setMoveKey(  0,  0, -500,  -100,   0);
setMoveKey(  25,  0, 0,  -100,   0);
setMoveKey(  75,  0, -50,  -100,   0);
setMoveKey(  100,  0, 650,  -100,   0);

-- ** エフェクト等 ** --

playSe(0,SE_07);
playSe(75,SE_07);

speff = entryEffect(15,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(15,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFadeBg( 0, 0, 105, 0, 255, 255, 255, 255);       -- ベース白　背景
entryEffectLife(0, 920, 105, 0x80,  -1,  0,  0,  0); -- 流線

--shuchusen = entryEffectLife(0, 911, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 0, shuchusen, 1.5, 1.5);

entryFade(  100, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife(15, 10008, 80, 0x100, -1, 0, -230, 250);    -- ゴゴゴ・・・
setEffShake(15, ct, 70, 8);
setEffScaleKey(15, ct, 1.4, 1.4);

SP_start =105;
------------------------------------------------------
-- キーン2(100F)
------------------------------------------------------
setDisp( SP_start, 0, 0);
setDisp( 0, 1, 0);

ct = entryEffectLife(SP_start,160019 ,45,0x100,-1,0,0,-100);-- アラレ突進
setEffAlphaKey(SP_start,ct,255);

--playSe( SP_start, 1009);

entryFade(  SP_start+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen8 = entryEffectLife(SP_start, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife(SP_start, 10014, 45, 0, -1, 0, 100, 150); -- ズドドッ
setEffShake(SP_start, ct, 99, 20);
setEffScaleKey(SP_start, ct, 2.5, 2.5);
setEffScaleKey(SP_start+35, ct, 2.5, 2.5);
setEffScaleKey(SP_start+45, ct, 3, 3);
setEffRotateKey(SP_start, ct, 70);
setEffAlphaKey(SP_start, ct, 255);
setEffAlphaKey(SP_start+35, ct, 255);
setEffAlphaKey(SP_start+45, ct, 0);

spep_6=SP_start+50; --211 260

------------------------------------------------------
-- アラレキック(60F)
------------------------------------------------------
playSe( spep_6, 1018);

setDisp( spep_6, 0, 1);
setDisp( spep_6, 1, 1);
setDisp( spep_6+100, 1, 0);

setRotateKey(spep_6,0,-10);

changeAnime( spep_6, 0, 30); 

changeAnime( spep_6, 1, 102);

setMoveKey(  spep_6,  0, -400, -300 ,  0);

--setScaleKey(  spep_6-1, 0 , 1, 1 );
setScaleKey(  spep_6, 0 , 0.5, 0.5 );
setMoveKey(  spep_6,  1, 50, 50 ,  0);

setScaleKey(  spep_6, 1 , 2, 2 );

--setScaleKey(  spep_6+100,  1, 1.2, 1.2);

entryFadeBg(spep_6, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景

ryusen = entryEffectLife(spep_6, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6, ryusen, 140);
setEffScaleKey(spep_6, ryusen, 2, 2);

setMoveKey(  spep_6+50,  0, -100,  0,   0);
setScaleKey(  spep_6+50,  0, 2.5, 2.5);
setMoveKey(  spep_6+50,  1, 50,  100,   0);
setScaleKey(  spep_6+49,  1, 2, 2);
setScaleKey(  spep_6+50,  1, 1, 1);

------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 197; --エンドフェイズのフレーム数を置き換える

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

setMoveKey(  spep_6+100,  0, -400,  -300,   0);

setScaleKey(  spep_6+100 ,0, 0.5, 0.5 );

setMoveKey(  spep_6+100,  1, 500, 500 ,   0);

setScaleKey(  spep_6+100,  1, 2, 2);

changeAnime( spep_6+50, 1, 107);

-- ** エフェクト等 ** --

playSe( spep_6+50, 1010);--キックの音
--playSe( spep_6+51, 1054);--飛ばされる音

arare_kick = entryEffect(spep_6+50,3,0x40+0x100,0,300,100,0); --キック衝撃
setEffScaleKey(SP_start, arare_kick, 3, 3);

entryFade( spep_6+95, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


entryFade(spep_6+95, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake(spep_6+ 15, 125, 15);

-- 書き文字エントリー

dogon = entryEffectLife(spep_6+50,10018,10,0x100,0,-1,100,300);--ドゴォンッ
setEffAlphaKey( spep_6+50, dogon, 255);
setEffScaleKey(spep_6+50, dogon, 3, 3);

--shuchusen5 = entryEffectLife(spep_6+65, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey(spep_6+ 0, shuchusen5, 1.0, 1.0);
--setEffScaleKey(spep_6+ 60, shuchusen5, 1.0, 1.0);
--setEffScaleKey(spep_6+ 125, shuchusen5, 1.0, 1.0);

--spep_2 = spep_6+125;
--setScaleKey(  spep_2,  0,  1.6,  1.6);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setScaleKey( spep_6+101,   0, 1.5, 1.5);
setMoveKey(  spep_6+101,    0,      100,  -54,   0);
setMoveKey(  spep_6+102,    0,      0,  0,   0);

playSe( spep_6+102, SE_05);
speff = entryEffect(  spep_6+102,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_6+182, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

--ryusen_1=entryEffectLife( spep_6, 920, 95, 0x80,  -1,  0,  0,  0 ); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
--setEffScaleKey(  spep_6, ryusen_1, 1.5, 1.5);
--setEffRotateKey(spep_6, ryusen_1, 90);

--entryFadeBg(spep_6, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg(spep_6+180, 3, 5, 4, 255, 255, 255, 255);       -- 背景　白

playSe( spep_6+164, SE_06);

removeAllEffect(spep_6+185);


spep_7 = spep_6+187;

------------------------------------------------------
-- 上昇 (110F)
------------------------------------------------------
changeAnime( spep_7 , 0, 31);

setMoveKey(  spep_7 ,  0,   -300,  -800,   0);
setMoveKey(  spep_7+15,  0,   -100, -100,   0);
setMoveKey(  spep_7+70 ,  0,  -100, -100,   0);
setMoveKey(  spep_7+90  ,  0,   300,  800,   0);

setScaleKey( spep_7,   0, 1, 1);
setScaleKey( spep_7+90,   0, 1, 1);

-- ** エフェクト等 ** --

--playSe( spep_7,SE_07);
playSe( spep_7+70,SE_07);

gacchan=entryEffectLife(spep_7,160020,70,0x100,0,0,300,800);--ガッチャン
setEffScaleKey(spep_7,gacchan,1,1);

shuchusen = entryEffectLife(spep_7, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusen, 1.5, 1.5);

ryusen_1=entryEffectLife(  spep_7, 920, 95, 0x80,  -1,  0,  0,  0 ); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey( spep_7, ryusen_1, 2, 2);
setEffRotateKey( spep_7, ryusen_1, -70);

entryFadeBg( spep_7, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryFade( spep_7+90, 3, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake(spep_7, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( spep_7, 10012, 85, 0x100, -1, 0, 150, 400);    -- ズオッ
setEffShake( spep_7, ct, 32, 5);
setEffScaleKey( spep_7, ct, 3, 3);
setEffAlphaKey( spep_7, ct, 255);
setEffAlphaKey( spep_7+40, ct, 255);
setEffAlphaKey( spep_7+50, ct, 0);
setEffScaleKey( spep_7, ct, 0.0, 0.0);
setEffScaleKey( spep_7+10, ct, 1.3, 1.3);
setEffScaleKey( spep_7+40, ct, 1.3, 1.3);
setEffScaleKey( spep_7+50, ct, 6.0, 6.0);

spep_8 = spep_7+98
------------------------------------------------------
-- 頭突き(110F)
------------------------------------------------------

setMoveKey(  spep_8 ,  0,   -300,  -1300,   0);
setMoveKey(  spep_8+30 ,  0,   -300,  -1300,   0);
setMoveKey(  spep_8+50 ,  0,   -100,  -250,   0);
--setMoveKey(  spep_8+80 ,  0,   -300,  -900,   0);
setMoveKey(  spep_8+100 ,  0,   -500,  -1300,   0);

setScaleKey( spep_8, 0, 1, 1);
setScaleKey( spep_8+50, 0, 1, 1);
setScaleKey( spep_8+100, 0, 2, 2);

setDisp( spep_8, 1, 1);

changeAnime( spep_8 , 1, 108);
changeAnime( spep_8+50 , 1, 106);

setMoveKey(  spep_8 ,  1,   -500,  300,   0);
setMoveKey(  spep_8+50 ,  1,   50,  100,   0);
setMoveKey(  spep_8+100 ,  1,   150,  500,   0);

setScaleKey( spep_8, 1, 2, 2);
setScaleKey( spep_8+50, 1, 2, 2);
setScaleKey( spep_8+100, 1, 0, 0);

setRotateKey(  spep_8 , 1 , 50);


-- ** 揺れ等 ** --
setShake(spep_8, 125, 15);

-- ** エフェクト等 ** --

playSe( spep_8+50, 1052);--頭突きの音
playSe( spep_8+70, 1053);--飛ばされる音

shuchusen1 = entryEffectLife(spep_8, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen1, 1.5, 1.5);

shuchusen2 = entryEffectLife(spep_8+50, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8+50, shuchusen2, 1.5, 1.5);

entryFadeBg(spep_8, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
ryusen = entryEffectLife(spep_8, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_8, ryusen, 45);
setEffRotateKey(spep_8+49, ryusen, 45);
setEffRotateKey(spep_8+50, ryusen, -80);
setEffScaleKey(spep_8, ryusen, 2, 2);

zuthuki = entryEffect(spep_8+50,3,0x40+0x100,0,300,170,350); --頭突き衝撃
setEffScaleKey(spep_8, zuthuki, 3, 3);

entryFade(  spep_8+100, 2, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( spep_8+100);

-- 書き文字エントリー

bago = entryEffectLife(spep_8+50,10021,10,0x100,0,-1,200,650);--バゴォッ
setEffAlphaKey( spep_8+50, bago, 255);
setEffScaleKey(spep_8+50, bago, 3, 3);

spep_9 = spep_8+105;

------------------------------------------------------
-- 吹っ飛び (110F)
------------------------------------------------------

setDisp( spep_9-1, 1, 1);
setDisp( spep_9-1, 0, 0);
setMoveKey(  spep_9-1,    1,  100,  0,   0);
setScaleKey( spep_9-1,    1,  1, 1);
setMoveKey(  spep_9,    1,    0,   0,   128);
setScaleKey( spep_9,    1,  0.1, 0.1);

changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
--entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
--playSe( spep_9+8, SE_10);

setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_9+16,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_9+15, ct, 30, 10);
setEffRotateKey( spep_9+15, ct, -40);
setEffScaleKey( spep_9+15, ct, 4.0, 4.0);
setEffScaleKey( spep_9+16, ct, 2.0, 2.0);
setEffScaleKey( spep_9+17, ct, 2.6, 2.6);
setEffScaleKey( spep_9+18, ct, 4.0, 4.0);
setEffScaleKey( spep_9+19, ct, 2.6, 2.6);
setEffScaleKey( spep_9+20, ct, 3.8, 3.8);
setEffScaleKey( spep_9+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ct, 255);
setEffAlphaKey( spep_9+105, ct, 255);
setEffAlphaKey( spep_9+115, ct, 0);

playSe( spep_9+13, SE_11);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_9+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- キーン1(40F)
------------------------------------------------------

setVisibleUI(0, 0);

setScaleKey(   0,   0, 2, 2);
setScaleKey(   100,   0, 2, 2);

setMoveKey(  0,  0, -500,  -100,   0);
setMoveKey(  25,  0, 0,  -100,   0);
setMoveKey(  75,  0, -50,  -100,   0);
setMoveKey(  100,  0, 650,  -100,   0);

-- ** エフェクト等 ** --

playSe(0,SE_07);
playSe(75,SE_07);

--[[
speff = entryEffect(15,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(15,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

entryFadeBg( 0, 0, 105, 0, 255, 255, 255, 255);       -- ベース白　背景
entryEffectLife(0, 920, 105, 0x80,  -1,  0,  0,  0); -- 流線

--shuchusen = entryEffectLife(0, 911, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 0, shuchusen, 1.5, 1.5);

entryFade(  100, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife(15, 10008, 80, 0x100, -1, 0, -200, 250);    -- ゴゴゴ・・・
setEffShake(15, ct, 70, 8);
setEffScaleKey(15, ct, 1.4, 1.4);

SP_start =105;
------------------------------------------------------
-- キーン2(100F)
------------------------------------------------------
setDisp( SP_start, 0, 0);
setDisp( 0, 1, 0);

ct = entryEffectLife(SP_start,160019 ,45,0x100,-1,0,0,-100);-- アラレ突進
setEffAlphaKey(SP_start,ct,255);
setEffScaleKey( SP_start, ct, -1, 1);

--playSe( SP_start, 1009);

entryFade(  SP_start+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen8 = entryEffectLife(SP_start, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife(SP_start, 10014, 45, 0, -1, 0, 100, 150); -- ズドドッ
setEffShake(SP_start, ct, 99, 20);
setEffScaleKey(SP_start, ct, 2.5, 2.5);
setEffScaleKey(SP_start+35, ct, 2.5, 2.5);
setEffScaleKey(SP_start+45, ct, 3, 3);
setEffRotateKey(SP_start, ct, -70);
setEffAlphaKey(SP_start, ct, 255);
setEffAlphaKey(SP_start+35, ct, 255);
setEffAlphaKey(SP_start+45, ct, 0);

spep_6=SP_start+50; --211 260

------------------------------------------------------
-- アラレキック(60F)
------------------------------------------------------
playSe( spep_6, 1018);

setDisp( spep_6, 0, 1);
setDisp( spep_6, 1, 1);
setDisp( spep_6+100, 1, 0);

setRotateKey(spep_6,0,-10);

changeAnime( spep_6, 0, 30); 

changeAnime( spep_6, 1, 102);

setMoveKey(  spep_6,  0, -400, -300 ,  0);
setScaleKey(  spep_6, 0 , 0.5, 0.5 );
setMoveKey(  spep_6,  1, 50, 50 ,  0);
setScaleKey(  spep_6, 1 , 2, 2 );

--setScaleKey(  spep_6+100,  1, 1.2, 1.2);

entryFadeBg(spep_6, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景

ryusen = entryEffectLife(spep_6, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_6, ryusen, 140);
setEffScaleKey(spep_6, ryusen, 2, 2);

-- ** 揺れ等 ** --
setShake(spep_6+ 15, 125, 15);
setMoveKey(  spep_6+50,  0, -100,  0,   0);
setScaleKey(  spep_6+50,  0, 2.5, 2.5);
setMoveKey(  spep_6+50,  1, 50,  100,   0);
setScaleKey(  spep_6+49,  1, 2, 2);
setScaleKey(  spep_6+50,  1, 1, 1);

------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 197; --エンドフェイズのフレーム数を置き換える

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

changeAnime( spep_6+50, 1, 107);

setMoveKey(  spep_6+100,  0, -400,  -300,   0);

--setScaleKey(  spep_6-1, 0 , 1, 1 );
setScaleKey(  spep_6+100 ,0, 0.5, 0.5 );

setMoveKey(  spep_6+100,  1, 500, 500 ,   0);

setScaleKey(  spep_6+100,  1, 2, 2);

-- ** エフェクト等 ** --

playSe( spep_6+50, 1010);--キックの音
--playSe( spep_6+51, 1054);--飛ばされる音

arare_kick = entryEffect(spep_6+50,3,0x40+0x100,0,300,100,0); --キック衝撃
setEffScaleKey(SP_start, arare_kick, 3, 3);

entryFade( spep_6+95, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


entryFade(spep_6+95, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー

dogon = entryEffectLife(spep_6+50,10018,10,0x100,0,-1,100,300);--ドゴォンッ
setEffAlphaKey( spep_6+50, dogon, 255);
setEffScaleKey(spep_6+50, dogon, 3, 3);

--shuchusen5 = entryEffectLife(spep_6+65, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey(spep_6+ 0, shuchusen5, 1.0, 1.0);
--setEffScaleKey(spep_6+ 60, shuchusen5, 1.0, 1.0);
--setEffScaleKey(spep_6+ 125, shuchusen5, 1.0, 1.0);

--spep_2 = spep_6+125;
--setScaleKey(  spep_2,  0,  1.6,  1.6);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setScaleKey( spep_6+101,   0, 1.5, 1.5);
setMoveKey(  spep_6+101,    0,      100,  -54,   0);
setMoveKey(  spep_6+102,    0,      0,  0,   0);

playSe( spep_6+102, SE_05);
speff = entryEffect(  spep_6+102,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_6+182, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

--ryusen_1=entryEffectLife( spep_6, 920, 95, 0x80,  -1,  0,  0,  0 ); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
--setEffScaleKey(  spep_6, ryusen_1, 1.5, 1.5);
--setEffRotateKey(spep_6, ryusen_1, 90);

--entryFadeBg(spep_6, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg(spep_6+180, 3, 5, 4, 255, 255, 255, 255);       -- 背景　白

playSe( spep_6+164, SE_06);

removeAllEffect(spep_6+185);


spep_7 = spep_6+187;

------------------------------------------------------
-- 上昇 (110F)
------------------------------------------------------
changeAnime( spep_7 , 0, 31);

setMoveKey(  spep_7 ,  0,   -420,  -800,   0);
setMoveKey(  spep_7+15,  0,   -170, -100,   0);
setMoveKey(  spep_7+70 ,  0,  -170, -100,   0);
setMoveKey(  spep_7+90  ,  0,   380,  800,   0);

setScaleKey( spep_7,   0, 1, 1);
setScaleKey( spep_7+90,   0, 1, 1);

-- ** エフェクト等 ** --

--playSe( spep_7,SE_07);
playSe( spep_7+70,SE_07);

gacchan=entryEffectLife(spep_7,160020,70,0x100,0,0,380,800);--ガッチャン
setEffScaleKey(spep_7,gacchan,1,1);

shuchusen = entryEffectLife(spep_7, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusen, 1.5, 1.5);

ryusen_1=entryEffectLife(  spep_7, 920, 95, 0x80,  -1,  0,  0,  0 ); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey( spep_7, ryusen_1, 2, 2);
setEffRotateKey( spep_7, ryusen_1, -70);

entryFadeBg( spep_7, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryFade( spep_7+90, 3, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake(spep_7, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( spep_7, 10012, 85, 0x100, -1, 0, 150, 400);    -- ズオッ
setEffShake( spep_7, ct, 32, 5);
setEffScaleKey( spep_7, ct, 3, 3);
setEffAlphaKey( spep_7, ct, 255);
setEffAlphaKey( spep_7+40, ct, 255);
setEffAlphaKey( spep_7+50, ct, 0);
setEffScaleKey( spep_7, ct, 0.0, 0.0);
setEffScaleKey( spep_7+10, ct, 1.3, 1.3);
setEffScaleKey( spep_7+40, ct, 1.3, 1.3);
setEffScaleKey( spep_7+50, ct, 6.0, 6.0);


spep_8 = spep_7+98
------------------------------------------------------
-- 頭突き(110F)
------------------------------------------------------

setMoveKey(  spep_8 ,  0,   -300,  -1300,   0);
setMoveKey(  spep_8+30 ,  0,   -300,  -1300,   0);
setMoveKey(  spep_8+50 ,  0,   -130,  -250,   0);
--setMoveKey(  spep_8+80 ,  0,   -300,  -900,   0);
setMoveKey(  spep_8+100 ,  0,   -500,  -1300,   0);

setScaleKey( spep_8, 0, 1, 1);
setScaleKey( spep_8+50, 0, 1, 1);
setScaleKey( spep_8+100, 0, 2, 2);

setDisp( spep_8, 1, 1);

changeAnime( spep_8 , 1, 108);
changeAnime( spep_8+50 , 1, 106);

setMoveKey(  spep_8 ,  1,   -500,  300,   0);
setMoveKey(  spep_8+50 ,  1,   50,  100,   0);
setMoveKey(  spep_8+100 ,  1,   150,  500,   0);

setScaleKey( spep_8, 1, 2, 2);
setScaleKey( spep_8+50, 1, 2, 2);
setScaleKey( spep_8+100, 1, 0, 0);

setRotateKey(  spep_8 , 1 , 50);


-- ** 揺れ等 ** --
setShake(spep_8, 125, 15);

-- ** エフェクト等 ** --

playSe( spep_8+50, 1052);--頭突きの音
playSe( spep_8+70, 1053);--飛ばされる音

shuchusen1 = entryEffectLife(spep_8, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen1, 1.5, 1.5);

shuchusen2 = entryEffectLife(spep_8+50, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8+50, shuchusen2, 1.5, 1.5);

entryFadeBg(spep_8, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
ryusen = entryEffectLife(spep_8, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_8, ryusen, 45);
setEffRotateKey(spep_8+49, ryusen, 45);
setEffRotateKey(spep_8+50, ryusen, -80);
setEffScaleKey(spep_8, ryusen, 2,2);

zuthuki = entryEffect(spep_8+50,3,0x40+0x100,0,300,170,350); --頭突き衝撃
setEffScaleKey(spep_8, zuthuki, 3, 3);

entryFade(  spep_8+100, 2, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( spep_8+100);

-- 書き文字エントリー

bago = entryEffectLife(spep_8+50,10021,10,0x100,0,-1,200,650);--バゴォッ
setEffAlphaKey( spep_8+50, bago, 255);
setEffScaleKey(spep_8+50, bago, 3, 3);

spep_9 = spep_8+105;

------------------------------------------------------
-- 吹っ飛び (110F)
------------------------------------------------------

setDisp( spep_9-1, 1, 1);
setDisp( spep_9-1, 0, 0);
setMoveKey(  spep_9-1,    1,  100,  0,   0);
setScaleKey( spep_9-1,    1,  1, 1);
setMoveKey(  spep_9,    1,    0,   0,   128);
setScaleKey( spep_9,    1,  0.1, 0.1);

changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
--entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
--playSe( spep_9+8, SE_10);

setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_9+16,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_9+15, ct, 30, 10);
setEffRotateKey( spep_9+15, ct, -40);
setEffScaleKey( spep_9+15, ct, 4.0, 4.0);
setEffScaleKey( spep_9+16, ct, 2.0, 2.0);
setEffScaleKey( spep_9+17, ct, 2.6, 2.6);
setEffScaleKey( spep_9+18, ct, 4.0, 4.0);
setEffScaleKey( spep_9+19, ct, 2.6, 2.6);
setEffScaleKey( spep_9+20, ct, 3.8, 3.8);
setEffScaleKey( spep_9+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ct, 255);
setEffAlphaKey( spep_9+105, ct, 255);
setEffAlphaKey( spep_9+115, ct, 0);

playSe( spep_9+13, SE_11);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_9+110);

end


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


multi_frm = 2;

changeAnime( 0, 0, 3);                       -- ダッシュ
setDisp( 0, 1, 0);

---------------
------------------------------------------------------
-- 全体必殺技の初回時（共通）
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- キーン1(40F)
------------------------------------------------------

setScaleKey(   0,   0, 2, 2);
setScaleKey(   60,   0, 2, 2);

setMoveKey(  0,  0, -500,  0,   0);
setMoveKey(  25,  0, 0,  0,   0);
setMoveKey(  45,  0, -50,  0,   0);
setMoveKey(  59,  0, 650,  0,   0);

-- ** エフェクト等 ** --

playSe(0,SE_07);
playSe(45,SE_07);

entryFadeBg( 0, 0, 60, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryEffectLife(0, 920, 60, 0x80,  -1,  0,  0,  0); -- 流線

--shuchusen = entryEffectLife(0, 911, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 0, shuchusen, 1.5, 1.5);

entryFade(  60, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( 0, 10012, 60, 0x100, -1, 0, 150, 300);    -- ズオッ
setEffShake(spep_0, ct, 32, 5);
setEffScaleKey(0, ct, 3, 3);
setEffAlphaKey(0, ct, 255);
setEffAlphaKey(40, ct, 255);
setEffAlphaKey(60, ct, 0);
setEffScaleKey(0, ct, 0.0, 0.0);
setEffScaleKey(5, ct, 1.3, 1.3);
setEffScaleKey(40, ct, 1.3, 1.3);
setEffScaleKey(60, ct, 6.0, 6.0);

SP_start =69;

------------------------------------------------------
-- キーン2(100F)
------------------------------------------------------
setDisp( SP_start, 0, 0);
setDisp( 0, 1, 0);

tossin = entryEffectLife(SP_start,107032 ,60,0x100,-1,0,0,-100);-- アラレ突進
setEffAlphaKey(SP_start,tossin,255);
--setEffScaleKey( SP_start, tossin, 1.5, 1.5);

setVisibleUI(SP_start+0, 0);

--playSe( SP_start, 1009);

entryFade(  SP_start+60, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen8 = entryEffectLife(SP_start, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife(SP_start, 10014, 70, 0, -1, 0, 100, 200); -- ズドドッ
setEffShake(SP_start, ct, 99, 20);
setEffScaleKey(SP_start, ct, 2.5, 2.5);
setEffScaleKey(SP_start+55, ct, 2.5, 2.5);
setEffScaleKey(SP_start+65, ct, 3, 3);
setEffRotateKey(SP_start, ct, 70);
setEffAlphaKey(SP_start, ct, 255);
setEffAlphaKey(SP_start+55, ct, 255);
setEffAlphaKey(SP_start+65, ct, 0);

spep_6=SP_start+70; --211 260

------------------------------------------------------
-- 上昇(60F)
------------------------------------------------------
playSe( spep_6, 1018);

setDisp( spep_6, 0, 1);

changeAnime( spep_6, 0, 30); 

setMoveKey(  spep_6,  0, 0,  -200,   0);
setMoveKey(  spep_6+10,  0, 0,  0,   0);
setMoveKey(  spep_6+95,  0, 0,  0,   0);

--setScaleKey(  spep_6-1, 0 , 1, 1 );
setScaleKey(  spep_6-1, 0 , 1, 1);
setScaleKey(  spep_6+95,  0, 0.8, 0.8);

entryFade( spep_6+95, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト等 ** --

playSe( spep_6+10,1003);
playSe( spep_6+30,1003);
playSe( spep_6+50,1003);
playSe( spep_6+70,1003);
playSe( spep_6+90,1003);


speff = entryEffect(spep_6+15,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(spep_6+15,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade(spep_6+95, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake(spep_6+15, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife(spep_6+ 15, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_6+15, ct, 95, 8);
setEffScaleKey(spep_6+15, ct, 1.4, 1.4);

--shuchusen5 = entryEffectLife(spep_6+65, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey(spep_6+ 0, shuchusen5, 1.0, 1.0);
--setEffScaleKey(spep_6+ 60, shuchusen5, 1.0, 1.0);
--setEffScaleKey(spep_6+ 125, shuchusen5, 1.0, 1.0);

--spep_2 = spep_6+125;
--setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setScaleKey( spep_6+99,   0, 1.5, 1.5);
setMoveKey(  spep_6+99,    0,      100,  -54,   0);
setMoveKey(  spep_6+100,    0,      0,  0,   0);

playSe( spep_6+100, SE_05);
speff = entryEffect(  spep_6+100,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_6+180, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

ryusen_1=entryEffectLife( spep_6-1, 920, 95, 0x80,  -1,  0,  0,  0 ); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  spep_6-1, ryusen_1, 1.5, 1.5);
setEffRotateKey(spep_6-1, ryusen_1, 90);

arare_hund = entryEffectLife(spep_6-1,107033 ,95,0x40+0x80,0,300,-5,-80);--腕回し
setEffScaleKey(spep_6-1,arare_hund,1,1);
setEffScaleKey(spep_6+95,arare_hund,0.8,0.8);
--setEffMoveKey(spep_6+77,arare_hund,-5,-80);
setEffMoveKey(spep_6+78,arare_hund,0,-75);

entryFadeBg(spep_6, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg(spep_6+185, 3, 5, 4, 255, 255, 255, 255);       -- 背景　白

playSe( spep_6+164, SE_06);

removeAllEffect(spep_6+185);

spep_7 = spep_6+185;

------------------------------------------------------
-- 下降 (110F)
------------------------------------------------------
changeAnime( spep_7 , 0, 31);

setMoveKey(  spep_7 ,  0,   0,  700,   0);
setMoveKey(  spep_7+50  ,  0,   0,  100,   0);
setMoveKey(  spep_7+70  ,  0,   0,  100,   0);
setMoveKey(  spep_7+115  ,  0,   0,  0,   0);

setScaleKey( spep_7, 0 , 1.5, 1.5);
--setScaleKey( spep_7+50,   0, 1, 1);
setScaleKey( spep_7+70,   0, 1.5, 1.5);
setScaleKey( spep_7+115,   0, 2, 2);

-- ** エフェクト等 ** --

--playSe( spep_7,SE_07);

gacchan=entryEffectLife(spep_7,107034 ,70,0x40+0x100,0,300,0,400);--ガッチャン
setEffScaleKey( spep_7, gacchan, 1, 1);
--setEffScaleKey( spep_7+50, gacchan, 1, 1);
setEffScaleKey( spep_7+70, gacchan, 1, 1);

ryusen_1=entryEffectLife(  spep_7, 920, 115, 0x80,  -1,  0,  0,  0 ); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey( spep_7, ryusen_1, 1.5, 1.5);
setEffRotateKey( spep_7, ryusen_1, 90);

entryFadeBg( spep_7, 0, 115, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryFadeBg(spep_7, 0, 50, 4, 255, 255, 255, 255);       -- 背景　白

entryFade( spep_7+115, 3, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake(spep_7, 125, 15);

-- 書き文字エントリー
zuo = entryEffectLife( spep_7, 10012, 90, 0x100, -1, 0, 150, 300);    -- ズオッ
setEffShake( spep_7, zuo, 32, 5);
setEffAlphaKey( spep_7, zuo, 255);
setEffAlphaKey( spep_7+70, zuo, 255);
setEffAlphaKey( spep_7+90, zuo, 0);
setEffScaleKey( spep_7, zuo, 3, 3);
setEffScaleKey( spep_7, zuo, 0.0, 0.0);
setEffScaleKey( spep_7+10, zuo, 1.3, 1.3);
setEffScaleKey( spep_7+70, zuo, 1.3, 1.3);
setEffScaleKey( spep_7+90, zuo, 6.0, 6.0);

------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 389; --エンドフェイズのフレーム数を置き換える

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

playSe( spep_7+70,SE_07);

------------------------------------------------------
-- BAKOOM!(110F)
------------------------------------------------------

bakooom = entryEffectLife(spep_7+115,107035 ,70,0x100,0,0,30,0);--BAKOOM!
setEffScaleKey(spep_7+115,bakooom,1.2,1.2);

entryFade(  spep_7+185, 2, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--removeAllEffect( spep_7+95);

playSe( spep_7+115, 1023);
------------------------------------------------------
-- ヒビ(110F)
------------------------------------------------------
setDisp(spep_7+190, 0, 0);

hibi = entryEffectLife(spep_7+190,107036 ,50,0x100,0,0,0,0);--ヒビ
setEffScaleKey(spep_7+190,hibi,1,1);

entryFade(  spep_7+240, 2, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( spep_7+245);

playSe( spep_7+190, 1040);
--playSe( spep_7+195, 1041);
playSe( spep_7+210, SE_11);
--playSe( spep_7+205, 1041);
--playSe( spep_7+220, 1054);
--playSe( spep_7+215, 1041);

spep_8 = spep_7+245;
------------------------------------------------------
-- 揺れる地面(110F)
------------------------------------------------------
--setDisp(spep_8, 0, 0);
setDisp(spep_8, 1, 1);
setDisp(spep_8+90, 1, 0);

changeAnime(spep_8,1,102)

setShakeChara(spep_8, 1 , 95 ,10);

setMoveKey(  spep_8  ,  1,   150,  -150,   0);
setMoveKey(  spep_8+90  ,  1,   150,  -150,   0);

setScaleKey( spep_8,   1, 2, 2);
setScaleKey( spep_8+90,   1, 2, 2);

-- ** エフェクト等 ** --

jiware=playSe(spep_8,1044);
stopSe(spep_8+90,jiware,5);

jimen= entryEffectLife(spep_8,107037 ,95,0x80,0,0,0,0);--揺れる地面
--setEffScaleKey(spep_8,jimen,1.5,1.5);

--jimen2=entryEffectLife(spep_8,107037 ,95,0x80,0,0,0,0);--揺れる地面(反転)
--setEffScaleKey(spep_8,jimen,-1,1);

entryFade( spep_8+90, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ばかっ (110F)
------------------------------------------------------

spep_9 = spep_8+95;
--SP_start = spep_6+152

--entryEffect( spep_9, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（青）
--entryEffectLife( spep_9, 107038,141, 0x00,  -1, 0,  0,  0);
entryEffect( spep_9, 107038, 0x00,  -1, 0,  0,  0);

playSe( spep_9, 1033);

setDamage( spep_9+17, 1, 0);  -- ダメージ振動等

--playSe( spep_9+57, SE_10);
playSe( spep_9+25, SE_10);
shuchusen = entryEffectLife( spep_9+4, 906, 161, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_9+4,shuchusen,1.5,1.5);

--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

baka=entryEffectLife( spep_9+25, 107039,65, 0x100,  0, 0,  0,  400);--ばかっ
setEffScaleKey( spep_9+25, baka,1.5,  1.5);

-- ダメージ表示
dealDamage(spep_9+25);

entryFade(spep_9+75, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+85);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

------------------------------------------------------
-- キーン1(40F)
------------------------------------------------------

setScaleKey(   0,   0, 2, 2);
setScaleKey(   60,   0, 2, 2);

setMoveKey(  0,  0, -500,  0,   0);
setMoveKey(  25,  0, 0,  0,   0);
setMoveKey(  45,  0, -50,  0,   0);
setMoveKey(  59,  0, 650,  0,   0);

-- ** エフェクト等 ** --

playSe(0,SE_07);
playSe(45,SE_07);

entryFadeBg( 0, 0, 60, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryEffectLife(0, 920, 60, 0x80,  -1,  0,  0,  0); -- 流線

--shuchusen = entryEffectLife(0, 911, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 0, shuchusen, 1.5, 1.5);

entryFade(  60, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( 0, 10012, 60, 0x100, -1, 0, 150, 300);    -- ズオッ
setEffShake(spep_0, ct, 32, 5);
setEffScaleKey(0, ct, 3, 3);
setEffAlphaKey(0, ct, 255);
setEffAlphaKey(40, ct, 255);
setEffAlphaKey(60, ct, 0);
setEffScaleKey(0, ct, 0.0, 0.0);
setEffScaleKey(5, ct, 1.3, 1.3);
setEffScaleKey(40, ct, 1.3, 1.3);
setEffScaleKey(60, ct, 6.0, 6.0);

SP_start =69;


------------------------------------------------------
-- キーン2(100F)
------------------------------------------------------
setDisp( SP_start, 0, 0);
setDisp( 0, 1, 0);

tossin = entryEffectLife(SP_start,107032 ,60,0x100,-1,0,0,-100);-- アラレ突進
setEffAlphaKey(SP_start,tossin,255);
setEffScaleKey( SP_start, tossin, -1, 1);

setVisibleUI(SP_start+0, 0);

--playSe( SP_start, 1009);

entryFade(  SP_start+60, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen8 = entryEffectLife(SP_start, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife(SP_start, 10014, 70, 0, -1, 0, 100, 200); -- ズドドッ
setEffShake(SP_start, ct, 99, 20);
setEffScaleKey(SP_start, ct, 2.5, 2.5);
setEffScaleKey(SP_start+55, ct, 2.5, 2.5);
setEffScaleKey(SP_start+65, ct, 3, 3);
setEffRotateKey(SP_start, ct, -70);
setEffAlphaKey(SP_start, ct, 255);
setEffAlphaKey(SP_start+55, ct, 255);
setEffAlphaKey(SP_start+65, ct, 0);

spep_6=SP_start+70; --211 260

------------------------------------------------------
-- 上昇(60F)
------------------------------------------------------
playSe( spep_6, 1018);

setDisp( spep_6, 0, 1);

changeAnime( spep_6, 0, 30); 

setMoveKey(  spep_6,  0, 0,  -200,   0);
setMoveKey(  spep_6+10,  0, 0,  0,   0);
setMoveKey(  spep_6+95,  0, 0,  0,   0);

--setScaleKey(  spep_6-1, 0 , 1, 1 );
setScaleKey(  spep_6-1, 0 , 1, 1);
setScaleKey(  spep_6+95,  0, 0.8, 0.8);

entryFade( spep_6+95, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト等 ** --

playSe( spep_6+10,1003);
playSe( spep_6+30,1003);
playSe( spep_6+50,1003);
playSe( spep_6+70,1003);
playSe( spep_6+90,1003);

--[[
speff = entryEffect(spep_6+15,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(spep_6+15,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--



entryFade(spep_6+95, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake(spep_6+ 15, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife(spep_6+ 15, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_6+15, ct, 95, 8);
setEffScaleKey(spep_6+15, ct, 1.4, 1.4);

--shuchusen5 = entryEffectLife(spep_6+65, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey(spep_6+ 0, shuchusen5, 1.0, 1.0);
--setEffScaleKey(spep_6+ 60, shuchusen5, 1.0, 1.0);
--setEffScaleKey(spep_6+ 125, shuchusen5, 1.0, 1.0);

--spep_2 = spep_6+125;
--setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setScaleKey( spep_6+99,   0, 1.5, 1.5);
setMoveKey(  spep_6+99,    0,      100,  -54,   0);
setMoveKey(  spep_6+100,    0,      0,  0,   0);

playSe( spep_6+100, SE_05);
speff = entryEffect(  spep_6+100,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_6+180, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

ryusen_1=entryEffectLife( spep_6-1, 920, 95, 0x80,  -1,  0,  0,  0 ); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  spep_6-1, ryusen_1, 1.5, 1.5);
setEffRotateKey(spep_6-1, ryusen_1, 90);

arare_hund = entryEffectLife(spep_6-1,107033 ,95,0x40+0x80,0,300,-5,-80);--腕回し
setEffScaleKey(spep_6-1,arare_hund,1,1);
setEffScaleKey(spep_6+95,arare_hund,0.8,0.8);
--setEffMoveKey(spep_6+77,arare_hund,-5,-80);
setEffMoveKey(spep_6+78,arare_hund,5,-75);

entryFadeBg(spep_6, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg(spep_6+185, 3, 5, 4, 255, 255, 255, 255);       -- 背景　白

playSe( spep_6+164, SE_06);

removeAllEffect(spep_6+185);

spep_7 = spep_6+185;

------------------------------------------------------
-- 下降 (110F)
------------------------------------------------------
changeAnime( spep_7 , 0, 31);

setMoveKey(  spep_7 ,  0,   90,  700,   0);
setMoveKey(  spep_7+50  ,  0,   90,  100,   0);
setMoveKey(  spep_7+70  ,  0,  90,  100,   0);
setMoveKey(  spep_7+115  ,  0,   90,  0,   0);

setScaleKey( spep_7, 0 , 1.5, 1.5);
--setScaleKey( spep_7+50,   0, 1, 1);
setScaleKey( spep_7+70,   0, 1.5, 1.5);
setScaleKey( spep_7+115,   0, 2, 2);

-- ** 揺れ等 ** --
setShake(spep_7, 125, 15);

-- ** エフェクト等 ** --

--playSe( spep_7,SE_07);

gacchan=entryEffectLife(spep_7,107034 ,70,0x40+0x100,0,300,0,400);--ガッチャン
setEffScaleKey( spep_7, gacchan, 1, 1);
--setEffScaleKey( spep_7+50, gacchan, 1, 1);
setEffScaleKey( spep_7+70, gacchan, 1, 1);

ryusen_1=entryEffectLife(  spep_7, 920, 115, 0x80,  -1,  0,  0,  0 ); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey( spep_7, ryusen_1, 1.5, 1.5);
setEffRotateKey( spep_7, ryusen_1, 90);

entryFadeBg( spep_7, 0, 115, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryFadeBg(spep_7, 0, 50, 4, 255, 255, 255, 255);       -- 背景　白

entryFade( spep_7+115, 3, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
zuo = entryEffectLife( spep_7, 10012, 90, 0x100, -1, 0, 150, 300);    -- ズオッ
setEffShake( spep_7, zuo, 32, 5);
setEffAlphaKey( spep_7, zuo, 255);
setEffAlphaKey( spep_7+70, zuo, 255);
setEffAlphaKey( spep_7+90, zuo, 0);
setEffScaleKey( spep_7, zuo, 3, 3);
setEffScaleKey( spep_7, zuo, 0.0, 0.0);
setEffScaleKey( spep_7+10, zuo, 1.3, 1.3);
setEffScaleKey( spep_7+70, zuo, 1.3, 1.3);
setEffScaleKey( spep_7+90, zuo, 6.0, 6.0);


------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 389; --エンドフェイズのフレーム数を置き換える

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

playSe( spep_7+70,SE_07);

------------------------------------------------------
-- BAKOOM!(110F)
------------------------------------------------------

bakooom = entryEffectLife(spep_7+115,107035 ,70,0x100,0,0,-100,0);--BAKOOM!
setEffScaleKey(spep_7+115,bakooom,-1.2,1.2);

entryFade(  spep_7+185, 2, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--removeAllEffect( spep_7+95);

playSe( spep_7+115, 1023);
------------------------------------------------------
-- ヒビ(110F)
------------------------------------------------------
setDisp(spep_7+190, 0, 0);

hibi = entryEffectLife(spep_7+190,107036 ,50,0x100,0,0,-90,0);--ヒビ
--setEffScaleKey(spep_7+190,hibi,1.5,1.5);

entryFade(  spep_7+240, 2, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( spep_7+245);

playSe( spep_7+190, 1040);
--playSe( spep_7+195, 1041);
playSe( spep_7+210, SE_11);
--playSe( spep_7+205, 1041);
--playSe( spep_7+220, 1054);
--playSe( spep_7+215, 1041);

spep_8 = spep_7+245;
------------------------------------------------------
-- 揺れる地面(110F)
------------------------------------------------------
--setDisp(spep_8, 0, 0);
setDisp(spep_8, 1, 1);
setDisp(spep_8+90, 1, 0);

changeAnime(spep_8,1,102)

setShakeChara(spep_8, 1 , 95 ,10);

setMoveKey(  spep_8  ,  1,   150,  -150,   0);
setMoveKey(  spep_8+90  ,  1,   150,  -150,   0);

setScaleKey( spep_8,   1, 2, 2);
setScaleKey( spep_8+90,   1, 2, 2);

-- ** エフェクト等 ** --

jiware=playSe(spep_8,1044);
stopSe(spep_8+90,jiware,5);

jimen= entryEffectLife(spep_8,107037 ,95,0x80,0,0,-100,0);--揺れる地面
--setEffScaleKey(spep_8,jimen,1.5,1.5);

entryFade( spep_8+90, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ばかっ (110F)
------------------------------------------------------

spep_9 = spep_8+95;
--SP_start = spep_6+152

--entryEffect( spep_9, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（青）
entryEffect( spep_9, 107038, 0x00,  -1, 0,  0,  0);

playSe( spep_9, 1033);

setDamage( spep_9+17, 1, 0);  -- ダメージ振動等

--playSe( spep_9+57, SE_10);
playSe( spep_9+25, SE_10);
shuchusen = entryEffectLife( spep_9+4, 906, 161, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_9+4,shuchusen,1.5,1.5);

--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

baka=entryEffectLife( spep_9+25, 107039,65, 0x100,  0, 0,  -100,  400);--ばかっ
setEffScaleKey( spep_9+25, baka,-1.5, 1.5);

-- ダメージ表示
dealDamage(spep_9+25);

entryFade(spep_9+75, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+90);

end

end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then --- 全体必殺技の初回時
-- 全体必殺技の最初以外
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

SP_ATK_4 = 0;

setVisibleUI(0, 0);

setDisp( SP_ATK_4, 0, 0);

	if(_IS_DODGE_ == 1) then

	SP_dodge = SP_ATK_4; --エンドフェイズのフレーム数を置き換える

	playSe( SP_dodge-12, 1042);

	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
		if (_IS_PLAYER_SIDE_ == 1) then

			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

		else

			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

		end
	setEffAlphaKey( SP_dodge, kaihi, 255);

	pauseAll( SP_dodge, 67);

	entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

	setMoveKey( SP_dodge+9, 0,  -1500, 0,   0);

	endPhase(SP_dodge+10);
	do return end
	else end


setDisp( SP_ATK_4, 1, 1);
setMoveKey(  SP_ATK_4,    1,  120,    0,  128);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setShake(SP_ATK_4+10,6,15);
setShake(SP_ATK_4+17,15,9);

setRotateKey( SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+14, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+14, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);


playSe( SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+15);

entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+120);

-- ！全体必殺技の最初以外
end

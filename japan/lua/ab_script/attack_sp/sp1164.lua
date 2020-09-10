-- 1013810　人造人間17号　ドッカン覚醒後

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

SP_01 = 151475  --突進（70）
SP_02 = 151476  --高速打撃前（140） 
SP_03 = 151477  --高速打撃後（140）
SP_04 = 151478  --蹴り前（60）
SP_05 = 151479  --蹴り後（60）
SP_06 = 151480  --叩きつけ前（130）
SP_07 = 151481  --叩きつけ後（130）
SP_08 = 151482  --岩の上で溜め（100）
SP_09 = 151483  --放つ（100）
SP_10 = 151484  --爆発

SP_11 = 151485  --敵用突進 01
SP_12 = 151486  --敵用蹴り手前 04
SP_13 = 151487  --敵用岩の上で溜め 08
SP_14 = 151488  --敵用放つ 09

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵

setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- 突進(70F)
------------------------------------------------------

setVisibleUI(0, 0);

spep_1 = 0;

-- エフェクト --
tossin = entryEffect( spep_1,  SP_01,  0x100,  -1,  0,  0,  0);  --突進
setEffScaleKey(  spep_1,  tossin,  1.0,  1.0);
setEffScaleKey(  spep_1+70,  tossin,  1.0,  1.0);
setEffAlphaKey(  spep_1,  tossin,  255); 
setEffAlphaKey(  spep_1+70,  tossin,  255);

-- 背景 --
entryFadeBg( spep_1, 0, 70, 0, 10, 10, 10, 200);       -- ベース暗め　背景


-- 集中線 --
shuchusen1 = entryEffectLife( spep_1, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.0,  1.0);
setEffScaleKey(  spep_1+70,  shuchusen1,  1.0,  1.0); --
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+70,  shuchusen1,  255); --

-- 書き文字エントリー --
ct1 = entryEffectLife(  spep_1,  10012,  70,  0x100, -1, 0,  150, 400);  -- ズオン

setEffScaleKey(  spep_1,  ct1,  2.0,  2.0);
setEffScaleKey(  spep_1+10,  ct1,  3.0,  3.0);
setEffScaleKey(  spep_1+52,  ct1,  3.0,  3.0);
setEffScaleKey(  spep_1+53,  ct1,  5.0,  5.0);
setEffScaleKey(  spep_1+70,  ct1,  6.0,  6.0);
setEffMoveKey(  spep_1,  ct1,  150,  400);
setEffMoveKey(  spep_1+70,  ct1,  250,  400);
setEffRotateKey(  spep_1,  ct1,  30);
setEffAlphaKey(  spep_1,  ct1,  255);
setEffAlphaKey(  spep_1+52,  ct1,  255);
setEffAlphaKey(  spep_1+53,  ct1,  150);
setEffAlphaKey(  spep_1+70,  ct1,  0);
setEffShake(  spep_1,  ct1,  70,  20);

entryFade( spep_1+58, 8,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- SE --
playSe(  spep_1,  SE_06);  --ダッシュ音


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

entryFadeBg( spep_1+70, 0, 90, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_1+70, SE_05);

speff = entryEffect(  spep_1+70,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


--entryFade( spep_1+80+90, 4,  12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 高速打撃(140F)
------------------------------------------------------
spep_2 = spep_1+90+70;
entryFade( spep_2-6, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 白フェード --
entryFade( spep_2+28, 2,  2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 敵 --
setDisp(  spep_2+34,  1,  1);
setDisp(  spep_2+34,  0,  0);

changeAnime(  spep_2+34,  1,  100);  --敵立ち絵
changeAnime(  spep_2+44,  1,  100);

setMoveKey(  spep_2+34,  1,  50,  0,  0);
setMoveKey(  spep_2+44,  1,  50,  0,  0);
setScaleKey(  spep_2+34,  1,  10,  10);
setScaleKey(  spep_2+40,  1,  1.6,  1.6);
setScaleKey(  spep_2+44,  1,  1.6,  1.6);

-- 敵：連打ダメージ --
changeAnime(  spep_2+46,  1,  106);  --仰け反り
changeAnime(  spep_2+58,  1,  108);  --くの字
changeAnime(  spep_2+70,  1,  106);
changeAnime(  spep_2+82,  1,  108);
changeAnime(  spep_2+94,  1,  106);
changeAnime(  spep_2+106,  1,  108);
changeAnime(  spep_2+118,  1,  106);
changeAnime(  spep_2+130,  1,  108);
changeAnime(  spep_2+140,  1,  108);

setMoveKey(  spep_2+46,  1,  50,  0,  0);
setMoveKey(  spep_2+58,  1,  50,  0,  0);
setMoveKey(  spep_2+70,  1,  0,  50,  0);
setMoveKey(  spep_2+82,  1,  0,  50,  0);
setMoveKey(  spep_2+94,  1,  0,  0,  0);
setMoveKey(  spep_2+106,  1,  50,  50,  0);
setMoveKey(  spep_2+118,  1,  0,  0,  0);
setMoveKey(  spep_2+130,  1,  0,  50,  0);
--140?

setRotateKey(  spep_2+46,  1,  -20);
setRotateKey(  spep_2+55,  1,  -20);
setRotateKey(  spep_2+56,  1,  0);
setRotateKey(  spep_2+69,  1,  0);
setRotateKey(  spep_2+70,  1,  -15);
setRotateKey(  spep_2+81,  1,  -15);
setRotateKey(  spep_2+82,  1,  0);
setRotateKey(  spep_2+93,  1,  0);
setRotateKey(  spep_2+94,  1,  -15);
setRotateKey(  spep_2+105,  1,  -15);
setRotateKey(  spep_2+106,  1,  10);
setRotateKey(  spep_2+117,  1,  10);
setRotateKey(  spep_2+118,  1,  -15);
setRotateKey(  spep_2+129,  1,  -15);
setRotateKey(  spep_2+130,  1,  -10);
--140?

setScaleKey(  spep_2+46,  1,  1.4,  1.4);
setScaleKey(  spep_2+56,  1,  1.4,  1.4);
setScaleKey(  spep_2+106,  1,  1.3,  1.3);
setScaleKey(  spep_2+118,  1,  1.2,  1.2);
setScaleKey(  spep_2+130,  1,  1.2,  1.2);
setScaleKey(  spep_2+140,  1,  1.2,  1.2);

setShakeChara(  spep_2+46,  1,  108,  10);  --キャラ揺れ

--  エフェクト  --
dageki_mae = entryEffect(  spep_2,  SP_02,  0x100,  -1,  0,  0,  0);  --高速打撃手前
setEffScaleKey(  spep_2,  dageki_mae,  1.0,  1.0);
setEffScaleKey(  spep_2+140,  dageki_mae,  1.0,  1.0);
setEffAlphaKey(  spep_2,  dageki_mae,  255);
setEffAlphaKey(  spep_2+140,  dageki_mae,  255);

dageki_ushiro = entryEffect(  spep_2,  SP_03,  0x80,  -1,  0,  0,  0);  --高速打撃後ろ
setEffScaleKey(  spep_2,  dageki_ushiro,  1.0,  1.0);
setEffScaleKey(  spep_2+140,  dageki_ushiro,  1.0,  1.0);
setEffAlphaKey(  spep_2,  dageki_ushiro,  255);
setEffAlphaKey(  spep_2+140,  dageki_ushiro,  255);

-- 背景 --
entryFadeBg( spep_2, 0, 140, 0, 0, 0, 0, 255);       -- ベース黒　背景


-- 集中線 --
shuchusen2 = entryEffectLife( spep_2, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
--shuchusen2 = entryEffectLife( spep_2, 906, 45, 0x100,  -1, 0,  0,  0);   -- 集中線
--shuchusen2 = entryEffectLife( spep_2+46,  906,  100,  0x100,  -1,  0,  0,  0);  --集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffScaleKey(  spep_2+45,  shuchusen2,  1.0,  1.0);
setEffScaleKey(  spep_2+46,  shuchusen2,  2.0,  2.0);
setEffScaleKey(  spep_2+140,  shuchusen2,  2.0,  2.0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+140,  shuchusen2,  255);--


-- 書き文字エントリー --
ct2 = entryEffectLife(  spep_2+46,  10017,  94,  0x100,  -1,  0,  0,  330);    -- ドガガガッ 

setEffScaleKey(  spep_2+46,  ct2,  2.0,  2.0);
setEffScaleKey(  spep_2+48,  ct2,  3.5,  3.5);
setEffScaleKey(  spep_2+50,  ct2,  2.7,  2.7);
setEffScaleKey(  spep_2+140,  ct2,  2.7,  2.7);
setEffRotateKey(  spep_2+46,  ct2,  25);
setEffRotateKey(  spep_2+140,  ct2,  25);
setEffAlphaKey(  spep_2+46,  ct2,  255);
setEffAlphaKey(  spep_2+139,  ct2,  255);
setEffAlphaKey(  spep_2+140,  ct2,  0);
setEffShake(  spep_2+46,  ct2,  94,  10);

-- SE --
playSe(  spep_2,  1018);

playSe(  spep_2+46,  1003);
playSe(  spep_2+58,  1001);  
playSe(  spep_2+70,  1009);
playSe(  spep_2+82,  1006);
playSe(  spep_2+94,  1010);
playSe(  spep_2+106,  1009);
playSe(  spep_2+118,  1003);
playSe(  spep_2+130,  1000);


entryFade( spep_2+138, 2,  2, 6, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_2+33; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(SP_dodge,1,0);
setDisp(SP_dodge+1,1,0);

setMoveKey(SP_dodge,1,163,46,0);
setMoveKey(SP_dodge+8,1,163,46,0);

setMoveKey(SP_dodge+9,1,0,-10000,0);
setMoveKey(SP_dodge+10,1,0,-10000,0);

setScaleKey(SP_dodge,1,1.0,1.0);
setScaleKey(SP_dodge+8,1,1.0,1.0);
setScaleKey(SP_dodge+9,1,1.0,1.0);
setScaleKey(SP_dodge+10,1,1.0,1.0);

setRotateKey(SP_dodge,1,0);
setRotateKey(SP_dodge+8,1,0);
setRotateKey(SP_dodge+9,1,0);
setRotateKey(SP_dodge+10,1,0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 蹴り(60F)
------------------------------------------------------

spep_3 = spep_2+140;


-- 敵キャラ --
changeAnime(  spep_3,  1,  108);  --くの字
changeAnime(  spep_3+32,  1,  108); 

setMoveKey(  spep_3,  1,  80,  -10,  0);
setMoveKey(  spep_3+32,  1,  80,  -10,  0);
setScaleKey(  spep_3-2,  1,  1.6,  1.6);
setScaleKey(  spep_3,  1,  1.6,  1.6);
setScaleKey(  spep_3+32,  1,  1.6,  1.6);
setRotateKey(  spep_3,  1,  25);
setRotateKey(  spep_3+32,  1,  25);


setDisp(  spep_3+33,  1,  0);  --敵キャラ消す

--  エフェクト  --
keri_mae = entryEffect(  spep_3,  SP_04,  0x100,  -1,  0,  0,  0);  --蹴り手前
setEffScaleKey(  spep_3,  keri_mae,  1.0,  1.0);
setEffScaleKey(  spep_3+60,  keri_mae,  1.0,  1.0);
setEffAlphaKey(  spep_3,  keri_mae,  255);
setEffAlphaKey(  spep_3+60,  keri_mae,  255);


keri_ushiro = entryEffect(  spep_3,  SP_05,  0x80,  -1,  0,  0,  0);  --蹴り後ろ
setEffScaleKey(  spep_3,  keri_ushiro,  1.0,  1.0);
setEffScaleKey(  spep_3+60,  keri_ushiro,  1.0,  1.0);
setEffAlphaKey(  spep_3,  keri_ushiro,  255);
setEffAlphaKey(  spep_3+60,  keri_ushiro,  255);

-- 背景 --
entryFadeBg( spep_3, 0, 60, 0,  0, 0, 0,  255);       -- ベース黒　背景


-- 集中線 --
shuchusen3 = entryEffectLife( spep_3, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3,  shuchusen3,  2.0,  2.0);
setEffScaleKey(  spep_3+140,  shuchusen3,  2.0,  2.0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+140,  shuchusen3,  255);

-- 書き文字エントリー --
ct3 = entryEffectLife(  spep_3+5,  10020,  29,  0x100,  -1,  0,  200,  300); -- バキッ

setEffScaleKey(  spep_3+5,  ct3,  1.6,  1.6);      --大きさ
setEffScaleKey(  spep_3+8,  ct3,  1.7,  1.7);
setEffScaleKey(  spep_3+12,  ct3,  2.5,  2.5);
setEffScaleKey(  spep_3+16,  ct3,  1.7,  1.7);
setEffScaleKey(  spep_3+20,  ct3,  1.7,  1.7);
setEffScaleKey(  spep_3+24,  ct3,  1.7,  1.7);
setEffScaleKey(  spep_3+34,  ct3,  1.7,  1.7);

setEffRotateKey(  spep_3+5,  ct3,  30);--角度
setEffRotateKey(  spep_3+7,  ct3,  30);
setEffRotateKey(  spep_3+8,  ct3,  10);
setEffRotateKey(  spep_3+11,  ct3,  10);
setEffRotateKey(  spep_3+12,  ct3,  30);
setEffRotateKey(  spep_3+13,  ct3,  30);
setEffRotateKey(  spep_3+16,  ct3,  20);
setEffRotateKey(  spep_3+19,  ct3,  20);
setEffRotateKey(  spep_3+20,  ct3,  30);
setEffRotateKey(  spep_3+23,  ct3,  30);
setEffRotateKey(  spep_3+34,  ct3,  30);

setEffAlphaKey(  spep_3+5,  ct3,  255); --色の濃さ
setEffAlphaKey(  spep_3+24,  ct3,  255);
setEffAlphaKey(  spep_3+34,  ct3,  0);
setEffShake(  spep_3+5,  ct3,  31,  30); --ゆれ

entryFade( spep_3+50, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- SE --
playSe(  spep_3+10,  1001);  --蹴り

------------------------------------------------------
-- 叩きつけ(130F)
------------------------------------------------------

spep_4 = spep_3+60;


-- 敵 --
setDisp(  spep_4,  1,  1);  --敵立ち絵表示
changeAnime(  spep_4,  1,  108);  --敵：くの字
setShakeChara(  spep_4,  1,  30,20); 
setShakeChara(  spep_4+30,  1,  20,23); 
setShakeChara(  spep_4+50,  1,  20,23); 

setMoveKey(  spep_4,  1,  -250,  400,  0);
setMoveKey(  spep_4+30,  1,  40,  -45,  0);
setMoveKey(  spep_4+50,  1,  40,  -45,  0);
setMoveKey(  spep_4+76,  1,  40,  -45,  0);
setMoveKey(  spep_4+78,  1,  54,  -55,  0);
setMoveKey(  spep_4+80,  1,  80,  -90,  0);  --ひび割れ　442
setMoveKey(  spep_4+82,  1,  90,  -110,  0);
setMoveKey(  spep_4+84,  1,  100,  -130,  0);
setMoveKey(  spep_4+86,  1,  140,  -160,  0);
setMoveKey(  spep_4+88,  1,  160,  -200,  0);
setMoveKey(  spep_4+90,  1,  190,  -220,  0);
setMoveKey(  spep_4+92,  1,  230,  -280,  0);
setMoveKey(  spep_4+94,  1,  270,  -320,  0);
setMoveKey(  spep_4+96,  1,  310,  -360,  0);
setMoveKey(  spep_4+98,  1,  350,  -400,  0);
setMoveKey(  spep_4+110,  1,  650,  -700,  0);

setScaleKey(  spep_4,  1,  5.0,  5.0);
setScaleKey(  spep_4+30,  1,  1.2,  1.2);
setScaleKey(  spep_4+38,  1,  1.2,  1.2);
setScaleKey(  spep_4+80,  1,  1.2,  1.2);
setScaleKey(  spep_4+110,  1,  0.8,  0.8);
setRotateKey(  spep_4,  1,  10);
setRotateKey(  spep_4+100,  1,  10);
setRotateKey(  spep_4+110,  1,  10);--

--  エフェクト  --
tataki_mae = entryEffect(  spep_4,  SP_06,  0x100,  -1,  0,  0,  0);  -- 叩きつけ手前
setEffScaleKey(  spep_4,  tataki_mae,  1.0,  1.0);
setEffScaleKey(  spep_4+130,  tataki_mae,  1.0,  1.0);
setEffScaleKey(  spep_4,  tataki_mae,  255);
setEffScaleKey(  spep_4+130,  tataki_mae,  255);


tataki_ushiro = entryEffect(  spep_4,  SP_07,  0x80,  -1,  0,  0,  0);  --叩きつけ奥
setEffScaleKey(  spep_4,  tataki_ushiro,  1.0,  1.0);
setEffScaleKey(  spep_4+130,  tataki_ushiro,  1.0,  1.0);
setEffAlphaKey(  spep_4,  tataki_ushiro,  255);
setEffAlphaKey(  spep_4+130,  tataki_ushiro,  255);

-- 流線 --
ryusen4 = entryEffectLife(  spep_4,  924,  40,  0x80,  -1,  0,  -900,  400);

setEffScaleKey(  spep_4,  ryusen4,  2.0,  2.0);
setEffScaleKey(  spep_4+40,  ryusen4,  2.0,  2.0);

setEffRotateKey(  spep_4,  ryusen4,  30);
setEffRotateKey(  spep_4+40,  ryusen4,  30);
setEffAlphaKey(  spep_4,  ryusen4,  255);
setEffAlphaKey(  spep_4+40,  ryusen4,  255);


-- 背景 --
entryFadeBg( spep_4, 0, 30, 0,  10, 10, 10, 255);     -- ベース グレー
entryFadeBg( spep_4+30, 0, 100, 0,  0, 0, 0,  255);       -- ベース黒　背景

-- 集中線 --
shuchusen4 = entryEffectLife( spep_4, 906, 130, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  shuchusen4,  2.0,  2.0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);

setEffScaleKey(  spep_4+30,  shuchusen4,  1.0,  1.0);
setEffAlphaKey(  spep_4+30,  shuchusen4,  255);

setEffScaleKey(  spep_4+130,  shuchusen4,  1.0,  1.0);
setEffAlphaKey(  spep_4+130,  shuchusen4,  255);

-- SE --
playSe(  spep_4,  1018);  --ダッシュ
playSe(  spep_4+30,  1027);   --ぶつかった音


entryFade(  spep_4+32,  6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 岩の上で溜め(100F)
------------------------------------------------------

spep_5 = spep_4+130;

setDisp(  spep_5,  1,  0);  --敵立ち絵非表示

--  エフェクト  --
tame = entryEffect(  spep_5,  SP_08,  0x100,  -1,  0,  0,  0);  --岩の上で溜め
setEffScaleKey(  spep_5,  tame,  1.0,  1.0);
setEffScaleKey(  spep_5+100,  tame,  1.0,  1.0);
setEffAlphaKey(  spep_5,  tame,  255);
setEffAlphaKey(  spep_5+100,  tame,  255);

entryFadeBg( spep_5, 0, 100, 0,  0, 0, 0,  255);       -- ベース黒　背景

shuchusen6 = entryEffectLife( spep_5, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_5,  shuchusen6,  2.0,  2.0);
setEffAlphaKey(  spep_5,  shuchusen6,  255);


-- 顔・セリフカットイン
speff = entryEffect(  spep_5+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_5+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_5+30, 190006, 70, 0x100, -1,  0, 100, 510);    -- ゴゴゴゴ
setEffShake(spep_5+30, ctgogo, 70, 10);
setEffScaleKey(spep_5+30, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_5+30, ctgogo, 0);
setEffAlphaKey( spep_5+30, ctgogo, 255);
setEffAlphaKey( spep_5+90,  ctgogo,  255);
setEffAlphaKey( spep_5+100,  ctgogo,  0);

-- SE --
playSe(spep_5,  43)  --瞬間移動
playSe(spep_5+1,  SE_06);  --気を溜める音
playSe(spep_5+30,  SE_05);  --ゴゴゴ

entryFade(  spep_5+92,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 放つ(100F)
------------------------------------------------------

spep_6 = spep_5+100;

hanatsu = entryEffect(  spep_6,  SP_09,  0x100,  -1,  0,  0,  0);  --放つ
setEffScaleKey(  spep_6,  hanatsu,  1.0,  1.0);
setEffScaleKey(  spep_6+100,  hanatsu,  1.0,  1.0);
setEffAlphaKey(  spep_6,  hanatsu,  255);
setEffAlphaKey(  spep_6+100,  hanatsu,  255);

entryFadeBg( spep_6, 0, 100, 0,  10, 10, 10,  255);       -- ベース黒　背景

entryFade(  spep_6+26,  0,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 流線 --
ryusennaname = entryEffectLife(  spep_6,  921,  100,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_6,  ryusennaname,  1.5,  1.5);
setEffScaleKey(  spep_6+100,  ryusennaname,  1.5,  2.0);
setEffRotateKey(  spep_6,  ryusennaname,  230);
setEffRotateKey(  spep_6+100,  ryusennaname,  230);
setEffAlphaKey(  spep_6,  ryusennaname,  255);
setEffAlphaKey(  spep_6+6,  ryusennaname,  255);


-- 集中線 --
shuchusen7 = entryEffectLife( spep_6, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_6,  shuchusen7,  1.0,  1.0);
setEffAlphaKey(  spep_6,  shuchusen7,  255);
setEffScaleKey(  spep_6+100,  shuchusen7,  1.0,  1.0); --
setEffAlphaKey(  spep_6+100,  shuchusen7,  255); --

-- 書き文字エントリー　--
ct5 = entryEffectLife(  spep_6+26,  10012,  74,  0x100,  -1,  0,  160,  350); -- ズオンッ

setEffScaleKey(  spep_6+26,  ct5,  3.0,  3.0);
setEffScaleKey(  spep_6+60,  ct5,  3.0,  3.0);
setEffScaleKey(  spep_6+80,  ct5,  5.5,  5.5);
setEffScaleKey(  spep_6+100,  ct5,  6.5,  6.5);
setEffAlphaKey(  spep_6+26,  ct5,  255);
setEffAlphaKey(  spep_6+80,  ct5,  255);
setEffAlphaKey(  spep_6+100,  ct5,  0);
setEffRotateKey(  spep_6+26,  ct5,  20);
setEffRotateKey(  spep_6+100,  ct5,  20);

setEffShake(  spep_6+26,  ct5,  74,  10);

-- SE --

playSe(  spep_6+26,  SE_07);  --伸びる音

entryFade(  spep_6+92,  3,  7, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン赤(60F)
------------------------------------------------------

spep_7 = spep_6+100;

gyan = entryEffect(  spep_7,  190002,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_7,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_7+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_7,  gyan,  255);
setEffAlphaKey(  spep_7+60,  gyan,  255);

-- 書き文字エントリー --
ct6 = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffScaleKey( spep_7, ct6, 3.0, 3.0);
setEffScaleKey( spep_7+60, ct6, 4.0, 4.0);
setEffAlphaKey( spep_7, ct6, 255);
setEffAlphaKey( spep_7+60, ct6, 0);
setEffShake( spep_7, ct6, 60, 10);

playSe(  spep_7,  SE_09);

entryFade(  spep_7+43,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発(160F)
------------------------------------------------------

spep_8 = spep_7+56;

bakuhatsu = entryEffect(  spep_8,  SP_10,  0x100,  -1,  0,  0,  0);  --爆発
setEffScaleKey(  spep_8,  bakuhatsu,  1.0,  1.0);
setEffScaleKey(  spep_8+150,  bakuhatsu,  1.0,  1.0);
setEffAlphaKey(  spep_8,  bakuhatsu,  255);
setEffAlphaKey(  spep_8+150,  bakuhatsu,  255);

shuchusen8 = entryEffectLife(  spep_8,  906,  150,  0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_8,  shuchusen8,  2.0,  2.0);
setEffScaleKey(  spep_8+150,  shuchusen8,  2.0,  2.0);
setEffAlphaKey(  spep_8,  shuchusen8,  255);
setEffAlphaKey(  spep_8+150,  shuchusen8,  255);

-- 背景 --
entryFadeBg( spep_8, 0, 150, 0, 0, 0, 0, 255); -- ベース暗め　背景

playSe(  spep_8,  SE_10);
-- ダメージ表示
dealDamage( spep_8+56);

entryFade( spep_8+140, 9,  10, 1, 8, 8, 8, 255); -- black fade

endPhase(spep_8+150);

else


------------------------------------------------------
-- 突進(70F)
------------------------------------------------------

setVisibleUI(0, 0);

spep_1 = 0;

-- エフェクト --
tossin = entryEffect( spep_1,  SP_11,  0x100,  -1,  0,  0,  0);  --突進
setEffScaleKey(  spep_1,  tossin,  1.0,  1.0);
setEffScaleKey(  spep_1+70,  tossin,  1.0,  1.0);
setEffAlphaKey(  spep_1,  tossin,  255); 
setEffAlphaKey(  spep_1+70,  tossin,  255);

-- 背景 --
entryFadeBg( spep_1, 0, 70, 0, 10, 10, 10, 200);       -- ベース暗め　背景


-- 集中線 --
shuchusen1 = entryEffectLife( spep_1, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.0,  1.0);
setEffScaleKey(  spep_1+70,  shuchusen1,  1.0,  1.0); --
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+70,  shuchusen1,  255); --

-- 書き文字エントリー --
ct1 = entryEffectLife(  spep_1,  10012,  70,  0x100, -1, 0,  150, 400);  -- ズオン

setEffScaleKey(  spep_1,  ct1,  2.0,  2.0);
setEffScaleKey(  spep_1+10,  ct1,  3.0,  3.0);
setEffScaleKey(  spep_1+52,  ct1,  3.0,  3.0);
setEffScaleKey(  spep_1+53,  ct1,  5.0,  5.0);
setEffScaleKey(  spep_1+70,  ct1,  6.0,  6.0);
setEffMoveKey(  spep_1,  ct1,  150,  400);
setEffMoveKey(  spep_1+70,  ct1,  250,  400);
setEffRotateKey(  spep_1,  ct1,  30);
setEffAlphaKey(  spep_1,  ct1,  255);
setEffAlphaKey(  spep_1+52,  ct1,  255);
setEffAlphaKey(  spep_1+53,  ct1,  150);
setEffAlphaKey(  spep_1+70,  ct1,  0);
setEffShake(  spep_1,  ct1,  70,  20);

entryFade( spep_1+58, 8,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- SE --
playSe(  spep_1,  SE_06);  --ダッシュ音


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

entryFadeBg( spep_1+70, 0, 90, 0, 10, 10, 10, 200);          -- ベース暗め　背景

playSe( spep_1+70, SE_05);

speff = entryEffect(  spep_1+70,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


--entryFade( spep_1+80+90, 4,  12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 高速打撃(140F)
------------------------------------------------------

spep_2 = spep_1+90+70;
entryFade( spep_2-6, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 白フェード --
entryFade( spep_2+28, 2,  2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 敵 --
setDisp(  spep_2+34,  1,  1);
setDisp(  spep_2+34,  0,  0);

changeAnime(  spep_2+34,  1,  100);  --敵立ち絵
changeAnime(  spep_2+44,  1,  100);

setMoveKey(  spep_2+34,  1,  50,  0,  0);
setMoveKey(  spep_2+44,  1,  50,  0,  0);
setScaleKey(  spep_2+34,  1,  10,  10);
setScaleKey(  spep_2+40,  1,  1.6,  1.6);
setScaleKey(  spep_2+44,  1,  1.6,  1.6);

-- 敵：連打ダメージ --
changeAnime(  spep_2+46,  1,  106);  --仰け反り
changeAnime(  spep_2+58,  1,  108);  --くの字
changeAnime(  spep_2+70,  1,  106);
changeAnime(  spep_2+82,  1,  108);
changeAnime(  spep_2+94,  1,  106);
changeAnime(  spep_2+106,  1,  108);
changeAnime(  spep_2+118,  1,  106);
changeAnime(  spep_2+130,  1,  108);
changeAnime(  spep_2+140,  1,  108);

setMoveKey(  spep_2+46,  1,  50,  0,  0);
setMoveKey(  spep_2+58,  1,  50,  0,  0);
setMoveKey(  spep_2+70,  1,  0,  50,  0);
setMoveKey(  spep_2+82,  1,  0,  50,  0);
setMoveKey(  spep_2+94,  1,  0,  0,  0);
setMoveKey(  spep_2+106,  1,  50,  50,  0);
setMoveKey(  spep_2+118,  1,  0,  0,  0);
setMoveKey(  spep_2+130,  1,  0,  50,  0);
--140?

setRotateKey(  spep_2+46,  1,  -20);
setRotateKey(  spep_2+55,  1,  -20);
setRotateKey(  spep_2+56,  1,  0);
setRotateKey(  spep_2+69,  1,  0);
setRotateKey(  spep_2+70,  1,  -15);
setRotateKey(  spep_2+81,  1,  -15);
setRotateKey(  spep_2+82,  1,  0);
setRotateKey(  spep_2+93,  1,  0);
setRotateKey(  spep_2+94,  1,  -15);
setRotateKey(  spep_2+105,  1,  -15);
setRotateKey(  spep_2+106,  1,  10);
setRotateKey(  spep_2+117,  1,  10);
setRotateKey(  spep_2+118,  1,  -15);
setRotateKey(  spep_2+129,  1,  -15);
setRotateKey(  spep_2+130,  1,  -10);
--140?

setScaleKey(  spep_2+46,  1,  1.4,  1.4);
setScaleKey(  spep_2+56,  1,  1.4,  1.4);
setScaleKey(  spep_2+106,  1,  1.3,  1.3);
setScaleKey(  spep_2+118,  1,  1.2,  1.2);
setScaleKey(  spep_2+130,  1,  1.2,  1.2);
setScaleKey(  spep_2+140,  1,  1.2,  1.2);

setShakeChara(  spep_2+46,  1,  108,  10);  --キャラ揺れ

--  エフェクト  --
dageki_mae = entryEffect(  spep_2,  SP_02,  0x100,  -1,  0,  0,  0);  --高速打撃手前
setEffScaleKey(  spep_2,  dageki_mae,  1.0,  1.0);
setEffScaleKey(  spep_2+140,  dageki_mae,  1.0,  1.0);
setEffAlphaKey(  spep_2,  dageki_mae,  255);
setEffAlphaKey(  spep_2+140,  dageki_mae,  255);

dageki_ushiro = entryEffect(  spep_2,  SP_03,  0x80,  -1,  0,  0,  0);  --高速打撃後ろ
setEffScaleKey(  spep_2,  dageki_ushiro,  1.0,  1.0);
setEffScaleKey(  spep_2+140,  dageki_ushiro,  1.0,  1.0);
setEffAlphaKey(  spep_2,  dageki_ushiro,  255);
setEffAlphaKey(  spep_2+140,  dageki_ushiro,  255);

-- 背景 --
entryFadeBg( spep_2, 0, 140, 0, 0, 0, 0, 255);       -- ベース黒　背景


-- 集中線 --
shuchusen2 = entryEffectLife( spep_2, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
--shuchusen2 = entryEffectLife( spep_2, 906, 45, 0x100,  -1, 0,  0,  0);   -- 集中線
--shuchusen2 = entryEffectLife( spep_2+46,  906,  100,  0x100,  -1,  0,  0,  0);  --集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffScaleKey(  spep_2+45,  shuchusen2,  1.0,  1.0);
setEffScaleKey(  spep_2+46,  shuchusen2,  2.0,  2.0);
setEffScaleKey(  spep_2+140,  shuchusen2,  2.0,  2.0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+140,  shuchusen2,  255);--


-- 書き文字エントリー --
ct2 = entryEffectLife(  spep_2+46,  10017,  94,  0x100,  -1,  0,  0,  330);    -- ドガガガッ 

setEffScaleKey(  spep_2+46,  ct2,  2.0,  2.0);
setEffScaleKey(  spep_2+48,  ct2,  3.5,  3.5);
setEffScaleKey(  spep_2+50,  ct2,  2.7,  2.7);
setEffScaleKey(  spep_2+140,  ct2,  2.7,  2.7);
setEffRotateKey(  spep_2+46,  ct2,  25);
setEffRotateKey(  spep_2+140,  ct2,  25);
setEffAlphaKey(  spep_2+46,  ct2,  255);
setEffAlphaKey(  spep_2+139,  ct2,  255);
setEffAlphaKey(  spep_2+140,  ct2,  0);
setEffShake(  spep_2+46,  ct2,  94,  10);

-- SE --
playSe(  spep_2,  1018);

playSe(  spep_2+46,  1003);
playSe(  spep_2+58,  1001);  
playSe(  spep_2+70,  1009);
playSe(  spep_2+82,  1006);
playSe(  spep_2+94,  1010);
playSe(  spep_2+106,  1009);
playSe(  spep_2+118,  1003);
playSe(  spep_2+130,  1000);


entryFade( spep_2+138, 2,  2, 6, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_2+33; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(SP_dodge,1,0);
setDisp(SP_dodge+1,1,0);

setMoveKey(SP_dodge,1,163,46,0);
setMoveKey(SP_dodge+8,1,163,46,0);

setMoveKey(SP_dodge+9,1,0,-10000,0);
setMoveKey(SP_dodge+10,1,0,-10000,0);

setScaleKey(SP_dodge,1,1.0,1.0);
setScaleKey(SP_dodge+8,1,1.0,1.0);
setScaleKey(SP_dodge+9,1,1.0,1.0);
setScaleKey(SP_dodge+10,1,1.0,1.0);

setRotateKey(SP_dodge,1,0);
setRotateKey(SP_dodge+8,1,0);
setRotateKey(SP_dodge+9,1,0);
setRotateKey(SP_dodge+10,1,0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 蹴り(60F)
------------------------------------------------------

spep_3 = spep_2+140;


-- 敵キャラ --
changeAnime(  spep_3,  1,  108);  --くの字
changeAnime(  spep_3+32,  1,  108); 

setMoveKey(  spep_3,  1,  80,  -10,  0);
setMoveKey(  spep_3+32,  1,  80,  -10,  0);
setScaleKey(  spep_3-2,  1,  1.6,  1.6);
setScaleKey(  spep_3,  1,  1.6,  1.6);
setScaleKey(  spep_3+32,  1,  1.6,  1.6);
setRotateKey(  spep_3,  1,  25);
setRotateKey(  spep_3+32,  1,  25);


setDisp(  spep_3+33,  1,  0);  --敵キャラ消す

--  エフェクト  --
keri_mae = entryEffect(  spep_3,  SP_12,  0x100,  -1,  0,  0,  0);  --蹴り手前
setEffScaleKey(  spep_3,  keri_mae,  1.0,  1.0);
setEffScaleKey(  spep_3+60,  keri_mae,  1.0,  1.0);
setEffAlphaKey(  spep_3,  keri_mae,  255);
setEffAlphaKey(  spep_3+60,  keri_mae,  255);


keri_ushiro = entryEffect(  spep_3,  SP_05,  0x80,  -1,  0,  0,  0);  --蹴り後ろ
setEffScaleKey(  spep_3,  keri_ushiro,  1.0,  1.0);
setEffScaleKey(  spep_3+60,  keri_ushiro,  1.0,  1.0);
setEffAlphaKey(  spep_3,  keri_ushiro,  255);
setEffAlphaKey(  spep_3+60,  keri_ushiro,  255);

-- 背景 --
entryFadeBg( spep_3, 0, 60, 0,  0, 0, 0,  255);       -- ベース黒　背景


-- 集中線 --
shuchusen3 = entryEffectLife( spep_3, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3,  shuchusen3,  2.0,  2.0);
setEffScaleKey(  spep_3+140,  shuchusen3,  2.0,  2.0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+140,  shuchusen3,  255);

-- 書き文字エントリー --
ct3 = entryEffectLife(  spep_3+5,  10020,  29,  0x100,  -1,  0,  200,  300); -- バキッ

setEffScaleKey(  spep_3+5,  ct3,  1.6,  1.6);      --大きさ
setEffScaleKey(  spep_3+8,  ct3,  1.7,  1.7);
setEffScaleKey(  spep_3+12,  ct3,  2.5,  2.5);
setEffScaleKey(  spep_3+16,  ct3,  1.7,  1.7);
setEffScaleKey(  spep_3+20,  ct3,  1.7,  1.7);
setEffScaleKey(  spep_3+24,  ct3,  1.7,  1.7);
setEffScaleKey(  spep_3+34,  ct3,  1.7,  1.7);

setEffRotateKey(  spep_3+5,  ct3,  30);--角度
setEffRotateKey(  spep_3+7,  ct3,  30);
setEffRotateKey(  spep_3+8,  ct3,  10);
setEffRotateKey(  spep_3+11,  ct3,  10);
setEffRotateKey(  spep_3+12,  ct3,  30);
setEffRotateKey(  spep_3+13,  ct3,  30);
setEffRotateKey(  spep_3+16,  ct3,  20);
setEffRotateKey(  spep_3+19,  ct3,  20);
setEffRotateKey(  spep_3+20,  ct3,  30);
setEffRotateKey(  spep_3+23,  ct3,  30);
setEffRotateKey(  spep_3+34,  ct3,  30);

setEffAlphaKey(  spep_3+5,  ct3,  255); --色の濃さ
setEffAlphaKey(  spep_3+24,  ct3,  255);
setEffAlphaKey(  spep_3+34,  ct3,  0);
setEffShake(  spep_3+5,  ct3,  31,  30); --ゆれ

entryFade( spep_3+50, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- SE --
playSe(  spep_3+10,  1001);  --蹴り

------------------------------------------------------
-- 叩きつけ(130F)
------------------------------------------------------

spep_4 = spep_3+60;


-- 敵 --
setDisp(  spep_4,  1,  1);  --敵立ち絵表示
changeAnime(  spep_4,  1,  108);  --敵：くの字
setShakeChara(  spep_4,  1,  30,20); 
setShakeChara(  spep_4+30,  1,  20,23); 
setShakeChara(  spep_4+50,  1,  20,23); 

setMoveKey(  spep_4,  1,  -250,  400,  0);
setMoveKey(  spep_4+30,  1,  40,  -45,  0);
setMoveKey(  spep_4+50,  1,  40,  -45,  0);
setMoveKey(  spep_4+76,  1,  40,  -45,  0);
setMoveKey(  spep_4+78,  1,  54,  -55,  0);
setMoveKey(  spep_4+80,  1,  80,  -90,  0);  --ひび割れ　442
setMoveKey(  spep_4+82,  1,  90,  -110,  0);
setMoveKey(  spep_4+84,  1,  100,  -130,  0);
setMoveKey(  spep_4+86,  1,  140,  -160,  0);
setMoveKey(  spep_4+88,  1,  160,  -200,  0);
setMoveKey(  spep_4+90,  1,  190,  -220,  0);
setMoveKey(  spep_4+92,  1,  230,  -280,  0);
setMoveKey(  spep_4+94,  1,  270,  -320,  0);
setMoveKey(  spep_4+96,  1,  310,  -360,  0);
setMoveKey(  spep_4+98,  1,  350,  -400,  0);
setMoveKey(  spep_4+110,  1,  650,  -700,  0);

setScaleKey(  spep_4,  1,  5.0,  5.0);
setScaleKey(  spep_4+30,  1,  1.2,  1.2);
setScaleKey(  spep_4+38,  1,  1.2,  1.2);
setScaleKey(  spep_4+80,  1,  1.2,  1.2);
setScaleKey(  spep_4+110,  1,  0.8,  0.8);
setRotateKey(  spep_4,  1,  10);
setRotateKey(  spep_4+100,  1,  10);
setRotateKey(  spep_4+110,  1,  10);--

--  エフェクト  --
tataki_mae = entryEffect(  spep_4,  SP_06,  0x100,  -1,  0,  0,  0);  -- 叩きつけ手前
setEffScaleKey(  spep_4,  tataki_mae,  1.0,  1.0);
setEffScaleKey(  spep_4+130,  tataki_mae,  1.0,  1.0);
setEffScaleKey(  spep_4,  tataki_mae,  255);
setEffScaleKey(  spep_4+130,  tataki_mae,  255);


tataki_ushiro = entryEffect(  spep_4,  SP_07,  0x80,  -1,  0,  0,  0);  --叩きつけ奥
setEffScaleKey(  spep_4,  tataki_ushiro,  1.0,  1.0);
setEffScaleKey(  spep_4+130,  tataki_ushiro,  1.0,  1.0);
setEffAlphaKey(  spep_4,  tataki_ushiro,  255);
setEffAlphaKey(  spep_4+130,  tataki_ushiro,  255);

-- 流線 --
ryusen4 = entryEffectLife(  spep_4,  924,  40,  0x80,  -1,  0,  -900,  400);

setEffScaleKey(  spep_4,  ryusen4,  2.0,  2.0);
setEffScaleKey(  spep_4+40,  ryusen4,  2.0,  2.0);

setEffRotateKey(  spep_4,  ryusen4,  30);
setEffRotateKey(  spep_4+40,  ryusen4,  30);
setEffAlphaKey(  spep_4,  ryusen4,  255);
setEffAlphaKey(  spep_4+40,  ryusen4,  255);


-- 背景 --
entryFadeBg( spep_4, 0, 30, 0,  10, 10, 10, 255);     -- ベース グレー
entryFadeBg( spep_4+30, 0, 100, 0,  0, 0, 0,  255);       -- ベース黒　背景

-- 集中線 --
shuchusen4 = entryEffectLife( spep_4, 906, 130, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_4,  shuchusen4,  2.0,  2.0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);

setEffScaleKey(  spep_4+30,  shuchusen4,  1.0,  1.0);
setEffAlphaKey(  spep_4+30,  shuchusen4,  255);

setEffScaleKey(  spep_4+130,  shuchusen4,  1.0,  1.0);
setEffAlphaKey(  spep_4+130,  shuchusen4,  255);

-- SE --
playSe(  spep_4,  1018);  --ダッシュ
playSe(  spep_4+30,  1027);   --ぶつかった音


entryFade(  spep_4+32,  6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 岩の上で溜め(100F)
------------------------------------------------------

spep_5 = spep_4+130;

setDisp(  spep_5,  1,  0);  --敵立ち絵非表示

--  エフェクト  --
tame = entryEffect(  spep_5,  SP_13,  0x100,  -1,  0,  0,  0);  --岩の上で溜め
setEffScaleKey(  spep_5,  tame,  1.0,  1.0);
setEffScaleKey(  spep_5+100,  tame,  1.0,  1.0);
setEffAlphaKey(  spep_5,  tame,  255);
setEffAlphaKey(  spep_5+100,  tame,  255);

entryFadeBg( spep_5, 0, 100, 0,  0, 0, 0,  255);       -- ベース黒　背景

shuchusen6 = entryEffectLife( spep_5, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_5,  shuchusen6,  2.0,  2.0);
setEffAlphaKey(  spep_5,  shuchusen6,  255);


-- 顔・セリフカットイン
--speff = entryEffect(  spep_5+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_5+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_5+30, 190006, 70, 0x100, -1,  0, 100, 510);    -- ゴゴゴゴ
setEffShake(spep_5+30, ctgogo, 70, 10);
setEffScaleKey(spep_5+30, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_5+30, ctgogo, 0);
setEffAlphaKey( spep_5+30, ctgogo, 255);
setEffAlphaKey( spep_5+90,  ctgogo,  255);
setEffAlphaKey( spep_5+100,  ctgogo,  0);

-- SE --
playSe(spep_5,  43)  --瞬間移動
playSe(spep_5+1,  SE_06);  --気を溜める音
playSe(spep_5+30,  SE_05);  --ゴゴゴ

entryFade(  spep_5+92,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 放つ(100F)
------------------------------------------------------

spep_6 = spep_5+100;

hanatsu = entryEffect(  spep_6,  SP_14,  0x100,  -1,  0,  0,  0);  --放つ
setEffScaleKey(  spep_6,  hanatsu,  1.0,  1.0);
setEffScaleKey(  spep_6+100,  hanatsu,  1.0,  1.0);
setEffAlphaKey(  spep_6,  hanatsu,  255);
setEffAlphaKey(  spep_6+100,  hanatsu,  255);

entryFadeBg( spep_6, 0, 100, 0,  10, 10, 10,  255);       -- ベース黒　背景

entryFade(  spep_6+26,  0,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 流線 --
ryusennaname = entryEffectLife(  spep_6,  921,  100,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_6,  ryusennaname,  1.5,  1.5);
setEffScaleKey(  spep_6+100,  ryusennaname,  1.5,  2.0);
setEffRotateKey(  spep_6,  ryusennaname,  230);
setEffRotateKey(  spep_6+100,  ryusennaname,  230);
setEffAlphaKey(  spep_6,  ryusennaname,  255);
setEffAlphaKey(  spep_6+6,  ryusennaname,  255);


-- 集中線 --
shuchusen7 = entryEffectLife( spep_6, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_6,  shuchusen7,  1.0,  1.0);
setEffAlphaKey(  spep_6,  shuchusen7,  255);
setEffScaleKey(  spep_6+100,  shuchusen7,  1.0,  1.0); --
setEffAlphaKey(  spep_6+100,  shuchusen7,  255); --

-- 書き文字エントリー　--
ct5 = entryEffectLife(  spep_6+26,  10012,  74,  0x100,  -1,  0,  160,  350); -- ズオンッ

setEffScaleKey(  spep_6+26,  ct5,  3.0,  3.0);
setEffScaleKey(  spep_6+60,  ct5,  3.0,  3.0);
setEffScaleKey(  spep_6+80,  ct5,  5.5,  5.5);
setEffScaleKey(  spep_6+100,  ct5,  6.5,  6.5);
setEffAlphaKey(  spep_6+26,  ct5,  255);
setEffAlphaKey(  spep_6+80,  ct5,  255);
setEffAlphaKey(  spep_6+100,  ct5,  0);
setEffRotateKey(  spep_6+26,  ct5,  20);
setEffRotateKey(  spep_6+100,  ct5,  20);

setEffShake(  spep_6+26,  ct5,  74,  10);

-- SE --

playSe(  spep_6+26,  SE_07);  --伸びる音

entryFade(  spep_6+92,  3,  7, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン赤(60F)
------------------------------------------------------

spep_7 = spep_6+100;

gyan = entryEffect(  spep_7,  190002,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_7,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_7+60,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_7,  gyan,  255);
setEffAlphaKey(  spep_7+60,  gyan,  255);

-- 書き文字エントリー --
ct6 = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffScaleKey( spep_7, ct6, 3.0, 3.0);
setEffScaleKey( spep_7+60, ct6, 4.0, 4.0);
setEffAlphaKey( spep_7, ct6, 255);
setEffAlphaKey( spep_7+60, ct6, 0);
setEffShake( spep_7, ct6, 60, 10);

playSe(  spep_7,  SE_09);

entryFade(  spep_7+43,  6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発(160F)
------------------------------------------------------

spep_8 = spep_7+56;

bakuhatsu = entryEffect(  spep_8,  SP_10,  0x100,  -1,  0,  0,  0);  --爆発
setEffScaleKey(  spep_8,  bakuhatsu,  1.0,  1.0);
setEffScaleKey(  spep_8+150,  bakuhatsu,  1.0,  1.0);
setEffAlphaKey(  spep_8,  bakuhatsu,  255);
setEffAlphaKey(  spep_8+150,  bakuhatsu,  255);

shuchusen8 = entryEffectLife(  spep_8,  906,  150,  0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_8,  shuchusen8,  2.0,  2.0);
setEffScaleKey(  spep_8+150,  shuchusen8,  2.0,  2.0);
setEffAlphaKey(  spep_8,  shuchusen8,  255);
setEffAlphaKey(  spep_8+150,  shuchusen8,  255);

-- 背景 --
entryFadeBg( spep_8, 0, 150, 0, 0, 0, 0, 255); -- ベース暗め　背景

playSe(  spep_8,  SE_10);
-- ダメージ表示
dealDamage( spep_8+56);

entryFade( spep_8+140, 9,  10, 1, 8, 8, 8, 255); -- black fade

endPhase(spep_8+150);

end
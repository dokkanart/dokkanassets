--  sp1179 トランクス_チェンジ・ザ・フューチャー

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--基本いじらない--
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン・セリフカットイン時に使用
SE_05 = 1035; --カードカットイン時に使用
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --回避時の気づきに使用
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;


SP_01 =151699; --気溜め
SP_02 =151700; --前方突進
SP_03 =151701; --殴り・前
SP_04 =151702; --殴り・後
SP_05 =151703; --気溜め（ナビ）
SP_06 =151704; --地面爆破
SP_07 =151705; --爆破後瞬間移動
SP_08 =151706; --上空へ飛ぶ
SP_09 =151707; --迫る・前
SP_10 =151708; --迫る・後
SP_11 =151709; --ラスト

SP_12 =151710; --敵：気溜め
SP_13 =151711; --敵：殴り・前
SP_14 =151712; --敵：殴り・後
SP_15 =151713; --敵：地面爆破
SP_16 =151714; --敵：爆破後瞬間移動
SP_17 =151715; --敵：上空へ飛ぶ

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);

changeAnime( 0, 0, 1); --味方立ちポーズ
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示

setMoveKey(  0,  0,  0,  0,  0);
setMoveKey(   1,   0,    0, 0,   0);
setMoveKey(   2,   0,    0, 0,   0);
setMoveKey(   3,   0,    0, 0,   0);
setMoveKey(   4,   0,    0, 0,   0);
setMoveKey(   5,   0,    0, 0,   0);
setMoveKey(   6,   0,    0, 0,   0);
setMoveKey(  20,  0,  0,  0,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);
setScaleKey(  20,  0,  1.5,  1.5);

-- 敵
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);
setMoveKey(   4,   1,    0, 0,   0);
setMoveKey(   5,   1,    0, 0,   0);
setMoveKey(   6,   1,    0, 0,   0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

entryFade( 20, 0, 3, 9, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 気溜め(50F)
------------------------------------------------------

spep_1 =21;

setDisp( spep_1, 0, 0); --味方非表示
setDisp( spep_1, 1, 0); --敵非表示
changeAnime( spep_1, 0, 1); --味方立ちポーズ
changeAnime( spep_1, 1, 101);                       -- 立ち

shuchusen1 = entryEffectLife( spep_1, 906, 50, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.0,  1.0);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffScaleKey(  spep_1+50,  shuchusen1,  1.0,  1.0);
setEffMoveKey(  spep_1+50,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+50,  shuchusen1,  0);
setEffAlphaKey(  spep_1+50,  shuchusen1,  255);

tame = entryEffect(  spep_1,  SP_01,  0x100,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_1,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1,  tame,  0,  0);
setEffRotateKey(  spep_1,  tame,  0);
setEffAlphaKey(  spep_1,  tame,  255);
setEffScaleKey(  spep_1+50,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+50,  tame,  0,  0);
setEffRotateKey(  spep_1+50,  tame,  0);
setEffAlphaKey(  spep_1+50,  tame,  255);

playSe(  spep_1,  SE_01);

entryFadeBg( spep_1, 0, 50, 0, 0, 0, 0, 190);          -- 黒　背景

entryFade( spep_1+39, 5, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 突進(70F)
------------------------------------------------------

spep_2 =spep_1+50;

shuchusen2 = entryEffectLife( spep_2, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線 

setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffScaleKey(  spep_2+70,  shuchusen2,  1.0,  1.0);
setEffMoveKey(  spep_2+70,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+70,  shuchusen2,  0);
setEffAlphaKey(  spep_2+70,  shuchusen2,  255);

tosshin = entryEffect(  spep_2,  SP_02,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_2,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_2,  tosshin,  0,  0);
setEffRotateKey(  spep_2,  tosshin,  0);
setEffAlphaKey(  spep_2,  tosshin,  255);
setEffScaleKey(  spep_2+70,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_2+70,  tosshin,  0,  0);
setEffRotateKey(  spep_2+70,  tosshin,  0);
setEffAlphaKey(  spep_2+70,  tosshin,  255);


-- 書き文字エントリー
ct_zuo = entryEffectLife( spep_2, 10012, 23, 0x100, -1, 0, 0, 0); -- ズオッ

setEffShake(  spep_2,  ct_zuo,  23,  10);
setEffAlphaKey(  spep_2,  ct_zuo,  255);
setEffScaleKey(  spep_2,  ct_zuo,  2.3,  2.3);
setEffMoveKey(  spep_2,  ct_zuo,  0,  400);
setEffRotateKey(  spep_2,  ct_zuo,  0);
setEffAlphaKey(  spep_2+22,  ct_zuo,  255);
setEffScaleKey(  spep_2+22,  ct_zuo,  2.3,  2.3);
setEffMoveKey(  spep_2+22,  ct_zuo,  0,  400);
setEffRotateKey(  spep_2+23,  ct_zuo,  0);
setEffAlphaKey(  spep_2+23,  ct_zuo,  0);
setEffScaleKey(  spep_2+23,  ct_zuo,  2.3,  2.3);
setEffMoveKey(  spep_2+23,  ct_zuo,  0,  400);
setEffRotateKey(  spep_2+23,  ct_zuo,  0);

playSe(  spep_2,  9);  --ダッシュ

entryFadeBg( spep_2, 0, 70, 0, 0, 0, 0, 210);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 100; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end


entryFade( spep_2+55, 11, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 殴り(72F)
------------------------------------------------------
spep_3 = spep_2+70;

shuchusen3 = entryEffectLife(  spep_3+14,  906,  11,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_3+14,  shuchusen3,  1.4,  1.4);
setEffMoveKey(  spep_3+14,  shuchusen3,  160,  120);
setEffRotateKey(  spep_3+14, shuchusen3,  0);
setEffAlphaKey(  spep_3+14,  shuchusen3,  255);
setEffScaleKey(  spep_3+25,  shuchusen3,  1.4,  1.4);
setEffMoveKey(  spep_3+25,  shuchusen3,  160,  120);
setEffRotateKey(  spep_3+25,  shuchusen3,  0);
setEffAlphaKey(  spep_3+25,  shuchusen3,  255);


shuchusen4 = entryEffectLife(  spep_3+58,  906,  32,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_3+58,  shuchusen4,  1.1,  1.1);
setEffMoveKey(  spep_3+58,  shuchusen4,  0,  0);
setEffRotateKey(  spep_3+58, shuchusen4,  0);
setEffAlphaKey(  spep_3+58,  shuchusen4,  255);
setEffScaleKey(  spep_3+85,  shuchusen4,  1.1,  1.1);
setEffMoveKey(  spep_3+85,  shuchusen4,  0,  0);
setEffRotateKey(  spep_3+85,  shuchusen4,  0);
setEffAlphaKey(  spep_3+85,  shuchusen4,  255);


-- 書き文字エントリー
ct_baki = entryEffectLife( spep_3+26, 10020, 23, 0x100, -1, 0, 0, 0); -- バキッ

setEffAlphaKey(  spep_3+26,  ct_baki,  255);
setEffScaleKey(  spep_3+26,  ct_baki,  1.9,  1.9);
setEffMoveKey(  spep_3+26,  ct_baki,  -58,  242);
setEffRotateKey(  spep_3+26,  ct_baki,  -22);
setEffAlphaKey(  spep_3+38,  ct_baki,  255);
setEffScaleKey(  spep_3+38,  ct_baki,  1.9,  1.9);
setEffMoveKey(  spep_3+38,  ct_baki,  -58,  242);
setEffRotateKey(  spep_3+38,  ct_baki,  -22);
setEffAlphaKey(  spep_3+39,  ct_baki,  0);
setEffScaleKey(  spep_3+39,  ct_baki,  1.9,  1.9);
setEffMoveKey(  spep_3+39,  ct_baki,  -58,  242);
setEffRotateKey(  spep_3+39,  ct_baki,  -22);

ct_shun = entryEffectLife( spep_3+60, 10011, 17, 0x100, -1, 0, 0, 0); -- シュンッ

setEffAlphaKey(  spep_3+60,  ct_shun,  255);
setEffScaleKey(  spep_3+60,  ct_shun,  0.7,  0.7);
setEffRotateKey(  spep_3+60,  ct_shun,  -14);
setEffMoveKey(  spep_3+60,  ct_shun,  -105,  103);
setEffAlphaKey(  spep_3+76,  ct_shun,  255);
setEffScaleKey(  spep_3+76,  ct_shun,  1.9,  1.9);
setEffRotateKey(  spep_3+76,  ct_shun,  -14);
setEffMoveKey(  spep_3+76,  ct_shun,  -106,  260);
setEffAlphaKey(  spep_3+77,  ct_shun,  0);
setEffScaleKey(  spep_3+77,  ct_shun,  1.9,  1.9);
setEffRotateKey(  spep_3+77,  ct_shun,  -14);
setEffMoveKey(  spep_3+77,  ct_shun,  -106,  260);



-- 流線
ryu1 = entryEffectLife(  spep_3,  914,  13,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_3,  ryu1,  1.9,  1.3);
setEffMoveKey(  spep_3,  ryu1,  0,  0);
setEffRotateKey(  spep_3,  ryu1,  -22);
setEffAlphaKey(  spep_3,  ryu1,  255);
setEffScaleKey(  spep_3+13,  ryu1,  1.9,  1.3);
setEffMoveKey(  spep_3+13,  ryu1,  0,  0);
setEffRotateKey(  spep_3+13,  ryu1,  -22);
setEffAlphaKey(  spep_3+13,  ryu1,  255);

ryu2 = entryEffectLife(  spep_3+12,  914,  48,  0x80,  -1,  0,  0,  0);  --流線下

setEffScaleKey(  spep_3+12,  ryu2,  1.8,  1.3);
setEffMoveKey(  spep_3+12,  ryu2,  62,  -67);
setEffRotateKey(  spep_3+12,  ryu2,  90);
setEffAlphaKey(  spep_3+12,  ryu2,  0);
setEffScaleKey(  spep_3+25,  ryu2,  1.8,  1.3);
setEffMoveKey(  spep_3+25,  ryu2,  62,  -67);
setEffRotateKey(  spep_3+25,  ryu2,  90);
setEffAlphaKey(  spep_3+25,  ryu2,  0);
setEffScaleKey(  spep_3+26,  ryu2,  1.8,  1.3);
setEffMoveKey(  spep_3+26,  ryu2,  62,  -67);
setEffRotateKey(  spep_3+26,  ryu2,  90);
setEffAlphaKey(  spep_3+26,  ryu2,  255);
setEffScaleKey(  spep_3+60,  ryu2,  1.8,  1.3);
setEffMoveKey(  spep_3+60,  ryu2,  62,  -67);
setEffRotateKey(  spep_3+60,  ryu2,  90);
setEffAlphaKey(  spep_3+59,  ryu2,  255);
setEffScaleKey(  spep_3+59,  ryu2,  1.8,  1.3);
setEffMoveKey(  spep_3+59,  ryu2,  62,  -67);
setEffRotateKey(  spep_3+60,  ryu2,  90);
setEffAlphaKey(  spep_3+60,  ryu2,  0);


naguru_f = entryEffect(  spep_3+13,  SP_03,  0x100,  -1,  0,  0,  0);  --殴る・前

setEffScaleKey(  spep_3,  naguru_f,  1.0,  1.0);
setEffMoveKey(  spep_3,  naguru_f,  0,  0);
setEffRotateKey(  spep_3,  naguru_f,  0);
setEffAlphaKey(  spep_3,  naguru_f,  255);
setEffScaleKey(  spep_3+85,  naguru_f,  1.0,  1.0);
setEffMoveKey(  spep_3+85,  naguru_f,  0,  0);
setEffRotateKey(  spep_3+85,  naguru_f,  0);
setEffAlphaKey(  spep_3+85,  naguru_f,  255);

--敵
setDisp(  spep_3,  1,  1);
changeAnime(  spep_3,  1,  104);


setScaleKey(  spep_3,  1,  1.5,  1.5);
setMoveKey(  spep_3,  1,  25,  0,  0);
setRotateKey(  spep_3,  1,  0);
setScaleKey(  spep_3+25,  1,  1.5,  1.5);
setMoveKey(  spep_3+25,  1,  25,  -4,  0);
setRotateKey(  spep_3+25,  1,  0);

changeAnime(  spep_3+26,  1,  108);  --くの字

setShakeChara(  spep_3+26,  1,  52, 10);
setScaleKey(  spep_3+26,  1,  1.6,  1.6);
setMoveKey(  spep_3+26,  1,  -25,  -60,  0);
setRotateKey(  spep_3+26,  1, 90);
setScaleKey(  spep_3+28,  1,  1.6,  1.6);
setMoveKey(  spep_3+28,  1,  -25,  -70,  0);
setRotateKey(  spep_3+28,  1, 90);
setScaleKey(  spep_3+55,  1,  1.6,  1.6);
setMoveKey(  spep_3+55,  1,  -25,  -160,  0);
setRotateKey(  spep_3+55,  1, 90);

changeAnime(  spep_3+56,  1,  106);  --仰け反り

setScaleKey(  spep_3+56,  1,  1.6,  1.6);
setMoveKey(  spep_3+56,  1,  40,  -164,  0);
setRotateKey(  spep_3+56,  1,  23);
setScaleKey(  spep_3+58,  1,  1.6,  1.6);
setMoveKey(  spep_3+58,  1,  40,  -154,  0);
setRotateKey(  spep_3+58,  1,  23);
setScaleKey(  spep_3+60,  1,  1.6,  1.6);
setMoveKey(  spep_3+60,  1,  40,  -154,  0);
setRotateKey(  spep_3+60,  1,  23);
setScaleKey(  spep_3+62,  1,  1.6,  1.6);
setMoveKey(  spep_3+62,  1,  40,  -154,  0);
setRotateKey(  spep_3+62,  1,  23);
setScaleKey(  spep_3+64,  1,  1.6,  1.6);
setMoveKey(  spep_3+64,  1,  40,  -144,  0);
setRotateKey(  spep_3+64,  1,  23);
setScaleKey(  spep_3+66,  1,  1.6,  1.6);
setMoveKey(  spep_3+66,  1,  40,  -134,  0);
setRotateKey(  spep_3+66,  1,  23);
setScaleKey(  spep_3+68,  1,  1.6,  1.6);
setMoveKey(  spep_3+68,  1,  40,  -134,  0);
setRotateKey(  spep_3+68,  1,  23);
setScaleKey(  spep_3+70,  1,  1.6,  1.6);
setMoveKey(  spep_3+70,  1,  40,  -122,  0);
setRotateKey(  spep_3+70,  1,  23);
setScaleKey(  spep_3+72,  1,  1.6,  1.6);
setMoveKey(  spep_3+72,  1,  40,  -122,  0);
setRotateKey(  spep_3+72,  1,  23);
setScaleKey(  spep_3+74,  1,  1.6,  1.6);
setMoveKey(  spep_3+74,  1,  40,  -102,  0);
setRotateKey(  spep_3+74,  1,  23);
setScaleKey(  spep_3+76,  1,  1.6,  1.6);
setMoveKey(  spep_3+76,  1,  40,  -92,  0);
setRotateKey(  spep_3+76,  1,  23);
setScaleKey(  spep_3+78,  1,  1.6,  1.6);
setMoveKey(  spep_3+78,  1,  40,  -72,  0);
setRotateKey(  spep_3+78,  1,  23);


naguru_b = entryEffect(  spep_3+13,  SP_04,  0x80,  -1,  0,  0,  0);  --殴る・後

setEffScaleKey(  spep_3,  naguru_b,  1.0,  1.0);
setEffMoveKey(  spep_3,  naguru_b,  0,  0);
setEffRotateKey(  spep_3,  naguru_b,  0);
setEffAlphaKey(  spep_3,  naguru_b,  255);
setEffScaleKey(  spep_3+85,  naguru_b,  1.0,  1.0);
setEffMoveKey(  spep_3+85,  naguru_b,  0,  0);
setEffRotateKey(  spep_3+85,  naguru_b,  0);
setEffAlphaKey(  spep_3+85,  naguru_b,  255);

entryFadeBg( spep_3, 0, 85, 0, 0, 0, 0, 255);          -- 黒　背景

-- playSe(  spep_3+17,  43);  --瞬間移動
playSe(  spep_3+26,  1006);  --hit音
playSe(  spep_3+56,  1024);  --hit音
playSe(  spep_3+60,  43);  --瞬間移動

entryFade( spep_3+71, 9, 5, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 気溜めナビ(70F)
------------------------------------------------------

spep_4 = spep_3+85;

setDisp(  spep_4,  1,  0);

shuchusen5 = entryEffectLife(  spep_4,  906,  70,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_4,  shuchusen5,  1.2,  1.2);
setEffMoveKey(  spep_4,  shuchusen5,  0,  0);
setEffRotateKey(  spep_4, shuchusen5,  0);
setEffAlphaKey(  spep_4,  shuchusen5,  255);
setEffScaleKey(  spep_4+70,  shuchusen5,  1.2,  1.2);
setEffMoveKey(  spep_4+70,  shuchusen5,  0,  0);
setEffRotateKey(  spep_4+70,  shuchusen5,  0);
setEffAlphaKey(  spep_4+70,  shuchusen5,  255);

nabi = entryEffect(  spep_4,  SP_05,  0x80,  -1,  0,  0,  0);  --気溜めナビ

setEffScaleKey(  spep_4,  nabi,  1.0,  1.0);
setEffMoveKey(  spep_4,  nabi,  0,  0);
setEffRotateKey(  spep_4,  nabi,  0);
setEffAlphaKey(  spep_4,  nabi,  255);
setEffScaleKey(  spep_4+70,  nabi,  1.0,  1.0);
setEffMoveKey(  spep_4+70,  nabi,  0,  0);
setEffRotateKey(  spep_4+70,  nabi,  0);
setEffAlphaKey(  spep_4+70,  nabi,  255);

playSe(  spep_4,  1035);

entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_4+50, 17, 5, 14, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 地面爆破(86F)
------------------------------------------------------

spep_5 = spep_4+70;

playSe(  spep_5,  SE_10);  --爆破音

shuchusen6 = entryEffectLife( spep_5, 906, 86, 0x100,  -1, 0,  0,  0);  --集中線

setEffScaleKey(  spep_5,  shuchusen6,  1.5,  1.5);
setEffMoveKey(  spep_5,  shuchusen6,  0,  0);
setEffRotateKey(  spep_5, shuchusen6,  0);
setEffAlphaKey(  spep_5,  shuchusen6,  255);
setEffScaleKey(  spep_5+86,  shuchusen6,  1.5,  1.5);
setEffMoveKey(  spep_5+86,  shuchusen6,  0,  0);
setEffRotateKey(  spep_5+86,  shuchusen6,  0);
setEffAlphaKey(  spep_5+86,  shuchusen6,  255);

bakuha1 = entryEffectLife(  spep_5,  SP_06,  86,  0x80,  -1,  0,  0,  0);  --爆破

setEffScaleKey(  spep_5,  bakuha1,  1.0,  1.0);
setEffMoveKey(  spep_5,  bakuha1,  0,  0);
setEffRotateKey(  spep_5,  bakuha1,  0);
setEffAlphaKey(  spep_5,  bakuha1,  255);
setEffScaleKey(  spep_5+86,  bakuha1,  1.0,  1.0);
setEffMoveKey(  spep_5+86,  bakuha1,  0,  0);
setEffRotateKey(  spep_5+86,  bakuha1,  0);
setEffAlphaKey(  spep_5+86,  bakuha1,  255);

entryFadeBg( spep_5, 0, 86, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_5+64, 20, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_6 = spep_5+86;

shuchusen6a = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_6,  shuchusen6a,  0,  0);
setEffScaleKey(  spep_6,  shuchusen6a,  1.0,  1.0);
setEffRotateKey(  spep_6,  shuchusen6a,  0);
setEffAlphaKey(  spep_6,  shuchusen6a,  255);
setEffMoveKey(  spep_6+90,  shuchusen6a,  0,  0);
setEffScaleKey(  spep_6+90,  shuchusen6a,  1.0,  1.0);
setEffRotateKey(  spep_6+90,  shuchusen6a,  0);
setEffAlphaKey(  spep_6+90,  shuchusen6a,  255);

playSe( spep_6, SE_05);
speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_6+73, 15, 9, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 地面爆破後シュン(40F)
------------------------------------------------------

spep_7 = spep_6+90;

shuchusen7 = entryEffectLife( spep_7, 906, 40, 0x100,  -1, 0,  0,  0);

setEffScaleKey(  spep_7,  shuchusen7,  2.1,  2.1);
setEffMoveKey(  spep_7,  shuchusen7,  0,  0);
setEffRotateKey(  spep_7, shuchusen7,  0);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffScaleKey(  spep_7+40,  shuchusen7,  2.1,  2.1);
setEffMoveKey(  spep_7+40,  shuchusen7,  0,  0);
setEffRotateKey(  spep_7+40,  shuchusen7,  0);
setEffAlphaKey(  spep_7+40,  shuchusen7,  255);

bakuha2 = entryEffect(  spep_7,  SP_07,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_7,  bakuha2,  1.0,  1.0);
setEffMoveKey(  spep_7,  bakuha2,  0,  0);
setEffRotateKey(  spep_7,  bakuha2,  0);
setEffAlphaKey(  spep_7,  bakuha2,  255);
setEffScaleKey(  spep_7+40,  bakuha2,  1.0,  1.0);
setEffMoveKey(  spep_7+40,  bakuha2,  0,  0);
setEffRotateKey(  spep_7+40,  bakuha2,  0);
setEffAlphaKey(  spep_7+40,  bakuha2,  255);

playSe(  spep_7+19,  43);  --瞬間移動

entryFadeBg( spep_7, 0, 40, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_7+28, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 上空へ飛ぶ(120F)
------------------------------------------------------

spep_8 = spep_7+40;

kidan = entryEffect(  spep_8,  SP_08,  0x100,  -1,  0,  0,  0);  --上空に飛ぶ

setEffScaleKey(  spep_8,  kidan,  1.0,  1.0);
setEffMoveKey(  spep_8,  kidan,  0,  0);
setEffRotateKey(  spep_8,  kidan,  0);
setEffAlphaKey(  spep_8,  kidan,  255);
setEffScaleKey(  spep_8+120,  kidan,  1.0,  1.0);
setEffMoveKey(  spep_8+120,  kidan,  0,  0);
setEffRotateKey(  spep_8+120,  kidan,  0);
setEffAlphaKey(  spep_8+120,  kidan,  255);

-- カットイン
speff = entryEffect(  spep_8,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_8,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_8+13, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_8+13,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_8+13,  ctgogo,  0,  530);
setEffRotateKey(  spep_8+13,  ctgogo,  0);
setEffScaleKey(  spep_8+84,  ctgogo,  0.7,  0.7);
setEffMoveKey(  spep_8+84,  ctgogo,  0,  530);
setEffRotateKey(  spep_8+84,  ctgogo,  0);

playSe(  spep_8,  SE_04);  --カットイン音
playSe(  spep_8+90,  SE_07);

-- 流線
ryu3 = entryEffectLife(  spep_8,  914,  89,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_8,  ryu3,  2.0,  2.0);
setEffMoveKey(  spep_8,  ryu3,  0,  0);
setEffRotateKey(  spep_8,  ryu3,  32);
setEffAlphaKey(  spep_8,  ryu3,  255);
setEffScaleKey(  spep_8+89,  ryu3,  2.0,  2.0);
setEffMoveKey(  spep_8+89,  ryu3,  0,  0);
setEffRotateKey(  spep_8+89,  ryu3,  32);
setEffAlphaKey(  spep_8+89,  ryu3,  255);

ryu4 = entryEffectLife(  spep_8+90,  921,  30,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_8+90,  ryu4,  2.0,  1.5);
setEffMoveKey(  spep_8+90,  ryu4,  0,  0);
setEffRotateKey(  spep_8+90,  ryu4,  -136);
setEffAlphaKey(  spep_8+90,  ryu4,  255);
setEffScaleKey(  spep_8+120,  ryu4,  2.0,  1.5);
setEffMoveKey(  spep_8+120,  ryu4,  0,  0);
setEffRotateKey(  spep_8+120,  ryu4,  -136);
setEffAlphaKey(  spep_8+120,  ryu4,  255);


entryFadeBg( spep_8, 0, 120, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_8+110, 5, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 迫る(80F)
------------------------------------------------------

spep_9 = spep_8+120;

shuchusen8 = entryEffectLife( spep_9+28, 906, 46, 0x100,  -1, 0,  0,  0);  --集中線

setEffScaleKey(  spep_9+28,  shuchusen8,  1.3,  1.3);
setEffMoveKey(  spep_9+28,  shuchusen8,  0,  0);
setEffRotateKey(  spep_9+28, shuchusen8,  0);
setEffAlphaKey(  spep_9+28,  shuchusen8,  255);
setEffScaleKey(  spep_9+80,  shuchusen8,  1.3,  1.3);
setEffMoveKey(  spep_9+80,  shuchusen8,  0,  0);
setEffRotateKey(  spep_9+80,  shuchusen8,  0);
setEffAlphaKey(  spep_9+80,  shuchusen8,  255);

ryu5 = entryEffectLife(  spep_9,  921,  80,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_9,  ryu5,  2.3,  1.5);
setEffMoveKey(  spep_9,  ryu5,  0,  0);
setEffRotateKey(  spep_9,  ryu5,  45);
setEffAlphaKey(  spep_9,  ryu5,  255);
setEffScaleKey(  spep_9+80,  ryu5,  2.3,  1.5);
setEffMoveKey(  spep_9+80,  ryu5,  0,  0);
setEffRotateKey(  spep_9+80,  ryu5,  45);
setEffAlphaKey(  spep_9+80,  ryu5,  255);

--　敵
setDisp(  spep_9,  1,  1);
changeAnime(  spep_9,  1,  106);
setShakeChara(  spep_9,  1,  15, 10);

setScaleKey(  spep_9,  1,  1.1,  1.1);
setMoveKey(  spep_9,  1,  500,  -800,  0);
setRotateKey(  spep_9,  1,  34);

setScaleKey(  spep_9+18,  1,  1.1,  1.1);
setMoveKey(  spep_9+18,  1,  260, -500,  0);
setRotateKey(  spep_9+18,  1,  34);

setScaleKey(  spep_9+40,  1,  1.1,  1.1);
setMoveKey(  spep_9+40,  1,  70, -380,  0);
setRotateKey(  spep_9+40,  1,  34);

semaru_f = entryEffect(  spep_9,  SP_09,  0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_9,  semaru_f,  1.0,  1.0);
setEffMoveKey(  spep_9,  semaru_f,  0,  0);
setEffRotateKey(  spep_9,  semaru_f,  0);
setEffAlphaKey(  spep_9,  semaru_f,  255);
setEffScaleKey(  spep_9+80,  semaru_f,  1.0,  1.0);
setEffMoveKey(  spep_9+80,  semaru_f,  0,  0);
setEffRotateKey(  spep_9+80,  semaru_f,  0);
setEffAlphaKey(  spep_9+80,  semaru_f,  255);

semaru_b = entryEffect(  spep_9,  SP_10,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_9,  semaru_b,  1.0,  1.0);
setEffMoveKey(  spep_9,  semaru_b,  0,  0);
setEffRotateKey(  spep_9,  semaru_b,  0);
setEffAlphaKey(  spep_9,  semaru_b,  255);
setEffScaleKey(  spep_9+80,  semaru_b,  1.0,  1.0);
setEffMoveKey(  spep_9+80,  semaru_b,  0,  0);
setEffRotateKey(  spep_9+80,  semaru_b,  0);
setEffAlphaKey(  spep_9+80,  semaru_b,  255);

playSe(  spep_9+39,  SE_10);

entryFadeBg( spep_9, 0, 80, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_9+56,22, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆破明け(160F)
------------------------------------------------------

spep_10 = spep_9+80;

setDisp(  spep_10,  1,  0);  --非表示

shuchusen9 = entryEffectLife( spep_10, 906, 40, 0x100,  -1, 0,  0,  0);  --集中線

setEffScaleKey(  spep_10,  shuchusen9,  1.3,  1.3);
setEffMoveKey(  spep_10,  shuchusen9,  0,  100);
setEffRotateKey(  spep_10, shuchusen9,  0);
setEffAlphaKey(  spep_10,  shuchusen9,  255);
setEffScaleKey(  spep_10+22,  shuchusen9,  1.3,  1.3);
setEffMoveKey(  spep_10+22,  shuchusen9,  0,  100);
setEffRotateKey(  spep_10+22,  shuchusen9,  0);
setEffAlphaKey(  spep_10+22,  shuchusen9,  255);
setEffScaleKey(  spep_10+40,  shuchusen9,  1.3,  1.3);
setEffMoveKey(  spep_10+40,  shuchusen9,  0,  100);
setEffRotateKey(  spep_10+40,  shuchusen9,  0);
setEffAlphaKey(  spep_10+40,  shuchusen9,  0);


bakuha3 = entryEffect(  spep_10,  SP_11,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_10,  bakuha3,  1.0,  1.0);
setEffMoveKey(  spep_10,  bakuha3,  0,  0);
setEffRotateKey(  spep_10,  bakuha3,  0);
setEffAlphaKey(  spep_10,  bakuha3,  255);
setEffScaleKey(  spep_10+160,  bakuha3,  1.0,  1.0);
setEffMoveKey(  spep_10+160,  bakuha3,  0,  0);
setEffRotateKey(  spep_10+160,  bakuha3,  0);
setEffAlphaKey(  spep_10+160,  bakuha3,  255);

entryFadeBg( spep_10, 0, 160, 0, 0, 0, 0, 255);          -- 黒　背景


-- ダメージ表示
dealDamage(spep_10+40);
entryFade( spep_10+120, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_10+130);

else



-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);

changeAnime( 0, 0, 1); --味方立ちポーズ
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示

setMoveKey(  0,  0,  0,  0,  0);
setMoveKey(   1,   0,    0, 0,   0);
setMoveKey(   2,   0,    0, 0,   0);
setMoveKey(   3,   0,    0, 0,   0);
setMoveKey(   4,   0,    0, 0,   0);
setMoveKey(   5,   0,    0, 0,   0);
setMoveKey(   6,   0,    0, 0,   0);
setMoveKey(  20,  0,  0,  0,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);
setScaleKey(  20,  0,  1.5,  1.5);

-- 敵
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);
setMoveKey(   4,   1,    0, 0,   0);
setMoveKey(   5,   1,    0, 0,   0);
setMoveKey(   6,   1,    0, 0,   0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

entryFade( 20, 0, 3, 9, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 気溜め(50F)
------------------------------------------------------

spep_1 =21;

setDisp( spep_1, 0, 0); --味方非表示
setDisp( spep_1, 1, 0); --敵非表示
changeAnime( spep_1, 0, 1); --味方立ちポーズ
changeAnime( spep_1, 1, 101);                       -- 立ち

shuchusen1 = entryEffectLife( spep_1, 906, 50, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.0,  1.0);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffScaleKey(  spep_1+50,  shuchusen1,  1.0,  1.0);
setEffMoveKey(  spep_1+50,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1+50,  shuchusen1,  0);
setEffAlphaKey(  spep_1+50,  shuchusen1,  255);

tame = entryEffect(  spep_1,  SP_12,  0x100,  -1,  0,  0,  0);  --溜め

setEffScaleKey(  spep_1,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1,  tame,  0,  0);
setEffRotateKey(  spep_1,  tame,  0);
setEffAlphaKey(  spep_1,  tame,  255);
setEffScaleKey(  spep_1+50,  tame,  1.0,  1.0);
setEffMoveKey(  spep_1+50,  tame,  0,  0);
setEffRotateKey(  spep_1+50,  tame,  0);
setEffAlphaKey(  spep_1+50,  tame,  255);

playSe(  spep_1,  SE_01);

entryFadeBg( spep_1, 0, 50, 0, 0, 0, 0, 190);          -- 黒　背景

entryFade( spep_1+39, 5, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 突進(70F)
------------------------------------------------------

spep_2 =spep_1+50;

shuchusen2 = entryEffectLife( spep_2, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線 

setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffScaleKey(  spep_2+70,  shuchusen2,  1.0,  1.0);
setEffMoveKey(  spep_2+70,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+70,  shuchusen2,  0);
setEffAlphaKey(  spep_2+70,  shuchusen2,  255);

tosshin = entryEffect(  spep_2,  SP_02,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_2,  tosshin,  -1.0,  1.0);
setEffMoveKey(  spep_2,  tosshin,  0,  0);
setEffRotateKey(  spep_2,  tosshin,  0);
setEffAlphaKey(  spep_2,  tosshin,  255);
setEffScaleKey(  spep_2+70,  tosshin,  -1.0,  1.0);
setEffMoveKey(  spep_2+70,  tosshin,  0,  0);
setEffRotateKey(  spep_2+70,  tosshin,  0);
setEffAlphaKey(  spep_2+70,  tosshin,  255);


-- 書き文字エントリー
ct_zuo = entryEffectLife( spep_2, 10012, 23, 0x100, -1, 0, 0, 0); -- ズオッ

setEffShake(  spep_2,  ct_zuo,  23,  10);
setEffAlphaKey(  spep_2,  ct_zuo,  255);
setEffScaleKey(  spep_2,  ct_zuo,  2.3,  2.3);
setEffMoveKey(  spep_2,  ct_zuo,  0,  400);
setEffRotateKey(  spep_2,  ct_zuo,  0);
setEffAlphaKey(  spep_2+22,  ct_zuo,  255);
setEffScaleKey(  spep_2+22,  ct_zuo,  2.3,  2.3);
setEffMoveKey(  spep_2+22,  ct_zuo,  0,  400);
setEffRotateKey(  spep_2+23,  ct_zuo,  0);
setEffAlphaKey(  spep_2+23,  ct_zuo,  0);
setEffScaleKey(  spep_2+23,  ct_zuo,  2.3,  2.3);
setEffMoveKey(  spep_2+23,  ct_zuo,  0,  400);
setEffRotateKey(  spep_2+23,  ct_zuo,  0);

playSe(  spep_2,  9);  --ダッシュ

entryFadeBg( spep_2, 0, 70, 0, 0, 0, 0, 210);          -- 黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 100; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0,    1000, -1000); --味方位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end


entryFade( spep_2+55, 11, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 殴り(72F)
------------------------------------------------------
spep_3 = spep_2+70;

shuchusen3 = entryEffectLife(  spep_3+14,  906,  11,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_3+14,  shuchusen3,  1.4,  1.4);
setEffMoveKey(  spep_3+14,  shuchusen3,  160,  120);
setEffRotateKey(  spep_3+14, shuchusen3,  0);
setEffAlphaKey(  spep_3+14,  shuchusen3,  255);
setEffScaleKey(  spep_3+25,  shuchusen3,  1.4,  1.4);
setEffMoveKey(  spep_3+25,  shuchusen3,  160,  120);
setEffRotateKey(  spep_3+25,  shuchusen3,  0);
setEffAlphaKey(  spep_3+25,  shuchusen3,  255);


shuchusen4 = entryEffectLife(  spep_3+58,  906,  32,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_3+58,  shuchusen4,  1.1,  1.1);
setEffMoveKey(  spep_3+58,  shuchusen4,  0,  0);
setEffRotateKey(  spep_3+58, shuchusen4,  0);
setEffAlphaKey(  spep_3+58,  shuchusen4,  255);
setEffScaleKey(  spep_3+85,  shuchusen4,  1.1,  1.1);
setEffMoveKey(  spep_3+85,  shuchusen4,  0,  0);
setEffRotateKey(  spep_3+85,  shuchusen4,  0);
setEffAlphaKey(  spep_3+85,  shuchusen4,  255);


-- 書き文字エントリー
ct_baki = entryEffectLife( spep_3+26, 10020, 23, 0x100, -1, 0, 0, 0); -- バキッ

setEffAlphaKey(  spep_3+26,  ct_baki,  255);
setEffScaleKey(  spep_3+26,  ct_baki,  1.9,  1.9);
setEffMoveKey(  spep_3+26,  ct_baki,  -58,  242);
setEffRotateKey(  spep_3+26,  ct_baki,  -22);
setEffAlphaKey(  spep_3+38,  ct_baki,  255);
setEffScaleKey(  spep_3+38,  ct_baki,  1.9,  1.9);
setEffMoveKey(  spep_3+38,  ct_baki,  -58,  242);
setEffRotateKey(  spep_3+38,  ct_baki,  -22);
setEffAlphaKey(  spep_3+39,  ct_baki,  0);
setEffScaleKey(  spep_3+39,  ct_baki,  1.9,  1.9);
setEffMoveKey(  spep_3+39,  ct_baki,  -58,  242);
setEffRotateKey(  spep_3+39,  ct_baki,  -22);

ct_shun = entryEffectLife( spep_3+60, 10011, 17, 0x100, -1, 0, 0, 0); -- シュンッ

setEffAlphaKey(  spep_3+60,  ct_shun,  255);
setEffScaleKey(  spep_3+60,  ct_shun,  0.7,  0.7);
setEffRotateKey(  spep_3+60,  ct_shun,  -14);
setEffMoveKey(  spep_3+60,  ct_shun,  -105,  103);
setEffAlphaKey(  spep_3+76,  ct_shun,  255);
setEffScaleKey(  spep_3+76,  ct_shun,  1.9,  1.9);
setEffRotateKey(  spep_3+76,  ct_shun,  -14);
setEffMoveKey(  spep_3+76,  ct_shun,  -106,  260);
setEffAlphaKey(  spep_3+77,  ct_shun,  0);
setEffScaleKey(  spep_3+77,  ct_shun,  1.9,  1.9);
setEffRotateKey(  spep_3+77,  ct_shun,  -14);
setEffMoveKey(  spep_3+77,  ct_shun,  -106,  260);



-- 流線
ryu1 = entryEffectLife(  spep_3,  914,  13,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_3,  ryu1,  1.9,  1.3);
setEffMoveKey(  spep_3,  ryu1,  0,  0);
setEffRotateKey(  spep_3,  ryu1,  -22);
setEffAlphaKey(  spep_3,  ryu1,  255);
setEffScaleKey(  spep_3+13,  ryu1,  1.9,  1.3);
setEffMoveKey(  spep_3+13,  ryu1,  0,  0);
setEffRotateKey(  spep_3+13,  ryu1,  -22);
setEffAlphaKey(  spep_3+13,  ryu1,  255);

ryu2 = entryEffectLife(  spep_3+12,  914,  48,  0x80,  -1,  0,  0,  0);  --流線下

setEffScaleKey(  spep_3+12,  ryu2,  1.8,  1.3);
setEffMoveKey(  spep_3+12,  ryu2,  62,  -67);
setEffRotateKey(  spep_3+12,  ryu2,  90);
setEffAlphaKey(  spep_3+12,  ryu2,  0);
setEffScaleKey(  spep_3+25,  ryu2,  1.8,  1.3);
setEffMoveKey(  spep_3+25,  ryu2,  62,  -67);
setEffRotateKey(  spep_3+25,  ryu2,  90);
setEffAlphaKey(  spep_3+25,  ryu2,  0);
setEffScaleKey(  spep_3+26,  ryu2,  1.8,  1.3);
setEffMoveKey(  spep_3+26,  ryu2,  62,  -67);
setEffRotateKey(  spep_3+26,  ryu2,  90);
setEffAlphaKey(  spep_3+26,  ryu2,  255);
setEffScaleKey(  spep_3+60,  ryu2,  1.8,  1.3);
setEffMoveKey(  spep_3+60,  ryu2,  62,  -67);
setEffRotateKey(  spep_3+60,  ryu2,  90);
setEffAlphaKey(  spep_3+59,  ryu2,  255);
setEffScaleKey(  spep_3+59,  ryu2,  1.8,  1.3);
setEffMoveKey(  spep_3+59,  ryu2,  62,  -67);
setEffRotateKey(  spep_3+60,  ryu2,  90);
setEffAlphaKey(  spep_3+60,  ryu2,  0);


naguru_f = entryEffect(  spep_3+13,  SP_13,  0x100,  -1,  0,  0,  0);  --殴る・前

setEffScaleKey(  spep_3,  naguru_f,  1.0,  1.0);
setEffMoveKey(  spep_3,  naguru_f,  0,  0);
setEffRotateKey(  spep_3,  naguru_f,  0);
setEffAlphaKey(  spep_3,  naguru_f,  255);
setEffScaleKey(  spep_3+85,  naguru_f,  1.0,  1.0);
setEffMoveKey(  spep_3+85,  naguru_f,  0,  0);
setEffRotateKey(  spep_3+85,  naguru_f,  0);
setEffAlphaKey(  spep_3+85,  naguru_f,  255);

--敵
setDisp(  spep_3,  1,  1);
changeAnime(  spep_3,  1,  104);


setScaleKey(  spep_3,  1,  1.5,  1.5);
setMoveKey(  spep_3,  1,  25,  0,  0);
setRotateKey(  spep_3,  1,  0);
setScaleKey(  spep_3+25,  1,  1.5,  1.5);
setMoveKey(  spep_3+25,  1,  25,  -4,  0);
setRotateKey(  spep_3+25,  1,  0);

changeAnime(  spep_3+26,  1,  108);  --くの字

setShakeChara(  spep_3+26,  1,  52, 10);
setScaleKey(  spep_3+26,  1,  1.6,  1.6);
setMoveKey(  spep_3+26,  1,  -25,  -60,  0);
setRotateKey(  spep_3+26,  1, 90);
setScaleKey(  spep_3+28,  1,  1.6,  1.6);
setMoveKey(  spep_3+28,  1,  -25,  -70,  0);
setRotateKey(  spep_3+28,  1, 90);
setScaleKey(  spep_3+55,  1,  1.6,  1.6);
setMoveKey(  spep_3+55,  1,  -25,  -160,  0);
setRotateKey(  spep_3+55,  1, 90);

changeAnime(  spep_3+56,  1,  106);  --仰け反り

setScaleKey(  spep_3+56,  1,  1.6,  1.6);
setMoveKey(  spep_3+56,  1,  40,  -164,  0);
setRotateKey(  spep_3+56,  1,  23);
setScaleKey(  spep_3+58,  1,  1.6,  1.6);
setMoveKey(  spep_3+58,  1,  40,  -154,  0);
setRotateKey(  spep_3+58,  1,  23);
setScaleKey(  spep_3+60,  1,  1.6,  1.6);
setMoveKey(  spep_3+60,  1,  40,  -154,  0);
setRotateKey(  spep_3+60,  1,  23);
setScaleKey(  spep_3+62,  1,  1.6,  1.6);
setMoveKey(  spep_3+62,  1,  40,  -154,  0);
setRotateKey(  spep_3+62,  1,  23);
setScaleKey(  spep_3+64,  1,  1.6,  1.6);
setMoveKey(  spep_3+64,  1,  40,  -144,  0);
setRotateKey(  spep_3+64,  1,  23);
setScaleKey(  spep_3+66,  1,  1.6,  1.6);
setMoveKey(  spep_3+66,  1,  40,  -134,  0);
setRotateKey(  spep_3+66,  1,  23);
setScaleKey(  spep_3+68,  1,  1.6,  1.6);
setMoveKey(  spep_3+68,  1,  40,  -134,  0);
setRotateKey(  spep_3+68,  1,  23);
setScaleKey(  spep_3+70,  1,  1.6,  1.6);
setMoveKey(  spep_3+70,  1,  40,  -122,  0);
setRotateKey(  spep_3+70,  1,  23);
setScaleKey(  spep_3+72,  1,  1.6,  1.6);
setMoveKey(  spep_3+72,  1,  40,  -122,  0);
setRotateKey(  spep_3+72,  1,  23);
setScaleKey(  spep_3+74,  1,  1.6,  1.6);
setMoveKey(  spep_3+74,  1,  40,  -102,  0);
setRotateKey(  spep_3+74,  1,  23);
setScaleKey(  spep_3+76,  1,  1.6,  1.6);
setMoveKey(  spep_3+76,  1,  40,  -92,  0);
setRotateKey(  spep_3+76,  1,  23);
setScaleKey(  spep_3+78,  1,  1.6,  1.6);
setMoveKey(  spep_3+78,  1,  40,  -72,  0);
setRotateKey(  spep_3+78,  1,  23);


naguru_b = entryEffect(  spep_3+13,  SP_14,  0x80,  -1,  0,  0,  0);  --殴る・後

setEffScaleKey(  spep_3,  naguru_b,  1.0,  1.0);
setEffMoveKey(  spep_3,  naguru_b,  0,  0);
setEffRotateKey(  spep_3,  naguru_b,  0);
setEffAlphaKey(  spep_3,  naguru_b,  255);
setEffScaleKey(  spep_3+85,  naguru_b,  1.0,  1.0);
setEffMoveKey(  spep_3+85,  naguru_b,  0,  0);
setEffRotateKey(  spep_3+85,  naguru_b,  0);
setEffAlphaKey(  spep_3+85,  naguru_b,  255);

entryFadeBg( spep_3, 0, 85, 0, 0, 0, 0, 255);          -- 黒　背景

-- playSe(  spep_3+17,  43);  --瞬間移動
playSe(  spep_3+26,  1006);  --hit音
playSe(  spep_3+56,  1024);  --hit音
playSe(  spep_3+60,  43);  --瞬間移動

entryFade( spep_3+71, 9, 5, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 気溜めナビ(70F)
------------------------------------------------------

spep_4 = spep_3+85;

setDisp(  spep_4,  1,  0);

shuchusen5 = entryEffectLife(  spep_4,  906,  70,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_4,  shuchusen5,  1.2,  1.2);
setEffMoveKey(  spep_4,  shuchusen5,  0,  0);
setEffRotateKey(  spep_4, shuchusen5,  0);
setEffAlphaKey(  spep_4,  shuchusen5,  255);
setEffScaleKey(  spep_4+70,  shuchusen5,  1.2,  1.2);
setEffMoveKey(  spep_4+70,  shuchusen5,  0,  0);
setEffRotateKey(  spep_4+70,  shuchusen5,  0);
setEffAlphaKey(  spep_4+70,  shuchusen5,  255);

nabi = entryEffect(  spep_4,  SP_05,  0x80,  -1,  0,  0,  0);  --気溜めナビ

setEffScaleKey(  spep_4,  nabi,  -1.0,  1.0);
setEffMoveKey(  spep_4,  nabi,  0,  0);
setEffRotateKey(  spep_4,  nabi,  0);
setEffAlphaKey(  spep_4,  nabi,  255);
setEffScaleKey(  spep_4+70,  nabi,  -1.0,  1.0);
setEffMoveKey(  spep_4+70,  nabi,  0,  0);
setEffRotateKey(  spep_4+70,  nabi,  0);
setEffAlphaKey(  spep_4+70,  nabi,  255);

playSe(  spep_4,  1035);

entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_4+50, 17, 5, 14, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 地面爆破(86F)
------------------------------------------------------

spep_5 = spep_4+70;

playSe(  spep_5,  SE_10);  --爆破音

shuchusen6 = entryEffectLife( spep_5, 906, 86, 0x100,  -1, 0,  0,  0);  --集中線

setEffScaleKey(  spep_5,  shuchusen6,  1.5,  1.5);
setEffMoveKey(  spep_5,  shuchusen6,  0,  0);
setEffRotateKey(  spep_5, shuchusen6,  0);
setEffAlphaKey(  spep_5,  shuchusen6,  255);
setEffScaleKey(  spep_5+86,  shuchusen6,  1.5,  1.5);
setEffMoveKey(  spep_5+86,  shuchusen6,  0,  0);
setEffRotateKey(  spep_5+86,  shuchusen6,  0);
setEffAlphaKey(  spep_5+86,  shuchusen6,  255);

bakuha1 = entryEffectLife(  spep_5,  SP_15,  86,  0x80,  -1,  0,  0,  0);  --爆破

setEffScaleKey(  spep_5,  bakuha1,  1.0,  1.0);
setEffMoveKey(  spep_5,  bakuha1,  0,  0);
setEffRotateKey(  spep_5,  bakuha1,  0);
setEffAlphaKey(  spep_5,  bakuha1,  255);
setEffScaleKey(  spep_5+86,  bakuha1,  1.0,  1.0);
setEffMoveKey(  spep_5+86,  bakuha1,  0,  0);
setEffRotateKey(  spep_5+86,  bakuha1,  0);
setEffAlphaKey(  spep_5+86,  bakuha1,  255);

entryFadeBg( spep_5, 0, 86, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_5+64, 20, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_6 = spep_5+86;

shuchusen6a = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_6,  shuchusen6a,  0,  0);
setEffScaleKey(  spep_6,  shuchusen6a,  1.0,  1.0);
setEffRotateKey(  spep_6,  shuchusen6a,  0);
setEffAlphaKey(  spep_6,  shuchusen6a,  255);
setEffMoveKey(  spep_6+90,  shuchusen6a,  0,  0);
setEffScaleKey(  spep_6+90,  shuchusen6a,  1.0,  1.0);
setEffRotateKey(  spep_6+90,  shuchusen6a,  0);
setEffAlphaKey(  spep_6+90,  shuchusen6a,  255);

playSe( spep_6, SE_05);
speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_6+73, 15, 9, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 地面爆破後シュン(40F)
------------------------------------------------------

spep_7 = spep_6+90;

shuchusen7 = entryEffectLife( spep_7, 906, 40, 0x100,  -1, 0,  0,  0);

setEffScaleKey(  spep_7,  shuchusen7,  2.1,  2.1);
setEffMoveKey(  spep_7,  shuchusen7,  0,  0);
setEffRotateKey(  spep_7, shuchusen7,  0);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffScaleKey(  spep_7+40,  shuchusen7,  2.1,  2.1);
setEffMoveKey(  spep_7+40,  shuchusen7,  0,  0);
setEffRotateKey(  spep_7+40,  shuchusen7,  0);
setEffAlphaKey(  spep_7+40,  shuchusen7,  255);

bakuha2 = entryEffect(  spep_7,  SP_16,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_7,  bakuha2,  1.0,  1.0);
setEffMoveKey(  spep_7,  bakuha2,  0,  0);
setEffRotateKey(  spep_7,  bakuha2,  0);
setEffAlphaKey(  spep_7,  bakuha2,  255);
setEffScaleKey(  spep_7+40,  bakuha2,  1.0,  1.0);
setEffMoveKey(  spep_7+40,  bakuha2,  0,  0);
setEffRotateKey(  spep_7+40,  bakuha2,  0);
setEffAlphaKey(  spep_7+40,  bakuha2,  255);

playSe(  spep_7+19,  43);  --瞬間移動

entryFadeBg( spep_7, 0, 40, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_7+28, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 上空へ飛ぶ(120F)
------------------------------------------------------

spep_8 = spep_7+40;

kidan = entryEffect(  spep_8,  SP_17,  0x100,  -1,  0,  0,  0);  --上空に飛ぶ

setEffScaleKey(  spep_8,  kidan,  1.0,  1.0);
setEffMoveKey(  spep_8,  kidan,  0,  0);
setEffRotateKey(  spep_8,  kidan,  0);
setEffAlphaKey(  spep_8,  kidan,  255);
setEffScaleKey(  spep_8+120,  kidan,  1.0,  1.0);
setEffMoveKey(  spep_8+120,  kidan,  0,  0);
setEffRotateKey(  spep_8+120,  kidan,  0);
setEffAlphaKey(  spep_8+120,  kidan,  255);

-- カットイン
-- speff = entryEffect(  spep_8,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
-- setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
-- speff = entryEffect(  spep_8,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
-- setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_8+13, 190006, 71, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffScaleKey(  spep_8+13,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_8+13,  ctgogo,  0,  530);
setEffRotateKey(  spep_8+13,  ctgogo,  0);
setEffScaleKey(  spep_8+84,  ctgogo,  -0.7,  0.7);
setEffMoveKey(  spep_8+84,  ctgogo,  0,  530);
setEffRotateKey(  spep_8+84,  ctgogo,  0);

playSe(  spep_8,  SE_04);  --カットイン音
playSe(  spep_8+90,  SE_07);

-- 流線
ryu3 = entryEffectLife(  spep_8,  914,  89,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffScaleKey(  spep_8,  ryu3,  2.0,  2.0);
setEffMoveKey(  spep_8,  ryu3,  0,  0);
setEffRotateKey(  spep_8,  ryu3,  32);
setEffAlphaKey(  spep_8,  ryu3,  255);
setEffScaleKey(  spep_8+89,  ryu3,  2.0,  2.0);
setEffMoveKey(  spep_8+89,  ryu3,  0,  0);
setEffRotateKey(  spep_8+89,  ryu3,  32);
setEffAlphaKey(  spep_8+89,  ryu3,  255);

ryu4 = entryEffectLife(  spep_8+90,  921,  30,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_8+90,  ryu4,  2.0,  1.5);
setEffMoveKey(  spep_8+90,  ryu4,  0,  0);
setEffRotateKey(  spep_8+90,  ryu4,  -136);
setEffAlphaKey(  spep_8+90,  ryu4,  255);
setEffScaleKey(  spep_8+120,  ryu4,  2.0,  1.5);
setEffMoveKey(  spep_8+120,  ryu4,  0,  0);
setEffRotateKey(  spep_8+120,  ryu4,  -136);
setEffAlphaKey(  spep_8+120,  ryu4,  255);


entryFadeBg( spep_8, 0, 120, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_8+110, 5, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 迫る(80F)
------------------------------------------------------

spep_9 = spep_8+120;

shuchusen8 = entryEffectLife( spep_9+28, 906, 46, 0x100,  -1, 0,  0,  0);  --集中線

setEffScaleKey(  spep_9+28,  shuchusen8,  1.3,  1.3);
setEffMoveKey(  spep_9+28,  shuchusen8,  0,  0);
setEffRotateKey(  spep_9+28, shuchusen8,  0);
setEffAlphaKey(  spep_9+28,  shuchusen8,  255);
setEffScaleKey(  spep_9+80,  shuchusen8,  1.3,  1.3);
setEffMoveKey(  spep_9+80,  shuchusen8,  0,  0);
setEffRotateKey(  spep_9+80,  shuchusen8,  0);
setEffAlphaKey(  spep_9+80,  shuchusen8,  255);

ryu5 = entryEffectLife(  spep_9,  921,  80,  0x80,  -1,  0,  0,  0);  --流線広がり

setEffScaleKey(  spep_9,  ryu5,  2.3,  1.5);
setEffMoveKey(  spep_9,  ryu5,  0,  0);
setEffRotateKey(  spep_9,  ryu5,  45);
setEffAlphaKey(  spep_9,  ryu5,  255);
setEffScaleKey(  spep_9+80,  ryu5,  2.3,  1.5);
setEffMoveKey(  spep_9+80,  ryu5,  0,  0);
setEffRotateKey(  spep_9+80,  ryu5,  45);
setEffAlphaKey(  spep_9+80,  ryu5,  255);

--　敵
setDisp(  spep_9,  1,  1);
changeAnime(  spep_9,  1,  106);
setShakeChara(  spep_9,  1,  15, 10);

setScaleKey(  spep_9,  1,  1.1,  1.1);
setMoveKey(  spep_9,  1,  500,  -800,  0);
setRotateKey(  spep_9,  1,  34);

setScaleKey(  spep_9+18,  1,  1.1,  1.1);
setMoveKey(  spep_9+18,  1,  260, -500,  0);
setRotateKey(  spep_9+18,  1,  34);

setScaleKey(  spep_9+40,  1,  1.1,  1.1);
setMoveKey(  spep_9+40,  1,  70, -380,  0);
setRotateKey(  spep_9+40,  1,  34);

semaru_f = entryEffect(  spep_9,  SP_09,  0x100,  -1,  0,  0,  0);

setEffScaleKey(  spep_9,  semaru_f,  1.0,  1.0);
setEffMoveKey(  spep_9,  semaru_f,  0,  0);
setEffRotateKey(  spep_9,  semaru_f,  0);
setEffAlphaKey(  spep_9,  semaru_f,  255);
setEffScaleKey(  spep_9+80,  semaru_f,  1.0,  1.0);
setEffMoveKey(  spep_9+80,  semaru_f,  0,  0);
setEffRotateKey(  spep_9+80,  semaru_f,  0);
setEffAlphaKey(  spep_9+80,  semaru_f,  255);

semaru_b = entryEffect(  spep_9,  SP_10,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_9,  semaru_b,  1.0,  1.0);
setEffMoveKey(  spep_9,  semaru_b,  0,  0);
setEffRotateKey(  spep_9,  semaru_b,  0);
setEffAlphaKey(  spep_9,  semaru_b,  255);
setEffScaleKey(  spep_9+80,  semaru_b,  1.0,  1.0);
setEffMoveKey(  spep_9+80,  semaru_b,  0,  0);
setEffRotateKey(  spep_9+80,  semaru_b,  0);
setEffAlphaKey(  spep_9+80,  semaru_b,  255);

playSe(  spep_9+39,  SE_10);

entryFadeBg( spep_9, 0, 80, 0, 0, 0, 0, 255);          -- 黒　背景

entryFade( spep_9+56,22, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆破明け(160F)
------------------------------------------------------

spep_10 = spep_9+80;

setDisp(  spep_10,  1,  0);  --非表示

shuchusen9 = entryEffectLife( spep_10, 906, 40, 0x100,  -1, 0,  0,  0);  --集中線

setEffScaleKey(  spep_10,  shuchusen9,  1.3,  1.3);
setEffMoveKey(  spep_10,  shuchusen9,  0,  100);
setEffRotateKey(  spep_10, shuchusen9,  0);
setEffAlphaKey(  spep_10,  shuchusen9,  255);
setEffScaleKey(  spep_10+22,  shuchusen9,  1.3,  1.3);
setEffMoveKey(  spep_10+22,  shuchusen9,  0,  100);
setEffRotateKey(  spep_10+22,  shuchusen9,  0);
setEffAlphaKey(  spep_10+22,  shuchusen9,  255);
setEffScaleKey(  spep_10+40,  shuchusen9,  1.3,  1.3);
setEffMoveKey(  spep_10+40,  shuchusen9,  0,  100);
setEffRotateKey(  spep_10+40,  shuchusen9,  0);
setEffAlphaKey(  spep_10+40,  shuchusen9,  0);


bakuha3 = entryEffect(  spep_10,  SP_11,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_10,  bakuha3,  -1.0,  1.0);
setEffMoveKey(  spep_10,  bakuha3,  0,  0);
setEffRotateKey(  spep_10,  bakuha3,  0);
setEffAlphaKey(  spep_10,  bakuha3,  255);
setEffScaleKey(  spep_10+160,  bakuha3,  -1.0,  1.0);
setEffMoveKey(  spep_10+160,  bakuha3,  0,  0);
setEffRotateKey(  spep_10+160,  bakuha3,  0);
setEffAlphaKey(  spep_10+160,  bakuha3,  255);

entryFadeBg( spep_10, 0, 160, 0, 0, 0, 0, 255);          -- 黒　背景


-- ダメージ表示
dealDamage(spep_10+40);
entryFade( spep_10+120, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_10+140);


end

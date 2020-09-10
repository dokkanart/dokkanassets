print ("[lua]sp1111");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150547;--フュージョン
SP_02 = 150548;--登場
SP_03 = 150549;--手前へ突進
SP_04 = 150550;--地球を周回
SP_05 = 150551;--ラッシュ
SP_06 = 150552;--つっこみ
SP_07 = 150553;--地面と爆発
--enemy
SP_08 = 150575;--手前へ突進
SP_09 = 150576;--ラッシュ


SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;
SE_13 = 1003; --ジョン！
SE_14 = 08; --キャラクター登場
SE_15 = 1014; --合体
SE_16 = 1017; --指合わせ

multi_frm = 2;


------------------------------------------------------
--フュージョン
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 0); --味方立ちポーズ
setMoveKey( 0, 0, 0, 0, 0); --味方位置
setMoveKey( 1, 0, 0, 0, 0); --味方位置
setMoveKey( 2, 0, 0, 0, 0); --味方位置
setMoveKey( 3, 0, 0, 0, 0); --味方位置
setMoveKey( 4, 0, 0, 0, 0); --味方位置
setMoveKey( 5, 0, 0, 0, 0); --味方位置
-- ** 背景 ** --
entryFadeBg( 0, 0, 322, 0, 0, 0, 0, 200); -- ベース暗め　背景
-- ** 流線(横) ** --
ryusen = entryEffectLife( 0, 920, 100, 0x80, -1,  0,  0,  0); -- 流線
setEffMoveKey( 0, ryusen, 0, 0, 0);
setEffScaleKey( 0, ryusen, 1.0, 1.0);
setEffAlphaKey( 0, ryusen, 255);
setEffRotateKey( 0, ryusen, 0);
-- ** エフェクト等 ** --
huseikai = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --フュージョン不正解
setEffMoveKey( 0, huseikai, 0, 0, 0);
setEffScaleKey( 0, huseikai, 1.0, 1.0);
setEffAlphaKey( 0, huseikai, 255);
setEffRotateKey( 0, huseikai, 0);
-- ** ホワイトフェード ** --
entryFade( 0, 0, 4, 10, fcolor_r, fcolor_g, fcolor_b, 180); -- 演出開始時
entryFade( 92, 10, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255); -- 2人ポーズまで
--entryFade( 305, 12, 5, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- 変身終わりまで
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 16, 906, 38, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 16, shuchusen1, 0, 0, 0);
setEffScaleKey( 16, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 16, shuchusen1, 255);
setEffRotateKey( 16, shuchusen1, 0);

shuchusen2 = entryEffectLife( 78, 906, 34, 0x100,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey( 78, shuchusen2, 0, 0, 0);
setEffScaleKey( 78, shuchusen2, 1.0, 1.0);
setEffAlphaKey( 78, shuchusen2, 255);
setEffRotateKey( 78, shuchusen2, 0);

shuchusen3 = entryEffectLife( 170, 906, 88, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( 170, shuchusen3, 0, 0, 0);
setEffScaleKey( 170, shuchusen3, 1.0, 1.0);
setEffAlphaKey( 170, shuchusen3, 255);
setEffRotateKey( 170, shuchusen3, 0);

-- ** 音 ** --
playSe( 5, SE_14);
playSe( 74, SE_14);
playSe( 147, SE_13);
playSe( 175, SE_16);
playSe( 215, SE_15);


------------------------------------------------------
-- フュージョン(66f)
------------------------------------------------------

spep_1=256;

entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setEffAlphaKey( spep_1-1, shuchusen3, 255);
setEffAlphaKey( spep_1, shuchusen3, 0);
setEffAlphaKey( spep_1-1, huseikai, 255);
setEffAlphaKey( spep_1, huseikai, 0);


-- ** エフェクト等 ** --
huseikai2 = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_1, huseikai2, 0, 0, 0);
setEffScaleKey( spep_1, huseikai2, 1.0, 1.0);
setEffAlphaKey( spep_1, huseikai2, 255);
setEffRotateKey( spep_1, huseikai2, 0);


--カットイン表示

speff1 = entryEffect(  spep_1,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_1,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

-- ** 音 ** --
playSe( spep_1+15, SE_04);

------------------------------------------------------
-- (f)　（356-
------------------------------------------------------

spep_2=spep_1+100;

entryFade( spep_2-10, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--カード絵＋技名
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



------------------------------------------------------
-- 手前へ突進(100F) (446-)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 114, 0, 10, 10, 10, 180);          -- ベース暗め　背景

--ためが必要
tyousei=0;

-- ** エフェクト等 ** --
huseikai3 = entryEffect( spep_3+tyousei, SP_03, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_3+tyousei, huseikai3, 0, 0, 0);
setEffScaleKey( spep_3+tyousei, huseikai3, 1.0, 1.0);
setEffAlphaKey( spep_3+tyousei, huseikai3, 255);
setEffRotateKey( spep_3+tyousei, huseikai3, 0);

koukasen = entryEffectLife( spep_3, 906, 114, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_3, koukasen, 0, 0, 0);
setEffScaleKey( spep_3, koukasen, 1.0, 1.0);
setEffAlphaKey( spep_3, koukasen, 255);
setEffRotateKey( spep_3, koukasen, 0);

playSe( spep_3, SE_01);

playSe( spep_3+20, SE_03);
playSe( spep_3+40, 1018);
--playSe( spep_3+60, SE_03);


------------------------------------------------------
-- 地球を周回(130F) (560-)
------------------------------------------------------
spep_4=spep_3+114;

entryFade( spep_4-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景

shuchusen4 = entryEffectLife( spep_4, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

-- ** エフェクト等 ** --
chikyu = entryEffect( spep_4, SP_04, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_4, chikyu, 0, 0, 0);
setEffScaleKey( spep_4, chikyu, 1.0, 1.0);
setEffAlphaKey( spep_4, chikyu, 255);
setEffRotateKey( spep_4, chikyu, 0);

playSe( spep_4+14, 1018);
playSe( spep_4+38, 1018);
playSe( spep_4+60, 1018);
playSe( spep_4+80, 1018);
playSe( spep_4+106, 1018);
SE0 = playSe( spep_4+122, 1018);


------------------------------------------------------
-- 接近～ラッシュ(96F) (690-)
------------------------------------------------------
spep_5=spep_4+130;

entryFade( spep_5-15, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 152, 0, 10, 10, 10, 200);          -- ベース暗め　背景

setScaleKey(   spep_5-1,   1, 1.6, 1.6);
setMoveKey(   spep_5-1,   1,    0, 0,   0);


setRotateKey( spep_5-1,  1,  0 );

setMoveKey(   spep_5,   1,    2000, 0,   0);
changeAnime( spep_5, 1, 104);                       -- 立ち

setDisp(spep_5+10, 1, 1); --敵表示
setMoveKey(   spep_5+10,   1,    2000, 0,   0);

ryusen5 = entryEffectLife( spep_5, 920, 152, 0x80, -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_5, ryusen5, 0, 0, 0);
setEffScaleKey( spep_5, ryusen5, 1.0, 1.0);
setEffAlphaKey( spep_5, ryusen5, 255);
setEffRotateKey( spep_5, ryusen5, 0);

bunnshin = entryEffect(  spep_5,   SP_05,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, bunnshin, 0, 0, 0);
setEffScaleKey( spep_5, bunnshin, 1.0, 1.0);
setEffAlphaKey( spep_5, bunnshin, 255);
setEffRotateKey( spep_5, bunnshin, 0);
--[[
ryusentosshinn2 = entryEffectLife( spep_5, 921, 152, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_5, ryusentosshinn2, 0, 10, 0);
setEffRotateKey( spep_5, ryusentosshinn2, -240);
setEffScaleKey( spep_5, ryusentosshinn2, 1.6, 1.7);
setEffAlphaKey( spep_5, ryusentosshinn2, 255);
]]

--playSe( spep_5, 1004); --1018
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

--SP_dodge = 702; --エンドフェイズのフレーム数を置き換える -702
SP_dodge = spep_5 + 12; --エンドフェイズのフレーム数を置き換える -702

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE0, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------
setMoveKey(   spep_5+21,   1,    100, 0,   0);
setRotateKey( spep_5+27,  1,  0 );
changeAnime( spep_5+27, 1, 106);                       -- 立ち
setRotateKey( spep_5+28,  1,  -45 );
setRotateKey( spep_5+85,  1,  -45 );
setRotateKey( spep_5+88,  1,  30 );
changeAnime( spep_5+88, 1, 108);                       -- 立ち
setMoveKey(   spep_5+88,   1,    200, 0,   0);

setMoveKey(   spep_5+22,   1,    100, 0,   0);
setMoveKey(   spep_5+23,   1,    100, 0,   0);
setMoveKey(   spep_5+50,   1,    100, 10,   0);
setMoveKey(   spep_5+68,   1,    100, 10,   0);
--setMoveKey(   spep_5+95,   1,    2000, 2000,   0);
--setScaleKey(   spep_5+96,   1, 2.0, 2.0);
setShakeChara(  spep_5+27,   1,     50,   20);

playSe( spep_5+30, 1000);
playSe( spep_5+38, 1000); 
playSe( spep_5+50, 1013);
playSe( spep_5+84, 1000); --1018
playSe( spep_5+96, 1009);
--playSe( spep_5+120, 1018);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------



spep_9=spep_5+140; --410 469　

entryFade( spep_9-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 0, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_9-1, bunnshin, 255);
setEffAlphaKey( spep_9, bunnshin, 0);

setScaleKey(   spep_9-1,   1, 1.6, 1.6);
setMoveKey(   spep_9-1,   1,    1000, 10,   0);
setDisp( spep_9-1, 1, 1);

setMoveKey(   spep_9,   1,    -300, 300,   0);
setScaleKey(   spep_9,   1, 2.6, 2.6);


setMoveKey(   spep_9+5,   1,    -300, 300,   0);
setScaleKey(   spep_9+5,   1, 2.6, 2.6);

setMoveKey(   spep_9+30,   1,    200, -200,   0);
setScaleKey(   spep_9+30,   1, 0.6, 0.6);
setDisp( spep_9+28, 1, 0);

playSe( spep_9-10, 1018);

--playSe( spep_9, SE_10);
playSe( spep_9+10, SE_09);
playSe( spep_9+34, SE_10);

bg = entryEffect(  spep_9,   SP_07,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, bg, 0, 0, 0);
setEffScaleKey( spep_9, bg, 1.1, 1.1);
setEffAlphaKey( spep_9, bg, 255);
setEffRotateKey( spep_9, bg, 0);


eff = entryEffect(  spep_9,   SP_06,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, eff, 0, 0, 0);
setEffScaleKey( spep_9, eff, 1.1, 1.1);
setEffAlphaKey( spep_9, eff, 255);
setEffRotateKey( spep_9, eff, 0);

shuchusen5 = entryEffectLife( spep_9+50, 906, 88, 0x100,  -1, 0,  100,  -100);   -- 集中線5
setEffMoveKey( spep_9+50, shuchusen5, 100, -100, 0);
setEffScaleKey( spep_9+50, shuchusen5, 2.0, 2.0);
setEffAlphaKey( spep_9+50, shuchusen5, 255);
setEffRotateKey( spep_9+50, shuchusen5, 0);


-- ダメージ表示
dealDamage(spep_9+40);

entryFade( spep_9+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+180);


else


------------------------------------------------------
-- 敵側

------------------------------------------------------
--フュージョン
------------------------------------------------------

setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 0); --味方立ちポーズ
setMoveKey( 0, 0, 0, 0, 0); --味方位置
setMoveKey( 1, 0, 0, 0, 0); --味方位置
setMoveKey( 2, 0, 0, 0, 0); --味方位置
setMoveKey( 3, 0, 0, 0, 0); --味方位置
setMoveKey( 4, 0, 0, 0, 0); --味方位置
setMoveKey( 5, 0, 0, 0, 0); --味方位置
-- ** 背景 ** --
entryFadeBg( 0, 0, 322, 0, 0, 0, 0, 200); -- ベース暗め　背景
-- ** 流線(横) ** --
ryusen = entryEffectLife( 0, 920, 100, 0x80, -1,  0,  0,  0); -- 流線
setEffMoveKey( 0, ryusen, 0, 0, 0);
setEffScaleKey( 0, ryusen, 1.0, 1.0);
setEffAlphaKey( 0, ryusen, 255);
setEffRotateKey( 0, ryusen, 0);
-- ** エフェクト等 ** --
huseikai = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --フュージョン不正解
setEffMoveKey( 0, huseikai, 0, 0, 0);
setEffScaleKey( 0, huseikai, -1.0, 1.0);
setEffAlphaKey( 0, huseikai, 255);
setEffRotateKey( 0, huseikai, 0);
-- ** ホワイトフェード ** --
entryFade( 0, 0, 4, 10, fcolor_r, fcolor_g, fcolor_b, 180); -- 演出開始時
entryFade( 92, 10, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255); -- 2人ポーズまで
--entryFade( 305, 12, 5, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- 変身終わりまで
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 16, 906, 38, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 16, shuchusen1, 0, 0, 0);
setEffScaleKey( 16, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 16, shuchusen1, 255);
setEffRotateKey( 16, shuchusen1, 0);

shuchusen2 = entryEffectLife( 78, 906, 34, 0x100,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey( 78, shuchusen2, 0, 0, 0);
setEffScaleKey( 78, shuchusen2, 1.0, 1.0);
setEffAlphaKey( 78, shuchusen2, 255);
setEffRotateKey( 78, shuchusen2, 0);

shuchusen3 = entryEffectLife( 170, 906, 88, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( 170, shuchusen3, 0, 0, 0);
setEffScaleKey( 170, shuchusen3, 1.0, 1.0);
setEffAlphaKey( 170, shuchusen3, 255);
setEffRotateKey( 170, shuchusen3, 0);

-- ** 音 ** --
playSe( 5, SE_14);
playSe( 74, SE_14);
playSe( 147, SE_13);
playSe( 175, SE_16);
playSe( 215, SE_15);


------------------------------------------------------
-- フュージョン(66f)
------------------------------------------------------

spep_1=256;

entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setEffAlphaKey( spep_1-1, shuchusen3, 255);
setEffAlphaKey( spep_1, shuchusen3, 0);
setEffAlphaKey( spep_1-1, huseikai, 255);
setEffAlphaKey( spep_1, huseikai, 0);


-- ** エフェクト等 ** --
huseikai2 = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_1, huseikai2, 0, 0, 0);
setEffScaleKey( spep_1, huseikai2, -1.0, 1.0);
setEffAlphaKey( spep_1, huseikai2, 255);
setEffRotateKey( spep_1, huseikai2, 0);

--[[
--カットイン表示

speff1 = entryEffect(  spep_1,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_1,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え
]]

-- ** 音 ** --
playSe( spep_1+15, SE_04);

------------------------------------------------------
-- (f)
------------------------------------------------------

spep_2=spep_1+100;

entryFade( spep_2-10, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--カード絵＋技名
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え



------------------------------------------------------
-- 手前へ突進(100F)
------------------------------------------------------
spep_3=spep_2+90;



entryFade( spep_3-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 114, 0, 10, 10, 10, 180);          -- ベース暗め　背景

--ためが必要
tyousei=0;

-- ** エフェクト等 ** --
huseikai3 = entryEffect( spep_3+tyousei, SP_08, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_3+tyousei, huseikai3, 0, 0, 0);
setEffScaleKey( spep_3+tyousei, huseikai3, 1.0, 1.0);
setEffAlphaKey( spep_3+tyousei, huseikai3, 255);
setEffRotateKey( spep_3+tyousei, huseikai3, 0);

koukasen = entryEffectLife( spep_3, 906, 114, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_3, koukasen, 0, 0, 0);
setEffScaleKey( spep_3, koukasen, 1.0, 1.0);
setEffAlphaKey( spep_3, koukasen, 255);
setEffRotateKey( spep_3, koukasen, 0);

playSe( spep_3, SE_01);

playSe( spep_3+20, SE_03);
playSe( spep_3+40, 1018);
--playSe( spep_3+60, SE_03);


------------------------------------------------------
-- 地球を周回(130F)
------------------------------------------------------
spep_4=spep_3+114;

entryFade( spep_4-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景

shuchusen4 = entryEffectLife( spep_4, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

-- ** エフェクト等 ** --
chikyu = entryEffect( spep_4, SP_04, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_4, chikyu, 0, 0, 0);
setEffScaleKey( spep_4, chikyu, -1.0, 1.0);
setEffAlphaKey( spep_4, chikyu, 255);
setEffRotateKey( spep_4, chikyu, 0);

playSe( spep_4+14, 1018);
playSe( spep_4+38, 1018);
playSe( spep_4+60, 1018);
playSe( spep_4+80, 1018);
playSe( spep_4+106, 1018);
SE0 = playSe( spep_4+122, 1018);


------------------------------------------------------
-- 接近～ラッシュ(96F) (690-)
------------------------------------------------------
spep_5=spep_4+130;

entryFade( spep_5-15, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 152, 0, 10, 10, 10, 200);          -- ベース暗め　背景

setScaleKey(   spep_5-1,   1, 1.6, 1.6);
setMoveKey(   spep_5-1,   1,    0, 0,   0);


setRotateKey( spep_5-1,  1,  0 );

setMoveKey(   spep_5,   1,    2000, 0,   0);
changeAnime( spep_5, 1, 104);                       -- 立ち

setDisp(spep_5+10, 1, 1); --敵表示
setMoveKey(   spep_5+10,   1,    2000, 0,   0);

ryusen5 = entryEffectLife( spep_5, 920, 152, 0x80, -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_5, ryusen5, 0, 0, 0);
setEffScaleKey( spep_5, ryusen5, 1.0, 1.0);
setEffAlphaKey( spep_5, ryusen5, 255);
setEffRotateKey( spep_5, ryusen5, 0);

bunnshin = entryEffect(  spep_5,   SP_09,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, bunnshin, 0, 0, 0);
setEffScaleKey( spep_5, bunnshin, 1.0, 1.0);
setEffAlphaKey( spep_5, bunnshin, 255);
setEffRotateKey( spep_5, bunnshin, 0);
--[[
ryusentosshinn2 = entryEffectLife( spep_5, 921, 152, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_5, ryusentosshinn2, 0, 10, 0);
setEffRotateKey( spep_5, ryusentosshinn2, -240);
setEffScaleKey( spep_5, ryusentosshinn2, 1.6, 1.7);
setEffAlphaKey( spep_5, ryusentosshinn2, 255);
]]

playSe( spep_5, 1004); --1018
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

--SP_dodge = 702; --エンドフェイズのフレーム数を置き換える -702
SP_dodge = spep_5 + 12; --エンドフェイズのフレーム数を置き換える -702

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE0, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------
setMoveKey(   spep_5+21,   1,    100, 0,   0);
setRotateKey( spep_5+27,  1,  0 );
changeAnime( spep_5+27, 1, 106);                       -- 立ち
setRotateKey( spep_5+28,  1,  -45 );
setRotateKey( spep_5+85,  1,  -45 );
setRotateKey( spep_5+88,  1,  30 );
changeAnime( spep_5+88, 1, 108);                       -- 立ち
setMoveKey(   spep_5+88,   1,    200, 0,   0);

setMoveKey(   spep_5+22,   1,    100, 0,   0);
setMoveKey(   spep_5+23,   1,    100, 0,   0);
setMoveKey(   spep_5+50,   1,    100, 10,   0);
setMoveKey(   spep_5+68,   1,    100, 10,   0);
--setMoveKey(   spep_5+95,   1,    2000, 2000,   0);
--setScaleKey(   spep_5+96,   1, 2.0, 2.0);
setShakeChara(  spep_5+27,   1,     50,   20);

playSe( spep_5+30, 1000);
playSe( spep_5+38, 1000); 
playSe( spep_5+50, 1013);
playSe( spep_5+84, 1000); --1018
playSe( spep_5+96, 1009);
--playSe( spep_5+120, 1018);
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

spep_9=spep_5+140; --410 469

entryFade( spep_9-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 0, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_9-1, bunnshin, 255);
setEffAlphaKey( spep_9, bunnshin, 0);

setScaleKey(   spep_9-1,   1, 1.6, 1.6);
setMoveKey(   spep_9-1,   1,    1000, 10,   0);
setDisp( spep_9-1, 1, 1);

setMoveKey(   spep_9,   1,    -300, 300,   0);
setScaleKey(   spep_9,   1, 2.6, 2.6);


setMoveKey(   spep_9+5,   1,    -300, 300,   0);
setScaleKey(   spep_9+5,   1, 2.6, 2.6);

setMoveKey(   spep_9+30,   1,    200, -200,   0);
setScaleKey(   spep_9+30,   1, 0.6, 0.6);
setDisp( spep_9+28, 1, 0);

playSe( spep_9-10, 1018);

--playSe( spep_9, SE_10);
playSe( spep_9+10, SE_09);
playSe( spep_9+34, SE_10);--866くらいが妥当？

bg = entryEffect(  spep_9,   SP_07,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, bg, 0, 0, 0);
setEffScaleKey( spep_9, bg, 1.1, 1.1);
setEffAlphaKey( spep_9, bg, 255);
setEffRotateKey( spep_9, bg, 0);


eff = entryEffect(  spep_9,   SP_06,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, eff, 0, 0, 0);
setEffScaleKey( spep_9, eff, 1.1, 1.1);
setEffAlphaKey( spep_9, eff, 255);
setEffRotateKey( spep_9, eff, 0);

shuchusen5 = entryEffectLife( spep_9+50, 906, 88, 0x100,  -1, 0,  100,  -100);   -- 集中線5
setEffMoveKey( spep_9+50, shuchusen5, 100, -100, 0);
setEffScaleKey( spep_9+50, shuchusen5, 2.0, 2.0);
setEffAlphaKey( spep_9+50, shuchusen5, 255);
setEffRotateKey( spep_9+50, shuchusen5, 0);

-- ダメージ表示
dealDamage(spep_9+40);

entryFade( spep_9+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+180);

end
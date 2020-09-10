print ("[lua]sp1114");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150554;--フュージョン
SP_02 = 150555;--登場
SP_03 = 150556;--手前へ突進
SP_04 = 150557;--地球を周回
SP_05 = 150558;--接近～ラッシュ
SP_06 = 150559;--撃ち落とし
SP_07 = 150560;--ヒットエフェクト
SP_08 = 150561;--死ね死ねミサイル
SP_09 = 150562;--着弾
SP_10 = 150563;--大爆発と高笑い
--enemy
SP_11 = 150577;--登場
SP_12 = 150578;--手前へ突進
SP_13 = 150579;--接近～ラッシュ
SP_14 = 150580;--撃ち落とし
SP_15 = 150581;--死ね死ねミサイル
SP_16 = 150582;--大爆発と高笑い




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
playSe( 5, 8);
playSe( 74, 8);
playSe( 149, 1003);
playSe( 170, 1042);
--playSe( 190, 1036);
playSe( 240, 1017);


------------------------------------------------------
-- フュージョン(66f)
------------------------------------------------------

spep_1=266;

entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setEffAlphaKey( spep_1-1, shuchusen3, 255);
setEffAlphaKey( spep_1, shuchusen3, 0);
setEffAlphaKey( spep_1-1, huseikai, 255);
setEffAlphaKey( spep_1, huseikai, 0);



-- ** エフェクト等 ** --
huseikai2 = entryEffect( spep_1-1, SP_02, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_1-1, huseikai2, 0, 0, 0);
setEffScaleKey( spep_1-1, huseikai2, 1.0, 1.0);
setEffAlphaKey( spep_1-1, huseikai2, 255);
setEffRotateKey( spep_1-1, huseikai2, 0);

shuchusentuika = entryEffectLife( spep_1, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1-10, shuchusentuika, 0, 0, 0);
setEffScaleKey( spep_1-10, shuchusentuika, 1.0, 1.0);
setEffAlphaKey( spep_1-10, shuchusentuika, 255);
setEffRotateKey( spep_1-10, shuchusentuika, 0);


--カットイン表示

speff1 = entryEffect(  spep_1,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_1,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

playSe( spep_1, SE_04);

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
entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景

--ためが必要
tyousei=0;

-- ** エフェクト等 ** --
huseikai3 = entryEffect( spep_3+tyousei, SP_03, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_3+tyousei, huseikai3, 0, 0, 0);
setEffScaleKey( spep_3+tyousei, huseikai3, 1.0, 1.0);
setEffAlphaKey( spep_3+tyousei, huseikai3, 255);
setEffRotateKey( spep_3+tyousei, huseikai3, 0);

koukasen = entryEffectLife( spep_3, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線3
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
spep_4=spep_3+100;

entryFade( spep_4-10, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 130, 0, 10, 10, 10, 180);          -- ベース暗め　背景

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
SE0 = playSe( spep_4+38, 1018);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

--SP_dodge = 669; --エンドフェイズのフレーム数を置き換える
SP_dodge = spep_4 +60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge - 12, SE0, 0 );

--[[setMoveKey(   SP_dodge-30,   1,    0, -54,   0);
setMoveKey(   SP_dodge-29,   1,    0, -54,   0);

setMoveKey(   SP_dodge-12,   1,    0, -54,   0);
setMoveKey(   SP_dodge,   1,    0, -54,   0);]]

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

playSe( spep_4+60, 1018);
playSe( spep_4+80, 1018);
playSe( spep_4+106, 1018);
playSe( spep_4+122, 1018);

------------------------------------------------------
-- 接近～ラッシュ(96F)
------------------------------------------------------
spep_5=spep_4+130;

entryFade( spep_5-15, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 96, 0, 10, 10, 10, 255);          -- ベース暗め　背景

setScaleKey(   spep_5-1,   1, 1.6, 1.6);
setMoveKey(   spep_5-1,   1,    0, 0,   0);
setRotateKey( spep_5-1,  1,  0 );
setRotateKey( spep_5+57,  1,  0 );
setRotateKey( spep_5+65,  1,  -18 );
setRotateKey( spep_5+66,  1,  -18 );
setRotateKey( spep_5+68,  1,  45 );
setRotateKey( spep_5+95,  1,  45 );
setMoveKey(   spep_5,   1,    2000, 0,   0);

changeAnime( spep_5, 1, 104);                       -- 立ち

setDisp(spep_5+10, 1, 1); --敵表示
setMoveKey(   spep_5+10,   1,    2000, 0,   0);

setMoveKey(   spep_5+12,   1,    350, 0,   0);
setMoveKey(   spep_5+14,   1,    330, 0,   0);
setMoveKey(   spep_5+16,   1,    310, 0,   0);
setMoveKey(   spep_5+18,   1,    290, 0,   0);
setMoveKey(   spep_5+20,   1,    270, 0,   0);

setMoveKey(   spep_5+22,   1,    250, 0,   0);
setMoveKey(   spep_5+23,   1,    200, 100,   0);
setMoveKey(   spep_5+50,   1,    250, 100,   0);
setMoveKey(   spep_5+68,   1,    200, 80,   0);
setMoveKey(   spep_5+95,   1,    2000, 2000,   0);
setScaleKey(   spep_5+69,   1, 1.6, 1.6);
setScaleKey(   spep_5+96,   1, 2.0, 2.0);
setShakeChara(  spep_5+23,   1,     27,   30);

setShakeChara(  spep_5+23,   1,     27,   30);

changeAnime( spep_5+23, 1, 108);                       -- 立ち



ryusen5 = entryEffectLife( spep_5, 920, 62, 0x80, -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_5, ryusen5, 0, 0, 0);
setEffScaleKey( spep_5, ryusen5, 1.0, 1.0);
setEffAlphaKey( spep_5, ryusen5, 255);
setEffRotateKey( spep_5, ryusen5, 0);


bunnshin = entryEffect(  spep_5,   SP_05,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, bunnshin, 0, 0, 0);
setEffScaleKey( spep_5, bunnshin, 1.0, 1.0);
setEffAlphaKey( spep_5, bunnshin, 255);
setEffRotateKey( spep_5, bunnshin, 0);

ryusentosshinn2 = entryEffectLife( spep_5+63, 921, 33, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_5+63, ryusentosshinn2, 0, 10, 0);
setEffRotateKey( spep_5+63, ryusentosshinn2, -240);
setEffScaleKey( spep_5+63, ryusentosshinn2, 1.6, 1.7);
setEffAlphaKey( spep_5+63, ryusentosshinn2, 255);


playSe( spep_5, 1004);
playSe( spep_5+30, 1012);
playSe( spep_5+55, 1013);




------------------------------------------------------
-- 撃ち落とし(74)
------------------------------------------------------
spep_6=spep_5+96;

entryFade( spep_6-15, 5, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 74, 0, 10, 10, 10, 255);          -- ベース暗め　背景
setScaleKey(   spep_6,   1, 2.0, 2.0);

setDisp(spep_6, 1, 1); --敵表示

setScaleKey(   spep_6,   1, 1.6, 1.6);
setMoveKey(   spep_6,   1,    -400, -400,   0);


setMoveKey(   spep_6+28,   1,    30, -20,   0);
setMoveKey(   spep_6+33,   1,    50, 0,   0);
setMoveKey(   spep_6+74,   1,    250, -500,   0);
setRotateKey( spep_6,  1,  45);
setRotateKey( spep_6+32,  1,  45);
setRotateKey( spep_6+33,  1,  30);

setScaleKey(   spep_6+30,   1, 1.6, 1.6);
setScaleKey(   spep_6+32,   1, 1.6, 1.6);
setScaleKey(   spep_6+33,   1, 1.0, 1.0);


changeAnime( spep_6, 1, 108);                       -- 立ち
changeAnime( spep_6+33, 1, 107);                       -- 立ち


uthiotoshi = entryEffect(  spep_6+10,   SP_06,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_6+10, uthiotoshi, 0, 0, 0);
setEffScaleKey( spep_6+10, uthiotoshi, 1.0, 1.0);
setEffAlphaKey( spep_6+10, uthiotoshi, 255);
setEffRotateKey( spep_6+10, uthiotoshi, 0);

hiteff = entryEffect(  spep_6+10,   SP_07,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_6+10, hiteff, 0, 0, 0);
setEffScaleKey( spep_6+10, hiteff, 1.0, 1.0);
setEffAlphaKey( spep_6+10, hiteff, 255);
setEffRotateKey( spep_6+10, hiteff, 0);

ryusentosshinn6 = entryEffectLife( spep_6, 921, 33, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_6, ryusentosshinn6, 0, 10, 0);
setEffRotateKey( spep_6, ryusentosshinn6, -240);
setEffScaleKey( spep_6, ryusentosshinn6, 1.6, 1.7);
setEffAlphaKey( spep_6, ryusentosshinn6, 255);


ryusentosshinn62 = entryEffectLife( spep_6, 921, 74, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_6, ryusentosshinn62, 0, 10, 0);
setEffRotateKey( spep_6, ryusentosshinn62, -120);
setEffScaleKey( spep_6, ryusentosshinn62, 1.6, 1.7);
setEffAlphaKey( spep_6, ryusentosshinn62, 0);
setEffAlphaKey( spep_6+33, ryusentosshinn62, 0);
setEffAlphaKey( spep_6+34, ryusentosshinn62, 255);


playSe( spep_6+0, 1053);
playSe( spep_6+30, 1052);
setDamage( spep_6+30, 1, 0);  -- ダメージ振動等


------------------------------------------------------
-- 死ね死ねミサイル (94F)
------------------------------------------------------
spep_7=spep_6+74;
setScaleKey(   spep_7,   1, 2.0, 2.0);
setEffAlphaKey( spep_7, ryusentosshinn62, 255);


entryFade( spep_7-5, 3, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 94, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setDisp(spep_7, 1, 0); --敵非表示
setEffAlphaKey( spep_7-1, uthiotoshi, 255);
setEffAlphaKey( spep_7, uthiotoshi, 0);

ryusendai = entryEffectLife( spep_7, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_7, ryusendai, 225);
--setEffRotateKey( spep_7+10, ryusendai, 45);
setEffScaleKey( spep_7, ryusendai, 1.6, 1.6);


uthiotoshi2 = entryEffect(  spep_7,   SP_08,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_7, uthiotoshi2, 0, 0, 0);
setEffScaleKey( spep_7, uthiotoshi2, 1.0, 1.0);
setEffAlphaKey( spep_7, uthiotoshi2, 255);
setEffRotateKey( spep_7, uthiotoshi2, 0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_7, 10012, 50, 0x100, -1, 0, 200, 300);    -- ズオッ
setEffShake(spep_7, ctzuo, 40, 28);
setEffScaleKey(spep_7, ctzuo, 2.0, 2.0);
setEffRotateKey(spep_7, ctzuo, 30);
setEffAlphaKey( spep_7, ctzuo, 255);




shuchusen7 = entryEffectLife( spep_7+80, 906, 14, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_7+80, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_7+80, shuchusen7, 1.0, 1.0);
setEffAlphaKey( spep_7+80, shuchusen7, 255);
setEffRotateKey( spep_7+80, shuchusen7, 0);


playSe( spep_7+10, 1021);
playSe( spep_7+30, 1021);
playSe( spep_7+50, 1021);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_8=spep_7+94; --410 469


entryFade( spep_8-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 116, 0, 0, 0, 0, 255);          -- ベース暗め　背景

tyakudan = entryEffect(  spep_8,   SP_09,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_8, tyakudan, 0, 0, 0);
setEffScaleKey( spep_8, tyakudan, 1.0, 1.0);
setEffAlphaKey( spep_8, tyakudan, 255);
setEffRotateKey( spep_8, tyakudan, 0);

shuchusen8 = entryEffectLife( spep_8, 906, 116, 0x100,  -1, 0,  0,  0);   -- 集中線8
setEffMoveKey( spep_8, shuchusen8, 0, 0, 0);
setEffScaleKey( spep_8, shuchusen8, 1.0, 1.0);
setEffAlphaKey( spep_8, shuchusen8, 255);
setEffRotateKey( spep_8, shuchusen8, 0);

playSe( spep_8+10, SE_10);
playSe( spep_8+30, SE_10);
playSe( spep_8+50, SE_10);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------



spep_9=spep_8+116; --410 469

entryFade( spep_9-5, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 0, 0, 0, 0, 0, 255);          -- ベース暗め　背景


--playSe( spep_9, SE_10);
playSe( spep_9+10, SE_09);
playSe( spep_9+60, SE_10);

eff = entryEffect(  spep_9,   SP_10,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, eff, 0, 0, 0);
setEffScaleKey( spep_9, eff, 1.1, 1.1);
setEffAlphaKey( spep_9, eff, 255);
setEffRotateKey( spep_9, eff, 0);


-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+180);


else


------------------------------------------------------
-- 敵側

------------------------------------------------------
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
playSe( 5, 8);
playSe( 74, 8);
playSe( 149, 1003);
playSe( 170, 1042);
--playSe( 190, 1036);
playSe( 240, 1017);


------------------------------------------------------
-- フュージョン(66f)
------------------------------------------------------

spep_1=266;

entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setEffAlphaKey( spep_1-1, shuchusen3, 255);
setEffAlphaKey( spep_1, shuchusen3, 0);
setEffAlphaKey( spep_1-1, huseikai, 255);
setEffAlphaKey( spep_1, huseikai, 0);



-- ** エフェクト等 ** --
huseikai2 = entryEffect( spep_1-1, SP_11, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_1-1, huseikai2, 0, 0, 0);
setEffScaleKey( spep_1-1, huseikai2, 1.0, 1.0);
setEffAlphaKey( spep_1-1, huseikai2, 255);
setEffRotateKey( spep_1-1, huseikai2, 0);

shuchusentuika = entryEffectLife( spep_1, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1-10, shuchusentuika, 0, 0, 0);
setEffScaleKey( spep_1-10, shuchusentuika, 1.0, 1.0);
setEffAlphaKey( spep_1-10, shuchusentuika, 255);
setEffRotateKey( spep_1-10, shuchusentuika, 0);


--カットイン表示

--speff1 = entryEffect(  spep_1,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
--speff2 = entryEffect(  spep_1,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

playSe( spep_1, SE_04);

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
entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景

--ためが必要
tyousei=0;

-- ** エフェクト等 ** --
huseikai3 = entryEffect( spep_3+tyousei, SP_12, 0x100, -1, 0, 0, 0); 
setEffMoveKey( spep_3+tyousei, huseikai3, 0, 0, 0);
setEffScaleKey( spep_3+tyousei, huseikai3, 1.0, 1.0);
setEffAlphaKey( spep_3+tyousei, huseikai3, 255);
setEffRotateKey( spep_3+tyousei, huseikai3, 0);

koukasen = entryEffectLife( spep_3, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線3
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
spep_4=spep_3+100;

entryFade( spep_4-10, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 130, 0, 10, 10, 10, 180);          -- ベース暗め　背景

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
SE0 = playSe( spep_4+38, 1018);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

--SP_dodge = 669; --エンドフェイズのフレーム数を置き換える
SP_dodge = spep_4 +60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge - 12, SE0, 0 );

--[[setMoveKey(   SP_dodge-30,   1,    0, -54,   0);
setMoveKey(   SP_dodge-29,   1,    0, -54,   0);

setMoveKey(   SP_dodge-12,   1,    0, -54,   0);
setMoveKey(   SP_dodge,   1,    0, -54,   0);]]

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
playSe( spep_4+60, 1018);
playSe( spep_4+80, 1018);
playSe( spep_4+106, 1018);
playSe( spep_4+122, 1018);

------------------------------------------------------
-- 接近～ラッシュ(96F)
------------------------------------------------------
spep_5=spep_4+130;

entryFade( spep_5-15, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 96, 0, 10, 10, 10, 255);          -- ベース暗め　背景

setScaleKey(   spep_5-1,   1, 1.6, 1.6);
setMoveKey(   spep_5-1,   1,    0, 0,   0);
setRotateKey( spep_5-1,  1,  0 );
setRotateKey( spep_5+57,  1,  0 );
setRotateKey( spep_5+65,  1,  -18 );
setRotateKey( spep_5+66,  1,  -18 );
setRotateKey( spep_5+68,  1,  45 );
setRotateKey( spep_5+95,  1,  45 );
setMoveKey(   spep_5,   1,    2000, 0,   0);

changeAnime( spep_5, 1, 104);                       -- 立ち

setDisp(spep_5+10, 1, 1); --敵表示
setMoveKey(   spep_5+10,   1,    2000, 0,   0);

setMoveKey(   spep_5+12,   1,    350, 0,   0);
setMoveKey(   spep_5+14,   1,    330, 0,   0);
setMoveKey(   spep_5+16,   1,    310, 0,   0);
setMoveKey(   spep_5+18,   1,    290, 0,   0);
setMoveKey(   spep_5+20,   1,    270, 0,   0);

setMoveKey(   spep_5+22,   1,    250, 0,   0);
setMoveKey(   spep_5+23,   1,    200, 100,   0);
setMoveKey(   spep_5+50,   1,    250, 100,   0);
setMoveKey(   spep_5+68,   1,    200, 80,   0);
setMoveKey(   spep_5+95,   1,    2000, 2000,   0);
setScaleKey(   spep_5+69,   1, 1.6, 1.6);
setScaleKey(   spep_5+96,   1, 2.0, 2.0);
setShakeChara(  spep_5+23,   1,     27,   30);

setShakeChara(  spep_5+23,   1,     27,   30);

changeAnime( spep_5+23, 1, 108);                       -- 立ち



ryusen5 = entryEffectLife( spep_5, 920, 62, 0x80, -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_5, ryusen5, 0, 0, 0);
setEffScaleKey( spep_5, ryusen5, 1.0, 1.0);
setEffAlphaKey( spep_5, ryusen5, 255);
setEffRotateKey( spep_5, ryusen5, 0);


bunnshin = entryEffect(  spep_5,   SP_13,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_5, bunnshin, 0, 0, 0);
setEffScaleKey( spep_5, bunnshin, 1.0, 1.0);
setEffAlphaKey( spep_5, bunnshin, 255);
setEffRotateKey( spep_5, bunnshin, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 669; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
setMoveKey(   SP_dodge-30,   1,    0, -54,   0);
setMoveKey(   SP_dodge-29,   1,    0, -54,   0);

setMoveKey(   SP_dodge-12,   1,    0, -54,   0);
setMoveKey(   SP_dodge,   1,    0, -54,   0);

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

ryusentosshinn2 = entryEffectLife( spep_5+63, 921, 33, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_5+63, ryusentosshinn2, 0, 10, 0);
setEffRotateKey( spep_5+63, ryusentosshinn2, -240);
setEffScaleKey( spep_5+63, ryusentosshinn2, 1.6, 1.7);
setEffAlphaKey( spep_5+63, ryusentosshinn2, 255);


playSe( spep_5, 1004);
playSe( spep_5+30, 1012);
playSe( spep_5+55, 1013);




------------------------------------------------------
-- 撃ち落とし(74)
------------------------------------------------------
spep_6=spep_5+96;

entryFade( spep_6-15, 5, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 74, 0, 10, 10, 10, 255);          -- ベース暗め　背景
setScaleKey(   spep_6,   1, 2.0, 2.0);

setDisp(spep_6, 1, 1); --敵表示

setScaleKey(   spep_6,   1, 1.6, 1.6);
setMoveKey(   spep_6,   1,    -400, -400,   0);


setMoveKey(   spep_6+28,   1,    30, -20,   0);
setMoveKey(   spep_6+33,   1,    50, 0,   0);
setMoveKey(   spep_6+74,   1,    250, -500,   0);
setRotateKey( spep_6,  1,  45);
setRotateKey( spep_6+32,  1,  45);
setRotateKey( spep_6+33,  1,  30);

setScaleKey(   spep_6+30,   1, 1.6, 1.6);
setScaleKey(   spep_6+32,   1, 1.6, 1.6);
setScaleKey(   spep_6+33,   1, 1.0, 1.0);


changeAnime( spep_6, 1, 108);                       -- 立ち
changeAnime( spep_6+33, 1, 107);                       -- 立ち


uthiotoshi = entryEffect(  spep_6+10,   SP_14,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_6+10, uthiotoshi, 0, 0, 0);
setEffScaleKey( spep_6+10, uthiotoshi, 1.0, 1.0);
setEffAlphaKey( spep_6+10, uthiotoshi, 255);
setEffRotateKey( spep_6+10, uthiotoshi, 0);

hiteff = entryEffect(  spep_6+10,   SP_07,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_6+10, hiteff, 0, 0, 0);
setEffScaleKey( spep_6+10, hiteff, 1.0, 1.0);
setEffAlphaKey( spep_6+10, hiteff, 255);
setEffRotateKey( spep_6+10, hiteff, 0);

ryusentosshinn6 = entryEffectLife( spep_6, 921, 33, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_6, ryusentosshinn6, 0, 10, 0);
setEffRotateKey( spep_6, ryusentosshinn6, -240);
setEffScaleKey( spep_6, ryusentosshinn6, 1.6, 1.7);
setEffAlphaKey( spep_6, ryusentosshinn6, 255);


ryusentosshinn62 = entryEffectLife( spep_6, 921, 74, 0x80,  -1,  0,  0,  10); -- 奥行き流線斜め
setEffMoveKey(spep_6, ryusentosshinn62, 0, 10, 0);
setEffRotateKey( spep_6, ryusentosshinn62, -120);
setEffScaleKey( spep_6, ryusentosshinn62, 1.6, 1.7);
setEffAlphaKey( spep_6, ryusentosshinn62, 0);
setEffAlphaKey( spep_6+33, ryusentosshinn62, 0);
setEffAlphaKey( spep_6+34, ryusentosshinn62, 255);


playSe( spep_6+0, 1053);
playSe( spep_6+30, 1052);
setDamage( spep_6+30, 1, 0);  -- ダメージ振動等


------------------------------------------------------
-- 死ね死ねミサイル (94F)
------------------------------------------------------
spep_7=spep_6+74;
setScaleKey(   spep_7,   1, 2.0, 2.0);
setEffAlphaKey( spep_7, ryusentosshinn62, 255);


entryFade( spep_7-5, 3, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 94, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setDisp(spep_7, 1, 0); --敵非表示
setEffAlphaKey( spep_7-1, uthiotoshi, 255);
setEffAlphaKey( spep_7, uthiotoshi, 0);

ryusendai = entryEffectLife( spep_7, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_7, ryusendai, 225);
--setEffRotateKey( spep_7+10, ryusendai, 45);
setEffScaleKey( spep_7, ryusendai, 1.6, 1.6);


uthiotoshi2 = entryEffect(  spep_7,   SP_15,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_7, uthiotoshi2, 0, 0, 0);
setEffScaleKey( spep_7, uthiotoshi2, 1.0, 1.0);
setEffAlphaKey( spep_7, uthiotoshi2, 255);
setEffRotateKey( spep_7, uthiotoshi2, 0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_7, 10012, 50, 0x100, -1, 0, 200, 300);    -- ズオッ
setEffShake(spep_7, ctzuo, 40, 28);
setEffScaleKey(spep_7, ctzuo, 2.0, 2.0);
setEffRotateKey(spep_7, ctzuo, 30);
setEffAlphaKey( spep_7, ctzuo, 255);




shuchusen7 = entryEffectLife( spep_7+80, 906, 14, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( spep_7+80, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_7+80, shuchusen7, 1.0, 1.0);
setEffAlphaKey( spep_7+80, shuchusen7, 255);
setEffRotateKey( spep_7+80, shuchusen7, 0);


playSe( spep_7+10, 1021);
playSe( spep_7+30, 1021);
playSe( spep_7+50, 1021);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_8=spep_7+94; --410 469


entryFade( spep_8-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 116, 0, 0, 0, 0, 255);          -- ベース暗め　背景

tyakudan = entryEffect(  spep_8,   SP_09,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_8, tyakudan, 0, 0, 0);
setEffScaleKey( spep_8, tyakudan, 1.0, 1.0);
setEffAlphaKey( spep_8, tyakudan, 255);
setEffRotateKey( spep_8, tyakudan, 0);

shuchusen8 = entryEffectLife( spep_8, 906, 116, 0x100,  -1, 0,  0,  0);   -- 集中線8
setEffMoveKey( spep_8, shuchusen8, 0, 0, 0);
setEffScaleKey( spep_8, shuchusen8, 1.0, 1.0);
setEffAlphaKey( spep_8, shuchusen8, 255);
setEffRotateKey( spep_8, shuchusen8, 0);

playSe( spep_8+10, SE_10);
playSe( spep_8+30, SE_10);
playSe( spep_8+50, SE_10);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------



spep_9=spep_8+116; --410 469

entryFade( spep_9-5, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 0, 0, 0, 0, 0, 255);          -- ベース暗め　背景


--playSe( spep_9, SE_10);
playSe( spep_9+10, SE_09);
playSe( spep_9+60, SE_10);

eff = entryEffect(  spep_9,   SP_16,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_9, eff, 0, 0, 0);
setEffScaleKey( spep_9, eff, 1.1, 1.1);
setEffAlphaKey( spep_9, eff, 255);
setEffRotateKey( spep_9, eff, 0);


-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+180);


end

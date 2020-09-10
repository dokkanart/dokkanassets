print ("[lua]sp1112");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1042; --ピッコロ!?
SE_02 = 1003; --ジョン！
SE_03 = 1017; --指合わせ
SE_04 = 1014; --合体
SE_05 = 8; --キャラクター登場
SE_06 = 1036; --気が広がる
SE_07 = 1018; --溜め
SE_08 = 1035; --カットイン
SE_09 = 1051; --ぶつかる
SE_10 = 1053; --飛んでいく
SE_11 = 1010; --当たる
SE_12 = 1024; --爆破
SE_13 = 1054; --割れる音

SP_01 = 150536; --フュージョン不正解
SP_02 = 150537; --登場
SP_03 = 150538; --迫る～岩にぶつかる
SP_04 = 150539; --回転
SP_05 = 150540; --敵にぶつかる
SP_06 = 150571; --回転（敵）
SP_07 = 150572; --敵にぶつかる（敵）




------------------------------------------------------
-- フュージョン不正解
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
entryFade( 90, 10, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255); -- 2人ポーズまで
entryFade( 305, 12, 5, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- 変身終わりまで

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

shuchusen3 = entryEffectLife( 244, 906, 78, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( 244, shuchusen3, 0, 0, 0);
setEffScaleKey( 244, shuchusen3, 1.0, 1.0);
setEffAlphaKey( 244, shuchusen3, 255);
setEffRotateKey( 244, shuchusen3, 0);


-- ** 音 ** --
playSe( 5, SE_05);
playSe( 74, SE_05);
playSe( 147, SE_02);
playSe( 170, SE_01);
playSe( 245, SE_03);
playSe( 287, SE_04);

spep_1 = 322;

------------------------------------------------------
-- 登場 (322F)
------------------------------------------------------
-- ** エフェクト等 ** --
touzyou = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --登場
setEffMoveKey( spep_1, touzyou, 0, 0, 0);
setEffScaleKey( spep_1, touzyou, 1.0, 1.0);
setEffAlphaKey( spep_1, touzyou, 255);
setEffRotateKey( spep_1, touzyou, 0);

-- ** カットイン&セリフ ** --
speff = entryEffect( spep_1, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                 -- カットイン差し替え
speff = entryEffect( spep_1, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                 -- セリフ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_1+76, 15, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- 演出開始時


-- ** 音 ** --
--playSe( spep_1+5, SE_06);
playSe( spep_1+15, SE_07);

spep_2 = (spep_1+96);

------------------------------------------------------
-- カードカットイン (418F)
------------------------------------------------------

speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_08);

spep_3 = (spep_2+92);

------------------------------------------------------
-- 迫る～岩にぶつかる (510F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 106, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
semaru = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); --迫る～岩にぶつかる
setEffMoveKey( spep_3, semaru, 0, 0, 0);
setEffScaleKey( spep_3, semaru, 1.0, 1.0);
setEffAlphaKey( spep_3, semaru, 255);
setEffRotateKey( spep_3, semaru, 0);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3, 906, 66, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_3, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen4, 255);
setEffRotateKey( spep_3, shuchusen4, 0);

-- ** 流線(縦) ** --
ryusen2 = entryEffectLife( spep_3+66, 920, 39, 0x80, -1,  0,  0,  0); -- 流線縦
setEffMoveKey( spep_3, ryusen2, 0, 0, 0);
setEffScaleKey( spep_3, ryusen2, 1.4, 1.4);
setEffAlphaKey( spep_3, ryusen2, 255);
setEffRotateKey( spep_3, ryusen2, 90);

-- ** ホワイトフェード ** --
entryFade( spep_3+95, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3, SE_07);
playSe( spep_3+54, SE_09);


spep_4 = (spep_3+109);


------------------------------------------------------
-- 回転 (619F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 69, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
touzyou2 = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); --回転
setEffMoveKey( spep_4, touzyou2, 0, 0, 0);
setEffScaleKey( spep_4, touzyou2, 1.0, 1.0);
setEffAlphaKey( spep_4, touzyou2, 255);
setEffRotateKey( spep_4, touzyou2, 0);

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_4, 920, 69, 0x80, -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_4, ryusen3, 0, 0, 0);
setEffScaleKey( spep_4, ryusen3, 1.0, 1.0);
setEffAlphaKey( spep_4, ryusen3, 255);
setEffRotateKey( spep_4, ryusen3, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+57, 8, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4+3, SE_10);


spep_5 = (spep_4+69);


------------------------------------------------------
-- 敵にぶつかる (688F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 86, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_5, 920, 40, 0x80, -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_5, ryusen4, 0, 0, 0);
setEffScaleKey( spep_5, ryusen4, 1.0, 1.0);
setEffAlphaKey( spep_5, ryusen4, 255);
setEffRotateKey( spep_5, ryusen4, 0);

-- ** エフェクト等 ** --
butukaru = entryEffect( spep_5, SP_05, 0x100, -1, 0, 0, 0); --敵にぶつかる
setEffMoveKey( spep_5, butukaru, 0, 0, 0);
setEffScaleKey( spep_5, butukaru, 1.0, 1.0);
setEffAlphaKey( spep_5, butukaru, 255);
setEffRotateKey( spep_5, butukaru, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5+41, 906, 44, 0x100,  -1, 0,  0,  0);   -- 集中線5
setEffMoveKey( spep_5+41, shuchusen5, 170, 50, 0);
setEffScaleKey( spep_5+41, shuchusen5, 1.5, 1.2);
setEffAlphaKey( spep_5+41, shuchusen5, 255);
setEffRotateKey( spep_5+41, shuchusen5, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_5-1, 1, 1); -- 表示
changeAnime( spep_5, 1, 104); --キャラクターポーズ
setScaleKey( spep_5, 1, 2, 2); --キャラクターサイズ
setScaleKey( spep_5+47, 1, 2, 2); --キャラクターサイズ
setScaleKey( spep_5+55, 1, 0.6, 0.6); --キャラクターサイズ
setMoveKey( spep_5, 1, 300, 0, 0); --キャラクター位置
setMoveKey( spep_5+30, 1, 180, 0, 0); --キャラクター位置
setMoveKey( spep_5+39, 1, 180, 0, 0); --キャラクター位置

changeAnime( spep_5+40, 1, 108); --キャラクターポーズ
setRotateKey( spep_5+40, 1, 20); --キャラクター角度
setMoveKey( spep_5+40, 1, 235, -15, 0); --キャラクター位置
setMoveKey( spep_5+41, 1, 240, -15, 0); --キャラクター位置
setMoveKey( spep_5+42, 1, 240, -15, 0); --キャラクター位置
setMoveKey( spep_5+43, 1, 235, -10, 0); --キャラクター位置
setMoveKey( spep_5+44, 1, 235, -10, 0); --キャラクター位置
setMoveKey( spep_5+45, 1, 230, -15, 0); --キャラクター位置
setMoveKey( spep_5+46, 1, 230, -15, 0); --キャラクター位置
setMoveKey( spep_5+47, 1, 190, -5, 0); --キャラクター位置
setMoveKey( spep_5+55, 1, 650, 120, 0); --キャラクター位置
setMoveKey( spep_5+86, 1, 650, 120, 0); --キャラクター位置

-- ** ホワイトフェード ** --
entryFade( spep_5+81, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-- ** 音 ** --
playSe( spep_5+41, SE_11);

spep_6 = (spep_5+87);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 710; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
--stopSe( SP_dodge+4, seID, 5);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);

endPhase(SP_dodge+10);

do return end
else end



------------------------------------------------------
-- 爆発 (776F)
------------------------------------------------------

-- ** 敵キャラの動き ** --
--setDisp( spep_6-1, 1, 0);
--setDisp( spep_6, 1, 1);
--setDisp( spep_6, 0, 0); --味方非表示
--setMoveKey( spep_8-1, 0, 0, 0, 0); --味方位置
--setMoveKey(  spep_8, 0, 2000, 2000, 0);
--setMoveKey(  spep_6-1, 1, 650, 120, 0);
--setScaleKey( spep_6-1, 1, 1.0, 1.0);
setMoveKey(  spep_6, 1, 0, 0, 128);
setScaleKey( spep_6, 1, 0.1, 0.1);
changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_6+8, SE_12);

setMoveKey( spep_6+8, 1, 0, 0, 128); --478
setMoveKey( spep_6+15, 1, -60, -200, -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake( spep_6+7, 6, 15);
setShake( spep_6+13, 15, 10);

setRotateKey( spep_6, 1, 30 );
setRotateKey( spep_6+2, 1, 80 );
setRotateKey( spep_6+4, 1, 120 );
setRotateKey( spep_6+6, 1, 160 );
setRotateKey( spep_6+8, 1, 200 );
setRotateKey( spep_6+10, 1, 260 );
setRotateKey( spep_6+12, 1, 320 );
setRotateKey( spep_6+14, 1, 0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+115, ct, 0);

playSe( spep_6+3, SE_13);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_6+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_6+16);
entryFade( spep_6+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+110);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- フュージョン不正解
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
entryFade( 90, 10, 2, 12, fcolor_r, fcolor_g, fcolor_b, 255); -- 2人ポーズまで
entryFade( 305, 12, 5, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- 変身終わりまで

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

shuchusen3 = entryEffectLife( 244, 906, 78, 0x100,  -1, 0,  0,  0);   -- 集中線3
setEffMoveKey( 244, shuchusen3, 0, 0, 0);
setEffScaleKey( 244, shuchusen3, 1.0, 1.0);
setEffAlphaKey( 244, shuchusen3, 255);
setEffRotateKey( 244, shuchusen3, 0);


-- ** 音 ** --
playSe( 5, SE_05);
playSe( 74, SE_05);
playSe( 147, SE_02);
playSe( 170, SE_01);
playSe( 245, SE_03);
playSe( 287, SE_04);

spep_1 = 322;

------------------------------------------------------
-- 登場 (322F)
------------------------------------------------------
-- ** エフェクト等 ** --
touzyou = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --登場
setEffMoveKey( spep_1, touzyou, 0, 0, 0);
setEffScaleKey( spep_1, touzyou, -1.0, 1.0);
setEffAlphaKey( spep_1, touzyou, 255);
setEffRotateKey( spep_1, touzyou, 0);

--[[
-- ** カットイン&セリフ ** --
speff = entryEffect( spep_1, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                 -- カットイン差し替え
speff = entryEffect( spep_1, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                 -- セリフ差し替え
]]--

-- ** ホワイトフェード ** --
entryFade( spep_1+76, 15, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- 演出開始時


-- ** 音 ** --
--playSe( spep_1+5, SE_06);
playSe( spep_1+15, SE_07);

spep_2 = (spep_1+96);

------------------------------------------------------
-- カードカットイン (418F)
------------------------------------------------------

speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_08);

spep_3 = (spep_2+92);

------------------------------------------------------
-- 迫る～岩にぶつかる (510F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 106, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
semaru = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); --迫る～岩にぶつかる
setEffMoveKey( spep_3, semaru, 0, 0, 0);
setEffScaleKey( spep_3, semaru, -1.0, 1.0);
setEffAlphaKey( spep_3, semaru, 255);
setEffRotateKey( spep_3, semaru, 0);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3, 906, 66, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_3, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen4, 255);
setEffRotateKey( spep_3, shuchusen4, 0);

-- ** 流線(縦) ** --
ryusen2 = entryEffectLife( spep_3+66, 920, 39, 0x80, -1,  0,  0,  0); -- 流線縦
setEffMoveKey( spep_3, ryusen2, 0, 0, 0);
setEffScaleKey( spep_3, ryusen2, 1.4, 1.4);
setEffAlphaKey( spep_3, ryusen2, 255);
setEffRotateKey( spep_3, ryusen2, 90);

-- ** ホワイトフェード ** --
entryFade( spep_3+95, 10, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3, SE_07);
playSe( spep_3+54, SE_09);


spep_4 = (spep_3+109);


------------------------------------------------------
-- 回転 (619F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 69, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
touzyou2 = entryEffect( spep_4, SP_06, 0x100, -1, 0, 0, 0); --回転(敵)
setEffMoveKey( spep_4, touzyou2, 0, 0, 0);
setEffScaleKey( spep_4, touzyou2, 1.0, 1.0);
setEffAlphaKey( spep_4, touzyou2, 255);
setEffRotateKey( spep_4, touzyou2, 0);

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_4, 920, 69, 0x80, -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_4, ryusen3, 0, 0, 0);
setEffScaleKey( spep_4, ryusen3, 1.0, 1.0);
setEffAlphaKey( spep_4, ryusen3, 255);
setEffRotateKey( spep_4, ryusen3, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+57, 8, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4+3, SE_10);


spep_5 = (spep_4+69);


------------------------------------------------------
-- 敵にぶつかる (688F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 86, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_5, 920, 40, 0x80, -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_5, ryusen4, 0, 0, 0);
setEffScaleKey( spep_5, ryusen4, 1.0, 1.0);
setEffAlphaKey( spep_5, ryusen4, 255);
setEffRotateKey( spep_5, ryusen4, 0);

-- ** エフェクト等 ** --
butukaru = entryEffect( spep_5, SP_07, 0x100, -1, 0, 0, 0); --敵にぶつかる(敵)
setEffMoveKey( spep_5, butukaru, 0, 0, 0);
setEffScaleKey( spep_5, butukaru, 1.0, 1.0);
setEffAlphaKey( spep_5, butukaru, 255);
setEffRotateKey( spep_5, butukaru, 0);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5+41, 906, 44, 0x100,  -1, 0,  0,  0);   -- 集中線5
setEffMoveKey( spep_5+41, shuchusen5, 170, 50, 0);
setEffScaleKey( spep_5+41, shuchusen5, 1.5, 1.2);
setEffAlphaKey( spep_5+41, shuchusen5, 255);
setEffRotateKey( spep_5+41, shuchusen5, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_5-1, 1, 1); -- 表示
changeAnime( spep_5, 1, 104); --キャラクターポーズ
setScaleKey( spep_5, 1, 2, 2); --キャラクターサイズ
setScaleKey( spep_5+47, 1, 2, 2); --キャラクターサイズ
setScaleKey( spep_5+55, 1, 0.6, 0.6); --キャラクターサイズ
setMoveKey( spep_5, 1, 300, 0, 0); --キャラクター位置
setMoveKey( spep_5+30, 1, 180, 0, 0); --キャラクター位置
setMoveKey( spep_5+39, 1, 180, 0, 0); --キャラクター位置

changeAnime( spep_5+40, 1, 108); --キャラクターポーズ
setRotateKey( spep_5+40, 1, 20); --キャラクター角度
setMoveKey( spep_5+40, 1, 235, -15, 0); --キャラクター位置
setMoveKey( spep_5+41, 1, 240, -15, 0); --キャラクター位置
setMoveKey( spep_5+42, 1, 240, -15, 0); --キャラクター位置
setMoveKey( spep_5+43, 1, 235, -10, 0); --キャラクター位置
setMoveKey( spep_5+44, 1, 235, -10, 0); --キャラクター位置
setMoveKey( spep_5+45, 1, 230, -15, 0); --キャラクター位置
setMoveKey( spep_5+46, 1, 230, -15, 0); --キャラクター位置
setMoveKey( spep_5+47, 1, 190, -5, 0); --キャラクター位置
setMoveKey( spep_5+55, 1, 650, 120, 0); --キャラクター位置
setMoveKey( spep_5+86, 1, 650, 120, 0); --キャラクター位置

-- ** 音 ** --
playSe( spep_5+41, SE_11);

-- ** ホワイトフェード ** --
entryFade( spep_5+81, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_6 = (spep_5+87);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 710; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
--stopSe( SP_dodge+4, seID, 5);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);

endPhase(SP_dodge+10);

do return end
else end



------------------------------------------------------
-- 爆発 (776F)
------------------------------------------------------

-- ** 敵キャラの動き ** --
setMoveKey(  spep_6, 1, 0, 0, 128);
setScaleKey( spep_6, 1, 0.1, 0.1);
changeAnime( spep_6, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_6+8, SE_12);

setMoveKey( spep_6+8, 1, 0, 0, 128); --478
setMoveKey( spep_6+15, 1, -60, -200, -100);
setDamage( spep_6+16, 1, 0);  -- ダメージ振動等
setShake( spep_6+7, 6, 15);
setShake( spep_6+13, 15, 10);

setRotateKey( spep_6, 1, 30 );
setRotateKey( spep_6+2, 1, 80 );
setRotateKey( spep_6+4, 1, 120 );
setRotateKey( spep_6+6, 1, 160 );
setRotateKey( spep_6+8, 1, 200 );
setRotateKey( spep_6+10, 1, 260 );
setRotateKey( spep_6+12, 1, 320 );
setRotateKey( spep_6+14, 1, 0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_6+15, ct, 30, 10);
setEffRotateKey( spep_6+15, ct, -40);
setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+19, ct, 2.6, 2.6);
setEffScaleKey( spep_6+20, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+15, ct, 255);
setEffAlphaKey( spep_6+105, ct, 255);
setEffAlphaKey( spep_6+115, ct, 0);

playSe( spep_6+3, SE_13);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_6+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_6+16);
entryFade( spep_6+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+110);

end
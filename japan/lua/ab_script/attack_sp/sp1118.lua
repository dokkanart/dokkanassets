print ("[lua]sp1118");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;



SE_01 = 1003; --2人出現
SE_02 = 1018; --溜め
SE_03 = 1035; --カットイン＆気溜め
SE_04 = 1003; --3人移動
SE_05 = 1037; --トライアングル
SE_06 = 43; --瞬間移動
SE_07 = 1000; --パンチ
SE_08 = 1001; --キック
SE_09 = 1009; --強パンチ
SE_10 = 1022; --気弾発射
SE_11 = 1024; --爆発
SE_12 = 1023; --爆発2


SP_01 = 150585; --出現
SP_02 = 150586; --気溜め
SP_03 = 150587; --トライアングル
SP_04 = 150588; --ラッシュ
SP_05 = 150589; --正面オーラ溜め
SP_06 = 150590; --溜め～発射
SP_07 = 150591; --迫る
SP_08 = 150592; --3色大爆発
SP_09 = 150593; --出現（敵）
SP_10 = 150594; --気溜め（敵）
SP_11 = 150595; --トライアングル（敵）
SP_12 = 150596; --ラッシュ（敵）
SP_13 = 150597; --溜め～発射（敵）
SP_14 = 150598; --迫る（敵）

multi_frm = 2;

------------------------------------------------------
-- 出現
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

setDisp( 0, 0, 1); --味方表示
setDisp( 28, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -40, 0); --味方位置
setMoveKey( 1, 0, 0, -40, 0); --味方位置
setMoveKey( 2, 0, 0, -40, 0); --味方位置
setMoveKey( 3, 0, 0, -40, 0); --味方位置
setMoveKey( 4, 0, 0, -40, 0); --味方位置
setMoveKey( 5, 0, 0, -40, 0); --味方位置
setMoveKey( 28, 0, 0, -40, 0); --味方位置
setMoveKey( 29, 0, -2000, -2000, 0); --味方位置
setScaleKey( 0, 0, 1.4, 1.4);
setScaleKey( 1, 0, 1.4, 1.4);
setScaleKey( 2, 0, 1.4, 1.4);
setScaleKey( 3, 0, 1.4, 1.4);
setScaleKey( 4, 0, 1.4, 1.4);
setScaleKey( 5, 0, 1.4, 1.4);
setScaleKey( 28, 0, 1.4, 1.4);

-- ** 背景 ** --
entryFadeBg( 27, 39, 3, 0, 0, 0, 0, 230); -- ベース暗め　背景

-- ** エフェクト等 ** --
syutugen = entryEffect( 28, SP_01, 0x100, -1, 0, 0, 0); --出現
setEffMoveKey( 0, syutugen, 0, 0, 0);
setEffScaleKey( 0, syutugen, 1.0, 1.0);
setEffAlphaKey( 0, syutugen, 255);
setEffRotateKey( 0, syutugen, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 33, 906, 35, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 33, shuchusen1, 0, 0, 0);
setEffScaleKey( 33, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 33, shuchusen1, 255);
setEffRotateKey( 33, shuchusen1, 0);

-- ** ホワイトフェード ** --
entryFade( 52, 15, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 33, SE_06);


spep_1 = 72;

------------------------------------------------------
-- 気溜め (72F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidame = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0); --気溜め
setEffMoveKey( spep_1, kidame, 0, 0, 0);
setEffScaleKey( spep_1, kidame, 1.0, 1.0);
setEffAlphaKey( spep_1, kidame, 255);
setEffRotateKey( spep_1, kidame, 0);


eff004 = entryEffect( spep_1, 1503, 0x80, -1, 0, 0, 0);   -- eff_004 (気)
setEffMoveKey( spep_1, eff004, 0, 0, 0);
setEffScaleKey( spep_1, eff004, 1.0, 1.0);
setEffAlphaKey( spep_1, eff004, 255);
setEffRotateKey( spep_1, eff004, 0);

eff003 = entryEffect( spep_1, 1502, 0x100, -1, 0, 0, 0);   -- eff_003 (気)
setEffMoveKey( spep_1, eff003, 0, 0, 0);
setEffScaleKey( spep_1, eff003, 1.0, 1.0);
setEffAlphaKey( spep_1, eff003, 255);
setEffRotateKey( spep_1, eff003, 0);

-- ** カットイン&セリフ ** --
speff = entryEffect( spep_1, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                 -- カットイン差し替え
speff = entryEffect( spep_1, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                 -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+13, 190006, 83, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffScaleKey(spep_1+13, ctgogo, 0.7, 0.7);
setEffRotateKey(spep_1+13, ctgogo, 10);
setEffAlphaKey( spep_1+13, ctgogo, 255);


-- ** 音 ** --
playSe( spep_1+15, SE_02);


-- ** ホワイトフェード ** --
entryFade( spep_1+80, 5, 12, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_2 = ( spep_1+97);


------------------------------------------------------
-- カードカットイン (169F)
------------------------------------------------------

speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_03);

spep_3 = (spep_2+92);

------------------------------------------------------
-- トライアングル (261F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 159, 0, 0, 0, 0, 200);          -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 26, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** エフェクト等 ** --
triangle = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); --トライアングル
setEffMoveKey( spep_3, triangle, 0, 0, 0);
setEffScaleKey( spep_3, triangle, 1.0, 1.0);
setEffAlphaKey( spep_3, triangle, 255);
setEffRotateKey( spep_3, triangle, 0);

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_3, 920, 160, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_3, ryusen, 0, 0, 0);
setEffRotateKey( spep_3, ryusen, 0);
setEffScaleKey( spep_3, ryusen, 1, 1);
setEffAlphaKey( spep_3, ryusen, 255);

-- ** キャラクター ** --
setDisp( spep_3, 1, 1); --敵表示
changeAnime( spep_3, 1, 100); --敵モーション
setMoveKey( spep_3, 1, 0, 0, 0); --敵位置
setScaleKey( spep_3, 1, 1, 1); --敵サイズ
setScaleKey( spep_3+159, 1, 1.1, 1.1); --敵サイズ


-- ** 音 ** --261
playSe( spep_3+7, SE_04); --268
playSe( spep_3+23, SE_04); --284
playSe( spep_3+39, SE_04); --300
seID = playSe( spep_3+50, SE_05);--311

-- ** ホワイトフェード ** --
entryFade( spep_3+151, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_4 = (spep_3+160);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 320; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( spep_3+50, seID, 1);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100, -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- ラッシュ (421F)
------------------------------------------------------

-- ** キャラクター ** --
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 100); --敵モーション
setScaleKey( spep_4, 1, 1, 1); --敵サイズ
setMoveKey( spep_4, 1, 0, 0, 0); --敵位置0
setMoveKey( spep_4+16, 1, 0, 0, 0); --敵位置

changeAnime( spep_4+17, 1, 108); --敵モーション(実際18F)
setMoveKey( spep_4+17, 1, 0, -35, 0); --敵位置
setScaleKey( spep_4+18, 1, 1, 1); --敵サイズ
setScaleKey( spep_4+19, 1, 1.2, 1.2); --敵サイズ1
setMoveKey( spep_4+19, 1, 0, -35, 0); --敵位置1
setMoveKey( spep_4+20, 1, 0, -35, 0); --敵位置1
setScaleKey( spep_4+20, 1, 1.2, 1.2); --敵サイズ1
setMoveKey( spep_4+21, 1, -10, -25, 0); --敵位置2
setMoveKey( spep_4+22, 1, -10, -25, 0); --敵位置2
setMoveKey( spep_4+23, 1, 20, -45, 0); --敵位置3
setScaleKey( spep_4+23, 1, 1.5, 1.5); --敵サイズ3
setMoveKey( spep_4+24, 1, 20, -45, 0); --敵位置3
setMoveKey( spep_4+25, 1, 10, -45, 0); --敵位置4
setMoveKey( spep_4+26, 1, 10, -45, 0); --敵位置4
setMoveKey( spep_4+27, 1, 20, -55, 0); --敵位置5
setMoveKey( spep_4+28, 1, 20, -55, 0); --敵位置5
setMoveKey( spep_4+29, 1, 0, -35, 0); --敵位置6
setMoveKey( spep_4+30, 1, 0, -35, 0); --敵位置6
setMoveKey( spep_4+31, 1, 40, -40, 0); --敵位置7-
setMoveKey( spep_4+32, 1, 40, -40, 0); --敵位置7-
setMoveKey( spep_4+33, 1, 20, -40, 0); --敵位置8
setMoveKey( spep_4+34, 1, 20, -40, 0); --敵位置8
setScaleKey( spep_4+34, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_4+35, 1, 25, -40, 0); --敵位置-1
setScaleKey( spep_4+35, 1, 1.3, 1.3); --敵サイズ-1
setMoveKey( spep_4+36, 1, 25, -40, 0); --敵位置-1
setScaleKey( spep_4+36, 1, 1.3, 1.3); --敵サイズ-1
setMoveKey( spep_4+37, 1, 15, -30, 0); --敵位置-2
setScaleKey( spep_4+37, 1, 1.2, 1.2); --敵サイズ-2
setMoveKey( spep_4+38, 1, 15, -30, 0); --敵位置-2
setScaleKey( spep_4+38, 1, 1.2, 1.2); --敵サイズ-2
setMoveKey( spep_4+39, 1, 25, -20, 0); --敵位置-3
setScaleKey( spep_4+39, 1, 1, 1); --敵サイズ-3
setScaleKey( spep_4+40, 1, 1, 1); --敵サイズ
setMoveKey( spep_4+67, 1, 40, 10, 0); --敵位置

changeAnime( spep_4+67, 1, 106); --敵モーション
setRotateKey( spep_4+67, 1, -50); --敵角度
setScaleKey( spep_4+68, 1, 1, 1); --敵サイズ
setScaleKey( spep_4+69, 1, 1.2, 1.2); --敵サイズ-1
setScaleKey( spep_4+70, 1, 1.2, 1.2); --敵サイズ-1
setMoveKey( spep_4+70, 1, 40, 10, 0); --敵位置
setMoveKey( spep_4+71, 1, 35, 20, 0); --敵位置-2
setMoveKey( spep_4+72, 1, 35, 20, 0); --敵位置-2
setScaleKey( spep_4+73, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_4+73, 1, 45, 20, 0); --敵位置-3
setMoveKey( spep_4+74, 1, 45, 20, 0); --敵位置-3
setMoveKey( spep_4+75, 1, 35, 20, 0); --敵位置-4
setMoveKey( spep_4+76, 1, 35, 20, 0); --敵位置-4
setMoveKey( spep_4+77, 1, 40, 15, 0); --敵位置-5
setMoveKey( spep_4+78, 1, 40, 15, 0); --敵位置-5
setMoveKey( spep_4+79, 1, 20, 35, 0); --敵位置-6
setMoveKey( spep_4+80, 1, 20, 35, 0); --敵位置-6
setMoveKey( spep_4+81, 1, 30, 25, 0); --敵位置-7
setMoveKey( spep_4+82, 1, 30, 25, 0); --敵位置-7
setMoveKey( spep_4+83, 1, 10, 25, 0); --敵位置-8
setMoveKey( spep_4+84, 1, 10, 25, 0); --敵位置-8
setScaleKey( spep_4+84, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_4+85, 1, 0, 25, 0); --敵位置-8
setScaleKey( spep_4+87, 1, 1, 1); --敵サイズ
setMoveKey( spep_4+92, 1, 0, 25, 0); --敵位置
setMoveKey( spep_4+113, 1, -20, 55, 0); --敵位置
setScaleKey( spep_4+114, 1, 1, 1); --敵サイズ
setMoveKey( spep_4+115, 1, -30, 60, 0); --敵位置
setMoveKey( spep_4+117, 1, -40, 65, 0); --敵位置
setScaleKey( spep_4+117, 1, 1.3, 1.3); --敵サイズ
setRotateKey( spep_4+118, 1, -50); --敵角度
setMoveKey( spep_4+118, 1, -40, 65, 0); --敵位置
setRotateKey( spep_4+119, 1, 20); --敵角度

changeAnime( spep_4+119, 1, 108); --敵モーション
setMoveKey( spep_4+119, 1, 65, 75, 0); --敵位置
setMoveKey( spep_4+130, 1, 260, -20, 0); --敵位置(敵が下がっていくシーン)
setScaleKey( spep_4+131, 1, 1.2, 1.2); --敵サイズ
setMoveKey( spep_4+131, 1, 240, 0, 0); --敵位置
setMoveKey( spep_4+132, 1, 240, 0, 0); --敵位置
setScaleKey( spep_4+132, 1, 1.2, 1.2); --敵サイズ
setScaleKey( spep_4+133, 1, 1, 1); --敵サイズ
setMoveKey( spep_4+133, 1, 250, 0, 0); --敵位置
setScaleKey( spep_4+134, 1, 1, 1); --敵サイズ
setMoveKey( spep_4+134, 1, 250, 0, 0); --敵位置
setScaleKey( spep_4+135, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+135, 1, 210, -30, 0); --敵位置
setScaleKey( spep_4+136, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+136, 1, 210, -30, 0); --敵位置
setScaleKey( spep_4+137, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+137, 1, 220, -40, 0); --敵位置
setScaleKey( spep_4+138, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+138, 1, 220, -40, 0); --敵位置
setScaleKey( spep_4+139, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+139, 1, 200, -20, 0); --敵位置
setScaleKey( spep_4+140, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+140, 1, 200, -20, 0); --敵位置
setScaleKey( spep_4+141, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+141, 1, 220, -20, 0); --敵位置
setScaleKey( spep_4+176, 1, 0.7, 0.7); --敵サイズ
setMoveKey( spep_4+176, 1, 270, -10, 0); --敵位置

setDisp( spep_4+178, 1, 0); --敵非表示


-- ** 背景 ** --
entryFadeBg( spep_4, 0, 181, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4+17, 906, 26, 0x100, -1, 0, 0, 0);   -- 集中線4
setEffMoveKey( spep_4+17, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4+17, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4+17, shuchusen4, 255);
setEffRotateKey( spep_4+17, shuchusen4, 0);

shuchusen5 = entryEffectLife( spep_4+67, 906, 23, 0x100, -1, 0, 0, 0);   -- 集中線5
setEffMoveKey( spep_4+67, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_4+67, shuchusen5, 1.0, 1.0);
setEffAlphaKey( spep_4+67, shuchusen5, 255);
setEffRotateKey( spep_4+67, shuchusen5, 0);

shuchusen6 = entryEffectLife( spep_4+119, 906, 10, 0x100, -1, 0, 0, 0);   -- 集中線6
setEffMoveKey( spep_4+119, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_4+119, shuchusen6, 1.0, 1.0);
setEffAlphaKey( spep_4+119, shuchusen6, 255);
setEffRotateKey( spep_4+119, shuchusen6, 0);

-- ** エフェクト等 ** --
rassyu = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); --ラッシュ
setEffMoveKey( spep_4, rassyu, 0, 0, 0);
setEffScaleKey( spep_4, rassyu, 1.0, 1.0);
setEffAlphaKey( spep_4, rassyu, 255);
setEffRotateKey( spep_4, rassyu, 0);

-- ** 流線(横) ** --
ryusen2 = entryEffectLife( spep_4, 920, 129, 0x80,  -1,  0,  0,  0); -- 流線2
setEffMoveKey( spep_4, ryusen2, 0, 0, 0);
setEffRotateKey( spep_4, ryusen2, 0);
setEffScaleKey( spep_4, ryusen2, 1, 1);
setEffAlphaKey( spep_4, ryusen2, 255);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_4+130, 924, 47, 0x80, -1, 0, -350, 0); -- 奥行き流線斜め
setEffMoveKey( spep_4+130, okuyukiryusennaname, -350, 150, 0);
setEffRotateKey( spep_4+130, okuyukiryusennaname, 15);
setEffScaleKey( spep_4+130, okuyukiryusennaname, 1.3, 1.3);
setEffAlphaKey( spep_4+130, okuyukiryusennaname, 255);

-- ** 音 ** --421
playSe( spep_4+5, SE_06); --426
playSe( spep_4+17, SE_07); --438

playSe( spep_4+51, SE_06); --472
playSe( spep_4+67, SE_08); --488

playSe( spep_4+103, SE_06); --524
playSe( spep_4+119, SE_09); --540


-- ** ホワイトフェード ** --
entryFade( spep_4+167, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


spep_5 = (spep_4+181);


------------------------------------------------------
-- オーラ溜 (602F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 77, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
auratame = entryEffect( spep_5, SP_05, 0x100, -1, 0, 0, 0); --正面オーラ溜め
setEffMoveKey( spep_5, auratame, 0, 0, 0);
setEffScaleKey( spep_5, auratame, 1.0, 1.0);
setEffAlphaKey( spep_5, auratame, 255);
setEffRotateKey( spep_5, auratame, 0);

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_5, 920, 36, 0x80,  -1,  0,  0,  0); -- 流線3
setEffMoveKey( spep_5, ryusen3, 0, 0, 0);
setEffRotateKey( spep_5, ryusen3, 0);
setEffScaleKey( spep_5, ryusen3, 1, 1);
setEffAlphaKey( spep_5, ryusen3, 255);

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_5+16, 906, 62, 0x100, -1, 0, 0, 0);   -- 集中線7
setEffMoveKey( spep_5+16, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_5+16, shuchusen7, 1.0, 1.0);
setEffAlphaKey( spep_5+16, shuchusen7, 255);
setEffRotateKey( spep_5+16, shuchusen7, 0);

-- ** 音 ** --
playSe( spep_5+2, SE_03);

-- ** ホワイトフェード ** --
entryFade( spep_5+67, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_6 = (spep_5+82);

------------------------------------------------------
-- 発射 (684F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 156, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
hassya = entryEffect( spep_6, SP_06, 0x100, -1, 0, 0, 0); --溜め～発射
setEffMoveKey( spep_6, hassya, 0, 0, 0);
setEffScaleKey( spep_6, hassya, 1.0, 1.0);
setEffAlphaKey( spep_6, hassya, 255);
setEffRotateKey( spep_6, hassya, 0);

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_6-1, 920, 27, 0x80,  -1,  0,  0,  0); -- 流線4
setEffMoveKey( spep_6-1, ryusen4, 0, 0, 0);
setEffRotateKey( spep_6-1, ryusen4, 45);
setEffScaleKey( spep_6-1, ryusen4, 1.7, 1.7); --途中で画面足りなくなるので調整してます
setEffAlphaKey( spep_6-1, ryusen4, 255);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_6+27, 906, 48, 0x100, -1, 0, 0, 0);   -- 集中線8
setEffMoveKey( spep_6+27, shuchusen8, 0, 0, 0);
setEffScaleKey( spep_6+27, shuchusen8, 1.0, 1.0);
setEffAlphaKey( spep_6+27, shuchusen8, 255);
setEffRotateKey( spep_6+27, shuchusen8, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_6+27, 921, 129, 0x80,  -1, 0, 0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_6+27, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_6+27, okuyukiryusennaname, 45);
setEffScaleKey( spep_6+27, okuyukiryusennaname, -1.7, 1.7);
setEffAlphaKey( spep_6+27, okuyukiryusennaname, 255);


-- 書き文字エントリー --
zuo = entryEffectLife( spep_6+27, 10012, 29, 0x100, -1, 0, 100, 320); -- ズオッ
setEffMoveKey( spep_6+27, zuo, 100, 320);
setEffMoveKey( spep_6+29, zuo, 100, 320);
setEffMoveKey( spep_6+30, zuo, 120, 300);
setEffMoveKey( spep_6+32, zuo, 120, 300);
setEffMoveKey( spep_6+33, zuo, 100, 320);
setEffMoveKey( spep_6+35, zuo, 100, 320);
setEffMoveKey( spep_6+36, zuo, 120, 300);
setEffMoveKey( spep_6+38, zuo, 120, 300);
setEffMoveKey( spep_6+39, zuo, 100, 320);
setEffMoveKey( spep_6+41, zuo, 100, 320);
setEffMoveKey( spep_6+42, zuo, 120, 300);
setEffMoveKey( spep_6+44, zuo, 120, 300);
setEffMoveKey( spep_6+45, zuo, 100, 320);
setEffMoveKey( spep_6+47, zuo, 100, 320);
setEffMoveKey( spep_6+48, zuo, 120, 300);
setEffMoveKey( spep_6+50, zuo, 120, 300);
setEffMoveKey( spep_6+51, zuo, 100, 320);
setEffMoveKey( spep_6+53, zuo, 100, 320);
setEffMoveKey( spep_6+54, zuo, 120, 300);
setEffMoveKey( spep_6+56, zuo, 120, 300);
setEffScaleKey( spep_6+27, zuo, 2, 2);
setEffRotateKey( spep_6+27, zuo, 30);

-- ** 音 ** --684
playSe( spep_6+3, SE_02);
playSe( spep_6+29, SE_10);

-- ** ホワイトフェード ** --
entryFade( spep_6+146, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_7 = (spep_6+160);

------------------------------------------------------
-- 迫る (845F)
------------------------------------------------------

-- ** キャラクター ** --
setDisp( spep_7, 1, 1); --敵表示

setMoveKey( spep_7-1, 1, 270, -10, 0); --敵位置
setRotateKey( spep_7-1, 1, 20); --敵角度※

changeAnime (spep_7, 1, 108); --敵モーション
setRotateKey( spep_7, 1, 0); --敵角度
setMoveKey( spep_7, 1, -450, 200, 0); --敵位置
setMoveKey( spep_7+6, 1, -20, 0, 0); --敵位置
setScaleKey( spep_7, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_7+6, 1, 1.2, 1.2); --敵サイズ
setScaleKey( spep_7+126, 1, 1.2, 1.2); --敵サイズ
setShakeChara( spep_7+6, 1, 100, 10); --敵揺れ
setDisp( spep_7+125, 1, 0); --敵表示

-- ** 背景 ** --
entryFadeBg( spep_7, 0, 126, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
semaru = entryEffect( spep_7+27, SP_07, 0x100, -1, 0, 0, 0); --迫る
setEffMoveKey( spep_7+27, semaru, 0, 0, 0);
setEffScaleKey( spep_7+27, semaru, 1.0, 1.0);
setEffAlphaKey( spep_7+27, semaru, 255);
setEffRotateKey( spep_7+27, semaru, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname2 = entryEffectLife( spep_7, 921, 126, 0x80,  -1, 0, 0,  0); -- 奥行き流線斜め2
setEffMoveKey( spep_7, okuyukiryusennaname2, 0, 0, 0);
setEffRotateKey( spep_7, okuyukiryusennaname2, 35);
setEffScaleKey( spep_7, okuyukiryusennaname2, -1.7, 1.7);
setEffAlphaKey( spep_7, okuyukiryusennaname2, 255);

-- ** 音 ** --845
playSe( spep_7+26, SE_10);

-- ** ホワイトフェード ** --
entryFade( spep_7+114, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_8 = (spep_7+127);

------------------------------------------------------
-- 爆発 (972F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatu = entryEffect( spep_8, SP_08, 0x100, -1, 0, 0, 0); --迫る
setEffMoveKey( spep_8, bakuhatu, 0, 0, 0);
setEffScaleKey( spep_8, bakuhatu, 1.1, 1.1);
setEffAlphaKey( spep_8, bakuhatu, 255);
setEffRotateKey( spep_8, bakuhatu, 0);

-- ** 音 ** --845
playSe( spep_8+1, SE_11);
playSe( spep_8+60, SE_12);


dealDamage( spep_8+68);
entryFade( spep_8+185, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_8+195);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 出現
------------------------------------------------------

setVisibleUI(0, 0);

setDisp( 0, 0, 1); --味方表示
setDisp( 28, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -40, 0); --味方位置
setMoveKey( 1, 0, 0, -40, 0); --味方位置
setMoveKey( 2, 0, 0, -40, 0); --味方位置
setMoveKey( 3, 0, 0, -40, 0); --味方位置
setMoveKey( 4, 0, 0, -40, 0); --味方位置
setMoveKey( 5, 0, 0, -40, 0); --味方位置
setMoveKey( 28, 0, 0, -40, 0); --味方位置
setMoveKey( 29, 0, -2000, -2000, 0); --味方位置
setScaleKey( 0, 0, 1.4, 1.4);
setScaleKey( 1, 0, 1.4, 1.4);
setScaleKey( 2, 0, 1.4, 1.4);
setScaleKey( 3, 0, 1.4, 1.4);
setScaleKey( 4, 0, 1.4, 1.4);
setScaleKey( 5, 0, 1.4, 1.4);
setScaleKey( 28, 0, 1.4, 1.4);

-- ** 背景 ** --
entryFadeBg( 27, 39, 3, 0, 0, 0, 0, 230); -- ベース暗め　背景

-- ** エフェクト等 ** --
syutugen = entryEffect( 28, SP_09, 0x100, -1, 0, 0, 0); --出現
setEffMoveKey( 0, syutugen, 0, 0, 0);
setEffScaleKey( 0, syutugen, 1.0, 1.0);
setEffAlphaKey( 0, syutugen, 255);
setEffRotateKey( 0, syutugen, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( 33, 906, 35, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 33, shuchusen1, 0, 0, 0);
setEffScaleKey( 33, shuchusen1, 1.0, 1.0);
setEffAlphaKey( 33, shuchusen1, 255);
setEffRotateKey( 33, shuchusen1, 0);

-- ** ホワイトフェード ** --
entryFade( 52, 15, 4, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 33, SE_06);


spep_1 = 72;

------------------------------------------------------
-- 気溜め (72F)
------------------------------------------------------

-- ** エフェクト等 ** --
kidame = entryEffect( spep_1, SP_10, 0x100, -1, 0, 0, 0); --気溜め
setEffMoveKey( spep_1, kidame, 0, 0, 0);
setEffScaleKey( spep_1, kidame, 1.0, 1.0);
setEffAlphaKey( spep_1, kidame, 255);
setEffRotateKey( spep_1, kidame, 0);


eff004 = entryEffect( spep_1, 1503, 0x80, -1, 0, 0, 0);   -- eff_004 (気)
setEffMoveKey( spep_1, eff004, 0, 0, 0);
setEffScaleKey( spep_1, eff004, 1.0, 1.0);
setEffAlphaKey( spep_1, eff004, 255);
setEffRotateKey( spep_1, eff004, 0);

eff003 = entryEffect( spep_1, 1502, 0x100, -1, 0, 0, 0);   -- eff_003 (気)
setEffMoveKey( spep_1, eff003, 0, 0, 0);
setEffScaleKey( spep_1, eff003, 1.0, 1.0);
setEffAlphaKey( spep_1, eff003, 255);
setEffRotateKey( spep_1, eff003, 0);


-- ** カットイン&セリフ ** --
--speff = entryEffect( spep_1, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                 -- カットイン差し替え
--speff = entryEffect( spep_1, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                 -- セリフ差し替え


-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+13, 190006, 83, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffScaleKey(spep_1+13, ctgogo, -0.7, 0.7);
setEffRotateKey(spep_1+13, ctgogo, 10);
setEffAlphaKey( spep_1+13, ctgogo, 255);


-- ** 音 ** --
playSe( spep_1+15, SE_02);


-- ** ホワイトフェード ** --
entryFade( spep_1+80, 5, 12, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_2 = ( spep_1+97);


------------------------------------------------------
-- カードカットイン (169F)
------------------------------------------------------

speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_03);

spep_3 = (spep_2+92);

------------------------------------------------------
-- トライアングル (261F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 159, 0, 0, 0, 0, 200);          -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 26, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** エフェクト等 ** --
triangle = entryEffect( spep_3, SP_11, 0x100, -1, 0, 0, 0); --トライアングル
setEffMoveKey( spep_3, triangle, 0, 0, 0);
setEffScaleKey( spep_3, triangle, 1.0, 1.0);
setEffAlphaKey( spep_3, triangle, 255);
setEffRotateKey( spep_3, triangle, 0);

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_3, 920, 160, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_3, ryusen, 0, 0, 0);
setEffRotateKey( spep_3, ryusen, 0);
setEffScaleKey( spep_3, ryusen, 1, 1);
setEffAlphaKey( spep_3, ryusen, 255);

-- ** キャラクター ** --
setDisp( spep_3, 1, 1); --敵表示
changeAnime( spep_3, 1, 100); --敵モーション
setMoveKey( spep_3, 1, 0, 0, 0); --敵位置
setScaleKey( spep_3, 1, 1, 1); --敵サイズ
setScaleKey( spep_3+159, 1, 1.1, 1.1); --敵サイズ


-- ** 音 ** --261
playSe( spep_3+7, SE_04); --268
playSe( spep_3+23, SE_04); --284
playSe( spep_3+39, SE_04); --300
seID = playSe( spep_3+50, SE_05);--311

-- ** ホワイトフェード ** --
entryFade( spep_3+151, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_4 = (spep_3+160);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 320; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( spep_3+50, seID, 1);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100, -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- ラッシュ (421F)
------------------------------------------------------

-- ** キャラクター ** --
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 100); --敵モーション
setScaleKey( spep_4, 1, 1, 1); --敵サイズ
setMoveKey( spep_4, 1, 0, 0, 0); --敵位置0
setMoveKey( spep_4+16, 1, 0, 0, 0); --敵位置

changeAnime( spep_4+17, 1, 108); --敵モーション(実際18F)
setMoveKey( spep_4+17, 1, 0, -35, 0); --敵位置
setScaleKey( spep_4+18, 1, 1, 1); --敵サイズ
setScaleKey( spep_4+19, 1, 1.2, 1.2); --敵サイズ1
setMoveKey( spep_4+19, 1, 0, -35, 0); --敵位置1
setMoveKey( spep_4+20, 1, 0, -35, 0); --敵位置1
setScaleKey( spep_4+20, 1, 1.2, 1.2); --敵サイズ1
setMoveKey( spep_4+21, 1, -10, -25, 0); --敵位置2
setMoveKey( spep_4+22, 1, -10, -25, 0); --敵位置2
setMoveKey( spep_4+23, 1, 20, -45, 0); --敵位置3
setScaleKey( spep_4+23, 1, 1.5, 1.5); --敵サイズ3
setMoveKey( spep_4+24, 1, 20, -45, 0); --敵位置3
setMoveKey( spep_4+25, 1, 10, -45, 0); --敵位置4
setMoveKey( spep_4+26, 1, 10, -45, 0); --敵位置4
setMoveKey( spep_4+27, 1, 20, -55, 0); --敵位置5
setMoveKey( spep_4+28, 1, 20, -55, 0); --敵位置5
setMoveKey( spep_4+29, 1, 0, -35, 0); --敵位置6
setMoveKey( spep_4+30, 1, 0, -35, 0); --敵位置6
setMoveKey( spep_4+31, 1, 40, -40, 0); --敵位置7-
setMoveKey( spep_4+32, 1, 40, -40, 0); --敵位置7-
setMoveKey( spep_4+33, 1, 20, -40, 0); --敵位置8
setMoveKey( spep_4+34, 1, 20, -40, 0); --敵位置8
setScaleKey( spep_4+34, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_4+35, 1, 25, -40, 0); --敵位置-1
setScaleKey( spep_4+35, 1, 1.3, 1.3); --敵サイズ-1
setMoveKey( spep_4+36, 1, 25, -40, 0); --敵位置-1
setScaleKey( spep_4+36, 1, 1.3, 1.3); --敵サイズ-1
setMoveKey( spep_4+37, 1, 15, -30, 0); --敵位置-2
setScaleKey( spep_4+37, 1, 1.2, 1.2); --敵サイズ-2
setMoveKey( spep_4+38, 1, 15, -30, 0); --敵位置-2
setScaleKey( spep_4+38, 1, 1.2, 1.2); --敵サイズ-2
setMoveKey( spep_4+39, 1, 25, -20, 0); --敵位置-3
setScaleKey( spep_4+39, 1, 1, 1); --敵サイズ-3
setScaleKey( spep_4+40, 1, 1, 1); --敵サイズ
setMoveKey( spep_4+67, 1, 40, 10, 0); --敵位置

changeAnime( spep_4+67, 1, 106); --敵モーション
setRotateKey( spep_4+67, 1, -50); --敵角度
setScaleKey( spep_4+68, 1, 1, 1); --敵サイズ
setScaleKey( spep_4+69, 1, 1.2, 1.2); --敵サイズ-1
setScaleKey( spep_4+70, 1, 1.2, 1.2); --敵サイズ-1
setMoveKey( spep_4+70, 1, 40, 10, 0); --敵位置
setMoveKey( spep_4+71, 1, 35, 20, 0); --敵位置-2
setMoveKey( spep_4+72, 1, 35, 20, 0); --敵位置-2
setScaleKey( spep_4+73, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_4+73, 1, 45, 20, 0); --敵位置-3
setMoveKey( spep_4+74, 1, 45, 20, 0); --敵位置-3
setMoveKey( spep_4+75, 1, 35, 20, 0); --敵位置-4
setMoveKey( spep_4+76, 1, 35, 20, 0); --敵位置-4
setMoveKey( spep_4+77, 1, 40, 15, 0); --敵位置-5
setMoveKey( spep_4+78, 1, 40, 15, 0); --敵位置-5
setMoveKey( spep_4+79, 1, 20, 35, 0); --敵位置-6
setMoveKey( spep_4+80, 1, 20, 35, 0); --敵位置-6
setMoveKey( spep_4+81, 1, 30, 25, 0); --敵位置-7
setMoveKey( spep_4+82, 1, 30, 25, 0); --敵位置-7
setMoveKey( spep_4+83, 1, 10, 25, 0); --敵位置-8
setMoveKey( spep_4+84, 1, 10, 25, 0); --敵位置-8
setScaleKey( spep_4+84, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_4+85, 1, 0, 25, 0); --敵位置-8
setScaleKey( spep_4+87, 1, 1, 1); --敵サイズ
setMoveKey( spep_4+92, 1, 0, 25, 0); --敵位置
setMoveKey( spep_4+113, 1, -20, 55, 0); --敵位置
setScaleKey( spep_4+114, 1, 1, 1); --敵サイズ
setMoveKey( spep_4+115, 1, -30, 60, 0); --敵位置
setMoveKey( spep_4+117, 1, -40, 65, 0); --敵位置
setScaleKey( spep_4+117, 1, 1.3, 1.3); --敵サイズ
setRotateKey( spep_4+118, 1, -50); --敵角度
setMoveKey( spep_4+118, 1, -40, 65, 0); --敵位置
setRotateKey( spep_4+119, 1, 20); --敵角度

changeAnime( spep_4+119, 1, 108); --敵モーション
setMoveKey( spep_4+119, 1, 65, 75, 0); --敵位置
setMoveKey( spep_4+130, 1, 260, -20, 0); --敵位置(敵が下がっていくシーン)
setScaleKey( spep_4+131, 1, 1.2, 1.2); --敵サイズ
setMoveKey( spep_4+131, 1, 240, 0, 0); --敵位置
setMoveKey( spep_4+132, 1, 240, 0, 0); --敵位置
setScaleKey( spep_4+132, 1, 1.2, 1.2); --敵サイズ
setScaleKey( spep_4+133, 1, 1, 1); --敵サイズ
setMoveKey( spep_4+133, 1, 250, 0, 0); --敵位置
setScaleKey( spep_4+134, 1, 1, 1); --敵サイズ
setMoveKey( spep_4+134, 1, 250, 0, 0); --敵位置
setScaleKey( spep_4+135, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+135, 1, 210, -30, 0); --敵位置
setScaleKey( spep_4+136, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+136, 1, 210, -30, 0); --敵位置
setScaleKey( spep_4+137, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+137, 1, 220, -40, 0); --敵位置
setScaleKey( spep_4+138, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+138, 1, 220, -40, 0); --敵位置
setScaleKey( spep_4+139, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+139, 1, 200, -20, 0); --敵位置
setScaleKey( spep_4+140, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+140, 1, 200, -20, 0); --敵位置
setScaleKey( spep_4+141, 1, 0.9, 0.9); --敵サイズ
setMoveKey( spep_4+141, 1, 220, -20, 0); --敵位置
setScaleKey( spep_4+176, 1, 0.7, 0.7); --敵サイズ
setMoveKey( spep_4+176, 1, 270, -10, 0); --敵位置

setDisp( spep_4+178, 1, 0); --敵非表示


-- ** 背景 ** --
entryFadeBg( spep_4, 0, 181, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4+17, 906, 26, 0x100, -1, 0, 0, 0);   -- 集中線4
setEffMoveKey( spep_4+17, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4+17, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4+17, shuchusen4, 255);
setEffRotateKey( spep_4+17, shuchusen4, 0);

shuchusen5 = entryEffectLife( spep_4+67, 906, 23, 0x100, -1, 0, 0, 0);   -- 集中線5
setEffMoveKey( spep_4+67, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_4+67, shuchusen5, 1.0, 1.0);
setEffAlphaKey( spep_4+67, shuchusen5, 255);
setEffRotateKey( spep_4+67, shuchusen5, 0);

shuchusen6 = entryEffectLife( spep_4+119, 906, 10, 0x100, -1, 0, 0, 0);   -- 集中線6
setEffMoveKey( spep_4+119, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_4+119, shuchusen6, 1.0, 1.0);
setEffAlphaKey( spep_4+119, shuchusen6, 255);
setEffRotateKey( spep_4+119, shuchusen6, 0);

-- ** エフェクト等 ** --
rassyu = entryEffect( spep_4, SP_12, 0x100, -1, 0, 0, 0); --ラッシュ
setEffMoveKey( spep_4, rassyu, 0, 0, 0);
setEffScaleKey( spep_4, rassyu, 1.0, 1.0);
setEffAlphaKey( spep_4, rassyu, 255);
setEffRotateKey( spep_4, rassyu, 0);

-- ** 流線(横) ** --
ryusen2 = entryEffectLife( spep_4, 920, 129, 0x80,  -1,  0,  0,  0); -- 流線2
setEffMoveKey( spep_4, ryusen2, 0, 0, 0);
setEffRotateKey( spep_4, ryusen2, 0);
setEffScaleKey( spep_4, ryusen2, 1, 1);
setEffAlphaKey( spep_4, ryusen2, 255);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_4+130, 924, 47, 0x80, -1, 0, -350, 0); -- 奥行き流線斜め
setEffMoveKey( spep_4+130, okuyukiryusennaname, -350, 150, 0);
setEffRotateKey( spep_4+130, okuyukiryusennaname, 15);
setEffScaleKey( spep_4+130, okuyukiryusennaname, 1.3, 1.3);
setEffAlphaKey( spep_4+130, okuyukiryusennaname, 255);

-- ** 音 ** --421
playSe( spep_4+5, SE_06); --426
playSe( spep_4+17, SE_07); --438

playSe( spep_4+51, SE_06); --472
playSe( spep_4+67, SE_08); --488

playSe( spep_4+103, SE_06); --524
playSe( spep_4+119, SE_09); --540

-- ** ホワイトフェード ** --
entryFade( spep_4+167, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


spep_5 = (spep_4+181);


------------------------------------------------------
-- オーラ溜 (602F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 77, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
auratame = entryEffect( spep_5, SP_05, 0x100, -1, 0, 0, 0); --正面オーラ溜め
setEffMoveKey( spep_5, auratame, 0, 0, 0);
setEffScaleKey( spep_5, auratame, -1.0, 1.0);
setEffAlphaKey( spep_5, auratame, 255);
setEffRotateKey( spep_5, auratame, 0);

-- ** 流線(横) ** --
ryusen3 = entryEffectLife( spep_5, 920, 36, 0x80,  -1,  0,  0,  0); -- 流線3
setEffMoveKey( spep_5, ryusen3, 0, 0, 0);
setEffRotateKey( spep_5, ryusen3, 0);
setEffScaleKey( spep_5, ryusen3, 1, 1);
setEffAlphaKey( spep_5, ryusen3, 255);

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_5+16, 906, 62, 0x100, -1, 0, 0, 0);   -- 集中線7
setEffMoveKey( spep_5+16, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_5+16, shuchusen7, 1.0, 1.0);
setEffAlphaKey( spep_5+16, shuchusen7, 255);
setEffRotateKey( spep_5+16, shuchusen7, 0);

-- ** 音 ** --
playSe( spep_5+2, SE_03);

-- ** ホワイトフェード ** --
entryFade( spep_5+67, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_6 = (spep_5+82);

------------------------------------------------------
-- 発射 (684F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 156, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
hassya = entryEffect( spep_6, SP_13, 0x100, -1, 0, 0, 0); --溜め～発射
setEffMoveKey( spep_6, hassya, 0, 0, 0);
setEffScaleKey( spep_6, hassya, 1.0, 1.0);
setEffAlphaKey( spep_6, hassya, 255);
setEffRotateKey( spep_6, hassya, 0);

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_6-1, 920, 27, 0x80,  -1,  0,  0,  0); -- 流線4
setEffMoveKey( spep_6-1, ryusen4, 0, 0, 0);
setEffRotateKey( spep_6-1, ryusen4, 45);
setEffScaleKey( spep_6-1, ryusen4, 1.7, 1.7); --途中で画面足りなくなるので調整してます
setEffAlphaKey( spep_6-1, ryusen4, 255);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_6+27, 906, 48, 0x100, -1, 0, 0, 0);   -- 集中線8
setEffMoveKey( spep_6+27, shuchusen8, 0, 0, 0);
setEffScaleKey( spep_6+27, shuchusen8, 1.0, 1.0);
setEffAlphaKey( spep_6+27, shuchusen8, 255);
setEffRotateKey( spep_6+27, shuchusen8, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_6+27, 921, 129, 0x80,  -1, 0, 0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_6+27, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_6+27, okuyukiryusennaname, 45);
setEffScaleKey( spep_6+27, okuyukiryusennaname, -1.7, 1.7);
setEffAlphaKey( spep_6+27, okuyukiryusennaname, 255);


-- 書き文字エントリー --
zuo = entryEffectLife( spep_6+27, 10012, 29, 0x100, -1, 0, 100, 320); -- ズオッ
setEffMoveKey( spep_6+27, zuo, 100, 320);
setEffMoveKey( spep_6+29, zuo, 100, 320);
setEffMoveKey( spep_6+30, zuo, 120, 300);
setEffMoveKey( spep_6+32, zuo, 120, 300);
setEffMoveKey( spep_6+33, zuo, 100, 320);
setEffMoveKey( spep_6+35, zuo, 100, 320);
setEffMoveKey( spep_6+36, zuo, 120, 300);
setEffMoveKey( spep_6+38, zuo, 120, 300);
setEffMoveKey( spep_6+39, zuo, 100, 320);
setEffMoveKey( spep_6+41, zuo, 100, 320);
setEffMoveKey( spep_6+42, zuo, 120, 300);
setEffMoveKey( spep_6+44, zuo, 120, 300);
setEffMoveKey( spep_6+45, zuo, 100, 320);
setEffMoveKey( spep_6+47, zuo, 100, 320);
setEffMoveKey( spep_6+48, zuo, 120, 300);
setEffMoveKey( spep_6+50, zuo, 120, 300);
setEffMoveKey( spep_6+51, zuo, 100, 320);
setEffMoveKey( spep_6+53, zuo, 100, 320);
setEffMoveKey( spep_6+54, zuo, 120, 300);
setEffMoveKey( spep_6+56, zuo, 120, 300);
setEffScaleKey( spep_6+27, zuo, 2, 2);
setEffRotateKey( spep_6+27, zuo, -20);

-- ** 音 ** --684
playSe( spep_6+3, SE_02);
playSe( spep_6+29, SE_10);

-- ** ホワイトフェード ** --
entryFade( spep_6+146, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_7 = (spep_6+160);

------------------------------------------------------
-- 迫る (845F)
------------------------------------------------------

-- ** キャラクター ** --
setDisp( spep_7, 1, 1); --敵表示

setMoveKey( spep_7-1, 1, 270, -10, 0); --敵位置
setRotateKey( spep_7-1, 1, 20); --敵角度※

changeAnime (spep_7, 1, 108); --敵モーション
setRotateKey( spep_7, 1, 0); --敵角度
setMoveKey( spep_7, 1, -450, 200, 0); --敵位置
setMoveKey( spep_7+6, 1, -20, 0, 0); --敵位置
setScaleKey( spep_7, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_7+6, 1, 1.2, 1.2); --敵サイズ
setScaleKey( spep_7+126, 1, 1.2, 1.2); --敵サイズ
setShakeChara( spep_7+6, 1, 100, 10); --敵揺れ
setDisp( spep_7+125, 1, 0); --敵表示

-- ** 背景 ** --
entryFadeBg( spep_7, 0, 126, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
semaru = entryEffect( spep_7+27, SP_14, 0x100, -1, 0, 0, 0); --迫る
setEffMoveKey( spep_7+27, semaru, 0, 0, 0);
setEffScaleKey( spep_7+27, semaru, 1.0, 1.0);
setEffAlphaKey( spep_7+27, semaru, 255);
setEffRotateKey( spep_7+27, semaru, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname2 = entryEffectLife( spep_7, 921, 126, 0x80,  -1, 0, 0,  0); -- 奥行き流線斜め2
setEffMoveKey( spep_7, okuyukiryusennaname2, 0, 0, 0);
setEffRotateKey( spep_7, okuyukiryusennaname2, 35);
setEffScaleKey( spep_7, okuyukiryusennaname2, 1.7, 1.7);
setEffAlphaKey( spep_7, okuyukiryusennaname2, 255);

-- ** 音 ** --845
playSe( spep_7+26, SE_10);

-- ** ホワイトフェード ** --
entryFade( spep_7+114, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_8 = (spep_7+127);

------------------------------------------------------
-- 爆発 (972F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatu = entryEffect( spep_8, SP_08, 0x100, -1, 0, 0, 0); --迫る
setEffMoveKey( spep_8, bakuhatu, 0, 0, 0);
setEffScaleKey( spep_8, bakuhatu, 1.1, 1.1);
setEffAlphaKey( spep_8, bakuhatu, 255);
setEffRotateKey( spep_8, bakuhatu, 0);

-- ** 音 ** --845
playSe( spep_8+1, SE_11);
playSe( spep_8+60, SE_12);


dealDamage( spep_8+68);
entryFade( spep_8+185, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_8+195);

end
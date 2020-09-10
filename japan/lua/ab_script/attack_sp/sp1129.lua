print ("[lua]sp1129");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


SE_01 = 1018; --カットイン＆飛んでくる
SE_02 = 1010; --突っ込みヒット＆棒ヒット
SE_03 = 1053; --飛んでいく
SE_04 = 1035; --カードカットイン
SE_05 = 1003; --シュッ
SE_06 = 1054; --割れる音
SE_07 = 1024; --爆破

SP_01 = 150824; --手前に突っ込む
SP_02 = 150825; --手前に突っ込む(敵用)
SP_03 = 150826; --
SP_04 = 150827; --
SP_05 = 150828; --
SP_06 = 150829; --


multi_frm = 2;

------------------------------------------------------
-- 手前に突っ込む
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示


-- ** 背景 ** --
entryFadeBg( 0, 0, 60, 0, 0, 0, 0, 180); -- ベース暗め　背景

-- ** エフェクト等 ** --
tukkomu = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( 0, tukkomu, 0, 0, 0);
setEffScaleKey( 0, tukkomu, 1.0, 1.0);
setEffAlphaKey( 0, tukkomu, 255);
setEffRotateKey( 0, tukkomu, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 0, 906, 28, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 0, shuchusen, 0, 0, 0);
setEffScaleKey( 0, shuchusen, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen, 255);
setEffRotateKey( 0, shuchusen, 0);

-- 書き文字エントリー --
zuo = entryEffectLife( 0, 10012, 42, 0x100, -1, 0, 100, 270); -- ズオッ
setEffMoveKey( 0, zuo, 100, 270);
setEffMoveKey( 12, zuo, 100, 270);
setEffMoveKey( 22, zuo, 140, 310);
setEffScaleKey( 0, zuo, 1.0, 1.0);
setEffScaleKey( 12, zuo, 2.6, 2.6);
setEffScaleKey( 22, zuo, 5, 5);
setEffRotateKey( 0, zuo, 30);
setEffRotateKey( 22, zuo, 30);
setEffAlphaKey( 0, zuo, 255);
setEffAlphaKey( 12, zuo, 255);
setEffAlphaKey( 22, zuo, 0);
setEffShake( 0, zuo, 200, 15);

-- ** ホワイトフェード ** --
entryFade( 30, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 1, SE_01);
playSe( 39, 1032);
playSe( 65, 1032);

spep_2 = 105;


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 25; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase( SP_dodge+10);

do return end
else end


------------------------------------------------------
-- カットイン(100F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** エフェクト等 ** --
kirisaki2 = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --ひっかき
setEffMoveKey( spep_2, kirisaki2, 0, 0, 0);
setEffScaleKey( spep_2, kirisaki2, 1.0, 1.0);
setEffAlphaKey( spep_2, kirisaki2, 255);
setEffRotateKey( spep_2, kirisaki2, 0);


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3
setEffMoveKey( 0, shuchusen2, 0, 0, 0);
setEffScaleKey( 0, shuchusen2, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen2, 255);
setEffRotateKey( 0, shuchusen2, 0);

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_2, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_2, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** 書き文字エントリー ** --
gogogo = entryEffectLife( spep_2+13, 190006, 73, 0x100, -1, 0, 0, 520); -- ゴゴゴゴゴ
setEffScaleKey( spep_2+13, gogogo, 0.7, 0.7);


-- ** 音 ** --
playSe( spep_2+5, 1018);

-- ** ホワイトフェード ** --
entryFade( spep_2+80, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_3 = spep_2+100;
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

speff3 = entryEffect( spep_3, 1507, 0x80, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff3, 1, 1);
setEffReplaceTexture( speff3, 2, 0); -- カード差し替え
setEffReplaceTexture( speff3, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_3, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

-- ** ホワイトフェード ** --
entryFade( spep_3+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3, SE_04);


spep_5 = spep_3+90;

------------------------------------------------------
-- 敵登場(F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景


-- ** エフェクト等 ** --
kirisaki5= entryEffect( spep_5, SP_05, 0x100, -1, 0, 0, 0); --ひっかき
setEffMoveKey( spep_5, kirisaki5, 0, 0, 0);
setEffScaleKey( spep_5, kirisaki5, 1.0, 1.0);
setEffAlphaKey( spep_5, kirisaki5, 255);
setEffRotateKey( spep_5, kirisaki5, 0);



-- ** キャラクター ** --
setDisp( spep_5+30, 1, 1); --敵表示
changeAnime( spep_5+30, 1, 104); --敵モーション
setScaleKey( spep_5, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_5+65, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_5+30, 1, 400, 0, 0); --敵位置
setMoveKey( spep_5+31, 1, 400, 0, 0); --敵位置
setMoveKey( spep_5+50, 1, 180, 0, 0); --敵位置
setMoveKey( spep_5+60, 1, 180, 0, 0); --敵位置
setDisp( spep_5+65, 1, 0); --敵非表示

-- ** 流線 ** --
ryusen5 = entryEffectLife( spep_5, 921, 80, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_5, ryusen5, 0, 0, 0);
setEffRotateKey( spep_5, ryusen5, 0);
setEffScaleKey( spep_5, ryusen5, 1.5, 1.5);
setEffAlphaKey( spep_5, ryusen5, 255);


-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 50, 0x100, -1, 0, 0, 0); -- 集中線3
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);

-- ** ホワイトフェード ** --
entryFade( spep_5+113, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-- ** 音 ** --
playSe( spep_5+5, 1030);
playSe( spep_5+60, 1032);

spep_7 = spep_5+120;

------------------------------------------------------
-- バリン(553F開始)
------------------------------------------------------


-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
--setDisp( spep_6, 1, 1);
--setDisp( spep_6, 0, 0); --味方非表示
--setMoveKey( spep_8-1, 0, 0, 0, 0); --味方位置
--setMoveKey(  spep_8, 0, 2000, 2000, 0);
setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 0.5, 0.5);
setRotateKey( spep_7-1, 1, 60);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_07);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_06);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示


-- ** 背景 ** --
entryFadeBg( 0, 0, 60, 0, 0, 0, 0, 180); -- ベース暗め　背景

-- ** エフェクト等 ** --
tukkomu = entryEffect( 0, SP_02, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( 0, tukkomu, 0, 0, 0);
setEffScaleKey( 0, tukkomu, 1.0, 1.0);
setEffAlphaKey( 0, tukkomu, 255);
setEffRotateKey( 0, tukkomu, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( 0, 906, 28, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( 0, shuchusen, 0, 0, 0);
setEffScaleKey( 0, shuchusen, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen, 255);
setEffRotateKey( 0, shuchusen, 0);

-- 書き文字エントリー --
zuo = entryEffectLife( 0, 10012, 42, 0x100, -1, 0, 100, 270); -- ズオッ
setEffMoveKey( 0, zuo, 100, 270);
setEffMoveKey( 12, zuo, 100, 270);
setEffMoveKey( 22, zuo, 140, 310);
setEffScaleKey( 0, zuo, 1.0, 1.0);
setEffScaleKey( 12, zuo, 2.6, 2.6);
setEffScaleKey( 22, zuo, 5, 5);
setEffRotateKey( 0, zuo, 30);
setEffRotateKey( 22, zuo, 30);
setEffAlphaKey( 0, zuo, 255);
setEffAlphaKey( 12, zuo, 255);
setEffAlphaKey( 22, zuo, 0);
setEffShake( 0, zuo, 200, 15);

-- ** ホワイトフェード ** --
entryFade( 30, 3, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( 1, SE_01);
playSe( 39, 1032);
playSe( 65, 1032);

spep_2 = 105;


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 25; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

endPhase( SP_dodge+10);

do return end
else end


------------------------------------------------------
-- カットイン(100F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** エフェクト等 ** --
kirisaki2 = entryEffect( spep_2, SP_04, 0x100, -1, 0, 0, 0); --ひっかき
setEffMoveKey( spep_2, kirisaki2, 0, 0, 0);
setEffScaleKey( spep_2, kirisaki2, 1.0, 1.0);
setEffAlphaKey( spep_2, kirisaki2, 255);
setEffRotateKey( spep_2, kirisaki2, 0);


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3
setEffMoveKey( 0, shuchusen2, 0, 0, 0);
setEffScaleKey( 0, shuchusen2, 1.0, 1.0);
setEffAlphaKey( 0, shuchusen2, 255);
setEffRotateKey( 0, shuchusen2, 0);
--[[
-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_2, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_2, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え
]]--
-- ** 書き文字エントリー ** --
gogogo = entryEffectLife( spep_2+13, 190006, 73, 0x100, -1, 0, 0, 490); -- ゴゴゴゴゴ
setEffScaleKey( spep_2+13, gogogo, -0.7, 0.7);


-- ** 音 ** --
playSe( spep_2+5, 1018);

-- ** ホワイトフェード ** --
entryFade( spep_2+80, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_3 = spep_2+100;
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

speff3 = entryEffect( spep_3, 1507, 0x80, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff3, 1, 1);
setEffReplaceTexture( speff3, 2, 0); -- カード差し替え
setEffReplaceTexture( speff3, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_3, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

-- ** ホワイトフェード ** --
entryFade( spep_3+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3, SE_04);


spep_5 = spep_3+90;

------------------------------------------------------
-- 敵登場(F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_5, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景


-- ** エフェクト等 ** --
kirisaki5= entryEffect( spep_5, SP_06, 0x100, -1, 0, 0, 0); --ひっかき
setEffMoveKey( spep_5, kirisaki5, 0, 0, 0);
setEffScaleKey( spep_5, kirisaki5, 1.0, 1.0);
setEffAlphaKey( spep_5, kirisaki5, 255);
setEffRotateKey( spep_5, kirisaki5, 0);



-- ** キャラクター ** --
setDisp( spep_5+30, 1, 1); --敵表示
changeAnime( spep_5+30, 1, 104); --敵モーション
setScaleKey( spep_5, 1, 1.5, 1.5); --敵サイズ
setScaleKey( spep_5+65, 1, 1.5, 1.5); --敵サイズ
setMoveKey( spep_5+30, 1, 400, 0, 0); --敵位置
setMoveKey( spep_5+31, 1, 400, 0, 0); --敵位置
setMoveKey( spep_5+50, 1, 180, 0, 0); --敵位置
setMoveKey( spep_5+60, 1, 180, 0, 0); --敵位置
setDisp( spep_5+65, 1, 0); --敵非表示

-- ** 流線 ** --
ryusen5 = entryEffectLife( spep_5, 921, 80, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_5, ryusen5, 0, 0, 0);
setEffRotateKey( spep_5, ryusen5, 0);
setEffScaleKey( spep_5, ryusen5, 1.5, 1.5);
setEffAlphaKey( spep_5, ryusen5, 255);


-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 50, 0x100, -1, 0, 0, 0); -- 集中線3
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);

-- ** ホワイトフェード ** --
entryFade( spep_5+113, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-- ** 音 ** --
playSe( spep_5+5, 1030);
playSe( spep_5+60, 1032);

spep_7 = spep_5+120;

------------------------------------------------------
-- バリン(553F開始)
------------------------------------------------------


-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
--setDisp( spep_6, 1, 1);
--setDisp( spep_6, 0, 0); --味方非表示
--setMoveKey( spep_8-1, 0, 0, 0, 0); --味方位置
--setMoveKey(  spep_8, 0, 2000, 2000, 0);
setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 0.5, 0.5);
setRotateKey( spep_7-1, 1, 60);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_07);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_06);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);

end
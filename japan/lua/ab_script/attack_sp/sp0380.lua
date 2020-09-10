print ("[lua]sp0380");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1018; --溜め
SE_03 = 1035; --カットイン＆気溜め
SE_04 = 1016; --ビーム音
SE_05 = 1017; --ビームあたり音
SE_06 = 1054; --割れる音
SE_07 = 1001; --ズドドド

SP_01 = 150615; --ビーム溜め
SP_02 = 150616; --発射
SP_03 = 150617; --連打

SP_04 = 150646; --ビーム溜め(敵側)
SP_05 = 150647; --発射(敵側)
SP_06 = 150648; --連打(敵側)


multi_frm = 2;


------------------------------------------------------
-- 気溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
setDisp( 63, 0, 0); --味方表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -20, 0); --味方位置
setMoveKey( 1, 0, 0, -20, 0); --味方位置
setMoveKey( 2, 0, 0, -20, 0); --味方位置
setMoveKey( 3, 0, 0, -20, 0); --味方位置
setMoveKey( 4, 0, 0, -20, 0); --味方位置
setMoveKey( 5, 0, 0, -20, 0); --味方位置
setMoveKey( 62, 0, 0, -20, 0); --味方位置
-------------------------------
setScaleKey( 0, 0, 1.7, 1.7);
setScaleKey( 1, 0, 1.7, 1.7);
setScaleKey( 2, 0, 1.7, 1.7);
setScaleKey( 3, 0, 1.7, 1.7);
setScaleKey( 4, 0, 1.7, 1.7);
setScaleKey( 5, 0, 1.7, 1.7);
setScaleKey( 25, 0, 1.7, 1.7);
setScaleKey( 26, 0, 2, 2);
setScaleKey( 62, 0, 2, 2);

changeAnime( 26, 0, 17); --味方立ちポーズ

-- ** エフェクト等 ** --
entryEffect( 26, 1501, 0x80, -1, 0, 0, 0);    -- eff_002
entryEffect( 26, 1500, 0, -1, 0, 0, 0);    -- eff_001

aura = entryEffectLife( 26, 311, 35, 0x40, 0, 1, 0, -30); -- オーラ
setEffScaleKey( 26, aura, 1.5, 1.5);
setShakeChara( 26, 0, 87, 10);

-- ** オーラ&集中線エフェクト ** --
entryEffectLife( 26, 1503, 35, 0x80, -1, 0, 0, 0); -- eff_004 (気)
entryEffectLife( 26, 1502, 35, 0x80, -1, 0, 0, 0); -- eff_003 (気)

-- ** 書き文字エントリー ** --
zuzun = entryEffectLife( 26, 10013, 35, 0, -1, 0, 0, 0); -- ズズンッ
setEffMoveKey( 26, zuzun, 30, 200);
setEffMoveKey( 30, zuzun, 30, 350);
setEffScaleKey( 26, zuzun, 0.5, 0.5);
setEffScaleKey( 30, zuzun, 2.5, 2.5);
setEffScaleKey( 61, zuzun, 2.5, 2.5);
setEffAlphaKey( 26, zuzun, 255);
setEffShake( 26, zuzun, 35, 7);

-- ** ホワイトフェード ** --
entryFade( 55, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( 25, SE_01);

spep_1 = 64;

------------------------------------------------------
-- ビーム溜め(64F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 87, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_1, SP_01, 87, 0x100, -1, 0, 0, 0); --気溜め
setEffMoveKey( spep_1, kidame, 0, 0, 0);
setEffScaleKey( spep_1, kidame, 1.0, 1.0);
setEffAlphaKey( spep_1, kidame, 255);
setEffRotateKey( spep_1, kidame, 0);

-- ** 細い集中線 ** --
entryEffectLife( spep_1, 1502, 87, 0x100, -1, 0, 0, 0); -- eff_003 (気)

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_1, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_1, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** 書き文字エントリー ** --
gogogo = entryEffectLife( spep_1+14, 190006, 73, 0, -1, 0, -110, 480); -- ゴゴゴゴゴ
setEffScaleKey( spep_1+14, gogogo, 0.7, 0.7);

-- ** ホワイトフェード ** --
entryFade( spep_1+81, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_1+15, SE_02);

spep_2 = ( spep_1+90);

------------------------------------------------------
-- カードカットイン(154F)
------------------------------------------------------

speff2 = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え


-- ** 集中線 ** --
entryEffectLife( spep_2, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_03);

spep_3 = ( spep_2+92);

------------------------------------------------------
-- 発射(246F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 89, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
beam1 = entryEffect( spep_3, SP_02, 0x100, -1, 0, 0, 0); --発射
setEffMoveKey( spep_3, beam1, 0, 0, 0);
setEffScaleKey( spep_3, beam1, 1.0, 1.0);
setEffAlphaKey( spep_3, beam1, 255);
setEffRotateKey( spep_3, beam1, 0);

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_3, 920, 89, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_3, ryusen, 0, 0, 0);
setEffRotateKey( spep_3, ryusen, -33);
setEffScaleKey( spep_3, ryusen, 1.7, 1.7);
setEffAlphaKey( spep_3, ryusen, 255);

-- ** 技名出し ** --
spname = entryEffectLife( spep_3, 1508, 48, 0x100, -1, 0, 0, 0); -- 技文字
setEffReplaceTexture( spname, 7, 4); -- 技名テクスチャ差し替え
setEffMoveKey( spep_3, spname, 0, 0, 0);
setEffRotateKey( spep_3, spname, 0);
setEffScaleKey( spep_3, spname, 1.0, 1.0);
setEffAlphaKey( spep_3, spname, 255);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3, 906, 89, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3, shuchusen, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen, 1, 1);
setEffAlphaKey( spep_3, shuchusen, 255);
setEffRotateKey( spep_3, shuchusen, 0);

-- ** 書き文字エントリー ** --
zuo = entryEffectLife( spep_3+17, 10012, 89, 0x100, -1, 0, 0, 0);    -- ズオッ
setEffMoveKey( spep_3+17,zuo, 50, 250);
setEffMoveKey( spep_3+43,zuo, -70, 350);
setEffScaleKey( spep_3+17, zuo, 0.5, 0.5);
setEffScaleKey( spep_3+37, zuo, 1.6, 1.6);
setEffAlphaKey( spep_3+17, zuo, 255);
setEffAlphaKey( spep_3+37, zuo, 255);
setEffAlphaKey( spep_3+43, zuo, 0);

-- ** 音 ** --
SeID = playSe( spep_3+17, SE_04);

-- ** ホワイトフェード ** --
entryFade( spep_3+81, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_4 = ( spep_3+90);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 270; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( spep_3+17, SeID, 1);

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
-- 連打(336F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 127, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
beam2 = entryEffect( spep_4, SP_03, 0x100, -1, 0, 0, 0); --発射
setEffMoveKey( spep_4, beam2, 0, 0, 0);
setEffScaleKey( spep_4, beam2, 1.0, 1.0);
setEffAlphaKey( spep_4, beam2, 255);
setEffRotateKey( spep_4, beam2, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_4, 924, 127, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_4, okuyukiryusennaname, -280, 150, 0);
setEffRotateKey( spep_4, okuyukiryusennaname, 15);
setEffScaleKey( spep_4, okuyukiryusennaname, 1.2, 1.2);
setEffAlphaKey( spep_4, okuyukiryusennaname, 255);

-- ** 書き文字エントリー ** --
zudodo = entryEffectLife( spep_4, 10014, 127, 0x100, -1, 0, 0, 250);    -- ズドド
setEffShake( spep_4, zudodo, 127, 12);
setEffScaleKey( spep_4, zudodo, 1.5, 1.5);
setEffRotateKey( spep_4, zudodo, 50);
setEffAlphaKey( spep_4, zudodo, 255);

-- ** キャラクター ** --
setDisp( spep_4, 1, 1); --敵表示
changeAnime( spep_4, 1, 106); --敵モーション
setRotateKey( spep_4, 1, -10); --敵角度
setRotateKey( spep_4+127, 1, -10); --敵角度(角度固定)
setScaleKey( spep_4, 1, 1.3, 1.3); --敵サイズ
setMoveKey( spep_4, 1, 180, 0, 0); --敵位置
setMoveKey( spep_4+15, 1, 210, -10, 0); --敵位置
setMoveKey( spep_4+127, 1, 210, -10, 0); --敵位置(位置固定)
setScaleKey( spep_4+15, 1, 0.5, 0.5); --敵サイズ(サイズ固定)
setScaleKey( spep_4+127, 1, 0.5, 0.5); --敵サイズ
setShakeChara( spep_4, 1, 127, 15);

-- ** 音 ** --
playSe( spep_4+4, SE_04); --340
--playSe( spep_4+12, SE_04); --352
playSe( spep_4+23 , SE_04); --363
--playSe( spep_4+28 , SE_05); --368(仮)
playSe( spep_4+33 , SE_04); --373
--playSe( spep_4+38 , SE_05); --378(仮)
playSe( spep_4+43 , SE_04); --383
--playSe( spep_4+48 , SE_05); --388(仮)
playSe( spep_4+53 , SE_04); --393
--playSe( spep_4+58 , SE_05); --398(仮)
playSe( spep_4+63 , SE_04); --403
--playSe( spep_4+68 , SE_05); --408(仮)
--playSe( spep_4+73 , SE_04); --413
--v4.11調整
playSe( spep_4+78 , SE_05); --418(仮)
setSeVolume(spep_4+78,SE_05,90);
--playSe( spep_4+83 , SE_04); --423
playSe( spep_4+88 , SE_05); --428(仮)
setSeVolume(spep_4+88,SE_05,85);
--playSe( spep_4+93 , SE_04); --433
playSe( spep_4+98 , SE_05); --438(仮)
setSeVolume(spep_4+98,SE_05,70);
--playSe( spep_4+103 , SE_04); --443
playSe( spep_4+108 , SE_05); --448(仮)
setSeVolume(spep_4+108,SE_05,70);
--playSe( spep_4+113 , SE_04); --453

-- ** ホワイトフェード ** --
entryFade( spep_4+121, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_5 = ( spep_4+130);

------------------------------------------------------
-- 爆発 (466F)
------------------------------------------------------

-- ** 敵キャラの動き ** --
setDisp( spep_5-1, 1, 1);
setRotateKey( spep_5-1, 1, 0);
setMoveKey(  spep_5-1, 1, 100, 0, 0);
setScaleKey( spep_5-1, 1, 1, 1);
setMoveKey(  spep_5, 1, 0, 0, 128);
setScaleKey( spep_5, 1, 0.1, 0.1);
changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_5+8, SE_06);

setMoveKey( spep_5+8, 1, 0, 0, 128); --478
setMoveKey( spep_5+15, 1, -60, -200, -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake( spep_5+7, 6, 15);
setShake( spep_5+13, 15, 10);

setRotateKey( spep_5, 1, 30 );
setRotateKey( spep_5+2, 1, 80 );
setRotateKey( spep_5+4, 1, 120 );
setRotateKey( spep_5+6, 1, 160 );
setRotateKey( spep_5+8, 1, 200 );
setRotateKey( spep_5+10, 1, 260 );
setRotateKey( spep_5+12, 1, 320 );
setRotateKey( spep_5+14, 1, 0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ga = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ga, 30, 10);
setEffRotateKey( spep_5+15, ga, -40);
setEffScaleKey( spep_5+15, ga, 4.0, 4.0);
setEffScaleKey( spep_5+16, ga, 2.0, 2.0);
setEffScaleKey( spep_5+17, ga, 2.6, 2.6);
setEffScaleKey( spep_5+18, ga, 4.0, 4.0);
setEffScaleKey( spep_5+19, ga, 2.6, 2.6);
setEffScaleKey( spep_5+20, ga, 3.8, 3.8);
setEffScaleKey( spep_5+110, ga, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ga, 255);
setEffAlphaKey( spep_5+105, ga, 255);
setEffAlphaKey( spep_5+115, ga, 0);

playSe( spep_5+3, SE_07);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_5+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_5+16);
entryFade( spep_5+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+110);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め
------------------------------------------------------

setVisibleUI(0, 0);

setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
setDisp( 63, 0, 0); --味方表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -20, 0); --味方位置
setMoveKey( 1, 0, 0, -20, 0); --味方位置
setMoveKey( 2, 0, 0, -20, 0); --味方位置
setMoveKey( 3, 0, 0, -20, 0); --味方位置
setMoveKey( 4, 0, 0, -20, 0); --味方位置
setMoveKey( 5, 0, 0, -20, 0); --味方位置
setMoveKey( 62, 0, 0, -20, 0); --味方位置
-------------------------------
setScaleKey( 0, 0, 1.7, 1.7);
setScaleKey( 1, 0, 1.7, 1.7);
setScaleKey( 2, 0, 1.7, 1.7);
setScaleKey( 3, 0, 1.7, 1.7);
setScaleKey( 4, 0, 1.7, 1.7);
setScaleKey( 5, 0, 1.7, 1.7);
setScaleKey( 25, 0, 1.7, 1.7);
setScaleKey( 26, 0, 2, 2);
setScaleKey( 62, 0, 2, 2);

changeAnime( 26, 0, 17); --味方立ちポーズ

-- ** エフェクト等 ** --
entryEffect( 26, 1501, 0x80, -1, 0, 0, 0);    -- eff_002
entryEffect( 26, 1500, 0, -1, 0, 0, 0);    -- eff_001

aura = entryEffectLife( 26, 311, 35, 0x40, 0, 1, 0, -30); -- オーラ
setEffScaleKey( 26, aura, 1.5, 1.5);
setShakeChara( 26, 0, 87, 10);

-- ** オーラ&集中線エフェクト ** --
entryEffectLife( 26, 1503, 35, 0x80, -1, 0, 0, 0); -- eff_004 (気)
entryEffectLife( 26, 1502, 35, 0x80, -1, 0, 0, 0); -- eff_003 (気)

-- ** 書き文字エントリー ** --
zuzun = entryEffectLife( 26, 10013, 35, 0, -1, 0, 0, 0); -- ズズンッ
setEffMoveKey( 26, zuzun, 30, 200);
setEffMoveKey( 30, zuzun, 30, 350);
setEffScaleKey( 26, zuzun, 0.5, 0.5);
setEffScaleKey( 30, zuzun, 2.5, 2.5);
setEffScaleKey( 61, zuzun, 2.5, 2.5);
setEffAlphaKey( 26, zuzun, 255);
setEffShake( 26, zuzun, 35, 7);

-- ** ホワイトフェード ** --
entryFade( 55, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( 25, SE_01);

spep_1 = 64;

------------------------------------------------------
-- ビーム溜め(64F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 87, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_1, SP_04, 87, 0x100, -1, 0, 0, 0); --気溜め
setEffMoveKey( spep_1, kidame, 0, 0, 0);
setEffScaleKey( spep_1, kidame, 1.0, 1.0);
setEffAlphaKey( spep_1, kidame, 255);
setEffRotateKey( spep_1, kidame, 0);

-- ** 細い集中線 ** --
entryEffectLife( spep_1, 1502, 87, 0x100, -1, 0, 0, 0); -- eff_003 (気)


--[[
-- ** 顔＆セリフカットイン ** --
speff = entryEffect( spep_1, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( spep_1, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え
]]--

-- ** 書き文字エントリー ** --
gogogo = entryEffectLife( spep_1+14, 190006, 73, 0, -1, 0, 0, 480); -- ゴゴゴゴゴ
setEffScaleKey( spep_1+14, gogogo, -0.7, 0.7);

-- ** ホワイトフェード ** --
entryFade( spep_1+81, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_1+15, SE_02);

spep_2 = ( spep_1+90);

------------------------------------------------------
-- カードカットイン(154F)
------------------------------------------------------

speff2 = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_2, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_03);

spep_3 = ( spep_2+92);

------------------------------------------------------
-- 発射(246F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 89, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
beam1 = entryEffect( spep_3, SP_05, 0x100, -1, 0, 0, 0); --発射
setEffMoveKey( spep_3, beam1, 0, 0, 0);
setEffScaleKey( spep_3, beam1, 1.0, 1.0);
setEffAlphaKey( spep_3, beam1, 255);
setEffRotateKey( spep_3, beam1, 0);

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_3, 920, 89, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_3, ryusen, 0, 0, 0);
setEffRotateKey( spep_3, ryusen, -33);
setEffScaleKey( spep_3, ryusen, 1.7, 1.7);
setEffAlphaKey( spep_3, ryusen, 255);

-- ** 技名出し ** --
spname = entryEffectLife( spep_3, 1508, 48, 0x100, -1, 0, 0, 0); -- 技文字
setEffReplaceTexture( spname, 7, 4); -- 技名テクスチャ差し替え
setEffMoveKey( spep_3, spname, 0, 0, 0);
setEffRotateKey( spep_3, spname, 0);
setEffScaleKey( spep_3, spname, 1.0, 1.0);
setEffAlphaKey( spep_3, spname, 255);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3, 906, 89, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3, shuchusen, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen, 1, 1);
setEffAlphaKey( spep_3, shuchusen, 255);
setEffRotateKey( spep_3, shuchusen, 0);

-- ** 書き文字エントリー ** --
zuo = entryEffectLife( spep_3+17, 10012, 89, 0x100, -1, 0, 0, 0);    -- ズオッ
setEffMoveKey( spep_3+17,zuo, 50, 250);
setEffMoveKey( spep_3+43,zuo, -70, 350);
setEffScaleKey( spep_3+17, zuo, 0.5, 0.5);
setEffScaleKey( spep_3+37, zuo, 1.6, 1.6);
setEffAlphaKey( spep_3+17, zuo, 255);
setEffAlphaKey( spep_3+37, zuo, 255);
setEffAlphaKey( spep_3+43, zuo, 0);

-- ** 音 ** --
SeID = playSe( spep_3+17, SE_04);

-- ** ホワイトフェード ** --
entryFade( spep_3+81, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_4 = ( spep_3+90);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 270; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( spep_3+17, SeID, 1);

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
-- 連打(336F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 127, 0, 0, 0, 0, 200); -- ベース暗め　背景

-- ** エフェクト等 ** --
beam2 = entryEffect( spep_4, SP_06, 0x100, -1, 0, 0, 0); --発射
setEffMoveKey( spep_4, beam2, 0, 0, 0);
setEffScaleKey( spep_4, beam2, 1.0, 1.0);
setEffAlphaKey( spep_4, beam2, 255);
setEffRotateKey( spep_4, beam2, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_4, 924, 127, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_4, okuyukiryusennaname, -280, 150, 0);
setEffRotateKey( spep_4, okuyukiryusennaname, 15);
setEffScaleKey( spep_4, okuyukiryusennaname, 1.2, 1.2);
setEffAlphaKey( spep_4, okuyukiryusennaname, 255);

-- ** 書き文字エントリー ** --
zudodo = entryEffectLife( spep_4, 10014, 127, 0x100, -1, 0, 0, 250);    -- ズドド
setEffShake( spep_4, zudodo, 127, 12);
setEffScaleKey( spep_4, zudodo, 1.5, 1.5);
setEffRotateKey( spep_4, zudodo, -10);
setEffAlphaKey( spep_4, zudodo, 255);

-- ** キャラクター ** --
setDisp( spep_4, 1, 1); --敵表示
changeAnime( spep_4, 1, 106); --敵モーション
setRotateKey( spep_4, 1, -10); --敵角度
setRotateKey( spep_4+127, 1, -10); --敵角度(角度固定)
setScaleKey( spep_4, 1, 1.3, 1.3); --敵サイズ
setMoveKey( spep_4, 1, 180, 0, 0); --敵位置
setMoveKey( spep_4+15, 1, 230, -10, 0); --敵位置
setMoveKey( spep_4+127, 1, 230, -10, 0); --敵位置(位置固定)
setScaleKey( spep_4+15, 1, 0.5, 0.5); --敵サイズ(サイズ固定)
setScaleKey( spep_4+127, 1, 0.5, 0.5); --敵サイズ
setShakeChara( spep_4, 1, 127, 15);

-- ** 音 ** --
playSe( spep_4+4, SE_04); --340
--playSe( spep_4+12, SE_04); --352
playSe( spep_4+23 , SE_04); --363
--playSe( spep_4+28 , SE_05); --368(仮)
playSe( spep_4+33 , SE_04); --373
--playSe( spep_4+38 , SE_05); --378(仮)
playSe( spep_4+43 , SE_04); --383
--playSe( spep_4+48 , SE_05); --388(仮)
playSe( spep_4+53 , SE_04); --393
--playSe( spep_4+58 , SE_05); --398(仮)
playSe( spep_4+63 , SE_04); --403
--playSe( spep_4+68 , SE_05); --408(仮)
--playSe( spep_4+73 , SE_04); --413
--v4.11調整
playSe( spep_4+78 , SE_05); --418(仮)
setSeVolume(spep_4+78,SE_05,90);
--playSe( spep_4+83 , SE_04); --423
playSe( spep_4+88 , SE_05); --428(仮)
setSeVolume(spep_4+88,SE_05,85);
--playSe( spep_4+93 , SE_04); --433
playSe( spep_4+98 , SE_05); --438(仮)
setSeVolume(spep_4+98,SE_05,70);
--playSe( spep_4+103 , SE_04); --443
playSe( spep_4+108 , SE_05); --448(仮)
setSeVolume(spep_4+108,SE_05,70);
--playSe( spep_4+113 , SE_04); --453

-- ** ホワイトフェード ** --
entryFade( spep_4+121, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

spep_5 = ( spep_4+130);

------------------------------------------------------
-- 爆発 (466F)
------------------------------------------------------

-- ** 敵キャラの動き ** --
setDisp( spep_5-1, 1, 1);
setRotateKey( spep_5-1, 1, 0);
setMoveKey(  spep_5-1, 1, 100, 0, 0);
setScaleKey( spep_5-1, 1, 1, 1);
setMoveKey(  spep_5, 1, 0, 0, 128);
setScaleKey( spep_5, 1, 0.1, 0.1);
changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_5+8, SE_06);

setMoveKey( spep_5+8, 1, 0, 0, 128); --478
setMoveKey( spep_5+15, 1, -60, -200, -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake( spep_5+7, 6, 15);
setShake( spep_5+13, 15, 10);

setRotateKey( spep_5, 1, 30 );
setRotateKey( spep_5+2, 1, 80 );
setRotateKey( spep_5+4, 1, 120 );
setRotateKey( spep_5+6, 1, 160 );
setRotateKey( spep_5+8, 1, 200 );
setRotateKey( spep_5+10, 1, 260 );
setRotateKey( spep_5+12, 1, 320 );
setRotateKey( spep_5+14, 1, 0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ga = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ga, 30, 10);
setEffRotateKey( spep_5+15, ga, -40);
setEffScaleKey( spep_5+15, ga, 4.0, 4.0);
setEffScaleKey( spep_5+16, ga, 2.0, 2.0);
setEffScaleKey( spep_5+17, ga, 2.6, 2.6);
setEffScaleKey( spep_5+18, ga, 4.0, 4.0);
setEffScaleKey( spep_5+19, ga, 2.6, 2.6);
setEffScaleKey( spep_5+20, ga, 3.8, 3.8);
setEffScaleKey( spep_5+110, ga, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ga, 255);
setEffAlphaKey( spep_5+105, ga, 255);
setEffAlphaKey( spep_5+115, ga, 0);

playSe( spep_5+3, SE_07);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_5+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_5+16);
entryFade( spep_5+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+110);

end
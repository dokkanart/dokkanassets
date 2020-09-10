--sp1152 孫悟空(身勝手の極意“兆”) 未完成の極意

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

--味方側
SP_01 = 151386;--敵に突っ込む〜バク転
SP_02 = 151387;--連撃
SP_03 = 151388;--構え
SP_04 = 151389;--放つ
SP_05 = 151390;--着弾
SP_06 = 151391;--手前にパンチ
SP_07 = 151392;--パンチ着弾　


--敵側は味方側に1eをつけてます
SP_01e = 151393;--敵に突っ込む〜バク転
SP_02e = 151394;--連撃
SP_03e = 151395;--構え
SP_04e = 151396;--放つ
SP_05 = 151390;--着弾
SP_06e = 151391;--手前にパンチ
SP_07 = 151392;--パンチ着弾　


multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 101);
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   0,   1,    660, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setMoveKey(   1,   1,    660, 0,   0);
setMoveKey(   2,   0,    0, 0,   0);
setMoveKey(   2,   1,    660, 0,   0);
setMoveKey(   3,   0,    0, 0,   0);
setMoveKey(   3,   1,    660, 0,   0);

setScaleKey(   1,   0, 1.4, 1.4);
setScaleKey(   1,   1, 1.4, 1.4);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 敵に突っ込む〜バク転(200F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;


-- ** 背景 ** --
entryFadeBg( spep_0, 0, 200, 0, 0, 0, 0, 200); -- ベース暗め　背景
entryFadeBg( spep_0+95, 55, 450, 0, 10, 10, 10, 200);          -- ベース暗め　背景
-- ** エフェクト等 ** --
kidame = entryEffect( spep_0, SP_01, 0, -1, 0, 0, 0);   --気溜め１　19f
setEffScaleKey( spep_0, kidame, 1.0, 1.0);
--setEffScaleKey( spep_0+20, kidame, 0.0, 0.0);
--setEffScaleKey( spep_0+21, kidame, 0.0, 0.0);
setEffScaleKey( spep_0+200, kidame, 1.0, 1.0);
setEffAlphaKey( spep_0, kidame, 255);

setDisp( spep_0, 1, 1);
changeAnime( spep_0+60, 1, 101);
changeAnime( spep_0+98, 1, 111);
--pauseChara(spep_0+95, 9);
changeAnime( spep_0+100, 1, 109);

setMoveKey(   spep_0+50,   1,    660, 0,   0);
setMoveKey(   spep_0+80,   1,    250, 0,   0);
setMoveKey(   spep_0+200,   1,    100, 0,   0);

setScaleKey(   spep_0,   1, 1.4, 1.4);
setScaleKey(   spep_0+200,   1, 1.4, 1.4);
setRotateKey( spep_0,   1, 0);
setRotateKey( spep_0+99,   1, 0);
setRotateKey( spep_0+100,   1, -10);
setRotateKey( spep_0+200,   1, -10);
-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_0+50, 920, 200, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_0+50, ryusen, 1.8, 1.8);
setEffRotateKey( spep_0+50, ryusen, 0);
setEffAlphaKey( spep_0+50, ryusen, 255);
setEffAlphaKey( spep_0+95, ryusen, 255);
setEffAlphaKey( spep_0+150, ryusen, 0);
setEffAlphaKey( spep_0+200, ryusen, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0+20, 906, 180, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_0+20, shuchusen, 0, 0, 0);
setEffScaleKey( spep_0+20, shuchusen, 1.5, 1.5);
setEffAlphaKey( spep_0+20, shuchusen, 255);
setEffRotateKey( spep_0+20, shuchusen, 0);

entryFade( spep_0+45, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0+102, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 210);     -- white fade



-- ** 音 ** --
playSe( spep_0+24, 43);
playSe( spep_0+52, 1018);
playSe( spep_0+103, 1003);


-- ** 次の準備 ** --
spep_1 = spep_0+196;
--entryFade( spep_1-4, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 250, 0, 10, 10, 10, 200); -- ベース暗め　背景

------------------------------------------------------
-- 連撃(250F)
------------------------------------------------------
-- ** エフェクト等 ** --
kidame_1 = entryEffect( spep_1-1, SP_02, 0, -1, 0, 0, 0);   --気溜め２　50f
setEffScaleKey( spep_1-1, kidame_1, 1, 1);
setEffAlphaKey( spep_1-1, kidame_1, 255);

changeAnime( spep_1+6, 1, 108);
changeAnime( spep_1+39, 1, 106);
changeAnime( spep_1+71, 1, 108);
changeAnime( spep_1+115, 1, 106);

setMoveKey(  spep_1+6,  1, 100, 0, 0);
setMoveKey(  spep_1+38,  1, 150, 150, 0);

setMoveKey(  spep_1+39,  1, 0, 90, 0);
setMoveKey(  spep_1+70,  1, -30, 40, 0);

setMoveKey(  spep_1+71,  1, -50, 50, 0);
setMoveKey(  spep_1+98,  1, 100, 30, 0);

setMoveKey(  spep_1+118,  1, 20, 80, 0);
setMoveKey(  spep_1+209,  1, 20, 100, 0);

setScaleKey( spep_1,   1, 1.4, 1.4);

setRotateKey( spep_1+38,   1, -10);
setRotateKey( spep_1+39,   1, -80);
setRotateKey( spep_1+70,   1, -80);
setRotateKey( spep_1+71,   1, 10);
setRotateKey( spep_1+114,   1, 10);
setRotateKey( spep_1+115,   1, -45);
setRotateKey( spep_1+209,   1, -45);

changeAnime( spep_1+210, 1, 108);
setMoveKey(  spep_1+220,   1,    50, 0,   0);
setMoveKey(  spep_1+240,   1,    550, -100,   0);

setScaleKey(   spep_1+211,   1, 1.4, 1.4);
setScaleKey(   spep_1+250,   1, 0.5, 0.5);
setRotateKey( spep_1+210,   1, -10);
setRotateKey( spep_1+250,   1, -10);
setShakeChara( spep_1+7, 1, 243, 20);
setDisp( spep_1+250, 1, 0);

-- ** 流線(横) ** --
ryusen1 = entryEffectLife( spep_1, 920, 213, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_1, ryusen1, 1.8, 1.8);
setEffRotateKey( spep_1, ryusen1, 0);
setEffAlphaKey( spep_1, ryusen1, 0);
setEffAlphaKey( spep_1+5, ryusen1, 255);
setEffAlphaKey( spep_1+213, ryusen1, 255);


-- ** 流線(横) ** --
ryusen1 = entryEffectLife( spep_1+214, 921, 36, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_1+214, ryusen1, 1.8, 1.8);
setEffRotateKey( spep_1+214, ryusen1, 20);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 250, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.8, 1.8);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_1+6, 10017, 172, 0, -1, 0, 0, 350); -- ドガガガッ
setEffRotateKey(spep_1+6, ctDokgaga, 20);
setEffShake(spep_1+6, ctDokgaga, 168, 15);
setEffAlphaKey(spep_1+6, ctDokgaga, 255);
setEffScaleKey(spep_1+6, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_1+12, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_1+13, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_1+16, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_1+17, ctDokgaga, 2.3, 2.3);
setEffScaleKey(spep_1+178, ctDokgaga, 2.3, 2.3);


ctBaki = entryEffectLife( spep_1+211, 10020, 22, 0, -1, 0, 100, 400); -- バキッ
setEffRotateKey(spep_1+211, ctBaki, -10);
setEffRotateKey(spep_1+212, ctBaki, -10);
setEffRotateKey(spep_1+213, ctBaki, 0);
setEffRotateKey(spep_1+214, ctBaki, 0);
setEffRotateKey(spep_1+215, ctBaki, -10);
setEffRotateKey(spep_1+216, ctBaki, -10);
setEffRotateKey(spep_1+217, ctBaki, 0);
setEffRotateKey(spep_1+218, ctBaki, 0);
setEffRotateKey(spep_1+219, ctBaki, -10);
setEffShake(spep_1+212, ctBaki, 72, 5);
setEffAlphaKey(spep_1+211, ctBaki, 255);
setEffAlphaKey(spep_1+212, ctBaki, 255);
setEffAlphaKey(spep_1+225, ctBaki, 0);
setEffScaleKey(spep_1+211, ctBaki, 1.8, 1.8);
setEffScaleKey(spep_1+212, ctBaki, 1.9, 1.9);
setEffScaleKey(spep_1+213, ctBaki, 3.5, 3.5);
setEffScaleKey(spep_1+215, ctBaki, 2.4, 2.4);
setEffScaleKey(spep_1+225, ctBaki, 2.4, 2.4);

-- ** 音 ** --
playSe( spep_1+12, 1009);
setSeVolume( spep_1+12, 1009, 70 );
playSe( spep_1+16, 1010);
setSeVolume( spep_1+16, 1010, 70 );
playSe( spep_1+22, 1010);
setSeVolume( spep_1+22, 1010, 70 );
playSe( spep_1+28, 1009);
setSeVolume( spep_1+28, 1009, 70 );
playSe( spep_1+34, 1010);
setSeVolume( spep_1+34, 1010, 70 );
playSe( spep_1+46, 1009);
setSeVolume( spep_1+46, 1009, 70 );
playSe( spep_1+56, 1010);
setSeVolume( spep_1+56, 1010, 70 );
playSe( spep_1+66, 1009);
setSeVolume( spep_1+66, 1009, 70 );
playSe( spep_1+78, 1009);
setSeVolume( spep_1+78, 1009, 70 );
playSe( spep_1+82, 1010);
setSeVolume( spep_1+82, 1010, 70 );
playSe( spep_1+90, 1009);
setSeVolume( spep_1+90, 1009, 70 );
playSe( spep_1+94, 1010);
setSeVolume( spep_1+94, 1010, 70 );
playSe( spep_1+101, 1009);
setSeVolume( spep_1+101, 1009, 70 );
playSe( spep_1+106, 1010);
setSeVolume( spep_1+106, 1010, 70 );
playSe( spep_1+111, 1010);
setSeVolume( spep_1+111, 1010, 70 );
playSe( spep_1+117, 1009);
setSeVolume( spep_1+12, 1009, 70 );

playSe( spep_1+123, 1009);
setSeVolume( spep_1+123, 1009, 70 );
playSe( spep_1+129, 1010);
setSeVolume( spep_1+129, 1010, 70 );
playSe( spep_1+134, 1009);
setSeVolume( spep_1+134, 1009, 70 );
playSe( spep_1+139, 1010);
setSeVolume( spep_1+139, 1010, 70 );
playSe( spep_1+144, 1009);
setSeVolume( spep_1+144, 1009, 70 );
playSe( spep_1+149, 1010);
setSeVolume( spep_1+149, 1010, 70 );
playSe( spep_1+154, 1009);
setSeVolume( spep_1+154, 1009, 70 );
playSe( spep_1+159, 1010);
setSeVolume( spep_1+159, 1010, 70 );
playSe( spep_1+164, 1009);
setSeVolume( spep_1+164, 1009, 70 );
playSe( spep_1+169, 1010);
setSeVolume( spep_1+169, 1010, 70 );
playSe( spep_1+174, 1009);
setSeVolume( spep_1+174, 1009, 70 );
playSe( spep_1+178, 1010);
setSeVolume( spep_1+178, 1010, 70 );

playSe( spep_1+214, SE_09);

entryFade( spep_1+6, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_1+209, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 240);     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1+250;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 110, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 台詞カットイン(120F)　
------------------------------------------------------
-- ** エフェクト等 ** --
kidame_2 = entryEffect( spep_2, SP_03, 0, -1, 0, 0, 0);   --気溜め２　50f
setEffScaleKey( spep_2, kidame_2, 1, 1);
setEffAlphaKey( spep_2, kidame_2, 255);
setEffShake( spep_2, kidame_2, 120, 20);
-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 120, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.8, 1.8);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

speff = entryEffect(  spep_2+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2+30, 190006, 70, 0x100, -1, 0, 150,500, 0);    -- ゴゴゴゴ
setEffShake(spep_2+30, ctgogo, 70, 10);
setEffScaleKey(spep_2+30, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_2+30, ctgogo, 0);
setEffAlphaKey( spep_2+30, ctgogo, 255);


-- ** 音 ** --
playSe( spep_2+20, SE_04);

-- ** 次の準備 ** --
spep_3 = spep_2+110;
entryFade( spep_3-9, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
-- カードカットイン
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.8, 1.8);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_3, SE_05);

-- ** 次の準備 ** --
spep_4 = spep_3+90;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 100, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 発射(100F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi4 = entryEffect( spep_4, SP_04, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_4, hasi4, 1, 1);
setEffAlphaKey( spep_4, hasi4, 255);
setEffShake( spep_4, hasi4, 100, 20);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 100, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.8, 1.8);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);


-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_4, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_4, ryusen4, 1.8, 1.8);
setEffRotateKey( spep_4, ryusen4, -120);

-- 書き文字エントリー
ctZuo4 = entryEffectLife( spep_4+15, 10012, 70, 0x100, -1, 0, 100, 350); -- ズオッ
setEffShake(spep_4+15, ctZuo4, 92, 5);
setEffRotateKey(spep_4+15, ctZuo4, 31);
setEffShake(spep_4+15, ctZuo4, 71, 30);
setEffAlphaKey(spep_4+15, ctZuo4, 255);
setEffAlphaKey(spep_4+60, ctZuo4, 255);
setEffAlphaKey(spep_4+72, ctZuo4, 0);
setEffScaleKey(spep_4+15, ctZuo4, 0.0, 0.0);
setEffScaleKey(spep_4+20, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_4+45, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_4+72, ctZuo4, 8.0, 8.0);

-- ** 音 ** --
playSe( spep_4+15, SE_06);

-- ** 次の準備 ** --
spep_5 = spep_4+100;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 100, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 命中(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
tama5 = entryEffect( spep_5, SP_05, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_5, tama5, 1, 1);
setEffAlphaKey( spep_5, tama5, 255);
setEffShake( spep_5, tama5, 100, 15);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 100, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.8, 1.8);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_5, SE_07);

playSe( spep_5+40, SE_09);
-- ** 次の準備 ** --
spep_6 = spep_5+100;
entryFade( spep_6-6, 3, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 140, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- パンチ(140F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi6 = entryEffect( spep_6, SP_06, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_6, hasi6, 1, 1);
setEffAlphaKey( spep_6, hasi6, 255);
setEffShake( spep_6, hasi6, 140, 15);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 140, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.8, 1.8);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);

-- ** 音 ** --
--playSe( spep_6+5, 20);
playSe( spep_6+5, 1002);
playSe( spep_6+5, 1011);
playSe( spep_6+5, 1066);
playSe( spep_6+70, 8);


-- ** 次の準備 ** --
spep_7 = spep_6+140;
entryFade( spep_6-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 140, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);



setDisp( SP_dodge, 0, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
--setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);
--setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge-1,   0,    0,  0,   0);
setMoveKey(   SP_dodge,   0,    0, -5400,   0);
setMoveKey(   SP_dodge+1,   0,    0, -5400,   0);
setRotateKey(   SP_dodge,   1, -10);

setMoveKey(  SP_dodge,    1,  100,  0,   0);
setScaleKey(  SP_dodge,   1,   1.4,  1.4);

setMoveKey(   SP_dodge+1,    1,  100,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.4, 1.4);
setRotateKey(   SP_dodge+1,   1, -10);

setMoveKey(   SP_dodge+9,   1,   100, 0,  0);
setScaleKey(   SP_dodge+9,   1, 1.4, 1.4);
setRotateKey(   SP_dodge+9,   1, -10);

changeAnime(  SP_dodge+10,    1,  100);
setMoveKey(  SP_dodge+10,    1,  100,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.4, 1.4);
setRotateKey(   SP_dodge+10,   1, -10);


endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

-- ** エフェクト等 ** --
hasi7 = entryEffect( spep_7, SP_07, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_7, hasi7, 1, 1);
setEffAlphaKey( spep_7, hasi7, 255);
setEffShake( spep_7, hasi7, 110, 10);

playSe( spep_7+40, SE_10);

entryFade( spep_7+40, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_7+40, 906, 120, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_7+40, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_7+40, shuchusen7, 1.8, 1.8);
setEffAlphaKey( spep_7+40, shuchusen7, 255);
setEffRotateKey( spep_7+40, shuchusen7, 0);

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+150, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+160);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;


-- ** 背景 ** --
entryFadeBg( spep_0, 0, 200, 0, 0, 0, 0, 200); -- ベース暗め　背景
entryFadeBg( spep_0+95, 55, 450, 0, 10, 10, 10, 200);          -- ベース暗め　背景
-- ** エフェクト等 ** --
kidame = entryEffect( spep_0, SP_01e, 0, -1, 0, 0, 0);   --気溜め１　19f
setEffScaleKey( spep_0, kidame, 1.0, 1.0);
--setEffScaleKey( spep_0+20, kidame, 0.0, 0.0);
--setEffScaleKey( spep_0+21, kidame, 0.0, 0.0);
setEffScaleKey( spep_0+200, kidame, 1.0, 1.0);
setEffAlphaKey( spep_0, kidame, 255);

setDisp( spep_0, 1, 1);
changeAnime( spep_0+60, 1, 101);
changeAnime( spep_0+98, 1, 111);
--pauseChara(spep_0+95, 9);
changeAnime( spep_0+100, 1, 109);

setMoveKey(   spep_0+50,   1,    660, 0,   0);
setMoveKey(   spep_0+80,   1,    250, 0,   0);
setMoveKey(   spep_0+200,   1,    100, 0,   0);

setScaleKey(   spep_0,   1, 1.4, 1.4);
setScaleKey(   spep_0+200,   1, 1.4, 1.4);
setRotateKey( spep_0,   1, 0);
setRotateKey( spep_0+99,   1, 0);
setRotateKey( spep_0+100,   1, -10);
setRotateKey( spep_0+200,   1, -10);
-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_0+50, 920, 200, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_0+50, ryusen, 1.8, 1.8);
setEffRotateKey( spep_0+50, ryusen, 0);
setEffAlphaKey( spep_0+50, ryusen, 255);
setEffAlphaKey( spep_0+95, ryusen, 255);
setEffAlphaKey( spep_0+150, ryusen, 0);
setEffAlphaKey( spep_0+200, ryusen, 0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0+20, 906, 180, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_0+20, shuchusen, 0, 0, 0);
setEffScaleKey( spep_0+20, shuchusen, 1.5, 1.5);
setEffAlphaKey( spep_0+20, shuchusen, 255);
setEffRotateKey( spep_0+20, shuchusen, 0);

entryFade( spep_0+45, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0+102, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 210);     -- white fade



-- ** 音 ** --
playSe( spep_0+24, 43);
playSe( spep_0+52, 1018);
playSe( spep_0+103, 1003);


-- ** 次の準備 ** --
spep_1 = spep_0+196;
--entryFade( spep_1-4, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 250, 0, 10, 10, 10, 200); -- ベース暗め　背景

------------------------------------------------------
-- 連撃(250F)
------------------------------------------------------
-- ** エフェクト等 ** --
kidame_1 = entryEffect( spep_1-1, SP_02e, 0, -1, 0, 0, 0);   --気溜め２　50f
setEffScaleKey( spep_1-1, kidame_1, 1, 1);
setEffAlphaKey( spep_1-1, kidame_1, 255);

changeAnime( spep_1+6, 1, 108);
changeAnime( spep_1+39, 1, 106);
changeAnime( spep_1+71, 1, 108);
changeAnime( spep_1+115, 1, 106);

setMoveKey(  spep_1+6,  1, 100, 0, 0);
setMoveKey(  spep_1+38,  1, 150, 150, 0);

setMoveKey(  spep_1+39,  1, 0, 90, 0);
setMoveKey(  spep_1+70,  1, -30, 40, 0);

setMoveKey(  spep_1+71,  1, -50, 50, 0);
setMoveKey(  spep_1+98,  1, 100, 30, 0);

setMoveKey(  spep_1+118,  1, 20, 80, 0);
setMoveKey(  spep_1+209,  1, 20, 100, 0);

setScaleKey( spep_1,   1, 1.4, 1.4);

setRotateKey( spep_1+38,   1, -10);
setRotateKey( spep_1+39,   1, -80);
setRotateKey( spep_1+70,   1, -80);
setRotateKey( spep_1+71,   1, 10);
setRotateKey( spep_1+114,   1, 10);
setRotateKey( spep_1+115,   1, -45);
setRotateKey( spep_1+209,   1, -45);

changeAnime( spep_1+210, 1, 108);
setMoveKey(  spep_1+220,   1,    50, 0,   0);
setMoveKey(  spep_1+240,   1,    550, -100,   0);

setScaleKey(   spep_1+211,   1, 1.4, 1.4);
setScaleKey(   spep_1+250,   1, 0.5, 0.5);
setRotateKey( spep_1+210,   1, -10);
setRotateKey( spep_1+250,   1, -10);
setShakeChara( spep_1+7, 1, 243, 20);
setDisp( spep_1+250, 1, 0);

-- ** 流線(横) ** --
ryusen1 = entryEffectLife( spep_1, 920, 213, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_1, ryusen1, 1.8, 1.8);
setEffRotateKey( spep_1, ryusen1, 0);
setEffAlphaKey( spep_1, ryusen1, 0);
setEffAlphaKey( spep_1+5, ryusen1, 255);
setEffAlphaKey( spep_1+213, ryusen1, 255);


-- ** 流線(横) ** --
ryusen1 = entryEffectLife( spep_1+214, 921, 36, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_1+214, ryusen1, 1.8, 1.8);
setEffRotateKey( spep_1+214, ryusen1, 20);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 250, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.8, 1.8);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

-- 書き文字エントリー
ctDokgaga = entryEffectLife( spep_1+6, 10017, 172, 0, -1, 0, 0, 350); -- ドガガガッ
setEffRotateKey(spep_1+6, ctDokgaga, -20);
setEffShake(spep_1+6, ctDokgaga, 168, 15);
setEffAlphaKey(spep_1+6, ctDokgaga, 255);
setEffScaleKey(spep_1+6, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_1+12, ctDokgaga, 1.8, 1.8);
setEffScaleKey(spep_1+13, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_1+16, ctDokgaga, 2.5, 2.5);
setEffScaleKey(spep_1+17, ctDokgaga, 2.3, 2.3);
setEffScaleKey(spep_1+178, ctDokgaga, 2.3, 2.3);


ctBaki = entryEffectLife( spep_1+211, 10020, 22, 0, -1, 0, 100, 400); -- バキッ
setEffRotateKey(spep_1+211, ctBaki, -10);
setEffRotateKey(spep_1+212, ctBaki, -10);
setEffRotateKey(spep_1+213, ctBaki, 0);
setEffRotateKey(spep_1+214, ctBaki, 0);
setEffRotateKey(spep_1+215, ctBaki, -10);
setEffRotateKey(spep_1+216, ctBaki, -10);
setEffRotateKey(spep_1+217, ctBaki, 0);
setEffRotateKey(spep_1+218, ctBaki, 0);
setEffRotateKey(spep_1+219, ctBaki, -10);
setEffShake(spep_1+212, ctBaki, 72, 5);
setEffAlphaKey(spep_1+211, ctBaki, 255);
setEffAlphaKey(spep_1+212, ctBaki, 255);
setEffAlphaKey(spep_1+225, ctBaki, 0);
setEffScaleKey(spep_1+211, ctBaki, 1.8, 1.8);
setEffScaleKey(spep_1+212, ctBaki, 1.9, 1.9);
setEffScaleKey(spep_1+213, ctBaki, 3.5, 3.5);
setEffScaleKey(spep_1+215, ctBaki, 2.4, 2.4);
setEffScaleKey(spep_1+225, ctBaki, 2.4, 2.4);

-- ** 音 ** --
playSe( spep_1+12, 1009);
setSeVolume( spep_1+12, 1009, 70 );
playSe( spep_1+16, 1010);
setSeVolume( spep_1+16, 1010, 70 );
playSe( spep_1+22, 1010);
setSeVolume( spep_1+22, 1010, 70 );
playSe( spep_1+28, 1009);
setSeVolume( spep_1+28, 1009, 70 );
playSe( spep_1+34, 1010);
setSeVolume( spep_1+34, 1010, 70 );
playSe( spep_1+46, 1009);
setSeVolume( spep_1+46, 1009, 70 );
playSe( spep_1+56, 1010);
setSeVolume( spep_1+56, 1010, 70 );
playSe( spep_1+66, 1009);
setSeVolume( spep_1+66, 1009, 70 );
playSe( spep_1+78, 1009);
setSeVolume( spep_1+78, 1009, 70 );
playSe( spep_1+82, 1010);
setSeVolume( spep_1+82, 1010, 70 );
playSe( spep_1+90, 1009);
setSeVolume( spep_1+90, 1009, 70 );
playSe( spep_1+94, 1010);
setSeVolume( spep_1+94, 1010, 70 );
playSe( spep_1+101, 1009);
setSeVolume( spep_1+101, 1009, 70 );
playSe( spep_1+106, 1010);
setSeVolume( spep_1+106, 1010, 70 );
playSe( spep_1+111, 1010);
setSeVolume( spep_1+111, 1010, 70 );
playSe( spep_1+117, 1009);
setSeVolume( spep_1+12, 1009, 70 );

playSe( spep_1+123, 1009);
setSeVolume( spep_1+123, 1009, 70 );
playSe( spep_1+129, 1010);
setSeVolume( spep_1+129, 1010, 70 );
playSe( spep_1+134, 1009);
setSeVolume( spep_1+134, 1009, 70 );
playSe( spep_1+139, 1010);
setSeVolume( spep_1+139, 1010, 70 );
playSe( spep_1+144, 1009);
setSeVolume( spep_1+144, 1009, 70 );
playSe( spep_1+149, 1010);
setSeVolume( spep_1+149, 1010, 70 );
playSe( spep_1+154, 1009);
setSeVolume( spep_1+154, 1009, 70 );
playSe( spep_1+159, 1010);
setSeVolume( spep_1+159, 1010, 70 );
playSe( spep_1+164, 1009);
setSeVolume( spep_1+164, 1009, 70 );
playSe( spep_1+169, 1010);
setSeVolume( spep_1+169, 1010, 70 );
playSe( spep_1+174, 1009);
setSeVolume( spep_1+174, 1009, 70 );
playSe( spep_1+178, 1010);
setSeVolume( spep_1+178, 1010, 70 );

playSe( spep_1+214, SE_09);

entryFade( spep_1+6, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFade( spep_1+209, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 240);     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1+250;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 110, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 台詞カットイン(120F)　
------------------------------------------------------
-- ** エフェクト等 ** --
kidame_2 = entryEffect( spep_2, SP_03e, 0, -1, 0, 0, 0);   --気溜め２　50f
setEffScaleKey( spep_2, kidame_2, 1, 1);
setEffAlphaKey( spep_2, kidame_2, 255);
setEffShake( spep_2, kidame_2, 120, 20);
-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 120, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.8, 1.8);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);
--[[
speff = entryEffect(  spep_2+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2+30, 190006, 70, 0x100, -1, 0, 150,500, 0);    -- ゴゴゴゴ
setEffShake(spep_2+30, ctgogo, 70, 10);
setEffScaleKey(spep_2+30, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_2+30, ctgogo, 0);
setEffAlphaKey( spep_2+30, ctgogo, 255);


-- ** 音 ** --
playSe( spep_2+20, SE_04);

-- ** 次の準備 ** --
spep_3 = spep_2+110;
entryFade( spep_3-9, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
-- カードカットイン
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.8, 1.8);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_3, SE_05);

-- ** 次の準備 ** --
spep_4 = spep_3+90;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 100, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 発射(100F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi4 = entryEffect( spep_4, SP_04e, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_4, hasi4, 1, 1);
setEffAlphaKey( spep_4, hasi4, 255);
setEffShake( spep_4, hasi4, 100, 20);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 100, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.8, 1.8);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);


-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_4, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey( spep_4, ryusen4, 1.8, 1.8);
setEffRotateKey( spep_4, ryusen4, -120);

-- 書き文字エントリー
ctZuo4 = entryEffectLife( spep_4+15, 10012, 70, 0x100, -1, 0, 100, 350); -- ズオッ
setEffShake(spep_4+15, ctZuo4, 92, 5);
setEffRotateKey(spep_4+15, ctZuo4, 31);
setEffShake(spep_4+15, ctZuo4, 71, 30);
setEffAlphaKey(spep_4+15, ctZuo4, 255);
setEffAlphaKey(spep_4+60, ctZuo4, 255);
setEffAlphaKey(spep_4+72, ctZuo4, 0);
setEffScaleKey(spep_4+15, ctZuo4, 0.0, 0.0);
setEffScaleKey(spep_4+20, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_4+45, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_4+72, ctZuo4, 8.0, 8.0);

-- ** 音 ** --
playSe( spep_4+15, SE_06);

-- ** 次の準備 ** --
spep_5 = spep_4+100;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 100, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 命中(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
tama5 = entryEffect( spep_5, SP_05, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_5, tama5, 1, 1);
setEffAlphaKey( spep_5, tama5, 255);
setEffShake( spep_5, tama5, 100, 15);

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 100, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.8, 1.8);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_5, SE_07);

playSe( spep_5+40, SE_09);
-- ** 次の準備 ** --
spep_6 = spep_5+100;
entryFade( spep_6-6, 3, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 140, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- パンチ(140F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi6 = entryEffect( spep_6, SP_06, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_6, hasi6, -1, 1);
setEffAlphaKey( spep_6, hasi6, 255);
setEffShake( spep_6, hasi6, 140, 15);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 140, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.8, 1.8);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);

-- ** 音 ** --
--playSe( spep_6+5, 20);
playSe( spep_6+5, 1002);
playSe( spep_6+5, 1011);
playSe( spep_6+5, 1066);
playSe( spep_6+70, 8);

-- ** 次の準備 ** --
spep_7 = spep_6+140;
entryFade( spep_6-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 140, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);



setDisp( SP_dodge, 0, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
--setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);
--setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge-1,   0,    0,  0,   0);
setMoveKey(   SP_dodge,   0,    0, -5400,   0);
setMoveKey(   SP_dodge+1,   0,    0, -5400,   0);
setRotateKey(   SP_dodge,   1, -10);

setMoveKey(  SP_dodge,    1,  100,  0,   0);
setScaleKey(  SP_dodge,   1,   1.4,  1.4);

setMoveKey(   SP_dodge+1,    1,  100,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.4, 1.4);
setRotateKey(   SP_dodge+1,   1, -10);

setMoveKey(   SP_dodge+9,   1,   100, 0,  0);
setScaleKey(   SP_dodge+9,   1, 1.4, 1.4);
setRotateKey(   SP_dodge+9,   1, -10);

changeAnime(  SP_dodge+10,    1,  100);
setMoveKey(  SP_dodge+10,    1,  100,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.4, 1.4);
setRotateKey(   SP_dodge+10,   1, -10);


endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

-- ** エフェクト等 ** --
hasi7 = entryEffect( spep_7, SP_07, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_7, hasi7, 1, 1);
setEffAlphaKey( spep_7, hasi7, 255);
setEffShake( spep_7, hasi7, 110, 10);

playSe( spep_7+40, SE_10);

entryFade( spep_7+40, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_7+40, 906, 120, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_7+40, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_7+40, shuchusen7, 1.8, 1.8);
setEffAlphaKey( spep_7+40, shuchusen7, 255);
setEffRotateKey( spep_7+40, shuchusen7, 0);

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+150, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+160);
end



print ("[lua]c0008");

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
SE_08 = 1009; --huru
SE_09 = 1010; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;
SE_13 = 1000; --ブルマhit音
SE_14 = 1042; --!!音

SP_01 = 150847;--ブルマ被弾
SP_01e = 150734;--ブルマ被弾(敵)※念のため
SP_02 = 150849;--ベジータ怒りのアップ
SP_03 = 150850;--ブルマの元へ
SP_03e = 150851;--ブルマの元へ(敵)※念のため
SP_04 = 150852;--発射
SP_04e = 150852;--発射(敵)※念のため



---------------

SP_ATK_0 = 0;		--気ダメ
SP_ATK_1 = SP_ATK_0+75;	--突進
--Card = 60;
--Card = SP_ATK_1+122;
rn_02 = SP_ATK_1+100;		--タックル
SP_ATK_3 = rn_02+30;	--けり
SP_ATK_4 = SP_ATK_3+78;	--死亡処理orつなぎ
spep_5 = SP_ATK_0+107;	--突進

SP_Start = -244;		--気ダメ

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

--entryFadeBg( 0, 30, 151, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 36, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( 36, shuchusen, 1.0, 1.0);

kaisinn = entryEffect( 39, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

--entryFade( 0, 2,  2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFadeBg( SP_ATK_0, 5, 89, 2, 10, 10, 10, 200);       --ベース暗め　背景

------------------------------------------------------
-- ブルマ
------------------------------------------------------

spep_1 = 28;

-- ** キャラクター ** --
setDisp( 0, 0, 0); --味方表示
setDisp( 0, 1, 0); --敵非表示
setMoveKey( 0, 0, 0, 0, 0); --味方位置
setScaleKey( 0, 0, 1.5, 1.5); --味方サイズ
setMoveKey( 0, 1, 0, 0, 0); --敵位置
setScaleKey( 0, 1, 1.0, 1.0); --敵サイズ

setVisibleUI( spep_1, 0);


-- ** エフェクト等 ** --
hidan = entryEffect( spep_1-7, SP_01, 0x100, -1, 0, 0, 0); --ブルマ被弾
setEffMoveKey( spep_1, hidan, 0, 0, 0);
setEffScaleKey( spep_1, hidan, 1.0, 1.0);
setEffAlphaKey( spep_1, hidan, 255);
setEffRotateKey( spep_1, hidan, 0);

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 127, 0, 0, 0, 0, 255); --黒背景

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1, 906, 59, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1, shuchusen, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen, 1.4, 1.4);
setEffAlphaKey( spep_1, shuchusen, 255);
setEffRotateKey( spep_1, shuchusen, 0);

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_1, 920, 59, 0x80,  -1,  0,  0,  0); -- 流線(横)
setEffMoveKey( spep_1, ryusen, 0, 0, 0);
setEffRotateKey( spep_1, ryusen, 0);
setEffScaleKey( spep_1, ryusen, 1, 1);
setEffAlphaKey( spep_1, ryusen, 255);

-- ** 音 ** --
playSe( spep_1, SE_13);

-- ** ホワイトフェード ** --
entryFade( spep_1+58, 0, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-----------------------
--ベジータ!!
-----------------------

spep_2 = spep_1+60; --88F

-- ** エフェクト等 ** --
ikari = entryEffect( spep_2, SP_02, 0x100, -1, 0, 0, 0); --ベジータ怒りのアップ
setEffMoveKey( spep_2, ikari, 0, 0, 0);
setEffScaleKey( spep_2, ikari, 1.0, 1.0);
setEffAlphaKey( spep_2, ikari, 255);
setEffRotateKey( spep_2, ikari, 0);

-- ** 流線(縦) ** --
tateryusen = entryEffectLife( spep_2, 920, 65, 0x80,  -1,  0,  0,  0); -- 流線(縦)
setEffMoveKey( spep_2, tateryusen, 0, 0, 0);
setEffRotateKey( spep_2, tateryusen, 90);
setEffScaleKey( spep_2, tateryusen, 1.5, 1);
setEffAlphaKey( spep_2, tateryusen, 255);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 65, 0x100,  -1, 0,  0,  0);   -- 集中線2
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.4, 1.4);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** !! ** --
bikkuri = entryEffectLife( spep_2+8, 10000, 57, 0x100, -1, 0, 0, 0); -- ビックリ
setEffMoveKey( spep_2+8, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+13, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+14, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+15, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+16, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+17, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+18, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+19, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+20, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+21, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+22, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+23, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+24, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+25, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+26, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+27, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+28, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+29, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+30, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+31, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+32, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+33, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+34, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+35, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+36, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+37, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+38, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+39, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+40, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+41, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+42, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+43, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+44, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+45, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+46, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+47, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+48, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+49, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+50, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+51, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+52, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+53, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+54, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+55, bikkuri, -225, 325, 0);
setEffMoveKey( spep_2+56, bikkuri, -220, 330, 0);
setEffMoveKey( spep_2+57, bikkuri, -220, 330, 0);
setEffScaleKey( spep_2+8, bikkuri, 3, 3);
setEffScaleKey( spep_2+9, bikkuri, 3, 3);
setEffScaleKey( spep_2+10, bikkuri, 4.8, 4.8);
setEffScaleKey( spep_2+11, bikkuri, 4.8, 4.8);
setEffScaleKey( spep_2+12, bikkuri, 5.5, 5.5);
setEffScaleKey( spep_2+13, bikkuri, 5.5, 5.5);
setEffScaleKey( spep_2+14, bikkuri, 4.8, 4.8);
setEffRotateKey( spep_2+8, bikkuri, -5);
setEffRotateKey( spep_2+9, bikkuri, -5);
setEffRotateKey( spep_2+10, bikkuri, -8);

-- ** 音 ** --
playSe( spep_2+9, SE_14);

-- ** ホワイトフェード ** --
entryFade( spep_2+59, 5, 3, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-----------------------
--ベジータ飛んでくる
-----------------------

spep_3 = spep_2+66; --154F

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 46, 0, 0, 0, 0, 180); --ベース暗め背景

-- ** エフェクト等 ** --
motoe = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); --ブルマの元へ
setEffMoveKey( spep_3, motoe, 0, 0, 0);
setEffScaleKey( spep_3, motoe, 1.0, 1.0);
setEffAlphaKey( spep_3, motoe, 255);
setEffRotateKey( spep_3, motoe, 0);

-- ** 流線(横) ** --
ryusen2 = entryEffectLife( spep_3, 920, 46, 0x80,  -1,  0,  0,  0); -- 流線(横)
setEffMoveKey( spep_3, ryusen2, 0, 0, 0);
setEffRotateKey( spep_3, ryusen2, 0);
setEffScaleKey( spep_3, ryusen2, 1, 1);
setEffAlphaKey( spep_3, ryusen2, 255);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 46, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.4, 1.4);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_3, SE_04);

-- ** ホワイトフェード ** --
entryFade( spep_3+40, 5, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-----------------------
--放つ
-----------------------

spep_4 = spep_3+47; --201F

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 116, 0, 0, 0, 0, 255); --黒背景

-- ** エフェクト等 ** --
hassya = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); --発射
setEffMoveKey( spep_4, hassya, 0, 0, 0);
setEffScaleKey( spep_4, hassya, 1.0, 1.0);
setEffAlphaKey( spep_4, hassya, 255);
setEffRotateKey( spep_4, hassya, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_4, 921, 116, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_4, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_4, okuyukiryusennaname, 180);
setEffScaleKey( spep_4, okuyukiryusennaname, 1, 1);
setEffAlphaKey( spep_4, okuyukiryusennaname, 255);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 116, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.4, 1.4);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

-- 書き文字エントリー --
zuo = entryEffectLife( spep_4+3, 10012, 50, 0x100, -1, 0, 0, 0); -- ズオッ
setEffMoveKey( spep_4+3, zuo, 100, 350, 0);
setEffMoveKey( spep_4+4, zuo, 100, 350, 0);
setEffMoveKey( spep_4+5, zuo, 150, 380, 0);
setEffMoveKey( spep_4+7, zuo, 150, 380, 0);
setEffMoveKey( spep_4+8, zuo, 140, 390, 0);
setEffMoveKey( spep_4+10, zuo, 140, 390, 0);
setEffMoveKey( spep_4+11, zuo, 150, 380, 0);
setEffMoveKey( spep_4+13, zuo, 150, 380, 0);
setEffMoveKey( spep_4+14, zuo, 140, 390, 0);
setEffMoveKey( spep_4+16, zuo, 140, 390, 0);
setEffMoveKey( spep_4+17, zuo, 150, 380, 0);
setEffMoveKey( spep_4+19, zuo, 150, 380, 0);
setEffMoveKey( spep_4+20, zuo, 140, 390, 0);
setEffMoveKey( spep_4+22, zuo, 140, 390, 0);
setEffMoveKey( spep_4+23, zuo, 150, 380, 0);
setEffMoveKey( spep_4+25, zuo, 150, 380, 0);
setEffMoveKey( spep_4+26, zuo, 140, 390, 0);
setEffMoveKey( spep_4+28, zuo, 140, 390, 0);
setEffMoveKey( spep_4+29, zuo, 150, 380, 0);
setEffMoveKey( spep_4+31, zuo, 150, 380, 0);
setEffMoveKey( spep_4+32, zuo, 140, 390, 0);
setEffMoveKey( spep_4+34, zuo, 140, 390, 0);
setEffMoveKey( spep_4+35, zuo, 150, 380, 0);
setEffMoveKey( spep_4+37, zuo, 150, 380, 0);
setEffMoveKey( spep_4+38, zuo, 140, 390, 0);
setEffMoveKey( spep_4+40, zuo, 140, 390, 0);
setEffScaleKey( spep_4+3, zuo, 1.3, 1.3);
setEffScaleKey( spep_4+4, zuo, 1.3, 1.3);
setEffScaleKey( spep_4+5, zuo, 2.5, 2.5);
setEffScaleKey( spep_4+44, zuo, 2.5, 2.5);
setEffScaleKey( spep_4+52, zuo, 5.5, 5.5);
setEffRotateKey( spep_4+3, zuo, 25);
setEffAlphaKey( spep_4+3, zuo, 255);
setEffAlphaKey( spep_4+44, zuo, 255);
setEffAlphaKey( spep_4+52, zuo, 0);

-- ** 音 ** --
playSe( spep_4, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_4+99, 6, 17, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


if (_IS_DEAD_ == 1) then --爆破前までのフレーム数をしていすること

setDisp( spep_4+116 , 1, 1);
--spep_4=spep_3+90;
--endPhase(SP_Start+470);
endPhase(spep_4+117);
--endPhase(spep_4+170);

else

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_5 = spep_4+117;

entryFade( spep_5-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5 , 0, 0, 0, 255, 255, 255, 255);          -- ベース真っ暗　背景


setDisp( spep_5-1, 1, 0);

setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
setMoveKey(  spep_5+1,    1,    0,   0,   128);
setScaleKey( spep_5+1,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ 470
setDisp( spep_5, 1, 1);

entryEffect( spep_5+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, SE_10);

setMoveKey( spep_5+9,   1,    0,   0,   128);
setMoveKey( spep_5+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+17, 1, 0);  -- ダメージ振動等
setShake(spep_5+8);
setShake(spep_5+13,15,10);

setRotateKey( spep_5+1,  1,  30 );
setRotateKey( spep_5+3,  1,  80 );
setRotateKey( spep_5+5,  1, 120 );
setRotateKey( spep_5+7,  1, 160 );
setRotateKey( spep_5+9,  1, 200 );
setRotateKey( spep_5+11,  1, 260 );
setRotateKey( spep_5+13,  1, 320 );
setRotateKey( spep_5+15,  1,   0 );

setShakeChara( spep_5+16, 1, 5,  10);
setShakeChara( spep_5+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+16, ct, 30, 10);
setEffRotateKey( spep_5+16, ct, -40);
setEffScaleKey( spep_5+16, ct, 4.0, 4.0);
setEffScaleKey( spep_5+17, ct, 2.0, 2.0);
setEffScaleKey( spep_5+18, ct, 2.6, 2.6);
setEffScaleKey( spep_5+19, ct, 4.0, 4.0);
setEffScaleKey( spep_5+20, ct, 2.6, 2.6);
setEffScaleKey( spep_5+21, ct, 3.8, 3.8);
setEffScaleKey( spep_5+111, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+16, ct, 255);
setEffAlphaKey( spep_5+106, ct, 255);
setEffAlphaKey( spep_5+116, ct, 0);

playSe( spep_5+4, SE_11);
shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

entryEffect( spep_5+7, 1600,  0x00,  -1,  0,30, -130);  -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);           -- black fade

endPhase(spep_5+111);

end

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 110; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0, -750,  70,   -30);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

print ("[lua]sp0001 end");
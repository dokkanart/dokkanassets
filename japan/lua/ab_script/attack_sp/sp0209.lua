

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;

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

SP_01 = 109063
SP_02 = 109064
SP_03 = 109065
SP_04 = 109066
SP_05 = 109067

SP_ATK = -90

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

	if (_IS_PLAYER_SIDE_ == 1) then

		setMoveKey(   0,   0,    30, -54,   0);
		setMoveKey(   1,   0,    30, -54,   0);
		setScaleKey(   0,   0, 1.5, 1.5);
		setScaleKey(   1,   0, 1.5, 1.5);

	else

		setMoveKey(   0,   0,    -30, -54,   0);
		setMoveKey(   1,   0,    -30, -54,   0);
		setScaleKey(   0,   0, 1.5, 1.5);
		setScaleKey(   1,   0, 1.5, 1.5);

	end

------------------------------------------------------
-- 気溜め( 40F)
------------------------------------------------------
kame_flag = 0x00;
if ( _IS_SPECIAL_AIM_ALL_ == 0) then

entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 30);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

	if (_IS_PLAYER_SIDE_ == 1) then

		setMoveKey(   68,   0,    30, -54,   0);

	else

		setMoveKey(   68,   0,    -30, -54,   0);

	end

setMoveKey(   69,   0,    0, -54,   0);


-- ** エフェクト等 ** --

	if (_IS_PLAYER_SIDE_ == 1) then

		aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ

	else

		aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  40,  -100); -- オーラ

	end


setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake( 30, ct, 40, 7);
setEffAlphaKey( 30, ct, 255);
setEffAlphaKey( 50, ct, 255);
setEffAlphaKey( 70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！( 100F)
------------------------------------------------------
setVisibleUI( 69, 0);

setScaleKey(   69,   0, 1.5, 1.5);
setScaleKey(   70,   0, 0.6, 0.6);

changeAnime( 70, 0, 31);                       -- 溜め!
playSe( 73, SE_03);


sen1 = entryEffectLife( 70, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 70,sen1,90);
setEffScaleKey( 70,sen1, 1.5, 1);

	if (_IS_PLAYER_SIDE_ == 1) then


		speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 ( カットイン)
		setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
		speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 ( セリフ)
		setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

	else



	end

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  -270);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 1.4, 1.4);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 44, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( 90, ct, 40, 8);
setEffScaleKey( 90, ct, 1.4, 1.4);

setMoveKey(   170,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン( 90F)
------------------------------------------------------
--setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey(   169,   0, 0.6, 0.6);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0x100,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect( 257);

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射( 110F)
------------------------------------------------------
changeAnime( 257, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  257,    0,      0,  0,   0);
--setMoveKey(  260,    0,      0,  -600,   0);
--setMoveKey(  261,    0,      0,  -600,   0);
setMoveKey(  270,    0,      0,  -100,   0);

sen1 = entryEffectLife( 257, 920, 132, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 257,sen1,90);
setEffScaleKey( 257,sen1, 1.5, 1);

kamehame_beam = entryEffectLife( 257, SP_02, 130, 0x40+0x80,  0,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( 257, kamehame_beam, 1.2, 1.2);

playSe( 257, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え


-- 途中からカメハメハが伸びる
setMoveKey(  299,    0,   0,  -100,   0);
setMoveKey(  300,    0,   0,  -100,   0);
setScaleKey( 299,   0, 1.0, 1.0);

--setScaleKey( 300,   0, 0.6, 0.6);
setEffMoveKey( 300, kamehame_beam, 0, 0);

setScaleKey( 304,   0, 0.6, 0.6);
--setMoveKey(  305,    0,   0,  400,   0);

setEffMoveKey( 310, kamehame_beam, 0, 480);
setMoveKey(  310,    0,   0,  -1200,   0);
setScaleKey( 310,   0, 0.2, 0.2);
setEffScaleKey( 312, kamehame_beam, 1.2, 1.2);
--setEffMoveKey( 316, kamehame_beam, 0, 0);

setEffMoveKey( 318, kamehame_beam, 0, 1200);
setEffScaleKey( 318, kamehame_beam, 1.0, 1.0);

entryFade( 365+17, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( 365+21,   0, 0.2, 0.2);

-- ** エフェクト等 ** --
entryFadeBg( 257, 0, 132, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 86, 0, 60, 0, 0, 180);     -- 青い　背景


setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 257, 906, 52, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 257, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 40, 0x010, -1, 0, 150, 400); -- ズオッ
setEffShake( 268, ct, 32, 25);
setEffAlphaKey( 268, ct, 255);
setEffAlphaKey( 290, ct, 255);
setEffAlphaKey( 300, ct, 0);
setEffScaleKey( 268, ct, 2, 2);
setEffScaleKey( 272, ct, 2.4, 2.4);
setEffScaleKey( 292, ct, 2.4, 2.4);
setEffScaleKey( 300, ct, 4.0, 4.0);
playSe( 300, SE_07);

SP_start = 17;


------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 100);                        -- 通常待機
setMoveKey( SP_start+  369,    1,  0,  200,   0);
setMoveKey( SP_start+  370,    1,  0,  200,   0);
setMoveKey( SP_start+  371,    1,  0,  200,   0);
setScaleKey( SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start+  400,    1,   0,  200,   0);
setScaleKey( SP_start+  400,   1,   1.6,  1.6);

playSe( SP_start+ 390, SE_06);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  50);   -- 迫るかめはめ波

setEffScaleKey( SP_start+ 370, kamehame_beam2, 1.0, 1.0);
setDamage( SP_start+ 452, 1, 0);  -- ダメージ振動等


entryFade( SP_start+ 456, 6,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start+ 464, 1, 0);

playSe( SP_start+ 414, SE_07);

setMoveKey( SP_start+  464, 1,  0,    800,  0);
setMoveKey( SP_start+  465,    1,    0,   0,   128);

playSe( SP_start+ 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start+ 455, 1, 108);
setMoveKey( SP_start+  452, 1,  0,    200,  0);
setMoveKey( SP_start+  463, 1,  0,    800,  0);
setScaleKey( SP_start+ 455, 1,  1.6, 1.6);
setScaleKey( SP_start+ 458, 1,  1.5, 1.5);
setScaleKey( SP_start+ 462, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start+ 370, 0, 99, 0, 10, 10, 10, 180);          -- ベース暗め　背景

sen2 = entryEffectLife( SP_start+ 370, 921, 99, 0x80,  -1,  180,  0,  0); -- 流線斜め
setEffRotateKey( SP_start+ 370,sen2,-90);
setEffScaleKey( SP_start+ 370,sen2, 1.5, 1);

-- 書き文字エントリー

	if (_IS_PLAYER_SIDE_ == 1) then


		ct2 = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, 50, 0); -- ズドドッ
		setEffShake( SP_start+ 370, ct2, 99, 20);
		setEffScaleKey( SP_start+ 370, ct2, 3.4, 3.4);
		setEffRotateKey( SP_start+ 370, ct2, 45);
		setEffAlphaKey( SP_start+ 370, ct2, 255);
		setEffAlphaKey( SP_start+ 430, ct2, 255);
		setEffAlphaKey( SP_start+ 450, ct2, 0);

	else

		ct2 = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, 0, 0); -- ズドドッ
		setEffShake( SP_start+ 370, ct2, 99, 20);
		setEffScaleKey( SP_start+ 370, ct2, 3.4, 3.4);
		setEffRotateKey( SP_start+ 370, ct2, -45);
		setEffAlphaKey( SP_start+ 370, ct2, 255);
		setEffAlphaKey( SP_start+ 430, ct2, 255);
		setEffAlphaKey( SP_start+ 450, ct2, 0);

	end

SP_start2 = -6;

SP_start3 = 5;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

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

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 ( 110F)
------------------------------------------------------
--setMoveKey( SP_start3+ SP_start2+ SP_start+  469,    1,  100,  0,   0);
--setScaleKey( SP_start3+ SP_start2+ SP_start+ 469,    1,  1.0, 1.0);
--[[
setDisp( SP_start3+ SP_start2+ SP_start+ 469, 1, 0);

setMoveKey( SP_start3+ SP_start2+ SP_start+  470,    1,    0,   0,   128);
setScaleKey( SP_start3+ SP_start2+ SP_start+ 470,    1,  0.1, 0.1);
setDisp( SP_start3+ SP_start2+ SP_start+ 472, 1, 1);

changeAnime( SP_start2+ SP_start+ 470, 1, 107);                         -- 手前ダメージ
--]]

entryEffect( SP_start2+ SP_start+ 470, SP_04,  0x80,  -1,  0,  0,  0);   -- 爆発
--playSe( SP_start2+ SP_start+ 478, SE_10);

playSe( SP_start2+ SP_start+ 500, SE_10);
--playSe( SP_start2+ SP_start+ 510, SE_10);
setDamage( SP_start3+ SP_start2+ SP_start+ 516, 1, 0);  -- ダメージ振動等

--[[
setMoveKey( SP_start3+ SP_start2+ SP_start+  478,   1,    0,   0,   128);
setMoveKey( SP_start3+ SP_start2+ SP_start+  485,   1,  -60,  -200,  -100);
setMoveKey( SP_start3+ SP_start2+ SP_start+  486,   1,  -60,  -200,  -100);
setShake( SP_start3+ SP_start2+ SP_start+477,6,15);
setShake( SP_start3+ SP_start2+ SP_start+483,15,10);

setRotateKey( SP_start3+ SP_start2+ SP_start+ 470,  1,  30 );
setRotateKey( SP_start3+ SP_start2+ SP_start+ 472,  1,  80 );
setRotateKey( SP_start3+ SP_start2+ SP_start+ 474,  1, 120 );
setRotateKey( SP_start3+ SP_start2+ SP_start+ 476,  1, 160 );
setRotateKey( SP_start3+ SP_start2+ SP_start+ 478,  1, 200 );
setRotateKey( SP_start3+ SP_start2+ SP_start+ 480,  1, 260 );
setRotateKey( SP_start3+ SP_start2+ SP_start+ 482,  1, 320 );
setRotateKey( SP_start3+ SP_start2+ SP_start+ 484,  1,   0 );

setShakeChara( SP_start3+ SP_start2+ SP_start+ 485, 1, 5,  10);
setShakeChara( SP_start3+ SP_start2+ SP_start+ 490, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start3+ SP_start2+ SP_start+ 485, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start3+ SP_start2+ SP_start+ 485, ct, 30, 10);
setEffRotateKey( SP_start3+ SP_start2+ SP_start+ 485, ct, -40);
setEffScaleKey( SP_start3+ SP_start2+ SP_start+ 485, ct, 4.0, 4.0);
setEffScaleKey( SP_start3+ SP_start2+ SP_start+ 486, ct, 2.0, 2.0);
setEffScaleKey( SP_start3+ SP_start2+ SP_start+ 487, ct, 2.6, 2.6);
setEffScaleKey( SP_start3+ SP_start2+ SP_start+ 488, ct, 4.0, 4.0);
setEffScaleKey( SP_start3+ SP_start2+ SP_start+ 489, ct, 2.6, 2.6);
setEffScaleKey( SP_start3+ SP_start2+ SP_start+ 490, ct, 3.8, 3.8);
setEffScaleKey( SP_start3+ SP_start2+ SP_start+ 580, ct, 3.8, 3.8);
setEffAlphaKey( SP_start3+ SP_start2+ SP_start+ 485, ct, 255);
setEffAlphaKey( SP_start3+ SP_start2+ SP_start+ 575, ct, 255);
setEffAlphaKey( SP_start3+ SP_start2+ SP_start+ 585, ct, 0);

--]]

--playSe( SP_start3+ SP_start2+ SP_start+ 473, SE_11);
--shuchusen = entryEffectLife( SP_start3+ SP_start2+ SP_start+ 473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( SP_start3+ SP_start2+ SP_start+ 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start3+ SP_start2+ SP_start+516);

entryFade( SP_start3+ SP_start2+ SP_start+ 570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start3+ SP_start2+ SP_start+ 580);

end

if ( _IS_SPECIAL_AIM_ALL_ == 1) then


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

SP_ATK_4 = 0;

setVisibleUI( SP_ATK_4, 0);
setDisp( SP_ATK_4, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

	if(_IS_DODGE_ == 1) then

	SP_dodge = SP_ATK_4; --エンドフェイズのフレーム数を置き換える

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

	endPhase(SP_dodge+10);
	do return end
	else end


changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_4+1, SP_05,  0x80,  -1,  0,  0,  0);   -- 全体攻撃用爆発

setDisp( SP_ATK_4, 1, 1);
setMoveKey(  SP_ATK_4,    1,  120,    0,  128);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

--changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
--entryEffect( SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+10, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setShake(SP_ATK_4+10,6,15);
setShake(SP_ATK_4+17,15,9);

setRotateKey( SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+14, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+14, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);

playSe( SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+15);

entryFade( SP_ATK_4+50, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+60);
end

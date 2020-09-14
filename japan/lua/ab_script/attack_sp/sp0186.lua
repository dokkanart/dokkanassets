print ("[lua]sp0186");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 107022;--溜め1
SP_02 = 107023;--溜め2
SP_03 = 107026;--小さい岩が上昇
SP_04 = 107024;--発動
SP_05 = 107027;--大きい岩が上昇
SP_06 = 107025;--迫る
SP_07 = 1563;--魔人ベジータ・ファイナルエクスプロージョンで使用
SP_08 = 1564;--魔人ベジータ・ファイナルエクスプロージョンで使用


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
SE_09 = 208; --HIT1023
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -104,   0);
setMoveKey(   1,   0,    0, -104,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

SP_start =-39

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( SP_start+39, 0);
changeAnime( SP_start+ 30, 0, 30);                       -- 溜め!

entryFadeBg( SP_start+ 30, 0, 130, 0, 10, 10, 10, 200);       -- ベース暗め　背景
setMoveKey(   SP_start+ 70,   0,    0, -54,   0);


	if (_IS_PLAYER_SIDE_ == 1) then

		speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
		setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
		speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
		setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

	else



	end

--playSe( SP_start+ 80, SE_04);

playSe( SP_start+ 70, SE_05);

playSe( SP_start+ 90, SE_03);
playSe( SP_start+ 110, SE_03);
playSe( SP_start+ 130, SE_03);
playSe( SP_start+ 150, SE_03);


SSEN = entryEffectLife( SP_start+ 70, 906, 100, 0,  -1,  0,  0,  0); 
setEffScaleKey( SP_start+ 70, SSEN, 1.5, 1.5);


entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_start+  70,   311, 99, 0x40+0x80,  0,  1,  0,  -100); -- オーラ
setEffAlphaKey( SP_start+70, aura, 155);
setEffScaleKey( SP_start+ 70, aura, 2.5, 2.5);

setShakeChara( SP_start+ 70, 0, 100, 5);
kame_hand = entryEffectLife( SP_start+ 30, SP_01, 140, 0x40+0x100,  0,  300,  0,  0);   -- 溜め1
kame_hand2 = entryEffectLife( SP_start+ 30, SP_02, 140, 0x40+0x100,  0,  300,  0,  0);   -- 溜め2(溜め1の上に重ねて使用)
iwas = entryEffectLife( SP_start+ 70, SP_03, 399, 0x40+0x100,  0,  300,  0,  0);   -- 小さい岩が上昇

--entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190 -20, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);
setMoveKey( SP_start+   170,   0,    0, -54,   0);

--[[playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( SP_start+ 255-2, 3, 2+2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start+ 257);

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+  257, 0, 17);                       -- 溜め!

setScaleKey( SP_start+   257,   0, 4.5, 4.5);
setScaleKey( SP_start+ 280,   0, 3.0, 3.0);

setScaleKey( SP_start+ 303,   0, 1.5, 1.5);
--setScaleKey( SP_start+ 315,   0, 1.5, 1.5);

--setScaleKey( SP_start+ 260,   0, 0.6, 0.6);
setDisp( SP_start+ 257, 0, 1);

setMoveKey( SP_start+  257,    0,      0,  0,   0);

kamehame_beam3 = entryEffectLife( SP_start+ 257, SP_04, 112, 0x40+0x100,  0,  300,  0,  0);   -- 発動
setEffScaleKey( SP_start+ 257, kamehame_beam3, 5.0, 5.0);
setEffScaleKey( SP_start+ 280, kamehame_beam3, 3.5, 3.5);
setEffScaleKey( SP_start+ 300, kamehame_beam3, 2.0, 2.0);
setEffScaleKey( SP_start+ 330, kamehame_beam3, 1.0, 1.0);

iwal = entryEffectLife( SP_start+ 257, SP_05, 212, 0x40+0x100,  0,  300,  0,  0);   -- 大きい岩が上昇

setShakeChara( SP_start+ 257, 0, 73, 5);
setShakeChara( SP_start+ 330, 0, 41, 15);

playSe( SP_start+ 257, 1034);
playSe( SP_start+ 272, 1034);
playSe( SP_start+ 284, 1034);
playSe( SP_start+ 296, 1034);
playSe( SP_start+ 308, 1034);

changeAnime( SP_start+ 320, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey( SP_start+ 330,   0, 0.8, 0.8);
playSe( SP_start+ 320, 1060);


entryFade( SP_start+ 350, 20, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( SP_start+ 371,   0, 0.8, 0.8);
--removeAllEffect( SP_start+ 371);

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 257, 0, 118, 0, 10, 10, 10, 200);       -- ベース暗め　背景

--entryEffectLife( SP_start+ 260, 920, 115, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_start+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SP_start+ 257, 911, 112, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
SE00 = playSe( SP_start+ 300, SE_07);

--stopSe( SP_start+ 370, 1, 10 );

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setScaleKey( SP_start+ 375,   0, 0.3, 0.3);
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  235,  -30,   0);
setMoveKey( SP_start+  370,    1,  235,  -30,   0);
setMoveKey( SP_start+  371,    1,  235,  -30,   0);

setScaleKey( SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start+  400,    1,   50,  -30,   0);
setScaleKey( SP_start+  400,   1,   1.6,  1.6);


kamehame_beam2 = entryEffect( SP_start+ 370, SP_06,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setDamage( SP_start+ 452, 1, 0);  -- ダメージ振動等
setEffScaleKey( SP_start+ 370, kamehame_beam2, 1.0, 1.2);


setDisp( SP_start+ 430, 1, 0);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start+ 370, 0, 99, 0, 10, 10, 10, 200);          -- ベース暗め　背景

sen3 = entryEffectLife( SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( SP_start+370,sen3,45);

-- 書き文字エントリー

	if (_IS_PLAYER_SIDE_ == 1) then

		ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
		setEffShake( SP_start+370, ct, 99, 20);
		setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
		setEffRotateKey( SP_start+370, ct, 70);
		setEffAlphaKey( SP_start+370, ct, 255);
		setEffAlphaKey( SP_start+430, ct, 255);
		setEffAlphaKey( SP_start+450, ct, 0);

	else

		ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ文字反転
		setEffShake( SP_start+370, ct, 99, 20);
		setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
		setEffRotateKey( SP_start+370, ct, -70);
		setEffAlphaKey( SP_start+370, ct, 255);
		setEffAlphaKey( SP_start+430, ct, 255);
		setEffAlphaKey( SP_start+450, ct, 0);

	end

entryFade( SP_start+ 462, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 343; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE00, 0 );

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
-- 爆発 (110F)
------------------------------------------------------
playSe( SP_start+ 390, SE_06);
playSe( SP_start+ 455, SE_09);


entryEffect( SP_start+ 471, SP_07, 0,  -1,  0,  0,  0);   -- 爆発
iwas = entryEffectLife( SP_start+ 472, SP_03, 118, 0,  -1,  0,  0,  0);   -- 小さい岩が上昇
iwal = entryEffectLife( SP_start+ 472, SP_05, 118, 0,  -1,  0,  0,  0);   -- 大きい岩が上昇
playSe( SP_start+ 480, 203);

--entryEffectLife( SP_start+ 471, 1563, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

playSe( SP_start+ 480, 1023);
playSe( SP_start+ 520, SE_10);
--playSe( SP_start+ 530, SE_10);

setDamage( SP_start+ 526, 1, 0);  -- ダメージ振動等

--playSe( SP_start+ 473, SE_11);
shuchusen = entryEffectLife( SP_start+ 473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( SP_start+ 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+526);

entryFade( SP_start+ 580, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+590);

end

if (_IS_SPECIAL_AIM_ALL_ == 1) then

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


setDisp( SP_ATK_4, 1, 1);
setMoveKey(  SP_ATK_4,    1,  120,    0,  128);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
ef1=entryEffect( SP_ATK_4+1, SP_08,  0x80,  -1,  0,  0,  0);   -- 全体攻撃用爆発
setEffScaleKey( SP_ATK_4+1, ef1, 1.1, 1.1 );
setEffScaleKey( SP_ATK_4+80, ef1, 1.1, 1.1 );
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,    -250,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,    0,  -100);
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
ct = entryEffectLife( SP_ATK_4+14, 10005, 100, 0, -1, 0, -100, 230); -- ガッ
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

playSe( SP_ATK_4+20, SE_11);
shuchusen = entryEffectLife( SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+20, 1600,  0x00,  -1,  0,30, -70);   -- ひび割れ

entryFadeBg( SP_ATK_4, 0, 90, 0, 10, 10, 10, 200);          -- ベース暗め　背景

setDamage( SP_ATK_4+33, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage(SP_ATK_4+33);

entryFade( SP_ATK_4+70, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+80);

end

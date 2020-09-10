print ("[lua]sp0186");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 107047;--煙手前(出だし)
SP_02 = 107048;--煙奥&地面(出だし)
SP_03 = 107049;--煙手前(ループ)
SP_04 = 107050;--煙奥&地面(ループ)
SP_05 = 107051;--煙手前（速い）
SP_06 = 107052;--煙奥&地面（速い）
SP_07 = 107053;--螺旋オーラ
SP_08 = 107054;--さらばカットイン
SP_09 = 107055;--ベジータぼかし
SP_10 = 107056;--爆発遠景
SP_11 = 107057;--岩（大）
SP_12 = 107058;--命中
SP_13 = 107059;--岩（小）
SP_14 = 1601;--大爆発１(通常爆発)
SP_15 = 1602;--大爆発２(全体攻撃背景)
SP_16 = 1603;--大爆発３(全体攻撃爆発)
SP_17 = 190005;--地面

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

changeAnime( 0, 0, 30);                       -- 立ち
setAnimeLoop( 0, 0, 1);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -204,   0);
setMoveKey(   1,   0,    0, -204,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

--SP_start =-39

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then
------------------------------------------------------
--  気溜め_1(100F)
------------------------------------------------------
setVisibleUI( 0, 0);
changeAnime( 0, 0, 30);                       -- 溜め!
setAnimeLoop( 0, 0, 1);

entryFadeBg( 0, 0, 130, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--playSe( SP_start+ 80, SE_04);

playSe( 0, SE_05);

playSe( 20, SE_03);
playSe( 40, SE_03);
playSe( 60, SE_03);
--playSe( 80, SE_03);

syutyusen = entryEffectLife( 0, 906, 85, 0,  -1,  0,  0,  0); 
setEffScaleKey( 0, syutyusen, 1.3, 1.3);

entryFade( 80, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryEffect( 0,   SP_04,   0x40+0x80,   0,  300,  0,  200);--煙奥&地面(ループ)
entryEffect( 0,   SP_03,   0x40+0x100,   0,  300,  0, 200);--煙手前(ループ)
entryEffectLife( 0,   SP_17, 85, 0x40+0x80,   0,  300,  0,  -200);--地面

aura = entryEffectLife( 0,   311, 85, 0x40+0x100,  0,  300,  0,  -200); -- オーラ
--setEffAlphaKey( SP_start+70, aura, 155);
setEffScaleKey( 0, aura, 1.5, 1.5);

entryEffectLife( 0,   SP_13, 85, 0x100,  0,  -1,  0,  0);--岩（小）

setShakeChara( 0, 0, 85, 5);

entryFadeBg( 0, 0, 85, 0, 0, 0, 0, 255);-- ベース暗め　背景

--entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);

shuchusen_01 = entryEffectLife( 0, 906, 85, 0x100,  -1, 0,  0,  0); --集中線
setEffScaleKey( 0, shuchusen_01, 1.3, 1.3);

	if (_IS_PLAYER_SIDE_ == 1) then

		speff = entryEffect( 0,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
		setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
		speff = entryEffect( 0,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
		setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

	else



	end

-- 書き文字エントリー
ct = entryEffectLife( 10, 10008, 75, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( 10, ct, 75, 8);
setEffScaleKey( 10, ct, 1.4, 1.4);

spep_1 = 85;

------------------------------------------------------
--  気溜め_2(100F)
------------------------------------------------------

setShakeChara( spep_1, 0, 95, 5);

setMoveKey(  spep_1+95,   0,    0, -204,   0);
-- ** エフェクト等 ** --

playSe(  spep_1+30, SE_10);

shuchusen_02 = entryEffectLife( spep_1+30, 906, 65, 0x100,  -1, 0,  0,  0); --集中線
setEffScaleKey( spep_1+30, shuchusen_02, 1.3, 1.3);

entryEffect( spep_1,   SP_04,   0x40+0x80,   0,  300,  0,  200);--煙奥&地面(ループ)
entryEffect( spep_1,   SP_03,   0x40+0x100,   0,  300,  0, 200);--煙手前(ループ)
entryEffectLife( spep_1,   SP_17, 95, 0x40+0x80,   0,  300,  0,  -200);--地面

entryEffect( spep_1,   SP_07, 0x40+0x100,  0,  300,  0,  0); -- 螺旋状オーラ

entryEffectLife( spep_1,   SP_13, 95, 0x100,  0,  -1,  0,  0);--岩（小）

entryFadeBg( spep_1, 0, 95, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_1+90, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+95;

------------------------------------------------------
-- さらばだ、カカロット(90F)
-----------------------------------------------------

playSe( spep_2, SE_04);

    if (_IS_PLAYER_SIDE_ == 1) then

    entryEffect( spep_2, SP_08, 0,  -1,  0,  0,  0); 
    
    else
    
    bejita = entryEffect( spep_2, SP_08, 0,  -1,  0,  0,  0); 
    setEffScaleKey( spep_2, bejita, -1.0, 1.0);

    end

entryFade( spep_2+95, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+100;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_3-1,   0, 1.5, 1.5);
setScaleKey( spep_3,   0, 1.0, 1.0);
setMoveKey( spep_3,   0,    0, -54,   0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_3+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_3+64, SE_06);

spep_4 = spep_3+89;

------------------------------------------------------
-- ベジータ、光の中へ…(110F)
------------------------------------------------------
setDisp( spep_4, 0, 1);
changeAnime( spep_4, 0, 31); -- 溜め! 
setAnimeLoop( spep_4, 0, 1);

setShakeChara( spep_4, 0, 109, 5);

setMoveKey( spep_4,    0,      0,  0,   0);

setScaleKey( spep_4,   0, 1.5, 1.5);
setScaleKey( spep_4+60,   0, 0.5, 0.5);--303
setScaleKey( spep_4+109,   0, 0.1, 0.1);--303

playSe( spep_4+60, 1060);--320

-- ** エフェクト等 ** --

entryEffectLife( spep_4,   SP_13 , 109, 0x100,   0,  300,  0,  0);--岩（小）
entryEffectLife( spep_4,   SP_11 , 109, 0x100,   0,  300,  0,  0);--岩（大）
entryEffect( spep_4, SP_09, 0x100+0x40,  0,  300,  10,  20); --ベジータぼかし

jimen = entryEffectLife( spep_4,   SP_17, 109, 0x40+0x80,   0,  300,  0,  -800);--地面
setEffScaleKey( spep_4, jimen, 2.0, 2.0);
setEffMoveKey( spep_4+60, jimen, 0,-500);
setEffMoveKey( spep_4+109, jimen, 0,-400);

entryEffect( spep_4, SP_10, 0x80,  -1,  0,  0,  0);--爆発遠景
entryFadeBg( spep_4, 0, 118, 0, 10, 10, 10, 200);       -- ベース暗め　背景--

shuchusen = entryEffectLife( spep_4+3, 911, 112, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+3, shuchusen, 1.5, 1.5);

--[[
-- 書き文字エントリー
ct = entryEffectLife( spep_4+11, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ--268
setEffShake( spep_4+11, ct, 32, 5);
setEffAlphaKey( spep_4+11, ct, 255);
setEffAlphaKey( spep_4+43, ct, 255);--290
setEffAlphaKey( spep_4+53, ct, 0);
setEffScaleKey( spep_4+11, ct, 0.0, 0.0);
setEffScaleKey( spep_4+15, ct, 1.3, 1.3);--272
setEffScaleKey( spep_4+35, ct, 1.3, 1.3);
setEffScaleKey( spep_4+53, ct, 6.0, 6.0);
]]--


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 460; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
setEffScaleKey( SP_dodge, speff, 1.0, 1.0);
setEffAlphaKey( SP_dodge, speff, 255);

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

--playSe( spep_4+53, SE_07);

--stopSe( SP_start+ 370, 1, 10 );

entryFade( spep_4+104, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+109;

------------------------------------------------------
-- 敵命中
------------------------------------------------------
setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
setDisp( spep_5+45, 1, 0);

changeAnime(  spep_5, 1, 108); 
setAnimeLoop( spep_5, 1, 1);

setMoveKey( spep_5,   1,    -800, -400,   0);
setMoveKey( spep_5+20,   1,  -45, -75,   0);
setMoveKey( spep_5+105,   1,  -45, -75,   0);

setScaleKey( spep_5,   1, 2.0, 2.0);
setScaleKey( spep_5+105,   1, 2.0, 2.0);

entryEffect( spep_5, SP_12, 0x80,  -1,  0,  0,  0); 

ryusen = entryEffectLife( spep_5, 914, 105, 0x100,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5,ryusen, -30);
setEffScaleKey(spep_5, ryusen, 1.5, 1.5);

-- ** エフェクト等 ** --
playSe( spep_5, SE_06);
playSe( spep_5+60, SE_02);

setShakeChara( spep_5, 1, 125, 8);

entryFadeBg( spep_5, 0, 105, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--sen3 = entryEffectLife( SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( SP_start+370,sen3,45);

-- 書き文字エントリー

	if (_IS_PLAYER_SIDE_ == 1) then

		ct = entryEffectLife( spep_5, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
		setEffShake( spep_5, ct, 99, 20);
		setEffScaleKey( spep_5, ct, 2.4, 2.4);
		setEffRotateKey( spep_5, ct, 70);
		setEffAlphaKey( spep_5, ct, 255);
		setEffAlphaKey( spep_5+95, ct, 255);--430
		setEffAlphaKey( spep_5+105, ct, 0);--450

	else

		ct = entryEffectLife( spep_5, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ反転
		setEffShake( spep_5, ct, 99, 20);
		setEffScaleKey( spep_5, ct, 2.4, 2.4);
		setEffRotateKey( spep_5, ct, -70);
		setEffAlphaKey( spep_5, ct, 255);
		setEffAlphaKey( spep_5+95, ct, 255);
		setEffAlphaKey( spep_5+105, ct, 0);


	end

entryFade( spep_5+100, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+105;


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_6, SP_14, 0,  -1,  0,  0,  0);   -- 爆発

iwas = entryEffectLife( spep_6+1, SP_13, 118, 0,  -1,  0,  0,  0);   -- 小さい岩が上昇

--[[
playSe( spep_6+9, 1023);--480
playSe( spep_6+49, SE_10);
]]--

playSe( spep_6+9, 1024);
--playSe( spep_6+49, 1024);
--playSe( spep_6+87, 1024);
--playSe( SP_start+ 530, SE_10);

--setDamage( SP_start+ 526, 1, 0);  -- ダメージ振動等

--playSe( SP_start+ 473, SE_11);
shuchusen = entryEffectLife( spep_6, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( SP_start+ 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
--dealDamage( spep_6+55);--526

dealDamage( spep_6+9);--526

entryFade( spep_6+109, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+119);

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
setAnimeLoop( SP_ATK_4+1, 1, 1);
entryEffect( SP_ATK_4+1, SP_15,  0x80,  -1,  0,  0,  0); -- 全体攻撃用背景
entryEffect( SP_ATK_4+1, SP_16,  0x80,  -1,  0,  0,  0); -- 全体攻撃用爆発
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

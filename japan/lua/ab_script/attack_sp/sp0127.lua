print ("[lua]sp0127");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 102060;
SP_02 = 102061;
SP_03 = 102062;
SP_04 = 1550;
SP_05 = 102122;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 43; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1009; --huru
SE_09 = 1010; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

---------------
------------------------------------------------------
-- 全体必殺技の初回時（共通）
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

setVisibleUI(0, 0);

SP_ATK_0 = 0;		--気ダメ
SP_ATK_1 = SP_ATK_0+35;	--突進
--Card = 60;
--Card = SP_ATK_1+122;
--rn_02 = SP_ATK_1+100;		--タックル

Card = SP_ATK_1+100;			--カード表示

SP_ATK_2 = Card+95;			--パンチ
SP_ATK_3 = SP_ATK_2+110;		--ラッシュ
SP_ATK_4 = SP_ATK_3+50+55;		--叩き落とし
--SP_ATK_4 = SP_ATK_3+120;		--叩き落とし
--SP_ATK_5 = SP_ATK_4+90;		--エネルギー波ため
SP_ATK_6 = SP_ATK_4+100;		--エネルギー波発射
--SP_ATK_7 = SP_ATK_6+110;		--直撃
SP_ATK_8 = SP_ATK_6+110;		--地球規模の爆発

SP_start = 8;		


entryFadeBg( SP_ATK_0, 10, 133, 2, 10, 10, 10, 200);       --ベース暗め　背景

changeAnime( SP_ATK_0, 0, 17);                       -- 溜め
changeAnime( SP_ATK_0, 1, 104);                       -- 立ち
setDisp( SP_ATK_0, 1, 0);
entryEffect(  SP_ATK_0+5,   908,   0x80, -1,  0,  0,  0);    -- eff_002

setMoveKey(   SP_ATK_0,   0,    0, 0,   80);
--setMoveKey(   SP_ATK_0,   1,    700, 0,   -128);
setScaleKey(   SP_ATK_0,   0, 1.5, 1.5);

setMoveKey(  SP_ATK_0,    1,  700,  0,   0);


-- ** エフェクト等 ** --
aura = entryEffectLife( SP_ATK_0+5,  311,  28,  0x40, 0,  0,  0,  -115);--気力
setEffScaleKey( SP_ATK_0+5, aura, 0.7, 0.7);
setEffScaleKey( SP_ATK_0+28, aura, 0.8, 0.8);
setEffScaleKey( SP_ATK_0+30, aura, 1.0, 1.0);

kieff = entryEffectLife( SP_ATK_0+5,  1502, 50,  0,  0,  0,  0,  90);
setEffScaleKey( SP_ATK_0, kieff, 1.5, 1.5);
playSe( SP_ATK_0+5, SE_01);
--speff = entryEffect(  15+ATK_01,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え

aura2 = entryEffectLife( SP_ATK_0+45,   707,  18,  0x40+0x80, 0,  0,  0,  0);    -- eff_002
setEffScaleKey( SP_ATK_0+45, aura2, 1.2, 1.2);

bom = entryEffect( 33+SP_ATK_0,  11,  0x80,  0,  0,  0,  -10);--爆破
setEffScaleKey( 33+SP_ATK_0, bom, 1.5, 1.5);
playSe( 33+SP_ATK_0, 1033);

setShake(35+SP_ATK_0, 13, 17);
entryEffect( 35+SP_ATK_0,  908,  0x80,  0,  0,  0,  0);--集中線

changeAnime( 34+SP_ATK_0, 0,  116); -- タックル開始

---------------------
-- タックル開始
---------------------

setQuake( SP_ATK_1+3,10,20);
setMoveKey( SP_ATK_1+5, 0,    0, 0,   80);
setMoveKey( SP_ATK_1+10, 0,  0, 0,   60);
setMoveKey( SP_ATK_1+15, 0,  -100, 180,  0);

setVisibleUI(SP_ATK_1+14, 0);
setMoveKey( SP_ATK_1+25, 0,  0, 0,   -128);
setShakeChara( SP_ATK_1+25, 0, 50, 12);
setScaleKey(   SP_ATK_1+35,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_1+55,   0, 1.8, 1.8);

 
--entryFade( SP_ATK_1+37, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_1+15, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(SP_ATK_1+15, ct, 40, 7);
setEffAlphaKey(SP_ATK_1+15, ct, 255);
setEffAlphaKey(SP_ATK_1+35, ct, 255);
setEffAlphaKey(SP_ATK_1+55, ct, 0);
setEffScaleKey( SP_ATK_1+15, ct, 0.1, 0.1);
setEffScaleKey( SP_ATK_1+25, ct, 2.0, 2.0);


setShakeChara( SP_ATK_1+65, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_1+55, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_ATK_1+55, ct, 40, 8);
setEffScaleKey(SP_ATK_1+55, ct, 1.4, 1.4);

entryEffectLife( SP_ATK_1+30, 906, 75, 0x00,  -1, 0,  0,  0);   -- 集中線

	if (_IS_PLAYER_SIDE_ == 1) then


		speff = entryEffect(  SP_ATK_1+45,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
		setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
		speff = entryEffect(  SP_ATK_1+45,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
		setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


	else



	end

setMoveKey( SP_ATK_1+80, 0,  0, 0,   -58);
--playSe( SP_ATK_1+80,  SE_05);

setScaleKey( SP_ATK_1+80,   0, 1.2, 1.2);
setScaleKey( SP_ATK_1+90,   0, 5, 5);
setScaleKey( SP_ATK_1+98,   0, 5, 5);
setScaleKey( SP_ATK_1+99,   0, 1, 1);

setMoveKey( SP_ATK_1+95, 0,  0, 0,   -128);

setMoveKey( SP_ATK_1+85, 0,  0, 0,   -128);
entryFade( SP_ATK_1+90, 7, 10, 8, 0, 0, 0, 255);     -- black fade

setMoveKey( SP_ATK_1+98, 0,  0, 0,   -128);
setMoveKey( SP_ATK_1+99, 0,  -250, -1100,   0);

setMoveKey(  SP_ATK_1+98,    1,  700,  0,   0);
setMoveKey( SP_ATK_1+99, 1,  100, 0,   0);
changeAnime(  SP_ATK_1+99, 1, 101);

bakuha = entryEffectLife( SP_ATK_1+80,  11, 18, 0x80,  0,  0,  0,  -10);--爆破
setEffScaleKey(SP_ATK_1+80, bakuha, 5.0, 5.0);
setShake(SP_ATK_1+80, 13, 17);
playSe( SP_ATK_1+80, 1033);

syutyusen = entryEffectLife( SP_ATK_1+82,  908, 18, 0x80,  0,  0,  0,  0);--集中線
setEffScaleKey(SP_ATK_1+82, syutyusen, 4.0, 4.0);

eff_002 = entryEffectLife( SP_ATK_1+88,   707,  12,  0x40+0x80, 0,  0,  0,  0);    -- eff_002
setEffScaleKey(SP_ATK_1+88, eff_002, 4.0, 4.0);

------------------------------------------------------
-- カードカットイン表示
------------------------------------------------------
removeAllEffect(Card-1);


if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( Card, SE_05);
speff = entryEffect( Card, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	if (_IS_PLAYER_SIDE_ == 1) then
		print ("_SPECIAL_SKILL_LEVEL_ == 1");
		playSe( Card, SE_05);
		speff = entryEffect( Card, 1120, 0, -1, 0, 0, 0); -- カード
		setEffReplaceTexture( speff, 1, 1);
		setEffReplaceTexture( speff, 2, 0); -- カード差し替え
		setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
	else
		print ("_SPECIAL_SKILL_LEVEL_ == 1");
		playSe( Card, SE_05);
		speff = entryEffect( Card, 1120, 0, -1, 0, 0, 0); -- カード
		setEffReplaceTexture( speff, 1, 1);
		setEffReplaceTexture( speff, 2, 0); -- カード差し替え
		setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
		setEffScaleKey( Card, speff, 1.0, 1.0);
	end

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	if (_IS_PLAYER_SIDE_ == 1) then
		print ("_SPECIAL_SKILL_LEVEL_ == 2");
		playSe( Card, SE_05);
		speff = entryEffect( Card, 1121, 0, -1, 0, 0, 0); -- カード
		setEffReplaceTexture( speff, 1, 1);
		setEffReplaceTexture( speff, 2, 0); -- カード差し替え
		setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
	else
		print ("_SPECIAL_SKILL_LEVEL_ == 2");
		playSe( Card, SE_05);
		speff = entryEffect( Card, 1121, 0, -1, 0, 0, 0); -- カード
		setEffReplaceTexture( speff, 1, 1);
		setEffReplaceTexture( speff, 2, 0); -- カード差し替え
		setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
		setEffScaleKey( Card, speff, 1.0, 1.0);
	end
end

--味方

changeAnime( Card+5, 0, 31);

setScaleKey( Card+5,   0, 5, 5);
setScaleKey( Card+6,   0, 1, 1);
setMoveKey( Card+5, 0,  0, 0,   -128);
setMoveKey( Card+6, 0,  -750, -350,   0);


--敵
changeAnime(  Card+5, 1, 104);    
setMoveKey( Card+5, 1,  800,  0,  -128);
setMoveKey( Card+6, 1,  50, 0,   0);
--setZanzou(Card+6, 0,  1);
setScaleKey( Card+5,    1,  3, 3);
--setScaleKey( Card+6,    1, 2.5, 2.5);

entryFade( Card+82, 4, 10, 7, 255, 255, 255, 255);     -- white fade
removeAllEffect( Card+90 );



-- 味方移動（画面外へ)
setBgScroll(SP_ATK_2,80);
setEnvZoomEnable(SP_ATK_2+1, 0);
--entryEffectLife( SP_ATK_2+9, 913, 30, 0x80,  -1,  0,  0,  0); -- 流線
entryFadeBg( SP_ATK_2+1,  1,  82,  10, 2,7,69,255);
--[[
tate=entryEffectLife( SP_ATK_2+1, 914, 40, 0x80,  -1,  0,  0,  0);
setEffRotateKey(SP_ATK_2+1,tate,-45);
setEffScaleKey(SP_ATK_2+1,tate,1.7,1.3);
--]]

setScaleKey( SP_ATK_2,    0,  0.1, 0.1);

-------------------------------------------------
--	パンチ
-------------------------------------------------
-- ** エフェクト等 ** --
aura = entryEffectLife(  SP_ATK_2,   311, 26, 0x40,  0,  1,  120,  30); -- オーラ
setEffScaleKey( SP_ATK_2, aura, 1.8, 1.8);
setEffRotateKey(SP_ATK_2, aura, -30);

setMoveKey( SP_ATK_2+3, 0,  -750, 350,   30);
setMoveKey( SP_ATK_2+6, 1,  50,  -10,   0);

--setMoveKey( SP_ATK_2+3, 0,  -750, -350,   0);

--setMoveKey( SP_ATK_2+8, 0,  -150, -150,   0);

--setMoveKey( SP_ATK_2+12, 0,  -100, -40,   0);
changeAnime(  SP_ATK_2, 0, 30);

setDisp( SP_ATK_2, 1, 1);
--setMoveKey( SP_ATK_2+8, 1,  120, -50,   0);
--setMoveKey( SP_ATK_2+12, 1,  100, 0,   0);
--setMoveKey( SP_ATK_2+12, 1, 50,  -10,   0);  
changeAnime(  SP_ATK_2, 1, 102);

sen2 = entryEffectLife( SP_ATK_2, 921, 90, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_ATK_2, sen2, -140);
setEffScaleKey( SP_ATK_2, sen2, 1.6, 1.6);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 245; --エンドフェイズのフレーム数を置き換える

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

setMoveKey( SP_dodge+9, 0,  -1500, 0,   0);

endPhase(SP_dodge+10);
do return end
else end


--setMoveKey( SP_ATK_2+12, 0,  250, 0,   0);
setMoveKey( SP_ATK_2+12, 0,  -100, 0,   0);
setMoveKey( SP_ATK_2+12, 1,  50,  -10,   0);

setMoveKey( SP_ATK_2+14, 1,  220, -100,   0);


setScaleKey( SP_ATK_2+12,    0,  1.5, 1.5);
--setScaleKey( SP_ATK_2+12,    0,  0.5, 0.5);
setScaleKey( SP_ATK_2+12,    1,  1.5, 1.5);

entryEffect( SP_ATK_2+12,   1500, 0,  -1,  0,  0,  0); -- オーラ
--setEffScaleKey(SP_ATK_2+20, db,  2,2);
setEnvZoomEnable( SP_ATK_2+10,  1);

hiteffect2=entryEffect(  SP_ATK_2+12,   908,   0,  -1,   0,  30,  60);
hiteffect=entryEffect(  SP_ATK_2+12,   2009,   0,  -1,   0,  30,  60);
setEffScaleKey( SP_ATK_2+12, hiteffect, 2.4, 2.4);
setEffScaleKey( SP_ATK_2+12, hiteffect2, 2.4, 2.4);

setMoveKey( SP_ATK_2+26, 0,  -750, 350,   30);
setMoveKey( SP_ATK_2+36, 1,  -250, 200,   20);
setScaleKey( SP_ATK_2+25,    0,  0.5, 0.5);

changeAnime( SP_ATK_2+26, 0,  116); -- タックル開始
setScaleKey( SP_ATK_2+26,    0,  1.0, 1.0);

setMoveKey( SP_ATK_2+46, 1,  120, -50,   0);
--setMoveKey( SP_ATK_2+50, 0,  -350, 250,   20);

--setMoveKey( SP_ATK_2+60, 0,  -550, 350,   10);

setMoveKey( SP_ATK_2+50, 0,  -250, 250,   80);
setMoveKey( SP_ATK_2+55, 0,  -250, 250,   60);
setMoveKey( SP_ATK_2+60, 0,  -350, 450,   0);
setMoveKey( SP_ATK_2+70, 0,  -200, 200,   -180);
--setMoveKey( SP_ATK_2+55, 1,  230, -50,   0);


entryEffectLife( SP_ATK_2+14, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線


changeAnime(  SP_ATK_2+12, 1, 107);
entryEffect( SP_ATK_2+12,   5,   0x40,  1,   0,  0,  0);
entryEffect( SP_ATK_2+12,   908,   0,  -1,   0,  0,  0);
entryEffect( SP_ATK_2+12,   906,   0,  1,   0,  0,  0);
playSe( SP_ATK_2+12, 1025);

--aura = entryEffectLife( SP_ATK_2+15,   1500, 39, 0x80,  -1,  0,  0,  0); -- オーラ

--playSe( SP_ATK_2+25, SE_05);
--playSe( SP_ATK_2+20, 1052);
-----------------------------------------

--setZanzou(Card+6, 0,  0);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+17, 10020, 99, 0, -1, 0, -30, 130); 
setEffShake(SP_ATK_2+17, ct, 99, 35);
setEffScaleKey( SP_ATK_2+17, ct, 2.4, 2.4);
setEffAlphaKey(SP_ATK_2+17, ct, 255);
setEffAlphaKey(SP_ATK_2+17+20+5, ct, 255);
setEffAlphaKey(SP_ATK_2+17+25+5, ct, 0);

setQuake( SP_ATK_2+12, 20, 50);

-- ** エフェクト等 ** --
setShakeChara( SP_ATK_2+35, 1, 60, 20);
--entryFadeBg( SP_ATK_2+30, 0, 64, 4, 0, 0, 0, 255);          -- ベース暗め　背景

setScaleKey( SP_ATK_2+75,    0,  1.0, 1.0);

entryFade( SP_ATK_2+75, 5, 10, 5, 255,  255,  255, 255);
setMoveKey( SP_ATK_2+84, 0,  0, -60,   -100);
setMoveKey( SP_ATK_2+84, 1,  120, -50,   0);
setScaleKey( SP_ATK_2+80,    0,  1.5, 1.5);

changeAnime(  SP_ATK_2+85,  0,  3);--ダッシュ
changeAnime(  SP_ATK_2+85,  1,  106);--モーション
setMoveKey( SP_ATK_2+85, 1, 50,  -10,   0);  
setMoveKey( SP_ATK_2+85, 0,  -1500, 0,   0);





------------------------------------------------------
-- 連撃
------------------------------------------------------
----------------------------------------------------
--setScaleKey( SP_ATK_3+2,    0,  0.5, 0.5);

setMoveKey( SP_ATK_3, 0,  -100, 0,   0);
--setMoveKey( SP_ATK_3, 1, 50,  -10,   0);  

setScaleKey( SP_ATK_3+3,    0,  1.0, 1.0);
--setScaleKey( SP_ATK_3+3,    0,  1.5, 1.5);
setScaleKey( SP_ATK_3+3,    1,  1.0, 1.0);

----------------------------------------------------
changeAnime(  SP_ATK_3+3,  0,  9);--パンチ1

hiteff1 = entryEffect(  SP_ATK_3+3,  1,  0,  1,  0,  0,  0);
playSe(SP_ATK_3+4,1000);
setSeVolume(SP_ATK_3+4,1000,90);
entryEffect(  SP_ATK_3+3,  906,  1,  -1,  0,  0,  0);
hiteff2 = entryEffect(  SP_ATK_3+3,  908,  1,  1,  0,  0,  0);

setEffScaleKey( SP_ATK_3+3, hiteff1, 1.0, 1.0);
setEffScaleKey( SP_ATK_3+3, hiteff2, 1.0, 1.0);


changeAnime(  SP_ATK_3+4,  1,  106);--モーション
setShake(  SP_ATK_3+4,  10,  21);
--entryFlashBg(  SP_ATK_3+4,  3,  20,  20,  20);


----------------------------------------------------
changeAnime(  SP_ATK_3+13,  0,  10);--パンチ2

hiteff3 = entryEffect(  SP_ATK_3+13,  1,  0,  1,  0,  0,  0);
playSe(SP_ATK_3+14,1009);
setSeVolume(SP_ATK_3+14,1009,90);
entryEffect(  SP_ATK_3+13,  906,  1,  -1,  0,  0,  0);
hiteff4 = entryEffect(  SP_ATK_3+13,  908,  1,  1,  0,  0,  0);

setEffScaleKey( SP_ATK_3+13, hiteff3, 1.0, 1.0);
setEffScaleKey( SP_ATK_3+13, hiteff4, 1.0, 1.0);

changeAnime(  SP_ATK_3+13,  1,  108);--モーション

setShake(  SP_ATK_3+13,  10,  21);
--entryFlashBg(  SP_ATK_3+13,  3,  20,  20,  20);
----------------------------------------------------
changeAnime(  SP_ATK_3+23,  0,  11);--パンチ3

hiteff5 = entryEffect(  SP_ATK_3+23,  2,  0,  1,  0,  0,  0);
playSe(SP_ATK_3+24,1009);
setSeVolume(SP_ATK_3+24,1009,90);
entryEffect(  SP_ATK_3+23,  906,  1,  -1,  0,  0,  0);
hiteff6 = entryEffect(  SP_ATK_3+23,  908,  1,  1,  0,  0,  0);

setEffScaleKey( SP_ATK_3+23, hiteff5, 1.0, 1.0);
setEffScaleKey( SP_ATK_3+23, hiteff6, 1.0, 1.0);

changeAnime(  SP_ATK_3+23,  1,  106);--モーション

setShake(  SP_ATK_3+23,  10,  21);
--entryFlashBg(  SP_ATK_3+23,  3,  20,  20,  20);
----------------------------------------------------
changeAnime(  SP_ATK_3+33,  0,  14);--キック3

hiteff7 = entryEffect(  SP_ATK_3+33,  6,  0,  1,  0,  0,  0);
playSe(SP_ATK_3+34,1009);
setSeVolume(SP_ATK_3+34,1009,90);
entryEffect(  SP_ATK_3+34,  906,  1,  -1,  0,  0,  0);
hiteff8 = entryEffect(  SP_ATK_3+34,  908,  1,  1,  0,  0,  0);

setEffScaleKey( SP_ATK_3+34, hiteff7, 1.2, 1.2);
setEffScaleKey( SP_ATK_3+34, hiteff8, 1.2, 1.2);

changeAnime(  SP_ATK_3+34,  1,  108);--モーション

setShake(  SP_ATK_3+34,  10,  21);
--entryFlashBg(  SP_ATK_3+34,  3,  20,  20,  20);
----------------------------------------------------
changeAnime(  SP_ATK_3+44,  0,  10);--パンチ2

hiteff9 = entryEffect(  SP_ATK_3+44,  2,  0,  1,  0,  0,  0);
playSe(SP_ATK_3+45,1009);
setSeVolume(SP_ATK_3+45,1009,90);
entryEffect(  SP_ATK_3+44,  906,  1,  -1,  0,  0,  0);
hiteff10 = entryEffect(  SP_ATK_3+44,  908,  1,  1,  0,  0,  0);

setEffScaleKey( SP_ATK_3+44, hiteff9, 1.2, 1.2);
setEffScaleKey( SP_ATK_3+44, hiteff10, 1.2, 1.2);

changeAnime(  SP_ATK_3+44,  1,  106);--モーション

setShake(  SP_ATK_3+44,  10,  21);
--entryFlashBg(  SP_ATK_3+44,  3,  20,  20,  20);
----------------------------------------------------
changeAnime(  SP_ATK_3+54,  0,  9);--パンチ1

hiteff11 = entryEffect(  SP_ATK_3+54,  3,  0,  1,  0,  0,  0);
playSe(SP_ATK_3+55,1000);
setSeVolume(SP_ATK_3+55,1000,90);
entryEffect(  SP_ATK_3+54,  906,  1,  -1,  0,  0,  0);
hiteff12 = entryEffect(  SP_ATK_3+54,  908,  1,  1,  0,  0,  0);

setEffScaleKey( SP_ATK_3+54, hiteff11, 1.2, 1.2);
setEffScaleKey( SP_ATK_3+54, hiteff12, 1.2, 1.2);

changeAnime(  SP_ATK_3+54,  1,  106);--モーション
setShake(  SP_ATK_3+54,  10,  21);
--entryFlashBg(  SP_ATK_3+54,  3,  20,  20,  20);
----------------------------------------------------
changeAnime(  SP_ATK_3+64,  0,  11);--パンチ3

hiteff13 = entryEffect(  SP_ATK_3+64,  3,  0,  1,  0,  0,  0);
playSe(SP_ATK_3+65,1009);
setSeVolume(SP_ATK_3+65,1009,90);
entryEffect(  SP_ATK_3+64,  906,  1,  -1,  0,  0,  0);
hiteff14 = entryEffect(  SP_ATK_3+64,  908,  1,  1,  0,  0,  0);

setEffScaleKey( SP_ATK_3+64, hiteff13, 1.4, 1.4);
setEffScaleKey( SP_ATK_3+64, hiteff14, 1.4, 1.4);

changeAnime(  SP_ATK_3+64,  1,  106);--モーション

setShake(  SP_ATK_3+64,  10,  21);
--entryFlashBg(  SP_ATK_3+64,  3,  20,  20,  20);

----------------------------------------------------
changeAnime(  SP_ATK_3+74,  0,  10);--パンチ2

hiteff15 = entryEffect(  SP_ATK_3+74,  3,  0,  1,  0,  0,  0);
playSe(SP_ATK_3+75,1009);
setSeVolume(SP_ATK_3+75,1009,90);
entryEffect(  SP_ATK_3+74,  906,  1,  -1,  0,  0,  0);
hiteff16 = entryEffect(  SP_ATK_3+74,  908,  1,  1,  0,  0,  0);

setEffScaleKey( SP_ATK_3+74, hiteff15, 1.4, 1.4);
setEffScaleKey( SP_ATK_3+74, hiteff16, 1.4, 1.4);

changeAnime(  SP_ATK_3+74,  1,  106);--モーション

setShake(  SP_ATK_3+74,  10,  21);
--entryFlashBg(  SP_ATK_3+74,  3,  20,  20,  20);

----------------------------------------------------
changeAnime(  SP_ATK_3+84,  0,  14);--キック3

hiteff17 = entryEffect(  SP_ATK_3+84,  6,  0,  1,  0,  0,  0);
playSe(SP_ATK_3+85,1009);
setSeVolume(SP_ATK_3+85,1009,90);
entryEffect(  SP_ATK_3+84,  906,  1,  -1,  0,  0,  0);
hiteff18 = entryEffect(  SP_ATK_3+84,  908,  1,  1,  0,  0,  0);

setEffScaleKey( SP_ATK_3+84, hiteff17, 1.4, 1.4);
setEffScaleKey( SP_ATK_3+84, hiteff18, 1.4, 1.4);

changeAnime(  SP_ATK_3+84,  1,  108);--モーション

setShake(  SP_ATK_3+84,  10,  21);
--entryFlashBg(  SP_ATK_3+84,  3,  20,  20,  20);

----------------------------------------------------
changeAnime(  SP_ATK_3+94,  0,  9);--パンチ1

hiteff19 = entryEffect(  SP_ATK_3+94,  4,  0,  1,  0,  0,  0);
playSe(SP_ATK_3+95,1000);
setSeVolume(SP_ATK_3+95,1000,90);
entryEffect(  SP_ATK_3+94,  906,  1,  -1,  0,  0,  0);
hiteff20 = entryEffect(  SP_ATK_3+94,  908,  1,  1,  0,  0,  0);

setEffScaleKey( SP_ATK_3+94, hiteff19, 1.6, 1.6);
setEffScaleKey( SP_ATK_3+94, hiteff20, 1.6, 1.6);

changeAnime(  SP_ATK_3+94,  1,  106);--モーション
setShake(  SP_ATK_3+94,  10,  21);
--entryFlashBg(  SP_ATK_3+94,  3,  20,  20,  20);
----------------------------------------------------
changeAnime(  SP_ATK_3+104,  0,  11);--パンチ3

hiteff21 = entryEffect(  SP_ATK_3+104,  4,  0,  1,  0,  0,  0);
playSe(SP_ATK_3+105,1009);
setSeVolume(SP_ATK_3+105,1009,90);
entryEffect(  SP_ATK_3+104,  906,  1,  -1,  0,  0,  0);
hiteff22 = entryEffect(  SP_ATK_3+104,  908,  1,  1,  0,  0,  0);

setEffScaleKey( SP_ATK_3+104, hiteff21, 1.6, 1.6);
setEffScaleKey( SP_ATK_3+104, hiteff22, 1.6, 1.6);

changeAnime(  SP_ATK_3+104,  1,  106);--モーション

setShake(  SP_ATK_3+104,  10,  21);
--entryFlashBg(  SP_ATK_3+104,  3,  20,  20,  20);
setMoveKey( SP_ATK_3+104, 0,  -100, 0,   0);


--setScaleKey( SP_ATK_3+33,    0,  1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_3+3, 10014, 96, 0, -1, 0, 0, 155); -- ズドドッ
setEffShake(SP_ATK_3+3, ct, 99, 20);
setEffScaleKey( SP_ATK_3+3, ct, 1.5, 1.5);
--setEffRotateKey(SP_ATK_3+12, ct, 70);
setEffAlphaKey(SP_ATK_3+3, ct, 255);


entryFadeBg( SP_ATK_3, 20, 104, 10, 10, 10, 10, 185);       -- ベース暗め　背景

sen2 = entryEffectLife( SP_ATK_3, 920, 104, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey(spep_3, sen2, 1.3, 1.3);

setScaleKey( SP_ATK_4,    0,  1.0, 1.0);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);

---------------------------------------------------------
--叩きつけ
-------------------------------------------------------
changeAnime(  SP_ATK_4+3,  0,  15);--叩きつけ
hiteff23 = entryEffect(  SP_ATK_4+6,  2009,  0,  1,  0,  0,  0);
--playSe(SP_ATK_4+10,1009);
entryEffect(  SP_ATK_4+10,  906,  1,  -1,  0,  0,  0);
hiteff24 = entryEffect(  SP_ATK_4+11,  908,  1,  1,  0,  0,  0);

setEffScaleKey( SP_ATK_4+6, hiteff23, 1.8, 1.8);
setEffScaleKey( SP_ATK_4+11, hiteff24, 1.8, 1.8);


--カメラ戻す
setEnvZoomEnable(SP_ATK_4+10, 0);
setMoveKey( SP_ATK_4, 0,  -100, 60,   0);

setMoveKey( SP_ATK_4, 1, 50,  -10,   0);  

 
 changeAnime(  SP_ATK_4+3,  1,  107);--モーション
--setMoveKey(  SP_ATK_4+34,  1,  20,  155,  -100);
 setMoveKey(  SP_ATK_4+3,  1,  50,  -10,  20);--HITのタイミング

 setMoveKey(  SP_ATK_4+3,  1,  -130,  90,  20);--ふっ飛ばされる
-- setMoveKey(  SP_ATK_4+5,  1,  50,  -50,  0);
setMoveKey(  SP_ATK_4+8,  1,  20,  90,  -90);
 
--演出
--背景スピード　超高速
setBgScroll(SP_ATK_4,100);

 entryEffect( SP_ATK_4,   1500,   0x80,  -1,  0,  0,  0);

 
-- entryEffect( SP_ATK_4+66,   1501,   0x80,  -1,  0,  0,  0);
  
 entryEffect( SP_ATK_4+3,  908,  0x80,  0,  0,  0,  0);--集中線
 entryEffect( SP_ATK_4+3,   4,   0,  1,  0,  0,  0);    --HIT 
 playSe(SP_ATK_4+3, 1052);
  
 entryEffect( SP_ATK_4+3,   1500,   0x80,  -1,  0,  0,  0);

  entryKakimoji( SP_ATK_4+3,  20,  1,  -1,  0,  60,  -170);--gagaga


--F/o
entryFade( SP_ATK_4+42, 5, 10, 5, 255,  255,  255, 255);
------------------------------叩き付け
--カメラ
setEnvZoomEnable(SP_ATK_4+56,0);

--P
  setMoveKey(  SP_ATK_4+56,  0,-250,  250,  56);
  setMoveKey(  SP_ATK_4+57,  0,-700,  0,  0);

--E
changeAnime(  SP_ATK_4+56,  1,  108);

 --角度
   setRotateKey(SP_ATK_4+56,1,0);
   setRotateKey(SP_ATK_4+57,1, 30);

   --ふっ飛び
  --  setMoveKey(  SP_ATK_4+56,  1,  -100,  150,  30);	--
    setMoveKey(  SP_ATK_4+56,  1,  50,  -50,  0);
    setMoveKey(  SP_ATK_4+57,  1,  -400,  300,  30);
    setMoveKey(  SP_ATK_4+76,  1,  350,  -500,  30);

--爆破演出1
  Bmeff = entryEffect(SP_ATK_4+76,    1509,  0,  -1,  0,  300,  -200);   -- HIT
  playSe(SP_ATK_4+76,1023);
  setEffMoveKey(SP_ATK_4+96, Bmeff,  -1500,-250);
  setEffScaleKey(SP_ATK_4+76,Bmeff,2,2);
--シェイク
  setShake(SP_ATK_4+81,10,15);

  entryFadeBg(SP_ATK_4+76, 0,5,5,255,255,255,255);
  entryFlashBg(SP_ATK_4+81, 3,255,255,255);

entryFade( SP_ATK_4+86, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
setDisp( SP_ATK_4+91, 1, 0);
removeAllEffect( SP_ATK_4+91);

	------------------------------------------------------
	-- カメハメハ発射(110F)
	------------------------------------------------------
	changeAnime( SP_ATK_6, 0, 31);                                    -- かめはめ発射ポーズ
	
	--setMoveKey(  SP_ATK_6-1,    0,      0,  0,   0);
	setMoveKey(  SP_ATK_6-1,  0,-700,  0,  0);
	setMoveKey(  SP_ATK_6,    0,      -600,  0,   50);
	
	setMoveKey(  SP_ATK_6+30,    0,      -600,  0,   0);
	setMoveKey(  SP_ATK_6+40,    0,      -150,  0,   0);
	--setMoveKey(  SP_ATK_6+30,    0,   -30,  0,   20);
	playSe(SP_ATK_6,1042);
	--playSe(SP_ATK_6+45,1034);

--	kame_hand = entryEffectLife( SP_ATK_6, SP_05, 109, 0x40,  0,  300,  -120,  -20);   -- 溜め
	kame_hand = entryEffect( SP_ATK_6, SP_05, 0x40,  0,  300,  -60,  -10);   -- 溜め
	setEffScaleKey( SP_ATK_6, kame_hand, 2.0, 2.0);

	kamehame_beam = entryEffectLife( SP_start+ SP_ATK_6+40, SP_02, 113, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
	playSe( SP_start+ SP_ATK_6+40, SE_07);
	
	--spname = entryEffect( SP_start+ SP_ATK_6, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
	--setEffReplaceTexture( SP_start+spname, 7, 4);                                  -- 技名テクスチャ差し替え
	
	-- 途中からカメハメハが伸びる
	setMoveKey( SP_start+  SP_ATK_6+50,    0,   -350,  0,   50);
	setMoveKey( SP_start+  SP_ATK_6+55,    0,   -500,  0,   65);
	--setMoveKey( SP_start+  SP_ATK_6+48,    0,   -1100,  0,   0);
	setDisp( SP_start+ SP_ATK_6+55, 0, 0);
	setMoveKey( SP_start+  SP_ATK_6+60,    0,   -400,  0,   65);

	--[[

	setEffMoveKey(SP_start+  SP_ATK_6+40, kamehame_beam, 0, 0, 0);
	setEffMoveKey(SP_start+  SP_ATK_6+59, kamehame_beam, 0, 0, 0);
	setEffMoveKey(SP_start+  SP_ATK_6+60, kamehame_beam, 350, 230, 0);
	setEffMoveKey(SP_start+  SP_ATK_6+70, kamehame_beam, 550, 230, 0);

	setEffScaleKey( SP_start+  SP_ATK_6+40, kamehame_beam, 1.0, 1.0);
	setEffScaleKey( SP_start+  SP_ATK_6+60, kamehame_beam, 1.0, 1.0);
	setEffScaleKey( SP_start+  SP_ATK_6+75, kamehame_beam, 1.6, 1.6);
	--]]

	--setMoveKey( SP_start+  SP_ATK_6+75,    0,   -1400,  0,   65);

	entryFade( SP_start+ SP_ATK_6+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
	
	-- ** エフェクト等 ** --
	entryFadeBg( SP_ATK_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
	--entryFadeBg( SP_ATK_6+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
	entryFadeBg( SP_ATK_6+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景
	entryFadeBg( SP_ATK_6+50, 10, 56, 0, 20, 20, 20, 205);       -- ベース暗め　背景
	
	sen2 = entryEffectLife( SP_ATK_6, 921, 39, 0x80,  -1,  0,  0,  0); -- 流線
	setEffRotateKey( SP_ATK_6, sen2, 190);
	setShakeChara( SP_start+ SP_ATK_6+10, 0, 24, 50);
	setEffScaleKey( SP_ATK_6, sen2, 1.6, 1.6);

	shuchusen = entryEffectLife( SP_ATK_6, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
	setEffScaleKey( SP_ATK_6, shuchusen, 1.0, 1.0);
	setEffScaleKey( SP_start+ SP_ATK_6+40, shuchusen, 1.0, 1.0);
	setEffScaleKey( SP_start+ SP_ATK_6+49, shuchusen, 2.0, 2.0);
	
	
	
	-- 書き文字エントリー
	ct = entryEffectLife( SP_start+ SP_ATK_6+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
	setEffShake( SP_start+ SP_ATK_6+8, ct, 32, 5);
	setEffAlphaKey( SP_start+ SP_ATK_6+8, ct, 255);
	setEffAlphaKey( SP_start+ SP_ATK_6+30, ct, 255);
	setEffAlphaKey( SP_start+ SP_ATK_6+40, ct, 0);
	setEffScaleKey( SP_start+ SP_ATK_6+8, ct, 0.0, 0.0);
	setEffScaleKey( SP_start+ SP_ATK_6+12, ct, 1.3, 1.3);
	setEffScaleKey( SP_start+ SP_ATK_6+32, ct, 1.3, 1.3);
	setEffScaleKey( SP_start+ SP_ATK_6+40, ct, 6.0, 6.0);
	--playSe( SP_ATK_6+40, SE_07);
	entryFade( SP_start+ SP_ATK_6+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
	------------------------------------------------------
	-- 爆発 (110F)
	------------------------------------------------------
	entryEffect( SP_ATK_8-1, SP_04, 0,  -1,  0,  0,  0);   -- 爆発
	setDisp( SP_ATK_8-1, 1, 1);
	setMoveKey(  SP_ATK_8-1,    1,  100,  0,   0);
	setScaleKey( SP_ATK_8-1,    1,  1.0, 1.0);
	setMoveKey(  SP_ATK_8,    1,    0,   0,   128);
	setScaleKey( SP_ATK_8,    1,  0.1, 0.1);
	
	changeAnime( SP_ATK_8, 1, 107);                         -- 手前ダメージ
	--entryEffect( SP_ATK_8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
	playSe( SP_ATK_8+8, SE_10);
	
	setMoveKey(  SP_ATK_8+8,   1,    0,   0,   128);
	setMoveKey(  SP_ATK_8+15,   1,  -60,  -200,  -100);
	--setMoveKey(  SP_ATK_8+16,   1,  -60,  -200,  -100);
	setDamage( SP_ATK_8+16, 1, 0);  -- ダメージ振動等
	setShake(SP_ATK_8+7,6,15);
	setShake(SP_ATK_8+13,15,10);
	
	setRotateKey( SP_ATK_8,  1,  30 );
	setRotateKey( SP_ATK_8+2,  1,  80 );
	setRotateKey( SP_ATK_8+4,  1, 120 );
	setRotateKey( SP_ATK_8+6,  1, 160 );
	setRotateKey( SP_ATK_8+8,  1, 200 );
	setRotateKey( SP_ATK_8+10,  1, 260 );
	setRotateKey( SP_ATK_8+12,  1, 320 );
	setRotateKey( SP_ATK_8+14,  1,   0 );
	
	setShakeChara( SP_ATK_8+15, 1, 5,  10);
	setShakeChara( SP_ATK_8+20, 1, 10, 20);
	
	-- 書き文字エントリー
	
	--playSe( SP_ATK_8+3, SE_11);
	--shuchusen = entryEffectLife( SP_ATK_8+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
	
	-- ダメージ表示
	dealDamage(SP_ATK_8+16);
	
	entryFade( SP_ATK_8+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
	
	endPhase(SP_ATK_8+180);

end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then --- 全体必殺技の初回時

-- 全体必殺技の最初以外
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

------------------------------------------------------
-- 回避
------------------------------------------------------

SP_ATK_4 = 0;

setVisibleUI( SP_ATK_4, 0);
setDisp( SP_ATK_4, 0, 0);

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

	setMoveKey( SP_dodge+9, 0,  -1500, 0,   0);

	endPhase(SP_dodge+10);
	do return end
	else end

setDisp( SP_ATK_4, 1, 1);
setMoveKey(  SP_ATK_4,    1,  120,    0,  128);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+1, SE_10);

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

entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+120);

-- ！全体必殺技の最初以外
end

print ("[lua]sp0127 end");

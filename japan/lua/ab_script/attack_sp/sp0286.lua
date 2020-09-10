print ("[lua]sp0127");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 102173;
SP_01e = 102174;
SP_02 = 102175;
SP_02e = 102176;
SP_03 = 102177;
SP_03e = 102178;
SP_04 = 1563;
SP_05 = 102179;
SP_05e = 102180;
SP_06 = 102181;
SP_06e = 102182;
SP_07 = 102183;
SP_08 = 102163;

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
-- 溜めから突っ込んでいく
------------------------------------------------------
if (_IS_PLAYER_SIDE_ == 1) then

--if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

setVisibleUI(0, 0);

SP_ATK_0 = 0;		--気ダメ
SP_ATK_1 = SP_ATK_0+35;	--突進
--Card = 60;
--Card = SP_ATK_1+122;
--rn_02 = SP_ATK_1+100;		--タックル

--Card = SP_ATK_1+100;			--カード表示

--SP_ATK_2 = Card+100;			--パンチ
--SP_ATK_3 = SP_ATK_2+110;		--ラッシュ
--SP_ATK_4 = SP_ATK_3+50+55;		--叩き落とし
----SP_ATK_4 = SP_ATK_3+120;		--叩き落とし
----SP_ATK_5 = SP_ATK_4+90;		--エネルギー波ため
--SP_ATK_6 = SP_ATK_4+100;		--エネルギー波発射
----SP_ATK_7 = SP_ATK_6+110;		--直撃
--SP_ATK_8 = SP_ATK_6+110;		--地球規模の爆発


Card = SP_ATK_1+100;			--カード表示

--SP_ATK_2 = Card+100;			--パンチ
SP_ATK_3 = Card+100;		--ラッシュ
SP_ATK_4 = SP_ATK_3+50+55+277;		--叩き落とし
--SP_ATK_4 = SP_ATK_3+120;		--叩き落とし
--SP_ATK_5 = SP_ATK_4+90;		--エネルギー波ため
SP_ATK_6 = SP_ATK_4+128;		--エネルギー波発射
--SP_ATK_7 = SP_ATK_6+110;		--直撃
SP_ATK_8 = SP_ATK_6+110;		--地球規模の爆発

SP_start = 8;		


entryFadeBg( SP_ATK_0, 10, 133, 2, 10, 10, 10, 200);       --ベース暗め　背景


changeAnime( SP_ATK_0, 0, 17);                       -- 溜め
changeAnime( SP_ATK_0, 1, 104);                       -- 立ち
setDisp( SP_ATK_0, 1, 0);
setDisp( SP_ATK_0, 0, 0);

entryEffect(  SP_ATK_0+5,   SP_01,   0x80, -1,  0,  0,  0);    -- 手前から奥にザマスがためる

zamas = entryEffect(  SP_ATK_0+35,   SP_02,   0x80, -1,  0,  0,  0);    -- 奥から手前にザマスが突っ込む
setEffShake(SP_ATK_0+35, zamas, 100, 15);
setEffMoveKey(SP_ATK_0+35,  zamas, 0,  0, 0);

playSe( SP_ATK_0+35, 1033);

entryEffect(  SP_ATK_0+5,   908,   0x80, -1,  0,  0,  0);    -- eff_002

setMoveKey(   SP_ATK_0,   0,    0, 0,   80);
setMoveKey(   SP_ATK_0+1,   0,    0, 0,   80);
setMoveKey(   SP_ATK_0+2,   0,    0, 0,   80);
setMoveKey(   SP_ATK_0+3,   0,    0, 0,   80);
--setMoveKey(   SP_ATK_0,   1,    700, 0,   -128);
setScaleKey(   SP_ATK_0,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_0+1,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_0+2,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_0+3,   0, 1.5, 1.5);

setMoveKey(  SP_ATK_0,    1,  700,  0,   0);


-- ** エフェクト等 ** --
--aura = entryEffectLife( SP_ATK_0+5,  311,  28,  0x40, 0,  0,  0,  -115);--気力
--setEffScaleKey( SP_ATK_0+5, aura, 0.7, 0.7);
--setEffScaleKey( SP_ATK_0+28, aura, 0.8, 0.8);
--setEffScaleKey( SP_ATK_0+30, aura, 1.0, 1.0);

kieff = entryEffectLife( SP_ATK_0+5,  1502, 50,  0,  0,  0,  0,  90);
setEffScaleKey( SP_ATK_0, kieff, 1.5, 1.5);
setEffMoveKey(SP_ATK_0+5,  kieff, 0,  0, 0);

playSe( SP_ATK_0+5, SE_01);
--speff = entryEffect(  15+ATK_01,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え

--aura2 = entryEffectLife( SP_ATK_0+45,   707,  18,  0x40+0x80, 0,  0,  0,  0);    -- eff_002
--setEffScaleKey( SP_ATK_0+45, aura2, 1.2, 1.2);

--bom = entryEffect( 33+SP_ATK_0,  11,  0x80,  0,  0,  0,  -10);--爆破
--setEffScaleKey( 33+SP_ATK_0, bom, 1.5, 1.5);
--playSe( 33+SP_ATK_0, 1033);

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




		speff = entryEffect(  SP_ATK_1+45,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
		setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
		speff = entryEffect(  SP_ATK_1+45,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
		setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


	--else



	--end

setMoveKey( SP_ATK_1+80, 0,  0, 0,   -58);
--playSe( SP_ATK_1+80,  SE_05);

setScaleKey( SP_ATK_1+80,   0, 1.2, 1.2);
setScaleKey( SP_ATK_1+90,   0, 5, 5);
setScaleKey( SP_ATK_1+98,   0, 5, 5);
setScaleKey( SP_ATK_1+99,   0, 1, 1);

setMoveKey( SP_ATK_1+95, 0,  0, 0,   -128);

setMoveKey( SP_ATK_1+85, 0,  0, 0,   -128);
--entryFade( SP_ATK_1+90, 7, 10, 8, 0, 0, 0, 255);     -- black fade
entryFade( SP_ATK_1+90, 7, 10, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

setMoveKey( SP_ATK_1+98, 0,  0, 0,   -128);
setMoveKey( SP_ATK_1+99, 0,  -250, -1100,   0);

setMoveKey(  SP_ATK_1+98,    1,  700,  0,   0);
setMoveKey( SP_ATK_1+99, 1,  100, 0,   0);
changeAnime(  SP_ATK_1+99, 1, 100);

--bakuha = entryEffectLife( SP_ATK_1+80,  11, 18, 0x80,  0,  0,  0,  -10);--爆破
--setEffScaleKey(SP_ATK_1+80, bakuha, 5.0, 5.0);
--setShake(SP_ATK_1+80, 13, 17);

syutyusen = entryEffectLife( SP_ATK_1+82,  908, 18, 0x80,  0,  0,  0,  0);--集中線
setEffScaleKey(SP_ATK_1+82, syutyusen, 4.0, 4.0);

--eff_002 = entryEffectLife( SP_ATK_1+88,   707,  12,  0x40+0x80, 0,  0,  0,  0);    -- eff_002
--setEffScaleKey(SP_ATK_1+88, eff_002, 4.0, 4.0);



--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( Card + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( Card + 0, SE_05 );]]

--味方

changeAnime( Card+5, 0, 3);

setScaleKey( Card+5,   0, 5, 5);
setScaleKey( Card+6,   0, 1, 1);
setMoveKey( Card+5, 0,  0, 0,   -128);
setMoveKey( Card+6, 0,  -2750, 0,   0);


--敵
setDisp( Card+5, 1, 1);
changeAnime(  Card+5, 1, 100);    
setMoveKey( Card+5, 1,  800,  0,  -128);
setMoveKey( Card+6, 1,  50, 0,   0);
--setZanzou(Card+6, 0,  1);
setScaleKey( Card+5,    1,  3, 3);
--setScaleKey( Card+6,    1, 2.5, 2.5);

entryFade( Card+90, 5,  3, 5, 255, 255, 255, 255);     -- white fade
--removeAllEffect( Card+90 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( Card + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( Card + 0, shuchusen2, 90, 20 );

setEffMoveKey( Card + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( Card + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( Card + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( Card + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( Card + 0, shuchusen2, 0 );
setEffRotateKey( Card + 90, shuchusen2, 0 );

setEffAlphaKey( Card + 0, shuchusen2, 255 );
setEffAlphaKey( Card + 90, shuchusen2, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( Card, SE_05);
speff = entryEffect( Card, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( Card, SE_05);
speff = entryEffect( Card, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( Card, SE_05);
speff = entryEffect( Card, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 次の準備 ** --
entryFade( Card+80, 4,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




--235
------------------------------------------------------
-- 3連の重攻撃
------------------------------------------------------;

pan = entryEffect(  SP_ATK_3,  SP_03,  0x100,  -1,  0,  0,  0);
--setScaleKey( SP_ATK_3-10,   1, 2.0, 2.0);
--setScaleKey( SP_ATK_3+20,   1, 2.0, 2.0);
setScaleKey( SP_ATK_3+35,   1, 1.5, 1.5);
setScaleKey( SP_ATK_3+377,   1, 1.5, 1.5);

setMoveKey( SP_ATK_3-7, 1,  -50,  0,  0);
setMoveKey( SP_ATK_3+37, 1,  50,  0,  0);
setMoveKey( SP_ATK_3+85, 1,  150,  0,  0);
setMoveKey( SP_ATK_3+87, 1,  250,  0,  0);
setMoveKey( SP_ATK_3+104, 1,  850,  0,  0);

setShakeChara( SP_ATK_3, 1, 265, 10);



--entryFadeBg( SP_ATK_3-10, 20, 104, 10, 10, 10, 10, 185);       -- ベース暗め　背景
entryFadeBg( SP_ATK_3-10, 0, 392, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryFadeBg( SP_ATK_3+259, 0, 87, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( SP_ATK_3+346, 0, 392, 0, 10, 10, 10, 150);          -- ベース暗め　背景

--entryEffect( SP_ATK_3+10,  908,  0x80,  0,  0,  0,  0);--集中線
entryEffectLife( SP_ATK_3+37, 906, 382, 0x00,  -1, 0,  0,  0);   -- 集中線

sen2 = entryEffectLife( SP_ATK_3-10, 920, 392, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_3, sen2, 190);
--setEffScaleKey(spep_3, sen2, 1.3, 1.3);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 270; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
		setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
		setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
		
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+9, 0,  -1500, 0,   0);

endPhase(SP_dodge+10);
do return end
else end


---------------------------------------------------------



changeAnime(  SP_ATK_3+87, 1, 108);

playSe( SP_ATK_3+35, 1018);
playSe( SP_ATK_3+87, 1025);

--setShake (  SP_ATK_3+10,  265,  15);

kick = entryEffect(  SP_ATK_3+130,  SP_05,  0x100,  -1,  0,  0,  0);

setMoveKey( SP_ATK_3+125, 1,  80,  0,  0);
setMoveKey( SP_ATK_3+167, 1,  150,  0,  0);
setMoveKey( SP_ATK_3+177, 1,  150,  0,  0);
setMoveKey( SP_ATK_3+190, 1,  850,  0,  0);

playSe( SP_ATK_3+142, 1018);
playSe( SP_ATK_3+167, 1025);

changeAnime(  SP_ATK_3+167, 1, 106);

pan2 = entryEffect(  SP_ATK_3+230,  SP_06,  0x100,  -1,  0,  0,  0);

setMoveKey( SP_ATK_3+222, 1,  -50,  0,  0);
setMoveKey( SP_ATK_3+258, 1,  50,  0,  0);
setMoveKey( SP_ATK_3+345, 1,  80,  0,  0);
setMoveKey( SP_ATK_3+346, 1,  120,  0,  0);
setMoveKey( SP_ATK_3+355, 1,  120,  0,  0);
setMoveKey( SP_ATK_3+370, 1,  850,  0,  0);
setMoveKey( SP_ATK_3+382, 1,  850,  0,  0);


changeAnime(  SP_ATK_3+346, 1, 108);

playSe( SP_ATK_3+241, 1018);
playSe( SP_ATK_3+259, 1036);
playSe( SP_ATK_3+346, 1025);

setShake (  SP_ATK_3+346,  30,  30);
--setShake (  SP_ATK_3+355,  30,  10);

-- 書き文字エントリー
--ct = entryEffectLife( SP_ATK_3+3, 10014, 96, 0, -1, 0, 0, 155); -- ズドドッ
--setEffShake(SP_ATK_3+3, ct, 99, 20);
--setEffScaleKey( SP_ATK_3+3, ct, 1.5, 1.5);
--setEffRotateKey(SP_ATK_3+12, ct, 70);
--setEffAlphaKey(SP_ATK_3+3, ct, 255);



--setMoveKey( SP_ATK_3+382, 1,  -1500, 160,   0);

entryFade( SP_ATK_3+377, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--617
---------------------------------------------------------
--吹っ飛ばし
-------------------------------------------------------



--カメラ戻す
--setEnvZoomEnable(SP_ATK_4+10, 0);
setMoveKey( SP_ATK_4+1, 1,  -850, 260,   0);
setMoveKey( SP_ATK_4+50, 1,  200, 0,   0);

setScaleKey( SP_ATK_4+1,   1, 3.0, 3.0);
setScaleKey( SP_ATK_4+21,   1, 3.0, 3.0);
setScaleKey( SP_ATK_4+50,   1, 0.5, 0.5);

setDisp( SP_ATK_4+50, 1, 0);

entryEffectLife( SP_ATK_4, 906, 382, 0x00,  -1, 0,  0,  0);   -- 集中線
ryu = entryEffectLife( SP_ATK_4, 921, 124, 0x80,  -1,  0,  0,  0); -- 流線

baku = entryEffectLife( SP_ATK_4+50, 1509, 78, 0x40+0x80,  1,  0,  0,  0);   -- 爆発
setEffShake(SP_ATK_4+50, baku, 60, 15);
setEffScaleKey(SP_ATK_4+50, baku, 0.7, 0.7);
setEffScaleKey(SP_ATK_4+50+60, baku, 0.9, 0.9);

entryFadeBg( SP_ATK_4, 0, 392, 0, 10, 10, 10, 150);          -- ベース暗め　背景

playSe( SP_ATK_4+50, 1023);
 

--シェイク
  setShake(SP_ATK_4+81,10,15);


entryFade( SP_ATK_4+120, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
setDisp( SP_ATK_4+91, 1, 0);
--removeAllEffect( SP_ATK_4+91);


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( SP_ATK_6, 0, 1);

changeAnime( SP_ATK_6, 0, 30);                                    -- かめはめ発射ポーズ
setScaleKey( SP_ATK_6,   0, 1.0, 1.0);

--setEffScaleKey(spep_1, kamehame_beam, 0.4, 0.4);
--setEffScaleKey(spep_1+30, kamehame_beam, 1.0, 1.0);

setMoveKey(  SP_ATK_6-1,    0,  -550, 150,   0);
setMoveKey(  SP_ATK_6+30,    0,   -100,  0,  0);

setMoveKey(  SP_ATK_6+40,    0,   -100,  0, 0);
setScaleKey( SP_ATK_6+40,   0, 1.3, 1.3);

--roze2 = entryEffectLife( SP_ATK_6, 357, 90, 0x40+0x80,  0, 0,  20,  -310);
--setEffScaleKey( SP_ATK_6, roze2, 2.9, 2.9);
--setEffRotateKey(SP_ATK_6, roze2, -30);

kamehame_beam = entryEffectLife( SP_ATK_6, SP_08, 109, 0x40,  0, 300,  100, 200);   -- 伸びるかめはめ波
--setEffRotateKey(SP_ATK_6, kamehame_beam, -5);
setEffScaleKey(SP_ATK_6, kamehame_beam, 0.5, 0.5);
setEffScaleKey(SP_ATK_6+30, kamehame_beam, 1.0, 1.0);
setEffMoveKey(  SP_ATK_6,  kamehame_beam,  100,  200,  0);
setEffMoveKey(  SP_ATK_6+10,  kamehame_beam,  100,  200,  0);
setEffMoveKey(  SP_ATK_6+30,  kamehame_beam,  250,  200,  0);



--setEffMoveKey(spep_1,kamehame_beam,   100   ,  50  ,  0);
--setEffMoveKey(spep_1+25,kamehame_beam,   200   ,  100  ,  0);
--setEffMoveKey(spep_1+39,kamehame_beam,   260   ,  100  ,  0);
--setEffMoveKey(305,kamehame_beam,   80   ,  100  ,  0);



--setEffMoveKey( spep_1+65,kamehame_beam,150,150);
--setEffMoveKey( spep_1+80,kamehame_beam,250,0);

playSe( SP_ATK_6, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  SP_ATK_6+65,    0,   -680,  150,  0);
setScaleKey( SP_ATK_6+66,   0, 1.0, 1.0);

setDisp( SP_ATK_6+66, 0, 0);

--entryFade( spep_1+48, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryFadeBg( SP_ATK_6, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--entryFadeBg( spep_1, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
--entryFadeBg( spep_1+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

--sen5 = entryEffectLife( spep_1, 920, 49, 0x80,  -1,  0,  0,  0); -- 流線
--setShakeChara( spep_1+50, 0, 50, 10);

sen2 = entryEffectLife( SP_ATK_6, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_ATK_6, sen2, 210);
setEffScaleKey( SP_ATK_6, sen2, 1.7, 1.7);
--setEffScaleKey( spep_1, sen2, 1.3, 1.3);

setShakeChara( SP_ATK_6, 0, 50, 30);

shuchusen = entryEffectLife( SP_ATK_6, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_ATK_6, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_ATK_6+40, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_ATK_6+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_6+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_ATK_6+8, ct, 32, 5);
setEffAlphaKey(SP_ATK_6+8, ct, 255);
setEffAlphaKey(SP_ATK_6+30, ct, 255);
setEffAlphaKey(SP_ATK_6+40, ct, 0);
setEffScaleKey(SP_ATK_6+8, ct, 0.0, 0.0);
setEffScaleKey(SP_ATK_6+12, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_6+32, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_6+40, ct, 6.0, 6.0);

--playSe( spep_1+30, SE_07);
--playSe( spep_1+80,1026);

setScaleKey( SP_ATK_6+95,  0,  0.8, 0.8);
setMoveKey(  SP_ATK_6+95,    0,   -680,  150,  0);

entryFade( SP_ATK_6+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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
	
	--entryFade( SP_ATK_8+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
	
	endPhase(SP_ATK_8+180 -14);

else
------------------------------------------------------
-- 溜めから突っ込んでいく
------------------------------------------------------
--if (_IS_PLAYER_SIDE_ == 1) then

--if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

setVisibleUI(0, 0);

SP_ATK_0 = 0;		--気ダメ
SP_ATK_1 = SP_ATK_0+35;	--突進
--Card = 60;
--Card = SP_ATK_1+122;
--rn_02 = SP_ATK_1+100;		--タックル

--Card = SP_ATK_1+100;			--カード表示

--SP_ATK_2 = Card+100;			--パンチ
--SP_ATK_3 = SP_ATK_2+110;		--ラッシュ
--SP_ATK_4 = SP_ATK_3+50+55;		--叩き落とし
----SP_ATK_4 = SP_ATK_3+120;		--叩き落とし
----SP_ATK_5 = SP_ATK_4+90;		--エネルギー波ため
--SP_ATK_6 = SP_ATK_4+100;		--エネルギー波発射
----SP_ATK_7 = SP_ATK_6+110;		--直撃
--SP_ATK_8 = SP_ATK_6+110;		--地球規模の爆発


Card = SP_ATK_1+100;			--カード表示

--SP_ATK_2 = Card+100;			--パンチ
SP_ATK_3 = Card+100;		--ラッシュ
SP_ATK_4 = SP_ATK_3+50+55+277;		--叩き落とし
--SP_ATK_4 = SP_ATK_3+120;		--叩き落とし
--SP_ATK_5 = SP_ATK_4+90;		--エネルギー波ため
SP_ATK_6 = SP_ATK_4+128;		--エネルギー波発射
--SP_ATK_7 = SP_ATK_6+110;		--直撃
SP_ATK_8 = SP_ATK_6+110;		--地球規模の爆発

SP_start = 8;		


entryFadeBg( SP_ATK_0, 10, 133, 2, 10, 10, 10, 200);       --ベース暗め　背景


changeAnime( SP_ATK_0, 0, 17);                       -- 溜め
changeAnime( SP_ATK_0, 1, 104);                       -- 立ち
setDisp( SP_ATK_0, 1, 0);
setDisp( SP_ATK_0, 0, 0);

entryEffect(  SP_ATK_0+5,   SP_01e,   0x80, -1,  0,  0,  0);    -- 手前から奥にザマスがためる

zamas = entryEffect(  SP_ATK_0+35,   SP_02e,   0x80, -1,  0,  0,  0);    -- 奥から手前にザマスが突っ込む
setEffShake(SP_ATK_0+35, zamas, 100, 15);

playSe( SP_ATK_0+35, 1033);

entryEffect(  SP_ATK_0+5,   908,   0x80, -1,  0,  0,  0);    -- eff_002

setMoveKey(   SP_ATK_0,   0,    0, 0,   80);
setMoveKey(   SP_ATK_0+1,   0,    0, 0,   80);
setMoveKey(   SP_ATK_0+2,   0,    0, 0,   80);
setMoveKey(   SP_ATK_0+3,   0,    0, 0,   80);
--setMoveKey(   SP_ATK_0,   1,    700, 0,   -128);
setScaleKey(   SP_ATK_0,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_0+1,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_0+2,   0, 1.5, 1.5);
setScaleKey(   SP_ATK_0+3,   0, 1.5, 1.5);

setMoveKey(  SP_ATK_0,    1,  700,  0,   0);


-- ** エフェクト等 ** --
--aura = entryEffectLife( SP_ATK_0+5,  311,  28,  0x40, 0,  0,  0,  -115);--気力
--setEffScaleKey( SP_ATK_0+5, aura, 0.7, 0.7);
--setEffScaleKey( SP_ATK_0+28, aura, 0.8, 0.8);
--setEffScaleKey( SP_ATK_0+30, aura, 1.0, 1.0);

kieff = entryEffectLife( SP_ATK_0+5,  1502, 50,  0,  0,  0,  0,  90);
setEffScaleKey( SP_ATK_0, kieff, 1.5, 1.5);
playSe( SP_ATK_0+5, SE_01);
--speff = entryEffect(  15+ATK_01,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え

--aura2 = entryEffectLife( SP_ATK_0+45,   707,  18,  0x40+0x80, 0,  0,  0,  0);    -- eff_002
--setEffScaleKey( SP_ATK_0+45, aura2, 1.2, 1.2);

--bom = entryEffect( 33+SP_ATK_0,  11,  0x80,  0,  0,  0,  -10);--爆破
--setEffScaleKey( 33+SP_ATK_0, bom, 1.5, 1.5);
--playSe( 33+SP_ATK_0, 1033);

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




		--speff = entryEffect(  SP_ATK_1+45,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
		--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
		--speff = entryEffect(  SP_ATK_1+45,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
		--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


	--else



	--end

setMoveKey( SP_ATK_1+80, 0,  0, 0,   -58);
--playSe( SP_ATK_1+80,  SE_05);

setScaleKey( SP_ATK_1+80,   0, 1.2, 1.2);
setScaleKey( SP_ATK_1+90,   0, 5, 5);
setScaleKey( SP_ATK_1+98,   0, 5, 5);
setScaleKey( SP_ATK_1+99,   0, 1, 1);

setMoveKey( SP_ATK_1+95, 0,  0, 0,   -128);

setMoveKey( SP_ATK_1+85, 0,  0, 0,   -128);
--entryFade( SP_ATK_1+90, 7, 10, 8, 0, 0, 0, 255);     -- black fade
entryFade( SP_ATK_1+90, 7, 10, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

setMoveKey( SP_ATK_1+98, 0,  0, 0,   -128);
setMoveKey( SP_ATK_1+99, 0,  -250, -1100,   0);

setMoveKey(  SP_ATK_1+98,    1,  700,  0,   0);
setMoveKey( SP_ATK_1+99, 1,  100, 0,   0);
changeAnime(  SP_ATK_1+99, 1, 100);

--bakuha = entryEffectLife( SP_ATK_1+80,  11, 18, 0x80,  0,  0,  0,  -10);--爆破
--setEffScaleKey(SP_ATK_1+80, bakuha, 5.0, 5.0);
--setShake(SP_ATK_1+80, 13, 17);

syutyusen = entryEffectLife( SP_ATK_1+82,  908, 18, 0x80,  0,  0,  0,  0);--集中線
setEffScaleKey(SP_ATK_1+82, syutyusen, 4.0, 4.0);

--eff_002 = entryEffectLife( SP_ATK_1+88,   707,  12,  0x40+0x80, 0,  0,  0,  0);    -- eff_002
--setEffScaleKey(SP_ATK_1+88, eff_002, 4.0, 4.0);



--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( Card + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( Card + 0, SE_05 );]]

--味方

changeAnime( Card+5, 0, 3);

setScaleKey( Card+5,   0, 5, 5);
setScaleKey( Card+6,   0, 1, 1);
setMoveKey( Card+5, 0,  0, 0,   -128);
setMoveKey( Card+6, 0,  -2750, 0,   0);


--敵
setDisp( Card+5, 1, 1);
changeAnime(  Card+5, 1, 100);    
setMoveKey( Card+5, 1,  800,  0,  -128);
setMoveKey( Card+6, 1,  50, 0,   0);
--setZanzou(Card+6, 0,  1);
setScaleKey( Card+5,    1,  3, 3);
--setScaleKey( Card+6,    1, 2.5, 2.5);

entryFade( Card+90, 5,  3, 5, 255, 255, 255, 255);     -- white fade
--removeAllEffect( Card+90 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( Card + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( Card + 0, shuchusen2, 90, 20 );

setEffMoveKey( Card + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( Card + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( Card + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( Card + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( Card + 0, shuchusen2, 0 );
setEffRotateKey( Card + 90, shuchusen2, 0 );

setEffAlphaKey( Card + 0, shuchusen2, 255 );
setEffAlphaKey( Card + 90, shuchusen2, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( Card, SE_05);
speff = entryEffect( Card, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( Card, SE_05);
speff = entryEffect( Card, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( Card, SE_05);
speff = entryEffect( Card, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 次の準備 ** --
entryFade( Card+80, 4,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




--235
------------------------------------------------------
-- 3連の重攻撃
------------------------------------------------------;

pan = entryEffect(  SP_ATK_3,  SP_03e,  0x100,  -1,  0,  0,  0);
--setScaleKey( SP_ATK_3-10,   1, 2.0, 2.0);
--setScaleKey( SP_ATK_3+20,   1, 2.0, 2.0);
setScaleKey( SP_ATK_3+35,   1, 1.5, 1.5);
setScaleKey( SP_ATK_3+377,   1, 1.5, 1.5);

setMoveKey( SP_ATK_3-7, 1,  -50,  0,  0);
setMoveKey( SP_ATK_3+37, 1,  50,  0,  0);
setMoveKey( SP_ATK_3+85, 1,  150,  0,  0);
setMoveKey( SP_ATK_3+87, 1,  250,  0,  0);
setMoveKey( SP_ATK_3+104, 1,  850,  0,  0);

setShakeChara( SP_ATK_3, 1, 265, 10);


--entryFadeBg( SP_ATK_3-10, 20, 104, 10, 10, 10, 10, 185);       -- ベース暗め　背景
entryFadeBg( SP_ATK_3-10, 0, 392, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryFadeBg( SP_ATK_3+259, 0, 87, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( SP_ATK_3+346, 0, 392, 0, 10, 10, 10, 150);          -- ベース暗め　背景

--entryEffect( SP_ATK_3+10,  908,  0x80,  0,  0,  0,  0);--集中線
entryEffectLife( SP_ATK_3+37, 906, 382, 0x00,  -1, 0,  0,  0);   -- 集中線

sen2 = entryEffectLife( SP_ATK_3-10, 920, 392, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_3, sen2, 190);
--setEffScaleKey(spep_3, sen2, 1.3, 1.3);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 270; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示

		setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
		setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+9, 0,  -1500, 0,   0);

endPhase(SP_dodge+10);
do return end
else end








changeAnime(  SP_ATK_3+87, 1, 108);

playSe( SP_ATK_3+35, 1018);
playSe( SP_ATK_3+87, 1025);

--setShake (  SP_ATK_3+10,  265,  15);

kick = entryEffect(  SP_ATK_3+130,  SP_05e,  0x100,  -1,  0,  0,  0);

setMoveKey( SP_ATK_3+125, 1,  80,  0,  0);
setMoveKey( SP_ATK_3+167, 1,  150,  0,  0);
setMoveKey( SP_ATK_3+177, 1,  150,  0,  0);
setMoveKey( SP_ATK_3+190, 1,  850,  0,  0);

playSe( SP_ATK_3+142, 1018);
playSe( SP_ATK_3+167, 1025);

changeAnime(  SP_ATK_3+167, 1, 106);

pan2 = entryEffect(  SP_ATK_3+230,  SP_06e,  0x100,  -1,  0,  0,  0);

setMoveKey( SP_ATK_3+222, 1,  -50,  0,  0);
setMoveKey( SP_ATK_3+258, 1,  50,  0,  0);
setMoveKey( SP_ATK_3+345, 1,  80,  0,  0);
setMoveKey( SP_ATK_3+346, 1,  120,  0,  0);
setMoveKey( SP_ATK_3+355, 1,  120,  0,  0);
setMoveKey( SP_ATK_3+370, 1,  850,  0,  0);
setMoveKey( SP_ATK_3+382, 1,  850,  0,  0);


changeAnime(  SP_ATK_3+346, 1, 108);

playSe( SP_ATK_3+241, 1018);
playSe( SP_ATK_3+259, 1036);
playSe( SP_ATK_3+346, 1025);

setShake (  SP_ATK_3+346,  30,  30);
--setShake (  SP_ATK_3+355,  30,  10);

-- 書き文字エントリー
--ct = entryEffectLife( SP_ATK_3+3, 10014, 96, 0, -1, 0, 0, 155); -- ズドドッ
--setEffShake(SP_ATK_3+3, ct, 99, 20);
--setEffScaleKey( SP_ATK_3+3, ct, 1.5, 1.5);
--setEffRotateKey(SP_ATK_3+12, ct, 70);
--setEffAlphaKey(SP_ATK_3+3, ct, 255);


--setMoveKey( SP_ATK_3+382, 1,  -1500, 160,   0);

entryFade( SP_ATK_3+377, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--617
---------------------------------------------------------
--吹っ飛ばし
-------------------------------------------------------



--カメラ戻す
--setEnvZoomEnable(SP_ATK_4+10, 0);
setMoveKey( SP_ATK_4+1, 1,  -850, 260,   0);
setMoveKey( SP_ATK_4+50, 1,  200, 0,   0);

setScaleKey( SP_ATK_4+1,   1, 3.0, 3.0);
setScaleKey( SP_ATK_4+21,   1, 3.0, 3.0);
setScaleKey( SP_ATK_4+50,   1, 0.5, 0.5);

setDisp( SP_ATK_4+50, 1, 0);

entryEffectLife( SP_ATK_4, 906, 382, 0x00,  -1, 0,  0,  0);   -- 集中線
ryu = entryEffectLife( SP_ATK_4, 921, 124, 0x80,  -1,  0,  0,  0); -- 流線

baku = entryEffectLife( SP_ATK_4+50, 1509, 78, 0x40+0x80,  1,  0,  0,  0);   -- 爆発
setEffShake(SP_ATK_4+50, baku, 60, 15);
setEffScaleKey(SP_ATK_4+50, baku, 0.7, 0.7);
setEffScaleKey(SP_ATK_4+50+60, baku, 0.9, 0.9);

entryFadeBg( SP_ATK_4, 0, 392, 0, 10, 10, 10, 150);          -- ベース暗め　背景

playSe( SP_ATK_4+50, 1023);
 

--シェイク
  setShake(SP_ATK_4+81,10,15);


entryFade( SP_ATK_4+120, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 
setDisp( SP_ATK_4+91, 1, 0);
--removeAllEffect( SP_ATK_4+91);


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( SP_ATK_6, 0, 1);

changeAnime( SP_ATK_6, 0, 30);                                    -- かめはめ発射ポーズ
setScaleKey( SP_ATK_6,   0, 1.0, 1.0);

--setEffScaleKey(spep_1, kamehame_beam, 0.4, 0.4);
--setEffScaleKey(spep_1+30, kamehame_beam, 1.0, 1.0);

setMoveKey(  SP_ATK_6-1,    0,  -550, 150,   0);
setMoveKey(  SP_ATK_6+30,    0,   -100,  0,  0);

setMoveKey(  SP_ATK_6+40,    0,   -100,  0, 0);
setScaleKey( SP_ATK_6+40,   0, 1.3, 1.3);

--roze2 = entryEffectLife( SP_ATK_6, 357, 90, 0x40+0x80,  0, 0,  20,  -310);
--setEffScaleKey( SP_ATK_6, roze2, 2.9, 2.9);
--setEffRotateKey(SP_ATK_6, roze2, -30);

kamehame_beam = entryEffectLife( SP_ATK_6, SP_08, 109, 0x40,  0, 300,  100, 200);   -- 伸びるかめはめ波
--setEffRotateKey(SP_ATK_6, kamehame_beam, -5);
setEffScaleKey(SP_ATK_6, kamehame_beam, 0.5, 0.5);
setEffScaleKey(SP_ATK_6+30, kamehame_beam, 1.0, 1.0);
setEffMoveKey(  SP_ATK_6,  kamehame_beam,  100,  200,  0);
setEffMoveKey(  SP_ATK_6+10,  kamehame_beam,  100,  200,  0);
setEffMoveKey(  SP_ATK_6+30,  kamehame_beam,  250,  200,  0);


--setEffMoveKey(spep_1,kamehame_beam,   100   ,  50  ,  0);
--setEffMoveKey(spep_1+25,kamehame_beam,   200   ,  100  ,  0);
--setEffMoveKey(spep_1+39,kamehame_beam,   260   ,  100  ,  0);
--setEffMoveKey(305,kamehame_beam,   80   ,  100  ,  0);



--setEffMoveKey( spep_1+65,kamehame_beam,150,150);
--setEffMoveKey( spep_1+80,kamehame_beam,250,0);

playSe( SP_ATK_6, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  SP_ATK_6+65,    0,   -680,  150,  0);
setScaleKey( SP_ATK_6+66,   0, 1.0, 1.0);

setDisp( SP_ATK_6+66, 0, 0);

--entryFade( spep_1+48, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryFadeBg( SP_ATK_6, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--entryFadeBg( spep_1, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
--entryFadeBg( spep_1+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

--sen5 = entryEffectLife( spep_1, 920, 49, 0x80,  -1,  0,  0,  0); -- 流線
--setShakeChara( spep_1+50, 0, 50, 10);

sen2 = entryEffectLife( SP_ATK_6, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_ATK_6, sen2, 210);
setEffScaleKey( SP_ATK_6, sen2, 1.7, 1.7);
--setEffScaleKey( spep_1, sen2, 1.3, 1.3);

setShakeChara( SP_ATK_6, 0, 50, 30);

shuchusen = entryEffectLife( SP_ATK_6, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_ATK_6, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_ATK_6+40, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_ATK_6+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_6+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_ATK_6+8, ct, 32, 5);
setEffAlphaKey(SP_ATK_6+8, ct, 255);
setEffAlphaKey(SP_ATK_6+30, ct, 255);
setEffAlphaKey(SP_ATK_6+40, ct, 0);
setEffScaleKey(SP_ATK_6+8, ct, 0.0, 0.0);
setEffScaleKey(SP_ATK_6+12, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_6+32, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_6+40, ct, 6.0, 6.0);

--playSe( spep_1+30, SE_07);
--playSe( spep_1+80,1026);

setScaleKey( SP_ATK_6+95,  0,  0.8, 0.8);
setMoveKey(  SP_ATK_6+95,    0,   -680,  150,  0);

entryFade( SP_ATK_6+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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
	
	--entryFade( SP_ATK_8+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade
	
	endPhase(SP_ATK_8+180 -14);

end

print ("[lua]sp0127 end");

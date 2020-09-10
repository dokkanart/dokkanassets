

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

tyo = -30;
tyo2 = -40;

SP_01 = 100230;
SP_02 = 100231;
SP_03 = 100232;
SP_04 = 107031;

SP_05 = 150226;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

------------------------------------------------------
-- 全体必殺技の初回時（共通）
------------------------------------------------------
kame_flag = 0x00;

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 0);                       -- 溜め!
changeAnime( 30, 0, 17);  
setScaleKey(   0,   0, 1.5, 1.5);

setMoveKey(   0,   0, 0, 0, 0);
setMoveKey(   15,   0,  0, 0,  0);
setMoveKey(  125,   0,  0, 0, 0);

playSe( 30, 1035); --かめはめ波
--playSe( 20, 1036); 
playSe( 45, 1036);
playSe( 70, 1036); 
playSe( 95, 1036);  
playSe( 120, 1036);  

entryEffect(  30,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  30,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 95, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.0, 1.0);

if (_IS_PLAYER_SIDE_ == 1) then

	speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
	setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
	speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
	setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

else


end

--playSe( 20, SE_04);

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 30, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

--entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 127;
setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 2.0, 2.0);
changeAnime( spep_6, 0, 3);  --ダッシュ


--P移動
setMoveKey(  spep_6-1,    0,      0,  0,   0);
setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+15,    0,   0,  0,   0);

setMoveKey(  spep_6+25,    0,   -100,  0,   0);
setMoveKey(  spep_6+33,    0,   200,  0,   0);

entryEffect( spep_6+32, 700, 0x100,  0, 300,  0, 0); --瞬間移動
setDisp( spep_6+32, 0, 0);

playSe( spep_6, 1018);
playSe( spep_6+32,43);

setMoveKey(  spep_6+49,  0, 700,  0,   0);

entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト等 ** --

entryFadeBg( spep_6, 0, 51, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( spep_6, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_6+20, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep_6, 920, 51, 0x80,  -1,  0,  0,  0); -- 流線


spep_7=spep_6+51; --211 260

------------------------------------------------------
-- 登場　近寄り(100F)
------------------------------------------------------

setMoveKey(  spep_7-1,  0, 300,  10,  0);
--setMoveKey(  spep_7+60,  0, 70, 5,  0);
--setMoveKey(  spep_7+120,  0, 70, 5,  0);
setMoveKey(  spep_7+127,  0, 50, 10,  0);


setScaleKey( spep_7, 0, 2.0, 2.0);
setScaleKey( spep_7+99, 0, 2.0, 2.0);
setScaleKey( spep_7+100, 0, 2.0, 2.0);
setScaleKey( spep_7+127, 0, 1.7, 1.7);

changeAnime( spep_7, 0, 30);--突っ込み
--changeAnime( spep_7+45, 0, 30); --突っ込み
changeAnime( spep_7+100, 0, 31); --ムササビ

setRotateKey( spep_7+100,  0,  -5 );
setRotateKey( spep_7+127,  0,  -5 );
setRotateKey( spep_7+128,  0,  0 );
  
setDisp( spep_7+5, 0, 1);

playSe( spep_7+20, 1019);
playSe( spep_7+40, 1019);
playSe( spep_7+60, 1019);
playSe( spep_7+80, 1019);
playSe( spep_7+100, 1019);
playSe( spep_7+100, 1018);

--[[
playSe( spep_7+15, SE_03);
playSe( spep_7+38, SE_03);
playSe( spep_7+63, SE_03);
playSe( spep_7+88, SE_03);
playSe( spep_7+113, SE_03);
]]--

--敵
setDisp( spep_7+19, 1, 0);
setDisp( spep_7+20, 1, 1);

setMoveKey(  spep_7+20,  1, -160, -5,   0);      --敵登場
--setMoveKey(  spep_7+100,  1, -130, -5, 0);
--setMoveKey(  spep_7+120,  1, -90, -10, 0);
setMoveKey(  spep_7+127,  1, -90, -5, 0);


setScaleKey( spep_7+20, 1, 0, 0);
--setScaleKey( spep_7+100, 1, 1.5, 1.5);
setScaleKey( spep_7+127, 1, 1.5, 1.5);

changeAnime( spep_7+20, 1, 118);

entryFadeBg( spep_7, 0, 127, 0, 10, 10, 10, 140);  -- ベース暗め　背景

shuchusen21 = entryEffectLife( spep_7, 906, 127, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7, shuchusen21, 1.7, 1.7);
--setEffScaleKey( spep_3, shuchusen21, 3.0, 3.0);
--setEffRotateKey(spep_7+45, shuchusen21, -140);
setEffMoveKey(spep_7, shuchusen21 , -100, 30, 0);


--[[ ** エフェクト等 ** --
aura = entryEffectLife(  spep_7+10,   311, 107, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( spep_7+10, aura, 1.2, 1.2);
setShakeChara( spep_7+10, 0, 49, 5);
]]--

--[[ 書き文字エントリー
ct = entryEffectLife( spep_7+45, 10008, 82, 0x100, -1, 0, 130, 330);    -- ゴゴゴ・・・
setEffShake(spep_7+45, ct, 100, 8);
setEffScaleKey(spep_7+45, ct, 1.8, 1.8);
]]--

entryFade( spep_7+120, 5,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFadeBg( spep_7, 0, 118, 0, 0, 0, 0, 190);       -- ベース暗め　背景

--removeAllEffect(spep_7+117);

setDisp( spep_7+127, 0, 0);
setDisp( spep_7+127, 1, 0);

spep_8=spep_7+128; --260

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 383; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (110F)
------------------------------------------------------
entryFadeBg( spep_8, 0, 180, 100, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffect( spep_8, SP_04, 0,  -1,  0,  0,  0);  
setDisp( spep_8, 1, 0);

setShake(spep_8+10,100,10);
setShake(spep_8+120, 40, 15);

playSe( spep_8+4, SE_07);
shuchusen = entryEffectLife( spep_8+4, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe( spep_8+ 60, SE_10);
playSe( spep_8+ 100, SE_10);
playSe( spep_8+ 135, SE_10);

-- ダメージ表示
dealDamage(spep_8+135);

entryFade( spep_8+180, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);      -- white fade

endPhase(spep_8+180);

end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then --- 全体必殺技の２人目以降

-- 全体必殺技の最初以外
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setVisibleUI(0, 0);

SP_ATK_4 = 0;
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

entryFadeBg( SP_ATK_4, 0, 186, 100, 10, 10, 10, 180);       -- ベース暗め　背景

changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_4+1, SP_05,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+1, SE_07);

setShake(SP_ATK_4+10, 100, 10);
setShake(SP_ATK_4+120, 40, 15);

playSe( SP_ATK_4+60, SE_10);
playSe( SP_ATK_4+100, SE_10);
playSe( SP_ATK_4+135, SE_10);

SP_start = 0;

setDisp( SP_start+ SP_ATK_4, 1, 1);
setMoveKey( SP_start+  SP_ATK_4,    1,  120,    0,  128);
setScaleKey( SP_start+ SP_ATK_4,    1,  1.0, 1.0);
setMoveKey( SP_start+  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_start+ SP_ATK_4+1,    1,  0.1, 0.1);

setMoveKey( SP_start+  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey( SP_start+  SP_ATK_4+15,   1,  -60,  -200,  -100);

setRotateKey( SP_start+ SP_ATK_4,  1,  30 );
setRotateKey( SP_start+ SP_ATK_4+2,  1,  80 );
setRotateKey( SP_start+ SP_ATK_4+4,  1, 120 );
setRotateKey( SP_start+ SP_ATK_4+6,  1, 160 );
setRotateKey( SP_start+ SP_ATK_4+8,  1, 200 );
setRotateKey( SP_start+ SP_ATK_4+10,  1, 260 );
setRotateKey( SP_start+ SP_ATK_4+12,  1, 320 );
setRotateKey( SP_start+ SP_ATK_4+14,  1,   0 );

setShakeChara( SP_start+ SP_ATK_4+14, 1, 5,  10);
setShakeChara( SP_start+ SP_ATK_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_4+14, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+ SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_start+ SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_start+ SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+115, ct, 0);


playSe( SP_start+ SP_ATK_4+12, SE_11);
shuchusen = entryEffectLife( SP_start+ SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+SP_ATK_4+15);

entryFade( SP_start+ SP_ATK_4+150, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+SP_ATK_4+160);

-- ！全体必殺技の最初以外
end

print ("[lua]sp0127 end");

--　超4悟空　カウンター（フルパワーじゃない方）
-- c0009.luaのコピー
print ("[lua]c0010");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01=152841;--	ナビアップ
SP_02=152842;--残像〜パンチ

--敵側は味方側に1xをつけてます
SP_01x=152841;--	ナビアップ
SP_02x=152842;--残像〜パンチ



setVisibleUI(0, 0);

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

--entryFadeBg( 0, 30, 151, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 36, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( 36, shuchusen, 1.0, 1.0);

kaisinn = entryEffect( 39, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- ナビアップ
------------------------------------------------------
spep_0=29;

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(spep_0,1,5000,5000,0);

nabi_up=entryEffectLife(spep_0,SP_01,87,0x100,-1,0,0,0);

setEffMoveKey(spep_0,nabi_up,0,0,0);
setEffMoveKey(spep_0+87,nabi_up,0,0,0);
setEffScaleKey(spep_0,nabi_up,1.0,1.0);
setEffScaleKey(spep_0+87,nabi_up,1.0,1.0);
setEffAlphaKey(spep_0,nabi_up,255);
setEffAlphaKey(spep_0+87,nabi_up,255);
setEffRotateKey(spep_0,nabi_up,0);
setEffRotateKey(spep_0+87,nabi_up,0);

--流線
shuchu = entryEffectLife( spep_0+ 0,  921, 87, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_0+ 0, shuchu,0, 0 , 0 );
setEffMoveKey( spep_0+ 87, shuchu, 0, 0 , 0 );

setEffScaleKey( spep_0+ 0, shuchu, 1.88, 1.41 );
setEffScaleKey( spep_0+ 87, shuchu, 1.88, 1.41 );

setEffRotateKey( spep_0+ 0, shuchu, 132.5 );
setEffRotateKey( spep_0+ 87, shuchu, 132.5 );

setEffAlphaKey( spep_0+ 0, shuchu, 255 );
setEffAlphaKey( spep_0+ 87, shuchu, 255 );

--集中線
shuchu1 = entryEffectLife( spep_0 + 0,  906, 87, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchu1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 87, shuchu1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchu1, 1.55, 1.55 );
setEffScaleKey( spep_0 + 87, shuchu1, 1.55, 1.55 );

setEffRotateKey( spep_0 + 0, shuchu1, 180 );
setEffRotateKey( spep_0 + 87, shuchu1, 180 );

setEffAlphaKey( spep_0 + 0, shuchu1, 255 );
setEffAlphaKey( spep_0 + 87, shuchu1, 255 );

-- ** エフェクト等 ** --
entryFade(spep_0,0,0,5,fcolor_r,fcolor_g,fcolor_b,200);     -- white fad
entryFade(spep_0+83,3,2,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade


--SE
playSe( spep_0, SE_01);

--背景(黒)
entryFadeBg( spep_0, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

--次の準備
spep_1=spep_0+87;

------------------------------------------------------
-- 残像〜パンチ
------------------------------------------------------
punch=entryEffectLife(spep_1,SP_02,260,0x100,-1,0,0,0);

setEffMoveKey(spep_1,punch,0,0,0);
setEffMoveKey(spep_1+260,punch,0,0,0);
setEffScaleKey(spep_1,punch,1.0,1.0);
setEffScaleKey(spep_1+260,punch,1.0,1.0);
setEffAlphaKey(spep_1,punch,255);
setEffAlphaKey(spep_1+260,punch,255);
setEffRotateKey(spep_1,punch,0);
setEffRotateKey(spep_1+260,punch,0);

shuchu3 = entryEffectLife( spep_1 + 0,  906, 260, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, shuchu3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 260, shuchu3, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchu3, 1.32, 1.7 );
setEffScaleKey( spep_1 + 260, shuchu3, 1.32, 1.7 );

setEffRotateKey( spep_1 + 0, shuchu3, 0 );
setEffRotateKey( spep_1 + 260, shuchu3, 0 );

setEffAlphaKey( spep_1 + 0, shuchu3, 255 );
setEffAlphaKey( spep_1 + 260, shuchu3, 255 );

entryFadeBg( spep_1, 0, 260, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
entryFade(spep_1+188,1,0,4,fcolor_r,fcolor_g,fcolor_b,180);     -- white fade
entryFade(spep_1+250,6,12,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--SE
playSe( spep_1, 44);
playSe( spep_1+20, 44);
playSe( spep_1+40, 44);
playSe( spep_1+60, 44);
playSe( spep_1+80, 44);
playSe( spep_1+100, 44);
playSe( spep_1+120, 44);
playSe( spep_1+140, 44);
playSe( spep_1+160, 44);
playSe( spep_1+188, 1018);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_4=spep_1+260;

entryFade( spep_4-5, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(spep_4,1,1);

if (_IS_DEAD_ == 1) then

setDisp( spep_1+262 , 1, 1);
endPhase(spep_1+263);

else

setMoveKey(spep_4-1,1,5000,5000,0);

setMoveKey(  spep_4,    1,  100,  0,   0);
setScaleKey( spep_4,    1,  1.0, 1.0);
setMoveKey(  spep_4+1,    1,    0,   0,   128);
setScaleKey( spep_4+1,    1,  0.1, 0.1);

changeAnime( spep_4+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+9, SE_10);

setMoveKey(  spep_4+9,   1,    0,   0,   128);
setMoveKey(  spep_4+14,   1,  -60,  -200,  -100);

setDamage( spep_4+14, 1, 0);  -- ダメージ振動等
setShake(spep_4+8,6,15);
setShake(spep_4+14,15,10);

setRotateKey( spep_4,  1,  0 );
setRotateKey( spep_4+1,  1,  30 );
setRotateKey( spep_4+3,  1,  80 );
setRotateKey( spep_4+5,  1, 120 );
setRotateKey( spep_4+7,  1, 160 );
setRotateKey( spep_4+9,  1, 200 );
setRotateKey( spep_4+11,  1, 260 );
setRotateKey( spep_4+13,  1, 320 );
setRotateKey( spep_4+15,  1,   0 );

setShakeChara( spep_4+17, 1, 5,  10);
setShakeChara( spep_4+21, 1, 10, 20);

-- 書き文字エントリー
gaa = entryEffectLife( spep_4+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_4+16, gaa, 30, 10);
setEffRotateKey( spep_4+16, gaa, -40);
setEffScaleKey( spep_4+16, gaa, 4.0, 4.0);
setEffScaleKey( spep_4+17, gaa, 2.0, 2.0);
setEffScaleKey( spep_4+18, gaa, 2.6, 2.6);
setEffScaleKey( spep_4+19, gaa, 4.0, 4.0);
setEffScaleKey( spep_4+20, gaa, 2.6, 2.6);
setEffScaleKey( spep_4+21, gaa, 3.8, 3.8);
setEffScaleKey( spep_4+111, gaa, 3.8, 3.8);
setEffAlphaKey( spep_4+16, gaa, 255);
setEffAlphaKey( spep_4+116, gaa, 255);
--setEffAlphaKey( spep_4+115, ct, 0);

playSe( spep_4+14, SE_11);
shuchusenlast = entryEffectLife( spep_4+14, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_4+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage( spep_4+17);

entryFade( spep_4+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_4+111);

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

print ("[lua]sp0009 end");
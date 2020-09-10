print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--SP_01 = 150022;
--SP_02 = 150023;
--SP_03 = 150024;
--SP_04 = 150025;

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

SP_01 = 103063;--剣出現
SP_02 = 103057;--マズル
SP_03 = 103062;--斬撃
SP_04 = 109054;--敵が光弾を避ける時の瞬間移動エフェクト

---------------

SP_ATK_0 = 0;		--気ダメ
SP_ATK_1 = SP_ATK_0+75;	--突進
--Card = 60;
--Card = SP_ATK_1+122;
rn_02 = SP_ATK_1+100;		--タックル
SP_ATK_3 = rn_02+30;	--けり
SP_ATK_4 = SP_ATK_3+78;	--死亡処理orつなぎ
spep_5 = SP_ATK_0+107;	--突進


if ((_IS_CRITICAL_ == 1) ) then --会心の場合

--entryFadeBg( 0, 30, 151, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 36, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( 36, shuchusen, 1.0, 1.0);

kaisinn = entryEffect( 39, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

setVisibleUI(0, 0);


entryFadeBg( SP_ATK_0, 10, 89, 2, 10, 10, 10, 200);       --ベース暗め　背景

changeAnime( SP_ATK_0, 0, 1001);                       -- 溜め
changeAnime( SP_ATK_0, 1, 102);                       -- 立ち
setDisp( SP_ATK_0, 0, 0);
entryEffect(  SP_ATK_0+45,   908,   0x80, -1,  0,  0,  0);    -- eff_002

--setMoveKey(   SP_ATK_0+1,   0,    0, 0,   0);
setMoveKey(   SP_ATK_0,   1,    700, 0,   -128);
setScaleKey(   SP_ATK_0,   0, 1.8, 1.8);

setMoveKey(  SP_ATK_0,    1,  700,  0,   0);

setMoveKey(  SP_ATK_0,    0,      0,  0,   -120);
setMoveKey(  SP_ATK_0+11,    0,      0,  0,   -110);
setMoveKey(  SP_ATK_0+31,    0,   -30,  0,   -100);
setMoveKey(  SP_ATK_0+41,    0,   -250,  40,   -50);
setMoveKey(  SP_ATK_0+46,    0,   -750,  70,   -30);

mazul = entryEffectLife( SP_ATK_0+15, SP_02, 24, 0x40+0x80,  0,  300, 0,  100);   -- マズル
setEffScaleKey( SP_ATK_0+15, mazul, 0.2, 0.2);
setEffAlphaKey( SP_ATK_0+15, mazul, 255);

ct = entryEffectLife( SP_ATK_0+10, 10011, 6, 0x100, -1, 0, -200, 300);    -- シュンッ
setEffScaleKey(SP_ATK_0+10, ct, 1.4, 1.4);

syunkan1=entryEffect( SP_ATK_0+10, SP_04, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
playSe( SP_ATK_0+10, 37);
setDisp( SP_ATK_0+15, 0, 1);

--speff = entryEffect(  15+SP_ATK_0,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え

changeAnime( SP_ATK_0+35, 0, 1002);                       -- 放つ


sen2 = entryEffectLife( SP_ATK_0, 921, 69, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_ATK_0, sen2, 190);
setShakeChara( SP_ATK_0+46, 0, 54, 50);
setEffScaleKey( SP_ATK_0, sen2, 1.6, 1.6);

shuchusen = entryEffectLife( SP_ATK_0, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_ATK_0, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_ATK_0+41, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_ATK_0+50, shuchusen, 2.0, 2.0);

	if(_IS_DODGE_ == 1) then

		kame_hand = entryEffectLife( SP_ATK_0+35, SP_01, 32, 0x40+0x80,  0,  300,  75,  60);   -- 剣出現


	else

		kame_hand = entryEffectLife( SP_ATK_0+35, SP_01, 32, 0x40+0x100,  0,  300,  75,  60);   -- 剣出現

	end

--setEffScaleKey( SP_start+ spep_11+10, kame_hand, 0.5, 0.5);
setEffAlphaKey( SP_ATK_0+35, kame_hand, 255);
setEffRotateKey( SP_ATK_0+35,kame_hand, 15);
--setEffScaleKey( SP_ATK_0+35, kame_hand, 0.8, 0.8);

playSe( SP_ATK_0+35, 1042);


setDisp( SP_ATK_0+56, 1, 1);
setRotateKey( SP_ATK_0+56,  1,  0);

changeAnime( SP_ATK_0+56, 1, 102);                                    -- かめはめ発射ポーズ
setScaleKey( SP_ATK_0+56,   1, 1.6, 1.6);

--setMoveKey(  SP_start+  329,    1,   120,  0,   0);
setMoveKey(  SP_ATK_0+56,    1,  400,  -150,   0);
--setMoveKey(  SP_start+  331,    1,  400,  -400,   0);
--setMoveKey(  SP_start+  340,    1,   240,  0,   0);
setMoveKey(  SP_ATK_0+76,    1,   120,  -150,   0);

zanngeki = entryEffect( SP_ATK_0+70, SP_03, 0x100,  -1,  0,  0,  0);   -- 斬撃
setEffScaleKey( SP_ATK_0+70, zanngeki, 3.0, 3.0);
setEffRotateKey( SP_ATK_0+70,zanngeki,25);


setShake(SP_ATK_0+70,10, 10);
playSe( SP_ATK_0+70, 1032);

entryFadeBg( SP_ATK_0+70, 0, 20, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( SP_ATK_0+67, 1,  2, 1, 0, 0, 0, 255);     -- black fade
setDisp( SP_ATK_0+69, 1, 0);
removeAllEffect( SP_ATK_0+69);

entryFade( SP_ATK_0+84, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_ATK_0+91, 1, 1);

--changeAnime( SP_ATK_0+88, 1, 107);                                    -- 手前吹っ飛び


--[[
if (_IS_GUARD_ == 1) then


endPhase(spep_5+111);

else

endPhase(spep_5+111);

end
--]]


if (_IS_DEAD_ == 1) then


endPhase(spep_5);

else

setDisp( spep_5-1, 1, 0);

setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
setMoveKey(  spep_5+1,    1,    0,   0,   128);
setScaleKey( spep_5+1,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ 470
setDisp( spep_5, 1, 1);

entryEffect( spep_5+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
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
entryEffect( spep_5+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade



endPhase(spep_5+111);

end

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 45; --エンドフェイズのフレーム数を置き換える

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

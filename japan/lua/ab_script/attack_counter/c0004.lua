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
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1009; --huru
SE_09 = 1010; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

--SP_01 = 103063;--剣出現
--SP_02 = 103057;--マズル
--SP_03 = 103062;--斬撃
--SP_05 = 700;

SP_01 = 100356;--かめはめ波発射
SP_02 = 100355;--迫る
--SP_03 = 103062;--？？
--SP_05 = 700;

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

SP_Start = -244;		--気ダメ

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setScaleKey(   SP_ATK_0,   0, 1.0, 1.0);
setDisp( SP_Start+260, 0, 1);
changeAnime( SP_Start+260, 0, 1002);                                    -- かめはめ発射ポーズ
setMoveKey(  SP_Start+259,    0,      0,  0,   0);
setMoveKey(  SP_Start+270,    0,      0,  0,   0);
setMoveKey(  SP_Start+290,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( SP_Start+260, SP_01, 109, 0x40,  0,  300,  230,  80);   -- 伸びるかめはめ波
setEffMoveKey( 32+25, kamehame_beam,   190, 80, 0);
setEffMoveKey( 39+25, kamehame_beam,   110, 80, 0);
setEffMoveKey( 50+25, kamehame_beam,   100, 80, 0);
setEffMoveKey( 57+25, kamehame_beam,   10, 80, 0);
playSe( SP_Start+260, SE_07);

--spname = entryEffect( SP_Start+260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  SP_Start+300,    0,   -150,  0,   50);
setMoveKey(  SP_Start+305,    0,   -600,  0,   80);


entryFade( SP_Start+365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_Start+260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( SP_Start+260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( SP_Start+300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( SP_Start+260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_Start+260, sen2, 190);
setShakeChara( SP_Start+305, 0, 54, 50);
setEffScaleKey(  SP_Start+260, sen2, 1.3, 1.3);

shuchusen = entryEffectLife( SP_Start+260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_Start+260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start+300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_Start+309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start+268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_Start+268, ct, 32, 5);
setEffAlphaKey(SP_Start+268, ct, 255);
setEffAlphaKey(SP_Start+290, ct, 255);
setEffAlphaKey(SP_Start+300, ct, 0);
setEffScaleKey(SP_Start+268, ct, 0.0, 0.0);
setEffScaleKey(SP_Start+272, ct, 1.3, 1.3);
setEffScaleKey(SP_Start+292, ct, 1.3, 1.3);
setEffScaleKey(SP_Start+300, ct, 6.0, 6.0);
playSe( SP_Start+300, SE_07);
entryFade( SP_Start+355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_Start+370, 0, 0);
setDisp( SP_Start+370, 1, 1);
changeAnime(SP_Start+ 370, 1, 104);                        -- ガード
setMoveKey(  SP_Start+369,    1,  235,  0,   0);
setMoveKey(  SP_Start+370,    1,  235,  0,   0);
setMoveKey(  SP_Start+371,    1,  235,  0,   0);
setScaleKey( SP_Start+369,    1,  0.7, 0.7);
setScaleKey( SP_Start+370,    1,  0.7, 0.7);

setMoveKey(  SP_Start+400,    1,   120,  0,   0);
setScaleKey(  SP_Start+400,   1,   1.6,  1.6);

playSe( SP_Start+390, SE_06);

kamehame_beam2 = entryEffect( SP_Start+370, SP_02,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_Start+370, kamehame_beam2, 1, 1);
setEffScaleKey(SP_Start+452, kamehame_beam2, 1, 1);
setEffScaleKey(SP_Start+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_Start+452, 1, 0);  -- ダメージ振動等

playSe( SP_Start+455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_Start+455, 1, 108);
setMoveKey(  SP_Start+455, 1,  120,    0,  0);
setMoveKey(  SP_Start+469, 1,  400,    0,  0);
setScaleKey( SP_Start+455, 1,  1.6, 1.6);
setScaleKey( SP_Start+458, 1,  1.5, 1.5);
setScaleKey( SP_Start+468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_Start+370, 1, 99, 20);

entryFadeBg( SP_Start+370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( SP_Start+370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_Start+370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_Start+370, ct, 99, 20);
setEffScaleKey( SP_Start+370, ct, 2.4, 2.4);
setEffRotateKey(SP_Start+370, ct, 70);
setEffAlphaKey(SP_Start+370, ct, 255);
setEffAlphaKey(SP_Start+430, ct, 255);
setEffAlphaKey(SP_Start+450, ct, 0);

entryFade( SP_Start+452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--if (_IS_GUARD_ == 1) then


--else


--end


if (_IS_DEAD_ == 1) then


endPhase(SP_Start+470);

else

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_Start+469, 1, 1);
setMoveKey(  SP_Start+469,    1,  100,  0,   0);
setScaleKey( SP_Start+469,    1,  1.0, 1.0);
setMoveKey(  SP_Start+470,    1,    0,   0,   128);
setScaleKey( SP_Start+470,    1,  0.1, 0.1);

changeAnime( SP_Start+470, 1, 107);                         -- 手前ダメージ
entryEffect( SP_Start+478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_Start+478, SE_10);

setMoveKey(  SP_Start+478,   1,    0,   0,   128);
setMoveKey(  SP_Start+485,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( SP_Start+486, 1, 0);  -- ダメージ振動等
setShake(SP_Start+477,6,15);
setShake(SP_Start+483,15,10);

setRotateKey( SP_Start+469,  1,  0 );
setRotateKey( SP_Start+470,  1,  30 );
setRotateKey( SP_Start+472,  1,  80 );
setRotateKey( SP_Start+474,  1, 120 );
setRotateKey( SP_Start+476,  1, 160 );
setRotateKey( SP_Start+478,  1, 200 );
setRotateKey( SP_Start+480,  1, 260 );
setRotateKey( SP_Start+482,  1, 320 );
setRotateKey( SP_Start+484,  1,   0 );

setShakeChara( SP_Start+485, 1, 5,  10);
setShakeChara( SP_Start+490, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_Start+485, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_Start+485, ct, 30, 10);
setEffRotateKey( SP_Start+485, ct, -40);
setEffScaleKey( SP_Start+485, ct, 4.0, 4.0);
setEffScaleKey( SP_Start+486, ct, 2.0, 2.0);
setEffScaleKey( SP_Start+487, ct, 2.6, 2.6);
setEffScaleKey( SP_Start+488, ct, 4.0, 4.0);
setEffScaleKey( SP_Start+489, ct, 2.6, 2.6);
setEffScaleKey( SP_Start+490, ct, 3.8, 3.8);
setEffScaleKey( SP_Start+580, ct, 3.8, 3.8);
setEffAlphaKey( SP_Start+485, ct, 255);
setEffAlphaKey( SP_Start+575, ct, 255);
setEffAlphaKey( SP_Start+585, ct, 0);

playSe( SP_Start+473, SE_11);
shuchusen = entryEffectLife( SP_Start+473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_Start+473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_Start+486);

entryFade( SP_Start+570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_Start+580);

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
print ("[lua]c0007");

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

SP_01 = 150733;--味方
SP_01e = 150734;--敵側
--SP_05 = 700;
--SP_01e = 150433;--敵側対応ないので念のため
--SP_02e = 150434;--敵側対応ないので念のため





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

spep_1=28;

------------------------------------------------------
-- ため(80F)
------------------------------------------------------
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(  spep_1,   0,    0,   0,   0);
setScaleKey( spep_1,    0,  1.5, 1.5);
setMoveKey(  spep_1,    1,  100,  0,   0);
setScaleKey( spep_1,    1,  1.0, 1.0);


setVisibleUI(spep_1, 0);

--spep_1=0;
entryFade( spep_1, 0,  2, 1,  fcolor_r, fcolor_g, fcolor_b, 255);     -- black fade

entryFadeBg( spep_1, 0, 100, 0, 10, 10, 10, 180);       --ベース暗め　背景
tame = entryEffect( spep_1 , SP_01, 0x100, -1,  0,  0,  0);   -- タメポーズ
setEffAlphaKey(spep_1 ,tame,255);
setEffScaleKey( spep_1 , tame, 1, 1);
setEffMoveKey(spep_1 ,tame,0,0);


shuchusen1 = entryEffectLife( spep_1 , 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1 , shuchusen1, 1.5, 1.5);
setEffAlphaKey(spep_1 ,shuchusen1,255);

playSe( spep_1+0, SE_03);
playSe( spep_1+20, SE_03);
playSe( spep_1+44, SE_07);

playSe( spep_1+90, SE_10);

entryFade( spep_1+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_1+90,    0,  -1000,  0,   0);

--if (_IS_GUARD_ == 1) then


--else


--end


if (_IS_DEAD_ == 1) then
setDisp( spep_1+99 , 1, 1);
--spep_4=spep_3+90;
--endPhase(SP_Start+470);
endPhase(spep_1+100);
--endPhase(spep_4+170);

else

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_4=spep_1+100;
entryFade( spep_4-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4 , 0, 0, 0, 255, 255, 255, 255);          -- ベース真っ暗　背景
--[[
setDisp( spep_4-1, 1, 1);
setMoveKey(  spep_4-1,    1,  100,  0,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);
setMoveKey(  spep_4+0,    1,    0,   0,   128);
setScaleKey( spep_4+0,    1,  0.1, 0.1);

changeAnime( spep_4+0, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4-1,  1,  0 );
setRotateKey( spep_4+0,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ctga = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_4+15, ctga, 30, 10);
setEffRotateKey( spep_4+15, ctga, -40);
setEffScaleKey( spep_4+15, ctga, 4.0, 4.0);
setEffScaleKey( spep_4+16, ctga, 2.0, 2.0);
setEffScaleKey( spep_4+17, ctga, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctga, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctga, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctga, 3.8, 3.8);
setEffScaleKey( spep_4+110, ctga, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ctga, 255);
setEffAlphaKey( spep_4+105, ctga, 255);
setEffAlphaKey( spep_4+115, ctga, 0);

playSe( spep_4+3, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_4+16);

entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade


endPhase(spep_4+170);
]]
setDisp( spep_4-1, 1, 0);

setMoveKey(  spep_4,    1,  100,  0,   0);
setScaleKey( spep_4,    1,  1.0, 1.0);
setMoveKey(  spep_4+1,    1,    0,   0,   128);
setScaleKey( spep_4+1,    1,  0.1, 0.1);

changeAnime( spep_4, 1, 107);                         -- 手前ダメージ 470
setDisp( spep_4, 1, 1);

entryEffect( spep_4+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+9, SE_10);

setMoveKey(  spep_4+9,   1,    0,   0,   128);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_4+17, 1, 0);  -- ダメージ振動等
setShake(spep_4+8);
setShake(spep_4+13,15,10);

setRotateKey( spep_4+1,  1,  30 );
setRotateKey( spep_4+3,  1,  80 );
setRotateKey( spep_4+5,  1, 120 );
setRotateKey( spep_4+7,  1, 160 );
setRotateKey( spep_4+9,  1, 200 );
setRotateKey( spep_4+11,  1, 260 );
setRotateKey( spep_4+13,  1, 320 );
setRotateKey( spep_4+15,  1,   0 );

setShakeChara( spep_4+16, 1, 5,  10);
setShakeChara( spep_4+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_4+16, ct, 30, 10);
setEffRotateKey( spep_4+16, ct, -40);
setEffScaleKey( spep_4+16, ct, 4.0, 4.0);
setEffScaleKey( spep_4+17, ct, 2.0, 2.0);
setEffScaleKey( spep_4+18, ct, 2.6, 2.6);
setEffScaleKey( spep_4+19, ct, 4.0, 4.0);
setEffScaleKey( spep_4+20, ct, 2.6, 2.6);
setEffScaleKey( spep_4+21, ct, 3.8, 3.8);
setEffScaleKey( spep_4+111, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+16, ct, 255);
setEffAlphaKey( spep_4+106, ct, 255);
setEffAlphaKey( spep_4+116, ct, 0);

playSe( spep_4+4, SE_11);
shuchusen = entryEffectLife( spep_4+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_4+17);

entryFade( spep_4+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade



endPhase(spep_4+111);

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
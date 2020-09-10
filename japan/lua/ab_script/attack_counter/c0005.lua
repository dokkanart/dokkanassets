
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

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

SP_01 = 150435;--移動
SP_02 = 150436;--打撃連打
SP_03 = 150437;--蹴り飛ばし
SP_04 = 150440;--移動反転
SP_05 = 150441;--蹴り飛ばし反転

spep_1 =0;
spep_2 = spep_1+100;
spep_3 = spep_2+130;
spep_4 = spep_3+70;

---------------
setVisibleUI(0, 0);


if ((_IS_CRITICAL_ == 1) ) then --会心の場合

--entryFadeBg( 0, 30, 151, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 36, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( 36, shuchusen, 1.0, 1.0);

kaisinn = entryEffect( 39, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

------------------------------------------------------
-- 超4ゴジータ移動(90F)
------------------------------------------------------
spep_1 =26;

setDisp(0,0,0);
setDisp(0,1,0);
entryFade( 0, 0, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_1, 0, 90, 0, 255, 255, 255, 255);    -- 暗め背景
entryFadeBg( spep_1, 0, 90, 0, 230, 230, 230, 255);    -- 白背景

sen2 = entryEffectLife( spep_1 , 921, 90, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1 , sen2, 190);
setEffScaleKey(  spep_1 , sen2, 1.3, 1.3);

idou = entryEffect( spep_1 , SP_01, 0x80, -1,  0,  0,  0);   -- 移動
setEffAlphaKey(spep_1 ,idou ,255);
setEffScaleKey( spep_1 , idou , 1, 1);
setEffMoveKey(spep_1 , idou ,0,0);
setEffShake(spep_1, idou , 90,10);


shuchusen1 = entryEffectLife( spep_1 , 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1 , shuchusen1, 1.5, 1.5);

playSe( spep_1, SE_01);
playSe( spep_1, SE_02);
playSe( spep_1+60, 1042);

setEffAlphaKey(spep_1+88 ,idou,255);
setEffAlphaKey(spep_1+90 ,idou,0);
setEffMoveKey(spep_1+90 ,idou,0,0);

------------------------------------------------------
-- 敵殴る(100F)
------------------------------------------------------
spep_2 = spep_1+90;
entryFade( spep_2-5, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
shuchusen2 = entryEffectLife( spep_2 , 906, 36, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2 , shuchusen2, 1.5, 1.5);

entryFadeBg( spep_2 , 0, 100, 0, 10, 10, 10, 180);  -- ベース暗め背景
entryEffectLife( spep_2 , 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

setDisp(spep_2,1,1);
changeAnime(spep_2 , 1, 101); 
setShakeChara( spep_2 , 1, 40, 10);
setMoveKey(  spep_2,   1,  -800,   0,   0);
setScaleKey( spep_2,   1,  5 ,  5);

setMoveKey(  spep_2+30,    1,  0,  0,   0);
setScaleKey( spep_2+30,    1,  2.5 , 2.5);

dageki = entryEffect( spep_2+20 , SP_02, 0x100, -1,  0,  0,  0);   -- 打撃
setEffAlphaKey(spep_2+20 ,dageki ,255);
setEffScaleKey( spep_2+20 , dageki , 1, 1);
setEffMoveKey(spep_2+20 , dageki ,0,0);
setEffShake(spep_2+20, dageki , 80,10);

entryFade( spep_2+30 , 5, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen2 = entryEffectLife( spep_2+36 , 906, 94, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2 , shuchusen2, 1.5, 1.5);

changeAnime(spep_2+38 , 1, 108); 
setShakeChara( spep_2+38 , 1, 92, 20);
setMoveKey(  spep_2+38,   1,  0,  0 ,   0);
setScaleKey( spep_2+38,   1,  2.5 ,  2.5);


setMoveKey(  spep_2+40,   1,  50,  0 ,   0);
setScaleKey( spep_2+40,   1,  2.5 ,  2.5);

setMoveKey(  spep_2+50,   1,  50,  0 ,   0);
setScaleKey( spep_2+50,   1,  2.5 ,  2.5);

setMoveKey(  spep_2+100,    1,  100,  0,   0);
setScaleKey( spep_2+100,    1,  2.3 , 2.3);

setEffAlphaKey(spep_2+98 , dageki ,255);
setEffAlphaKey(spep_2+100 , dageki ,0);
setEffMoveKey(spep_2+100 , dageki ,0,0);

playSe( spep_2+40, 1010);
playSe( spep_2+50, 1010);
playSe( spep_2+60, 1010);
playSe( spep_2+70, 1010);
playSe( spep_2+80, 1010);
playSe( spep_2+90, 1010);


-- 書き文字エントリー
zudodo = entryEffectLife( spep_2+40, 10014, 99, 0, -1, 0, 150, 300); -- ズドドッ
setEffShake(spep_2+40, zudodo , 99, 20);
setEffScaleKey( spep_2+40, zudodo , 2.4, 2.4);
setEffRotateKey(spep_2+40, zudodo , 70);
setEffAlphaKey(spep_2+40, zudodo , 255);
setEffAlphaKey(spep_2+80, zudodo , 255);
setEffAlphaKey(spep_2+100, zudodo , 0);

------------------------------------------------------
-- 蹴り飛ばし(62F)
------------------------------------------------------
spep_3 = spep_2+100;
setDisp( spep_3 , 1, 0);

entryFade( spep_3-5, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3 , 0, 62, 0, 10, 10, 10, 180);  -- ベース暗め　背景

sen3 = entryEffectLife( spep_3 , 921, 62, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3 , sen3, 190);
setEffScaleKey(  spep_3 , sen3, 1.3, 1.3);

shuchusen3 = entryEffectLife( spep_3 , 906, 62, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3 , shuchusen3, 1.5, 1.5);

keri = entryEffect( spep_3 , SP_03, 0x80, -1,  0,  0,  0);   -- 蹴り飛ばし
setEffAlphaKey( spep_3 ,keri ,255);
setEffScaleKey( spep_3 , keri , 1, 1);
setEffMoveKey( spep_3 , keri ,0,0);
setEffShake( spep_3 , keri , 70,10);

playSe(spep_3+6,1026);

entryFade( spep_3+10 , 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(spep_3+20,109);
playSe(spep_3+30,1024);

setEffAlphaKey( spep_3+70 ,keri ,255);
setEffScaleKey( spep_3+70 , keri , 1, 1);
setEffMoveKey( spep_3+70 , keri ,0,0);
--setEffShake( spep_3+70 , keri , 70,10);
setEffAlphaKey( spep_3+72 ,keri ,0);


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_4 = spep_3+62;
entryFade( spep_4-5, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(spep_4,1,1);

if (_IS_DEAD_ == 1) then

setDisp( spep_3+64 , 1, 1);
endPhase(spep_3+65);

else

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


print ("[lua]sp0021");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150384;--導入
SP_01e = 150385;--溜め
SP_02 = 150386;--ビーム発射
SP_03 = 150387;--ビーム敵に迫る
SP_03e = 150388;--ギャン
SP_04 = 150389;--爆発
SP_04e = 150383;--爆発


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

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 1);

setMoveKey( 0, 0,    0, -54,   0);
setMoveKey( 1, 0,    0, -54,   0);

setScaleKey( 0,   0, 1.5, 1.5);
setScaleKey( 1,   0, 1.5, 1.5);
setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

------------------------------------------------------
--きため
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 5, 0, 79, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(5, 0);


changeAnime(  30, 0, 17);                       -- 溜め!
aura = entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
aura1 = entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
setEffScaleKey( 30, aura, 1.0, 1.0);
setEffAlphaKey( 30, aura, 255);
setEffScaleKey( 30, aura1, 1.0, 1.0);
setEffAlphaKey( 30, aura1, 255);

playSe( 30, SE_01);

playSe( 50, SE_03);
playSe( 70, SE_03);

--entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);
]]
-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);




------------------------------------------------------
-- 顔カットイン(100F)
------------------------------------------------------

spep_1 = 70;
entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setEffAlphaKey( spep_1, aura, 255);
setEffAlphaKey( spep_1, aura1, 255);
setEffAlphaKey( spep_1+1, aura, 0);
setEffAlphaKey( spep_1+1, aura1, 0);

aura2 = entryEffect(  spep_1,   1503,   0x80, -1,  0,  0,  0);    -- eff_002
aura3 = entryEffect(  spep_1,   1502,   0,    -1,  0,  0,  0);    -- eff_001
setEffScaleKey( spep_1, aura2, 1.0, 1.0);
setEffAlphaKey( spep_1, aura2, 255);
setEffScaleKey( spep_1, aura3, 1.0, 1.0);
setEffAlphaKey( spep_1, aura3, 255);

speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_1, SE_04);

shuchusen = entryEffectLife( spep_1, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.4, 1.4);

--[[
-- 書き文字エントリー
ct = entryEffectLife( spep_1, 190006, 85, 0x100, -1, 0, 0, 500);    -- ゴゴゴ・・・
setEffShake( spep_1, ct, 85, 8);
setEffScaleKey( spep_1, ct, 0.8, 0.8);
]]
-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1, 190006, 85, 0x100, -1, 0,100, 500);    -- ゴゴゴゴ
setEffShake(spep_1, ctgogo, 40, 28);
setEffScaleKey(spep_1, ctgogo, 0.7, 0.7);
setEffRotateKey(spep_1, ctgogo, 10);
setEffAlphaKey( spep_1, ctgogo, 255);


------------------------------------------------------
-- 分身(208F)
------------------------------------------------------

spep_2 = spep_1+85;

entryFade( spep_2, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setScaleKey( spep_2,   0, 1.5, 1.5);
setScaleKey( spep_2+1,   0, 1.0, 1.0);

playSe( spep_2+1, SE_05);
speff = entryEffect( spep_2+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+90;
entryFade( spep_3-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 208, 0, 10, 10, 10, 180);          -- ベース暗め　背景

setDisp( spep_3, 0, 0);



bunnshin = entryEffect(  spep_3,   SP_01,   0,     -1,  0,  0,  0);--導入
setEffScaleKey( spep_3, bunnshin, 1.0, 1.0);
setEffAlphaKey( spep_3, bunnshin, 255);

--setEffShake( spep_2, donyu,87,8)

shuchusen = entryEffectLife( spep_3, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.4, 1.4);


shuchusen = entryEffectLife( spep_3+80, 906, 50, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+80, shuchusen, 1.4, 1.4);


shuchusen = entryEffectLife( spep_3+140, 906, 68, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+140, shuchusen, 1.4, 1.4);

--[[
tame = entryEffect(  spep_2,  SP_02,   0x80,     -1,  0,  0,  0);--溜め
setEffShake( spep_2, tame,146,8)
]]
-- ** エフェクト等 ** --

playSe( spep_3, SE_03);
playSe( spep_3+30, SE_03);
playSe( spep_3+60, SE_03);
playSe( spep_3+90, SE_03);
playSe( spep_3+120, SE_04);


playSe( spep_3+180, 1018);


------------------------------------------------------
-- ゲノム発射(100F)
------------------------------------------------------
spep_4 = spep_3+208;

entryFade( spep_4-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景

playSe( spep_4, 1018);
playSe( spep_4+20, SE_09);
playSe( spep_4+28, SE_09);
playSe( spep_4+44, SE_09);
playSe( spep_4+56, SE_09);

bunnshin = entryEffect(  spep_4,   SP_02,   0,     -1,  0,  0,  0);--導入
setEffScaleKey( spep_4, bunnshin, 1.0, 1.0);
setEffAlphaKey( spep_4, bunnshin, 255);
setDisp( spep_4, 1, 1);
setDisp( spep_4, 0, 0);


changeAnime( spep_4+1, 1, 100);                       -- 立ち
setMoveKey(   spep_4+1,   1,    100, 100,   0);
setScaleKey(   spep_4+1,   1, 1.5, 1.5);

changeAnime( spep_4+20, 1, 106);                       -- 立ち
setShake(spep_4+20,50,15);

ryusentosshinn = entryEffectLife( spep_4, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusentosshinn, -30);
setEffScaleKey( spep_4, ryusentosshinn, 1.6, 1.6);
setEffAlphaKey( spep_4, ryusentosshinn, 255);

-- 書き文字エントリー
ctzudodo = entryEffectLife( spep_4+0, 10014, 99, 0, -1, 0, -50, 255); -- ズドドッ
setEffShake(spep_4+0, ctzudodo, 99, 20);
setEffScaleKey( spep_4+0, ctzudodo, 2.8, 2.8);
setEffRotateKey(spep_4+0, ctzudodo, -20);
setEffAlphaKey(spep_4+0, ctzudodo, 255);
setEffAlphaKey(spep_4+60, ctzudodo, 255);
setEffAlphaKey(spep_4+70, ctzudodo, 0);


shuchusentosshin = entryEffectLife( spep_4, 906, 70, 0x100,  -1, 0,  200,  -200);   -- 集中線
setEffScaleKey( spep_4, shuchusentosshin, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusentosshin, 255);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 460; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- ゲノム迫る(100F)
------------------------------------------------------
spep_5 = spep_4+70;

entryFade( spep_5-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp( spep_5, 1, 0);
setMoveKey(   spep_5+1,   1,    100, 100,   0);
setScaleKey(   spep_5+1,   1, 1.5, 1.5);

bunnshin = entryEffect(  spep_5,   SP_03,   0,     -1,  0,  0,  0);--導入
setEffScaleKey( spep_5, bunnshin, 1.0, 1.0);
setEffAlphaKey( spep_5, bunnshin, 255);


shuchusentosshin = entryEffectLife( spep_5, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusentosshin, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusentosshin, 255);



playSe( spep_5+36, SE_04);


------------------------------------------------------
-- ギャン (110F)
------------------------------------------------------
spep_6 = spep_5+70;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setRotateKey( spep_6,  1,  0 );
setRotateKey( spep_6+1,  1,  30 );

ryusentosshinn = entryEffectLife( spep_6, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_6, ryusentosshinn, 0);
setEffScaleKey( spep_6, ryusentosshinn, 1.6, 1.6);
setEffAlphaKey( spep_6, ryusentosshinn, 255);

setMoveKey(   spep_6+1,   1,    0, 0,   0);
setScaleKey(   spep_6+1,   1, 1.5, 1.5);
setDisp( spep_6, 1, 1);

setScaleKey(   spep_6+56,   1, 1.8, 1.8);

playSe( spep_6, 1018);

playSe( spep_6+52, SE_09);


-- 書き文字エントリー
ctzudodo = entryEffectLife( spep_6+56, 10021, 44, 0, -1, 0, -50, 255); -- ズドドッ
setEffRotateKey(spep_6+56, ctzudodo, -20);
setEffScaleKey( spep_6+56, ctzudodo, 2.8, 2.8);
setEffAlphaKey(spep_6+56, ctzudodo, 255);
setEffShake(spep_6+57, ctzudodo, 99, 20);
setEffAlphaKey(spep_6+90, ctzudodo, 255);
setEffAlphaKey(spep_6+100, ctzudodo, 0);




shuchusentosshin = entryEffectLife( spep_6, 906, 10, 0x100,  -1, 0,  200,  -200);   -- 集中線
setEffScaleKey( spep_6, shuchusentosshin, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusentosshin, 255);




bunnshin = entryEffect(  spep_6,   SP_04,   0,     -1,  0,  0,  0);--導入
setEffScaleKey( spep_6, bunnshin, 1.0, 1.0);
setEffAlphaKey( spep_6, bunnshin, 255);


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_7=spep_6+100 --410 469
spep_9=spep_7; --410 469

entryFade( spep_9-5, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 0, 0, 255, 255, 255, 255);          -- ベース暗め　背景
setScaleKey(   spep_9,   1, 1.8, 1.8);
setRotateKey( spep_9,  1,  30 );


setMoveKey(  spep_9-1,    1,    0,   0,   128);
setScaleKey( spep_9-1,    1,  0.1, 0.1);



--470
setDisp( spep_9+1, 1, 1);
setMoveKey(  spep_9,    1,    0,   0,   128);
setScaleKey( spep_9,    1,  0.1, 0.1);

changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);

setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9+8,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+15, ct, 30, 10);
setEffRotateKey( spep_9+15, ct, -40);
setEffScaleKey( spep_9+15, ct, 4.0, 4.0);
setEffScaleKey( spep_9+16, ct, 2.0, 2.0);
setEffScaleKey( spep_9+17, ct, 2.6, 2.6);
setEffScaleKey( spep_9+18, ct, 4.0, 4.0);
setEffScaleKey( spep_9+19, ct, 2.6, 2.6);
setEffScaleKey( spep_9+20, ct, 3.8, 3.8);
setEffScaleKey( spep_9+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ct, 255);
setEffAlphaKey( spep_9+115, ct, 255);
setEffAlphaKey( spep_9+115, ct, 0);

playSe( spep_9+3, SE_11);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ




-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);


else
------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
--バイオブロリー登場
------------------------------------------------------


entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 5, 0, 79, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(5, 0);


changeAnime(  30, 0, 17);                       -- 溜め!
aura = entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
aura1 = entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
setEffScaleKey( 30, aura, 1.0, 1.0);
setEffAlphaKey( 30, aura, 255);
setEffScaleKey( 30, aura1, 1.0, 1.0);
setEffAlphaKey( 30, aura1, 255);

playSe( 30, SE_01);

playSe( 50, SE_03);
playSe( 70, SE_03);

--entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);
]]
-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);




------------------------------------------------------
-- 顔カットイン(100F)
------------------------------------------------------

spep_1 = 70;
entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setEffAlphaKey( spep_1, aura, 255);
setEffAlphaKey( spep_1, aura1, 255);
setEffAlphaKey( spep_1+1, aura, 0);
setEffAlphaKey( spep_1+1, aura1, 0);

aura2 = entryEffect(  spep_1,   1503,   0x80, -1,  0,  0,  0);    -- eff_002
aura3 = entryEffect(  spep_1,   1502,   0,    -1,  0,  0,  0);    -- eff_001
setEffScaleKey( spep_1, aura2, 1.0, 1.0);
setEffAlphaKey( spep_1, aura2, 255);
setEffScaleKey( spep_1, aura3, 1.0, 1.0);
setEffAlphaKey( spep_1, aura3, 255);

--[[
speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
playSe( spep_1, SE_04);

shuchusen = entryEffectLife( spep_1, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.4, 1.4);

--[[
-- 書き文字エントリー
ct = entryEffectLife( spep_1, 190006, 85, 0x100, -1, 0, 0, 500);    -- ゴゴゴ・・・
setEffShake( spep_1, ct, 85, 8);
setEffScaleKey( spep_1, ct, 0.8, 0.8);
]]
-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1, 190006, 85, 0x100, -1, 0,100, 500);    -- ゴゴゴゴ
setEffShake(spep_1, ctgogo, 40, 28);
setEffScaleKey(spep_1, ctgogo, -0.7, 0.7);
setEffRotateKey(spep_1, ctgogo, 10);
setEffAlphaKey( spep_1, ctgogo, 255);


------------------------------------------------------
-- 分身(208F)
------------------------------------------------------

spep_2 = spep_1+85;

entryFade( spep_2, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setScaleKey( spep_2,   0, 1.5, 1.5);
setScaleKey( spep_2+1,   0, 1.0, 1.0);

playSe( spep_2+1, SE_05);
speff = entryEffect( spep_2+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3 = spep_2+90;
entryFade( spep_3-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 208, 0, 10, 10, 10, 180);          -- ベース暗め　背景

setDisp( spep_3, 0, 0);



bunnshin = entryEffect(  spep_3,   SP_01e,   0,     -1,  0,  0,  0);--導入
setEffScaleKey( spep_3, bunnshin, 1.0, 1.0);
setEffAlphaKey( spep_3, bunnshin, 255);

--setEffShake( spep_2, donyu,87,8)

shuchusen = entryEffectLife( spep_3, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.4, 1.4);


shuchusen = entryEffectLife( spep_3+80, 906, 50, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+80, shuchusen, 1.4, 1.4);


shuchusen = entryEffectLife( spep_3+140, 906, 68, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+140, shuchusen, 1.4, 1.4);

--[[
tame = entryEffect(  spep_2,  SP_02,   0x80,     -1,  0,  0,  0);--溜め
setEffShake( spep_2, tame,146,8)
]]
-- ** エフェクト等 ** --

playSe( spep_3, SE_03);
playSe( spep_3+30, SE_03);
playSe( spep_3+60, SE_03);
playSe( spep_3+90, SE_03);
playSe( spep_3+120, SE_04);


playSe( spep_3+180, 1018);


------------------------------------------------------
-- ゲノム発射(100F)
------------------------------------------------------
spep_4 = spep_3+208;

entryFade( spep_4-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景

playSe( spep_4, 1018);
playSe( spep_4+20, SE_09);
playSe( spep_4+28, SE_09);
playSe( spep_4+44, SE_09);
playSe( spep_4+56, SE_09);

bunnshin = entryEffect(  spep_4,   SP_02,   0,     -1,  0,  0,  0);--導入
setEffScaleKey( spep_4, bunnshin, 1.0, 1.0);
setEffAlphaKey( spep_4, bunnshin, 255);
setDisp( spep_4, 1, 1);
setDisp( spep_4, 0, 0);


changeAnime( spep_4+1, 1, 100);                       -- 立ち
setMoveKey(   spep_4+1,   1,    100, 100,   0);
setScaleKey(   spep_4+1,   1, 1.5, 1.5);

changeAnime( spep_4+20, 1, 106);                       -- 立ち
setShake(spep_4+20,50,15);

ryusentosshinn = entryEffectLife( spep_4, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusentosshinn, -30);
setEffScaleKey( spep_4, ryusentosshinn, 1.6, 1.6);
setEffAlphaKey( spep_4, ryusentosshinn, 255);

-- 書き文字エントリー
ctzudodo = entryEffectLife( spep_4+0, 10014, 99, 0, -1, 0, -50, 255); -- ズドドッ
setEffShake(spep_4+0, ctzudodo, 99, 20);
setEffScaleKey( spep_4+0, ctzudodo, 2.8, 2.8);
setEffRotateKey(spep_4+0, ctzudodo, -20);
setEffAlphaKey(spep_4+0, ctzudodo, 255);
setEffAlphaKey(spep_4+60, ctzudodo, 255);
setEffAlphaKey(spep_4+70, ctzudodo, 0);


shuchusentosshin = entryEffectLife( spep_4, 906, 70, 0x100,  -1, 0,  200,  -200);   -- 集中線
setEffScaleKey( spep_4, shuchusentosshin, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusentosshin, 255);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 460; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- ゲノム迫る(100F)
------------------------------------------------------
spep_5 = spep_4+70;

entryFade( spep_5-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setDisp( spep_5, 1, 0);
setMoveKey(   spep_5+1,   1,    100, 100,   0);
setScaleKey(   spep_5+1,   1, 1.5, 1.5);

bunnshin = entryEffect(  spep_5,   SP_03e,   0,     -1,  0,  0,  0);--導入
setEffScaleKey( spep_5, bunnshin, 1.0, 1.0);
setEffAlphaKey( spep_5, bunnshin, 255);


shuchusentosshin = entryEffectLife( spep_5, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusentosshin, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusentosshin, 255);



playSe( spep_5+36, SE_04);


------------------------------------------------------
-- ギャン (110F)
------------------------------------------------------
spep_6 = spep_5+70;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setRotateKey( spep_6,  1,  0 );
setRotateKey( spep_6+1,  1,  30 );

ryusentosshinn = entryEffectLife( spep_6, 920, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_6, ryusentosshinn, 0);
setEffScaleKey( spep_6, ryusentosshinn, 1.6, 1.6);
setEffAlphaKey( spep_6, ryusentosshinn, 255);

setMoveKey(   spep_6+1,   1,    0, 0,   0);
setScaleKey(   spep_6+1,   1, 1.5, 1.5);
setDisp( spep_6, 1, 1);

setScaleKey(   spep_6+56,   1, 1.8, 1.8);

playSe( spep_6, 1018);

playSe( spep_6+52, SE_09);


-- 書き文字エントリー
ctzudodo = entryEffectLife( spep_6+56, 10021, 44, 0, -1, 0, -50, 255); -- ズドドッ
setEffRotateKey(spep_6+56, ctzudodo, -20);
setEffScaleKey( spep_6+56, ctzudodo, 2.8, 2.8);
setEffAlphaKey(spep_6+56, ctzudodo, 255);
setEffShake(spep_6+57, ctzudodo, 99, 20);
setEffAlphaKey(spep_6+90, ctzudodo, 255);
setEffAlphaKey(spep_6+100, ctzudodo, 0);




shuchusentosshin = entryEffectLife( spep_6, 906, 10, 0x100,  -1, 0,  200,  -200);   -- 集中線
setEffScaleKey( spep_6, shuchusentosshin, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusentosshin, 255);




bunnshin = entryEffect(  spep_6,   SP_04e,   0,     -1,  0,  0,  0);--導入
setEffScaleKey( spep_6, bunnshin, -1.0, 1.0);
setEffAlphaKey( spep_6, bunnshin, 255);


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_7=spep_6+100 --410 469
spep_9=spep_7; --410 469

entryFade( spep_9-5, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 0, 0, 255, 255, 255, 255);          -- ベース暗め　背景
setScaleKey(   spep_9,   1, 1.8, 1.8);
setRotateKey( spep_9,  1,  30 );


setMoveKey(  spep_9-1,    1,    0,   0,   128);
setScaleKey( spep_9-1,    1,  0.1, 0.1);



--470
setDisp( spep_9+1, 1, 1);
setMoveKey(  spep_9,    1,    0,   0,   128);
setScaleKey( spep_9,    1,  0.1, 0.1);

changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);

setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9+8,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+15, ct, 30, 10);
setEffRotateKey( spep_9+15, ct, -40);
setEffScaleKey( spep_9+15, ct, 4.0, 4.0);
setEffScaleKey( spep_9+16, ct, 2.0, 2.0);
setEffScaleKey( spep_9+17, ct, 2.6, 2.6);
setEffScaleKey( spep_9+18, ct, 4.0, 4.0);
setEffScaleKey( spep_9+19, ct, 2.6, 2.6);
setEffScaleKey( spep_9+20, ct, 3.8, 3.8);
setEffScaleKey( spep_9+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ct, 255);
setEffAlphaKey( spep_9+115, ct, 255);
setEffAlphaKey( spep_9+115, ct, 0);

playSe( spep_9+3, SE_11);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ




-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);


end

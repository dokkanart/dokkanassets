-- sp1160 ヤジロベー

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
SP_01 = 150808;

SP_01 = 151459;--飛んでく
SP_02 = 151460;--手前に突撃
SP_03 = 151461;--突撃パンチ
SP_03e = 151462;--突撃パンチ

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

multi_frm = 2;


------------------------------------------------------
--準備運動(90f)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
changeAnime( 23,0,17);
setMoveKey( 0, 0, 0, -54, 0); --味方位置
setMoveKey( 1, 0, 0, -54, 0); --味方位置
setMoveKey( 2, 0, 0, -54, 0); --味方位置
setMoveKey( 3, 0, 0, -54, 0); --味方位置
setMoveKey( 4, 0, 0, -54, 0); --味方位置
setMoveKey( 5, 0, 0, -54, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  1,  0 );
setShakeChara( 23 ,0 ,37 ,12);

entryEffect(  23,   1501,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  23,   1502,  0,     -1,  0,  0,  0);   -- eff_003 (気)

-- 書き文字エントリー --
ct_01 = entryEffectLife( 30, 10013, 40, 0, -1, 0, 0, 100); -- ズズズンッ
setEffShake( 30, ct_01, 40, 20);
setEffAlphaKey( 30, ct_01, 255);
setEffAlphaKey( 50, ct_01, 255);
setEffAlphaKey( 60, ct_01, 0);
setEffScaleKey( 30, ct_01, 0.1, 0.1);
setEffScaleKey( 40, ct_01, 3.0, 3.0);
--setEffMoveKey( spep_0+30, ct_01, 50, 0)
setEffMoveKey( 40, ct_01, 0, 300)

-- ** 音 ** --
playSe( 23, SE_05);


------------------------------------------------------
-- 溜め(85f)
------------------------------------------------------

spep_1=60;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

setRotateKey( spep_1,  0,   0 );
changeAnime(spep_1,0,17);
setMoveKey(spep_1, 0, 0, -54, 0);

--entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景
setShakeChara( spep_1 ,0 ,85 ,12);


-- ** エフェクト等 ** --
aura1503 = entryEffect( spep_1, 1503, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_1, aura1503, 0, 0, 0);
setEffScaleKey( spep_1, aura1503, 1.0, 1.0);
setEffAlphaKey( spep_1, aura1503, 255);
setEffRotateKey( spep_1, aura1503, 0);

-- ** エフェクト等 ** --
aura1502 = entryEffect( spep_1, 1502, 0, -1, 0, 0, 0); 
setEffMoveKey( spep_1, aura1502, 0, 0, 0);
setEffScaleKey( spep_1, aura1502, 1.0, 1.0);
setEffAlphaKey( spep_1, aura1502, 255);
setEffRotateKey( spep_1, aura1502, 0);

sayuushuchu1 = entryEffectLife( spep_1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1, sayuushuchu1, 0, 0, 0);
setEffScaleKey( spep_1, sayuushuchu1, 1.0, 1.0);
setEffAlphaKey( spep_1, sayuushuchu1, 255);
setEffRotateKey( spep_1, sayuushuchu1, 0);

speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+13, 190006, 85, 0x100, -1, 0, -200, 500);    -- ゴゴゴゴ 
setEffShake( spep_1+13, ctgogo, 80, 8);
setEffRotateKey( spep_1+13, ctgogo, 0);

setEffScaleKey( spep_1+13, ctgogo, 0.7, 0.7);
setEffAlphaKey( spep_1+13, ctgogo, 255);

setEffScaleKey( spep_1+91, ctgogo, 0.7, 0.7);
setEffAlphaKey( spep_1+91, ctgogo, 255);

setEffScaleKey( spep_1+99, ctgogo, 3.0, 3.0);
setEffAlphaKey( spep_1+99, ctgogo, 0);

playSe( spep_1+5, SE_04);




------------------------------------------------------
--カードイラスト	(90f)
------------------------------------------------------

spep_2=spep_1+85;

entryFade( spep_2-10, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 58, 0, 0, 0, 0, 255);       -- ベース暗め　背景
setDisp( spep_2, 0, 0);

--カード絵＋技名
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

------------------------------------------------------
-- ダッシュ(96F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10,180);          -- ベース暗め　背景

totugeki = entryEffectLife( spep_3, SP_01, 100, 0x100,  -1, 0,  0,  0);  
setEffMoveKey( spep_3, totugeki, 0, 0, 0);
setEffScaleKey( spep_3, totugeki, 1.0, 1.0);
setEffAlphaKey( spep_3, totugeki, 255);
setEffRotateKey( spep_3, totugeki, 0);
setEffShake(spep_3+1, totugeki, 100, 5);
--[[
setEffRotateKey( spep_3+55, totugeki, 0);
setEffScaleKey( spep_3+55, totugeki, 1.0, 1.0);
setEffRotateKey( spep_3+60, totugeki, 30);
setEffScaleKey( spep_3+60, totugeki, 1.0, 1.0);
]]--



ruysen3 = entryEffectLife( spep_3+66, 921, 34, 0x80,  -1, 0,  0,  0);   
setEffMoveKey( spep_3+66, ruysen3, 0, 0, 0);
setEffScaleKey( spep_3+66, ruysen3, 1.7, 1.7);
setEffAlphaKey( spep_3+66, ruysen3, 255);
setEffRotateKey( spep_3+66, ruysen3, -50);

playSe( spep_3+2, 1034);
playSe( spep_3+20, 1034);
playSe( spep_3+40, 1034);
playSe( spep_3+60, 1030);

------------------------------------------------------
-- 迫る(100F)
------------------------------------------------------
spep_4=spep_3+100;

entryFade( spep_4-15, 3, 13, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 180);          -- ベース暗め　背景

semaru = entryEffect( spep_4, SP_02, 0x100,  -1, 0,  0,  0);  
setEffScaleKey( spep_4, semaru, 1.0, 1.0);


shuchusen4 = entryEffectLife( spep_4, 906, 60, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);


playSe( spep_4, 1018);

------------------------------------------------------
-- ため(120F)
------------------------------------------------------
spep_5=spep_4+59;

entryFade( spep_5-6, 3, 7, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 65, 0, 10, 10, 10, 180);          -- ベース暗め　背景

semaru1 = entryEffectLife( spep_5, SP_03, 64, 0x100,  -1, 0,  0,  0);  
setEffMoveKey ( spep_5, semaru1, 0, 0, 0);
setEffScaleKey( spep_5, semaru1, 1.0, 1.0);
setEffAlphaKey( spep_5, semaru1, 255);
setEffRotateKey( spep_5, semaru1, 0);
setEffMoveKey ( spep_5+64, semaru1, 0, 0, 0);
setEffScaleKey( spep_5+64, semaru1, 1.0, 1.0);
setEffAlphaKey( spep_5+64, semaru1, 255);
setEffRotateKey( spep_5+64, semaru1, 0);


ruysen5 = entryEffectLife( spep_5, 920, 65, 0x80,  -1, 0,  0,  0);   
setEffMoveKey( spep_5, ruysen5, 0, 0, 0);
setEffScaleKey( spep_5, ruysen5, 1.0, 1.0);
setEffAlphaKey( spep_5, ruysen5, 255);
setEffRotateKey( spep_5, ruysen5, 0);


changeAnime(spep_5,1,101);
setScaleKey( spep_5,    1,  1.5, 1.5);
setShakeChara( spep_5+1 ,1 ,65 ,15);


-- 書き文字エントリー --
ct5 = entryEffectLife( spep_5, 10014, 35, 0, -1, 0, -50, 200); -- ズドドドッ
setEffShake( spep_5, ct5, 35, 20);
setEffAlphaKey( spep_5, ct5, 255);
setEffScaleKey( spep_5, ct5, 1.5, 1.5);
setEffScaleKey( spep_5+35, ct5, 1.5, 1.5);
setEffRotateKey( spep_5, ct5, 20);


setDisp( spep_5+10, 1, 1);
setMoveKey( spep_5, 1, 600, 0, 0); --敵位置
setMoveKey( spep_5+25, 1, 100, 0, 0); --敵位置



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 410; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, 0,   0);
setMoveKey( SP_dodge+9, 0,  -1500,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------
setMoveKey( spep_5+36, 1, 100, 0, 0); --敵位置
setMoveKey( spep_5+50, 1, 1000, 0, 0); --敵位置
setMoveKey( spep_5+65, 1, 1000, 0, 0); --敵位置

changeAnime(spep_5+36,1,108);
setShakeChara( spep_5+36 ,1 ,29 ,15);


ctbago = entryEffectLife( spep_5+36, 10020, 29, 0, -1, 0, 100, 250); -- バゴォッ
setEffShake(spep_5+36, ctbago, 32, 5);
setEffAlphaKey(spep_5+36, ctbago, 255);
setEffAlphaKey(spep_5+64, ctbago, 255);
setEffAlphaKey(spep_5+65, ctbago, 0);
setEffScaleKey(spep_5+36, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+39, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+40, ctbago, 1.8, 1.8);
setEffScaleKey(spep_5+42, ctbago, 1.8, 1.8);
setEffScaleKey(spep_5+43, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+45, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+46, ctbago, 1.8, 1.8);
setEffScaleKey(spep_5+51, ctbago, 1.8, 1.8);
setEffScaleKey(spep_5+52, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+55, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+56, ctbago, 1.8, 1.8);
setEffScaleKey(spep_5+61, ctbago, 1.8, 1.8);
setEffScaleKey(spep_5+62, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+65, ctbago, 1.5, 1.5);
setEffRotateKey( spep_5, ctbago, 20);
setEffRotateKey( spep_5+65, ctbago, 20);


playSe( spep_5+34, SE_09);


------------------------------------------------------
-- ガッ(74)
------------------------------------------------------
spep_7=spep_5+65;

entryFade( spep_7-10, 5, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 敵キャラの前の終点 ** --
setDisp( spep_7-2, 0, 0);
setScaleKey( spep_7-2,    0,  1.5, 1.5);
setRotateKey( spep_7-2, 1, 0);
setMoveKey(  spep_7-2, 1, 100, 0, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 1.5, 1.5);
setRotateKey( spep_7-1, 1, 60);

setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_06);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
kame_flag = 0x00;


setVisibleUI(0, 0);
setDisp( 0, 0, 1); --味方表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
changeAnime( 23,0,17);
setMoveKey( 0, 0, 0, -54, 0); --味方位置
setMoveKey( 1, 0, 0, -54, 0); --味方位置
setMoveKey( 2, 0, 0, -54, 0); --味方位置
setMoveKey( 3, 0, 0, -54, 0); --味方位置
setMoveKey( 4, 0, 0, -54, 0); --味方位置
setMoveKey( 5, 0, 0, -54, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  1,  0 );
setShakeChara( 23 ,0 ,37 ,12);

entryEffect(  23,   1501,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  23,   1502,  0,     -1,  0,  0,  0);   -- eff_003 (気)

-- 書き文字エントリー --
ct_01 = entryEffectLife( 30, 10013, 40, 0, -1, 0, 0, 100); -- ズズズンッ
setEffShake( 30, ct_01, 40, 20);
setEffAlphaKey( 30, ct_01, 255);
setEffAlphaKey( 50, ct_01, 255);
setEffAlphaKey( 60, ct_01, 0);
setEffScaleKey( 30, ct_01, 0.1, 0.1);
setEffScaleKey( 40, ct_01, 3.0, 3.0);
--setEffMoveKey( spep_0+30, ct_01, 50, 0)
setEffMoveKey( 40, ct_01, 0, 300)

-- ** 音 ** --
playSe( 23, SE_05);


------------------------------------------------------
-- 溜め(85f)
------------------------------------------------------

spep_1=60;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

setRotateKey( spep_1,  0,   0 );
changeAnime(spep_1,0,17);
setMoveKey(spep_1, 0, 0, -54, 0);

--entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景
setShakeChara( spep_1 ,0 ,85 ,12);


-- ** エフェクト等 ** --
aura1503 = entryEffect( spep_1, 1503, 0x80, -1, 0, 0, 0); 
setEffMoveKey( spep_1, aura1503, 0, 0, 0);
setEffScaleKey( spep_1, aura1503, 1.0, 1.0);
setEffAlphaKey( spep_1, aura1503, 255);
setEffRotateKey( spep_1, aura1503, 0);

-- ** エフェクト等 ** --
aura1502 = entryEffect( spep_1, 1502, 0, -1, 0, 0, 0); 
setEffMoveKey( spep_1, aura1502, 0, 0, 0);
setEffScaleKey( spep_1, aura1502, 1.0, 1.0);
setEffAlphaKey( spep_1, aura1502, 255);
setEffRotateKey( spep_1, aura1502, 0);

sayuushuchu1 = entryEffectLife( spep_1, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1, sayuushuchu1, 0, 0, 0);
setEffScaleKey( spep_1, sayuushuchu1, 1.0, 1.0);
setEffAlphaKey( spep_1, sayuushuchu1, 255);
setEffRotateKey( spep_1, sayuushuchu1, 0);
--[[
speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+13, 190006, 85, 0x100, -1, 0, -200, 500);    -- ゴゴゴゴ 
setEffShake( spep_1+13, ctgogo, 80, 8);
setEffRotateKey( spep_1+13, ctgogo, 0);

setEffScaleKey( spep_1+13, ctgogo, -0.7, 0.7);
setEffAlphaKey( spep_1+13, ctgogo, 255);

setEffScaleKey( spep_1+91, ctgogo, -0.7, 0.7);
setEffAlphaKey( spep_1+91, ctgogo, 255);

setEffScaleKey( spep_1+99, ctgogo, -3.0, 3.0);
setEffAlphaKey( spep_1+99, ctgogo, 0);

playSe( spep_1+5, SE_04);




------------------------------------------------------
--カードイラスト	(90f)
------------------------------------------------------

spep_2=spep_1+85;

entryFade( spep_2-10, 5, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 58, 0, 0, 0, 0, 255);       -- ベース暗め　背景
setDisp( spep_2, 0, 0);

--カード絵＋技名
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

------------------------------------------------------
-- ダッシュ(96F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10,180);          -- ベース暗め　背景

totugeki = entryEffectLife( spep_3, SP_01, 100, 0x100,  -1, 0,  0,  0);  
setEffMoveKey( spep_3, totugeki, 0, 0, 0);
setEffScaleKey( spep_3, totugeki, 1.0, 1.0);
setEffAlphaKey( spep_3, totugeki, 255);
setEffRotateKey( spep_3, totugeki, 0);
setEffShake(spep_3+1, totugeki, 100, 5);
--[[
setEffRotateKey( spep_3+55, totugeki, 0);
setEffScaleKey( spep_3+55, totugeki, 1.0, 1.0);
setEffRotateKey( spep_3+60, totugeki, 30);
setEffScaleKey( spep_3+60, totugeki, 1.0, 1.0);
]]--



ruysen3 = entryEffectLife( spep_3+66, 921, 34, 0x80,  -1, 0,  0,  0);   
setEffMoveKey( spep_3+66, ruysen3, 0, 0, 0);
setEffScaleKey( spep_3+66, ruysen3, 1.7, 1.7);
setEffAlphaKey( spep_3+66, ruysen3, 255);
setEffRotateKey( spep_3+66, ruysen3, -50);

playSe( spep_3+2, 1034);
playSe( spep_3+20, 1034);
playSe( spep_3+40, 1034);
playSe( spep_3+60, 1030);

------------------------------------------------------
-- 迫る(100F)
------------------------------------------------------
spep_4=spep_3+100;

entryFade( spep_4-15, 3, 13, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 180);          -- ベース暗め　背景

semaru = entryEffect( spep_4, SP_02, 0x100,  -1, 0,  0,  0);  
setEffScaleKey( spep_4, semaru, -1.0, 1.0);


shuchusen4 = entryEffectLife( spep_4, 906, 60, 0x100,  -1, 0,  0,  0);   
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);


playSe( spep_4, 1018);

------------------------------------------------------
-- ため(120F)
------------------------------------------------------
spep_5=spep_4+59;

entryFade( spep_5-6, 3, 7, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 65, 0, 10, 10, 10, 180);          -- ベース暗め　背景

semaru1 = entryEffectLife( spep_5, SP_03e, 64, 0x100,  -1, 0,  0,  0);  
setEffMoveKey ( spep_5, semaru1, 0, 0, 0);
setEffScaleKey( spep_5, semaru1, 1.0, 1.0);
setEffAlphaKey( spep_5, semaru1, 255);
setEffRotateKey( spep_5, semaru1, 0);
setEffMoveKey ( spep_5+64, semaru1, 0, 0, 0);
setEffScaleKey( spep_5+64, semaru1, 1.0, 1.0);
setEffAlphaKey( spep_5+64, semaru1, 255);
setEffRotateKey( spep_5+64, semaru1, 0);

ruysen5 = entryEffectLife( spep_5, 920, 65, 0x80,  -1, 0,  0,  0);   
setEffMoveKey( spep_5, ruysen5, 0, 0, 0);
setEffScaleKey( spep_5, ruysen5, 1.0, 1.0);
setEffAlphaKey( spep_5, ruysen5, 255);
setEffRotateKey( spep_5, ruysen5, 0);


changeAnime(spep_5,1,101);
setScaleKey( spep_5,    1,  1.5, 1.5);
setShakeChara( spep_5+1, 1 , 65, 15);


-- 書き文字エントリー --
ct5 = entryEffectLife( spep_5, 10014, 35, 0, -1, 0, -50, 200); -- ズドドドッ
setEffShake( spep_5, ct5, 35, 20);
setEffAlphaKey( spep_5, ct5, 255);
setEffScaleKey( spep_5, ct5, 1.5, 1.5);
setEffScaleKey( spep_5+35, ct5, 1.5, 1.5);
setEffRotateKey( spep_5, ct5, -20);


setDisp( spep_5+10, 1, 1);
setMoveKey( spep_5, 1, 600, 0, 0); --敵位置
setMoveKey( spep_5+25, 1, 100, 0, 0); --敵位置



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 410; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, 0,   0);
setMoveKey( SP_dodge+9, 0,  -1500,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------
setMoveKey( spep_5+36, 1, 100, 0, 0); --敵位置
setMoveKey( spep_5+50, 1, 1000, 0, 0); --敵位置
setMoveKey( spep_5+65, 1, 1000, 0, 0); --敵位置

changeAnime(spep_5+36,1,108);



ctbago = entryEffectLife( spep_5+36, 10020, 29, 0, -1, 0, 100, 250); -- バゴォッ
setEffShake(spep_5+36, ctbago, 32, 5);
setEffAlphaKey(spep_5+36, ctbago, 255);
setEffAlphaKey(spep_5+64, ctbago, 255);
setEffAlphaKey(spep_5+65, ctbago, 0);
setEffScaleKey(spep_5+36, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+39, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+40, ctbago, 1.8, 1.8);
setEffScaleKey(spep_5+42, ctbago, 1.8, 1.8);
setEffScaleKey(spep_5+43, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+45, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+46, ctbago, 1.8, 1.8);
setEffScaleKey(spep_5+51, ctbago, 1.8, 1.8);
setEffScaleKey(spep_5+52, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+55, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+56, ctbago, 1.8, 1.8);
setEffScaleKey(spep_5+61, ctbago, 1.8, 1.8);
setEffScaleKey(spep_5+62, ctbago, 1.5, 1.5);
setEffScaleKey(spep_5+65, ctbago, 1.5, 1.5);
setEffRotateKey( spep_5, ctbago, 20);
setEffRotateKey( spep_5+65, ctbago, 20);


playSe( spep_5+34, SE_09);


------------------------------------------------------
-- ガッ(74)
------------------------------------------------------
spep_7=spep_5+65;

entryFade( spep_7-10, 5, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 敵キャラの前の終点 ** --
setDisp( spep_7-2, 0, 0);
setScaleKey( spep_7-2,    0,  1.5, 1.5);
setRotateKey( spep_7-2, 1, 0);
setMoveKey(  spep_7-2, 1, 100, 0, 0);

-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 1.5, 1.5);
setRotateKey( spep_7-1, 1, 60);

setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_06);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);

end

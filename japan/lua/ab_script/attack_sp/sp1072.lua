

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

SP_01 = 109075;--ソード出す
SP_02 = 109079;--ソード出す(反転)
SP_03 = 109054;--敵が光弾を避ける時の瞬間移動エフェクト
SP_04 = 109076;--突進
SP_05 = 109080;--突進(反転)
SP_06 = 109078;--切り抜き
SP_07 = 109081;--切り抜き(反転)
SP_08 = 109077;--剣撃

multi_frm = 2;

setMoveKey(   0,   0,  -550, -54,  0);
--changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setScaleKey(  0,  0,  1.6,  1.6);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 0, 0, 3);                  -- ダッシュ
entryFadeBg( 0, 0, 130, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setVisibleUI(0, 0);
--playSe( 0, 1018);
setMoveKey(  10,   0,  0, -54,  0);
setMoveKey(  100,   0,  0, -54,  0);
setMoveKey(  105,   0,  -150, -54,  -10);
setMoveKey(  115,   0,  1050, -54,  -20);

setBgScroll(105,100);

playSe( 0, 1018);
playSe( 100, 1018);

--playSe( 30, 1035); --かめはめ波


-- ** エフェクト等 ** --
--[[
aura = entryEffectLife(  0,   350, 127, 0x40,  0,  1,  200,  0); -- オーラ　311
setEffScaleKey( 0, aura, 1.7, 1.7);
setEffRotateKey( 0, aura, -90);
setEffAlphaKey(0, aura, 255);
]]--

speff1 = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

setEffAlphaKey(30, speff1, 255);
setEffAlphaKey(30, speff2, 255);

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);


ryusen_1=entryEffectLife( 0, 920, 128, 0x80,  -1,  0,  0,  0); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  0, ryusen_1, 1.3, 1.3);

spep_6=127; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
setScaleKey(  spep_6,  0,  1.6,  1.6);

--setScaleKey( spep_6-1,   0, 1.5, 1.5);
setMoveKey(  spep_6-1,    0,      100,  -54,   0);
setMoveKey(  spep_6,    0,      0,  0,   0);

playSe( spep_6+8, 1018);

setScaleKey( spep_6, 0, 1.4, 1.4);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.0, 1.0);
setMoveKey(  spep_6,  1, 1700,  0,   0);
--setRotateKey( spep_6,  1,  -5 );
--setRotateKey( spep_6,  0,  -10 );
setDisp( spep_6, 0, 1);

--P移動

--setBgScroll(spep_6,100);

setScaleKey( spep_6, 0, 1.4, 1.4);
setScaleKey( spep_6+1, 0, 1.2, 1.2);


setMoveKey(  spep_6+1,  0, -1700,  0,   0);
setMoveKey(  spep_6+2,  0, -700,  0,   0);
setMoveKey(  spep_6+12,  0, -100,  0,   0);

setMoveKey(  spep_6+1,  1, 1700,  0,   0);
setMoveKey(  spep_6+2,  1, 550,  0,   0);
setMoveKey(  spep_6+12,  1, 70,  0,   0);

--右大パンチ

setEffAlphaKey(spep_6+6, aura1, 255);
setEffAlphaKey(spep_6+12, aura1, 0);

ryusen_1=entryEffectLife( spep_6, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
--setEffRotateKey(spep_9,ryusen_1,-70);
setEffScaleKey(  spep_6, ryusen_1, 1.6, 1.6);


setShakeChara( spep_6, 0, 105, 15);
setShakeChara( spep_6, 1, 105, 15);
setShake(spep_6,105, 10);

-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 118, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 134; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

setEnvZoomEnable(spep_6+11,1);


changeAnime( spep_6+11,   0, 13 );--キック2
playSe( spep_6+12,1009);--SE
hit1 = entryEffect(  spep_6+11,   3,   0,  1,   0,  -30,  0);
hit2 = entryEffect(  spep_6+11,   908,   0,  1,   0,  -30,  0);

setEffScaleKey(spep_6+11, hit1, 1.4, 1.4);
setEffScaleKey(spep_6+11, hit2, 1.4, 1.4);

setDamage( spep_6+12, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+12,   1, 108 ); --敵モーション

setMoveKey(  spep_6+12,  0, -160,  0,   0);
setMoveKey(  spep_6+22,  0, -120,  0,   0);

setMoveKey(  spep_6+12,  1, 0,  0,   0);
setMoveKey(  spep_6+22,  1, 30,  0,   0);

changeAnime( spep_6+19,   0, 12 );--キック1
playSe( spep_6+20,1009);--SE
hit1 = entryEffect(  spep_6+19,   3,   0,  1,   0,  -30,  0);
hit2 = entryEffect(  spep_6+19,   908,   0,  1,   0,  -30,  0);

setEffScaleKey(spep_6+19, hit1, 1.4, 1.4);
setEffScaleKey(spep_6+19, hit2, 1.4, 1.4);

setDamage( spep_6+20, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+20,   1, 108 ); --敵モーション

setMoveKey(  spep_6+19,  0, -120,  0,   0);
setMoveKey(  spep_6+27,  0, -80,  0,   0);

setMoveKey(  spep_6+19,  1, 30,  0,   0);
setMoveKey(  spep_6+27,  1, 60,  30,   0);

spep_9=spep_6+19; --パンチの開始

changeAnime( spep_9+10,   0, 14);--キック3
--setRotateKey( spep_9+10 , 0 , -20);

playSe( spep_9+11,1000);--SE
hit3 = entryEffect(  spep_9+10,   1,   0,  1,   0,  0,  0);
hit4 = entryEffect(  spep_9+10,   908,   0,  1,   0,  0,  0);

setEffScaleKey(spep_9+10, hit3, 1.4, 1.4);
setEffScaleKey(spep_9+10, hit4, 1.4, 1.4);

setDamage( spep_9+11, 1, 0);  -- ダメージ振動等
changeAnime( spep_9+11,   1, 106 ); --敵モーション

setMoveKey(  spep_9+11,  0, -80,  0,   0);
setMoveKey(  spep_9+21,  0, -40,  0,   0);

setMoveKey(  spep_9+11,  1, 60,  30,   0);
setMoveKey(  spep_9+21,  1, 500,  30,   0);
setDisp( spep_9+22, 1, 0);

setScaleKey( spep_9+11, 1,  1.4, 1.4);
setScaleKey( spep_9+21, 1,  0.5, 0.5);

setEnvZoomEnable(spep_9+21,0);

entryFade( spep_9+30, 2, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
ct = entryEffectLife( spep_6+11, 10017, 10, 0, -1, 0, 0, 200); -- ドガガガッ
setEffShake(spep_6+11, ct, 32, 5);
setEffAlphaKey(spep_6+11, ct, 255);
setEffAlphaKey(spep_9+21, ct, 0);
--setEffAlphaKey(spep_9+31, ct, 0);
setEffScaleKey(spep_6+9, ct, 0.0, 0.0);
setEffScaleKey(spep_6+15, ct, 1.8, 1.8);
--setEffScaleKey(spep_9+21, ct, 1.8, 1.8);
setEffScaleKey(spep_9+21, ct, 6.0, 6.0);

--２回目の連撃

spep_2=spep_9+35; --

setMoveKey(  spep_2,  1,  400,  -700,  -120);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_2, 0, 0);
setDisp( spep_2, 1, 0);

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

--removeAllEffect(spep_2+87);

spep_11=spep_2+87; 

------------------------------------------------------
-- ソードを出す(100F)
------------------------------------------------------

setDisp( spep_11, 0, 0);
playSe(  spep_11+35, 1042);--ソード出現音

sword = entryEffect( spep_11,SP_01, 0x40, 0, 300,  0,  0);

entryFadeBg( spep_11, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_11+20, 906, 70, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_11+20, shuchusen, 1.0, 1.0);

entryFade( spep_11+93, 1,  3, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_11+98;

--spep_5 = spep_11;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setMoveKey( spep_5,  0, 0,  0,   0);
playSe( spep_5, 1018);
--playSe( spep_5+75, 1018);


shuchusen5 = entryEffectLife( spep_5, 906, 127, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_5+60, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_5+125, shuchusen5, 1.0, 1.0);


entryFadeBg( spep_5-1, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景

bejitto = entryEffect( spep_5,   SP_04, 0x80,  -1,  0,  0,  0);   -- 斬撃
bejitto2 = entryEffect( spep_5,   SP_04, 0x80,  -1,  0,  0,  0);   -- 斬撃

setEffAlphaKey( spep_5, bejitto, 255);

setEffScaleKey( spep_5, bejitto2, 1.0, 1.0);
setEffScaleKey( spep_5+20, bejitto2, 1.2, 1.2);
setEffScaleKey( spep_5+29, bejitto2, 1.2, 1.2);
setEffScaleKey( spep_5+40, bejitto2, 4.8, 4.8);
setEffAlphaKey( spep_5, bejitto2, 0);
setEffAlphaKey( spep_5+29, bejitto2, 0);
setEffAlphaKey( spep_5+30, bejitto2, 100);
setEffAlphaKey( spep_5+40, bejitto2, 0);

setEffScaleKey( spep_5, bejitto, 1.0, 1.0);
setEffScaleKey( spep_5+20, bejitto, 1.2, 1.2);
setEffScaleKey( spep_5+40, bejitto, 1.2, 1.2);
setEffScaleKey( spep_5+45, bejitto, 3.6, 3.6);
--setEffScaleKey( spep_5+75, bejitto, 3.6, 3.6);

setEffMoveKey( spep_5, bejitto, 0,  0, 0);
setEffMoveKey( spep_5+45, bejitto, 0,  0, 0);
--setEffMoveKey( spep_5+58, bejitto, 0,  -150, 0);
--setEffMoveKey( spep_5+72, bejitto, 1200, -640, 0);

SP_start2 = -2;
spep_15 = SP_start2+ spep_5;

entryFade( spep_15+45, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey( spep_15+90,  0, 0,  0,   0);
removeAllEffect( spep_15+50);

-- 書き文字エントリー

--[[
ct = entryEffectLife( spep_5, 10014, 40, 0x100, -1, 0, -170, 300);    -- ズドドド・・・
setEffShake(spep_5, ct, 95, 8);
setEffScaleKey(spep_5, ct, 1.8, 1.8);
]]--

------------------------------------------------------
-- 爆発 (110F)　
------------------------------------------------------

zanngeki = entryEffect( spep_15+65, SP_08, 0,  -1,  0,  0,  0);   -- 斬撃
setEffScaleKey( spep_15+65, zanngeki, -0.5, 0.5);
--setEffRotateKey( spep_15+99,zanngeki,-30);

setShake(spep_15+65,10, 20);
playSe( spep_15+65, 1002);
playSe( spep_15+95, 1032);

entryFadeBg( spep_15+65-1, 0, 70, 0, 10, 10, 10, 230);       -- ベース暗め　背景

spep_16 = spep_15+40;

entryFade( spep_16+90, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( spep_15+72, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_16+100, 1, 1);
changeAnime( spep_16+100, 0, 131);                        -- 気ダメ後ろ
changeAnime( spep_16+100, 1, 6);                        -- 気ダメ後ろ
setMoveKey( spep_16+100,    0,   0,  0,   0);

setMoveKey( spep_16+100,    1,   -250,  350,   0);

setScaleKey( spep_16+100,   1,   0.8,  0.8);

entryFadeBg( spep_16+100, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_16+93, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線

bakuhatu = entryEffect( spep_16+100, SP_06, 0x00,  -1, 0,  -50,  -50);   -- 爆発
setEffScaleKey( spep_16+100, bakuhatu, 1.2, 1.2);
setQuake(spep_16+100,40, 22);

ryusen = entryEffectLife(spep_16+100, 921, 190, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_16+100, ryusen,220);
setEffScaleKey(spep_16+100, ryusen, 2, 2);

playSe( spep_16+118, SE_10);

setDamage( spep_16+136, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage( spep_16+136);

entryFade( spep_16+175, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_16+190);


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 0, 0, 3);                  -- ダッシュ
entryFadeBg( 0, 0, 130, 0, 10, 10, 10, 180);       -- ベース暗め　背景

setVisibleUI(0, 0);
--playSe( 0, 1018);
setMoveKey(  10,   0,  0, -54,  0);
setMoveKey(  100,   0,  0, -54,  0);
setMoveKey(  105,   0,  -150, -54,  -10);
setMoveKey(  115,   0,  1050, -54,  -20);

setBgScroll(105,100);

playSe( 0, 1018);
playSe( 100, 1018);

--playSe( 30, 1035); --かめはめ波


-- ** エフェクト等 ** --
--[[
aura = entryEffectLife(  0,   350, 127, 0x40,  0,  1,  200,  0); -- オーラ　311
setEffScaleKey( 0, aura, 1.7, 1.7);
setEffRotateKey( 0, aura, -90);
setEffAlphaKey(0, aura, 255);
]]--

--[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);
setEffAlphaKey(30, ct, 255);

shuchusen5 = entryEffectLife( 0, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);


ryusen_1=entryEffectLife( 0, 920, 128, 0x80,  -1,  0,  0,  0); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  0, ryusen_1, 1.3, 1.3);

spep_6=127; --211 260

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
setScaleKey(  spep_6,  0,  1.6,  1.6);

--setScaleKey( spep_6-1,   0, 1.5, 1.5);
setMoveKey(  spep_6-1,    0,      100,  -54,   0);
setMoveKey(  spep_6,    0,      0,  0,   0);

playSe( spep_6+8, 1018);

setScaleKey( spep_6, 0, 1.4, 1.4);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.0, 1.0);
setMoveKey(  spep_6,  1, 1700,  0,   0);
--setRotateKey( spep_6,  1,  -5 );
--setRotateKey( spep_6,  0,  -10 );
setDisp( spep_6, 0, 1);

--P移動

--setBgScroll(spep_6,100);

setScaleKey( spep_6, 0, 1.4, 1.4);
setScaleKey( spep_6+1, 0, 1.2, 1.2);


setMoveKey(  spep_6+1,  0, -1700,  0,   0);
setMoveKey(  spep_6+2,  0, -700,  0,   0);
setMoveKey(  spep_6+12,  0, -100,  0,   0);

setMoveKey(  spep_6+1,  1, 1700,  0,   0);
setMoveKey(  spep_6+2,  1, 550,  0,   0);
setMoveKey(  spep_6+12,  1, 70,  0,   0);

--右大パンチ

setEffAlphaKey(spep_6+6, aura1, 255);
setEffAlphaKey(spep_6+12, aura1, 0);

ryusen_1=entryEffectLife( spep_6, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線 406 80-30
--setEffRotateKey(spep_9,ryusen_1,-70);
setEffScaleKey(  spep_6, ryusen_1, 1.6, 1.6);


setShakeChara( spep_6, 0, 105, 15);
setShakeChara( spep_6, 1, 105, 15);
setShake(spep_6,105, 10);

-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 118, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 134; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

setEnvZoomEnable(spep_6+11,1);


changeAnime( spep_6+11,   0, 13 );--キック2
playSe( spep_6+12,1009);--SE
hit1 = entryEffect(  spep_6+11,   3,   0,  1,   0,  -30,  0);
hit2 = entryEffect(  spep_6+11,   908,   0,  1,   0,  -30,  0);

setEffScaleKey(spep_6+11, hit1, 1.4, 1.4);
setEffScaleKey(spep_6+11, hit2, 1.4, 1.4);

setDamage( spep_6+12, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+12,   1, 108 ); --敵モーション

setMoveKey(  spep_6+12,  0, -160,  0,   0);
setMoveKey(  spep_6+22,  0, -120,  0,   0);

setMoveKey(  spep_6+12,  1, 0,  0,   0);
setMoveKey(  spep_6+22,  1, 30,  0,   0);

changeAnime( spep_6+19,   0, 12 );--キック1
playSe( spep_6+20,1009);--SE
hit1 = entryEffect(  spep_6+19,   3,   0,  1,   0,  -30,  0);
hit2 = entryEffect(  spep_6+19,   908,   0,  1,   0,  -30,  0);

setEffScaleKey(spep_6+19, hit1, 1.4, 1.4);
setEffScaleKey(spep_6+19, hit2, 1.4, 1.4);

setDamage( spep_6+20, 1, 0);  -- ダメージ振動等
changeAnime( spep_6+20,   1, 108 ); --敵モーション

setMoveKey(  spep_6+19,  0, -120,  0,   0);
setMoveKey(  spep_6+27,  0, -80,  0,   0);

setMoveKey(  spep_6+19,  1, 30,  0,   0);
setMoveKey(  spep_6+27,  1, 60,  30,   0);

spep_9=spep_6+19; --パンチの開始

changeAnime( spep_9+10,   0, 14);--キック3
--setRotateKey( spep_9+10 , 0 , -20);

playSe( spep_9+11,1000);--SE
hit3 = entryEffect(  spep_9+10,   1,   0,  1,   0,  0,  0);
hit4 = entryEffect(  spep_9+10,   908,   0,  1,   0,  0,  0);

setEffScaleKey(spep_9+10, hit3, 1.4, 1.4);
setEffScaleKey(spep_9+10, hit4, 1.4, 1.4);

setDamage( spep_9+11, 1, 0);  -- ダメージ振動等
changeAnime( spep_9+11,   1, 106 ); --敵モーション

setMoveKey(  spep_9+11,  0, -80,  0,   0);
setMoveKey(  spep_9+21,  0, -40,  0,   0);

setMoveKey(  spep_9+11,  1, 60,  30,   0);
setMoveKey(  spep_9+21,  1, 500,  30,   0);
setDisp( spep_9+22, 1, 0);

setScaleKey( spep_9+11, 1,  1.4, 1.4);
setScaleKey( spep_9+21, 1,  0.5, 0.5);

setEnvZoomEnable(spep_9+21,0);

entryFade( spep_9+30, 2, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
ct = entryEffectLife( spep_6+11, 10017, 10, 0, -1, 0, 0, 200); -- ドガガガッ
setEffShake(spep_6+11, ct, 32, 5);
setEffAlphaKey(spep_6+11, ct, 255);
setEffAlphaKey(spep_9+21, ct, 0);
--setEffAlphaKey(spep_9+31, ct, 0);
setEffScaleKey(spep_6+9, ct, 0.0, 0.0);
setEffScaleKey(spep_6+15, ct, 1.8, 1.8);
--setEffScaleKey(spep_9+21, ct, 1.8, 1.8);
setEffScaleKey(spep_9+21, ct, 6.0, 6.0);

--２回目の連撃

spep_2=spep_9+35; --

setMoveKey(  spep_2,  1,  400,  -700,  -120);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_2, 0, 0);
setDisp( spep_2, 1, 0);

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

--removeAllEffect(spep_2+87);

spep_11=spep_2+87; 

------------------------------------------------------
-- ソードを出す(100F)
------------------------------------------------------

setDisp( spep_11, 0, 0);
playSe(  spep_11+35, 1042);--ソード出現音

sword = entryEffect( spep_11,SP_02, 0x40, 0, 300,  0,  0);
setEffScaleKey( spep_11, sword, -1.0, 1.0);

entryFadeBg( spep_11, 0, 95, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_11+20, 906, 70, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_11+20, shuchusen, 1.0, 1.0);

entryFade( spep_11+93, 1,  3, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_11+98;


--spep_5 = spep_11;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setMoveKey( spep_5,  0, 0,  0,   0);
playSe( spep_5, 1018);
--playSe( spep_5+75, 1018);


shuchusen5 = entryEffectLife( spep_5, 906, 127, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_5+60, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_5+125, shuchusen5, 1.0, 1.0);


entryFadeBg( spep_5-1, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景


bejitto = entryEffect( spep_5,   SP_05, 0x80,  1,  0,  0,  0);   -- 斬撃
bejitto2 = entryEffect( spep_5,   SP_05, 0x80,  1,  0,  0,  0);   -- 斬撃

setEffAlphaKey( spep_5, bejitto, 255);

setEffScaleKey( spep_5, bejitto2, -1.0, 1.0);
setEffScaleKey( spep_5+20, bejitto2, -1.2, 1.2);
setEffScaleKey( spep_5+29, bejitto2, -1.2, 1.2);
setEffScaleKey( spep_5+40, bejitto2, -4.8, 4.8);
setEffAlphaKey( spep_5, bejitto2, 0);
setEffAlphaKey( spep_5+29, bejitto2, 0);
setEffAlphaKey( spep_5+30, bejitto2, 100);
setEffAlphaKey( spep_5+40, bejitto2, 0);

setEffScaleKey( spep_5, bejitto, -1.0, 1.0);
setEffScaleKey( spep_5+20, bejitto, -1.2, 1.2);
setEffScaleKey( spep_5+40, bejitto, -1.2, 1.2);
setEffScaleKey( spep_5+45, bejitto, -3.6, 3.6);
--setEffScaleKey( spep_5+75, bejitto, 3.6, 3.6);

setEffMoveKey( spep_5, bejitto, 0,  200, 0);
setEffMoveKey( spep_5+45, bejitto, 0,  200, 0);
--setEffMoveKey( spep_5+58, bejitto, 0,  50, 0);
--setEffMoveKey( spep_5+72, bejitto, 1200, -640, 0);

SP_start2 = -2;
spep_15 = SP_start2+ spep_5;

entryFade( spep_15+45, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey( spep_15+90,  0, 0,  0,   0);
removeAllEffect( spep_15+50);

-- 書き文字エントリー

--[[
ct = entryEffectLife( spep_5, 10014, 40, 0x100, -1, 0, -170, 300);    -- ズドドド・・・
setEffShake(spep_5, ct, 95, 8);
setEffScaleKey(spep_5, ct, 1.8, 1.8);
]]--

------------------------------------------------------
-- 爆発 (110F)　
------------------------------------------------------

zanngeki = entryEffect( spep_15+60, SP_08, 0,  -1,  0,  0,  0);   -- 斬撃
setEffScaleKey( spep_15+60, zanngeki, -0.5, 0.5);
--setEffRotateKey( spep_15+99,zanngeki,-30);

setShake(spep_15+65,10, 20);
playSe( spep_15+65, 1002);
playSe( spep_15+95, 1032);

entryFadeBg( spep_15+65-1, 0, 70, 0, 10, 10, 10, 230);       -- ベース暗め　背景

spep_16 = spep_15+40;

entryFade( spep_16+90, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( spep_15+72, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_16+100, 1, 1);
changeAnime( spep_16+100, 0, 131);                        -- 気ダメ後ろ
changeAnime( spep_16+100, 1, 6);                        -- 気ダメ後ろ
setMoveKey( spep_16+100,    0,   0,  0,   0);

setMoveKey( spep_16+100,    1,   -250,  350,   0);
setScaleKey( spep_16+100,   1,   0.8,  0.8);

entryFadeBg( spep_16+100, 0, 90, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_16+93, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線

bakuhatu = entryEffect( spep_16+100, SP_07, 0x00,  -1, 0,  -50,  -50);   -- 爆発
setEffScaleKey( spep_16+100, bakuhatu, -1.2, 1.2);
setQuake(spep_16+100,40, 22);

ryusen = entryEffectLife(spep_16+100, 921, 190, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_16+100, ryusen,220);
setEffScaleKey(spep_16+100, ryusen, 2, 2);

playSe( spep_16+118, SE_10);

setDamage( spep_16+136, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage( spep_16+136);

entryFade( spep_16+175, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_16+190);

end
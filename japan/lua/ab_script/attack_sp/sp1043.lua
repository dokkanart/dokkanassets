

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

SP_01 = 150091;--「ばーり、ぼーり、ばり、ぼり」文字　気溜めで使用
SP_02 = 150092;--「ばーり、ぼーり、ばり、ぼり」文字用の吹出し
SP_03 = 150093;--「つーん」 必殺技を当てた時
SP_04 = 150094;--雰囲気エフェクト 必殺技を当てた時
SP_05 = 150095;--飛び回るハエ


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI(0, 0);
hae = entryEffectLife(  0,   SP_05, 600, 0x40+0x080,  0,  300,  0, 0  ); -- ハエ
--setEffScaleKey( 0, hae, 3.0, 3.0);
setEffMoveKey(   0,  hae,  0,  300,   0);

changeAnime( 0, 0, 0);                       -- 溜め!
changeAnime( 30, 0, 30);  
setScaleKey(   0,   0, 1.5, 1.5);
setEffMoveKey(   29,  hae,  0,  300,   0);
setEffMoveKey(   30,  hae,  0,  240,   0);

setMoveKey(   0,   0, 0, -54, 0);
setMoveKey(   15,   0,  0, -54,  0);
setMoveKey(  125,   0,  0, -54, 0);

playSe( 30, 1035);


-- ** エフェクト等 ** --

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15);


-- 書き文字エントリー
ct = entryEffectLife( 30, SP_01, 95, 0x080, -1, 0, -190, 200);    -- ばーりぼり
ct2 = entryEffectLife( 30, SP_02, 95, 0x080, -1, 0, -190, 200);    -- ばーりぼり用の吹き出し

setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.1, 1.1);
setEffShake(30, ct2, 95, 8);
setEffScaleKey(30, ct2, 1.1, 1.1);
setEffRotateKey( 30, ct, -40);
setEffRotateKey( 30, ct2, -40);

shuchusen5 = entryEffectLife( 30, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

spep_2 = 127;
setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
--setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

--playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

playSe( spep_2+65, 1018);

entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --217

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------


hae2 = entryEffectLife(  spep_6,   SP_05, 189, 0x40+0x080,  0,  300,  0, 0  ); -- ハエ
setEffMoveKey(   spep_6,  hae2,  0,  280,   0);

setScaleKey( spep_6, 0, 1.5, 1.5);

changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.5, 1.5);
setMoveKey(  spep_6,  1, 1700,  0,   0);


--P移動
setMoveKey(  spep_6-1,    0,      0,  0,   0);
setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+15,    0,   0,  0,   0);

setMoveKey(  spep_6+35,    0,   -150,  0,   0);

playSe( spep_6+40, 1018);

setMoveKey(  spep_6+45,  0, 700,  0,   0);
setMoveKey(  spep_6+48,  0, 700,  0,   0);
setMoveKey(  spep_6+49,  0, -1700,  0,   0);


entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( spep_6+46, 0, 1.5, 1.5);

setDisp( spep_6+46, 0, 0);

setDisp( spep_6+50, 0, 1);

setMoveKey(  spep_6+50,  0, -1700,  0,   10);
setMoveKey(  spep_6+51,  0, -700,  0,   10);
setMoveKey(  spep_6+61,  0, -220,  0,   10);

setMoveKey(  spep_6+50,  1, 1700,  0,   0);
setMoveKey(  spep_6+51,  1, 550,  0,   0);
setMoveKey(  spep_6+61,  1,  150,  0,   0);

setScaleKey( spep_6+64, 0, 1.5, 1.5);
setEffMoveKey(   spep_6+64,  hae2,  0,  280,   0);

changeAnime( spep_6+65,   1, 106 ); --敵モーション
--setScaleKey( spep_6+65, 0, 0.5, 0.5);
changeAnime( spep_6+65,   0, 31 );--指差し
setEffMoveKey(   spep_6+65,  hae2,  -220,  110);
entryFadeBg( spep_6+65, 0, 65, 0, 150, 150, 250);       -- ベース暗め　背景

playSe( spep_6+64, 1003);--SE

setDamage( spep_6+61, 1, 0);  -- ダメージ振動等

playSe( spep_6+74, 1039);--SE

-- 書き文字エントリー
ct = entryEffectLife( spep_6+60+5, SP_03, 52, 0, -1, 0, 30, 300); -- つーん
funiki = entryEffect(  spep_6+65+5,   SP_04,   0x40+0x80,  1,  300,  0,  0);   -- つーん
setEffScaleKey(spep_6+72+5, funiki, 2.8, 2.8);

setEffShake(spep_6+60+5, ct, 32, 5);
setEffAlphaKey(spep_6+60+5, ct, 255);
setEffAlphaKey(spep_6+72+5, ct, 255);
setEffAlphaKey(spep_6+72+25+5, ct, 0);
setEffScaleKey(spep_6+58+5, ct, 0.0, 0.0);
setEffScaleKey(spep_6+62+5, ct, 1.8, 1.8);
setEffScaleKey(spep_6+72+5, ct, 1.8, 1.8);
setEffScaleKey(spep_6+72+25+5, ct, 6.0, 6.0);

SP_start = 45; --間隔調整用 spep_6=217

--パンチの嵐
setMoveKey(  SP_start+ spep_6+85,  1,  150,  0,   0);
setMoveKey(  SP_start+ spep_6+85,  0, -220,  0,   0);

setEffMoveKey(   SP_start+ spep_6+85,  hae2,  -220,  110,   0);
setEffMoveKey(   SP_start+ spep_6+86,  hae2,  0,  280,   0);

--setScaleKey( SP_start+ spep_6+84, 0, 0.5, 0.5);
changeAnime( SP_start+ spep_6+85,   0, 9 );--パンチ1
--setScaleKey( SP_start+ spep_6+85, 0, 1.5, 1.5);

playSe( SP_start+ spep_6+86,1000);--SE
entryEffect( SP_start+  spep_6+85,   1,   0,  1,   0,  0,  0);
setDamage( SP_start+ spep_6+86, 1, 0);  -- ダメージ振動等
--changeAnime( SP_start+ spep_6+86,   1, 106 ); --敵モーション


setMoveKey( SP_start+  spep_6+86,  0, -180,  0,   0);
setMoveKey( SP_start+  spep_6+94,  0, -150,  0,   0);

setMoveKey(  SP_start+  spep_6+85,  1, 0,  0,   0);
setMoveKey( SP_start+  spep_6+86,  1, 30,  0,   0);
setMoveKey( SP_start+  spep_6+94,  1, 60,  0,   0);

setEnvZoomEnable( SP_start+spep_6+90,1);

changeAnime( SP_start+ spep_6+93,   0, 10);--パンチ2
playSe( SP_start+ spep_6+94,1006);--SE
entryEffect( SP_start+  spep_6+93,  2,   0,  1,   0,  0,  0);
setDamage( SP_start+ spep_6+94, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+94,   1, 108 ); --敵モーション

setMoveKey( SP_start+  spep_6+94,  0, -150,  0,   0);
setMoveKey( SP_start+  spep_6+102,  0, -120,  0,   0);

setMoveKey( SP_start+  spep_6+94,  1, 60,  0,   0);
setMoveKey( SP_start+  spep_6+102,  1, 90,  0,   0);

changeAnime( SP_start+ spep_6+101,   0, 12);--キック1
playSe( SP_start+ spep_6+102,1001);--SE
entryEffect( SP_start+  spep_6+101,   1,   0,  1,   0,  0,  0);
setDamage( SP_start+ spep_6+102, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+102,   1, 106 ); --敵モーション

setMoveKey( SP_start+  spep_6+102,  0, -120,  0,   0);
setMoveKey( SP_start+  spep_6+110,  0, -90,  0,   0);

setMoveKey( SP_start+  spep_6+102,  1, 90,  0,   0);
setMoveKey( SP_start+  spep_6+110,  1, 120,  0,   0);

setEnvZoomEnable( SP_start+spep_6+102,0);


changeAnime( SP_start+ spep_6+109,   0, 14);--キック3
playSe( SP_start+ spep_6+110,1007);--SE
entryEffect( SP_start+  spep_6+109,   2,   0,  1,   0,  0,  0);
setDamage( SP_start+ spep_6+110, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+110,   1, 108 ); --敵モーション

setMoveKey( SP_start+  spep_6+110,  0, -90,  0,   0);
setMoveKey( SP_start+  spep_6+118,  0, -60,  0,   0);

setMoveKey( SP_start+  spep_6+110,  1, 120,  0,   0);
setMoveKey( SP_start+  spep_6+118,  1, 150,  0,   0);

setEnvZoomEnable( SP_start+spep_6+114,1);

changeAnime( SP_start+ spep_6+117,   0, 13);--キック2
playSe( SP_start+ spep_6+118,1025);--SE
entryEffect( SP_start+  spep_6+117,   3,   0,  1,   0,  0,  0);
setDamage( SP_start+ spep_6+118, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+118,   1, 108 ); --敵モーション

setMoveKey( SP_start+  spep_6+118,  0, -60,  0,   0);
setMoveKey( SP_start+  spep_6+126,  0, -30,  0,   0);

setMoveKey( SP_start+  spep_6+118,  1, 150,  0,   0);
setMoveKey( SP_start+  spep_6+126,  1, 180,  0,   0);

changeAnime( SP_start+ spep_6+125,   0, 11);--パンチ3
playSe( SP_start+ spep_6+126,1025);--SE
entryEffect( SP_start+  spep_6+125,   4,   0,  1,   0,  0,  0);
setDamage( SP_start+ spep_6+126, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+126,   1, 106 ); --敵モーション

setEnvZoomEnable( SP_start+spep_6+126,0);

setMoveKey( SP_start+  spep_6+126,  1, 10,  0,   0);
setMoveKey( SP_start+  spep_6+136,  1, 1500,  0,   0);

setDisp( SP_start+ spep_6+138, 1, 0);

-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 189, 0, 50, 50, 50);       -- ベース暗め　背景

entryEffectLife( spep_6, 920, 189, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_6, 0, 185, 15);
setShakeChara( spep_6, 1, 185, 15);

setShake( spep_6,185, 10);

setShake( SP_start+ spep_6+85,50, 20);
setShake( spep_6+77+25, 5, 40);
setShake( SP_start+  spep_6+126, 5, 40);


shuchusen8 = entryEffectLife( spep_6+50, 906, 149, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);


entryFade( SP_start+ spep_6+120+24, 5,  11, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setDisp( SP_start+ spep_6+91, 1, 0);
setDisp( SP_start+ spep_6+124+24, 0, 0);
setDisp( SP_start+ spep_6+124+24, 1, 0);
setScaleKey( SP_start+ spep_6+126+24, 0, 1.5, 1.5);
setScaleKey( SP_start+ spep_6+126+24, 1, 1.5, 1.5);

removeAllEffect( SP_start+spep_6+126+24);

--spep_5 = spep_9+99;
spep_5 = spep_6+120+24+24;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 271; --エンドフェイズのフレーム数を置き換える

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

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

--setDisp( SP_start+ spep_5-1, 0, 0);
setMoveKey( SP_start+  spep_5-1,    1,  100,  0,   0);
setScaleKey( SP_start+ spep_5-1,    1,  1, 1);
setMoveKey( SP_start+  spep_5,    1,    0,   0,   128);
setScaleKey( SP_start+ spep_5,    1,  0.1, 0.1);

changeAnime( SP_start+ spep_5, 1, 107);                         -- 手前ダメージ
setDisp( SP_start+ spep_5, 1, 1);

setMoveKey( SP_start+  spep_5+8,   1,    0,   0,   128);
setMoveKey( SP_start+  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey( SP_start+  spep_5+16,   1,  -60,  -200,  -100);
setDamage( SP_start+ spep_5+16, 1, 0);  -- ダメージ振動等
setShake( SP_start+spep_5+7,6,15);
setShake( SP_start+spep_5+13,15,10);

setRotateKey( SP_start+ spep_5,  1,  30 );
setRotateKey( SP_start+ spep_5+2,  1,  80 );
setRotateKey( SP_start+ spep_5+4,  1, 120 );
setRotateKey( SP_start+ spep_5+6,  1, 160 );
setRotateKey( SP_start+ spep_5+8,  1, 200 );
setRotateKey( SP_start+ spep_5+10,  1, 260 );
setRotateKey( SP_start+ spep_5+12,  1, 320 );
setRotateKey( SP_start+ spep_5+14,  1,   0 );

setShakeChara( SP_start+ spep_5+15, 1, 5,  10);
setShakeChara( SP_start+ spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+ spep_5+15, ct, 30, 10);
setEffRotateKey( SP_start+ spep_5+15, ct, -40);
setEffScaleKey( SP_start+ spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ spep_5+15, ct, 255);
setEffAlphaKey( SP_start+ spep_5+105, ct, 255);
setEffAlphaKey( SP_start+ spep_5+115, ct, 0);

playSe( SP_start+ spep_5+13, SE_11);
shuchusen = entryEffectLife( SP_start+ spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+spep_5+16);

entryFade( SP_start+ spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+ spep_5+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI(0, 0);
hae = entryEffectLife(  0,   SP_05, 600, 0x40+0x080,  0,  300,  0, 0  ); -- ハエ
--setEffScaleKey( 0, hae, 3.0, 3.0);
setEffMoveKey(   0,  hae,  0,  300,   0);

changeAnime( 0, 0, 0);                       -- 溜め!
changeAnime( 30, 0, 30);  
setScaleKey(   0,   0, 1.5, 1.5);
setEffMoveKey(   29,  hae,  0,  300,   0);
setEffMoveKey(   30,  hae,  0,  240,   0);

setMoveKey(   0,   0, 0, -54, 0);
setMoveKey(   15,   0,  0, -54,  0);
setMoveKey(  125,   0,  0, -54, 0);

playSe( 30, 1035);


-- ** エフェクト等 ** --
--[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15);


-- 書き文字エントリー
ct = entryEffectLife( 30, SP_01, 95, 0x080, -1, 0, -190, 200);    -- ばーりぼり
ct2 = entryEffectLife( 30, SP_02, 95, 0x080, -1, 0, -190, 200);    -- ばーりぼり用の吹き出し

setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, -1.1, 1.1);
setEffShake(30, ct2, 95, 8);
setEffScaleKey(30, ct2, 1.1, 1.1);
setEffRotateKey( 30, ct, -40);
setEffRotateKey( 30, ct2, -40);

shuchusen5 = entryEffectLife( 30, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 30, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

spep_2 = 127;
setScaleKey(  spep_2,  0,  1.6,  1.6);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
--setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

--playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

playSe( spep_2+65, 1018);

entryFade( spep_2+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_2+87);

spep_6=spep_2+85+5; --217

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------


hae2 = entryEffectLife(  spep_6,   SP_05, 189, 0x40+0x080,  0,  300,  0, 0  ); -- ハエ
setEffMoveKey(   spep_6,  hae2,  0,  280,   0);

setScaleKey( spep_6, 0, 1.5, 1.5);

changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.5, 1.5);
setMoveKey(  spep_6,  1, 1700,  0,   0);


--P移動
setMoveKey(  spep_6-1,    0,      0,  0,   0);
setMoveKey(  spep_6,    0,   -600,  0,   0);
setMoveKey(  spep_6+1,    0,   -600,  0,   0);
setMoveKey(  spep_6+5,    0,   50,  0,   0);
setMoveKey(  spep_6+15,    0,   0,  0,   0);

setMoveKey(  spep_6+35,    0,   -150,  0,   0);

playSe( spep_6+40, 1018);

setMoveKey(  spep_6+45,  0, 700,  0,   0);
setMoveKey(  spep_6+48,  0, 700,  0,   0);
setMoveKey(  spep_6+49,  0, -1700,  0,   0);


entryFade( spep_6+45, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( spep_6+46, 0, 1.5, 1.5);

setDisp( spep_6+46, 0, 0);

setDisp( spep_6+50, 0, 1);

setMoveKey(  spep_6+50,  0, -1700,  0,   10);
setMoveKey(  spep_6+51,  0, -700,  0,   10);
setMoveKey(  spep_6+61,  0, -220,  0,   10);

setMoveKey(  spep_6+50,  1, 1700,  0,   0);
setMoveKey(  spep_6+51,  1, 550,  0,   0);
setMoveKey(  spep_6+61,  1,  150,  0,   0);

setScaleKey( spep_6+64, 0, 1.5, 1.5);
setEffMoveKey(   spep_6+64,  hae2,  0,  280,   0);

changeAnime( spep_6+65,   1, 106 ); --敵モーション
--setScaleKey( spep_6+65, 0, 0.5, 0.5);
changeAnime( spep_6+65,   0, 31 );--指差し
setEffMoveKey(   spep_6+65,  hae2,  -220,  110);
entryFadeBg( spep_6+65, 0, 65, 0, 150, 150, 250);       -- ベース暗め　背景

playSe( spep_6+64, 1003);--SE

setDamage( spep_6+61, 1, 0);  -- ダメージ振動等

playSe( spep_6+74, 1039);--SE

-- 書き文字エントリー
ct = entryEffectLife( spep_6+60+5, SP_03, 52, 0, -1, 0, 30, 300); -- つーん
funiki = entryEffect(  spep_6+65+5,   SP_04,   0x40+0x80,  1,  300,  0,  0);   -- つーん
setEffScaleKey(spep_6+72+5, funiki, 2.8, 2.8);

setEffShake(spep_6+60+5, ct, 32, 5);
setEffAlphaKey(spep_6+60+5, ct, 255);
setEffAlphaKey(spep_6+72+5, ct, 255);
setEffAlphaKey(spep_6+72+25+5, ct, 0);
setEffScaleKey(spep_6+58+5, ct, 0.0, 0.0);
setEffScaleKey(spep_6+62+5, ct, -1.8, 1.8);
setEffScaleKey(spep_6+72+5, ct, -1.8, 1.8);
setEffScaleKey(spep_6+72+25+5, ct, -6.0, 6.0);

SP_start = 45; --間隔調整用 spep_6=217

--パンチの嵐
setMoveKey(  SP_start+ spep_6+85,  1,  150,  0,   0);
setMoveKey(  SP_start+ spep_6+85,  0, -220,  0,   0);

setEffMoveKey(   SP_start+ spep_6+85,  hae2,  -220,  110,   0);
setEffMoveKey(   SP_start+ spep_6+86,  hae2,  0,  280,   0);

--setScaleKey( SP_start+ spep_6+84, 0, 0.5, 0.5);
changeAnime( SP_start+ spep_6+85,   0, 9 );--パンチ1
--setScaleKey( SP_start+ spep_6+85, 0, 1.5, 1.5);

playSe( SP_start+ spep_6+86,1000);--SE
entryEffect( SP_start+  spep_6+85,   1,   0,  1,   0,  0,  0);
setDamage( SP_start+ spep_6+86, 1, 0);  -- ダメージ振動等
--changeAnime( SP_start+ spep_6+86,   1, 106 ); --敵モーション


setMoveKey( SP_start+  spep_6+86,  0, -180,  0,   0);
setMoveKey( SP_start+  spep_6+94,  0, -150,  0,   0);

setMoveKey(  SP_start+  spep_6+85,  1, 0,  0,   0);
setMoveKey( SP_start+  spep_6+86,  1, 30,  0,   0);
setMoveKey( SP_start+  spep_6+94,  1, 60,  0,   0);

setEnvZoomEnable( SP_start+spep_6+90,1);

changeAnime( SP_start+ spep_6+93,   0, 10);--パンチ2
playSe( SP_start+ spep_6+94,1006);--SE
entryEffect( SP_start+  spep_6+93,  2,   0,  1,   0,  0,  0);
setDamage( SP_start+ spep_6+94, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+94,   1, 108 ); --敵モーション

setMoveKey( SP_start+  spep_6+94,  0, -150,  0,   0);
setMoveKey( SP_start+  spep_6+102,  0, -120,  0,   0);

setMoveKey( SP_start+  spep_6+94,  1, 60,  0,   0);
setMoveKey( SP_start+  spep_6+102,  1, 90,  0,   0);

changeAnime( SP_start+ spep_6+101,   0, 12);--キック1
playSe( SP_start+ spep_6+102,1001);--SE
entryEffect( SP_start+  spep_6+101,   1,   0,  1,   0,  0,  0);
setDamage( SP_start+ spep_6+102, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+102,   1, 106 ); --敵モーション

setMoveKey( SP_start+  spep_6+102,  0, -120,  0,   0);
setMoveKey( SP_start+  spep_6+110,  0, -90,  0,   0);

setMoveKey( SP_start+  spep_6+102,  1, 90,  0,   0);
setMoveKey( SP_start+  spep_6+110,  1, 120,  0,   0);

setEnvZoomEnable( SP_start+spep_6+102,0);


changeAnime( SP_start+ spep_6+109,   0, 14);--キック3
playSe( SP_start+ spep_6+110,1007);--SE
entryEffect( SP_start+  spep_6+109,   2,   0,  1,   0,  0,  0);
setDamage( SP_start+ spep_6+110, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+110,   1, 108 ); --敵モーション

setMoveKey( SP_start+  spep_6+110,  0, -90,  0,   0);
setMoveKey( SP_start+  spep_6+118,  0, -60,  0,   0);

setMoveKey( SP_start+  spep_6+110,  1, 120,  0,   0);
setMoveKey( SP_start+  spep_6+118,  1, 150,  0,   0);

setEnvZoomEnable( SP_start+spep_6+114,1);

changeAnime( SP_start+ spep_6+117,   0, 13);--キック2
playSe( SP_start+ spep_6+118,1025);--SE
entryEffect( SP_start+  spep_6+117,   3,   0,  1,   0,  0,  0);
setDamage( SP_start+ spep_6+118, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+118,   1, 108 ); --敵モーション

setMoveKey( SP_start+  spep_6+118,  0, -60,  0,   0);
setMoveKey( SP_start+  spep_6+126,  0, -30,  0,   0);

setMoveKey( SP_start+  spep_6+118,  1, 150,  0,   0);
setMoveKey( SP_start+  spep_6+126,  1, 180,  0,   0);

changeAnime( SP_start+ spep_6+125,   0, 11);--パンチ3
playSe( SP_start+ spep_6+126,1025);--SE
entryEffect( SP_start+  spep_6+125,   4,   0,  1,   0,  0,  0);
setDamage( SP_start+ spep_6+126, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+126,   1, 106 ); --敵モーション

setEnvZoomEnable( SP_start+spep_6+126,0);

setMoveKey( SP_start+  spep_6+126,  1, 10,  0,   0);
setMoveKey( SP_start+  spep_6+136,  1, 1500,  0,   0);

setDisp( SP_start+ spep_6+138, 1, 0);

-- ** エフェクト等 ** --
entryFadeBg( spep_6, 0, 189, 0, 50, 50, 50);       -- ベース暗め　背景

entryEffectLife( spep_6, 920, 189, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_6, 0, 185, 15);
setShakeChara( spep_6, 1, 185, 15);

setShake( spep_6,185, 10);

setShake( SP_start+ spep_6+85,50, 20);
setShake( spep_6+77+25, 5, 40);
setShake( SP_start+  spep_6+126, 5, 40);


shuchusen8 = entryEffectLife( spep_6+50, 906, 149, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6+50, shuchusen8, 1.5, 1.5);


entryFade( SP_start+ spep_6+120+24, 5,  11, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setDisp( SP_start+ spep_6+91, 1, 0);
setDisp( SP_start+ spep_6+124+24, 0, 0);
setDisp( SP_start+ spep_6+124+24, 1, 0);
setScaleKey( SP_start+ spep_6+126+24, 0, 1.5, 1.5);
setScaleKey( SP_start+ spep_6+126+24, 1, 1.5, 1.5);

removeAllEffect( SP_start+spep_6+126+24);

--spep_5 = spep_9+99;
spep_5 = spep_6+120+24+24;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 271; --エンドフェイズのフレーム数を置き換える

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

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

--setDisp( SP_start+ spep_5-1, 0, 0);
setMoveKey( SP_start+  spep_5-1,    1,  100,  0,   0);
setScaleKey( SP_start+ spep_5-1,    1,  1, 1);
setMoveKey( SP_start+  spep_5,    1,    0,   0,   128);
setScaleKey( SP_start+ spep_5,    1,  0.1, 0.1);

changeAnime( SP_start+ spep_5, 1, 107);                         -- 手前ダメージ
setDisp( SP_start+ spep_5, 1, 1);

setMoveKey( SP_start+  spep_5+8,   1,    0,   0,   128);
setMoveKey( SP_start+  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey( SP_start+  spep_5+16,   1,  -60,  -200,  -100);
setDamage( SP_start+ spep_5+16, 1, 0);  -- ダメージ振動等
setShake( SP_start+spep_5+7,6,15);
setShake( SP_start+spep_5+13,15,10);

setRotateKey( SP_start+ spep_5,  1,  30 );
setRotateKey( SP_start+ spep_5+2,  1,  80 );
setRotateKey( SP_start+ spep_5+4,  1, 120 );
setRotateKey( SP_start+ spep_5+6,  1, 160 );
setRotateKey( SP_start+ spep_5+8,  1, 200 );
setRotateKey( SP_start+ spep_5+10,  1, 260 );
setRotateKey( SP_start+ spep_5+12,  1, 320 );
setRotateKey( SP_start+ spep_5+14,  1,   0 );

setShakeChara( SP_start+ spep_5+15, 1, 5,  10);
setShakeChara( SP_start+ spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+ spep_5+15, ct, 30, 10);
setEffRotateKey( SP_start+ spep_5+15, ct, -40);
setEffScaleKey( SP_start+ spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ spep_5+15, ct, 255);
setEffAlphaKey( SP_start+ spep_5+105, ct, 255);
setEffAlphaKey( SP_start+ spep_5+115, ct, 0);

playSe( SP_start+ spep_5+13, SE_11);
shuchusen = entryEffectLife( SP_start+ spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+spep_5+16);

entryFade( SP_start+ spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+ spep_5+110);

end

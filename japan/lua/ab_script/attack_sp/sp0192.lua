

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
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

--SE_12 = 09;
SE_13 = 1020;--1034 1037


SP_01 = 102094;
SP_02 = 102095;
SP_03 = 102096;--迫る
SP_04 = 1566;
SP_05 = 700;--瞬間移動
SP_06 = 102097;--残像


--multi_frm = 2;

setDisp( 0, 1, 0);
changeAnime( 0, 0, 16);                       -- 手前
setMoveKey(  0,  0, 0,  -54,   0);
setMoveKey(  1,  0, 0,  -54,   0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI(0, 0);
playSe( 0, 1018);
entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

playSe( 30, 1035); --かめはめ波

setScaleKey( 0, 0, 1.0, 1.0);
setScaleKey( 20, 0, 2.0, 2.0);

-- ** エフェクト等 ** --

speff1 = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

setEffAlphaKey(  30, speff1, 255);
setEffAlphaKey(  30, speff2, 255);

setScaleKey( 116, 0, 2.0, 2.0);
setScaleKey( 119, 0, 4.0, 4.0);

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( 30, 125, 15);
setShakeChara( 0, 0, 125, 10);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 99, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 125, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);


spep_12=130; --211 260

setScaleKey(  129,  0,  1.6,  1.6);
setMoveKey(  129,  0, 0,  -54,   0);

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
changeAnime( spep_12, 0, 3); 
zannzou = entryEffectLife(  spep_12,   SP_06, 35, 0x40+0x080,  0,  1,  0,  0); -- 残像
setEffScaleKey( spep_12, zannzou, 1.6, 1.6);
setEffAlphaKey(spep_12, zannzou, 255);

playSe( spep_12, 1018);

setMoveKey(  spep_12,  0, -600,  0,   0);
setMoveKey(  spep_12+20,  0, 0,  0,   0);
setMoveKey(  spep_12+30,  0, -100,  0,   0);

entryFadeBg( spep_12, 0, 45, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen3 = entryEffectLife( spep_12-1, 920, 46, 0x80,  -1,  0,  0,  0); -- 流線
setEffAlphaKey(spep_12-1, sen3, 255);

setEffAlphaKey(spep_12+30, zannzou, 255);


ct = entryEffectLife( spep_12+31, 10011, 14, 0x100, -1, 0, 200, 200);    -- シュンッ
setEffScaleKey(spep_12+31, ct, 1.4, 1.4);

syunkan2=entryEffect( spep_12+31, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
setEffAlphaKey(spep_12+30, zannzou, 0);
setDisp( spep_12+31, 0, 0);
playSe( spep_12+31, 37);

entryFade( spep_12+40, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_12+44,  0, 600,  0,   0);

spep_6=spep_12+45; --211 260

------------------------------------------------------
-- 吹っ飛ばし(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 1.2, 1.2);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.4, 1.4);
setMoveKey(  spep_6,  1, 0,  0,   0);
setMoveKey(  spep_6,  0, 200,  0,   0);

setDisp( spep_6+45, 0, 1);
changeAnime( spep_6+40,   0, 117 ); --気溜め
playSe( spep_6+40, 37);

entryFadeBg( spep_6, 0, 89, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

setShakeChara( spep_6, 0, 109, 15);
setShakeChara(  spep_6, 1, 109, 15);
setShake( spep_6,109, 10);

sen2 = entryEffectLife( spep_6, 920, 88, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_6, sen2, 40);
--setEffRotateKey( SP_start+spep_6, sen2, -170);
setEffScaleKey( spep_6, sen2, 1.6, 1.6);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 200; --エンドフェイズのフレーム数を置き換える
--SP_dodge = 210; --エンドフェイズのフレーム数を置き換える
--SP_dodge = 220; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+10,  0, 2000,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

ct = entryEffectLife( spep_6+40, 10011, 14, 0x100, -1, 0, 200, 300);    -- シュンッ
setEffScaleKey(spep_6+40, ct, 1.4, 1.4);

syunkan1=entryEffect( spep_6+40, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動


SP_start=-20; 

changeAnime( SP_start+ spep_6+68,   0, 114 ); --左向きの叩きつけモーション
setRotateKey( SP_start+ spep_6+68 , 0 , 20);


playSe( SP_start+ spep_6+72,1025);--SE
hit1 = entryEffect( SP_start+  spep_6+72,   3,   0,  1,   0,  0,  0);
syougeki = entryEffect( SP_start+  spep_6+72,   908,   0,  1,   0,  0,  0);

setEffScaleKey( SP_start+ spep_6+72, syougeki, 2.4, 2.4);
setEffScaleKey( SP_start+ spep_6+72, hit1, 2.4, 2.4);

setDamage( SP_start+ spep_6+73, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+73,   1, 8 ); --敵モーション

setMoveKey( SP_start+  spep_6+69,  0, 200,  0,   0);
setMoveKey( SP_start+  spep_6+77,  0, 170,  0,   0);

setMoveKey( SP_start+  spep_6+69,  1, 0,  0,   0);
setMoveKey( SP_start+  spep_6+77,  1, -60,  0,   0);

setMoveKey( SP_start+  spep_6+92,  1, -600,  500,   100);
setMoveKey( SP_start+  spep_6+98,  1, -600,  500,   100);
setDisp( SP_start+ spep_6+98, 1, 0);
--setDisp( SP_start+ spep_6+92, 0, 0);
setScaleKey( SP_start+ spep_6+72, 1,  1.4, 1.4);
setScaleKey( SP_start+ spep_6+92, 1,  0.5, 0.5);

setRotateKey( SP_start+ spep_6+79 , 0 , 20);
changeAnime( SP_start+ spep_6+80,   0, 102 ); --左向きの叩きつけモーション
setRotateKey( SP_start+ spep_6+80 , 0 , 0);
ct = entryEffectLife( SP_start+ spep_6+92, 10011, 14, 0x100, -1, 0, 200, 300);    -- シュンッ
setEffScaleKey( SP_start+spep_6+92, ct, 1.4, 1.4);

syunkan1=entryEffect( SP_start+ spep_6+92, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
setDisp( SP_start+ spep_6+92, 0, 0);
playSe( SP_start+ spep_6+92, 37);

-- ** エフェクト等 ** --

--ここのエフェクトはカット数に合わせて調整

setScaleKey( SP_start+ spep_6+110, 1,  2.4, 2.4);

setMoveKey( SP_start+  spep_6+110,  1, 1200,  -800,   0);
setDisp( SP_start+ spep_6+113, 1, 1);
setMoveKey( SP_start+  spep_6+137,  1, -1200,  800,   100);

ryusen_1=entryEffectLife( SP_start+ spep_6+109, 921, 42, 0x80,  -1,  0,  0,  0); -- 流線 406
setEffRotateKey( SP_start+ spep_6+109, ryusen_1, 220);
setEffScaleKey( SP_start+  spep_6+109, ryusen_1, 1.6, 1.6);

entryFadeBg( SP_start+ spep_6+109, 0, 42, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

entryFade( SP_start+ spep_6+148, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_start+  spep_6+152,  1, -1200,  800,   100);

spep_7=SP_start+spep_6+109+47; --211 260

setScaleKey( SP_start+  spep_6+152, 1,  1.8, 1.8);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------



setDisp( spep_7, 1, 1);
--setMoveKey(  spep_7,    1,   550,  -200,   0);
setMoveKey(  spep_7,    1,   1200,  -1100,   0);
setMoveKey(  spep_7+50,    1,   1200,  -1100,   0);

setMoveKey(  spep_7+70,    1,   180,  0,   0);

changeAnime( spep_7+5, 0, 30);                       -- 溜め!
setMoveKey(  spep_7,  0, -150,  0,   0);
setDisp( spep_7+5, 0, 1);
setScaleKey( spep_7+5,  0, 2.4, 2.4);


ct = entryEffectLife( spep_7, 10011, 10, 0x100, -1, 0, -200, 300);    -- シュンッ
setEffScaleKey(spep_7, ct, 1.4, 1.4);

syunkan2=entryEffect( spep_7, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動

--playSe( spep_7+4, SE_03);
SE001 = playSe( spep_7+11, 1037);
SE002 = playSe( spep_7+41, 1037);
--playSe( spep_7+71, 1037);

kame_hand = entryEffect( spep_7+10, SP_01, 0x40,  0,  300,  170,  80);   -- 手のカメハメ波部
setEffScaleKey( spep_7+10, kame_hand, 0.3, 0.3);
setEffScaleKey( spep_7+40, kame_hand, 1.0, 1.0);

shuchusen8 = entryEffectLife( spep_7, 906, 76, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7+50, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+10, 10008, 100, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_7+10, ct, 100, 8);
setEffScaleKey(spep_7+10, ct, 1.4, 1.4);

entryFade( spep_7+70, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_7+80,  0, -150,  0,   0);
setScaleKey( spep_7+80,  0, 2.4, 2.4);

setShake( spep_7, 75, 15);
setShakeChara( spep_7, 0, 75, 45);

removeAllEffect( spep_7+77);

entryFadeBg( spep_7, 0, 82, 0, 10, 10, 10, 255);       -- ベース暗め　背景

sen3 = entryEffectLife( spep_7, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_7, sen3, 200);
setEffScaleKey( spep_7, sen3, 1.6, 1.6);

spep_2=spep_7+82; --260

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2,    0,      0,  0,   0);

--[[playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
stopSe(spep_2,SE001,5);
stopSe(spep_2,SE002,5);

playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

removeAllEffect(spep_2+87);

spep_3=spep_2+85+2; --260


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( spep_3, 1, 1);
setScaleKey( spep_3,  1, 1.8, 1.8);


changeAnime( spep_3, 0, 31); -- かめはめ波発射ポーズ
setScaleKey( spep_3,  0, 0.8, 0.8);
--setScaleKey( spep_3+2,  0, 1.5, 1.5);
setMoveKey(  spep_3+0,    0,   -250,  0,   -20);
setMoveKey(  spep_3+30,    0,   -250,  0,   -10);
setMoveKey(  spep_3+50,    0,   -280,  0,   0);

--setMoveKey(  spep_3,    1,   1200,  -1100,   0);
--setMoveKey(  spep_3+30,    1,   1200,  -1100,   0);

--setMoveKey(  spep_3+50,    1,   180,  0,   0);

setMoveKey(  spep_3,    1,   180,  0,   0);

playSe( spep_3, 1037);
--playSe( spep_3+30, 1037);

setShake( spep_3, 38, 10);
setShake( spep_3+38, 137, 20);

setShakeChara( spep_3, 0, 38, 20);
setShakeChara( spep_3+38, 0, 137, 40);

sen7 = entryEffectLife( spep_3, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen7, 200);
setEffScaleKey(spep_3, sen7, 1.5, 1.5);

kamehame_beam = entryEffect( spep_3, SP_02, 0x40,  0,  300,  220, 100);   -- 伸びるかめはめ波

setDisp( spep_3+62, 1, 0);

-- ** エフェクト等 ** --

entryFadeBg( spep_3, 0, 120, 0, 10, 10, 10, 255);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_3+28, 10012, 40, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+28, ct, 32, 5);
setEffAlphaKey(spep_3+28, ct, 255);
setEffAlphaKey(spep_3+48, ct, 255);
setEffAlphaKey(spep_3+60, ct, 0);
setEffScaleKey(spep_3+28, ct, 0.0, 0.0);
setEffScaleKey(spep_3+48, ct, 1.3, 1.3);
setEffScaleKey(spep_3+60, ct, 6.0, 6.0);


playSe( spep_3+60, SE_07);

entryFade( spep_3+112, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_3+120, 1, 0);
setScaleKey( spep_3+120,  0, 0.8, 0.8);

setScaleKey( spep_3+117,  1, 1.8, 1.8);
setMoveKey(  spep_3+120,    1,   180,  0,   0);

removeAllEffect( spep_3+121 );

spep_5=spep_3+122; 


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 0);


kamehame_beam2 = entryEffect( spep_5, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_5, kamehame_beam2, 1, 1);
setEffScaleKey(spep_5+12, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( spep_5+12, 1, 0);  -- ダメージ振動等

playSe( spep_5+23, SE_09);

ct = entryEffectLife( spep_5, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_5, ct, 99, 20);
setEffScaleKey( spep_5, ct, 0.1, 0.1);
setEffScaleKey( spep_5+5, ct, 2.4, 2.4);
setEffScaleKey( spep_5+30, ct, 2.8, 2.8);
setEffAlphaKey(spep_5+0, ct, 255);
setEffAlphaKey(spep_5+15, ct, 255);
setEffAlphaKey(spep_5+30, ct, 0);

entryFade( spep_5+37, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------


entryEffect( spep_5+54, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（青）

playSe( spep_5+57, SE_07);

-- ダメージ表示
dealDamage(spep_5+70);

entryFade( spep_5+183, 5,  10, 5, 245, 245, 245, 255);      -- white fade

endPhase(spep_5+183);


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setVisibleUI(0, 0);
playSe( 0, 1018);
entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

playSe( 30, 1035); --かめはめ波

setScaleKey( 0, 0, 1.0, 1.0);
setScaleKey( 20, 0, 2.0, 2.0);

-- ** エフェクト等 ** --

setScaleKey( 116, 0, 2.0, 2.0);
setScaleKey( 119, 0, 4.0, 4.0);

entryFade( 120, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 揺れ等 ** --
setShake( 30, 125, 15);
setShakeChara( 0, 0, 125, 10);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 99, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 125, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);


spep_12=130; --211 260

setScaleKey(  129,  0,  1.6,  1.6);
setMoveKey(  129,  0, 0,  -54,   0);
--setScaleKey( spep_12, 0, 2.0, 2.0);

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
--setDisp( 124, 0, 0);


changeAnime( spep_12, 0, 3); 
zannzou = entryEffectLife(  spep_12,   SP_06, 35, 0x40+0x080,  0,  1,  0,  0); -- 残像
setEffScaleKey( spep_12, zannzou, 1.6, 1.6);
setEffAlphaKey(spep_12, zannzou, 255);

playSe( spep_12, 1018);

setMoveKey(  spep_12,  0, -600,  0,   0);
setMoveKey(  spep_12+20,  0, 0,  0,   0);
setMoveKey(  spep_12+30,  0, -100,  0,   0);

entryFadeBg( spep_12, 0, 45, 0, 10, 10, 10, 180);       -- ベース暗め　背景


sen3 = entryEffectLife( spep_12-1, 920, 46, 0x80,  -1,  0,  0,  0); -- 流線
setEffAlphaKey(spep_12-1, sen3, 255);

setEffAlphaKey(spep_12+30, zannzou, 255);


ct = entryEffectLife( spep_12+31, 10011, 14, 0x100, -1, 0, 200, 200);    -- シュンッ
setEffScaleKey(spep_12+31, ct, 1.4, 1.4);

syunkan2=entryEffect( spep_12+31, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
--setDisp( spep_6+34, 0, 1);
setEffAlphaKey(spep_12+30, zannzou, 0);
setDisp( spep_12+31, 0, 0);
playSe( spep_12+31, 37);

entryFade( spep_12+40, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_12+44,  0, 600,  0,   0);

spep_6=spep_12+45; --211 260

------------------------------------------------------
-- 吹っ飛ばし(60F)
------------------------------------------------------

setScaleKey( spep_6, 0, 1.2, 1.2);
changeAnime( spep_6, 0, 3); 
changeAnime( spep_6, 1, 100); 
setDisp( spep_6, 1, 1);
setScaleKey( spep_6, 1, 1.4, 1.4);
setMoveKey(  spep_6,  1, 0,  0,   0);
setMoveKey(  spep_6,  0, 200,  0,   0);

setDisp( spep_6+45, 0, 1);
changeAnime( spep_6+40,   0, 117 ); --気溜め
playSe( spep_6+40, 37);

entryFadeBg( spep_6, 0, 89, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406


setShakeChara( spep_6, 0, 109, 15);
setShakeChara( spep_6, 1, 109, 15);
setShake( spep_6,109, 10);

sen2 = entryEffectLife( spep_6, 920, 88, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_6, sen2, 40);
--setEffRotateKey( SP_start+spep_6, sen2, -170);
setEffScaleKey( spep_6, sen2, 1.6, 1.6);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 200; --エンドフェイズのフレーム数を置き換える
--SP_dodge = 210; --エンドフェイズのフレーム数を置き換える
--SP_dodge = 220; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+10,  0, 2000,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

ct = entryEffectLife( spep_6+40, 10011, 14, 0x100, -1, 0, 200, 300);    -- シュンッ
setEffScaleKey(spep_6+40, ct, 1.4, 1.4);

syunkan1=entryEffect( spep_6+40, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動

--P移動

SP_start=-20; 

changeAnime( SP_start+ spep_6+68,   0, 114 ); --左向きの叩きつけモーション
setRotateKey( SP_start+ spep_6+68 , 0 , 20);


playSe( SP_start+ spep_6+72,1025);--SE
hit1 = entryEffect( SP_start+  spep_6+72,   3,   0,  1,   0,  0,  0);
syougeki = entryEffect( SP_start+  spep_6+72,   908,   0,  1,   0,  0,  0);

setEffScaleKey( SP_start+ spep_6+72, syougeki, 2.4, 2.4);
setEffScaleKey( SP_start+ spep_6+72, hit1, 2.4, 2.4);

setDamage( SP_start+ spep_6+73, 1, 0);  -- ダメージ振動等
changeAnime( SP_start+ spep_6+73,   1, 8 ); --敵モーション

setMoveKey( SP_start+  spep_6+69,  0, 200,  0,   0);
setMoveKey( SP_start+  spep_6+77,  0, 170,  0,   0);

setMoveKey( SP_start+  spep_6+69,  1, 0,  0,   0);
setMoveKey( SP_start+  spep_6+77,  1, -60,  0,   0);

setMoveKey( SP_start+  spep_6+92,  1, -600,  500,   100);
setMoveKey( SP_start+  spep_6+98,  1, -600,  500,   100);
setDisp( SP_start+ spep_6+98, 1, 0);
--setDisp( SP_start+ spep_6+92, 0, 0);
setScaleKey( SP_start+ spep_6+72, 1,  1.4, 1.4);
setScaleKey( SP_start+ spep_6+92, 1,  0.5, 0.5);

setRotateKey( SP_start+ spep_6+79 , 0 , 20);
changeAnime( SP_start+ spep_6+80,   0, 102 ); --左向きの叩きつけモーション
setRotateKey( SP_start+ spep_6+80 , 0 , 0);
ct = entryEffectLife( SP_start+ spep_6+92, 10011, 14, 0x100, -1, 0, 200, 300);    -- シュンッ
setEffScaleKey( SP_start+spep_6+92, ct, 1.4, 1.4);

syunkan1=entryEffect( SP_start+ spep_6+92, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動
setDisp( SP_start+ spep_6+92, 0, 0);
playSe( SP_start+ spep_6+92, 37);

-- ** エフェクト等 ** --
--ここのエフェクトはカット数に合わせて調整

--spep_7=spep_111+68+5+27; --211 260
setScaleKey( SP_start+ spep_6+110, 1,  1.8, 1.8);

setMoveKey( SP_start+  spep_6+110,  1, 1200,  -800,   0);
setDisp( SP_start+ spep_6+113, 1, 1);
setMoveKey( SP_start+  spep_6+137,  1, -1200,  800,   100);

ryusen_1=entryEffectLife( SP_start+ spep_6+109, 921, 42, 0x80,  -1,  0,  0,  0); -- 流線 406
--setEffRotateKey( SP_start+spep_6,ryusen_1,-10);
setEffRotateKey( SP_start+ spep_6+109, ryusen_1, 220);
setEffScaleKey( SP_start+  spep_6+109, ryusen_1, 1.6, 1.6);

entryFadeBg( SP_start+ spep_6+109, 0, 42, 0, 10, 10, 10, 180);       -- ベース暗め　背景 406

entryFade( SP_start+ spep_6+148, 3, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_start+  spep_6+152,  1, -1200,  800,   100);

spep_7=SP_start+spep_6+109+47; --211 260

setScaleKey( SP_start+  spep_6+152, 1,  1.4, 1.4);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setDisp( spep_7, 1, 1);
--setMoveKey(  spep_7,    1,   550,  -200,   0);
setMoveKey(  spep_7,    1,   1200,  -1100,   0);
setMoveKey(  spep_7+50,    1,   1200,  -1100,   0);

setMoveKey(  spep_7+70,    1,   180,  0,   0);

changeAnime( spep_7+5, 0, 30);                       -- 溜め!
setMoveKey(  spep_7,  0, -150,  0,   0);
setDisp( spep_7+5, 0, 1);
setScaleKey( spep_7+5,  0, 2.4, 2.4);


ct = entryEffectLife( spep_7, 10011, 10, 0x100, -1, 0, -200, 300);    -- シュンッ
setEffScaleKey(spep_7, ct, 1.4, 1.4);

syunkan2=entryEffect( spep_7, SP_05, 0x40+0x100,  0, 300,  0, 0); --瞬間移動

--playSe( spep_7+4, SE_03);
SE001 = playSe( spep_7+11, 1037);
SE002 = playSe( spep_7+41, 1037);
--playSe( spep_7+71, 1037);

kame_hand = entryEffect( spep_7+10, SP_01, 0x40,  0,  300,  170,  80);   -- 手のカメハメ波部
setEffScaleKey( spep_7+10, kame_hand, 0.3, 0.3);
setEffScaleKey( spep_7+40, kame_hand, 1.0, 1.0);

shuchusen8 = entryEffectLife( spep_7, 906, 76, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7+50, shuchusen8, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+10, 10008, 100, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_7+10, ct, 100, 8);
setEffScaleKey(spep_7+10, ct, 1.4, 1.4);

entryFade( spep_7+70, 5,  8, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  spep_7+80,  0, -150,  0,   0);
setScaleKey( spep_7+80,  0, 2.4, 2.4);

removeAllEffect( spep_7+77);

setShake( spep_7, 75, 15);
setShakeChara( spep_7, 0, 75, 45);

entryFadeBg( spep_7, 0, 82, 0, 10, 10, 10, 255);       -- ベース暗め　背景

sen3 = entryEffectLife( spep_7, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_7, sen3, 200);
setEffScaleKey( spep_7, sen3, 1.6, 1.6);

spep_2=spep_7+82; --260

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2,    0,      0,  0,   0);

--[[playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
stopSe(spep_2,SE001,5);
stopSe(spep_2,SE002,5);
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

removeAllEffect(spep_2+87);

spep_3=spep_2+85+2; --260


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( spep_3, 1, 1);
setScaleKey( spep_3,  1, 1.8, 1.8);

changeAnime( spep_3, 0, 31); -- かめはめ波発射ポーズ
setScaleKey( spep_3,  0, 0.8, 0.8);
--setScaleKey( spep_3+2,  0, 1.5, 1.5);
setMoveKey(  spep_3+0,    0,   -250,  0,   -20);
setMoveKey(  spep_3+30,    0,   -250,  0,   -10);
setMoveKey(  spep_3+50,    0,   -280,  0,   0);

--setMoveKey(  spep_3,    1,   1200,  -1100,   0);
--setMoveKey(  spep_3+30,    1,   1200,  -1100,   0);

--setMoveKey(  spep_3+50,    1,   180,  0,   0);

setMoveKey(  spep_3,    1,   180,  0,   0);

playSe( spep_3, 1037);
--playSe( spep_3+30, 1037);

setShake( spep_3, 38, 10);
setShake( spep_3+38, 137, 20);

setShakeChara( spep_3, 0, 38, 20);
setShakeChara( spep_3+38, 0, 137, 40);

sen7 = entryEffectLife( spep_3, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen7, 200);
setEffScaleKey(spep_3, sen7, 1.5, 1.5);

kamehame_beam = entryEffect( spep_3, SP_02, 0x40,  0,  300,  220, 100);   -- 伸びるかめはめ波

setDisp( spep_3+62, 1, 0);

-- ** エフェクト等 ** --

entryFadeBg( spep_3, 0, 120, 0, 10, 10, 10, 255);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_3+28, 10012, 40, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+28, ct, 32, 5);
setEffAlphaKey(spep_3+28, ct, 255);
setEffAlphaKey(spep_3+48, ct, 255);
setEffAlphaKey(spep_3+60, ct, 0);
setEffScaleKey(spep_3+28, ct, 0.0, 0.0);
setEffScaleKey(spep_3+48, ct, 1.3, 1.3);
setEffScaleKey(spep_3+60, ct, 6.0, 6.0);


playSe( spep_3+60, SE_07);

entryFade( spep_3+112, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_3+120, 1, 0);
setScaleKey( spep_3+120,  0, 0.8, 0.8);

setScaleKey( spep_3+117,  1, 1.8, 1.8);
setMoveKey(  spep_3+120,    1,   180,  0,   0);

removeAllEffect( spep_3+121 );

spep_5=spep_3+122; 


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 0);


kamehame_beam2 = entryEffect( spep_5, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_5, kamehame_beam2, 1, 1);
setEffScaleKey(spep_5+12, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( spep_5+12, 1, 0);  -- ダメージ振動等

playSe( spep_5+23, SE_09);

ct = entryEffectLife( spep_5, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_5, ct, 99, 20);
setEffScaleKey( spep_5, ct, 0.1, 0.1);
setEffScaleKey( spep_5+5, ct, 2.4, 2.4);
setEffScaleKey( spep_5+30, ct, 2.8, 2.8);
setEffAlphaKey(spep_5+0, ct, 255);
setEffAlphaKey(spep_5+15, ct, 255);
setEffAlphaKey(spep_5+30, ct, 0);

entryFade( spep_5+37, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------


entryEffect( spep_5+54, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（青）

playSe( spep_5+57, SE_07);

-- ダメージ表示
dealDamage(spep_5+70);

--entryFade( spep_5+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade
entryFade( spep_5+183, 5,  10, 5, 245, 245, 245, 255);      -- white fade

endPhase(spep_5+183);



end

print ("[lua]sp1117");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150532;--毒出し 35
SP_02 = 150533;--ラッシュ 94

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

changeAnime( 0, 0, 1);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 1);

setMoveKey( 0, 0, 0, -58,0);
setMoveKey( 1, 0, 0, -58, 0);

setScaleKey( 0,   0, 1.5, 1.5);
setScaleKey( 1,   0, 1.5, 1.5);
setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

tyousei = 0;
tyousei2 = 0;

------------------------------------------------------
--ため(0-169F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 30, 40, 129, 0, 10, 10, 10, 230);       -- ベース暗め　背景
setVisibleUI(5, 0);

changeAnime(  30, 0, 17); -- 溜め!
setShakeChara(31,1,40,20);

ki1=entryEffectLife(30,1501,40,0x80, -1,0,0,0);    -- eff_002溜めエフェクト1キャラ後用
setEffMoveKey(30,ki1,0,0,0);
setEffScaleKey(30,ki1,1.0,1.0);
setEffRotateKey(30,ki1,0);
setEffAlphaKey(30,ki1,255);

setEffMoveKey(70,ki1,0,0,0);
setEffScaleKey(70,ki1,1.0,1.0);
setEffRotateKey(70,ki1,0);
setEffAlphaKey(70,ki1,255);

ki2=entryEffectLife(30, 1500, 40, 0,    -1,  0,  0,  0);    -- eff_001溜めエフェクト1キャラ前用
setEffMoveKey(30,ki2,0,0,0);
setEffScaleKey(30,ki2,1.0,1.0);
setEffRotateKey(30,ki2,0);
setEffAlphaKey(30,ki2,255);

setEffMoveKey(70,ki2,0,0,0);
setEffScaleKey(70,ki2,1.0,1.0);
setEffRotateKey(70,ki2,0);
setEffAlphaKey(70,ki2,255);

playSe( 30, SE_01);

entryFade( 65, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,  311, 40, 0x100,  -1,  0,  0,  -230); -- オーラ
setEffScaleKey( 30, aura, 2.3, 2.3);

setShakeChara( 30, 0, 19, 10);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 50, 0, 320); -- ズズンッ
setEffRotateKey(30,ct,355);
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.5, 2.5);
playSe( 30, SE_02);

--changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

ki3=entryEffectLife(71,1503, 98, 0x80,  -1,  0,  0,  0);   -- eff_004 (気)-- eff_002溜めエフェクト1キャラ後用
setEffMoveKey(71,ki3,0,0,0);
setEffScaleKey(71,ki3,1.0,1.0);
setEffRotateKey(71,ki3,0);
setEffAlphaKey(71,ki3,255);

setEffMoveKey(169,ki3,0,0,0);
setEffScaleKey(169,ki3,1.0,1.0);
setEffRotateKey(169,ki3,0);
setEffAlphaKey(169,ki3,255);

ki4= entryEffectLife(71,1502, 98, 0, -1,  0,  0,  0);   -- eff_003 (気)-- eff_001溜めエフェクト1キャラ前用
setEffMoveKey(71,ki4,0,0,0);
setEffScaleKey(71,ki4,1.0,1.0);
setEffRotateKey(71,ki4,0);
setEffAlphaKey(71,ki4,255);

setEffMoveKey(169,ki4,0,0,0);
setEffScaleKey(169,ki4,1.0,1.0);
setEffRotateKey(169,ki4,0);
setEffAlphaKey(169,ki4,255);

-- ** エフェクト等 ** --
aura = entryEffectLife(  71,  311, 98, 0x100,  -1,  0,  0,  -230); -- オーラ
setEffScaleKey( 71, aura, 2.3, 2.3);

setShakeChara( 71, 0, 98, 10);

speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

setScaleKey( 168,   0, 1.5, 1.5);
setMoveKey(   169,   0,    0, -58,   0);
setDisp(169,0,0);

setMoveKey(   170,   0,    0, -800,   0);

------------------------------------------------------
-- カットイン(170-254F)
------------------------------------------------------
spep_1 = 170;
entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景

playSe( spep_1, SE_05);
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchuserush = entryEffectLife( spep_1+1, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_1+1, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_1+1, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_1+1, shuchuserush, 255);
setEffRotateKey( spep_1+1, shuchuserush, 0);

------------------------------------------------------
-- 毒出し(254〜318)
------------------------------------------------------
spep_2 = spep_1+87;
entryFade( spep_2-10, 5, 15, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 65, 0, 10, 10, 10, 160);       -- ベース暗め　背景

playSe(spep_2,19);

tosshin = entryEffectLife(spep_2,   150532, 64,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey( spep_2, tosshin, 0, 0, 0);
setEffScaleKey( spep_2, tosshin, 1.0, 1.0);
setEffAlphaKey( spep_2, tosshin, 255);
setEffRotateKey( spep_2, tosshin, 0);

setEffMoveKey( spep_2+63, tosshin, 0, 0, 0);
setEffScaleKey( spep_2+63, tosshin, 1.0, 1.0);
setEffRotateKey( spep_2+63, tosshin, 0);
setEffAlphaKey( spep_2+63, tosshin, 255);

setEffMoveKey( spep_2+64, tosshin, 0, 0, 0);
setEffScaleKey( spep_2+64, tosshin, 1.0, 1.0);
setEffRotateKey( spep_2+64, tosshin, 0);
setEffAlphaKey( spep_2+64, tosshin, 0);

------------------------------------------------------
-- ビンタ叩き落とし(188F) -455 white  319-507
------------------------------------------------------
spep_3 = spep_2+65;
entryFade( spep_3-5, 3, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 188, 0, 10, 10, 10, 220);          -- ベース暗め　背景

tosshinushiro = entryEffect(  spep_3,   150533,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey( spep_3, tosshinushiro, 0, 0, 0);
setEffScaleKey( spep_3, tosshinushiro, 1.0, 1.0);
setEffAlphaKey( spep_3, tosshinushiro, 0);
setEffRotateKey( spep_3, tosshinushiro, 0);


tosshin = entryEffect(  spep_3,   150533,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey( spep_3, tosshin, 0, 0, 0);
setEffScaleKey( spep_3, tosshin, 1.0, 1.0);
setEffAlphaKey( spep_3, tosshin, 255);
setEffRotateKey( spep_3, tosshin, 0);

playSe(spep_3,1018);

changeAnime(spep_3+19,1,101);
setDisp(spep_3+19,1,1);
setMoveKey(spep_3+19,1, 600, 0, 0);
setScaleKey(spep_3+19, 1, 1.5, 1.5);
setRotateKey( spep_3+19, 1, 0);

shuchusedash = entryEffectLife( spep_3, 920, 60, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_3, shuchusedash, 0, 0, 0);
setEffScaleKey( spep_3, shuchusedash, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusedash, 255);
setEffRotateKey( spep_3, shuchusedash, 0);

--entryFade( spep_3+129, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 363; --エンドフェイズのフレーム数を置き換える　--spep_3+44 

playSe( SP_dodge-12, 1042);

--
setMoveKey(spep_3+43,1, 227, 0, 0);
setScaleKey(spep_3+43, 1, 1.5, 1.5);
setRotateKey( spep_3+43, 1, 0);

setMoveKey(SP_dodge+11,1, 227, 0, 0);
setScaleKey(SP_dodge+11, 1, 1.5, 1.5);
setRotateKey(SP_dodge+11, 1, 0);
--

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);


entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setMoveKey( SP_dodge+8, 0,    0, -54,   0);
--setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end
---------------------------------------------------------
-- 回避されていない場合　--spep_3+42以降
---------------------------------------------------------

shuchuserush = entryEffectLife( spep_3+50, 906, 94, 0x80,  -1, 0,  0,  0);   -- 集中線 -374
setEffMoveKey(spep_3+50, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_3+50, shuchuserush, 1.5, 1.5);
setEffAlphaKey( spep_3+50, shuchuserush, 255);
setEffRotateKey( spep_3+50, shuchuserush, 0);

ryusentosshinn = entryEffectLife( spep_3+144, 921, 44, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey(spep_3+145, ryusentosshinn, 0, 0, 0);
setEffRotateKey( spep_3+145, ryusentosshinn, 235);
setEffScaleKey( spep_3+145, ryusentosshinn, 1.8, 1.8);
setEffAlphaKey( spep_3+145, ryusentosshinn, 255);

setMoveKey(spep_3+50,1, 130, 0, 0); --374
setScaleKey(spep_3+50,1, 1.5, 1.5);
setRotateKey( spep_3+50, 1, 0);

changeAnime(spep_3+61,1,108); --385
setMoveKey(spep_3+63,1, 170, 0, 0);
setScaleKey(spep_3+63,1, 1.5, 1.5);
setRotateKey( spep_3+63, 1, 0);

setMoveKey(spep_3+65,1, 135, 0, 0); --389
setScaleKey(spep_3+65,1, 1.5, 1.5);
setRotateKey( spep_3+65, 1, 0);

setShakeChara(spep_3+61,1,15,20);

setMoveKey(spep_3+77,1, 135, -50, 0); --401
setScaleKey(spep_3+77,1, 1.5, 1.5);
setRotateKey( spep_3+77, 1, 0);

setShakeChara(spep_3+78,1,7,20);

setMoveKey(spep_3+86,1, 135, -50, 0); --401
setMoveKey(spep_3+87,1, 132, -30, 0); --401
setScaleKey(spep_3+87,1, 1.5, 1.5);
setRotateKey( spep_3+87, 1, 0);

--[[
setMoveKey(spep_3+88,1, 130, -150, 0); --412
setScaleKey(spep_3+88,1, 1.5, 1.5);
setRotateKey( spep_3+88, 1, 0);
]]--

setMoveKey(spep_3+89,1, 130, 0, 0); --413
setScaleKey(spep_3+89,1, 1.5, 1.5);
setRotateKey( spep_3+89, 1, 0);

setEffAlphaKey( spep_3+123, tosshinushiro, 0);
setEffAlphaKey( spep_3+124, tosshin, 255);
setEffAlphaKey( spep_3+124, tosshinushiro, 255);
setEffAlphaKey( spep_3+125, tosshin, 0);

setShakeChara(spep_3+90,1,25,20);


changeAnime(spep_3+118,1,106); --442

setMoveKey(spep_3+144,1, 130, 0, 0); --
setScaleKey(spep_3+144,1, 1.5, 1.5);
setRotateKey( spep_3+144, 1, 0);

setMoveKey(spep_3+146,1, 130, 0, 0); --468
setScaleKey(spep_3+146,1, 1.5, 1.5);
setRotateKey( spep_3+146, 1, 0);

setEffAlphaKey( spep_3+145, tosshin, 0);
setEffAlphaKey( spep_3+146, tosshin, 255);

changeAnime(spep_3+147,1,107);  --470
setMoveKey(spep_3+147,1, 0, -250, 0); --469
setScaleKey(spep_3+147,1, 1.0, 1.0);
setRotateKey( spep_3+147, 1, 0);

playSe(spep_3+147,1024);

setMoveKey(spep_3+186,1, 600, -1200, 0); --490
setScaleKey(spep_3+186,1, 1.5, 1.5);
setRotateKey( spep_3+186, 1, 0);

playSe(spep_3+51,1001);
playSe(spep_3+69,1001);
playSe(spep_3+79,1001);
playSe(spep_3+91,1001);
playSe(spep_3+101,1001);
playSe(spep_3+117,1009);

------------------------------------------------------
-- かめはめ波溜め(100F)
------------------------------------------------------
spep_4 = spep_3+188;

--entryFade( spep_4-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_4, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_9=spep_4; --410 469

entryFade( spep_9-7, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 0, 0, 255, 255, 255, 255);          -- ベース暗め　背景

setMoveKey(  spep_9-1,   1, 130,  -150,   0);

--470
setDisp( spep_9-1, 1, 1);
setMoveKey(  spep_9-1,    1,  100,  0,   0);
setScaleKey( spep_9-1,    1,  1.0, 1.0);

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
shuchusen6 = entryEffectLife( spep_9+15, 911, 65, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9+15, shuchusen6, 1.5, 1.5);
setEffAlphaKey( spep_9+15, shuchusen6, 255);

shuchusen = entryEffectLife( spep_9+15, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
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
--ため(0-169F)
------------------------------------------------------
--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 30, 40, 129, 0, 10, 10, 10, 230);       -- ベース暗め　背景
setVisibleUI(5, 0);

changeAnime(  30, 0, 17); -- 溜め!
setShakeChara(31,1,40,20);

ki1=entryEffectLife(30,1501,40,0x80, -1,0,0,0);    -- eff_002溜めエフェクト1キャラ後用
setEffMoveKey(30,ki1,0,0,0);
setEffScaleKey(30,ki1,1.0,1.0);
setEffRotateKey(30,ki1,0);
setEffAlphaKey(30,ki1,255);

setEffMoveKey(70,ki1,0,0,0);
setEffScaleKey(70,ki1,1.0,1.0);
setEffRotateKey(70,ki1,0);
setEffAlphaKey(70,ki1,255);

ki2=entryEffectLife(30, 1500, 40, 0,    -1,  0,  0,  0);    -- eff_001溜めエフェクト1キャラ前用
setEffMoveKey(30,ki2,0,0,0);
setEffScaleKey(30,ki2,1.0,1.0);
setEffRotateKey(30,ki2,0);
setEffAlphaKey(30,ki2,255);

setEffMoveKey(70,ki2,0,0,0);
setEffScaleKey(70,ki2,1.0,1.0);
setEffRotateKey(70,ki2,0);
setEffAlphaKey(70,ki2,255);

playSe( 30, SE_01);

entryFade( 65, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,  311, 40, 0x100,  -1,  0,  0,  -230); -- オーラ
setEffScaleKey( 30, aura, 2.3, 2.3);

setShakeChara( 30, 0, 19, 10);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 50, 0, 320); -- ズズンッ
setEffRotateKey(30,ct,355);
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.5, 2.5);
playSe( 30, SE_02);

--changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

ki3=entryEffectLife(71,1503, 98, 0x80,  -1,  0,  0,  0);   -- eff_004 (気)-- eff_002溜めエフェクト1キャラ後用
setEffMoveKey(71,ki3,0,0,0);
setEffScaleKey(71,ki3,1.0,1.0);
setEffRotateKey(71,ki3,0);
setEffAlphaKey(71,ki3,255);

setEffMoveKey(169,ki3,0,0,0);
setEffScaleKey(169,ki3,1.0,1.0);
setEffRotateKey(169,ki3,0);
setEffAlphaKey(169,ki3,255);

ki4= entryEffectLife(71,1502, 98, 0, -1,  0,  0,  0);   -- eff_003 (気)-- eff_001溜めエフェクト1キャラ前用
setEffMoveKey(71,ki4,0,0,0);
setEffScaleKey(71,ki4,1.0,1.0);
setEffRotateKey(71,ki4,0);
setEffAlphaKey(71,ki4,255);

setEffMoveKey(169,ki4,0,0,0);
setEffScaleKey(169,ki4,1.0,1.0);
setEffRotateKey(169,ki4,0);
setEffAlphaKey(169,ki4,255);

-- ** エフェクト等 ** --
aura = entryEffectLife(  71,  311, 98, 0x100,  -1,  0,  0,  -230); -- オーラ
setEffScaleKey( 71, aura, 2.3, 2.3);

setShakeChara( 71, 0, 98, 10);

--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( 80, SE_04);

setScaleKey( 168,   0, 1.5, 1.5);
setMoveKey(   169,   0,    0, -58,   0);
setDisp(169,0,0);

setMoveKey(   170,   0,    0, -800,   0);

------------------------------------------------------
-- カットイン(170-254F)
------------------------------------------------------
spep_1 = 170;
entryFade( spep_1-10, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景

playSe( spep_1, SE_05);
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchuserush = entryEffectLife( spep_1+1, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_1+1, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_1+1, shuchuserush, 1.2, 1.2);
setEffAlphaKey( spep_1+1, shuchuserush, 255);
setEffRotateKey( spep_1+1, shuchuserush, 0);

------------------------------------------------------
-- 毒出し(254〜318)
------------------------------------------------------
spep_2 = spep_1+87;
entryFade( spep_2-10, 5, 15, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+5, 0, 65, 0, 10, 10, 10, 160);       -- ベース暗め　背景

playSe(spep_2,19);

tosshin = entryEffectLife(spep_2,   150532, 64,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey( spep_2, tosshin, 0, 0, 0);
setEffScaleKey( spep_2, tosshin, 1.0, 1.0);
setEffAlphaKey( spep_2, tosshin, 255);
setEffRotateKey( spep_2, tosshin, 0);

setEffMoveKey( spep_2+63, tosshin, 0, 0, 0);
setEffScaleKey( spep_2+63, tosshin, 1.0, 1.0);
setEffRotateKey( spep_2+63, tosshin, 0);
setEffAlphaKey( spep_2+63, tosshin, 255);

setEffMoveKey( spep_2+64, tosshin, 0, 0, 0);
setEffScaleKey( spep_2+64, tosshin, 1.0, 1.0);
setEffRotateKey( spep_2+64, tosshin, 0);
setEffAlphaKey( spep_2+64, tosshin, 0);

------------------------------------------------------
-- ビンタ叩き落とし(188F) -455 white (324〜512)
------------------------------------------------------
spep_3 = spep_2+65;
entryFade( spep_3-5, 3, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 188, 0, 10, 10, 10, 220);          -- ベース暗め　背景

tosshinushiro = entryEffect(  spep_3,   150533,   0x80,     -1,  0,  0,  0);--導入
setEffMoveKey( spep_3, tosshinushiro, 0, 0, 0);
setEffScaleKey( spep_3, tosshinushiro, 1.0, 1.0);
setEffAlphaKey( spep_3, tosshinushiro, 0);
setEffRotateKey( spep_3, tosshinushiro, 0);


tosshin = entryEffect(  spep_3,   150533,   0x100,     -1,  0,  0,  0);--導入
setEffMoveKey( spep_3, tosshin, 0, 0, 0);
setEffScaleKey( spep_3, tosshin, 1.0, 1.0);
setEffAlphaKey( spep_3, tosshin, 255);
setEffRotateKey( spep_3, tosshin, 0);


playSe(spep_3,1018);

changeAnime(spep_3+19,1,101);
setDisp(spep_3+19,1,1);
setMoveKey(spep_3+19,1, 600, 0, 0);
setScaleKey(spep_3+19, 1, 1.5, 1.5);
setRotateKey( spep_3+19, 1, 0);

shuchusedash = entryEffectLife( spep_3, 920, 60, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_3, shuchusedash, 0, 0, 0);
setEffScaleKey( spep_3, shuchusedash, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusedash, 255);
setEffRotateKey( spep_3, shuchusedash, 0);

--entryFade( spep_3+129, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 363; --エンドフェイズのフレーム数を置き換える　--spep_3+47 

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

--
setMoveKey(spep_3+43,1, 227, 0, 0);
setScaleKey(spep_3+43, 1, 1.5, 1.5);
setRotateKey( spep_3+43, 1, 0);

setMoveKey(SP_dodge+11,1, 227, 0, 0);
setScaleKey(SP_dodge+11, 1, 1.5, 1.5);
setRotateKey(SP_dodge+11, 1, 0);
--

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setMoveKey( SP_dodge+8, 0,    0, -54,   0);
--setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end
---------------------------------------------------------
-- 回避されていない場合　--spep_3+42以降
---------------------------------------------------------

shuchuserush = entryEffectLife( spep_3+50, 906, 94, 0x80,  -1, 0,  0,  0);   -- 集中線 -374
setEffMoveKey(spep_3+50, shuchuserush, 0, 0, 0);
setEffScaleKey( spep_3+50, shuchuserush, 1.5, 1.5);
setEffAlphaKey( spep_3+50, shuchuserush, 255);
setEffRotateKey( spep_3+50, shuchuserush, 0);

ryusentosshinn = entryEffectLife( spep_3+144, 921, 44, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey(spep_3+145, ryusentosshinn, 0, 0, 0);
setEffRotateKey( spep_3+145, ryusentosshinn, 235);
setEffScaleKey( spep_3+145, ryusentosshinn, 1.8, 1.8);
setEffAlphaKey( spep_3+145, ryusentosshinn, 255);

setMoveKey(spep_3+50,1, 130, 0, 0); --374
setScaleKey(spep_3+50,1, 1.5, 1.5);
setRotateKey( spep_3+50, 1, 0);

changeAnime(spep_3+61,1,108); --385
setMoveKey(spep_3+63,1, 170, 0, 0);
setScaleKey(spep_3+63,1, 1.5, 1.5);
setRotateKey( spep_3+63, 1, 0);

setMoveKey(spep_3+65,1, 135, 0, 0); --389
setScaleKey(spep_3+65,1, 1.5, 1.5);
setRotateKey( spep_3+65, 1, 0);

setShakeChara(spep_3+61,1,15,20);

setMoveKey(spep_3+77,1, 135, -50, 0); --401
setScaleKey(spep_3+77,1, 1.5, 1.5);
setRotateKey( spep_3+77, 1, 0);

setShakeChara(spep_3+78,1,7,20);

setMoveKey(spep_3+86,1, 135, -50, 0); --401
setMoveKey(spep_3+87,1, 132, -30, 0); --401
setScaleKey(spep_3+87,1, 1.5, 1.5);
setRotateKey( spep_3+87, 1, 0);

--[[
setMoveKey(spep_3+88,1, 130, -150, 0); --412
setScaleKey(spep_3+88,1, 1.5, 1.5);
setRotateKey( spep_3+88, 1, 0);
]]--

setMoveKey(spep_3+89,1, 130, 0, 0); --413
setScaleKey(spep_3+89,1, 1.5, 1.5);
setRotateKey( spep_3+89, 1, 0);

setEffAlphaKey( spep_3+123, tosshinushiro, 0);
setEffAlphaKey( spep_3+124, tosshin, 255);
setEffAlphaKey( spep_3+124, tosshinushiro, 255);
setEffAlphaKey( spep_3+125, tosshin, 0);

setShakeChara(spep_3+90,1,25,20);


changeAnime(spep_3+118,1,106); --442

setMoveKey(spep_3+144,1, 130, 0, 0); --
setScaleKey(spep_3+144,1, 1.5, 1.5);
setRotateKey( spep_3+144, 1, 0);

setMoveKey(spep_3+146,1, 130, 0, 0); --468
setScaleKey(spep_3+146,1, 1.5, 1.5);
setRotateKey( spep_3+146, 1, 0);

setEffAlphaKey( spep_3+145, tosshin, 0);
setEffAlphaKey( spep_3+146, tosshin, 255);

changeAnime(spep_3+147,1,107);  --470
setMoveKey(spep_3+147,1, 0, -250, 0); --469
setScaleKey(spep_3+147,1, 1.0, 1.0);
setRotateKey( spep_3+147, 1, 0);

playSe(spep_3+147,1024);

setMoveKey(spep_3+186,1, 600, -1200, 0); --490
setScaleKey(spep_3+186,1, 1.5, 1.5);
setRotateKey( spep_3+186, 1, 0);

playSe(spep_3+51,1001);
playSe(spep_3+69,1001);
playSe(spep_3+79,1001);
playSe(spep_3+91,1001);
playSe(spep_3+101,1001);
playSe(spep_3+117,1009);

------------------------------------------------------
-- かめはめ波溜め(100F)
------------------------------------------------------
spep_4 = spep_3+188;

--entryFade( spep_4-5, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_4, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_9=spep_4; --410 469

entryFade( spep_9-7, 5, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 0, 0, 255, 255, 255, 255);          -- ベース暗め　背景

setMoveKey(  spep_9-1,   1, 130,  -150,   0);

--470
setDisp( spep_9-1, 1, 1);
setMoveKey(  spep_9-1,    1,  100,  0,   0);
setScaleKey( spep_9-1,    1,  1.0, 1.0);

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
setEffRotateKey( spep_9+15, ct, 40);
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
shuchusen6 = entryEffectLife( spep_9+15, 911, 65, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9+15, shuchusen6, 1.5, 1.5);
setEffAlphaKey( spep_9+15, shuchusen6, 255);

shuchusen = entryEffectLife( spep_9+15, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);

end
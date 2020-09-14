

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+50;

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

--SP_01 = 109041;--溜め 未使用
SP_02 = 150194; --発射
SP_02em = 150194; --発射

SP_03 = 150195; --ドーナツ巻きつく前面
SP_04 = 150196; --ドーナツ巻きつく後面
SP_05 = 150197; --バレーパス
SP_06 = 150199; --バレートス
SP_07 = 150200; --バレーアタック
SP_08 = 1572; --爆発〜クレーター

SP_05em = 150198; --バレーパス
SP_07em = 150201; --バレーアタック

SP_09 = 150202;
SP_09em = 150203;

SP_10 = 150204;
SP_10em = 150205;

SP_11 = 150206;

multi_frm = 2;

changeAnime( 0, 0, 30);                       -- 立ち
setDisp( 0, 1, 0);

--setMoveKey(   0,   0,    0, -1000,   0);
--setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.7, 1.7);
setScaleKey(   1,   0, 1.7, 1.7);

SP_start =-69
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- 突撃( 100F)
------------------------------------------------------
setVisibleUI( 0, 0);

setBgScroll(0,100);

setRotateKey( 0, 0, -25); 
setScaleKey( 0,   0, 1.7, 1.7);
changeAnime( 0, 0, 3); 
--changeAnime( 0, 0, 3); 

setDisp( 0, 0, 1);

setAnimeLoop(0, 0, 1);
setAnimeLoop(0, 1, 1);

shuchusen1 = entryEffectLife( 0, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen1, 1.5, 1.5);
setEffAlphaKey( 0, shuchusen1, 255);


--P移動
setMoveKey(  0,    0,   -600,  -150,   0);

speff = entryEffect( 10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( 10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff, 4, 5);                           -- セリフ差し替え

setMoveKey(  35,    0,   0,  -46,   0);--72
setBgScroll(35,0);

playSe( 0, 1018);

--setDisp( spep_4, 0, 0);

--spep_7=+30;

-- 書き文字エントリー
ct = entryEffectLife(  10, 190006, 89, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴゴ
setEffShake( 10, ct, 40, 8);
setEffScaleKey( 10, ct, 0.8, 0.8);


--playSe( 25+30, SE_07);
setScaleKey( 45+30,   0, 1.7, 1.7);

-- ** エフェクト等 ** --
entryFadeBg( 0, 0, 175, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260

sen2 = entryEffectLife( 0, 921, 175, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 0, sen2, 130);
setEffScaleKey( 0, sen2, 1.8, 1.8);

setShakeChara( 0, 0, 230, 15);

-- 書き文字エントリー
--[[
ct = entryEffectLife( 33+30, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( 33+30, ct, 32, 5);
setEffAlphaKey( 33+30, ct, 255);
setEffAlphaKey( 55+30, ct, 255);
setEffAlphaKey( 65+30, ct, 0);
setEffScaleKey( 33+30, ct, 0.0, 0.0);
setEffScaleKey( 37+30, ct, 1.3, 1.3);
setEffScaleKey( 57+30, ct, 1.3, 1.3);
setEffScaleKey( 65+30, ct, 6.0, 6.0);
--playSe( 65+30, SE_07);
--]]


entryFade( 95, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setScaleKey( 105+1,   0, 1.7, 1.7);
setDisp( 100, 0, 0);--295


kamehame_beam = entryEffect( 95+10, SP_02,   0x100,   0,  300,  0,  0);   --  伸びるかめはめ波
--kamehame_beam = entryEffect( 105+35, SP_02,   0x40,   0,  300,  150,  100);   --  伸びるかめはめ波

setEffScaleKey( 95+10, kamehame_beam, 1.0, 1.0);
setEffAlphaKey( 95+10, kamehame_beam, 255);
--setEffScaleKey( 105+25, kamehame_beam, 1.0, 1.0);
--setEffAlphaKey( 105+25, kamehame_beam, 255);


playSe( 95+10, SE_07);

--changeAnime( 99, 0, 19); 
--changeAnime( 99, 0, 19); 
--changeAnime( 95+12, 0, 19); 
--注意：モーションが違う

setMoveKey(  95+10,    0,   0,  -46,   0);
setMoveKey(  95+15,    0,   0,  -46,   0);
setMoveKey(  95+30,    0,   -150,  -92,   0);

setMoveKey(  95+35+5,    0,   -150,  -92,   0);

entryFade( 95+35+10-5, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
removeAllEffect(95+35+5+6);
setDisp( 95+35+15+6, 0, 0);--295

--spep_6=spep_4+125+10+20;--spep_4=415

spep_2=95+35+15;
setScaleKey( spep_2,   0, 1.7, 1.7);


------------------------------------------------------
-- ドーナツ迫る(100F)
------------------------------------------------------


-- ** エフェクト等 ** --
setShakeChara( spep_2, 1, 99, 20);

entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 180);          -- ベース暗め　背景

setDisp( spep_2, 0, 0);
setDisp( spep_2, 1, 1);
changeAnime( spep_2, 1, 104);                        -- ガード
setMoveKey( spep_2-1,    1,  0,  0,   0);
setMoveKey( spep_2,    1,  0,  0,   0);
setMoveKey( spep_2+1,    1,  0,  0,   0);
setScaleKey( spep_2-1,    1,  1.5, 1.5);
setScaleKey( spep_2,    1,  1.5, 1.5);
setRotateKey( spep_2 , 1 , 20);

setMoveKey( spep_2+24,    1,   0,  0,   0);
setScaleKey( spep_2+24,   1,   1.6,  1.6);

sen2 = entryEffectLife( spep_2, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_2, sen2, -70);
setEffScaleKey( spep_2, sen2, 1.6, 1.6);

gurumae = entryEffectLife( spep_2, SP_03, 60 ,  0x100 , 1,  0,  0,  -100);--ドーナツ前
gurugo = entryEffectLife( spep_2, SP_04, 60 ,  0x80 , 1,  0,  0,  -100);--ドーナツ後
--gurumae = entryEffectLife( spep_2, SP_03, 80 ,  0x100 , 1,  0,  0,  -100);--ドーナツ前
--gurugo = entryEffectLife( spep_2, SP_04, 80 ,  0x80 , 1,  0,  0,  -100);--ドーナツ後

setEffAlphaKey( spep_2, gurumae, 255);
setEffAlphaKey( spep_2, gurugo, 255);

--spep_3=40;

entryFade( spep_2+ 45, 6,  8, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade--spep_3+422
setEffAlphaKey( spep_2+51, gurumae, 255);
setEffAlphaKey( spep_2+51, gurugo, 255);
setDisp( spep_2+51, 1, 0);


--setEffAlphaKey( spep_2+84-chousei, gurumae, 0);
--setEffAlphaKey( spep_2+84-chousei, gurugo, 0);


-- 書き文字エントリー
ct = entryEffectLife( spep_2, 10014, 85, 0, -1, 0, 0, -185); -- ズドドドッ
--ct = entryEffectLife( spep_2+ 28, 10007, 65, 0, -1, 0, -100, 255); -- ギュンッ
setEffShake( spep_2, ct, 99, 40);
setEffScaleKey( spep_2, ct, 2.8, 2.8);
setEffRotateKey( spep_2, ct, 45);
--setEffAlphaKey( SP_start+415, ct, 155);
setEffAlphaKey( spep_2, ct, 255);
setEffAlphaKey( spep_2+47, ct, 0);

playSe( spep_2+ 28, 1017);


setMoveKey( spep_2+  51,    1,   0,  0,   0);
setScaleKey( spep_2+  55,   1,   1.6,  1.6);

spep_3=spep_2+59;--

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 190; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setMoveKey(  spep_3,    0,      0,  0,   0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_3+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--playSe( spep_3+64, SE_06);

spep_4=spep_3+85+2; --211 260

------------------------------------------------------
-- バレーパスボールに突っ込んでくる箇所
------------------------------------------------------

playSe( spep_4+5, 1018);

setDisp( spep_4-1, 0, 0);

bollpasu = entryEffect( spep_4, SP_05,  0x100,  -1,  0,  0,  0);               -- ボールパスまでの一連の流れ
--setEffAlphaKey( spep_4, bollpasu, 255);

setShake(spep_4,100, 15);

--playSe( spep_4+30, 1018);

--[[
changeAnime( spep_4+26, 0,  116); -- タックル開始
setScaleKey( spep_4+26,    0,  1.0, 1.0);

setMoveKey( spep_4+46, 1,  120, -50,   0);

setMoveKey( spep_4+50, 0,  -250, 250,   80);
setMoveKey( spep_4+55, 0,  -250, 250,   60);
setMoveKey( spep_4+60, 0,  -350, 450,   0);
setMoveKey( spep_4+70, 0,  -200, 200,   -180);
--]]
-- ** エフェクト等 ** --
entryFadeBg( spep_4-14, 0, 114, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260

sen2 = entryEffectLife( spep_4-14, 921, 114, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_4-14, sen2, -130);
setEffScaleKey( spep_4-14, sen2, 1.6, 1.6);

setEffRotateKey( spep_4+27, sen2, -130);
setEffRotateKey( spep_4+28, sen2, -210);

--setEffRotateKey( spep_4+47, sen2, -130);
--setEffRotateKey( spep_4+48, sen2, -210);
playSe( spep_4+18, 1009);

--hit1 = entryEffect(  spep_4+73-chousei,   3,   0,  1,   0,  -130,  0);
--setEffScaleKey( spep_4+73-chousei, hit1, 2.6, 2.6);

entryFade( spep_4+53, 10,  7, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setScaleKey( spep_4+53+11,   0, 1.7, 1.7);
removeAllEffect( spep_4+53+11);


--spep_6=spep_4+125+10+20;--spep_4=415

spep_7=spep_4+68;--spep_4=415
------------------------------------------------------
-- バレートス
------------------------------------------------------

playSe( spep_7, 1053);
setShake( spep_7,90, 10);

bolltosu = entryEffect( spep_7, SP_06,  0x100,  -1,  0,  0,  0);               -- ボールトスまでの一連の流れ


sen2 = entryEffectLife( spep_7, 921, 64, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_7-10, sen2, 60);
setEffScaleKey( spep_7-10, sen2, 1.6, 1.6);

entryFadeBg( spep_7-10, 0, 99, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260

shuchusen8 = entryEffectLife( spep_7+25, 906, 34, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7+25, shuchusen8, 1.5, 1.5);
playSe( spep_7+25, 1000);

entryFade( spep_7+48, 10,  7, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

spep_6=spep_7+63+5;--spep_4=415


------------------------------------------------------
-- バレーアターック
------------------------------------------------------

playSe( spep_6+10, 1053);
setShake( spep_6,92, 20);

ryusen = entryEffectLife( spep_6-7, 921, 92, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_6-7, ryusen, 90);
setEffScaleKey( spep_6-7, ryusen, 1.6, 1.6);
setMoveKey( spep_6+70,    0,  0,  0,   0);

setEffRotateKey( spep_6+48, ryusen, 90);
setEffRotateKey( spep_6+49, ryusen, 45);
--setEffRotateKey( spep_6+59, ryusen, -130);
playSe( spep_6+63, 1052);

--changeAnime( spep_6+80, 0, 31);                                    -- かめはめ発射ポーズ

kamehame_beam3 = entryEffect( spep_6, SP_07,   0x80, -1, 0,  0,  0);   -- アターック
setDamage( spep_6+82, 1, 0);  -- ダメージ振動等


-- ** エフェクト等 ** --

entryFadeBg( spep_6-7, 0, 99, 0,10, 10, 10, 180);          -- ベース暗め　背景

-- 書き文字エントリー

--[[
ct = entryEffectLife( spep_6-5, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake( SP_start+spep_6-5, ct, 99, 20);
setEffScaleKey( spep_6-5, ct, 3, 3);
setEffRotateKey( SP_start+spep_6-5, ct, 70);
setEffAlphaKey( SP_start+spep_6-5, ct, 255);
setEffAlphaKey( SP_start+spep_6+35, ct, 255);
setEffAlphaKey( SP_start+spep_6+40, ct, 0);
--]]

entryFade( spep_6+60, 26,  10, 4, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

spep_5=spep_6+95; --410 469
spep_8=spep_5+94;
--spep_9=spep_8+214;
spep_9=spep_8+214-189;
------------------------------------------------------
-- 爆発 (100F)
------------------------------------------------------

bakuhatu = entryEffect( spep_5,SP_09,0,-1,0,0,0);
setEffScaleKey( spep_5, bakuhatu, 1.1, 1.1);

setDisp( spep_5, 1, 0);
playSe( spep_5, 1042);
--playSe( spep_5+49, 1057);

--playSe( spep_5+20, 1053);
playSe( spep_5+59, SE_10);
--playSe( spep_8+10, SE_10);

-- 書き文字エントリー

--ここエフェクトになる可能性あり
--changeAnime( 0, 0, 3); 
--setDisp( spep_5, 0, 0);

setMoveKey(  spep_5, 0, 0, 0, 0);
setMoveKey(  spep_5+1, 0, -1000, 0, 0);




--ここから違う変数を仕込む


-----------------------------------------
--発射と着弾（47*2f 57*2）
-----------------------------------------

entryFade( spep_8, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 100, 0,0, 0, 0, 255);          -- ベース暗め　背景

daihassya = entryEffect( spep_8+10,SP_10,0,-1,0,0,0);
setEffScaleKey( spep_8+10, daihassya, 1.0, 1.0);

--[[
playSe( spep_8+10, SE_10);
playSe( spep_8+30, SE_10);
playSe( spep_8+50, SE_10);
]]
--4.11調整
SE001 = playSe( spep_8+10, SE_10);
stopSe(spep_8+40,SE001,5);
SE002 = playSe( spep_8+30, SE_10);
stopSe(spep_8+60,SE002,5);
SE003 = playSe( spep_8+50, SE_10);

ryusendai = entryEffectLife( spep_8+10, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_8+10, ryusendai, 225);
--setEffRotateKey( spep_8+10, ryusendai, 45);
setEffScaleKey( spep_8+10, ryusendai, 1.6, 1.6);

-- 書き文字エントリー
ct2 = entryEffectLife( spep_8+20, 10012, 39, 0x100, -1, 0, 10, 300);    -- ズオッ
setEffShake(spep_8+20, ct2, 40, 28);
setEffScaleKey(spep_8+20, ct2, 2.4, 2.4);
setEffRotateKey( spep_8+20, ct2, 20);

entryFade( spep_8+94, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8+94, 0, 200, 0,0, 0, 0, 255);          -- ベース暗め　背景

chakudan = entryEffect( spep_8+94,SP_11,0,-1,0,0,0);
setEffScaleKey( spep_8+94, chakudan, 1.0, 1.0);
setEffAlphaKey( spep_8+94, chakudan, 255);



--playSe( spep_5+9, 1023);
--[[
playSe( spep_9+29, SE_09);
playSe( spep_9+59, SE_09);

playSe( spep_9+89, SE_10);
]]
--4.11
SE004 = playSe( spep_9+29, SE_09);
stopSe(spep_9+69,SE004,5);
SE005 = playSe( spep_9+59, SE_09);
stopSe(spep_9+99,SE005,5);
SE006 = playSe( spep_9+89, SE_10);

setDamage( spep_9+75, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage(spep_9+75);
setMoveKey(  spep_9+75, 0, -1000, 0, 0);
--setMoveKey(  spep_end+75, 0, 0, 0, 0);

shuchusen3 = entryEffectLife( spep_9+2, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

entryFade( spep_9+159, 9,  10, 1, 8, 8, 8, 255);             -- black fade
setEffAlphaKey( spep_9+155, chakudan, 150);
setEffAlphaKey( spep_9+159, chakudan, 0);
entryFadeBg( spep_9+159, 0, 99, 0,10, 10, 10, 180);          -- ベース暗め　背景

endPhase(spep_9+169);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------

------------------------------------------------------
-- 突撃( 100F)
------------------------------------------------------
setVisibleUI( 0, 0);

setBgScroll(0,100);

setRotateKey( 0, 0, -25); 
setScaleKey( 0,   0, 1.7, 1.7);
changeAnime( 0, 0, 3); 
--changeAnime( 0, 0, 3); 

setDisp( 0, 0, 1);

setAnimeLoop(0, 0, 1);
setAnimeLoop(0, 1, 1);

shuchusen1 = entryEffectLife( 0, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen1, 1.5, 1.5);
setEffAlphaKey( 0, shuchusen1, 255);

--P移動
setMoveKey(  0,    0,   -600,  -150,   0);

--[[

speff = entryEffect( 10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( 10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff, 4, 5);                           -- セリフ差し替え
]]
setMoveKey(  35,    0,   0,  -46,   0);--72
setBgScroll(35,0);

playSe( 0, 1018);

--setDisp( spep_4, 0, 0);

--spep_7=+30;

-- 書き文字エントリー
ct = entryEffectLife(  10, 190006, 89, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴゴ
setEffShake( 10, ct, 40, 8);
setEffScaleKey( 10, ct, -0.8, 0.8);


--playSe( 25+30, SE_07);
setScaleKey( 45+30,   0, 1.7, 1.7);

-- ** エフェクト等 ** --
entryFadeBg( 0, 0, 175, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260

sen2 = entryEffectLife( 0, 921, 175, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 0, sen2, 130);
setEffScaleKey( 0, sen2, 1.8, 1.8);

setShakeChara( 0, 0, 230, 15);

-- 書き文字エントリー
--[[
ct = entryEffectLife( 33+30, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( 33+30, ct, 32, 5);
setEffAlphaKey( 33+30, ct, 255);
setEffAlphaKey( 55+30, ct, 255);
setEffAlphaKey( 65+30, ct, 0);
setEffScaleKey( 33+30, ct, 0.0, 0.0);
setEffScaleKey( 37+30, ct, 1.3, 1.3);
setEffScaleKey( 57+30, ct, 1.3, 1.3);
setEffScaleKey( 65+30, ct, 6.0, 6.0);
--playSe( 65+30, SE_07);
--]]


entryFade( 95, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setScaleKey( 105+1,   0, 1.7, 1.7);
setDisp( 100, 0, 0);--295


kamehame_beam = entryEffect( 95+10, SP_02em,   0x100,   0,  300,  0,  0);   --  伸びるかめはめ波
--kamehame_beam = entryEffect( 105+35, SP_02,   0x40,   0,  300,  150,  100);   --  伸びるかめはめ波

setEffScaleKey( 95+10, kamehame_beam, 1.0, 1.0);
setEffAlphaKey( 95+10, kamehame_beam, 255);
--setEffScaleKey( 105+25, kamehame_beam, 1.0, 1.0);
--setEffAlphaKey( 105+25, kamehame_beam, 255);


playSe( 95+10, SE_07);

--changeAnime( 99, 0, 19); 
--changeAnime( 99, 0, 19); 
--changeAnime( 95+12, 0, 19); 
--注意：モーションが違う

setMoveKey(  95+10,    0,   0,  -46,   0);
setMoveKey(  95+15,    0,   0,  -46,   0);
setMoveKey(  95+30,    0,   -150,  -92,   0);

setMoveKey(  95+35+5,    0,   -150,  -92,   0);

entryFade( 95+35+10-5, 4,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
removeAllEffect(95+35+5+6);
setDisp( 95+35+15+6, 0, 0);--295

--spep_6=spep_4+125+10+20;--spep_4=415

spep_2=95+35+15;
setScaleKey( spep_2,   0, 1.7, 1.7);


------------------------------------------------------
-- ドーナツ迫る(100F)
------------------------------------------------------


-- ** エフェクト等 ** --
setShakeChara( spep_2, 1, 99, 20);

entryFadeBg( spep_2, 0, 90, 0, 10, 10, 10, 180);          -- ベース暗め　背景

setDisp( spep_2, 0, 0);
setDisp( spep_2, 1, 1);
changeAnime( spep_2, 1, 104);                        -- ガード
setMoveKey( spep_2-1,    1,  0,  0,   0);
setMoveKey( spep_2,    1,  0,  0,   0);
setMoveKey( spep_2+1,    1,  0,  0,   0);
setScaleKey( spep_2-1,    1,  1.5, 1.5);
setScaleKey( spep_2,    1,  1.5, 1.5);
setRotateKey( spep_2 , 1 , 20);

setMoveKey( spep_2+24,    1,   0,  0,   0);
setScaleKey( spep_2+24,   1,   1.6,  1.6);

sen2 = entryEffectLife( spep_2, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_2, sen2, -70);
setEffScaleKey( spep_2, sen2, 1.6, 1.6);

gurumae = entryEffectLife( spep_2, SP_03, 60 ,  0x100 , 1,  0,  0,  -100);--ドーナツ前
gurugo = entryEffectLife( spep_2, SP_04, 60 ,  0x80 , 1,  0,  0,  -100);--ドーナツ後
--gurumae = entryEffectLife( spep_2, SP_03, 80 ,  0x100 , 1,  0,  0,  -100);--ドーナツ前
--gurugo = entryEffectLife( spep_2, SP_04, 80 ,  0x80 , 1,  0,  0,  -100);--ドーナツ後

setEffAlphaKey( spep_2, gurumae, 255);
setEffAlphaKey( spep_2, gurugo, 255);

--spep_3=40;

entryFade( spep_2+ 45, 6,  8, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade--spep_3+422
setEffAlphaKey( spep_2+51, gurumae, 255);
setEffAlphaKey( spep_2+51, gurugo, 255);
setDisp( spep_2+51, 1, 0);


--setEffAlphaKey( spep_2+84-chousei, gurumae, 0);
--setEffAlphaKey( spep_2+84-chousei, gurugo, 0);


-- 書き文字エントリー
ct = entryEffectLife( spep_2, 10014, 85, 0, -1, 0, 0, -185); -- ズドドドッ
--ct = entryEffectLife( spep_2+ 28, 10007, 65, 0, -1, 0, -100, 255); -- ギュンッ
setEffShake( spep_2, ct, 99, 40);
setEffScaleKey( spep_2, ct, 2.8, 2.8);
setEffRotateKey( spep_2, ct, -20);
--setEffAlphaKey( SP_start+415, ct, 155);
setEffAlphaKey( spep_2, ct, 255);
setEffAlphaKey( spep_2+47, ct, 0);

playSe( spep_2+ 28, 1017);


setMoveKey( spep_2+  51,    1,   0,  0,   0);
setScaleKey( spep_2+  55,   1,   1.6,  1.6);

spep_3=spep_2+59;--

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 190; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setMoveKey(  spep_3,    0,      0,  0,   0);

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_3+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--playSe( spep_3+64, SE_06);

spep_4=spep_3+85+2; --211 260

------------------------------------------------------
-- バレーパスボールに突っ込んでくる箇所
------------------------------------------------------

playSe( spep_4+5, 1018);

setDisp( spep_4-1, 0, 0);

bollpasu = entryEffect( spep_4, SP_05em,  0x100,  -1,  0,  0,  0);               -- ボールパスまでの一連の流れ
--setEffAlphaKey( spep_4, bollpasu, 255);

setShake(spep_4,100, 15);

--playSe( spep_4+30, 1018);

--[[
changeAnime( spep_4+26, 0,  116); -- タックル開始
setScaleKey( spep_4+26,    0,  1.0, 1.0);

setMoveKey( spep_4+46, 1,  120, -50,   0);

setMoveKey( spep_4+50, 0,  -250, 250,   80);
setMoveKey( spep_4+55, 0,  -250, 250,   60);
setMoveKey( spep_4+60, 0,  -350, 450,   0);
setMoveKey( spep_4+70, 0,  -200, 200,   -180);
--]]
-- ** エフェクト等 ** --
entryFadeBg( spep_4-14, 0, 114, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260

sen2 = entryEffectLife( spep_4-14, 921, 114, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_4-14, sen2, -130);
setEffScaleKey( spep_4-14, sen2, 1.6, 1.6);

setEffRotateKey( spep_4+27, sen2, -130);
setEffRotateKey( spep_4+28, sen2, -210);

--setEffRotateKey( spep_4+47, sen2, -130);
--setEffRotateKey( spep_4+48, sen2, -210);
playSe( spep_4+18, 1009);

--hit1 = entryEffect(  spep_4+73-chousei,   3,   0,  1,   0,  -130,  0);
--setEffScaleKey( spep_4+73-chousei, hit1, 2.6, 2.6);

entryFade( spep_4+53, 10,  7, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355
setScaleKey( spep_4+53+11,   0, 1.7, 1.7);
removeAllEffect( spep_4+53+11);


--spep_6=spep_4+125+10+20;--spep_4=415

spep_7=spep_4+68;--spep_4=415
------------------------------------------------------
-- バレートス
------------------------------------------------------

playSe( spep_7, 1053);
setShake( spep_7,90, 10);

bolltosu = entryEffect( spep_7, SP_06,  0x100,  -1,  0,  0,  0);               -- ボールトスまでの一連の流れ


sen2 = entryEffectLife( spep_7, 921, 64, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_7-10, sen2, 60);
setEffScaleKey( spep_7-10, sen2, 1.6, 1.6);

entryFadeBg( spep_7-10, 0, 99, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260

shuchusen8 = entryEffectLife( spep_7+25, 906, 34, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7+25, shuchusen8, 1.5, 1.5);
playSe( spep_7+25, 1000);

entryFade( spep_7+48, 10,  7, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

spep_6=spep_7+63+5;--spep_4=415


------------------------------------------------------
-- バレーアターック
------------------------------------------------------

playSe( spep_6, 1053);
setShake( spep_6,92, 20);

ryusen = entryEffectLife( spep_6-7, 921, 92, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_6-7, ryusen, 90);
setEffScaleKey( spep_6-7, ryusen, 1.6, 1.6);
setMoveKey( spep_6+70,    0,  0,  0,   0);

setEffRotateKey( spep_6+48, ryusen, 90);
setEffRotateKey( spep_6+49, ryusen, 45);
--setEffRotateKey( spep_6+59, ryusen, -130);
playSe( spep_6+63, 1052);

--changeAnime( spep_6+80, 0, 31);                                    -- かめはめ発射ポーズ

kamehame_beam3 = entryEffect( spep_6, SP_07em,   0x80, -1, 0,  0,  0);   -- アターック
setDamage( spep_6+82, 1, 0);  -- ダメージ振動等


-- ** エフェクト等 ** --

entryFadeBg( spep_6-7, 0, 99, 0,10, 10, 10, 180);          -- ベース暗め　背景

-- 書き文字エントリー

--[[
ct = entryEffectLife( spep_6-5, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake( SP_start+spep_6-5, ct, 99, 20);
setEffScaleKey( spep_6-5, ct, 3, 3);
setEffRotateKey( SP_start+spep_6-5, ct, 70);
setEffAlphaKey( SP_start+spep_6-5, ct, 255);
setEffAlphaKey( SP_start+spep_6+35, ct, 255);
setEffAlphaKey( SP_start+spep_6+40, ct, 0);
--]]

entryFade( spep_6+60, 26,  10, 4, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

spep_5=spep_6+95; --410 469
spep_8=spep_5+94;
--spep_9=spep_8+214;
spep_9=spep_8+214-189;
------------------------------------------------------
-- 爆発 (100F)
------------------------------------------------------

bakuhatu = entryEffect( spep_5,SP_09em,0,-1,0,0,0);
setEffScaleKey( spep_5, bakuhatu, 1.1, 1.1);

setDisp( spep_5, 1, 0);
playSe( spep_5, 1042);
--playSe( spep_5+49, 1057);

--playSe( spep_5+20, 1053);
playSe( spep_5+59, SE_10);
--playSe( spep_8+10, SE_10);

-- 書き文字エントリー

--ここエフェクトになる可能性あり
--changeAnime( 0, 0, 3); 
--setDisp( spep_5, 0, 0);

setMoveKey(  spep_5, 0, 0, 0, 0);
setMoveKey(  spep_5+1, 0, -1000, 0, 0);




--ここから違う変数を仕込む


-----------------------------------------
--発射と着弾（47*2f 57*2）
-----------------------------------------

entryFade( spep_8, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 100, 0,0, 0, 0, 255);          -- ベース暗め　背景

daihassya = entryEffect( spep_8+10,SP_10em,0,-1,0,0,0);
setEffScaleKey( spep_8+10, daihassya, 1.0, 1.0);
--[[
playSe( spep_8+10, SE_10);
playSe( spep_8+30, SE_10);
playSe( spep_8+50, SE_10);
]]
--4.11調整
SE001 = playSe( spep_8+10, SE_10);
stopSe(spep_8+40,SE001,5);
SE002 = playSe( spep_8+30, SE_10);
stopSe(spep_8+60,SE002,5);
SE003 = playSe( spep_8+50, SE_10);

ryusendai = entryEffectLife( spep_8+10, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_8+10, ryusendai, 225);
--setEffRotateKey( spep_8+10, ryusendai, 45);
setEffScaleKey( spep_8+10, ryusendai, 1.6, 1.6);

-- 書き文字エントリー
ct2 = entryEffectLife( spep_8+20, 10012, 39, 0x100, -1, 0, 10, 300);    -- ズオッ
setEffShake(spep_8+20, ct2, 40, 28);
setEffScaleKey(spep_8+20, ct2, 2.4, 2.4);
setEffRotateKey( spep_8+20, ct2, 20);

entryFade( spep_8+94, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8+94, 0, 200, 0,0, 0, 0, 255);          -- ベース暗め　背景

chakudan = entryEffect( spep_8+94,SP_11,0,-1,0,0,0);
setEffScaleKey( spep_8+94, chakudan, 1.0, 1.0);
setEffAlphaKey( spep_8+94, chakudan, 255);



--playSe( spep_5+9, 1023);
--[[
playSe( spep_9+29, SE_09);
playSe( spep_9+59, SE_09);

playSe( spep_9+89, SE_10);
]]
--4.11
SE004 = playSe( spep_9+29, SE_09);
stopSe(spep_9+69,SE004,5);
SE005 = playSe( spep_9+59, SE_09);
stopSe(spep_9+99,SE005,5);
SE006 = playSe( spep_9+89, SE_10);

setDamage( spep_9+75, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage(spep_9+75);
setMoveKey(  spep_9+75, 0, -1000, 0, 0);
--setMoveKey(  spep_end+75, 0, 0, 0, 0);

shuchusen3 = entryEffectLife( spep_9+2, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線

entryFade( spep_9+159, 9,  10, 1, 8, 8, 8, 255);             -- black fade
setEffAlphaKey( spep_9+155, chakudan, 150);
setEffAlphaKey( spep_9+159, chakudan, 0);
entryFadeBg( spep_9+159, 0, 99, 0,10, 10, 10, 180);          -- ベース暗め　背景

endPhase(spep_9+169);

end

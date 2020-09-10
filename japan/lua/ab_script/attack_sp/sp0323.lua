

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

SP_01 = 150176;--導入部分、背景炎上
SP_02 = 150177;--火の粉
SP_03 = 150178;--横切る炎
SP_04 = 150179;--手前炎上
SP_05 = 150180;--キャラ残像
SP_06 = 150181;--炎背景切り抜き
SP_07 = 150184;--連撃

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 炎の中のジャネンバさん(100F)
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0);

setDisp( 75, 0, 1);
changeAnime( 75, 0, 30);
--setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   75,   0,    -25, -54,   0);
setMoveKey(   300,   0,    -25, -54,   0);

setScaleKey(  75,   0, 1.0, 1.0);
setScaleKey(  180,   0, 1.0, 1.0);
setScaleKey(  200,   0, 2.0, 2.0);
setScaleKey(  245,   0, 2.1, 2.1);
setScaleKey(  300,   0, 7.0, 7.0);

setRotateKey( 0, 0, 10 );
setRotateKey( 300, 0, 10 );

speff = entryEffect(  90,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  90,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 90, SE_04);

entryFade( 178, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 295, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( 0, SE_04);
playSe( 180, SE_06);
playSe( 214, SE_06);
playSe( 237, SE_07);
gogogo = playSe( 0, 1044);
stopSe( 299,gogogo,5);

--setShake( 0, 300, 20)

enjo = entryEffect(  0,   SP_01,   0x80,  -1,  0,  0,  0); --導入部分、背景炎上
setEffScaleKey( 0, enjo , 1.1, 1.1);
entryEffect(  0,   SP_03,   0x100,  -1,  0,  0,  0); --横切る炎
entryEffect(  0,   SP_02,   0x100,  -1,  0,  0,  0); --火の粉
entryEffect(  180,   SP_04,   0x100,  -1,  0,  0,  0); --手前炎上
entryEffect(  180,   SP_05,   0x100,  -1,  0,  -20,  0); --キャラ残像

shuchusen = entryEffectLife( spep_2, 906, 300, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen , 1.3, 1.3);

-- 書き文字エントリー
ct = entryEffectLife( 90, 190006, 80, 0x100, -1, 0, 110, 500);    -- ゴゴゴ・・・
setEffShake(90, ct, 80, 8);
setEffScaleKey(90, ct, 0.8, 0.8);

spep_1 = 300;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_1,   0, 0.7, 0.7);--169
--setScaleKey( 1,   0, 1.0, 1.0);--170

playSe( spep_1, SE_05);--170
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spname = entryEffectLife( spep_1, 1508, 90 ,0x00,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( spep_1+75, SE_06);

spep_2 = spep_1+89;

------------------------------------------------------
-- ジャネンバ炎上(100F)
------------------------------------------------------

setDisp( spep_2, 0, 0);
setDisp( spep_2+53, 0, 1);
changeAnime( spep_2+53, 0, 31); 

setMoveKey( spep_2+53,   0,    110, -300,   0);
setMoveKey( spep_2+53,   0,    110, -300,   0);
setMoveKey( spep_2+230,   0,    110, -350,   0);

setScaleKey(  spep_2+53,   0, 2.0, 2.0);
setScaleKey(  spep_2+90,   0, 0.5, 0.5);
setScaleKey(  spep_2+230,   0, 0.4, 0.4);

setRotateKey( spep_2-1, 0, 10);
setRotateKey( spep_2, 0, -10);
setRotateKey( spep_2+230, 0, -10);

-- ** エフェクト等 ** --

playSe( spep_2 , 1003);
gogo = playSe( spep_2+53, 1044);
playSe( spep_2+54 , SE_06);

stopSe( spep_2+230,gogo,5);

setShake( spep_2, 240, 20)

entryEffect(   spep_2,   SP_06,   0x80,  -1,  0,  0,  0); --斬撃背景

entryFadeBg( spep_2, 0, 230, 0, 10, 10, 10, 255);          -- ベース暗め　背景

shuchusen_2 = entryEffectLife( spep_2, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen_2 , 1.3, 1.3);
setEffScaleKey( spep_2 +40, shuchusen_2 , 2.0, 2.0);

shuchusen_3 = entryEffectLife( spep_2+53, 906, 177, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen_3 , 1.3, 1.3);

entryFade( spep_2+50, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( spep_2+53, 10012, 47, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_2+53, ct, 47, 5);
setEffAlphaKey( spep_2+53, ct, 255);
setEffAlphaKey(spep_2+90, ct, 255);
setEffAlphaKey(spep_2+100, ct, 0);
setEffScaleKey(spep_2+53, ct, 0.0, 0.0);
setEffScaleKey(spep_2+65, ct, 2.5, 2.5);
setEffScaleKey(spep_2+90, ct, 2.5, 2.5);
setEffScaleKey(spep_2+100, ct, 6.0, 6.0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 519; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

setMoveKey( SP_dodge+6,   0,    110, -350,   0);
setMoveKey( SP_dodge+8,   0,    -1100, 0,   0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

playSe( spep_2+90 , SE_07);

entryFade( spep_2+225, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+230;

------------------------------------------------------
-- 斬撃ラッシュ(110F)
------------------------------------------------------

setDisp( spep_3, 0, 0);

entryEffect(   spep_3+20,   SP_07,   0x100,  -1,  0,  0,  0); --連撃

setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 104);
setAnimeLoop( spep_3, 1, 1);

changeAnime( spep_3+30, 1, 108);
setAnimeLoop( spep_3+30, 1, 1);

setMoveKey(  spep_3,    1,  -400,  0,   0);
setMoveKey(  spep_3+30,    1,  100,  0,   0);
setMoveKey(  spep_3+180,    1,  100,  0,   0);

setScaleKey( spep_3,    1,  5.0, 5.0);
setScaleKey( spep_3+30,    1,  1.5, 1.5);
setScaleKey( spep_3+180,    1,  1.5, 1.5);

-- ** エフェクト等 ** --

playSe(spep_3+36,1032);
playSe(spep_3+55,1032);
playSe(spep_3+68,1032);
playSe(spep_3+81,1032);
playSe(spep_3+100,1032);
playSe(spep_3+110,1032);
playSe(spep_3+125,1032);
playSe(spep_3+153,SE_10);

setShakeChara( spep_3, 1,190, 8);

entryEffectLife( spep_3, 921, 190, 0x80,  -1,  0,  0,  0); -- 流線斜め
entryFadeBg( spep_3, 0, 190, 0, 10, 10, 10, 255);          -- ベース暗め　背景

-- ダメージ表示
dealDamage(spep_3+125);

entryFade( spep_3+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_3+190);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 炎の中のジャネンバさん(100F)
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0);

setDisp( 75, 0, 1);
changeAnime( 75, 0, 30);
--setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   75,   0,    -25, -54,   0);
setMoveKey(   300,   0,    -25, -54,   0);

setScaleKey(  75,   0, -1.0, 1.0);
setScaleKey(  180,   0, -1.0, 1.0);
setScaleKey(  200,   0, -2.0, 2.0);
setScaleKey(  245,   0, -2.1, 2.1);
setScaleKey(  300,   0, -7.0, 7.0);

setRotateKey( 0, 0, 10 );
setRotateKey( 300, 0, 10 );

--[[
speff = entryEffect(  90,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  90,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( 90, SE_04);

entryFade( 178, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 295, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( 0, SE_04);
playSe( 180, SE_06);
playSe( 214, SE_06);
playSe( 237, SE_07);
gogogo = playSe( 0, 1044);
stopSe( 299,gogogo,5);

setShake( 0, 300, 20)

enjo = entryEffect(  0,   SP_01,   0x80,  -1,  0,  0,  0); --導入部分、背景炎上
setEffScaleKey( 0, enjo , 1.1, 1.1);
entryEffect(  0,   SP_03,   0x100,  -1,  0,  0,  0); --横切る炎
entryEffect(  0,   SP_02,   0x100,  -1,  0,  0,  0); --火の粉
entryEffect(  180,   SP_04,   0x100,  -1,  0,  0,  0); --手前炎上
entryEffect(  180,   SP_05,   0x100,  -1,  0,  -20,  0); --キャラ残像

shuchusen = entryEffectLife( spep_2, 906, 300, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen , 1.3, 1.3);

-- 書き文字エントリー
ct = entryEffectLife( 90, 190006, 80, 0x100, -1, 0, 0, 500);    -- ゴゴゴ・・・
setEffShake(90, ct, 80, 8);
setEffScaleKey(90, ct, -0.8, 0.8);


spep_1 = 300;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_1,   0, 0.7, 0.7);--169
--setScaleKey( 1,   0, 1.0, 1.0);--170

playSe( spep_1, SE_05);--170
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spname = entryEffectLife( spep_1, 1508, 90 ,0x00,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( spep_1+75, SE_06);

spep_2 = spep_1+89;

------------------------------------------------------
-- ジャネンバ炎上(100F)
------------------------------------------------------

setDisp( spep_2, 0, 0);
setDisp( spep_2+53, 0, 1);
changeAnime( spep_2+53, 0, 31); 

setMoveKey( spep_2+53,   0,    -110, -300,   0);
setMoveKey( spep_2+53,   0,    -110, -300,   0);
setMoveKey( spep_2+230,   0,    -110, -350,   0);

setScaleKey(  spep_2+53,   0, -2.0, 2.0);
setScaleKey(  spep_2+90,   0, -0.5, 0.5);
setScaleKey(  spep_2+230,   0, -0.4, 0.4);

setRotateKey( spep_2-1, 0, -10);
setRotateKey( spep_2, 0, 10);
setRotateKey( spep_2+230, 0, 10);

-- ** エフェクト等 ** --

playSe( spep_2 , 1003);
gogo = playSe( spep_2+53, 1044);
playSe( spep_2+53 , SE_06);

stopSe( spep_2+230,gogo,5);

setShake( spep_2, 240, 20)

zangeki = entryEffect(   spep_2,   SP_06,   0x80,  -1,  0,  0,  0); --斬撃背景
setEffScaleKey( spep_2, zangeki , -1.0, 1.0);

entryFadeBg( spep_2, 0, 230, 0, 10, 10, 10, 255);          -- ベース暗め　背景

shuchusen_2 = entryEffectLife( spep_2, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen_2 , 1.3, 1.3);
setEffScaleKey( spep_2 +40, shuchusen_2 , 2.0, 2.0);

shuchusen_3 = entryEffectLife( spep_2+53, 906, 177, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen_3 , 1.3, 1.3);

entryFade( spep_2+50, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( spep_2+53, 10012, 47, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_2+53, ct, 47, 5);
setEffAlphaKey( spep_2+53, ct, 255);
setEffAlphaKey(spep_2+90, ct, 255);
setEffAlphaKey(spep_2+100, ct, 0);
setEffScaleKey(spep_2+53, ct, 0.0, 0.0);
setEffScaleKey(spep_2+65, ct, 2.5, 2.5);
setEffScaleKey(spep_2+90, ct, 2.5, 2.5);
setEffScaleKey(spep_2+100, ct, 6.0, 6.0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 519; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

setMoveKey( SP_dodge+6,   0,    -110, -350,   0);
setMoveKey( SP_dodge+8,   0,    -1100, 0,   0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

playSe( spep_2+90 , SE_07);

entryFade( spep_2+225, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     --whitefade

spep_3 = spep_2+230;

------------------------------------------------------
-- 斬撃ラッシュ(110F)
------------------------------------------------------

setDisp( spep_3, 0, 0);

entryEffect(   spep_3+20,   SP_07,   0x100,  -1,  0,  0,  0); --連撃

setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 104);
setAnimeLoop( spep_3, 1, 1);

changeAnime( spep_3+30, 1, 108);
setAnimeLoop( spep_3+30, 1, 1);

setMoveKey(  spep_3,    1,  -400,  0,   0);
setMoveKey(  spep_3+30,    1,  100,  0,   0);
setMoveKey(  spep_3+180,    1,  100,  0,   0);

setScaleKey( spep_3,    1,  5.0, 5.0);
setScaleKey( spep_3+30,    1,  1.5, 1.5);
setScaleKey( spep_3+180,    1,  1.5, 1.5);

-- ** エフェクト等 ** --

playSe(spep_3+36,1032);
playSe(spep_3+55,1032);
playSe(spep_3+68,1032);
playSe(spep_3+81,1032);
playSe(spep_3+100,1032);
playSe(spep_3+110,1032);
playSe(spep_3+125,1032);
playSe(spep_3+153,SE_10);

setShakeChara( spep_3, 1,190, 8);

entryEffectLife( spep_3, 921, 190, 0x80,  -1,  0,  0,  0); -- 流線斜め
entryFadeBg( spep_3, 0, 190, 0, 10, 10, 10, 255);          -- ベース暗め　背景

-- ダメージ表示
dealDamage(spep_3+125);

entryFade( spep_3+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_3+190);
end

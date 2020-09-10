print ("[lua]sp0390");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150830;--ef_001溜め1
SP_02 = 150831;--ef_002発射1
SP_03 = 150832;--ef_003命中1～爆発1～殴る
SP_04 = 150833;--ef_004溜め2～発射2
SP_05 = 150834;--ef_005命中2～爆発2
SP_06 = 150835;--ef_006溜め3
SP_07 = 150836;--ef_007発射3
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
SE_13 = 1042; --!?

SE_205 = 205;
SE_208 = 208;


multi_frm = 2;
                   

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setAnimeLoop(  0, 0, 0);


setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey( 0, 0,    0, -54,   0);
setMoveKey( 1, 0,    0, -54,   0);
setMoveKey( 2, 0,    0, -54,   0);
setMoveKey( 3, 0,    0, -54,   0);
setMoveKey( 0, 1,    0, -54,   0);
setMoveKey( 1, 1,    0, -54,   0);
setMoveKey( 2, 1,    0, -54,   0);
setMoveKey( 3, 1,    0, -54,   0);

setScaleKey( 0,   1, 1.7, 1.7);
setScaleKey( 1,   1, 1.7, 1.7);
setScaleKey( 0,   0, 1.7, 1.7);
setScaleKey( 1,   0, 1.7, 1.7);

setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 30, 10, 50, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(0, 0);
setDisp( 0, 0, 1);

changeAnime(  0, 0, 1);     
changeAnime(  0, 1, 100);     



changeAnime(  30, 0, 17);                       -- 溜め!
setShakeChara( 30, 0, 40, 10);

kouka2=entryEffectLife(  30,   1500, 39,  0,    -1,  0,  0,  0);    -- eff_001
setEffMoveKey( 30, kouka2, 0, 0, 0);
setEffScaleKey( 30, kouka2, 1.0, 1.0);
setEffAlphaKey( 30, kouka2, 255);
setEffRotateKey( 30, kouka2, 0);

kouka1=entryEffectLife(  30,   1501,  39, 0x80, -1,  0,  0,  0);    -- eff_002
setEffMoveKey( 30, kouka1, 0, 0, 0);
setEffScaleKey( 30, kouka1, 1.0, 1.0);
setEffAlphaKey( 30, kouka1, 255);
setEffRotateKey( 30, kouka1, 0);

playSe( 30, SE_01);


-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  -1,  0,  -200); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 350); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(69, ct, 255);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);


spep_1 = 70;
------------------------------------------------------
-- カットイン(100F)
------------------------------------------------------

-- ** ホワイトフェード ** --
entryFade( spep_1-15, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
-- ** 背景 ** --
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 255); -- ベース暗め　背景

setDisp( spep_1, 0, 0);



-- ** エフェクト ** --
ef1 = entryEffect( spep_1, SP_01, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_1, ef1, 0, 0, 0);
setEffScaleKey( spep_1, ef1, 1.0, 1.0);
setEffAlphaKey( spep_1, ef1, 255);
setEffRotateKey( spep_1, ef1, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.5, 1.5);


speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_1, SE_04);
--playSe( spep_1+30, SE_03);
playSe( spep_1+50, SE_03);
playSe( spep_1+70, SE_03);
--playSe( spep_1+90, SE_03);
-- 書き文字エントリー
--[[
ctgogo = entryEffectLife( spep_1+10, 190006, 89, 0x100, -1, 0, 200, 500);    -- ゴゴゴゴ
setEffShake(spep_1+10, ctgogo, 40, 8);
setEffScaleKey(spep_1+10, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_1+10, ctgogo, 10);
setEffAlphaKey( spep_1+10, ctgogo, 255);

]]
ctgogo = entryEffectLife( spep_1+18, 190006, 85, 0x100, -1, 0, 200, 480);    -- ゴゴゴゴ 
setEffShake( spep_1+18, ctgogo, 80, 8);
setEffRotateKey( spep_1+18, ctgogo, 0);

setEffScaleKey( spep_1+18, ctgogo, 0.7, 0.7);
setEffAlphaKey( spep_1+18, ctgogo, 255);

setEffScaleKey( spep_1+81, ctgogo, 0.7, 0.7);
setEffAlphaKey( spep_1+81, ctgogo, 255);

setEffScaleKey( spep_1+89, ctgogo, 3.0, 3.0);
setEffAlphaKey( spep_1+89, ctgogo, 0);






------------------------------------------------------
-- 気玉を投げる(60f)
------------------------------------------------------

spep_2 = spep_1+100; --
-- ** ホワイトフェード ** --
entryFade( spep_2-5, 2, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 60, 0, 10, 10, 10, 210); -- ベース暗め　背景


-- ** 横流線 ** --
ryusenKidama = entryEffectLife( spep_2, 920, 60, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_2, ryusenKidama, 0, 0, 0);
setEffScaleKey( spep_2, ryusenKidama, 1.7, 1.7);
setEffAlphaKey( spep_2, ryusenKidama, 255);
setEffRotateKey( spep_2, ryusenKidama, 0);

-- ** 集中線 ** --
shuchusenKidama = entryEffectLife( spep_2, 906, 60, 0x100,  -1, 0,  -150,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusenKidama, 1.5, 1.5);

setEffAlphaKey( spep_2, shuchusenKidama, 0);
setEffAlphaKey( spep_2+11, shuchusenKidama, 0);
setEffAlphaKey( spep_2+12, shuchusenKidama, 255);

setEffAlphaKey( spep_2+25, shuchusenKidama, 255);
setEffAlphaKey( spep_2+26, shuchusenKidama, 0);
setEffAlphaKey( spep_2+40, shuchusenKidama, 255);
setEffAlphaKey( spep_2+60, shuchusenKidama, 255);
setEffAlphaKey( spep_2+61, shuchusenKidama, 0);

-- ** オーラエフェクト ** --
ef2 = entryEffect( spep_2, SP_02, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_2, ef2, 0, 0, 0);
setEffScaleKey( spep_2, ef2, 1.0, 1.0);
setEffAlphaKey( spep_2, ef2, 255);
setEffRotateKey( spep_2, ef2, 0);
setEffShake(spep_2, ef2, 100, 15);

-- ** 音 ** --
playSe( spep_2+12, SE_06);--
playSe( spep_2+40, SE_06);




------------------------------------------------------
-- 敵に当たる〜パンチ(120F)
------------------------------------------------------
spep_3 = spep_2+60; --
-- ** ホワイトフェード ** --
entryFade( spep_3-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



setScaleKey( spep_3-1,   1, 1.7, 1.7);
setScaleKey( spep_3-1,   0, 1.7, 1.7);


changeAnime( spep_3, 1, 100); -- 立ち
setDisp( spep_3, 1, 1);
setMoveKey(  spep_3,    1,  200,  0,   0);
setMoveKey(  spep_3+120,    1,  200,  0,   0);
setScaleKey( spep_3,    1,  0.8, 0.8);

setMoveKey(  spep_3+0,    1,  200,  0,   0);
setMoveKey(  spep_3+10,    1,  100,  0,   0);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 120, 0, 10, 10, 10, 210); -- ベース暗め　背景
setMoveKey( spep_3-1, 0,    0, -54,   0);
setMoveKey( spep_3, 0,    -3000, -54,   0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 242; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3, 921, 18, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffScaleKey( spep_3, ryusen3, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffRotateKey( spep_3, ryusen3, 0);

-- ** オーラエフェクト ** --
ef3 = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_3, ef3, 0, 0, 0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffAlphaKey( spep_3, ef3, 255);
setEffRotateKey( spep_3, ef3, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3+20, 906, 28, 0x100,  -1, 0,  200,  -0);   -- 集中線
setEffScaleKey( spep_3+20, shuchusen3, 1.5, 1.5);

changeAnime( spep_3+21, 1, 106); -- 立ち
setMoveKey(  spep_3+23,    1,  100,  0,   0);
setMoveKey(  spep_3+24,    1,  200,  0,   0);
--[[
setMoveKey(  spep_3+15,    1,  250,  0,   0);
setMoveKey(  spep_3+20,    1,  300,  0,   0);
setMoveKey(  spep_3+22,    1,  300,  0,   0);
setMoveKey(  spep_3+23,    1,  250,  0,   0);
setMoveKey(  spep_3+24,    1,  250,  0,   0);
setMoveKey(  spep_3+27,    1,  250,  0,   0);
setMoveKey(  spep_3+40,    1,  350,  0,   0);
]]
tyousei = 9;
setScaleKey( spep_3+14,    1,  1.2, 1.2);
setScaleKey( spep_3+74-tyousei,    1,  1.2, 1.2);
setScaleKey( spep_3+78-tyousei,    1,  1.6, 1.6);
setScaleKey( spep_3+80-tyousei,    1,  1.9, 1.9);

changeAnime( spep_3+82-tyousei, 1, 108); -- 立ち


setScaleKey( spep_3+81-tyousei,    1,  1.9, 1.9);
setScaleKey( spep_3+82,    1,  2.3, 2.3);
setRotateKey(spep_3, 1, 0);
setRotateKey(spep_3+20, 1, 0);
setRotateKey(spep_3+21, 1, -60);
setRotateKey(spep_3+81-tyousei, 1, -60);
setRotateKey(spep_3+82-tyousei, 1, 0);
setRotateKey(spep_3+110, 1, 0);

setShakeChara(spep_3, 1, 120, 15);

setMoveKey(  spep_3+83,    1,  200,  0,   0);

setDisp( spep_3+118, 1, 0);

-- ** 横流線 ** --
ryusen3a = entryEffectLife( spep_3+49, 920, 26, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_3+49, ryusen3a, 0, 0, 0);
setEffScaleKey( spep_3+49, ryusen3a, 1.7, 1.7);
setEffAlphaKey( spep_3+49, ryusen3a, 255);
setEffRotateKey( spep_3+49, ryusen3a, 0);


-- ** 集中線 ** --
shuchusen3a = entryEffectLife( spep_3+76, 906, 10, 0x100,  -1, 0,  200,  -0);   -- 集中線
setEffScaleKey( spep_3+76, shuchusen3a, 1.5, 1.5);

--集中線 ぶっ飛ばし流線
shuchusen3 = entryEffectLife( spep_3+90-tyousei, 924,40, 0x80,  -1, 0,  -200,  -50); -- 
setEffMoveKey( spep_3+90-tyousei, shuchusen3, -200, -50, 0);
setEffScaleKey( spep_3+90-tyousei, shuchusen3, 1.3, 1.3);
setEffAlphaKey( spep_3+90-tyousei, shuchusen3, 255);
setEffRotateKey( spep_3+90-tyousei, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_3+9, 1014);
--playSe( spep_3+60, SE_09);
--playSe( spep_3+79-tyousei, 1012);--1016
playSe( spep_3+84-tyousei, 1009);--1016


setMoveKey(  spep_3+110,    1,  400,  0,   0);
setScaleKey( spep_3+110,    1,  0.5, 0.5);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4 = spep_3+120; --
entryFade( spep_4-10, 2,  10, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffAlphaKey( spep_4-1, shuchusen3, 255);
setEffAlphaKey( spep_4, shuchusen3, 0);
setMoveKey(  spep_4,    1,  400,  0,   0);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_4, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

-- ** 音 ** --
playSe( spep_4, SE_05);

setMoveKey(  spep_4+89,    1,  400,  0,   0);

------------------------------------------------------
-- 気玉投げ３×２当たる(70F)
------------------------------------------------------
spep_5 = spep_4+90;
entryFade( spep_5-5, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_5, 0, 70+60, 0, 10, 10, 10, 210); -- ベース暗め　背景

-- ** エフェクト ** --
efTame = entryEffect( spep_5, SP_04, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_5, efTame, 0, 0, 0);
setEffScaleKey( spep_5, efTame, 1.0, 1.0);
setEffAlphaKey( spep_5, efTame, 255);
setEffRotateKey( spep_5, efTame, 0);


-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_5, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen6, 1.5, 1.5);

-- ** 奥行き流線斜め ** --
ryusenOku = entryEffectLife( spep_5+20, 921, 40, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_5+20, ryusenOku, 0, 0, 0);
setEffRotateKey( spep_5+20, ryusenOku, -160);
setEffScaleKey( spep_5+20, ryusenOku, 1.6, 1.6);
setEffAlphaKey( spep_5+20, ryusenOku, 255);


--中間のフェード
entryFade( spep_5+50, 3,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト ** --
efMeicyu = entryEffect( spep_5+60, SP_05, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_5+60, efMeicyu, 0, 0, 0);
setEffScaleKey( spep_5+60, efMeicyu, 1.0, 1.0);
setEffAlphaKey( spep_5+60, efMeicyu, 255);
setEffRotateKey( spep_5+60, efMeicyu, 0);


--集中線 ぶっ飛ばし流線
shuchusen6a = entryEffectLife( spep_5+60, 924,70, 0x80,  -1, 0,  0,  0); -- 
setEffMoveKey( spep_5+60, shuchusen6a, 0, 0, 0);
setEffScaleKey( spep_5+60, shuchusen6a, 1.3, 1.3);
setEffAlphaKey( spep_5+60, shuchusen6a, 255);
setEffRotateKey( spep_5+60, shuchusen6a, -90);

--敵
setRotateKey(spep_5+59, 1, 0);

changeAnime( spep_5+60, 1, 107); -- 立ち
setDisp( spep_5+60, 1, 1);
setMoveKey(  spep_5+60,    1,  0,  350,   0);
setMoveKey(  spep_5+80,    1,  0,  0,   0);
setScaleKey( spep_5+60,    1,  1.0, 1.0);

setShakeChara(spep_5+60, 1, 70, 20);


-- ** 音 ** --
playSe( spep_5+0, SE_01);--
playSe( spep_5+24, SE_06);--
playSe( spep_5+40, SE_06);

playSe( spep_5+60+22, SE_09);
playSe( spep_5+60+22, SE_09);
playSe( spep_5+60+48, SE_09);
playSe( spep_5+60+64, SE_09);
------------------------------------------------------
--両手
------------------------------------------------------
spep_6 = spep_5+70+60; --245
-- ** ホワイトフェード ** --
entryFade( spep_6-5, 5, 9, 2, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 134, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 両手広げるエフェクト ** --
ryoute6 = entryEffect( spep_6, SP_06, 0x100, -1, 0, 0, 0); -- 導入
setEffMoveKey( spep_6, ryoute6, 0, 0, 0);
setEffScaleKey( spep_6, ryoute6, 1.0, 1.0);
setEffAlphaKey( spep_6, ryoute6, 255);
setEffRotateKey( spep_6, ryoute6, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 134, 0x100, -1, 0, 0, 0); -- 集中線3
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.2, 1.2);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);

-- ** 音 ** --
--playSe( spep_6, SE_01);--
--playSe( spep_6+20, SE_02);--
--playSe( spep_6+20, SE_02);--

playSe( spep_6+10, SE_04);

setDisp( spep_6, 1, 0);

------------------------------------------------------
-- 放つ(370F)(100F)
------------------------------------------------------
spep_7 = spep_6+100; --380

-- ** ホワイトフェード ** --
entryFade( spep_7-10, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade(344-362)
-- ** 背景 ** --
entryFadeBg( spep_7, 0, 120, 0, 100, 252, 132, 210); -- ベース暗め　背景

-- ** 放つエフェクト ** --
gokuha7 = entryEffect( spep_7, SP_07, 0x100, -1, 0, 0, 0); -- 放つエフェクト
setEffMoveKey( spep_7, gokuha7, 0, 0, 0);
setEffScaleKey( spep_7, gokuha7, 1.0, 1.0);
setEffAlphaKey( spep_7, gokuha7, 255);
setEffRotateKey( spep_7, gokuha7, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname7 = entryEffectLife( spep_7, 921, 100, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_7, okuyukiryusennaname7, 0, 0, 0);
setEffRotateKey( spep_7, okuyukiryusennaname7, -90);
setEffScaleKey( spep_7, okuyukiryusennaname7, 1.6, 1.6);
setEffAlphaKey( spep_7, okuyukiryusennaname7, 255);

ctzuo = entryEffectLife( spep_7+40, 10012, 20, 0x100, -1, 0, 100, 300);    -- ズオッ
setEffAlphaKey( spep_7+40, ctzuo, 255);
setEffScaleKey( spep_7+40, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_7+60, ctzuo, 2.0, 2.0);
setEffAlphaKey( spep_7+40, ctzuo, 255);
setEffAlphaKey( spep_7+60, ctzuo, 255);
setEffAlphaKey( spep_7+61, ctzuo, 0);
setEffShake( spep_7+41, ctzuo, 20, 8);
setEffRotateKey(spep_7+40, ctzuo, 20);

playSe( spep_7+20, SE_06);--
playSe( spep_7+40, SE_07);--

-----------------------------------------------------
--ギャン青(60F)
-----------------------------------------------------
spep_8 = spep_7+120; --476

playSe( spep_8, 1024);

entryFade( spep_8-17, 10, 10, 3, 100, 252, 132, 255);     -- white fade
entryFadeBg( spep_8, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

gya = entryEffectLife( spep_8, 190010 ,60, 0x100,-1,0,0,0);
setEffMoveKey( spep_8, gya ,0,0,0);
setEffScaleKey( spep_8, gya ,1.0,1.0);
setEffAlphaKey( spep_8, gya ,255);
setEffShake( spep_8, gya, 10);

-- 書き文字エントリー
ct8 = entryEffectLife( spep_8, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_8, ct8, 255);
setEffScaleKey( spep_8, ct8, 3.0, 3.0);
setEffScaleKey( spep_8+60, ct8, 4.0, 4.0);
setEffAlphaKey( spep_8, ct8, 255);
setEffAlphaKey( spep_8+60, ct8, 80);
setEffShake( spep_8, ct8, 60, 10);





------------------------------------------------------
-- 爆発 (200F)
------------------------------------------------------


spep_9=spep_8+60;

entryFade( spep_9-15, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_9, 0, 200, 0, 10, 10, 10,255); -- ベース暗め　背景

-- ** オーラエフェクト ** --
ef9 = entryEffect( spep_9, 1655, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_9, ef9, 0, 0, 0);
setEffScaleKey( spep_9, ef9, 1.0, 1.0);
setEffAlphaKey( spep_9, ef9, 255);
setEffRotateKey( spep_9, ef9, 0);

--[[
-- ** 集中線 ** --
shuchusen9 = entryEffectLife( spep_9, 906, 95, 0x100,  -1, 0,  100,  -50);   -- 集中線
setEffScaleKey( spep_9, shuchusen9, 1.3, 1.3);

entryFade(spep_9+82, 1,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen9 = entryEffectLife( spep_9+83, 911, 110, 0x100,  -1, 0,  100,  -50);   -- 集中線
setEffScaleKey( spep_9+83, shuchusen9, 1.2, 1.2);

-- 書き文字エントリー
ct9 = entryEffectLife( spep_9, 10008, 85, 0, -1, 0, -180, 300); -- ゴゴゴ・・・
setEffShake(spep_9, ct9, 51, 20);
setEffAlphaKey(spep_9, ct9, 255);
setEffAlphaKey(spep_9+84, ct9, 255);
setEffAlphaKey(spep_9+85, ct9, 0);
setEffScaleKey(spep_9, ct9, 2.0, 2.0);
setEffRotateKey( spep_9, ct9, 0);
]]
setDisp( spep_9, 1, 0);

playSe( spep_9+4, SE_09);
playSe( spep_9+43, SE_10);



-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+185, 9,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+195);


else
------------------------------------------------------
--反転敵
------------------------------------------------------

setAnimeLoop(  0, 0, 0);


setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey( 0, 0,    0, -54,   0);
setMoveKey( 1, 0,    0, -54,   0);
setMoveKey( 2, 0,    0, -54,   0);
setMoveKey( 3, 0,    0, -54,   0);
setMoveKey( 0, 1,    0, -54,   0);
setMoveKey( 1, 1,    0, -54,   0);
setMoveKey( 2, 1,    0, -54,   0);
setMoveKey( 3, 1,    0, -54,   0);

setScaleKey( 0,   1, 1.7, 1.7);
setScaleKey( 1,   1, 1.7, 1.7);
setScaleKey( 0,   0, 1.7, 1.7);
setScaleKey( 1,   0, 1.7, 1.7);

setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

--entryFade( 0, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 30, 10, 50, 0, 10, 10, 10, 180);       -- ベース暗め　背景
setVisibleUI(0, 0);
setDisp( 0, 0, 1);

changeAnime(  0, 0, 1);     
changeAnime(  0, 1, 100);     



changeAnime(  30, 0, 17);                       -- 溜め!
setShakeChara( 30, 0, 40, 10);

kouka2=entryEffectLife(  30,   1500, 39,  0,    -1,  0,  0,  0);    -- eff_001
setEffMoveKey( 30, kouka2, 0, 0, 0);
setEffScaleKey( 30, kouka2, 1.0, 1.0);
setEffAlphaKey( 30, kouka2, 255);
setEffRotateKey( 30, kouka2, 0);

kouka1=entryEffectLife(  30,   1501,  39, 0x80, -1,  0,  0,  0);    -- eff_002
setEffMoveKey( 30, kouka1, 0, 0, 0);
setEffScaleKey( 30, kouka1, 1.0, 1.0);
setEffAlphaKey( 30, kouka1, 255);
setEffRotateKey( 30, kouka1, 0);

playSe( 30, SE_01);


-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  -1,  0,  -200); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 350); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(69, ct, 255);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);


spep_1 = 70;
------------------------------------------------------
-- カットイン(100F)
------------------------------------------------------

-- ** ホワイトフェード ** --
entryFade( spep_1-15, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
-- ** 背景 ** --
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 255); -- ベース暗め　背景

setDisp( spep_1, 0, 0);



-- ** エフェクト ** --
ef1 = entryEffect( spep_1, SP_01, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_1, ef1, 0, 0, 0);
setEffScaleKey( spep_1, ef1, 1.0, 1.0);
setEffAlphaKey( spep_1, ef1, 255);
setEffRotateKey( spep_1, ef1, 0);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.5, 1.5);

--[[
speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
playSe( spep_1, SE_04);
--playSe( spep_1+30, SE_03);
playSe( spep_1+50, SE_03);
playSe( spep_1+70, SE_03);
--playSe( spep_1+90, SE_03);
-- 書き文字エントリー
--[[
ctgogo = entryEffectLife( spep_1+10, 190006, 89, 0x100, -1, 0, 200, 500);    -- ゴゴゴゴ
setEffShake(spep_1+10, ctgogo, 40, 8);
setEffScaleKey(spep_1+10, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_1+10, ctgogo, 10);
setEffAlphaKey( spep_1+10, ctgogo, 255);

]]
ctgogo = entryEffectLife( spep_1+18, 190006, 85, 0x100, -1, 0, 200, 480);    -- ゴゴゴゴ 
setEffShake( spep_1+18, ctgogo, 80, 8);
setEffRotateKey( spep_1+18, ctgogo, 0);

setEffScaleKey( spep_1+18, ctgogo, -0.7, 0.7);
setEffAlphaKey( spep_1+18, ctgogo, 255);

setEffScaleKey( spep_1+81, ctgogo, -0.7, 0.7);
setEffAlphaKey( spep_1+81, ctgogo, 255);

setEffScaleKey( spep_1+89, ctgogo, -3.0, 3.0);
setEffAlphaKey( spep_1+89, ctgogo, 0);






------------------------------------------------------
-- 気玉を投げる(60f)
------------------------------------------------------

spep_2 = spep_1+100; --
-- ** ホワイトフェード ** --
entryFade( spep_2-5, 2, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 60, 0, 10, 10, 10, 210); -- ベース暗め　背景


-- ** 横流線 ** --
ryusenKidama = entryEffectLife( spep_2, 920, 60, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_2, ryusenKidama, 0, 0, 0);
setEffScaleKey( spep_2, ryusenKidama, 1.7, 1.7);
setEffAlphaKey( spep_2, ryusenKidama, 255);
setEffRotateKey( spep_2, ryusenKidama, 0);

-- ** 集中線 ** --
shuchusenKidama = entryEffectLife( spep_2, 906, 60, 0x100,  -1, 0,  -150,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusenKidama, 1.5, 1.5);

setEffAlphaKey( spep_2, shuchusenKidama, 0);
setEffAlphaKey( spep_2+11, shuchusenKidama, 0);
setEffAlphaKey( spep_2+12, shuchusenKidama, 255);

setEffAlphaKey( spep_2+25, shuchusenKidama, 255);
setEffAlphaKey( spep_2+26, shuchusenKidama, 0);
setEffAlphaKey( spep_2+40, shuchusenKidama, 255);
setEffAlphaKey( spep_2+60, shuchusenKidama, 255);
setEffAlphaKey( spep_2+61, shuchusenKidama, 0);

-- ** オーラエフェクト ** --
ef2 = entryEffect( spep_2, SP_02, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_2, ef2, 0, 0, 0);
setEffScaleKey( spep_2, ef2, 1.0, 1.0);
setEffAlphaKey( spep_2, ef2, 255);
setEffRotateKey( spep_2, ef2, 0);
setEffShake(spep_2, ef2, 100, 15);

-- ** 音 ** --
playSe( spep_2+12, SE_06);--
playSe( spep_2+40, SE_06);




------------------------------------------------------
-- 敵に当たる〜パンチ(120F)
------------------------------------------------------
spep_3 = spep_2+60; --
-- ** ホワイトフェード ** --
entryFade( spep_3-5, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



setScaleKey( spep_3-1,   1, 1.7, 1.7);
setScaleKey( spep_3-1,   0, 1.7, 1.7);


changeAnime( spep_3, 1, 100); -- 立ち
setDisp( spep_3, 1, 1);
setMoveKey(  spep_3,    1,  200,  0,   0);
setMoveKey(  spep_3+120,    1,  200,  0,   0);
setScaleKey( spep_3,    1,  0.8, 0.8);

setMoveKey(  spep_3+0,    1,  200,  0,   0);
setMoveKey(  spep_3+10,    1,  100,  0,   0);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 120, 0, 10, 10, 10, 210); -- ベース暗め　背景
setMoveKey( spep_3-1, 0,    0, -54,   0);
setMoveKey( spep_3, 0,    -3000, -54,   0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 242; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 続き
------------------------------------------------------

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3, 921, 18, 0x80, -1, 0, 0, 0); -- 流線
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffScaleKey( spep_3, ryusen3, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffRotateKey( spep_3, ryusen3, 0);

-- ** オーラエフェクト ** --
ef3 = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_3, ef3, 0, 0, 0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffAlphaKey( spep_3, ef3, 255);
setEffRotateKey( spep_3, ef3, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3+20, 906, 28, 0x100,  -1, 0,  200,  -0);   -- 集中線
setEffScaleKey( spep_3+20, shuchusen3, 1.5, 1.5);

changeAnime( spep_3+21, 1, 106); -- 立ち
setMoveKey(  spep_3+23,    1,  100,  0,   0);
setMoveKey(  spep_3+24,    1,  200,  0,   0);
--[[
setMoveKey(  spep_3+15,    1,  250,  0,   0);
setMoveKey(  spep_3+20,    1,  300,  0,   0);
setMoveKey(  spep_3+22,    1,  300,  0,   0);
setMoveKey(  spep_3+23,    1,  250,  0,   0);
setMoveKey(  spep_3+24,    1,  250,  0,   0);
setMoveKey(  spep_3+27,    1,  250,  0,   0);
setMoveKey(  spep_3+40,    1,  350,  0,   0);
]]
tyousei = 9;
setScaleKey( spep_3+14,    1,  1.2, 1.2);
setScaleKey( spep_3+74-tyousei,    1,  1.2, 1.2);
setScaleKey( spep_3+78-tyousei,    1,  1.6, 1.6);
setScaleKey( spep_3+80-tyousei,    1,  1.9, 1.9);

changeAnime( spep_3+82-tyousei, 1, 108); -- 立ち


setScaleKey( spep_3+81-tyousei,    1,  1.9, 1.9);
setScaleKey( spep_3+82,    1,  2.3, 2.3);
setRotateKey(spep_3, 1, 0);
setRotateKey(spep_3+20, 1, 0);
setRotateKey(spep_3+21, 1, -60);
setRotateKey(spep_3+81-tyousei, 1, -60);
setRotateKey(spep_3+82-tyousei, 1, 0);
setRotateKey(spep_3+110, 1, 0);

setShakeChara(spep_3, 1, 120, 15);

setMoveKey(  spep_3+83,    1,  200,  0,   0);

setDisp( spep_3+118, 1, 0);

-- ** 横流線 ** --
ryusen3a = entryEffectLife( spep_3+49, 920, 26, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_3+49, ryusen3a, 0, 0, 0);
setEffScaleKey( spep_3+49, ryusen3a, 1.7, 1.7);
setEffAlphaKey( spep_3+49, ryusen3a, 255);
setEffRotateKey( spep_3+49, ryusen3a, 0);


-- ** 集中線 ** --
shuchusen3a = entryEffectLife( spep_3+76, 906, 10, 0x100,  -1, 0,  200,  -0);   -- 集中線
setEffScaleKey( spep_3+76, shuchusen3a, 1.5, 1.5);

--集中線 ぶっ飛ばし流線
shuchusen3 = entryEffectLife( spep_3+90-tyousei, 924,40, 0x80,  -1, 0,  -200,  -50); -- 
setEffMoveKey( spep_3+90-tyousei, shuchusen3, -200, -50, 0);
setEffScaleKey( spep_3+90-tyousei, shuchusen3, 1.3, 1.3);
setEffAlphaKey( spep_3+90-tyousei, shuchusen3, 255);
setEffRotateKey( spep_3+90-tyousei, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_3+9, 1014);
--playSe( spep_3+60, SE_09);
--playSe( spep_3+79-tyousei, 1012);--1016
playSe( spep_3+84-tyousei, 1009);--1016


setMoveKey(  spep_3+110,    1,  400,  0,   0);
setScaleKey( spep_3+110,    1,  0.5, 0.5);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4 = spep_3+120; --
entryFade( spep_4-10, 2,  10, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setEffAlphaKey( spep_4-1, shuchusen3, 255);
setEffAlphaKey( spep_4, shuchusen3, 0);
setMoveKey(  spep_4,    1,  400,  0,   0);

speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_4, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

-- ** 音 ** --
playSe( spep_4, SE_05);

setMoveKey(  spep_4+89,    1,  400,  0,   0);

------------------------------------------------------
-- 気玉投げ３×２当たる(70F)
------------------------------------------------------
spep_5 = spep_4+90;
entryFade( spep_5-5, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_5, 0, 70+60, 0, 10, 10, 10, 210); -- ベース暗め　背景

-- ** エフェクト ** --
efTame = entryEffect( spep_5, SP_04, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_5, efTame, 0, 0, 0);
setEffScaleKey( spep_5, efTame, 1.0, 1.0);
setEffAlphaKey( spep_5, efTame, 255);
setEffRotateKey( spep_5, efTame, 0);


-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_5, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen6, 1.5, 1.5);

-- ** 奥行き流線斜め ** --
ryusenOku = entryEffectLife( spep_5+20, 921, 40, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_5+20, ryusenOku, 0, 0, 0);
setEffRotateKey( spep_5+20, ryusenOku, -160);
setEffScaleKey( spep_5+20, ryusenOku, 1.6, 1.6);
setEffAlphaKey( spep_5+20, ryusenOku, 255);


--中間のフェード
entryFade( spep_5+50, 3,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト ** --
efMeicyu = entryEffect( spep_5+60, SP_05, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_5+60, efMeicyu, 0, 0, 0);
setEffScaleKey( spep_5+60, efMeicyu, 1.0, 1.0);
setEffAlphaKey( spep_5+60, efMeicyu, 255);
setEffRotateKey( spep_5+60, efMeicyu, 0);


--集中線 ぶっ飛ばし流線
shuchusen6a = entryEffectLife( spep_5+60, 924,70, 0x80,  -1, 0,  0,  0); -- 
setEffMoveKey( spep_5+60, shuchusen6a, 0, 0, 0);
setEffScaleKey( spep_5+60, shuchusen6a, 1.3, 1.3);
setEffAlphaKey( spep_5+60, shuchusen6a, 255);
setEffRotateKey( spep_5+60, shuchusen6a, -90);

--敵
setRotateKey(spep_5+59, 1, 0);

changeAnime( spep_5+60, 1, 107); -- 立ち
setDisp( spep_5+60, 1, 1);
setMoveKey(  spep_5+60,    1,  0,  350,   0);
setMoveKey(  spep_5+80,    1,  0,  0,   0);
setScaleKey( spep_5+60,    1,  1.0, 1.0);

setShakeChara(spep_5+60, 1, 70, 20);


-- ** 音 ** --
playSe( spep_5+0, SE_01);--
playSe( spep_5+24, SE_06);--
playSe( spep_5+40, SE_06);

playSe( spep_5+60+22, SE_09);
playSe( spep_5+60+22, SE_09);
playSe( spep_5+60+48, SE_09);
playSe( spep_5+60+64, SE_09);
------------------------------------------------------
--両手
------------------------------------------------------
spep_6 = spep_5+70+60; --245
-- ** ホワイトフェード ** --
entryFade( spep_6-5, 5, 9, 2, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 背景 ** --
entryFadeBg( spep_6, 0, 134, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** 両手広げるエフェクト ** --
ryoute6 = entryEffect( spep_6, SP_06, 0x100, -1, 0, 0, 0); -- 導入
setEffMoveKey( spep_6, ryoute6, 0, 0, 0);
setEffScaleKey( spep_6, ryoute6, 1.0, 1.0);
setEffAlphaKey( spep_6, ryoute6, 255);
setEffRotateKey( spep_6, ryoute6, 0);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 134, 0x100, -1, 0, 0, 0); -- 集中線3
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.2, 1.2);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);

-- ** 音 ** --
--playSe( spep_6, SE_01);--
--playSe( spep_6+20, SE_02);--
--playSe( spep_6+20, SE_02);--

playSe( spep_6+10, SE_04);

setDisp( spep_6, 1, 0);

------------------------------------------------------
-- 放つ(370F)(100F)
------------------------------------------------------
spep_7 = spep_6+100; --380

-- ** ホワイトフェード ** --
entryFade( spep_7-10, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade(344-362)
-- ** 背景 ** --
entryFadeBg( spep_7, 0, 120, 0, 100, 252, 132, 210); -- ベース暗め　背景

-- ** 放つエフェクト ** --
gokuha7 = entryEffect( spep_7, SP_07, 0x100, -1, 0, 0, 0); -- 放つエフェクト
setEffMoveKey( spep_7, gokuha7, 0, 0, 0);
setEffScaleKey( spep_7, gokuha7, 1.0, 1.0);
setEffAlphaKey( spep_7, gokuha7, 255);
setEffRotateKey( spep_7, gokuha7, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname7 = entryEffectLife( spep_7, 921, 100, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_7, okuyukiryusennaname7, 0, 0, 0);
setEffRotateKey( spep_7, okuyukiryusennaname7, -90);
setEffScaleKey( spep_7, okuyukiryusennaname7, 1.6, 1.6);
setEffAlphaKey( spep_7, okuyukiryusennaname7, 255);

ctzuo = entryEffectLife( spep_7+40, 10012, 20, 0x100, -1, 0, 100, 300);    -- ズオッ
setEffAlphaKey( spep_7+40, ctzuo, 255);
setEffScaleKey( spep_7+40, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_7+60, ctzuo, 2.0, 2.0);
setEffAlphaKey( spep_7+40, ctzuo, 255);
setEffAlphaKey( spep_7+60, ctzuo, 255);
setEffAlphaKey( spep_7+61, ctzuo, 0);
setEffShake( spep_7+41, ctzuo, 20, 8);
setEffRotateKey(spep_7+40, ctzuo, 20);

playSe( spep_7+20, SE_06);--
playSe( spep_7+40, SE_07);--

-----------------------------------------------------
--ギャン青(60F)
-----------------------------------------------------
spep_8 = spep_7+120; --476

playSe( spep_8, 1024);

entryFade( spep_8-17, 10, 10, 3, 100, 252, 132, 255);     -- white fade
entryFadeBg( spep_8, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

gya = entryEffectLife( spep_8, 190010 ,60, 0x100,-1,0,0,0);
setEffMoveKey( spep_8, gya ,0,0,0);
setEffScaleKey( spep_8, gya ,1.0,1.0);
setEffAlphaKey( spep_8, gya ,255);
setEffShake( spep_8, gya, 10);

-- 書き文字エントリー
ct8 = entryEffectLife( spep_8, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_8, ct8, 255);
setEffScaleKey( spep_8, ct8, 3.0, 3.0);
setEffScaleKey( spep_8+60, ct8, 4.0, 4.0);
setEffAlphaKey( spep_8, ct8, 255);
setEffAlphaKey( spep_8+60, ct8, 80);
setEffShake( spep_8, ct8, 60, 10);





------------------------------------------------------
-- 爆発 (200F)
------------------------------------------------------


spep_9=spep_8+60;

entryFade( spep_9-15, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景 ** --
entryFadeBg( spep_9, 0, 200, 0, 10, 10, 10,255); -- ベース暗め　背景

-- ** オーラエフェクト ** --
ef9 = entryEffect( spep_9, 1655, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_9, ef9, 0, 0, 0);
setEffScaleKey( spep_9, ef9, 1.0, 1.0);
setEffAlphaKey( spep_9, ef9, 255);
setEffRotateKey( spep_9, ef9, 0);

--[[
-- ** 集中線 ** --
shuchusen9 = entryEffectLife( spep_9, 906, 95, 0x100,  -1, 0,  100,  -50);   -- 集中線
setEffScaleKey( spep_9, shuchusen9, 1.3, 1.3);

entryFade(spep_9+82, 1,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen9 = entryEffectLife( spep_9+83, 911, 110, 0x100,  -1, 0,  100,  -50);   -- 集中線
setEffScaleKey( spep_9+83, shuchusen9, 1.2, 1.2);

-- 書き文字エントリー
ct9 = entryEffectLife( spep_9, 10008, 85, 0, -1, 0, -180, 300); -- ゴゴゴ・・・
setEffShake(spep_9, ct9, 51, 20);
setEffAlphaKey(spep_9, ct9, 255);
setEffAlphaKey(spep_9+84, ct9, 255);
setEffAlphaKey(spep_9+85, ct9, 0);
setEffScaleKey(spep_9, ct9, 2.0, 2.0);
setEffRotateKey( spep_9, ct9, 0);
]]
setDisp( spep_9, 1, 0);

playSe( spep_9+4, SE_09);
playSe( spep_9+43, SE_10);



-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+185, 9,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+195);

end

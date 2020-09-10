print ("[lua]sp385");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150699;--ef_001
SP_02 = 150700;--ef_002
SP_03 = 150701;--ef_003
SP_04 = 150702;--ef_004


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

------------------------------------------------------
--気溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 1); -- 味方表示
setDisp( 0, 1, 0); -- 敵非表示
changeAnime( 0, 0, 0); -- 立ちモーション
setMoveKey( 0, 0, 0, 0, 0); -- 味方位置
setMoveKey( 1, 0, 0, 0, 0);
setMoveKey( 2, 0, 0, 0, 0);
setMoveKey( 3, 0, 0, 0, 0);
setMoveKey( 4, 0, 0, 0, 0);
setMoveKey( 5, 0, 0, 0, 0);
setScaleKey( 0, 0, 1.8, 1.8);
setScaleKey( 1, 0, 1.8, 1.8);
setScaleKey( 2, 0, 1.8, 1.8);
setScaleKey( 3, 0, 1.8, 1.8);
setScaleKey( 4, 0, 1.8, 1.8);
setScaleKey( 5, 0, 1.8, 1.8);
setRotateKey( 0, 0, 0);
setRotateKey( 1, 0, 0);
setRotateKey( 2, 0, 0);
setRotateKey( 3, 0, 0);
setRotateKey( 4, 0, 0);
setRotateKey( 5, 0, 0);

changeAnime( 22, 0, 17); -- 溜め!
setShakeChara( 22, 0, 40, 10);

setDisp( 54, 0, 0);

-- ** 背景 ** --
entryFadeBg( 27, 10, 18, 0, 10, 10, 10, 255); -- ベース暗め　背景

-- ** オーラエフェクト ** --
aura_y1 = entryEffectLife( 22, 1500, 17, 0x100, -1, 0, 0, 0); -- eff_001
setEffMoveKey( 22, aura_y1,0,0,0);
setEffScaleKey( 22, aura_y1, 1.0, 1.0);
setEffRotateKey( 22, aura_y1, 0);
setEffAlphaKey( 22, aura_y1, 255);

aura_y2 = entryEffectLife( 36, 1500, 17, 0x100, -1, 0, 0, 0); -- eff_001
setEffMoveKey( 38, aura_y2,0,0,0);
setEffScaleKey( 36, aura_y2, 1.0, 1.0);
setEffRotateKey( 36, aura_y2, 0);
setEffAlphaKey( 36, aura_y2, 0);
setEffAlphaKey( 38, aura_y2, 0);
setEffAlphaKey( 39, aura_y2, 255);

-- ** 緑オーラ ** --
aura = entryEffectLife( 22, SP_01, 32, 0x80, -1, 0, 0, 0); -- オーラ
setEffMoveKey( 22, aura, 0, 0, 0);
setEffScaleKey( 22, aura, 1.0, 1.0);
setEffRotateKey( 22, aura, 0);
setEffAlphaKey( 22, aura, 255);

-- ** 文字_ズズズン ** --
zuzuzun1 = entryEffectLife( 22, 10013, 17, 0x100, -1, 0, 0, 0); -- ズズズン
setEffMoveKey( 22, zuzuzun1, 0, 250, 0);
setEffMoveKey( 30, zuzuzun1, 0, 350, 0);
setEffScaleKey( 22, zuzuzun1, 1, 1);
setEffScaleKey( 30, zuzuzun1, 2.4, 2.4);
setEffAlphaKey( 22, zuzuzun1, 255);
setEffRotateKey( 22, zuzuzun1, 0);
setEffShake( 30, zuzuzun1, 30, 15);

zuzuzun2 = entryEffectLife( 40, 10013, 10, 0x100, -1, 0, 0, 0); -- ズズズン
setEffMoveKey( 40, zuzuzun2, 0, 350, 0);
setEffScaleKey( 40, zuzuzun2, 2.4, 2.4);
setEffScaleKey( 50, zuzuzun2, 2.4, 2.4);
setEffAlphaKey( 40, zuzuzun2, 255);
setEffAlphaKey( 50, zuzuzun2, 255);
setEffShake( 40, zuzuzun2, 10, 15);

-- ** 音 ** --
playSe( 22, SE_01);
playSe( 36, SE_02);
-- ** ホワイトフェード ** --
entryFade( 50, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


------------------------------------------------------
-- カードカットイン(75F開始 164終わり)
------------------------------------------------------
spep_1 = 57;

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 99, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** キャラクター ** --
setMoveKey( spep_1-1, 0, 0, 0, 0);
setMoveKey( spep_1, 0, -2000, -54, 0);
setScaleKey( spep_1-1, 0, 1.8, 1.8);

-- ** カードカットイン ** --
speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1+1, 906, 99, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_1+1, shuchusen, 0, 0, 0);
setEffScaleKey( spep_1+1, shuchusen, 1.2, 1.2);
setEffAlphaKey( spep_1+1, shuchusen, 255);
setEffRotateKey( spep_1+1, shuchusen, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+70, 15, 8, 18, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+5, SE_05);

------------------------------------------------------
-- 溜め(165F開始-234まで）（69F）
------------------------------------------------------

spep_2 = spep_1+90; --150

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 21, 0, fcolor_r, fcolor_g, fcolor_b, 180); -- ベース暗め　背景
entryFadeBg( spep_2+22, 3, 45, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** 溜めエフェクト ** --
tame = entryEffect( spep_2, SP_02, 0x100, -1, 0, 0, 0); -- 溜めエフェクト
setEffMoveKey( spep_2, tame, 0, 0, 0);
setEffScaleKey( spep_2, tame, 1.0, 1.0);
setEffAlphaKey( spep_2, tame, 255);
setEffRotateKey( spep_2, tame, 0);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 69, 0x100, -1, 0, 0, 0); -- 集中線2
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.2, 1.2);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** 音 ** --
playSe( spep_2, SE_01);--気を貯める

-- ** ホワイトフェード ** --
entryFade( spep_2+62, 5, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
--両手
------------------------------------------------------
--(235F開始-369)

spep_3 = spep_2+70; --245

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 134, 0, 0, 0, 0, 180); -- ベース暗め　背景

entryFadeBg( spep_3,    15, 5, 2, 60, 200, 125, 80); -- GREEN(85,255,200)
entryFadeBg( spep_3+27,  0, 1, 4, 200, 200, 200, 80); --SIRO180 
entryFadeBg( spep_3+33,  7, 1, 0, 60, 200, 125, 80); -- GREEN
entryFadeBg( spep_3+42,  0, 1, 5, 200, 200, 200, 80); --SIRO
entryFadeBg( spep_3+49,  5, 1, 0, 60, 200, 125, 80); -- GREEN
entryFadeBg( spep_3+55,  0, 1, 4, 200, 200, 200, 80); --SIRO
entryFadeBg( spep_3+61,  7, 1, 0, 60, 200, 125, 80); -- GREEN
entryFadeBg( spep_3+70,  0, 1, 4, 200, 200, 200, 80); --SIRO
entryFadeBg( spep_3+76,  5, 1, 0, 60, 200, 125, 80); -- GREEN
entryFadeBg( spep_3+83,  0, 1, 4, 200, 200, 200, 80); --SIRO
entryFadeBg( spep_3+89,  6, 1, 0, 60, 200, 125, 80); -- GREEN
entryFadeBg( spep_3+97,  0, 1, 5, 200, 200, 200, 80); --SIRO
entryFadeBg( spep_3+104, 5, 1, 0, 60, 200, 125, 80); -- GREEN
entryFadeBg( spep_3+111, 0, 1, 5, 200, 200, 200, 80); --SIRO

-- ** 両手広げるエフェクト ** --
ryoute = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); -- 導入
setEffMoveKey( spep_3, ryoute, 0, 0, 0);
setEffScaleKey( spep_3, ryoute, 1.0, 1.0);
setEffAlphaKey( spep_3, ryoute, 255);
setEffRotateKey( spep_3, ryoute, 0);

-- ** セリフ＆顔カットイン ** --
speff = entryEffect( spep_3+18, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)　--17
setEffReplaceTexture( speff, 3, 2); -- カットイン差し替え
speff = entryEffect( spep_3+18, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ) --17
setEffReplaceTexture( speff, 4, 5); -- セリフ差し替え

-- ** 文字_ゴゴゴゴ ** --
ctgogo = entryEffectLife( spep_3+35, 190006, 65, 0x100, -1, 60, 0, 500); -- ゴゴゴゴ
setEffScaleKey( spep_3+35, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_3+35, ctgogo, 10);
setEffAlphaKey( spep_3+35, ctgogo, 255);

setEffScaleKey( spep_3+95, ctgogo, 0.7, 0.7);
setEffRotateKey( spep_3+95, ctgogo, 10);
setEffAlphaKey( spep_3+95, ctgogo, 255);

setEffScaleKey( spep_3+100, ctgogo, 2.0, 2.0);
setEffRotateKey( spep_3+100, ctgogo, 10);
setEffAlphaKey( spep_3+100, ctgogo, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 134, 0x100, -1, 0, 0, 0); -- 集中線3
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_3+40, SE_04);--カットイン攻撃

-- ** ホワイトフェード ** --
entryFade( spep_3+119, 10, 6, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade(344-362)


------------------------------------------------------
-- 放つ(370F)(100F)
------------------------------------------------------
spep_4 = spep_3+135; --380

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 100, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** 放つエフェクト ** --
gokuha = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); -- 放つエフェクト
setEffMoveKey( spep_4, gokuha, 0, 0, 0);
setEffScaleKey( spep_4, gokuha, 1.0, 1.0);
setEffAlphaKey( spep_4, gokuha, 255);
setEffRotateKey( spep_4, gokuha, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_4, 921, 100, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_4, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_4, okuyukiryusennaname, -90);
setEffScaleKey( spep_4, okuyukiryusennaname, 1.6, 1.6);
setEffAlphaKey( spep_4, okuyukiryusennaname, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 390; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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
-----------------------------------------------------
-- ** 音 ** --
playSe( spep_4+21, SE_06);--発射

-- ** 奥行き流線斜め ** --
tatenaname = entryEffectLife( spep_4+21, 906, 79, 0x100,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_4+21, tatenaname, 0, 0, 0);
setEffRotateKey( spep_4+21, tatenaname, 0);
setEffScaleKey( spep_4+21, tatenaname, 1.0, 1.0);
setEffAlphaKey( spep_4+21, tatenaname, 255);

-- ** ホワイトフェード ** --
entryFade( spep_4+92, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
-----------------------------------------------------
--SP_05 = 190000-- ギャン青(60F)
-----------------------------------------------------
spep_5 = spep_4+96; --476

playSe( spep_5, 1024);

--entryFade( spep_5-7, 3, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

gya = entryEffectLife( spep_5, 190000 ,60, 0x100,-1,0,0,0);
setEffMoveKey( spep_5, gya ,0,0,0);
setEffScaleKey( spep_5, gya ,1.0,1.0);
setEffAlphaKey( spep_5, gya ,255);
setEffShake( spep_5, gya, 10);

-- 書き文字エントリー
ct4 = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_5, ct4, 255);
setEffScaleKey( spep_5, ct4, 3.0, 3.0);
setEffScaleKey( spep_5+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_5, ct4, 255);
setEffAlphaKey( spep_5+60, ct4, 80);
setEffShake( spep_5, ct4, 60, 10);

------------------------------------------------------
-- 最後の爆発 (110F)
------------------------------------------------------
spep_6 = spep_5+60;
entryFade( spep_6-5, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 140, 0, 0, 0, 0, 255); -- ベース暗め　背景

last = entryEffectLife(  spep_6,   1650, 139,  0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_6, last, 0, 0, 0);
setEffScaleKey( spep_6, last, 1.0, 1.0);
setEffAlphaKey( spep_6, last, 255);
setEffRotateKey( spep_6, last, 0);

setEffMoveKey(spep_6+140, last, 0, 0, 0);
setEffScaleKey( spep_6+140, last, 1.0, 1.0);
setEffAlphaKey( spep_6+140, last, 255);
setEffRotateKey( spep_6+140, last, 0);

shuchusenlast = entryEffectLife( spep_6+0, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_6+0, shuchusenlast, 0, 0, 0);
setEffScaleKey( spep_6+0, shuchusenlast, 1.2, 1.2);
setEffAlphaKey( spep_6+0, shuchusenlast, 255);
setEffRotateKey( spep_6+0, shuchusenlast, 0);

playSe( spep_6, SE_09);
playSe( spep_6+30, SE_10);

-- ダメージ表示
dealDamage(spep_6+16);
tyousei = 8;
entryFade( spep_6+130-tyousei, 9,  10+tyousei, 1, 8, 8, 8, 255);             -- black fade
setEffMoveKey(spep_6+130-tyousei, last, 0, 0, 0);
setEffScaleKey( spep_6+130-tyousei, last, 1.0, 1.0);
setEffAlphaKey( spep_6+130-tyousei, last, 255);
setEffRotateKey( spep_6+130-tyousei, last, 0);
setEffMoveKey(spep_6+131-tyousei, last, 0, 0, 0);
setEffScaleKey( spep_6+131-tyousei, last, 1.0, 1.0);
setEffAlphaKey( spep_6+131-tyousei, last, 0);
setEffRotateKey( spep_6+131-tyousei, last, 0);
endPhase(spep_6+144);

else

--------------------------------------------------------
--敵側の動き
--------------------------------------------------------
------------------------------------------------------
--気溜め
------------------------------------------------------
--kame_flag = 0x00;
--if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 1); -- 味方表示
setDisp( 0, 1, 0); -- 敵非表示
changeAnime( 0, 0, 0); -- 立ちモーション
setMoveKey( 0, 0, 0, 0, 0); -- 味方位置
setMoveKey( 1, 0, 0, 0, 0);
setMoveKey( 2, 0, 0, 0, 0);
setMoveKey( 3, 0, 0, 0, 0);
setMoveKey( 4, 0, 0, 0, 0);
setMoveKey( 5, 0, 0, 0, 0);
setScaleKey( 0, 0, 1.8, 1.8);
setScaleKey( 1, 0, 1.8, 1.8);
setScaleKey( 2, 0, 1.8, 1.8);
setScaleKey( 3, 0, 1.8, 1.8);
setScaleKey( 4, 0, 1.8, 1.8);
setScaleKey( 5, 0, 1.8, 1.8);
setRotateKey( 0, 0, 0);
setRotateKey( 1, 0, 0);
setRotateKey( 2, 0, 0);
setRotateKey( 3, 0, 0);
setRotateKey( 4, 0, 0);
setRotateKey( 5, 0, 0);

changeAnime( 22, 0, 17); -- 溜め!
setShakeChara( 22, 0, 40, 10);

setDisp( 54, 0, 0);

-- ** 背景 ** --
entryFadeBg( 33, 10, 18, 0, 10, 10, 10, 255); -- ベース暗め　背景

-- ** オーラエフェクト ** --
aura_y1 = entryEffectLife( 22, 1500, 17, 0x100, -1, 0, 0, 0); -- eff_001
setEffMoveKey( 22, aura_y1,0,0,0);
setEffScaleKey( 22, aura_y1, 1.0, 1.0);
setEffRotateKey( 22, aura_y1, 0);
setEffAlphaKey( 22, aura_y1, 255);

aura_y2 = entryEffectLife( 36, 1500, 17, 0x100, -1, 0, 0, 0); -- eff_001
setEffMoveKey( 38, aura_y2,0,0,0);
setEffScaleKey( 36, aura_y2, 1.0, 1.0);
setEffRotateKey( 36, aura_y2, 0);
setEffAlphaKey( 36, aura_y2, 0);
setEffAlphaKey( 38, aura_y2, 0);
setEffAlphaKey( 39, aura_y2, 255);

-- ** 緑オーラ ** --
aura = entryEffectLife( 22, SP_01, 32, 0x80, -1, 0, 0, 0); -- オーラ
setEffMoveKey( 22, aura, 0, 0, 0);
setEffScaleKey( 22, aura, 1.0, 1.0);
setEffRotateKey( 22, aura, 0);
setEffAlphaKey( 22, aura, 255);

-- ** 文字_ズズズン ** --
zuzuzun1 = entryEffectLife( 22, 10013, 17, 0x100, -1, 0, 0, 0); -- ズズズン
setEffMoveKey( 22, zuzuzun1, 0, 250, 0);
setEffMoveKey( 30, zuzuzun1, 0, 350, 0);
setEffScaleKey( 22, zuzuzun1, 1, 1);
setEffScaleKey( 30, zuzuzun1, 2.4, 2.4);
setEffAlphaKey( 22, zuzuzun1, 255);
setEffRotateKey( 22, zuzuzun1, 0);
setEffShake( 30, zuzuzun1, 30, 15);

zuzuzun2 = entryEffectLife( 40, 10013, 10, 0x100, -1, 0, 0, 0); -- ズズズン
setEffMoveKey( 40, zuzuzun2, 0, 350, 0);
setEffScaleKey( 40, zuzuzun2, 2.4, 2.4);
setEffScaleKey( 50, zuzuzun2, 2.4, 2.4);
setEffAlphaKey( 40, zuzuzun2, 255);
setEffAlphaKey( 50, zuzuzun2, 255);
setEffShake( 40, zuzuzun2, 10, 15);

-- ** 音 ** --
playSe( 22, SE_01);
playSe( 36, SE_02);
-- ** ホワイトフェード ** --
entryFade( 50, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- カードカットイン(75F開始 164終わり)
------------------------------------------------------
spep_1 = 57;

-- ** 背景 ** --
entryFadeBg( spep_1, 0, 99, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** キャラクター ** --
setMoveKey( spep_1-1, 0, 0, 0, 0);
setMoveKey( spep_1, 0, -2000, -54, 0);
setScaleKey( spep_1-1, 0, 1.8, 1.8);

-- ** カードカットイン ** --
speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1+1, 906, 99, 0x80, -1, 0, 0, 0); -- 集中線
setEffMoveKey( spep_1+1, shuchusen, 0, 0, 0);
setEffScaleKey( spep_1+1, shuchusen, 1.2, 1.2);
setEffAlphaKey( spep_1+1, shuchusen, 255);
setEffRotateKey( spep_1+1, shuchusen, 0);

-- ** ホワイトフェード ** --
entryFade( spep_1+70, 15, 8, 18, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1+5, SE_05);

------------------------------------------------------
-- 溜め(165F開始-234まで）（69F）
------------------------------------------------------

spep_2 = spep_1+90; --150

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 21, 0, fcolor_r, fcolor_g, fcolor_b, 180); -- ベース暗め　背景
entryFadeBg( spep_2+22, 3, 45, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** 溜めエフェクト ** --
tame = entryEffect( spep_2, SP_02, 0x100, -1, 0, 0, 0); -- 溜めエフェクト
setEffMoveKey( spep_2, tame, 0, 0, 0);
setEffScaleKey( spep_2, tame, -1.0, 1.0);
setEffAlphaKey( spep_2, tame, 255);
setEffRotateKey( spep_2, tame, 0);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 69, 0x100, -1, 0, 0, 0); -- 集中線2
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.2, 1.2);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** 音 ** --
playSe( spep_2, SE_01);--気を貯める

-- ** ホワイトフェード ** --
entryFade( spep_2+62, 5, 8, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
--両手
------------------------------------------------------
--(235F開始-369)

spep_3 = spep_2+70; --245

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 134, 0, 0, 0, 0, 180); -- ベース暗め　背景

entryFadeBg( spep_3,    15, 5, 2, 60, 200, 125, 80); -- GREEN(85,255,200)
entryFadeBg( spep_3+27,  0, 1, 4, 200, 200, 200, 80); --SIRO180 
entryFadeBg( spep_3+33,  7, 1, 0, 60, 200, 125, 80); -- GREEN
entryFadeBg( spep_3+42,  0, 1, 5, 200, 200, 200, 80); --SIRO
entryFadeBg( spep_3+49,  5, 1, 0, 60, 200, 125, 80); -- GREEN
entryFadeBg( spep_3+55,  0, 1, 4, 200, 200, 200, 80); --SIRO
entryFadeBg( spep_3+61,  7, 1, 0, 60, 200, 125, 80); -- GREEN
entryFadeBg( spep_3+70,  0, 1, 4, 200, 200, 200, 80); --SIRO
entryFadeBg( spep_3+76,  5, 1, 0, 60, 200, 125, 80); -- GREEN
entryFadeBg( spep_3+83,  0, 1, 4, 200, 200, 200, 80); --SIRO
entryFadeBg( spep_3+89,  6, 1, 0, 60, 200, 125, 80); -- GREEN
entryFadeBg( spep_3+97,  0, 1, 5, 200, 200, 200, 80); --SIRO
entryFadeBg( spep_3+104, 5, 1, 0, 60, 200, 125, 80); -- GREEN
entryFadeBg( spep_3+111, 0, 1, 5, 200, 200, 200, 80); --SIRO

-- ** 両手広げるエフェクト ** --
ryoute = entryEffect( spep_3, SP_03, 0x100, -1, 0, 0, 0); -- 導入
setEffMoveKey( spep_3, ryoute, 0, 0, 0);
setEffScaleKey( spep_3, ryoute, -1.0, 1.0);
setEffAlphaKey( spep_3, ryoute, 255);
setEffRotateKey( spep_3, ryoute, 0);

--[[
-- ** セリフ＆顔カットイン ** --
speff = entryEffect( spep_3+18, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)　--17
setEffReplaceTexture( speff, 3, 2); -- カットイン差し替え
speff = entryEffect( spep_3+18, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ) --17
setEffReplaceTexture( speff, 4, 5); -- セリフ差し替え
]]--

-- ** 文字_ゴゴゴゴ ** --
ctgogo = entryEffectLife( spep_3+35, 190006, 65, 0x100, -1, 60, 0, 500); -- ゴゴゴゴ
setEffScaleKey( spep_3+35, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_3+35, ctgogo, 10);
setEffAlphaKey( spep_3+35, ctgogo, 255);

setEffScaleKey( spep_3+95, ctgogo, -0.7, 0.7);
setEffRotateKey( spep_3+95, ctgogo, 10);
setEffAlphaKey( spep_3+95, ctgogo, 255);

setEffScaleKey( spep_3+100, ctgogo, -2.0, 2.0);
setEffRotateKey( spep_3+100, ctgogo, 10);
setEffAlphaKey( spep_3+100, ctgogo, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 134, 0x100, -1, 0, 0, 0); -- 集中線3
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.2, 1.2);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_3+40, SE_04);--カットイン攻撃

-- ** ホワイトフェード ** --
entryFade( spep_3+119, 10, 6, 10, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade(344-362)


------------------------------------------------------
-- 放つ(370F)(100F)
------------------------------------------------------
spep_4 = spep_3+135; --380

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 100, 0, 10, 10, 10, 180); -- ベース暗め　背景

-- ** 放つエフェクト ** --
gokuha = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0); -- 放つエフェクト
setEffMoveKey( spep_4, gokuha, 0, 0, 0);
setEffScaleKey( spep_4, gokuha, -1.0, 1.0);
setEffAlphaKey( spep_4, gokuha, 255);
setEffRotateKey( spep_4, gokuha, 0);

-- ** 奥行き流線斜め ** --
okuyukiryusennaname = entryEffectLife( spep_4, 921, 100, 0x80,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_4, okuyukiryusennaname, 0, 0, 0);
setEffRotateKey( spep_4, okuyukiryusennaname, -90);
setEffScaleKey( spep_4, okuyukiryusennaname, 1.6, 1.6);
setEffAlphaKey( spep_4, okuyukiryusennaname, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 390; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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
-----------------------------------------------------
-- ** 音 ** --
playSe( spep_4+21, SE_06);--発射

-- ** 奥行き流線斜め ** --
tatenaname = entryEffectLife( spep_4+21, 906, 79, 0x100,  -1,  0,  0,  0); -- 奥行き流線斜め
setEffMoveKey( spep_4+21, tatenaname, 0, 0, 0);
setEffRotateKey( spep_4+21, tatenaname, 0);
setEffScaleKey( spep_4+21, tatenaname, 1.0, 1.0);
setEffAlphaKey( spep_4+21, tatenaname, 255);

-- ** ホワイトフェード ** --
entryFade( spep_4+92, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
-----------------------------------------------------
--SP_05 = 190000-- ギャン青(60F)
-----------------------------------------------------
spep_5 = spep_4+96; --476

playSe( spep_5, 1024);

--entryFade( spep_5-7, 3, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

gya = entryEffectLife( spep_5, 190000 ,60, 0x100,-1,0,0,0);
setEffMoveKey( spep_5, gya ,0,0,0);
setEffScaleKey( spep_5, gya ,1.0,1.0);
setEffAlphaKey( spep_5, gya ,255);
setEffShake( spep_5, gya, 10);

-- 書き文字エントリー
ct4 = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_5, ct4, 255);
setEffScaleKey( spep_5, ct4, 3.0, 3.0);
setEffScaleKey( spep_5+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_5, ct4, 255);
setEffAlphaKey( spep_5+60, ct4, 80);
setEffShake( spep_5, ct4, 60, 10);

------------------------------------------------------
-- 最後の爆発 (110F)
------------------------------------------------------
spep_6 = spep_5+60;
entryFade( spep_6-5, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 140, 0, 0, 0, 0, 255); -- ベース暗め　背景


last = entryEffectLife(  spep_6,   1650, 139,  0x80,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_6, last, 0, 0, 0);
setEffScaleKey( spep_6, last, 1.0, 1.0);
setEffAlphaKey( spep_6, last, 255);
setEffRotateKey( spep_6, last, 0);

setEffMoveKey(spep_6+140, last, 0, 0, 0);
setEffScaleKey( spep_6+140, last, 1.0, 1.0);
setEffAlphaKey( spep_6+140, last, 255);
setEffRotateKey( spep_6+140, last, 0);

shuchusenlast = entryEffectLife( spep_6+0, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey(spep_6+0, shuchusenlast, 0, 0, 0);
setEffScaleKey( spep_6+0, shuchusenlast, 1.2, 1.2);
setEffAlphaKey( spep_6+0, shuchusenlast, 255);
setEffRotateKey( spep_6+0, shuchusenlast, 0);

playSe( spep_6, SE_09);
playSe( spep_6+30, SE_10);

-- ダメージ表示
dealDamage(spep_6+16);
tyousei = 8;
entryFade( spep_6+130-tyousei, 9,  10+tyousei, 1, 8, 8, 8, 255);             -- black fade
setEffMoveKey(spep_6+130-tyousei, last, 0, 0, 0);
setEffScaleKey( spep_6+130-tyousei, last, 1.0, 1.0);
setEffAlphaKey( spep_6+130-tyousei, last, 255);
setEffRotateKey( spep_6+130-tyousei, last, 0);
setEffMoveKey(spep_6+131-tyousei, last, 0, 0, 0);
setEffScaleKey( spep_6+131-tyousei, last, 1.0, 1.0);
setEffAlphaKey( spep_6+131-tyousei, last, 0);
setEffRotateKey( spep_6+131-tyousei, last, 0);
endPhase(spep_6+144);

end
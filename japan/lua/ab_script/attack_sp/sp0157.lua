
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

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

tyo = -40;
tyo2 = -60;

SP_01 = 100245; --登場時
SP_02 = 100246; --光弾発射
SP_03 = 100247; --迫る
SP_04 = 1560; --迫る


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 1);
setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   0,   1,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setMoveKey(   1,   1,    0, 0,   0);
setMoveKey(   2,   0,    0, 0,   0);
setMoveKey(   2,   1,    0, 0,   0);
setMoveKey(   3,   0,    0, 0,   0);
setMoveKey(   3,   1,    0, 0,   0);

setScaleKey(   0,   0, 1.2, 1.2);
setScaleKey(   0,   1, 1.2, 1.2);
setRotateKey(   0,   1, 0);
setRotateKey(   0,   0, 0);
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 17);                  -- かめはめ波溜め

playSe(  0, SE_02);
playSe( 30, SE_04);
playSe( 60, SE_02);
playSe( 90, SE_02);
playSe( 120, SE_02);

blue = entryEffectLife(  0,   SP_01, 127, 0x40+0x80,  0,  300,  0,  70); -- オーラ
setEffScaleKey( 0, blue, 1.3, 1.3);

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了 87
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

entryFade( 123, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setShakeChara( 0, 0, 125, 7);
setShake( 0, 125, 10);

-- 書き文字エントリー
ctgogo = entryEffectLife( 30, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake( 30, ctgogo, 70, 10);
setEffScaleKey( 30, ctgogo, 0.8, 0.8);
setEffRotateKey( 30, ctgogo, 0);
setEffAlphaKey( 30, ctgogo, 255);

shuchusen5 = entryEffectLife( 0, 911, 127, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

entryFadeBg( 0, 0, 127, 0, fcolor_r, fcolor_g, fcolor_b, 255);       -- ベース暗め　背景

setScaleKey(   126,   0, 1.5, 1.5);
setMoveKey(   126,   0, 0, 0, 0);

spep_2 = 132;
setScaleKey(  spep_2,  0,  1.5,  1.5);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setScaleKey( spep_2-1,   0, 1.5, 1.5);
--setScaleKey( spep_2,   0, 1.0, 1.0);
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 30); -- かめはめ波溜めポーズ

setScaleKey( spep_3-2,   0, 1.3, 1.3);
setScaleKey( spep_3+30,  0, 1.0, 1.0);
setMoveKey(  spep_3-2,    0,  350,  -500,   -50);
setMoveKey(  spep_3+30,    0,   -250,  350,   50);

changeAnime( spep_3+40, 0, 31); -- かめはめ波発射ポーズ
setScaleKey( spep_3+38,  0, 1.0, 1.0);
setScaleKey( spep_3+43,  0, 1.5, 1.5);
setMoveKey(  spep_3+38,    0,   -280,  260,   30);
setMoveKey(  spep_3+40,    0,   -200, 50,   -60);

playSe( spep_3, SE_04);

setShakeChara( spep_3, 0, 38, 8);
setShakeChara( spep_3+38, 0, 137, 20);

kamehame_beam = entryEffect( spep_3+50, SP_02, 0x40,  0,  300,  200, -50);   -- 伸びるかめはめ波

playSe( spep_3+51, SE_03);--273
playSe( spep_3+76, SE_03);--298
playSe( spep_3+101, SE_03);--323

-- 途中からカメハメハが伸びる
setMoveKey(  spep_3+135,    0,   -120,  0,   0);
setMoveKey(  spep_3+165,    0,   -570,  175,   80);

--entryFade( spep_3+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 170, 0, 0, 0, 0, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_3, 920, 38, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 250);
setEffScaleKey(spep_3, sen2, 1.6, 1.6);

sen7 = entryEffectLife( spep_3+39, 921, 131, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen7, 200);
setEffScaleKey(spep_3, sen7, 1.5, 1.5);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_3+130, 10012, 40, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+130, ctZuo, 32, 5);
setEffAlphaKey(spep_3+130, ctZuo, 255);
setEffAlphaKey(spep_3+150, ctZuo, 255);
setEffAlphaKey(spep_3+165, ctZuo, 0);
setEffScaleKey(spep_3+130, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_3+150, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_3+165, ctZuo, 6.0, 6.0);

playSe( spep_3+140, SE_07); --362

entryFade( spep_3+165, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_3+173);

spep_4=spep_3+165+10; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4-1,    1,  500,  0,   0);
setMoveKey(  spep_4,    1,  500,  0,   0);

setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  0.7, 0.7);

setMoveKey(  spep_4+30,    1,   180, 0,   -20);
setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4+20, SE_06);

kamehame_beam2 = entryEffectLife( spep_4, SP_03, 100,   0, -1,  0,  0,  0);   -- 迫るかめはめ波 376で画面いっぱい
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+61, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+63, kamehame_beam2, 3.5, 3.5);
setEffScaleKey(spep_4+100, kamehame_beam2, 3.5, 3.5);

setEffMoveKey(spep_4, kamehame_beam2, 0, 200,0);
setEffMoveKey(spep_4+62, kamehame_beam2, 0,200,0);
setEffMoveKey(spep_4+63, kamehame_beam2, 0, 250,0);
setEffMoveKey(spep_4+100, kamehame_beam2, 0, 250,0);

setEffRotateKey(spep_4, kamehame_beam2, 0);
setEffRotateKey(spep_4+100, kamehame_beam2, -60);

setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

playSe( spep_4+55, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_4+55, 1, 108);
setMoveKey( spep_4+60, 1,  180,   -0,  -20);
setMoveKey(  spep_4+76, 1,  550,    -0,  10);
setScaleKey( spep_4+55, 1,  1.6, 1.6);
--setScaleKey( spep_4+55, 1,  1.5, 1.5);
setScaleKey( spep_4+76, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( spep_4, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ctZudodo, 99, 20);
setEffScaleKey( spep_4, ctZudodo, 2.4, 2.4);
setEffRotateKey(spep_4, ctZudodo, 70);
setEffAlphaKey(spep_4, ctZudodo, 255);
setEffAlphaKey(spep_4+60, ctZudodo, 255);
setEffAlphaKey(spep_4+80, ctZudodo, 0);

entryFade( spep_4+74, 8,  20, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setMoveKey(   SP_dodge,    1,   180, 0, -20);
setScaleKey(   SP_dodge,   1,   1.6,  1.6);
setRotateKey( SP_dodge, 1, 0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(   SP_dodge+1,    1,   180, 0, -20);
setScaleKey(   SP_dodge+1,   1,   1.6,  1.6);
setRotateKey( SP_dodge+1, 1, 0);

setMoveKey(   SP_dodge+8,    1,   180, 0, -20);
setScaleKey(   SP_dodge+8,   1,   1.6,  1.6);
setRotateKey( SP_dodge+8, 1, 0);

setMoveKey( SP_dodge+9, 1, 0, 0, 0);
setScaleKey( SP_dodge+9, 1, 1.2, 1.2);
setRotateKey( SP_dodge+9, 1, 0);

endPhase(SP_dodge+10);
do return end
else end

spep_5=spep_4+82+17 --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

expl = entryEffect( spep_5,SP_04,0x80,-1,0,0,0);
setEffScaleKey( spep_5,expl,1.1,1.1);

setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_10);
shuchusen5 = entryEffectLife( spep_5+4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_5+4,shuchusen5,1.3,1.3);

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+98, 8,  20, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111);
else

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 17);                  -- かめはめ波溜め

playSe(  0, SE_02);
playSe( 30, SE_02);
playSe( 60, SE_02);
playSe( 90, SE_02);
playSe( 120, SE_02);

blue = entryEffectLife(  0,   SP_01, 127, 0x40+0x80,  0,  300,  0,  70); -- オーラ
setEffScaleKey( 0, blue, 1.3, 1.3);

entryFade( 123, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
setShakeChara( 0, 0, 125, 7);
setShake( 0, 125, 10);

-- 書き文字エントリー
ctgogo = entryEffectLife( 30, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake( 30, ctgogo, 70, 10);
setEffScaleKey( 30, ctgogo, -0.8, 0.8);
setEffRotateKey( 30, ctgogo, 0);
setEffAlphaKey( 30, ctgogo, 255);

shuchusen5 = entryEffectLife( 0, 911, 127, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 125, shuchusen5, 1.0, 1.0);

entryFadeBg( 0, 0, 127, 0, fcolor_r, fcolor_g, fcolor_b, 255);       -- ベース暗め　背景

setScaleKey(   126,   0, 1.5, 1.5);
setMoveKey(   126,   0, 0, 0, 0);

spep_2 = 132;
setScaleKey(  spep_2,  0,  1.5,  1.5);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2-1,    0,      100,  -54,   0);
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 30); -- かめはめ波溜めポーズ

setScaleKey( spep_3-2,   0, 1.3, 1.3);
setScaleKey( spep_3+30,  0, 1.0, 1.0);
setMoveKey(  spep_3-2,    0,  350,  -500,   -50);
setMoveKey(  spep_3+30,    0,   -250,  350,   50);

changeAnime( spep_3+40, 0, 31); -- かめはめ波発射ポーズ
setScaleKey( spep_3+38,  0, 1.0, 1.0);
setScaleKey( spep_3+43,  0, 1.5, 1.5);
setMoveKey(  spep_3+38,    0,   -280,  260,   30);
setMoveKey(  spep_3+40,    0,   -200, 50,   -60);

playSe( spep_3, SE_04);

setShakeChara( spep_3, 0, 38, 8);
setShakeChara( spep_3+38, 0, 137, 20);

kamehame_beam = entryEffect( spep_3+50, SP_02, 0x40,  0,  300,  200, -50);   -- 伸びるかめはめ波

playSe( spep_3+51, SE_03);--273
playSe( spep_3+76, SE_03);--298
playSe( spep_3+101, SE_03);--323

-- 途中からカメハメハが伸びる
setMoveKey(  spep_3+135,    0,   -120,  0,   0);
--setMoveKey(  spep_3+90,    0,   -450,  100,   40);
setMoveKey(  spep_3+165,    0,   -570,  175,   80);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 170, 0, 0, 0, 0, 255);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_3, 920, 38, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 250);
setEffScaleKey(spep_3, sen2, 1.6, 1.6);

sen7 = entryEffectLife( spep_3+39, 921, 131, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen7, 200);
setEffScaleKey(spep_3, sen7, 1.5, 1.5);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_3+130, 10012, 40, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+130, ctZuo, 32, 5);
setEffAlphaKey(spep_3+130, ctZuo, 255);
setEffAlphaKey(spep_3+150, ctZuo, 255);
setEffAlphaKey(spep_3+165, ctZuo, 0);
setEffScaleKey(spep_3+130, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_3+150, ctZuo, 1.3, 1.3);
setEffScaleKey(spep_3+165, ctZuo, 6.0, 6.0);

playSe( spep_3+140, SE_07); --362

entryFade( spep_3+165, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(spep_3+173);

spep_4=spep_3+165+10; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4-1,    1,  500,  0,   0);
setMoveKey(  spep_4,    1,  500,  0,   0);
--setMoveKey(  spep_4+1,    1,  235,  0,   0);
setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  0.7, 0.7);

setMoveKey(  spep_4+30,    1,   180, 0,   -20);
setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4+20, SE_06);

kamehame_beam2 = entryEffectLife( spep_4, SP_03, 100,   0, -1,  0,  0,  0);   -- 迫るかめはめ波 376で画面いっぱい
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+61, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+63, kamehame_beam2, 3.5, 3.5);
setEffScaleKey(spep_4+100, kamehame_beam2, 3.5, 3.5);

setEffMoveKey(spep_4, kamehame_beam2, 0, 200,0);
setEffMoveKey(spep_4+62, kamehame_beam2, 0,200,0);
setEffMoveKey(spep_4+63, kamehame_beam2, 0, 250,0);
setEffMoveKey(spep_4+100, kamehame_beam2, 0, 250,0);

setEffRotateKey(spep_4, kamehame_beam2, 0);
setEffRotateKey(spep_4+100, kamehame_beam2, -60);

setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

playSe( spep_4+55, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_4+55, 1, 108);
setMoveKey( spep_4+60, 1,  180,   -0,  -20);
setMoveKey(  spep_4+76, 1,  550,    -0,  10);
setScaleKey( spep_4+55, 1,  1.6, 1.6);
--setScaleKey( spep_4+55, 1,  1.5, 1.5);
setScaleKey( spep_4+76, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( spep_4, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ctZudodo, 99, 20);
setEffScaleKey( spep_4, ctZudodo, 2.4, 2.4);
setEffRotateKey(spep_4, ctZudodo, 0);
setEffAlphaKey(spep_4, ctZudodo, 255);
setEffAlphaKey(spep_4+60, ctZudodo, 255);
setEffAlphaKey(spep_4+80, ctZudodo, 0);

entryFade( spep_4+74, 8,  20, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setMoveKey(   SP_dodge+1,    1,   180, 0, -20);
setScaleKey(   SP_dodge+1,   1,   1.6,  1.6);
setRotateKey( SP_dodge+1, 1, 0);

setMoveKey(   SP_dodge+8,    1,   180, 0, -20);
setScaleKey(   SP_dodge+8,   1,   1.6,  1.6);
setRotateKey( SP_dodge+8, 1, 0);

setMoveKey( SP_dodge+9, 1, 0, 0, 0);
setScaleKey( SP_dodge+9, 1, 1.2, 1.2);
setRotateKey( SP_dodge+9, 1, 0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

spep_5=spep_4+82+17 --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

expl = entryEffect( spep_5,SP_04,0x80,-1,0,0,0);
setEffScaleKey( spep_5,expl,1.1,1.1);

setDisp( spep_5, 1, 0);

playSe( spep_5+4, SE_10);
shuchusen5 = entryEffectLife( spep_5+4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_5+4,shuchusen5,1.3,1.3);

--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+98, 8,  20, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111);

end

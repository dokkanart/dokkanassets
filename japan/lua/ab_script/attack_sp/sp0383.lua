

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1066;
SE_13 = 1068; --爆煙
--1011
--1068


SP_01 = 150661; --溜め
SP_02 = 150662; --瞬間移動
SP_03 = 150663; --発射
SP_04 = 150664; --溜め（敵）
SP_05 = 150665; --瞬間移動（敵）
SP_06 = 150666; --発射（敵）

SP_07 = 1604;



multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜め(110F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


setVisibleUI(0, 0);
setMoveKey(   0,  0,  0,  0,  0);


playSe( 15, SE_04);

ef = entryEffectLife( 0, SP_01,  108, 0x80,  -1,  0,  0,  0);
setEffMoveKey(  0,  ef,  0,  0,   0);
setEffScaleKey( 0, ef, 1.0, 1.0);
setEffRotateKey(0, ef, 0);
setEffAlphaKey( 0, ef, 255);
setEffShake(0, ef, 120, 10);

shuchusen = entryEffectLife( 0, 906, 110, 0x80, -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.8, 1.8);

setDisp( 0, 1, 0);
speff = entryEffect(  0,   1504,   0x80,  -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  0,   1505,   0x80,  -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--speff = entryEffectLife( 0, 1503, 108, 0x80,  -1, 0,  0,  0);   -- 背景


ct = entryEffectLife( 15, 190006, 70, 0x80, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake(15, ct, 71, 8);
setEffScaleKey(15, ct, 0.7, 0.7);

playSe( 90, 43);

--entryFade( 17, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 99, 3, 7, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( 0, 0, 110, 0, 10, 10, 10, 210);       -- ベース暗め　背景
spep_1 = 108;

------------------------------------------------------
-- 構え…40
------------------------------------------------------
setDisp( spep_1, 1, 1);
changeAnime( spep_1-1, 1, 101);                        -- 気ダメ後ろ
changeAnime( spep_1+3, 1, 104);
setMoveKey(  spep_1-2,    1,   180,  -50,   0);
setMoveKey(  spep_1+28,    1,  180,  -50,   0);
setMoveKey(  spep_1+30,    1,  250,  0,   0);
setScaleKey(  spep_1-1,   1,   1.3,  1.3);
setScaleKey(  spep_1+28,   1,   1.3,  1.3);
setScaleKey(  spep_1+30,   1,   2.3,  2.3);
setShakeChara(  spep_1+3,   1,   10,  15);

setDisp( spep_1+40, 1, 0);

ef1 = entryEffect( spep_1, SP_02, 0x100, -1,  0,  0,  0);
setEffAlphaKey(spep_1, ef1, 255);
setEffScaleKey( spep_1, ef1, 1.0, 1.0);


shuchusen1 = entryEffectLife( spep_1+3, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.3, 1.3);

--playSe( spep_1, 43);


entryFadeBg( spep_1, 0, 110, 0, 10, 10, 10, 210);       -- ベース暗め　背景

ct1 = entryEffectLife( spep_1+3, 10001, 22, 0x100, -1, 0, 230, 200); -- !?
setEffScaleKey( spep_1, ct1, 2.0, 2.0);
setEffRotateKey(spep_1, ct1, 20);

entryFade( spep_1+28, 5, 7, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2=spep_1+40

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
--speff = entryEffectLife( spep_1, 1503, 90, 0x80,  -1, 0,  0,  0);   -- 背景

shuchusen2 = entryEffectLife( spep_2, 906, 87, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);


-- ** エフェクト等 ** --
entryFade( spep_2+83, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_2+90; --120


------------------------------------------------------
-- ビーム移動！150
------------------------------------------------------
setDisp( spep_3, 1, 1);
changeAnime( spep_3-1, 1, 108);                        -- 気ダメ後ろ
setMoveKey(  spep_3-1,    1,   150,  300,   0);
setMoveKey(  spep_3+5,    1,  200,  350,   0);
setMoveKey(  spep_3+35,    1,  200,  350,   0);
setRotateKey(spep_3, 1, -40);
setScaleKey(  spep_3-1,   1,   3.0,  3.0);
setScaleKey(  spep_3+10,   1,   1.0,  1.0);
setScaleKey(  spep_3+35,   1,   1.0,  1.0);

setDisp( spep_3+35, 1, 0);

ef3 = entryEffectLife( spep_3, SP_03, 150, 0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_3,  ef3,  0,  0,   0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffRotateKey(spep_3, ef3, 0);
setEffAlphaKey( spep_3, ef3, 255);

--playSe( spep_3, SE_06);

-- ** エフェクト等 ** --

--spname = entryEffectLife( spep_3, 1508,  46,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);

entryFadeBg( spep_3, 0, 150, 0, 10, 10, 10, 255);       -- ベース暗め　背景

shuchusen3 = entryEffectLife( spep_3, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);

ryusen3 = entryEffectLife( spep_3, 921, 150, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, ryusen3, -45);
setEffScaleKey(spep_3, ryusen3, 1.8, 1.8);
setEffAlphaKey(spep_3, ryusen3, 0);
setEffAlphaKey(spep_3+1, ryusen3, 255);


ct3 = entryEffectLife( spep_3+50, 10012, 40, 0, -1, 0, 200, 330); -- ズオッ
setEffShake(spep_3+50, ct3, 32, 15);
setEffAlphaKey(spep_3+50, ct3, 255);
setEffAlphaKey(spep_3+80, ct3, 255);
setEffAlphaKey(spep_3+90, ct3, 0);
setEffScaleKey(spep_3+50, ct3, 0.0, 0.0);
setEffScaleKey(spep_3+55, ct3, 2.3, 2.3);
setEffScaleKey(spep_3+79, ct3, 2.3, 2.3);
setEffScaleKey(spep_3+90, ct3, 6.0, 6.0);
setEffRotateKey(spep_3, ct3, 20);

entryFade( spep_3+144, 3,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_3, SE_06);
playSe( spep_3+40, SE_07);

spep_4=spep_3+150; --120+90+110

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+6,   0,   0, -54,   0);
setMoveKey( SP_dodge+7,   0,   3000, 0,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------ 
bakuhatu = entryEffect( spep_4, SP_07,   0,  -1,  0,  0,  0); 
setEffMoveKey(  spep_4, bakuhatu,  0,  0,   0);
setEffRotateKey(spep_4, bakuhatu, 0);
setEffScaleKey( spep_4, bakuhatu, 1.1, 1.1); 
setEffAlphaKey( spep_4, bakuhatu, 255);
--setEffAlphaKey( spep_4+178, bakuhatu, 255);
--setEffAlphaKey( spep_4+179, bakuhatu, 0);

setDisp( spep_4, 1, 0);

playSe( spep_4+4, SE_07);


-- ダメージ表示
dealDamage(spep_4+17);

--entryFade( spep_4+175, 5,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_4+176);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
setVisibleUI(0, 0);
setMoveKey(   0,  0,  0,  0,  0);


playSe( 15, SE_04);

ef = entryEffectLife( 0, SP_04,  108, 0x80,  -1,  0,  0,  0);
setEffMoveKey(  0,  ef,  0,  0,   0);
setEffScaleKey( 0, ef, 1.0, 1.0);
setEffRotateKey(0, ef, 0);
setEffAlphaKey( 0, ef, 255);
setEffShake(0, ef, 120, 10);

shuchusen = entryEffectLife( 0, 906, 110, 0x80, -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.8, 1.8);

setDisp( 0, 1, 0);

--speff = entryEffect(  0,   1504,   0x80,  -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  0,   1505,   0x80,  -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--speff = entryEffectLife( 0, 1503, 108, 0x80,  -1, 0,  0,  0);   -- 背景


ct = entryEffectLife( 15, 190006, 70, 0x80, -1, 0, 0, 470);    -- ゴゴゴ・・・
setEffShake(15, ct, 71, 8);
setEffScaleKey(15, ct, -0.7, 0.7);

playSe( 90, 43);

--entryFade( 17, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 99, 3, 7, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( 0, 0, 110, 0, 10, 10, 10, 210);       -- ベース暗め　背景
spep_1 = 108;

------------------------------------------------------
-- 構え…40
------------------------------------------------------
setDisp( spep_1, 1, 1);
changeAnime( spep_1-1, 1, 101);                        -- 気ダメ後ろ
changeAnime( spep_1+3, 1, 104);
setMoveKey(  spep_1-2,    1,   180,  -50,   0);
setMoveKey(  spep_1+28,    1,  180,  -50,   0);
setMoveKey(  spep_1+30,    1,  250,  0,   0);
setScaleKey(  spep_1-1,   1,   1.3,  1.3);
setScaleKey(  spep_1+28,   1,   1.3,  1.3);
setScaleKey(  spep_1+30,   1,   2.3,  2.3);
setShakeChara(  spep_1+3,   1,   10,  15);

setDisp( spep_1+40, 1, 0);

ef1 = entryEffect( spep_1, SP_05, 0x100, -1,  0,  0,  0);
setEffAlphaKey(spep_1, ef1, 255);
setEffScaleKey( spep_1, ef1, 1.0, 1.0);


shuchusen1 = entryEffectLife( spep_1+3, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.3, 1.3);

--playSe( spep_1, 43);


entryFadeBg( spep_1, 0, 110, 0, 10, 10, 10, 210);       -- ベース暗め　背景

ct1 = entryEffectLife( spep_1+3, 10001, 22, 0x100, -1, 0, 230, 230); -- !?
setEffScaleKey( spep_1, ct1, 2.0, 2.0);
setEffRotateKey(spep_1, ct1, 20);

entryFade( spep_1+28, 5, 7, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2=spep_1+40

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
--speff = entryEffectLife( spep_1, 1503, 90, 0x80,  -1, 0,  0,  0);   -- 背景

shuchusen2 = entryEffectLife( spep_2, 906, 87, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);


-- ** エフェクト等 ** --
entryFade( spep_2+83, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_2+90; --120


------------------------------------------------------
-- ビーム移動！150
------------------------------------------------------
setDisp( spep_3, 1, 1);
changeAnime( spep_3-1, 1, 108);                        -- 気ダメ後ろ
setMoveKey(  spep_3-1,    1,   150,  300,   0);
setMoveKey(  spep_3+5,    1,  200,  350,   0);
setMoveKey(  spep_3+35,    1,  200,  350,   0);
setRotateKey(spep_3, 1, -40);
setScaleKey(  spep_3-1,   1,   3.0,  3.0);
setScaleKey(  spep_3+10,   1,   1.0,  1.0);
setScaleKey(  spep_3+35,   1,   1.0,  1.0);

setDisp( spep_3+35, 1, 0);

ef3 = entryEffectLife( spep_3, SP_06, 150, 0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_3,  ef3,  0,  0,   0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffRotateKey(spep_3, ef3, 0);
setEffAlphaKey( spep_3, ef3, 255);

--playSe( spep_3, SE_06);

-- ** エフェクト等 ** --

--spname = entryEffectLife( spep_3, 1508,  46,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);

entryFadeBg( spep_3, 0, 150, 0, 10, 10, 10, 255);       -- ベース暗め　背景

shuchusen3 = entryEffectLife( spep_3, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);

ryusen3 = entryEffectLife( spep_3, 921, 150, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, ryusen3, -45);
setEffScaleKey(spep_3, ryusen3, 1.8, 1.8);
setEffAlphaKey(spep_3, ryusen3, 0);
setEffAlphaKey(spep_3+1, ryusen3, 255);


ct3 = entryEffectLife( spep_3+50, 10012, 40, 0, -1, 0, 200, 330); -- ズオッ
setEffShake(spep_3+50, ct3, 32, 15);
setEffAlphaKey(spep_3+50, ct3, 255);
setEffAlphaKey(spep_3+80, ct3, 255);
setEffAlphaKey(spep_3+90, ct3, 0);
setEffScaleKey(spep_3+50, ct3, 0.0, 0.0);
setEffScaleKey(spep_3+55, ct3, 2.3, 2.3);
setEffScaleKey(spep_3+79, ct3, 2.3, 2.3);
setEffScaleKey(spep_3+90, ct3, 6.0, 6.0);
setEffRotateKey(spep_3, ct3, 20);

entryFade( spep_3+144, 3,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_3, SE_06);
playSe( spep_3+40, SE_07);

spep_4=spep_3+150; --120+90+110

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+6,   0,   0, -54,   0);
setMoveKey( SP_dodge+7,   0,   3000, 0,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
bakuhatu = entryEffect( spep_4, SP_07,   0,  -1,  0,  0,  0); 
setEffMoveKey(  spep_4, bakuhatu,  0,  0,   0);
setEffRotateKey(spep_4, bakuhatu, 0);
setEffScaleKey( spep_4, bakuhatu, 1.1, 1.1); 
setEffAlphaKey( spep_4, bakuhatu, 255);
--setEffAlphaKey( spep_4+178, bakuhatu, 255);
--setEffAlphaKey( spep_4+179, bakuhatu, 0);

setDisp( spep_4, 1, 0);

playSe( spep_4+4, SE_07);


-- ダメージ表示
dealDamage(spep_4+17);

--entryFade( spep_4+175, 5,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_4+176);

end
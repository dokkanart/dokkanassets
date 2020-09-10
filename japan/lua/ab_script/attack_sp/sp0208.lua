--破壊神の裁き

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

tyo = -40;
tyo2 = -60;


SP_01 = 102115;--溜め
SP_02 = 102117;--持ち上げ
SP_03 = 102119;--放つ
SP_04 = 102121;--迫る〜ギャン
SP_05 = 1552;--宇宙からの俯瞰視点で地球が破壊されマグマ
SP_06 = 1568;--地球がエクスプロージョン（赤）

SP_01e = 102116;--溜め
SP_02e = 102118;--持ち上げ
SP_03e = 102120;--放つ

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
setVisibleUI(0, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め 1 (100F)
------------------------------------------------------
entryFadeBg( 0, 0, 74, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--気を貯める

bils = entryEffectLife( 0, SP_01, 69, 0x100, -1, 0, 0, 0); -- ズズンッ

setEffMoveKey( 0, bils, 0, 0);
setEffScaleKey( 0, bils, 1.0, 1.0);

playSe( 20, 1037);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 100, 400); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
--playSe( 30, SE_02);

setEffScaleKey( 65, bils, 1.0, 1.0);
setEffMoveKey( 65, bils, 0, 0);

setEffScaleKey( 70, bils, 3.0, 3.0);
setEffMoveKey( 70, bils, 400, 0);

shuchusen = entryEffectLife( 0, 906, 69, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.0, 1.0);

entryFade( 70, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- かめはめ波溜め　２　(90F)
------------------------------------------------------
entryFadeBg( 75, 0, 135, 0, 10, 10, 10, 220);       -- ベース暗め　背景

setMoveKey(   74,   0, 0, 0, 0);

changeAnime( 75, 0, 30);                       -- 溜め!
playSe( 78, 1035);

--kame_hand = entryEffect( 75, SP_02, 0x40+0x100,      0,  300,  -50,  0);   -- 手のカメハメ波部
kame_hand = entryEffect( 75, SP_02, 0x100,      0,  0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 75, kame_hand, 3.0, 3.0);
setEffScaleKey( 90, kame_hand, 1.0, 1.0);

SP_start = 30;

playSe( SP_start+ 90, SE_04);


speff = entryEffect(  SP_start+ 80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  SP_start+ 80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

setEffScaleKey( SP_start+169, kame_hand, 0.8, 0.8);

sen = entryEffectLife( 80, 921, 124, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(80, sen, 90);
setEffScaleKey(80, sen, 1.6, 1.6);

--spep_6 = 154;

spep_2 = SP_start+169 ;

setMoveKey(   spep_2,   0, 0, 0, 0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2,   0, 1.7, 1.7);
setScaleKey( spep_2+1,   0, 1.7, 1.7);

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
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
setEffScaleKey( spep_2, speff, 1.0, 1.0);

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
setEffScaleKey( spep_2, speff, 1.0, 1.0);
end

entryFade( spep_2+85, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+3; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

kamehame_beam = entryEffectLife( spep_3-1, SP_03, 109, 0x40,  -1,  0,  350,  600);   -- 伸びるかめはめ波

setEffScaleKey(spep_3-1, kamehame_beam, 1, 1);
setEffScaleKey(spep_3+95, kamehame_beam, 1.3, 1.3);

--playSe( spep_3, SE_06);

--spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 35, 10, 10, 10, 0, 220);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_3, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_3, sen2, 250);
setEffRotateKey(spep_3, sen2, -110);
setEffScaleKey( spep_3, sen2, 1.6, 1.6);

setEffScaleKey(spep_3, sen2, 1.6, 1.6);
--setShakeChara( spep_3+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

entryFadeBg( spep_3+35, 0, 74, 0, 60, 0, 0, 215);       -- ベース暗め　背景

sen3 = entryEffectLife( spep_3+35, 921, 74, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_3, sen2, 250);
setEffRotateKey(spep_3+35, sen3, -110);
setEffScaleKey( spep_3+35, sen3, 1.6, 1.6);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+45, 10012, 40, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+45, ct, 32, 5);
setEffAlphaKey(spep_3+45, ct, 255);
setEffAlphaKey(spep_3+57, ct, 255);
setEffAlphaKey(spep_3+67, ct, 0);
setEffScaleKey(spep_3+45, ct, 0.0, 0.0);
setEffScaleKey(spep_3+49, ct, 1.3, 1.3);
setEffScaleKey(spep_3+69, ct, 1.3, 1.3);
setEffScaleKey(spep_3+77, ct, 6.0, 6.0);
SE001 = playSe( spep_3+40, SE_07);

entryFade( spep_3+95, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+95+10 --392

------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------
--SP_start2=0; --410 469

setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);
setMoveKey(  spep_4+30,    1,   120,  -270,   0);

setScaleKey(  spep_4-1,   1,   0.7,  0.7);
setScaleKey(  spep_4+75,   1,   0.4,  0.4);

--entryFade( spep_4+70, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+75, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen, -110);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1.2, 1.2);
setEffScaleKey(spep_4+80, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

--playSe( spep_4+85, SE_09);
-- 敵吹っ飛ぶモーション
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0,60, 0, 0, 215);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+21, ct, 255);
setEffAlphaKey(spep_4+31, ct, 0);

entryFade( spep_4+32, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_4+3, SE_06);
setDisp( spep_4+36, 1, 0);

ct = entryEffectLife( spep_4+52, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン413
setEffShake(spep_4+52, ct, 99, 20);
setEffScaleKey( spep_4+52, ct, 0.1, 0.1);
setEffScaleKey( spep_4+57, ct, 2.4, 2.4);
setEffScaleKey( spep_4+79, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+52, ct, 255);
setEffAlphaKey(spep_4+57, ct, 255);
setEffAlphaKey(spep_4+79, ct, 0);

entryFade( spep_4+77, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+77+11; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge - 12, SE001, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
playSe( spep_4+20, SE_06);
playSe( spep_4+42, SE_09);

changeAnime( spep_5, 0, 2);                        -- 待機後ろ

setMoveKey( spep_5,    0,  -618,  480,   0);
setMoveKey( spep_5+15,    0,  -218,  380,   0);

setDisp( spep_5, 0, 1);
setScaleKey(  spep_5,   0,   3.0,  3.0);
setScaleKey(  spep_5+15,   0,   1.0,  1.0);

maguma=entryEffect( spep_5,SP_05,0x80,-1,0,0,0);
setEffAlphaKey(spep_5, maguma, 255);

setEffScaleKey( spep_5, maguma, 3.0, 3.0);
setEffScaleKey( spep_5+15, maguma, 1.2, 1.2);
setEffAlphaKey(spep_5+95, maguma, 255);
setEffAlphaKey(spep_5+96, maguma, 0);

setDisp( spep_5 + 0 , 1, 0);
setDisp( spep_5 + 110, 0, 0);

-- 書き文字エントリー

playSe( spep_5+9, 1023);
--playSe( spep_5+95, SE_10);
shuchusen = entryEffectLife( spep_5+95, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe( spep_5+119, SE_10);


entryFade( spep_5+74, 6, 17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

finish = entryEffect( spep_5+95,SP_06,0x100,-1,0,0,0);
setEffScaleKey( spep_5 + 95, finish, 1.2, 1.2 );
setEffScaleKey( spep_5 + 200, finish, 1.2, 1.2 );

-- ダメージ表示
dealDamage(spep_5+119 -10);
--setDamage( spep_5+119, 1, 0);  -- ダメージ振動等

--entryFade( spep_5+190, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+190);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め 1 (100F)
------------------------------------------------------
entryFadeBg( 0, 0, 74, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--気を貯める

bils = entryEffectLife( 0, SP_01e, 69, 0x100, -1, 0, 0, 0); -- ズズンッ

setEffMoveKey( 0, bils, 0, 0);
setEffScaleKey( 0, bils, 1.0, 1.0);

playSe( 20, 1037);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 100, 400); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
--playSe( 30, SE_02);

setEffScaleKey( 65, bils, 1.0, 1.0);
setEffMoveKey( 65, bils, 0, 0);

setEffScaleKey( 70, bils, 3.0, 3.0);
setEffMoveKey( 70, bils, 400, 0);

shuchusen = entryEffectLife( 0, 906, 69, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.0, 1.0);

entryFade( 70, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- かめはめ波溜め　２　(90F)
------------------------------------------------------
entryFadeBg( 75, 0, 135, 0, 10, 10, 10, 220);       -- ベース暗め　背景

setMoveKey(   74,   0, 0, 0, 0);

changeAnime( 75, 0, 30);                       -- 溜め!
playSe( 78, 1035);

--kame_hand = entryEffect( 75, SP_02e, 0x40+0x100,      0,  300,  -70,  0);   -- 手のカメハメ波部
kame_hand = entryEffect( 75, SP_02, 0x100, 0, 0,  0, 0); -- 手のカメハメ波部
setEffScaleKey( 75, kame_hand, 3.0, 3.0);
setEffScaleKey( 90, kame_hand, 1.0, 1.0);

SP_start = 30;

playSe( SP_start+ 90, SE_04);

--[[
speff = entryEffect(  SP_start+ 80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  SP_start+ 80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

setEffScaleKey( SP_start+169, kame_hand, 0.8, 0.8);

sen = entryEffectLife( 80, 921, 124, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(80, sen, 90);
setEffScaleKey(80, sen, 1.6, 1.6);

--spep_6 = 154;

spep_2 = SP_start+169 ;

setMoveKey(   spep_2,   0, 0, 0, 0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2,   0, 1.7, 1.7);
setScaleKey( spep_2+1,   0, 1.7, 1.7);

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
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
setEffScaleKey( spep_2, speff, 1.0, 1.0);

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
setEffScaleKey( spep_2, speff, 1.0, 1.0);
end

entryFade( spep_2+85, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+3; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

kamehame_beam = entryEffectLife( spep_3-1, SP_03e, 109, 0x40,  -1,  0,  -350,  600);   -- 伸びるかめはめ波

setEffScaleKey(spep_3-1, kamehame_beam, 1, 1);
setEffScaleKey(spep_3+95, kamehame_beam, 1.3, 1.3);

--playSe( spep_3, SE_06);

--spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 35, 10, 10, 10, 0, 220);       -- ベース暗め　背景

sen2 = entryEffectLife( spep_3, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_3, sen2, 250);
setEffRotateKey(spep_3, sen2, -110);
setEffScaleKey( spep_3, sen2, 1.6, 1.6);

setEffScaleKey(spep_3, sen2, 1.6, 1.6);
--setShakeChara( spep_3+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

entryFadeBg( spep_3+35, 0, 74, 0, 60, 0, 0, 215);       -- ベース暗め　背景

sen3 = entryEffectLife( spep_3+35, 921, 74, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey(spep_3, sen2, 250);
setEffRotateKey(spep_3+35, sen3, -110);
setEffScaleKey( spep_3+35, sen3, 1.6, 1.6);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+45, 10012, 40, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+45, ct, 32, 5);
setEffAlphaKey(spep_3+45, ct, 255);
setEffAlphaKey(spep_3+57, ct, 255);
setEffAlphaKey(spep_3+67, ct, 0);
setEffScaleKey(spep_3+45, ct, 0.0, 0.0);
setEffScaleKey(spep_3+49, ct, 1.3, 1.3);
setEffScaleKey(spep_3+69, ct, 1.3, 1.3);
setEffScaleKey(spep_3+77, ct, 6.0, 6.0);
SE001 = playSe( spep_3+40, SE_07);

entryFade( spep_3+95, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+95+10 --311 370


------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------
--SP_start2=0; --410 469

setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);
setMoveKey(  spep_4+30,    1,   120,  -270,   0);

setScaleKey(  spep_4-1,   1,   0.7,  0.7);
setScaleKey(  spep_4+75,   1,   0.4,  0.4);



--entryFade( spep_4+70, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+75, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen, -110);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1.2, 1.2);
setEffScaleKey(spep_4+80, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

--playSe( spep_4+85, SE_09);
-- 敵吹っ飛ぶモーション
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0,60, 0, 0, 215);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+21, ct, 255);
setEffAlphaKey(spep_4+31, ct, 0);

entryFade( spep_4+32, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_4+3, SE_06);
setDisp( spep_4+36, 1, 0);

ct = entryEffectLife( spep_4+52, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン413
setEffShake(spep_4+52, ct, 99, 20);
setEffScaleKey( spep_4+52, ct, 0.1, 0.1);
setEffScaleKey( spep_4+57, ct, 2.4, 2.4);
setEffScaleKey( spep_4+79, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+52, ct, 255);
setEffAlphaKey(spep_4+57, ct, 255);
setEffAlphaKey(spep_4+79, ct, 0);

entryFade( spep_4+77, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+77+11; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge - 12, SE001, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge + 10, 0, -2500, -250, 0 );

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
playSe( spep_4+20, SE_06);
playSe( spep_4+42, SE_09);

changeAnime( spep_5, 0, 2);                        -- 待機後ろ

setMoveKey( spep_5,    0,  -618,  480,   0);
setMoveKey( spep_5+15,    0,  -218,  380,   0);

setDisp( spep_5, 0, 1);
setScaleKey(  spep_5,   0,   3.0,  3.0);
setScaleKey(  spep_5+15,   0,   1.0,  1.0);

maguma=entryEffect( spep_5,SP_05,0x80,-1,0,0,0);
setEffAlphaKey(spep_5, maguma, 255);

setEffScaleKey( spep_5, maguma, 3.0, 3.0);
setEffScaleKey( spep_5+15, maguma, 1.2, 1.2);
setEffAlphaKey(spep_5+95, maguma, 255);
setEffAlphaKey(spep_5+96, maguma, 0);

setDisp( spep_5 + 0 , 1, 0);
setDisp( spep_5 + 110, 0, 0);

-- 書き文字エントリー

playSe( spep_5+9, 1023);
--playSe( spep_5+95, SE_10);
shuchusen = entryEffectLife( spep_5+95, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe( spep_5+119, SE_10);


entryFade( spep_5+74, 6, 17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

finish = entryEffect( spep_5+95,SP_06,0x100,-1,0,0,0);
setEffScaleKey( spep_5 + 95, finish, 1.2, 1.2 );
setEffScaleKey( spep_5 + 200, finish, 1.2, 1.2 );

-- ダメージ表示
dealDamage(spep_5+119 -10);
--setDamage( spep_5+119, 1, 0);  -- ダメージ振動等

--entryFade( spep_5+190, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+190);

end

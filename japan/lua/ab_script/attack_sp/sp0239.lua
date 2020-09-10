
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

SP_01 = 102069;
SP_02 = 102070;
SP_03 = 102146;
SP_04 = 190002;--ギャン
SP_05 = 1552;--宇宙からの俯瞰視点で地球が破壊されマグマ
SP_06 = 1568;--地球がエクスプロージョン（赤）


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

--setMoveKey(   0,   0,    0, -54,   0);
--setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 0.8, 0.8);
setScaleKey(   1,   0, 0.8, 0.8);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 30);                       -- 溜め!

setMoveKey(   0,   0,    0, -1500,   0);
setMoveKey(  20,   0,    0, -100,   0);
setMoveKey(  40,   0,    0, -100,   0);
setMoveKey(  117,   0,    0, -300,   0);

setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   40,   0, 1.5, 1.5);
setScaleKey(   117,   0, 2.2, 2.2);

playSe( 50, SE_03); --かめはめ波

entryEffect(  0,   1502,   0,  -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 20, SE_04);

kame_hand = entryEffect( 0, SP_01, 0x40, 0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 0, kame_hand, 3.0, 3.0);
setEffScaleKey( 40, kame_hand, 3.0, 3.0);
setEffScaleKey( 117, kame_hand, 4.0, 4.0);

entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 117, 0x80,  -1,  0,  30,  0); -- オーラ
setEffMoveKey(   0,   aura,    20, -1800,   0);
setEffMoveKey(  20,   aura,    20, -260,   0);
setEffMoveKey(  40,   aura,    20, -260,   0);
setEffMoveKey(  117,   aura,   30, -520,  0);
setEffScaleKey( 0, aura, 1.7, 1.7);
setEffScaleKey( 40, aura, 1.7, 1.7);
setEffScaleKey( 117, aura, 2.5, 2.5);

aura1 = entryEffectLife( 0 , 350 , 117 , 0x80,  -1,  0,  30,  0); -- オーラ350
setEffMoveKey(   0,   aura1,    20, -1800,   0);
setEffMoveKey(  20,   aura1,   20, -260,   0);
setEffMoveKey(  40,   aura1,   20, -260,   0);
setEffMoveKey(  117,   aura1,   30, -520,   -100);
setEffScaleKey( 0, aura1, 1.7, 1.7);
setEffScaleKey( 40, aura1, 1.7, 1.7);
setEffScaleKey( 117, aura, 2.5, 2.5);

setShakeChara( 0, 0, 117, 8);
setShake( 0, 117, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 117, shuchusen5, 2.0, 2.0);


entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 124;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);

------------------------------------------------------
-- 極限Z対応

--playSe( spep_2, SE_05);
--speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
--setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

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


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
------------------------------------------------------

entryFade( spep_2+84, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+2; --211 260

removeAllEffect(spep_3-1);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
--removeAllEffect( spep_3-1);

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3+10,    0,      0,  0,   0);
setMoveKey(  spep_3+30,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( spep_3, SP_02, 106, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( spep_3, SE_07);
setEffScaleKey( spep_3, kamehame_beam, 3.0, 3.0);

--spname = entryEffect( spep_3-3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_3+40,    0,   -150,  0,   50);
setMoveKey(  spep_3+45,    0,   -1200,  0,   85);


entryFade( spep_3+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 106, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_3, 921, 106, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey(spep_3, sen2, 1.3, 1.3);
setShakeChara( spep_3+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);
playSe( spep_3+40, SE_07);
entryFade( spep_3+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+95+15 --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);
setMoveKey(  spep_4+30,    1,   120,  -270,   0);

setScaleKey(  spep_4-1,   1,   1.2,  1.2);
setScaleKey(  spep_4+75,   1,   1.2,  1.2);


playSe( spep_4+20, SE_06);

entryFade( spep_4+70, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+75, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen, 190);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1.2, 1.2);
setEffScaleKey(spep_4+80, kamehame_beam2, 1, 1);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

playSe( spep_4+85, SE_09);
-- 敵吹っ飛ぶモーション
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+65, ct, 255);
setEffAlphaKey(spep_4+75, ct, 0);

kamehame_beam = entryEffect( spep_4+80, SP_04,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+87, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+87, ct, 99, 20);
setEffScaleKey( spep_4+87, ct, 0.1, 0.1);
setEffScaleKey( spep_4+100, ct, 2.4, 2.4);
setEffScaleKey( spep_4+120, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+87, ct, 255);
setEffAlphaKey(spep_4+120, ct, 255);
setEffAlphaKey(spep_4+135, ct, 0);

entryFade( spep_4+130, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+130+5; --410 469


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 330; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

changeAnime( spep_5, 0, 2);                        -- 待機後ろ
setRotateKey( spep_5, 0, 10);

setMoveKey( spep_5,    0,  -618,  480,   0);
setMoveKey( spep_5+15,    0,  -218,  380,   0);

setDisp( spep_5, 0, 1);
setScaleKey(  spep_5,   0,   3.0,  3.0);
setScaleKey(  spep_5+15,   0,   1.0,  1.0);

maguma=entryEffect( spep_5,SP_05,0x80,-1,0,0,0);
setEffAlphaKey(spep_5, maguma, 255);

setEffScaleKey( spep_5, maguma, 3.0, 3.0);
setEffScaleKey( spep_5+15, maguma, 1.0 +0.2, 1.0 +0.2);

setDisp( spep_5, 1, 0);

-- 書き文字エントリー

playSe( spep_5+9, 1023);
--playSe( spep_5+95, SE_10);
shuchusen = entryEffectLife( spep_5+95, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe( spep_5+119, SE_10);


entryFade( spep_5+74, 6, 17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

finish = entryEffect( spep_5+95,SP_06,0x100,-1,0,0,0);
setEffScaleKey( spep_5+95, finish, 1.2, 1.2);

setEffAlphaKey(spep_5+95, maguma, 255);
setEffAlphaKey(spep_5+96, maguma, 0);

-- ダメージ表示
dealDamage(spep_5+119 -10);
--setDamage( spep_5+119, 1, 0);  -- ダメージ振動等

--entryFade( spep_5+190, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+200 -10);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 30);                       -- 溜め!

setMoveKey(   0,   0,    0, -1500,   0);
setMoveKey(  20,   0,    0, -100,   0);
setMoveKey(  40,   0,    0, -100,   0);
setMoveKey(  117,   0,    0, -300,   0);

setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   40,   0, 1.5, 1.5);
setScaleKey(   117,   0, 2.2, 2.2);

playSe( 50, SE_03); --かめはめ波

entryEffect(  0,   1502,   0,  -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( 20, SE_04);

kame_hand = entryEffect( 0, SP_01, 0x40, 0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 0, kame_hand, 3.0, 3.0);
setEffScaleKey( 40, kame_hand, 3.0, 3.0);
setEffScaleKey( 117, kame_hand, 4.0, 4.0);

entryFade( 117, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 117, 0x80,  -1,  0,  -40,  0); -- オーラ
setEffMoveKey(   0,   aura,    20, -1800,   0);
setEffMoveKey(  20,   aura,    20, -260,   0);
setEffMoveKey(  40,   aura,    20, -260,   0);
setEffMoveKey(  117,   aura,   30, -520,  0);
setEffScaleKey( 0, aura, 1.5, 1.5);
setEffScaleKey( 40, aura, 1.5, 1.5);
setEffScaleKey( 117, aura, 2.3, 2.3);

aura1 = entryEffectLife( 0 , 350 , 117 , 0x80,  -1,  0,  -40,  0); -- オーラ350
setEffMoveKey(   0,   aura1,    20, -1800,   0);
setEffMoveKey(  20,   aura1,   20, -260,   0);
setEffMoveKey(  40,   aura1,   20, -260,   0);
setEffMoveKey(  117,   aura1,   30, -520,   -100);
setEffScaleKey( 0, aura1, 1.5, 1.5);
setEffScaleKey( 40, aura1, 1.5, 1.5);
setEffScaleKey( 117, aura1, 2.3, 2.3);

setShakeChara( 0, 0, 117, 8);
setShake( 0, 117, 15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10008, 87, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);

shuchusen5 = entryEffectLife( 0, 906, 117, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen5, 1.0, 1.0);
setEffScaleKey( 60, shuchusen5, 1.0, 1.0);
setEffScaleKey( 117, shuchusen5, 2.0, 2.0);


entryFadeBg( 0, 0, 120, 0, 0, 0, 0, 190);       -- ベース暗め　背景

spep_2 = 124;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 1.5, 1.5);
setScaleKey( spep_2,   0, 1.0, 1.0);

------------------------------------------------------
-- 極限Z対応

--playSe( spep_2, SE_05);
--speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
--setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

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


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
------------------------------------------------------

entryFade( spep_2+84, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+2; --211 260

removeAllEffect(spep_3-1);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
--removeAllEffect( spep_3-1);

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  spep_3-1,    0,      0,  0,   0);
setMoveKey(  spep_3+10,    0,      0,  0,   0);
setMoveKey(  spep_3+30,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( spep_3, SP_02, 106, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( spep_3, SE_07);
setEffScaleKey( spep_3, kamehame_beam, 3.0, 3.0);

--spname = entryEffect( spep_3-3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_3+40,    0,   -150,  0,   50);
setMoveKey(  spep_3+45,    0,   -1200,  0,   85);


entryFade( spep_3+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 106, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_3, 921, 106, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey(spep_3, sen2, 1.3, 1.3);
setShakeChara( spep_3+45, 0, 54, 50);

shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);
playSe( spep_3+40, SE_07);
entryFade( spep_3+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4=spep_3+95+15 --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ

setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);
setMoveKey(  spep_4+30,    1,   120,  -270,   0);

setScaleKey(  spep_4-1,   1,   1.2,  1.2);
setScaleKey(  spep_4+75,   1,   1.2,  1.2);


playSe( spep_4+20, SE_06);

entryFade( spep_4+70, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+75, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen, 190);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1.2, 1.2);
setEffScaleKey(spep_4+80, kamehame_beam2, 1, 1);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

playSe( spep_4+85, SE_09);
-- 敵吹っ飛ぶモーション
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 75, 0, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 3, 3);
setEffRotateKey(spep_4, ct, 10);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+65, ct, 255);
setEffAlphaKey(spep_4+75, ct, 0);

kamehame_beam = entryEffect( spep_4+80, SP_04,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+87, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+87, ct, 99, 20);
setEffScaleKey( spep_4+87, ct, 0.1, 0.1);
setEffScaleKey( spep_4+100, ct, 2.4, 2.4);
setEffScaleKey( spep_4+120, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+87, ct, 255);
setEffAlphaKey(spep_4+120, ct, 255);
setEffAlphaKey(spep_4+135, ct, 0);

entryFade( spep_4+130, 6,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+130+5; --410 469


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 330; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

changeAnime( spep_5, 0, 2);                        -- 待機後ろ
setRotateKey( spep_5, 0, 10);

setMoveKey( spep_5,    0,  -618,  480,   0);
setMoveKey( spep_5+15,    0,  -218,  380,   0);

setDisp( spep_5, 0, 1);
setScaleKey(  spep_5,   0,   3.0,  3.0);
setScaleKey(  spep_5+15,   0,   1.0,  1.0);

maguma=entryEffect( spep_5,SP_05,0x80,-1,0,0,0);
setEffAlphaKey(spep_5, maguma, 255);

setEffScaleKey( spep_5, maguma, 3.0, 3.0);
setEffScaleKey( spep_5+15, maguma, 1.0+0.2, 1.0+0.2);

setDisp( spep_5, 1, 0);

-- 書き文字エントリー

playSe( spep_5+9, 1023);
--playSe( spep_5+95, SE_10);
shuchusen = entryEffectLife( spep_5+95, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

playSe( spep_5+119, SE_10);


entryFade( spep_5+74, 6, 17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

finish = entryEffect( spep_5+95,SP_06,0x100,-1,0,0,0);
setEffScaleKey( spep_5+95, finish, 1.2, 1.2);

setEffAlphaKey(spep_5+95, maguma, 255);
setEffAlphaKey(spep_5+96, maguma, 0);

-- ダメージ表示
dealDamage(spep_5+119 -10);
--setDamage( spep_5+119, 1, 0);  -- ダメージ振動等

--entryFade( spep_5+190, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+200 -10);
end

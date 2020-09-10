

print ("[lua]sp1149");
print ("sp_effect_a2_00078");

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 151111;--溜め
SP_02 = 151112;--迫る
SP_03 = 151113;--ヒットエフェクト連打・前面に
SP_04 = 151114;--後ろ向き登場
SP_05 = 151115;--ソウルパニッシャー生成
SP_06 = 151116;--投げる
SP_07 = 151117;--ギャン
SP_08 = 151118;--前髪なびき
SP_09 = 151119;--消滅

--敵側は味方側に1xをつけてます

SP_14 = 151120;--後ろ向き登場(敵)
SP_16 = 151164;--投げる

multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
----溜め(104F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
--冒頭
spep_0 = 0;


-- ** エフェクト等 ** --
tame = entryEffect(  spep_0,   SP_01,   0,  -1,  0,  0,  0);   --迫る
setEffScaleKey( spep_0, tame, 1, 1);
setEffAlphaKey( spep_0, tame, 255);

speff = entryEffect(  spep_0+3,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0+3,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- ** 集中線 ** --
shuchusen0 = entryEffectLife( spep_0, 906, 104, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen0, 1.4, 1.4);
setEffScaleKey( spep_0+104, shuchusen0, 1.4, 1.4);


-- 書き文字エントリー --

ctGogogo = entryEffectLife( spep_0+3, 190006, 76, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_0+3, ctGogogo, 0.8, 0.8);
setEffAlphaKey( spep_0+3, ctGogogo, 255);
setEffRotateKey( spep_0+3, ctGogogo, 20);


-- ** 音 ** --

playSe( spep_0+7, SE_04);

playSe( spep_0+60, 44);



-- ** 次の準備 ** --
spep_1 = spep_0 + 104;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 迫る(68F)
------------------------------------------------------
-- ** キャラクター ** --



-- ** 背景 ** --
entryFadeBg( spep_1, 0, 68, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
semaru = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --迫る
setEffScaleKey( spep_1, semaru, 1, 1);
setEffAlphaKey( spep_1, semaru, 255);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 68, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.4, 1.4);
setEffScaleKey( spep_1+68, shuchusen1, 1.4, 1.4);

-- ** 音 ** --

playSe( spep_1+10, 8);



-- ** 次の準備 ** --
spep_2 = spep_1+68;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 130; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge+1,   1,   180, 210,  0);
setScaleKey(   SP_dodge+1,   1, 0.75, 0.75);
setRotateKey(   SP_dodge+1,   1, 330);

setMoveKey(   SP_dodge+8,   1,   180, 210,  0);
setScaleKey(   SP_dodge+8,   1, 0.75, 0.75);
setRotateKey(   SP_dodge+8,   1, 330);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 打撃(80F)
------------------------------------------------------


-- ** キャラクター ** --

setDisp( spep_2-1, 1, 1);
changeAnime( spep_2-4, 1, 100);
setRotateKey(   spep_2-4,   1, 0);
setRotateKey(   spep_2+9,   1, 0);

setMoveKey(   spep_2-1,   1,    200,  100,   0);

setScaleKey(   spep_2-1,   0, 1.6, 1.6);
setScaleKey(   spep_2-1,   1, 1.6, 1.6);

setMoveKey(   spep_2+10,   1,    -50, -50,   0);
changeAnime( spep_2+10, 1, 108);
setShakeChara( spep_2+10, 1, 70, 20);
setRotateKey(   spep_2+10,   1, -30);

setMoveKey(   spep_2+12,   1,    -50, 0,   0);
setMoveKey(   spep_2+28,   1,    0, -50,   0);
setMoveKey(   spep_2+44,   1,    -50, -50,   0);
setMoveKey(   spep_2+56,   1,    0, -50,   0);
setMoveKey(   spep_2+60,   1,    -50, -50,   0);

-- ** 背景 ** --

entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
rush = entryEffect(  spep_2,   SP_03,   0,  -1,  0x100,  0,  0);   --ヒットエフェクト、全面に
setEffScaleKey( spep_2, rush, 1, 1);
setEffAlphaKey( spep_2, rush, 255);

-- ** 背面のエフェクト ** --
ushiro = entryEffect(  spep_2,   SP_04,   0,  -1,  0x80,  0,  0);   --キャラクター
setEffScaleKey( spep_2, ushiro, 1, 1);
setEffAlphaKey( spep_2, ushiro, 255);


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2+0, 906, 42, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+0, shuchusen2, 1.4, 1.4);
setEffScaleKey( spep_2+42, shuchusen2, 1.4, 1.4);

setEffMoveKey( spep_2+1,    shuchusen2,   0,  0);
setEffMoveKey( spep_2+42,    shuchusen2,   0,  0);


shuchusen2a = entryEffectLife( spep_2+43, 906, 38, 0x100,  -1, 200,  300,  300);   -- 集中線
setEffScaleKey( spep_2+44, shuchusen2a, 2, 2);
setEffScaleKey( spep_2+80, shuchusen2a, 2, 2);


-- 書き文字エントリー --
ctGagaga = entryEffectLife( spep_2+10, 10002, 50, 0x100, -1, 0, -80, 300); -- ガガガ
setEffScaleKey( spep_2+10, ctGagaga, 2.6, 2.6);
setEffAlphaKey( spep_2+10, ctGagaga, 255);
setEffRotateKey( spep_2+10, ctGagaga, 0);
setEffRotateKey( spep_2+14, ctGagaga, -10);
setEffRotateKey( spep_2+18, ctGagaga, 0);
setEffRotateKey( spep_2+22, ctGagaga, -10);
setEffRotateKey( spep_2+26, ctGagaga, 10);

setEffRotateKey( spep_2+30, ctGagaga, 0);
setEffRotateKey( spep_2+34, ctGagaga, 10);
setEffRotateKey( spep_2+38, ctGagaga, -10);
setEffRotateKey( spep_2+42, ctGagaga, 0);
setEffRotateKey( spep_2+46, ctGagaga, -10);

-- ** ホワイトフェード ** --

-- ** 音 ** --

playSe( spep_2+10, 1010);
playSe( spep_2+26, 1010);
playSe( spep_2+42, 1010);
playSe( spep_2+50, 1010);
playSe( spep_2+58, 1010);



-- ** 次の準備 ** --
spep_3 = spep_2+80;
entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 206, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   spep_3-1,   1,    -50, -50,   0);
setRotateKey(   spep_3-1,   1, -30);
setDisp( spep_3-1, 1, 0);

------------------------------------------------------
-- 握る(206F)
------------------------------------------------------



-- ** 背景 ** --

-- ** 流線(横) ** --
yokosen3 = entryEffectLife( spep_3+0, 914, 60, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_3+0, yokosen3, 1.6, 1.6);
setEffAlphaKey( spep_3+0, yokosen3, 255);
setEffRotateKey(spep_3+0, yokosen3, 90);
setEffMoveKey( spep_3+0, yokosen3, 0, 0, 0);

-- ** エフェクト等 ** --
teAgeru = entryEffect(  spep_3,   SP_05,   0,  -1,  0,  0,  0);   --握る
setEffScaleKey( spep_3, teAgeru, 1, 1);
setEffAlphaKey( spep_3, teAgeru, 255);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 206, 0x100,  -1, 0,  100,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.4, 1.4);
setEffScaleKey( spep_3, shuchusen3, 1.4, 1.4);
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);



-- ** 音 ** --

playSe( spep_3+60, SE_08);
playSe( spep_3+140, 1040);



-- ** 次の準備 ** --
spep_4 = spep_3+206;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

setRotateKey(   spep_4-1,   1, -30);
setMoveKey(   spep_4-1,   1,    -200, -300,   0);
setDisp( spep_4-1, 1, 0);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------

-- カードカットイン
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_4, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep_4, shuchusen5, 255);
setEffRotateKey( spep_4, shuchusen5, 0);

playSe( spep_4+4, SE_05);

-- ** 次の準備 ** --
spep_6 = spep_4+90;
entryFade( spep_6-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 130, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- 投げる(130F)
------------------------------------------------------
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
nageru = entryEffect(  spep_6,   SP_06,   0,  -1,  0,  0,  0);   --投げる
setEffScaleKey( spep_6, nageru, 1, 1);
setEffAlphaKey( spep_6, nageru, 255);

-- ** 集中線 ** --

shuchusen6a = entryEffectLife( spep_6, 906, 10, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_6, shuchusen6a, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6a, 1.4, 1.4);
setEffAlphaKey( spep_6, shuchusen6a, 255);
setEffRotateKey( spep_6, shuchusen6a, 0);

shuchusen6b = entryEffectLife( spep_6+60, 906, 90, 0x100,  -1, 0,  100,  0); -- 集中線5
setEffScaleKey( spep_6, shuchusen6b, 1.6, 1.6);
setEffAlphaKey( spep_6, shuchusen6b, 255);
setEffRotateKey( spep_6, shuchusen6b, 0);


-- ** 音 ** --

playSe( spep_6+28, SE_06);
playSe( spep_6+60, SE_07);


-- ** 次の準備 ** --
spep_7 = spep_6+130;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 100, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- ギャン(100F)
------------------------------------------------------


-- ** エフェクト等 ** --
gyan = entryEffect( spep_7, SP_07, 0x80, -1, 0, 0, 0); --ギャン
setEffMoveKey( spep_7, gyan, 0, 0, 0);
setEffScaleKey( spep_7, gyan, 1.0, 1.0);
setEffAlphaKey( spep_7, gyan, 255);
setEffRotateKey( spep_7, gyan, 0);
setEffAlphaKey( spep_7+80, gyan, 255);
setEffAlphaKey( spep_7+82, gyan, 0);

-- 書き文字エントリー --
--[[
ctGyan = entryEffectLife( spep_7, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake( spep_7, ctGyan, 99, 20);
setEffScaleKey( spep_7, ctGyan, 0.1, 0.1);
setEffScaleKey( spep_7+30, ctGyan, 3.4, 3.4);
setEffScaleKey( spep_7+54, ctGyan, 3.8, 3.8);
setEffAlphaKey( spep_7, ctGyan, 255);
setEffAlphaKey( spep_7+50, ctGyan, 255);
setEffAlphaKey( spep_7+54, ctGyan, 0);
]]

-- ** 音 ** --

playSe( spep_7+5, SE_09);

-- ** 次の準備 ** --
spep_8 = spep_7+80;
entryFade( spep_8-6, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 118, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- 前髪なびき(118F)
------------------------------------------------------
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
nobasu = entryEffect(  spep_8,   SP_08,   0,  -1,  0,  0,  0);   --前髪なびき
setEffScaleKey( spep_8, nobasu, 1, 1);
setEffAlphaKey( spep_8, nobasu, 255);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8+0, 906, 118, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8+0, shuchusen8, 1.6, 1.6);
setEffScaleKey( spep_8+60, shuchusen8, 1.6, 1.6);


-- ** 流線(横) ** --
yokosen8 = entryEffectLife( spep_8+0, 920, 118, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_8+0, yokosen8, 1.6, 1.6);
setEffAlphaKey( spep_8+0, yokosen8, 255);
setEffRotateKey(spep_8+0, yokosen8, 0);
setEffMoveKey( spep_8+0, yokosen8, 0, 0, 0);

playSe( spep_8+10, 8);

-- ** 次の準備 ** --
spep_9 = spep_8+118;
entryFade( spep_9-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 168, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 消滅(220F)
------------------------------------------------------


-- ** エフェクト等 ** --
shoumetu = entryEffect(  spep_9,   SP_09,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_9, shoumetu, 1, 1);
setEffAlphaKey( spep_9, shoumetu, 255);


-- ** 音 ** --

playSe( spep_9+6, 3);



-- ダメージ表示
dealDamage( spep_9+150);
--entryFade( spep_9+208, 9, 10, 1, 8, 8, 8, 255); -- black fade
--entryFade( spep_9+80, 70, 40, 100, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_9+220);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;


-- ** エフェクト等 ** --
tame = entryEffect(  spep_0,   SP_01,   0,  -1,  0,  0,  0);   --迫る
setEffScaleKey( spep_0, tame, -1, 1);
setEffAlphaKey( spep_0, tame, 255);

--speff = entryEffect(  spep_0+3,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_0+3,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- ** 集中線 ** --
shuchusen0 = entryEffectLife( spep_0, 906, 104, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen0, 1.4, 1.4);
setEffScaleKey( spep_0+104, shuchusen0, 1.4, 1.4);


-- 書き文字エントリー --

ctGogogo = entryEffectLife( spep_0+3, 190006, 76, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_0+3, ctGogogo, -0.8, 0.8);
setEffAlphaKey( spep_0+3, ctGogogo, 255);
setEffRotateKey( spep_0+3, ctGogogo, 20);


-- ** 音 ** --

playSe( spep_0+7, SE_04);

playSe( spep_0+60, 44);



-- ** 次の準備 ** --
spep_1 = spep_0 + 104;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 迫る(68F)
------------------------------------------------------
-- ** キャラクター ** --



-- ** 背景 ** --
entryFadeBg( spep_1, 0, 68, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
semaru = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --迫る
setEffScaleKey( spep_1, semaru, -1, 1);
setEffAlphaKey( spep_1, semaru, 255);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 68, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.4, 1.4);
setEffScaleKey( spep_1+68, shuchusen1, 1.4, 1.4);

-- ** 音 ** --

playSe( spep_1+10, 8);



-- ** 次の準備 ** --
spep_2 = spep_1+68;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 130; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge+1,   1,   180, 210,  0);
setScaleKey(   SP_dodge+1,   1, 0.75, 0.75);
setRotateKey(   SP_dodge+1,   1, 330);

setMoveKey(   SP_dodge+8,   1,   180, 210,  0);
setScaleKey(   SP_dodge+8,   1, 0.75, 0.75);
setRotateKey(   SP_dodge+8,   1, 330);

changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 打撃(80F)
------------------------------------------------------


-- ** キャラクター ** --

setDisp( spep_2-1, 1, 1);
changeAnime( spep_2-4, 1, 100);
setRotateKey(   spep_2-4,   1, 0);
setRotateKey(   spep_2+9,   1, 0);

setMoveKey(   spep_2-1,   1,    200,  100,   0);

setScaleKey(   spep_2-1,   0, 1.6, 1.6);
setScaleKey(   spep_2-1,   1, 1.6, 1.6);

setMoveKey(   spep_2+10,   1,    -50, -50,   0);
changeAnime( spep_2+10, 1, 108);
setShakeChara( spep_2+10, 1, 70, 20);
setRotateKey(   spep_2+10,   1, -30);

setMoveKey(   spep_2+12,   1,    -50, 0,   0);
setMoveKey(   spep_2+28,   1,    0, -50,   0);
setMoveKey(   spep_2+44,   1,    -50, -50,   0);
setMoveKey(   spep_2+56,   1,    0, -50,   0);
setMoveKey(   spep_2+60,   1,    -50, -50,   0);

-- ** 背景 ** --

entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景

-- ** エフェクト等 ** --
rush = entryEffect(  spep_2,   SP_03,   0,  -1,  0x100,  0,  0);   --ヒットエフェクト、全面に
setEffScaleKey( spep_2, rush, 1, 1);
setEffAlphaKey( spep_2, rush, 255);

-- ** 背面のエフェクト ** --
ushiro = entryEffect(  spep_2,   SP_14,   0,  -1,  0x80,  0,  0);   --キャラクター
setEffScaleKey( spep_2, ushiro, 1, 1);
setEffAlphaKey( spep_2, ushiro, 255);


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2+0, 906, 42, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+0, shuchusen2, 1.4, 1.4);
setEffScaleKey( spep_2+42, shuchusen2, 1.4, 1.4);

setEffMoveKey( spep_2+1,    shuchusen2,   0,  0);
setEffMoveKey( spep_2+42,    shuchusen2,   0,  0);


shuchusen2a = entryEffectLife( spep_2+43, 906, 38, 0x100,  -1, 200,  300,  300);   -- 集中線
setEffScaleKey( spep_2+44, shuchusen2a, 2, 2);
setEffScaleKey( spep_2+80, shuchusen2a, 2, 2);


-- 書き文字エントリー --
ctGagaga = entryEffectLife( spep_2+10, 10002, 50, 0x100, -1, 0, -80, 300); -- ガガガ
setEffScaleKey( spep_2+10, ctGagaga, 2.6, 2.6);
setEffAlphaKey( spep_2+10, ctGagaga, 255);
setEffRotateKey( spep_2+10, ctGagaga, 0);
setEffRotateKey( spep_2+14, ctGagaga, -10);
setEffRotateKey( spep_2+18, ctGagaga, 0);
setEffRotateKey( spep_2+22, ctGagaga, -10);
setEffRotateKey( spep_2+26, ctGagaga, 10);

setEffRotateKey( spep_2+30, ctGagaga, 0);
setEffRotateKey( spep_2+34, ctGagaga, 10);
setEffRotateKey( spep_2+38, ctGagaga, -10);
setEffRotateKey( spep_2+42, ctGagaga, 0);
setEffRotateKey( spep_2+46, ctGagaga, -10);

-- ** ホワイトフェード ** --

-- ** 音 ** --

playSe( spep_2+10, 1010);
playSe( spep_2+26, 1010);
playSe( spep_2+42, 1010);
playSe( spep_2+50, 1010);
playSe( spep_2+58, 1010);



-- ** 次の準備 ** --
spep_3 = spep_2+80;
entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 206, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   spep_3-1,   1,    -50, -50,   0);
setRotateKey(   spep_3-1,   1, -30);
setDisp( spep_3-1, 1, 0);

------------------------------------------------------
-- 握る(206F)
------------------------------------------------------



-- ** 背景 ** --

-- ** 流線(横) ** --
yokosen3 = entryEffectLife( spep_3+0, 914, 60, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_3+0, yokosen3, 1.6, 1.6);
setEffAlphaKey( spep_3+0, yokosen3, 255);
setEffRotateKey(spep_3+0, yokosen3, 90);
setEffMoveKey( spep_3+0, yokosen3, 0, 0, 0);

-- ** エフェクト等 ** --
teAgeru = entryEffect(  spep_3,   SP_05,   0,  -1,  0,  0,  0);   --握る
setEffScaleKey( spep_3, teAgeru, -1, 1);
setEffAlphaKey( spep_3, teAgeru, 255);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 206, 0x100,  -1, 0,  100,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.4, 1.4);
setEffScaleKey( spep_3, shuchusen3, 1.4, 1.4);
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);



-- ** 音 ** --

playSe( spep_3+60, SE_08);
playSe( spep_3+140, 1040);



-- ** 次の準備 ** --
spep_4 = spep_3+206;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

setRotateKey(   spep_4-1,   1, -30);
setMoveKey(   spep_4-1,   1,    -200, -300,   0);
setDisp( spep_4-1, 1, 0);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------

-- カードカットイン
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_4, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen5, 1.4, 1.4);
setEffAlphaKey( spep_4, shuchusen5, 255);
setEffRotateKey( spep_4, shuchusen5, 0);

playSe( spep_4+4, SE_05);

-- ** 次の準備 ** --
spep_6 = spep_4+90;
entryFade( spep_6-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 130, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- 投げる(130F)
------------------------------------------------------
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
nageru = entryEffect(  spep_6,   SP_16,   0,  -1,  0,  0,  0);   --投げる
setEffScaleKey( spep_6, nageru, 1, 1);
setEffAlphaKey( spep_6, nageru, 255);

-- ** 集中線 ** --

shuchusen6a = entryEffectLife( spep_6, 906, 10, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_6, shuchusen6a, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6a, 1.4, 1.4);
setEffAlphaKey( spep_6, shuchusen6a, 255);
setEffRotateKey( spep_6, shuchusen6a, 0);

shuchusen6b = entryEffectLife( spep_6+60, 906, 90, 0x100,  -1, 0,  100,  0); -- 集中線5
setEffScaleKey( spep_6, shuchusen6b, 1.6, 1.6);
setEffAlphaKey( spep_6, shuchusen6b, 255);
setEffRotateKey( spep_6, shuchusen6b, 0);


-- ** 音 ** --

playSe( spep_6+28, SE_06);
playSe( spep_6+60, SE_07);


-- ** 次の準備 ** --
spep_7 = spep_6+130;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 100, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- ギャン(100F)
------------------------------------------------------


-- ** エフェクト等 ** --
gyan = entryEffect( spep_7, SP_07, 0x80, -1, 0, 0, 0); --ギャン
setEffMoveKey( spep_7, gyan, 0, 0, 0);
setEffScaleKey( spep_7, gyan, -1.0, 1.0);
setEffAlphaKey( spep_7, gyan, 255);
setEffRotateKey( spep_7, gyan, 0);
setEffAlphaKey( spep_7+80, gyan, 255);
setEffAlphaKey( spep_7+82, gyan, 0);

-- 書き文字エントリー --
--[[
ctGyan = entryEffectLife( spep_7, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake( spep_7, ctGyan, 99, 20);
setEffScaleKey( spep_7, ctGyan, 0.1, 0.1);
setEffScaleKey( spep_7+30, ctGyan, 3.4, 3.4);
setEffScaleKey( spep_7+54, ctGyan, 3.8, 3.8);
setEffAlphaKey( spep_7, ctGyan, 255);
setEffAlphaKey( spep_7+50, ctGyan, 255);
setEffAlphaKey( spep_7+54, ctGyan, 0);
--]]

-- ** 音 ** --

playSe( spep_7+5, SE_09);

-- ** 次の準備 ** --
spep_8 = spep_7+80;
entryFade( spep_8-6, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 118, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- 前髪なびき(118F)
------------------------------------------------------
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
nobasu = entryEffect(  spep_8,   SP_08,   0,  -1,  0,  0,  0);   --前髪なびき
setEffScaleKey( spep_8, nobasu, -1, 1);
setEffAlphaKey( spep_8, nobasu, 255);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8+0, 906, 118, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8+0, shuchusen8, 1.6, 1.6);
setEffScaleKey( spep_8+60, shuchusen8, 1.6, 1.6);


-- ** 流線(横) ** --
yokosen8 = entryEffectLife( spep_8+0, 920, 118, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_8+0, yokosen8, 1.6, 1.6);
setEffAlphaKey( spep_8+0, yokosen8, 255);
setEffRotateKey(spep_8+0, yokosen8, 0);
setEffMoveKey( spep_8+0, yokosen8, 0, 0, 0);

playSe( spep_8+10, 8);

-- ** 次の準備 ** --
spep_9 = spep_8+118;
entryFade( spep_9-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 168, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 消滅(220F)
------------------------------------------------------


-- ** エフェクト等 ** --
shoumetu = entryEffect(  spep_9,   SP_09,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_9, shoumetu, -1, 1);
setEffAlphaKey( spep_9, shoumetu, 255);


-- ** 音 ** --

playSe( spep_9+6, 3);



-- ダメージ表示
dealDamage( spep_9+150);
--entryFade( spep_9+208, 9, 10, 1, 8, 8, 8, 255); -- black fade
--entryFade( spep_9+80, 70, 40, 100, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_9+220);
end



print ("[lua]sp1119");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150801;--ef_001
SP_02 = 150802;--ef_002
SP_03 = 150803;--ef_003
SP_04 = 150804;--ef_004
SP_05 = 150805;--ef_005
SP_06 = 150806;--ef_006
SP_07 = 150807;--ef_007

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
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

-- ** キャラクター ** --
setVisibleUI( 0, 0);
changeAnime( 0, 0, 0); -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0); --敵非表示


------------------------------------------------------
-- カットイン(100F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( 0, 0, 90, 0, 10, 10, 10, 180); -- ベース暗め　背景


-- ** オーラエフェクト ** --
ef = entryEffect( 0, SP_01, 0x100, -1, 0, 0, 0); --
setEffMoveKey( 0, ef, 0, 0, 0);
setEffScaleKey( 0, ef, 1.0, 1.0);
setEffAlphaKey( 0, ef, 255);
setEffRotateKey( 0, ef, 0);



-- ** 集中線 ** --
--shuchusen = entryEffectLife( 0, 1500, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( 0, shuchusen, 1.3, 1.3);

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( 0, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( 0, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** 書き文字エントリー ** --
gogogo = entryEffectLife( 0+13, 190006, 73, 0x100, -1, 0, -50, 520); -- ゴゴゴゴゴ
setEffScaleKey( 0+13, gogogo, 0.7, 0.7);


-- ** 音 ** --
playSe( 0, SE_04);

-- ** ホワイトフェード ** --
entryFade( 0+80, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_1 = 100;

speff1 = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff1, 1, 1);
setEffReplaceTexture( speff1, 2, 0); -- カード差し替え
setEffReplaceTexture( speff1, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_1, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

-- ** ホワイトフェード ** --
entryFade( spep_1+81, 5, 9, 2, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1, SE_05);


------------------------------------------------------
-- 槍を投げる(100f)
------------------------------------------------------

spep_2 = spep_1+95; --

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 190, 0, 10, 10, 10, 210); -- ベース暗め　背景

entryFade( spep_2+6, 1, 1, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** オーラエフェクト ** --
ef2 = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_2, ef2, 0, 0, 0);
setEffScaleKey( spep_2, ef2, 1.0, 1.0);
setEffAlphaKey( spep_2, ef2, 255);
setEffRotateKey( spep_2, ef2, 0);
setEffShake(spep_2, ef2, 100, 15);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2+5, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+5, shuchusen2, 1.4, 1.4);

entryFade( spep_2+43, 1, 1, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2+43, 921, 52, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_2+43, ryusen2, 0, 0, 0);
setEffScaleKey( spep_2+43, ryusen2, 1.7, 1.7);
setEffAlphaKey( spep_2+43, ryusen2, 255);
setEffRotateKey( spep_2+43, ryusen2, 230);


-- ** 音 ** --
playSe( spep_2+6, 1062);--102110421062
playSe( spep_2+43, 1022);


-- ** ホワイトフェード ** --
entryFade( spep_2+90, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 陣(120F)
------------------------------------------------------
spep_3 = spep_2+96; --

changeAnime( spep_3, 1, 104); -- 立ち
setDisp( spep_3, 1, 1);
setMoveKey(  spep_3,    1,  150,  -80,   0);
setMoveKey(  spep_3+120,    1,  150,  -80,   0);
setScaleKey( spep_3,    1,  0.8, 0.8);

changeAnime( spep_3+14, 1, 106); -- 立ち
setScaleKey( spep_3+14,    1,  0.9, 0.9);
setScaleKey( spep_3+45,    1,  0.9, 0.9);
setScaleKey( spep_3+50,    1,  0.6, 0.6);
setScaleKey( spep_3+120,    1,  0.6, 0.6);
setRotateKey(spep_3, 1, 0)
setRotateKey(spep_3+13, 1, 0)
setRotateKey(spep_3+14, 1, -30)
setShakeChara(spep_3, 1, 120, 10)



setDisp( spep_3+118, 1, 0);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 140, 0, 10, 10, 10,255); -- ベース暗め　背景

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3, 921, 120, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffScaleKey( spep_3, ryusen3, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffRotateKey( spep_3, ryusen3, 70);

-- ** オーラエフェクト ** --
ef3 = entryEffect( spep_3, SP_05, 0x80, -1, 0, 0, 0); --
setEffMoveKey( spep_3, ef3, 0, 0, 0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffAlphaKey( spep_3, ef3, 255);
setEffRotateKey( spep_3, ef3, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3+9, 906, 110, 0x100,  -1, 0,  50,  -200);   -- 集中線
setEffScaleKey( spep_3+9, shuchusen3, 1.5, 1.5);


-- ** 音 ** --
playSe( spep_3+9, 1014);
playSe( spep_3+60, 8);
playSe( spep_3+79, 8);--1016

entryFade( spep_3+110, 5,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 280; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (200F)
------------------------------------------------------
spep_4 = spep_3+120; --


-- ** 背景 ** --
entryFadeBg( spep_4, 0, 200, 0, 10, 10, 10,255); -- ベース暗め　背景

-- ** オーラエフェクト ** --
ef4 = entryEffect( spep_4, SP_06, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_4, ef4, 0, 0, 0);
setEffScaleKey( spep_4, ef4, 1.0, 1.0);
setEffAlphaKey( spep_4, ef4, 255);
setEffRotateKey( spep_4, ef4, 0);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 95, 0x100,  -1, 0,  100,  -50);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.3, 1.3);

entryFade(spep_4+82, 1,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen4a = entryEffectLife( spep_4+83, 911, 200, 0x100,  -1, 0,  100,  -50);   -- 集中線
setEffScaleKey( spep_4+83, shuchusen4a, 1.2, 1.2);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10008, 85, 0, -1, 0, -180, 300); -- ゴゴゴ・・・
setEffShake(spep_4, ct, 51, 20);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+84, ct, 255);
setEffAlphaKey(spep_4+85, ct, 0);
setEffScaleKey(spep_4, ct, 2.0, 2.0);
setEffRotateKey( spep_4, ct, 0);

setDisp( spep_4, 1, 0);

playSe( spep_4+4, SE_10);
playSe( spep_4+83, SE_10);



-- ダメージ表示
dealDamage(spep_4+16);

entryFade( spep_4+185, 9,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_4+195);

else

------------------------------------------------------
--反転敵
------------------------------------------------------
-- ** キャラクター ** --
setVisibleUI( 0, 0);
changeAnime( 0, 0, 0); -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0); --敵非表示


------------------------------------------------------
-- カットイン(100F)
------------------------------------------------------

-- ** 背景 ** --
entryFadeBg( 0, 0, 90, 0, 10, 10, 10, 180); -- ベース暗め　背景


-- ** オーラエフェクト ** --
ef = entryEffect( 0, SP_02, 0x100, -1, 0, 0, 0); --
setEffMoveKey( 0, ef, 0, 0, 0);
setEffScaleKey( 0, ef, 1.0, 1.0);
setEffAlphaKey( 0, ef, 255);
setEffRotateKey( 0, ef, 0);

--[[
-- ** 集中線 ** --
shuchusen = entryEffectLife( 0, 1500, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.3, 1.3);

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( 0, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( 0, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え
]]--
-- ** 書き文字エントリー ** --
gogogo = entryEffectLife( 0+13, 190006, 73, 0x100, -1, 0, 0, 490); -- ゴゴゴゴゴ
setEffScaleKey( 0+13, gogogo, -0.7, 0.7);


-- ** 音 ** --
playSe( 0, SE_05);

-- ** ホワイトフェード ** --
entryFade( 0+80, 5, 15, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_1 = 100;

speff1 = entryEffect( spep_1, 1507, 0x80, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff1, 1, 1);
setEffReplaceTexture( speff1, 2, 0); -- カード差し替え
setEffReplaceTexture( speff1, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_1, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

-- ** ホワイトフェード ** --
entryFade( spep_1+81, 5, 9, 2, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1, SE_04);


------------------------------------------------------
-- 槍を投げる(100f)
------------------------------------------------------

spep_2 = spep_1+95; --

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 190, 0, 10, 10, 10, 210); -- ベース暗め　背景

entryFade( spep_2+6, 1, 1, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** オーラエフェクト ** --
ef2 = entryEffect( spep_2, SP_04, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_2, ef2, 0, 0, 0);
setEffScaleKey( spep_2, ef2, 1.0, 1.0);
setEffAlphaKey( spep_2, ef2, 255);
setEffRotateKey( spep_2, ef2, 0);
setEffShake(spep_2, ef2, 100, 15);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2+5, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+5, shuchusen2, 1.4, 1.4);

entryFade( spep_2+43, 1, 1, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2+43, 921, 52, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_2+43, ryusen2, 0, 0, 0);
setEffScaleKey( spep_2+43, ryusen2, 1.7, 1.7);
setEffAlphaKey( spep_2+43, ryusen2, 255);
setEffRotateKey( spep_2+43, ryusen2, 230);


-- ** 音 ** --
playSe( spep_2+6, 1062);--102110421062
playSe( spep_2+43, 1022);


-- ** ホワイトフェード ** --
entryFade( spep_2+90, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 陣(120F)
------------------------------------------------------
spep_3 = spep_2+96; --

changeAnime( spep_3, 1, 104); -- 立ち
setDisp( spep_3, 1, 1);
setMoveKey(  spep_3,    1,  150,  -80,   0);
setMoveKey(  spep_3+120,    1,  150,  -80,   0);
setScaleKey( spep_3,    1,  0.8, 0.8);

changeAnime( spep_3+14, 1, 106); -- 立ち
setScaleKey( spep_3+14,    1,  0.9, 0.9);
setScaleKey( spep_3+45,    1,  0.9, 0.9);
setScaleKey( spep_3+50,    1,  0.6, 0.6);
setScaleKey( spep_3+120,    1,  0.6, 0.6);
setRotateKey(spep_3, 1, 0)
setRotateKey(spep_3+13, 1, 0)
setRotateKey(spep_3+14, 1, -30)
setShakeChara(spep_3, 1, 120, 10)



setDisp( spep_3+118, 1, 0);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 140, 0, 10, 10, 10,255); -- ベース暗め　背景

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3, 921, 120, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffScaleKey( spep_3, ryusen3, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffRotateKey( spep_3, ryusen3, 70);

-- ** オーラエフェクト ** --
ef3 = entryEffect( spep_3, SP_05, 0x80, -1, 0, 0, 0); --
setEffMoveKey( spep_3, ef3, 0, 0, 0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffAlphaKey( spep_3, ef3, 255);
setEffRotateKey( spep_3, ef3, 0);

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3+9, 906, 110, 0x100,  -1, 0,  50,  -200);   -- 集中線
setEffScaleKey( spep_3+9, shuchusen3, 1.5, 1.5);


-- ** 音 ** --
playSe( spep_3+9, 1014);
playSe( spep_3+60, 8);
playSe( spep_3+79, 8);--1016

entryFade( spep_3+110, 5,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 280; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (200F)
------------------------------------------------------
spep_4 = spep_3+120; --


-- ** 背景 ** --
entryFadeBg( spep_4, 0, 200, 0, 10, 10, 10,255); -- ベース暗め　背景

-- ** オーラエフェクト ** --
ef4 = entryEffect( spep_4, SP_07, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_4, ef4, 0, 0, 0);
setEffScaleKey( spep_4, ef4, 1.0, 1.0);
setEffAlphaKey( spep_4, ef4, 255);
setEffRotateKey( spep_4, ef4, 0);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 95, 0x100,  -1, 0,  100,  -50);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.3, 1.3);

entryFade(spep_4+82, 1,  4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen4a = entryEffectLife( spep_4+83, 911, 200, 0x100,  -1, 0,  100,  -50);   -- 集中線
setEffScaleKey( spep_4+83, shuchusen4a, 1.2, 1.2);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10008, 85, 0, -1, 0, -180, 300); -- ゴゴゴ・・・
setEffShake(spep_4, ct, 51, 20);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+84, ct, 255);
setEffAlphaKey(spep_4+85, ct, 0);
setEffScaleKey(spep_4, ct, 2.0, 2.0);
setEffRotateKey( spep_4, ct, 0);

setDisp( spep_4, 1, 0);

playSe( spep_4+4, SE_10);
playSe( spep_4+83, SE_10);



-- ダメージ表示
dealDamage(spep_4+16);

entryFade( spep_4+185, 9,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_4+195);
end

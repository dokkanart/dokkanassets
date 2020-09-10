--ベジータ ギャリック砲

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


SP_01 = 151133;--溜め
SP_02 = 151135;--上昇
SP_03 = 151137;--構え
SP_04 = 151139;--放つ
SP_05 = 151141;--軌道
SP_06 = 151142;--敵巻き込み軌道
SP_07 = 151143;--着弾〜火柱


SP_01e = 151134;--溜め
SP_02e = 151136;--上昇
SP_03e = 151138;--構え
SP_04e = 151140;--放つ
SP_05e = 151141;--軌道
SP_06e = 151142;--敵巻き込み軌道
SP_07e = 151143;--着弾〜火柱




multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 溜め(60F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;
entryFadeBg( spep_0, 0, 60, 0, 0, 0, 0, 180);  -- 黒　背景　

kamadasu = entryEffect(  spep_0,  SP_01,   0,  -1,  0,  0,  0);   --鎌引き抜き
setEffScaleKey( spep_0, kamadasu, 1, 1);
setEffAlphaKey( spep_0, kamadasu, 255);

shuchusen = entryEffectLife( spep_0, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen, 1.5, 1.5);
setEffAlphaKey( spep_0, shuchusen, 255);

playSe( spep_0, SE_05);


------------------------------------------------------
-- 上昇(60F) 〜120
------------------------------------------------------
spep_1 = spep_0+60;
entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 60, 0, 10, 10, 10, 180);          -- やや暗い　背景

touzyo = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --構え溜め
setEffScaleKey( spep_1, touzyo, 1, 1);
setEffAlphaKey( spep_1, touzyo, 255);
setEffShake(spep_1, touzyo, 140, 10); --揺らす


-- ** 奥行き流線斜め ** --
ryuusen1 = entryEffectLife( spep_1, 921, 80, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_1, ryuusen1, 1.5, 1.5);
setEffAlphaKey( spep_1, ryuusen1, 255);
setEffRotateKey(spep_1, ryuusen1, 90);

playSe( spep_1, 8);


------------------------------------------------------
-- カットイン(160F) 〜280
------------------------------------------------------
spep_3 = spep_1+60;

entryFade( spep_3-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+18, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 19, 0, 0, 0, 0, 180);          -- ベース黒　背景
entryFadeBg( spep_3+20, 0, 140, 0, 0, 0, 0, 210);          -- ベース黒　背景

roze = entryEffect(  spep_3,   SP_03,   0,  -1,  0,  0,  0);   --放つロゼだけ
setEffScaleKey( spep_3, roze, 1.0, 1.0);
setEffAlphaKey( spep_3, roze, 255);
setEffShake(spep_3+24, roze, 116, 10); --揺らす

shuchusen3 = entryEffectLife( spep_3+20, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3+20, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3+20, shuchusen3, 255);

speff = entryEffect(  spep_3+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_3+33, 190006, 65, 0x100, -1, 0, 200, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_3+33, gogogo, 0.8, 0.8);
setEffAlphaKey( spep_3+33, gogogo, 255);
setEffRotateKey( spep_3+33, gogogo, 20);

playSe( spep_3+20, SE_04);


------------------------------------------------------
-- カードカットイン(90F)　〜370
------------------------------------------------------
spep_6 = spep_3+160;


entryFade( spep_6-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
shuchusenct6 = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_6, shuchusenct6, 2, 2);
setEffAlphaKey( spep_6, shuchusenct6, 255);

playSe( spep_6+4, SE_05);

speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
-- 放つ(60F) 〜430
------------------------------------------------------
spep_4 = spep_6+90;
entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 210);          -- 暗め　背景


kuukan = entryEffect(  spep_4,   SP_04,   0x100,  -1,  0,  0,  0);   --分身登場
setEffScaleKey( spep_4, kuukan, 1.0, 1.0);
setEffAlphaKey( spep_4, kuukan, 255);

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_4, 920, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_4, ryusen4, 0, 0, 0);
setEffRotateKey( spep_4, ryusen4, -70);
setEffRotateKey( spep_4+60, ryusen4, -70);
setEffScaleKey( spep_4, ryusen4, 1.6, 1.6);
setEffAlphaKey( spep_4, ryusen4, 255);

shuchusen4 = entryEffectLife( spep_4, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.8, 1.8);
setEffAlphaKey( spep_4, shuchusen4, 255);

playSe( spep_4+6, SE_06);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10012, 72, 0, -1, 0, -150, 300); -- ズオッ
setEffRotateKey(spep_4, ct, -20);
setEffShake(spep_4, ct, 60, 25);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+40, ct, 255);
setEffAlphaKey(spep_4+50, ct, 0);
setEffScaleKey(spep_4, ct, 0.0, 0.0);
setEffScaleKey(spep_4+10, ct, 3.0, 3.0);
setEffScaleKey(spep_4+40, ct, 3.0, 3.0);
setEffScaleKey(spep_4+50, ct, 6.0, 6.0);


------------------------------------------------------
-- 軌道(80F) 〜510
------------------------------------------------------
spep_5 = spep_4+60;

entryFade( spep_5-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 80, 0, 10, 10, 10, 210);          -- 暗め　背景

kougeki = entryEffect(  spep_5,   SP_05,   0x100,  -1,  0,  0,  0);   --迫る斬撃
setEffScaleKey( spep_5, kougeki, 1.0, 1.0);
setEffAlphaKey( spep_5, kougeki, 255);
setEffMoveKey( spep_5, kougeki, 0, 0, 0);

-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_5, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_5, ryusen5, 0, 0, 0);
setEffRotateKey( spep_5, ryusen5, -70);
setEffRotateKey( spep_5+4, ryusen5, -70);
setEffScaleKey( spep_5, ryusen5, 1.6, 1.6);
setEffAlphaKey( spep_5, ryusen5, 255);

shuchusen5 = entryEffectLife( spep_5, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusen5, 255);

playSe( spep_5, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 450; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

seID0 = playSe( spep_5, SE_07);
stopSe( spep_5, seID0, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);
setMoveKey(   SP_dodge,   1,    150, -15000,   0);
setMoveKey(   SP_dodge+135,   1,    150, -15000,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_7 = spep_5+80;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** ギャン ** --
gyan = entryEffectLife( spep_7, 190001 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_7, gyan, 0, 0, 0);
setEffScaleKey( spep_7, gyan,1.0, 1.0);
setEffAlphaKey( spep_7, gyan, 255);
setEffShake( spep_7, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_7, ctgyan, 255);
setEffScaleKey( spep_7, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_7+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_7, ctgyan, 255);
setEffAlphaKey( spep_7+60, ctgyan, 80);
setEffShake( spep_7, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_7+8, SE_09);


------------------------------------------------------
-- 敵巻き込み軌道（90）
------------------------------------------------------
spep_8 = spep_7+60;
entryFade( spep_8-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 90, 0, 10, 10, 10, 210);          -- 暗め　背景

kougeki = entryEffect(  spep_8,   SP_06,   0x100,  -1,  0,  0,  0);   --迫る斬撃
setEffScaleKey( spep_8, kougeki, 1.0, 1.0);
setEffAlphaKey( spep_8, kougeki, 255);
setEffMoveKey( spep_8, kougeki, 0, 0, 0);


-- ** 奥行き流線斜め ** --
ryuusen8 = entryEffectLife( spep_8, 921, 90, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_8, ryuusen8, 1.7, 1.7);
setEffAlphaKey( spep_8, ryuusen8, 255);
setEffRotateKey(spep_8, ryuusen8, 300);

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_8, 10014, 90, 0, -1, 0, -100, 350); -- ズドドッ
setEffShake(spep_8, ctZudodo, 90, 15);
setEffScaleKey( spep_8, ctZudodo, 2.7, 2.7);
setEffScaleKey( spep_8+90, ctZudodo, 2.7, 2.7);
setEffRotateKey(spep_8, ctZudodo, 0);
setEffAlphaKey(spep_8, ctZudodo, 255);

shuchusen8 = entryEffectLife( spep_8, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen8, 1.5, 1.5);
setEffAlphaKey( spep_8, shuchusen8, 255);

playSe( spep_8+6, SE_07);
------------------------------------------------------
-- 火柱(100)
------------------------------------------------------
spep_9 = spep_8+90;
entryFadeBg( spep_9, 0, 100, 0, 0, 0, 0, 255);          -- ベース黒　背景
entryFade( spep_9-4, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

zanngeki9 = entryEffect(  spep_9,   SP_07,   0,  -1,  0,  0,  0);
setEffMoveKey( spep_9, zanngeki9, 0, 0, 0);
setEffScaleKey( spep_9, zanngeki9, 1.0, 1.0);
setEffAlphaKey( spep_9, zanngeki9, 255);
setEffShake( spep_9, zanngeki9, 10);


shuchusen9 = entryEffectLife( spep_9, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_9, shuchusen9, 1.5, 1.5);
setEffAlphaKey( spep_9, shuchusen9, 255);

-- ** 音 ** --
playSe( spep_9+8, SE_09);

------------------------------------------------------
-- 爆発(140F)
------------------------------------------------------
spep_10 = spep_9+100;
entryFade( spep_10-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

bom = entryEffect(  spep_10,   1553,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_10, bom, 1.0, 1.0);
setEffAlphaKey( spep_10, bom, 255);

playSe( spep_10, SE_10);

-- ダメージ表示
dealDamage( spep_10+16);
entryFade( spep_10+86, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_10+96);




else
------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;
entryFadeBg( spep_0, 0, 60, 0, 0, 0, 0, 180);  -- 黒　背景　

kamadasu = entryEffect(  spep_0,  SP_01e,   0,  -1,  0,  0,  0);   --鎌引き抜き
setEffScaleKey( spep_0, kamadasu, 1, 1);
setEffAlphaKey( spep_0, kamadasu, 255);

shuchusen = entryEffectLife( spep_0, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen, 1.5, 1.5);
setEffAlphaKey( spep_0, shuchusen, 255);

playSe( spep_0, SE_05);


------------------------------------------------------
-- 上昇(60F)
------------------------------------------------------
spep_1 = spep_0+60;
entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 60, 0, 10, 10, 10, 180);          -- やや暗い　背景

touzyo = entryEffect(  spep_1,   SP_02e,   0,  -1,  0,  0,  0);   --構え溜め
setEffScaleKey( spep_1, touzyo, 1, 1);
setEffAlphaKey( spep_1, touzyo, 255);
setEffShake(spep_1, touzyo, 140, 10); --揺らす


-- ** 奥行き流線斜め ** --
ryuusen1 = entryEffectLife( spep_1, 921, 80, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_1, ryuusen1, 1.5, 1.5);
setEffAlphaKey( spep_1, ryuusen1, 255);
setEffRotateKey(spep_1, ryuusen1, 90);

playSe( spep_1, 8);


------------------------------------------------------
-- カットイン(160F)
------------------------------------------------------
spep_3 = spep_1+60;

entryFade( spep_3-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+18, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 19, 0, 0, 0, 0, 180);          -- ベース黒　背景
entryFadeBg( spep_3+20, 0, 140, 0, 0, 0, 0, 210);          -- ベース黒　背景

roze = entryEffect(  spep_3,   SP_03e,   0,  -1,  0,  0,  0);   --放つロゼだけ
setEffScaleKey( spep_3, roze, 1.0, 1.0);
setEffAlphaKey( spep_3, roze, 255);
setEffShake(spep_3+24, roze, 116, 10); --揺らす

shuchusen3 = entryEffectLife( spep_3+20, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3+20, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3+20, shuchusen3, 255);
--[[
speff = entryEffect(  spep_3+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( spep_3+33, 190006, 65, 0x100, -1, 0, 200, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_3+33, gogogo, -0.8, 0.8);
setEffAlphaKey( spep_3+33, gogogo, 255);
setEffRotateKey( spep_3+33, gogogo, 20);

playSe( spep_3+20, SE_04);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_6 = spep_3+160;


entryFade( spep_6-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
shuchusenct6 = entryEffectLife( spep_6, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_6, shuchusenct6, 2, 2);
setEffAlphaKey( spep_6, shuchusenct6, 255);

playSe( spep_6+4, SE_05);

speff = entryEffect(  spep_6,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
-- 放つ(60F)
------------------------------------------------------
spep_4 = spep_6+90;
entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 210);          -- 暗め　背景


kuukan = entryEffect(  spep_4,   SP_04e,   0x100,  -1,  0,  0,  0);   --分身登場
setEffScaleKey( spep_4, kuukan, 1.0, 1.0);
setEffAlphaKey( spep_4, kuukan, 255);

-- ** 流線(横) ** --
ryusen4 = entryEffectLife( spep_4, 920, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_4, ryusen4, 0, 0, 0);
setEffRotateKey( spep_4, ryusen4, -70);
setEffRotateKey( spep_4+60, ryusen4, -70);
setEffScaleKey( spep_4, ryusen4, 1.6, 1.6);
setEffAlphaKey( spep_4, ryusen4, 255);

shuchusen4 = entryEffectLife( spep_4, 906, 60, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.8, 1.8);
setEffAlphaKey( spep_4, shuchusen4, 255);

playSe( spep_4+6, SE_06);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10012, 72, 0, -1, 0, -150, 300); -- ズオッ
setEffRotateKey(spep_4, ct, -20);
setEffShake(spep_4, ct, 60, 25);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+40, ct, 255);
setEffAlphaKey(spep_4+50, ct, 0);
setEffScaleKey(spep_4, ct, 0.0, 0.0);
setEffScaleKey(spep_4+10, ct, 3.0, 3.0);
setEffScaleKey(spep_4+40, ct, 3.0, 3.0);
setEffScaleKey(spep_4+50, ct, 6.0, 6.0);


------------------------------------------------------
-- 軌道(80F)
------------------------------------------------------
spep_5 = spep_4+60;

entryFade( spep_5-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 80, 0, 10, 10, 10, 210);          -- 暗め　背景

kougeki = entryEffect(  spep_5,   SP_05,   0x100,  -1,  0,  0,  0);   --迫る斬撃
setEffScaleKey( spep_5, kougeki, 1.0, 1.0);
setEffAlphaKey( spep_5, kougeki, 255);
setEffMoveKey( spep_5, kougeki, 0, 0, 0);

-- ** 流線(横) ** --
ryusen5 = entryEffectLife( spep_5, 920, 80, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_5, ryusen5, 0, 0, 0);
setEffRotateKey( spep_5, ryusen5, -70);
setEffRotateKey( spep_5+4, ryusen5, -70);
setEffScaleKey( spep_5, ryusen5, 1.6, 1.6);
setEffAlphaKey( spep_5, ryusen5, 255);

shuchusen5 = entryEffectLife( spep_5, 906, 80, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen5, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusen5, 255);

playSe( spep_5, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 470; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

seID0 = playSe( spep_5, SE_07);
stopSe( spep_5, seID0, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);
setMoveKey(   SP_dodge,   1,    150, -15000,   0);
setMoveKey(   SP_dodge+135,   1,    150, -15000,   0);


endPhase(SP_dodge+10);
do return end
else end




------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_7 = spep_5+80;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** ギャン ** --
gyan = entryEffectLife( spep_7, 190001 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_7, gyan, 0, 0, 0);
setEffScaleKey( spep_7, gyan,1.0, 1.0);
setEffAlphaKey( spep_7, gyan, 255);
setEffShake( spep_7, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_7, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_7, ctgyan, 255);
setEffScaleKey( spep_7, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_7+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_7, ctgyan, 255);
setEffAlphaKey( spep_7+60, ctgyan, 80);
setEffShake( spep_7, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_7+8, SE_09);


------------------------------------------------------
-- 敵巻き込み軌道（90）
------------------------------------------------------
spep_8 = spep_7+60;
entryFade( spep_8-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 90, 0, 10, 10, 10, 210);          -- 暗め　背景

kougeki = entryEffect(  spep_8,   SP_06,   0x100,  -1,  0,  0,  0);   --迫る斬撃
setEffScaleKey( spep_8, kougeki, 1.0, 1.0);
setEffAlphaKey( spep_8, kougeki, 255);
setEffMoveKey( spep_8, kougeki, 0, 0, 0);


-- ** 奥行き流線斜め ** --
ryuusen8 = entryEffectLife( spep_8, 921, 90, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_8, ryuusen8, 1.7, 1.7);
setEffAlphaKey( spep_8, ryuusen8, 255);
setEffRotateKey(spep_8, ryuusen8, 300);

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_8, 10014, 90, 0, -1, 0, -100, 350); -- ズドドッ
setEffShake(spep_8, ctZudodo, 90, 15);
setEffScaleKey( spep_8, ctZudodo, 2.7, 2.7);
setEffScaleKey( spep_8+90, ctZudodo, 2.7, 2.7);
setEffRotateKey(spep_8, ctZudodo, -50);
setEffAlphaKey(spep_8, ctZudodo, 255);

shuchusen8 = entryEffectLife( spep_8, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_8, shuchusen8, 1.5, 1.5);
setEffAlphaKey( spep_8, shuchusen8, 255);

playSe( spep_8+6, SE_07);
------------------------------------------------------
-- 火柱(100)
------------------------------------------------------
spep_9 = spep_8+90;
entryFadeBg( spep_9, 0, 100, 0, 0, 0, 0, 255);          -- ベース黒　背景
entryFade( spep_9-4, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

zanngeki9 = entryEffect(  spep_9,   SP_07,   0,  -1,  0,  0,  0);
setEffMoveKey( spep_9, zanngeki9, 0, 0, 0);
setEffScaleKey( spep_9, zanngeki9, 1.0, 1.0);
setEffAlphaKey( spep_9, zanngeki9, 255);
setEffShake( spep_9, zanngeki9, 10);


shuchusen9 = entryEffectLife( spep_9, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_9, shuchusen9, 1.5, 1.5);
setEffAlphaKey( spep_9, shuchusen9, 255);

-- ** 音 ** --
playSe( spep_9+8, SE_09);

------------------------------------------------------
-- 爆発(140F)
------------------------------------------------------
spep_10 = spep_9+100;
entryFade( spep_10-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

bom = entryEffect(  spep_10,   1553,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_10, bom, 1.0, 1.0);
setEffAlphaKey( spep_10, bom, 255);

playSe( spep_10, SE_10);

-- ダメージ表示
dealDamage( spep_10+16);
entryFade( spep_10+86, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_10+96);

end
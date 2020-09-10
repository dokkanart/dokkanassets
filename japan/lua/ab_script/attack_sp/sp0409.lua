--参考sp0346超4ゴジータ100倍ビッグバンかめはめ

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


SP_01 = 150984;--鎌引き抜き(敵味方同じ)
SP_02 = 150986;--登場(敵味方同じ)
SP_03 = 150988;--放つロゼ
SP_04 = 150990;--斬撃
SP_05 = 150991;--敵に迫る斬撃


SP_06 = 150982;--爆発
SP_07 = 1663;--爆発
SP_08 = 150982;--爆発

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
-- 鎌引き抜き(110F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

entryFadeBg( spep_0, 0, 110, 0, 0, 0, 0, 255);  -- 黒　背景　

kamadasu = entryEffect(  spep_0,  SP_01,   0,  -1,  0,  0,  0);   --鎌引き抜き
setEffScaleKey( spep_0, kamadasu, 1, 1);
setEffAlphaKey( spep_0, kamadasu, 255);

tate = entryEffectLife( spep_0, 914, 110, 0x80,  -1, 0,  0,  0); -- 集中線 ホワイトフェード消えるまで
setEffScaleKey( spep_0, tate, 1.5, 1.5);
setEffAlphaKey( spep_0, tate, 255);
setEffRotateKey(spep_0, tate, 90);

shuchusen1 = entryEffectLife( spep_0, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_0, shuchusen1, 255);

playSe( spep_0, SE_02);
playSe( spep_0+20, SE_02);
playSe( spep_0+40, SE_02);
playSe( spep_0+60, SE_02);
playSe( spep_0+80, SE_02);


------------------------------------------------------
-- 登場(140F)
------------------------------------------------------
spep_1 = spep_0+110;

entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 140, 0, 10, 10, 10, 180);          -- やや暗い　背景

touzyo = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --構え溜め
setEffScaleKey( spep_1, touzyo, 1, 1);
setEffAlphaKey( spep_1, touzyo, 255);
setEffShake(spep_1, touzyo, 140, 10); --ロゼ揺らす

shuchusen2 = entryEffectLife( spep_1, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen2, 255);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+10, 10012, 72, 0, -1, 0, -100, 350); -- ズオッ
setEffRotateKey(spep_1+10, ct, -10);
setEffShake(spep_1+10, ct, 72, 5);
setEffAlphaKey(spep_1+10, ct, 255);
setEffAlphaKey(spep_1+42, ct, 255);
setEffAlphaKey(spep_1+52, ct, 0);
setEffScaleKey(spep_1+10, ct, 0.0, 0.0);
setEffScaleKey(spep_1+14, ct, 2.0, 2.0);
setEffScaleKey(spep_1+44, ct, 2.0, 2.0);
setEffScaleKey(spep_1+62, ct, 6.0, 6.0);

speff = entryEffect(  spep_1+50,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+50,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


playSe( spep_1+24, 1042);
playSe( spep_1+64, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+64, 190006, 70, 0x100, -1, 0, 100, 500);    -- ゴゴゴゴ
setEffShake(spep_1+64, ctgogo, 70, 8);
setEffScaleKey(spep_1+64, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_1+64, ctgogo, 0);
setEffAlphaKey( spep_1+64, ctgogo, 255);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = spep_1+134;
entryFade( spep_2-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusenct = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_2, shuchusenct, 2, 2);
setEffAlphaKey( spep_2, shuchusenct, 255);


playSe( spep_2+4, SE_05);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
-- 放つロゼ(120F)
------------------------------------------------------
spep_3 = spep_2+90;

entryFade( spep_3-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+18, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255);          -- ベース黒　背景

roze = entryEffect(  spep_3,   SP_03,   0,  -1,  0,  0,  0);   --放つロゼだけ
setEffScaleKey( spep_3, roze, 1.0, 1.0);
setEffAlphaKey( spep_3, roze, 255);
setEffShake(spep_3+24, roze, 116, 10); --ロゼ揺らす

ryuusen = entryEffectLife( spep_3+20, 921, 100, 0x80,  -1, 0,  0,  0);   -- 流線斜めを縦にする
setEffScaleKey( spep_3+20, ryuusen, 1.6, 1.6);
setEffAlphaKey( spep_3+20, ryuusen, 255);
setEffRotateKey(spep_3+20, ryuusen, -90);

zangeki1 = entryEffect(  spep_3,   SP_04,   0x100,  -1,  0,  0,  0);   --斬撃
setEffScaleKey( spep_3, zangeki1, 1.0, 1.0);
setEffAlphaKey( spep_3, zangeki1, 255);
setEffShake(spep_3, zangeki1, 140, 10); --斬撃揺らす

shuchusen3 = entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen3, 255);



-- 書き文字エントリー
ct = entryEffectLife( spep_3+24, 10012, 72, 0, -1, 0, 100, 300); -- ズオッ
setEffRotateKey(spep_3+24, ct, 20);
setEffShake(spep_3+24, ct, 72, 5);
setEffAlphaKey(spep_3+24, ct, 255);
setEffAlphaKey(spep_3+46, ct, 255);
setEffAlphaKey(spep_3+66, ct, 0);
setEffScaleKey(spep_3+24, ct, 0.0, 0.0);
setEffScaleKey(spep_3+28, ct, 1.3, 1.3);
setEffScaleKey(spep_2+48, ct, 1.3, 1.3);
setEffScaleKey(spep_3+66, ct, 6.0, 6.0);

playSe( spep_3+24, SE_06);

------------------------------------------------------
-- 迫る斬撃(80F)
------------------------------------------------------
spep_4 = spep_3+120;

entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 80, 0, 10, 10, 10, 180);          -- 暗め　背景

ryuusen2 = entryEffectLife( spep_4, 921, 120, 0x80,  -1, 0,  -50,  0);   -- 流線斜め
setEffScaleKey( spep_4, ryuusen2, 1.7, 1.7);
setEffAlphaKey( spep_4, ryuusen2, 255);
setEffRotateKey(spep_4, ryuusen2, 240);

zangeki2 = entryEffect(  spep_4,   SP_05,   0x80,  -1,  0,  -200,  0);   --迫る斬撃
setEffScaleKey( spep_4, zangeki2, 1.0, 1.0);
setEffAlphaKey( spep_4, zangeki2, 255);



setDisp( spep_4, 0, 0);
setMoveKey(  spep_4,    0,  -2000, 0,   0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);    -- 気溜め後ろ
setShakeChara( spep_4, 1, 60,10);
setShakeChara( spep_4+60, 1, 10, 15);
setShakeChara( spep_4+70, 1, 10, 20);

setMoveKey(  spep_4,    1,  500, -900,   0);
setMoveKey(  spep_4+20,    1,  200,  -200,   0);
setMoveKey(  spep_4+60,    1,  200,  -200,   0);
setMoveKey(  spep_4+70,    1,  190,  -190,   0);
setMoveKey(  spep_4+80,    1,  180,  -180,   0);

setScaleKey(  spep_4,   1,   2,  2);
setScaleKey(  spep_4+80,   1,   2,  2);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 100, 0, -1, 0, 150, 350); -- ズドドッ
setEffShake(spep_4, ct, 100, 10);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, 50);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+75, ct, 255);
setEffAlphaKey(spep_4+80, ct, 0);

--playSe( spep_4+6, SE_06);
playSe( spep_4+6, SE_07);

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

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(  SP_dodge+1,1,0);
setMoveKey(  SP_dodge+1,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+1,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+1,   1, 0);
setMoveKey(  SP_dodge+20,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+20,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+20,   1, 0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_5 = spep_4+80;

setDisp( spep_5, 1, 0);

entryFade( spep_5-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** ギャン ** --
gyan = entryEffectLife( spep_5, 190001 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5, gyan, 0, 0, 0);
setEffScaleKey( spep_5, gyan,1.0, 1.0);
setEffAlphaKey( spep_5, gyan, 255);
setEffShake( spep_5, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_5, ctgyan, 255);
setEffScaleKey( spep_5, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_5, ctgyan, 255);
setEffAlphaKey( spep_5+60, ctgyan, 80);
setEffShake( spep_5, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_5+8, SE_09);

------------------------------------------------------
-- 爆発(140F)
------------------------------------------------------
spep_6 = spep_5+62;



entryFade( spep_6-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景

bom = entryEffect(  spep_6,   SP_07,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_6, bom, 1.0, 1.0);
setEffAlphaKey( spep_6, bom, 255);

playSe(  spep_6+31,SE_10);

shuchusen4 = entryEffectLife( spep_6, 906, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusen4, 255);

-- ダメージ表示
dealDamage( spep_6+16);
entryFade( spep_6+126, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+136);


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

entryFadeBg( spep_0, 0, 110, 0, 0, 0, 0, 255);  -- 黒　背景　

kamadasu = entryEffect(  spep_0,  SP_01,   0,  -1,  0,  0,  0);   --鎌引き抜き
setEffScaleKey( spep_0, kamadasu, -1, 1);
setEffAlphaKey( spep_0, kamadasu, 255);

tate = entryEffectLife( spep_0, 914, 110, 0x80,  -1, 0,  0,  0); -- 集中線 ホワイトフェード消えるまで
setEffScaleKey( spep_0, tate, 1.5, 1.5);
setEffAlphaKey( spep_0, tate, 255);
setEffRotateKey(spep_0, tate, 90);

shuchusen1 = entryEffectLife( spep_0, 906, 110, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_0, shuchusen1, 255);

playSe( spep_0, SE_02);
playSe( spep_0+20, SE_02);
playSe( spep_0+40, SE_02);
playSe( spep_0+60, SE_02);
playSe( spep_0+80, SE_02);


------------------------------------------------------
-- 登場(140F)
------------------------------------------------------
spep_1 = spep_0+110;

entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 140, 0, 10, 10, 10, 180);          -- やや暗い　背景

touzyo = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --構え溜め
setEffScaleKey( spep_1, touzyo, -1, 1);
setEffAlphaKey( spep_1, touzyo, 255);
setEffShake(spep_1, touzyo, 140, 10); --ロゼ揺らす

shuchusen2 = entryEffectLife( spep_1, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen2, 255);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+10, 10012, 72, 0, -1, 0, -100, 350); -- ズオッ
setEffRotateKey(spep_1+10, ct, -10);
setEffShake(spep_1+10, ct, 72, 5);
setEffAlphaKey(spep_1+10, ct, 255);
setEffAlphaKey(spep_1+42, ct, 255);
setEffAlphaKey(spep_1+52, ct, 0);
setEffScaleKey(spep_1+10, ct, 0.0, 0.0);
setEffScaleKey(spep_1+14, ct, 2.0, 2.0);
setEffScaleKey(spep_1+44, ct, 2.0, 2.0);
setEffScaleKey(spep_1+62, ct, 6.0, 6.0);
--[[
speff = entryEffect(  spep_1+50,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+50,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( spep_1+24, 1042);
playSe( spep_1+64, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+64, 190006, 70, 0x100, -1, 0, 100, 480);    -- ゴゴゴゴ
setEffShake(spep_1+64, ctgogo, 70, 8);
setEffScaleKey(spep_1+64, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_1+64, ctgogo, 0);
setEffAlphaKey( spep_1+64, ctgogo, 255);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = spep_1+134;
entryFade( spep_2-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusenct = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_2, shuchusenct, 2, 2);
setEffAlphaKey( spep_2, shuchusenct, 255);


playSe( spep_2+4, SE_05);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


------------------------------------------------------
-- 放つロゼ(120F)
------------------------------------------------------
spep_3 = spep_2+90;

entryFade( spep_3-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3+18, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255);          -- ベース黒　背景

roze = entryEffect(  spep_3,   SP_03,   0,  -1,  0,  0,  0);   --放つロゼだけ
setEffScaleKey( spep_3, roze, -1.0, 1.0);
setEffAlphaKey( spep_3, roze, 255);
setEffShake(spep_3+24, roze, 116, 10); --ロゼ揺らす

ryuusen = entryEffectLife( spep_3+20, 921, 100, 0x80,  -1, 0,  0,  0);   -- 流線斜めを縦にする
setEffScaleKey( spep_3+20, ryuusen, 1.6, 1.6);
setEffAlphaKey( spep_3+20, ryuusen, 255);
setEffRotateKey(spep_3+20, ryuusen, -90);

zangeki1 = entryEffect(  spep_3,   SP_04,   0x100,  -1,  0,  0,  0);   --斬撃
setEffScaleKey( spep_3, zangeki1, 1.0, 1.0);
setEffAlphaKey( spep_3, zangeki1, 255);
setEffShake(spep_3, zangeki1, 140, 10); --斬撃揺らす

shuchusen3 = entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusen3, 255);



-- 書き文字エントリー
ct = entryEffectLife( spep_3+24, 10012, 72, 0, -1, 0, 100, 300); -- ズオッ
setEffRotateKey(spep_3+24, ct, 20);
setEffShake(spep_3+24, ct, 72, 5);
setEffAlphaKey(spep_3+24, ct, 255);
setEffAlphaKey(spep_3+46, ct, 255);
setEffAlphaKey(spep_3+66, ct, 0);
setEffScaleKey(spep_3+24, ct, 0.0, 0.0);
setEffScaleKey(spep_3+28, ct, 1.3, 1.3);
setEffScaleKey(spep_2+48, ct, 1.3, 1.3);
setEffScaleKey(spep_3+66, ct, 6.0, 6.0);

playSe( spep_3+24, SE_06);

------------------------------------------------------
-- 迫る斬撃(80F)
------------------------------------------------------
spep_4 = spep_3+120;

entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 80, 0, 10, 10, 10, 180);          -- 暗め　背景

ryuusen2 = entryEffectLife( spep_4, 921, 120, 0x80,  -1, 0,  -50,  0);   -- 流線斜め
setEffScaleKey( spep_4, ryuusen2, 1.7, 1.7);
setEffAlphaKey( spep_4, ryuusen2, 255);
setEffRotateKey(spep_4, ryuusen2, 240);

zangeki2 = entryEffect(  spep_4,   SP_05,   0x80,  -1,  0,  -200,  0);   --迫る斬撃
setEffScaleKey( spep_4, zangeki2, 1.0, 1.0);
setEffAlphaKey( spep_4, zangeki2, 255);



setDisp( spep_4, 0, 0);
setMoveKey(  spep_4,    0,  -2000, 0,   0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);    -- 気溜め後ろ
setShakeChara( spep_4, 1, 60,10);
setShakeChara( spep_4+60, 1, 10, 15);
setShakeChara( spep_4+70, 1, 10, 20);

setMoveKey(  spep_4,    1,  500, -900,   0);
setMoveKey(  spep_4+20,    1,  200,  -200,   0);
setMoveKey(  spep_4+60,    1,  200,  -200,   0);
setMoveKey(  spep_4+70,    1,  190,  -190,   0);
setMoveKey(  spep_4+80,    1,  180,  -180,   0);

setScaleKey(  spep_4,   1,   2,  2);
setScaleKey(  spep_4+80,   1,   2,  2);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 100, 0, -1, 0, 150, 350); -- ズドドッ
setEffShake(spep_4, ct, 100, 10);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, -10);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+75, ct, 255);
setEffAlphaKey(spep_4+80, ct, 0);

--playSe( spep_4+6, SE_06);
playSe( spep_4+6, SE_07);

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

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp(  SP_dodge+1,1,0);
setMoveKey(  SP_dodge+1,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+1,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+1,   1, 0);
setMoveKey(  SP_dodge+20,    1,  0,  -10000,   0);
setScaleKey( SP_dodge+20,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+20,   1, 0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- ギャン
------------------------------------------------------
spep_5 = spep_4+80;

setDisp( spep_5, 1, 0);

entryFade( spep_5-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** ギャン ** --
gyan = entryEffectLife( spep_5, 190001 ,60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5, gyan, 0, 0, 0);
setEffScaleKey( spep_5, gyan,1.0, 1.0);
setEffAlphaKey( spep_5, gyan, 255);
setEffShake( spep_5, gyan, 10);

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400); -- ギャン
setEffAlphaKey( spep_5, ctgyan, 255);
setEffScaleKey( spep_5, ctgyan, 3.0, 3.0);
setEffScaleKey( spep_5+60, ctgyan, 4.0, 4.0);
setEffAlphaKey( spep_5, ctgyan, 255);
setEffAlphaKey( spep_5+60, ctgyan, 80);
setEffShake( spep_5, ctgyan, 60, 10);

-- ** 音 ** --
playSe( spep_5+8, SE_09);

------------------------------------------------------
-- 爆発(140F)
------------------------------------------------------
spep_6 = spep_5+62;

entryFade( spep_6-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景

bom = entryEffect(  spep_6,   SP_07,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_6, bom, 1.0, 1.0);
setEffAlphaKey( spep_6, bom, 255);

playSe(  spep_6+31,SE_10);

shuchusen4 = entryEffectLife( spep_6, 906, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusen4, 255);

-- ダメージ表示
dealDamage( spep_6+16);
entryFade( spep_6+126, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+136);

end



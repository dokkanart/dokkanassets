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


SP_01 = 150977;--ベジット地面
SP_02 = 150978;--構え溜め
SP_03 = 150979;--ナビモーション
SP_04 = 150980;--発射
SP_05 = 150981;--えびぞり 敵の前面に表示、ef_006と同時再生
SP_06 = 150982;--迫る 敵の後ろ面に表示、ef_005と同時再生
SP_07 = 150983;--爆発

SP_01e = 151015;--ベジット地面
SP_03e = 151208;--ナビモーション
SP_04e= 151016;--発射
SP_07e = 151017;--爆発

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
-- ベジット地面(30F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0=0;

entryFadeBg( spep_0, 0, 30, 0, 0, 0, 0, 255);  -- ベース黒　背景　ホワイトフェード消えるまで

zimen = entryEffect(  spep_0,   SP_01,   0,  -1,  0,  0,  0);   --ベジット地面
setEffScaleKey( spep_0, zimen, 1.0, 1.0);
setEffAlphaKey( spep_0, zimen, 255);


------------------------------------------------------
-- 構え溜め(70F)
------------------------------------------------------
spep_1=spep_0+30;

entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 70, 0, 0, 0, 0, 255);          -- ベース黒　背景

tame = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --構え溜め
setEffScaleKey( spep_1, tame, 1.0, 1.0);
setEffAlphaKey( spep_1, tame, 255);


shuchusen1=entryEffectLife( spep_1, 906, 70, 0x100,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen1, 255);

playSe( spep_1+4, SE_01);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2=spep_1+64;
entryFade( spep_2-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_2+4, SE_05);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


shuchusenct = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_2, shuchusenct, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusenct, 255);

------------------------------------------------------
-- ナビモーション(140F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 140, 0, 0, 0, 0, 255);          -- ベース黒　背景

nabi = entryEffect(  spep_3,   SP_03,   0,  -1,  0,  0,  0);   --ナビモーション
setEffScaleKey( spep_3, nabi, 1.0, 1.0);
setEffAlphaKey( spep_3, nabi, 255);

shuchusen2 = entryEffectLife( spep_3, 906, 140, 0x100,  -1, 0, 0,  0); 
setEffScaleKey( spep_3, shuchusen2, 2, 2);
setEffAlphaKey( spep_3, shuchusen2, 255);
setEffAlphaKey( spep_3, shuchusen2, 255);

yoko = entryEffectLife( spep_3, 920, 140, 0x80,  -1, 0,  0,  0); -- ホワイトフェード消えるまで
setEffScaleKey( spep_3, yoko, 1.4, 1.4);
setEffAlphaKey( spep_3, yoko, 255);
setEffRotateKey(spep_3, yoko, 0);

speff = entryEffect(  spep_3+14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3+14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_3, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_3+24, 190006, 70, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake(spep_3+24, ctgogo, 70, 8);
setEffScaleKey(spep_3+24, ctgogo, 0.7, 0.7);
setEffRotateKey(spep_3+24, ctgogo, 0);
setEffAlphaKey( spep_3+24, ctgogo, 255);


------------------------------------------------------
-- 発射(120F)
------------------------------------------------------
spep_4=spep_3+140;

entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255);          -- ベース黒　背景

ryuusen = entryEffectLife( spep_4, 921, 120, 0x80,  -1, 0,  -100,  -100);   -- 流線斜め
setEffScaleKey( spep_4, ryuusen, 1.5, 1.5);
setEffAlphaKey( spep_4, ryuusen, 255);
setEffRotateKey(spep_4, ryuusen, -150);

camehame = entryEffect(  spep_4,   SP_04,   0,  -1,  0,  0,  0);   --発射
setEffScaleKey( spep_4, camehame, 1.0, 1.0);
setEffAlphaKey( spep_4, camehame, 255);
setEffAlphaKey( spep_4, camehame, 255);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10012, 72, 0, -1, 0, 100, 250); -- ズオッ
setEffShake(spep_4, ct, 72, 15);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+42, ct, 255);
setEffAlphaKey(spep_4+62, ct, 0);
setEffScaleKey(spep_4, ct, 0.0, 0.0);
setEffScaleKey(spep_4+4, ct, 2.5, 2.5);
setEffScaleKey(spep_4+44, ct, 2.0, 2.0);
setEffScaleKey(spep_4+62, ct, 6.0, 6.0);

playSe( spep_4+6, SE_06);

------------------------------------------------------
-- 吹き飛ぶ(160F)
------------------------------------------------------
spep_5 = spep_4+120;

entryFade( spep_5-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景

kamehame = entryEffect(  spep_5,  SP_06,   0x80,  -1,  0,  0,  0);   --usiro
setEffScaleKey( spep_5, kamehame, 1.0, 1.0);
setEffAlphaKey( spep_5, kamehame, 255);

setDisp( spep_5, 1, 1);--敵表示
changeAnime( spep_5, 1, 102);  --待機
setRotateKey(   spep_5,   1, 0);
setMoveKey(   spep_5,   1,    170,  -50,  0);
setMoveKey(   spep_5+160,   1,    170,  -50,  0);
setScaleKey(   spep_5,   1, 1.4, 1.4);
setScaleKey(   spep_5+160,   1, 1.4, 1.4);
setShakeChara( spep_5, 1, 160 , 10 );

sumi = entryEffect(  spep_5,   SP_05,   0,  -1,  0,  0,  0);   --mae
setEffScaleKey( spep_5, sumi, 1.0, 1.0);
setEffAlphaKey( spep_5, sumi, 255);

shuchusenkuro = entryEffectLife( spep_5, 911, 160, 0x100,  -1, 0,  200,  0);   -- 集中線  黒のやつはここ
setEffScaleKey( spep_5, shuchusenkuro, 2, 2);
setEffAlphaKey( spep_5, shuchusenkuro, 255);
setEffMoveKey(spep_5, shuchusenkuro, 200, 0);

setDisp( spep_5+140, 1, 0);--敵表示

playSe( spep_5+4, 1042);
playSe( spep_5+20, SE_07);
playSe( spep_5+120, SE_06);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 540; --エンドフェイズのフレーム数を置き換える

setMoveKey(   SP_dodge,   1,    170,  -50,  0);
setScaleKey(   SP_dodge,   1, 1.4, 1.4);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge+8,   1,    170,  -50,  0);
setScaleKey(   SP_dodge+8,   1, 1.4, 1.4);

setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発(140F)
------------------------------------------------------
spep_6 = spep_5+160;

entryFade( spep_6-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景

bom = entryEffect(  spep_6,   SP_07,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_6, bom, 1.0, 1.0);
setEffAlphaKey( spep_6, bom, 255);


shuchusen3 = entryEffectLife( spep_6, 906, 150, 0x100,  -1, 0,  200,  200);   -- 集中線
setEffScaleKey( spep_6, shuchusen3, 1.7, 1.7);
setEffAlphaKey( spep_6, shuchusen3, 255);


playSe( spep_6+4, SE_10);

-- ダメージ表示
dealDamage( spep_6+16);
entryFade( spep_6+126, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+136);


else

------------------------------------------------------
--敵側
------------------------------------------------------
spep_0=0;

entryFadeBg( spep_0, 0, 30, 0, 0, 0, 0, 255);  -- ベース黒　背景　ホワイトフェード消えるまで

zimen = entryEffect(  spep_0,   SP_01e,   0,  -1,  0,  0,  0);   --ベジット地面
setEffScaleKey( spep_0, zimen, 1.0, 1.0);
setEffAlphaKey( spep_0, zimen, 255);


------------------------------------------------------
-- 構え溜め(70F)
------------------------------------------------------
spep_1=spep_0+30;

entryFade( spep_1-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 70, 0, 0, 0, 0, 255);          -- ベース黒　背景

tame = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --構え溜め
setEffScaleKey( spep_1, tame, 1.0, 1.0);
setEffAlphaKey( spep_1, tame, 255);


shuchusen1=entryEffectLife( spep_1, 906, 70, 0x100,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen1, 255);

playSe( spep_1+4, SE_01);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2=spep_1+64;
entryFade( spep_2-8, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_2+4, SE_05);

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusenct = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_2, shuchusenct, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusenct, 255);
------------------------------------------------------
-- ナビモーション(140F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 140, 0, 0, 0, 0, 255);          -- ベース黒　背景

nabi = entryEffect(  spep_3,   SP_03e,   0,  -1,  0,  0,  0);   --ナビモーション
setEffScaleKey( spep_3, nabi, 1.0, 1.0);
setEffAlphaKey( spep_3, nabi, 255);

shuchusen2 = entryEffectLife( spep_3, 906, 140, 0x100,  -1, 0, 0,  0); 
setEffScaleKey( spep_3, shuchusen2, 2, 2);
setEffAlphaKey( spep_3, shuchusen2, 255);
setEffAlphaKey( spep_3, shuchusen2, 255);

yoko = entryEffectLife( spep_3, 920, 140, 0x80,  -1, 0,  0,  0); -- ホワイトフェード消えるまで
setEffScaleKey( spep_3, yoko, 1.4, 1.4);
setEffAlphaKey( spep_3, yoko, 255);
setEffRotateKey(spep_3, yoko, 0);
--[[
speff = entryEffect(  spep_3+14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3+14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
playSe( spep_3, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_3+24, 190006, 70, 0x100, -1, 0, 0, 450);    -- ゴゴゴゴ
setEffShake(spep_3+24, ctgogo, 70, 8);
setEffScaleKey(spep_3+24, ctgogo, -0.7, 0.7);
setEffRotateKey(spep_3+24, ctgogo, 0);
setEffAlphaKey( spep_3+24, ctgogo, 255);


------------------------------------------------------
-- 発射(120F)
------------------------------------------------------
spep_4=spep_3+140;

entryFade( spep_4-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255);          -- ベース黒　背景

ryuusen = entryEffectLife( spep_4, 921, 120, 0x80,  -1, 0,  -100,  -100);   -- 流線斜め
setEffScaleKey( spep_4, ryuusen, 1.5, 1.5);
setEffAlphaKey( spep_4, ryuusen, 255);
setEffRotateKey(spep_4, ryuusen, -150);

camehame = entryEffect(  spep_4,   SP_04e,   0,  -1,  0,  0,  0);   --発射
setEffScaleKey( spep_4, camehame, 1.0, 1.0);
setEffAlphaKey( spep_4, camehame, 255);
setEffAlphaKey( spep_4, camehame, 255);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10012, 72, 0, -1, 0, 100, 250); -- ズオッ
setEffShake(spep_4, ct, 72, 15);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+42, ct, 255);
setEffAlphaKey(spep_4+62, ct, 0);
setEffScaleKey(spep_4, ct, 0.0, 0.0);
setEffScaleKey(spep_4+4, ct, 2.5, 2.5);
setEffScaleKey(spep_4+44, ct, 2.0, 2.0);
setEffScaleKey(spep_4+62, ct, 6.0, 6.0);

playSe( spep_4+6, SE_06);

------------------------------------------------------
-- 吹き飛ぶ(160F)
------------------------------------------------------
spep_5 = spep_4+120;

entryFade( spep_5-8, 4, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景

kamehame = entryEffect(  spep_5,  SP_06,   0x80,  -1,  0,  0,  0);   --usiro
setEffScaleKey( spep_5, kamehame, 1.0, 1.0);
setEffAlphaKey( spep_5, kamehame, 255);

setDisp( spep_5, 1, 1);--敵表示
changeAnime( spep_5, 1, 102);  --待機
setRotateKey(   spep_5,   1, 0);
setMoveKey(   spep_5,   1,    170,  -50,  0);
setMoveKey(   spep_5+160,   1,    170,  -50,  0);
setScaleKey(   spep_5,   1, 1.4, 1.4);
setScaleKey(   spep_5+160,   1, 1.4, 1.4);
setShakeChara( spep_5, 1, 160 , 10 );

sumi = entryEffect(  spep_5,   SP_05,   0,  -1,  0,  0,  0);   --mae
setEffScaleKey( spep_5, sumi, 1.0, 1.0);
setEffAlphaKey( spep_5, sumi, 255);

shuchusenkuro = entryEffectLife( spep_5, 911, 160, 0x100,  -1, 0,  200,  0);   -- 集中線  黒のやつはここ
setEffScaleKey( spep_5, shuchusenkuro, 2, 2);
setEffAlphaKey( spep_5, shuchusenkuro, 255);
setEffMoveKey(spep_5, shuchusenkuro, 200, 0);

setDisp( spep_5+140, 1, 0);--敵表示

playSe( spep_5+4, 1042);
playSe( spep_5+20, SE_07);
playSe( spep_5+120, SE_06);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 540; --エンドフェイズのフレーム数を置き換える

setMoveKey(   SP_dodge,   1,    170,  -50,  0);
setScaleKey(   SP_dodge,   1, 1.4, 1.4);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge+8,   1,    170,  -50,  0);
setScaleKey(   SP_dodge+8,   1, 1.4, 1.4);

setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+1,   1, 0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発(140F)
------------------------------------------------------
spep_6 = spep_5+160;

entryFade( spep_6-6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景

bom = entryEffect(  spep_6,   SP_07e,   0,  -1,  0,  0,  0);   --爆発
setEffScaleKey( spep_6, bom, 1.0, 1.0);
setEffAlphaKey( spep_6, bom, 255);


shuchusen3 = entryEffectLife( spep_6, 906, 150, 0x100,  -1, 0,  200,  200);   -- 集中線
setEffScaleKey( spep_6, shuchusen3, 1.7, 1.7);
setEffAlphaKey( spep_6, shuchusen3, 255);


playSe( spep_6+4, SE_10);

-- ダメージ表示
dealDamage( spep_6+16);
entryFade( spep_6+126, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_6+136);

end
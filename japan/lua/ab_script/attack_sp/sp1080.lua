

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

tyo = -30;
tyo2 = -40;

SP_01 = 150146;--煙
SP_02 = 150147;--地面
SP_03 = 150148;--叩き潰す1
SP_04 = 150149;--溜め
SP_05 = 150150;--発射
SP_06 = 700;--瞬間移動
SP_07 = 1563;--大爆発
SP_08 = 150155;--叩き潰す2

multi_frm = 2;

setDisp( 0, 1, 0);
setDisp( 0, 0, 1);

changeAnime( 0, 0, 16);                       -- 立ち

setMoveKey(  0,   0,    0, -54,   0);
setMoveKey(  1,   0,    0, -54,   0);
setScaleKey(  0,   0, 0.5, 0.5);
--setScaleKey(   90,   0, 1.5, 1.5);

------------------------------------------------------
-- 正面タックル
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

setMoveKey(  0,   0,    0, -54,   0);
setMoveKey(  95,   0,    0, -54,   0);

setScaleKey(  25,   0, 2.0, 2.0);
setScaleKey(  95,   0, 2.0, 2.0);

entryFade( 90, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

shuchusen = entryEffectLife( 0, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen1, 1.3, 1.3);

entryEffect(  0,  SP_01,  0x80,   -1,  0,  0,  0);

setShakeChara( 0, 0, 95 , 8);

speff = entryEffect(  5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( 5, SE_04);

playSe( 0, 1011);
playSe( 29, 1011);
playSe( 63, 1011);

-- 書き文字エントリ

ct = entryEffectLife( 10, 10008, 80, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(10, ct, 80, 8);
setEffScaleKey(10, ct, 1.4, 1.4);

entryFadeBg(0, 0, 95, 0, 10, 10, 10, 255);       -- ベース暗め　背景

spep_1 = 95;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_1+64, SE_06);

spep_2 = spep_1+89;

------------------------------------------------------
-- パンチ&打ち落とし
------------------------------------------------------
setDisp( spep_2, 1, 1);

changeAnime( spep_2, 0, 3); 
--changeAnime( spep_2+20, 0, 9); 
changeAnime( spep_2+27, 0, 11); 
changeAnime( spep_2+65, 0, 15);

setMoveKey( spep_2,   0,    -600, -54,   0);
setMoveKey( spep_2+10,   0,    0, -54,   0);
--setMoveKey( spep_2+20,   0,    -150, -54,   0);
setMoveKey( spep_2+28,   0,    -150, -54,   0);
setMoveKey( spep_2+45,   0,    -800, -54,   0);
setMoveKey( spep_2+64,   0,    -800, -54,   0);
setMoveKey( spep_2+65,   0,    100, 150,   0);
setMoveKey( spep_2+70,   0,    100, 150,   0);
setMoveKey( spep_2+85,   0,    100, 600,   0);

setScaleKey(  spep_2,   0, 1.5, 1.5);
setScaleKey(  spep_2+64,   0, 1.5, 1.5);
setScaleKey(  spep_2+65,   0, -1.5, 1.5);
setScaleKey(  spep_2+85,   0, -1.5, 1.5);

changeAnime( spep_2, 1, 100); 
changeAnime( spep_2+27, 1, 108); 

setAnimeLoop( spep_2+1, 1, 1);
setAnimeLoop( spep_2+28, 1, 1);

setMoveKey( spep_2,   1,    770, -54,   0);
setMoveKey( spep_2+18,   1,    770, -54,   0);
setMoveKey( spep_2+27,   1,    130, -54,   0);
setMoveKey( spep_2+47,   1,    300, -54,   0);
setMoveKey( spep_2+67,   1,   0, -54,   0);
--setMoveKey( spep_2+75,   1,   50, -54,   0);
setMoveKey( spep_2+84,   1,   0, -600,   0);

setScaleKey(  spep_2,   1, 1.5, 1.5);
setScaleKey(  spep_2+84,   1, 1.5, 1.5);

setRotateKey(spep_2+66, 1, 0); 
setRotateKey(spep_2+67, 1, 90); 

--playSe( spep_2+10, SE_03);

--setMoveKey( spep_1+60,   0,    0, -54,   0);

--setDisp( spep_2+55,0, 0);

-- ** エフェクト等 ** --

--entryEffectLife( spep_2, 920, 75, 0x80, -1, 0, 0, 0);--流線

ryusen_1 = entryEffectLife( spep_2, 920, 85, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey(spep_2,ryusen_1,1.5,1.5);
setEffRotateKey(spep_2,ryusen_1,0);
setEffRotateKey(spep_2+64,ryusen_1,0);
setEffRotateKey(spep_2+65,ryusen_1,90);

syougeki = entryEffect( spep_2+28,3,0x100,-1,0,100,0); --衝撃
setEffScaleKey( spep_2+28, syougeki, 2.5, 2.5);
playSe( spep_2+28, 1009);
setDamage( spep_2+28);  -- ダメージ振動等

syunnkan = entryEffect( spep_2+56,SP_06,0x100,-1,0,150,100); --瞬間移動
setEffScaleKey( spep_2+56, syunnkan, 1.5, 1.5);
playSe( spep_2+56, 43);

syougeki_2 = entryEffect( spep_2+67,3,0x100,-1,0,0,0); --衝撃
setEffScaleKey( spep_2+67, syougeki_2, 2.5, 2.5);
playSe( spep_2+67, 1025);
setDamage( spep_2+67);  -- ダメージ振動等

-- 書き文字エントリ

ct = entryEffectLife( spep_2+28, 10018, 10, 0x100, -1, 0, 100, 100);    --ドゴォンッ
setEffShake(spep_2+28, ct, 10, 8);
setEffScaleKey(spep_2+28, ct, 2.4, 2.4);
setEffScaleKey(spep_2+33, ct, 2.4, 2.4);
setEffScaleKey(spep_2+38, ct, 6.0, 6.0);
setEffAlphaKey(spep_2+28, ct , 255);
setEffAlphaKey(spep_2+33, ct , 255);
setEffAlphaKey(spep_2+38, ct , 0);

ct = entryEffectLife(  spep_2+56, 10011, 10, 0x100, -1, 0, 150, 200);    --シュンッ
setEffShake( spep_2+56, ct, 10, 8);
setEffScaleKey( spep_2+56, ct, 1.4, 1.4);

ct = entryEffectLife( spep_2+67, 10021, 10, 0x100, -1, 0, 0, 100);    --バゴォッ
setEffShake(spep_2+67, ct, 10, 8);
setEffScaleKey(spep_2+67, ct, 2.4, 2.4);
setEffScaleKey(spep_2+72, ct, 2.4, 2.4);
setEffScaleKey(spep_2+77, ct, 6.0, 6.0);
setEffAlphaKey(spep_2+67, ct , 255);
setEffAlphaKey(spep_2+72, ct , 255);
setEffAlphaKey(spep_2+77, ct , 0);

entryFadeBg(spep_2, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 200; --エンドフェイズのフレーム数を置き換える
--SP_dodge = 195; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+5,   0,   -2000, -54,   0);

endPhase(SP_dodge+10);
do return end
else end
--playSe( spep_2+55, 37);

entryFade( spep_2+80, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+85;

------------------------------------------------------
-- 激烈ラッシュ(110F)
------------------------------------------------------

setDisp( spep_3, 0, 0);
setDisp( spep_3, 1, 1);

setScaleKey(  spep_3,   1, 2.2, 2.2);
setScaleKey(  spep_3+130,   1, 2.2, 2.2);

setMoveKey(  spep_3,  1, 0,  600,   0);
setMoveKey(  spep_3+10,  1, 0,  0,   0);
--setMoveKey(  spep_3+20,  1, 0,  -150,   0);
setMoveKey(  spep_3+30,  1, 0,  -400,   0);
setMoveKey(  spep_3+60,  1, 0,  -200,   0);
setMoveKey(  spep_3+61,  1, 0,  -400,   0);
setMoveKey(  spep_3+130,  1, 0,  -400,   0);

changeAnime( spep_3, 1, 108); 
changeAnime( spep_3+30, 1, 106); 
changeAnime( spep_3+61, 1, 108); 
--changeAnime( spep_4+100, 1, 108); 
--changeAnime( spep_4+220, 1, 108);

setAnimeLoop( spep_3+1, 1, 1);
setAnimeLoop( spep_3+31, 1, 1);
setAnimeLoop( spep_3+62, 1, 1);

setRotateKey( spep_3, 1, 90); 
setRotateKey( spep_3+29, 1, 90); 
setRotateKey( spep_3+30, 1, 0); 
setRotateKey( spep_3+60, 1, 0); 
setRotateKey( spep_3+61, 1, 90); 
setRotateKey( spep_3+130, 1, 90); 

-- ** エフェクト等 ** --

playSe( spep_3+30,1014);--激突音1
playSe( spep_3+61,SE_10);-- 激突音2

setDamage( spep_3+61);  -- ダメージ振動等

setShakeChara( spep_3+70, 1 , 125 , 5);

--[[
shuchusen2 = entryEffectLife( spep_3+65, 906, 115, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_3+65, shuchusen2, 1.5, 1.5);
]]--

ryusen2 = entryEffectLife( spep_3, 920, 20, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey(spep_3,ryusen2,2,2);
setEffRotateKey(spep_3,ryusen2, 90);
setEffAlphaKey(spep_3,ryusen2, 255);
setEffAlphaKey(spep_3+20,ryusen2,0);

entryEffect( spep_3+30,SP_02,0x80,-1,0,0,0);--地面
entryEffect( spep_3+50,SP_08,0x80,-1,0,0,0);--叩きつけ
entryEffect( spep_3+50,SP_03,0x100,-1,0,0,0);--叩きつけ

entryFadeBg( spep_3, 0, 130, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- 書き文字エントリ

ct = entryEffectLife(  spep_3+50, 10011, 10, 0x100, -1, 0, -170, 300);    --シュンッ
setEffShake( spep_3+50, ct, 10, 8);
setEffScaleKey( spep_3+50, ct, 1.4, 1.4);
playSe( spep_3+50, 43);

ct = entryEffectLife( spep_3+61, 10021, 10, 0x100, -1, 0, 0, -200);    --バゴォッ
setEffShake(spep_3+61, ct, 10, 8);
setEffScaleKey(spep_3+61, ct, 2.4, 2.4);
setEffScaleKey(spep_3+66, ct, 2.4, 2.4);
setEffScaleKey(spep_3+71, ct, 6.0, 6.0);
setEffAlphaKey(spep_3+61, ct , 255);
setEffAlphaKey(spep_3+66, ct , 255);
setEffAlphaKey(spep_3+71, ct , 0);

ct = entryEffectLife(  spep_3+105, 10011, 10, 0x100, -1, 0, -100, 150);    --シュンッ
setEffShake( spep_3+105, ct, 10, 8);
setEffScaleKey( spep_3+105, ct, 1.4, 1.4);
playSe( spep_3+105, 43);

entryFade( spep_3+125, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+130;

------------------------------------------------------
--スーパーノヴァ溜め
------------------------------------------------------

setDisp( spep_4, 1, 0);

shuchusen = entryEffectLife( spep_4, 906, 160, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen, 1.3, 1.3);--260

entryEffect( spep_4, SP_04, 0x00, -1,  0,  0,  0);   -- クウラ溜め

playSe( spep_4, SE_06);
playSe( spep_4+20, SE_03);
playSe( spep_4+40, SE_03);
playSe( spep_4+60, SE_03);
--playSe( spep_4+80, SE_03);

entryFade( spep_4+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_4, 0, 160, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- 書き文字エントリ

ct = entryEffectLife( spep_4, 10008, 80, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_4, ct, 80, 8);
setEffScaleKey(spep_4, ct, 2.0, 2.0);

spep_5 = spep_4+80;

------------------------------------------------------
--スーパーノヴァ発射
------------------------------------------------------

playSe( spep_5, SE_07);

sen2 = entryEffectLife( spep_5, 921, 80, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_5, sen2, 210);
setEffScaleKey( spep_5, sen2, 1.7, 1.7);

entryEffect( spep_5, SP_05, 0x00, -1,  0,  0,  0);   -- クウラ発射

entryFade( spep_5+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー

ct = entryEffectLife( spep_5, 10012, 80, 0, -1, 0, 100, 300); -- ズオッ
setEffShake( spep_5, ct, 80, 5);
setEffAlphaKey( spep_5, ct, 255);
setEffAlphaKey( spep_5+60, ct, 255);--290
setEffAlphaKey( spep_5+70, ct, 0);--300
setEffScaleKey( spep_5, ct, 0.0, 0.0);
setEffScaleKey( spep_5+12, ct, 2.3, 2.3);
setEffScaleKey( spep_5+60, ct, 2.3, 2.3);
setEffScaleKey( spep_5+70, ct, 6.0, 6.0);

spep_6 = spep_5+80;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
entryEffect( spep_6,SP_07,0,-1,0,0,0);

setDisp( spep_6, 1, 0);

-- 書き文字エントリー

--playSe( spep_9+9, 1023);
playSe( spep_6+9, SE_10);
shuchusen = entryEffectLife( spep_6+4, 906, 160, 0x00,  -1, 0,  0,  0);--集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

--playSe( spep_9+149, SE_10);

-- ダメージ表示
dealDamage(spep_6+34);

setDamage( spep_6+34);-- ダメージ振動等

entryFade( spep_6+160, 9,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);-- ホワイト

endPhase(spep_6+170);

else

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
------------------------------------------------------
-- 正面タックル
------------------------------------------------------
--kame_flag = 0x00;
--if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

setMoveKey(  0,   0,    0, -54,   0);
setMoveKey(  95,   0,    0, -54,   0);

setScaleKey(  25,   0, 2.0, 2.0);
setScaleKey(  95,   0, 2.0, 2.0);

entryFade( 90, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

shuchusen = entryEffectLife( 0, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen1, 1.3, 1.3);

entryEffect(  0,  SP_01,  0x80,   -1,  0,  0,  0);

setShakeChara( 0, 0, 95 , 8);

--[[
speff = entryEffect(  5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

--playSe( 5, SE_04);

playSe( 0, 1011);
playSe( 29, 1011);
playSe( 63, 1011);

-- 書き文字エントリ

ct = entryEffectLife( 10, 10008, 80, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(10, ct, 80, 8);
setEffScaleKey(10, ct, 1.4, 1.4);

entryFadeBg(0, 0, 95, 0, 10, 10, 10, 255);       -- ベース暗め　背景

spep_1 = 95;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_1+64, SE_06);

spep_2 = spep_1+89;

------------------------------------------------------
-- パンチ&打ち落とし
------------------------------------------------------
setDisp( spep_2, 1, 1);

changeAnime( spep_2, 0, 3); 
--changeAnime( spep_2+20, 0, 9); 
changeAnime( spep_2+27, 0, 11); 
changeAnime( spep_2+65, 0, 15); 

setMoveKey( spep_2,   0,    -600, -54,   0);
setMoveKey( spep_2+10,   0,    0, -54,   0);
--setMoveKey( spep_2+20,   0,    -150, -54,   0);
setMoveKey( spep_2+28,   0,    -150, -54,   0);
setMoveKey( spep_2+45,   0,    -800, -54,   0);
setMoveKey( spep_2+64,   0,    -800, -54,   0);
setMoveKey( spep_2+65,   0,    100, 150,   0);
setMoveKey( spep_2+70,   0,    100, 150,   0);
setMoveKey( spep_2+85,   0,    100, 600,   0);

setScaleKey(  spep_2,   0, 1.5, 1.5);
setScaleKey(  spep_2+64,   0, 1.5, 1.5);
setScaleKey(  spep_2+65,   0, -1.5, 1.5);
setScaleKey(  spep_2+85,   0, -1.5, 1.5);

changeAnime( spep_2, 1, 100); 
changeAnime( spep_2+27, 1, 108);

setAnimeLoop( spep_2+1, 1, 1);
setAnimeLoop( spep_2+28, 1, 1);

setMoveKey( spep_2,   1,    770, -54,   0);
setMoveKey( spep_2+18,   1,    770, -54,   0);
setMoveKey( spep_2+27,   1,    130, -54,   0);
setMoveKey( spep_2+47,   1,    300, -54,   0);
setMoveKey( spep_2+67,   1,   0, -54,   0);
--setMoveKey( spep_2+75,   1,   50, -54,   0);
setMoveKey( spep_2+84,   1,   0, -600,   0);

setScaleKey(  spep_2,   1, 1.5, 1.5);
setScaleKey(  spep_2+84,   1, 1.5, 1.5);

setRotateKey(spep_2+66, 1, 0); 
setRotateKey(spep_2+67, 1, 90); 

--playSe( spep_2+10, SE_03);

--setMoveKey( spep_1+60,   0,    0, -54,   0);

--setDisp( spep_2+55,0, 0);

-- ** エフェクト等 ** --

--entryEffectLife( spep_2, 920, 75, 0x80, -1, 0, 0, 0);--流線

ryusen_1 = entryEffectLife( spep_2, 920, 85, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey(spep_2,ryusen_1,1.5,1.5);
setEffRotateKey(spep_2,ryusen_1,0);
setEffRotateKey(spep_2+64,ryusen_1,0);
setEffRotateKey(spep_2+65,ryusen_1,90);

syougeki = entryEffect( spep_2+28,3,0x100,-1,0,100,0); --衝撃
setEffScaleKey( spep_2+28, syougeki, 2.5, 2.5);
playSe( spep_2+28, 1009);
setDamage( spep_2+28);  -- ダメージ振動等

syunnkan = entryEffect( spep_2+56,SP_06,0x100,-1,0,150,100); --瞬間移動
setEffScaleKey( spep_2+56, syunnkan, 1.5, 1.5);
playSe( spep_2+56, 43);

syougeki_2 = entryEffect( spep_2+67,3,0x100,-1,0,0,0); --衝撃
setEffScaleKey( spep_2+67, syougeki_2, 2.5, 2.5);
playSe( spep_2+67, 1025);
setDamage( spep_2+67);  -- ダメージ振動等

-- 書き文字エントリ

ct = entryEffectLife( spep_2+28, 10018, 10, 0x100, -1, 0, 100, 100);    --ドゴォンッ
setEffShake(spep_2+28, ct, 10, 8);
setEffScaleKey(spep_2+28, ct, 2.4, 2.4);
setEffScaleKey(spep_2+33, ct, 2.4, 2.4);
setEffScaleKey(spep_2+38, ct, 6.0, 6.0);
setEffAlphaKey(spep_2+28, ct , 255);
setEffAlphaKey(spep_2+33, ct , 255);
setEffAlphaKey(spep_2+38, ct , 0);

ct = entryEffectLife(  spep_2+56, 10011, 10, 0x100, -1, 0, 150, 200);    --シュンッ
setEffShake( spep_2+56, ct, 10, 8);
setEffScaleKey( spep_2+56, ct, 1.4, 1.4);

ct = entryEffectLife( spep_2+67, 10021, 10, 0x100, -1, 0, 0, 100);    --バゴォッ
setEffShake(spep_2+67, ct, 10, 8);
setEffScaleKey(spep_2+67, ct, 2.4, 2.4);
setEffScaleKey(spep_2+72, ct, 2.4, 2.4);
setEffScaleKey(spep_2+77, ct, 6.0, 6.0);
setEffAlphaKey(spep_2+67, ct , 255);
setEffAlphaKey(spep_2+72, ct , 255);
setEffAlphaKey(spep_2+77, ct , 0);

entryFadeBg(spep_2, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 200; --エンドフェイズのフレーム数を置き換える
--SP_dodge = 195; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+5,   0,   -2000, -54,   0);

endPhase(SP_dodge+10);
do return end
else end
--playSe( spep_2+55, 37);

entryFade( spep_2+80, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+85;

------------------------------------------------------
-- 激烈ラッシュ(110F)
------------------------------------------------------

setDisp( spep_3, 0, 0);
setDisp( spep_3, 1, 1);

setScaleKey(  spep_3,   1, 2.2, 2.2);
setScaleKey(  spep_3+130,   1, 2.2, 2.2);

setMoveKey(  spep_3,  1, 0,  600,   0);
setMoveKey(  spep_3+10,  1, 0,  0,   0);
--setMoveKey(  spep_3+20,  1, 0,  -150,   0);
setMoveKey(  spep_3+30,  1, 0,  -400,   0);
setMoveKey(  spep_3+60,  1, 0,  -200,   0);
setMoveKey(  spep_3+61,  1, 0,  -400,   0);
setMoveKey(  spep_3+130,  1, 0,  -400,   0);

changeAnime( spep_3, 1, 108); 
changeAnime( spep_3+30, 1, 106); 
changeAnime( spep_3+61, 1, 108); 
--changeAnime( spep_4+100, 1, 108); 
--changeAnime( spep_4+220, 1, 108);

setAnimeLoop( spep_3+1, 1, 1);
setAnimeLoop( spep_3+31, 1, 1);
setAnimeLoop( spep_3+62, 1, 1);

setRotateKey( spep_3, 1, 90); 
setRotateKey( spep_3+29, 1, 90); 
setRotateKey( spep_3+30, 1, 0); 
setRotateKey( spep_3+60, 1, 0); 
setRotateKey( spep_3+61, 1, 90); 
setRotateKey( spep_3+130, 1, 90); 

-- ** エフェクト等 ** --

playSe( spep_3+30,1014);--激突音1
playSe( spep_3+61,SE_10);-- 激突音2

setDamage( spep_3+61);  -- ダメージ振動等

setShakeChara( spep_3+70, 1 , 125 , 5);

--[[
shuchusen2 = entryEffectLife( spep_3+65, 906, 115, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_3+65, shuchusen2, 1.5, 1.5);
]]--

ryusen2 = entryEffectLife( spep_3, 920, 20, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey(spep_3,ryusen2,2,2);
setEffRotateKey(spep_3,ryusen2, 90);
setEffAlphaKey(spep_3,ryusen2, 255);
setEffAlphaKey(spep_3+20,ryusen2,0);

entryEffect( spep_3+30,SP_02,0x80,-1,0,0,0);--地面
entryEffect( spep_3+50,SP_08,0x80,-1,0,0,0);--叩きつけ
entryEffect( spep_3+50,SP_03,0x100,-1,0,0,0);--叩きつけ

entryFadeBg( spep_3, 0, 130, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- 書き文字エントリ

ct = entryEffectLife(  spep_3+50, 10011, 10, 0x100, -1, 0, -170, 300);    --シュンッ
setEffShake( spep_3+50, ct, 10, 8);
setEffScaleKey( spep_3+50, ct, 1.4, 1.4);
playSe( spep_3+50, 43);

ct = entryEffectLife( spep_3+61, 10021, 10, 0x100, -1, 0, 0, -200);    --バゴォッ
setEffShake(spep_3+61, ct, 10, 8);
setEffScaleKey(spep_3+61, ct, 2.4, 2.4);
setEffScaleKey(spep_3+66, ct, 2.4, 2.4);
setEffScaleKey(spep_3+71, ct, 6.0, 6.0);
setEffAlphaKey(spep_3+61, ct , 255);
setEffAlphaKey(spep_3+66, ct , 255);
setEffAlphaKey(spep_3+71, ct , 0);

ct = entryEffectLife(  spep_3+105, 10011, 10, 0x100, -1, 0, -100, 150);    --シュンッ
setEffShake( spep_3+105, ct, 10, 8);
setEffScaleKey( spep_3+105, ct, 1.4, 1.4);
playSe( spep_3+105, 43);

entryFade( spep_3+125, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+130;

------------------------------------------------------
--スーパーノヴァ溜め
------------------------------------------------------

setDisp( spep_4, 1, 0);

shuchusen = entryEffectLife( spep_4, 906, 160, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen, 1.3, 1.3);--260

entryEffect( spep_4, SP_04, 0x00, -1,  0,  0,  0);   -- クウラ溜め

playSe( spep_4, SE_06);
playSe( spep_4+20, SE_03);
playSe( spep_4+40, SE_03);
playSe( spep_4+60, SE_03);
--playSe( spep_4+80, SE_03);

entryFade( spep_4+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( spep_4, 0, 160, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- 書き文字エントリ

ct = entryEffectLife( spep_4, 10008, 80, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_4, ct, 80, 8);
setEffScaleKey(spep_4, ct, 2.0, 2.0);

spep_5 = spep_4+80;

------------------------------------------------------
--スーパーノヴァ発射
------------------------------------------------------

playSe( spep_5, SE_07);

sen2 = entryEffectLife( spep_5, 921, 80, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_5, sen2, 210);
setEffScaleKey( spep_5, sen2, 1.7, 1.7);

entryEffect( spep_5, SP_05, 0x00, -1,  0,  0,  0);   -- クウラ発射

entryFade( spep_5+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー

ct = entryEffectLife( spep_5, 10012, 80, 0, -1, 0, 100, 300); -- ズオッ
setEffShake( spep_5, ct, 80, 5);
setEffAlphaKey( spep_5, ct, 255);
setEffAlphaKey( spep_5+60, ct, 255);--290
setEffAlphaKey( spep_5+70, ct, 0);--300
setEffScaleKey( spep_5, ct, 0.0, 0.0);
setEffScaleKey( spep_5+12, ct, 2.3, 2.3);
setEffScaleKey( spep_5+60, ct, 2.3, 2.3);
setEffScaleKey( spep_5+70, ct, 6.0, 6.0);

spep_6 = spep_5+80;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
entryEffect( spep_6,SP_07,0,-1,0,0,0);

setDisp( spep_6, 1, 0);

-- 書き文字エントリー

--playSe( spep_9+9, 1023);
playSe( spep_6+9, SE_10);
shuchusen = entryEffectLife( spep_6+4, 906, 160, 0x00,  -1, 0,  0,  0);--集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

--playSe( spep_9+149, SE_10);

-- ダメージ表示
dealDamage(spep_6+34);

setDamage( spep_6+34);-- ダメージ振動等

entryFade( spep_6+160, 9,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);-- ホワイト

endPhase(spep_6+180);

end

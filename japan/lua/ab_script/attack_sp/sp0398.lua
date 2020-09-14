print ("[lua]sp0398");

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

SP_01 = 102009;
SP_02 = 102010;
SP_03 = 102011;

multi_frm = 2;

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI( 0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);   -- 立ち
setAnimeLoop( 0, 0, 1);

setMoveKey( 0, 0, 0, -54, 0);
setMoveKey( 1, 0, 0, -54, 0);
setMoveKey( 2, 0, 0, -54, 0);
setMoveKey( 3, 0, 0, -54, 0);
setMoveKey( 4, 0, 0, -54, 0);
setMoveKey( 5, 0, 0, -54, 0);
setScaleKey( 0, 0, 1.5, 1.5);
setScaleKey( 1, 0, 1.5, 1.5);
setScaleKey( 2, 0, 1.5, 1.5);
setScaleKey( 3, 0, 1.5, 1.5);
setScaleKey( 4, 0, 1.5, 1.5);
setScaleKey( 5, 0, 1.5, 1.5);
setScaleKey( 66, 0, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);
changeAnime( 30, 0, 17);  -- 溜め!
setAnimeLoop( 30, 0, 1);

-- ** エフェクト等 ** --
entryEffect( 30, 1501, 0x80, -1, 0, 0, 0);    -- eff_002
entryEffect( 30, 1500, 0, -1, 0, 0, 0);    -- eff_001

aura = entryEffectLife( 30, 311, 38, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 38, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake( 30, ct, 40, 7);
setEffAlphaKey( 30, ct, 255);
setEffAlphaKey( 50, ct, 255);
setEffAlphaKey( 70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);

-- ** ホワイトフェード ** --
entryFade( 62, 3, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( 30, SE_01);

------------------------------------------------------
-- 気弾溜め！(69F開始)
------------------------------------------------------

spep_1 = 69;

-- ** キャラクター ** --
setMoveKey( spep_1+99, 0, 0, -54, 0);
setScaleKey( spep_1-1, 0, 1.5, 1.5);
setScaleKey( spep_1+97, 0, 1.5, 1.5);
changeAnime( spep_1, 0, 30); -- 溜め!
setAnimeLoop( spep_1, 0, 1);

-- ** オーラ ** --
entryEffect( spep_1, 1503, 0x80, -1, 0, 0, 0);   -- eff_004 (気)
entryEffect( spep_1, 1502, 0, -1, 0, 0, 0);   -- eff_003 (気)

-- ** カットイン ** --
speff = entryEffect(  spep_1+12,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+12,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 気玉 ** --
kame_hand = entryEffectLife( spep_1, SP_01, 98, 0x100, -1, 0, -10, 10);   -- 手のカメハメ波部
--kame_hand = entryEffectLife( spep_1, SP_01, 98, 0x40, 0, 300, 0, 0);   -- 手のカメハメ波部
setEffScaleKey( spep_1, kame_hand, 0.5, 0.5);

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  spep_1, 311, 99, 0x40, 0, 1, 0, 0); -- オーラ
setEffScaleKey( spep_1, aura2, 1.5, 1.5);
setShakeChara( spep_1, 0, 49, 5);

-- 書き文字エントリー
ct2 = entryEffectLife( spep_1+25, 10008, 70, 0x100, -1, 0, -190 -50, 300);    -- ゴゴゴ・・・
setEffShake( spep_1+25, ct2, 73, 8);
setEffScaleKey( spep_1+25, ct2, 1.4, 1.4);

-- ** ホワイトフェード ** --
entryFade( spep_1+94, 3, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_1+2, SE_04);

------------------------------------------------------
-- カードカットイン (170F開始)
------------------------------------------------------

spep_2 = (spep_1+101); --170F

speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_05);


------------------------------------------------------
-- 発射(263F開始)
------------------------------------------------------

spep_3 = (spep_2+93); --263F

-- ** キャラクター ** --
changeAnime( spep_3, 0, 31); -- かめはめ発射ポーズ
setAnimeLoop( spep_3, 0, 1);
tyouseiX = 100;
tyouseiY = 100;
setMoveKey( spep_3-1, 0, 0-tyouseiX, 200-tyouseiY, 0);
setMoveKey( spep_3+10, 0, 0-tyouseiX, 200-tyouseiY, 0);
setMoveKey( spep_3+30, 0, -30-tyouseiX, 200-tyouseiY, 20);
setMoveKey( spep_3+40, 0, -150-tyouseiX, 200-tyouseiY, 50);
setMoveKey( spep_3+45, 0, -550-tyouseiX, 200-tyouseiY, 80);
setDisp( spep_3+46, 0, 0);

-- ** エフェクト等 ** --
kamehame_beam = entryEffectLife( spep_3, SP_02, 109, 0x40, 0, 300, 0, 0);   -- 伸びるかめはめ波
spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

-- ** 流線 ** --
sen2 = entryEffectLife( spep_3, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_3, sen2, 190);
setEffScaleKey( spep_3, sen2, 1.3, 1.3);
setShakeChara( spep_3+45, 0, 54, 50);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct3 = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_3+8, ct3, 32, 5);
setEffAlphaKey( spep_3+8, ct3, 255);
setEffAlphaKey( spep_3+30, ct3, 255);
setEffAlphaKey( spep_3+40, ct3, 0);
setEffScaleKey( spep_3+8, ct3, 0.0, 0.0);
setEffScaleKey( spep_3+12, ct3, 1.3, 1.3);
setEffScaleKey( spep_3+32, ct3, 1.3, 1.3);
setEffScaleKey( spep_3+40, ct3, 6.0, 6.0);

-- ** ホワイトフェード ** --
entryFade( spep_3+105, 3, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_3+0, SE_07);

------------------------------------------------------
-- 迫る(374F開始)
------------------------------------------------------

spep_4 = (spep_3+111); --374F

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey( spep_4-1, 1, 235, 0, 0);
setMoveKey( spep_4, 1, 235, 0, 0);
setMoveKey( spep_4+1, 1, 235, 0, 0);
setScaleKey( spep_4-1, 1, 0.7, 0.7);
setScaleKey( spep_4, 1, 0.7, 0.7);

setMoveKey( spep_4+30, 1, 120, 0, 0);
setScaleKey( spep_4+30, 1, 1.6, 1.6);

changeAnime( spep_4+85, 1, 108);
setMoveKey( spep_4+85, 1, 120, 0, 0);
setMoveKey( spep_4+99, 1, 400, 0, 0);
setScaleKey( spep_4+85, 1, 1.6, 1.6);
setScaleKey( spep_4+88, 1, 1.5, 1.5);
setScaleKey( spep_4+98, 1, 0.2, 0.2);

setShakeChara( spep_4, 1, 99, 20);

-- ** エフェクト等 ** --
kamehame_beam2 = entryEffect( spep_4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_4, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+82, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

-- ** 流線斜め ** --
entryEffectLife( spep_4, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( spep_4+1, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey( spep_4, ct, 70);
setEffAlphaKey( spep_4, ct, 255);
setEffAlphaKey( spep_4+60, ct, 255);
setEffAlphaKey( spep_4+80, ct, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+82, 6, 17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_4+20, SE_06);
playSe( spep_4+85, SE_09);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 410; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発(479F開始)
------------------------------------------------------

spep_5 = (spep_4+97); --479F

-- ** 敵キャラの動き ** --
setDisp( spep_5-1, 1, 1);
setMoveKey(  spep_5-1, 1, 60, -40, 0);
setScaleKey( spep_5-1, 1, 2, 2);
setRotateKey( spep_5-1, 1, -75);
setMoveKey(  spep_5, 1, 0, 0, 128);
setScaleKey( spep_5, 1, 0.1, 0.1);
changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_5+8, SE_11);

setMoveKey( spep_5+8, 1, 0, 0, 128); --478
setMoveKey( spep_5+15, 1, -60, -200, -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake( spep_5+7, 6, 15);
setShake( spep_5+13, 15, 10);

setRotateKey( spep_5, 1, 30 );
setRotateKey( spep_5+2, 1, 80 );
setRotateKey( spep_5+4, 1, 120 );
setRotateKey( spep_5+6, 1, 160 );
setRotateKey( spep_5+8, 1, 200 );
setRotateKey( spep_5+10, 1, 260 );
setRotateKey( spep_5+12, 1, 320 );
setRotateKey( spep_5+14, 1, 0 );

setShakeChara( spep_5+15, 1, 5, 10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+3, SE_10);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_5+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_5+16);
entryFade( spep_5+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+110);
else


setVisibleUI( 0, 0);

-- ** キャラクター ** --
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);   -- 立ち
setAnimeLoop( 0, 0, 1);

setMoveKey( 0, 0, 0, -54, 0);
setMoveKey( 1, 0, 0, -54, 0);
setMoveKey( 2, 0, 0, -54, 0);
setMoveKey( 3, 0, 0, -54, 0);
setMoveKey( 4, 0, 0, -54, 0);
setMoveKey( 5, 0, 0, -54, 0);
setScaleKey( 0, 0, 1.5, 1.5);
setScaleKey( 1, 0, 1.5, 1.5);
setScaleKey( 2, 0, 1.5, 1.5);
setScaleKey( 3, 0, 1.5, 1.5);
setScaleKey( 4, 0, 1.5, 1.5);
setScaleKey( 5, 0, 1.5, 1.5);
setScaleKey( 66, 0, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);
changeAnime( 30, 0, 17);  -- 溜め!
setAnimeLoop( 30, 0, 1);

-- ** エフェクト等 ** --
entryEffect( 30, 1501, 0x80, -1, 0, 0, 0);    -- eff_002
entryEffect( 30, 1500, 0, -1, 0, 0, 0);    -- eff_001

aura = entryEffectLife( 30, 311, 38, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 38, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake( 30, ct, 40, 7);
setEffAlphaKey( 30, ct, 255);
setEffAlphaKey( 50, ct, 255);
setEffAlphaKey( 70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);

-- ** ホワイトフェード ** --
entryFade( 62, 3, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( 30, SE_01);

------------------------------------------------------
-- 気弾溜め！(69F開始)
------------------------------------------------------

spep_1 = 69;

-- ** キャラクター ** --
setMoveKey( spep_1+99, 0, 0, -54, 0);
setScaleKey( spep_1-1, 0, 1.5, 1.5);
setScaleKey( spep_1+97, 0, 1.5, 1.5);
changeAnime( spep_1, 0, 30); -- 溜め!
setAnimeLoop( spep_1, 0, 1);

-- ** オーラ ** --
entryEffect( spep_1, 1503, 0x80, -1, 0, 0, 0);   -- eff_004 (気)
entryEffect( spep_1, 1502, 0, -1, 0, 0, 0);   -- eff_003 (気)

-- ** カットイン ** --
--[[
speff = entryEffect(  spep_1+12,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+12,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
-- ** 気玉 ** --
kame_hand = entryEffectLife( spep_1, SP_01, 98, 0x100, -1, 0, -10, 10);   -- 手のカメハメ波部
--kame_hand = entryEffectLife( spep_1, SP_01, 98, 0x40, 0, 300, 0, 0);   -- 手のカメハメ波部
setEffScaleKey( spep_1, kame_hand, 0.5, 0.5);

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  spep_1, 311, 99, 0x40, 0, 1, 0, 0); -- オーラ
setEffScaleKey( spep_1, aura2, 1.5, 1.5);
setShakeChara( spep_1, 0, 49, 5);

-- 書き文字エントリー
ct2 = entryEffectLife( spep_1+25, 10008, 70, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_1+25, ct2, 73, 8);
setEffScaleKey( spep_1+25, ct2, 1.4, 1.4);

-- ** ホワイトフェード ** --
entryFade( spep_1+94, 3, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** 音 ** --
playSe( spep_1+2, SE_04);

------------------------------------------------------
-- カードカットイン (170F開始)
------------------------------------------------------

spep_2 = (spep_1+101); --170F

speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_05);


------------------------------------------------------
-- 発射(263F開始)
------------------------------------------------------

spep_3 = (spep_2+93); --263F

-- ** キャラクター ** --
changeAnime( spep_3, 0, 31); -- かめはめ発射ポーズ
setAnimeLoop( spep_3, 0, 1);
tyouseiX = 100;
tyouseiY = 100;
setMoveKey( spep_3-1, 0, 0-tyouseiX, 200-tyouseiY, 0);
setMoveKey( spep_3+10, 0, 0-tyouseiX, 200-tyouseiY, 0);
setMoveKey( spep_3+30, 0, -30-tyouseiX, 200-tyouseiY, 20);
setMoveKey( spep_3+40, 0, -150-tyouseiX, 200-tyouseiY, 50);
setMoveKey( spep_3+45, 0, -550-tyouseiX, 200-tyouseiY, 80);
setDisp( spep_3+46, 0, 0);

-- ** エフェクト等 ** --
kamehame_beam = entryEffectLife( spep_3, SP_02, 109, 0x40, 0, 300, 0, 0);   -- 伸びるかめはめ波
spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

-- ** 流線 ** --
sen2 = entryEffectLife( spep_3, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_3, sen2, 190);
setEffScaleKey( spep_3, sen2, 1.3, 1.3);
setShakeChara( spep_3+45, 0, 54, 50);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct3 = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_3+8, ct3, 32, 5);
setEffAlphaKey( spep_3+8, ct3, 255);
setEffAlphaKey( spep_3+30, ct3, 255);
setEffAlphaKey( spep_3+40, ct3, 0);
setEffScaleKey( spep_3+8, ct3, 0.0, 0.0);
setEffScaleKey( spep_3+12, ct3, 1.3, 1.3);
setEffScaleKey( spep_3+32, ct3, 1.3, 1.3);
setEffScaleKey( spep_3+40, ct3, 6.0, 6.0);

-- ** ホワイトフェード ** --
entryFade( spep_3+105, 3, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_3+0, SE_07);

------------------------------------------------------
-- 迫る(374F開始)
------------------------------------------------------

spep_4 = (spep_3+111); --374F

-- ** 背景 ** --
entryFadeBg( spep_4, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- ** キャラクター ** --
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey( spep_4-1, 1, 235, 0, 0);
setMoveKey( spep_4, 1, 235, 0, 0);
setMoveKey( spep_4+1, 1, 235, 0, 0);
setScaleKey( spep_4-1, 1, 0.7, 0.7);
setScaleKey( spep_4, 1, 0.7, 0.7);

setMoveKey( spep_4+30, 1, 120, 0, 0);
setScaleKey( spep_4+30, 1, 1.6, 1.6);

changeAnime( spep_4+85, 1, 108);
setMoveKey( spep_4+85, 1, 120, 0, 0);
setMoveKey( spep_4+99, 1, 400, 0, 0);
setScaleKey( spep_4+85, 1, 1.6, 1.6);
setScaleKey( spep_4+88, 1, 1.5, 1.5);
setScaleKey( spep_4+98, 1, 0.2, 0.2);

setShakeChara( spep_4, 1, 99, 20);

-- ** エフェクト等 ** --
kamehame_beam2 = entryEffect( spep_4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_4, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+82, kamehame_beam2, 1, 1);
setEffScaleKey( spep_4+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

-- ** 流線斜め ** --
entryEffectLife( spep_4, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( spep_4+1, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey( spep_4, ct, 0);
setEffAlphaKey( spep_4, ct, 255);
setEffAlphaKey( spep_4+60, ct, 255);
setEffAlphaKey( spep_4+80, ct, 0);

-- ** ホワイトフェード ** --
entryFade( spep_4+82, 6, 17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_4+20, SE_06);
playSe( spep_4+85, SE_09);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 410; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);
entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase( SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発(479F開始)
------------------------------------------------------

spep_5 = (spep_4+97); --479F

-- ** 敵キャラの動き ** --
setDisp( spep_5-1, 1, 1);
setMoveKey(  spep_5-1, 1, 60, -40, 0);
setScaleKey( spep_5-1, 1, 2, 2);
setRotateKey( spep_5-1, 1, -75);
setMoveKey(  spep_5, 1, 0, 0, 128);
setScaleKey( spep_5, 1, 0.1, 0.1);
changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_5+8, SE_11);

setMoveKey( spep_5+8, 1, 0, 0, 128); --478
setMoveKey( spep_5+15, 1, -60, -200, -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake( spep_5+7, 6, 15);
setShake( spep_5+13, 15, 10);

setRotateKey( spep_5, 1, 30 );
setRotateKey( spep_5+2, 1, 80 );
setRotateKey( spep_5+4, 1, 120 );
setRotateKey( spep_5+6, 1, 160 );
setRotateKey( spep_5+8, 1, 200 );
setRotateKey( spep_5+10, 1, 260 );
setRotateKey( spep_5+12, 1, 320 );
setRotateKey( spep_5+14, 1, 0 );

setShakeChara( spep_5+15, 1, 5, 10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+3, SE_10);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_5+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_5+16);
entryFade( spep_5+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+110);
end
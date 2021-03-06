print ("[lua]sp1142");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 43; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1009; --huru
SE_09 = 1010; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

SP_01 = 150033;
SP_02 = 150034;
SP_03 = 150035;

multi_frm = 2;

------------------------------------------------------
-- 気溜め(68F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 1, 0); --味方表示

changeAnime( 0, 0, 0);  -- 立ちモーション

setMoveKey( 0, 0, 0, 0, 0);
setMoveKey( 1, 0, 0, 0, 0);
setMoveKey( 2, 0, 0, 0, 0);
setMoveKey( 3, 0, 0, 0, 0);
setMoveKey( 4, 0, 0, 0, 0);
setMoveKey( 5, 0, 0, 0, 0);

setScaleKey( 0, 0, 1.5, 1.5);
setScaleKey( 1, 0, 1.5, 1.5);
setScaleKey( 2, 0, 1.5, 1.5);
setScaleKey( 3, 0, 1.5, 1.5);
setScaleKey( 4, 0, 1.5, 1.5);
setScaleKey( 5, 0, 1.5, 1.5);
setScaleKey( 66, 0, 1.5, 1.5);

changeAnime( 30, 0, 17);  -- 溜め

-- ** 溜めエフェクト ** --
entryEffect( 30, 1501, 0x80, -1, 0, 0, 0); -- eff_002
entryEffect( 30, 1500, 0, -1, 0, 0, 0); -- eff_001

-- ** エフェクト等 ** --
aura = entryEffectLife( 30, 311, 39, 0x40, 0, 1, 0, 0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 38, 10);

-- ** 書き文字エントリー ** --
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake( 30, ct, 40, 7);
setEffAlphaKey( 30, ct, 255);
setEffAlphaKey( 50, ct, 255);
setEffAlphaKey( 70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);

-- ** 音 ** --
playSe( 30, SE_01);


-- ** ホワイトフェード ** --
entryFade( 59, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- ポーズ(98F)
------------------------------------------------------

spep_1 = 68;

-- ** キャラクター ** --
changeAnime( spep_1, 0, 30); -- ポーズモーション
setMoveKey( spep_1-1, 0, 0, 0, 0);
setMoveKey( spep_1, 0, 0, -40, 0);

setScaleKey( spep_1, 0, 1.5, 1.5);
setScaleKey( spep_1+97, 0, 1.5, 1.5);

setShakeChara( spep_1, 0, 50, 10);

-- ** 溜めエフェクト ** --
entryEffect( spep_1, 1503, 0x80, -1, 0, 0, 0);   -- eff_004 (気)
entryEffect( spep_1, 1502, 0, -1, 0, 0, 0);   -- eff_003 (気)

-- ** カットイン ** --
speff = entryEffect( spep_1+10, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2); -- カットイン差し替え
speff = entryEffect( spep_1+10, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5); -- セリフ差し替え

-- ** ポーズ後ろエフェクト ** --
entryEffectLife( spep_1+20, SP_01, 75, 0x80, -1, 0, 0, 0);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_1+13, 190006, 84, 0x100, -1, 0, 140, 500); -- ゴゴゴゴ
setEffScaleKey( spep_1+13, ctgogo, 0.6, 0.6);
setEffRotateKey( spep_1+13, ctgogo, 5);
setEffAlphaKey( spep_1+13, ctgogo, 255);

-- ** ホワイトフェード ** --
entryFade( spep_1+89, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
--playSe( spep_1, SE_03);
playSe( spep_1+14, SE_04);

------------------------------------------------------
-- カードカットイン(93F)
------------------------------------------------------

spep_2 = (spep_1+98); --166F

speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2, 906, 91, 0x100, -1, 0, 0, 0);  -- 集中線
setEffMoveKey( spep_2, shuchusen, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen, 255);
setEffRotateKey( spep_2, shuchusen, 0);

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_05);

------------------------------------------------------
-- ジャスティスイーグル(F)
------------------------------------------------------
--spep3=260


spep_3 = (spep_2+93); --259F

-- ** キャラクター ** --
changeAnime( spep_3, 0, 31); --イーグルモーション

setScaleKey( spep_3,    1,  0.7, 0.7);
setScaleKey( spep_3+93,    1,  0.7, 0.7);

setScaleKey( spep_3, 0, 1, 1);
setScaleKey( spep_3+80, 0, 1, 1);


setMoveKey( spep_3-1, 0, 0, -40, 0);
setMoveKey( spep_3, 0, -600, 0, 0);
setMoveKey( spep_3+20, 0, 0, 0, 0);
setMoveKey( spep_3+36, 0, 100, 0, 0);
setMoveKey( spep_3+45, 0, -200, 0, 0);
setMoveKey( spep_3+50, 0, -180, 0, 0);
setMoveKey( spep_3+63, 0, -300, 0, 0);
setMoveKey( spep_3+74, 0, 700, 0, 0);
setMoveKey( spep_3+75, 0, 2000, 0, 0);

setShakeChara( spep_3+45, 0, 54, 50);

-- ** 蹴りエフェクト ** --
keri = entryEffectLife( spep_3, SP_02, 100, 0x100, -1, 0, 0, 0); -- 伸びるかめはめ波
setEffMoveKey( spep_3, keri, -230, 150, 0);
setEffMoveKey( spep_3+20, keri, 370, 150, 0);
setEffMoveKey( spep_3+36, keri, 510, 150, 0);
setEffMoveKey( spep_3+45, keri, 170, 150, 0); --304F
setEffMoveKey( spep_3+50, keri, 190, 150, 0); --309F
setEffMoveKey( spep_3+63, keri, 70, 150, 0);
setEffMoveKey( spep_3+74, keri, 1070, 150, 0);
setEffMoveKey( spep_3+75, keri, 2370, 150, 0);

setEffRotateKey( spep_3, keri, -25);

setEffShake( spep_3+45, keri, 54, 35);


spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey(	spep_3+48,spname, 1);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3+30, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景




-- ** 流線 ** --
entryEffectLife( spep_3, 920, 40, 0x80,  -1,  0,  0,  0); -- 流線

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3, 906, 91, 0x100, -1, 0, 0, 0);  -- 集中線2
setEffMoveKey( spep_3, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen2, 255);
setEffRotateKey( spep_3, shuchusen2, 0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_3, ctzuo, 32, 5);
setEffAlphaKey( spep_3, ctzuo, 255);
setEffAlphaKey( spep_3+22, ctzuo, 255);
setEffAlphaKey( spep_3+32, ctzuo, 0);
setEffScaleKey( spep_3, ctzuo, 0.0, 0.0);
setEffScaleKey( spep_3+4, ctzuo, 1.3, 1.3);
setEffScaleKey( spep_3+42, ctzuo, 1.3, 1.3);
setEffScaleKey( spep_3+60, ctzuo, 6.0, 6.0);

-- ** 音 ** --
playSe( spep_3+4, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 319; --エンドフェイズのフレーム数を置き換える
setScaleKey(   SP_dodge,   0, 1, 1);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+3,  0, 700,  0,   0);
setMoveKey(  SP_dodge+9,  0, 1600,  0,   0);
setScaleKey( SP_dodge+9, 0, 1, 1);
endPhase(SP_dodge+10);
do return end
else end

--setMoveKey(  spep_3+69,  0, 700,  0,   0);
--setMoveKey(  spep_3+73,  0, 700,  0,   0);
--setMoveKey(  spep_3+74,  0, -1700,  0,   0);

--entryFade( spep_3+62, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( spep_3+76, 0, 2000, 0, 0);

setMoveKey( spep_3+77, 0, -1000, -152, -10);
--setScaleKey( spep_3+77, 0,  2.5, 2.5);

------------------------------------------------------
-- かめはめは迫る(48F)
------------------------------------------------------
spep_4 = (spep_3+80); --340F(仮)

entryFade( spep_4-6, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_4, SE_08);

setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード

setMoveKey(  spep_4-1,    1,  235,  0,   0);
setMoveKey(  spep_4,    1,  300,  0,   0);
--setMoveKey(  spep_4+1,    1,  235,  0,   0);
setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  1.2, 1.2);

--setMoveKey(  spep_4+15,    1,   200,  0,   0);
--setMoveKey(  spep_4+15,    1,   120,  0,   0);
--setScaleKey( spep_4+15,   1,   1.6,  1.6);
playSe( spep_4+12, SE_01);

playSe( spep_4+27, SE_09);

-- 敵吹っ飛ぶモーション
setMoveKey(  spep_4+20+5, 1,  180,    0,  0);
setScaleKey( spep_4+22+5, 1,  1.6, 1.6);
setScaleKey( spep_4+24+5, 1,  1, 1);

-- ** エフェクト等 ** --
setShakeChara( spep_4+20+5, 1, 99, 20);

entryFadeBg( spep_4, 4, 40, 4, 10, 10, 10, 150);          -- ベース暗め　背景

ryusenNanaeme = entryEffectLife( spep_4, 921, 34, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_4, ryusenNanaeme, 1.2, 1.2);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey( spep_4, ct, 70);
setEffAlphaKey( spep_4, ct, 255);
setEffAlphaKey( spep_4+20+5, ct, 255);
setEffAlphaKey( spep_4+25+5, ct, 0);

--自キャラ飛び蹴り
setDisp( spep_4, 0, 1);
changeAnime( spep_4, 0, 31); --イーグルモーション
setScaleKey( spep_4, 0, 1.5, 1.5);
setScaleKey( spep_4+18, 0, 1.5, 1.5);
setScaleKey( spep_4+44, 0, 0.5, 0.5);
--setScaleKey( spep_4+33, 0,  1.6, 1.6);

setMoveKey(  spep_4,  0, -1000,  -152,   -10);
setMoveKey(  spep_4+18,  0, -1000,  -152,   -10);
setMoveKey(  spep_4+33,  0, 400,  76,   100);



-- ** 蹴りエフェクト ** --
keri2 = entryEffectLife( spep_4, SP_02, 25, 0x100, -1, 0, 0, 0); -- 伸びるかめはめ波
setEffMoveKey( spep_4+1, keri2, -300, 120, -10);
setEffMoveKey( spep_4+18, keri2, -300, 120, -10);
setEffMoveKey( spep_4+33, keri2, 400,  80,   100);--770
setEffRotateKey( spep_4, keri2, -25);
setEffScaleKey( spep_4, keri2, 1, 1);

setEffShake( spep_4, keri2, 38, 35);



 -- ヒットエフェクト
entryEffect( spep_4+25, SP_03,   0x100, -1,  0,  0,  0); 

--敵吹っ飛びモーション
setMoveKey(  spep_4+37, 1,  70,    0,  -120);
setMoveKey(  spep_4+39, 1,  70,    0,  -120);
setMoveKey(  spep_4+44, 1,  70,    0,  120);

changeAnime( spep_4+38, 1, 108); 

setShakeChara( spep_4+40,0,30,14);
setShakeChara( spep_4+40,1,30,11);

entryEffectLife( spep_4+40, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線

--entryEffectLife( SP_ATK_3+40, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線
entryFade( spep_4+35, 4,  10, 1, 255, 255, 255, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_5 = (spep_4+40); --388F(仮)

setDisp( spep_5-1, 1, 1);
setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
--setShake( spep_5+7,6,15);
--setShake( spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
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

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);


else

-----------------------------------------
--敵側の攻撃
-----------------------------------------

------------------------------------------------------
-- 気溜め(68F)
------------------------------------------------------

setVisibleUI(0, 0);

-- ** キャラクター ** --
setDisp( 0, 1, 0); --味方表示

changeAnime( 0, 0, 0);  -- 立ちモーション

setMoveKey( 0, 0, 0, 0, 0);
setMoveKey( 1, 0, 0, 0, 0);
setMoveKey( 2, 0, 0, 0, 0);
setMoveKey( 3, 0, 0, 0, 0);
setMoveKey( 4, 0, 0, 0, 0);
setMoveKey( 5, 0, 0, 0, 0);

setScaleKey( 0, 0, 1.5, 1.5);
setScaleKey( 1, 0, 1.5, 1.5);
setScaleKey( 2, 0, 1.5, 1.5);
setScaleKey( 3, 0, 1.5, 1.5);
setScaleKey( 4, 0, 1.5, 1.5);
setScaleKey( 5, 0, 1.5, 1.5);
setScaleKey( 66, 0, 1.5, 1.5);

changeAnime( 30, 0, 17);  -- 溜め

-- ** 溜めエフェクト ** --
entryEffect( 30, 1501, 0x80, -1, 0, 0, 0); -- eff_002
entryEffect( 30, 1500, 0, -1, 0, 0, 0); -- eff_001

-- ** エフェクト等 ** --
aura = entryEffectLife( 30, 311, 39, 0x40, 0, 1, 0, 0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 38, 10);

-- ** 書き文字エントリー ** --
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake( 30, ct, 40, 7);
setEffAlphaKey( 30, ct, 255);
setEffAlphaKey( 50, ct, 255);
setEffAlphaKey( 70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);

-- ** 音 ** --
playSe( 30, SE_01);

-- ** ホワイトフェード ** --
entryFade( 59, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- ポーズ(98F)
------------------------------------------------------

spep_1 = 68;

-- ** キャラクター ** --
changeAnime( spep_1, 0, 30); -- ポーズモーション
setMoveKey( spep_1-1, 0, 0, 0, 0);
setMoveKey( spep_1, 0, 0, -40, 0);

setScaleKey( spep_1, 0, 1.5, 1.5);
setScaleKey( spep_1+97, 0, 1.5, 1.5);

setShakeChara( spep_1, 0, 50, 10);

-- ** 溜めエフェクト ** --
entryEffect( spep_1, 1503, 0x80, -1, 0, 0, 0);   -- eff_004 (気)
entryEffect( spep_1, 1502, 0, -1, 0, 0, 0);   -- eff_003 (気)

-- ** カットイン ** --
--speff = entryEffect( spep_1+10, 1504, 0, -1, 0, 0, 0); -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2); -- カットイン差し替え
--speff = entryEffect( spep_1+10, 1505, 0, -1, 0, 0, 0); -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5); -- セリフ差し替え

-- ** ポーズ後ろエフェクト ** --
entryEffectLife( spep_1+20, SP_01, 75, 0x80, -1, 0, 0, 0);

-- 書き文字エントリー
--ctgogo = entryEffectLife( spep_1+13, 190006, 84, 0x100, -1, 0, 140, 500); -- ゴゴゴゴ
--setEffScaleKey( spep_1+13, ctgogo, 0.6, 0.6);
--setEffRotateKey( spep_1+13, ctgogo, 5);
--setEffAlphaKey( spep_1+13, ctgogo, 255);

-- ** ホワイトフェード ** --
entryFade( spep_1+89, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
--playSe( spep_1, SE_03);
playSe( spep_1+14, SE_04);

------------------------------------------------------
-- カードカットイン(93F)
------------------------------------------------------

spep_2 = (spep_1+98); --166F

speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2, 906, 91, 0x100, -1, 0, 0, 0);  -- 集中線
setEffMoveKey( spep_2, shuchusen, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen, 255);
setEffRotateKey( spep_2, shuchusen, 0);

-- ** ホワイトフェード ** --
entryFade( spep_2+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2, SE_05);

------------------------------------------------------
-- ジャスティスイーグル(F)
------------------------------------------------------
--spep3=260


spep_3 = (spep_2+93); --259F

-- ** キャラクター ** --
changeAnime( spep_3, 0, 31); --イーグルモーション

setScaleKey( spep_3,    1,  0.7, 0.7);
setScaleKey( spep_3+93,    1,  0.7, 0.7);

setScaleKey( spep_3, 0, 1, 1);
setScaleKey( spep_3+80, 0, 1, 1);


setMoveKey( spep_3-1, 0, 0, -40, 0);
setMoveKey( spep_3, 0, -600, 0, 0);
setMoveKey( spep_3+20, 0, 0, 0, 0);
setMoveKey( spep_3+36, 0, 100, 0, 0);
setMoveKey( spep_3+45, 0, -200, 0, 0);
setMoveKey( spep_3+50, 0, -180, 0, 0);
setMoveKey( spep_3+63, 0, -300, 0, 0);
setMoveKey( spep_3+74, 0, 700, 0, 0);
setMoveKey( spep_3+75, 0, 2000, 0, 0);

setShakeChara( spep_3+45, 0, 54, 50);

-- ** 蹴りエフェクト ** --
keri = entryEffectLife( spep_3, SP_02, 100, 0x100, -1, 0, 0, 0); -- 伸びるかめはめ波
setEffMoveKey( spep_3, keri, -230, 150, 0);
setEffMoveKey( spep_3+20, keri, 370, 150, 0);
setEffMoveKey( spep_3+36, keri, 510, 150, 0);
setEffMoveKey( spep_3+45, keri, 170, 150, 0); --304F
setEffMoveKey( spep_3+50, keri, 190, 150, 0); --309F
setEffMoveKey( spep_3+63, keri, 70, 150, 0);
setEffMoveKey( spep_3+74, keri, 1070, 150, 0);
setEffMoveKey( spep_3+75, keri, 2370, 150, 0);

setEffRotateKey( spep_3, keri, -25);

setEffShake( spep_3+45, keri, 54, 35);


spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey(	spep_3+48,spname, 1);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep_3+30, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景




-- ** 流線 ** --
entryEffectLife( spep_3, 920, 40, 0x80,  -1,  0,  0,  0); -- 流線

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3, 906, 91, 0x100, -1, 0, 0, 0);  -- 集中線2
setEffMoveKey( spep_3, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_3, shuchusen2, 255);
setEffRotateKey( spep_3, shuchusen2, 0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_3, ctzuo, 32, 5);
setEffAlphaKey( spep_3, ctzuo, 255);
setEffAlphaKey( spep_3+22, ctzuo, 255);
setEffAlphaKey( spep_3+32, ctzuo, 0);
setEffScaleKey( spep_3, ctzuo, 0.0, 0.0);
setEffScaleKey( spep_3+4, ctzuo, 1.3, 1.3);
setEffScaleKey( spep_3+42, ctzuo, 1.3, 1.3);
setEffScaleKey( spep_3+60, ctzuo, 6.0, 6.0);

-- ** 音 ** --
playSe( spep_3+4, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 319; --エンドフェイズのフレーム数を置き換える
setScaleKey(   SP_dodge,   0, 1, 1);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+3,  0, 700,  0,   0);
setMoveKey(  SP_dodge+9,  0, 1600,  0,   0);
setScaleKey( SP_dodge+9, 0, 1, 1);
endPhase(SP_dodge+10);
do return end
else end

--setMoveKey(  spep_3+69,  0, 700,  0,   0);
--setMoveKey(  spep_3+73,  0, 700,  0,   0);
--setMoveKey(  spep_3+74,  0, -1700,  0,   0);

--entryFade( spep_3+62, 7, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( spep_3+76, 0, 2000, 0, 0);

setMoveKey( spep_3+77, 0, -1000, -152, -10);
--setScaleKey( spep_3+77, 0,  2.5, 2.5);

------------------------------------------------------
-- かめはめは迫る(48F)
------------------------------------------------------
spep_4 = (spep_3+80); --340F(仮)

entryFade( spep_4-6, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_4, SE_08);

setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード

setMoveKey(  spep_4-1,    1,  235,  0,   0);
setMoveKey(  spep_4,    1,  300,  0,   0);
--setMoveKey(  spep_4+1,    1,  235,  0,   0);
setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  1.2, 1.2);

--setMoveKey(  spep_4+15,    1,   200,  0,   0);
--setMoveKey(  spep_4+15,    1,   120,  0,   0);
--setScaleKey( spep_4+15,   1,   1.6,  1.6);
playSe( spep_4+12, SE_01);

playSe( spep_4+27, SE_09);

-- 敵吹っ飛ぶモーション
setMoveKey(  spep_4+20+5, 1,  180,    0,  0);
setScaleKey( spep_4+22+5, 1,  1.6, 1.6);
setScaleKey( spep_4+24+5, 1,  1, 1);

-- ** エフェクト等 ** --
setShakeChara( spep_4+20+5, 1, 99, 20);

entryFadeBg( spep_4, 4, 40, 4, 10, 10, 10, 150);          -- ベース暗め　背景

ryusenNanaeme = entryEffectLife( spep_4, 921, 34, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_4, ryusenNanaeme, 1.2, 1.2);

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey( spep_4, ct, 0);
setEffAlphaKey( spep_4, ct, 255);
setEffAlphaKey( spep_4+20+5, ct, 255);
setEffAlphaKey( spep_4+25+5, ct, 0);

--自キャラ飛び蹴り
setDisp( spep_4, 0, 1);
changeAnime( spep_4, 0, 31); --イーグルモーション
setScaleKey( spep_4, 0, 1.5, 1.5);
setScaleKey( spep_4+18, 0, 1.5, 1.5);
setScaleKey( spep_4+44, 0, 0.5, 0.5);
--setScaleKey( spep_4+33, 0,  1.6, 1.6);

setMoveKey(  spep_4,  0, -1000,  -152,   -10);
setMoveKey(  spep_4+18,  0, -1000,  -152,   -10);
setMoveKey(  spep_4+33,  0, 400,  76,   100);



-- ** 蹴りエフェクト ** --
keri2 = entryEffectLife( spep_4, SP_02, 25, 0x100, -1, 0, 0, 0); -- 伸びるかめはめ波
setEffMoveKey( spep_4+1, keri2, -300, 120, -10);
setEffMoveKey( spep_4+18, keri2, -300, 120, -10);
setEffMoveKey( spep_4+33, keri2, 400,  80,   100);
setEffRotateKey( spep_4, keri2, -25);
setEffScaleKey( spep_4, keri2, 1, 1);

setEffShake( spep_4, keri2, 38, 35);



 -- ヒットエフェクト
entryEffect( spep_4+25, SP_03,   0x100, -1,  0,  0,  0); 

--敵吹っ飛びモーション
setMoveKey(  spep_4+37, 1,  70,    0,  -120);
setMoveKey(  spep_4+39, 1,  70,    0,  -120);
setMoveKey(  spep_4+44, 1,  70,    0,  120);

changeAnime( spep_4+38, 1, 108); 

setShakeChara( spep_4+40,0,30,14);
setShakeChara( spep_4+40,1,30,11);

entryEffectLife( spep_4+40, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線

--entryEffectLife( SP_ATK_3+40, 920, 35, 0x80,  -1,  0,  0,  0); -- 流線
entryFade( spep_4+35, 4,  10, 1, 255, 255, 255, 255);     -- white fade



------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_5 = (spep_4+40); --388F(仮)

setDisp( spep_5-1, 1, 1);
setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
--setShake( spep_5+7,6,15);
--setShake( spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
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

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);

end

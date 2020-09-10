--sp0469 1014470 メタルクウラ軍団_スーパーノヴァVer.2

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

SP_01 = 151752; --100　溜め1
SP_02 = 151753; --160　溜め2
SP_03 = 151754; --140　撃つ
SP_04 = 151755; -- 40　迫る
SP_05 = 190002; -- 60　ギャン3
SP_06 = 1563; -- 180　大爆発1

--敵側　01と03が敵側用エフェクトに
SP_01x = 151756; --100　溜め1（敵）
SP_02x = 151753; --160　溜め2
SP_03x = 151757; --140　撃つ
SP_04x = 151755; -- 40　迫る（敵）
SP_05x = 190002; -- 60　ギャン3
SP_06x = 1563; -- 180　大爆発1

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
setVisibleUI(0, 0);
setDisp( 0, 0, 0); --味方非表示
setDisp( 0, 1, 0); --敵非表示
changeAnime( 0, 0, 1); --味方立ちポーズ
setMoveKey( 0, 0, 0, -900, 0); --味方位置
setMoveKey( 1, 0, 0, -900, 0); --味方位置
setMoveKey( 2, 0, 0, -900, 0); --味方位置
setMoveKey( 3, 0, 0, -900, 0); --味方位置
setMoveKey( 4, 0, 0, -900, 0); --味方位置
setMoveKey( 5, 0, 0, -900, 0); --味方位置
setScaleKey( 0,    0,  1.5, 1.5);
setScaleKey( 0,    1,  1.5, 1.5);
setRotateKey( 0,  0, 0);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 溜め1(100F)
------------------------------------------------------
spep_1=0;
entryFade( spep_1, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFadeBg( spep_1, 0, 98, 0, 0, 0, 0, 204);          -- ベース暗め　背景

playSe( spep_1 + 13, SE_04);

-- ** 集中線 ** --
tame_1 = entryEffectLife( spep_1 , SP_01, 98, 0x80,  -1, 0,  0,  0);   -- 溜め1(100F)
setEffMoveKey(spep_1,tame_1,0,0,0);
setEffMoveKey(spep_1+98,tame_1,0,0,0);
setEffScaleKey( spep_1, tame_1, 1.0, 1.0);
setEffScaleKey( spep_1+98, tame_1, 1.0, 1.0);
setEffAlphaKey(spep_1, tame_1,255);
setEffAlphaKey(spep_1+98, tame_1,255);
setEffRotateKey( spep_1, tame_1, 0);
setEffRotateKey( spep_1+98, tame_1, 0);

shuchusen_1= entryEffectLife( spep_1, 906, 98, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1, shuchusen_1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen_1, 1.0, 1.0);
setEffAlphaKey( spep_1, shuchusen_1, 255);
setEffRotateKey( spep_1, shuchusen_1, 0);
setEffMoveKey( spep_1+98, shuchusen_1, 0, 0, 0);
setEffScaleKey( spep_1+98, shuchusen_1, 1.0, 1.0);
setEffAlphaKey( spep_1+98, shuchusen_1, 255);
setEffRotateKey( spep_1+98, shuchusen_1, 0);

-- 書き文字エントリー　ズズズン --
ctzuzuzun_1 = entryEffectLife( spep_1 + 13,  10013, 34, 0x100, -1, 0, 174.1, 181.6 );    -- ズズズン
setEffShake( spep_1 + 13, ctzuzuzun_1, 34, 10 );
setEffMoveKey( spep_1 + 13, ctzuzuzun_1, 174.1, 181.6 , 0 );
setEffMoveKey( spep_1 + 15, ctzuzuzun_1, 173.3, 190.5 , 0 );
setEffMoveKey( spep_1 + 17, ctzuzuzun_1, 186.1, 209.4 , 0 );
setEffMoveKey( spep_1 + 19, ctzuzuzun_1, 177.7, 207.1 , 0 );
setEffMoveKey( spep_1 + 21, ctzuzuzun_1, 184.2, 207.9 , 0 );
setEffMoveKey( spep_1 + 23, ctzuzuzun_1, 170, 190.5 , 0 );
setEffMoveKey( spep_1 + 25, ctzuzuzun_1, 178.8, 198 , 0 );
setEffMoveKey( spep_1 + 27, ctzuzuzun_1, 170.1, 190.1 , 0 );
setEffMoveKey( spep_1 + 29, ctzuzuzun_1, 178.8, 198 , 0 );
setEffMoveKey( spep_1 + 31, ctzuzuzun_1, 171.5, 192 , 0 );
setEffMoveKey( spep_1 + 33, ctzuzuzun_1, 178.8, 198 , 0 );
setEffMoveKey( spep_1 + 35, ctzuzuzun_1, 171.7, 192.6 , 0 );
setEffMoveKey( spep_1 + 37, ctzuzuzun_1, 178.9, 198 , 0 );
setEffMoveKey( spep_1 + 39, ctzuzuzun_1, 171.3, 192.7 , 0 );
setEffMoveKey( spep_1 + 41, ctzuzuzun_1, 178.8, 198 , 0 );
setEffMoveKey( spep_1 + 43, ctzuzuzun_1, 171, 192.8 , 0 );
setEffMoveKey( spep_1 + 45, ctzuzuzun_1, 178.8, 198 , 0 );
setEffMoveKey( spep_1 + 47, ctzuzuzun_1, 178.8, 197.9 , 0 );
setEffScaleKey( spep_1 + 13, ctzuzuzun_1, 1.14, 1.14 );
setEffScaleKey( spep_1 + 15, ctzuzuzun_1, 1.86, 1.86 );
setEffScaleKey( spep_1 + 17, ctzuzuzun_1, 2.55, 2.55 );
setEffScaleKey( spep_1 + 19, ctzuzuzun_1, 3, 3 );
setEffScaleKey( spep_1 + 23, ctzuzuzun_1, 3.1, 3.1 );
setEffScaleKey( spep_1 + 25, ctzuzuzun_1, 2.79, 2.79 );
setEffScaleKey( spep_1 + 27, ctzuzuzun_1, 2.49, 2.49 );
setEffScaleKey( spep_1 + 29, ctzuzuzun_1, 2.25, 2.25 );
setEffScaleKey( spep_1 + 31, ctzuzuzun_1, 2.01, 2.01 );
setEffScaleKey( spep_1 + 33, ctzuzuzun_1, 1.83, 1.83 );
setEffScaleKey( spep_1 + 35, ctzuzuzun_1, 1.89, 1.89 );
setEffScaleKey( spep_1 + 37, ctzuzuzun_1, 1.92, 1.92 );
setEffScaleKey( spep_1 + 39, ctzuzuzun_1, 1.95, 1.95 );
setEffScaleKey( spep_1 + 41, ctzuzuzun_1, 1.98, 1.98 );
setEffScaleKey( spep_1 + 43, ctzuzuzun_1, 1.98, 1.98 );
setEffScaleKey( spep_1 + 45, ctzuzuzun_1, 2.01, 2.01 );
setEffScaleKey( spep_1 + 47, ctzuzuzun_1, 2.01, 2.01 );
setEffRotateKey( spep_1 + 13, ctzuzuzun_1, 8.0 );
setEffRotateKey( spep_1 + 15, ctzuzuzun_1, 7.4 );
setEffRotateKey( spep_1 + 17, ctzuzuzun_1, 6.9 );
setEffRotateKey( spep_1 + 19, ctzuzuzun_1, 3.2 );
setEffRotateKey( spep_1 + 21, ctzuzuzun_1, 3.0 );
setEffRotateKey( spep_1 + 23, ctzuzuzun_1, 0.9 );
setEffRotateKey( spep_1 + 25, ctzuzuzun_1, 1.3 );
setEffRotateKey( spep_1 + 27, ctzuzuzun_1, 3 );
setEffRotateKey( spep_1 + 29, ctzuzuzun_1, 4.5 );
setEffRotateKey( spep_1 + 31, ctzuzuzun_1, 5.9 );
setEffRotateKey( spep_1 + 33, ctzuzuzun_1, 7.2 );
setEffRotateKey( spep_1 + 35, ctzuzuzun_1, 8.2 );
setEffRotateKey( spep_1 + 37, ctzuzuzun_1, 9.1 );
setEffRotateKey( spep_1 + 39, ctzuzuzun_1, 9.9 );
setEffRotateKey( spep_1 + 41, ctzuzuzun_1, 10.4 );
setEffRotateKey( spep_1 + 43, ctzuzuzun_1, 10.9 );
setEffRotateKey( spep_1 + 45, ctzuzuzun_1, 11.1 );
setEffRotateKey( spep_1 + 47, ctzuzuzun_1, 11.2 );
setEffAlphaKey( spep_1 + 13, ctzuzuzun_1, 255 );
setEffAlphaKey( spep_1 + 15, ctzuzuzun_1, 236 );
setEffAlphaKey( spep_1 + 17, ctzuzuzun_1, 209 );
setEffAlphaKey( spep_1 + 19, ctzuzuzun_1, 193 );
setEffAlphaKey( spep_1 + 21, ctzuzuzun_1, 189 );
setEffAlphaKey( spep_1 + 23, ctzuzuzun_1, 167 );
setEffAlphaKey( spep_1 + 25, ctzuzuzun_1, 147 );
setEffAlphaKey( spep_1 + 27, ctzuzuzun_1, 108 );
setEffAlphaKey( spep_1 + 29, ctzuzuzun_1, 91 );
setEffAlphaKey( spep_1 + 31, ctzuzuzun_1, 86 );
setEffAlphaKey( spep_1 + 33, ctzuzuzun_1, 63 );
setEffAlphaKey( spep_1 + 35, ctzuzuzun_1, 52 );
setEffAlphaKey( spep_1 + 37, ctzuzuzun_1, 42 );
setEffAlphaKey( spep_1 + 39, ctzuzuzun_1, 34 );
setEffAlphaKey( spep_1 + 41, ctzuzuzun_1, 20 );
setEffAlphaKey( spep_1 + 43, ctzuzuzun_1, 18 );
setEffAlphaKey( spep_1 + 45, ctzuzuzun_1, 10 );
setEffAlphaKey( spep_1 + 47, ctzuzuzun_1, 0 );

------------------------------------------------------
-- 溜め2(160F)
------------------------------------------------------
spep_2=spep_1+98;
entryFade( spep_2-18, 16, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 150, 0, 0, 0, 0, 255);          -- ベース暗め　背景

-- ** 集中線 ** --
ryuusen_2= entryEffectLife( spep_2, 923, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, ryuusen_2, 1.0, 1.0);
setEffScaleKey( spep_2+150, ryuusen_2, 1.0, 1.0);
setEffAlphaKey( spep_2, ryuusen_2, 255);
setEffAlphaKey( spep_2+150, ryuusen_2, 255);
setEffRotateKey( spep_2, ryuusen_2, 180);
setEffRotateKey( spep_2+150, ryuusen_2, 180);

tame_2 = entryEffectLife( spep_2, SP_02, 150, 0x100,  -1, 0,  0,  0);   -- 溜め2(160F)
setEffScaleKey( spep_2, tame_2, 1.0, 1.0);
setEffScaleKey( spep_2+150, tame_2, 1.0, 1.0);
setEffRotateKey( spep_2, tame_2, 0);
setEffRotateKey( spep_2+150, tame_2, 0);

playSe( spep_2, SE_01);
playSe( spep_2+64, SE_04);

--entryEffect(  spep_2+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_2+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_2+64,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+64,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー　ゴゴゴ --
ctgogogo_2 = entryEffectLife( spep_2+77, 190006,73, 0x100, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake( spep_2+77, ctgogogo_2, 75, 10);
setEffScaleKey( spep_2+77, ctgogogo_2,0.8,0.8);
setEffRotateKey( spep_2+77, ctgogogo_2, 0);
setEffAlphaKey( spep_2+77, ctgogogo_2, 255);
setEffShake( spep_2+150, ctgogogo_2, 75, 10);
setEffScaleKey( spep_2+150, ctgogogo_2,0.8,0.8);
setEffRotateKey( spep_2+150, ctgogogo_2, 0);
setEffAlphaKey( spep_2+150, ctgogogo_2, 255);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+150;
entryFade( spep_3-10, 8, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 88, 0, 0, 0, 0, 255);          -- ベース暗め　背景

playSe( spep_3, SE_05);

speff = entryEffect( spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--集中線--
shuchusen_3 = entryEffectLife( spep_3, 906, 88, 0x100,  -1, 0,  0,  0);

setEffMoveKey( spep_3,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3,  shuchusen_3,  1.0,  1.0);
setEffRotateKey( spep_3,  shuchusen_3,  0);
setEffAlphaKey( spep_3,  shuchusen_3,  255);
setEffMoveKey( spep_3+88,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3+88,  shuchusen_3,  1.0,  1.0);
setEffRotateKey( spep_3+88,  shuchusen_3,  0);
setEffAlphaKey( spep_3+88,  shuchusen_3,  255);

------------------------------------------------------
-- 撃つ(140F)
------------------------------------------------------
spep_4=spep_3+94;
entryFade( spep_4-14, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 137, 0, 0, 0, 0, 255);          -- ベース暗め　背景

playSe( spep_4+35, SE_07);
playSe( spep_4+85, SE_07);

hassya_4 = entryEffectLife( spep_4, SP_03, 137, 0x100,  -1, 0,  0,  0);   -- 撃つ(140F)

setEffMoveKey(spep_4,hassya_4,0,0,0);
setEffMoveKey(spep_4+137,hassya_4,0,0,0);
setEffScaleKey(spep_4,hassya_4,1.0,1.0);
setEffScaleKey(spep_4+137,hassya_4,1.0,1.0);
setEffAlphaKey(spep_4,hassya_4,255);
setEffAlphaKey(spep_4+137,hassya_4,255);
setEffRotateKey(spep_4,hassya_4,0);
setEffRotateKey(spep_4+137,hassya_4,0);

--集中線--
shuchusen_4 = entryEffectLife( spep_4, 906, 50, 0x100,  -1, 0,  0,  0);    -- 集中線
setEffScaleKey(  spep_4,  shuchusen_4,  1.5,  1.5);
setEffScaleKey(  spep_4+35,  shuchusen_4,  1.5,  1.5);
setEffScaleKey(  spep_4+45,  shuchusen_4,  2.5,  2.5);
setEffScaleKey(  spep_4+50,  shuchusen_4,  2.5,  2.5);

--投げる直前の斜め流線(直線)--
ryuusen_4a = entryEffectLife( spep_4, 920, 34, 0x80,  -1, 0,  0,  0);    -- 流線(直線)
setEffScaleKey(  spep_4,  ryuusen_4a,  2.6,  2.6);
setEffRotateKey(  spep_4,  ryuusen_4a,  69);
setEffScaleKey(  spep_4+34,  ryuusen_4a,  2.6,  2.6);
setEffRotateKey(  spep_4+34,  ryuusen_4a,  69);

--投げた後の斜め流線（斜め）--
ryuusen_4b = entryEffectLife( spep_4+35, 921, 102, 0x80,  -1, 0,  0,  0);    -- 流線（斜め）
setEffScaleKey(  spep_4+35,  ryuusen_4b,  1.95,  1.7);
setEffRotateKey(  spep_4+35,  ryuusen_4b,  -122);
setEffScaleKey(  spep_4+137,  ryuusen_4b,  1.95,  1.7);
setEffRotateKey(  spep_4+137,  ryuusen_4b,  -122);

-- 書き文字エントリー　ズオッ --
ctzuoot_4 = entryEffectLife( spep_4 + 35,  10012, 47, 0x100, -1, 0, 76, 259.9);    -- ズオッ
setEffMoveKey( spep_4 + 35, ctzuoot_4,  76, 259.9 , 0 );
setEffMoveKey( spep_4 + 36, ctzuoot_4,  76, 259.9 , 0 );
setEffMoveKey( spep_4 + 37, ctzuoot_4, 132, 345 , 0 );
setEffMoveKey( spep_4 + 39, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 41, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 43, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 45, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 47, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 49, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 51, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 53, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 55, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 57, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 59, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 61, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 63, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 65, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 67, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 69, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 71, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 73, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 75, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 77, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 79, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 82, ctzuoot_4, 132, 345 , 0 );
setEffScaleKey( spep_4 + 35, ctzuoot_4, 0.3, 0.3 );
setEffScaleKey( spep_4 + 36, ctzuoot_4, 0.3, 0.3 );
setEffScaleKey( spep_4 + 37, ctzuoot_4, 1.4, 1.4 );
setEffScaleKey( spep_4 + 38, ctzuoot_4, 1.4, 1.4 );
setEffScaleKey( spep_4 + 39, ctzuoot_4, 2.8, 2.8 );
setEffScaleKey( spep_4 + 71, ctzuoot_4, 2.8, 2.8 );
setEffScaleKey( spep_4 + 79, ctzuoot_4, 5.8, 5.8 );
setEffScaleKey( spep_4 + 82, ctzuoot_4, 5.8, 5.8 );
setEffRotateKey( spep_4 + 35, ctzuoot_4, 30 );
setEffAlphaKey( spep_4 + 35, ctzuoot_4, 255 );
setEffAlphaKey( spep_4 + 72, ctzuoot_4, 255 );
setEffAlphaKey( spep_4 + 79, ctzuoot_4, 0 );
setEffAlphaKey( spep_4 + 82, ctzuoot_4, 0 );

------------------------------------------------------
-- 迫る(40F)
------------------------------------------------------
spep_5=spep_4+136;
entryFade( spep_5, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 36, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--斜め流線--
naname_5 = entryEffectLife( spep_5, 921, 35, 0x80,  -1, 0,  0,  0);   -- 斜め流線
setEffScaleKey( spep_5,naname_5,1.95, 1.7);
setEffRotateKey( spep_5,naname_5, -137.6);
setEffScaleKey( spep_5+ 35,naname_5,1.95, 1.7);
setEffRotateKey( spep_5+ 35,naname_5, -137.6);

semari_5 = entryEffectLife( spep_5, SP_04, 35, 0x80,  -1, 0,  0,  0);   -- 迫る(40F)

setEffMoveKey(spep_5,semari_5,0,0,0);
setEffMoveKey(spep_5+35,semari_5,0,0,0);
setEffScaleKey(spep_5,semari_5,1.0,1.0);
setEffScaleKey(spep_5+35,semari_5,1.0,1.0);
setEffAlphaKey(spep_5,semari_5,255);
setEffAlphaKey(spep_5+35,semari_5,255);
setEffRotateKey(spep_5,semari_5,0);
setEffRotateKey(spep_5+35,semari_5,0);

-- 書き文字エントリー　ズドドッ --
ctzudododo_5 = entryEffectLife( spep_5, 10014, 35, 0x100, -1, 0, 58.1, 364); -- ズドドッ
setEffMoveKey( spep_5 + 0, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 2, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 4, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 6, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 8, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 10, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 12, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 14, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 16, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 18, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 20, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 22, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 24, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 26, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 28, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 30, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 32, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 34, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 35, ctzudododo_5, 58.1, 364 , 0 );

setEffScaleKey( spep_5 + 0, ctzudododo_5, 3.3, 3.3 );
setEffRotateKey( spep_5 + 0, ctzudododo_5, 70 );
setEffAlphaKey( spep_5 + 0, ctzudododo_5, 255 );

--敵キャラの動き
setDisp( spep_5, 1, 1); --敵表示
setDisp( spep_5+36, 1, 0); --敵非表示
changeAnime( spep_5, 1, 118); --敵気溜め後ろ向き 

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 +35, 1, 0 );

setMoveKey( spep_5 + 0, 1, 503.8, -607.8 , 0 );
setMoveKey( spep_5 + 2, 1, 462.4, -550.6 , 0 );
setMoveKey( spep_5 + 4, 1, 403, -509.4 , 0 );
setMoveKey( spep_5 + 6, 1, 359.7, -456.3 , 0 );
setMoveKey( spep_5 + 8, 1, 300.2, -415.1 , 0 );
setMoveKey( spep_5 + 10, 1, 256.8, -361.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1, 1 );
setScaleKey( spep_5 + 2, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 4, 1, 0.89, 0.89 );
setScaleKey( spep_5 + 6, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 8, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 10, 1, 0.71, 0.71 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_5+10; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge, 0, 0,  -900, 0); --味方位置
setMoveKey( SP_dodge+1, 0, 0,  -900, 0); --味方位置
setMoveKey( SP_dodge+2, 0, 0,  -900, 0); --味方位置

setMoveKey( SP_dodge + 2, 1, 197.5, -320.7 , 0 );
setMoveKey( SP_dodge + 4, 1, 146, -273.5 , 0 );
setMoveKey( SP_dodge + 6, 1, 146.8, -272.2 , 0 );
setMoveKey( SP_dodge + 8, 1, 147.7, -270.8 , 0 );
setMoveKey( SP_dodge + 9, 1, 2000, -2000 , 0 );
setMoveKey( SP_dodge+ 10, 1, 2000, -2000 , 0 ); --敵位置

setScaleKey( SP_dodge + 2, 1, 0.66, 0.66 );
setScaleKey( SP_dodge + 4, 1, 0.6, 0.6 );
setScaleKey( SP_dodge + 6, 1, 0.6, 0.6 );
setScaleKey( SP_dodge + 8, 1, 0.59, 0.59 );
setScaleKey( SP_dodge + 10, 1, 0.59, 0.59 );

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避されなかった場合
--------------------------------------

--敵の動きつづき
setMoveKey( spep_5 + 12, 1, 197.5, -320.7 , 0 );
setMoveKey( spep_5 + 14, 1, 146, -273.5 , 0 );
setMoveKey( spep_5 + 16, 1, 146.8, -272.2 , 0 );
setMoveKey( spep_5 + 18, 1, 147.7, -270.8 , 0 );
setMoveKey( spep_5 + 20, 1, 148.5, -269.5 , 0 );
setMoveKey( spep_5 + 22, 1, 149.3, -268.2 , 0 );
setMoveKey( spep_5 + 24, 1, 150.2, -266.8 , 0 );
setMoveKey( spep_5 + 26, 1, 151, -265.5 , 0 );
setMoveKey( spep_5 + 28, 1, 142.5, -271.2 , 0 );
setMoveKey( spep_5 + 30, 1, 150, -264.8 , 0 );
setMoveKey( spep_5 + 32, 1, 141.5, -270.5 , 0 );
setMoveKey( spep_5 + 35, 1, 149, -264.2 , 0 );
setScaleKey( spep_5 + 12, 1, 0.66, 0.66 );
setScaleKey( spep_5 + 14, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 16, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 18, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 20, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 22, 1, 0.58, 0.58 );
setScaleKey( spep_5 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_5 + 26, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 30, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 32, 1, 0.56, 0.56 );
setScaleKey( spep_5 + 36, 1, 0.56, 0.56 );


------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
spep_6=spep_5+36;

setRotateKey( spep_6-1,  1,  0 );
setMoveKey(   spep_6-1,  1, 148, -263.5 , 0 );

gyan = entryEffect(  spep_6,  SP_05,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);

-- 書き文字エントリー --
ctgyan_6 = entryEffectLife( spep_6, 10006, 59, 0x100, -1, 0, 0, 350);    -- ギャン

setEffScaleKey( spep_6, ctgyan_6, 1.7, 1.7);
setEffAlphaKey( spep_6, ctgyan_6, 255);
setEffScaleKey( spep_6+10, ctgyan_6, 3.0, 3.0);
setEffScaleKey( spep_6+59, ctgyan_6, 4.5, 4.5);
setEffAlphaKey( spep_6+59, ctgyan_6, 255);
--setEffShake( spep_6, ctgyan_6, 58, 10);

playSe( spep_6, SE_09);


------------------------------------------------------
-- 大爆発1(180F)
------------------------------------------------------
spep_7=spep_6+60;
entryFade( spep_7-40, 38, 2, 22, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 60, 0, 30, 30, 30, 180);          -- ベース暗め　背景

playSe( spep_7+9, SE_10);

bomb_7 = entryEffect( spep_7, SP_06, 0x80,  -1, 0,  0,  0);   -- 大爆発1(180F)
setEffScaleKey( spep_7, bomb_7, 1.0, 1.0);
setEffRotateKey( spep_7, bomb_7, 0);

iwa_7a = entryEffectLife( spep_7, 107026, 128, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_7,  iwa_7a,  0,  0);
setEffScaleKey(  spep_7,  iwa_7a,  1.0,  1.0);
setEffRotateKey(  spep_7,  iwa_7a,  0);
setEffAlphaKey(  spep_7,  iwa_7a,  255);
setEffMoveKey(  spep_7+128,  iwa_7a,  0,  0);
setEffScaleKey(  spep_7+128,  iwa_7a,  1.0,  1.0);
setEffRotateKey(  spep_7+128,  iwa_7a,  0);
setEffAlphaKey(  spep_7+128,  iwa_7a,  255);

iwa_7b = entryEffectLife( spep_7, 107027, 128, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_7,  iwa_7b,  0,  0);
setEffScaleKey(  spep_7,  iwa_7b,  1.0,  1.0);
setEffRotateKey(  spep_7,  iwa_7b,  0);
setEffAlphaKey(  spep_7,  iwa_7b,  255);
setEffMoveKey(  spep_7+128,  iwa_7b,  0,  0);
setEffScaleKey(  spep_7+128,  iwa_7b,  1.0,  1.0);
setEffRotateKey(  spep_7+128,  iwa_7b,  0);
setEffAlphaKey(  spep_7+128,  iwa_7b,  255);

shuchusen_7 = entryEffectLife( spep_7, 906, 150, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_7,  shuchusen_7,  0,  0);
setEffScaleKey(  spep_7,  shuchusen_7,  1.0,  1.0);
setEffRotateKey(  spep_7,  shuchusen_7,  0);
setEffAlphaKey(  spep_7,  shuchusen_7,  255);
setEffMoveKey(  spep_7+150,  shuchusen_7,  0,  0);
setEffScaleKey(  spep_7+150,  shuchusen_7,  1.0,  1.0);
setEffRotateKey(  spep_7+150,  shuchusen_7,  0);
setEffAlphaKey(  spep_7+150,  shuchusen_7,  255);

-- ダメージ表示
dealDamage( spep_7+30);

entryFade( spep_7+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_7+150);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 溜め1(100F)
------------------------------------------------------
spep_1=0;
entryFade( spep_1, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade
entryFadeBg( spep_1, 0, 98, 0, 0, 0, 0, 204);          -- ベース暗め　背景

playSe( spep_1 + 13, SE_04);

-- ** 集中線 ** --
tame_1 = entryEffectLife( spep_1 , SP_01x, 98, 0x80,  -1, 0,  0,  0);   -- 溜め1(100F)
setEffMoveKey(spep_1,tame_1,0,0,0);
setEffMoveKey(spep_1+98,tame_1,0,0,0);
setEffScaleKey( spep_1, tame_1, 1.0, 1.0);
setEffScaleKey( spep_1+98, tame_1, 1.0, 1.0);
setEffAlphaKey(spep_1, tame_1,255);
setEffAlphaKey(spep_1+98, tame_1,255);
setEffRotateKey( spep_1, tame_1, 0);
setEffRotateKey( spep_1+98, tame_1, 0);

shuchusen_1= entryEffectLife( spep_1, 906, 98, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_1, shuchusen_1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen_1, 1.0, 1.0);
setEffAlphaKey( spep_1, shuchusen_1, 255);
setEffRotateKey( spep_1, shuchusen_1, 0);
setEffMoveKey( spep_1+98, shuchusen_1, 0, 0, 0);
setEffScaleKey( spep_1+98, shuchusen_1, 1.0, 1.0);
setEffAlphaKey( spep_1+98, shuchusen_1, 255);
setEffRotateKey( spep_1+98, shuchusen_1, 0);

-- 書き文字エントリー　ズズズン --
ctzuzuzun_1 = entryEffectLife( spep_1 + 13,  10013, 34, 0x100, -1, 0, 174.1, 181.6 );    -- ズズズン
setEffShake( spep_1 + 13, ctzuzuzun_1, 34, 10 );
setEffMoveKey( spep_1 + 13, ctzuzuzun_1, 174.1, 181.6 , 0 );
setEffMoveKey( spep_1 + 15, ctzuzuzun_1, 173.3, 190.5 , 0 );
setEffMoveKey( spep_1 + 17, ctzuzuzun_1, 186.1, 209.4 , 0 );
setEffMoveKey( spep_1 + 19, ctzuzuzun_1, 177.7, 207.1 , 0 );
setEffMoveKey( spep_1 + 21, ctzuzuzun_1, 184.2, 207.9 , 0 );
setEffMoveKey( spep_1 + 23, ctzuzuzun_1, 170, 190.5 , 0 );
setEffMoveKey( spep_1 + 25, ctzuzuzun_1, 178.8, 198 , 0 );
setEffMoveKey( spep_1 + 27, ctzuzuzun_1, 170.1, 190.1 , 0 );
setEffMoveKey( spep_1 + 29, ctzuzuzun_1, 178.8, 198 , 0 );
setEffMoveKey( spep_1 + 31, ctzuzuzun_1, 171.5, 192 , 0 );
setEffMoveKey( spep_1 + 33, ctzuzuzun_1, 178.8, 198 , 0 );
setEffMoveKey( spep_1 + 35, ctzuzuzun_1, 171.7, 192.6 , 0 );
setEffMoveKey( spep_1 + 37, ctzuzuzun_1, 178.9, 198 , 0 );
setEffMoveKey( spep_1 + 39, ctzuzuzun_1, 171.3, 192.7 , 0 );
setEffMoveKey( spep_1 + 41, ctzuzuzun_1, 178.8, 198 , 0 );
setEffMoveKey( spep_1 + 43, ctzuzuzun_1, 171, 192.8 , 0 );
setEffMoveKey( spep_1 + 45, ctzuzuzun_1, 178.8, 198 , 0 );
setEffMoveKey( spep_1 + 47, ctzuzuzun_1, 178.8, 197.9 , 0 );
setEffScaleKey( spep_1 + 13, ctzuzuzun_1, 1.14, 1.14 );
setEffScaleKey( spep_1 + 15, ctzuzuzun_1, 1.86, 1.86 );
setEffScaleKey( spep_1 + 17, ctzuzuzun_1, 2.55, 2.55 );
setEffScaleKey( spep_1 + 19, ctzuzuzun_1, 3, 3 );
setEffScaleKey( spep_1 + 23, ctzuzuzun_1, 3.1, 3.1 );
setEffScaleKey( spep_1 + 25, ctzuzuzun_1, 2.79, 2.79 );
setEffScaleKey( spep_1 + 27, ctzuzuzun_1, 2.49, 2.49 );
setEffScaleKey( spep_1 + 29, ctzuzuzun_1, 2.25, 2.25 );
setEffScaleKey( spep_1 + 31, ctzuzuzun_1, 2.01, 2.01 );
setEffScaleKey( spep_1 + 33, ctzuzuzun_1, 1.83, 1.83 );
setEffScaleKey( spep_1 + 35, ctzuzuzun_1, 1.89, 1.89 );
setEffScaleKey( spep_1 + 37, ctzuzuzun_1, 1.92, 1.92 );
setEffScaleKey( spep_1 + 39, ctzuzuzun_1, 1.95, 1.95 );
setEffScaleKey( spep_1 + 41, ctzuzuzun_1, 1.98, 1.98 );
setEffScaleKey( spep_1 + 43, ctzuzuzun_1, 1.98, 1.98 );
setEffScaleKey( spep_1 + 45, ctzuzuzun_1, 2.01, 2.01 );
setEffScaleKey( spep_1 + 47, ctzuzuzun_1, 2.01, 2.01 );
setEffRotateKey( spep_1 + 13, ctzuzuzun_1, 8.0 );
setEffRotateKey( spep_1 + 15, ctzuzuzun_1, 7.4 );
setEffRotateKey( spep_1 + 17, ctzuzuzun_1, 6.9 );
setEffRotateKey( spep_1 + 19, ctzuzuzun_1, 3.2 );
setEffRotateKey( spep_1 + 21, ctzuzuzun_1, 3.0 );
setEffRotateKey( spep_1 + 23, ctzuzuzun_1, 0.9 );
setEffRotateKey( spep_1 + 25, ctzuzuzun_1, 1.3 );
setEffRotateKey( spep_1 + 27, ctzuzuzun_1, 3 );
setEffRotateKey( spep_1 + 29, ctzuzuzun_1, 4.5 );
setEffRotateKey( spep_1 + 31, ctzuzuzun_1, 5.9 );
setEffRotateKey( spep_1 + 33, ctzuzuzun_1, 7.2 );
setEffRotateKey( spep_1 + 35, ctzuzuzun_1, 8.2 );
setEffRotateKey( spep_1 + 37, ctzuzuzun_1, 9.1 );
setEffRotateKey( spep_1 + 39, ctzuzuzun_1, 9.9 );
setEffRotateKey( spep_1 + 41, ctzuzuzun_1, 10.4 );
setEffRotateKey( spep_1 + 43, ctzuzuzun_1, 10.9 );
setEffRotateKey( spep_1 + 45, ctzuzuzun_1, 11.1 );
setEffRotateKey( spep_1 + 47, ctzuzuzun_1, 11.2 );
setEffAlphaKey( spep_1 + 13, ctzuzuzun_1, 255 );
setEffAlphaKey( spep_1 + 15, ctzuzuzun_1, 236 );
setEffAlphaKey( spep_1 + 17, ctzuzuzun_1, 209 );
setEffAlphaKey( spep_1 + 19, ctzuzuzun_1, 193 );
setEffAlphaKey( spep_1 + 21, ctzuzuzun_1, 189 );
setEffAlphaKey( spep_1 + 23, ctzuzuzun_1, 167 );
setEffAlphaKey( spep_1 + 25, ctzuzuzun_1, 147 );
setEffAlphaKey( spep_1 + 27, ctzuzuzun_1, 108 );
setEffAlphaKey( spep_1 + 29, ctzuzuzun_1, 91 );
setEffAlphaKey( spep_1 + 31, ctzuzuzun_1, 86 );
setEffAlphaKey( spep_1 + 33, ctzuzuzun_1, 63 );
setEffAlphaKey( spep_1 + 35, ctzuzuzun_1, 52 );
setEffAlphaKey( spep_1 + 37, ctzuzuzun_1, 42 );
setEffAlphaKey( spep_1 + 39, ctzuzuzun_1, 34 );
setEffAlphaKey( spep_1 + 41, ctzuzuzun_1, 20 );
setEffAlphaKey( spep_1 + 43, ctzuzuzun_1, 18 );
setEffAlphaKey( spep_1 + 45, ctzuzuzun_1, 10 );
setEffAlphaKey( spep_1 + 47, ctzuzuzun_1, 0 );


------------------------------------------------------
-- 溜め2(160F)
------------------------------------------------------
spep_2=spep_1+98;
entryFade( spep_2-18, 16, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 150, 0, 0, 0, 0, 255);          -- ベース暗め　背景

-- ** 集中線 ** --
ryuusen_2= entryEffectLife( spep_2, 923, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, ryuusen_2, 1.0, 1.0);
setEffScaleKey( spep_2+150, ryuusen_2, 1.0, 1.0);
setEffAlphaKey( spep_2, ryuusen_2, 255);
setEffAlphaKey( spep_2+150, ryuusen_2, 255);
setEffRotateKey( spep_2, ryuusen_2, 180);
setEffRotateKey( spep_2+150, ryuusen_2, 180);

tame_2 = entryEffectLife( spep_2, SP_02x, 150, 0x100,  -1, 0,  0,  0);   -- 溜め2(160F)
setEffScaleKey( spep_2, tame_2, -1.0, 1.0);
setEffScaleKey( spep_2+150, tame_2, -1.0, 1.0);
setEffRotateKey( spep_2, tame_2, 0);
setEffRotateKey( spep_2+150, tame_2, 0);

playSe( spep_2, SE_01);
playSe( spep_2+64, SE_04);

--entryEffect(  spep_2+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_2+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  spep_2+64,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2+64,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー　ゴゴゴ --
ctgogogo_2 = entryEffectLife( spep_2+77, 190006,73, 0x100, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake( spep_2+77, ctgogogo_2, 75, 10);
setEffScaleKey( spep_2+77, ctgogogo_2,-0.8,0.8);
setEffRotateKey( spep_2+77, ctgogogo_2, 0);
setEffAlphaKey( spep_2+77, ctgogogo_2, 255);
setEffShake( spep_2+150, ctgogogo_2, 75, 10);
setEffScaleKey( spep_2+150, ctgogogo_2,-0.8,0.8);
setEffRotateKey( spep_2+150, ctgogogo_2, 0);
setEffAlphaKey( spep_2+150, ctgogogo_2, 255);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_3=spep_2+150;
entryFade( spep_3-10, 8, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 88, 0, 0, 0, 0, 255);          -- ベース暗め　背景

playSe( spep_3, SE_05);

speff = entryEffect( spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--集中線--
shuchusen_3 = entryEffectLife( spep_3, 906, 88, 0x100,  -1, 0,  0,  0);

setEffMoveKey( spep_3,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3,  shuchusen_3,  1.0,  1.0);
setEffRotateKey( spep_3,  shuchusen_3,  0);
setEffAlphaKey( spep_3,  shuchusen_3,  255);
setEffMoveKey( spep_3+88,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3+88,  shuchusen_3,  1.0,  1.0);
setEffRotateKey( spep_3+88,  shuchusen_3,  0);
setEffAlphaKey( spep_3+88,  shuchusen_3,  255);

------------------------------------------------------
-- 撃つ(140F)
------------------------------------------------------
spep_4=spep_3+94;
entryFade( spep_4-14, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 137, 0, 0, 0, 0, 255);          -- ベース暗め　背景

playSe( spep_4+35, SE_07);
playSe( spep_4+85, SE_07);

hassya_4 = entryEffectLife( spep_4, SP_03x, 137, 0x100,  -1, 0,  0,  0);   -- 撃つ(140F)

setEffMoveKey(spep_4,hassya_4,0,0,0);
setEffMoveKey(spep_4+137,hassya_4,0,0,0);
setEffScaleKey(spep_4,hassya_4,1.0,1.0);
setEffScaleKey(spep_4+137,hassya_4,1.0,1.0);
setEffAlphaKey(spep_4,hassya_4,255);
setEffAlphaKey(spep_4+137,hassya_4,255);
setEffRotateKey(spep_4,hassya_4,0);
setEffRotateKey(spep_4+137,hassya_4,0);

--集中線--
shuchusen_4 = entryEffectLife( spep_4, 906, 50, 0x100,  -1, 0,  0,  0);    -- 集中線
setEffScaleKey(  spep_4,  shuchusen_4,  1.5,  1.5);
setEffScaleKey(  spep_4+35,  shuchusen_4,  1.5,  1.5);
setEffScaleKey(  spep_4+45,  shuchusen_4,  2.5,  2.5);
setEffScaleKey(  spep_4+50,  shuchusen_4,  2.5,  2.5);

--投げる直前の斜め流線(直線)--
ryuusen_4a = entryEffectLife( spep_4, 920, 34, 0x80,  -1, 0,  0,  0);    -- 流線(直線)
setEffScaleKey(  spep_4,  ryuusen_4a,  2.6,  2.6);
setEffRotateKey(  spep_4,  ryuusen_4a,  69);
setEffScaleKey(  spep_4+34,  ryuusen_4a,  2.6,  2.6);
setEffRotateKey(  spep_4+34,  ryuusen_4a,  69);

--投げた後の斜め流線（斜め）--
ryuusen_4b = entryEffectLife( spep_4+35, 921, 102, 0x80,  -1, 0,  0,  0);    -- 流線（斜め）
setEffScaleKey(  spep_4+35,  ryuusen_4b,  1.8,  1.7);
setEffRotateKey(  spep_4+35,  ryuusen_4b,  -122);
setEffScaleKey(  spep_4+137,  ryuusen_4b,  1.8,  1.7);
setEffRotateKey(  spep_4+137,  ryuusen_4b,  -122);

-- 書き文字エントリー　ズオッ --
ctzuoot_4 = entryEffectLife( spep_4 + 35,  10012, 47, 0x100, -1, 0, 76, 259.9);    -- ズオッ
setEffMoveKey( spep_4 + 35, ctzuoot_4,  76, 259.9 , 0 );
setEffMoveKey( spep_4 + 36, ctzuoot_4, 76, 259.9 , 0 );
setEffMoveKey( spep_4 + 37, ctzuoot_4, 132, 345 , 0 );
setEffMoveKey( spep_4 + 39, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 41, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 43, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 45, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 47, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 49, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 51, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 53, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 55, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 57, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 59, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 61, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 63, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 65, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 67, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 69, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 71, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 73, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 75, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 77, ctzuoot_4, 120, 355 , 0 );
setEffMoveKey( spep_4 + 79, ctzuoot_4, 147, 335 , 0 );
setEffMoveKey( spep_4 + 82, ctzuoot_4, 132, 345 , 0 );
setEffScaleKey( spep_4 + 35, ctzuoot_4, 0.3, 0.3 );
setEffScaleKey( spep_4 + 36, ctzuoot_4, 0.3, 0.3 );
setEffScaleKey( spep_4 + 37, ctzuoot_4, 1.4, 1.4 );
setEffScaleKey( spep_4 + 38, ctzuoot_4, 1.4, 1.4 );
setEffScaleKey( spep_4 + 39, ctzuoot_4, 2.8, 2.8 );
setEffScaleKey( spep_4 + 71, ctzuoot_4, 2.8, 2.8 );
setEffScaleKey( spep_4 + 79, ctzuoot_4, 5.8, 5.8 );
setEffScaleKey( spep_4 + 82, ctzuoot_4, 5.8, 5.8 );
setEffRotateKey( spep_4 + 35, ctzuoot_4, 30 );
setEffAlphaKey( spep_4 + 35, ctzuoot_4, 255 );
setEffAlphaKey( spep_4 + 72, ctzuoot_4, 255 );
setEffAlphaKey( spep_4 + 79, ctzuoot_4, 0 );
setEffAlphaKey( spep_4 + 82, ctzuoot_4, 0 );

------------------------------------------------------
-- 迫る(40F)
------------------------------------------------------
spep_5=spep_4+136;
entryFade( spep_5, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 36, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--斜め流線--
naname_5 = entryEffectLife( spep_5, 921, 35, 0x80,  -1, 0,  0,  0);   -- 斜め流線
setEffScaleKey( spep_5,naname_5,1.95, 1.7);
setEffRotateKey( spep_5,naname_5, -137.6);
setEffScaleKey( spep_5+ 35,naname_5,1.95, 1.7);
setEffRotateKey( spep_5+ 35,naname_5, -137.6);

semari_5 = entryEffectLife( spep_5, SP_04x, 35, 0x80,  -1, 0,  0,  0);   -- 迫る(40F)

setEffMoveKey(spep_5,semari_5,0,0,0);
setEffMoveKey(spep_5+35,semari_5,0,0,0);
setEffScaleKey(spep_5,semari_5,1.0,1.0);
setEffScaleKey(spep_5+35,semari_5,1.0,1.0);
setEffAlphaKey(spep_5,semari_5,255);
setEffAlphaKey(spep_5+35,semari_5,255);
setEffRotateKey(spep_5,semari_5,0);
setEffRotateKey(spep_5+35,semari_5,0);

-- 書き文字エントリー　ズドドッ --
ctzudododo_5 = entryEffectLife( spep_5, 10014, 35, 0x80, -1, 0, 58.1, 364); -- ズドドッ
setEffMoveKey( spep_5 + 0, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 2, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 4, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 6, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 8, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 10, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 12, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 14, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 16, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 18, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 20, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 22, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 24, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 26, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 28, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 30, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 32, ctzudododo_5, 58.1, 364 , 0 );
setEffMoveKey( spep_5 + 34, ctzudododo_5, 34.1, 348 , 0 );
setEffMoveKey( spep_5 + 35, ctzudododo_5, 58.1, 364 , 0 );

setEffScaleKey( spep_5 + 0, ctzudododo_5, 3.3, 3.3 );
setEffRotateKey( spep_5 + 0, ctzudododo_5, -10 );
setEffAlphaKey( spep_5 + 0, ctzudododo_5, 255 );

--敵キャラの動き
setDisp( spep_5, 1, 1); --敵表示
setDisp( spep_5+36, 1, 0); --敵非表示
changeAnime( spep_5, 1, 118); --敵気溜め後ろ向き 

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 +35, 1, 0 );

setMoveKey( spep_5 + 0, 1, 503.8, -607.8 , 0 );
setMoveKey( spep_5 + 2, 1, 462.4, -550.6 , 0 );
setMoveKey( spep_5 + 4, 1, 403, -509.4 , 0 );
setMoveKey( spep_5 + 6, 1, 359.7, -456.3 , 0 );
setMoveKey( spep_5 + 8, 1, 300.2, -415.1 , 0 );
setMoveKey( spep_5 + 10, 1, 256.8, -361.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1, 1 );
setScaleKey( spep_5 + 2, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 4, 1, 0.89, 0.89 );
setScaleKey( spep_5 + 6, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 8, 1, 0.77, 0.77 );
setScaleKey( spep_5 + 10, 1, 0.71, 0.71 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_5+10; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge, 0, 0,  -900, 0); --味方位置
setMoveKey( SP_dodge+1, 0, 0,  -900, 0); --味方位置
setMoveKey( SP_dodge+2, 0, 0,  -900, 0); --味方位置

setMoveKey( SP_dodge + 2, 1, 197.5, -320.7 , 0 );
setMoveKey( SP_dodge + 4, 1, 146, -273.5 , 0 );
setMoveKey( SP_dodge + 6, 1, 146.8, -272.2 , 0 );
setMoveKey( SP_dodge + 8, 1, 147.7, -270.8 , 0 );
setMoveKey( SP_dodge + 9, 1, 2000, -2000 , 0 );
setMoveKey( SP_dodge+ 10, 1, 2000, -2000 , 0 ); --敵位置

setScaleKey( SP_dodge + 2, 1, 0.66, 0.66 );
setScaleKey( SP_dodge + 4, 1, 0.6, 0.6 );
setScaleKey( SP_dodge + 6, 1, 0.6, 0.6 );
setScaleKey( SP_dodge + 8, 1, 0.59, 0.59 );
setScaleKey( SP_dodge + 10, 1, 0.59, 0.59 );

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避されなかった場合
--------------------------------------

--敵の動きつづき
setMoveKey( spep_5 + 12, 1, 197.5, -320.7 , 0 );
setMoveKey( spep_5 + 14, 1, 146, -273.5 , 0 );
setMoveKey( spep_5 + 16, 1, 146.8, -272.2 , 0 );
setMoveKey( spep_5 + 18, 1, 147.7, -270.8 , 0 );
setMoveKey( spep_5 + 20, 1, 148.5, -269.5 , 0 );
setMoveKey( spep_5 + 22, 1, 149.3, -268.2 , 0 );
setMoveKey( spep_5 + 24, 1, 150.2, -266.8 , 0 );
setMoveKey( spep_5 + 26, 1, 151, -265.5 , 0 );
setMoveKey( spep_5 + 28, 1, 142.5, -271.2 , 0 );
setMoveKey( spep_5 + 30, 1, 150, -264.8 , 0 );
setMoveKey( spep_5 + 32, 1, 141.5, -270.5 , 0 );
setMoveKey( spep_5 + 35, 1, 149, -264.2 , 0 );
setScaleKey( spep_5 + 12, 1, 0.66, 0.66 );
setScaleKey( spep_5 + 14, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 16, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 18, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 20, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 22, 1, 0.58, 0.58 );
setScaleKey( spep_5 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_5 + 26, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 30, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 32, 1, 0.56, 0.56 );
setScaleKey( spep_5 + 36, 1, 0.56, 0.56 );


------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
spep_6=spep_5+36;

setRotateKey( spep_6-1,  1,  0 );
setMoveKey(   spep_6-1,  1, 148, -263.5 , 0 );

gyan = entryEffect(  spep_6,  SP_05x,  0x100,  -1,  0,  0,  0);  --ギャン
setEffScaleKey(  spep_6,  gyan,  1.0,  1.0);
setEffAlphaKey(  spep_6,  gyan,  255);

-- 書き文字エントリー --
ctgyan_6 = entryEffectLife( spep_6, 10006, 59, 0x100, -1, 0, 0, 350);    -- ギャン

setEffScaleKey( spep_6, ctgyan_6, 1.7, 1.7);
setEffAlphaKey( spep_6, ctgyan_6, 255);
setEffScaleKey( spep_6+10, ctgyan_6, 3.0, 3.0);
setEffScaleKey( spep_6+59, ctgyan_6, 4.5, 4.5);
setEffAlphaKey( spep_6+59, ctgyan_6, 255);
--setEffShake( spep_6, ctgyan_6, 58, 10);

playSe( spep_6, SE_09);


------------------------------------------------------
-- 大爆発1(180F)
------------------------------------------------------
spep_7=spep_6+60;
entryFade( spep_7-40, 38, 2, 22, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 60, 0, 30, 30, 30, 180);          -- ベース暗め　背景

playSe( spep_7+9, SE_10);

bomb_7 = entryEffect( spep_7, SP_06x, 0x80,  -1, 0,  0,  0);   -- 大爆発1(180F)
setEffScaleKey( spep_7, bomb_7, -1.0, 1.0);
setEffRotateKey( spep_7, bomb_7, 0);

iwa_7a = entryEffectLife( spep_7, 107026, 128, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_7,  iwa_7a,  0,  0);
setEffScaleKey(  spep_7,  iwa_7a,  1.0,  1.0);
setEffRotateKey(  spep_7,  iwa_7a,  0);
setEffAlphaKey(  spep_7,  iwa_7a,  255);
setEffMoveKey(  spep_7+128,  iwa_7a,  0,  0);
setEffScaleKey(  spep_7+128,  iwa_7a,  1.0,  1.0);
setEffRotateKey(  spep_7+128,  iwa_7a,  0);
setEffAlphaKey(  spep_7+128,  iwa_7a,  255);

iwa_7b = entryEffectLife( spep_7, 107027, 128, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_7,  iwa_7b,  0,  0);
setEffScaleKey(  spep_7,  iwa_7b,  1.0,  1.0);
setEffRotateKey(  spep_7,  iwa_7b,  0);
setEffAlphaKey(  spep_7,  iwa_7b,  255);
setEffMoveKey(  spep_7+128,  iwa_7b,  0,  0);
setEffScaleKey(  spep_7+128,  iwa_7b,  1.0,  1.0);
setEffRotateKey(  spep_7+128,  iwa_7b,  0);
setEffAlphaKey(  spep_7+128,  iwa_7b,  255);

shuchusen_7 = entryEffectLife( spep_7, 906, 150, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_7,  shuchusen_7,  0,  0);
setEffScaleKey(  spep_7,  shuchusen_7,  1.0,  1.0);
setEffRotateKey(  spep_7,  shuchusen_7,  0);
setEffAlphaKey(  spep_7,  shuchusen_7,  255);
setEffMoveKey(  spep_7+150,  shuchusen_7,  0,  0);
setEffScaleKey(  spep_7+150,  shuchusen_7,  1.0,  1.0);
setEffRotateKey(  spep_7+150,  shuchusen_7,  0);
setEffAlphaKey(  spep_7+150,  shuchusen_7,  255);

-- ダメージ表示
dealDamage( spep_7+30);

entryFade( spep_7+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_7+150);
end

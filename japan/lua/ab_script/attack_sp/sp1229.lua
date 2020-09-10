--1014190　チチ(少女期)　こっちさこねえでけろ！ 

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --顔カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01=151879;--	気溜め1
SP_02=151880;--	気溜め2
SP_03=151881;--	投げて敵に迫る
SP_04=151882;--	飛んでく（前）
SP_05=151883;--	返ってくる（後）
SP_06=151884;--	戻ってくる～ビーム
SP_07=151885;--	ビーム伸びる
SP_08=151886;--	ビーム当たる

--敵側は味方側の反転をそのまま使います。

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);


multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め1
------------------------------------------------------
spep_0=0;

--***フェードと背景***
--entryFade(spep_0,0,0,3,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_0+58,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_0 + 30, 38, 0, 0, 0, 0, 0, 255);  -- 黒　背景

--***気溜め***
kidame01=entryEffect(spep_0,SP_01,0x100,-1,0,0,0);   -- 溜め1(68F)
setEffMoveKey( spep_0,kidame01, 0, 0);
setEffMoveKey( spep_0 + 68,kidame01, 0, 0);
setEffScaleKey( spep_0,kidame01,1.0,1.0);
setEffScaleKey( spep_0 + 68,kidame01,1.0,1.0);
setEffRotateKey( spep_0,kidame01,0);
setEffRotateKey( spep_0 + 68,kidame01,0);
setEffAlphaKey( spep_0,kidame01,255);
setEffAlphaKey( spep_0 + 67,kidame01,255);
setEffAlphaKey( spep_0 + 68,kidame01,0); -- ※次シーン配慮で1f短縮

-- 書き文字エントリー
ct_01 = entryEffectLife( spep_0+26, 10013, 42, 0x100, -1, 0, 0, 200); -- ズズンッ
setEffMoveKey( spep_0+26,ct_01, 0, 200);
setEffScaleKey( spep_0+26, ct_01, 1.0, 1.0);
setEffRotateKey( spep_0+26, ct_01, 355);
setEffAlphaKey( spep_0+26, ct_01, 0);
setEffAlphaKey( spep_0+27, ct_01, 255);   -- ここから表示
setEffAlphaKey( spep_0+28, ct_01, 255);
setEffMoveKey( spep_0+36,ct_01, 50, 350);
setEffScaleKey( spep_0+36, ct_01, 2.8, 2.8);
setEffRotateKey( spep_0+36, ct_01, 355);
setEffAlphaKey( spep_0+67, ct_01, 255);
setEffMoveKey( spep_0+68,ct_01, 50, 350);
setEffScaleKey( spep_0+68, ct_01, 2.8, 2.8);
setEffRotateKey( spep_0+68, ct_01, 355);
setEffAlphaKey( spep_0+68, ct_01, 0); -- ※次シーン配慮で1f短縮

setEffShake( spep_0+26, ct_01, 42, 25);

--SE--
playSe( spep_0 + 27, SE_01);

------------------------------------------------------
-- 気溜め2
------------------------------------------------------
spep_1=spep_0+68;

--***フェードと背景***
entryFade(spep_1,0,0,8,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_1+88,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_1, 0, 98, 0, 0, 0, 0, 200);  -- 黒　背景

--***気溜め2***
kidame02=entryEffect(spep_1,SP_02,0x100,-1,0,0,0);   -- 溜め2(98F)
setEffMoveKey( spep_1,kidame02, 0, 0);
setEffMoveKey( spep_1 + 98,kidame02, 0, 0);
setEffScaleKey(spep_1,kidame02,1.0,1.0);
setEffScaleKey(spep_1 + 98,kidame02,1.0,1.0);
setEffRotateKey(spep_1,kidame02,0);
setEffRotateKey(spep_1 + 98,kidame02,0);
setEffAlphaKey(spep_1,kidame02,255);
setEffAlphaKey(spep_1 + 98,kidame02,255);
setEffAlphaKey(spep_1 + 99,kidame02,0);
setEffAlphaKey(spep_1 + 100,kidame02,0);

--entryEffect(  spep_1+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_1+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_1+12,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+12,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー　ゴゴゴ --
ctgogogo_2 = entryEffectLife( spep_1+24, 190006,74, 0x100, -1, 0, 50, 510);    -- ゴゴゴ・・・
setEffShake( spep_1+24, ctgogogo_2, 73, 10);
setEffMoveKey( spep_1+24,ctgogogo_2, 100, 530);
setEffScaleKey( spep_1+24, ctgogogo_2,0.8,0.8);
setEffRotateKey( spep_1+24, ctgogogo_2, 0);
setEffAlphaKey( spep_1+24, ctgogogo_2, 0);
setEffAlphaKey( spep_1+25, ctgogogo_2, 255);   -- ここから表示
setEffAlphaKey( spep_1+26, ctgogogo_2, 255);
setEffMoveKey( spep_1+98,ctgogogo_2, 100, 530);
setEffScaleKey( spep_1+98, ctgogogo_2,0.8,0.8);
setEffRotateKey( spep_1+98, ctgogogo_2, 0);
setEffAlphaKey( spep_1+98, ctgogogo_2, 255);

--SE--
playSe( spep_1 + 24, SE_04);

--------------------------------------
--カードカットイン(90F)
--------------------------------------
spep_2=spep_1+98;

--***フェードと背景***
entryFade(spep_2,0,2,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+86,2,6,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

speff2=entryEffect(spep_2,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

--***集中線***
shuchusen_2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey( spep_2,  shuchusen_2,  0,  0);
setEffScaleKey( spep_2,  shuchusen_2,  1.0,  1.0);
setEffRotateKey( spep_2,  shuchusen_2,  0);
setEffAlphaKey( spep_2,  shuchusen_2,  255);
setEffMoveKey( spep_2 + 90,  shuchusen_2,  0,  0);
setEffScaleKey( spep_2 + 90,  shuchusen_2,  1.0,  1.0);
setEffRotateKey( spep_2 + 90,  shuchusen_2,  0);
setEffAlphaKey( spep_2 + 90,  shuchusen_2,  255);

--SE--
playSe(spep_2,SE_05);

------------------------------------------------------
-- 投げて敵に迫る
------------------------------------------------------
spep_3=spep_2+90;

--***フェードと背景***
entryFade(spep_3+58,8,3,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_3, 0, 10, 0, 0, 0, 0, 180);  -- 黒　背景
entryFadeBg(spep_3 + 5, 5, 58, 0, 0, 0, 0, 255);  -- 黒　背景

--***発射***
hassya03=entryEffect(spep_3,SP_03,0x100,-1,0,0,0);   -- 発射(68F)
setEffMoveKey( spep_3, hassya03,  0,  0);
setEffMoveKey( spep_3 + 68, hassya03,  0,  0);
setEffScaleKey( spep_3, hassya03,1.2,1.2);
setEffScaleKey( spep_3 + 68, hassya03,1.2,1.2);
setEffRotateKey( spep_3, hassya03,0);
setEffRotateKey( spep_3 + 68, hassya03,0);
setEffAlphaKey( spep_3, hassya03,255);
setEffAlphaKey( spep_3 + 68, hassya03,255);
setEffAlphaKey( spep_3 + 69, hassya03,0);
setEffAlphaKey( spep_3 + 70, hassya03,0);

--集中線--
shuchusen_3 = entryEffectLife( spep_3, 906, 8, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_3,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3,  shuchusen_3,  1.0,  1.0);
setEffRotateKey( spep_3,  shuchusen_3,  0);
setEffAlphaKey( spep_3,  shuchusen_3,  255);
setEffMoveKey( spep_3 + 8,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3 + 8,  shuchusen_3,  1.0,  1.0);
setEffRotateKey( spep_3 + 8,  shuchusen_3,  0);
setEffAlphaKey( spep_3 + 8,  shuchusen_3,  255);

--流線
sen3 = entryEffectLife( spep_3 + 8, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線右向き
setEffMoveKey( spep_3 + 8,  sen3,  0,  0);
setEffRotateKey( spep_3 + 8, sen3, 180);
setEffScaleKey( spep_3 + 8, sen3, 1.0, 1.0);
setEffAlphaKey( spep_3 + 8,  sen3,  0);
setEffAlphaKey( spep_3 + 9,  sen3,  255);   -- ここから表示
setEffAlphaKey( spep_3 + 10,  sen3,  255);
setEffRotateKey( spep_3 + 30, sen3, 180);
setEffRotateKey( spep_3 + 31, sen3, 0);   -- ここから左向きに変更
setEffRotateKey( spep_3 + 32, sen3, 0);
setEffMoveKey( spep_3 + 68,  sen3,  0,  0);
setEffRotateKey( spep_3 + 68, sen3, 0);
setEffScaleKey( spep_3 + 68, sen3, 1.0, 1.0);
setEffAlphaKey( spep_3 + 68,  sen3,  255);


--SE
playSe( spep_3 + 9, 1008);
playSe( spep_3 + 30, 1008);

------------------------------------------------------
-- 飛んで返ってくる
------------------------------------------------------
spep_4=spep_3+68;

--***フェードと背景***
entryFade(spep_4+98,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_4, 0, 108, 0, 0, 0, 0, 200);  -- 黒　背景

--***ブーメラン***
boomerang04a=entryEffect(spep_4,SP_04,0x100,-1,0,0,0);   -- 飛んでく（前）(108F)
setEffMoveKey( spep_4,boomerang04a,  0,  0);
setEffMoveKey( spep_4 + 108,boomerang04a,  0,  0);
setEffScaleKey( spep_4,boomerang04a,1.0,1.0);
setEffScaleKey( spep_4 + 108,boomerang04a,1.0,1.0);
setEffRotateKey( spep_4,boomerang04a,0);
setEffRotateKey( spep_4 + 108,boomerang04a,0);
setEffAlphaKey( spep_4,boomerang04a,255);
setEffAlphaKey( spep_4 + 108,boomerang04a,255);
setEffAlphaKey( spep_4 + 109,boomerang04a,0);
setEffAlphaKey( spep_4 + 110,boomerang04a,0);

boomerang04b=entryEffect(spep_4,SP_05,0x80,-1,0,0,0);   -- 返ってくる（後）(108F)
setEffMoveKey( spep_4,boomerang04b,  0,  0);
setEffMoveKey( spep_4 + 108,boomerang04b,  0,  0);
setEffScaleKey(spep_4,boomerang04b,1.0,1.0);
setEffScaleKey(spep_4 + 108,boomerang04b,1.0,1.0);
setEffRotateKey(spep_4,boomerang04b,0);
setEffRotateKey(spep_4 + 108,boomerang04b,0);
setEffAlphaKey(spep_4,boomerang04b,255);
setEffAlphaKey(spep_4 + 108,boomerang04b,255);
setEffAlphaKey(spep_4 + 109,boomerang04b,0);
setEffAlphaKey(spep_4 + 110,boomerang04b,0);

--***敵の動き***
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 17, 1, 0 );
setDisp( spep_4 + 18, 1, 0 );
setDisp( spep_4 + 33, 1, 1 );
setDisp( spep_4 + 34, 1, 1 );
setDisp( spep_4 + 108, 1, 0 );
changeAnime( spep_4 + 0, 1, 101 );
changeAnime( spep_4 + 8, 1, 103 );
changeAnime( spep_4 + 33, 1, 103 );
changeAnime( spep_4 + 34, 1, 103 );
changeAnime( spep_4 + 41, 1, 101 );
changeAnime( spep_4 + 42, 1, 101 );
changeAnime( spep_4 + 67, 1, 103 );
changeAnime( spep_4 + 68, 1, 103 );

--敵の動き回避前 一度消える
setMoveKey( spep_4 + 0, 1, 150, 0 , 0 );
setMoveKey( spep_4 + 2, 1, 145.3, 0 , 0 );
setMoveKey( spep_4 + 4, 1, 140.7, 0 , 0 );
setMoveKey( spep_4 + 7, 1, 136, 0 , 0 );
setMoveKey( spep_4 + 8, 1, 98.4, -52.4 , 0 );
setMoveKey( spep_4 + 10, 1, 96.4, -52.4 , 0 );
setMoveKey( spep_4 + 12, 1, 94.4, -52.4 , 0 );
setMoveKey( spep_4 + 14, 1, 92.4, -52.4 , 0 );
setMoveKey( spep_4 + 16, 1, 90.4, -52.4 , 0 );
setMoveKey( spep_4 + 18, 1, 88.4, -52.4 , 0 );
setScaleKey( spep_4 + 0, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 2, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 4, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 7, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 8, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.5, 1.5 );
setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 18, 1, 0 );

--敵の動き回避後 34f後に再出現
setMoveKey( spep_4 + 34, 1, -13.7, -52.4 , 0 );
setMoveKey( spep_4 + 36, 1, -18.4, -52.4 , 0 );
setMoveKey( spep_4 + 38, 1, -23, -52.4 , 0 );
setMoveKey( spep_4 + 41, 1, -27.7, -52.4 , 0 );
setMoveKey( spep_4 + 42, 1, -29.9, 0 , 0 );
setMoveKey( spep_4 + 44, 1, -7.2, -2.4 , 0 );
setMoveKey( spep_4 + 46, 1, 15.6, -4.8 , 0 );
setMoveKey( spep_4 + 48, 1, 38.4, -7.2 , 0 );
setMoveKey( spep_4 + 50, 1, 61.2, -9.6 , 0 );
setMoveKey( spep_4 + 52, 1, 84, -12 , 0 );
setMoveKey( spep_4 + 54, 1, 85.8, -12.2 , 0 );
setMoveKey( spep_4 + 56, 1, 87.6, -12.4 , 0 );
setMoveKey( spep_4 + 58, 1, 89.4, -12.6 , 0 );
setMoveKey( spep_4 + 60, 1, 91.2, -12.8 , 0 );
setMoveKey( spep_4 + 62, 1, 93, -13 , 0 );
setMoveKey( spep_4 + 64, 1, 94.8, -13.2 , 0 );
setMoveKey( spep_4 + 66, 1, 96.6, -13.4 , 0 );
setMoveKey( spep_4 + 68, 1, 98.4, -13.6 , 0 );
setMoveKey( spep_4 + 70, 1, 100.2, -13.8 , 0 );
setMoveKey( spep_4 + 73, 1, 102, -14 , 0 );
setMoveKey( spep_4 + 74, 1, 84.3, -66.4 , 0 );
setMoveKey( spep_4 + 76, 1, 61.6, -76.4 , 0 );
setMoveKey( spep_4 + 78, 1, 38.9, -86.4 , 0 );
setMoveKey( spep_4 + 80, 1, 16.2, -96.4 , 0 );
setMoveKey( spep_4 + 82, 1, -6.4, -106.4 , 0 );
setMoveKey( spep_4 + 84, 1, -29.1, -116.4 , 0 );
setMoveKey( spep_4 + 86, 1, -51.8, -126.4 , 0 );
setScaleKey( spep_4 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_4 + 36, 1, 1.72, 1.72 );
setScaleKey( spep_4 + 38, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 41, 1, 1.75, 1.75 );
setScaleKey( spep_4 + 42, 1, 1.7, 1.7 );
setScaleKey( spep_4 + 44, 1, 1.64, 1.64 );
setScaleKey( spep_4 + 46, 1, 1.58, 1.58 );
setScaleKey( spep_4 + 48, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 50, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 52, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 54, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 56, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 58, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 60, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 62, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 64, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 66, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 68, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 70, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 72, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 74, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 76, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 78, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 80, 1, 1.58, 1.58 );
setScaleKey( spep_4 + 82, 1, 1.62, 1.62 );
setScaleKey( spep_4 + 84, 1, 1.66, 1.66 );
setScaleKey( spep_4 + 86, 1, 1.7, 1.7 );
setRotateKey( spep_4 + 34, 1, 0 );
setRotateKey( spep_4 + 86, 1, 0 );


--流線
sen4a = entryEffectLife( spep_4, 921, 32, 0x80,  -1,  0,  0,  0); -- 流線右向き
setEffMoveKey( spep_4,  sen4a,  0,  0);
setEffScaleKey( spep_4, sen4a, 1.4, 1.1 );
setEffRotateKey( spep_4, sen4a, -22);
setEffAlphaKey( spep_4,  sen4a,  255);
setEffMoveKey( spep_4 + 32,  sen4a,  0,  0);
setEffScaleKey( spep_4 + 32, sen4a, 1.4, 1.1 );
setEffRotateKey( spep_4 + 32, sen4a, -22);
setEffAlphaKey( spep_4 + 32,  sen4a,  255);
--setEffScaleKey( spep_4 + 32, sen4a, 1.613, 1.323 );


--ふっ飛ばし流線
sen4b = entryEffectLife( spep_4 + 60, 924, 48, 0x80,  -1,  0,  -250,  0); -- ふっ飛ばし流線
setEffMoveKey( spep_4 + 60,  sen4b,  -250,  0);
setEffScaleKey( spep_4 + 60, sen4b, 1.17, 1.39 );
setEffRotateKey( spep_4 + 60, sen4b, -45.2);
setEffAlphaKey( spep_4 + 60,  sen4b,  0);
setEffAlphaKey( spep_4 + 61,  sen4b,  255);--ここから表示
setEffAlphaKey( spep_4 + 62,  sen4b,  255);
setEffMoveKey( spep_4 + 108,  sen4b,  -250,  0);
setEffScaleKey( spep_4 + 108, sen4b, 1.17, 1.39 );
setEffRotateKey( spep_4 + 108, sen4b, -45.2);
setEffAlphaKey( spep_4 + 108,  sen4b,  255);

--SE
playSe( spep_4 + 16, 43);
playSe( spep_4 + 32, 43);

--黒背景

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+76 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置
setMoveKey(SP_dodge, 1, 61.6, -76.4 , 0 );
setMoveKey( SP_dodge+2, 1, 61.6, -76.4 , 0 );
setMoveKey( SP_dodge+4, 1, 61.6, -76.4 , 0 );
setMoveKey( SP_dodge+6, 1,  61.6, -76.4 , 0 );
setMoveKey( SP_dodge+8, 1,  61.6, -76.4 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( SP_dodge, 1, 1.45, 1.45 );
setScaleKey( SP_dodge+2, 1,  1.49, 1.49 );
setScaleKey( SP_dodge+4, 1, 1.53, 1.53 );
setScaleKey( SP_dodge+6, 1, 1.58, 1.58 );
setScaleKey( SP_dodge+8, 1, 1.62, 1.62 );

changeAnime(SP_dodge+9,    1,  101);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.3, 1.3);
setScaleKey( SP_dodge+10,    1,  1.3, 1.3);
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避しなかった場合
--------------------------------------

changeAnime( spep_4 + 87, 1, 106 );
changeAnime( spep_4 + 88, 1, 106 );
setMoveKey( spep_4 + 87, 1, -137.7, -198.4 , 0 );
setMoveKey( spep_4 + 88, 1, -137.7, -198.4 , 0 );
setMoveKey( spep_4 + 90, 1, -139.7, -200.4 , 0 );
setMoveKey( spep_4 + 92, 1, -141.7, -202.4 , 0 );
setMoveKey( spep_4 + 94, 1, -143.7, -204.3 , 0 );
setMoveKey( spep_4 + 96, 1, -145.7, -206.4 , 0 );
setMoveKey( spep_4 + 98, 1, -147.7, -208.4 , 0 );
setMoveKey( spep_4 + 100, 1, -149.7, -210.3 , 0 );
setMoveKey( spep_4 + 102, 1, -151.7, -212.4 , 0 );
setMoveKey( spep_4 + 104, 1, -153.7, -214.4 , 0 );
setMoveKey( spep_4 + 106, 1, -155.7, -216.4 , 0 );
setMoveKey( spep_4 + 108, 1, -155.7, -216.4 , 0 );
setScaleKey( spep_4 + 87, 1, 2, 2 );
setScaleKey( spep_4 + 88, 1, 2, 2 );
setScaleKey( spep_4 + 90, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 92, 1, 2.11, 2.11 );
setScaleKey( spep_4 + 94, 1, 2.17, 2.17 );
setScaleKey( spep_4 + 96, 1, 2.22, 2.22 );
setScaleKey( spep_4 + 98, 1, 2.28, 2.28 );
setScaleKey( spep_4 + 100, 1, 2.33, 2.33 );
setScaleKey( spep_4 + 102, 1, 2.39, 2.39 );
setScaleKey( spep_4 + 104, 1, 2.44, 2.44 );
setScaleKey( spep_4 + 106, 1, 2.5, 2.5 );
setScaleKey( spep_4 + 108, 1, 2.5, 2.5 );
setRotateKey( spep_4 + 87, 1, -95 );
setRotateKey( spep_4 + 88, 1, -95 );
setRotateKey( spep_4 + 90, 1, -95.2 );
setRotateKey( spep_4 + 108, 1, -95.2 );

--SE
playSe( spep_4 + 86, 1032);

------------------------------------------------------
-- 戻ってくる～ビーム
------------------------------------------------------
spep_5=spep_4+108;

--***フェードと背景***
entryFade(spep_5,0,0,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_5+70,6,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_5, 0, 78, 0, 0, 0, 0, 200);  -- 黒　背景

--***戻ってくる～ビーム***
hassya05=entryEffect(spep_5,SP_06,0x100,-1,0,0,0);   -- 戻ってくる～ビーム(78F)
setEffMoveKey( spep_5,hassya05,  0,  0);
setEffMoveKey( spep_5 + 78,hassya05,  0,  0);
setEffScaleKey( spep_5,hassya05,1.0,1.0);
setEffScaleKey( spep_5 + 78,hassya05,1.0,1.0);
setEffRotateKey( spep_5,hassya05,0);
setEffRotateKey( spep_5 + 78,hassya05,0);
setEffAlphaKey( spep_5,hassya05,255);
setEffAlphaKey( spep_5 + 78,hassya05,255);
setEffAlphaKey( spep_5 + 79,hassya05,0);
setEffAlphaKey( spep_5 + 80,hassya05,0);

--流線
sen5 = entryEffectLife( spep_5, 921, 78, 0x80,  -1,  0,  0,  0); -- 流線右向き
setEffMoveKey( spep_5, sen5,  0,  0);
setEffRotateKey( spep_5, sen5, 180);
setEffScaleKey( spep_5, sen5, 1.0, 1.0);
setEffAlphaKey( spep_5,  sen5,  255);
setEffMoveKey( spep_5 + 78, sen5,  0,  0);
setEffRotateKey( spep_5 + 78, sen5, 180);
setEffScaleKey( spep_5 + 78, sen5, 1.0, 1.0);
setEffAlphaKey( spep_5 + 78,  sen5,  255);

--SE
playSe( spep_5 + 16, 1061);
playSe( spep_5 + 56, SE_07);


------------------------------------------------------
-- ビーム伸びる
------------------------------------------------------
spep_6=spep_5+78;

--***フェードと背景***
entryFade(spep_6,0,0,10,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_6+58,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_6, 0, 68, 0, 0, 0, 0, 255);  -- 黒　背景

--***ビーム伸びる***
beam06=entryEffect(spep_6,SP_07,0x100,-1,0,0,0);   -- ビーム伸びる(68F)
setEffMoveKey( spep_6,beam06,  0,  0);
setEffMoveKey( spep_6 + 68,beam06,  0,  0);
setEffScaleKey( spep_6,beam06,1.0,1.0);
setEffScaleKey( spep_6 + 68,beam06,1.0,1.0);
setEffRotateKey( spep_6,beam06,0);
setEffRotateKey( spep_6 + 68,beam06,0);
setEffAlphaKey( spep_6,beam06,255);
setEffAlphaKey( spep_6 + 68,beam06,255);
setEffAlphaKey( spep_6 + 69,beam06,0);
setEffAlphaKey( spep_6 + 70,beam06,0);

--流線
sen6 = entryEffectLife( spep_6, 921, 68, 0x80,  -1,  0,  0,  0); -- 流線右向き
setEffMoveKey( spep_6, sen6,  0,  0);
setEffRotateKey( spep_6, sen6, 180);
setEffScaleKey( spep_6, sen6, 1.0, 1.0);
setEffAlphaKey( spep_6,  sen6,  255);
setEffMoveKey( spep_6 + 68, sen6,  0,  0);
setEffRotateKey( spep_6 + 68, sen6, 180);
setEffScaleKey( spep_6 + 68, sen6, 1.0, 1.0);
setEffAlphaKey( spep_6 + 68,  sen6,  255);

--集中線--
shuchusen_6 = entryEffectLife( spep_6, 906, 68, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_6, shuchusen_6,  0,  0);
setEffScaleKey( spep_6,  shuchusen_6,  1.0,  1.0);
setEffRotateKey( spep_6,  shuchusen_6,  0);
setEffAlphaKey( spep_6,  shuchusen_6,  255);
setEffMoveKey( spep_6 + 68, shuchusen_6,  0,  0);
setEffScaleKey( spep_6 + 68,  shuchusen_6,  1.0,  1.0);
setEffRotateKey( spep_6 + 68,  shuchusen_6,  0);
setEffAlphaKey( spep_6 + 68,  shuchusen_6,  255);

-- 書き文字エントリー
ct_06 = entryEffectLife( spep_6 + 4, 10012, 40, 0x100, -1, 0, -184, 259.9); -- ズオッ
setEffMoveKey( spep_6 + 4, ct_06, -184, 259.9 , 0 );
setEffMoveKey( spep_6 + 6, ct_06, -155, 300.9 , 0 );
setEffMoveKey( spep_6 + 8, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 10, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 12, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 14, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 16, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 18, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 20, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 22, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 24, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 26, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 28, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 30, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 32, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 34, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 36, ct_06, -136, 359.9 , 0 );
setEffMoveKey( spep_6 + 38, ct_06, -102.4, 334.3 , 0 );
setEffMoveKey( spep_6 + 40, ct_06, -120, 359.9 , 0 );
setEffMoveKey( spep_6 + 42, ct_06, -76.8, 324.7 , 0 );
setEffMoveKey( spep_6 + 44, ct_06, -64, 319.9 , 0 );
setEffScaleKey( spep_6 + 4, ct_06, 0.3, 0.3 );
setEffScaleKey( spep_6 + 6, ct_06, 1.35, 1.35 );
setEffScaleKey( spep_6 + 8, ct_06, 2.4, 2.4 );
setEffScaleKey( spep_6 + 34, ct_06, 2.4, 2.4 );
setEffScaleKey( spep_6 + 36, ct_06, 3.12, 3.12 );
setEffScaleKey( spep_6 + 38, ct_06, 3.84, 3.84 );
setEffScaleKey( spep_6 + 40, ct_06, 4.56, 4.56 );
setEffScaleKey( spep_6 + 42, ct_06, 5.28, 5.28 );
setEffScaleKey( spep_6 + 44, ct_06, 6.5, 6.5 );
setEffRotateKey( spep_6 + 4, ct_06, 30 );
setEffRotateKey( spep_6 + 44, ct_06, 30 );
setEffAlphaKey( spep_6 + 4, ct_06, 255 );
setEffAlphaKey( spep_6 + 34, ct_06, 255 );
setEffAlphaKey( spep_6 + 36, ct_06, 204 );
setEffAlphaKey( spep_6 + 38, ct_06, 153 );
setEffAlphaKey( spep_6 + 40, ct_06, 102 );
setEffAlphaKey( spep_6 + 42, ct_06, 51 );
setEffAlphaKey( spep_6 + 44, ct_06, 0 );

--SE
playSe( spep_6 + 0, SE_07);

------------------------------------------------------
-- ビーム当たる
------------------------------------------------------
spep_7=spep_6+68;

--***フェードと背景***
entryFade(spep_7,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_7+22,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_7, 0, 30, 0, 0, 0, 0, 180);  -- 黒　背景

--***ビーム当たる***
hit07=entryEffectLife(spep_7,SP_08,30,0x100,-1,0,0,0);   -- ビーム当たる(30F)
setEffMoveKey( spep_7,hit07,  0,  0);
setEffScaleKey( spep_7,hit07,1.0,1.0);
setEffAlphaKey( spep_7,hit07,255);
setEffRotateKey( spep_7,hit07,0);
setEffMoveKey( spep_7 + 30,hit07,  0,  0);
setEffScaleKey( spep_7 + 30,hit07,1.0,1.0);
setEffAlphaKey( spep_7 + 30,hit07,255);
setEffRotateKey( spep_7 + 30,hit07,0);

--***敵の動き***
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 23, 1, 0 );
setDisp( spep_7 + 24, 1, 0 );
changeAnime( spep_7 + 0, 1, 104 );
changeAnime( spep_7 + 6, 1, 108 );
setMoveKey( spep_7 + 0, 1, 221.1, -49.8 , 0 );
setMoveKey( spep_7 + 2, 1, 214.1, -51.7 , 0 );
setMoveKey( spep_7 + 5, 1, 189.1, -69.6 , 0 );
setMoveKey( spep_7 + 6, 1, 187.7, -14.3 , 0 );
setMoveKey( spep_7 + 8, 1, 193.9, -60.2 , 0 );
setMoveKey( spep_7 + 10, 1, 207.9, -45.8 , 0 );
setMoveKey( spep_7 + 12, 1, 225.8, -43.3 , 0 );
setMoveKey( spep_7 + 14, 1, 269.7, -28.9 , 0 );
setMoveKey( spep_7 + 16, 1, 297.6, -26.5 , 0 );
setMoveKey( spep_7 + 18, 1, 301.5, -12.1 , 0 );
setMoveKey( spep_7 + 20, 1, 319.4, -9.6 , 0 );
setMoveKey( spep_7 + 22, 1, 343.4, 4.8 , 0 );
setScaleKey( spep_7 + 0, 1, 1.44, 1.44 );
setScaleKey( spep_7 + 2, 1, 1.68, 1.68 );
setScaleKey( spep_7 + 5, 1, 1.92, 1.92 );
setScaleKey( spep_7 + 6, 1, 1.95, 1.95 );
setScaleKey( spep_7 + 8, 1, 1.92, 1.92 );
setScaleKey( spep_7 + 10, 1, 1.68, 1.68 );
setScaleKey( spep_7 + 12, 1, 1.41, 1.41 );
setScaleKey( spep_7 + 14, 1, 1.17, 1.17 );
setScaleKey( spep_7 + 16, 1, 0.9, 0.9 );
setScaleKey( spep_7 + 18, 1, 0.66, 0.66 );
setScaleKey( spep_7 + 20, 1, 0.39, 0.39 );
setScaleKey( spep_7 + 22, 1, 0.15, 0.15 );
setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 5, 1, 0 );
setRotateKey( spep_7 + 6, 1, 23.7 );
setRotateKey( spep_7 + 8, 1, 0 );
setRotateKey( spep_7 + 23, 1, 0 );

--流線
sen7 = entryEffectLife( spep_7, 921, 30, 0x80,  -1,  0,  0,  0); -- 流線左向き
setEffMoveKey( spep_7, sen7,  0,  0);
setEffRotateKey( spep_7, sen7, 0);
setEffScaleKey( spep_7, sen7, 1.0, 1.0);
setEffAlphaKey( spep_7,  sen7,  255);
setEffMoveKey( spep_7 + 30, sen7,  0,  0);
setEffRotateKey( spep_7 + 30, sen7, 0);
setEffScaleKey( spep_7 + 30, sen7, 1.0, 1.0);
setEffAlphaKey( spep_7 + 30,  sen7,  255);

-- 書き文字エントリー
ct_07 = entryEffectLife( spep_7, 10014, 30, 0x100, -1, 0, 0, 280); -- ズドドッ
setEffShake( spep_7, ct_07, 30, 20);
setEffMoveKey( spep_7, ct_07,  0,  280);
setEffScaleKey( spep_7, ct_07, 2.5, 2.5);
setEffRotateKey( spep_7, ct_07, 60);
setEffAlphaKey( spep_7, ct_07, 255);
setEffMoveKey( spep_7 + 30, ct_07,  0,  280);
setEffScaleKey( spep_7 + 30, ct_07, 2.5, 2.5);
setEffRotateKey( spep_7 + 30, ct_07, 60);
setEffAlphaKey( spep_7 + 30, ct_07, 255);

--SE
playSe( spep_7 + 6, SE_09);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_8=spep_7+30;

setDisp( spep_8-1, 0, 0);
setMoveKey( spep_8-1,    1,  100,  0,   0);
setScaleKey( spep_8-1,    1,  1, 1);
setMoveKey( spep_8,    1,    0,   0,   128);
setScaleKey( spep_8,    1,  0.1, 0.1);

changeAnime( spep_8, 1, 107);                         -- 手前ダメージ
setDisp( spep_8, 1, 1);

entryEffect( spep_8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_8+8, SE_10);

setMoveKey( spep_8+8,   1,    0,   0,   128);
setMoveKey( spep_8+15,   1,  -60,  -200,  -100);
setMoveKey( spep_8+16,   1,  -60,  -200,  -100);
setDamage( spep_8+16, 1, 0);  -- ダメージ振動等
setShake( spep_8+6,6,15);
setShake( spep_8+12,15,10);

setRotateKey( spep_8,  1,  30 );
setRotateKey( spep_8+2,  1,  80 );
setRotateKey( spep_8+4,  1, 120 );
setRotateKey( spep_8+6,  1, 160 );
setRotateKey( spep_8+8,  1, 200 );
setRotateKey( spep_8+10,  1, 260 );
setRotateKey( spep_8+12,  1, 320 );
setRotateKey( spep_8+14,  1,   0 );

setShakeChara( spep_8+14, 1, 6,  10);
setShakeChara( spep_8+20, 1, 10, 20);

-- 書き文字エントリー
ct_08 = entryEffectLife( spep_8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_8+15, ct_08, 30, 10);
setEffRotateKey( spep_8+15, ct_08, -40);
setEffScaleKey( spep_8+15, ct_08, 4.0, 4.0);
setEffScaleKey( spep_8+16, ct_08, 2.0, 2.0);
setEffScaleKey( spep_8+17, ct_08, 2.6, 2.6);
setEffScaleKey( spep_8+18, ct_08, 4.0, 4.0);
setEffScaleKey( spep_8+19, ct_08, 2.6, 2.6);
setEffScaleKey( spep_8+20, ct_08, 3.8, 3.8);
setEffScaleKey( spep_8+110, ct_08, 3.8, 3.8);
setEffAlphaKey( spep_8+15, ct_08, 255);
setEffAlphaKey( spep_8+105, ct_08, 255);
setEffAlphaKey( spep_8+115, ct_08, 0);

playSe( spep_8+2, SE_11);
shuchusen = entryEffectLife( spep_8+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
hibi = entryEffect( spep_8+2, 1600,  0x100,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_8+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_8+16);


entryFade( spep_8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_8+110);

else

--------------------------------------------------------------------------------------------
--敵側
--------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め1
------------------------------------------------------
spep_0=0;

--***フェードと背景***
--entryFade(spep_0,0,0,3,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_0+58,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_0 + 30, 38, 0, 0, 0, 0, 0, 255);  -- 黒　背景

--***気溜め***
kidame01=entryEffect(spep_0,SP_01,0x100,-1,0,0,0);   -- 溜め1(68F)
setEffMoveKey( spep_0,kidame01, 0, 0);
setEffMoveKey( spep_0 + 68,kidame01, 0, 0);
setEffScaleKey( spep_0,kidame01,1.0,1.0);
setEffScaleKey( spep_0 + 68,kidame01,1.0,1.0);
setEffRotateKey( spep_0,kidame01,0);
setEffRotateKey( spep_0 + 68,kidame01,0);
setEffAlphaKey( spep_0,kidame01,255);
setEffAlphaKey( spep_0 + 67,kidame01,255);
setEffAlphaKey( spep_0 + 68,kidame01,0); -- ※次シーン配慮で1f短縮

-- 書き文字エントリー
ct_01 = entryEffectLife( spep_0+26, 10013, 42, 0x100, -1, 0, 0, 200); -- ズズンッ
setEffMoveKey( spep_0+26,ct_01, 0, 200);
setEffScaleKey( spep_0+26, ct_01, 1.0, 1.0);
setEffRotateKey( spep_0+26, ct_01, 355);
setEffAlphaKey( spep_0+26, ct_01, 0);
setEffAlphaKey( spep_0+27, ct_01, 255);   -- ここから表示
setEffAlphaKey( spep_0+28, ct_01, 255);
setEffMoveKey( spep_0+36,ct_01, 50, 350);
setEffScaleKey( spep_0+36, ct_01, 2.8, 2.8);
setEffRotateKey( spep_0+36, ct_01, 355);
setEffAlphaKey( spep_0+67, ct_01, 255);
setEffMoveKey( spep_0+68,ct_01, 50, 350);
setEffScaleKey( spep_0+68, ct_01, 2.8, 2.8);
setEffRotateKey( spep_0+68, ct_01, 355);
setEffAlphaKey( spep_0+68, ct_01, 0); -- ※次シーン配慮で1f短縮

setEffShake( spep_0+26, ct_01, 42, 25);

--SE--
playSe( spep_0 + 27, SE_01);

------------------------------------------------------
-- 気溜め2
------------------------------------------------------
spep_1=spep_0+68;

--***フェードと背景***
entryFade(spep_1,0,0,8,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_1+88,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_1, 0, 98, 0, 0, 0, 0, 200);  -- 黒　背景

--***気溜め2***
kidame02=entryEffect(spep_1,SP_02,0x100,-1,0,0,0);   -- 溜め2(98F)
setEffMoveKey( spep_1,kidame02, 0, 0);
setEffMoveKey( spep_1 + 98,kidame02, 0, 0);
setEffScaleKey(spep_1,kidame02,1.0,1.0);
setEffScaleKey(spep_1 + 98,kidame02,1.0,1.0);
setEffRotateKey(spep_1,kidame02,0);
setEffRotateKey(spep_1 + 98,kidame02,0);
setEffAlphaKey(spep_1,kidame02,255);
setEffAlphaKey(spep_1 + 98,kidame02,255);
setEffAlphaKey(spep_1 + 99,kidame02,0);
setEffAlphaKey(spep_1 + 100,kidame02,0);

--entryEffect(  spep_1+10,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_1+10,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  spep_1+12,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+12,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー　ゴゴゴ --
ctgogogo_2 = entryEffectLife( spep_1+24, 190006,74, 0x100, -1, 0, 50, 510);    -- ゴゴゴ・・・
setEffShake( spep_1+24, ctgogogo_2, 73, 10);
setEffMoveKey( spep_1+24,ctgogogo_2, 50, 510);
setEffScaleKey( spep_1+24, ctgogogo_2,-0.8,0.8);
setEffRotateKey( spep_1+24, ctgogogo_2, 0);
setEffAlphaKey( spep_1+24, ctgogogo_2, 0);
setEffAlphaKey( spep_1+25, ctgogogo_2, 255);   -- ここから表示
setEffAlphaKey( spep_1+26, ctgogogo_2, 255);
setEffMoveKey( spep_1+98,ctgogogo_2, 50, 510);
setEffScaleKey( spep_1+98, ctgogogo_2,-0.8,0.8);
setEffRotateKey( spep_1+98, ctgogogo_2, 0);
setEffAlphaKey( spep_1+98, ctgogogo_2, 255);

--SE--
playSe( spep_1 + 24, SE_04);

--------------------------------------
--カードカットイン(90F)
--------------------------------------
spep_2=spep_1+98;

--***フェードと背景***
entryFade(spep_2,0,2,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_2+86,2,6,3,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

speff2=entryEffect(spep_2,1507,0,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

--***集中線***
shuchusen_2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey( spep_2,  shuchusen_2,  0,  0);
setEffScaleKey( spep_2,  shuchusen_2,  1.0,  1.0);
setEffRotateKey( spep_2,  shuchusen_2,  0);
setEffAlphaKey( spep_2,  shuchusen_2,  255);
setEffMoveKey( spep_2 + 90,  shuchusen_2,  0,  0);
setEffScaleKey( spep_2 + 90,  shuchusen_2,  1.0,  1.0);
setEffRotateKey( spep_2 + 90,  shuchusen_2,  0);
setEffAlphaKey( spep_2 + 90,  shuchusen_2,  255);

--SE--
playSe(spep_2,SE_05);

------------------------------------------------------
-- 投げて敵に迫る
------------------------------------------------------
spep_3=spep_2+90;

--***フェードと背景***
entryFade(spep_3+58,8,3,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_3, 0, 10, 0, 0, 0, 0, 180);  -- 黒　背景
entryFadeBg(spep_3 + 5, 5, 58, 0, 0, 0, 0, 255);  -- 黒　背景

--***発射***
hassya03=entryEffect(spep_3,SP_03,0x100,-1,0,0,0);   -- 発射(68F)
setEffMoveKey( spep_3, hassya03,  0,  0);
setEffMoveKey( spep_3 + 68, hassya03,  0,  0);
setEffScaleKey( spep_3, hassya03,1.2,1.2);
setEffScaleKey( spep_3 + 68, hassya03,1.2,1.2);
setEffRotateKey( spep_3, hassya03,0);
setEffRotateKey( spep_3 + 68, hassya03,0);
setEffAlphaKey( spep_3, hassya03,255);
setEffAlphaKey( spep_3 + 68, hassya03,255);
setEffAlphaKey( spep_3 + 69, hassya03,0);
setEffAlphaKey( spep_3 + 70, hassya03,0);

--集中線--
shuchusen_3 = entryEffectLife( spep_3, 906, 8, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_3,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3,  shuchusen_3,  1.0,  1.0);
setEffRotateKey( spep_3,  shuchusen_3,  0);
setEffAlphaKey( spep_3,  shuchusen_3,  255);
setEffMoveKey( spep_3 + 8,  shuchusen_3,  0,  0);
setEffScaleKey( spep_3 + 8,  shuchusen_3,  1.0,  1.0);
setEffRotateKey( spep_3 + 8,  shuchusen_3,  0);
setEffAlphaKey( spep_3 + 8,  shuchusen_3,  255);

--流線
sen3 = entryEffectLife( spep_3 + 8, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線右向き
setEffMoveKey( spep_3 + 8,  sen3,  0,  0);
setEffRotateKey( spep_3 + 8, sen3, 180);
setEffScaleKey( spep_3 + 8, sen3, 1.0, 1.0);
setEffAlphaKey( spep_3 + 8,  sen3,  0);
setEffAlphaKey( spep_3 + 9,  sen3,  255);   -- ここから表示
setEffAlphaKey( spep_3 + 10,  sen3,  255);
setEffRotateKey( spep_3 + 30, sen3, 180);
setEffRotateKey( spep_3 + 31, sen3, 0);   -- ここから左向きに変更
setEffRotateKey( spep_3 + 32, sen3, 0);
setEffMoveKey( spep_3 + 68,  sen3,  0,  0);
setEffRotateKey( spep_3 + 68, sen3, 0);
setEffScaleKey( spep_3 + 68, sen3, 1.0, 1.0);
setEffAlphaKey( spep_3 + 68,  sen3,  255);


--SE
playSe( spep_3 + 9, 1008);
playSe( spep_3 + 30, 1008);

------------------------------------------------------
-- 飛んで返ってくる
------------------------------------------------------
spep_4=spep_3+68;

--***フェードと背景***
entryFade(spep_4+98,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_4, 0, 108, 0, 0, 0, 0, 200);  -- 黒　背景

--***ブーメラン***
boomerang04a=entryEffect(spep_4,SP_04,0x100,-1,0,0,0);   -- 飛んでく（前）(108F)
setEffMoveKey( spep_4,boomerang04a,  0,  0);
setEffMoveKey( spep_4 + 108,boomerang04a,  0,  0);
setEffScaleKey( spep_4,boomerang04a,1.0,1.0);
setEffScaleKey( spep_4 + 108,boomerang04a,1.0,1.0);
setEffRotateKey( spep_4,boomerang04a,0);
setEffRotateKey( spep_4 + 108,boomerang04a,0);
setEffAlphaKey( spep_4,boomerang04a,255);
setEffAlphaKey( spep_4 + 108,boomerang04a,255);
setEffAlphaKey( spep_4 + 109,boomerang04a,0);
setEffAlphaKey( spep_4 + 110,boomerang04a,0);

boomerang04b=entryEffect(spep_4,SP_05,0x80,-1,0,0,0);   -- 返ってくる（後）(108F)
setEffMoveKey( spep_4,boomerang04b,  0,  0);
setEffMoveKey( spep_4 + 108,boomerang04b,  0,  0);
setEffScaleKey(spep_4,boomerang04b,1.0,1.0);
setEffScaleKey(spep_4 + 108,boomerang04b,1.0,1.0);
setEffRotateKey(spep_4,boomerang04b,0);
setEffRotateKey(spep_4 + 108,boomerang04b,0);
setEffAlphaKey(spep_4,boomerang04b,255);
setEffAlphaKey(spep_4 + 108,boomerang04b,255);
setEffAlphaKey(spep_4 + 109,boomerang04b,0);
setEffAlphaKey(spep_4 + 110,boomerang04b,0);

--***敵の動き***
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 17, 1, 0 );
setDisp( spep_4 + 18, 1, 0 );
setDisp( spep_4 + 33, 1, 1 );
setDisp( spep_4 + 34, 1, 1 );
setDisp( spep_4 + 108, 1, 0 );
changeAnime( spep_4 + 0, 1, 101 );
changeAnime( spep_4 + 8, 1, 103 );
changeAnime( spep_4 + 33, 1, 103 );
changeAnime( spep_4 + 34, 1, 103 );
changeAnime( spep_4 + 41, 1, 101 );
changeAnime( spep_4 + 42, 1, 101 );
changeAnime( spep_4 + 67, 1, 103 );
changeAnime( spep_4 + 68, 1, 103 );

--敵の動き回避前 一度消える
setMoveKey( spep_4 + 0, 1, 150, 0 , 0 );
setMoveKey( spep_4 + 2, 1, 145.3, 0 , 0 );
setMoveKey( spep_4 + 4, 1, 140.7, 0 , 0 );
setMoveKey( spep_4 + 7, 1, 136, 0 , 0 );
setMoveKey( spep_4 + 8, 1, 98.4, -52.4 , 0 );
setMoveKey( spep_4 + 10, 1, 96.4, -52.4 , 0 );
setMoveKey( spep_4 + 12, 1, 94.4, -52.4 , 0 );
setMoveKey( spep_4 + 14, 1, 92.4, -52.4 , 0 );
setMoveKey( spep_4 + 16, 1, 90.4, -52.4 , 0 );
setMoveKey( spep_4 + 18, 1, 88.4, -52.4 , 0 );
setScaleKey( spep_4 + 0, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 2, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 4, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 7, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 8, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.5, 1.5 );
setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 18, 1, 0 );

--敵の動き回避後 34f後に再出現
setMoveKey( spep_4 + 34, 1, -13.7, -52.4 , 0 );
setMoveKey( spep_4 + 36, 1, -18.4, -52.4 , 0 );
setMoveKey( spep_4 + 38, 1, -23, -52.4 , 0 );
setMoveKey( spep_4 + 41, 1, -27.7, -52.4 , 0 );
setMoveKey( spep_4 + 42, 1, -29.9, 0 , 0 );
setMoveKey( spep_4 + 44, 1, -7.2, -2.4 , 0 );
setMoveKey( spep_4 + 46, 1, 15.6, -4.8 , 0 );
setMoveKey( spep_4 + 48, 1, 38.4, -7.2 , 0 );
setMoveKey( spep_4 + 50, 1, 61.2, -9.6 , 0 );
setMoveKey( spep_4 + 52, 1, 84, -12 , 0 );
setMoveKey( spep_4 + 54, 1, 85.8, -12.2 , 0 );
setMoveKey( spep_4 + 56, 1, 87.6, -12.4 , 0 );
setMoveKey( spep_4 + 58, 1, 89.4, -12.6 , 0 );
setMoveKey( spep_4 + 60, 1, 91.2, -12.8 , 0 );
setMoveKey( spep_4 + 62, 1, 93, -13 , 0 );
setMoveKey( spep_4 + 64, 1, 94.8, -13.2 , 0 );
setMoveKey( spep_4 + 66, 1, 96.6, -13.4 , 0 );
setMoveKey( spep_4 + 68, 1, 98.4, -13.6 , 0 );
setMoveKey( spep_4 + 70, 1, 100.2, -13.8 , 0 );
setMoveKey( spep_4 + 73, 1, 102, -14 , 0 );
setMoveKey( spep_4 + 74, 1, 84.3, -66.4 , 0 );
setMoveKey( spep_4 + 76, 1, 61.6, -76.4 , 0 );
setMoveKey( spep_4 + 78, 1, 38.9, -86.4 , 0 );
setMoveKey( spep_4 + 80, 1, 16.2, -96.4 , 0 );
setMoveKey( spep_4 + 82, 1, -6.4, -106.4 , 0 );
setMoveKey( spep_4 + 84, 1, -29.1, -116.4 , 0 );
setMoveKey( spep_4 + 86, 1, -51.8, -126.4 , 0 );
setScaleKey( spep_4 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_4 + 36, 1, 1.72, 1.72 );
setScaleKey( spep_4 + 38, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 41, 1, 1.75, 1.75 );
setScaleKey( spep_4 + 42, 1, 1.7, 1.7 );
setScaleKey( spep_4 + 44, 1, 1.64, 1.64 );
setScaleKey( spep_4 + 46, 1, 1.58, 1.58 );
setScaleKey( spep_4 + 48, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 50, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 52, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 54, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 56, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 58, 1, 1.39, 1.39 );
setScaleKey( spep_4 + 60, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 62, 1, 1.38, 1.38 );
setScaleKey( spep_4 + 64, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 66, 1, 1.37, 1.37 );
setScaleKey( spep_4 + 68, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 70, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 72, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 74, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 76, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 78, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 80, 1, 1.58, 1.58 );
setScaleKey( spep_4 + 82, 1, 1.62, 1.62 );
setScaleKey( spep_4 + 84, 1, 1.66, 1.66 );
setScaleKey( spep_4 + 86, 1, 1.7, 1.7 );
setRotateKey( spep_4 + 34, 1, 0 );
setRotateKey( spep_4 + 86, 1, 0 );


--流線
sen4a = entryEffectLife( spep_4, 921, 32, 0x80,  -1,  0,  0,  0); -- 流線右向き
setEffMoveKey( spep_4,  sen4a,  0,  0);
setEffScaleKey( spep_4, sen4a, 1.4, 1.1 );
setEffRotateKey( spep_4, sen4a, -22);
setEffAlphaKey( spep_4,  sen4a,  255);
setEffMoveKey( spep_4 + 32,  sen4a,  0,  0);
setEffScaleKey( spep_4 + 32, sen4a, 1.4, 1.1 );
setEffRotateKey( spep_4 + 32, sen4a, -22);
setEffAlphaKey( spep_4 + 32,  sen4a,  255);
--setEffScaleKey( spep_4 + 32, sen4a, 1.613, 1.323 );


--ふっ飛ばし流線
sen4b = entryEffectLife( spep_4 + 60, 924, 48, 0x80,  -1,  0,  -250,  0); -- ふっ飛ばし流線
setEffMoveKey( spep_4 + 60,  sen4b,  -250,  0);
setEffScaleKey( spep_4 + 60, sen4b, 1.17, 1.39 );
setEffRotateKey( spep_4 + 60, sen4b, -45.2);
setEffAlphaKey( spep_4 + 60,  sen4b,  0);
setEffAlphaKey( spep_4 + 61,  sen4b,  255);--ここから表示
setEffAlphaKey( spep_4 + 62,  sen4b,  255);
setEffMoveKey( spep_4 + 108,  sen4b,  -250,  0);
setEffScaleKey( spep_4 + 108, sen4b, 1.17, 1.39 );
setEffRotateKey( spep_4 + 108, sen4b, -45.2);
setEffAlphaKey( spep_4 + 108,  sen4b,  255);

--SE
playSe( spep_4 + 16, 43);
playSe( spep_4 + 32, 43);

--黒背景

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_4+76 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置
setMoveKey(SP_dodge, 1, 61.6, -76.4 , 0 );
setMoveKey( SP_dodge+2, 1, 61.6, -76.4 , 0 );
setMoveKey( SP_dodge+4, 1, 61.6, -76.4 , 0 );
setMoveKey( SP_dodge+6, 1,  61.6, -76.4 , 0 );
setMoveKey( SP_dodge+8, 1,  61.6, -76.4 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( SP_dodge, 1, 1.45, 1.45 );
setScaleKey( SP_dodge+2, 1,  1.49, 1.49 );
setScaleKey( SP_dodge+4, 1, 1.53, 1.53 );
setScaleKey( SP_dodge+6, 1, 1.58, 1.58 );
setScaleKey( SP_dodge+8, 1, 1.62, 1.62 );

changeAnime(SP_dodge+9,    1,  101);
setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setMoveKey(  SP_dodge+10,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.3, 1.3);
setScaleKey( SP_dodge+10,    1,  1.3, 1.3);
setRotateKey(   SP_dodge+9,   1, 0);
setRotateKey(   SP_dodge+10,   1, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
--entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

--------------------------------------
--回避しなかった場合
--------------------------------------

changeAnime( spep_4 + 87, 1, 106 );
changeAnime( spep_4 + 88, 1, 106 );
setMoveKey( spep_4 + 87, 1, -137.7, -198.4 , 0 );
setMoveKey( spep_4 + 88, 1, -137.7, -198.4 , 0 );
setMoveKey( spep_4 + 90, 1, -139.7, -200.4 , 0 );
setMoveKey( spep_4 + 92, 1, -141.7, -202.4 , 0 );
setMoveKey( spep_4 + 94, 1, -143.7, -204.3 , 0 );
setMoveKey( spep_4 + 96, 1, -145.7, -206.4 , 0 );
setMoveKey( spep_4 + 98, 1, -147.7, -208.4 , 0 );
setMoveKey( spep_4 + 100, 1, -149.7, -210.3 , 0 );
setMoveKey( spep_4 + 102, 1, -151.7, -212.4 , 0 );
setMoveKey( spep_4 + 104, 1, -153.7, -214.4 , 0 );
setMoveKey( spep_4 + 106, 1, -155.7, -216.4 , 0 );
setMoveKey( spep_4 + 108, 1, -155.7, -216.4 , 0 );
setScaleKey( spep_4 + 87, 1, 2, 2 );
setScaleKey( spep_4 + 88, 1, 2, 2 );
setScaleKey( spep_4 + 90, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 92, 1, 2.11, 2.11 );
setScaleKey( spep_4 + 94, 1, 2.17, 2.17 );
setScaleKey( spep_4 + 96, 1, 2.22, 2.22 );
setScaleKey( spep_4 + 98, 1, 2.28, 2.28 );
setScaleKey( spep_4 + 100, 1, 2.33, 2.33 );
setScaleKey( spep_4 + 102, 1, 2.39, 2.39 );
setScaleKey( spep_4 + 104, 1, 2.44, 2.44 );
setScaleKey( spep_4 + 106, 1, 2.5, 2.5 );
setScaleKey( spep_4 + 108, 1, 2.5, 2.5 );
setRotateKey( spep_4 + 87, 1, -95 );
setRotateKey( spep_4 + 88, 1, -95 );
setRotateKey( spep_4 + 90, 1, -95.2 );
setRotateKey( spep_4 + 108, 1, -95.2 );

--SE
playSe( spep_4 + 86, 1032);

------------------------------------------------------
-- 戻ってくる～ビーム
------------------------------------------------------
spep_5=spep_4+108;

--***フェードと背景***
entryFade(spep_5,0,0,6,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_5+70,6,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_5, 0, 78, 0, 0, 0, 0, 200);  -- 黒　背景

--***戻ってくる～ビーム***
hassya05=entryEffect(spep_5,SP_06,0x100,-1,0,0,0);   -- 戻ってくる～ビーム(78F)
setEffMoveKey( spep_5,hassya05,  0,  0);
setEffMoveKey( spep_5 + 78,hassya05,  0,  0);
setEffScaleKey( spep_5,hassya05,1.0,1.0);
setEffScaleKey( spep_5 + 78,hassya05,1.0,1.0);
setEffRotateKey( spep_5,hassya05,0);
setEffRotateKey( spep_5 + 78,hassya05,0);
setEffAlphaKey( spep_5,hassya05,255);
setEffAlphaKey( spep_5 + 78,hassya05,255);
setEffAlphaKey( spep_5 + 79,hassya05,0);
setEffAlphaKey( spep_5 + 80,hassya05,0);

--流線
sen5 = entryEffectLife( spep_5, 921, 78, 0x80,  -1,  0,  0,  0); -- 流線右向き
setEffMoveKey( spep_5, sen5,  0,  0);
setEffRotateKey( spep_5, sen5, 180);
setEffScaleKey( spep_5, sen5, 1.0, 1.0);
setEffAlphaKey( spep_5,  sen5,  255);
setEffMoveKey( spep_5 + 78, sen5,  0,  0);
setEffRotateKey( spep_5 + 78, sen5, 180);
setEffScaleKey( spep_5 + 78, sen5, 1.0, 1.0);
setEffAlphaKey( spep_5 + 78,  sen5,  255);

--SE
playSe( spep_5 + 16, 1061);
playSe( spep_5 + 56, SE_07);


------------------------------------------------------
-- ビーム伸びる
------------------------------------------------------
spep_6=spep_5+78;

--***フェードと背景***
entryFade(spep_6,0,0,10,fcolor_r,fcolor_g,fcolor_b,200);     -- white fade
entryFade(spep_6+58,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_6, 0, 68, 0, 0, 0, 0, 255);  -- 黒　背景

--***ビーム伸びる***
beam06=entryEffect(spep_6,SP_07,0x100,-1,0,0,0);   -- ビーム伸びる(68F)
setEffMoveKey( spep_6,beam06,  0,  0);
setEffMoveKey( spep_6 + 68,beam06,  0,  0);
setEffScaleKey( spep_6,beam06,1.0,1.0);
setEffScaleKey( spep_6 + 68,beam06,1.0,1.0);
setEffRotateKey( spep_6,beam06,0);
setEffRotateKey( spep_6 + 68,beam06,0);
setEffAlphaKey( spep_6,beam06,255);
setEffAlphaKey( spep_6 + 68,beam06,255);
setEffAlphaKey( spep_6 + 69,beam06,0);
setEffAlphaKey( spep_6 + 70,beam06,0);

--流線
sen6 = entryEffectLife( spep_6, 921, 68, 0x80,  -1,  0,  0,  0); -- 流線右向き
setEffMoveKey( spep_6, sen6,  0,  0);
setEffRotateKey( spep_6, sen6, 180);
setEffScaleKey( spep_6, sen6, 1.0, 1.0);
setEffAlphaKey( spep_6,  sen6,  255);
setEffMoveKey( spep_6 + 68, sen6,  0,  0);
setEffRotateKey( spep_6 + 68, sen6, 180);
setEffScaleKey( spep_6 + 68, sen6, 1.0, 1.0);
setEffAlphaKey( spep_6 + 68,  sen6,  255);

--集中線--
shuchusen_6 = entryEffectLife( spep_6, 906, 68, 0x80,  -1, 0,  0,  0);
setEffMoveKey( spep_6, shuchusen_6,  0,  0);
setEffScaleKey( spep_6,  shuchusen_6,  1.0,  1.0);
setEffRotateKey( spep_6,  shuchusen_6,  0);
setEffAlphaKey( spep_6,  shuchusen_6,  255);
setEffMoveKey( spep_6 + 68, shuchusen_6,  0,  0);
setEffScaleKey( spep_6 + 68,  shuchusen_6,  1.0,  1.0);
setEffRotateKey( spep_6 + 68,  shuchusen_6,  0);
setEffAlphaKey( spep_6 + 68,  shuchusen_6,  255);

-- 書き文字エントリー
ct_06 = entryEffectLife( spep_6 + 4, 10012, 40, 0x100, -1, 0, -184, 259.9); -- ズオッ
setEffMoveKey( spep_6 + 4, ct_06, -184, 259.9 , 0 );
setEffMoveKey( spep_6 + 6, ct_06, -155, 300.9 , 0 );
setEffMoveKey( spep_6 + 8, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 10, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 12, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 14, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 16, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 18, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 20, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 22, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 24, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 26, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 28, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 30, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 32, ct_06, -144, 359.9 , 0 );
setEffMoveKey( spep_6 + 34, ct_06, -128, 343.9 , 0 );
setEffMoveKey( spep_6 + 36, ct_06, -136, 359.9 , 0 );
setEffMoveKey( spep_6 + 38, ct_06, -102.4, 334.3 , 0 );
setEffMoveKey( spep_6 + 40, ct_06, -120, 359.9 , 0 );
setEffMoveKey( spep_6 + 42, ct_06, -76.8, 324.7 , 0 );
setEffMoveKey( spep_6 + 44, ct_06, -64, 319.9 , 0 );
setEffScaleKey( spep_6 + 4, ct_06, 0.3, 0.3 );
setEffScaleKey( spep_6 + 6, ct_06, 1.35, 1.35 );
setEffScaleKey( spep_6 + 8, ct_06, 2.4, 2.4 );
setEffScaleKey( spep_6 + 34, ct_06, 2.4, 2.4 );
setEffScaleKey( spep_6 + 36, ct_06, 3.12, 3.12 );
setEffScaleKey( spep_6 + 38, ct_06, 3.84, 3.84 );
setEffScaleKey( spep_6 + 40, ct_06, 4.56, 4.56 );
setEffScaleKey( spep_6 + 42, ct_06, 5.28, 5.28 );
setEffScaleKey( spep_6 + 44, ct_06, 6.5, 6.5 );
setEffRotateKey( spep_6 + 4, ct_06, 30 );
setEffRotateKey( spep_6 + 44, ct_06, 30 );
setEffAlphaKey( spep_6 + 4, ct_06, 255 );
setEffAlphaKey( spep_6 + 34, ct_06, 255 );
setEffAlphaKey( spep_6 + 36, ct_06, 204 );
setEffAlphaKey( spep_6 + 38, ct_06, 153 );
setEffAlphaKey( spep_6 + 40, ct_06, 102 );
setEffAlphaKey( spep_6 + 42, ct_06, 51 );
setEffAlphaKey( spep_6 + 44, ct_06, 0 );

--SE
playSe( spep_6 + 0, SE_07);

------------------------------------------------------
-- ビーム当たる
------------------------------------------------------
spep_7=spep_6+68;

--***フェードと背景***
entryFade(spep_7,0,0,8,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFade(spep_7+22,8,2,0,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg(spep_7, 0, 30, 0, 0, 0, 0, 180);  -- 黒　背景

--***ビーム当たる***
hit07=entryEffectLife(spep_7,SP_08,30,0x100,-1,0,0,0);   -- ビーム当たる(30F)
setEffMoveKey( spep_7,hit07,  0,  0);
setEffScaleKey( spep_7,hit07,1.0,1.0);
setEffAlphaKey( spep_7,hit07,255);
setEffRotateKey( spep_7,hit07,0);
setEffMoveKey( spep_7 + 30,hit07,  0,  0);
setEffScaleKey( spep_7 + 30,hit07,1.0,1.0);
setEffAlphaKey( spep_7 + 30,hit07,255);
setEffRotateKey( spep_7 + 30,hit07,0);

--***敵の動き***
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 23, 1, 0 );
setDisp( spep_7 + 24, 1, 0 );
changeAnime( spep_7 + 0, 1, 104 );
changeAnime( spep_7 + 6, 1, 108 );
setMoveKey( spep_7 + 0, 1, 221.1, -49.8 , 0 );
setMoveKey( spep_7 + 2, 1, 214.1, -51.7 , 0 );
setMoveKey( spep_7 + 5, 1, 189.1, -69.6 , 0 );
setMoveKey( spep_7 + 6, 1, 187.7, -14.3 , 0 );
setMoveKey( spep_7 + 8, 1, 193.9, -60.2 , 0 );
setMoveKey( spep_7 + 10, 1, 207.9, -45.8 , 0 );
setMoveKey( spep_7 + 12, 1, 225.8, -43.3 , 0 );
setMoveKey( spep_7 + 14, 1, 269.7, -28.9 , 0 );
setMoveKey( spep_7 + 16, 1, 297.6, -26.5 , 0 );
setMoveKey( spep_7 + 18, 1, 301.5, -12.1 , 0 );
setMoveKey( spep_7 + 20, 1, 319.4, -9.6 , 0 );
setMoveKey( spep_7 + 22, 1, 343.4, 4.8 , 0 );
setScaleKey( spep_7 + 0, 1, 1.44, 1.44 );
setScaleKey( spep_7 + 2, 1, 1.68, 1.68 );
setScaleKey( spep_7 + 5, 1, 1.92, 1.92 );
setScaleKey( spep_7 + 6, 1, 1.95, 1.95 );
setScaleKey( spep_7 + 8, 1, 1.92, 1.92 );
setScaleKey( spep_7 + 10, 1, 1.68, 1.68 );
setScaleKey( spep_7 + 12, 1, 1.41, 1.41 );
setScaleKey( spep_7 + 14, 1, 1.17, 1.17 );
setScaleKey( spep_7 + 16, 1, 0.9, 0.9 );
setScaleKey( spep_7 + 18, 1, 0.66, 0.66 );
setScaleKey( spep_7 + 20, 1, 0.39, 0.39 );
setScaleKey( spep_7 + 22, 1, 0.15, 0.15 );
setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 5, 1, 0 );
setRotateKey( spep_7 + 6, 1, 23.7 );
setRotateKey( spep_7 + 8, 1, 0 );
setRotateKey( spep_7 + 23, 1, 0 );

--流線
sen7 = entryEffectLife( spep_7, 921, 30, 0x80,  -1,  0,  0,  0); -- 流線左向き
setEffMoveKey( spep_7, sen7,  0,  0);
setEffRotateKey( spep_7, sen7, 0);
setEffScaleKey( spep_7, sen7, 1.0, 1.0);
setEffAlphaKey( spep_7,  sen7,  255);
setEffMoveKey( spep_7 + 30, sen7,  0,  0);
setEffRotateKey( spep_7 + 30, sen7, 0);
setEffScaleKey( spep_7 + 30, sen7, 1.0, 1.0);
setEffAlphaKey( spep_7 + 30,  sen7,  255);

-- 書き文字エントリー
ct_07 = entryEffectLife( spep_7, 10014, 30, 0x100, -1, 0, 0, 280); -- ズドドッ
setEffShake( spep_7, ct_07, 30, 20);
setEffMoveKey( spep_7, ct_07,  0,  280);
setEffScaleKey( spep_7, ct_07, 2.5, 2.5);
setEffRotateKey( spep_7, ct_07, -10);
setEffAlphaKey( spep_7, ct_07, 255);
setEffMoveKey( spep_7 + 30, ct_07,  0,  280);
setEffScaleKey( spep_7 + 30, ct_07, 2.5, 2.5);
setEffRotateKey( spep_7 + 30, ct_07, -10);
setEffAlphaKey( spep_7 + 30, ct_07, 255);

--SE
playSe( spep_7 + 6, SE_09);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_8=spep_7+30;

setDisp( spep_8-1, 0, 0);
setMoveKey( spep_8-1,    1,  100,  0,   0);
setScaleKey( spep_8-1,    1,  1, 1);
setMoveKey( spep_8,    1,    0,   0,   128);
setScaleKey( spep_8,    1,  0.1, 0.1);

changeAnime( spep_8, 1, 107);                         -- 手前ダメージ
setDisp( spep_8, 1, 1);

entryEffect( spep_8+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_8+8, SE_10);

setMoveKey( spep_8+8,   1,    0,   0,   128);
setMoveKey( spep_8+15,   1,  -60,  -200,  -100);
setMoveKey( spep_8+16,   1,  -60,  -200,  -100);
setDamage( spep_8+16, 1, 0);  -- ダメージ振動等
setShake( spep_8+6,6,15);
setShake( spep_8+12,15,10);

setRotateKey( spep_8,  1,  30 );
setRotateKey( spep_8+2,  1,  80 );
setRotateKey( spep_8+4,  1, 120 );
setRotateKey( spep_8+6,  1, 160 );
setRotateKey( spep_8+8,  1, 200 );
setRotateKey( spep_8+10,  1, 260 );
setRotateKey( spep_8+12,  1, 320 );
setRotateKey( spep_8+14,  1,   0 );

setShakeChara( spep_8+14, 1, 6,  10);
setShakeChara( spep_8+20, 1, 10, 20);

-- 書き文字エントリー
ct_08 = entryEffectLife( spep_8+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_8+15, ct_08, 30, 10);
setEffRotateKey( spep_8+15, ct_08, -40);
setEffScaleKey( spep_8+15, ct_08, 4.0, 4.0);
setEffScaleKey( spep_8+16, ct_08, 2.0, 2.0);
setEffScaleKey( spep_8+17, ct_08, 2.6, 2.6);
setEffScaleKey( spep_8+18, ct_08, 4.0, 4.0);
setEffScaleKey( spep_8+19, ct_08, 2.6, 2.6);
setEffScaleKey( spep_8+20, ct_08, 3.8, 3.8);
setEffScaleKey( spep_8+110, ct_08, 3.8, 3.8);
setEffAlphaKey( spep_8+15, ct_08, 255);
setEffAlphaKey( spep_8+105, ct_08, 255);
setEffAlphaKey( spep_8+115, ct_08, 0);

playSe( spep_8+2, SE_11);
shuchusen = entryEffectLife( spep_8+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
hibi = entryEffect( spep_8+2, 1600,  0x100,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_8+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_8+16);


entryFade( spep_8+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_8+110);

end

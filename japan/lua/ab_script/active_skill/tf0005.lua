--超ベジータ/超トランクス_交代アクティブスキル


fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--***SE***
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

--***エフェクト***
SP_01 = 153874; --ベジータ飛行
SP_02 = 153875; --トランクス登場
SP_03 = 153876; --トランクス追い越し
SP_04 = 153877; --トランクス変身前
SP_05 = 153878; --トランクス変身後
SP_06 = 153879; --目線カットイン

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--ベジータ飛行(88F)
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** -- 
fly = entryEffectLife( spep_0 + 0, SP_01, 88, 0x80, -1, 2, 4, 0 ); --ベジータ飛行(ef_001)

setEffMoveKey( spep_0 + 0, fly, 0, 0, 0 );
setEffMoveKey( spep_0 + 88, fly, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, fly, 1.0, 1.0 );
setEffScaleKey( spep_0 + 88, fly, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, fly, 0 );
setEffRotateKey( spep_0 + 88, fly, 0 );

setEffAlphaKey( spep_0 + 0, fly, 255 );
setEffAlphaKey( spep_0 + 88, fly, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 88, 0x100, -1, 0, 0, 0 ); --白い集中線
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 + 88, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.09, 1.18 );
setEffScaleKey( spep_0 + 88, shuchusen1, 1.09, 1.18 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 2, shuchusen1, 0 );
setEffRotateKey( spep_0 + 4, shuchusen1, 180 );
setEffRotateKey( spep_0 + 6, shuchusen1, 0 );
setEffRotateKey( spep_0 + 8, shuchusen1, 180 );
setEffRotateKey( spep_0 + 10, shuchusen1, 0 );
setEffRotateKey( spep_0 + 12, shuchusen1, 180 );
setEffRotateKey( spep_0 + 14, shuchusen1, 0 );
setEffRotateKey( spep_0 + 16, shuchusen1, 180 );
setEffRotateKey( spep_0 + 18, shuchusen1, 0 );
setEffRotateKey( spep_0 + 20, shuchusen1, 180 );
setEffRotateKey( spep_0 + 22, shuchusen1, 0 );
setEffRotateKey( spep_0 + 24, shuchusen1, 180 );
setEffRotateKey( spep_0 + 26, shuchusen1, 0 );
setEffRotateKey( spep_0 + 28, shuchusen1, 180 );
setEffRotateKey( spep_0 + 30, shuchusen1, 0 );
setEffRotateKey( spep_0 + 32, shuchusen1, 180 );
setEffRotateKey( spep_0 + 34, shuchusen1, 0 );
setEffRotateKey( spep_0 + 36, shuchusen1, 180 );
setEffRotateKey( spep_0 + 38, shuchusen1, 0 );
setEffRotateKey( spep_0 + 40, shuchusen1, 180 );
setEffRotateKey( spep_0 + 42, shuchusen1, 0 );
setEffRotateKey( spep_0 + 44, shuchusen1, 180 );
setEffRotateKey( spep_0 + 46, shuchusen1, 0 );
setEffRotateKey( spep_0 + 48, shuchusen1, 180 );
setEffRotateKey( spep_0 + 50, shuchusen1, 0 );
setEffRotateKey( spep_0 + 52, shuchusen1, 180 );
setEffRotateKey( spep_0 + 54, shuchusen1, 0 );
setEffRotateKey( spep_0 + 56, shuchusen1, 180 );
setEffRotateKey( spep_0 + 58, shuchusen1, 0 );
setEffRotateKey( spep_0 + 60, shuchusen1, 180 );
setEffRotateKey( spep_0 + 62, shuchusen1, 0 );
setEffRotateKey( spep_0 + 64, shuchusen1, 180 );
setEffRotateKey( spep_0 + 66, shuchusen1, 0 );
setEffRotateKey( spep_0 + 68, shuchusen1, 180 );
setEffRotateKey( spep_0 + 70, shuchusen1, 0 );
setEffRotateKey( spep_0 + 72, shuchusen1, 180 );
setEffRotateKey( spep_0 + 74, shuchusen1, 0 );
setEffRotateKey( spep_0 + 76, shuchusen1, 180 );
setEffRotateKey( spep_0 + 78, shuchusen1, 0 );
setEffRotateKey( spep_0 + 80, shuchusen1, 180 );
setEffRotateKey( spep_0 + 82, shuchusen1, 0 );
setEffRotateKey( spep_0 + 84, shuchusen1, 180 );
setEffRotateKey( spep_0 + 86, shuchusen1, 0 );
setEffRotateKey( spep_0 + 88, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 88, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_0 + 5, 1018 );

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0 + 80, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 88;

------------------------------------------------------
--トランクス登場(88F)
------------------------------------------------------
-- ** エフェクト等 ** -- 
tojo = entryEffectLife( spep_1 + 0, SP_02, 88, 0x80, -1, 2, 4, 0 ); --トランクス登場(ef_002)

setEffMoveKey( spep_1 + 0, tojo, 0, 0, 0 );
setEffMoveKey( spep_1 + 88, tojo, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, tojo, 1.0, 1.0 );
setEffScaleKey( spep_1 + 88, tojo, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, tojo, 0 );
setEffRotateKey( spep_1 + 88, tojo, 0 );

setEffAlphaKey( spep_1 + 0, tojo, 255 );
setEffAlphaKey( spep_1 + 88, tojo, 255 );

-- ** 書き文字エントリー ** --
ctexcla = entryEffectLife( spep_1 + 24, 10000, 38, 0x100, -1, 0, -94.6, 84.6 ); --!!

setEffMoveKey( spep_1 + 24, ctexcla, -94.6, 84.6 , 0 );
setEffMoveKey( spep_1 + 26, ctexcla, -104.2, 93.7 , 0 );
setEffMoveKey( spep_1 + 28, ctexcla, -114.4, 99.8 , 0 );
setEffMoveKey( spep_1 + 30, ctexcla, -116.4, 102 , 0 );
setEffMoveKey( spep_1 + 32, ctexcla, -117.6, 101 , 0 );
setEffMoveKey( spep_1 + 34, ctexcla, -119.5, 102.4 , 0 );
setEffMoveKey( spep_1 + 36, ctexcla, -122, 99.8 , 0 );
setEffMoveKey( spep_1 + 38, ctexcla, -124.2, 102.2 , 0 );
setEffMoveKey( spep_1 + 40, ctexcla, -125.2, 101 , 0 );
setEffMoveKey( spep_1 + 42, ctexcla, -127.1, 102.6 , 0 );
setEffMoveKey( spep_1 + 44, ctexcla, -129.6, 99.8 , 0 );
setEffMoveKey( spep_1 + 46, ctexcla, -131.8, 102.2 , 0 );
setEffMoveKey( spep_1 + 48, ctexcla, -132.7, 101 , 0 );
setEffMoveKey( spep_1 + 50, ctexcla, -134.7, 102.2 , 0 );
setEffMoveKey( spep_1 + 52, ctexcla, -136.9, 100.3 , 0 );
setEffMoveKey( spep_1 + 54, ctexcla, -138.9, 101.6 , 0 );
setEffMoveKey( spep_1 + 56, ctexcla, -140.3, 101 , 0 );
setEffMoveKey( spep_1 + 58, ctexcla, -142.2, 101.3 , 0 );
setEffMoveKey( spep_1 + 60, ctexcla, -144.2, 100.9 , 0 );
setEffMoveKey( spep_1 + 62, ctexcla, -130.6, 84.6 , 0 );

setEffScaleKey( spep_1 + 24, ctexcla, 0.1, 0.1 );
setEffScaleKey( spep_1 + 26, ctexcla, 0.9, 0.9 );
setEffScaleKey( spep_1 + 28, ctexcla, 1.71, 1.71 );
setEffScaleKey( spep_1 + 30, ctexcla, 1.43, 1.43 );
setEffScaleKey( spep_1 + 32, ctexcla, 1.14, 1.14 );
setEffScaleKey( spep_1 + 34, ctexcla, 1.44, 1.44 );
setEffScaleKey( spep_1 + 36, ctexcla, 1.74, 1.74 );
setEffScaleKey( spep_1 + 42, ctexcla, 1.74, 1.74 );
setEffScaleKey( spep_1 + 44, ctexcla, 1.73, 1.73 );
setEffScaleKey( spep_1 + 46, ctexcla, 1.73, 1.73 );
setEffScaleKey( spep_1 + 48, ctexcla, 1.51, 1.51 );
setEffScaleKey( spep_1 + 50, ctexcla, 1.28, 1.28 );
setEffScaleKey( spep_1 + 52, ctexcla, 1.05, 1.05 );
setEffScaleKey( spep_1 + 54, ctexcla, 0.82, 0.82 );
setEffScaleKey( spep_1 + 56, ctexcla, 0.6, 0.6 );
setEffScaleKey( spep_1 + 58, ctexcla, 0.37, 0.37 );
setEffScaleKey( spep_1 + 60, ctexcla, 0.14, 0.14 );
setEffScaleKey( spep_1 + 62, ctexcla, 0.1, 0.1 );

setEffRotateKey( spep_1 + 24, ctexcla, -21.3 );
setEffRotateKey( spep_1 + 26, ctexcla, -21.5 );
setEffRotateKey( spep_1 + 60, ctexcla, -21.5 );
setEffRotateKey( spep_1 + 62, ctexcla, -21.3 );

setEffAlphaKey( spep_1 + 24, ctexcla, 255 );
setEffAlphaKey( spep_1 + 62, ctexcla, 255 );

-- ** 音 ** --
playSe( spep_1 +10 , 44 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1 + 80, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 88;

------------------------------------------------------
--トランクス追い越し(58F)
------------------------------------------------------
-- ** エフェクト等 ** -- 
oikoshi = entryEffectLife( spep_2 + 0, SP_03, 58, 0x80, -1, 2, 4, 0 ); --トランクス追い越し(ef_003)

setEffMoveKey( spep_2 + 0, oikoshi, 0, 0, 0 );
setEffMoveKey( spep_2 + 58, oikoshi, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, oikoshi, 1.0, 1.0 );
setEffScaleKey( spep_2 + 58, oikoshi, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, oikoshi, 0 );
setEffRotateKey( spep_2 + 58, oikoshi, 0 );

setEffAlphaKey( spep_2 + 0, oikoshi, 255 );
setEffAlphaKey( spep_2 + 58, oikoshi, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 58, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.09, 1.18 );
setEffScaleKey( spep_2 + 58, shuchusen2, 1.09, 1.18 );

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 2, shuchusen2, 0 );
setEffRotateKey( spep_2 + 4, shuchusen2, 180 );
setEffRotateKey( spep_2 + 6, shuchusen2, 0 );
setEffRotateKey( spep_2 + 8, shuchusen2, 180 );
setEffRotateKey( spep_2 + 10, shuchusen2, 0 );
setEffRotateKey( spep_2 + 12, shuchusen2, 180 );
setEffRotateKey( spep_2 + 14, shuchusen2, 0 );
setEffRotateKey( spep_2 + 16, shuchusen2, 180 );
setEffRotateKey( spep_2 + 18, shuchusen2, 0 );
setEffRotateKey( spep_2 + 20, shuchusen2, 180 );
setEffRotateKey( spep_2 + 22, shuchusen2, 0 );
setEffRotateKey( spep_2 + 24, shuchusen2, 180 );
setEffRotateKey( spep_2 + 26, shuchusen2, 0 );
setEffRotateKey( spep_2 + 28, shuchusen2, 180 );
setEffRotateKey( spep_2 + 30, shuchusen2, 0 );
setEffRotateKey( spep_2 + 32, shuchusen2, 180 );
setEffRotateKey( spep_2 + 34, shuchusen2, 0 );
setEffRotateKey( spep_2 + 36, shuchusen2, 180 );
setEffRotateKey( spep_2 + 38, shuchusen2, 0 );
setEffRotateKey( spep_2 + 40, shuchusen2, 180 );
setEffRotateKey( spep_2 + 42, shuchusen2, 0 );
setEffRotateKey( spep_2 + 44, shuchusen2, 180 );
setEffRotateKey( spep_2 + 46, shuchusen2, 0 );
setEffRotateKey( spep_2 + 48, shuchusen2, 180 );
setEffRotateKey( spep_2 + 50, shuchusen2, 0 );
setEffRotateKey( spep_2 + 52, shuchusen2, 180 );
setEffRotateKey( spep_2 + 54, shuchusen2, 0 );
setEffRotateKey( spep_2 + 56, shuchusen2, 180 );
setEffRotateKey( spep_2 + 58, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen2, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2 + 48, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 0,9 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 58;

------------------------------------------------------
--トランクス変身前(88F)
------------------------------------------------------
-- ** エフェクト等 ** -- 
henshinb = entryEffectLife( spep_3 + 0, SP_04, 88, 0x80, -1, 2, 4, 0 ); --トランクス変身前(ef_004)

setEffMoveKey( spep_3 + 0, henshinb, 0, 0, 0 );
setEffMoveKey( spep_3 + 88, henshinb, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, henshinb, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, henshinb, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, henshinb, 0 );
setEffRotateKey( spep_3 + 88, henshinb, 0 );

setEffAlphaKey( spep_3 + 0, henshinb, 255 );
setEffAlphaKey( spep_3 + 88, henshinb, 255 );

cutin = entryEffectLife( spep_3 + 0, SP_06, 88, 0x100, -1, 2, 4, 0 ); --目線カットイン(ef_006)

setEffMoveKey( spep_3 + 0, cutin, 0, 0, 0 );
setEffMoveKey( spep_3 +88, cutin, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, cutin, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, cutin, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, cutin, 0 );
setEffRotateKey( spep_3 + 88, cutin, 0 );

setEffAlphaKey( spep_3 + 0, cutin, 255 );
setEffAlphaKey( spep_3 + 88, cutin, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_3 + 78, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 28, SE_04 );  --カットイン

-- ** 次の準備 ** --
spep_4 = spep_3 + 88;

------------------------------------------------------
--トランクス変身後(98F)
------------------------------------------------------
-- ** エフェクト等 ** -- 
henshina = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 2, 4, 0 ); --トランクス変身後(ef_005)

setEffMoveKey( spep_4 + 0, henshina, 0, 0, 0 );
setEffMoveKey( spep_4 + 98, henshina, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, henshina, 1.0, 1.0 );
setEffScaleKey( spep_4 + 98, henshina, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, henshina, 0 );
setEffRotateKey( spep_4 + 98, henshina, 0 );

setEffAlphaKey( spep_4 + 0, henshina, 255 );
setEffAlphaKey( spep_4 + 98, henshina, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 0, 906, 98, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen3, 1.09, 1.18 );
setEffScaleKey( spep_4 + 98, shuchusen3, 1.09, 1.18 );

setEffRotateKey( spep_4 + 0, shuchusen3, 180 );
setEffRotateKey( spep_4 + 2, shuchusen3, 0 );
setEffRotateKey( spep_4 + 4, shuchusen3, 180 );
setEffRotateKey( spep_4 + 6, shuchusen3, 0 );
setEffRotateKey( spep_4 + 8, shuchusen3, 180 );
setEffRotateKey( spep_4 + 10, shuchusen3, 0 );
setEffRotateKey( spep_4 + 12, shuchusen3, 180 );
setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 16, shuchusen3, 180 );
setEffRotateKey( spep_4 + 18, shuchusen3, 0 );
setEffRotateKey( spep_4 + 20, shuchusen3, 180 );
setEffRotateKey( spep_4 + 22, shuchusen3, 0 );
setEffRotateKey( spep_4 + 24, shuchusen3, 180 );
setEffRotateKey( spep_4 + 26, shuchusen3, 0 );
setEffRotateKey( spep_4 + 28, shuchusen3, 180 );
setEffRotateKey( spep_4 + 30, shuchusen3, 0 );
setEffRotateKey( spep_4 + 32, shuchusen3, 180 );
setEffRotateKey( spep_4 + 34, shuchusen3, 0 );
setEffRotateKey( spep_4 + 36, shuchusen3, 180 );
setEffRotateKey( spep_4 + 38, shuchusen3, 0 );
setEffRotateKey( spep_4 + 40, shuchusen3, 180 );
setEffRotateKey( spep_4 + 42, shuchusen3, 0 );
setEffRotateKey( spep_4 + 44, shuchusen3, 180 );
setEffRotateKey( spep_4 + 46, shuchusen3, 0 );
setEffRotateKey( spep_4 + 48, shuchusen3, 180 );
setEffRotateKey( spep_4 + 50, shuchusen3, 0 );
setEffRotateKey( spep_4 + 52, shuchusen3, 180 );
setEffRotateKey( spep_4 + 54, shuchusen3, 0 );
setEffRotateKey( spep_4 + 56, shuchusen3, 180 );
setEffRotateKey( spep_4 + 58, shuchusen3, 0 );
setEffRotateKey( spep_4 + 60, shuchusen3, 180 );
setEffRotateKey( spep_4 + 62, shuchusen3, 0 );
setEffRotateKey( spep_4 + 64, shuchusen3, 180 );
setEffRotateKey( spep_4 + 66, shuchusen3, 0 );
setEffRotateKey( spep_4 + 68, shuchusen3, 180 );
setEffRotateKey( spep_4 + 70, shuchusen3, 0 );
setEffRotateKey( spep_4 + 72, shuchusen3, 180 );
setEffRotateKey( spep_4 + 74, shuchusen3, 0 );
setEffRotateKey( spep_4 + 76, shuchusen3, 180 );
setEffRotateKey( spep_4 + 78, shuchusen3, 0 );
setEffRotateKey( spep_4 + 80, shuchusen3, 180 );
setEffRotateKey( spep_4 + 82, shuchusen3, 0 );
setEffRotateKey( spep_4 + 84, shuchusen3, 180 );
setEffRotateKey( spep_4 + 86, shuchusen3, 0 );
setEffRotateKey( spep_4 + 88, shuchusen3, 180 );
setEffRotateKey( spep_4 + 90, shuchusen3, 0 );
setEffRotateKey( spep_4 + 92, shuchusen3, 180 );
setEffRotateKey( spep_4 + 94, shuchusen3, 0 );
setEffRotateKey( spep_4 + 96, shuchusen3, 180 );
setEffRotateKey( spep_4 + 98, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 98, shuchusen3, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 88, 6, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_4 + 5, 1049 );
playSe( spep_4 + 5, 1035 )

endPhase(spep_4 + 98);
else end
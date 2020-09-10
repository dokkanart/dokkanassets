--悟空Jr_ブレイブスマッシュ
--sp1086

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

SP_01 = 160025;  --170F
SP_02 = 160026;  --150
SP_03 = 160027;  --210
SP_04 = 160028;  --200
SP_05 = 160029;  --30
SP_06 = 160030;  --110
SP_07 = 160031;  --100
SP_08 = 160032;  --42
SP_09 = 160033;  --42
SP_10 = 160034;  --110
SP_11 = 160035;  --60

--敵側
SP_01r = 152845;  --170F
SP_02r = 152846;  --150
SP_03r = 152847;  --210
SP_04r = 152848;  --200
SP_05r = 152849;  --30
SP_06r = 152850;  --110
SP_07r = 152850;  --100
SP_08r = 160032;  --42
SP_09r = 160033;  --42
SP_10r = 160034;  --110
SP_11r = 160035;  --60


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);

setVisibleUI(0, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--setMoveKey(   2,   0,    -1100, -54,   0);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y

spep_1 = 0;

changeAnime(  spep_1, 0, 17);                       -- 溜め!

playSe( spep_1-6, SE_04);
playSe( spep_1+26, SE_01);
playSe( spep_1+40, SE_03);
playSe( spep_1+60, SE_03);
playSe( spep_1+80, SE_03);
--playSe( spep_1+100, SE_03);
--playSe( spep_1+120, SE_03);
playSe( spep_1+100, 43);

aura = entryEffect( spep_1+1, SP_01, 0x100,  -1,  300,  0,  0);   -- 手のカメハメ波部
setEffShake(spep_1+1, aura, 159, 15);

entryFadeBg( spep_1, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_1+27, 906, 113, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_1+27,  shuchusen,  1.0,  1.0);
setEffScaleKey(  spep_1+140,  shuchusen,  1.0,  1.0);
setEffMoveKey(  spep_1+27,  shuchusen,  0,  0);
setEffMoveKey(  spep_1+140,  shuchusen,  0,  0);
setEffAlphaKey(  spep_1+27,  shuchusen,  255,  255);
setEffAlphaKey(  spep_1+140,  shuchusen,  255,  255);

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 30, 0, 19, 5);


-- 書き文字エントリー
ct_zuo = entryEffectLife( spep_1 + 44,  10012, 46, 0x100, -1, 0, 76, 259.9 );

setEffShake(  spep_1 +44,  ct_zuo,  46,  10);
setEffMoveKey( spep_1 + 44, ct_zuo, 76, 259.9 , 0 );
setEffMoveKey( spep_1 + 46, ct_zuo, 105, 300.9 , 0 );
setEffMoveKey( spep_1 + 80, ct_zuo, 116, 359.9 , 0 );
setEffMoveKey( spep_1 + 82, ct_zuo, 144.8, 339.1 , 0 );
setEffMoveKey( spep_1 + 84, ct_zuo, 132, 359.9 , 0 );
setEffMoveKey( spep_1 + 86, ct_zuo, 170.3, 329.5 , 0 );
setEffMoveKey( spep_1 + 88, ct_zuo, 148, 359.9 , 0 );
setEffMoveKey( spep_1 + 90, ct_zuo, 156, 359.9 , 0 );
setEffScaleKey( spep_1 + 44, ct_zuo, 1.1, 1.1 );
setEffScaleKey( spep_1 + 46, ct_zuo, 1.45, 1.45 );
setEffScaleKey( spep_1 + 48, ct_zuo, 1.8, 1.8 );
setEffScaleKey( spep_1 + 80, ct_zuo, 1.8, 1.8 );
setEffScaleKey( spep_1 + 82, ct_zuo, 2.04, 2.04 );
setEffScaleKey( spep_1 + 84, ct_zuo, 2.28, 2.28 );
setEffScaleKey( spep_1 + 86, ct_zuo, 2.52, 2.52 );
setEffScaleKey( spep_1 + 88, ct_zuo, 2.76, 2.76 );
setEffScaleKey( spep_1 + 90, ct_zuo, 3, 3 );
setEffRotateKey( spep_1 + 44, ct_zuo, 0 );
setEffRotateKey( spep_1 + 90, ct_zuo, 0 );
setEffAlphaKey( spep_1 + 44, ct_zuo, 255 );
setEffAlphaKey( spep_1 + 80, ct_zuo, 255 );
setEffAlphaKey( spep_1 + 82, ct_zuo, 204 );
setEffAlphaKey( spep_1 + 84, ct_zuo, 153 );
setEffAlphaKey( spep_1 + 86, ct_zuo, 102 );
setEffAlphaKey( spep_1 + 88, ct_zuo, 51 );
setEffAlphaKey( spep_1 + 90, ct_zuo, 0 );

-- 書き文字エントリー
--ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
--setEffShake(30, ct, 40, 7);
--setEffAlphaKey(30, ct, 255);
--setEffAlphaKey(50, ct, 255);
--setEffAlphaKey(70, ct, 0);
--setEffScaleKey( 30, ct, 0.1, 0.1);
--setEffScaleKey( 40, ct, 2.0, 2.0);

entryFade( spep_1+120, 5, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--**次の準備
spep_2 = spep_1+130;  --170

------------------------------------------------------
-- かめはめ波溜め！(570F)
------------------------------------------------------

shu = entryEffectLife(  spep_2+ 88 +98,  906,  40,  0x100,  -1,  0,  0,  0);

--***書き文字追加***
ct_dogaga = entryEffectLife( spep_2 + 40,  10017, 40, 0x100, -1, 0, 48, 282.2 );  --ドガガ

setEffShake(  spep_2+40,  ct_dogaga,  40,  10);
setEffMoveKey( spep_2 + 40, ct_dogaga, 48, 282.2 , 0 );
setEffMoveKey( spep_2 + 42, ct_dogaga, 48.1, 281.3 , 0 );
setEffMoveKey( spep_2 + 44, ct_dogaga, 47.3, 281 , 0 );
setEffMoveKey( spep_2 + 76, ct_dogaga, 47.3, 281 , 0 );
setEffMoveKey( spep_2 + 78, ct_dogaga, 46.9, 280.7 , 0 );
setEffMoveKey( spep_2 + 80, ct_dogaga, 46.7, 280.5 , 0 );
setEffScaleKey( spep_2 + 40, ct_dogaga, 1.88, 1.88 );
setEffScaleKey( spep_2 + 42, ct_dogaga, 3.07, 3.07 );
setEffScaleKey( spep_2 + 44, ct_dogaga, 2.75, 2.75 );
setEffScaleKey( spep_2 + 76, ct_dogaga, 2.75, 2.75 );
setEffScaleKey( spep_2 + 78, ct_dogaga, 3.67, 3.67 );
setEffScaleKey( spep_2 + 80, ct_dogaga, 4.58, 4.58 );
setEffRotateKey( spep_2 + 40, ct_dogaga, 22.3 );
setEffRotateKey( spep_2 + 44, ct_dogaga, 22.3 );
setEffRotateKey( spep_2 + 46, ct_dogaga, 22.5 );
setEffRotateKey( spep_2 + 80, ct_dogaga, 22.5 );
setEffAlphaKey( spep_2 + 40, ct_dogaga, 255 );
setEffAlphaKey( spep_2 + 80, ct_dogaga, 255 );


ct_gah = entryEffectLife( spep_2+ 100 + 10,  10005, 16, 0x100, -1, 0, 176, 332 );  --ガッ

setEffMoveKey( spep_2+ 100 + 10, ct_gah, 176, 332 , 0 );
setEffMoveKey( spep_2+ 100 + 12, ct_gah, 176.1, 332 , 0 );
setEffMoveKey( spep_2+ 100 + 14, ct_gah, 176, 331.9 , 0 );
setEffMoveKey( spep_2+ 100 + 26, ct_gah, 176, 332 , 0 );
setEffScaleKey( spep_2+ 100 + 10, ct_gah, 0.64, 0.64 );
setEffScaleKey( spep_2+ 100 + 12, ct_gah, 1.04, 1.04 );
setEffScaleKey( spep_2+ 100 + 26, ct_gah, 1.04, 1.04 );
setEffRotateKey( spep_2+ 100 + 10, ct_gah, 12.9 );
setEffRotateKey( spep_2+ 100 + 12, ct_gah, 12.9 );
setEffRotateKey( spep_2+ 100 + 14, ct_gah, 8.7 );
setEffRotateKey( spep_2+ 100 + 16, ct_gah, 18.2 );
setEffRotateKey( spep_2+ 100 + 18, ct_gah, 10.3 );
setEffRotateKey( spep_2+ 100 + 26, ct_gah, 16 );
setEffAlphaKey( spep_2+ 100 + 10, ct_gah, 255 );
setEffAlphaKey( spep_2+ 100 + 20, ct_gah, 255 );
setEffAlphaKey( spep_2+ 100 + 22, ct_gah, 170 );
setEffAlphaKey( spep_2+ 100 + 24, ct_gah, 85 );
setEffAlphaKey( spep_2+ 100 + 26, ct_gah, 0 );

ct_baki = entryEffectLife( spep_2 + 100 + 88,  10020, 20, 0x100, -1, 0, -125.2, 353.4 );  --バキ

setEffMoveKey( spep_2 + 100 + 88, ct_baki, -125.2, 353.4 , 0 );
setEffMoveKey( spep_2 + 100 + 90, ct_baki, -125, 353.3 , 0 );
setEffMoveKey( spep_2 + 100 + 92, ct_baki, -124.8, 352.4 , 0 );
setEffMoveKey( spep_2 + 100 + 94, ct_baki, -125, 353.1 , 0 );
setEffMoveKey( spep_2 + 100 + 96, ct_baki, -125.2, 352.9 , 0 );
setEffMoveKey( spep_2 + 100 + 98, ct_baki, -125.1, 353 , 0 );
setEffMoveKey( spep_2 + 100 + 100, ct_baki, -125.1, 353.1 , 0 );
setEffMoveKey( spep_2 + 100 + 102, ct_baki, -125.2, 353.1 , 0 );
setEffMoveKey( spep_2 + 100 + 108, ct_baki, -125.2, 353 , 0 );
setEffScaleKey( spep_2 + 100 + 88, ct_baki, 1.32, 1.32 );
setEffScaleKey( spep_2 + 100 + 90, ct_baki, 1.49, 1.49 );
setEffScaleKey( spep_2 + 100 + 92, ct_baki, 2.55, 2.55 );
setEffScaleKey( spep_2 + 100 + 94, ct_baki, 1.79, 1.79 );
setEffScaleKey( spep_2 + 100 + 96, ct_baki, 1.79, 1.79 );
setEffScaleKey( spep_2 + 100 + 98, ct_baki, 1.71, 1.71 );
setEffScaleKey( spep_2 + 100 + 100, ct_baki, 1.7, 1.7 );
setEffScaleKey( spep_2 + 100 + 102, ct_baki, 1.69, 1.69 );
setEffScaleKey( spep_2 + 100 + 104, ct_baki, 1.68, 1.68 );
setEffScaleKey( spep_2 + 100 + 106, ct_baki, 1.67, 1.67 );
setEffScaleKey( spep_2 + 100 + 108, ct_baki, 1.66, 1.66 );
setEffRotateKey( spep_2 + 100 + 88, ct_baki, 0.5 );
setEffRotateKey( spep_2 + 100 + 90, ct_baki, -4.7 );
setEffRotateKey( spep_2 + 100 + 92, ct_baki, 10.3 );
setEffRotateKey( spep_2 + 100 + 94, ct_baki, 5 );
setEffRotateKey( spep_2 + 100 + 96, ct_baki, 15.2 );
setEffRotateKey( spep_2 + 100 + 98, ct_baki, 7.6 );
setEffRotateKey( spep_2 + 100 + 100, ct_baki, 7.9 );
setEffRotateKey( spep_2 + 100 + 102, ct_baki, 8.3 );
setEffRotateKey( spep_2 + 100 + 104, ct_baki, 8.6 );
setEffRotateKey( spep_2 + 100 + 106, ct_baki, 8.9 );
setEffRotateKey( spep_2 + 100 + 108, ct_baki, 9.2 );
setEffAlphaKey( spep_2 + 100 + 88, ct_baki, 255 );
setEffAlphaKey( spep_2 + 100 + 92, ct_baki, 255 );
setEffAlphaKey( spep_2 + 100 + 94, ct_baki, 223 );
setEffAlphaKey( spep_2 + 100 + 96, ct_baki, 191 );
setEffAlphaKey( spep_2 + 100 + 98, ct_baki, 159 );
setEffAlphaKey( spep_2 + 100 + 100, ct_baki, 128 );
setEffAlphaKey( spep_2 + 100 + 102, ct_baki, 96 );
setEffAlphaKey( spep_2 + 100 + 104, ct_baki, 64 );
setEffAlphaKey( spep_2 + 100 + 106, ct_baki, 32 );
setEffAlphaKey( spep_2 + 100 + 108, ct_baki, 0 );

ct_gah2 = entryEffectLife( spep_2 +100+130 + 26,  10005, 16, 0x100, -1, 0, 176, 332 );  --ガッ

setEffMoveKey( spep_2 +100+130 + 26, ct_gah2, 176, 332 , 0 );
setEffMoveKey( spep_2 +100+130 + 28, ct_gah2, 176.1, 332 , 0 );
setEffMoveKey( spep_2 +100+130 + 30, ct_gah2, 176, 331.9 , 0 );
setEffMoveKey( spep_2 +100+130 + 32, ct_gah2, 176, 332 , 0 );
setEffMoveKey( spep_2 +100+130 + 42, ct_gah2, 176, 332 , 0 );
setEffScaleKey( spep_2 +100+130 + 26, ct_gah2, 0.64, 0.64 );
setEffScaleKey( spep_2 +100+130 + 28, ct_gah2, 1.04, 1.04 );
setEffScaleKey( spep_2 +100+130 + 42, ct_gah2, 1.04, 1.04 );
setEffRotateKey( spep_2 +100+130 + 26, ct_gah2, 12.9 );
setEffRotateKey( spep_2 +100+130 + 28, ct_gah2, 12.9 );
setEffRotateKey( spep_2 +100+130 + 30, ct_gah2, 8.7 );
setEffRotateKey( spep_2 +100+130 + 32, ct_gah2, 18.2 );
setEffRotateKey( spep_2 +100+130 + 34, ct_gah2, 10.3 );
setEffRotateKey( spep_2 +100+130 + 36, ct_gah2, 16 );
setEffRotateKey( spep_2 +100+130 + 42, ct_gah2, 16 );
setEffAlphaKey( spep_2 +100+130 + 26, ct_gah2, 255 );
setEffAlphaKey( spep_2 +100+130 + 36, ct_gah2, 255 );
setEffAlphaKey( spep_2 +100+130 + 38, ct_gah2, 170 );
setEffAlphaKey( spep_2 +100+130 + 40, ct_gah2, 85 );
setEffAlphaKey( spep_2 +100+130 + 42, ct_gah2, 0 );

ct_baki2 = entryEffectLife( spep_2+100+130 + 88,  10020, 20, 0x100, -1, 0, -125.2, 353.4 );  --バキ

setEffMoveKey( spep_2+100+130 + 88, ct_baki2, -125.2, 353.4 , 0 );
setEffMoveKey( spep_2+100+130 + 90, ct_baki2, -125, 353.3 , 0 );
setEffMoveKey( spep_2+100+130 + 92, ct_baki2, -124.8, 352.4 , 0 );
setEffMoveKey( spep_2+100+130 + 94, ct_baki2, -125, 353.1 , 0 );
setEffMoveKey( spep_2+100+130 + 96, ct_baki2, -125.2, 352.9 , 0 );
setEffMoveKey( spep_2+100+130 + 98, ct_baki2, -125.1, 353 , 0 );
setEffMoveKey( spep_2+100+130 + 100, ct_baki2, -125.1, 353.1 , 0 );
setEffMoveKey( spep_2+100+130 + 102, ct_baki2, -125.2, 353.1 , 0 );
setEffMoveKey( spep_2+100+130 + 104, ct_baki2, -125.2, 353 , 0 );
setEffMoveKey( spep_2+100+130 + 108, ct_baki2, -125.2, 353 , 0 );
setEffScaleKey( spep_2+100+130 + 88, ct_baki2, 1.32, 1.32 );
setEffScaleKey( spep_2+100+130 + 90, ct_baki2, 1.49, 1.49 );
setEffScaleKey( spep_2+100+130 + 92, ct_baki2, 2.55, 2.55 );
setEffScaleKey( spep_2+100+130 + 94, ct_baki2, 1.79, 1.79 );
setEffScaleKey( spep_2+100+130 + 96, ct_baki2, 1.79, 1.79 );
setEffScaleKey( spep_2+100+130 + 98, ct_baki2, 1.71, 1.71 );
setEffScaleKey( spep_2+100+130 + 100, ct_baki2, 1.7, 1.7 );
setEffScaleKey( spep_2+100+130 + 102, ct_baki2, 1.69, 1.69 );
setEffScaleKey( spep_2+100+130 + 104, ct_baki2, 1.68, 1.68 );
setEffScaleKey( spep_2+100+130 + 106, ct_baki2, 1.67, 1.67 );
setEffScaleKey( spep_2+100+130 + 108, ct_baki2, 1.66, 1.66 );
setEffRotateKey( spep_2+100+130 + 88, ct_baki2, 0.5 );
setEffRotateKey( spep_2+100+130 + 90, ct_baki2, -4.7 );
setEffRotateKey( spep_2+100+130 + 92, ct_baki2, 10.3 );
setEffRotateKey( spep_2+100+130 + 94, ct_baki2, 5 );
setEffRotateKey( spep_2+100+130 + 96, ct_baki2, 15.2 );
setEffRotateKey( spep_2+100+130 + 98, ct_baki2, 7.6 );
setEffRotateKey( spep_2+100+130 + 100, ct_baki2, 7.9 );
setEffRotateKey( spep_2+100+130 + 102, ct_baki2, 8.3 );
setEffRotateKey( spep_2+100+130 + 104, ct_baki2, 8.6 );
setEffRotateKey( spep_2+100+130 + 106, ct_baki2, 8.9 );
setEffRotateKey( spep_2+100+130 + 108, ct_baki2, 9.2 );
setEffAlphaKey( spep_2+100+130 + 88, ct_baki2, 255 );
setEffAlphaKey( spep_2+100+130 + 92, ct_baki2, 255 );
setEffAlphaKey( spep_2+100+130 + 94, ct_baki2, 223 );
setEffAlphaKey( spep_2+100+130 + 96, ct_baki2, 191 );
setEffAlphaKey( spep_2+100+130 + 98, ct_baki2, 159 );
setEffAlphaKey( spep_2+100+130 + 100, ct_baki2, 128 );
setEffAlphaKey( spep_2+100+130 + 102, ct_baki2, 96 );
setEffAlphaKey( spep_2+100+130 + 104, ct_baki2, 64 );
setEffAlphaKey( spep_2+100+130 + 106, ct_baki2, 32 );
setEffAlphaKey( spep_2+100+130 + 108, ct_baki2, 0 );

--***敵の動き***

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 +98 +128 + 138, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 +40, 1, 108 );
changeAnime( spep_2 +88 +98, 1,  106);
changeAnime( spep_2 +98 +128 + 24, 1, 108 );
changeAnime( spep_2 +98 +128 + 90, 1, 106);

setMoveKey( spep_2 + 0, 1, -1041.4, 32.1 , 0 );
setMoveKey( spep_2 + 2, 1, -823.7, 16.1 , 0 );
setMoveKey( spep_2 + 4, 1, -589.9, 32.1 , 0 );
setMoveKey( spep_2 + 6, 1, -368.2, 24.1 , 0 );
setMoveKey( spep_2 + 8, 1, -138.4, 32.1 , 0 );
setMoveKey( spep_2 + 10, 1, -101.6, 25.3 , 0 );
setMoveKey( spep_2 + 12, 1, -56.7, 34.6 , 0 );
setMoveKey( spep_2 + 14, 1, -45.2, 30.7 , 0 );
setMoveKey( spep_2 + 16, 1, -9.7, 34.7 , 0 );
setMoveKey( spep_2 + 18, 1, -10.6, 26.8 , 0 );
setMoveKey( spep_2 + 20, 1, -3.4, 34.9 , 0 );
setMoveKey( spep_2 + 22, 1, -8.3, 27 , 0 );
setMoveKey( spep_2 + 24, 1, 2.9, 35.1 , 0 );
setMoveKey( spep_2 + 26, 1, 2, 31.2 , 0 );
setMoveKey( spep_2 + 28, 1, 9.1, 35.3 , 0 );
setMoveKey( spep_2 + 30, 1, 8.3, 27.3 , 0 );
setMoveKey( spep_2 + 32, 1, 15.4, 35.4 , 0 );
setMoveKey( spep_2 + 34, 1, 10.6, 31.5 , 0 );
setMoveKey( spep_2 + 36, 1, 21.7, 35.6 , 0 );
setMoveKey( spep_2 + 39, 1, 75.6, 33.2 , 0 );
setMoveKey( spep_2 + 40, 1, 80.9, 31.6 , 0 );
setMoveKey( spep_2 + 42, 1, 75.3, 23.9 , 0 );
setMoveKey( spep_2 + 44, 1, 85.6, 32.2 , 0 );
setMoveKey( spep_2 + 46, 1, 84, 24.4 , 0 );
setMoveKey( spep_2 + 48, 1, 90.4, 32.7 , 0 );
setMoveKey( spep_2 + 50, 1, 105.6, 28.7 , 0 );
setMoveKey( spep_2 + 52, 1, 113.6, 32.7 , 0 );
setMoveKey( spep_2 + 54, 1, 111.3, 25.9 , 0 );
setMoveKey( spep_2 + 56, 1, 116.9, 35.2 , 0 );
setMoveKey( spep_2 + 58, 1, 114.6, 28.4 , 0 );
setMoveKey( spep_2 + 60, 1, 120.2, 37.6 , 0 );
setMoveKey( spep_2 + 62, 1, 132.9, 33.7 , 0 );
setMoveKey( spep_2 + 64, 1, 145.1, 37.6 , 0 );
setMoveKey( spep_2 + 66, 1, 142.8, 33.7 , 0 );
setMoveKey( spep_2 + 68, 1, 159.2, 37.6 , 0 );
setMoveKey( spep_2 + 70, 1, 163.7, 29.6 , 0 );
setMoveKey( spep_2 + 72, 1, 180.1, 37.6 , 0 );
setMoveKey( spep_2 + 74, 1, 192.6, 29.6 , 0 );
setMoveKey( spep_2 + 76, 1, 198.4, 37.6 , 0 );
setMoveKey( spep_2 + 78, 1, 196.2, 29.6 , 0 );
setMoveKey( spep_2 + 80, 1, 202, 37.6 , 0 );
setMoveKey( spep_2 + 82, 1, 199.8, 33.7 , 0 );
setMoveKey( spep_2 + 84, 1, 205.6, 37.6 , 0 );
setMoveKey( spep_2 + 86, 1, 203.4, 25.6 , 0 );
setMoveKey( spep_2 + 88, 1, 209.2, 37.6 , 0 );
setMoveKey( spep_2 + 90, 1, 203, 29.6 , 0 );
setMoveKey( spep_2 + 92, 1, 212.8, 37.6 , 0 );
setMoveKey( spep_2 + 94, 1, 210.6, 33.7 , 0 );
setMoveKey( spep_2 + 96, 1, 216.4, 37.6 , 0 );
setMoveKey( spep_2 + 98, 1, 214.2, 25.6 , 0 );

setMoveKey( spep_2+98 + 0, 1, 218.2, 37.7 , 0 );
setMoveKey( spep_2+98 + 2, 1, 192.4, 13 , 0 );
setMoveKey( spep_2+98 + 4, 1, 174.7, 12.3 , 0 );
setMoveKey( spep_2+98 + 6, 1, 164.9, 11.6 , 0 );
setMoveKey( spep_2+98 + 8, 1, 147.2, 3 , 0 );
setMoveKey( spep_2+98 + 10, 1, 125.4, -9.7 , 0 );
setMoveKey( spep_2+98 + 12, 1, 130.7, -7.2 , 0 );
setMoveKey( spep_2+98 + 14, 1, 127.9, -16.7 , 0 );
setMoveKey( spep_2+98 + 16, 1, 133.2, -10.2 , 0 );
setMoveKey( spep_2+98 + 18, 1, 130.4, -19.7 , 0 );
setMoveKey( spep_2+98 + 20, 1, 135.7, -13.2 , 0 );
setMoveKey( spep_2+98 + 22, 1, 132.9, -26.7 , 0 );
setMoveKey( spep_2+98 + 24, 1, 138.2, -16.2 , 0 );
setMoveKey( spep_2+98 + 26, 1, 131.4, -25.7 , 0 );
setMoveKey( spep_2+98 + 28, 1, 166.5, -57.3 , 0 );
setMoveKey( spep_2+98 + 30, 1, 185.6, -104.8 , 0 );
setMoveKey( spep_2+98 + 32, 1, 220.8, -136.4 , 0 );
setMoveKey( spep_2+98 + 34, 1, 243.9, -180 , 0 );
setMoveKey( spep_2+98 + 36, 1, 275, -215.5 , 0 );
setMoveKey( spep_2+98 + 38, 1, 298.1, -263.1 , 0 );
setMoveKey( spep_2+98 + 40, 1, 329.2, -294.7 , 0 );
setMoveKey( spep_2+98 + 42, 1, 348.3, -342.2 , 0 );
setMoveKey( spep_2+98 + 44, 1, 383.5, -373.8 , 0 );
setMoveKey( spep_2+98 + 46, 1, 378.5, -385.8 , 0 );
setMoveKey( spep_2+98 + 48, 1, 389.5, -381.8 , 0 );
setMoveKey( spep_2+98 + 50, 1, 388.5, -397.8 , 0 );
setMoveKey( spep_2+98 + 52, 1, 395.5, -389.8 , 0 );
setMoveKey( spep_2+98 + 54, 1, 314.4, -276.2 , 0 );
setMoveKey( spep_2+98 + 56, 1, 241.4, -146.6 , 0 );
setMoveKey( spep_2+98 + 58, 1, 156.3, -25 , 0 );
setMoveKey( spep_2+98 + 60, 1, 87.3, 96.6 , 0 );
setMoveKey( spep_2+98 + 62, 1, 54.1, 116.7 , 0 );
setMoveKey( spep_2+98 + 64, 1, 45, 152.9 , 0 );
setMoveKey( spep_2+98 + 66, 1, 40.4, 141.6 , 0 );
setMoveKey( spep_2+98 + 68, 1, 43.9, 154.4 , 0 );
setMoveKey( spep_2+98 + 70, 1, 35.3, 147.1 , 0 );
setMoveKey( spep_2+98 + 72, 1, 42.8, 155.8 , 0 );
setMoveKey( spep_2+98 + 74, 1, 38.2, 152.5 , 0 );
setMoveKey( spep_2+98 + 76, 1, 41.7, 157.3 , 0 );
setMoveKey( spep_2+98 + 78, 1, 33.1, 150 , 0 );
setMoveKey( spep_2+98 + 80, 1, 40.6, 158.7 , 0 );
setMoveKey( spep_2+98 + 82, 1, 32, 151.4 , 0 );
setMoveKey( spep_2+98 + 84, 1, 39.5, 160.2 , 0 );
setMoveKey( spep_2+98 + 87, 1, 31, 152.9 , 0 );
setMoveKey( spep_2+98 + 88, 1, 4.9, 97.9 , 0 );
setMoveKey( spep_2+98 + 90, 1, -0.6, 86.9 , 0 );
setMoveKey( spep_2+98 + 92, 1, 1.9, 99.9 , 0 );
setMoveKey( spep_2+98 + 94, 1, -11.6, 92.9 , 0 );
setMoveKey( spep_2+98 + 96, 1, -1.1, 101.9 , 0 );
setMoveKey( spep_2+98 + 98, 1, -6.6, 90.9 , 0 );
setMoveKey( spep_2+98 + 100, 1, -4.1, 103.9 , 0 );
setMoveKey( spep_2+98 + 102, 1, -13.6, 96.9 , 0 );
setMoveKey( spep_2+98 + 104, 1, -7.1, 105.9 , 0 );
setMoveKey( spep_2+98 + 106, 1, -17.1, 101.9 , 0 );
setMoveKey( spep_2+98 + 108, 1, -53.6, 163 , 0 );
setMoveKey( spep_2+98 + 110, 1, -106.1, 208 , 0 );
setMoveKey( spep_2+98 + 112, 1, -142.7, 269 , 0 );
setMoveKey( spep_2+98 + 114, 1, -195.2, 314.1 , 0 );
setMoveKey( spep_2+98 + 116, 1, -189.2, 324.1 , 0 );
setMoveKey( spep_2+98 + 118, 1, -196.5, 315.4 , 0 );
setMoveKey( spep_2+98 + 120, 1, -195.9, 330.7 , 0 );
setMoveKey( spep_2+98 + 122, 1, -207.2, 326.1 , 0 );
setMoveKey( spep_2+98 + 124, 1, -202.5, 337.4 , 0 );
setMoveKey( spep_2+98 + 126, 1, -213.8, 332.7 , 0 );
setMoveKey( spep_2+98 + 128, 1, -209.2, 344.1 , 0 );

setMoveKey( spep_2 +98 +128 + 2, 1, -172, 263.7 , 0 );
setMoveKey( spep_2 +98 +128 + 4, 1, -118.8, 207.3 , 0 );
setMoveKey( spep_2 +98 +128 + 6, 1, -81.5, 130.9 , 0 );
setMoveKey( spep_2 +98 +128 + 8, 1, -28.3, 70.5 , 0 );
setMoveKey( spep_2 +98 +128 + 10, 1, 8.9, -9.9 , 0 );
setMoveKey( spep_2 +98 +128 + 12, 1, 18.1, -2.7 , 0 );
setMoveKey( spep_2 +98 +128 + 14, 1, 15.3, -19.5 , 0 );
setMoveKey( spep_2 +98 +128 + 16, 1, 20.5, -12.3 , 0 );
setMoveKey( spep_2 +98 +128 + 18, 1, 17.7, -29.1 , 0 );
setMoveKey( spep_2 +98 +128 + 20, 1, 22.9, -21.9 , 0 );
setMoveKey( spep_2 +98 +128 + 23, 1, 20.9, -45.9 , 0 );
setMoveKey( spep_2 +98 +128 + 24, 1, 99.2, -56.6 , 0 );
setMoveKey( spep_2 +98 +128 + 26, 1, 95.8, -70.1 , 0 );
setMoveKey( spep_2 +98 +128 + 28, 1, 100.3, -59.7 , 0 );
setMoveKey( spep_2 +98 +128 + 30, 1, 96.9, -73.2 , 0 );
setMoveKey( spep_2 +98 +128 + 32, 1, 101.4, -62.8 , 0 );
setMoveKey( spep_2 +98 +128 + 34, 1, 94, -76.3 , 0 );
setMoveKey( spep_2 +98 +128 + 36, 1, 102.5, -65.9 , 0 );
setMoveKey( spep_2 +98 +128 + 38, 1, 99.1, -79.4 , 0 );
setMoveKey( spep_2 +98 +128 + 40, 1, 103.1, -67.4 , 0 );
setMoveKey( spep_2 +98 +128 + 42, 1, 134.6, -163.6 , 0 );
setMoveKey( spep_2 +98 +128 + 44, 1, 182.2, -251.7 , 0 );
setMoveKey( spep_2 +98 +128 + 46, 1, 213.7, -351.9 , 0 );
setMoveKey( spep_2 +98 +128 + 48, 1, 261.3, -436 , 0 );
setMoveKey( spep_2 +98 +128 + 50, 1, 254.6, -446 , 0 );
setMoveKey( spep_2 +98 +128 + 52, 1, 263.8, -440 , 0 );
setMoveKey( spep_2 +98 +128 + 54, 1, 257.1, -450 , 0 );
setMoveKey( spep_2 +98 +128 + 56, 1, 266.3, -444 , 0 );
setMoveKey( spep_2 +98 +128 + 58, 1, 267.6, -446 , 0 );
setMoveKey( spep_2 +98 +128 + 60, 1, 260.8, -456 , 0 );
setMoveKey( spep_2 +98 +128 + 62, 1, 270.1, -450 , 0 );
setMoveKey( spep_2 +98 +128 + 64, 1, 263.3, -460 , 0 );
setMoveKey( spep_2 +98 +128 + 66, 1, 230, -319.9 , 0 );
setMoveKey( spep_2 +98 +128 + 68, 1, 180.8, -195.7 , 0 );
setMoveKey( spep_2 +98 +128 + 70, 1, 147.5, -55.6 , 0 );
setMoveKey( spep_2 +98 +128 + 72, 1, 102.3, 60.6 , 0 );
setMoveKey( spep_2 +98 +128 + 74, 1, 65, 208.7 , 0 );
setMoveKey( spep_2 +98 +128 + 76, 1, 61.3, 185.3 , 0 );
setMoveKey( spep_2 +98 +128 + 78, 1, 65.6, 177.9 , 0 );
setMoveKey( spep_2 +98 +128 + 80, 1, 61.8, 154.4 , 0 );
setMoveKey( spep_2 +98 +128 + 82, 1, 66.1, 147 , 0 );
setMoveKey( spep_2 +98 +128 + 84, 1, 62.4, 123.6 , 0 );
setMoveKey( spep_2 +98 +128 + 86, 1, 66.7, 116.2 , 0 );
setMoveKey( spep_2 +98 +128 + 89, 1, 63, 88.7 , 0 );
setMoveKey( spep_2 +98 +128 + 90, 1, -19, 80.1 , 0 );
setMoveKey( spep_2 +98 +128 + 92, 1, -23, 77.1 , 0 );
setMoveKey( spep_2 +98 +128 + 94, 1, -19, 90.1 , 0 );
setMoveKey( spep_2 +98 +128 + 96, 1, -23, 87.1 , 0 );
setMoveKey( spep_2 +98 +128 + 98, 1, -19, 100.1 , 0 );
setMoveKey( spep_2 +98 +128 + 100, 1, -23, 97.1 , 0 );
setMoveKey( spep_2 +98 +128 + 102, 1, -19, 110.1 , 0 );
setMoveKey( spep_2 +98 +128 + 104, 1, -23, 103.1 , 0 );
setMoveKey( spep_2 +98 +128 + 106, 1, -19, 120.1 , 0 );
setMoveKey( spep_2 +98 +128 + 108, 1, -23, 82.1 , 0 );
setMoveKey( spep_2 +98 +128 + 110, 1, -19, 60.1 , 0 );
setMoveKey( spep_2 +98 +128 + 112, 1, -23, 22.1 , 0 );
setMoveKey( spep_2 +98 +128 + 114, 1, -19, 0.1 , 0 );
setMoveKey( spep_2 +98 +128 + 116, 1, -23, -10.9 , 0 );
setMoveKey( spep_2 +98 +128 + 118, 1, -19, -5.9 , 0 );
setMoveKey( spep_2 +98 +128 + 120, 1, -23, -16.9 , 0 );
setMoveKey( spep_2 +98 +128 + 122, 1, -19, -11.9 , 0 );
setMoveKey( spep_2 +98 +128 + 124, 1, -23, -22.9 , 0 );
setMoveKey( spep_2 +98 +128 + 126, 1, -19, -17.9 , 0 );
setMoveKey( spep_2 +98 +128 + 128, 1, -23, -43.9 , 0 );
setMoveKey( spep_2 +98 +128 + 130, 1, -19, -37.9 , 0 );
setMoveKey( spep_2 +98 +128 + 132, 1, -27, -55.9 , 0 );
setMoveKey( spep_2 +98 +128 + 134, 1, -19, -57.9 , 0 );
setMoveKey( spep_2 +98 +128 + 136, 1, -27, -75.9 , 0 );
setMoveKey( spep_2 +98 +128 + 138, 1, -19, -77.9 , 0 );

setScaleKey( spep_2 + 0, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 2, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 4, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 6, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 8, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 10, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 12, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 16, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 18, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 20, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 22, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 24, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 26, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 28, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 30, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 32, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 34, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 36, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 39, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 40, 1, 2, 2 );
setScaleKey( spep_2 + 42, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 44, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 46, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 48, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 98, 1, 2.04, 2.04 );

setScaleKey( spep_2+98 + 2, 1, 2.08, 2.08 );
setScaleKey( spep_2+98 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_2+98 + 6, 1, 2.17, 2.17 );
setScaleKey( spep_2+98 + 8, 1, 2.21, 2.21 );
setScaleKey( spep_2+98 + 10, 1, 2.26, 2.26 );
setScaleKey( spep_2+98 + 26, 1, 2.26, 2.26 );
setScaleKey( spep_2+98 + 28, 1, 2.25, 2.25 );
setScaleKey( spep_2+98 + 30, 1, 2.25, 2.25 );
setScaleKey( spep_2+98 + 32, 1, 2.24, 2.24 );
setScaleKey( spep_2+98 + 34, 1, 2.24, 2.24 );
setScaleKey( spep_2+98 + 36, 1, 2.23, 2.23 );
setScaleKey( spep_2+98 + 38, 1, 2.23, 2.23 );
setScaleKey( spep_2+98 + 40, 1, 2.22, 2.22 );
setScaleKey( spep_2+98 + 42, 1, 2.22, 2.22 );
setScaleKey( spep_2+98 + 44, 1, 2.21, 2.21 );
setScaleKey( spep_2+98 + 52, 1, 2.21, 2.21 );
setScaleKey( spep_2+98 + 54, 1, 2.17, 2.17 );
setScaleKey( spep_2+98 + 56, 1, 2.13, 2.13 );
setScaleKey( spep_2+98 + 58, 1, 2.08, 2.08 );
setScaleKey( spep_2+98 + 60, 1, 2.04, 2.04 );
setScaleKey( spep_2+98 + 62, 1, 2.01, 2.01 );
setScaleKey( spep_2+98 + 64, 1, 1.98, 1.98 );
setScaleKey( spep_2+98 + 87, 1, 1.98, 1.98 );
setScaleKey( spep_2+98 + 88, 1, 1.92, 1.92 );
setScaleKey( spep_2+98 + 106, 1, 1.92, 1.92 );
setScaleKey( spep_2+98 + 108, 1, 1.9, 1.9 );
setScaleKey( spep_2+98 + 110, 1, 1.89, 1.89 );
setScaleKey( spep_2+98 + 112, 1, 1.87, 1.87 );
setScaleKey( spep_2+98 + 114, 1, 1.86, 1.86 );
setScaleKey( spep_2+98 + 116, 1, 1.86, 1.86 );
setScaleKey( spep_2+98 + 118, 1, 1.85, 1.85 );
setScaleKey( spep_2+98 + 122, 1, 1.85, 1.85 );
setScaleKey( spep_2+98 + 128, 1, 1.84, 1.84 );

setScaleKey( spep_2 +98 +128 + 23, 1, 1.84, 1.84 );
setScaleKey( spep_2 +98 +128 + 24, 1, 1.98, 1.98 );
setScaleKey( spep_2 +98 +128 + 74, 1, 1.98, 1.98 );
setScaleKey( spep_2 +98 +128 + 76, 1, 1.97, 1.97 );
setScaleKey( spep_2 +98 +128 + 89, 1, 1.97, 1.97 );
setScaleKey( spep_2 +98 +128 + 90, 1, 1.92, 1.92 );
setScaleKey( spep_2 +98 +128 + 138, 1, 1.92, 1.92 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 98, 1, 0 );
setRotateKey( spep_2+98 + 87, 1, 0 );
setRotateKey( spep_2+98 + 88, 1, 8.5 );
setRotateKey( spep_2+98 + 128, 1, 8.5 );

setRotateKey( spep_2 +98 +128 + 23, 1, 8.5 );
setRotateKey( spep_2 +98 +128 + 24, 1, 29.5 );
setRotateKey( spep_2 +98 +128 + 26, 1, 29.8 );
setRotateKey( spep_2 +98 +128 + 28, 1, 30.2 );
setRotateKey( spep_2 +98 +128 + 30, 1, 30.6 );
setRotateKey( spep_2 +98 +128 + 32, 1, 31 );
setRotateKey( spep_2 +98 +128 + 34, 1, 31.4 );
setRotateKey( spep_2 +98 +128 + 36, 1, 31.7 );
setRotateKey( spep_2 +98 +128 + 38, 1, 32.1 );
setRotateKey( spep_2 +98 +128 + 64, 1, 32.1 );
setRotateKey( spep_2 +98 +128 + 66, 1, 35.1 );
setRotateKey( spep_2 +98 +128 + 68, 1, 38 );
setRotateKey( spep_2 +98 +128 + 70, 1, 41 );
setRotateKey( spep_2 +98 +128 + 72, 1, 43.9 );
setRotateKey( spep_2 +98 +128 + 74, 1, 46.9 );
setRotateKey( spep_2 +98 +128 + 89, 1, 46.9 );
setRotateKey( spep_2 +98 +128 + 90, 1, 30 );
setRotateKey( spep_2 +98 +128 + 138, 1, 30 );


--[[
setDisp(spep_2-1, 1, 1);
setAnimeLoop( spep_2, 1, 1);
setAnimeLoop( spep_2+66, 1, 1);
changeAnime( spep_2-1, 1, 100);
changeAnime( spep_2+65, 1, 108);

setScaleKey(   spep_2,   1, 3.5, 3.5);
setScaleKey(   spep_2+20,   1, 1.7, 1.7);
setScaleKey(   spep_2+40,   1, 1.7, 1.7);
setScaleKey(   spep_2+65,   1, 2.0, 2.0);
setScaleKey(   spep_2+145,   1, 2.0, 2.0);
setScaleKey(   spep_2+163,   1, 1.7, 1.7);
setScaleKey(   spep_2+180,   1, 1.7, 1.7);
setScaleKey(   spep_2+183,   1, 2.0, 2.0);
setScaleKey(   spep_2+570,   1, 2.0, 2.0);

setMoveKey(  spep_2,       1,  -700,  0,   -100);
setMoveKey(  spep_2+20,    1,   0,    0,   0);
setMoveKey(  spep_2+50,    1,   100,  0,   -10);
setMoveKey(  spep_2+140,    1,  200,  0,   -10);
setMoveKey(  spep_2+145,    1,  200,  0,   -10);
setMoveKey(  spep_2+163,    1,  250,  -250,   0);
setMoveKey(  spep_2+180,    1,  100,  -70,   -10);
setMoveKey(  spep_2+213,    1,  100,  -70,   -10);
setMoveKey(  spep_2+223,    1,  300,  -300,   -10);
setMoveKey(  spep_2+233,    1,  300,  -300,   -10);
setMoveKey(  spep_2+253,    1,  50,   50,   -10);
setMoveKey(  spep_2+317,    1,  50,   50,   -10);
setMoveKey(  spep_2+327,    1,  -300,  300,   -10);
setMoveKey(  spep_2+342,    1,  -300,  300,   -10);
setMoveKey(  spep_2+366,    1,  60,  -4,   -10);
setMoveKey(  spep_2+426,    1,  60,  -4,   -10);
setMoveKey(  spep_2+449,    1,  250,  -300,   -10);
setMoveKey(  spep_2+463,    1,  250,  -300,   -10);
setMoveKey(  spep_2+478,    1,  40,  100,   -10);
setMoveKey(  spep_2+519,    1,  40,  50,   -10);
setMoveKey(  spep_2+570,    1,  40,  50,   -10);

setRotateKey( spep_2+411,  1,  0 );
setRotateKey( spep_2+412,  1, 50 );
setRotateKey( spep_2+570,  1, 50 );

setShakeChara( spep_2, 1, 570, 20);  --揺れ
]]
--***エフェクト***
punch1 = entryEffect( spep_2, SP_02, 0x100,      -1,  300,  0,  0);   -- 初撃
setEffScaleKey(  spep_2, punch1, 0.8, 0.8);
setEffScaleKey(  spep_2+150, punch1, 0.8, 0.8);

kick1= entryEffect( spep_2+98, SP_03, 0x100,      -1,  300,  0,  0);   -- 蹴り
setEffScaleKey(  spep_2+98, kick1, 0.8, 0.8);
--setEffScaleKey(  spep_2+361,  kick1,  0.8,  0.8);

punch2 = entryEffect( spep_2+98+128, SP_04, 0x100,      -1,  300,  0,  0);   -- 最後の打撃
setEffScaleKey(spep_2+98+128, punch2, 0.8, 0.8);
--setEffScaleKey(spep_2+567, punch2, 0.8, 0.8);

shu = entryEffectLife(  spep_2+ 88 +98,  906,  40,  0x100,  -1,  0,  0,  0);

--***流線***

ryu1 = entryEffectLife( spep_2, 920, 370, 0x80,  -1,  0,  0,  0); -- 流線

setEffMoveKey(  spep_2,  ryu1,  0,  0);

setEffScaleKey(  spep_2,  ryu1,  1.61,  1.10);
setEffScaleKey(  spep_2+100,  ryu1,  1.61,  1.10);
setEffScaleKey(  spep_2+102,  ryu1,  2.75,  1.56);
setEffScaleKey(  spep_2+370,  ryu1,  2.75,  1.56);

setEffRotateKey(  spep_2,  ryu1,  -180);
setEffRotateKey(  spep_2+100,  ryu1,  -180);
setEffRotateKey(  spep_2+ 100 + 12, ryu1, -128.6);
setEffRotateKey(  spep_2+ 100 + 130, ryu1, -128.6);
setEffRotateKey(  spep_2+ 100 + 130 +70,  ryu1, -128.6);
--setEffRotateKey(  spep_2+ 100 + 130 +74,  ryu1, -156.6);
--setEffRotateKey(  spep_2+ 100 + 130 +84,  ryu1, 132.4);
setEffRotateKey(  spep_2+ 100 + 130 +96, ryu1,  -90);
setEffRotateKey(  spep_2+ 100 + 130 +140, ryu1, -90);

setEffAlphaKey(  spep_2,  ryu1,  255);
setEffAlphaKey(  spep_2+100 + 72,  ryu1,  255);
setEffAlphaKey(  spep_2+100 + 74,  ryu1,  0);
setEffAlphaKey(  spep_2+88  +98,  ryu1,  0);
setEffAlphaKey(  spep_2+88  +100,  ryu1,  255);
setEffAlphaKey(  spep_2+100  +130 +140,  ryu1,  255);




--[[
--***流線***
ryu = entryEffectLife( spep_2, 920, 225, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey(spep_2, ryu, 1.0, 1.0);
setEffScaleKey(spep_2+145, ryu, 1.0, 1.0);
setEffScaleKey(spep_2+165, ryu, 2.0, 2.0);
setEffScaleKey(spep_2+225, ryu, 2.0, 2.0);
setEffRotateKey(spep_2+145, ryu, 0);
setEffRotateKey(spep_2+165, ryu, 55);
setEffRotateKey(spep_2+255, ryu, 55);

ryu2 = entryEffectLife( spep_2+245, 920, 110, 0x80,  -1,  0,  0,  0); -- 流線

setEffScaleKey(spep_2+245, ryu2, 2.0, 2.0);
setEffScaleKey(spep_2+355, ryu2, 2.0, 2.0);
setEffRotateKey(spep_2+245, ryu2, -120);
setEffRotateKey(spep_2+270, ryu2, -120);
setEffRotateKey(spep_2+280, ryu2, -90);
setEffRotateKey(spep_2+355, ryu2, -90);
setEffAlphaKey(spep_2+245, ryu2,0);
setEffAlphaKey(spep_2+248, ryu2,255);
setEffAlphaKey(spep_2+355, ryu2,255);
]]

--[[
ryu3 = entryEffectLife( spep_2+414, 920, 44, 0x80,  -1,  0,  0,  0); -- 流線

setEffScaleKey(spep_2+414, ryu3, 2.0, 2.0);
setEffScaleKey(spep_2+458, ryu3, 2.0, 2.0);
setEffRotateKey(spep_2+414, ryu3, 55);
setEffRotateKey(spep_2+458, ryu3, 55);
setEffAlphaKey(spep_2+414, ryu3,0);
setEffAlphaKey(spep_2+417, ryu3,255);
setEffAlphaKey(spep_2+458, ryu3,255);

ryu4 = entryEffectLife( spep_2+480, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線

setEffScaleKey(spep_2+480, ryu4, 2.0, 2.0);
setEffScaleKey(spep_2+570, ryu4, 2.0, 2.0);
setEffRotateKey(spep_2+480, ryu4, -270);
setEffRotateKey(spep_2+570, ryu4, -270);
]]
--***集中線***
shuchusen1 = entryEffectLife( spep_2+65, 906, 505, 0x80,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2+65,  shuchusen1,  1.0,  1.0);
setEffScaleKey(  spep_2+570,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_2+65,  shuchusen1,  0);
setEffRotateKey(  spep_2+570,  shuchusen1,  0);
setEffAlphaKey(  spep_2+65,  shuchusen1,  255);
setEffAlphaKey(  spep_2+155,  shuchusen1,  255);
setEffAlphaKey(  spep_2+156,  shuchusen1,  0);
setEffAlphaKey(  spep_2+197,  shuchusen1,  0);
setEffAlphaKey(  spep_2+198,  shuchusen1,  255);
setEffAlphaKey(  spep_2+228,  shuchusen1,  255);
setEffAlphaKey(  spep_2+229,  shuchusen1,  0);
setEffAlphaKey(  spep_2+230,  shuchusen1,  0);
setEffAlphaKey(  spep_2+349,  shuchusen1,  0);
setEffAlphaKey(  spep_2+350,  shuchusen1,  255);
setEffAlphaKey(  spep_2+570,  shuchusen1,  255);

--shuchusen = entryEffectLife( spep_2+198, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
--shuchusen = entryEffectLife( spep_2+350, 906, 220, 0x100,  -1, 0,  0,  0);   -- 集中線

entryFadeBg( spep_2, 0, 570, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFade(   spep_2+360, 8, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
--ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
--setEffShake(90, ct, 40, 8);
--setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_2+20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

playSe( spep_2+20, 43);  --瞬間移動
playSe( spep_2+40,1009);
playSe( spep_2+50,1001);
playSe( spep_2+60,1009);
playSe( spep_2+83,43);

playSe( spep_2+100+20,1009);
playSe( spep_2+100+40, 43);  --瞬間移動
playSe( spep_2+100+75, 43);  --瞬間移動
playSe( spep_2+100+90, 1010);
--playSe( spep_2+100+120, 43);  --瞬間移動

playSe( spep_2+100+130+20, 43);  --瞬間移動
playSe( spep_2+100+130+28,1010);
playSe( spep_2+100+130+50, 43);  --瞬間移動
--playSe( spep_2+387, 43);  --瞬間移動
playSe( spep_2+100+130+90,1011);
--playSe( spep_2+455, 43);  --瞬間移動
--playSe( spep_2+518, 1011);

entryFade(  spep_2+360,  4,  10,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);

--**次の準備
spep_3 = spep_2+370;  --740


------------------------------------------------------
-- ナビ！(110F)
------------------------------------------------------
--***キャラの動き***
setDisp(  spep_3-1, 1, 0);
setMoveKey(   spep_3,   0,    -1100, -54,   0);
setMoveKey(   spep_3+105,   0,    -1100, -54,   0);

shuchusen2 = entryEffectLife( spep_3, 906, 113, 0x00,  -1, 0,  0,  0);   -- 集中線

--***エフェクト***
nabi = entryEffect( spep_3, SP_05, 0x100, -1,  0,  0,  0);   -- ナビ

setEffMoveKey(  spep_3,  nabi,  0,  0,  0);
setEffMoveKey(  spep_3+110,  nabi,  0,  0,  0);
setEffScaleKey(  spep_3,  nabi,  1.0,  1.0);
setEffScaleKey(  spep_3,  nabi,  1.0,  1.0);
setEffAlphaKey(  spep_3,  nabi,  255);
setEffAlphaKey(  spep_3,  nabi,  255);
setEffShake(spep_3, nabi, 105, 15);  --揺れ

--***カットイン***
speff1 = entryEffect(  spep_3,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_3,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+12, 190006, 68, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_3 + 12, ctgogo, 0 );
setEffAlphaKey( spep_3 + 13, ctgogo, 255 );
setEffAlphaKey( spep_3 + 70, ctgogo, 255 );
setEffAlphaKey( spep_3 + 72, ctgogo, 255 );
setEffAlphaKey( spep_3 + 74, ctgogo, 191 );
setEffAlphaKey( spep_3 + 76, ctgogo, 128 );
setEffAlphaKey( spep_3 + 78, ctgogo, 64 );
setEffAlphaKey( spep_3 + 80, ctgogo, 0 );

setEffRotateKey(  spep_3+12,  ctgogo,  0);
setEffRotateKey(  spep_3+80,  ctgogo,  0);

setEffScaleKey(  spep_3+12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3+70,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_3 + 80, ctgogo, 1.07, 1.07 );

setEffMoveKey(  spep_3+12,  ctgogo,  0,  530);
setEffMoveKey(  spep_3+80,  ctgogo,  0,  530);

--***SE***
--playSe( spep_3+10, SE_01);
playSe( spep_3+22, SE_04);

entryFadeBg( spep_3, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFade( spep_3+100, 8, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--**次の準備
spep_4 = spep_3+110;  --850
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--***カード***
--playSe( spep_4, SE_05);
--speff3 = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff3, 1, 1);
--setEffReplaceTexture( speff3, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff3, 5, 4);                                  -- 技名テクスチャ差し替え

--***極限Z覚醒***
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFadeBg(  spep_4,  0,  90,  0,  fcolor_r,  fcolor_g,  fcolor_b,  255);

entryFade( spep_4+84, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***次の準備***
spep_5 = spep_4+90;  --940
------------------------------------------------------
-- 突進(100F)
------------------------------------------------------
--changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

tosshin = entryEffect( spep_5, SP_06,  0x100,  -1,  0,  0,  0);   -- 伸びるかめはめ波

setEffShake(spep_5, tosshin, 95, 15);  --揺れ
setEffMoveKey(  spep_5,  tosshin,  0,  0,  0);
setEffMoveKey(  spep_5+60,  tosshin,  0,  0,  0);
setEffScaleKey(  spep_5,  tosshin,  1.0,  1.0);
setEffScaleKey(  spep_5+60,  tosshin,  1.0,  1.0);
setEffRotateKey(  spep_5,  tosshin,  0);
setEffRotateKey(  spep_5+60,  tosshin,  0);

playSe( spep_5, 9);

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen2 = entryEffectLife( spep_5, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線

setEffMoveKey(  spep_5,  shuchusen2,  0,  0);
setEffMoveKey(  spep_5+60,  shuchusen2,  0,  0);
setEffScaleKey(  spep_5,  shuchusen2,  1.0,  1.0);
setEffScaleKey(  spep_5+60,  shuchusen2,  1.0,  1.0);
setEffAlphaKey(  spep_5,  shuchusen2,  255);
setEffAlphaKey(  spep_5+60,  shuchusen2,  255);
setEffRotateKey(  spep_5,  shuchusen2,  0);
setEffRotateKey(  spep_5+60,  shuchusen2,  0);

-- ** エフェクト等 ** --
entryFadeBg( spep_5, 0, 60, 0, 10, 10, 10, 255);       -- ベース暗い　背景
entryFade( spep_5+40, 8, 12, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***次の準備***
spep_6 = spep_5+60  --1030
------------------------------------------------------
-- 最後なぐる(100F)
------------------------------------------------------

shuchusen6 = entryEffectLife( spep_6, 906, 80, 0x00,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_6,  shuchusen6,  1.38,  1.38);
setEffScaleKey(  spep_6+80,  shuchusen6,  1.38,  1.38);
setEffMoveKey(  spep_6,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+80,  shuchusen6,  0,  0);
setEffRotateKey(  spep_6,  shuchusen6,  0);
setEffRotateKey(  spep_6+80,  shuchusen6,  0);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffAlphaKey(  spep_6+80,  shuchusen6,  255);


--***書き文字***
ct_dogon = entryEffectLife( spep_6 + 24,  10018, 42, 0x100, -1, 0, 18, 342.1 );  --ドゴォン

setEffShake(  spep_6 +24,  ct_dogon,  42,  10);  --揺れ

setEffMoveKey( spep_6 + 24, ct_dogon, 18, 342.1 , 0 );
setEffMoveKey( spep_6 + 58, ct_dogon, 18, 342.1 , 0 );
setEffMoveKey( spep_6 + 60, ct_dogon, 21.8, 353.5 , 0 );
setEffMoveKey( spep_6 + 62, ct_dogon, 26.5, 337.4 , 0 );
setEffMoveKey( spep_6 + 64, ct_dogon, 18, 342.1 , 0 );
setEffMoveKey( spep_6 + 66, ct_dogon, 18, 342.1 , 0 );

setEffScaleKey( spep_6 + 24, ct_dogon, 5.78, 5.78 );
setEffScaleKey( spep_6 + 26, ct_dogon, 4.66, 4.66 );
setEffScaleKey( spep_6 + 28, ct_dogon, 3.55, 3.55 );
setEffScaleKey( spep_6 + 30, ct_dogon, 3.79, 3.79 );
setEffScaleKey( spep_6 + 66, ct_dogon, 3.79, 3.79 );

setEffRotateKey( spep_6 + 24, ct_dogon, 0 );
setEffRotateKey( spep_6 + 66, ct_dogon, 0 );


--***敵の動き***
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 78, 1, 0 );
changeAnime( spep_6 + 0, 1, 106);
changeAnime( spep_6 + 24, 1, 108);

setMoveKey( spep_6 + 0, 1, -141.1, -15.8 , 0 );
setMoveKey( spep_6 + 2, 1, -102.6, -25.9 , 0 );
setMoveKey( spep_6 + 4, 1, -48.1, -11.9 , 0 );
setMoveKey( spep_6 + 6, 1, -5.5, -25.9 , 0 );
setMoveKey( spep_6 + 8, 1, 45, -7.9 , 0 );
setMoveKey( spep_6 + 10, 1, 48.7, -31.6 , 0 );
setMoveKey( spep_6 + 12, 1, 68.5, -7.4 , 0 );
setMoveKey( spep_6 + 14, 1, 72.2, -15.1 , 0 );
setMoveKey( spep_6 + 16, 1, 92, -6.9 , 0 );
setMoveKey( spep_6 + 18, 1, 99.7, -22.6 , 0 );
setMoveKey( spep_6 + 20, 1, 115.5, -6.3 , 0 );
setMoveKey( spep_6 + 23, 1, 115.2, -14.1 , 0 );
setMoveKey( spep_6+ 24, 1, 190.5, 18.1 , 0 );
setMoveKey( spep_6 + 26, 1, 190.1, -1.9 , 0 );
setMoveKey( spep_6 + 28, 1, 197.8, 18.1 , 0 );
setMoveKey( spep_6 + 30, 1, 197.5, 6.1 , 0 );
setMoveKey( spep_6 + 32, 1, 205.1, 18.1 , 0 );
setMoveKey( spep_6 + 34, 1, 196.8, 10.1 , 0 );
setMoveKey( spep_6 + 36, 1, 212.5, 18.1 , 0 );
setMoveKey( spep_6 + 38, 1, 212.1, 2.1 , 0 );
setMoveKey( spep_6 + 40, 1, 219.8, 18.1 , 0 );
setMoveKey( spep_6 + 42, 1, 211.5, 6.1 , 0 );
setMoveKey( spep_6 + 44, 1, 227.2, 18.1 , 0 );
setMoveKey( spep_6 + 46, 1, 222.8, 2.1 , 0 );
setMoveKey( spep_6 + 48, 1, 234.5, 18.1 , 0 );
setMoveKey( spep_6 + 50, 1, 230.2, 14.1 , 0 );
setMoveKey( spep_6 + 52, 1, 241.8, 18.1 , 0 );
setMoveKey( spep_6 + 54, 1, 241.5, 6.1 , 0 );
setMoveKey( spep_6 + 56, 1, 249.2, 18.1 , 0 );
setMoveKey( spep_6 + 58, 1, 248.9, 6.1 , 0 );
setMoveKey( spep_6 + 60, 1, 256.5, 18.1 , 0 );
setMoveKey( spep_6 + 62, 1, 256.2, 10.1 , 0 );
setMoveKey( spep_6 + 64, 1, 260.3, 18 , 0 );
setMoveKey( spep_6 + 66, 1, 405, 2 , 0 );
setMoveKey( spep_6 + 68, 1, 553.8, 18 , 0 );
setMoveKey( spep_6 + 70, 1, 694.6, 6 , 0 );
setMoveKey( spep_6 + 72, 1, 855.3, 18.1 , 0 );
setMoveKey( spep_6 + 74, 1, 996.1, 10.1 , 0 );
setMoveKey( spep_6 + 76, 1, 1152.9, 18.1 , 0 );
setMoveKey( spep_6 + 78, 1, 1293.7, 10.1 , 0 );

setScaleKey( spep_6 + 0, 1, 1.47, 1.47 );
setScaleKey( spep_6 + 8, 1, 1.47, 1.47 );
setScaleKey( spep_6 + 10, 1, 1.45, 1.45 );
setScaleKey( spep_6 + 12, 1, 1.44, 1.44 );
setScaleKey( spep_6 + 14, 1, 1.42, 1.42 );
setScaleKey( spep_6 + 16, 1, 1.41, 1.41 );
setScaleKey( spep_6 + 18, 1, 1.39, 1.39 );
setScaleKey( spep_6 + 20, 1, 1.38, 1.38 );
setScaleKey( spep_6 + 23, 1, 1.36, 1.36 );
setScaleKey( spep_6 + 24, 1, 2.27, 2.27 );
setScaleKey( spep_6 + 78, 1, 2.27, 2.27 );

setRotateKey( spep_6 + 0, 1, 7.9 );
setRotateKey( spep_6 + 2, 1, 9.6 );
setRotateKey( spep_6 + 4, 1, 11.4 );
setRotateKey( spep_6 + 6, 1, 13.2 );
setRotateKey( spep_6 + 8, 1, 15 );
setRotateKey( spep_6 + 23, 1, 15 );
setRotateKey( spep_6 + 24, 1, 14 );
setRotateKey( spep_6 + 26, 1, 14.1 );
setRotateKey( spep_6 + 60, 1, 14.1 );
setRotateKey( spep_6 + 62, 1, 14.2 );
setRotateKey( spep_6 + 64, 1, 14.1 );
setRotateKey( spep_6 + 76, 1, 14.1 );
setRotateKey( spep_6 + 78, 1, 14.2 );



--[[
setDisp( spep_6, 1, 1);
changeAnime( spep_6, 1, 108);

setMoveKey(  spep_6,       1,  -300,  -54,   0);
setMoveKey(  spep_6+10,    1,  200,  -54,   0);
setMoveKey(  spep_6+60,    1,  200,  -54,   0);
setMoveKey(  spep_6+78,    1,  1000,  -54,   0);
setScaleKey( spep_6,       1,  1.7, 1.7);
setScaleKey( spep_6+15,    1,  1.7, 1.7);
setScaleKey( spep_6+23,    1,  2.0, 2.0);
setScaleKey( spep_6+78,    1,  2.0, 2.0);
setRotateKey( spep_6,      1, 0 );
setRotateKey( spep_6+78,   1, 0 );

setShakeChara( spep_6, 1, 80, 20);  --揺れ
]]


--***SE***
playSe( spep_6, SE_04);
--playSe( 1051, SE_11);
playSe( spep_6+21, 1024);

--***エフェクト***
punch3 = entryEffectLife( spep_6, SP_07, 80,  0x100, -1,  0,  0,  0);   -- パンチ

setEffShake(spep_6, punch3, 80, 15);  --揺れ
setEffScaleKey(spep_6, punch3, 0.8, 0.8);
setEffScaleKey(  spep_6+80,  punch3,  0.8,  0.8);
setEffMoveKey(  spep_6,  punch3,  0,  0,  0);
setEffMoveKey(  spep_6+80,  punch3,  0,  0,  0);
setEffRotateKey(  spep_6,  punch3,  0);
setEffRotateKey(  spep_6+80,  punch3,  0);
setEffAlphaKey(  spep_6,  punch3,  255);
setEffAlphaKey(  spep_6+80,  punch3,  255);

--setEffScaleKey(452, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
--setDamage( 452, 1, 0);  -- ダメージ振動等

punch3_b = entryEffectLife( spep_6+24, SP_11, 56,  0x80, -1,  0,  0,  0);   -- 背景

setEffShake(  spep_6+24, punch3_b, 56, 15);  --揺れ
setEffMoveKey(  spep_6+24,  punch3_b,  0,  0,  0);
setEffMoveKey(  spep_6+80,  punch3_b,  0,  0,  0);
setEffScaleKey(  spep_6+24,  punch3_b,  1.0,  1.0);
setEffScaleKey(  spep_6+80,  punch3_b,  1.0,  1.0);
setEffRotateKey(  spep_6+24,  punch3_b,  0);
setEffRotateKey(  spep_6+80,  punch3_b,  0);
setEffAlphaKey(  spep_6+24,  punch3_b,  255);
setEffRotateKey(  spep_6+80,  punch3_b,  255);

entryFadeBg( spep_6, 0, 80, 0, 10, 10, 10, 255);          -- ベース暗め　背景
entryFade( spep_6+20, 2,  2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_6+74, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
spep_7 = spep_6+80;  --1108;
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_7, 1, 1);
changeAnime( spep_7+2, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_7,      1,  100,  0,   0);
setScaleKey( spep_7,      1,  1.0, 1.0);
setMoveKey(  spep_7+2,    1,  0,   0,   128);
setScaleKey( spep_7+2,    1,  0.1, 0.1);

setMoveKey(  spep_7+2,    1,    0,   0,   128);
setMoveKey(  spep_7+17,   1,  -60,  -200,  -100);

setRotateKey( spep_7+2,  1,  30 );
setRotateKey( spep_7+4,  1,  80 );
setRotateKey( spep_7+6,  1, 120 );
setRotateKey( spep_7+8,  1, 160 );
setRotateKey( spep_7+10,  1, 200 );
setRotateKey( spep_7+12,  1, 260 );
setRotateKey( spep_7+14,  1, 320 );
setRotateKey( spep_7+16,  1,   0 );

setShakeChara( spep_7+17, 1, 5,  10);
setShakeChara( spep_7+22, 1, 10, 20);

setDamage( spep_7+18, 1, 0);  -- ダメージ振動等

entryEffect( spep_7, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

-- 書き文字エントリー
ct_ga = entryEffectLife(  spep_7+17, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(  spep_7+17, ct_ga, 30, 10);  --揺れ
setEffRotateKey( spep_7+17, ct_ga, -40);
setEffScaleKey( spep_7+17, ct_ga, 4.0, 4.0);
setEffScaleKey( spep_7+18, ct_ga, 2.0, 2.0);
setEffScaleKey( spep_7+19, ct_ga, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct_ga, 4.0, 4.0);
setEffScaleKey( spep_7+21, ct_ga, 2.6, 2.6);
setEffScaleKey( spep_7+22, ct_ga, 3.8, 3.8);
setEffScaleKey( spep_7+112, ct_ga, 3.8, 3.8);
setEffAlphaKey( spep_7+17, ct_ga, 255);
setEffAlphaKey( spep_7+107, ct_ga, 255);
setEffAlphaKey( spep_7+117, ct_ga, 0);

--***SE***
playSe( spep_7, SE_11);
playSe( spep_7+12, SE_10);

shuchusen3 = entryEffectLife( spep_7+5, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_7+5, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_7+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+110);

else
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------

spep_1 = 0;

changeAnime(  spep_1, 0, 17);                       -- 溜め!

playSe( spep_1-6, SE_04);
playSe( spep_1+26, SE_01);
playSe( spep_1+40, SE_03);
playSe( spep_1+60, SE_03);
playSe( spep_1+80, SE_03);
--playSe( spep_1+100, SE_03);
--playSe( spep_1+120, SE_03);
playSe( spep_1+100, 43);

aura = entryEffect( spep_1+1, SP_01r, 0x100,  -1,  300,  0,  0);   -- 手のカメハメ波部
setEffShake(spep_1+1, aura, 159, 15);

entryFadeBg( spep_1, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_1+27, 906, 113, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_1+27,  shuchusen,  1.0,  1.0);
setEffScaleKey(  spep_1+140,  shuchusen,  1.0,  1.0);
setEffMoveKey(  spep_1+27,  shuchusen,  0,  0);
setEffMoveKey(  spep_1+140,  shuchusen,  0,  0);
setEffAlphaKey(  spep_1+27,  shuchusen,  255,  255);
setEffAlphaKey(  spep_1+140,  shuchusen,  255,  255);

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 30, 0, 19, 5);


-- 書き文字エントリー
ct_zuo = entryEffectLife( spep_1 + 44,  10012, 46, 0x100, -1, 0, 76, 259.9 );

setEffShake(  spep_1 +44,  ct_zuo,  46,  10);
setEffMoveKey( spep_1 + 44, ct_zuo, 76, 259.9 , 0 );
setEffMoveKey( spep_1 + 46, ct_zuo, 105, 300.9 , 0 );
setEffMoveKey( spep_1 + 80, ct_zuo, 116, 359.9 , 0 );
setEffMoveKey( spep_1 + 82, ct_zuo, 144.8, 339.1 , 0 );
setEffMoveKey( spep_1 + 84, ct_zuo, 132, 359.9 , 0 );
setEffMoveKey( spep_1 + 86, ct_zuo, 170.3, 329.5 , 0 );
setEffMoveKey( spep_1 + 88, ct_zuo, 148, 359.9 , 0 );
setEffMoveKey( spep_1 + 90, ct_zuo, 156, 359.9 , 0 );

setEffScaleKey( spep_1 + 44, ct_zuo, 1.1, 1.1 );
setEffScaleKey( spep_1 + 46, ct_zuo, 1.45, 1.45 );
setEffScaleKey( spep_1 + 48, ct_zuo, 1.8, 1.8 );
setEffScaleKey( spep_1 + 80, ct_zuo, 1.8, 1.8 );
setEffScaleKey( spep_1 + 82, ct_zuo, 2.04, 2.04 );
setEffScaleKey( spep_1 + 84, ct_zuo, 2.28, 2.28 );
setEffScaleKey( spep_1 + 86, ct_zuo, 2.52, 2.52 );
setEffScaleKey( spep_1 + 88, ct_zuo, 2.76, 2.76 );
setEffScaleKey( spep_1 + 90, ct_zuo, 3, 3 );

setEffRotateKey( spep_1 + 44, ct_zuo, 0 );

setEffAlphaKey( spep_1 + 44, ct_zuo, 255 );
setEffAlphaKey( spep_1 + 80, ct_zuo, 255 );
setEffAlphaKey( spep_1 + 82, ct_zuo, 204 );
setEffAlphaKey( spep_1 + 84, ct_zuo, 153 );
setEffAlphaKey( spep_1 + 86, ct_zuo, 102 );
setEffAlphaKey( spep_1 + 88, ct_zuo, 51 );
setEffAlphaKey( spep_1 + 90, ct_zuo, 0 );

-- 書き文字エントリー
--ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
--setEffShake(30, ct, 40, 7);
--setEffAlphaKey(30, ct, 255);
--setEffAlphaKey(50, ct, 255);
--setEffAlphaKey(70, ct, 0);
--setEffScaleKey( 30, ct, 0.1, 0.1);
--setEffScaleKey( 40, ct, 2.0, 2.0);

entryFade( spep_1+120, 5, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--**次の準備
spep_2 = spep_1+130;  --170

------------------------------------------------------
-- かめはめ波溜め！(570F)
------------------------------------------------------

shu = entryEffectLife(  spep_2+ 88 +98,  906,  40,  0x100,  -1,  0,  0,  0);

--***書き文字追加***
ct_dogaga = entryEffectLife( spep_2 + 40,  10017, 40, 0x100, -1, 0, 48, 282.2 );  --ドガガ

setEffShake(  spep_2+40,  ct_dogaga,  40,  10);
setEffMoveKey( spep_2 + 40, ct_dogaga, 48, 282.2 , 0 );
setEffMoveKey( spep_2 + 42, ct_dogaga, 48.1, 281.3 , 0 );
setEffMoveKey( spep_2 + 44, ct_dogaga, 47.3, 281 , 0 );
setEffMoveKey( spep_2 + 76, ct_dogaga, 47.3, 281 , 0 );
setEffMoveKey( spep_2 + 78, ct_dogaga, 46.9, 280.7 , 0 );
setEffMoveKey( spep_2 + 80, ct_dogaga, 46.7, 280.5 , 0 );

setEffScaleKey( spep_2 + 40, ct_dogaga, 1.88, 1.88 );
setEffScaleKey( spep_2 + 42, ct_dogaga, 3.07, 3.07 );
setEffScaleKey( spep_2 + 44, ct_dogaga, 2.75, 2.75 );
setEffScaleKey( spep_2 + 76, ct_dogaga, 2.75, 2.75 );
setEffScaleKey( spep_2 + 78, ct_dogaga, 3.67, 3.67 );
setEffScaleKey( spep_2 + 80, ct_dogaga, 4.58, 4.58 );

setEffRotateKey( spep_2 + 40, ct_dogaga, 22.3 );
setEffRotateKey( spep_2 + 44, ct_dogaga, 22.3 );
setEffRotateKey( spep_2 + 46, ct_dogaga, 22.5 );

setEffAlphaKey( spep_2 + 40, ct_dogaga, 255 );
setEffAlphaKey( spep_2 + 80, ct_dogaga, 255 );


ct_gah = entryEffectLife( spep_2+ 100 + 10,  10005, 16, 0x100, -1, 0, 176, 332 );  --ガッ
setEffMoveKey( spep_2+ 100 + 10, ct_gah, 176, 332 , 0 );
setEffMoveKey( spep_2+ 100 + 12, ct_gah, 176.1, 332 , 0 );
setEffMoveKey( spep_2+ 100 + 14, ct_gah, 176, 331.9 , 0 );
setEffMoveKey( spep_2+ 100 + 16, ct_gah, 176, 332 , 0 );

setEffScaleKey( spep_2+ 100 + 10, ct_gah, 0.64, 0.64 );
setEffScaleKey( spep_2+ 100 + 12, ct_gah, 1.04, 1.04 );

setEffRotateKey( spep_2+ 100 + 10, ct_gah, 12.9 );
setEffRotateKey( spep_2+ 100 + 12, ct_gah, 12.9 );
setEffRotateKey( spep_2+ 100 + 14, ct_gah, 8.7 );
setEffRotateKey( spep_2+ 100 + 16, ct_gah, 18.2 );
setEffRotateKey( spep_2+ 100 + 18, ct_gah, 10.3 );
setEffRotateKey( spep_2+ 100 + 20, ct_gah, 16 );

setEffAlphaKey( spep_2+ 100 + 10, ct_gah, 255 );
setEffAlphaKey( spep_2+ 100 + 20, ct_gah, 255 );
setEffAlphaKey( spep_2+ 100 + 22, ct_gah, 170 );
setEffAlphaKey( spep_2+ 100 + 24, ct_gah, 85 );
setEffAlphaKey( spep_2+ 100 + 26, ct_gah, 0 );

ct_baki = entryEffectLife( spep_2 + 100 + 88,  10020, 20, 0x100, -1, 0, -125.2, 353.4 );  --バキ
setEffMoveKey( spep_2 + 100 + 88, ct_baki, -125.2, 353.4 , 0 );
setEffMoveKey( spep_2 + 100 + 90, ct_baki, -125, 353.3 , 0 );
setEffMoveKey( spep_2 + 100 + 92, ct_baki, -124.8, 352.4 , 0 );
setEffMoveKey( spep_2 + 100 + 94, ct_baki, -125, 353.1 , 0 );
setEffMoveKey( spep_2 + 100 + 96, ct_baki, -125.2, 352.9 , 0 );
setEffMoveKey( spep_2 + 100 + 98, ct_baki, -125.1, 353 , 0 );
setEffMoveKey( spep_2 + 100 + 100, ct_baki, -125.1, 353.1 , 0 );
setEffMoveKey( spep_2 + 100 + 102, ct_baki, -125.2, 353.1 , 0 );
setEffMoveKey( spep_2 + 100 + 104, ct_baki, -125.2, 353 , 0 );

setEffScaleKey( spep_2 + 100 + 88, ct_baki, 1.32, 1.32 );
setEffScaleKey( spep_2 + 100 + 90, ct_baki, 1.49, 1.49 );
setEffScaleKey( spep_2 + 100 + 92, ct_baki, 2.55, 2.55 );
setEffScaleKey( spep_2 + 100 + 94, ct_baki, 1.79, 1.79 );
setEffScaleKey( spep_2 + 100 + 96, ct_baki, 1.79, 1.79 );
setEffScaleKey( spep_2 + 100 + 98, ct_baki, 1.71, 1.71 );
setEffScaleKey( spep_2 + 100 + 100, ct_baki, 1.7, 1.7 );
setEffScaleKey( spep_2 + 100 + 102, ct_baki, 1.69, 1.69 );
setEffScaleKey( spep_2 + 100 + 104, ct_baki, 1.68, 1.68 );
setEffScaleKey( spep_2 + 100 + 106, ct_baki, 1.67, 1.67 );
setEffScaleKey( spep_2 + 100 + 108, ct_baki, 1.66, 1.66 );

setEffRotateKey( spep_2 + 100 + 88, ct_baki, 0.5 );
setEffRotateKey( spep_2 + 100 + 90, ct_baki, -4.7 );
setEffRotateKey( spep_2 + 100 + 92, ct_baki, 10.3 );
setEffRotateKey( spep_2 + 100 + 94, ct_baki, 5 );
setEffRotateKey( spep_2 + 100 + 96, ct_baki, 15.2 );
setEffRotateKey( spep_2 + 100 + 98, ct_baki, 7.6 );
setEffRotateKey( spep_2 + 100 + 100, ct_baki, 7.9 );
setEffRotateKey( spep_2 + 100 + 102, ct_baki, 8.3 );
setEffRotateKey( spep_2 + 100 + 104, ct_baki, 8.6 );
setEffRotateKey( spep_2 + 100 + 106, ct_baki, 8.9 );
setEffRotateKey( spep_2 + 100 + 108, ct_baki, 9.2 );

setEffAlphaKey( spep_2 + 100 + 88, ct_baki, 255 );
setEffAlphaKey( spep_2 + 100 + 92, ct_baki, 255 );
setEffAlphaKey( spep_2 + 100 + 94, ct_baki, 223 );
setEffAlphaKey( spep_2 + 100 + 96, ct_baki, 191 );
setEffAlphaKey( spep_2 + 100 + 98, ct_baki, 159 );
setEffAlphaKey( spep_2 + 100 + 100, ct_baki, 128 );
setEffAlphaKey( spep_2 + 100 + 102, ct_baki, 96 );
setEffAlphaKey( spep_2 + 100 + 104, ct_baki, 64 );
setEffAlphaKey( spep_2 + 100 + 106, ct_baki, 32 );
setEffAlphaKey( spep_2 + 100 + 108, ct_baki, 0 );

ct_gah2 = entryEffectLife( spep_2 +100+130 + 26,  10005, 16, 0x100, -1, 0, 176, 332 );  --ガッ
setEffMoveKey( spep_2 +100+130 + 26, ct_gah2, 176, 332 , 0 );
setEffMoveKey( spep_2 +100+130 + 28, ct_gah2, 176.1, 332 , 0 );
setEffMoveKey( spep_2 +100+130 + 30, ct_gah2, 176, 331.9 , 0 );
setEffMoveKey( spep_2 +100+130 + 32, ct_gah2, 176, 332 , 0 );

setEffScaleKey( spep_2 +100+130 + 26, ct_gah2, 0.64, 0.64 );
setEffScaleKey( spep_2 +100+130 + 28, ct_gah2, 1.04, 1.04 );

setEffRotateKey( spep_2 +100+130 + 26, ct_gah2, 12.9 );
setEffRotateKey( spep_2 +100+130 + 28, ct_gah2, 12.9 );
setEffRotateKey( spep_2 +100+130 + 30, ct_gah2, 8.7 );
setEffRotateKey( spep_2 +100+130 + 32, ct_gah2, 18.2 );
setEffRotateKey( spep_2 +100+130 + 34, ct_gah2, 10.3 );
setEffRotateKey( spep_2 +100+130 + 36, ct_gah2, 16 );

setEffAlphaKey( spep_2 +100+130 + 26, ct_gah2, 255 );
setEffAlphaKey( spep_2 +100+130 + 36, ct_gah2, 255 );
setEffAlphaKey( spep_2 +100+130 + 38, ct_gah2, 170 );
setEffAlphaKey( spep_2 +100+130 + 40, ct_gah2, 85 );
setEffAlphaKey( spep_2 +100+130 + 42, ct_gah2, 0 );

ct_baki2 = entryEffectLife( spep_2+100+130 + 88,  10020, 20, 0x100, -1, 0, -125.2, 353.4 );
setEffMoveKey( spep_2+100+130 + 88, ct_baki2, -125.2, 353.4 , 0 );
setEffMoveKey( spep_2+100+130 + 90, ct_baki2, -125, 353.3 , 0 );
setEffMoveKey( spep_2+100+130 + 92, ct_baki2, -124.8, 352.4 , 0 );
setEffMoveKey( spep_2+100+130 + 94, ct_baki2, -125, 353.1 , 0 );
setEffMoveKey( spep_2+100+130 + 96, ct_baki2, -125.2, 352.9 , 0 );
setEffMoveKey( spep_2+100+130 + 98, ct_baki2, -125.1, 353 , 0 );
setEffMoveKey( spep_2+100+130 + 100, ct_baki2, -125.1, 353.1 , 0 );
setEffMoveKey( spep_2+100+130 + 102, ct_baki2, -125.2, 353.1 , 0 );
setEffMoveKey( spep_2+100+130 + 104, ct_baki2, -125.2, 353 , 0 );

setEffScaleKey( spep_2+100+130 + 88, ct_baki2, 1.32, 1.32 );
setEffScaleKey( spep_2+100+130 + 90, ct_baki2, 1.49, 1.49 );
setEffScaleKey( spep_2+100+130 + 92, ct_baki2, 2.55, 2.55 );
setEffScaleKey( spep_2+100+130 + 94, ct_baki2, 1.79, 1.79 );
setEffScaleKey( spep_2+100+130 + 96, ct_baki2, 1.79, 1.79 );
setEffScaleKey( spep_2+100+130 + 98, ct_baki2, 1.71, 1.71 );
setEffScaleKey( spep_2+100+130 + 100, ct_baki2, 1.7, 1.7 );
setEffScaleKey( spep_2+100+130 + 102, ct_baki2, 1.69, 1.69 );
setEffScaleKey( spep_2+100+130 + 104, ct_baki2, 1.68, 1.68 );
setEffScaleKey( spep_2+100+130 + 106, ct_baki2, 1.67, 1.67 );
setEffScaleKey( spep_2+100+130 + 108, ct_baki2, 1.66, 1.66 );


setEffRotateKey( spep_2+100+130 + 88, ct_baki2, 0.5 );
setEffRotateKey( spep_2+100+130 + 90, ct_baki2, -4.7 );
setEffRotateKey( spep_2+100+130 + 92, ct_baki2, 10.3 );
setEffRotateKey( spep_2+100+130 + 94, ct_baki2, 5 );
setEffRotateKey( spep_2+100+130 + 96, ct_baki2, 15.2 );
setEffRotateKey( spep_2+100+130 + 98, ct_baki2, 7.6 );
setEffRotateKey( spep_2+100+130 + 100, ct_baki2, 7.9 );
setEffRotateKey( spep_2+100+130 + 102, ct_baki2, 8.3 );
setEffRotateKey( spep_2+100+130 + 104, ct_baki2, 8.6 );
setEffRotateKey( spep_2+100+130 + 106, ct_baki2, 8.9 );
setEffRotateKey( spep_2+100+130 + 108, ct_baki2, 9.2 );

setEffAlphaKey( spep_2+100+130 + 88, ct_baki2, 255 );
setEffAlphaKey( spep_2+100+130 + 92, ct_baki2, 255 );
setEffAlphaKey( spep_2+100+130 + 94, ct_baki2, 223 );
setEffAlphaKey( spep_2+100+130 + 96, ct_baki2, 191 );
setEffAlphaKey( spep_2+100+130 + 98, ct_baki2, 159 );
setEffAlphaKey( spep_2+100+130 + 100, ct_baki2, 128 );
setEffAlphaKey( spep_2+100+130 + 102, ct_baki2, 96 );
setEffAlphaKey( spep_2+100+130 + 104, ct_baki2, 64 );
setEffAlphaKey( spep_2+100+130 + 106, ct_baki2, 32 );
setEffAlphaKey( spep_2+100+130 + 108, ct_baki2, 0 );



--***敵の動き***

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 +98 +128 + 138, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 +40, 1, 108 );
changeAnime( spep_2 +88 +98, 1,  106);
changeAnime( spep_2 +98 +128 + 24, 1, 108 );
changeAnime( spep_2 +98 +128 + 90, 1, 106);

setMoveKey( spep_2 + 0, 1, -1041.4, 32.1 , 0 );
setMoveKey( spep_2 + 2, 1, -823.7, 16.1 , 0 );
setMoveKey( spep_2 + 4, 1, -589.9, 32.1 , 0 );
setMoveKey( spep_2 + 6, 1, -368.2, 24.1 , 0 );
setMoveKey( spep_2 + 8, 1, -138.4, 32.1 , 0 );
setMoveKey( spep_2 + 10, 1, -101.6, 25.3 , 0 );
setMoveKey( spep_2 + 12, 1, -56.7, 34.6 , 0 );
setMoveKey( spep_2 + 14, 1, -45.2, 30.7 , 0 );
setMoveKey( spep_2 + 16, 1, -9.7, 34.7 , 0 );
setMoveKey( spep_2 + 18, 1, -10.6, 26.8 , 0 );
setMoveKey( spep_2 + 20, 1, -3.4, 34.9 , 0 );
setMoveKey( spep_2 + 22, 1, -8.3, 27 , 0 );
setMoveKey( spep_2 + 24, 1, 2.9, 35.1 , 0 );
setMoveKey( spep_2 + 26, 1, 2, 31.2 , 0 );
setMoveKey( spep_2 + 28, 1, 9.1, 35.3 , 0 );
setMoveKey( spep_2 + 30, 1, 8.3, 27.3 , 0 );
setMoveKey( spep_2 + 32, 1, 15.4, 35.4 , 0 );
setMoveKey( spep_2 + 34, 1, 10.6, 31.5 , 0 );
setMoveKey( spep_2 + 36, 1, 21.7, 35.6 , 0 );
setMoveKey( spep_2 + 39, 1, 75.6, 33.2 , 0 );
setMoveKey( spep_2 + 40, 1, 80.9, 31.6 , 0 );
setMoveKey( spep_2 + 42, 1, 75.3, 23.9 , 0 );
setMoveKey( spep_2 + 44, 1, 85.6, 32.2 , 0 );
setMoveKey( spep_2 + 46, 1, 84, 24.4 , 0 );
setMoveKey( spep_2 + 48, 1, 90.4, 32.7 , 0 );
setMoveKey( spep_2 + 50, 1, 105.6, 28.7 , 0 );
setMoveKey( spep_2 + 52, 1, 113.6, 32.7 , 0 );
setMoveKey( spep_2 + 54, 1, 111.3, 25.9 , 0 );
setMoveKey( spep_2 + 56, 1, 116.9, 35.2 , 0 );
setMoveKey( spep_2 + 58, 1, 114.6, 28.4 , 0 );
setMoveKey( spep_2 + 60, 1, 120.2, 37.6 , 0 );
setMoveKey( spep_2 + 62, 1, 132.9, 33.7 , 0 );
setMoveKey( spep_2 + 64, 1, 145.1, 37.6 , 0 );
setMoveKey( spep_2 + 66, 1, 142.8, 33.7 , 0 );
setMoveKey( spep_2 + 68, 1, 159.2, 37.6 , 0 );
setMoveKey( spep_2 + 70, 1, 163.7, 29.6 , 0 );
setMoveKey( spep_2 + 72, 1, 180.1, 37.6 , 0 );
setMoveKey( spep_2 + 74, 1, 192.6, 29.6 , 0 );
setMoveKey( spep_2 + 76, 1, 198.4, 37.6 , 0 );
setMoveKey( spep_2 + 78, 1, 196.2, 29.6 , 0 );
setMoveKey( spep_2 + 80, 1, 202, 37.6 , 0 );
setMoveKey( spep_2 + 82, 1, 199.8, 33.7 , 0 );
setMoveKey( spep_2 + 84, 1, 205.6, 37.6 , 0 );
setMoveKey( spep_2 + 86, 1, 203.4, 25.6 , 0 );
setMoveKey( spep_2 + 88, 1, 209.2, 37.6 , 0 );
setMoveKey( spep_2 + 90, 1, 203, 29.6 , 0 );
setMoveKey( spep_2 + 92, 1, 212.8, 37.6 , 0 );
setMoveKey( spep_2 + 94, 1, 210.6, 33.7 , 0 );
setMoveKey( spep_2 + 96, 1, 216.4, 37.6 , 0 );
setMoveKey( spep_2 + 98, 1, 214.2, 25.6 , 0 );

setMoveKey( spep_2+98 + 0, 1, 218.2, 37.7 , 0 );
setMoveKey( spep_2+98 + 2, 1, 192.4, 13 , 0 );
setMoveKey( spep_2+98 + 4, 1, 174.7, 12.3 , 0 );
setMoveKey( spep_2+98 + 6, 1, 164.9, 11.6 , 0 );
setMoveKey( spep_2+98 + 8, 1, 147.2, 3 , 0 );
setMoveKey( spep_2+98 + 10, 1, 125.4, -9.7 , 0 );
setMoveKey( spep_2+98 + 12, 1, 130.7, -7.2 , 0 );
setMoveKey( spep_2+98 + 14, 1, 127.9, -16.7 , 0 );
setMoveKey( spep_2+98 + 16, 1, 133.2, -10.2 , 0 );
setMoveKey( spep_2+98 + 18, 1, 130.4, -19.7 , 0 );
setMoveKey( spep_2+98 + 20, 1, 135.7, -13.2 , 0 );
setMoveKey( spep_2+98 + 22, 1, 132.9, -26.7 , 0 );
setMoveKey( spep_2+98 + 24, 1, 138.2, -16.2 , 0 );
setMoveKey( spep_2+98 + 26, 1, 131.4, -25.7 , 0 );
setMoveKey( spep_2+98 + 28, 1, 166.5, -57.3 , 0 );
setMoveKey( spep_2+98 + 30, 1, 185.6, -104.8 , 0 );
setMoveKey( spep_2+98 + 32, 1, 220.8, -136.4 , 0 );
setMoveKey( spep_2+98 + 34, 1, 243.9, -180 , 0 );
setMoveKey( spep_2+98 + 36, 1, 275, -215.5 , 0 );
setMoveKey( spep_2+98 + 38, 1, 298.1, -263.1 , 0 );
setMoveKey( spep_2+98 + 40, 1, 329.2, -294.7 , 0 );
setMoveKey( spep_2+98 + 42, 1, 348.3, -342.2 , 0 );
setMoveKey( spep_2+98 + 44, 1, 383.5, -373.8 , 0 );
setMoveKey( spep_2+98 + 46, 1, 378.5, -385.8 , 0 );
setMoveKey( spep_2+98 + 48, 1, 389.5, -381.8 , 0 );
setMoveKey( spep_2+98 + 50, 1, 388.5, -397.8 , 0 );
setMoveKey( spep_2+98 + 52, 1, 395.5, -389.8 , 0 );
setMoveKey( spep_2+98 + 54, 1, 314.4, -276.2 , 0 );
setMoveKey( spep_2+98 + 56, 1, 241.4, -146.6 , 0 );
setMoveKey( spep_2+98 + 58, 1, 156.3, -25 , 0 );
setMoveKey( spep_2+98 + 60, 1, 87.3, 96.6 , 0 );
setMoveKey( spep_2+98 + 62, 1, 54.1, 116.7 , 0 );
setMoveKey( spep_2+98 + 64, 1, 45, 152.9 , 0 );
setMoveKey( spep_2+98 + 66, 1, 40.4, 141.6 , 0 );
setMoveKey( spep_2+98 + 68, 1, 43.9, 154.4 , 0 );
setMoveKey( spep_2+98 + 70, 1, 35.3, 147.1 , 0 );
setMoveKey( spep_2+98 + 72, 1, 42.8, 155.8 , 0 );
setMoveKey( spep_2+98 + 74, 1, 38.2, 152.5 , 0 );
setMoveKey( spep_2+98 + 76, 1, 41.7, 157.3 , 0 );
setMoveKey( spep_2+98 + 78, 1, 33.1, 150 , 0 );
setMoveKey( spep_2+98 + 80, 1, 40.6, 158.7 , 0 );
setMoveKey( spep_2+98 + 82, 1, 32, 151.4 , 0 );
setMoveKey( spep_2+98 + 84, 1, 39.5, 160.2 , 0 );
setMoveKey( spep_2+98 + 87, 1, 31, 152.9 , 0 );
setMoveKey( spep_2+98 + 88, 1, 4.9, 97.9 , 0 );
setMoveKey( spep_2+98 + 90, 1, -0.6, 86.9 , 0 );
setMoveKey( spep_2+98 + 92, 1, 1.9, 99.9 , 0 );
setMoveKey( spep_2+98 + 94, 1, -11.6, 92.9 , 0 );
setMoveKey( spep_2+98 + 96, 1, -1.1, 101.9 , 0 );
setMoveKey( spep_2+98 + 98, 1, -6.6, 90.9 , 0 );
setMoveKey( spep_2+98 + 100, 1, -4.1, 103.9 , 0 );
setMoveKey( spep_2+98 + 102, 1, -13.6, 96.9 , 0 );
setMoveKey( spep_2+98 + 104, 1, -7.1, 105.9 , 0 );
setMoveKey( spep_2+98 + 106, 1, -17.1, 101.9 , 0 );
setMoveKey( spep_2+98 + 108, 1, -53.6, 163 , 0 );
setMoveKey( spep_2+98 + 110, 1, -106.1, 208 , 0 );
setMoveKey( spep_2+98 + 112, 1, -142.7, 269 , 0 );
setMoveKey( spep_2+98 + 114, 1, -195.2, 314.1 , 0 );
setMoveKey( spep_2+98 + 116, 1, -189.2, 324.1 , 0 );
setMoveKey( spep_2+98 + 118, 1, -196.5, 315.4 , 0 );
setMoveKey( spep_2+98 + 120, 1, -195.9, 330.7 , 0 );
setMoveKey( spep_2+98 + 122, 1, -207.2, 326.1 , 0 );
setMoveKey( spep_2+98 + 124, 1, -202.5, 337.4 , 0 );
setMoveKey( spep_2+98 + 126, 1, -213.8, 332.7 , 0 );
setMoveKey( spep_2+98 + 128, 1, -209.2, 344.1 , 0 );

setMoveKey( spep_2 +98 +128 + 2, 1, -172, 263.7 , 0 );
setMoveKey( spep_2 +98 +128 + 4, 1, -118.8, 207.3 , 0 );
setMoveKey( spep_2 +98 +128 + 6, 1, -81.5, 130.9 , 0 );
setMoveKey( spep_2 +98 +128 + 8, 1, -28.3, 70.5 , 0 );
setMoveKey( spep_2 +98 +128 + 10, 1, 8.9, -9.9 , 0 );
setMoveKey( spep_2 +98 +128 + 12, 1, 18.1, -2.7 , 0 );
setMoveKey( spep_2 +98 +128 + 14, 1, 15.3, -19.5 , 0 );
setMoveKey( spep_2 +98 +128 + 16, 1, 20.5, -12.3 , 0 );
setMoveKey( spep_2 +98 +128 + 18, 1, 17.7, -29.1 , 0 );
setMoveKey( spep_2 +98 +128 + 20, 1, 22.9, -21.9 , 0 );
setMoveKey( spep_2 +98 +128 + 23, 1, 20.9, -45.9 , 0 );
setMoveKey( spep_2 +98 +128 + 24, 1, 99.2, -56.6 , 0 );
setMoveKey( spep_2 +98 +128 + 26, 1, 95.8, -70.1 , 0 );
setMoveKey( spep_2 +98 +128 + 28, 1, 100.3, -59.7 , 0 );
setMoveKey( spep_2 +98 +128 + 30, 1, 96.9, -73.2 , 0 );
setMoveKey( spep_2 +98 +128 + 32, 1, 101.4, -62.8 , 0 );
setMoveKey( spep_2 +98 +128 + 34, 1, 94, -76.3 , 0 );
setMoveKey( spep_2 +98 +128 + 36, 1, 102.5, -65.9 , 0 );
setMoveKey( spep_2 +98 +128 + 38, 1, 99.1, -79.4 , 0 );
setMoveKey( spep_2 +98 +128 + 40, 1, 103.1, -67.4 , 0 );
setMoveKey( spep_2 +98 +128 + 42, 1, 134.6, -163.6 , 0 );
setMoveKey( spep_2 +98 +128 + 44, 1, 182.2, -251.7 , 0 );
setMoveKey( spep_2 +98 +128 + 46, 1, 213.7, -351.9 , 0 );
setMoveKey( spep_2 +98 +128 + 48, 1, 261.3, -436 , 0 );
setMoveKey( spep_2 +98 +128 + 50, 1, 254.6, -446 , 0 );
setMoveKey( spep_2 +98 +128 + 52, 1, 263.8, -440 , 0 );
setMoveKey( spep_2 +98 +128 + 54, 1, 257.1, -450 , 0 );
setMoveKey( spep_2 +98 +128 + 56, 1, 266.3, -444 , 0 );
setMoveKey( spep_2 +98 +128 + 58, 1, 267.6, -446 , 0 );
setMoveKey( spep_2 +98 +128 + 60, 1, 260.8, -456 , 0 );
setMoveKey( spep_2 +98 +128 + 62, 1, 270.1, -450 , 0 );
setMoveKey( spep_2 +98 +128 + 64, 1, 263.3, -460 , 0 );
setMoveKey( spep_2 +98 +128 + 66, 1, 230, -319.9 , 0 );
setMoveKey( spep_2 +98 +128 + 68, 1, 180.8, -195.7 , 0 );
setMoveKey( spep_2 +98 +128 + 70, 1, 147.5, -55.6 , 0 );
setMoveKey( spep_2 +98 +128 + 72, 1, 102.3, 60.6 , 0 );
setMoveKey( spep_2 +98 +128 + 74, 1, 65, 208.7 , 0 );
setMoveKey( spep_2 +98 +128 + 76, 1, 61.3, 185.3 , 0 );
setMoveKey( spep_2 +98 +128 + 78, 1, 65.6, 177.9 , 0 );
setMoveKey( spep_2 +98 +128 + 80, 1, 61.8, 154.4 , 0 );
setMoveKey( spep_2 +98 +128 + 82, 1, 66.1, 147 , 0 );
setMoveKey( spep_2 +98 +128 + 84, 1, 62.4, 123.6 , 0 );
setMoveKey( spep_2 +98 +128 + 86, 1, 66.7, 116.2 , 0 );
setMoveKey( spep_2 +98 +128 + 89, 1, 63, 88.7 , 0 );
setMoveKey( spep_2 +98 +128 + 90, 1, -19, 80.1 , 0 );
setMoveKey( spep_2 +98 +128 + 92, 1, -23, 77.1 , 0 );
setMoveKey( spep_2 +98 +128 + 94, 1, -19, 90.1 , 0 );
setMoveKey( spep_2 +98 +128 + 96, 1, -23, 87.1 , 0 );
setMoveKey( spep_2 +98 +128 + 98, 1, -19, 100.1 , 0 );
setMoveKey( spep_2 +98 +128 + 100, 1, -23, 97.1 , 0 );
setMoveKey( spep_2 +98 +128 + 102, 1, -19, 110.1 , 0 );
setMoveKey( spep_2 +98 +128 + 104, 1, -23, 103.1 , 0 );
setMoveKey( spep_2 +98 +128 + 106, 1, -19, 120.1 , 0 );
setMoveKey( spep_2 +98 +128 + 108, 1, -23, 82.1 , 0 );
setMoveKey( spep_2 +98 +128 + 110, 1, -19, 60.1 , 0 );
setMoveKey( spep_2 +98 +128 + 112, 1, -23, 22.1 , 0 );
setMoveKey( spep_2 +98 +128 + 114, 1, -19, 0.1 , 0 );
setMoveKey( spep_2 +98 +128 + 116, 1, -23, -10.9 , 0 );
setMoveKey( spep_2 +98 +128 + 118, 1, -19, -5.9 , 0 );
setMoveKey( spep_2 +98 +128 + 120, 1, -23, -16.9 , 0 );
setMoveKey( spep_2 +98 +128 + 122, 1, -19, -11.9 , 0 );
setMoveKey( spep_2 +98 +128 + 124, 1, -23, -22.9 , 0 );
setMoveKey( spep_2 +98 +128 + 126, 1, -19, -17.9 , 0 );
setMoveKey( spep_2 +98 +128 + 128, 1, -23, -43.9 , 0 );
setMoveKey( spep_2 +98 +128 + 130, 1, -19, -37.9 , 0 );
setMoveKey( spep_2 +98 +128 + 132, 1, -27, -55.9 , 0 );
setMoveKey( spep_2 +98 +128 + 134, 1, -19, -57.9 , 0 );
setMoveKey( spep_2 +98 +128 + 136, 1, -27, -75.9 , 0 );
setMoveKey( spep_2 +98 +128 + 138, 1, -19, -77.9 , 0 );

setScaleKey( spep_2 + 0, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 2, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 4, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 6, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 8, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 10, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 12, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 16, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 18, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 20, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 22, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 24, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 26, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 28, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 30, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 32, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 34, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 36, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 39, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 40, 1, 2, 2 );
setScaleKey( spep_2 + 42, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 44, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 46, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 48, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 98, 1, 2.04, 2.04 );

setScaleKey( spep_2+98 + 2, 1, 2.08, 2.08 );
setScaleKey( spep_2+98 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_2+98 + 6, 1, 2.17, 2.17 );
setScaleKey( spep_2+98 + 8, 1, 2.21, 2.21 );
setScaleKey( spep_2+98 + 10, 1, 2.26, 2.26 );
setScaleKey( spep_2+98 + 26, 1, 2.26, 2.26 );
setScaleKey( spep_2+98 + 28, 1, 2.25, 2.25 );
setScaleKey( spep_2+98 + 30, 1, 2.25, 2.25 );
setScaleKey( spep_2+98 + 32, 1, 2.24, 2.24 );
setScaleKey( spep_2+98 + 34, 1, 2.24, 2.24 );
setScaleKey( spep_2+98 + 36, 1, 2.23, 2.23 );
setScaleKey( spep_2+98 + 38, 1, 2.23, 2.23 );
setScaleKey( spep_2+98 + 40, 1, 2.22, 2.22 );
setScaleKey( spep_2+98 + 42, 1, 2.22, 2.22 );
setScaleKey( spep_2+98 + 44, 1, 2.21, 2.21 );
setScaleKey( spep_2+98 + 52, 1, 2.21, 2.21 );
setScaleKey( spep_2+98 + 54, 1, 2.17, 2.17 );
setScaleKey( spep_2+98 + 56, 1, 2.13, 2.13 );
setScaleKey( spep_2+98 + 58, 1, 2.08, 2.08 );
setScaleKey( spep_2+98 + 60, 1, 2.04, 2.04 );
setScaleKey( spep_2+98 + 62, 1, 2.01, 2.01 );
setScaleKey( spep_2+98 + 64, 1, 1.98, 1.98 );
setScaleKey( spep_2+98 + 87, 1, 1.98, 1.98 );
setScaleKey( spep_2+98 + 88, 1, 1.92, 1.92 );
setScaleKey( spep_2+98 + 106, 1, 1.92, 1.92 );
setScaleKey( spep_2+98 + 108, 1, 1.9, 1.9 );
setScaleKey( spep_2+98 + 110, 1, 1.89, 1.89 );
setScaleKey( spep_2+98 + 112, 1, 1.87, 1.87 );
setScaleKey( spep_2+98 + 114, 1, 1.86, 1.86 );
setScaleKey( spep_2+98 + 116, 1, 1.86, 1.86 );
setScaleKey( spep_2+98 + 118, 1, 1.85, 1.85 );
setScaleKey( spep_2+98 + 122, 1, 1.85, 1.85 );
setScaleKey( spep_2+98 + 128, 1, 1.84, 1.84 );

setScaleKey( spep_2 +98 +128 + 23, 1, 1.84, 1.84 );
setScaleKey( spep_2 +98 +128 + 24, 1, 1.98, 1.98 );
setScaleKey( spep_2 +98 +128 + 74, 1, 1.98, 1.98 );
setScaleKey( spep_2 +98 +128 + 76, 1, 1.97, 1.97 );
setScaleKey( spep_2 +98 +128 + 89, 1, 1.97, 1.97 );
setScaleKey( spep_2 +98 +128 + 90, 1, 1.92, 1.92 );
setScaleKey( spep_2 +98 +128 + 138, 1, 1.92, 1.92 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 98, 1, 0 );
setRotateKey( spep_2+98 + 87, 1, 0 );
setRotateKey( spep_2+98 + 88, 1, 8.5 );
setRotateKey( spep_2+98 + 128, 1, 8.5 );

setRotateKey( spep_2 +98 +128 + 23, 1, 8.5 );
setRotateKey( spep_2 +98 +128 + 24, 1, 29.5 );
setRotateKey( spep_2 +98 +128 + 26, 1, 29.8 );
setRotateKey( spep_2 +98 +128 + 28, 1, 30.2 );
setRotateKey( spep_2 +98 +128 + 30, 1, 30.6 );
setRotateKey( spep_2 +98 +128 + 32, 1, 31 );
setRotateKey( spep_2 +98 +128 + 34, 1, 31.4 );
setRotateKey( spep_2 +98 +128 + 36, 1, 31.7 );
setRotateKey( spep_2 +98 +128 + 38, 1, 32.1 );
setRotateKey( spep_2 +98 +128 + 64, 1, 32.1 );
setRotateKey( spep_2 +98 +128 + 66, 1, 35.1 );
setRotateKey( spep_2 +98 +128 + 68, 1, 38 );
setRotateKey( spep_2 +98 +128 + 70, 1, 41 );
setRotateKey( spep_2 +98 +128 + 72, 1, 43.9 );
setRotateKey( spep_2 +98 +128 + 74, 1, 46.9 );
setRotateKey( spep_2 +98 +128 + 89, 1, 46.9 );
setRotateKey( spep_2 +98 +128 + 90, 1, 30 );
setRotateKey( spep_2 +98 +128 + 138, 1, 30 );


--[[
setDisp(spep_2-1, 1, 1);
setAnimeLoop( spep_2, 1, 1);
setAnimeLoop( spep_2+66, 1, 1);
changeAnime( spep_2-1, 1, 100);
changeAnime( spep_2+65, 1, 108);

setScaleKey(   spep_2,   1, 3.5, 3.5);
setScaleKey(   spep_2+20,   1, 1.7, 1.7);
setScaleKey(   spep_2+40,   1, 1.7, 1.7);
setScaleKey(   spep_2+65,   1, 2.0, 2.0);
setScaleKey(   spep_2+145,   1, 2.0, 2.0);
setScaleKey(   spep_2+163,   1, 1.7, 1.7);
setScaleKey(   spep_2+180,   1, 1.7, 1.7);
setScaleKey(   spep_2+183,   1, 2.0, 2.0);
setScaleKey(   spep_2+570,   1, 2.0, 2.0);

setMoveKey(  spep_2,       1,  -700,  0,   -100);
setMoveKey(  spep_2+20,    1,   0,    0,   0);
setMoveKey(  spep_2+50,    1,   100,  0,   -10);
setMoveKey(  spep_2+140,    1,  200,  0,   -10);
setMoveKey(  spep_2+145,    1,  200,  0,   -10);
setMoveKey(  spep_2+163,    1,  250,  -250,   0);
setMoveKey(  spep_2+180,    1,  100,  -70,   -10);
setMoveKey(  spep_2+213,    1,  100,  -70,   -10);
setMoveKey(  spep_2+223,    1,  300,  -300,   -10);
setMoveKey(  spep_2+233,    1,  300,  -300,   -10);
setMoveKey(  spep_2+253,    1,  50,   50,   -10);
setMoveKey(  spep_2+317,    1,  50,   50,   -10);
setMoveKey(  spep_2+327,    1,  -300,  300,   -10);
setMoveKey(  spep_2+342,    1,  -300,  300,   -10);
setMoveKey(  spep_2+366,    1,  60,  -4,   -10);
setMoveKey(  spep_2+426,    1,  60,  -4,   -10);
setMoveKey(  spep_2+449,    1,  250,  -300,   -10);
setMoveKey(  spep_2+463,    1,  250,  -300,   -10);
setMoveKey(  spep_2+478,    1,  40,  100,   -10);
setMoveKey(  spep_2+519,    1,  40,  50,   -10);
setMoveKey(  spep_2+570,    1,  40,  50,   -10);

setRotateKey( spep_2+411,  1,  0 );
setRotateKey( spep_2+412,  1, 50 );
setRotateKey( spep_2+570,  1, 50 );

setShakeChara( spep_2, 1, 570, 20);  --揺れ
]]
--***エフェクト***
punch1 = entryEffect( spep_2, SP_02r, 0x100,      -1,  300,  0,  0);   -- 初撃
setEffScaleKey(  spep_2, punch1, 0.8, 0.8);
setEffScaleKey(  spep_2+150, punch1, 0.8, 0.8);

kick1= entryEffect( spep_2+98, SP_03r, 0x100,      -1,  300,  0,  0);   -- 蹴り
setEffScaleKey(  spep_2+98, kick1, 0.8, 0.8);
--setEffScaleKey(  spep_2+361,  kick1,  0.8,  0.8);

punch2 = entryEffect( spep_2+98+128, SP_04r, 0x100,      -1,  300,  0,  0);   -- 最後の打撃
setEffScaleKey(spep_2+98+128, punch2, 0.8, 0.8);
--setEffScaleKey(spep_2+567, punch2, 0.8, 0.8);

shu = entryEffectLife(  spep_2+ 88 +98,  906,  40,  0x100,  -1,  0,  0,  0);

--***流線***

ryu1 = entryEffectLife( spep_2, 920, 370, 0x80,  -1,  0,  0,  0); -- 流線

setEffMoveKey(  spep_2,  ryu1,  0,  0);

setEffScaleKey(  spep_2,  ryu1,  1.61,  1.10);
setEffScaleKey(  spep_2+100,  ryu1,  1.61,  1.10);
setEffScaleKey(  spep_2+102,  ryu1,  2.75,  1.56);
setEffScaleKey(  spep_2+370,  ryu1,  2.75,  1.56);

setEffRotateKey(  spep_2,  ryu1,  -180);
setEffRotateKey(  spep_2+100,  ryu1,  -180);
setEffRotateKey(  spep_2+ 100 + 12, ryu1, -128.6);
setEffRotateKey(  spep_2+ 100 + 130, ryu1, -128.6);
setEffRotateKey(  spep_2+ 100 + 130 +70,  ryu1, -128.6);
--setEffRotateKey(  spep_2+ 100 + 130 +74,  ryu1, -156.6);
--setEffRotateKey(  spep_2+ 100 + 130 +84,  ryu1, 132.4);
setEffRotateKey(  spep_2+ 100 + 130 +96, ryu1,  -90);
setEffRotateKey(  spep_2+ 100 + 130 +140, ryu1, -90);

setEffAlphaKey(  spep_2,  ryu1,  255);
setEffAlphaKey(  spep_2+100 + 72,  ryu1,  255);
setEffAlphaKey(  spep_2+100 + 74,  ryu1,  0);
setEffAlphaKey(  spep_2+88  +98,  ryu1,  0);
setEffAlphaKey(  spep_2+88  +100,  ryu1,  255);
setEffAlphaKey(  spep_2+100  +130 +140,  ryu1,  255);




--[[
--***流線***
ryu = entryEffectLife( spep_2, 920, 225, 0x80,  -1,  0,  0,  0); -- 流線
setEffScaleKey(spep_2, ryu, 1.0, 1.0);
setEffScaleKey(spep_2+145, ryu, 1.0, 1.0);
setEffScaleKey(spep_2+165, ryu, 2.0, 2.0);
setEffScaleKey(spep_2+225, ryu, 2.0, 2.0);
setEffRotateKey(spep_2+145, ryu, 0);
setEffRotateKey(spep_2+165, ryu, 55);
setEffRotateKey(spep_2+255, ryu, 55);

ryu2 = entryEffectLife( spep_2+245, 920, 110, 0x80,  -1,  0,  0,  0); -- 流線

setEffScaleKey(spep_2+245, ryu2, 2.0, 2.0);
setEffScaleKey(spep_2+355, ryu2, 2.0, 2.0);
setEffRotateKey(spep_2+245, ryu2, -120);
setEffRotateKey(spep_2+270, ryu2, -120);
setEffRotateKey(spep_2+280, ryu2, -90);
setEffRotateKey(spep_2+355, ryu2, -90);
setEffAlphaKey(spep_2+245, ryu2,0);
setEffAlphaKey(spep_2+248, ryu2,255);
setEffAlphaKey(spep_2+355, ryu2,255);
]]

--[[
ryu3 = entryEffectLife( spep_2+414, 920, 44, 0x80,  -1,  0,  0,  0); -- 流線

setEffScaleKey(spep_2+414, ryu3, 2.0, 2.0);
setEffScaleKey(spep_2+458, ryu3, 2.0, 2.0);
setEffRotateKey(spep_2+414, ryu3, 55);
setEffRotateKey(spep_2+458, ryu3, 55);
setEffAlphaKey(spep_2+414, ryu3,0);
setEffAlphaKey(spep_2+417, ryu3,255);
setEffAlphaKey(spep_2+458, ryu3,255);

ryu4 = entryEffectLife( spep_2+480, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線

setEffScaleKey(spep_2+480, ryu4, 2.0, 2.0);
setEffScaleKey(spep_2+570, ryu4, 2.0, 2.0);
setEffRotateKey(spep_2+480, ryu4, -270);
setEffRotateKey(spep_2+570, ryu4, -270);
]]
--***集中線***
shuchusen1 = entryEffectLife( spep_2+65, 906, 505, 0x80,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2+65,  shuchusen1,  1.0,  1.0);
setEffScaleKey(  spep_2+570,  shuchusen1,  1.0,  1.0);
setEffRotateKey(  spep_2+65,  shuchusen1,  0);
setEffRotateKey(  spep_2+570,  shuchusen1,  0);
setEffAlphaKey(  spep_2+65,  shuchusen1,  255);
setEffAlphaKey(  spep_2+155,  shuchusen1,  255);
setEffAlphaKey(  spep_2+156,  shuchusen1,  0);
setEffAlphaKey(  spep_2+197,  shuchusen1,  0);
setEffAlphaKey(  spep_2+198,  shuchusen1,  255);
setEffAlphaKey(  spep_2+228,  shuchusen1,  255);
setEffAlphaKey(  spep_2+229,  shuchusen1,  0);
setEffAlphaKey(  spep_2+230,  shuchusen1,  0);
setEffAlphaKey(  spep_2+349,  shuchusen1,  0);
setEffAlphaKey(  spep_2+350,  shuchusen1,  255);
setEffAlphaKey(  spep_2+570,  shuchusen1,  255);

--shuchusen = entryEffectLife( spep_2+198, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
--shuchusen = entryEffectLife( spep_2+350, 906, 220, 0x100,  -1, 0,  0,  0);   -- 集中線

entryFadeBg( spep_2, 0, 570, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFade(   spep_2+360, 8, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
--ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
--setEffShake(90, ct, 40, 8);
--setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_2+20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

playSe( spep_2+20, 43);  --瞬間移動
playSe( spep_2+40,1009);
playSe( spep_2+50,1001);
playSe( spep_2+60,1009);
playSe( spep_2+83,43);

playSe( spep_2+100+20,1009);
playSe( spep_2+100+40, 43);  --瞬間移動
playSe( spep_2+100+75, 43);  --瞬間移動
playSe( spep_2+100+90, 1010);
--playSe( spep_2+100+120, 43);  --瞬間移動

playSe( spep_2+100+130+20, 43);  --瞬間移動
playSe( spep_2+100+130+28,1010);
playSe( spep_2+100+130+50, 43);  --瞬間移動
--playSe( spep_2+387, 43);  --瞬間移動
playSe( spep_2+100+130+90,1011);
--playSe( spep_2+455, 43);  --瞬間移動
--playSe( spep_2+518, 1011);

entryFade( spep_2+360, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);

--**次の準備
spep_3 = spep_2+370;  --740
------------------------------------------------------
-- ナビ！(110F)
------------------------------------------------------
--***キャラの動き***
setDisp(  spep_3-1, 1, 0);
setMoveKey(   spep_3,   0,    -1100, -54,   0);
setMoveKey(   spep_3+105,   0,    -1100, -54,   0);

shuchusen2 = entryEffectLife( spep_3, 906, 113, 0x00,  -1, 0,  0,  0);   -- 集中線

--***エフェクト***
nabi = entryEffect( spep_3, SP_05, 0x100, -1,  0,  0,  0);   -- ナビ

setEffMoveKey(  spep_3,  nabi,  0,  0,  0);
setEffMoveKey(  spep_3+110,  nabi,  0,  0,  0);
setEffScaleKey(  spep_3,  nabi,  -1.0,  1.0);
setEffScaleKey(  spep_3,  nabi,  -1.0,  1.0);
setEffAlphaKey(  spep_3,  nabi,  255);
setEffAlphaKey(  spep_3,  nabi,  255);
setEffShake(spep_3, nabi, 105, 15);  --揺れ

--***カットイン***
--speff1 = entryEffect(  spep_3,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
--speff2 = entryEffect(  spep_3,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+12, 190006, 68, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_3 + 12, ctgogo, 0 );
setEffAlphaKey( spep_3 + 13, ctgogo, 255 );
setEffAlphaKey( spep_3 + 70, ctgogo, 255 );
setEffAlphaKey( spep_3 + 72, ctgogo, 255 );
setEffAlphaKey( spep_3 + 74, ctgogo, 191 );
setEffAlphaKey( spep_3 + 76, ctgogo, 128 );
setEffAlphaKey( spep_3 + 78, ctgogo, 64 );
setEffAlphaKey( spep_3 + 80, ctgogo, 0 );

setEffRotateKey(  spep_3+12,  ctgogo,  0);
setEffRotateKey(  spep_3+80,  ctgogo,  0);

setEffScaleKey(  spep_3+12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3+70,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_3 + 80, ctgogo, -1.07, 1.07 );

setEffMoveKey(  spep_3+12,  ctgogo,  0,  530);
setEffMoveKey(  spep_3+80,  ctgogo,  0,  530);

--***SE***
--playSe( spep_3+10, SE_01);
playSe( spep_3+22, SE_04);

entryFadeBg( spep_3, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFade( spep_3+100, 8, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--**次の準備
spep_4 = spep_3+110;  --850
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--***カード***
--playSe( spep_4, SE_05);
--speff3 = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff3, 1, 1);
--setEffReplaceTexture( speff3, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff3, 5, 4);                                  -- 技名テクスチャ差し替え

--***極限Z覚醒***
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFadeBg(  spep_4,  0,  90,  0,  fcolor_r,  fcolor_g,  fcolor_b,  255);

entryFade( spep_4+84, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***次の準備***
spep_5 = spep_4+90;  --940
------------------------------------------------------
-- 突進(100F)
------------------------------------------------------
--changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

tosshin = entryEffect( spep_5, SP_05r,  0x100,  -1,  0,  0,  0);   -- 伸びるかめはめ波

setEffShake(spep_5, tosshin, 95, 15);  --揺れ
setEffMoveKey(  spep_5,  tosshin,  0,  0,  0);
setEffMoveKey(  spep_5+60,  tosshin,  0,  0,  0);
setEffScaleKey(  spep_5,  tosshin,  1.0,  1.0);
setEffScaleKey(  spep_5+60,  tosshin,  1.0,  1.0);
setEffRotateKey(  spep_5,  tosshin,  0);
setEffRotateKey(  spep_5+60,  tosshin,  0);

playSe( spep_5, 9);

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen2 = entryEffectLife( spep_5, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線

setEffMoveKey(  spep_5,  shuchusen2,  0,  0);
setEffMoveKey(  spep_5+60,  shuchusen2,  0,  0);
setEffScaleKey(  spep_5,  shuchusen2,  1.0,  1.0);
setEffScaleKey(  spep_5+60,  shuchusen2,  1.0,  1.0);
setEffAlphaKey(  spep_5,  shuchusen2,  255);
setEffAlphaKey(  spep_5+60,  shuchusen2,  255);
setEffRotateKey(  spep_5,  shuchusen2,  0);
setEffRotateKey(  spep_5+60,  shuchusen2,  0);

-- ** エフェクト等 ** --
entryFadeBg( spep_5, 0, 60, 0, 10, 10, 10, 255);       -- ベース暗い　背景
entryFade( spep_5+40, 8, 12, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***次の準備***
spep_6 = spep_5+60  --1030
------------------------------------------------------
-- 最後なぐる(100F)
------------------------------------------------------

shuchusen6 = entryEffectLife( spep_6, 906, 80, 0x00,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_6,  shuchusen6,  1.38,  1.38);
setEffScaleKey(  spep_6+80,  shuchusen6,  1.38,  1.38);
setEffMoveKey(  spep_6,  shuchusen6,  0,  0);
setEffMoveKey(  spep_6+80,  shuchusen6,  0,  0);
setEffRotateKey(  spep_6,  shuchusen6,  0);
setEffRotateKey(  spep_6+80,  shuchusen6,  0);
setEffAlphaKey(  spep_6,  shuchusen6,  255);
setEffAlphaKey(  spep_6+80,  shuchusen6,  255);


--***書き文字***
ct_dogon = entryEffectLife( spep_6 + 24,  10018, 42, 0x100, -1, 0, 18, 342.1 );  --ドゴォン

setEffShake(  spep_6 +24,  ct_dogon,  42,  10);  --揺れ

setEffMoveKey( spep_6 + 24, ct_dogon, 18, 342.1 , 0 );
setEffMoveKey( spep_6 + 58, ct_dogon, 18, 342.1 , 0 );
setEffMoveKey( spep_6 + 60, ct_dogon, 21.8, 353.5 , 0 );
setEffMoveKey( spep_6 + 62, ct_dogon, 26.5, 337.4 , 0 );
setEffMoveKey( spep_6 + 64, ct_dogon, 18, 342.1 , 0 );
setEffMoveKey( spep_6 + 66, ct_dogon, 18, 342.1 , 0 );

setEffScaleKey( spep_6 + 24, ct_dogon, 5.78, 5.78 );
setEffScaleKey( spep_6 + 26, ct_dogon, 4.66, 4.66 );
setEffScaleKey( spep_6 + 28, ct_dogon, 3.55, 3.55 );
setEffScaleKey( spep_6 + 30, ct_dogon, 3.79, 3.79 );
setEffScaleKey( spep_6 + 66, ct_dogon, 3.79, 3.79 );

setEffRotateKey( spep_6 + 24, ct_dogon, 0 );
setEffRotateKey( spep_6 + 66, ct_dogon, 0 );


--***敵の動き***
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 78, 1, 0 );
changeAnime( spep_6 + 0, 1, 106);
changeAnime( spep_6 + 24, 1, 108);

setMoveKey( spep_6 + 0, 1, -141.1, -15.8 , 0 );
setMoveKey( spep_6 + 2, 1, -102.6, -25.9 , 0 );
setMoveKey( spep_6 + 4, 1, -48.1, -11.9 , 0 );
setMoveKey( spep_6 + 6, 1, -5.5, -25.9 , 0 );
setMoveKey( spep_6 + 8, 1, 45, -7.9 , 0 );
setMoveKey( spep_6 + 10, 1, 48.7, -31.6 , 0 );
setMoveKey( spep_6 + 12, 1, 68.5, -7.4 , 0 );
setMoveKey( spep_6 + 14, 1, 72.2, -15.1 , 0 );
setMoveKey( spep_6 + 16, 1, 92, -6.9 , 0 );
setMoveKey( spep_6 + 18, 1, 99.7, -22.6 , 0 );
setMoveKey( spep_6 + 20, 1, 115.5, -6.3 , 0 );
setMoveKey( spep_6 + 23, 1, 115.2, -14.1 , 0 );
setMoveKey( spep_6+ 24, 1, 190.5, 18.1 , 0 );
setMoveKey( spep_6 + 26, 1, 190.1, -1.9 , 0 );
setMoveKey( spep_6 + 28, 1, 197.8, 18.1 , 0 );
setMoveKey( spep_6 + 30, 1, 197.5, 6.1 , 0 );
setMoveKey( spep_6 + 32, 1, 205.1, 18.1 , 0 );
setMoveKey( spep_6 + 34, 1, 196.8, 10.1 , 0 );
setMoveKey( spep_6 + 36, 1, 212.5, 18.1 , 0 );
setMoveKey( spep_6 + 38, 1, 212.1, 2.1 , 0 );
setMoveKey( spep_6 + 40, 1, 219.8, 18.1 , 0 );
setMoveKey( spep_6 + 42, 1, 211.5, 6.1 , 0 );
setMoveKey( spep_6 + 44, 1, 227.2, 18.1 , 0 );
setMoveKey( spep_6 + 46, 1, 222.8, 2.1 , 0 );
setMoveKey( spep_6 + 48, 1, 234.5, 18.1 , 0 );
setMoveKey( spep_6 + 50, 1, 230.2, 14.1 , 0 );
setMoveKey( spep_6 + 52, 1, 241.8, 18.1 , 0 );
setMoveKey( spep_6 + 54, 1, 241.5, 6.1 , 0 );
setMoveKey( spep_6 + 56, 1, 249.2, 18.1 , 0 );
setMoveKey( spep_6 + 58, 1, 248.9, 6.1 , 0 );
setMoveKey( spep_6 + 60, 1, 256.5, 18.1 , 0 );
setMoveKey( spep_6 + 62, 1, 256.2, 10.1 , 0 );
setMoveKey( spep_6 + 64, 1, 260.3, 18 , 0 );
setMoveKey( spep_6 + 66, 1, 405, 2 , 0 );
setMoveKey( spep_6 + 68, 1, 553.8, 18 , 0 );
setMoveKey( spep_6 + 70, 1, 694.6, 6 , 0 );
setMoveKey( spep_6 + 72, 1, 855.3, 18.1 , 0 );
setMoveKey( spep_6 + 74, 1, 996.1, 10.1 , 0 );
setMoveKey( spep_6 + 76, 1, 1152.9, 18.1 , 0 );
setMoveKey( spep_6 + 78, 1, 1293.7, 10.1 , 0 );

setScaleKey( spep_6 + 0, 1, 1.47, 1.47 );
setScaleKey( spep_6 + 8, 1, 1.47, 1.47 );
setScaleKey( spep_6 + 10, 1, 1.45, 1.45 );
setScaleKey( spep_6 + 12, 1, 1.44, 1.44 );
setScaleKey( spep_6 + 14, 1, 1.42, 1.42 );
setScaleKey( spep_6 + 16, 1, 1.41, 1.41 );
setScaleKey( spep_6 + 18, 1, 1.39, 1.39 );
setScaleKey( spep_6 + 20, 1, 1.38, 1.38 );
setScaleKey( spep_6 + 23, 1, 1.36, 1.36 );
setScaleKey( spep_6 + 24, 1, 2.27, 2.27 );
setScaleKey( spep_6 + 78, 1, 2.27, 2.27 );

setRotateKey( spep_6 + 0, 1, 7.9 );
setRotateKey( spep_6 + 2, 1, 9.6 );
setRotateKey( spep_6 + 4, 1, 11.4 );
setRotateKey( spep_6 + 6, 1, 13.2 );
setRotateKey( spep_6 + 8, 1, 15 );
setRotateKey( spep_6 + 23, 1, 15 );
setRotateKey( spep_6 + 24, 1, 14 );
setRotateKey( spep_6 + 26, 1, 14.1 );
setRotateKey( spep_6 + 60, 1, 14.1 );
setRotateKey( spep_6 + 62, 1, 14.2 );
setRotateKey( spep_6 + 64, 1, 14.1 );
setRotateKey( spep_6 + 76, 1, 14.1 );
setRotateKey( spep_6 + 78, 1, 14.2 );



--[[
setDisp( spep_6, 1, 1);
changeAnime( spep_6, 1, 108);

setMoveKey(  spep_6,       1,  -300,  -54,   0);
setMoveKey(  spep_6+10,    1,  200,  -54,   0);
setMoveKey(  spep_6+60,    1,  200,  -54,   0);
setMoveKey(  spep_6+78,    1,  1000,  -54,   0);
setScaleKey( spep_6,       1,  1.7, 1.7);
setScaleKey( spep_6+15,    1,  1.7, 1.7);
setScaleKey( spep_6+23,    1,  2.0, 2.0);
setScaleKey( spep_6+78,    1,  2.0, 2.0);
setRotateKey( spep_6,      1, 0 );
setRotateKey( spep_6+78,   1, 0 );

setShakeChara( spep_6, 1, 80, 20);  --揺れ
]]


--***SE***
playSe( spep_6, SE_04);
--playSe( 1051, SE_11);
playSe( spep_6+21, 1024);

--***エフェクト***
punch3 = entryEffectLife( spep_6, SP_06r, 80,  0x100, -1,  0,  0,  0);   -- パンチ

setEffShake(spep_6, punch3, 80, 15);  --揺れ
setEffScaleKey(spep_6, punch3, 0.8, 0.8);
setEffScaleKey(  spep_6+80,  punch3,  0.8,  0.8);
setEffMoveKey(  spep_6,  punch3,  0,  0,  0);
setEffMoveKey(  spep_6+80,  punch3,  0,  0,  0);
setEffRotateKey(  spep_6,  punch3,  0);
setEffRotateKey(  spep_6+80,  punch3,  0);
setEffAlphaKey(  spep_6,  punch3,  255);
setEffAlphaKey(  spep_6+80,  punch3,  255);

--setEffScaleKey(452, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
--setDamage( 452, 1, 0);  -- ダメージ振動等

punch3_b = entryEffectLife( spep_6+24, SP_11r, 56,  0x80, -1,  0,  0,  0);   -- 背景

setEffShake(  spep_6+24, punch3_b, 56, 15);  --揺れ
setEffMoveKey(  spep_6+24,  punch3_b,  0,  0,  0);
setEffMoveKey(  spep_6+80,  punch3_b,  0,  0,  0);
setEffScaleKey(  spep_6+24,  punch3_b,  1.0,  1.0);
setEffScaleKey(  spep_6+80,  punch3_b,  1.0,  1.0);
setEffRotateKey(  spep_6+24,  punch3_b,  0);
setEffRotateKey(  spep_6+80,  punch3_b,  0);
setEffAlphaKey(  spep_6+24,  punch3_b,  255);
setEffRotateKey(  spep_6+80,  punch3_b,  255);

entryFadeBg( spep_6, 0, 80, 0, 10, 10, 10, 255);          -- ベース暗め　背景
entryFade( spep_6+20, 2,  2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_6+74, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
spep_7 = spep_6+80;  --1108;
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_7, 1, 1);
changeAnime( spep_7+2, 1, 107);                         -- 手前ダメージ
setMoveKey(  spep_7,      1,  100,  0,   0);
setScaleKey( spep_7,      1,  1.0, 1.0);
setMoveKey(  spep_7+2,    1,  0,   0,   128);
setScaleKey( spep_7+2,    1,  0.1, 0.1);

setMoveKey(  spep_7+2,    1,    0,   0,   128);
setMoveKey(  spep_7+17,   1,  -60,  -200,  -100);

setRotateKey( spep_7+2,  1,  30 );
setRotateKey( spep_7+4,  1,  80 );
setRotateKey( spep_7+6,  1, 120 );
setRotateKey( spep_7+8,  1, 160 );
setRotateKey( spep_7+10,  1, 200 );
setRotateKey( spep_7+12,  1, 260 );
setRotateKey( spep_7+14,  1, 320 );
setRotateKey( spep_7+16,  1,   0 );

setShakeChara( spep_7+17, 1, 5,  10);
setShakeChara( spep_7+22, 1, 10, 20);

setDamage( spep_7+18, 1, 0);  -- ダメージ振動等

entryEffect( spep_7, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

-- 書き文字エントリー
ct_ga = entryEffectLife(  spep_7+17, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(  spep_7+17, ct_ga, 30, 10);  --揺れ
setEffRotateKey( spep_7+17, ct_ga, -40);
setEffScaleKey( spep_7+17, ct_ga, 4.0, 4.0);
setEffScaleKey( spep_7+18, ct_ga, 2.0, 2.0);
setEffScaleKey( spep_7+19, ct_ga, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct_ga, 4.0, 4.0);
setEffScaleKey( spep_7+21, ct_ga, 2.6, 2.6);
setEffScaleKey( spep_7+22, ct_ga, 3.8, 3.8);
setEffScaleKey( spep_7+112, ct_ga, 3.8, 3.8);
setEffAlphaKey( spep_7+17, ct_ga, 255);
setEffAlphaKey( spep_7+107, ct_ga, 255);
setEffAlphaKey( spep_7+117, ct_ga, 0);

--***SE***
playSe( spep_7, SE_11);
playSe( spep_7+12, SE_10);

shuchusen3 = entryEffectLife( spep_7+5, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_7+5, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_7+14, 1657, 120, 0x80, -1, 0, 0, 0); -- 集中線

-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_7+110);
end
--1014510  ブロリー_アンガーシャウト_sp1202

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
SP_01 = 152006  --突進
SP_02 = 152007  --格闘前面
SP_03 = 152008  --格闘背面
SP_04 = 152009  --溜めから発射
SP_05 = 152010  --ビーム当たる前面
SP_06 = 152011  --ビーム当たる背面
SP_07 = 152012  --ラスト爆発前面

SP_01x = 152014  --突進(敵)
SP_02x = 152015  --格闘前面(敵)
SP_04x = 152016  --溜めから発射(敵)
SP_07x = 152017  --ラスト爆発前面(敵)

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
-- 突進(116F)
------------------------------------------------------
spep_1 = 0;

--***フェードと背景***
entryFade( spep_1, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***集中線***
shuchusen1 = entryEffectLife( spep_1, 906, 116, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.2,  1.2);
setEffScaleKey(  spep_1+116,  shuchusen1,  1.2,  1.2);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+116,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+116,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  200);--ちょっと薄くする
setEffAlphaKey(  spep_1+116,  shuchusen1,  200);--ちょっと薄くする

--***突進***
tosshin = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  tosshin,  1.0,  1.0);
setEffScaleKey(  spep_1+116,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin,  0,  0);
setEffMoveKey(  spep_1+116,  tosshin,  0,  0);
setEffRotateKey(  spep_1,  tosshin,  0);
setEffRotateKey(  spep_1+116,  tosshin,  0);
setEffAlphaKey(  spep_1,  tosshin,  255);
setEffAlphaKey(  spep_1+116,  tosshin,  255);
setEffAlphaKey(  spep_1+118,  tosshin,  0);

--***SE***
playSe(  spep_1+4,  8);  --ダッシュ
playSe(  spep_1+70,  9);  --ダッシュ


--***書き文字***集中線よりプライオリティは下になるテスト表記
ct_gyun = entryEffectLife( spep_1,  10007, 116, 0x100, -1, 0, 41.8, 188.5 );  --ギュンッ

setEffMoveKey( spep_1 , ct_gyun, 41.8, 188.5 , 0 );
setEffMoveKey( spep_1 + 66, ct_gyun, 41.8, 188.5 , 0 );
setEffMoveKey( spep_1 + 68, ct_gyun, 63.8, 226 , 0 );
setEffMoveKey( spep_1 + 70, ct_gyun, 79.5, 252.9 , 0 );
setEffMoveKey( spep_1 + 72, ct_gyun, 88.9, 269 , 0 );
setEffMoveKey( spep_1 + 74, ct_gyun, 92.1, 274.3 , 0 );
setEffMoveKey( spep_1 + 76, ct_gyun, 92.1, 274.3 , 0 );
setEffMoveKey( spep_1 + 78, ct_gyun, 92, 274.3 , 0 );
setEffMoveKey( spep_1 + 88, ct_gyun, 92, 274.3 , 0 );
setEffMoveKey( spep_1 + 90, ct_gyun, 91.9, 274.3 , 0 );
setEffMoveKey( spep_1 + 92, ct_gyun, 91.9, 274.3 , 0 );
setEffMoveKey( spep_1 + 94, ct_gyun, 91.9, 274.2 , 0 );
setEffMoveKey( spep_1 + 96, ct_gyun, 91.8, 274.2 , 0 );
setEffMoveKey( spep_1 + 98, ct_gyun, 91.8, 274.1 , 0 );
setEffMoveKey( spep_1 + 100, ct_gyun, 91.7, 274.1 , 0 );
setEffMoveKey( spep_1 + 102, ct_gyun, 91.7, 274 , 0 );
setEffMoveKey( spep_1 + 116, ct_gyun, 91.7, 274 , 0 );

setEffScaleKey( spep_1 , ct_gyun, 1.6, 1.6 );
setEffScaleKey( spep_1 + 66, ct_gyun, 1.6, 1.6 );
setEffScaleKey( spep_1 + 68, ct_gyun, 2.55, 2.55 );
setEffScaleKey( spep_1 + 70, ct_gyun, 3.23, 3.23 );
setEffScaleKey( spep_1 + 72, ct_gyun, 3.63, 3.63 );
setEffScaleKey( spep_1 + 74, ct_gyun, 3.77, 3.77 );
setEffScaleKey( spep_1 + 76, ct_gyun, 3.82, 3.82 );
setEffScaleKey( spep_1 + 78, ct_gyun, 3.87, 3.87 );
setEffScaleKey( spep_1 + 80, ct_gyun, 3.91, 3.91 );
setEffScaleKey( spep_1 + 82, ct_gyun, 3.96, 3.96 );
setEffScaleKey( spep_1 + 84, ct_gyun, 4.01, 4.01 );
setEffScaleKey( spep_1 + 86, ct_gyun, 4.06, 4.06 );
setEffScaleKey( spep_1 + 88, ct_gyun, 4.1, 4.1 );
setEffScaleKey( spep_1 + 90, ct_gyun, 4.15, 4.15 );
setEffScaleKey( spep_1 + 92, ct_gyun, 4.2, 4.2 );
setEffScaleKey( spep_1 + 94, ct_gyun, 4.33, 4.33 );
setEffScaleKey( spep_1 + 96, ct_gyun, 4.45, 4.45 );
setEffScaleKey( spep_1 + 98, ct_gyun, 4.58, 4.58 );
setEffScaleKey( spep_1 + 100, ct_gyun, 4.7, 4.7 );
setEffScaleKey( spep_1 + 102, ct_gyun, 4.83, 4.83 );
setEffScaleKey( spep_1 + 116, ct_gyun, 4.83, 4.83 );

setEffRotateKey( spep_1, ct_gyun, 23.4 );
setEffRotateKey( spep_1 + 66, ct_gyun, 23.4 );
setEffRotateKey( spep_1 + 68, ct_gyun, 22.6 );
setEffRotateKey( spep_1 + 70, ct_gyun, 22 );
setEffRotateKey( spep_1 + 72, ct_gyun, 21.6 );
setEffRotateKey( spep_1 + 74, ct_gyun, 21.5 );
setEffRotateKey( spep_1 + 78, ct_gyun, 21.5 );
setEffRotateKey( spep_1 + 80, ct_gyun, 21.4 );
setEffRotateKey( spep_1 + 86, ct_gyun, 21.4 );
setEffRotateKey( spep_1 + 88, ct_gyun, 21.3 );
setEffRotateKey( spep_1 + 116, ct_gyun, 21.3 );

setEffAlphaKey( spep_1 , ct_gyun, 0 );
setEffAlphaKey( spep_1+64 , ct_gyun, 0 );
setEffAlphaKey( spep_1+65 , ct_gyun, 0 );
setEffAlphaKey( spep_1 + 66, ct_gyun, 255 );
setEffAlphaKey( spep_1 + 92, ct_gyun, 255 );
setEffAlphaKey( spep_1 + 94, ct_gyun, 204 );
setEffAlphaKey( spep_1 + 96, ct_gyun, 153 );
setEffAlphaKey( spep_1 + 98, ct_gyun, 102 );
setEffAlphaKey( spep_1 + 100, ct_gyun, 51 );
setEffAlphaKey( spep_1 + 102, ct_gyun, 0 );
setEffAlphaKey( spep_1 + 116, ct_gyun, 0 );

------------------------------------------------------
-- 格闘(330F)
------------------------------------------------------
spep_2 = spep_1+116;

--***フェードと背景***
entryFade( spep_2-6, 3, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+144, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- 短い白

--***格闘前面***
kakutou = entryEffect(  spep_2+2,  SP_02,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_2+2,  kakutou,  1.0,  1.0);
setEffScaleKey(  spep_2+330,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_2+2,  kakutou,  0,  0);
setEffMoveKey(  spep_2+330,  kakutou,  0,  0);
setEffRotateKey(  spep_2+2,  kakutou,  0);
setEffRotateKey(  spep_2+330,  kakutou,  0);
setEffAlphaKey(  spep_2+2,  kakutou,  255);
setEffAlphaKey(  spep_2+330,  kakutou,  255);
setEffAlphaKey(  spep_2+331,  kakutou,  0);
setEffAlphaKey(  spep_2+332,  kakutou,  0);

--***集中線***
shuchusen2 = entryEffectLife( spep_2+2, 906, 330, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2+2,  shuchusen2,  1.8,  1.8);
setEffScaleKey(  spep_2+330,  shuchusen2,  1.8,  1.8);
setEffMoveKey(  spep_2+2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+330,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+2,  shuchusen2,  0);
setEffRotateKey(  spep_2+330,  shuchusen2,  0);
setEffAlphaKey(  spep_2+2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+330,  shuchusen2,  255);


--***格闘背景***
kakutouBG = entryEffect(  spep_2+2,  SP_03,  0x80,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_2+2,  kakutouBG,  1.0,  1.0);
setEffScaleKey(  spep_2+330,  kakutouBG,  1.0,  1.0);
setEffMoveKey(  spep_2+2,  kakutouBG,  0,  0);
setEffMoveKey(  spep_2+330,  kakutouBG,  0,  0);
setEffRotateKey(  spep_2+3,  kakutouBG,  0);
setEffRotateKey(  spep_2+330,  kakutouBG,  0);
setEffAlphaKey(  spep_2+3,  kakutouBG,  255);
setEffAlphaKey(  spep_2+330,  kakutouBG,  255);
setEffAlphaKey(  spep_2+331,  kakutouBG,  0);
setEffAlphaKey(  spep_2+332,  kakutouBG,  0);

--***SE***
playSe(  spep_2+37,  1010);  --パンチ
playSe(  spep_2+77,  1009);  --つかむ
playSe(  spep_2+122,  1011);  --おしつける
SE1=playSe(  spep_2+152,  1044);  
stopSe( spep_2+ 242, SE1, 10 );--262でおわる
playSe( spep_2+285,  1060);  --おしこむ
playSe(  spep_2+314,  43);  --瞬間移動

--***敵の動き***
--チェンジアニメとかshakeとかもあわせて記載
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 330, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
setShakeChara( spep_2 , 1, 36, 5);--移動の小さな揺れ

changeAnime( spep_2 + 37, 1, 108 );
--changeAnime( spep_2 + 38, 1, 108 );
setShakeChara( spep_2 + 37, 1, 7, 10);--パンチのヒット

changeAnime( spep_2 + 77, 1, 106 );
setShakeChara( spep_2 + 77, 1, 7, 10);--つかみ
setShakeChara( spep_2 + 122, 1, 10, 15);--おしつける
setShakeChara( spep_2 + 132, 1, 20, 5);--おしつける

setShakeChara( spep_2 + 152, 1, 115, 10);--摺る

changeAnime( spep_2 + 285, 1, 108 );--ズン
--changeAnime( spep_2 + 286, 1, 108 );
setShakeChara( spep_2 + 285, 1, 45, 10);--おしつける

--イージングがあるのでムーブは全て記載
setMoveKey( spep_2 + 0, 1, 597.1, 30.2 , 0 );
setMoveKey( spep_2 + 2, 1, 552, 30.2 , 0 );
setMoveKey( spep_2 + 4, 1, 506.9, 30.2 , 0 );
setMoveKey( spep_2 + 6, 1, 461.9, 30.2 , 0 );
setMoveKey( spep_2 + 8, 1, 416.8, 30.2 , 0 );
setMoveKey( spep_2 + 10, 1, 371.7, 30.2 , 0 );
setMoveKey( spep_2 + 12, 1, 326.7, 30.2 , 0 );
setMoveKey( spep_2 + 14, 1, 275.9, 29.6 , 0 );
setMoveKey( spep_2 + 16, 1, 227.8, 29.1 , 0 );
setMoveKey( spep_2 + 18, 1, 181.9, 28.7 , 0 );
setMoveKey( spep_2 + 20, 1, 169.8, 28.4 , 0 );
setMoveKey( spep_2 + 22, 1, 143.1, 28.3 , 0 );
setMoveKey( spep_2 + 24, 1, 132.5, 28.2 , 0 );
setMoveKey( spep_2 + 26, 1, 109.6, 28.2 , 0 );
setMoveKey( spep_2 + 28, 1, 86.7, 28.2 , 0 );
setMoveKey( spep_2 + 30, 1, 63.8, 28.2 , 0 );
setMoveKey( spep_2 + 32, 1, 41, 28.2 , 0 );
setMoveKey( spep_2 + 34, 1, 18.1, 28.2 , 0 );
setMoveKey( spep_2 + 36, 1, -4.8, 28.2 , 0 );
setMoveKey( spep_2 + 37, 1, 91.3, 85.6 , 0 );--最初の一撃
setMoveKey( spep_2 + 38, 1, 91.3, 85.6 , 0 );
setMoveKey( spep_2 + 40, 1, 127.6, 61.6 , 0 );
setMoveKey( spep_2 + 42, 1, 182.3, 75.2 , 0 );
setMoveKey( spep_2 + 44, 1, 210, 56.8 , 0 );
setMoveKey( spep_2 + 46, 1, 249.1, 65.7 , 0 );
setMoveKey( spep_2 + 48, 1, 278.8, 54.1 , 0 );
setMoveKey( spep_2 + 50, 1, 305.6, 56.9 , 0 );
setMoveKey( spep_2 + 52, 1, 331.5, 55.4 , 0 );
setMoveKey( spep_2 + 54, 1, 356, 54.3 , 0 );
setMoveKey( spep_2 + 56, 1, 379.8, 53.5 , 0 );
setMoveKey( spep_2 + 58, 1, 391.3, 51.1 , 0 );
setMoveKey( spep_2 + 60, 1, 380.2, 45.7 , 0 );
setMoveKey( spep_2 + 62, 1, 350.3, 37.8 , 0 );
setMoveKey( spep_2 + 64, 1, 306.2, 28.1 , 0 );
setMoveKey( spep_2 + 66, 1, 252.5, 17.2 , 0 );
setMoveKey( spep_2 + 68, 1, 194.9, 6 , 0 );
setMoveKey( spep_2 + 70, 1, 139.2, -4.6 , 0 );
setMoveKey( spep_2 + 72, 1, 91.7, -13.7 , 0 );
setMoveKey( spep_2 + 74, 1, 58.9, -20.2 , 0 );
setMoveKey( spep_2 + 76, 1, 51.9, -25.2 , 0 );
setMoveKey( spep_2 + 77, 1, -3.9, -36.7 , 0 );--つかむ
setMoveKey( spep_2 + 78, 1, -3.9, -36.7 , 0 );
setMoveKey( spep_2 + 80, 1, 33.2, -40.9 , 0 );
setMoveKey( spep_2 + 82, 1, 60.5, -30.8 , 0 );
setMoveKey( spep_2 + 84, 1, 88.1, -39.2 , 0 );
setMoveKey( spep_2 + 86, 1, 96.7, -32 , 0 );
setMoveKey( spep_2 + 88, 1, 104.3, -29.6 , 0 );
setMoveKey( spep_2 + 90, 1, 94, -29 , 0 );
setMoveKey( spep_2 + 92, 1, 72.6, -27.8 , 0 );
setMoveKey( spep_2 + 94, 1, 57.1, -23.6 , 0 );
setMoveKey( spep_2 + 96, 1, 69.5, -9.3 , 0 );
setMoveKey( spep_2 + 98, 1, 71.7, 14.6 , 0 );
setMoveKey( spep_2 + 100, 1, 58.2, 38.5 , 0 );
setMoveKey( spep_2 + 102, 1, 45.3, 37.2 , 0 );
setMoveKey( spep_2 + 104, 1, 29.6, 35.9 , 0 );
setMoveKey( spep_2 + 106, 1, 12.3, 34.2 , 0 );
setMoveKey( spep_2 + 107, 1, -3.7, 32.5 , 0 );
setMoveKey( spep_2 + 108, 1, -3.7, 32.5 , 0 );
setMoveKey( spep_2 + 119, 1, -13.1, 30.7 , 0 );
setMoveKey( spep_2 + 110, 1, -13.1, 30.7 , 0 );
setMoveKey( spep_2 + 111, 1, -9.1, 28.7 , 0 );
setMoveKey( spep_2 + 112, 1, -9.1, 28.7 , 0 );
setMoveKey( spep_2 + 113, 1, 16.2, 27 , 0 );
setMoveKey( spep_2 + 114, 1, 16.2, 27 , 0 );
setMoveKey( spep_2 + 115, 1, 69.3, 25.4 , 0 );
setMoveKey( spep_2 + 116, 1, 69.3, 25.4 , 0 );
setMoveKey( spep_2 + 117, 1, 155.3, 23.9 , 0 );
setMoveKey( spep_2 + 118, 1, 155.3, 23.9 , 0 );
setMoveKey( spep_2 + 119, 1, 323.4, 30.8 , 0 );--かべにおしつける
setMoveKey( spep_2 + 120, 1, 323.4, 30.8 , 0 );
setMoveKey( spep_2 + 121, 1, 222.3, 27.7 , 0 );
setMoveKey( spep_2 + 122, 1, 222.3, 27.7 , 0 );
setMoveKey( spep_2 + 123, 1, 164.9, 28.7 , 0 );
setMoveKey( spep_2 + 124, 1, 164.9, 28.7 , 0 );
setMoveKey( spep_2 + 125, 1, 182.5, 22.1 , 0 );
setMoveKey( spep_2 + 126, 1, 182.5, 22.1 , 0 );
setMoveKey( spep_2 + 127, 1, 175.9, 20.3 , 0 );
setMoveKey( spep_2 + 128, 1, 175.9, 20.3 , 0 );
setMoveKey( spep_2 + 129, 1, 194.1, 17 , 0 );
setMoveKey( spep_2 + 130, 1, 194.1, 17 , 0 );
setMoveKey( spep_2 + 131, 1, 179.5, 15.8 , 0 );
setMoveKey( spep_2 + 132, 1, 179.5, 15.8 , 0 );
setMoveKey( spep_2 + 134, 1, 187.6, 15.6 , 0 );
setMoveKey( spep_2 + 136, 1, 179.9, 10.1 , 0 );
setMoveKey( spep_2 + 138, 1, 191, 8.8 , 0 );
setMoveKey( spep_2 + 140, 1, 190.8, 7.7 , 0 );
setMoveKey( spep_2 + 142, 1, 202.4, 7 , 0 );
setMoveKey( spep_2 + 144, 1, 211.1, 6.8 , 0 );
setMoveKey( spep_2 + 146, 1, 243.5, 7.1 , 0 );
setMoveKey( spep_2 + 148, 1, 353.4, 10 , 0 );
setMoveKey( spep_2 + 150, 1, -975.3, 8.2 , 0 );
setMoveKey( spep_2 + 152, 1, -916.9, 12.4 , 0 );
setMoveKey( spep_2 + 154, 1, -863.4, 8.3 , 0 );
setMoveKey( spep_2 + 156, 1, -815.2, 12.7 , 0 );
setMoveKey( spep_2 + 158, 1, -765, 8.4 , 0 );
setMoveKey( spep_2 + 160, 1, -704.6, 12 , 0 );
setMoveKey( spep_2 + 162, 1, -623.5, 7 , 0 );
setMoveKey( spep_2 + 164, 1, -558, 13.3 , 0 );
setMoveKey( spep_2 + 166, 1, -497.4, 7.8 , 0 );
setMoveKey( spep_2 + 168, 1, -463.5, 13.1 , 0 );
setMoveKey( spep_2 + 170, 1, -416.3, 9.4 , 0 );
setMoveKey( spep_2 + 172, 1, -400.9, 10.8 , 0 );
setMoveKey( spep_2 + 174, 1, -352.4, 10.9 , 0 );
setMoveKey( spep_2 + 176, 1, -347.4, 8.1 , 0 );
setMoveKey( spep_2 + 178, 1, -306.4, 12.7 , 0 );
setMoveKey( spep_2 + 180, 1, -296.9, 7.5 , 0 );
setMoveKey( spep_2 + 182, 1, -263.5, 13.4 , 0 );
setMoveKey( spep_2 + 184, 1, -258.8, 7.5 , 0 );
setMoveKey( spep_2 + 186, 1, -228.1, 13.4 , 0 );
setMoveKey( spep_2 + 188, 1, -222.8, 9 , 0 );
setMoveKey( spep_2 + 190, 1, -206.3, 12.7 , 0 );
setMoveKey( spep_2 + 192, 1, -184.3, 7.4 , 0 );
setMoveKey( spep_2 + 194, 1, -185.5, 13.2 , 0 );
setMoveKey( spep_2 + 196, 1, -152.7, 6.9 , 0 );
setMoveKey( spep_2 + 198, 1, -157.9, 11.7 , 0 );
setMoveKey( spep_2 + 200, 1, -124.7, 10.6 , 0 );
setMoveKey( spep_2 + 202, 1, -139.5, 7.9 , 0 );
setMoveKey( spep_2 + 204, 1, -107, 13.5 , 0 );
setMoveKey( spep_2 + 206, 1, -105, 6.5 , 0 );
setMoveKey( spep_2 + 208, 1, -96.1, 12.1 , 0 );
setMoveKey( spep_2 + 210, 1, -75.4, 7.5 , 0 );
setMoveKey( spep_2 + 212, 1, -82.7, 12.5 , 0 );
setMoveKey( spep_2 + 214, 1, -45.6, 6.7 , 0 );
setMoveKey( spep_2 + 216, 1, -60.9, 12.9 , 0 );
setMoveKey( spep_2 + 218, 1, -29.4, 6.8 , 0 );
setMoveKey( spep_2 + 220, 1, -46.9, 12 , 0 );
setMoveKey( spep_2 + 222, 1, -14.4, 8.8 , 0 );
setMoveKey( spep_2 + 224, 1, -20, 10.7 , 0 );
setMoveKey( spep_2 + 226, 1, 6.5, 11 , 0 );
setMoveKey( spep_2 + 228, 1, 4.3, 8.3 , 0 );
setMoveKey( spep_2 + 230, 1, 18.7, 9.8 , 0 );
setMoveKey( spep_2 + 232, 1, 32.5, 9.7 , 0 );
setMoveKey( spep_2 + 234, 1, 28.4, 12.2 , 0 );
setMoveKey( spep_2 + 236, 1, 58.5, 6.4 , 0 );
setMoveKey( spep_2 + 238, 1, 53.3, 10.5 , 0 );
setMoveKey( spep_2 + 240, 1, 72.1, 10.3 , 0 );
setMoveKey( spep_2 + 242, 1, 78.7, 8.3 , 0 );
setMoveKey( spep_2 + 244, 1, 92.8, 8.6 , 0 );
setMoveKey( spep_2 + 246, 1, 100.2, 7.5 , 0 );
setMoveKey( spep_2 + 248, 1, 111.5, 7 , 0 );
setMoveKey( spep_2 + 250, 1, 125.3, 11.2 , 0 );
setMoveKey( spep_2 + 252, 1, 136.7, 5.9 , 0 );
setMoveKey( spep_2 + 254, 1, 117.2, 9.5 , 0 );
setMoveKey( spep_2 + 256, 1, 103.2, 6.6 , 0 );
setMoveKey( spep_2 + 258, 1, 80.9, 10.4 , 0 );
setMoveKey( spep_2 + 260, 1, 93.1, 8 , 0 );
setMoveKey( spep_2 + 262, 1, 90.4, 6 , 0 );
setMoveKey( spep_2 + 264, 1, 83.9, 7.7 , 0 );
setMoveKey( spep_2 + 266, 1, 66.3, 7.3 , 0 );
setMoveKey( spep_2 + 268, 1, 42.4, 6.5 , 0 );
setMoveKey( spep_2 + 270, 1, 19.7, 6 , 0 );
setMoveKey( spep_2 + 272, 1, 3.3, 5.9 , 0 );
setMoveKey( spep_2 + 274, 1, -8, 5.8 , 0 );
setMoveKey( spep_2 + 276, 1, -14.7, 5.9 , 0 );
setMoveKey( spep_2 + 278, 1, -17, 5.9 , 0 );
setMoveKey( spep_2 + 280, 1, -17, 6 , 0 );
setMoveKey( spep_2 + 282, 1, -17.1, 6 , 0 );
setMoveKey( spep_2 + 284, 1, -17.1, 6 , 0 );
setMoveKey( spep_2 + 285, 1, -14.6, -36.5 , 0 );
setMoveKey( spep_2 + 286, 1, -14.6, -36.5 , 0 );
setMoveKey( spep_2 + 288, 1, -4.2, -13.4 , 0 );
setMoveKey( spep_2 + 290, 1, -13.3, -8.6 , 0 );
setMoveKey( spep_2 + 292, 1, -3.5, -1.6 , 0 );
setMoveKey( spep_2 + 294, 1, -10.5, -2 , 0 );
setMoveKey( spep_2 + 296, 1, -4, -5.1 , 0 );
setMoveKey( spep_2 + 298, 1, -3.9, 3.8 , 0 );
setMoveKey( spep_2 + 300, 1, -10.7, -1.7 , 0 );
setMoveKey( spep_2 + 302, 1, -2.8, 0.7 , 0 );
setMoveKey( spep_2 + 304, 1, -9.7, -0.6 , 0 );
setMoveKey( spep_2 + 306, 1, -4.4, 1.9 , 0 );
setMoveKey( spep_2 + 308, 1, -8.7, -0.7 , 0 );
setMoveKey( spep_2 + 310, 1, -3.9, 0.2 , 0 );
setMoveKey( spep_2 + 312, 1, -8.8, -1.7 , 0 );
setMoveKey( spep_2 + 314, 1, -4.7, 1.8 , 0 );
setMoveKey( spep_2 + 316, 1, -8.1, -1.7 , 0 );
setMoveKey( spep_2 + 318, 1, -6.3, 1.9 , 0 );
setMoveKey( spep_2 + 320, 1, -5.4, -1.6 , 0 );
setMoveKey( spep_2 + 322, 1, -7, 0.1 , 0 );
setMoveKey( spep_2 + 324, 1, -5.7, -0.9 , 0 );
setMoveKey( spep_2 + 326, 1, -7.1, 0 , 0 );
setMoveKey( spep_2 + 328, 1, -5.9, -0.5 , 0 );
setMoveKey( spep_2 + 330, 1, -6.3, 0.1 , 0 );

setScaleKey( spep_2 + 0, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 12, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 14, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 16, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 18, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 20, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 22, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 24, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 36, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 38, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 40, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 42, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 44, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 46, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 48, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 50, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 52, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 54, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 56, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 58, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 60, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 62, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 64, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 66, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 68, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 70, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 72, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 74, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 76, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 78, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 80, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 82, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 84, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 86, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 88, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 90, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 92, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 94, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 96, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 98, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 100, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 102, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 104, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 106, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 108, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 110, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 112, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 114, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 116, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 118, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 120, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 122, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 124, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 126, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 128, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 130, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 132, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 134, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 136, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 138, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 140, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 142, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 144, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 146, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 148, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 150, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 152, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 154, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 158, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 160, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 164, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 166, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 170, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 172, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 178, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 180, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 188, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 190, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 200, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 202, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 222, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 224, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 226, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 228, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 230, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 232, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 234, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 236, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 238, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 240, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 242, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 244, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 246, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 248, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 250, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 252, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 254, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 256, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 258, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 262, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 264, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 266, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 268, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 270, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 272, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 276, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 278, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 280, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 282, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 284, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 285, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 286, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 288, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 290, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 292, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 294, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 296, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 298, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 300, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 302, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 330, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 36, 1, 0 );
setRotateKey( spep_2 + 38, 1, -18.2 );
setRotateKey( spep_2 + 40, 1, -14.8 );
setRotateKey( spep_2 + 42, 1, -11.5 );
setRotateKey( spep_2 + 44, 1, -8.4 );
setRotateKey( spep_2 + 46, 1, -5.5 );
setRotateKey( spep_2 + 48, 1, -2.8 );
setRotateKey( spep_2 + 50, 1, -0.3 );
setRotateKey( spep_2 + 52, 1, 2 );
setRotateKey( spep_2 + 54, 1, 4.1 );
setRotateKey( spep_2 + 56, 1, 6.1 );
setRotateKey( spep_2 + 58, 1, 7.9 );
setRotateKey( spep_2 + 60, 1, 9.4 );
setRotateKey( spep_2 + 62, 1, 10.8 );
setRotateKey( spep_2 + 64, 1, 12 );
setRotateKey( spep_2 + 66, 1, 13.1 );
setRotateKey( spep_2 + 68, 1, 13.9 );
setRotateKey( spep_2 + 70, 1, 14.6 );
setRotateKey( spep_2 + 72, 1, 15 );
setRotateKey( spep_2 + 74, 1, 15.3 );
setRotateKey( spep_2 + 76, 1, 15.4 );
setRotateKey( spep_2 + 77, 1, -30.8 );--つかむ
setRotateKey( spep_2 + 78, 1, -30.8 );
setRotateKey( spep_2 + 80, 1, -27.7 );
setRotateKey( spep_2 + 82, 1, -25.1 );
setRotateKey( spep_2 + 84, 1, -23.2 );
setRotateKey( spep_2 + 86, 1, -21.7 );
setRotateKey( spep_2 + 88, 1, -20.9 );
setRotateKey( spep_2 + 90, 1, -20.6 );
setRotateKey( spep_2 + 92, 1, -20.5 );
setRotateKey( spep_2 + 98, 1, -20.5 );
setRotateKey( spep_2 + 100, 1, -20.6 );
setRotateKey( spep_2 + 102, 1, -21.5 );
setRotateKey( spep_2 + 104, 1, -22.5 );
setRotateKey( spep_2 + 106, 1, -23.6 );
setRotateKey( spep_2 + 108, 1, -24.9 );
setRotateKey( spep_2 + 110, 1, -26.4 );
setRotateKey( spep_2 + 112, 1, -28 );
setRotateKey( spep_2 + 114, 1, -29.7 );
setRotateKey( spep_2 + 116, 1, -31.6 );
setRotateKey( spep_2 + 118, 1, -33.6 );
setRotateKey( spep_2 + 120, 1, -35.8 );
setRotateKey( spep_2 + 122, 1, -33.9 );
setRotateKey( spep_2 + 124, 1, -32.7 );
setRotateKey( spep_2 + 126, 1, -31.9 );
setRotateKey( spep_2 + 128, 1, -31.3 );
setRotateKey( spep_2 + 130, 1, -30.8 );
setRotateKey( spep_2 + 132, 1, -30.4 );
setRotateKey( spep_2 + 134, 1, -30.1 );
setRotateKey( spep_2 + 136, 1, -29.8 );
setRotateKey( spep_2 + 138, 1, -29.6 );
setRotateKey( spep_2 + 140, 1, -29.5 );
setRotateKey( spep_2 + 142, 1, -29.4 );
setRotateKey( spep_2 + 144, 1, -29.3 );
setRotateKey( spep_2 + 148, 1, -29.3 );
setRotateKey( spep_2 + 150, 1, 30.7 );
setRotateKey( spep_2 + 200, 1, 30.7 );
setRotateKey( spep_2 + 202, 1, 30.6 );
setRotateKey( spep_2 + 252, 1, 30.6 );
setRotateKey( spep_2 + 254, 1, 30.7 );
setRotateKey( spep_2 + 284, 1, 30.7 );
setRotateKey( spep_2 + 285, 1, 16.2 );
setRotateKey( spep_2 + 286, 1, 16.2 );
setRotateKey( spep_2 + 288, 1, 10.2 );
setRotateKey( spep_2 + 290, 1, 8.6 );
setRotateKey( spep_2 + 292, 1, 7.7 );
setRotateKey( spep_2 + 294, 1, 7.1 );
setRotateKey( spep_2 + 296, 1, 6.8 );
setRotateKey( spep_2 + 298, 1, 6.6 );
setRotateKey( spep_2 + 300, 1, 6.4 );
setRotateKey( spep_2 + 302, 1, 6.3 );
setRotateKey( spep_2 + 330, 1, 6.3 );

--***書き文字ドン***
ct_don = entryEffectLife( spep_2+37,  10019, 17, 0x100, -1, 0, 13.8, 227.6 );  --ドン

setEffShake(  spep_2+37,  ct_don,  17,  5);  --揺れ

setEffMoveKey( spep_2 + 37, ct_don, 13.8, 227.6 , 0 );
setEffMoveKey( spep_2 + 40, ct_don, -8.9, 253.4 , 0 );
setEffMoveKey( spep_2 + 42, ct_don, -10.6, 275.9 , 0 );
setEffMoveKey( spep_2 + 44, ct_don, -19.8, 284.9 , 0 );
setEffMoveKey( spep_2 + 46, ct_don, -7.5, 278 , 0 );
setEffMoveKey( spep_2 + 48, ct_don, -19.7, 278.4 , 0 );
setEffMoveKey( spep_2 + 50, ct_don, -13.3, 286.7 , 0 );
setEffMoveKey( spep_2 + 52, ct_don, -13.1, 274.6 , 0 );
setEffMoveKey( spep_2 + 54, ct_don, -13.1, 275.1 , 0 );

setEffScaleKey( spep_2 + 37, ct_don, 1.29, 1.29 );
setEffScaleKey( spep_2 + 40, ct_don, 1.63, 1.63 );
setEffScaleKey( spep_2 + 42, ct_don, 1.98, 1.98 );
setEffScaleKey( spep_2 + 44, ct_don, 2, 2 );
setEffScaleKey( spep_2 + 46, ct_don, 2.02, 2.02 );
setEffScaleKey( spep_2 + 48, ct_don, 2.04, 2.04 );
setEffScaleKey( spep_2 + 50, ct_don, 2.05, 2.05 );
setEffScaleKey( spep_2 + 52, ct_don, 2.06, 2.06 );
setEffScaleKey( spep_2 + 54, ct_don, 2.07, 2.07 );

setEffRotateKey( spep_2 + 37, ct_don, -0.8 );
setEffRotateKey( spep_2 + 40, ct_don, -0.2 );
setEffRotateKey( spep_2 + 41, ct_don, 0.3 );
setEffRotateKey( spep_2 + 54, ct_don, 0.3 );

setEffAlphaKey( spep_2 + 37, ct_don, 255 );
setEffAlphaKey( spep_2 + 48, ct_don, 255 );
setEffAlphaKey( spep_2 + 49, ct_don, 170 );
setEffAlphaKey( spep_2 + 53, ct_don, 85 );
setEffAlphaKey( spep_2 + 54, ct_don, 0 );

--***書き文字ガ***
ct_ga = entryEffectLife( spep_2+77,  10005, 17, 0x100, -1, 0, 140.1, 318.9 );  --ガッ

setEffShake(  spep_2+77,  ct_ga,  17,  5);  --揺れ

setEffMoveKey( spep_2 + 77, ct_ga, 140.1, 318.9 , 0 );
setEffMoveKey( spep_2 + 80, ct_ga, 130.8, 331.3 , 0 );
setEffMoveKey( spep_2 + 82, ct_ga, 134.7, 336.2 , 0 );
setEffMoveKey( spep_2 + 84, ct_ga, 127.9, 338.9 , 0 );
setEffMoveKey( spep_2 + 86, ct_ga, 137.1, 339.9 , 0 );
setEffMoveKey( spep_2 + 88, ct_ga, 128.1, 345 , 0 );
setEffMoveKey( spep_2 + 90, ct_ga, 132.2, 343.8 , 0 );
setEffMoveKey( spep_2 + 92, ct_ga, 124.2, 348.8 , 0 );
setEffMoveKey( spep_2 + 94, ct_ga, 123.5, 350.7 , 0 );

setEffScaleKey( spep_2 + 77, ct_ga, 1.25, 1.25 );
setEffScaleKey( spep_2 + 80, ct_ga, 1.45, 1.45 );
setEffScaleKey( spep_2 + 82, ct_ga, 1.52, 1.52 );
setEffScaleKey( spep_2 + 84, ct_ga, 1.57, 1.57 );
setEffScaleKey( spep_2 + 86, ct_ga, 1.61, 1.61 );
setEffScaleKey( spep_2 + 88, ct_ga, 1.63, 1.63 );
setEffScaleKey( spep_2 + 90, ct_ga, 1.64, 1.64 );
setEffScaleKey( spep_2 + 92, ct_ga, 1.73, 1.73 );
setEffScaleKey( spep_2 + 94, ct_ga, 1.76, 1.76 );

setEffRotateKey( spep_2 + 77, ct_ga, 3 );
setEffRotateKey( spep_2 + 94, ct_ga, 3 );

setEffAlphaKey( spep_2 + 77, ct_ga, 255 );
setEffAlphaKey( spep_2 + 90, ct_ga, 255 );
setEffAlphaKey( spep_2 + 91, ct_ga, 64 );
setEffAlphaKey( spep_2 + 94, ct_ga, 0 );


--***書き文字バキ***
ct_baki = entryEffectLife( spep_2+122,  10020, 18, 0x100, -1, 0, 200.5, 322.8 );  --バキッ

setEffShake(  spep_2+122,  ct_baki,  18,  5);  --揺れ

setEffMoveKey( spep_2 + 122, ct_baki, 200.5, 322.8 , 0 );
setEffMoveKey( spep_2 + 124, ct_baki, 198.9, 337.3 , 0 );
setEffMoveKey( spep_2 + 126, ct_baki, 201, 337 , 0 );
setEffMoveKey( spep_2 + 128, ct_baki, 199.2, 348.8 , 0 );
setEffMoveKey( spep_2 + 130, ct_baki, 201.4, 342 , 0 );
setEffMoveKey( spep_2 + 132, ct_baki, 197.1, 361.1 , 0 );
setEffMoveKey( spep_2 + 134, ct_baki, 208.6, 357.5 , 0 );
setEffMoveKey( spep_2 + 136, ct_baki, 201.7, 358.4 , 0 );
setEffMoveKey( spep_2 + 138, ct_baki, 212.5, 367.8 , 0 );
setEffMoveKey( spep_2 + 140, ct_baki, 216.9, 369.4 , 0 );

setEffScaleKey( spep_2 + 122, ct_baki, 1.58, 1.58 );
setEffScaleKey( spep_2 + 124, ct_baki, 1.67, 1.67 );
setEffScaleKey( spep_2 + 126, ct_baki, 1.7, 1.7 );
setEffScaleKey( spep_2 + 128, ct_baki, 1.77, 1.77 );
setEffScaleKey( spep_2 + 130, ct_baki, 1.82, 1.82 );
setEffScaleKey( spep_2 + 132, ct_baki, 1.86, 1.86 );
setEffScaleKey( spep_2 + 134, ct_baki, 1.88, 1.88 );
setEffScaleKey( spep_2 + 136, ct_baki, 1.89, 1.89 );
setEffScaleKey( spep_2 + 138, ct_baki, 2.14, 2.14 );
setEffScaleKey( spep_2 + 140, ct_baki, 2.22, 2.22 );

setEffRotateKey( spep_2 + 122, ct_baki, 35.2 );
setEffRotateKey( spep_2 + 140, ct_baki, 35.2 );

setEffAlphaKey( spep_2 + 122, ct_baki, 255 );
setEffAlphaKey( spep_2 + 136, ct_baki, 255 );
setEffAlphaKey( spep_2 + 138, ct_baki, 64 );
setEffAlphaKey( spep_2 + 140, ct_baki, 0 );

--***書き文字ドガガガ***
ct_doga = entryEffectLife( spep_2+152, 10017 , 112, 0x100, -1, 0, -138.3, 304  );  --ドガガガ

setEffShake(  spep_2+152,  ct_doga,  112,  10);  --揺れ

setEffMoveKey( spep_2 + 152, ct_doga, -138.3, 304 , 0 );
setEffMoveKey( spep_2 + 154, ct_doga, -115.1, 313.8 , 0 );
setEffMoveKey( spep_2 + 156, ct_doga, -72, 319.6 , 0 );
setEffMoveKey( spep_2 + 158, ct_doga, -55.2, 324.1 , 0 );
setEffMoveKey( spep_2 + 160, ct_doga, -59.7, 328 , 0 );
setEffMoveKey( spep_2 + 162, ct_doga, -40.8, 326.7 , 0 );
setEffMoveKey( spep_2 + 164, ct_doga, -58.6, 325.4 , 0 );
setEffMoveKey( spep_2 + 166, ct_doga, -47.2, 316.6 , 0 );
setEffMoveKey( spep_2 + 168, ct_doga, -60.9, 327.2 , 0 );
setEffMoveKey( spep_2 + 170, ct_doga, -41.7, 312.6 , 0 );
setEffMoveKey( spep_2 + 172, ct_doga, -54.6, 327.8 , 0 );
setEffMoveKey( spep_2 + 174, ct_doga, -39, 323 , 0 );
setEffMoveKey( spep_2 + 176, ct_doga, -49.1, 331.3 , 0 );
setEffMoveKey( spep_2 + 178, ct_doga, -38.8, 318.8 , 0 );
setEffMoveKey( spep_2 + 180, ct_doga, -38.8, 331.9 , 0 );
setEffMoveKey( spep_2 + 182, ct_doga, -42.5, 317.8 , 0 );
setEffMoveKey( spep_2 + 184, ct_doga, -37.6, 333.5 , 0 );
setEffMoveKey( spep_2 + 186, ct_doga, -48.1, 316.9 , 0 );
setEffMoveKey( spep_2 + 188, ct_doga, -27.8, 327.8 , 0 );
setEffMoveKey( spep_2 + 190, ct_doga, -43.4, 322.3 , 0 );
setEffMoveKey( spep_2 + 192, ct_doga, -26.8, 327.9 , 0 );
setEffMoveKey( spep_2 + 194, ct_doga, -36.7, 315.4 , 0 );
setEffMoveKey( spep_2 + 196, ct_doga, -24.4, 328.1 , 0 );
setEffMoveKey( spep_2 + 198, ct_doga, -41.5, 324.2 , 0 );
setEffMoveKey( spep_2 + 200, ct_doga, -24.3, 329.5 , 0 );
setEffMoveKey( spep_2 + 202, ct_doga, -32.1, 316 , 0 );
setEffMoveKey( spep_2 + 204, ct_doga, -23.5, 333.7 , 0 );
setEffMoveKey( spep_2 + 206, ct_doga, -34.5, 315.3 , 0 );
setEffMoveKey( spep_2 + 208, ct_doga, -15, 326.8 , 0 );
setEffMoveKey( spep_2 + 210, ct_doga, -35.8, 324.7 , 0 );
setEffMoveKey( spep_2 + 212, ct_doga, -13.7, 322.6 , 0 );
setEffMoveKey( spep_2 + 214, ct_doga, -29.3, 328.6 , 0 );
setEffMoveKey( spep_2 + 216, ct_doga, -17.9, 317.7 , 0 );
setEffMoveKey( spep_2 + 218, ct_doga, -19.3, 326.5 , 0 );
setEffMoveKey( spep_2 + 220, ct_doga, -24, 330.5 , 0 );
setEffMoveKey( spep_2 + 222, ct_doga, -4.5, 329.2 , 0 );
setEffMoveKey( spep_2 + 224, ct_doga, -23, 327.8 , 0 );
setEffMoveKey( spep_2 + 226, ct_doga, -11.2, 318.8 , 0 );
setEffMoveKey( spep_2 + 228, ct_doga, -25.5, 329.7 , 0 );
setEffMoveKey( spep_2 + 230, ct_doga, -5.6, 314.6 , 0 );
setEffMoveKey( spep_2 + 232, ct_doga, -19, 330.3 , 0 );
setEffMoveKey( spep_2 + 234, ct_doga, -2.9, 325.3 , 0 );
setEffMoveKey( spep_2 + 236, ct_doga, -13.4, 333.9 , 0 );
setEffMoveKey( spep_2 + 238, ct_doga, -2.8, 321 , 0 );
setEffMoveKey( spep_2 + 240, ct_doga, -2.8, 334.6 , 0 );
setEffMoveKey( spep_2 + 242, ct_doga, -6.7, 320 , 0 );
setEffMoveKey( spep_2 + 244, ct_doga, -1.6, 336.1 , 0 );
setEffMoveKey( spep_2 + 246, ct_doga, -12.6, 319.1 , 0 );
setEffMoveKey( spep_2 + 248, ct_doga, 8.4, 330.3 , 0 );
setEffMoveKey( spep_2 + 250, ct_doga, -7.8, 324.6 , 0 );
setEffMoveKey( spep_2 + 252, ct_doga, 9.3, 330.4 , 0 );
setEffMoveKey( spep_2 + 254, ct_doga, -0.9, 317.5 , 0 );
setEffMoveKey( spep_2 + 256, ct_doga, 11.7, 330.6 , 0 );
setEffMoveKey( spep_2 + 258, ct_doga, 9, 336.1 , 0 );
setEffMoveKey( spep_2 + 260, ct_doga, -2, 327.9 , 0 );
setEffMoveKey( spep_2 + 262, ct_doga, 19.1, 350.8 , 0 );
setEffMoveKey( spep_2 + 264, ct_doga, 21.1, 361.8 , 0 );

setEffScaleKey( spep_2 + 152, ct_doga, 1.92, 1.92 );
setEffScaleKey( spep_2 + 154, ct_doga, 2.18, 2.18 );
setEffScaleKey( spep_2 + 156, ct_doga, 2.44, 2.44 );
setEffScaleKey( spep_2 + 158, ct_doga, 2.71, 2.71 );
setEffScaleKey( spep_2 + 160, ct_doga, 2.71, 2.71 );
setEffScaleKey( spep_2 + 162, ct_doga, 2.72, 2.72 );
setEffScaleKey( spep_2 + 166, ct_doga, 2.72, 2.72 );
setEffScaleKey( spep_2 + 168, ct_doga, 2.73, 2.73 );
setEffScaleKey( spep_2 + 172, ct_doga, 2.73, 2.73 );
setEffScaleKey( spep_2 + 174, ct_doga, 2.74, 2.74 );
setEffScaleKey( spep_2 + 178, ct_doga, 2.74, 2.74 );
setEffScaleKey( spep_2 + 180, ct_doga, 2.75, 2.75 );
setEffScaleKey( spep_2 + 186, ct_doga, 2.75, 2.75 );
setEffScaleKey( spep_2 + 188, ct_doga, 2.76, 2.76 );
setEffScaleKey( spep_2 + 192, ct_doga, 2.76, 2.76 );
setEffScaleKey( spep_2 + 194, ct_doga, 2.77, 2.77 );
setEffScaleKey( spep_2 + 198, ct_doga, 2.77, 2.77 );
setEffScaleKey( spep_2 + 200, ct_doga, 2.78, 2.78 );
setEffScaleKey( spep_2 + 204, ct_doga, 2.78, 2.78 );
setEffScaleKey( spep_2 + 206, ct_doga, 2.79, 2.79 );
setEffScaleKey( spep_2 + 210, ct_doga, 2.79, 2.79 );
setEffScaleKey( spep_2 + 212, ct_doga, 2.8, 2.8 );
setEffScaleKey( spep_2 + 216, ct_doga, 2.8, 2.8 );
setEffScaleKey( spep_2 + 218, ct_doga, 2.81, 2.81 );
setEffScaleKey( spep_2 + 222, ct_doga, 2.81, 2.81 );
setEffScaleKey( spep_2 + 224, ct_doga, 2.82, 2.82 );
setEffScaleKey( spep_2 + 228, ct_doga, 2.82, 2.82 );
setEffScaleKey( spep_2 + 230, ct_doga, 2.83, 2.83 );
setEffScaleKey( spep_2 + 236, ct_doga, 2.83, 2.83 );
setEffScaleKey( spep_2 + 238, ct_doga, 2.84, 2.84 );
setEffScaleKey( spep_2 + 242, ct_doga, 2.84, 2.84 );
setEffScaleKey( spep_2 + 244, ct_doga, 2.85, 2.85 );
setEffScaleKey( spep_2 + 248, ct_doga, 2.85, 2.85 );
setEffScaleKey( spep_2 + 250, ct_doga, 2.86, 2.86 );
setEffScaleKey( spep_2 + 254, ct_doga, 2.86, 2.86 );
setEffScaleKey( spep_2 + 256, ct_doga, 2.87, 2.87 );
setEffScaleKey( spep_2 + 258, ct_doga, 2.87, 2.87 );
setEffScaleKey( spep_2 + 260, ct_doga, 2.93, 2.93 );
setEffScaleKey( spep_2 + 262, ct_doga, 2.98, 2.98 );
setEffScaleKey( spep_2 + 264, ct_doga, 3.04, 3.04 );

setEffRotateKey( spep_2 + 152, ct_doga, 10.5 );
setEffRotateKey( spep_2 + 264, ct_doga, 10.5 );

setEffAlphaKey( spep_2 + 152, ct_doga, 255 );
setEffAlphaKey( spep_2 + 258, ct_doga, 255 );
setEffAlphaKey( spep_2 + 259, ct_doga, 170 );
setEffAlphaKey( spep_2 + 260, ct_doga, 170 );
setEffAlphaKey( spep_2 + 261, ct_doga, 85 );
setEffAlphaKey( spep_2 + 264, ct_doga, 0 );

--***書き文字ズン***
ct_zun = entryEffectLife( spep_2+285,  10016, 29, 0x100, -1, 0, 2, 208.6 ); --ズンッ

setEffMoveKey( spep_2 + 285, ct_zun, 2, 208.6 , 0 );
setEffMoveKey( spep_2 + 288, ct_zun, 2.3, 300.4 , 0 );
setEffMoveKey( spep_2 + 290, ct_zun, 2.5, 331 , 0 );
setEffMoveKey( spep_2 + 292, ct_zun, 2.2, 332.2 , 0 );
setEffMoveKey( spep_2 + 294, ct_zun, 2, 333.4 , 0 );
setEffMoveKey( spep_2 + 296, ct_zun, 1.8, 334.6 , 0 );
setEffMoveKey( spep_2 + 298, ct_zun, 1.6, 335.8 , 0 );
setEffMoveKey( spep_2 + 300, ct_zun, 1.3, 337 , 0 );
setEffMoveKey( spep_2 + 302, ct_zun, 1.1, 338.2 , 0 );
setEffMoveKey( spep_2 + 304, ct_zun, 0.9, 339.3 , 0 );
setEffMoveKey( spep_2 + 306, ct_zun, 0.7, 340.5 , 0 );
setEffMoveKey( spep_2 + 308, ct_zun, 0.4, 341.7 , 0 );
setEffMoveKey( spep_2 + 310, ct_zun, 0.2, 342.9 , 0 );
setEffMoveKey( spep_2 + 312, ct_zun, -1.2, 350.3 , 0 );
setEffMoveKey( spep_2 + 314, ct_zun, -2.5, 357.7 , 0 );

setEffScaleKey( spep_2 + 285, ct_zun, 2.46, 2.46 );
setEffScaleKey( spep_2 + 288, ct_zun, 3.1, 3.1 );
setEffScaleKey( spep_2 + 290, ct_zun, 3.32, 3.32 );
setEffScaleKey( spep_2 + 292, ct_zun, 3.33, 3.33 );
setEffScaleKey( spep_2 + 294, ct_zun, 3.35, 3.35 );
setEffScaleKey( spep_2 + 296, ct_zun, 3.36, 3.36 );
setEffScaleKey( spep_2 + 298, ct_zun, 3.38, 3.38 );
setEffScaleKey( spep_2 + 300, ct_zun, 3.39, 3.39 );
setEffScaleKey( spep_2 + 302, ct_zun, 3.4, 3.4 );
setEffScaleKey( spep_2 + 304, ct_zun, 3.42, 3.42 );
setEffScaleKey( spep_2 + 306, ct_zun, 3.43, 3.43 );
setEffScaleKey( spep_2 + 308, ct_zun, 3.45, 3.45 );
setEffScaleKey( spep_2 + 310, ct_zun, 3.46, 3.46 );
setEffScaleKey( spep_2 + 312, ct_zun, 3.55, 3.55 );
setEffScaleKey( spep_2 + 314, ct_zun, 3.63, 3.63 );

setEffRotateKey( spep_2 + 285, ct_zun, -5.5 );
setEffRotateKey( spep_2 + 314, ct_zun, -5.5 );

setEffAlphaKey( spep_2 + 285, ct_zun, 255 );
setEffAlphaKey( spep_2 + 310, ct_zun, 255 );
setEffAlphaKey( spep_2 + 311, ct_zun, 128 );
setEffAlphaKey( spep_2 + 314, ct_zun, 0 );

--***書き文字シュン***

ct_shun = entryEffectLife( spep_2 + 314, 10011, 14, 0x100, -1, 0, -195.3, 68.4 );
setEffMoveKey( spep_2 + 314, ct_shun, -195.3, 68.4 , 0 );
setEffMoveKey( spep_2 + 316, ct_shun, -201.3, 73.8 , 0 );
setEffMoveKey( spep_2 + 318, ct_shun, -204.9, 77.1 , 0 );
setEffMoveKey( spep_2 + 320, ct_shun, -206.2, 78.2 , 0 );
setEffMoveKey( spep_2 + 328, ct_shun, -206.2, 78.2 , 0 );

setEffScaleKey( spep_2 + 314, ct_shun, 0.6, 0.6 );
setEffScaleKey( spep_2 + 316, ct_shun, 0.92, 0.92 );
setEffScaleKey( spep_2 + 318, ct_shun, 1.11, 1.11 );
setEffScaleKey( spep_2 + 320, ct_shun, 1.17, 1.17 );
setEffScaleKey( spep_2 + 322, ct_shun, 1.18, 1.18 );
setEffScaleKey( spep_2 + 324, ct_shun, 1.21, 1.21 );
setEffScaleKey( spep_2 + 326, ct_shun, 1.25, 1.25 );
setEffScaleKey( spep_2 + 328, ct_shun, 1.31, 1.31 );

setEffRotateKey( spep_2 + 314, ct_shun, -14.2 );
setEffRotateKey( spep_2 + 328, ct_shun, -14.2 );

setEffAlphaKey( spep_2 + 314, ct_shun, 255 );
setEffAlphaKey( spep_2 + 320, ct_shun, 255 );
setEffAlphaKey( spep_2 + 322, ct_shun, 239 );
setEffAlphaKey( spep_2 + 324, ct_shun, 191 );
setEffAlphaKey( spep_2 + 326, ct_shun, 112 );
setEffAlphaKey( spep_2 + 328, ct_shun, 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+16 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setMoveKey( SP_dodge, 1, 227.8, 29.1 , 0 );
setMoveKey( SP_dodge+2, 1, 181.9, 28.7 , 0 );
setMoveKey( SP_dodge+4, 1, 169.8, 28.4 , 0 );
setMoveKey( SP_dodge+6, 1, 143.1, 28.3 , 0 );
setMoveKey( SP_dodge+8, 1, 132.5, 28.2 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( spep_2 + 0, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 12, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 14, 1, 1.07, 1.07 );
setScaleKey( SP_dodge, 1, 1.05, 1.05 );
setScaleKey( SP_dodge+2, 1, 1.03, 1.03 );
setScaleKey( SP_dodge+4, 1, 1.02, 1.02 );
setScaleKey( SP_dodge+6, 1, 1.02, 1.02 );
setScaleKey( SP_dodge+8, 1, 1.01, 1.01 );

--changeAnime(  SP_dodge+9,    1,  100);
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

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_3 = spep_2+330;

--***フェードと背景***
entryFade( spep_3-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end


--[[speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

------------------------------------------------------
-- 溜めから発射(238F)
------------------------------------------------------

spep_4 = spep_3+90;

--***フェードと背景***
entryFade( spep_4-6, 3, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***溜めから発射***
tamehassya = entryEffect(  spep_4,  SP_04,  0x100,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_4,  tamehassya,  1.0,  1.0);
setEffScaleKey(  spep_4+238,  tamehassya,  1.0,  1.0);
setEffMoveKey(  spep_4,  tamehassya,  0,  0);
setEffMoveKey(  spep_4+238,  tamehassya,  0,  0);
setEffRotateKey(  spep_4,  tamehassya,  0);
setEffRotateKey(  spep_4+238,  tamehassya,  0);
setEffAlphaKey(  spep_4,  tamehassya,  255);
setEffAlphaKey(  spep_4+238,  tamehassya,  255);
setEffAlphaKey(  spep_4+239,  tamehassya,  0);
setEffAlphaKey(  spep_4+240,  tamehassya,  0);

--***集中線***
shuchusen4 = entryEffectLife(  spep_4,  906,  238,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_4+0,  shuchusen4,  2.2,  2.2);
setEffScaleKey(  spep_4+161,  shuchusen4,  2.2,  2.2);
setEffScaleKey(  spep_4+162,  shuchusen4,  1.2,  1.2);
setEffScaleKey(  spep_4+238,  shuchusen4,  1.2,  1.2);
setEffMoveKey(  spep_4+0,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+238,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4+0, shuchusen4,  0);
setEffRotateKey(  spep_4+238, shuchusen4,  0);
setEffAlphaKey(  spep_4+0,  shuchusen4,  0);
setEffAlphaKey(  spep_4+38,  shuchusen4,  0);
setEffAlphaKey(  spep_4+39,  shuchusen4,  0);
setEffAlphaKey(  spep_4+40,  shuchusen4,  255);
setEffAlphaKey(  spep_4+238,  shuchusen4,  255);

--***書き文字シュン***
ct_shun2 = entryEffectLife( spep_4 + 4, 10011, 14, 0x100, -1, 0, 226.6, 179 );
setEffMoveKey( spep_4 + 4, ct_shun2, 226.6, 179 , 0 );
setEffMoveKey( spep_4 + 6, ct_shun2, 224.5, 186.9 , 0 );
setEffMoveKey( spep_4 + 8, ct_shun2, 223.2, 191.7 , 0 );
setEffMoveKey( spep_4 + 10, ct_shun2, 222.8, 193.3 , 0 );
setEffMoveKey( spep_4 + 12, ct_shun2, 222.8, 193.3 , 0 );
setEffMoveKey( spep_4 + 14, ct_shun2, 222.8, 193.2 , 0 );
setEffMoveKey( spep_4 + 18, ct_shun2, 222.8, 193.2 , 0 );

setEffScaleKey( spep_4 + 4, ct_shun2, 0.6, 0.6 );
setEffScaleKey( spep_4 + 6, ct_shun2, 0.92, 0.92 );
setEffScaleKey( spep_4 + 8, ct_shun2, 1.11, 1.11 );
setEffScaleKey( spep_4 + 10, ct_shun2, 1.17, 1.17 );
setEffScaleKey( spep_4 + 12, ct_shun2, 1.18, 1.18 );
setEffScaleKey( spep_4 + 14, ct_shun2, 1.21, 1.21 );
setEffScaleKey( spep_4 + 16, ct_shun2, 1.25, 1.25 );
setEffScaleKey( spep_4 + 18, ct_shun2, 1.31, 1.31 );

setEffRotateKey( spep_4 + 4, ct_shun2, 18.7 );
setEffRotateKey( spep_4 + 18, ct_shun2, 18.7 );

setEffAlphaKey( spep_4 + 4, ct_shun2, 255 );
setEffAlphaKey( spep_4 + 10, ct_shun2, 255 );
setEffAlphaKey( spep_4 + 12, ct_shun2, 239 );
setEffAlphaKey( spep_4 + 14, ct_shun2, 191 );
setEffAlphaKey( spep_4 + 16, ct_shun2, 112 );
setEffAlphaKey( spep_4 + 18, ct_shun2, 0 );

--***書き文字ズオ***

ct_zuo = entryEffectLife( spep_4 + 164, 10012, 18, 0x100, -1, 0, 138.4, 344.3 );

setEffShake(  spep_4 + 164,  ct_zuo,  18,  5);  --揺れ

setEffMoveKey( spep_4 + 164, ct_zuo, 138.4, 344.3 , 0 );
setEffMoveKey( spep_4 + 166, ct_zuo, 121.7, 365.5 , 0 );
setEffMoveKey( spep_4 + 168, ct_zuo, 111.7, 378.2 , 0 );
setEffMoveKey( spep_4 + 170, ct_zuo, 108.4, 382.5 , 0 );
setEffMoveKey( spep_4 + 172, ct_zuo, 111.7, 391.2 , 0 );
setEffMoveKey( spep_4 + 174, ct_zuo, 115.1, 399.8 , 0 );
setEffMoveKey( spep_4 + 176, ct_zuo, 118.4, 408.5 , 0 );
setEffMoveKey( spep_4 + 178, ct_zuo, 121.7, 417.2 , 0 );
setEffMoveKey( spep_4 + 180, ct_zuo, 125.1, 425.8 , 0 );
setEffMoveKey( spep_4 + 182, ct_zuo, 128.4, 434.5 , 0 );

setEffScaleKey( spep_4 + 164, ct_zuo, 2.07, 1.58 );
setEffScaleKey( spep_4 + 166, ct_zuo, 3.07, 2.35 );
setEffScaleKey( spep_4 + 168, ct_zuo, 3.67, 2.81 );
setEffScaleKey( spep_4 + 170, ct_zuo, 3.87, 2.96 );
setEffScaleKey( spep_4 + 172, ct_zuo, 3.99, 3.05 );
setEffScaleKey( spep_4 + 174, ct_zuo, 4.12, 3.15 );
setEffScaleKey( spep_4 + 176, ct_zuo, 4.24, 3.24 );
setEffScaleKey( spep_4 + 178, ct_zuo, 4.36, 3.34 );
setEffScaleKey( spep_4 + 180, ct_zuo, 4.49, 3.43 );
setEffScaleKey( spep_4 + 182, ct_zuo, 4.61, 3.53 );

setEffRotateKey( spep_4 + 164, ct_zuo, 13.3 );
setEffRotateKey( spep_4 + 182, ct_zuo, 13.3 );

setEffAlphaKey( spep_4 + 164, ct_zuo, 255 );
setEffAlphaKey( spep_4 + 170, ct_zuo, 255 );
setEffAlphaKey( spep_4 + 172, ct_zuo, 213 );
setEffAlphaKey( spep_4 + 174, ct_zuo, 170 );
setEffAlphaKey( spep_4 + 176, ct_zuo, 128 );
setEffAlphaKey( spep_4 + 178, ct_zuo, 85 );
setEffAlphaKey( spep_4 + 180, ct_zuo, 42 );
setEffAlphaKey( spep_4 + 182, ct_zuo, 0 );

--***SE***
playSe( spep_4+4, 43);  --瞬間移動
playSe( spep_4+18, SE_04);  --カットイン音
--playSe(  spep_4+66,  13);  --ビーム光る音66F
--playSe(  spep_4+66,  1040);  --ビーム光る音66F
playSe( spep_4+66, 1035);  --きため音
--playSe( spep_4+116, 13);  --びーむたまる
playSe( spep_4+116, 1040);  --びーむたまる
playSe( spep_4+164, 1021);  --はっしゃ


--***カットイン***32
speff = entryEffect(  spep_4+18,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_4+18,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4+36, 190006, 67, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_4 + 36, ctgogo, 255 );
setEffAlphaKey( spep_4 + 94, ctgogo, 255 );
setEffAlphaKey( spep_4 + 95, ctgogo, 255 );
setEffAlphaKey( spep_4 + 96, ctgogo, 191 );
setEffAlphaKey( spep_4 + 98, ctgogo, 128 );
setEffAlphaKey( spep_4 + 100, ctgogo, 64 );
--setEffAlphaKey( spep_4 + 102, ctgogo, 0 );
setEffAlphaKey( spep_4 + 103, ctgogo, 0 );

setEffRotateKey(  spep_4+36,  ctgogo,  0);
setEffRotateKey(  spep_4+103,  ctgogo,  0);

setEffScaleKey(  spep_4+36,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_4+94,  ctgogo,  0.7,  0.7);
--setEffScaleKey( spep_4 + 98, ctgogo, 0.79, 0.79 );
--setEffScaleKey( spep_4 + 100, ctgogo, 0.93, 0.93 );
setEffScaleKey( spep_4 + 103, ctgogo, 1.07, 1.07 );

setEffMoveKey(  spep_4+36,  ctgogo,  0,  530);
setEffMoveKey(  spep_4+103,  ctgogo,  0,  530);

------------------------------------------------------
-- ビーム当たる(86F)
------------------------------------------------------
spep_5 = spep_4+238;

--***フェードと背景***
entryFade( spep_5-3, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- 短い白


--***ビーム当たる前面***+2
beammae = entryEffect(  spep_5+2,  SP_05,  0x100,  -1,  0,  0,  0);  

setEffScaleKey(  spep_5+2,  beammae,  1,  1);
setEffScaleKey(  spep_5+86,  beammae,  1,  1);
setEffMoveKey(  spep_5+2,  beammae,  0,  0);
setEffMoveKey(  spep_5+86,  beammae,  0,  0);
setEffRotateKey(  spep_5+2,  beammae,  0);
setEffRotateKey(  spep_5+86,  beammae,  0);
setEffAlphaKey(  spep_5+2,  beammae,  255);
setEffAlphaKey(  spep_5+86,  beammae,  255);
setEffAlphaKey(  spep_5+87,  beammae,  0);
setEffAlphaKey(  spep_5+88,  beammae,  0);

--***ビーム当たる背面***+2
beamushiro = entryEffect(  spep_5+2,  SP_06,  0x80,  -1,  0,  0,  0);  

setEffScaleKey(  spep_5+2,  beamushiro,  1,  1);
setEffScaleKey(  spep_5+86,  beamushiro,  1,  1);
setEffMoveKey(  spep_5+2,  beamushiro,  0,  0);
setEffMoveKey(  spep_5+86,  beamushiro,  0,  0);
setEffRotateKey(  spep_5+2,  beamushiro,  0);
setEffRotateKey(  spep_5+86,  beamushiro,  0);
setEffAlphaKey(  spep_5+2,  beamushiro,  255);
setEffAlphaKey(  spep_5+86,  beamushiro,  255);
setEffAlphaKey(  spep_5+87,  beamushiro,  0);
setEffAlphaKey(  spep_5+88,  beamushiro,  0);

--***集中線***
shuchusen5 = entryEffectLife(  spep_5,  906,  86,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.6,  1.6);
setEffScaleKey(  spep_5+86,  shuchusen5,  1.6,  1.6);
setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffMoveKey(  spep_5+86,  shuchusen5,  0,  0);
setEffRotateKey(  spep_5, shuchusen5,  0);
setEffRotateKey(  spep_5+86, shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+86,  shuchusen5,  255);

--***敵のモーション**
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 86, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 60.6, 70.7 , 0 );
setMoveKey( spep_5 + 2, 1, 58.7, 63.1 , 0 );
setMoveKey( spep_5 + 4, 1, 59.9, 61.8 , 0 );
setMoveKey( spep_5 + 6, 1, 60, 62.9 , 0 );
setMoveKey( spep_5 + 8, 1, 61.4, 70.4 , 0 );
setMoveKey( spep_5 + 10, 1, 60.6, 64.3 , 0 );
setMoveKey( spep_5 + 12, 1, 60.1, 68.4 , 0 );
setMoveKey( spep_5 + 14, 1, 59.8, 60.7 , 0 );
setMoveKey( spep_5 + 16, 1, 61.8, 67.8 , 0 );
setMoveKey( spep_5 + 18, 1, 58.9, 61.6 , 0 );
setMoveKey( spep_5 + 20, 1, 62.6, 67.9 , 0 );
setMoveKey( spep_5 + 22, 1, 59.5, 61.8 , 0 );
setMoveKey( spep_5 + 24, 1, 63, 69 , 0 );
setMoveKey( spep_5 + 26, 1, 59, 61.3 , 0 );
setMoveKey( spep_5 + 28, 1, 63.1, 67.8 , 0 );
setMoveKey( spep_5 + 30, 1, 57.5, 66.8 , 0 );
setMoveKey( spep_5 + 32, 1, 62.3, 64.3 , 0 );
setMoveKey( spep_5 + 34, 1, 58.7, 66.4 , 0 );
setMoveKey( spep_5 + 36, 1, 61.4, 64 , 0 );
setMoveKey( spep_5 + 38, 1, 59.3, 69.6 , 0 );
setMoveKey( spep_5 + 40, 1, 59.2, 60.1 , 0 );
setMoveKey( spep_5 + 42, 1, 61, 69.6 , 0 );
setMoveKey( spep_5 + 44, 1, 55.6, 60.7 , 0 );
setMoveKey( spep_5 + 46, 1, 59.4, 68.1 , 0 );
setMoveKey( spep_5 + 48, 1, 57.1, 60.5 , 0 );
setMoveKey( spep_5 + 50, 1, 57.8, 69.2 , 0 );
setMoveKey( spep_5 + 52, 1, 51.1, 58.7 , 0 );
setMoveKey( spep_5 + 54, 1, 54.3, 67.4 , 0 );
setMoveKey( spep_5 + 56, 1, 47.3, 58.3 , 0 );
setMoveKey( spep_5 + 58, 1, 20.9, 60.9 , 0 );
setMoveKey( spep_5 + 60, 1, 21.8, 52.6 , 0 );
setMoveKey( spep_5 + 62, 1, 25.1, 55.5 , 0 );
setMoveKey( spep_5 + 64, 1, 28.2, 68.3 , 0 );
setMoveKey( spep_5 + 66, 1, 24.8, 59.1 , 0 );
setMoveKey( spep_5 + 68, 1, 29.2, 75.3 , 0 );
setMoveKey( spep_5 + 70, 1, 25.4, 63.2 , 0 );
setMoveKey( spep_5 + 72, 1, 30.2, 70.3 , 0 );
setMoveKey( spep_5 + 74, 1, 26, 77.8 , 0 );
setMoveKey( spep_5 + 76, 1, 30.2, 61.8 , 0 );
setMoveKey( spep_5 + 78, 1, 27.2, 74.3 , 0 );
setMoveKey( spep_5 + 86, 1, 27.2, 74.3 , 0 );

setScaleKey( spep_5 + 0, 1, 0.04, 0.04 );
setScaleKey( spep_5 + 22, 1, 0.04, 0.04 );
setScaleKey( spep_5 + 24, 1, 0.05, 0.05 );
setScaleKey( spep_5 + 28, 1, 0.05, 0.05 );
setScaleKey( spep_5 + 30, 1, 0.06, 0.06 );
setScaleKey( spep_5 + 32, 1, 0.07, 0.07 );
setScaleKey( spep_5 + 34, 1, 0.07, 0.07 );
setScaleKey( spep_5 + 36, 1, 0.08, 0.08 );
setScaleKey( spep_5 + 38, 1, 0.1, 0.1 );
setScaleKey( spep_5 + 40, 1, 0.11, 0.11 );
setScaleKey( spep_5 + 42, 1, 0.13, 0.13 );
setScaleKey( spep_5 + 44, 1, 0.16, 0.16 );
setScaleKey( spep_5 + 46, 1, 0.19, 0.19 );
setScaleKey( spep_5 + 48, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 50, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 52, 1, 0.38, 0.38 );
setScaleKey( spep_5 + 54, 1, 0.52, 0.52 );
setScaleKey( spep_5 + 56, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 58, 1, 2.14, 2.14 );
setScaleKey( spep_5 + 60, 1, 2.61, 2.61 );
setScaleKey( spep_5 + 62, 1, 2.75, 2.75 );
setScaleKey( spep_5 + 64, 1, 2.83, 2.83 );
setScaleKey( spep_5 + 66, 1, 2.89, 2.89 );
setScaleKey( spep_5 + 68, 1, 2.92, 2.92 );
setScaleKey( spep_5 + 70, 1, 2.95, 2.95 );
setScaleKey( spep_5 + 72, 1, 2.96, 2.96 );
setScaleKey( spep_5 + 74, 1, 2.97, 2.97 );
setScaleKey( spep_5 + 76, 1, 2.98, 2.98 );
setScaleKey( spep_5 + 86, 1, 2.98, 2.98 );

setRotateKey( spep_5 + 0, 1, -31.3 );
setRotateKey( spep_5 + 86, 1, -31.3 );

--***SE***
playSe( spep_5+10, 1022);  --のびるはっしゃ
playSe( spep_5+70, 1023);  --HIT

------------------------------------------------------
-- ラスト爆発前面(180F)798
------------------------------------------------------
spep_6 = spep_5+86;

--***SE***
playSe( spep_6+14, 1064);  --HIT
playSe( spep_6+68, 1067);  --爆破
playSe( spep_6+78, 1024);  --爆破

--***フェードと背景***
entryFade( spep_6-3, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- 短い白
entryFade( spep_6+64, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- 短い白
entryFade( spep_6+76, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- 短い白
entryFadeBg(spep_6,0,180,0,0,0,0,255);--黒BG

--***ラスト爆発前面***+2
BomFront = entryEffect(  spep_6+2,  SP_07,  0x100,  -1,  0,  0,  0);  --手前

setEffShake(  spep_6 + 68,  BomFront,  102,  10);  --揺れ

setEffScaleKey(  spep_6+2,  BomFront,  1.0,  1.0);
setEffScaleKey(  spep_6+180,  BomFront,  1.0,  1.0);
setEffMoveKey(  spep_6+2,  BomFront,  0,  0);
setEffMoveKey(  spep_6+180,  BomFront,  0,  0);
setEffRotateKey(  spep_6+2,  BomFront,  0);
setEffRotateKey(  spep_6+180,  BomFront,  0);
setEffAlphaKey(  spep_6+2,  BomFront,  255);
setEffAlphaKey(  spep_6+180,  BomFront,  255);

--***書き文字ドゴォンッ***
ct_dgonn = entryEffectLife( spep_6 + 68, 10018, 48, 0x100, -1, 0, 49.7, 370.5 );

setEffShake(  spep_6 + 68,  ct_dgonn,  48,  5);  --揺れ

setEffMoveKey( spep_6 + 68, ct_dgonn, 49.7, 370.5 , 0 );
setEffMoveKey( spep_6 + 70, ct_dgonn, 36.3, 387.9 , 0 );
setEffMoveKey( spep_6 + 72, ct_dgonn, 31.9, 401.7 , 0 );
setEffMoveKey( spep_6 + 74, ct_dgonn, 32.7, 394.6 , 0 );
setEffMoveKey( spep_6 + 76, ct_dgonn, 31.8, 403.5 , 0 );
setEffMoveKey( spep_6 + 78, ct_dgonn, 37.2, 397.1 , 0 );
setEffMoveKey( spep_6 + 80, ct_dgonn, 31.2, 397 , 0 );
setEffMoveKey( spep_6 + 82, ct_dgonn, 39.4, 399.9 , 0 );
setEffMoveKey( spep_6 + 84, ct_dgonn, 34.8, 393.1 , 0 );
setEffMoveKey( spep_6 + 86, ct_dgonn, 36.6, 396.9 , 0 );
setEffMoveKey( spep_6 + 88, ct_dgonn, 36.9, 390.2 , 0 );
setEffMoveKey( spep_6 + 90, ct_dgonn, 35.4, 399.8 , 0 );
setEffMoveKey( spep_6 + 92, ct_dgonn, 40.4, 393.8 , 0 );
setEffMoveKey( spep_6 + 94, ct_dgonn, 33.9, 394.3 , 0 );
setEffMoveKey( spep_6 + 96, ct_dgonn, 41.7, 397.7 , 0 );
setEffMoveKey( spep_6 + 98, ct_dgonn, 37.8, 395.7 , 0 );
setEffMoveKey( spep_6 + 100, ct_dgonn, 32.7, 391.7 , 0 );
setEffMoveKey( spep_6 + 102, ct_dgonn, 26.3, 404.6 , 0 );
setEffMoveKey( spep_6 + 104, ct_dgonn, 27.6, 400.3 , 0 );
setEffMoveKey( spep_6 + 106, ct_dgonn, 16.7, 402.6 , 0 );
setEffMoveKey( spep_6 + 108, ct_dgonn, 22.9, 408.2 , 0 );
setEffMoveKey( spep_6 + 110, ct_dgonn, 14.7, 401.7 , 0 );
setEffMoveKey( spep_6 + 112, ct_dgonn, 14.8, 407.7 , 0 );
setEffMoveKey( spep_6 + 114, ct_dgonn, 13.8, 400.5 , 0 );
setEffMoveKey( spep_6 + 116, ct_dgonn, 13.5, 400.6 , 0 );

setEffScaleKey( spep_6 + 68, ct_dgonn, 2.98, 2.98 );
setEffScaleKey( spep_6 + 70, ct_dgonn, 3.2, 3.2 );
setEffScaleKey( spep_6 + 72, ct_dgonn, 3.27, 3.27 );
setEffScaleKey( spep_6 + 74, ct_dgonn, 3.28, 3.28 );
setEffScaleKey( spep_6 + 76, ct_dgonn, 3.3, 3.3 );
setEffScaleKey( spep_6 + 78, ct_dgonn, 3.31, 3.31 );
setEffScaleKey( spep_6 + 80, ct_dgonn, 3.32, 3.32 );
setEffScaleKey( spep_6 + 82, ct_dgonn, 3.33, 3.33 );
setEffScaleKey( spep_6 + 84, ct_dgonn, 3.33, 3.33 );
setEffScaleKey( spep_6 + 86, ct_dgonn, 3.34, 3.34 );
setEffScaleKey( spep_6 + 88, ct_dgonn, 3.35, 3.35 );
setEffScaleKey( spep_6 + 90, ct_dgonn, 3.35, 3.35 );
setEffScaleKey( spep_6 + 92, ct_dgonn, 3.36, 3.36 );
setEffScaleKey( spep_6 + 98, ct_dgonn, 3.36, 3.36 );
setEffScaleKey( spep_6 + 100, ct_dgonn, 3.52, 3.52 );
setEffScaleKey( spep_6 + 102, ct_dgonn, 3.65, 3.65 );
setEffScaleKey( spep_6 + 104, ct_dgonn, 3.77, 3.77 );
setEffScaleKey( spep_6 + 106, ct_dgonn, 3.87, 3.87 );
setEffScaleKey( spep_6 + 108, ct_dgonn, 3.95, 3.95 );
setEffScaleKey( spep_6 + 110, ct_dgonn, 4.02, 4.02 );
setEffScaleKey( spep_6 + 112, ct_dgonn, 4.06, 4.06 );
setEffScaleKey( spep_6 + 114, ct_dgonn, 4.09, 4.09 );
setEffScaleKey( spep_6 + 116, ct_dgonn, 4.1, 4.1 );

setEffRotateKey( spep_6 + 68, ct_dgonn, -31.7 );
setEffRotateKey( spep_6 + 116, ct_dgonn, -31.7 );

setEffAlphaKey( spep_6 + 68, ct_dgonn, 255 );
setEffAlphaKey( spep_6 + 98, ct_dgonn, 255 );
setEffAlphaKey( spep_6 + 100, ct_dgonn, 201 );
setEffAlphaKey( spep_6 + 102, ct_dgonn, 154 );
setEffAlphaKey( spep_6 + 104, ct_dgonn, 113 );
setEffAlphaKey( spep_6 + 106, ct_dgonn, 79 );
setEffAlphaKey( spep_6 + 108, ct_dgonn, 50 );
setEffAlphaKey( spep_6 + 110, ct_dgonn, 28 );
setEffAlphaKey( spep_6 + 112, ct_dgonn, 13 );
setEffAlphaKey( spep_6 + 114, ct_dgonn, 3 );
setEffAlphaKey( spep_6 + 116, ct_dgonn, 0 );

-- ダメージ表示
dealDamage(spep_6+68);
endPhase(spep_6+170);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 突進(116F)
------------------------------------------------------
spep_1 = 0;

--***フェードと背景***
entryFade( spep_1, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***集中線***
shuchusen1 = entryEffectLife( spep_1, 906, 116, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  1.2,  1.2);
setEffScaleKey(  spep_1+116,  shuchusen1,  1.2,  1.2);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+116,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+116,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  200);--ちょっと薄くする
setEffAlphaKey(  spep_1+116,  shuchusen1,  200);--ちょっと薄くする

--***突進***
tosshin = entryEffect(  spep_1,  SP_01x,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  tosshin,  1.0,  1.0);
setEffScaleKey(  spep_1+116,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin,  0,  0);
setEffMoveKey(  spep_1+116,  tosshin,  0,  0);
setEffRotateKey(  spep_1,  tosshin,  0);
setEffRotateKey(  spep_1+116,  tosshin,  0);
setEffAlphaKey(  spep_1,  tosshin,  255);
setEffAlphaKey(  spep_1+116,  tosshin,  255);
setEffAlphaKey(  spep_1+118,  tosshin,  0);

--***SE***
playSe(  spep_1+4,  8);  --ダッシュ
playSe(  spep_1+70,  9);  --ダッシュ


--***書き文字***集中線よりプライオリティは下になるテスト表記
ct_gyun = entryEffectLife( spep_1,  10007, 116, 0x100, -1, 0, -41.8, 188.5 );  --ギュンッ

setEffMoveKey( spep_1 , ct_gyun, -41.8, 188.5 , 0 );
setEffMoveKey( spep_1 + 66, ct_gyun, -41.8, 188.5 , 0 );
setEffMoveKey( spep_1 + 68, ct_gyun, -63.8, 226 , 0 );
setEffMoveKey( spep_1 + 70, ct_gyun, -79.5, 252.9 , 0 );
setEffMoveKey( spep_1 + 72, ct_gyun, -88.9, 269 , 0 );
setEffMoveKey( spep_1 + 74, ct_gyun, -92.1, 274.3 , 0 );
setEffMoveKey( spep_1 + 76, ct_gyun, -92.1, 274.3 , 0 );
setEffMoveKey( spep_1 + 78, ct_gyun, -92, 274.3 , 0 );
setEffMoveKey( spep_1 + 88, ct_gyun, -92, 274.3 , 0 );
setEffMoveKey( spep_1 + 90, ct_gyun, -91.9, 274.3 , 0 );
setEffMoveKey( spep_1 + 92, ct_gyun, -91.9, 274.3 , 0 );
setEffMoveKey( spep_1 + 94, ct_gyun, -91.9, 274.2 , 0 );
setEffMoveKey( spep_1 + 96, ct_gyun, -91.8, 274.2 , 0 );
setEffMoveKey( spep_1 + 98, ct_gyun, -91.8, 274.1 , 0 );
setEffMoveKey( spep_1 + 100, ct_gyun, -91.7, 274.1 , 0 );
setEffMoveKey( spep_1 + 102, ct_gyun, -91.7, 274 , 0 );
setEffMoveKey( spep_1 + 116, ct_gyun, -91.7, 274 , 0 );

setEffScaleKey( spep_1 , ct_gyun, 1.6, 1.6 );
setEffScaleKey( spep_1 + 66, ct_gyun, 1.6, 1.6 );
setEffScaleKey( spep_1 + 68, ct_gyun, 2.55, 2.55 );
setEffScaleKey( spep_1 + 70, ct_gyun, 3.23, 3.23 );
setEffScaleKey( spep_1 + 72, ct_gyun, 3.63, 3.63 );
setEffScaleKey( spep_1 + 74, ct_gyun, 3.77, 3.77 );
setEffScaleKey( spep_1 + 76, ct_gyun, 3.82, 3.82 );
setEffScaleKey( spep_1 + 78, ct_gyun, 3.87, 3.87 );
setEffScaleKey( spep_1 + 80, ct_gyun, 3.91, 3.91 );
setEffScaleKey( spep_1 + 82, ct_gyun, 3.96, 3.96 );
setEffScaleKey( spep_1 + 84, ct_gyun, 4.01, 4.01 );
setEffScaleKey( spep_1 + 86, ct_gyun, 4.06, 4.06 );
setEffScaleKey( spep_1 + 88, ct_gyun, 4.1, 4.1 );
setEffScaleKey( spep_1 + 90, ct_gyun, 4.15, 4.15 );
setEffScaleKey( spep_1 + 92, ct_gyun, 4.2, 4.2 );
setEffScaleKey( spep_1 + 94, ct_gyun, 4.33, 4.33 );
setEffScaleKey( spep_1 + 96, ct_gyun, 4.45, 4.45 );
setEffScaleKey( spep_1 + 98, ct_gyun, 4.58, 4.58 );
setEffScaleKey( spep_1 + 100, ct_gyun, 4.7, 4.7 );
setEffScaleKey( spep_1 + 102, ct_gyun, 4.83, 4.83 );
setEffScaleKey( spep_1 + 116, ct_gyun, 4.83, 4.83 );

setEffRotateKey( spep_1, ct_gyun, -23.4 );
setEffRotateKey( spep_1 + 66, ct_gyun, -23.4 );
setEffRotateKey( spep_1 + 68, ct_gyun, -22.6 );
setEffRotateKey( spep_1 + 70, ct_gyun, -22 );
setEffRotateKey( spep_1 + 72, ct_gyun, -21.6 );
setEffRotateKey( spep_1 + 74, ct_gyun, -21.5 );
setEffRotateKey( spep_1 + 78, ct_gyun, -21.5 );
setEffRotateKey( spep_1 + 80, ct_gyun, -21.4 );
setEffRotateKey( spep_1 + 86, ct_gyun, -21.4 );
setEffRotateKey( spep_1 + 88, ct_gyun, -21.3 );
setEffRotateKey( spep_1 + 116, ct_gyun, -21.3 );

setEffAlphaKey( spep_1 , ct_gyun, 0 );
setEffAlphaKey( spep_1+64 , ct_gyun, 0 );
setEffAlphaKey( spep_1+65 , ct_gyun, 0 );
setEffAlphaKey( spep_1 + 66, ct_gyun, 255 );
setEffAlphaKey( spep_1 + 92, ct_gyun, 255 );
setEffAlphaKey( spep_1 + 94, ct_gyun, 204 );
setEffAlphaKey( spep_1 + 96, ct_gyun, 153 );
setEffAlphaKey( spep_1 + 98, ct_gyun, 102 );
setEffAlphaKey( spep_1 + 100, ct_gyun, 51 );
setEffAlphaKey( spep_1 + 102, ct_gyun, 0 );
setEffAlphaKey( spep_1 + 116, ct_gyun, 0 );

------------------------------------------------------
-- 格闘(330F)
------------------------------------------------------
spep_2 = spep_1+116;

--***フェードと背景***
entryFade( spep_2-6, 3, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+144, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- 短い白

--***格闘前面***
kakutou = entryEffect(  spep_2+2,  SP_02x,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_2+2,  kakutou,  1.0,  1.0);
setEffScaleKey(  spep_2+330,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_2+2,  kakutou,  0,  0);
setEffMoveKey(  spep_2+330,  kakutou,  0,  0);
setEffRotateKey(  spep_2+2,  kakutou,  0);
setEffRotateKey(  spep_2+330,  kakutou,  0);
setEffAlphaKey(  spep_2+2,  kakutou,  255);
setEffAlphaKey(  spep_2+330,  kakutou,  255);
setEffAlphaKey(  spep_2+331,  kakutou,  0);
setEffAlphaKey(  spep_2+332,  kakutou,  0);

--***集中線***
shuchusen2 = entryEffectLife( spep_2+2, 906, 330, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2+2,  shuchusen2,  1.8,  1.8);
setEffScaleKey(  spep_2+330,  shuchusen2,  1.8,  1.8);
setEffMoveKey(  spep_2+2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+330,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2+2,  shuchusen2,  0);
setEffRotateKey(  spep_2+330,  shuchusen2,  0);
setEffAlphaKey(  spep_2+2,  shuchusen2,  255);
setEffAlphaKey(  spep_2+330,  shuchusen2,  255);


--***格闘背景***
kakutouBG = entryEffect(  spep_2+2,  SP_03,  0x80,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_2+2,  kakutouBG,  1.0,  1.0);
setEffScaleKey(  spep_2+330,  kakutouBG,  1.0,  1.0);
setEffMoveKey(  spep_2+2,  kakutouBG,  0,  0);
setEffMoveKey(  spep_2+330,  kakutouBG,  0,  0);
setEffRotateKey(  spep_2+3,  kakutouBG,  0);
setEffRotateKey(  spep_2+330,  kakutouBG,  0);
setEffAlphaKey(  spep_2+3,  kakutouBG,  255);
setEffAlphaKey(  spep_2+330,  kakutouBG,  255);
setEffAlphaKey(  spep_2+331,  kakutouBG,  0);
setEffAlphaKey(  spep_2+332,  kakutouBG,  0);

--***SE***
playSe(  spep_2+37,  1010);  --パンチ
playSe(  spep_2+77,  1009);  --つかむ
playSe(  spep_2+122,  1011);  --おしつける
SE1=playSe(  spep_2+152,  1044);  
stopSe( spep_2+ 242, SE1, 10 );--262でおわる
playSe( spep_2+285,  1060);  --おしこむ
playSe(  spep_2+314,  43);  --瞬間移動

--***敵の動き***
--チェンジアニメとかshakeとかもあわせて記載
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 330, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
setShakeChara( spep_2 , 1, 36, 5);--移動の小さな揺れ

changeAnime( spep_2 + 37, 1, 108 );
--changeAnime( spep_2 + 38, 1, 108 );
setShakeChara( spep_2 + 37, 1, 7, 10);--パンチのヒット

changeAnime( spep_2 + 77, 1, 106 );
setShakeChara( spep_2 + 77, 1, 7, 10);--つかみ
setShakeChara( spep_2 + 122, 1, 10, 15);--おしつける
setShakeChara( spep_2 + 132, 1, 20, 5);--おしつける

setShakeChara( spep_2 + 152, 1, 115, 10);--摺る

changeAnime( spep_2 + 285, 1, 108 );--ズン
--changeAnime( spep_2 + 286, 1, 108 );
setShakeChara( spep_2 + 285, 1, 45, 10);--おしつける

--イージングがあるのでムーブは全て記載
setMoveKey( spep_2 + 0, 1, 597.1, 30.2 , 0 );
setMoveKey( spep_2 + 2, 1, 552, 30.2 , 0 );
setMoveKey( spep_2 + 4, 1, 506.9, 30.2 , 0 );
setMoveKey( spep_2 + 6, 1, 461.9, 30.2 , 0 );
setMoveKey( spep_2 + 8, 1, 416.8, 30.2 , 0 );
setMoveKey( spep_2 + 10, 1, 371.7, 30.2 , 0 );
setMoveKey( spep_2 + 12, 1, 326.7, 30.2 , 0 );
setMoveKey( spep_2 + 14, 1, 275.9, 29.6 , 0 );
setMoveKey( spep_2 + 16, 1, 227.8, 29.1 , 0 );
setMoveKey( spep_2 + 18, 1, 181.9, 28.7 , 0 );
setMoveKey( spep_2 + 20, 1, 169.8, 28.4 , 0 );
setMoveKey( spep_2 + 22, 1, 143.1, 28.3 , 0 );
setMoveKey( spep_2 + 24, 1, 132.5, 28.2 , 0 );
setMoveKey( spep_2 + 26, 1, 109.6, 28.2 , 0 );
setMoveKey( spep_2 + 28, 1, 86.7, 28.2 , 0 );
setMoveKey( spep_2 + 30, 1, 63.8, 28.2 , 0 );
setMoveKey( spep_2 + 32, 1, 41, 28.2 , 0 );
setMoveKey( spep_2 + 34, 1, 18.1, 28.2 , 0 );
setMoveKey( spep_2 + 36, 1, -4.8, 28.2 , 0 );
setMoveKey( spep_2 + 37, 1, 91.3, 85.6 , 0 );--最初の一撃
setMoveKey( spep_2 + 38, 1, 91.3, 85.6 , 0 );
setMoveKey( spep_2 + 40, 1, 127.6, 61.6 , 0 );
setMoveKey( spep_2 + 42, 1, 182.3, 75.2 , 0 );
setMoveKey( spep_2 + 44, 1, 210, 56.8 , 0 );
setMoveKey( spep_2 + 46, 1, 249.1, 65.7 , 0 );
setMoveKey( spep_2 + 48, 1, 278.8, 54.1 , 0 );
setMoveKey( spep_2 + 50, 1, 305.6, 56.9 , 0 );
setMoveKey( spep_2 + 52, 1, 331.5, 55.4 , 0 );
setMoveKey( spep_2 + 54, 1, 356, 54.3 , 0 );
setMoveKey( spep_2 + 56, 1, 379.8, 53.5 , 0 );
setMoveKey( spep_2 + 58, 1, 391.3, 51.1 , 0 );
setMoveKey( spep_2 + 60, 1, 380.2, 45.7 , 0 );
setMoveKey( spep_2 + 62, 1, 350.3, 37.8 , 0 );
setMoveKey( spep_2 + 64, 1, 306.2, 28.1 , 0 );
setMoveKey( spep_2 + 66, 1, 252.5, 17.2 , 0 );
setMoveKey( spep_2 + 68, 1, 194.9, 6 , 0 );
setMoveKey( spep_2 + 70, 1, 139.2, -4.6 , 0 );
setMoveKey( spep_2 + 72, 1, 91.7, -13.7 , 0 );
setMoveKey( spep_2 + 74, 1, 58.9, -20.2 , 0 );
setMoveKey( spep_2 + 76, 1, 51.9, -25.2 , 0 );
setMoveKey( spep_2 + 77, 1, -3.9, -36.7 , 0 );--つかむ
setMoveKey( spep_2 + 78, 1, -3.9, -36.7 , 0 );
setMoveKey( spep_2 + 80, 1, 33.2, -40.9 , 0 );
setMoveKey( spep_2 + 82, 1, 60.5, -30.8 , 0 );
setMoveKey( spep_2 + 84, 1, 88.1, -39.2 , 0 );
setMoveKey( spep_2 + 86, 1, 96.7, -32 , 0 );
setMoveKey( spep_2 + 88, 1, 104.3, -29.6 , 0 );
setMoveKey( spep_2 + 90, 1, 94, -29 , 0 );
setMoveKey( spep_2 + 92, 1, 72.6, -27.8 , 0 );
setMoveKey( spep_2 + 94, 1, 57.1, -23.6 , 0 );
setMoveKey( spep_2 + 96, 1, 69.5, -9.3 , 0 );
setMoveKey( spep_2 + 98, 1, 71.7, 14.6 , 0 );
setMoveKey( spep_2 + 100, 1, 58.2, 38.5 , 0 );
setMoveKey( spep_2 + 102, 1, 45.3, 37.2 , 0 );
setMoveKey( spep_2 + 104, 1, 29.6, 35.9 , 0 );
setMoveKey( spep_2 + 106, 1, 12.3, 34.2 , 0 );
setMoveKey( spep_2 + 107, 1, -3.7, 32.5 , 0 );
setMoveKey( spep_2 + 108, 1, -3.7, 32.5 , 0 );
setMoveKey( spep_2 + 119, 1, -13.1, 30.7 , 0 );
setMoveKey( spep_2 + 110, 1, -13.1, 30.7 , 0 );
setMoveKey( spep_2 + 111, 1, -9.1, 28.7 , 0 );
setMoveKey( spep_2 + 112, 1, -9.1, 28.7 , 0 );
setMoveKey( spep_2 + 113, 1, 16.2, 27 , 0 );
setMoveKey( spep_2 + 114, 1, 16.2, 27 , 0 );
setMoveKey( spep_2 + 115, 1, 69.3, 25.4 , 0 );
setMoveKey( spep_2 + 116, 1, 69.3, 25.4 , 0 );
setMoveKey( spep_2 + 117, 1, 155.3, 23.9 , 0 );
setMoveKey( spep_2 + 118, 1, 155.3, 23.9 , 0 );
setMoveKey( spep_2 + 119, 1, 323.4, 30.8 , 0 );--かべにおしつける
setMoveKey( spep_2 + 120, 1, 323.4, 30.8 , 0 );
setMoveKey( spep_2 + 121, 1, 222.3, 27.7 , 0 );
setMoveKey( spep_2 + 122, 1, 222.3, 27.7 , 0 );
setMoveKey( spep_2 + 123, 1, 164.9, 28.7 , 0 );
setMoveKey( spep_2 + 124, 1, 164.9, 28.7 , 0 );
setMoveKey( spep_2 + 125, 1, 182.5, 22.1 , 0 );
setMoveKey( spep_2 + 126, 1, 182.5, 22.1 , 0 );
setMoveKey( spep_2 + 127, 1, 175.9, 20.3 , 0 );
setMoveKey( spep_2 + 128, 1, 175.9, 20.3 , 0 );
setMoveKey( spep_2 + 129, 1, 194.1, 17 , 0 );
setMoveKey( spep_2 + 130, 1, 194.1, 17 , 0 );
setMoveKey( spep_2 + 131, 1, 179.5, 15.8 , 0 );
setMoveKey( spep_2 + 132, 1, 179.5, 15.8 , 0 );
setMoveKey( spep_2 + 134, 1, 187.6, 15.6 , 0 );
setMoveKey( spep_2 + 136, 1, 179.9, 10.1 , 0 );
setMoveKey( spep_2 + 138, 1, 191, 8.8 , 0 );
setMoveKey( spep_2 + 140, 1, 190.8, 7.7 , 0 );
setMoveKey( spep_2 + 142, 1, 202.4, 7 , 0 );
setMoveKey( spep_2 + 144, 1, 211.1, 6.8 , 0 );
setMoveKey( spep_2 + 146, 1, 243.5, 7.1 , 0 );
setMoveKey( spep_2 + 148, 1, 353.4, 10 , 0 );
setMoveKey( spep_2 + 150, 1, -975.3, 8.2 , 0 );
setMoveKey( spep_2 + 152, 1, -916.9, 12.4 , 0 );
setMoveKey( spep_2 + 154, 1, -863.4, 8.3 , 0 );
setMoveKey( spep_2 + 156, 1, -815.2, 12.7 , 0 );
setMoveKey( spep_2 + 158, 1, -765, 8.4 , 0 );
setMoveKey( spep_2 + 160, 1, -704.6, 12 , 0 );
setMoveKey( spep_2 + 162, 1, -623.5, 7 , 0 );
setMoveKey( spep_2 + 164, 1, -558, 13.3 , 0 );
setMoveKey( spep_2 + 166, 1, -497.4, 7.8 , 0 );
setMoveKey( spep_2 + 168, 1, -463.5, 13.1 , 0 );
setMoveKey( spep_2 + 170, 1, -416.3, 9.4 , 0 );
setMoveKey( spep_2 + 172, 1, -400.9, 10.8 , 0 );
setMoveKey( spep_2 + 174, 1, -352.4, 10.9 , 0 );
setMoveKey( spep_2 + 176, 1, -347.4, 8.1 , 0 );
setMoveKey( spep_2 + 178, 1, -306.4, 12.7 , 0 );
setMoveKey( spep_2 + 180, 1, -296.9, 7.5 , 0 );
setMoveKey( spep_2 + 182, 1, -263.5, 13.4 , 0 );
setMoveKey( spep_2 + 184, 1, -258.8, 7.5 , 0 );
setMoveKey( spep_2 + 186, 1, -228.1, 13.4 , 0 );
setMoveKey( spep_2 + 188, 1, -222.8, 9 , 0 );
setMoveKey( spep_2 + 190, 1, -206.3, 12.7 , 0 );
setMoveKey( spep_2 + 192, 1, -184.3, 7.4 , 0 );
setMoveKey( spep_2 + 194, 1, -185.5, 13.2 , 0 );
setMoveKey( spep_2 + 196, 1, -152.7, 6.9 , 0 );
setMoveKey( spep_2 + 198, 1, -157.9, 11.7 , 0 );
setMoveKey( spep_2 + 200, 1, -124.7, 10.6 , 0 );
setMoveKey( spep_2 + 202, 1, -139.5, 7.9 , 0 );
setMoveKey( spep_2 + 204, 1, -107, 13.5 , 0 );
setMoveKey( spep_2 + 206, 1, -105, 6.5 , 0 );
setMoveKey( spep_2 + 208, 1, -96.1, 12.1 , 0 );
setMoveKey( spep_2 + 210, 1, -75.4, 7.5 , 0 );
setMoveKey( spep_2 + 212, 1, -82.7, 12.5 , 0 );
setMoveKey( spep_2 + 214, 1, -45.6, 6.7 , 0 );
setMoveKey( spep_2 + 216, 1, -60.9, 12.9 , 0 );
setMoveKey( spep_2 + 218, 1, -29.4, 6.8 , 0 );
setMoveKey( spep_2 + 220, 1, -46.9, 12 , 0 );
setMoveKey( spep_2 + 222, 1, -14.4, 8.8 , 0 );
setMoveKey( spep_2 + 224, 1, -20, 10.7 , 0 );
setMoveKey( spep_2 + 226, 1, 6.5, 11 , 0 );
setMoveKey( spep_2 + 228, 1, 4.3, 8.3 , 0 );
setMoveKey( spep_2 + 230, 1, 18.7, 9.8 , 0 );
setMoveKey( spep_2 + 232, 1, 32.5, 9.7 , 0 );
setMoveKey( spep_2 + 234, 1, 28.4, 12.2 , 0 );
setMoveKey( spep_2 + 236, 1, 58.5, 6.4 , 0 );
setMoveKey( spep_2 + 238, 1, 53.3, 10.5 , 0 );
setMoveKey( spep_2 + 240, 1, 72.1, 10.3 , 0 );
setMoveKey( spep_2 + 242, 1, 78.7, 8.3 , 0 );
setMoveKey( spep_2 + 244, 1, 92.8, 8.6 , 0 );
setMoveKey( spep_2 + 246, 1, 100.2, 7.5 , 0 );
setMoveKey( spep_2 + 248, 1, 111.5, 7 , 0 );
setMoveKey( spep_2 + 250, 1, 125.3, 11.2 , 0 );
setMoveKey( spep_2 + 252, 1, 136.7, 5.9 , 0 );
setMoveKey( spep_2 + 254, 1, 117.2, 9.5 , 0 );
setMoveKey( spep_2 + 256, 1, 103.2, 6.6 , 0 );
setMoveKey( spep_2 + 258, 1, 80.9, 10.4 , 0 );
setMoveKey( spep_2 + 260, 1, 93.1, 8 , 0 );
setMoveKey( spep_2 + 262, 1, 90.4, 6 , 0 );
setMoveKey( spep_2 + 264, 1, 83.9, 7.7 , 0 );
setMoveKey( spep_2 + 266, 1, 66.3, 7.3 , 0 );
setMoveKey( spep_2 + 268, 1, 42.4, 6.5 , 0 );
setMoveKey( spep_2 + 270, 1, 19.7, 6 , 0 );
setMoveKey( spep_2 + 272, 1, 3.3, 5.9 , 0 );
setMoveKey( spep_2 + 274, 1, -8, 5.8 , 0 );
setMoveKey( spep_2 + 276, 1, -14.7, 5.9 , 0 );
setMoveKey( spep_2 + 278, 1, -17, 5.9 , 0 );
setMoveKey( spep_2 + 280, 1, -17, 6 , 0 );
setMoveKey( spep_2 + 282, 1, -17.1, 6 , 0 );
setMoveKey( spep_2 + 284, 1, -17.1, 6 , 0 );
setMoveKey( spep_2 + 285, 1, -14.6, -36.5 , 0 );
setMoveKey( spep_2 + 286, 1, -14.6, -36.5 , 0 );
setMoveKey( spep_2 + 288, 1, -4.2, -13.4 , 0 );
setMoveKey( spep_2 + 290, 1, -13.3, -8.6 , 0 );
setMoveKey( spep_2 + 292, 1, -3.5, -1.6 , 0 );
setMoveKey( spep_2 + 294, 1, -10.5, -2 , 0 );
setMoveKey( spep_2 + 296, 1, -4, -5.1 , 0 );
setMoveKey( spep_2 + 298, 1, -3.9, 3.8 , 0 );
setMoveKey( spep_2 + 300, 1, -10.7, -1.7 , 0 );
setMoveKey( spep_2 + 302, 1, -2.8, 0.7 , 0 );
setMoveKey( spep_2 + 304, 1, -9.7, -0.6 , 0 );
setMoveKey( spep_2 + 306, 1, -4.4, 1.9 , 0 );
setMoveKey( spep_2 + 308, 1, -8.7, -0.7 , 0 );
setMoveKey( spep_2 + 310, 1, -3.9, 0.2 , 0 );
setMoveKey( spep_2 + 312, 1, -8.8, -1.7 , 0 );
setMoveKey( spep_2 + 314, 1, -4.7, 1.8 , 0 );
setMoveKey( spep_2 + 316, 1, -8.1, -1.7 , 0 );
setMoveKey( spep_2 + 318, 1, -6.3, 1.9 , 0 );
setMoveKey( spep_2 + 320, 1, -5.4, -1.6 , 0 );
setMoveKey( spep_2 + 322, 1, -7, 0.1 , 0 );
setMoveKey( spep_2 + 324, 1, -5.7, -0.9 , 0 );
setMoveKey( spep_2 + 326, 1, -7.1, 0 , 0 );
setMoveKey( spep_2 + 328, 1, -5.9, -0.5 , 0 );
setMoveKey( spep_2 + 330, 1, -6.3, 0.1 , 0 );

setScaleKey( spep_2 + 0, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 12, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 14, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 16, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 18, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 20, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 22, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 24, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 36, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 38, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 40, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 42, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 44, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 46, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 48, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 50, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 52, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 54, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 56, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 58, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 60, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 62, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 64, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 66, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 68, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 70, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 72, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 74, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 76, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 78, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 80, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 82, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 84, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 86, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 88, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 90, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 92, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 94, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 96, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 98, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 100, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 102, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 104, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 106, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 108, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 110, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 112, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 114, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 116, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 118, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 120, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 122, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 124, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 126, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 128, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 130, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 132, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 134, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 136, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 138, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 140, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 142, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 144, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 146, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 148, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 150, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 152, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 154, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 158, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 160, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 164, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 166, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 170, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 172, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 178, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 180, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 188, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 190, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 200, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 202, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 222, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 224, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 226, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 228, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 230, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 232, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 234, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 236, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 238, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 240, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 242, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 244, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 246, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 248, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 250, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 252, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 254, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 256, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 258, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 262, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 264, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 266, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 268, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 270, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 272, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 276, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 278, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 280, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 282, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 284, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 285, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 286, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 288, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 290, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 292, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 294, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 296, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 298, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 300, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 302, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 330, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 36, 1, 0 );
setRotateKey( spep_2 + 38, 1, -18.2 );
setRotateKey( spep_2 + 40, 1, -14.8 );
setRotateKey( spep_2 + 42, 1, -11.5 );
setRotateKey( spep_2 + 44, 1, -8.4 );
setRotateKey( spep_2 + 46, 1, -5.5 );
setRotateKey( spep_2 + 48, 1, -2.8 );
setRotateKey( spep_2 + 50, 1, -0.3 );
setRotateKey( spep_2 + 52, 1, 2 );
setRotateKey( spep_2 + 54, 1, 4.1 );
setRotateKey( spep_2 + 56, 1, 6.1 );
setRotateKey( spep_2 + 58, 1, 7.9 );
setRotateKey( spep_2 + 60, 1, 9.4 );
setRotateKey( spep_2 + 62, 1, 10.8 );
setRotateKey( spep_2 + 64, 1, 12 );
setRotateKey( spep_2 + 66, 1, 13.1 );
setRotateKey( spep_2 + 68, 1, 13.9 );
setRotateKey( spep_2 + 70, 1, 14.6 );
setRotateKey( spep_2 + 72, 1, 15 );
setRotateKey( spep_2 + 74, 1, 15.3 );
setRotateKey( spep_2 + 76, 1, 15.4 );
setRotateKey( spep_2 + 77, 1, -30.8 );--つかむ
setRotateKey( spep_2 + 78, 1, -30.8 );
setRotateKey( spep_2 + 80, 1, -27.7 );
setRotateKey( spep_2 + 82, 1, -25.1 );
setRotateKey( spep_2 + 84, 1, -23.2 );
setRotateKey( spep_2 + 86, 1, -21.7 );
setRotateKey( spep_2 + 88, 1, -20.9 );
setRotateKey( spep_2 + 90, 1, -20.6 );
setRotateKey( spep_2 + 92, 1, -20.5 );
setRotateKey( spep_2 + 98, 1, -20.5 );
setRotateKey( spep_2 + 100, 1, -20.6 );
setRotateKey( spep_2 + 102, 1, -21.5 );
setRotateKey( spep_2 + 104, 1, -22.5 );
setRotateKey( spep_2 + 106, 1, -23.6 );
setRotateKey( spep_2 + 108, 1, -24.9 );
setRotateKey( spep_2 + 110, 1, -26.4 );
setRotateKey( spep_2 + 112, 1, -28 );
setRotateKey( spep_2 + 114, 1, -29.7 );
setRotateKey( spep_2 + 116, 1, -31.6 );
setRotateKey( spep_2 + 118, 1, -33.6 );
setRotateKey( spep_2 + 120, 1, -35.8 );
setRotateKey( spep_2 + 122, 1, -33.9 );
setRotateKey( spep_2 + 124, 1, -32.7 );
setRotateKey( spep_2 + 126, 1, -31.9 );
setRotateKey( spep_2 + 128, 1, -31.3 );
setRotateKey( spep_2 + 130, 1, -30.8 );
setRotateKey( spep_2 + 132, 1, -30.4 );
setRotateKey( spep_2 + 134, 1, -30.1 );
setRotateKey( spep_2 + 136, 1, -29.8 );
setRotateKey( spep_2 + 138, 1, -29.6 );
setRotateKey( spep_2 + 140, 1, -29.5 );
setRotateKey( spep_2 + 142, 1, -29.4 );
setRotateKey( spep_2 + 144, 1, -29.3 );
setRotateKey( spep_2 + 148, 1, -29.3 );
setRotateKey( spep_2 + 150, 1, 30.7 );
setRotateKey( spep_2 + 200, 1, 30.7 );
setRotateKey( spep_2 + 202, 1, 30.6 );
setRotateKey( spep_2 + 252, 1, 30.6 );
setRotateKey( spep_2 + 254, 1, 30.7 );
setRotateKey( spep_2 + 284, 1, 30.7 );
setRotateKey( spep_2 + 285, 1, 16.2 );
setRotateKey( spep_2 + 286, 1, 16.2 );
setRotateKey( spep_2 + 288, 1, 10.2 );
setRotateKey( spep_2 + 290, 1, 8.6 );
setRotateKey( spep_2 + 292, 1, 7.7 );
setRotateKey( spep_2 + 294, 1, 7.1 );
setRotateKey( spep_2 + 296, 1, 6.8 );
setRotateKey( spep_2 + 298, 1, 6.6 );
setRotateKey( spep_2 + 300, 1, 6.4 );
setRotateKey( spep_2 + 302, 1, 6.3 );
setRotateKey( spep_2 + 330, 1, 6.3 );

--***書き文字ドン***
ct_don = entryEffectLife( spep_2+37,  10019, 17, 0x100, -1, 0, 13.8, 227.6 );  --ドン

setEffShake(  spep_2+37,  ct_don,  17,  5);  --揺れ

setEffMoveKey( spep_2 + 37, ct_don, 13.8, 227.6 , 0 );
setEffMoveKey( spep_2 + 40, ct_don, -8.9, 253.4 , 0 );
setEffMoveKey( spep_2 + 42, ct_don, -10.6, 275.9 , 0 );
setEffMoveKey( spep_2 + 44, ct_don, -19.8, 284.9 , 0 );
setEffMoveKey( spep_2 + 46, ct_don, -7.5, 278 , 0 );
setEffMoveKey( spep_2 + 48, ct_don, -19.7, 278.4 , 0 );
setEffMoveKey( spep_2 + 50, ct_don, -13.3, 286.7 , 0 );
setEffMoveKey( spep_2 + 52, ct_don, -13.1, 274.6 , 0 );
setEffMoveKey( spep_2 + 54, ct_don, -13.1, 275.1 , 0 );

setEffScaleKey( spep_2 + 37, ct_don, 1.29, 1.29 );
setEffScaleKey( spep_2 + 40, ct_don, 1.63, 1.63 );
setEffScaleKey( spep_2 + 42, ct_don, 1.98, 1.98 );
setEffScaleKey( spep_2 + 44, ct_don, 2, 2 );
setEffScaleKey( spep_2 + 46, ct_don, 2.02, 2.02 );
setEffScaleKey( spep_2 + 48, ct_don, 2.04, 2.04 );
setEffScaleKey( spep_2 + 50, ct_don, 2.05, 2.05 );
setEffScaleKey( spep_2 + 52, ct_don, 2.06, 2.06 );
setEffScaleKey( spep_2 + 54, ct_don, 2.07, 2.07 );

setEffRotateKey( spep_2 + 37, ct_don, -0.8 );
setEffRotateKey( spep_2 + 40, ct_don, -0.2 );
setEffRotateKey( spep_2 + 41, ct_don, 0.3 );
setEffRotateKey( spep_2 + 54, ct_don, 0.3 );

setEffAlphaKey( spep_2 + 37, ct_don, 255 );
setEffAlphaKey( spep_2 + 48, ct_don, 255 );
setEffAlphaKey( spep_2 + 49, ct_don, 170 );
setEffAlphaKey( spep_2 + 53, ct_don, 85 );
setEffAlphaKey( spep_2 + 54, ct_don, 0 );

--***書き文字ガ***
ct_ga = entryEffectLife( spep_2+77,  10005, 17, 0x100, -1, 0, 140.1, 318.9 );  --ガッ

setEffShake(  spep_2+77,  ct_ga,  17,  5);  --揺れ

setEffMoveKey( spep_2 + 77, ct_ga, 140.1, 318.9 , 0 );
setEffMoveKey( spep_2 + 80, ct_ga, 130.8, 331.3 , 0 );
setEffMoveKey( spep_2 + 82, ct_ga, 134.7, 336.2 , 0 );
setEffMoveKey( spep_2 + 84, ct_ga, 127.9, 338.9 , 0 );
setEffMoveKey( spep_2 + 86, ct_ga, 137.1, 339.9 , 0 );
setEffMoveKey( spep_2 + 88, ct_ga, 128.1, 345 , 0 );
setEffMoveKey( spep_2 + 90, ct_ga, 132.2, 343.8 , 0 );
setEffMoveKey( spep_2 + 92, ct_ga, 124.2, 348.8 , 0 );
setEffMoveKey( spep_2 + 94, ct_ga, 123.5, 350.7 , 0 );

setEffScaleKey( spep_2 + 77, ct_ga, 1.25, 1.25 );
setEffScaleKey( spep_2 + 80, ct_ga, 1.45, 1.45 );
setEffScaleKey( spep_2 + 82, ct_ga, 1.52, 1.52 );
setEffScaleKey( spep_2 + 84, ct_ga, 1.57, 1.57 );
setEffScaleKey( spep_2 + 86, ct_ga, 1.61, 1.61 );
setEffScaleKey( spep_2 + 88, ct_ga, 1.63, 1.63 );
setEffScaleKey( spep_2 + 90, ct_ga, 1.64, 1.64 );
setEffScaleKey( spep_2 + 92, ct_ga, 1.73, 1.73 );
setEffScaleKey( spep_2 + 94, ct_ga, 1.76, 1.76 );

setEffRotateKey( spep_2 + 77, ct_ga, 3 );
setEffRotateKey( spep_2 + 94, ct_ga, 3 );

setEffAlphaKey( spep_2 + 77, ct_ga, 255 );
setEffAlphaKey( spep_2 + 90, ct_ga, 255 );
setEffAlphaKey( spep_2 + 91, ct_ga, 64 );
setEffAlphaKey( spep_2 + 94, ct_ga, 0 );


--***書き文字バキ***
ct_baki = entryEffectLife( spep_2+122,  10020, 18, 0x100, -1, 0, 170.5, 322.8 );  --バキッ

setEffShake(  spep_2+122,  ct_baki,  18,  5);  --揺れ

setEffMoveKey( spep_2 + 122, ct_baki, 170.5, 322.8 , 0 );
setEffMoveKey( spep_2 + 124, ct_baki, 168.9, 337.3 , 0 );
setEffMoveKey( spep_2 + 126, ct_baki, 171, 337 , 0 );
setEffMoveKey( spep_2 + 128, ct_baki, 169.2, 348.8 , 0 );
setEffMoveKey( spep_2 + 130, ct_baki, 171.4, 342 , 0 );
setEffMoveKey( spep_2 + 132, ct_baki, 167.1, 361.1 , 0 );
setEffMoveKey( spep_2 + 134, ct_baki, 178.6, 357.5 , 0 );
setEffMoveKey( spep_2 + 136, ct_baki, 171.7, 358.4 , 0 );
setEffMoveKey( spep_2 + 138, ct_baki, 182.5, 367.8 , 0 );
setEffMoveKey( spep_2 + 140, ct_baki, 186.9, 369.4 , 0 );

setEffScaleKey( spep_2 + 122, ct_baki, 1.58, 1.58 );
setEffScaleKey( spep_2 + 124, ct_baki, 1.67, 1.67 );
setEffScaleKey( spep_2 + 126, ct_baki, 1.7, 1.7 );
setEffScaleKey( spep_2 + 128, ct_baki, 1.77, 1.77 );
setEffScaleKey( spep_2 + 130, ct_baki, 1.82, 1.82 );
setEffScaleKey( spep_2 + 132, ct_baki, 1.86, 1.86 );
setEffScaleKey( spep_2 + 134, ct_baki, 1.88, 1.88 );
setEffScaleKey( spep_2 + 136, ct_baki, 1.89, 1.89 );
setEffScaleKey( spep_2 + 138, ct_baki, 2.14, 2.14 );
setEffScaleKey( spep_2 + 140, ct_baki, 2.22, 2.22 );

setEffRotateKey( spep_2 + 122, ct_baki, -35.2 );
setEffRotateKey( spep_2 + 140, ct_baki, -35.2 );

setEffAlphaKey( spep_2 + 122, ct_baki, 255 );
setEffAlphaKey( spep_2 + 136, ct_baki, 255 );
setEffAlphaKey( spep_2 + 138, ct_baki, 64 );
setEffAlphaKey( spep_2 + 140, ct_baki, 0 );

--***書き文字ドガガガ***
ct_doga = entryEffectLife( spep_2+152, 10017 , 112, 0x100, -1, 0, -138.3, 304  );  --ドガガガ

setEffShake(  spep_2+152,  ct_doga,  112,  10);  --揺れ

setEffMoveKey( spep_2 + 152, ct_doga, -138.3, 304 , 0 );
setEffMoveKey( spep_2 + 154, ct_doga, -115.1, 313.8 , 0 );
setEffMoveKey( spep_2 + 156, ct_doga, -72, 319.6 , 0 );
setEffMoveKey( spep_2 + 158, ct_doga, -55.2, 324.1 , 0 );
setEffMoveKey( spep_2 + 160, ct_doga, -59.7, 328 , 0 );
setEffMoveKey( spep_2 + 162, ct_doga, -40.8, 326.7 , 0 );
setEffMoveKey( spep_2 + 164, ct_doga, -58.6, 325.4 , 0 );
setEffMoveKey( spep_2 + 166, ct_doga, -47.2, 316.6 , 0 );
setEffMoveKey( spep_2 + 168, ct_doga, -60.9, 327.2 , 0 );
setEffMoveKey( spep_2 + 170, ct_doga, -41.7, 312.6 , 0 );
setEffMoveKey( spep_2 + 172, ct_doga, -54.6, 327.8 , 0 );
setEffMoveKey( spep_2 + 174, ct_doga, -39, 323 , 0 );
setEffMoveKey( spep_2 + 176, ct_doga, -49.1, 331.3 , 0 );
setEffMoveKey( spep_2 + 178, ct_doga, -38.8, 318.8 , 0 );
setEffMoveKey( spep_2 + 180, ct_doga, -38.8, 331.9 , 0 );
setEffMoveKey( spep_2 + 182, ct_doga, -42.5, 317.8 , 0 );
setEffMoveKey( spep_2 + 184, ct_doga, -37.6, 333.5 , 0 );
setEffMoveKey( spep_2 + 186, ct_doga, -48.1, 316.9 , 0 );
setEffMoveKey( spep_2 + 188, ct_doga, -27.8, 327.8 , 0 );
setEffMoveKey( spep_2 + 190, ct_doga, -43.4, 322.3 , 0 );
setEffMoveKey( spep_2 + 192, ct_doga, -26.8, 327.9 , 0 );
setEffMoveKey( spep_2 + 194, ct_doga, -36.7, 315.4 , 0 );
setEffMoveKey( spep_2 + 196, ct_doga, -24.4, 328.1 , 0 );
setEffMoveKey( spep_2 + 198, ct_doga, -41.5, 324.2 , 0 );
setEffMoveKey( spep_2 + 200, ct_doga, -24.3, 329.5 , 0 );
setEffMoveKey( spep_2 + 202, ct_doga, -32.1, 316 , 0 );
setEffMoveKey( spep_2 + 204, ct_doga, -23.5, 333.7 , 0 );
setEffMoveKey( spep_2 + 206, ct_doga, -34.5, 315.3 , 0 );
setEffMoveKey( spep_2 + 208, ct_doga, -15, 326.8 , 0 );
setEffMoveKey( spep_2 + 210, ct_doga, -35.8, 324.7 , 0 );
setEffMoveKey( spep_2 + 212, ct_doga, -13.7, 322.6 , 0 );
setEffMoveKey( spep_2 + 214, ct_doga, -29.3, 328.6 , 0 );
setEffMoveKey( spep_2 + 216, ct_doga, -17.9, 317.7 , 0 );
setEffMoveKey( spep_2 + 218, ct_doga, -19.3, 326.5 , 0 );
setEffMoveKey( spep_2 + 220, ct_doga, -24, 330.5 , 0 );
setEffMoveKey( spep_2 + 222, ct_doga, -4.5, 329.2 , 0 );
setEffMoveKey( spep_2 + 224, ct_doga, -23, 327.8 , 0 );
setEffMoveKey( spep_2 + 226, ct_doga, -11.2, 318.8 , 0 );
setEffMoveKey( spep_2 + 228, ct_doga, -25.5, 329.7 , 0 );
setEffMoveKey( spep_2 + 230, ct_doga, -5.6, 314.6 , 0 );
setEffMoveKey( spep_2 + 232, ct_doga, -19, 330.3 , 0 );
setEffMoveKey( spep_2 + 234, ct_doga, -2.9, 325.3 , 0 );
setEffMoveKey( spep_2 + 236, ct_doga, -13.4, 333.9 , 0 );
setEffMoveKey( spep_2 + 238, ct_doga, -2.8, 321 , 0 );
setEffMoveKey( spep_2 + 240, ct_doga, -2.8, 334.6 , 0 );
setEffMoveKey( spep_2 + 242, ct_doga, -6.7, 320 , 0 );
setEffMoveKey( spep_2 + 244, ct_doga, -1.6, 336.1 , 0 );
setEffMoveKey( spep_2 + 246, ct_doga, -12.6, 319.1 , 0 );
setEffMoveKey( spep_2 + 248, ct_doga, 8.4, 330.3 , 0 );
setEffMoveKey( spep_2 + 250, ct_doga, -7.8, 324.6 , 0 );
setEffMoveKey( spep_2 + 252, ct_doga, 9.3, 330.4 , 0 );
setEffMoveKey( spep_2 + 254, ct_doga, -0.9, 317.5 , 0 );
setEffMoveKey( spep_2 + 256, ct_doga, 11.7, 330.6 , 0 );
setEffMoveKey( spep_2 + 258, ct_doga, 9, 336.1 , 0 );
setEffMoveKey( spep_2 + 260, ct_doga, -2, 327.9 , 0 );
setEffMoveKey( spep_2 + 262, ct_doga, 19.1, 350.8 , 0 );
setEffMoveKey( spep_2 + 264, ct_doga, 21.1, 361.8 , 0 );

setEffScaleKey( spep_2 + 152, ct_doga, 1.92, 1.92 );
setEffScaleKey( spep_2 + 154, ct_doga, 2.18, 2.18 );
setEffScaleKey( spep_2 + 156, ct_doga, 2.44, 2.44 );
setEffScaleKey( spep_2 + 158, ct_doga, 2.71, 2.71 );
setEffScaleKey( spep_2 + 160, ct_doga, 2.71, 2.71 );
setEffScaleKey( spep_2 + 162, ct_doga, 2.72, 2.72 );
setEffScaleKey( spep_2 + 166, ct_doga, 2.72, 2.72 );
setEffScaleKey( spep_2 + 168, ct_doga, 2.73, 2.73 );
setEffScaleKey( spep_2 + 172, ct_doga, 2.73, 2.73 );
setEffScaleKey( spep_2 + 174, ct_doga, 2.74, 2.74 );
setEffScaleKey( spep_2 + 178, ct_doga, 2.74, 2.74 );
setEffScaleKey( spep_2 + 180, ct_doga, 2.75, 2.75 );
setEffScaleKey( spep_2 + 186, ct_doga, 2.75, 2.75 );
setEffScaleKey( spep_2 + 188, ct_doga, 2.76, 2.76 );
setEffScaleKey( spep_2 + 192, ct_doga, 2.76, 2.76 );
setEffScaleKey( spep_2 + 194, ct_doga, 2.77, 2.77 );
setEffScaleKey( spep_2 + 198, ct_doga, 2.77, 2.77 );
setEffScaleKey( spep_2 + 200, ct_doga, 2.78, 2.78 );
setEffScaleKey( spep_2 + 204, ct_doga, 2.78, 2.78 );
setEffScaleKey( spep_2 + 206, ct_doga, 2.79, 2.79 );
setEffScaleKey( spep_2 + 210, ct_doga, 2.79, 2.79 );
setEffScaleKey( spep_2 + 212, ct_doga, 2.8, 2.8 );
setEffScaleKey( spep_2 + 216, ct_doga, 2.8, 2.8 );
setEffScaleKey( spep_2 + 218, ct_doga, 2.81, 2.81 );
setEffScaleKey( spep_2 + 222, ct_doga, 2.81, 2.81 );
setEffScaleKey( spep_2 + 224, ct_doga, 2.82, 2.82 );
setEffScaleKey( spep_2 + 228, ct_doga, 2.82, 2.82 );
setEffScaleKey( spep_2 + 230, ct_doga, 2.83, 2.83 );
setEffScaleKey( spep_2 + 236, ct_doga, 2.83, 2.83 );
setEffScaleKey( spep_2 + 238, ct_doga, 2.84, 2.84 );
setEffScaleKey( spep_2 + 242, ct_doga, 2.84, 2.84 );
setEffScaleKey( spep_2 + 244, ct_doga, 2.85, 2.85 );
setEffScaleKey( spep_2 + 248, ct_doga, 2.85, 2.85 );
setEffScaleKey( spep_2 + 250, ct_doga, 2.86, 2.86 );
setEffScaleKey( spep_2 + 254, ct_doga, 2.86, 2.86 );
setEffScaleKey( spep_2 + 256, ct_doga, 2.87, 2.87 );
setEffScaleKey( spep_2 + 258, ct_doga, 2.87, 2.87 );
setEffScaleKey( spep_2 + 260, ct_doga, 2.93, 2.93 );
setEffScaleKey( spep_2 + 262, ct_doga, 2.98, 2.98 );
setEffScaleKey( spep_2 + 264, ct_doga, 3.04, 3.04 );

setEffRotateKey( spep_2 + 152, ct_doga, -10.5 );
setEffRotateKey( spep_2 + 264, ct_doga, -10.5 );

setEffAlphaKey( spep_2 + 152, ct_doga, 255 );
setEffAlphaKey( spep_2 + 258, ct_doga, 255 );
setEffAlphaKey( spep_2 + 259, ct_doga, 170 );
setEffAlphaKey( spep_2 + 260, ct_doga, 170 );
setEffAlphaKey( spep_2 + 261, ct_doga, 85 );
setEffAlphaKey( spep_2 + 264, ct_doga, 0 );

--***書き文字ズン***
ct_zun = entryEffectLife( spep_2+285,  10016, 29, 0x100, -1, 0, 2, 208.6 ); --ズンッ

setEffMoveKey( spep_2 + 285, ct_zun, 2, 208.6 , 0 );
setEffMoveKey( spep_2 + 288, ct_zun, 2.3, 300.4 , 0 );
setEffMoveKey( spep_2 + 290, ct_zun, 2.5, 331 , 0 );
setEffMoveKey( spep_2 + 292, ct_zun, 2.2, 332.2 , 0 );
setEffMoveKey( spep_2 + 294, ct_zun, 2, 333.4 , 0 );
setEffMoveKey( spep_2 + 296, ct_zun, 1.8, 334.6 , 0 );
setEffMoveKey( spep_2 + 298, ct_zun, 1.6, 335.8 , 0 );
setEffMoveKey( spep_2 + 300, ct_zun, 1.3, 337 , 0 );
setEffMoveKey( spep_2 + 302, ct_zun, 1.1, 338.2 , 0 );
setEffMoveKey( spep_2 + 304, ct_zun, 0.9, 339.3 , 0 );
setEffMoveKey( spep_2 + 306, ct_zun, 0.7, 340.5 , 0 );
setEffMoveKey( spep_2 + 308, ct_zun, 0.4, 341.7 , 0 );
setEffMoveKey( spep_2 + 310, ct_zun, 0.2, 342.9 , 0 );
setEffMoveKey( spep_2 + 312, ct_zun, -1.2, 350.3 , 0 );
setEffMoveKey( spep_2 + 314, ct_zun, -2.5, 357.7 , 0 );

setEffScaleKey( spep_2 + 285, ct_zun, 2.46, 2.46 );
setEffScaleKey( spep_2 + 288, ct_zun, 3.1, 3.1 );
setEffScaleKey( spep_2 + 290, ct_zun, 3.32, 3.32 );
setEffScaleKey( spep_2 + 292, ct_zun, 3.33, 3.33 );
setEffScaleKey( spep_2 + 294, ct_zun, 3.35, 3.35 );
setEffScaleKey( spep_2 + 296, ct_zun, 3.36, 3.36 );
setEffScaleKey( spep_2 + 298, ct_zun, 3.38, 3.38 );
setEffScaleKey( spep_2 + 300, ct_zun, 3.39, 3.39 );
setEffScaleKey( spep_2 + 302, ct_zun, 3.4, 3.4 );
setEffScaleKey( spep_2 + 304, ct_zun, 3.42, 3.42 );
setEffScaleKey( spep_2 + 306, ct_zun, 3.43, 3.43 );
setEffScaleKey( spep_2 + 308, ct_zun, 3.45, 3.45 );
setEffScaleKey( spep_2 + 310, ct_zun, 3.46, 3.46 );
setEffScaleKey( spep_2 + 312, ct_zun, 3.55, 3.55 );
setEffScaleKey( spep_2 + 314, ct_zun, 3.63, 3.63 );

setEffRotateKey( spep_2 + 285, ct_zun, 5.5 );
setEffRotateKey( spep_2 + 314, ct_zun, 5.5 );

setEffAlphaKey( spep_2 + 285, ct_zun, 255 );
setEffAlphaKey( spep_2 + 310, ct_zun, 255 );
setEffAlphaKey( spep_2 + 311, ct_zun, 128 );
setEffAlphaKey( spep_2 + 314, ct_zun, 0 );

--***書き文字シュン***

ct_shun = entryEffectLife( spep_2 + 314, 10011, 14, 0x100, -1, 0, -195.3, 68.4 );
setEffMoveKey( spep_2 + 314, ct_shun, -195.3, 68.4 , 0 );
setEffMoveKey( spep_2 + 316, ct_shun, -201.3, 73.8 , 0 );
setEffMoveKey( spep_2 + 318, ct_shun, -204.9, 77.1 , 0 );
setEffMoveKey( spep_2 + 320, ct_shun, -206.2, 78.2 , 0 );
setEffMoveKey( spep_2 + 328, ct_shun, -206.2, 78.2 , 0 );

setEffScaleKey( spep_2 + 314, ct_shun, 0.6, 0.6 );
setEffScaleKey( spep_2 + 316, ct_shun, 0.92, 0.92 );
setEffScaleKey( spep_2 + 318, ct_shun, 1.11, 1.11 );
setEffScaleKey( spep_2 + 320, ct_shun, 1.17, 1.17 );
setEffScaleKey( spep_2 + 322, ct_shun, 1.18, 1.18 );
setEffScaleKey( spep_2 + 324, ct_shun, 1.21, 1.21 );
setEffScaleKey( spep_2 + 326, ct_shun, 1.25, 1.25 );
setEffScaleKey( spep_2 + 328, ct_shun, 1.31, 1.31 );

setEffRotateKey( spep_2 + 314, ct_shun, -14.2 );
setEffRotateKey( spep_2 + 328, ct_shun, -14.2 );

setEffAlphaKey( spep_2 + 314, ct_shun, 255 );
setEffAlphaKey( spep_2 + 320, ct_shun, 255 );
setEffAlphaKey( spep_2 + 322, ct_shun, 239 );
setEffAlphaKey( spep_2 + 324, ct_shun, 191 );
setEffAlphaKey( spep_2 + 326, ct_shun, 112 );
setEffAlphaKey( spep_2 + 328, ct_shun, 0 );

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+16 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setMoveKey( SP_dodge, 1, 227.8, 29.1 , 0 );
setMoveKey( SP_dodge+2, 1, 181.9, 28.7 , 0 );
setMoveKey( SP_dodge+4, 1, 169.8, 28.4 , 0 );
setMoveKey( SP_dodge+6, 1, 143.1, 28.3 , 0 );
setMoveKey( SP_dodge+8, 1, 132.5, 28.2 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( spep_2 + 0, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 12, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 14, 1, 1.07, 1.07 );
setScaleKey( SP_dodge, 1, 1.05, 1.05 );
setScaleKey( SP_dodge+2, 1, 1.03, 1.03 );
setScaleKey( SP_dodge+4, 1, 1.02, 1.02 );
setScaleKey( SP_dodge+6, 1, 1.02, 1.02 );
setScaleKey( SP_dodge+8, 1, 1.01, 1.01 );

--changeAnime(  SP_dodge+9,    1,  100);
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

------------------------------------------------------
-- カード(90F)
------------------------------------------------------

spep_3 = spep_2+330;

--***フェードと背景***
entryFade( spep_3-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

--[[playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

------------------------------------------------------
-- 溜めから発射(238F)
------------------------------------------------------

spep_4 = spep_3+90;

--***フェードと背景***
entryFade( spep_4-6, 3, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--***溜めから発射***
tamehassya = entryEffect(  spep_4,  SP_04x,  0x100,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_4,  tamehassya,  -1.0,  1.0);
setEffScaleKey(  spep_4+238,  tamehassya,  -1.0,  1.0);
setEffMoveKey(  spep_4,  tamehassya,  0,  0);
setEffMoveKey(  spep_4+238,  tamehassya,  0,  0);
setEffRotateKey(  spep_4,  tamehassya,  0);
setEffRotateKey(  spep_4+238,  tamehassya,  0);
setEffAlphaKey(  spep_4,  tamehassya,  255);
setEffAlphaKey(  spep_4+238,  tamehassya,  255);
setEffAlphaKey(  spep_4+239,  tamehassya,  0);
setEffAlphaKey(  spep_4+240,  tamehassya,  0);

--***集中線***
shuchusen4 = entryEffectLife(  spep_4,  906,  238,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_4+0,  shuchusen4,  2.2,  2.2);
setEffScaleKey(  spep_4+161,  shuchusen4,  2.2,  2.2);
setEffScaleKey(  spep_4+162,  shuchusen4,  1.2,  1.2);
setEffScaleKey(  spep_4+238,  shuchusen4,  1.2,  1.2);
setEffMoveKey(  spep_4+0,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+238,  shuchusen4,  0,  0);
setEffRotateKey(  spep_4+0, shuchusen4,  0);
setEffRotateKey(  spep_4+238, shuchusen4,  0);
setEffAlphaKey(  spep_4+0,  shuchusen4,  0);
setEffAlphaKey(  spep_4+38,  shuchusen4,  0);
setEffAlphaKey(  spep_4+39,  shuchusen4,  0);
setEffAlphaKey(  spep_4+40,  shuchusen4,  255);
setEffAlphaKey(  spep_4+238,  shuchusen4,  255);

--***書き文字シュン***
ct_shun2 = entryEffectLife( spep_4 + 4, 10011, 14, 0x100, -1, 0, -226.6, 179 );
setEffMoveKey( spep_4 + 4, ct_shun2, -226.6, 179 , 0 );
setEffMoveKey( spep_4 + 6, ct_shun2, -224.5, 186.9 , 0 );
setEffMoveKey( spep_4 + 8, ct_shun2, -223.2, 191.7 , 0 );
setEffMoveKey( spep_4 + 10, ct_shun2, -222.8, 193.3 , 0 );
setEffMoveKey( spep_4 + 12, ct_shun2, -222.8, 193.3 , 0 );
setEffMoveKey( spep_4 + 14, ct_shun2, -222.8, 193.2 , 0 );
setEffMoveKey( spep_4 + 18, ct_shun2, -222.8, 193.2 , 0 );

setEffScaleKey( spep_4 + 4, ct_shun2, 0.6, 0.6 );
setEffScaleKey( spep_4 + 6, ct_shun2, 0.92, 0.92 );
setEffScaleKey( spep_4 + 8, ct_shun2, 1.11, 1.11 );
setEffScaleKey( spep_4 + 10, ct_shun2, 1.17, 1.17 );
setEffScaleKey( spep_4 + 12, ct_shun2, 1.18, 1.18 );
setEffScaleKey( spep_4 + 14, ct_shun2, 1.21, 1.21 );
setEffScaleKey( spep_4 + 16, ct_shun2, 1.25, 1.25 );
setEffScaleKey( spep_4 + 18, ct_shun2, 1.31, 1.31 );

setEffRotateKey( spep_4 + 4, ct_shun2, -14.2 );
setEffRotateKey( spep_4 + 18, ct_shun2, -14.2 );

setEffAlphaKey( spep_4 + 4, ct_shun2, 255 );
setEffAlphaKey( spep_4 + 10, ct_shun2, 255 );
setEffAlphaKey( spep_4 + 12, ct_shun2, 239 );
setEffAlphaKey( spep_4 + 14, ct_shun2, 191 );
setEffAlphaKey( spep_4 + 16, ct_shun2, 112 );
setEffAlphaKey( spep_4 + 18, ct_shun2, 0 );

--***書き文字ズオ***

ct_zuo = entryEffectLife( spep_4 + 164, 10012, 18, 0x100, -1, 0, 138.4, 344.3 );

setEffShake(  spep_4 + 164,  ct_zuo,  18,  5);  --揺れ

setEffMoveKey( spep_4 + 164, ct_zuo, -138.4, 344.3 , 0 );
setEffMoveKey( spep_4 + 166, ct_zuo, -121.7, 365.5 , 0 );
setEffMoveKey( spep_4 + 168, ct_zuo, -111.7, 378.2 , 0 );
setEffMoveKey( spep_4 + 170, ct_zuo, -108.4, 382.5 , 0 );
setEffMoveKey( spep_4 + 172, ct_zuo, -111.7, 391.2 , 0 );
setEffMoveKey( spep_4 + 174, ct_zuo, -115.1, 399.8 , 0 );
setEffMoveKey( spep_4 + 176, ct_zuo, -118.4, 408.5 , 0 );
setEffMoveKey( spep_4 + 178, ct_zuo, -121.7, 417.2 , 0 );
setEffMoveKey( spep_4 + 180, ct_zuo, -125.1, 425.8 , 0 );
setEffMoveKey( spep_4 + 182, ct_zuo, -128.4, 434.5 , 0 );

setEffScaleKey( spep_4 + 164, ct_zuo, 2.07, 1.58 );
setEffScaleKey( spep_4 + 166, ct_zuo, 3.07, 2.35 );
setEffScaleKey( spep_4 + 168, ct_zuo, 3.67, 2.81 );
setEffScaleKey( spep_4 + 170, ct_zuo, 3.87, 2.96 );
setEffScaleKey( spep_4 + 172, ct_zuo, 3.99, 3.05 );
setEffScaleKey( spep_4 + 174, ct_zuo, 4.12, 3.15 );
setEffScaleKey( spep_4 + 176, ct_zuo, 4.24, 3.24 );
setEffScaleKey( spep_4 + 178, ct_zuo, 4.36, 3.34 );
setEffScaleKey( spep_4 + 180, ct_zuo, 4.49, 3.43 );
setEffScaleKey( spep_4 + 182, ct_zuo, 4.61, 3.53 );

setEffRotateKey( spep_4 + 164, ct_zuo, -13.3 );
setEffRotateKey( spep_4 + 182, ct_zuo, -13.3 );

setEffAlphaKey( spep_4 + 164, ct_zuo, 255 );
setEffAlphaKey( spep_4 + 170, ct_zuo, 255 );
setEffAlphaKey( spep_4 + 172, ct_zuo, 213 );
setEffAlphaKey( spep_4 + 174, ct_zuo, 170 );
setEffAlphaKey( spep_4 + 176, ct_zuo, 128 );
setEffAlphaKey( spep_4 + 178, ct_zuo, 85 );
setEffAlphaKey( spep_4 + 180, ct_zuo, 42 );
setEffAlphaKey( spep_4 + 182, ct_zuo, 0 );

--***SE***
playSe( spep_4+4, 43);  --瞬間移動
playSe( spep_4+18, SE_04);  --カットイン音
--playSe(  spep_4+66,  13);  --ビーム光る音66F
--playSe(  spep_4+66,  1040);  --ビーム光る音66F
playSe( spep_4+66, 1035);  --きため音
--playSe( spep_4+116, 13);  --びーむたまる
playSe( spep_4+116, 1040);  --びーむたまる
playSe( spep_4+164, 1021);  --はっしゃ

--***カットイン***32
--speff = entryEffect(  spep_4+18,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_4+18,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_4+36, 190006, 67, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_4 + 36, ctgogo, 255 );
setEffAlphaKey( spep_4 + 94, ctgogo, 255 );
setEffAlphaKey( spep_4 + 95, ctgogo, 255 );
setEffAlphaKey( spep_4 + 96, ctgogo, 191 );
setEffAlphaKey( spep_4 + 98, ctgogo, 128 );
setEffAlphaKey( spep_4 + 100, ctgogo, 64 );
--setEffAlphaKey( spep_4 + 102, ctgogo, 0 );
setEffAlphaKey( spep_4 + 103, ctgogo, 0 );

setEffRotateKey(  spep_4+36,  ctgogo,  0);
setEffRotateKey(  spep_4+103,  ctgogo,  0);

setEffScaleKey(  spep_4+36,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_4+94,  ctgogo,  -0.7,  0.7);
--setEffScaleKey( spep_4 + 98, ctgogo, 0.79, 0.79 );
--setEffScaleKey( spep_4 + 100, ctgogo, 0.93, 0.93 );
setEffScaleKey( spep_4 + 103, ctgogo, -1.07, 1.07 );

setEffMoveKey(  spep_4+36,  ctgogo,  0,  530);
setEffMoveKey(  spep_4+103,  ctgogo,  0,  530);

------------------------------------------------------
-- ビーム当たる(86F)
------------------------------------------------------
spep_5 = spep_4+238;


--***フェードと背景***
entryFade( spep_5-3, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- 短い白


--***ビーム当たる前面***+2
beammae = entryEffect(  spep_5+2,  SP_05,  0x100,  -1,  0,  0,  0);  

setEffScaleKey(  spep_5+2,  beammae,  1,  1);
setEffScaleKey(  spep_5+86,  beammae,  1,  1);
setEffMoveKey(  spep_5+2,  beammae,  0,  0);
setEffMoveKey(  spep_5+86,  beammae,  0,  0);
setEffRotateKey(  spep_5+2,  beammae,  0);
setEffRotateKey(  spep_5+86,  beammae,  0);
setEffAlphaKey(  spep_5+2,  beammae,  255);
setEffAlphaKey(  spep_5+86,  beammae,  255);
setEffAlphaKey(  spep_5+87,  beammae,  0);
setEffAlphaKey(  spep_5+88,  beammae,  0);

--***ビーム当たる背面***+2
beamushiro = entryEffect(  spep_5+2,  SP_06,  0x80,  -1,  0,  0,  0);  

setEffScaleKey(  spep_5+2,  beamushiro,  1,  1);
setEffScaleKey(  spep_5+86,  beamushiro,  1,  1);
setEffMoveKey(  spep_5+2,  beamushiro,  0,  0);
setEffMoveKey(  spep_5+86,  beamushiro,  0,  0);
setEffRotateKey(  spep_5+2,  beamushiro,  0);
setEffRotateKey(  spep_5+86,  beamushiro,  0);
setEffAlphaKey(  spep_5+2,  beamushiro,  255);
setEffAlphaKey(  spep_5+86,  beamushiro,  255);
setEffAlphaKey(  spep_5+87,  beamushiro,  0);
setEffAlphaKey(  spep_5+88,  beamushiro,  0);

--***集中線***
shuchusen5 = entryEffectLife(  spep_5,  906,  86,  0x100,  -1,  0,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.6,  1.6);
setEffScaleKey(  spep_5+86,  shuchusen5,  1.6,  1.6);
setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffMoveKey(  spep_5+86,  shuchusen5,  0,  0);
setEffRotateKey(  spep_5, shuchusen5,  0);
setEffRotateKey(  spep_5+86, shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+86,  shuchusen5,  255);

--***敵のモーション**
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 86, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 60.6, 70.7 , 0 );
setMoveKey( spep_5 + 2, 1, 58.7, 63.1 , 0 );
setMoveKey( spep_5 + 4, 1, 59.9, 61.8 , 0 );
setMoveKey( spep_5 + 6, 1, 60, 62.9 , 0 );
setMoveKey( spep_5 + 8, 1, 61.4, 70.4 , 0 );
setMoveKey( spep_5 + 10, 1, 60.6, 64.3 , 0 );
setMoveKey( spep_5 + 12, 1, 60.1, 68.4 , 0 );
setMoveKey( spep_5 + 14, 1, 59.8, 60.7 , 0 );
setMoveKey( spep_5 + 16, 1, 61.8, 67.8 , 0 );
setMoveKey( spep_5 + 18, 1, 58.9, 61.6 , 0 );
setMoveKey( spep_5 + 20, 1, 62.6, 67.9 , 0 );
setMoveKey( spep_5 + 22, 1, 59.5, 61.8 , 0 );
setMoveKey( spep_5 + 24, 1, 63, 69 , 0 );
setMoveKey( spep_5 + 26, 1, 59, 61.3 , 0 );
setMoveKey( spep_5 + 28, 1, 63.1, 67.8 , 0 );
setMoveKey( spep_5 + 30, 1, 57.5, 66.8 , 0 );
setMoveKey( spep_5 + 32, 1, 62.3, 64.3 , 0 );
setMoveKey( spep_5 + 34, 1, 58.7, 66.4 , 0 );
setMoveKey( spep_5 + 36, 1, 61.4, 64 , 0 );
setMoveKey( spep_5 + 38, 1, 59.3, 69.6 , 0 );
setMoveKey( spep_5 + 40, 1, 59.2, 60.1 , 0 );
setMoveKey( spep_5 + 42, 1, 61, 69.6 , 0 );
setMoveKey( spep_5 + 44, 1, 55.6, 60.7 , 0 );
setMoveKey( spep_5 + 46, 1, 59.4, 68.1 , 0 );
setMoveKey( spep_5 + 48, 1, 57.1, 60.5 , 0 );
setMoveKey( spep_5 + 50, 1, 57.8, 69.2 , 0 );
setMoveKey( spep_5 + 52, 1, 51.1, 58.7 , 0 );
setMoveKey( spep_5 + 54, 1, 54.3, 67.4 , 0 );
setMoveKey( spep_5 + 56, 1, 47.3, 58.3 , 0 );
setMoveKey( spep_5 + 58, 1, 20.9, 60.9 , 0 );
setMoveKey( spep_5 + 60, 1, 21.8, 52.6 , 0 );
setMoveKey( spep_5 + 62, 1, 25.1, 55.5 , 0 );
setMoveKey( spep_5 + 64, 1, 28.2, 68.3 , 0 );
setMoveKey( spep_5 + 66, 1, 24.8, 59.1 , 0 );
setMoveKey( spep_5 + 68, 1, 29.2, 75.3 , 0 );
setMoveKey( spep_5 + 70, 1, 25.4, 63.2 , 0 );
setMoveKey( spep_5 + 72, 1, 30.2, 70.3 , 0 );
setMoveKey( spep_5 + 74, 1, 26, 77.8 , 0 );
setMoveKey( spep_5 + 76, 1, 30.2, 61.8 , 0 );
setMoveKey( spep_5 + 78, 1, 27.2, 74.3 , 0 );
setMoveKey( spep_5 + 86, 1, 27.2, 74.3 , 0 );

setScaleKey( spep_5 + 0, 1, 0.04, 0.04 );
setScaleKey( spep_5 + 22, 1, 0.04, 0.04 );
setScaleKey( spep_5 + 24, 1, 0.05, 0.05 );
setScaleKey( spep_5 + 28, 1, 0.05, 0.05 );
setScaleKey( spep_5 + 30, 1, 0.06, 0.06 );
setScaleKey( spep_5 + 32, 1, 0.07, 0.07 );
setScaleKey( spep_5 + 34, 1, 0.07, 0.07 );
setScaleKey( spep_5 + 36, 1, 0.08, 0.08 );
setScaleKey( spep_5 + 38, 1, 0.1, 0.1 );
setScaleKey( spep_5 + 40, 1, 0.11, 0.11 );
setScaleKey( spep_5 + 42, 1, 0.13, 0.13 );
setScaleKey( spep_5 + 44, 1, 0.16, 0.16 );
setScaleKey( spep_5 + 46, 1, 0.19, 0.19 );
setScaleKey( spep_5 + 48, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 50, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 52, 1, 0.38, 0.38 );
setScaleKey( spep_5 + 54, 1, 0.52, 0.52 );
setScaleKey( spep_5 + 56, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 58, 1, 2.14, 2.14 );
setScaleKey( spep_5 + 60, 1, 2.61, 2.61 );
setScaleKey( spep_5 + 62, 1, 2.75, 2.75 );
setScaleKey( spep_5 + 64, 1, 2.83, 2.83 );
setScaleKey( spep_5 + 66, 1, 2.89, 2.89 );
setScaleKey( spep_5 + 68, 1, 2.92, 2.92 );
setScaleKey( spep_5 + 70, 1, 2.95, 2.95 );
setScaleKey( spep_5 + 72, 1, 2.96, 2.96 );
setScaleKey( spep_5 + 74, 1, 2.97, 2.97 );
setScaleKey( spep_5 + 76, 1, 2.98, 2.98 );
setScaleKey( spep_5 + 86, 1, 2.98, 2.98 );

setRotateKey( spep_5 + 0, 1, -31.3 );
setRotateKey( spep_5 + 86, 1, -31.3 );

--***SE***
playSe( spep_5+10, 1022);  --のびるはっしゃ
playSe( spep_5+70, 1023);  --HIT

------------------------------------------------------
-- ラスト爆発前面(180F)798
------------------------------------------------------
spep_6 = spep_5+86;

--***SE***
playSe( spep_6+14, 1064);  --HIT
playSe( spep_6+68, 1067);  --爆破
playSe( spep_6+78, 1024);  --爆破

--***フェードと背景***
entryFade( spep_6-3, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- 短い白
entryFade( spep_6+64, 2, 3, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- 短い白
entryFade( spep_6+76, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- 短い白
entryFadeBg(spep_6,0,180,0,0,0,0,255);--黒BG

--***ラスト爆発前面***+2
BomFront = entryEffect(  spep_6+2,  SP_07x,  0x100,  -1,  0,  0,  0);  --手前

setEffShake(  spep_6 + 68,  BomFront,  102,  10);  --揺れ

setEffScaleKey(  spep_6+2,  BomFront,  1.0,  1.0);
setEffScaleKey(  spep_6+180,  BomFront,  1.0,  1.0);
setEffMoveKey(  spep_6+2,  BomFront,  0,  0);
setEffMoveKey(  spep_6+180,  BomFront,  0,  0);
setEffRotateKey(  spep_6+2,  BomFront,  0);
setEffRotateKey(  spep_6+180,  BomFront,  0);
setEffAlphaKey(  spep_6+2,  BomFront,  255);
setEffAlphaKey(  spep_6+180,  BomFront,  255);

--***書き文字ドゴォンッ***
ct_dgonn = entryEffectLife( spep_6 + 68, 10018, 48, 0x100, -1, 0, 49.7, 370.5 );

setEffShake(  spep_6 + 68,  ct_dgonn,  48,  5);  --揺れ

setEffMoveKey( spep_6 + 68, ct_dgonn, 49.7, 370.5 , 0 );
setEffMoveKey( spep_6 + 70, ct_dgonn, 36.3, 387.9 , 0 );
setEffMoveKey( spep_6 + 72, ct_dgonn, 31.9, 401.7 , 0 );
setEffMoveKey( spep_6 + 74, ct_dgonn, 32.7, 394.6 , 0 );
setEffMoveKey( spep_6 + 76, ct_dgonn, 31.8, 403.5 , 0 );
setEffMoveKey( spep_6 + 78, ct_dgonn, 37.2, 397.1 , 0 );
setEffMoveKey( spep_6 + 80, ct_dgonn, 31.2, 397 , 0 );
setEffMoveKey( spep_6 + 82, ct_dgonn, 39.4, 399.9 , 0 );
setEffMoveKey( spep_6 + 84, ct_dgonn, 34.8, 393.1 , 0 );
setEffMoveKey( spep_6 + 86, ct_dgonn, 36.6, 396.9 , 0 );
setEffMoveKey( spep_6 + 88, ct_dgonn, 36.9, 390.2 , 0 );
setEffMoveKey( spep_6 + 90, ct_dgonn, 35.4, 399.8 , 0 );
setEffMoveKey( spep_6 + 92, ct_dgonn, 40.4, 393.8 , 0 );
setEffMoveKey( spep_6 + 94, ct_dgonn, 33.9, 394.3 , 0 );
setEffMoveKey( spep_6 + 96, ct_dgonn, 41.7, 397.7 , 0 );
setEffMoveKey( spep_6 + 98, ct_dgonn, 37.8, 395.7 , 0 );
setEffMoveKey( spep_6 + 100, ct_dgonn, 32.7, 391.7 , 0 );
setEffMoveKey( spep_6 + 102, ct_dgonn, 26.3, 404.6 , 0 );
setEffMoveKey( spep_6 + 104, ct_dgonn, 27.6, 400.3 , 0 );
setEffMoveKey( spep_6 + 106, ct_dgonn, 16.7, 402.6 , 0 );
setEffMoveKey( spep_6 + 108, ct_dgonn, 22.9, 408.2 , 0 );
setEffMoveKey( spep_6 + 110, ct_dgonn, 14.7, 401.7 , 0 );
setEffMoveKey( spep_6 + 112, ct_dgonn, 14.8, 407.7 , 0 );
setEffMoveKey( spep_6 + 114, ct_dgonn, 13.8, 400.5 , 0 );
setEffMoveKey( spep_6 + 116, ct_dgonn, 13.5, 400.6 , 0 );

setEffScaleKey( spep_6 + 68, ct_dgonn, 2.98, 2.98 );
setEffScaleKey( spep_6 + 70, ct_dgonn, 3.2, 3.2 );
setEffScaleKey( spep_6 + 72, ct_dgonn, 3.27, 3.27 );
setEffScaleKey( spep_6 + 74, ct_dgonn, 3.28, 3.28 );
setEffScaleKey( spep_6 + 76, ct_dgonn, 3.3, 3.3 );
setEffScaleKey( spep_6 + 78, ct_dgonn, 3.31, 3.31 );
setEffScaleKey( spep_6 + 80, ct_dgonn, 3.32, 3.32 );
setEffScaleKey( spep_6 + 82, ct_dgonn, 3.33, 3.33 );
setEffScaleKey( spep_6 + 84, ct_dgonn, 3.33, 3.33 );
setEffScaleKey( spep_6 + 86, ct_dgonn, 3.34, 3.34 );
setEffScaleKey( spep_6 + 88, ct_dgonn, 3.35, 3.35 );
setEffScaleKey( spep_6 + 90, ct_dgonn, 3.35, 3.35 );
setEffScaleKey( spep_6 + 92, ct_dgonn, 3.36, 3.36 );
setEffScaleKey( spep_6 + 98, ct_dgonn, 3.36, 3.36 );
setEffScaleKey( spep_6 + 100, ct_dgonn, 3.52, 3.52 );
setEffScaleKey( spep_6 + 102, ct_dgonn, 3.65, 3.65 );
setEffScaleKey( spep_6 + 104, ct_dgonn, 3.77, 3.77 );
setEffScaleKey( spep_6 + 106, ct_dgonn, 3.87, 3.87 );
setEffScaleKey( spep_6 + 108, ct_dgonn, 3.95, 3.95 );
setEffScaleKey( spep_6 + 110, ct_dgonn, 4.02, 4.02 );
setEffScaleKey( spep_6 + 112, ct_dgonn, 4.06, 4.06 );
setEffScaleKey( spep_6 + 114, ct_dgonn, 4.09, 4.09 );
setEffScaleKey( spep_6 + 116, ct_dgonn, 4.1, 4.1 );

setEffRotateKey( spep_6 + 68, ct_dgonn, -31.7 );
setEffRotateKey( spep_6 + 116, ct_dgonn, -31.7 );

setEffAlphaKey( spep_6 + 68, ct_dgonn, 255 );
setEffAlphaKey( spep_6 + 98, ct_dgonn, 255 );
setEffAlphaKey( spep_6 + 100, ct_dgonn, 201 );
setEffAlphaKey( spep_6 + 102, ct_dgonn, 154 );
setEffAlphaKey( spep_6 + 104, ct_dgonn, 113 );
setEffAlphaKey( spep_6 + 106, ct_dgonn, 79 );
setEffAlphaKey( spep_6 + 108, ct_dgonn, 50 );
setEffAlphaKey( spep_6 + 110, ct_dgonn, 28 );
setEffAlphaKey( spep_6 + 112, ct_dgonn, 13 );
setEffAlphaKey( spep_6 + 114, ct_dgonn, 3 );
setEffAlphaKey( spep_6 + 116, ct_dgonn, 0 );

-- ダメージ表示
dealDamage(spep_6+68);
endPhase(spep_6+170);
end

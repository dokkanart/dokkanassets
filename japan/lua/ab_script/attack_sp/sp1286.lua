--1017110_ザマス_神裂降矢 sp1286

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
SP_01 = 153384  --突進
SP_02 = 153385  --格闘前面
SP_03 = 153387  --格闘背面
SP_04 = 153388  --落とす
SP_05 = 153390  --落とす背景
SP_06 = 153391  --気弾
SP_07 = 153393  --気弾迫る
SP_08 = 153394  --ef_004と一緒に
SP_09 = 153473  --ef_007と一緒に

--敵側
SP_02r = 153386  --格闘前面
SP_04r = 153389  --落とす
SP_06r = 153392  --気弾

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
-- 突進(120F)
------------------------------------------------------
spep_0 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_0, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffShake(  spep_0,  shuchusen1,  120,  10);
setEffScaleKey(  spep_0,  shuchusen1,  1.36,  1.68);
setEffScaleKey(  spep_0+120,  shuchusen1,  1.36,  1.68);
setEffMoveKey(  spep_0,  shuchusen1,  0,  0);
setEffMoveKey(  spep_0+120,  shuchusen1,  0,  0);
setEffRotateKey(  spep_0,  shuchusen1,  0);
setEffRotateKey(  spep_0+120,  shuchusen1,  0);
setEffAlphaKey(  spep_0,  shuchusen1,  255);
setEffAlphaKey(  spep_0+118,  shuchusen1,  255);
setEffAlphaKey(  spep_0+119,  shuchusen1,  0);
setEffAlphaKey(  spep_0+120,  shuchusen1,  0);


--***突進***
tosshin = entryEffect(  spep_0,  SP_01,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_0,  tosshin,  1.0,  1.0);
setEffScaleKey(  spep_0+120,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_0,  tosshin,  0,  0);
setEffMoveKey(  spep_0+120,  tosshin,  0,  0);
setEffRotateKey(  spep_0,  tosshin,  0);
setEffRotateKey(  spep_0+120,  tosshin,  0);
setEffAlphaKey(  spep_0,  tosshin,  255);
setEffAlphaKey(  spep_0+118,  tosshin,  255);
setEffAlphaKey(  spep_0+119,  tosshin,  0);
setEffAlphaKey(  spep_0+120,  tosshin,  0);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+4 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);


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


--***カットイン***
speff = entryEffect(  spep_0+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0+22, 190006, 68, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_0 + 22, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 255 );
setEffAlphaKey( spep_0 + 81, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 191 );
setEffAlphaKey( spep_0 + 86, ctgogo, 128 );
setEffAlphaKey( spep_0 + 88, ctgogo, 64 );
setEffAlphaKey( spep_0 + 90, ctgogo, 0 );

setEffRotateKey(  spep_0+22,  ctgogo,  0);
setEffRotateKey(  spep_0+90,  ctgogo,  0);

setEffScaleKey(  spep_0+22,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0+86,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0+90,  ctgogo, 1.07, 1.07 );

setEffMoveKey(  spep_0+22,  ctgogo,  0,  530);
setEffMoveKey(  spep_0+90,  ctgogo,  0,  530);

entryFadeBg( spep_0,  0,  120,  0,  0,  0,  0,  255);  --黒背景

--***SE***
playSe(  spep_0,  9);  --ダッシュ音
playSe(  spep_0+22,  SE_04);  --カットイン

------------------------------------------------------
-- 格闘(208F)
------------------------------------------------------
spep_1 = spep_0 +118;

--***集中線***
shuchusen2 = entryEffectLife( spep_1+5, 906, 203, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffShake(  spep_1+5,  shuchusen2,  198,  10);
setEffScaleKey(  spep_1+5,  shuchusen2,  1.61,  1.63);
setEffScaleKey(  spep_1+208,  shuchusen2,  1.61,  1.63);
setEffMoveKey(  spep_1+5,  shuchusen2,  0,  0);
setEffMoveKey(  spep_1+208,  shuchusen2,  0,  0);
setEffRotateKey(  spep_1+5,  shuchusen2,  0);
setEffRotateKey(  spep_1+208,  shuchusen2,  0);
setEffAlphaKey(  spep_1+5,  shuchusen2,  255);
setEffAlphaKey(  spep_1+208,  shuchusen2,  255);


--***格闘前面***
kakutou = entryEffect(  spep_1,  SP_02,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_1,  kakutou,  1.0,  1.0);
setEffScaleKey(  spep_1+208,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_1,  kakutou,  0,  0);
setEffMoveKey(  spep_1+208,  kakutou,  0,  0);
setEffRotateKey(  spep_1,  kakutou,  0);
setEffRotateKey(  spep_1+208,  kakutou,  0);
setEffAlphaKey(  spep_1,  kakutou,  255);
setEffAlphaKey(  spep_1+208,  kakutou,  255);
setEffAlphaKey(  spep_1,  kakutou,  0);
setEffAlphaKey(  spep_1+208,  kakutou,  0);

a = 3
--***敵の動き***
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 206, 1, 0 );
changeAnime( spep_1 + 0, 1, 111 );
changeAnime( spep_1 + 1, 1, 111 );
changeAnime( spep_1 + 2, 1, 111 );
changeAnime( spep_1 + 3, 1, 111 );
changeAnime( spep_1 + 4, 1, 111 );
changeAnime( spep_1 + 5, 1, 111 );
changeAnime( spep_1 + 6, 1, 111 );
changeAnime( spep_1 + 7, 1, 111 );
changeAnime( spep_1 - a + 10, 1, 108 );
changeAnime( spep_1 - a + 20, 1, 106 );
changeAnime( spep_1 - a + 38, 1, 108 );
changeAnime( spep_1 - a + 44, 1, 106 );
changeAnime( spep_1 - a + 66, 1, 108 );
changeAnime( spep_1 - a + 84, 1, 106 );
changeAnime( spep_1 - a + 106, 1, 108 );
changeAnime( spep_1 - a + 116, 1, 106 );
changeAnime( spep_1 - a + 148, 1, 108 );
changeAnime( spep_1 - a + 202, 1, 106 );

setMoveKey( spep_1 + 0, 1, 230, -32.5 , 0 );
setMoveKey( spep_1 - a + 2, 1, 172.7, -30.1 , 0 );
setMoveKey( spep_1 - a + 4, 1, 117.3, -26.7 , 0 );
setMoveKey( spep_1 - a + 6, 1, 64, -22.5 , 0 );
setMoveKey( spep_1 - a + 9, 1, 12.6, -17.5 , 0 );
setMoveKey( spep_1 - a + 10, 1, 126.2, 3.1 , 0 );
setMoveKey( spep_1 - a + 12, 1, 122, 4.7 , 0 );
setMoveKey( spep_1 - a + 14, 1, 96.7, 3.5 , 0 );
setMoveKey( spep_1 - a + 16, 1, 94, 2 , 0 );
setMoveKey( spep_1 - a + 19, 1, 98.8, -12 , 0 );
setMoveKey( spep_1 - a + 20, 1, 85.5, 15.5 , 0 );
setMoveKey( spep_1 - a + 22, 1, 100, -10.6 , 0 );
setMoveKey( spep_1 - a + 24, 1, 91.2, 13.9 , 0 );
setMoveKey( spep_1 - a + 26, 1, 70, -12.3 , 0 );
setMoveKey( spep_1 - a + 28, 1, 72.6, 7.3 , 0 );
setMoveKey( spep_1 - a + 30, 1, 65.3, -6.9 , 0 );
setMoveKey( spep_1 - a + 32, 1, 51.9, 5.8 , 0 );
setMoveKey( spep_1 - a + 34, 1, 53.3, -3.2 , 0 );
setMoveKey( spep_1 - a + 37, 1, 51.5, 5.5 , 0 );
setMoveKey( spep_1 - a + 38, 1, 160.2, 0.8 , 0 );
setMoveKey( spep_1 - a + 40, 1, 180.7, 32.6 , 0 );
setMoveKey( spep_1 - a + 43, 1, 159.1, 38.9 , 0 );
setMoveKey( spep_1 - a + 44, 1, 184.4, 68.3 , 0 );
setMoveKey( spep_1 - a + 46, 1, 178.5, 66.9 , 0 );
setMoveKey( spep_1 - a + 48, 1, 148.2, 51.7 , 0 );
setMoveKey( spep_1 - a + 50, 1, 154, 59.6 , 0 );
setMoveKey( spep_1 - a + 52, 1, 159.5, 55.9 , 0 );
setMoveKey( spep_1 - a + 54, 1, 127.8, 49.7 , 0 );
setMoveKey( spep_1 - a + 56, 1, 133.9, 48.6 , 0 );
setMoveKey( spep_1 - a + 58, 1, 120.8, 49.4 , 0 );
setMoveKey( spep_1 - a + 60, 1, 120.5, 47.7 , 0 );
setMoveKey( spep_1 - a + 62, 1, 112.4, 47.6 , 0 );
setMoveKey( spep_1 - a + 65, 1, 111.7, 46.5 , 0 );
setMoveKey( spep_1 - a + 66, 1, 171.3, -35.8 , 0 );
setMoveKey( spep_1 - a + 68, 1, 166.7, -37.3 , 0 );
setMoveKey( spep_1 - a + 70, 1, 143.2, -22.7 , 0 );
setMoveKey( spep_1 - a + 72, 1, 153.3, -21.9 , 0 );
setMoveKey( spep_1 - a + 74, 1, 156.6, -18.3 , 0 );
setMoveKey( spep_1 - a + 76, 1, 164.5, -12.4 , 0 );
setMoveKey( spep_1 - a + 78, 1, 162, -12.4 , 0 );
setMoveKey( spep_1 - a + 80, 1, 168.2, -6 , 0 );
setMoveKey( spep_1 - a + 83, 1, 163.6, -7.1 , 0 );
setMoveKey( spep_1 - a + 84, 1, 141.7, 51.2 , 0 );
setMoveKey( spep_1 - a + 86, 1, 140.3, 31.1 , 0 );
setMoveKey( spep_1 - a + 88, 1, 116, 15.4 , 0 );
setMoveKey( spep_1 - a + 90, 1, 114.5, 7 , 0 );
setMoveKey( spep_1 - a + 92, 1, 114.1, 1.4 , 0 );
setMoveKey( spep_1 - a + 94, 1, 110.2, -4.1 , 0 );
setMoveKey( spep_1 - a + 96, 1, 108.4, -7 , 0 );
setMoveKey( spep_1 - a + 98, 1, 103.3, -9.4 , 0 );
setMoveKey( spep_1 - a + 100, 1, 100.3, -12.1 , 0 );
setMoveKey( spep_1 - a + 102, 1, 94.2, -13 , 0 );
setMoveKey( spep_1 - a + 105, 1, 90.4, -14.2 , 0 );
setMoveKey( spep_1 - a + 106, 1, 127.9, -42.6 , 0 );
setMoveKey( spep_1 - a + 108, 1, 130.6, -50 , 0 );
setMoveKey( spep_1 - a + 110, 1, 105.3, -45.9 , 0 );
setMoveKey( spep_1 - a + 112, 1, 102.8, -47 , 0 );
setMoveKey( spep_1 - a + 115, 1, 98.3, -48.3 , 0 );
setMoveKey( spep_1 - a + 116, 1, 98.5, -34.5 , 0 );
setMoveKey( spep_1 - a + 118, 1, 110, -34.8 , 0 );
setMoveKey( spep_1 - a + 120, 1, 91, -29.2 , 0 );
setMoveKey( spep_1 - a + 122, 1, 88.1, -28.8 , 0 );
setMoveKey( spep_1 - a + 124, 1, 94.9, -20.3 , 0 );
setMoveKey( spep_1 - a + 126, 1, 119.5, 8.3 , 0 );
setMoveKey( spep_1 - a + 128, 1, 119.1, 23 , 0 );
setMoveKey( spep_1 - a + 130, 1, 95.4, 27.4 , 0 );
setMoveKey( spep_1 - a + 132, 1, 93, 34.1 , 0 );
setMoveKey( spep_1 - a + 134, 1, 89.4, 38.5 , 0 );
setMoveKey( spep_1 - a + 136, 1, 85.5, 42.9 , 0 );
setMoveKey( spep_1 - a + 138, 1, 81.7, 45.7 , 0 );
setMoveKey( spep_1 - a + 140, 1, 76.9, 47.9 , 0 );
setMoveKey( spep_1 - a + 142, 1, 72.7, 49.7 , 0 );
setMoveKey( spep_1 - a + 144, 1, 67.5, 51 , 0 );
setMoveKey( spep_1 - a + 147, 1, 63, 51.6 , 0 );
setMoveKey( spep_1 - a + 148, 1, 128.9, 34 , 0 );
setMoveKey( spep_1 - a + 150, 1, 135.7, 23.1 , 0 );
setMoveKey( spep_1 - a + 152, 1, 113, 14.3 , 0 );
setMoveKey( spep_1 - a + 154, 1, 111.7, 11.1 , 0 );
setMoveKey( spep_1 - a + 156, 1, 108.7, 9.7 , 0 );
setMoveKey( spep_1 - a + 158, 1, 104.4, 8.9 , 0 );
setMoveKey( spep_1 - a + 160, 1, 102.4, 7.5 , 0 );
setMoveKey( spep_1 - a + 162, 1, 100.8, 5.7 , 0 );
setMoveKey( spep_1 - a + 164, 1, 99.1, 4.2 , 0 );
setMoveKey( spep_1 - a + 166, 1, 97.4, 2.6 , 0 );
setMoveKey( spep_1 - a + 168, 1, 105.9, 1.3 , 0 );
setMoveKey( spep_1 - a + 170, 1, 119.8, -0.4 , 0 );
setMoveKey( spep_1 - a + 172, 1, 134.7, -2 , 0 );
setMoveKey( spep_1 - a + 174, 1, 150.3, -3.7 , 0 );
setMoveKey( spep_1 - a + 176, 1, 166.6, -5.5 , 0 );
setMoveKey( spep_1 - a + 178, 1, 172.6, -6.9 , 0 );
setMoveKey( spep_1 - a + 180, 1, 178.9, -8.7 , 0 );
setMoveKey( spep_1 - a + 182, 1, 184.9, -9.8 , 0 );
setMoveKey( spep_1 - a + 184, 1, 191.2, -11 , 0 );
setMoveKey( spep_1 - a + 186, 1, 197.5, -12.2 , 0 );
setMoveKey( spep_1 - a + 188, 1, 203.9, -13 , 0 );
setMoveKey( spep_1 - a + 190, 1, 210.7, -13.7 , 0 );
setMoveKey( spep_1 - a + 192, 1, 217.2, -14.1 , 0 );
setMoveKey( spep_1 - a + 194, 1, 223.7, -14.5 , 0 );
setMoveKey( spep_1 - a + 196, 1, 230.3, -14.6 , 0 );
setMoveKey( spep_1 - a + 198, 1, 242.8, -17.1 , 0 );
setMoveKey( spep_1 - a + 201, 1, 264.7, -27.7 , 0 );
setMoveKey( spep_1 - a + 202, 1, 318.9, 54.6 , 0 );
setMoveKey( spep_1 - a + 204, 1, 524.1, 24 , 0 );
setMoveKey( spep_1 + 206, 1, 597.2, -29.5 , 0 );


setScaleKey( spep_1 + 0, 1, 1.16, 1.16 );
setScaleKey( spep_1 - a + 9, 1, 1.16, 1.16 );
setScaleKey( spep_1 - a + 10, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 12, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 14, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 20, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 22, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 24, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 26, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 28, 1, 1.3, 1.3 );
setScaleKey( spep_1 - a + 37, 1, 1.3, 1.3 );
setScaleKey( spep_1 - a + 38, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 40, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 43, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 44, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 46, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 48, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 50, 1, 1.44, 1.44 );
setScaleKey( spep_1 - a + 52, 1, 1.44, 1.44 );
setScaleKey( spep_1 - a + 54, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 65, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 66, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 68, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 70, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 83, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 84, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 86, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 88, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 105, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 106, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 108, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 110, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 115, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 116, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 118, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 120, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 124, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 126, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 128, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 130, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 147, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 148, 1, 1.56, 1.56 );
setScaleKey( spep_1 - a + 150, 1, 1.56, 1.56 );
setScaleKey( spep_1 - a + 152, 1, 1.3, 1.3 );
setScaleKey( spep_1 - a + 166, 1, 1.3, 1.3 );
setScaleKey( spep_1 - a + 168, 1, 1.43, 1.43 );
setScaleKey( spep_1 - a + 170, 1, 1.56, 1.56 );
setScaleKey( spep_1 - a + 172, 1, 1.68, 1.68 );
setScaleKey( spep_1 - a + 174, 1, 1.81, 1.81 );
setScaleKey( spep_1 - a + 176, 1, 1.94, 1.94 );
setScaleKey( spep_1 - a + 178, 1, 1.96, 1.96 );
setScaleKey( spep_1 - a + 180, 1, 1.97, 1.97 );
setScaleKey( spep_1 - a + 182, 1, 1.98, 1.98 );
setScaleKey( spep_1 - a + 184, 1, 2, 2 );
setScaleKey( spep_1 - a + 186, 1, 2.01, 2.01 );
setScaleKey( spep_1 - a + 188, 1, 2.02, 2.02 );
setScaleKey( spep_1 - a + 190, 1, 2.02, 2.02 );
setScaleKey( spep_1 - a + 192, 1, 2.03, 2.03 );
setScaleKey( spep_1 - a + 194, 1, 2.05, 2.05 );
setScaleKey( spep_1 - a + 196, 1, 2.06, 2.06 );
setScaleKey( spep_1 - a + 198, 1, 2.07, 2.07 );
setScaleKey( spep_1 - a + 201, 1, 2.14, 2.14 );
setScaleKey( spep_1 - a + 202, 1, 2.22, 2.22 );
setScaleKey( spep_1 - a + 204, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 206, 1, 2.35, 2.35 );

setRotateKey( spep_1 + 0, 1, 14.8 );
setRotateKey( spep_1 - a + 9, 1, 14.8 );
setRotateKey( spep_1 - a + 10, 1, 16.8 );
setRotateKey( spep_1 - a + 19, 1, 16.8 );
setRotateKey( spep_1 - a + 20, 1, -25.9 );
setRotateKey( spep_1 - a + 24, 1, -25.9 );
setRotateKey( spep_1 - a + 26, 1, -25.8 );
setRotateKey( spep_1 - a + 37, 1, -25.8 );
setRotateKey( spep_1 - a + 38, 1, -8.9 );
setRotateKey( spep_1 - a + 40, 1, -11.3 );
setRotateKey( spep_1 - a + 43, 1, -12.8 );
setRotateKey( spep_1 - a + 44, 1, -23.5 );
setRotateKey( spep_1 - a + 46, 1, -23.5 );
setRotateKey( spep_1 - a + 48, 1, -23.3 );
setRotateKey( spep_1 - a + 50, 1, -23.1 );
setRotateKey( spep_1 - a + 52, 1, -23.1 );
setRotateKey( spep_1 - a + 54, 1, -23 );
setRotateKey( spep_1 - a + 56, 1, -22.9 );
setRotateKey( spep_1 - a + 60, 1, -22.9 );
setRotateKey( spep_1 - a + 62, 1, -22.8 );
setRotateKey( spep_1 - a + 65, 1, -22.8 );
setRotateKey( spep_1 - a + 66, 1, -9.5 );
setRotateKey( spep_1 - a + 68, 1, -9.5 );
setRotateKey( spep_1 - a + 70, 1, -8 );
setRotateKey( spep_1 - a + 72, 1, -6.6 );
setRotateKey( spep_1 - a + 74, 1, -5.3 );
setRotateKey( spep_1 - a + 76, 1, -4.2 );
setRotateKey( spep_1 - a + 78, 1, -3.2 );
setRotateKey( spep_1 - a + 80, 1, -2.4 );
setRotateKey( spep_1 - a + 83, 1, -1.7 );
setRotateKey( spep_1 - a + 84, 1, -39.1 );
setRotateKey( spep_1 - a + 86, 1, -36.9 );
setRotateKey( spep_1 - a + 88, 1, -35.4 );
setRotateKey( spep_1 - a + 90, 1, -34.2 );
setRotateKey( spep_1 - a + 92, 1, -33.3 );
setRotateKey( spep_1 - a + 94, 1, -32.6 );
setRotateKey( spep_1 - a + 96, 1, -32.1 );
setRotateKey( spep_1 - a + 98, 1, -31.7 );
setRotateKey( spep_1 - a + 100, 1, -31.4 );
setRotateKey( spep_1 - a + 102, 1, -31.2 );
setRotateKey( spep_1 - a + 105, 1, -31.1 );
setRotateKey( spep_1 - a + 106, 1, 9.6 );
setRotateKey( spep_1 - a + 108, 1, 10.9 );
setRotateKey( spep_1 - a + 110, 1, 11.6 );
setRotateKey( spep_1 - a + 112, 1, 11.9 );
setRotateKey( spep_1 - a + 115, 1, 12.1 );
setRotateKey( spep_1 - a + 116, 1, -17.5 );
setRotateKey( spep_1 - a + 118, 1, -20.4 );
setRotateKey( spep_1 - a + 120, 1, -21.6 );
setRotateKey( spep_1 - a + 122, 1, -22 );
setRotateKey( spep_1 - a + 124, 1, -10.1 );
setRotateKey( spep_1 - a + 147, 1, -10.1 );
setRotateKey( spep_1 - a + 148, 1, 33.5 );
setRotateKey( spep_1 - a + 150, 1, 32.9 );
setRotateKey( spep_1 - a + 152, 1, 32.5 );
setRotateKey( spep_1 - a + 154, 1, 32.3 );
setRotateKey( spep_1 - a + 156, 1, 32.2 );
setRotateKey( spep_1 - a + 158, 1, 32.2 );
setRotateKey( spep_1 - a + 160, 1, 32.3 );
setRotateKey( spep_1 - a + 162, 1, 32.4 );
setRotateKey( spep_1 - a + 164, 1, 32.5 );
setRotateKey( spep_1 - a + 166, 1, 32.6 );
setRotateKey( spep_1 - a + 168, 1, 32.7 );
setRotateKey( spep_1 - a + 170, 1, 32.8 );
setRotateKey( spep_1 - a + 172, 1, 32.9 );
setRotateKey( spep_1 - a + 174, 1, 33 );
setRotateKey( spep_1 - a + 176, 1, 33.1 );
setRotateKey( spep_1 - a + 178, 1, 33.2 );
setRotateKey( spep_1 - a + 180, 1, 33.3 );
setRotateKey( spep_1 - a + 182, 1, 33.4 );
setRotateKey( spep_1 - a + 184, 1, 33.5 );
setRotateKey( spep_1 - a + 186, 1, 33.6 );
setRotateKey( spep_1 - a + 188, 1, 33.7 );
setRotateKey( spep_1 - a + 190, 1, 33.8 );
setRotateKey( spep_1 - a + 192, 1, 33.9 );
setRotateKey( spep_1 - a + 194, 1, 34 );
setRotateKey( spep_1 - a + 196, 1, 34.1 );
setRotateKey( spep_1 - a + 198, 1, 34.3 );
setRotateKey( spep_1 - a + 201, 1, 34.9 );
setRotateKey( spep_1 - a + 202, 1, -16.3 );
setRotateKey( spep_1 - a + 204, 1, -7.2 );
setRotateKey( spep_1 + 206, 1, -4.2 );









--***格闘背景***
kakutouBG = entryEffect(  spep_1,  SP_03,  0x80,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_1,  kakutouBG,  1.0,  1.0);
setEffScaleKey(  spep_1+210,  kakutouBG,  1.0,  1.0);
setEffMoveKey(  spep_1,  kakutouBG,  0,  0);
setEffMoveKey(  spep_1+210,  kakutouBG,  0,  0);
setEffRotateKey(  spep_1,  kakutouBG,  0);
setEffRotateKey(  spep_1+210,  kakutouBG,  0);
setEffAlphaKey(  spep_1,  kakutouBG,  255);
setEffAlphaKey(  spep_1+210,  kakutouBG,  255);


--***流線***
ryusen = entryEffectLife( spep_1, 914, 208, 0x80,  -1, 0,  0,  0);   -- 流線

setEffMoveKey(  spep_1,  ryusen,  0,  0,  0);
setEffMoveKey(  spep_1+208,  ryusen,  0,  0,  0);
setEffScaleKey( spep_1,  ryusen,  2.14,  1.22);
setEffScaleKey(  spep_1+208,  ryusen,  2.14,  1.22);
setEffRotateKey(  spep_1,  ryusen,  12);
setEffRotateKey( spep_1+208,  ryusen,  12);
setEffAlphaKey(  spep_1,  ryusen,  0);
setEffAlphaKey( spep_1+1,  ryusen,  0);
setEffAlphaKey( spep_1+2,  ryusen,  46);
setEffAlphaKey( spep_1+208,  ryusen,  46);

entryFadeBg( spep_1,  0,  208,  0,  0,  0,  0,  255);  --黒背景


--***書き文字***
ct_zan1 = entryEffectLife( spep_1 -a + 10,  10010, 12, 0x100, -1, 0, 98.4, 234 );  --ザン

setEffShake(  spep_1 -a +10,  ct_zan1,  12,  10);
setEffMoveKey( spep_1 -a + 10, ct_zan1, 98.4, 234 , 0 );
setEffMoveKey( spep_1 -a + 22, ct_zan1, 98.4, 234 , 0 );
setEffScaleKey( spep_1 -a + 10, ct_zan1, 0.59, 0.59 );
setEffScaleKey( spep_1 -a + 12, ct_zan1, 1.05, 1.05 );
setEffScaleKey( spep_1 -a + 14, ct_zan1, 1.5, 1.5 );
setEffScaleKey( spep_1 -a + 22, ct_zan1, 1.5, 1.5 );
setEffRotateKey( spep_1 -a + 10, ct_zan1, 23.8 );
setEffRotateKey( spep_1 -a + 12, ct_zan1, 24 );
setEffRotateKey( spep_1 -a + 22, ct_zan1, 24 );
setEffAlphaKey( spep_1 -a + 10, ct_zan1, 255 );
setEffAlphaKey( spep_1 -a + 22, ct_zan1, 255 );

ct_zan2 = entryEffectLife( spep_1 -a + 22,  10010, 12, 0x100, -1, 0, -112.5, 194 );

setEffShake( spep_1 -a + 22,  ct_zan2,  12,  10);
setEffMoveKey( spep_1 -a + 22, ct_zan2, -112.5, 194 , 0 );
setEffMoveKey( spep_1 -a + 34, ct_zan2, -112.5, 194 , 0 );
setEffScaleKey( spep_1 -a + 22, ct_zan2, 0.59, 0.59 );
setEffScaleKey( spep_1 -a + 24, ct_zan2, 1.05, 1.05 );
setEffScaleKey( spep_1 -a + 26, ct_zan2, 1.5, 1.5 );
setEffScaleKey( spep_1 -a + 34, ct_zan2, 1.5, 1.5 );
setEffRotateKey( spep_1 -a + 22, ct_zan2, -27.8 );
setEffRotateKey( spep_1 -a + 34, ct_zan2, -27.8 );
setEffAlphaKey( spep_1 -a + 22, ct_zan2, 255 );
setEffAlphaKey( spep_1 -a + 34, ct_zan2, 255 );

ct_zazan = entryEffectLife( spep_1 -a + 38,  10009, 16, 0x100, -1, 0, 60.6, 251.3 );

setEffShake(  spep_1 -a +38,  ct_zazan,  16,  10);
setEffMoveKey( spep_1 -a + 38, ct_zazan, 60.6, 251.3 , 0 );
setEffMoveKey( spep_1 -a + 40, ct_zazan, 72.3, 288.4 , 0 );
setEffMoveKey( spep_1 -a + 42, ct_zazan, 84, 325.5 , 0 );
setEffMoveKey( spep_1 -a + 54, ct_zazan, 84, 325.5 , 0 );
setEffScaleKey( spep_1 -a + 38, ct_zazan, 0.59, 0.59 );
setEffScaleKey( spep_1 -a + 40, ct_zazan, 1.3, 1.3 );
setEffScaleKey( spep_1 -a + 42, ct_zazan, 2, 2 );
setEffScaleKey( spep_1 -a + 44, ct_zazan, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 46, ct_zazan, 1.8, 1.8 );
setEffScaleKey( spep_1 -a + 48, ct_zazan, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 50, ct_zazan, 2, 2 );
setEffScaleKey( spep_1 -a + 52, ct_zazan, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 54, ct_zazan, 1.8, 1.8 );
setEffRotateKey( spep_1 -a + 38, ct_zazan, 17.3 );
setEffRotateKey( spep_1 -a + 40, ct_zazan, 17.4 );
setEffRotateKey( spep_1 -a + 54, ct_zazan, 17.4 );
setEffAlphaKey( spep_1 -a + 38, ct_zazan, 255 );
setEffAlphaKey( spep_1 -a + 54, ct_zazan, 255 );

ct_zan3 = entryEffectLife( spep_1 -a + 66,  10010, 12, 0x100, -1, 0, -134, 215.5 );

setEffShake(  spep_1 -a +66,  ct_zan3,  12,  10);
setEffMoveKey( spep_1 -a + 66, ct_zan3, -134, 215.5 , 0 );
setEffMoveKey( spep_1 -a + 78, ct_zan3, -134, 215.5 , 0 );
setEffScaleKey( spep_1 -a + 66, ct_zan3, 0.59, 0.59 );
setEffScaleKey( spep_1 -a + 68, ct_zan3, 1.05, 1.05 );
setEffScaleKey( spep_1 -a + 70, ct_zan3, 1.5, 1.5 );
setEffScaleKey( spep_1 -a + 78, ct_zan3, 1.5, 1.5 );
setEffRotateKey( spep_1 -a + 66, ct_zan3, -27.8 );
setEffRotateKey( spep_1 -a + 78, ct_zan3, -27.8 );
setEffAlphaKey( spep_1 -a + 66, ct_zan3, 255 );
setEffAlphaKey( spep_1 -a + 78, ct_zan3, 255 );

ct_zan4 = entryEffectLife( spep_1 -a + 84,  10010, 12, 0x100, -1, 0, 119.9, 277 );

setEffShake(  spep_1 -a +84,  ct_zan4,  12,  10);
setEffMoveKey( spep_1 -a + 84, ct_zan4, 119.9, 277 , 0 );
setEffMoveKey( spep_1 -a + 96, ct_zan4, 119.9, 277 , 0 );
setEffScaleKey( spep_1 -a + 84, ct_zan4, 0.59, 0.59 );
setEffScaleKey( spep_1 -a + 86, ct_zan4, 1.05, 1.05 );
setEffScaleKey( spep_1 -a + 88, ct_zan4, 1.5, 1.5 );
setEffScaleKey( spep_1 -a + 96, ct_zan4, 1.5, 1.5 );
setEffRotateKey( spep_1 -a + 84, ct_zan4, 23.8 );
setEffRotateKey( spep_1 -a + 86, ct_zan4, 24 );
setEffRotateKey( spep_1 -a + 96, ct_zan4, 24 );
setEffAlphaKey( spep_1 -a + 84, ct_zan4, 255 );
setEffAlphaKey( spep_1 -a + 96, ct_zan4, 255 );

ct_zazan2 = entryEffectLife( spep_1 -a + 102,  10009, 32, 0x100, -1, 0, 157.4, 221 );

setEffShake(  spep_1 -a +102,  ct_zazan2,  32,  10);
setEffMoveKey( spep_1 -a + 102, ct_zazan2, 157.4, 221 , 0 );
setEffMoveKey( spep_1 -a + 104, ct_zazan2, 159.4, 234 , 0 );
setEffMoveKey( spep_1 -a + 106, ct_zazan2, 161.3, 246.9 , 0 );
setEffMoveKey( spep_1 -a + 134, ct_zazan2, 161.3, 246.9 , 0 );
setEffScaleKey( spep_1 -a + 102, ct_zazan2, 0.59, 0.59 );
setEffScaleKey( spep_1 -a + 104, ct_zazan2, 1.3, 1.3 );
setEffScaleKey( spep_1 -a + 106, ct_zazan2, 2, 2 );
setEffScaleKey( spep_1 -a + 108, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 110, ct_zazan2, 1.8, 1.8 );
setEffScaleKey( spep_1 -a + 112, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 114, ct_zazan2, 2, 2 );
setEffScaleKey( spep_1 -a + 116, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 118, ct_zazan2, 1.8, 1.8 );
setEffScaleKey( spep_1 -a + 120, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 122, ct_zazan2, 2, 2 );
setEffScaleKey( spep_1 -a + 124, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 126, ct_zazan2, 1.8, 1.8 );
setEffScaleKey( spep_1 -a + 128, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 130, ct_zazan2, 2, 2 );
setEffScaleKey( spep_1 -a + 132, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 134, ct_zazan2, 1.8, 1.8 );
setEffRotateKey( spep_1 -a + 102, ct_zazan2, 30 );
setEffRotateKey( spep_1 -a + 134, ct_zazan2, 30 );
setEffAlphaKey( spep_1 -a + 102, ct_zazan2, 255 );
setEffAlphaKey( spep_1 -a + 134, ct_zazan2, 255 );

--***SE***
playSe(  spep_1 + 12,  1032);
playSe(  spep_1 + 14,  1031);
playSe(  spep_1 + 46,  1032);
playSe(  spep_1 + 70,  1032);
playSe(  spep_1 + 90,  1032);
playSe(  spep_1 + 114,  1031);
--playSe(  spep_1 + 116,  1032);
--playSe(  spep_1 + 118,  1031);
playSe(  spep_1 + 150,  1032);

entryFade(  spep_1+202,  2,  4,  0,  fcolor_r,  fcolor_g,  fcolor_b,  255);

------------------------------------------------------
-- 払い落とす(40F)
------------------------------------------------------
spep_2 = spep_1 + 208;



--***敵の動き***
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 40, 1, 0 );
changeAnime( spep_2 + 0, 1, 107 );

setShakeChara(  spep_2,  1,  40,  10);  --揺れ
setMoveKey( spep_2 + 0, 1, -109.4, 148.9 , 0 );
setMoveKey( spep_2 + 2, 1, -23.6, -18.7 , 0 );
setMoveKey( spep_2 + 4, 1, 8.9, -79.7 , 0 );
setMoveKey( spep_2 + 6, 1, 180.6, -274.8 , 0 );
setMoveKey( spep_2 + 8, 1, 340.4, -452.9 , 0 );
setMoveKey( spep_2 + 10, 1, 486, -614 , 0 );
setMoveKey( spep_2 + 12, 1, 629.1, -769.9 , 0 );
setMoveKey( spep_2 + 14, 1, 757.9, -909.8 , 0 );
setMoveKey( spep_2 + 16, 1, 875.7, -1037.2 , 0 );
setMoveKey( spep_2 + 18, 1, 989.9, -1159.6 , 0 );
setMoveKey( spep_2 + 20, 1, 1095.3, -1272.2 , 0 );
setMoveKey( spep_2 + 22, 1, 1197.3, -1380.4 , 0 );
setMoveKey( spep_2 + 24, 1, 1288, -1476.4 , 0 );
setMoveKey( spep_2 + 26, 1, 1376, -1569.1 , 0 );
setMoveKey( spep_2 + 28, 1, 1458.1, -1655.1 , 0 );
setMoveKey( spep_2 + 30, 1, 1536.4, -1737.6 , 0 );
setMoveKey( spep_2 + 32, 1, 1612.1, -1817.9 , 0 );
setMoveKey( spep_2 + 34, 1, 1884.4, -2103.8 , 0 );
setMoveKey( spep_2 + 36, 1, 1942.2, -2163.6 , 0 );
setMoveKey( spep_2 + 38, 1, 1995.7, -2218.7 , 0 );
setMoveKey( spep_2 + 40, 1, 2047.1, -2271.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1, 1 );
setScaleKey( spep_2 + 2, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 4, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 6, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 8, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 10, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 12, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 14, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 16, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 18, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 20, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 22, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 24, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 26, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 28, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 30, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 32, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 34, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 36, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 38, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 40, 1, 2, 2 );

setRotateKey( spep_2 + 0, 1, 10.7 );
setRotateKey( spep_2 + 2, 1, 19.5 );
setRotateKey( spep_2 + 4, 1, 20.6 );
setRotateKey( spep_2 + 6, 1, 21.3 );
setRotateKey( spep_2 + 8, 1, 21.9 );
setRotateKey( spep_2 + 10, 1, 22.5 );
setRotateKey( spep_2 + 12, 1, 23 );
setRotateKey( spep_2 + 14, 1, 23.4 );
setRotateKey( spep_2 + 16, 1, 23.9 );
setRotateKey( spep_2 + 18, 1, 24.3 );
setRotateKey( spep_2 + 20, 1, 24.6 );
setRotateKey( spep_2 + 22, 1, 25 );
setRotateKey( spep_2 + 24, 1, 25.3 );
setRotateKey( spep_2 + 26, 1, 25.6 );
setRotateKey( spep_2 + 28, 1, 26 );
setRotateKey( spep_2 + 30, 1, 26.2 );
setRotateKey( spep_2 + 32, 1, 26.5 );
setRotateKey( spep_2 + 34, 1, 27.6 );
setRotateKey( spep_2 + 36, 1, 27.8 );
setRotateKey( spep_2 + 38, 1, 28 );
setRotateKey( spep_2 + 40, 1, 28.2 );

--***書き文字***
ct_zan5 = entryEffectLife( spep_2 + 8,  10010, 28, 0x100, -1, 0, -206.3, 229.1 );  --ザンッ

setEffShake(  spep_2 + 8,  ct_zan5,  28,  10);  --揺れ
setEffMoveKey( spep_2 + 8, ct_zan5, -206.3, 229.1 , 0 );
setEffMoveKey( spep_2 + 10, ct_zan5, -190.3, 255.2 , 0 );
setEffMoveKey( spep_2 + 12, ct_zan5, -174.3, 281.1 , 0 );
setEffMoveKey( spep_2 + 14, ct_zan5, -158.2, 307 , 0 );
setEffMoveKey( spep_2 + 36, ct_zan5, -158.2, 307 , 0 );
setEffScaleKey( spep_2 + 8, ct_zan5, 0.5, 0.5 );
setEffScaleKey( spep_2 + 10, ct_zan5, 0.89, 0.89 );
setEffScaleKey( spep_2 + 12, ct_zan5, 1.28, 1.28 );
setEffScaleKey( spep_2 + 14, ct_zan5, 1.68, 1.68 );
setEffScaleKey( spep_2 + 36, ct_zan5, 1.68, 1.68 );
setEffRotateKey( spep_2 + 8, ct_zan5, -13.8 );
setEffRotateKey( spep_2 + 10, ct_zan5, -14 );
setEffRotateKey( spep_2 + 36, ct_zan5, -14 );
setEffAlphaKey( spep_2 + 8, ct_zan5, 255 );
setEffAlphaKey( spep_2 + 36, ct_zan5, 255 );

effect = entryEffect(  spep_2,  SP_08,  0x100,  -1,  0,  0,  0);  --effect

setEffMoveKey(  spep_2,  effect,  0,  0,  0);
setEffMoveKey(  spep_2+40,  effect,  0,  0,  0);
setEffScaleKey(  spep_2,  effect,  1.0,  1.0);
setEffScaleKey(  spep_2+40,  effect,  1.0,  1.0);
setEffRotateKey(  spep_2,  effect,  0);
setEffRotateKey(  spep_2+40,  effect,  0);
setEffAlphaKey(  spep_2,  effect,  255);
setEffAlphaKey(  spep_2+40,  effect,  255);

otosuBG = entryEffect(  spep_2,  SP_05,  0x80,  -1,  0,  0,  0);  --払い落とす

setEffMoveKey(  spep_2,  otosuBG,  0,  0,  0);
setEffMoveKey(  spep_2+40,  otosuBG,  0,  0,  0);
setEffScaleKey(  spep_2,  otosuBG,  1.0,  1.0);
setEffScaleKey(  spep_2+40,  otosuBG,  1.0,  1.0);
setEffRotateKey(  spep_2,  otosuBG,  0);
setEffRotateKey(  spep_2+40,  otosuBG,  0);
setEffAlphaKey(  spep_2,  otosuBG,  255);
setEffAlphaKey(  spep_2+40,  otosuBG,  255);

--[[ryusen2 = entryEffectLife( spep_2,  906,  40,  0x80,  -1, 0, -190,  350);

setEffMoveKey(  spep_2,  ryusen2,  -190,  350,  0);
setEffMoveKey(  spep_2+40,  ryusen2,  -190,  350,  0);
setEffScaleKey(  spep_2,  ryusen2,  2.0,  2.11);
setEffScaleKey(  spep_2+40,  ryusen2,  2.0, 2.11);
setEffRotateKey(  spep_2,  ryusen2, 30);
setEffRotateKey(  spep_2+40,  ryusen2, 30);
setEffAlphaKey(  spep_2,  ryusen2,  255);
setEffAlphaKey(  spep_2+40,  ryusen2,  255);]]

otosu = entryEffect(  spep_2,  SP_04,  0x80,  -1,  0,  0,  0);  --払い落とす

setEffMoveKey(  spep_2,  otosu,  0,  0,  0);
setEffMoveKey(  spep_2+40,  otosu,  0,  0,  0);
setEffScaleKey(  spep_2,  otosu,  1.0,  1.0);
setEffScaleKey(  spep_2+40,  otosu,  1.0,  1.0);
setEffRotateKey(  spep_2,  otosu,  0);
setEffRotateKey(  spep_2+40,  otosu,  0);
setEffAlphaKey(  spep_2,  otosu,  255);
setEffAlphaKey(  spep_2+40,  otosu,  255);


entryFadeBg( spep_2,  0,  40,  0,  0,  0,  0,  255);  --黒背景

playSe(  spep_2,  1055);
playSe(  spep_2+2 ,1031);


------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_3 = spep_2 + 40;

--***フェードと背景***
entryFade( spep_3-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffShake(  spep_3,  shuchusen3,  90,  10);
setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

entryFade(  spep_3 + 80,  4,  10,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);

------------------------------------------------------
-- 気弾放つ(142F)
------------------------------------------------------
spep_4 = spep_3 + 90;

--***集中線***
shuchusen4 = entryEffectLife( spep_4+55, 906, 87, 0x100,  -1, 0,  0,  0);

setEffShake(  spep_4+55,  shuchusen4,  112,  10);
setEffMoveKey(  spep_4+55,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+142,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+55,  shuchusen4,  1.1,  1.1);
setEffScaleKey(  spep_4+142,  shuchusen4,  1.1,  1.1);
setEffRotateKey(  spep_4+55,  shuchusen4,  0);
setEffRotateKey(  spep_4+142,  shuchusen4,  0);
setEffAlphaKey(  spep_4+55,  shuchusen4,  255);
setEffAlphaKey(  spep_4+142,  shuchusen4,  255);

--***書き文字***
ct_zudodo = entryEffectLife( spep_4 -a + 58,  10014, 84, 0x100, -1, 0, 49.2, 382.9 );  --ズドド

setEffShake(  spep_4 -a + 58,  ct_zudodo,  84,  20);  --揺れ
setEffMoveKey( spep_4 -a + 58, ct_zudodo, 49.2, 382.9 , 0 );
setEffMoveKey( spep_4 -a + 60, ct_zudodo, 58.8, 375.1 , 0 );
setEffMoveKey( spep_4 -a + 62, ct_zudodo, 84.2, 388.8 , 0 );
setEffMoveKey( spep_4 -a + 64, ct_zudodo, 101.7, 391.7 , 0 );
setEffMoveKey( spep_4 -a + 140, ct_zudodo, 101.7, 391.7 , 0 );
setEffMoveKey( spep_4 -a + 142, ct_zudodo, 89.4, 375 , 0 );
setEffScaleKey( spep_4 -a + 58, ct_zudodo, 1.07, 1.07 );
setEffScaleKey( spep_4 -a + 60, ct_zudodo, 1.49, 1.49 );
setEffScaleKey( spep_4 -a + 62, ct_zudodo, 1.91, 1.91 );
setEffScaleKey( spep_4 -a + 64, ct_zudodo, 2.32, 2.32 );
setEffScaleKey( spep_4 -a + 142, ct_zudodo, 2.32, 2.32 );
setEffRotateKey( spep_4 -a + 58, ct_zudodo, 53.4 );
setEffRotateKey( spep_4 -a + 142, ct_zudodo, 53.4 );
setEffAlphaKey( spep_4 -a + 58, ct_zudodo, 255 );
setEffAlphaKey( spep_4 -a + 141, ct_zudodo, 255 );
setEffAlphaKey( spep_4 -a + 142, ct_zudodo, 0 );


--***流線***
ryusen_top = entryEffectLife( spep_4 + 0,  914, 142, 0x100, -1, 0, 595.6, 3179.6 );

setEffMoveKey(  spep_4, ryusen_top, 595.6, 3179.6 );
setEffMoveKey(  spep_4 + 142, ryusen_top, 595.6, 3179.6 );
setEffScaleKey( spep_4 + 0, ryusen_top, 4.99, 1.49 );
setEffScaleKey( spep_4 + 142, ryusen_top, 4.99, 1.49 );
setEffRotateKey( spep_4 + 0, ryusen_top, -135.1 );
setEffRotateKey( spep_4 + 142, ryusen_top, -135.1 );
setEffAlphaKey( spep_4 + 0, ryusen_top, 153 );
setEffAlphaKey( spep_4 + 142, ryusen_top, 153 );

ryusen_under = entryEffectLife( spep_4 + 0,  914, 142, 0x100, -1, 0, -870.6, -1831 );

setEffMoveKey( spep_4 + 0,  ryusen_under, -870.6, -1831 );
setEffMoveKey( spep_4 + 142,  ryusen_under, -870.6, -1831 );
setEffScaleKey( spep_4 + 0, ryusen_under, 3, 1.5 );
setEffScaleKey( spep_4 + 142, ryusen_under, 3, 1.5 );
setEffRotateKey( spep_4 + 0, ryusen_under, -135 );
setEffRotateKey( spep_4 + 142, ryusen_under, -135 );
setEffAlphaKey( spep_4 + 0, ryusen_under, 153 );
setEffAlphaKey( spep_4 + 142, ryusen_under, 153 );

hanatsu = entryEffect(  spep_4,  SP_06,  0x80,  -1,  0,  0,  0);  --気弾放つ

setEffMoveKey(  spep_4,  hanatsu,  0,  0,  0);
setEffMoveKey(  spep_4+142,  hanatsu,  0,  0,  0);
setEffScaleKey(  spep_4,  hanatsu,  1.0,  1.0);
setEffScaleKey(  spep_4+142,  hanatsu,  1.0,  1.0);
setEffRotateKey(  spep_4,  hanatsu,  0);
setEffRotateKey(  spep_4+142,  hanatsu,  0);
setEffAlphaKey(  spep_4,  hanatsu,  255);
setEffAlphaKey(  spep_4+142,  hanatsu,  255);

entryFadeBg( spep_4,  0,  142,  0,  0,  0,  0,  255);  --黒背景

--***音***
playSe(  spep_4 + 10,  1003);  --腕振り上げ
playSe(  spep_4 + 64,  1016);  --気弾
playSe(  spep_4 + 76,  1016);  --気弾
playSe(  spep_4 + 88,  1016);  --気弾
playSe(  spep_4 + 100,  1016);  --気弾
playSe(  spep_4 + 112,  1016);  --気弾
playSe(  spep_4 + 124,  1016);  --気弾
playSe(  spep_4 + 136,  1016);  --気弾

entryFade(  spep_4 + 138,  2,  4,  4,  fcolor_r, fcolor_g,  fcolor_b,  255);  --白フェード

------------------------------------------------------
-- 気弾迫る(180F)
------------------------------------------------------
spep_5 = spep_4 + 142;

--***気弾前面***
semaru = entryEffect(  spep_5,  SP_07,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_5,  semaru,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  semaru,  1.0,  1.0);
setEffMoveKey(  spep_5,  semaru,  0,  0);
setEffMoveKey(  spep_5+180,  semaru,  0,  0);
setEffRotateKey(  spep_5,  semaru,  0);
setEffRotateKey(  spep_5+180,  semaru,  0);
setEffAlphaKey(  spep_5,  semaru,  255);
setEffAlphaKey(  spep_5+180,  semaru,  255);
setEffAlphaKey(  spep_5,  semaru,  0);
setEffAlphaKey(  spep_5+180,  semaru,  0);

--***敵キャラ動き***
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5+178, 1,  0);  --消す
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -151.7, 312.1 , 0 );
setMoveKey( spep_5 + 2, 1, -101.2, 218.7 , 0 );
setMoveKey( spep_5 + 4, 1, -64.5, 174.3 , 0 );
setMoveKey( spep_5 + 6, 1, -46.8, 132.5 , 0 );
setMoveKey( spep_5 + 8, 1, -33.4, 113.4 , 0 );
setMoveKey( spep_5 + 10, 1, -11.5, 84.8 , 0 );
setMoveKey( spep_5 + 12, 1, -9.8, 64.2 , 0 );
setMoveKey( spep_5 + 14, 1, 7.2, 51.2 , 0 );
setMoveKey( spep_5 + 16, 1, 12, 30.7 , 0 );
setMoveKey( spep_5 + 18, 1, 23.3, 25.7 , 0 );
setMoveKey( spep_5 + 20, 1, 23.7, 10.6 , 0 );
setMoveKey( spep_5 + 22, 1, 36.4, 2.4 , 0 );
setMoveKey( spep_5 + 24, 1, 37, -7.9 , 0 );
setMoveKey( spep_5 + 26, 1, 47.8, -15 , 0 );
setMoveKey( spep_5 + 28, 1, 48.3, -28.7 , 0 );
setMoveKey( spep_5 + 30, 1, 50.7, -29.3 , 0 );
setMoveKey( spep_5 + 32, 1, 56.4, -40.7 , 0 );
setMoveKey( spep_5 + 34, 1, 60.2, -41.4 , 0 );
setMoveKey( spep_5 + 36, 1, 64.2, -51.6 , 0 );
setMoveKey( spep_5 + 38, 1, 64.8, -50.6 , 0 );
setMoveKey( spep_5 + 40, 1, 67.6, -59.4 , 0 );
setMoveKey( spep_5 + 42, 1, 73.5, -60.1 , 0 );
setMoveKey( spep_5 + 44, 1, 72.6, -67.8 , 0 );
setMoveKey( spep_5 + 46, 1, 73.1, -66.5 , 0 );
setMoveKey( spep_5 + 48, 1, 78.3, -71.1 , 0 );
setMoveKey( spep_5 + 50, 1, 71.8, -64.3 , 0 );
setMoveKey( spep_5 + 52, 1, 77.1, -81.1 , 0 );
setMoveKey( spep_5 + 54, 1, 80.9, -68.9 , 0 );
setMoveKey( spep_5 + 56, 1, 83.1, -85.8 , 0 );
setMoveKey( spep_5 + 58, 1, 80.1, -72.5 , 0 );
setMoveKey( spep_5 + 60, 1, 80.6, -85.9 , 0 );
setMoveKey( spep_5 + 62, 1, 86.5, -80.2 , 0 );
setMoveKey( spep_5 + 64, 1, 84, -78.8 , 0 );
setMoveKey( spep_5 + 66, 1, 78.9, -83.9 , 0 );
setMoveKey( spep_5 + 68, 1, 80.1, -75.5 , 0 );
setMoveKey( spep_5 + 70, 1, 93.8, -85.3 , 0 );
setMoveKey( spep_5 + 72, 1, 77.5, -72.9 , 0 );
setMoveKey( spep_5 + 74, 1, 85.6, -91.8 , 0 );
setMoveKey( spep_5 + 76, 1, 92.2, -76.2 , 0 );
setMoveKey( spep_5 + 78, 1, 76.9, -93.8 , 0 );
setMoveKey( spep_5 + 80, 1, 88.5, -70.6 , 0 );
setMoveKey( spep_5 + 82, 1, 77.5, -91 , 0 );
setMoveKey( spep_5 + 84, 1, 96, -82.1 , 0 );
setMoveKey( spep_5 + 86, 1, 76.9, -71.9 , 0 );
setMoveKey( spep_5 + 88, 1, 99.1, -95.6 , 0 );
setMoveKey( spep_5 + 90, 1, 74.9, -68.8 , 0 );
setMoveKey( spep_5 + 92, 1, 89.8, -98.2 , 0 );
setMoveKey( spep_5 + 94, 1, 89.9, -63 , 0 );
setMoveKey( spep_5 + 96, 1, 74.6, -101.2 , 0 );
setMoveKey( spep_5 + 98, 1, 97.8, -74 , 0 );
setMoveKey( spep_5 + 100, 1, 61.7, -75.3 , 0 );
setMoveKey( spep_5 + 102, 1, 94.3, -110.2 , 0 );
setMoveKey( spep_5 + 104, 1, 60.5, -77.4 , 0 );
setMoveKey( spep_5 + 106, 1, 111.8, -90.8 , 0 );
setMoveKey( spep_5 + 108, 1, 67.9, -81.5 , 0 );
setMoveKey( spep_5 + 110, 1, 111.8, -84.2 , 0 );
setMoveKey( spep_5 + 112, 1, 61.7, -104.8 , 0 );
setMoveKey( spep_5 + 114, 1, 84.7, -57.5 , 0 );
setMoveKey( spep_5 + 116, 1, 100.9, -97.5 , 0 );
setMoveKey( spep_5 + 118, 1, 102.1, -94 , 0 );
setMoveKey( spep_5 + 120, 1, 73.3, -68.8 , 0 );
setMoveKey( spep_5 + 122, 1, 83.5, -99.1 , 0 );
setMoveKey( spep_5 + 124, 1, 92.9, -58.4 , 0 );
setMoveKey( spep_5 + 126, 1, 76.5, -108.2 , 0 );
setMoveKey( spep_5 + 128, 1, 93.4, -66.9 , 0 );
setMoveKey( spep_5 + 130, 1, 70.5, -79.5 , 0 );
setMoveKey( spep_5 + 132, 1, 89.1, -111.9 , 0 );
setMoveKey( spep_5 + 134, 1, 63.9, -78.7 , 0 );
setMoveKey( spep_5 + 136, 1, 110.9, -95.2 , 0 );
setMoveKey( spep_5 + 138, 1, 70.9, -80.3 , 0 );
setMoveKey( spep_5 + 140, 1, 106.3, -82.9 , 0 );
setMoveKey( spep_5 + 142, 1, 64.1, -104.1 , 0 );
setMoveKey( spep_5 + 144, 1, 81.6, -55.4 , 0 );
setMoveKey( spep_5 + 146, 1, 105.2, -96.1 , 0 );
setMoveKey( spep_5 + 148, 1, 100.5, -97.5 , 0 );
setMoveKey( spep_5 + 150, 1, 70.5, -65.7 , 0 );
setMoveKey( spep_5 + 152, 1, 91.2, -101.8 , 0 );
setMoveKey( spep_5 + 154, 1, 87.5, -60.2 , 0 );
setMoveKey( spep_5 + 156, 1, 77.2, -105.1 , 0 );
setMoveKey( spep_5 + 158, 1, 95.4, -69.7 , 0 );
setMoveKey( spep_5 + 160, 1, 61.9, -78.9 , 0 );
setMoveKey( spep_5 + 162, 1, 97.4, -107 , 0 );
setMoveKey( spep_5 + 164, 1, 59.9, -82.9 , 0 );
setMoveKey( spep_5 + 166, 1, 110.8, -87.8 , 0 );
setMoveKey( spep_5 + 168, 1, 69.9, -84.5 , 0 );
setMoveKey( spep_5 + 170, 1, 105.1, -73.7 , 0 );
setMoveKey( spep_5 + 172, 1, 59.2, -112.7 , 0 );
setMoveKey( spep_5 + 174, 1, 85.4, -48.5 , 0 );
setMoveKey( spep_5 + 176, 1, 103.6, -106.3 , 0 );
setMoveKey( spep_5 + 178, 1, 79.1, -38 , 0 );

setScaleKey( spep_5 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_5 + 2, 1, 0.62, 0.62 );
setScaleKey( spep_5 + 4, 1, 0.68, 0.68 );
setScaleKey( spep_5 + 6, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 8, 1, 0.76, 0.76 );
setScaleKey( spep_5 + 10, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 12, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 14, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 16, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 18, 1, 0.87, 0.87 );
setScaleKey( spep_5 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 22, 1, 0.89, 0.89 );
setScaleKey( spep_5 + 24, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 26, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 28, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 30, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 32, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 34, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 38, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 40, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 42, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 44, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 46, 1, 1, 1 );
setScaleKey( spep_5 + 48, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 50, 1, 1.02, 1.02 );
setScaleKey( spep_5 + 52, 1, 1.02, 1.02 );
setScaleKey( spep_5 + 54, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 56, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_5 + 62, 1, 1.04, 1.04 );
setScaleKey( spep_5 + 64, 1, 1.05, 1.05 );
setScaleKey( spep_5 + 178, 1, 1.05, 1.05 );

setRotateKey( spep_5 + 0, 1, 25 );
setRotateKey( spep_5 + 2, 1, 26.2 );
setRotateKey( spep_5 + 4, 1, 26.7 );
setRotateKey( spep_5 + 6, 1, 27.2 );
setRotateKey( spep_5 + 8, 1, 27.5 );
setRotateKey( spep_5 + 10, 1, 27.8 );
setRotateKey( spep_5 + 12, 1, 28 );
setRotateKey( spep_5 + 14, 1, 28.2 );
setRotateKey( spep_5 + 16, 1, 28.4 );
setRotateKey( spep_5 + 18, 1, 28.6 );
setRotateKey( spep_5 + 20, 1, 28.7 );
setRotateKey( spep_5 + 22, 1, 28.9 );
setRotateKey( spep_5 + 24, 1, 29 );
setRotateKey( spep_5 + 26, 1, 29.1 );
setRotateKey( spep_5 + 28, 1, 29.2 );
setRotateKey( spep_5 + 30, 1, 29.3 );
setRotateKey( spep_5 + 32, 1, 29.3 );
setRotateKey( spep_5 + 34, 1, 29.4 );
setRotateKey( spep_5 + 36, 1, 29.5 );
setRotateKey( spep_5 + 38, 1, 29.5 );
setRotateKey( spep_5 + 40, 1, 29.6 );
setRotateKey( spep_5 + 42, 1, 29.7 );
setRotateKey( spep_5 + 44, 1, 29.7 );
setRotateKey( spep_5 + 46, 1, 29.8 );
setRotateKey( spep_5 + 50, 1, 29.8 );
setRotateKey( spep_5 + 52, 1, 29.9 );
setRotateKey( spep_5 + 58, 1, 29.9 );
setRotateKey( spep_5 + 60, 1, 30 );
setRotateKey( spep_5 + 178, 1, 30 );

--***気弾背景***
semaruBG = entryEffect(  spep_5,  SP_09,  0x80,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_5,  semaruBG,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  semaruBG,  1.0,  1.0);
setEffMoveKey(  spep_5,  semaruBG,  0,  0);
setEffMoveKey(  spep_5+180,  semaruBG,  0,  0);
setEffRotateKey(  spep_5,  semaruBG,  0);
setEffRotateKey(  spep_5+180,  semaruBG,  0);
setEffAlphaKey(  spep_5,  semaruBG,  255);
setEffAlphaKey(  spep_5+180,  semaruBG,  255);
setEffAlphaKey(  spep_5,  semaruBG,  0);
setEffAlphaKey(  spep_5+180,  semaruBG,  0);

playSe(  spep_5,  1018);  
playSe(  spep_5 + 60,  1023);
setSeVolume( spep_5 + 60, 1023, 70 );
playSe(  spep_5 + 70,  1023);
setSeVolume( spep_5 + 70, 1023, 70 );
playSe(  spep_5 + 80,  1023);
setSeVolume( spep_5 + 80, 1023, 70 );
playSe(  spep_5 + 90,  1023);
setSeVolume( spep_5 + 90, 1023, 70 );
playSe(  spep_5 + 100,  1023);
setSeVolume( spep_5 + 100, 1023, 70 );

entryFadeBg( spep_5,  0,  180,  0,  0,  0,  0,  255);  --黒背景

-- ダメージ表示
dealDamage(spep_5+68);
endPhase(spep_5+170);

else
-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 突進(120F)
------------------------------------------------------
spep_0 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_0, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffShake(  spep_0,  shuchusen1,  120,  10);
setEffScaleKey(  spep_0,  shuchusen1,  1.36,  1.68);
setEffScaleKey(  spep_0+120,  shuchusen1,  1.36,  1.68);
setEffMoveKey(  spep_0,  shuchusen1,  0,  0);
setEffMoveKey(  spep_0+120,  shuchusen1,  0,  0);
setEffRotateKey(  spep_0,  shuchusen1,  0);
setEffRotateKey(  spep_0+120,  shuchusen1,  0);
setEffAlphaKey(  spep_0,  shuchusen1,  255);
setEffAlphaKey(  spep_0+120,  shuchusen1,  255);


--***突進***
tosshin = entryEffect(  spep_0,  SP_01,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_0,  tosshin,  -1.0,  1.0);
setEffScaleKey(  spep_0+120,  tosshin,  -1.0,  1.0);
setEffMoveKey(  spep_0,  tosshin,  0,  0);
setEffMoveKey(  spep_0+120,  tosshin,  0,  0);
setEffRotateKey(  spep_0,  tosshin,  0);
setEffRotateKey(  spep_0+120,  tosshin,  0);
setEffAlphaKey(  spep_0,  tosshin,  255);
setEffAlphaKey(  spep_0+120,  tosshin,  255);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+4 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);


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


--***カットイン***
--speff = entryEffect(  spep_0+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_0+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0+22, 190006, 68, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_0 + 22, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 255 );
setEffAlphaKey( spep_0 + 81, ctgogo, 255 );
setEffAlphaKey( spep_0 + 82, ctgogo, 191 );
setEffAlphaKey( spep_0 + 86, ctgogo, 128 );
setEffAlphaKey( spep_0 + 88, ctgogo, 64 );
setEffAlphaKey( spep_0 + 90, ctgogo, 0 );

setEffRotateKey(  spep_0+22,  ctgogo,  0);
setEffRotateKey(  spep_0+90,  ctgogo,  0);

setEffScaleKey(  spep_0+22,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0+86,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0+90,  ctgogo, -1.07, 1.07 );

setEffMoveKey(  spep_0+22,  ctgogo,  0,  530);
setEffMoveKey(  spep_0+90,  ctgogo,  0,  530);

entryFadeBg( spep_0,  0,  120,  0,  0,  0,  0,  255);  --黒背景

--***SE***
playSe(  spep_0,  9);  --ダッシュ音
playSe(  spep_0+22,  SE_04);  --カットイン

------------------------------------------------------
-- 格闘(208F)
------------------------------------------------------
spep_1 = spep_0 +118;

--***集中線***
shuchusen2 = entryEffectLife( spep_1+5, 906, 203, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffShake(  spep_1+5,  shuchusen2,  198,  10);
setEffScaleKey(  spep_1+5,  shuchusen2,  1.61,  1.63);
setEffScaleKey(  spep_1+208,  shuchusen2,  1.61,  1.63);
setEffMoveKey(  spep_1+5,  shuchusen2,  0,  0);
setEffMoveKey(  spep_1+208,  shuchusen2,  0,  0);
setEffRotateKey(  spep_1+5,  shuchusen2,  0);
setEffRotateKey(  spep_1+208,  shuchusen2,  0);
setEffAlphaKey(  spep_1+5,  shuchusen2,  255);
setEffAlphaKey(  spep_1+208,  shuchusen2,  255);


--***格闘前面***
kakutou = entryEffect(  spep_1,  SP_02r,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_1,  kakutou,  1.0,  1.0);
setEffScaleKey(  spep_1+208,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_1,  kakutou,  0,  0);
setEffMoveKey(  spep_1+208,  kakutou,  0,  0);
setEffRotateKey(  spep_1,  kakutou,  0);
setEffRotateKey(  spep_1+208,  kakutou,  0);
setEffAlphaKey(  spep_1,  kakutou,  255);
setEffAlphaKey(  spep_1+208,  kakutou,  255);
setEffAlphaKey(  spep_1,  kakutou,  0);
setEffAlphaKey(  spep_1+208,  kakutou,  0);

a = 3
--***敵の動き***
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 206, 1, 0 );
changeAnime( spep_1 + 0, 1, 111 );
changeAnime( spep_1 + 1, 1, 111 );
changeAnime( spep_1 + 2, 1, 111 );
changeAnime( spep_1 + 3, 1, 111 );
changeAnime( spep_1 + 4, 1, 111 );
changeAnime( spep_1 + 5, 1, 111 );
changeAnime( spep_1 + 6, 1, 111 );
changeAnime( spep_1 + 7, 1, 111 );
changeAnime( spep_1 - a + 10, 1, 108 );
changeAnime( spep_1 - a + 20, 1, 106 );
changeAnime( spep_1 - a + 38, 1, 108 );
changeAnime( spep_1 - a + 44, 1, 106 );
changeAnime( spep_1 - a + 66, 1, 108 );
changeAnime( spep_1 - a + 84, 1, 106 );
changeAnime( spep_1 - a + 106, 1, 108 );
changeAnime( spep_1 - a + 116, 1, 106 );
changeAnime( spep_1 - a + 148, 1, 108 );
changeAnime( spep_1 - a + 202, 1, 106 );

setMoveKey( spep_1 + 0, 1, 230, -32.5 , 0 );
setMoveKey( spep_1 - a + 2, 1, 172.7, -30.1 , 0 );
setMoveKey( spep_1 - a + 4, 1, 117.3, -26.7 , 0 );
setMoveKey( spep_1 - a + 6, 1, 64, -22.5 , 0 );
setMoveKey( spep_1 - a + 9, 1, 12.6, -17.5 , 0 );
setMoveKey( spep_1 - a + 10, 1, 126.2, 3.1 , 0 );
setMoveKey( spep_1 - a + 12, 1, 122, 4.7 , 0 );
setMoveKey( spep_1 - a + 14, 1, 96.7, 3.5 , 0 );
setMoveKey( spep_1 - a + 16, 1, 94, 2 , 0 );
setMoveKey( spep_1 - a + 19, 1, 98.8, -12 , 0 );
setMoveKey( spep_1 - a + 20, 1, 85.5, 15.5 , 0 );
setMoveKey( spep_1 - a + 22, 1, 100, -10.6 , 0 );
setMoveKey( spep_1 - a + 24, 1, 91.2, 13.9 , 0 );
setMoveKey( spep_1 - a + 26, 1, 70, -12.3 , 0 );
setMoveKey( spep_1 - a + 28, 1, 72.6, 7.3 , 0 );
setMoveKey( spep_1 - a + 30, 1, 65.3, -6.9 , 0 );
setMoveKey( spep_1 - a + 32, 1, 51.9, 5.8 , 0 );
setMoveKey( spep_1 - a + 34, 1, 53.3, -3.2 , 0 );
setMoveKey( spep_1 - a + 37, 1, 51.5, 5.5 , 0 );
setMoveKey( spep_1 - a + 38, 1, 160.2, 0.8 , 0 );
setMoveKey( spep_1 - a + 40, 1, 180.7, 32.6 , 0 );
setMoveKey( spep_1 - a + 43, 1, 159.1, 38.9 , 0 );
setMoveKey( spep_1 - a + 44, 1, 184.4, 68.3 , 0 );
setMoveKey( spep_1 - a + 46, 1, 178.5, 66.9 , 0 );
setMoveKey( spep_1 - a + 48, 1, 148.2, 51.7 , 0 );
setMoveKey( spep_1 - a + 50, 1, 154, 59.6 , 0 );
setMoveKey( spep_1 - a + 52, 1, 159.5, 55.9 , 0 );
setMoveKey( spep_1 - a + 54, 1, 127.8, 49.7 , 0 );
setMoveKey( spep_1 - a + 56, 1, 133.9, 48.6 , 0 );
setMoveKey( spep_1 - a + 58, 1, 120.8, 49.4 , 0 );
setMoveKey( spep_1 - a + 60, 1, 120.5, 47.7 , 0 );
setMoveKey( spep_1 - a + 62, 1, 112.4, 47.6 , 0 );
setMoveKey( spep_1 - a + 65, 1, 111.7, 46.5 , 0 );
setMoveKey( spep_1 - a + 66, 1, 171.3, -35.8 , 0 );
setMoveKey( spep_1 - a + 68, 1, 166.7, -37.3 , 0 );
setMoveKey( spep_1 - a + 70, 1, 143.2, -22.7 , 0 );
setMoveKey( spep_1 - a + 72, 1, 153.3, -21.9 , 0 );
setMoveKey( spep_1 - a + 74, 1, 156.6, -18.3 , 0 );
setMoveKey( spep_1 - a + 76, 1, 164.5, -12.4 , 0 );
setMoveKey( spep_1 - a + 78, 1, 162, -12.4 , 0 );
setMoveKey( spep_1 - a + 80, 1, 168.2, -6 , 0 );
setMoveKey( spep_1 - a + 83, 1, 163.6, -7.1 , 0 );
setMoveKey( spep_1 - a + 84, 1, 141.7, 51.2 , 0 );
setMoveKey( spep_1 - a + 86, 1, 140.3, 31.1 , 0 );
setMoveKey( spep_1 - a + 88, 1, 116, 15.4 , 0 );
setMoveKey( spep_1 - a + 90, 1, 114.5, 7 , 0 );
setMoveKey( spep_1 - a + 92, 1, 114.1, 1.4 , 0 );
setMoveKey( spep_1 - a + 94, 1, 110.2, -4.1 , 0 );
setMoveKey( spep_1 - a + 96, 1, 108.4, -7 , 0 );
setMoveKey( spep_1 - a + 98, 1, 103.3, -9.4 , 0 );
setMoveKey( spep_1 - a + 100, 1, 100.3, -12.1 , 0 );
setMoveKey( spep_1 - a + 102, 1, 94.2, -13 , 0 );
setMoveKey( spep_1 - a + 105, 1, 90.4, -14.2 , 0 );
setMoveKey( spep_1 - a + 106, 1, 127.9, -42.6 , 0 );
setMoveKey( spep_1 - a + 108, 1, 130.6, -50 , 0 );
setMoveKey( spep_1 - a + 110, 1, 105.3, -45.9 , 0 );
setMoveKey( spep_1 - a + 112, 1, 102.8, -47 , 0 );
setMoveKey( spep_1 - a + 115, 1, 98.3, -48.3 , 0 );
setMoveKey( spep_1 - a + 116, 1, 98.5, -34.5 , 0 );
setMoveKey( spep_1 - a + 118, 1, 110, -34.8 , 0 );
setMoveKey( spep_1 - a + 120, 1, 91, -29.2 , 0 );
setMoveKey( spep_1 - a + 122, 1, 88.1, -28.8 , 0 );
setMoveKey( spep_1 - a + 124, 1, 94.9, -20.3 , 0 );
setMoveKey( spep_1 - a + 126, 1, 119.5, 8.3 , 0 );
setMoveKey( spep_1 - a + 128, 1, 119.1, 23 , 0 );
setMoveKey( spep_1 - a + 130, 1, 95.4, 27.4 , 0 );
setMoveKey( spep_1 - a + 132, 1, 93, 34.1 , 0 );
setMoveKey( spep_1 - a + 134, 1, 89.4, 38.5 , 0 );
setMoveKey( spep_1 - a + 136, 1, 85.5, 42.9 , 0 );
setMoveKey( spep_1 - a + 138, 1, 81.7, 45.7 , 0 );
setMoveKey( spep_1 - a + 140, 1, 76.9, 47.9 , 0 );
setMoveKey( spep_1 - a + 142, 1, 72.7, 49.7 , 0 );
setMoveKey( spep_1 - a + 144, 1, 67.5, 51 , 0 );
setMoveKey( spep_1 - a + 147, 1, 63, 51.6 , 0 );
setMoveKey( spep_1 - a + 148, 1, 128.9, 34 , 0 );
setMoveKey( spep_1 - a + 150, 1, 135.7, 23.1 , 0 );
setMoveKey( spep_1 - a + 152, 1, 113, 14.3 , 0 );
setMoveKey( spep_1 - a + 154, 1, 111.7, 11.1 , 0 );
setMoveKey( spep_1 - a + 156, 1, 108.7, 9.7 , 0 );
setMoveKey( spep_1 - a + 158, 1, 104.4, 8.9 , 0 );
setMoveKey( spep_1 - a + 160, 1, 102.4, 7.5 , 0 );
setMoveKey( spep_1 - a + 162, 1, 100.8, 5.7 , 0 );
setMoveKey( spep_1 - a + 164, 1, 99.1, 4.2 , 0 );
setMoveKey( spep_1 - a + 166, 1, 97.4, 2.6 , 0 );
setMoveKey( spep_1 - a + 168, 1, 105.9, 1.3 , 0 );
setMoveKey( spep_1 - a + 170, 1, 119.8, -0.4 , 0 );
setMoveKey( spep_1 - a + 172, 1, 134.7, -2 , 0 );
setMoveKey( spep_1 - a + 174, 1, 150.3, -3.7 , 0 );
setMoveKey( spep_1 - a + 176, 1, 166.6, -5.5 , 0 );
setMoveKey( spep_1 - a + 178, 1, 172.6, -6.9 , 0 );
setMoveKey( spep_1 - a + 180, 1, 178.9, -8.7 , 0 );
setMoveKey( spep_1 - a + 182, 1, 184.9, -9.8 , 0 );
setMoveKey( spep_1 - a + 184, 1, 191.2, -11 , 0 );
setMoveKey( spep_1 - a + 186, 1, 197.5, -12.2 , 0 );
setMoveKey( spep_1 - a + 188, 1, 203.9, -13 , 0 );
setMoveKey( spep_1 - a + 190, 1, 210.7, -13.7 , 0 );
setMoveKey( spep_1 - a + 192, 1, 217.2, -14.1 , 0 );
setMoveKey( spep_1 - a + 194, 1, 223.7, -14.5 , 0 );
setMoveKey( spep_1 - a + 196, 1, 230.3, -14.6 , 0 );
setMoveKey( spep_1 - a + 198, 1, 242.8, -17.1 , 0 );
setMoveKey( spep_1 - a + 201, 1, 264.7, -27.7 , 0 );
setMoveKey( spep_1 - a + 202, 1, 318.9, 54.6 , 0 );
setMoveKey( spep_1 - a + 204, 1, 524.1, 24 , 0 );
setMoveKey( spep_1 + 206, 1, 597.2, -29.5 , 0 );


setScaleKey( spep_1 + 0, 1, 1.16, 1.16 );
setScaleKey( spep_1 - a + 9, 1, 1.16, 1.16 );
setScaleKey( spep_1 - a + 10, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 12, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 14, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 20, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 22, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 24, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 26, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 28, 1, 1.3, 1.3 );
setScaleKey( spep_1 - a + 37, 1, 1.3, 1.3 );
setScaleKey( spep_1 - a + 38, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 40, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 43, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 44, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 46, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 48, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 50, 1, 1.44, 1.44 );
setScaleKey( spep_1 - a + 52, 1, 1.44, 1.44 );
setScaleKey( spep_1 - a + 54, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 65, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 66, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 68, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 70, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 83, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 84, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 86, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 88, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 105, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 106, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 108, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 110, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 115, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 116, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 118, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 120, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 124, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 126, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 128, 1, 1.57, 1.57 );
setScaleKey( spep_1 - a + 130, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 147, 1, 1.31, 1.31 );
setScaleKey( spep_1 - a + 148, 1, 1.56, 1.56 );
setScaleKey( spep_1 - a + 150, 1, 1.56, 1.56 );
setScaleKey( spep_1 - a + 152, 1, 1.3, 1.3 );
setScaleKey( spep_1 - a + 166, 1, 1.3, 1.3 );
setScaleKey( spep_1 - a + 168, 1, 1.43, 1.43 );
setScaleKey( spep_1 - a + 170, 1, 1.56, 1.56 );
setScaleKey( spep_1 - a + 172, 1, 1.68, 1.68 );
setScaleKey( spep_1 - a + 174, 1, 1.81, 1.81 );
setScaleKey( spep_1 - a + 176, 1, 1.94, 1.94 );
setScaleKey( spep_1 - a + 178, 1, 1.96, 1.96 );
setScaleKey( spep_1 - a + 180, 1, 1.97, 1.97 );
setScaleKey( spep_1 - a + 182, 1, 1.98, 1.98 );
setScaleKey( spep_1 - a + 184, 1, 2, 2 );
setScaleKey( spep_1 - a + 186, 1, 2.01, 2.01 );
setScaleKey( spep_1 - a + 188, 1, 2.02, 2.02 );
setScaleKey( spep_1 - a + 190, 1, 2.02, 2.02 );
setScaleKey( spep_1 - a + 192, 1, 2.03, 2.03 );
setScaleKey( spep_1 - a + 194, 1, 2.05, 2.05 );
setScaleKey( spep_1 - a + 196, 1, 2.06, 2.06 );
setScaleKey( spep_1 - a + 198, 1, 2.07, 2.07 );
setScaleKey( spep_1 - a + 201, 1, 2.14, 2.14 );
setScaleKey( spep_1 - a + 202, 1, 2.22, 2.22 );
setScaleKey( spep_1 - a + 204, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 206, 1, 2.35, 2.35 );

setRotateKey( spep_1 + 0, 1, 14.8 );
setRotateKey( spep_1 - a + 9, 1, 14.8 );
setRotateKey( spep_1 - a + 10, 1, 16.8 );
setRotateKey( spep_1 - a + 19, 1, 16.8 );
setRotateKey( spep_1 - a + 20, 1, -25.9 );
setRotateKey( spep_1 - a + 24, 1, -25.9 );
setRotateKey( spep_1 - a + 26, 1, -25.8 );
setRotateKey( spep_1 - a + 37, 1, -25.8 );
setRotateKey( spep_1 - a + 38, 1, -8.9 );
setRotateKey( spep_1 - a + 40, 1, -11.3 );
setRotateKey( spep_1 - a + 43, 1, -12.8 );
setRotateKey( spep_1 - a + 44, 1, -23.5 );
setRotateKey( spep_1 - a + 46, 1, -23.5 );
setRotateKey( spep_1 - a + 48, 1, -23.3 );
setRotateKey( spep_1 - a + 50, 1, -23.1 );
setRotateKey( spep_1 - a + 52, 1, -23.1 );
setRotateKey( spep_1 - a + 54, 1, -23 );
setRotateKey( spep_1 - a + 56, 1, -22.9 );
setRotateKey( spep_1 - a + 60, 1, -22.9 );
setRotateKey( spep_1 - a + 62, 1, -22.8 );
setRotateKey( spep_1 - a + 65, 1, -22.8 );
setRotateKey( spep_1 - a + 66, 1, -9.5 );
setRotateKey( spep_1 - a + 68, 1, -9.5 );
setRotateKey( spep_1 - a + 70, 1, -8 );
setRotateKey( spep_1 - a + 72, 1, -6.6 );
setRotateKey( spep_1 - a + 74, 1, -5.3 );
setRotateKey( spep_1 - a + 76, 1, -4.2 );
setRotateKey( spep_1 - a + 78, 1, -3.2 );
setRotateKey( spep_1 - a + 80, 1, -2.4 );
setRotateKey( spep_1 - a + 83, 1, -1.7 );
setRotateKey( spep_1 - a + 84, 1, -39.1 );
setRotateKey( spep_1 - a + 86, 1, -36.9 );
setRotateKey( spep_1 - a + 88, 1, -35.4 );
setRotateKey( spep_1 - a + 90, 1, -34.2 );
setRotateKey( spep_1 - a + 92, 1, -33.3 );
setRotateKey( spep_1 - a + 94, 1, -32.6 );
setRotateKey( spep_1 - a + 96, 1, -32.1 );
setRotateKey( spep_1 - a + 98, 1, -31.7 );
setRotateKey( spep_1 - a + 100, 1, -31.4 );
setRotateKey( spep_1 - a + 102, 1, -31.2 );
setRotateKey( spep_1 - a + 105, 1, -31.1 );
setRotateKey( spep_1 - a + 106, 1, 9.6 );
setRotateKey( spep_1 - a + 108, 1, 10.9 );
setRotateKey( spep_1 - a + 110, 1, 11.6 );
setRotateKey( spep_1 - a + 112, 1, 11.9 );
setRotateKey( spep_1 - a + 115, 1, 12.1 );
setRotateKey( spep_1 - a + 116, 1, -17.5 );
setRotateKey( spep_1 - a + 118, 1, -20.4 );
setRotateKey( spep_1 - a + 120, 1, -21.6 );
setRotateKey( spep_1 - a + 122, 1, -22 );
setRotateKey( spep_1 - a + 124, 1, -10.1 );
setRotateKey( spep_1 - a + 147, 1, -10.1 );
setRotateKey( spep_1 - a + 148, 1, 33.5 );
setRotateKey( spep_1 - a + 150, 1, 32.9 );
setRotateKey( spep_1 - a + 152, 1, 32.5 );
setRotateKey( spep_1 - a + 154, 1, 32.3 );
setRotateKey( spep_1 - a + 156, 1, 32.2 );
setRotateKey( spep_1 - a + 158, 1, 32.2 );
setRotateKey( spep_1 - a + 160, 1, 32.3 );
setRotateKey( spep_1 - a + 162, 1, 32.4 );
setRotateKey( spep_1 - a + 164, 1, 32.5 );
setRotateKey( spep_1 - a + 166, 1, 32.6 );
setRotateKey( spep_1 - a + 168, 1, 32.7 );
setRotateKey( spep_1 - a + 170, 1, 32.8 );
setRotateKey( spep_1 - a + 172, 1, 32.9 );
setRotateKey( spep_1 - a + 174, 1, 33 );
setRotateKey( spep_1 - a + 176, 1, 33.1 );
setRotateKey( spep_1 - a + 178, 1, 33.2 );
setRotateKey( spep_1 - a + 180, 1, 33.3 );
setRotateKey( spep_1 - a + 182, 1, 33.4 );
setRotateKey( spep_1 - a + 184, 1, 33.5 );
setRotateKey( spep_1 - a + 186, 1, 33.6 );
setRotateKey( spep_1 - a + 188, 1, 33.7 );
setRotateKey( spep_1 - a + 190, 1, 33.8 );
setRotateKey( spep_1 - a + 192, 1, 33.9 );
setRotateKey( spep_1 - a + 194, 1, 34 );
setRotateKey( spep_1 - a + 196, 1, 34.1 );
setRotateKey( spep_1 - a + 198, 1, 34.3 );
setRotateKey( spep_1 - a + 201, 1, 34.9 );
setRotateKey( spep_1 - a + 202, 1, -16.3 );
setRotateKey( spep_1 - a + 204, 1, -7.2 );
setRotateKey( spep_1 + 206, 1, -4.2 );


--***格闘背景***
kakutouBG = entryEffect(  spep_1,  SP_03,  0x80,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_1,  kakutouBG,  1.0,  1.0);
setEffScaleKey(  spep_1+210,  kakutouBG,  1.0,  1.0);
setEffMoveKey(  spep_1,  kakutouBG,  0,  0);
setEffMoveKey(  spep_1+210,  kakutouBG,  0,  0);
setEffRotateKey(  spep_1,  kakutouBG,  0);
setEffRotateKey(  spep_1+210,  kakutouBG,  0);
setEffAlphaKey(  spep_1,  kakutouBG,  255);
setEffAlphaKey(  spep_1+210,  kakutouBG,  255);


--***流線***
ryusen = entryEffectLife( spep_1, 914, 208, 0x80,  -1, 0,  0,  0);   -- 流線

setEffMoveKey(  spep_1,  ryusen,  0,  0,  0);
setEffMoveKey(  spep_1+208,  ryusen,  0,  0,  0);
setEffScaleKey( spep_1,  ryusen,  2.14,  1.22);
setEffScaleKey(  spep_1+208,  ryusen,  2.14,  1.22);
setEffRotateKey(  spep_1,  ryusen,  12);
setEffRotateKey( spep_1+208,  ryusen,  12);
setEffAlphaKey(  spep_1,  ryusen,  0);
setEffAlphaKey( spep_1+1,  ryusen,  0);
setEffAlphaKey( spep_1+2,  ryusen,  46);
setEffAlphaKey( spep_1+208,  ryusen,  46);


entryFadeBg( spep_1,  0,  208,  0,  0,  0,  0,  255);  --黒背景


--***書き文字***
ct_zan1 = entryEffectLife( spep_1 -a + 10,  10010, 12, 0x100, -1, 0, 98.4, 234 );  --ザン

setEffShake(  spep_1 -a +10,  ct_zan1,  12,  10);
setEffMoveKey( spep_1 -a + 10, ct_zan1, 98.4, 234 , 0 );
setEffMoveKey( spep_1 -a + 22, ct_zan1, 98.4, 234 , 0 );
setEffScaleKey( spep_1 -a + 10, ct_zan1, 0.59, 0.59 );
setEffScaleKey( spep_1 -a + 12, ct_zan1, 1.05, 1.05 );
setEffScaleKey( spep_1 -a + 14, ct_zan1, 1.5, 1.5 );
setEffScaleKey( spep_1 -a + 22, ct_zan1, 1.5, 1.5 );
setEffRotateKey( spep_1 -a + 10, ct_zan1, 23.8 );
setEffRotateKey( spep_1 -a + 12, ct_zan1, 24 );
setEffRotateKey( spep_1 -a + 22, ct_zan1, 24 );
setEffAlphaKey( spep_1 -a + 10, ct_zan1, 255 );
setEffAlphaKey( spep_1 -a + 22, ct_zan1, 255 );

ct_zan2 = entryEffectLife( spep_1 -a + 22,  10010, 12, 0x100, -1, 0, -112.5, 194 );

setEffShake( spep_1 -a + 22,  ct_zan2,  12,  10);
setEffMoveKey( spep_1 -a + 22, ct_zan2, -112.5, 194 , 0 );
setEffMoveKey( spep_1 -a + 34, ct_zan2, -112.5, 194 , 0 );
setEffScaleKey( spep_1 -a + 22, ct_zan2, 0.59, 0.59 );
setEffScaleKey( spep_1 -a + 24, ct_zan2, 1.05, 1.05 );
setEffScaleKey( spep_1 -a + 26, ct_zan2, 1.5, 1.5 );
setEffScaleKey( spep_1 -a + 34, ct_zan2, 1.5, 1.5 );
setEffRotateKey( spep_1 -a + 22, ct_zan2, -27.8 );
setEffRotateKey( spep_1 -a + 34, ct_zan2, -27.8 );
setEffAlphaKey( spep_1 -a + 22, ct_zan2, 255 );
setEffAlphaKey( spep_1 -a + 34, ct_zan2, 255 );

ct_zazan = entryEffectLife( spep_1 -a + 38,  10009, 16, 0x100, -1, 0, 60.6, 251.3 );

setEffShake(  spep_1 -a +38,  ct_zazan,  16,  10);
setEffMoveKey( spep_1 -a + 38, ct_zazan, 60.6, 251.3 , 0 );
setEffMoveKey( spep_1 -a + 40, ct_zazan, 72.3, 288.4 , 0 );
setEffMoveKey( spep_1 -a + 42, ct_zazan, 84, 325.5 , 0 );
setEffMoveKey( spep_1 -a + 54, ct_zazan, 84, 325.5 , 0 );
setEffScaleKey( spep_1 -a + 38, ct_zazan, 0.59, 0.59 );
setEffScaleKey( spep_1 -a + 40, ct_zazan, 1.3, 1.3 );
setEffScaleKey( spep_1 -a + 42, ct_zazan, 2, 2 );
setEffScaleKey( spep_1 -a + 44, ct_zazan, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 46, ct_zazan, 1.8, 1.8 );
setEffScaleKey( spep_1 -a + 48, ct_zazan, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 50, ct_zazan, 2, 2 );
setEffScaleKey( spep_1 -a + 52, ct_zazan, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 54, ct_zazan, 1.8, 1.8 );
setEffRotateKey( spep_1 -a + 38, ct_zazan, 17.3 );
setEffRotateKey( spep_1 -a + 40, ct_zazan, 17.4 );
setEffRotateKey( spep_1 -a + 54, ct_zazan, 17.4 );
setEffAlphaKey( spep_1 -a + 38, ct_zazan, 255 );
setEffAlphaKey( spep_1 -a + 54, ct_zazan, 255 );

ct_zan3 = entryEffectLife( spep_1 -a + 66,  10010, 12, 0x100, -1, 0, -134, 215.5 );

setEffShake(  spep_1 -a +66,  ct_zan3,  12,  10);
setEffMoveKey( spep_1 -a + 66, ct_zan3, -134, 215.5 , 0 );
setEffMoveKey( spep_1 -a + 78, ct_zan3, -134, 215.5 , 0 );
setEffScaleKey( spep_1 -a + 66, ct_zan3, 0.59, 0.59 );
setEffScaleKey( spep_1 -a + 68, ct_zan3, 1.05, 1.05 );
setEffScaleKey( spep_1 -a + 70, ct_zan3, 1.5, 1.5 );
setEffScaleKey( spep_1 -a + 78, ct_zan3, 1.5, 1.5 );
setEffRotateKey( spep_1 -a + 66, ct_zan3, -27.8 );
setEffRotateKey( spep_1 -a + 78, ct_zan3, -27.8 );
setEffAlphaKey( spep_1 -a + 66, ct_zan3, 255 );
setEffAlphaKey( spep_1 -a + 78, ct_zan3, 255 );

ct_zan4 = entryEffectLife( spep_1 -a + 84,  10010, 12, 0x100, -1, 0, 119.9, 277 );

setEffShake(  spep_1 -a +84,  ct_zan4,  12,  10);
setEffMoveKey( spep_1 -a + 84, ct_zan4, 119.9, 277 , 0 );
setEffMoveKey( spep_1 -a + 96, ct_zan4, 119.9, 277 , 0 );
setEffScaleKey( spep_1 -a + 84, ct_zan4, 0.59, 0.59 );
setEffScaleKey( spep_1 -a + 86, ct_zan4, 1.05, 1.05 );
setEffScaleKey( spep_1 -a + 88, ct_zan4, 1.5, 1.5 );
setEffScaleKey( spep_1 -a + 96, ct_zan4, 1.5, 1.5 );
setEffRotateKey( spep_1 -a + 84, ct_zan4, 23.8 );
setEffRotateKey( spep_1 -a + 86, ct_zan4, 24 );
setEffRotateKey( spep_1 -a + 96, ct_zan4, 24 );
setEffAlphaKey( spep_1 -a + 84, ct_zan4, 255 );
setEffAlphaKey( spep_1 -a + 96, ct_zan4, 255 );

ct_zazan2 = entryEffectLife( spep_1 -a + 102,  10009, 32, 0x100, -1, 0, 157.4, 221 );

setEffShake(  spep_1 -a +102,  ct_zazan2,  32,  10);
setEffMoveKey( spep_1 -a + 102, ct_zazan2, 157.4, 221 , 0 );
setEffMoveKey( spep_1 -a + 104, ct_zazan2, 159.4, 234 , 0 );
setEffMoveKey( spep_1 -a + 106, ct_zazan2, 161.3, 246.9 , 0 );
setEffMoveKey( spep_1 -a + 134, ct_zazan2, 161.3, 246.9 , 0 );
setEffScaleKey( spep_1 -a + 102, ct_zazan2, 0.59, 0.59 );
setEffScaleKey( spep_1 -a + 104, ct_zazan2, 1.3, 1.3 );
setEffScaleKey( spep_1 -a + 106, ct_zazan2, 2, 2 );
setEffScaleKey( spep_1 -a + 108, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 110, ct_zazan2, 1.8, 1.8 );
setEffScaleKey( spep_1 -a + 112, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 114, ct_zazan2, 2, 2 );
setEffScaleKey( spep_1 -a + 116, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 118, ct_zazan2, 1.8, 1.8 );
setEffScaleKey( spep_1 -a + 120, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 122, ct_zazan2, 2, 2 );
setEffScaleKey( spep_1 -a + 124, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 126, ct_zazan2, 1.8, 1.8 );
setEffScaleKey( spep_1 -a + 128, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 130, ct_zazan2, 2, 2 );
setEffScaleKey( spep_1 -a + 132, ct_zazan2, 1.9, 1.9 );
setEffScaleKey( spep_1 -a + 134, ct_zazan2, 1.8, 1.8 );
setEffRotateKey( spep_1 -a + 102, ct_zazan2, 30 );
setEffRotateKey( spep_1 -a + 134, ct_zazan2, 30 );
setEffAlphaKey( spep_1 -a + 102, ct_zazan2, 255 );
setEffAlphaKey( spep_1 -a + 134, ct_zazan2, 255 );

--***SE***
playSe(  spep_1 + 12,  1032);
playSe(  spep_1 + 14,  1031);
playSe(  spep_1 + 46,  1032);
playSe(  spep_1 + 70,  1032);
playSe(  spep_1 + 90,  1032);
playSe(  spep_1 + 114,  1031);
--playSe(  spep_1 + 116,  1032);
--playSe(  spep_1 + 118,  1031);
playSe(  spep_1 + 150,  1032);

entryFade(  spep_1+202,  2,  4,  0,  fcolor_r,  fcolor_g,  fcolor_b,  255);

------------------------------------------------------
-- 払い落とす(40F)
------------------------------------------------------
spep_2 = spep_1 + 208;

--***敵の動き***
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 40, 1, 0 );
changeAnime( spep_2 + 0, 1, 107 );

setShakeChara(  spep_2,  1,  40,  10);  --揺れ
setMoveKey( spep_2 + 0, 1, -109.4, 148.9 , 0 );
setMoveKey( spep_2 + 2, 1, -23.6, -18.7 , 0 );
setMoveKey( spep_2 + 4, 1, 8.9, -79.7 , 0 );
setMoveKey( spep_2 + 6, 1, 180.6, -274.8 , 0 );
setMoveKey( spep_2 + 8, 1, 340.4, -452.9 , 0 );
setMoveKey( spep_2 + 10, 1, 486, -614 , 0 );
setMoveKey( spep_2 + 12, 1, 629.1, -769.9 , 0 );
setMoveKey( spep_2 + 14, 1, 757.9, -909.8 , 0 );
setMoveKey( spep_2 + 16, 1, 875.7, -1037.2 , 0 );
setMoveKey( spep_2 + 18, 1, 989.9, -1159.6 , 0 );
setMoveKey( spep_2 + 20, 1, 1095.3, -1272.2 , 0 );
setMoveKey( spep_2 + 22, 1, 1197.3, -1380.4 , 0 );
setMoveKey( spep_2 + 24, 1, 1288, -1476.4 , 0 );
setMoveKey( spep_2 + 26, 1, 1376, -1569.1 , 0 );
setMoveKey( spep_2 + 28, 1, 1458.1, -1655.1 , 0 );
setMoveKey( spep_2 + 30, 1, 1536.4, -1737.6 , 0 );
setMoveKey( spep_2 + 32, 1, 1612.1, -1817.9 , 0 );
setMoveKey( spep_2 + 34, 1, 1884.4, -2103.8 , 0 );
setMoveKey( spep_2 + 36, 1, 1942.2, -2163.6 , 0 );
setMoveKey( spep_2 + 38, 1, 1995.7, -2218.7 , 0 );
setMoveKey( spep_2 + 40, 1, 2047.1, -2271.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1, 1 );
setScaleKey( spep_2 + 2, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 4, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 6, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 8, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 10, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 12, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 14, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 16, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 18, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 20, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 22, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 24, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 26, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 28, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 30, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 32, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 34, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 36, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 38, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 40, 1, 2, 2 );

setRotateKey( spep_2 + 0, 1, 10.7 );
setRotateKey( spep_2 + 2, 1, 19.5 );
setRotateKey( spep_2 + 4, 1, 20.6 );
setRotateKey( spep_2 + 6, 1, 21.3 );
setRotateKey( spep_2 + 8, 1, 21.9 );
setRotateKey( spep_2 + 10, 1, 22.5 );
setRotateKey( spep_2 + 12, 1, 23 );
setRotateKey( spep_2 + 14, 1, 23.4 );
setRotateKey( spep_2 + 16, 1, 23.9 );
setRotateKey( spep_2 + 18, 1, 24.3 );
setRotateKey( spep_2 + 20, 1, 24.6 );
setRotateKey( spep_2 + 22, 1, 25 );
setRotateKey( spep_2 + 24, 1, 25.3 );
setRotateKey( spep_2 + 26, 1, 25.6 );
setRotateKey( spep_2 + 28, 1, 26 );
setRotateKey( spep_2 + 30, 1, 26.2 );
setRotateKey( spep_2 + 32, 1, 26.5 );
setRotateKey( spep_2 + 34, 1, 27.6 );
setRotateKey( spep_2 + 36, 1, 27.8 );
setRotateKey( spep_2 + 38, 1, 28 );
setRotateKey( spep_2 + 40, 1, 28.2 );

--***書き文字***
ct_zan5 = entryEffectLife( spep_2 + 8,  10010, 28, 0x100, -1, 0, -206.3, 229.1 );  --ザンッ

setEffShake(  spep_2 + 8,  ct_zan5,  28,  10);  --揺れ
setEffMoveKey( spep_2 + 8, ct_zan5, -206.3, 229.1 , 0 );
setEffMoveKey( spep_2 + 10, ct_zan5, -190.3, 255.2 , 0 );
setEffMoveKey( spep_2 + 12, ct_zan5, -174.3, 281.1 , 0 );
setEffMoveKey( spep_2 + 14, ct_zan5, -158.2, 307 , 0 );
setEffMoveKey( spep_2 + 36, ct_zan5, -158.2, 307 , 0 );
setEffScaleKey( spep_2 + 8, ct_zan5, 0.5, 0.5 );
setEffScaleKey( spep_2 + 10, ct_zan5, 0.89, 0.89 );
setEffScaleKey( spep_2 + 12, ct_zan5, 1.28, 1.28 );
setEffScaleKey( spep_2 + 14, ct_zan5, 1.68, 1.68 );
setEffScaleKey( spep_2 + 36, ct_zan5, 1.68, 1.68 );
setEffRotateKey( spep_2 + 8, ct_zan5, -13.8 );
setEffRotateKey( spep_2 + 10, ct_zan5, -14 );
setEffRotateKey( spep_2 + 36, ct_zan5, -14 );
setEffAlphaKey( spep_2 + 8, ct_zan5, 255 );
setEffAlphaKey( spep_2 + 36, ct_zan5, 255 );

effect = entryEffect(  spep_2,  SP_08,  0x100,  -1,  0,  0,  0);  --effect

setEffMoveKey(  spep_2,  effect,  0,  0,  0);
setEffMoveKey(  spep_2+40,  effect,  0,  0,  0);
setEffScaleKey(  spep_2,  effect,  1.0,  1.0);
setEffScaleKey(  spep_2+40,  effect,  1.0,  1.0);
setEffRotateKey(  spep_2,  effect,  0);
setEffRotateKey(  spep_2+40,  effect,  0);
setEffAlphaKey(  spep_2,  effect,  255);
setEffAlphaKey(  spep_2+40,  effect,  255);

otosuBG = entryEffect(  spep_2,  SP_05,  0x80,  -1,  0,  0,  0);  --払い落とす

setEffMoveKey(  spep_2,  otosuBG,  0,  0,  0);
setEffMoveKey(  spep_2+40,  otosuBG,  0,  0,  0);
setEffScaleKey(  spep_2,  otosuBG,  1.0,  1.0);
setEffScaleKey(  spep_2+40,  otosuBG,  1.0,  1.0);
setEffRotateKey(  spep_2,  otosuBG,  0);
setEffRotateKey(  spep_2+40,  otosuBG,  0);
setEffAlphaKey(  spep_2,  otosuBG,  255);
setEffAlphaKey(  spep_2+40,  otosuBG,  255);

--[[ryusen2 = entryEffectLife( spep_2,  906,  40,  0x80,  -1, 0, -190,  350);

setEffMoveKey(  spep_2,  ryusen2,  -190,  350,  0);
setEffMoveKey(  spep_2+40,  ryusen2,  -190,  350,  0);
setEffScaleKey(  spep_2,  ryusen2,  2.0,  2.11);
setEffScaleKey(  spep_2+40,  ryusen2,  2.0, 2.11);
setEffRotateKey(  spep_2,  ryusen2, 30);
setEffRotateKey(  spep_2+40,  ryusen2, 30);
setEffAlphaKey(  spep_2,  ryusen2,  255);
setEffAlphaKey(  spep_2+40,  ryusen2,  255);]]

otosu = entryEffect(  spep_2,  SP_04r,  0x80,  -1,  0,  0,  0);  --払い落とす

setEffMoveKey(  spep_2,  otosu,  0,  0,  0);
setEffMoveKey(  spep_2+40,  otosu,  0,  0,  0);
setEffScaleKey(  spep_2,  otosu,  1.0,  1.0);
setEffScaleKey(  spep_2+40,  otosu,  1.0,  1.0);
setEffRotateKey(  spep_2,  otosu,  0);
setEffRotateKey(  spep_2+40,  otosu,  0);
setEffAlphaKey(  spep_2,  otosu,  255);
setEffAlphaKey(  spep_2+40,  otosu,  255);

entryFadeBg( spep_2,  0,  40,  0,  0,  0,  0,  255);  --黒背景

playSe(  spep_2,  1055);

------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_3 = spep_2 + 40;

--***フェードと背景***
entryFade( spep_3-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_3, SE_05);
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);

setEffShake(  spep_3,  shuchusen3,  90,  10);
setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

entryFade(  spep_3 + 80,  4,  10,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);

------------------------------------------------------
-- 気弾放つ(142F)
------------------------------------------------------
spep_4 = spep_3 + 90;

--***集中線***
shuchusen4 = entryEffectLife( spep_4+55, 906, 87, 0x100,  -1, 0,  0,  0);

setEffShake(  spep_4+55,  shuchusen4,  112,  10);
setEffMoveKey(  spep_4+55,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+142,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4+55,  shuchusen4,  1.1,  1.1);
setEffScaleKey(  spep_4+142,  shuchusen4,  1.1,  1.1);
setEffRotateKey(  spep_4+55,  shuchusen4,  0);
setEffRotateKey(  spep_4+142,  shuchusen4,  0);
setEffAlphaKey(  spep_4+55,  shuchusen4,  255);
setEffAlphaKey(  spep_4+142,  shuchusen4,  255);

--***書き文字***
ct_zudodo = entryEffectLife( spep_4 -a + 58,  10014, 84, 0x100, -1, 0, 49.2, 382.9 );  --ズドド

setEffShake(  spep_4 -a + 58,  ct_zudodo,  84,  20);  --揺れ
setEffMoveKey( spep_4 -a + 58, ct_zudodo, 49.2, 382.9 , 0 );
setEffMoveKey( spep_4 -a + 60, ct_zudodo, 58.8, 375.1 , 0 );
setEffMoveKey( spep_4 -a + 62, ct_zudodo, 84.2, 388.8 , 0 );
setEffMoveKey( spep_4 -a + 64, ct_zudodo, 101.7, 391.7 , 0 );
setEffMoveKey( spep_4 -a + 140, ct_zudodo, 101.7, 391.7 , 0 );
setEffMoveKey( spep_4 -a + 142, ct_zudodo, 89.4, 375 , 0 );
setEffScaleKey( spep_4 -a + 58, ct_zudodo, 1.07, 1.07 );
setEffScaleKey( spep_4 -a + 60, ct_zudodo, 1.49, 1.49 );
setEffScaleKey( spep_4 -a + 62, ct_zudodo, 1.91, 1.91 );
setEffScaleKey( spep_4 -a + 64, ct_zudodo, 2.32, 2.32 );
setEffScaleKey( spep_4 -a + 142, ct_zudodo, 2.32, 2.32 );
setEffRotateKey( spep_4 -a + 58, ct_zudodo, 0 );
setEffRotateKey( spep_4 -a + 142, ct_zudodo, 0 );
setEffAlphaKey( spep_4 -a + 58, ct_zudodo, 255 );
setEffAlphaKey( spep_4 -a + 141, ct_zudodo, 255 );
setEffAlphaKey( spep_4 -a + 142, ct_zudodo, 0 );

--***流線***
ryusen_top = entryEffectLife( spep_4 + 0,  914, 142, 0x100, -1, 0, 595.6, 3179.6 );

setEffMoveKey(  spep_4, ryusen_top, 595.6, 3179.6 );
setEffMoveKey(  spep_4 + 142, ryusen_top, 595.6, 3179.6 );
setEffScaleKey( spep_4 + 0, ryusen_top, 4.99, 1.49 );
setEffScaleKey( spep_4 + 142, ryusen_top, 4.99, 1.49 );
setEffRotateKey( spep_4 + 0, ryusen_top, -135.1 );
setEffRotateKey( spep_4 + 142, ryusen_top, -135.1 );
setEffAlphaKey( spep_4 + 0, ryusen_top, 153 );
setEffAlphaKey( spep_4 + 142, ryusen_top, 153 );

ryusen_under = entryEffectLife( spep_4 + 0,  914, 142, 0x100, -1, 0, -870.6, -1831 );

setEffMoveKey( spep_4 + 0,  ryusen_under, -870.6, -1831 );
setEffMoveKey( spep_4 + 142,  ryusen_under, -870.6, -1831 );
setEffScaleKey( spep_4 + 0, ryusen_under, 3, 1.5 );
setEffScaleKey( spep_4 + 142, ryusen_under, 3, 1.5 );
setEffRotateKey( spep_4 + 0, ryusen_under, -135 );
setEffRotateKey( spep_4 + 142, ryusen_under, -135 );
setEffAlphaKey( spep_4 + 0, ryusen_under, 153 );
setEffAlphaKey( spep_4 + 142, ryusen_under, 153 );


hanatsu = entryEffect(  spep_4,  SP_06r,  0x80,  -1,  0,  0,  0);  --気弾放つ

setEffMoveKey(  spep_4,  hanatsu,  0,  0,  0);
setEffMoveKey(  spep_4+142,  hanatsu,  0,  0,  0);
setEffScaleKey(  spep_4,  hanatsu,  1.0,  1.0);
setEffScaleKey(  spep_4+142,  hanatsu,  1.0,  1.0);
setEffRotateKey(  spep_4,  hanatsu,  0);
setEffRotateKey(  spep_4+142,  hanatsu,  0);
setEffAlphaKey(  spep_4,  hanatsu,  255);
setEffAlphaKey(  spep_4+142,  hanatsu,  255);


entryFadeBg( spep_4,  0,  142,  0,  0,  0,  0,  255);  --黒背景

--***音***
playSe(  spep_4 + 10,  1003);  --腕振り上げ
playSe(  spep_4 + 64,  1016);  --気弾
playSe(  spep_4 + 76,  1016);  --気弾
playSe(  spep_4 + 88,  1016);  --気弾
playSe(  spep_4 + 100,  1016);  --気弾
playSe(  spep_4 + 112,  1016);  --気弾
playSe(  spep_4 + 124,  1016);  --気弾
playSe(  spep_4 + 136,  1016);  --気弾

entryFade(  spep_4 + 138,  2,  4,  4,  fcolor_r, fcolor_g,  fcolor_b,  255);  --白フェード

------------------------------------------------------
-- 気弾迫る(180F)
------------------------------------------------------
spep_5 = spep_4 + 142;

--***気弾前面***
semaru = entryEffect(  spep_5,  SP_07,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_5,  semaru,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  semaru,  1.0,  1.0);
setEffMoveKey(  spep_5,  semaru,  0,  0);
setEffMoveKey(  spep_5+180,  semaru,  0,  0);
setEffRotateKey(  spep_5,  semaru,  0);
setEffRotateKey(  spep_5+180,  semaru,  0);
setEffAlphaKey(  spep_5,  semaru,  255);
setEffAlphaKey(  spep_5+180,  semaru,  255);
setEffAlphaKey(  spep_5,  semaru,  0);
setEffAlphaKey(  spep_5+180,  semaru,  0);

--***敵キャラ動き***
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5+178, 1,  0);  --消す
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -151.7, 312.1 , 0 );
setMoveKey( spep_5 + 2, 1, -101.2, 218.7 , 0 );
setMoveKey( spep_5 + 4, 1, -64.5, 174.3 , 0 );
setMoveKey( spep_5 + 6, 1, -46.8, 132.5 , 0 );
setMoveKey( spep_5 + 8, 1, -33.4, 113.4 , 0 );
setMoveKey( spep_5 + 10, 1, -11.5, 84.8 , 0 );
setMoveKey( spep_5 + 12, 1, -9.8, 64.2 , 0 );
setMoveKey( spep_5 + 14, 1, 7.2, 51.2 , 0 );
setMoveKey( spep_5 + 16, 1, 12, 30.7 , 0 );
setMoveKey( spep_5 + 18, 1, 23.3, 25.7 , 0 );
setMoveKey( spep_5 + 20, 1, 23.7, 10.6 , 0 );
setMoveKey( spep_5 + 22, 1, 36.4, 2.4 , 0 );
setMoveKey( spep_5 + 24, 1, 37, -7.9 , 0 );
setMoveKey( spep_5 + 26, 1, 47.8, -15 , 0 );
setMoveKey( spep_5 + 28, 1, 48.3, -28.7 , 0 );
setMoveKey( spep_5 + 30, 1, 50.7, -29.3 , 0 );
setMoveKey( spep_5 + 32, 1, 56.4, -40.7 , 0 );
setMoveKey( spep_5 + 34, 1, 60.2, -41.4 , 0 );
setMoveKey( spep_5 + 36, 1, 64.2, -51.6 , 0 );
setMoveKey( spep_5 + 38, 1, 64.8, -50.6 , 0 );
setMoveKey( spep_5 + 40, 1, 67.6, -59.4 , 0 );
setMoveKey( spep_5 + 42, 1, 73.5, -60.1 , 0 );
setMoveKey( spep_5 + 44, 1, 72.6, -67.8 , 0 );
setMoveKey( spep_5 + 46, 1, 73.1, -66.5 , 0 );
setMoveKey( spep_5 + 48, 1, 78.3, -71.1 , 0 );
setMoveKey( spep_5 + 50, 1, 71.8, -64.3 , 0 );
setMoveKey( spep_5 + 52, 1, 77.1, -81.1 , 0 );
setMoveKey( spep_5 + 54, 1, 80.9, -68.9 , 0 );
setMoveKey( spep_5 + 56, 1, 83.1, -85.8 , 0 );
setMoveKey( spep_5 + 58, 1, 80.1, -72.5 , 0 );
setMoveKey( spep_5 + 60, 1, 80.6, -85.9 , 0 );
setMoveKey( spep_5 + 62, 1, 86.5, -80.2 , 0 );
setMoveKey( spep_5 + 64, 1, 84, -78.8 , 0 );
setMoveKey( spep_5 + 66, 1, 78.9, -83.9 , 0 );
setMoveKey( spep_5 + 68, 1, 80.1, -75.5 , 0 );
setMoveKey( spep_5 + 70, 1, 93.8, -85.3 , 0 );
setMoveKey( spep_5 + 72, 1, 77.5, -72.9 , 0 );
setMoveKey( spep_5 + 74, 1, 85.6, -91.8 , 0 );
setMoveKey( spep_5 + 76, 1, 92.2, -76.2 , 0 );
setMoveKey( spep_5 + 78, 1, 76.9, -93.8 , 0 );
setMoveKey( spep_5 + 80, 1, 88.5, -70.6 , 0 );
setMoveKey( spep_5 + 82, 1, 77.5, -91 , 0 );
setMoveKey( spep_5 + 84, 1, 96, -82.1 , 0 );
setMoveKey( spep_5 + 86, 1, 76.9, -71.9 , 0 );
setMoveKey( spep_5 + 88, 1, 99.1, -95.6 , 0 );
setMoveKey( spep_5 + 90, 1, 74.9, -68.8 , 0 );
setMoveKey( spep_5 + 92, 1, 89.8, -98.2 , 0 );
setMoveKey( spep_5 + 94, 1, 89.9, -63 , 0 );
setMoveKey( spep_5 + 96, 1, 74.6, -101.2 , 0 );
setMoveKey( spep_5 + 98, 1, 97.8, -74 , 0 );
setMoveKey( spep_5 + 100, 1, 61.7, -75.3 , 0 );
setMoveKey( spep_5 + 102, 1, 94.3, -110.2 , 0 );
setMoveKey( spep_5 + 104, 1, 60.5, -77.4 , 0 );
setMoveKey( spep_5 + 106, 1, 111.8, -90.8 , 0 );
setMoveKey( spep_5 + 108, 1, 67.9, -81.5 , 0 );
setMoveKey( spep_5 + 110, 1, 111.8, -84.2 , 0 );
setMoveKey( spep_5 + 112, 1, 61.7, -104.8 , 0 );
setMoveKey( spep_5 + 114, 1, 84.7, -57.5 , 0 );
setMoveKey( spep_5 + 116, 1, 100.9, -97.5 , 0 );
setMoveKey( spep_5 + 118, 1, 102.1, -94 , 0 );
setMoveKey( spep_5 + 120, 1, 73.3, -68.8 , 0 );
setMoveKey( spep_5 + 122, 1, 83.5, -99.1 , 0 );
setMoveKey( spep_5 + 124, 1, 92.9, -58.4 , 0 );
setMoveKey( spep_5 + 126, 1, 76.5, -108.2 , 0 );
setMoveKey( spep_5 + 128, 1, 93.4, -66.9 , 0 );
setMoveKey( spep_5 + 130, 1, 70.5, -79.5 , 0 );
setMoveKey( spep_5 + 132, 1, 89.1, -111.9 , 0 );
setMoveKey( spep_5 + 134, 1, 63.9, -78.7 , 0 );
setMoveKey( spep_5 + 136, 1, 110.9, -95.2 , 0 );
setMoveKey( spep_5 + 138, 1, 70.9, -80.3 , 0 );
setMoveKey( spep_5 + 140, 1, 106.3, -82.9 , 0 );
setMoveKey( spep_5 + 142, 1, 64.1, -104.1 , 0 );
setMoveKey( spep_5 + 144, 1, 81.6, -55.4 , 0 );
setMoveKey( spep_5 + 146, 1, 105.2, -96.1 , 0 );
setMoveKey( spep_5 + 148, 1, 100.5, -97.5 , 0 );
setMoveKey( spep_5 + 150, 1, 70.5, -65.7 , 0 );
setMoveKey( spep_5 + 152, 1, 91.2, -101.8 , 0 );
setMoveKey( spep_5 + 154, 1, 87.5, -60.2 , 0 );
setMoveKey( spep_5 + 156, 1, 77.2, -105.1 , 0 );
setMoveKey( spep_5 + 158, 1, 95.4, -69.7 , 0 );
setMoveKey( spep_5 + 160, 1, 61.9, -78.9 , 0 );
setMoveKey( spep_5 + 162, 1, 97.4, -107 , 0 );
setMoveKey( spep_5 + 164, 1, 59.9, -82.9 , 0 );
setMoveKey( spep_5 + 166, 1, 110.8, -87.8 , 0 );
setMoveKey( spep_5 + 168, 1, 69.9, -84.5 , 0 );
setMoveKey( spep_5 + 170, 1, 105.1, -73.7 , 0 );
setMoveKey( spep_5 + 172, 1, 59.2, -112.7 , 0 );
setMoveKey( spep_5 + 174, 1, 85.4, -48.5 , 0 );
setMoveKey( spep_5 + 176, 1, 103.6, -106.3 , 0 );
setMoveKey( spep_5 + 178, 1, 79.1, -38 , 0 );

setScaleKey( spep_5 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_5 + 2, 1, 0.62, 0.62 );
setScaleKey( spep_5 + 4, 1, 0.68, 0.68 );
setScaleKey( spep_5 + 6, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 8, 1, 0.76, 0.76 );
setScaleKey( spep_5 + 10, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 12, 1, 0.81, 0.81 );
setScaleKey( spep_5 + 14, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 16, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 18, 1, 0.87, 0.87 );
setScaleKey( spep_5 + 20, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 22, 1, 0.89, 0.89 );
setScaleKey( spep_5 + 24, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 26, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 28, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 30, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 32, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 34, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 38, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 40, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 42, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 44, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 46, 1, 1, 1 );
setScaleKey( spep_5 + 48, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 50, 1, 1.02, 1.02 );
setScaleKey( spep_5 + 52, 1, 1.02, 1.02 );
setScaleKey( spep_5 + 54, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 56, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_5 + 62, 1, 1.04, 1.04 );
setScaleKey( spep_5 + 64, 1, 1.05, 1.05 );
setScaleKey( spep_5 + 178, 1, 1.05, 1.05 );

setRotateKey( spep_5 + 0, 1, 25 );
setRotateKey( spep_5 + 2, 1, 26.2 );
setRotateKey( spep_5 + 4, 1, 26.7 );
setRotateKey( spep_5 + 6, 1, 27.2 );
setRotateKey( spep_5 + 8, 1, 27.5 );
setRotateKey( spep_5 + 10, 1, 27.8 );
setRotateKey( spep_5 + 12, 1, 28 );
setRotateKey( spep_5 + 14, 1, 28.2 );
setRotateKey( spep_5 + 16, 1, 28.4 );
setRotateKey( spep_5 + 18, 1, 28.6 );
setRotateKey( spep_5 + 20, 1, 28.7 );
setRotateKey( spep_5 + 22, 1, 28.9 );
setRotateKey( spep_5 + 24, 1, 29 );
setRotateKey( spep_5 + 26, 1, 29.1 );
setRotateKey( spep_5 + 28, 1, 29.2 );
setRotateKey( spep_5 + 30, 1, 29.3 );
setRotateKey( spep_5 + 32, 1, 29.3 );
setRotateKey( spep_5 + 34, 1, 29.4 );
setRotateKey( spep_5 + 36, 1, 29.5 );
setRotateKey( spep_5 + 38, 1, 29.5 );
setRotateKey( spep_5 + 40, 1, 29.6 );
setRotateKey( spep_5 + 42, 1, 29.7 );
setRotateKey( spep_5 + 44, 1, 29.7 );
setRotateKey( spep_5 + 46, 1, 29.8 );
setRotateKey( spep_5 + 50, 1, 29.8 );
setRotateKey( spep_5 + 52, 1, 29.9 );
setRotateKey( spep_5 + 58, 1, 29.9 );
setRotateKey( spep_5 + 60, 1, 30 );
setRotateKey( spep_5 + 178, 1, 30 );

--***気弾背景***
semaruBG = entryEffect(  spep_5,  SP_09,  0x80,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_5,  semaruBG,  1.0,  1.0);
setEffScaleKey(  spep_5+180,  semaruBG,  1.0,  1.0);
setEffMoveKey(  spep_5,  semaruBG,  0,  0);
setEffMoveKey(  spep_5+180,  semaruBG,  0,  0);
setEffRotateKey(  spep_5,  semaruBG,  0);
setEffRotateKey(  spep_5+180,  semaruBG,  0);
setEffAlphaKey(  spep_5,  semaruBG,  255);
setEffAlphaKey(  spep_5+180,  semaruBG,  255);
setEffAlphaKey(  spep_5,  semaruBG,  0);
setEffAlphaKey(  spep_5+180,  semaruBG,  0);

playSe(  spep_5,  1018);  
playSe(  spep_5 + 60,  1023);
setSeVolume( spep_5 + 60, 1023, 70 );
playSe(  spep_5 + 70,  1023);
setSeVolume( spep_5 + 70, 1023, 70 );
playSe(  spep_5 + 80,  1023);
setSeVolume( spep_5 + 80, 1023, 70 );
playSe(  spep_5 + 90,  1023);
setSeVolume( spep_5 + 90, 1023, 70 );
playSe(  spep_5 + 100,  1023);
setSeVolume( spep_5 + 100, 1023, 70 );

entryFadeBg( spep_5,  0,  180,  0,  0,  0,  0,  255);  --黒背景

-- ダメージ表示
dealDamage(spep_5+68);
endPhase(spep_5+170);
end



--1015950 孫悟空(少年期)_破竹の快進撃
--sp_effect_a1_00139

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
SP_01 = 152761  --クリリンスタート
SP_02 = 152763  --クリリン攻撃
SP_03 = 152764  --地面
SP_04 = 152766  --悟空迫る
SP_05 = 152767  --悟空攻撃
SP_06 = 152768  --地面  
SP_07 = 152770  --かめはめ波
SP_08 = 152772  --かめはめ波迫る
SP_09 = 152773  --地面  
SP_10 = 152774  --地面  

--***敵側***
SP_01r = 152762  --クリリンスタート
SP_02r = 152765  --クリリン攻撃
SP_03r = 152764  --地面
SP_04r = 152766  --悟空迫る
SP_05r = 152769  --悟空攻撃
SP_06r = 152768  --地面  
SP_07r = 152771  --かめはめ波
SP_08r = 152772  --かめはめ波迫る
SP_09r = 152773  --地面  
SP_10r = 152774  --地面  

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
-- 最初〜クリリンフェイント(120F)
------------------------------------------------------
spep_0 = 0;


--エフェクト
fake = entryEffect( spep_0,   SP_01,   0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_0,  fake,  0,  0,  0);
setEffMoveKey( spep_0+120,  fake,  0,  0,  0);
setEffScaleKey( spep_0,  fake,  1.0,  1.0);
setEffScaleKey( spep_0+120,  fake,  1.0,  1.0);
setEffRotateKey(  spep_0,  fake,  0);
setEffRotateKey(  spep_0+120,  fake,  0);
setEffAlphaKey( spep_0,  fake,  255);
setEffAlphaKey( spep_0+120,  fake,  255);

--流線
ryu1 = entryEffectLife( spep_0,  914,  120,  0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_0,  ryu1,  0,  0,  0);
setEffMoveKey( spep_0+120,  ryu1,  0,  0,  0);
setEffScaleKey( spep_0,  ryu1,  1.0,  1.0);
setEffScaleKey( spep_0+120,  ryu1,  1.0,  1.0);
setEffRotateKey( spep_0,  ryu1,  0);
setEffRotateKey( spep_0+120,  ryu1,  0);
setEffAlphaKey( spep_0,  ryu1,  0);
setEffAlphaKey( spep_0+78,  ryu1,  0);
setEffAlphaKey( spep_0+82,  ryu1,  255);
setEffAlphaKey( spep_0+120,  ryu1,  255);

--***SE***
playSe(  spep_0+34,  1042);

--***エフェクト***
entryFadeBg( spep_0,  0,  120,  0,  21,  36,  51, 255);  -- ネイビー

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+40 ; --エンドフェイズのフレーム数を置き換える

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

--***回避しなかった場合***
playSe(  spep_0+80,  8);


entryFade(  spep_0+110,  4,  8,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade
------------------------------------------------------
-- クリリンの攻撃(150F)
------------------------------------------------------
spep_1 = spep_0+121;

--***クリリンの攻撃***--
kougeki_f = entryEffect( spep_1,  SP_02,  0x100,  -1,  0,  0,  0);
setEffMoveKey(  spep_1,  kougeki_f,  0,  0);
setEffMoveKey(  spep_1+150,  kougeki_f,  0,  0);
setEffScaleKey( spep_1,  kougeki_f,  1.0,  1.0);
setEffScaleKey( spep_1+150,  kougeki_f,  1.0,  1.0);
setEffRotateKey(  spep_1,  kougeki_f,  0);
setEffRotateKey(  spep_1+150,  kougeki_f,  0);
setEffAlphaKey(  spep_1,  kougeki_f,  255);
setEffAlphaKey(  spep_1+150,  kougeki_f,  255);

--流線
ryu2 = entryEffectLife( spep_1,  914,  100,  0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_1,  ryu2,  0,  0);
setEffMoveKey( spep_1+100,  ryu2,  0,  0)
setEffScaleKey( spep_1,  ryu2,  1.0,  1.0);
setEffScaleKey( spep_1+100,  ryu2,  1.0,  1.0);
setEffRotateKey( spep_1,  ryu2,  0);
setEffRotateKey( spep_1+100,  ryu2,  0);
setEffAlphaKey(  spep_1,  ryu2,  255);
setEffAlphaKey(  spep_1+90,  ryu2,  255);
setEffAlphaKey(  spep_1+100,  ryu2,  0);

--***クリリンの攻撃_背景***--
kougeki_b = entryEffect( spep_1,  SP_03,  0x80,  -1,  0,  0,  0);
setEffMoveKey(  spep_1,  kougeki_b,  0,  0);
setEffMoveKey(  spep_1+150,  kougeki_b,  0,  0);
setEffScaleKey( spep_1,  kougeki_b,  1.0,  1.0);
setEffScaleKey( spep_1+150,  kougeki_b,  1.0,  1.0);
setEffRotateKey(  spep_1,  kougeki_b,  0);
setEffRotateKey(  spep_1+150,  kougeki_b,  0);
setEffAlphaKey(  spep_1,  kougeki_b,  255);
setEffAlphaKey(  spep_1+150,  kougeki_b,  255);

--書き文字
ct_qu = entryEffectLife( spep_1 + 130,  10001, 20, 0x100, -1, 0, 229.5, 507.2 );

setEffMoveKey( spep_1 + 130, ct_qu, 79.5, 207.2 , 0 );
setEffMoveKey( spep_1 + 132, ct_qu, 70.3, 220.7 , 0 );
setEffMoveKey( spep_1 + 134, ct_qu, 53.2, 222.5 , 0 );
setEffMoveKey( spep_1 + 136, ct_qu, 54.5, 230.9 , 0 );
setEffMoveKey( spep_1 + 138, ct_qu, 59, 229 , 0 );
setEffMoveKey( spep_1 + 140, ct_qu, 60.5, 232.4 , 0 );
setEffMoveKey( spep_1 + 142, ct_qu, 55.1, 224.7 , 0 );
setEffMoveKey( spep_1 + 144, ct_qu, 55.6, 230.5 , 0 );
setEffMoveKey( spep_1 + 146, ct_qu, 59, 229 , 0 );
setEffMoveKey( spep_1 + 148, ct_qu, 60.5, 232.4 , 0 );
setEffMoveKey( spep_1 + 150, ct_qu, 55.1, 224.7 , 0 );
--setEffMoveKey( spep_1 + 152, ct_qu, 205.6, 530.5 , 0 );
--setEffMoveKey( spep_1 + 154, ct_qu, 209, 529 , 0 );
--setEffMoveKey( spep_1 + 156, ct_qu, 210.5, 532.4 , 0 );
--setEffMoveKey( spep_1 + 158, ct_qu, 205.1, 524.7 , 0 );

setEffScaleKey( spep_1 + 130, ct_qu, 0.1, 0.1 );
setEffScaleKey( spep_1 + 132, ct_qu, 1.55, 1.55 );
setEffScaleKey( spep_1 + 134, ct_qu, 3, 3 );
setEffScaleKey( spep_1 + 136, ct_qu, 2.67, 2.67 );
setEffScaleKey( spep_1 + 138, ct_qu, 2.33, 2.33 );
setEffScaleKey( spep_1 + 140, ct_qu, 2, 2 );
setEffScaleKey( spep_1 + 150, ct_qu, 2, 2 );

setEffRotateKey( spep_1 + 130, ct_qu, -21.3 );
setEffRotateKey( spep_1 + 132, ct_qu, -21.5 );
setEffRotateKey( spep_1 + 150, ct_qu, -21.5 );

setEffAlphaKey( spep_1 + 130, ct_qu, 255 );
setEffAlphaKey( spep_1 + 150, ct_qu, 255 );

--***敵の攻撃***
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 148, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 35, 1, 104 );
changeAnime( spep_1-3 + 36, 1, 104 );
changeAnime( spep_1 +115, 1, 111 );
changeAnime( spep_1 +116, 1, 111 );
changeAnime( spep_1 +117, 1, 111 );
changeAnime( spep_1 +118, 1, 111 );
changeAnime( spep_1 +119, 1, 111 );
changeAnime( spep_1 +120, 1, 111 );
changeAnime( spep_1 +121, 1, 111 );
changeAnime( spep_1 +122, 1, 111 );
changeAnime( spep_1 +123, 1, 111 );
changeAnime( spep_1 +124, 1, 111 );
changeAnime( spep_1 +125, 1, 111 );
changeAnime( spep_1 +126, 1, 111 );
changeAnime( spep_1 +127, 1, 111 );
changeAnime( spep_1 +128, 1, 111 );
changeAnime( spep_1 +129, 1, 111 );
changeAnime( spep_1 +130, 1, 111 );
changeAnime( spep_1 +131, 1, 111 );
changeAnime( spep_1 +132, 1, 111 );
changeAnime( spep_1 +133, 1, 111 );
changeAnime( spep_1 +134, 1, 111 );
changeAnime( spep_1 +135, 1, 111 );
changeAnime( spep_1 +136, 1, 111 );
changeAnime( spep_1 +137, 1, 111 );
changeAnime( spep_1 +138, 1, 111 );
changeAnime( spep_1 +139, 1, 111 );
changeAnime( spep_1 +140, 1, 111 );
changeAnime( spep_1 +141, 1, 111 );
changeAnime( spep_1 +142, 1, 111 );
changeAnime( spep_1 +143, 1, 111 );
changeAnime( spep_1 +144, 1, 111 );
changeAnime( spep_1 +145, 1, 111 );
changeAnime( spep_1 +146, 1, 111 );
changeAnime( spep_1 +147, 1, 111 );
changeAnime( spep_1 +148, 1, 111 );
--changeAnime( spep_1 +149, 1, 111 );
--changeAnime( spep_1 +150, 1, 111 );

--delayAll( spep_1 + 118,  30,  40000);  --遅らせる

setMoveKey( spep_1 + 0, 1, 906, -43.1 , 0 );
--setMoveKey( spep_1 + 2, 1, 861.3, -43.1 , 0 );
setMoveKey( spep_1-3 + 4, 1, 816.6, -43.1 , 0 );
setMoveKey( spep_1-3 + 6, 1, 771.9, -43.1 , 0 );
setMoveKey( spep_1-3 + 8, 1, 727.2, -43.1 , 0 );
setMoveKey( spep_1-3 + 10, 1, 682.4, -43.1 , 0 );
setMoveKey( spep_1-3 + 12, 1, 637.8, -43.1 , 0 );
setMoveKey( spep_1-3 + 14, 1, 593, -43.1 , 0 );
setMoveKey( spep_1-3 + 16, 1, 548.3, -43.1 , 0 );
setMoveKey( spep_1-3 + 18, 1, 503.6, -43.1 , 0 );
setMoveKey( spep_1-3 + 20, 1, 458.8, -43.1 , 0 );
setMoveKey( spep_1-3 + 22, 1, 414.1, -43.1 , 0 );
setMoveKey( spep_1-3 + 24, 1, 369.5, -43 , 0 );
setMoveKey( spep_1-3 + 26, 1, 324.7, -43 , 0 );
setMoveKey( spep_1-3 + 28, 1, 280.1, -43 , 0 );
setMoveKey( spep_1-3 + 30, 1, 235.3, -43 , 0 );
setMoveKey( spep_1-3 + 32, 1, 190.6, -43 , 0 );
setMoveKey( spep_1-3 + 34, 1, 145.8, -43 , 0 );
setMoveKey( spep_1-3 + 37, 1, 101.1, -43 , 0 );
setMoveKey( spep_1-3 + 38, 1, 75, -43 , 0 );
setMoveKey( spep_1-3 + 39, 1, 75, -43 , 0 );---------------------------
setMoveKey( spep_1-3 + 40, 1, 159.8, -16.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, 151.2, -19.8 , 0 );
setMoveKey( spep_1-3 + 44, 1, 130, -47.3 , 0 );
setMoveKey( spep_1-3 + 46, 1, 157.1, -35.3 , 0 );
setMoveKey( spep_1-3 + 48, 1, 163.7, -47.2 , 0 );
setMoveKey( spep_1-3 + 50, 1, 182.4, -39.6 , 0 );
setMoveKey( spep_1-3 + 52, 1, 178, -43.2 , 0 );
setMoveKey( spep_1-3 + 54, 1, 187.9, -43.1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 197.2, -43.1 , 0 );
setMoveKey( spep_1-3 + 58, 1, 206, -43.1 , 0 );
setMoveKey( spep_1-3 + 60, 1, 214.4, -43.1 , 0 );
setMoveKey( spep_1-3 + 62, 1, 222.6, -43 , 0 );
setMoveKey( spep_1-3 + 64, 1, 230.6, -43 , 0 );
setMoveKey( spep_1-3 + 66, 1, 233.8, -43 , 0 );
setMoveKey( spep_1-3 + 68, 1, 236.9, -43 , 0 );
setMoveKey( spep_1-3 + 70, 1, 239.9, -42.9 , 0 );
setMoveKey( spep_1-3 + 72, 1, 243, -42.9 , 0 );
setMoveKey( spep_1-3 + 74, 1, 246, -42.9 , 0 );
setMoveKey( spep_1-3 + 76, 1, 249, -42.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 252, -42.8 , 0 );
setMoveKey( spep_1-3 + 80, 1, 255.1, -46.6 , 0 );
setMoveKey( spep_1-3 + 82, 1, 278, -26.8 , 0 );
setMoveKey( spep_1-3 + 84, 1, 272.2, -38.2 , 0 );
setMoveKey( spep_1-3 + 86, 1, 266.6, -45.9 , 0 );
setMoveKey( spep_1-3 + 88, 1, 270.4, -38.7 , 0 );
setMoveKey( spep_1-3 + 90, 1, 274.4, -43.6 , 0 );
setMoveKey( spep_1-3 + 92, 1, 275.9, -43.6 , 0 );
setMoveKey( spep_1-3 + 94, 1, 277.7, -43.6 , 0 );
setMoveKey( spep_1-3 + 96, 1, 279.8, -43.5 , 0 );
setMoveKey( spep_1-3 + 98, 1, 282, -43.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 284.5, -43.5 , 0 );
setMoveKey( spep_1-3 + 102, 1, 287.3, -43.4 , 0 );
setMoveKey( spep_1-3 + 104, 1, 290.3, -43.4 , 0 );
setMoveKey( spep_1-3 + 106, 1, 293.5, -43.4 , 0 );
setMoveKey( spep_1-3 + 108, 1, 297, -43.3 , 0 );
setMoveKey( spep_1-3 + 110, 1, 300.6, -43.3 , 0 );
setMoveKey( spep_1-3 + 112, 1, 304.6, -43.3 , 0 );
setMoveKey( spep_1-3 + 114, 1, 308.7, -43.2 , 0 );
setMoveKey( spep_1-3 + 116, 1, 313.1, -43.2 , 0 );
--setMoveKey( spep_1-3 + 119, 1, 317.7, -43.2 , 0 );
setMoveKey( spep_1-3 + 118, 1, 204.8, -36.2 , 0 );
setMoveKey( spep_1-3 + 120, 1, 204.8, -36.2 , 0 );
setMoveKey( spep_1-3 + 122, 1, 192.1, -29.2 , 0 );
setMoveKey( spep_1-3 + 124, 1, 182.4, -22.2 , 0 );
setMoveKey( spep_1-3 + 126, 1, 177.4, -15.2 , 0 );
setMoveKey( spep_1-3 + 128, 1, 176.3, -8.2 , 0 );
setMoveKey( spep_1-3 + 130, 1, 177.8, -1.2 , 0 );
setMoveKey( spep_1-3 + 132, 1, 174.5, -1 , 0 );
setMoveKey( spep_1-3 + 134, 1, 180.6, -2.2 , 0 );
setMoveKey( spep_1-3 + 136, 1, 162, 0.4 , 0 );
setMoveKey( spep_1-3 + 138, 1, 175.1, -1.4 , 0 );
setMoveKey( spep_1-3 + 140, 1, 175.5, -1 , 0 );
setMoveKey( spep_1-3 + 142, 1, 176, -0.7 , 0 );
setMoveKey( spep_1-3 + 144, 1, 176.4, -0.3 , 0 );
setMoveKey( spep_1-3 + 146, 1, 176.8, 0 , 0 );
setMoveKey( spep_1 + 148, 1, 177.2, 0.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 38, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 40, 1, 1.83, 1.83 );
setScaleKey( spep_1-3 + 42, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 44, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 46, 1, 1.64, 1.63 );
setScaleKey( spep_1-3 + 48, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 80, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 82, 1, 1.71, 1.71 );
setScaleKey( spep_1-3 + 84, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 86, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 119, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 120, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 122, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 124, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 126, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 128, 1, 1.86, 1.86 );
setScaleKey( spep_1-3 + 130, 1, 1.91, 1.91 );
setScaleKey( spep_1-3 + 132, 1, 1.91, 1.91 );
setScaleKey( spep_1-3 + 134, 1, 1.88, 1.88 );
setScaleKey( spep_1-3 + 136, 1, 2.01, 2.01 );
setScaleKey( spep_1-3 + 138, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 144, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 146, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 148, 1, 1.93, 1.93 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 38, 1, 0 );
setRotateKey( spep_1-3 + 40, 1, -4.2 );
setRotateKey( spep_1-3 + 42, 1, -7.6 );
setRotateKey( spep_1-3 + 44, 1, -10.3 );
setRotateKey( spep_1-3 + 46, 1, -12.4 );
setRotateKey( spep_1-3 + 48, 1, -14.1 );
setRotateKey( spep_1-3 + 50, 1, -15.4 );
setRotateKey( spep_1-3 + 52, 1, -16.3 );
setRotateKey( spep_1-3 + 54, 1, -17 );
setRotateKey( spep_1-3 + 56, 1, -17.5 );
setRotateKey( spep_1-3 + 58, 1, -17.9 );
setRotateKey( spep_1-3 + 60, 1, -18.1 );
setRotateKey( spep_1-3 + 62, 1, -18.3 );
setRotateKey( spep_1-3 + 64, 1, -18.4 );
setRotateKey( spep_1-3 + 68, 1, -18.4 );
setRotateKey( spep_1-3 + 70, 1, -18.5 );
setRotateKey( spep_1-3 + 84, 1, -18.5 );
setRotateKey( spep_1-3 + 86, 1, -18.6 );
setRotateKey( spep_1-3 + 88, 1, -18.7 );
setRotateKey( spep_1-3 + 90, 1, -18.8 );
setRotateKey( spep_1-3 + 92, 1, -18.9 );
setRotateKey( spep_1-3 + 94, 1, -19 );
setRotateKey( spep_1-3 + 96, 1, -19.1 );
setRotateKey( spep_1-3 + 98, 1, -19.3 );
setRotateKey( spep_1-3 + 100, 1, -19.4 );
setRotateKey( spep_1-3 + 102, 1, -19.6 );
setRotateKey( spep_1-3 + 104, 1, -19.8 );
setRotateKey( spep_1-3 + 106, 1, -20 );
setRotateKey( spep_1-3 + 108, 1, -20.3 );
setRotateKey( spep_1-3 + 110, 1, -20.5 );
setRotateKey( spep_1-3 + 112, 1, -20.8 );
setRotateKey( spep_1-3 + 114, 1, -21.1 );
setRotateKey( spep_1-3 + 116, 1, -21.4 );
--setRotateKey( spep_1-3 + 119, 1, -21.7 );
setRotateKey( spep_1-3 + 118, 1, 0 );
setRotateKey( spep_1-3 + 120, 1, 0 );
setRotateKey( spep_1-3 + 122, 1, 2.2 );
setRotateKey( spep_1-3 + 124, 1, 3.9 );
setRotateKey( spep_1-3 + 126, 1, 5.2 );
setRotateKey( spep_1-3 + 128, 1, 6 );
setRotateKey( spep_1-3 + 130, 1, 6.5 );
setRotateKey( spep_1-3 + 132, 1, 6.8 );
setRotateKey( spep_1 + 148, 1, 6.8 );

--***SE***
playSe(  spep_1,  44);
playSe(  spep_1+38,  1001);  --蹴り
playSe(  spep_1+74,  1007);  --着地
playSe(  spep_1+116,  1004);  --反撃

entryFadeBg( spep_1,  0,  180,  0,  21,  36,  51, 255);  -- ネイビー
entryFade( spep_1+140, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--spep_2 = spep_1+150-28; --delayの調整
spep_2 = spep_1+150;
--***フェードと背景***
--entryFade( spep_2-4, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2,  shuchusen3,  0,  0);
setEffMoveKey(  spep_2+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_2,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_2+90,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_2,  shuchusen3,  0);
setEffRotateKey(  spep_2+90,  shuchusen3,  0);
setEffAlphaKey(  spep_2,  shuchusen3,  255);
setEffAlphaKey(  spep_2+90,  shuchusen3,  255);

entryFade( spep_2+82,  4,  8,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade
------------------------------------------------------
-- 悟空突進(128F)
------------------------------------------------------
spep_3 = spep_2+90;

--***カットイン***32
speff = entryEffect(  spep_3+40,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3+40,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--集中線
shuchu = entryEffectLife( spep_3 + 0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 138, shuchu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchu, 1.17, 1.17 );
setEffScaleKey( spep_3 + 126, shuchu, 1.17, 1.17 );
setEffScaleKey( spep_3 + 128, shuchu, 1.21, 1.21 );
setEffScaleKey( spep_3 + 130, shuchu, 1.23, 1.23 );
setEffScaleKey( spep_3 + 132, shuchu, 1.29, 1.29 );
setEffScaleKey( spep_3 + 134, shuchu, 1.39, 1.39 );
setEffScaleKey( spep_3 + 136, shuchu, 1.54, 1.54 );
setEffScaleKey( spep_3 + 138, shuchu, 1.72, 1.72 );

setEffRotateKey( spep_3 + 0, shuchu, 180 );
setEffRotateKey( spep_3 + 138, shuchu, 180 );

setEffAlphaKey( spep_3 + 0, shuchu, 255 );
setEffAlphaKey( spep_3 + 138, shuchu, 255 );

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+52, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_3 + 52, ctgogo, 255 );
setEffAlphaKey( spep_3 + 82, ctgogo, 255 );
setEffAlphaKey( spep_3 + 83, ctgogo, 255 );
setEffAlphaKey( spep_3 + 84, ctgogo, 191 );
setEffAlphaKey( spep_3 + 86, ctgogo, 128 );
setEffAlphaKey( spep_3 + 121, ctgogo, 64 );
setEffAlphaKey( spep_3 + 122, ctgogo, 0 );
setEffRotateKey(  spep_3+52,  ctgogo,  0);
setEffRotateKey(  spep_3+122,  ctgogo,  0);
setEffScaleKey(  spep_3+52,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3+82,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_3 + 122, ctgogo, 1.07, 1.07 );
setEffMoveKey(  spep_3+52,  ctgogo,  0,  530);
setEffMoveKey(  spep_3+122,  ctgogo,  0,  530);

tosshin = entryEffect( spep_3,  SP_04,  0x80,  -1,  0,  0,  0);
setEffMoveKey( spep_3,  tosshin,  0,  0);
setEffMoveKey( spep_3+140,  tosshin,  0,  0);
setEffScaleKey( spep_3,  tosshin,  1.0,  1.0);
setEffScaleKey( spep_3+140, tosshin,  1.0,  1.0);
setEffAlphaKey( spep_3,  tosshin,  255);
setEffAlphaKey( spep_3+140,  tosshin,  255);
setEffRotateKey( spep_3,  tosshin,  0);
setEffRotateKey( spep_3+140,  tosshin,  0);

entryFadeBg( spep_3,  0,  140,  0,  21,  36,  51, 255);  -- ネイビー
entryFade(  spep_3+132,  4,  6,  4,  fcolor_r,  fcolor_b,  fcolor_g,  255);  --white fade

--***SE***
playSe(  spep_3,  4);
playSe(  spep_3+10,  4);
playSe(  spep_3+20,  4);
playSe(  spep_3+30,  4);
playSe(  spep_3+40,  4);
playSe(  spep_3+52,  SE_04);  --カードカットイン

------------------------------------------------------
-- 伸びろ如意棒(150F)
------------------------------------------------------
spep_4 = spep_3+140;

--エフェクト
nobiro_f = entryEffect(  spep_4,  SP_05,  0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_4,  nobiro_f,  0,  0);
setEffMoveKey( spep_4+150,  nobiro_f,  0,  0);
setEffScaleKey( spep_4,  nobiro_f,  1.0,  1.0);
setEffScaleKey(  spep_4+150,  nobiro_f,  1.0,  1.0);
setEffRotateKey( spep_4,  nobiro_f,  0);
setEffRotateKey( spep_4+150,  nobiro_f,  0);
setEffAlphaKey( spep_4,  nobiro_f,  255);
setEffAlphaKey( spep_4+150, nobiro_f,  255);

--流線
ryu3 = entryEffectLife( spep_4,  914,  150,  0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_4,  ryu3,  0,  0);
setEffMoveKey( spep_4+150,  ryu3,  0,  0);
setEffScaleKey( spep_4,  ryu3,  1.0,  1.0);
setEffScaleKey( spep_4+150,  ryu3,  1.0,  1.0);
setEffRotateKey( spep_4,  ryu3,  0);
setEffRotateKey( spep_4+150,  ryu3,  0);
setEffAlphaKey( spep_4,  ryu3,  255);
setEffAlphaKey( spep_4+30,  ryu3,  255);
setEffAlphaKey( spep_4+40,  ryu3,  0);
setEffAlphaKey( spep_4+82,  ryu3,  0);
setEffAlphaKey( spep_4+94,  ryu3,  255);
setEffAlphaKey( spep_4+150,  ryu3,  255);

--エフェクト
nobiro_b = entryEffect(  spep_4,  SP_06,  0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_4,  nobiro_b,  0,  0);
setEffMoveKey( spep_4+150,  nobiro_b,  0,  0);
setEffScaleKey( spep_4,  nobiro_b,  1.0,  1.0);
setEffScaleKey(  spep_4+150,  nobiro_b,  1.0,  1.0);
setEffRotateKey( spep_4,  nobiro_b,  0);
setEffRotateKey( spep_4+150,  nobiro_b,  0);
setEffAlphaKey( spep_4,  nobiro_b,  255);
setEffAlphaKey( spep_4+150, nobiro_b,  255);


entryFadeBg( spep_4,  0,  150,  0,  21,  36,  51, 255);  -- ネイビー
entryFade(  spep_4+140,  4,  8,  4,  fcolor_r,  fcolor_b,  fcolor_g,  255);  --white fade

--***SE***
playSe(  spep_4+16,  1009);
playSe(  spep_4+84,  1010);
--playSe(  spep_4+120,  1018);  --吹っ飛び

------------------------------------------------------
-- かめはめ波(120F)
------------------------------------------------------
spep_5 = spep_4+151;

ryu4 = entryEffectLife( spep_5,  921,  120, 0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_5,  ryu4,  0,  0);
setEffMoveKey(  spep_5+120,  ryu4,  0,  0);

setEffScaleKey(  spep_5,  ryu4,  1.29,  1.21);
setEffScaleKey(  spep_5+120,  ryu4,  1.32,  1.25);

setEffRotateKey(  spep_5,  ryu4,  -168.6);
setEffRotateKey(  spep_5+120,  ryu4,  -166.6);

setEffAlphaKey(  spep_5,  ryu4,  0);
setEffAlphaKey(  spep_5+64,  ryu4,  0);
setEffAlphaKey(  spep_5+65,  ryu4,  255);
setEffAlphaKey(  spep_5+66,  ryu4,  255);
setEffAlphaKey(  spep_5+120,  ryu4,  255);

kame = entryEffect( spep_5,  SP_07,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_5,  kame,  0,  0);
setEffMoveKey(  spep_5+120,  kame,  0,  0);

setEffScaleKey(  spep_5,  kame,  1.0,  1.0);
setEffScaleKey(  spep_5+120,  kame,  1.0,  1.0);

setEffRotateKey(  spep_5,  kame,  0);
setEffRotateKey(  spep_5+120,  kame,  0);

setEffAlphaKey(  spep_5,  kame,  255);
setEffAlphaKey(  spep_5+120,  kame,  255);

--集中線
shuchu2 = entryEffectLife( spep_5 + 0,  906, 70, 0x100, -1, 0, 0, -136 );

setEffMoveKey( spep_5 + 0, shuchu2, 0, -136 , 0 );
setEffMoveKey( spep_5 + 70, shuchu2, 0, -136 , 0 );

setEffScaleKey( spep_5 + 0, shuchu2, 1.03, 1.27 );
setEffScaleKey( spep_5 + 70, shuchu2, 1.03, 1.27 );

setEffRotateKey( spep_5 + 0, shuchu2, 180 );
setEffRotateKey( spep_5 + 70, shuchu2, 180 );

setEffAlphaKey( spep_5 + 0, shuchu2, 255 );
setEffAlphaKey( spep_5 + 60, shuchu2, 255 );
setEffAlphaKey( spep_5 + 62, shuchu2, 205 );
setEffAlphaKey( spep_5 + 64, shuchu2, 155 );
setEffAlphaKey( spep_5 + 66, shuchu2, 105 );
setEffAlphaKey( spep_5 + 68, shuchu2, 55 );
setEffAlphaKey( spep_5 + 70, shuchu2, 5 );

--***敵の動き***

setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 148, 1, 0 );
changeAnime( spep_4 + 0, 1, 111 );
changeAnime( spep_4 + 1, 1, 111 );
changeAnime( spep_4 + 2, 1, 111 );
changeAnime( spep_4 + 3, 1, 111 );
changeAnime( spep_4 + 4, 1, 111 );
changeAnime( spep_4 + 5, 1, 111 );
changeAnime( spep_4 + 6, 1, 111 );
changeAnime( spep_4 + 7, 1, 111 );
changeAnime( spep_4 + 8, 1, 111 );
changeAnime( spep_4 + 9, 1, 111 );
changeAnime( spep_4 + 10, 1, 111 );
changeAnime( spep_4 + 11, 1, 111 );
changeAnime( spep_4 + 12, 1, 111 );
changeAnime( spep_4 + 13, 1, 111 );
changeAnime( spep_4 + 14, 1, 111 );
changeAnime( spep_4 + 15, 1, 106 );
changeAnime( spep_4 + 83, 1, 108 );

setMoveKey( spep_4 + 0, 1, 31.7, -18.4 , 0 );
--setMoveKey( spep_4 + 2, 1, 59.7, -18.3 , 0 );

setMoveKey( spep_4-3 + 4, 1, 86.7, -18.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 113.8, -18.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 140.8, -18.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, 167.9, -18.3 , 0 );
setMoveKey( spep_4-3 + 12, 1, 195, -18.3 , 0 );
setMoveKey( spep_4-3 + 14, 1, 222, -18.5 , 0 );
setMoveKey( spep_4-3 + 17, 1, 249.1, -18.5 , 0 );
setMoveKey( spep_4-3 + 18, 1, 207.3, -7.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, 195.2, -13.5 , 0 );
setMoveKey( spep_4-3 + 22, 1, 179.1, -3.5 , 0 );
setMoveKey( spep_4-3 + 24, 1, 162.9, -10.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, 129.9, -1.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, 96.8, -8.4 , 0 );
setMoveKey( spep_4-3 + 30, 1, 98.4, 0.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 100, -9.1 , 0 );
setMoveKey( spep_4-3 + 34, 1, 101.6, -3.4 , 0 );
setMoveKey( spep_4-3 + 36, 1, 103.2, -7.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, 104.8, -4.2 , 0 );
setMoveKey( spep_4-3 + 40, 1, 106.3, -7.4 , 0 );
setMoveKey( spep_4-3 + 42, 1, 108, -3.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 109.6, -6 , 0 );
setMoveKey( spep_4-3 + 46, 1, 111.2, -3.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, 112.8, -4.6 , 0 );
setMoveKey( spep_4-3 + 50, 1, 114.4, -3.9 , 0 );
setMoveKey( spep_4-3 + 52, 1, 115.9, -3.2 , 0 );
setMoveKey( spep_4-3 + 54, 1, 117.5, -2 , 0 );
setMoveKey( spep_4-3 + 56, 1, 119.1, -3.8 , 0 );
setMoveKey( spep_4-3 + 58, 1, 120.7, -1.5 , 0 );
setMoveKey( spep_4-3 + 60, 1, 121.7, -1.1 , 0 );
setMoveKey( spep_4-3 + 62, 1, 124.5, -0.7 , 0 );
setMoveKey( spep_4-3 + 64, 1, 127.5, -0.3 , 0 );
setMoveKey( spep_4-3 + 66, 1, 111.1, 0.1 , 0 );
setMoveKey( spep_4-3 + 68, 1, 114, 0.4 , 0 );
setMoveKey( spep_4-3 + 70, 1, 116.9, 0.8 , 0 );
setMoveKey( spep_4-3 + 72, 1, 119.7, 1.2 , 0 );
setMoveKey( spep_4-3 + 74, 1, 122.6, 1.6 , 0 );
setMoveKey( spep_4-3 + 76, 1, 125.5, 2 , 0 );
setMoveKey( spep_4-3 + 78, 1, 128.3, 2.4 , 0 );
setMoveKey( spep_4-3 + 80, 1, 112.1, 2.7 , 0 );
setMoveKey( spep_4-3 + 82, 1, 115.3, 3.2 , 0 );
setMoveKey( spep_4-3 + 85, 1, 117.9, 3.5 , 0 );
setMoveKey( spep_4-3 + 86, 1, 207.6, -13.2 , 0 );
setMoveKey( spep_4-3 + 88, 1, 298.3, -9 , 0 );
setMoveKey( spep_4-3 + 90, 1, 307.2, -1 , 0 );
setMoveKey( spep_4-3 + 92, 1, 316, -14.5 , 0 );
setMoveKey( spep_4-3 + 94, 1, 324.9, -1 , 0 );
setMoveKey( spep_4-3 + 96, 1, 333.7, -13 , 0 );
setMoveKey( spep_4-3 + 98, 1, 342.6, -3 , 0 );
setMoveKey( spep_4-3 + 100, 1, 298.8, -16.2 , 0 );
setMoveKey( spep_4-3 + 102, 1, 255, -1 , 0 );
setMoveKey( spep_4-3 + 104, 1, 211.4, -6 , 0 );
setMoveKey( spep_4-3 + 106, 1, 197.3, -15 , 0 );
setMoveKey( spep_4-3 + 108, 1, 183.4, -6 , 0 );
setMoveKey( spep_4-3 + 110, 1, 189.1, -2 , 0 );
setMoveKey( spep_4-3 + 112, 1, 196.3, -11 , 0 );
setMoveKey( spep_4-3 + 114, 1, 305.6, -4 , 0 );
setMoveKey( spep_4-3 + 116, 1, 457.4, -9 , 0 );
setMoveKey( spep_4-3 + 118, 1, 609.2, -9 , 0 );
setMoveKey( spep_4-3 + 120, 1, 761.1, -9 , 0 );
setMoveKey( spep_4-3 + 122, 1, 913, -9 , 0 );
setMoveKey( spep_4-3 + 124, 1, 1064.7, -9 , 0 );
setMoveKey( spep_4-3 + 126, 1, 1216.7, -9 , 0 );
setMoveKey( spep_4-3 + 128, 1, 1368.5, -9 , 0 );
setMoveKey( spep_4-3 + 130, 1, 1520.5, -9 , 0 );
setMoveKey( spep_4-3 + 132, 1, 1672.2, -9 , 0 );
setMoveKey( spep_4-3 + 134, 1, 1824.2, -9 , 0 );
setMoveKey( spep_4-3 + 136, 1, 1976, -9 , 0 );
setMoveKey( spep_4-3 + 138, 1, 2127.9, -9 , 0 );
setMoveKey( spep_4-3 + 140, 1, 2279.8, -9 , 0 );
setMoveKey( spep_4-3 + 142, 1, 2431.7, -9 , 0 );
setMoveKey( spep_4-3 + 144, 1, 2583.6, -9 , 0 );
setMoveKey( spep_4-3 + 146, 1, 2735.5, -9 , 0 );
setMoveKey( spep_4-3 + 148, 1, 2887.4, -9 , 0 );

setScaleKey( spep_4 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 18, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 64, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 66, 1, 1.71, 1.71 );
setScaleKey( spep_4 + 78, 1, 1.71, 1.71 );
setScaleKey( spep_4 + 80, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 85, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 86, 1, 1.63, 1.63 );
setScaleKey( spep_4 + 148, 1, 1.63, 1.63 );

setRotateKey( spep_4 + 0, 1, 12.2 );
--setRotateKey( spep_4 + 2, 1, 11.4 );

setRotateKey( spep_4-3 + 4, 1, 10.6 );
setRotateKey( spep_4-3 + 6, 1, 9.8 );
setRotateKey( spep_4-3 + 8, 1, 9 );
setRotateKey( spep_4-3 + 10, 1, 8.2 );
setRotateKey( spep_4-3 + 12, 1, 7.4 );
setRotateKey( spep_4-3 + 14, 1, 6.6 );
setRotateKey( spep_4-3 + 17, 1, 5.8 );
setRotateKey( spep_4-3 + 18, 1, -50.5 );
setRotateKey( spep_4-3 + 20, 1, -48.2 );
setRotateKey( spep_4-3 + 22, 1, -45.8 );
setRotateKey( spep_4-3 + 24, 1, -43.5 );
setRotateKey( spep_4-3 + 26, 1, -43.3 );
setRotateKey( spep_4-3 + 28, 1, -43.2 );
setRotateKey( spep_4-3 + 30, 1, -43 );
setRotateKey( spep_4-3 + 32, 1, -42.9 );
setRotateKey( spep_4-3 + 34, 1, -42.7 );
setRotateKey( spep_4-3 + 36, 1, -42.6 );
setRotateKey( spep_4-3 + 38, 1, -42.4 );
setRotateKey( spep_4-3 + 40, 1, -42.2 );
setRotateKey( spep_4-3 + 42, 1, -42.1 );
setRotateKey( spep_4-3 + 44, 1, -41.9 );
setRotateKey( spep_4-3 + 46, 1, -41.8 );
setRotateKey( spep_4-3 + 48, 1, -41.6 );
setRotateKey( spep_4-3 + 50, 1, -41.5 );
setRotateKey( spep_4-3 + 52, 1, -41.3 );
setRotateKey( spep_4-3 + 54, 1, -41.1 );
setRotateKey( spep_4-3 + 56, 1, -41 );
setRotateKey( spep_4-3 + 58, 1, -40.8 );
setRotateKey( spep_4-3 + 60, 1, -40.7 );
setRotateKey( spep_4-3 + 62, 1, -40.5 );
setRotateKey( spep_4-3 + 64, 1, -40.4 );
setRotateKey( spep_4-3 + 66, 1, -40.2 );
setRotateKey( spep_4-3 + 68, 1, -40.1 );
setRotateKey( spep_4-3 + 70, 1, -39.9 );
setRotateKey( spep_4-3 + 72, 1, -39.7 );
setRotateKey( spep_4-3 + 74, 1, -39.6 );
setRotateKey( spep_4-3 + 76, 1, -39.4 );
setRotateKey( spep_4-3 + 78, 1, -39.3 );
setRotateKey( spep_4-3 + 80, 1, -39.1 );
setRotateKey( spep_4-3 + 82, 1, -39 );
setRotateKey( spep_4-3 + 85, 1, -38.8 );
setRotateKey( spep_4-3 + 86, 1, 0 );




entryFadeBg( spep_5,  0,  120,  0,  21,  36,  51, 255);  -- ネイビー
entryFade(  spep_5+60,  10,  150,  0,  113,  255 , 255,  140);  --なんとも言えない青
entryFade(  spep_5+110,  4,  8,  4,  fcolor_r,  fcolor_b,  fcolor_g,  255);  --white fade

--***SE***
playSe(  spep_5,  SE_03);
playSe(  spep_5+20,  SE_03);
playSe(  spep_5+40,  SE_03);
playSe(  spep_5+60,  1021);

------------------------------------------------------
-- 迫る(100F)
------------------------------------------------------
spep_6 = spep_5+120;

--エフェクト
semaru_f = entryEffect( spep_6,  SP_08,  0x100,  -1,  0,  0,  0);

setEffMoveKey(  spep_6,  semaru_f,  0,  0);
setEffMoveKey(  spep_6+100,  semaru_f,  0,  0);
setEffScaleKey(  spep_6,  semaru_f,  1.0,  1.0);
setEffScaleKey(  spep_6+100,  semaru_f,  1.0,  1.0);
setEffRotateKey(  spep_6,  semaru_f,  0);
setEffRotateKey(  spep_6+100,  semaru_f,  0);
setEffAlphaKey(  spep_6,  semaru_f,  255);
setEffAlphaKey(  spep_6+100,  semaru_f,  255);

--流線
ryu5 = entryEffectLife( spep_6,  921,  100, 0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_6,  ryu5,  0,  0);
setEffMoveKey(  spep_6+100,  ryu5,  0,  0);
setEffScaleKey( spep_6,  ryu5,  1.32,  1.21);
setEffScaleKey( spep_6+100,  ryu5,  1.32,  1.21);
setEffRotateKey( spep_6,  ryu5,  -12.3);
setEffRotateKey( spep_6+100,  ryu5,  -12.3);
setEffAlphaKey(  spep_6,  ryu5,  255);
setEffAlphaKey(  spep_6+100,  ryu5,  255);
--エフェクト
semaru_b = entryEffect( spep_6,  SP_09,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_6,  semaru_b,  0,  0);
setEffMoveKey(  spep_6+100,  semaru_b,  0,  0);
setEffScaleKey(  spep_6,  semaru_b,  1.0,  1.0);
setEffScaleKey(  spep_6+100,  semaru_b,  1.0,  1.0);
setEffRotateKey(  spep_6,  semaru_b,  0);
setEffRotateKey(  spep_6+100,  semaru_b,  0);
setEffAlphaKey(  spep_6,  semaru_b,  255);
setEffAlphaKey(  spep_6+100,  semaru_b,  255);

--文字エントリー
ct_zudodo = entryEffectLife( spep_6 + 0,  10014, 98, 0x100, -1, 0, 58.1, 364 );
setEffShake( spep_6,  ct_zudodo,  98,  20);
setEffMoveKey( spep_6 + 0, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6 + 98, ct_zudodo, 34.1, 348 , 0 );
setEffScaleKey( spep_6 + 0, ct_zudodo, 3.0, 3.0 );
setEffScaleKey( spep_6 + 98, ct_zudodo, 3.0, 3.0 );
setEffRotateKey( spep_6 + 0, ct_zudodo, 61 );
setEffRotateKey( spep_6 + 98, ct_zudodo, 61 );
setEffAlphaKey( spep_6 + 0, ct_zudodo, 255 );
setEffAlphaKey( spep_6 + 98, ct_zudodo, 255 );

--的の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 78, 1, 0 );

changeAnime( spep_6 + 0, 1, 108 );

setMoveKey( spep_6 + 0, 1, 239.2, -44.4 , 0 );
setMoveKey( spep_6 + 2, 1, 247, -34.2 , 0 );
setMoveKey( spep_6 + 4, 1, 236.6, -39.9 , 0 );
setMoveKey( spep_6 + 6, 1, 242.2, -33.7 , 0 );
setMoveKey( spep_6 + 8, 1, 231.6, -39.4 , 0 );
setMoveKey( spep_6 + 10, 1, 236.8, -33.1 , 0 );
setMoveKey( spep_6 + 12, 1, 226, -38.8 , 0 );
setMoveKey( spep_6 + 14, 1, 231, -32.5 , 0 );
setMoveKey( spep_6 + 16, 1, 219.8, -38.2 , 0 );
setMoveKey( spep_6 + 18, 1, 224.6, -31.8 , 0 );
setMoveKey( spep_6 + 20, 1, 213.2, -37.5 , 0 );
setMoveKey( spep_6 + 22, 1, 217.7, -31.1 , 0 );
setMoveKey( spep_6 + 24, 1, 206.1, -36.7 , 0 );
setMoveKey( spep_6 + 26, 1, 210.3, -30.3 , 0 );
setMoveKey( spep_6 + 28, 1, 198.4, -35.9 , 0 );
setMoveKey( spep_6 + 30, 1, 202.3, -29.5 , 0 );
setMoveKey( spep_6 + 32, 1, 190.2, -35 , 0 );
setMoveKey( spep_6 + 34, 1, 193.9, -28.6 , 0 );
setMoveKey( spep_6 + 36, 1, 181.5, -34.1 , 0 );
setMoveKey( spep_6 + 38, 1, 184.9, -27.6 , 0 );
setMoveKey( spep_6 + 40, 1, 172.2, -33.1 , 0 );
setMoveKey( spep_6 + 42, 1, 175.4, -26.6 , 0 );
setMoveKey( spep_6 + 44, 1, 162.5, -32.1 , 0 );
setMoveKey( spep_6 + 46, 1, 165.4, -25.6 , 0 );
setMoveKey( spep_6 + 48, 1, 152.2, -31 , 0 );
setMoveKey( spep_6 + 50, 1, 154.9, -24.5 , 0 );
setMoveKey( spep_6 + 52, 1, 141.4, -29.9 , 0 );
setMoveKey( spep_6 + 54, 1, 143.8, -23.3 , 0 );
setMoveKey( spep_6 + 56, 1, 130.1, -28.7 , 0 );
setMoveKey( spep_6 + 58, 1, 132.2, -22.1 , 0 );
setMoveKey( spep_6 + 60, 1, 118.2, -27.4 , 0 );
setMoveKey( spep_6 + 62, 1, 120.1, -20.8 , 0 );
setMoveKey( spep_6 + 64, 1, 105.9, -26.1 , 0 );
setMoveKey( spep_6 + 66, 1, 107.5, -19.5 , 0 );
setMoveKey( spep_6 + 68, 1, 78.8, -21.3 , 0 );
setMoveKey( spep_6 + 70, 1, 134.2, -53 , 0 );
setMoveKey( spep_6 + 72, 1, 167.7, -25.4 , 0 );
setMoveKey( spep_6 + 74, 1, 249.9, 12.8 , 0 );
setMoveKey( spep_6 + 76, 1, 316.1, 39 , 0 );
setMoveKey( spep_6 + 78, 1, 398.3, 77.2 , 0 );

a=1.7;
setScaleKey( spep_6 + 0, 1, 1.1, 1.1 );
--setScaleKey( spep_6 + 2, 1, 0.41+a, 0.41+a );
--setScaleKey( spep_6 + 4, 1, 0.41+a, 0.41+a );
--setScaleKey( spep_6 + 6, 1, 0.42+a, 0.42+a );
--setScaleKey( spep_6 + 8, 1, 0.42+a, 0.42+a );
--setScaleKey( spep_6 + 10, 1, 0.43+a, 0.43+a );
--setScaleKey( spep_6 + 12, 1, 0.44+a, 0.44+a );
--setScaleKey( spep_6 + 14, 1, 0.44+a, 0.44+a );
--setScaleKey( spep_6 + 16, 1, 0.45+a, 0.45+a );
--setScaleKey( spep_6 + 18, 1, 0.46+a, 0.46+a );
--setScaleKey( spep_6 + 20, 1, 0.47+a, 0.47+a );
--setScaleKey( spep_6 + 22, 1, 0.48+a, 0.48+a );
--setScaleKey( spep_6 + 24, 1, 0.49+a, 0.49+a );
--setScaleKey( spep_6 + 26, 1, 0.5+a, 0.5+a );
--setScaleKey( spep_6 + 28, 1, 0.51+a, 0.51+a );
--setScaleKey( spep_6 + 30, 1, 0.52+a, 0.52+a );
--setScaleKey( spep_6 + 30, 1, 0.52+a, 0.52+a );
--setScaleKey( spep_6 + 32, 1, 0.53+a, 0.53+a );
--setScaleKey( spep_6 + 34, 1, 0.54+a, 0.54+a );
--setScaleKey( spep_6 + 36, 1, 0.55+a, 0.55+a );
--setScaleKey( spep_6 + 38, 1, 0.56+a, 0.56+a );
--setScaleKey( spep_6 + 40, 1, 0.57+a, 0.57+a );
--setScaleKey( spep_6 + 42, 1, 0.58+a, 0.58+a );
--setScaleKey( spep_6 + 44, 1, 0.59+a, 0.59+a );
--setScaleKey( spep_6 + 46, 1, 0.61+a, 0.61+a );
--setScaleKey( spep_6 + 48, 1, 0.62+a, 0.62+a );
--setScaleKey( spep_6 + 50, 1, 0.63+a, 0.63+a );
--setScaleKey( spep_6 + 52, 1, 0.65+a, 0.65+a );
--setScaleKey( spep_6 + 54, 1, 0.66+a, 0.66+a );
--setScaleKey( spep_6 + 56, 1, 0.67+a, 0.67+a );
--setScaleKey( spep_6 + 58, 1, 0.69+a, 0.69+a );
--setScaleKey( spep_6 + 60, 1, 0.7+a, 0.7+a );
--setScaleKey( spep_6 + 62, 1, 0.72+a, 0.72+a );
--setScaleKey( spep_6 + 64, 1, 0.73+a, 0.73+a );
--setScaleKey( spep_6 + 66, 1, 0.75+a, 0.75+a );
setScaleKey( spep_6 + 68, 1, 0.73+a, 0.73+a );
setScaleKey( spep_6 + 70, 1, 0.65+a, 0.65+a );
setScaleKey( spep_6 + 72, 1, 0.59+a, 0.59+a );
setScaleKey( spep_6 + 74, 1, 0.45+a, 0.45+a );
setScaleKey( spep_6 + 76, 1, 0.31+a, 0.31+a );
setScaleKey( spep_6 + 78, 1, 0.17+a, 0.17+a );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 66, 1, 0 );
setRotateKey( spep_6 + 68, 1, 23.7 );
setRotateKey( spep_6 + 70, 1, -16 );
setRotateKey( spep_6 + 72, 1, 0 );
setRotateKey( spep_6 + 78, 1, 0 );

entryFadeBg( spep_6,  0,  100,  0,  21,  36,  51, 255);  -- ネイビー
entryFade(  spep_6+90,  4,  8,  4,  fcolor_r,  fcolor_b,  fcolor_g,  255);  --white fade

--***SE***
playSe(  spep_6,  1022); 
------------------------------------------------------
-- ガッ
------------------------------------------------------
spep_7 = spep_6+100;

--***敵の動き***--
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 107 );

setMoveKey( spep_7 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_7 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_7 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_7 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_7 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_7 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_7 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_7 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_7 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_7 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_7 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_7 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 2, 1, 105 );
setRotateKey( spep_7 + 4, 1, 240 );
setRotateKey( spep_7 + 6, 1, 405 );
setRotateKey( spep_7 + 8, 1, 600 );
setRotateKey( spep_7 + 10, 1, 825 );
setRotateKey( spep_7 + 12, 1, 1080 );
setRotateKey( spep_7 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_7+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_7+8, SE_10);

setDamage( spep_7 +16, 1, 0);  -- ダメージ振動等
setShake(spep_7+8,6,15);
setShake(spep_7+14,15,10);
--エフェクト
ga_zimen = entryEffect( spep_7,  SP_10,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_7,  ga_zimen,  0,  0);
setEffMoveKey(  spep_7+110,  ga_zimen,  0,  0);
setEffScaleKey(  spep_7,  ga_zimen,  1.0,  1.0);
setEffScaleKey(  spep_7+110,  ga_zimen,  1.0,  1.0);
setEffRotateKey(  spep_7,  ga_zimen,  0);
setEffRotateKey(  spep_7+110,  ga_zimen,  0);
setEffAlphaKey(  spep_7,  ga_zimen,  255);
setEffAlphaKey(  spep_7+110,  ga_zimen,  255);

--書き文字--
ctGa = entryEffectLife( spep_7 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_7 + 14, ctGa, 30, 10);

setEffMoveKey( spep_7 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_7+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_7+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_7+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_7+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_7+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_7+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_7 + 14, ctGa, -40 );
setEffRotateKey( spep_7 + 16, ctGa, -31 );
setEffRotateKey( spep_7 + 18, ctGa, -40 );
setEffRotateKey( spep_7 + 20, ctGa, -31 );
setEffRotateKey( spep_7 + 22, ctGa, -40 );
setEffRotateKey( spep_7 + 24, ctGa, -31);
setEffRotateKey( spep_7 + 26, ctGa, -40 );
setEffRotateKey( spep_7 + 28, ctGa, -31);
setEffRotateKey( spep_7 + 30, ctGa, -40 );

setEffAlphaKey( spep_7 + 14, ctGa, 255 );

entryFadeBg( spep_7,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( spep_7+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_7+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_7+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_7+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_7 + 110);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------

------------------------------------------------------
-- 最初〜クリリンフェイント(120F)
------------------------------------------------------
spep_0 = 0;


--エフェクト
fake = entryEffect( spep_0,   SP_01r,   0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_0,  fake,  0,  0,  0);
setEffMoveKey( spep_0+120,  fake,  0,  0,  0);
setEffScaleKey( spep_0,  fake,  1.0,  1.0);
setEffScaleKey( spep_0+120,  fake,  1.0,  1.0);
setEffRotateKey(  spep_0,  fake,  0);
setEffRotateKey(  spep_0+120,  fake,  0);
setEffAlphaKey( spep_0,  fake,  255);
setEffAlphaKey( spep_0+120,  fake,  255);

--流線
ryu1 = entryEffectLife( spep_0,  914,  120,  0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_0,  ryu1,  0,  0,  0);
setEffMoveKey( spep_0+120,  ryu1,  0,  0,  0);
setEffScaleKey( spep_0,  ryu1,  1.0,  1.0);
setEffScaleKey( spep_0+120,  ryu1,  1.0,  1.0);
setEffRotateKey( spep_0,  ryu1,  0);
setEffRotateKey( spep_0+120,  ryu1,  0);
setEffAlphaKey( spep_0,  ryu1,  0);
setEffAlphaKey( spep_0+78,  ryu1,  0);
setEffAlphaKey( spep_0+82,  ryu1,  255);
setEffAlphaKey( spep_0+120,  ryu1,  255);

--***SE***
playSe(  spep_0+34,  1042);

--***エフェクト***
entryFadeBg( spep_0,  0,  120,  0,  21,  36,  51, 255);  -- ネイビー

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0+40 ; --エンドフェイズのフレーム数を置き換える

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

--***回避しなかった場合***
playSe(  spep_0+80,  8);


entryFade(  spep_0+110,  4,  8,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade
------------------------------------------------------
-- クリリンの攻撃(150F)
------------------------------------------------------
spep_1 = spep_0+121;

--***クリリンの攻撃***--
kougeki_f = entryEffect( spep_1,  SP_02r,  0x100,  -1,  0,  0,  0);
setEffMoveKey(  spep_1,  kougeki_f,  0,  0);
setEffMoveKey(  spep_1+150,  kougeki_f,  0,  0);
setEffScaleKey( spep_1,  kougeki_f,  1.0,  1.0);
setEffScaleKey( spep_1+150,  kougeki_f,  1.0,  1.0);
setEffRotateKey(  spep_1,  kougeki_f,  0);
setEffRotateKey(  spep_1+150,  kougeki_f,  0);
setEffAlphaKey(  spep_1,  kougeki_f,  255);
setEffAlphaKey(  spep_1+150,  kougeki_f,  255);

--流線
ryu2 = entryEffectLife( spep_1,  914,  100,  0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_1,  ryu2,  0,  0);
setEffMoveKey( spep_1+100,  ryu2,  0,  0)
setEffScaleKey( spep_1,  ryu2,  1.0,  1.0);
setEffScaleKey( spep_1+100,  ryu2,  1.0,  1.0);
setEffRotateKey( spep_1,  ryu2,  0);
setEffRotateKey( spep_1+100,  ryu2,  0);
setEffAlphaKey(  spep_1,  ryu2,  255);
setEffAlphaKey(  spep_1+90,  ryu2,  255);
setEffAlphaKey(  spep_1+100,  ryu2,  0);

--***クリリンの攻撃_背景***--
kougeki_b = entryEffect( spep_1,  SP_03r,  0x80,  -1,  0,  0,  0);
setEffMoveKey(  spep_1,  kougeki_b,  0,  0);
setEffMoveKey(  spep_1+150,  kougeki_b,  0,  0);
setEffScaleKey( spep_1,  kougeki_b,  1.0,  1.0);
setEffScaleKey( spep_1+150,  kougeki_b,  1.0,  1.0);
setEffRotateKey(  spep_1,  kougeki_b,  0);
setEffRotateKey(  spep_1+150,  kougeki_b,  0);
setEffAlphaKey(  spep_1,  kougeki_b,  255);
setEffAlphaKey(  spep_1+150,  kougeki_b,  255);

--書き文字
ct_qu = entryEffectLife( spep_1 + 130,  10001, 20, 0x100, -1, 0, 229.5, 507.2 );

setEffMoveKey( spep_1 + 130, ct_qu, 79.5, 207.2 , 0 );
setEffMoveKey( spep_1 + 132, ct_qu, 70.3, 220.7 , 0 );
setEffMoveKey( spep_1 + 134, ct_qu, 53.2, 222.5 , 0 );
setEffMoveKey( spep_1 + 136, ct_qu, 54.5, 230.9 , 0 );
setEffMoveKey( spep_1 + 138, ct_qu, 59, 229 , 0 );
setEffMoveKey( spep_1 + 140, ct_qu, 60.5, 232.4 , 0 );
setEffMoveKey( spep_1 + 142, ct_qu, 55.1, 224.7 , 0 );
setEffMoveKey( spep_1 + 144, ct_qu, 55.6, 230.5 , 0 );
setEffMoveKey( spep_1 + 146, ct_qu, 59, 229 , 0 );
setEffMoveKey( spep_1 + 148, ct_qu, 60.5, 232.4 , 0 );
setEffMoveKey( spep_1 + 150, ct_qu, 55.1, 224.7 , 0 );
--setEffMoveKey( spep_1 + 152, ct_qu, 205.6, 530.5 , 0 );
--setEffMoveKey( spep_1 + 154, ct_qu, 209, 529 , 0 );
--setEffMoveKey( spep_1 + 156, ct_qu, 210.5, 532.4 , 0 );
--setEffMoveKey( spep_1 + 158, ct_qu, 205.1, 524.7 , 0 );

setEffScaleKey( spep_1 + 130, ct_qu, 0.1, 0.1 );
setEffScaleKey( spep_1 + 132, ct_qu, 1.55, 1.55 );
setEffScaleKey( spep_1 + 134, ct_qu, 3, 3 );
setEffScaleKey( spep_1 + 136, ct_qu, 2.67, 2.67 );
setEffScaleKey( spep_1 + 138, ct_qu, 2.33, 2.33 );
setEffScaleKey( spep_1 + 140, ct_qu, 2, 2 );
setEffScaleKey( spep_1 + 150, ct_qu, 2, 2 );

setEffRotateKey( spep_1 + 130, ct_qu, -21.3 );
setEffRotateKey( spep_1 + 132, ct_qu, -21.5 );
setEffRotateKey( spep_1 + 150, ct_qu, -21.5 );

setEffAlphaKey( spep_1 + 130, ct_qu, 255 );
setEffAlphaKey( spep_1 + 150, ct_qu, 255 );

--***敵の攻撃***
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 148, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 35, 1, 104 );
changeAnime( spep_1-3 + 36, 1, 104 );
changeAnime( spep_1 +115, 1, 111 );
changeAnime( spep_1 +116, 1, 111 );
changeAnime( spep_1 +117, 1, 111 );
changeAnime( spep_1 +118, 1, 111 );
changeAnime( spep_1 +119, 1, 111 );
changeAnime( spep_1 +120, 1, 111 );
changeAnime( spep_1 +121, 1, 111 );
changeAnime( spep_1 +122, 1, 111 );
changeAnime( spep_1 +123, 1, 111 );
changeAnime( spep_1 +124, 1, 111 );
changeAnime( spep_1 +125, 1, 111 );
changeAnime( spep_1 +126, 1, 111 );
changeAnime( spep_1 +127, 1, 111 );
changeAnime( spep_1 +128, 1, 111 );
changeAnime( spep_1 +129, 1, 111 );
changeAnime( spep_1 +130, 1, 111 );
changeAnime( spep_1 +131, 1, 111 );
changeAnime( spep_1 +132, 1, 111 );
changeAnime( spep_1 +133, 1, 111 );
changeAnime( spep_1 +134, 1, 111 );
changeAnime( spep_1 +135, 1, 111 );
changeAnime( spep_1 +136, 1, 111 );
changeAnime( spep_1 +137, 1, 111 );
changeAnime( spep_1 +138, 1, 111 );
changeAnime( spep_1 +139, 1, 111 );
changeAnime( spep_1 +140, 1, 111 );
changeAnime( spep_1 +141, 1, 111 );
changeAnime( spep_1 +142, 1, 111 );
changeAnime( spep_1 +143, 1, 111 );
changeAnime( spep_1 +144, 1, 111 );
changeAnime( spep_1 +145, 1, 111 );
changeAnime( spep_1 +146, 1, 111 );
changeAnime( spep_1 +147, 1, 111 );
changeAnime( spep_1 +148, 1, 111 );
--changeAnime( spep_1 +149, 1, 111 );
--changeAnime( spep_1 +150, 1, 111 );

--delayAll( spep_1 + 118,  30,  40000);  --遅らせる

setMoveKey( spep_1 + 0, 1, 906, -43.1 , 0 );
--setMoveKey( spep_1 + 2, 1, 861.3, -43.1 , 0 );
setMoveKey( spep_1-3 + 4, 1, 816.6, -43.1 , 0 );
setMoveKey( spep_1-3 + 6, 1, 771.9, -43.1 , 0 );
setMoveKey( spep_1-3 + 8, 1, 727.2, -43.1 , 0 );
setMoveKey( spep_1-3 + 10, 1, 682.4, -43.1 , 0 );
setMoveKey( spep_1-3 + 12, 1, 637.8, -43.1 , 0 );
setMoveKey( spep_1-3 + 14, 1, 593, -43.1 , 0 );
setMoveKey( spep_1-3 + 16, 1, 548.3, -43.1 , 0 );
setMoveKey( spep_1-3 + 18, 1, 503.6, -43.1 , 0 );
setMoveKey( spep_1-3 + 20, 1, 458.8, -43.1 , 0 );
setMoveKey( spep_1-3 + 22, 1, 414.1, -43.1 , 0 );
setMoveKey( spep_1-3 + 24, 1, 369.5, -43 , 0 );
setMoveKey( spep_1-3 + 26, 1, 324.7, -43 , 0 );
setMoveKey( spep_1-3 + 28, 1, 280.1, -43 , 0 );
setMoveKey( spep_1-3 + 30, 1, 235.3, -43 , 0 );
setMoveKey( spep_1-3 + 32, 1, 190.6, -43 , 0 );
setMoveKey( spep_1-3 + 34, 1, 145.8, -43 , 0 );
setMoveKey( spep_1-3 + 37, 1, 101.1, -43 , 0 );
setMoveKey( spep_1-3 + 38, 1, 75, -43 , 0 );
setMoveKey( spep_1-3 + 39, 1, 75, -43 , 0 );---------------------------
setMoveKey( spep_1-3 + 40, 1, 159.8, -16.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, 151.2, -19.8 , 0 );
setMoveKey( spep_1-3 + 44, 1, 130, -47.3 , 0 );
setMoveKey( spep_1-3 + 46, 1, 157.1, -35.3 , 0 );
setMoveKey( spep_1-3 + 48, 1, 163.7, -47.2 , 0 );
setMoveKey( spep_1-3 + 50, 1, 182.4, -39.6 , 0 );
setMoveKey( spep_1-3 + 52, 1, 178, -43.2 , 0 );
setMoveKey( spep_1-3 + 54, 1, 187.9, -43.1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 197.2, -43.1 , 0 );
setMoveKey( spep_1-3 + 58, 1, 206, -43.1 , 0 );
setMoveKey( spep_1-3 + 60, 1, 214.4, -43.1 , 0 );
setMoveKey( spep_1-3 + 62, 1, 222.6, -43 , 0 );
setMoveKey( spep_1-3 + 64, 1, 230.6, -43 , 0 );
setMoveKey( spep_1-3 + 66, 1, 233.8, -43 , 0 );
setMoveKey( spep_1-3 + 68, 1, 236.9, -43 , 0 );
setMoveKey( spep_1-3 + 70, 1, 239.9, -42.9 , 0 );
setMoveKey( spep_1-3 + 72, 1, 243, -42.9 , 0 );
setMoveKey( spep_1-3 + 74, 1, 246, -42.9 , 0 );
setMoveKey( spep_1-3 + 76, 1, 249, -42.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 252, -42.8 , 0 );
setMoveKey( spep_1-3 + 80, 1, 255.1, -46.6 , 0 );
setMoveKey( spep_1-3 + 82, 1, 278, -26.8 , 0 );
setMoveKey( spep_1-3 + 84, 1, 272.2, -38.2 , 0 );
setMoveKey( spep_1-3 + 86, 1, 266.6, -45.9 , 0 );
setMoveKey( spep_1-3 + 88, 1, 270.4, -38.7 , 0 );
setMoveKey( spep_1-3 + 90, 1, 274.4, -43.6 , 0 );
setMoveKey( spep_1-3 + 92, 1, 275.9, -43.6 , 0 );
setMoveKey( spep_1-3 + 94, 1, 277.7, -43.6 , 0 );
setMoveKey( spep_1-3 + 96, 1, 279.8, -43.5 , 0 );
setMoveKey( spep_1-3 + 98, 1, 282, -43.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 284.5, -43.5 , 0 );
setMoveKey( spep_1-3 + 102, 1, 287.3, -43.4 , 0 );
setMoveKey( spep_1-3 + 104, 1, 290.3, -43.4 , 0 );
setMoveKey( spep_1-3 + 106, 1, 293.5, -43.4 , 0 );
setMoveKey( spep_1-3 + 108, 1, 297, -43.3 , 0 );
setMoveKey( spep_1-3 + 110, 1, 300.6, -43.3 , 0 );
setMoveKey( spep_1-3 + 112, 1, 304.6, -43.3 , 0 );
setMoveKey( spep_1-3 + 114, 1, 308.7, -43.2 , 0 );
setMoveKey( spep_1-3 + 116, 1, 313.1, -43.2 , 0 );
--setMoveKey( spep_1-3 + 119, 1, 317.7, -43.2 , 0 );
setMoveKey( spep_1-3 + 118, 1, 204.8, -36.2 , 0 );
setMoveKey( spep_1-3 + 120, 1, 204.8, -36.2 , 0 );
setMoveKey( spep_1-3 + 122, 1, 192.1, -29.2 , 0 );
setMoveKey( spep_1-3 + 124, 1, 182.4, -22.2 , 0 );
setMoveKey( spep_1-3 + 126, 1, 177.4, -15.2 , 0 );
setMoveKey( spep_1-3 + 128, 1, 176.3, -8.2 , 0 );
setMoveKey( spep_1-3 + 130, 1, 177.8, -1.2 , 0 );
setMoveKey( spep_1-3 + 132, 1, 174.5, -1 , 0 );
setMoveKey( spep_1-3 + 134, 1, 180.6, -2.2 , 0 );
setMoveKey( spep_1-3 + 136, 1, 162, 0.4 , 0 );
setMoveKey( spep_1-3 + 138, 1, 175.1, -1.4 , 0 );
setMoveKey( spep_1-3 + 140, 1, 175.5, -1 , 0 );
setMoveKey( spep_1-3 + 142, 1, 176, -0.7 , 0 );
setMoveKey( spep_1-3 + 144, 1, 176.4, -0.3 , 0 );
setMoveKey( spep_1-3 + 146, 1, 176.8, 0 , 0 );
setMoveKey( spep_1 + 148, 1, 177.2, 0.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 38, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 40, 1, 1.83, 1.83 );
setScaleKey( spep_1-3 + 42, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 44, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 46, 1, 1.64, 1.63 );
setScaleKey( spep_1-3 + 48, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 80, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 82, 1, 1.71, 1.71 );
setScaleKey( spep_1-3 + 84, 1, 1.67, 1.67 );
setScaleKey( spep_1-3 + 86, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 119, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 120, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 122, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 124, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 126, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 128, 1, 1.86, 1.86 );
setScaleKey( spep_1-3 + 130, 1, 1.91, 1.91 );
setScaleKey( spep_1-3 + 132, 1, 1.91, 1.91 );
setScaleKey( spep_1-3 + 134, 1, 1.88, 1.88 );
setScaleKey( spep_1-3 + 136, 1, 2.01, 2.01 );
setScaleKey( spep_1-3 + 138, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 144, 1, 1.92, 1.92 );
setScaleKey( spep_1-3 + 146, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 148, 1, 1.93, 1.93 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 38, 1, 0 );
setRotateKey( spep_1-3 + 40, 1, -4.2 );
setRotateKey( spep_1-3 + 42, 1, -7.6 );
setRotateKey( spep_1-3 + 44, 1, -10.3 );
setRotateKey( spep_1-3 + 46, 1, -12.4 );
setRotateKey( spep_1-3 + 48, 1, -14.1 );
setRotateKey( spep_1-3 + 50, 1, -15.4 );
setRotateKey( spep_1-3 + 52, 1, -16.3 );
setRotateKey( spep_1-3 + 54, 1, -17 );
setRotateKey( spep_1-3 + 56, 1, -17.5 );
setRotateKey( spep_1-3 + 58, 1, -17.9 );
setRotateKey( spep_1-3 + 60, 1, -18.1 );
setRotateKey( spep_1-3 + 62, 1, -18.3 );
setRotateKey( spep_1-3 + 64, 1, -18.4 );
setRotateKey( spep_1-3 + 68, 1, -18.4 );
setRotateKey( spep_1-3 + 70, 1, -18.5 );
setRotateKey( spep_1-3 + 84, 1, -18.5 );
setRotateKey( spep_1-3 + 86, 1, -18.6 );
setRotateKey( spep_1-3 + 88, 1, -18.7 );
setRotateKey( spep_1-3 + 90, 1, -18.8 );
setRotateKey( spep_1-3 + 92, 1, -18.9 );
setRotateKey( spep_1-3 + 94, 1, -19 );
setRotateKey( spep_1-3 + 96, 1, -19.1 );
setRotateKey( spep_1-3 + 98, 1, -19.3 );
setRotateKey( spep_1-3 + 100, 1, -19.4 );
setRotateKey( spep_1-3 + 102, 1, -19.6 );
setRotateKey( spep_1-3 + 104, 1, -19.8 );
setRotateKey( spep_1-3 + 106, 1, -20 );
setRotateKey( spep_1-3 + 108, 1, -20.3 );
setRotateKey( spep_1-3 + 110, 1, -20.5 );
setRotateKey( spep_1-3 + 112, 1, -20.8 );
setRotateKey( spep_1-3 + 114, 1, -21.1 );
setRotateKey( spep_1-3 + 116, 1, -21.4 );
--setRotateKey( spep_1-3 + 119, 1, -21.7 );
setRotateKey( spep_1-3 + 118, 1, 0 );
setRotateKey( spep_1-3 + 120, 1, 0 );
setRotateKey( spep_1-3 + 122, 1, 2.2 );
setRotateKey( spep_1-3 + 124, 1, 3.9 );
setRotateKey( spep_1-3 + 126, 1, 5.2 );
setRotateKey( spep_1-3 + 128, 1, 6 );
setRotateKey( spep_1-3 + 130, 1, 6.5 );
setRotateKey( spep_1-3 + 132, 1, 6.8 );
setRotateKey( spep_1 + 148, 1, 6.8 );

--***SE***
playSe(  spep_1,  44);
playSe(  spep_1+38,  1001);  --蹴り
playSe(  spep_1+74,  1007);  --着地
playSe(  spep_1+116,  1004);  --反撃

entryFadeBg( spep_1,  0,  180,  0,  21,  36,  51, 255);  -- ネイビー
entryFade( spep_1+140, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--spep_2 = spep_1+150-28; --delayの調整
spep_2 = spep_1+150;
--***フェードと背景***
--entryFade( spep_2-4, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2,  shuchusen3,  0,  0);
setEffMoveKey(  spep_2+90,  shuchusen3,  0,  0);
setEffScaleKey(  spep_2,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_2+90,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_2,  shuchusen3,  0);
setEffRotateKey(  spep_2+90,  shuchusen3,  0);
setEffAlphaKey(  spep_2,  shuchusen3,  255);
setEffAlphaKey(  spep_2+90,  shuchusen3,  255);

entryFade( spep_2+82,  4,  8,  8,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade
------------------------------------------------------
-- 悟空突進(128F)
------------------------------------------------------
spep_3 = spep_2+90;

--***カットイン***
--speff = entryEffect(  spep_3+40,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_3+40,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--集中線
shuchu = entryEffectLife( spep_3 + 0,  906, 138, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 138, shuchu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchu, 1.17, 1.17 );
setEffScaleKey( spep_3 + 126, shuchu, 1.17, 1.17 );
setEffScaleKey( spep_3 + 128, shuchu, 1.21, 1.21 );
setEffScaleKey( spep_3 + 130, shuchu, 1.23, 1.23 );
setEffScaleKey( spep_3 + 132, shuchu, 1.29, 1.29 );
setEffScaleKey( spep_3 + 134, shuchu, 1.39, 1.39 );
setEffScaleKey( spep_3 + 136, shuchu, 1.54, 1.54 );
setEffScaleKey( spep_3 + 138, shuchu, 1.72, 1.72 );

setEffRotateKey( spep_3 + 0, shuchu, 180 );
setEffRotateKey( spep_3 + 138, shuchu, 180 );

setEffAlphaKey( spep_3 + 0, shuchu, 255 );
setEffAlphaKey( spep_3 + 138, shuchu, 255 );

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+52, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_3 + 52, ctgogo, 255 );
setEffAlphaKey( spep_3 + 82, ctgogo, 255 );
setEffAlphaKey( spep_3 + 83, ctgogo, 255 );
setEffAlphaKey( spep_3 + 84, ctgogo, 191 );
setEffAlphaKey( spep_3 + 86, ctgogo, 128 );
setEffAlphaKey( spep_3 + 121, ctgogo, 64 );
setEffAlphaKey( spep_3 + 122, ctgogo, 0 );
setEffRotateKey(  spep_3+52,  ctgogo,  0);
setEffRotateKey(  spep_3+122,  ctgogo,  0);
setEffScaleKey(  spep_3+52,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3+82,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_3 + 122, ctgogo, -1.07, 1.07 );
setEffMoveKey(  spep_3+52,  ctgogo,  0,  530);
setEffMoveKey(  spep_3+122,  ctgogo,  0,  530);

tosshin = entryEffect( spep_3,  SP_04r,  0x80,  -1,  0,  0,  0);
setEffMoveKey( spep_3,  tosshin,  0,  0);
setEffMoveKey( spep_3+140,  tosshin,  0,  0);
setEffScaleKey( spep_3,  tosshin,  -1.0,  1.0);
setEffScaleKey( spep_3+140, tosshin,  -1.0,  1.0);
setEffAlphaKey( spep_3,  tosshin,  255);
setEffAlphaKey( spep_3+140,  tosshin,  255);
setEffRotateKey( spep_3,  tosshin,  0);
setEffRotateKey( spep_3+140,  tosshin,  0);

entryFadeBg( spep_3,  0,  140,  0,  21,  36,  51, 255);  -- ネイビー
entryFade(  spep_3+132,  4,  6,  4,  fcolor_r,  fcolor_b,  fcolor_g,  255);  --white fade

--***SE***
playSe(  spep_3,  4);
playSe(  spep_3+10,  4);
playSe(  spep_3+20,  4);
playSe(  spep_3+30,  4);
playSe(  spep_3+40,  4);
playSe(  spep_3+52,  SE_04);  --カードカットイン

------------------------------------------------------
-- 伸びろ如意棒(150F)
------------------------------------------------------
spep_4 = spep_3+140;

--エフェクト
nobiro_f = entryEffect(  spep_4,  SP_05r,  0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_4,  nobiro_f,  0,  0);
setEffMoveKey( spep_4+150,  nobiro_f,  0,  0);
setEffScaleKey( spep_4,  nobiro_f,  1.0,  1.0);
setEffScaleKey(  spep_4+150,  nobiro_f,  1.0,  1.0);
setEffRotateKey( spep_4,  nobiro_f,  0);
setEffRotateKey( spep_4+150,  nobiro_f,  0);
setEffAlphaKey( spep_4,  nobiro_f,  255);
setEffAlphaKey( spep_4+150, nobiro_f,  255);

--流線
ryu3 = entryEffectLife( spep_4,  914,  150,  0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_4,  ryu3,  0,  0);
setEffMoveKey( spep_4+150,  ryu3,  0,  0);
setEffScaleKey( spep_4,  ryu3,  1.0,  1.0);
setEffScaleKey( spep_4+150,  ryu3,  1.0,  1.0);
setEffRotateKey( spep_4,  ryu3,  0);
setEffRotateKey( spep_4+150,  ryu3,  0);
setEffAlphaKey( spep_4,  ryu3,  255);
setEffAlphaKey( spep_4+30,  ryu3,  255);
setEffAlphaKey( spep_4+40,  ryu3,  0);
setEffAlphaKey( spep_4+82,  ryu3,  0);
setEffAlphaKey( spep_4+94,  ryu3,  255);
setEffAlphaKey( spep_4+150,  ryu3,  255);

--エフェクト
nobiro_b = entryEffect(  spep_4,  SP_06r,  0x80,  -1,  0,  0,  0);

setEffMoveKey( spep_4,  nobiro_b,  0,  0);
setEffMoveKey( spep_4+150,  nobiro_b,  0,  0);
setEffScaleKey( spep_4,  nobiro_b,  1.0,  1.0);
setEffScaleKey(  spep_4+150,  nobiro_b,  1.0,  1.0);
setEffRotateKey( spep_4,  nobiro_b,  0);
setEffRotateKey( spep_4+150,  nobiro_b,  0);
setEffAlphaKey( spep_4,  nobiro_b,  255);
setEffAlphaKey( spep_4+150, nobiro_b,  255);


entryFadeBg( spep_4,  0,  150,  0,  21,  36,  51, 255);  -- ネイビー
entryFade(  spep_4+140,  4,  8,  4,  fcolor_r,  fcolor_b,  fcolor_g,  255);  --white fade

--***SE***
playSe(  spep_4+16,  1009);
playSe(  spep_4+84,  1010);
--playSe(  spep_4+120,  1018);  --吹っ飛び

------------------------------------------------------
-- かめはめ波(120F)
------------------------------------------------------
spep_5 = spep_4+151;

ryu4 = entryEffectLife( spep_5,  921,  120, 0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_5,  ryu4,  0,  0);
setEffMoveKey(  spep_5+120,  ryu4,  0,  0);

setEffScaleKey(  spep_5,  ryu4,  1.29,  1.21);
setEffScaleKey(  spep_5+120,  ryu4,  1.32,  1.25);

setEffRotateKey(  spep_5,  ryu4,  -168.6);
setEffRotateKey(  spep_5+120,  ryu4,  -166.6);

setEffAlphaKey(  spep_5,  ryu4,  0);
setEffAlphaKey(  spep_5+64,  ryu4,  0);
setEffAlphaKey(  spep_5+65,  ryu4,  255);
setEffAlphaKey(  spep_5+66,  ryu4,  255);
setEffAlphaKey(  spep_5+120,  ryu4,  255);

kame = entryEffect( spep_5,  SP_07r,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_5,  kame,  0,  0);
setEffMoveKey(  spep_5+120,  kame,  0,  0);

setEffScaleKey(  spep_5,  kame,  1.0,  1.0);
setEffScaleKey(  spep_5+120,  kame,  1.0,  1.0);

setEffRotateKey(  spep_5,  kame,  0);
setEffRotateKey(  spep_5+120,  kame,  0);

setEffAlphaKey(  spep_5,  kame,  255);
setEffAlphaKey(  spep_5+120,  kame,  255);

--集中線
shuchu2 = entryEffectLife( spep_5 + 0,  906, 70, 0x100, -1, 0, 0, -136 );

setEffMoveKey( spep_5 + 0, shuchu2, 0, -136 , 0 );
setEffMoveKey( spep_5 + 70, shuchu2, 0, -136 , 0 );

setEffScaleKey( spep_5 + 0, shuchu2, 1.03, 1.27 );
setEffScaleKey( spep_5 + 70, shuchu2, 1.03, 1.27 );

setEffRotateKey( spep_5 + 0, shuchu2, 180 );
setEffRotateKey( spep_5 + 70, shuchu2, 180 );

setEffAlphaKey( spep_5 + 0, shuchu2, 255 );
setEffAlphaKey( spep_5 + 60, shuchu2, 255 );
setEffAlphaKey( spep_5 + 62, shuchu2, 205 );
setEffAlphaKey( spep_5 + 64, shuchu2, 155 );
setEffAlphaKey( spep_5 + 66, shuchu2, 105 );
setEffAlphaKey( spep_5 + 68, shuchu2, 55 );
setEffAlphaKey( spep_5 + 70, shuchu2, 5 );

--***敵の動き***

setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 148, 1, 0 );
changeAnime( spep_4 + 0, 1, 111 );
changeAnime( spep_4 + 1, 1, 111 );
changeAnime( spep_4 + 2, 1, 111 );
changeAnime( spep_4 + 3, 1, 111 );
changeAnime( spep_4 + 4, 1, 111 );
changeAnime( spep_4 + 5, 1, 111 );
changeAnime( spep_4 + 6, 1, 111 );
changeAnime( spep_4 + 7, 1, 111 );
changeAnime( spep_4 + 8, 1, 111 );
changeAnime( spep_4 + 9, 1, 111 );
changeAnime( spep_4 + 10, 1, 111 );
changeAnime( spep_4 + 11, 1, 111 );
changeAnime( spep_4 + 12, 1, 111 );
changeAnime( spep_4 + 13, 1, 111 );
changeAnime( spep_4 + 14, 1, 111 );
changeAnime( spep_4 + 15, 1, 106 );
changeAnime( spep_4 + 83, 1, 108 );

setMoveKey( spep_4 + 0, 1, 31.7, -18.4 , 0 );
--setMoveKey( spep_4 + 2, 1, 59.7, -18.3 , 0 );

setMoveKey( spep_4-3 + 4, 1, 86.7, -18.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 113.8, -18.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 140.8, -18.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, 167.9, -18.3 , 0 );
setMoveKey( spep_4-3 + 12, 1, 195, -18.3 , 0 );
setMoveKey( spep_4-3 + 14, 1, 222, -18.5 , 0 );
setMoveKey( spep_4-3 + 17, 1, 249.1, -18.5 , 0 );
setMoveKey( spep_4-3 + 18, 1, 207.3, -7.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, 195.2, -13.5 , 0 );
setMoveKey( spep_4-3 + 22, 1, 179.1, -3.5 , 0 );
setMoveKey( spep_4-3 + 24, 1, 162.9, -10.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, 129.9, -1.4 , 0 );
setMoveKey( spep_4-3 + 28, 1, 96.8, -8.4 , 0 );
setMoveKey( spep_4-3 + 30, 1, 98.4, 0.6 , 0 );
setMoveKey( spep_4-3 + 32, 1, 100, -9.1 , 0 );
setMoveKey( spep_4-3 + 34, 1, 101.6, -3.4 , 0 );
setMoveKey( spep_4-3 + 36, 1, 103.2, -7.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, 104.8, -4.2 , 0 );
setMoveKey( spep_4-3 + 40, 1, 106.3, -7.4 , 0 );
setMoveKey( spep_4-3 + 42, 1, 108, -3.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 109.6, -6 , 0 );
setMoveKey( spep_4-3 + 46, 1, 111.2, -3.8 , 0 );
setMoveKey( spep_4-3 + 48, 1, 112.8, -4.6 , 0 );
setMoveKey( spep_4-3 + 50, 1, 114.4, -3.9 , 0 );
setMoveKey( spep_4-3 + 52, 1, 115.9, -3.2 , 0 );
setMoveKey( spep_4-3 + 54, 1, 117.5, -2 , 0 );
setMoveKey( spep_4-3 + 56, 1, 119.1, -3.8 , 0 );
setMoveKey( spep_4-3 + 58, 1, 120.7, -1.5 , 0 );
setMoveKey( spep_4-3 + 60, 1, 121.7, -1.1 , 0 );
setMoveKey( spep_4-3 + 62, 1, 124.5, -0.7 , 0 );
setMoveKey( spep_4-3 + 64, 1, 127.5, -0.3 , 0 );
setMoveKey( spep_4-3 + 66, 1, 111.1, 0.1 , 0 );
setMoveKey( spep_4-3 + 68, 1, 114, 0.4 , 0 );
setMoveKey( spep_4-3 + 70, 1, 116.9, 0.8 , 0 );
setMoveKey( spep_4-3 + 72, 1, 119.7, 1.2 , 0 );
setMoveKey( spep_4-3 + 74, 1, 122.6, 1.6 , 0 );
setMoveKey( spep_4-3 + 76, 1, 125.5, 2 , 0 );
setMoveKey( spep_4-3 + 78, 1, 128.3, 2.4 , 0 );
setMoveKey( spep_4-3 + 80, 1, 112.1, 2.7 , 0 );
setMoveKey( spep_4-3 + 82, 1, 115.3, 3.2 , 0 );
setMoveKey( spep_4-3 + 85, 1, 117.9, 3.5 , 0 );
setMoveKey( spep_4-3 + 86, 1, 207.6, -13.2 , 0 );
setMoveKey( spep_4-3 + 88, 1, 298.3, -9 , 0 );
setMoveKey( spep_4-3 + 90, 1, 307.2, -1 , 0 );
setMoveKey( spep_4-3 + 92, 1, 316, -14.5 , 0 );
setMoveKey( spep_4-3 + 94, 1, 324.9, -1 , 0 );
setMoveKey( spep_4-3 + 96, 1, 333.7, -13 , 0 );
setMoveKey( spep_4-3 + 98, 1, 342.6, -3 , 0 );
setMoveKey( spep_4-3 + 100, 1, 298.8, -16.2 , 0 );
setMoveKey( spep_4-3 + 102, 1, 255, -1 , 0 );
setMoveKey( spep_4-3 + 104, 1, 211.4, -6 , 0 );
setMoveKey( spep_4-3 + 106, 1, 197.3, -15 , 0 );
setMoveKey( spep_4-3 + 108, 1, 183.4, -6 , 0 );
setMoveKey( spep_4-3 + 110, 1, 189.1, -2 , 0 );
setMoveKey( spep_4-3 + 112, 1, 196.3, -11 , 0 );
setMoveKey( spep_4-3 + 114, 1, 305.6, -4 , 0 );
setMoveKey( spep_4-3 + 116, 1, 457.4, -9 , 0 );
setMoveKey( spep_4-3 + 118, 1, 609.2, -9 , 0 );
setMoveKey( spep_4-3 + 120, 1, 761.1, -9 , 0 );
setMoveKey( spep_4-3 + 122, 1, 913, -9 , 0 );
setMoveKey( spep_4-3 + 124, 1, 1064.7, -9 , 0 );
setMoveKey( spep_4-3 + 126, 1, 1216.7, -9 , 0 );
setMoveKey( spep_4-3 + 128, 1, 1368.5, -9 , 0 );
setMoveKey( spep_4-3 + 130, 1, 1520.5, -9 , 0 );
setMoveKey( spep_4-3 + 132, 1, 1672.2, -9 , 0 );
setMoveKey( spep_4-3 + 134, 1, 1824.2, -9 , 0 );
setMoveKey( spep_4-3 + 136, 1, 1976, -9 , 0 );
setMoveKey( spep_4-3 + 138, 1, 2127.9, -9 , 0 );
setMoveKey( spep_4-3 + 140, 1, 2279.8, -9 , 0 );
setMoveKey( spep_4-3 + 142, 1, 2431.7, -9 , 0 );
setMoveKey( spep_4-3 + 144, 1, 2583.6, -9 , 0 );
setMoveKey( spep_4-3 + 146, 1, 2735.5, -9 , 0 );
setMoveKey( spep_4-3 + 148, 1, 2887.4, -9 , 0 );

setScaleKey( spep_4 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 18, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 64, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 66, 1, 1.71, 1.71 );
setScaleKey( spep_4 + 78, 1, 1.71, 1.71 );
setScaleKey( spep_4 + 80, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 85, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 86, 1, 1.63, 1.63 );
setScaleKey( spep_4 + 148, 1, 1.63, 1.63 );

setRotateKey( spep_4 + 0, 1, 12.2 );
--setRotateKey( spep_4 + 2, 1, 11.4 );

setRotateKey( spep_4-3 + 4, 1, 10.6 );
setRotateKey( spep_4-3 + 6, 1, 9.8 );
setRotateKey( spep_4-3 + 8, 1, 9 );
setRotateKey( spep_4-3 + 10, 1, 8.2 );
setRotateKey( spep_4-3 + 12, 1, 7.4 );
setRotateKey( spep_4-3 + 14, 1, 6.6 );
setRotateKey( spep_4-3 + 17, 1, 5.8 );
setRotateKey( spep_4-3 + 18, 1, -50.5 );
setRotateKey( spep_4-3 + 20, 1, -48.2 );
setRotateKey( spep_4-3 + 22, 1, -45.8 );
setRotateKey( spep_4-3 + 24, 1, -43.5 );
setRotateKey( spep_4-3 + 26, 1, -43.3 );
setRotateKey( spep_4-3 + 28, 1, -43.2 );
setRotateKey( spep_4-3 + 30, 1, -43 );
setRotateKey( spep_4-3 + 32, 1, -42.9 );
setRotateKey( spep_4-3 + 34, 1, -42.7 );
setRotateKey( spep_4-3 + 36, 1, -42.6 );
setRotateKey( spep_4-3 + 38, 1, -42.4 );
setRotateKey( spep_4-3 + 40, 1, -42.2 );
setRotateKey( spep_4-3 + 42, 1, -42.1 );
setRotateKey( spep_4-3 + 44, 1, -41.9 );
setRotateKey( spep_4-3 + 46, 1, -41.8 );
setRotateKey( spep_4-3 + 48, 1, -41.6 );
setRotateKey( spep_4-3 + 50, 1, -41.5 );
setRotateKey( spep_4-3 + 52, 1, -41.3 );
setRotateKey( spep_4-3 + 54, 1, -41.1 );
setRotateKey( spep_4-3 + 56, 1, -41 );
setRotateKey( spep_4-3 + 58, 1, -40.8 );
setRotateKey( spep_4-3 + 60, 1, -40.7 );
setRotateKey( spep_4-3 + 62, 1, -40.5 );
setRotateKey( spep_4-3 + 64, 1, -40.4 );
setRotateKey( spep_4-3 + 66, 1, -40.2 );
setRotateKey( spep_4-3 + 68, 1, -40.1 );
setRotateKey( spep_4-3 + 70, 1, -39.9 );
setRotateKey( spep_4-3 + 72, 1, -39.7 );
setRotateKey( spep_4-3 + 74, 1, -39.6 );
setRotateKey( spep_4-3 + 76, 1, -39.4 );
setRotateKey( spep_4-3 + 78, 1, -39.3 );
setRotateKey( spep_4-3 + 80, 1, -39.1 );
setRotateKey( spep_4-3 + 82, 1, -39 );
setRotateKey( spep_4-3 + 85, 1, -38.8 );
setRotateKey( spep_4-3 + 86, 1, 0 );




entryFadeBg( spep_5,  0,  120,  0,  21,  36,  51, 255);  -- ネイビー
entryFade(  spep_5+60,  10,  150,  0,  113,  255 , 255,  140);  --なんとも言えない青
entryFade(  spep_5+110,  4,  8,  4,  fcolor_r,  fcolor_b,  fcolor_g,  255);  --white fade

--***SE***
playSe(  spep_5,  SE_03);
playSe(  spep_5+20,  SE_03);
playSe(  spep_5+40,  SE_03);
playSe(  spep_5+60,  1021);

------------------------------------------------------
-- 迫る(100F)
------------------------------------------------------
spep_6 = spep_5+120;

--エフェクト
semaru_f = entryEffect( spep_6,  SP_08r,  0x100,  -1,  0,  0,  0);

setEffMoveKey(  spep_6,  semaru_f,  0,  0);
setEffMoveKey(  spep_6+100,  semaru_f,  0,  0);
setEffScaleKey(  spep_6,  semaru_f,  1.0,  1.0);
setEffScaleKey(  spep_6+100,  semaru_f,  1.0,  1.0);
setEffRotateKey(  spep_6,  semaru_f,  0);
setEffRotateKey(  spep_6+100,  semaru_f,  0);
setEffAlphaKey(  spep_6,  semaru_f,  255);
setEffAlphaKey(  spep_6+100,  semaru_f,  255);

--流線
ryu5 = entryEffectLife( spep_6,  921,  100, 0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_6,  ryu5,  0,  0);
setEffMoveKey(  spep_6+100,  ryu5,  0,  0);
setEffScaleKey( spep_6,  ryu5,  1.32,  1.21);
setEffScaleKey( spep_6+100,  ryu5,  1.32,  1.21);
setEffRotateKey( spep_6,  ryu5,  -12.3);
setEffRotateKey( spep_6+100,  ryu5,  -12.3);
setEffAlphaKey(  spep_6,  ryu5,  255);
setEffAlphaKey(  spep_6+100,  ryu5,  255);
--エフェクト
semaru_b = entryEffect( spep_6,  SP_09r,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_6,  semaru_b,  0,  0);
setEffMoveKey(  spep_6+100,  semaru_b,  0,  0);
setEffScaleKey(  spep_6,  semaru_b,  1.0,  1.0);
setEffScaleKey(  spep_6+100,  semaru_b,  1.0,  1.0);
setEffRotateKey(  spep_6,  semaru_b,  0);
setEffRotateKey(  spep_6+100,  semaru_b,  0);
setEffAlphaKey(  spep_6,  semaru_b,  255);
setEffAlphaKey(  spep_6+100,  semaru_b,  255);

--文字エントリー
ct_zudodo = entryEffectLife( spep_6 + 0,  10014, 98, 0x100, -1, 0, 58.1, 364 );
setEffShake( spep_6,  ct_zudodo,  98,  20);
setEffMoveKey( spep_6 + 0, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6 + 98, ct_zudodo, 34.1, 348 , 0 );
setEffScaleKey( spep_6 + 0, ct_zudodo, 3.0, 3.0 );
setEffScaleKey( spep_6 + 98, ct_zudodo, 3.0, 3.0 );
setEffRotateKey( spep_6 + 0, ct_zudodo, -9 );
setEffRotateKey( spep_6 + 98, ct_zudodo, -9 );
setEffAlphaKey( spep_6 + 0, ct_zudodo, 255 );
setEffAlphaKey( spep_6 + 98, ct_zudodo, 255 );

setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 78, 1, 0 );

changeAnime( spep_6 + 0, 1, 108 );

setMoveKey( spep_6 + 0, 1, 239.2, -44.4 , 0 );
setMoveKey( spep_6 + 2, 1, 247, -34.2 , 0 );
setMoveKey( spep_6 + 4, 1, 236.6, -39.9 , 0 );
setMoveKey( spep_6 + 6, 1, 242.2, -33.7 , 0 );
setMoveKey( spep_6 + 8, 1, 231.6, -39.4 , 0 );
setMoveKey( spep_6 + 10, 1, 236.8, -33.1 , 0 );
setMoveKey( spep_6 + 12, 1, 226, -38.8 , 0 );
setMoveKey( spep_6 + 14, 1, 231, -32.5 , 0 );
setMoveKey( spep_6 + 16, 1, 219.8, -38.2 , 0 );
setMoveKey( spep_6 + 18, 1, 224.6, -31.8 , 0 );
setMoveKey( spep_6 + 20, 1, 213.2, -37.5 , 0 );
setMoveKey( spep_6 + 22, 1, 217.7, -31.1 , 0 );
setMoveKey( spep_6 + 24, 1, 206.1, -36.7 , 0 );
setMoveKey( spep_6 + 26, 1, 210.3, -30.3 , 0 );
setMoveKey( spep_6 + 28, 1, 198.4, -35.9 , 0 );
setMoveKey( spep_6 + 30, 1, 202.3, -29.5 , 0 );
setMoveKey( spep_6 + 32, 1, 190.2, -35 , 0 );
setMoveKey( spep_6 + 34, 1, 193.9, -28.6 , 0 );
setMoveKey( spep_6 + 36, 1, 181.5, -34.1 , 0 );
setMoveKey( spep_6 + 38, 1, 184.9, -27.6 , 0 );
setMoveKey( spep_6 + 40, 1, 172.2, -33.1 , 0 );
setMoveKey( spep_6 + 42, 1, 175.4, -26.6 , 0 );
setMoveKey( spep_6 + 44, 1, 162.5, -32.1 , 0 );
setMoveKey( spep_6 + 46, 1, 165.4, -25.6 , 0 );
setMoveKey( spep_6 + 48, 1, 152.2, -31 , 0 );
setMoveKey( spep_6 + 50, 1, 154.9, -24.5 , 0 );
setMoveKey( spep_6 + 52, 1, 141.4, -29.9 , 0 );
setMoveKey( spep_6 + 54, 1, 143.8, -23.3 , 0 );
setMoveKey( spep_6 + 56, 1, 130.1, -28.7 , 0 );
setMoveKey( spep_6 + 58, 1, 132.2, -22.1 , 0 );
setMoveKey( spep_6 + 60, 1, 118.2, -27.4 , 0 );
setMoveKey( spep_6 + 62, 1, 120.1, -20.8 , 0 );
setMoveKey( spep_6 + 64, 1, 105.9, -26.1 , 0 );
setMoveKey( spep_6 + 66, 1, 107.5, -19.5 , 0 );
setMoveKey( spep_6 + 68, 1, 78.8, -21.3 , 0 );
setMoveKey( spep_6 + 70, 1, 134.2, -53 , 0 );
setMoveKey( spep_6 + 72, 1, 167.7, -25.4 , 0 );
setMoveKey( spep_6 + 74, 1, 249.9, 12.8 , 0 );
setMoveKey( spep_6 + 76, 1, 316.1, 39 , 0 );
setMoveKey( spep_6 + 78, 1, 398.3, 77.2 , 0 );

a=1.7;
setScaleKey( spep_6 + 0, 1, 1.1, 1.1 );
--setScaleKey( spep_6 + 2, 1, 0.41+a, 0.41+a );
--setScaleKey( spep_6 + 4, 1, 0.41+a, 0.41+a );
--setScaleKey( spep_6 + 6, 1, 0.42+a, 0.42+a );
--setScaleKey( spep_6 + 8, 1, 0.42+a, 0.42+a );
--setScaleKey( spep_6 + 10, 1, 0.43+a, 0.43+a );
--setScaleKey( spep_6 + 12, 1, 0.44+a, 0.44+a );
--setScaleKey( spep_6 + 14, 1, 0.44+a, 0.44+a );
--setScaleKey( spep_6 + 16, 1, 0.45+a, 0.45+a );
--setScaleKey( spep_6 + 18, 1, 0.46+a, 0.46+a );
--setScaleKey( spep_6 + 20, 1, 0.47+a, 0.47+a );
--setScaleKey( spep_6 + 22, 1, 0.48+a, 0.48+a );
--setScaleKey( spep_6 + 24, 1, 0.49+a, 0.49+a );
--setScaleKey( spep_6 + 26, 1, 0.5+a, 0.5+a );
--setScaleKey( spep_6 + 28, 1, 0.51+a, 0.51+a );
--setScaleKey( spep_6 + 30, 1, 0.52+a, 0.52+a );
--setScaleKey( spep_6 + 30, 1, 0.52+a, 0.52+a );
--setScaleKey( spep_6 + 32, 1, 0.53+a, 0.53+a );
--setScaleKey( spep_6 + 34, 1, 0.54+a, 0.54+a );
--setScaleKey( spep_6 + 36, 1, 0.55+a, 0.55+a );
--setScaleKey( spep_6 + 38, 1, 0.56+a, 0.56+a );
--setScaleKey( spep_6 + 40, 1, 0.57+a, 0.57+a );
--setScaleKey( spep_6 + 42, 1, 0.58+a, 0.58+a );
--setScaleKey( spep_6 + 44, 1, 0.59+a, 0.59+a );
--setScaleKey( spep_6 + 46, 1, 0.61+a, 0.61+a );
--setScaleKey( spep_6 + 48, 1, 0.62+a, 0.62+a );
--setScaleKey( spep_6 + 50, 1, 0.63+a, 0.63+a );
--setScaleKey( spep_6 + 52, 1, 0.65+a, 0.65+a );
--setScaleKey( spep_6 + 54, 1, 0.66+a, 0.66+a );
--setScaleKey( spep_6 + 56, 1, 0.67+a, 0.67+a );
--setScaleKey( spep_6 + 58, 1, 0.69+a, 0.69+a );
--setScaleKey( spep_6 + 60, 1, 0.7+a, 0.7+a );
--setScaleKey( spep_6 + 62, 1, 0.72+a, 0.72+a );
--setScaleKey( spep_6 + 64, 1, 0.73+a, 0.73+a );
--setScaleKey( spep_6 + 66, 1, 0.75+a, 0.75+a );
setScaleKey( spep_6 + 68, 1, 0.73+a, 0.73+a );
setScaleKey( spep_6 + 70, 1, 0.65+a, 0.65+a );
setScaleKey( spep_6 + 72, 1, 0.59+a, 0.59+a );
setScaleKey( spep_6 + 74, 1, 0.45+a, 0.45+a );
setScaleKey( spep_6 + 76, 1, 0.31+a, 0.31+a );
setScaleKey( spep_6 + 78, 1, 0.17+a, 0.17+a );
setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 66, 1, 0 );
setRotateKey( spep_6 + 68, 1, 23.7 );
setRotateKey( spep_6 + 70, 1, -16 );
setRotateKey( spep_6 + 72, 1, 0 );
setRotateKey( spep_6 + 78, 1, 0 );

entryFadeBg( spep_6,  0,  100,  0,  21,  36,  51, 255);  -- ネイビー
entryFade(  spep_6+90,  4,  8,  4,  fcolor_r,  fcolor_b,  fcolor_g,  255);  --white fade

--***SE***
playSe(  spep_6,  1022); 
------------------------------------------------------
-- ガッ
------------------------------------------------------
spep_7 = spep_6+100;

--***敵の動き***--
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 107 );

setMoveKey( spep_7 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_7 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_7 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_7 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_7 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_7 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_7 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_7 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_7 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_7 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_7 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_7 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 2, 1, 105 );
setRotateKey( spep_7 + 4, 1, 240 );
setRotateKey( spep_7 + 6, 1, 405 );
setRotateKey( spep_7 + 8, 1, 600 );
setRotateKey( spep_7 + 10, 1, 825 );
setRotateKey( spep_7 + 12, 1, 1080 );
setRotateKey( spep_7 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_7+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_7+8, SE_10);

setDamage( spep_7 +16, 1, 0);  -- ダメージ振動等
setShake(spep_7+8,6,15);
setShake(spep_7+14,15,10);
--エフェクト
ga_zimen = entryEffect( spep_7,  SP_10r,  0x80,  -1,  0,  0,  0);

setEffMoveKey(  spep_7,  ga_zimen,  0,  0);
setEffMoveKey(  spep_7+110,  ga_zimen,  0,  0);
setEffScaleKey(  spep_7,  ga_zimen,  1.0,  1.0);
setEffScaleKey(  spep_7+110,  ga_zimen,  1.0,  1.0);
setEffRotateKey(  spep_7,  ga_zimen,  0);
setEffRotateKey(  spep_7+110,  ga_zimen,  0);
setEffAlphaKey(  spep_7,  ga_zimen,  255);
setEffAlphaKey(  spep_7+110,  ga_zimen,  255);

--書き文字--
ctGa = entryEffectLife( spep_7 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_7 + 14, ctGa, 30, 10);

setEffMoveKey( spep_7 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_7 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_7+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_7+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_7+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_7+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_7+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_7+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_7 + 14, ctGa, -40 );
setEffRotateKey( spep_7 + 16, ctGa, -31 );
setEffRotateKey( spep_7 + 18, ctGa, -40 );
setEffRotateKey( spep_7 + 20, ctGa, -31 );
setEffRotateKey( spep_7 + 22, ctGa, -40 );
setEffRotateKey( spep_7 + 24, ctGa, -31);
setEffRotateKey( spep_7 + 26, ctGa, -40 );
setEffRotateKey( spep_7 + 28, ctGa, -31);
setEffRotateKey( spep_7 + 30, ctGa, -40 );

setEffAlphaKey( spep_7 + 14, ctGa, 255 );

entryFadeBg( spep_7,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( spep_7+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_7+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_7+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_7+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_7+16);
entryFade( spep_7+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_7 + 110);
end

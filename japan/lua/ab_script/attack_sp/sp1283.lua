--1017070_トランクス（未来）（青年期）_シャイニングスラッシュ sp1283

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
SP_01 = 153457;  --トランクス走る
SP_02 = 153459;  --走る時の背景
SP_03 = 153460;  --ジャンプから斬撃
SP_04 = 153462;  --ジャンプ背景
SP_05 = 153463;  --被弾
SP_06 = 153464;  --被弾背景
SP_07 = 153465;  --突進
SP_08 = 153467;  --迫る
SP_09 = 153469;  --迫る背景
SP_10 = 153470;  --爆破
SP_11 = 153472;  --爆破背景

--***敵側***
SP_01r = 153458;  --トランクス走る
SP_03r = 153461;  --ジャンプ
SP_07r = 153466;  --トランクス突進
SP_08r = 153468;  --迫る
SP_10r = 153471;  --斬り付け


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
setMoveKey(   0,   1,    192.1, 278.2 , 0 );
setMoveKey(   1,   1,    192.1, 278.2 , 0 );
setMoveKey(   2,   1,    192.1, 278.2 , 0 );
setMoveKey(   3,   1,    192.1, 278.2 , 0 );
setMoveKey(   4,   1,    192.1, 278.2 , 0 );
setMoveKey(   5,   1,    192.1, 278.2 , 0 );
setMoveKey(   6,   1,    192.1, 278.2 , 0 );
setScaleKey(   1,   1, 0.5, 0.5 );
setScaleKey(   2,   1, 0.5, 0.5 );
setScaleKey(   3,   1, 0.5, 0.5 );
setScaleKey(   4,   1, 0.5, 0.5 );
setScaleKey(   5,   1, 0.5, 0.5 );
setScaleKey(   6,   1, 0.5, 0.5 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 敵に向かって走る(128F)
------------------------------------------------------
spep_0 = 0;

--***走る***
dash = entryEffectLife(  spep_0,  SP_01, 124, 0x100,  -1,  0,  0,  0);  --走る

setEffScaleKey(  spep_0,  dash,  1.0,  1.0);
setEffScaleKey(  spep_0+124,  dash,  1.0,  1.0);
setEffMoveKey(  spep_0,  dash,  0,  0);
setEffMoveKey(  spep_0+124,  dash,  0,  0);
setEffRotateKey(  spep_0,  dash,  0);
setEffRotateKey(  spep_0+124,  dash,  0);
setEffAlphaKey(  spep_0,  dash,  255);
setEffAlphaKey(  spep_0+124,  dash,  255);

--***集中線***
shuchusen1 = entryEffectLife( spep_0, 906, 124, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffShake(  spep_0,  shuchusen1,  120,  10);
setEffScaleKey(  spep_0,  shuchusen1,  1.40,  1.45);
setEffScaleKey(  spep_0+124,  shuchusen1,  1.40,  1.45);
setEffMoveKey(  spep_0,  shuchusen1,  0,  0);
setEffMoveKey(  spep_0+124,  shuchusen1,  0,  0);
setEffRotateKey(  spep_0,  shuchusen1,  0);
setEffRotateKey(  spep_0+124,  shuchusen1,  0);
setEffAlphaKey(  spep_0,  shuchusen1,  255);
setEffAlphaKey(  spep_0+124,  shuchusen1,  255);

--***敵の動き***
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 125, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );  --アイドリング

setMoveKey( spep_0 + 0, 1, 192.1, 278.2 , 0 );
setMoveKey( spep_0 + 2, 1, 192, 276.4 , 0 );
setMoveKey( spep_0 + 4, 1, 192, 274.6 , 0 );
setMoveKey( spep_0 + 6, 1, 192, 272.9 , 0 );
setMoveKey( spep_0 + 8, 1, 192, 271.2 , 0 );
setMoveKey( spep_0 + 10, 1, 192, 269.6 , 0 );
setMoveKey( spep_0 + 12, 1, 192, 268 , 0 );
setMoveKey( spep_0 + 14, 1, 192, 266.5 , 0 );
setMoveKey( spep_0 + 16, 1, 192, 265.1 , 0 );
setMoveKey( spep_0 + 18, 1, 192, 263.7 , 0 );
setMoveKey( spep_0 + 20, 1, 192, 262.4 , 0 );
setMoveKey( spep_0 + 22, 1, 192, 261.2 , 0 );
setMoveKey( spep_0 + 24, 1, 192, 260 , 0 );
setMoveKey( spep_0 + 26, 1, 192, 258.9 , 0 );
setMoveKey( spep_0 + 28, 1, 192, 257.8 , 0 );
setMoveKey( spep_0 + 30, 1, 192, 256.8 , 0 );
setMoveKey( spep_0 + 32, 1, 192, 255.8 , 0 );
setMoveKey( spep_0 + 34, 1, 192, 254.9 , 0 );
setMoveKey( spep_0 + 36, 1, 192, 254 , 0 );
setMoveKey( spep_0 + 38, 1, 192, 253.1 , 0 );
setMoveKey( spep_0 + 40, 1, 192, 252.3 , 0 );
setMoveKey( spep_0 + 42, 1, 192, 251.5 , 0 );
setMoveKey( spep_0 + 44, 1, 192, 250.8 , 0 );
setMoveKey( spep_0 + 46, 1, 192, 250.1 , 0 );
setMoveKey( spep_0 + 48, 1, 192, 249.4 , 0 );
setMoveKey( spep_0 + 50, 1, 192, 248.7 , 0 );
setMoveKey( spep_0 + 52, 1, 192, 248 , 0 );
setMoveKey( spep_0 + 54, 1, 192, 247.4 , 0 );
setMoveKey( spep_0 + 56, 1, 192, 246.8 , 0 );
setMoveKey( spep_0 + 58, 1, 192, 246.2 , 0 );
setMoveKey( spep_0 + 60, 1, 192, 245.7 , 0 );
setMoveKey( spep_0 + 62, 1, 192, 245.2 , 0 );
setMoveKey( spep_0 + 64, 1, 192, 244.6 , 0 );
setMoveKey( spep_0 + 66, 1, 192, 244.1 , 0 );
setMoveKey( spep_0 + 68, 1, 192, 243.6 , 0 );
setMoveKey( spep_0 + 70, 1, 192, 243.2 , 0 );
setMoveKey( spep_0 + 72, 1, 192, 242.7 , 0 );
setMoveKey( spep_0 + 74, 1, 192, 242.3 , 0 );
setMoveKey( spep_0 + 76, 1, 192, 241.8 , 0 );
setMoveKey( spep_0 + 78, 1, 192, 241.4 , 0 );
setMoveKey( spep_0 + 80, 1, 192, 241 , 0 );
setMoveKey( spep_0 + 82, 1, 192, 240.6 , 0 );
setMoveKey( spep_0 + 84, 1, 192, 240.3 , 0 );
setMoveKey( spep_0 + 86, 1, 192, 239.9 , 0 );
setMoveKey( spep_0 + 88, 1, 192, 239.5 , 0 );
setMoveKey( spep_0 + 90, 1, 192, 239.2 , 0 );
setMoveKey( spep_0 + 92, 1, 192, 238.8 , 0 );
setMoveKey( spep_0 + 94, 1, 192, 238.5 , 0 );
setMoveKey( spep_0 + 96, 1, 192, 238.2 , 0 );
setMoveKey( spep_0 + 98, 1, 192, 237.9 , 0 );
setMoveKey( spep_0 + 100, 1, 192, 237.6 , 0 );
setMoveKey( spep_0 + 102, 1, 192, 237.3 , 0 );
setMoveKey( spep_0 + 104, 1, 192, 237 , 0 );
setMoveKey( spep_0 + 106, 1, 192, 236.7 , 0 );
setMoveKey( spep_0 + 108, 1, 192, 236.4 , 0 );
setMoveKey( spep_0 + 110, 1, 192, 236.2 , 0 );
setMoveKey( spep_0 + 112, 1, 192, 235.9 , 0 );
setMoveKey( spep_0 + 114, 1, 192, 235.6 , 0 );
setMoveKey( spep_0 + 116, 1, 192, 235.4 , 0 );
setMoveKey( spep_0 + 118, 1, 192, 235.1 , 0 );
setMoveKey( spep_0 + 120, 1, 192, 234.9 , 0 );
setMoveKey( spep_0 + 122, 1, 192, 234.7 , 0 );
setMoveKey( spep_0 + 124, 1, 192, 234.5 , 0 );
setMoveKey( spep_0 + 126, 1, 191.9, 234.2 , 0 );

setScaleKey( spep_0 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 6, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 8, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 20, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 22, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 32, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 34, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 44, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 46, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 52, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 54, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 62, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 64, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 70, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 72, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 78, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 80, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 84, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 86, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 90, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 92, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 94, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 96, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 100, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 102, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 104, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 106, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 108, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 110, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 112, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 114, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 116, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 118, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 120, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 122, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 124, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 126, 1, 0.7, 0.7 );

setRotateKey( spep_0 + 0, 1, 5 );
setRotateKey( spep_0 + 126, 1, 5 );


dashBG = entryEffect(  spep_0,  SP_02,  0x80,  -1,  0,  0,  0);  --走る背景

setEffScaleKey(  spep_0,  dashBG,  1.0,  1.0);
setEffScaleKey(  spep_0+125,  dashBG,  1.0,  1.0);
setEffMoveKey(  spep_0,  dashBG,  0,  0);
setEffMoveKey(  spep_0+125,  dashBG,  0,  0);
setEffRotateKey(  spep_0,  dashBG,  0);
setEffRotateKey(  spep_0+125,  dashBG,  0);
setEffAlphaKey(  spep_0,  dashBG,  255);
setEffAlphaKey(  spep_0+125,  dashBG,  255);

entryFadeBg( spep_0,  0,  125,  0,  0,  0,  0,  255);  --黒背景

--***音***
playSe(  spep_0,  1072);  --走る
playSe(  spep_0 +10,  4);
setSeVolume( spep_0 +10,  4,  40);
playSe(  spep_0 +30,  4);
setSeVolume( spep_0 +30,  4,  40);
playSe(  spep_0 +50,  4);
setSeVolume( spep_0 +50,  4,  40);
playSe(  spep_0 +70,  4);
setSeVolume( spep_0 +70,  4,  40);
playSe(  spep_0 +90,  4);
setSeVolume( spep_0 +90,  4,  40);
playSe(  spep_0 +110,  4);
setSeVolume( spep_0 +110,  4,  40);
------------------------------------------------------
-- 斬撃を飛ばす(114F)
------------------------------------------------------
spep_1 = spep_0 + 125;

a = 3;

--***ジャンプ***
jumpBG = entryEffect(  spep_1,  SP_04,  0x80,  -1,  0,  0,  0);  --ジャンプ

setEffScaleKey(  spep_1,  jumpBG,  1.0,  1.0);
setEffScaleKey(  spep_1+110,  jumpBG,  1.0,  1.0);
setEffMoveKey(  spep_1,  jumpBG,  0,  0);
setEffMoveKey(  spep_1+110,  jumpBG,  0,  0);
setEffRotateKey(  spep_1,  jumpBG,  0);
setEffRotateKey(  spep_1+110,  jumpBG,  0);
setEffAlphaKey(  spep_1,  jumpBG,  255);
setEffAlphaKey(  spep_1+110,  jumpBG,  255);

jump = entryEffect(  spep_1,  SP_03,  0x80,  -1,  0,  0,  0);  --ジャンプ

setEffScaleKey(  spep_1,  jump,  1.0,  1.0);
setEffScaleKey(  spep_1+110,  jump,  1.0,  1.0);
setEffMoveKey(  spep_1,  jump,  0,  0);
setEffMoveKey(  spep_1+110,  jump,  0,  0);
setEffRotateKey(  spep_1,  jump,  0);
setEffRotateKey(  spep_1+110,  jump,  0);
setEffAlphaKey(  spep_1,  jump,  255);
setEffAlphaKey(  spep_1+110,  jump,  255);


entryFadeBg( spep_1,  0,  114,  0,  0,  0,  0,  255);  --黒背景

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+10 ; --エンドフェイズのフレーム数を置き換える

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

--***書き文字***

ct_ba = entryEffectLife( spep_1 -a + 14,  10022, 50, 0x100, -1, 0, 113.3, -370.5 );

setEffMoveKey( spep_1 -a + 14, ct_ba, 113.3, -370.5 , 0 );
setEffMoveKey( spep_1 -a + 16, ct_ba, 110.1, -357.9 , 0 );
setEffMoveKey( spep_1 -a + 18, ct_ba, 116.7, -370.1 , 0 );
setEffMoveKey( spep_1 -a + 20, ct_ba, 106.4, -363.2 , 0 );
setEffMoveKey( spep_1 -a + 22, ct_ba, 116.3, -358.9 , 0 );
setEffMoveKey( spep_1 -a + 24, ct_ba, 110.4, -368.5 , 0 );
setEffMoveKey( spep_1 -a + 26, ct_ba, 114.5, -353.7 , 0 );
setEffMoveKey( spep_1 -a + 28, ct_ba, 114.5, -363.2 , 0 );
setEffMoveKey( spep_1 -a + 30, ct_ba, 111.1, -355.3 , 0 );
setEffMoveKey( spep_1 -a + 32, ct_ba, 112.6, -361.2 , 0 );
setEffMoveKey( spep_1 -a + 34, ct_ba, 117.3, -354.1 , 0 );
setEffMoveKey( spep_1 -a + 36, ct_ba, 112.7, -359.2 , 0 );
setEffMoveKey( spep_1 -a + 38, ct_ba, 114.8, -349 , 0 );
setEffMoveKey( spep_1 -a + 40, ct_ba, 113.9, -354.4 , 0 );
setEffMoveKey( spep_1 -a + 42, ct_ba, 114.3, -347.8 , 0 );
setEffMoveKey( spep_1 -a + 44, ct_ba, 116.2, -353.3 , 0 );
setEffMoveKey( spep_1 -a + 46, ct_ba, 117.3, -347.1 , 0 );
setEffMoveKey( spep_1 -a + 48, ct_ba, 118.5, -349.7 , 0 );
setEffMoveKey( spep_1 -a + 50, ct_ba, 116.5, -346.8 , 0 );
setEffMoveKey( spep_1 -a + 52, ct_ba, 119.6, -347.1 , 0 );
setEffMoveKey( spep_1 -a + 54, ct_ba, 117.4, -344.6 , 0 );
setEffMoveKey( spep_1 -a + 56, ct_ba, 119.8, -344.4 , 0 );
setEffMoveKey( spep_1 -a + 58, ct_ba, 119.2, -342.1 , 0 );
setEffMoveKey( spep_1 -a + 60, ct_ba, 120.1, -341.5 , 0 );
setEffMoveKey( spep_1 -a + 62, ct_ba, 120.4, -340.3 , 0 );
setEffMoveKey( spep_1 -a + 64, ct_ba, 119.6, -346.7 , 0 );

setEffScaleKey( spep_1 -a + 14, ct_ba, 2, 2 );
setEffScaleKey( spep_1 -a + 16, ct_ba, 2.01, 2.01 );
setEffScaleKey( spep_1 -a + 18, ct_ba, 2.02, 2.02 );
setEffScaleKey( spep_1 -a + 20, ct_ba, 2.02, 2.02 );
setEffScaleKey( spep_1 -a + 22, ct_ba, 2.03, 2.03 );
setEffScaleKey( spep_1 -a + 24, ct_ba, 2.04, 2.04 );
setEffScaleKey( spep_1 -a + 26, ct_ba, 2.05, 2.05 );
setEffScaleKey( spep_1 -a + 28, ct_ba, 2.06, 2.06 );
setEffScaleKey( spep_1 -a + 30, ct_ba, 2.06, 2.06 );
setEffScaleKey( spep_1 -a + 32, ct_ba, 2.07, 2.07 );
setEffScaleKey( spep_1 -a + 34, ct_ba, 2.08, 2.08 );
setEffScaleKey( spep_1 -a + 36, ct_ba, 2.09, 2.09 );
setEffScaleKey( spep_1 -a + 38, ct_ba, 2.1, 2.1 );
setEffScaleKey( spep_1 -a + 40, ct_ba, 2.1, 2.1 );
setEffScaleKey( spep_1 -a + 42, ct_ba, 2.11, 2.11 );
setEffScaleKey( spep_1 -a + 44, ct_ba, 2.12, 2.12 );
setEffScaleKey( spep_1 -a + 46, ct_ba, 2.13, 2.13 );
setEffScaleKey( spep_1 -a + 48, ct_ba, 2.14, 2.14 );
setEffScaleKey( spep_1 -a + 50, ct_ba, 2.14, 2.14 );
setEffScaleKey( spep_1 -a + 52, ct_ba, 2.15, 2.15 );
setEffScaleKey( spep_1 -a + 54, ct_ba, 2.16, 2.16 );
setEffScaleKey( spep_1 -a + 56, ct_ba, 2.17, 2.17 );
setEffScaleKey( spep_1 -a + 58, ct_ba, 2.18, 2.18 );
setEffScaleKey( spep_1 -a + 60, ct_ba, 2.18, 2.18 );
setEffScaleKey( spep_1 -a + 62, ct_ba, 2.19, 2.19 );
setEffScaleKey( spep_1 -a + 64, ct_ba, 2.2, 2.2 );

setEffRotateKey( spep_1 -a + 14, ct_ba, 32 );
setEffRotateKey( spep_1 -a + 64, ct_ba, 32 );

setEffAlphaKey( spep_1 -a + 14, ct_ba, 255 );
setEffAlphaKey( spep_1 -a + 64, ct_ba, 255 );


--***集中線***
shuchusen1a = entryEffectLife( spep_1 + 74,  906, 36, 0x100, -1, 0, 200, 0 );  --集中線

setEffShake(  spep_1 +74, shuchusen1a,  36,  10 );
setEffMoveKey( spep_1 + 74, shuchusen1a, 200, 0 , 0 );
setEffMoveKey( spep_1 + 110, shuchusen1a, 200, 0 , 0 );
setEffScaleKey( spep_1 + 74, shuchusen1a, 1.6, 1.6 );
setEffScaleKey( spep_1 + 110, shuchusen1a, 1.6, 1.6 );
setEffRotateKey( spep_1 + 74, shuchusen1a, 0 );
setEffRotateKey( spep_1 + 110, shuchusen1a, 0 );
setEffAlphaKey( spep_1 + 74, shuchusen1a, 255 );
setEffAlphaKey( spep_1 + 108, shuchusen1a, 255 );
setEffAlphaKey( spep_1 + 109, shuchusen1a, 0 );
setEffAlphaKey( spep_1 + 110, shuchusen1a, 0 );

--***音***
playSe(  spep_1 + 12,  1013);  --バッ
playSe(  spep_1 + 20,  8);
playSe(  spep_1 + 76,  1061);  --斬撃

------------------------------------------------------
-- 被弾(74F)
------------------------------------------------------
spep_2 = spep_1 + 110;

hidan = entryEffect(  spep_2,  SP_05,  0x100,  -1,  0,  0,  0);  --被弾

setEffMoveKey(  spep_2,  hidan,  0,  0,  0);
setEffMoveKey(  spep_2+74,  hidan,  0,  0,  0);
setEffScaleKey(  spep_2,  hidan,  1.0,  1.0);
setEffScaleKey(  spep_2+74,  hidan,  1.0,  1.0);
setEffRotateKey(  spep_2,  hidan,  0);
setEffRotateKey(  spep_2+74,  hidan,  0);
setEffAlphaKey(  spep_2,  hidan,  255);
setEffAlphaKey(  spep_2+74,  hidan,  255);


--***敵の動き***
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 72, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 + 26 -a, 1, 108 );

setShakeChara(  spep_2 +26 -a,  1,  46,  20);  --揺れ
setMoveKey( spep_2 + 0, 1, -60.1, -59.8 , 0 );
setMoveKey( spep_2 + 2, 1, -47.4, -47.2 , 0 );
setMoveKey( spep_2 + 4, 1, -22.6, -22.4 , 0 );
setMoveKey( spep_2 + 6, 1, -12.7, -12.6 , 0 );
setMoveKey( spep_2 + 8, 1, -7.7, -7.6 , 0 );
setMoveKey( spep_2 + 10, 1, -4.8, -4.7 , 0 );
setMoveKey( spep_2 + 12, 1, -3, -3 , 0 );
setMoveKey( spep_2 + 14, 1, -2, -1.9 , 0 );
setMoveKey( spep_2 + 16, 1, -1.3, -1.3 , 0 );
setMoveKey( spep_2 + 18, 1, -0.9, -0.8 , 0 );
setMoveKey( spep_2 + 20, 1, -0.5, -0.5 , 0 );
setMoveKey( spep_2 + 22, 1, -0.3, -0.2 , 0 );
--setMoveKey( spep_2 + 25, 1, 0, -0.1 , 0 );
setMoveKey( spep_2 + 26 -a, 1, 20, 40.1 , 0 );
setMoveKey( spep_2 + 28 -a, 1, 60, 80.1 , 0 );
setMoveKey( spep_2 + 40 -a, 1, 60, 80.1 , 0 );
setMoveKey( spep_2 + 42 -a, 1, 93.9, 119.8 , 0 );
setMoveKey( spep_2 + 44 -a, 1, 115.9, 152.8 , 0 );
setMoveKey( spep_2 + 46 -a, 1, 204.6, 285.1 , 0 );
setMoveKey( spep_2 + 48 -a, 1, 240.5, 338.5 , 0 );
setMoveKey( spep_2 + 50 -a, 1, 263.2, 372.4 , 0 );
setMoveKey( spep_2 + 52 -a, 1, 279.5, 396.7 , 0 );
setMoveKey( spep_2 + 54 -a, 1, 291.7, 414.9 , 0 );
setMoveKey( spep_2 + 56 -a, 1, 301.2, 429.1 , 0 );
setMoveKey( spep_2 + 58 -a, 1, 308.7, 440.2 , 0 );
setMoveKey( spep_2 + 60 -a, 1, 314.6, 449 , 0 );
setMoveKey( spep_2 + 62 -a, 1, 319.3, 456.1 , 0 );
setMoveKey( spep_2 + 64 -a, 1, 323.1, 461.8 , 0 );
setMoveKey( spep_2 + 66 -a, 1, 326.3, 466.4 , 0 );
setMoveKey( spep_2 + 68 -a, 1, 328.9, 470.4 , 0 );
setMoveKey( spep_2 + 70 -a, 1, 331.3, 473.9 , 0 );
setMoveKey( spep_2 + 72, 1, 333.6, 477.3 , 0 );

setScaleKey( spep_2 + 0, 1, 2, 2 );
setScaleKey( spep_2 + 2, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 4, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 6, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 8, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 10, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 12, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 14, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 16, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 18, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 42 -a, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 44 -a, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 46 -a, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 48 -a, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 50 -a, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 52 -a, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 54 -a, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 56 -a, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 58 -a, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 60 -a, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 62 -a, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 64 -a, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 66 -a, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 68 -a, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 70 -a, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 72, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 25, 1, 0 );
setRotateKey( spep_2 + 26 -4, 1, 0 );
setRotateKey( spep_2 + 26 -a, 1, 10 );
setRotateKey( spep_2 + 40 -a, 1, 10 );
setRotateKey( spep_2 + 40 -2, 1, 10 );
setRotateKey( spep_2 + 42 -a, 1, -10 );
setRotateKey( spep_2 + 72, 1, -10 );


hidanBG = entryEffect(  spep_2,  SP_06,  0x80,  -1,  0,  0,  0);  --被弾

setEffMoveKey(  spep_2,  hidanBG,  0,  0,  0);
setEffMoveKey(  spep_2+74,  hidanBG,  0,  0,  0);
setEffScaleKey(  spep_2,  hidanBG,  1.0,  1.0);
setEffScaleKey(  spep_2+74,  hidanBG,  1.0,  1.0);
setEffRotateKey(  spep_2,  hidanBG,  0);
setEffRotateKey(  spep_2+74,  hidanBG,  0);
setEffAlphaKey(  spep_2,  hidanBG,  255);
setEffAlphaKey(  spep_2+74,  hidanBG,  255);

entryFadeBg( spep_2,  0,  74,  0,  0,  0,  0,  255);  --黒背景

--***音***
playSe(  spep_2+22, 1026);  --ヒット

entryFade(  spep_2+70,  2,  4,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 突進(120F)
------------------------------------------------------
spep_3 = spep_2 + 74;

--***集中線***
shuchusen3 = entryEffectLife( spep_3 + 10, 906, 110, 0x100,  -1, 0,  0,  0);

setEffShake(  spep_3 +10,  shuchusen3,  90,  10);
setEffMoveKey(  spep_3 +10,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+120,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3 +10,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+120,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_3 +10,  shuchusen3,  0);
setEffRotateKey(  spep_3+120,  shuchusen3,  0);
setEffAlphaKey(  spep_3 +10,  shuchusen3,  255);
setEffAlphaKey(  spep_3+120,  shuchusen3,  255);

tosshin = entryEffect(  spep_3,  SP_07,  0x100,  -1,  0,  0,  0);  --突進

setEffMoveKey(  spep_3,  tosshin,  0,  0,  0);
setEffMoveKey(  spep_3+120,  tosshin,  0,  0,  0);
setEffScaleKey(  spep_3,  tosshin,  1.0,  1.0);
setEffScaleKey(  spep_3+120,  tosshin,  1.0,  1.0);
setEffRotateKey(  spep_3,  tosshin,  0);
setEffRotateKey(  spep_3+120,  tosshin,  0);
setEffAlphaKey(  spep_3,  tosshin,  255);
setEffAlphaKey(  spep_3+120,  tosshin,  255);

--***カットイン***
speff = entryEffect(  spep_3+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+22, 190006, 68, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_3 + 22, ctgogo, 255 );
setEffAlphaKey( spep_3 + 80, ctgogo, 255 );
setEffAlphaKey( spep_3 + 81, ctgogo, 255 );
setEffAlphaKey( spep_3 + 82, ctgogo, 191 );
setEffAlphaKey( spep_3 + 86, ctgogo, 128 );
setEffAlphaKey( spep_3 + 88, ctgogo, 64 );
setEffAlphaKey( spep_3 + 90, ctgogo, 0 );

setEffRotateKey(  spep_3+22,  ctgogo,  0);
setEffRotateKey(  spep_3+90,  ctgogo,  0);

setEffScaleKey(  spep_3+22,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3+86,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3+90,  ctgogo, 1.07, 1.07 );

setEffMoveKey(  spep_3+22,  ctgogo,  0,  530);
setEffMoveKey(  spep_3+90,  ctgogo,  0,  530);


---***音***
playSe(  spep_3,  9);  --突進
playSe(  spep_3+22,  SE_04);  --ゴゴゴ

entryFadeBg( spep_3,  0,  120,  0,  0,  0,  0,  255);  --黒背景

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4 = spep_3 + 120;


--***フェードと背景***
entryFade( spep_4-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);

setEffShake(  spep_4,  shuchusen4,  90,  10);
setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.6,  1.6);
setEffScaleKey(  spep_4+90,  shuchusen4,  1.6,  1.6);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+90,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+90,  shuchusen4,  255);

entryFade(  spep_4+80,  4,  10,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 追撃迫る(70F)
------------------------------------------------------
spep_5 = spep_4 + 90;

--***迫る***
semaru = entryEffect(  spep_5,  SP_08,  0x100,  -1,  0,  0,  0);  --迫る

setEffScaleKey(  spep_5,  semaru,  1.0,  1.0);
setEffScaleKey(  spep_5+70,  semaru,  1.0,  1.0);
setEffMoveKey(  spep_5,  semaru,  0,  0);
setEffMoveKey(  spep_5+70,  semaru,  0,  0);
setEffRotateKey(  spep_5,  semaru,  0);
setEffRotateKey(  spep_5+70,  semaru,  0);
setEffAlphaKey(  spep_5,  semaru,  255);
setEffAlphaKey(  spep_5+70,  semaru,  255);
setEffAlphaKey(  spep_5,  semaru,  0);
setEffAlphaKey(  spep_5+70,  semaru,  0);

--***敵の動き***
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 67 , 1, 0 );
setDisp( spep_5 + 68 , 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, 393.5, 466.8 , 0 );
setMoveKey( spep_5 + 2, 1, 344.9, 417.7 , 0 );
setMoveKey( spep_5 + 4, 1, 326.7, 399.3 , 0 );
setMoveKey( spep_5 + 6, 1, 313.5, 386 , 0 );
setMoveKey( spep_5 + 8, 1, 302.9, 375.2 , 0 );
setMoveKey( spep_5 + 10, 1, 293.9, 366.2 , 0 );
setMoveKey( spep_5 + 12, 1, 286.1, 358.3 , 0 );
setMoveKey( spep_5 + 14, 1, 279.1, 351.2 , 0 );
setMoveKey( spep_5 + 16, 1, 272.9, 344.9 , 0 );
setMoveKey( spep_5 + 18, 1, 267.2, 339.2 , 0 );
setMoveKey( spep_5 + 20, 1, 262, 333.9 , 0 );
setMoveKey( spep_5 + 22, 1, 257.1, 329 , 0 );
setMoveKey( spep_5 + 24, 1, 252.6, 324.5 , 0 );
setMoveKey( spep_5 + 26, 1, 248.4, 320.2 , 0 );
setMoveKey( spep_5 + 28, 1, 244.5, 316.3 , 0 );
setMoveKey( spep_5 + 30, 1, 240.8, 312.5 , 0 );
setMoveKey( spep_5 + 32, 1, 237.2, 308.9 , 0 );
setMoveKey( spep_5 + 34, 1, 233.9, 305.5 , 0 );
setMoveKey( spep_5 + 36, 1, 230.7, 302.3 , 0 );
setMoveKey( spep_5 + 38, 1, 227.6, 299.2 , 0 );
setMoveKey( spep_5 + 40, 1, 224.6, 296.2 , 0 );
setMoveKey( spep_5 + 42, 1, 221.8, 293.3 , 0 );
setMoveKey( spep_5 + 44, 1, 219, 290.5 , 0 );
setMoveKey( spep_5 + 46, 1, 216.3, 287.7 , 0 );
setMoveKey( spep_5 + 48, 1, 213.6, 285 , 0 );
setMoveKey( spep_5 + 50, 1, 210.9, 282.3 , 0 );
setMoveKey( spep_5 + 52, 1, 208.2, 279.6 , 0 );
setMoveKey( spep_5 + 54, 1, 205.5, 276.9 , 0 );
setMoveKey( spep_5 + 56, 1, 202.7, 274.1 , 0 );
setMoveKey( spep_5 + 58, 1, 199.8, 271.1 , 0 );
setMoveKey( spep_5 + 60, 1, 195.6, 266.9 , 0 );
setMoveKey( spep_5 + 62, 1, 182.3, 253.4 , 0 );
setMoveKey( spep_5 + 64, 1, 156.9, 227.8 , 0 );
setMoveKey( spep_5 + 66, 1, 118.4, 188.8 , 0 );
setMoveKey( spep_5 + 68, 1, 67.4, 137.2 , 0 );

setScaleKey( spep_5 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 2, 1, 0.48, 0.48 );
setScaleKey( spep_5 + 4, 1, 0.55, 0.55 );
setScaleKey( spep_5 + 6, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 8, 1, 0.63, 0.63 );
setScaleKey( spep_5 + 10, 1, 0.67, 0.67 );
setScaleKey( spep_5 + 12, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 14, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 16, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 18, 1, 0.76, 0.76 );
setScaleKey( spep_5 + 20, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 22, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 24, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 26, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 28, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 30, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 32, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 34, 1, 0.89, 0.89 );
setScaleKey( spep_5 + 36, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 38, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 40, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 42, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 44, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 46, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 48, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 50, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 52, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 54, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 56, 1, 1, 1 );
setScaleKey( spep_5 + 58, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 60, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 62, 1, 1.08, 1.08 );
setScaleKey( spep_5 + 64, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 66, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 68, 1, 1.5, 1.5 );

setRotateKey( spep_5 + 0, 1, -10 );
setRotateKey( spep_5 + 68, 1, -10 );

semaruBG = entryEffect(  spep_5,  SP_09,  0x80,  -1,  0,  0,  0);  --迫る背景

setEffScaleKey(  spep_5,  semaruBG,  1.0,  1.0);
setEffScaleKey(  spep_5+70,  semaruBG,  1.0,  1.0);
setEffMoveKey(  spep_5,  semaruBG,  0,  0);
setEffMoveKey(  spep_5+70,  semaruBG,  0,  0);
setEffRotateKey(  spep_5,  semaruBG,  0);
setEffRotateKey(  spep_5+70,  semaruBG,  0);
setEffAlphaKey(  spep_5,  semaruBG,  255);
setEffAlphaKey(  spep_5+70,  semaruBG,  255);
setEffAlphaKey(  spep_5,  semaruBG,  0);
setEffAlphaKey(  spep_5+70,  semaruBG,  0);

entryFadeBg( spep_5,  0,  74,  0,  0,  0,  0,  255);  --黒背景

--***音***
playSe(  spep_5,  44 );

------------------------------------------------------
-- 爆破(240F)
------------------------------------------------------
spep_6 = spep_5 + 70;

--***爆破***
bakuha = entryEffect(  spep_6,  SP_10,  0x100,  -1,  0,  0,  0);  --迫る

setEffScaleKey(  spep_6,  bakuha,  1.0,  1.0);
setEffScaleKey(  spep_6+240,  bakuha,  1.0,  1.0);
setEffMoveKey(  spep_6,  bakuha,  0,  0);
setEffMoveKey(  spep_6+240,  bakuha,  0,  0);
setEffRotateKey(  spep_6,  bakuha,  0);
setEffRotateKey(  spep_6+240,  bakuha,  0);
setEffAlphaKey(  spep_6,  bakuha,  255);
setEffAlphaKey(  spep_6+240,  bakuha,  255);
setEffAlphaKey(  spep_6,  bakuha,  0);
setEffAlphaKey(  spep_6+240,  bakuha,  0);

--***敵の動き***
setDisp(  spep_6 + 30 -a,  1,  1);
setDisp(  spep_6 + 238-a,  1,  0);
changeAnime( spep_6 + 30-a,  1,  107);

setMoveKey( spep_6 + 30-a, 1, -175.3, -328.4 , 0 );
setMoveKey( spep_6 + 32-a, 1, -177.2, -330.6 , 0 );
setMoveKey( spep_6 + 34-a, 1, -178.3, -331.9 , 0 );
setMoveKey( spep_6 + 36-a, 1, -179.1, -332.7 , 0 );
setMoveKey( spep_6 + 38-a, 1, -179.8, -333.5 , 0 );
setMoveKey( spep_6 + 40-a, 1, -180.3, -334.2 , 0 );
setMoveKey( spep_6 + 42-a, 1, -180.8, -334.7 , 0 );
setMoveKey( spep_6 + 44-a, 1, -181.3, -335.2 , 0 );
setMoveKey( spep_6 + 46-a, 1, -181.7, -335.7 , 0 );
setMoveKey( spep_6 + 48-a, 1, -182.1, -336.1 , 0 );
setMoveKey( spep_6 + 50-a, 1, -182.4, -336.4 , 0 );
setMoveKey( spep_6 + 52-a, 1, -182.7, -336.8 , 0 );
setMoveKey( spep_6 + 54-a, 1, -183, -337.1 , 0 );
setMoveKey( spep_6 + 56-a, 1, -183.2, -337.4 , 0 );
setMoveKey( spep_6 + 58-a, 1, -183.5, -337.7 , 0 );
setMoveKey( spep_6 + 60-a, 1, -183.7, -337.9 , 0 );
setMoveKey( spep_6 + 62-a, 1, -183.9, -338.2 , 0 );
setMoveKey( spep_6 + 64-a, 1, -184.1, -338.4 , 0 );
setMoveKey( spep_6 + 66-a, 1, -184.3, -338.7 , 0 );
setMoveKey( spep_6 + 68-a, 1, -184.5, -338.9 , 0 );
setMoveKey( spep_6 + 70-a, 1, -184.7, -339 , 0 );
setMoveKey( spep_6 + 72-a, 1, -184.8, -339.2 , 0 );
setMoveKey( spep_6 + 74-a, 1, -185, -339.4 , 0 );
setMoveKey( spep_6 + 76-a, 1, -185.1, -339.5 , 0 );
setMoveKey( spep_6 + 78-a, 1, -185.3, -339.7 , 0 );
setMoveKey( spep_6 + 80-a, 1, -185.4, -339.8 , 0 );
setMoveKey( spep_6 + 82-a, 1, -185.5, -340 , 0 );
setMoveKey( spep_6 + 84-a, 1, -185.6, -340.1 , 0 );
setMoveKey( spep_6 + 86-a, 1, -185.7, -340.2 , 0 );
setMoveKey( spep_6 + 88-a, 1, -185.8, -340.3 , 0 );
setMoveKey( spep_6 + 90-a, 1, -185.9, -340.4 , 0 );
setMoveKey( spep_6 + 92-a, 1, -186, -340.6 , 0 );
setMoveKey( spep_6 + 94-a, 1, -186.1, -340.7 , 0 );
setMoveKey( spep_6 + 96-a, 1, -186.2, -340.8 , 0 );
setMoveKey( spep_6 + 98-a, 1, -186.3, -340.9 , 0 );
setMoveKey( spep_6 + 100-a, 1, -186.3, -340.9 , 0 );
setMoveKey( spep_6 + 102-a, 1, -186.4, -341 , 0 );
setMoveKey( spep_6 + 104-a, 1, -186.5, -341.1 , 0 );
setMoveKey( spep_6 + 106-a, 1, -186.6, -341.2 , 0 );
setMoveKey( spep_6 + 108-a, 1, -186.7, -341.3 , 0 );
setMoveKey( spep_6 + 110-a, 1, -186.8, -341.4 , 0 );
setMoveKey( spep_6 + 112-a, 1, -186.8, -341.4 , 0 );
setMoveKey( spep_6 + 114-a, 1, -186.9, -341.5 , 0 );
setMoveKey( spep_6 + 116-a, 1, -186.9, -341.6 , 0 );
setMoveKey( spep_6 + 118-a, 1, -187, -341.7 , 0 );
setMoveKey( spep_6 + 120-a, 1, -187.1, -341.8 , 0 );
setMoveKey( spep_6 + 122-a, 1, -187.1, -341.8 , 0 );
setMoveKey( spep_6 + 124-a, 1, -187.2, -341.9 , 0 );
setMoveKey( spep_6 + 126-a, 1, -187.2, -342 , 0 );
setMoveKey( spep_6 + 128-a, 1, -187.3, -342 , 0 );
setMoveKey( spep_6 + 130-a, 1, -187.4, -342.1 , 0 );
setMoveKey( spep_6 + 132-a, 1, -187.4, -342.1 , 0 );
setMoveKey( spep_6 + 134-a, 1, -187.5, -342.2 , 0 );
setMoveKey( spep_6 + 136-a, 1, -187.5, -342.3 , 0 );
setMoveKey( spep_6 + 138-a, 1, -187.6, -342.3 , 0 );
setMoveKey( spep_6 + 140-a, 1, -187.6, -342.3 , 0 );
setMoveKey( spep_6 + 142-a, 1, -187.7, -342.4 , 0 );
setMoveKey( spep_6 + 144-a, 1, -187.7, -342.4 , 0 );
setMoveKey( spep_6 + 146-a, 1, -187.8, -342.5 , 0 );
setMoveKey( spep_6 + 148-a, 1, -187.8, -342.6 , 0 );
setMoveKey( spep_6 + 150-a, 1, -187.8, -342.6 , 0 );
setMoveKey( spep_6 + 152-a, 1, -187.9, -342.6 , 0 );
setMoveKey( spep_6 + 154-a, 1, -187.9, -342.7 , 0 );
setMoveKey( spep_6 + 156-a, 1, -187.9, -342.7 , 0 );
setMoveKey( spep_6 + 158-a, 1, -188, -342.8 , 0 );
setMoveKey( spep_6 + 160-a, 1, -188, -342.8 , 0 );
setMoveKey( spep_6 + 162-a, 1, -188, -342.9 , 0 );
setMoveKey( spep_6 + 164-a, 1, -188.1, -342.9 , 0 );
setMoveKey( spep_6 + 166-a, 1, -188.1, -342.9 , 0 );
setMoveKey( spep_6 + 168-a, 1, -188.1, -343 , 0 );
setMoveKey( spep_6 + 170-a, 1, -188.2, -343 , 0 );
setMoveKey( spep_6 + 172-a, 1, -188.2, -343 , 0 );
setMoveKey( spep_6 + 174-a, 1, -188.2, -343.1 , 0 );
setMoveKey( spep_6 + 176-a, 1, -188.2, -343.1 , 0 );
setMoveKey( spep_6 + 178-a, 1, -188.3, -343.1 , 0 );
setMoveKey( spep_6 + 180-a, 1, -188.3, -343.1 , 0 );
setMoveKey( spep_6 + 182-a, 1, -188.3, -343.2 , 0 );
setMoveKey( spep_6 + 184-a, 1, -188.3, -343.2 , 0 );
setMoveKey( spep_6 + 186-a, 1, -188.4, -343.2 , 0 );
setMoveKey( spep_6 + 188-a, 1, -188.4, -343.3 , 0 );
setMoveKey( spep_6 + 192-a, 1, -188.4, -343.3 , 0 );
setMoveKey( spep_6 + 194-a, 1, -188.5, -343.3 , 0 );
setMoveKey( spep_6 + 198-a, 1, -188.5, -343.3 , 0 );
setMoveKey( spep_6 + 200-a, 1, -188.5, -343.4 , 0 );
setMoveKey( spep_6 + 202-a, 1, -188.5, -343.4 , 0 );
setMoveKey( spep_6 + 204-a, 1, -188.6, -343.4 , 0 );
setMoveKey( spep_6 + 208-a, 1, -188.6, -343.4 , 0 );
setMoveKey( spep_6 + 210-a, 1, -188.6, -343.5 , 0 );
setMoveKey( spep_6 + 214-a, 1, -188.6, -343.5 , 0 );
setMoveKey( spep_6 + 216-a, 1, -188.7, -343.5 , 0 );
setMoveKey( spep_6 + 218-a, 1, -188.7, -343.5 , 0 );
setMoveKey( spep_6 + 220-a, 1, -188.7, -343.6 , 0 );
setMoveKey( spep_6 + 228-a, 1, -188.7, -343.6 , 0 );
setMoveKey( spep_6 + 230-a, 1, -188.8, -343.6 , 0 );
setMoveKey( spep_6 + 232-a, 1, -188.8, -343.7 , 0 );
setMoveKey( spep_6 + 236-a, 1, -188.8, -343.7 , 0 );
setMoveKey( spep_6 + 238-a, 1, -188.7, -343.6 , 0 );

setScaleKey( spep_6 + 30-a, 1, 0.4, 0.4 );
setScaleKey( spep_6 + 32-a, 1, 0.4, 0.4 );
setScaleKey( spep_6 + 34-a, 1, 0.39, 0.39 );
setScaleKey( spep_6 + 38-a, 1, 0.39, 0.39 );
setScaleKey( spep_6 + 40-a, 1, 0.38, 0.38 );
setScaleKey( spep_6 + 52-a, 1, 0.38, 0.38 );
setScaleKey( spep_6 + 54-a, 1, 0.37, 0.37 );
setScaleKey( spep_6 + 80-a, 1, 0.37, 0.37 );
setScaleKey( spep_6 + 82-a, 1, 0.36, 0.36 );
setScaleKey( spep_6 + 170-a, 1, 0.36, 0.36 );
setScaleKey( spep_6 + 172-a, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 238-a, 1, 0.35, 0.35 );

setRotateKey( spep_6 + 30-a, 1, -60 );
setRotateKey( spep_6 + 238-a, 1, -60 );

bakuhaBG = entryEffect(  spep_6,  SP_11,  0x80,  -1,  0,  0,  0);  --迫る背景

setEffScaleKey(  spep_6,  bakuhaBG,  1.0,  1.0);
setEffScaleKey(  spep_6+240,  bakuhaBG,  1.0,  1.0);
setEffMoveKey(  spep_6,  bakuhaBG,  0,  0);
setEffMoveKey(  spep_6+240,  bakuhaBG,  0,  0);
setEffRotateKey(  spep_6,  bakuhaBG,  0);
setEffRotateKey(  spep_6+240,  bakuhaBG,  0);
setEffAlphaKey(  spep_6,  bakuhaBG,  0);
setEffAlphaKey(  spep_6+54,  bakuhaBG,  255);
setEffAlphaKey(  spep_6+240,  bakuhaBG,  255);


--***音***
playSe(  spep_6,  1032);  --斬撃
playSe(  spep_6 + 30,  1049);  --爆発
playSe(  spep_6 + 128,  1024);  --爆発

entryFadeBg( spep_6,  0,  54,  10,  0,  0,  0,  255);  --黒背景
entryFade(  spep_6 + 128, 2,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255 );  --white fade

-- ダメージ表示
dealDamage(spep_6+120);
endPhase(spep_6+220);

else



-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 敵に向かって走る(128F)
------------------------------------------------------
spep_0 = 0;

--***走る***
dash = entryEffectLife(  spep_0,  SP_01r, 124, 0x100,  -1,  0,  0,  0);  --走る

setEffScaleKey(  spep_0,  dash,  1.0,  1.0);
setEffScaleKey(  spep_0+124,  dash,  1.0,  1.0);
setEffMoveKey(  spep_0,  dash,  0,  0);
setEffMoveKey(  spep_0+124,  dash,  0,  0);
setEffRotateKey(  spep_0,  dash,  0);
setEffRotateKey(  spep_0+124,  dash,  0);
setEffAlphaKey(  spep_0,  dash,  255);
setEffAlphaKey(  spep_0+124,  dash,  255);

--***集中線***
shuchusen1 = entryEffectLife( spep_0, 906, 124, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffShake(  spep_0,  shuchusen1,  120,  10);
setEffScaleKey(  spep_0,  shuchusen1,  1.40,  1.45);
setEffScaleKey(  spep_0+124,  shuchusen1,  1.40,  1.45);
setEffMoveKey(  spep_0,  shuchusen1,  0,  0);
setEffMoveKey(  spep_0+124,  shuchusen1,  0,  0);
setEffRotateKey(  spep_0,  shuchusen1,  0);
setEffRotateKey(  spep_0+124,  shuchusen1,  0);
setEffAlphaKey(  spep_0,  shuchusen1,  255);
setEffAlphaKey(  spep_0+124,  shuchusen1,  255);

--***敵の動き***
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 125, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );  --アイドリング

setMoveKey( spep_0 + 0, 1, 192.1, 278.2 , 0 );
setMoveKey( spep_0 + 2, 1, 192, 276.4 , 0 );
setMoveKey( spep_0 + 4, 1, 192, 274.6 , 0 );
setMoveKey( spep_0 + 6, 1, 192, 272.9 , 0 );
setMoveKey( spep_0 + 8, 1, 192, 271.2 , 0 );
setMoveKey( spep_0 + 10, 1, 192, 269.6 , 0 );
setMoveKey( spep_0 + 12, 1, 192, 268 , 0 );
setMoveKey( spep_0 + 14, 1, 192, 266.5 , 0 );
setMoveKey( spep_0 + 16, 1, 192, 265.1 , 0 );
setMoveKey( spep_0 + 18, 1, 192, 263.7 , 0 );
setMoveKey( spep_0 + 20, 1, 192, 262.4 , 0 );
setMoveKey( spep_0 + 22, 1, 192, 261.2 , 0 );
setMoveKey( spep_0 + 24, 1, 192, 260 , 0 );
setMoveKey( spep_0 + 26, 1, 192, 258.9 , 0 );
setMoveKey( spep_0 + 28, 1, 192, 257.8 , 0 );
setMoveKey( spep_0 + 30, 1, 192, 256.8 , 0 );
setMoveKey( spep_0 + 32, 1, 192, 255.8 , 0 );
setMoveKey( spep_0 + 34, 1, 192, 254.9 , 0 );
setMoveKey( spep_0 + 36, 1, 192, 254 , 0 );
setMoveKey( spep_0 + 38, 1, 192, 253.1 , 0 );
setMoveKey( spep_0 + 40, 1, 192, 252.3 , 0 );
setMoveKey( spep_0 + 42, 1, 192, 251.5 , 0 );
setMoveKey( spep_0 + 44, 1, 192, 250.8 , 0 );
setMoveKey( spep_0 + 46, 1, 192, 250.1 , 0 );
setMoveKey( spep_0 + 48, 1, 192, 249.4 , 0 );
setMoveKey( spep_0 + 50, 1, 192, 248.7 , 0 );
setMoveKey( spep_0 + 52, 1, 192, 248 , 0 );
setMoveKey( spep_0 + 54, 1, 192, 247.4 , 0 );
setMoveKey( spep_0 + 56, 1, 192, 246.8 , 0 );
setMoveKey( spep_0 + 58, 1, 192, 246.2 , 0 );
setMoveKey( spep_0 + 60, 1, 192, 245.7 , 0 );
setMoveKey( spep_0 + 62, 1, 192, 245.2 , 0 );
setMoveKey( spep_0 + 64, 1, 192, 244.6 , 0 );
setMoveKey( spep_0 + 66, 1, 192, 244.1 , 0 );
setMoveKey( spep_0 + 68, 1, 192, 243.6 , 0 );
setMoveKey( spep_0 + 70, 1, 192, 243.2 , 0 );
setMoveKey( spep_0 + 72, 1, 192, 242.7 , 0 );
setMoveKey( spep_0 + 74, 1, 192, 242.3 , 0 );
setMoveKey( spep_0 + 76, 1, 192, 241.8 , 0 );
setMoveKey( spep_0 + 78, 1, 192, 241.4 , 0 );
setMoveKey( spep_0 + 80, 1, 192, 241 , 0 );
setMoveKey( spep_0 + 82, 1, 192, 240.6 , 0 );
setMoveKey( spep_0 + 84, 1, 192, 240.3 , 0 );
setMoveKey( spep_0 + 86, 1, 192, 239.9 , 0 );
setMoveKey( spep_0 + 88, 1, 192, 239.5 , 0 );
setMoveKey( spep_0 + 90, 1, 192, 239.2 , 0 );
setMoveKey( spep_0 + 92, 1, 192, 238.8 , 0 );
setMoveKey( spep_0 + 94, 1, 192, 238.5 , 0 );
setMoveKey( spep_0 + 96, 1, 192, 238.2 , 0 );
setMoveKey( spep_0 + 98, 1, 192, 237.9 , 0 );
setMoveKey( spep_0 + 100, 1, 192, 237.6 , 0 );
setMoveKey( spep_0 + 102, 1, 192, 237.3 , 0 );
setMoveKey( spep_0 + 104, 1, 192, 237 , 0 );
setMoveKey( spep_0 + 106, 1, 192, 236.7 , 0 );
setMoveKey( spep_0 + 108, 1, 192, 236.4 , 0 );
setMoveKey( spep_0 + 110, 1, 192, 236.2 , 0 );
setMoveKey( spep_0 + 112, 1, 192, 235.9 , 0 );
setMoveKey( spep_0 + 114, 1, 192, 235.6 , 0 );
setMoveKey( spep_0 + 116, 1, 192, 235.4 , 0 );
setMoveKey( spep_0 + 118, 1, 192, 235.1 , 0 );
setMoveKey( spep_0 + 120, 1, 192, 234.9 , 0 );
setMoveKey( spep_0 + 122, 1, 192, 234.7 , 0 );
setMoveKey( spep_0 + 124, 1, 192, 234.5 , 0 );
setMoveKey( spep_0 + 126, 1, 191.9, 234.2 , 0 );

setScaleKey( spep_0 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 6, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 8, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 20, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 22, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 32, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 34, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 44, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 46, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 52, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 54, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 62, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 64, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 70, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 72, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 78, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 80, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 84, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 86, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 90, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 92, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 94, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 96, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 100, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 102, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 104, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 106, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 108, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 110, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 112, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 114, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 116, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 118, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 120, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 122, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 124, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 126, 1, 0.7, 0.7 );

setRotateKey( spep_0 + 0, 1, 5 );
setRotateKey( spep_0 + 126, 1, 5 );


dashBG = entryEffect(  spep_0,  SP_02,  0x80,  -1,  0,  0,  0);  --走る背景

setEffScaleKey(  spep_0,  dashBG,  1.0,  1.0);
setEffScaleKey(  spep_0+128,  dashBG,  1.0,  1.0);
setEffMoveKey(  spep_0,  dashBG,  0,  0);
setEffMoveKey(  spep_0+128,  dashBG,  0,  0);
setEffRotateKey(  spep_0,  dashBG,  0);
setEffRotateKey(  spep_0+128,  dashBG,  0);
setEffAlphaKey(  spep_0,  dashBG,  255);
setEffAlphaKey(  spep_0+128,  dashBG,  255);

entryFadeBg( spep_0,  0,  128,  0,  0,  0,  0,  255);  --黒背景

--***音***
playSe(  spep_0,  1072);  --走る
playSe(  spep_0 +10,  4);
setSeVolume( spep_0 +10,  4,  40);
playSe(  spep_0 +30,  4);
setSeVolume( spep_0 +30,  4,  40);
playSe(  spep_0 +50,  4);
setSeVolume( spep_0 +50,  4,  40);
playSe(  spep_0 +70,  4);
setSeVolume( spep_0 +70,  4,  40);
playSe(  spep_0 +90,  4);
setSeVolume( spep_0 +90,  4,  40);
playSe(  spep_0 +110,  4);
setSeVolume( spep_0 +110,  4,  40);
------------------------------------------------------
-- 斬撃を飛ばす(114F)
------------------------------------------------------
spep_1 = spep_0 + 125;

a = 3;

--***ジャンプ***
jumpBG = entryEffect(  spep_1,  SP_04,  0x80,  -1,  0,  0,  0);  --ジャンプ

setEffScaleKey(  spep_1,  jumpBG,  1.0,  1.0);
setEffScaleKey(  spep_1+110,  jumpBG,  1.0,  1.0);
setEffMoveKey(  spep_1,  jumpBG,  0,  0);
setEffMoveKey(  spep_1+110,  jumpBG,  0,  0);
setEffRotateKey(  spep_1,  jumpBG,  0);
setEffRotateKey(  spep_1+110,  jumpBG,  0);
setEffAlphaKey(  spep_1,  jumpBG,  255);
setEffAlphaKey(  spep_1+110,  jumpBG,  255);

jump = entryEffect(  spep_1,  SP_03r,  0x80,  -1,  0,  0,  0);  --ジャンプ

setEffScaleKey(  spep_1,  jump,  1.0,  1.0);
setEffScaleKey(  spep_1+110,  jump,  1.0,  1.0);
setEffMoveKey(  spep_1,  jump,  0,  0);
setEffMoveKey(  spep_1+110,  jump,  0,  0);
setEffRotateKey(  spep_1,  jump,  0);
setEffRotateKey(  spep_1+110,  jump,  0);
setEffAlphaKey(  spep_1,  jump,  255);
setEffAlphaKey(  spep_1+110,  jump,  255);


entryFadeBg( spep_1,  0,  114,  0,  0,  0,  0,  255);  --黒背景


--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1+10 ; --エンドフェイズのフレーム数を置き換える

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

--***書き文字***

ct_ba = entryEffectLife( spep_1 -a + 14,  10022, 50, 0x100, -1, 0, 113.3, -370.5 );

setEffMoveKey( spep_1 -a + 14, ct_ba, 113.3, -370.5 , 0 );
setEffMoveKey( spep_1 -a + 16, ct_ba, 110.1, -357.9 , 0 );
setEffMoveKey( spep_1 -a + 18, ct_ba, 116.7, -370.1 , 0 );
setEffMoveKey( spep_1 -a + 20, ct_ba, 106.4, -363.2 , 0 );
setEffMoveKey( spep_1 -a + 22, ct_ba, 116.3, -358.9 , 0 );
setEffMoveKey( spep_1 -a + 24, ct_ba, 110.4, -368.5 , 0 );
setEffMoveKey( spep_1 -a + 26, ct_ba, 114.5, -353.7 , 0 );
setEffMoveKey( spep_1 -a + 28, ct_ba, 114.5, -363.2 , 0 );
setEffMoveKey( spep_1 -a + 30, ct_ba, 111.1, -355.3 , 0 );
setEffMoveKey( spep_1 -a + 32, ct_ba, 112.6, -361.2 , 0 );
setEffMoveKey( spep_1 -a + 34, ct_ba, 117.3, -354.1 , 0 );
setEffMoveKey( spep_1 -a + 36, ct_ba, 112.7, -359.2 , 0 );
setEffMoveKey( spep_1 -a + 38, ct_ba, 114.8, -349 , 0 );
setEffMoveKey( spep_1 -a + 40, ct_ba, 113.9, -354.4 , 0 );
setEffMoveKey( spep_1 -a + 42, ct_ba, 114.3, -347.8 , 0 );
setEffMoveKey( spep_1 -a + 44, ct_ba, 116.2, -353.3 , 0 );
setEffMoveKey( spep_1 -a + 46, ct_ba, 117.3, -347.1 , 0 );
setEffMoveKey( spep_1 -a + 48, ct_ba, 118.5, -349.7 , 0 );
setEffMoveKey( spep_1 -a + 50, ct_ba, 116.5, -346.8 , 0 );
setEffMoveKey( spep_1 -a + 52, ct_ba, 119.6, -347.1 , 0 );
setEffMoveKey( spep_1 -a + 54, ct_ba, 117.4, -344.6 , 0 );
setEffMoveKey( spep_1 -a + 56, ct_ba, 119.8, -344.4 , 0 );
setEffMoveKey( spep_1 -a + 58, ct_ba, 119.2, -342.1 , 0 );
setEffMoveKey( spep_1 -a + 60, ct_ba, 120.1, -341.5 , 0 );
setEffMoveKey( spep_1 -a + 62, ct_ba, 120.4, -340.3 , 0 );
setEffMoveKey( spep_1 -a + 64, ct_ba, 119.6, -346.7 , 0 );

setEffScaleKey( spep_1 -a + 14, ct_ba, 2, 2 );
setEffScaleKey( spep_1 -a + 16, ct_ba, 2.01, 2.01 );
setEffScaleKey( spep_1 -a + 18, ct_ba, 2.02, 2.02 );
setEffScaleKey( spep_1 -a + 20, ct_ba, 2.02, 2.02 );
setEffScaleKey( spep_1 -a + 22, ct_ba, 2.03, 2.03 );
setEffScaleKey( spep_1 -a + 24, ct_ba, 2.04, 2.04 );
setEffScaleKey( spep_1 -a + 26, ct_ba, 2.05, 2.05 );
setEffScaleKey( spep_1 -a + 28, ct_ba, 2.06, 2.06 );
setEffScaleKey( spep_1 -a + 30, ct_ba, 2.06, 2.06 );
setEffScaleKey( spep_1 -a + 32, ct_ba, 2.07, 2.07 );
setEffScaleKey( spep_1 -a + 34, ct_ba, 2.08, 2.08 );
setEffScaleKey( spep_1 -a + 36, ct_ba, 2.09, 2.09 );
setEffScaleKey( spep_1 -a + 38, ct_ba, 2.1, 2.1 );
setEffScaleKey( spep_1 -a + 40, ct_ba, 2.1, 2.1 );
setEffScaleKey( spep_1 -a + 42, ct_ba, 2.11, 2.11 );
setEffScaleKey( spep_1 -a + 44, ct_ba, 2.12, 2.12 );
setEffScaleKey( spep_1 -a + 46, ct_ba, 2.13, 2.13 );
setEffScaleKey( spep_1 -a + 48, ct_ba, 2.14, 2.14 );
setEffScaleKey( spep_1 -a + 50, ct_ba, 2.14, 2.14 );
setEffScaleKey( spep_1 -a + 52, ct_ba, 2.15, 2.15 );
setEffScaleKey( spep_1 -a + 54, ct_ba, 2.16, 2.16 );
setEffScaleKey( spep_1 -a + 56, ct_ba, 2.17, 2.17 );
setEffScaleKey( spep_1 -a + 58, ct_ba, 2.18, 2.18 );
setEffScaleKey( spep_1 -a + 60, ct_ba, 2.18, 2.18 );
setEffScaleKey( spep_1 -a + 62, ct_ba, 2.19, 2.19 );
setEffScaleKey( spep_1 -a + 64, ct_ba, 2.2, 2.2 );

setEffRotateKey( spep_1 -a + 14, ct_ba, 32 );
setEffRotateKey( spep_1 -a + 64, ct_ba, 32 );

setEffAlphaKey( spep_1 -a + 14, ct_ba, 255 );
setEffAlphaKey( spep_1 -a + 64, ct_ba, 255 );


--***集中線***
shuchusen1a = entryEffectLife( spep_1 + 74,  906, 36, 0x100, -1, 0, 200, 0 );  --集中線

setEffShake(  spep_1 +74, shuchusen1a,  36,  10 );
setEffMoveKey( spep_1 + 74, shuchusen1a, 200, 0 , 0 );
setEffMoveKey( spep_1 + 110, shuchusen1a, 200, 0 , 0 );
setEffScaleKey( spep_1 + 74, shuchusen1a, 1.6, 1.6 );
setEffScaleKey( spep_1 + 110, shuchusen1a, 1.6, 1.6 );
setEffRotateKey( spep_1 + 74, shuchusen1a, 0 );
setEffRotateKey( spep_1 + 110, shuchusen1a, 0 );
setEffAlphaKey( spep_1 + 74, shuchusen1a, 255 );
setEffAlphaKey( spep_1 + 108, shuchusen1a, 255 );
setEffAlphaKey( spep_1 + 109, shuchusen1a, 0 );
setEffAlphaKey( spep_1 + 110, shuchusen1a, 0 );

--***音***
playSe(  spep_1 + 12,  1013);  --バッ
playSe(  spep_1 + 20,  8);
playSe(  spep_1 + 76,  1061);  --斬撃

------------------------------------------------------
-- 被弾(74F)
------------------------------------------------------
spep_2 = spep_1 + 110;

hidan = entryEffect(  spep_2,  SP_05,  0x100,  -1,  0,  0,  0);  --被弾

setEffMoveKey(  spep_2,  hidan,  0,  0,  0);
setEffMoveKey(  spep_2+74,  hidan,  0,  0,  0);
setEffScaleKey(  spep_2,  hidan,  1.0,  1.0);
setEffScaleKey(  spep_2+74,  hidan,  1.0,  1.0);
setEffRotateKey(  spep_2,  hidan,  0);
setEffRotateKey(  spep_2+74,  hidan,  0);
setEffAlphaKey(  spep_2,  hidan,  255);
setEffAlphaKey(  spep_2+74,  hidan,  255);


--***敵の動き***
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 72, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 + 26 -a, 1, 108 );

setShakeChara(  spep_2 +26 -a,  1,  46,  20);  --揺れ
setMoveKey( spep_2 + 0, 1, -60.1, -59.8 , 0 );
setMoveKey( spep_2 + 2, 1, -47.4, -47.2 , 0 );
setMoveKey( spep_2 + 4, 1, -22.6, -22.4 , 0 );
setMoveKey( spep_2 + 6, 1, -12.7, -12.6 , 0 );
setMoveKey( spep_2 + 8, 1, -7.7, -7.6 , 0 );
setMoveKey( spep_2 + 10, 1, -4.8, -4.7 , 0 );
setMoveKey( spep_2 + 12, 1, -3, -3 , 0 );
setMoveKey( spep_2 + 14, 1, -2, -1.9 , 0 );
setMoveKey( spep_2 + 16, 1, -1.3, -1.3 , 0 );
setMoveKey( spep_2 + 18, 1, -0.9, -0.8 , 0 );
setMoveKey( spep_2 + 20, 1, -0.5, -0.5 , 0 );
setMoveKey( spep_2 + 22, 1, -0.3, -0.2 , 0 );
--setMoveKey( spep_2 + 25, 1, 0, -0.1 , 0 );
setMoveKey( spep_2 + 26 -a, 1, 20, 40.1 , 0 );
setMoveKey( spep_2 + 28 -a, 1, 60, 80.1 , 0 );
setMoveKey( spep_2 + 40 -a, 1, 60, 80.1 , 0 );
setMoveKey( spep_2 + 42 -a, 1, 93.9, 119.8 , 0 );
setMoveKey( spep_2 + 44 -a, 1, 115.9, 152.8 , 0 );
setMoveKey( spep_2 + 46 -a, 1, 204.6, 285.1 , 0 );
setMoveKey( spep_2 + 48 -a, 1, 240.5, 338.5 , 0 );
setMoveKey( spep_2 + 50 -a, 1, 263.2, 372.4 , 0 );
setMoveKey( spep_2 + 52 -a, 1, 279.5, 396.7 , 0 );
setMoveKey( spep_2 + 54 -a, 1, 291.7, 414.9 , 0 );
setMoveKey( spep_2 + 56 -a, 1, 301.2, 429.1 , 0 );
setMoveKey( spep_2 + 58 -a, 1, 308.7, 440.2 , 0 );
setMoveKey( spep_2 + 60 -a, 1, 314.6, 449 , 0 );
setMoveKey( spep_2 + 62 -a, 1, 319.3, 456.1 , 0 );
setMoveKey( spep_2 + 64 -a, 1, 323.1, 461.8 , 0 );
setMoveKey( spep_2 + 66 -a, 1, 326.3, 466.4 , 0 );
setMoveKey( spep_2 + 68 -a, 1, 328.9, 470.4 , 0 );
setMoveKey( spep_2 + 70 -a, 1, 331.3, 473.9 , 0 );
setMoveKey( spep_2 + 72, 1, 333.6, 477.3 , 0 );

setScaleKey( spep_2 + 0, 1, 2, 2 );
setScaleKey( spep_2 + 2, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 4, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 6, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 8, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 10, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 12, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 14, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 16, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 18, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 42 -a, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 44 -a, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 46 -a, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 48 -a, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 50 -a, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 52 -a, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 54 -a, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 56 -a, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 58 -a, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 60 -a, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 62 -a, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 64 -a, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 66 -a, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 68 -a, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 70 -a, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 72, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 25, 1, 0 );
setRotateKey( spep_2 + 26 -4, 1, 0 );
setRotateKey( spep_2 + 26 -a, 1, 10 );
setRotateKey( spep_2 + 40 -a, 1, 10 );
setRotateKey( spep_2 + 40 -2, 1, 10 );
setRotateKey( spep_2 + 42 -a, 1, -10 );
setRotateKey( spep_2 + 72, 1, -10 );


hidanBG = entryEffect(  spep_2,  SP_06,  0x80,  -1,  0,  0,  0);  --被弾

setEffMoveKey(  spep_2,  hidanBG,  0,  0,  0);
setEffMoveKey(  spep_2+74,  hidanBG,  0,  0,  0);
setEffScaleKey(  spep_2,  hidanBG,  1.0,  1.0);
setEffScaleKey(  spep_2+74,  hidanBG,  1.0,  1.0);
setEffRotateKey(  spep_2,  hidanBG,  0);
setEffRotateKey(  spep_2+74,  hidanBG,  0);
setEffAlphaKey(  spep_2,  hidanBG,  255);
setEffAlphaKey(  spep_2+74,  hidanBG,  255);

entryFadeBg( spep_2,  0,  74,  0,  0,  0,  0,  255);  --黒背景

--***音***
playSe(  spep_2+22, 1026);  --ヒット

entryFade(  spep_2+70,  2,  4,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 突進(120F)
------------------------------------------------------
spep_3 = spep_2 + 74;

--***集中線***
shuchusen3 = entryEffectLife( spep_3 + 10, 906, 110, 0x100,  -1, 0,  0,  0);

setEffShake(  spep_3 +10,  shuchusen3,  90,  10);
setEffMoveKey(  spep_3+10,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+120,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+10,  shuchusen3,  1.6,  1.6);
setEffScaleKey(  spep_3+120,  shuchusen3,  1.6,  1.6);
setEffRotateKey(  spep_3+10,  shuchusen3,  0);
setEffRotateKey(  spep_3+120,  shuchusen3,  0);
setEffAlphaKey(  spep_3+10,  shuchusen3,  255);
setEffAlphaKey(  spep_3+120,  shuchusen3,  255);

tosshin = entryEffect(  spep_3,  SP_07r,  0x100,  -1,  0,  0,  0);  --突進

setEffMoveKey(  spep_3,  tosshin,  0,  0,  0);
setEffMoveKey(  spep_3+120,  tosshin,  0,  0,  0);
setEffScaleKey(  spep_3,  tosshin,  1.0,  1.0);
setEffScaleKey(  spep_3+120,  tosshin,  1.0,  1.0);
setEffRotateKey(  spep_3,  tosshin,  0);
setEffRotateKey(  spep_3+120,  tosshin,  0);
setEffAlphaKey(  spep_3,  tosshin,  255);
setEffAlphaKey(  spep_3+120,  tosshin,  255);

--***カットイン***
--speff = entryEffect(  spep_3+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_3+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+22, 190006, 68, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_3 + 22, ctgogo, 255 );
setEffAlphaKey( spep_3 + 80, ctgogo, 255 );
setEffAlphaKey( spep_3 + 81, ctgogo, 255 );
setEffAlphaKey( spep_3 + 82, ctgogo, 191 );
setEffAlphaKey( spep_3 + 86, ctgogo, 128 );
setEffAlphaKey( spep_3 + 88, ctgogo, 64 );
setEffAlphaKey( spep_3 + 90, ctgogo, 0 );

setEffRotateKey(  spep_3+22,  ctgogo,  0);
setEffRotateKey(  spep_3+90,  ctgogo,  0);

setEffScaleKey(  spep_3+22,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3+86,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3+90,  ctgogo, -1.07, 1.07 );

setEffMoveKey(  spep_3+22,  ctgogo,  0,  530);
setEffMoveKey(  spep_3+90,  ctgogo,  0,  530);


---***音***
playSe(  spep_3,  9);  --突進
playSe(  spep_3+22,  SE_04);  --ゴゴゴ

entryFadeBg( spep_3,  0,  120,  0,  0,  0,  0,  255);  --黒背景

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4 = spep_3 + 120;


--***フェードと背景***
entryFade( spep_4-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);

setEffShake(  spep_4,  shuchusen4,  90,  10);
setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.6,  1.6);
setEffScaleKey(  spep_4+90,  shuchusen4,  1.6,  1.6);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+90,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+90,  shuchusen4,  255);

entryFade(  spep_4+80,  4,  10,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 追撃迫る(70F)
------------------------------------------------------
spep_5 = spep_4 + 90;

--***迫る***
semaru = entryEffect(  spep_5,  SP_08r,  0x100,  -1,  0,  0,  0);  --迫る

setEffScaleKey(  spep_5,  semaru,  1.0,  1.0);
setEffScaleKey(  spep_5+70,  semaru,  1.0,  1.0);
setEffMoveKey(  spep_5,  semaru,  0,  0);
setEffMoveKey(  spep_5+70,  semaru,  0,  0);
setEffRotateKey(  spep_5,  semaru,  0);
setEffRotateKey(  spep_5+70,  semaru,  0);
setEffAlphaKey(  spep_5,  semaru,  255);
setEffAlphaKey(  spep_5+70,  semaru,  255);
setEffAlphaKey(  spep_5,  semaru,  0);
setEffAlphaKey(  spep_5+70,  semaru,  0);

--***敵の動き***
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 67 , 1, 0 );
setDisp( spep_5 + 68 , 1, 0 );
changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, 393.5, 466.8 , 0 );
setMoveKey( spep_5 + 2, 1, 344.9, 417.7 , 0 );
setMoveKey( spep_5 + 4, 1, 326.7, 399.3 , 0 );
setMoveKey( spep_5 + 6, 1, 313.5, 386 , 0 );
setMoveKey( spep_5 + 8, 1, 302.9, 375.2 , 0 );
setMoveKey( spep_5 + 10, 1, 293.9, 366.2 , 0 );
setMoveKey( spep_5 + 12, 1, 286.1, 358.3 , 0 );
setMoveKey( spep_5 + 14, 1, 279.1, 351.2 , 0 );
setMoveKey( spep_5 + 16, 1, 272.9, 344.9 , 0 );
setMoveKey( spep_5 + 18, 1, 267.2, 339.2 , 0 );
setMoveKey( spep_5 + 20, 1, 262, 333.9 , 0 );
setMoveKey( spep_5 + 22, 1, 257.1, 329 , 0 );
setMoveKey( spep_5 + 24, 1, 252.6, 324.5 , 0 );
setMoveKey( spep_5 + 26, 1, 248.4, 320.2 , 0 );
setMoveKey( spep_5 + 28, 1, 244.5, 316.3 , 0 );
setMoveKey( spep_5 + 30, 1, 240.8, 312.5 , 0 );
setMoveKey( spep_5 + 32, 1, 237.2, 308.9 , 0 );
setMoveKey( spep_5 + 34, 1, 233.9, 305.5 , 0 );
setMoveKey( spep_5 + 36, 1, 230.7, 302.3 , 0 );
setMoveKey( spep_5 + 38, 1, 227.6, 299.2 , 0 );
setMoveKey( spep_5 + 40, 1, 224.6, 296.2 , 0 );
setMoveKey( spep_5 + 42, 1, 221.8, 293.3 , 0 );
setMoveKey( spep_5 + 44, 1, 219, 290.5 , 0 );
setMoveKey( spep_5 + 46, 1, 216.3, 287.7 , 0 );
setMoveKey( spep_5 + 48, 1, 213.6, 285 , 0 );
setMoveKey( spep_5 + 50, 1, 210.9, 282.3 , 0 );
setMoveKey( spep_5 + 52, 1, 208.2, 279.6 , 0 );
setMoveKey( spep_5 + 54, 1, 205.5, 276.9 , 0 );
setMoveKey( spep_5 + 56, 1, 202.7, 274.1 , 0 );
setMoveKey( spep_5 + 58, 1, 199.8, 271.1 , 0 );
setMoveKey( spep_5 + 60, 1, 195.6, 266.9 , 0 );
setMoveKey( spep_5 + 62, 1, 182.3, 253.4 , 0 );
setMoveKey( spep_5 + 64, 1, 156.9, 227.8 , 0 );
setMoveKey( spep_5 + 66, 1, 118.4, 188.8 , 0 );
setMoveKey( spep_5 + 68, 1, 67.4, 137.2 , 0 );

setScaleKey( spep_5 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_5 + 2, 1, 0.48, 0.48 );
setScaleKey( spep_5 + 4, 1, 0.55, 0.55 );
setScaleKey( spep_5 + 6, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 8, 1, 0.63, 0.63 );
setScaleKey( spep_5 + 10, 1, 0.67, 0.67 );
setScaleKey( spep_5 + 12, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 14, 1, 0.72, 0.72 );
setScaleKey( spep_5 + 16, 1, 0.74, 0.74 );
setScaleKey( spep_5 + 18, 1, 0.76, 0.76 );
setScaleKey( spep_5 + 20, 1, 0.78, 0.78 );
setScaleKey( spep_5 + 22, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 24, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 26, 1, 0.83, 0.83 );
setScaleKey( spep_5 + 28, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 30, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 32, 1, 0.88, 0.88 );
setScaleKey( spep_5 + 34, 1, 0.89, 0.89 );
setScaleKey( spep_5 + 36, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 38, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 40, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 42, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 44, 1, 0.94, 0.94 );
setScaleKey( spep_5 + 46, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 48, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 50, 1, 0.97, 0.97 );
setScaleKey( spep_5 + 52, 1, 0.98, 0.98 );
setScaleKey( spep_5 + 54, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 56, 1, 1, 1 );
setScaleKey( spep_5 + 58, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 60, 1, 1.03, 1.03 );
setScaleKey( spep_5 + 62, 1, 1.08, 1.08 );
setScaleKey( spep_5 + 64, 1, 1.17, 1.17 );
setScaleKey( spep_5 + 66, 1, 1.31, 1.31 );
setScaleKey( spep_5 + 68, 1, 1.5, 1.5 );

setRotateKey( spep_5 + 0, 1, -10 );
setRotateKey( spep_5 + 68, 1, -10 );

semaruBG = entryEffect(  spep_5,  SP_09,  0x80,  -1,  0,  0,  0);  --迫る背景

setEffScaleKey(  spep_5,  semaruBG,  1.0,  1.0);
setEffScaleKey(  spep_5+70,  semaruBG,  1.0,  1.0);
setEffMoveKey(  spep_5,  semaruBG,  0,  0);
setEffMoveKey(  spep_5+70,  semaruBG,  0,  0);
setEffRotateKey(  spep_5,  semaruBG,  0);
setEffRotateKey(  spep_5+70,  semaruBG,  0);
setEffAlphaKey(  spep_5,  semaruBG,  255);
setEffAlphaKey(  spep_5+70,  semaruBG,  255);
setEffAlphaKey(  spep_5,  semaruBG,  0);
setEffAlphaKey(  spep_5+70,  semaruBG,  0);

entryFadeBg( spep_5,  0,  74,  0,  0,  0,  0,  255);  --黒背景

--***音***
playSe(  spep_5,  44 );

------------------------------------------------------
-- 爆破(240F)
------------------------------------------------------
spep_6 = spep_5 + 70;

--***爆破***
bakuha = entryEffect(  spep_6,  SP_10r,  0x100,  -1,  0,  0,  0);  --迫る

setEffScaleKey(  spep_6,  bakuha,  1.0,  1.0);
setEffScaleKey(  spep_6+240,  bakuha,  1.0,  1.0);
setEffMoveKey(  spep_6,  bakuha,  0,  0);
setEffMoveKey(  spep_6+240,  bakuha,  0,  0);
setEffRotateKey(  spep_6,  bakuha,  0);
setEffRotateKey(  spep_6+240,  bakuha,  0);
setEffAlphaKey(  spep_6,  bakuha,  255);
setEffAlphaKey(  spep_6+240,  bakuha,  255);
setEffAlphaKey(  spep_6,  bakuha,  0);
setEffAlphaKey(  spep_6+240,  bakuha,  0);

--***敵の動き***
setDisp(  spep_6 + 30 -a,  1,  1);
setDisp(  spep_6 + 238-a,  1,  0);
changeAnime( spep_6 + 30-a,  1,  107);

setMoveKey( spep_6 + 30-a, 1, -175.3, -328.4 , 0 );
setMoveKey( spep_6 + 32-a, 1, -177.2, -330.6 , 0 );
setMoveKey( spep_6 + 34-a, 1, -178.3, -331.9 , 0 );
setMoveKey( spep_6 + 36-a, 1, -179.1, -332.7 , 0 );
setMoveKey( spep_6 + 38-a, 1, -179.8, -333.5 , 0 );
setMoveKey( spep_6 + 40-a, 1, -180.3, -334.2 , 0 );
setMoveKey( spep_6 + 42-a, 1, -180.8, -334.7 , 0 );
setMoveKey( spep_6 + 44-a, 1, -181.3, -335.2 , 0 );
setMoveKey( spep_6 + 46-a, 1, -181.7, -335.7 , 0 );
setMoveKey( spep_6 + 48-a, 1, -182.1, -336.1 , 0 );
setMoveKey( spep_6 + 50-a, 1, -182.4, -336.4 , 0 );
setMoveKey( spep_6 + 52-a, 1, -182.7, -336.8 , 0 );
setMoveKey( spep_6 + 54-a, 1, -183, -337.1 , 0 );
setMoveKey( spep_6 + 56-a, 1, -183.2, -337.4 , 0 );
setMoveKey( spep_6 + 58-a, 1, -183.5, -337.7 , 0 );
setMoveKey( spep_6 + 60-a, 1, -183.7, -337.9 , 0 );
setMoveKey( spep_6 + 62-a, 1, -183.9, -338.2 , 0 );
setMoveKey( spep_6 + 64-a, 1, -184.1, -338.4 , 0 );
setMoveKey( spep_6 + 66-a, 1, -184.3, -338.7 , 0 );
setMoveKey( spep_6 + 68-a, 1, -184.5, -338.9 , 0 );
setMoveKey( spep_6 + 70-a, 1, -184.7, -339 , 0 );
setMoveKey( spep_6 + 72-a, 1, -184.8, -339.2 , 0 );
setMoveKey( spep_6 + 74-a, 1, -185, -339.4 , 0 );
setMoveKey( spep_6 + 76-a, 1, -185.1, -339.5 , 0 );
setMoveKey( spep_6 + 78-a, 1, -185.3, -339.7 , 0 );
setMoveKey( spep_6 + 80-a, 1, -185.4, -339.8 , 0 );
setMoveKey( spep_6 + 82-a, 1, -185.5, -340 , 0 );
setMoveKey( spep_6 + 84-a, 1, -185.6, -340.1 , 0 );
setMoveKey( spep_6 + 86-a, 1, -185.7, -340.2 , 0 );
setMoveKey( spep_6 + 88-a, 1, -185.8, -340.3 , 0 );
setMoveKey( spep_6 + 90-a, 1, -185.9, -340.4 , 0 );
setMoveKey( spep_6 + 92-a, 1, -186, -340.6 , 0 );
setMoveKey( spep_6 + 94-a, 1, -186.1, -340.7 , 0 );
setMoveKey( spep_6 + 96-a, 1, -186.2, -340.8 , 0 );
setMoveKey( spep_6 + 98-a, 1, -186.3, -340.9 , 0 );
setMoveKey( spep_6 + 100-a, 1, -186.3, -340.9 , 0 );
setMoveKey( spep_6 + 102-a, 1, -186.4, -341 , 0 );
setMoveKey( spep_6 + 104-a, 1, -186.5, -341.1 , 0 );
setMoveKey( spep_6 + 106-a, 1, -186.6, -341.2 , 0 );
setMoveKey( spep_6 + 108-a, 1, -186.7, -341.3 , 0 );
setMoveKey( spep_6 + 110-a, 1, -186.8, -341.4 , 0 );
setMoveKey( spep_6 + 112-a, 1, -186.8, -341.4 , 0 );
setMoveKey( spep_6 + 114-a, 1, -186.9, -341.5 , 0 );
setMoveKey( spep_6 + 116-a, 1, -186.9, -341.6 , 0 );
setMoveKey( spep_6 + 118-a, 1, -187, -341.7 , 0 );
setMoveKey( spep_6 + 120-a, 1, -187.1, -341.8 , 0 );
setMoveKey( spep_6 + 122-a, 1, -187.1, -341.8 , 0 );
setMoveKey( spep_6 + 124-a, 1, -187.2, -341.9 , 0 );
setMoveKey( spep_6 + 126-a, 1, -187.2, -342 , 0 );
setMoveKey( spep_6 + 128-a, 1, -187.3, -342 , 0 );
setMoveKey( spep_6 + 130-a, 1, -187.4, -342.1 , 0 );
setMoveKey( spep_6 + 132-a, 1, -187.4, -342.1 , 0 );
setMoveKey( spep_6 + 134-a, 1, -187.5, -342.2 , 0 );
setMoveKey( spep_6 + 136-a, 1, -187.5, -342.3 , 0 );
setMoveKey( spep_6 + 138-a, 1, -187.6, -342.3 , 0 );
setMoveKey( spep_6 + 140-a, 1, -187.6, -342.3 , 0 );
setMoveKey( spep_6 + 142-a, 1, -187.7, -342.4 , 0 );
setMoveKey( spep_6 + 144-a, 1, -187.7, -342.4 , 0 );
setMoveKey( spep_6 + 146-a, 1, -187.8, -342.5 , 0 );
setMoveKey( spep_6 + 148-a, 1, -187.8, -342.6 , 0 );
setMoveKey( spep_6 + 150-a, 1, -187.8, -342.6 , 0 );
setMoveKey( spep_6 + 152-a, 1, -187.9, -342.6 , 0 );
setMoveKey( spep_6 + 154-a, 1, -187.9, -342.7 , 0 );
setMoveKey( spep_6 + 156-a, 1, -187.9, -342.7 , 0 );
setMoveKey( spep_6 + 158-a, 1, -188, -342.8 , 0 );
setMoveKey( spep_6 + 160-a, 1, -188, -342.8 , 0 );
setMoveKey( spep_6 + 162-a, 1, -188, -342.9 , 0 );
setMoveKey( spep_6 + 164-a, 1, -188.1, -342.9 , 0 );
setMoveKey( spep_6 + 166-a, 1, -188.1, -342.9 , 0 );
setMoveKey( spep_6 + 168-a, 1, -188.1, -343 , 0 );
setMoveKey( spep_6 + 170-a, 1, -188.2, -343 , 0 );
setMoveKey( spep_6 + 172-a, 1, -188.2, -343 , 0 );
setMoveKey( spep_6 + 174-a, 1, -188.2, -343.1 , 0 );
setMoveKey( spep_6 + 176-a, 1, -188.2, -343.1 , 0 );
setMoveKey( spep_6 + 178-a, 1, -188.3, -343.1 , 0 );
setMoveKey( spep_6 + 180-a, 1, -188.3, -343.1 , 0 );
setMoveKey( spep_6 + 182-a, 1, -188.3, -343.2 , 0 );
setMoveKey( spep_6 + 184-a, 1, -188.3, -343.2 , 0 );
setMoveKey( spep_6 + 186-a, 1, -188.4, -343.2 , 0 );
setMoveKey( spep_6 + 188-a, 1, -188.4, -343.3 , 0 );
setMoveKey( spep_6 + 192-a, 1, -188.4, -343.3 , 0 );
setMoveKey( spep_6 + 194-a, 1, -188.5, -343.3 , 0 );
setMoveKey( spep_6 + 198-a, 1, -188.5, -343.3 , 0 );
setMoveKey( spep_6 + 200-a, 1, -188.5, -343.4 , 0 );
setMoveKey( spep_6 + 202-a, 1, -188.5, -343.4 , 0 );
setMoveKey( spep_6 + 204-a, 1, -188.6, -343.4 , 0 );
setMoveKey( spep_6 + 208-a, 1, -188.6, -343.4 , 0 );
setMoveKey( spep_6 + 210-a, 1, -188.6, -343.5 , 0 );
setMoveKey( spep_6 + 214-a, 1, -188.6, -343.5 , 0 );
setMoveKey( spep_6 + 216-a, 1, -188.7, -343.5 , 0 );
setMoveKey( spep_6 + 218-a, 1, -188.7, -343.5 , 0 );
setMoveKey( spep_6 + 220-a, 1, -188.7, -343.6 , 0 );
setMoveKey( spep_6 + 228-a, 1, -188.7, -343.6 , 0 );
setMoveKey( spep_6 + 230-a, 1, -188.8, -343.6 , 0 );
setMoveKey( spep_6 + 232-a, 1, -188.8, -343.7 , 0 );
setMoveKey( spep_6 + 236-a, 1, -188.8, -343.7 , 0 );
setMoveKey( spep_6 + 238-a, 1, -188.7, -343.6 , 0 );

setScaleKey( spep_6 + 30-a, 1, 0.4, 0.4 );
setScaleKey( spep_6 + 32-a, 1, 0.4, 0.4 );
setScaleKey( spep_6 + 34-a, 1, 0.39, 0.39 );
setScaleKey( spep_6 + 38-a, 1, 0.39, 0.39 );
setScaleKey( spep_6 + 40-a, 1, 0.38, 0.38 );
setScaleKey( spep_6 + 52-a, 1, 0.38, 0.38 );
setScaleKey( spep_6 + 54-a, 1, 0.37, 0.37 );
setScaleKey( spep_6 + 80-a, 1, 0.37, 0.37 );
setScaleKey( spep_6 + 82-a, 1, 0.36, 0.36 );
setScaleKey( spep_6 + 170-a, 1, 0.36, 0.36 );
setScaleKey( spep_6 + 172-a, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 238-a, 1, 0.35, 0.35 );

setRotateKey( spep_6 + 30-a, 1, -60 );
setRotateKey( spep_6 + 238-a, 1, -60 );

bakuhaBG = entryEffect(  spep_6,  SP_11,  0x80,  -1,  0,  0,  0);  --迫る背景

setEffScaleKey(  spep_6,  bakuhaBG,  1.0,  1.0);
setEffScaleKey(  spep_6+240,  bakuhaBG,  1.0,  1.0);
setEffMoveKey(  spep_6,  bakuhaBG,  0,  0);
setEffMoveKey(  spep_6+240,  bakuhaBG,  0,  0);
setEffRotateKey(  spep_6,  bakuhaBG,  0);
setEffRotateKey(  spep_6+240,  bakuhaBG,  0);
setEffAlphaKey(  spep_6,  bakuhaBG,  0);
setEffAlphaKey(  spep_6+54,  bakuhaBG,  255);
setEffAlphaKey(  spep_6+240,  bakuhaBG,  255);


--***音***
playSe(  spep_6,  1032);  --斬撃
playSe(  spep_6 + 30,  1049);  --爆発
playSe(  spep_6 + 128,  1024);  --爆発

entryFadeBg( spep_6,  0,  54,  10,  0,  0,  0,  255);  --黒背景
entryFade(  spep_6 + 128, 2,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255 );  --white fade

-- ダメージ表示
dealDamage(spep_6+120);
endPhase(spep_6+220);
end

--　ボタマゲッタ_ボタマスペシャル

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

SP_01 = 152537; --突進
SP_02 = 152538; --殴る
SP_03 = 152539; --殴る背景
SP_04 = 152540; --構え
SP_05 = 152541; --発射
SP_06 = 152542; --爆発
SP_07 = 152543; --爆発背景


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -2000,  0,  0);
setMoveKey(   1,   0,    -2000,  0,  0);
setMoveKey(   2,   0,    -2000,  0,  0);
setMoveKey(   3,   0,    -2000,  0,  0);
setMoveKey(   4,   0,    -2000,  0,  0);
setMoveKey(   5,   0,    -2000,  0,  0);
setMoveKey(   6,   0,    -2000,  0,  0);
setMoveKey(   20,  0,    -2000,  0,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);
setScaleKey(  20,  0,  1.5,  1.5);

-- 敵

setMoveKey(   0,   1,    -2000,  0,  0);
setMoveKey(   1,   1,    -2000,  0,  0);
setMoveKey(   2,   1,    -2000,  0,  0);
setMoveKey(   3,   1,    -2000,  0,  0);
setMoveKey(   4,   1,    -2000,  0,  0);
setMoveKey(   5,   1,    -2000,  0,  0);
setMoveKey(   6,   1,    -2000,  0,  0);
setMoveKey(   20,  1,    -2000,  0,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);
setScaleKey(   20,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 突進(70F)
------------------------------------------------------
spep_1 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_1, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  2.25,  2.25);
setEffScaleKey(  spep_1+18,  shuchusen1,  1.04,  1.04);
setEffScaleKey(  spep_1+54,  shuchusen1,  1.04,  1.04);
setEffScaleKey(  spep_1+70,  shuchusen1,  1.41,  1.41);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+70,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+70,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+70,  shuchusen1,  255);


--***突進***
tosshin = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  tosshin,  1.0,  1.0);
setEffScaleKey(  spep_1+70,  tosshin,  1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin,  0,  0);
setEffMoveKey(  spep_1+70,  tosshin,  0,  0);
setEffRotateKey(  spep_1,  tosshin,  0);
setEffRotateKey(  spep_1+70,  tosshin,  0);
setEffAlphaKey(  spep_1,  tosshin,  255);
setEffAlphaKey(  spep_1+70,  tosshin,  255);

entryFadeBg( spep_1, 60, 10, 0, 0, 0, 0, 230);          -- 黒　背景

--***SE***
playSe(  spep_1,  9);

entryFade( spep_1+60, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 連撃(170F)
------------------------------------------------------
spep_2 = spep_1+70;

--***流線***
ryusen2 = entryEffectLife( spep_2, 914, 170, 0x80,  -1, 0,  0,  0);   -- 横線

setEffScaleKey(  spep_2,  ryusen2,  2.1,  1.1);
setEffScaleKey(  spep_2+170,  ryusen2,  2.1,  1.1);
setEffMoveKey(  spep_2,  ryusen2,  0,  0);
setEffMoveKey(  spep_2+170,  ryusen2,  0,  0);
setEffRotateKey(  spep_2,  ryusen2,  0);
setEffRotateKey(  spep_2+170,  ryusen2,  0);
setEffAlphaKey(  spep_2,  ryusen2,  100);--ちょっと薄くする
setEffAlphaKey(  spep_2+170,  ryusen2,  100);--ちょっと薄くする

--***集中線***
shuchusen2 = entryEffectLife( spep_2, 906, 170, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.29,  1.32);
setEffScaleKey(  spep_2+170,  shuchusen2,  1.29,  1.32);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+170,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+170,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2+36,  shuchusen2,  0);
setEffAlphaKey(  spep_2+40,  shuchusen2,  255);
setEffAlphaKey(  spep_2+42,  shuchusen2,  255);
setEffAlphaKey(  spep_2+52,  shuchusen2,  0);
setEffAlphaKey(  spep_2+62,  shuchusen2,  0);
setEffAlphaKey(  spep_2+70,  shuchusen2,  255);
setEffAlphaKey(  spep_2+80,  shuchusen2,  0);
setEffAlphaKey(  spep_2+82,  shuchusen2,  0);
setEffAlphaKey(  spep_2+88,  shuchusen2,  255);
setEffAlphaKey(  spep_2+100,  shuchusen2,  0);
setEffAlphaKey(  spep_2+122,  shuchusen2,  0);
setEffAlphaKey(  spep_2+124,  shuchusen2,  0);
setEffAlphaKey(  spep_2+132,  shuchusen2, 255);
setEffAlphaKey(  spep_2+134,  shuchusen2, 255);
setEffAlphaKey(  spep_2+170,  shuchusen2, 0);

--***格闘***
kakutou = entryEffect(  spep_2,  SP_02,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_2,  kakutou,  1.0,  1.0);
setEffScaleKey(  spep_2+170,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_2,  kakutou,  0,  0);
setEffMoveKey(  spep_2+170,  kakutou,  0,  0);
setEffRotateKey(  spep_2,  kakutou,  0);
setEffRotateKey(  spep_2+170,  kakutou,  0);
setEffAlphaKey(  spep_2,  kakutou,  255);
setEffAlphaKey(  spep_2+170,  kakutou,  255);

--***敵の動き***
setDisp( spep_2, 1, 1 );
setDisp( spep_2+166, 1, 0 );
setShakeChara(  spep_2+38-3,  1,  128,  20);  --揺れ
changeAnime( spep_2, 1, 101 );

setMoveKey( spep_2, 1, 134.1, -195.6 , 0 );
setMoveKey( spep_2+2, 1, 142.4, -197.8 , 0 );
setMoveKey( spep_2+4, 1, 139.8, -200 , 0 );
setMoveKey( spep_2+6, 1, 148, -202.3 , 0 );
setMoveKey( spep_2+8, 1, 145.5, -204.5 , 0 );

setScaleKey( spep_2, 1, 1.47, 1.47 );
setScaleKey( spep_2+2, 1, 1.45, 1.45 );
setScaleKey( spep_2+4, 1, 1.45, 1.45 );
setScaleKey( spep_2+6, 1, 1.44, 1.44 );
setScaleKey( spep_2+8, 1, 1.44, 1.44 );

setRotateKey( spep_2, 1, 10.7 );

--***格闘背景***
kakutouBG = entryEffect(  spep_2,  SP_03,  0x80,  -1,  0,  0,  0);  --格闘背景

setEffScaleKey(  spep_2,  kakutouBG,  1.0,  1.0);
setEffScaleKey(  spep_2+170,  kakutouBG,  1.0,  1.0);
setEffMoveKey(  spep_2,  kakutouBG,  0,  0);
setEffMoveKey(  spep_2+170,  kakutouBG,  0,  0);
setEffRotateKey(  spep_2,  kakutouBG,  0);
setEffRotateKey(  spep_2+170,  kakutouBG,  0);
setEffAlphaKey(  spep_2,  kakutouBG,  255);
setEffAlphaKey(  spep_2+170,  kakutouBG,  255);

entryFadeBg( spep_2, 0, 170, 0, 0, 0, 0, 255);          -- 黒　背景

--***SE***
playSe(  spep_2,  8);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+10 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setMoveKey( SP_dodge, 1, 145.5, -204.5 , 0 );
setMoveKey( SP_dodge+2, 1, 145.5, -204.5 , 0 );
setMoveKey( SP_dodge+4, 1, 145.5, -204.5 , 0 );
setMoveKey( SP_dodge+6, 1, 145.5, -204.5 , 0 );
setMoveKey( SP_dodge+8, 1, 145.5, -204.5 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( spep_2 + 0, 1, 1.44, 1.44  );
setScaleKey( spep_2 + 12, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 14, 1, 1.44, 1.44  );
setScaleKey( SP_dodge, 1, 1.44, 1.44 );
setScaleKey( SP_dodge+2, 1, 1.44, 1.44 );
setScaleKey( SP_dodge+4, 1, 1.44, 1.44 );
setScaleKey( SP_dodge+6, 1, 1.44, 1.44 );
setScaleKey( SP_dodge+8, 1, 1.44, 1.44 );

--changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  145.5, -204.5 , 0 );
setMoveKey(  SP_dodge+10,    1,  145.5, -204.5 , 0 );
setScaleKey( SP_dodge+9,    1,  1.44, 1.44 );
setScaleKey( SP_dodge+10,    1,  1.44, 1.44) ;
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
--回避されなかった場合
--------------------------------------

changeAnime( spep_2+38-3, 1, 104 );
changeAnime( spep_2+84-3, 1, 106 );
changeAnime( spep_2+126-3, 1, 108 );


setMoveKey( spep_2+10, 1, 153.9, -206.8 , 0 );
setMoveKey( spep_2+12, 1, 151.3, -209 , 0 );
setMoveKey( spep_2+14, 1, 159.4, -211.3 , 0 );
setMoveKey( spep_2+16, 1, 167.8, -213.6 , 0 );
setMoveKey( spep_2+18, 1, 165.2, -215.8 , 0 );
setMoveKey( spep_2+20, 1, 173.5, -218.1 , 0 );
setMoveKey( spep_2+22, 1, 169.9, -219.9 , 0 );
setMoveKey( spep_2+24, 1, 177.1, -221.7 , 0 );
setMoveKey( spep_2+26, 1, 173.5, -223.4 , 0 );
setMoveKey( spep_2+28, 1, 180.7, -225.3 , 0 );
setMoveKey( spep_2+30, 1, 177.1, -227 , 0 );
setMoveKey( spep_2+32, 1, 184.4, -229 , 0 );
setMoveKey( spep_2+34, 1, 180.8, -230.7 , 0 );
--setMoveKey( spep_2+37, 1, 234.8, -232.5 , 0 );
setMoveKey( spep_2+38-3, 1, 208.2, -209.4 , 0 );
setMoveKey( spep_2+40-3, 1, 230.2, -205.7 , 0 );
setMoveKey( spep_2+42-3, 1, 261.5, -136.4 , 0 );
setMoveKey( spep_2+44-3, 1, 286.3, -181.5 , 0 );
setMoveKey( spep_2+46-3, 1, 313.9, -179.1 , 0 );
setMoveKey( spep_2+48-3, 1, 321.5, -204.1 , 0 );
setMoveKey( spep_2+50-3, 1, 320.3, -198.9 , 0 );
setMoveKey( spep_2+52-3, 1, 312.4, -212.2 , 0 );
setMoveKey( spep_2+54-3, 1, 299.4, -211.7 , 0 );
setMoveKey( spep_2+56-3, 1, 282.7, -220 , 0 );
setMoveKey( spep_2+58-3, 1, 263, -225.7 , 0 );
setMoveKey( spep_2+60-3, 1, 240.9, -230.4 , 0 );
setMoveKey( spep_2+62-3, 1, 217, -233.8 , 0 );
setMoveKey( spep_2+64-3, 1, 192.4, -235.1 , 0 );
setMoveKey( spep_2+66-3, 1, 158.2, -224 , 0 );
setMoveKey( spep_2+68-3, 1, 269.8, -191.6 , 0 );
setMoveKey( spep_2+70-3, 1, 347.7, -159.6 , 0 );
setMoveKey( spep_2+72-3, 1, 372.4, -181.7 , 0 );
setMoveKey( spep_2+74-3, 1, 360.7, -201 , 0 );
setMoveKey( spep_2+76-3, 1, 325.9, -209.1 , 0 );
setMoveKey( spep_2+78-3, 1, 274.6, -217.3 , 0 );
setMoveKey( spep_2+80-3, 1, 215.5, -224.6 , 0 );
setMoveKey( spep_2+83-3, 1, 149.6, -227.8 , 0 );
setMoveKey( spep_2+84-3, 1, 193.9, -189.5 , 0 );
setMoveKey( spep_2+86-3, 1, 230.5, -188 , 0 );
setMoveKey( spep_2+88-3, 1, 267.2, -118.9 , 0 );
setMoveKey( spep_2+90-3, 1, 302.6, -167.8 , 0 );
setMoveKey( spep_2+92-3, 1, 325.7, -137.9 , 0 );
setMoveKey( spep_2+94-3, 1, 340.7, -153.2 , 0 );
setMoveKey( spep_2+96-3, 1, 348.1, -148.4 , 0 );
setMoveKey( spep_2+98-3, 1, 348.9, -151.5 , 0 );
setMoveKey( spep_2+100-3, 1, 344.2, -154.8 , 0 );
setMoveKey( spep_2+102-3, 1, 335, -158.3 , 0 );
setMoveKey( spep_2+104-3, 1, 321.9, -161.7 , 0 );
setMoveKey( spep_2+106-3, 1, 303.1, -165.6 , 0 );
setMoveKey( spep_2+108-3, 1, 284.3, -169.3 , 0 );
setMoveKey( spep_2+110-3, 1, 263.1, -172.6 , 0 );
setMoveKey( spep_2+112-3, 1, 240.3, -175.9 , 0 );
setMoveKey( spep_2+114-3, 1, 215.9, -179 , 0 );
setMoveKey( spep_2+116-3, 1, 190.1, -181.9 , 0 );
setMoveKey( spep_2+118-3, 1, 163.1, -184.3 , 0 );
setMoveKey( spep_2+120-3, 1, 135.3, -186.3 , 0 );
setMoveKey( spep_2+122-3, 1, 114.3, -187 , 0 );
setMoveKey( spep_2+125-3, 1, 85.2, -176.8 , 0 );
setMoveKey( spep_2+126-3, 1, 225.2, -218.3 , 0 );
setMoveKey( spep_2+128-3, 1, 348.2, -189.1 , 0 );
setMoveKey( spep_2+130-3, 1, 452.9, -138.5 , 0 );
setMoveKey( spep_2+132-3, 1, 549.1, -156.8 , 0 );
setMoveKey( spep_2+134-3, 1, 612.2, -157.4 , 0 );
setMoveKey( spep_2+136-3, 1, 644.2, -140.7 , 0 );
setMoveKey( spep_2+138-3, 1, 661.7, -151.2 , 0 );
setMoveKey( spep_2+140-3, 1, 668.7, -143.4 , 0 );
setMoveKey( spep_2+142-3, 1, 677.2, -151.7 , 0 );
setMoveKey( spep_2+144-3, 1, 680.7, -149.8 , 0 );
setMoveKey( spep_2+146-3, 1, 680.3, -156.9 , 0 );
setMoveKey( spep_2+148-3, 1, 677, -158.1 , 0 );
setMoveKey( spep_2+150-3, 1, 671.6, -164 , 0 );
setMoveKey( spep_2+152-3, 1, 664.6, -165.1 , 0 );
setMoveKey( spep_2+154-3, 1, 656.4, -168.9 , 0 );
setMoveKey( spep_2+156-3, 1, 637.6, -173.7 , 0 );
setMoveKey( spep_2+158-3, 1, 628.1, -176.1 , 0 );
setMoveKey( spep_2+160-3, 1, 618.3, -180.1 , 0 );
setMoveKey( spep_2+162-3, 1, 608.4, -182.8 , 0 );
setMoveKey( spep_2+164-3, 1, 598.1, -187.1 , 0 );
setMoveKey( spep_2+166-3, 1, 587.8, -190.2 , 0 );

setScaleKey( spep_2+10, 1, 1.42, 1.42 );
setScaleKey( spep_2+12, 1, 1.42, 1.42 );
setScaleKey( spep_2+14, 1, 1.41, 1.41 );
setScaleKey( spep_2+16, 1, 1.39, 1.39 );
setScaleKey( spep_2+18, 1, 1.39, 1.39 );
setScaleKey( spep_2+20, 1, 1.38, 1.38 );
setScaleKey( spep_2+22, 1, 1.38, 1.38 );
setScaleKey( spep_2+24, 1, 1.36, 1.36 );
setScaleKey( spep_2+26, 1, 1.36, 1.36 );
setScaleKey( spep_2+28, 1, 1.35, 1.35 );
setScaleKey( spep_2+30, 1, 1.35, 1.35 );
setScaleKey( spep_2+32, 1, 1.33, 1.33 );
setScaleKey( spep_2+34, 1, 1.33, 1.33 );
--setScaleKey( spep_2+37, 1, 1.32, 1.32 );
setScaleKey( spep_2+38-3, 1, 1.45, 1.45 );
setScaleKey( spep_2+40-3, 1, 1.58, 1.58 );
setScaleKey( spep_2+42-3, 1, 1.64, 1.64 );
setScaleKey( spep_2+44-3, 1, 1.64, 1.63 );
setScaleKey( spep_2+46-3, 1, 1.6, 1.6 );
setScaleKey( spep_2+48-3, 1, 1.57, 1.57 );
setScaleKey( spep_2+50-3, 1, 1.54, 1.54 );
setScaleKey( spep_2+52-3, 1, 1.51, 1.51 );
setScaleKey( spep_2+54-3, 1, 1.48, 1.48 );
setScaleKey( spep_2+56-3, 1, 1.45, 1.45 );
setScaleKey( spep_2+58-3, 1, 1.42, 1.42 );
setScaleKey( spep_2+60-3, 1, 1.39, 1.39 );
setScaleKey( spep_2+62-3, 1, 1.36, 1.36 );
setScaleKey( spep_2+64-3, 1, 1.35, 1.35 );
setScaleKey( spep_2+66-3, 1, 1.49, 1.49 );
setScaleKey( spep_2+68-3, 1, 1.64, 1.64 );
setScaleKey( spep_2+70-3, 1, 1.63, 1.63 );
setScaleKey( spep_2+72-3, 1, 1.58, 1.58 );
setScaleKey( spep_2+74-3, 1, 1.54, 1.54 );
setScaleKey( spep_2+76-3, 1, 1.49, 1.49 );
setScaleKey( spep_2+78-3, 1, 1.47, 1.47 );
setScaleKey( spep_2+80-3, 1, 1.42, 1.42 );
setScaleKey( spep_2+83-3, 1, 1.38, 1.38 );
setScaleKey( spep_2+84-3, 1, 1.47, 1.47 );
setScaleKey( spep_2+86-3, 1, 1.55, 1.55 );
setScaleKey( spep_2+88-3, 1, 1.64, 1.64 );
setScaleKey( spep_2+90-3, 1, 1.64, 1.64 );
setScaleKey( spep_2+92-3, 1, 1.63, 1.63 );
setScaleKey( spep_2+94-3, 1, 1.61, 1.61 );
setScaleKey( spep_2+96-3, 1, 1.6, 1.6 );
setScaleKey( spep_2+98-3, 1, 1.58, 1.58 );
setScaleKey( spep_2+100-3, 1, 1.57, 1.57 );
setScaleKey( spep_2+102-3, 1, 1.55, 1.55 );
setScaleKey( spep_2+104-3, 1, 1.54, 1.54 );
setScaleKey( spep_2+106-3, 1, 1.51, 1.51 );
setScaleKey( spep_2+108-3, 1, 1.49, 1.49 );
setScaleKey( spep_2+110-3, 1, 1.48, 1.48 );
setScaleKey( spep_2+112-3, 1, 1.47, 1.47 );
setScaleKey( spep_2+114-3, 1, 1.45, 1.45 );
setScaleKey( spep_2+116-3, 1, 1.44, 1.44 );
setScaleKey( spep_2+118-3, 1, 1.42, 1.42 );
setScaleKey( spep_2+120-3, 1, 1.41, 1.41 );
setScaleKey( spep_2+122-3, 1, 1.41, 1.41 );
setScaleKey( spep_2+125-3, 1, 1.49, 1.49 );
setScaleKey( spep_2+126-3, 1, 1.57, 1.57 );
setScaleKey( spep_2+128-3, 1, 1.66, 1.66 );
setScaleKey( spep_2+130-3, 1, 1.73, 1.73 );
setScaleKey( spep_2+132-3, 1, 1.73, 1.73 );
setScaleKey( spep_2+134-3, 1, 1.71, 1.71 );
setScaleKey( spep_2+136-3, 1, 1.7, 1.7 );
setScaleKey( spep_2+138-3, 1, 1.68, 1.68 );
setScaleKey( spep_2+140-3, 1, 1.67, 1.67 );
setScaleKey( spep_2+142-3, 1, 1.66, 1.66 );
setScaleKey( spep_2+144-3, 1, 1.64, 1.64 );
setScaleKey( spep_2+146-3, 1, 1.63, 1.63 );
setScaleKey( spep_2+148-3, 1, 1.61, 1.61 );
setScaleKey( spep_2+150-3, 1, 1.6, 1.6 );
setScaleKey( spep_2+152-3, 1, 1.58, 1.58 );
setScaleKey( spep_2+154-3, 1, 1.57, 1.57 );
setScaleKey( spep_2+156-3, 1, 1.54, 1.54 );
setScaleKey( spep_2+158-3, 1, 1.52, 1.52 );
setScaleKey( spep_2+160-3, 1, 1.51, 1.51 );
setScaleKey( spep_2+162-3, 1, 1.49, 1.49 );
setScaleKey( spep_2+164-3, 1, 1.48, 1.48 );
setScaleKey( spep_2+166-3, 1, 1.47, 1.47 );


setRotateKey( spep_2+34, 1, 10.7 );
--setRotateKey( spep_2+37, 1, 10.7 );
setRotateKey( spep_2+38-3, 1, 0 );
setRotateKey( spep_2+46-3, 1, 0 );
setRotateKey( spep_2+48-3, 1, 0.1 );
setRotateKey( spep_2+52-3, 1, 0.1 );
setRotateKey( spep_2+54-3, 1, 0.2 );
setRotateKey( spep_2+64-3, 1, 0.2 );
setRotateKey( spep_2+66-3, 1, -39.1 );
setRotateKey( spep_2+68-3, 1, -36.9 );
setRotateKey( spep_2+70-3, 1, -35.1 );
setRotateKey( spep_2+72-3, 1, -33.9 );
setRotateKey( spep_2+74-3, 1, -33.2 );
setRotateKey( spep_2+76-3, 1, -32.8 );
setRotateKey( spep_2+78-3, 1, -32.6 );
setRotateKey( spep_2+80-3, 1, -32.4 );
setRotateKey( spep_2+83-3, 1, -32.4 );
setRotateKey( spep_2+84-3, 1, -40.1 );
setRotateKey( spep_2+86-3, 1, -37.6 );
setRotateKey( spep_2+88-3, 1, -35.1 );
setRotateKey( spep_2+90-3, 1, -32.8 );
setRotateKey( spep_2+92-3, 1, -30.8 );
setRotateKey( spep_2+94-3, 1, -29.2 );
setRotateKey( spep_2+96-3, 1, -27.9 );
setRotateKey( spep_2+98-3, 1, -26.8 );
setRotateKey( spep_2+100-3, 1, -25.8 );
setRotateKey( spep_2+102-3, 1, -25.1 );
setRotateKey( spep_2+104-3, 1, -24.5 );
setRotateKey( spep_2+106-3, 1, -23.9 );
setRotateKey( spep_2+108-3, 1, -23.5 );
setRotateKey( spep_2+110-3, 1, -23.2 );
setRotateKey( spep_2+112-3, 1, -22.9 );
setRotateKey( spep_2+114-3, 1, -22.7 );
setRotateKey( spep_2+116-3, 1, -22.5 );
setRotateKey( spep_2+118-3, 1, -22.4 );
setRotateKey( spep_2+120-3, 1, -22.3 );
setRotateKey( spep_2+125-3, 1, -22.3 );
setRotateKey( spep_2+126-3, 1, 0 );
setRotateKey( spep_2+128-3, 1, -6.8 );
setRotateKey( spep_2+130-3, 1, -12.3 );
setRotateKey( spep_2+132-3, 1, -17 );
setRotateKey( spep_2+134-3, 1, -20.8 );
setRotateKey( spep_2+136-3, 1, -23.8 );
setRotateKey( spep_2+138-3, 1, -26 );
setRotateKey( spep_2+140-3, 1, -27.6 );
setRotateKey( spep_2+142-3, 1, -28.7 );
setRotateKey( spep_2+144-3, 1, -29.6 );
setRotateKey( spep_2+146-3, 1, -30.2 );
setRotateKey( spep_2+148-3, 1, -30.6 );
setRotateKey( spep_2+150-3, 1, -30.9 );
setRotateKey( spep_2+152-3, 1, -31.1 );
setRotateKey( spep_2+154-3, 1, -31.2 );
setRotateKey( spep_2+156-3, 1, -31.3 );
setRotateKey( spep_2+158-3, 1, -31.4 );

--***SE***
playSe(  spep_2+34,  1006);
playSe(  spep_2+62,  1008);
playSe(  spep_2+80,  1010);
playSe(  spep_2+122,  1011);

entryFade( spep_2+162, 6, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 構え(90F)
------------------------------------------------------
spep_3 = spep_2+170;

--***集中線***
shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3,  shuchusen3,  1.3,  1.3);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.3,  1.3);
setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

--***構え***
kamae = entryEffect(  spep_3,  SP_04,  0x80,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_3,  kamae,  1.0,  1.0);
setEffScaleKey(  spep_3+90,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_3,  kamae,  0,  0);
setEffMoveKey(  spep_3+90,  kamae,  0,  0);
setEffRotateKey(  spep_3,  kamae,  0);
setEffRotateKey(  spep_3+90,  kamae,  0);
setEffAlphaKey(  spep_3,  kamae,  255);
setEffAlphaKey(  spep_3+90,  kamae,  255);

--***カットイン***
speff = entryEffect(  spep_3,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+12, 190006, 67, 0x100, -1, 0, 100, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_3+12, ctgogo, 255 );
setEffAlphaKey( spep_3+32, ctgogo, 255 );
setEffAlphaKey( spep_3+79, ctgogo, 0 );
setEffRotateKey(  spep_3+12,  ctgogo,  0);
setEffRotateKey(  spep_3+79,  ctgogo,  0);
setEffScaleKey(  spep_3+12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3+32,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3+79, ctgogo, 1.07, 1.07 );
setEffMoveKey(  spep_3+12,  ctgogo,  100,  510);
setEffMoveKey(  spep_3+79,  ctgogo,  100,  510);

entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255);          -- 黒　背景

--***SE***
playSe(  spep_3+12,  SE_04);
------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_4 = spep_3+90;

--***フェードと背景***
entryFade( spep_4-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.6,  1.6);
setEffScaleKey(  spep_4+90,  shuchusen4,  1.6,  1.6);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+90,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+90,  shuchusen4,  255);

entryFade( spep_4+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 発射(120F)
------------------------------------------------------
spep_5 = spep_4+90;

--***書き文字***
ct_zuo = entryEffectLife( spep_5+32,  10012, 82, 0x100, -1, 0, 16, 59.9 );  --ズオ
setEffShake( spep_5 + 32, ct_zuo, 82, 25 );

setEffMoveKey( spep_5+32, ct_zuo, 16, 59.9 , 0 );
setEffMoveKey( spep_5+36, ct_zuo, 9.5, 50.9 , 0 );
setEffMoveKey( spep_5+38, ct_zuo, -9.4, 50.5 , 0 );
setEffMoveKey( spep_5+40, ct_zuo, -24.5, 45.4 , 0 );
setEffMoveKey( spep_5+42, ct_zuo, -12.8, 34.5 , 0 );
setEffMoveKey( spep_5+44, ct_zuo, -29.5, 44.3 , 0 );
setEffMoveKey( spep_5+46, ct_zuo, -17.3, 33.4 , 0 );
setEffMoveKey( spep_5+48, ct_zuo, -34.5, 43.4 , 0 );
setEffMoveKey( spep_5+50, ct_zuo, -21.9, 32.1 , 0 );
setEffMoveKey( spep_5+52, ct_zuo, -39.3, 42.4 , 0 );
setEffMoveKey( spep_5+54, ct_zuo, -26.4, 31 , 0 );
setEffMoveKey( spep_5+56, ct_zuo, -44.3, 41.5 , 0 );
setEffMoveKey( spep_5+58, ct_zuo, -30.9, 29.8 , 0 );
setEffMoveKey( spep_5+60, ct_zuo, -49.3, 40.6 , 0 );
setEffMoveKey( spep_5+62, ct_zuo, -35.4, 28.6 , 0 );
setEffMoveKey( spep_5+64, ct_zuo, -54.4, 39.5 , 0 );
setEffMoveKey( spep_5+66, ct_zuo, -39.8, 27.5 , 0 );
setEffMoveKey( spep_5+68, ct_zuo, -59.3, 38.5 , 0 );
setEffMoveKey( spep_5+70, ct_zuo, -44.5, 26.2 , 0 );
setEffMoveKey( spep_5+72, ct_zuo, -64.2, 37.7 , 0 );
setEffMoveKey( spep_5+74, ct_zuo, -48.9, 25.1 , 0 );
setEffMoveKey( spep_5+76, ct_zuo, -69.2, 36.7 , 0 );
setEffMoveKey( spep_5+78, ct_zuo, -53.3, 24 , 0 );
setEffMoveKey( spep_5+80, ct_zuo, -74.2, 35.7 , 0 );
setEffMoveKey( spep_5+82, ct_zuo, -57.8, 22.9 , 0 );
setEffMoveKey( spep_5+84, ct_zuo, -79.2, 34.6 , 0 );
setEffMoveKey( spep_5+86, ct_zuo, -62.3, 21.6 , 0 );
setEffMoveKey( spep_5+88, ct_zuo, -84.1, 33.7 , 0 );
setEffMoveKey( spep_5+90, ct_zuo, -66.9, 20.5 , 0 );
setEffMoveKey( spep_5+92, ct_zuo, -89.1, 32.8 , 0 );
setEffMoveKey( spep_5+94, ct_zuo, -71.3, 19.3 , 0 );
setEffMoveKey( spep_5+96, ct_zuo, -94, 31.9 , 0 );
setEffMoveKey( spep_5+98, ct_zuo, -75.7, 18.2 , 0 );
setEffMoveKey( spep_5+100, ct_zuo, -99, 30.9 , 0 );
setEffMoveKey( spep_5+102, ct_zuo, -80.3, 17.1 , 0 );
setEffMoveKey( spep_5+104, ct_zuo, -104.1, 29.9 , 0 );
setEffMoveKey( spep_5+106, ct_zuo, -12.4, 29.1 , 0 );
setEffMoveKey( spep_5+108, ct_zuo, 26.4, 62.7 , 0 );
setEffMoveKey( spep_5+110, ct_zuo, 127.3, 53.4 , 0 );
setEffMoveKey( spep_5+112, ct_zuo, 156.7, 95.5 , 0 );
setEffMoveKey( spep_5+114, ct_zuo, 222, 111.9 , 0 );

setEffScaleKey( spep_5+32, ct_zuo, 0.27, 0.27 );
setEffScaleKey( spep_5+40, ct_zuo, 0.43, 0.43 );
setEffScaleKey( spep_5+44, ct_zuo, 1.61, 1.61 );
setEffScaleKey( spep_5+102, ct_zuo, 2.89, 2.88 );
setEffScaleKey( spep_5+106, ct_zuo, 2.9, 2.89 );
setEffScaleKey( spep_5+108, ct_zuo, 3.12, 3.11 );
setEffScaleKey( spep_5+110, ct_zuo, 5.56, 5.56 );
setEffScaleKey( spep_5+112, ct_zuo, 6.78, 6.78 );
setEffScaleKey( spep_5+114, ct_zuo, 6.78, 6.78 );

setEffRotateKey( spep_5+32, ct_zuo, 11.3 );
setEffRotateKey( spep_5+34, ct_zuo, 10.5 );
setEffRotateKey( spep_5+36, ct_zuo, 9.5 );
setEffRotateKey( spep_5+38, ct_zuo, 8.5 );
setEffRotateKey( spep_5+40, ct_zuo, 8.6 );
setEffRotateKey( spep_5+42, ct_zuo, 8.7 );
setEffRotateKey( spep_5+44, ct_zuo, 8.9 );
setEffRotateKey( spep_5+46, ct_zuo, 9 );
setEffRotateKey( spep_5+48, ct_zuo, 9.1 );
setEffRotateKey( spep_5+50, ct_zuo, 9.3 );
setEffRotateKey( spep_5+52, ct_zuo, 9.4 );
setEffRotateKey( spep_5+54, ct_zuo, 9.6 );
setEffRotateKey( spep_5+56, ct_zuo, 9.7 );
setEffRotateKey( spep_5+58, ct_zuo, 9.8 );
setEffRotateKey( spep_5+60, ct_zuo, 10 );
setEffRotateKey( spep_5+62, ct_zuo, 10.1 );
setEffRotateKey( spep_5+64, ct_zuo, 10.2 );
setEffRotateKey( spep_5+66, ct_zuo, 10.4 );
setEffRotateKey( spep_5+68, ct_zuo, 10.5 );
setEffRotateKey( spep_5+70, ct_zuo, 10.6 );
setEffRotateKey( spep_5+72, ct_zuo, 10.8 );
setEffRotateKey( spep_5+74, ct_zuo, 10.9 );
setEffRotateKey( spep_5+76, ct_zuo, 11 );
setEffRotateKey( spep_5+88, ct_zuo, 11.2 );
setEffRotateKey( spep_5+80, ct_zuo, 11.3 );
setEffRotateKey( spep_5+82, ct_zuo, 11.5 );
setEffRotateKey( spep_5+84, ct_zuo, 11.6 );
setEffRotateKey( spep_5+86, ct_zuo, 11.7 );
setEffRotateKey( spep_5+88, ct_zuo, 11.9 );
setEffRotateKey( spep_5+90, ct_zuo, 12 );
setEffRotateKey( spep_5+92, ct_zuo, 12.1 );
setEffRotateKey( spep_5+94, ct_zuo, 12.3 );
setEffRotateKey( spep_5+96, ct_zuo, 12.4 );
setEffRotateKey( spep_5+98, ct_zuo, 12.5 );
setEffRotateKey( spep_5+100, ct_zuo, 12.7 );
setEffRotateKey( spep_5+102, ct_zuo, 12.8 );
setEffRotateKey( spep_5+104, ct_zuo, 12.9 );
setEffRotateKey( spep_5+106, ct_zuo, 11.8 );
setEffRotateKey( spep_5+108, ct_zuo, 10.6 );
setEffRotateKey( spep_5+110, ct_zuo, 9.4 );
setEffRotateKey( spep_5+112, ct_zuo, 8.2 );
setEffRotateKey( spep_5+114, ct_zuo, 7 );

setEffAlphaKey( spep_5+32, ct_zuo, 255 );
setEffAlphaKey( spep_5+104, ct_zuo, 255 );
setEffAlphaKey( spep_5+106, ct_zuo, 204 );
setEffAlphaKey( spep_5+108, ct_zuo, 153 );
setEffAlphaKey( spep_5+110, ct_zuo, 102 );
setEffAlphaKey( spep_5+112, ct_zuo, 51 );
setEffAlphaKey( spep_5+114, ct_zuo, 0 );

--***溜めから発射***
tamehassya = entryEffect(  spep_5,  SP_05,  0x100,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_5,  tamehassya,  1.0,  1.0);
setEffScaleKey(  spep_5+120,  tamehassya,  1.0,  1.0);
setEffMoveKey(  spep_5,  tamehassya,  0,  0);
setEffMoveKey(  spep_5+120,  tamehassya,  0,  0);
setEffRotateKey(  spep_5,  tamehassya,  0);
setEffRotateKey(  spep_5+120,  tamehassya,  0);
setEffAlphaKey(  spep_5,  tamehassya,  255);
setEffAlphaKey(  spep_5+120,  tamehassya,  255);

--***流線***
ryusen6 = entryEffectLife( spep_5, 921, 120, 0x80,  -1, 0,  0,  0);   --奥行き

setEffMoveKey(  spep_5,  ryusen6,  0,  0);
setEffMoveKey(  spep_5+120,  ryusen6,  0,  0);
setEffScaleKey(  spep_5,  ryusen6,  1.2,  1.2);
setEffScaleKey(  spep_5+120,  ryusen6,  1.2,  1.2);
setEffRotateKey(  spep_5,  ryusen6,  180);
setEffRotateKey(  spep_5+120,  ryusen6,  180);
setEffAlphaKey(  spep_5,  ryusen6,  255);
setEffAlphaKey(  spep_5+118,  ryusen6,  255);
setEffAlphaKey(  spep_5+119,  ryusen6,  0);
setEffAlphaKey(  spep_5+120,  ryusen6,  0);

entryFadeBg( spep_5, 0, 120, 0, 0, 0, 0, 255);          -- 黒　背景

--***SE***
playSe(  spep_5,  17);  --溜め
playSe(  spep_5+32,  1021);

entryFade( spep_5+108, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 迫るから爆発(200F)
------------------------------------------------------
spep_6 = spep_5+120;

--***流線***
ryusen7 = entryEffectLife( spep_6, 921, 200, 0x80,  -1, 0,  0,  0);   --奥行き

setEffMoveKey(  spep_6,  ryusen7,  0,  0);
setEffMoveKey(  spep_6+200,  ryusen7,  0,  0);
setEffScaleKey(  spep_6,  ryusen7,  1.2,  1.2);
setEffScaleKey(  spep_6+200,  ryusen7,  1.2,  1.2);
setEffRotateKey(  spep_6,  ryusen7,  0);
setEffRotateKey(  spep_6+200,  ryusen7,  0);
setEffAlphaKey(  spep_6,  ryusen7,  255);
setEffAlphaKey(  spep_6+200,  ryusen7,  255);

--***ビーム当たる背景***+
bakuhastuBG = entryEffect(  spep_6,  SP_07,  0x80,  -1,  0,  0,  0);  

setEffScaleKey(  spep_6,  bakuhastuBG,  1.0,  1.0);
setEffScaleKey(  spep_6+200,  bakuhastuBG,  1.0,  1.0);
setEffMoveKey(  spep_6,  bakuhastuBG,  0,  0);
setEffMoveKey(  spep_6+200,  bakuhastuBG,  0,  0);
setEffRotateKey(  spep_6,  bakuhastuBG,  0);
setEffRotateKey(  spep_6+200,  bakuhastuBG,  0);
setEffAlphaKey(  spep_6,  bakuhastuBG,  255);
setEffAlphaKey(  spep_6+200,  bakuhastuBG,  255);

--***ビーム当たる前面***+2
bakuhastu = entryEffect(  spep_6,  SP_06,  0x100,  -1,  0,  0,  0);  

setEffScaleKey(  spep_6,  bakuhastu,  1.0,  1.0);
setEffScaleKey(  spep_6+200,  bakuhastu,  1.0,  1.0);
setEffMoveKey(  spep_6,  bakuhastu,  0,  0);
setEffMoveKey(  spep_6+200,  bakuhastu,  0,  0);
setEffRotateKey(  spep_6,  bakuhastu,  0);
setEffRotateKey(  spep_6+200,  bakuhastu,  0);
setEffAlphaKey(  spep_6,  bakuhastu,  255);
setEffAlphaKey(  spep_6+200,  bakuhastu,  255);

ct_zudodo = entryEffectLife( spep_6+0,  10014, 96, 0x100, -1, 0, 58.1, 364 );  --ズドド
setEffShake( spep_6 + 0, ct_zudodo, 96, 25 );

setEffMoveKey( spep_6+0, ct_zudodo, 58.1, 364 , 0 );
--[[setEffMoveKey( spep_6+2, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+4, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+6, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+8, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+10, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+12, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+14, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+16, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+18, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+20, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+22, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+24, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+26, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+28, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+30, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+32, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+34, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+36, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+38, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+40, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+42, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+44, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+46, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+48, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+50, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+52, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+54, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+56, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+58, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+60, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+62, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+64, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+66, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+68, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+70, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+72, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+74, ct_zudodo, 34.1, 348 , 0 );]]
setEffMoveKey( spep_6+74, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+76, ct_zudodo, 60.3, 371.4 , 0 );
setEffMoveKey( spep_6+78, ct_zudodo, 37.2, 362 , 0 );
setEffMoveKey( spep_6+80, ct_zudodo, 64.6, 386.3 , 0 );
setEffMoveKey( spep_6+82, ct_zudodo, 40.2, 376 , 0 );
setEffMoveKey( spep_6+84, ct_zudodo, 69, 401.2 , 0 );
setEffMoveKey( spep_6+86, ct_zudodo, 43.3, 390.1 , 0 );
setEffMoveKey( spep_6+88, ct_zudodo, 73.4, 416.1 , 0 );
setEffMoveKey( spep_6+90, ct_zudodo, 46.3, 404.1 , 0 );
setEffMoveKey( spep_6+92, ct_zudodo, 77.7, 431 , 0 );
setEffMoveKey( spep_6+94, ct_zudodo, 49.4, 418.1 , 0 );
setEffMoveKey( spep_6+96, ct_zudodo, 50.9, 425.1 , 0 );

setEffScaleKey( spep_6+0, ct_zudodo, 3.5, 3.5 );
setEffScaleKey( spep_6+74, ct_zudodo, 3.5, 3.5 );
setEffScaleKey( spep_6+76, ct_zudodo, 3.53, 3.53 );
setEffScaleKey( spep_6+78, ct_zudodo, 3.55, 3.55 );
setEffScaleKey( spep_6+80, ct_zudodo, 3.58, 3.58 );
setEffScaleKey( spep_6+82, ct_zudodo, 3.61, 3.61 );
setEffScaleKey( spep_6+84, ct_zudodo, 3.64, 3.64 );
setEffScaleKey( spep_6+86, ct_zudodo, 3.66, 3.66 );
setEffScaleKey( spep_6+88, ct_zudodo, 3.69, 3.69 );
setEffScaleKey( spep_6+90, ct_zudodo, 3.72, 3.72 );
setEffScaleKey( spep_6+92, ct_zudodo, 3.75, 3.75 );
setEffScaleKey( spep_6+94, ct_zudodo, 3.77, 3.77 );
setEffScaleKey( spep_6+96, ct_zudodo, 4.4, 4.4 );
setEffRotateKey( spep_6+0, ct_zudodo, 66 );
setEffRotateKey( spep_6+96, ct_zudodo, 66 );
setEffAlphaKey( spep_6+0, ct_zudodo, 255 );
setEffAlphaKey( spep_6+74, ct_zudodo, 255 );
setEffAlphaKey( spep_6+76, ct_zudodo, 232 );
setEffAlphaKey( spep_6+78, ct_zudodo, 209 );
setEffAlphaKey( spep_6+80, ct_zudodo, 185 );
setEffAlphaKey( spep_6+82, ct_zudodo, 162 );
setEffAlphaKey( spep_6+84, ct_zudodo, 139 );
setEffAlphaKey( spep_6+86, ct_zudodo, 116 );
setEffAlphaKey( spep_6+88, ct_zudodo, 93 );
setEffAlphaKey( spep_6+90, ct_zudodo, 70 );
setEffAlphaKey( spep_6+92, ct_zudodo, 46 );
setEffAlphaKey( spep_6+94, ct_zudodo, 23 );
setEffAlphaKey( spep_6+96, ct_zudodo, 0 );

--***敵の動き***
setDisp( spep_6+0, 1, 1 );
setDisp( spep_6+98, 1, 0 );
changeAnime( spep_6+0, 1, 104 );
changeAnime( spep_6+60-3, 1, 108 );

setMoveKey( spep_6+0, 1, 237.9, -38.1 , 0 );
setMoveKey( spep_6+2, 1, 247, -28.7 , 0 );
setMoveKey( spep_6+4, 1, 238, -35.4 , 0 );
setMoveKey( spep_6+6, 1, 245, -30.1 , 0 );
setMoveKey( spep_6+8, 1, 235.9, -36.9 , 0 );
setMoveKey( spep_6+10, 1, 242.8, -31.7 , 0 );
setMoveKey( spep_6+12, 1, 233.6, -38.5 , 0 );
setMoveKey( spep_6+14, 1, 240.3, -33.4 , 0 );
setMoveKey( spep_6+16, 1, 231, -40.3 , 0 );
setMoveKey( spep_6+18, 1, 237.6, -35.3 , 0 );
setMoveKey( spep_6+20, 1, 228.1, -42.3 , 0 );
setMoveKey( spep_6+22, 1, 234.6, -37.4 , 0 );
setMoveKey( spep_6+24, 1, 225, -44.5 , 0 );
setMoveKey( spep_6+26, 1, 231.4, -39.6 , 0 );
setMoveKey( spep_6+28, 1, 221.7, -46.8 , 0 );
setMoveKey( spep_6+30, 1, 228, -42 , 0 );
setMoveKey( spep_6+32, 1, 218.2, -49.3 , 0 );
setMoveKey( spep_6+34, 1, 224.3, -44.6 , 0 );
setMoveKey( spep_6+36, 1, 214.3, -52 , 0 );
setMoveKey( spep_6+38, 1, 220.4, -47.3 , 0 );
setMoveKey( spep_6+40, 1, 210.3, -54.8 , 0 );
setMoveKey( spep_6+42, 1, 216.2, -50.3 , 0 );
setMoveKey( spep_6+44, 1, 206, -57.8 , 0 );
setMoveKey( spep_6+46, 1, 211.8, -53.3 , 0 );
setMoveKey( spep_6+48, 1, 201.5, -60.9 , 0 );
setMoveKey( spep_6+50, 1, 207.1, -56.6 , 0 );
setMoveKey( spep_6+52, 1, 196.7, -64.3 , 0 );
setMoveKey( spep_6+54, 1, 202.2, -60 , 0 );
setMoveKey( spep_6+56, 1, 191.7, -67.8 , 0 );
--setMoveKey( spep_6+59, 1, 91.5, -9.3 , 0 );
setMoveKey( spep_6+60-3, 1, 197.1, -63.6 , 0 );
setMoveKey( spep_6+62-3, 1, 194, -32.6 , 0 );
setMoveKey( spep_6+64-3, 1, 225.1, -2.2 , 0 );
setMoveKey( spep_6+66-3, 1, 257.4, 6.6 , 0 );
setMoveKey( spep_6+68-3, 1, 272.3, 3.2 , 0 );
setMoveKey( spep_6+70-3, 1, 301.8, 11.6 , 0 );
setMoveKey( spep_6+72-3, 1, 313.8, 7.8 , 0 );
setMoveKey( spep_6+74-3, 1, 340.4, 15.9 , 0 );
setMoveKey( spep_6+76-3, 1, 349.5, 11.7 , 0 );
setMoveKey( spep_6+78-3, 1, 373.2, 19.4 , 0 );
setMoveKey( spep_6+80-3, 1, 379.4, 15 , 0 );
setMoveKey( spep_6+82-3, 1, 400.1, 22.3 , 0 );
setMoveKey( spep_6+84-3, 1, 403.3, 17.5 , 0 );
setMoveKey( spep_6+86-3, 1, 413, 18.6 , 0 );
setMoveKey( spep_6+88-3, 1, 421.3, 19.4 , 0 );
setMoveKey( spep_6+90-3, 1, 428, 20.2 , 0 );
setMoveKey( spep_6+92-3, 1, 433.3, 20.7 , 0 );
setMoveKey( spep_6+94-3, 1, 437, 21.1 , 0 );
setMoveKey( spep_6+96-3, 1, 439.3, 21.3 , 0 );
setMoveKey( spep_6+98-3, 1, 440, 21.4 , 0 );

setScaleKey( spep_6+0, 1, 1.4, 1.4 );
setScaleKey( spep_6+2, 1, 1.41, 1.41 );
setScaleKey( spep_6+4, 1, 1.42, 1.42 );
setScaleKey( spep_6+6, 1, 1.43, 1.43 );
setScaleKey( spep_6+8, 1, 1.44, 1.44 );
setScaleKey( spep_6+10, 1, 1.55, 1.55 );
setScaleKey( spep_6+12, 1, 1.56, 1.56 );
setScaleKey( spep_6+14, 1, 1.58, 1.58 );
setScaleKey( spep_6+16, 1, 1.59, 1.59 );
setScaleKey( spep_6+18, 1, 1.6, 1.6 );  --
setScaleKey( spep_6+20, 1, 1.82, 1.82 );
setScaleKey( spep_6+22, 1, 1.83, 1.83 );
setScaleKey( spep_6+24, 1, 1.85, 1.85 );
setScaleKey( spep_6+26, 1, 1.87, 1.87 );
setScaleKey( spep_6+28, 1, 1.88, 1.88 );
setScaleKey( spep_6+30, 1, 1.9, 1.9 );
setScaleKey( spep_6+32, 1, 2.02, 2.02 );
setScaleKey( spep_6+34, 1, 2.04, 2.04 );
setScaleKey( spep_6+36, 1, 2.06, 2.06 );
setScaleKey( spep_6+38, 1, 2.08, 2.08 );
setScaleKey( spep_6+40, 1, 2.1, 2.1 );
setScaleKey( spep_6+42, 1, 2.12, 2.12 );
setScaleKey( spep_6+44, 1, 2.14, 2.14 );
setScaleKey( spep_6+46, 1, 2.16, 2.16 );
setScaleKey( spep_6+48, 1, 2.19, 2.19 );
setScaleKey( spep_6+50, 1, 2.21, 2.21 );
setScaleKey( spep_6+52, 1, 2.23, 2.23 );
setScaleKey( spep_6+54, 1, 2.26, 2.26 );
setScaleKey( spep_6+56, 1, 2.28, 2.28 );
--setScaleKey( spep_6+59, 1, 1.91, 1.91 );
setScaleKey( spep_6+60-3, 1, 2.22, 2.22 );
setScaleKey( spep_6+62-3, 1, 2.09, 2.09 );
setScaleKey( spep_6+64-3, 1, 1.92, 1.92 );
setScaleKey( spep_6+66-3, 1, 1.88, 1.88 );
setScaleKey( spep_6+68-3, 1, 1.84, 1.84 );
setScaleKey( spep_6+70-3, 1, 1.8, 1.8 );
setScaleKey( spep_6+72-3, 1, 1.77, 1.77 );
setScaleKey( spep_6+74-3, 1, 1.73, 1.73 );
setScaleKey( spep_6+76-3, 1, 1.7, 1.7 );
setScaleKey( spep_6+78-3, 1, 1.68, 1.68 );
setScaleKey( spep_6+80-3, 1, 1.65, 1.65 );
setScaleKey( spep_6+82-3, 1, 1.63, 1.63 );
setScaleKey( spep_6+84-3, 1, 1.61, 1.61 );
setScaleKey( spep_6+86-3, 1, 1.6, 1.6 );
setScaleKey( spep_6+88-3, 1, 1.58, 1.58 );
setScaleKey( spep_6+90-3, 1, 1.57, 1.57 );
setScaleKey( spep_6+92-3, 1, 1.56, 1.56 );
setScaleKey( spep_6+94-3, 1, 1.56, 1.56 );
setScaleKey( spep_6+96-3, 1, 1.55, 1.55 );
setScaleKey( spep_6+98-3, 1, 1.55, 1.55 );

setRotateKey( spep_6+0, 1, 0 );
setRotateKey( spep_6+56, 1, 0 );
--setRotateKey( spep_6+59, 1, 0 );
setRotateKey( spep_6+60-3, 1, 23.7 );
setRotateKey( spep_6+62-3, 1, -16 );
setRotateKey( spep_6+64-3, 1, -16.2 );
setRotateKey( spep_6+66-3, 1, -14.4 );
setRotateKey( spep_6+68-3, 1, -12.6 );
setRotateKey( spep_6+70-3, 1, -11 );
setRotateKey( spep_6+72-3, 1, -9.5 );
setRotateKey( spep_6+74-3, 1, -8.1 );
setRotateKey( spep_6+76-3, 1, -6.8 );
setRotateKey( spep_6+78-3, 1, -5.6 );
setRotateKey( spep_6+80-3, 1, -4.5 );
setRotateKey( spep_6+82-3, 1, -3.6 );
setRotateKey( spep_6+84-3, 1, -2.7 );
setRotateKey( spep_6+86-3, 1, -2 );
setRotateKey( spep_6+88-3, 1, -1.4 );
setRotateKey( spep_6+90-3, 1, -0.9 );
setRotateKey( spep_6+92-3, 1, -0.5 );
setRotateKey( spep_6+94-3, 1, -0.2 );
setRotateKey( spep_6+96-3, 1, -0.1 );
setRotateKey( spep_6+98-3, 1, -0.1 );



entryFadeBg( spep_6, 0, 200, 0, 0, 0, 0, 255);          -- 黒　背景

--***SE***
playSe(  spep_6,  1022);
playSe(  spep_6+56,  1024);  --爆発

-- ダメージ表示
dealDamage(spep_6+80);

--entryFade( spep_6+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+180);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(70F)
------------------------------------------------------
spep_1 = 0;

--***集中線***
shuchusen1 = entryEffectLife( spep_1, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_1,  shuchusen1,  2.25,  2.25);
setEffScaleKey(  spep_1+18,  shuchusen1,  1.04,  1.04);
setEffScaleKey(  spep_1+54,  shuchusen1,  1.04,  1.04);
setEffScaleKey(  spep_1+70,  shuchusen1,  1.41,  1.41);
setEffMoveKey(  spep_1,  shuchusen1,  0,  0);
setEffMoveKey(  spep_1+70,  shuchusen1,  0,  0);
setEffRotateKey(  spep_1,  shuchusen1,  0);
setEffRotateKey(  spep_1+70,  shuchusen1,  0);
setEffAlphaKey(  spep_1,  shuchusen1,  255);
setEffAlphaKey(  spep_1+70,  shuchusen1,  255);


--***突進***
tosshin = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --突進

setEffScaleKey(  spep_1,  tosshin,  -1.0,  1.0);
setEffScaleKey(  spep_1+70,  tosshin,  -1.0,  1.0);
setEffMoveKey(  spep_1,  tosshin,  0,  0);
setEffMoveKey(  spep_1+70,  tosshin,  0,  0);
setEffRotateKey(  spep_1,  tosshin,  0);
setEffRotateKey(  spep_1+70,  tosshin,  0);
setEffAlphaKey(  spep_1,  tosshin,  255);
setEffAlphaKey(  spep_1+70,  tosshin,  255);

entryFadeBg( spep_1, 60, 10, 0, 0, 0, 0, 230);          -- 黒　背景

--***SE***
playSe(  spep_1,  9);

entryFade( spep_1+60, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 連撃(170F)
------------------------------------------------------
spep_2 = spep_1+70;

--***流線***
ryusen2 = entryEffectLife( spep_2, 914, 170, 0x80,  -1, 0,  0,  0);   -- 横線

setEffScaleKey(  spep_2,  ryusen2,  2.1,  1.1);
setEffScaleKey(  spep_2+170,  ryusen2,  2.1,  1.1);
setEffMoveKey(  spep_2,  ryusen2,  0,  0);
setEffMoveKey(  spep_2+170,  ryusen2,  0,  0);
setEffRotateKey(  spep_2,  ryusen2,  0);
setEffRotateKey(  spep_2+170,  ryusen2,  0);
setEffAlphaKey(  spep_2,  ryusen2,  100);--ちょっと薄くする
setEffAlphaKey(  spep_2+170,  ryusen2,  100);--ちょっと薄くする

--***集中線***
shuchusen2 = entryEffectLife( spep_2, 906, 170, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_2,  shuchusen2,  1.29,  1.32);
setEffScaleKey(  spep_2+170,  shuchusen2,  1.29,  1.32);
setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffMoveKey(  spep_2+170,  shuchusen2,  0,  0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffRotateKey(  spep_2+170,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2+36,  shuchusen2,  0);
setEffAlphaKey(  spep_2+40,  shuchusen2,  255);
setEffAlphaKey(  spep_2+42,  shuchusen2,  255);
setEffAlphaKey(  spep_2+52,  shuchusen2,  0);
setEffAlphaKey(  spep_2+62,  shuchusen2,  0);
setEffAlphaKey(  spep_2+70,  shuchusen2,  255);
setEffAlphaKey(  spep_2+80,  shuchusen2,  0);
setEffAlphaKey(  spep_2+82,  shuchusen2,  0);
setEffAlphaKey(  spep_2+88,  shuchusen2,  255);
setEffAlphaKey(  spep_2+100,  shuchusen2,  0);
setEffAlphaKey(  spep_2+122,  shuchusen2,  0);
setEffAlphaKey(  spep_2+124,  shuchusen2,  0);
setEffAlphaKey(  spep_2+132,  shuchusen2, 255);
setEffAlphaKey(  spep_2+134,  shuchusen2, 255);
setEffAlphaKey(  spep_2+170,  shuchusen2, 0);

--***格闘***
kakutou = entryEffect(  spep_2,  SP_02,  0x100,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_2,  kakutou,  1.0,  1.0);
setEffScaleKey(  spep_2+170,  kakutou,  1.0,  1.0);
setEffMoveKey(  spep_2,  kakutou,  0,  0);
setEffMoveKey(  spep_2+170,  kakutou,  0,  0);
setEffRotateKey(  spep_2,  kakutou,  0);
setEffRotateKey(  spep_2+170,  kakutou,  0);
setEffAlphaKey(  spep_2,  kakutou,  255);
setEffAlphaKey(  spep_2+170,  kakutou,  255);

--***敵の動き***
setDisp( spep_2, 1, 1 );
setDisp( spep_2+166, 1, 0 );
setShakeChara(  spep_2+38-3,  1,  128,  20);  --揺れ
changeAnime( spep_2, 1, 101 );

setMoveKey( spep_2, 1, 134.1, -195.6 , 0 );
setMoveKey( spep_2+2, 1, 142.4, -197.8 , 0 );
setMoveKey( spep_2+4, 1, 139.8, -200 , 0 );
setMoveKey( spep_2+6, 1, 148, -202.3 , 0 );
setMoveKey( spep_2+8, 1, 145.5, -204.5 , 0 );

setScaleKey( spep_2, 1, 1.47, 1.47 );
setScaleKey( spep_2+2, 1, 1.45, 1.45 );
setScaleKey( spep_2+4, 1, 1.45, 1.45 );
setScaleKey( spep_2+6, 1, 1.44, 1.44 );
setScaleKey( spep_2+8, 1, 1.44, 1.44 );

setRotateKey( spep_2, 1, 10.7 );

--***格闘背景***
kakutouBG = entryEffect(  spep_2,  SP_03,  0x80,  -1,  0,  0,  0);  --格闘背景

setEffScaleKey(  spep_2,  kakutouBG,  1.0,  1.0);
setEffScaleKey(  spep_2+170,  kakutouBG,  1.0,  1.0);
setEffMoveKey(  spep_2,  kakutouBG,  0,  0);
setEffMoveKey(  spep_2+170,  kakutouBG,  0,  0);
setEffRotateKey(  spep_2,  kakutouBG,  0);
setEffRotateKey(  spep_2+170,  kakutouBG,  0);
setEffAlphaKey(  spep_2,  kakutouBG,  255);
setEffAlphaKey(  spep_2+170,  kakutouBG,  255);

entryFadeBg( spep_2, 0, 170, 0, 0, 0, 0, 255);          -- 黒　背景

--***SE***
playSe(  spep_2,  8);

--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = spep_2+10 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

pauseAll( SP_dodge, 67);

--敵の位置

setMoveKey( SP_dodge, 1, 145.5, -204.5 , 0 );
setMoveKey( SP_dodge+2, 1, 145.5, -204.5 , 0 );
setMoveKey( SP_dodge+4, 1, 145.5, -204.5 , 0 );
setMoveKey( SP_dodge+6, 1, 145.5, -204.5 , 0 );
setMoveKey( SP_dodge+8, 1, 145.5, -204.5 , 0 );

setRotateKey( SP_dodge, 1, 0 );
setRotateKey( SP_dodge+8, 1, 0 );

setScaleKey( spep_2 + 0, 1, 1.44, 1.44  );
setScaleKey( spep_2 + 12, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 14, 1, 1.44, 1.44  );
setScaleKey( SP_dodge, 1, 1.44, 1.44 );
setScaleKey( SP_dodge+2, 1, 1.44, 1.44 );
setScaleKey( SP_dodge+4, 1, 1.44, 1.44 );
setScaleKey( SP_dodge+6, 1, 1.44, 1.44 );
setScaleKey( SP_dodge+8, 1, 1.44, 1.44 );

--changeAnime(  SP_dodge+9,    1,  100);
setMoveKey(  SP_dodge+9,    1,  145.5, -204.5 , 0 );
setMoveKey(  SP_dodge+10,    1,  145.5, -204.5 , 0 );
setScaleKey( SP_dodge+9,    1,  1.44, 1.44 );
setScaleKey( SP_dodge+10,    1,  1.44, 1.44) ;
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
--回避されなかった場合
--------------------------------------

changeAnime( spep_2+38-3, 1, 104 );
changeAnime( spep_2+84-3, 1, 106 );
changeAnime( spep_2+126-3, 1, 108 );


setMoveKey( spep_2+10, 1, 153.9, -206.8 , 0 );
setMoveKey( spep_2+12, 1, 151.3, -209 , 0 );
setMoveKey( spep_2+14, 1, 159.4, -211.3 , 0 );
setMoveKey( spep_2+16, 1, 167.8, -213.6 , 0 );
setMoveKey( spep_2+18, 1, 165.2, -215.8 , 0 );
setMoveKey( spep_2+20, 1, 173.5, -218.1 , 0 );
setMoveKey( spep_2+22, 1, 169.9, -219.9 , 0 );
setMoveKey( spep_2+24, 1, 177.1, -221.7 , 0 );
setMoveKey( spep_2+26, 1, 173.5, -223.4 , 0 );
setMoveKey( spep_2+28, 1, 180.7, -225.3 , 0 );
setMoveKey( spep_2+30, 1, 177.1, -227 , 0 );
setMoveKey( spep_2+32, 1, 184.4, -229 , 0 );
setMoveKey( spep_2+34, 1, 180.8, -230.7 , 0 );
--setMoveKey( spep_2+37, 1, 234.8, -232.5 , 0 );
setMoveKey( spep_2+38-3, 1, 208.2, -209.4 , 0 );
setMoveKey( spep_2+40-3, 1, 230.2, -205.7 , 0 );
setMoveKey( spep_2+42-3, 1, 261.5, -136.4 , 0 );
setMoveKey( spep_2+44-3, 1, 286.3, -181.5 , 0 );
setMoveKey( spep_2+46-3, 1, 313.9, -179.1 , 0 );
setMoveKey( spep_2+48-3, 1, 321.5, -204.1 , 0 );
setMoveKey( spep_2+50-3, 1, 320.3, -198.9 , 0 );
setMoveKey( spep_2+52-3, 1, 312.4, -212.2 , 0 );
setMoveKey( spep_2+54-3, 1, 299.4, -211.7 , 0 );
setMoveKey( spep_2+56-3, 1, 282.7, -220 , 0 );
setMoveKey( spep_2+58-3, 1, 263, -225.7 , 0 );
setMoveKey( spep_2+60-3, 1, 240.9, -230.4 , 0 );
setMoveKey( spep_2+62-3, 1, 217, -233.8 , 0 );
setMoveKey( spep_2+64-3, 1, 192.4, -235.1 , 0 );
setMoveKey( spep_2+66-3, 1, 158.2, -224 , 0 );
setMoveKey( spep_2+68-3, 1, 269.8, -191.6 , 0 );
setMoveKey( spep_2+70-3, 1, 347.7, -159.6 , 0 );
setMoveKey( spep_2+72-3, 1, 372.4, -181.7 , 0 );
setMoveKey( spep_2+74-3, 1, 360.7, -201 , 0 );
setMoveKey( spep_2+76-3, 1, 325.9, -209.1 , 0 );
setMoveKey( spep_2+78-3, 1, 274.6, -217.3 , 0 );
setMoveKey( spep_2+80-3, 1, 215.5, -224.6 , 0 );
setMoveKey( spep_2+83-3, 1, 149.6, -227.8 , 0 );
setMoveKey( spep_2+84-3, 1, 193.9, -189.5 , 0 );
setMoveKey( spep_2+86-3, 1, 230.5, -188 , 0 );
setMoveKey( spep_2+88-3, 1, 267.2, -118.9 , 0 );
setMoveKey( spep_2+90-3, 1, 302.6, -167.8 , 0 );
setMoveKey( spep_2+92-3, 1, 325.7, -137.9 , 0 );
setMoveKey( spep_2+94-3, 1, 340.7, -153.2 , 0 );
setMoveKey( spep_2+96-3, 1, 348.1, -148.4 , 0 );
setMoveKey( spep_2+98-3, 1, 348.9, -151.5 , 0 );
setMoveKey( spep_2+100-3, 1, 344.2, -154.8 , 0 );
setMoveKey( spep_2+102-3, 1, 335, -158.3 , 0 );
setMoveKey( spep_2+104-3, 1, 321.9, -161.7 , 0 );
setMoveKey( spep_2+106-3, 1, 303.1, -165.6 , 0 );
setMoveKey( spep_2+108-3, 1, 284.3, -169.3 , 0 );
setMoveKey( spep_2+110-3, 1, 263.1, -172.6 , 0 );
setMoveKey( spep_2+112-3, 1, 240.3, -175.9 , 0 );
setMoveKey( spep_2+114-3, 1, 215.9, -179 , 0 );
setMoveKey( spep_2+116-3, 1, 190.1, -181.9 , 0 );
setMoveKey( spep_2+118-3, 1, 163.1, -184.3 , 0 );
setMoveKey( spep_2+120-3, 1, 135.3, -186.3 , 0 );
setMoveKey( spep_2+122-3, 1, 114.3, -187 , 0 );
setMoveKey( spep_2+125-3, 1, 85.2, -176.8 , 0 );
setMoveKey( spep_2+126-3, 1, 225.2, -218.3 , 0 );
setMoveKey( spep_2+128-3, 1, 348.2, -189.1 , 0 );
setMoveKey( spep_2+130-3, 1, 452.9, -138.5 , 0 );
setMoveKey( spep_2+132-3, 1, 549.1, -156.8 , 0 );
setMoveKey( spep_2+134-3, 1, 612.2, -157.4 , 0 );
setMoveKey( spep_2+136-3, 1, 644.2, -140.7 , 0 );
setMoveKey( spep_2+138-3, 1, 661.7, -151.2 , 0 );
setMoveKey( spep_2+140-3, 1, 668.7, -143.4 , 0 );
setMoveKey( spep_2+142-3, 1, 677.2, -151.7 , 0 );
setMoveKey( spep_2+144-3, 1, 680.7, -149.8 , 0 );
setMoveKey( spep_2+146-3, 1, 680.3, -156.9 , 0 );
setMoveKey( spep_2+148-3, 1, 677, -158.1 , 0 );
setMoveKey( spep_2+150-3, 1, 671.6, -164 , 0 );
setMoveKey( spep_2+152-3, 1, 664.6, -165.1 , 0 );
setMoveKey( spep_2+154-3, 1, 656.4, -168.9 , 0 );
setMoveKey( spep_2+156-3, 1, 637.6, -173.7 , 0 );
setMoveKey( spep_2+158-3, 1, 628.1, -176.1 , 0 );
setMoveKey( spep_2+160-3, 1, 618.3, -180.1 , 0 );
setMoveKey( spep_2+162-3, 1, 608.4, -182.8 , 0 );
setMoveKey( spep_2+164-3, 1, 598.1, -187.1 , 0 );
setMoveKey( spep_2+166-3, 1, 587.8, -190.2 , 0 );

setScaleKey( spep_2+10, 1, 1.42, 1.42 );
setScaleKey( spep_2+12, 1, 1.42, 1.42 );
setScaleKey( spep_2+14, 1, 1.41, 1.41 );
setScaleKey( spep_2+16, 1, 1.39, 1.39 );
setScaleKey( spep_2+18, 1, 1.39, 1.39 );
setScaleKey( spep_2+20, 1, 1.38, 1.38 );
setScaleKey( spep_2+22, 1, 1.38, 1.38 );
setScaleKey( spep_2+24, 1, 1.36, 1.36 );
setScaleKey( spep_2+26, 1, 1.36, 1.36 );
setScaleKey( spep_2+28, 1, 1.35, 1.35 );
setScaleKey( spep_2+30, 1, 1.35, 1.35 );
setScaleKey( spep_2+32, 1, 1.33, 1.33 );
setScaleKey( spep_2+34, 1, 1.33, 1.33 );
--setScaleKey( spep_2+37, 1, 1.32, 1.32 );
setScaleKey( spep_2+38-3, 1, 1.45, 1.45 );
setScaleKey( spep_2+40-3, 1, 1.58, 1.58 );
setScaleKey( spep_2+42-3, 1, 1.64, 1.64 );
setScaleKey( spep_2+44-3, 1, 1.64, 1.63 );
setScaleKey( spep_2+46-3, 1, 1.6, 1.6 );
setScaleKey( spep_2+48-3, 1, 1.57, 1.57 );
setScaleKey( spep_2+50-3, 1, 1.54, 1.54 );
setScaleKey( spep_2+52-3, 1, 1.51, 1.51 );
setScaleKey( spep_2+54-3, 1, 1.48, 1.48 );
setScaleKey( spep_2+56-3, 1, 1.45, 1.45 );
setScaleKey( spep_2+58-3, 1, 1.42, 1.42 );
setScaleKey( spep_2+60-3, 1, 1.39, 1.39 );
setScaleKey( spep_2+62-3, 1, 1.36, 1.36 );
setScaleKey( spep_2+64-3, 1, 1.35, 1.35 );
setScaleKey( spep_2+66-3, 1, 1.49, 1.49 );
setScaleKey( spep_2+68-3, 1, 1.64, 1.64 );
setScaleKey( spep_2+70-3, 1, 1.63, 1.63 );
setScaleKey( spep_2+72-3, 1, 1.58, 1.58 );
setScaleKey( spep_2+74-3, 1, 1.54, 1.54 );
setScaleKey( spep_2+76-3, 1, 1.49, 1.49 );
setScaleKey( spep_2+78-3, 1, 1.47, 1.47 );
setScaleKey( spep_2+80-3, 1, 1.42, 1.42 );
setScaleKey( spep_2+83-3, 1, 1.38, 1.38 );
setScaleKey( spep_2+84-3, 1, 1.47, 1.47 );
setScaleKey( spep_2+86-3, 1, 1.55, 1.55 );
setScaleKey( spep_2+88-3, 1, 1.64, 1.64 );
setScaleKey( spep_2+90-3, 1, 1.64, 1.64 );
setScaleKey( spep_2+92-3, 1, 1.63, 1.63 );
setScaleKey( spep_2+94-3, 1, 1.61, 1.61 );
setScaleKey( spep_2+96-3, 1, 1.6, 1.6 );
setScaleKey( spep_2+98-3, 1, 1.58, 1.58 );
setScaleKey( spep_2+100-3, 1, 1.57, 1.57 );
setScaleKey( spep_2+102-3, 1, 1.55, 1.55 );
setScaleKey( spep_2+104-3, 1, 1.54, 1.54 );
setScaleKey( spep_2+106-3, 1, 1.51, 1.51 );
setScaleKey( spep_2+108-3, 1, 1.49, 1.49 );
setScaleKey( spep_2+110-3, 1, 1.48, 1.48 );
setScaleKey( spep_2+112-3, 1, 1.47, 1.47 );
setScaleKey( spep_2+114-3, 1, 1.45, 1.45 );
setScaleKey( spep_2+116-3, 1, 1.44, 1.44 );
setScaleKey( spep_2+118-3, 1, 1.42, 1.42 );
setScaleKey( spep_2+120-3, 1, 1.41, 1.41 );
setScaleKey( spep_2+122-3, 1, 1.41, 1.41 );
setScaleKey( spep_2+125-3, 1, 1.49, 1.49 );
setScaleKey( spep_2+126-3, 1, 1.57, 1.57 );
setScaleKey( spep_2+128-3, 1, 1.66, 1.66 );
setScaleKey( spep_2+130-3, 1, 1.73, 1.73 );
setScaleKey( spep_2+132-3, 1, 1.73, 1.73 );
setScaleKey( spep_2+134-3, 1, 1.71, 1.71 );
setScaleKey( spep_2+136-3, 1, 1.7, 1.7 );
setScaleKey( spep_2+138-3, 1, 1.68, 1.68 );
setScaleKey( spep_2+140-3, 1, 1.67, 1.67 );
setScaleKey( spep_2+142-3, 1, 1.66, 1.66 );
setScaleKey( spep_2+144-3, 1, 1.64, 1.64 );
setScaleKey( spep_2+146-3, 1, 1.63, 1.63 );
setScaleKey( spep_2+148-3, 1, 1.61, 1.61 );
setScaleKey( spep_2+150-3, 1, 1.6, 1.6 );
setScaleKey( spep_2+152-3, 1, 1.58, 1.58 );
setScaleKey( spep_2+154-3, 1, 1.57, 1.57 );
setScaleKey( spep_2+156-3, 1, 1.54, 1.54 );
setScaleKey( spep_2+158-3, 1, 1.52, 1.52 );
setScaleKey( spep_2+160-3, 1, 1.51, 1.51 );
setScaleKey( spep_2+162-3, 1, 1.49, 1.49 );
setScaleKey( spep_2+164-3, 1, 1.48, 1.48 );
setScaleKey( spep_2+166-3, 1, 1.47, 1.47 );


setRotateKey( spep_2+34, 1, 10.7 );
--setRotateKey( spep_2+37, 1, 10.7 );
setRotateKey( spep_2+38-3, 1, 0 );
setRotateKey( spep_2+46-3, 1, 0 );
setRotateKey( spep_2+48-3, 1, 0.1 );
setRotateKey( spep_2+52-3, 1, 0.1 );
setRotateKey( spep_2+54-3, 1, 0.2 );
setRotateKey( spep_2+64-3, 1, 0.2 );
setRotateKey( spep_2+66-3, 1, -39.1 );
setRotateKey( spep_2+68-3, 1, -36.9 );
setRotateKey( spep_2+70-3, 1, -35.1 );
setRotateKey( spep_2+72-3, 1, -33.9 );
setRotateKey( spep_2+74-3, 1, -33.2 );
setRotateKey( spep_2+76-3, 1, -32.8 );
setRotateKey( spep_2+78-3, 1, -32.6 );
setRotateKey( spep_2+80-3, 1, -32.4 );
setRotateKey( spep_2+83-3, 1, -32.4 );
setRotateKey( spep_2+84-3, 1, -40.1 );
setRotateKey( spep_2+86-3, 1, -37.6 );
setRotateKey( spep_2+88-3, 1, -35.1 );
setRotateKey( spep_2+90-3, 1, -32.8 );
setRotateKey( spep_2+92-3, 1, -30.8 );
setRotateKey( spep_2+94-3, 1, -29.2 );
setRotateKey( spep_2+96-3, 1, -27.9 );
setRotateKey( spep_2+98-3, 1, -26.8 );
setRotateKey( spep_2+100-3, 1, -25.8 );
setRotateKey( spep_2+102-3, 1, -25.1 );
setRotateKey( spep_2+104-3, 1, -24.5 );
setRotateKey( spep_2+106-3, 1, -23.9 );
setRotateKey( spep_2+108-3, 1, -23.5 );
setRotateKey( spep_2+110-3, 1, -23.2 );
setRotateKey( spep_2+112-3, 1, -22.9 );
setRotateKey( spep_2+114-3, 1, -22.7 );
setRotateKey( spep_2+116-3, 1, -22.5 );
setRotateKey( spep_2+118-3, 1, -22.4 );
setRotateKey( spep_2+120-3, 1, -22.3 );
setRotateKey( spep_2+125-3, 1, -22.3 );
setRotateKey( spep_2+126-3, 1, 0 );
setRotateKey( spep_2+128-3, 1, -6.8 );
setRotateKey( spep_2+130-3, 1, -12.3 );
setRotateKey( spep_2+132-3, 1, -17 );
setRotateKey( spep_2+134-3, 1, -20.8 );
setRotateKey( spep_2+136-3, 1, -23.8 );
setRotateKey( spep_2+138-3, 1, -26 );
setRotateKey( spep_2+140-3, 1, -27.6 );
setRotateKey( spep_2+142-3, 1, -28.7 );
setRotateKey( spep_2+144-3, 1, -29.6 );
setRotateKey( spep_2+146-3, 1, -30.2 );
setRotateKey( spep_2+148-3, 1, -30.6 );
setRotateKey( spep_2+150-3, 1, -30.9 );
setRotateKey( spep_2+152-3, 1, -31.1 );
setRotateKey( spep_2+154-3, 1, -31.2 );
setRotateKey( spep_2+156-3, 1, -31.3 );
setRotateKey( spep_2+158-3, 1, -31.4 );

--***SE***
playSe(  spep_2+34,  1006);
playSe(  spep_2+66,  1008);
playSe(  spep_2+86,  1010);
playSe(  spep_2+126,  1011);

entryFade( spep_2+162, 6, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 構え(90F)
------------------------------------------------------
spep_3 = spep_2+170;

--***集中線***
shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffScaleKey(  spep_3,  shuchusen3,  1.3,  1.3);
setEffScaleKey(  spep_3+90,  shuchusen3,  1.3,  1.3);
setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen3,  0,  0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffRotateKey(  spep_3+90,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffAlphaKey(  spep_3+90,  shuchusen3,  255);

--***構え***
kamae = entryEffect(  spep_3,  SP_04,  0x80,  -1,  0,  0,  0);  --格闘

setEffScaleKey(  spep_3,  kamae,  1.0,  1.0);
setEffScaleKey(  spep_3+90,  kamae,  1.0,  1.0);
setEffMoveKey(  spep_3,  kamae,  0,  0);
setEffMoveKey(  spep_3+90,  kamae,  0,  0);
setEffRotateKey(  spep_3,  kamae,  0);
setEffRotateKey(  spep_3+90,  kamae,  0);
setEffAlphaKey(  spep_3,  kamae,  255);
setEffAlphaKey(  spep_3+90,  kamae,  255);

--***カットイン***
--speff = entryEffect(  spep_3,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_3,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3+12, 190006, 67, 0x100, -1, 0, 100, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep_3+12, ctgogo, 255 );
setEffAlphaKey( spep_3+32, ctgogo, 255 );
setEffAlphaKey( spep_3+79, ctgogo, 0 );
setEffRotateKey(  spep_3+12,  ctgogo,  0);
setEffRotateKey(  spep_3+79,  ctgogo,  0);
setEffScaleKey(  spep_3+12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3+32,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3+79, ctgogo, -1.07, 1.07 );
setEffMoveKey(  spep_3+12,  ctgogo,  100,  510);
setEffMoveKey(  spep_3+79,  ctgogo,  100,  510);

entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255);          -- 黒　背景

--***SE***
playSe(  spep_3+12,  SE_04);
------------------------------------------------------
-- カード(90F)
------------------------------------------------------
spep_4 = spep_3+90;

--***フェードと背景***
entryFade( spep_4-6, 3, 5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen4 = entryEffectLife( spep_4, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  shuchusen4,  0,  0);
setEffMoveKey(  spep_4+90,  shuchusen4,  0,  0);
setEffScaleKey(  spep_4,  shuchusen4,  1.6,  1.6);
setEffScaleKey(  spep_4+90,  shuchusen4,  1.6,  1.6);
setEffRotateKey(  spep_4,  shuchusen4,  0);
setEffRotateKey(  spep_4+90,  shuchusen4,  0);
setEffAlphaKey(  spep_4,  shuchusen4,  255);
setEffAlphaKey(  spep_4+90,  shuchusen4,  255);

entryFade( spep_4+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 発射(120F)
------------------------------------------------------
spep_5 = spep_4+90;

--***書き文字***
ct_zuo = entryEffectLife( spep_5+32,  10012, 82, 0x100, -1, 0, 16, 59.9 );  --ズオ
setEffShake( spep_5 + 32, ct_zuo, 82, 25 );

setEffMoveKey( spep_5+32, ct_zuo, 16, 59.9 , 0 );
setEffMoveKey( spep_5+36, ct_zuo, 9.5, 50.9 , 0 );
setEffMoveKey( spep_5+38, ct_zuo, -9.4, 50.5 , 0 );
setEffMoveKey( spep_5+40, ct_zuo, -24.5, 45.4 , 0 );
setEffMoveKey( spep_5+42, ct_zuo, -12.8, 34.5 , 0 );
setEffMoveKey( spep_5+44, ct_zuo, -29.5, 44.3 , 0 );
setEffMoveKey( spep_5+46, ct_zuo, -17.3, 33.4 , 0 );
setEffMoveKey( spep_5+48, ct_zuo, -34.5, 43.4 , 0 );
setEffMoveKey( spep_5+50, ct_zuo, -21.9, 32.1 , 0 );
setEffMoveKey( spep_5+52, ct_zuo, -39.3, 42.4 , 0 );
setEffMoveKey( spep_5+54, ct_zuo, -26.4, 31 , 0 );
setEffMoveKey( spep_5+56, ct_zuo, -44.3, 41.5 , 0 );
setEffMoveKey( spep_5+58, ct_zuo, -30.9, 29.8 , 0 );
setEffMoveKey( spep_5+60, ct_zuo, -49.3, 40.6 , 0 );
setEffMoveKey( spep_5+62, ct_zuo, -35.4, 28.6 , 0 );
setEffMoveKey( spep_5+64, ct_zuo, -54.4, 39.5 , 0 );
setEffMoveKey( spep_5+66, ct_zuo, -39.8, 27.5 , 0 );
setEffMoveKey( spep_5+68, ct_zuo, -59.3, 38.5 , 0 );
setEffMoveKey( spep_5+70, ct_zuo, -44.5, 26.2 , 0 );
setEffMoveKey( spep_5+72, ct_zuo, -64.2, 37.7 , 0 );
setEffMoveKey( spep_5+74, ct_zuo, -48.9, 25.1 , 0 );
setEffMoveKey( spep_5+76, ct_zuo, -69.2, 36.7 , 0 );
setEffMoveKey( spep_5+78, ct_zuo, -53.3, 24 , 0 );
setEffMoveKey( spep_5+80, ct_zuo, -74.2, 35.7 , 0 );
setEffMoveKey( spep_5+82, ct_zuo, -57.8, 22.9 , 0 );
setEffMoveKey( spep_5+84, ct_zuo, -79.2, 34.6 , 0 );
setEffMoveKey( spep_5+86, ct_zuo, -62.3, 21.6 , 0 );
setEffMoveKey( spep_5+88, ct_zuo, -84.1, 33.7 , 0 );
setEffMoveKey( spep_5+90, ct_zuo, -66.9, 20.5 , 0 );
setEffMoveKey( spep_5+92, ct_zuo, -89.1, 32.8 , 0 );
setEffMoveKey( spep_5+94, ct_zuo, -71.3, 19.3 , 0 );
setEffMoveKey( spep_5+96, ct_zuo, -94, 31.9 , 0 );
setEffMoveKey( spep_5+98, ct_zuo, -75.7, 18.2 , 0 );
setEffMoveKey( spep_5+100, ct_zuo, -99, 30.9 , 0 );
setEffMoveKey( spep_5+102, ct_zuo, -80.3, 17.1 , 0 );
setEffMoveKey( spep_5+104, ct_zuo, -104.1, 29.9 , 0 );
setEffMoveKey( spep_5+106, ct_zuo, -12.4, 29.1 , 0 );
setEffMoveKey( spep_5+108, ct_zuo, 26.4, 62.7 , 0 );
setEffMoveKey( spep_5+110, ct_zuo, 127.3, 53.4 , 0 );
setEffMoveKey( spep_5+112, ct_zuo, 156.7, 95.5 , 0 );
setEffMoveKey( spep_5+114, ct_zuo, 222, 111.9 , 0 );

setEffScaleKey( spep_5+32, ct_zuo, 0.27, 0.27 );
setEffScaleKey( spep_5+40, ct_zuo, 0.43, 0.43 );
setEffScaleKey( spep_5+44, ct_zuo, 1.61, 1.61 );
setEffScaleKey( spep_5+102, ct_zuo, 2.89, 2.88 );
setEffScaleKey( spep_5+106, ct_zuo, 2.9, 2.89 );
setEffScaleKey( spep_5+108, ct_zuo, 3.12, 3.11 );
setEffScaleKey( spep_5+110, ct_zuo, 5.56, 5.56 );
setEffScaleKey( spep_5+112, ct_zuo, 6.78, 6.78 );
setEffScaleKey( spep_5+114, ct_zuo, 6.78, 6.78 );

setEffRotateKey( spep_5+32, ct_zuo, 11.3 );
setEffRotateKey( spep_5+34, ct_zuo, 10.5 );
setEffRotateKey( spep_5+36, ct_zuo, 9.5 );
setEffRotateKey( spep_5+38, ct_zuo, 8.5 );
setEffRotateKey( spep_5+40, ct_zuo, 8.6 );
setEffRotateKey( spep_5+42, ct_zuo, 8.7 );
setEffRotateKey( spep_5+44, ct_zuo, 8.9 );
setEffRotateKey( spep_5+46, ct_zuo, 9 );
setEffRotateKey( spep_5+48, ct_zuo, 9.1 );
setEffRotateKey( spep_5+50, ct_zuo, 9.3 );
setEffRotateKey( spep_5+52, ct_zuo, 9.4 );
setEffRotateKey( spep_5+54, ct_zuo, 9.6 );
setEffRotateKey( spep_5+56, ct_zuo, 9.7 );
setEffRotateKey( spep_5+58, ct_zuo, 9.8 );
setEffRotateKey( spep_5+60, ct_zuo, 10 );
setEffRotateKey( spep_5+62, ct_zuo, 10.1 );
setEffRotateKey( spep_5+64, ct_zuo, 10.2 );
setEffRotateKey( spep_5+66, ct_zuo, 10.4 );
setEffRotateKey( spep_5+68, ct_zuo, 10.5 );
setEffRotateKey( spep_5+70, ct_zuo, 10.6 );
setEffRotateKey( spep_5+72, ct_zuo, 10.8 );
setEffRotateKey( spep_5+74, ct_zuo, 10.9 );
setEffRotateKey( spep_5+76, ct_zuo, 11 );
setEffRotateKey( spep_5+88, ct_zuo, 11.2 );
setEffRotateKey( spep_5+80, ct_zuo, 11.3 );
setEffRotateKey( spep_5+82, ct_zuo, 11.5 );
setEffRotateKey( spep_5+84, ct_zuo, 11.6 );
setEffRotateKey( spep_5+86, ct_zuo, 11.7 );
setEffRotateKey( spep_5+88, ct_zuo, 11.9 );
setEffRotateKey( spep_5+90, ct_zuo, 12 );
setEffRotateKey( spep_5+92, ct_zuo, 12.1 );
setEffRotateKey( spep_5+94, ct_zuo, 12.3 );
setEffRotateKey( spep_5+96, ct_zuo, 12.4 );
setEffRotateKey( spep_5+98, ct_zuo, 12.5 );
setEffRotateKey( spep_5+100, ct_zuo, 12.7 );
setEffRotateKey( spep_5+102, ct_zuo, 12.8 );
setEffRotateKey( spep_5+104, ct_zuo, 12.9 );
setEffRotateKey( spep_5+106, ct_zuo, 11.8 );
setEffRotateKey( spep_5+108, ct_zuo, 10.6 );
setEffRotateKey( spep_5+110, ct_zuo, 9.4 );
setEffRotateKey( spep_5+112, ct_zuo, 8.2 );
setEffRotateKey( spep_5+114, ct_zuo, 7 );

setEffAlphaKey( spep_5+32, ct_zuo, 255 );
setEffAlphaKey( spep_5+104, ct_zuo, 255 );
setEffAlphaKey( spep_5+106, ct_zuo, 204 );
setEffAlphaKey( spep_5+108, ct_zuo, 153 );
setEffAlphaKey( spep_5+110, ct_zuo, 102 );
setEffAlphaKey( spep_5+112, ct_zuo, 51 );
setEffAlphaKey( spep_5+114, ct_zuo, 0 );

--***溜めから発射***
tamehassya = entryEffect(  spep_5,  SP_05,  0x100,  -1,  0,  0,  0);  --溜めから発射

setEffScaleKey(  spep_5,  tamehassya,  1.0,  1.0);
setEffScaleKey(  spep_5+120,  tamehassya,  1.0,  1.0);
setEffMoveKey(  spep_5,  tamehassya,  0,  0);
setEffMoveKey(  spep_5+120,  tamehassya,  0,  0);
setEffRotateKey(  spep_5,  tamehassya,  0);
setEffRotateKey(  spep_5+120,  tamehassya,  0);
setEffAlphaKey(  spep_5,  tamehassya,  255);
setEffAlphaKey(  spep_5+120,  tamehassya,  255);

--***流線***
ryusen6 = entryEffectLife( spep_5, 921, 120, 0x80,  -1, 0,  0,  0);   --奥行き

setEffMoveKey(  spep_5,  ryusen6,  0,  0);
setEffMoveKey(  spep_5+120,  ryusen6,  0,  0);
setEffScaleKey(  spep_5,  ryusen6,  1.2,  1.2);
setEffScaleKey(  spep_5+120,  ryusen6,  1.2,  1.2);
setEffRotateKey(  spep_5,  ryusen6,  180);
setEffRotateKey(  spep_5+120,  ryusen6,  180);
setEffAlphaKey(  spep_5,  ryusen6,  255);
setEffAlphaKey(  spep_5+118,  ryusen6,  255);
setEffAlphaKey(  spep_5+119,  ryusen6,  0);
setEffAlphaKey(  spep_5+120,  ryusen6,  0);

entryFadeBg( spep_5, 0, 120, 0, 0, 0, 0, 255);          -- 黒　背景

--***SE***
playSe(  spep_5,  17);  --溜め
playSe(  spep_5+32,  1021);

entryFade( spep_5+108, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- 迫るから爆発(200F)
------------------------------------------------------
spep_6 = spep_5+120;

--***流線***
ryusen7 = entryEffectLife( spep_6, 921, 200, 0x80,  -1, 0,  0,  0);   --奥行き

setEffMoveKey(  spep_6,  ryusen7,  0,  0);
setEffMoveKey(  spep_6+200,  ryusen7,  0,  0);
setEffScaleKey(  spep_6,  ryusen7,  1.2,  1.2);
setEffScaleKey(  spep_6+200,  ryusen7,  1.2,  1.2);
setEffRotateKey(  spep_6,  ryusen7,  0);
setEffRotateKey(  spep_6+200,  ryusen7,  0);
setEffAlphaKey(  spep_6,  ryusen7,  255);
setEffAlphaKey(  spep_6+200,  ryusen7,  255);

--***ビーム当たる背景***+
bakuhastuBG = entryEffect(  spep_6,  SP_07,  0x80,  -1,  0,  0,  0);  

setEffScaleKey(  spep_6,  bakuhastuBG,  1.0,  1.0);
setEffScaleKey(  spep_6+200,  bakuhastuBG,  1.0,  1.0);
setEffMoveKey(  spep_6,  bakuhastuBG,  0,  0);
setEffMoveKey(  spep_6+200,  bakuhastuBG,  0,  0);
setEffRotateKey(  spep_6,  bakuhastuBG,  0);
setEffRotateKey(  spep_6+200,  bakuhastuBG,  0);
setEffAlphaKey(  spep_6,  bakuhastuBG,  255);
setEffAlphaKey(  spep_6+200,  bakuhastuBG,  255);

--***ビーム当たる前面***+2
bakuhastu = entryEffect(  spep_6,  SP_06,  0x100,  -1,  0,  0,  0);  

setEffScaleKey(  spep_6,  bakuhastu,  1.0,  1.0);
setEffScaleKey(  spep_6+200,  bakuhastu,  1.0,  1.0);
setEffMoveKey(  spep_6,  bakuhastu,  0,  0);
setEffMoveKey(  spep_6+200,  bakuhastu,  0,  0);
setEffRotateKey(  spep_6,  bakuhastu,  0);
setEffRotateKey(  spep_6+200,  bakuhastu,  0);
setEffAlphaKey(  spep_6,  bakuhastu,  255);
setEffAlphaKey(  spep_6+200,  bakuhastu,  255);

ct_zudodo = entryEffectLife( spep_6+0,  10014, 96, 0x100, -1, 0, 58.1, 364 );  --ズドド
setEffShake( spep_6 + 0, ct_zudodo, 96, 25 );

setEffMoveKey( spep_6+0, ct_zudodo, 58.1, 364 , 0 );
--[[setEffMoveKey( spep_6+2, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+4, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+6, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+8, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+10, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+12, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+14, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+16, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+18, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+20, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+22, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+24, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+26, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+28, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+30, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+32, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+34, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+36, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+38, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+40, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+42, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+44, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+46, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+48, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+50, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+52, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+54, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+56, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+58, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+60, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+62, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+64, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+66, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+68, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+70, ct_zudodo, 34.1, 348 , 0 );
setEffMoveKey( spep_6+72, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+74, ct_zudodo, 34.1, 348 , 0 );]]
setEffMoveKey( spep_6+74, ct_zudodo, 58.1, 364 , 0 );
setEffMoveKey( spep_6+76, ct_zudodo, 60.3, 371.4 , 0 );
setEffMoveKey( spep_6+78, ct_zudodo, 37.2, 362 , 0 );
setEffMoveKey( spep_6+80, ct_zudodo, 64.6, 386.3 , 0 );
setEffMoveKey( spep_6+82, ct_zudodo, 40.2, 376 , 0 );
setEffMoveKey( spep_6+84, ct_zudodo, 69, 401.2 , 0 );
setEffMoveKey( spep_6+86, ct_zudodo, 43.3, 390.1 , 0 );
setEffMoveKey( spep_6+88, ct_zudodo, 73.4, 416.1 , 0 );
setEffMoveKey( spep_6+90, ct_zudodo, 46.3, 404.1 , 0 );
setEffMoveKey( spep_6+92, ct_zudodo, 77.7, 431 , 0 );
setEffMoveKey( spep_6+94, ct_zudodo, 49.4, 418.1 , 0 );
setEffMoveKey( spep_6+96, ct_zudodo, 50.9, 425.1 , 0 );

setEffScaleKey( spep_6+0, ct_zudodo, 2.5, 3.5 );
setEffScaleKey( spep_6+74, ct_zudodo, 2.5, 3.5 );
setEffScaleKey( spep_6+76, ct_zudodo, 2.53, 3.53 );
setEffScaleKey( spep_6+78, ct_zudodo, 2.55, 3.55 );
setEffScaleKey( spep_6+80, ct_zudodo, 2.58, 3.58 );
setEffScaleKey( spep_6+82, ct_zudodo, 2.61, 3.61 );
setEffScaleKey( spep_6+84, ct_zudodo, 2.64, 3.64 );
setEffScaleKey( spep_6+86, ct_zudodo, 2.66, 3.66 );
setEffScaleKey( spep_6+88, ct_zudodo, 2.69, 3.69 );
setEffScaleKey( spep_6+90, ct_zudodo, 2.72, 3.72 );
setEffScaleKey( spep_6+92, ct_zudodo, 2.75, 3.75 );
setEffScaleKey( spep_6+94, ct_zudodo, 2.77, 3.77 );
setEffScaleKey( spep_6+96, ct_zudodo, 3.4, 4.4 );
setEffRotateKey( spep_6+0, ct_zudodo, 0 );
setEffRotateKey( spep_6+96, ct_zudodo, 0 );
setEffAlphaKey( spep_6+0, ct_zudodo, 255 );
setEffAlphaKey( spep_6+74, ct_zudodo, 255 );
setEffAlphaKey( spep_6+76, ct_zudodo, 232 );
setEffAlphaKey( spep_6+78, ct_zudodo, 209 );
setEffAlphaKey( spep_6+80, ct_zudodo, 185 );
setEffAlphaKey( spep_6+82, ct_zudodo, 162 );
setEffAlphaKey( spep_6+84, ct_zudodo, 139 );
setEffAlphaKey( spep_6+86, ct_zudodo, 116 );
setEffAlphaKey( spep_6+88, ct_zudodo, 93 );
setEffAlphaKey( spep_6+90, ct_zudodo, 70 );
setEffAlphaKey( spep_6+92, ct_zudodo, 46 );
setEffAlphaKey( spep_6+94, ct_zudodo, 23 );
setEffAlphaKey( spep_6+96, ct_zudodo, 0 );

--***敵の動き***
setDisp( spep_6+0, 1, 1 );
setDisp( spep_6+98, 1, 0 );
changeAnime( spep_6+0, 1, 104 );
changeAnime( spep_6+60-3, 1, 108 );

setMoveKey( spep_6+0, 1, 237.9, -38.1 , 0 );
setMoveKey( spep_6+2, 1, 247, -28.7 , 0 );
setMoveKey( spep_6+4, 1, 238, -35.4 , 0 );
setMoveKey( spep_6+6, 1, 245, -30.1 , 0 );
setMoveKey( spep_6+8, 1, 235.9, -36.9 , 0 );
setMoveKey( spep_6+10, 1, 242.8, -31.7 , 0 );
setMoveKey( spep_6+12, 1, 233.6, -38.5 , 0 );
setMoveKey( spep_6+14, 1, 240.3, -33.4 , 0 );
setMoveKey( spep_6+16, 1, 231, -40.3 , 0 );
setMoveKey( spep_6+18, 1, 237.6, -35.3 , 0 );
setMoveKey( spep_6+20, 1, 228.1, -42.3 , 0 );
setMoveKey( spep_6+22, 1, 234.6, -37.4 , 0 );
setMoveKey( spep_6+24, 1, 225, -44.5 , 0 );
setMoveKey( spep_6+26, 1, 231.4, -39.6 , 0 );
setMoveKey( spep_6+28, 1, 221.7, -46.8 , 0 );
setMoveKey( spep_6+30, 1, 228, -42 , 0 );
setMoveKey( spep_6+32, 1, 218.2, -49.3 , 0 );
setMoveKey( spep_6+34, 1, 224.3, -44.6 , 0 );
setMoveKey( spep_6+36, 1, 214.3, -52 , 0 );
setMoveKey( spep_6+38, 1, 220.4, -47.3 , 0 );
setMoveKey( spep_6+40, 1, 210.3, -54.8 , 0 );
setMoveKey( spep_6+42, 1, 216.2, -50.3 , 0 );
setMoveKey( spep_6+44, 1, 206, -57.8 , 0 );
setMoveKey( spep_6+46, 1, 211.8, -53.3 , 0 );
setMoveKey( spep_6+48, 1, 201.5, -60.9 , 0 );
setMoveKey( spep_6+50, 1, 207.1, -56.6 , 0 );
setMoveKey( spep_6+52, 1, 196.7, -64.3 , 0 );
setMoveKey( spep_6+54, 1, 202.2, -60 , 0 );
setMoveKey( spep_6+56, 1, 191.7, -67.8 , 0 );
--setMoveKey( spep_6+59, 1, 91.5, -9.3 , 0 );
setMoveKey( spep_6+60-3, 1, 197.1, -63.6 , 0 );
setMoveKey( spep_6+62-3, 1, 194, -32.6 , 0 );
setMoveKey( spep_6+64-3, 1, 225.1, -2.2 , 0 );
setMoveKey( spep_6+66-3, 1, 257.4, 6.6 , 0 );
setMoveKey( spep_6+68-3, 1, 272.3, 3.2 , 0 );
setMoveKey( spep_6+70-3, 1, 301.8, 11.6 , 0 );
setMoveKey( spep_6+72-3, 1, 313.8, 7.8 , 0 );
setMoveKey( spep_6+74-3, 1, 340.4, 15.9 , 0 );
setMoveKey( spep_6+76-3, 1, 349.5, 11.7 , 0 );
setMoveKey( spep_6+78-3, 1, 373.2, 19.4 , 0 );
setMoveKey( spep_6+80-3, 1, 379.4, 15 , 0 );
setMoveKey( spep_6+82-3, 1, 400.1, 22.3 , 0 );
setMoveKey( spep_6+84-3, 1, 403.3, 17.5 , 0 );
setMoveKey( spep_6+86-3, 1, 413, 18.6 , 0 );
setMoveKey( spep_6+88-3, 1, 421.3, 19.4 , 0 );
setMoveKey( spep_6+90-3, 1, 428, 20.2 , 0 );
setMoveKey( spep_6+92-3, 1, 433.3, 20.7 , 0 );
setMoveKey( spep_6+94-3, 1, 437, 21.1 , 0 );
setMoveKey( spep_6+96-3, 1, 439.3, 21.3 , 0 );
setMoveKey( spep_6+98-3, 1, 440, 21.4 , 0 );

setScaleKey( spep_6+0, 1, 1.4, 1.4 );
setScaleKey( spep_6+2, 1, 1.41, 1.41 );
setScaleKey( spep_6+4, 1, 1.42, 1.42 );
setScaleKey( spep_6+6, 1, 1.43, 1.43 );
setScaleKey( spep_6+8, 1, 1.44, 1.44 );
setScaleKey( spep_6+10, 1, 1.55, 1.55 );
setScaleKey( spep_6+12, 1, 1.56, 1.56 );
setScaleKey( spep_6+14, 1, 1.58, 1.58 );
setScaleKey( spep_6+16, 1, 1.59, 1.59 );
setScaleKey( spep_6+18, 1, 1.6, 1.6 );  --
setScaleKey( spep_6+20, 1, 1.82, 1.82 );
setScaleKey( spep_6+22, 1, 1.83, 1.83 );
setScaleKey( spep_6+24, 1, 1.85, 1.85 );
setScaleKey( spep_6+26, 1, 1.87, 1.87 );
setScaleKey( spep_6+28, 1, 1.88, 1.88 );
setScaleKey( spep_6+30, 1, 1.9, 1.9 );
setScaleKey( spep_6+32, 1, 2.02, 2.02 );
setScaleKey( spep_6+34, 1, 2.04, 2.04 );
setScaleKey( spep_6+36, 1, 2.06, 2.06 );
setScaleKey( spep_6+38, 1, 2.08, 2.08 );
setScaleKey( spep_6+40, 1, 2.1, 2.1 );
setScaleKey( spep_6+42, 1, 2.12, 2.12 );
setScaleKey( spep_6+44, 1, 2.14, 2.14 );
setScaleKey( spep_6+46, 1, 2.16, 2.16 );
setScaleKey( spep_6+48, 1, 2.19, 2.19 );
setScaleKey( spep_6+50, 1, 2.21, 2.21 );
setScaleKey( spep_6+52, 1, 2.23, 2.23 );
setScaleKey( spep_6+54, 1, 2.26, 2.26 );
setScaleKey( spep_6+56, 1, 2.28, 2.28 );
--setScaleKey( spep_6+59, 1, 1.91, 1.91 );
setScaleKey( spep_6+60-3, 1, 2.22, 2.22 );
setScaleKey( spep_6+62-3, 1, 2.09, 2.09 );
setScaleKey( spep_6+64-3, 1, 1.92, 1.92 );
setScaleKey( spep_6+66-3, 1, 1.88, 1.88 );
setScaleKey( spep_6+68-3, 1, 1.84, 1.84 );
setScaleKey( spep_6+70-3, 1, 1.8, 1.8 );
setScaleKey( spep_6+72-3, 1, 1.77, 1.77 );
setScaleKey( spep_6+74-3, 1, 1.73, 1.73 );
setScaleKey( spep_6+76-3, 1, 1.7, 1.7 );
setScaleKey( spep_6+78-3, 1, 1.68, 1.68 );
setScaleKey( spep_6+80-3, 1, 1.65, 1.65 );
setScaleKey( spep_6+82-3, 1, 1.63, 1.63 );
setScaleKey( spep_6+84-3, 1, 1.61, 1.61 );
setScaleKey( spep_6+86-3, 1, 1.6, 1.6 );
setScaleKey( spep_6+88-3, 1, 1.58, 1.58 );
setScaleKey( spep_6+90-3, 1, 1.57, 1.57 );
setScaleKey( spep_6+92-3, 1, 1.56, 1.56 );
setScaleKey( spep_6+94-3, 1, 1.56, 1.56 );
setScaleKey( spep_6+96-3, 1, 1.55, 1.55 );
setScaleKey( spep_6+98-3, 1, 1.55, 1.55 );

setRotateKey( spep_6+0, 1, 0 );
setRotateKey( spep_6+56, 1, 0 );
--setRotateKey( spep_6+59, 1, 0 );
setRotateKey( spep_6+60-3, 1, 23.7 );
setRotateKey( spep_6+62-3, 1, -16 );
setRotateKey( spep_6+64-3, 1, -16.2 );
setRotateKey( spep_6+66-3, 1, -14.4 );
setRotateKey( spep_6+68-3, 1, -12.6 );
setRotateKey( spep_6+70-3, 1, -11 );
setRotateKey( spep_6+72-3, 1, -9.5 );
setRotateKey( spep_6+74-3, 1, -8.1 );
setRotateKey( spep_6+76-3, 1, -6.8 );
setRotateKey( spep_6+78-3, 1, -5.6 );
setRotateKey( spep_6+80-3, 1, -4.5 );
setRotateKey( spep_6+82-3, 1, -3.6 );
setRotateKey( spep_6+84-3, 1, -2.7 );
setRotateKey( spep_6+86-3, 1, -2 );
setRotateKey( spep_6+88-3, 1, -1.4 );
setRotateKey( spep_6+90-3, 1, -0.9 );
setRotateKey( spep_6+92-3, 1, -0.5 );
setRotateKey( spep_6+94-3, 1, -0.2 );
setRotateKey( spep_6+96-3, 1, -0.1 );
setRotateKey( spep_6+98-3, 1, -0.1 );



entryFadeBg( spep_6, 0, 200, 0, 0, 0, 0, 255);          -- 黒　背景

--***SE***
playSe(  spep_6,  1022);
playSe(  spep_6+56,  1024);  --爆発

-- ダメージ表示
dealDamage(spep_6+80);

--entryFade( spep_6+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+180);

end

--超4ベジータ_スピリットブレイクキャノン
--sp_effect_a2_00103

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

--エフェクト登録
--味方
SP_01 = 152897;  --最初　74
SP_02 = 152898;  --格闘　前　136
SP_03 = 152899;  --格闘　後ろ136
SP_04 = 152900;  --気弾ため　55 
SP_05 = 152901;  --気弾放つ　40
SP_06 = 152902;  --気弾迫る　35
SP_07 = 152903;  --爆発　100

--敵
SP_01x = 152897;  --最初　74
SP_02x = 152898;  --格闘　前　136
SP_03x = 152899;  --格闘　後ろ136
SP_04x= 152900;  --気弾ため　55 
SP_05x = 152901;  --気弾放つ　40
SP_06x = 152902;  --気弾迫る　35
SP_07x = 152903;  --爆発　100




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
--ため
------------------------------------------------------
spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01,148,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+148,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+148,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+146,tame,255);
setEffAlphaKey(spep_0+147,tame,255);
setEffAlphaKey(spep_0+148,tame,0);

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 112,  906, 57, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 112, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 166, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 112, shuchusen1, 1.05, 1.05 );
setEffScaleKey( spep_0 + 166, shuchusen1, 1.05, 1.05 );

setEffRotateKey( spep_0 + 112, shuchusen1, 0 );
setEffRotateKey( spep_0 + 166, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 112, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 147, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 0 );

--SE
SE=playSe(spep_0,1044);
stopSe(spep_0+58,SE,0);
playSe(spep_0+66,50);
playSe(spep_0+110,1018);

--黒背景
entryFadeBg(spep_0, 0, 148, 0, 0, 0, 0, 200);  -- 黒　背

--白フェード
--entryFade( spep_0 + 158, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+148;
------------------------------------------------------
--腹パン
------------------------------------------------------
--エフェクト
harapan_f=entryEffectLife(spep_1,SP_02,366,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, harapan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 366, harapan_f, 0, 0 , 0 );

setEffScaleKey(spep_1,harapan_f,1.0,1.0);
setEffScaleKey(spep_1+366,harapan_f,1.0,1.0);

setEffRotateKey(spep_1,harapan_f,0);
setEffRotateKey(spep_1+366,harapan_f,0);

setEffAlphaKey(spep_1,harapan_f,255);
setEffAlphaKey(spep_1+364,harapan_f,255);
setEffAlphaKey(spep_1+365,harapan_f,255);
setEffAlphaKey(spep_1+366,harapan_f,0);

--***流線***
ryu1 = entryEffectLife(  spep_1,  920,  58,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffMoveKey(  spep_1,  ryu1,  0,  0);
setEffMoveKey(  spep_1-3+60,  ryu1,  0,  0);
setEffScaleKey(  spep_1,  ryu1,  8.14,  4.26);
setEffScaleKey(  spep_1-3+44,  ryu1,  8.14,  4.26);
setEffScaleKey(  spep_1-3+46,  ryu1,  2.21,  1.38);
setEffScaleKey(  spep_1-3+60,  ryu1,  2.21,  1.38);
setEffRotateKey(  spep_1,  ryu1,  -29.6);
setEffRotateKey(  spep_1-3+60,  ryu1,  -29.6);
setEffAlphaKey(  spep_1  ,ryu1,  255);
setEffAlphaKey(  spep_1-3+22,  ryu1,  255);
setEffAlphaKey(  spep_1-3+44,  ryu1,  100);
setEffAlphaKey(  spep_1-3+60,  ryu1,  0);

ryu2 = entryEffectLife(  spep_1-3,  921,  110,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffMoveKey(  spep_1-3,  ryu2,  0,  0);
setEffMoveKey(  spep_1-3+110,  ryu2,  0,  0);
setEffScaleKey(  spep_1-3,  ryu2,  1.69,  1.41);
setEffScaleKey(  spep_1-3+110,  ryu2,  1.69,  1.41);
setEffRotateKey(  spep_1-3,  ryu2,  -47.3);
setEffRotateKey(  spep_1-3+110,  ryu2,  -47.3);
setEffAlphaKey(  spep_1-3,  ryu2,  0);
setEffAlphaKey(  spep_1-3+83,  ryu2,  0);
setEffAlphaKey(  spep_1-3+84,  ryu2,  255);
setEffAlphaKey(  spep_1-3+109,  ryu2,  255);
setEffAlphaKey(  spep_1-3+110,  ryu2,  0);

ryu3 = entryEffectLife(  spep_1,  920,  274,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffMoveKey(  spep_1,  ryu3,  0,  0);
setEffMoveKey(  spep_1-3+274,  ryu3,  0,  0);
setEffScaleKey(  spep_1-3,  ryu3,  3.78,  1.98);
setEffScaleKey(  spep_1-3+202,  ryu3,  3.78,  1.98);
setEffScaleKey(  spep_1-3+203,  ryu3,  2.27,  2.17);
setEffScaleKey(  spep_1-3+204,  ryu3,  2.27,  2.17);
setEffScaleKey(  spep_1-3+224,  ryu3,  2.27,  2.17);
setEffScaleKey(  spep_1-3+254,  ryu3,  3.05,  1.75);
setEffScaleKey(  spep_1-3+272,  ryu3,  3.05,  1.75);
setEffRotateKey(  spep_1,  ryu3,  -29.6);
setEffRotateKey(  spep_1-3+203,  ryu3,  -29.6);
setEffRotateKey(  spep_1-3+204,  ryu3,  -90);
setEffRotateKey(  spep_1-3+251,  ryu3,  -90);
setEffRotateKey(  spep_1-3+252,  ryu3,  -124);
setEffRotateKey(  spep_1-3+272,  ryu3,  -124);
setEffAlphaKey(  spep_1,  ryu3,  0);
setEffAlphaKey(  spep_1+179,  ryu3,  0);
setEffAlphaKey(  spep_1+180,  ryu3,  200);
setEffAlphaKey(  spep_1-3+224,  ryu3,  200);
setEffAlphaKey(  spep_1-3+234,  ryu3,  0);
setEffAlphaKey(  spep_1-3+251,  ryu3,  0);
setEffAlphaKey(  spep_1-3+253,  ryu3,  100);
setEffAlphaKey(  spep_1-3+264,  ryu3,  200);
setEffAlphaKey(  spep_1-3+272,  ryu3,  200);

--エフェクト
harapan_b=entryEffectLife(spep_1,SP_03,366,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, harapan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 366, harapan_b, 0, 0 , 0 );

setEffScaleKey(spep_1,harapan_b,1.0,1.0);
setEffScaleKey(spep_1+366,harapan_b,1.0,1.0);

setEffRotateKey(spep_1,harapan_b,0);
setEffRotateKey(spep_1+366,harapan_b,0);

setEffAlphaKey(spep_1,harapan_b,255);
setEffAlphaKey(spep_1+364,harapan_b,255);
setEffAlphaKey(spep_1+365,harapan_b,255);
setEffAlphaKey(spep_1+366,harapan_b,0);

ef_shuchu = entryEffectLife( spep_1 + 110,  906, 40, 0x80, -1, 0, 522.9, 216.6 );

setEffMoveKey( spep_1 + 110, ef_shuchu, 170.9, 224.7, 0 );
setEffMoveKey( spep_1 + 150, ef_shuchu, 170.9, 224.7 , 0 )

setEffScaleKey( spep_1 + 110, ef_shuchu, 1.6, 1.47 );
setEffScaleKey( spep_1 + 144, ef_shuchu, 1.6, 1.47 );
setEffScaleKey( spep_1 + 146, ef_shuchu, 1.96, 1.8 );
setEffScaleKey( spep_1 + 148, ef_shuchu, 2.32, 2.13 );
setEffScaleKey( spep_1 + 150, ef_shuchu, 2.68, 2.46 );

setEffRotateKey( spep_1 + 110, ef_shuchu, 0 );
setEffRotateKey( spep_1 + 150, ef_shuchu, 0 );

setEffAlphaKey( spep_1 + 110, ef_shuchu, 255 );
setEffAlphaKey( spep_1 + 150, ef_shuchu, 255 );

--てき
setDisp( spep_1 + 24, 1, 1 );
setDisp( spep_1-3 + 352, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );


--setMoveKey( spep_1 + 0, 1, 2896.1, 1673.2 , 0 );
--setMoveKey( spep_1-3 + 18, 1, 2896.1, 1673.2 , 0 );
--setMoveKey( spep_1-3 + 20, 1, 2896, 1672.7 , 0 );
--setMoveKey( spep_1-3 + 22, 1, 2837.6, 1638.9 , 0 );
--setMoveKey( spep_1-3 + 24, 1, 2600.5, 1502.2 , 0 );
setMoveKey( spep_1-3 + 26, 1, 2065.1, 1192.9 , 0 );
setMoveKey( spep_1-3 + 28, 1, 1389.9, 802.4 , 0 );
setMoveKey( spep_1-3 + 30, 1, 909, 524.7 , 0 );
setMoveKey( spep_1-3 + 32, 1, 612.3, 353 , 0 );

--setScaleKey( spep_1 + 0, 1, 3.04, 3.04 );
--setScaleKey( spep_1-3 + 20, 1, 3.04, 3.04 );
--setScaleKey( spep_1-3 + 22, 1, 2.98, 2.98 );
--setScaleKey( spep_1-3 + 24, 1, 2.75, 2.75 );
setScaleKey( spep_1-3 + 26, 1, 2.24, 2.24 );
setScaleKey( spep_1-3 + 28, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 30, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 32, 1, 0.86, 0.86 );

setRotateKey( spep_1 + 24, 1, -30.6 );
setRotateKey( spep_1 + 32, 1, -30.6 );

--黒背景
entryFadeBg(spep_1 , 0, 365, 0, 0, 0, 0, 200);  -- 黒　背


--SE
SE1=playSe(spep_1,44);


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+30 ; --エンドフェイズのフレーム数を置き換える
    
    stopSe(SP_dodge-14,SE1,0);
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,612.3, 353 , 0 );
    setScaleKey(SP_dodge , 1, 0.86, 0.86);
    setRotateKey(SP_dodge,   1, -30.6 );
    
  --キャラクターの固定
  setMoveKey(SP_dodge+10, 1,612.3, 353 , 0 );
  setScaleKey(SP_dodge+10 , 1,0.86, 0.86);
  setRotateKey(SP_dodge+10,   1, -30.6 );
    
    setDisp(SP_dodge+9, 0, 0);
    --setDisp(SP_dodge+9, 1, 0);
    --setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+9,1,0.9,0.9);
    --setRotateKey(SP_dodge+9,   1, 0);
    
    --setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
    --setRotateKey(SP_dodge+10,   1, 0);
    
    
    --悟飯を画面外に表示
    --setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
    --setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    --setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
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
    changeAnime( spep_1-3 + 58, 1, 108 );
    changeAnime( spep_1-3 + 110, 1, 5 );
    changeAnime( spep_1-3 + 130, 1, 7 );
    changeAnime( spep_1-3 + 184, 1, 6 );
    changeAnime( spep_1-3 + 204, 1, 108 );
    changeAnime( spep_1-3 + 252, 1, 106 );
    changeAnime( spep_1-3 + 274, 1, 105 );

    setMoveKey( spep_1-3 + 34, 1, 430.8, 247.9 , 0 );
    setMoveKey( spep_1-3 + 36, 1, 324.2, 186.1 , 0 );
    setMoveKey( spep_1-3 + 38, 1, 269.2, 155.1 , 0 );
    setMoveKey( spep_1-3 + 40, 1, 253.4, 145.5 , 0 );
    setMoveKey( spep_1-3 + 42, 1, 253.6, 145.2 , 0 );
    setMoveKey( spep_1-3 + 44, 1, 253.4, 145.2 , 0 );
    setMoveKey( spep_1-3 + 46, 1, 252.9, 145.5 , 0 );
    setMoveKey( spep_1-3 + 48, 1, 252.1, 145.7 , 0 );
    setMoveKey( spep_1-3 + 50, 1, 251.1, 145.7 , 0 );
    setMoveKey( spep_1-3 + 52, 1, 248.4, 146.2 , 0 );
    setMoveKey( spep_1-3 + 54, 1, 244.1, 147.1 , 0 );
    setMoveKey( spep_1-3 + 57, 1, 243.4, 147.8 , 0 );
    setMoveKey( spep_1-3 + 58, 1, 134.4, 125.2 , 0 );
    setMoveKey( spep_1-3 + 60, 1, 159.2, 92.4 , 0 );
    setMoveKey( spep_1-3 + 62, 1, 136.8, 138.6 , 0 );
    setMoveKey( spep_1-3 + 64, 1, 149.7, 87.6 , 0 );
    setMoveKey( spep_1-3 + 66, 1, 133.3, 128.1 , 0 );
    setMoveKey( spep_1-3 + 68, 1, 152.8, 74.9 , 0 );
    setMoveKey( spep_1-3 + 70, 1, 172, 68.5 , 0 );
    setMoveKey( spep_1-3 + 72, 1, 150.9, 84 , 0 );
    setMoveKey( spep_1-3 + 74, 1, 132.5, 151.6 , 0 );
    setMoveKey( spep_1-3 + 76, 1, 158.8, 87.4 , 0 );
    setMoveKey( spep_1-3 + 78, 1, 143.5, 139.3 , 0 );
    setMoveKey( spep_1-3 + 80, 1, 179.2, 110.8 , 0 );
    setMoveKey( spep_1-3 + 81, 1, 179.2, 110.8 , 0 );
    setMoveKey( spep_1-3 + 82, 1, 7.8, -57.3 , 0 );
    setMoveKey( spep_1-3 + 84, 1, 96.4, 53.6 , 0 );
    setMoveKey( spep_1-3 + 86, 1, 201, 184.6 , 0 );
    setMoveKey( spep_1-3 + 88, 1, 278.2, 280.8 , 0 );
    setMoveKey( spep_1-3 + 90, 1, 336.1, 352.3 , 0 );
    setMoveKey( spep_1-3 + 92, 1, 378, 404.5 , 0 );
    setMoveKey( spep_1-3 + 94, 1, 408.7, 443.1 , 0 );
    setMoveKey( spep_1-3 + 96, 1, 432, 472.2 , 0 );
    setMoveKey( spep_1-3 + 98, 1, 450.6, 495.1 , 0 );
    setMoveKey( spep_1-3 + 100, 1, 466.4, 514 , 0 );
    setMoveKey( spep_1-3 + 102, 1, 472.5, 522.5 , 0 );
    setMoveKey( spep_1-3 + 104, 1, 481.9, 533.4 , 0 );
    setMoveKey( spep_1-3 + 106, 1, 482.9, 535.6 , 0 );
    setMoveKey( spep_1-3 + 109, 1, 484.8, 537.3 , 0 );
    setMoveKey( spep_1-3 + 110, 1, -581.3, -474 , 0 );
    setMoveKey( spep_1-3 + 112, 1, -465.6, -373 , 0 );
    setMoveKey( spep_1-3 + 114, 1, -363.4, -283.8 , 0 );
    setMoveKey( spep_1-3 + 116, 1, -274.9, -206.5 , 0 );
    setMoveKey( spep_1-3 + 118, 1, -200, -141.1 , 0 );
    setMoveKey( spep_1-3 + 120, 1, -138.8, -87.5 , 0 );
    setMoveKey( spep_1-3 + 122, 1, -91.1, -45.9 , 0 );
    setMoveKey( spep_1-3 + 124, 1, -57, -16.1 , 0 );
    setMoveKey( spep_1-3 + 126, 1, -36.6, 1.8 , 0 );
    setMoveKey( spep_1-3 + 129, 1, -29.8, 7.7 , 0 );
    setMoveKey( spep_1-3 + 130, 1, 87, -14.3 , 0 );
    setMoveKey( spep_1-3 + 132, 1, 46.4, -118 , 0 );
    setMoveKey( spep_1-3 + 134, 1, 44.8, -88 , 0 );
    setMoveKey( spep_1-3 + 136, 1, -16.5, -177.1 , 0 );
    setMoveKey( spep_1-3 + 138, 1, 21.6, -134.3 , 0 );
    setMoveKey( spep_1-3 + 140, 1, -19.3, -174.9 , 0 );
    setMoveKey( spep_1-3 + 142, 1, -75.2, -244.1 , 0 );
    setMoveKey( spep_1-3 + 144, 1, -40.6, -206.6 , 0 );
    setMoveKey( spep_1-3 + 146, 1, -10.6, -158.8 , 0 );
    setMoveKey( spep_1-3 + 148, 1, 75.9, -8.7 , 0 );
    setMoveKey( spep_1-3 + 150, 1, 90.2, 19.6 , 0 );
    setMoveKey( spep_1-3 + 152, 1, 37.4, -50.4 , 0 );
    setMoveKey( spep_1-3 + 154, 1, -262.6, -447.5 , 0 );
    setMoveKey( spep_1-3 + 156, 1, -722.5, -1054.5 , 0 );
    setMoveKey( spep_1-3 + 158, 1, -940.1, -1340.6 , 0 );
    setMoveKey( spep_1-3 + 160, 1, -1026.7, -1454.3 , 0 );
    setMoveKey( spep_1-3 + 163, 1, -1050.6, -1483.9 , 0 );
    setMoveKey( spep_1-3 + 183, 1, -1050.6, -1483.9 , 0 );
    
    setMoveKey( spep_1-3 + 184, 1, 473, 298 , 0 );
    setMoveKey( spep_1-3 + 186, 1, 401, 252.8 , 0 );
    setMoveKey( spep_1-3 + 188, 1, 297.8, 194.7 , 0 );
    setMoveKey( spep_1-3 + 190, 1, 266.3, 171.4 , 0 );
    setMoveKey( spep_1-3 + 192, 1, 189.8, 128.3 , 0 );
    setMoveKey( spep_1-3 + 194, 1, 126.3, 92.3 , 0 );
    setMoveKey( spep_1-3 + 196, 1, 104.8, 76.9 , 0 );
    setMoveKey( spep_1-3 + 198, 1, 31.5, 38.3 , 0 );
    setMoveKey( spep_1-3 + 200, 1, 37.5, 37.8 , 0 );
    setMoveKey( spep_1-3 + 203, 1, -14.4, 11.6 , 0 );
    
    setMoveKey( spep_1-3 + 204, 1, 3.4, 222.6 , 0 );
    setMoveKey( spep_1-3 + 206, 1, 18.8, 172.1 , 0 );
    setMoveKey( spep_1-3 + 208, 1, -1.3, 254.2 , 0 );
    setMoveKey( spep_1-3 + 210, 1, 17.5, 197.4 , 0 );
    setMoveKey( spep_1-3 + 212, 1, -3.8, 271.1 , 0 );
    setMoveKey( spep_1-3 + 214, 1, 21, 201.2 , 0 );
    setMoveKey( spep_1-3 + 216, 1, -2.8, 268.6 , 0 );
    setMoveKey( spep_1-3 + 218, 1, 9.1, 227.9 , 0 );
    setMoveKey( spep_1-3 + 220, 1, 1.7, 272.5 , 0 );
    setMoveKey( spep_1-3 + 222, 1, 7.4, 256.8 , 0 );
    setMoveKey( spep_1-3 + 224, 1, 7.4, 257.4 , 0 );
    setMoveKey( spep_1-3 + 226, 1, 14.8, 13 , 0 );
    setMoveKey( spep_1-3 + 228, 1, 14.5, 13.7 , 0 );
    setMoveKey( spep_1-3 + 230, 1, 13.7, 13.7 , 0 );
    setMoveKey( spep_1-3 + 232, 1, 12.9, 14 , 0 );
    setMoveKey( spep_1-3 + 234, 1, 11.8, 16.9 , 0 );
    setMoveKey( spep_1-3 + 236, 1, 10.3, 21.3 , 0 );
    setMoveKey( spep_1-3 + 238, 1, 8.9, 26.9 , 0 );
    setMoveKey( spep_1-3 + 240, 1, 7.6, 32.4 , 0 );
    setMoveKey( spep_1-3 + 242, 1, 6.5, 38.4 , 0 );
    setMoveKey( spep_1-3 + 244, 1, 5.6, 45.7 , 0 );
    setMoveKey( spep_1-3 + 246, 1, 5, 52.2 , 0 );
    setMoveKey( spep_1-3 + 248, 1, 4.7, 52.8 , 0 );
    setMoveKey( spep_1-3 + 250, 1, 5.4, 43.3 , 0 );
    
    setMoveKey( spep_1-3 + 252, 1, 2.3, 34 , 0 );
    setMoveKey( spep_1-3 + 254, 1, 103.8, -144.2 , 0 );
    setMoveKey( spep_1-3 + 256, 1, 200.8, -387.6 , 0 );
    setMoveKey( spep_1-3 + 258, 1, 327.6, -596.6 , 0 );
    setMoveKey( spep_1-3 + 260, 1, 403.1, -799 , 0 );
    setMoveKey( spep_1-3 + 262, 1, 501.2, -942.4 , 0 );
    setMoveKey( spep_1-3 + 264, 1, 545.2, -1068.7 , 0 );
    setMoveKey( spep_1-3 + 273, 1, 565.2, -1081.1 , 0 );
    
    setMoveKey( spep_1-3 + 274, 1, 1.9, 38.3 , 0 );
    setMoveKey( spep_1-3 + 276, 1, 1.2, 29.9 , 0 );
    setMoveKey( spep_1-3 + 278, 1, -0.2, 14 , 0 );
    setMoveKey( spep_1-3 + 280, 1, -0.8, 8.4 , 0 );
    setMoveKey( spep_1-3 + 282, 1, -1, 5.5 , 0 );
    setMoveKey( spep_1-3 + 284, 1, -1.2, 3.6 , 0 );
    setMoveKey( spep_1-3 + 286, 1, -1.3, 2.4 , 0 );
    setMoveKey( spep_1-3 + 288, 1, -1.4, 1.5 , 0 );
    setMoveKey( spep_1-3 + 290, 1, -1.4, 0.9 , 0 );
    setMoveKey( spep_1-3 + 292, 1, -1.5, 0.5 , 0 );
    setMoveKey( spep_1-3 + 294, 1, -1.5, 0.3 , 0 );
    setMoveKey( spep_1-3 + 296, 1, -1.5, 0.1 , 0 );
    setMoveKey( spep_1-3 + 298, 1, -1.5, -0.1 , 0 );
    setMoveKey( spep_1-3 + 300, 1, -1.5, -0.1 , 0 );
    setMoveKey( spep_1-3 + 302, 1, -1.5, -0.2 , 0 );
    setMoveKey( spep_1-3 + 304, 1, -1.5, -0.2 , 0 );
    setMoveKey( spep_1-3 + 306, 1, -1.5, -0.3 , 0 );
    setMoveKey( spep_1-3 + 314, 1, -1.5, -0.3 , 0 );
    setMoveKey( spep_1-3 + 316, 1, -1.4, -0.3 , 0 );
    setMoveKey( spep_1-3 + 318, 1, -22.3, -17 , 0 );
    setMoveKey( spep_1-3 + 320, 1, 21.7, 2.6 , 0 );
    setMoveKey( spep_1-3 + 322, 1, -12.3, -16.2 , 0 );
    setMoveKey( spep_1-3 + 324, 1, 12.4, 5.6 , 0 );
    setMoveKey( spep_1-3 + 326, 1, -14.1, 7.4 , 0 );
    setMoveKey( spep_1-3 + 328, 1, 2.2, -11.2 , 0 );
    setMoveKey( spep_1-3 + 330, 1, -0.8, 11.6 , 0 );
    setMoveKey( spep_1-3 + 332, 1, -10.7, -8.9 , 0 );
    setMoveKey( spep_1-3 + 334, 1, -2, 16.8 , 0 );
    setMoveKey( spep_1-3 + 336, 1, -7.1, -10.7 , 0 );
    setMoveKey( spep_1-3 + 338, 1, 8.3, 4.9 , 0 );
    setMoveKey( spep_1-3 + 340, 1, -6.5, -6.3 , 0 );
    setMoveKey( spep_1-3 + 342, 1, 5.3, 3.9 , 0 );
    setMoveKey( spep_1-3 + 344, 1, -9.9, 0.7 , 0 );
    setMoveKey( spep_1-3 + 346, 1, 8.7, 0.5 , 0 );
    setMoveKey( spep_1-3 + 348, 1, -10.6, -6.1 , 0 );
    setMoveKey( spep_1-3 + 350, 1, 4.9, 4.4 , 0 );
    setMoveKey( spep_1-3 + 352, 1, -5.2, -6.7 , 0 );
    setMoveKey( spep_1-3 + 354, 1, 2.5, 7.6 , 0 );

setScaleKey( spep_1-3 + 34, 1, 0.69, 0.69 );
setScaleKey( spep_1-3 + 36, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 38, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 40, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 42, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 44, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 46, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 48, 1, 0.67, 0.67 );
setScaleKey( spep_1-3 + 50, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 52, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 54, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 57, 1, 1.84, 1.84 );
setScaleKey( spep_1-3 + 58, 1, 2.66, 2.66 );
setScaleKey( spep_1-3 + 60, 1, 2.65, 2.65 );
setScaleKey( spep_1-3 + 62, 1, 2.65, 2.65 );
setScaleKey( spep_1-3 + 64, 1, 2.64, 2.64 );
setScaleKey( spep_1-3 + 68, 1, 2.64, 2.64 );
setScaleKey( spep_1-3 + 70, 1, 2.63, 2.63 );
setScaleKey( spep_1-3 + 72, 1, 2.63, 2.63 );
setScaleKey( spep_1-3 + 74, 1, 2.62, 2.62 );
setScaleKey( spep_1-3 + 78, 1, 2.62, 2.62 );
setScaleKey( spep_1-3 + 81, 1, 2.61, 2.61 );
setScaleKey( spep_1-3 + 82, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 83, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 84, 1, 1.51, 1.51 );
setScaleKey( spep_1-3 + 86, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 88, 1, 1.16, 1.16 );
setScaleKey( spep_1-3 + 90, 1, 1.04, 1.04 );
setScaleKey( spep_1-3 + 92, 1, 0.96, 0.96 );
setScaleKey( spep_1-3 + 94, 1, 0.9, 0.9 );
setScaleKey( spep_1-3 + 96, 1, 0.85, 0.85 );
setScaleKey( spep_1-3 + 98, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 100, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 102, 1, 0.77, 0.77 );
setScaleKey( spep_1-3 + 104, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 109, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 110, 1, 5.17, 5.17 );
setScaleKey( spep_1-3 + 112, 1, 4.41, 4.41 );
setScaleKey( spep_1-3 + 114, 1, 3.74, 3.74 );
setScaleKey( spep_1-3 + 116, 1, 3.16, 3.16 );
setScaleKey( spep_1-3 + 118, 1, 2.67, 2.67 );
setScaleKey( spep_1-3 + 120, 1, 2.26, 2.26 );
setScaleKey( spep_1-3 + 122, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 124, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 126, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 129, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 130, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 132, 1, 1.98, 1.98 );
setScaleKey( spep_1-3 + 134, 1, 1.87, 1.87 );
setScaleKey( spep_1-3 + 136, 1, 2.19, 2.19 );
setScaleKey( spep_1-3 + 138, 1, 2.01, 2.01 );
setScaleKey( spep_1-3 + 140, 1, 2.19, 2.19 );
setScaleKey( spep_1-3 + 142, 1, 2.37, 2.37 );
setScaleKey( spep_1-3 + 144, 1, 2.26, 2.26 );
setScaleKey( spep_1-3 + 146, 1, 2.14, 2.14 );
setScaleKey( spep_1-3 + 148, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 150, 1, 0.97, 0.97 );
setScaleKey( spep_1-3 + 152, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 154, 1, 2.39, 2.39 );
setScaleKey( spep_1-3 + 156, 1, 4.25, 4.25 );
setScaleKey( spep_1-3 + 158, 1, 5.12, 5.12 );
setScaleKey( spep_1-3 + 160, 1, 5.47, 5.47 );
setScaleKey( spep_1-3 + 163, 1, 5.56, 5.56 );

setScaleKey( spep_1-3 + 184, 1, 1.07, 1.07 );
setScaleKey( spep_1-3 + 186, 1, 1.06, 1.06 );
setScaleKey( spep_1-3 + 188, 1, 1.08, 1.08 );
setScaleKey( spep_1-3 + 190, 1, 1.11, 1.11 );
setScaleKey( spep_1-3 + 192, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 194, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 196, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 198, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 200, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 203, 1, 1.52, 1.52 );

setScaleKey( spep_1-3 + 204, 1, 2.9, 2.9 );
setScaleKey( spep_1-3 + 224, 1, 2.9, 2.9 );
setScaleKey( spep_1-3 + 226, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 228, 1, 2.15, 2.15 );
setScaleKey( spep_1-3 + 230, 1, 2.11, 2.11 );
setScaleKey( spep_1-3 + 232, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 234, 1, 2, 2 );
setScaleKey( spep_1-3 + 236, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 238, 1, 1.9, 1.9 );
setScaleKey( spep_1-3 + 240, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 242, 1, 1.83, 1.83 );
setScaleKey( spep_1-3 + 244, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 246, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 248, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 250, 1, 1.61, 1.61 );

setScaleKey( spep_1-3 + 252, 1, 1.91, 1.91 );
setScaleKey( spep_1-3 + 254, 1, 2.03, 2.03 );
setScaleKey( spep_1-3 + 256, 1, 2.24, 2.24 );
setScaleKey( spep_1-3 + 258, 1, 2.45, 2.45 );
setScaleKey( spep_1-3 + 260, 1, 2.64, 2.64 );
setScaleKey( spep_1-3 + 262, 1, 2.77, 2.77 );
setScaleKey( spep_1-3 + 272, 1, 2.87, 2.87 );

setScaleKey( spep_1-3 + 274, 1, 6.43, 6.43 );
setScaleKey( spep_1-3 + 276, 1, 5.03, 5.03 );
setScaleKey( spep_1-3 + 278, 1, 2.4, 2.4 );
setScaleKey( spep_1-3 + 280, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 282, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 284, 1, 0.68, 0.68 );
setScaleKey( spep_1-3 + 286, 1, 0.47, 0.47 );
setScaleKey( spep_1-3 + 288, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 290, 1, 0.23, 0.23 );
setScaleKey( spep_1-3 + 292, 1, 0.17, 0.17 );
setScaleKey( spep_1-3 + 294, 1, 0.12, 0.12 );
setScaleKey( spep_1-3 + 296, 1, 0.09, 0.09 );
setScaleKey( spep_1-3 + 298, 1, 0.07, 0.07 );
setScaleKey( spep_1-3 + 300, 1, 0.06, 0.06 );
setScaleKey( spep_1-3 + 302, 1, 0.05, 0.05 );
setScaleKey( spep_1-3 + 304, 1, 0.04, 0.04 );
setScaleKey( spep_1-3 + 306, 1, 0.04, 0.04 );
setScaleKey( spep_1-3 + 308, 1, 0.03, 0.03 );
setScaleKey( spep_1-3 + 354, 1, 0.03, 0.03 );

setRotateKey( spep_1-3 + 57, 1, -30.6 );
setRotateKey( spep_1-3 + 58, 1, -22 );
setRotateKey( spep_1-3 + 60, 1, -22.2 );
setRotateKey( spep_1-3 + 62, 1, -22.3 );
setRotateKey( spep_1-3 + 64, 1, -22.5 );
setRotateKey( spep_1-3 + 66, 1, -22.7 );
setRotateKey( spep_1-3 + 68, 1, -22.8 );
setRotateKey( spep_1-3 + 70, 1, -23 );
setRotateKey( spep_1-3 + 72, 1, -23.2 );
setRotateKey( spep_1-3 + 74, 1, -23.3 );
setRotateKey( spep_1-3 + 76, 1, -23.5 );
setRotateKey( spep_1-3 + 78, 1, -23.7 );
setRotateKey( spep_1-3 + 80, 1, -23.8 );
setRotateKey( spep_1-3 + 82, 1, -24 );
setRotateKey( spep_1-3 + 109, 1, -24 );
setRotateKey( spep_1-3 + 110, 1, 56.2 );
setRotateKey( spep_1-3 + 129, 1, 56.2 );
setRotateKey( spep_1-3 + 130, 1, -21.5 );
setRotateKey( spep_1-3 + 152, 1, -21.5 );
setRotateKey( spep_1-3 + 154, 1, -21.4 );
setRotateKey( spep_1-3 + 156, 1, -21.4 );
setRotateKey( spep_1-3 + 158, 1, -21.3 );
setRotateKey( spep_1-3 + 163, 1, -21.3 );
setRotateKey( spep_1-3 + 183, 1, -21.3 );

setRotateKey( spep_1-3 + 184, 1, -62.7 );
setRotateKey( spep_1-3 + 190, 1, -62.7 );
setRotateKey( spep_1-3 + 192, 1, -62.6 );
setRotateKey( spep_1-3 + 194, 1, -62.7 );
setRotateKey( spep_1-3 + 202, 1, -62.7 );
setRotateKey( spep_1-3 + 203, 1, -62.7 );
setRotateKey( spep_1-3 + 204, 1, -87.3 );
setRotateKey( spep_1-3 + 206, 1, -87.2 );
setRotateKey( spep_1-3 + 208, 1, -87.2 );
setRotateKey( spep_1-3 + 210, 1, -87.1 );
setRotateKey( spep_1-3 + 214, 1, -87.1 );
setRotateKey( spep_1-3 + 216, 1, -87 );
setRotateKey( spep_1-3 + 224, 1, -87 );
setRotateKey( spep_1-3 + 226, 1, -86.9 );
setRotateKey( spep_1-3 + 228, 1, -86.9 );
setRotateKey( spep_1-3 + 230, 1, -86.7 );
setRotateKey( spep_1-3 + 232, 1, -86.5 );
setRotateKey( spep_1-3 + 234, 1, -86.2 );
setRotateKey( spep_1-3 + 236, 1, -85.8 );
setRotateKey( spep_1-3 + 238, 1, -85.4 );
setRotateKey( spep_1-3 + 240, 1, -85.1 );
setRotateKey( spep_1-3 + 242, 1, -84.8 );
setRotateKey( spep_1-3 + 244, 1, -84.5 );
setRotateKey( spep_1-3 + 246, 1, -84.3 );
setRotateKey( spep_1-3 + 248, 1, -84.2 );
setRotateKey( spep_1-3 + 251, 1, -84.1 );

setRotateKey( spep_1-3 + 252, 1, -163.1 );
setRotateKey( spep_1-3 + 272, 1, -163.1 );

setRotateKey( spep_1-3 + 274, 1, -197 );
setRotateKey( spep_1-3 + 354, 1, -197 );


--文字エントリー
ctzuo1 = entryEffectLife( spep_1 -3 + 58,  10016, 22, 0x100, -1, 0, 127.1, 314 );--ズオッ

setEffMoveKey( spep_1 -3 + 58, ctzuo1, 127.1, 314 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctzuo1, 119.9, 388.8 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctzuo1, 115.5, 433.5 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctzuo1, 114, 448.4 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctzuo1, 113.5, 449.8 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctzuo1, 113.1, 451.2 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctzuo1, 112.6, 452.6 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctzuo1, 112.1, 454 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctzuo1, 111.6, 455.4 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctzuo1, 110.3, 459 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctzuo1, 109, 462.5 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctzuo1, 107.7, 466 , 0 );

setEffScaleKey( spep_1 -3 + 58, ctzuo1, 1, 1 );
setEffScaleKey( spep_1 -3 + 60, ctzuo1, 2.11, 2.11 );
setEffScaleKey( spep_1 -3 + 62, ctzuo1, 2.77, 2.77 );
setEffScaleKey( spep_1 -3 + 64, ctzuo1, 2.99, 2.99 );
setEffScaleKey( spep_1 -3 + 66, ctzuo1, 3.01, 3.01 );
setEffScaleKey( spep_1 -3 + 68, ctzuo1, 3.02, 3.02 );
setEffScaleKey( spep_1 -3 + 70, ctzuo1, 3.04, 3.04 );
setEffScaleKey( spep_1 -3 + 72, ctzuo1, 3.05, 3.05 );
setEffScaleKey( spep_1 -3 + 74, ctzuo1, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 76, ctzuo1, 3.11, 3.11 );
setEffScaleKey( spep_1 -3 + 78, ctzuo1, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 80, ctzuo1, 3.19, 3.19 );

setEffRotateKey( spep_1 -3 + 58, ctzuo1, -2.1 );
setEffRotateKey( spep_1 -3 + 80, ctzuo1, -2.1 );

setEffAlphaKey( spep_1 -3 + 58, ctzuo1, 255 );
setEffAlphaKey( spep_1 -3 + 74, ctzuo1, 255 );
setEffAlphaKey( spep_1 -3 + 76, ctzuo1, 170 );
setEffAlphaKey( spep_1 -3 + 78, ctzuo1, 85 );
setEffAlphaKey( spep_1 -3 + 80, ctzuo1, 0 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_1 -3 + 204,  10016, 22, 0x100, -1, 0, -6.4, 268.1 );--ズンッ

setEffMoveKey( spep_1 -3 + 204, ctzuo2, -6.4, 268.1 , 0 );
setEffMoveKey( spep_1 -3 + 206, ctzuo2, -19.3, 342.1 , 0 );
setEffMoveKey( spep_1 -3 + 208, ctzuo2, -27, 386.4 , 0 );
setEffMoveKey( spep_1 -3 + 210, ctzuo2, -29.6, 401.2 , 0 );
setEffMoveKey( spep_1 -3 + 212, ctzuo2, -30.2, 402.5 , 0 );
setEffMoveKey( spep_1 -3 + 214, ctzuo2, -30.8, 403.9 , 0 );
setEffMoveKey( spep_1 -3 + 216, ctzuo2, -31.4, 405.2 , 0 );
setEffMoveKey( spep_1 -3 + 218, ctzuo2, -32, 406.6 , 0 );
setEffMoveKey( spep_1 -3 + 220, ctzuo2, -32.6, 408 , 0 );
setEffMoveKey( spep_1 -3 + 222, ctzuo2, -34.1, 411.3 , 0 );
setEffMoveKey( spep_1 -3 + 224, ctzuo2, -35.7, 414.7 , 0 );
setEffMoveKey( spep_1 -3 + 226, ctzuo2, -37.2, 418.1 , 0 );

setEffScaleKey( spep_1 -3 + 204, ctzuo2, 1, 1 );
setEffScaleKey( spep_1 -3 + 206, ctzuo2, 2.11, 2.11 );
setEffScaleKey( spep_1 -3 + 208, ctzuo2, 2.77, 2.77 );
setEffScaleKey( spep_1 -3 + 210, ctzuo2, 2.99, 2.99 );
setEffScaleKey( spep_1 -3 + 212, ctzuo2, 3.01, 3.01 );
setEffScaleKey( spep_1 -3 + 214, ctzuo2, 3.02, 3.02 );
setEffScaleKey( spep_1 -3 + 216, ctzuo2, 3.04, 3.04 );
setEffScaleKey( spep_1 -3 + 218, ctzuo2, 3.05, 3.05 );
setEffScaleKey( spep_1 -3 + 220, ctzuo2, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 222, ctzuo2, 3.11, 3.11 );
setEffScaleKey( spep_1 -3 + 224, ctzuo2, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 226, ctzuo2, 3.19, 3.19 );

setEffRotateKey( spep_1 -3 + 204, ctzuo2, -6.5 );
setEffRotateKey( spep_1 -3 + 226, ctzuo2, -6.5 );

setEffAlphaKey( spep_1 -3 + 204, ctzuo2, 255 );
setEffAlphaKey( spep_1 -3 + 220, ctzuo2, 255 );
setEffAlphaKey( spep_1 -3 + 222, ctzuo2, 170 );
setEffAlphaKey( spep_1 -3 + 224, ctzuo2, 85 );
setEffAlphaKey( spep_1 -3 + 226, ctzuo2, 0 );

--文字エントリー
ctsyun = entryEffectLife( spep_1 -3 + 94,  10011, 14, 0x100, -1, 0, -198.8, 9.7 );--シュンッ

setEffMoveKey( spep_1 -3 + 94, ctsyun, -198.8, 9.7 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctsyun, -203.9, 16.1 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctsyun, -206.9, 19.9 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctsyun, -207.9, 21.2 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctsyun, -207.9, 21.2 , 0 );

setEffScaleKey( spep_1 -3 + 94, ctsyun, 0.6, 0.6 );
setEffScaleKey( spep_1 -3 + 96, ctsyun, 0.92, 0.92 );
setEffScaleKey( spep_1 -3 + 98, ctsyun, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 100, ctsyun, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 102, ctsyun, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 104, ctsyun, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 106, ctsyun, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 108, ctsyun, 1.31, 1.31 );

setEffRotateKey( spep_1 -3 + 94, ctsyun, -5 );
setEffRotateKey( spep_1 -3 + 108, ctsyun, -5 );

setEffAlphaKey( spep_1 -3 + 94, ctsyun, 255 );
setEffAlphaKey( spep_1 -3 + 100, ctsyun, 255 );
setEffAlphaKey( spep_1 -3 + 102, ctsyun, 239 );
setEffAlphaKey( spep_1 -3 + 104, ctsyun, 191 );
setEffAlphaKey( spep_1 -3 + 106, ctsyun, 112 );
setEffAlphaKey( spep_1 -3 + 108, ctsyun, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_1 -3 + 130,  10021, 22, 0x100, -1, 0, -63.5, 259.4 );--バゴォッ

setEffMoveKey( spep_1 -3 + 130, ctbago, -63.5, 259.4 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctbago, -100.1, 287.7 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctbago, -109.4, 310.4 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctbago, -114.8, 300.7 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctbago, -111.4, 322.1 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctbago, -120.5, 309.5 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctbago, -109.6, 316.7 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctbago, -129.6, 316 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctbago, -124, 319.8 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctbago, -128.7, 310.4 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctbago, -127, 339.3 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctbago, -134.5, 352.6 , 0 );

setEffScaleKey( spep_1 -3 + 130, ctbago, 1.88, 1.88 );
setEffScaleKey( spep_1 -3 + 132, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_1 -3 + 134, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_1 -3 + 136, ctbago, 2.56, 2.56 );
setEffScaleKey( spep_1 -3 + 138, ctbago, 2.59, 2.59 );
setEffScaleKey( spep_1 -3 + 140, ctbago, 2.62, 2.62 );
setEffScaleKey( spep_1 -3 + 142, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_1 -3 + 144, ctbago, 2.67, 2.67 );
setEffScaleKey( spep_1 -3 + 146, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_1 -3 + 148, ctbago, 2.73, 2.73 );
setEffScaleKey( spep_1 -3 + 150, ctbago, 2.82, 2.82 );
setEffScaleKey( spep_1 -3 + 152, ctbago, 2.96, 2.96 );

setEffRotateKey( spep_1 -3 + 130, ctbago, -31.4 );
setEffRotateKey( spep_1 -3 + 132, ctbago, -34.3 );
setEffRotateKey( spep_1 -3 + 134, ctbago, -35.3 );
setEffRotateKey( spep_1 -3 + 152, ctbago, -35.3 );

setEffAlphaKey( spep_1 -3 + 130, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 146, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 148, ctbago, 227 );
setEffAlphaKey( spep_1 -3 + 150, ctbago, 142 );
setEffAlphaKey( spep_1 -3 + 152, ctbago, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 -3 + 252,  10020, 14, 0x100, -1, 0, -104.6, 333.1 );--バキッ

setEffMoveKey( spep_1 -3 + 252, ctbaki, -104.6, 333.1 , 0 );
setEffMoveKey( spep_1 -3 + 254, ctbaki, -119.4, 342.1 , 0 );
setEffMoveKey( spep_1 -3 + 256, ctbaki, -117.4, 343.9 , 0 );
setEffMoveKey( spep_1 -3 + 258, ctbaki, -134.7, 354.4 , 0 );
setEffMoveKey( spep_1 -3 + 260, ctbaki, -127.4, 352.4 , 0 );
setEffMoveKey( spep_1 -3 + 262, ctbaki, -138.3, 361 , 0 );
setEffMoveKey( spep_1 -3 + 264, ctbaki, -138.9, 378.2 , 0 );
setEffMoveKey( spep_1 -3 + 266, ctbaki, -137.2, 383.6 , 0 );

setEffScaleKey( spep_1 -3 + 252, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 -3 + 254, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 256, ctbaki, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 258, ctbaki, 2.21, 2.21 );
setEffScaleKey( spep_1 -3 + 260, ctbaki, 2.29, 2.29 );
setEffScaleKey( spep_1 -3 + 262, ctbaki, 2.32, 2.32 );
setEffScaleKey( spep_1 -3 + 264, ctbaki, 2.62, 2.62 );
setEffScaleKey( spep_1 -3 + 266, ctbaki, 2.72, 2.72 );

setEffRotateKey( spep_1 -3 + 252, ctbaki, -17.2 );
setEffRotateKey( spep_1 -3 + 266, ctbaki, -17.2 );

setEffAlphaKey( spep_1 -3 + 252, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 262, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 264, ctbaki, 64 );
setEffAlphaKey( spep_1 -3 + 266, ctbaki, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1 -3 + 318,  10018, 52, 0x100, -1, 0, -16.7, 360.9 );--ドゴォンッ

setEffMoveKey( spep_1 -3 + 318, ctdogon, -16.7, 360.9 , 0 );
setEffMoveKey( spep_1 -3 + 320, ctdogon, -19.1, 375.9 , 0 );
setEffMoveKey( spep_1 -3 + 322, ctdogon, -15.1, 396.7 , 0 );
setEffMoveKey( spep_1 -3 + 324, ctdogon, -15.3, 396.8 , 0 );
setEffMoveKey( spep_1 -3 + 326, ctdogon, -18.4, 393.2 , 0 );
setEffMoveKey( spep_1 -3 + 328, ctdogon, -14.4, 404 , 0 );
setEffMoveKey( spep_1 -3 + 330, ctdogon, -13.2, 398.1 , 0 );
setEffMoveKey( spep_1 -3 + 332, ctdogon, -18.3, 403.6 , 0 );
setEffMoveKey( spep_1 -3 + 334, ctdogon, -9.6, 403.8 , 0 );
setEffMoveKey( spep_1 -3 + 336, ctdogon, -17.2, 402.3 , 0 );
setEffMoveKey( spep_1 -3 + 338, ctdogon, -13.6, 406.5 , 0 );
setEffMoveKey( spep_1 -3 + 340, ctdogon, -16.9, 402 , 0 );
setEffMoveKey( spep_1 -3 + 342, ctdogon, -12.9, 412.7 , 0 );
setEffMoveKey( spep_1 -3 + 344, ctdogon, -11.7, 405.9 , 0 );
setEffMoveKey( spep_1 -3 + 346, ctdogon, -17.2, 410.9 , 0 );
setEffMoveKey( spep_1 -3 + 348, ctdogon, -8.3, 410.5 , 0 );
setEffMoveKey( spep_1 -3 + 350, ctdogon, -16.3, 408.4 , 0 );
setEffMoveKey( spep_1 -3 + 352, ctdogon, -12.6, 412.1 , 0 );
setEffMoveKey( spep_1 -3 + 354, ctdogon, -16.1, 406.9 , 0 );
setEffMoveKey( spep_1 -3 + 356, ctdogon, -12.1, 417.1 , 0 );
setEffMoveKey( spep_1 -3 + 358, ctdogon, -11, 409.6 , 0 );
setEffMoveKey( spep_1 -3 + 360, ctdogon, -16.7, 414.1 , 0 );
setEffMoveKey( spep_1 -3 + 362, ctdogon, -7.8, 413.1 , 0 );
setEffMoveKey( spep_1 -3 + 364, ctdogon, -12.4, 413.6 , 0 );
setEffMoveKey( spep_1 -3 + 366, ctdogon, -17.8, 411.6 , 0 );
setEffMoveKey( spep_1 -3 + 368, ctdogon, -15.3, 425.5 , 0 );
setEffMoveKey( spep_1 -3 + 370, ctdogon, -15.7, 420.4 , 0 );
--setEffMoveKey( spep_1 -3 + 372, ctdogon, -23.3, 428.2 , 0 );
--setEffMoveKey( spep_1 -3 + 374, ctdogon, -14.7, 429.7 , 0 );
--setEffMoveKey( spep_1 -3 + 376, ctdogon, -25.1, 429 , 0 );
--setEffMoveKey( spep_1 -3 + 378, ctdogon, -22, 434.9 , 0 );
--setEffMoveKey( spep_1 -3 + 380, ctdogon, -27.2, 430.3 , 0 );
--setEffMoveKey( spep_1 -3 + 382, ctdogon, -23.2, 443.7 , 0 );
--setEffMoveKey( spep_1 -3 + 384, ctdogon, -22.7, 435.8 , 0 );
--setEffMoveKey( spep_1 -3 + 386, ctdogon, -30, 442.2 , 0 );
--setEffMoveKey( spep_1 -3 + 388, ctdogon, -19.7, 441.7 , 0 );
--setEffMoveKey( spep_1 -3 + 390, ctdogon, -30, 439 , 0 );
--setEffMoveKey( spep_1 -3 + 392, ctdogon, -25.8, 443.3 , 0 );
--setEffMoveKey( spep_1 -3 + 394, ctdogon, -25.9, 443.4 , 0 );

setEffScaleKey( spep_1 -3 + 318, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_1 -3 + 320, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_1 -3 + 322, ctdogon, 3.24, 3.24 );
setEffScaleKey( spep_1 -3 + 324, ctdogon, 3.27, 3.27 );
setEffScaleKey( spep_1 -3 + 326, ctdogon, 3.3, 3.3 );
setEffScaleKey( spep_1 -3 + 328, ctdogon, 3.33, 3.33 );
setEffScaleKey( spep_1 -3 + 330, ctdogon, 3.35, 3.35 );
setEffScaleKey( spep_1 -3 + 332, ctdogon, 3.37, 3.37 );
setEffScaleKey( spep_1 -3 + 334, ctdogon, 3.4, 3.4 );
setEffScaleKey( spep_1 -3 + 336, ctdogon, 3.42, 3.42 );
setEffScaleKey( spep_1 -3 + 338, ctdogon, 3.44, 3.44 );
setEffScaleKey( spep_1 -3 + 340, ctdogon, 3.46, 3.46 );
setEffScaleKey( spep_1 -3 + 342, ctdogon, 3.47, 3.47 );
setEffScaleKey( spep_1 -3 + 344, ctdogon, 3.49, 3.49 );
setEffScaleKey( spep_1 -3 + 346, ctdogon, 3.5, 3.5 );
setEffScaleKey( spep_1 -3 + 348, ctdogon, 3.51, 3.51 );
setEffScaleKey( spep_1 -3 + 350, ctdogon, 3.52, 3.52 );
setEffScaleKey( spep_1 -3 + 352, ctdogon, 3.53, 3.53 );
setEffScaleKey( spep_1 -3 + 354, ctdogon, 3.54, 3.54 );
setEffScaleKey( spep_1 -3 + 356, ctdogon, 3.55, 3.55 );
setEffScaleKey( spep_1 -3 + 358, ctdogon, 3.55, 3.55 );
setEffScaleKey( spep_1 -3 + 360, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_1 -3 + 364, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_1 -3 + 366, ctdogon, 3.66, 3.66 );
setEffScaleKey( spep_1 -3 + 368, ctdogon, 3.76, 3.76 );
setEffScaleKey( spep_1 -3 + 370, ctdogon, 3.84, 3.84 );
--setEffScaleKey( spep_1 -3 + 372, ctdogon, 3.93, 3.93 );
--setEffScaleKey( spep_1 -3 + 374, ctdogon, 4, 4 );
--setEffScaleKey( spep_1 -3 + 376, ctdogon, 4.07, 4.07 );
--setEffScaleKey( spep_1 -3 + 378, ctdogon, 4.13, 4.13 );
--setEffScaleKey( spep_1 -3 + 380, ctdogon, 4.18, 4.18 );
--setEffScaleKey( spep_1 -3 + 382, ctdogon, 4.22, 4.22 );
--setEffScaleKey( spep_1 -3 + 384, ctdogon, 4.26, 4.26 );
--setEffScaleKey( spep_1 -3 + 386, ctdogon, 4.29, 4.29 );
--setEffScaleKey( spep_1 -3 + 388, ctdogon, 4.32, 4.32 );
--setEffScaleKey( spep_1 -3 + 390, ctdogon, 4.34, 4.34 );
--setEffScaleKey( spep_1 -3 + 392, ctdogon, 4.35, 4.35 );
--setEffScaleKey( spep_1 -3 + 394, ctdogon, 4.35, 4.35 );

setEffRotateKey( spep_1 -3 + 318, ctdogon, 0.5 );
setEffRotateKey( spep_1 -3 + 370, ctdogon, 0.5 );

setEffAlphaKey( spep_1 -3 + 318, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 352, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 354, ctdogon, 222 );
setEffAlphaKey( spep_1 -3 + 356, ctdogon, 192 );
setEffAlphaKey( spep_1 -3 + 358, ctdogon, 163 );
setEffAlphaKey( spep_1 -3 + 360, ctdogon, 137 );
setEffAlphaKey( spep_1 -3 + 362, ctdogon, 113 );
setEffAlphaKey( spep_1 -3 + 364, ctdogon, 92 );
setEffAlphaKey( spep_1 -3 + 366, ctdogon, 73 );
setEffAlphaKey( spep_1 -3 + 368, ctdogon, 56 );
setEffAlphaKey( spep_1 -3 + 360, ctdogon, 41 );
setEffAlphaKey( spep_1 -3 + 362, ctdogon, 28 );
setEffAlphaKey( spep_1 -3 + 364, ctdogon, 18 );
setEffAlphaKey( spep_1 -3 + 366, ctdogon, 10 );
setEffAlphaKey( spep_1 -3 + 368, ctdogon, 5 );
setEffAlphaKey( spep_1 -3 + 369, ctdogon, 1 );
setEffAlphaKey( spep_1 -3 + 370, ctdogon, 0 );

--文字エントリー
ctsyun2 = entryEffectLife( spep_1 -3 + 170,  10011, 12, 0x100, -1, 0, 43, 371.5 );

setEffMoveKey( spep_1 -3 + 170, ctsyun2, 43, 371.5 , 0 );
setEffMoveKey( spep_1 -3 + 172, ctsyun2, 36.9, 376.8 , 0 );
setEffMoveKey( spep_1 -3 + 174, ctsyun2, 33.2, 380.1 , 0 );
setEffMoveKey( spep_1 -3 + 176, ctsyun2, 32, 381.2 , 0 );
setEffMoveKey( spep_1 -3 + 180, ctsyun2, 32, 381.2 , 0 );
setEffMoveKey( spep_1 -3 + 182, ctsyun2, 32.1, 381.2 , 0 );

setEffScaleKey( spep_1 -3 + 170, ctsyun2, 0.6, 0.6 );
setEffScaleKey( spep_1 -3 + 172, ctsyun2, 0.92, 0.92 );
setEffScaleKey( spep_1 -3 + 174, ctsyun2, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 176, ctsyun2, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 178, ctsyun2, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 180, ctsyun2, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 182, ctsyun2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 184, ctsyun2, 1.31, 1.31 );

setEffRotateKey( spep_1 -3 + 170, ctsyun2, -15.5 );
setEffRotateKey( spep_1 -3 + 184, ctsyun2, -15.5 );

setEffAlphaKey( spep_1 -3 + 170, ctsyun2, 255 );
setEffAlphaKey( spep_1 -3 + 176, ctsyun2, 255 );
setEffAlphaKey( spep_1 -3 + 178, ctsyun2, 239 );
setEffAlphaKey( spep_1 -3 + 180, ctsyun2, 191 );
setEffAlphaKey( spep_1 -3 + 182, ctsyun2, 112 );
setEffAlphaKey( spep_1 -3 + 184, ctsyun2, 0 );



syuchusen3 = entryEffectLife( spep_1-1+272,  906, 144, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1-1+272, syuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1-1+272+144, syuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_1-1+272, syuchusen3, 1.02, 1.08 );
setEffScaleKey( spep_1-1+272+144, syuchusen3, 1.02, 1.08 );
setEffAlphaKey( spep_1-1+272, syuchusen3, 255 );
setEffAlphaKey( spep_1-1+272+144, syuchusen3, 255 );

stopSe(spep_1+34,SE1,0);
playSe(spep_1+36,1018);
playSe(spep_1+56,1011);
playSe(spep_1+92,43);
playSe(spep_1+128,1010);
playSe(spep_1+168,43);
playSe(spep_1+202,1011);
setSeVolume(spep_1+202,1011,150);
playSe(spep_1+250,1010);
setSeVolume(spep_1+250,1010,150);
playSe(spep_1+272,44);
playSe(spep_1+316,1023);

--白フェード
--entryFade( spep_1 + 472, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+366;
------------------------------------------------------
--見下ろす
------------------------------------------------------
--エフェクト
overlook=entryEffectLife(spep_2,SP_04,110,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, overlook, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, overlook, 0, 0 , 0 );

setEffScaleKey(spep_2,overlook,1.0,1.0);
setEffScaleKey(spep_2+110,overlook,1.0,1.0);

setEffRotateKey(spep_2,overlook,0);
setEffRotateKey(spep_2+110,overlook,0);

setEffAlphaKey(spep_2,overlook,255);
setEffAlphaKey(spep_2+110,overlook,255);

--***カットイン***32
speff = entryEffect(  spep_2+16,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+16,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 +28, 190006, 74, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 +28,  ctgogo,  0,  530);
setEffMoveKey(  spep_2 +4+98,  ctgogo,  0,  530);

setEffAlphaKey( spep_2  + 28, ctgogo, 0 );
setEffAlphaKey( spep_2  + 29, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 30, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 81, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 90, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 92, ctgogo, 191 );
setEffAlphaKey( spep_2 +4 + 94, ctgogo, 128 );
setEffAlphaKey( spep_2 +4 + 96, ctgogo, 64 );
setEffAlphaKey( spep_2 +4 + 98, ctgogo, 0 );

setEffRotateKey(  spep_2 +28,  ctgogo,  0);
setEffRotateKey(  spep_2 +4+98,  ctgogo,  0);

setEffScaleKey(  spep_2 +28,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +4+82,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_2 +4 + 98, ctgogo, 1.07, 1.07 );

--集中線
shuchusen4 = entryEffectLife( spep_2 + 0,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 108, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen4, 1.16, 1.16 );
setEffScaleKey( spep_2 + 108, shuchusen4, 1.16, 1.16 );

setEffRotateKey( spep_2 + 0, shuchusen4, 180 );
setEffRotateKey( spep_2 + 108, shuchusen4, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 108, shuchusen4, 255 );

--SE
playSe(spep_2+16,1018);

-- ** エフェクト等 ** --
entryFade(spep_2+98, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 110, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_3=spep_2+110;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;
--------------------------------------
--発射
--------------------------------------
--エフェクト
bim=entryEffectLife(spep_4,SP_05,80,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, bim, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, bim, 0, 0 , 0 );

setEffScaleKey(spep_4,bim,1.0,1.0);
setEffScaleKey(spep_4+80,bim,1.0,1.0);

setEffRotateKey(spep_4,bim,0);
setEffRotateKey(spep_4+80,bim,0);

setEffAlphaKey(spep_4,bim,255);
setEffAlphaKey(spep_4+80,bim,255);

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 0,  10012, 8320, 0x100, -1, 0, -83.7, -43.4 );--ズオッ

setEffMoveKey( spep_4 + 0, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 2, ctzuo, -78.1, -45.9 , 0 );
setEffMoveKey( spep_4 + 4, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 6, ctzuo, -72.9, -48.2 , 0 );
setEffMoveKey( spep_4 + 8, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 10, ctzuo, -72.2, -48.6 , 0 );
setEffMoveKey( spep_4 + 12, ctzuo, -83.8, -43.4 , 0 );
setEffMoveKey( spep_4 + 14, ctzuo, -71.4, -49 , 0 );
setEffMoveKey( spep_4 + 16, ctzuo, -83.8, -43.5 , 0 );
setEffMoveKey( spep_4 + 18, ctzuo, -70.7, -49.3 , 0 );
setEffMoveKey( spep_4 + 20, ctzuo, -83.8, -43.4 , 0 );
setEffMoveKey( spep_4 + 22, ctzuo, -70, -49.6 , 0 );
setEffMoveKey( spep_4 + 24, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo, -68.8, -50.1 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo, -83.7, -43.5 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo, -67.3, -50.8 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo, -66.6, -51.1 , 0 );

setEffScaleKey( spep_4 + 0, ctzuo, 0.43, 0.43 );
setEffScaleKey( spep_4 + 2, ctzuo, 0.82, 0.82 );
setEffScaleKey( spep_4 + 4, ctzuo, 1.2, 1.2 );
setEffScaleKey( spep_4 + 6, ctzuo, 1.59, 1.59 );
setEffScaleKey( spep_4 + 8, ctzuo, 1.65, 1.65 );
setEffScaleKey( spep_4 + 10, ctzuo, 1.7, 1.7 );
setEffScaleKey( spep_4 + 12, ctzuo, 1.76, 1.76 );
setEffScaleKey( spep_4 + 14, ctzuo, 1.81, 1.81 );
setEffScaleKey( spep_4 + 16, ctzuo, 1.87, 1.87 );
setEffScaleKey( spep_4 + 18, ctzuo, 1.92, 1.92 );
setEffScaleKey( spep_4 + 20, ctzuo, 1.98, 1.98 );
setEffScaleKey( spep_4 + 22, ctzuo, 2.03, 2.03 );
setEffScaleKey( spep_4 + 24, ctzuo, 2.09, 2.09 );
setEffScaleKey( spep_4 + 26, ctzuo, 2.2, 2.2 );
setEffScaleKey( spep_4 + 28, ctzuo, 2.31, 2.31 );
setEffScaleKey( spep_4 + 30, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_4 + 32, ctzuo, 2.53, 2.53 );

setEffRotateKey( spep_4 + 0, ctzuo, -23.5 );
setEffRotateKey( spep_4 + 2, ctzuo, -23.6 );
setEffRotateKey( spep_4 + 32, ctzuo, -23.6 );

setEffAlphaKey( spep_4 + 0, ctzuo, 255 );
setEffAlphaKey( spep_4 + 24, ctzuo, 255 );
setEffAlphaKey( spep_4 + 26, ctzuo, 191 );
setEffAlphaKey( spep_4 + 28, ctzuo, 128 );
setEffAlphaKey( spep_4 + 30, ctzuo, 64 );
setEffAlphaKey( spep_4 + 32, ctzuo, 0 );

--流線
ryusen3 = entryEffectLife( spep_4 + 0,  906, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen3, 0, 400 , 0 );
setEffMoveKey( spep_4 + 80, ryusen3, 0, 400 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 2.49, 0.88 );
setEffScaleKey( spep_4 + 80, ryusen3, 2.49, 0.88 );

setEffRotateKey( spep_4 + 0, ryusen3, 90 );
setEffRotateKey( spep_4 + 80, ryusen3, 90 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 80, ryusen3, 255 );

--SE
playSe(spep_4,1022);

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+72, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+80;

--------------------------------------
--当たる
--------------------------------------
--エフェクト
hit=entryEffectLife(spep_5,SP_06,70,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, hit, 0, 0 , 0 );

setEffScaleKey(spep_5,hit,1.0,1.0);
setEffScaleKey(spep_5+70,hit,1.0,1.0);

setEffRotateKey(spep_5,hit,0);
setEffRotateKey(spep_5+70,hit,0);

setEffAlphaKey(spep_5,hit,255);
setEffAlphaKey(spep_5+70,hit,255);

--集中線
shuchusen5 = entryEffectLife( spep_5 + 0,  906, 68, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 68, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen5, 1.66, 1.94 );
setEffScaleKey( spep_5 + 68, shuchusen5, 1.66, 1.94 );

setEffRotateKey( spep_5 + 0, shuchusen5, 180 );
setEffRotateKey( spep_5 + 68, shuchusen5, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 68, shuchusen5, 255 );

--SE
playSe(spep_5,1022);
playSe(spep_5+38,1067);

-- ** エフェクト等 ** --
entryFade(spep_5+62, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_5, 0, 70, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_6=spep_5+70;

--------------------------------------
--爆発
--------------------------------------
--エフェクト
explosion=entryEffect(spep_6,SP_07,0x80,-1,0,0,0);

setEffMoveKey( spep_6 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_6 + 200, explosion, 0, 0 , 0 );

setEffScaleKey(spep_6,explosion,1.1,1.2);
setEffScaleKey(spep_6+200,explosion,1.1,1.2);

setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+200,explosion,0);

setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+200,explosion,255);

--集中線
shuchusen6 = entryEffectLife( spep_6 + 0,  906, 200, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 200, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen6, 1.06, 1.34 );
setEffScaleKey( spep_6 + 200, shuchusen6, 1.06, 1.34 );

setEffRotateKey( spep_6 + 0, shuchusen6, 180 );
setEffRotateKey( spep_6 + 200, shuchusen6, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 200, shuchusen6, 255 );

--黒背景
entryFadeBg(spep_6, 0, 200, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(spep_6,1024);

-- ダメージ表示
dealDamage(spep_6+2);
entryFade( spep_6+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+196);

else 
------------------------------------------------------
--てき
------------------------------------------------------
------------------------------------------------------
--ため
------------------------------------------------------
spep_0=0;

--エフェクト
tame=entryEffectLife(spep_0,SP_01x,148,0x80,-1,0,0,0);

setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, tame, 0, 0 , 0 );

setEffScaleKey(spep_0,tame,1.0,1.0);
setEffScaleKey(spep_0+148,tame,1.0,1.0);

setEffRotateKey(spep_0,tame,0);
setEffRotateKey(spep_0+148,tame,0);

setEffAlphaKey(spep_0,tame,255);
setEffAlphaKey(spep_0+146,tame,255);
setEffAlphaKey(spep_0+147,tame,255);
setEffAlphaKey(spep_0+148,tame,0);

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 112,  906, 57, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 112, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 166, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 112, shuchusen1, 1.05, 1.05 );
setEffScaleKey( spep_0 + 166, shuchusen1, 1.05, 1.05 );

setEffRotateKey( spep_0 + 112, shuchusen1, 0 );
setEffRotateKey( spep_0 + 166, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 112, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 147, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 0 );


--SE
SE=playSe(spep_0,1044);
stopSe(spep_0+58,SE,0);
playSe(spep_0+66,50);
playSe(spep_0+110,1018);

--黒背景
entryFadeBg(spep_0, 0, 148, 0, 0, 0, 0, 200);  -- 黒　背

--白フェード
--entryFade( spep_0 + 158, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+148;

------------------------------------------------------
--腹パン
------------------------------------------------------
--エフェクト
harapan_f=entryEffectLife(spep_1,SP_02x,366,0x100,-1,0,0,0);

setEffMoveKey( spep_1 + 0, harapan_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 366, harapan_f, 0, 0 , 0 );

setEffScaleKey(spep_1,harapan_f,1.0,1.0);
setEffScaleKey(spep_1+366,harapan_f,1.0,1.0);

setEffRotateKey(spep_1,harapan_f,0);
setEffRotateKey(spep_1+366,harapan_f,0);

setEffAlphaKey(spep_1,harapan_f,255);
setEffAlphaKey(spep_1+364,harapan_f,255);
setEffAlphaKey(spep_1+365,harapan_f,255);
setEffAlphaKey(spep_1+366,harapan_f,0);

--***流線***
ryu1 = entryEffectLife(  spep_1,  920,  58,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffMoveKey(  spep_1,  ryu1,  0,  0);
setEffMoveKey(  spep_1-3+60,  ryu1,  0,  0);
setEffScaleKey(  spep_1,  ryu1,  8.14,  4.26);
setEffScaleKey(  spep_1-3+44,  ryu1,  8.14,  4.26);
setEffScaleKey(  spep_1-3+46,  ryu1,  2.21,  1.38);
setEffScaleKey(  spep_1-3+60,  ryu1,  2.21,  1.38);
setEffRotateKey(  spep_1,  ryu1,  -29.6);
setEffRotateKey(  spep_1-3+60,  ryu1,  -29.6);
setEffAlphaKey(  spep_1  ,ryu1,  255);
setEffAlphaKey(  spep_1-3+22,  ryu1,  255);
setEffAlphaKey(  spep_1-3+44,  ryu1,  100);
setEffAlphaKey(  spep_1-3+60,  ryu1,  0);

ryu2 = entryEffectLife(  spep_1-3,  921,  110,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffMoveKey(  spep_1-3,  ryu2,  0,  0);
setEffMoveKey(  spep_1-3+110,  ryu2,  0,  0);
setEffScaleKey(  spep_1-3,  ryu2,  1.69,  1.41);
setEffScaleKey(  spep_1-3+110,  ryu2,  1.69,  1.41);
setEffRotateKey(  spep_1-3,  ryu2,  -47.3);
setEffRotateKey(  spep_1-3+110,  ryu2,  -47.3);
setEffAlphaKey(  spep_1-3,  ryu2,  0);
setEffAlphaKey(  spep_1-3+83,  ryu2,  0);
setEffAlphaKey(  spep_1-3+84,  ryu2,  255);
setEffAlphaKey(  spep_1-3+109,  ryu2,  255);
setEffAlphaKey(  spep_1-3+110,  ryu2,  0);

ryu3 = entryEffectLife(  spep_1,  920,  274,  0x80,  -1,  0,  0,  0);  --流線斜め

setEffMoveKey(  spep_1,  ryu3,  0,  0);
setEffMoveKey(  spep_1-3+274,  ryu3,  0,  0);
setEffScaleKey(  spep_1-3,  ryu3,  3.78,  1.98);
setEffScaleKey(  spep_1-3+202,  ryu3,  3.78,  1.98);
setEffScaleKey(  spep_1-3+203,  ryu3,  2.27,  2.17);
setEffScaleKey(  spep_1-3+204,  ryu3,  2.27,  2.17);
setEffScaleKey(  spep_1-3+224,  ryu3,  2.27,  2.17);
setEffScaleKey(  spep_1-3+254,  ryu3,  3.05,  1.75);
setEffScaleKey(  spep_1-3+272,  ryu3,  3.05,  1.75);
setEffRotateKey(  spep_1,  ryu3,  -29.6);
setEffRotateKey(  spep_1-3+203,  ryu3,  -29.6);
setEffRotateKey(  spep_1-3+204,  ryu3,  -90);
setEffRotateKey(  spep_1-3+251,  ryu3,  -90);
setEffRotateKey(  spep_1-3+252,  ryu3,  -124);
setEffRotateKey(  spep_1-3+272,  ryu3,  -124);
setEffAlphaKey(  spep_1,  ryu3,  0);
setEffAlphaKey(  spep_1+179,  ryu3,  0);
setEffAlphaKey(  spep_1+180,  ryu3,  200);
setEffAlphaKey(  spep_1-3+224,  ryu3,  200);
setEffAlphaKey(  spep_1-3+234,  ryu3,  0);
setEffAlphaKey(  spep_1-3+251,  ryu3,  0);
setEffAlphaKey(  spep_1-3+253,  ryu3,  100);
setEffAlphaKey(  spep_1-3+264,  ryu3,  200);
setEffAlphaKey(  spep_1-3+272,  ryu3,  200);

--エフェクト
harapan_b=entryEffectLife(spep_1,SP_03x,366,0x80,-1,0,0,0);

setEffMoveKey( spep_1 + 0, harapan_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 366, harapan_b, 0, 0 , 0 );

setEffScaleKey(spep_1,harapan_b,1.0,1.0);
setEffScaleKey(spep_1+366,harapan_b,1.0,1.0);

setEffRotateKey(spep_1,harapan_b,0);
setEffRotateKey(spep_1+366,harapan_b,0);

setEffAlphaKey(spep_1,harapan_b,255);
setEffAlphaKey(spep_1+364,harapan_b,255);
setEffAlphaKey(spep_1+365,harapan_b,255);
setEffAlphaKey(spep_1+366,harapan_b,0);

ef_shuchu = entryEffectLife( spep_1 + 110,  906, 40, 0x80, -1, 0, 522.9, 216.6 );

setEffMoveKey( spep_1 + 110, ef_shuchu, 170.9, 224.7, 0 );
setEffMoveKey( spep_1 + 150, ef_shuchu, 170.9, 224.7 , 0 )

setEffScaleKey( spep_1 + 110, ef_shuchu, 1.6, 1.47 );
setEffScaleKey( spep_1 + 144, ef_shuchu, 1.6, 1.47 );
setEffScaleKey( spep_1 + 146, ef_shuchu, 1.96, 1.8 );
setEffScaleKey( spep_1 + 148, ef_shuchu, 2.32, 2.13 );
setEffScaleKey( spep_1 + 150, ef_shuchu, 2.68, 2.46 );

setEffRotateKey( spep_1 + 110, ef_shuchu, 0 );
setEffRotateKey( spep_1 + 150, ef_shuchu, 0 );

setEffAlphaKey( spep_1 + 110, ef_shuchu, 255 );
setEffAlphaKey( spep_1 + 150, ef_shuchu, 255 );

--てき
setDisp( spep_1 + 24, 1, 1 );
setDisp( spep_1-3 + 352, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );


--setMoveKey( spep_1 + 0, 1, 2896.1, 1673.2 , 0 );
--setMoveKey( spep_1-3 + 18, 1, 2896.1, 1673.2 , 0 );
--setMoveKey( spep_1-3 + 20, 1, 2896, 1672.7 , 0 );
--setMoveKey( spep_1-3 + 22, 1, 2837.6, 1638.9 , 0 );
--setMoveKey( spep_1-3 + 24, 1, 2600.5, 1502.2 , 0 );
setMoveKey( spep_1-3 + 26, 1, 2065.1, 1192.9 , 0 );
setMoveKey( spep_1-3 + 28, 1, 1389.9, 802.4 , 0 );
setMoveKey( spep_1-3 + 30, 1, 909, 524.7 , 0 );
setMoveKey( spep_1-3 + 32, 1, 612.3, 353 , 0 );

--setScaleKey( spep_1 + 0, 1, 3.04, 3.04 );
--setScaleKey( spep_1-3 + 20, 1, 3.04, 3.04 );
--setScaleKey( spep_1-3 + 22, 1, 2.98, 2.98 );
--setScaleKey( spep_1-3 + 24, 1, 2.75, 2.75 );
setScaleKey( spep_1-3 + 26, 1, 2.24, 2.24 );
setScaleKey( spep_1-3 + 28, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 30, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 32, 1, 0.86, 0.86 );

setRotateKey( spep_1 + 24, 1, -30.6 );
setRotateKey( spep_1 + 32, 1, -30.6 );

--黒背景
entryFadeBg(spep_1 , 0, 365, 0, 0, 0, 0, 200);  -- 黒　背


--SE
SE1=playSe(spep_1,44);


--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+30 ; --エンドフェイズのフレーム数を置き換える
    
    stopSe(SP_dodge-14,SE1,0);
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,612.3, 353 , 0 );
    setScaleKey(SP_dodge , 1, 0.86, 0.86);
    setRotateKey(SP_dodge,   1, -30.6 );
    
  --キャラクターの固定
  setMoveKey(SP_dodge+10, 1,612.3, 353 , 0 );
  setScaleKey(SP_dodge+10 , 1,0.86, 0.86);
  setRotateKey(SP_dodge+10,   1, -30.6 );
    
    setDisp(SP_dodge+9, 0, 0);
    --setDisp(SP_dodge+9, 1, 0);
    --setMoveKey(SP_dodge+9, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+9,1,0.9,0.9);
    --setRotateKey(SP_dodge+9,   1, 0);
    
    --setMoveKey(SP_dodge+10, 1, 0 , 0, 0);
    --setScaleKey(SP_dodge+10,  1 , 0.9, 0.9);
    --setRotateKey(SP_dodge+10,   1, 0);
    
    
    --悟飯を画面外に表示
    --setMoveKey(SP_dodge+8, 0, 0 , -54,   0);
    --setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    --setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
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
    changeAnime( spep_1-3 + 58, 1, 108 );
    changeAnime( spep_1-3 + 110, 1, 5 );
    changeAnime( spep_1-3 + 130, 1, 7 );
    changeAnime( spep_1-3 + 184, 1, 6 );
    changeAnime( spep_1-3 + 204, 1, 108 );
    changeAnime( spep_1-3 + 252, 1, 106 );
    changeAnime( spep_1-3 + 274, 1, 105 );

    setMoveKey( spep_1-3 + 34, 1, 430.8, 247.9 , 0 );
    setMoveKey( spep_1-3 + 36, 1, 324.2, 186.1 , 0 );
    setMoveKey( spep_1-3 + 38, 1, 269.2, 155.1 , 0 );
    setMoveKey( spep_1-3 + 40, 1, 253.4, 145.5 , 0 );
    setMoveKey( spep_1-3 + 42, 1, 253.6, 145.2 , 0 );
    setMoveKey( spep_1-3 + 44, 1, 253.4, 145.2 , 0 );
    setMoveKey( spep_1-3 + 46, 1, 252.9, 145.5 , 0 );
    setMoveKey( spep_1-3 + 48, 1, 252.1, 145.7 , 0 );
    setMoveKey( spep_1-3 + 50, 1, 251.1, 145.7 , 0 );
    setMoveKey( spep_1-3 + 52, 1, 248.4, 146.2 , 0 );
    setMoveKey( spep_1-3 + 54, 1, 244.1, 147.1 , 0 );
    setMoveKey( spep_1-3 + 57, 1, 243.4, 147.8 , 0 );
    setMoveKey( spep_1-3 + 58, 1, 134.4, 125.2 , 0 );
    setMoveKey( spep_1-3 + 60, 1, 159.2, 92.4 , 0 );
    setMoveKey( spep_1-3 + 62, 1, 136.8, 138.6 , 0 );
    setMoveKey( spep_1-3 + 64, 1, 149.7, 87.6 , 0 );
    setMoveKey( spep_1-3 + 66, 1, 133.3, 128.1 , 0 );
    setMoveKey( spep_1-3 + 68, 1, 152.8, 74.9 , 0 );
    setMoveKey( spep_1-3 + 70, 1, 172, 68.5 , 0 );
    setMoveKey( spep_1-3 + 72, 1, 150.9, 84 , 0 );
    setMoveKey( spep_1-3 + 74, 1, 132.5, 151.6 , 0 );
    setMoveKey( spep_1-3 + 76, 1, 158.8, 87.4 , 0 );
    setMoveKey( spep_1-3 + 78, 1, 143.5, 139.3 , 0 );
    setMoveKey( spep_1-3 + 80, 1, 179.2, 110.8 , 0 );
    setMoveKey( spep_1-3 + 81, 1, 179.2, 110.8 , 0 );
    setMoveKey( spep_1-3 + 82, 1, 7.8, -57.3 , 0 );
    setMoveKey( spep_1-3 + 84, 1, 96.4, 53.6 , 0 );
    setMoveKey( spep_1-3 + 86, 1, 201, 184.6 , 0 );
    setMoveKey( spep_1-3 + 88, 1, 278.2, 280.8 , 0 );
    setMoveKey( spep_1-3 + 90, 1, 336.1, 352.3 , 0 );
    setMoveKey( spep_1-3 + 92, 1, 378, 404.5 , 0 );
    setMoveKey( spep_1-3 + 94, 1, 408.7, 443.1 , 0 );
    setMoveKey( spep_1-3 + 96, 1, 432, 472.2 , 0 );
    setMoveKey( spep_1-3 + 98, 1, 450.6, 495.1 , 0 );
    setMoveKey( spep_1-3 + 100, 1, 466.4, 514 , 0 );
    setMoveKey( spep_1-3 + 102, 1, 472.5, 522.5 , 0 );
    setMoveKey( spep_1-3 + 104, 1, 481.9, 533.4 , 0 );
    setMoveKey( spep_1-3 + 106, 1, 482.9, 535.6 , 0 );
    setMoveKey( spep_1-3 + 109, 1, 484.8, 537.3 , 0 );
    setMoveKey( spep_1-3 + 110, 1, -581.3, -474 , 0 );
    setMoveKey( spep_1-3 + 112, 1, -465.6, -373 , 0 );
    setMoveKey( spep_1-3 + 114, 1, -363.4, -283.8 , 0 );
    setMoveKey( spep_1-3 + 116, 1, -274.9, -206.5 , 0 );
    setMoveKey( spep_1-3 + 118, 1, -200, -141.1 , 0 );
    setMoveKey( spep_1-3 + 120, 1, -138.8, -87.5 , 0 );
    setMoveKey( spep_1-3 + 122, 1, -91.1, -45.9 , 0 );
    setMoveKey( spep_1-3 + 124, 1, -57, -16.1 , 0 );
    setMoveKey( spep_1-3 + 126, 1, -36.6, 1.8 , 0 );
    setMoveKey( spep_1-3 + 129, 1, -29.8, 7.7 , 0 );
    setMoveKey( spep_1-3 + 130, 1, 87, -14.3 , 0 );
    setMoveKey( spep_1-3 + 132, 1, 46.4, -118 , 0 );
    setMoveKey( spep_1-3 + 134, 1, 44.8, -88 , 0 );
    setMoveKey( spep_1-3 + 136, 1, -16.5, -177.1 , 0 );
    setMoveKey( spep_1-3 + 138, 1, 21.6, -134.3 , 0 );
    setMoveKey( spep_1-3 + 140, 1, -19.3, -174.9 , 0 );
    setMoveKey( spep_1-3 + 142, 1, -75.2, -244.1 , 0 );
    setMoveKey( spep_1-3 + 144, 1, -40.6, -206.6 , 0 );
    setMoveKey( spep_1-3 + 146, 1, -10.6, -158.8 , 0 );
    setMoveKey( spep_1-3 + 148, 1, 75.9, -8.7 , 0 );
    setMoveKey( spep_1-3 + 150, 1, 90.2, 19.6 , 0 );
    setMoveKey( spep_1-3 + 152, 1, 37.4, -50.4 , 0 );
    setMoveKey( spep_1-3 + 154, 1, -262.6, -447.5 , 0 );
    setMoveKey( spep_1-3 + 156, 1, -722.5, -1054.5 , 0 );
    setMoveKey( spep_1-3 + 158, 1, -940.1, -1340.6 , 0 );
    setMoveKey( spep_1-3 + 160, 1, -1026.7, -1454.3 , 0 );
    setMoveKey( spep_1-3 + 163, 1, -1050.6, -1483.9 , 0 );
    setMoveKey( spep_1-3 + 183, 1, -1050.6, -1483.9 , 0 );
    
    setMoveKey( spep_1-3 + 184, 1, 473, 298 , 0 );
    setMoveKey( spep_1-3 + 186, 1, 401, 252.8 , 0 );
    setMoveKey( spep_1-3 + 188, 1, 297.8, 194.7 , 0 );
    setMoveKey( spep_1-3 + 190, 1, 266.3, 171.4 , 0 );
    setMoveKey( spep_1-3 + 192, 1, 189.8, 128.3 , 0 );
    setMoveKey( spep_1-3 + 194, 1, 126.3, 92.3 , 0 );
    setMoveKey( spep_1-3 + 196, 1, 104.8, 76.9 , 0 );
    setMoveKey( spep_1-3 + 198, 1, 31.5, 38.3 , 0 );
    setMoveKey( spep_1-3 + 200, 1, 37.5, 37.8 , 0 );
    setMoveKey( spep_1-3 + 203, 1, -14.4, 11.6 , 0 );
    
    setMoveKey( spep_1-3 + 204, 1, 3.4, 222.6 , 0 );
    setMoveKey( spep_1-3 + 206, 1, 18.8, 172.1 , 0 );
    setMoveKey( spep_1-3 + 208, 1, -1.3, 254.2 , 0 );
    setMoveKey( spep_1-3 + 210, 1, 17.5, 197.4 , 0 );
    setMoveKey( spep_1-3 + 212, 1, -3.8, 271.1 , 0 );
    setMoveKey( spep_1-3 + 214, 1, 21, 201.2 , 0 );
    setMoveKey( spep_1-3 + 216, 1, -2.8, 268.6 , 0 );
    setMoveKey( spep_1-3 + 218, 1, 9.1, 227.9 , 0 );
    setMoveKey( spep_1-3 + 220, 1, 1.7, 272.5 , 0 );
    setMoveKey( spep_1-3 + 222, 1, 7.4, 256.8 , 0 );
    setMoveKey( spep_1-3 + 224, 1, 7.4, 257.4 , 0 );
    setMoveKey( spep_1-3 + 226, 1, 14.8, 13 , 0 );
    setMoveKey( spep_1-3 + 228, 1, 14.5, 13.7 , 0 );
    setMoveKey( spep_1-3 + 230, 1, 13.7, 13.7 , 0 );
    setMoveKey( spep_1-3 + 232, 1, 12.9, 14 , 0 );
    setMoveKey( spep_1-3 + 234, 1, 11.8, 16.9 , 0 );
    setMoveKey( spep_1-3 + 236, 1, 10.3, 21.3 , 0 );
    setMoveKey( spep_1-3 + 238, 1, 8.9, 26.9 , 0 );
    setMoveKey( spep_1-3 + 240, 1, 7.6, 32.4 , 0 );
    setMoveKey( spep_1-3 + 242, 1, 6.5, 38.4 , 0 );
    setMoveKey( spep_1-3 + 244, 1, 5.6, 45.7 , 0 );
    setMoveKey( spep_1-3 + 246, 1, 5, 52.2 , 0 );
    setMoveKey( spep_1-3 + 248, 1, 4.7, 52.8 , 0 );
    setMoveKey( spep_1-3 + 250, 1, 5.4, 43.3 , 0 );
    
    setMoveKey( spep_1-3 + 252, 1, 2.3, 34 , 0 );
    setMoveKey( spep_1-3 + 254, 1, 103.8, -144.2 , 0 );
    setMoveKey( spep_1-3 + 256, 1, 200.8, -387.6 , 0 );
    setMoveKey( spep_1-3 + 258, 1, 327.6, -596.6 , 0 );
    setMoveKey( spep_1-3 + 260, 1, 403.1, -799 , 0 );
    setMoveKey( spep_1-3 + 262, 1, 501.2, -942.4 , 0 );
    setMoveKey( spep_1-3 + 264, 1, 545.2, -1068.7 , 0 );
    setMoveKey( spep_1-3 + 273, 1, 565.2, -1081.1 , 0 );
    
    setMoveKey( spep_1-3 + 274, 1, 1.9, 38.3 , 0 );
    setMoveKey( spep_1-3 + 276, 1, 1.2, 29.9 , 0 );
    setMoveKey( spep_1-3 + 278, 1, -0.2, 14 , 0 );
    setMoveKey( spep_1-3 + 280, 1, -0.8, 8.4 , 0 );
    setMoveKey( spep_1-3 + 282, 1, -1, 5.5 , 0 );
    setMoveKey( spep_1-3 + 284, 1, -1.2, 3.6 , 0 );
    setMoveKey( spep_1-3 + 286, 1, -1.3, 2.4 , 0 );
    setMoveKey( spep_1-3 + 288, 1, -1.4, 1.5 , 0 );
    setMoveKey( spep_1-3 + 290, 1, -1.4, 0.9 , 0 );
    setMoveKey( spep_1-3 + 292, 1, -1.5, 0.5 , 0 );
    setMoveKey( spep_1-3 + 294, 1, -1.5, 0.3 , 0 );
    setMoveKey( spep_1-3 + 296, 1, -1.5, 0.1 , 0 );
    setMoveKey( spep_1-3 + 298, 1, -1.5, -0.1 , 0 );
    setMoveKey( spep_1-3 + 300, 1, -1.5, -0.1 , 0 );
    setMoveKey( spep_1-3 + 302, 1, -1.5, -0.2 , 0 );
    setMoveKey( spep_1-3 + 304, 1, -1.5, -0.2 , 0 );
    setMoveKey( spep_1-3 + 306, 1, -1.5, -0.3 , 0 );
    setMoveKey( spep_1-3 + 314, 1, -1.5, -0.3 , 0 );
    setMoveKey( spep_1-3 + 316, 1, -1.4, -0.3 , 0 );
    setMoveKey( spep_1-3 + 318, 1, -22.3, -17 , 0 );
    setMoveKey( spep_1-3 + 320, 1, 21.7, 2.6 , 0 );
    setMoveKey( spep_1-3 + 322, 1, -12.3, -16.2 , 0 );
    setMoveKey( spep_1-3 + 324, 1, 12.4, 5.6 , 0 );
    setMoveKey( spep_1-3 + 326, 1, -14.1, 7.4 , 0 );
    setMoveKey( spep_1-3 + 328, 1, 2.2, -11.2 , 0 );
    setMoveKey( spep_1-3 + 330, 1, -0.8, 11.6 , 0 );
    setMoveKey( spep_1-3 + 332, 1, -10.7, -8.9 , 0 );
    setMoveKey( spep_1-3 + 334, 1, -2, 16.8 , 0 );
    setMoveKey( spep_1-3 + 336, 1, -7.1, -10.7 , 0 );
    setMoveKey( spep_1-3 + 338, 1, 8.3, 4.9 , 0 );
    setMoveKey( spep_1-3 + 340, 1, -6.5, -6.3 , 0 );
    setMoveKey( spep_1-3 + 342, 1, 5.3, 3.9 , 0 );
    setMoveKey( spep_1-3 + 344, 1, -9.9, 0.7 , 0 );
    setMoveKey( spep_1-3 + 346, 1, 8.7, 0.5 , 0 );
    setMoveKey( spep_1-3 + 348, 1, -10.6, -6.1 , 0 );
    setMoveKey( spep_1-3 + 350, 1, 4.9, 4.4 , 0 );
    setMoveKey( spep_1-3 + 352, 1, -5.2, -6.7 , 0 );
    setMoveKey( spep_1-3 + 354, 1, 2.5, 7.6 , 0 );

setScaleKey( spep_1-3 + 34, 1, 0.69, 0.69 );
setScaleKey( spep_1-3 + 36, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 38, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 40, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 42, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 44, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 46, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 48, 1, 0.67, 0.67 );
setScaleKey( spep_1-3 + 50, 1, 0.83, 0.83 );
setScaleKey( spep_1-3 + 52, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 54, 1, 1.77, 1.77 );
setScaleKey( spep_1-3 + 57, 1, 1.84, 1.84 );
setScaleKey( spep_1-3 + 58, 1, 2.66, 2.66 );
setScaleKey( spep_1-3 + 60, 1, 2.65, 2.65 );
setScaleKey( spep_1-3 + 62, 1, 2.65, 2.65 );
setScaleKey( spep_1-3 + 64, 1, 2.64, 2.64 );
setScaleKey( spep_1-3 + 68, 1, 2.64, 2.64 );
setScaleKey( spep_1-3 + 70, 1, 2.63, 2.63 );
setScaleKey( spep_1-3 + 72, 1, 2.63, 2.63 );
setScaleKey( spep_1-3 + 74, 1, 2.62, 2.62 );
setScaleKey( spep_1-3 + 78, 1, 2.62, 2.62 );
setScaleKey( spep_1-3 + 81, 1, 2.61, 2.61 );
setScaleKey( spep_1-3 + 82, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 83, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 84, 1, 1.51, 1.51 );
setScaleKey( spep_1-3 + 86, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 88, 1, 1.16, 1.16 );
setScaleKey( spep_1-3 + 90, 1, 1.04, 1.04 );
setScaleKey( spep_1-3 + 92, 1, 0.96, 0.96 );
setScaleKey( spep_1-3 + 94, 1, 0.9, 0.9 );
setScaleKey( spep_1-3 + 96, 1, 0.85, 0.85 );
setScaleKey( spep_1-3 + 98, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 100, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 102, 1, 0.77, 0.77 );
setScaleKey( spep_1-3 + 104, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 109, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 110, 1, 5.17, 5.17 );
setScaleKey( spep_1-3 + 112, 1, 4.41, 4.41 );
setScaleKey( spep_1-3 + 114, 1, 3.74, 3.74 );
setScaleKey( spep_1-3 + 116, 1, 3.16, 3.16 );
setScaleKey( spep_1-3 + 118, 1, 2.67, 2.67 );
setScaleKey( spep_1-3 + 120, 1, 2.26, 2.26 );
setScaleKey( spep_1-3 + 122, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 124, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 126, 1, 1.59, 1.59 );
setScaleKey( spep_1-3 + 129, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 130, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 132, 1, 1.98, 1.98 );
setScaleKey( spep_1-3 + 134, 1, 1.87, 1.87 );
setScaleKey( spep_1-3 + 136, 1, 2.19, 2.19 );
setScaleKey( spep_1-3 + 138, 1, 2.01, 2.01 );
setScaleKey( spep_1-3 + 140, 1, 2.19, 2.19 );
setScaleKey( spep_1-3 + 142, 1, 2.37, 2.37 );
setScaleKey( spep_1-3 + 144, 1, 2.26, 2.26 );
setScaleKey( spep_1-3 + 146, 1, 2.14, 2.14 );
setScaleKey( spep_1-3 + 148, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 150, 1, 0.97, 0.97 );
setScaleKey( spep_1-3 + 152, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 154, 1, 2.39, 2.39 );
setScaleKey( spep_1-3 + 156, 1, 4.25, 4.25 );
setScaleKey( spep_1-3 + 158, 1, 5.12, 5.12 );
setScaleKey( spep_1-3 + 160, 1, 5.47, 5.47 );
setScaleKey( spep_1-3 + 163, 1, 5.56, 5.56 );

setScaleKey( spep_1-3 + 184, 1, 1.07, 1.07 );
setScaleKey( spep_1-3 + 186, 1, 1.06, 1.06 );
setScaleKey( spep_1-3 + 188, 1, 1.08, 1.08 );
setScaleKey( spep_1-3 + 190, 1, 1.11, 1.11 );
setScaleKey( spep_1-3 + 192, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 194, 1, 1.23, 1.23 );
setScaleKey( spep_1-3 + 196, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 198, 1, 1.37, 1.37 );
setScaleKey( spep_1-3 + 200, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 203, 1, 1.52, 1.52 );

setScaleKey( spep_1-3 + 204, 1, 2.9, 2.9 );
setScaleKey( spep_1-3 + 224, 1, 2.9, 2.9 );
setScaleKey( spep_1-3 + 226, 1, 2.17, 2.17 );
setScaleKey( spep_1-3 + 228, 1, 2.15, 2.15 );
setScaleKey( spep_1-3 + 230, 1, 2.11, 2.11 );
setScaleKey( spep_1-3 + 232, 1, 2.07, 2.07 );
setScaleKey( spep_1-3 + 234, 1, 2, 2 );
setScaleKey( spep_1-3 + 236, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 238, 1, 1.9, 1.9 );
setScaleKey( spep_1-3 + 240, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 242, 1, 1.83, 1.83 );
setScaleKey( spep_1-3 + 244, 1, 1.81, 1.81 );
setScaleKey( spep_1-3 + 246, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 248, 1, 1.75, 1.75 );
setScaleKey( spep_1-3 + 250, 1, 1.61, 1.61 );

setScaleKey( spep_1-3 + 252, 1, 1.91, 1.91 );
setScaleKey( spep_1-3 + 254, 1, 2.03, 2.03 );
setScaleKey( spep_1-3 + 256, 1, 2.24, 2.24 );
setScaleKey( spep_1-3 + 258, 1, 2.45, 2.45 );
setScaleKey( spep_1-3 + 260, 1, 2.64, 2.64 );
setScaleKey( spep_1-3 + 262, 1, 2.77, 2.77 );
setScaleKey( spep_1-3 + 272, 1, 2.87, 2.87 );

setScaleKey( spep_1-3 + 274, 1, 6.43, 6.43 );
setScaleKey( spep_1-3 + 276, 1, 5.03, 5.03 );
setScaleKey( spep_1-3 + 278, 1, 2.4, 2.4 );
setScaleKey( spep_1-3 + 280, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 282, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 284, 1, 0.68, 0.68 );
setScaleKey( spep_1-3 + 286, 1, 0.47, 0.47 );
setScaleKey( spep_1-3 + 288, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 290, 1, 0.23, 0.23 );
setScaleKey( spep_1-3 + 292, 1, 0.17, 0.17 );
setScaleKey( spep_1-3 + 294, 1, 0.12, 0.12 );
setScaleKey( spep_1-3 + 296, 1, 0.09, 0.09 );
setScaleKey( spep_1-3 + 298, 1, 0.07, 0.07 );
setScaleKey( spep_1-3 + 300, 1, 0.06, 0.06 );
setScaleKey( spep_1-3 + 302, 1, 0.05, 0.05 );
setScaleKey( spep_1-3 + 304, 1, 0.04, 0.04 );
setScaleKey( spep_1-3 + 306, 1, 0.04, 0.04 );
setScaleKey( spep_1-3 + 308, 1, 0.03, 0.03 );
setScaleKey( spep_1-3 + 354, 1, 0.03, 0.03 );

setRotateKey( spep_1-3 + 57, 1, -30.6 );
setRotateKey( spep_1-3 + 58, 1, -22 );
setRotateKey( spep_1-3 + 60, 1, -22.2 );
setRotateKey( spep_1-3 + 62, 1, -22.3 );
setRotateKey( spep_1-3 + 64, 1, -22.5 );
setRotateKey( spep_1-3 + 66, 1, -22.7 );
setRotateKey( spep_1-3 + 68, 1, -22.8 );
setRotateKey( spep_1-3 + 70, 1, -23 );
setRotateKey( spep_1-3 + 72, 1, -23.2 );
setRotateKey( spep_1-3 + 74, 1, -23.3 );
setRotateKey( spep_1-3 + 76, 1, -23.5 );
setRotateKey( spep_1-3 + 78, 1, -23.7 );
setRotateKey( spep_1-3 + 80, 1, -23.8 );
setRotateKey( spep_1-3 + 82, 1, -24 );
setRotateKey( spep_1-3 + 109, 1, -24 );
setRotateKey( spep_1-3 + 110, 1, 56.2 );
setRotateKey( spep_1-3 + 129, 1, 56.2 );
setRotateKey( spep_1-3 + 130, 1, -21.5 );
setRotateKey( spep_1-3 + 152, 1, -21.5 );
setRotateKey( spep_1-3 + 154, 1, -21.4 );
setRotateKey( spep_1-3 + 156, 1, -21.4 );
setRotateKey( spep_1-3 + 158, 1, -21.3 );
setRotateKey( spep_1-3 + 163, 1, -21.3 );
setRotateKey( spep_1-3 + 183, 1, -21.3 );

setRotateKey( spep_1-3 + 184, 1, -62.7 );
setRotateKey( spep_1-3 + 190, 1, -62.7 );
setRotateKey( spep_1-3 + 192, 1, -62.6 );
setRotateKey( spep_1-3 + 194, 1, -62.7 );
setRotateKey( spep_1-3 + 202, 1, -62.7 );
setRotateKey( spep_1-3 + 203, 1, -62.7 );
setRotateKey( spep_1-3 + 204, 1, -87.3 );
setRotateKey( spep_1-3 + 206, 1, -87.2 );
setRotateKey( spep_1-3 + 208, 1, -87.2 );
setRotateKey( spep_1-3 + 210, 1, -87.1 );
setRotateKey( spep_1-3 + 214, 1, -87.1 );
setRotateKey( spep_1-3 + 216, 1, -87 );
setRotateKey( spep_1-3 + 224, 1, -87 );
setRotateKey( spep_1-3 + 226, 1, -86.9 );
setRotateKey( spep_1-3 + 228, 1, -86.9 );
setRotateKey( spep_1-3 + 230, 1, -86.7 );
setRotateKey( spep_1-3 + 232, 1, -86.5 );
setRotateKey( spep_1-3 + 234, 1, -86.2 );
setRotateKey( spep_1-3 + 236, 1, -85.8 );
setRotateKey( spep_1-3 + 238, 1, -85.4 );
setRotateKey( spep_1-3 + 240, 1, -85.1 );
setRotateKey( spep_1-3 + 242, 1, -84.8 );
setRotateKey( spep_1-3 + 244, 1, -84.5 );
setRotateKey( spep_1-3 + 246, 1, -84.3 );
setRotateKey( spep_1-3 + 248, 1, -84.2 );
setRotateKey( spep_1-3 + 251, 1, -84.1 );

setRotateKey( spep_1-3 + 252, 1, -163.1 );
setRotateKey( spep_1-3 + 272, 1, -163.1 );

setRotateKey( spep_1-3 + 274, 1, -197 );
setRotateKey( spep_1-3 + 354, 1, -197 );


--文字エントリー
ctzuo1 = entryEffectLife( spep_1 -3 + 58,  10016, 22, 0x100, -1, 0, 127.1, 314 );--ズオッ

setEffMoveKey( spep_1 -3 + 58, ctzuo1, 127.1, 314 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctzuo1, 119.9, 388.8 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctzuo1, 115.5, 433.5 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctzuo1, 114, 448.4 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctzuo1, 113.5, 449.8 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctzuo1, 113.1, 451.2 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctzuo1, 112.6, 452.6 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctzuo1, 112.1, 454 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctzuo1, 111.6, 455.4 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctzuo1, 110.3, 459 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctzuo1, 109, 462.5 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctzuo1, 107.7, 466 , 0 );

setEffScaleKey( spep_1 -3 + 58, ctzuo1, 1, 1 );
setEffScaleKey( spep_1 -3 + 60, ctzuo1, 2.11, 2.11 );
setEffScaleKey( spep_1 -3 + 62, ctzuo1, 2.77, 2.77 );
setEffScaleKey( spep_1 -3 + 64, ctzuo1, 2.99, 2.99 );
setEffScaleKey( spep_1 -3 + 66, ctzuo1, 3.01, 3.01 );
setEffScaleKey( spep_1 -3 + 68, ctzuo1, 3.02, 3.02 );
setEffScaleKey( spep_1 -3 + 70, ctzuo1, 3.04, 3.04 );
setEffScaleKey( spep_1 -3 + 72, ctzuo1, 3.05, 3.05 );
setEffScaleKey( spep_1 -3 + 74, ctzuo1, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 76, ctzuo1, 3.11, 3.11 );
setEffScaleKey( spep_1 -3 + 78, ctzuo1, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 80, ctzuo1, 3.19, 3.19 );

setEffRotateKey( spep_1 -3 + 58, ctzuo1, -2.1 );
setEffRotateKey( spep_1 -3 + 80, ctzuo1, -2.1 );

setEffAlphaKey( spep_1 -3 + 58, ctzuo1, 255 );
setEffAlphaKey( spep_1 -3 + 74, ctzuo1, 255 );
setEffAlphaKey( spep_1 -3 + 76, ctzuo1, 170 );
setEffAlphaKey( spep_1 -3 + 78, ctzuo1, 85 );
setEffAlphaKey( spep_1 -3 + 80, ctzuo1, 0 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_1 -3 + 204,  10016, 22, 0x100, -1, 0, -6.4, 268.1 );--ズンッ

setEffMoveKey( spep_1 -3 + 204, ctzuo2, -6.4, 268.1 , 0 );
setEffMoveKey( spep_1 -3 + 206, ctzuo2, -19.3, 342.1 , 0 );
setEffMoveKey( spep_1 -3 + 208, ctzuo2, -27, 386.4 , 0 );
setEffMoveKey( spep_1 -3 + 210, ctzuo2, -29.6, 401.2 , 0 );
setEffMoveKey( spep_1 -3 + 212, ctzuo2, -30.2, 402.5 , 0 );
setEffMoveKey( spep_1 -3 + 214, ctzuo2, -30.8, 403.9 , 0 );
setEffMoveKey( spep_1 -3 + 216, ctzuo2, -31.4, 405.2 , 0 );
setEffMoveKey( spep_1 -3 + 218, ctzuo2, -32, 406.6 , 0 );
setEffMoveKey( spep_1 -3 + 220, ctzuo2, -32.6, 408 , 0 );
setEffMoveKey( spep_1 -3 + 222, ctzuo2, -34.1, 411.3 , 0 );
setEffMoveKey( spep_1 -3 + 224, ctzuo2, -35.7, 414.7 , 0 );
setEffMoveKey( spep_1 -3 + 226, ctzuo2, -37.2, 418.1 , 0 );

setEffScaleKey( spep_1 -3 + 204, ctzuo2, 1, 1 );
setEffScaleKey( spep_1 -3 + 206, ctzuo2, 2.11, 2.11 );
setEffScaleKey( spep_1 -3 + 208, ctzuo2, 2.77, 2.77 );
setEffScaleKey( spep_1 -3 + 210, ctzuo2, 2.99, 2.99 );
setEffScaleKey( spep_1 -3 + 212, ctzuo2, 3.01, 3.01 );
setEffScaleKey( spep_1 -3 + 214, ctzuo2, 3.02, 3.02 );
setEffScaleKey( spep_1 -3 + 216, ctzuo2, 3.04, 3.04 );
setEffScaleKey( spep_1 -3 + 218, ctzuo2, 3.05, 3.05 );
setEffScaleKey( spep_1 -3 + 220, ctzuo2, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 222, ctzuo2, 3.11, 3.11 );
setEffScaleKey( spep_1 -3 + 224, ctzuo2, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 226, ctzuo2, 3.19, 3.19 );

setEffRotateKey( spep_1 -3 + 204, ctzuo2, -6.5 );
setEffRotateKey( spep_1 -3 + 226, ctzuo2, -6.5 );

setEffAlphaKey( spep_1 -3 + 204, ctzuo2, 255 );
setEffAlphaKey( spep_1 -3 + 220, ctzuo2, 255 );
setEffAlphaKey( spep_1 -3 + 222, ctzuo2, 170 );
setEffAlphaKey( spep_1 -3 + 224, ctzuo2, 85 );
setEffAlphaKey( spep_1 -3 + 226, ctzuo2, 0 );

--文字エントリー
ctsyun = entryEffectLife( spep_1 -3 + 94,  10011, 14, 0x100, -1, 0, -198.8, 9.7 );--シュンッ

setEffMoveKey( spep_1 -3 + 94, ctsyun, -198.8, 9.7 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctsyun, -203.9, 16.1 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctsyun, -206.9, 19.9 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctsyun, -207.9, 21.2 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctsyun, -207.9, 21.2 , 0 );

setEffScaleKey( spep_1 -3 + 94, ctsyun, 0.6, 0.6 );
setEffScaleKey( spep_1 -3 + 96, ctsyun, 0.92, 0.92 );
setEffScaleKey( spep_1 -3 + 98, ctsyun, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 100, ctsyun, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 102, ctsyun, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 104, ctsyun, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 106, ctsyun, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 108, ctsyun, 1.31, 1.31 );

setEffRotateKey( spep_1 -3 + 94, ctsyun, -5 );
setEffRotateKey( spep_1 -3 + 108, ctsyun, -5 );

setEffAlphaKey( spep_1 -3 + 94, ctsyun, 255 );
setEffAlphaKey( spep_1 -3 + 100, ctsyun, 255 );
setEffAlphaKey( spep_1 -3 + 102, ctsyun, 239 );
setEffAlphaKey( spep_1 -3 + 104, ctsyun, 191 );
setEffAlphaKey( spep_1 -3 + 106, ctsyun, 112 );
setEffAlphaKey( spep_1 -3 + 108, ctsyun, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_1 -3 + 130,  10021, 22, 0x100, -1, 0, -63.5, 259.4 );--バゴォッ

setEffMoveKey( spep_1 -3 + 130, ctbago, -63.5, 259.4 , 0 );
setEffMoveKey( spep_1 -3 + 132, ctbago, -100.1, 287.7 , 0 );
setEffMoveKey( spep_1 -3 + 134, ctbago, -109.4, 310.4 , 0 );
setEffMoveKey( spep_1 -3 + 136, ctbago, -114.8, 300.7 , 0 );
setEffMoveKey( spep_1 -3 + 138, ctbago, -111.4, 322.1 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctbago, -120.5, 309.5 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctbago, -109.6, 316.7 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctbago, -129.6, 316 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctbago, -124, 319.8 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctbago, -128.7, 310.4 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctbago, -127, 339.3 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctbago, -134.5, 352.6 , 0 );

setEffScaleKey( spep_1 -3 + 130, ctbago, 1.88, 1.88 );
setEffScaleKey( spep_1 -3 + 132, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_1 -3 + 134, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_1 -3 + 136, ctbago, 2.56, 2.56 );
setEffScaleKey( spep_1 -3 + 138, ctbago, 2.59, 2.59 );
setEffScaleKey( spep_1 -3 + 140, ctbago, 2.62, 2.62 );
setEffScaleKey( spep_1 -3 + 142, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_1 -3 + 144, ctbago, 2.67, 2.67 );
setEffScaleKey( spep_1 -3 + 146, ctbago, 2.7, 2.7 );
setEffScaleKey( spep_1 -3 + 148, ctbago, 2.73, 2.73 );
setEffScaleKey( spep_1 -3 + 150, ctbago, 2.82, 2.82 );
setEffScaleKey( spep_1 -3 + 152, ctbago, 2.96, 2.96 );

setEffRotateKey( spep_1 -3 + 130, ctbago, -31.4 );
setEffRotateKey( spep_1 -3 + 132, ctbago, -34.3 );
setEffRotateKey( spep_1 -3 + 134, ctbago, -35.3 );
setEffRotateKey( spep_1 -3 + 152, ctbago, -35.3 );

setEffAlphaKey( spep_1 -3 + 130, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 146, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 148, ctbago, 227 );
setEffAlphaKey( spep_1 -3 + 150, ctbago, 142 );
setEffAlphaKey( spep_1 -3 + 152, ctbago, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 -3 + 252,  10020, 14, 0x100, -1, 0, -104.6, 333.1 );--バキッ

setEffMoveKey( spep_1 -3 + 252, ctbaki, -104.6, 333.1 , 0 );
setEffMoveKey( spep_1 -3 + 254, ctbaki, -119.4, 342.1 , 0 );
setEffMoveKey( spep_1 -3 + 256, ctbaki, -117.4, 343.9 , 0 );
setEffMoveKey( spep_1 -3 + 258, ctbaki, -134.7, 354.4 , 0 );
setEffMoveKey( spep_1 -3 + 260, ctbaki, -127.4, 352.4 , 0 );
setEffMoveKey( spep_1 -3 + 262, ctbaki, -138.3, 361 , 0 );
setEffMoveKey( spep_1 -3 + 264, ctbaki, -138.9, 378.2 , 0 );
setEffMoveKey( spep_1 -3 + 266, ctbaki, -137.2, 383.6 , 0 );

setEffScaleKey( spep_1 -3 + 252, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 -3 + 254, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 256, ctbaki, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 258, ctbaki, 2.21, 2.21 );
setEffScaleKey( spep_1 -3 + 260, ctbaki, 2.29, 2.29 );
setEffScaleKey( spep_1 -3 + 262, ctbaki, 2.32, 2.32 );
setEffScaleKey( spep_1 -3 + 264, ctbaki, 2.62, 2.62 );
setEffScaleKey( spep_1 -3 + 266, ctbaki, 2.72, 2.72 );

setEffRotateKey( spep_1 -3 + 252, ctbaki, -17.2 );
setEffRotateKey( spep_1 -3 + 266, ctbaki, -17.2 );

setEffAlphaKey( spep_1 -3 + 252, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 262, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 264, ctbaki, 64 );
setEffAlphaKey( spep_1 -3 + 266, ctbaki, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1 -3 + 318,  10018, 52, 0x100, -1, 0, -16.7, 360.9 );--ドゴォンッ

setEffMoveKey( spep_1 -3 + 318, ctdogon, -16.7, 360.9 , 0 );
setEffMoveKey( spep_1 -3 + 320, ctdogon, -19.1, 375.9 , 0 );
setEffMoveKey( spep_1 -3 + 322, ctdogon, -15.1, 396.7 , 0 );
setEffMoveKey( spep_1 -3 + 324, ctdogon, -15.3, 396.8 , 0 );
setEffMoveKey( spep_1 -3 + 326, ctdogon, -18.4, 393.2 , 0 );
setEffMoveKey( spep_1 -3 + 328, ctdogon, -14.4, 404 , 0 );
setEffMoveKey( spep_1 -3 + 330, ctdogon, -13.2, 398.1 , 0 );
setEffMoveKey( spep_1 -3 + 332, ctdogon, -18.3, 403.6 , 0 );
setEffMoveKey( spep_1 -3 + 334, ctdogon, -9.6, 403.8 , 0 );
setEffMoveKey( spep_1 -3 + 336, ctdogon, -17.2, 402.3 , 0 );
setEffMoveKey( spep_1 -3 + 338, ctdogon, -13.6, 406.5 , 0 );
setEffMoveKey( spep_1 -3 + 340, ctdogon, -16.9, 402 , 0 );
setEffMoveKey( spep_1 -3 + 342, ctdogon, -12.9, 412.7 , 0 );
setEffMoveKey( spep_1 -3 + 344, ctdogon, -11.7, 405.9 , 0 );
setEffMoveKey( spep_1 -3 + 346, ctdogon, -17.2, 410.9 , 0 );
setEffMoveKey( spep_1 -3 + 348, ctdogon, -8.3, 410.5 , 0 );
setEffMoveKey( spep_1 -3 + 350, ctdogon, -16.3, 408.4 , 0 );
setEffMoveKey( spep_1 -3 + 352, ctdogon, -12.6, 412.1 , 0 );
setEffMoveKey( spep_1 -3 + 354, ctdogon, -16.1, 406.9 , 0 );
setEffMoveKey( spep_1 -3 + 356, ctdogon, -12.1, 417.1 , 0 );
setEffMoveKey( spep_1 -3 + 358, ctdogon, -11, 409.6 , 0 );
setEffMoveKey( spep_1 -3 + 360, ctdogon, -16.7, 414.1 , 0 );
setEffMoveKey( spep_1 -3 + 362, ctdogon, -7.8, 413.1 , 0 );
setEffMoveKey( spep_1 -3 + 364, ctdogon, -12.4, 413.6 , 0 );
setEffMoveKey( spep_1 -3 + 366, ctdogon, -17.8, 411.6 , 0 );
setEffMoveKey( spep_1 -3 + 368, ctdogon, -15.3, 425.5 , 0 );
setEffMoveKey( spep_1 -3 + 370, ctdogon, -15.7, 420.4 , 0 );
--setEffMoveKey( spep_1 -3 + 372, ctdogon, -23.3, 428.2 , 0 );
--setEffMoveKey( spep_1 -3 + 374, ctdogon, -14.7, 429.7 , 0 );
--setEffMoveKey( spep_1 -3 + 376, ctdogon, -25.1, 429 , 0 );
--setEffMoveKey( spep_1 -3 + 378, ctdogon, -22, 434.9 , 0 );
--setEffMoveKey( spep_1 -3 + 380, ctdogon, -27.2, 430.3 , 0 );
--setEffMoveKey( spep_1 -3 + 382, ctdogon, -23.2, 443.7 , 0 );
--setEffMoveKey( spep_1 -3 + 384, ctdogon, -22.7, 435.8 , 0 );
--setEffMoveKey( spep_1 -3 + 386, ctdogon, -30, 442.2 , 0 );
--setEffMoveKey( spep_1 -3 + 388, ctdogon, -19.7, 441.7 , 0 );
--setEffMoveKey( spep_1 -3 + 390, ctdogon, -30, 439 , 0 );
--setEffMoveKey( spep_1 -3 + 392, ctdogon, -25.8, 443.3 , 0 );
--setEffMoveKey( spep_1 -3 + 394, ctdogon, -25.9, 443.4 , 0 );

setEffScaleKey( spep_1 -3 + 318, ctdogon, 2.98, 2.98 );
setEffScaleKey( spep_1 -3 + 320, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_1 -3 + 322, ctdogon, 3.24, 3.24 );
setEffScaleKey( spep_1 -3 + 324, ctdogon, 3.27, 3.27 );
setEffScaleKey( spep_1 -3 + 326, ctdogon, 3.3, 3.3 );
setEffScaleKey( spep_1 -3 + 328, ctdogon, 3.33, 3.33 );
setEffScaleKey( spep_1 -3 + 330, ctdogon, 3.35, 3.35 );
setEffScaleKey( spep_1 -3 + 332, ctdogon, 3.37, 3.37 );
setEffScaleKey( spep_1 -3 + 334, ctdogon, 3.4, 3.4 );
setEffScaleKey( spep_1 -3 + 336, ctdogon, 3.42, 3.42 );
setEffScaleKey( spep_1 -3 + 338, ctdogon, 3.44, 3.44 );
setEffScaleKey( spep_1 -3 + 340, ctdogon, 3.46, 3.46 );
setEffScaleKey( spep_1 -3 + 342, ctdogon, 3.47, 3.47 );
setEffScaleKey( spep_1 -3 + 344, ctdogon, 3.49, 3.49 );
setEffScaleKey( spep_1 -3 + 346, ctdogon, 3.5, 3.5 );
setEffScaleKey( spep_1 -3 + 348, ctdogon, 3.51, 3.51 );
setEffScaleKey( spep_1 -3 + 350, ctdogon, 3.52, 3.52 );
setEffScaleKey( spep_1 -3 + 352, ctdogon, 3.53, 3.53 );
setEffScaleKey( spep_1 -3 + 354, ctdogon, 3.54, 3.54 );
setEffScaleKey( spep_1 -3 + 356, ctdogon, 3.55, 3.55 );
setEffScaleKey( spep_1 -3 + 358, ctdogon, 3.55, 3.55 );
setEffScaleKey( spep_1 -3 + 360, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_1 -3 + 364, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_1 -3 + 366, ctdogon, 3.66, 3.66 );
setEffScaleKey( spep_1 -3 + 368, ctdogon, 3.76, 3.76 );
setEffScaleKey( spep_1 -3 + 370, ctdogon, 3.84, 3.84 );
--setEffScaleKey( spep_1 -3 + 372, ctdogon, 3.93, 3.93 );
--setEffScaleKey( spep_1 -3 + 374, ctdogon, 4, 4 );
--setEffScaleKey( spep_1 -3 + 376, ctdogon, 4.07, 4.07 );
--setEffScaleKey( spep_1 -3 + 378, ctdogon, 4.13, 4.13 );
--setEffScaleKey( spep_1 -3 + 380, ctdogon, 4.18, 4.18 );
--setEffScaleKey( spep_1 -3 + 382, ctdogon, 4.22, 4.22 );
--setEffScaleKey( spep_1 -3 + 384, ctdogon, 4.26, 4.26 );
--setEffScaleKey( spep_1 -3 + 386, ctdogon, 4.29, 4.29 );
--setEffScaleKey( spep_1 -3 + 388, ctdogon, 4.32, 4.32 );
--setEffScaleKey( spep_1 -3 + 390, ctdogon, 4.34, 4.34 );
--setEffScaleKey( spep_1 -3 + 392, ctdogon, 4.35, 4.35 );
--setEffScaleKey( spep_1 -3 + 394, ctdogon, 4.35, 4.35 );

setEffRotateKey( spep_1 -3 + 318, ctdogon, 0.5 );
setEffRotateKey( spep_1 -3 + 370, ctdogon, 0.5 );

setEffAlphaKey( spep_1 -3 + 318, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 352, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 354, ctdogon, 222 );
setEffAlphaKey( spep_1 -3 + 356, ctdogon, 192 );
setEffAlphaKey( spep_1 -3 + 358, ctdogon, 163 );
setEffAlphaKey( spep_1 -3 + 360, ctdogon, 137 );
setEffAlphaKey( spep_1 -3 + 362, ctdogon, 113 );
setEffAlphaKey( spep_1 -3 + 364, ctdogon, 92 );
setEffAlphaKey( spep_1 -3 + 366, ctdogon, 73 );
setEffAlphaKey( spep_1 -3 + 368, ctdogon, 56 );
setEffAlphaKey( spep_1 -3 + 360, ctdogon, 41 );
setEffAlphaKey( spep_1 -3 + 362, ctdogon, 28 );
setEffAlphaKey( spep_1 -3 + 364, ctdogon, 18 );
setEffAlphaKey( spep_1 -3 + 366, ctdogon, 10 );
setEffAlphaKey( spep_1 -3 + 368, ctdogon, 5 );
setEffAlphaKey( spep_1 -3 + 369, ctdogon, 1 );
setEffAlphaKey( spep_1 -3 + 370, ctdogon, 0 );

--文字エントリー
ctsyun2 = entryEffectLife( spep_1 -3 + 170,  10011, 12, 0x100, -1, 0, 43, 371.5 );

setEffMoveKey( spep_1 -3 + 170, ctsyun2, 43, 371.5 , 0 );
setEffMoveKey( spep_1 -3 + 172, ctsyun2, 36.9, 376.8 , 0 );
setEffMoveKey( spep_1 -3 + 174, ctsyun2, 33.2, 380.1 , 0 );
setEffMoveKey( spep_1 -3 + 176, ctsyun2, 32, 381.2 , 0 );
setEffMoveKey( spep_1 -3 + 180, ctsyun2, 32, 381.2 , 0 );
setEffMoveKey( spep_1 -3 + 182, ctsyun2, 32.1, 381.2 , 0 );

setEffScaleKey( spep_1 -3 + 170, ctsyun2, 0.6, 0.6 );
setEffScaleKey( spep_1 -3 + 172, ctsyun2, 0.92, 0.92 );
setEffScaleKey( spep_1 -3 + 174, ctsyun2, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 176, ctsyun2, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 178, ctsyun2, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 180, ctsyun2, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 182, ctsyun2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 184, ctsyun2, 1.31, 1.31 );

setEffRotateKey( spep_1 -3 + 170, ctsyun2, -15.5 );
setEffRotateKey( spep_1 -3 + 184, ctsyun2, -15.5 );

setEffAlphaKey( spep_1 -3 + 170, ctsyun2, 255 );
setEffAlphaKey( spep_1 -3 + 176, ctsyun2, 255 );
setEffAlphaKey( spep_1 -3 + 178, ctsyun2, 239 );
setEffAlphaKey( spep_1 -3 + 180, ctsyun2, 191 );
setEffAlphaKey( spep_1 -3 + 182, ctsyun2, 112 );
setEffAlphaKey( spep_1 -3 + 184, ctsyun2, 0 );



syuchusen3 = entryEffectLife( spep_1-1+272,  906, 144, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1-1+272, syuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1-1+272+144, syuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_1-1+272, syuchusen3, 1.02, 1.08 );
setEffScaleKey( spep_1-1+272+144, syuchusen3, 1.02, 1.08 );
setEffAlphaKey( spep_1-1+272, syuchusen3, 255 );
setEffAlphaKey( spep_1-1+272+144, syuchusen3, 255 );

stopSe(spep_1+34,SE1,0);
playSe(spep_1+36,1018);
playSe(spep_1+56,1011);
playSe(spep_1+92,43);
playSe(spep_1+128,1010);
playSe(spep_1+168,43);
playSe(spep_1+202,1011);
setSeVolume(spep_1+202,1011,150);
playSe(spep_1+250,1010);
setSeVolume(spep_1+250,1010,150);
playSe(spep_1+272,44);
playSe(spep_1+316,1023);

--白フェード
--entryFade( spep_1 + 472, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+366;
------------------------------------------------------
--見下ろす
------------------------------------------------------
--エフェクト
overlook=entryEffectLife(spep_2,SP_04x,110,0x100,-1,0,0,0);

setEffMoveKey( spep_2 + 0, overlook, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110, overlook, 0, 0 , 0 );

setEffScaleKey(spep_2,overlook,-1.0,1.0);
setEffScaleKey(spep_2+110,overlook,-1.0,1.0);

setEffRotateKey(spep_2,overlook,0);
setEffRotateKey(spep_2+110,overlook,0);

setEffAlphaKey(spep_2,overlook,255);
setEffAlphaKey(spep_2+110,overlook,255);

--***カットイン***32
--speff = entryEffect(  spep_2+16,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_2+16,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 +28, 190006, 74, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 +28,  ctgogo,  0,  530);
setEffMoveKey(  spep_2 +4+98,  ctgogo,  0,  530);

setEffAlphaKey( spep_2  + 28, ctgogo, 0 );
setEffAlphaKey( spep_2  + 29, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 30, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 81, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 90, ctgogo, 255 );
setEffAlphaKey( spep_2 +4 + 92, ctgogo, 191 );
setEffAlphaKey( spep_2 +4 + 94, ctgogo, 128 );
setEffAlphaKey( spep_2 +4 + 96, ctgogo, 64 );
setEffAlphaKey( spep_2 +4 + 98, ctgogo, 0 );

setEffRotateKey(  spep_2 +28,  ctgogo,  0);
setEffRotateKey(  spep_2 +4+98,  ctgogo,  0);

setEffScaleKey(  spep_2 +28,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +4+82,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_2 +4 + 98, ctgogo, -1.07, 1.07 );

--集中線
shuchusen4 = entryEffectLife( spep_2 + 0,  906, 108, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 108, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen4, 1.16, 1.16 );
setEffScaleKey( spep_2 + 108, shuchusen4, 1.16, 1.16 );

setEffRotateKey( spep_2 + 0, shuchusen4, 180 );
setEffRotateKey( spep_2 + 108, shuchusen4, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 108, shuchusen4, 255 );

--SE
playSe(spep_2+16,1018);

-- ** エフェクト等 ** --
entryFade(spep_2+98, 4, 10, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_2, 0, 110, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_3=spep_2+110;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

playSe(spep_3,SE_05);
shuchusen=entryEffectLife(spep_3,906,90,0x100,-1,0,0,0);   -- 集中線
setEffScaleKey(spep_3,shuchusen,1.6,1.6);

speff2=entryEffect(spep_3,1507,0x80,-1,0,0,0);   -- カード
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFade(spep_3+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_4=spep_3+90;
--------------------------------------
--発射
--------------------------------------
--エフェクト
bim=entryEffectLife(spep_4,SP_05x,80,0x100,-1,0,0,0);

setEffMoveKey( spep_4 + 0, bim, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, bim, 0, 0 , 0 );

setEffScaleKey(spep_4,bim,-1.0,1.0);
setEffScaleKey(spep_4+80,bim,-1.0,1.0);

setEffRotateKey(spep_4,bim,0);
setEffRotateKey(spep_4+80,bim,0);

setEffAlphaKey(spep_4,bim,255);
setEffAlphaKey(spep_4+80,bim,255);

--文字エントリー
ctzuo = entryEffectLife( spep_4 + 0,  10012, 8320, 0x100, -1, 0, -83.7, -43.4 );--ズオッ

setEffMoveKey( spep_4 + 0, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 2, ctzuo, -78.1, -45.9 , 0 );
setEffMoveKey( spep_4 + 4, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 6, ctzuo, -72.9, -48.2 , 0 );
setEffMoveKey( spep_4 + 8, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 10, ctzuo, -72.2, -48.6 , 0 );
setEffMoveKey( spep_4 + 12, ctzuo, -83.8, -43.4 , 0 );
setEffMoveKey( spep_4 + 14, ctzuo, -71.4, -49 , 0 );
setEffMoveKey( spep_4 + 16, ctzuo, -83.8, -43.5 , 0 );
setEffMoveKey( spep_4 + 18, ctzuo, -70.7, -49.3 , 0 );
setEffMoveKey( spep_4 + 20, ctzuo, -83.8, -43.4 , 0 );
setEffMoveKey( spep_4 + 22, ctzuo, -70, -49.6 , 0 );
setEffMoveKey( spep_4 + 24, ctzuo, -83.7, -43.4 , 0 );
setEffMoveKey( spep_4 + 26, ctzuo, -68.8, -50.1 , 0 );
setEffMoveKey( spep_4 + 28, ctzuo, -83.7, -43.5 , 0 );
setEffMoveKey( spep_4 + 30, ctzuo, -67.3, -50.8 , 0 );
setEffMoveKey( spep_4 + 32, ctzuo, -66.6, -51.1 , 0 );

setEffScaleKey( spep_4 + 0, ctzuo, 0.43, 0.43 );
setEffScaleKey( spep_4 + 2, ctzuo, 0.82, 0.82 );
setEffScaleKey( spep_4 + 4, ctzuo, 1.2, 1.2 );
setEffScaleKey( spep_4 + 6, ctzuo, 1.59, 1.59 );
setEffScaleKey( spep_4 + 8, ctzuo, 1.65, 1.65 );
setEffScaleKey( spep_4 + 10, ctzuo, 1.7, 1.7 );
setEffScaleKey( spep_4 + 12, ctzuo, 1.76, 1.76 );
setEffScaleKey( spep_4 + 14, ctzuo, 1.81, 1.81 );
setEffScaleKey( spep_4 + 16, ctzuo, 1.87, 1.87 );
setEffScaleKey( spep_4 + 18, ctzuo, 1.92, 1.92 );
setEffScaleKey( spep_4 + 20, ctzuo, 1.98, 1.98 );
setEffScaleKey( spep_4 + 22, ctzuo, 2.03, 2.03 );
setEffScaleKey( spep_4 + 24, ctzuo, 2.09, 2.09 );
setEffScaleKey( spep_4 + 26, ctzuo, 2.2, 2.2 );
setEffScaleKey( spep_4 + 28, ctzuo, 2.31, 2.31 );
setEffScaleKey( spep_4 + 30, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_4 + 32, ctzuo, 2.53, 2.53 );

setEffRotateKey( spep_4 + 0, ctzuo, -23.5 );
setEffRotateKey( spep_4 + 2, ctzuo, -23.6 );
setEffRotateKey( spep_4 + 32, ctzuo, -23.6 );

setEffAlphaKey( spep_4 + 0, ctzuo, 255 );
setEffAlphaKey( spep_4 + 24, ctzuo, 255 );
setEffAlphaKey( spep_4 + 26, ctzuo, 191 );
setEffAlphaKey( spep_4 + 28, ctzuo, 128 );
setEffAlphaKey( spep_4 + 30, ctzuo, 64 );
setEffAlphaKey( spep_4 + 32, ctzuo, 0 );

--流線
ryusen3 = entryEffectLife( spep_4 + 0,  906, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen3, 0, 400 , 0 );
setEffMoveKey( spep_4 + 80, ryusen3, 0, 400 , 0 );

setEffScaleKey( spep_4 + 0, ryusen3, 2.49, 0.88 );
setEffScaleKey( spep_4 + 80, ryusen3, 2.49, 0.88 );

setEffRotateKey( spep_4 + 0, ryusen3, 90 );
setEffRotateKey( spep_4 + 80, ryusen3, 90 );

setEffAlphaKey( spep_4 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 + 80, ryusen3, 255 );

--SE
playSe(spep_4,1022);

--黒背景
entryFadeBg(spep_4, 0, 80, 0, 0, 0, 0, 200);  -- 黒　背

-- ** エフェクト等 ** --
entryFade(spep_4+72, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--次の準備
spep_5=spep_4+80;

--------------------------------------
--当たる
--------------------------------------
--エフェクト
hit=entryEffectLife(spep_5,SP_06x,70,0x80,-1,0,0,0);

setEffMoveKey( spep_5 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, hit, 0, 0 , 0 );

setEffScaleKey(spep_5,hit,1.0,1.0);
setEffScaleKey(spep_5+70,hit,1.0,1.0);

setEffRotateKey(spep_5,hit,0);
setEffRotateKey(spep_5+70,hit,0);

setEffAlphaKey(spep_5,hit,255);
setEffAlphaKey(spep_5+70,hit,255);

--集中線
shuchusen5 = entryEffectLife( spep_5 + 0,  906, 68, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 68, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen5, 1.66, 1.94 );
setEffScaleKey( spep_5 + 68, shuchusen5, 1.66, 1.94 );

setEffRotateKey( spep_5 + 0, shuchusen5, 180 );
setEffRotateKey( spep_5 + 68, shuchusen5, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 68, shuchusen5, 255 );

--SE
playSe(spep_5,1022);
playSe(spep_5+38,1067);

-- ** エフェクト等 ** --
entryFade(spep_5+62, 4, 6, 4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade

--黒背景
entryFadeBg(spep_5, 0, 70, 0, 0, 0, 0, 200);  -- 黒　背

--次の準備
spep_6=spep_5+70;

--------------------------------------
--爆発
--------------------------------------
--エフェクト
explosion=entryEffect(spep_6,SP_07x,0x80,-1,0,0,0);

setEffMoveKey( spep_6 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_6 + 200, explosion, 0, 0 , 0 );

setEffScaleKey(spep_6,explosion,1.1,1.2);
setEffScaleKey(spep_6+200,explosion,1.1,1.2);

setEffRotateKey(spep_6,explosion,0);
setEffRotateKey(spep_6+200,explosion,0);

setEffAlphaKey(spep_6,explosion,255);
setEffAlphaKey(spep_6+200,explosion,255);

--集中線
shuchusen6 = entryEffectLife( spep_6 + 0,  906, 200, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 200, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen6, 1.06, 1.34 );
setEffScaleKey( spep_6 + 200, shuchusen6, 1.06, 1.34 );

setEffRotateKey( spep_6 + 0, shuchusen6, 180 );
setEffRotateKey( spep_6 + 200, shuchusen6, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 200, shuchusen6, 255 );

--黒背景
entryFadeBg(spep_6, 0, 200, 0, 0, 0, 0, 200);  -- 黒　背

--SE
playSe(spep_6,1024);

-- ダメージ表示
dealDamage(spep_6+2);
entryFade( spep_6+180, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_6+196);
end
--G12 大ダニ（エネミー）

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
SP_01 = 152627;  --登場
SP_02 = 152628;  --発射
SP_03 = 152629;  --着弾
SP_02x = 152630;  --発射：敵
SP_03x = 152631;  --着弾：敵

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 1);
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
setScaleKey(   0,   0, 1.3, 1.3);
setScaleKey(   1,   1, 1.3, 1.3);
setScaleKey(   2,   1, 1.3, 1.3);
setScaleKey(   3,   1, 1.3, 1.3);
setScaleKey(   4,   1, 1.3, 1.3);
setScaleKey(   5,   1, 1.3, 1.3);
setScaleKey(   6,   1, 1.3, 1.3);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- オオダニ現る(100F)
------------------------------------------------------
spep_1 = 0;

--***集中線***
shuchusen1 = entryEffectLife(  spep_1+50,  906,  50,  0x100,  -1,  0,  0 ,0);

setEffMoveKey(  spep_1+50,  shuchusen1,  0,  0,  0);
setEffMoveKey(  spep_1+100,  shuchusen1,  0,  0,  0);
setEffScaleKey(  spep_1+50,  shuchusen1,  1.20,  1.31);
setEffScaleKey(  spep_1+100,  shuchusen1,  1.20,  1.31);
setEffRotateKey(  spep_1+50,  shuchusen1,  0);
setEffRotateKey(  spep_1+100,  shuchusen1,  0);
setEffAlphaKey(  spep_1+50,  shuchusen1,  255);
setEffAlphaKey(  spep_1+100,  shuchusen1,  255);


--***オオダニ***
appear = entryEffect(  spep_1,  SP_01,  0x80,  -1, 0,  0,  0);

setEffMoveKey(  spep_1,  appear,  0,  0);
setEffMoveKey(  spep_1+100,  appear,  0,  0);
setEffScaleKey(  spep_1,  appear,  1.0,  1.0);
setEffScaleKey(  spep_1+100,  appear,  1.0,  1.0);
setEffRotateKey(  spep_1,  appear,  0);
setEffRotateKey(  spep_1+100,  appear,  0);
setEffAlphaKey(  spep_1,  appear,  255);
setEffAlphaKey(  spep_1+100,  appear,  255);

--***SE***
playSe(  spep_1,  4);  --ジャンプして現れる
playSe(  spep_1+52,  SE_04);  

--***エフェクト等***
entryFade(  spep_1+90,  8,  6,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = spep_1+100;

--カード
speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

--**集中線**--
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255);

--SE
playSe(  spep_2,  SE_05);

------------------------------------------------------
-- 舌を伸ばす(90F)
------------------------------------------------------
spep_3=spep_2+90;

--***書き文字***
ct_gyn = entryEffectLife( spep_3+36,  10007, 50, 0x100, -1, 0, -0.1, 300.2 );  --ギュン

setEffShake(  spep_3+36,  ct_gyn,  50,  20);  --揺れ
setEffMoveKey( spep_3+36, ct_gyn, -0.1, 300.2 , 0 );
setEffMoveKey( spep_3+38, ct_gyn, 4.4, 303.7 , 0 );
setEffMoveKey( spep_3+40, ct_gyn, 2.9, 321 , 0 );
setEffMoveKey( spep_3+42, ct_gyn, 12.6, 323.2 , 0 );
setEffMoveKey( spep_3+44, ct_gyn, 7.7, 353.7 , 0 );
setEffMoveKey( spep_3+46, ct_gyn, 24.5, 351.2 , 0 );
setEffMoveKey( spep_3+48, ct_gyn, 10.7, 374.4 , 0 );
setEffMoveKey( spep_3+84, ct_gyn, 10.7, 374.3 , 0 );
setEffMoveKey( spep_3+86, ct_gyn, 25.1, 350 , 0 );

setEffScaleKey( spep_3+36, ct_gyn, 0.31, 0.31 );
setEffScaleKey( spep_3+38, ct_gyn, 0.56, 0.56 );
setEffScaleKey( spep_3+40, ct_gyn, 0.89, 0.89 );
setEffScaleKey( spep_3+42, ct_gyn, 1.31, 1.31 );
setEffScaleKey( spep_3+44, ct_gyn, 1.81, 1.81 );
setEffScaleKey( spep_3+46, ct_gyn, 2.39, 2.39 );
setEffScaleKey( spep_3+48, ct_gyn, 2.32, 2.32 );
setEffScaleKey( spep_3+50, ct_gyn, 2.25, 2.25 );
setEffScaleKey( spep_3+52, ct_gyn, 2.26, 2.26 );
setEffScaleKey( spep_3+54, ct_gyn, 2.28, 2.28 );
setEffScaleKey( spep_3+56, ct_gyn, 2.29, 2.29 );
setEffScaleKey( spep_3+58, ct_gyn, 2.31, 2.31 );
setEffScaleKey( spep_3+60, ct_gyn, 2.32, 2.32 );
setEffScaleKey( spep_3+62, ct_gyn, 2.33, 2.33 );
setEffScaleKey( spep_3+64, ct_gyn, 2.35, 2.35 );
setEffScaleKey( spep_3+66, ct_gyn, 2.36, 2.36 );
setEffScaleKey( spep_3+68, ct_gyn, 2.38, 2.38 );
setEffScaleKey( spep_3+70, ct_gyn, 2.39, 2.39 );
setEffScaleKey( spep_3+72, ct_gyn, 2.4, 2.4 );
setEffScaleKey( spep_3+74, ct_gyn, 2.42, 2.42 );
setEffScaleKey( spep_3+76, ct_gyn, 2.43, 2.43 );
setEffScaleKey( spep_3+78, ct_gyn, 2.44, 2.44 );
setEffScaleKey( spep_3+80, ct_gyn, 2.46, 2.46 );
setEffScaleKey( spep_3+82, ct_gyn, 2.47, 2.47 );
setEffScaleKey( spep_3+84, ct_gyn, 2.49, 2.49 );
setEffScaleKey( spep_3+86, ct_gyn, 2.5, 2.5 );

setEffRotateKey( spep_3+36, ct_gyn, 19.7 );
setEffRotateKey( spep_3+86, ct_gyn, 19.7 );

setEffAlphaKey( spep_3+36, ct_gyn, 255 );
setEffAlphaKey( spep_3+86, ct_gyn, 255 );

--***舌を伸ばす***
tongue = entryEffect(  spep_3,  SP_02,  0x80,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  tongue,  0,  0);
setEffMoveKey(  spep_3+90,  tongue,  0,  0);
setEffScaleKey(  spep_3,  tongue,  1.0,  1.0);
setEffScaleKey(  spep_3+90,  tongue,  1.0,  1.0);
setEffRotateKey(  spep_3,  tongue,  0);
setEffRotateKey(  spep_3+90,  tongue,  0);
setEffAlphaKey(  spep_3,  tongue,  255);
setEffAlphaKey(  spep_3+90,  tongue,  255);
setEffAlphaKey(  spep_3+91,  tongue,  0);
setEffAlphaKey(  spep_3+92,  tongue,  0);
setEffAlphaKey(  spep_3+200,  tongue,  0);

--***集中線***
shuchusen2 = entryEffectLife(  spep_3+28,  906,  60,  0x80,  -1,  0,  0 ,0);

setEffMoveKey(  spep_3+28,  shuchusen2,  0,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen2,  0,  0,  0);
setEffScaleKey(  spep_3+28,  shuchusen2,  1.18,  1.17);
setEffScaleKey(  spep_3+90,  shuchusen2,  1.18,  1.17);
setEffRotateKey(  spep_3+28,  shuchusen2,  0);
setEffRotateKey(  spep_3+90,  shuchusen2,  0);
setEffAlphaKey(  spep_3+28,  shuchusen2,  0);
setEffAlphaKey(  spep_3+29,  shuchusen2,  255);
setEffAlphaKey(  spep_3+90,  shuchusen2,  255);

--***SE***
playSe(  spep_3,  44);  --構え
playSe(  spep_3+32,  7);  --舌を伸ばす


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    --[[
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,297.9, -17.4 , 0 );
    setScaleKey(SP_dodge , 1, 1.1, 1.1);
    setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1,297.9, -17.4 , 0 );
    setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
    setRotateKey(SP_dodge+8,   1, 0 );
    ]]
    
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
    setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end


--***エフェクト等***
entryFade( spep_3+78, 8, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255); --white fade
------------------------------------------------------
-- 敵に当たる(70F)
------------------------------------------------------
spep_4 = spep_3+90;

a=3

--***書き文字***
ct_ga1 = entryEffectLife( spep_4+20-a, 10005, 22, 0x100, -1, 0, 40.7, 239.2 );  --ガッ

setEffShake(  spep_4+20-a,  ct_ga1,  22,  20);  --揺れ
setEffMoveKey( spep_4+20-a, ct_ga1, 40.7, 239.2 , 0 );
setEffMoveKey( spep_4+42-a, ct_ga1, 40.7, 239.2 , 0 );

setEffScaleKey( spep_4+20-a, ct_ga1, 1.78, 1.78 );
setEffScaleKey( spep_4+22-a, ct_ga1, 2.66, 2.66 );
setEffScaleKey( spep_4+24-a, ct_ga1, 2.51, 2.51 );
setEffScaleKey( spep_4+26-a, ct_ga1, 2.36, 2.36 );
setEffScaleKey( spep_4+28-a, ct_ga1, 2.2, 2.2 );
setEffScaleKey( spep_4+30-a, ct_ga1, 2.05, 2.05 );
setEffScaleKey( spep_4+38-a, ct_ga1, 2.05, 2.05 );
setEffScaleKey( spep_4+40-a, ct_ga1, 2, 2 );
setEffScaleKey( spep_4+42-a, ct_ga1, 1.95, 1.95 );

setEffRotateKey( spep_4+20-a, ct_ga1, 15.8 );
setEffRotateKey( spep_4+42-a, ct_ga1, 15.8 );
setEffAlphaKey( spep_4+20-a, ct_ga1, 255 );
setEffAlphaKey( spep_4+38-a, ct_ga1, 255 );
setEffAlphaKey( spep_4+40-a, ct_ga1, 191 );
setEffAlphaKey( spep_4+42-a, ct_ga1, 128 );

--***集中線***
shuchusen3 = entryEffectLife(  spep_4+20-a,  906,  40,  0x100,  -1,  0,  0 ,0);

setEffMoveKey(  spep_4+20-a,  shuchusen3,  0,  0,  0);
setEffMoveKey(  spep_4+70-a,  shuchusen3,  0,  0,  0);
setEffScaleKey(  spep_4+20-a,  shuchusen3,  1.32,  1.92);
setEffScaleKey(  spep_4+70-a,  shuchusen3,  1.32,  1.92);
setEffRotateKey(  spep_4+20-a,  shuchusen3,  0);
setEffRotateKey(  spep_4+70-a,  shuchusen3,  0);
setEffAlphaKey(  spep_4+20-a,  shuchusen3,  255);
setEffAlphaKey(  spep_4+70-2,  shuchusen3,  255);
setEffAlphaKey(  spep_4+70-a,  shuchusen3,  0);

--***敵に当たる***
hit = entryEffect(  spep_4,  SP_03,  0x80,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  hit,  0,  0);
setEffMoveKey(  spep_4+70,  hit,  0,  0);
setEffScaleKey(  spep_4,  hit,  1.0,  1.0);
setEffScaleKey(  spep_4+70,  hit,  1.0,  1.0);
setEffRotateKey(  spep_4,  hit,  0);
setEffRotateKey(  spep_4+70,  hit,  0);
setEffAlphaKey(  spep_4,  hit,  255);
setEffAlphaKey(  spep_4+54,  hit,  255);
setEffAlphaKey(  spep_4+55,  hit,  0);
setEffAlphaKey(  spep_4+70,  hit,  0);

--***敵の動き***
setDisp( spep_4+0, 1, 1 );
setDisp( spep_4+42, 1, 0 );
changeAnime( spep_4+0, 1, 102 ); 
changeAnime( spep_4+20-2, 1, 107 );  --仰け反り
changeAnime( spep_4+20-a, 1, 107 );  --仰け反り

setMoveKey( spep_4+0, 1, 791.1, -380 , 0 );
setMoveKey( spep_4+2, 1, 742.2, -355.9 , 0 );
setMoveKey( spep_4+4, 1, 683.4, -326.9 , 0 );
setMoveKey( spep_4+6, 1, 615, -293.2 , 0 );
setMoveKey( spep_4+8, 1, 536.8, -254.6 , 0 );
setMoveKey( spep_4+10, 1, 448.7, -211.1 , 0 );
setMoveKey( spep_4+12, 1, 350.9, -162.8 , 0 );
setMoveKey( spep_4+14, 1, 243.3, -109.8 , 0 );
setMoveKey( spep_4+16, 1, 125.9, -51.8 , 0 );
setMoveKey( spep_4+20-a, 1, 29.1, -46 , 0 );
setMoveKey( spep_4+22-a, 1, 40.2, -48.8 , 0 );
setMoveKey( spep_4+24-a, 1, 51.3, -51.7 , 0 );
setMoveKey( spep_4+26-a, 1, 62.4, -54.5 , 0 );
setMoveKey( spep_4+28-a, 1, 73.5, -57.4 , 0 );
setMoveKey( spep_4+30-a, 1, 84.6, -60.2 , 0 );
setMoveKey( spep_4+34-a, 1, 106.8, -65.9 , 0 );
setMoveKey( spep_4+36-a, 1, 480.5, -167.6 , 0 );
setMoveKey( spep_4+38-a, 1, 612.4, -203.6 , 0 );
setMoveKey( spep_4+40-a, 1, 763.8, -244.7 , 0 );
setMoveKey( spep_4+42-a, 1, 20000, -244.7 , 0 );

setScaleKey( spep_4+0, 1, 2.73, 2.73 );
setScaleKey( spep_4+2, 1, 2.65, 2.65 );
setScaleKey( spep_4+4, 1, 2.55, 2.55 );
setScaleKey( spep_4+6, 1, 2.43, 2.43 );
setScaleKey( spep_4+8, 1, 2.29, 2.29 );
setScaleKey( spep_4+10, 1, 2.14, 2.14 );
setScaleKey( spep_4+12, 1, 1.98, 1.98 );
setScaleKey( spep_4+14, 1, 1.79, 1.79 );
setScaleKey( spep_4+16, 1, 1.59, 1.59 );
setScaleKey( spep_4+20-a, 1, 0.52, 0.52 );
setScaleKey( spep_4+22-a, 1, 0.53, 0.53 );
setScaleKey( spep_4+24-a, 1, 0.54, 0.54 );
setScaleKey( spep_4+26-a, 1, 0.56, 0.56 );
setScaleKey( spep_4+28-a, 1, 0.57, 0.57 );
setScaleKey( spep_4+30-a, 1, 0.58, 0.58 );
setScaleKey( spep_4+34-a, 1, 0.61, 0.61 );
setScaleKey( spep_4+36-a, 1, 1.31, 1.31 );
setScaleKey( spep_4+38-a, 1, 1.57, 1.57 );
setScaleKey( spep_4+40-a, 1, 1.86, 1.86 );
setScaleKey( spep_4+42-a, 1, 1.86, 1.86 );

setRotateKey( spep_4+0, 1, 0 );
setRotateKey( spep_4+16, 1, 0 );
setRotateKey( spep_4+20-a, 1, -34.9 );
setRotateKey( spep_4+22-a, 1, -33.4 );
setRotateKey( spep_4+24-a, 1, -32 );
setRotateKey( spep_4+26-a, 1, -30.5 );
setRotateKey( spep_4+28-a, 1, -29.1 );
setRotateKey( spep_4+30-a, 1, -27.6 );
setRotateKey( spep_4+34-a, 1, -24.7 );
setRotateKey( spep_4+36-a, 1, -17 );
setRotateKey( spep_4+38-a, 1, -14.7 );
setRotateKey( spep_4+40-a, 1, -12 );
setRotateKey( spep_4+42-a, 1, -12 );

--***SE***
playSe(  spep_4,  1020);  --迫る舌
playSe(  spep_4+20,  1010);  --ヒット

--***エフェクト等***
entryFade(  spep_4+16,  0,  2,  0,  fcolor_r,  fcolor_b,  fcolor_g,  200);  --white fade
entryFade(  spep_4+50,  4,  2,  2,  fcolor_r,  fcolor_b,  fcolor_g,  255);  --white fade

------------------------------------------------------
-- ガ（爆発なし）
------------------------------------------------------
spep_5 = spep_4+54;

--***ダニの背景***
haikei = entryEffect(  spep_5,  1933,  0x80,  -1,  0,  0,  0);  --背景

setEffScaleKey(  spep_5,  haikei,  1.0,  1.0);
setEffScaleKey(  spep_5+110,  haikei,  1.0,  1.0);
setEffMoveKey(  spep_5,  haikei,  0,  0);
setEffMoveKey(  spep_5+110,  haikei,  0,  0);
setEffRotateKey(  spep_5,  haikei,  0);
setEffRotateKey(  spep_5+110,  haikei,  0);
setEffAlphaKey(  spep_5,  haikei,  255);
setEffAlphaKey(  spep_5+110,  haikei,  255);

--***敵の動き***
setDisp( spep_5+0, 1, 1 );
changeAnime( spep_5+0, 1, 107);

setMoveKey( spep_5+0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5+2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5+4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5+6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5+8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5+10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5+12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5+110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5+0, 1, 0.22, 0.22 );
setScaleKey( spep_5+2, 1, 0.35, 0.35 );
setScaleKey( spep_5+4, 1, 0.51, 0.51 );
setScaleKey( spep_5+6, 1, 0.7, 0.7 );
setScaleKey( spep_5+8, 1, 0.93, 0.93 );
setScaleKey( spep_5+10, 1, 1.2, 1.2 );
setScaleKey( spep_5+12, 1, 1.5, 1.5 );
setScaleKey( spep_5+14, 1, 1.6, 1.6 );
setScaleKey( spep_5+16, 1, 1.5, 1.5 );
setScaleKey( spep_5+18, 1, 1.6, 1.6 );
setScaleKey( spep_5+20, 1, 1.5, 1.5 );
setScaleKey( spep_5+22, 1, 1.6, 1.6 );
setScaleKey( spep_5+24, 1, 1.5, 1.5 );
setScaleKey( spep_5+26, 1, 1.6, 1.6 );
setScaleKey( spep_5+110, 1, 1.6, 1.6 );

setRotateKey( spep_5+0, 1, 0 );
setRotateKey( spep_5+2, 1, 105 );
setRotateKey( spep_5+4, 1, 240 );
setRotateKey( spep_5+6, 1, 405 );
setRotateKey( spep_5+8, 1, 600 );
setRotateKey( spep_5+10, 1, 825 );
setRotateKey( spep_5+12, 1, 1080 );
setRotateKey( spep_5+110, 1, 1080 );

--***書き文字エントリー***
ct_ga = entryEffectLife( spep_5+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct_ga, 30, 10);
setEffRotateKey( spep_5+15, ct_ga, -40);
setEffScaleKey( spep_5+15, ct_ga, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct_ga, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct_ga, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct_ga, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct_ga, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct_ga, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct_ga, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct_ga, 255);
setEffAlphaKey( spep_5+105, ct_ga, 255);
setEffAlphaKey( spep_5+110, ct_ga, 0);

--***SE***
playSe( spep_5+8, 1011);
playSe( spep_5+14, SE_11);

--***エフェクト***
shuchusen5 = entryEffectLife( spep_5+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+106);

else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- オオダニ現る(100F)
------------------------------------------------------
spep_1 = 0;

--***集中線***
shuchusen1 = entryEffectLife(  spep_1+50,  906,  50,  0x100,  -1,  0,  0 ,0);

setEffMoveKey(  spep_1+50,  shuchusen1,  0,  0,  0);
setEffMoveKey(  spep_1+100,  shuchusen1,  0,  0,  0);
setEffScaleKey(  spep_1+50,  shuchusen1,  1.20,  1.31);
setEffScaleKey(  spep_1+100,  shuchusen1,  1.20,  1.31);
setEffRotateKey(  spep_1+50,  shuchusen1,  0);
setEffRotateKey(  spep_1+100,  shuchusen1,  0);
setEffAlphaKey(  spep_1+50,  shuchusen1,  255);
setEffAlphaKey(  spep_1+100,  shuchusen1,  255);

--***オオダニ***
appear = entryEffect(  spep_1,  SP_01,  0x80,  -1, 0,  0,  0);

setEffMoveKey(  spep_1,  appear,  0,  0);
setEffMoveKey(  spep_1+100,  appear,  0,  0);
setEffScaleKey(  spep_1,  appear,  1.0,  1.0);
setEffScaleKey(  spep_1+100,  appear,  1.0,  1.0);
setEffRotateKey(  spep_1,  appear,  0);
setEffRotateKey(  spep_1+100,  appear,  0);
setEffAlphaKey(  spep_1,  appear,  255);
setEffAlphaKey(  spep_1+100,  appear,  255);

--***SE***
playSe(  spep_1,  4);  --ジャンプして現れる
playSe(  spep_1+52,  SE_04);  

--***エフェクト等***
entryFade(  spep_1+90,  8,  6,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2 = spep_1+100;

--カード
speff2=entryEffect(spep_2,1507,0x80,-1,0,0,0);   
setEffReplaceTexture(speff2,1,1);
setEffReplaceTexture(speff2,2,0);-- カード差し替え
setEffReplaceTexture(speff2,5,4);-- 技名テクスチャ差し替え

--**集中線**--
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** エフェクト等 ** --
entryFade(spep_2+85,3,6,4,fcolor_r,fcolor_g,fcolor_b,255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255);

--SE
playSe(  spep_2,  SE_05);
------------------------------------------------------
-- 舌を伸ばす(90F)
------------------------------------------------------
spep_3=spep_2+90;

--***書き文字***
ct_gyn = entryEffectLife( spep_3+36,  10007, 50, 0x100, -1, 0, -0.1, 300.2 );  --ギュン

setEffShake(  spep_3+36,  ct_gyn,  50,  20);  --揺れ
setEffMoveKey( spep_3+36, ct_gyn, -0.1, 300.2 , 0 );
setEffMoveKey( spep_3+38, ct_gyn, 4.4, 303.7 , 0 );
setEffMoveKey( spep_3+40, ct_gyn, 2.9, 321 , 0 );
setEffMoveKey( spep_3+42, ct_gyn, 12.6, 323.2 , 0 );
setEffMoveKey( spep_3+44, ct_gyn, 7.7, 353.7 , 0 );
setEffMoveKey( spep_3+46, ct_gyn, 24.5, 351.2 , 0 );
setEffMoveKey( spep_3+48, ct_gyn, 10.7, 374.4 , 0 );
setEffMoveKey( spep_3+84, ct_gyn, 10.7, 374.3 , 0 );
setEffMoveKey( spep_3+86, ct_gyn, 25.1, 350 , 0 );

setEffScaleKey( spep_3+36, ct_gyn, 0.31, 0.31 );
setEffScaleKey( spep_3+38, ct_gyn, 0.56, 0.56 );
setEffScaleKey( spep_3+40, ct_gyn, 0.89, 0.89 );
setEffScaleKey( spep_3+42, ct_gyn, 1.31, 1.31 );
setEffScaleKey( spep_3+44, ct_gyn, 1.81, 1.81 );
setEffScaleKey( spep_3+46, ct_gyn, 2.39, 2.39 );
setEffScaleKey( spep_3+48, ct_gyn, 2.32, 2.32 );
setEffScaleKey( spep_3+50, ct_gyn, 2.25, 2.25 );
setEffScaleKey( spep_3+52, ct_gyn, 2.26, 2.26 );
setEffScaleKey( spep_3+54, ct_gyn, 2.28, 2.28 );
setEffScaleKey( spep_3+56, ct_gyn, 2.29, 2.29 );
setEffScaleKey( spep_3+58, ct_gyn, 2.31, 2.31 );
setEffScaleKey( spep_3+60, ct_gyn, 2.32, 2.32 );
setEffScaleKey( spep_3+62, ct_gyn, 2.33, 2.33 );
setEffScaleKey( spep_3+64, ct_gyn, 2.35, 2.35 );
setEffScaleKey( spep_3+66, ct_gyn, 2.36, 2.36 );
setEffScaleKey( spep_3+68, ct_gyn, 2.38, 2.38 );
setEffScaleKey( spep_3+70, ct_gyn, 2.39, 2.39 );
setEffScaleKey( spep_3+72, ct_gyn, 2.4, 2.4 );
setEffScaleKey( spep_3+74, ct_gyn, 2.42, 2.42 );
setEffScaleKey( spep_3+76, ct_gyn, 2.43, 2.43 );
setEffScaleKey( spep_3+78, ct_gyn, 2.44, 2.44 );
setEffScaleKey( spep_3+80, ct_gyn, 2.46, 2.46 );
setEffScaleKey( spep_3+82, ct_gyn, 2.47, 2.47 );
setEffScaleKey( spep_3+84, ct_gyn, 2.49, 2.49 );
setEffScaleKey( spep_3+86, ct_gyn, 2.5, 2.5 );

setEffRotateKey( spep_3+36, ct_gyn, 19.7 );
setEffRotateKey( spep_3+86, ct_gyn, 19.7 );

setEffAlphaKey( spep_3+36, ct_gyn, 255 );
setEffAlphaKey( spep_3+86, ct_gyn, 255 );

--***舌を伸ばす***
tongue = entryEffect(  spep_3,  SP_03x,  0x80,  -1, 0,  0,  0);

setEffMoveKey(  spep_3,  tongue,  0,  0);
setEffMoveKey(  spep_3+90,  tongue,  0,  0);
setEffScaleKey(  spep_3,  tongue,  1.0,  1.0);
setEffScaleKey(  spep_3+90,  tongue,  1.0,  1.0);
setEffRotateKey(  spep_3,  tongue,  0);
setEffRotateKey(  spep_3+90,  tongue,  0);
setEffAlphaKey(  spep_3,  tongue,  255);
setEffAlphaKey(  spep_3+90,  tongue,  255);
setEffAlphaKey(  spep_3+91,  tongue,  0);
setEffAlphaKey(  spep_3+92,  tongue,  0);
setEffAlphaKey(  spep_3+200,  tongue,  0);

--***集中線***
shuchusen2 = entryEffectLife(  spep_3+28,  906,  60,  0x80,  -1,  0,  0 ,0);

setEffMoveKey(  spep_3+28,  shuchusen2,  0,  0,  0);
setEffMoveKey(  spep_3+90,  shuchusen2,  0,  0,  0);
setEffScaleKey(  spep_3+28,  shuchusen2,  1.18,  1.17);
setEffScaleKey(  spep_3+90,  shuchusen2,  1.18,  1.17);
setEffRotateKey(  spep_3+28,  shuchusen2,  0);
setEffRotateKey(  spep_3+90,  shuchusen2,  0);
setEffAlphaKey(  spep_3+28,  shuchusen2,  0);
setEffAlphaKey(  spep_3+29,  shuchusen2,  255);
setEffAlphaKey(  spep_3+90,  shuchusen2,  255);


--***SE***
playSe(  spep_3,  44);  --構え
playSe(  spep_3+32,  7);  --舌を伸ばす

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3+40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
    pauseAll( SP_dodge, 67);
    --[[
    --キャラクターの固定
    setMoveKey(SP_dodge, 1,297.9, -17.4 , 0 );
    setScaleKey(SP_dodge , 1, 1.1, 1.1);
    setRotateKey(SP_dodge,   1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge+8, 1,297.9, -17.4 , 0 );
    setScaleKey(SP_dodge+8 , 1, 1.1, 1.1);
    setRotateKey(SP_dodge+8,   1, 0 );
    ]]
    
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
    setMoveKey(SP_dodge+9, 1, 1000 , 1000, 0);
    setMoveKey(SP_dodge+10, 1, 1000 , 1000, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end


--***エフェクト等***
entryFade(  spep_3+78,  8,  6,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade 
------------------------------------------------------
-- 敵に当たる(70F)
------------------------------------------------------
spep_4 = spep_3+90;

a=3

--***書き文字***
ct_ga1 = entryEffectLife( spep_4+20-a, 10005, 22, 0x100, -1, 0, 40.7, 239.2 );  --ガッ

setEffShake(  spep_4+20-a,  ct_ga1,  22,  20);  --揺れ
setEffMoveKey( spep_4+20-a, ct_ga1, 40.7, 239.2 , 0 );
setEffMoveKey( spep_4+42-a, ct_ga1, 40.7, 239.2 , 0 );

setEffScaleKey( spep_4+20-a, ct_ga1, 1.78, 1.78 );
setEffScaleKey( spep_4+22-a, ct_ga1, 2.66, 2.66 );
setEffScaleKey( spep_4+24-a, ct_ga1, 2.51, 2.51 );
setEffScaleKey( spep_4+26-a, ct_ga1, 2.36, 2.36 );
setEffScaleKey( spep_4+28-a, ct_ga1, 2.2, 2.2 );
setEffScaleKey( spep_4+30-a, ct_ga1, 2.05, 2.05 );
setEffScaleKey( spep_4+38-a, ct_ga1, 2.05, 2.05 );
setEffScaleKey( spep_4+40-a, ct_ga1, 2, 2 );
setEffScaleKey( spep_4+42-a, ct_ga1, 1.95, 1.95 );

setEffRotateKey( spep_4+20-a, ct_ga1, 15.8 );
setEffRotateKey( spep_4+42-a, ct_ga1, 15.8 );
setEffAlphaKey( spep_4+20-a, ct_ga1, 255 );
setEffAlphaKey( spep_4+38-a, ct_ga1, 255 );
setEffAlphaKey( spep_4+40-a, ct_ga1, 191 );
setEffAlphaKey( spep_4+42-a, ct_ga1, 128 );

--***集中線***
shuchusen3 = entryEffectLife(  spep_4+20-a,  906,  40,  0x100,  -1,  0,  0 ,0);

setEffMoveKey(  spep_4+20-a,  shuchusen3,  0,  0,  0);
setEffMoveKey(  spep_4+70-a,  shuchusen3,  0,  0,  0);
setEffScaleKey(  spep_4+20-a,  shuchusen3,  1.32,  1.92);
setEffScaleKey(  spep_4+70-a,  shuchusen3,  1.32,  1.92);
setEffRotateKey(  spep_4+20-a,  shuchusen3,  0);
setEffRotateKey(  spep_4+70-a,  shuchusen3,  0);
setEffAlphaKey(  spep_4+20-a,  shuchusen3,  255);
setEffAlphaKey(  spep_4+70-2,  shuchusen3,  255);
setEffAlphaKey(  spep_4+70-a,  shuchusen3,  0);

--***敵に当たる***
hit = entryEffect(  spep_4,  SP_03,  0x80,  -1, 0,  0,  0);

setEffMoveKey(  spep_4,  hit,  0,  0);
setEffMoveKey(  spep_4+70,  hit,  0,  0);
setEffScaleKey(  spep_4,  hit,  1.0,  1.0);
setEffScaleKey(  spep_4+70,  hit,  1.0,  1.0);
setEffRotateKey(  spep_4,  hit,  0);
setEffRotateKey(  spep_4+70,  hit,  0);
setEffAlphaKey(  spep_4,  hit,  255);
setEffAlphaKey(  spep_4+54,  hit,  255);
setEffAlphaKey(  spep_4+55,  hit,  0);
setEffAlphaKey(  spep_4+70,  hit,  0);

--***敵の動き***
setDisp( spep_4+0, 1, 1 );
setDisp( spep_4+42, 1, 0 );
changeAnime( spep_4+0, 1, 102 ); 
changeAnime( spep_4+20-2, 1, 107 );  --仰け反り
changeAnime( spep_4+20-a, 1, 107 );  --仰け反り

setMoveKey( spep_4+0, 1, 791.1, -380 , 0 );
setMoveKey( spep_4+2, 1, 742.2, -355.9 , 0 );
setMoveKey( spep_4+4, 1, 683.4, -326.9 , 0 );
setMoveKey( spep_4+6, 1, 615, -293.2 , 0 );
setMoveKey( spep_4+8, 1, 536.8, -254.6 , 0 );
setMoveKey( spep_4+10, 1, 448.7, -211.1 , 0 );
setMoveKey( spep_4+12, 1, 350.9, -162.8 , 0 );
setMoveKey( spep_4+14, 1, 243.3, -109.8 , 0 );
setMoveKey( spep_4+16, 1, 125.9, -51.8 , 0 );
setMoveKey( spep_4+20-a, 1, 29.1, -46 , 0 );
setMoveKey( spep_4+22-a, 1, 40.2, -48.8 , 0 );
setMoveKey( spep_4+24-a, 1, 51.3, -51.7 , 0 );
setMoveKey( spep_4+26-a, 1, 62.4, -54.5 , 0 );
setMoveKey( spep_4+28-a, 1, 73.5, -57.4 , 0 );
setMoveKey( spep_4+30-a, 1, 84.6, -60.2 , 0 );

setMoveKey( spep_4+34-a, 1, 106.8, -65.9 , 0 );
setMoveKey( spep_4+36-a, 1, 480.5, -167.6 , 0 );
setMoveKey( spep_4+38-a, 1, 612.4, -203.6 , 0 );
setMoveKey( spep_4+40-a, 1, 763.8, -244.7 , 0 );
setMoveKey( spep_4+42-a, 1, 20000, -244.7 , 0 );

setScaleKey( spep_4+0, 1, 2.73, 2.73 );
setScaleKey( spep_4+2, 1, 2.65, 2.65 );
setScaleKey( spep_4+4, 1, 2.55, 2.55 );
setScaleKey( spep_4+6, 1, 2.43, 2.43 );
setScaleKey( spep_4+8, 1, 2.29, 2.29 );
setScaleKey( spep_4+10, 1, 2.14, 2.14 );
setScaleKey( spep_4+12, 1, 1.98, 1.98 );
setScaleKey( spep_4+14, 1, 1.79, 1.79 );
setScaleKey( spep_4+16, 1, 1.59, 1.59 );
setScaleKey( spep_4+20-a, 1, 0.52, 0.52 );
setScaleKey( spep_4+22-a, 1, 0.53, 0.53 );
setScaleKey( spep_4+24-a, 1, 0.54, 0.54 );
setScaleKey( spep_4+26-a, 1, 0.56, 0.56 );
setScaleKey( spep_4+28-a, 1, 0.57, 0.57 );
setScaleKey( spep_4+30-a, 1, 0.58, 0.58 );
setScaleKey( spep_4+34-a, 1, 0.61, 0.61 );
setScaleKey( spep_4+36-a, 1, 1.31, 1.31 );
setScaleKey( spep_4+38-a, 1, 1.57, 1.57 );
setScaleKey( spep_4+40-a, 1, 1.86, 1.86 );
setScaleKey( spep_4+42-a, 1, 1.86, 1.86 );

setRotateKey( spep_4+0, 1, 0 );
setRotateKey( spep_4+16, 1, 0 );
setRotateKey( spep_4+20-a, 1, -34.9 );
setRotateKey( spep_4+22-a, 1, -33.4 );
setRotateKey( spep_4+24-a, 1, -32 );
setRotateKey( spep_4+26-a, 1, -30.5 );
setRotateKey( spep_4+28-a, 1, -29.1 );
setRotateKey( spep_4+30-a, 1, -27.6 );
setRotateKey( spep_4+34-a, 1, -24.7 );
setRotateKey( spep_4+36-a, 1, -17 );
setRotateKey( spep_4+38-a, 1, -14.7 );
setRotateKey( spep_4+40-a, 1, -12 );
setRotateKey( spep_4+42-a, 1, -12 );

--***SE***
playSe(  spep_4,  1020);  --迫る舌
playSe(  spep_4+20,  1010);  --ヒット

entryFade( spep_4+16, 0,  2,  0, fcolor_r, fcolor_b, fcolor_g, 200); --white fade
entryFade( spep_4+50, 4, 2, 2, fcolor_r, fcolor_b, fcolor_g, 255);  --white fade
------------------------------------------------------
-- ガ（爆発なし）
------------------------------------------------------
spep_5 = spep_4+54;

--***ダニの背景***
haikei = entryEffect(  spep_5,  1933,  0x80,  -1,  0,  0,  0);  --背景

setEffScaleKey(  spep_5,  haikei,  1.0,  1.0);
setEffScaleKey(  spep_5+110,  haikei,  1.0,  1.0);
setEffMoveKey(  spep_5,  haikei,  0,  0);
setEffMoveKey(  spep_5+110,  haikei,  0,  0);
setEffRotateKey(  spep_5,  haikei,  0);
setEffRotateKey(  spep_5+110,  haikei,  0);
setEffAlphaKey(  spep_5,  haikei,  255);
setEffAlphaKey(  spep_5+110,  haikei,  255);

--***敵の動き***
setDisp( spep_5+0, 1, 1 );
changeAnime( spep_5+0, 1, 107);

setMoveKey( spep_5+0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5+2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5+4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5+6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5+8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5+10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5+12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5+110, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5+0, 1, 0.22, 0.22 );
setScaleKey( spep_5+2, 1, 0.35, 0.35 );
setScaleKey( spep_5+4, 1, 0.51, 0.51 );
setScaleKey( spep_5+6, 1, 0.7, 0.7 );
setScaleKey( spep_5+8, 1, 0.93, 0.93 );
setScaleKey( spep_5+10, 1, 1.2, 1.2 );
setScaleKey( spep_5+12, 1, 1.5, 1.5 );
setScaleKey( spep_5+14, 1, 1.6, 1.6 );
setScaleKey( spep_5+16, 1, 1.5, 1.5 );
setScaleKey( spep_5+18, 1, 1.6, 1.6 );
setScaleKey( spep_5+20, 1, 1.5, 1.5 );
setScaleKey( spep_5+22, 1, 1.6, 1.6 );
setScaleKey( spep_5+24, 1, 1.5, 1.5 );
setScaleKey( spep_5+26, 1, 1.6, 1.6 );
setScaleKey( spep_5+110, 1, 1.6, 1.6 );

setRotateKey( spep_5+0, 1, 0 );
setRotateKey( spep_5+2, 1, 105 );
setRotateKey( spep_5+4, 1, 240 );
setRotateKey( spep_5+6, 1, 405 );
setRotateKey( spep_5+8, 1, 600 );
setRotateKey( spep_5+10, 1, 825 );
setRotateKey( spep_5+12, 1, 1080 );
setRotateKey( spep_5+110, 1, 1080 );

--***書き文字エントリー***
ct_ga = entryEffectLife( spep_5+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct_ga, 30, 10);
setEffRotateKey( spep_5+15, ct_ga, -40);
setEffScaleKey( spep_5+15, ct_ga, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct_ga, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct_ga, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct_ga, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct_ga, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct_ga, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct_ga, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct_ga, 255);
setEffAlphaKey( spep_5+105, ct_ga, 255);
setEffAlphaKey( spep_5+110, ct_ga, 0);

--***SE***
playSe( spep_5+8, 1011);
playSe( spep_5+14, SE_11);

--***エフェクト***
shuchusen5 = entryEffectLife( spep_5+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
shuchusenkuro = entryEffectLife( spep_5+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(spep_5+16);
entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+106);


end


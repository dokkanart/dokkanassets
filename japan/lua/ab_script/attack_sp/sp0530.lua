--4016320:スーパーウーブ_サイクロンストリーム
--sp_effect_a3_00060

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
SP_01 = 152982;  --指からビーム
SP_02 = 152983;  --被弾前
SP_03 = 152984;  --被弾後
SP_04 = 152985;  --ミサイル
SP_05 = 152986;  --竜巻
SP_06 = 152987;  --竜巻からビーム
SP_07 = 152988;  --ビーム迫る
SP_08 = 152989;  --ギャン
SP_09 = 152990;  --爆発

--***てき***
SP_01x = 152982;  --指からビーム
SP_02x = 152983;  --被弾前
SP_03x = 152984;  --被弾後
SP_04x = 152985;  --ミサイル
SP_05x = 152986;  --竜巻
SP_06x = 152987;  --竜巻からビーム
SP_07x = 152988;  --ビーム迫る
SP_08x = 152989;  --ギャン
SP_09x = 152990;  --爆発

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
setScaleKey(   0,  0,  1.5,  1.5);
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
setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
--  指からビーム(140F)
------------------------------------------------------
spep_1= 0;

shuchusen = entryEffectLife( spep_1,  906, 140, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_1, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1+140, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 , shuchusen, 1.09, 1.99 );
setEffScaleKey( spep_1+140 , shuchusen, 1.09, 1.99 );
setEffRotateKey( spep_1  , shuchusen, 0 );
setEffRotateKey( spep_1+140  , shuchusen, 0 );
setEffAlphaKey( spep_1 , shuchusen, 255 );
setEffAlphaKey( spep_1+18 , shuchusen, 255 );
setEffAlphaKey( spep_1+19 , shuchusen, 0 );
setEffAlphaKey( spep_1+84 , shuchusen, 0 );
setEffAlphaKey( spep_1+85 , shuchusen, 255 );
setEffAlphaKey( spep_1+140 , shuchusen, 255 );

--***気溜め***
start = entryEffect(  spep_1,  SP_01,  0x80,  -1,  0,  0,  0);  --指からビーム

setEffScaleKey(  spep_1,  start,  1.0,  1.0);
setEffScaleKey(  spep_1+140,  start,  1.0,  1.0);
setEffMoveKey(  spep_1,  start,  0,  0);
setEffMoveKey(  spep_1+140,  start,  0,  0);
setEffRotateKey(  spep_1,  start,  0);
setEffRotateKey(  spep_1+140,  start,  0);
setEffAlphaKey(  spep_1,  start,  255);
setEffAlphaKey(  spep_1+140,  start,  255);

entryFadeBg(  spep_1,  0,  140,  0,  0,  0,  0,  200);  --背景薄い黒
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
   
    pauseAll( SP_dodge, 67);
    --[[
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 0.1, 2.6, 0);
    setScaleKey(SP_dodge , 1 ,1.3, 1.3 );
    setRotateKey(SP_dodge,   1, -15);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 0.1, 2.6, 0);
    setScaleKey(SP_dodge+10 , 1 ,1.3, 1.3 );
    setRotateKey(SP_dodge+10,   1, -15);
    
    ]]--
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
speff1 = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
speff2 = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

ctgogo = entryEffectLife( spep_1 + 12,  190006, 70, 0x100, -1, 0, -71.3, 501.8 );  --ゴゴゴ

setEffShake(  spep_1+12,  ctgogo,  70,  10);  --揺れ
setEffMoveKey( spep_1 + 12, ctgogo, -71.3, 501.8 , 0 );
setEffMoveKey( spep_1 + 82, ctgogo, -69.3, 492.8 , 0 );
setEffScaleKey( spep_1 + 12, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 72, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 82, ctgogo, 1.17, 1.17 );
setEffRotateKey(  spep_1 + 12,  ctgogo,  0);
setEffRotateKey(  spep_1 + 82,  ctgogo,  0);
setEffAlphaKey(  spep_1 + 12,  ctgogo,  0);
setEffAlphaKey(  spep_1 + 13,  ctgogo,  255);
setEffAlphaKey(  spep_1 + 72,  ctgogo,  255);
setEffAlphaKey(  spep_1 + 82,  ctgogo,  0);



--***SE***
playSe( spep_1+12, SE_04); --ゴゴゴ
playSe( spep_1+82, 1035); --指からビーム

entryFade(  spep_1+136,  2,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade
------------------------------------------------------
--  被弾(130F)
------------------------------------------------------
spep_2 = spep_1 + 140;



--***流線***
ryusen = entryEffectLife(  spep_2,  914,  100,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_2,  ryusen,  2.1,  1.3);
setEffScaleKey(  spep_2+100,  ryusen,  2.1,  1.3);
setEffMoveKey(  spep_2,  ryusen,  0,  0);
setEffMoveKey(  spep_2+100,  ryusen,  0,  0);
setEffRotateKey(  spep_2,  ryusen,  165);
setEffRotateKey(  spep_2+100,  ryusen,  165);
setEffAlphaKey(  spep_2,  ryusen,  255);
setEffAlphaKey(  spep_2+100,  ryusen,  255);


hidanBG = entryEffect(  spep_2,  SP_03, 0x80,  -1,  0,  0,  0);  --被弾前

setEffScaleKey(  spep_2,  hidanBG,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  hidanBG,  1.0,  1.0);
setEffMoveKey(  spep_2,  hidanBG,  0,  0);
setEffMoveKey(  spep_2+100,  hidanBG,  0,  0);
setEffRotateKey(  spep_2,  hidanBG,  0);
setEffRotateKey(  spep_2+100,  hidanBG,  0);
setEffAlphaKey(  spep_2,  hidanBG,  255);
setEffAlphaKey(  spep_2+100,  hidanBG,  255);
setEffAlphaKey(  spep_2+101,  hidanBG,  0);
setEffAlphaKey(  spep_2+102,  hidanBG,  0);

hidan = entryEffect(  spep_2,  SP_02, 0x100,  -1,  0,  0,  0);  --被弾前

setEffScaleKey(  spep_2,  hidan,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  hidan,  1.0,  1.0);
setEffMoveKey(  spep_2,  hidan,  0,  0);
setEffMoveKey(  spep_2+100,  hidan,  0,  0);
setEffRotateKey(  spep_2,  hidan,  0);
setEffRotateKey(  spep_2+100,  hidan,  0);
setEffAlphaKey(  spep_2,  hidan,  255);
setEffAlphaKey(  spep_2+100,  hidan,  255);
setEffAlphaKey(  spep_2+101,  hidan,  0);
setEffAlphaKey(  spep_2+102,  hidan,  0);

--文字エントリー
ctzudodo = entryEffectLife( spep_2 + 0,  10014, 86, 0x100, -1, 0, -10, 286.7 );--ズドドドッ

setEffShake(  spep_2,  ctzudodo,  86,  20);  --揺れ
setEffMoveKey( spep_2 + 0, ctzudodo, -10, 286.7 , 0 );
setEffMoveKey( spep_2 + 2, ctzudodo, -2.2, 291.7 , 0 );
setEffMoveKey( spep_2 + 78, ctzudodo, -2.2, 291.7 , 0 );
setEffMoveKey( spep_2 + 80, ctzudodo, 5, 308.2 , 0 );
setEffMoveKey( spep_2 + 82, ctzudodo, 29.7, 335.9 , 0 );
setEffMoveKey( spep_2 + 84, ctzudodo, 35, 351.2 , 0 );
setEffMoveKey( spep_2 + 86, ctzudodo, 50, 372.7 , 0 );

setEffScaleKey( spep_2 + 0, ctzudodo, 1.96, 1.96 );
setEffScaleKey( spep_2 + 78, ctzudodo, 1.96, 1.96 );
setEffScaleKey( spep_2 + 80, ctzudodo, 2.2, 2.2 );
setEffScaleKey( spep_2 + 82, ctzudodo, 2.44, 2.44 );
setEffScaleKey( spep_2 + 84, ctzudodo, 2.68, 2.68 );
setEffScaleKey( spep_2 + 86, ctzudodo, 2.92, 2.92 );

setEffRotateKey( spep_2 + 0, ctzudodo, -0.5 );
setEffRotateKey( spep_2 + 2, ctzudodo, -0.6 );
setEffRotateKey( spep_2 + 86, ctzudodo, -0.6 );

setEffAlphaKey( spep_2 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 78, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 80, ctzudodo, 191 );
setEffAlphaKey( spep_2 + 82, ctzudodo, 128 );
setEffAlphaKey( spep_2 + 84, ctzudodo, 64 );
setEffAlphaKey( spep_2 + 86, ctzudodo, 0 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );
setDisp( spep_2  + 98, 1, 0 );

changeAnime( spep_2  + 0, 1, 100 );
changeAnime( spep_2 -3 + 20, 1, 104 );

setMoveKey( spep_2  + 0, 1, 7.3, 2.9 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 4.7, 4.5 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 7.8, 0.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 7.2, 4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 2.7, -0.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 5.9, -0.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 5.2, 3.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 0.7, -0.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 0.1, 2.6 , 0 );
setMoveKey( spep_2 -3 + 19, 1, 3.2, -1.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 2.6, 2.1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -3.8, 3.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 19.7, -4.9 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 41.2, 13 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 49.5, 17.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 51.4, 8.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 73, 17 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 81.2, 27.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 93.3, 13.9 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 101.3, 23.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 97.8, 25.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 94.4, 21.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 94.7, 25.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 98.9, 22.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 99.3, 26 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 95.8, 22.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 100, 22.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 100.3, 26.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 96.9, 22.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 97.2, 26.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 101.4, 22.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 101.8, 26.8 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 98.3, 23.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 100.6, 28.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 102.8, 19.6 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 105.7, 25.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 102.8, 33.8 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 111.4, 17.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 118, 31 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 108.5, 31 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 129.4, 21 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 148.4, 37.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 156, 35.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 169.3, 48.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 175.4, 31 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 179.6, 44.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 170.4, 44.4 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 176.5, 31.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 180.7, 44.6 , 0 );
setMoveKey( spep_2  + 98, 1, 171.5, 44.6 , 0 );

setScaleKey( spep_2  + 0, 1, 1.3, 1.3 );
setScaleKey( spep_2  + 98, 1, 1.3, 1.3 );

setRotateKey( spep_2  + 0, 1, -15 );
setRotateKey( spep_2 -3 + 19, 1, -15 );
setRotateKey( spep_2 -3 + 20, 1, -14.8 );
setRotateKey( spep_2 -3 + 22, 1, -15 );
setRotateKey( spep_2  + 98, 1, -15 );

entryFadeBg(  spep_2,  0,  100,  0,  0,  0,  0,  200);  --背景薄い黒



--SE
--playSe( spep_2, 1022); --気弾をよる
--setSeVolume(spep_2, 1022,70);
playSe( spep_2+22, 1010); --ビームがあたる
playSe( spep_2+28, 1009); --ビームがあたる
playSe( spep_2+66, 1010); --ビームがあたる
playSe( spep_2+78, 1009); --ビームがあたる

--白フェード
entryFade(  spep_2+92,  2,  6,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

------------------------------------------------------
--  戻ってくる(130F)
------------------------------------------------------
spep_3 = spep_2+100;



shuchusen3 = entryEffectLife( spep_3+74,  906, 46, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_3+74, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3+130, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_3+74 , shuchusen3, 1.2, 1.3 );
setEffScaleKey( spep_3+130 , shuchusen3, 1.2, 1.3 );
setEffRotateKey( spep_3+74  , shuchusen3, 0 );
setEffRotateKey( spep_3+130 , shuchusen3, 0 );
setEffAlphaKey( spep_3+74 , shuchusen3, 0 );
setEffAlphaKey( spep_3+75 , shuchusen3, 255 );
setEffAlphaKey( spep_3+76 , shuchusen3, 255 );
setEffAlphaKey( spep_3+130, shuchusen3, 255 );

turn = entryEffect(  spep_3,  SP_04, 0x100,  -1,  0,  0,  0);  --戻ってくる

setEffScaleKey(  spep_3,  turn,  1.0,  1.0);
setEffScaleKey(  spep_3+130,  turn,  1.0,  1.0);
setEffMoveKey(  spep_3,  turn,  0,  0);
setEffMoveKey(  spep_3+130,  turn,  0,  0);
setEffRotateKey(  spep_3,  turn,  0);
setEffRotateKey(  spep_3+130,  turn,  0);
setEffAlphaKey(  spep_3,  turn,  255);
setEffAlphaKey(  spep_3+130,  turn,  255);

--SE
SE=playSe( spep_3, 1021); --ビームがいく
stopSe(spep_3+44,SE,0);
playSe( spep_3+46, 1022); --ビームが帰ってくる


entryFadeBg(  spep_3,  0,  130,  0,  0,  0,  0,  170);  --背景薄い黒

--白フェード
entryFade(  spep_3+122,  2,  6,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

------------------------------------------------------
--  発射(140F)
------------------------------------------------------
spep_4 = spep_3+130;



shuchusen4 = entryEffectLife( spep_4+96,  906, 44, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_4+96, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4+140, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_4+96 , shuchusen4, 1.2, 1.3 );
setEffScaleKey( spep_4+140 , shuchusen4, 1.2, 1.3 );
setEffRotateKey( spep_4+96  , shuchusen4, 0 );
setEffRotateKey( spep_4+140 , shuchusen4, 0 );
setEffAlphaKey( spep_4+96 , shuchusen4, 255 );
setEffAlphaKey( spep_4+140, shuchusen4, 255 );

storm = entryEffect(  spep_4,  SP_05, 0x100,  -1,  0,  0,  0);  --竜巻ができる

setEffScaleKey(  spep_4,  storm,  1.0,  1.0);
setEffScaleKey(  spep_4+140,  storm,  1.0,  1.0);
setEffMoveKey(  spep_4,  storm,  0,  0);
setEffMoveKey(  spep_4+140,  storm,  0,  0);
setEffRotateKey(  spep_4,  storm,  0);
setEffRotateKey(  spep_4+140,  storm,  0);
setEffAlphaKey(  spep_4,  storm,  255);
setEffAlphaKey(  spep_4+140,  storm,  255);

entryFadeBg(  spep_4,  0,  130,  0,  0,  0,  0,  170);  --背景薄い黒
entryFadeBg(  spep_4+30,  26,  74,  0,  0,  0,  0,  255);  --背景黒

--SE
playSe( spep_4, 1022); --ビームが帰ってくる
playSe( spep_4+86, SE_04); --渦を巻く

--白フェード
entryFade(  spep_4+128,  4,  10,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade
------------------------------------------------------
--  カード(90F)
------------------------------------------------------
spep_5 = spep_4 + 140;

playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen5 = entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffMoveKey(  spep_5+90,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.6,  1.6);
setEffScaleKey(  spep_5+90,  shuchusen5,  1.6,  1.6);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffRotateKey(  spep_5+90,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+90,  shuchusen5,  255);

entryFade(  spep_5+74,  10,  10,  16,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade
------------------------------------------------------
--  竜巻からビーム(80F)
------------------------------------------------------
spep_6 = spep_5+90;



ryusen2 = entryEffectLife(  spep_6+14,  921,  52,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_6+14,  ryusen2,  1.35,  1.44);
setEffScaleKey(  spep_6+66,  ryusen2,  1.35,  1.44);
setEffMoveKey(  spep_6+14,  ryusen2,  0,  0,  0);
setEffMoveKey(  spep_6+66,  ryusen2,  0,  0,  0);
setEffRotateKey(  spep_6+14,  ryusen2,  -165);
setEffRotateKey(  spep_6+66,  ryusen2,  -165);
--setEffAlphaKey(  spep_6+14,  ryusen2,  0);
setEffAlphaKey(  spep_6+14,  ryusen2,  255);
setEffAlphaKey(  spep_6+15,  ryusen2,  255);
setEffAlphaKey(  spep_6+66,  ryusen2,  255);

beam = entryEffect(  spep_6,  SP_06, 0x100,  -1,  0,  0,  0);  --竜巻ができる

setEffScaleKey(  spep_6,  beam,  1.0,  1.0);
setEffScaleKey(  spep_6+66,  beam,  1.0,  1.0);
setEffMoveKey(  spep_6,  beam,  0,  0);
setEffMoveKey(  spep_6+66,  beam,  0,  0);
setEffRotateKey(  spep_6,  beam,  0);
setEffRotateKey(  spep_6+66,  beam,  0);
setEffAlphaKey(  spep_6,  beam,  255);
setEffAlphaKey(  spep_6+66,  beam,  255);
setEffAlphaKey(  spep_6+67,  beam,  0);

--文字エントリー
ctzuo = entryEffectLife( spep_6 -14 + 28,  10012, 50, 0x100, -1, 0, -22.6, 233.2 );--ズオッ

setEffShake(  spep_6 -14+28,  ctzuo,  50,  10);  --揺れ
setEffMoveKey( spep_6 -14 + 28, ctzuo, -22.6, 233.2 , 0 );
setEffMoveKey( spep_6 -14 + 30, ctzuo, -33.9, 255.8 , 0 );
setEffMoveKey( spep_6 -14 + 32, ctzuo, -45.3, 278.4 , 0 );
setEffMoveKey( spep_6 -14 + 34, ctzuo, -56.7, 301.1 , 0 );
setEffMoveKey( spep_6 -14 + 72, ctzuo, -56.7, 301 , 0 );
setEffMoveKey( spep_6 -14 + 74, ctzuo, -60.5, 308.6 , 0 );
setEffMoveKey( spep_6 -14 + 76, ctzuo, -64.3, 316.1 , 0 );
setEffMoveKey( spep_6 -14 + 78, ctzuo, -68.1, 323.6 , 0 );

setEffScaleKey( spep_6 -14 + 28, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_6 -14 + 30, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_6 -14 + 32, ctzuo, 1.55, 1.55 );
setEffScaleKey( spep_6 -14 + 34, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 36, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 38, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 40, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 42, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 44, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 46, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 48, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 50, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 52, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 54, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 56, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 58, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 60, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 62, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 64, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 66, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 68, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 70, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 72, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 74, ctzuo, 2.65, 2.65 );
setEffScaleKey( spep_6 -14 + 76, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_6 -14 + 78, ctzuo, 3, 3 );

setEffRotateKey( spep_6 -14 + 28, ctzuo, -26.1 );
setEffRotateKey( spep_6 -14 + 30, ctzuo, -26.2 );
setEffRotateKey( spep_6 -14 + 78, ctzuo, -26.2 );

setEffAlphaKey( spep_6 -14 + 28, ctzuo, 255 );
setEffAlphaKey( spep_6 -14 + 72, ctzuo, 255 );
setEffAlphaKey( spep_6 -14 + 74, ctzuo, 170 );
setEffAlphaKey( spep_6 -14 + 76, ctzuo, 85 );
setEffAlphaKey( spep_6 -14 + 78, ctzuo, 0 );

--SE
--SE1=playSe( spep_4, SE_04); --渦を巻く
--stopSe(spep_4+14,SE1,0);
playSe( spep_6+14, 1021); --気弾をうつ

entryFadeBg(  spep_6,  0,  66,  0,  0,  0,  0,  255);  --背景黒
--白フェード
entryFade(  spep_6+58,  4,  6,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

------------------------------------------------------
--  ビーム迫る(60F)
------------------------------------------------------
spep_7 = spep_6+66;

ryusen3 = entryEffectLife(  spep_7,  921,  60,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_7,  ryusen3,  1.88,  1.29);
setEffScaleKey(  spep_7+60,  ryusen3,  1.88,  1.29);
setEffMoveKey(  spep_7,  ryusen3,  0,  0,  0);
setEffMoveKey(  spep_7+60,  ryusen3,  0,  0,  0);
setEffRotateKey(  spep_7,  ryusen3,  27.8);
setEffRotateKey(  spep_7+60,  ryusen3,  27.8);
setEffAlphaKey(  spep_7,  ryusen3,  255);
setEffAlphaKey(  spep_7+60,  ryusen3,  255);

semaru = entryEffect(  spep_7,  SP_07, 0x100,  -1,  0,  0,  0);  --竜巻ができる

setEffScaleKey(  spep_7,  semaru,  1.0,  1.0);
setEffScaleKey(  spep_7+60,  semaru,  1.0,  1.0);
setEffMoveKey(  spep_7,  semaru,  0,  0);
setEffMoveKey(  spep_7+60,  semaru,  0,  0);
setEffRotateKey(  spep_7,  semaru,  0);
setEffRotateKey(  spep_7+60,  semaru,  0);
setEffAlphaKey(  spep_7,  semaru,  255);
setEffAlphaKey(  spep_7+60,  semaru,  255);



--敵の動き
setDisp( spep_7  + 0, 1, 1 );
setDisp( spep_7+58  , 1, 0 );

changeAnime( spep_7  + 0, 1, 104 );

setMoveKey( spep_7  + 0, 1, 169, -75.8 , 0 );
--setMoveKey( spep_7 -3 + 2, 1, 161.5, -65.8 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 173.3, -84.6 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 172.2, -71.5 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 158.4, -77.5 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 157.4, -64.3 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 169.1, -83.1 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 168.1, -70 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 154.2, -76 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 153.2, -62.8 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 165, -81.6 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 163.9, -68.5 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 150.1, -74.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 149.1, -61.3 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 160.8, -80.1 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 159.8, -67 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 145.9, -73 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 144.9, -59.8 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 156.7, -78.6 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 155.6, -65.4 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 141.8, -71.5 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 140.7, -58.3 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 152.5, -77.1 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 151.5, -63.9 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 137.6, -70 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 136.6, -56.8 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 148.4, -75.6 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 147.3, -62.4 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 133.5, -68.5 , 0 );
setMoveKey( spep_7  + 58, 1, 132.4, -55.3 , 0 );

setScaleKey( spep_7 + 0, 1, 1, 1 );
setScaleKey( spep_7 + 58, 1, 1, 1 );

setRotateKey( spep_7 + 0, 1, 2.8 );
setRotateKey( spep_7 + 2, 1, 3 );
setRotateKey( spep_7 + 58, 1, 3 );


--SE
playSe( spep_7, 1022); --気弾をよる

--白フェード
entryFade(  spep_7+52,  2,  6,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade


entryFadeBg(  spep_7,  0,  60,  0,  0,  0,  0,  255);  --背景黒

------------------------------------------------------
--  ギャン(60F)
------------------------------------------------------
spep_8 = spep_7+60;


gyan = entryEffect(  spep_8,  SP_08, 0x100,  -1,  0,  0,  0);  --竜巻ができる

setEffShake(  spep_8,  gyan,  60,  20);  --揺れ
setEffScaleKey(  spep_8,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_8+60,  gyan,  1.0,  1.0);
setEffMoveKey(  spep_8,  gyan,  0,  0);
setEffMoveKey(  spep_8+60,  gyan,  0,  0);
setEffRotateKey(  spep_8,  gyan,  0);
setEffRotateKey(  spep_8+60,  gyan,  0);
setEffAlphaKey(  spep_8,  gyan,  255);
setEffAlphaKey(  spep_8+60,  gyan,  255);

--SE
playSe( spep_8, 1023); --爆発

--白フェード
entryFade(  spep_8+52,  4,  10,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade
------------------------------------------------------
--  爆発(240F)
------------------------------------------------------
spep_9 = spep_8+60;

shuchusen9 = entryEffectLife( spep_9+46,  906, 194, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_9+46, shuchusen9, 0, 0 , 0 );
setEffMoveKey( spep_9+240, shuchusen9, 0, 0 , 0 );
setEffScaleKey( spep_9+46 , shuchusen9, 1.2, 1.3 );
setEffScaleKey( spep_9+240 , shuchusen9, 1.2, 1.3 );
setEffRotateKey( spep_9+46  , shuchusen9, 0 );
setEffRotateKey( spep_9+240 , shuchusen9, 0 );
setEffAlphaKey( spep_9+46 , shuchusen9, 255 );
setEffAlphaKey( spep_9+440, shuchusen9, 255 );

bakuhatsu = entryEffect(  spep_9,  SP_09, 0x100,  -1,  0,  0,  0);  --竜巻ができる

setEffScaleKey(  spep_9,  bakuhatsu,  1.0,  1.0);
setEffScaleKey(  spep_9+240,  bakuhatsu,  1.0,  1.0);
setEffMoveKey(  spep_9,  bakuhatsu,  0,  0);
setEffMoveKey(  spep_9+240,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_9,  bakuhatsu,  0);
setEffRotateKey(  spep_9+240,  bakuhatsu,  0);
setEffAlphaKey(  spep_9,  bakuhatsu,  255);
setEffAlphaKey(  spep_9+240,  bakuhatsu, 255);


entryFade(  spep_9+40,  2,  2,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade
entryFade(  spep_9+80,  4,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade


--SE
playSe( spep_9, 1069); --気弾をうつ

-- ダメージ表示
dealDamage(spep_9+100);
entryFade( spep_9+190, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+200);

else
------------------------------------------------------------------------------------------------------------
--てき
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--  指からビーム(140F)
------------------------------------------------------
spep_1= 0;

shuchusen = entryEffectLife( spep_1,  906, 140, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_1, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1+140, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 , shuchusen, 1.09, 1.99 );
setEffScaleKey( spep_1+140 , shuchusen, 1.09, 1.99 );
setEffRotateKey( spep_1  , shuchusen, 0 );
setEffRotateKey( spep_1+140  , shuchusen, 0 );
setEffAlphaKey( spep_1 , shuchusen, 255 );
setEffAlphaKey( spep_1+18 , shuchusen, 255 );
setEffAlphaKey( spep_1+19 , shuchusen, 0 );
setEffAlphaKey( spep_1+84 , shuchusen, 0 );
setEffAlphaKey( spep_1+85 , shuchusen, 255 );
setEffAlphaKey( spep_1+140 , shuchusen, 255 );

--***気溜め***
start = entryEffect(  spep_1,  SP_01x,  0x80,  -1,  0,  0,  0);  --指からビーム

setEffScaleKey(  spep_1,  start,  1.0,  1.0);
setEffScaleKey(  spep_1+140,  start,  1.0,  1.0);
setEffMoveKey(  spep_1,  start,  0,  0);
setEffMoveKey(  spep_1+140,  start,  0,  0);
setEffRotateKey(  spep_1,  start,  0);
setEffRotateKey(  spep_1+140,  start,  0);
setEffAlphaKey(  spep_1,  start,  255);
setEffAlphaKey(  spep_1+140,  start,  255);

entryFadeBg(  spep_1,  0,  140,  0,  0,  0,  0,  200);  --背景薄い黒
--------------------------------------
--回避
--------------------------------------


if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    
   
    pauseAll( SP_dodge, 67);
    --[[
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 0.1, 2.6, 0);
    setScaleKey(SP_dodge , 1 ,1.3, 1.3 );
    setRotateKey(SP_dodge,   1, -15);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 0.1, 2.6, 0);
    setScaleKey(SP_dodge+10 , 1 ,1.3, 1.3 );
    setRotateKey(SP_dodge+10,   1, -15);
    
    ]]--
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
--speff1 = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff1, 3, 2);                           -- カットイン差し替え
--speff2 = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff2, 4, 5);                           -- セリフ差し替え

ctgogo = entryEffectLife( spep_1 + 12,  190006, 70, 0x100, -1, 0, -71.3, 501.8 );  --ゴゴゴ

setEffShake(  spep_1+12,  ctgogo,  70,  10);  --揺れ
setEffMoveKey( spep_1 + 12, ctgogo, -71.3, 501.8 , 0 );
setEffMoveKey( spep_1 + 82, ctgogo, -69.3, 492.8 , 0 );
setEffScaleKey( spep_1 + 12, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 72, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 82, ctgogo, -1.17, 1.17 );
setEffRotateKey(  spep_1 + 12,  ctgogo,  0);
setEffRotateKey(  spep_1 + 82,  ctgogo,  0);
setEffAlphaKey(  spep_1 + 12,  ctgogo,  0);
setEffAlphaKey(  spep_1 + 13,  ctgogo,  255);
setEffAlphaKey(  spep_1 + 72,  ctgogo,  255);
setEffAlphaKey(  spep_1 + 82,  ctgogo,  0);



--***SE***
playSe( spep_1+12, SE_04); --ゴゴゴ
playSe( spep_1+82, 1035); --指からビーム

entryFade(  spep_1+136,  2,  4,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade
------------------------------------------------------
--  被弾(130F)
------------------------------------------------------
spep_2 = spep_1 + 140;



--***流線***
ryusen = entryEffectLife(  spep_2,  914,  100,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_2,  ryusen,  2.1,  1.3);
setEffScaleKey(  spep_2+100,  ryusen,  2.1,  1.3);
setEffMoveKey(  spep_2,  ryusen,  0,  0);
setEffMoveKey(  spep_2+100,  ryusen,  0,  0);
setEffRotateKey(  spep_2,  ryusen,  165);
setEffRotateKey(  spep_2+100,  ryusen,  165);
setEffAlphaKey(  spep_2,  ryusen,  255);
setEffAlphaKey(  spep_2+100,  ryusen,  255);


hidanBG = entryEffect(  spep_2,  SP_03x, 0x80,  -1,  0,  0,  0);  --被弾前

setEffScaleKey(  spep_2,  hidanBG,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  hidanBG,  1.0,  1.0);
setEffMoveKey(  spep_2,  hidanBG,  0,  0);
setEffMoveKey(  spep_2+100,  hidanBG,  0,  0);
setEffRotateKey(  spep_2,  hidanBG,  0);
setEffRotateKey(  spep_2+100,  hidanBG,  0);
setEffAlphaKey(  spep_2,  hidanBG,  255);
setEffAlphaKey(  spep_2+100,  hidanBG,  255);
setEffAlphaKey(  spep_2+101,  hidanBG,  0);
setEffAlphaKey(  spep_2+102,  hidanBG,  0);

hidan = entryEffect(  spep_2,  SP_02x, 0x100,  -1,  0,  0,  0);  --被弾前

setEffScaleKey(  spep_2,  hidan,  1.0,  1.0);
setEffScaleKey(  spep_2+100,  hidan,  1.0,  1.0);
setEffMoveKey(  spep_2,  hidan,  0,  0);
setEffMoveKey(  spep_2+100,  hidan,  0,  0);
setEffRotateKey(  spep_2,  hidan,  0);
setEffRotateKey(  spep_2+100,  hidan,  0);
setEffAlphaKey(  spep_2,  hidan,  255);
setEffAlphaKey(  spep_2+100,  hidan,  255);
setEffAlphaKey(  spep_2+101,  hidan,  0);
setEffAlphaKey(  spep_2+102,  hidan,  0);

--文字エントリー
ctzudodo = entryEffectLife( spep_2 + 0,  10014, 86, 0x100, -1, 0, -10, 286.7 );--ズドドドッ

setEffShake(  spep_2,  ctzudodo,  86,  20);  --揺れ
setEffMoveKey( spep_2 + 0, ctzudodo, -10, 286.7 , 0 );
setEffMoveKey( spep_2 + 2, ctzudodo, -2.2, 291.7 , 0 );
setEffMoveKey( spep_2 + 78, ctzudodo, -2.2, 291.7 , 0 );
setEffMoveKey( spep_2 + 80, ctzudodo, 5, 308.2 , 0 );
setEffMoveKey( spep_2 + 82, ctzudodo, 29.7, 335.9 , 0 );
setEffMoveKey( spep_2 + 84, ctzudodo, 35, 351.2 , 0 );
setEffMoveKey( spep_2 + 86, ctzudodo, 50, 372.7 , 0 );

setEffScaleKey( spep_2 + 0, ctzudodo, 1.96, 1.96 );
setEffScaleKey( spep_2 + 78, ctzudodo, 1.96, 1.96 );
setEffScaleKey( spep_2 + 80, ctzudodo, 2.2, 2.2 );
setEffScaleKey( spep_2 + 82, ctzudodo, 2.44, 2.44 );
setEffScaleKey( spep_2 + 84, ctzudodo, 2.68, 2.68 );
setEffScaleKey( spep_2 + 86, ctzudodo, 2.92, 2.92 );

setEffRotateKey( spep_2 + 0, ctzudodo, -70.5 );
setEffRotateKey( spep_2 + 2, ctzudodo, -70.6 );
setEffRotateKey( spep_2 + 86, ctzudodo, -70.6 );

setEffAlphaKey( spep_2 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 78, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 80, ctzudodo, 191 );
setEffAlphaKey( spep_2 + 82, ctzudodo, 128 );
setEffAlphaKey( spep_2 + 84, ctzudodo, 64 );
setEffAlphaKey( spep_2 + 86, ctzudodo, 0 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );
setDisp( spep_2  + 98, 1, 0 );

changeAnime( spep_2  + 0, 1, 100 );
changeAnime( spep_2 -3 + 20, 1, 104 );

setMoveKey( spep_2  + 0, 1, 7.3, 2.9 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 4.7, 4.5 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 7.8, 0.4 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 7.2, 4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 2.7, -0.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 5.9, -0.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 5.2, 3.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 0.7, -0.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 0.1, 2.6 , 0 );
setMoveKey( spep_2 -3 + 19, 1, 3.2, -1.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 2.6, 2.1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -3.8, 3.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 19.7, -4.9 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 41.2, 13 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 49.5, 17.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 51.4, 8.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 73, 17 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 81.2, 27.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 93.3, 13.9 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 101.3, 23.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 97.8, 25.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 94.4, 21.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 94.7, 25.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 98.9, 22.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 99.3, 26 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 95.8, 22.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 100, 22.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 100.3, 26.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 96.9, 22.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 97.2, 26.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 101.4, 22.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 101.8, 26.8 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 98.3, 23.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 100.6, 28.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 102.8, 19.6 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 105.7, 25.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 102.8, 33.8 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 111.4, 17.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 118, 31 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 108.5, 31 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 129.4, 21 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 148.4, 37.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 156, 35.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 169.3, 48.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 175.4, 31 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 179.6, 44.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 170.4, 44.4 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 176.5, 31.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 180.7, 44.6 , 0 );
setMoveKey( spep_2  + 98, 1, 171.5, 44.6 , 0 );

setScaleKey( spep_2  + 0, 1, 1.3, 1.3 );
setScaleKey( spep_2  + 98, 1, 1.3, 1.3 );

setRotateKey( spep_2  + 0, 1, -15 );
setRotateKey( spep_2 -3 + 19, 1, -15 );
setRotateKey( spep_2 -3 + 20, 1, -14.8 );
setRotateKey( spep_2 -3 + 22, 1, -15 );
setRotateKey( spep_2  + 98, 1, -15 );

entryFadeBg(  spep_2,  0,  100,  0,  0,  0,  0,  200);  --背景薄い黒



--SE
--playSe( spep_2, 1022); --気弾をよる
--setSeVolume(spep_2, 1022,70);
playSe( spep_2+22, 1010); --ビームがあたる
playSe( spep_2+28, 1009); --ビームがあたる
playSe( spep_2+66, 1010); --ビームがあたる
playSe( spep_2+78, 1009); --ビームがあたる

--白フェード
entryFade(  spep_2+92,  2,  6,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

------------------------------------------------------
--  戻ってくる(130F)
------------------------------------------------------
spep_3 = spep_2+100;



shuchusen3 = entryEffectLife( spep_3+74,  906, 46, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_3+74, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3+130, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_3+74 , shuchusen3, 1.2, 1.3 );
setEffScaleKey( spep_3+130 , shuchusen3, 1.2, 1.3 );
setEffRotateKey( spep_3+74  , shuchusen3, 0 );
setEffRotateKey( spep_3+130 , shuchusen3, 0 );
setEffAlphaKey( spep_3+74 , shuchusen3, 0 );
setEffAlphaKey( spep_3+75 , shuchusen3, 255 );
setEffAlphaKey( spep_3+76 , shuchusen3, 255 );
setEffAlphaKey( spep_3+130, shuchusen3, 255 );

turn = entryEffect(  spep_3,  SP_04x, 0x100,  -1,  0,  0,  0);  --戻ってくる

setEffScaleKey(  spep_3,  turn,  1.0,  1.0);
setEffScaleKey(  spep_3+130,  turn,  1.0,  1.0);
setEffMoveKey(  spep_3,  turn,  0,  0);
setEffMoveKey(  spep_3+130,  turn,  0,  0);
setEffRotateKey(  spep_3,  turn,  0);
setEffRotateKey(  spep_3+130,  turn,  0);
setEffAlphaKey(  spep_3,  turn,  255);
setEffAlphaKey(  spep_3+130,  turn,  255);

--SE
SE=playSe( spep_3, 1021); --ビームがいく
stopSe(spep_3+44,SE,0);
playSe( spep_3+46, 1022); --ビームが帰ってくる


entryFadeBg(  spep_3,  0,  130,  0,  0,  0,  0,  170);  --背景薄い黒

--白フェード
entryFade(  spep_3+122,  2,  6,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

------------------------------------------------------
--  発射(140F)
------------------------------------------------------
spep_4 = spep_3+130;



shuchusen4 = entryEffectLife( spep_4+96,  906, 44, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_4+96, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4+140, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_4+96 , shuchusen4, 1.2, 1.3 );
setEffScaleKey( spep_4+140 , shuchusen4, 1.2, 1.3 );
setEffRotateKey( spep_4+96  , shuchusen4, 0 );
setEffRotateKey( spep_4+140 , shuchusen4, 0 );
setEffAlphaKey( spep_4+96 , shuchusen4, 255 );
setEffAlphaKey( spep_4+140, shuchusen4, 255 );

storm = entryEffect(  spep_4,  SP_05x, 0x100,  -1,  0,  0,  0);  --竜巻ができる

setEffScaleKey(  spep_4,  storm,  1.0,  1.0);
setEffScaleKey(  spep_4+140,  storm,  1.0,  1.0);
setEffMoveKey(  spep_4,  storm,  0,  0);
setEffMoveKey(  spep_4+140,  storm,  0,  0);
setEffRotateKey(  spep_4,  storm,  0);
setEffRotateKey(  spep_4+140,  storm,  0);
setEffAlphaKey(  spep_4,  storm,  255);
setEffAlphaKey(  spep_4+140,  storm,  255);

entryFadeBg(  spep_4,  0,  130,  0,  0,  0,  0,  170);  --背景薄い黒
entryFadeBg(  spep_4+30,  26,  74,  0,  0,  0,  0,  255);  --背景黒

--SE
playSe( spep_4, 1022); --ビームが帰ってくる
playSe( spep_4+86, SE_04); --渦を巻く

--白フェード
entryFade(  spep_4+128,  4,  10,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade
------------------------------------------------------
--  カード(90F)
------------------------------------------------------
spep_5 = spep_4 + 140;

playSe( spep_5, SE_05);
speff = entryEffect(  spep_5,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen5 = entryEffectLife( spep_5, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffMoveKey(  spep_5+90,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.6,  1.6);
setEffScaleKey(  spep_5+90,  shuchusen5,  1.6,  1.6);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffRotateKey(  spep_5+90,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffAlphaKey(  spep_5+90,  shuchusen5,  255);

entryFade(  spep_5+74,  10,  10,  16,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade
------------------------------------------------------
--  竜巻からビーム(80F)
------------------------------------------------------
spep_6 = spep_5+90;



ryusen2 = entryEffectLife(  spep_6+14,  921,  52,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_6+14,  ryusen2,  1.35,  1.44);
setEffScaleKey(  spep_6+66,  ryusen2,  1.35,  1.44);
setEffMoveKey(  spep_6+14,  ryusen2,  0,  0,  0);
setEffMoveKey(  spep_6+66,  ryusen2,  0,  0,  0);
setEffRotateKey(  spep_6+14,  ryusen2,  -165);
setEffRotateKey(  spep_6+66,  ryusen2,  -165);
--setEffAlphaKey(  spep_6+14,  ryusen2,  0);
setEffAlphaKey(  spep_6+14,  ryusen2,  255);
setEffAlphaKey(  spep_6+15,  ryusen2,  255);
setEffAlphaKey(  spep_6+66,  ryusen2,  255);

beam = entryEffect(  spep_6,  SP_06x, 0x100,  -1,  0,  0,  0);  --竜巻ができる

setEffScaleKey(  spep_6,  beam,  1.0,  1.0);
setEffScaleKey(  spep_6+66,  beam,  1.0,  1.0);
setEffMoveKey(  spep_6,  beam,  0,  0);
setEffMoveKey(  spep_6+66,  beam,  0,  0);
setEffRotateKey(  spep_6,  beam,  0);
setEffRotateKey(  spep_6+66,  beam,  0);
setEffAlphaKey(  spep_6,  beam,  255);
setEffAlphaKey(  spep_6+66,  beam,  255);
setEffAlphaKey(  spep_6+67,  beam,  0);

--文字エントリー
ctzuo = entryEffectLife( spep_6 -14 + 28,  10012, 50, 0x100, -1, 0, -22.6, 233.2 );--ズオッ

setEffShake(  spep_6-14+28,  ctzuo,  50,  10);  --揺れ
setEffMoveKey( spep_6 -14 + 28, ctzuo, -22.6, 233.2 , 0 );
setEffMoveKey( spep_6 -14 + 30, ctzuo, -33.9, 255.8 , 0 );
setEffMoveKey( spep_6 -14 + 32, ctzuo, -45.3, 278.4 , 0 );
setEffMoveKey( spep_6 -14 + 34, ctzuo, -56.7, 301.1 , 0 );
setEffMoveKey( spep_6 -14 + 74, ctzuo, -60.5, 308.6 , 0 );
setEffMoveKey( spep_6 -14 + 76, ctzuo, -64.3, 316.1 , 0 );
setEffMoveKey( spep_6 -14 + 78, ctzuo, -68.1, 323.6 , 0 );

setEffScaleKey( spep_6 -14 + 28, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_6 -14 + 30, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_6 -14 + 32, ctzuo, 1.55, 1.55 );
setEffScaleKey( spep_6 -14 + 34, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 36, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 38, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 40, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 42, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 44, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 46, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 48, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 50, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 52, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 54, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 56, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 58, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 60, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 62, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 64, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 66, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 68, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 70, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_6 -14 + 72, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_6 -14 + 74, ctzuo, 2.65, 2.65 );
setEffScaleKey( spep_6 -14 + 76, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_6 -14 + 78, ctzuo, 3, 3 );

setEffRotateKey( spep_6 -14 + 28, ctzuo, -26.1 );
setEffRotateKey( spep_6 -14 + 30, ctzuo, -26.2 );
setEffRotateKey( spep_6 -14 + 78, ctzuo, -26.2 );

setEffAlphaKey( spep_6 -14 + 28, ctzuo, 255 );
setEffAlphaKey( spep_6 -14 + 72, ctzuo, 255 );
setEffAlphaKey( spep_6 -14 + 74, ctzuo, 170 );
setEffAlphaKey( spep_6 -14 + 76, ctzuo, 85 );
setEffAlphaKey( spep_6 -14 + 78, ctzuo, 0 );

--SE
--SE1=playSe( spep_4, SE_04); --渦を巻く
--stopSe(spep_4+14,SE1,0);
playSe( spep_6+14, 1021); --気弾をうつ

entryFadeBg(  spep_6,  0,  66,  0,  0,  0,  0,  255);  --背景黒
--白フェード
entryFade(  spep_6+58,  4,  6,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

------------------------------------------------------
--  ビーム迫る(60F)
------------------------------------------------------
spep_7 = spep_6+66;

ryusen3 = entryEffectLife(  spep_7,  921,  60,  0x80,  -1,  0,  0,  0);

setEffScaleKey(  spep_7,  ryusen3,  1.88,  1.29);
setEffScaleKey(  spep_7+60,  ryusen3,  1.88,  1.29);
setEffMoveKey(  spep_7,  ryusen3,  0,  0,  0);
setEffMoveKey(  spep_7+60,  ryusen3,  0,  0,  0);
setEffRotateKey(  spep_7,  ryusen3,  27.8);
setEffRotateKey(  spep_7+60,  ryusen3,  27.8);
setEffAlphaKey(  spep_7,  ryusen3,  255);
setEffAlphaKey(  spep_7+60,  ryusen3,  255);

semaru = entryEffect(  spep_7,  SP_07x, 0x100,  -1,  0,  0,  0);  --竜巻ができる

setEffScaleKey(  spep_7,  semaru,  1.0,  1.0);
setEffScaleKey(  spep_7+60,  semaru,  1.0,  1.0);
setEffMoveKey(  spep_7,  semaru,  0,  0);
setEffMoveKey(  spep_7+60,  semaru,  0,  0);
setEffRotateKey(  spep_7,  semaru,  0);
setEffRotateKey(  spep_7+60,  semaru,  0);
setEffAlphaKey(  spep_7,  semaru,  255);
setEffAlphaKey(  spep_7+60,  semaru,  255);



--敵の動き
setDisp( spep_7  + 0, 1, 1 );
setDisp( spep_7+58  , 1, 0 );

changeAnime( spep_7  + 0, 1, 104 );

setMoveKey( spep_7  + 0, 1, 169, -75.8 , 0 );
--setMoveKey( spep_7 -3 + 2, 1, 161.5, -65.8 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 173.3, -84.6 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 172.2, -71.5 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 158.4, -77.5 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 157.4, -64.3 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 169.1, -83.1 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 168.1, -70 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 154.2, -76 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 153.2, -62.8 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 165, -81.6 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 163.9, -68.5 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 150.1, -74.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 149.1, -61.3 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 160.8, -80.1 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 159.8, -67 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 145.9, -73 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 144.9, -59.8 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 156.7, -78.6 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 155.6, -65.4 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 141.8, -71.5 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 140.7, -58.3 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 152.5, -77.1 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 151.5, -63.9 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 137.6, -70 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 136.6, -56.8 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 148.4, -75.6 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 147.3, -62.4 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 133.5, -68.5 , 0 );
setMoveKey( spep_7  + 58, 1, 132.4, -55.3 , 0 );

setScaleKey( spep_7 + 0, 1, 1, 1 );
setScaleKey( spep_7 + 58, 1, 1, 1 );

setRotateKey( spep_7 + 0, 1, 2.8 );
setRotateKey( spep_7 + 2, 1, 3 );
setRotateKey( spep_7 + 58, 1, 3 );


--SE
playSe( spep_7, 1022); --気弾をよる

--白フェード
entryFade(  spep_7+52,  2,  6,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade


entryFadeBg(  spep_7,  0,  60,  0,  0,  0,  0,  255);  --背景黒

------------------------------------------------------
--  ギャン(60F)
------------------------------------------------------
spep_8 = spep_7+60;


gyan = entryEffect(  spep_8,  SP_08x, 0x100,  -1,  0,  0,  0);  --竜巻ができる

setEffShake(  spep_8,  gyan,  60,  20);  --揺れ
setEffScaleKey(  spep_8,  gyan,  1.0,  1.0);
setEffScaleKey(  spep_8+60,  gyan,  1.0,  1.0);
setEffMoveKey(  spep_8,  gyan,  0,  0);
setEffMoveKey(  spep_8+60,  gyan,  0,  0);
setEffRotateKey(  spep_8,  gyan,  0);
setEffRotateKey(  spep_8+60,  gyan,  0);
setEffAlphaKey(  spep_8,  gyan,  255);
setEffAlphaKey(  spep_8+60,  gyan,  255);

--SE
playSe( spep_8, 1023); --爆発

--白フェード
entryFade(  spep_8+52,  4,  10,  4,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade
------------------------------------------------------
--  爆発(240F)
------------------------------------------------------
spep_9 = spep_8+60;

shuchusen9 = entryEffectLife( spep_9+46,  906, 194, 0x100, -1, 0, 0, 0 );  --集中線

setEffMoveKey( spep_9+46, shuchusen9, 0, 0 , 0 );
setEffMoveKey( spep_9+240, shuchusen9, 0, 0 , 0 );
setEffScaleKey( spep_9+46 , shuchusen9, 1.2, 1.3 );
setEffScaleKey( spep_9+240 , shuchusen9, 1.2, 1.3 );
setEffRotateKey( spep_9+46  , shuchusen9, 0 );
setEffRotateKey( spep_9+240 , shuchusen9, 0 );
setEffAlphaKey( spep_9+46 , shuchusen9, 255 );
setEffAlphaKey( spep_9+440, shuchusen9, 255 );

bakuhatsu = entryEffect(  spep_9,  SP_09, 0x100,  -1,  0,  0,  0);  --竜巻ができる

setEffScaleKey(  spep_9,  bakuhatsu,  1.0,  1.0);
setEffScaleKey(  spep_9+240,  bakuhatsu,  1.0,  1.0);
setEffMoveKey(  spep_9,  bakuhatsu,  0,  0);
setEffMoveKey(  spep_9+240,  bakuhatsu,  0,  0);
setEffRotateKey(  spep_9,  bakuhatsu,  0);
setEffRotateKey(  spep_9+240,  bakuhatsu,  0);
setEffAlphaKey(  spep_9,  bakuhatsu,  255);
setEffAlphaKey(  spep_9+240,  bakuhatsu,  255);

entryFade(  spep_9+40,  2,  2,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade
entryFade(  spep_9+80,  4,  2,  2,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --whitefade

--SE
playSe( spep_9, 1069); --気弾をうつ

-- ダメージ表示
dealDamage(spep_9+100);
entryFade( spep_9+190, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_9+200);


end

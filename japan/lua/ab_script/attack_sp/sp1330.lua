--クリリン_太陽拳（ドッカン前）

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 154081; -- 太陽拳構え
SP_02 = 154082; -- 太陽拳
SP_03 = 154083; -- 背後から突っ込む前
SP_04 = 154085; -- 背後から突っ込む後
SP_05 = 154086; -- 体当たり前
SP_06 = 154088; -- 体当たり後
SP_07 = 154089; -- ガの背景
--SP_07 = 154090; -- 地面衝突
--SP_08 = 154091; -- 気弾投げ
--SP_09 = 154093; -- 着弾からマグマ
--SP_10 = 154094; -- 爆発シーン

-- ** 敵 ** --
SP_03x = 154084; 
SP_05x = 154087;
--SP_07x = 154092;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 太陽拳構え(120F)
------------------------------------------------------
spep_0 = 0;


-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_0 + 0, SP_01, 120, 0x100, -1, 0, 0, 0 );  --太陽拳構え(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, kamae, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 120, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 120, kamae, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 16, 906, 104, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 16, shuchusen1, 104, 20 );

setEffMoveKey( spep_0 + 16, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 16, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 120, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 16, shuchusen1, 0 );
setEffRotateKey( spep_0 + 120, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 16, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 120, shuchusen1, 255 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 +40 +14, 190006, 72, 0x100, -1, 0, 140, 520);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 + 40 +14,  ctgogo,  140,  520);
setEffMoveKey(  spep_0 + 40 +86,  ctgogo,  140,  520);

setEffAlphaKey( spep_0 + 40  + 14, ctgogo, 0 );
setEffAlphaKey( spep_0 + 40  + 15, ctgogo, 255 );
setEffAlphaKey( spep_0 + 40  + 16, ctgogo, 255 );
setEffAlphaKey( spep_0 + 40  + 76, ctgogo, 255 );
setEffAlphaKey( spep_0 + 40  + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 40  + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 40  + 82, ctgogo, 128 );
setEffAlphaKey( spep_0 + 40  + 84, ctgogo, 64 );
setEffAlphaKey( spep_0 + 40  + 86, ctgogo, 0 );

setEffRotateKey(  spep_0 + 40 +14,  ctgogo,  0);
setEffRotateKey(  spep_0 + 40 +86,  ctgogo,  0);

setEffScaleKey(  spep_0 + 40 +14,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 + 40 +78,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 + 40 +86,  ctgogo, 1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0, 1007);  
playSe( spep_0 + 40+16,  1018);  --ゴゴゴ

-- ** 次の準備 ** --
spep_1 = spep_0 + 120;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 -10, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 太陽拳(80F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 12, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 12, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 12, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 12, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 12, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 12, shuchusen2, 255 );

taiyoken = entryEffectLife( spep_2 + 0, SP_02, 80, 0x80, -1, 0, 0, 0 );  --太陽拳(ef_002)
setEffMoveKey( spep_2 + 0, taiyoken, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, taiyoken, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, taiyoken, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, taiyoken, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, taiyoken, 0 );
setEffRotateKey( spep_2 + 80, taiyoken, 0 );
setEffAlphaKey( spep_2 + 0, taiyoken, 255 );
setEffAlphaKey( spep_2 + 80, taiyoken, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE2 = playSe( spep_2,  1127);  -- 太陽拳

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE2, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end


-- ** 白フェード ** --
entryFade( spep_2 + 70, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 80;


------------------------------------------------------
-- タックル(90F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 74 , 906, 14 , 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 74, shuchusen3, 14, 10 );

setEffMoveKey( spep_3 + 74, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 74, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 88, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_3 + 74, shuchusen3, 0 );
setEffRotateKey( spep_3 + 88, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 74, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 85, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 88, shuchusen3, 0 );

-- ** エフェクト等 ** --
attack_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --体当たり(ef_003)
setEffMoveKey( spep_3 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 88, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 88, attack_f, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );
changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, -20, -40 , 0 );
setMoveKey( spep_3 + 2, 1, -20, -40.1 , 0 );
setMoveKey( spep_3 + 4, 1, -20, -40.3 , 0 );
setMoveKey( spep_3 + 6, 1, -19.9, -40.6 , 0 );
setMoveKey( spep_3 + 8, 1, -19.9, -41 , 0 );
setMoveKey( spep_3 + 10, 1, -19.9, -41.5 , 0 );
setMoveKey( spep_3 + 12, 1, -19.8, -42.1 , 0 );
setMoveKey( spep_3 + 14, 1, -19.7, -42.9 , 0 );
setMoveKey( spep_3 + 16, 1, -12.8, -49.5 , 0 );
setMoveKey( spep_3 + 18, 1, -12.6, -50.5 , 0 );
setMoveKey( spep_3 + 20, 1, -12.5, -51.5 , 0 );
setMoveKey( spep_3 + 22, 1, -12.4, -52.7 , 0 );
setMoveKey( spep_3 + 24, 1, -12.3, -54 , 0 );
setMoveKey( spep_3 + 26, 1, -12.2, -55.3 , 0 );
setMoveKey( spep_3 + 28, 1, -4.8, -63.2 , 0 );
setMoveKey( spep_3 + 30, 1, -3.4, -65.8 , 0 );
setMoveKey( spep_3 + 32, 1, -1, -69.4 , 0 );
setMoveKey( spep_3 + 34, 1, 2.5, -73.9 , 0 );
setMoveKey( spep_3 + 36, 1, 13.8, -85.4 , 0 );
setMoveKey( spep_3 + 38, 1, 19.6, -92.1 , 0 );
setMoveKey( spep_3 + 40, 1, 26.9, -100.1 , 0 );
setMoveKey( spep_3 + 42, 1, 42.3, -115.3 , 0 );
setMoveKey( spep_3 + 44, 1, 52.8, -126.4 , 0 );
setMoveKey( spep_3 + 46, 1, 65.4, -139.3 , 0 );
setMoveKey( spep_3 + 48, 1, 86.6, -159.8 , 0 );
setMoveKey( spep_3 + 50, 1, 104, -177 , 0 );
setMoveKey( spep_3 + 52, 1, 130.7, -202.4 , 0 );
setMoveKey( spep_3 + 54, 1, 155.1, -225.8 , 0 );
setMoveKey( spep_3 + 56, 1, 189.8, -258.1 , 0 );
setMoveKey( spep_3 + 58, 1, 224.8, -290.8 , 0 );
setMoveKey( spep_3 + 60, 1, 272.4, -334.7 , 0 );
setMoveKey( spep_3 + 62, 1, 330.8, -387.5 , 0 );
setMoveKey( spep_3 + 64, 1, 402.3, -451.6 , 0 );
setMoveKey( spep_3 + 66, 1, 511.3, -547.5 , 0 );
setMoveKey( spep_3 + 68, 1, 830.1, -819.3 , 0 );
setMoveKey( spep_3 + 70, 1, 830.5, -825.9 , 0 );
setMoveKey( spep_3 + 72, 1, 831.2, -833.5 , 0 );
setMoveKey( spep_3 + 74, 1, 831.7, -842.6 , 0 );
setMoveKey( spep_3 + 76, 1, 832.4, -854.6 , 0 );
setMoveKey( spep_3 + 78, 1, 834.1, -877.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 14, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 16, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 26, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 28, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 30, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 32, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 34, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 36, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 38, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 40, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 42, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 44, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 46, 1, 1.83, 1.83 );
setScaleKey( spep_3 + 48, 1, 1.86, 1.86 );
setScaleKey( spep_3 + 50, 1, 1.93, 1.93 );
setScaleKey( spep_3 + 52, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 54, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 56, 1, 2.16, 2.16 );
setScaleKey( spep_3 + 58, 1, 2.29, 2.29 );
setScaleKey( spep_3 + 60, 1, 2.43, 2.43 );
setScaleKey( spep_3 + 62, 1, 2.6, 2.6 );
setScaleKey( spep_3 + 64, 1, 2.86, 2.86 );
setScaleKey( spep_3 + 66, 1, 3.22, 3.22 );
setScaleKey( spep_3 + 68, 1, 4.36, 4.36 );
setScaleKey( spep_3 + 70, 1, 4.32, 4.32 );
setScaleKey( spep_3 + 72, 1, 4.28, 4.28 );
setScaleKey( spep_3 + 74, 1, 4.2, 4.2 );
setScaleKey( spep_3 + 76, 1, 4.12, 4.12 );
setScaleKey( spep_3 + 78, 1, 4, 4 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 78, 1, 0 );



attack_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --体当たり背景(ef_004)
setEffMoveKey( spep_3 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 88, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 88, attack_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
playSe( spep_3 + 0, 1073);
playSe( spep_3 + 60, 1072); --アップ
setSeVolume( spep_3+60, 1072, 150);


 -- * 次の準備 * --
 spep_4 = spep_3 + 86;
------------------------------------------------------
-- タックル(0F)
------------------------------------------------------

shuchusen4 = entryEffectLife( spep_4 - 3 + 12,  906, 34, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 - 3 + 12, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 - 3 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 - 3 + 12, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 - 3 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 - 3 + 12, shuchusen4, 0 );
setEffRotateKey( spep_4 - 3 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 - 3 + 12, shuchusen4, 255 );
setEffAlphaKey( spep_4 - 3 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 - 3 + 15, shuchusen4, 0 );
setEffAlphaKey( spep_4 - 3 + 23, shuchusen4, 0 );
setEffAlphaKey( spep_4 - 3 + 24, shuchusen4, 255 );
setEffAlphaKey( spep_4 - 3 + 46, shuchusen4, 255 );

-- ** エフェクト等 ** --
attack_f2 = entryEffectLife( spep_4 + 0, SP_05, 80, 0x100, -1, 0, 0, 0 );  --体当たり(ef_005)
setEffMoveKey( spep_4 + 0, attack_f2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, attack_f2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, attack_f2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, attack_f2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_f2, 0 );
setEffRotateKey( spep_4 + 80, attack_f2, 0 );
setEffAlphaKey( spep_4 + 0, attack_f2, 255 );
setEffAlphaKey( spep_4 + 80, attack_f2, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 78 - 3, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 - 3 + 12, 1, 108 );

setMoveKey( spep_4 + 0, 1, 240, 0 , 0 );
--setMoveKey( spep_4 - 3 + 2, 1, 200, 0 , 0 );
setMoveKey( spep_4 - 3 + 4, 1, 160, 0 , 0 );
setMoveKey( spep_4 - 3 + 6, 1, 120, 0 , 0 );
setMoveKey( spep_4 - 3 + 8, 1, 80, 0 , 0 );
setMoveKey( spep_4 - 3 + 11, 1, 40, 0 , 0 );
setMoveKey( spep_4 - 3 + 12, 1, 0, 0 , 0 );
setMoveKey( spep_4 - 3 + 14, 1, 3, 0 , 0 );
setMoveKey( spep_4 - 3 + 16, 1, 6, 0.1 , 0 );
setMoveKey( spep_4 - 3 + 18, 1, 9, 0.1 , 0 );
setMoveKey( spep_4 - 3 + 20, 1, 11.9, 0.1 , 0 );
setMoveKey( spep_4 - 3 + 22, 1, 14.9, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 24, 1, 17.9, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 26, 1, 81.7, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 28, 1, 25.4, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 30, 1, 79.2, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 32, 1, 32.9, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 34, 1, 76.6, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 36, 1, 60.4, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 38, 1, 44.1, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 40, 1, 57.9, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 42, 1, 71.6, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 44, 1, 65.4, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 46, 1, 59.2, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 48, 1, 68, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 50, 1, 76.8, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 52, 1, 75.6, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 54, 1, 74.4, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 56, 1, 97.2, 0.1 , 0 );
setMoveKey( spep_4 - 3 + 58, 1, 120, 0 , 0 );
setMoveKey( spep_4 - 3 + 60, 1, 170.7, 0 , 0 );
setMoveKey( spep_4 - 3 + 62, 1, 256.8, 0 , 0 );
setMoveKey( spep_4 - 3 + 64, 1, 366, 0 , 0 );
setMoveKey( spep_4 - 3 + 66, 1, 487.9, 0 , 0 );
setMoveKey( spep_4 - 3 + 68, 1, 613, 0 , 0 );
setMoveKey( spep_4 - 3 + 70, 1, 732.6, 0 , 0 );
setMoveKey( spep_4 - 3 + 72, 1, 838.6, 0 , 0 );
setMoveKey( spep_4 - 3 + 74, 1, 923.4, 0 , 0 );
setMoveKey( spep_4 - 3 + 76, 1, 979.6, 0 , 0 );
setMoveKey( spep_4 - 3 + 78, 1, 1000, 0 , 0 );


setScaleKey( spep_4  + 0, 1, 1.8, 1.8 );
setScaleKey( spep_4 - 3 + 78, 1, 1.8, 1.8 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 - 3 + 14, 1, 0 );
setRotateKey( spep_4 - 3 + 16, 1, 0.1 );
setRotateKey( spep_4 - 3 + 18, 1, 0.2 );
setRotateKey( spep_4 - 3 + 20, 1, 0.2 );
setRotateKey( spep_4 - 3 + 22, 1, 0.3 );
setRotateKey( spep_4 - 3 + 30, 1, 0.3 );
setRotateKey( spep_4 - 3 + 32, 1, 0.5 );
setRotateKey( spep_4 - 3 + 34, 1, 0.6 );
setRotateKey( spep_4 - 3 + 36, 1, 0.7 );
setRotateKey( spep_4 - 3 + 38, 1, 0.8 );
setRotateKey( spep_4 - 3 + 40, 1, 1 );
setRotateKey( spep_4 - 3 + 42, 1, 1.1 );
setRotateKey( spep_4 - 3 + 44, 1, 1.2 );
setRotateKey( spep_4 - 3 + 46, 1, 1.3 );
setRotateKey( spep_4 - 3 + 48, 1, 1.6 );
setRotateKey( spep_4 - 3 + 50, 1, 1.8 );
setRotateKey( spep_4 - 3 + 52, 1, 2 );
setRotateKey( spep_4 - 3 + 54, 1, 2.1 );
setRotateKey( spep_4 - 3 + 56, 1, 3.6 );
setRotateKey( spep_4 - 3 + 58, 1, 5 );
setRotateKey( spep_4 - 3 + 60, 1, 5.9 );
setRotateKey( spep_4 - 3 + 62, 1, 7.3 );
setRotateKey( spep_4 - 3 + 64, 1, 9.2 );
setRotateKey( spep_4 - 3 + 66, 1, 11.3 );
setRotateKey( spep_4 - 3 + 68, 1, 13.4 );
setRotateKey( spep_4 - 3 + 70, 1, 15.4 );
setRotateKey( spep_4 - 3 + 72, 1, 17.3 );
setRotateKey( spep_4 - 3 + 74, 1, 18.7 );
setRotateKey( spep_4 - 3 + 76, 1, 19.7 );
setRotateKey( spep_4 - 3 + 78, 1, 20 );

attack_b2 = entryEffectLife( spep_4 + 0, SP_06, 80, 0x80, -1, 0, 0, 0 );  --体当たり背景(ef_006)
setEffMoveKey( spep_4 + 0, attack_b2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, attack_b2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, attack_b2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, attack_b2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_b2, 0 );
setEffRotateKey( spep_4 + 80, attack_b2, 0 );
setEffAlphaKey( spep_4 + 0, attack_b2, 255 );
setEffAlphaKey( spep_4 + 80, attack_b2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 76, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 - 3 + 12,  1010);  --タックル
playSe( spep_4 - 3 + 12,  1002);  --タックル

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;

------------------------------------------------------
-- ガッ
------------------------------------------------------

--敵の動き--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

haikei = entryEffectLife( spep_5 + 0, SP_07, 110, 0x80, -1, 0, 0, 0 );  --体当たり背景(ef_006)
setEffMoveKey( spep_5 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_5 + 110, haikei, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, haikei, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, haikei, 0 );
setEffRotateKey( spep_5 + 110, haikei, 0 );
setEffAlphaKey( spep_5 + 0, haikei, 255 );
setEffAlphaKey( spep_5 + 110, haikei, 255 );

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 30, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_5+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);
--entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+110);

else



------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 太陽拳構え(120F)
------------------------------------------------------
spep_0 = 0;


-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_0 + 0, SP_01, 120, 0x100, -1, 0, 0, 0 );  --太陽拳構え(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_0 + 120, kamae, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 120, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 120, kamae, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 16, 906, 104, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 16, shuchusen1, 104, 20 );

setEffMoveKey( spep_0 + 16, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 16, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 120, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 16, shuchusen1, 0 );
setEffRotateKey( spep_0 + 120, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 16, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 120, shuchusen1, 255 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 +40 +14, 190006, 72, 0x100, -1, 0, 140, 520);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 + 40 +14,  ctgogo,  140,  520);
setEffMoveKey(  spep_0 + 40 +86,  ctgogo,  140,  520);

setEffAlphaKey( spep_0 + 40  + 14, ctgogo, 0 );
setEffAlphaKey( spep_0 + 40  + 15, ctgogo, 255 );
setEffAlphaKey( spep_0 + 40  + 16, ctgogo, 255 );
setEffAlphaKey( spep_0 + 40  + 76, ctgogo, 255 );
setEffAlphaKey( spep_0 + 40  + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 40  + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 40  + 82, ctgogo, 128 );
setEffAlphaKey( spep_0 + 40  + 84, ctgogo, 64 );
setEffAlphaKey( spep_0 + 40  + 86, ctgogo, 0 );

setEffRotateKey(  spep_0 + 40 +14,  ctgogo,  0);
setEffRotateKey(  spep_0 + 40 +86,  ctgogo,  0);

setEffScaleKey(  spep_0 + 40 +14,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 + 40 +78,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 + 40 +86,  ctgogo, -1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 0, 1007);  
playSe( spep_0 + 40+16,  1018);  --ゴゴゴ

-- ** 次の準備 ** --
spep_1 = spep_0 + 120;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 -10, 4, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 太陽拳(80F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 12, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 12, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 12, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 12, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 12, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 12, shuchusen2, 255 );

taiyoken = entryEffectLife( spep_2 + 0, SP_02, 80, 0x80, -1, 0, 0, 0 );  --太陽拳(ef_002)
setEffMoveKey( spep_2 + 0, taiyoken, 0, 0 , 0 );
setEffMoveKey( spep_2 + 80, taiyoken, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, taiyoken, -1.0, 1.0 );
setEffScaleKey( spep_2 + 80, taiyoken, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, taiyoken, 0 );
setEffRotateKey( spep_2 + 80, taiyoken, 0 );
setEffAlphaKey( spep_2 + 0, taiyoken, 255 );
setEffAlphaKey( spep_2 + 80, taiyoken, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE2 = playSe( spep_2,  1127);  -- 太陽拳

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE2, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end


-- ** 白フェード ** --
entryFade( spep_2 + 70, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 80;


------------------------------------------------------
-- タックル(90F)
------------------------------------------------------
-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 74 , 906, 14 , 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 74, shuchusen3, 14, 10 );

setEffMoveKey( spep_3 + 74, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 74, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 88, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_3 + 74, shuchusen3, 0 );
setEffRotateKey( spep_3 + 88, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 74, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 85, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 88, shuchusen3, 0 );

-- ** エフェクト等 ** --
attack_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --体当たり(ef_003)
setEffMoveKey( spep_3 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 88, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 88, attack_f, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 78, 1, 0 );
changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, -20, -40 , 0 );
setMoveKey( spep_3 + 2, 1, -20, -40.1 , 0 );
setMoveKey( spep_3 + 4, 1, -20, -40.3 , 0 );
setMoveKey( spep_3 + 6, 1, -19.9, -40.6 , 0 );
setMoveKey( spep_3 + 8, 1, -19.9, -41 , 0 );
setMoveKey( spep_3 + 10, 1, -19.9, -41.5 , 0 );
setMoveKey( spep_3 + 12, 1, -19.8, -42.1 , 0 );
setMoveKey( spep_3 + 14, 1, -19.7, -42.9 , 0 );
setMoveKey( spep_3 + 16, 1, -12.8, -49.5 , 0 );
setMoveKey( spep_3 + 18, 1, -12.6, -50.5 , 0 );
setMoveKey( spep_3 + 20, 1, -12.5, -51.5 , 0 );
setMoveKey( spep_3 + 22, 1, -12.4, -52.7 , 0 );
setMoveKey( spep_3 + 24, 1, -12.3, -54 , 0 );
setMoveKey( spep_3 + 26, 1, -12.2, -55.3 , 0 );
setMoveKey( spep_3 + 28, 1, -4.8, -63.2 , 0 );
setMoveKey( spep_3 + 30, 1, -3.4, -65.8 , 0 );
setMoveKey( spep_3 + 32, 1, -1, -69.4 , 0 );
setMoveKey( spep_3 + 34, 1, 2.5, -73.9 , 0 );
setMoveKey( spep_3 + 36, 1, 13.8, -85.4 , 0 );
setMoveKey( spep_3 + 38, 1, 19.6, -92.1 , 0 );
setMoveKey( spep_3 + 40, 1, 26.9, -100.1 , 0 );
setMoveKey( spep_3 + 42, 1, 42.3, -115.3 , 0 );
setMoveKey( spep_3 + 44, 1, 52.8, -126.4 , 0 );
setMoveKey( spep_3 + 46, 1, 65.4, -139.3 , 0 );
setMoveKey( spep_3 + 48, 1, 86.6, -159.8 , 0 );
setMoveKey( spep_3 + 50, 1, 104, -177 , 0 );
setMoveKey( spep_3 + 52, 1, 130.7, -202.4 , 0 );
setMoveKey( spep_3 + 54, 1, 155.1, -225.8 , 0 );
setMoveKey( spep_3 + 56, 1, 189.8, -258.1 , 0 );
setMoveKey( spep_3 + 58, 1, 224.8, -290.8 , 0 );
setMoveKey( spep_3 + 60, 1, 272.4, -334.7 , 0 );
setMoveKey( spep_3 + 62, 1, 330.8, -387.5 , 0 );
setMoveKey( spep_3 + 64, 1, 402.3, -451.6 , 0 );
setMoveKey( spep_3 + 66, 1, 511.3, -547.5 , 0 );
setMoveKey( spep_3 + 68, 1, 830.1, -819.3 , 0 );
setMoveKey( spep_3 + 70, 1, 830.5, -825.9 , 0 );
setMoveKey( spep_3 + 72, 1, 831.2, -833.5 , 0 );
setMoveKey( spep_3 + 74, 1, 831.7, -842.6 , 0 );
setMoveKey( spep_3 + 76, 1, 832.4, -854.6 , 0 );
setMoveKey( spep_3 + 78, 1, 834.1, -877.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 14, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 16, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 26, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 28, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 30, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 32, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 34, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 36, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 38, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 40, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 42, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 44, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 46, 1, 1.83, 1.83 );
setScaleKey( spep_3 + 48, 1, 1.86, 1.86 );
setScaleKey( spep_3 + 50, 1, 1.93, 1.93 );
setScaleKey( spep_3 + 52, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 54, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 56, 1, 2.16, 2.16 );
setScaleKey( spep_3 + 58, 1, 2.29, 2.29 );
setScaleKey( spep_3 + 60, 1, 2.43, 2.43 );
setScaleKey( spep_3 + 62, 1, 2.6, 2.6 );
setScaleKey( spep_3 + 64, 1, 2.86, 2.86 );
setScaleKey( spep_3 + 66, 1, 3.22, 3.22 );
setScaleKey( spep_3 + 68, 1, 4.36, 4.36 );
setScaleKey( spep_3 + 70, 1, 4.32, 4.32 );
setScaleKey( spep_3 + 72, 1, 4.28, 4.28 );
setScaleKey( spep_3 + 74, 1, 4.2, 4.2 );
setScaleKey( spep_3 + 76, 1, 4.12, 4.12 );
setScaleKey( spep_3 + 78, 1, 4, 4 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 78, 1, 0 );



attack_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --体当たり背景(ef_004)
setEffMoveKey( spep_3 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 88, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 88, attack_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 0, 1073);
playSe( spep_3 + 60, 1072); --アップ
setSeVolume( spep_3+60, 1072, 150);

 -- * 次の準備 * --
 spep_4 = spep_3 + 86;

------------------------------------------------------
-- タックル(0F)
------------------------------------------------------

shuchusen4 = entryEffectLife( spep_4 - 3 + 12,  906, 34, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 - 3 + 12, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 - 3 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 - 3 + 12, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 - 3 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 - 3 + 12, shuchusen4, 0 );
setEffRotateKey( spep_4 - 3 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 - 3 + 12, shuchusen4, 255 );
setEffAlphaKey( spep_4 - 3 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 - 3 + 15, shuchusen4, 0 );
setEffAlphaKey( spep_4 - 3 + 23, shuchusen4, 0 );
setEffAlphaKey( spep_4 - 3 + 24, shuchusen4, 255 );
setEffAlphaKey( spep_4 - 3 + 46, shuchusen4, 255 );

-- ** エフェクト等 ** --
attack_f2 = entryEffectLife( spep_4 + 0, SP_05x, 80, 0x100, -1, 0, 0, 0 );  --体当たり(ef_005)
setEffMoveKey( spep_4 + 0, attack_f2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, attack_f2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, attack_f2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, attack_f2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_f2, 0 );
setEffRotateKey( spep_4 + 80, attack_f2, 0 );
setEffAlphaKey( spep_4 + 0, attack_f2, 255 );
setEffAlphaKey( spep_4 + 80, attack_f2, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 78 - 3, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 - 3 + 12, 1, 108 );

setMoveKey( spep_4 + 0, 1, 240, 0 , 0 );
--setMoveKey( spep_4 - 3 + 2, 1, 200, 0 , 0 );
setMoveKey( spep_4 - 3 + 4, 1, 160, 0 , 0 );
setMoveKey( spep_4 - 3 + 6, 1, 120, 0 , 0 );
setMoveKey( spep_4 - 3 + 8, 1, 80, 0 , 0 );
setMoveKey( spep_4 - 3 + 11, 1, 40, 0 , 0 );
setMoveKey( spep_4 - 3 + 12, 1, 0, 0 , 0 );
setMoveKey( spep_4 - 3 + 14, 1, 3, 0 , 0 );
setMoveKey( spep_4 - 3 + 16, 1, 6, 0.1 , 0 );
setMoveKey( spep_4 - 3 + 18, 1, 9, 0.1 , 0 );
setMoveKey( spep_4 - 3 + 20, 1, 11.9, 0.1 , 0 );
setMoveKey( spep_4 - 3 + 22, 1, 14.9, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 24, 1, 17.9, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 26, 1, 81.7, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 28, 1, 25.4, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 30, 1, 79.2, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 32, 1, 32.9, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 34, 1, 76.6, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 36, 1, 60.4, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 38, 1, 44.1, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 40, 1, 57.9, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 42, 1, 71.6, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 44, 1, 65.4, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 46, 1, 59.2, 0.3 , 0 );
setMoveKey( spep_4 - 3 + 48, 1, 68, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 50, 1, 76.8, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 52, 1, 75.6, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 54, 1, 74.4, 0.2 , 0 );
setMoveKey( spep_4 - 3 + 56, 1, 97.2, 0.1 , 0 );
setMoveKey( spep_4 - 3 + 58, 1, 120, 0 , 0 );
setMoveKey( spep_4 - 3 + 60, 1, 170.7, 0 , 0 );
setMoveKey( spep_4 - 3 + 62, 1, 256.8, 0 , 0 );
setMoveKey( spep_4 - 3 + 64, 1, 366, 0 , 0 );
setMoveKey( spep_4 - 3 + 66, 1, 487.9, 0 , 0 );
setMoveKey( spep_4 - 3 + 68, 1, 613, 0 , 0 );
setMoveKey( spep_4 - 3 + 70, 1, 732.6, 0 , 0 );
setMoveKey( spep_4 - 3 + 72, 1, 838.6, 0 , 0 );
setMoveKey( spep_4 - 3 + 74, 1, 923.4, 0 , 0 );
setMoveKey( spep_4 - 3 + 76, 1, 979.6, 0 , 0 );
setMoveKey( spep_4 - 3 + 78, 1, 1000, 0 , 0 );


setScaleKey( spep_4  + 0, 1, 1.8, 1.8 );
setScaleKey( spep_4 - 3 + 78, 1, 1.8, 1.8 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 - 3 + 14, 1, 0 );
setRotateKey( spep_4 - 3 + 16, 1, 0.1 );
setRotateKey( spep_4 - 3 + 18, 1, 0.2 );
setRotateKey( spep_4 - 3 + 20, 1, 0.2 );
setRotateKey( spep_4 - 3 + 22, 1, 0.3 );
setRotateKey( spep_4 - 3 + 30, 1, 0.3 );
setRotateKey( spep_4 - 3 + 32, 1, 0.5 );
setRotateKey( spep_4 - 3 + 34, 1, 0.6 );
setRotateKey( spep_4 - 3 + 36, 1, 0.7 );
setRotateKey( spep_4 - 3 + 38, 1, 0.8 );
setRotateKey( spep_4 - 3 + 40, 1, 1 );
setRotateKey( spep_4 - 3 + 42, 1, 1.1 );
setRotateKey( spep_4 - 3 + 44, 1, 1.2 );
setRotateKey( spep_4 - 3 + 46, 1, 1.3 );
setRotateKey( spep_4 - 3 + 48, 1, 1.6 );
setRotateKey( spep_4 - 3 + 50, 1, 1.8 );
setRotateKey( spep_4 - 3 + 52, 1, 2 );
setRotateKey( spep_4 - 3 + 54, 1, 2.1 );
setRotateKey( spep_4 - 3 + 56, 1, 3.6 );
setRotateKey( spep_4 - 3 + 58, 1, 5 );
setRotateKey( spep_4 - 3 + 60, 1, 5.9 );
setRotateKey( spep_4 - 3 + 62, 1, 7.3 );
setRotateKey( spep_4 - 3 + 64, 1, 9.2 );
setRotateKey( spep_4 - 3 + 66, 1, 11.3 );
setRotateKey( spep_4 - 3 + 68, 1, 13.4 );
setRotateKey( spep_4 - 3 + 70, 1, 15.4 );
setRotateKey( spep_4 - 3 + 72, 1, 17.3 );
setRotateKey( spep_4 - 3 + 74, 1, 18.7 );
setRotateKey( spep_4 - 3 + 76, 1, 19.7 );
setRotateKey( spep_4 - 3 + 78, 1, 20 );

attack_b2 = entryEffectLife( spep_4 + 0, SP_06, 80, 0x80, -1, 0, 0, 0 );  --体当たり背景(ef_006)
setEffMoveKey( spep_4 + 0, attack_b2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, attack_b2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, attack_b2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, attack_b2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_b2, 0 );
setEffRotateKey( spep_4 + 80, attack_b2, 0 );
setEffAlphaKey( spep_4 + 0, attack_b2, 255 );
setEffAlphaKey( spep_4 + 80, attack_b2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 76, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 - 3 + 12,  1023);  --タックル
playSe( spep_4 - 3 + 12, 1002); --タックル

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;

------------------------------------------------------
-- ガッ
------------------------------------------------------

--敵の動き--
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1080 );

--爆発エフェクト
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setDamage( spep_5 +16, 1, 0);  -- ダメージ振動等
setShake(spep_5+8,6,15);
setShake(spep_5+14,15,10);

haikei = entryEffectLife( spep_5 + 0, SP_07, 110, 0x80, -1, 0, 0, 0 );  --体当たり背景(ef_006)
setEffMoveKey( spep_5 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_5 + 110, haikei, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, haikei, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, haikei, 0 );
setEffRotateKey( spep_5 + 110, haikei, 0 );
setEffAlphaKey( spep_5 + 0, haikei, 255 );
setEffAlphaKey( spep_5 + 110, haikei, 255 );

--書き文字--
ctGa = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_5 + 14, ctGa, 30, 10);

setEffMoveKey( spep_5 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_5 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_5 + 14, ctGa, -40 );
setEffRotateKey( spep_5 + 16, ctGa, -31 );
setEffRotateKey( spep_5 + 18, ctGa, -40 );
setEffRotateKey( spep_5 + 20, ctGa, -31 );
setEffRotateKey( spep_5 + 22, ctGa, -40 );
setEffRotateKey( spep_5 + 24, ctGa, -31);
setEffRotateKey( spep_5 + 26, ctGa, -40 );
setEffRotateKey( spep_5 + 28, ctGa, -31);
setEffRotateKey( spep_5 + 30, ctGa, -40 );

setEffAlphaKey( spep_5 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_5+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_5+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_5+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);
--entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_5+110);

end
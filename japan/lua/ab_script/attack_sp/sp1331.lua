--クリリン_太陽拳（ドッカン後）

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
SP_07 = 154090; -- 地面衝突
SP_08 = 154091; -- 気弾投げ
SP_09 = 154093; -- 着弾からマグマ
SP_10 = 154094; -- 爆発シーン

-- ** 敵 ** --
SP_03x = 154084; 
SP_05x = 154087;
SP_08x = 154092;

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
-- 地面(228F)
------------------------------------------------------

-- ** 敵 ** --
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 24, 1, 0 );
--setDisp( spep_5  + 25, 1, 0 );
changeAnime( spep_5  + 0, 1, 105 );

setMoveKey( spep_5  + 0, 1, 69.4, -57.9 , 0 );
setMoveKey( spep_5  + 2, 1, 58.6, -54.7 , 0 );
setMoveKey( spep_5  + 4, 1, 49.1, -52 , 0 );
setMoveKey( spep_5  + 6, 1, 40.8, -49.6 , 0 );
setMoveKey( spep_5  + 8, 1, 33.6, -47.5 , 0 );
setMoveKey( spep_5  + 10, 1, 27.5, -45.7 , 0 );
setMoveKey( spep_5  + 12, 1, 22.5, -44.2 , 0 );
setMoveKey( spep_5  + 14, 1, 18.6, -43.1 , 0 );
setMoveKey( spep_5  + 16, 1, 15.5, -42.2 , 0 );
setMoveKey( spep_5  + 18, 1, 13, -41.5 , 0 );
setMoveKey( spep_5  + 20, 1, 10.9, -40.9 , 0 );
setMoveKey( spep_5  + 22, 1, 9.4, -40.4 , 0 );
setMoveKey( spep_5  + 24, 1, 8.4, -40.1 , 0 );
setMoveKey( spep_5  + 26, 1, 8.1, -40 , 0 );

setScaleKey( spep_5  + 0, 1, 5.21, 5.21 );
setScaleKey( spep_5  + 2, 1, 4.37, 4.37 );
setScaleKey( spep_5  + 4, 1, 3.63, 3.63 );
setScaleKey( spep_5  + 6, 1, 2.99, 2.99 );
setScaleKey( spep_5  + 8, 1, 2.43, 2.43 );
setScaleKey( spep_5  + 10, 1, 1.96, 1.96 );
setScaleKey( spep_5  + 12, 1, 1.57, 1.57 );
setScaleKey( spep_5  + 14, 1, 1.27, 1.27 );
setScaleKey( spep_5  + 16, 1, 1.03, 1.03 );
setScaleKey( spep_5  + 18, 1, 0.83, 0.83 );
setScaleKey( spep_5  + 20, 1, 0.68, 0.68 );
setScaleKey( spep_5  + 22, 1, 0.56, 0.56 );
setScaleKey( spep_5  + 24, 1, 0.48, 0.48 );
setScaleKey( spep_5  + 26, 1, 0.45, 0.45 );

setRotateKey( spep_5  + 0, 1, -7.5 );
setRotateKey( spep_5  + 26, 1, -7.5 );

-- ** 書き文字 ** --
ctfogon = entryEffectLife( spep_5 -3 + 28,  10018, 48, 0x100, -1, 0, -87.8, 234.3 );

setEffMoveKey( spep_5 -3 + 28, ctfogon, -87.8, 234.3 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctfogon, -87, 232.4 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctfogon, -84.9, 231.1 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctfogon, -88.8, 230.9 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctfogon, -85.7, 231.2 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctfogon, -87.2, 231.9 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 56, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 58, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 60, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 62, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 64, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 66, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 68, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 70, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 72, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 74, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 76, ctfogon, -86, 231.7 , 0 );

setEffScaleKey( spep_5 -3 + 28, ctfogon, 1.06, 1.06 );
setEffScaleKey( spep_5 -3 + 30, ctfogon, 2.28, 2.28 );
setEffScaleKey( spep_5 -3 + 32, ctfogon, 2.89, 2.89 );
setEffScaleKey( spep_5 -3 + 34, ctfogon, 2.75, 2.75 );
setEffScaleKey( spep_5 -3 + 36, ctfogon, 2.61, 2.61 );
setEffScaleKey( spep_5 -3 + 38, ctfogon, 2.47, 2.47 );
setEffScaleKey( spep_5 -3 + 40, ctfogon, 2.34, 2.34 );
setEffScaleKey( spep_5 -3 + 76, ctfogon, 2.34, 2.34 );

setEffRotateKey( spep_5 -3 + 28, ctfogon, -32.7 );
setEffRotateKey( spep_5 -3 + 30, ctfogon, -46.1 );
setEffRotateKey( spep_5 -3 + 32, ctfogon, -38.7 );
setEffRotateKey( spep_5 -3 + 34, ctfogon, -24.2 );
setEffRotateKey( spep_5 -3 + 36, ctfogon, -32.9 );
setEffRotateKey( spep_5 -3 + 38, ctfogon, -43.6 );
setEffRotateKey( spep_5 -3 + 40, ctfogon, -32.7 );
setEffRotateKey( spep_5 -3 + 76, ctfogon, -32.7 );

setEffAlphaKey( spep_5 -3 + 28, ctfogon, 255 );
setEffAlphaKey( spep_5 -3 + 62, ctfogon, 255 );
setEffAlphaKey( spep_5 -3 + 64, ctfogon, 219 );
setEffAlphaKey( spep_5 -3 + 66, ctfogon, 182 );
setEffAlphaKey( spep_5 -3 + 68, ctfogon, 146 );
setEffAlphaKey( spep_5 -3 + 70, ctfogon, 109 );
setEffAlphaKey( spep_5 -3 + 72, ctfogon, 73 );
setEffAlphaKey( spep_5 -3 + 74, ctfogon, 36 );
setEffAlphaKey( spep_5 -3 + 76, ctfogon, 0 );


-- ** エフェクト等 ** --
jimen = entryEffect( spep_5 + 0, SP_07,  0x80, -1, 0, 0, 0 );  --地面(ef_007)
setEffMoveKey( spep_5 + 0, jimen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, jimen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, jimen, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, jimen, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, jimen, 0 );
setEffRotateKey( spep_5 + 100, jimen, 0 );
setEffAlphaKey( spep_5 + 0, jimen, 255 );
setEffAlphaKey( spep_5 + 100, jimen, 255 );


-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_5 -3 + 28,  1023);  --激突

-- ** 白フェード ** --
entryFade( spep_5 + 96, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- **次の準備 ** --
spep_6 = spep_5 + 100; 

------------------------------------------------------
-- 気弾(70F)
------------------------------------------------------

shuchusen6 = entryEffectLife( spep_6 + 0,  906, 20, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 20, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen6, 1, 1 );
setEffScaleKey( spep_6 + 8, shuchusen6, 1, 1 );
setEffScaleKey( spep_6 + 20-5, shuchusen6, 1.25, 1.25 );
setEffScaleKey( spep_6 + 20, shuchusen6, 1.25, 1.25 );

setEffRotateKey( spep_6 + 0, shuchusen6, 0 );
setEffRotateKey( spep_6 + 20, shuchusen6, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 8, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 9, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 20-6, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 20-5, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 20-2, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 19, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 20, shuchusen6, 0 );


-- ** エフェクト等 ** --
kidan = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --気弾(ef_008)
setEffMoveKey( spep_6 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 70, kidan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 70, kidan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kidan, 0 );
setEffRotateKey( spep_6 + 70, kidan, 0 );
setEffAlphaKey( spep_6 + 0, kidan, 255 );
setEffAlphaKey( spep_6 + 70, kidan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

-- +* 音 ** --
--playSe( spep_6 + 0,  1007);  --構える
playSe( spep_6 + 20 -3,  44);  --投げる
setSeVolume( spep_6 + 20 -3,  44, 130 );
playSe( spep_6 + 20 -3,  1012);  --投げる
setSeVolume( spep_6 + 20 -3,  1012, 110 );

-- ** 白フェード ** --
entryFade( spep_6 + 64, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_7 = spep_6 + 70;

------------------------------------------------------
-- 被弾(130F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_7 - 3 + 28,  906, 10, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 - 3 + 28, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_7 - 3 + 38, shuchusen7, 0, 0 , 0 );
setEffScaleKey( spep_7 - 3 + 28, shuchusen7, 1, 1 );
setEffScaleKey( spep_7 - 3 + 38, shuchusen7, 1, 1 );
setEffRotateKey( spep_7 - 3 + 28, shuchusen7, 0 );
setEffRotateKey( spep_7 - 3 + 38, shuchusen7, 0 );
setEffAlphaKey( spep_7 - 3 + 28, shuchusen7, 255 );
setEffAlphaKey( spep_7 - 3 + 38, shuchusen7, 255 );

-- ** エフェクト等 ** --
hidan = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --被弾(ef_009)
setEffMoveKey( spep_7 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_7 + 150, hidan, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150, hidan, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hidan, 0 );
setEffRotateKey( spep_7 + 150, hidan, 0 );
setEffAlphaKey( spep_7 + 0, hidan, 255 );
setEffAlphaKey( spep_7 + 150, hidan, 255 );

-- ** 音 ** --
playSe( spep_7 + 0 -10,  1072); --玉向かう
setSeVolume( spep_7 + 0 -10,  1072, 130 );
setSeVolume( spep_7 + 0 ,  1072, 100 );
setSeVolume( spep_7 + 10 ,  1072, 90 );
playSe( spep_7 + 28 -3 ,  1002);  --着弾
playSe( spep_7 + 28 -3 ,  20);  --着弾
setSeVolume( spep_7 + 28 -3 ,  20, 50 );
--playSe( spep_7 + 68 -3 ,  1068);  --爆発
--playSe( spep_7 + 76,  1069);
playSe( spep_7 + 116,  1069);  --光出始め
--playSe( spep_7 + 150,  1024);  --爆発

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
--entryFade( spep_7 + 122, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_8 = spep_7 + 150;

------------------------------------------------------
-- ラスト(240F)
------------------------------------------------------

-- ** エフェクト等 ** --
last = entryEffect( spep_8 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --キノコ雲(ef_010)
setEffMoveKey( spep_8 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_8 + 240, last, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_8 + 240, last, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, last, 0 );
setEffRotateKey( spep_8 + 240, last, 0 );
setEffAlphaKey( spep_8 + 0, last, 255 );
setEffAlphaKey( spep_8 + 240, last, 255 );

-- ** 音 ** --
playSe( spep_8 + 0,  1024);  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_8 +130 );
endPhase( spep_8 + 230 );

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
playSe( spep_4 - 3 + 12,  1010);  --タックル
playSe( spep_4 - 3 + 12,  1002);  --タックル

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;


------------------------------------------------------
-- 地面(228F)
------------------------------------------------------

-- ** 敵 ** --
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 24, 1, 0 );
--setDisp( spep_5  + 25, 1, 0 );
changeAnime( spep_5  + 0, 1, 105 );

setMoveKey( spep_5  + 0, 1, 69.4, -57.9 , 0 );
setMoveKey( spep_5  + 2, 1, 58.6, -54.7 , 0 );
setMoveKey( spep_5  + 4, 1, 49.1, -52 , 0 );
setMoveKey( spep_5  + 6, 1, 40.8, -49.6 , 0 );
setMoveKey( spep_5  + 8, 1, 33.6, -47.5 , 0 );
setMoveKey( spep_5  + 10, 1, 27.5, -45.7 , 0 );
setMoveKey( spep_5  + 12, 1, 22.5, -44.2 , 0 );
setMoveKey( spep_5  + 14, 1, 18.6, -43.1 , 0 );
setMoveKey( spep_5  + 16, 1, 15.5, -42.2 , 0 );
setMoveKey( spep_5  + 18, 1, 13, -41.5 , 0 );
setMoveKey( spep_5  + 20, 1, 10.9, -40.9 , 0 );
setMoveKey( spep_5  + 22, 1, 9.4, -40.4 , 0 );
setMoveKey( spep_5  + 24, 1, 8.4, -40.1 , 0 );
setMoveKey( spep_5  + 26, 1, 8.1, -40 , 0 );

setScaleKey( spep_5  + 0, 1, 5.21, 5.21 );
setScaleKey( spep_5  + 2, 1, 4.37, 4.37 );
setScaleKey( spep_5  + 4, 1, 3.63, 3.63 );
setScaleKey( spep_5  + 6, 1, 2.99, 2.99 );
setScaleKey( spep_5  + 8, 1, 2.43, 2.43 );
setScaleKey( spep_5  + 10, 1, 1.96, 1.96 );
setScaleKey( spep_5  + 12, 1, 1.57, 1.57 );
setScaleKey( spep_5  + 14, 1, 1.27, 1.27 );
setScaleKey( spep_5  + 16, 1, 1.03, 1.03 );
setScaleKey( spep_5  + 18, 1, 0.83, 0.83 );
setScaleKey( spep_5  + 20, 1, 0.68, 0.68 );
setScaleKey( spep_5  + 22, 1, 0.56, 0.56 );
setScaleKey( spep_5  + 24, 1, 0.48, 0.48 );
setScaleKey( spep_5  + 26, 1, 0.45, 0.45 );

setRotateKey( spep_5  + 0, 1, -7.5 );
setRotateKey( spep_5  + 26, 1, -7.5 );

-- ** 書き文字 ** --
ctfogon = entryEffectLife( spep_5 -3 + 28,  10018, 48, 0x100, -1, 0, -87.8, 234.3 );

setEffMoveKey( spep_5 -3 + 28, ctfogon, -87.8, 234.3 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctfogon, -87, 232.4 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctfogon, -84.9, 231.1 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctfogon, -88.8, 230.9 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctfogon, -85.7, 231.2 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctfogon, -87.2, 231.9 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 56, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 58, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 60, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 62, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 64, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 66, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 68, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 70, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 72, ctfogon, -86, 231.7 , 0 );
setEffMoveKey( spep_5 -3 + 74, ctfogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_5 -3 + 76, ctfogon, -86, 231.7 , 0 );

setEffScaleKey( spep_5 -3 + 28, ctfogon, 1.06, 1.06 );
setEffScaleKey( spep_5 -3 + 30, ctfogon, 2.28, 2.28 );
setEffScaleKey( spep_5 -3 + 32, ctfogon, 2.89, 2.89 );
setEffScaleKey( spep_5 -3 + 34, ctfogon, 2.75, 2.75 );
setEffScaleKey( spep_5 -3 + 36, ctfogon, 2.61, 2.61 );
setEffScaleKey( spep_5 -3 + 38, ctfogon, 2.47, 2.47 );
setEffScaleKey( spep_5 -3 + 40, ctfogon, 2.34, 2.34 );
setEffScaleKey( spep_5 -3 + 76, ctfogon, 2.34, 2.34 );

setEffRotateKey( spep_5 -3 + 28, ctfogon, -32.7 );
setEffRotateKey( spep_5 -3 + 30, ctfogon, -46.1 );
setEffRotateKey( spep_5 -3 + 32, ctfogon, -38.7 );
setEffRotateKey( spep_5 -3 + 34, ctfogon, -24.2 );
setEffRotateKey( spep_5 -3 + 36, ctfogon, -32.9 );
setEffRotateKey( spep_5 -3 + 38, ctfogon, -43.6 );
setEffRotateKey( spep_5 -3 + 40, ctfogon, -32.7 );
setEffRotateKey( spep_5 -3 + 76, ctfogon, -32.7 );

setEffAlphaKey( spep_5 -3 + 28, ctfogon, 255 );
setEffAlphaKey( spep_5 -3 + 62, ctfogon, 255 );
setEffAlphaKey( spep_5 -3 + 64, ctfogon, 219 );
setEffAlphaKey( spep_5 -3 + 66, ctfogon, 182 );
setEffAlphaKey( spep_5 -3 + 68, ctfogon, 146 );
setEffAlphaKey( spep_5 -3 + 70, ctfogon, 109 );
setEffAlphaKey( spep_5 -3 + 72, ctfogon, 73 );
setEffAlphaKey( spep_5 -3 + 74, ctfogon, 36 );
setEffAlphaKey( spep_5 -3 + 76, ctfogon, 0 );


-- ** エフェクト等 ** --
jimen = entryEffect( spep_5 + 0, SP_07,  0x80, -1, 0, 0, 0 );  --地面(ef_007)
setEffMoveKey( spep_5 + 0, jimen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, jimen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, jimen, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, jimen, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, jimen, 0 );
setEffRotateKey( spep_5 + 100, jimen, 0 );
setEffAlphaKey( spep_5 + 0, jimen, 255 );
setEffAlphaKey( spep_5 + 100, jimen, 255 );


-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_5 -3 + 28,  1023);  --激突

-- ** 白フェード ** --
entryFade( spep_5 + 96, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- **次の準備 ** --
spep_6 = spep_5 + 100; 

------------------------------------------------------
-- 気弾(70F)
------------------------------------------------------

shuchusen6 = entryEffectLife( spep_6 + 0,  906, 20, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 20, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen6, 1, 1 );
setEffScaleKey( spep_6 + 8, shuchusen6, 1, 1 );
setEffScaleKey( spep_6 + 20-5, shuchusen6, 1.25, 1.25 );
setEffScaleKey( spep_6 + 20, shuchusen6, 1.25, 1.25 );

setEffRotateKey( spep_6 + 0, shuchusen6, 0 );
setEffRotateKey( spep_6 + 20, shuchusen6, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 8, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 9, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 20-6, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 20-5, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 20-2, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 19, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 20, shuchusen6, 0 );


-- ** エフェクト等 ** --
kidan = entryEffect( spep_6 + 0, SP_08x, 0x80, -1, 0, 0, 0 );  --気弾(ef_008)
setEffMoveKey( spep_6 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 70, kidan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 70, kidan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kidan, 0 );
setEffRotateKey( spep_6 + 70, kidan, 0 );
setEffAlphaKey( spep_6 + 0, kidan, 255 );
setEffAlphaKey( spep_6 + 70, kidan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

-- +* 音 ** --
--playSe( spep_6 + 0, 1007); --構える
playSe( spep_6 + 20 -3, 44); --投げる
setSeVolume( spep_6 + 20 -3, 44, 130 );
playSe( spep_6 + 20 -3, 1012); --投げる	
setSeVolume( spep_6 + 20 -3, 1012, 110 );

-- ** 白フェード ** --
entryFade( spep_6 + 64, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_7 = spep_6 + 70;

------------------------------------------------------
-- 被弾(130F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_7 - 3 + 28,  906, 10, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 - 3 + 28, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_7 - 3 + 38, shuchusen7, 0, 0 , 0 );
setEffScaleKey( spep_7 - 3 + 28, shuchusen7, 1, 1 );
setEffScaleKey( spep_7 - 3 + 38, shuchusen7, 1, 1 );
setEffRotateKey( spep_7 - 3 + 28, shuchusen7, 0 );
setEffRotateKey( spep_7 - 3 + 38, shuchusen7, 0 );
setEffAlphaKey( spep_7 - 3 + 28, shuchusen7, 255 );
setEffAlphaKey( spep_7 - 3 + 38, shuchusen7, 255 );

-- ** エフェクト等 ** --
hidan = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --被弾(ef_009)
setEffMoveKey( spep_7 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_7 + 150, hidan, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_7 + 150, hidan, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hidan, 0 );
setEffRotateKey( spep_7 + 150, hidan, 0 );
setEffAlphaKey( spep_7 + 0, hidan, 255 );
setEffAlphaKey( spep_7 + 150, hidan, 255 );

-- ** 音 ** --
playSe( spep_7 + 0 -10,  1072); --玉向かう
setSeVolume( spep_7 + 0 -10,  1072, 130 );
setSeVolume( spep_7 + 0 ,  1072, 100 );
setSeVolume( spep_7 + 10 ,  1072, 90 );
playSe( spep_7 + 28 -3 ,  1002);  --着弾
playSe( spep_7 + 28 -3 ,  20);  --着弾
setSeVolume( spep_7 + 28 -3 ,  20, 50 );
--playSe( spep_7 + 68 -3 ,  1068);  --爆発
--playSe( spep_7 + 76,  1069);
playSe( spep_7 + 116,  1069);  --光出始め
--playSe( spep_7 + 150,  1024);  --爆発

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
--entryFade( spep_7 + 122, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_8 = spep_7 + 150;

------------------------------------------------------
-- ラスト(240F)
------------------------------------------------------

-- ** エフェクト等 ** --
last = entryEffect( spep_8 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --キノコ雲(ef_010)
setEffMoveKey( spep_8 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_8 + 240, last, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_8 + 240, last, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, last, 0 );
setEffRotateKey( spep_8 + 240, last, 0 );
setEffAlphaKey( spep_8 + 0, last, 255 );
setEffAlphaKey( spep_8 + 240, last, 255 );

-- ** 音 ** --
playSe( spep_8 + 0,  1024);  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_8 +130 );
endPhase( spep_8 + 230 );

end
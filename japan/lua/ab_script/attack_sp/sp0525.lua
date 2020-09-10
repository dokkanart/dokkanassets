--パン(GT)(ハニー)_乙女ブラスト

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
SP_01 = 152830; --登場
SP_02 = 152831; --奥に進む
SP_03 = 152832; --ため
SP_04 = 152833; --発射
SP_05 = 152834; --被弾　手前
SP_06 = 152835; --被弾　奥

SP_02r = 152837; --奥に進む
SP_03r = 152838; --ため
SP_04r = 152839; --発射
SP_05r = 152840; --被弾　手前

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
-- 登場(178F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tojo = entryEffectLife( spep_0 + 0, SP_01, 178, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tojo, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178, tojo, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tojo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 178, tojo, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tojo, 255 );
setEffAlphaKey( spep_0 + 178, tojo, 255 );
setEffRotateKey( spep_0 + 0, tojo, 0 );
setEffRotateKey( spep_0 + 178, tojo, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 172, 6, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_0 + 50, 46 );  --キラキラ

-- ** 次の準備 ** --
spep_1 = spep_0 + 178;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 奥に進む(120F)
------------------------------------------------------

-- ** エフェクト等 ** --
okugo = entryEffectLife( spep_2 + 0, SP_02, 120, 0x100, -1, 0, 0, 0 );  --奥に進む(ef_002)
setEffMoveKey( spep_2 + 0, okugo, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, okugo, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, okugo, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, okugo, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, okugo, 0 );
setEffRotateKey( spep_2 + 120, okugo, 0 );
setEffAlphaKey( spep_2 + 0, okugo, 255 );
setEffAlphaKey( spep_2 + 119, okugo, 255 );
setEffAlphaKey( spep_2 + 120, okugo, 0 );

-- ** 音 ** --
playSe( spep_2 + 0, 46 );  --キラキラ

-- ** 次の準備 ** --
spep_3 = spep_2 + 120;

------------------------------------------------------
-- ため(220F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_03, 220, 0x80, -1, 0, 0, 0 );  --ため(ef_003)
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 220, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 220, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 220, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 219, tame, 255 );
setEffAlphaKey( spep_3 + 220, tame, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 24, 1, 0 );
changeAnime( spep_3 + 0, 1, 102 );

setMoveKey( spep_3 + 0, 1, 176.4, 48.9 , 0 );
setMoveKey( spep_3 + 2, 1, 189.8, 48.8 , 0 );
setMoveKey( spep_3 + 4, 1, 221.3, 55.4 , 0 );
setMoveKey( spep_3 + 6, 1, 271.7, 68.9 , 0 );
setMoveKey( spep_3 + 20, 1, 1365.6, 422.4 , 0 );
setMoveKey( spep_3 + 22, 1, 2307.1, 747.7 , 0 );
setMoveKey( spep_3 + 24, 1, 9257.9, 3214.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2.52, 2.52 );
setScaleKey( spep_3 + 2, 1, 2.55, 2.55 );
setScaleKey( spep_3 + 4, 1, 2.63, 2.63 );
setScaleKey( spep_3 + 6, 1, 2.78, 2.78 );
setScaleKey( spep_3 + 8, 1, 3, 3 );
setScaleKey( spep_3 + 20, 1, 9, 9 );
setScaleKey( spep_3 + 24, 1, 10.5, 10.5 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 24, 1, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 146; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 顔カットイン ** --
speff = entryEffect( spep_3 + 108, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 108, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 0,  906, 192, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 124, shuchusen1, 68, 10 );

setEffMoveKey( spep_3 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 192, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_3 + 192, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_3 + 0, shuchusen1, 0 );
setEffRotateKey( spep_3 + 192, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 123, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 124, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 192, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
--[[ctgogo = entryEffectLife( spep_3 + 124,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 124, ctgogo, 68, 10 );

setEffMoveKey( spep_3 + 124, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_3 + 192, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 124, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 184, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 186, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_3 + 188, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_3 + 190, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_3 + 192, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_3 + 124, ctgogo, 0 );
setEffRotateKey( spep_3 + 192, ctgogo, 0 );

setEffAlphaKey( spep_3 + 124, ctgogo, 255 );
setEffAlphaKey( spep_3 + 192, ctgogo, 255 );]]

-- ** 音 ** --
playSe( spep_3 + 124, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_4 = spep_3 + 220;

------------------------------------------------------
-- 発射(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_4 + 0, SP_04, 86, 0x100, -1, 0, 0, 0 );  --発射(ef_004)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 86, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 85, hassha, 255 );
setEffAlphaKey( spep_4 + 86, hassha, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_4 + 36,  906, 50, 0x100, -1, 0, -84.3, -74.7 );
setEffShake( spep_4 + 36, shuchusen2, 50, 20 );

setEffMoveKey( spep_4 + 36, shuchusen2, -84.3, -74.7 , 0 );
setEffMoveKey( spep_4 + 86, shuchusen2, -84.3, -74.7 , 0 );

setEffScaleKey( spep_4 + 36, shuchusen2, 1.72, 1.35 );
setEffScaleKey( spep_4 + 86, shuchusen2, 1.72, 1.35 );

setEffRotateKey( spep_4 + 36, shuchusen2, 0 );
setEffRotateKey( spep_4 + 86, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 36, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 37, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 85, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_4 + 36,  10019, 14, 0x100, -1, 0, -97.2, 200.8 );  --ドンッ
setEffMoveKey( spep_4 + 36, ctdon, -97.2, 200.8 , 0 );
setEffMoveKey( spep_4 + 38, ctdon, -97.2, 200.8 , 0 );
setEffMoveKey( spep_4 + 40, ctdon, -128.5, 215 , 0 );
setEffMoveKey( spep_4 + 42, ctdon, -139.4, 234.8 , 0 );
setEffMoveKey( spep_4 + 44, ctdon, -151.7, 239.8 , 0 );
setEffMoveKey( spep_4 + 46, ctdon, -148.7, 233.3 , 0 );
setEffMoveKey( spep_4 + 48, ctdon, -146.4, 243.7 , 0 );
setEffMoveKey( spep_4 + 50, ctdon, -146.7, 244.4 , 0 );

setEffScaleKey( spep_4 + 36, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_4 + 38, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_4 + 40, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_4 + 42, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_4 + 44, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_4 + 46, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_4 + 48, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_4 + 50, ctdon, 2.07, 2.07 );

setEffRotateKey( spep_4 + 36, ctdon, -25 );
setEffRotateKey( spep_4 + 38, ctdon, -25 );
setEffRotateKey( spep_4 + 40, ctdon, -24.5 );
setEffRotateKey( spep_4 + 42, ctdon, -24 );
setEffRotateKey( spep_4 + 50, ctdon, -24 );

setEffAlphaKey( spep_4 + 36, ctdon, 0 );
setEffAlphaKey( spep_4 + 37, ctdon, 255 );
setEffAlphaKey( spep_4 + 44, ctdon, 255 );
setEffAlphaKey( spep_4 + 46, ctdon, 128 );
setEffAlphaKey( spep_4 + 50, ctdon, 0 );

-- ** 音 ** --
playSe( spep_4 + 40, 1022 );  --発射音

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

------------------------------------------------------
-- 被弾(252F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_b = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --被弾　手前(ef_005)
setEffMoveKey( spep_5 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 252, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 252, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan_b, 0 );
setEffRotateKey( spep_5 + 252, hidan_b, 0 );
setEffAlphaKey( spep_5 + 0, hidan_b, 255 );
setEffAlphaKey( spep_5 + 252, hidan_b, 255 );

hidan_f = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --被弾　奥(ef_006)
setEffMoveKey( spep_5 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 252, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 252, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan_f, 0 );
setEffRotateKey( spep_5 + 252, hidan_f, 0 );
setEffAlphaKey( spep_5 + 0, hidan_f, 255 );
setEffAlphaKey( spep_5 + 252, hidan_f, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 94, 0x100, -1, 0, 124.2, -46.2 );
setEffShake( spep_5 + 0, shuchusen3, 94, 20 );

setEffMoveKey( spep_5 + 0, shuchusen3, 124.2, -46.2 , 0 );
setEffMoveKey( spep_5 + 40, shuchusen3, 204.2, -46.2 , 0 );
setEffMoveKey( spep_5 + 42, shuchusen3, 193.8, -34.5 , 0 );
setEffMoveKey( spep_5 + 44, shuchusen3, 183.9, -23.3 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen3, 174.6, -12.8 , 0 );
setEffMoveKey( spep_5 + 48, shuchusen3, 165.8, -2.9 , 0 );
setEffMoveKey( spep_5 + 50, shuchusen3, 157.5, 6.4 , 0 );
setEffMoveKey( spep_5 + 52, shuchusen3, 149.7, 15.2 , 0 );
setEffMoveKey( spep_5 + 54, shuchusen3, 142.5, 23.3 , 0 );
setEffMoveKey( spep_5 + 56, shuchusen3, 135.8, 30.8 , 0 );
setEffMoveKey( spep_5 + 58, shuchusen3, 129.7, 37.7 , 0 );
setEffMoveKey( spep_5 + 60, shuchusen3, 124.1, 44 , 0 );
setEffMoveKey( spep_5 + 62, shuchusen3, 119, 49.7 , 0 );
setEffMoveKey( spep_5 + 64, shuchusen3, 114.5, 54.9 , 0 );
setEffMoveKey( spep_5 + 66, shuchusen3, 110.5, 59.4 , 0 );
setEffMoveKey( spep_5 + 68, shuchusen3, 107, 63.3 , 0 );
setEffMoveKey( spep_5 + 70, shuchusen3, 104.1, 66.6 , 0 );
setEffMoveKey( spep_5 + 72, shuchusen3, 101.7, 69.3 , 0 );
setEffMoveKey( spep_5 + 74, shuchusen3, 99.8, 71.4 , 0 );
setEffMoveKey( spep_5 + 76, shuchusen3, 98.5, 72.9 , 0 );
setEffMoveKey( spep_5 + 78, shuchusen3, 97.7, 73.8 , 0 );
setEffMoveKey( spep_5 + 80, shuchusen3, 97.4, 74.1 , 0 );
setEffMoveKey( spep_5 + 82, shuchusen3, 103.1, 74.1 , 0 );
setEffMoveKey( spep_5 + 84, shuchusen3, 120.4, 74.1 , 0 );
setEffMoveKey( spep_5 + 86, shuchusen3, 149.1, 74.1 , 0 );
setEffMoveKey( spep_5 + 88, shuchusen3, 189.2, 74.1 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen3, 240.9, 74.1 , 0 );
setEffMoveKey( spep_5 + 92, shuchusen3, 304, 74.1 , 0 );
setEffMoveKey( spep_5 + 94, shuchusen3, 378.7, 74.1 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.68, 1.23 );
setEffScaleKey( spep_5 + 40, shuchusen3, 1.68, 1.23 );
setEffScaleKey( spep_5 + 42, shuchusen3, 1.67, 1.23 );
setEffScaleKey( spep_5 + 44, shuchusen3, 1.66, 1.22 );
setEffScaleKey( spep_5 + 46, shuchusen3, 1.66, 1.22 );
setEffScaleKey( spep_5 + 48, shuchusen3, 1.65, 1.21 );
setEffScaleKey( spep_5 + 50, shuchusen3, 1.64, 1.21 );
setEffScaleKey( spep_5 + 52, shuchusen3, 1.64, 1.2 );
setEffScaleKey( spep_5 + 54, shuchusen3, 1.63, 1.2 );
setEffScaleKey( spep_5 + 56, shuchusen3, 1.63, 1.19 );
setEffScaleKey( spep_5 + 58, shuchusen3, 1.62, 1.19 );
setEffScaleKey( spep_5 + 60, shuchusen3, 1.62, 1.19 );
setEffScaleKey( spep_5 + 62, shuchusen3, 1.62, 1.18 );
setEffScaleKey( spep_5 + 64, shuchusen3, 1.61, 1.18 );
setEffScaleKey( spep_5 + 68, shuchusen3, 1.61, 1.18 );
setEffScaleKey( spep_5 + 70, shuchusen3, 1.6, 1.17 );
setEffScaleKey( spep_5 + 80, shuchusen3, 1.6, 1.17 );
setEffScaleKey( spep_5 + 82, shuchusen3, 1.63, 1.19 );
setEffScaleKey( spep_5 + 84, shuchusen3, 1.71, 1.25 );
setEffScaleKey( spep_5 + 86, shuchusen3, 1.94, 1.45 );
setEffScaleKey( spep_5 + 88, shuchusen3, 2.33, 1.79 );
setEffScaleKey( spep_5 + 90, shuchusen3, 2.77, 2.17 );
setEffScaleKey( spep_5 + 92, shuchusen3, 3.57, 2.89 );
setEffScaleKey( spep_5 + 94, shuchusen3, 3.92, 3.15 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 94, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 94, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 38,  10005, 16, 0x100, -1, 0, -97.2, 207.7 );  --ガッ
setEffMoveKey( spep_5 + 38, ctga, -97.2, 207.7 , 0 );
setEffMoveKey( spep_5 + 40, ctga, -97.2, 207.7 , 0 );
setEffMoveKey( spep_5 + 42, ctga, -89.8, 229 , 0 );
setEffMoveKey( spep_5 + 44, ctga, -93.8, 235.5 , 0 );
setEffMoveKey( spep_5 + 46, ctga, -87.7, 241.5 , 0 );
setEffMoveKey( spep_5 + 48, ctga, -96.6, 241.6 , 0 );
setEffMoveKey( spep_5 + 50, ctga, -92.8, 245.5 , 0 );
setEffMoveKey( spep_5 + 52, ctga, -86.5, 247.8 , 0 );
setEffMoveKey( spep_5 + 54, ctga, -86.3, 248.5 , 0 );

setEffScaleKey( spep_5 + 38, ctga, 1.03, 1.03 );
setEffScaleKey( spep_5 + 40, ctga, 1.03, 1.03 );
setEffScaleKey( spep_5 + 42, ctga, 1.35, 1.35 );
setEffScaleKey( spep_5 + 44, ctga, 1.45, 1.45 );
setEffScaleKey( spep_5 + 46, ctga, 1.53, 1.53 );
setEffScaleKey( spep_5 + 48, ctga, 1.58, 1.58 );
setEffScaleKey( spep_5 + 50, ctga, 1.6, 1.6 );
setEffScaleKey( spep_5 + 52, ctga, 1.63, 1.63 );
setEffScaleKey( spep_5 + 54, ctga, 1.64, 1.64 );

setEffRotateKey( spep_5 + 38, ctga, -20.7 );
setEffRotateKey( spep_5 + 54, ctga, -20.7 );

setEffAlphaKey( spep_5 + 38, ctga, 0 );
setEffAlphaKey( spep_5 + 39, ctga, 255 );
setEffAlphaKey( spep_5 + 50, ctga, 255 );
setEffAlphaKey( spep_5 + 52, ctga, 64 );
setEffAlphaKey( spep_5 + 54, ctga, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 78, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 + 40, 1, 108 );

setMoveKey( spep_5 + 0, 1, 233.1, -46.7 , 0 );
setMoveKey( spep_5 + 2, 1, 226.5, -45 , 0 );
setMoveKey( spep_5 + 4, 1, 238.1, -47 , 0 );
setMoveKey( spep_5 + 6, 1, 223.3, -49 , 0 );
setMoveKey( spep_5 + 8, 1, 236, -47.8 , 0 );
setMoveKey( spep_5 + 10, 1, 221, -49.1 , 0 );
setMoveKey( spep_5 + 12, 1, 227.6, -48.4 , 0 );
setMoveKey( spep_5 + 14, 1, 217.3, -48 , 0 );
setMoveKey( spep_5 + 16, 1, 223.6, -45.9 , 0 );
setMoveKey( spep_5 + 18, 1, 211.2, -51.8 , 0 );
setMoveKey( spep_5 + 20, 1, 217.9, -46.2 , 0 );
setMoveKey( spep_5 + 22, 1, 208.8, -49.9 , 0 );
setMoveKey( spep_5 + 24, 1, 209.2, -42.6 , 0 );
setMoveKey( spep_5 + 26, 1, 203.3, -48.5 , 0 );
setMoveKey( spep_5 + 28, 1, 202.6, -37.4 , 0 );
setMoveKey( spep_5 + 30, 1, 195.1, -41.4 , 0 );
setMoveKey( spep_5 + 32, 1, 196.2, -32.1 , 0 );
setMoveKey( spep_5 + 34, 1, 189.7, -34.1 , 0 );
setMoveKey( spep_5 + 36, 1, 193.1, -28.6 , 0 );
setMoveKey( spep_5 + 39, 1, 187.5, -23.8 , 0 );
setMoveKey( spep_5 + 40, 1, 167.3, -21.9 , 0 );
setMoveKey( spep_5 + 42, 1, 214.4, -15.5 , 0 );
setMoveKey( spep_5 + 44, 1, 187.9, -16.5 , 0 );
setMoveKey( spep_5 + 46, 1, 215.6, -14.1 , 0 );
setMoveKey( spep_5 + 48, 1, 201.1, -0.2 , 0 );
setMoveKey( spep_5 + 50, 1, 217, -8.3 , 0 );
setMoveKey( spep_5 + 52, 1, 212.6, 1.2 , 0 );
setMoveKey( spep_5 + 54, 1, 224.4, -3.5 , 0 );
setMoveKey( spep_5 + 56, 1, 223.1, 6.4 , 0 );
setMoveKey( spep_5 + 58, 1, 229.9, 2.6 , 0 );
setMoveKey( spep_5 + 60, 1, 229.3, 5.3 , 0 );
setMoveKey( spep_5 + 62, 1, 232.8, 5.1 , 0 );
setMoveKey( spep_5 + 64, 1, 235, 6 , 0 );
setMoveKey( spep_5 + 66, 1, 236.8, 6.8 , 0 );
setMoveKey( spep_5 + 68, 1, 238.3, 8.3 , 0 );
setMoveKey( spep_5 + 70, 1, 239.7, 9.7 , 0 );
setMoveKey( spep_5 + 72, 1, 241, 10.9 , 0 );
setMoveKey( spep_5 + 74, 1, 242.1, 12.1 , 0 );
setMoveKey( spep_5 + 76, 1, 243.2, 13.2 , 0 );
setMoveKey( spep_5 + 78, 1, 244.1, 14.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.18, 0.18 );
setScaleKey( spep_5 + 2, 1, 0.21, 0.21 );
setScaleKey( spep_5 + 4, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 6, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 8, 1, 0.28, 0.28 );
setScaleKey( spep_5 + 10, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 12, 1, 0.37, 0.37 );
setScaleKey( spep_5 + 14, 1, 0.42, 0.42 );
setScaleKey( spep_5 + 16, 1, 0.47, 0.47 );
setScaleKey( spep_5 + 18, 1, 0.53, 0.53 );
setScaleKey( spep_5 + 20, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 22, 1, 0.67, 0.67 );
setScaleKey( spep_5 + 24, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 26, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 28, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 30, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 32, 1, 1.08, 1.08 );
setScaleKey( spep_5 + 34, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 36, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 39, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 40, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 42, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 44, 1, 1.09, 1.09 );
setScaleKey( spep_5 + 46, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 48, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 50, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 52, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 54, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 56, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 58, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 60, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 62, 1, 0.19, 0.19 );
setScaleKey( spep_5 + 64, 1, 0.14, 0.14 );
setScaleKey( spep_5 + 66, 1, 0.08, 0.08 );
setScaleKey( spep_5 + 68, 1, 0.07, 0.07 );
setScaleKey( spep_5 + 70, 1, 0.07, 0.07 );
setScaleKey( spep_5 + 72, 1, 0.06, 0.06 );
setScaleKey( spep_5 + 74, 1, 0.06, 0.06 );
setScaleKey( spep_5 + 76, 1, 0.05, 0.05 );
setScaleKey( spep_5 + 78, 1, 0.05, 0.05 );

setRotateKey( spep_5 + 0, 1, -7.1 );
setRotateKey( spep_5 + 2, 1, -7.4 );
setRotateKey( spep_5 + 4, 1, -7.6 );
setRotateKey( spep_5 + 6, 1, -8 );
setRotateKey( spep_5 + 8, 1, -8.4 );
setRotateKey( spep_5 + 10, 1, -8.8 );
setRotateKey( spep_5 + 12, 1, -9.3 );
setRotateKey( spep_5 + 14, 1, -9.9 );
setRotateKey( spep_5 + 16, 1, -10.5 );
setRotateKey( spep_5 + 18, 1, -11.2 );
setRotateKey( spep_5 + 20, 1, -11.9 );
setRotateKey( spep_5 + 22, 1, -12.6 );
setRotateKey( spep_5 + 24, 1, -13.5 );
setRotateKey( spep_5 + 26, 1, -14.3 );
setRotateKey( spep_5 + 28, 1, -15.2 );
setRotateKey( spep_5 + 30, 1, -16.2 );
setRotateKey( spep_5 + 32, 1, -17.3 );
setRotateKey( spep_5 + 34, 1, -18.3 );
setRotateKey( spep_5 + 36, 1, -19.5 );
setRotateKey( spep_5 + 39, 1, -20.7 );
setRotateKey( spep_5 + 40, 1, -21.9 );
setRotateKey( spep_5 + 42, 1, -21.2 );
setRotateKey( spep_5 + 44, 1, -20.7 );
setRotateKey( spep_5 + 46, 1, -20.3 );
setRotateKey( spep_5 + 48, 1, -19.9 );
setRotateKey( spep_5 + 50, 1, -19.5 );
setRotateKey( spep_5 + 52, 1, -19.2 );
setRotateKey( spep_5 + 54, 1, -18.9 );
setRotateKey( spep_5 + 56, 1, -18.7 );
setRotateKey( spep_5 + 58, 1, -18.5 );
setRotateKey( spep_5 + 60, 1, -18.3 );
setRotateKey( spep_5 + 62, 1, -18.1 );
setRotateKey( spep_5 + 64, 1, -18 );
setRotateKey( spep_5 + 66, 1, -17.8 );
setRotateKey( spep_5 + 68, 1, -17.7 );
setRotateKey( spep_5 + 70, 1, -17.7 );
setRotateKey( spep_5 + 72, 1, -17.6 );
setRotateKey( spep_5 + 74, 1, -17.5 );
setRotateKey( spep_5 + 76, 1, -17.5 );
setRotateKey( spep_5 + 78, 1, -17.4 );

-- ** 音 ** --
playSe( spep_5 + 38, 1008 );  --着弾
playSe( spep_5 + 82, 3 );  --キラン

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 38 );
entryFade( spep_5 + 238, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 248 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場(178F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tojo = entryEffectLife( spep_0 + 0, SP_01, 178, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tojo, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178, tojo, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tojo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 178, tojo, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tojo, 255 );
setEffAlphaKey( spep_0 + 178, tojo, 255 );
setEffRotateKey( spep_0 + 0, tojo, 0 );
setEffRotateKey( spep_0 + 178, tojo, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 172, 6, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_0 + 50, 46 );  --キラキラ

-- ** 次の準備 ** --
spep_1 = spep_0 + 178;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 奥に進む(120F)
------------------------------------------------------

-- ** エフェクト等 ** --
okugo = entryEffectLife( spep_2 + 0, SP_02r, 120, 0x100, -1, 0, 0, 0 );  --奥に進む(ef_002r)
setEffMoveKey( spep_2 + 0, okugo, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, okugo, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, okugo, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, okugo, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, okugo, 0 );
setEffRotateKey( spep_2 + 120, okugo, 0 );
setEffAlphaKey( spep_2 + 0, okugo, 255 );
setEffAlphaKey( spep_2 + 119, okugo, 255 );
setEffAlphaKey( spep_2 + 120, okugo, 0 );

-- ** 音 ** --
playSe( spep_2 + 0, 46 );  --キラキラ

-- ** 次の準備 ** --
spep_3 = spep_2 + 120;

------------------------------------------------------
-- ため(220F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_03r, 220, 0x80, -1, 0, 0, 0 );  --ため(ef_003r)
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 220, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 220, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 220, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 219, tame, 255 );
setEffAlphaKey( spep_3 + 220, tame, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 24, 1, 0 );
changeAnime( spep_3 + 0, 1, 102 );

setMoveKey( spep_3 + 0, 1, 176.4, 48.9 , 0 );
setMoveKey( spep_3 + 2, 1, 189.8, 48.8 , 0 );
setMoveKey( spep_3 + 4, 1, 221.3, 55.4 , 0 );
setMoveKey( spep_3 + 6, 1, 271.7, 68.9 , 0 );
setMoveKey( spep_3 + 20, 1, 1365.6, 422.4 , 0 );
setMoveKey( spep_3 + 22, 1, 2307.1, 747.7 , 0 );
setMoveKey( spep_3 + 24, 1, 9257.9, 3214.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2.52, 2.52 );
setScaleKey( spep_3 + 2, 1, 2.55, 2.55 );
setScaleKey( spep_3 + 4, 1, 2.63, 2.63 );
setScaleKey( spep_3 + 6, 1, 2.78, 2.78 );
setScaleKey( spep_3 + 8, 1, 3, 3 );
setScaleKey( spep_3 + 20, 1, 9, 9 );
setScaleKey( spep_3 + 24, 1, 10.5, 10.5 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 24, 1, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 146; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3 + 108, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 108, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 0,  906, 192, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 124, shuchusen1, 68, 10 );

setEffMoveKey( spep_3 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 192, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_3 + 192, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_3 + 0, shuchusen1, 0 );
setEffRotateKey( spep_3 + 192, shuchusen1, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 123, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 124, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 192, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
--[[ctgogo = entryEffectLife( spep_3 + 124,  190006, 68, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 124, ctgogo, 68, 10 );

setEffMoveKey( spep_3 + 124, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_3 + 192, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 124, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 184, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 186, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_3 + 188, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_3 + 190, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_3 + 192, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_3 + 124, ctgogo, 0 );
setEffRotateKey( spep_3 + 192, ctgogo, 0 );

setEffAlphaKey( spep_3 + 124, ctgogo, 255 );
setEffAlphaKey( spep_3 + 192, ctgogo, 255 );]]

-- ** 音 ** --
playSe( spep_3 + 124, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_4 = spep_3 + 220;

------------------------------------------------------
-- 発射(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_4 + 0, SP_04r, 86, 0x100, -1, 0, 0, 0 );  --発射(ef_004r)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 86, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 85, hassha, 255 );
setEffAlphaKey( spep_4 + 86, hassha, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_4 + 36,  906, 50, 0x100, -1, 0, -84.3, -74.7 );
setEffShake( spep_4 + 36, shuchusen2, 50, 20 );

setEffMoveKey( spep_4 + 36, shuchusen2, -84.3, -74.7 , 0 );
setEffMoveKey( spep_4 + 86, shuchusen2, -84.3, -74.7 , 0 );

setEffScaleKey( spep_4 + 36, shuchusen2, 1.72, 1.35 );
setEffScaleKey( spep_4 + 86, shuchusen2, 1.72, 1.35 );

setEffRotateKey( spep_4 + 36, shuchusen2, 0 );
setEffRotateKey( spep_4 + 86, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 36, shuchusen2, 0 );
setEffAlphaKey( spep_4 + 37, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 85, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_4 + 36,  10019, 14, 0x100, -1, 0, -97.2, 200.8 );  --ドンッ
setEffMoveKey( spep_4 + 36, ctdon, -97.2, 200.8 , 0 );
setEffMoveKey( spep_4 + 38, ctdon, -97.2, 200.8 , 0 );
setEffMoveKey( spep_4 + 40, ctdon, -128.5, 215 , 0 );
setEffMoveKey( spep_4 + 42, ctdon, -139.4, 234.8 , 0 );
setEffMoveKey( spep_4 + 44, ctdon, -151.7, 239.8 , 0 );
setEffMoveKey( spep_4 + 46, ctdon, -148.7, 233.3 , 0 );
setEffMoveKey( spep_4 + 48, ctdon, -146.4, 243.7 , 0 );
setEffMoveKey( spep_4 + 50, ctdon, -146.7, 244.4 , 0 );

setEffScaleKey( spep_4 + 36, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_4 + 38, ctdon, 1.29, 1.29 );
setEffScaleKey( spep_4 + 40, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_4 + 42, ctdon, 1.98, 1.98 );
setEffScaleKey( spep_4 + 44, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_4 + 46, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_4 + 48, ctdon, 2.05, 2.05 );
setEffScaleKey( spep_4 + 50, ctdon, 2.07, 2.07 );

setEffRotateKey( spep_4 + 36, ctdon, -25 );
setEffRotateKey( spep_4 + 38, ctdon, -25 );
setEffRotateKey( spep_4 + 40, ctdon, -24.5 );
setEffRotateKey( spep_4 + 42, ctdon, -24 );
setEffRotateKey( spep_4 + 50, ctdon, -24 );

setEffAlphaKey( spep_4 + 36, ctdon, 0 );
setEffAlphaKey( spep_4 + 37, ctdon, 255 );
setEffAlphaKey( spep_4 + 44, ctdon, 255 );
setEffAlphaKey( spep_4 + 46, ctdon, 128 );
setEffAlphaKey( spep_4 + 50, ctdon, 0 );

-- ** 音 ** --
playSe( spep_4 + 40, 1022 );  --発射音

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

------------------------------------------------------
-- 被弾(252F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_b = entryEffect( spep_5 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --被弾　手前(ef_005r)
setEffMoveKey( spep_5 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 252, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 252, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan_b, 0 );
setEffRotateKey( spep_5 + 252, hidan_b, 0 );
setEffAlphaKey( spep_5 + 0, hidan_b, 255 );
setEffAlphaKey( spep_5 + 252, hidan_b, 255 );

hidan_f = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --被弾　奥(ef_006)
setEffMoveKey( spep_5 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 252, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 252, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hidan_f, 0 );
setEffRotateKey( spep_5 + 252, hidan_f, 0 );
setEffAlphaKey( spep_5 + 0, hidan_f, 255 );
setEffAlphaKey( spep_5 + 252, hidan_f, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 94, 0x100, -1, 0, 124.2, -46.2 );
setEffShake( spep_5 + 0, shuchusen3, 94, 20 );

setEffMoveKey( spep_5 + 0, shuchusen3, 124.2, -46.2 , 0 );
setEffMoveKey( spep_5 + 40, shuchusen3, 204.2, -46.2 , 0 );
setEffMoveKey( spep_5 + 42, shuchusen3, 193.8, -34.5 , 0 );
setEffMoveKey( spep_5 + 44, shuchusen3, 183.9, -23.3 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen3, 174.6, -12.8 , 0 );
setEffMoveKey( spep_5 + 48, shuchusen3, 165.8, -2.9 , 0 );
setEffMoveKey( spep_5 + 50, shuchusen3, 157.5, 6.4 , 0 );
setEffMoveKey( spep_5 + 52, shuchusen3, 149.7, 15.2 , 0 );
setEffMoveKey( spep_5 + 54, shuchusen3, 142.5, 23.3 , 0 );
setEffMoveKey( spep_5 + 56, shuchusen3, 135.8, 30.8 , 0 );
setEffMoveKey( spep_5 + 58, shuchusen3, 129.7, 37.7 , 0 );
setEffMoveKey( spep_5 + 60, shuchusen3, 124.1, 44 , 0 );
setEffMoveKey( spep_5 + 62, shuchusen3, 119, 49.7 , 0 );
setEffMoveKey( spep_5 + 64, shuchusen3, 114.5, 54.9 , 0 );
setEffMoveKey( spep_5 + 66, shuchusen3, 110.5, 59.4 , 0 );
setEffMoveKey( spep_5 + 68, shuchusen3, 107, 63.3 , 0 );
setEffMoveKey( spep_5 + 70, shuchusen3, 104.1, 66.6 , 0 );
setEffMoveKey( spep_5 + 72, shuchusen3, 101.7, 69.3 , 0 );
setEffMoveKey( spep_5 + 74, shuchusen3, 99.8, 71.4 , 0 );
setEffMoveKey( spep_5 + 76, shuchusen3, 98.5, 72.9 , 0 );
setEffMoveKey( spep_5 + 78, shuchusen3, 97.7, 73.8 , 0 );
setEffMoveKey( spep_5 + 80, shuchusen3, 97.4, 74.1 , 0 );
setEffMoveKey( spep_5 + 82, shuchusen3, 103.1, 74.1 , 0 );
setEffMoveKey( spep_5 + 84, shuchusen3, 120.4, 74.1 , 0 );
setEffMoveKey( spep_5 + 86, shuchusen3, 149.1, 74.1 , 0 );
setEffMoveKey( spep_5 + 88, shuchusen3, 189.2, 74.1 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen3, 240.9, 74.1 , 0 );
setEffMoveKey( spep_5 + 92, shuchusen3, 304, 74.1 , 0 );
setEffMoveKey( spep_5 + 94, shuchusen3, 378.7, 74.1 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.68, 1.23 );
setEffScaleKey( spep_5 + 40, shuchusen3, 1.68, 1.23 );
setEffScaleKey( spep_5 + 42, shuchusen3, 1.67, 1.23 );
setEffScaleKey( spep_5 + 44, shuchusen3, 1.66, 1.22 );
setEffScaleKey( spep_5 + 46, shuchusen3, 1.66, 1.22 );
setEffScaleKey( spep_5 + 48, shuchusen3, 1.65, 1.21 );
setEffScaleKey( spep_5 + 50, shuchusen3, 1.64, 1.21 );
setEffScaleKey( spep_5 + 52, shuchusen3, 1.64, 1.2 );
setEffScaleKey( spep_5 + 54, shuchusen3, 1.63, 1.2 );
setEffScaleKey( spep_5 + 56, shuchusen3, 1.63, 1.19 );
setEffScaleKey( spep_5 + 58, shuchusen3, 1.62, 1.19 );
setEffScaleKey( spep_5 + 60, shuchusen3, 1.62, 1.19 );
setEffScaleKey( spep_5 + 62, shuchusen3, 1.62, 1.18 );
setEffScaleKey( spep_5 + 64, shuchusen3, 1.61, 1.18 );
setEffScaleKey( spep_5 + 68, shuchusen3, 1.61, 1.18 );
setEffScaleKey( spep_5 + 70, shuchusen3, 1.6, 1.17 );
setEffScaleKey( spep_5 + 80, shuchusen3, 1.6, 1.17 );
setEffScaleKey( spep_5 + 82, shuchusen3, 1.63, 1.19 );
setEffScaleKey( spep_5 + 84, shuchusen3, 1.71, 1.25 );
setEffScaleKey( spep_5 + 86, shuchusen3, 1.94, 1.45 );
setEffScaleKey( spep_5 + 88, shuchusen3, 2.33, 1.79 );
setEffScaleKey( spep_5 + 90, shuchusen3, 2.77, 2.17 );
setEffScaleKey( spep_5 + 92, shuchusen3, 3.57, 2.89 );
setEffScaleKey( spep_5 + 94, shuchusen3, 3.92, 3.15 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 94, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 94, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 38,  10005, 16, 0x100, -1, 0, -97.2, 207.7 );  --ガッ
setEffMoveKey( spep_5 + 38, ctga, -97.2, 207.7 , 0 );
setEffMoveKey( spep_5 + 40, ctga, -97.2, 207.7 , 0 );
setEffMoveKey( spep_5 + 42, ctga, -89.8, 229 , 0 );
setEffMoveKey( spep_5 + 44, ctga, -93.8, 235.5 , 0 );
setEffMoveKey( spep_5 + 46, ctga, -87.7, 241.5 , 0 );
setEffMoveKey( spep_5 + 48, ctga, -96.6, 241.6 , 0 );
setEffMoveKey( spep_5 + 50, ctga, -92.8, 245.5 , 0 );
setEffMoveKey( spep_5 + 52, ctga, -86.5, 247.8 , 0 );
setEffMoveKey( spep_5 + 54, ctga, -86.3, 248.5 , 0 );

setEffScaleKey( spep_5 + 38, ctga, 1.03, 1.03 );
setEffScaleKey( spep_5 + 40, ctga, 1.03, 1.03 );
setEffScaleKey( spep_5 + 42, ctga, 1.35, 1.35 );
setEffScaleKey( spep_5 + 44, ctga, 1.45, 1.45 );
setEffScaleKey( spep_5 + 46, ctga, 1.53, 1.53 );
setEffScaleKey( spep_5 + 48, ctga, 1.58, 1.58 );
setEffScaleKey( spep_5 + 50, ctga, 1.6, 1.6 );
setEffScaleKey( spep_5 + 52, ctga, 1.63, 1.63 );
setEffScaleKey( spep_5 + 54, ctga, 1.64, 1.64 );

setEffRotateKey( spep_5 + 38, ctga, -20.7 );
setEffRotateKey( spep_5 + 54, ctga, -20.7 );

setEffAlphaKey( spep_5 + 38, ctga, 0 );
setEffAlphaKey( spep_5 + 39, ctga, 255 );
setEffAlphaKey( spep_5 + 50, ctga, 255 );
setEffAlphaKey( spep_5 + 52, ctga, 64 );
setEffAlphaKey( spep_5 + 54, ctga, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 78, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 + 40, 1, 108 );

setMoveKey( spep_5 + 0, 1, 233.1, -46.7 , 0 );
setMoveKey( spep_5 + 2, 1, 226.5, -45 , 0 );
setMoveKey( spep_5 + 4, 1, 238.1, -47 , 0 );
setMoveKey( spep_5 + 6, 1, 223.3, -49 , 0 );
setMoveKey( spep_5 + 8, 1, 236, -47.8 , 0 );
setMoveKey( spep_5 + 10, 1, 221, -49.1 , 0 );
setMoveKey( spep_5 + 12, 1, 227.6, -48.4 , 0 );
setMoveKey( spep_5 + 14, 1, 217.3, -48 , 0 );
setMoveKey( spep_5 + 16, 1, 223.6, -45.9 , 0 );
setMoveKey( spep_5 + 18, 1, 211.2, -51.8 , 0 );
setMoveKey( spep_5 + 20, 1, 217.9, -46.2 , 0 );
setMoveKey( spep_5 + 22, 1, 208.8, -49.9 , 0 );
setMoveKey( spep_5 + 24, 1, 209.2, -42.6 , 0 );
setMoveKey( spep_5 + 26, 1, 203.3, -48.5 , 0 );
setMoveKey( spep_5 + 28, 1, 202.6, -37.4 , 0 );
setMoveKey( spep_5 + 30, 1, 195.1, -41.4 , 0 );
setMoveKey( spep_5 + 32, 1, 196.2, -32.1 , 0 );
setMoveKey( spep_5 + 34, 1, 189.7, -34.1 , 0 );
setMoveKey( spep_5 + 36, 1, 193.1, -28.6 , 0 );
setMoveKey( spep_5 + 39, 1, 187.5, -23.8 , 0 );
setMoveKey( spep_5 + 40, 1, 167.3, -21.9 , 0 );
setMoveKey( spep_5 + 42, 1, 214.4, -15.5 , 0 );
setMoveKey( spep_5 + 44, 1, 187.9, -16.5 , 0 );
setMoveKey( spep_5 + 46, 1, 215.6, -14.1 , 0 );
setMoveKey( spep_5 + 48, 1, 201.1, -0.2 , 0 );
setMoveKey( spep_5 + 50, 1, 217, -8.3 , 0 );
setMoveKey( spep_5 + 52, 1, 212.6, 1.2 , 0 );
setMoveKey( spep_5 + 54, 1, 224.4, -3.5 , 0 );
setMoveKey( spep_5 + 56, 1, 223.1, 6.4 , 0 );
setMoveKey( spep_5 + 58, 1, 229.9, 2.6 , 0 );
setMoveKey( spep_5 + 60, 1, 229.3, 5.3 , 0 );
setMoveKey( spep_5 + 62, 1, 232.8, 5.1 , 0 );
setMoveKey( spep_5 + 64, 1, 235, 6 , 0 );
setMoveKey( spep_5 + 66, 1, 236.8, 6.8 , 0 );
setMoveKey( spep_5 + 68, 1, 238.3, 8.3 , 0 );
setMoveKey( spep_5 + 70, 1, 239.7, 9.7 , 0 );
setMoveKey( spep_5 + 72, 1, 241, 10.9 , 0 );
setMoveKey( spep_5 + 74, 1, 242.1, 12.1 , 0 );
setMoveKey( spep_5 + 76, 1, 243.2, 13.2 , 0 );
setMoveKey( spep_5 + 78, 1, 244.1, 14.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.18, 0.18 );
setScaleKey( spep_5 + 2, 1, 0.21, 0.21 );
setScaleKey( spep_5 + 4, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 6, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 8, 1, 0.28, 0.28 );
setScaleKey( spep_5 + 10, 1, 0.32, 0.32 );
setScaleKey( spep_5 + 12, 1, 0.37, 0.37 );
setScaleKey( spep_5 + 14, 1, 0.42, 0.42 );
setScaleKey( spep_5 + 16, 1, 0.47, 0.47 );
setScaleKey( spep_5 + 18, 1, 0.53, 0.53 );
setScaleKey( spep_5 + 20, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 22, 1, 0.67, 0.67 );
setScaleKey( spep_5 + 24, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 26, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 28, 1, 0.9, 0.9 );
setScaleKey( spep_5 + 30, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 32, 1, 1.08, 1.08 );
setScaleKey( spep_5 + 34, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 36, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 39, 1, 1.34, 1.34 );
setScaleKey( spep_5 + 40, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 42, 1, 1.25, 1.25 );
setScaleKey( spep_5 + 44, 1, 1.09, 1.09 );
setScaleKey( spep_5 + 46, 1, 0.95, 0.95 );
setScaleKey( spep_5 + 48, 1, 0.82, 0.82 );
setScaleKey( spep_5 + 50, 1, 0.71, 0.71 );
setScaleKey( spep_5 + 52, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 54, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 56, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 58, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 60, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 62, 1, 0.19, 0.19 );
setScaleKey( spep_5 + 64, 1, 0.14, 0.14 );
setScaleKey( spep_5 + 66, 1, 0.08, 0.08 );
setScaleKey( spep_5 + 68, 1, 0.07, 0.07 );
setScaleKey( spep_5 + 70, 1, 0.07, 0.07 );
setScaleKey( spep_5 + 72, 1, 0.06, 0.06 );
setScaleKey( spep_5 + 74, 1, 0.06, 0.06 );
setScaleKey( spep_5 + 76, 1, 0.05, 0.05 );
setScaleKey( spep_5 + 78, 1, 0.05, 0.05 );

setRotateKey( spep_5 + 0, 1, -7.1 );
setRotateKey( spep_5 + 2, 1, -7.4 );
setRotateKey( spep_5 + 4, 1, -7.6 );
setRotateKey( spep_5 + 6, 1, -8 );
setRotateKey( spep_5 + 8, 1, -8.4 );
setRotateKey( spep_5 + 10, 1, -8.8 );
setRotateKey( spep_5 + 12, 1, -9.3 );
setRotateKey( spep_5 + 14, 1, -9.9 );
setRotateKey( spep_5 + 16, 1, -10.5 );
setRotateKey( spep_5 + 18, 1, -11.2 );
setRotateKey( spep_5 + 20, 1, -11.9 );
setRotateKey( spep_5 + 22, 1, -12.6 );
setRotateKey( spep_5 + 24, 1, -13.5 );
setRotateKey( spep_5 + 26, 1, -14.3 );
setRotateKey( spep_5 + 28, 1, -15.2 );
setRotateKey( spep_5 + 30, 1, -16.2 );
setRotateKey( spep_5 + 32, 1, -17.3 );
setRotateKey( spep_5 + 34, 1, -18.3 );
setRotateKey( spep_5 + 36, 1, -19.5 );
setRotateKey( spep_5 + 39, 1, -20.7 );
setRotateKey( spep_5 + 40, 1, -21.9 );
setRotateKey( spep_5 + 42, 1, -21.2 );
setRotateKey( spep_5 + 44, 1, -20.7 );
setRotateKey( spep_5 + 46, 1, -20.3 );
setRotateKey( spep_5 + 48, 1, -19.9 );
setRotateKey( spep_5 + 50, 1, -19.5 );
setRotateKey( spep_5 + 52, 1, -19.2 );
setRotateKey( spep_5 + 54, 1, -18.9 );
setRotateKey( spep_5 + 56, 1, -18.7 );
setRotateKey( spep_5 + 58, 1, -18.5 );
setRotateKey( spep_5 + 60, 1, -18.3 );
setRotateKey( spep_5 + 62, 1, -18.1 );
setRotateKey( spep_5 + 64, 1, -18 );
setRotateKey( spep_5 + 66, 1, -17.8 );
setRotateKey( spep_5 + 68, 1, -17.7 );
setRotateKey( spep_5 + 70, 1, -17.7 );
setRotateKey( spep_5 + 72, 1, -17.6 );
setRotateKey( spep_5 + 74, 1, -17.5 );
setRotateKey( spep_5 + 76, 1, -17.5 );
setRotateKey( spep_5 + 78, 1, -17.4 );

-- ** 音 ** --
playSe( spep_5 + 38, 1008 );  --着弾
playSe( spep_5 + 82, 3 );  --キラン

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 38 );
entryFade( spep_5 + 238, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 248 );

end



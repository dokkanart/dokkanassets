--ゴワス_天啓の一手

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
SP_01 = 153378; --気溜め
SP_02 = 153380; --構え
SP_03 = 153381; --攻撃・手前
SP_04 = 153383; --攻撃・奥

--敵側
SP_01r = 153379; --気溜め
SP_03r = 153382; --攻撃・手前

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
-- 気溜め(144F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 144, 0x100, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 144, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 144, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 143, tame, 255 );
setEffAlphaKey( spep_0 + 144, tame, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 144, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 132, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.9, 1.9 );
setEffScaleKey( spep_0 + 144, shuchusen1, 1.9, 1.9 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 144, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 143, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 144, shuchusen1, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 56,  190006, 68, 0x100, -1, 0, -9.9, 521.8 ); --ゴゴゴ
setEffShake( spep_0 + 56, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 56, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 124, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 56, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 116, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 118, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 122, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 124, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 56, ctgogo, 0 );
setEffRotateKey( spep_0 + 124, ctgogo, 0 );

setEffAlphaKey( spep_0 + 56, ctgogo, 255 );
setEffAlphaKey( spep_0 + 124, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 38, 1035 );  --気溜め
playSe( spep_0 + 56, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 40, 0, 0, 0, 0, 200 );  --薄い黒　背景
entryFadeBg( spep_0 + 40 -2, 0, 104 +2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 130, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 144;

------------------------------------------------------
-- 構え(172F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_1 + 0, SP_02, 172, 0x100, -1, 0, 0, 0 );  --構え(ef_002)
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 172, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_1 + 172, kamae, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 172, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 172, kamae, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 2,  906, 170, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 2, shuchusen2, 170, 25 );

setEffMoveKey( spep_1 + 2, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 172, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 2, shuchusen2, 1.49, 1.49 );
setEffScaleKey( spep_1 + 4, shuchusen2, 1.48, 1.48 );
setEffScaleKey( spep_1 + 6, shuchusen2, 1.47, 1.47 );
setEffScaleKey( spep_1 + 8, shuchusen2, 1.46, 1.46 );
setEffScaleKey( spep_1 + 10, shuchusen2, 1.45, 1.45 );
setEffScaleKey( spep_1 + 12, shuchusen2, 1.44, 1.44 );
setEffScaleKey( spep_1 + 14, shuchusen2, 1.44, 1.44 );
setEffScaleKey( spep_1 + 16, shuchusen2, 1.43, 1.43 );
setEffScaleKey( spep_1 + 18, shuchusen2, 1.42, 1.42 );
setEffScaleKey( spep_1 + 20, shuchusen2, 1.41, 1.41 );
setEffScaleKey( spep_1 + 22, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_1 + 24, shuchusen2, 1.39, 1.39 );
setEffScaleKey( spep_1 + 26, shuchusen2, 1.38, 1.38 );
setEffScaleKey( spep_1 + 28, shuchusen2, 1.37, 1.37 );
setEffScaleKey( spep_1 + 30, shuchusen2, 1.36, 1.36 );
setEffScaleKey( spep_1 + 32, shuchusen2, 1.35, 1.35 );
setEffScaleKey( spep_1 + 34, shuchusen2, 1.34, 1.34 );
setEffScaleKey( spep_1 + 36, shuchusen2, 1.33, 1.33 );
setEffScaleKey( spep_1 + 38, shuchusen2, 1.33, 1.33 );
setEffScaleKey( spep_1 + 40, shuchusen2, 1.32, 1.32 );
setEffScaleKey( spep_1 + 42, shuchusen2, 1.31, 1.31 );
setEffScaleKey( spep_1 + 44, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 + 46, shuchusen2, 1.29, 1.29 );
setEffScaleKey( spep_1 + 48, shuchusen2, 1.28, 1.28 );
setEffScaleKey( spep_1 + 50, shuchusen2, 1.27, 1.27 );
setEffScaleKey( spep_1 + 52, shuchusen2, 1.26, 1.26 );
setEffScaleKey( spep_1 + 54, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_1 + 56, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 + 58, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 + 60, shuchusen2, 1.22, 1.22 );
setEffScaleKey( spep_1 + 62, shuchusen2, 1.22, 1.22 );
setEffScaleKey( spep_1 + 64, shuchusen2, 1.21, 1.21 );
setEffScaleKey( spep_1 + 66, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 + 68, shuchusen2, 1.19, 1.19 );
setEffScaleKey( spep_1 + 70, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_1 + 72, shuchusen2, 1.17, 1.17 );
setEffScaleKey( spep_1 + 74, shuchusen2, 1.16, 1.16 );
setEffScaleKey( spep_1 + 76, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_1 + 78, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_1 + 80, shuchusen2, 1.13, 1.13 );
setEffScaleKey( spep_1 + 82, shuchusen2, 1.12, 1.12 );
setEffScaleKey( spep_1 + 84, shuchusen2, 1.11, 1.11 );
setEffScaleKey( spep_1 + 86, shuchusen2, 1.11, 1.11 );
setEffScaleKey( spep_1 + 88, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.09, 1.09 );
setEffScaleKey( spep_1 + 92, shuchusen2, 1.08, 1.08 );
setEffScaleKey( spep_1 + 94, shuchusen2, 1.07, 1.07 );
setEffScaleKey( spep_1 + 96, shuchusen2, 1.06, 1.06 );
setEffScaleKey( spep_1 + 98, shuchusen2, 1.05, 1.05 );
setEffScaleKey( spep_1 + 172, shuchusen2, 1.05, 1.05 );

setEffRotateKey( spep_1 + 2, shuchusen2, 0 );
setEffRotateKey( spep_1 + 172, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 2, shuchusen2, 5 );
setEffAlphaKey( spep_1 + 4, shuchusen2, 10 );
setEffAlphaKey( spep_1 + 6, shuchusen2, 16 );
setEffAlphaKey( spep_1 + 8, shuchusen2, 21 );
setEffAlphaKey( spep_1 + 10, shuchusen2, 26 );
setEffAlphaKey( spep_1 + 12, shuchusen2, 31 );
setEffAlphaKey( spep_1 + 14, shuchusen2, 36 );
setEffAlphaKey( spep_1 + 16, shuchusen2, 42 );
setEffAlphaKey( spep_1 + 18, shuchusen2, 47 );
setEffAlphaKey( spep_1 + 20, shuchusen2, 52 );
setEffAlphaKey( spep_1 + 22, shuchusen2, 57 );
setEffAlphaKey( spep_1 + 24, shuchusen2, 62 );
setEffAlphaKey( spep_1 + 26, shuchusen2, 68 );
setEffAlphaKey( spep_1 + 28, shuchusen2, 73 );
setEffAlphaKey( spep_1 + 30, shuchusen2, 78 );
setEffAlphaKey( spep_1 + 32, shuchusen2, 83 );
setEffAlphaKey( spep_1 + 34, shuchusen2, 88 );
setEffAlphaKey( spep_1 + 36, shuchusen2, 94 );
setEffAlphaKey( spep_1 + 38, shuchusen2, 99 );
setEffAlphaKey( spep_1 + 40, shuchusen2, 104 );
setEffAlphaKey( spep_1 + 42, shuchusen2, 109 );
setEffAlphaKey( spep_1 + 44, shuchusen2, 114 );
setEffAlphaKey( spep_1 + 46, shuchusen2, 120 );
setEffAlphaKey( spep_1 + 48, shuchusen2, 125 );
setEffAlphaKey( spep_1 + 50, shuchusen2, 130 );
setEffAlphaKey( spep_1 + 52, shuchusen2, 135 );
setEffAlphaKey( spep_1 + 54, shuchusen2, 141 );
setEffAlphaKey( spep_1 + 56, shuchusen2, 146 );
setEffAlphaKey( spep_1 + 58, shuchusen2, 151 );
setEffAlphaKey( spep_1 + 60, shuchusen2, 156 );
setEffAlphaKey( spep_1 + 62, shuchusen2, 161 );
setEffAlphaKey( spep_1 + 64, shuchusen2, 167 );
setEffAlphaKey( spep_1 + 66, shuchusen2, 172 );
setEffAlphaKey( spep_1 + 68, shuchusen2, 177 );
setEffAlphaKey( spep_1 + 70, shuchusen2, 182 );
setEffAlphaKey( spep_1 + 72, shuchusen2, 187 );
setEffAlphaKey( spep_1 + 74, shuchusen2, 193 );
setEffAlphaKey( spep_1 + 76, shuchusen2, 198 );
setEffAlphaKey( spep_1 + 78, shuchusen2, 203 );
setEffAlphaKey( spep_1 + 80, shuchusen2, 208 );
setEffAlphaKey( spep_1 + 82, shuchusen2, 213 );
setEffAlphaKey( spep_1 + 84, shuchusen2, 219 );
setEffAlphaKey( spep_1 + 86, shuchusen2, 224 );
setEffAlphaKey( spep_1 + 88, shuchusen2, 229 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 234 );
setEffAlphaKey( spep_1 + 92, shuchusen2, 239 );
setEffAlphaKey( spep_1 + 94, shuchusen2, 245 );
setEffAlphaKey( spep_1 + 96, shuchusen2, 250 );
setEffAlphaKey( spep_1 + 98, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 172, shuchusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 172, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_1 + 6, 8 );  --迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 64; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

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

-- ** 音 ** --
playSe( spep_1 + 98, 44 );  --構え

-- ** ホワイトフェード ** --
entryFade( spep_1 + 166, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 172;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 攻撃(114F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_3 + 0, SP_03, 114, 0x100, -1, 0, 0, 0 );  --攻撃・手前(ef_003)
setEffMoveKey( spep_3 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 114, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 114, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 114, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 114, attack_f, 255 );

attack_b = entryEffectLife( spep_3 + 0, SP_04, 114, 0x80, -1, 0, 0, 0 );  --攻撃・奥(ef_004)
setEffMoveKey( spep_3 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 114, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 114, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 114, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 114, attack_b, 255 );

a = 3;
-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 20 -a, 906, 48, 0x100, -1, 0, 35, 75 );  --集中線
setEffShake( spep_3 + 20 -a, shuchusen4, 48, 20 );

setEffMoveKey( spep_3 + 20 -a, shuchusen4, 35, 75 , 0 );
setEffMoveKey( spep_3 + 68 -a, shuchusen4, 35, 75 , 0 );

setEffScaleKey( spep_3 + 20 -a, shuchusen4, 1.2, 1.2 );
setEffScaleKey( spep_3 + 68 -a, shuchusen4, 1.2, 1.2 );

setEffRotateKey( spep_3 + 22 -a, shuchusen4, 0 );
setEffRotateKey( spep_3 + 68 -a, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 20 -a, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 26 -a, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 27 -a, shuchusen4, 0 );
setEffAlphaKey( spep_3 + 43 -a, shuchusen4, 0 );
setEffAlphaKey( spep_3 + 44 -a, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 68 -a, shuchusen4, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_3 + 76 -a, 921, 38 +a, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_3 + 76 -a, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 114, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 76 -a, ryusen1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 114, ryusen1, 1.0, 1.0 );

setEffRotateKey( spep_3 + 76 -a, ryusen1, -15.8 );
setEffRotateKey( spep_3 + 114, ryusen1, -15.8 );

setEffAlphaKey( spep_3 + 76 -a, ryusen1, 255 );
setEffAlphaKey( spep_3 + 114, ryusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 114, 1, 0 );
changeAnime( spep_3 + 0, 1, 101 );
changeAnime( spep_3 + 48 -a, 1, 108 );

setMoveKey( spep_3 + 0, 1, 49.9, 53.5 , 0 );
setMoveKey( spep_3 + 2, 1, 50, 53.5 , 0 );
setMoveKey( spep_3 + 14 -a, 1, 50, 53.5 , 0 );
setMoveKey( spep_3 + 16 -a, 1, 47.9, 49.9 , 0 );
setMoveKey( spep_3 + 18 -a, 1, 53.3, 55.4 , 0 );
setMoveKey( spep_3 + 20 -a, 1, 48.5, 49.4 , 0 );
setMoveKey( spep_3 + 22 -a, 1, 55.7, 56.7 , 0 );
setMoveKey( spep_3 + 24 -a, 1, 45.4, 50.6 , 0 );
setMoveKey( spep_3 + 26 -a, 1, 51.8, 54.8 , 0 );
setMoveKey( spep_3 + 28 -a, 1, 47.7, 53 , 0 );
setMoveKey( spep_3 + 30 -a, 1, 50.5, 54.3 , 0 );
setMoveKey( spep_3 + 32 -a, 1, 48.2, 53.6 , 0 );
setMoveKey( spep_3 + 34 -a, 1, 48.8, 54.1 , 0 );
setMoveKey( spep_3 + 44 -a, 1, 48.8, 54.1 , 0 );
setMoveKey( spep_3 + 47 -a, 1, 10.6, 64.9 , 0 );
setMoveKey( spep_3 + 48 -a, 1, 110.7, 51.2 , 0 );
setMoveKey( spep_3 + 50 -a, 1, 52.8, 131.9 , 0 );
setMoveKey( spep_3 + 52 -a, 1, 64.5, 24.4 , 0 );
setMoveKey( spep_3 + 54 -a, 1, 70.8, 83.4 , 0 );
setMoveKey( spep_3 + 56 -a, 1, 65.3, 73.9 , 0 );
setMoveKey( spep_3 + 58 -a, 1, 68.3, 82.2 , 0 );
setMoveKey( spep_3 + 60 -a, 1, 65.9, 76.5 , 0 );
setMoveKey( spep_3 + 62 -a, 1, 62.9, 79.8 , 0 );
setMoveKey( spep_3 + 64 -a, 1, 70.5, 71.7 , 0 );
setMoveKey( spep_3 + 66 -a, 1, 72.7, 77.9 , 0 );
setMoveKey( spep_3 + 68 -a, 1, 62.7, 80.9 , 0 );
setMoveKey( spep_3 + 70 -a, 1, 68.2, 79.5 , 0 );
setMoveKey( spep_3 + 72 -a, 1, 68.7, 78.5 , 0 );
setMoveKey( spep_3 + 74 -a, 1, 76, 87.5 , 0 );
setMoveKey( spep_3 + 76 -a, 1, 75, 85.6 , 0 );
setMoveKey( spep_3 + 78 -a, 1, 77.2, 89 , 0 );
setMoveKey( spep_3 + 80 -a, 1, 136.9, 103.1 , 0 );
setMoveKey( spep_3 + 82 -a, 1, 165.1, 108.7 , 0 );
setMoveKey( spep_3 + 84 -a, 1, 183.8, 109.9 , 0 );
setMoveKey( spep_3 + 86 -a, 1, 202.7, 115.6 , 0 );
setMoveKey( spep_3 + 88 -a, 1, 216.2, 116.7 , 0 );
setMoveKey( spep_3 + 90 -a, 1, 230, 119.9 , 0 );
setMoveKey( spep_3 + 92 -a, 1, 241.4, 121.3 , 0 );
setMoveKey( spep_3 + 94 -a, 1, 250.3, 123.7 , 0 );
setMoveKey( spep_3 + 96 -a, 1, 259.4, 125.1 , 0 );
setMoveKey( spep_3 + 98 -a, 1, 267, 126.5 , 0 );
setMoveKey( spep_3 + 100 -a, 1, 273.6, 127.8 , 0 );
setMoveKey( spep_3 + 102 -a, 1, 279.2, 128.8 , 0 );
setMoveKey( spep_3 + 104 -a, 1, 284.1, 129.7 , 0 );
setMoveKey( spep_3 + 106 -a, 1, 287.8, 130.3 , 0 );
setMoveKey( spep_3 + 108 -a, 1, 290.6, 130.9 , 0 );
setMoveKey( spep_3 + 110 -a, 1, 292.4, 131.2 , 0 );
setMoveKey( spep_3 + 114, 1, 305.4, 136.2 , 0 );

setScaleKey( spep_3 + 0, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 47 -a, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 48 -a, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 78 -a, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 80 -a, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 82 -a, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 84 -a, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 86 -a, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 88 -a, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 90 -a, 1, 0.66, 0.66 );
setScaleKey( spep_3 + 92 -a, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 94 -a, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 96 -a, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 98 -a, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 100 -a, 1, 0.47, 0.47 );
setScaleKey( spep_3 + 102 -a, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 104 -a, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 106 -a, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 108 -a, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 110 -a, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 114, 1, 0.39, 0.39 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 47 -a, 1, 0 );
setRotateKey( spep_3 + 48 -a, 1, -11.8 );
setRotateKey( spep_3 + 60 -a, 1, -11.8 );
setRotateKey( spep_3 + 62 -a, 1, -12 );
setRotateKey( spep_3 + 64 -a, 1, -12.3 );
setRotateKey( spep_3 + 68 -a, 1, -12.3 );
setRotateKey( spep_3 + 70 -a, 1, -12.5 );
setRotateKey( spep_3 + 72 -a, 1, -13.3 );
setRotateKey( spep_3 + 74 -a, 1, -14.1 );
setRotateKey( spep_3 + 76 -a, 1, -15 );
setRotateKey( spep_3 + 78 -a, 1, -15.8 );
setRotateKey( spep_3 + 114, 1, -15.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 114, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade
entryFade( spep_3 + 106, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 14, 1004);  --攻撃
playSe( spep_3 + 48 -a, 1067);  --飛んでく

-- ** 次の準備 ** --
spep_4 = spep_3 + 114;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_4 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(144F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01r, 144, 0x100, -1, 0, 0, 0 );  --気溜め(ef_001r)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 144, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 144, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 143, tame, 255 );
setEffAlphaKey( spep_0 + 144, tame, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 144, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 132, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.9, 1.9 );
setEffScaleKey( spep_0 + 144, shuchusen1, 1.9, 1.9 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 144, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 143, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 144, shuchusen1, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 56,  190006, 68, 0x100, -1, 0, -9.9, 521.8 ); --ゴゴゴ
setEffShake( spep_0 + 56, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 56, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 124, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 56, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 116, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 118, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 120, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 122, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 124, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 56, ctgogo, 0 );
setEffRotateKey( spep_0 + 124, ctgogo, 0 );

setEffAlphaKey( spep_0 + 56, ctgogo, 255 );
setEffAlphaKey( spep_0 + 124, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 38, 1035 );  --気溜め
playSe( spep_0 + 56, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 40, 0, 0, 0, 0, 200 );  --薄い黒　背景
entryFadeBg( spep_0 + 40 -2, 0, 104 +2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 130, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 144;

------------------------------------------------------
-- 構え(172F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_1 + 0, SP_02, 172, 0x100, -1, 0, 0, 0 );  --構え(ef_002)
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 172, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_1 + 172, kamae, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 172, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 172, kamae, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 2,  906, 170, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 2, shuchusen2, 170, 25 );

setEffMoveKey( spep_1 + 2, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 172, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 2, shuchusen2, 1.49, 1.49 );
setEffScaleKey( spep_1 + 4, shuchusen2, 1.48, 1.48 );
setEffScaleKey( spep_1 + 6, shuchusen2, 1.47, 1.47 );
setEffScaleKey( spep_1 + 8, shuchusen2, 1.46, 1.46 );
setEffScaleKey( spep_1 + 10, shuchusen2, 1.45, 1.45 );
setEffScaleKey( spep_1 + 12, shuchusen2, 1.44, 1.44 );
setEffScaleKey( spep_1 + 14, shuchusen2, 1.44, 1.44 );
setEffScaleKey( spep_1 + 16, shuchusen2, 1.43, 1.43 );
setEffScaleKey( spep_1 + 18, shuchusen2, 1.42, 1.42 );
setEffScaleKey( spep_1 + 20, shuchusen2, 1.41, 1.41 );
setEffScaleKey( spep_1 + 22, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_1 + 24, shuchusen2, 1.39, 1.39 );
setEffScaleKey( spep_1 + 26, shuchusen2, 1.38, 1.38 );
setEffScaleKey( spep_1 + 28, shuchusen2, 1.37, 1.37 );
setEffScaleKey( spep_1 + 30, shuchusen2, 1.36, 1.36 );
setEffScaleKey( spep_1 + 32, shuchusen2, 1.35, 1.35 );
setEffScaleKey( spep_1 + 34, shuchusen2, 1.34, 1.34 );
setEffScaleKey( spep_1 + 36, shuchusen2, 1.33, 1.33 );
setEffScaleKey( spep_1 + 38, shuchusen2, 1.33, 1.33 );
setEffScaleKey( spep_1 + 40, shuchusen2, 1.32, 1.32 );
setEffScaleKey( spep_1 + 42, shuchusen2, 1.31, 1.31 );
setEffScaleKey( spep_1 + 44, shuchusen2, 1.3, 1.3 );
setEffScaleKey( spep_1 + 46, shuchusen2, 1.29, 1.29 );
setEffScaleKey( spep_1 + 48, shuchusen2, 1.28, 1.28 );
setEffScaleKey( spep_1 + 50, shuchusen2, 1.27, 1.27 );
setEffScaleKey( spep_1 + 52, shuchusen2, 1.26, 1.26 );
setEffScaleKey( spep_1 + 54, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_1 + 56, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 + 58, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 + 60, shuchusen2, 1.22, 1.22 );
setEffScaleKey( spep_1 + 62, shuchusen2, 1.22, 1.22 );
setEffScaleKey( spep_1 + 64, shuchusen2, 1.21, 1.21 );
setEffScaleKey( spep_1 + 66, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 + 68, shuchusen2, 1.19, 1.19 );
setEffScaleKey( spep_1 + 70, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_1 + 72, shuchusen2, 1.17, 1.17 );
setEffScaleKey( spep_1 + 74, shuchusen2, 1.16, 1.16 );
setEffScaleKey( spep_1 + 76, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_1 + 78, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_1 + 80, shuchusen2, 1.13, 1.13 );
setEffScaleKey( spep_1 + 82, shuchusen2, 1.12, 1.12 );
setEffScaleKey( spep_1 + 84, shuchusen2, 1.11, 1.11 );
setEffScaleKey( spep_1 + 86, shuchusen2, 1.11, 1.11 );
setEffScaleKey( spep_1 + 88, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.09, 1.09 );
setEffScaleKey( spep_1 + 92, shuchusen2, 1.08, 1.08 );
setEffScaleKey( spep_1 + 94, shuchusen2, 1.07, 1.07 );
setEffScaleKey( spep_1 + 96, shuchusen2, 1.06, 1.06 );
setEffScaleKey( spep_1 + 98, shuchusen2, 1.05, 1.05 );
setEffScaleKey( spep_1 + 172, shuchusen2, 1.05, 1.05 );

setEffRotateKey( spep_1 + 2, shuchusen2, 0 );
setEffRotateKey( spep_1 + 172, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 2, shuchusen2, 5 );
setEffAlphaKey( spep_1 + 4, shuchusen2, 10 );
setEffAlphaKey( spep_1 + 6, shuchusen2, 16 );
setEffAlphaKey( spep_1 + 8, shuchusen2, 21 );
setEffAlphaKey( spep_1 + 10, shuchusen2, 26 );
setEffAlphaKey( spep_1 + 12, shuchusen2, 31 );
setEffAlphaKey( spep_1 + 14, shuchusen2, 36 );
setEffAlphaKey( spep_1 + 16, shuchusen2, 42 );
setEffAlphaKey( spep_1 + 18, shuchusen2, 47 );
setEffAlphaKey( spep_1 + 20, shuchusen2, 52 );
setEffAlphaKey( spep_1 + 22, shuchusen2, 57 );
setEffAlphaKey( spep_1 + 24, shuchusen2, 62 );
setEffAlphaKey( spep_1 + 26, shuchusen2, 68 );
setEffAlphaKey( spep_1 + 28, shuchusen2, 73 );
setEffAlphaKey( spep_1 + 30, shuchusen2, 78 );
setEffAlphaKey( spep_1 + 32, shuchusen2, 83 );
setEffAlphaKey( spep_1 + 34, shuchusen2, 88 );
setEffAlphaKey( spep_1 + 36, shuchusen2, 94 );
setEffAlphaKey( spep_1 + 38, shuchusen2, 99 );
setEffAlphaKey( spep_1 + 40, shuchusen2, 104 );
setEffAlphaKey( spep_1 + 42, shuchusen2, 109 );
setEffAlphaKey( spep_1 + 44, shuchusen2, 114 );
setEffAlphaKey( spep_1 + 46, shuchusen2, 120 );
setEffAlphaKey( spep_1 + 48, shuchusen2, 125 );
setEffAlphaKey( spep_1 + 50, shuchusen2, 130 );
setEffAlphaKey( spep_1 + 52, shuchusen2, 135 );
setEffAlphaKey( spep_1 + 54, shuchusen2, 141 );
setEffAlphaKey( spep_1 + 56, shuchusen2, 146 );
setEffAlphaKey( spep_1 + 58, shuchusen2, 151 );
setEffAlphaKey( spep_1 + 60, shuchusen2, 156 );
setEffAlphaKey( spep_1 + 62, shuchusen2, 161 );
setEffAlphaKey( spep_1 + 64, shuchusen2, 167 );
setEffAlphaKey( spep_1 + 66, shuchusen2, 172 );
setEffAlphaKey( spep_1 + 68, shuchusen2, 177 );
setEffAlphaKey( spep_1 + 70, shuchusen2, 182 );
setEffAlphaKey( spep_1 + 72, shuchusen2, 187 );
setEffAlphaKey( spep_1 + 74, shuchusen2, 193 );
setEffAlphaKey( spep_1 + 76, shuchusen2, 198 );
setEffAlphaKey( spep_1 + 78, shuchusen2, 203 );
setEffAlphaKey( spep_1 + 80, shuchusen2, 208 );
setEffAlphaKey( spep_1 + 82, shuchusen2, 213 );
setEffAlphaKey( spep_1 + 84, shuchusen2, 219 );
setEffAlphaKey( spep_1 + 86, shuchusen2, 224 );
setEffAlphaKey( spep_1 + 88, shuchusen2, 229 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 234 );
setEffAlphaKey( spep_1 + 92, shuchusen2, 239 );
setEffAlphaKey( spep_1 + 94, shuchusen2, 245 );
setEffAlphaKey( spep_1 + 96, shuchusen2, 250 );
setEffAlphaKey( spep_1 + 98, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 172, shuchusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 172, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_1 + 6, 8 );  --迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 64; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

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

-- ** 音 ** --
playSe( spep_1 + 98, 44 );  --構え

-- ** ホワイトフェード ** --
entryFade( spep_1 + 166, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 172;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 攻撃(114F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_3 + 0, SP_03r, 114, 0x100, -1, 0, 0, 0 );  --攻撃・手前(ef_003r)
setEffMoveKey( spep_3 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 114, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 114, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 114, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 114, attack_f, 255 );

attack_b = entryEffectLife( spep_3 + 0, SP_04, 114, 0x80, -1, 0, 0, 0 );  --攻撃・奥(ef_004)
setEffMoveKey( spep_3 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 114, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 114, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 114, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 114, attack_b, 255 );

a = 3;
-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 20 -a, 906, 48, 0x100, -1, 0, 35, 75 );  --集中線
setEffShake( spep_3 + 20 -a, shuchusen4, 48, 20 );

setEffMoveKey( spep_3 + 20 -a, shuchusen4, 35, 75 , 0 );
setEffMoveKey( spep_3 + 68 -a, shuchusen4, 35, 75 , 0 );

setEffScaleKey( spep_3 + 20 -a, shuchusen4, 1.2, 1.2 );
setEffScaleKey( spep_3 + 68 -a, shuchusen4, 1.2, 1.2 );

setEffRotateKey( spep_3 + 22 -a, shuchusen4, 0 );
setEffRotateKey( spep_3 + 68 -a, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 20 -a, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 26 -a, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 27 -a, shuchusen4, 0 );
setEffAlphaKey( spep_3 + 43 -a, shuchusen4, 0 );
setEffAlphaKey( spep_3 + 44 -a, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 68 -a, shuchusen4, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_3 + 76 -a, 921, 38 +a, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_3 + 76 -a, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 114, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 76 -a, ryusen1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 114, ryusen1, 1.0, 1.0 );

setEffRotateKey( spep_3 + 76 -a, ryusen1, -15.8 );
setEffRotateKey( spep_3 + 114, ryusen1, -15.8 );

setEffAlphaKey( spep_3 + 76 -a, ryusen1, 255 );
setEffAlphaKey( spep_3 + 114, ryusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 114, 1, 0 );
changeAnime( spep_3 + 0, 1, 101 );
changeAnime( spep_3 + 48 -a, 1, 108 );

setMoveKey( spep_3 + 0, 1, 49.9, 53.5 , 0 );
setMoveKey( spep_3 + 2, 1, 50, 53.5 , 0 );
setMoveKey( spep_3 + 14 -a, 1, 50, 53.5 , 0 );
setMoveKey( spep_3 + 16 -a, 1, 47.9, 49.9 , 0 );
setMoveKey( spep_3 + 18 -a, 1, 53.3, 55.4 , 0 );
setMoveKey( spep_3 + 20 -a, 1, 48.5, 49.4 , 0 );
setMoveKey( spep_3 + 22 -a, 1, 55.7, 56.7 , 0 );
setMoveKey( spep_3 + 24 -a, 1, 45.4, 50.6 , 0 );
setMoveKey( spep_3 + 26 -a, 1, 51.8, 54.8 , 0 );
setMoveKey( spep_3 + 28 -a, 1, 47.7, 53 , 0 );
setMoveKey( spep_3 + 30 -a, 1, 50.5, 54.3 , 0 );
setMoveKey( spep_3 + 32 -a, 1, 48.2, 53.6 , 0 );
setMoveKey( spep_3 + 34 -a, 1, 48.8, 54.1 , 0 );
setMoveKey( spep_3 + 44 -a, 1, 48.8, 54.1 , 0 );
setMoveKey( spep_3 + 47 -a, 1, 10.6, 64.9 , 0 );
setMoveKey( spep_3 + 48 -a, 1, 110.7, 51.2 , 0 );
setMoveKey( spep_3 + 50 -a, 1, 52.8, 131.9 , 0 );
setMoveKey( spep_3 + 52 -a, 1, 64.5, 24.4 , 0 );
setMoveKey( spep_3 + 54 -a, 1, 70.8, 83.4 , 0 );
setMoveKey( spep_3 + 56 -a, 1, 65.3, 73.9 , 0 );
setMoveKey( spep_3 + 58 -a, 1, 68.3, 82.2 , 0 );
setMoveKey( spep_3 + 60 -a, 1, 65.9, 76.5 , 0 );
setMoveKey( spep_3 + 62 -a, 1, 62.9, 79.8 , 0 );
setMoveKey( spep_3 + 64 -a, 1, 70.5, 71.7 , 0 );
setMoveKey( spep_3 + 66 -a, 1, 72.7, 77.9 , 0 );
setMoveKey( spep_3 + 68 -a, 1, 62.7, 80.9 , 0 );
setMoveKey( spep_3 + 70 -a, 1, 68.2, 79.5 , 0 );
setMoveKey( spep_3 + 72 -a, 1, 68.7, 78.5 , 0 );
setMoveKey( spep_3 + 74 -a, 1, 76, 87.5 , 0 );
setMoveKey( spep_3 + 76 -a, 1, 75, 85.6 , 0 );
setMoveKey( spep_3 + 78 -a, 1, 77.2, 89 , 0 );
setMoveKey( spep_3 + 80 -a, 1, 136.9, 103.1 , 0 );
setMoveKey( spep_3 + 82 -a, 1, 165.1, 108.7 , 0 );
setMoveKey( spep_3 + 84 -a, 1, 183.8, 109.9 , 0 );
setMoveKey( spep_3 + 86 -a, 1, 202.7, 115.6 , 0 );
setMoveKey( spep_3 + 88 -a, 1, 216.2, 116.7 , 0 );
setMoveKey( spep_3 + 90 -a, 1, 230, 119.9 , 0 );
setMoveKey( spep_3 + 92 -a, 1, 241.4, 121.3 , 0 );
setMoveKey( spep_3 + 94 -a, 1, 250.3, 123.7 , 0 );
setMoveKey( spep_3 + 96 -a, 1, 259.4, 125.1 , 0 );
setMoveKey( spep_3 + 98 -a, 1, 267, 126.5 , 0 );
setMoveKey( spep_3 + 100 -a, 1, 273.6, 127.8 , 0 );
setMoveKey( spep_3 + 102 -a, 1, 279.2, 128.8 , 0 );
setMoveKey( spep_3 + 104 -a, 1, 284.1, 129.7 , 0 );
setMoveKey( spep_3 + 106 -a, 1, 287.8, 130.3 , 0 );
setMoveKey( spep_3 + 108 -a, 1, 290.6, 130.9 , 0 );
setMoveKey( spep_3 + 110 -a, 1, 292.4, 131.2 , 0 );
setMoveKey( spep_3 + 114, 1, 305.4, 136.2 , 0 );

setScaleKey( spep_3 + 0, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 47 -a, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 48 -a, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 78 -a, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 80 -a, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 82 -a, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 84 -a, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 86 -a, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 88 -a, 1, 0.72, 0.72 );
setScaleKey( spep_3 + 90 -a, 1, 0.66, 0.66 );
setScaleKey( spep_3 + 92 -a, 1, 0.62, 0.62 );
setScaleKey( spep_3 + 94 -a, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 96 -a, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 98 -a, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 100 -a, 1, 0.47, 0.47 );
setScaleKey( spep_3 + 102 -a, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 104 -a, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 106 -a, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 108 -a, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 110 -a, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 114, 1, 0.39, 0.39 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 47 -a, 1, 0 );
setRotateKey( spep_3 + 48 -a, 1, -11.8 );
setRotateKey( spep_3 + 60 -a, 1, -11.8 );
setRotateKey( spep_3 + 62 -a, 1, -12 );
setRotateKey( spep_3 + 64 -a, 1, -12.3 );
setRotateKey( spep_3 + 68 -a, 1, -12.3 );
setRotateKey( spep_3 + 70 -a, 1, -12.5 );
setRotateKey( spep_3 + 72 -a, 1, -13.3 );
setRotateKey( spep_3 + 74 -a, 1, -14.1 );
setRotateKey( spep_3 + 76 -a, 1, -15 );
setRotateKey( spep_3 + 78 -a, 1, -15.8 );
setRotateKey( spep_3 + 114, 1, -15.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 114, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade
entryFade( spep_3 + 106, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 14, 1004);  --攻撃
playSe( spep_3 + 48 -a, 1067);  --飛んでく

-- ** 次の準備 ** --
spep_4 = spep_3 + 114;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_4 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

end



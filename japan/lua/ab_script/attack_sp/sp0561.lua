--フリーザ(最終形態)_この星を消す！！！！

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
SP_01 = 153568; --導入
SP_02 = 153569; --溜め
SP_03 = 153570; --構え
SP_04 = 153571; --振り落とす
SP_05 = 153572; --爆発
SP_06 = 153573; --被弾　手前
SP_07 = 153574; --被弾　奥
SP_08 = 153576; --全体爆発

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

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 導入(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 196, 0x100, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 196, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 196, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 114 -3, 906, 82 +3, 0x100, -1, 0, 0, -40 );  --集中線
setEffShake( spep_0 + 114 -3, shuchusen1, 82 +3, 20 );

setEffMoveKey( spep_0 + 114 -3, shuchusen1, 0, -40 , 0 );
setEffMoveKey( spep_0 + 136 -3, shuchusen1, 0, -40 , 0 );
setEffMoveKey( spep_0 + 138 -3, shuchusen1, 0, -76 , 0 );
setEffMoveKey( spep_0 + 140 -3, shuchusen1, 0, -72 , 0 );
setEffMoveKey( spep_0 + 142 -3, shuchusen1, 0, -68 , 0 );
setEffMoveKey( spep_0 + 144 -3, shuchusen1, 0, -64 , 0 );
setEffMoveKey( spep_0 + 146 -3, shuchusen1, 0, -60 , 0 );
setEffMoveKey( spep_0 + 148 -3, shuchusen1, 0, -56 , 0 );
setEffMoveKey( spep_0 + 150 -3, shuchusen1, 0, -52 , 0 );
setEffMoveKey( spep_0 + 152 -3, shuchusen1, 0, -48 , 0 );
setEffMoveKey( spep_0 + 154 -3, shuchusen1, 0, -44 , 0 );
setEffMoveKey( spep_0 + 156 -3, shuchusen1, 0, -40 , 0 );
setEffMoveKey( spep_0 + 158 -3, shuchusen1, 0, -36 , 0 );
setEffMoveKey( spep_0 + 160 -3, shuchusen1, 0, -32 , 0 );
setEffMoveKey( spep_0 + 162 -3, shuchusen1, 0, -28 , 0 );
setEffMoveKey( spep_0 + 164 -3, shuchusen1, 0, -24 , 0 );
setEffMoveKey( spep_0 + 166 -3, shuchusen1, 0, -20 , 0 );
setEffMoveKey( spep_0 + 168 -3, shuchusen1, 0, -16 , 0 );
setEffMoveKey( spep_0 + 170 -3, shuchusen1, 0, -12 , 0 );
setEffMoveKey( spep_0 + 172 -3, shuchusen1, 0, -8 , 0 );
setEffMoveKey( spep_0 + 174 -3, shuchusen1, 0, -4 , 0 );
setEffMoveKey( spep_0 + 176 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178 -3, shuchusen1, 0, 4 , 0 );
setEffMoveKey( spep_0 + 180 -3, shuchusen1, 0, 8 , 0 );
setEffMoveKey( spep_0 + 182 -3, shuchusen1, 0, 12 , 0 );
setEffMoveKey( spep_0 + 184 -3, shuchusen1, 0, 16 , 0 );
setEffMoveKey( spep_0 + 186 -3, shuchusen1, 0, 20 , 0 );
setEffMoveKey( spep_0 + 188 -3, shuchusen1, 0, 24 , 0 );
setEffMoveKey( spep_0 + 190 -3, shuchusen1, 0, 28 , 0 );
setEffMoveKey( spep_0 + 192 -3, shuchusen1, 0, 32 , 0 );
setEffMoveKey( spep_0 + 194 -3, shuchusen1, 0, 36 , 0 );
setEffMoveKey( spep_0 + 196 -3, shuchusen1, 0, 40 , 0 );
setEffMoveKey( spep_0 + 196, shuchusen1, 0, 44 , 0 );

setEffScaleKey( spep_0 + 114 -3, shuchusen1, 1.33, 1.66 );
setEffScaleKey( spep_0 + 136 -3, shuchusen1, 1.33, 1.66 );
setEffScaleKey( spep_0 + 138 -3, shuchusen1, 1.07, 1.42 );
setEffScaleKey( spep_0 + 140 -3, shuchusen1, 1.08, 1.42 );
setEffScaleKey( spep_0 + 142 -3, shuchusen1, 1.08, 1.42 );
setEffScaleKey( spep_0 + 144 -3, shuchusen1, 1.09, 1.43 );
setEffScaleKey( spep_0 + 146 -3, shuchusen1, 1.1, 1.43 );
setEffScaleKey( spep_0 + 148 -3, shuchusen1, 1.1, 1.43 );
setEffScaleKey( spep_0 + 150 -3, shuchusen1, 1.11, 1.43 );
setEffScaleKey( spep_0 + 152 -3, shuchusen1, 1.11, 1.44 );
setEffScaleKey( spep_0 + 154 -3, shuchusen1, 1.12, 1.44 );
setEffScaleKey( spep_0 + 156 -3, shuchusen1, 1.13, 1.44 );
setEffScaleKey( spep_0 + 158 -3, shuchusen1, 1.13, 1.44 );
setEffScaleKey( spep_0 + 160 -3, shuchusen1, 1.14, 1.45 );
setEffScaleKey( spep_0 + 162 -3, shuchusen1, 1.15, 1.45 );
setEffScaleKey( spep_0 + 164 -3, shuchusen1, 1.15, 1.45 );
setEffScaleKey( spep_0 + 166 -3, shuchusen1, 1.16, 1.45 );
setEffScaleKey( spep_0 + 168 -3, shuchusen1, 1.17, 1.46 );
setEffScaleKey( spep_0 + 170 -3, shuchusen1, 1.17, 1.46 );
setEffScaleKey( spep_0 + 172 -3, shuchusen1, 1.18, 1.46 );
setEffScaleKey( spep_0 + 174 -3, shuchusen1, 1.18, 1.46 );
setEffScaleKey( spep_0 + 176 -3, shuchusen1, 1.19, 1.46 );
setEffScaleKey( spep_0 + 178 -3, shuchusen1, 1.2, 1.47 );
setEffScaleKey( spep_0 + 180 -3, shuchusen1, 1.2, 1.47 );
setEffScaleKey( spep_0 + 182 -3, shuchusen1, 1.21, 1.47 );
setEffScaleKey( spep_0 + 184 -3, shuchusen1, 1.22, 1.47 );
setEffScaleKey( spep_0 + 186 -3, shuchusen1, 1.22, 1.48 );
setEffScaleKey( spep_0 + 188 -3, shuchusen1, 1.23, 1.48 );
setEffScaleKey( spep_0 + 190 -3, shuchusen1, 1.23, 1.48 );
setEffScaleKey( spep_0 + 192 -3, shuchusen1, 1.24, 1.48 );
setEffScaleKey( spep_0 + 194 -3, shuchusen1, 1.25, 1.49 );
setEffScaleKey( spep_0 + 196 -3, shuchusen1, 1.25, 1.49 );
setEffScaleKey( spep_0 + 196, shuchusen1, 1.26, 1.49 );

setEffRotateKey( spep_0 + 114 -3, shuchusen1, 0 );
setEffRotateKey( spep_0 + 196, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 114 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 196, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_0 + 8, 49 );  --溜める
playSe( spep_0 + 28, 49 );
playSe( spep_0 + 48, 49 );
playSe( spep_0 + 68, 49 );
playSe( spep_0 + 88, 49 );
SE1 = playSe( spep_0 + 114 -3, 15 );  --上に掲げる
stopSe(spep_0 + 186, SE1, 10);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 178, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 156; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 10);

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 102 );

setMoveKey( SP_dodge + 0, 1, 650.5 +1000, -545.2 -920, 0 );
setMoveKey( SP_dodge + 10, 1, 650.5 +1000, -545.2 -920, 0 );

setScaleKey( SP_dodge + 0, 1, 3.46, 3.46 );
setScaleKey( SP_dodge + 10, 1, 3.46, 3.46 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
------------------------------------------------------
-- 持ち上げ(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
age = entryEffectLife( spep_1 + 0, SP_02, 86, 0x100, -1, 0, 0, 0 );  --持ち上げ(ef_002)
setEffMoveKey( spep_1 + 0, age, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, age, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, age, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, age, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, age, 0 );
setEffRotateKey( spep_1 + 86, age, 0 );
setEffAlphaKey( spep_1 + 0, age, 255 );
setEffAlphaKey( spep_1 + 86, age, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 78, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 6, 1019 );  --構え

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 顔カットイン(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
cutin = entryEffectLife( spep_3 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --顔カットイン(ef_003)
setEffMoveKey( spep_3 + 0, cutin, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, cutin, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, cutin, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, cutin, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cutin, 0 );
setEffRotateKey( spep_3 + 96, cutin, 0 );
setEffAlphaKey( spep_3 + 0, cutin, 255 );
setEffAlphaKey( spep_3 + 96, cutin, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_3 + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_3 + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_3 + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_3 + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_3 + 16, ctgogo, 0 );
setEffRotateKey( spep_3 + 84, ctgogo, 0 );

setEffAlphaKey( spep_3 + 16, ctgogo, 255 );
setEffAlphaKey( spep_3 + 84, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 16, SE_04 );  --ゴゴゴ
playSe( spep_3 + 94, 8 );  --投げる

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

------------------------------------------------------
-- 振り落とす(46F)
------------------------------------------------------

-- ** エフェクト等 ** --
drop = entryEffectLife( spep_4 + 0, SP_04, 46, 0x80, -1, 0, 0, 0 );  --振り落とす(ef_004)
setEffMoveKey( spep_4 + 0, drop, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, drop, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, drop, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, drop, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, drop, 0 );
setEffRotateKey( spep_4 + 46, drop, 0 );
setEffAlphaKey( spep_4 + 0, drop, 255 );
setEffAlphaKey( spep_4 + 46, drop, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 46, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 40, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 46;

------------------------------------------------------
-- 爆発(196F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffectLife( spep_5 + 0, SP_05, 196, 0x80, -1, 0, 0, 0 );  --爆発(ef_005)
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 196, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_5 + 196, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 196, bakuhatsu, 0 );
setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 196, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 0, 906, 58, 0x100, -1, 0, 200, -344.1 );  --集中線
setEffShake( spep_5 + 0, shuchusen3, 58, 20 );

setEffMoveKey( spep_5 + 0, shuchusen3, 200, -344.1 , 0 );
setEffMoveKey( spep_5 + 58, shuchusen3, 200, -344.1 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.85, 1.97 );
setEffScaleKey( spep_5 + 58, shuchusen3, 1.85, 1.97 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 58, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 2, shuchusen3, 246 );
setEffAlphaKey( spep_5 + 4, shuchusen3, 237 );
setEffAlphaKey( spep_5 + 6, shuchusen3, 229 );
setEffAlphaKey( spep_5 + 8, shuchusen3, 220 );
setEffAlphaKey( spep_5 + 10, shuchusen3, 211 );
setEffAlphaKey( spep_5 + 12, shuchusen3, 202 );
setEffAlphaKey( spep_5 + 14, shuchusen3, 193 );
setEffAlphaKey( spep_5 + 16, shuchusen3, 185 );
setEffAlphaKey( spep_5 + 18, shuchusen3, 176 );
setEffAlphaKey( spep_5 + 20, shuchusen3, 167 );
setEffAlphaKey( spep_5 + 22, shuchusen3, 158 );
setEffAlphaKey( spep_5 + 24, shuchusen3, 149 );
setEffAlphaKey( spep_5 + 26, shuchusen3, 141 );
setEffAlphaKey( spep_5 + 28, shuchusen3, 132 );
setEffAlphaKey( spep_5 + 30, shuchusen3, 123 );
setEffAlphaKey( spep_5 + 32, shuchusen3, 114 );
setEffAlphaKey( spep_5 + 34, shuchusen3, 106 );
setEffAlphaKey( spep_5 + 36, shuchusen3, 97 );
setEffAlphaKey( spep_5 + 38, shuchusen3, 88 );
setEffAlphaKey( spep_5 + 40, shuchusen3, 79 );
setEffAlphaKey( spep_5 + 42, shuchusen3, 70 );
setEffAlphaKey( spep_5 + 44, shuchusen3, 62 );
setEffAlphaKey( spep_5 + 46, shuchusen3, 53 );
setEffAlphaKey( spep_5 + 48, shuchusen3, 44 );
setEffAlphaKey( spep_5 + 50, shuchusen3, 35 );
setEffAlphaKey( spep_5 + 52, shuchusen3, 26 );
setEffAlphaKey( spep_5 + 54, shuchusen3, 18 );
setEffAlphaKey( spep_5 + 56, shuchusen3, 9 );
setEffAlphaKey( spep_5 + 58, shuchusen3, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 196, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_5 + 28, 1023);  --落ちる
setSeVolume(spep_5 + 28, 1023, 70 );
playSe( spep_5 + 118 + 10, 1069);  --爆発
setSeVolume(spep_5 + 118 + 10, 1069, 50 );
setSeVolume(spep_5 + 124 + 10, 1069, 70 );
setSeVolume(spep_5 + 130 + 10, 1069, 100 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 196;

------------------------------------------------------
-- 被弾(110F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_f = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --被弾　手前(ef_006)
setEffMoveKey( spep_6 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan_f, 0 );
setEffRotateKey( spep_6 + 100, hidan_f, 0 );
setEffAlphaKey( spep_6 + 0, hidan_f, 255 );
setEffAlphaKey( spep_6 + 100, hidan_f, 255 );

hidan_b = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --被弾　奥(ef_007)
setEffMoveKey( spep_6 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan_b, 0 );
setEffRotateKey( spep_6 + 100, hidan_b, 0 );
setEffAlphaKey( spep_6 + 0, hidan_b, 255 );
setEffAlphaKey( spep_6 + 100, hidan_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 52, 1, 0 );
changeAnime( spep_6 + 0, 1, 104 );
changeAnime( spep_6 -3 + 8, 1, 108 );

setMoveKey( spep_6 + 0, 1, -163.5, -134 , 0 );
setMoveKey( spep_6 -3 + 7, 1, -163.5, -134 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -75.2, -43.8 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -21.3, 8.4 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -26.6, 4.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 4.5, 33.6 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 7.2, 29.6 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 22, 50.6 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 30.7, 51.2 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 31.2, 61.1 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 50.7, 69.9 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 47.4, 73.9 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 50.6, 72.1 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 68.4, 91.1 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 56, 78.6 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 77.5, 100.7 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 66.3, 87.5 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 86.7, 110.2 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 76.2, 97 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 95.3, 113.1 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 84.5, 106.5 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 111.5, 129.8 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 94.1, 111 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 103.3, 127.4 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 108.8, 124.4 , 0 );

setScaleKey( spep_6 + 0, 1, 2, 2 );
setScaleKey( spep_6 -3 + 52, 1, 2, 2 );

setRotateKey( spep_6 + 0, 1, -28.7 );
setRotateKey( spep_6 -3 + 52, 1, -28.7 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 110, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_6 + 96, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_6 + 4, 1024);  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 8 );
entryFade( spep_6 + 100, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 110 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 196, 0x100, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 196, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 196, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 196, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 114 -3, 906, 82 +3, 0x100, -1, 0, 0, -40 );  --集中線
setEffShake( spep_0 + 114 -3, shuchusen1, 82 +3, 20 );

setEffMoveKey( spep_0 + 114 -3, shuchusen1, 0, -40 , 0 );
setEffMoveKey( spep_0 + 136 -3, shuchusen1, 0, -40 , 0 );
setEffMoveKey( spep_0 + 138 -3, shuchusen1, 0, -76 , 0 );
setEffMoveKey( spep_0 + 140 -3, shuchusen1, 0, -72 , 0 );
setEffMoveKey( spep_0 + 142 -3, shuchusen1, 0, -68 , 0 );
setEffMoveKey( spep_0 + 144 -3, shuchusen1, 0, -64 , 0 );
setEffMoveKey( spep_0 + 146 -3, shuchusen1, 0, -60 , 0 );
setEffMoveKey( spep_0 + 148 -3, shuchusen1, 0, -56 , 0 );
setEffMoveKey( spep_0 + 150 -3, shuchusen1, 0, -52 , 0 );
setEffMoveKey( spep_0 + 152 -3, shuchusen1, 0, -48 , 0 );
setEffMoveKey( spep_0 + 154 -3, shuchusen1, 0, -44 , 0 );
setEffMoveKey( spep_0 + 156 -3, shuchusen1, 0, -40 , 0 );
setEffMoveKey( spep_0 + 158 -3, shuchusen1, 0, -36 , 0 );
setEffMoveKey( spep_0 + 160 -3, shuchusen1, 0, -32 , 0 );
setEffMoveKey( spep_0 + 162 -3, shuchusen1, 0, -28 , 0 );
setEffMoveKey( spep_0 + 164 -3, shuchusen1, 0, -24 , 0 );
setEffMoveKey( spep_0 + 166 -3, shuchusen1, 0, -20 , 0 );
setEffMoveKey( spep_0 + 168 -3, shuchusen1, 0, -16 , 0 );
setEffMoveKey( spep_0 + 170 -3, shuchusen1, 0, -12 , 0 );
setEffMoveKey( spep_0 + 172 -3, shuchusen1, 0, -8 , 0 );
setEffMoveKey( spep_0 + 174 -3, shuchusen1, 0, -4 , 0 );
setEffMoveKey( spep_0 + 176 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178 -3, shuchusen1, 0, 4 , 0 );
setEffMoveKey( spep_0 + 180 -3, shuchusen1, 0, 8 , 0 );
setEffMoveKey( spep_0 + 182 -3, shuchusen1, 0, 12 , 0 );
setEffMoveKey( spep_0 + 184 -3, shuchusen1, 0, 16 , 0 );
setEffMoveKey( spep_0 + 186 -3, shuchusen1, 0, 20 , 0 );
setEffMoveKey( spep_0 + 188 -3, shuchusen1, 0, 24 , 0 );
setEffMoveKey( spep_0 + 190 -3, shuchusen1, 0, 28 , 0 );
setEffMoveKey( spep_0 + 192 -3, shuchusen1, 0, 32 , 0 );
setEffMoveKey( spep_0 + 194 -3, shuchusen1, 0, 36 , 0 );
setEffMoveKey( spep_0 + 196 -3, shuchusen1, 0, 40 , 0 );
setEffMoveKey( spep_0 + 196, shuchusen1, 0, 44 , 0 );

setEffScaleKey( spep_0 + 114 -3, shuchusen1, 1.33, 1.66 );
setEffScaleKey( spep_0 + 136 -3, shuchusen1, 1.33, 1.66 );
setEffScaleKey( spep_0 + 138 -3, shuchusen1, 1.07, 1.42 );
setEffScaleKey( spep_0 + 140 -3, shuchusen1, 1.08, 1.42 );
setEffScaleKey( spep_0 + 142 -3, shuchusen1, 1.08, 1.42 );
setEffScaleKey( spep_0 + 144 -3, shuchusen1, 1.09, 1.43 );
setEffScaleKey( spep_0 + 146 -3, shuchusen1, 1.1, 1.43 );
setEffScaleKey( spep_0 + 148 -3, shuchusen1, 1.1, 1.43 );
setEffScaleKey( spep_0 + 150 -3, shuchusen1, 1.11, 1.43 );
setEffScaleKey( spep_0 + 152 -3, shuchusen1, 1.11, 1.44 );
setEffScaleKey( spep_0 + 154 -3, shuchusen1, 1.12, 1.44 );
setEffScaleKey( spep_0 + 156 -3, shuchusen1, 1.13, 1.44 );
setEffScaleKey( spep_0 + 158 -3, shuchusen1, 1.13, 1.44 );
setEffScaleKey( spep_0 + 160 -3, shuchusen1, 1.14, 1.45 );
setEffScaleKey( spep_0 + 162 -3, shuchusen1, 1.15, 1.45 );
setEffScaleKey( spep_0 + 164 -3, shuchusen1, 1.15, 1.45 );
setEffScaleKey( spep_0 + 166 -3, shuchusen1, 1.16, 1.45 );
setEffScaleKey( spep_0 + 168 -3, shuchusen1, 1.17, 1.46 );
setEffScaleKey( spep_0 + 170 -3, shuchusen1, 1.17, 1.46 );
setEffScaleKey( spep_0 + 172 -3, shuchusen1, 1.18, 1.46 );
setEffScaleKey( spep_0 + 174 -3, shuchusen1, 1.18, 1.46 );
setEffScaleKey( spep_0 + 176 -3, shuchusen1, 1.19, 1.46 );
setEffScaleKey( spep_0 + 178 -3, shuchusen1, 1.2, 1.47 );
setEffScaleKey( spep_0 + 180 -3, shuchusen1, 1.2, 1.47 );
setEffScaleKey( spep_0 + 182 -3, shuchusen1, 1.21, 1.47 );
setEffScaleKey( spep_0 + 184 -3, shuchusen1, 1.22, 1.47 );
setEffScaleKey( spep_0 + 186 -3, shuchusen1, 1.22, 1.48 );
setEffScaleKey( spep_0 + 188 -3, shuchusen1, 1.23, 1.48 );
setEffScaleKey( spep_0 + 190 -3, shuchusen1, 1.23, 1.48 );
setEffScaleKey( spep_0 + 192 -3, shuchusen1, 1.24, 1.48 );
setEffScaleKey( spep_0 + 194 -3, shuchusen1, 1.25, 1.49 );
setEffScaleKey( spep_0 + 196 -3, shuchusen1, 1.25, 1.49 );
setEffScaleKey( spep_0 + 196, shuchusen1, 1.26, 1.49 );

setEffRotateKey( spep_0 + 114 -3, shuchusen1, 0 );
setEffRotateKey( spep_0 + 196, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 114 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 196, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_0 + 8, 49 );  --溜める
playSe( spep_0 + 28, 49 );
playSe( spep_0 + 48, 49 );
playSe( spep_0 + 68, 49 );
playSe( spep_0 + 88, 49 );
SE1 = playSe( spep_0 + 114 -3, 15 );  --上に掲げる
stopSe(spep_0 + 186, SE1, 10);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 178, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 156; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 10);

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 102 );

setMoveKey( SP_dodge + 0, 1, 650.5 +1000, -545.2 -920, 0 );
setMoveKey( SP_dodge + 10, 1, 650.5 +1000, -545.2 -920, 0 );

setScaleKey( SP_dodge + 0, 1, 3.46, 3.46 );
setScaleKey( SP_dodge + 10, 1, 3.46, 3.46 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
------------------------------------------------------
-- 持ち上げ(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
age = entryEffectLife( spep_1 + 0, SP_02, 86, 0x100, -1, 0, 0, 0 );  --持ち上げ(ef_002)
setEffMoveKey( spep_1 + 0, age, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, age, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, age, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, age, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, age, 0 );
setEffRotateKey( spep_1 + 86, age, 0 );
setEffAlphaKey( spep_1 + 0, age, 255 );
setEffAlphaKey( spep_1 + 86, age, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 78, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 6, 1019 );  --構え

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 顔カットイン(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
cutin = entryEffectLife( spep_3 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --顔カットイン(ef_003)
setEffMoveKey( spep_3 + 0, cutin, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, cutin, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, cutin, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, cutin, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cutin, 0 );
setEffRotateKey( spep_3 + 96, cutin, 0 );
setEffAlphaKey( spep_3 + 0, cutin, 255 );
setEffAlphaKey( spep_3 + 96, cutin, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_3 + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_3 + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_3 + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_3 + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_3 + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_3 + 16, ctgogo, 0 );
setEffRotateKey( spep_3 + 84, ctgogo, 0 );

setEffAlphaKey( spep_3 + 16, ctgogo, 255 );
setEffAlphaKey( spep_3 + 84, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 16, SE_04 );  --ゴゴゴ
playSe( spep_3 + 94, 8 );  --投げる

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

------------------------------------------------------
-- 振り落とす(46F)
------------------------------------------------------

-- ** エフェクト等 ** --
drop = entryEffectLife( spep_4 + 0, SP_04, 46, 0x80, -1, 0, 0, 0 );  --振り落とす(ef_004)
setEffMoveKey( spep_4 + 0, drop, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, drop, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, drop, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, drop, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, drop, 0 );
setEffRotateKey( spep_4 + 46, drop, 0 );
setEffAlphaKey( spep_4 + 0, drop, 255 );
setEffAlphaKey( spep_4 + 46, drop, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 46, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 40, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 46;

------------------------------------------------------
-- 爆発(196F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffectLife( spep_5 + 0, SP_05, 196, 0x80, -1, 0, 0, 0 );  --爆発(ef_005)
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 196, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_5 + 196, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 196, bakuhatsu, 0 );
setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 196, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_5 + 0, 906, 58, 0x100, -1, 0, 200, -344.1 );  --集中線
setEffShake( spep_5 + 0, shuchusen3, 58, 20 );

setEffMoveKey( spep_5 + 0, shuchusen3, 200, -344.1 , 0 );
setEffMoveKey( spep_5 + 58, shuchusen3, 200, -344.1 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.85, 1.97 );
setEffScaleKey( spep_5 + 58, shuchusen3, 1.85, 1.97 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 58, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 2, shuchusen3, 246 );
setEffAlphaKey( spep_5 + 4, shuchusen3, 237 );
setEffAlphaKey( spep_5 + 6, shuchusen3, 229 );
setEffAlphaKey( spep_5 + 8, shuchusen3, 220 );
setEffAlphaKey( spep_5 + 10, shuchusen3, 211 );
setEffAlphaKey( spep_5 + 12, shuchusen3, 202 );
setEffAlphaKey( spep_5 + 14, shuchusen3, 193 );
setEffAlphaKey( spep_5 + 16, shuchusen3, 185 );
setEffAlphaKey( spep_5 + 18, shuchusen3, 176 );
setEffAlphaKey( spep_5 + 20, shuchusen3, 167 );
setEffAlphaKey( spep_5 + 22, shuchusen3, 158 );
setEffAlphaKey( spep_5 + 24, shuchusen3, 149 );
setEffAlphaKey( spep_5 + 26, shuchusen3, 141 );
setEffAlphaKey( spep_5 + 28, shuchusen3, 132 );
setEffAlphaKey( spep_5 + 30, shuchusen3, 123 );
setEffAlphaKey( spep_5 + 32, shuchusen3, 114 );
setEffAlphaKey( spep_5 + 34, shuchusen3, 106 );
setEffAlphaKey( spep_5 + 36, shuchusen3, 97 );
setEffAlphaKey( spep_5 + 38, shuchusen3, 88 );
setEffAlphaKey( spep_5 + 40, shuchusen3, 79 );
setEffAlphaKey( spep_5 + 42, shuchusen3, 70 );
setEffAlphaKey( spep_5 + 44, shuchusen3, 62 );
setEffAlphaKey( spep_5 + 46, shuchusen3, 53 );
setEffAlphaKey( spep_5 + 48, shuchusen3, 44 );
setEffAlphaKey( spep_5 + 50, shuchusen3, 35 );
setEffAlphaKey( spep_5 + 52, shuchusen3, 26 );
setEffAlphaKey( spep_5 + 54, shuchusen3, 18 );
setEffAlphaKey( spep_5 + 56, shuchusen3, 9 );
setEffAlphaKey( spep_5 + 58, shuchusen3, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 196, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_5 + 28, 1023);  --落ちる
setSeVolume(spep_5 + 28, 1023, 70 );
playSe( spep_5 + 118 + 10, 1069);  --爆発
setSeVolume(spep_5 + 118 + 10, 1069, 50 );
setSeVolume(spep_5 + 124 + 10, 1069, 70 );
setSeVolume(spep_5 + 130 + 10, 1069, 100 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 196;

------------------------------------------------------
-- 被弾(110F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_f = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --被弾　手前(ef_006)
setEffMoveKey( spep_6 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan_f, 0 );
setEffRotateKey( spep_6 + 100, hidan_f, 0 );
setEffAlphaKey( spep_6 + 0, hidan_f, 255 );
setEffAlphaKey( spep_6 + 100, hidan_f, 255 );

hidan_b = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --被弾　奥(ef_007)
setEffMoveKey( spep_6 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan_b, 0 );
setEffRotateKey( spep_6 + 100, hidan_b, 0 );
setEffAlphaKey( spep_6 + 0, hidan_b, 255 );
setEffAlphaKey( spep_6 + 100, hidan_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 52, 1, 0 );
changeAnime( spep_6 + 0, 1, 104 );
changeAnime( spep_6 -3 + 8, 1, 108 );

setMoveKey( spep_6 + 0, 1, -163.5, -134 , 0 );
setMoveKey( spep_6 -3 + 7, 1, -163.5, -134 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -75.2, -43.8 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -21.3, 8.4 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -26.6, 4.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 4.5, 33.6 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 7.2, 29.6 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 22, 50.6 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 30.7, 51.2 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 31.2, 61.1 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 50.7, 69.9 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 47.4, 73.9 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 50.6, 72.1 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 68.4, 91.1 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 56, 78.6 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 77.5, 100.7 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 66.3, 87.5 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 86.7, 110.2 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 76.2, 97 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 95.3, 113.1 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 84.5, 106.5 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 111.5, 129.8 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 94.1, 111 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 103.3, 127.4 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 108.8, 124.4 , 0 );

setScaleKey( spep_6 + 0, 1, 2, 2 );
setScaleKey( spep_6 -3 + 52, 1, 2, 2 );

setRotateKey( spep_6 + 0, 1, -28.7 );
setRotateKey( spep_6 -3 + 52, 1, -28.7 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 110, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_6 + 96, 10, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_6 + 4, 1024);  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 8 );
entryFade( spep_6 + 100, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_6 + 110 );

end

end --全体必殺技の初回時のEND

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then

spep_z = 0;

setVisibleUI( spep_z, 0 );
setDisp( spep_z, 0, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, -1, 0, 0, -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 );   -- 回避の文字表示
if (_IS_PLAYER_SIDE_ == 1) then

setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0 );

else

setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0 );

end

setEffAlphaKey( SP_dodge, kaihi, 255 );

pauseAll( SP_dodge, 67 );

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

endPhase( SP_dodge + 10 );
do return end
else end

------------------------------------------------------
-- 2人目以降の演出
------------------------------------------------------

-- ** エフェクト等 ** --
zentai = entryEffect( spep_z + 0, SP_08, 0x80, -1, 0, 0, 0 );  --全体爆発(ef_008)
setEffMoveKey( spep_z + 0, zentai, 0, 0 , 0 );
setEffMoveKey( spep_z + 80, zentai, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, zentai, 1.0, 1.0 );
setEffScaleKey( spep_z + 80, zentai, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, zentai, 0 );
setEffRotateKey( spep_z + 80, zentai, 0 );
setEffAlphaKey( spep_z + 0, zentai, 255 );
setEffAlphaKey( spep_z + 80, zentai, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_z + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_z + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_z + 80, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_z + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_z + 80, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_z + 2, hibiware, 0 );
setEffRotateKey( spep_z + 80, hibiware, 0 );

setEffAlphaKey( spep_z + 2, hibiware, 0 );
setEffAlphaKey( spep_z + 13, hibiware, 0 );
setEffAlphaKey( spep_z + 14, hibiware, 255 );
setEffAlphaKey( spep_z + 80, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_z + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_z + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_z + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_z + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_z + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_z + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_z + 14, shuchusen4, 0 );
setEffRotateKey( spep_z + 46, shuchusen4, 0 );

setEffAlphaKey( spep_z + 14, shuchusen4, 255 );
setEffAlphaKey( spep_z + 28, shuchusen4, 255 );
setEffAlphaKey( spep_z + 30, shuchusen4, 252 );
setEffAlphaKey( spep_z + 32, shuchusen4, 242 );
setEffAlphaKey( spep_z + 34, shuchusen4, 227 );
setEffAlphaKey( spep_z + 36, shuchusen4, 205 );
setEffAlphaKey( spep_z + 38, shuchusen4, 176 );
setEffAlphaKey( spep_z + 40, shuchusen4, 142 );
setEffAlphaKey( spep_z + 42, shuchusen4, 101 );
setEffAlphaKey( spep_z + 44, shuchusen4, 54 );
setEffAlphaKey( spep_z + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_z + 14,  1657, 66, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_z + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_z + 80, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_z + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_z + 80, shuchusen5, 1, 1 );

setEffRotateKey( spep_z + 14, shuchusen5, 0 );
setEffRotateKey( spep_z + 80, shuchusen5, 0 );

setEffAlphaKey( spep_z + 14, shuchusen5, 255 );
setEffAlphaKey( spep_z + 80, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga2 = entryEffectLife( spep_z + 14,  10005, 66, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_z + 14, ctga2, 14, 20 );

setEffMoveKey( spep_z + 14, ctga2, 3.9, 316.1 , 0 );
setEffMoveKey( spep_z + 28, ctga2, 3.9, 316.1 , 0 );
setEffMoveKey( spep_z + 80, ctga2, 3.9, 316.1 , 0 );

setEffScaleKey( spep_z + 14, ctga2, 3.2, 3.2 );
setEffScaleKey( spep_z + 80, ctga2, 3.2, 3.2 );

setEffRotateKey( spep_z + 14, ctga2, -10.9 );
setEffRotateKey( spep_z + 15, ctga2, -10.9 );
setEffRotateKey( spep_z + 16, ctga2, -14.9 );
setEffRotateKey( spep_z + 17, ctga2, -14.9 );
setEffRotateKey( spep_z + 18, ctga2, -10.9 );
setEffRotateKey( spep_z + 19, ctga2, -10.9 );
setEffRotateKey( spep_z + 20, ctga2, -14.9 );
setEffRotateKey( spep_z + 21, ctga2, -14.9 );
setEffRotateKey( spep_z + 22, ctga2, -10.9 );
setEffRotateKey( spep_z + 23, ctga2, -10.9 );
setEffRotateKey( spep_z + 24, ctga2, -14.9 );
setEffRotateKey( spep_z + 25, ctga2, -14.9 );
setEffRotateKey( spep_z + 26, ctga2, -10.9 );
setEffRotateKey( spep_z + 27, ctga2, -10.9 );
setEffRotateKey( spep_z + 28, ctga2, -14.9 );
setEffRotateKey( spep_z + 80, ctga2, -14.9 );

setEffAlphaKey( spep_z + 14, ctga2, 255 );
setEffAlphaKey( spep_z + 80, ctga2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
changeAnime( spep_z + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_z + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_z + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_z + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_z + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_z + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_z + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_z + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_z + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_z + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_z + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_z + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_z + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_z + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_z + 80, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_z + 0, 1, 0.2, 0.2 );
setScaleKey( spep_z + 1, 1, 0.2, 0.2 );
setScaleKey( spep_z + 2, 1, 0.25, 0.25 );
setScaleKey( spep_z + 3, 1, 0.25, 0.25 );
setScaleKey( spep_z + 4, 1, 0.46, 0.46 );
setScaleKey( spep_z + 5, 1, 0.46, 0.46 );
setScaleKey( spep_z + 6, 1, 0.55, 0.55 );
setScaleKey( spep_z + 7, 1, 0.55, 0.55 );
setScaleKey( spep_z + 8, 1, 0.71, 0.71 );
setScaleKey( spep_z + 9, 1, 0.71, 0.71 );
setScaleKey( spep_z + 10, 1, 0.97, 0.97 );
setScaleKey( spep_z + 11, 1, 0.97, 0.97 );
setScaleKey( spep_z + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_z + 13, 1, 1.1, 1.1 );
setScaleKey( spep_z + 14, 1, 1.2, 1.2 );
setScaleKey( spep_z + 15, 1, 1.2, 1.2 );
setScaleKey( spep_z + 16, 1, 1.1, 1.1 );
setScaleKey( spep_z + 17, 1, 1.1, 1.1 );
setScaleKey( spep_z + 18, 1, 1.2, 1.2 );
setScaleKey( spep_z + 19, 1, 1.2, 1.2 );
setScaleKey( spep_z + 20, 1, 1.1, 1.1 );
setScaleKey( spep_z + 21, 1, 1.1, 1.1 );
setScaleKey( spep_z + 22, 1, 1.2, 1.2 );
setScaleKey( spep_z + 23, 1, 1.2, 1.2 );
setScaleKey( spep_z + 24, 1, 1.1, 1.1 );
setScaleKey( spep_z + 25, 1, 1.1, 1.1 );
setScaleKey( spep_z + 26, 1, 1.2, 1.2 );
setScaleKey( spep_z + 80, 1, 1.2, 1.2 );

setRotateKey( spep_z + 0, 1, -40 );
setRotateKey( spep_z + 1, 1, -40 );
setRotateKey( spep_z + 2, 1, 80 );
setRotateKey( spep_z + 3, 1, 80 );
setRotateKey( spep_z + 4, 1, 200 );
setRotateKey( spep_z + 5, 1, 200 );
setRotateKey( spep_z + 6, 1, 360 );
setRotateKey( spep_z + 7, 1, 360 );
setRotateKey( spep_z + 8, 1, 558 );
setRotateKey( spep_z + 9, 1, 558 );
setRotateKey( spep_z + 10, 1, 425 );
setRotateKey( spep_z + 11, 1, 425 );
setRotateKey( spep_z + 12, 1, -40 );
setRotateKey( spep_z + 80, 1, -40 );

-- ** 音 ** --
playSe( spep_z + 0, 1024 );  --爆発音
setSeVolume(spep_z + 0, 1024, 70 );
playSe( spep_z + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_z + 0 );
entryFade( spep_z + 70, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_z + 80 );

end



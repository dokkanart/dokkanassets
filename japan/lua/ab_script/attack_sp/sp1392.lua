--ヤムー＆スポポビッチ_エネルギードレイン
--sp_effect_a8_00040

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
SP_01 = 154607; --導入
SP_02 = 154608; --後ろから敵に突進：キャラ
SP_03 = 154609; --首絞め：敵より前
SP_04 = 154610; --首絞め：敵より後ろ
SP_05 = 154611; --首絞め：背景
SP_06 = 154612; --ヤムー突進
SP_07 = 154613; --ツボ刺し：敵より前
SP_08 = 154614; --ツボ刺し：敵より後ろ
SP_09 = 154615; --ラスト：敵より前
SP_10 = 154616; --ラスト：敵より後ろ
SP_11 = 154617; --後ろから敵に突進：背景

--敵側
SP_01r = 154618; --導入：敵側
SP_03r = 154619; --首絞め：敵より前：敵側
SP_04r = 154620; --首絞め：敵より後ろ：敵側
SP_07r = 154621; --ツボ刺し：敵より前：敵側
SP_08r = 154622; --ツボ刺し：敵より後ろ：敵側
SP_09r = 154623; --ラスト：敵より前：敵側
SP_10r = 154624; --ラスト：敵より後ろ：敵側

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
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --導入(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 96, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 96, start, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 + 12, 190006, 72, 0x100, -1, 0, 0 +70, 520 );    --ゴゴゴゴ

setEffMoveKey( spep_0 + 12, ctgogo, 0 +70, 520, 0 );
setEffMoveKey( spep_0 + 84, ctgogo, 0 +70, 520, 0 );

setEffAlphaKey( spep_0 + 12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 76, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey( spep_0 + 12, ctgogo, 0);
setEffRotateKey( spep_0 + 84, ctgogo, 0);

setEffScaleKey( spep_0 + 12, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_0 + 72, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_0 + 84, ctgogo, 1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 16, 88, 2, 0, 0, 0, 0, 200 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 80, 8, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 08 );
setSeVolume( spep_0 + 0, 08, 71 );
playSe( spep_0 + 13, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

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
playSe( spep_1 + 6 -2, 1035 );
playSe( spep_1 + 80 -2, 1072 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 後ろから敵に突進
------------------------------------------------------
x1 = 2;
-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_2 + 0, SP_02, 86 -x1, 0x100, -1, 0, 0, 0 ); --後ろから敵に突進(ef_002)
setEffMoveKey( spep_2 + 0, tosshin, 0, 0, 0 );
setEffMoveKey( spep_2 + 86 -x1, tosshin, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86 -x1, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshin, 0 );
setEffRotateKey( spep_2 + 86 -x1, tosshin, 0 );
setEffAlphaKey( spep_2 + 0, tosshin, 255 );
setEffAlphaKey( spep_2 + 85 -x1, tosshin, 255 );
setEffAlphaKey( spep_2 + 86 -x1, tosshin, 0 );

tosshinb = entryEffectLife( spep_2 + 0, SP_11, 86 -x1, 0x80, -1, 0, 0, 0 ); --後ろから敵に突進(ef_011)
setEffMoveKey( spep_2 + 0, tosshinb, 0, 0, 0 );
setEffMoveKey( spep_2 + 86 -x1, tosshinb, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tosshinb, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86 -x1, tosshinb, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshinb, 0 );
setEffRotateKey( spep_2 + 86 -x1, tosshinb, 0 );
setEffAlphaKey( spep_2 + 0, tosshinb, 255 );
setEffAlphaKey( spep_2 + 85 -x1, tosshinb, 255 );
setEffAlphaKey( spep_2 + 86 -x1, tosshinb, 0 );

-- ** 敵の動き ** --
setDisp( spep_2 -3 + 3, 1, 1 );
changeAnime( spep_2 -3 + 3, 1, 102 );

setMoveKey( spep_2 -3 + 3, 1, 5.1, 230.4 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 5.3, 229.7 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 5.5, 229 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 5.8, 228.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 6, 227.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 6.3, 226.7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 6.5, 225.8 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 6.8, 225 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 7.1, 224.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 7.3, 223.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 7.6, 222.3 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 7.9, 221.4 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 8.2, 220.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 8.5, 219.4 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 8.8, 218.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 9.2, 217.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 9.5, 216.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 9.8, 215.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 10.2, 214.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 10.5, 212.9 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 10.9, 211.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 11.3, 210.6 , 0 );

setScaleKey( spep_2 -3 + 3, 1, 0.25, 0.25 );
--setScaleKey( spep_2 -3 + 2, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 4, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 6, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 8, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 10, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 12, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 14, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 16, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 18, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 20, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 22, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 24, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 26, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 28, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 30, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 32, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 34, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 36, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 38, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 42, 1, 0.56, 0.56 );

setRotateKey( spep_2 -3 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 42, 1, 0 );

-- ** 書き文字エントリー ** --
ctBa = entryEffectLife( spep_2 + 0, 10022, 26, 0x100, -1, 0, -46.2, 176.2 ); --バッ
setEffMoveKey( spep_2 + 0, ctBa, -46.2, 176.2 , 0 );
setEffMoveKey( spep_2 + 2, ctBa, -57.1, 166.6 , 0 );
setEffMoveKey( spep_2 + 4, ctBa, -61.8, 153.5 , 0 );
setEffMoveKey( spep_2 + 6, ctBa, -76.7, 140.9 , 0 );
setEffMoveKey( spep_2 + 8, ctBa, -82.5, 135.3 , 0 );
setEffMoveKey( spep_2 + 10, ctBa, -85.8, 126.1 , 0 );
setEffMoveKey( spep_2 + 12, ctBa, -94.2, 135.5 , 0 );
setEffMoveKey( spep_2 + 14, ctBa, -94, 129 , 0 );
setEffMoveKey( spep_2 + 16, ctBa, -103.7, 131 , 0 );
setEffMoveKey( spep_2 + 18, ctBa, -104.4, 127.3 , 0 );
setEffMoveKey( spep_2 + 20, ctBa, -108.7, 134.3 , 0 );
setEffMoveKey( spep_2 + 22, ctBa, -116.9, 66.2 , 0 );
setEffMoveKey( spep_2 + 24, ctBa, -133, 23.1 , 0 );
setEffMoveKey( spep_2 + 26, ctBa, -143.6, -32.9 , 0 );

setEffScaleKey( spep_2 + 0, ctBa, 0.18, 0.18 );
setEffScaleKey( spep_2 + 2, ctBa, 0.51, 0.51 );
setEffScaleKey( spep_2 + 4, ctBa, 0.84, 0.84 );
setEffScaleKey( spep_2 + 6, ctBa, 1.17, 1.17 );
setEffScaleKey( spep_2 + 8, ctBa, 1.5, 1.5 );
setEffScaleKey( spep_2 + 20, ctBa, 1.5, 1.5 );
setEffScaleKey( spep_2 + 22, ctBa, 2, 2 );
setEffScaleKey( spep_2 + 24, ctBa, 2.5, 2.5 );
setEffScaleKey( spep_2 + 26, ctBa, 3, 3 );

setEffRotateKey( spep_2 + 0, ctBa, -6.1 );
setEffRotateKey( spep_2 + 2, ctBa, -6 );
setEffRotateKey( spep_2 + 26, ctBa, -6 );

setEffAlphaKey( spep_2 + 0, ctBa, 255 );
setEffAlphaKey( spep_2 + 20, ctBa, 255 );
setEffAlphaKey( spep_2 + 22, ctBa, 170 );
setEffAlphaKey( spep_2 + 24, ctBa, 85 );
setEffAlphaKey( spep_2 + 26, ctBa, 0 );

-- ** 音 ** --
se_0008 = playSe( spep_2 + 8 -4, 08 );
stopSe( spep_2 + 31 -4, se_0008, 51 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
pauseAll( SP_dodge, 67 );

-- ** 敵の動き ** --
changeAnime( SP_dodge + 0, 1, 102 );

setMoveKey( SP_dodge + 0, 1, 11.3, 210.6 , 0 );
setMoveKey( SP_dodge + 2, 1, 11.6, 209.4 , 0 );
setMoveKey( SP_dodge + 4, 1, 12, 208.1 , 0 );
setMoveKey( SP_dodge + 6, 1, 12.4, 206.9 , 0 );
setMoveKey( SP_dodge + 8, 1, 12.8, 205.6 , 0 );
setMoveKey( SP_dodge + 10, 1, 13.2, 204.3 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.56, 0.56 );
setScaleKey( SP_dodge + 2, 1, 0.58, 0.58 );
setScaleKey( SP_dodge + 4, 1, 0.6, 0.6 );
setScaleKey( SP_dodge + 6, 1, 0.62, 0.62 );
setScaleKey( SP_dodge + 8, 1, 0.64, 0.64 );
setScaleKey( SP_dodge + 10, 1, 0.66, 0.66 );

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
-- ** 敵の動き ** --
--setDisp( spep_2 + 86, 1, 0 );

setMoveKey( spep_2 -3 + 44, 1, 11.6, 209.4 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 12, 208.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 12.4, 206.9 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 12.8, 205.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 13.2, 204.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 13.6, 202.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 14.1, 201.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 14.5, 200.2 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 14.9, 198.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 15.4, 197.3 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 15.8, 195.9 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 16.3, 194.4 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 16.8, 192.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 17.2, 191.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 17.6, 189.7 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 19.3, 183.8 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 20.9, 178.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 22.3, 173.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 23.4, 169.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 24.4, 166.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 25.3, 163.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 25.9, 161.6 , 0 );
setMoveKey( spep_2 -3 + 88 -x1, 1, 26.3, 160.1 , 0 );

setScaleKey( spep_2 -3 + 44, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 46, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 48, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 50, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 52, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 54, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 56, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 58, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 60, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 62, 1, 0.76, 0.76 );
setScaleKey( spep_2 -3 + 64, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 66, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 68, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 70, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 72, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 74, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 76, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 78, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 80, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 82, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 84, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 86, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 88 -x1, 1, 1.3, 1.3 );

setRotateKey( spep_2 -3 + 44, 1, 0 );
setRotateKey( spep_2 -3 + 88 -x1, 1, 0 );

-- ** 音 ** --
playSe( spep_2 + 57 -4, 1072 );
setSeVolume( spep_2 + 57 -4, 1072, 141 );
se_1116 = playSe( spep_2 + 70 -4, 1116 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 86 -x1;

------------------------------------------------------
-- 首絞め
------------------------------------------------------

-- ** エフェクト等 ** --
chokingf = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --首絞め(ef_003)
setEffMoveKey( spep_3 + 0, chokingf, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, chokingf, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, chokingf, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, chokingf, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, chokingf, 0 );
setEffRotateKey( spep_3 + 106, chokingf, 0 );
setEffAlphaKey( spep_3 + 0, chokingf, 255 );
setEffAlphaKey( spep_3 + 106, chokingf, 255 );

chokingbg = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --首絞め(ef_005)
setEffMoveKey( spep_3 + 0, chokingbg, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, chokingbg, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, chokingbg, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, chokingbg, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, chokingbg, 0 );
setEffRotateKey( spep_3 + 106, chokingbg, 0 );
setEffAlphaKey( spep_3 + 0, chokingbg, 255 );
setEffAlphaKey( spep_3 + 106, chokingbg, 255 );

chokingb = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --首絞め(ef_004)
setEffMoveKey( spep_3 + 0, chokingb, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, chokingb, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, chokingb, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, chokingb, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, chokingb, 0 );
setEffRotateKey( spep_3 + 106, chokingb, 0 );
setEffAlphaKey( spep_3 + 0, chokingb, 255 );
setEffAlphaKey( spep_3 + 106, chokingb, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 27, 1, 0 );
setDisp( spep_3 -3 + 46, 1, 1 );
setDisp( spep_3 + 105, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 -3 + 46, 1, 106 );

setMoveKey( spep_3 + 0, 1, -31.6, 14 , 0 );
setMoveKey( spep_3 + 2, 1, -30.8, 10.7 , 0 );
setMoveKey( spep_3 + 4, 1, -30, 7.5 , 0 );
setMoveKey( spep_3 + 6, 1, -29.2, 4.2 , 0 );
setMoveKey( spep_3 + 8, 1, -28.3, 1 , 0 );
setMoveKey( spep_3 + 10, 1, -27.5, -2.3 , 0 );
setMoveKey( spep_3 + 12, 1, -26.7, -5.6 , 0 );
setMoveKey( spep_3 + 14, 1, -25.9, -8.8 , 0 );
setMoveKey( spep_3 + 16, 1, -25, -12.1 , 0 );
setMoveKey( spep_3 + 18, 1, -24.2, -15.3 , 0 );
setMoveKey( spep_3 + 20, 1, -23.4, -18.6 , 0 );
setMoveKey( spep_3 + 22, 1, -22.6, -21.9 , 0 );
setMoveKey( spep_3 + 24, 1, -21.7, -25.1 , 0 );
setMoveKey( spep_3 + 26, 1, -20.9, -28.4 , 0 );
setMoveKey( spep_3 + 28, 1, -20.1, -31.7 , 0 );

setMoveKey( spep_3 -3 + 46, 1, -103.8, 62.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -91.5, 53.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -72.7, 57.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -63.6, 46.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -59.4, 50.3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -63.1, 42.2 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -58.9, 50.1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -62.7, 45.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -59.1, 50.1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -63.5, 42.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -59.8, 50.5 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -64.2, 46.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -60, 50.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -63.8, 42.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -59.6, 50.3 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -63.3, 46.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -59.7, 50.3 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -64.1, 42.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -60.5, 50.7 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -64.9, 46.8 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -60.5, 50.7 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -64.2, 42.5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -59.9, 50.3 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -64.4, 46.5 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -60.9, 50.8 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -65.4, 47 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -61, 50.8 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -64.7, 46.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -60.4, 50.5 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -64.9, 46.7 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -61.4, 50.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -65.8, 47.2 , 0 );

setScaleKey( spep_3 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 2, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 4, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 6, 1, 1.71, 1.71 );
setScaleKey( spep_3 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 10, 1, 1.86, 1.86 );
setScaleKey( spep_3 + 12, 1, 1.93, 1.93 );
setScaleKey( spep_3 + 14, 1, 2, 2 );
setScaleKey( spep_3 + 16, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 18, 1, 2.14, 2.14 );
setScaleKey( spep_3 + 20, 1, 2.21, 2.21 );
setScaleKey( spep_3 + 22, 1, 2.29, 2.29 );
setScaleKey( spep_3 + 24, 1, 2.36, 2.36 );
setScaleKey( spep_3 + 26, 1, 2.43, 2.43 );
setScaleKey( spep_3 + 28, 1, 2.5, 2.5 );

setScaleKey( spep_3 -3 + 46, 1, 2.37, 2.37 );
setScaleKey( spep_3 -3 + 48, 1, 2.08, 2.08 );
setScaleKey( spep_3 -3 + 50, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 56, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 58, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 70, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 72, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 84, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 86, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 98, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 100, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 108, 1, 1.54, 1.54 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 28, 1, 0 );

setRotateKey( spep_3 -3 + 46, 1, -49.6 );
setRotateKey( spep_3 -3 + 108, 1, -49.6 );

-- ** 書き文字エントリー ** --
ctZuo = entryEffectLife( spep_3 -3 + 32, 10012, 12, 0x100, -1, 0, 12.8, 101.7 ); --ズオッ
setEffMoveKey( spep_3 -3 + 32, ctZuo, 12.8, 101.7 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctZuo, -108, 152.9 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctZuo, -134.2, 203.9 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctZuo, -164.2, 241.3 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctZuo, -190.4, 292.3 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctZuo, -209.3, 307.5 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctZuo, -226.3, 329.5 , 0 );

setEffScaleKey( spep_3 -3 + 32, ctZuo, 0.3, 0.3 );
setEffScaleKey( spep_3 -3 + 34, ctZuo, 3, 3 );
setEffScaleKey( spep_3 -3 + 40, ctZuo, 3, 3 );
setEffScaleKey( spep_3 -3 + 42, ctZuo, 3.5, 3.5 );
setEffScaleKey( spep_3 -3 + 44, ctZuo, 4, 4 );

setEffRotateKey( spep_3 -3 + 32, ctZuo, -5 );
setEffRotateKey( spep_3 -3 + 44, ctZuo, -5 );

setEffAlphaKey( spep_3 -3 + 32, ctZuo, 255 );
setEffAlphaKey( spep_3 -3 + 40, ctZuo, 255 );
setEffAlphaKey( spep_3 -3 + 42, ctZuo, 128 );
setEffAlphaKey( spep_3 -3 + 44, ctZuo, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 -3 + 44, 906, 64, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 -3, shuchusen1, 64, 20 );

setEffMoveKey( spep_3 -3 + 44, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_3 -3 + 108, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_3 -3 + 44, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_3 -3 + 108, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_3 -3 + 44, shuchusen1, 180 );
setEffRotateKey( spep_3 -3 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_3 -3 + 44, shuchusen1, 255 );
setEffAlphaKey( spep_3 -3 + 108, shuchusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 41, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 100, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
stopSe( spep_3 + 15 -6, se_1116, 22 );
playSe( spep_3 + 40 -6, 1006 );
playSe( spep_3 + 43 -6, 1007 );
se_1190 = playSe( spep_3 + 61 -6, 1190 );
stopSe( spep_3 + 88 -6, se_1190, 23 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 106;

------------------------------------------------------
-- ヤムー突進
------------------------------------------------------

-- ** エフェクト等 ** --
ymtosshin = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); --ヤムー突進(ef_006)
setEffMoveKey( spep_4 + 0, ymtosshin, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, ymtosshin, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, ymtosshin, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, ymtosshin, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ymtosshin, 0 );
setEffRotateKey( spep_4 + 116, ymtosshin, 0 );
setEffAlphaKey( spep_4 + 0, ymtosshin, 255 );
setEffAlphaKey( spep_4 + 116, ymtosshin, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_0009 = playSe( spep_4 + 19 -8, 09 );
playSe( spep_4 + 86 -8, 1178 );
playSe( spep_4 + 90 -8, 1032 );
stopSe( spep_4 + 94 -8, se_0009, 0 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;
entryFade( spep_4 + 116 -2, 0, 4, 0, 0, 0, 0, 255 );  --黒

------------------------------------------------------
-- ツボ刺し
------------------------------------------------------

-- ** エフェクト等 ** --
tsubosashif = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); --ツボ刺し(ef_007)
setEffMoveKey( spep_5 + 0, tsubosashif, 0, 0, 0 );
setEffMoveKey( spep_5 + 140, tsubosashif, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tsubosashif, 1.0, 1.0 );
setEffScaleKey( spep_5 + 140, tsubosashif, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tsubosashif, 0 );
setEffRotateKey( spep_5 + 140, tsubosashif, 0 );
setEffAlphaKey( spep_5 + 0, tsubosashif, 255 );
setEffAlphaKey( spep_5 + 140, tsubosashif, 255 );

tsubosashib = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); --ツボ刺し(ef_008)
setEffMoveKey( spep_5 + 0, tsubosashib, 0, 0, 0 );
setEffMoveKey( spep_5 + 140, tsubosashib, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tsubosashib, 1.0, 1.0 );
setEffScaleKey( spep_5 + 140, tsubosashib, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tsubosashib, 0 );
setEffRotateKey( spep_5 + 140, tsubosashib, 0 );
setEffAlphaKey( spep_5 + 0, tsubosashib, 255 );
setEffAlphaKey( spep_5 + 140, tsubosashib, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 -3 + 3, 1, 1 );
changeAnime( spep_5 -3 + 3, 1, 106 );

setMoveKey( spep_5 -3 + 3, 1, -40.2, -14.7 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -20, -14 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 8.2, -5.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 28.4, -4.5 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 32.4, -0.5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 28.4, -4.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 32.4, -0.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 28.4, -4.5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 28.4, -4.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 28.3, -4.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 28.3, -4.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 32.3, -0.4 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 28.3, -4.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 32.3, -0.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 28.3, -4.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 28.2, -4.5 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 32.2, -0.5 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 28.2, -4.5 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 32.2, -0.5 , 0 );

setScaleKey( spep_5 -3 + 3, 1, 1.75, 1.75 );
--setScaleKey( spep_5 -3 + 2, 1, 1.67, 1.67 );
setScaleKey( spep_5 -3 + 4, 1, 1.58, 1.58 );
setScaleKey( spep_5 -3 + 6, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 42, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 44, 1, 1.51, 1.51 );
setScaleKey( spep_5 -3 + 68, 1, 1.51, 1.51 );
setScaleKey( spep_5 -3 + 70, 1, 1.52, 1.52 );
setScaleKey( spep_5 -3 + 92, 1, 1.52, 1.52 );
setScaleKey( spep_5 -3 + 94, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 118, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 120, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 124, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 126, 1, 1.64, 1.64 );
setScaleKey( spep_5 -3 + 128, 1, 1.75, 1.75 );
setScaleKey( spep_5 -3 + 130, 1, 1.86, 1.86 );
setScaleKey( spep_5 -3 + 132, 1, 1.97, 1.97 );
setScaleKey( spep_5 -3 + 134, 1, 2.07, 2.07 );
setScaleKey( spep_5 -3 + 136, 1, 2.18, 2.18 );
setScaleKey( spep_5 -3 + 138, 1, 2.29, 2.29 );
setScaleKey( spep_5 -3 + 140, 1, 2.39, 2.39 );
setScaleKey( spep_5 -3 + 142, 1, 2.5, 2.5 );

setRotateKey( spep_5 -3 + 0, 1, -49.6 );
setRotateKey( spep_5 -3 + 142, 1, -49.6 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5 -3 + 6, 906, 136, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 -3, shuchusen2, 136, 20 );

setEffMoveKey( spep_5 -3 + 6, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 -3 + 142, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 -3 + 6, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_5 -3 + 142, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_5 -3 + 6, shuchusen2, 180 );
setEffRotateKey( spep_5 -3 + 142, shuchusen2, 180 );

setEffAlphaKey( spep_5 -3 + 6, shuchusen2, 255 );
setEffAlphaKey( spep_5 -3 + 142, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_5 + 43, 45 );
se_1158 = playSe( spep_5 + 43, 1158 );
setSeVolume( spep_5 -10 + 43, 1158, 0 );
setSeVolume( spep_5 -10 + 43, 1158, 0 );
setSeVolume( spep_5 -10 + 44, 1158, 1.66666666666667 );
setSeVolume( spep_5 -10 + 45, 1158, 3.33333333333333 );
setSeVolume( spep_5 -10 + 46, 1158, 5 );
setSeVolume( spep_5 -10 + 47, 1158, 6.66666666666667 );
setSeVolume( spep_5 -10 + 48, 1158, 8.33333333333333 );
setSeVolume( spep_5 -10 + 49, 1158, 10 );
setSeVolume( spep_5 -10 + 50, 1158, 11.6666666666667 );
setSeVolume( spep_5 -10 + 51, 1158, 13.3333333333333 );
setSeVolume( spep_5 -10 + 52, 1158, 15 );
setSeVolume( spep_5 -10 + 53, 1158, 16.6666666666667 );
setSeVolume( spep_5 -10 + 54, 1158, 18.3333333333333 );
setSeVolume( spep_5 -10 + 55, 1158, 20 );
setSeVolume( spep_5 -10 + 56, 1158, 21.6666666666667 );
setSeVolume( spep_5 -10 + 57, 1158, 23.3333333333333 );
setSeVolume( spep_5 -10 + 58, 1158, 25 );
setSeVolume( spep_5 -10 + 59, 1158, 26.6666666666667 );
setSeVolume( spep_5 -10 + 60, 1158, 28.3333333333333 );
setSeVolume( spep_5 -10 + 61, 1158, 30 );
setSeVolume( spep_5 -10 + 62, 1158, 31.6666666666667 );
setSeVolume( spep_5 -10 + 63, 1158, 33.3333333333333 );
setSeVolume( spep_5 -10 + 64, 1158, 35 );
setSeVolume( spep_5 -10 + 65, 1158, 36.6666666666667 );
setSeVolume( spep_5 -10 + 66, 1158, 38.3333333333333 );
setSeVolume( spep_5 -10 + 67, 1158, 40 );
setSeVolume( spep_5 -10 + 68, 1158, 41.6666666666667 );
setSeVolume( spep_5 -10 + 69, 1158, 43.3333333333333 );
setSeVolume( spep_5 -10 + 70, 1158, 45 );
setSeVolume( spep_5 -10 + 71, 1158, 46.6666666666667 );
setSeVolume( spep_5 -10 + 72, 1158, 48.3333333333333 );
setSeVolume( spep_5 -10 + 73, 1158, 50 );
setSeVolume( spep_5 -10 + 74, 1158, 51.6666666666667 );
setSeVolume( spep_5 -10 + 75, 1158, 53.3333333333333 );
setSeVolume( spep_5 -10 + 76, 1158, 55 );
setSeVolume( spep_5 -10 + 77, 1158, 56.6666666666667 );
setSeVolume( spep_5 -10 + 78, 1158, 58.3333333333333 );
setSeVolume( spep_5 -10 + 79, 1158, 60 );
setSeVolume( spep_5 -10 + 80, 1158, 61.6666666666667 );
setSeVolume( spep_5 -10 + 81, 1158, 63.3333333333333 );
setSeVolume( spep_5 -10 + 82, 1158, 65 );
setSeVolume( spep_5 -10 + 83, 1158, 66.6666666666667 );
setSeVolume( spep_5 -10 + 84, 1158, 68.3333333333333 );
setSeVolume( spep_5 -10 + 85, 1158, 70 );
playSe( spep_5 + 86, 1116 );
setSeVolume( spep_5 -10 + 86, 1116, 0 );
setSeVolume( spep_5 -10 + 86, 1158, 71.6666666666667 );
setSeVolume( spep_5 -10 + 87, 1158, 73.3333333333333 );
setSeVolume( spep_5 -10 + 88, 1158, 75 );
setSeVolume( spep_5 -10 + 89, 1158, 76.6666666666667 );
setSeVolume( spep_5 -10 + 90, 1158, 78.3333333333333 );
setSeVolume( spep_5 -10 + 91, 1158, 80 );
setSeVolume( spep_5 -10 + 92, 1158, 81.6666666666667 );
setSeVolume( spep_5 -10 + 93, 1158, 83.3333333333333 );
setSeVolume( spep_5 -10 + 94, 1158, 85 );
setSeVolume( spep_5 -10 + 95, 1158, 86.6666666666667 );
setSeVolume( spep_5 -10 + 96, 1158, 88.3333333333333 );
setSeVolume( spep_5 -10 + 97, 1158, 90 );
setSeVolume( spep_5 -10 + 97, 1116, 0 );
setSeVolume( spep_5 -10 + 98, 1158, 91.6666666666667 );
setSeVolume( spep_5 -10 + 98, 1116, 5.09677419354839 );
setSeVolume( spep_5 -10 + 99, 1158, 93.3333333333333 );
setSeVolume( spep_5 -10 + 99, 1116, 10.1935483870968 );
setSeVolume( spep_5 -10 + 100, 1158, 95 );
setSeVolume( spep_5 -10 + 100, 1116, 15.2903225806452 );
setSeVolume( spep_5 -10 + 101, 1158, 96.6666666666667 );
setSeVolume( spep_5 -10 + 101, 1116, 20.3870967741935 );
setSeVolume( spep_5 -10 + 102, 1158, 98.3333333333333 );
setSeVolume( spep_5 -10 + 102, 1116, 25.4838709677419 );
setSeVolume( spep_5 -10 + 103, 1158, 100 );
setSeVolume( spep_5 -10 + 103, 1116, 30.5806451612903 );
setSeVolume( spep_5 -10 + 104, 1116, 35.6774193548387 );
setSeVolume( spep_5 -10 + 105, 1116, 40.7741935483871 );
setSeVolume( spep_5 -10 + 106, 1116, 45.8709677419355 );
setSeVolume( spep_5 -10 + 107, 1116, 50.9677419354839 );
setSeVolume( spep_5 -10 + 108, 1116, 56.0645161290323 );
setSeVolume( spep_5 -10 + 109, 1116, 61.1612903225806 );
setSeVolume( spep_5 -10 + 110, 1116, 66.258064516129 );
setSeVolume( spep_5 -10 + 111, 1116, 71.3548387096774 );
setSeVolume( spep_5 -10 + 112, 1116, 76.4516129032258 );
setSeVolume( spep_5 -10 + 113, 1116, 81.5483870967742 );
setSeVolume( spep_5 -10 + 114, 1116, 86.6451612903226 );
setSeVolume( spep_5 -10 + 115, 1116, 91.741935483871 );
setSeVolume( spep_5 -10 + 116, 1116, 96.8387096774194 );
setSeVolume( spep_5 -10 + 117, 1116, 101.935483870968 );
setSeVolume( spep_5 -10 + 118, 1116, 107.032258064516 );
setSeVolume( spep_5 -10 + 119, 1116, 112.129032258065 );
setSeVolume( spep_5 -10 + 120, 1116, 117.225806451613 );
setSeVolume( spep_5 -10 + 121, 1116, 122.322580645161 );
setSeVolume( spep_5 -10 + 122, 1116, 127.41935483871 );
setSeVolume( spep_5 -10 + 123, 1116, 132.516129032258 );
setSeVolume( spep_5 -10 + 124, 1116, 137.612903225806 );
setSeVolume( spep_5 -10 + 125, 1116, 142.709677419355 );
setSeVolume( spep_5 -10 + 126, 1116, 147.806451612903 );
setSeVolume( spep_5 -10 + 127, 1116, 152.903225806452 );
setSeVolume( spep_5 -10 + 128, 1116, 158 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 140;

------------------------------------------------------
-- ラスト
------------------------------------------------------

-- ** エフェクト等 ** --
lastf = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 ); --ラスト(ef_009)
setEffMoveKey( spep_6 + 0, lastf, 0, 0, 0 );
setEffMoveKey( spep_6 + 136, lastf, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, lastf, 1.0, 1.0 );
setEffScaleKey( spep_6 + 136, lastf, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, lastf, 0 );
setEffRotateKey( spep_6 + 136, lastf, 0 );
setEffAlphaKey( spep_6 + 0, lastf, 255 );
setEffAlphaKey( spep_6 + 136, lastf, 255 );

lastb = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 ); --ラスト(ef_010)
setEffMoveKey( spep_6 + 0, lastb, 0, 0, 0 );
setEffMoveKey( spep_6 + 136, lastb, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, lastb, 1.0, 1.0 );
setEffScaleKey( spep_6 + 136, lastb, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, lastb, 0 );
setEffRotateKey( spep_6 + 136, lastb, 0 );
setEffAlphaKey( spep_6 + 0, lastb, 255 );
setEffAlphaKey( spep_6 + 136, lastb, 255 );

-- ** 敵の動き ** --
setDisp( spep_6 -3 + 3, 1, 1 );
changeAnime( spep_6 -3 + 3, 1, 106 );

setMoveKey( spep_6 -3 + 3, 1, 27.7, -57.3 , 0 );
--setMoveKey( spep_6 -3 + 2, 1, 26.1, -60.4 , 0 );
setMoveKey( spep_6 -3 + 4, 1, 32.6, -55.6 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 31, -58.8 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 37.5, -54.1 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 36, -57.4 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 42.5, -52.7 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 41, -56.1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 47.5, -51.5 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 46.1, -55 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 48.4, -49.3 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 45.1, -58.2 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 49.8, -59.2 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 46.5, -68.1 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 51.2, -69 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 51.9, -74 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 52.6, -78.9 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 49.3, -86.6 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 48.1, -92.2 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 46.9, -97.7 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 45.6, -103.3 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 44.4, -108.9 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 43.2, -114.5 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 42, -120 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 40.7, -125.6 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 39.5, -131.2 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 38.3, -136.7 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 37.1, -142.3 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 35.8, -147.8 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 34.6, -153.4 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 33.4, -159 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 32.1, -164.5 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 30.9, -170.1 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 29.7, -175.7 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 28.5, -181.2 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 27.2, -186.8 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 26, -192.4 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 24.8, -197.9 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 23.6, -203.5 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 22.3, -209.1 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 21.1, -214.6 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 19.9, -220.2 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 19.2, -250.3 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 18.6, -280.4 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 17.9, -310.6 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 17.3, -340.7 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 16.6, -370.8 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 16, -400.9 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 15.3, -431 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 14.7, -461.2 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 14, -491.3 , 0 );
setMoveKey( spep_6 -3 + 102, 1, 13.3, -521.4 , 0 );
setMoveKey( spep_6 -3 + 104, 1, 12.7, -551.6 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 12, -581.7 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 11.4, -611.8 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 10.7, -641.9 , 0 );
setMoveKey( spep_6 -3 + 112, 1, 10.1, -672.1 , 0 );
setMoveKey( spep_6 -3 + 114, 1, 9.4, -702.2 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 8.7, -732.3 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 8.1, -762.5 , 0 );
setMoveKey( spep_6 -3 + 120, 1, 7.4, -792.6 , 0 );
setMoveKey( spep_6 -3 + 122, 1, 6.8, -822.8 , 0 );
setMoveKey( spep_6 -3 + 124, 1, 6.1, -852.9 , 0 );
setMoveKey( spep_6 -3 + 126, 1, 5.4, -883 , 0 );
setMoveKey( spep_6 -3 + 128, 1, 4.8, -913.2 , 0 );
setMoveKey( spep_6 -3 + 130, 1, 4.1, -943.3 , 0 );
setMoveKey( spep_6 -3 + 132, 1, 3.5, -973.5 , 0 );
setMoveKey( spep_6 -3 + 134, 1, 2.8, -1003.6 , 0 );

setScaleKey( spep_6 -3 + 3, 1, 1.67, 1.67 );
--setScaleKey( spep_6 -3 + 2, 1, 1.63, 1.63 );
setScaleKey( spep_6 -3 + 4, 1, 1.59, 1.59 );
setScaleKey( spep_6 -3 + 6, 1, 1.55, 1.55 );
setScaleKey( spep_6 -3 + 8, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 10, 1, 1.46, 1.46 );
setScaleKey( spep_6 -3 + 12, 1, 1.42, 1.42 );
setScaleKey( spep_6 -3 + 14, 1, 1.37, 1.37 );
setScaleKey( spep_6 -3 + 16, 1, 1.33, 1.33 );
setScaleKey( spep_6 -3 + 18, 1, 1.29, 1.29 );
setScaleKey( spep_6 -3 + 36, 1, 1.29, 1.29 );
setScaleKey( spep_6 -3 + 38, 1, 1.28, 1.28 );
setScaleKey( spep_6 -3 + 50, 1, 1.28, 1.28 );
setScaleKey( spep_6 -3 + 52, 1, 1.27, 1.27 );
setScaleKey( spep_6 -3 + 62, 1, 1.27, 1.27 );
setScaleKey( spep_6 -3 + 64, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 74, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 76, 1, 1.25, 1.25 );
setScaleKey( spep_6 -3 + 82, 1, 1.25, 1.25 );
setScaleKey( spep_6 -3 + 84, 1, 1.23, 1.23 );
setScaleKey( spep_6 -3 + 86, 1, 1.21, 1.21 );
setScaleKey( spep_6 -3 + 88, 1, 1.19, 1.19 );
setScaleKey( spep_6 -3 + 90, 1, 1.17, 1.17 );
setScaleKey( spep_6 -3 + 92, 1, 1.15, 1.15 );
setScaleKey( spep_6 -3 + 94, 1, 1.13, 1.13 );
setScaleKey( spep_6 -3 + 96, 1, 1.11, 1.11 );
setScaleKey( spep_6 -3 + 98, 1, 1.09, 1.09 );
setScaleKey( spep_6 -3 + 100, 1, 1.07, 1.07 );
setScaleKey( spep_6 -3 + 102, 1, 1.05, 1.05 );
setScaleKey( spep_6 -3 + 104, 1, 1.03, 1.03 );
setScaleKey( spep_6 -3 + 106, 1, 1.01, 1.01 );
setScaleKey( spep_6 -3 + 108, 1, 0.99, 0.99 );
setScaleKey( spep_6 -3 + 110, 1, 0.97, 0.97 );
setScaleKey( spep_6 -3 + 112, 1, 0.95, 0.95 );
setScaleKey( spep_6 -3 + 114, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 116, 1, 0.91, 0.91 );
setScaleKey( spep_6 -3 + 118, 1, 0.89, 0.89 );
setScaleKey( spep_6 -3 + 120, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 122, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 124, 1, 0.83, 0.83 );
setScaleKey( spep_6 -3 + 126, 1, 0.81, 0.81 );
setScaleKey( spep_6 -3 + 128, 1, 0.79, 0.79 );
setScaleKey( spep_6 -3 + 130, 1, 0.77, 0.77 );
setScaleKey( spep_6 -3 + 132, 1, 0.75, 0.75 );
setScaleKey( spep_6 -3 + 134, 1, 0.73, 0.73 );

setRotateKey( spep_6 -3 + 3, 1, -50 );
setRotateKey( spep_6 -3 + 20, 1, -50 );
setRotateKey( spep_6 -3 + 22, 1, -51.1 );
setRotateKey( spep_6 -3 + 24, 1, -52.1 );
setRotateKey( spep_6 -3 + 26, 1, -53.2 );
setRotateKey( spep_6 -3 + 28, 1, -54.3 );
setRotateKey( spep_6 -3 + 30, 1, -55.3 );
setRotateKey( spep_6 -3 + 32, 1, -56.4 );
setRotateKey( spep_6 -3 + 34, 1, -56.4 );
setRotateKey( spep_6 -3 + 36, 1, -57.9 );
setRotateKey( spep_6 -3 + 38, 1, -59.4 );
setRotateKey( spep_6 -3 + 40, 1, -60.9 );
setRotateKey( spep_6 -3 + 42, 1, -62.4 );
setRotateKey( spep_6 -3 + 44, 1, -63.9 );
setRotateKey( spep_6 -3 + 46, 1, -65.4 );
setRotateKey( spep_6 -3 + 48, 1, -66.9 );
setRotateKey( spep_6 -3 + 50, 1, -68.4 );
setRotateKey( spep_6 -3 + 52, 1, -69.9 );
setRotateKey( spep_6 -3 + 54, 1, -71.4 );
setRotateKey( spep_6 -3 + 56, 1, -72.9 );
setRotateKey( spep_6 -3 + 58, 1, -74.4 );
setRotateKey( spep_6 -3 + 60, 1, -75.9 );
setRotateKey( spep_6 -3 + 62, 1, -77.3 );
setRotateKey( spep_6 -3 + 64, 1, -78.8 );
setRotateKey( spep_6 -3 + 66, 1, -80.3 );
setRotateKey( spep_6 -3 + 68, 1, -81.8 );
setRotateKey( spep_6 -3 + 70, 1, -83.3 );
setRotateKey( spep_6 -3 + 72, 1, -84.8 );
setRotateKey( spep_6 -3 + 74, 1, -86.3 );
setRotateKey( spep_6 -3 + 76, 1, -87.8 );
setRotateKey( spep_6 -3 + 78, 1, -89.3 );
setRotateKey( spep_6 -3 + 80, 1, -90.8 );
setRotateKey( spep_6 -3 + 82, 1, -92.3 );
setRotateKey( spep_6 -3 + 84, 1, -97.3 );
setRotateKey( spep_6 -3 + 86, 1, -102.3 );
setRotateKey( spep_6 -3 + 88, 1, -107.3 );
setRotateKey( spep_6 -3 + 90, 1, -112.3 );
setRotateKey( spep_6 -3 + 92, 1, -117.3 );
setRotateKey( spep_6 -3 + 94, 1, -122.3 );
setRotateKey( spep_6 -3 + 96, 1, -127.3 );
setRotateKey( spep_6 -3 + 98, 1, -132.3 );
setRotateKey( spep_6 -3 + 100, 1, -137.3 );
setRotateKey( spep_6 -3 + 102, 1, -142.3 );
setRotateKey( spep_6 -3 + 104, 1, -147.3 );
setRotateKey( spep_6 -3 + 106, 1, -152.3 );
setRotateKey( spep_6 -3 + 108, 1, -157.4 );
setRotateKey( spep_6 -3 + 110, 1, -162.4 );
setRotateKey( spep_6 -3 + 112, 1, -167.4 );
setRotateKey( spep_6 -3 + 114, 1, -172.4 );
setRotateKey( spep_6 -3 + 116, 1, -177.4 );
setRotateKey( spep_6 -3 + 118, 1, -182.4 );
setRotateKey( spep_6 -3 + 120, 1, -187.4 );
setRotateKey( spep_6 -3 + 122, 1, -192.4 );
setRotateKey( spep_6 -3 + 124, 1, -197.4 );
setRotateKey( spep_6 -3 + 126, 1, -202.4 );
setRotateKey( spep_6 -3 + 128, 1, -207.4 );
setRotateKey( spep_6 -3 + 130, 1, -212.4 );
setRotateKey( spep_6 -3 + 132, 1, -217.4 );
setRotateKey( spep_6 -3 + 134, 1, -222.4 );

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_0003 = playSe( spep_6 + 7 -14, 03 );
setSeVolume( spep_6 + 7 -14, 03, 79 );
se_1126 = playSe( spep_6 + 7 -14, 1126 );
setSeVolume( spep_6 + 7 -14, 1126, 56 );
stopSe( spep_6 + 25 -14, se_1158, 24 );
playSe( spep_6 + 104 -14, 1004 );
setSeVolume( spep_6 + 104 -14, 1004, 0 );
setSeVolume( spep_6 + 106 -14, 1004, 0 );
setSeVolume( spep_6 + 107 -14, 1004, 23.6666666666667 );
setSeVolume( spep_6 + 108 -14, 1004, 47.3333333333333 );
setSeVolume( spep_6 + 109 -14, 1004, 71 );
stopSe( spep_6 + 110 -14, se_0003, 0 );
stopSe( spep_6 + 110 -14, se_1126, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 20 );
endPhase( spep_6 + 132 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 ); --導入(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 96, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 96, start, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_0 + 12, 190006, 72, 0x100, -1, 0, 0, 520 );    --ゴゴゴゴ

setEffMoveKey( spep_0 + 12, ctgogo, 0, 520, 0 );
setEffMoveKey( spep_0 + 84, ctgogo, 0, 520, 0 );

setEffAlphaKey( spep_0 + 12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 76, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey( spep_0 + 12, ctgogo, 0);
setEffRotateKey( spep_0 + 84, ctgogo, 0);

setEffScaleKey( spep_0 + 12, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_0 + 72, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_0 + 84, ctgogo, -1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 16, 88, 2, 0, 0, 0, 0, 200 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 80, 8, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 08 );
setSeVolume( spep_0 + 0, 08, 71 );
playSe( spep_0 + 13, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

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
playSe( spep_1 + 6 -2, 1035 );
playSe( spep_1 + 80 -2, 1072 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 後ろから敵に突進
------------------------------------------------------
x1 = 2;
-- ** エフェクト等 ** --
tosshin = entryEffectLife( spep_2 + 0, SP_02, 86 -x1, 0x100, -1, 0, 0, 0 ); --後ろから敵に突進(ef_002)
setEffMoveKey( spep_2 + 0, tosshin, 0, 0, 0 );
setEffMoveKey( spep_2 + 86 -x1, tosshin, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_2 + 86 -x1, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshin, 0 );
setEffRotateKey( spep_2 + 86 -x1, tosshin, 0 );
setEffAlphaKey( spep_2 + 0, tosshin, 255 );
setEffAlphaKey( spep_2 + 85 -x1, tosshin, 255 );
setEffAlphaKey( spep_2 + 86 -x1, tosshin, 0 );

tosshinb = entryEffectLife( spep_2 + 0, SP_11, 86 -x1, 0x80, -1, 0, 0, 0 ); --後ろから敵に突進(ef_011)
setEffMoveKey( spep_2 + 0, tosshinb, 0, 0, 0 );
setEffMoveKey( spep_2 + 86 -x1, tosshinb, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tosshinb, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86 -x1, tosshinb, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshinb, 0 );
setEffRotateKey( spep_2 + 86 -x1, tosshinb, 0 );
setEffAlphaKey( spep_2 + 0, tosshinb, 255 );
setEffAlphaKey( spep_2 + 85 -x1, tosshinb, 255 );
setEffAlphaKey( spep_2 + 86 -x1, tosshinb, 0 );

-- ** 敵の動き ** --
setDisp( spep_2 -3 + 3, 1, 1 );
changeAnime( spep_2 -3 + 3, 1, 2 );

setMoveKey( spep_2 -3 + 3, 1, -5.1, 230.4 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 5.3, 229.7 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -5.5, 229 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -5.8, 228.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -6, 227.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -6.3, 226.7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -6.5, 225.8 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -6.8, 225 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -7.1, 224.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -7.3, 223.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -7.6, 222.3 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -7.9, 221.4 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -8.2, 220.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -8.5, 219.4 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -8.8, 218.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -9.2, 217.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -9.5, 216.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -9.8, 215.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -10.2, 214.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -10.5, 212.9 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -10.9, 211.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -11.3, 210.6 , 0 );

setScaleKey( spep_2 -3 + 3, 1, 0.25, 0.25 );
--setScaleKey( spep_2 -3 + 2, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 4, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 6, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 8, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 10, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 12, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 14, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 16, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 18, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 20, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 22, 1, 0.39, 0.39 );
setScaleKey( spep_2 -3 + 24, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 26, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 28, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 30, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 32, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 34, 1, 0.49, 0.49 );
setScaleKey( spep_2 -3 + 36, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 38, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 42, 1, 0.56, 0.56 );

setRotateKey( spep_2 -3 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 42, 1, 0 );

-- ** 書き文字エントリー ** --
ctBa = entryEffectLife( spep_2 + 0, 10022, 26, 0x100, -1, 0, 46.2, 176.2 ); --バッ
setEffMoveKey( spep_2 + 0, ctBa, 46.2, 176.2 , 0 );
setEffMoveKey( spep_2 + 2, ctBa, 57.1, 166.6 , 0 );
setEffMoveKey( spep_2 + 4, ctBa, 61.8, 153.5 , 0 );
setEffMoveKey( spep_2 + 6, ctBa, 76.7, 140.9 , 0 );
setEffMoveKey( spep_2 + 8, ctBa, 82.5, 135.3 , 0 );
setEffMoveKey( spep_2 + 10, ctBa, 85.8, 126.1 , 0 );
setEffMoveKey( spep_2 + 12, ctBa, 94.2, 135.5 , 0 );
setEffMoveKey( spep_2 + 14, ctBa, 94, 129 , 0 );
setEffMoveKey( spep_2 + 16, ctBa, 103.7, 131 , 0 );
setEffMoveKey( spep_2 + 18, ctBa, 104.4, 127.3 , 0 );
setEffMoveKey( spep_2 + 20, ctBa, 108.7, 134.3 , 0 );
setEffMoveKey( spep_2 + 22, ctBa, 116.9, 66.2 , 0 );
setEffMoveKey( spep_2 + 24, ctBa, 133, 23.1 , 0 );
setEffMoveKey( spep_2 + 26, ctBa, 143.6, -32.9 , 0 );

setEffScaleKey( spep_2 + 0, ctBa, 0.18, 0.18 );
setEffScaleKey( spep_2 + 2, ctBa, 0.51, 0.51 );
setEffScaleKey( spep_2 + 4, ctBa, 0.84, 0.84 );
setEffScaleKey( spep_2 + 6, ctBa, 1.17, 1.17 );
setEffScaleKey( spep_2 + 8, ctBa, 1.5, 1.5 );
setEffScaleKey( spep_2 + 20, ctBa, 1.5, 1.5 );
setEffScaleKey( spep_2 + 22, ctBa, 2, 2 );
setEffScaleKey( spep_2 + 24, ctBa, 2.5, 2.5 );
setEffScaleKey( spep_2 + 26, ctBa, 3, 3 );

setEffRotateKey( spep_2 + 0, ctBa, 6.1 );
setEffRotateKey( spep_2 + 2, ctBa, 6 );
setEffRotateKey( spep_2 + 26, ctBa, 6 );

setEffAlphaKey( spep_2 + 0, ctBa, 255 );
setEffAlphaKey( spep_2 + 20, ctBa, 255 );
setEffAlphaKey( spep_2 + 22, ctBa, 170 );
setEffAlphaKey( spep_2 + 24, ctBa, 85 );
setEffAlphaKey( spep_2 + 26, ctBa, 0 );

-- ** 音 ** --
se_0008 = playSe( spep_2 + 8 -4, 08 );
stopSe( spep_2 + 31 -4, se_0008, 51 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
pauseAll( SP_dodge, 67 );

-- ** 敵の動き ** --
changeAnime( SP_dodge + 0, 1, 2 );

setMoveKey( SP_dodge + 0, 1, -11.3, 210.6 , 0 );
setMoveKey( SP_dodge + 2, 1, -11.6, 209.4 , 0 );
setMoveKey( SP_dodge + 4, 1, -12, 208.1 , 0 );
setMoveKey( SP_dodge + 6, 1, -12.4, 206.9 , 0 );
setMoveKey( SP_dodge + 8, 1, -12.8, 205.6 , 0 );
setMoveKey( SP_dodge + 10, 1, -13.2, 204.3 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.56, 0.56 );
setScaleKey( SP_dodge + 2, 1, 0.58, 0.58 );
setScaleKey( SP_dodge + 4, 1, 0.6, 0.6 );
setScaleKey( SP_dodge + 6, 1, 0.62, 0.62 );
setScaleKey( SP_dodge + 8, 1, 0.64, 0.64 );
setScaleKey( SP_dodge + 10, 1, 0.66, 0.66 );

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
-- ** 敵の動き ** --
--setDisp( spep_2 + 86, 1, 0 );

setMoveKey( spep_2 -3 + 44, 1, -11.6, 209.4 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -12, 208.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -12.4, 206.9 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -12.8, 205.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -13.2, 204.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -13.6, 202.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -14.1, 201.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -14.5, 200.2 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -14.9, 198.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -15.4, 197.3 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -15.8, 195.9 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -16.3, 194.4 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -16.8, 192.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -17.2, 191.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -17.6, 189.7 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -19.3, 183.8 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -20.9, 178.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -22.3, 173.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -23.4, 169.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -24.4, 166.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -25.3, 163.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -25.9, 161.6 , 0 );
setMoveKey( spep_2 -3 + 88 -x1, 1, -26.3, 160.1 , 0 );

setScaleKey( spep_2 -3 + 44, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 46, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 48, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 50, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 52, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 54, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 56, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 58, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 60, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 62, 1, 0.76, 0.76 );
setScaleKey( spep_2 -3 + 64, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 66, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 68, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 70, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 72, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 74, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 76, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 78, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 80, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 82, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 84, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 86, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 88 -x1, 1, 1.3, 1.3 );

setRotateKey( spep_2 -3 + 44, 1, 0 );
setRotateKey( spep_2 -3 + 88 -x1, 1, 0 );

-- ** 音 ** --
playSe( spep_2 + 57 -4, 1072 );
setSeVolume( spep_2 + 57 -4, 1072, 141 );
se_1116 = playSe( spep_2 + 70 -4, 1116 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 86 -x1;

------------------------------------------------------
-- 首絞め
------------------------------------------------------

-- ** エフェクト等 ** --
chokingf = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 ); --首絞め(ef_003)
setEffMoveKey( spep_3 + 0, chokingf, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, chokingf, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, chokingf, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, chokingf, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, chokingf, 0 );
setEffRotateKey( spep_3 + 106, chokingf, 0 );
setEffAlphaKey( spep_3 + 0, chokingf, 255 );
setEffAlphaKey( spep_3 + 106, chokingf, 255 );

chokingbg = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --首絞め(ef_005)
setEffMoveKey( spep_3 + 0, chokingbg, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, chokingbg, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, chokingbg, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, chokingbg, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, chokingbg, 0 );
setEffRotateKey( spep_3 + 106, chokingbg, 0 );
setEffAlphaKey( spep_3 + 0, chokingbg, 255 );
setEffAlphaKey( spep_3 + 106, chokingbg, 255 );

chokingb = entryEffect( spep_3 + 0, SP_04r, 0x80, -1, 0, 0, 0 ); --首絞め(ef_004)
setEffMoveKey( spep_3 + 0, chokingb, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, chokingb, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, chokingb, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, chokingb, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, chokingb, 0 );
setEffRotateKey( spep_3 + 106, chokingb, 0 );
setEffAlphaKey( spep_3 + 0, chokingb, 255 );
setEffAlphaKey( spep_3 + 106, chokingb, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 27, 1, 0 );
setDisp( spep_3 -3 + 46, 1, 1 );
setDisp( spep_3 + 105, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 -3 + 46, 1, 106 );

setMoveKey( spep_3 + 0, 1, -31.6, 14 , 0 );
setMoveKey( spep_3 + 2, 1, -30.8, 10.7 , 0 );
setMoveKey( spep_3 + 4, 1, -30, 7.5 , 0 );
setMoveKey( spep_3 + 6, 1, -29.2, 4.2 , 0 );
setMoveKey( spep_3 + 8, 1, -28.3, 1 , 0 );
setMoveKey( spep_3 + 10, 1, -27.5, -2.3 , 0 );
setMoveKey( spep_3 + 12, 1, -26.7, -5.6 , 0 );
setMoveKey( spep_3 + 14, 1, -25.9, -8.8 , 0 );
setMoveKey( spep_3 + 16, 1, -25, -12.1 , 0 );
setMoveKey( spep_3 + 18, 1, -24.2, -15.3 , 0 );
setMoveKey( spep_3 + 20, 1, -23.4, -18.6 , 0 );
setMoveKey( spep_3 + 22, 1, -22.6, -21.9 , 0 );
setMoveKey( spep_3 + 24, 1, -21.7, -25.1 , 0 );
setMoveKey( spep_3 + 26, 1, -20.9, -28.4 , 0 );
setMoveKey( spep_3 + 28, 1, -20.1, -31.7 , 0 );

setMoveKey( spep_3 -3 + 46, 1, -103.8, 62.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -91.5, 53.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -72.7, 57.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -63.6, 46.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -59.4, 50.3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -63.1, 42.2 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -58.9, 50.1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -62.7, 45.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -59.1, 50.1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -63.5, 42.3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -59.8, 50.5 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -64.2, 46.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -60, 50.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -63.8, 42.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -59.6, 50.3 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -63.3, 46.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -59.7, 50.3 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -64.1, 42.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -60.5, 50.7 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -64.9, 46.8 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -60.5, 50.7 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -64.2, 42.5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -59.9, 50.3 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -64.4, 46.5 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -60.9, 50.8 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -65.4, 47 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -61, 50.8 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -64.7, 46.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -60.4, 50.5 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -64.9, 46.7 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -61.4, 50.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -65.8, 47.2 , 0 );

setScaleKey( spep_3 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 2, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 4, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 6, 1, 1.71, 1.71 );
setScaleKey( spep_3 + 8, 1, 1.79, 1.79 );
setScaleKey( spep_3 + 10, 1, 1.86, 1.86 );
setScaleKey( spep_3 + 12, 1, 1.93, 1.93 );
setScaleKey( spep_3 + 14, 1, 2, 2 );
setScaleKey( spep_3 + 16, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 18, 1, 2.14, 2.14 );
setScaleKey( spep_3 + 20, 1, 2.21, 2.21 );
setScaleKey( spep_3 + 22, 1, 2.29, 2.29 );
setScaleKey( spep_3 + 24, 1, 2.36, 2.36 );
setScaleKey( spep_3 + 26, 1, 2.43, 2.43 );
setScaleKey( spep_3 + 28, 1, 2.5, 2.5 );

setScaleKey( spep_3 -3 + 46, 1, 2.37, 2.37 );
setScaleKey( spep_3 -3 + 48, 1, 2.08, 2.08 );
setScaleKey( spep_3 -3 + 50, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 56, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 58, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 70, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 72, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 84, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 86, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 98, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 100, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 108, 1, 1.54, 1.54 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 28, 1, 0 );

setRotateKey( spep_3 -3 + 46, 1, -49.6 );
setRotateKey( spep_3 -3 + 108, 1, -49.6 );

-- ** 書き文字エントリー ** --
ctZuo = entryEffectLife( spep_3 -3 + 32, 10012, 12, 0x100, -1, 0, 12.8, 101.7 ); --ズオッ
setEffMoveKey( spep_3 -3 + 32, ctZuo, 12.8, 101.7 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctZuo, -108, 152.9 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctZuo, -134.2, 203.9 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctZuo, -164.2, 241.3 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctZuo, -190.4, 292.3 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctZuo, -209.3, 307.5 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctZuo, -226.3, 329.5 , 0 );

setEffScaleKey( spep_3 -3 + 32, ctZuo, 0.3, 0.3 );
setEffScaleKey( spep_3 -3 + 34, ctZuo, 3, 3 );
setEffScaleKey( spep_3 -3 + 40, ctZuo, 3, 3 );
setEffScaleKey( spep_3 -3 + 42, ctZuo, 3.5, 3.5 );
setEffScaleKey( spep_3 -3 + 44, ctZuo, 4, 4 );

setEffRotateKey( spep_3 -3 + 32, ctZuo, -5 );
setEffRotateKey( spep_3 -3 + 44, ctZuo, -5 );

setEffAlphaKey( spep_3 -3 + 32, ctZuo, 255 );
setEffAlphaKey( spep_3 -3 + 40, ctZuo, 255 );
setEffAlphaKey( spep_3 -3 + 42, ctZuo, 128 );
setEffAlphaKey( spep_3 -3 + 44, ctZuo, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 -3 + 44, 906, 64, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 -3, shuchusen1, 64, 20 );

setEffMoveKey( spep_3 -3 + 44, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_3 -3 + 108, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_3 -3 + 44, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_3 -3 + 108, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_3 -3 + 44, shuchusen1, 180 );
setEffRotateKey( spep_3 -3 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_3 -3 + 44, shuchusen1, 255 );
setEffAlphaKey( spep_3 -3 + 108, shuchusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 41, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 100, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
stopSe( spep_3 + 15 -6, se_1116, 22 );
playSe( spep_3 + 40 -6, 1006 );
playSe( spep_3 + 43 -6, 1007 );
se_1190 = playSe( spep_3 + 61 -6, 1190 );
stopSe( spep_3 + 88 -6, se_1190, 23 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 106;

------------------------------------------------------
-- ヤムー突進
------------------------------------------------------

-- ** エフェクト等 ** --
ymtosshin = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); --ヤムー突進(ef_006)
setEffMoveKey( spep_4 + 0, ymtosshin, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, ymtosshin, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, ymtosshin, -1.0, 1.0 );
setEffScaleKey( spep_4 + 116, ymtosshin, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, ymtosshin, 0 );
setEffRotateKey( spep_4 + 116, ymtosshin, 0 );
setEffAlphaKey( spep_4 + 0, ymtosshin, 255 );
setEffAlphaKey( spep_4 + 116, ymtosshin, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_0009 = playSe( spep_4 + 19 -8, 09 );
playSe( spep_4 + 86 -8, 1178 );
playSe( spep_4 + 90 -8, 1032 );
stopSe( spep_4 + 94 -8, se_0009, 0 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;
entryFade( spep_4 + 116 -2, 0, 4, 0, 0, 0, 0, 255 );  --黒

------------------------------------------------------
-- ツボ刺し
------------------------------------------------------

-- ** エフェクト等 ** --
tsubosashif = entryEffect( spep_5 + 0, SP_07r, 0x100, -1, 0, 0, 0 ); --ツボ刺し(ef_007)
setEffMoveKey( spep_5 + 0, tsubosashif, 0, 0, 0 );
setEffMoveKey( spep_5 + 140, tsubosashif, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tsubosashif, 1.0, 1.0 );
setEffScaleKey( spep_5 + 140, tsubosashif, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tsubosashif, 0 );
setEffRotateKey( spep_5 + 140, tsubosashif, 0 );
setEffAlphaKey( spep_5 + 0, tsubosashif, 255 );
setEffAlphaKey( spep_5 + 140, tsubosashif, 255 );

tsubosashib = entryEffect( spep_5 + 0, SP_08r, 0x80, -1, 0, 0, 0 ); --ツボ刺し(ef_008)
setEffMoveKey( spep_5 + 0, tsubosashib, 0, 0, 0 );
setEffMoveKey( spep_5 + 140, tsubosashib, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, tsubosashib, 1.0, 1.0 );
setEffScaleKey( spep_5 + 140, tsubosashib, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tsubosashib, 0 );
setEffRotateKey( spep_5 + 140, tsubosashib, 0 );
setEffAlphaKey( spep_5 + 0, tsubosashib, 255 );
setEffAlphaKey( spep_5 + 140, tsubosashib, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 -3 + 3, 1, 1 );
changeAnime( spep_5 -3 + 3, 1, 106 );

setMoveKey( spep_5 -3 + 3, 1, -40.2, -14.7 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -20, -14 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 8.2, -5.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 28.4, -4.5 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 32.4, -0.5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 28.4, -4.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 32.4, -0.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 28.4, -4.5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 28.4, -4.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 28.3, -4.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 28.3, -4.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 32.3, -0.4 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 28.3, -4.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 32.3, -0.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 28.3, -4.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 28.3, -4.5 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 32.3, -0.5 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 28.2, -4.5 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 32.2, -0.5 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 28.2, -4.5 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 32.2, -0.5 , 0 );

setScaleKey( spep_5 -3 + 3, 1, 1.75, 1.75 );
--setScaleKey( spep_5 -3 + 2, 1, 1.67, 1.67 );
setScaleKey( spep_5 -3 + 4, 1, 1.58, 1.58 );
setScaleKey( spep_5 -3 + 6, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 42, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 44, 1, 1.51, 1.51 );
setScaleKey( spep_5 -3 + 68, 1, 1.51, 1.51 );
setScaleKey( spep_5 -3 + 70, 1, 1.52, 1.52 );
setScaleKey( spep_5 -3 + 92, 1, 1.52, 1.52 );
setScaleKey( spep_5 -3 + 94, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 118, 1, 1.53, 1.53 );
setScaleKey( spep_5 -3 + 120, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 124, 1, 1.54, 1.54 );
setScaleKey( spep_5 -3 + 126, 1, 1.64, 1.64 );
setScaleKey( spep_5 -3 + 128, 1, 1.75, 1.75 );
setScaleKey( spep_5 -3 + 130, 1, 1.86, 1.86 );
setScaleKey( spep_5 -3 + 132, 1, 1.97, 1.97 );
setScaleKey( spep_5 -3 + 134, 1, 2.07, 2.07 );
setScaleKey( spep_5 -3 + 136, 1, 2.18, 2.18 );
setScaleKey( spep_5 -3 + 138, 1, 2.29, 2.29 );
setScaleKey( spep_5 -3 + 140, 1, 2.39, 2.39 );
setScaleKey( spep_5 -3 + 142, 1, 2.5, 2.5 );

setRotateKey( spep_5 -3 + 0, 1, -49.6 );
setRotateKey( spep_5 -3 + 142, 1, -49.6 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5 -3 + 6, 906, 136, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 -3, shuchusen2, 136, 20 );

setEffMoveKey( spep_5 -3 + 6, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 -3 + 142, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_5 -3 + 6, shuchusen2, 1.1, 1.1 );
setEffScaleKey( spep_5 -3 + 142, shuchusen2, 1.1, 1.1 );

setEffRotateKey( spep_5 -3 + 6, shuchusen2, 180 );
setEffRotateKey( spep_5 -3 + 142, shuchusen2, 180 );

setEffAlphaKey( spep_5 -3 + 6, shuchusen2, 255 );
setEffAlphaKey( spep_5 -3 + 142, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_5 + 43, 45 );
se_1158 = playSe( spep_5 + 43, 1158 );
setSeVolume( spep_5 -10 + 43, 1158, 0 );
setSeVolume( spep_5 -10 + 43, 1158, 0 );
setSeVolume( spep_5 -10 + 44, 1158, 1.66666666666667 );
setSeVolume( spep_5 -10 + 45, 1158, 3.33333333333333 );
setSeVolume( spep_5 -10 + 46, 1158, 5 );
setSeVolume( spep_5 -10 + 47, 1158, 6.66666666666667 );
setSeVolume( spep_5 -10 + 48, 1158, 8.33333333333333 );
setSeVolume( spep_5 -10 + 49, 1158, 10 );
setSeVolume( spep_5 -10 + 50, 1158, 11.6666666666667 );
setSeVolume( spep_5 -10 + 51, 1158, 13.3333333333333 );
setSeVolume( spep_5 -10 + 52, 1158, 15 );
setSeVolume( spep_5 -10 + 53, 1158, 16.6666666666667 );
setSeVolume( spep_5 -10 + 54, 1158, 18.3333333333333 );
setSeVolume( spep_5 -10 + 55, 1158, 20 );
setSeVolume( spep_5 -10 + 56, 1158, 21.6666666666667 );
setSeVolume( spep_5 -10 + 57, 1158, 23.3333333333333 );
setSeVolume( spep_5 -10 + 58, 1158, 25 );
setSeVolume( spep_5 -10 + 59, 1158, 26.6666666666667 );
setSeVolume( spep_5 -10 + 60, 1158, 28.3333333333333 );
setSeVolume( spep_5 -10 + 61, 1158, 30 );
setSeVolume( spep_5 -10 + 62, 1158, 31.6666666666667 );
setSeVolume( spep_5 -10 + 63, 1158, 33.3333333333333 );
setSeVolume( spep_5 -10 + 64, 1158, 35 );
setSeVolume( spep_5 -10 + 65, 1158, 36.6666666666667 );
setSeVolume( spep_5 -10 + 66, 1158, 38.3333333333333 );
setSeVolume( spep_5 -10 + 67, 1158, 40 );
setSeVolume( spep_5 -10 + 68, 1158, 41.6666666666667 );
setSeVolume( spep_5 -10 + 69, 1158, 43.3333333333333 );
setSeVolume( spep_5 -10 + 70, 1158, 45 );
setSeVolume( spep_5 -10 + 71, 1158, 46.6666666666667 );
setSeVolume( spep_5 -10 + 72, 1158, 48.3333333333333 );
setSeVolume( spep_5 -10 + 73, 1158, 50 );
setSeVolume( spep_5 -10 + 74, 1158, 51.6666666666667 );
setSeVolume( spep_5 -10 + 75, 1158, 53.3333333333333 );
setSeVolume( spep_5 -10 + 76, 1158, 55 );
setSeVolume( spep_5 -10 + 77, 1158, 56.6666666666667 );
setSeVolume( spep_5 -10 + 78, 1158, 58.3333333333333 );
setSeVolume( spep_5 -10 + 79, 1158, 60 );
setSeVolume( spep_5 -10 + 80, 1158, 61.6666666666667 );
setSeVolume( spep_5 -10 + 81, 1158, 63.3333333333333 );
setSeVolume( spep_5 -10 + 82, 1158, 65 );
setSeVolume( spep_5 -10 + 83, 1158, 66.6666666666667 );
setSeVolume( spep_5 -10 + 84, 1158, 68.3333333333333 );
setSeVolume( spep_5 -10 + 85, 1158, 70 );
playSe( spep_5 + 86, 1116 );
setSeVolume( spep_5 -10 + 86, 1116, 0 );
setSeVolume( spep_5 -10 + 86, 1158, 71.6666666666667 );
setSeVolume( spep_5 -10 + 87, 1158, 73.3333333333333 );
setSeVolume( spep_5 -10 + 88, 1158, 75 );
setSeVolume( spep_5 -10 + 89, 1158, 76.6666666666667 );
setSeVolume( spep_5 -10 + 90, 1158, 78.3333333333333 );
setSeVolume( spep_5 -10 + 91, 1158, 80 );
setSeVolume( spep_5 -10 + 92, 1158, 81.6666666666667 );
setSeVolume( spep_5 -10 + 93, 1158, 83.3333333333333 );
setSeVolume( spep_5 -10 + 94, 1158, 85 );
setSeVolume( spep_5 -10 + 95, 1158, 86.6666666666667 );
setSeVolume( spep_5 -10 + 96, 1158, 88.3333333333333 );
setSeVolume( spep_5 -10 + 97, 1158, 90 );
setSeVolume( spep_5 -10 + 97, 1116, 0 );
setSeVolume( spep_5 -10 + 98, 1158, 91.6666666666667 );
setSeVolume( spep_5 -10 + 98, 1116, 5.09677419354839 );
setSeVolume( spep_5 -10 + 99, 1158, 93.3333333333333 );
setSeVolume( spep_5 -10 + 99, 1116, 10.1935483870968 );
setSeVolume( spep_5 -10 + 100, 1158, 95 );
setSeVolume( spep_5 -10 + 100, 1116, 15.2903225806452 );
setSeVolume( spep_5 -10 + 101, 1158, 96.6666666666667 );
setSeVolume( spep_5 -10 + 101, 1116, 20.3870967741935 );
setSeVolume( spep_5 -10 + 102, 1158, 98.3333333333333 );
setSeVolume( spep_5 -10 + 102, 1116, 25.4838709677419 );
setSeVolume( spep_5 -10 + 103, 1158, 100 );
setSeVolume( spep_5 -10 + 103, 1116, 30.5806451612903 );
setSeVolume( spep_5 -10 + 104, 1116, 35.6774193548387 );
setSeVolume( spep_5 -10 + 105, 1116, 40.7741935483871 );
setSeVolume( spep_5 -10 + 106, 1116, 45.8709677419355 );
setSeVolume( spep_5 -10 + 107, 1116, 50.9677419354839 );
setSeVolume( spep_5 -10 + 108, 1116, 56.0645161290323 );
setSeVolume( spep_5 -10 + 109, 1116, 61.1612903225806 );
setSeVolume( spep_5 -10 + 110, 1116, 66.258064516129 );
setSeVolume( spep_5 -10 + 111, 1116, 71.3548387096774 );
setSeVolume( spep_5 -10 + 112, 1116, 76.4516129032258 );
setSeVolume( spep_5 -10 + 113, 1116, 81.5483870967742 );
setSeVolume( spep_5 -10 + 114, 1116, 86.6451612903226 );
setSeVolume( spep_5 -10 + 115, 1116, 91.741935483871 );
setSeVolume( spep_5 -10 + 116, 1116, 96.8387096774194 );
setSeVolume( spep_5 -10 + 117, 1116, 101.935483870968 );
setSeVolume( spep_5 -10 + 118, 1116, 107.032258064516 );
setSeVolume( spep_5 -10 + 119, 1116, 112.129032258065 );
setSeVolume( spep_5 -10 + 120, 1116, 117.225806451613 );
setSeVolume( spep_5 -10 + 121, 1116, 122.322580645161 );
setSeVolume( spep_5 -10 + 122, 1116, 127.41935483871 );
setSeVolume( spep_5 -10 + 123, 1116, 132.516129032258 );
setSeVolume( spep_5 -10 + 124, 1116, 137.612903225806 );
setSeVolume( spep_5 -10 + 125, 1116, 142.709677419355 );
setSeVolume( spep_5 -10 + 126, 1116, 147.806451612903 );
setSeVolume( spep_5 -10 + 127, 1116, 152.903225806452 );
setSeVolume( spep_5 -10 + 128, 1116, 158 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 140;

------------------------------------------------------
-- ラスト
------------------------------------------------------

-- ** エフェクト等 ** --
lastf = entryEffect( spep_6 + 0, SP_09r, 0x100, -1, 0, 0, 0 ); --ラスト(ef_009)
setEffMoveKey( spep_6 + 0, lastf, 0, 0, 0 );
setEffMoveKey( spep_6 + 136, lastf, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, lastf, 1.0, 1.0 );
setEffScaleKey( spep_6 + 136, lastf, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, lastf, 0 );
setEffRotateKey( spep_6 + 136, lastf, 0 );
setEffAlphaKey( spep_6 + 0, lastf, 255 );
setEffAlphaKey( spep_6 + 136, lastf, 255 );

lastb = entryEffect( spep_6 + 0, SP_10r, 0x80, -1, 0, 0, 0 ); --ラスト(ef_010)
setEffMoveKey( spep_6 + 0, lastb, 0, 0, 0 );
setEffMoveKey( spep_6 + 136, lastb, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, lastb, 1.0, 1.0 );
setEffScaleKey( spep_6 + 136, lastb, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, lastb, 0 );
setEffRotateKey( spep_6 + 136, lastb, 0 );
setEffAlphaKey( spep_6 + 0, lastb, 255 );
setEffAlphaKey( spep_6 + 136, lastb, 255 );

-- ** 敵の動き ** --
setDisp( spep_6 -3 + 3, 1, 1 );
changeAnime( spep_6 -3 + 3, 1, 106 );

setMoveKey( spep_6 -3 + 3, 1, 27.7, -57.3 , 0 );
--setMoveKey( spep_6 -3 + 2, 1, 26.1, -60.4 , 0 );
setMoveKey( spep_6 -3 + 4, 1, 32.6, -55.6 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 31, -58.8 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 37.5, -54.1 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 36, -57.4 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 42.5, -52.7 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 41, -56.1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 47.5, -51.5 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 46.1, -55 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 48.4, -49.3 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 45.1, -58.2 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 49.8, -59.2 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 46.5, -68.1 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 51.2, -69 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 51.9, -74 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 52.6, -78.9 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 49.3, -86.6 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 48.1, -92.2 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 46.9, -97.7 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 45.6, -103.3 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 44.4, -108.9 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 43.2, -114.5 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 42, -120 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 40.7, -125.6 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 39.5, -131.2 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 38.3, -136.7 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 37.1, -142.3 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 35.8, -147.8 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 34.6, -153.4 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 33.4, -159 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 32.1, -164.5 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 30.9, -170.1 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 29.7, -175.7 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 28.5, -181.2 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 27.2, -186.8 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 26, -192.4 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 24.8, -197.9 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 23.6, -203.5 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 22.3, -209.1 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 21.1, -214.6 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 19.9, -220.2 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 19.2, -250.3 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 18.6, -280.4 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 17.9, -310.6 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 17.3, -340.7 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 16.6, -370.8 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 16, -400.9 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 15.3, -431 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 14.7, -461.2 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 14, -491.3 , 0 );
setMoveKey( spep_6 -3 + 102, 1, 13.3, -521.4 , 0 );
setMoveKey( spep_6 -3 + 104, 1, 12.7, -551.6 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 12, -581.7 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 11.4, -611.8 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 10.7, -641.9 , 0 );
setMoveKey( spep_6 -3 + 112, 1, 10.1, -672.1 , 0 );
setMoveKey( spep_6 -3 + 114, 1, 9.4, -702.2 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 8.7, -732.3 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 8.1, -762.5 , 0 );
setMoveKey( spep_6 -3 + 120, 1, 7.4, -792.6 , 0 );
setMoveKey( spep_6 -3 + 122, 1, 6.8, -822.8 , 0 );
setMoveKey( spep_6 -3 + 124, 1, 6.1, -852.9 , 0 );
setMoveKey( spep_6 -3 + 126, 1, 5.4, -883 , 0 );
setMoveKey( spep_6 -3 + 128, 1, 4.8, -913.2 , 0 );
setMoveKey( spep_6 -3 + 130, 1, 4.1, -943.3 , 0 );
setMoveKey( spep_6 -3 + 132, 1, 3.5, -973.5 , 0 );
setMoveKey( spep_6 -3 + 134, 1, 2.8, -1003.6 , 0 );

setScaleKey( spep_6 -3 + 3, 1, 1.67, 1.67 );
--setScaleKey( spep_6 -3 + 2, 1, 1.63, 1.63 );
setScaleKey( spep_6 -3 + 4, 1, 1.59, 1.59 );
setScaleKey( spep_6 -3 + 6, 1, 1.55, 1.55 );
setScaleKey( spep_6 -3 + 8, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 10, 1, 1.46, 1.46 );
setScaleKey( spep_6 -3 + 12, 1, 1.42, 1.42 );
setScaleKey( spep_6 -3 + 14, 1, 1.37, 1.37 );
setScaleKey( spep_6 -3 + 16, 1, 1.33, 1.33 );
setScaleKey( spep_6 -3 + 18, 1, 1.29, 1.29 );
setScaleKey( spep_6 -3 + 36, 1, 1.29, 1.29 );
setScaleKey( spep_6 -3 + 38, 1, 1.28, 1.28 );
setScaleKey( spep_6 -3 + 50, 1, 1.28, 1.28 );
setScaleKey( spep_6 -3 + 52, 1, 1.27, 1.27 );
setScaleKey( spep_6 -3 + 62, 1, 1.27, 1.27 );
setScaleKey( spep_6 -3 + 64, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 74, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 76, 1, 1.25, 1.25 );
setScaleKey( spep_6 -3 + 82, 1, 1.25, 1.25 );
setScaleKey( spep_6 -3 + 84, 1, 1.23, 1.23 );
setScaleKey( spep_6 -3 + 86, 1, 1.21, 1.21 );
setScaleKey( spep_6 -3 + 88, 1, 1.19, 1.19 );
setScaleKey( spep_6 -3 + 90, 1, 1.17, 1.17 );
setScaleKey( spep_6 -3 + 92, 1, 1.15, 1.15 );
setScaleKey( spep_6 -3 + 94, 1, 1.13, 1.13 );
setScaleKey( spep_6 -3 + 96, 1, 1.11, 1.11 );
setScaleKey( spep_6 -3 + 98, 1, 1.09, 1.09 );
setScaleKey( spep_6 -3 + 100, 1, 1.07, 1.07 );
setScaleKey( spep_6 -3 + 102, 1, 1.05, 1.05 );
setScaleKey( spep_6 -3 + 104, 1, 1.03, 1.03 );
setScaleKey( spep_6 -3 + 106, 1, 1.01, 1.01 );
setScaleKey( spep_6 -3 + 108, 1, 0.99, 0.99 );
setScaleKey( spep_6 -3 + 110, 1, 0.97, 0.97 );
setScaleKey( spep_6 -3 + 112, 1, 0.95, 0.95 );
setScaleKey( spep_6 -3 + 114, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 116, 1, 0.91, 0.91 );
setScaleKey( spep_6 -3 + 118, 1, 0.89, 0.89 );
setScaleKey( spep_6 -3 + 120, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 122, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 124, 1, 0.83, 0.83 );
setScaleKey( spep_6 -3 + 126, 1, 0.81, 0.81 );
setScaleKey( spep_6 -3 + 128, 1, 0.79, 0.79 );
setScaleKey( spep_6 -3 + 130, 1, 0.77, 0.77 );
setScaleKey( spep_6 -3 + 132, 1, 0.75, 0.75 );
setScaleKey( spep_6 -3 + 134, 1, 0.73, 0.73 );

setRotateKey( spep_6 -3 + 3, 1, -50 );
setRotateKey( spep_6 -3 + 20, 1, -50 );
setRotateKey( spep_6 -3 + 22, 1, -51.1 );
setRotateKey( spep_6 -3 + 24, 1, -52.1 );
setRotateKey( spep_6 -3 + 26, 1, -53.2 );
setRotateKey( spep_6 -3 + 28, 1, -54.3 );
setRotateKey( spep_6 -3 + 30, 1, -55.3 );
setRotateKey( spep_6 -3 + 32, 1, -56.4 );
setRotateKey( spep_6 -3 + 34, 1, -56.4 );
setRotateKey( spep_6 -3 + 36, 1, -57.9 );
setRotateKey( spep_6 -3 + 38, 1, -59.4 );
setRotateKey( spep_6 -3 + 40, 1, -60.9 );
setRotateKey( spep_6 -3 + 42, 1, -62.4 );
setRotateKey( spep_6 -3 + 44, 1, -63.9 );
setRotateKey( spep_6 -3 + 46, 1, -65.4 );
setRotateKey( spep_6 -3 + 48, 1, -66.9 );
setRotateKey( spep_6 -3 + 50, 1, -68.4 );
setRotateKey( spep_6 -3 + 52, 1, -69.9 );
setRotateKey( spep_6 -3 + 54, 1, -71.4 );
setRotateKey( spep_6 -3 + 56, 1, -72.9 );
setRotateKey( spep_6 -3 + 58, 1, -74.4 );
setRotateKey( spep_6 -3 + 60, 1, -75.9 );
setRotateKey( spep_6 -3 + 62, 1, -77.3 );
setRotateKey( spep_6 -3 + 64, 1, -78.8 );
setRotateKey( spep_6 -3 + 66, 1, -80.3 );
setRotateKey( spep_6 -3 + 68, 1, -81.8 );
setRotateKey( spep_6 -3 + 70, 1, -83.3 );
setRotateKey( spep_6 -3 + 72, 1, -84.8 );
setRotateKey( spep_6 -3 + 74, 1, -86.3 );
setRotateKey( spep_6 -3 + 76, 1, -87.8 );
setRotateKey( spep_6 -3 + 78, 1, -89.3 );
setRotateKey( spep_6 -3 + 80, 1, -90.8 );
setRotateKey( spep_6 -3 + 82, 1, -92.3 );
setRotateKey( spep_6 -3 + 84, 1, -97.3 );
setRotateKey( spep_6 -3 + 86, 1, -102.3 );
setRotateKey( spep_6 -3 + 88, 1, -107.3 );
setRotateKey( spep_6 -3 + 90, 1, -112.3 );
setRotateKey( spep_6 -3 + 92, 1, -117.3 );
setRotateKey( spep_6 -3 + 94, 1, -122.3 );
setRotateKey( spep_6 -3 + 96, 1, -127.3 );
setRotateKey( spep_6 -3 + 98, 1, -132.3 );
setRotateKey( spep_6 -3 + 100, 1, -137.3 );
setRotateKey( spep_6 -3 + 102, 1, -142.3 );
setRotateKey( spep_6 -3 + 104, 1, -147.3 );
setRotateKey( spep_6 -3 + 106, 1, -152.3 );
setRotateKey( spep_6 -3 + 108, 1, -157.4 );
setRotateKey( spep_6 -3 + 110, 1, -162.4 );
setRotateKey( spep_6 -3 + 112, 1, -167.4 );
setRotateKey( spep_6 -3 + 114, 1, -172.4 );
setRotateKey( spep_6 -3 + 116, 1, -177.4 );
setRotateKey( spep_6 -3 + 118, 1, -182.4 );
setRotateKey( spep_6 -3 + 120, 1, -187.4 );
setRotateKey( spep_6 -3 + 122, 1, -192.4 );
setRotateKey( spep_6 -3 + 124, 1, -197.4 );
setRotateKey( spep_6 -3 + 126, 1, -202.4 );
setRotateKey( spep_6 -3 + 128, 1, -207.4 );
setRotateKey( spep_6 -3 + 130, 1, -212.4 );
setRotateKey( spep_6 -3 + 132, 1, -217.4 );
setRotateKey( spep_6 -3 + 134, 1, -222.4 );

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_0003 = playSe( spep_6 + 7 -14, 03 );
setSeVolume( spep_6 + 7 -14, 03, 79 );
se_1126 = playSe( spep_6 + 7 -14, 1126 );
setSeVolume( spep_6 + 7 -14, 1126, 56 );
stopSe( spep_6 + 25 -14, se_1158, 24 );
playSe( spep_6 + 104 -14, 1004 );
setSeVolume( spep_6 + 104 -14, 1004, 0 );
setSeVolume( spep_6 + 106 -14, 1004, 0 );
setSeVolume( spep_6 + 107 -14, 1004, 23.6666666666667 );
setSeVolume( spep_6 + 108 -14, 1004, 47.3333333333333 );
setSeVolume( spep_6 + 109 -14, 1004, 71 );
stopSe( spep_6 + 110 -14, se_0003, 0 );
stopSe( spep_6 + 110 -14, se_1126, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 20 );
endPhase( spep_6 + 132 );

end
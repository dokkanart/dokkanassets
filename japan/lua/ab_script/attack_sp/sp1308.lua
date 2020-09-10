--ネイル_ミスティックスラッシュ

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
SP_01 = 153759; --気溜め
SP_02 = 153760; --攻撃
SP_03 = 153761; --HITエフェクト
SP_04 = 153762; --手刀
SP_05 = 153766; --背景
SP_06 = 153767; --背景
SP_07 = 153768; --背景

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
-- 気溜め(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 146, 0x100, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 146, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 146, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 146, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 146, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.46, 1.68 );
setEffScaleKey( spep_0 + 146, shuchusen1, 1.46, 1.68 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 146, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen1, 255 );

spep_x = spep_0 + 40;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -12.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -12.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -12.9, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 134, 10, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 38,  1035);
playSe( spep_x + 16, SE_04 );  --ゴゴゴ
--se = playSe( spep_0 + 58, 55 );
--stopSe( spep_0 + 146, se, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 攻撃(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
haikei1 = entryEffectLife( spep_2 + 0, SP_05, 58, 0x80, -1, 0, 0, 0 );  --背景(ef_005)
setEffMoveKey( spep_2 + 0, haikei1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, haikei1, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, haikei1, 1.0, 1.0 );
setEffScaleKey( spep_2 + 58, haikei1, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, haikei1, 0 );
setEffRotateKey( spep_2 + 58, haikei1, 0 );
setEffAlphaKey( spep_2 + 0, haikei1, 255 );
setEffAlphaKey( spep_2 + 58, haikei1, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_2 + 0, 914, 58, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_2 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 4.46, 1.68 );
setEffScaleKey( spep_2 + 58, ryusen1, 4.46, 1.68 );

setEffRotateKey( spep_2 + 0, ryusen1, 0 );
setEffRotateKey( spep_2 + 58, ryusen1, 0 );

setEffAlphaKey( spep_2 + 0, ryusen1, 0 );
setEffAlphaKey( spep_2 + 8, ryusen1, 255 );
setEffAlphaKey( spep_2 + 58, ryusen1, 255 );

-- ** エフェクト等 ** --
attack = entryEffectLife( spep_2 + 0, SP_02, 58, 0x80, -1, 0, 0, 0 );  --攻撃(ef_002)
setEffMoveKey( spep_2 + 0, attack, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, attack, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_2 + 58, attack, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack, 0 );
setEffRotateKey( spep_2 + 58, attack, 0 );
setEffAlphaKey( spep_2 + 0, attack, 255 );
setEffAlphaKey( spep_2 + 58, attack, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 38, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 38, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 38, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.46, 1.68 );
setEffScaleKey( spep_2 + 38, shuchusen2, 1.46, 1.68 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 38, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 38, shuchusen2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, 1763.3, -24.2 , 0 );
setMoveKey( spep_2 + 2, 1, 1727.9, -24.5 , 0 );
setMoveKey( spep_2 + 4, 1, 1557.7, -24.7 , 0 );
setMoveKey( spep_2 + 6, 1, 1414.9, -24.9 , 0 );
setMoveKey( spep_2 + 8, 1, 1292.4, -25.1 , 0 );
setMoveKey( spep_2 + 10, 1, 1185.5, -25.4 , 0 );
setMoveKey( spep_2 + 12, 1, 1091.5, -25.5 , 0 );
setMoveKey( spep_2 + 14, 1, 1008.1, -25.7 , 0 );
setMoveKey( spep_2 + 16, 1, 934.4, -25.9 , 0 );
setMoveKey( spep_2 + 18, 1, 868.6, -26.2 , 0 );
setMoveKey( spep_2 + 20, 1, 809.7, -26.4 , 0 );
setMoveKey( spep_2 + 22, 1, 772.2, -26.5 , 0 );
setMoveKey( spep_2 + 24, 1, 734.2, -26.5 , 0 );
setMoveKey( spep_2 + 26, 1, 697, -26.5 , 0 );
setMoveKey( spep_2 + 28, 1, 660.2, -26.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 2, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 4, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 6, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 8, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 12, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 16, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 18, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 20, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 22, 1, 1.44, 1.44 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 0, 44 );  --迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 624.1, -26.5 , 0 );
setMoveKey( SP_dodge + 2, 1, 588.5, -26.5 , 0 );
setMoveKey( SP_dodge + 4, 1, 553.4, -26.5 , 0 );
setMoveKey( SP_dodge + 6, 1, 518.7, -26.5 , 0 );
setMoveKey( SP_dodge + 8, 1, 484.4, -26.5 , 0 );
setMoveKey( SP_dodge + 10, 1, 484.4, -26.5 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.44, 1.44 );
setScaleKey( SP_dodge + 10, 1, 1.44, 1.44 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_2 + 56, 1, 0 );

setMoveKey( spep_2 + 30, 1, 624.1, -26.5 , 0 );
setMoveKey( spep_2 + 32, 1, 588.5, -26.5 , 0 );
setMoveKey( spep_2 + 34, 1, 553.4, -26.5 , 0 );
setMoveKey( spep_2 + 36, 1, 518.7, -26.5 , 0 );
setMoveKey( spep_2 + 38, 1, 484.4, -26.5 , 0 );
setMoveKey( spep_2 + 40, 1, 450.5, -26.5 , 0 );
setMoveKey( spep_2 + 42, 1, 417.1, -26.5 , 0 );
setMoveKey( spep_2 + 44, 1, 384.1, -26.5 , 0 );
setMoveKey( spep_2 + 46, 1, 351.4, -26.5 , 0 );
setMoveKey( spep_2 + 48, 1, 319.1, -26.5 , 0 );
setMoveKey( spep_2 + 50, 1, 287, -26.5 , 0 );
setMoveKey( spep_2 + 52, 1, 255.2, -26.5 , 0 );
setMoveKey( spep_2 + 54, 1, 223.7, -26.5 , 0 );
setMoveKey( spep_2 + 56, 1, 192.6, -26.5 , 0 );

setScaleKey( spep_2 + 56, 1, 1.44, 1.44 );

setRotateKey( spep_2 + 56, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 46, 8, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 58;

------------------------------------------------------
-- 手刀(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
hit = entryEffect(  spep_3 + 0,  SP_03, 0x100, -1, 0, 0, 0 );  --HITエフェクト(ef_003)
setEffMoveKey( spep_3 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, hit, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, hit, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit, 0 );
setEffRotateKey( spep_3 + 56, hit, 0 );
setEffAlphaKey( spep_3 + 0, hit, 255 );
setEffAlphaKey( spep_3 + 56, hit, 255 );

haikei2 = entryEffectLife(  spep_3 + 0,  SP_06, 56, 0x80, -1, 0, 0, 0 );  --背景(ef_006)
setEffMoveKey( spep_3 + 0, haikei2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, haikei2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, haikei2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, haikei2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, haikei2, 0 );
setEffRotateKey( spep_3 + 56, haikei2, 0 );
setEffAlphaKey( spep_3 + 0, haikei2, 255 );
setEffAlphaKey( spep_3 + 56, haikei2, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_3 + 0, 921, 56, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_3 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen2, 2.06, 1.18 );
setEffScaleKey( spep_3 + 56, ryusen2, 2.06, 1.18 );

setEffRotateKey( spep_3 + 0, ryusen2, -90 );
setEffRotateKey( spep_3 + 56, ryusen2, -90 );

setEffAlphaKey( spep_3 + 0, ryusen2, 0 );
setEffAlphaKey( spep_3 + 24, ryusen2, 0 );
setEffAlphaKey( spep_3 + 28, ryusen2, 220 );
setEffAlphaKey( spep_3 + 56, ryusen2, 220 );

-- ** エフェクト等 ** --
katana = entryEffectLife(  spep_3 + 0,  SP_04, 56, 0x80, -1, 0, 0, 0 );  --手刀(ef_004)
setEffMoveKey( spep_3 + 0, katana, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, katana, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, katana, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, katana, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, katana, 0 );
setEffRotateKey( spep_3 + 56, katana, 0 );
setEffAlphaKey( spep_3 + 0, katana, 255 );
setEffAlphaKey( spep_3 + 56, katana, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 44, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen3, 44, 20 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 44, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.06, 1.48 );
setEffScaleKey( spep_3 + 44, shuchusen3, 1.06, 1.48 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 44, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 40, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 44, shuchusen3, 0 );

-- 書き文字エントリー --
ctbaki = entryEffectLife( spep_3 + 0,  10020, 36, 0x100, -1, 0, -129.2, 246 );  --バキッ
setEffMoveKey( spep_3 + 0, ctbaki, -129.2, 246 , 0 );
setEffMoveKey( spep_3 + 2, ctbaki, -147.3, 267.5 , 0 );
setEffMoveKey( spep_3 + 4, ctbaki, -149.2, 291.6 , 0 );
setEffMoveKey( spep_3 + 6, ctbaki, -163.3, 296.1 , 0 );
setEffMoveKey( spep_3 + 8, ctbaki, -155.6, 293.3 , 0 );
setEffMoveKey( spep_3 + 10, ctbaki, -170, 289.8 , 0 );
setEffMoveKey( spep_3 + 12, ctbaki, -171.4, 298.5 , 0 );
setEffMoveKey( spep_3 + 14, ctbaki, -172.4, 288.5 , 0 );
setEffMoveKey( spep_3 + 16, ctbaki, -183.8, 291.2 , 0 );
setEffMoveKey( spep_3 + 18, ctbaki, -183.2, 301.7 , 0 );
setEffMoveKey( spep_3 + 20, ctbaki, -182.2, 292.9 , 0 );
setEffMoveKey( spep_3 + 22, ctbaki, -192.3, 305.6 , 0 );
setEffMoveKey( spep_3 + 24, ctbaki, -187.8, 301 , 0 );
setEffMoveKey( spep_3 + 26, ctbaki, -197.5, 304.3 , 0 );
setEffMoveKey( spep_3 + 28, ctbaki, -194.7, 302.9 , 0 );
setEffMoveKey( spep_3 + 30, ctbaki, -199.1, 311.4 , 0 );
setEffMoveKey( spep_3 + 32, ctbaki, -200.4, 306.2 , 0 );
setEffMoveKey( spep_3 + 34, ctbaki, -208.5, 314.8 , 0 );
setEffMoveKey( spep_3 + 36, ctbaki, -211.2, 316.9 , 0 );

setEffScaleKey( spep_3 + 0, ctbaki, 0.8, 0.8 );
setEffScaleKey( spep_3 + 2, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_3 + 4, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_3 + 6, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_3 + 8, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_3 + 10, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_3 + 12, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_3 + 14, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_3 + 16, ctbaki, 1.85, 1.85 );
setEffScaleKey( spep_3 + 18, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_3 + 20, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_3 + 22, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_3 + 24, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_3 + 26, ctbaki, 1.9, 1.9 );
setEffScaleKey( spep_3 + 28, ctbaki, 1.91, 1.91 );
setEffScaleKey( spep_3 + 30, ctbaki, 1.92, 1.92 );
setEffScaleKey( spep_3 + 32, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_3 + 34, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_3 + 36, ctbaki, 1.95, 1.95 );

setEffRotateKey( spep_3 + 0, ctbaki, -18 );
setEffRotateKey( spep_3 + 36, ctbaki, -18 );

setEffAlphaKey( spep_3 + 0, ctbaki, 255 );
setEffAlphaKey( spep_3 + 16, ctbaki, 255 );
setEffAlphaKey( spep_3 + 18, ctbaki, 230 );
setEffAlphaKey( spep_3 + 20, ctbaki, 204 );
setEffAlphaKey( spep_3 + 22, ctbaki, 179 );
setEffAlphaKey( spep_3 + 24, ctbaki, 153 );
setEffAlphaKey( spep_3 + 26, ctbaki, 128 );
setEffAlphaKey( spep_3 + 28, ctbaki, 102 );
setEffAlphaKey( spep_3 + 30, ctbaki, 77 );
setEffAlphaKey( spep_3 + 32, ctbaki, 51 );
setEffAlphaKey( spep_3 + 34, ctbaki, 25 );
setEffAlphaKey( spep_3 + 36, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 48, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -5.6, -63.3 , 0 );
setMoveKey( spep_3 + 2, 1, 15.2, -172.4 , 0 );
setMoveKey( spep_3 + 4, 1, -9.9, -154.2 , 0 );
setMoveKey( spep_3 + 6, 1, -20.7, -170.5 , 0 );
setMoveKey( spep_3 + 8, 1, 18.1, -123.6 , 0 );
setMoveKey( spep_3 + 10, 1, -16.6, -169.6 , 0 );
setMoveKey( spep_3 + 12, 1, 14.1, -127.1 , 0 );
setMoveKey( spep_3 + 14, 1, -12.3, -160.9 , 0 );
setMoveKey( spep_3 + 16, 1, 6.2, -169.8 , 0 );
setMoveKey( spep_3 + 18, 1, -7.6, -122.3 , 0 );
setMoveKey( spep_3 + 20, 1, 5.1, -160.2 , 0 );
setMoveKey( spep_3 + 22, 1, -3.3, -130.1 , 0 );
setMoveKey( spep_3 + 24, 1, -6.5, -149.1 , 0 );
setMoveKey( spep_3 + 26, 1, -25.5, -504.2 , 0 );
setMoveKey( spep_3 + 28, 1, -53.5, -752.2 , 0 );
setMoveKey( spep_3 + 30, 1, -62.3, -945.4 , 0 );
setMoveKey( spep_3 + 32, 1, -77, -1080.7 , 0 );
setMoveKey( spep_3 + 34, 1, -82.2, -1217.4 , 0 );
setMoveKey( spep_3 + 36, 1, -93.7, -1317.8 , 0 );
setMoveKey( spep_3 + 38, 1, -97, -1414.5 , 0 );
setMoveKey( spep_3 + 40, 1, -106.9, -1488.2 , 0 );
setMoveKey( spep_3 + 42, 1, -111.6, -1514.8 , 0 );
setMoveKey( spep_3 + 44, 1, -115.2, -1521.2 , 0 );
setMoveKey( spep_3 + 46, 1, -117.8, -1516.4 , 0 );
setMoveKey( spep_3 + 48, 1, -119.4, -1534.9 , 0 );

setScaleKey( spep_3 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 2, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 4, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 6, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 8, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 10, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 24, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 26, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 28, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 30, 1, 2.03, 2.03 );
setScaleKey( spep_3 + 32, 1, 2.26, 2.26 );
setScaleKey( spep_3 + 34, 1, 2.44, 2.44 );
setScaleKey( spep_3 + 36, 1, 2.6, 2.6 );
setScaleKey( spep_3 + 38, 1, 2.73, 2.73 );
setScaleKey( spep_3 + 40, 1, 2.84, 2.84 );
setScaleKey( spep_3 + 42, 1, 2.94, 2.94 );
setScaleKey( spep_3 + 44, 1, 3.01, 3.01 );
setScaleKey( spep_3 + 46, 1, 3.06, 3.06 );
setScaleKey( spep_3 + 48, 1, 3.09, 3.09 );

setRotateKey( spep_3 + 0, 1, 20 );
setRotateKey( spep_3 + 48, 1, 20 );

-- ** 音 ** --
playSe(spep_3 + 0, 1011);  --バキ

-- ** 白フェード ** --
entryFade( spep_3 + 50, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;

------------------------------------------------------
-- 爆発(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
haikei3 = entryEffectLife(  spep_4 + 0,  SP_07, 100, 0x80, -1, 0, 0, 0 );  --背景(ef_007)
setEffMoveKey( spep_4 + 0, haikei3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, haikei3, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, haikei3, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, haikei3, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, haikei3, 0 );
setEffRotateKey( spep_4 + 100, haikei3, 0 );
setEffAlphaKey( spep_4 + 0, haikei3, 255 );
setEffAlphaKey( spep_4 + 100, haikei3, 255 );

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
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

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

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

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
endPhase( spep_4 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 146, 0x100, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 146, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 146, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 146, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 146, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.46, 1.68 );
setEffScaleKey( spep_0 + 146, shuchusen1, 1.46, 1.68 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 146, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen1, 255 );

spep_x = spep_0 + 40;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -12.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -12.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -12.9, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 134, 10, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 38,  1035);
playSe( spep_x + 16, SE_04 );  --ゴゴゴ
--se = playSe( spep_0 + 58, 55 );
--stopSe( spep_0 + 146, se, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 攻撃(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
haikei1 = entryEffectLife( spep_2 + 0, SP_05, 58, 0x80, -1, 0, 0, 0 );  --背景(ef_005)
setEffMoveKey( spep_2 + 0, haikei1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, haikei1, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, haikei1, 1.0, 1.0 );
setEffScaleKey( spep_2 + 58, haikei1, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, haikei1, 0 );
setEffRotateKey( spep_2 + 58, haikei1, 0 );
setEffAlphaKey( spep_2 + 0, haikei1, 255 );
setEffAlphaKey( spep_2 + 58, haikei1, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_2 + 0, 914, 58, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_2 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 4.46, 1.68 );
setEffScaleKey( spep_2 + 58, ryusen1, 4.46, 1.68 );

setEffRotateKey( spep_2 + 0, ryusen1, 0 );
setEffRotateKey( spep_2 + 58, ryusen1, 0 );

setEffAlphaKey( spep_2 + 0, ryusen1, 0 );
setEffAlphaKey( spep_2 + 8, ryusen1, 255 );
setEffAlphaKey( spep_2 + 58, ryusen1, 255 );

-- ** エフェクト等 ** --
attack = entryEffectLife( spep_2 + 0, SP_02, 58, 0x80, -1, 0, 0, 0 );  --攻撃(ef_002)
setEffMoveKey( spep_2 + 0, attack, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, attack, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_2 + 58, attack, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack, 0 );
setEffRotateKey( spep_2 + 58, attack, 0 );
setEffAlphaKey( spep_2 + 0, attack, 255 );
setEffAlphaKey( spep_2 + 58, attack, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 38, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 38, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 38, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.46, 1.68 );
setEffScaleKey( spep_2 + 38, shuchusen2, 1.46, 1.68 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 38, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 38, shuchusen2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, 1763.3, -24.2 , 0 );
setMoveKey( spep_2 + 2, 1, 1727.9, -24.5 , 0 );
setMoveKey( spep_2 + 4, 1, 1557.7, -24.7 , 0 );
setMoveKey( spep_2 + 6, 1, 1414.9, -24.9 , 0 );
setMoveKey( spep_2 + 8, 1, 1292.4, -25.1 , 0 );
setMoveKey( spep_2 + 10, 1, 1185.5, -25.4 , 0 );
setMoveKey( spep_2 + 12, 1, 1091.5, -25.5 , 0 );
setMoveKey( spep_2 + 14, 1, 1008.1, -25.7 , 0 );
setMoveKey( spep_2 + 16, 1, 934.4, -25.9 , 0 );
setMoveKey( spep_2 + 18, 1, 868.6, -26.2 , 0 );
setMoveKey( spep_2 + 20, 1, 809.7, -26.4 , 0 );
setMoveKey( spep_2 + 22, 1, 772.2, -26.5 , 0 );
setMoveKey( spep_2 + 24, 1, 734.2, -26.5 , 0 );
setMoveKey( spep_2 + 26, 1, 697, -26.5 , 0 );
setMoveKey( spep_2 + 28, 1, 660.2, -26.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 2, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 4, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 6, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 8, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 12, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 16, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 18, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 20, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 22, 1, 1.44, 1.44 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 0, 44 );  --迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 624.1, -26.5 , 0 );
setMoveKey( SP_dodge + 2, 1, 588.5, -26.5 , 0 );
setMoveKey( SP_dodge + 4, 1, 553.4, -26.5 , 0 );
setMoveKey( SP_dodge + 6, 1, 518.7, -26.5 , 0 );
setMoveKey( SP_dodge + 8, 1, 484.4, -26.5 , 0 );
setMoveKey( SP_dodge + 10, 1, 484.4, -26.5 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.44, 1.44 );
setScaleKey( SP_dodge + 10, 1, 1.44, 1.44 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_2 + 56, 1, 0 );

setMoveKey( spep_2 + 30, 1, 624.1, -26.5 , 0 );
setMoveKey( spep_2 + 32, 1, 588.5, -26.5 , 0 );
setMoveKey( spep_2 + 34, 1, 553.4, -26.5 , 0 );
setMoveKey( spep_2 + 36, 1, 518.7, -26.5 , 0 );
setMoveKey( spep_2 + 38, 1, 484.4, -26.5 , 0 );
setMoveKey( spep_2 + 40, 1, 450.5, -26.5 , 0 );
setMoveKey( spep_2 + 42, 1, 417.1, -26.5 , 0 );
setMoveKey( spep_2 + 44, 1, 384.1, -26.5 , 0 );
setMoveKey( spep_2 + 46, 1, 351.4, -26.5 , 0 );
setMoveKey( spep_2 + 48, 1, 319.1, -26.5 , 0 );
setMoveKey( spep_2 + 50, 1, 287, -26.5 , 0 );
setMoveKey( spep_2 + 52, 1, 255.2, -26.5 , 0 );
setMoveKey( spep_2 + 54, 1, 223.7, -26.5 , 0 );
setMoveKey( spep_2 + 56, 1, 192.6, -26.5 , 0 );

setScaleKey( spep_2 + 56, 1, 1.44, 1.44 );

setRotateKey( spep_2 + 56, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 46, 8, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 58;

------------------------------------------------------
-- 手刀(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
hit = entryEffect(  spep_3 + 0,  SP_03, 0x100, -1, 0, 0, 0 );  --HITエフェクト(ef_003)
setEffMoveKey( spep_3 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, hit, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, hit, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit, 0 );
setEffRotateKey( spep_3 + 56, hit, 0 );
setEffAlphaKey( spep_3 + 0, hit, 255 );
setEffAlphaKey( spep_3 + 56, hit, 255 );

haikei2 = entryEffectLife(  spep_3 + 0,  SP_06, 56, 0x80, -1, 0, 0, 0 );  --背景(ef_006)
setEffMoveKey( spep_3 + 0, haikei2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, haikei2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, haikei2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, haikei2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, haikei2, 0 );
setEffRotateKey( spep_3 + 56, haikei2, 0 );
setEffAlphaKey( spep_3 + 0, haikei2, 255 );
setEffAlphaKey( spep_3 + 56, haikei2, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_3 + 0, 921, 56, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_3 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen2, 2.06, 1.18 );
setEffScaleKey( spep_3 + 56, ryusen2, 2.06, 1.18 );

setEffRotateKey( spep_3 + 0, ryusen2, -90 );
setEffRotateKey( spep_3 + 56, ryusen2, -90 );

setEffAlphaKey( spep_3 + 0, ryusen2, 0 );
setEffAlphaKey( spep_3 + 24, ryusen2, 0 );
setEffAlphaKey( spep_3 + 28, ryusen2, 220 );
setEffAlphaKey( spep_3 + 56, ryusen2, 220 );

-- ** エフェクト等 ** --
katana = entryEffectLife(  spep_3 + 0,  SP_04, 56, 0x80, -1, 0, 0, 0 );  --手刀(ef_004)
setEffMoveKey( spep_3 + 0, katana, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, katana, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, katana, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, katana, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, katana, 0 );
setEffRotateKey( spep_3 + 56, katana, 0 );
setEffAlphaKey( spep_3 + 0, katana, 255 );
setEffAlphaKey( spep_3 + 56, katana, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 44, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen3, 44, 20 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 44, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.06, 1.48 );
setEffScaleKey( spep_3 + 44, shuchusen3, 1.06, 1.48 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 44, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 40, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 44, shuchusen3, 0 );

-- 書き文字エントリー --
ctbaki = entryEffectLife( spep_3 + 0,  10020, 36, 0x100, -1, 0, -129.2, 246 );  --バキッ
setEffMoveKey( spep_3 + 0, ctbaki, -129.2, 246 , 0 );
setEffMoveKey( spep_3 + 2, ctbaki, -147.3, 267.5 , 0 );
setEffMoveKey( spep_3 + 4, ctbaki, -149.2, 291.6 , 0 );
setEffMoveKey( spep_3 + 6, ctbaki, -163.3, 296.1 , 0 );
setEffMoveKey( spep_3 + 8, ctbaki, -155.6, 293.3 , 0 );
setEffMoveKey( spep_3 + 10, ctbaki, -170, 289.8 , 0 );
setEffMoveKey( spep_3 + 12, ctbaki, -171.4, 298.5 , 0 );
setEffMoveKey( spep_3 + 14, ctbaki, -172.4, 288.5 , 0 );
setEffMoveKey( spep_3 + 16, ctbaki, -183.8, 291.2 , 0 );
setEffMoveKey( spep_3 + 18, ctbaki, -183.2, 301.7 , 0 );
setEffMoveKey( spep_3 + 20, ctbaki, -182.2, 292.9 , 0 );
setEffMoveKey( spep_3 + 22, ctbaki, -192.3, 305.6 , 0 );
setEffMoveKey( spep_3 + 24, ctbaki, -187.8, 301 , 0 );
setEffMoveKey( spep_3 + 26, ctbaki, -197.5, 304.3 , 0 );
setEffMoveKey( spep_3 + 28, ctbaki, -194.7, 302.9 , 0 );
setEffMoveKey( spep_3 + 30, ctbaki, -199.1, 311.4 , 0 );
setEffMoveKey( spep_3 + 32, ctbaki, -200.4, 306.2 , 0 );
setEffMoveKey( spep_3 + 34, ctbaki, -208.5, 314.8 , 0 );
setEffMoveKey( spep_3 + 36, ctbaki, -211.2, 316.9 , 0 );

setEffScaleKey( spep_3 + 0, ctbaki, 0.8, 0.8 );
setEffScaleKey( spep_3 + 2, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_3 + 4, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_3 + 6, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_3 + 8, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_3 + 10, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_3 + 12, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_3 + 14, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_3 + 16, ctbaki, 1.85, 1.85 );
setEffScaleKey( spep_3 + 18, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_3 + 20, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_3 + 22, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_3 + 24, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_3 + 26, ctbaki, 1.9, 1.9 );
setEffScaleKey( spep_3 + 28, ctbaki, 1.91, 1.91 );
setEffScaleKey( spep_3 + 30, ctbaki, 1.92, 1.92 );
setEffScaleKey( spep_3 + 32, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_3 + 34, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_3 + 36, ctbaki, 1.95, 1.95 );

setEffRotateKey( spep_3 + 0, ctbaki, -18 );
setEffRotateKey( spep_3 + 36, ctbaki, -18 );

setEffAlphaKey( spep_3 + 0, ctbaki, 255 );
setEffAlphaKey( spep_3 + 16, ctbaki, 255 );
setEffAlphaKey( spep_3 + 18, ctbaki, 230 );
setEffAlphaKey( spep_3 + 20, ctbaki, 204 );
setEffAlphaKey( spep_3 + 22, ctbaki, 179 );
setEffAlphaKey( spep_3 + 24, ctbaki, 153 );
setEffAlphaKey( spep_3 + 26, ctbaki, 128 );
setEffAlphaKey( spep_3 + 28, ctbaki, 102 );
setEffAlphaKey( spep_3 + 30, ctbaki, 77 );
setEffAlphaKey( spep_3 + 32, ctbaki, 51 );
setEffAlphaKey( spep_3 + 34, ctbaki, 25 );
setEffAlphaKey( spep_3 + 36, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 48, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -5.6, -63.3 , 0 );
setMoveKey( spep_3 + 2, 1, 15.2, -172.4 , 0 );
setMoveKey( spep_3 + 4, 1, -9.9, -154.2 , 0 );
setMoveKey( spep_3 + 6, 1, -20.7, -170.5 , 0 );
setMoveKey( spep_3 + 8, 1, 18.1, -123.6 , 0 );
setMoveKey( spep_3 + 10, 1, -16.6, -169.6 , 0 );
setMoveKey( spep_3 + 12, 1, 14.1, -127.1 , 0 );
setMoveKey( spep_3 + 14, 1, -12.3, -160.9 , 0 );
setMoveKey( spep_3 + 16, 1, 6.2, -169.8 , 0 );
setMoveKey( spep_3 + 18, 1, -7.6, -122.3 , 0 );
setMoveKey( spep_3 + 20, 1, 5.1, -160.2 , 0 );
setMoveKey( spep_3 + 22, 1, -3.3, -130.1 , 0 );
setMoveKey( spep_3 + 24, 1, -6.5, -149.1 , 0 );
setMoveKey( spep_3 + 26, 1, -25.5, -504.2 , 0 );
setMoveKey( spep_3 + 28, 1, -53.5, -752.2 , 0 );
setMoveKey( spep_3 + 30, 1, -62.3, -945.4 , 0 );
setMoveKey( spep_3 + 32, 1, -77, -1080.7 , 0 );
setMoveKey( spep_3 + 34, 1, -82.2, -1217.4 , 0 );
setMoveKey( spep_3 + 36, 1, -93.7, -1317.8 , 0 );
setMoveKey( spep_3 + 38, 1, -97, -1414.5 , 0 );
setMoveKey( spep_3 + 40, 1, -106.9, -1488.2 , 0 );
setMoveKey( spep_3 + 42, 1, -111.6, -1514.8 , 0 );
setMoveKey( spep_3 + 44, 1, -115.2, -1521.2 , 0 );
setMoveKey( spep_3 + 46, 1, -117.8, -1516.4 , 0 );
setMoveKey( spep_3 + 48, 1, -119.4, -1534.9 , 0 );

setScaleKey( spep_3 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 2, 1, 0.98, 0.98 );
setScaleKey( spep_3 + 4, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 6, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 8, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 10, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 24, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 26, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 28, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 30, 1, 2.03, 2.03 );
setScaleKey( spep_3 + 32, 1, 2.26, 2.26 );
setScaleKey( spep_3 + 34, 1, 2.44, 2.44 );
setScaleKey( spep_3 + 36, 1, 2.6, 2.6 );
setScaleKey( spep_3 + 38, 1, 2.73, 2.73 );
setScaleKey( spep_3 + 40, 1, 2.84, 2.84 );
setScaleKey( spep_3 + 42, 1, 2.94, 2.94 );
setScaleKey( spep_3 + 44, 1, 3.01, 3.01 );
setScaleKey( spep_3 + 46, 1, 3.06, 3.06 );
setScaleKey( spep_3 + 48, 1, 3.09, 3.09 );

setRotateKey( spep_3 + 0, 1, 20 );
setRotateKey( spep_3 + 48, 1, 20 );

-- ** 音 ** --
playSe(spep_3 + 0, 1011);  --バキ

-- ** 白フェード ** --
entryFade( spep_3 + 50, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;

------------------------------------------------------
-- 爆発(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
haikei3 = entryEffectLife(  spep_4 + 0,  SP_07, 100, 0x80, -1, 0, 0, 0 );  --背景(ef_007)
setEffMoveKey( spep_4 + 0, haikei3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, haikei3, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, haikei3, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, haikei3, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, haikei3, 0 );
setEffRotateKey( spep_4 + 100, haikei3, 0 );
setEffAlphaKey( spep_4 + 0, haikei3, 255 );
setEffAlphaKey( spep_4 + 100, haikei3, 255 );

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
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

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

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

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
endPhase( spep_4 + 100 );

end